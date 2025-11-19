uint64_t bossApplyThrottleForBackground(uint64_t result)
{
  if (*(result + 80) >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = *MEMORY[0x1E695E4D0];
    v4 = *MEMORY[0x1E695E4C0];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 72), v2);
      v6 = ValueAtIndex[10];
      if (v6)
      {
        v7 = *(v1 + 135) ? v3 : v4;
        FigBaseObject = FigRenderPipelineGetFigBaseObject(v6);
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v9)
        {
          v9(FigBaseObject, @"ThrottleForBackground", v7);
        }
      }

      v10 = ValueAtIndex[18];
      if (v10)
      {
        VideoMentorSetThrottleForBackground(v10, *(v1 + 135));
      }

      result = ValueAtIndex[16];
      if (result)
      {
        result = AudioMentorSetThrottleForBackground(result, *(v1 + 135));
      }

      ++v2;
    }

    while (*(v1 + 80) > v2);
  }

  return result;
}

void bossBroadcastPrerollRateToRenderPipelines(uint64_t a1, uint64_t a2, float a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  if (a2 < FigCFRangeGetLimit())
  {
    v6 = a2;
    do
    {
      v7 = *(CFArrayGetValueAtIndex(*(a1 + 72), v6) + 10);
      if (v7)
      {
        FigBaseObject = FigRenderPipelineGetFigBaseObject(v7);
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v9)
        {
          v9(FigBaseObject, @"PrerollRate", v5);
        }
      }

      ++v6;
    }

    while (v6 < FigCFRangeGetLimit());
  }

  CFRelease(v5);
}

uint64_t FigPlaybackBossSetTrackList(uint64_t a1, uint64_t a2, int *a3, void *a4, uint64_t a5)
{
  v45 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) <= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = *(a1 + 80);
  }

  v11 = malloc_type_calloc(v10, 4uLL, 0x100004052888210uLL);
  v12 = malloc_type_calloc(v10, 8uLL, 0x2004093837F09uLL);
  v13 = malloc_type_calloc(v10, 4uLL, 0x100004052888210uLL);
  v14 = malloc_type_calloc(v10, 8uLL, 0x2004093837F09uLL);
  v15 = malloc_type_calloc(v10, 8uLL, 0x6004044C4A2DFuLL);
  v16 = v15;
  if (v11)
  {
    v17 = v12 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17 || v13 == 0 || v14 == 0 || v15 == 0)
  {
    FigPlaybackBossSetTrackList_cold_1(a1 + 64, v44);
    v38 = v44[0];
  }

  else
  {
    if (*(a1 + 80) < 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v22);
        v24 = ValueAtIndex[6];
        if (a2 < 1)
        {
LABEL_28:
          v11[v21] = v24;
          v12[v21++] = *(ValueAtIndex + 10);
        }

        else
        {
          v25 = a3;
          v26 = a4;
          v27 = a2;
          while (1)
          {
            v28 = *v25++;
            if (v24 == v28 && *(ValueAtIndex + 10) == *v26)
            {
              break;
            }

            ++v26;
            if (!--v27)
            {
              goto LABEL_28;
            }
          }
        }

        ++v22;
      }

      while (v22 < *(a1 + 80));
    }

    v40 = v11;
    if (a2 < 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = 0;
      v30 = 0;
      v41 = v21;
      do
      {
        if (*(a1 + 80) <= 0)
        {
          v37 = a3[v30];
LABEL_41:
          v13[v29] = v37;
          v16[v29] = *(a5 + 8 * v30);
          v14[v29++] = a4[v30];
        }

        else
        {
          v31 = a2;
          v32 = v14;
          v33 = v13;
          v34 = v12;
          v35 = 0;
          while (1)
          {
            v36 = CFArrayGetValueAtIndex(*(a1 + 72), v35);
            v37 = a3[v30];
            if (v36[6] == v37 && *(v36 + 10) == a4[v30])
            {
              break;
            }

            if (++v35 >= *(a1 + 80))
            {
              v12 = v34;
              v13 = v33;
              v14 = v32;
              a2 = v31;
              v21 = v41;
              goto LABEL_41;
            }
          }

          v12 = v34;
          v13 = v33;
          v14 = v32;
          a2 = v31;
          v21 = v41;
        }

        ++v30;
      }

      while (v30 != a2);
    }

    FigSimpleMutexUnlock();
    v11 = v40;
    v38 = FigPlaybackBossRemoveAndAddTracks(a1, v21, v40, v12, v29, v13, v14, v16);
  }

  free(v11);
  free(v12);
  free(v13);
  free(v14);
  free(v16);
  return v38;
}

void figPlaybackBossPrerollCompleted(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  values = 0;
  if (dword_1EAF16E78)
  {
    LODWORD(rhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 16))
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    return;
  }

  FigSimpleMutexLock();
  v5 = FigCFEqual();
  if (v5)
  {
    values = *(a1 + 504);
    *(a1 + 504) = 0;
  }

  FigSimpleMutexUnlock();
  if (!a2 && v5)
  {
    v6 = values ? CFDictionaryCreate(*MEMORY[0x1E695E480], kFigPlaybackBossParameter_PrerollToken, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]) : 0;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v6)
    {
      CFRelease(v6);
    }
  }

  FigSimpleMutexLock();
  v7 = FigCFEqual();
  if (!a2 && !v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 1;
    goto LABEL_73;
  }

  v11 = 0;
  v12 = *(a1 + 432);
  v10 = 1;
  if (v12 <= 1886155887)
  {
    if (v12 <= 1885435250)
    {
      if (v12 == 1634624887)
      {
        if (a2 == 2)
        {
          v18 = 1885435251;
        }

        else
        {
          v18 = 1919247481;
        }

        goto LABEL_52;
      }

      if (v12 == 1684365668)
      {
        goto LABEL_53;
      }

      v13 = 1768189029;
LABEL_41:
      if (v12 != v13)
      {
        goto LABEL_65;
      }

      goto LABEL_53;
    }

    if (v12 == 1885435251)
    {
      goto LABEL_43;
    }

    if (v12 == 1886151033)
    {
      goto LABEL_53;
    }

    if (v12 != 1886154860)
    {
      goto LABEL_65;
    }

    goto LABEL_36;
  }

  if (v12 <= 1886545265)
  {
    if (v12 == 1886155888)
    {
      if (dword_1EAF16E78)
      {
        LODWORD(rhs.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v11 = 0;
      v23 = 1886151033;
LABEL_63:
      *(a1 + 432) = v23;
      goto LABEL_64;
    }

    if (v12 != 1886530416)
    {
      if (v12 != 1886544244)
      {
        goto LABEL_65;
      }

      if (dword_1EAF16E78)
      {
        LODWORD(rhs.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v11 = 0;
      v23 = 2003853684;
      goto LABEL_63;
    }

LABEL_36:
    v15 = *(a1 + 440);
    v16 = *(a1 + 444);
    time = *(a1 + 800);
    lhs = *(a1 + 824);
    if (bossStartTimebaseAndAudioContext(a1, &time.value, &lhs, v15, v16))
    {
      *(a1 + 432) = 1885435251;
      v11 = dword_1EAF16E78;
      if (dword_1EAF16E78)
      {
        LODWORD(rhs.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v11 = 0;
        v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_65;
    }

    *(a1 + 432) = 1886151033;
    ++*(a1 + 720);
    ++*(a1 + 728);
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&time, HostTimeClock);
    *(a1 + 664) = time;
    v21 = *(a1 + 120);
    if (v21)
    {
      CMTimebaseGetTime(&time, v21);
      *(a1 + 696) = time;
    }

    v11 = dword_1EAF16E78;
    if (!dword_1EAF16E78)
    {
LABEL_65:
      if (a2 == 1)
      {
        *(a1 + 432) = 1684365668;
      }

      if (v11)
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    LODWORD(rhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v11 = 0;
LABEL_64:
    v10 = 1;
    goto LABEL_65;
  }

  if (v12 > 1920298605)
  {
    if (v12 == 1920298606)
    {
      goto LABEL_53;
    }

    v13 = 2003853684;
    goto LABEL_41;
  }

  if (v12 == 1886545266)
  {
    if (a2 == 2)
    {
      *(a1 + 432) = 1885435251;
LABEL_68:
      ++*(a1 + 652);
      if (*(a1 + 636))
      {
        v24 = CMClockGetHostTimeClock();
        CMClockGetTime(&lhs, v24);
        rhs = *(a1 + 624);
        CMTimeSubtract(&time, &lhs, &rhs);
        *(a1 + 616) = fabs(CMTimeGetSeconds(&time)) + *(a1 + 616);
        v25 = MEMORY[0x1E6960C70];
        *(a1 + 624) = *MEMORY[0x1E6960C70];
        *(a1 + 640) = *(v25 + 16);
      }

      goto LABEL_70;
    }

    v11 = 0;
    *(a1 + 432) = 1919247481;
    goto LABEL_65;
  }

  if (v12 != 1919247481)
  {
    goto LABEL_65;
  }

LABEL_43:
  if (a2)
  {
    v18 = 1885435251;
LABEL_52:
    *(a1 + 432) = v18;
LABEL_53:
    v11 = 1;
    goto LABEL_65;
  }

LABEL_70:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v9 = *(a1 + 784);
  v26 = *(a1 + 788);
  *(a1 + 784) = 0;
  *(a1 + 788) = 0;
  v8 = v26 != 0;
LABEL_73:
  FigSimpleMutexUnlock();
  if (!v8 || !v9)
  {
    if (v10)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  figPlaybackBossPostSeekDidComplete(a1, v9, 0);
  if ((v10 & 1) == 0)
  {
LABEL_76:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

LABEL_77:
  figPlaybackBoss_sendBecameIdleNotificationIfNowIdle(a1, 0);
  if (values)
  {
    CFRelease(values);
  }
}

void bossBumpCurrentMasterOrder(uint64_t a1)
{
  v2 = *(a1 + 544);
  ++*(a1 + 552);
  *(a1 + 544) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (a1 + 552));
  *(a1 + 556) = 0;
  v3 = *(a1 + 560);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 560) = 0;
  }

  *(a1 + 568) = 0;
  v4 = *(a1 + 576);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 576) = 0;
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t bossRemoveVideoCompositionProcessorNotificationListenersForPrerollForBoss(uint64_t result)
{
  if (*(result + 789))
  {
    v1 = result;
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListeners();
    *(v1 + 789) = 0;
  }

  return result;
}

uint64_t bossRemoveVideoCompositionProcessorNotificationListenersForSeekForBoss(uint64_t result)
{
  if (*(result + 790))
  {
    v1 = result;
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListeners();
    *(v1 + 790) = 0;
  }

  return result;
}

uint64_t FigPlaybackBossSetSeekingWaitsForVideoCompositionRendering(uint64_t a1, int a2)
{
  if (*(a1 + 476) && *(a1 + 600))
  {
    bossRemoveVideoCompositionProcessorNotificationListenersForSeekForBoss(a1);
  }

  *(a1 + 476) = a2;
  if (a2 && *(a1 + 600))
  {
    bossAddVideoCompositionProcessorNotificationListenersForSeekForBoss(a1);
  }

  return 0;
}

BOOL FigPlaybackBossCanChangeEndTimeTo(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*(a1 + 130) || *(a1 + 131) && *(a1 + 132))
  {
    v7 = 0uLL;
    v8 = 0;
    FigPlaybackBossGetDuration(a1, &v7);
    if ((*(a1 + 188) & 1) == 0 || (time1 = *(a1 + 176), *&v5.value = v7, v5.epoch = v8, (CMTimeCompare(&time1, &v5) & 0x80000000) == 0))
    {
      if ((*(a2 + 12) & 1) == 0)
      {
        return 1;
      }

      time1 = *a2;
      *&v5.value = v7;
      v5.epoch = v8;
      if ((CMTimeCompare(&time1, &v5) & 0x80000000) == 0)
      {
        return 1;
      }
    }
  }

  return result;
}

__n128 FigPlaybackBossGetEndTime@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[11];
  *a2 = result;
  a2[1].n128_u64[0] = a1[12].n128_u64[0];
  return result;
}

__n128 FigPlaybackBossGetReverseEndTime@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u64[0] = *(a1 + 312);
  result = *(a1 + 296);
  *a2 = result;
  return result;
}

uint64_t FigPlaybackBossSetAdvanceTimeForOverlappedPlayback(uint64_t a1, __int128 *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1 || *(a1 + 16) || *(a1 + 128))
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    if ((*(a2 + 3) & 0x1D) != 1)
    {
      v5 = MEMORY[0x1E6960C70];
      *a2 = *MEMORY[0x1E6960C70];
      *(a2 + 2) = *(v5 + 16);
    }

    if (dword_1EAF16E78)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = *a2;
    *(a1 + 360) = *(a2 + 2);
    *(a1 + 344) = v7;
    if (*(a1 + 432) == 1886151033)
    {
      v8 = *(a1 + 120);
      if (v8)
      {
        EffectiveRate = CMTimebaseGetEffectiveRate(v8);
      }

      else
      {
        EffectiveRate = 1.0;
      }

      bossScheduleAdvanceForOverlappedPlaybackCallbackForRate(a1, EffectiveRate);
    }

    return 0;
  }
}

uint64_t bossScheduleAdvanceForOverlappedPlaybackCallbackForRate(uint64_t a1, float a2)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(&v8, 0, sizeof(v8));
  v3 = (a1 + 344);
  if ((*(a1 + 356) & 1) == 0)
  {
    goto LABEL_2;
  }

  CMTimebaseGetTime(&v8, *(a1 + 120));
  if (a2 > 0.0)
  {
    time1 = *v3;
    time2 = v8;
    if (CMTimeCompare(&time1, &time2) <= 0)
    {
      if (dword_1EAF16E78)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }

LABEL_2:
    time1 = *v3;
    return bossScheduleAdvanceForOverlappedPlaybackCallbackForTime(a1, &time1.value);
  }

  time1 = *v3;
  time2 = v8;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    goto LABEL_2;
  }

  if (dword_1EAF16E78)
  {
LABEL_9:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_10:
  time1 = *v3;
  bossScheduleAdvanceForOverlappedPlaybackCallbackForTime(a1, &time1.value);
  v7 = MEMORY[0x1E6960C70];
  *(a1 + 376) = *MEMORY[0x1E6960C70];
  *(a1 + 392) = *(v7 + 16);
  return CMTimebaseSetTimerDispatchSourceToFireImmediately(*(a1 + 120), *(a1 + 368));
}

__n128 FigPlaybackBossGetAdvanceTimeForOverlappedPlayback@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u64[0] = *(a1 + 360);
  result = *(a1 + 344);
  *a2 = result;
  return result;
}

void bossGetContentDuration(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  dictionaryRepresentation = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = MEMORY[0x1E695E480];
  if (*(a1 + 130) || (v11 = FigFormatReaderGetFigBaseObject(*(a1 + 40)), (v12 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || (!v12(v11, @"EstimatedDuration", *v4, &dictionaryRepresentation) ? (v13 = dictionaryRepresentation == 0) : (v13 = 1), v13))
  {
    FigBaseObject = FigFormatReaderGetFigBaseObject(*(a1 + 40));
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v6)
    {
      v8 = dictionaryRepresentation;
      goto LABEL_11;
    }

    v7 = v6(FigBaseObject, @"Duration", *v4, &dictionaryRepresentation) == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = dictionaryRepresentation;
  if (!v7 || dictionaryRepresentation == 0)
  {
LABEL_11:
    v10 = MEMORY[0x1E6960C70];
    *a2 = *MEMORY[0x1E6960C70];
    *(a2 + 16) = *(v10 + 16);
    if (!v8)
    {
      return;
    }

    goto LABEL_12;
  }

  CMTimeMakeFromDictionary(a2, dictionaryRepresentation);
  v8 = dictionaryRepresentation;
  if (!dictionaryRepresentation)
  {
    return;
  }

LABEL_12:
  CFRelease(v8);
}

uint64_t FigPlaybackBossSetVolume(uint64_t a1, float a2)
{
  v12 = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v3)
  {
    return FigSignalErrorAtGM();
  }

  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(CFArrayGetValueAtIndex(*(a1 + 72), v7) + 10);
      if (v8)
      {
        FigBaseObject = FigRenderPipelineGetFigBaseObject(v8);
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v10)
        {
          v10(FigBaseObject, @"SoftwareVolume1", v3);
        }
      }

      ++v7;
    }

    while (*(a1 + 80) > v7);
  }

  FigSimpleMutexUnlock();
  CFRelease(v3);
  return 0;
}

float FigPlaybackBossGetVolume(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  valuePtr = 0.0;
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) >= 1)
  {
    v3 = 0;
    v4 = *MEMORY[0x1E695E480];
    do
    {
      v5 = *(CFArrayGetValueAtIndex(*(a1 + 72), v3) + 10);
      if (v5)
      {
        cf[0] = 0;
        FigBaseObject = FigRenderPipelineGetFigBaseObject(v5);
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v7)
        {
          v7(FigBaseObject, @"SoftwareVolume1", v4, cf);
        }

        if (cf[0])
        {
          v8 = CFGetTypeID(cf[0]);
          if (v8 == CFNumberGetTypeID())
          {
            CFNumberGetValue(cf[0], kCFNumberFloatType, &valuePtr);
            CFRelease(cf[0]);
            break;
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
          }
        }
      }

      ++v3;
    }

    while (*(a1 + 80) > v3);
  }

  FigSimpleMutexUnlock();
  return valuePtr;
}

uint64_t FigPlaybackBossSetMuted(uint64_t a1, int a2)
{
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E695E4D0];
    if (!a2)
    {
      v7 = MEMORY[0x1E695E4C0];
    }

    v8 = *v7;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v6);
      if (*(ValueAtIndex + 18) == 1936684398)
      {
        v10 = ValueAtIndex[10];
        if (v10)
        {
          FigBaseObject = FigRenderPipelineGetFigBaseObject(v10);
          v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v12)
          {
            v12(FigBaseObject, @"Muted", v8);
          }
        }
      }

      ++v6;
    }

    while (*(a1 + 80) > v6);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigPlaybackBossGetMuted(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) >= 1)
  {
    v3 = 0;
    v4 = *MEMORY[0x1E695E480];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v3);
      if (*(ValueAtIndex + 18) == 1936684398)
      {
        v6 = ValueAtIndex[10];
        if (v6)
        {
          cf[0] = 0;
          FigBaseObject = FigRenderPipelineGetFigBaseObject(v6);
          v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v8)
          {
            v8(FigBaseObject, @"Muted", v4, cf);
          }

          if (cf[0])
          {
            v9 = CFGetTypeID(cf[0]);
            if (v9 == CFBooleanGetTypeID())
            {
              Value = CFBooleanGetValue(cf[0]);
              CFRelease(cf[0]);
              goto LABEL_15;
            }

            if (cf[0])
            {
              CFRelease(cf[0]);
            }
          }
        }
      }

      ++v3;
    }

    while (*(a1 + 80) > v3);
  }

  Value = 0;
LABEL_15:
  FigSimpleMutexUnlock();
  return Value;
}

