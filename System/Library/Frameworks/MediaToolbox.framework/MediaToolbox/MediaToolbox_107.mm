BOOL bossShouldExtendEndTime(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  valuePtr[0] = 0;
  v2 = *(a1 + 560);
  if (!v2)
  {
    return 0;
  }

  CFNumberGetValue(v2, kCFNumberSInt32Type, valuePtr);
  v3 = valuePtr[0] != -12935 && valuePtr[0] != -1001;
  v4 = valuePtr[0] == -12935 || valuePtr[0] == -1001;
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_109_0(v6))
    {
      v7 = "WILL";
      v10 = "bossShouldExtendEndTime";
      v11 = 2048;
      valuePtr[1] = 136316162;
      if (v3)
      {
        v7 = "will NOT";
      }

      v12 = a1;
      v13 = 2082;
      v14 = a1 + 850;
      v15 = 1024;
      v16 = valuePtr[0];
      v17 = 2080;
      v18 = v7;
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524();
  }

  return v4;
}

void figPlaybackBoss_VideoCompositionProcessorPrerollComplete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  if (a2 && !*(a2 + 16))
  {
    FigSimpleMutexLock();
    if (a5)
    {
      CFDictionaryGetValue(a5, @"VideoCompositionProcessor_Order");
    }

    FigSimpleMutexLock();
    if (dword_1EAF16E78)
    {
      v7 = OUTLINED_FUNCTION_126();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
    }

    if (!*(a2 + 16) && FigCFEqual() && *(a2 + 608))
    {
      *(a2 + 608) = 0;
      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
      figPlaybackBoss_waitForCompletionOfPhase1AndStartPhase2(a2);
    }

    else
    {
      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
    }
  }
}

uint64_t bossScheduleAdvanceForOverlappedPlaybackCallbackForTime(uint64_t a1, __int128 *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    v4 = OUTLINED_FUNCTION_126();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 368))
  {
    goto LABEL_6;
  }

  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 32));
  *(a1 + 368) = v5;
  if (!v5)
  {
    return FigSignalErrorAtGM();
  }

  dispatch_set_context(v5, a1);
  dispatch_source_set_event_handler_f(*(a1 + 368), figPlaybackBossAdvanceForOverlappedPlaybackWithContext);
  dispatch_resume(*(a1 + 368));
  result = CMTimebaseAddTimerDispatchSource(*(a1 + 120), *(a1 + 368));
  if (!result)
  {
LABEL_6:
    v7 = *a2;
    *(a1 + 392) = *(a2 + 2);
    *(a1 + 376) = v7;
    OUTLINED_FUNCTION_36_5();
    return CMTimebaseSetTimerDispatchSourceNextFireTime(v8, v9, &time, 1u);
  }

  return result;
}

uint64_t bossUsingEditCursorServiceArrayFindEditSegmentContainingTrackTime(uint64_t *a1, int a2, uint64_t a3, _BYTE *a4, void *a5)
{
  v25 = 0;
  memset(__src, 0, sizeof(__src));
  memset(v23, 0, sizeof(v23));
  memset(&v22, 0, sizeof(v22));
  v10 = *a1;
  *&time[0].start.value = *a3;
  time[0].start.epoch = *(a3 + 16);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v11)
  {
    v13 = 4294954514;
    goto LABEL_15;
  }

  *&range[0].start.value = *&time[0].start.value;
  range[0].start.epoch = time[0].start.epoch;
  v12 = v11(v10, range, &v25);
  if (v12 == -12521)
  {
    goto LABEL_13;
  }

  v13 = v12;
  if (v12)
  {
    goto LABEL_15;
  }

  v14 = v25;
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v15)
  {
    v13 = 4294954514;
    goto LABEL_15;
  }

  v13 = v15(v14, __src);
  if (v13)
  {
LABEL_15:
    FigSignalErrorAtGM();
    goto LABEL_16;
  }

  if (a4)
  {
    *a4 = 1;
  }

  OUTLINED_FUNCTION_29();
  if (!v16 || (*&time[0].start.value = *a3, time[0].start.epoch = *(a3 + 16), range[0] = __src[1], CMTimeClampToRange(v19, &time[0].start, range), range[0] = __src[1], time[0] = __src[0], CMTimeMapTimeFromRangeToRange(&v22, v19, range, time), a2 < 2))
  {
    if (a5)
    {
LABEL_12:
      memcpy(a5, __src, 0x60uLL);
    }

LABEL_13:
    v13 = 0;
    goto LABEL_16;
  }

  range[0].start = v22;
  EditSegmentContainingTrackTime = bossUsingEditCursorServiceArrayFindEditSegmentContainingTrackTime(a1 + 1, 1, range, 0, v23);
  if (!EditSegmentContainingTrackTime)
  {
    memcpy(time, __src, sizeof(time));
    memcpy(v19, v23, sizeof(v19));
    bossCombineEditSegments(time, v19, range);
    memcpy(__src, range, sizeof(__src));
    if (!a5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v13 = EditSegmentContainingTrackTime;
LABEL_16:
  if (v25)
  {
    CFRelease(v25);
  }

  return v13;
}

uint64_t bossUsingEditCursorServiceArrayFindNextNonEmptyTrackTime(uint64_t *a1, int a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v52[0] = 0;
  memset(__src, 0, sizeof(__src));
  if (!a2)
  {
    v17 = 0;
    v26 = *a3;
    *(a6 + 16) = *(a3 + 2);
    *a6 = v26;
    goto LABEL_35;
  }

  v14 = *a1;
  OUTLINED_FUNCTION_33_7();
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v15)
  {
    v17 = 4294954514;
    goto LABEL_33;
  }

  *&range[0].start.value = *&time.start.value;
  range[0].start.epoch = time.start.epoch;
  v16 = v15(v14, range, v52);
  if (v16 == -12521)
  {
    v17 = 0;
    goto LABEL_35;
  }

  v17 = v16;
  if (v16)
  {
LABEL_33:
    FigSignalErrorAtGM();
    goto LABEL_35;
  }

  v18 = v52[0];
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v19)
  {
    goto LABEL_44;
  }

  v20 = v19(v18, __src);
  if (v20)
  {
LABEL_43:
    v17 = v20;
    goto LABEL_35;
  }

  if ((a4 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_6_27();
  if (OUTLINED_FUNCTION_27_6(__src[1].start.epoch, v33, v34, __dst[0].value, *&__dst[0].timescale, __dst[0].epoch, __dst[1].value, *&__dst[1].timescale, __dst[1].epoch, __dst[2].value, *&__dst[2].timescale, __dst[2].epoch, __dst[3].value, *&__dst[3].timescale, __dst[3].epoch, time2[0].start.value, *&time2[0].start.timescale, time2[0].start.epoch, time2[0].duration.value, *&time2[0].duration.timescale, time2[0].duration.epoch, time2[1].start.value, *&time2[1].start.timescale, time2[1].start.epoch, time2[1].duration.value, *&time2[1].duration.timescale, time2[1].duration.epoch, __src[1].start.value, *&__src[1].start.timescale, time.start.epoch, time.duration.value, *&time.duration.timescale, time.duration.epoch, v38, v39, v40, v41, v42, v43, v44, v45.value, *&v45.timescale, v45.epoch, range[0].start.value))
  {
    goto LABEL_9;
  }

  v28 = v52[0];
  v29 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v29)
  {
LABEL_44:
    v17 = 4294954514;
    goto LABEL_35;
  }

  v20 = v29(v28, 0xFFFFFFFFLL);
  if (v20)
  {
    goto LABEL_43;
  }

  v30 = v52[0];
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v31)
  {
    goto LABEL_44;
  }

  v20 = v31(v30, __src);
  if (v20)
  {
    goto LABEL_43;
  }

LABEL_9:
  HIDWORD(v34) = a2 - 1;
  while (1)
  {
    if (a4 < 1)
    {
      memset(&time, 0, 24);
      OUTLINED_FUNCTION_16_10();
      CMTimeRangeGetEnd(&time.start, range);
      OUTLINED_FUNCTION_6_27();
      *&time2[0].start.value = *&time.start.value;
      time2[0].start.epoch = time.start.epoch;
      if (CMTimeCompare(&range[0].start, &time2[0].start) >= 1)
      {
        *a3 = *&time.start.value;
        *(a3 + 2) = time.start.epoch;
      }

      if ((*(a5 + 12) & 0x1D) == 1)
      {
        OUTLINED_FUNCTION_6_27();
        *&time2[0].start.value = *a5;
        time2[0].start.epoch = *(a5 + 16);
        if (CMTimeCompare(&range[0].start, &time2[0].start) < 1)
        {
LABEL_50:
          v17 = 4294954776;
          goto LABEL_35;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_6_27();
      if ((OUTLINED_FUNCTION_27_6(__src[1].start.epoch, v33, v34, __dst[0].value, *&__dst[0].timescale, __dst[0].epoch, __dst[1].value, *&__dst[1].timescale, __dst[1].epoch, __dst[2].value, *&__dst[2].timescale, __dst[2].epoch, __dst[3].value, *&__dst[3].timescale, __dst[3].epoch, time2[0].start.value, *&time2[0].start.timescale, time2[0].start.epoch, time2[0].duration.value, *&time2[0].duration.timescale, time2[0].duration.epoch, time2[1].start.value, *&time2[1].start.timescale, time2[1].start.epoch, time2[1].duration.value, *&time2[1].duration.timescale, time2[1].duration.epoch, __src[1].start.value, *&__src[1].start.timescale, time.start.epoch, time.duration.value, *&time.duration.timescale, time.duration.epoch, v38, v39, v40, v41, v42, v43, v44, v45.value, *&v45.timescale, v45.epoch, range[0].start.value) & 0x80000000) != 0)
      {
        *a3 = *&__src[1].start.value;
        *(a3 + 2) = __src[1].start.epoch;
      }

      if ((*(a5 + 12) & 0x1D) == 1)
      {
        OUTLINED_FUNCTION_6_27();
        if ((OUTLINED_FUNCTION_27_6(*(a5 + 16), v33, v34, __dst[0].value, *&__dst[0].timescale, __dst[0].epoch, __dst[1].value, *&__dst[1].timescale, __dst[1].epoch, __dst[2].value, *&__dst[2].timescale, __dst[2].epoch, __dst[3].value, *&__dst[3].timescale, __dst[3].epoch, time2[0].start.value, *&time2[0].start.timescale, time2[0].start.epoch, time2[0].duration.value, *&time2[0].duration.timescale, time2[0].duration.epoch, time2[1].start.value, *&time2[1].start.timescale, time2[1].start.epoch, time2[1].duration.value, *&time2[1].duration.timescale, time2[1].duration.epoch, *a5, *(a5 + 8), time.start.epoch, time.duration.value, *&time.duration.timescale, time.duration.epoch, v38, v39, v40, v41, v42, v43, v44, v45.value, *&v45.timescale, v45.epoch, range[0].start.value) & 0x80000000) == 0)
        {
          goto LABEL_50;
        }
      }
    }

    if ((__src[0].start.flags & 0x1D) == 1)
    {
      break;
    }

LABEL_21:
    v21 = v52[0];
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v22)
    {
      goto LABEL_44;
    }

    v20 = v22(v21, a4);
    if (v20)
    {
      goto LABEL_43;
    }

    v23 = v52[0];
    v24 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v24)
    {
      goto LABEL_44;
    }

    v17 = v24(v23, __src);
    if (v17)
    {
      goto LABEL_35;
    }
  }

  memset(&start, 0, sizeof(start));
  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_16_10();
  CMTimeClampToRange(&time2[0].start, &time.start, range);
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_15_11();
  CMTimeMapTimeFromRangeToRange(&v50, &time2[0].start, range, &time);
  if (a4 < 1)
  {
    start = __src[0].start;
  }

  else
  {
    range[0] = __src[0];
    CMTimeRangeGetEnd(&start, range);
  }

  v47 = 0uLL;
  v48 = 0;
  memset(range, 0, sizeof(range));
  time.start = v50;
  time2[0].start = start;
  NextNonEmptyTrackTime = bossUsingEditCursorServiceArrayFindNextNonEmptyTrackTime(a1 + 1, HIDWORD(v34), &time, a4, time2, &v47, range);
  v17 = NextNonEmptyTrackTime;
  if (NextNonEmptyTrackTime)
  {
    if (NextNonEmptyTrackTime != -12520)
    {
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  if (a6)
  {
    *&time2[0].start.value = v47;
    time2[0].start.epoch = v48;
    OUTLINED_FUNCTION_15_11();
    CMTimeClampToRange(&v45, &time2[0].start, &time);
    OUTLINED_FUNCTION_15_11();
    time2[0] = __src[1];
    CMTimeMapTimeFromRangeToRange(__dst, &v45, &time, time2);
    *a6 = __dst[0];
  }

  if (a7)
  {
    if (a2 < 2)
    {
      p_time = __src;
    }

    else
    {
      memcpy(time2, __src, sizeof(time2));
      memcpy(__dst, range, sizeof(__dst));
      bossCombineEditSegments(time2, __dst, &time);
      p_time = &time;
    }

    memcpy(a7, p_time, 0x60uLL);
  }

LABEL_35:
  if (v52[0])
  {
    CFRelease(v52[0]);
  }

  return v17;
}

uint64_t bossGetPresentationTimeAfterSteppingInNormalEditSegment(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, CMTime *a6)
{
  v28 = **&MEMORY[0x1E6960C70];
  v27 = v28;
  v26 = v28;
  *&v23.start.value = *a3;
  v23.start.epoch = *(a3 + 16);
  v11 = *(a2 + 64);
  *&range.start.value = *(a2 + 48);
  *&range.start.epoch = v11;
  *&range.duration.timescale = *(a2 + 80);
  CMTimeClampToRange(&v25, &v23.start, &range);
  v12 = *(a2 + 64);
  v13 = *(a2 + 80);
  v14 = *(a2 + 32);
  *&range.start.value = *(a2 + 48);
  *&range.start.epoch = v12;
  *&range.duration.timescale = v13;
  v15 = *(a2 + 16);
  *&v23.start.value = *a2;
  *&v23.start.epoch = v15;
  *&v23.duration.timescale = v14;
  CMTimeMapTimeFromRangeToRange(&v28, &v25, &range, &v23);
  range.start = v28;
  PresentationTimeAfterSampleCursorStepping = bossGetPresentationTimeAfterSampleCursorStepping(a1, &range.start, a4, a5, &v27);
  if (!PresentationTimeAfterSampleCursorStepping)
  {
    OUTLINED_FUNCTION_30_6();
    *&v23.start.value = *a2;
    v23.start.epoch = *(a2 + 16);
    if ((CMTimeCompare(&range.start, &v23.start) & 0x80000000) == 0)
    {
      v17 = *(a2 + 16);
      *&range.start.value = *a2;
      *&range.start.epoch = v17;
      *&range.duration.timescale = *(a2 + 32);
      CMTimeRangeGetEnd(&v23.start, &range);
      OUTLINED_FUNCTION_30_6();
      if (CMTimeCompare(&range.start, &v23.start) <= 0)
      {
        v18 = *(a2 + 16);
        *&range.start.value = *a2;
        *&range.start.epoch = v18;
        v19 = *(a2 + 48);
        *&range.duration.timescale = *(a2 + 32);
        *&v25.value = *&v27.value;
        v20 = *(a2 + 64);
        v21 = *(a2 + 80);
        *&v23.start.value = v19;
        *&v23.start.epoch = v20;
        v25.epoch = v27.epoch;
        *&v23.duration.timescale = v21;
        CMTimeMapTimeFromRangeToRange(&v26, &v25, &range, &v23);
      }
    }
  }

  *a6 = v26;
  return PresentationTimeAfterSampleCursorStepping;
}

uint64_t FigPlaybackBossCreate_cold_3(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigPlaybackBossCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackBossCreate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackBossCreate_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackBossCreate_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackBossCreate_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackBossCreate_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackBossRemoveAndAddTracks_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackBossRemoveAndAddTracks_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackBossRemoveAndAddTracks_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackBossRemoveAndAddTracks_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackBossRemoveAndAddTracks_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackBossRemoveAndAddTracks_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackBossRemoveAndAddTracks_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackBossRemoveAndAddTracks_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackBossRemoveAndAddTracks_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackBossRemoveAndAddTracks_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackBossSnapTimeToIFrameWithRange_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackBossSnapTimeToIFrameWithRange_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

opaqueCMBufferQueue *FigPlaybackBossPrerollAndScheduleGaplessStart_cold_1(CFArrayRef *a1, CMBufferRef *a2, CFIndex *a3)
{
  v6 = 0;
  do
  {
    result = *(CFArrayGetValueAtIndex(*a1, v6) + 13);
    if (result)
    {
      result = CMBufferQueueEnqueue(result, *a2);
    }

    ++v6;
  }

  while (*a3 > v6);
  return result;
}

void figPlaybackBoss_MentorStopping_cold_3(uint64_t a1)
{
  cf = 0;
  sampleBufferOut = 0;
  FigBaseObject = FigRenderPipelineGetFigBaseObject(*(a1 + 80));
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v3 = *MEMORY[0x1E695E480];
    if (!v2(FigBaseObject, @"SourceSampleBufferQueue", *MEMORY[0x1E695E480], &cf) && !CMSampleBufferCreateReady(v3, 0, 0, 0, 0, 0, 0, 0, &sampleBufferOut))
    {
      CMSetAttachment(sampleBufferOut, *MEMORY[0x1E6962DF8], *MEMORY[0x1E695E4D0], 1u);
      CMBufferQueueEnqueue(cf, sampleBufferOut);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }
}

uint64_t FigReportingStatsCreate(void *a1)
{
  OUTLINED_FUNCTION_4_5();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_4_5();
  fig_note_initialize_category_with_default_work_cf();
  if (!a1)
  {
    return 4294955296;
  }

  v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x200400FA965B2uLL);
  if (v2 && (v3 = OUTLINED_FUNCTION_383(), Mutable = CFDictionaryCreateMutable(v3, v4, v5, v6), (*v2 = Mutable) != 0) && (v8 = OUTLINED_FUNCTION_383(), v12 = CFDictionaryCreateMutable(v8, v9, v10, v11), (v2[1] = v12) != 0) && (v13 = OUTLINED_FUNCTION_383(), v17 = CFDictionaryCreateMutable(v13, v14, v15, v16), (v2[2] = v17) != 0) && (v18 = OUTLINED_FUNCTION_383(), v21 = CFDictionaryCreateMutable(v18, v19, v20, 0), (v2[5] = v21) != 0) && (v22 = OUTLINED_FUNCTION_383(), v26 = CFDictionaryCreateMutable(v22, v23, v24, v25), (v2[3] = v26) != 0) && (v27 = OUTLINED_FUNCTION_383(), v31 = CFDictionaryCreateMutable(v27, v28, v29, v30), (v2[4] = v31) != 0) && (v32 = OUTLINED_FUNCTION_383(), v35 = CFSetCreateMutable(v32, v33, v34), (v2[6] = v35) != 0))
  {
    result = 0;
    *a1 = v2;
  }

  else
  {
    FigReportingStatsDestroy(v2);
    return 4294955295;
  }

  return result;
}

void FigReportingStatsDestroy(uint64_t a1)
{
  if (a1)
  {
    FigReportingStatsResetAll(a1);
    if (*a1)
    {
      CFRelease(*a1);
    }

    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      CFRelease(v3);
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

    v6 = *(a1 + 48);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      CFRelease(v8);
    }

    free(a1);
  }
}

uint64_t FigReportingStatsSetValue(uint64_t a1, void *key, uint64_t a3)
{
  v10 = 0;
  valuePtr = a3;
  if (key)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      if (CFSetContainsValue(v5, key))
      {
        return 0;
      }
    }
  }

  result = frs_validateAndGetStatsDataDictionary(a1, key, 0x1010u, &v10, 0);
  if (!result || result == -12005)
  {
    if (!v10)
    {
      return 4294955294;
    }

    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongLongType, &valuePtr);
    if (!v7)
    {
      return 4294955295;
    }

    v8 = v7;
    v9 = v10;
    CFDictionarySetValue(*(a1 + 40), key, 0x1010);
    CFDictionarySetValue(v9, key, v8);
    CFRelease(v8);
    return 0;
  }

  return result;
}

uint64_t frs_validateAndGetStatsDataDictionary(uint64_t a1, void *key, unsigned int a3, const __CFDictionary **a4, unsigned int *a5)
{
  v5 = 4294955296;
  if (a1 && key)
  {
    v7 = a1;
    v8 = *(a1 + 40);
    if (!v8 || !*v7 || !*(v7 + 16) || !*(v7 + 8) || !*(v7 + 24) || !*(v7 + 32))
    {
      return 4294955294;
    }

    v10 = CFDictionaryContainsKey(v8, key);
    if (v10)
    {
      Value = CFDictionaryGetValue(*(v7 + 40), key);
      v12 = Value;
      v5 = 0;
      if (a3 && Value != a3)
      {
        return 4294955287;
      }
    }

    else
    {
      v5 = 4294955291;
      v12 = a3;
      if (!a3)
      {
        return v5;
      }
    }

    switch(v12)
    {
      case 0x1010u:
        break;
      case 0x1011u:
        v7 += 8;
        break;
      case 0x1012u:
        v7 += 16;
        break;
      case 0x1013u:
        v7 += 24;
        break;
      case 0x1014u:
        v7 += 32;
        break;
      default:
        return 4294955287;
    }

    v13 = *v7;
    if (!v13)
    {
      return 4294955287;
    }

    if (v10 && !CFDictionaryContainsKey(v13, key))
    {
      return 4294955292;
    }

    else
    {
      if (a4)
      {
        *a4 = v13;
      }

      if (a5)
      {
        *a5 = v12;
      }
    }
  }

  return v5;
}