uint64_t FigPlaybackBossSnapTimeToIFrameWithRange(uint64_t a1, OpaqueCMTimebase *a2, CMTime *a3, unsigned int a4, CMTime *a5, CMTime *a6, CMTime *a7)
{
  v7 = a7;
  v11 = a3;
  v12 = a1;
  v98 = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E6960C70];
  *&v90.value = v13;
  v14 = *(MEMORY[0x1E6960C70] + 16);
  v90.epoch = v14;
  v89 = 0;
  v83 = v13;
  if (dword_1EAF16E78)
  {
    v16 = v14;
    LODWORD(v88.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v7 = a7;
    v11 = a3;
    v13 = v83;
    v14 = v16;
    v12 = a1;
  }

  if ((a5->flags & 0x1D) == 1)
  {
    *time = *&a5->value;
    *&time[16] = a5->epoch;
    time2 = *v11;
    v19 = CMTimeCompare(time, &time2);
    v13 = v83;
    if (v19 >= 1)
    {
      FigPlaybackBossSnapTimeToIFrameWithRange_cold_2(time);
      return *time;
    }
  }

  if ((a6->flags & 0x1D) == 1)
  {
    *time = *&v11->value;
    *&time[16] = v11->epoch;
    time2 = *a6;
    v20 = CMTimeCompare(time, &time2);
    v13 = v83;
    if (v20 >= 1)
    {
      FigPlaybackBossSnapTimeToIFrameWithRange_cold_1(time);
      return *time;
    }
  }

  v21 = v7;
  v22 = (a4 >> 8) & 1;
  if (a4 <= 3u)
  {
    if (a4 <= 1u)
    {
      if (a4 != 1)
      {
        time2 = *v11;
        LOBYTE(v88.value) = 0;
        LOBYTE(type.value) = 0;
        v49 = *(MEMORY[0x1E6960C78] + 48);
        v94 = *(MEMORY[0x1E6960C78] + 32);
        v95 = v49;
        v50 = *(MEMORY[0x1E6960C78] + 80);
        v96 = *(MEMORY[0x1E6960C78] + 64);
        v97 = v50;
        v51 = *(MEMORY[0x1E6960C78] + 16);
        *time = *MEMORY[0x1E6960C78];
        *&time[16] = v51;
        if (!bossScanForEditSegmentContainingTrackTime(v12, &time2, &v88, &type, time, 0, 0, 0) && (!LOBYTE(v88.value) || LOBYTE(type.value) && (time[12] & 0x1D) == 1))
        {
          if (dword_1EAF16E78)
          {
            LODWORD(v88.value) = 0;
            LOBYTE(type.value) = 0;
            v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = v88.value;
            if (os_log_type_enabled(v52, type.value))
            {
              v54 = value;
            }

            else
            {
              v54 = value & 0xFFFFFFFE;
            }

            if (v54)
            {
              *time = *&v11->value;
              *&time[16] = v11->epoch;
              Seconds = CMTimeGetSeconds(time);
              LODWORD(time2.value) = 136315394;
              *(&time2.value + 4) = "FigPlaybackBossSnapTimeToIFrameWithRange";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = Seconds;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          TimeOfNextIFrameInDirection = 0;
          v80 = *&v11->value;
          v21->epoch = v11->epoch;
          *&v21->value = v80;
          return TimeOfNextIFrameInDirection;
        }

        if (!dword_1EAF16E78)
        {
          return 0;
        }

        LODWORD(v88.value) = 0;
        LOBYTE(type.value) = 0;
        v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v61 = v88.value;
        if (os_log_type_enabled(v60, type.value))
        {
          v62 = v61;
        }

        else
        {
          v62 = v61 & 0xFFFFFFFE;
        }

        if (v62)
        {
          *time = *&v11->value;
          *&time[16] = v11->epoch;
          v63 = CMTimeGetSeconds(time);
          LODWORD(time2.value) = 136315394;
          *(&time2.value + 4) = "FigPlaybackBossSnapTimeToIFrameWithRange";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = v63;
          _os_log_send_and_compose_impl();
        }

        goto LABEL_165;
      }

      *time = *&v11->value;
      *&time[16] = v11->epoch;
      TimeOfNextIFrameInDirection = bossGetTimeOfNextIFrameInDirection(v12, time, -1, 0, (a4 >> 8) & 1, &v90, &v89, 0);
      if (v89)
      {
        v27 = v21;
        if (!dword_1EAF16E78)
        {
LABEL_76:
          v44 = *&v11->value;
          epoch = v11->epoch;
LABEL_101:
          v27->epoch = epoch;
          *&v27->value = v44;
          return TimeOfNextIFrameInDirection;
        }

LABEL_30:
        LODWORD(v88.value) = 0;
        LOBYTE(type.value) = 0;
        v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v11 = a3;
        goto LABEL_76;
      }

      if ((v90.flags & 1) == 0)
      {
        if (!dword_1EAF16E78)
        {
          return TimeOfNextIFrameInDirection;
        }

LABEL_57:
        LODWORD(v88.value) = 0;
        LOBYTE(type.value) = 0;
        v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
        goto LABEL_73;
      }

      v33 = v21;
      if ((a5->flags & 0x1D) == 1)
      {
        *time = v90;
        time2 = *a5;
        if (CMTimeCompare(time, &time2) < 0)
        {
          if (dword_1EAF16E78)
          {
            LODWORD(v88.value) = 0;
            LOBYTE(type.value) = 0;
            v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
            goto LABEL_119;
          }

          goto LABEL_120;
        }
      }

      if (!dword_1EAF16E78)
      {
        goto LABEL_121;
      }
    }

    else
    {
      if (a4 != 2)
      {
        if (a4 != 3)
        {
          return FigSignalErrorAtGM();
        }

        if (!a2)
        {
          goto LABEL_26;
        }

        CMTimebaseGetTime(time, a2);
        time2 = *v11;
        v25 = CMTimeCompare(time, &time2);
        if (v25 < 0)
        {
          v26 = 1;
        }

        else
        {
          v26 = -1;
        }

        *time = *&v11->value;
        *&time[16] = v11->epoch;
        TimeOfNextIFrameInDirection = bossGetTimeOfNextIFrameInDirection(v12, time, v26, 0, v22, &v90, &v89, 0);
        if (v89)
        {
          v27 = v21;
          if (dword_1EAF16E78)
          {
            LODWORD(v88.value) = 0;
            LOBYTE(type.value) = 0;
            v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v44 = *&a3->value;
          epoch = a3->epoch;
          goto LABEL_101;
        }

        if ((v90.flags & 1) == 0)
        {
          if (!dword_1EAF16E78)
          {
            return TimeOfNextIFrameInDirection;
          }

          goto LABEL_57;
        }

        if (v25 < 0)
        {
          if ((a6->flags & 0x1D) != 1)
          {
            goto LABEL_115;
          }

          *time = v90;
          time2 = *a6;
          if (CMTimeCompare(time, &time2) < 1)
          {
            goto LABEL_115;
          }
        }

        else
        {
          if ((a5->flags & 0x1D) != 1)
          {
            goto LABEL_115;
          }

          *time = v90;
          time2 = *a5;
          if ((CMTimeCompare(time, &time2) & 0x80000000) == 0)
          {
            goto LABEL_115;
          }
        }

        v90 = *a3;
LABEL_115:
        if (dword_1EAF16E78)
        {
          LODWORD(v88.value) = 0;
          LOBYTE(type.value) = 0;
          v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *v21 = v90;
        return TimeOfNextIFrameInDirection;
      }

      *time = *&v11->value;
      *&time[16] = v11->epoch;
      TimeOfNextIFrameInDirection = bossGetTimeOfNextIFrameInDirection(v12, time, 1, 0, (a4 >> 8) & 1, &v90, &v89, 0);
      if (v89)
      {
        v27 = v21;
        if (!dword_1EAF16E78)
        {
          goto LABEL_76;
        }

        goto LABEL_30;
      }

      if ((v90.flags & 1) == 0)
      {
        if (!dword_1EAF16E78)
        {
          return TimeOfNextIFrameInDirection;
        }

        goto LABEL_57;
      }

      v33 = v21;
      if ((a6->flags & 0x1D) == 1)
      {
        *time = v90;
        time2 = *a6;
        if (CMTimeCompare(time, &time2) >= 1)
        {
          if (!dword_1EAF16E78)
          {
            goto LABEL_120;
          }

          LODWORD(v88.value) = 0;
          LOBYTE(type.value) = 0;
          v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
          goto LABEL_119;
        }
      }

      if (!dword_1EAF16E78)
      {
        goto LABEL_121;
      }
    }

    LODWORD(v88.value) = 0;
    LOBYTE(type.value) = 0;
    v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
    goto LABEL_93;
  }

  if (a4 > 5u)
  {
    if (a4 != 6)
    {
      if (a4 != 7)
      {
        return FigSignalErrorAtGM();
      }

LABEL_26:
      v29 = 2;
LABEL_35:
      *&v88.value = v13;
      v88.epoch = v14;
      *&type.value = v13;
      type.epoch = v14;
      v86 = 0;
      *time = *&v11->value;
      *&time[16] = v11->epoch;
      bossGetTimeOfNextIFrameInDirection(v12, time, -1, v29, (a4 >> 8) & 1, &v88, &v89, &v86 + 1);
      if (v89)
      {
        if (dword_1EAF16E78)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(v84.value) = 0;
          v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *&v21->value = *&v88.value;
        v37 = v88.epoch;
LABEL_89:
        v21->epoch = v37;
        return 0;
      }

      *time = *&v11->value;
      *&time[16] = v11->epoch;
      bossGetTimeOfNextIFrameInDirection(v12, time, 1, v29, (a4 >> 8) & 1, &type, &v89, &v86);
      if (v89)
      {
        if (dword_1EAF16E78)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(v84.value) = 0;
          v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *&v21->value = *&type.value;
        v37 = type.epoch;
        goto LABEL_89;
      }

      v38 = v21;
      if ((a5->flags & 0x1D) == 1 && (v88.flags & 0x1D) == 1 && (*time = v88, time2 = *a5, CMTimeCompare(time, &time2) < 0))
      {
        v59 = *&v11->value;
        v21->epoch = v11->epoch;
        *&v21->value = v59;
        v39 = v83;
        *&v88.value = v83;
        v88.epoch = v14;
      }

      else
      {
        v39 = v83;
      }

      if ((a6->flags & 0x1D) == 1 && (type.flags & 0x1D) == 1)
      {
        *time = type;
        time2 = *a6;
        v40 = CMTimeCompare(time, &time2);
        v39 = v83;
        if (v40 >= 1)
        {
          v41 = *&v11->value;
          v21->epoch = v11->epoch;
          *&v21->value = v41;
          *&type.value = v83;
          type.epoch = v14;
        }
      }

      v42 = v86;
      if (HIBYTE(v86) | v86)
      {
        if (!HIBYTE(v86))
        {
          if (dword_1EAF16E78)
          {
            LODWORD(rhs.value) = 0;
            LOBYTE(v84.value) = 0;
            v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v42 = v86;
            v39 = v83;
            v38 = v21;
          }

          *&v88.value = v39;
          v88.epoch = v14;
        }

        if (!v42)
        {
          if (dword_1EAF16E78)
          {
            LODWORD(rhs.value) = 0;
            LOBYTE(v84.value) = 0;
            v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v39 = v83;
            v38 = v21;
          }

          *&type.value = v39;
          type.epoch = v14;
        }
      }

      v65 = type.flags & 0x1D;
      if ((v88.flags & 0x1D) == 1)
      {
        if (v65 != 1)
        {
          if (dword_1EAF16E78)
          {
            LODWORD(rhs.value) = 0;
            LOBYTE(v84.value) = 0;
            v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT);
LABEL_152:
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

LABEL_153:
          *&v38->value = *&v88.value;
          v74 = v88.epoch;
LABEL_162:
          v38->epoch = v74;
          return 0;
        }

        time2 = type;
        rhs = *v11;
        CMTimeSubtract(time, &time2, &rhs);
        rhs = *v11;
        v84 = v88;
        CMTimeSubtract(&time2, &rhs, &v84);
        if ((CMTimeCompare(time, &time2) & 0x80000000) == 0)
        {
          if (dword_1EAF16E78)
          {
            LODWORD(rhs.value) = 0;
            LOBYTE(v84.value) = 0;
            v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v67 = rhs.value;
            if (os_log_type_enabled(v66, v84.value))
            {
              v68 = v67;
            }

            else
            {
              v68 = v67 & 0xFFFFFFFE;
            }

            if (v68)
            {
              *time = *&v11->value;
              *&time[16] = v11->epoch;
              v69 = CMTimeGetSeconds(time);
              *time = v88;
              v70 = CMTimeGetSeconds(time);
              LODWORD(time2.value) = 136315650;
              *(&time2.value + 4) = "FigPlaybackBossSnapTimeToIFrameWithRange";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v69;
              HIWORD(time2.epoch) = 2048;
              v92 = v70;
              _os_log_send_and_compose_impl();
            }

            goto LABEL_152;
          }

          goto LABEL_153;
        }

        if (dword_1EAF16E78)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(v84.value) = 0;
          v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v76 = rhs.value;
          if (os_log_type_enabled(v75, v84.value))
          {
            v77 = v76;
          }

          else
          {
            v77 = v76 & 0xFFFFFFFE;
          }

          if (v77)
          {
            *time = *&v11->value;
            *&time[16] = v11->epoch;
            v78 = CMTimeGetSeconds(time);
            *time = type;
            v79 = CMTimeGetSeconds(time);
            LODWORD(time2.value) = 136315650;
            *(&time2.value + 4) = "FigPlaybackBossSnapTimeToIFrameWithRange";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = v78;
            HIWORD(time2.epoch) = 2048;
            v92 = v79;
            _os_log_send_and_compose_impl();
          }

          goto LABEL_160;
        }

        goto LABEL_161;
      }

      if (v65 == 1)
      {
        if (dword_1EAF16E78)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(v84.value) = 0;
          v71 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
LABEL_160:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

LABEL_161:
        *&v38->value = *&type.value;
        v74 = type.epoch;
        goto LABEL_162;
      }

      if (!dword_1EAF16E78)
      {
        return 0;
      }

      LODWORD(rhs.value) = 0;
      LOBYTE(v84.value) = 0;
      v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT);
LABEL_165:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return 0;
    }

    *time = *&v11->value;
    *&time[16] = v11->epoch;
    TimeOfNextIFrameInDirection = bossGetTimeOfNextIFrameInDirection(v12, time, 1, 1, (a4 >> 8) & 1, &v90, 0, 0);
    if ((v90.flags & 1) == 0)
    {
      if (dword_1EAF16E78)
      {
        goto LABEL_13;
      }

      return TimeOfNextIFrameInDirection;
    }

    if ((a6->flags & 0x1D) != 1 || (*time = v90, time2 = *a6, CMTimeCompare(time, &time2) < 1))
    {
      v33 = v21;
      if (dword_1EAF16E78)
      {
        goto LABEL_47;
      }

      goto LABEL_121;
    }

    v33 = v21;
    if (!dword_1EAF16E78)
    {
      goto LABEL_120;
    }

    LODWORD(v88.value) = 0;
    LOBYTE(type.value) = 0;
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
LABEL_119:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v11 = a3;
    goto LABEL_120;
  }

  if (a4 == 4)
  {
    v29 = 0;
    goto LABEL_35;
  }

  if (a4 != 5)
  {
    return FigSignalErrorAtGM();
  }

  *time = *&v11->value;
  *&time[16] = v11->epoch;
  TimeOfNextIFrameInDirection = bossGetTimeOfNextIFrameInDirection(v12, time, -1, 1, (a4 >> 8) & 1, &v90, 0, 0);
  if (v90.flags)
  {
    if ((a5->flags & 0x1D) != 1 || (*time = v90, time2 = *a5, (CMTimeCompare(time, &time2) & 0x80000000) == 0))
    {
      v33 = v21;
      if (dword_1EAF16E78)
      {
LABEL_47:
        LODWORD(v88.value) = 0;
        LOBYTE(type.value) = 0;
        v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
LABEL_93:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_121:
      *v33 = v90;
      return TimeOfNextIFrameInDirection;
    }

    v33 = v21;
    if (dword_1EAF16E78)
    {
      LODWORD(v88.value) = 0;
      LOBYTE(type.value) = 0;
      v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
      goto LABEL_119;
    }

LABEL_120:
    v90 = *v11;
    goto LABEL_121;
  }

  if (dword_1EAF16E78)
  {
LABEL_13:
    LODWORD(v88.value) = 0;
    LOBYTE(type.value) = 0;
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
LABEL_73:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return TimeOfNextIFrameInDirection;
}

uint64_t FigPlaybackBossSetDroppableFrameMinimumIntervalAndRequestedFrameTimestampIntervalStep(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6960C70];
  v23 = *MEMORY[0x1E6960C70];
  v24 = *(MEMORY[0x1E6960C70] + 8);
  v21 = v23;
  v22 = v24;
  if (a1 && !*(a1 + 16))
  {
    FigSimpleMutexLock();
    if (*(a1 + 80) <= 0)
    {
      FigSimpleMutexUnlock();
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v17 = *(v3 + 12);
      LOBYTE(v18) = v17;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v8);
        if (*(ValueAtIndex + 18) == 1986618469)
        {
          v11 = ValueAtIndex;
          v12 = ValueAtIndex + 316;
          time1 = *(ValueAtIndex + 316);
          time2 = *a2;
          if (CMTimeCompare(&time1, &time2))
          {
            if ((v18 & 1) == 0)
            {
              v23 = *v12;
              v24 = *(v12 + 2);
              v18 = *(v11 + 82);
            }

            v13 = *&a2->value;
            *(v12 + 2) = a2->epoch;
            *v12 = v13;
            v9 = 1;
            *(a1 + 142) = 1;
          }

          v14 = (v11 + 340);
          time1 = *(v11 + 340);
          time2 = *a3;
          if (CMTimeCompare(&time1, &time2))
          {
            if ((v17 & 1) == 0)
            {
              v21 = *v14;
              v22 = *(v11 + 87);
              v17 = *(v11 + 88);
            }

            v15 = *&a3->value;
            *(v11 + 356) = a3->epoch;
            *v14 = v15;
            v9 = 1;
            *(a1 + 142) = 1;
          }
        }

        ++v8;
      }

      while (*(a1 + 80) > v8);
      FigSimpleMutexUnlock();
      if (v9)
      {
        if (dword_1EAF16E78)
        {
          goto LABEL_23;
        }

        return 0;
      }
    }

    if (dword_1EAF16E78 >= 2)
    {
LABEL_23:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  return FigSignalErrorAtGM();
}

float FigPlaybackBossGetRate(uint64_t a1)
{
  if (a1 && !*(a1 + 16))
  {
    if (*(a1 + 128))
    {
      FigSignalErrorAtGM();
      return 1.0;
    }

    else
    {
      return *(a1 + 440);
    }
  }

  else
  {
    FigSignalErrorAtGM();
    return 0.0;
  }
}

uint64_t FigPlaybackBossSetRateAndAnchorTime(uint64_t a1, CMTime *a2, CMTime *a3, const void *a4, float a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    v16 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1 || *(a1 + 16) || *(a1 + 128))
  {
    return FigSignalErrorAtGM();
  }

  if (a5 == 0.0)
  {
    if ((a2->flags & 0x1D) == 1)
    {
      time = *a2;
      p_time = &time;
      v13 = a1;
      v14 = 2;
    }

    else
    {
      p_time = MEMORY[0x1E6960C70];
      v13 = a1;
      v14 = 1;
    }

    figPlaybackBossSetRateToZero(v13, v14, p_time);
    return 0;
  }

  else
  {
    time = *a2;
    rhs = *a3;
    return figPlaybackBossSetRateToNonZero(a1, &time, &rhs, a4, a5);
  }
}

uint64_t figPlaybackBossSetRateToNonZero(uint64_t a1, CMTime *a2, CMTime *a3, const void *a4, float a5)
{
  v82 = *MEMORY[0x1E69E9840];
  v76 = 0;
  v75 = 0;
  v9 = *(a1 + 139);
  memset(&v74, 0, sizeof(v74));
  *(a1 + 136) = 0;
  v10 = MEMORY[0x1E6960C70];
  bossScheduleReachedEndCallbackForTime(a1, MEMORY[0x1E6960C70]);
  bossScheduleAdvanceForOverlappedPlaybackCallbackForTime(a1, v10);
  FigSimpleMutexLock();
  bossConfigureRatePlan(*(a1 + 104), a1 + 400, (a1 + 412), &v75, a5);
  v11 = *(a1 + 512);
  if (v11 == 0.0)
  {
    if (dword_1EAF16E78)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v11 > 0.0 == *v75.i32 <= 0.0)
  {
    if (dword_1EAF16E78)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (*(a1 + 107))
  {
    if (dword_1EAF16E78)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (*(a1 + 108))
  {
    v12 = 1;
    if (v11 != *v75.i32 && *v75.i32 != 0.0)
    {
      if (dword_1EAF16E78)
      {
LABEL_14:
        LODWORD(rhs.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_15:
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  if (v76 != *(a1 + 448))
  {
    if (dword_1EAF16E78)
    {
LABEL_22:
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  if (v76)
  {
    v14 = vmul_f32(*(a1 + 440), vrev64_s32(v75));
    if (vmvn_s8(vceq_f32(v14, vdup_lane_s32(v14, 1))).u8[0])
    {
      if (dword_1EAF16E78)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }
  }

LABEL_24:
  if (*(a1 + 140))
  {
    if (*(a1 + 512) == *v75.i32)
    {
      goto LABEL_33;
    }

    if (!dword_1EAF16E78)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (*(a1 + 106) && fabsf(*(a1 + 512)) > *(a1 + 144) == fabsf(*v75.i32) <= *(a1 + 144))
  {
    if (!dword_1EAF16E78)
    {
LABEL_32:
      v12 = 0;
      goto LABEL_33;
    }

LABEL_31:
    LODWORD(rhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_32;
  }

LABEL_33:
  v17 = (a1 + 440);
  if (*(a1 + 449) != BYTE1(v76))
  {
    if (dword_1EAF16E78)
    {
LABEL_39:
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_40:
    v12 = 0;
    goto LABEL_41;
  }

  if (*(a1 + 449) && *v17 != *v75.i32)
  {
    if (dword_1EAF16E78)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

LABEL_41:
  if (*(a1 + 556))
  {
    if (dword_1EAF16E78)
    {
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v12 = 0;
  }

  if (*(a1 + 105) && *(a1 + 444) != *&v75.i32[1])
  {
    if (dword_1EAF16E78)
    {
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v12 = 0;
  }

  v21 = *(a1 + 512);
  v22 = *v75.i32;
  if (v21 == 0.0 && *v75.i32 < 0.0)
  {
    if (dword_1EAF16E78)
    {
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v12 = 0;
      v21 = *(a1 + 512);
      v22 = *v75.i32;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v21 > 0.0 != v22 <= 0.0)
  {
    v24 = v9;
  }

  else
  {
    v24 = 0;
  }

  if ((a2->flags & 0x1D) == 1 && (a3->flags & 0x1D) == 1 && v22 == *v17 && (time1 = *a2, time2 = *(a1 + 800), !CMTimeCompare(&time1, &time2)) && (time1 = *a3, time2 = *(a1 + 824), !CMTimeCompare(&time1, &time2)))
  {
    if (dword_1EAF16E78)
    {
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v26 = 1886530416;
  }

  else
  {
    if ((a2->flags & 0x1D) == 1)
    {
      if (dword_1EAF16E78)
      {
        LODWORD(rhs.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v24 = 0;
      v12 = 0;
    }

    v26 = 1886530416;
    if ((a3->flags & 0x1D) == 1)
    {
      v26 = 1886151033;
      if (dword_1EAF16E78)
      {
        LODWORD(rhs.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v24 = 0;
      v12 = 0;
    }
  }

  if (BYTE1(v76) && *v17 == 0.0 && *v75.i32 > 0.0 && *v75.i32 < 1.0)
  {
    if (dword_1EAF16E78)
    {
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v12 = 0;
  }

  if (*(a1 + 142))
  {
    if (dword_1EAF16E78)
    {
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v12 = 0;
  }

  if (*(a1 + 512) != *v75.i32 || *(a1 + 142))
  {
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    bossSetMentorPropertiesForRate(a1, 0, *v75.i32);
    FigSimpleMutexUnlock();
  }

  *(a1 + 142) = 0;
  if (*(a1 + 476) && (*(a1 + 492) & 1) != 0)
  {
    v31 = *(a1 + 120);
    time1 = *(a1 + 480);
    CMTimebaseSetTime(v31, &time1);
  }

  v32 = MEMORY[0x1E6960C70];
  v70 = *MEMORY[0x1E6960C70];
  *(a1 + 480) = *MEMORY[0x1E6960C70];
  v33 = *(v32 + 16);
  *(a1 + 496) = v33;
  if (!v12)
  {
    v35 = 0;
    v41 = *(a1 + 432);
    if (v41 <= 1886530415)
    {
      if (v41 > 1886151032)
      {
        v45 = 3;
        if (v41 != 1886151033)
        {
          if (v41 == 1886154860)
          {
            bossBumpCurrentMasterOrder(a1);
            FigSimpleMutexLock();
            if (*(a1 + 848))
            {
              LODWORD(rhs.value) = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            bossSetMentorModesToDoNothing(a1, 0, *(a1 + 80), 2);
            FigSimpleMutexUnlock();
            if ((*(a1 + 464) & 0x1D) == 1)
            {
              v58 = *(a1 + 120);
              time1 = *(a1 + 452);
              CMTimebaseSetTime(v58, &time1);
              *(a1 + 452) = v70;
              *(a1 + 468) = v33;
            }

            FigSimpleMutexLock();
            if (*(a1 + 848))
            {
              LODWORD(rhs.value) = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            bossResetSideQueuesAndSwitchMentorsToMainQueues(a1);
            FigSimpleMutexUnlock();
            v45 = 2;
          }

          else
          {
            v37 = 0;
            if (v41 != 1886155888)
            {
              goto LABEL_177;
            }
          }
        }

        CMTimebaseGetTime(&time1, *(a1 + 120));
        if (bossCheckTimeWithEndTimes(a1, &time1, 0, *v75.i32))
        {
          goto LABEL_162;
        }

        bossBumpCurrentMasterOrder(a1);
        FigSimpleMutexLock();
        if (v24)
        {
          if (*(a1 + 848))
          {
            LODWORD(rhs.value) = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          bossSetMentorModesToDoNothing(a1, 0, *(a1 + 80), 2);
          bossSwitchMentorsToSideQueues(a1, 0);
          FigSimpleMutexUnlock();
          CMTimebaseGetTime(&v74, *(a1 + 120));
          *v17 = v75;
          *(a1 + 448) = v76;
          if (fabsf(a5) <= *(a1 + 144))
          {
            if (a5 < 0.0)
            {
              v62 = 1;
            }

            else
            {
              v62 = 2;
            }

            time1 = v74;
            bossSnapTimeToIFrameWithRange(a1, &time1, v62, MEMORY[0x1E6960C80], MEMORY[0x1E6960C88], &v74);
          }

          time1 = v74;
          started = figPlaybackBossStartPrerollAndSetPlayState(a1, &time1, *&v75, v76, 2, 1886154860, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], a4);
          goto LABEL_175;
        }

        if (*(a1 + 848))
        {
          LODWORD(rhs.value) = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v61 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        bossSetMentorModesToDoNothing(a1, 0, *(a1 + 80), 0);
        FigSimpleMutexUnlock();
        bossStopTimebaseAndAudioContext(a1, 1, MEMORY[0x1E6960C70]);
        v68 = v75;
        *v17 = v75;
        v69 = v76;
        *(a1 + 448) = v76;
        *&time1.value = v70;
        time1.epoch = v33;
        time2 = *a2;
        rhs = *a3;
        v48 = figPlaybackBossStartPrerollAndSetPlayState(a1, &time1, v68, v69, v45, v26, &time2, &rhs.value, a4);
        goto LABEL_138;
      }

      if (v41 != 1634624887)
      {
        if (v41 == 1768189029)
        {
          goto LABEL_139;
        }

        v42 = 1885435251;
        goto LABEL_135;
      }

LABEL_136:
      CMTimebaseGetTime(&time1, *(a1 + 120));
      if (bossCheckTimeWithEndTimes(a1, &time1, 0, *v75.i32))
      {
        goto LABEL_162;
      }

      v46 = v75;
      *v17 = v75;
      v47 = v76;
      *(a1 + 448) = v76;
      *&time1.value = v70;
      time1.epoch = v33;
      time2 = *a2;
      rhs = *a3;
      v48 = figPlaybackBossStartPrerollAndSetPlayState(a1, &time1, v46, v47, 3, v26, &time2, &rhs.value, a4);
LABEL_138:
      v37 = v48;
      v35 = v48 != 0;
      goto LABEL_177;
    }

    if (v41 > 1919247480)
    {
      if (v41 == 2003853684 || v41 == 1920298606)
      {
        goto LABEL_139;
      }

      v42 = 1919247481;
    }

    else
    {
      if (v41 == 1886530416)
      {
        goto LABEL_136;
      }

      if (v41 == 1886544244)
      {
        goto LABEL_139;
      }

      v42 = 1886545266;
    }

LABEL_135:
    v37 = 0;
    if (v41 != v42)
    {
      goto LABEL_177;
    }

    goto LABEL_136;
  }

  v34 = *(a1 + 424);
  *(a1 + 424) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  v35 = 0;
  v36 = *(a1 + 432);
  if (v36 > 1886530415)
  {
    if (v36 > 1919247480)
    {
      if (v36 == 1919247481)
      {
        CMTimebaseGetTime(&time1, *(a1 + 120));
        if (bossCheckTimeWithEndTimes(a1, &time1, 0, *v75.i32))
        {
          goto LABEL_162;
        }

        *v17 = v75;
        *(a1 + 448) = v76;
        v50 = bossStartTimebaseAndAudioContext(a1, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], *(a1 + 440), *(a1 + 444));
        if (v50)
        {
          v37 = v50;
          *(a1 + 440) = 0;
          *(a1 + 432) = 1885435251;
          v35 = 1;
          goto LABEL_177;
        }

        *(a1 + 432) = 1886151033;
        ++*(a1 + 720);
        ++*(a1 + 728);
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&time1, HostTimeClock);
        *(a1 + 664) = time1;
        v57 = *(a1 + 120);
        if (v57)
        {
          CMTimebaseGetTime(&time1, v57);
          v35 = 0;
          v37 = 0;
          *(a1 + 696) = time1;
          goto LABEL_177;
        }

        goto LABEL_140;
      }

      if (v36 != 1920298606)
      {
        v37 = 0;
        if (v36 != 2003853684)
        {
          goto LABEL_177;
        }
      }
    }

    else
    {
      if (v36 == 1886530416)
      {
        goto LABEL_126;
      }

      if (v36 != 1886544244)
      {
        v37 = 0;
        if (v36 == 1886545266)
        {
          v35 = 0;
          v37 = 0;
          *v17 = v75;
          *(a1 + 448) = v76;
          *(a1 + 432) = 1886530416;
          epoch = a2->epoch;
          *(a1 + 800) = *&a2->value;
          *(a1 + 816) = epoch;
          v44 = a3->epoch;
          *(a1 + 824) = *&a3->value;
          *(a1 + 840) = v44;
        }

        goto LABEL_177;
      }
    }

LABEL_139:
    LODWORD(rhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_140:
    v35 = 0;
    v37 = 0;
    goto LABEL_177;
  }

  if (v36 > 1886151032)
  {
    if (v36 == 1886151033)
    {
      goto LABEL_119;
    }

    if (v36 != 1886154860)
    {
      v37 = 0;
      if (v36 != 1886155888)
      {
        goto LABEL_177;
      }

LABEL_119:
      if (*v75.i32 == *v17)
      {
        v37 = 0;
        *(a1 + 512) = v75.i32[0];
      }

      else
      {
        CMTimebaseGetTime(&time1, *(a1 + 120));
        if (bossCheckTimeWithEndTimes(a1, &time1, 0, *v75.i32))
        {
          goto LABEL_162;
        }

        *v17 = v75;
        *(a1 + 448) = v76;
        v51 = MEMORY[0x1E6960C70];
        v37 = bossSetPossiblyOutsourcedTimebaseRate(a1, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], *(a1 + 440), *(a1 + 444));
        ++*(a1 + 728);
        v52 = *(a1 + 120);
        if (v52)
        {
          v53 = (a1 + 696);
          if (*(a1 + 708))
          {
            CMTimebaseGetTime(&time2, v52);
            *&rhs.value = *v53;
            rhs.epoch = *(a1 + 712);
            CMTimeSubtract(&time1, &time2, &rhs);
            *(a1 + 688) = fabs(CMTimeGetSeconds(&time1)) + *(a1 + 688);
            *v53 = *v51;
            *(a1 + 712) = *(v51 + 16);
            v52 = *(a1 + 120);
          }

          CMTimebaseGetTime(&time1, v52);
          *v53 = *&time1.value;
          *(a1 + 712) = time1.epoch;
        }
      }

      bossScheduleReachedEndCallbackForRate(a1, *v75.i32);
      bossScheduleAdvanceForOverlappedPlaybackCallbackForRate(a1, *v75.i32);
LABEL_176:
      v35 = 0;
      goto LABEL_177;
    }

LABEL_126:
    v35 = 0;
    v37 = 0;
    *v17 = v75;
    *(a1 + 448) = v76;
    goto LABEL_177;
  }

  if (v36 == 1634624887)
  {
    goto LABEL_100;
  }

  if (v36 == 1768189029)
  {
    goto LABEL_139;
  }

  v37 = 0;
  if (v36 == 1885435251)
  {
LABEL_100:
    CMTimebaseGetTime(&time1, *(a1 + 120));
    if (!bossCheckTimeWithEndTimes(a1, &time1, 0, *v75.i32))
    {
      v38 = v75;
      *v17 = v75;
      v39 = v76;
      *(a1 + 448) = v76;
      *&time1.value = v70;
      time1.epoch = v33;
      started = figPlaybackBossStartPrerollAndSetPlayState(a1, &time1, v38, v39, 3, 1886530416, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], a4);
LABEL_175:
      v37 = started;
      goto LABEL_176;
    }

LABEL_162:
    FigSimpleMutexUnlock();
    return 0;
  }

LABEL_177:
  if (dword_1EAF16E78)
  {
    LODWORD(rhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = rhs.value;
    if (os_log_type_enabled(v63, type))
    {
      v65 = value;
    }

    else
    {
      v65 = value & 0xFFFFFFFE;
    }

    if (v65)
    {
      StateName = getStateName(*(a1 + 432));
      LODWORD(time2.value) = 136315906;
      *(&time2.value + 4) = "figPlaybackBossSetRateToNonZero";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = a1;
      HIWORD(time2.epoch) = 2082;
      v78 = a1 + 850;
      v79 = 2082;
      v80 = StateName;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
  if (v35)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  return v37;
}

uint64_t FigPlaybackBossStartPreroll(uint64_t a1, const __CFDictionary *a2, const void *a3, float a4)
{
  v5 = a2;
  v26 = *MEMORY[0x1E69E9840];
  values = a2;
  v23 = 0;
  v22 = 0;
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1 || *(a1 + 16) || *(a1 + 128) || a4 == 0.0)
  {
    return FigSignalErrorAtGM();
  }

  bossConfigureRatePlan(*(a1 + 104), a1 + 400, (a1 + 412), &v22, a4);
  FigSimpleMutexLock();
  v11 = *(a1 + 504);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 504) = 0;
  }

  v9 = 0;
  v12 = *(a1 + 432);
  if (v12 <= 1886530415)
  {
    if (v12 <= 1886151032)
    {
      if (v12 == 1634624887)
      {
        goto LABEL_16;
      }

      if (v12 != 1768189029)
      {
        if (v12 == 1885435251)
        {
LABEL_16:
          FigSimpleMutexLock();
          if (!*(a1 + 848))
          {
LABEL_52:
            bossSetMentorPropertiesForRate(a1, 0, *&v22);
            FigSimpleMutexUnlock();
            v21 = *(a1 + 504);
            *(a1 + 504) = v5;
            if (v5)
            {
              CFRetain(v5);
            }

            if (v21)
            {
              CFRelease(v21);
            }

            v25 = **&MEMORY[0x1E6960C70];
            started = figPlaybackBossStartPrerollAndSetPlayState(a1, &v25, v22, v23, 3, 1886545266, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], a3);
            goto LABEL_57;
          }

LABEL_51:
          v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_52;
        }

LABEL_58:
        FigSimpleMutexUnlock();
        return v9;
      }

LABEL_34:
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v9 = 0;
      goto LABEL_58;
    }

    if (v12 == 1886151033 || v12 == 1886154860)
    {
      goto LABEL_32;
    }

    v13 = 1886155888;
    goto LABEL_31;
  }

  if (v12 <= 1919247480)
  {
    if (v12 != 1886530416 && v12 != 1886544244)
    {
      if (v12 != 1886545266)
      {
        goto LABEL_58;
      }

      if (*(a1 + 512) != *&v22)
      {
        if (dword_1EAF16E78)
        {
          v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigSimpleMutexLock();
        if (!*(a1 + 848))
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }

      if (!dword_1EAF16E78)
      {
LABEL_33:
        started = FigSignalErrorAtGM();
LABEL_57:
        v9 = started;
        goto LABEL_58;
      }
    }

LABEL_32:
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_33;
  }

  if (v12 != 1919247481)
  {
    if (v12 == 1920298606)
    {
      goto LABEL_34;
    }

    v13 = 2003853684;
LABEL_31:
    if (v12 != v13)
    {
      goto LABEL_58;
    }

    goto LABEL_32;
  }

  if (*(a1 + 512) != *&v22)
  {
    if (dword_1EAF16E78)
    {
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexLock();
    if (!*(a1 + 848))
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  if (dword_1EAF16E78)
  {
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
  if (v5)
  {
    v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigPlaybackBossParameter_PrerollToken, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

void bossSetMentorPropertiesForRate(uint64_t a1, uint64_t a2, float a3)
{
  valuePtr[0] = a3;
  v5 = *MEMORY[0x1E695E480];
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, valuePtr);
  if (a2 < FigCFRangeGetLimit())
  {
    v7 = 0;
    v8 = fabsf(a3);
    v9 = a2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v9);
      if (*(ValueAtIndex + 27))
      {
        v11 = ValueAtIndex;
        memset(&v26, 0, sizeof(v26));
        time = *(ValueAtIndex + 372);
        CMTimeMultiplyByFloat64(&v26, &time, v8);
        time = v26;
        v12 = CMTimeCopyAsDictionary(&time, v5);
        memset(&time, 0, sizeof(time));
        v24 = *(v11 + 396);
        CMTimeMultiplyByFloat64(&time, &v24, v8);
        v24 = time;
        v13 = CMTimeCopyAsDictionary(&v24, v5);
        v14 = 0;
        if ((*(v11 + 82) & 0x1D) == 1)
        {
          memset(&v24, 0, sizeof(v24));
          v23 = *(v11 + 316);
          CMTimeMultiplyByFloat64(&v24, &v23, v8);
          v23 = v24;
          v14 = CMTimeCopyAsDictionary(&v23, v5);
        }

        v15 = v6;
        if ((*(v11 + 88) & 0x1D) == 1)
        {
          memset(&v24, 0, sizeof(v24));
          v23 = *(v11 + 340);
          CMTimeMultiplyByFloat64(&v24, &v23, v8);
          v23 = v24;
          v16 = CMTimeCopyAsDictionary(&v23, v5);
        }

        else
        {
          v16 = 0;
        }

        v17 = EditMentorSetProperty(*(v11 + 27), @"IFrameMinimumInterval", v12);
        if (!v7)
        {
          v7 = v17;
        }

        if (v12)
        {
          CFRelease(v12);
        }

        v18 = EditMentorSetProperty(*(v11 + 27), @"IFrameAverageInterval", v13);
        if (!v7)
        {
          v7 = v18;
        }

        if (v13)
        {
          CFRelease(v13);
        }

        v19 = EditMentorSetProperty(*(v11 + 27), @"DroppableFrameMinimumInterval", v14);
        if (!v7)
        {
          v7 = v19;
        }

        if (v14)
        {
          CFRelease(v14);
        }

        v20 = EditMentorSetProperty(*(v11 + 27), @"RequestedFrameTimestampIntervalStep", v16);
        if (!v7)
        {
          v7 = v20;
        }

        if (v16)
        {
          CFRelease(v16);
        }

        v6 = v15;
        v21 = EditMentorSetProperty(*(v11 + 27), @"PlayRate", v15);
        if (!v7)
        {
          v7 = v21;
        }
      }

      ++v9;
    }

    while (v9 < FigCFRangeGetLimit());
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t FigPlaybackBossGoQuiescent(uint64_t a1)
{
  if (a1 && !*(a1 + 16))
  {
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    figPlaybackBossTeardownTracks(a1, 0);
    if (dword_1EAF16E78)
    {
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(a1 + 848) = 1;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t FigPlaybackBossPrerollAndScheduleGaplessStart(uint64_t a1, const void *a2, const void *a3, float a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v41 = 0;
  target = 0;
  v40 = 0;
  FigSimpleMutexLock();
  bossConfigureRatePlan(*(a1 + 104), a1 + 400, (a1 + 412), &v40, a4);
  v8 = *MEMORY[0x1E695E480];
  v9 = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &target);
  if (v9)
  {
    goto LABEL_27;
  }

  CMSetAttachment(target, *MEMORY[0x1E6960550], a2, 0);
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = (a1 + 80);
  if (*(a1 + 80) <= 0)
  {
    FigSimpleMutexUnlock();
LABEL_26:
    v9 = FigSignalErrorAtGM();
LABEL_27:
    v29 = v9;
    goto LABEL_28;
  }

  v37 = v8;
  v36 = a3;
  v12 = 0;
  v38 = 0;
  v13 = a2;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v12);
    v15 = ValueAtIndex[10];
    if (v15)
    {
      v16 = ValueAtIndex;
      v17 = *(a1 + 120);
      CMTimebaseGetTime(&v42, v17);
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v18)
      {
        time = v42;
        v19 = v18(v15, v17, &time, v13, 0, 0);
      }

      else
      {
        v19 = -12782;
      }

      if (dword_1EAF16E78)
      {
        v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v11 = (a1 + 80);
      }

      if (v19)
      {
        time.value = 0;
        FigBaseObject = FigRenderPipelineGetFigBaseObject(v16[10]);
        v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v22)
        {
          v22(FigBaseObject, @"Timebase", v37, &time);
        }

        value = time.value;
        if (time.value)
        {
          goto LABEL_19;
        }

        v24 = v16[10];
        v25 = *(a1 + 120);
        v26 = FigRenderPipelineGetFigBaseObject(v24);
        v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v27)
        {
          v27(v26, @"Timebase", v25);
        }

        value = time.value;
        if (time.value)
        {
LABEL_19:
          CFRelease(value);
        }
      }

      else
      {
        v38 = 1;
      }
    }

    ++v12;
  }

  while (*v11 > v12);
  FigSimpleMutexUnlock();
  if (!v38)
  {
    goto LABEL_26;
  }

  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*v11 >= 1)
  {
    FigPlaybackBossPrerollAndScheduleGaplessStart_cold_1((a1 + 72), &target, v11);
  }

  v31 = v40;
  *(a1 + 440) = v40;
  v32 = v41;
  *(a1 + 448) = v41;
  ++*(a1 + 648);
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&time, HostTimeClock);
  *(a1 + 624) = time;
  *(a1 + 432) = 1886544244;
  *(a1 + 512) = v31;
  bossBroadcastPrerollRateToRenderPipelines(a1, 0, *&v31);
  bossBumpCurrentMasterOrder(a1);
  v34 = *(a1 + 80);
  CMTimebaseGetTime(&time, *(a1 + 120));
  v29 = bossSetMentorModesForTimeAndRate(a1, 0, v34, &time, v31, v32, 1, 0, 0);
  FigSimpleMutexUnlock();
  if (!v29)
  {
    v35 = *(a1 + 424);
    *(a1 + 424) = v36;
    if (v36)
    {
      CFRetain(v36);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    bossScheduleReachedEndCallbackForRate(a1, *(a1 + 440));
    bossScheduleAdvanceForOverlappedPlaybackCallbackForRate(a1, *(a1 + 440));
    v29 = 0;
  }

LABEL_28:
  FigSimpleMutexUnlock();
  if (target)
  {
    CFRelease(target);
  }

  return v29;
}

uint64_t bossSnapTimeToIFrameWithRange(uint64_t a1, CMTime *a2, unsigned int a3, CMTime *a4, CMTime *a5, uint64_t a6)
{
  v32 = *MEMORY[0x1E69E9840];
  value = *MEMORY[0x1E6960C70];
  v24 = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v11 = *(MEMORY[0x1E6960C70] + 16);
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    LODWORD(time.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) < 1)
  {
    v19 = 1;
  }

  else
  {
    v13 = 0;
    v22 = 0;
    epoch = v11;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v13);
      if (*(ValueAtIndex + 18) == 1986618469)
      {
        v15 = ValueAtIndex;
        *&v29.value = *MEMORY[0x1E6960C70];
        v29.epoch = v11;
        v16 = ValueAtIndex[4];
        v17 = *(a1 + 120);
        lhs = *a2;
        time = *a4;
        type = *a5;
        if (!FigPlaybackBossSnapTimeToIFrameWithRange(v16, v17, &lhs, a3, &time, &type, &v29))
        {
          flags = v29.flags;
          if ((v29.flags & 0x1D) == 1)
          {
            if ((v24 & 0x1D) != 1 || (lhs.value = value, lhs.timescale = timescale, lhs.flags = v24, lhs.epoch = epoch, type = *a2, CMTimeSubtract(&time, &lhs, &type), CMTimeAbsoluteValue(&lhs, &time), time = v29, rhs = *a2, CMTimeSubtract(&type, &time, &rhs), CMTimeAbsoluteValue(&time, &type), CMTimeCompare(&lhs, &time) >= 1))
            {
              value = v29.value;
              timescale = v29.timescale;
              v22 = v15;
              epoch = v29.epoch;
              v24 = flags;
            }
          }
        }
      }

      ++v13;
    }

    while (*(a1 + 80) > v13);
    v11 = epoch;
    v19 = v22 == 0;
  }

  result = FigSimpleMutexUnlock();
  if (a6)
  {
    if (!v19)
    {
      *a6 = value;
      *(a6 + 8) = timescale;
      *(a6 + 12) = v24;
      *(a6 + 16) = v11;
    }
  }

  return result;
}

uint64_t bossResetSideQueuesAndSwitchMentorsToMainQueues(uint64_t result)
{
  if (*(result + 80) >= 1)
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = *(CFArrayGetValueAtIndex(*(v1 + 72), v2) + 12);
      VTable = CMBaseObjectGetVTable();
      v5 = *(VTable + 16);
      result = VTable + 16;
      v6 = *(v5 + 96);
      if (v6)
      {
        result = v6(v3);
      }

      ++v2;
    }

    while (v2 < *(v1 + 80));
  }

  return result;
}

uint64_t FigPlaybackBossInterruptQueueing(uint64_t a1)
{
  if (!a1 || *(a1 + 16) || *(a1 + 128))
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    figPlaybackBossPrerollCompleted(a1, 2);
    FigSimpleMutexLock();
    bossBumpCurrentMasterOrder(a1);
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    bossSetMentorModesToDoNothing(a1, 0, *(a1 + 80), 1);
    bossBumpCurrentMasterOrder(a1);
    bossSetMentorModesToDoNothing(a1, 0, *(a1 + 80), 2);
    FigSimpleMutexUnlock();
    FigSimpleMutexUnlock();
    return 0;
  }
}

uint64_t FigPlaybackBossStepByCount(uint64_t a1, int a2, const void *a3)
{
  v126 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E6960C70];
  v116 = v6;
  v117 = *(MEMORY[0x1E6960C70] + 8);
  v114 = v6;
  v83 = v117;
  v115 = v117;
  if (dword_1EAF16E78)
  {
    LODWORD(rhs.start.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    goto LABEL_5;
  }

  if (*(a1 + 16))
  {
    goto LABEL_5;
  }

  v11 = *(a1 + 432);
  if (v11 != 1885435251 && v11 != 1886545266 && v11 != 1919247481)
  {
    goto LABEL_5;
  }

  if (!a2)
  {
    return 0;
  }

  CMTimebaseGetTime(&time1.start, *(a1 + 120));
  value = time1.start.value;
  flags = time1.start.flags;
  timescale = time1.start.timescale;
  if ((time1.start.flags & 0x1D) != 1 || (epoch = time1.start.epoch, (v13 = malloc_type_calloc(*(a1 + 80), 8uLL, 0x2004093837F09uLL)) == 0))
  {
LABEL_5:
    PresentationTimeAfterSampleCursorStepping = FigSignalErrorAtGM();
    v9 = 0;
    goto LABEL_6;
  }

  v66 = v13;
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    LODWORD(rhs.start.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v61 = flags;
  v64 = a2;
  v60 = a3;
  v70 = *(MEMORY[0x1E6960C70] + 12);
  v15 = *(MEMORY[0x1E6960C70] + 16);
  if (*(a1 + 80) < 1)
  {
    v17 = 0;
    v9 = v66;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v9 = v66;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v16);
      if (*(ValueAtIndex + 89))
      {
        v19 = ValueAtIndex[18];
        v20 = v19 == 1635088502 || v19 == 1986618469;
        if (v20 || v19 == 1935893870)
        {
          v66[v17++] = ValueAtIndex;
        }
      }

      ++v16;
    }

    while (*(a1 + 80) > v16);
  }

  if (a2 >= 0)
  {
    v22 = a2;
  }

  else
  {
    v22 = -a2;
  }

  if (v17 > 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  v110 = value;
  v111 = timescale;
  v82 = *MEMORY[0x1E6960C70];
  v87 = *MEMORY[0x1E6960C70];
  v88 = v15;
  v67 = v23;
  if (a2 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = -v23;
  }

  FigPlaybackBossGetDuration(a1, &v87);
  v63 = 0;
  v25 = (v24 >> 31) | 1;
  v26 = v61;
  v27 = epoch;
  v80 = v17;
  v65 = a1;
  v69 = v6;
  while (2)
  {
    v114 = v6;
    v115 = v83;
    if (v80 < 1)
    {
      v71 = v15;
      v73 = v70;
      goto LABEL_107;
    }

    v28 = 0;
    v72 = v22;
    v73 = v70;
    v71 = v15;
    v81 = v26;
    v68 = v27;
    do
    {
      v108 = v6;
      v109 = v83;
      v29 = v9[v28];
      v85 = v87;
      v86 = v88;
      v122 = v6;
      v123 = v83;
      v102 = 0;
      v30 = *(MEMORY[0x1E6960C78] + 48);
      *&rhs.duration.timescale = *(MEMORY[0x1E6960C78] + 32);
      *&v101.start.value = v30;
      v31 = *(MEMORY[0x1E6960C78] + 80);
      *&v101.start.epoch = *(MEMORY[0x1E6960C78] + 64);
      *&v101.duration.timescale = v31;
      v32 = *(MEMORY[0x1E6960C78] + 16);
      *&rhs.start.value = *MEMORY[0x1E6960C78];
      *&rhs.start.epoch = v32;
      *&v99.value = v82;
      v99.epoch = v15;
      v97 = v31;
      *&v98.value = v82;
      v98.epoch = v15;
      v78 = v30;
      v79 = *&rhs.duration.timescale;
      v94 = *&rhs.duration.timescale;
      v95 = v30;
      v76 = v31;
      v77 = *&v101.start.epoch;
      v96 = *&v101.start.epoch;
      v74 = v32;
      v75 = *&rhs.start.value;
      *type = *&rhs.start.value;
      v93 = v32;
      v84 = v29;
      v33 = *(v29 + 32);
      time1.start.value = v110;
      *&time1.start.timescale = __PAIR64__(v26, v111);
      time1.start.epoch = v27;
      v34 = bossScanForEditSegmentContainingTrackTime(v33, &time1, &v102 + 1, &v102, &rhs, v25, &v98, type);
      if (v34)
      {
        PresentationTimeAfterSampleCursorStepping = v34;
LABEL_105:
        v50 = v70;
        v51 = v15;
        goto LABEL_91;
      }

      if (!HIBYTE(v102))
      {
        v52 = *(v84 + 48);
        time1.start.value = v110;
        *&time1.start.timescale = __PAIR64__(v26, v111);
        time1.start.epoch = v27;
        PresentationTimeAfterSampleCursorStepping = bossGetPresentationTimeAfterSampleCursorStepping(v52, &time1.start, v24, 0, &v99);
        if (!PresentationTimeAfterSampleCursorStepping)
        {
          v122 = v99.value;
          v50 = v99.flags;
          v123 = v99.timescale;
          v51 = v99.epoch;
          goto LABEL_90;
        }

        goto LABEL_105;
      }

      if (!v102)
      {
        PresentationTimeAfterSampleCursorStepping = 0;
        v50 = v70;
        v51 = v15;
        goto LABEL_90;
      }

      *&v91.value = v82;
      v91.epoch = v15;
      v120 = v110;
      v35 = v26;
      v121 = v111;
      v36 = v25 * v24;
      v37 = v25 * v24;
      v38 = v24;
      while (1)
      {
        if ((rhs.start.flags & 0x1D) != 1)
        {
          *&time1.start.value = v85;
          time1.start.epoch = v86;
          range.start.value = v120;
          range.start.timescale = v121;
          range.start.flags = v35;
          range.start.epoch = v27;
          v105 = v98;
          bossGetPresentationTimeAfterSteppingInEmptyEditSegment(&time1.start, &range.start, v38, &v105, &v91);
          v39 = v91.flags;
          if ((v91.flags & 0x1D) != 1)
          {
            PresentationTimeAfterSampleCursorStepping = 0;
            goto LABEL_55;
          }

          goto LABEL_53;
        }

        v40 = *(v84 + 48);
        time1 = rhs;
        v113 = v101;
        range.start.value = v120;
        range.start.timescale = v121;
        range.start.flags = v35;
        range.start.epoch = v27;
        PresentationTimeAfterSteppingInNormalEditSegment = bossGetPresentationTimeAfterSteppingInNormalEditSegment(v40, &time1, &range, v38, 1, &v91);
        PresentationTimeAfterSampleCursorStepping = 4294954456;
        if (PresentationTimeAfterSteppingInNormalEditSegment == -12840)
        {
          goto LABEL_55;
        }

        v39 = v91.flags;
        if ((v91.flags & 0x1D) != 1)
        {
          PresentationTimeAfterSampleCursorStepping = PresentationTimeAfterSteppingInNormalEditSegment;
LABEL_55:
          if (v36 > 1)
          {
            v36 = 1;
            v38 = (v24 >> 31) | 1;
            if (PresentationTimeAfterSampleCursorStepping)
            {
              goto LABEL_84;
            }

            goto LABEL_57;
          }

          v91.epoch = v15;
          v42 = v101.start.value;
          v90 = *&v101.start.timescale;
          *&v91.value = v82;
          duration = v101.duration;
          v107 = 0;
          *&v105.value = v82;
          v105.epoch = v15;
          *&v104.value = v82;
          v104.epoch = v15;
          *&time1.duration.timescale = v79;
          *&v113.start.value = v78;
          *&v113.start.epoch = v77;
          *&v113.duration.timescale = v76;
          *&time1.start.value = v75;
          *&time1.start.epoch = v74;
          if (v24 < 0)
          {
            v106 = *&v101.start.timescale;
            v44 = -1;
            v43 = v101.start.value;
          }

          else
          {
            range = v101;
            CMTimeRangeGetEnd(&time2, &range);
            v43 = time2.value;
            v106 = *&time2.timescale;
            v44 = 1;
          }

          v45 = *(v84 + 32);
          range.start.value = v43 + v44;
          *&range.start.timescale = v106;
          v46 = bossScanForEditSegmentContainingTrackTime(v45, &range, &v107 + 1, &v107, &time1, v44, &v104, 0);
          if (!v46)
          {
            PresentationTimeAfterSampleCursorStepping = 4294954456;
            if (!HIBYTE(v107))
            {
              goto LABEL_80;
            }

            if (!v107)
            {
              goto LABEL_80;
            }

            range.start.value = v42;
            *&range.start.timescale = v90;
            time2 = v113.start;
            if (!CMTimeCompare(&range.start, &time2))
            {
              range.start = duration;
              time2 = v113.duration;
              if (!CMTimeCompare(&range.start, &time2))
              {
                goto LABEL_80;
              }
            }

            if (v24 < 0)
            {
              range = v113;
              CMTimeRangeGetEnd(&time2, &range);
              v47 = time2.value;
              v48 = *&time2.timescale;
            }

            else
            {
              v47 = v113.start.value;
              v48 = *&v113.start.timescale;
            }

            v106 = v48;
            if ((time1.start.flags & 0x1D) != 1)
            {
              *&range.start.value = v85;
              range.start.epoch = v86;
              time2.value = v47;
              *&time2.timescale = v106;
              bossGetPresentationTimeAfterSteppingInEmptyEditSegment(&range.start, &time2, v44, MEMORY[0x1E6960C70], &v105);
LABEL_77:
              if ((v105.flags & 0x1D) == 1)
              {
                PresentationTimeAfterSampleCursorStepping = 0;
              }

              else
              {
                PresentationTimeAfterSampleCursorStepping = 4294954456;
              }

LABEL_80:
              rhs = time1;
              v101 = v113;
              v98 = v104;
              v91 = v105;
              if (PresentationTimeAfterSampleCursorStepping)
              {
                v50 = v70;
                v51 = v15;
                a1 = v65;
                goto LABEL_86;
              }

              v39 = v91.flags;
              goto LABEL_53;
            }

            v49 = *(v84 + 48);
            range = time1;
            v125 = v113;
            time2.value = v47;
            *&time2.timescale = v106;
            v46 = bossGetPresentationTimeAfterSteppingInNormalEditSegment(v49, &range, &time2, v44, 0, &v105);
            if (!v46)
            {
              goto LABEL_77;
            }
          }

          PresentationTimeAfterSampleCursorStepping = v46;
          goto LABEL_80;
        }

        if (PresentationTimeAfterSteppingInNormalEditSegment)
        {
          break;
        }

LABEL_53:
        PresentationTimeAfterSampleCursorStepping = 0;
        v37 -= v36;
        v120 = v91.value;
        v121 = v91.timescale;
        v27 = v91.epoch;
        v35 = v39;
LABEL_57:
        if (v37 <= 0)
        {
          goto LABEL_84;
        }
      }

      PresentationTimeAfterSampleCursorStepping = PresentationTimeAfterSteppingInNormalEditSegment;
LABEL_84:
      v50 = v70;
      v51 = v15;
      a1 = v65;
      if (!PresentationTimeAfterSampleCursorStepping)
      {
        v122 = v91.value;
        v50 = v91.flags;
        v123 = v91.timescale;
        v51 = v91.epoch;
      }

LABEL_86:
      v9 = v66;
      v27 = v68;
LABEL_90:
      v108 = v122;
      v109 = v123;
LABEL_91:
      if (PresentationTimeAfterSampleCursorStepping == -12840)
      {
        v6 = v69;
        goto LABEL_101;
      }

      if (PresentationTimeAfterSampleCursorStepping)
      {
        FigSimpleMutexUnlock();
        goto LABEL_6;
      }

      v6 = v69;
      if ((v50 & 0x1D) == 1)
      {
        if (v64 < 1)
        {
          time1.start.value = v108;
          *&time1.start.timescale = __PAIR64__(v50, v109);
          time1.start.epoch = v51;
          range.start.value = v110;
          range.start.timescale = v111;
          range.start.flags = v81;
          range.start.epoch = v27;
          if (CMTimeCompare(&time1.start, &range.start) < 0)
          {
LABEL_97:
            if ((v73 & 0x1D) != 1 || (time1.start.value = v114, *&time1.start.timescale = __PAIR64__(v73, v115), time1.start.epoch = v71, rhs.start.value = v110, *&rhs.start.timescale = __PAIR64__(v81, v111), rhs.start.epoch = v68, CMTimeSubtract(&range.start, &time1.start, &rhs.start), CMTimeAbsoluteValue(&time1.start, &range.start), range.start.value = v108, range.start.timescale = v109, range.start.flags = v50, range.start.epoch = v51, *type = v110, *&type[8] = v111, *&type[12] = v81, v27 = v68, *&v93 = v68, CMTimeSubtract(&rhs.start, &range.start, type), CMTimeAbsoluteValue(&range.start, &rhs.start), CMTimeCompare(&time1.start, &range.start) >= 1))
            {
              v114 = v108;
              v115 = v109;
              v63 = v84;
              v71 = v51;
              v73 = v50;
            }
          }
        }

        else
        {
          time1.start.value = v108;
          *&time1.start.timescale = __PAIR64__(v50, v109);
          time1.start.epoch = v51;
          range.start.value = v110;
          range.start.timescale = v111;
          range.start.flags = v81;
          range.start.epoch = v27;
          if (CMTimeCompare(&time1.start, &range.start) > 0)
          {
            goto LABEL_97;
          }
        }
      }

LABEL_101:
      ++v28;
      v22 = v72;
      v26 = v81;
    }

    while (v28 != v80);
LABEL_107:
    v53 = v73;
    if ((v73 & 0x1D) == 1)
    {
      v110 = v114;
      v111 = v115;
      v26 = v73;
      v27 = v71;
      v54 = __OFSUB__(v22, v67);
      v22 -= v67;
      if (!((v22 < 0) ^ v54 | (v22 == 0)))
      {
        continue;
      }

      FigSimpleMutexUnlock();
      if (v63)
      {
        v116 = v114;
        v117 = v115;
        goto LABEL_114;
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }

    break;
  }

  CMTimeMake(&range.start, 250 * v64, 1000);
  rhs.start.value = value;
  *&rhs.start.timescale = __PAIR64__(v61, timescale);
  rhs.start.epoch = epoch;
  CMTimeAdd(&time1.start, &rhs.start, &range.start);
  v116 = time1.start.value;
  v53 = time1.start.flags;
  v117 = time1.start.timescale;
  v71 = time1.start.epoch;
LABEL_114:
  v55 = v60;
  if (dword_1EAF16E78)
  {
    LODWORD(rhs.start.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v57 = rhs.start.value;
    if (os_log_type_enabled(v56, type[0]))
    {
      v58 = v57;
    }

    else
    {
      v58 = v57 & 0xFFFFFFFE;
    }

    if (v58)
    {
      time1.start.value = v116;
      *&time1.start.timescale = __PAIR64__(v53, v117);
      time1.start.epoch = v71;
      Seconds = CMTimeGetSeconds(&time1.start);
      LODWORD(range.start.value) = 136315906;
      *(&range.start.value + 4) = "FigPlaybackBossStepByCount";
      LOWORD(range.start.flags) = 2048;
      *(&range.start.flags + 2) = a1;
      HIWORD(range.start.epoch) = 2082;
      range.duration.value = a1 + 850;
      LOWORD(range.duration.timescale) = 2048;
      *(&range.duration.timescale + 2) = Seconds;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v55 = v60;
  }

  time1.start.value = v116;
  *&time1.start.timescale = __PAIR64__(v53, v117);
  time1.start.epoch = v71;
  PresentationTimeAfterSampleCursorStepping = FigPlaybackBossSetTimeWithRange(a1, &time1.start, 0, MEMORY[0x1E6960C80], MEMORY[0x1E6960C88], v55, 0);
LABEL_6:
  free(v9);
  return PresentationTimeAfterSampleCursorStepping;
}

uint64_t FigPlaybackBossResetCompositionInstructions(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if ((*(a1 + 492) & 0x1D) == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  return FigVideoCompositionProcessorResetCompositionInstruction(a2, v5, a4);
}

uint64_t FigPlaybackBossRefreshVideoComposition(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  cf = 0;
  v19 = **&MEMORY[0x1E6960C70];
  if (!a1 || *(a1 + 16) || *(a1 + 128))
  {
    v2 = FigSignalErrorAtGM();
    goto LABEL_4;
  }

  FigSimpleMutexLock();
  v4 = *(a1 + 432);
  if (v4 <= 1886530415)
  {
    if (v4 <= 1886151032)
    {
      switch(v4)
      {
        case 1634624887:
          goto LABEL_13;
        case 1768189029:
          goto LABEL_14;
        case 1885435251:
LABEL_13:
          if (dword_1EAF16E78)
          {
LABEL_14:
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          break;
      }

LABEL_42:
      FigSimpleMutexUnlock();
      v2 = 0;
      goto LABEL_4;
    }

    if (v4 == 1886151033)
    {
      goto LABEL_27;
    }

    if (v4 != 1886154860)
    {
      v9 = 1886155888;
LABEL_26:
      if (v4 != v9)
      {
        goto LABEL_42;
      }

LABEL_27:
      FigPlaybackBossGetTime(a1, &v19);
      if (dword_1EAF16E78)
      {
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      time = v19;
      v13 = a1;
      v14 = 0;
      goto LABEL_40;
    }

LABEL_29:
    if (*(a1 + 812))
    {
      v19 = *(a1 + 800);
    }

    else
    {
      FigPlaybackBossGetTime(a1, &v19);
    }

    if (dword_1EAF16E78)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    time = v19;
    v13 = a1;
    v14 = 1;
LABEL_40:
    restarted = figPlaybackBossRestartVideoMentorsFromItemTime(v13, &time, v14);
    if (restarted)
    {
      v2 = restarted;
      FigSimpleMutexUnlock();
      goto LABEL_4;
    }

    goto LABEL_42;
  }

  if (v4 > 1919247480)
  {
    if (v4 != 1919247481)
    {
      if (v4 == 1920298606)
      {
        goto LABEL_14;
      }

      v9 = 2003853684;
      goto LABEL_26;
    }

    v8 = 1;
    v6 = 1;
  }

  else
  {
    if (v4 == 1886530416 || v4 == 1886544244)
    {
      goto LABEL_29;
    }

    if (v4 != 1886545266)
    {
      goto LABEL_42;
    }

    v6 = 0;
    cf = *(a1 + 504);
    v7 = cf;
    *(a1 + 504) = 0;
    v8 = v7 == 0;
  }

  FigPlaybackBossGetTime(a1, &v19);
  if (dword_1EAF16E78)
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  bossBumpCurrentMasterOrder(a1);
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v17 = *(a1 + 80);
  time = v19;
  v2 = bossSetMentorModesToScrub(a1, 0, v17, &time, 0, 0);
  FigSimpleMutexUnlock();
  *(a1 + 432) = 1885435251;
  FigSimpleMutexUnlock();
  if ((v6 & 1) == 0)
  {
    v18 = v8 ? 0 : CFDictionaryCreate(*MEMORY[0x1E695E480], kFigPlaybackBossParameter_PrerollToken, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v18)
    {
      CFRelease(v18);
    }
  }

LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

const char *getStateName(int a1)
{
  v1 = "unknown";
  if (a1 <= 1886155887)
  {
    v2 = 1885435250;
    v7 = "Paused";
    v14 = "PlayingAndPrerollingWillPlay";
    if (a1 != 1886154860)
    {
      v14 = "unknown";
    }

    if (a1 == 1886151033)
    {
      v15 = "Playing";
    }

    else
    {
      v15 = v14;
    }

    if (a1 != 1885435251)
    {
      v7 = v15;
    }

    v8 = 1634624887;
    v9 = "NotYetUsed";
    v10 = "Invalidated";
    v11 = 1684365668;
    v12 = a1 == 1768189029;
    v13 = "IdleNonRealTime";
  }

  else
  {
    v2 = 1886545265;
    v3 = "PrerolledWillPlayAtTransition";
    if (a1 != 2003853684)
    {
      v3 = "unknown";
    }

    if (a1 == 1920298606)
    {
      v4 = "PlayingNonRealTime";
    }

    else
    {
      v4 = v3;
    }

    v5 = "PausedButPrerolled";
    if (a1 != 1919247481)
    {
      v5 = "unknown";
    }

    if (a1 == 1886545266)
    {
      v6 = "PrerollingWillPause";
    }

    else
    {
      v6 = v5;
    }

    if (a1 <= 1920298605)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    v8 = 1886155888;
    v9 = "PlayingAfterTransitionStillPrerolling";
    v10 = "PrerollingWillPlay";
    v11 = 1886530416;
    v12 = a1 == 1886544244;
    v13 = "PrerollingWillPlayAtTransition";
  }

  if (v12)
  {
    v1 = v13;
  }

  if (a1 == v11)
  {
    v1 = v10;
  }

  if (a1 == v8)
  {
    v1 = v9;
  }

  if (a1 <= v2)
  {
    return v1;
  }

  else
  {
    return v7;
  }
}

uint64_t figPlaybackBossRestartVideoMentorsFromItemTime(uint64_t a1, CMTime *a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  v24 = v4;
  v5 = *(a1 + 440);
  if (v5 <= 0.0)
  {
    v6 = -v5;
  }

  else
  {
    v6 = *(a1 + 440);
  }

  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v23 = a3 != 0;
    v11 = *MEMORY[0x1E695E480];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v9);
      if (*(ValueAtIndex + 18) == 1986618469)
      {
        v13 = ValueAtIndex;
        v14 = ValueAtIndex[28];
        ++*(ValueAtIndex + 58);
        ValueAtIndex[28] = CFNumberCreate(v11, kCFNumberSInt32Type, ValueAtIndex + 29);
        if (v14)
        {
          CFRelease(v14);
        }

        if (a3)
        {
          *(v13 + 237) = 1;
        }

        if (*(v13 + 216))
        {
          if (v5 < 0.0)
          {
            v15 = 0;
          }

          else
          {
            v15 = *(v13 + 272);
          }

          v16 = bossTrackShouldRemoveExcessFramesInRefreshIntervals(a1, v13, v6);
          v17 = bossCopyOptionsDictionaryForMentors(a1, v24, *(v13 + 240), *(v13 + 248), *(v13 + 256), *(v13 + 264), v15, 0, v6, v23, *(a1 + 849), *(a1 + 129), v5 >= 0.0, 1, *(v13 + 368), *(v13 + 424), 0, v16);
          v18 = bossCopyRenderPipelineCachedVideoFrames(a1, *(v13 + 80));
          v19 = *(v13 + 216);
          v20 = *(v13 + 224);
          time = *a2;
          if (v5 < 0.0)
          {
            v27 = *(a1 + 296);
            v28 = *(a1 + 312);
            v21 = EditMentorSetModeToReversePlayback(v19, &time.value, &v27, v17, v18, 0, v20);
          }

          else
          {
            v27 = *(a1 + 176);
            v28 = *(a1 + 192);
            v21 = EditMentorSetModeToForwardPlayback(v19, &time.value, &v27, v17, v18, 0, v20);
          }

          if (v10)
          {
            v10 = v10;
          }

          else
          {
            v10 = v21;
          }

          if (v17)
          {
            CFRelease(v17);
          }

          if (v18)
          {
            CFRelease(v18);
          }
        }
      }

      ++v9;
    }

    while (*(a1 + 80) > v9);
  }

  FigSimpleMutexUnlock();
  return v10;
}

uint64_t FigPlaybackBossSendSampleForTime(uint64_t a1, CMTime *a2, char a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1 && !*(a1 + 16) && *(a1 + 128))
  {
    *(a1 + 436) = (a3 & 2) != 0;
    *(a1 + 437) = (a3 & 4) != 0;
    FigSimpleMutexLock();
    v9 = *(a1 + 432);
    if (v9 > 1768189028)
    {
      if (v9 == 1768189029)
      {
        goto LABEL_15;
      }

      v10 = 1920298606;
    }

    else
    {
      if (v9 == 1634624887)
      {
        goto LABEL_15;
      }

      v10 = 1684365668;
    }

    if (v9 != v10)
    {
      v7 = FigSignalErrorAtGM();
LABEL_19:
      FigSimpleMutexUnlock();
      return v7;
    }

LABEL_15:
    *(a1 + 432) = 1920298606;
    bossBumpCurrentMasterOrder(a1);
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v12 = *(a1 + 80);
    time = *a2;
    v7 = bossSetMentorModesToScrub(a1, 0, v12, &time, 1, 0);
    FigSimpleMutexUnlock();
    goto LABEL_19;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigPlaybackBossSendSamplesForTimeRange(uint64_t a1, CMTime *a2, uint64_t a3, char a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1 && !*(a1 + 16) && *(a1 + 128))
  {
    *(a1 + 436) = (a4 & 2) != 0;
    *(a1 + 437) = (a4 & 4) != 0;
    FigSimpleMutexLock();
    v11 = *(a1 + 432);
    if (v11 > 1768189028)
    {
      if (v11 == 1768189029)
      {
        goto LABEL_15;
      }

      v12 = 1920298606;
    }

    else
    {
      if (v11 == 1634624887)
      {
        goto LABEL_15;
      }

      v12 = 1684365668;
    }

    if (v11 != v12)
    {
      v9 = FigSignalErrorAtGM();
LABEL_24:
      FigSimpleMutexUnlock();
      return v9;
    }

LABEL_15:
    *(a1 + 432) = 1920298606;
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    bossSetMentorPropertiesForRate(a1, 0, 1.0);
    FigSimpleMutexUnlock();
    v14 = *&a2->value;
    *(a1 + 264) = a2->epoch;
    *(a1 + 248) = v14;
    v15 = *(a3 + 16);
    *(a1 + 272) = *a3;
    *(a1 + 288) = v15;
    v16 = a4 & 1;
    if ((a4 & 8) != 0)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    bossBumpCurrentMasterOrder(a1);
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v19 = *(a1 + 80);
    time = *a2;
    v20 = *a3;
    v9 = bossSetMentorModesToForwardPlayback(a1, 0, v19, &time, &v20, 0, 0, v17, 1.0, 1.0, v16, 0, 0, 0);
    FigSimpleMutexUnlock();
    goto LABEL_24;
  }

  return FigSignalErrorAtGM();
}

__n128 FigPlaybackBossGetScheduledEndTime@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[20];
  *a2 = result;
  a2[1].n128_u64[0] = a1[21].n128_u64[0];
  return result;
}

uint64_t FigPlaybackBossGetStopAtEnd(uint64_t result)
{
  if (result)
  {
    if (*(result + 16))
    {
      return 0;
    }

    else
    {
      return *(result + 137);
    }
  }

  return result;
}

uint64_t FigPlaybackBossSetAudibleRateRange(uint64_t a1, char a2, char a3, float a4, float a5)
{
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1 || *(a1 + 16))
  {
    return FigSignalErrorAtGM();
  }

  result = 0;
  *(a1 + 400) = a2;
  *(a1 + 404) = a4;
  *(a1 + 401) = a3;
  *(a1 + 408) = a5;
  return result;
}

uint64_t FigPlaybackBossGetAudibleRateRange(uint64_t a1, _BYTE *a2, _DWORD *a3, _BYTE *a4, _DWORD *a5)
{
  if (!a1 || *(a1 + 16))
  {
    return FigSignalErrorAtGM();
  }

  if (a2)
  {
    *a2 = *(a1 + 400);
  }

  if (a3)
  {
    *a3 = *(a1 + 404);
  }

  if (a4)
  {
    *a4 = *(a1 + 401);
  }

  if (a5)
  {
    *a5 = *(a1 + 408);
  }

  return 0;
}

uint64_t FigPlaybackBossSetRateSnapping(uint64_t a1, char a2, float a3, float a4)
{
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1 || *(a1 + 16))
  {
    return FigSignalErrorAtGM();
  }

  result = 0;
  *(a1 + 412) = a2;
  *(a1 + 416) = a3;
  *(a1 + 420) = a4;
  return result;
}

uint64_t FigPlaybackBossGetRateSnapping(uint64_t a1, _BYTE *a2, _DWORD *a3, _DWORD *a4)
{
  if (!a1 || *(a1 + 16))
  {
    return FigSignalErrorAtGM();
  }

  if (a2)
  {
    *a2 = *(a1 + 412);
  }

  if (a3)
  {
    *a3 = *(a1 + 416);
  }

  if (a4)
  {
    *a4 = *(a1 + 420);
  }

  return 0;
}

uint64_t FigPlaybackBossSetContinuePlayingDuringPrerollForSeek(uint64_t a1, char a2)
{
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1 || *(a1 + 16))
  {
    return FigSignalErrorAtGM();
  }

  result = 0;
  *(a1 + 138) = a2;
  return result;
}

uint64_t FigPlaybackBossGetContinuePlayingDuringPrerollForSeek(uint64_t result)
{
  if (result)
  {
    if (*(result + 16))
    {
      return 0;
    }

    else
    {
      return *(result + 138);
    }
  }

  return result;
}

uint64_t FigPlaybackBossSetContinuePlayingDuringPrerollForRateChange(uint64_t a1, char a2)
{
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1 || *(a1 + 16))
  {
    return FigSignalErrorAtGM();
  }

  result = 0;
  *(a1 + 139) = a2;
  return result;
}

uint64_t FigPlaybackBossGetContinuePlayingDuringPrerollForRateChange(uint64_t result)
{
  if (result)
  {
    if (*(result + 16))
    {
      return 0;
    }

    else
    {
      return *(result + 139);
    }
  }

  return result;
}

uint64_t FigPlaybackBossSetIFrameOnlySpeedThreshold(uint64_t a1, float a2)
{
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1 || *(a1 + 16))
  {
    return FigSignalErrorAtGM();
  }

  result = 0;
  *(a1 + 143) = 1;
  *(a1 + 144) = a2;
  *(a1 + 512) = 0;
  return result;
}

float FigPlaybackBossGetIFrameOnlySpeedThreshold(uint64_t a1)
{
  result = 0.0;
  if (a1)
  {
    if (!*(a1 + 16))
    {
      return *(a1 + 144);
    }
  }

  return result;
}

uint64_t FigPlaybackBossSetReversalLimits(uint64_t a1, int a2, int a3)
{
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1 || *(a1 + 16))
  {
    return FigSignalErrorAtGM();
  }

  *(a1 + 152) = a2;
  *(a1 + 156) = a3;
  result = 0;
  if (*(a1 + 512) < 0.0)
  {
    *(a1 + 512) = 0;
  }

  return result;
}

uint64_t FigPlaybackBossGetReversalLimits(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (!a1 || *(a1 + 16))
  {
    return FigSignalErrorAtGM();
  }

  if (a2)
  {
    *a2 = *(a1 + 152);
  }

  if (a3)
  {
    *a3 = *(a1 + 156);
  }

  return 0;
}

uint64_t FigPlaybackBossSetScrubPolicy(uint64_t a1, int a2)
{
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1 || *(a1 + 16))
  {
    return FigSignalErrorAtGM();
  }

  result = 0;
  *(a1 + 160) = a2;
  return result;
}

uint64_t FigPlaybackBossGetScrubPolicy(uint64_t a1, _DWORD *a2)
{
  if (!a1 || *(a1 + 16))
  {
    return FigSignalErrorAtGM();
  }

  if (a2)
  {
    *a2 = *(a1 + 160);
  }

  return 0;
}

uint64_t FigPlaybackBossSetUseIFrameOnlyPlaybackForHighRateScaledEdits(uint64_t a1, char a2)
{
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1 || *(a1 + 16))
  {
    return FigSignalErrorAtGM();
  }

  result = 0;
  *(a1 + 140) = a2;
  return result;
}

uint64_t FigPlaybackBossGetUseIFrameOnlyPlaybackForHighRateScaledEdits(uint64_t result)
{
  if (result)
  {
    if (*(result + 16))
    {
      return 0;
    }

    else
    {
      return *(result + 140);
    }
  }

  return result;
}

uint64_t FigPlaybackBossSetMinimumIntervalForIFrameOnlyPlayback(uint64_t a1, __int128 *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1 || *(a1 + 16))
  {
    return FigSignalErrorAtGM();
  }

  FigSimpleMutexLock();
  if (*(a1 + 80) >= 1)
  {
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v6);
      v8 = *a2;
      *(ValueAtIndex + 388) = *(a2 + 2);
      *(ValueAtIndex + 372) = v8;
      ++v6;
    }

    while (*(a1 + 80) > v6);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigPlaybackBossSetTrackEnableForStepping(uint64_t a1, int a2, char a3)
{
  if (a1 && !*(a1 + 16))
  {
    FigSimpleMutexLock();
    if (*(a1 + 80) >= 1)
    {
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v7);
        if (*(ValueAtIndex + 6) == a2)
        {
          ValueAtIndex[89] = a3;
        }

        ++v7;
      }

      while (*(a1 + 80) > v7);
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t FigPlaybackBossSetThoroughlyRefreshClosedCaptionsWhenSeeking(uint64_t a1, char a2)
{
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1 || *(a1 + 16))
  {
    return FigSignalErrorAtGM();
  }

  result = 0;
  *(a1 + 141) = a2;
  return result;
}

uint64_t FigPlaybackBossGetThoroughlyRefreshClosedCaptionsWhenSeeking(uint64_t result)
{
  if (result)
  {
    if (*(result + 16))
    {
      return 0;
    }

    else
    {
      return *(result + 141);
    }
  }

  return result;
}

uint64_t FigPlaybackBossCopyTrackPerformanceDictionary(uint64_t a1, int a2, const __CFAllocator *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  memset(v40, 0, sizeof(v40));
  if (a1 && !*(a1 + 16))
  {
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      LODWORD(cf) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a1 + 80) < 1)
    {
LABEL_12:
      FigSimpleMutexUnlock();
      return FigSignalErrorAtGM();
    }

    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v8);
      if (ValueAtIndex[6] == a2)
      {
        break;
      }

      if (*(a1 + 80) <= ++v8)
      {
        goto LABEL_12;
      }
    }

    v11 = ValueAtIndex;
    CFRetain(ValueAtIndex);
    FigSimpleMutexUnlock();
    v12 = *(a1 + 131);
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    *keys = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *values = 0u;
    v42 = 0u;
    if (!v12)
    {
      *&v40[0] = CFDictionaryCreate(a3, keys, values, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      goto LABEL_40;
    }

    keys[0] = @"NumberOfSamplesInTrack";
    valuePtr = 0;
    *type = 0;
    cf = 0;
    FigBaseObject = FigFormatReaderGetFigBaseObject(*(a1 + 40));
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v15 = *MEMORY[0x1E695E480];
      if (!v14(FigBaseObject, @"Identifier", *MEMORY[0x1E695E480], type) && (FigCFEqual() || FigCFEqual()))
      {
        v16 = v11[4];
        if (v16)
        {
          v17 = FigTrackReaderGetFigBaseObject(v16);
          v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v18)
          {
            if (!v18(v17, @"UneditedSampleCount", v15, values))
            {
LABEL_33:
              v26 = 1;
LABEL_35:
              if (*type)
              {
                CFRelease(*type);
              }

              *&v40[0] = CFDictionaryCreate(a3, keys, values, v26, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (v26 && values[0])
              {
                CFRelease(values[0]);
              }

LABEL_40:
              v27 = v11[18];
              if (v27)
              {
                if (VideoMentorCopyPerformanceDictionary(v27, v40 + 1))
                {
                  v28 = 1;
                }

                else
                {
                  v28 = 2;
                }
              }

              else
              {
                v28 = 1;
              }

              v29 = v11[5];
              if (v29)
              {
                v30 = FigSampleGeneratorGetFigBaseObject(v29, v25);
                v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v31)
                {
                  if (!v31(v30, @"SampleGeneratorPerformanceDictionary", a3, v40 + 8 * v28))
                  {
                    ++v28;
                  }
                }
              }

              v32 = 0;
              v33 = 0;
              do
              {
                v33 += CFDictionaryGetCount(*(v40 + v32++));
              }

              while (v28 != v32);
              if (v33 < 1)
              {
                v10 = 0;
                if (!v11)
                {
LABEL_54:
                  v34 = v40;
                  do
                  {
                    v35 = *v34++;
                    CFRelease(v35);
                    --v28;
                  }

                  while (v28);
                  return v10;
                }
              }

              else
              {
                v10 = FigCFCreateCombinedDictionary();
                if (!v11)
                {
                  goto LABEL_54;
                }
              }

              CFRelease(v11);
              goto LABEL_54;
            }
          }
        }

        v19 = v11[6];
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v20 && !v20(v19, &cf))
        {
          valuePtr = 0;
          v21 = 1;
          while (1)
          {
            v36 = 0;
            v22 = cf;
            v23 = *(*(CMBaseObjectGetVTable() + 16) + 168);
            v24 = v23 && v23(v22, 1, &v36) == 0;
            if (v36 != 1)
            {
              break;
            }

            valuePtr = v21++;
            if (!v24)
            {
              CFRelease(cf);
              goto LABEL_34;
            }
          }

          CFRelease(cf);
          if (v24)
          {
            values[0] = CFNumberCreate(v15, kCFNumberSInt32Type, &valuePtr);
            if (!values[0])
            {
              v26 = FigSignalErrorAtGM() == 0;
              goto LABEL_35;
            }

            goto LABEL_33;
          }
        }
      }
    }

LABEL_34:
    v26 = 0;
    goto LABEL_35;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigPlaybackBossCopyPerformanceDictionary(uint64_t a1, CFAllocatorRef allocator, CFMutableDictionaryRef *a3)
{
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    FigCFDictionarySetDouble();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    if (*(a1 + 676))
    {
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&lhs, HostTimeClock);
      v9 = *(a1 + 664);
      CMTimeSubtract(&time, &lhs, &v9);
      CMTimeGetSeconds(&time);
    }

    FigCFDictionarySetDouble();
    if (*(a1 + 708))
    {
      v7 = *(a1 + 120);
      if (v7)
      {
        CMTimebaseGetTime(&lhs, v7);
        v9 = *(a1 + 696);
        CMTimeSubtract(&time, &lhs, &v9);
        CMTimeGetSeconds(&time);
      }
    }

    FigCFDictionarySetDouble();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    if (*(a1 + 748))
    {
      time = *(a1 + 736);
      CMTimeGetSeconds(&time);
      FigCFDictionarySetDouble();
    }
  }

  *a3 = Mutable;
  return 0;
}

uint64_t FigPlaybackBossSetClientPID(uint64_t a1, uint64_t a2)
{
  if (a1 && !*(a1 + 16))
  {
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a1 + 80) >= 1)
    {
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v6);
        v8 = ValueAtIndex[10];
        if (v8)
        {
          FigBaseObject = FigRenderPipelineGetFigBaseObject(v8);
          v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v10)
          {
            v10(FigBaseObject, @"ClientPID", a2);
          }
        }

        v11 = ValueAtIndex[18];
        if (v11)
        {
          VideoMentorSetClientPID(v11);
        }

        v12 = ValueAtIndex[16];
        if (v12)
        {
          AudioMentorSetClientPID(v12);
        }

        ++v6;
      }

      while (*(a1 + 80) > v6);
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t FigPlaybackBossSetThrottleForBackground(_BYTE *a1, char a2)
{
  if (a1 && !a1[16])
  {
    a1[135] = a2;
    FigSimpleMutexLock();
    if (a1[848])
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    bossApplyThrottleForBackground(a1);
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t bossReadModelSpecificPlaybackTuning()
{
  FigGetAllocatorForPermanentAllocations();
  result = FigCreateModelSpecificPropertyList();
  sModelSpecificPlaybackTuning = result;
  return result;
}

uint64_t bossScheduleReachedEndCallbackUsingRenderPipelineQueueEndPTS(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  memset(&v33, 0, sizeof(v33));
  v2 = *(a1 + 440);
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    LODWORD(time2.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) <= 0)
  {
    FigSimpleMutexUnlock();
    goto LABEL_31;
  }

  v4 = 0;
  v5 = 0;
  v6 = *MEMORY[0x1E695E480];
  do
  {
    v7 = *(CFArrayGetValueAtIndex(*(a1 + 72), v4) + 10);
    if (v7)
    {
      dictionaryRepresentation = 0;
      FigBaseObject = FigRenderPipelineGetFigBaseObject(v7);
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v9(FigBaseObject, @"EndPresentationTimeForQueuedSamples", v6, &dictionaryRepresentation);
      }

      if (dictionaryRepresentation)
      {
        memset(&rhs, 0, sizeof(rhs));
        CMTimeMakeFromDictionary(&rhs, dictionaryRepresentation);
        if ((rhs.flags & 0x1D) != 1)
        {
LABEL_17:
          CFRelease(dictionaryRepresentation);
          goto LABEL_18;
        }

        if (v5)
        {
          if (v2 >= 0.0)
          {
            time1 = v33;
            time2 = rhs;
            CMTimeMaximum(&v33, &time1, &time2);
LABEL_16:
            v5 = 1;
            goto LABEL_17;
          }

          time2 = v33;
          type = rhs;
          CMTimeMinimum(&time1, &time2, &type);
          *&v33.value = *&time1.value;
          epoch = time1.epoch;
        }

        else
        {
          *&v33.value = *&rhs.value;
          epoch = rhs.epoch;
        }

        v33.epoch = epoch;
        goto LABEL_16;
      }
    }

LABEL_18:
    ++v4;
  }

  while (*(a1 + 80) > v4);
  FigSimpleMutexUnlock();
  if (v5)
  {
    if (bossShouldExtendEndTime(a1))
    {
      memset(&time2, 0, sizeof(time2));
      if (v2 < 0.0)
      {
        v11 = -10;
      }

      else
      {
        v11 = 10;
      }

      CMTimeMake(&rhs, v11, 1);
      time1 = v33;
      CMTimeAdd(&time2, &time1, &rhs);
      if (dword_1EAF16E78)
      {
        LODWORD(type.value) = 0;
        LOBYTE(dictionaryRepresentation) = 0;
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = type.value;
        if (os_log_type_enabled(v12, dictionaryRepresentation))
        {
          v14 = value;
        }

        else
        {
          v14 = value & 0xFFFFFFFE;
        }

        if (v14)
        {
          rhs = v33;
          Seconds = CMTimeGetSeconds(&rhs);
          rhs = time2;
          v16 = CMTimeGetSeconds(&rhs);
          LODWORD(time1.value) = 136316162;
          *(&time1.value + 4) = "bossScheduleReachedEndCallbackUsingRenderPipelineQueueEndPTS";
          LOWORD(time1.flags) = 2048;
          *(&time1.flags + 2) = a1;
          HIWORD(time1.epoch) = 2082;
          v35 = a1 + 850;
          v36 = 2048;
          v37 = Seconds;
          v38 = 2048;
          v39 = v16;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v33 = time2;
    }

    if (dword_1EAF16E78)
    {
      LODWORD(time2.value) = 0;
      LOBYTE(type.value) = 0;
      v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v27 = time2.value;
      if (os_log_type_enabled(v26, type.value))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 0xFFFFFFFE;
      }

      if (v28)
      {
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    goto LABEL_58;
  }

LABEL_31:
  if (bossShouldExtendEndTime(a1))
  {
    CMTimebaseGetTime(&time1, *(a1 + 120));
    if (v2 < 0.0)
    {
      v17 = -10;
    }

    else
    {
      v17 = 10;
    }

    CMTimeMake(&time2, v17, 1);
    CMTimeAdd(&rhs, &time1, &time2);
    v33 = rhs;
    if (dword_1EAF16E78)
    {
      LODWORD(time2.value) = 0;
      LOBYTE(type.value) = 0;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v19 = time2.value;
      if (os_log_type_enabled(v18, type.value))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
LABEL_56:
        rhs = v33;
        v29 = CMTimeGetSeconds(&rhs);
        LODWORD(time1.value) = 136315906;
        *(&time1.value + 4) = "bossScheduleReachedEndCallbackUsingRenderPipelineQueueEndPTS";
        LOWORD(time1.flags) = 2048;
        *(&time1.flags + 2) = a1;
        HIWORD(time1.epoch) = 2082;
        v35 = a1 + 850;
        v36 = 2048;
        v37 = v29;
        _os_log_send_and_compose_impl();
      }

LABEL_57:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_58:
    rhs = v33;
    return bossScheduleReachedEndCallbackForTime(a1, &rhs);
  }

  else
  {
    if (dword_1EAF16E78)
    {
      LODWORD(time2.value) = 0;
      LOBYTE(type.value) = 0;
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v22 = time2.value;
      if (os_log_type_enabled(v21, type.value))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        LODWORD(time1.value) = 136315650;
        *(&time1.value + 4) = "bossScheduleReachedEndCallbackUsingRenderPipelineQueueEndPTS";
        LOWORD(time1.flags) = 2048;
        *(&time1.flags + 2) = a1;
        HIWORD(time1.epoch) = 2082;
        v35 = a1 + 850;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v24 = MEMORY[0x1E6960C70];
    *(a1 + 320) = *MEMORY[0x1E6960C70];
    *(a1 + 336) = *(v24 + 16);
    return CMTimebaseSetTimerDispatchSourceToFireImmediately(*(a1 + 120), *(a1 + 168));
  }
}

void figPlaybackBoss_sendBecameIdleNotificationIfNowIdle(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) < 1)
  {
LABEL_11:
    FigSimpleMutexUnlock();
    if (dword_1EAF16E78)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (a2 || (a2 = *(a1 + 576)) != 0)
    {
      CFRetain(a2);
    }

    v10 = *(a1 + 576);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 576) = 0;
    }

    FigSimpleMutexUnlock();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (a2)
    {
      CFRelease(a2);
    }
  }

  else
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v5);
      if (*(ValueAtIndex + 236))
      {
        break;
      }

      if (*(ValueAtIndex + 237))
      {
        break;
      }

      if (*(ValueAtIndex + 238))
      {
        break;
      }

      v7 = *(ValueAtIndex + 14);
      if (v7)
      {
        if (!FigMediaProcessorIsAtEndOfOutputData(v7))
        {
          break;
        }
      }

      if (++v5 >= *(a1 + 80))
      {
        goto LABEL_11;
      }
    }

    FigSimpleMutexUnlock();
    if (a2)
    {
      v9 = *(a1 + 576);
      *(a1 + 576) = a2;
      CFRetain(a2);
      if (v9)
      {
        CFRelease(v9);
      }
    }

    FigSimpleMutexUnlock();
  }
}

void figPlaybackBossReachedEndWithContext(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 16))
  {
    os_retain(*(a1 + 792));
    voucher_adopt();
    *(a1 + 136) = 1;
    if (*(a1 + 137))
    {
      if (dword_1EAF16E78)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      time = *(a1 + 320);
      figPlaybackBossSetRateToZero(a1, 2, &time);
      v3 = MEMORY[0x1E6960C70];
      *(a1 + 320) = *MEMORY[0x1E6960C70];
      *(a1 + 336) = *(v3 + 16);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    v4 = voucher_adopt();
    os_release(v4);
  }
}

void figPlaybackBoss_bufferConsumedByRenderPipeline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (!*(v6 + 16))
  {
    if (*(v6 + 600))
    {
      v8 = *(v6 + 476) == 0;
      if (!a5)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v8 = 1;
      if (!a5)
      {
        goto LABEL_3;
      }
    }

    if (v8)
    {
      v9 = CFGetTypeID(a5);
      if (v9 == CFDictionaryGetTypeID())
      {
        if (CFDictionaryGetValue(a5, @"BossScrubOrder"))
        {
          FigSimpleMutexLock();
          if (FigCFEqual() && (v10 = *(v7 + 784)) != 0)
          {
            *(v7 + 788) = 0;
            *(v7 + 784) = 0;
            FigSimpleMutexUnlock();
            figPlaybackBossPostSeekDidComplete(v7, v10, 0);
          }

          else
          {
            FigSimpleMutexUnlock();
          }
        }
      }
    }
  }

LABEL_3:

  CFRelease(v7);
}

void figPlaybackBoss_renderPipelineCompletedDecodeForPreroll(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *Value)
{
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    v8 = v7;
    FigSimpleMutexLock();
    if (Value)
    {
      Value = CFDictionaryGetValue(Value, @"RequestID");
    }

    FigSimpleMutexLock();
    if (!*(v8 + 16) && *(a2 + 224) == Value && *(a2 + 238))
    {
      v9 = *(v8 + 544);
      if (v9)
      {
        CFRetain(*(v8 + 544));
      }

      *(a2 + 238) = 0;
      FigSimpleMutexLock();
      if (*(v8 + 848))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (*(v8 + 80) < 1)
      {
LABEL_17:
        FigSimpleMutexUnlock();
        v12 = malloc_type_calloc(1uLL, 0x10uLL, 0xE0040E685C293uLL);
        *v12 = CFRetain(v8);
        if (v9)
        {
          v13 = CFRetain(v9);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        dispatch_async_f(*(v8 + 32), v12, figPlaybackBoss_allRenderPipelinesCompletedDecodeForPreroll_f);
      }

      else
      {
        v11 = 0;
        while (!*(CFArrayGetValueAtIndex(*(v8 + 72), v11) + 238))
        {
          if (*(v8 + 80) <= ++v11)
          {
            goto LABEL_17;
          }
        }

        FigSimpleMutexUnlock();
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexUnlock();
    CFRelease(v8);
  }
}

void figPlaybackBoss_renderPipelinePrerollLost()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    FigSimpleMutexLock();
    FigSimpleMutexLock();
    if (!v1[16])
    {
      v1[107] = 1;
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexUnlock();

    CFRelease(v1);
  }
}

void figPlaybackBoss_renderPipelineLostDecoderState()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v0)
  {
    return;
  }

  v1 = v0;
  if (!v0[128])
  {
    FigSimpleMutexLock();
    FigSimpleMutexLock();
    if (*(v1 + 848))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(v1 + 80) >= 1)
    {
      v3 = 0;
      do
      {
        v4 = *(CFArrayGetValueAtIndex(*(v1 + 72), v3) + 10);
        v5 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v5)
        {
          v5(v4, 1);
        }

        ++v3;
      }

      while (v3 < *(v1 + 80));
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    v6 = *(v1 + 80);
    v7 = *(v1 + 432);
    if (v7 <= 1886530415)
    {
      if (v7 > 1886151032)
      {
        if (v7 != 1886151033 && v7 != 1886154860 && v7 != 1886155888)
        {
          goto LABEL_40;
        }

        FigSimpleMutexLock();
        if (*(v1 + 848))
        {
          v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMTimebaseGetTime(&v13, *(v1 + 120));
        bossSetMentorModesForTimeAndRate(v1, 0, v6, &v13, *(v1 + 440), *(v1 + 448), 2, 0, 0);
        goto LABEL_39;
      }

      if (v7 != 1768189029)
      {
        if (v7 != 1885435251)
        {
          goto LABEL_40;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (v7 <= 1919247480)
      {
        if (v7 == 1886530416)
        {
          v11 = *(v1 + 424);
          v13 = **&MEMORY[0x1E6960C70];
          figPlaybackBossStartPrerollAndSetPlayState(v1, &v13, *(v1 + 440), *(v1 + 448), 2, 1886530416, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v11);
          goto LABEL_40;
        }

        if (v7 != 1886544244)
        {
          if (v7 != 1886545266)
          {
            goto LABEL_40;
          }

          goto LABEL_33;
        }

        goto LABEL_28;
      }

      if (v7 == 1919247481)
      {
LABEL_33:
        *(v1 + 432) = 1885435251;
LABEL_34:
        memset(&v12, 0, sizeof(v12));
        FigPlaybackBossGetTime(v1, &v12);
        FigSimpleMutexLock();
        if (*(v1 + 848))
        {
          v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v13 = v12;
        bossSetMentorModesToScrub(v1, 0, v6, &v13, 0, 0);
LABEL_39:
        FigSimpleMutexUnlock();
        goto LABEL_40;
      }

      if (v7 != 1920298606)
      {
        if (v7 != 2003853684)
        {
LABEL_40:
          FigSimpleMutexUnlock();
          FigSimpleMutexUnlock();
          CFRelease(v1);
          return;
        }

LABEL_28:
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        goto LABEL_40;
      }
    }

    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_40;
  }

  CFRelease(v0);
}

void figPlaybackBoss_allRenderPipelinesCompletedDecodeForPreroll_f(uint64_t *a1)
{
  figPlaybackBossPrerollCompleted(*a1, 0);
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void figPlaybackBoss_mediaProcessorDidReachEndOfOutputData(uint64_t a1, uint64_t a2)
{
  queue[20] = *MEMORY[0x1E69E9840];
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  queue[0] = 0;
  if (v3)
  {
    v4 = v3;
    if (!*(v3 + 16))
    {
      FigSimpleMutexLock();
      if (v4[848])
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigBaseObject = FigRenderPipelineGetFigBaseObject(*(a2 + 80));
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(FigBaseObject, @"SourceSampleBufferQueue", *MEMORY[0x1E695E480], queue);
      }

      FigSimpleMutexUnlock();
      if (!queue[0] || !CMBufferQueueMarkEndOfData(queue[0]))
      {
        figPlaybackBoss_sendBecameIdleNotificationIfNowIdle(v4, 0);
      }
    }

    if (queue[0])
    {
      CFRelease(queue[0]);
    }

    CFRelease(v4);
  }
}

void figPlaybackBoss_mediaProcessorProcessSampleBufferFailed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v6)
  {
    v7 = v6;
    if (a5)
    {
      if (!*(v6 + 16))
      {
        v8 = CFGetTypeID(a5);
        if (v8 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(a5, @"Result");
          FigCFNumberGetSInt32();
          if (dword_1EAF16E78)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (Value)
          {
            v11 = CFGetTypeID(Value);
            if (v11 == CFNumberGetTypeID())
            {
              Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (Mutable)
              {
                v13 = Mutable;
                CFDictionarySetValue(Mutable, @"OSStatus", Value);
                CMNotificationCenterGetDefaultLocalCenter();
                CMNotificationCenterPostNotification();
                CFRelease(v13);
              }
            }
          }
        }
      }
    }

    CFRelease(v7);
  }
}