uint64_t FigReportingStatsAddToCountValue(uint64_t a1, void *key, uint64_t a3)
{
  theDict = 0;
  v16 = a3;
  valuePtr = 0;
  if (key)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      if (CFSetContainsValue(v6, key))
      {
        return 0;
      }
    }
  }

  StatsDataDictionary = frs_validateAndGetStatsDataDictionary(a1, key, 0x1013u, &theDict, 0);
  v8 = StatsDataDictionary;
  if (!StatsDataDictionary || StatsDataDictionary == -12005)
  {
    if (theDict)
    {
      if (StatsDataDictionary == -12005)
      {
        v8 = 0;
        goto LABEL_11;
      }

      Value = CFDictionaryGetValue(theDict, key);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
        v16 = valuePtr + a3;
LABEL_11:
        v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &v16);
        if (!v10)
        {
          return 4294955295;
        }

        v11 = v10;
        v12 = theDict;
        CFDictionarySetValue(*(a1 + 40), key, 0x1013);
        CFDictionarySetValue(v12, key, v11);
        CFRelease(v11);
        return v8;
      }
    }

    return 4294955294;
  }

  return v8;
}

uint64_t FigReportingStatsSetCFTypeValue(uint64_t a1, void *key, const void *a3)
{
  v9 = 0;
  if (!a3)
  {
    return 0;
  }

  if (key)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      if (CFSetContainsValue(v6, key))
      {
        return 0;
      }
    }
  }

  result = frs_validateAndGetStatsDataDictionary(a1, key, 0x1012u, &v9, 0);
  if (!result || result == -12005)
  {
    v8 = v9;
    if (!v9)
    {
      return 4294955294;
    }

    CFDictionarySetValue(*(a1 + 40), key, 0x1012);
    CFDictionarySetValue(v8, key, a3);
    return 0;
  }

  return result;
}

uint64_t FigReportingStatsUpdateSampleValue(uint64_t a1, void *key, uint64_t a3)
{
  theDict = 0;
  if (key)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      if (CFSetContainsValue(v6, key))
      {
        return 0;
      }
    }
  }

  StatsDataDictionary = frs_validateAndGetStatsDataDictionary(a1, key, 0x1011u, &theDict, 0);
  v8 = StatsDataDictionary;
  if (!StatsDataDictionary || StatsDataDictionary == -12005)
  {
    if (!theDict)
    {
      return 4294955294;
    }

    if (StatsDataDictionary != -12005)
    {
      Value = CFDictionaryGetValue(theDict, key);
      FigReportingDataSampleValueUpdateValue(Value, a3);
      return v8;
    }

    if (_MergedGlobals_37 != -1)
    {
      dispatch_once_f(&_MergedGlobals_37, &qword_1ED4CA7A8, frsdv_registerClass);
    }

    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      FigUserCrashWithMessage();
    }

    v10 = FigSimpleMutexCreate();
    Instance[2] = v10;
    if (!v10)
    {
      FigUserCrashWithMessage();
    }

    FigReportingDataSampleValueUpdateValue(Instance, a3);
    v11 = theDict;
    CFDictionarySetValue(*(a1 + 40), key, 0x1011);
    CFDictionarySetValue(v11, key, Instance);
    CFRelease(Instance);
    return 0;
  }

  return v8;
}

uint64_t FigReportingStatsResetArray(uint64_t a1, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    if (CFSetContainsValue(v4, theString))
    {
      return 0;
    }
  }

  ArrayNameFromKey = fsrm_createArrayNameFromKey(theString);
  if (!ArrayNameFromKey)
  {
    return 4294955295;
  }

  v6 = ArrayNameFromKey;
  CFSetRemoveValue(*(a1 + 48), ArrayNameFromKey);
  v7 = OUTLINED_FUNCTION_298();
  StatsDataDictionary = frs_validateAndGetStatsDataDictionary(v7, v8, 0x1014u, v9, v10);
  CFRelease(v6);
  return StatsDataDictionary;
}

void FigReportingStatsResetValue(uint64_t a1, void *key)
{
  theDict = 0;
  if (!key || (v4 = *(a1 + 56)) == 0 || !CFSetContainsValue(v4, key))
  {
    v5 = 0;
    if (!frs_validateAndGetStatsDataDictionary(a1, key, 0, &theDict, &v5))
    {
      if (theDict)
      {
        CFDictionaryRemoveValue(theDict, key);
        CFDictionaryRemoveValue(*(a1 + 40), key);
      }
    }
  }
}

void frs_resetAll(CFMutableDictionaryRef *a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      CFDictionaryRemoveAllValues(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      CFDictionaryRemoveAllValues(v3);
    }

    if (*a1)
    {
      CFDictionaryRemoveAllValues(*a1);
    }

    v4 = a1[3];
    if (v4)
    {
      CFDictionaryRemoveAllValues(v4);
    }

    v5 = a1[2];
    if (v5)
    {
      CFDictionaryRemoveAllValues(v5);
    }

    v6 = a1[4];
    if (v6)
    {
      CFDictionaryRemoveAllValues(v6);
    }

    v7 = a1[6];
    if (v7)
    {

      CFSetRemoveAllValues(v7);
    }
  }
}

uint64_t FigReportingStatsCopyAsCFTypeAndSetInDictionary(uint64_t a1, void *a2, const void *a3)
{
  theDict = 0;
  v35 = 0;
  result = 4294955296;
  if (a2)
  {
    if (a3)
    {
      result = frs_validateAndGetStatsDataDictionary(a1, a2, 0, &theDict, &v35);
      if (!result)
      {
        if (theDict)
        {
          if (v35)
          {
            Value = CFDictionaryGetValue(theDict, a2);
            if (Value)
            {
              valuePtr = 0;
              v8 = Value;
              switch(v35)
              {
                case 0x1010u:
                case 0x1013u:
                  if (CFGetRetainCount(a2) <= 0)
                  {
                    CFGetRetainCount(a2);
                    FigUserCrashWithMessage();
                  }

                  if (CFGetRetainCount(v8) <= 0)
                  {
                    CFGetRetainCount(v8);
                    FigUserCrashWithMessage();
                  }

                  if (CFGetRetainCount(a3) <= 0)
                  {
                    CFGetRetainCount(a3);
                    FigUserCrashWithMessage();
                  }

                  OUTLINED_FUNCTION_298();
                  FigCFDictionaryGetValue();
                  CFNumberGetValue(v8, kCFNumberLongLongType, &valuePtr);
                  OUTLINED_FUNCTION_298();
                  FigCFDictionarySetInt64();
                  break;
                case 0x1011u:
                  v9 = FigSimpleMutexLock();
                  v11 = OUTLINED_FUNCTION_4_38(v9, v10, @"%@%s");
                  if (v11)
                  {
                    v12 = v11;
                    OUTLINED_FUNCTION_5_33();
                    CFRelease(v12);
                  }

                  else
                  {
                    FigUserCrashWithMessage();
                    v13 = OUTLINED_FUNCTION_3_33();
                  }

                  v17 = OUTLINED_FUNCTION_4_38(v13, v14, @"%@%s");
                  if (v17)
                  {
                    v18 = v17;
                    OUTLINED_FUNCTION_5_33();
                    CFRelease(v18);
                  }

                  else
                  {
                    FigUserCrashWithMessage();
                    v19 = OUTLINED_FUNCTION_3_33();
                  }

                  v21 = OUTLINED_FUNCTION_4_38(v19, v20, @"%@%s");
                  if (v21)
                  {
                    v22 = v21;
                    OUTLINED_FUNCTION_5_33();
                    CFRelease(v22);
                  }

                  else
                  {
                    FigUserCrashWithMessage();
                    v23 = OUTLINED_FUNCTION_3_33();
                  }

                  v25 = OUTLINED_FUNCTION_4_38(v23, v24, @"%@%s");
                  if (v25)
                  {
                    v26 = v25;
                    OUTLINED_FUNCTION_5_33();
                    CFRelease(v26);
                  }

                  else
                  {
                    FigUserCrashWithMessage();
                    v27 = OUTLINED_FUNCTION_3_33();
                  }

                  v29 = OUTLINED_FUNCTION_4_38(v27, v28, @"%@%s");
                  if (v29)
                  {
                    v30 = v29;
                    OUTLINED_FUNCTION_5_33();
                    CFRelease(v30);
                  }

                  else
                  {
                    FigUserCrashWithMessage();
                    v31 = OUTLINED_FUNCTION_3_33();
                  }

                  v33 = OUTLINED_FUNCTION_4_38(v31, v32, @"%@%s");
                  if (v33)
                  {
                    v34 = v33;
                    FigCFDictionarySetInt64();
                    CFRelease(v34);
                  }

                  else
                  {
                    FigUserCrashWithMessage();
                    OUTLINED_FUNCTION_3_33();
                  }

                  FigSimpleMutexUnlock();
                  break;
                case 0x1012u:
                  v15 = OUTLINED_FUNCTION_298();
                  CFDictionarySetValue(v15, v16, v8);
                  break;
                default:
                  return 0;
              }

              return 0;
            }

            else
            {
              return 4294955294;
            }
          }

          else
          {
            return 4294955292;
          }
        }

        else
        {
          return 4294955291;
        }
      }
    }
  }

  return result;
}

uint64_t FigReportingStatsCopyArrayAndSetInDictionary(uint64_t a1, const __CFString *a2, __CFDictionary *a3)
{
  cf = 0;
  value = 0;
  v3 = 4294955296;
  if (a2 && a3)
  {
    v6 = frs_copyArrayForKey(a1, a2, 0, &value, &cf);
    v7 = cf;
    if (!v6)
    {
      if (!cf)
      {
        goto LABEL_11;
      }

      if (!value)
      {
        goto LABEL_10;
      }

      if (CFSetGetValue(*(a1 + 48), value))
      {
        Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v7);
        if (!Copy)
        {
          v3 = 4294955295;
          goto LABEL_10;
        }

        v9 = Copy;
        CFDictionarySetValue(a3, value, Copy);
        CFRelease(v9);
      }

      v3 = 0;
LABEL_10:
      CFRelease(v7);
      goto LABEL_11;
    }

    v3 = v6;
    if (cf)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  if (value)
  {
    CFRelease(value);
  }

  return v3;
}

uint64_t frs_copyArrayForKey(uint64_t a1, CFStringRef theString, int a3, __CFString **a4, CFMutableArrayRef *a5)
{
  theDict = 0;
  ArrayNameFromKey = fsrm_createArrayNameFromKey(theString);
  if (!ArrayNameFromKey)
  {
    return 4294955295;
  }

  v10 = ArrayNameFromKey;
  StatsDataDictionary = frs_validateAndGetStatsDataDictionary(a1, ArrayNameFromKey, 0x1014u, &theDict, 0);
  v12 = StatsDataDictionary;
  if (!StatsDataDictionary || StatsDataDictionary == -12005)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, v10);
      v14 = Value;
      if (!a3 || Value)
      {
        goto LABEL_9;
      }

      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v14 = Mutable;
        v16 = theDict;
        CFDictionarySetValue(*(a1 + 40), v10, 0x1014);
        CFDictionarySetValue(v16, v10, v14);
        CFRelease(v14);
        v12 = 0;
LABEL_9:
        if (a4)
        {
          CFRetain(v10);
          *a4 = v10;
        }

        if (v14)
        {
          CFRetain(v14);
        }

        *a5 = v14;
        goto LABEL_14;
      }

      v12 = 4294955295;
    }

    else
    {
      v12 = 4294955294;
    }
  }

LABEL_14:
  CFRelease(v10);
  return v12;
}

uint64_t FigReportingStatsCopyAsCFTypeAndAppendToArray(uint64_t a1, __CFString *theString)
{
  cf = 0;
  theDict = 0;
  v12 = 0;
  v11 = 0;
  if (!theString)
  {
LABEL_25:
    StatsDataDictionary = 4294955296;
    goto LABEL_9;
  }

  v4 = *(a1 + 56);
  if (v4 && CFSetContainsValue(v4, theString))
  {
    StatsDataDictionary = 0;
  }

  else
  {
    v5 = frs_copyArrayForKey(a1, theString, 1, &cf, &v12);
    v6 = v12;
    if (!v5)
    {
      if (v12)
      {
        StatsDataDictionary = frs_validateAndGetStatsDataDictionary(a1, theString, 0, &theDict, &v11);
        if (!StatsDataDictionary)
        {
          if (theDict)
          {
            if (v11)
            {
              Value = CFDictionaryGetValue(theDict, theString);
              v10 = v11;
              valuePtr = 0;
              if (!Value)
              {
                v10 = 0;
              }

              switch(v10)
              {
                case 0x1010u:
                case 0x1013u:
                  CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr);
                  goto LABEL_21;
                case 0x1011u:
                  FigSimpleMutexLock();
                  FigSimpleMutexUnlock();
LABEL_21:
                  FigCFArrayAppendInt64();
                  goto LABEL_23;
                case 0x1012u:
                  CFArrayAppendValue(v6, Value);
LABEL_23:
                  CFSetSetValue(*(a1 + 48), cf);
                  StatsDataDictionary = 0;
                  break;
                default:
                  CFArrayAppendValue(v6, @"-");
                  StatsDataDictionary = 4294955291;
                  break;
              }

              goto LABEL_8;
            }

            StatsDataDictionary = 4294955292;
          }

          else
          {
            StatsDataDictionary = 4294955291;
          }
        }

        CFArrayAppendValue(v6, @"-");
LABEL_8:
        CFRelease(v6);
        goto LABEL_9;
      }

      goto LABEL_25;
    }

    StatsDataDictionary = v5;
    if (v12)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return StatsDataDictionary;
}

uint64_t frs_getIntValue(uint64_t a1, void *a2, unsigned int a3, void *a4)
{
  v8 = 0;
  theDict = 0;
  if (!a4)
  {
    return 4294955296;
  }

  result = frs_validateAndGetStatsDataDictionary(a1, a2, a3, &theDict, 0);
  if (!result)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, a2);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberLongLongType, &v8);
        result = 0;
        *a4 = v8;
      }

      else
      {
        return 4294955292;
      }
    }

    else
    {
      return 4294955291;
    }
  }

  return result;
}

uint64_t FigReportingStatsGetCFTypeValue(uint64_t a1, void *a2, void *a3)
{
  theDict = 0;
  if (!a3)
  {
    return 4294955296;
  }

  result = frs_validateAndGetStatsDataDictionary(a1, a2, 0x1012u, &theDict, 0);
  if (!result)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, a2);
      result = 0;
      *a3 = Value;
    }

    else
    {
      return 4294955291;
    }
  }

  return result;
}