uint64_t figPlaybackBoss_editCursorServiceContainsScaledEditsInTimeRange(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  *&time1.start.value = *a2;
  time1.start.epoch = *(a2 + 16);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 0;
  }

  v16 = *&time1.start.value;
  *v17 = time1.start.epoch;
  v5 = v4(a1, &v16, &v18);
  v6 = v18;
  if (v5)
  {
    v11 = 0;
    if (!v18)
    {
      return v11;
    }

    goto LABEL_16;
  }

  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v7)
  {
    while (!v7(v6, &v16))
    {
      if ((BYTE12(v16) & 1) != 0 && (v17[20] & 1) != 0 && !*&v17[24] && (*&v17[8] & 0x8000000000000000) == 0)
      {
        *&time1.start.value = *&v17[8];
        time1.start.epoch = *&v17[24];
        time2 = *&v17[56];
        if (CMTimeCompare(&time1.start, &time2))
        {
          v11 = 1;
          goto LABEL_15;
        }
      }

      v8 = v18;
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v9)
      {
        if (!v9(v8, 1))
        {
          v10 = *(a2 + 16);
          *&time1.start.value = *a2;
          *&time1.start.epoch = v10;
          *&time1.duration.timescale = *(a2 + 32);
          CMTimeRangeGetEnd(&time2, &time1);
          time1 = *&v17[32];
          CMTimeRangeGetEnd(&v13, &time1);
          if (CMTimeCompare(&time2, &v13) > 0)
          {
            v16 = 0u;
            memset(v17, 0, sizeof(v17));
            v6 = v18;
            v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v7)
            {
              continue;
            }
          }
        }
      }

      break;
    }
  }

  v11 = 0;