uint64_t FigReportingStatsGetArrayCount(uint64_t a1, const __CFString *a2, CFIndex *a3)
{
  theArray = 0;
  *a3 = 0;
  v4 = frs_copyArrayForKey(a1, a2, 0, 0, &theArray);
  v5 = theArray;
  if (!v4)
  {
    *a3 = CFArrayGetCount(theArray);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v4;
}

void FigReportingStatsCopy(void *a1, const __CFDictionary **a2)
{
  if (a1 && a2)
  {
    v9 = a1;
    v10 = 0;
    v4 = a2[1];
    if (v4 && a1[1])
    {
      OUTLINED_FUNCTION_0_51(v4, 4113, v9, 0);
    }

    if (*a2 && *a1)
    {
      OUTLINED_FUNCTION_0_51(*a2, 4112, v9, v10);
    }

    v5 = a2[3];
    if (v5 && a1[3])
    {
      OUTLINED_FUNCTION_0_51(v5, 4115, v9, v10);
    }

    v6 = a2[2];
    if (v6 && a1[2])
    {
      OUTLINED_FUNCTION_0_51(v6, 4114, v9, v10);
    }

    v7 = a2[4];
    if (v7 && a1[4])
    {
      OUTLINED_FUNCTION_0_51(v7, 4116, v9, v10);
    }

    v8 = a2[7];
    if (v8)
    {
      frs_mergeFrozenKeys(a1, v8);
    }
  }
}

uint64_t FigReportingStatsFreezeKeys(uint64_t a1, CFSetRef theSet)
{
  if (!a1)
  {
    return 4294955296;
  }

  if (!theSet)
  {
    return 0;
  }

  if (*(a1 + 56))
  {
    frs_mergeFrozenKeys(a1, theSet);
    return 0;
  }

  else
  {
    MutableCopy = CFSetCreateMutableCopy(*MEMORY[0x1E695E480], 0, theSet);
    result = 0;
    *(a1 + 56) = MutableCopy;
  }

  return result;
}

void frs_removeKeysSetApplier_cold_1(const __CFString *a1, CFMutableSetRef *a2)
{
  ArrayNameFromKey = fsrm_createArrayNameFromKey(a1);
  if (ArrayNameFromKey)
  {
    v4 = ArrayNameFromKey;
    CFSetRemoveValue(*a2, ArrayNameFromKey);

    CFRelease(v4);
  }
}

void FigTTMLDocumentWriterStateStartElement_cold_1(const void *a1, _DWORD *a2)
{
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t FigTTMLDocumentWriterStateStartElement_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterStateCloseStartTag_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterStateSetAttribute_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterStateEndElement_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterStateCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigUserExperienceSetCurrentRank(const void *a1, int a2)
{
  if (a1)
  {
    CFRetain(a1);
    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_1_44();
    v6[2] = __FigUserExperienceSetCurrentRank_block_invoke;
    v6[3] = &__block_descriptor_44_e5_v8__0l;
    v6[4] = a1;
    v7 = a2;
    dispatch_async(v4, v6);
  }

  return 0;
}

uint64_t FigUserExperienceReportRateChange(void *a1, int a2, int a3)
{
  if (a1)
  {
    CFRetain(a1);
    v6 = a1[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __FigUserExperienceReportRateChange_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = a1;
    block[5] = a1;
    v9 = a3;
    v10 = a2;
    dispatch_async(v6, block);
  }

  return 0;
}

uint64_t fus_completeVariantGuts(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    v5 = *(result + 96) + *(result + 48);
    result = [*(result + 24) addStreamTierSwitch:(*(result + 88) - v5) / 1000000000.0 end:(a3 - v5) / 1000000000.0 quality:a2 / 100.0 weight:1.0];
    *(v4 + 88) = a3;
  }

  return result;
}

uint64_t FigUserExperienceReportStall(const void *a1)
{
  if (a1)
  {
    CFRetain(a1);
    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_1_44();
    v4[2] = __FigUserExperienceReportStall_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = a1;
    v4[5] = a1;
    dispatch_async(v2, v4);
  }

  return 0;
}

uint64_t FigUserExperienceReportVariantCompleted(const void *a1, int a2, uint64_t a3)
{
  if (a1)
  {
    CFRetain(a1);
    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_1_44();
    v8[2] = __FigUserExperienceReportVariantCompleted_block_invoke;
    v8[3] = &__block_descriptor_60_e5_v8__0l;
    v9 = a2;
    v8[4] = a1;
    v8[5] = a1;
    v8[6] = a3;
    dispatch_async(v6, v8);
  }

  return 0;
}

void __FigUserExperienceReportVariantCompleted_block_invoke(uint64_t a1)
{
  fus_completeVariantGuts(*(a1 + 32), *(a1 + 56), *(*(a1 + 40) + 88) + 1000000 * *(a1 + 48));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigUserExperienceReportSessionEnd(const void *a1)
{
  if (a1)
  {
    CFRetain(a1);
    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_1_44();
    v4[2] = __FigUserExperienceReportSessionEnd_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = a1;
    v4[5] = a1;
    dispatch_async(v2, v4);
  }

  return 0;
}

uint64_t FigUserExperienceScorerCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

CFMutableDictionaryRef FigGaplessInfoCreateDefaultEnhanced(const opaqueCMFormatDescription *a1)
{
  if (!a1)
  {
    return 0;
  }

  MostCompatibleFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(a1);
  if (!MostCompatibleFormat)
  {
    return 0;
  }

  DefaultNumAudioPrimingFrames = figi_GetDefaultNumAudioPrimingFrames(MostCompatibleFormat->mASBD.mFormatID);
  if (!DefaultNumAudioPrimingFrames)
  {
    return 0;
  }

  v4 = MEMORY[0x1E6960C70];

  return FigGaplessInfoCreateEnhanced_CorrectingWithUneditedDuration(a1, v4, DefaultNumAudioPrimingFrames, 0, 0);
}

double FigGaplessInfoGetGaplessSourceTimeRange(const opaqueCMFormatDescription *a1, CFTypeRef cf)
{
  v2 = *(MEMORY[0x1E6960C98] + 16);
  v21 = *MEMORY[0x1E6960C98];
  *v22 = v2;
  *&v22[16] = *(MEMORY[0x1E6960C98] + 32);
  *timescale = 0;
  if (cf)
  {
    v3 = cf;
    v4 = 0;
  }

  else
  {
    DefaultEnhanced = FigGaplessInfoCreateDefaultEnhanced(a1);
    v3 = DefaultEnhanced;
    v4 = DefaultEnhanced;
    if (!DefaultEnhanced)
    {
      goto LABEL_12;
    }
  }

  v5 = CFGetTypeID(v3);
  DefaultEnhanced = CFDictionaryGetTypeID();
  if (v5 == DefaultEnhanced)
  {
    Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
    DefaultEnhanced = FigCFDictionaryGetInt32IfPresent();
    if (Int32IfPresent)
    {
      if (DefaultEnhanced)
      {
        HIDWORD(v19) = 0;
        if (FigCFDictionaryGetInt32IfPresent())
        {
          CMTimeMake(&v21, SHIDWORD(v19), timescale[0]);
        }

        value = 0;
        DefaultEnhanced = FigCFDictionaryGetInt64IfPresent();
        if (DefaultEnhanced)
        {
          DefaultEnhanced = CMTimeMake(&v17, value, timescale[0]);
          v14 = *&v17.value;
          *&v22[8] = v17;
        }
      }
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }

LABEL_12:
  *&result = OUTLINED_FUNCTION_1_45(DefaultEnhanced, v7, v8, v9, v10, v11, v12, v13, v17.value, *&v17.timescale, v17.epoch, value, v19, *timescale, v21, *v22, v14).n128_u64[0];
  return result;
}

uint64_t FigGaplessInfoGetTrackGaplessSourceTimeRange(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = *(MEMORY[0x1E6960C98] + 16);
  *&v39.start.value = *MEMORY[0x1E6960C98];
  *&v39.start.epoch = v5;
  *&v39.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  v6 = *&v39.duration.timescale;
  HIDWORD(v38) = 0;
  v36 = 0;
  cf = 0;
  v34 = 0;
  theArray = 0;
  *a3 = *&v39.start.value;
  a3[1] = v5;
  a3[2] = v6;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v14)
  {
    goto LABEL_17;
  }

  v16 = v14(a2, 0, &v38 + 4);
  if (v16)
  {
    goto LABEL_39;
  }

  if (HIDWORD(v38) != 1936684398)
  {
    goto LABEL_32;
  }

  v17 = *MEMORY[0x1E695E480];
  FigBaseObject = FigTrackReaderGetFigBaseObject(a2);
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v19)
  {
    v19(FigBaseObject, @"EditsExcludePrimingAndRemainderDuration", v17, &cf);
    v20 = cf;
  }

  else
  {
    v20 = 0;
  }

  if (v20 != *MEMORY[0x1E695E4D0])
  {
    v21 = FigTrackReaderGetFigBaseObject(a2);
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v22 && !v22(v21, @"GaplessSourceTimeRange", v17, &v36))
    {
      CMTimeRangeMakeFromDictionary(&v39, v36);
      goto LABEL_32;
    }

    v23 = FigTrackReaderGetFigBaseObject(a2);
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v24)
    {
      v16 = v24(v23, @"TrackFormatDescriptionArray", v17, &theArray);
      if (!v16)
      {
        if (theArray && CFArrayGetCount(theArray) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
          v26 = FigFormatReaderGetFigBaseObject(a1);
          v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v27)
          {
            v32 = v27(v26, @"iTunesGaplessInfo", v17, &v34);
            v28 = 0;
            if (!v32 && v34)
            {
              v28 = FigGaplessInfoCopyAndEnhance_CorrectingWithTrackReader(ValueAtIndex, a2, v34);
            }
          }

          else
          {
            v28 = 0;
          }

          v15.n128_f64[0] = FigGaplessInfoGetGaplessSourceTimeRange(ValueAtIndex, v28);
          goto LABEL_33;
        }

LABEL_32:
        v28 = 0;
LABEL_33:
        v29 = 0;
        goto LABEL_18;
      }

LABEL_39:
      v29 = v16;
      v28 = 0;
LABEL_18:
      v20 = cf;
      if (!cf)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_17:
    v28 = 0;
    v29 = 4294954514;
    goto LABEL_18;
  }

  v28 = 0;
  v29 = 0;
  if (v20)
  {
LABEL_19:
    CFRelease(v20);
  }

LABEL_20:
  if (v36)
  {
    CFRelease(v36);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  v30 = v34;
  if (v34)
  {
    CFRelease(v34);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (!v29)
  {
    OUTLINED_FUNCTION_1_45(v30, v7, v8, v9, v10, v11, v12, v13, v33, v34, theArray, v36, cf, v38, *&v39.start.value, *&v39.start.epoch, v15);
  }

  return v29;
}

uint64_t FigGaplessInfoGetTrackDuration(uint64_t a1, uint64_t a2, int a3, CMTime *a4)
{
  v22 = 0;
  duration = **&MEMORY[0x1E6960CC0];
  v5 = FigTrackReaderCreateSegmentData(a1, a2, a3, &v22);
  v6 = v22;
  if (!v5)
  {
    if (v22)
    {
      v7 = CFGetTypeID(v22);
      if (v7 == CFDataGetTypeID())
      {
        Length = CFDataGetLength(v6);
        v9 = Length - 96;
        if (Length >= 0x60)
        {
          v10 = Length;
          BytePtr = CFDataGetBytePtr(v6);
          v12 = *(BytePtr + 4);
          *&v20.start.value = *(BytePtr + 3);
          *&v20.start.epoch = v12;
          *&v20.duration.timescale = *(BytePtr + 5);
          if (v9 >= 0x60)
          {
            v13 = &BytePtr[96 * (v10 / 0x60)];
            v14 = *(BytePtr + 4);
            *&range.start.value = *(BytePtr + 3);
            *&range.start.epoch = v14;
            *&range.duration.timescale = *(BytePtr + 5);
            v15 = *(v13 - 3);
            v16 = *(v13 - 1);
            *&v18.start.epoch = *(v13 - 2);
            *&v18.duration.timescale = v16;
            *&v18.start.value = v15;
            CMTimeRangeGetUnion(&v20, &range, &v18);
          }

          duration = v20.duration;
        }
      }
    }

    *a4 = duration;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

uint64_t FigGaplessInfoGetDefaultAudioPrimingFrameCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigGaplessInfoGetDefaultAudioPrimingDuration_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigGaplessInfoGetDefaultAudioPrimingDuration_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigTrackReaderCreateSegmentData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTrackReaderCreateSegmentData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigGaplessInfoAdjustEditSegmentAccordingtoGaplessAudioTimeRange_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigGaplessInfoCreateSegmentDataForTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigGaplessInfoCreateSegmentDataForTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferConsumerCreateForFrameSilo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferConsumerCreateForFrameSilo_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void figAudioQueueRenderPipelineSetRateAndAnchorTime()
{
  OUTLINED_FUNCTION_10_17();
  v99 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v124 = *MEMORY[0x1E69E9840];
  *(&v102 + 1) = v8;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_9_17();
  if (dword_1EAF16ED8)
  {
    LODWORD(value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*v0 && !*(v0 + 66))
  {
    if (v9 == 0.0)
    {
      OUTLINED_FUNCTION_2_45();
      faqrp_stopTimebaseAndAudioQueue(v11, &time);
      *(v0 + 101) = 1;
      faqrp_updateTimePitchBypass();
    }

    else
    {
      *(v0 + 101) = v9 == 1.0;
      faqrp_updateTimePitchBypass();
      if (*(v0 + 64))
      {
        faqrp_stopTimebaseAndAudioQueue(v11, MEMORY[0x1E6960C70]);
      }

      FigAudioQueueSetParameter(*(v0 + 40), 2, v7);
      *(v0 + 160) = v7;
      if (*(v0 + 64))
      {
        v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &v102 + 4);
        FigAudioQueueSetProperty(*(v0 + 40), @"TimebaseRate", v13);
        CFRelease(v13);
        CMTimebaseSetRate(*(v0 + 112), *(&v102 + 1));
        goto LABEL_4;
      }

      OUTLINED_FUNCTION_2_45();
      faqrp_primeAudioChain(v9, v11, &time);
      value = *v5;
      flags = *(v5 + 12);
      timescale = *(v5 + 8);
      epoch = *(v5 + 16);
      *type = *v3;
      v16 = *(v3 + 12);
      LODWORD(v108) = *(v3 + 8);
      v17 = *(v3 + 16);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      cf = 0;
      if (*DerivedStorage)
      {
        goto LABEL_4;
      }

      v25 = DerivedStorage;
      if ((flags & 0x1D) != 1)
      {
        DerivedStorage = CMTimebaseGetTime(&time, *(DerivedStorage + 112));
        value = time.value;
        flags = time.flags;
        timescale = time.timescale;
        epoch = time.epoch;
      }

      OUTLINED_FUNCTION_0_53(DerivedStorage, *(v25 + 112), v19, v20, v21, v22, v23, v24, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, lhs.value, *&lhs.timescale, lhs.epoch, v104, v105, cf, *type, v108, value);
      OUTLINED_FUNCTION_6_28();
      v97 = v17;
      rhs.epoch = v17;
      if (faqrp_createPendingStartInfo(v9, v11, v26, &time.value, &rhs.value, 1, &cf))
      {
        v28 = cf;
        if (!cf)
        {
          goto LABEL_4;
        }

        goto LABEL_50;
      }

      FigSimpleMutexLock();
      v27 = *(v25 + 120);
      v28 = cf;
      *(v25 + 120) = cf;
      if (v28)
      {
        CFRetain(v28);
      }

      if (v27)
      {
        CFRelease(v27);
      }

      HIDWORD(v88) = v16 & 0x1D;
      *(v25 + 109) = HIDWORD(v88) == 1;
      FigSimpleMutexUnlock();
      faqrp_updateFAQDiscardSampleBuffersProperty(v11, *(v25 + 109));
      *(v25 + 64) = 1;
      if (dword_1EAF16ED8)
      {
        v91 = v28;
        v94 = epoch;
        HIDWORD(v105) = 0;
        BYTE3(v105) = 0;
        v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v37 = HIDWORD(v105);
        v85 = v36;
        v38 = os_log_type_enabled(v36, BYTE3(v105));
        if (v38)
        {
          v46 = v37;
        }

        else
        {
          v46 = v37 & 0xFFFFFFFE;
        }

        if (v46)
        {
          if (v11)
          {
            v38 = CMBaseObjectGetDerivedStorage();
            v47 = (v38 + 164);
          }

          else
          {
            v47 = "";
          }

          v48 = *(v25 + 112);
          OUTLINED_FUNCTION_0_53(v38, v39, v40, v41, v42, v43, v44, v45, p_rhs, v79, v47, v85, v88, v91, v94, v97, v100, v102, lhs.value, *&lhs.timescale, lhs.epoch, v104, v105, cf, *type, v108, value);
          time.epoch = v94;
          Seconds = CMTimeGetSeconds(&time);
          time.value = *type;
          OUTLINED_FUNCTION_5_34();
          time.epoch = v97;
          v50 = CMTimeGetSeconds(&time);
          HostTimeClock = CMClockGetHostTimeClock();
          CMClockGetTime(&rhs, HostTimeClock);
          lhs.value = *type;
          lhs.timescale = v108;
          lhs.flags = v16;
          lhs.epoch = v97;
          CMTimeSubtract(&time, &lhs, &rhs);
          CMTimeGetSeconds(&time);
          LODWORD(rhs.value) = 136316674;
          OUTLINED_FUNCTION_3_34();
          v112 = v82;
          v113 = v52;
          v114 = v48;
          v115 = v52;
          v116 = Seconds;
          v117 = v52;
          v118 = v50;
          v119 = v52;
          v120 = v53;
          LODWORD(v79) = 72;
          p_rhs = &rhs;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v28 = v91;
        epoch = v94;
      }

      OUTLINED_FUNCTION_0_53(*(v25 + 40), v29, v30, v31, v32, v33, v34, v35, p_rhs, v79, v82, v85, v88, v91, v94, v97, v100, v102, lhs.value, *&lhs.timescale, lhs.epoch, v104, v105, cf, *type, v108, value);
      OUTLINED_FUNCTION_6_28();
      rhs.epoch = v98;
      if (FigAudioQueueStart2(v54, &time, &rhs, faqrp_startTimebaseAtAnchorAudioTimeStamp, v28, 0, v9))
      {
        *(v25 + 64) = 0;
        FigSignalErrorAtGM();
        if (!v28)
        {
          goto LABEL_4;
        }

        goto LABEL_50;
      }

      if (HIDWORD(v89) == 1)
      {
        v55 = CMTimebaseCopySource(*(v25 + 112));
        memset(&lhs, 0, sizeof(lhs));
        CMClockGetHostTimeClock();
        time.value = *type;
        OUTLINED_FUNCTION_5_34();
        time.epoch = v98;
        CMSyncConvertTime(&lhs, &time, v56, v55);
        if (v55)
        {
          CFRelease(v55);
        }

        if (dword_1EAF16ED8)
        {
          v92 = v28;
          v95 = epoch;
          HIDWORD(v105) = 0;
          BYTE3(v105) = 0;
          v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v65 = HIDWORD(v105);
          if (os_log_type_enabled(v64, BYTE3(v105)))
          {
            v66 = v65;
          }

          else
          {
            v66 = v65 & 0xFFFFFFFE;
          }

          if (v66)
          {
            if (v11)
            {
              v67 = (CMBaseObjectGetDerivedStorage() + 164);
            }

            else
            {
              v67 = "";
            }

            v101 = v67;
            v68 = *(v25 + 112);
            time.value = value;
            time.timescale = timescale;
            time.flags = flags;
            time.epoch = v95;
            v69 = CMTimeGetSeconds(&time);
            time = lhs;
            v70 = CMTimeGetSeconds(&time);
            time.value = *type;
            OUTLINED_FUNCTION_5_34();
            time.epoch = v98;
            CMTimeGetSeconds(&time);
            LODWORD(rhs.value) = 136316930;
            OUTLINED_FUNCTION_3_34();
            v112 = v101;
            v113 = v71;
            v114 = v68;
            v115 = v71;
            v116 = v9;
            v117 = v71;
            v118 = v69;
            v119 = v71;
            v120 = v70;
            v121 = v71;
            v122 = v72;
            LODWORD(v80) = 82;
            v77 = &rhs;
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v28 = v92;
          epoch = v95;
        }

        OUTLINED_FUNCTION_0_53(*(v25 + 112), v57, v58, v59, v60, v61, v62, v63, v77, v80, v83, v86, v89, v92, v95, v98, v101, v102, lhs.value, *&lhs.timescale, lhs.epoch, v104, v105, cf, *type, v108, value);
        time.epoch = epoch;
        rhs = lhs;
        CMTimebaseSetRateAndAnchorTime(v73, v74, &time, &rhs);
      }

      if (v28)
      {
LABEL_50:
        CFRelease(v28);
      }
    }
  }

LABEL_4:
  FigSimpleMutexUnlock();
  OUTLINED_FUNCTION_451_0();
}

uint64_t figAudioQueueRenderPipelineStartOffline(uint64_t a1, __int128 *a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_9_17();
  if (*(v2 + 66))
  {
    v4 = *a2;
    *(v2 + 84) = *(a2 + 2);
    *(v2 + 68) = v4;
    v5 = *(v2 + 40);
    v8 = *a2;
    started = FigAudioQueueStartOffline(v5, &v8);
    if (started)
    {
      FigSignalErrorAtGM();
    }
  }

  else
  {
    started = 4294954444;
  }

  FigSimpleMutexUnlock();
  return started;
}

uint64_t figAudioQueueRenderPipelineStopOffline()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_9_17();
  if (*(v0 + 66))
  {
    v1 = FigAudioQueueStopOffline(*(v0 + 40));
    if (v1)
    {
      FigSignalErrorAtGM();
    }
  }

  else
  {
    v1 = 4294954444;
  }

  FigSimpleMutexUnlock();
  return v1;
}

uint64_t figAudioQueueRenderPipelineReset()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_9_17();
  v1 = CMBufferQueueReset(*(v0 + 32));
  if (!v1)
  {
    v1 = FigAudioQueueResetOffline(*(v0 + 40));
  }

  v2 = v1;
  FigSimpleMutexUnlock();
  return v2;
}

void faqrp_transitionCallback()
{
  OUTLINED_FUNCTION_10_17();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v29 = *MEMORY[0x1E69E9840];
  v8 = FigCFWeakReferenceTableCopyValue();
  FigCFWeakReferenceTableRemoveValue();
  memset(&v26, 0, sizeof(v26));
  if (!v8)
  {
LABEL_24:
    OUTLINED_FUNCTION_451_0();
    return;
  }

  v25 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*DerivedStorage)
  {
    Value = CFDictionaryGetValue(*(DerivedStorage + 128), v7);
    if (Value)
    {
      v13 = CFDictionaryGetValue(Value, @"TransitionTimebase");
      if (v13)
      {
        v14 = v13;
        if (FigCFDictionaryGetCFIndexIfPresent())
        {
          if (!FigCFDictionaryGetValue())
          {
            v16 = 0;
            goto LABEL_16;
          }

          v15 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v15)
          {
            v16 = v15;
LABEL_16:
            CFRetain(v14);
            CFDictionaryRemoveValue(*(DerivedStorage + 128), v7);
            v17 = CMTimebaseCopySource(v14);
            HostTimeClock = CMClockGetHostTimeClock();
            time = *v3;
            CMSyncConvertTime(&v26, &time, HostTimeClock, v17);
            memset(&v24, 0, sizeof(v24));
            CMSyncGetTime(&v24, v17);
            if (dword_1EAF16ED8)
            {
              *type = 0;
              v22 = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            time = *v5;
            lhs = v26;
            if (!CMTimebaseSetRateAndAnchorTime(v14, v1, &time, &lhs))
            {
              faqrp_setTimebase(v8, v14);
            }

            FigSimpleMutexUnlock();
            CFRelease(v14);
            if (v17)
            {
              CFRelease(v17);
            }

            CFRelease(v8);
            if (v16)
            {
              CFRelease(v16);
            }

            goto LABEL_24;
          }

          if (dword_1EAF16ED8)
          {
            LODWORD(rhs.value) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v16 = 0;
        goto LABEL_16;
      }
    }
  }

  FigSimpleMutexUnlock();
  OUTLINED_FUNCTION_451_0();

  CFRelease(v10);
}

uint64_t FigAudioQueueRenderPipelineCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueRenderPipelineCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t faqrp_createPendingStartInfo_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figAudioQueueRenderPipelineStartAndUseTimebaseAtTransition_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figAudioQueueRenderPipelineSetPropertiesToUpdateAtTransition_cold_1(uint64_t a1, uint64_t a2, const __CFDictionary *a3, int *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 66))
  {
    v10 = -12852;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryApplyFunction(a3, figAudioQueueRenderPipelineConvertRPPropertyKeyToFAQPropertyKey, Mutable);
    Count = FigCFDictionaryGetCount();
    if (!Mutable || Count)
    {
      v10 = FigAudioQueueSetPropertiesToUpdateAtTransition(*(DerivedStorage + 40), a2, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      CFRelease(Mutable);
      v10 = FigAudioQueueSetPropertiesToUpdateAtTransition(*(DerivedStorage + 40), a2, 0);
    }
  }

  *a4 = v10;

  return FigSimpleMutexUnlock();
}

uint64_t FigPlaybackTimerCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackTimerCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL FigPlaybackTimerScheduleForTimebaseTimeWithTeardownHandlers_cold_3(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t FigPlaybackTimerCancel_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _figCSSParser_consume_a_simple_block(const void *a1, uint64_t a2, void *a3, CFTypeRef *a4)
{
  value = 0;
  v34 = 0;
  cf = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    v30 = FigSignalErrorAtGM();
    Mutable = 0;
    goto LABEL_35;
  }

  v8 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v10 = OUTLINED_FUNCTION_3_35();
    CurrentInputToken = FigCSSTokenWalkerGetCurrentInputToken(v10, v11, v12);
    if (CurrentInputToken)
    {
      goto LABEL_48;
    }

    v14 = v36;
    v15 = v35;
    *a3 = 0;
    *a4 = 0;
    v16 = CFGetAllocator(a1);
    CurrentInputToken = FigCSSSimpleBlockParserNodeCreate(v16, &v34);
    if (CurrentInputToken)
    {
      goto LABEL_48;
    }

    CurrentInputToken = FigCSSSimpleBlockParserNodeSetAssociatedToken(v34, v14);
    if (CurrentInputToken)
    {
      goto LABEL_48;
    }

    v17 = CFGetAllocator(a1);
    v18 = CFArrayCreateMutable(v17, 0, MEMORY[0x1E695E9C0]);
    if (v18)
    {
      v19 = v18;
      switch(v15)
      {
        case 16:
          v20 = 17;
          break;
        case 18:
          v20 = 19;
          break;
        case 20:
          v20 = 21;
          break;
        default:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_11();
          InputToken = FigSignalErrorAtGM();
          goto LABEL_33;
      }

      InputToken = FigCSSSimpleBlockParserNodeSetValue(v34, v18);
      if (!InputToken)
      {
        v22 = OUTLINED_FUNCTION_3_35();
        InputToken = FigCSSTokenWalkerConsumeNextInputToken(v22, v23, v24);
        if (!InputToken)
        {
          v25 = v35;
          while (v25 != 1 && v25 != v20)
          {
            InputToken = FigCSSTokenWalkerReconsumeInputToken(a2);
            if (!InputToken)
            {
              InputToken = _figCSSParser_consume_a_component_value(a1, a2, &cf, &value);
              if (!InputToken)
              {
                CFArrayAppendValue(v19, value);
                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                if (value)
                {
                  CFRelease(value);
                  value = 0;
                }

                v27 = OUTLINED_FUNCTION_3_35();
                InputToken = FigCSSTokenWalkerConsumeNextInputToken(v27, v28, v29);
                v25 = v35;
                if (!InputToken)
                {
                  continue;
                }
              }
            }

            goto LABEL_33;
          }

          v30 = 0;
          *a4 = v34;
          v34 = 0;
          goto LABEL_34;
        }
      }

LABEL_33:
      v30 = InputToken;
LABEL_34:
      CFRelease(v19);
      goto LABEL_35;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
  }

  CurrentInputToken = FigSignalErrorAtGM();
LABEL_48:
  v30 = CurrentInputToken;
LABEL_35:
  if (v34)
  {
    CFRelease(v34);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v30;
}

uint64_t _figCSSParser_consume_a_component_value(const void *a1, uint64_t a2, void *a3, CFTypeRef *a4)
{
  v40 = 0;
  v41 = 0;
  v39 = 0;
  if (!a1 || !a3 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    InputToken = FigSignalErrorAtGM();
    goto LABEL_56;
  }

  *a3 = 0;
  *a4 = 0;
  v7 = OUTLINED_FUNCTION_4_39();
  InputToken = FigCSSTokenWalkerConsumeNextInputToken(v7, v8, v9);
  if (InputToken)
  {
LABEL_56:
    v32 = InputToken;
LABEL_57:
    v33 = 0;
    goto LABEL_46;
  }

  HIDWORD(v12) = v44 - 16;
  LODWORD(v12) = v44 - 16;
  v11 = v12 >> 1;
  if (v11 < 3)
  {
    v13 = CFGetAllocator(a1);
    InputToken = FigCSSComponentValueParserNodeCreate(v13, &v39);
    if (!InputToken)
    {
      InputToken = _figCSSParser_consume_a_simple_block(a1, a2, &v41, &v40);
      if (!InputToken)
      {
        v14 = FigCSSComponentValueParserNodeSetSimpleBlock(v39, v40);
        goto LABEL_34;
      }
    }

    goto LABEL_56;
  }

  if (v11 != 8)
  {
    v34 = CFGetAllocator(a1);
    InputToken = FigCSSComponentValueParserNodeCreate(v34, &v39);
    if (!InputToken)
    {
      v35 = OUTLINED_FUNCTION_4_39();
      InputToken = FigCSSTokenWalkerGetCurrentInputToken(v35, v36, v37);
      if (!InputToken)
      {
        v14 = FigCSSComponentValueParserNodeSetPreservedToken(v39, v46);
LABEL_34:
        v32 = v14;
        if (!v14)
        {
          v33 = 0;
LABEL_45:
          *a4 = v39;
          v39 = 0;
          goto LABEL_46;
        }

        goto LABEL_57;
      }
    }

    goto LABEL_56;
  }

  v15 = CFGetAllocator(a1);
  InputToken = FigCSSComponentValueParserNodeCreate(v15, &v39);
  if (InputToken)
  {
    goto LABEL_56;
  }

  value = 0;
  v44 = 0;
  cf = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    CurrentInputToken = FigSignalErrorAtGM();
LABEL_59:
    v32 = CurrentInputToken;
    Mutable = 0;
    goto LABEL_28;
  }

  v16 = OUTLINED_FUNCTION_2_46();
  CurrentInputToken = FigCSSTokenWalkerGetCurrentInputToken(v16, v17, v18);
  if (CurrentInputToken)
  {
    goto LABEL_59;
  }

  v20 = v46;
  v21 = CFGetAllocator(a1);
  CurrentInputToken = FigCSSFunctionParserNodeCreate(v21, &v44);
  if (CurrentInputToken)
  {
    goto LABEL_59;
  }

  CurrentInputToken = FigCSSFunctionParserNodeSetName(v44, v20);
  if (CurrentInputToken)
  {
    goto LABEL_59;
  }

  v22 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v22, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    v24 = FigSignalErrorAtGM();
LABEL_27:
    v32 = v24;
LABEL_28:
    if (v44)
    {
      CFRelease(v44);
    }

    v33 = 0;
    goto LABEL_37;
  }

  v24 = FigCSSFunctionParserNodeSetValue(v44, Mutable);
  if (v24)
  {
    goto LABEL_27;
  }

  v25 = OUTLINED_FUNCTION_2_46();
  v24 = FigCSSTokenWalkerConsumeNextInputToken(v25, v26, v27);
  if (v24)
  {
    goto LABEL_27;
  }

  v28 = v45;
  while ((v28 & 0xFFFFFFEF) != 1)
  {
    v24 = FigCSSTokenWalkerReconsumeInputToken(a2);
    if (!v24)
    {
      v24 = _figCSSParser_consume_a_component_value(a1, a2, &cf, &value);
      if (!v24)
      {
        CFArrayAppendValue(Mutable, value);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (value)
        {
          CFRelease(value);
          value = 0;
        }

        v29 = OUTLINED_FUNCTION_2_46();
        v24 = FigCSSTokenWalkerConsumeNextInputToken(v29, v30, v31);
        v28 = v45;
        if (!v24)
        {
          continue;
        }
      }
    }

    goto LABEL_27;
  }

  v32 = 0;
  v33 = v44;
  v44 = 0;
LABEL_37:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (!v32)
  {
    v32 = FigCSSComponentValueParserNodeSetFunctionNode(v39, v33);
    if (!v32)
    {
      goto LABEL_45;
    }
  }

LABEL_46:
  if (v41)
  {
    CFRelease(v41);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return v32;
}

uint64_t FigCSSParserCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParserCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParserCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParserCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParserProduceStyleSheet_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParserProduceStyleSheet_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParserProduceStyleSheet_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParserProduceStyleSheet_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParserProduceStyleSheet_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParserProduceStyleSheet_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParserProduceStyleSheet_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParserProduceStyleSheet_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParserProduceStyleSheet_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL FigCSSParserProduceStyleSheet_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t FigCSSParserProduceStyleSheet_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParserProduceStyleSheet_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _figCSSParser_consume_an_at_rule_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _figCSSParser_consume_an_at_rule_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _figCSSParser_consume_an_at_rule_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _figCSSParser_consume_an_at_rule_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _figCSSParser_util_serializeComponentValueNodeArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _figCSSParser_util_serializeComponentValueNodeArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _figCSSParser_util_serializeComponentValueNodeArray_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _figCSSParser_util_serializeComponentValueNodeArray_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _figCSSParser_util_serializeComponentValueNodeArray_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoRenderPipelineCreateWithVisualContext(const __CFAllocator *a1, int a2, int a3, int a4, int a5, uint64_t a6, void *a7, CFDictionaryRef theDict, uint64_t a9)
{
  values = 0;
  v39 = a7;
  value = 0;
  if (theDict && (CFDictionaryGetValueIfPresent(theDict, @"LoggingID", &value), value))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    if (!Mutable)
    {
      v14 = FigSignalErrorAtGM();
LABEL_26:
      v26 = v14;
      goto LABEL_21;
    }
  }

  else
  {
    Mutable = 0;
  }

  v14 = FigImageQueueCreateForCoreVideoWithOptions(0, Mutable, &values);
  if (v14)
  {
    goto LABEL_26;
  }

  if (a7)
  {
    v15 = *MEMORY[0x1E695E4D0];
    if (v15 == CFDictionaryGetValue(a7, @"LimitImageQueueCapacityToOneFrame"))
    {
      FigBaseObject = FigImageQueueGetFigBaseObject(values);
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v28)
      {
        v28(FigBaseObject, @"FigImageQueueProperty_LimitCapacityToOneFrame", v15);
      }
    }
  }

  v16 = values;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v17)
  {
    v26 = 4294954514;
    goto LABEL_21;
  }

  v14 = v17(v16, a6, 0);
  if (v14)
  {
    goto LABEL_26;
  }

  v18 = CFArrayCreate(a1, &values, 1, MEMORY[0x1E695E9C0]);
  if (!a7)
  {
    v29 = OUTLINED_FUNCTION_0_54();
    v26 = FigVideoRenderPipelineCreateWithFigImageQueueArray(v29, v30, v31, v32, v33, v34, 0, theDict, v36);
    if (!v18)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v19 = CFArrayCreate(a1, &v39, 1, MEMORY[0x1E695E9C0]);
  v20 = OUTLINED_FUNCTION_0_54();
  v26 = FigVideoRenderPipelineCreateWithFigImageQueueArray(v20, v21, v22, v23, v24, v25, v19, theDict, v36);
  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
LABEL_20:
    CFRelease(v18);
  }

LABEL_21:
  if (values)
  {
    CFRelease(values);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v26;
}

uint64_t FigVideoRenderPipelineCreateWithVisualContextGroup(const __CFAllocator *a1, const void *a2, const void *a3, const void *a4, int a5, const __CFArray *a6, const __CFArray *a7, uint64_t a8, CFDictionaryRef theDict, void *a10)
{
  value = 0;
  v42 = 0;
  v15 = MEMORY[0x1E695E480];
  if (theDict && (CFDictionaryGetValueIfPresent(theDict, @"LoggingID", &value), value))
  {
    Mutable = CFDictionaryCreateMutable(*v15, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    if (!Mutable)
    {
LABEL_31:
      OUTLINED_FUNCTION_111();
      v34 = FigSignalErrorAtGM();
      v20 = 0;
      v19 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    Mutable = 0;
  }

  v37 = a2;
  if (!a6)
  {
    goto LABEL_31;
  }

  Count = CFArrayGetCount(a6);
  if (Count <= 0)
  {
    goto LABEL_31;
  }

  v18 = Count;
  if (!a7 || Count != CFArrayGetCount(a7))
  {
    goto LABEL_31;
  }

  v36 = a3;
  v19 = CFArrayCreateMutable(a1, v18, MEMORY[0x1E695E9C0]);
  if (v19)
  {
    v20 = CFArrayCreateMutable(a1, v18, MEMORY[0x1E695E9C0]);
    if (v20)
    {
      v38 = v19;
      v21 = 0;
      while (1)
      {
        v22 = FigImageQueueCreateForCoreVideoWithOptions(0, Mutable, &v42);
        if (v22)
        {
          break;
        }

        v23 = Mutable;
        ValueAtIndex = CFArrayGetValueAtIndex(a6, v21);
        v25 = v42;
        v26 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v26)
        {
          v34 = 4294954514;
          goto LABEL_29;
        }

        TagsWithCategory = v26(v25, ValueAtIndex, 0);
        if (TagsWithCategory)
        {
          goto LABEL_43;
        }

        CFArrayAppendValue(v38, v42);
        CFArrayGetValueAtIndex(a7, v21);
        TagsWithCategory = FigTagCollectionGetTagsWithCategory();
        if (TagsWithCategory)
        {
          goto LABEL_43;
        }

        FigTagGetSInt64Value();
        SInt64 = FigCFNumberCreateSInt64();
        if (!SInt64)
        {
          TagsWithCategory = FigSignalErrorAtGM();
LABEL_43:
          v34 = TagsWithCategory;
LABEL_29:
          Mutable = v23;
          goto LABEL_30;
        }

        v29 = SInt64;
        if (a8)
        {
          MutableCopy = FigCFDictionaryCreateMutableCopy();
        }

        else
        {
          MutableCopy = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v31 = MutableCopy;
        if (!MutableCopy)
        {
          v34 = FigSignalErrorAtGM();
          CFRelease(v29);
          goto LABEL_29;
        }

        CFDictionarySetValue(MutableCopy, @"DemuxLayerID", v29);
        CFArrayAppendValue(v20, v31);
        CFRelease(v29);
        if (v42)
        {
          CFRelease(v42);
          v42 = 0;
        }

        CFRelease(v31);
        ++v21;
        Mutable = v23;
        if (v18 == v21)
        {
          v19 = v38;
          v33 = FigVideoRenderPipelineCreateWithFigImageQueueArray(a1, v37, v36, a4, v32, v38, v20, theDict, a10);
          goto LABEL_26;
        }
      }

      v34 = v22;
LABEL_30:
      v19 = v38;
    }

    else
    {
      OUTLINED_FUNCTION_111();
      v33 = FigSignalErrorAtGM();
LABEL_26:
      v34 = v33;
    }
  }

  else
  {
    OUTLINED_FUNCTION_111();
    v34 = FigSignalErrorAtGM();
    v20 = 0;
  }

LABEL_32:
  if (v42)
  {
    CFRelease(v42);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v34;
}

uint64_t figVideoRenderPipelineUpdateImageQueues(uint64_t a1, const __CFArray *a2)
{
  v53[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  theArray = 0;
  v47 = 0;
  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  figVideoRenderPipelineCopyVideoImageQueueArray(a1, &theArray, &v51);
  if (!theArray || (v6 = CFArrayGetCount(theArray), v6 < 1))
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_64;
  }

  v7 = v6;
  v8 = FigCFCopyCompactDescription();
  if (dword_1EAF16EF8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v8)
  {
    CFRelease(v8);
  }

  FigSimpleMutexLock();
  if (Count < 1)
  {
    videopipelineRemoveListenersOnFirstImageQueue();
    v10 = 0;
    Mutable = 0;
  }

  else
  {
    v12 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable || (v14 = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0])) == 0)
    {
      v11 = FigSignalErrorAtGM();
      FigSimpleMutexUnlock();
      v10 = 0;
      goto LABEL_62;
    }

    v10 = v14;
    v15 = 0;
    v16 = *MEMORY[0x1E695E738];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v15);
      v54.location = 0;
      v54.length = v7;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(theArray, v54, ValueAtIndex);
      if (FirstIndexOfValue == -1)
      {
        CFArrayAppendValue(v10, v16);
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListeners();
      }

      else
      {
        v19 = CFArrayGetValueAtIndex(v51, FirstIndexOfValue);
        CFArrayAppendValue(v10, v19);
      }

      CFArrayAppendValue(Mutable, ValueAtIndex);
      if (!v15)
      {
        videopipelineAddListenersToFirstImageQueue(a1, ValueAtIndex);
      }

      ++v15;
    }

    while (Count != v15);
  }

  for (i = 0; i != v7; ++i)
  {
    FigCFArrayGetValueAtIndex();
    if (!FigCFArrayContainsValue())
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListeners();
      FigCFArrayRemoveLastElementOfValue();
    }
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v21 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(DerivedStorage + 64);
  *(DerivedStorage + 64) = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  FigSimpleMutexUnlock();
  v23 = *(DerivedStorage + 40);
  if (v23 && CFArrayGetCount(v23) == 1)
  {
    ImageQueueConfigurationArray = FigImageQueueArrayCreateImageQueueConfigurationArray(Mutable, *MEMORY[0x1E695E480], v10, &cf);
    if (!ImageQueueConfigurationArray)
    {
      v25 = CFArrayGetValueAtIndex(*(DerivedStorage + 40), 0);
      v26 = cf;
      FigBaseObject = FigImageQueueGetFigBaseObject(v25);
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v28)
      {
        v28(FigBaseObject, @"FigImageQueueProperty_ImageQueueConfigurationArrayForFanout", v26);
      }

LABEL_57:
      FigImageQueueArraySetProperty();
      if (*(DerivedStorage + 96))
      {
        FigImageQueueArraySetProperty();
      }

      v53[0] = 0;
      figVideoRenderPipelineCopyMaxFanOutDisplayLayerSize(a1, v53);
      v41 = v53[0];
      if (v53[0])
      {
        VMC2SetProperty(*(DerivedStorage + 16), @"DisplayLayerSize", v53[0]);
        CFRelease(v41);
      }

      videopipelineConfigureAV1FilmGrainModeAsAppropriateForImageQueues(a1);
      v11 = 0;
      goto LABEL_62;
    }
  }

  else
  {
    ImageQueueConfigurationArray = figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID(a1, &v49, &v48, &v47);
    if (!ImageQueueConfigurationArray)
    {
      v29 = v47;
      if (v47)
      {
        v30 = CFArrayGetCount(v47);
        if (v30 >= 1)
        {
          v31 = v30;
          v32 = 0;
          v44 = v48;
          v45 = v49;
          v43 = *MEMORY[0x1E695E480];
          do
          {
            LODWORD(v53[0]) = 0;
            CFArrayGetValueAtIndex(v29, v32);
            FigCFDictionaryGetInt32IfPresent();
            for (j = 0; ; ++j)
            {
              v34 = *(DerivedStorage + 48);
              if (v34)
              {
                v34 = CFArrayGetCount(v34);
              }

              if (j >= v34)
              {
                break;
              }

              CFArrayGetValueAtIndex(*(DerivedStorage + 48), j);
              v52 = 0;
              if (FigCFDictionaryGetInt32IfPresent() && v52 == LODWORD(v53[0]))
              {
                v35 = CFArrayGetValueAtIndex(v45, v32);
                v36 = CFArrayGetValueAtIndex(v44, v32);
                ImageQueueConfigurationArray = FigImageQueueArrayCreateImageQueueConfigurationArray(v35, v43, v36, &cf);
                if (ImageQueueConfigurationArray)
                {
                  goto LABEL_79;
                }

                v37 = CFArrayGetValueAtIndex(*(DerivedStorage + 40), j);
                v38 = cf;
                v39 = FigImageQueueGetFigBaseObject(v37);
                v40 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v40)
                {
                  v40(v39, @"FigImageQueueProperty_ImageQueueConfigurationArrayForFanout", v38);
                }

                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                break;
              }
            }

            ++v32;
          }

          while (v32 != v31);
        }
      }

      goto LABEL_57;
    }
  }

LABEL_79:
  v11 = ImageQueueConfigurationArray;
LABEL_62:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_64:
  if (v51)
  {
    CFRelease(v51);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  return v11;
}

uint64_t figVideoRenderPipelineReset(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBufferQueueReset(*(DerivedStorage + 8));
  if (v4)
  {
    return v4;
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    v6 = VMC2Reset(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(DerivedStorage + 32);
  if (v7)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v8)
    {
      v8(v7, a2);
    }
  }

  return v6;
}

uint64_t FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_9(const void *a1, _DWORD *a2)
{
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoRenderPipelineCreateWithLKImageQueue_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVideoRenderPipelineRequestDecodeForPreroll_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVideoRenderPipelineRequestDecodeForPreroll_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t audioRendererServer_handleMessageWithReply()
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  v2 = OUTLINED_FUNCTION_195_0();
  xpc_dictionary_get_uint64(v2, v3);
  v4 = audioRenderer_lookupAndRetainSampleBufferAudioRendererByObjectIDForConnection();
  if (v4)
  {
    return v4;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t audioRendererServer_handleMessageNoReply(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  v4 = audioRenderer_lookupAndRetainSampleBufferAudioRendererByObjectIDForConnection();
  if (v4)
  {
    return v4;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t audioRendererServer_flushFromTimeCompletionCallback(int a1, uint64_t a2)
{
  if (!FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_uint64(0, "completionID", *a2);
    xpc_dictionary_set_int64(0, "completionStatus", a1);
    xpc_connection_send_message(*(a2 + 16), 0);
  }

  audioRendererServer_destroyFlushFromTimeCompletionCallbackContext(a2);
  return FigXPCRelease();
}

uint64_t FigSampleBufferAudioRendererServerRetainAudioRendererForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t audioRenderer_lookupAndRetainSampleBufferAudioRendererByObjectIDForConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererSessionSetMasterClock(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_17_8(result);
    if (result)
    {
      OUTLINED_FUNCTION_25_8();
      OUTLINED_FUNCTION_9_18();
      dispatch_sync_f(v1, v2, v3);
      return 0;
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetCALayerDevice(uint64_t a1, uint64_t a2)
{
  if (!a1 || !*(a1 + 168))
  {
    return 0;
  }

  v4 = *(a1 + 584);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, *(a1 + 248));
  }

  else
  {
    Value = 0;
  }

  v6 = FigCaptionRendererCALayerOutputCreate(onUserEvent, onViewportChanged, drawInContext, a1, a2, Value, *MEMORY[0x1E695E480], (a1 + 64));
  if (v6)
  {
    v17 = v6;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    goto LABEL_21;
  }

  *(a1 + 624) = FigCaptionRendererCALayerOutputGetOrientation();
  *(a1 + 628) = FigCaptionRendererCALayerOutputGetDisplayScale();
  v7 = *(a1 + 64);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v8)
  {
    v8(v7);
    OUTLINED_FUNCTION_31_7();
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v10 = *(ProtocolVTable + 16)) == 0)
  {
    v17 = 4294954508;
LABEL_20:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
LABEL_21:
    FigSignalErrorAtGM();
    return v17;
  }

  if (!*(v10 + 96))
  {
    v17 = 4294954514;
    goto LABEL_20;
  }

  v11 = OUTLINED_FUNCTION_5_35();
  v13 = v12(v11);
  if (v13)
  {
    v17 = v13;
    goto LABEL_20;
  }

  if (!*(a1 + 584))
  {
    return 0;
  }

  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  v14 = OUTLINED_FUNCTION_2_9();
  if (!v14 || (v15 = *(v14 + 16)) == 0)
  {
    v17 = 4294954508;
    goto LABEL_20;
  }

  v16 = *(v15 + 56);
  if (!v16)
  {
    v17 = 4294954514;
    goto LABEL_20;
  }

  v17 = v16(Value);
  if (v17)
  {
    goto LABEL_20;
  }

  return v17;
}

uint64_t FigCaptionRendererSessionSetCGContextDevice(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_17_8(result);
    if (result)
    {
      OUTLINED_FUNCTION_19_10();
      OUTLINED_FUNCTION_7_19();
      dispatch_sync_f(v1, v2, v3);
      return 0;
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetLegibleOutputDevice(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_17_8(result);
    if (result)
    {
      OUTLINED_FUNCTION_19_10();
      OUTLINED_FUNCTION_7_19();
      dispatch_sync_f(v1, v2, v3);
      return 0;
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetPlayer(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 | *(a1 + 72) && *(a1 + 168))
  {
    OUTLINED_FUNCTION_9_18();
    dispatch_sync_f(v2, v3, v4);
  }

  return 0;
}

void setPlayerDo_0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*(*a1 + 72) == v2)
  {
    return;
  }

  v4 = (v1 + 56);
  v3 = *(v1 + 56);
  if (!v3)
  {
    if (FigCaptionRendererNotificationInputCreate(onCaptionInput, onRegionInput, onTextHighlightArray, v1, *MEMORY[0x1E695E480], (v1 + 56)))
    {
      goto LABEL_28;
    }

    v3 = *v4;
  }

  if (FigCaptionRendererNotificationInputSetPlayer(v3, v2))
  {
    goto LABEL_28;
  }

  if (*(v1 + 72))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_10_18();
    CMNotificationCenterRemoveListener();
    v5 = *(v1 + 72);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + 72) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (*(v1 + 72))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_10_18();
    CMNotificationCenterAddListener();
    FigSimpleMutexLock();
    *(v1 + 1363) = 0;
    FigSimpleMutexUnlock();
    v13 = FigCaptionRendererTriggerCreate(0, *(v1 + 1368), onTriggerEvent, onTriggerTimeUpdate, v1, (v1 + 48));
    if (!v13)
    {
      v12[0] = &v13;
      v12[1] = v1;
      fcrSessionStartDo(v12);
      if (v13)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_376();
        FigSignalErrorAtGM();
      }

      return;
    }

    goto LABEL_28;
  }

  v6 = OUTLINED_FUNCTION_2_47();
  *v6 = CFRetain(v1);
  v7 = *(v1 + 72);
  if (v7)
  {
    v7 = CFRetain(v7);
  }

  v6[1] = v7;
  playbackItemChangedCallbackDo(v6);
  v8 = OUTLINED_FUNCTION_26_10();
  if (!v8)
  {
LABEL_28:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    FigSignalErrorAtGM();
    return;
  }

  v9 = v8;
  v10 = *v4;
  if (*v4)
  {
    v10 = CFRetain(v10);
  }

  v9[1] = v10;
  v11 = *(v1 + 48);
  if (v11)
  {
    v11 = CFRetain(v11);
  }

  v9[2] = v11;
  *v9 = CFRetain(v1);

  fcrSessionStopDo(v9);
}