LABEL_15:
  v6 = v18;
  if (v18)
  {
LABEL_16:
    CFRelease(v6);
  }

  return v11;
}

uint64_t bossRemoveNotificationListenersForTrack(uint64_t result)
{
  v1 = result;
  if (*(result + 421))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListeners();
    *(v1 + 421) = 0;
  }

  if (*(v1 + 422))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
    *(v1 + 422) = 0;
    FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v1 + 80));
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 8);
    result = VTable + 8;
    v4 = v5;
    if (*v5 >= 2uLL)
    {
      v6 = v4[8];
      if (v6)
      {
        result = v6(FigBaseObject);
      }
    }
  }

  if (*(v1 + 423))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListeners();
    *(v1 + 423) = 0;
  }

  return result;
}

void figPlaybackBoss_VideoCompositionProcessorSeekComplete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6960C70];
  v19 = *MEMORY[0x1E6960C70];
  v20 = *(MEMORY[0x1E6960C70] + 8);
  if (!a5)
  {
    return;
  }

  if (*(a2 + 16))
  {
    return;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a5))
  {
    return;
  }

  Value = CFDictionaryGetValue(a5, @"VideoCompositionProcessor_Order");
  if (!Value)
  {
    return;
  }

  v10 = Value;
  v11 = CFNumberGetTypeID();
  if (v11 != CFGetTypeID(v10))
  {
    return;
  }

  v12 = *(v5 + 12);
  v13 = *(v5 + 16);
  FigSimpleMutexLock();
  if (!*(a2 + 16))
  {
    FigSimpleMutexLock();
    if (!CFEqual(v10, *(a2 + 544)))
    {
      v14 = 0;
      v15 = 1;
LABEL_16:
      FigSimpleMutexUnlock();
      goto LABEL_17;
    }

    v19 = *(a2 + 480);
    v20 = *(a2 + 488);
    v12 = *(a2 + 492);
    v16 = *(a2 + 496);
    *(a2 + 480) = *v5;
    *(a2 + 496) = v13;
    if (*(a2 + 476))
    {
      v14 = *(a2 + 784);
      if (v14)
      {
        v15 = 0;
        *(a2 + 788) = 0;
        *(a2 + 784) = 0;
LABEL_15:
        v13 = v16;
        goto LABEL_16;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = 1;
    goto LABEL_15;
  }

  v14 = 0;
  v15 = 1;
LABEL_17:
  FigSimpleMutexUnlock();
  if ((v12 & 0x1D) == 1)
  {
    v17 = *(a2 + 120);
    v18.value = v19;
    v18.timescale = v20;
    v18.flags = v12;
    v18.epoch = v13;
    CMTimebaseSetTime(v17, &v18);
  }

  if ((v15 & 1) == 0)
  {
    figPlaybackBossPostSeekDidComplete(a2, v14, 0);
  }
}

void figPlaybackBossAdvanceForOverlappedPlaybackWithContext(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    os_retain(*(a1 + 792));
    voucher_adopt();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    v2 = voucher_adopt();

    os_release(v2);
  }
}