uint64_t FigCaptionRendererSessionSetCaptionArray(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_17_8(result);
    if (result)
    {
      OUTLINED_FUNCTION_25_8();
      OUTLINED_FUNCTION_9_18();
      dispatch_sync_f(v1, v2, v3);
      return 0;
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetCaptionSample(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_17_8(result);
    if (result)
    {
      OUTLINED_FUNCTION_12_15();
      OUTLINED_FUNCTION_7_19();
      dispatch_sync_f(v1, v2, v3);
      return 0;
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionNotificationInputSetCaptionSample(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_17_8(result);
    if (result)
    {
      OUTLINED_FUNCTION_7_19();
      dispatch_sync_f(v1, v2, v3);
      return 0;
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionStart(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_17_8(result);
    if (result)
    {
      OUTLINED_FUNCTION_7_19();
      dispatch_sync_f(v1, v2, v3);
      return 0;
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionStop(void *a1)
{
  if (a1 && a1[21])
  {
    v2 = OUTLINED_FUNCTION_26_10();
    v3 = a1[7];
    if (v3)
    {
      v3 = CFRetain(v3);
    }

    v2[1] = v3;
    v4 = a1[6];
    if (v4)
    {
      v4 = CFRetain(v4);
    }

    v2[2] = v4;
    v5 = CFRetain(a1);
    OUTLINED_FUNCTION_34_8(v5);
    OUTLINED_FUNCTION_39_3();
    dispatch_async_f(v6, v7, v8);
  }

  return 0;
}

uint64_t FigCaptionRendererSessionSetTime(uint64_t result)
{
  if (result)
  {
    if (*(result + 48))
    {
      result = *(result + 168);
      if (result)
      {
        OUTLINED_FUNCTION_9_18();
        dispatch_sync_f(v1, v2, v3);
        return 0;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetCaptionCacheRange(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_17_8(result);
    if (result)
    {
      OUTLINED_FUNCTION_12_15();
      OUTLINED_FUNCTION_7_19();
      dispatch_sync_f(v1, v2, v3);
      return 0;
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetRate(uint64_t result)
{
  if (result)
  {
    if (*(result + 48))
    {
      result = *(result + 168);
      if (result)
      {
        OUTLINED_FUNCTION_9_18();
        dispatch_sync_f(v1, v2, v3);
        return 0;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

double FigCaptionRendererSessionGetRate(uint64_t a1)
{
  result = 0.0;
  if (a1)
  {
    if (OUTLINED_FUNCTION_17_8(a1))
    {
      OUTLINED_FUNCTION_9_18();
      dispatch_sync_f(v2, v3, v4);
      return 0.0;
    }
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetLayoutContext_Viewport(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_6_29();
  v6 = v5;
  FigSimpleMutexLock();
  if (!*(v6 + 1363))
  {
    *(v6 + 776) = v4;
    *(v6 + 784) = v3;
    *(v6 + 792) = v2;
    *(v6 + 800) = v1;
    FigSimpleMutexUnlock();
    return 0;
  }

  v7 = FigSimpleMutexUnlock();
  v9 = *(v6 + 168);
  if (v9)
  {
    OUTLINED_FUNCTION_13_9(v7, v8);
    OUTLINED_FUNCTION_7_19();
    dispatch_sync_f(v9, v10, v11);
  }

  v12 = *(v6 + 248);
  FigCaptionRendererNodeProtocolGetProtocolID();
  v13 = OUTLINED_FUNCTION_2_9();
  if (!v13 || (v14 = *(v13 + 16)) == 0)
  {
    v16 = -12788;
LABEL_11:
    v17 = v16;
LABEL_12:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM();
    return v17;
  }

  v15 = *(v14 + 96);
  if (!v15)
  {
    v16 = -12782;
    goto LABEL_11;
  }

  result = v15(v12, v4, v3, v2, v1);
  v17 = result;
  if (result)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetLayoutContext_VideoSize(uint64_t result, double a2, double a3)
{
  if (result)
  {
    OUTLINED_FUNCTION_43_6();
    if (*(v3 + 1363))
    {
      v6 = FigSimpleMutexUnlock();
      v8 = *(v3 + 168);
      if (v8)
      {
        OUTLINED_FUNCTION_13_9(v6, v7);
        OUTLINED_FUNCTION_35_6();
        OUTLINED_FUNCTION_7_19();
        dispatch_sync_f(v8, v9, v10);
        return 0;
      }
    }

    else
    {
      *(v3 + 808) = a2;
      *(v3 + 816) = a3;
      FigSimpleMutexUnlock();
    }

    return 0;
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetLayoutContext_Gravity(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 168);
    if (v2)
    {
      OUTLINED_FUNCTION_13_9(result, a2);
      OUTLINED_FUNCTION_35_6();
      OUTLINED_FUNCTION_7_19();
      dispatch_sync_f(v2, v3, v4);
    }

    return 0;
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetLayoutContext_Overscan(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 168);
    if (v2)
    {
      OUTLINED_FUNCTION_13_9(result, a2);
      OUTLINED_FUNCTION_35_6();
      OUTLINED_FUNCTION_7_19();
      dispatch_sync_f(v2, v3, v4);
    }

    return 0;
  }

  return result;
}

uint64_t FigCaptionRendererSessionGetLayoutContext_Overscan(uint64_t a1, _BYTE *a2)
{
  if (a1)
  {
    v2 = *(a1 + 168);
    if (v2)
    {
      bzero(v7, 0xA8uLL);
      OUTLINED_FUNCTION_9_18();
      dispatch_sync_f(v2, v4, v5);
      *a2 = v7[153];
    }
  }

  return 0;
}

uint64_t FigCaptionRendererSessionSetLayoutContext_VideoRelativeToViewport(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_6_29();
    OUTLINED_FUNCTION_43_6();
    if (*(v1 + 1363))
    {
      v6 = FigSimpleMutexUnlock();
      v8 = *(v1 + 168);
      if (v8)
      {
        OUTLINED_FUNCTION_13_9(v6, v7);
        OUTLINED_FUNCTION_7_19();
        dispatch_sync_f(v8, v9, v10);
        return 0;
      }
    }

    else
    {
      *(v1 + 824) = v5;
      *(v1 + 832) = v4;
      *(v1 + 840) = v3;
      *(v1 + 848) = v2;
      FigSimpleMutexUnlock();
    }

    return 0;
  }

  return result;
}

uint64_t FigCaptionRendererSessionSetLayoutContext_CaptionsAvoidanceMargins(uint64_t result, __int128 *a2)
{
  if (result)
  {
    v3 = result;
    FigSimpleMutexLock();
    if (*(v3 + 1363))
    {
      v4 = FigSimpleMutexUnlock();
      v6 = *(v3 + 168);
      if (v6)
      {
        OUTLINED_FUNCTION_13_9(v4, v5);
        OUTLINED_FUNCTION_35_6();
        OUTLINED_FUNCTION_7_19();
        dispatch_sync_f(v6, v7, v8);
        return 0;
      }
    }

    else
    {
      v9 = *a2;
      v10 = a2[1];
      v11 = a2[3];
      *(v3 + 888) = a2[2];
      *(v3 + 904) = v11;
      *(v3 + 856) = v9;
      *(v3 + 872) = v10;
      FigSimpleMutexUnlock();
    }

    return 0;
  }

  return result;
}

uint64_t FigCaptionRendererSessionUpdateLegibleOutputContext(void *a1, uint64_t a2)
{
  if (!a1 || !a1[21])
  {
    return 0;
  }

  v4 = a1[31];
  FigCaptionRendererNodeProtocolGetProtocolID();
  v5 = OUTLINED_FUNCTION_2_9();
  if (!v5 || (v6 = *(v5 + 16)) == 0)
  {
    updated = 4294954508;
LABEL_11:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM();
    return updated;
  }

  v7 = *(v6 + 232);
  if (!v7)
  {
    updated = 4294954514;
    goto LABEL_11;
  }

  v8 = v7(v4, 1);
  if (v8)
  {
    updated = v8;
    goto LABEL_11;
  }

  v9 = a1[8];
  if (!v9)
  {
    return 0;
  }

  updated = FigCaptionRendererCGOutputUpdateCGContext(v9, a2);
  if (updated)
  {
    goto LABEL_11;
  }

  return updated;
}

uint64_t FigCaptionRendererSessionUpdateCGContext(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 168))
  {
    return 0;
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0;
  }

  updated = FigCaptionRendererCGOutputUpdateCGContext(v2, a2);
  if (updated)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM();
  }

  return updated;
}

uint64_t FigCaptionRendererSessionClear(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_6_29();
    OUTLINED_FUNCTION_43_6();
    v2 = *(v1 + 1363);
    FigSimpleMutexUnlock();
    if (v2)
    {
      result = *(v1 + 168);
      if (result)
      {
        OUTLINED_FUNCTION_7_19();
        dispatch_sync_f(v3, v4, v5);
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *clearDo(uint64_t *result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    purgeOutOfRangeCaptionCache(*result, MEMORY[0x1E6960C70]);
    v3 = *(v2 + 248);
    FigCaptionRendererNodeProtocolGetProtocolID();
    v4 = OUTLINED_FUNCTION_39_5();
    if (v4 && (v5 = *(v4 + 16)) != 0)
    {
      v6 = *(v5 + 56);
      if (v6)
      {
        v7 = v6(v3);
        if (v7)
        {
          LODWORD(v12) = v7;
        }

        else
        {
          result = *(v2 + 584);
          if (!result)
          {
            goto LABEL_11;
          }

          Value = CFDictionaryGetValue(result, *(v2 + 248));
          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v9 = OUTLINED_FUNCTION_39_5();
          if (v9 && (v10 = *(v9 + 16)) != 0)
          {
            v11 = *(v10 + 56);
            if (v11)
            {
              result = v11(Value);
              if (!result)
              {
LABEL_11:
                v12 = *(v2 + 64);
                if (!v12)
                {
                  goto LABEL_17;
                }

                if (*(*(CMBaseObjectGetVTable() + 16) + 64))
                {
                  v13 = OUTLINED_FUNCTION_5_35();
                  result = v14(v13);
                  LODWORD(v12) = result;
                  if (!result)
                  {
                    goto LABEL_17;
                  }
                }

                else
                {
                  LODWORD(v12) = -12782;
                }

                goto LABEL_16;
              }

              LODWORD(v12) = result;
            }

            else
            {
              LODWORD(v12) = -12782;
            }
          }

          else
          {
            LODWORD(v12) = -12788;
          }
        }
      }

      else
      {
        LODWORD(v12) = -12782;
      }
    }

    else
    {
      LODWORD(v12) = -12788;
    }

LABEL_16:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    result = FigSignalErrorAtGM();
    goto LABEL_17;
  }

  LODWORD(v12) = 0;
LABEL_17:
  v15 = v1[5];
  if (v15)
  {
    *v15 = v12;
  }

  return result;
}

uint64_t FigCaptionRendererSessionClearForRLO(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_43_6();
    v2 = *(v1 + 1363);
    FigSimpleMutexUnlock();
    if (v2)
    {
      result = *(v1 + 168);
      if (result)
      {
        OUTLINED_FUNCTION_7_19();
        dispatch_sync_f(v3, v4, v5);
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void clearRLODo(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__s1, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_845();
  a19 = v20;
  a20 = v22;
  v23 = v21;
  __s1 = 0;
  v24 = *v21;
  if (!*v21)
  {
    v29 = 0;
    v28 = 0;
    goto LABEL_14;
  }

  clearDo(v21);
  Count = CFDictionaryGetCount(*(v24 + 584));
  if (!Count)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v35 = FigSignalErrorAtGM();
    v29 = 0;
    v28 = 0;
    goto LABEL_17;
  }

  v26 = Count;
  v27 = 8 * Count;
  v28 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  if (!v28)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v35 = FigSignalErrorAtGM();
    v29 = 0;
    goto LABEL_17;
  }

  v29 = malloc_type_malloc(v27, 0xC0040B8AA526DuLL);
  if (!v29)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v35 = FigSignalErrorAtGM();
    goto LABEL_17;
  }

  CFDictionaryGetKeysAndValues(*(v24 + 584), v28, v29);
  if (v26 < 1)
  {
LABEL_14:
    v35 = 0;
    goto LABEL_17;
  }

  v30 = 0;
  while (1)
  {
    v31 = v28[v30];
    FigCaptionRendererBaseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (!ProtocolVTable || (v33 = *(ProtocolVTable + 16)) == 0)
    {
      v35 = -12788;
      goto LABEL_17;
    }

    v34 = *(v33 + 8);
    if (!v34)
    {
      break;
    }

    v35 = v34(v31, &__s1);
    if (v35)
    {
      goto LABEL_17;
    }

    if (!strcmp(__s1, "FigCaptionRendererCaption"))
    {
      CFDictionaryRemoveValue(*(v24 + 584), v28[v30]);
    }

    if (v26 == ++v30)
    {
      goto LABEL_14;
    }
  }

  v35 = -12782;
LABEL_17:
  v36 = v23[5];
  if (v36)
  {
    *v36 = v35;
  }

  free(v28);
  free(v29);
  OUTLINED_FUNCTION_843();
}

uint64_t FigCaptionRendererSessionSetHiddenCallback(uint64_t a1, uint64_t a2)
{
  if (a1 && !*(a1 + 1376) && !*(a1 + 1384))
  {
    *(a1 + 1376) = a2;
    *(a1 + 1384) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  }

  return 0;
}

uint64_t FigCaptionRendererSessionSetOptions(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    if (*(a1 + 168))
    {
      OUTLINED_FUNCTION_7_19();
      dispatch_sync_f(v2, v3, v4);
    }

    return 0;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererSessionSetSeparated(uint64_t a1)
{
  if (a1 && *(a1 + 168))
  {
    OUTLINED_FUNCTION_9_18();
    dispatch_sync_f(v1, v2, v3);
  }

  return 0;
}

uint64_t FigCaptionRendererSessionSetCaptionAvoidanceOptions(uint64_t a1)
{
  if (a1 && OUTLINED_FUNCTION_17_8(a1))
  {
    OUTLINED_FUNCTION_9_18();
    dispatch_sync_f(v1, v2, v3);
  }

  return 0;
}

void FigCaptionRendererSessionCopyCaptionExtendedLanguages(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *value, char *__s1, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_845();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_3_36();
  value = 0;
  __s1 = 0;
  Count = CFDictionaryGetCount(*(v28 + 584));
  v30 = OUTLINED_FUNCTION_18_6(Count);
  if (!v30)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_23_9();
    goto LABEL_19;
  }

  v20 = malloc_type_malloc(v23, v20);
  if (!v20)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_20_6();
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM();
    goto LABEL_19;
  }

  if (v22 < 1)
  {
LABEL_17:
    *v27 = Mutable;
LABEL_18:
    Mutable = 0;
    goto LABEL_19;
  }

  v31 = v30;
  while (1)
  {
    v32 = *v31;
    FigCaptionRendererBaseProtocolGetProtocolID();
    v33 = OUTLINED_FUNCTION_28_8();
    if (!v33)
    {
      break;
    }

    v34 = *(v33 + 16);
    if (!v34)
    {
      break;
    }

    v35 = *(v34 + 8);
    if (!v35 || v35(v32, &__s1))
    {
      break;
    }

    if (!strcmp(__s1, "FigCaptionRendererCaption"))
    {
      v36 = *v31;
      FigCaptionRendererCaptionProtocolGetProtocolID();
      v37 = OUTLINED_FUNCTION_28_8();
      if (!v37)
      {
        break;
      }

      v38 = *(v37 + 16);
      if (!v38)
      {
        break;
      }

      v39 = *(v38 + 64);
      if (!v39 || v39(v36, &value))
      {
        break;
      }

      CFArrayAppendValue(Mutable, value);
    }

    ++v31;
    if (!--v22)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  free(v30);
  free(v20);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  OUTLINED_FUNCTION_843();
}

void FigCaptionRendererSessionCopyCaptionImages(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *value, char *__s1, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_845();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_3_36();
  value = 0;
  __s1 = 0;
  Count = CFDictionaryGetCount(*(v28 + 584));
  v30 = OUTLINED_FUNCTION_18_6(Count);
  if (!v30)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_23_9();
    goto LABEL_19;
  }

  v20 = malloc_type_malloc(v23, v20);
  if (!v20)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_20_6();
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM();
    goto LABEL_19;
  }

  if (v22 < 1)
  {
LABEL_17:
    *v27 = Mutable;
LABEL_18:
    Mutable = 0;
    goto LABEL_19;
  }

  v31 = v30;
  while (1)
  {
    v32 = *v31;
    FigCaptionRendererBaseProtocolGetProtocolID();
    v33 = OUTLINED_FUNCTION_28_8();
    if (!v33)
    {
      break;
    }

    v34 = *(v33 + 16);
    if (!v34)
    {
      break;
    }

    v35 = *(v34 + 8);
    if (!v35)
    {
      break;
    }

    if (v35(v32, &__s1))
    {
      break;
    }

    v36 = *v31;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v37 = OUTLINED_FUNCTION_28_8();
    if (!v37)
    {
      break;
    }

    v38 = *(v37 + 16);
    if (!v38)
    {
      break;
    }

    v39 = *(v38 + 176);
    if (!v39 || v39(v36, &value))
    {
      break;
    }

    if (!strcmp(__s1, "FigCaptionRendererCaption"))
    {
      CFArrayAppendValue(Mutable, value);
    }

    ++v31;
    if (!--v22)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  free(v30);
  free(v20);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  OUTLINED_FUNCTION_843();
}

void FigCaptionRendererSessionCopyOutputNodeImages(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *value, char *__s1, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_845();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_3_36();
  value = 0;
  __s1 = 0;
  Count = CFDictionaryGetCount(*(v28 + 584));
  v30 = OUTLINED_FUNCTION_18_6(Count);
  if (!v30)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_23_9();
    goto LABEL_19;
  }

  v20 = malloc_type_malloc(v23, v20);
  if (!v20)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_20_6();
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM();
    goto LABEL_19;
  }

  if (v22 < 1)
  {
LABEL_17:
    *v27 = Mutable;
LABEL_18:
    Mutable = 0;
    goto LABEL_19;
  }

  v31 = 0;
  while (1)
  {
    v32 = v30[v31];
    FigCaptionRendererBaseProtocolGetProtocolID();
    v33 = OUTLINED_FUNCTION_28_8();
    if (!v33)
    {
      break;
    }

    v34 = *(v33 + 16);
    if (!v34)
    {
      break;
    }

    v35 = *(v34 + 8);
    if (!v35)
    {
      break;
    }

    if (v35(v32, &__s1))
    {
      break;
    }

    v36 = v20[v31];
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v37 = OUTLINED_FUNCTION_28_8();
    if (!v37)
    {
      break;
    }

    v38 = *(v37 + 16);
    if (!v38)
    {
      break;
    }

    v39 = *(v38 + 112);
    if (!v39 || v39(v36, &value))
    {
      break;
    }

    if (!strcmp(__s1, "FigCaptionRendererCaption"))
    {
      CFArrayAppendValue(Mutable, value);
    }

    if (v22 == ++v31)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  free(v30);
  free(v20);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  OUTLINED_FUNCTION_843();
}

uint64_t FigCaptionRendererSessionCopyOutputNodeImagesAndPositions(uint64_t a1, __CFArray **a2, __CFArray **a3)
{
  OUTLINED_FUNCTION_3_36();
  value = 0;
  __s1 = 0;
  v30 = *MEMORY[0x1E695EFF8];
  Count = CFDictionaryGetCount(*(v6 + 584));
  v8 = malloc_type_malloc(8 * Count, v3);
  if (!v8)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    v28 = FigSignalErrorAtGM();
    Mutable = 0;
    v12 = 0;
    v9 = 0;
    goto LABEL_27;
  }

  v9 = malloc_type_malloc(8 * Count, v3);
  if (!v9)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    v28 = FigSignalErrorAtGM();
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_20_6();
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    v28 = FigSignalErrorAtGM();
    goto LABEL_24;
  }

  v12 = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
  if (!v12)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    v18 = FigSignalErrorAtGM();
LABEL_36:
    v28 = v18;
    goto LABEL_27;
  }

  if (Count < 1)
  {
LABEL_22:
    v28 = 0;
    *a2 = Mutable;
    *a3 = v12;
LABEL_23:
    Mutable = 0;
LABEL_24:
    v12 = 0;
    goto LABEL_27;
  }

  v13 = 0;
  while (1)
  {
    v14 = v8[v13];
    FigCaptionRendererBaseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (!ProtocolVTable)
    {
      goto LABEL_25;
    }

    v16 = *(ProtocolVTable + 16);
    if (!v16)
    {
      goto LABEL_25;
    }

    v17 = *(v16 + 8);
    if (!v17)
    {
      break;
    }

    v18 = v17(v14, &__s1);
    if (v18)
    {
      goto LABEL_36;
    }

    v19 = v9[v13];
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v20 = CMBaseObjectGetProtocolVTable();
    if (!v20)
    {
      goto LABEL_25;
    }

    v21 = *(v20 + 16);
    if (!v21)
    {
      goto LABEL_25;
    }

    v22 = *(v21 + 112);
    if (!v22)
    {
      break;
    }

    v18 = v22(v19, &value);
    if (v18)
    {
      goto LABEL_36;
    }

    v23 = v9[v13];
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v24 = CMBaseObjectGetProtocolVTable();
    if (!v24 || (v25 = *(v24 + 16)) == 0)
    {
LABEL_25:
      v28 = 4294954508;
      goto LABEL_27;
    }

    v26 = *(v25 + 64);
    if (!v26)
    {
      break;
    }

    v18 = v26(v23, &v30);
    if (v18)
    {
      goto LABEL_36;
    }

    if (!strcmp(__s1, "FigCaptionRendererCaption"))
    {
      CFArrayAppendValue(Mutable, value);
      DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v30);
      CFArrayAppendValue(v12, DictionaryRepresentation);
    }

    if (Count == ++v13)
    {
      goto LABEL_22;
    }
  }

  v28 = 4294954514;
LABEL_27:
  free(v8);
  free(v9);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v28;
}

void updateMASettingsDoAsync(CFTypeRef *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 67);
  if (!*(a1 + 304))
  {
    if (v3 != 2)
    {
      goto LABEL_64;
    }

    goto LABEL_3;
  }

  v22 = (a1 + 1);
  if (v3 == 2)
  {
    fcrCopyMediaAccessibilityParams(v22, (v2 + 133));
    v2 = *a1;
    *(*a1 + 1360) = 1;
LABEL_3:
    if (*(a1 + 306))
    {
      v4 = v2[132];
      v5 = a1[39];
      v2[132] = v5;
      if (v5)
      {
        CFRetain(v5);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }

    v6 = *a1;
    if (*(a1 + 305) && v6[85].i8[0])
    {
      fcrCopyMediaAccessibilityParams(&v6[66].i64[1], v6[18].i64);
      v6 = *a1;
      *(*a1 + 1361) = 1;
    }

    goto LABEL_11;
  }

  fcrCopyMediaAccessibilityParams(v22, (v2 + 36));
  v6 = *a1;
  if (!*(*a1 + 67))
  {
    fcrCopyMediaAccessibilityParams((a1 + 1), &v6[66].i64[1]);
    v6 = *a1;
    *(*a1 + 1360) = 1;
  }

LABEL_11:
  applyContextDefaultsToMASettings(v6);
  v7 = *a1;
  v36 = 0x3FF0000000000000;
  v37 = 0x3FF0000000000000;
  v35 = 0x3FF0000000000000;
  if (*(v7 + 67) == 2)
  {
    v8 = *(v7 + 132);
    if (v8)
    {
      v9 = overridesCreateCGColorFromCFArray(v8, *MEMORY[0x1E6960878], &v37);
      v10 = v9;
      if (v9)
      {
        v11 = *(v7 + 54);
        *(v7 + 54) = v9;
        CFRetain(v9);
        if (v11)
        {
          CFRelease(v11);
        }

        *(v7 + 36) = 0;
        *(v7 + 57) = v37;
        *(v7 + 39) = 0;
      }

      v12 = overridesCreateCGColorFromCFArray(*(v7 + 132), *MEMORY[0x1E6960810], &v36);
      v13 = v12;
      if (v12)
      {
        v14 = *(v7 + 55);
        *(v7 + 55) = v12;
        CFRetain(v12);
        if (v14)
        {
          CFRelease(v14);
        }

        *(v7 + 37) = 0;
        *(v7 + 58) = v36;
        *(v7 + 40) = 0;
      }

      v15 = overridesCreateCGColorFromCFArray(*(v7 + 132), *MEMORY[0x1E69607C0], &v35);
      v16 = v15;
      if (v15)
      {
        v17 = *(v7 + 56);
        *(v7 + 56) = v15;
        CFRetain(v15);
        if (v17)
        {
          CFRelease(v17);
        }

        *(v7 + 38) = 0;
        *(v7 + 59) = v35;
        *(v7 + 41) = 0;
      }

      v18 = *(v7 + 132);
      if (!v18)
      {
        goto LABEL_44;
      }

      v19 = *MEMORY[0x1E6960818];
      if (!*MEMORY[0x1E6960818])
      {
        goto LABEL_44;
      }

      value = 0;
      if (!CFDictionaryGetValueIfPresent(v18, v19, &value))
      {
        goto LABEL_44;
      }

      TypeID = CFStringGetTypeID();
      if (TypeID != CFGetTypeID(value))
      {
        goto LABEL_44;
      }

      v21 = 1;
      if (CFStringCompare(value, *MEMORY[0x1E69609C8], 1uLL))
      {
        if (CFStringCompare(value, *MEMORY[0x1E69609D0], 1uLL))
        {
          if (CFStringCompare(value, *MEMORY[0x1E69609B8], 1uLL))
          {
            if (CFStringCompare(value, *MEMORY[0x1E69609D8], 1uLL))
            {
              if (CFStringCompare(value, *MEMORY[0x1E69609C0], 1uLL))
              {
LABEL_44:
                if (v16)
                {
                  CFRelease(v16);
                }

                if (v13)
                {
                  CFRelease(v13);
                }

                if (v10)
                {
                  CFRelease(v10);
                }

                goto LABEL_50;
              }

              v21 = 5;
            }

            else
            {
              v21 = 4;
            }
          }

          else
          {
            v21 = 3;
          }
        }

        else
        {
          v21 = 2;
        }
      }

      *(v7 + 70) = v21;
      *(v7 + 52) = 0;
      goto LABEL_44;
    }
  }

LABEL_50:
  v23 = *a1;
  if (*(*a1 + 1365))
  {
    v24 = v23[23];
    if (v24)
    {
      v25 = FigCaptionRendererTimerIsOn(v24);
      v23 = *a1;
      if (v25)
      {
        FigCaptionRendererTimerStop(v23[23]);
        v23 = *a1;
      }
    }

    v26 = v23[31];
    FigCaptionRendererNodeProtocolGetProtocolID();
    v27 = OUTLINED_FUNCTION_2_9();
    if (v27)
    {
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = *(v28 + 272);
        if (v29)
        {
          v29(v26);
        }
      }
    }

    v30 = *a1;
    v30[38] = 0u;
    v31 = *(v30 + 31);
    FigCaptionRendererNodeProtocolGetProtocolID();
    v32 = OUTLINED_FUNCTION_2_9();
    if (v32)
    {
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = *(v33 + 304);
        if (v34)
        {
          v34(v31, v30 + 18);
        }
      }
    }

    updateDisplayPort(*a1, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
    v23 = *a1;
  }

  *(v23 + 1365) = 1;
LABEL_64:
  fcrReleaseAndClearMediaAccessibilityParams((a1 + 1));
  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void timebaseChangedCallback(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_22_8();
    if (v4)
    {
      v5 = v3;
      OUTLINED_FUNCTION_2_47();
      *v2 = OUTLINED_FUNCTION_41_4();
      if (v5)
      {
        v6 = CFRetain(v5);
      }

      else
      {
        v6 = 0;
      }

      v2[1] = v6;
      OUTLINED_FUNCTION_488();

      dispatch_async_f(v7, v8, v9);
    }
  }
}

void playbackItemChangedCallback(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_22_8();
    if (v4)
    {
      v5 = v3;
      OUTLINED_FUNCTION_2_47();
      *v2 = OUTLINED_FUNCTION_41_4();
      if (v5)
      {
        v6 = CFRetain(v5);
      }

      else
      {
        v6 = 0;
      }

      v2[1] = v6;
      OUTLINED_FUNCTION_488();

      dispatch_async_f(v7, v8, v9);
    }
  }
}

void playbackItemChangedCallbackDo(void *a1)
{
  cf = 0;
  v2 = *a1;
  v3 = a1[1];
  if (v3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v4 || v4(v3, 0, &cf))
    {
      goto LABEL_18;
    }

    v5 = cf;
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[10];
  if (v6 != v5)
  {
    if (v6)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_16();
      CMNotificationCenterRemoveListener();
      v7 = v2[10];
    }

    else
    {
      v7 = 0;
    }

    v2[10] = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v2[10])
    {
      v8 = OUTLINED_FUNCTION_2_47();
      *v8 = CFRetain(v2);
      v9 = v2[10];
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      v8[1] = v9;
      timebaseChangedCallbackDo(v8);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_16();
      CMNotificationCenterAddListener();
    }
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void onTriggerEvent(const void *a1, __int128 *a2, uint64_t a3)
{
  if (a3 && *(a3 + 168))
  {
    malloc_type_calloc(1uLL, 0x28uLL, 0x1020040E349F4B1uLL);
    *v3 = OUTLINED_FUNCTION_41_4();
    if (a1)
    {
      v6 = CFRetain(a1);
    }

    else
    {
      v6 = 0;
    }

    *(v3 + 8) = v6;
    v7 = *a2;
    *(v3 + 32) = *(a2 + 2);
    *(v3 + 16) = v7;
    OUTLINED_FUNCTION_488();

    dispatch_async_f(v8, v9, v10);
  }
}

void onUserEvent(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_22_8();
    if (v4)
    {
      v5 = v3;
      v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10C00407EF3FF2FuLL);
      v6[3] = v2;
      v7 = *v5;
      v6[2] = *(v5 + 2);
      *v6 = v7;
      v8 = *(v2 + 168);

      dispatch_sync_f(v8, v6, onUserEventDo);
    }
  }
}

void onViewportChanged(uint64_t a1, int a2)
{
  if (a1 && *(a1 + 168))
  {
    OUTLINED_FUNCTION_6_29();
    malloc_type_calloc(1uLL, 0x28uLL, 0x10C00405BF71875uLL);
    *(v2 + 32) = OUTLINED_FUNCTION_41_4();
    *v2 = v6;
    *(v2 + 8) = v5;
    *(v2 + 16) = v4;
    *(v2 + 24) = v3;
    if (a2)
    {

      onViewportChangedDo(v2);
    }

    else
    {
      OUTLINED_FUNCTION_488();

      dispatch_async_f(v8, v9, v10);
    }
  }
}

void composeSceneDo(CGContext **a1)
{
  v2 = *a1;
  if (*(*a1 + 67) == 1 || *(v2 + 48))
  {
    v3 = *(v2 + 248);
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable && (v5 = *(ProtocolVTable + 16)) != 0 && (v6 = *(v5 + 376)) != 0 && !v6(v3, v2 + 288))
    {
      if (*(v2 + 268) == 1)
      {
        v7 = 0;
      }

      else
      {
        memset(&v49, 0, sizeof(v49));
        CurrentTime = FigCaptionRendererTriggerGetCurrentTime(*(v2 + 48), &v49);
        OUTLINED_FUNCTION_30_7(CurrentTime, v9, v10, v11, v12, v13, v14, v15, v48.value, *&v48.timescale, v48.epoch, *&v49.value);
        v7 = copyCurrentActiveCaptions(v2, &v48);
        Count = CFArrayGetCount(v7);
        if (*(v2 + 1376))
        {
          v24 = Count;
          Count = *(v2 + 1384);
          if (Count)
          {
            Count = FigCFWeakReferenceHolderCopyReferencedObject();
            if (Count)
            {
              v25 = Count;
              (*(v2 + 1376))(v24 == 0, Count);
              CFRelease(v25);
            }
          }
        }

        OUTLINED_FUNCTION_30_7(Count, v17, v18, v19, v20, v21, v22, v23, v48.value, *&v48.timescale, v48.epoch, *&v49.value);
        updateNodeTree(v2, v7, &v48);
        if (*(v2 + 268) == 3 && *(v2 + 648) > 0.0 && *(v2 + 656) > 0.0)
        {
          ensureCaptionsAreRendered(v2, *(v2 + 248));
        }
      }

      v26 = *(v2 + 248);
      FigCaptionRendererNodeProtocolGetProtocolID();
      v27 = OUTLINED_FUNCTION_38_5();
      if (!v27)
      {
        goto LABEL_40;
      }

      v28 = *(v27 + 16);
      if (!v28)
      {
        goto LABEL_40;
      }

      v29 = *(v28 + 232);
      if (!v29)
      {
        goto LABEL_40;
      }

      if (v29(v26, 1))
      {
        goto LABEL_40;
      }

      *(v2 + 608) = a1[1];
      v30 = *(v2 + 248);
      FigCaptionRendererNodeProtocolGetProtocolID();
      v31 = OUTLINED_FUNCTION_38_5();
      if (!v31)
      {
        goto LABEL_40;
      }

      v32 = *(v31 + 16);
      if (!v32)
      {
        goto LABEL_40;
      }

      v33 = *(v32 + 304);
      if (!v33 || v33(v30, v2 + 288))
      {
        goto LABEL_40;
      }

      v34 = *(v2 + 584);
      if (v34 && *(v2 + 1043))
      {
        Value = CFDictionaryGetValue(v34, *(v2 + 248));
        FigCaptionRendererOutputNodeProtocolGetProtocolID();
        v36 = OUTLINED_FUNCTION_38_5();
        if (v36)
        {
          v37 = *(v36 + 16);
          if (v37)
          {
            v38 = *(v37 + 216);
            if (v38)
            {
              v38(Value);
            }
          }
        }

        v39 = CFDictionaryGetValue(*(v2 + 584), *(v2 + 248));
        if (v39)
        {
          copyOutputNodeContentIntoCGContext(v39, a1[1]);
        }
      }

      v40 = *(v2 + 248);
      FigCaptionRendererNodeProtocolGetProtocolID();
      v41 = OUTLINED_FUNCTION_38_5();
      if (!v41 || (v42 = *(v41 + 16)) == 0 || (v43 = *(v42 + 104)) == 0 || v43(v40, v2 + 128))
      {
LABEL_40:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        FigSignalErrorAtGM();
      }

      v44 = *(v2 + 248);
      FigCaptionRendererNodeProtocolGetProtocolID();
      v45 = OUTLINED_FUNCTION_39_5();
      if (v45)
      {
        v46 = *(v45 + 16);
        if (v46)
        {
          v47 = *(v46 + 384);
          if (v47)
          {
            v47(v44, v2 + 288);
          }
        }
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      FigSignalErrorAtGM();
    }
  }

  CFRelease(*a1);
  free(a1);
}

void applyContextDefaultsToMASettings(int64x2_t *a1)
{
  if (a1[16].i32[3] == 2 && !a1[85].i8[1])
  {
    v2 = vdupq_n_s64(1uLL);
    a1[18] = v2;
    a1[19] = v2;
    a1[20] = v2;
    a1[21] = v2;
    a1[26].i64[0] = 1;
    memset_pattern16(&a1[22], &xmmword_196E76490, 0x40uLL);
    v3 = 0;
    a1[29].i64[1] = 0;
    v4 = a1 + 31;
    do
    {
      v5 = v4->i64[v3];
      if (v5)
      {
        CFRelease(v5);
        v4->i64[v3] = 0;
      }

      ++v3;
    }

    while (v3 != 8);
    a1[30].i64[1] = 0x3FF0000000000000;
  }
}

void onCaptionInput(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_22_8();
    if (v4)
    {
      v5 = OUTLINED_FUNCTION_21_7();
      v5[1] = CFRetain(v2);
      if (v3)
      {
        v6 = CFRetain(v3);
      }

      else
      {
        v6 = 0;
      }

      OUTLINED_FUNCTION_34_8(v6);
      OUTLINED_FUNCTION_39_3();

      dispatch_async_f(v7, v8, v9);
    }
  }
}

void onRegionInput(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_22_8();
    if (v4)
    {
      v5 = OUTLINED_FUNCTION_21_7();
      v5[1] = CFRetain(v2);
      if (v3)
      {
        v6 = CFRetain(v3);
      }

      else
      {
        v6 = 0;
      }

      OUTLINED_FUNCTION_34_8(v6);
      OUTLINED_FUNCTION_39_3();

      dispatch_async_f(v7, v8, v9);
    }
  }
}

void onTextHighlightArray(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_22_8();
    if (v4)
    {
      v5 = v3;
      v6 = malloc_type_calloc(1uLL, 0x10uLL, 0xE00401B06D0A3uLL);
      v6[1] = CFRetain(v2);
      if (v5)
      {
        v7 = CFRetain(v5);
      }

      else
      {
        v7 = 0;
      }

      OUTLINED_FUNCTION_34_8(v7);
      OUTLINED_FUNCTION_39_3();

      dispatch_sync_f(v8, v9, v10);
    }
  }
}

uint64_t UpdateLayoutContext(uint64_t a1)
{
  v39 = 0;
  v40 = 0;
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 64) || *(a1 + 648) == 0.0 || *(a1 + 656) == 0.0)
  {
    goto LABEL_28;
  }

  v37 = 0u;
  v38 = 0u;
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_260_0();
  FigGeometryPointMake();
  v35 = 0u;
  v36 = 0u;
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_260_0();
  FigGeometrySizeMake();
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v2 = FigGeometryRectMake();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  OUTLINED_FUNCTION_27_7(v2, &v27);
  v25 = 0u;
  v26 = 0u;
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_260_0();
  FigGeometryPointMake();
  v23 = 0u;
  v24 = 0u;
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_260_0();
  FigGeometrySizeMake();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = FigGeometryRectMake();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  OUTLINED_FUNCTION_27_7(v3, &v27);
  v4 = *(a1 + 1024);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 1024) = 0;
  }

  FigGeometryMappingCreate();
  __s1 = 0;
  v5 = *(a1 + 248);
  FigCaptionRendererBaseProtocolGetProtocolID();
  v6 = OUTLINED_FUNCTION_39_5();
  if (!v6 || (v7 = *(v6 + 16)) == 0)
  {
    v16 = 4294954508;
LABEL_20:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
LABEL_21:
    FigSignalErrorAtGM();
    goto LABEL_22;
  }

  v8 = *(v7 + 8);
  if (!v8)
  {
    v16 = 4294954514;
    goto LABEL_20;
  }

  v9 = v8(v5, &__s1);
  if (v9)
  {
    v16 = v9;
    goto LABEL_20;
  }

  if (!strcmp(__s1, "FigCaptionRendererAVFLayoutRegion"))
  {
    v10 = FigCaptionRendererAVFLayoutRegionSetLayoutContext(*(a1 + 248), *(a1 + 272), *(a1 + 280));
    if (v10)
    {
      v16 = v10;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      goto LABEL_21;
    }
  }

  if (!*(a1 + 64))
  {
LABEL_28:
    v16 = 0;
    goto LABEL_22;
  }

  FCRGetVideoPresentationBounds(*(a1 + 664), *(a1 + 672), *(a1 + 632), *(a1 + 640), *(a1 + 648), *(a1 + 656));
  OUTLINED_FUNCTION_31_7();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v16 = 4294954514;
    goto LABEL_20;
  }

  v11 = OUTLINED_FUNCTION_5_35();
  v13 = v12(v11);
  if (v13)
  {
    v16 = v13;
    goto LABEL_20;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v16 = 4294954514;
    goto LABEL_20;
  }

  v14 = OUTLINED_FUNCTION_5_35();
  v16 = v15(v14);
  if (v16)
  {
    goto LABEL_20;
  }

LABEL_22:
  if (v39)
  {
    CFRelease(v39);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  return v16;
}

uint64_t fcrSessionSetCGContextDeviceDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t fcrSessionSetCGContextDeviceDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t fcrSessionSetCGContextDeviceDo_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t fcrSessionSetLegibleOutputDeviceDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t fcrSessionSetLegibleOutputDeviceDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t fcrSessionSetLegibleOutputDeviceDo_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t SetProfileDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t SetProfileDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t SetProfileDo_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t SetProfileDo_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t fcrSessionSetCaptionArrayDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t fcrSessionSetCaptionArrayDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_376();
  return FigSignalErrorAtGM();
}

uint64_t fcrSessionSetCaptionSampleDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t fcrSessionSetCaptionSampleDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_376();
  return FigSignalErrorAtGM();
}

uint64_t fcrSessionNotificationInputSetCaptionSampleDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t fcrSessionNotificationInputSetCaptionSampleDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t fcrSessionStartDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t fcrSessionStartDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t fcrSessionStopDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t fcrSessionStopDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t fcrSessionUpdateOutputDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t getOutputNodeLayout_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t getOutputNodeLayout_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t getOutputNodeLayout_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t getOutputNodeLayout_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t getOutputNodeLayout_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t setOptionsDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererSessionSynchronizeDefaults_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererSessionSynchronizeDefaults_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererSessionSetDefaultTextStyle_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererSessionSetDefaultTextStyle_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererSessionSetDefaultTextStyle_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererSessionCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererSessionCreate_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererSessionCreate_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererSessionCreate_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererSessionCreate_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererSessionCreate_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererSessionCreate_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererSessionCreate_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t onAnimationTimerTimeout_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onDisplayUpdateEvent_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t timebaseChangedCallbackDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onTriggerEventDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t purgeOutOfRangeCaptionCache_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onUserEventDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onUserEventDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onUserEventDo_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onUserEventDo_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onViewportChangedDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onViewportChangedDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onViewportChangedDo_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onViewportChangedDo_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t onViewportChangedDo_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t updateNodeTree_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t updateNodeTree_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t updateNodeTree_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t updateNodeTree_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t updateNodeTree_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t updateNodeTree_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t updateNodeTree_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t updateNodeTree_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t updateNodeTree_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t updateNodeTree_cold_10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t updateNodeTree_cold_11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t updateNodeTree_cold_12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t updateNodeTree_cold_13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t updateNodeTree_cold_14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t updateNodeTree_cold_15()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t updateNodeTree_cold_16()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t updateNodeTree_cold_17()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t ensureCaptionsAreRendered_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t ensureCaptionsAreRendered_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t ensureCaptionsAreRendered_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t ensureCaptionsAreRendered_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t copyOutputNodeContentIntoCGContext_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t copyOutputNodeContentIntoCGContext_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t copyOutputNodeContentIntoCGContext_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t copyOutputNodeContentIntoCGContext_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t copyOutputNodeContentIntoCGContext_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t searchNodesCopyByID_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t updateTimedNode_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t renderCaptionDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t renderCaptionDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t renderCaptionDo_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t renderCaptionDo_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t layoutSceneDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_1(uint64_t a1, _BYTE *a2)
{
  v4 = OUTLINED_FUNCTION_2_47();
  *v4 = CFRetain(a1);
  v5 = *(a1 + 72);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  v4[1] = v5;
  playbackItemChangedCallbackDo(v4);
  v6 = *(a1 + 792);
  *(a1 + 632) = *(a1 + 776);
  *(a1 + 648) = v6;
  *(a1 + 664) = *(a1 + 808);
  v7 = *(a1 + 840);
  *(a1 + 680) = *(a1 + 824);
  *(a1 + 696) = v7;
  v8 = *(a1 + 904);
  *(a1 + 744) = *(a1 + 888);
  *(a1 + 760) = v8;
  v9 = *(a1 + 872);
  *(a1 + 712) = *(a1 + 856);
  *(a1 + 728) = v9;
  *a2 = 1;
  FigSimpleMutexUnlock();

  return UpdateLayoutContext(a1);
}

uint64_t onCaptionInputDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_15()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_16()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_17()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_18()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_19()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_20()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_21()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_22()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_23()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onCaptionInputDo_cold_24()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onRegionInputDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onRegionInputDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onRegionInputDo_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onTextHighlightArrayDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t onTextHighlightArrayDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

void figSubtitleRenderPipelineGetCurrentTimeFromTimebase(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  v3 = MEMORY[0x1E6960C70];
  *&a2->value = *MEMORY[0x1E6960C70];
  a2->epoch = *(v3 + 16);
  timebase = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    FigBaseObject = FigRenderPipelineGetFigBaseObject(v4);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v7 = v6(FigBaseObject, @"Timebase", *MEMORY[0x1E695E480], &timebase);
      v8 = timebase;
      if (!v7)
      {
        CMTimebaseGetTime(a2, timebase);
        v8 = timebase;
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }
  }
}