double bossCombineEditSegments@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 48);
  *(a3 + 32) = *(a2 + 32);
  *(a3 + 48) = v6;
  v7 = *(a2 + 80);
  v8 = *(a2 + 48);
  *(a3 + 64) = *(a2 + 64);
  *(a3 + 80) = v7;
  v9 = *(a2 + 16);
  *a3 = *a2;
  *(a3 + 16) = v9;
  memset(&v35, 0, sizeof(v35));
  memset(&v34, 0, sizeof(v34));
  *&time1.start.value = v8;
  time1.start.epoch = *(a2 + 64);
  *&time2.start.value = *a1;
  time2.start.epoch = *(a1 + 16);
  if (CMTimeCompare(&time1.start, &time2.start) < 0)
  {
    *(a3 + 48) = *a1;
    *&rhs.value = *a1;
    v10 = *(a2 + 64);
    v11 = *(a2 + 80);
    v12 = *(a2 + 32);
    *&time1.start.value = *(a2 + 48);
    *&time1.start.epoch = v10;
    *&time1.duration.timescale = v11;
    v13 = *(a2 + 16);
    *&time2.start.value = *a2;
    *&time2.start.epoch = v13;
    *(a3 + 64) = *(a1 + 16);
    rhs.epoch = *(a1 + 16);
    *&time2.duration.timescale = v12;
    CMTimeMapTimeFromRangeToRange(a3, &rhs, &time1, &time2);
    *&time1.start.value = *(a3 + 48);
    time1.start.epoch = *(a3 + 64);
    rhs = *(a2 + 48);
    CMTimeSubtract(&time2.start, &time1.start, &rhs);
    rhs = *(a2 + 72);
    CMTimeSubtract(&time1.start, &rhs, &time2.start);
    *(a3 + 72) = *&time1.start.value;
    *(a3 + 88) = time1.start.epoch;
    *&time1.start.value = *a3;
    time1.start.epoch = *(a3 + 16);
    rhs = *a2;
    CMTimeSubtract(&time2.start, &time1.start, &rhs);
    rhs = *(a2 + 24);
    CMTimeSubtract(&time1.start, &rhs, &time2.start);
    *(a3 + 24) = *&time1.start.value;
    *(a3 + 40) = time1.start.epoch;
  }

  v14 = *(a3 + 64);
  *&time1.start.value = *(a3 + 48);
  *&time1.start.epoch = v14;
  *&time1.duration.timescale = *(a3 + 80);
  CMTimeRangeGetEnd(&v35, &time1);
  v15 = *(a1 + 16);
  *&time1.start.value = *a1;
  *&time1.start.epoch = v15;
  *&time1.duration.timescale = *(a1 + 32);
  CMTimeRangeGetEnd(&v34, &time1);
  time1.start = v35;
  time2.start = v34;
  if (CMTimeCompare(&time1.start, &time2.start) >= 1)
  {
    memset(&rhs, 0, sizeof(rhs));
    time1.start = v35;
    time2.start = v34;
    CMTimeSubtract(&rhs, &time1.start, &time2.start);
    *&v29.value = *&rhs.value;
    v16 = *(a2 + 64);
    v17 = *(a2 + 80);
    v18 = *(a2 + 32);
    *&time1.start.value = *(a2 + 48);
    *&time1.start.epoch = v16;
    *&time1.duration.timescale = v17;
    v19 = *(a2 + 16);
    *&time2.start.value = *a2;
    *&time2.start.epoch = v19;
    memset(&dur, 0, sizeof(dur));
    v29.epoch = rhs.epoch;
    *&time2.duration.timescale = v18;
    CMTimeMapDurationFromRangeToRange(&dur, &v29, &time1, &time2);
    *&time2.start.value = *(a3 + 72);
    time2.start.epoch = *(a3 + 88);
    v29 = rhs;
    CMTimeSubtract(&time1.start, &time2.start, &v29);
    *(a3 + 72) = *&time1.start.value;
    *(a3 + 88) = time1.start.epoch;
    *&time2.start.value = *(a3 + 24);
    time2.start.epoch = *(a3 + 40);
    v29 = dur;
    CMTimeSubtract(&time1.start, &time2.start, &v29);
    *(a3 + 24) = *&time1.start.value;
    *(a3 + 40) = time1.start.epoch;
  }

  *&dur.value = *(a3 + 48);
  v20 = *(a1 + 16);
  *&time1.start.value = *a1;
  *&time1.start.epoch = v20;
  v21 = *(a1 + 48);
  *&time1.duration.timescale = *(a1 + 32);
  v22 = *(a1 + 64);
  v23 = *(a1 + 80);
  *&time2.start.value = v21;
  *&time2.start.epoch = v22;
  dur.epoch = *(a3 + 64);
  *&time2.duration.timescale = v23;
  CMTimeMapTimeFromRangeToRange(&rhs, &dur, &time1, &time2);
  *(a3 + 48) = *&rhs.value;
  *&dur.value = *(a3 + 72);
  v24 = *(a1 + 16);
  *&time1.start.value = *a1;
  *&time1.start.epoch = v24;
  v25 = *(a1 + 48);
  *&time1.duration.timescale = *(a1 + 32);
  v26 = *(a1 + 64);
  v27 = *(a1 + 80);
  *&time2.start.value = v25;
  *&time2.start.epoch = v26;
  *(a3 + 64) = rhs.epoch;
  dur.epoch = *(a3 + 88);
  *&time2.duration.timescale = v27;
  CMTimeMapDurationFromRangeToRange(&rhs, &dur, &time1, &time2);
  result = *&rhs.value;
  *(a3 + 72) = rhs;
  return result;
}

uint64_t figPlaybackBoss_timebaseRateChangedDeferredWork(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  if (CMTimebaseGetRate(*(a2 + 120)) != 0.0 && *(a2 + 432) == 1886151033)
  {
    v35 = **&MEMORY[0x1E6960C70];
    v25 = *&v35.value;
    epoch = v35.epoch;
    memset(&v34, 0, sizeof(v34));
    CMTimebaseGetTime(&v34, *(a2 + 120));
    *&v33.value = v25;
    v33.epoch = epoch;
    v32 = *(a2 + 516);
    memset(&v31, 0, sizeof(v31));
    v4 = *(a2 + 120);
    HostTimeClock = CMClockGetHostTimeClock();
    time = v34;
    CMSyncConvertTime(&v31, &time, v4, HostTimeClock);
    memset(&v30, 0, sizeof(v30));
    v6 = *(a2 + 120);
    v7 = CMClockGetHostTimeClock();
    time = v32;
    CMSyncConvertTime(&v30, &time, v6, v7);
    *&v29.value = v25;
    v29.epoch = epoch;
    FigCFDictionaryGetCMTimeIfPresent();
    if ((v35.flags & 1) == 0)
    {
      v35 = v34;
    }

    v8 = *(a2 + 120);
    v9 = CMClockGetHostTimeClock();
    time = v35;
    CMSyncConvertTime(&v29, &time, v8, v9);
    time = v29;
    time2 = v30;
    if (CMTimeCompare(&time, &time2) < 0)
    {
      memset(&v28, 0, sizeof(v28));
      time = v30;
      time2 = v31;
      CMTimeSubtract(&v28, &time, &time2);
      if (dword_1EAF16E78)
      {
        LODWORD(v27.value) = 0;
        LOBYTE(type.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *&v33.value = *&v28.value;
      v22 = v28.epoch;
    }

    else
    {
      v28 = **&MEMORY[0x1E6960CC0];
      FigSimpleMutexLock();
      if (*(a2 + 848))
      {
        LODWORD(v27.value) = 0;
        LOBYTE(type.value) = 0;
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v12 = *(a2 + 96);
      if ((v12 & 0x8000000000000000) == 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 72), v12);
        time.value = 0;
        FigBaseObject = FigRenderPipelineGetFigBaseObject(ValueAtIndex[10]);
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v15)
        {
          v15(FigBaseObject, @"UnpauseLatencyEstimate", *MEMORY[0x1E695E480], &time);
          if (time.value)
          {
            CMTimeMakeFromDictionary(&v28, time.value);
            CFRelease(time.value);
          }
        }
      }

      FigSimpleMutexUnlock();
      memset(&v27, 0, sizeof(v27));
      time2 = v29;
      type = v28;
      CMTimeAdd(&time, &time2, &type);
      time2 = v31;
      CMTimeSubtract(&v27, &time, &time2);
      if (dword_1EAF16E78)
      {
        LODWORD(type.value) = 0;
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = type.value;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = value;
        }

        else
        {
          v18 = value & 0xFFFFFFFE;
        }

        if (v18)
        {
          time = v35;
          Seconds = CMTimeGetSeconds(&time);
          time = v32;
          v20 = CMTimeGetSeconds(&time);
          time = v27;
          v21 = CMTimeGetSeconds(&time);
          LODWORD(time2.value) = 136316418;
          *(&time2.value + 4) = "figPlaybackBoss_timebaseRateChangedDeferredWork";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = a2;
          HIWORD(time2.epoch) = 2082;
          v37 = a2 + 850;
          v38 = 2048;
          v39 = Seconds;
          v40 = 2048;
          v41 = v20;
          v42 = 2048;
          v43 = v21;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *&v33.value = *&v27.value;
      v22 = v27.epoch;
    }

    v33.epoch = v22;
    if (*MEMORY[0x1E695FF58] == 1)
    {
      v23 = strncpy(&time, (a2 + 850), 8uLL);
      time = v34;
      CMTimeGetSeconds(v23);
      time = v33;
      CMTimeGetSeconds(&time);
      kdebug_trace();
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t bossCopyRenderPipelineCachedVideoFrames(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a1 + 132) && (v5 = 0, FigBaseObject = FigRenderPipelineGetFigBaseObject(a2), (v3 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && !v3(FigBaseObject, @"CachedVideoFrames", *MEMORY[0x1E695E480], &v5))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t bossTrackChangesDuringPlaybackRequireVCPUpdate(uint64_t a1, CFIndex a2, CFIndex capacity, int a4)
{
  if (!*(a1 + 600))
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v7 = Mutable;
    Limit = FigCFRangeGetLimit();
    if (a2 < Limit)
    {
      v9 = Limit;
      do
      {
        CFArrayGetValueAtIndex(*(a1 + 72), a2);
        FigCFArrayAppendInt32();
        ++a2;
      }

      while (v9 != a2);
    }

    HasAnySourceTracksInArray = FigVideoCompositionProcessorHasAnySourceTracksInArray(*(a1 + 600), v7);
    CFRelease(v7);
    if (HasAnySourceTracksInArray)
    {
      return 1;
    }
  }

  else
  {
    bossTrackChangesDuringPlaybackRequireVCPUpdate_cold_1();
  }

  return 0;
}

void figPlaybackBoss_AllMentorsPrerollCompleteWithContext(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*(v2 + 16))
  {
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *(v2 + 609) = 0;
  figPlaybackBoss_waitForCompletionOfPhase1AndStartPhase2(v2);
  v3 = a1[1];
  if (v3)
  {
LABEL_3:
    CFRelease(v3);
  }

LABEL_4:
  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t bossGetPresentationTimeAfterSteppingInEmptyEditSegment(CMTime *a1, CMTime *a2, int32_t a3, CMTime *a4, CMTime *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E6960C70];
  *&v26.value = *MEMORY[0x1E6960C70];
  v11 = *(MEMORY[0x1E6960C70] + 16);
  v26.epoch = v11;
  v22 = *&v26.value;
  *&v25.value = *&v26.value;
  v25.epoch = v11;
  CMTimeMake(&v26, 250, 1000);
  time = v26;
  CMTimeMultiply(&rhs, &time, a3);
  time = *a2;
  CMTimeAdd(&v25, &time, &rhs);
  rhs = v25;
  time = *a1;
  result = CMTimeCompare(&rhs, &time);
  if (result < 1)
  {
    rhs = v25;
    v21 = *MEMORY[0x1E6960CC0];
    *&time.value = *MEMORY[0x1E6960CC0];
    v13 = *(MEMORY[0x1E6960CC0] + 16);
    time.epoch = v13;
    result = CMTimeCompare(&rhs, &time);
    if ((result & 0x80000000) != 0)
    {
      *&v25.value = v21;
      v25.epoch = v13;
    }
  }

  else
  {
    v25 = *a1;
  }

  if ((a4->flags & 0x1D) == 1)
  {
    rhs = *a2;
    time = *a4;
    result = CMTimeCompare(&rhs, &time);
    if (!result)
    {
      *&v25.value = v22;
      v25.epoch = v11;
      goto LABEL_15;
    }

    *&rhs.value = v22;
    rhs.epoch = v11;
    *&time.value = v22;
    time.epoch = v11;
    if (a3 < 1)
    {
      if ((a3 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      time1 = v25;
      time2 = *a4;
      CMTimeMaximum(&rhs, &time1, &time2);
      time1 = rhs;
      *&time2.value = *&v25.value;
      epoch = v25.epoch;
    }

    else
    {
      time1 = v25;
      time2 = *a4;
      CMTimeMinimum(&rhs, &time1, &time2);
      time1 = v25;
      *&time2.value = *&rhs.value;
      epoch = rhs.epoch;
    }

    time2.epoch = epoch;
    CMTimeSubtract(&time, &time1, &time2);
LABEL_12:
    time1 = time;
    time2 = v26;
    result = CMTimeCompare(&time1, &time2);
    p_rhs = &rhs;
    if (result >= 0)
    {
      p_rhs = v10;
    }

    v25 = *p_rhs;
  }

LABEL_15:
  if (dword_1EAF16E78)
  {
    LODWORD(time1.value) = 0;
    LOBYTE(time2.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = time1.value;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, time2.value))
    {
      v18 = value;
    }

    else
    {
      v18 = value & 0xFFFFFFFE;
    }

    if (v18)
    {
      rhs = *a2;
      Seconds = CMTimeGetSeconds(&rhs);
      rhs = v25;
      v20 = CMTimeGetSeconds(&rhs);
      LODWORD(time.value) = 136315906;
      *(&time.value + 4) = "bossGetPresentationTimeAfterSteppingInEmptyEditSegment";
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = Seconds;
      HIWORD(time.epoch) = 1024;
      v28 = a3;
      v29 = 2048;
      v30 = v20;
      _os_log_send_and_compose_impl();
    }

    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *a5 = v25;
  return result;
}

uint64_t bossGetPresentationTimeAfterSampleCursorStepping(uint64_t a1, CMTime *a2, int a3, int a4, CMTime *a5)
{
  v55 = *MEMORY[0x1E69E9840];
  v50 = 0;
  cf = 0;
  v7 = *MEMORY[0x1E6960C70];
  *&v49.value = v7;
  v8 = *(MEMORY[0x1E6960C70] + 16);
  v49.epoch = v8;
  *&v48.value = v7;
  v48.epoch = v8;
  if (!a3)
  {
    a1 = 0;
    *&v49.value = *&a2->value;
    epoch = a2->epoch;
    goto LABEL_20;
  }

  v10 = a3;
  v44 = v7;
  time2 = *a2;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v12)
  {
    LODWORD(a1) = -12782;
LABEL_18:
    LODWORD(v47.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 4294954926;
    }

    goto LABEL_24;
  }

  time1 = time2;
  LODWORD(a1) = v12(a1, &time1, &cf, 0, 0);
  v13 = cf;
  if (a1)
  {
    v14 = 1;
  }

  else
  {
    v14 = cf == 0;
  }

  if (v14)
  {
    goto LABEL_18;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v15)
  {
    a1 = 4294954514;
LABEL_28:
    LODWORD(v47.value) = 0;
    LOBYTE(type.value) = 0;
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v26, type.value);
LABEL_61:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_24;
  }

  v16 = v15(v13, &v48);
  if (v16)
  {
    a1 = v16;
    goto LABEL_28;
  }

  v48.epoch = a2->epoch;
  time1 = v48;
  time2 = *a2;
  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  *&time2.value = v44;
  time2.epoch = v8;
  *&v47.value = v44;
  v47.epoch = v8;
  v30 = cf;
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v31)
  {
    a1 = 4294954514;
LABEL_46:
    LODWORD(rhs.value) = 0;
    v46 = OS_LOG_TYPE_DEFAULT;
    v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
    goto LABEL_61;
  }

  v32 = v31(v30, &time2);
  if (v32)
  {
    a1 = v32;
    goto LABEL_46;
  }

  time1 = time2;
  CMTimeMultiplyByRatio(&v47, &time1, 1, 2);
  type = v48;
  rhs = v47;
  CMTimeAdd(&time1, &type, &rhs);
  v47 = time1;
  time1 = *a2;
  type = v47;
  if (CMTimeCompare(&time1, &type) < 0)
  {
    goto LABEL_10;
  }

  v33 = cf;
  v34 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v34)
  {
    a1 = 4294954514;
LABEL_57:
    LODWORD(rhs.value) = 0;
    v46 = OS_LOG_TYPE_DEFAULT;
    v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = rhs.value;
    if (os_log_type_enabled(v41, v46))
    {
      v43 = value;
    }

    else
    {
      v43 = value & 0xFFFFFFFE;
    }

    if (!v43)
    {
      goto LABEL_61;
    }

    LODWORD(type.value) = 136315394;
    *(&type.value + 4) = "bossGetPresentationTimeAfterSampleCursorStepping";
    LOWORD(type.flags) = 1024;
    *(&type.flags + 2) = a1;
    goto LABEL_48;
  }

  v35 = v34(v33, 1, &v50);
  if (v35)
  {
    a1 = v35;
    goto LABEL_57;
  }

  if (v10 < 0 && !v50 && __CFADD__(v10++, 1))
  {
    goto LABEL_13;
  }

LABEL_10:
  v17 = cf;
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v18)
  {
    a1 = 4294954514;
    goto LABEL_30;
  }

  v19 = v18(v17, v10, &v50);
  if (v19)
  {
    a1 = v19;
LABEL_30:
    LODWORD(v47.value) = 0;
    LOBYTE(type.value) = 0;
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v28 = v47.value;
    if (os_log_type_enabled(v27, type.value))
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 & 0xFFFFFFFE;
    }

    if (!v29)
    {
      goto LABEL_61;
    }

LABEL_34:
    LODWORD(time2.value) = 136315394;
    *(&time2.value + 4) = "bossGetPresentationTimeAfterSampleCursorStepping";
    LOWORD(time2.flags) = 1024;
    *(&time2.flags + 2) = a1;
LABEL_48:
    _os_log_send_and_compose_impl();
    goto LABEL_61;
  }

  if (v50 != v10)
  {
    a1 = 4294954456;
    goto LABEL_24;
  }

LABEL_13:
  v20 = cf;
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v21)
  {
    a1 = 4294954514;
    goto LABEL_51;
  }

  v22 = v21(v20, &v49);
  if (v22)
  {
    a1 = v22;
LABEL_51:
    LODWORD(v47.value) = 0;
    LOBYTE(type.value) = 0;
    v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v39 = v47.value;
    if (os_log_type_enabled(v38, type.value))
    {
      v40 = v39;
    }

    else
    {
      v40 = v39 & 0xFFFFFFFE;
    }

    if (!v40)
    {
      goto LABEL_61;
    }

    goto LABEL_34;
  }

  if (a4)
  {
    time2 = v49;
    CMTimeConvertScale(&time1, &time2, 1000000000, kCMTimeRoundingMethod_RoundTowardPositiveInfinity);
    a1 = 0;
    *&v49.value = *&time1.value;
    epoch = time1.epoch;
LABEL_20:
    v49.epoch = epoch;
    goto LABEL_24;
  }

  a1 = 0;
LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  *a5 = v49;
  return a1;
}

uint64_t bossTrackShouldRemoveExcessFramesInRefreshIntervals(uint64_t a1, uint64_t a2, float a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a2 + 72) != 1986618469 || (*(a2 + 328) & 0x1D) != 1)
  {
    return 0;
  }

  if (*(a1 + 128))
  {
    return 1;
  }

  v7 = (a2 + 316);
  time = *(a2 + 288);
  Seconds = CMTimeGetSeconds(&time);
  *&time.value = *v7;
  time.epoch = *(a2 + 332);
  v4 = Seconds < CMTimeGetSeconds(&time) * *(a2 + 312) * a3 * 0.7;
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v4;
}

uint64_t figPlaybackBossTrackClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  gFigPlaybackBossTrackTypeID = result;
  return result;
}

void figPlaybackBossTrackFinalize(void *a1)
{
  bossRemoveNotificationListenersForTrack(a1);
  a1[27] = 0;
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
    a1[5] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
    a1[7] = 0;
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
    a1[8] = 0;
  }

  v6 = a1[23];
  if (v6)
  {
    CFRelease(v6);
    a1[23] = 0;
  }

  v7 = a1[21];
  if (v7)
  {
    CFRelease(v7);
    a1[21] = 0;
  }

  v8 = a1[18];
  if (v8)
  {
    VideoMentorInvalidate(v8);
  }

  v9 = a1[16];
  if (v9)
  {
    AudioMentorInvalidate(v9);
  }

  v10 = a1[25];
  if (v10)
  {
    EditMentorDispose(v10);
    a1[25] = 0;
  }

  v11 = a1[22];
  if (v11)
  {
    EditMentorDispose(v11);
    a1[22] = 0;
  }

  v12 = a1[20];
  if (v12)
  {
    EditMentorDispose(v12);
    a1[20] = 0;
  }

  v13 = a1[19];
  if (v13)
  {
    EditMentorDispose(v13);
    a1[19] = 0;
  }

  v14 = a1[17];
  if (v14)
  {
    EditMentorDispose(v14);
    a1[17] = 0;
  }

  v15 = a1[18];
  if (v15)
  {
    VideoMentorDispose(v15);
    a1[18] = 0;
  }

  v16 = a1[16];
  if (v16)
  {
    AudioMentorDispose(v16);
    a1[16] = 0;
  }

  v17 = a1[28];
  if (v17)
  {
    CFRelease(v17);
    a1[28] = 0;
  }

  v18 = a1[30];
  if (v18)
  {
    CFRelease(v18);
    a1[30] = 0;
  }

  v19 = a1[31];
  if (v19)
  {
    CFRelease(v19);
    a1[31] = 0;
  }

  v20 = a1[32];
  if (v20)
  {
    CFRelease(v20);
    a1[32] = 0;
  }

  v21 = a1[33];
  if (v21)
  {
    CFRelease(v21);
    a1[33] = 0;
  }

  v22 = a1[10];
  if (v22)
  {
    CFRelease(v22);
    a1[10] = 0;
  }

  v23 = a1[13];
  if (v23)
  {
    CFRelease(v23);
    a1[13] = 0;
  }

  v24 = a1[12];
  if (v24)
  {
    CFRelease(v24);
    a1[12] = 0;
  }

  v25 = a1[14];
  if (v25)
  {
    CFRelease(v25);
    a1[14] = 0;
  }

  v26 = a1[15];
  if (v26)
  {
    dispatch_release(v26);
    a1[15] = 0;
  }

  v27 = a1[6];
  if (v27)
  {
    CFRelease(v27);
    a1[6] = 0;
  }

  v28 = a1[35];
  if (v28)
  {
    CFRelease(v28);
    a1[35] = 0;
  }

  v29 = a1[2];
  if (v29)
  {
    CFRelease(v29);
    a1[2] = 0;
  }
}

__CFString *figPlaybackBossTrackCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPlaybackBossTrack %p: ", a1);
  v3 = "";
  if (*(a1 + 236))
  {
    v4 = "";
  }

  else
  {
    v4 = "not ";
  }

  if (*(a1 + 237))
  {
    v5 = "";
  }

  else
  {
    v5 = "not ";
  }

  if (!*(a1 + 238))
  {
    v3 = "not ";
  }

  CFStringAppendFormat(Mutable, 0, @"trackID %d, mediaType %c%c%c%c, renderPipeline %@, %swaiting for mentor completion, %swaiting for mentor preroll, %swaiting for decode for preroll", *(a1 + 24), HIBYTE(*(a1 + 72)), BYTE2(*(a1 + 72)), BYTE1(*(a1 + 72)), *(a1 + 72), *(a1 + 80), v4, v5, v3);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

__CFString *figPlaybackBossCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPlaybackBoss %p: ", a1);
  v3 = *(a1 + 40);
  if (*(a1 + 128))
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  v5 = *(a1 + 120);
  StateName = getStateName(*(a1 + 432));
  CFStringAppendFormat(Mutable, 0, @"formatReader %@, nonRealTimeMode %s, timebase %@, playState %s", v3, v4, v5, StateName);
  if (*(a1 + 80) >= 1)
  {
    v7 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v7);
      v10 = bswap32(ValueAtIndex[18]);
      CFStringAppendFormat(Mutable, 0, @"\n  %d: %.4s id %d, renderPipeline %p, makeDataReadyProcessor %p", v7++, &v10, ValueAtIndex[6], *(ValueAtIndex + 10), *(ValueAtIndex + 14));
    }

    while (*(a1 + 80) > v7);
  }

  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

void OUTLINED_FUNCTION_12_14(dispatch_once_t *a1)
{

  dispatch_once_f(a1, 0, figPlaybackBossTrackClassInitialize);
}

__n128 OUTLINED_FUNCTION_14_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __n128 a39, uint64_t a40)
{
  result = a39;
  *(v40 - 192) = a39;
  *(v40 - 176) = a40;
  return result;
}

CMTime *OUTLINED_FUNCTION_20_5@<X0>(uint64_t a1@<X8>, CMTime *rhs, uint64_t a3, CMTime *lhs, uint64_t a5, CMTime *a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 rhsa, uint64_t rhs_16, uint64_t a12, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 a30, uint64_t a31)
{
  lhs_16 = a1;
  rhsa = a30;
  rhs_16 = a31;

  return CMTimeAdd(&a17, &lhsa, &rhsa);
}