uint64_t FigCreateSubtitleRenderPipeline_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateSubtitleRenderPipeline_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateSubtitleRenderPipeline_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateSubtitleRenderPipeline_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateSubtitleRenderPipeline_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateSubtitleRenderPipeline_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateSubtitleRenderPipeline_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t subrp_sendSubtitleSampleForSampleBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t subrp_sendSubtitleSampleForSampleBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t subrp_resetOutput_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t subrp_sendEmptySubtitleSample_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t subrp_sendEmptySubtitleSample_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FPSupport_CopyCurrentlyDisplayedPixelBufferFromCAImageQueueArray(CFArrayRef theArray, uint64_t a2, void *a3)
{
  if (!a3)
  {
    FigSignalErrorAtGM();
    return 0;
  }

  *a3 = 0;
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(theArray, v7);
    v8 = CAImageQueueCopyDisplayedIOSurface();
    if (v8)
    {
      break;
    }

    if (v6 == ++v7)
    {
      return 0;
    }
  }

  v10 = v8;
  if (IOSurfaceGetProtectionOptions())
  {
    v9 = 0;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_266();
    v9 = CVPixelBufferCreateWithIOSurface(v11, v12, 0, v13);
    if (!v9)
    {
      *a3 = 0;
    }
  }

  CFRelease(v10);
  return v9;
}

uint64_t FPSupport_ShouldApplyVideoTrackMatrix(const void *a1, const void *a2)
{
  cf = 0;
  BOOLean = 0;
  v4 = CFGetAllocator(a1);
  FigBaseObject = FigPlayerGetFigBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6 || v6(FigBaseObject, @"ApplyVideoTrackMatrix", v4, &BOOLean))
  {
    v11 = 0;
    Value = 0;
  }

  else
  {
    Value = CFBooleanGetValue(BOOLean);
    if (_CFExecutableLinkedOnOrAfter())
    {
      v8 = CFGetAllocator(a2);
      v9 = FigPlaybackItemGetFigBaseObject(a2);
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(v9, @"VideoCompositor", v8, &cf);
        v11 = cf;
      }

      else
      {
        v11 = 0;
      }

      if (Value)
      {
        v12 = v11 == 0;
      }

      else
      {
        v12 = 0;
      }

      Value = v12;
    }

    else
    {
      v11 = 0;
    }
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
    v11 = cf;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return Value;
}

void FPSupport_GetDisplayRefreshInformation(CMTime *a1, CMTime *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  memset(&v21, 0, sizeof(v21));
  CMTimeMake(&v21, 1, 60);
  memset(&v20, 0, sizeof(v20));
  CMTimeMake(&v20, 1, 60);
  v6 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 8);
  v22 = *(MEMORY[0x1E6960C70] + 12);
  v23 = *(MEMORY[0x1E6960C70] + 20);
  if (MGGetBoolAnswer())
  {
    DisplayList = IOMobileFramebufferCreateDisplayList();
    v9 = DisplayList;
    if (DisplayList && (Count = CFArrayGetCount(DisplayList), Count >= 1))
    {
      v11 = Count;
      v19 = v7;
      v12 = v6;
      v13 = 0;
      while (*(CFArrayGetValueAtIndex(v9, v13) + 2))
      {
        if (v11 == ++v13)
        {
          goto LABEL_7;
        }
      }

      if (IOMobileFramebufferOpenByName())
      {
LABEL_7:
        v14 = 0;
        v7 = v19;
        if (v9)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      v15 = IOMobileFramebufferCopyProperty();
      v14 = v15;
      if (v15)
      {
        v16 = CFGetTypeID(v15);
        if (v16 == CFDictionaryGetTypeID())
        {
          if (dword_1ED4CBD70)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_11_17();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigCFDictionaryGetInt64IfPresent();
          v6 = v12;
          FigCFDictionaryGetInt64IfPresent();
          v7 = v19;
          FigCFDictionaryGetInt64IfPresent();
          if (!v9)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      FigSignalErrorAtGM();
      v6 = v12;
      v7 = v19;
      if (v9)
      {
        goto LABEL_17;
      }
    }

    else
    {
      FigSignalErrorAtGM();
      v14 = 0;
      if (v9)
      {
LABEL_17:
        CFRelease(v9);
      }
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_18:
  if (v14)
  {
    CFRelease(v14);
  }

  if (dword_1ED4CBD70)
  {
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_11_17();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    *a1 = v21;
  }

  if (a2)
  {
    *a2 = v20;
  }

  if (a3)
  {
    *a3 = v6;
    *(a3 + 8) = v7;
    *(a3 + 12) = v22;
    *(a3 + 20) = v23;
  }
}

uint64_t FPSupport_createVideoRenderPipeline(const void *a1, const void *a2, int a3, const __CFArray *a4, const __CFArray *a5, int a6, const void *a7, int a8, char a9, const void *a10, const void *a11, int a12, char a13, uint64_t a14, char a15, void *a16, CFTypeRef *a17)
{
  v37 = 0;
  memset(&v36, 0, sizeof(v36));
  memset(&v35, 0, sizeof(v35));
  FPSupport_getVideoDecodeWaterLevels(&v36, &v35, a6);
  v20 = *MEMORY[0x1E695E480];
  v21 = FPSupport_createRenderPipelineOptions(*MEMORY[0x1E695E480], a7, a8, &v36, &v35, 0, 0, 0, 0, 0, a11, 0, 0, 0, 0, a12, 1, 0, a13, a14, a15, a16, &v37);
  if (v21)
  {
    v27 = v21;
    MutableCopy = 0;
    goto LABEL_20;
  }

  MutableCopy = 0;
  v23 = MEMORY[0x1E695E4D0];
  if (a14 && a15)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      v27 = FigSignalErrorAtGM();
      goto LABEL_20;
    }

    FigCFDictionarySetValue();
    v24 = MutableCopy;
  }

  else
  {
    v24 = a2;
  }

  if (!a9)
  {
    v27 = FigVideoRenderPipelineCreateWithFigImageQueueArray(v20, a1, v24, 0, a3, a4, a5, v37, a17);
    if (v27)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v25 = CFDictionaryCreateMutableCopy(v20, 0, v37);
  CFDictionarySetValue(v25, @"NeroVideoMode", *v23);
  if (a4 && CFArrayGetCount(a4) >= 1)
  {
    v26 = FigOctaviaVideoRenderPipelineCreateWithFigImageQueueArray(v20, v25, a4, a5, a1, v24, 0, a3, a10, a17);
  }

  else
  {
    v26 = FigOctaviaVideoRenderPipelineCreate(v20, v25, a10, a17);
  }

  v27 = v26;
  if (v25)
  {
    CFRelease(v25);
  }

  if (!v27)
  {
LABEL_17:
    FigBaseObject = FigRenderPipelineGetFigBaseObject(*a17);
    v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v29)
    {
      v29(FigBaseObject, @"VideoEnqueueResetsSystemSleepTimer", *v23);
    }

    v27 = 0;
  }

LABEL_20:
  if (v37)
  {
    CFRelease(v37);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v27;
}

__CFDictionary *FPSupport_CreateNotificationPayloadForProperties(uint64_t a1, uint64_t a2, CFArrayRef theArray)
{
  v46[5] = *MEMORY[0x1E69E9840];
  value = 0;
  CFArrayGetCount(theArray);
  v45[48] = @"ExternalProtectionStatus";
  v46[0] = @"CurrentExternalProtectionStatus";
  v46[1] = @"IsNeroPlaybackActive";
  v46[2] = @"CurrentIsNeroPlaybackActive";
  v46[3] = @"DisplayingClosedCaptions";
  v46[4] = @"CurrentDisplayingClosedCaptions";
  v45[0] = @"CanPlayFastForward";
  v45[1] = @"CurrentCanPlayFastForward";
  v45[2] = @"CanPlayFastReverse";
  v45[3] = @"CurrentCanPlayFastReverse";
  v45[4] = @"CanPlayReverse";
  v45[5] = @"CurrentCanPlayReverse";
  v45[6] = @"SupportsFrameStepping";
  v45[7] = @"CurrentSupportsFrameStepping";
  v45[8] = @"PlayableTimeIntervals";
  v45[9] = @"CurrentPlayableTimeIntervals";
  v45[10] = @"SeekableTimeIntervals";
  v45[11] = @"CurrentSeekableTimeIntervals";
  v45[12] = @"EndTime";
  v45[13] = @"ItemEndTime";
  v45[14] = @"TrackIDArray";
  v45[15] = @"CurrentTrackIDArray";
  v45[16] = @"HasEnabledAudio";
  v45[17] = @"HasEnabledAudio";
  v45[18] = @"HasEnabledVideo";
  v45[19] = @"HasEnabledVideo";
  v45[20] = @"HasDiscoveredVideo";
  v45[21] = @"HasDiscoveredVideo";
  v45[22] = @"TaggedRangeMetadataArray";
  v45[23] = @"CurrentTaggedRangeMetadataArray";
  v45[24] = @"DisplayNonForcedSubtitles";
  v45[25] = @"CurrentDisplayNonForcedSubtitles";
  v45[26] = @"RecommendedTimeOffsetFromLive";
  v45[27] = @"CurrentRecommendedTimeOffsetFromLive";
  v45[28] = @"TimeOffsetFromLive";
  v45[29] = @"CurrentConfiguredTimeOffsetFromLive";
  v45[30] = @"VideoTrackMatrix";
  v45[31] = @"CurrentVideoTrackMatrix";
  v45[32] = @"SelectedMediaArray";
  v45[33] = @"CurrentSelectedMediaArray";
  v45[34] = @"EligibleForDSPBasedEnhancedDialogue";
  v45[35] = @"CurrentIsEligibleForDSPBasedEnhancedDialogue";
  v45[36] = @"IsRenderingSpatialAudio";
  v45[37] = @"RenderingSpatialAudio";
  v45[38] = @"CurrentStableVariantID";
  v45[39] = @"CurrentStableVariantID";
  v45[40] = @"CoordinationIdentifier";
  v45[41] = @"CoordinationIdentifier";
  v45[42] = @"BufferState";
  v45[43] = @"CurrentBufferState";
  v45[44] = @"AbsoluteTimeWhenReadyToPlay";
  v45[45] = @"AbsoluteTimeWhenReadyToPlay";
  v45[46] = @"MissingAudioEditList";
  v45[47] = @"MissingAudioEditList";
  if (!a1)
  {
    return 0;
  }

  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return Mutable;
  }

  v7 = v46;
  v8 = 3;
  do
  {
    v9 = *(v7 - 1);
    v10 = OUTLINED_FUNCTION_1_46();
    if (!CFArrayContainsValue(v10, v47, v9))
    {
      goto LABEL_12;
    }

    FigBaseObject = FigPlayerGetFigBaseObject(a1);
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v12)
    {
      goto LABEL_9;
    }

    v13 = v12(FigBaseObject, v9, v5, &value);
    v14 = value;
    if (!v13 && value)
    {
      CFDictionarySetValue(Mutable, *v7, value);
LABEL_9:
      v14 = value;
    }

    if (v14)
    {
      CFRelease(v14);
      value = 0;
    }

LABEL_12:
    v7 += 2;
    --v8;
  }

  while (v8);
  v15 = OUTLINED_FUNCTION_1_46();
  if (CFArrayContainsValue(v15, v48, @"CurrentRate"))
  {
    LODWORD(BOOLean.value) = 0;
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v16)
    {
      if (!v16(a1, &BOOLean))
      {
        FigCFDictionarySetFloat32();
      }
    }
  }

  if (!a2)
  {
    return Mutable;
  }

  v17 = v45;
  v18 = 24;
  while (2)
  {
    v19 = OUTLINED_FUNCTION_1_46();
    if (CFArrayContainsValue(v19, v49, v20))
    {
      v21 = *v17;
      v22 = FigPlaybackItemGetFigBaseObject(a2);
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v23)
      {
        goto LABEL_24;
      }

      v24 = v23(v22, v21, v5, &value);
      v25 = value;
      if (!v24 && value)
      {
        CFDictionarySetValue(Mutable, v17[1], value);
LABEL_24:
        v25 = value;
      }

      if (v25)
      {
        CFRelease(v25);
        value = 0;
      }
    }

    v17 += 2;
    if (--v18)
    {
      continue;
    }

    break;
  }

  v26 = OUTLINED_FUNCTION_1_46();
  if (CFArrayContainsValue(v26, v50, @"CurrentDuration"))
  {
    BOOLean = **&MEMORY[0x1E6960C70];
    v27 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v27)
    {
      v27(a2, &BOOLean);
    }

    if (BOOLean.flags)
    {
      time = BOOLean;
      v28 = CMTimeCopyAsDictionary(&time, v5);
      value = v28;
      if (v28)
      {
        CFDictionarySetValue(Mutable, @"CurrentDuration", v28);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }
      }
    }
  }

  v29 = OUTLINED_FUNCTION_1_46();
  if (CFArrayContainsValue(v29, v51, @"CurrentDimensions"))
  {
    LODWORD(BOOLean.value) = 0;
    LODWORD(time.value) = 0;
    v30 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v30)
    {
      if (!v30(a2, &BOOLean, &time))
      {
        v53.width = *&BOOLean.value;
        v53.height = *&time.value;
        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v53);
        value = DictionaryRepresentation;
        if (DictionaryRepresentation)
        {
          CFDictionarySetValue(Mutable, @"CurrentDimensions", DictionaryRepresentation);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }
        }
      }
    }
  }

  v31 = OUTLINED_FUNCTION_1_46();
  if (CFArrayContainsValue(v31, v52, @"VideoSlotArray"))
  {
    BOOLean.value = 0;
    v32 = FigPlaybackItemGetFigBaseObject(a2);
    v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v33)
    {
      v34 = v33(v32, @"HasEnabledVideo", v5, &BOOLean);
      v35 = BOOLean.value;
      if (v34)
      {
        v36 = 1;
        if (!BOOLean.value)
        {
          goto LABEL_49;
        }

LABEL_48:
        CFRelease(v35);
      }

      else
      {
        v36 = CFBooleanGetValue(BOOLean.value) == 0;
        v35 = BOOLean.value;
        if (BOOLean.value)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
      v36 = 1;
    }

LABEL_49:
    v38 = FigPlaybackItemGetFigBaseObject(a2);
    v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v39 && !v39(v38, @"VideoSlotArray", v5, &value))
    {
      v40 = value;
      if (!value)
      {
        return Mutable;
      }
    }

    else
    {
      if (v36)
      {
        return Mutable;
      }

      v40 = value;
      if (!value)
      {
        v40 = CFArrayCreate(v5, 0, 0, MEMORY[0x1E695E9C0]);
        value = v40;
        if (!v40)
        {
          return Mutable;
        }
      }
    }

    CFDictionarySetValue(Mutable, @"CurrentVideoSlotArray", v40);
    if (value)
    {
      CFRelease(value);
    }
  }

  return Mutable;
}