uint64_t OUTLINED_FUNCTION_21_6()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_27_6@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, CMTime *time2, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t a31, uint64_t a32, uint64_t a33, CMTime *time1, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t time1a)
{
  time2_16 = a1;

  return CMTimeCompare(&time1a, &time2a);
}

CFStringRef OUTLINED_FUNCTION_29_7(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return CFStringCreateWithFormat(v3, 0, a3);
}

__n128 OUTLINED_FUNCTION_31_6@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 - 192);
  *a1 = result;
  a1[1].n128_u64[0] = *(v1 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_38_4()
{

  return FigNotificationCenterAddWeakListeners();
}

uint64_t FigRenderPipelineGetTypeID()
{
  MEMORY[0x19A8D3660](&FigRenderPipelineGetClassID_sRegisterFigRenderPipelineTypeOnce, RegisterFigRenderPipelineType);

  return CMBaseClassGetCFTypeID();
}

void FigReportingStatsResetAll(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v4 = 0;
    context = a1;
    theSet = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    CFDictionaryApplyFunction(*(a1 + 40), frs_findKeysToRemoveDictApplier, &context);
    if (v4)
    {
      CFSetApplyFunction(theSet, frs_removeKeysSetApplier, a1);
    }

    else
    {
      frs_resetAll(a1);
    }

    if (theSet)
    {
      CFRelease(theSet);
    }
  }

  else
  {

    frs_resetAll(a1);
  }
}

uint64_t FigReportingDataSampleValueUpdateValue(void *a1, uint64_t a2)
{
  FigSimpleMutexLock();
  a1[3] = a2;
  v4 = a1[8];
  v5 = v4 + 1;
  a1[8] = v4 + 1;
  if (a1[5] < a2 || v4 == 0)
  {
    a1[5] = a2;
  }

  if (a1[4] > a2 || v4 == 0)
  {
    a1[4] = a2;
  }

  v8 = a1[6];
  v9 = (a2 + v8 * v4) / v5;
  a1[6] = v9;
  a1[7] = (((a2 - v8) * (a2 - v9) + v8 * v4) / v5);

  return FigSimpleMutexUnlock();
}

void frs_mergeValueDictApplier(void *key, const void *a2, uint64_t a3)
{
  if (!key)
  {
    return;
  }

  if (!a2)
  {
    return;
  }

  v4 = *a3;
  if (!*a3)
  {
    return;
  }

  v6 = *(a3 + 8);
  if (v6 <= 4113)
  {
    if (v6 == 4112)
    {
      v9 = *v4;
      v10 = v4[5];
      v11 = key;
      v12 = 4112;
    }

    else
    {
      if (v6 != 4113)
      {
        return;
      }

      v9 = v4[1];
      v10 = v4[5];
      v11 = key;
      v12 = 4113;
    }
  }

  else if (v6 == 4114)
  {
    v9 = v4[2];
    v10 = v4[5];
    v11 = key;
    v12 = 4114;
  }

  else
  {
    if (v6 != 4115)
    {
      if (v6 == 4116)
      {
        v7 = v4[4];
        CFDictionarySetValue(v4[5], key, 0x1014);
        CFDictionarySetValue(v7, key, a2);
        v8 = v4[6];

        CFSetSetValue(v8, key);
      }

      return;
    }

    v9 = v4[3];
    v10 = v4[5];
    v11 = key;
    v12 = 4115;
  }

  CFDictionarySetValue(v10, v11, v12);

  CFDictionarySetValue(v9, key, a2);
}

void frs_mergeFrozenKeys(uint64_t a1, CFSetRef theSet)
{
  v3[0] = a1;
  v3[1] = 0;
  if (!*(a1 + 56))
  {
    *(a1 + 56) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  }

  CFSetApplyFunction(theSet, frs_mergeValueSetApplier, v3);
}

uint64_t frsdv_registerClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

CFStringRef frsdv_copyFormattingDescription(void *a1)
{
  FigSimpleMutexLock();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigReportingDataSampleValue %p {\n\t%s = %lld\n\t%s = %lld\n\t%s = %lld\n\t%s = %lld\n\t%s = %lld\n\t%s = %lld\n}", a1, "CurrentValue", a1[3], "MinValue", a1[4], "MaxValue", a1[5], "SampleAverage", a1[6], "SampleVariance", a1[7], "SampleCount", a1[8]);
  if (!v2)
  {
    FigUserCrashWithMessage();
  }

  FigSimpleMutexUnlock();
  return v2;
}

void frs_findKeysToRemoveDictApplier(void *value, uint64_t a2, uint64_t a3)
{
  if (CFSetContainsValue(*(*a3 + 56), value))
  {
    *(a3 + 16) = 1;
  }

  else
  {
    v5 = *(a3 + 8);

    CFSetAddValue(v5, value);
  }
}

void frs_removeKeysSetApplier(const __CFString *key, __CFDictionary **a2)
{
  Value = CFDictionaryGetValue(a2[5], key);
  if (Value <= 4113)
  {
    if (Value == 4112)
    {
      v7 = *a2;
    }

    else
    {
      if (Value != 4113)
      {
        return;
      }

      v7 = a2[1];
    }
  }

  else if (Value == 4114)
  {
    v7 = a2[2];
  }

  else
  {
    if (Value != 4115)
    {
      if (Value == 4116)
      {
        CFDictionaryRemoveValue(a2[4], key);
        v6 = a2[6];
        v5 = a2 + 6;
        if (v6)
        {
          frs_removeKeysSetApplier_cold_1(key, v5);
        }
      }

      return;
    }

    v7 = a2[3];
  }

  CFDictionaryRemoveValue(v7, key);
}

void frs_mergeValueSetApplier(void *value, uint64_t a2)
{
  if (value)
  {
    if (*a2)
    {
      CFSetAddValue(*(*a2 + 56), value);
    }
  }
}

void OUTLINED_FUNCTION_0_51(const __CFDictionary *a1@<X0>, int a2@<W8>, uint64_t a3, int a4)
{
  a4 = a2;

  CFDictionaryApplyFunction(a1, frs_mergeValueDictApplier, &a3);
}

uint64_t OUTLINED_FUNCTION_3_33()
{

  return FigCFDictionarySetInt64();
}

CFStringRef OUTLINED_FUNCTION_4_38(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return CFStringCreateWithFormat(v3, 0, a3);
}

uint64_t OUTLINED_FUNCTION_5_33()
{

  return FigCFDictionarySetInt64();
}

void FigNetworkPathInformationSetHostIsReachable(__CFDictionary *a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, @"kFigNetworkPathInformationKey_HostIsReachable", *v2);
}

void FigNetworkPathInformationSetHostIsLocal(__CFDictionary *a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, @"kFigNetworkPathInformationKey_HostIsLocal", *v2);
}

void FigNetworkPathInformationSetDoesUseCellular(__CFDictionary *a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, @"kFigNetworkPathInformationKey_DoesUseCellular", *v2);
}

void FigNetworkPathInformationSetExpensive(__CFDictionary *a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, @"kFigNetworkPathInformationKey_IsExpensive", *v2);
}

uint64_t FigNetworkPathInformationIsHostReachable(uint64_t a1, char a2)
{
  if (FigCFDictionaryGetBooleanIfPresent() && (a2 & 1) == 0)
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

uint64_t FigNetworkPathInformationGetInterfaceType()
{
  if (FigCFDictionaryGetInt64IfPresent())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t state_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigTTMLDocumentWriterStateID = result;
  return result;
}

uint64_t FigTTMLDocumentWriterStateStartElement(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&element_GetTypeID_sRegisterElementOnce, element_Register);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      *(v6 + 16) = a2;
      *(v6 + 20) = 0;
      *(v6 + 24) = Mutable;
      CFArrayAppendValue(*(a1 + 16), v6);
      CFRelease(v6);
      return 0;
    }

    FigTTMLDocumentWriterStateStartElement_cold_1(v6, &v9);
    result = v9;
  }

  else
  {
    FigTTMLDocumentWriterStateStartElement_cold_2(&v10);
    result = v10;
  }

  if (!result)
  {
    CFArrayAppendValue(*(a1 + 16), 0);
    return 0;
  }

  return result;
}

uint64_t FigTTMLDocumentWriterStateCloseStartTag(uint64_t a1)
{
  v1 = state_peekTop(a1);
  if (v1)
  {
    v2 = v1;
    result = 0;
    v2[20] = 1;
  }

  else
  {
    FigTTMLDocumentWriterStateCloseStartTag_cold_1(&v4);
    return v4;
  }

  return result;
}

const void *state_peekTop(uint64_t a1)
{
  result = CFArrayGetCount(*(a1 + 16));
  if (result)
  {
    v3 = result - 1;
    v4 = *(a1 + 16);

    return CFArrayGetValueAtIndex(v4, v3);
  }

  return result;
}

uint64_t FigTTMLDocumentWriterStateSetAttribute(uint64_t a1, const void *a2, const void *a3)
{
  v5 = state_peekTop(a1);
  if (v5)
  {
    CFDictionaryAddValue(v5[3], a2, a3);
    return 0;
  }

  else
  {
    FigTTMLDocumentWriterStateSetAttribute_cold_1(&v7);
    return v7;
  }
}

uint64_t FigTTMLDocumentWriterStateEndElement(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 16));
  if (Count <= 0)
  {
    FigTTMLDocumentWriterStateEndElement_cold_1(&v4);
    return v4;
  }

  else
  {
    CFArrayRemoveValueAtIndex(*(a1 + 16), Count - 1);
    return 0;
  }
}

unsigned __int8 *FigTTMLDocumentWriterStateStartTagClosed(uint64_t a1)
{
  result = state_peekTop(a1);
  if (result)
  {
    return result[20];
  }

  return result;
}

void *FigTTMLDocumentWriterStateGetAttributes(uint64_t a1)
{
  result = state_peekTop(a1);
  if (result)
  {
    return result[3];
  }

  return result;
}

unsigned int *FigTTMLDocumentWriterStateGetCurrentElementType(uint64_t a1)
{
  result = state_peekTop(a1);
  if (result)
  {
    return result[4];
  }

  return result;
}

uint64_t FigTTMLDocumentWriterStateCreate(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *MEMORY[0x1E695E480];
    MEMORY[0x19A8D3660](&FigTTMLDocumentWriterStateGetTypeID_sRegisterFigTTMLDocumentWriterStateOnce, state_Register);
    Instance = _CFRuntimeCreateInstance();
    Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v6 = 0;
      Instance[2] = Mutable;
      *a2 = Instance;
    }

    else
    {
      v6 = FigSignalErrorAtGM();
      if (Instance)
      {
        CFRelease(Instance);
      }
    }
  }

  else
  {
    FigTTMLDocumentWriterStateCreate_cold_1(&v8);
    return v8;
  }

  return v6;
}

void state_Finalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

__CFString *state_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"[FigTTMLDocumentWriterState(%p)]", a1);
  Count = CFArrayGetCount(*(a1 + 16));
  if (Count >= 1)
  {
    v4 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v4 - 2);
      CFStringAppendFormat(Mutable, 0, @"\n  %@", ValueAtIndex);
      --v4;
    }

    while (v4 > 1);
  }

  return Mutable;
}

uint64_t element_Register()
{
  result = _CFRuntimeRegisterClass();
  sElementID = result;
  return result;
}

uint64_t element_Init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void element_Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

CFStringRef element_CopyFormattingDesc(uint64_t a1)
{
  v1 = "YES";
  if (!*(a1 + 20))
  {
    v1 = "NO";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[Element %p] elementType = %d startTagClosed: %s", a1, *(a1 + 16), v1);
}

CFStringRef element_CopyDebugDesc(uint64_t a1)
{
  v1 = "YES";
  if (!*(a1 + 20))
  {
    v1 = "NO";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[Element %p] elementType = %d startTagClosed: %s", a1, *(a1 + 16), v1);
}

void __FigUserExperienceSetCurrentRank_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v2[16] = v1;
  CFRelease(v2);
}

void __FigUserExperienceReportRateChange_block_invoke(uint64_t a1)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v3 = UpTimeNanoseconds;
  v4 = *(a1 + 32);
  if (*(a1 + 48))
  {
    if (!*(v4 + 40))
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        *(v5 + 56) = UpTimeNanoseconds;
        v6 = objc_autoreleasePoolPush();
        [*(v5 + 24) addStreamStart:0.0 play:(v3 - (*(v5 + 48) + *(v5 + 96))) / 1000000000.0];
        objc_autoreleasePoolPop(v6);
        *(v5 + 40) = 1;
        v4 = *(a1 + 32);
      }
    }

    *(v4 + 88) = v3;
    if (*(v4 + 69))
    {
      v7 = *(*(a1 + 40) + 96) + *(*(a1 + 40) + 48);
      [*(v4 + 24) addStreamStall:0 end:(*(v4 + 80) - v7) / 1000000000.0 quality:(v3 - v7) / 1000000000.0 weight:*(a1 + 52) / 100.0 params:1.0];
      v4 = *(a1 + 32);
    }

    else if (*(v4 + 68))
    {
      *(v4 + 96) += v3 - *(v4 + 72);
    }

    *(v4 + 68) = 0;
  }

  else if (*(v4 + 40))
  {
    *(v4 + 68) = 1;
    *(v4 + 72) = UpTimeNanoseconds;
    if (!*(v4 + 69) && *(v4 + 88) < UpTimeNanoseconds)
    {
      fus_completeVariantGuts(*(a1 + 40), *(v4 + 64), UpTimeNanoseconds);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {

    CFRelease(v8);
  }
}

void __FigUserExperienceReportStall_block_invoke(uint64_t a1)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v3 = *(a1 + 32);
  *(v3 + 69) = 1;
  if (!*(v3 + 68) || (v4 = *(v3 + 72), v4 >= UpTimeNanoseconds))
  {
    v4 = UpTimeNanoseconds;
  }

  *(v3 + 80) = v4;
  if (*(v3 + 88) < v4)
  {
    fus_completeVariantGuts(*(a1 + 40), *(v3 + 64), UpTimeNanoseconds);
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __FigUserExperienceReportSessionEnd_block_invoke(uint64_t a1)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(v4 + 69))
  {
    v5 = *(v3 + 96) + *(v3 + 48);
    [*(v4 + 24) addStreamStall:0 end:(*(v4 + 80) - v5) / 1000000000.0 quality:(UpTimeNanoseconds - v5) / 1000000000.0 weight:*(v4 + 64) / 100.0 params:1.0];
  }

  else if (!*(v4 + 68))
  {
    fus_completeVariantGuts(v3, *(v4 + 64), UpTimeNanoseconds);
  }

  [*(*(a1 + 40) + 24) addStreamEnd:(UpTimeNanoseconds - (*(*(a1 + 32) + 48) + *(*(a1 + 32) + 96))) / 1000000000.0];
  v6 = *(a1 + 32);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t FigUserExperienceCalculateScore(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  if (a1 && (v2 = *(a1 + 32), v6[0] = MEMORY[0x1E69E9820], v6[1] = 3221225472, v6[2] = __FigUserExperienceCalculateScore_block_invoke, v6[3] = &unk_1E7482510, v6[4] = &v7, v6[5] = a1, dispatch_sync(v2, v6), (v3 = v8[5]) != 0))
  {
    FPSupport_ReportAlgosScoreToSymptomLog(*(a1 + 16), v3);
    v4 = v8[5];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return 0;
}

void sub_19651E2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __FigUserExperienceCalculateScore_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 40) = [*(*(a1 + 40) + 24) scoreStreaming:0];
  v3 = *(*(*(a1 + 32) + 8) + 40);

  objc_autoreleasePoolPop(v2);
}

void sub_19651E37C(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x19651E35CLL);
}

uint64_t FigUserExperienceScorerCreate(const void *a1, void *a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  *a2 = 0;
  if (FigUserExperienceScorerGetClassID_sRegisterFigUserExperienceScorerTypeOnce != -1)
  {
    FigUserExperienceScorerCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    v6 = objc_autoreleasePoolPush();
    v5[3] = objc_alloc_init(getNWSAlgosStreamScoreClass[0]());
    objc_autoreleasePoolPop(v6);
    if (v5[3] && (v7 = dispatch_queue_create("com.apple.coremedia.uxscorer.work", 0), (v5[4] = v7) != 0))
    {
      if (a1)
      {
        v8 = CFRetain(a1);
      }

      else
      {
        v8 = 0;
      }

      v5[2] = v8;
      v9 = 0;
      v5[6] = FigGetUpTimeNanoseconds();
      *a2 = v5;
    }

    else
    {
      v9 = FigSignalErrorAtGM();
      if (v9)
      {
        CFRelease(v5);
      }
    }
  }

  else
  {
    FigUserExperienceScorerCreate_cold_2(&v11);
    return v11;
  }

  return v9;
}

uint64_t __FigUserExperienceScorerGetClassID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  sFigUserExperienceScorerID = result;
  return result;
}

double fus_Init(uint64_t a1)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void fus_Finalize(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {

    CFRelease(v4);
  }
}

Class initNWSAlgosStreamScore()
{
  if (NetworkScoreLibrary_sOnce != -1)
  {
    initNWSAlgosStreamScore_cold_1();
  }

  result = objc_getClass("NWSAlgosStreamScore");
  classNWSAlgosStreamScore = result;
  getNWSAlgosStreamScoreClass[0] = NWSAlgosStreamScoreFunction;
  return result;
}

void *__NetworkScoreLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/NetworkScore.framework/NetworkScore", 2);
  NetworkScoreLibrary_sLib = result;
  return result;
}

uint64_t FigGaplessInfoGetDefaultAudioPrimingFrameCount(const opaqueCMFormatDescription *a1)
{
  MostCompatibleFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(a1);
  if (MostCompatibleFormat)
  {
    mFormatID = MostCompatibleFormat->mASBD.mFormatID;

    return figi_GetDefaultNumAudioPrimingFrames(mFormatID);
  }

  else
  {
    FigGaplessInfoGetDefaultAudioPrimingFrameCount_cold_1();
    return 0;
  }
}

uint64_t figi_GetDefaultNumAudioPrimingFrames(int a1)
{
  v1 = 2048;
  v2 = 2112;
  if (a1 > 1667330146)
  {
    if (a1 > 1902207847)
    {
      if (a1 <= 2053202274)
      {
        if (a1 != 1902207848 && a1 != 1902207856)
        {
          v3 = 1902211171;
LABEL_12:
          if (a1 != v3)
          {
            return 0;
          }

          return v1;
        }

        return 4224;
      }

      if (a1 == 2053202275)
      {
        return v2;
      }

      if (a1 == 2053202792)
      {
        return 4224;
      }

      v4 = 2053202800;
LABEL_28:
      if (a1 == v4)
      {
        return 4224;
      }

      return 0;
    }

    if (a1 <= 1885430631)
    {
      if (a1 == 1667330147)
      {
        return v1;
      }

      v5 = 1885430115;
    }

    else
    {
      if (a1 == 1885430632 || a1 == 1885430640)
      {
        return 4224;
      }

      v5 = 1902207331;
    }

LABEL_34:
    if (a1 == v5)
    {
      return v2;
    }

    return 0;
  }

  if (a1 <= 1633772395)
  {
    if (a1 > 1633772319)
    {
      if (a1 == 1633772320)
      {
        return v2;
      }

      if (a1 == 1633772389)
      {
        return 256;
      }

      v4 = 1633772392;
      goto LABEL_28;
    }

    if (a1 == 778924083)
    {
      return 0;
    }

    v5 = 1633771875;
    goto LABEL_34;
  }

  if (a1 <= 1667326306)
  {
    if (a1 == 1633772396)
    {
      return 512;
    }

    if (a1 != 1633772400)
    {
      v3 = 1634754915;
      goto LABEL_12;
    }

    return 4224;
  }

  if (a1 != 1667326307)
  {
    if (a1 != 1667326824)
    {
      v4 = 1667326832;
      goto LABEL_28;
    }

    return 4224;
  }

  return v2;
}

CMTime *FigGaplessInfoGetDefaultAudioPrimingDuration@<X0>(const opaqueCMFormatDescription *a1@<X0>, CMTime *a2@<X8>)
{
  MostCompatibleFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(a1);
  v4 = MEMORY[0x1E6960CC0];
  *&a2->value = *MEMORY[0x1E6960CC0];
  a2->epoch = *(v4 + 16);
  if (!MostCompatibleFormat)
  {
    return FigGaplessInfoGetDefaultAudioPrimingDuration_cold_2();
  }

  mSampleRate = MostCompatibleFormat->mASBD.mSampleRate;
  if (MostCompatibleFormat->mASBD.mSampleRate <= 0.0)
  {
    return FigGaplessInfoGetDefaultAudioPrimingDuration_cold_1();
  }

  DefaultNumAudioPrimingFrames = figi_GetDefaultNumAudioPrimingFrames(MostCompatibleFormat->mASBD.mFormatID);

  return CMTimeMake(a2, DefaultNumAudioPrimingFrames, (mSampleRate + 0.5));
}

uint64_t FigGaplessInfoGetDefaultBonusAudioPrimingPacketCount(const opaqueCMFormatDescription *a1)
{
  result = CMAudioFormatDescriptionGetMostCompatibleFormat(a1);
  if (result)
  {
    v2 = result;
    result = figi_GetDefaultNumAudioPrimingFrames(*(result + 8));
    if (result)
    {
      v3 = *(v2 + 20);
      if (v3)
      {
        return (result / v3);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFMutableDictionaryRef FigGaplessInfoCreateForLaterEnhancement(int a1, int a2, uint64_t a3)
{
  if (!(a2 | a1) && !a3)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a1)
  {
    FigCFDictionarySetInt32();
  }

  if (a2)
  {
    FigCFDictionarySetInt32();
  }

  if (a3)
  {
    FigCFDictionarySetInt64();
  }

  return Mutable;
}

CFMutableDictionaryRef FigGaplessInfoCreateEnhanced_CorrectingWithUneditedDuration(const AudioFormatListItem *a1, CMTime *a2, int a3, int a4, int64_t a5)
{
  if (!a1 || !(a4 | a3) && !a5)
  {
    return 0;
  }

  v10 = *a2;
  v11 = 0;
  if (!figi_ComputeEnhancementsWithDurations(a1, a5, &v10, &v11 + 1, &v11))
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    if (a3)
    {
      FigCFDictionarySetInt32();
    }

    if (a4)
    {
      FigCFDictionarySetInt32();
    }

    if (a5)
    {
      FigCFDictionarySetInt64();
    }

    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
  }

  return Mutable;
}

const AudioFormatListItem *figi_ComputeEnhancementsWithDurations(const AudioFormatListItem *result, int64_t a2, CMTime *a3, int32_t *a4, UInt32 *a5)
{
  v14 = **&MEMORY[0x1E6960C70];
  if (result)
  {
    v9 = result;
    result = CMAudioFormatDescriptionGetMostCompatibleFormat(result);
    if (result)
    {
      v10 = (result->mASBD.mSampleRate + 0.5);
      mFramesPerPacket = result->mASBD.mFramesPerPacket;
      CMTimeMake(&v14, a2, v10);
      if ((a3->flags & 0x1D) == 1)
      {
        time1 = v14;
        v12 = *a3;
        if (CMTimeCompare(&time1, &v12) >= 1)
        {
          result = CMAudioFormatDescriptionGetRichestDecodableFormat(v9);
          if (!result)
          {
            return result;
          }

          v10 = (result->mASBD.mSampleRate + 0.5);
          mFramesPerPacket = result->mASBD.mFramesPerPacket;
        }
      }

      *a4 = v10;
      *a5 = mFramesPerPacket;
      return 1;
    }
  }

  return result;
}

CFMutableDictionaryRef FigGaplessInfoCopyAndEnhance_CorrectingWithTrackReader(const AudioFormatListItem *a1, uint64_t a2, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"FramesPerSecond");
  v7 = CFDictionaryGetValue(theDict, @"FramesPerPacket");
  if (Value)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    return CFRetain(theDict);
  }

  v15 = 0;
  v18 = 0;
  v17 = **&MEMORY[0x1E6960C70];
  FigCFDictionaryGetInt64IfPresent();
  dictionaryRepresentation.value = 0;
  v9 = *MEMORY[0x1E695E480];
  FigBaseObject = FigTrackReaderGetFigBaseObject(a2);
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(FigBaseObject, @"UneditedTrackDuration", v9, &dictionaryRepresentation);
    if (dictionaryRepresentation.value)
    {
      CMTimeMakeFromDictionary(&v17, dictionaryRepresentation.value);
      CFRelease(dictionaryRepresentation.value);
    }
  }

  dictionaryRepresentation = v17;
  if (!figi_ComputeEnhancementsWithDurations(a1, v18, &dictionaryRepresentation, &v15 + 1, &v15))
  {
    return CFRetain(theDict);
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v9, 0, theDict);
  if (!MutableCopy)
  {
    return CFRetain(theDict);
  }

  v13 = MutableCopy;
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  return v13;
}