uint64_t FPSupport_SetTransientTimebaseForCoordinatedPlaybackSynchronization(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  timebaseOut = 0;
  clockOut = 0;
  if (!a1 || (*(a2 + 12) & 1) == 0 || (*(a3 + 12) & 1) == 0)
  {
    v9 = FigSignalErrorAtGM();
    goto LABEL_17;
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = CMAudioClockCreate(*MEMORY[0x1E695E480], &clockOut);
  if (v9)
  {
LABEL_17:
    v10 = v9;
    goto LABEL_13;
  }

  v10 = CMTimebaseCreateWithSourceClock(v8, clockOut, &timebaseOut);
  v11 = timebaseOut;
  if (!v10 && timebaseOut)
  {
    memset(&v19, 0, sizeof(v19));
    HostTimeClock = CMClockGetHostTimeClock();
    time = *a3;
    CMSyncConvertTime(&v19, &time, HostTimeClock, clockOut);
    time = *a2;
    v17 = v19;
    CMTimebaseSetRateAndAnchorTime(timebaseOut, a4, &time, &v17);
    v13 = timebaseOut;
    FigBaseObject = FigPlaybackItemGetFigBaseObject(a1);
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v15)
    {
      v10 = v15(FigBaseObject, @"TransientTimebaseForCoordinatedPlaybackSynchronization", v13);
    }

    else
    {
      v10 = 4294954514;
    }

    v11 = timebaseOut;
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_13:
  if (clockOut)
  {
    CFRelease(clockOut);
  }

  return v10;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(int a1, CFArrayRef theArray, char a3)
{
  if (!theArray || CFArrayGetCount(theArray) < 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_20();
  v6 = malloc_type_malloc(0x10uLL, v5);
  if (v6)
  {
    v7 = v6;
    *v6 = theArray;
    v6[8] = a3;
    CFRetain(theArray);
    v8 = OUTLINED_FUNCTION_0_55();

    return FigDeferredTransactionAppendChangeWithCallback(v8, v9, v10, v7, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM();
  }
}

uint64_t FPSupport_AppendDeferredTransactionChangeForAttachingFigVideoLayersToClientLayers()
{
  OUTLINED_FUNCTION_15_12();
  v2 = v1;
  if (!v3)
  {
    Count = 0;
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  Count = CFArrayGetCount(v0);
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = CFArrayGetCount(v2);
  if (Count != v5)
  {
    goto LABEL_17;
  }

LABEL_6:
  if (Count < 1)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_13_10();
  if (v6)
  {
    v7 = v6;
    *v6 = v2;
    if (v2)
    {
      CFRetain(v2);
    }

    *(v7 + 8) = v0;
    if (v0)
    {
      CFRetain(v0);
    }

    v8 = OUTLINED_FUNCTION_0_55();

    return FigDeferredTransactionAppendChangeWithCallback(v8, v9, v10, v7, v11, v12, v13);
  }

  else
  {
LABEL_17:
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM();
  }
}

uint64_t FPSupport_AppendDeferredTransactionChangeForSettingCAImageQueuesOnVideoLayers(int a1, CFArrayRef theArray, const __CFArray *a3, __int128 *a4)
{
  if (theArray)
  {
    v7 = CFArrayGetCount(theArray) < 1;
    if (!a3)
    {
      return 0;
    }
  }

  else
  {
    v7 = 1;
    if (!a3)
    {
      return 0;
    }
  }

  v8 = CFArrayGetCount(a3) < 1 || v7;
  if (v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_20();
  v10 = malloc_type_malloc(0x28uLL, v9);
  if (v10)
  {
    v11 = v10;
    *v10 = a3;
    CFRetain(a3);
    *(v11 + 8) = theArray;
    if (theArray)
    {
      CFRetain(theArray);
    }

    v12 = *a4;
    *(v11 + 32) = *(a4 + 2);
    *(v11 + 16) = v12;
    v13 = OUTLINED_FUNCTION_0_55();

    return FigDeferredTransactionAppendChangeWithCallback(v13, v14, v15, v11, v16, v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_111();

    return FigSignalErrorAtGM();
  }
}

uint64_t FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_12();
  v4 = v3;
  if (CFArrayGetCount(v5) < 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_20();
  v7 = malloc_type_malloc(0x20uLL, v6);
  if (v7)
  {
    v8 = v7;
    v9 = *v4;
    *(v7 + 3) = *(v4 + 2);
    *(v7 + 8) = v9;
    OUTLINED_FUNCTION_19_11(v7);
    v10 = OUTLINED_FUNCTION_0_55();

    return FigDeferredTransactionAppendChangeWithCallback(v10, v11, v12, v8, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM();
  }
}

uint64_t FPSupport_AppendDeferredTransactionChangeForSettingBoundsOnLayers(int a1, CFArrayRef theArray, double a3, double a4, double a5, double a6)
{
  if (!theArray || CFArrayGetCount(theArray) < 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_20();
  v11 = malloc_type_malloc(0x28uLL, v10);
  if (v11)
  {
    v12 = v11;
    v11[1] = a3;
    v11[2] = a4;
    v11[3] = a5;
    v11[4] = a6;
    OUTLINED_FUNCTION_19_11(v11);
    v13 = OUTLINED_FUNCTION_0_55();

    return FigDeferredTransactionAppendChangeWithCallback(v13, v14, v15, v12, v16, v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM();
  }
}

uint64_t FPSupport_AppendDeferredTransactionChangeForSettingTransformOnLayers(int a1, char a2, __int128 *a3, CFArrayRef theArray, double a5, double a6)
{
  if (!theArray || CFArrayGetCount(theArray) < 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_20();
  v11 = malloc_type_malloc(0x50uLL, v10);
  if (v11)
  {
    v12 = v11;
    v13 = *a3;
    v14 = a3[2];
    v11[3] = a3[1];
    v11[4] = v14;
    v11[2] = v13;
    *(v11 + 8) = a2;
    *(v11 + 2) = a5;
    *(v11 + 3) = a6;
    OUTLINED_FUNCTION_19_11(v11);
    v15 = OUTLINED_FUNCTION_0_55();

    return FigDeferredTransactionAppendChangeWithCallback(v15, v16, v17, v12, v18, v19, v20);
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t FPSupport_AppendDeferredTransactionChangeForSettingEdgeAntialiasingMaskOnLayers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_12();
  v4 = v3;
  if (CFArrayGetCount(v5) < 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_20();
  v7 = malloc_type_malloc(0x10uLL, v6);
  if (v7)
  {
    v8 = v7;
    v7[2] = v4;
    OUTLINED_FUNCTION_19_11(v7);
    v9 = OUTLINED_FUNCTION_0_55();

    return FigDeferredTransactionAppendChangeWithCallback(v9, v10, v11, v8, v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM();
  }
}

uint64_t FPSupport_AppendDeferredTransactionChangeForCallingSetContentsChangedOnLayers(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_37();
  if (CFArrayGetCount(v3) < 1)
  {
    return 0;
  }

  v4 = malloc_type_malloc(8uLL, 0x6004044C4A2DFuLL);
  if (v4)
  {
    v5 = v4;
    *v4 = v2;
    CFRetain(v2);
    v6 = OUTLINED_FUNCTION_0_55();

    return FigDeferredTransactionAppendChangeWithCallback(v6, v7, v8, v5, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM();
  }
}

uint64_t FPSupport_AppendDeferredTransactionChangeToRelease(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_37();
  v3 = malloc_type_malloc(8uLL, 0xC0040B8AA526DuLL);
  if (v3)
  {
    *v3 = v2;
    v4 = OUTLINED_FUNCTION_0_55();

    return FigDeferredTransactionAppendChangeWithCallback(v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM();
  }
}

uint64_t FPSupport_AppendDeferredTransactionChangeToReleaseOSTransaction(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_37();
  v3 = OUTLINED_FUNCTION_14_14();
  if (v3)
  {
    *v3 = v2;
    v4 = OUTLINED_FUNCTION_177();

    return FigDeferredTransactionAppendPostCommitChangeWithCallback(v4, v5, v6, v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM();
  }
}

uint64_t FPSupport_AppendDeferredTransactionChangeToClearContentsAndRemoveFromSuperLayer(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_37();
  v3 = OUTLINED_FUNCTION_14_14();
  if (v3)
  {
    v4 = v3;
    *v3 = v2;
    v5 = v2;
    v6 = OUTLINED_FUNCTION_0_55();

    return FigDeferredTransactionAppendChangeWithCallback(v6, v7, v8, v4, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_111();

    return FigSignalErrorAtGM();
  }
}

uint64_t FPSupport_AppendDeferredTransactionPostCommitChangeToReleasePlayerResourcesOnQueue(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!a3)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_12();
  v5 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
  if (v5)
  {
    v6 = v5;
    *v5 = a2;
    CFRetain(a2);
    *(v6 + 8) = v3;
    dispatch_retain(v3);
    v7 = OUTLINED_FUNCTION_177();

    return FigDeferredTransactionAppendPostCommitChangeWithCallback(v7, v8, v6, v9, v10, v11);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM();
  }
}

uint64_t FPSupport_AppendDeferredTransactionChangeForSettingImageQueueSlotsOnVideoLayers(int a1, CFArrayRef theArray, const __CFArray *a3)
{
  if (theArray)
  {
    v5 = CFArrayGetCount(theArray) < 1;
    if (!a3)
    {
      return 0;
    }
  }

  else
  {
    v5 = 1;
    if (!a3)
    {
      return 0;
    }
  }

  v6 = CFArrayGetCount(a3) < 1 || v5;
  if (v6)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_13_10();
  if (v7)
  {
    v8 = v7;
    *v7 = a3;
    CFRetain(a3);
    *(v8 + 8) = theArray;
    if (theArray)
    {
      CFRetain(theArray);
    }

    v9 = OUTLINED_FUNCTION_0_55();

    return FigDeferredTransactionAppendChangeWithCallback(v9, v10, v11, v8, v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM();
  }
}

void FPSupport_ReportStallToSymptomLog(int a1, const void *a2, const __CFDictionary *a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    if (CFEqual(a2, @"wired") || CFEqual(a2, @"lan"))
    {
      v8 = @"WiredEthernet";
    }

    else if (CFEqual(a2, @"wifi-infra") || CFEqual(a2, @"wifi-AWDL"))
    {
      v8 = @"Wifi";
    }

    else if (CFEqual(a2, @"wwan"))
    {
      v8 = @"Cellular";
    }

    else if (CFEqual(a2, @"loopback"))
    {
      v8 = @"Loopback";
    }

    else
    {
      v8 = @"Other";
    }

    v9 = @"File";
    if (a1 == 2)
    {
      v9 = @"HTTP Progressive Download";
    }

    if (a1)
    {
      v10 = v9;
    }

    else
    {
      v10 = @"HTTP Live Stream";
    }

    if (a3)
    {
      Value = CFDictionaryGetValue(a3, @"assetOption_ClientBundleIdentifier");
      if (!Value || (v12 = CFRetain(Value)) == 0)
      {
        v13 = CFDictionaryGetValue(a3, @"assetOption_ClientAuditToken");
        v12 = FigCFHTTPCopyClientProcessName(v13);
      }
    }

    else
    {
      v12 = 0;
    }

    CFDictionarySetValue(v7, @"name", @"MEDIA_PLAYBACK_STALL");
    CFDictionarySetValue(v7, @"mediaType", v10);
    CFDictionarySetValue(v7, @"transportType", v10);
    CFDictionarySetValue(v7, @"interfaceType", v8);
    if (v12)
    {
      CFDictionarySetValue(v7, @"BundleID", v12);
    }

    OUTLINED_FUNCTION_177();
    v14 = FigCFStringCreateWithJSONDictionary();
    v15 = v14;
    if (v14 && CFStringGetCStringPtr(v14, 0x8000100u))
    {
      fig_post_a_symptom_guts();
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    CFRelease(v7);
  }
}

void FPSupport_ReportAlgosScoreToSymptomLog(const void *a1, const void *a2)
{
  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v5 = Mutable;
      CFDictionarySetValue(Mutable, @"name", @"MEDIA_PLAYBACK_ALGOS");
      CFDictionarySetValue(v5, @"MEDIA_PLAYBACK_ALGOS", a2);
      if (a1)
      {
        CFDictionarySetValue(v5, @"BundleID", a1);
      }

      OUTLINED_FUNCTION_177();
      v6 = FigCFStringCreateWithJSONDictionary();
      if (v6)
      {
        v7 = v6;
        if (CFStringGetCStringPtr(v6, 0x8000100u))
        {
          fig_post_a_symptom_guts();
        }

        CFRelease(v7);
      }

      CFRelease(v5);
    }
  }
}

uint64_t FPSupport_CopyCombinedSetPropertiesErrDictionary(CFTypeRef cf, const void *a2, uint64_t *a3)
{
  if (a3)
  {
    if (cf)
    {
      if (a2)
      {
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        OUTLINED_FUNCTION_266();
        FigCFDictionaryAddEntriesToDictionaryWithRecursion();
LABEL_9:
        *a3 = MutableCopy;
        return 0;
      }
    }

    else
    {
      if (!a2)
      {
        MutableCopy = 0;
        goto LABEL_9;
      }

      cf = a2;
    }

    MutableCopy = CFRetain(cf);
    goto LABEL_9;
  }

  return 0;
}

uint64_t fpSupport_handlePlayerOrItemSetPropertiesAndCopyModification(uint64_t a1, const __CFDictionary *cf, BOOL *a3, const __CFDictionary **a4, void *a5)
{
  context[0] = a1;
  context[1] = cf;
  cfa = 0;
  v16 = 0;
  v14 = 0;
  if (cf && (v8 = cf, v9 = CFGetTypeID(cf), v9 == CFDictionaryGetTypeID()))
  {
    CFDictionaryApplyFunction(v8, fpSupport_handleSetPropertiesApplier, context);
    v10 = v16;
    if (!v16)
    {
      if (v14)
      {
        v8 = v14;
      }

      if (a3)
      {
        *a3 = FigCFDictionaryGetCount() == 0;
      }

      if (a4)
      {
        *a4 = v8;
        CFRetain(v8);
      }

      if (a5)
      {
        v11 = cfa;
        if (cfa)
        {
          v11 = CFRetain(cfa);
        }

        v10 = 0;
        *a5 = v11;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_111();
    v10 = FigSignalErrorAtGM();
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  return v10;
}

uint64_t FPSupport_HandlePlayerSetPropertiesAndForwardToSubPlayer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a5 && a2)
  {
    OUTLINED_FUNCTION_12_16();
    v14 = FPSupport_HandlePlayerSetPropertiesAndCopyModification(v7, v8, v9, v10, v11, v12, v13);
    if (v14)
    {
      return v14;
    }

    if (!*(*(CMBaseObjectGetVTable() + 16) + 112))
    {
      return 4294954514;
    }

    v15 = OUTLINED_FUNCTION_266();
    v17 = v16(v15);
  }

  else
  {
    v17 = FigSignalErrorAtGM();
  }

  v18 = v17;
  if (!v17)
  {
    FPSupport_CopyCombinedSetPropertiesErrDictionary(0, 0, a6);
    return 0;
  }

  return v18;
}

uint64_t fpSupport_handlePlayerOrItemSetPropertyAndCopyModification(uint64_t a1, CFTypeRef cf, uint64_t a3, _BYTE *a4, CFTypeRef *a5, CFTypeRef *a6)
{
  v18 = 0;
  cfa = 0;
  v17 = 0;
  if (!cf || (v12 = CFGetTypeID(cf), v12 != CFStringGetTypeID()))
  {
    OUTLINED_FUNCTION_239();
    goto LABEL_14;
  }

  v13 = fpSupport_handleSetPropertiesInternal(a1, cf, a3, &v17, &cfa, &v18);
  if (v13)
  {
LABEL_15:
    v15 = v13;
    goto LABEL_16;
  }

  if (!v17)
  {
    if (!cfa || (v14 = CFGetTypeID(cfa), v14 != CFStringGetTypeID()))
    {
      OUTLINED_FUNCTION_239();
LABEL_14:
      v13 = FigSignalErrorAtGM();
      goto LABEL_15;
    }
  }

  if (a5)
  {
    *a5 = cfa;
    cfa = 0;
  }

  if (a6)
  {
    *a6 = v18;
    v18 = 0;
  }

  v15 = 0;
  if (a4)
  {
    *a4 = v17;
  }

LABEL_16:
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v15;
}

uint64_t FPSupport_HandlePlayerSetPropertyAndForwardToSubPlayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || !a2)
  {
    return FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_5_36();
  v12 = FPSupport_HandlePlayerSetPropertyAndCopyModification(v4, v5, v6, v7, v8, v9, v10, v11);
  if (!v12)
  {
    FigPlayerGetFigBaseObject(a2);
    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      return 4294954514;
    }

    v13 = OUTLINED_FUNCTION_177();
    return v14(v13);
  }

  return v12;
}

uint64_t FPSupport_HandlePlaybackItemSetPropertyAndForwardToSubItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || !a2)
  {
    return FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_5_36();
  v12 = FPSupport_HandlePlaybackItemSetPropertyAndCopyModification(v4, v5, v6, v7, v8, v9, v10, v11);
  if (!v12)
  {
    FigPlaybackItemGetFigBaseObject(a2);
    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      return 4294954514;
    }

    v13 = OUTLINED_FUNCTION_177();
    return v14(v13);
  }

  return v12;
}

uint64_t FPSupport_HandlePlaybackItemSetPropertiesAndForwardToSubItem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a5 && a2)
  {
    OUTLINED_FUNCTION_12_16();
    v14 = FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification(v7, v8, v9, v10, v11, v12, v13);
    if (v14)
    {
      return v14;
    }

    if (!*(*(CMBaseObjectGetVTable() + 16) + 160))
    {
      return 4294954514;
    }

    v15 = OUTLINED_FUNCTION_266();
    v17 = v16(v15);
  }

  else
  {
    v17 = FigSignalErrorAtGM();
  }

  v18 = v17;
  if (!v17)
  {
    FPSupport_CopyCombinedSetPropertiesErrDictionary(0, 0, a6);
    return 0;
  }

  return v18;
}

BOOL FPSupport_CopyAndCheckClientOnAllowListForPrefDomainKey(const void *a1, int a2, uint64_t a3, CFTypeRef *a4)
{
  v4 = a1;
  cf = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
    goto LABEL_16;
  }

  if (a2 && !FigDebugIsInternalBuild())
  {
    goto LABEL_15;
  }

  v6 = *(CMBaseObjectGetVTable() + 16);
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = *(v6 + 48);
  if (!v7 || v7(v4, *MEMORY[0x1E69AFDA8], *MEMORY[0x1E695E480], &cf))
  {
    goto LABEL_15;
  }

  SInt32 = FigCFNumberGetSInt32();
  if (!SInt32)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
    goto LABEL_15;
  }

  v9 = SInt32;
  v10 = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x1E69C75E0] identifierWithPid:v9];
  v12 = [MEMORY[0x1E69C75D0] handleForIdentifier:v11 error:0];
  if (!v12)
  {
    objc_autoreleasePoolPop(v10);
LABEL_15:
    v4 = 0;
    goto LABEL_16;
  }

  v4 = [objc_msgSend(objc_msgSend(v12 "bundle")];
  objc_autoreleasePoolPop(v10);
  if (!v4)
  {
LABEL_16:
    v14 = 0;
LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v13 = FigCopyCFPreferenceAppValueOrOptionCFTypeWithDefault();
  v14 = v13;
  if (v13)
  {
    v15 = CFGetTypeID(v13);
    if (v15 != CFArrayGetTypeID())
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM();
      goto LABEL_17;
    }
  }

  v16 = FigCFArrayContainsValue() != 0;
  if (a4)
  {
    *a4 = CFRetain(v4);
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v16;
}

uint64_t FPSupport_GetAudioFormatDescriptionSpatializationEligibility(uint64_t a1, void *a2)
{
  *inSpecifierSize = 0;
  inSpecifier = 0;
  v4 = 0;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_18_7();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_18_7();
  fig_note_initialize_category_with_default_work_cf();
  if (CMAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout())
  {
    return 0;
  }

  result = 0;
  if (a2)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t FPSupport_CreateTagCollectionFromVideoFormatDescriptionExtensionsWithDefaults(const opaqueCMFormatDescription *a1, void *a2)
{
  cf = 0;
  Mutable = FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions(a1, &cf);
  if (Mutable)
  {
    goto LABEL_11;
  }

  if (!cf)
  {
    Mutable = FigTagCollectionCreateMutable();
    if (!Mutable)
    {
      goto LABEL_4;
    }

LABEL_11:
    v5 = Mutable;
    goto LABEL_7;
  }

  Mutable = FigTagCollectionCreateMutableCopy();
  if (Mutable)
  {
    goto LABEL_11;
  }

LABEL_4:
  v4 = FPSupport_AddDefaultVideoTagsToChannelDescriptionForMissingCategories(0);
  v5 = v4;
  if (a2 && !v4)
  {
    *a2 = 0;
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t FPSupport_AddDefaultVideoTagsToChannelDescriptionForMissingCategories(OpaqueCMTagCollection *a1)
{
  cf = 0;
  DefaultTagCollectionForVideo = FPSupport_CreateDefaultTagCollectionForVideo(&cf);
  if (DefaultTagCollectionForVideo || (DefaultTagCollectionForVideo = FigTagCollectionAddTagsFromCollectionWithFilterFunction(), DefaultTagCollectionForVideo))
  {
    v3 = DefaultTagCollectionForVideo;
  }

  else
  {
    if (!CMTagCollectionContainsCategory(a1, kCMTagCategory_MediaType))
    {
      CMTagCollectionAddTag(a1, *MEMORY[0x1E6960640]);
    }

    v3 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

BOOL FPSupport_FormatDescriptionIndicatesStereoVideo(const opaqueCMFormatDescription *a1)
{
  tagCollection = 0;
  tagCollectionsOut = 0;
  CMVideoFormatDescriptionCopyTagCollectionArray(a1, &tagCollectionsOut);
  if (tagCollectionsOut && CFArrayGetCount(tagCollectionsOut) > 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = !FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions(a1, &tagCollection) && tagCollection && CMTagCollectionContainsTag(tagCollection, *MEMORY[0x1E6960688]) != 0;
  }

  if (tagCollectionsOut)
  {
    CFRelease(tagCollectionsOut);
    tagCollectionsOut = 0;
  }

  if (tagCollection)
  {
    CFRelease(tagCollection);
  }

  return v2;
}

BOOL FPSupport_FormatDescriptionIndicatesFishEyeProjection(const opaqueCMFormatDescription *a1)
{
  tagCollection = 0;
  if (FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions(a1, &tagCollection))
  {
    v1 = 0;
  }

  else
  {
    if (!tagCollection)
    {
      return 0;
    }

    v1 = CMTagCollectionContainsTag(tagCollection, *MEMORY[0x1E6960668]) != 0;
  }

  if (tagCollection)
  {
    CFRelease(tagCollection);
  }

  return v1;
}

uint64_t FPSupport_CreateDefaultCoordinationIdentifierForPlaybackItem(uint64_t a1, CFStringRef *a2)
{
  cf = 0;
  v13 = 0;
  if (!a2)
  {
    OUTLINED_FUNCTION_303();
LABEL_15:
    v5 = FigSignalErrorAtGM();
    goto LABEL_16;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4(a1, &v13);
  if (v5)
  {
    goto LABEL_16;
  }

  CMBaseObject = FigAssetGetCMBaseObject(v13);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
LABEL_8:
    v10 = 4294954514;
    goto LABEL_9;
  }

  v8 = *MEMORY[0x1E695E480];
  v5 = v7(CMBaseObject, @"assetProperty_CreationURL", *MEMORY[0x1E695E480], &cf);
  if (!v5)
  {
    if (cf)
    {
      v9 = CFHash(cf);
      v10 = 0;
      *a2 = CFStringCreateWithFormat(v8, 0, @"#%lu", v9);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_303();
    goto LABEL_15;
  }

LABEL_16:
  v10 = v5;
LABEL_9:
  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

BOOL FPSupport_IsFormatDescAllowable(const opaqueCMFormatDescription *a1, const __CFArray *a2, const __CFArray *a3, const __CFArray *a4)
{
  MediaSubType = 0;
  if (!a1)
  {
    return 1;
  }

  MediaType = CMFormatDescriptionGetMediaType(a1);
  switch(MediaType)
  {
    case 0x636C6370u:
      MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
      a3 = a4;
      if (!a4)
      {
        return 1;
      }

      break;
    case 0x736F756Eu:
      RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(a1);
      if (RichestDecodableFormat)
      {
        if ((mFormatID = RichestDecodableFormat->mASBD.mFormatID, MediaSubType = mFormatID, mFormatID - 1885430579 <= 0x3D) && (OUTLINED_FUNCTION_2_48(), !v11) || mFormatID - 1902207795 <= 0x3D && (OUTLINED_FUNCTION_2_48(), !v11) || mFormatID - 1902212657 <= 0x34 && ((1 << (mFormatID - 49)) & 0x14000000000001) != 0 || mFormatID - 2053202739 <= 0x3D && (OUTLINED_FUNCTION_2_48(), !v11) || (mFormatID != 1633771875 ? (v11 = mFormatID == 1667312947) : (v11 = 1), !v11 ? (v12 = mFormatID == 1667326307) : (v12 = 1), !v12 ? (v13 = mFormatID == 1667326824) : (v13 = 1), !v13 ? (v14 = mFormatID == 1667326832) : (v14 = 1), !v14 ? (v15 = mFormatID == 1667330147) : (v15 = 1), !v15 ? (v16 = mFormatID == 1667331683) : (v16 = 1), !v16 ? (v17 = mFormatID == 1667524657) : (v17 = 1), !v17 ? (v18 = mFormatID == 1667574579) : (v18 = 1), !v18 ? (v19 = mFormatID == 1667575091) : (v19 = 1), !v19 ? (v20 = mFormatID == 1667656803) : (v20 = 1), !v20 ? (v21 = mFormatID == 1667790435) : (v21 = 1), !v21 ? (v22 = mFormatID == 1668047203) : (v22 = 1), !v22 ? (v23 = mFormatID == 1668641633) : (v23 = 1), !v23 ? (v24 = mFormatID == 1685220713) : (v24 = 1), !v24 ? (v25 = mFormatID == 1700886115) : (v25 = 1), !v25 ? (v26 = mFormatID == 1701733217) : (v26 = 1), !v26 ? (v27 = mFormatID == 1701733238) : (v27 = 1), !v27 ? (v28 = mFormatID == 1869117027) : (v28 = 1), !v28 ? (v29 = mFormatID == 1882599480) : (v29 = 1), !v29 ? (v30 = mFormatID == 1885430115) : (v30 = 1), !v30 ? (v31 = mFormatID == 1885547315) : (v31 = 1), !v31 ? (v32 = mFormatID == 1885692723) : (v32 = 1), !v32 ? (v33 = mFormatID == 1886745441) : (v33 = 1), !v33 ? (v34 = mFormatID == 1902207331) : (v34 = 1), !v34 ? (v35 = mFormatID == 1902211171) : (v35 = 1), !v35 ? (v36 = mFormatID == 1902324531) : (v36 = 1), !v36 ? (v37 = mFormatID == 1902403958) : (v37 = 1), !v37 ? (v38 = mFormatID == 1902405681) : (v38 = 1), !v38 ? (v39 = mFormatID == 1902405733) : (v39 = 1), !v39 ? (v40 = mFormatID == 1902407032) : (v40 = 1), !v40 ? (v41 = mFormatID == 1902469939) : (v41 = 1), !v41 ? (v42 = mFormatID == 1902537827) : (v42 = 1), !v42 ? (v43 = mFormatID == 1902667126) : (v43 = 1), !v43 ? (v44 = mFormatID == 1902671459) : (v44 = 1), !v44 ? (v45 = mFormatID == 1902928227) : (v45 = 1), !v45 ? (v46 = mFormatID == 1902998904) : (v46 = 1), !v46 ? (v47 = mFormatID == 1903522657) : (v47 = 1), !v47 ? (v48 = mFormatID == 1903587385) : (v48 = 1), !v48 ? (v49 = mFormatID == 2053202275) : (v49 = 1), !v49 ? (v50 = mFormatID == 2053207651) : (v50 = 1), !v50 ? (v51 = mFormatID == 2053319475) : (v51 = 1), !v51 ? (v52 = mFormatID == 2053464883) : (v52 = 1), !v52 ? (v53 = mFormatID == 2054517601) : (v53 = 1), !v53 ? (v54 = mFormatID == 2053923171) : (v54 = 1), v54))
        {
          MediaSubType = FPSupport_GetPlaintextAudioFormatForEncryptedFormatID(mFormatID);
        }
      }

      if (!a3)
      {
        return 1;
      }

      break;
    case 0x76696465u:
      CMVideoFormatDescriptionGetPlaintextMediaSubTypeAndEncryptionScheme();
      a3 = a2;
      if (!a2)
      {
        return 1;
      }

      break;
    default:
      return 1;
  }

  if (CFArrayGetCount(a3) < 1)
  {
    return 1;
  }

  return MediaSubType && FigCFArrayContainsInt32() != 0;
}