uint64_t FigGaplessInfoFetchiTunesParametersFromMetadataReader(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    cf = 0;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v4)
    {
      v5 = *MEMORY[0x1E695E480];
      if (!v4(a1, @"itlk", @"com.apple.iTunes.iTunSMPB", 0, *MEMORY[0x1E695E480], &cf, 0) && cf != 0)
      {
        TypeID = CFStringGetTypeID();
        if (TypeID == CFGetTypeID(cf))
        {
          v10 = CFRetain(cf);
        }

        else
        {
          v11 = CFDataGetTypeID();
          if (v11 != CFGetTypeID(cf))
          {
            goto LABEL_25;
          }

          BytePtr = CFDataGetBytePtr(cf);
          Length = CFDataGetLength(cf);
          v10 = CFStringCreateWithBytes(v5, BytePtr, Length, 0x8000100u, 0);
        }

        v14 = v10;
        if (v10)
        {
          v15 = CFStringGetLength(v10);
          if (v15 >= 0x2C)
          {
            v16 = v15;
            v17 = malloc_type_malloc(v15 + 1, 0x8A334847uLL);
            if (v17)
            {
              v18 = v17;
              if (CFStringGetCString(v14, v17, v16 + 1, 0))
              {
                v18[44] = 0;
                v19 = (a2 + 4);
                if (sscanf(v18 + 10, "%08x %08x %016llx", a2, a2 + 4, a2 + 8) == 3 && *(a2 + 8) >= 1)
                {
                  if ((*a2 & 0x80000000) != 0)
                  {
                    *a2 = 0;
                  }

                  if ((*v19 & 0x80000000) != 0)
                  {
                    *v19 = 0;
                  }

                  v7 = 1;
                  goto LABEL_30;
                }

                fig_log_get_emitter();
                FigSignalErrorAtGM();
              }

              v7 = 0;
LABEL_30:
              free(v18);
              goto LABEL_31;
            }

            fig_log_get_emitter();
            FigSignalErrorAtGM();
          }

          v7 = 0;
LABEL_31:
          CFRelease(v14);
          goto LABEL_32;
        }

LABEL_25:
        v7 = 0;
LABEL_32:
        CFRelease(cf);
        return v7;
      }
    }
  }

  return 0;
}

uint64_t FigGaplessInfoCreateGradualDecoderRefresh(const opaqueCMFormatDescription *a1)
{
  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(a1);
  if (!RichestDecodableFormat)
  {
    return 0;
  }

  mFormatID = RichestDecodableFormat->mASBD.mFormatID;
  if (mFormatID <= 1885430114)
  {
    if (mFormatID <= 1667326306)
    {
      if (mFormatID <= 1633772391)
      {
        if (mFormatID > 1633772319)
        {
          if (mFormatID == 1633772320)
          {
            goto LABEL_59;
          }

          v6 = 25445;
        }

        else
        {
          if (mFormatID == 778924083)
          {
            goto LABEL_59;
          }

          v6 = 24931;
        }
      }

      else
      {
        if (mFormatID > 1633772399)
        {
          if (mFormatID == 1633772400 || mFormatID == 1633889587)
          {
            goto LABEL_59;
          }

          v4 = 11571;
          goto LABEL_38;
        }

        if (mFormatID == 1633772392)
        {
          goto LABEL_59;
        }

        v6 = 25452;
      }

      v3 = v6 | 0x61610000;
      goto LABEL_58;
    }

    if (mFormatID > 1667574578)
    {
      if (mFormatID <= 1700997938)
      {
        if (mFormatID == 1667574579)
        {
          goto LABEL_59;
        }

        v3 = 1667575091;
      }

      else
      {
        if (mFormatID == 1700997939 || mFormatID == 1700998451)
        {
          goto LABEL_59;
        }

        v3 = 1869641075;
      }

LABEL_58:
      if (mFormatID == v3)
      {
        goto LABEL_59;
      }

      return 0;
    }

    if (mFormatID > 1667326823)
    {
      if (mFormatID == 1667326824)
      {
        goto LABEL_59;
      }

      v5 = 1667326832;
      goto LABEL_51;
    }

    if (mFormatID == 1667326307)
    {
      goto LABEL_59;
    }

    v4 = 25395;
LABEL_38:
    v3 = v4 | 0x63610000;
    goto LABEL_58;
  }

  if (mFormatID <= 1902207855)
  {
    if (mFormatID <= 1885547314)
    {
      if (mFormatID <= 1885430631)
      {
        if (mFormatID == 1885430115)
        {
          goto LABEL_59;
        }

        v3 = 1885430579;
        goto LABEL_58;
      }

      if (mFormatID == 1885430632)
      {
        goto LABEL_59;
      }

      v5 = 1885430640;
    }

    else
    {
      if (mFormatID <= 1902207330)
      {
        if (mFormatID == 1885547315)
        {
          goto LABEL_59;
        }

        v3 = 1885692723;
        goto LABEL_58;
      }

      if (mFormatID == 1902207331 || mFormatID == 1902207795)
      {
        goto LABEL_59;
      }

      v5 = 1902207848;
    }

    goto LABEL_51;
  }

  if (mFormatID > 2053202738)
  {
    if (mFormatID > 2053202799)
    {
      if (mFormatID == 2053202800 || mFormatID == 2053319475)
      {
        goto LABEL_59;
      }

      v3 = 2053464883;
      goto LABEL_58;
    }

    if (mFormatID == 2053202739)
    {
      goto LABEL_59;
    }

    v5 = 2053202792;
LABEL_51:
    if (mFormatID == v5)
    {
      goto LABEL_59;
    }

    return 0;
  }

  if (mFormatID <= 1902469938)
  {
    if (mFormatID == 1902207856)
    {
      goto LABEL_59;
    }

    v3 = 1902324531;
    goto LABEL_58;
  }

  if (mFormatID != 1902469939 && mFormatID != 1987015266)
  {
    v3 = 2053202275;
    goto LABEL_58;
  }

LABEL_59:

  return FigCFNumberCreateSInt32();
}

uint64_t FigTrackReaderCreateSegmentData(uint64_t a1, uint64_t a2, int a3, __CFData **a4)
{
  v19 = 0;
  v18 = **&MEMORY[0x1E6960C70];
  v4 = *(MEMORY[0x1E6960C98] + 16);
  v15 = *MEMORY[0x1E6960C98];
  v16 = v4;
  v17 = *(MEMORY[0x1E6960C98] + 32);
  if (!a1)
  {
    FigTrackReaderCreateSegmentData_cold_2(v13);
    return LODWORD(v13[0]);
  }

  if (!a2)
  {
    FigTrackReaderCreateSegmentData_cold_1(v13);
    return LODWORD(v13[0]);
  }

  if (a3)
  {
    FigGaplessInfoGetTrackGaplessSourceTimeRange(a1, a2, &v15);
  }

  FigBaseObject = FigTrackReaderGetFigBaseObject(a2);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9 && (v9(FigBaseObject, @"EditCursorService", *MEMORY[0x1E695E480], &v19), (v10 = v19) != 0) || (TrackUneditedDurationWithPossibleFallback = FigGetTrackUneditedDurationWithPossibleFallback(a1, a2, &v18), v10 = v19, !TrackUneditedDurationWithPossibleFallback))
  {
    v14 = v18;
    v13[0] = v15;
    v13[1] = v16;
    v13[2] = v17;
    TrackUneditedDurationWithPossibleFallback = FigGaplessInfoCreateSegmentDataForTrack(v10, &v14, v13, a4);
    v10 = v19;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return TrackUneditedDurationWithPossibleFallback;
}

uint64_t FigGaplessInfoAdjustEditSegmentAccordingtoGaplessAudioTimeRange@<X0>(CMTime *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v79 = *MEMORY[0x1E69E9840];
  value = a1->value;
  flags = a1->flags;
  timescale = a1->timescale;
  epoch = a1->epoch;
  v9 = a1[1].timescale;
  v8 = a1[1].flags;
  v11 = a1[1].epoch;
  v10 = a1[2].value;
  v12 = a1[2].timescale;
  v13 = a1[2].flags;
  v14 = a1[2].epoch;
  v16 = a1[3].flags;
  v67 = a1[3].timescale;
  v17 = a1[3].epoch;
  v20 = a1[1].value;
  result = &a1[1];
  v19 = v20;
  v75 = v10;
  v76 = v12;
  v23 = a1[3].value;
  v22 = a1 + 3;
  v21 = v23;
  v24 = MEMORY[0x1E6960CC0];
  v25 = *(MEMORY[0x1E6960CC0] + 16);
  *(a5 + 16) = v25;
  v26 = *v24;
  *a5 = *v24;
  if (!a4)
  {
    return FigGaplessInfoAdjustEditSegmentAccordingtoGaplessAudioTimeRange_cold_1();
  }

  if ((flags & 0x1D) == 1 || (v13 & 1) == 0 || (v16 & 1) == 0 || v17 || v21 < 0)
  {
    v58 = v21;
    v57 = v22;
    v66 = result;
    v63 = v17;
    v64 = v14;
    v65 = v13;
    v62 = v16;
    if (*(a3 + 36))
    {
      *&time1.start.value = *(a3 + 24);
      time1.start.epoch = *(a3 + 40);
      *&time2.value = v26;
      time2.epoch = v25;
      v30 = a5;
      v31 = v11;
      v32 = v8;
      v33 = flags;
      v34 = v19;
      v35 = v9;
      v36 = epoch;
      v37 = CMTimeCompare(&time1.start, &time2);
      epoch = v36;
      v9 = v35;
      v19 = v34;
      flags = v33;
      v8 = v32;
      v11 = v31;
      a5 = v30;
      if (v37 >= 1)
      {
        memset(&time2, 0, sizeof(time2));
        v38 = *(a3 + 64);
        *&time1.start.value = *(a3 + 48);
        *&time1.start.epoch = v38;
        *&time1.duration.timescale = *(a3 + 80);
        CMTimeRangeGetEnd(&time2, &time1);
        rhs = *(a3 + 72);
        value = *MEMORY[0x1E6960C98];
        flags = *(MEMORY[0x1E6960C98] + 12);
        timescale = *(MEMORY[0x1E6960C98] + 8);
        v39 = *(MEMORY[0x1E6960C98] + 16);
        v19 = *(MEMORY[0x1E6960C98] + 24);
        v9 = *(MEMORY[0x1E6960C98] + 32);
        v8 = *(MEMORY[0x1E6960C98] + 36);
        v40 = *(MEMORY[0x1E6960C98] + 40);
        v75 = time2.value;
        v41 = time2.flags;
        v76 = time2.timescale;
        v42 = time2.epoch;
        lhs = *v57;
        result = CMTimeSubtract(&time1.start, &lhs, &rhs);
        epoch = v39;
        v11 = v40;
        v14 = v42;
        v13 = v41;
        v21 = time1.start.value;
        v16 = time1.start.flags;
        v67 = time1.start.timescale;
        v29 = time1.start.epoch;
        *v30 = *&v66->value;
        *(v30 + 16) = v66->epoch;
        goto LABEL_41;
      }
    }

    memset(&time2, 0, sizeof(time2));
    time1.start.value = value;
    time1.start.timescale = timescale;
    time1.start.flags = flags;
    v43 = epoch;
    time1.start.epoch = epoch;
    time1.duration.value = v19;
    time1.duration.timescale = v9;
    time1.duration.flags = v8;
    time1.duration.epoch = v11;
    result = CMTimeRangeGetEnd(&time2, &time1);
    v44 = a2;
    v73 = *(a2 + 24);
    v45 = *(a2 + 36);
    v74 = *(a2 + 32);
    v46 = *(a2 + 40);
    if (*(a2 + 12))
    {
      if (v45)
      {
        v47 = *(a2 + 16);
        *&time1.start.value = *a2;
        *&time1.start.epoch = v47;
        *&time1.duration.timescale = *(a2 + 32);
        CMTimeRangeGetEnd(&lhs, &time1);
        v44 = a2;
        v73 = lhs.value;
        v45 = lhs.flags;
        v74 = lhs.timescale;
        v46 = lhs.epoch;
      }

      v56 = v46;
      v60 = v45;
      *&time1.start.value = *v44;
      time1.start.epoch = *(v44 + 16);
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = flags;
      lhs.epoch = v43;
      result = CMTimeCompare(&time1.start, &lhs);
      if (result < 1)
      {
        epoch = v43;
      }

      else
      {
        *&time1.start.value = *v44;
        time1.start.epoch = *(v44 + 16);
        lhs = time2;
        result = CMTimeCompare(&time1.start, &lhs);
        if ((result & 0x80000000) != 0)
        {
          memset(&lhs, 0, sizeof(lhs));
          *&time1.start.value = *v44;
          time1.start.epoch = *(v44 + 16);
          rhs.value = value;
          rhs.timescale = timescale;
          rhs.flags = flags;
          rhs.epoch = v43;
          CMTimeSubtract(&lhs, &time1.start, &rhs);
          value = *v44;
          flags = *(v44 + 12);
          timescale = *(v44 + 8);
          v48 = *(v44 + 16);
          rhs.value = v19;
          rhs.timescale = v9;
          rhs.flags = v8;
          rhs.epoch = v11;
          start = lhs;
          CMTimeSubtract(&time1.start, &rhs, &start);
          v19 = time1.start.value;
          v9 = time1.start.timescale;
          v8 = time1.start.flags;
          v11 = time1.start.epoch;
          time1.start.value = value;
          time1.start.timescale = timescale;
          time1.start.flags = flags;
          time1.start.epoch = v48;
          time1.duration.value = v19;
          time1.duration.timescale = v9;
          time1.duration.flags = v8;
          time1.duration.epoch = v11;
          result = CMTimeRangeGetEnd(&rhs, &time1);
          epoch = v48;
          v16 = v62;
          time2 = rhs;
        }

        else
        {
          value = *MEMORY[0x1E6960C98];
          flags = *(MEMORY[0x1E6960C98] + 12);
          timescale = *(MEMORY[0x1E6960C98] + 8);
          epoch = *(MEMORY[0x1E6960C98] + 16);
          v19 = *(MEMORY[0x1E6960C98] + 24);
          v9 = *(MEMORY[0x1E6960C98] + 32);
          v8 = *(MEMORY[0x1E6960C98] + 36);
          v11 = *(MEMORY[0x1E6960C98] + 40);
        }
      }

      v45 = v60;
      v46 = v56;
    }

    else
    {
      epoch = v43;
    }

    v49 = flags & 0x1D;
    v13 = v65;
    v50 = v63;
    v14 = v64;
    v51 = v66;
    if (v49 == 1 && (v45 & 1) != 0)
    {
      v61 = epoch;
      time1.start.value = v73;
      time1.start.timescale = v74;
      time1.start.flags = v45;
      time1.start.epoch = v46;
      lhs = time2;
      v52 = v45;
      v53 = v46;
      if ((CMTimeCompare(&time1.start, &lhs) & 0x80000000) == 0)
      {
LABEL_26:
        v51 = v66;
        goto LABEL_35;
      }

      time1.start.value = v73;
      time1.start.timescale = v74;
      time1.start.flags = v52;
      time1.start.epoch = v53;
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = flags;
      lhs.epoch = v61;
      result = CMTimeCompare(&time1.start, &lhs);
      if (result > 0)
      {
        memset(&time1, 0, 24);
        lhs = time2;
        rhs.value = v73;
        rhs.timescale = v74;
        rhs.flags = v52;
        rhs.epoch = v53;
        CMTimeSubtract(&time1.start, &lhs, &rhs);
        rhs.value = v19;
        rhs.timescale = v9;
        rhs.flags = v8;
        rhs.epoch = v11;
        start = time1.start;
        CMTimeSubtract(&lhs, &rhs, &start);
        v19 = lhs.value;
        v9 = lhs.timescale;
        v8 = lhs.flags;
        v11 = lhs.epoch;
        goto LABEL_26;
      }

      value = *MEMORY[0x1E6960C98];
      flags = *(MEMORY[0x1E6960C98] + 12);
      timescale = *(MEMORY[0x1E6960C98] + 8);
      epoch = *(MEMORY[0x1E6960C98] + 16);
      v19 = *(MEMORY[0x1E6960C98] + 24);
      v9 = *(MEMORY[0x1E6960C98] + 32);
      v8 = *(MEMORY[0x1E6960C98] + 36);
      v11 = *(MEMORY[0x1E6960C98] + 40);
      v49 = flags & 0x1D;
      v13 = v65;
      v50 = v63;
      v14 = v64;
      v16 = v62;
      v51 = v66;
    }

    if (v49 != 1 && (v13 & 1) != 0 && (v16 & 1) != 0 && !v50)
    {
      v21 = v58;
      if ((v58 & 0x8000000000000000) == 0)
      {
        v29 = 0;
LABEL_40:
        *a5 = v19;
        *(a5 + 8) = v9;
        *(a5 + 12) = v8;
        *(a5 + 16) = v11;
        goto LABEL_41;
      }
    }

    v61 = epoch;
LABEL_35:
    time1.start.value = v19;
    time1.start.timescale = v9;
    time1.start.flags = v8;
    time1.start.epoch = v11;
    lhs = *v51;
    v54 = v51;
    result = CMTimeCompare(&time1.start, &lhs);
    if ((result & 0x80000000) != 0)
    {
      *&time1.start.value = *&v57->value;
      time1.start.epoch = v57->epoch;
      lhs = *v54;
      result = CMTimeCompare(&time1.start, &lhs);
      if (result)
      {
        lhs.value = v19;
        lhs.timescale = v9;
        lhs.flags = v8;
        lhs.epoch = v11;
        rhs = *v57;
        start = *v54;
        result = CMTimeMultiplyTimeByTimeRatio();
        v21 = time1.start.value;
        v16 = time1.start.flags;
        v67 = time1.start.timescale;
        v29 = time1.start.epoch;
        v13 = v65;
        v14 = v64;
        epoch = v61;
      }

      else
      {
        v21 = v19;
        v67 = v9;
        v29 = v11;
        v13 = v65;
        v14 = v64;
        epoch = v61;
        v16 = v8;
      }
    }

    else
    {
      v13 = v65;
      v29 = v63;
      v14 = v64;
      v21 = v58;
      epoch = v61;
      v16 = v62;
    }

    goto LABEL_40;
  }

  v29 = 0;
  *a5 = *result;
  *(a5 + 16) = *(result + 16);
LABEL_41:
  *a4 = value;
  *(a4 + 8) = timescale;
  *(a4 + 12) = flags;
  *(a4 + 16) = epoch;
  *(a4 + 24) = v19;
  *(a4 + 32) = v9;
  *(a4 + 36) = v8;
  v55 = v75;
  *(a4 + 40) = v11;
  *(a4 + 48) = v55;
  *(a4 + 56) = v76;
  *(a4 + 60) = v13;
  *(a4 + 64) = v14;
  *(a4 + 72) = v21;
  *(a4 + 80) = v67;
  *(a4 + 84) = v16;
  *(a4 + 88) = v29;
  return result;
}

uint64_t FigGaplessInfoCreateSegmentDataForTrack(uint64_t a1, CMTime *a2, uint64_t a3, __CFData **a4)
{
  v67[0] = 0;
  if (a1)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8 && (*&v65.start.value = *MEMORY[0x1E6960C80], v65.start.epoch = *(MEMORY[0x1E6960C80] + 16), v8(a1, &v65, v67), (v9 = v67[0]) != 0))
    {
      v65.start.value = 0;
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v10)
      {
        value_low = 4294954514;
        goto LABEL_56;
      }

      v11 = v10(v9, &v65);
      if (v11)
      {
        value_low = v11;
        goto LABEL_56;
      }

      v12 = 1;
      do
      {
        v13 = v12;
        value = v65.start.value;
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v15)
        {
          break;
        }

        v16 = v15(value, 1);
        v12 = v13 + 1;
      }

      while (!v16);
      if (v65.start.value)
      {
        CFRelease(v65.start.value);
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    if ((a2->flags & 0x1D) != 1)
    {
      FigGaplessInfoCreateSegmentDataForTrack_cold_1(&v65);
      v20 = 0;
      goto LABEL_64;
    }

    v13 = 1;
  }

  v17 = (*(a3 + 12) & 0x1D) != 1 && (*(a3 + 36) & 0x1D) != 1;
  if (!v13)
  {
    v20 = CFDataCreate(*MEMORY[0x1E695E480], 0, 0);
    value_low = 0;
    goto LABEL_57;
  }

  v18 = v13 << !v17;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 96 * v18);
  v20 = Mutable;
  if (!Mutable)
  {
    FigGaplessInfoCreateSegmentDataForTrack_cold_2(&v65);
LABEL_64:
    value_low = LODWORD(v65.start.value);
    goto LABEL_57;
  }

  CFDataSetLength(Mutable, 96 * v18);
  MutableBytePtr = CFDataGetMutableBytePtr(v20);
  if (!MutableBytePtr)
  {
    fig_log_get_emitter();
    value_low = FigSignalErrorAtGM();
    if (!value_low)
    {
      goto LABEL_57;
    }

    CFRelease(v20);
LABEL_56:
    v20 = 0;
    goto LABEL_57;
  }

  v22 = MutableBytePtr;
  v44 = a2;
  v23 = 0;
  v49 = *(MEMORY[0x1E6960C78] + 48);
  v50 = *(MEMORY[0x1E6960C78] + 32);
  v47 = *(MEMORY[0x1E6960C78] + 80);
  v48 = *(MEMORY[0x1E6960C78] + 64);
  v45 = *(MEMORY[0x1E6960C78] + 16);
  v46 = *MEMORY[0x1E6960C78];
  do
  {
    *&v65.duration.timescale = v50;
    *&v66.start.value = v49;
    *&v66.start.epoch = v48;
    *&v66.duration.timescale = v47;
    *&v65.start.value = v46;
    *&v65.start.epoch = v45;
    v24 = v67[0];
    if (v67[0])
    {
      v25 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v25)
      {
        v25(v24, &v65);
      }

      if (v17)
      {
LABEL_26:
        v26 = &v22[96 * v23++];
        v27 = *&v65.start.epoch;
        *v26 = *&v65.start.value;
        *(v26 + 1) = v27;
        v28 = *&v65.duration.timescale;
        v29 = *&v66.start.value;
        v30 = *&v66.duration.timescale;
        *(v26 + 4) = *&v66.start.epoch;
        *(v26 + 5) = v30;
        *(v26 + 2) = v28;
        *(v26 + 3) = v29;
        goto LABEL_27;
      }
    }

    else
    {
      v65.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
      *&v65.start.value = *MEMORY[0x1E6960CC0];
      v65.duration = *v44;
      v66 = v65;
      if (v17)
      {
        goto LABEL_26;
      }
    }

    v63 = v50;
    *&v64.start.value = v49;
    *&v64.start.epoch = v48;
    *&v64.duration.timescale = v47;
    v61 = v46;
    v62 = v45;
    v59 = *MEMORY[0x1E6960CC0];
    v60 = *(MEMORY[0x1E6960CC0] + 16);
    do
    {
      v57 = v50;
      *&v58.start.value = v49;
      *&v58.start.epoch = v48;
      *&v58.duration.timescale = v47;
      *time1 = v46;
      *&time1[16] = v45;
      time2[0] = v65;
      time2[1] = v66;
      v33 = *(a3 + 16);
      *rhs = *a3;
      *&rhs[16] = v33;
      v54 = *(a3 + 32);
      lhs[2] = v63;
      v52 = v64;
      lhs[0] = v61;
      lhs[1] = v62;
      FigGaplessInfoAdjustEditSegmentAccordingtoGaplessAudioTimeRange(&time2[0].start, rhs, lhs, time1, &v59);
      v63 = v57;
      v64 = v58;
      v61 = *time1;
      v62 = *&time1[16];
      if (v23 < 1 || (v34 = &v22[96 * v23], (*(v34 - 21) & 0x1D) == 1) || (*(v34 - 36) & 1) == 0 || (*(v34 - 12) & 1) == 0 || *(v34 - 1) || (*(v34 - 3) & 0x8000000000000000) != 0 || (time1[12] & 0x1D) == 1 || (v58.start.flags & 1) == 0 || (v58.duration.flags & 1) == 0 || v58.duration.epoch || v58.duration.value < 0)
      {
        v35 = &v22[96 * v23++];
        v36 = *&time1[16];
        *v35 = *time1;
        *(v35 + 1) = v36;
        v37 = v57;
        v38 = *&v58.start.value;
        v39 = *&v58.duration.timescale;
        *(v35 + 4) = *&v58.start.epoch;
        *(v35 + 5) = v39;
        *(v35 + 2) = v37;
        *(v35 + 3) = v38;
      }

      else
      {
        time2[0] = v58;
        CMTimeRangeGetEnd(lhs, time2);
        v40 = *(v34 - 3);
        *&rhs[16] = *(v34 - 4);
        *rhs = v40;
        CMTimeSubtract(&time2[0].start, lhs, rhs);
        v41 = *&time2[0].start.value;
        *(v34 - 1) = time2[0].start.epoch;
        *(v34 - 24) = v41;
      }

      if (v13 < 2)
      {
        break;
      }

      *time1 = v59;
      *&time1[16] = v60;
      time2[0].start = v65.duration;
    }

    while (CMTimeCompare(time1, &time2[0].start) < 0);
LABEL_27:
    v31 = v67[0];
    if (v67[0])
    {
      v32 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v32)
      {
        v32(v31, 1);
      }
    }

    --v13;
  }

  while (v13);
  if (v23 < v18)
  {
    CFDataSetLength(v20, 96 * v23);
  }

  value_low = 0;
LABEL_57:
  if (v67[0])
  {
    CFRelease(v67[0]);
  }

  *a4 = v20;
  return value_low;
}