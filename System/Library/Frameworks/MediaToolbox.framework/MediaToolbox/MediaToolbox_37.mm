uint64_t playeroverlap_maybeSetOverlapRangeProperty(uint64_t a1)
{
  v2 = playeroverlap_itemAtIndex(a1, 0);
  if (!v2)
  {
    if (dword_1EAF17080)
    {
      goto LABEL_12;
    }

    return 0;
  }

  v3 = v2;
  v4 = playeroverlap_itemAtIndex(a1, 1);
  if (!v4)
  {
    if (dword_1EAF17080)
    {
      goto LABEL_12;
    }

    return 0;
  }

  v5 = v4;
  v6 = playeroverlap_itemAtIndex(a1, 0);
  if (!itemoverlap_hasAdvanceTime(v6))
  {
    if (dword_1EAF17080)
    {
LABEL_12:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  v7 = playeroverlap_setOverlapRangeProperty(a1, v3, v5);
  if (v7)
  {
    playeroverlap_maybeSetOverlapRangeProperty_cold_1();
  }

  return v7;
}

uint64_t playeroverlap_setEndTime_fun(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {
    result = FigSignalErrorAtGM();
    v7 = result;
    goto LABEL_17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CMBaseObjectGetDerivedStorage();
  FigBaseObject = FigPlaybackItemGetFigBaseObject(*(DerivedStorage + 16));
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v11)
  {
    v7 = -12782;
LABEL_16:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_17;
  }

  v12 = v11(FigBaseObject, @"EndTime", v4);
  if (v12)
  {
    v7 = v12;
    goto LABEL_16;
  }

  CMTimeMakeFromDictionary(&time1, v4);
  *(DerivedStorage + 108) = time1;
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 56))
  {
    if (!dword_1EAF17080)
    {
      goto LABEL_30;
    }

LABEL_19:
    LODWORD(time2.value) = 0;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
LABEL_29:
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_30;
  }

  if ((*(DerivedStorage + 60) & 0x1D) != 1)
  {
    if (!dword_1EAF17080)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  memset(&v18, 0, sizeof(v18));
  itemoverlap_getEffectiveOverlappedPlaybackEndTime(v3, &v18);
  time1 = v18;
  time2 = *(DerivedStorage + 48);
  result = CMTimeCompare(&time1, &time2);
  if (!result)
  {
    if (dword_1EAF17080)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  result = playeroverlap_maybeSetOverlapRangeProperty(v2);
  if (result)
  {
    v7 = result;
    result = playeroverlap_setEndTime_fun_cold_1();
    goto LABEL_17;
  }

  if ((*(DerivedStorage + 60) & 0x1D) != 1)
  {
    if (dword_1EAF17080)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 56))
  {
    if (dword_1EAF17080)
    {
LABEL_28:
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      goto LABEL_29;
    }

LABEL_30:
    v7 = 0;
    goto LABEL_17;
  }

  if (FigPlaybackTimerIsScheduled(*(v9 + 72)) && (v13 = FigPlaybackTimerCancel(*(v9 + 72))) != 0)
  {
    v7 = v13;
    result = playeroverlap_setEndTime_fun_cold_2();
  }

  else
  {
    result = playeroverlap_maybeScheduleOverlappedPlaybackEndTime(v2, v3);
    v7 = result;
    if (result)
    {
      result = playeroverlap_setEndTime_fun_cold_3();
    }
  }

LABEL_17:
  *(a1 + 24) = v7;
  return result;
}

uint64_t itemoverlap_GetDimensions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = *(CMBaseObjectGetDerivedStorage() + 16);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v9)
    {
      return v9(v8, a2, a3);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t itemoverlap_GetDuration(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if ((v3 & 1) == 0)
  {
    v5 = *(CMBaseObjectGetDerivedStorage() + 16);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v6)
    {
      v7 = v6(v5, a2);
      if (!v7)
      {
        if (dword_1EAF17080)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        return 0;
      }

      v9 = v7;
    }

    else
    {
      v9 = 4294954514;
    }

    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v9;
  }

  return FigSignalErrorAtGM();
}

uint64_t itemoverlap_SetCurrentTime(uint64_t a1, __int128 *a2, int a3)
{
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6 & 1) != 0 || (CMBaseObjectGetDerivedStorage(), DerivedStorage = CMBaseObjectGetDerivedStorage(), v8 = atomic_load(CMBaseObjectGetDerivedStorage()), (v8))
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    context = a1;
    v11 = *a2;
    v12 = *(a2 + 2);
    v13 = a3;
    v14 = 0;
    dispatch_sync_f(*(DerivedStorage + 48), &context, itemoverlap_SetCurrentTime_fun);
    return v14;
  }
}

uint64_t itemoverlap_GetCurrentTime(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4 & 1) != 0 || (CMBaseObjectGetDerivedStorage(), DerivedStorage = CMBaseObjectGetDerivedStorage(), v6 = atomic_load(CMBaseObjectGetDerivedStorage()), (v6))
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    context[1] = a2;
    v9 = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, itemoverlap_GetCurrentTime_fun);
    return v9;
  }
}

uint64_t itemoverlap_CopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v9)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v12 = *(CMBaseObjectGetDerivedStorage() + 16);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v13)
    {
      return v13(v12, a2, a3, a4, a5);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t itemoverlap_MakeReadyForInspection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = *(CMBaseObjectGetDerivedStorage() + 16);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v9)
    {
      return v9(v8, a2, a3);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t itemoverlap_CopyCommonMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = *(CMBaseObjectGetDerivedStorage() + 16);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v11)
    {
      return v11(v10, a2, a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t itemoverlap_CopyChapterImageData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = *(CMBaseObjectGetDerivedStorage() + 16);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v11)
    {
      return v11(v10, a2, a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t itemoverlap_GetNextThumbnailTime(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = *(CMBaseObjectGetDerivedStorage() + 16);
    v12 = *a2;
    v13 = *(a2 + 2);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v11)
    {
      v14 = v12;
      v15 = v13;
      return v11(v10, &v14, a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t itemoverlap_SetCurrentTimeWithRange(uint64_t a1, __int128 *a2, int a3, __int128 *a4, __int128 *a5)
{
  v10 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v10 & 1) != 0 || (CMBaseObjectGetDerivedStorage(), DerivedStorage = CMBaseObjectGetDerivedStorage(), v12 = atomic_load(CMBaseObjectGetDerivedStorage()), (v12))
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    context = a1;
    v15 = *a2;
    v16 = *(a2 + 2);
    v17 = a3;
    v18 = *a4;
    v19 = *(a4 + 2);
    v20 = *a5;
    v21 = *(a5 + 2);
    v22 = 0;
    dispatch_sync_f(*(DerivedStorage + 48), &context, itemoverlap_SetCurrentTimeWithRange_fun);
    return v22;
  }
}

uint64_t itemoverlap_SetTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = *(CMBaseObjectGetDerivedStorage() + 16);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v11)
    {
      return v11(v10, a2, a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t itemoverlap_CopyFormatReader(uint64_t a1, uint64_t a2)
{
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = *(CMBaseObjectGetDerivedStorage() + 16);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v7)
    {
      return v7(v6, a2);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t itemoverlap_SeekToDateWithID(uint64_t a1, uint64_t a2, int a3)
{
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6 & 1) != 0 || (CMBaseObjectGetDerivedStorage(), DerivedStorage = CMBaseObjectGetDerivedStorage(), v8 = atomic_load(CMBaseObjectGetDerivedStorage()), (v8))
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    context[0] = a1;
    context[1] = a2;
    v11 = a3;
    v12 = 0;
    dispatch_sync_f(*(DerivedStorage + 48), context, itemoverlap_SeekToDateWithID_fun);
    return v12;
  }
}

uint64_t itemoverlap_SetCurrentTimeWithRangeAndID(uint64_t a1, __int128 *a2, int a3, __int128 *a4, __int128 *a5, int a6)
{
  v12 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v12 & 1) != 0 || (CMBaseObjectGetDerivedStorage(), DerivedStorage = CMBaseObjectGetDerivedStorage(), v14 = atomic_load(CMBaseObjectGetDerivedStorage()), (v14))
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v25 = 0;
    v16 = a1;
    v17 = *a2;
    v18 = *(a2 + 2);
    v19 = a3;
    v20 = *a4;
    v21 = *(a4 + 2);
    v22 = *a5;
    v23 = *(a5 + 2);
    v24 = a6;
    dispatch_sync_f(*(DerivedStorage + 48), &v16, itemoverlap_SetCurrentTimeWithRangeAndID_fun);
    return v25;
  }
}

uint64_t itemoverlap_CopyAsset(uint64_t a1, uint64_t a2)
{
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = *(CMBaseObjectGetDerivedStorage() + 16);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v7)
    {
      return v7(v6, a2);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t itemoverlap_SetProperties(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {

    return FigSignalErrorAtGM();
  }

  else
  {

    return FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification(a1, a2, 0, itemoverlap_handleSetProperty, 0, 0, a3);
  }
}

uint64_t itemoverlap_ExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v9 = *(CMBaseObjectGetDerivedStorage() + 16);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (v10)
    {

      return v10(v9, a2, a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t itemoverlap_SetCurrentTimeWithOptions(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6 & 1) != 0 || (CMBaseObjectGetDerivedStorage(), DerivedStorage = CMBaseObjectGetDerivedStorage(), v8 = atomic_load(CMBaseObjectGetDerivedStorage()), (v8))
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v13 = a3;
    v14 = 0;
    v10 = a1;
    v11 = *a2;
    v12 = *(a2 + 2);
    dispatch_sync_f(*(DerivedStorage + 48), &v10, itemoverlap_SetCurrentTimeWithOptions_fun);
    return v14;
  }
}

uint64_t itemoverlap_SetCurrentTime_fun(uint64_t a1)
{
  time[17] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 32);
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {
    result = FigSignalErrorAtGM();
  }

  else
  {
    memset(time, 0, 40);
    LODWORD(time[0]) = v3;
    v9 = v7;
    v10 = v8;
    result = itemoverlap_SetCurrentTimeCommon(v2, &v9, time);
  }

  *(a1 + 36) = result;
  return result;
}

uint64_t itemoverlap_SetCurrentTimeSpecific(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[1];
  if (v4)
  {
    v5 = *a3;
    v28 = *a2;
    v30 = *(a2 + 16);
    v24 = *v4;
    v26 = *(v4 + 16);
    v20 = *(v4 + 24);
    v22 = *(v4 + 40);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (v6)
    {
      v36 = v28;
      v37 = v30;
      v34 = v24;
      v35 = v26;
      v32 = v20;
      v33 = v22;
      return v6(a1, &v36, v5, &v34, &v32);
    }

    return 4294954514;
  }

  v8 = a3[2];
  if (v8)
  {
    v9 = *a3;
    v10 = *(v8 + 48);
    v29 = *a2;
    v31 = *(a2 + 16);
    v25 = *v8;
    v27 = *(v8 + 16);
    v21 = *(v8 + 24);
    v23 = *(v8 + 40);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v11)
    {
      v36 = v29;
      v37 = v31;
      v34 = v25;
      v35 = v27;
      v32 = v21;
      v33 = v23;
      return v11(a1, &v36, v9, &v34, &v32, v10);
    }

    return 4294954514;
  }

  v12 = a3[3];
  if (v12)
  {
    v13 = *v12;
    v34 = *a2;
    v35 = *(a2 + 16);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 176);
    if (v14)
    {
      v36 = v34;
      v37 = v35;
      return v14(a1, &v36, v13);
    }

    return 4294954514;
  }

  v15 = a3[4];
  if (v15)
  {
    v16 = *v15;
    v17 = *(v15 + 2);
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (!v18)
    {
      return 4294954514;
    }

    return v18(a1, v16, v17);
  }

  else
  {
    v19 = *a3;
    v36 = *a2;
    v37 = *(a2 + 16);
    return FigPlaybackItemSetCurrentTime(a1, &v36, v19);
  }
}

uint64_t itemoverlap_GetCurrentTime_fun(uint64_t a1)
{
  result = itemoverlap_GetCurrentTimeInPlayerQueue(*a1, *(a1 + 8));
  *(a1 + 16) = result;
  return result;
}

uint64_t itemoverlap_SetCurrentTimeWithRange_fun(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 32);
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  *&v9.value = *(a1 + 36);
  v9.epoch = *(a1 + 52);
  v7 = *(a1 + 60);
  v8 = *(a1 + 76);
  if (dword_1EAF17080)
  {
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {
    result = FigSignalErrorAtGM();
  }

  else
  {
    time = v9;
    v19 = v7;
    v20 = v8;
    v16 = 0u;
    v15[0] = v3;
    v17 = 0;
    v15[1] = &time;
    v12 = v10;
    v13 = v11;
    result = itemoverlap_SetCurrentTimeCommon(v2, &v12, v15);
  }

  *(a1 + 84) = result;
  return result;
}

uint64_t itemoverlap_SeekToDateWithID_fun(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {
    result = FigSignalErrorAtGM();
  }

  else
  {
    v8 = v3;
    v10 = 0;
    v9 = v4;
    memset(v11, 0, sizeof(v11));
    v12 = &v8;
    result = itemoverlap_SetCurrentTimeCommon(v2, MEMORY[0x1E6960CC0], v11);
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t itemoverlap_SetCurrentTimeWithRangeAndID_fun(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v7 = *(a1 + 32);
  v3 = *(a1 + 84);
  v11 = *(a1 + 8);
  v12 = *(a1 + 24);
  *&v10.value = *(a1 + 36);
  v10.epoch = *(a1 + 52);
  v8 = *(a1 + 60);
  v9 = *(a1 + 76);
  if (dword_1EAF17080)
  {
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {
    result = FigSignalErrorAtGM();
  }

  else
  {
    time = v10;
    v21 = v8;
    v22 = v9;
    v23 = v3;
    v16 = 0u;
    v18 = 0;
    LODWORD(v16) = v7;
    v19 = 0;
    p_time = &time;
    v13 = v11;
    v14 = v12;
    result = itemoverlap_SetCurrentTimeCommon(v2, &v13, &v16);
  }

  *(a1 + 88) = result;
  return result;
}

uint64_t itemoverlap_SetCurrentTimeWithOptions_fun(uint64_t a1)
{
  v2 = *a1;
  v6 = *(a1 + 8);
  v3 = *(a1 + 32);
  v7 = *(a1 + 24);
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    result = FigSignalErrorAtGM();
  }

  else
  {
    v14 = v3;
    v10 = 0u;
    v11 = 0;
    v12 = &v14;
    v13 = 0;
    v8 = v6;
    v9 = v7;
    result = itemoverlap_SetCurrentTimeCommon(v2, &v8, &v10);
  }

  *(a1 + 40) = result;
  return result;
}

uint64_t playeroverlap_copyVideoTargetArray(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    context[1] = a2;
    v8 = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_copyVideoTargetArray_fun);
    return v8;
  }
}

uint64_t playeroverlap_copyPerformanceHistoryArray(uint64_t a1, const __CFAllocator *a2, CFArrayRef *a3)
{
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {

    return FigSignalErrorAtGM();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  cf = 0;
  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
  FigBaseObject = FigPlayerGetFigBaseObject(*(DerivedStorage + 8));
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v11 = v10(FigBaseObject, @"PerformanceHistoryArray", a2, &cf);
    if (v11)
    {
      v14 = v11;
      goto LABEL_11;
    }

    v12 = FigPlayerGetFigBaseObject(*(DerivedStorage + 16));
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v14 = v13(v12, @"PerformanceHistoryArray", a2, &v15);
      if (!v14)
      {
        FigCFArrayAppendArray();
        FigCFArrayAppendArray();
        *a3 = CFArrayCreateCopy(a2, Mutable);
      }

      goto LABEL_11;
    }
  }

  v14 = 4294954514;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v14;
}

uint64_t playeroverlap_copyItemsToPrebuffer(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    context[1] = a2;
    v8 = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_copyItemsToPrebuffer_fun);
    return v8;
  }
}

uint64_t playeroverlap_copyPropertyFromActiveSubPlayer_fun(uint64_t a1)
{
  result = playeroverlap_copyPropertyFromActiveSubPlayerInPlayerQueue(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *(a1 + 32) = result;
  return result;
}

uint64_t playeroverlap_copyPropertyFromActiveSubPlayerInPlayerQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigBaseObject = FigPlayerGetFigBaseObject(*(DerivedStorage + 8 * *(DerivedStorage + 4) + 8));
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      return v12(FigBaseObject, a3, a2, a4);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t playeroverlap_copyVideoTargetArray_fun(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3)
  {
    result = FigSignalErrorAtGM();
  }

  else
  {
    v5 = *(CMBaseObjectGetDerivedStorage() + 120);
    if (v5)
    {
      v6 = CFRetain(v5);
    }

    else
    {
      v6 = 0;
    }

    result = 0;
    *v2 = v6;
  }

  *(a1 + 16) = result;
  return result;
}

uint64_t playeroverlap_copyItemsToPrebuffer_fun(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3)
  {
    result = FigSignalErrorAtGM();
  }

  else
  {
    v5 = *(CMBaseObjectGetDerivedStorage() + 112);
    if (v5)
    {
      v6 = CFRetain(v5);
    }

    else
    {
      v6 = 0;
    }

    result = 0;
    *v2 = v6;
  }

  *(a1 + 16) = result;
  return result;
}

uint64_t playeroverlap_handleSetProperty(uint64_t a1, uint64_t a2, __CFString *a3, uint64_t a4, _BYTE *a5)
{
  *a5 = 1;
  if (FigCFEqual())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = atomic_load(CMBaseObjectGetDerivedStorage());
    if ((v9 & 1) == 0)
    {
      v21 = a4;
      v22 = 0;
      v20 = a1;
      dispatch_sync_f(*(DerivedStorage + 48), &v20, playeroverlap_setActionAtEnd_fun);
      return v22;
    }

LABEL_10:

    return FigSignalErrorAtGM();
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    v10 = CMBaseObjectGetDerivedStorage();
    v11 = atomic_load(CMBaseObjectGetDerivedStorage());
    if ((v11 & 1) == 0)
    {
      v20 = a1;
      v21 = a3;
      v22 = a4;
      v23 = 0;
      dispatch_sync_f(*(v10 + 48), &v20, playeroverlap_setPropertyToActiveSubPlayer_fun);
      return v23;
    }

    goto LABEL_10;
  }

  if (CFEqual(a3, @"VideoTargetArray"))
  {

    return playeroverlap_setVideoTargetArray(a1, a4);
  }

  else if (CFEqual(a3, @"ItemsToPrebuffer"))
  {

    return playeroverlap_setItemsToPrebuffer(a1, a4);
  }

  else if (CFEqual(a3, @"BufferedAirPlayOutput"))
  {

    return playeroverlap_setBufferedAirPlayOutput(a1, a4);
  }

  else
  {
    v13 = CFEqual(a3, @"FigAudioSession");
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v15 = CFEqual(a3, @"FigAudioSession2");
      v14 = v15 != 0;
      if (v15)
      {
        a3 = @"FigAudioSession";
      }
    }

    v16 = *(CMBaseObjectGetDerivedStorage() + 8);
    v17 = *(CMBaseObjectGetDerivedStorage() + 16);
    if (v14)
    {
      if (v13)
      {
        return 0;
      }
    }

    else
    {
      FigBaseObject = FigPlayerGetFigBaseObject(v16);
      result = CMBaseObjectSetProperty(FigBaseObject, a3, a4);
      if (v13 || result)
      {
        return result;
      }
    }

    v19 = FigPlayerGetFigBaseObject(v17);

    return CMBaseObjectSetProperty(v19, a3, a4);
  }
}

uint64_t playeroverlap_setVideoTargetArray(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    context[1] = a2;
    v8 = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_setVideoTargetArray_fun);
    return v8;
  }
}

uint64_t playeroverlap_setItemsToPrebuffer(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    context[1] = a2;
    v8 = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_setItemsToPrebuffer_fun);
    return v8;
  }
}

uint64_t playeroverlap_setBufferedAirPlayOutput(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    context[1] = a2;
    v8 = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_setBufferedAirPlayOutput_fun);
    return v8;
  }
}

void playeroverlap_setActionAtEnd_fun(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    v5 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  cf[0] = 0;
  active = playeroverlap_copyPropertyFromActiveSubPlayerInPlayerQueue(v2, *MEMORY[0x1E695E480], @"ActionAtEnd", cf);
  if (active)
  {
    goto LABEL_24;
  }

  if (FigCFEqual())
  {
    goto LABEL_21;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigBaseObject = FigPlayerGetFigBaseObject(*(DerivedStorage + 8 * *(DerivedStorage + 4) + 8));
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v10)
  {
    goto LABEL_16;
  }

  active = v10(FigBaseObject, @"ActionAtEnd", v3);
  if (active)
  {
    goto LABEL_24;
  }

  v11 = CMBaseObjectGetDerivedStorage();
  v12 = *(v11 + 4);
  v13 = __OFADD__(v12++, 1);
  v14 = (v12 < 0) ^ v13;
  v15 = v12 & 1;
  if (v14)
  {
    v15 = -v15;
  }

  v16 = FigPlayerGetFigBaseObject(*(v11 + 8 * v15 + 8));
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v17)
  {
LABEL_16:
    v5 = -12782;
    goto LABEL_17;
  }

  active = v17(v16, @"ActionAtEnd", v3);
  if (!active)
  {
    if (FigCFEqual())
    {
      v18 = playeroverlap_itemAtIndex(v2, 0);
      if (v18)
      {
        playeroverlap_setActionAtEnd_fun_cold_1(v18, v2);
LABEL_23:
        active = playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(v2);
        goto LABEL_24;
      }

LABEL_21:
      v5 = 0;
      goto LABEL_17;
    }

    if (!*(CMBaseObjectGetDerivedStorage() + 56))
    {
      goto LABEL_21;
    }

    active = playeroverlap_removeOutroItem(v2, 1);
    if (!active)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  v5 = active;
LABEL_17:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_19:
  *(a1 + 16) = v5;
}

uint64_t playeroverlap_setPropertyToActiveSubPlayer_fun(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    playeroverlap_setPropertyToActiveSubPlayer_fun_cold_1();
    result = 0;
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigBaseObject = FigPlayerGetFigBaseObject(*(DerivedStorage + 8 * *(DerivedStorage + 4) + 8));
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {
      result = v8(FigBaseObject, v2, v3);
    }

    else
    {
      result = 4294954514;
    }
  }

  *(a1 + 24) = result;
  return result;
}

uint64_t playeroverlap_setVideoTargetArray_fun(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3)
  {
    playeroverlap_setVideoTargetArray_fun_cold_1();
    result = 0;
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = *(DerivedStorage + 120);
    *(DerivedStorage + 120) = v2;
    if (v2)
    {
      CFRetain(v2);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v7 = CMBaseObjectGetDerivedStorage();
    FigBaseObject = FigPlayerGetFigBaseObject(*(v7 + 8 * *(v7 + 4) + 8));
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      result = v9(FigBaseObject, @"VideoTargetArray", v2);
    }

    else
    {
      result = 4294954514;
    }
  }

  *(a1 + 16) = result;
  return result;
}

uint64_t playeroverlap_setItemsToPrebuffer_fun(uint64_t a1)
{
  result = playeroverlap_setItemsToPrebufferInPlayerQueue(*a1, *(a1 + 8));
  *(a1 + 16) = result;
  return result;
}

uint64_t playeroverlap_AddToPlayQueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v9[0] = a1;
    v9[1] = a2;
    v9[2] = a3;
    v10 = 0;
    dispatch_sync_f(*(DerivedStorage + 48), v9, playeroverlap_AddToPlayQueue_fun);
    return v10;
  }
}

uint64_t playeroverlap_RemoveFromPlayQueue(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    context[1] = a2;
    v8 = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_RemoveFromPlayQueue_fun);
    return v8;
  }
}

uint64_t playeroverlap_CopyPlayQueueItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v9[0] = a1;
    v9[1] = a2;
    v9[2] = a3;
    v10 = 0;
    dispatch_sync_f(*(DerivedStorage + 48), v9, playeroverlap_CopyPlayQueueItem_fun);
    return v10;
  }
}

uint64_t playeroverlap_SetRate(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v7 = a1;
    v8 = a2;
    v9 = 0;
    dispatch_sync_f(*(DerivedStorage + 48), &v7, playeroverlap_SetRate_fun);
    return v9;
  }
}

uint64_t playeroverlap_GetRate(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    context[1] = a2;
    v8 = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_GetRate_fun);
    return v8;
  }
}

uint64_t playeroverlap_SetRateWithFade(uint64_t a1, __int128 *a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    context = a1;
    v10 = a3;
    v11 = *a2;
    v12 = *(a2 + 2);
    v13 = 0;
    dispatch_sync_f(*(DerivedStorage + 48), &context, playeroverlap_SetRateWithFade_fun);
    return v13;
  }
}

uint64_t playeroverlap_StartPreroll(uint64_t a1, int a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v12 = 0;
    context = a1;
    v10 = a3;
    v11 = a2;
    dispatch_sync_f(*(DerivedStorage + 48), &context, playeroverlap_StartPreroll_fun);
    return v12;
  }
}

uint64_t playeroverlap_StepByCount(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v7 = a1;
    v8 = a2;
    v9 = 0;
    dispatch_sync_f(*(DerivedStorage + 48), &v7, playeroverlap_StepByCount_fun);
    return v9;
  }
}

uint64_t playeroverlap_SetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, int a4, float a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v11)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v20 = 0;
    context = a1;
    v14 = a5;
    v15 = *a2;
    v16 = *(a2 + 2);
    v17 = *a3;
    v18 = *(a3 + 2);
    v19 = a4;
    dispatch_sync_f(*(DerivedStorage + 48), &context, playeroverlap_SetRateAndAnchorTime_fun);
    return v20;
  }
}

uint64_t playeroverlap_CreatePlaybackItemFromAsset(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = atomic_load(CMBaseObjectGetDerivedStorage());
  if ((v10 & 1) == 0)
  {
    if (a5)
    {
      if (a2)
      {
        CFGetAllocator(a1);
        FigPlaybackItemGetClassID();
        v12 = CMDerivedObjectCreate();
        if (!FigSignalErrorAtGM())
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          *(DerivedStorage + 156) = 0;
          if (a4 && FigCFDictionaryGetStringIfPresent())
          {
            CFStringGetCString(0, (DerivedStorage + 156), 16, 0x600u);
          }

          *DerivedStorage = 0;
          *(DerivedStorage + 72) = -1;
          *(DerivedStorage + 8) = a1;
          *(DerivedStorage + 80) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
          v14 = MEMORY[0x1E6960C70];
          v15 = *MEMORY[0x1E6960C70];
          *(DerivedStorage + 24) = *MEMORY[0x1E6960C70];
          v16 = *(v14 + 16);
          *(DerivedStorage + 40) = v16;
          *(DerivedStorage + 48) = v15;
          *(DerivedStorage + 64) = v16;
          *(DerivedStorage + 108) = v15;
          *(DerivedStorage + 124) = v16;
          v17 = CMBaseObjectGetDerivedStorage();
          v18 = *(v17 + 8 * *(v17 + 4) + 8);
          v19 = *(*(CMBaseObjectGetVTable() + 16) + 96);
          if (v19)
          {
            v20 = v19(v18, a2, a3, a4, DerivedStorage + 16);
            if (v20)
            {
              return v20;
            }

            else
            {
              CMNotificationCenterGetDefaultLocalCenter();
              v21 = FigNotificationCenterAddWeakListener();
              if (v21)
              {
                v12 = v21;
                playeroverlap_CreatePlaybackItemFromAsset_cold_1();
              }

              else
              {
                FigSimpleMutexLock();
                CFSetAddValue(*(v17 + 88), 0);
                FigSimpleMutexUnlock();
                if (dword_1EAF17080)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                v12 = 0;
                *a5 = 0;
              }
            }
          }

          else
          {
            return 4294954514;
          }
        }

        return v12;
      }

      playeroverlap_CreatePlaybackItemFromAsset_cold_2(v23);
    }

    else
    {
      playeroverlap_CreatePlaybackItemFromAsset_cold_3(v23);
    }

    return v23[0];
  }

  return FigSignalErrorAtGM();
}

uint64_t playeroverlap_SetRateWithOptions(uint64_t a1, uint64_t a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v9[0] = a1;
    v9[1] = LODWORD(a3);
    v9[2] = a2;
    v10 = 0;
    dispatch_sync_f(*(DerivedStorage + 48), v9, playeroverlap_SetRateWithOptions_fun);
    return v10;
  }
}

uint64_t playeroverlap_SetProperties(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {

    return FigSignalErrorAtGM();
  }

  else
  {

    return FPSupport_HandlePlayerSetPropertiesAndCopyModification(a1, a2, 0, playeroverlap_handleSetProperty, 0, 0, a3);
  }
}

uint64_t playeroverlap_AddExternalStartupTask(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    context[1] = a2;
    v8 = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_AddExternalStartupTask_fun);
    return v8;
  }
}

uint64_t playeroverlap_RemoveExternalStartupTask(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    context[1] = a2;
    v8 = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_RemoveExternalStartupTask_fun);
    return v8;
  }
}

uint64_t playeroverlap_CopyDisplayedCVPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v7)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v9[0] = a1;
    v9[1] = a2;
    v9[2] = a3;
    v10 = 0;
    dispatch_sync_f(*(DerivedStorage + 48), v9, playeroverlap_CopyDisplayedCVPixelBuffer_fun);
    return v10;
  }
}

uint64_t itemoverlap_resetPlayerIndex()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 88) = 0;
  *(result + 72) = -1;
  return result;
}

const void *playeroverlap_CopyPlayQueueItem_fun(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if ((v5 & 1) == 0)
  {
    if (!v4)
    {
      result = playeroverlap_CopyPlayQueueItem_fun_cold_1(&v11);
      v7 = v11;
      goto LABEL_10;
    }

    *v4 = 0;
    if (v3)
    {
      v8 = playeroverlap_indexForItem();
      if (v8 == -1)
      {
        v7 = FigSignalErrorAtGM();
        result = *v4;
        if (!*v4)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v9 = v8 + 1;
      v10 = v2;
    }

    else
    {
      v10 = v2;
      v9 = 0;
    }

    result = playeroverlap_itemAtIndex(v10, v9);
    v7 = 0;
    *v4 = result;
    if (!result)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = CFRetain(result);
    goto LABEL_10;
  }

  result = FigSignalErrorAtGM();
  v7 = result;
LABEL_10:
  *(a1 + 24) = v7;
  return result;
}

uint64_t playeroverlap_SetRate_fun(uint64_t a1)
{
  result = playeroverlap_SetRateInPlayerQueue(*a1, *(a1 + 8));
  *(a1 + 12) = result;
  return result;
}

uint64_t playeroverlap_GetRate_fun(uint64_t a1)
{
  result = playeroverlap_GetRateInPlayerQueue(*a1, *(a1 + 8));
  *(a1 + 16) = result;
  return result;
}

uint64_t playeroverlap_SetRateWithFade_fun(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  *&v7.value = *(a1 + 12);
  v7.epoch = *(a1 + 28);
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    result = FigSignalErrorAtGM();
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    time = v7;
    v9 = 0uLL;
    p_time = &time;
    result = playeroverlap_SetRateCommon(v2, &p_time, v3);
  }

  *(a1 + 36) = result;
  return result;
}

uint64_t playeroverlap_StartPreroll_fun(float *a1)
{
  v2 = a1[2];
  v3 = *(a1 + 3);
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    result = FigSignalErrorAtGM();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *(DerivedStorage + 8 * *(DerivedStorage + 4) + 8);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v8)
    {
      result = v8(v7, v3, v2);
    }

    else
    {
      result = 4294954514;
    }
  }

  *(a1 + 4) = result;
  return result;
}

uint64_t playeroverlap_StepByCount_fun(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3)
  {
    result = FigSignalErrorAtGM();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = *(DerivedStorage + 8 * *(DerivedStorage + 4) + 8);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v7)
    {
      result = v7(v6, v2);
    }

    else
    {
      result = 4294954514;
    }
  }

  *(a1 + 12) = result;
  return result;
}

uint64_t playeroverlap_SetRateAndAnchorTime_fun(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 60);
  *&v10.value = *(a1 + 12);
  v10.epoch = *(a1 + 28);
  v8 = *(a1 + 36);
  v9 = *(a1 + 52);
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {
    result = FigSignalErrorAtGM();
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    time = v10;
    v14 = v8;
    v15 = v9;
    v16 = v4;
    v11 = 0;
    p_time = &time;
    result = playeroverlap_SetRateCommon(v2, &v11, v3);
  }

  *(a1 + 64) = result;
  return result;
}

uint64_t playeroverlap_SetRateWithOptions_fun(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {
    result = FigSignalErrorAtGM();
  }

  else
  {
    v7[0] = 0;
    v7[1] = 0;
    v7[2] = &v8;
    v8 = v4;
    result = playeroverlap_SetRateCommon(v2, v7, v3);
  }

  *(a1 + 24) = result;
  return result;
}

uint64_t playeroverlap_AddExternalStartupTask_fun(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3)
  {
    result = FigSignalErrorAtGM();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = *(DerivedStorage + 8 * *(DerivedStorage + 4) + 8);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v7)
    {
      result = v7(v6, v2);
    }

    else
    {
      result = 4294954514;
    }
  }

  *(a1 + 16) = result;
  return result;
}

uint64_t playeroverlap_RemoveExternalStartupTask_fun(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3)
  {
    result = FigSignalErrorAtGM();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = *(DerivedStorage + 8 * *(DerivedStorage + 4) + 8);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 136);
    if (v7)
    {
      result = v7(v6, v2);
    }

    else
    {
      result = 4294954514;
    }
  }

  *(a1 + 16) = result;
  return result;
}

uint64_t playeroverlap_CopyDisplayedCVPixelBuffer_fun(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    result = FigSignalErrorAtGM();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *(DerivedStorage + 8 * *(DerivedStorage + 4) + 8);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v8)
    {
      result = v8(v7, v2, v3);
    }

    else
    {
      result = 4294954514;
    }
  }

  *(a1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_49@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 40) = a1;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_17_22()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_27_15()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_40_10(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_41_10()
{

  return FigCFArrayApplyFunction();
}

uint64_t OUTLINED_FUNCTION_45_9()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_51_9(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, int a16, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_53_7(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_69_3()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

Float64 OUTLINED_FUNCTION_70_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CMTime *time, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 timea, uint64_t time_16)
{
  timea = *(v28 + 24);
  time_16 = *(v28 + 40);

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_71_3()
{

  return CMBaseObjectGetVTable();
}

BOOL OUTLINED_FUNCTION_73_4(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_86_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_88_4(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_90_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, int a16, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

__CFString *activityOnThread_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigActivityScheduler_OnNewThread %p>", a1);
  return Mutable;
}

uint64_t activityOnThread_copyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    if (CFEqual(@"ThreadPriority", a2))
    {
      FigSimpleMutexLock();
      *a4 = FigCFNumberCreateUInt32();
      FigSimpleMutexUnlock();
      return 0;
    }

    else
    {
      return 4294954509;
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t activityOnThread_setProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"ClientPID", a2))
  {
    if (!a3)
    {
      return 0;
    }

    TypeID = CFNumberGetTypeID();
    if (TypeID != CFGetTypeID(a3))
    {
      return 0;
    }

    FigSimpleMutexLock();
    if (*(DerivedStorage + 8))
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

  if (CFEqual(@"ThrottleForBackground", a2))
  {
    if (a3)
    {
      v8 = CFBooleanGetTypeID();
      if (v8 == CFGetTypeID(a3))
      {
        if (CFBooleanGetValue(a3))
        {
          v9 = 16;
        }

        else
        {
          v9 = *(DerivedStorage + 60);
        }

        valuePtr = v9;
        v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        FigSimpleMutexLock();
        if (!*(DerivedStorage + 8) || (v7 = FigThreadSetProperty(), !v7))
        {
          v7 = 0;
          *(DerivedStorage + 60) = valuePtr;
        }

        FigSimpleMutexUnlock();
        if (v13)
        {
          CFRelease(v13);
        }

        return v7;
      }
    }
  }

  else if (CFEqual(@"ThreadPriority", a2))
  {
    if (a3)
    {
      v10 = CFNumberGetTypeID();
      if (v10 == CFGetTypeID(a3))
      {
        FigSimpleMutexLock();
        if (!*(DerivedStorage + 8) || (v7 = FigThreadSetProperty(), !v7))
        {
          v7 = 0;
          *(DerivedStorage + 60) = FigCFNumberGetUInt32();
        }

        goto LABEL_25;
      }
    }
  }

  else
  {
    if (!CFEqual(@"MachTimeSharePolicy", a2))
    {
      return 4294954509;
    }

    if (a3)
    {
      v11 = CFBooleanGetTypeID();
      if (v11 == CFGetTypeID(a3))
      {
        FigSimpleMutexLock();
        if (*(DerivedStorage + 8))
        {
LABEL_5:
          v7 = FigThreadSetProperty();
LABEL_25:
          FigSimpleMutexUnlock();
          return v7;
        }

LABEL_24:
        v7 = 0;
        goto LABEL_25;
      }
    }
  }

  return FigSignalErrorAtGM();
}

void FigRateMinderUpdateRateWithTimestamps(const void *a1, uint64_t a2, CMTime *a3, Float64 a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  if (*(a2 + 12))
  {
    v12 = malloc_type_malloc(0x20uLL, 0x1020040A5B76CDFuLL);
    if (v12)
    {
      v13 = v12;
      v15 = *a2;
      *v12 = CMTimeGetSeconds(&v15);
      v15 = *a3;
      v13[1] = CMTimeGetSeconds(&v15);
      v13[2] = a4;
      if (a1)
      {
        v14 = CFRetain(a1);
      }

      else
      {
        v14 = 0;
      }

      *(v13 + 3) = v14;
      dispatch_async_f(*v9, v13, frm_processDeltaUpdateNotification);
    }
  }

  else
  {
    v10 = *DerivedStorage;
    if (a1)
    {
      v11 = CFRetain(a1);
    }

    else
    {
      v11 = 0;
    }

    dispatch_async_f(v10, v11, frm_resetInternalState);
  }
}

void frm_processDeltaUpdateNotification(double *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 3);
  free(a1);
  v7 = *(DerivedStorage + 16);
  if (v7)
  {
    (*(v7 + 8))(v6, v3, v4, v5);
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

void frm_resetInternalState(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 8);
  v4 = *(DerivedStorage + 16);
  *(v3 + 4) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(DerivedStorage + 28) = 0;
  *(DerivedStorage + 56) = 0x3FF0000000000000;
  if (v4)
  {
    v5 = **(CMBaseObjectGetDerivedStorage() + 16);
    if (v5)
    {
      *(v5 + 48) = 0;
    }

    v6 = *v4;
    if (*v4)
    {
      *(v6 + 4) = 0;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0u;
      *(v6 + 72) = 0u;
    }
  }

  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t FigRateMinderCreate(uint64_t a1, const __CFDictionary *a2, uint64_t a3, const void *a4, int a5, CFTypeRef *a6)
{
  value = @"FigRateMinderPrefilterType_None";
  cf = 0;
  MEMORY[0x19A8D3660](&FigRateMinderGetClassID_sRegisterFigRateMinderBaseTypeOnce, RegisterFigRateMinderBaseType);
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
    v24 = v11;
LABEL_25:
    if (cf)
    {
      CFRelease(cf);
    }

    return v24;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = FigDispatchQueueCreateWithPriority();
  *DerivedStorage = v13;
  if (a4)
  {
    v14 = CFRetain(a4);
    v13 = *DerivedStorage;
  }

  else
  {
    v14 = 0;
  }

  *(DerivedStorage + 48) = v14;
  if (!v13)
  {
    FigRateMinderCreate_cold_1(&v28);
    goto LABEL_24;
  }

  *(DerivedStorage + 8) = frm_createAndInitializeRegressionModule();
  *(DerivedStorage + 24) = 5;
  *(DerivedStorage + 32) = malloc_type_calloc(5uLL, 8uLL, 0x100004000313F17uLL);
  *(DerivedStorage + 28) = 0;
  *(DerivedStorage + 56) = 0x3FF0000000000000;
  if (a2)
  {
    CFDictionaryGetValueIfPresent(a2, @"FigRateMinderPrefilterTypes", &value);
    v15 = value;
  }

  else
  {
    v15 = @"FigRateMinderPrefilterType_None";
  }

  v16 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
  if (!v16)
  {
LABEL_23:
    FigRateMinderCreate_cold_2(DerivedStorage, &v28);
LABEL_24:
    v24 = v28;
    goto LABEL_25;
  }

  v17 = v16;
  if (CFEqual(v15, @"FigRateMinderPrefilterType_None"))
  {
    v17[1] = frm_processDeltaUpdate;
    goto LABEL_17;
  }

  v18 = CFEqual(v15, @"FigRateMinderPrefilterType_Mean");
  v19 = frm_preFilterFnMean;
  if (!v18)
  {
    v20 = CFEqual(v15, @"FigRateMinderPrefilterType_Median");
    v19 = frm_preFilterFnMedian;
    if (!v20)
    {
      v21 = CFEqual(v15, @"FigRateMinderPrefilterType_RemoveOutliersLocal");
      v19 = frm_preFilterFnRemoveOutliersLocal;
      if (!v21)
      {
        v22 = CFEqual(v15, @"FigRateMinderPrefilterType_RemoveOutliersGlobal");
        v19 = frm_preFilterFnRemoveOutliersGlobal;
        if (!v22)
        {
          free(v17);
          goto LABEL_23;
        }
      }
    }
  }

  v17[1] = v19;
  *v17 = frm_createAndInitializeRegressionModule();
LABEL_17:
  *(DerivedStorage + 16) = v17;
  v23 = cf;
  *a6 = cf;
  if (!a5)
  {
    return 0;
  }

  v24 = FigStreamingLiveServerClockCreate(a1, v23, (DerivedStorage + 40));
  if (v24)
  {
    goto LABEL_25;
  }

  return v24;
}

unsigned int *frm_createAndInitializeRegressionModule()
{
  v0 = malloc_type_calloc(1uLL, 0x58uLL, 0x108004019F10DC7uLL);
  *v0 = 100;
  *(v0 + 1) = malloc_type_calloc(0x64uLL, 8uLL, 0x100004000313F17uLL);
  *(v0 + 2) = malloc_type_calloc(*v0, 8uLL, 0x100004000313F17uLL);
  *(v0 + 3) = malloc_type_calloc(*v0, 8uLL, 0x100004000313F17uLL);
  *(v0 + 4) = malloc_type_calloc(*v0, 8uLL, 0x100004000313F17uLL);
  *(v0 + 5) = malloc_type_calloc(*v0, 8uLL, 0x100004000313F17uLL);
  v0[1] = 0;
  v0[12] = 0;
  *(v0 + 14) = 0u;
  *(v0 + 18) = 0u;
  return v0;
}

uint64_t frm_invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*DerivedStorage, a1, frm_invalidateGuts);
  return 0;
}

void frm_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  frm_invalidateGuts();
  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 40);
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = *(DerivedStorage + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

void frm_invalidateGuts()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[1];
  if (v1)
  {
    frm_cleanupRegressionModule(v1);
    DerivedStorage[1] = 0;
  }

  v2 = DerivedStorage[2];
  if (v2)
  {
    if (*v2)
    {
      frm_cleanupRegressionModule(*v2);
      v2 = DerivedStorage[2];
    }

    free(v2);
    DerivedStorage[2] = 0;
  }

  v3 = DerivedStorage[4];
  if (v3)
  {
    free(v3);
    DerivedStorage[4] = 0;
  }
}

void frm_cleanupRegressionModule(void **a1)
{
  free(a1[1]);
  free(a1[2]);
  free(a1[3]);
  free(a1[4]);
  free(a1[5]);

  free(a1);
}

uint64_t RegisterFigRateMinderBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void frm_processDeltaUpdate(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v7[v6] = a2;
  v8[v6] = a1;
  v9 = (v6 + 1);
  *(v5 + 48) = v9;
  if (v9 == *v5)
  {
    v10 = DerivedStorage;
    v11 = 0.0;
    if (v9)
    {
      v12 = v7;
      v13 = v9;
      do
      {
        v14 = *v12++;
        v11 = v11 + v14;
        --v13;
      }

      while (v13);
      v15 = 0.0;
      v16 = v8;
      v17 = v9;
      do
      {
        v18 = *v16++;
        v15 = v15 + v18;
        --v17;
      }

      while (v17);
      v19 = *(v5 + 24);
      v20 = v7;
      v21 = v19;
      v22 = v9;
      do
      {
        v23 = *v20++;
        *v21++ = v23 * v23;
        --v22;
      }

      while (v22);
      v24 = 0.0;
      v25 = v9;
      do
      {
        v26 = *v19++;
        v24 = v24 + v26;
        --v25;
      }

      while (v25);
      v27 = *(v5 + 32);
      v28 = v27;
      v29 = v9;
      do
      {
        v30 = *v7++;
        v31 = v30;
        v32 = *v8++;
        *v28++ = v31 * v32;
        --v29;
      }

      while (v29);
      v33 = 0.0;
      v34 = v9;
      do
      {
        v35 = *v27++;
        v33 = v33 + v35;
        --v34;
      }

      while (v34);
    }

    else
    {
      v15 = 0.0;
      v24 = 0.0;
      v33 = 0.0;
    }

    v36 = *(v5 + 4);
    v37 = v36;
    v38 = v11 + *(v5 + 56) * v36 * v9;
    v39 = v36 + 1;
    v40 = *(v5 + 72);
    v41 = v24 + *(v5 + 80) * v37 * v9;
    v42 = (v39 * v9);
    v43 = v38 / v42;
    v44 = (v15 + *(v5 + 64) * v37 * v9) / v42;
    *(v5 + 56) = v43;
    *(v5 + 64) = v44;
    v45 = v41 / v42;
    v46 = (v33 + v40 * v37 * v9) / v42;
    *(v5 + 72) = v46;
    *(v5 + 80) = v45;
    v47 = -(v45 - v43 * v43);
    if (v47 == 0.0)
    {
      v51 = *(DerivedStorage + 24);
      v53 = *(DerivedStorage + 28);
      v49 = 1.79769313e308;
      v48 = 1.79769313e308;
    }

    else
    {
      v48 = -(v46 - v43 * v44) / v47;
      v49 = v48 + -1.0;
      v50 = *(DerivedStorage + 32);
      v51 = *(DerivedStorage + 24);
      v52 = *(DerivedStorage + 28);
      v53 = v52 + 1;
      *(DerivedStorage + 28) = v52 + 1;
      *(v50 + 8 * (v52 % v51)) = v48 + -1.0;
    }

    if (v53 >= v51)
    {
      if (v51)
      {
        v54 = *(DerivedStorage + 32);
        v55 = v51;
        v56 = 0.0;
        v57 = v54;
        v58 = v51;
        do
        {
          v59 = *v57++;
          v56 = v56 + v59;
          --v58;
        }

        while (v58);
        v60 = v56 / v51;
        v61 = 0.0;
        do
        {
          v62 = *v54++;
          v61 = v61 + (v62 - v60) * (v62 - v60);
          --v55;
        }

        while (v55);
        v63 = v61 / v51;
      }

      else
      {
        v60 = NAN;
        v63 = NAN;
      }

      if (fabs(sqrt(v63) / v60) < 0.02 && fabs(v49) < 0.0002)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetDouble();
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(Mutable);
        *(v10 + 28) = 0;
        *(v10 + 56) = v48;
        v39 = *(v5 + 4) + 1;
      }
    }

    *(v5 + 4) = v39;
    *(v5 + 48) = 0;
  }
}

uint64_t frm_preFilterFnMean(double a1, double a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v5 = **(result + 16);
  v6 = *(v5 + 48);
  v8 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8[v6] = a2;
  v7[v6] = a1;
  v9 = (v6 + 1);
  *(v5 + 48) = v9;
  if (v9 == *v5)
  {
    if (v9)
    {
      v10 = 0.0;
      v11 = v9;
      do
      {
        v12 = *v8++;
        v10 = v10 + v12;
        --v11;
      }

      while (v11);
      v13 = v9;
      v14 = 0.0;
      do
      {
        v15 = *v7++;
        v14 = v14 + v15;
        --v9;
      }

      while (v9);
      v16 = v10 / v13;
      v17 = v14 / v13;
    }

    else
    {
      v16 = NAN;
      v17 = NAN;
    }

    frm_processDeltaUpdate(v17, v16);
    result = CMBaseObjectGetDerivedStorage();
    v18 = **(result + 16);
    if (v18)
    {
      *(v18 + 48) = 0;
    }
  }

  return result;
}

uint64_t frm_preFilterFnMedian(double a1, double a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v5 = **(result + 16);
  v6 = *(v5 + 48);
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v7[v6] = a2;
  v8[v6] = a1;
  v9 = v6 + 1;
  *(v5 + 48) = v6 + 1;
  if (v6 + 1 == *v5)
  {
    if (v6 == -1)
    {
      v13 = 0;
      v10 = 0.0;
    }

    else
    {
      v10 = 0.0;
      v11 = (v6 + 1);
      do
      {
        v12 = *v7++;
        v10 = v10 + v12;
        --v11;
      }

      while (v11);
      v13 = (v6 + 1);
    }

    v14 = v10 / v9;
    qsort(v8, v13, 8uLL, compare);
    v15 = v9 >> 1;
    if (v6)
    {
      v16 = v8[v15 - 1] + v8[v15];
    }

    else
    {
      v16 = v8[v15];
    }

    frm_processDeltaUpdate(v16, v14);
    result = CMBaseObjectGetDerivedStorage();
    v17 = **(result + 16);
    if (v17)
    {
      *(v17 + 48) = 0;
    }
  }

  return result;
}

uint64_t frm_preFilterFnRemoveOutliersLocal(double a1, double a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v5 = **(result + 16);
  v6 = *(v5 + 48);
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v7[v6] = a2;
  v8[v6] = a1;
  v9 = (v6 + 1);
  *(v5 + 48) = v9;
  if (v9 == *v5)
  {
    if (v9)
    {
      v10 = 0.0;
      v11 = v7;
      v12 = v9;
      do
      {
        v13 = *v11++;
        v10 = v10 + v13;
        --v12;
      }

      while (v12);
      v14 = v9;
      v15 = 0.0;
      v16 = v8;
      v17 = v9;
      do
      {
        v18 = *v16++;
        v15 = v15 + v18;
        --v17;
      }

      while (v17);
      v19 = *(v5 + 24);
      v20 = v7;
      v21 = v19;
      v22 = v9;
      v23 = v10 / v14;
      do
      {
        v24 = *v20++;
        *v21++ = v24 * v24;
        --v22;
      }

      while (v22);
      v25 = 0.0;
      v26 = v9;
      do
      {
        v27 = *v19++;
        v25 = v25 + v27;
        --v26;
      }

      while (v26);
      v28 = *(v5 + 32);
      v29 = v7;
      v30 = v8;
      v31 = v28;
      v32 = v9;
      do
      {
        v33 = *v29++;
        v34 = v33;
        v35 = *v30++;
        *v31++ = v34 * v35;
        --v32;
      }

      while (v32);
      v36 = 0.0;
      v37 = v9;
      do
      {
        v38 = *v28++;
        v36 = v36 + v38;
        --v37;
      }

      while (v37);
      v39 = v15 / v14;
      v40 = (-v36 / v14 + v23 * (v15 / v14)) / (-v25 / v14 + v23 * v23);
      v41 = v39 - v40 * v23;
      v42 = *(v5 + 40);
      v43 = v42;
      v44 = v9;
      do
      {
        v45 = *v8++;
        v46 = v45;
        v47 = *v7++;
        *v43++ = vabdd_f64(v46, v41 + v40 * v47);
        --v44;
      }

      while (v44);
      v48 = 0.0;
      v49 = v42;
      v50 = v9;
      do
      {
        v51 = *v49++;
        v48 = v48 + v51;
        --v50;
      }

      while (v50);
      v52 = 0.0;
      v53 = v9;
      v54 = v48 / v14;
      do
      {
        v55 = *v42++;
        v52 = v52 + (v55 - v54) * (v55 - v54);
        --v53;
      }

      while (v53);
      v56 = 0;
      v57 = sqrt(v52 / v14);
      v58 = v57 + v57;
      do
      {
        if (*(*(v5 + 40) + 8 * v56) <= v58)
        {
          frm_processDeltaUpdate(*(*(v5 + 16) + 8 * v56), *(*(v5 + 8) + 8 * v56));
          LODWORD(v9) = *v5;
        }

        ++v56;
      }

      while (v56 < v9);
    }

    result = CMBaseObjectGetDerivedStorage();
    v59 = **(result + 16);
    if (v59)
    {
      *(v59 + 48) = 0;
    }
  }

  return result;
}

uint64_t frm_preFilterFnRemoveOutliersGlobal(double a1, double a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v5 = **(result + 16);
  v6 = *(v5 + 48);
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v7[v6] = a2;
  v8[v6] = a1;
  v9 = (v6 + 1);
  *(v5 + 48) = v9;
  if (v9 == *v5)
  {
    v10 = 0.0;
    if (v9)
    {
      v11 = v7;
      v12 = v9;
      do
      {
        v13 = *v11++;
        v10 = v10 + v13;
        --v12;
      }

      while (v12);
      v14 = 0.0;
      v15 = v8;
      v16 = v9;
      do
      {
        v17 = *v15++;
        v14 = v14 + v17;
        --v16;
      }

      while (v16);
      v18 = *(v5 + 24);
      v19 = v7;
      v20 = v18;
      v21 = v9;
      do
      {
        v22 = *v19++;
        *v20++ = v22 * v22;
        --v21;
      }

      while (v21);
      v23 = 0.0;
      v24 = v9;
      do
      {
        v25 = *v18++;
        v23 = v23 + v25;
        --v24;
      }

      while (v24);
      v26 = *(v5 + 32);
      v27 = v7;
      v28 = v8;
      v29 = v26;
      v30 = v9;
      do
      {
        v31 = *v27++;
        v32 = v31;
        v33 = *v28++;
        *v29++ = v32 * v33;
        --v30;
      }

      while (v30);
      v34 = 0.0;
      v35 = v9;
      do
      {
        v36 = *v26++;
        v34 = v34 + v36;
        --v35;
      }

      while (v35);
    }

    else
    {
      v14 = 0.0;
      v23 = 0.0;
      v34 = 0.0;
    }

    v37 = *(v5 + 4);
    v38 = v9;
    v39 = v14 + *(v5 + 64) * v37 * v9;
    v40 = *(v5 + 72);
    v41 = v23 + *(v5 + 80) * v37 * v9;
    v42 = (v9 + v9 * v37);
    v43 = (v10 + *(v5 + 56) * v37 * v9) / v42;
    v44 = v39 / v42;
    *(v5 + 56) = v43;
    *(v5 + 64) = v39 / v42;
    v45 = (v34 + v40 * v37 * v9) / v42;
    *(v5 + 72) = v45;
    *(v5 + 80) = v41 / v42;
    if (v9)
    {
      v46 = -(v45 - v43 * v44) / -(v41 / v42 - v43 * v43);
      v47 = v44 - v46 * v43;
      v48 = *(v5 + 40);
      v49 = v48;
      v50 = v9;
      do
      {
        v51 = *v8++;
        v52 = v51;
        v53 = *v7++;
        *v49++ = vabdd_f64(v52, v47 + v46 * v53);
        --v50;
      }

      while (v50);
      v54 = 0.0;
      v55 = v48;
      v56 = v9;
      do
      {
        v57 = *v55++;
        v54 = v54 + v57;
        --v56;
      }

      while (v56);
      v58 = 0.0;
      v59 = v9;
      v60 = v54 / v38;
      do
      {
        v61 = *v48++;
        v58 = v58 + (v61 - v60) * (v61 - v60);
        --v59;
      }

      while (v59);
      v62 = 0;
      v63 = sqrt(v58 / v38);
      v64 = v63 + v63;
      do
      {
        if (*(*(v5 + 40) + 8 * v62) <= v64)
        {
          frm_processDeltaUpdate(*(*(v5 + 16) + 8 * v62), *(*(v5 + 8) + 8 * v62));
          LODWORD(v9) = *v5;
        }

        ++v62;
      }

      while (v62 < v9);
    }

    result = CMBaseObjectGetDerivedStorage();
    v65 = **(result + 16);
    if (v65)
    {
      *(v65 + 48) = 0;
    }
  }

  return result;
}

uint64_t FigActivitySchedulerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigActivitySchedulerGetClassID_sRegisterFigActivitySchedulerTypeOnce, RegisterFigActivitySchedulerType);

  return CMBaseClassGetCFTypeID();
}

__CFString *FigGetNotifyingObjectForMediaAccessibilityChanged()
{
  if (FigGetNotifyingObjectForMediaAccessibilityChanged_registerInitFigMediaAccessibiltySupportOnce != -1)
  {
    FigGetNotifyingObjectForMediaAccessibilityChanged_cold_1();
  }

  return @"FigMediaAccessibilityNotification_MediaAccessibilityChanged";
}

uint64_t _initFigMediaAccessibiltySupport()
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRegisterForBarrierSupport();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterAddListener();
}

uint64_t _mediaAccessibilityDidChangeNotificationCallback()
{
  dispatch_get_global_queue(0, 0);

  return FigDeferNotificationToDispatchQueue();
}

uint64_t _deferredMediaAccessibilityDidChangeNotificationCallback()
{
  if (FigGetNotifyingObjectForMediaAccessibilityChanged_registerInitFigMediaAccessibiltySupportOnce != -1)
  {
    FigGetNotifyingObjectForMediaAccessibilityChanged_cold_1();
  }

  return CMNotificationCenterPostNotification();
}

uint64_t RegisterFigPictureCollectionWriterBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPictureCollectionWriterGetTypeID()
{
  MEMORY[0x19A8D3660](&FigPictureCollectionWriterGetClassID_sRegisterFigPictureCollectionWriterBaseTypeOnce, RegisterFigPictureCollectionWriterBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigCoreTextSubtitleRendererTestingUpdateMediaAccessibility(uint64_t a1, int a2, uint64_t a3)
{
  FigCaptionRendererSession = FigSubtitleRendererGetFigCaptionRendererSession();

  return FigCaptionRendererSessionUpdateMediaAccessibility(FigCaptionRendererSession, a2, a3);
}

uint64_t OUTLINED_FUNCTION_1_77(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return FigCaptionRendererSessionCreate(0, 0, 0, &a10);
}

uint64_t setupFCR(uint64_t a1)
{
  v2 = FigCaptionRendererSessionCreate(0, 0, 0, (a1 + 200));
  if (v2)
  {
    v3 = v2;
    setupFCR_cold_1();
  }

  else
  {
    v3 = FigCaptionRendererSessionSetHiddenCallback(*(a1 + 200), setHiddenFCR);
    if (v3)
    {
      setupFCR_cold_2();
    }

    else
    {
      [*(a1 + 8) setHidden:1];
      v4 = *(a1 + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __setupFCR_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  return v3;
}

uint64_t setupCoreTextRenderer(uint64_t a1)
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 16);
  *(a1 + 288) = *MEMORY[0x1E695F058];
  *(a1 + 304) = v3;
  *(a1 + 224) = 0;
  *(a1 + 256) = v2;
  *(a1 + 272) = v3;
  *(a1 + 216) = 0;
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(a1 + 232) = Mutable;
  if (Mutable)
  {
    v6 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
    *(a1 + 240) = v6;
    if (v6)
    {
      v7 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
      *(a1 + 248) = v7;
      if (v7)
      {
        v8 = FigCoreTextSubtitleRendererCreate(v4, (a1 + 208));
        if (v8)
        {
          setupCoreTextRenderer_cold_1();
        }
      }

      else
      {
        setupCoreTextRenderer_cold_2(&v10);
        return v10;
      }
    }

    else
    {
      setupCoreTextRenderer_cold_3(&v11);
      return v11;
    }
  }

  else
  {
    setupCoreTextRenderer_cold_4(&v12);
    return v12;
  }

  return v8;
}

void releaseFCR(uint64_t a1)
{
  FigCaptionRendererSessionStop(*(a1 + 200));
  v2 = *(a1 + 200);
  if (v2)
  {

    CFRelease(v2);
  }
}

void releaseCoreTextRenderer(uint64_t a1)
{
  if (!*(a1 + 170))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
  }

  if (*(a1 + 208))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v2 = *(a1 + 208);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  v3 = *(a1 + 240);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 240), i);
        [ValueAtIndex removeFromSuperlayer];
      }
    }

    v8 = *(a1 + 240);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  v9 = *(a1 + 248);
  if (v9)
  {
    v10 = CFArrayGetCount(v9);
    if (v10 >= 1)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = CFArrayGetValueAtIndex(*(a1 + 248), j);
        [v13 removeFromSuperlayer];
      }
    }

    v14 = *(a1 + 248);
    if (v14)
    {
      CFRelease(v14);
    }
  }

  v15 = *(a1 + 232);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 216);
  if (v16)
  {

    CFRelease(v16);
  }
}

void getLayoutForAnimation(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = *(a1 + 176);
  if (v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getLayoutForAnimation_block_invoke;
    v8[3] = &__block_descriptor_80_e5_v8__0l;
    v8[4] = a1;
    *&v8[5] = a3;
    *&v8[6] = a4;
    *&v8[7] = a5;
    *&v8[8] = a6;
    v8[9] = a2;
    dispatch_sync(v7, v8);
  }
}

void updateSubtitleDisplay(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __updateSubtitleDisplay_block_invoke;
  v5[3] = &__block_descriptor_41_e5_v8__0l;
  v5[4] = a1;
  v6 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

unsigned __int8 *updateNonForcedSubtitleDisplayEnabledDo(unsigned __int8 *result)
{
  v1 = *result;
  v2 = *(*result + 168);
  v3 = result[8];
  if (v2 != v3)
  {
    *(v1 + 168) = v3;
    v2 = v3;
  }

  if (*(v1 + 184) == 1)
  {
    *(v1 + 171) = (*(v1 + 224) | v2) == 0;
  }

  return result;
}

void setHiddenFCR(char a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __setHiddenFCR_block_invoke;
  v2[3] = &unk_1E7483B70;
  v2[4] = a2;
  v3 = a1;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __setupFCR_block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  FigCaptionRendererSessionSetCALayerDevice(*(*(a1 + 32) + 200), *(*(a1 + 32) + 8));
  [MEMORY[0x1E6979518] commit];
  v2 = *(*(a1 + 32) + 8);
}

uint64_t __setHiddenFCR_block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [*(a1 + 32) setHidden:*(a1 + 40)];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

void subtitleChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (a5)
  {
    digestSubtitleSample(0, a2, a5);
  }
}

void digestSubtitleSample(int a1, uint64_t a2, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v7[0] = a2;
  v7[1] = cf;
  if (a1)
  {
    digestSubtitleSampleDo_0(v7);
  }

  else
  {
    v6 = *(a2 + 176);
    if (v6)
    {
      dispatch_sync_f(v6, v7, digestSubtitleSampleDo_0);
    }
  }

  updateSubtitleDisplay(a2, 1);
}

void updateSubtitleDo(uint64_t *a1)
{
  v2 = *a1;
  *(v2 + 224) = *(a1 + 9);
  v3 = *(v2 + 216);
  v4 = a1[2];
  *(v2 + 216) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (*(a1 + 8))
  {
    v5 = *(MEMORY[0x1E695F058] + 16);
    *(v2 + 256) = *MEMORY[0x1E695F058];
    *(v2 + 272) = v5;
  }

  v6 = !*(v2 + 224) && !*(v2 + 168);
  *(v2 + 171) = v6;
}

double __getLayoutForAnimation_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v11 = *(v2 + 16);
  v12 = v3;
  v4 = *(a1 + 56);
  *(v2 + 16) = *(a1 + 40);
  *(v2 + 32) = v4;
  v10 = 0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 72);
  v14 = 0;
  v13[0] = v5;
  v13[1] = 0;
  v13[2] = v6;
  v13[3] = &v10;
  v13[4] = &v14;
  getSuggestedLayoutDo(v13);
  v7 = *(a1 + 32);
  result = *&v11;
  v9 = v12;
  *(v7 + 16) = v11;
  *(v7 + 32) = v9;
  return result;
}

void getSuggestedLayout(int a1, unint64_t a2, unsigned __int8 a3, unint64_t a4, unint64_t a5)
{
  v7 = 0;
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = &v7;
  if (a1)
  {
    getSuggestedLayoutDo(v6);
  }

  else
  {
    v5 = *(a2 + 176);
    if (v5)
    {
      dispatch_sync_f(v5, v6, getSuggestedLayoutDo);
    }
  }
}

void getSuggestedLayoutDo(unint64_t *a1)
{
  v2 = *a1;
  v3 = *(MEMORY[0x1E695F058] + 16);
  v37 = *MEMORY[0x1E695F058];
  v38 = v3;
  v4 = *(v2 + 32);
  v31 = *(v2 + 16);
  v32 = v4;
  v33 = *(v2 + 48);
  FCRGetTransform(&v19, *(v2 + 48), *(v2 + 56), *(v2 + 32), *(v2 + 40));
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v5 = *(v2 + 64);
  v6 = 1.0;
  if (*(v2 + 169) == 1)
  {
    v7 = [*(v2 + 8) getLayerDisplay];
    if ([v7 isOverscanned])
    {
      [v7 overscanAmount];
      v6 = v8;
    }
  }

  v9 = [*(v2 + 8) contentsAreFlipped];
  cf = 0;
  v11 = *(v2 + 208);
  v10 = *(v2 + 216);
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v19 = v31;
  v20 = v32;
  v25 = v5;
  v26 = 0;
  v27 = 0;
  v28 = v6;
  v29 = v9;
  *a1[4] = FigSubtitleRendererLayout(v11, v10, &v19, &v37, &cf);
  if (*(a1 + 8))
  {
    v12 = v38;
    *(v2 + 288) = v37;
    *(v2 + 304) = v12;
  }

  v13 = *(v2 + 280);
  if (v13 <= 0.0 || (v14 = *(v2 + 272), v14 <= 0.0) || fabs((*(v2 + 304) - v14) / v14) >= 0.02 || fabs((*(v2 + 312) - v13) / v13) >= 0.02)
  {
    *a1[3] = 1;
    if (*(a1 + 8))
    {
      v15 = v38;
      *(v2 + 256) = v37;
      *(v2 + 272) = v15;
      v16 = *(v2 + 224);
      v19 = v2;
      BYTE9(v19) = v16;
      v20 = cf;
      updateSubtitleDo(&v19);
    }
  }

  else
  {
    *a1[3] = 0;
  }

  v17 = a1[2];
  v18 = v38;
  *v17 = v37;
  v17[1] = v18;
  if (cf)
  {
    CFRelease(cf);
  }
}

void __updateSubtitleDisplay_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13 = 0;
  v4 = *(MEMORY[0x1E695F058] + 16);
  v12[0] = *MEMORY[0x1E695F058];
  v12[1] = v4;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v5 = 1;
  v11 = 1;
  v6 = *(v2 + 176);
  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __updateSubtitleDisplayDoAsync_block_invoke;
    v7[3] = &unk_1E7482510;
    v7[4] = &v8;
    v7[5] = v2;
    dispatch_sync(v6, v7);
    v5 = *(v9 + 24);
  }

  if (v5 != [*(v2 + 8) isHidden])
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [*(v2 + 8) setHidden:*(v9 + 24) != 0];
    [MEMORY[0x1E6979518] commit];
  }

  if (([*(v2 + 8) isHidden] & 1) == 0)
  {
    getSuggestedLayout(0, v2, 1u, v12, &v13);
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    [*(v2 + 8) setNeedsLayout];
    if (v13 | v3)
    {
      [*(v2 + 8) setNeedsDisplay];
    }

    [MEMORY[0x1E6979518] commit];
  }

  _Block_object_dispose(&v8, 8);
}

void sub_1965CCAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RegisterFigMetadataWriterBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigMetadataWriterGetCFTypeID()
{
  MEMORY[0x19A8D3660](&FigMetadataWriterGetClassID_sRegisterFigMetadataWriterBaseTypeOnce, RegisterFigMetadataWriterBaseType);

  return CMBaseClassGetCFTypeID();
}

CFTypeRef FigMetadataWriterRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void FigMetadataWriterRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigCreateCGImageFromPixelBufferWithDynamicRangeConversion(CVPixelBufferRef pixelBuffer, int a2, int a3, CGImageRef *imageOut)
{
  if (!a2 || !a3)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v9 = Mutable;
      if (a2)
      {
        if (a3)
        {
LABEL_6:
          v10 = VTCreateCGImageFromCVPixelBuffer(pixelBuffer, v9, imageOut);
          CFRelease(v9);
          return v10;
        }
      }

      else
      {
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E69834C8], *MEMORY[0x1E695E4C0]);
        if (a3)
        {
          goto LABEL_6;
        }
      }

      CFDictionaryAddValue(v9, *MEMORY[0x1E69834D8], *MEMORY[0x1E695E4C0]);
      goto LABEL_6;
    }
  }

  return VTCreateCGImageFromCVPixelBuffer(pixelBuffer, 0, imageOut);
}

uint64_t FigShareAndAirPlayHelperLocalGetShared()
{
  if (FigShareAndAirPlayHelperLocalGetShared_onceToken != -1)
  {
    FigShareAndAirPlayHelperLocalGetShared_cold_1();
  }

  return FigShareAndAirPlayHelperLocalGetShared_sSharedHelper;
}

void __FigShareAndAirPlayHelperLocalGetShared_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  FigShareAndAirPlayHelperGetClassID();
  if (!CMDerivedObjectCreate())
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    DerivedStorage[1] = dispatch_queue_create("FigShareAndAirPlayHelperLocal.queue", 0);
    *DerivedStorage = CFSetCreateMutable(v0, 0, 0);
    v4 = 0;
    v5 = &v4;
    v6 = 0x3052000000;
    v7 = __Block_byref_object_copy__4;
    v2 = getTUCallCenterClass_softClass;
    v8 = __Block_byref_object_dispose__4;
    v9 = getTUCallCenterClass_softClass;
    if (!getTUCallCenterClass_softClass)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __getTUCallCenterClass_block_invoke;
      v3[3] = &unk_1E7486A28;
      v3[4] = &v4;
      __getTUCallCenterClass_block_invoke(v3);
      v2 = v5[5];
    }

    _Block_object_dispose(&v4, 8);
    DerivedStorage[2] = [objc_msgSend(v2 "sharedInstance")];
    FigShareAndAirPlayHelperLocalGetShared_sSharedHelper = 0;
  }
}

void sub_1965CCF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t localHelper_SetEnableEchoMitigation(uint64_t a1, char a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v6 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __localHelper_SetEnableEchoMitigation_block_invoke;
    block[3] = &__block_descriptor_49_e5_v8__0l;
    v9 = a2;
    block[4] = DerivedStorage;
    block[5] = a3;
    dispatch_async(v6, block);
    return 0;
  }

  else
  {
    localHelper_SetEnableEchoMitigation_cold_1(&v10);
    return v10;
  }
}

Class __getTUCallCenterClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TelephonyUtilitiesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7486A48;
    v5 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    __getTUCallCenterClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("TUCallCenter");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getTUCallCenterClass_block_invoke_cold_1();
  }

  getTUCallCenterClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

CFIndex OUTLINED_FUNCTION_2_77()
{
  v2 = **(v0 + 32);

  return CFSetGetCount(v2);
}

uint64_t FigMetadataSerializerGetCFTypeID()
{
  MEMORY[0x19A8D3660](&FigMetadataSerializerGetClassID_sRegisterFigMetadataSerializerBaseTypeOnce, RegisterFigMetadataSerializerBaseType);

  return CMBaseClassGetCFTypeID();
}

CFTypeRef FigMetadataSerializerRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

uint64_t FigMetadataSerializerCreateUserDataCommon(uint64_t a1, char a2, void *a3)
{
  if (a3)
  {
    FigMetadataSerializerGetClassID();
    v5 = CMDerivedObjectCreate();
    if (!v5)
    {
      *(CMBaseObjectGetDerivedStorage() + 16) = a2;
      *a3 = 0;
    }

    return v5;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigISOUserDataCreateItemDataFromText(const __CFAllocator *a1, uint64_t a2, int a3, const __CFLocale *a4, __CFData **a5)
{
  length = 0;
  *bytes = 0;
  if (!a2)
  {
    FigISOUserDataCreateItemDataFromText_cold_3(v15);
    return *v15;
  }

  if (!a5)
  {
    FigISOUserDataCreateItemDataFromText_cold_2(v15);
    return *v15;
  }

  if (a3 == 134217984 || a3 == 268435712)
  {
    v13 = __rev16(FigMetadataGetPackedISO639_2TFromLocale(a4));
    BytesFromCFString = FigCreateBytesFromCFString();
    if (BytesFromCFString)
    {
      v9 = BytesFromCFString;
      Mutable = CFDataCreateMutable(a1, 0);
      CFDataAppendBytes(Mutable, bytes, 6);
      if (a3 == 268435712)
      {
        *v15 = -2;
        CFDataAppendBytes(Mutable, v15, 2);
      }

      CFDataAppendBytes(Mutable, v9, length);
      *a5 = Mutable;
      CFAllocatorDeallocate(a1, v9);
      return 0;
    }

    FigISOUserDataCreateItemDataFromText_cold_1(v15);
    return *v15;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

__CFString *FigUserDataSerializerCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    CFStringAppendFormat(Mutable, 0, @" FigUserDataSerializer %p\n", DerivedStorage);
    CFStringAppendFormat(Mutable, 0, @"  - free atom size: %d\n", *(v2 + 8));
    CFStringAppendFormat(Mutable, 0, @"  - minimum container size: %d\n", *(v2 + 12));
    CFStringAppendFormat(Mutable, 0, @"%@", *v2);
  }

  else
  {
    FigUserDataSerializerCopyDebugDescription_cold_1();
  }

  return Mutable;
}

uint64_t FigUserDataSerializerCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigUserDataSerializerCopyProperty_cold_1(&v13);
    return v13;
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, @"freeAtomSize"))
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = (v7 + 8);
  }

  else
  {
    if (!CFEqual(a2, @"minimumSize"))
    {
      if (!CFEqual(a2, @"format"))
      {
        return 4294954512;
      }

      v10 = CFRetain(@"com.apple.quicktime.udta");
      goto LABEL_7;
    }

    v8 = *MEMORY[0x1E695E480];
    v9 = (v7 + 12);
  }

  v10 = CFNumberCreate(v8, kCFNumberSInt32Type, v9);
LABEL_7:
  v11 = v10;
  result = 0;
  *a4 = v11;
  return result;
}

uint64_t FigUserDataSerializerAddItem(const void *a1, const void *a2, __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v36 = 0;
  cf = 0;
  value = 0;
  key = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigUserDataSerializerAddItem_cold_4(&v37);
    goto LABEL_60;
  }

  if (!a2 || !a3 || !a4)
  {
    FigUserDataSerializerAddItem_cold_3(&v37);
    goto LABEL_60;
  }

  v11 = DerivedStorage;
  ActualKey = FigUserDataCreateActualKey(a1, a2, a3, &v36, &key);
  if (ActualKey)
  {
    goto LABEL_61;
  }

  if (*(v11 + 16))
  {
    if (v36 == 1952540515 || v36 == 1851878757)
    {
      goto LABEL_21;
    }

    if (v36 == -1453039239)
    {
      v13 = CFGetTypeID(a4);
      if (v13 == CFStringGetTypeID())
      {
        goto LABEL_31;
      }

      v14 = CFGetTypeID(a4);
      TypeID = CFDateGetTypeID();
      goto LABEL_22;
    }

    if (HIBYTE(v36) == 169 || FigUserDataWeKnowIsISOText(v36))
    {
LABEL_21:
      v14 = CFGetTypeID(a4);
      TypeID = CFStringGetTypeID();
    }

    else
    {
      v14 = CFGetTypeID(a4);
      TypeID = CFDataGetTypeID();
    }

LABEL_22:
    if (v14 != TypeID)
    {
      FigUserDataSerializerAddItem_cold_6(&v37);
LABEL_60:
      NewItem = v37;
      goto LABEL_43;
    }

    goto LABEL_31;
  }

  if (v36 > 1970430323)
  {
    if (v36 == 2037543523 || v36 == 1970430324)
    {
      v16 = CFGetTypeID(a4);
      v17 = CFNumberGetTypeID();
      goto LABEL_30;
    }
  }

  else
  {
    if (v36 == 1684108389)
    {
      v19 = CFGetTypeID(a4);
      if (v19 == CFStringGetTypeID())
      {
        goto LABEL_31;
      }

      v16 = CFGetTypeID(a4);
      v17 = CFDateGetTypeID();
      goto LABEL_30;
    }

    if (v36 == 1952540515)
    {
      v16 = CFGetTypeID(a4);
LABEL_25:
      v17 = CFStringGetTypeID();
      goto LABEL_30;
    }
  }

  IsISOText = FigISOUserDataWeKnowIsISOText(v36);
  v16 = CFGetTypeID(a4);
  if (IsISOText)
  {
    goto LABEL_25;
  }

  v17 = CFDataGetTypeID();
LABEL_30:
  if (v16 != v17)
  {
    FigUserDataSerializerAddItem_cold_5(&v37);
    goto LABEL_60;
  }

LABEL_31:
  Mutable = *v11;
  if (!*v11)
  {
    v21 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v21, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *v11 = Mutable;
    if (!Mutable)
    {
      FigUserDataSerializerAddItem_cold_2(&v37);
      goto LABEL_60;
    }
  }

  if (!CFDictionaryGetValueIfPresent(Mutable, key, &value))
  {
    NewItem = FigUserDataCreateNewItem(a1, a4, a5, &cf);
    if (NewItem)
    {
      goto LABEL_43;
    }

    v29 = cf;
    CFDictionarySetValue(*v11, key, cf);
    if (!v29)
    {
      goto LABEL_45;
    }

LABEL_44:
    CFRelease(v29);
    goto LABEL_45;
  }

  v22 = CFGetTypeID(value);
  if (v22 == CFDictionaryGetTypeID())
  {
    v23 = value;
    if (FigCFEqual() && FigQTUserDataPropertiesIndicateSameLanguageCode(v23, a5))
    {
      goto LABEL_42;
    }

    ActualKey = FigUserDataCreateNewItem(a1, a4, a5, &cf);
    if (!ActualKey)
    {
      v24 = CFGetAllocator(a1);
      v25 = CFArrayCreateMutable(v24, 0, MEMORY[0x1E695E9C0]);
      if (!v25)
      {
        FigUserDataSerializerAddItem_cold_1(&v37);
        goto LABEL_60;
      }

      v26 = v25;
      CFArrayAppendValue(v25, v23);
      v27 = cf;
      CFArrayAppendValue(v26, cf);
      CFDictionarySetValue(*v11, key, v26);
      if (v27)
      {
        CFRelease(v27);
        cf = 0;
      }

      CFRelease(v26);
LABEL_42:
      NewItem = 0;
      goto LABEL_43;
    }

LABEL_61:
    NewItem = ActualKey;
LABEL_43:
    v29 = cf;
    if (!cf)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (FigCFEqual() && CFArrayGetCount(value) >= 1)
  {
    v31 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(value, v31);
      if (FigQTUserDataPropertiesIndicateSameLanguageCode(ValueAtIndex, a5))
      {
        goto LABEL_42;
      }
    }

    while (++v31 < CFArrayGetCount(value));
  }

  NewItem = FigUserDataCreateNewItem(a1, a4, a5, &cf);
  if (NewItem)
  {
    goto LABEL_43;
  }

  v29 = cf;
  CFArrayAppendValue(value, cf);
  if (v29)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (key)
  {
    CFRelease(key);
  }

  return NewItem;
}

CFDictionaryRef *FigUserDataSerializerContainsKey(const void *a1, const void *a2, __CFString *a3)
{
  key = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  if (!DerivedStorage)
  {
    FigUserDataSerializerContainsKey_cold_2();
    return v7;
  }

  if (a2 && a3)
  {
    if (*DerivedStorage)
    {
      ActualKey = FigUserDataCreateActualKey(a1, a2, a3, 0, &key);
      v10 = key;
      if (ActualKey)
      {
        v7 = 0;
        if (!key)
        {
          return v7;
        }
      }

      else
      {
        v7 = CFDictionaryContainsKey(*v7, key);
        v10 = key;
        if (!key)
        {
          return v7;
        }
      }

      CFRelease(v10);
      return v7;
    }
  }

  else
  {
    FigUserDataSerializerContainsKey_cold_1();
  }

  return 0;
}

BOOL FigQTUserDataPropertiesIndicateSameLanguageCode(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v7 = 0;
  PackedLanguageCodeFromProperties = FigQTUserDataGetPackedLanguageCodeFromProperties(a1, &v7);
  v6 = 0;
  v4 = FigQTUserDataGetPackedLanguageCodeFromProperties(a2, &v6);
  result = 0;
  if (PackedLanguageCodeFromProperties && v4)
  {
    return v7 == v6;
  }

  return result;
}

uint64_t FigUserDataCreateNewItem(const void *a1, const void *a2, const __CFDictionary *a3, __CFDictionary **a4)
{
  v7 = CFGetAllocator(a1);
  if (a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v7, 0, a3);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v9 = MutableCopy;
  if (MutableCopy)
  {
    CFDictionarySetValue(MutableCopy, @"value", a2);
    result = 0;
    *a4 = v9;
  }

  else
  {
    FigUserDataCreateNewItem_cold_1(&v11);
    return v11;
  }

  return result;
}

BOOL FigQTUserDataGetPackedLanguageCodeFromProperties(const __CFDictionary *a1, _WORD *a2)
{
  Value = CFDictionaryGetValue(a1, @"locale");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFLocaleGetTypeID())
    {
      PackedISO639_2TFromLocale = FigMetadataGetPackedISO639_2TFromLocale(v5);
      goto LABEL_13;
    }
  }

  v8 = CFDictionaryGetValue(a1, @"languageCode");
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = CFGetTypeID(v8);
  if (v10 != CFNumberGetTypeID())
  {
    v12 = CFGetTypeID(v9);
    if (v12 == CFStringGetTypeID())
    {
      PackedISO639_2TFromLocale = FigMetadataGetPackedISO639_2T(v9);
LABEL_13:
      v11 = 1;
      if (!a2)
      {
        return v11;
      }

      goto LABEL_14;
    }

    return 0;
  }

  valuePtr = 0;
  CFNumberGetValue(v9, kCFNumberSInt16Type, &valuePtr);
  v11 = valuePtr > 0x3FFu && valuePtr != 0x7FFF;
  if (v11)
  {
    PackedISO639_2TFromLocale = valuePtr;
  }

  else
  {
    PackedISO639_2TFromLocale = 0;
  }

  if (a2)
  {
LABEL_14:
    if (v11)
    {
      *a2 = PackedISO639_2TFromLocale;
      return 1;
    }
  }

  return v11;
}

uint64_t FigUserDataSerializerCreateCopy(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!a3)
    {
      FigUserDataSerializerCreateCopy_cold_1(&v13);
      return v13;
    }

    v6 = DerivedStorage;
    v7 = FigMetadataSerializerCreateUserDataCommon(a1, 1, &v12);
    v8 = v12;
    if (v7)
    {
      goto LABEL_11;
    }

    v9 = CMBaseObjectGetDerivedStorage();
    if (*v6)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, *v6);
    }

    else
    {
      MutableCopy = 0;
    }

    v7 = 0;
    *v9 = MutableCopy;
    *(v9 + 8) = *(v6 + 8);
    *(v9 + 16) = *(v6 + 16);
    v8 = v12;
  }

  else
  {
    FigUserDataSerializerCreateCopy_cold_2(&v13);
    v8 = 0;
    v7 = v13;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  if (!v7)
  {
    *a3 = v8;
    return v7;
  }

LABEL_11:
  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

uint64_t FigVTTNoteBlockCreate(uint64_t a1, void *a2)
{
  if (a2)
  {
    FigVTTNodeGetClassID();
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v3 = FigVTTInitializeNodeBaseStorage(DerivedStorage);
      if (!v3)
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    FigVTTNoteBlockCreate_cold_1(&v6);
    return v6;
  }

  return v3;
}

void figVTTNoteBlock_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  FigVTTReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figVTTNoteBlock_CopyDebugDesc()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"note: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figVTTNoteBlock_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 3;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figVTTNoteBlock_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figVTTNoteBlock_copyNodeDocumentSerialization(uint64_t a1, CFStringRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = 0;
    v4 = *(DerivedStorage + 8);
    if (v4 && (v5 = CFRetain(v4)) != 0)
    {
      v6 = v5;
      *a2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@\n%@\n", @"NOTE", v5);
      CFRelease(v6);
      return 0;
    }

    else
    {
      figVTTNoteBlock_copyNodeDocumentSerialization_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    figVTTNoteBlock_copyNodeDocumentSerialization_cold_2(&v9);
    return v9;
  }
}

uint64_t frlo_registerFigRenderedLegibleOutputManager()
{
  result = _CFRuntimeRegisterClass();
  sFigRenderedLegibleOutputManagerID = result;
  return result;
}

uint64_t FigRenderedLegibleOutputManagerCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = (a2 | a3) != 0;
  if ((a4 == 0) == v5)
  {
    FigRenderedLegibleOutputManagerCreate_cold_1(label);
    return *label;
  }

  if (!a5)
  {
    FigRenderedLegibleOutputManagerCreate_cold_7(label);
    return *label;
  }

  *a5 = 0;
  MEMORY[0x19A8D3660](&FigRenderedLegibleOutputManagerGetTypeID_sRegisterFigRenderedLegibleOutputManagerOnce, frlo_registerFigRenderedLegibleOutputManager);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigRenderedLegibleOutputManagerCreate_cold_6(label);
    return *label;
  }

  v11 = Instance;
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  v11[9] = Mutable;
  if (!Mutable)
  {
    FigRenderedLegibleOutputManagerCreate_cold_5(label);
LABEL_25:
    v19 = *label;
    goto LABEL_15;
  }

  v14 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], 0);
  v11[8] = v14;
  if (!v14)
  {
    FigRenderedLegibleOutputManagerCreate_cold_4(label);
    goto LABEL_25;
  }

  v15 = FigCaptionRendererSessionCreate(0, 0, v11, v11 + 12);
  if (!v15)
  {
    v16 = v11[12];
    if (!v16)
    {
      v19 = 0;
      goto LABEL_15;
    }

    v15 = FigCaptionRendererSessionSetLegibleOutputDevice(v16);
    if (!v15)
    {
      snprintf(__str, 0x100uLL, "com.apple.coremedia.renderedlegibleoutput.notificationqueue<%p>", v11);
      v17 = dispatch_queue_create(__str, 0);
      v11[3] = v17;
      if (v17)
      {
        snprintf(label, 0x100uLL, "com.apple.coremedia.renderedlegibleoutput.messagequeue<%p>", v11);
        v18 = dispatch_queue_create(label, 0);
        v11[2] = v18;
        if (v18)
        {
          if (a4 && v5)
          {
            v11[4] = a2;
            v11[5] = a3;
            v11[6] = FigCFWeakReferenceHolderCreateWithReferencedObject();
          }

          v19 = 0;
          *a5 = CFRetain(v11);
        }

        else
        {
          FigRenderedLegibleOutputManagerCreate_cold_2(&v21);
          v19 = v21;
        }

        goto LABEL_15;
      }

      FigRenderedLegibleOutputManagerCreate_cold_3(label);
      goto LABEL_25;
    }
  }

  v19 = v15;
LABEL_15:
  CFRelease(v11);
  return v19;
}

uint64_t FigRenderedLegibleOutputManagerSetRenderedLegibleOutputsDict(dispatch_queue_t *cf, CFTypeRef a2)
{
  v3 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  v6[0] = cf;
  if (a2)
  {
    v4 = CFRetain(a2);
  }

  else
  {
    v4 = 0;
  }

  v6[1] = v4;
  dispatch_sync_f(v3[2], v6, frlo_setLegibleOutputsDictDo);
  return 0;
}

void frlo_setLegibleOutputsDictDo(const __CFDictionary ***a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v3[7];
  v3[7] = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *a1;
  CFDictionaryApplyFunction((*a1)[9], frlo_finalizeFigRenderedLegibleOutputApplier, 0);
  CFDictionaryRemoveAllValues(v5[9]);
  CFDictionaryRemoveAllValues(v5[8]);
  v6 = v5[7];
  if (v6)
  {
    CFDictionaryApplyFunction(v6, frlo_rebuildFigRenderedLegibleOutputs_applier, v5);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v7 = a1[1];
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t FigRenderedLegibleOutputManagerSetNonForcedEnabledForMediaType(dispatch_queue_t *cf, int a2, unsigned __int8 a3)
{
  v5 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  v7 = cf;
  v8 = a2;
  v9 = a3;
  dispatch_sync_f(v5[2], &v7, frlo_setNonForcedEnabledForMediaTypeDo);
  return 0;
}

void frlo_setNonForcedEnabledForMediaTypeDo(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 1935832172)
  {
    v6 = *(a1 + 12);
    v4 = *a1;
    *(*a1 + 81) = v6;
    v5 = frlo_clearPreviousSubtitles;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v2 != 1668047728)
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 12);
    v4 = *a1;
    *(*a1 + 80) = v3;
    v5 = frlo_clearPreviousClosedCaptions;
    if (!v3)
    {
LABEL_6:
      CFDictionaryApplyFunction(v4[9], v5, 0);
LABEL_7:
      v4 = *a1;
      if (!*a1)
      {
        return;
      }
    }
  }

  CFRelease(v4);
}

CFMutableArrayRef FigRenderedLegibleOutputManagerEnsureRenderPipelinesForFormat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v9 = Mutable;
  if (Mutable)
  {
    v11[0] = a1;
    v11[1] = a2;
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = Mutable;
    v11[5] = 0;
    dispatch_sync_f(*(a1 + 16), v11, frlo_ensureRenderPipelinesForFormatDo);
  }

  else
  {
    FigRenderedLegibleOutputManagerEnsureRenderPipelinesForFormat_cold_1();
  }

  return v9;
}

void frlo_ensureRenderPipelinesForFormatDo(void *a1)
{
  v2 = *(*a1 + 56);
  if (v2 && CFDictionaryGetCount(v2) >= 1 && a1[4])
  {
    v3 = *(*a1 + 56);

    CFDictionaryApplyFunction(v3, frlo_ensureRenderPipelinesForFormatDo_applier, a1);
  }
}

uint64_t FigRenderedLegibleOutputManagerForgetAboutRenderedLegibleOutputRenderPipelines(uint64_t a1)
{
  context = a1;
  dispatch_sync_f(*(a1 + 16), &context, frlo_forgetAboutRenderedLegibleOutputRenderPipelinesDo);
  return 0;
}

void frlo_forgetAboutRenderedLegibleOutputRenderPipelinesDo(uint64_t a1)
{
  CFDictionaryRemoveAllValues(*(*a1 + 64));
  v2 = *(*a1 + 72);

  CFDictionaryApplyFunction(v2, frlo_forgetAboutRenderPipelines, 0);
}

uint64_t FigRenderedLegibleOutputManagerForgetAboutRenderedLegibleOutputRenderPipeline(uint64_t a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a2;
  dispatch_sync_f(*(a1 + 16), v3, frlo_forgetAboutRenderedLegibleOutputRenderPipelineDo);
  return 0;
}

void frlo_forgetAboutRenderedLegibleOutputRenderPipelineDo(const void **a1)
{
  CFDictionaryRemoveValue(*(*a1 + 8), a1[1]);
  v2 = *(*a1 + 9);

  CFDictionaryApplyFunction(v2, frlo_forgetAboutRenderPipeline, a1);
}

double frlo_init(uint64_t a1)
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

void frlo_finalize(void *a1)
{
  a1[4] = 0;
  a1[5] = 0;
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
    a1[2] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    dispatch_release(v4);
    a1[3] = 0;
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
    a1[8] = 0;
  }

  v6 = a1[9];
  if (v6)
  {
    CFDictionaryApplyFunction(v6, frlo_finalizeFigRenderedLegibleOutputApplier, 0);
    v7 = a1[9];
    if (v7)
    {
      CFRelease(v7);
      a1[9] = 0;
    }
  }

  v8 = a1[7];
  if (v8)
  {
    CFRelease(v8);
    a1[7] = 0;
  }

  v9 = a1[11];
  if (v9)
  {
    CFRelease(v9);
    a1[11] = 0;
  }

  v10 = a1[12];
  if (v10)
  {

    CFRelease(v10);
  }
}

__CFString *frlo_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigRenderedLegibleOutputManager %p>", a1);
  return Mutable;
}

void frlo_finalizeFigRenderedLegibleOutputApplier(int a1, CFTypeRef *a2)
{
  if (a2)
  {
    v3 = a2[6];
    if (v3)
    {
      CFRelease(v3);
      a2[6] = 0;
    }

    v4 = a2[7];
    if (v4)
    {
      CFRelease(v4);
      a2[7] = 0;
    }

    if (*a2)
    {
      CFRelease(*a2);
    }

    free(a2);
  }
}

void frlo_rebuildFigRenderedLegibleOutputs_applier(const void *a1, CFDictionaryRef theDict, uint64_t a3)
{
  v13 = **&MEMORY[0x1E6960CC0];
  Value = CFDictionaryGetValue(theDict, @"RenderedLegibleOutputKey_AdvanceInterval");
  if (Value)
  {
    seconds.value = 0;
    CFNumberGetValue(Value, kCFNumberDoubleType, &seconds);
    CMTimeMakeWithSeconds(&v13, *&seconds.value, 1000);
  }

  *&seconds.value = *MEMORY[0x1E695F060];
  v7 = CFDictionaryGetValue(theDict, @"RenderedLegibleOutputKey_VideoDisplaySize");
  CGSizeMakeWithDictionaryRepresentation(v7, &seconds);
  v8 = seconds.value;
  v9 = *&seconds.timescale;
  seconds = v13;
  v10 = malloc_type_calloc(1uLL, 0x40uLL, 0x10600404838DB4AuLL);
  if (v10)
  {
    if (a1)
    {
      v11 = CFRetain(a1);
    }

    else
    {
      v11 = 0;
    }

    *v10 = v11;
    *(v10 + 8) = seconds;
    *(v10 + 4) = v8;
    *(v10 + 5) = v9;
    goto LABEL_8;
  }

  if (frlo_rebuildFigRenderedLegibleOutputs_applier_cold_1())
  {
LABEL_8:
    CFDictionaryAddValue(*(a3 + 72), a1, v10);
  }
}

void frlo_newSubtitleSampleArrivedCallback(const void *a1, const void *a2, __int128 *a3, char a4, char a5, void *a6, double a7, double a8, double a9, double a10)
{
  v20 = malloc_type_calloc(1uLL, 0x60uLL, 0x10E004010A499B0uLL);
  if (a6)
  {
    v21 = CFRetain(a6);
  }

  else
  {
    v21 = 0;
  }

  *v20 = v21;
  if (a2)
  {
    v22 = CFRetain(a2);
  }

  else
  {
    v22 = 0;
  }

  *(v20 + 2) = v22;
  v23 = *a3;
  *(v20 + 5) = *(a3 + 2);
  *(v20 + 24) = v23;
  v20[48] = a4;
  v20[49] = a5;
  *(v20 + 7) = a7;
  *(v20 + 8) = a8;
  *(v20 + 9) = a9;
  *(v20 + 10) = a10;
  if (a1)
  {
    v24 = CFRetain(a1);
  }

  else
  {
    v24 = 0;
  }

  *(v20 + 1) = v24;
  v25 = a6[2];

  dispatch_async_f(v25, v20, frlo_convertSubtitleSampleIntoPixelBuffersDo);
}

void frlo_renderPipelineDidFlush(const void *a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (a2)
  {
    v5 = CFRetain(a2);
  }

  else
  {
    v5 = 0;
  }

  *v4 = v5;
  if (a1)
  {
    v6 = CFRetain(a1);
  }

  else
  {
    v6 = 0;
  }

  v4[1] = v6;
  v7 = a2[2];

  dispatch_async_f(v7, v4, frlo_renderPipelineDidFlushDo);
}

void frlo_invokeCallbackAndDisposeContext(void *a1)
{
  if (a1[1])
  {
    if (a1[2])
    {
      v2 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v2)
      {
        v3 = v2;
        (a1[1])(*a1, v2);
        CFRelease(v3);
      }
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void frlo_invokeFlushCallbackAndDisposeContext(void *a1)
{
  if (a1[1])
  {
    if (a1[2])
    {
      v2 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v2)
      {
        v3 = v2;
        (a1[1])(*a1, v2);
        CFRelease(v3);
      }
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void frlo_forgetAboutRenderPipelines(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  if (v2)
  {
    CFRelease(v2);
    *(a2 + 56) = 0;
  }
}

void frlo_forgetAboutRenderPipeline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 48);
  v3 = *(a2 + 48);
  v5 = *(a3 + 8);
  if (v3 == v5)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_8;
  }

  v7 = *(a2 + 56);
  v6 = (a2 + 56);
  v3 = v7;
  if (v7 == v5 && v3 != 0)
  {
    v4 = v6;
LABEL_8:
    CFRelease(v3);
    *v4 = 0;
  }
}

void *OUTLINED_FUNCTION_2_78()
{

  return malloc_type_calloc(1uLL, 0x18uLL, 0xE00403260BBE2uLL);
}

uint64_t FigMetadataSerializerCreateForiTunes(uint64_t a1, void *a2)
{
  if (a2)
  {
    FigMetadataSerializerGetClassID();
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      CMBaseObjectGetDerivedStorage();
      *a2 = 0;
    }

    return v3;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void FigiTunesMetadataSerializerFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    v2 = *DerivedStorage;
    if (v2)
    {
      CFRelease(v2);
      *v1 = 0;
    }

    v3 = v1[1];
    if (v3)
    {
      CFRelease(v3);
      v1[1] = 0;
    }
  }

  else
  {
    FigiTunesMetadataSerializerFinalize_cold_1();
  }
}

__CFString *FigiTunesMetadataSerializerCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    CFStringAppendFormat(Mutable, 0, @" FigiTunesMetadataSerializer %p\n", DerivedStorage);
    CFStringAppendFormat(Mutable, 0, @"  - handle name: %@\n", *(v2 + 8));
    CFStringAppendFormat(Mutable, 0, @"  - free atom size: %d\n", *(v2 + 16));
    CFStringAppendFormat(Mutable, 0, @"  - minimum container size: %d\n", *(v2 + 20));
    CFStringAppendFormat(Mutable, 0, @"%@", *v2);
  }

  else
  {
    FigiTunesMetadataSerializerCopyDebugDescription_cold_1();
  }

  return Mutable;
}

uint64_t FigiTunesMetadataSerializerCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigiTunesMetadataSerializerCopyProperty_cold_1(&v14);
    return v14;
  }

  v7 = DerivedStorage;
  if (!CFEqual(a2, @"handlerName"))
  {
    if (CFEqual(a2, @"freeAtomSize"))
    {
      v10 = *MEMORY[0x1E695E480];
      v11 = v7 + 2;
    }

    else
    {
      if (!CFEqual(a2, @"minimumSize"))
      {
        if (!CFEqual(a2, @"format"))
        {
          return 4294954512;
        }

        v8 = @"com.apple.itunes";
        goto LABEL_4;
      }

      v10 = *MEMORY[0x1E695E480];
      v11 = v7 + 20;
    }

    v9 = CFNumberCreate(v10, kCFNumberSInt32Type, v11);
    goto LABEL_11;
  }

  v8 = v7[1];
  if (!v8)
  {
    return 4294954513;
  }

LABEL_4:
  v9 = CFRetain(v8);
LABEL_11:
  v13 = v9;
  result = 0;
  *a4 = v13;
  return result;
}

uint64_t FigiTunesMetadataSerializerSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigiTunesMetadataSerializerSetProperty_cold_1(&v14);
    return v14;
  }

  v6 = DerivedStorage;
  if (!CFEqual(@"handlerName", a2))
  {
    if (CFEqual(@"freeAtomSize", a2))
    {
      if (!a3)
      {
        goto LABEL_20;
      }

      TypeID = CFNumberGetTypeID();
      if (TypeID != CFGetTypeID(a3))
      {
        goto LABEL_20;
      }

      valuePtr = 0;
      if (CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
      {
        result = 0;
        *(v6 + 16) = valuePtr;
        return result;
      }

      fig_log_get_emitter();
    }

    else
    {
      if (!CFEqual(@"minimumSize", a2))
      {
        return 4294954710;
      }

      if (!a3)
      {
        goto LABEL_20;
      }

      v11 = CFNumberGetTypeID();
      if (v11 != CFGetTypeID(a3))
      {
        goto LABEL_20;
      }

      v12 = 0;
      if (CFNumberGetValue(a3, kCFNumberSInt32Type, &v12))
      {
        result = 0;
        *(v6 + 20) = v12;
        return result;
      }

      fig_log_get_emitter();
    }

    return FigSignalErrorAtGM();
  }

  if (a3)
  {
    v7 = CFStringGetTypeID();
    if (v7 == CFGetTypeID(a3))
    {
      v8 = *(v6 + 8);
      *(v6 + 8) = CFRetain(a3);
      if (v8)
      {
        CFRelease(v8);
      }

      return 0;
    }
  }

LABEL_20:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigiTunesMetadataSerializerAddItem(const void *a1, __CFString *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  cf = 0;
  value = 0;
  v24 = 0;
  key = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigiTunesMetadataSerializerAddItem_cold_4(&v28);
LABEL_37:
    v20 = 0;
    goto LABEL_38;
  }

  if (!a2 || !a3 || !a4)
  {
    FigiTunesMetadataSerializerAddItem_cold_3(&v28);
    goto LABEL_37;
  }

  v11 = DerivedStorage;
  v12 = CFGetAllocator(a1);
  ActualKey = FigiTunesMetadataCreateActualKey(v12, a2, a3, &v24, &key);
  if (ActualKey)
  {
LABEL_32:
    NewItem = ActualKey;
    goto LABEL_33;
  }

  Mutable = *v11;
  if (!*v11)
  {
    v15 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *v11 = Mutable;
    if (!Mutable)
    {
      FigiTunesMetadataSerializerAddItem_cold_2(&v28);
      goto LABEL_37;
    }
  }

  if (!CFDictionaryGetValueIfPresent(Mutable, key, &value))
  {
    NewItem = FigiTunesMetadataCreateNewItem(a1, v24, a4, a5, &cf);
    if (!NewItem)
    {
      v20 = cf;
      CFDictionarySetValue(*v11, key, cf);
      goto LABEL_22;
    }

    goto LABEL_33;
  }

  v16 = CFGetTypeID(value);
  if (v16 == CFDictionaryGetTypeID())
  {
    v17 = value;
    ActualKey = FigiTunesMetadataCreateNewItem(a1, v24, a4, a5, &cf);
    if (!ActualKey)
    {
      v18 = CFGetAllocator(a1);
      v19 = CFArrayCreateMutable(v18, 0, MEMORY[0x1E695E9C0]);
      v20 = v19;
      if (value)
      {
        CFArrayAppendValue(v19, v17);
        v21 = cf;
        CFArrayAppendValue(v20, cf);
        CFDictionarySetValue(*v11, key, v20);
        if (v21)
        {
          CFRelease(v21);
          cf = 0;
        }

        if (v20)
        {
          CFRelease(v20);
          v20 = 0;
        }

        NewItem = 0;
LABEL_17:
        if (cf)
        {
          CFRelease(cf);
          if (!v20)
          {
            goto LABEL_24;
          }

LABEL_23:
          CFRelease(v20);
          goto LABEL_24;
        }

LABEL_22:
        if (!v20)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      FigiTunesMetadataSerializerAddItem_cold_1(&v28);
LABEL_38:
      NewItem = v28;
      goto LABEL_17;
    }

    goto LABEL_32;
  }

  NewItem = FigiTunesMetadataCreateNewItem(a1, v24, a4, a5, &cf);
  if (NewItem)
  {
LABEL_33:
    v20 = 0;
    goto LABEL_17;
  }

  v20 = cf;
  CFArrayAppendValue(value, cf);
  if (v20)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (key)
  {
    CFRelease(key);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return NewItem;
}

uint64_t FigiTunesMetadataCreateActualKey(const __CFAllocator *a1, __CFString *a2, const __CFString *a3, unint64_t a4, unint64_t a5)
{
  CommonKeyToShortKeyMapping = FigiTunesMetadataGetCommonKeyToShortKeyMapping();
  if (!(a4 | a5))
  {
    FigiTunesMetadataCreateActualKey_cold_7(&v25);
    return v25;
  }

  v11 = CommonKeyToShortKeyMapping;
  valuePtr = 0;
  if (CFEqual(a2, @"comn"))
  {
    v12 = CFGetTypeID(a3);
    if (v12 == CFStringGetTypeID())
    {
      Value = CFDictionaryGetValue(v11, a3);
      valuePtr = Value;
      if (Value)
      {
        v14 = bswap32(Value);
        v15 = CFStringCreateWithFormat(a1, 0, @"%c%c%c%c", v14, BYTE1(v14), BYTE2(v14), HIBYTE(v14));
        a2 = @"itsk";
        goto LABEL_17;
      }

      FigiTunesMetadataCreateActualKey_cold_2(&v25);
    }

    else
    {
      FigiTunesMetadataCreateActualKey_cold_1(&v25);
    }

    return v25;
  }

  if (CFEqual(a2, @"itsk"))
  {
    v16 = CFGetTypeID(a3);
    if (v16 == CFStringGetTypeID())
    {
      if (!FigiTunesMetadataShortStringKeyToOSTypeKey(a3, &valuePtr))
      {
        FigiTunesMetadataCreateActualKey_cold_5(&v25);
        return v25;
      }

      v17 = CFRetain(a3);
      goto LABEL_16;
    }

    v19 = CFGetTypeID(a3);
    if (v19 == CFNumberGetTypeID())
    {
      if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
      {
        FigiTunesMetadataCreateActualKey_cold_3(&v25);
        return v25;
      }

      v20 = bswap32(valuePtr);
      v17 = CFStringCreateWithFormat(a1, 0, @"%c%c%c%c", v20, BYTE1(v20), BYTE2(v20), HIBYTE(v20));
LABEL_16:
      v15 = v17;
      if (valuePtr == 757935405)
      {
        FigiTunesMetadataCreateActualKey_cold_4(&v25);
        v22 = v25;
        if (!v15)
        {
          return v22;
        }

LABEL_26:
        CFRelease(v15);
        return v22;
      }

      goto LABEL_17;
    }
  }

  else if (CFEqual(a2, @"itlk"))
  {
    v18 = CFGetTypeID(a3);
    if (v18 != CFStringGetTypeID())
    {
      FigiTunesMetadataCreateActualKey_cold_6(&v25);
      return v25;
    }

    v15 = CFRetain(a3);
LABEL_17:
    if (a5)
    {
      *a5 = v15;
      v15 = 0;
    }

    if (a4)
    {
      if (a2)
      {
        v21 = CFRetain(a2);
      }

      else
      {
        v21 = 0;
      }

      v22 = 0;
      *a4 = v21;
      if (!v15)
      {
        return v22;
      }
    }

    else
    {
      v22 = 0;
      if (!v15)
      {
        return v22;
      }
    }

    goto LABEL_26;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigiTunesMetadataCreateNewItem(const void *a1, const void *a2, const void *a3, const __CFDictionary *a4, __CFDictionary **a5)
{
  v9 = CFGetAllocator(a1);
  if (a4)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v9, 0, a4);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v11 = MutableCopy;
  if (MutableCopy)
  {
    CFDictionarySetValue(MutableCopy, @"value", a3);
    CFDictionarySetValue(v11, @"keyspace", a2);
    result = 0;
    *a5 = v11;
  }

  else
  {
    FigiTunesMetadataCreateNewItem_cold_1(&v13);
    return v13;
  }

  return result;
}

uint64_t FigiTunesMetadataSerializerCreateBBuf(const void *a1, CMBlockBufferRef *a2)
{
  v21 = 0;
  blockBufferOut = 0;
  memset(v20, 0, sizeof(v20));
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigiTunesMetadataSerializerCreateBBuf_cold_3(&context);
    v9 = 0;
    v8 = context;
    goto LABEL_34;
  }

  if (!a2)
  {
    FigiTunesMetadataSerializerCreateBBuf_cold_2(&context);
    return context;
  }

  v5 = DerivedStorage;
  v6 = *DerivedStorage;
  if ((!v6 || !CFDictionaryGetCount(v6)) && !v5[1] && !*(v5 + 4) && !*(v5 + 5))
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_34;
  }

  v7 = CFGetAllocator(a1);
  v8 = CMBlockBufferCreateEmpty(v7, 8u, 0, &blockBufferOut);
  v9 = blockBufferOut;
  if (v8)
  {
    goto LABEL_41;
  }

  v10 = FigAtomWriterInitWithBlockBuffer();
  if (v10)
  {
    v8 = v10;
    v9 = blockBufferOut;
    goto LABEL_41;
  }

  v11 = CMBaseObjectGetDerivedStorage();
  appended = FigAtomWriterBeginAtom();
  if (appended)
  {
    goto LABEL_32;
  }

  appended = FigAtomWriterAppendVersionAndFlags();
  if (appended)
  {
    goto LABEL_32;
  }

  v24 = 0;
  memset(v23, 0, sizeof(v23));
  appended = FigAtomWriterInitWithParent();
  if (appended)
  {
    goto LABEL_32;
  }

  v25 = 0;
  context = 0uLL;
  *&v27 = 0;
  WORD4(v27) = 0;
  v13 = CMBaseObjectGetDerivedStorage();
  DWORD2(context) = 1919509613;
  appended = FigAtomWriterBeginAtom();
  if (appended)
  {
    goto LABEL_32;
  }

  v14 = MEMORY[0x1E695E480];
  if (*(v13 + 8))
  {
    BytesFromCFString = FigCreateBytesFromCFString();
    if (!BytesFromCFString)
    {
      FigiTunesMetadataSerializerCreateBBuf_cold_1(&v30);
      v8 = v30;
      if (v30)
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    }

    v16 = BytesFromCFString;
  }

  else
  {
    v16 = 0;
  }

  v17 = FigAtomWriterAppendData();
  if (!v17)
  {
    if (v25 < 1 || (v17 = FigAtomWriterAppendData(), !v17))
    {
      v17 = FigAtomWriterEndAtom();
    }
  }

  v8 = v17;
  if (v16)
  {
    CFAllocatorDeallocate(*v14, v16);
  }

  if (v8)
  {
    goto LABEL_33;
  }

LABEL_25:
  v18 = CMBaseObjectGetDerivedStorage();
  appended = FigAtomWriterBeginAtom();
  if (!appended)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    context = 0u;
    appended = FigAtomWriterInitWithParent();
    if (!appended)
    {
      if (*v18)
      {
        CFDictionaryApplyFunction(*v18, FigiTunesMetadataWriteItemAtom, &context);
      }

      appended = FigAtomWriterEndAtom();
      if (!appended)
      {
        appended = FigMetadataWriteFreeAtom(v20, v23, *(v11 + 16), *(v11 + 20));
        if (!appended)
        {
          appended = FigAtomWriterEndAtom();
        }
      }
    }
  }

LABEL_32:
  v8 = appended;
LABEL_33:
  v9 = blockBufferOut;
LABEL_34:
  if (a2 && !v8)
  {
    *a2 = v9;
    return v8;
  }

LABEL_41:
  if (v9)
  {
    CFRelease(v9);
  }

  return v8;
}

uint64_t FigiTunesMetadataSerializerCreateCopy(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!a3)
    {
      FigiTunesMetadataSerializerCreateCopy_cold_1(&v14);
      return v14;
    }

    v6 = DerivedStorage;
    v7 = FigMetadataSerializerCreateForiTunes(a1, &v13);
    v8 = v13;
    if (v7)
    {
      goto LABEL_13;
    }

    v9 = CMBaseObjectGetDerivedStorage();
    if (*v6)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, *v6);
    }

    else
    {
      MutableCopy = 0;
    }

    *v9 = MutableCopy;
    v11 = *(v6 + 8);
    if (v11)
    {
      v11 = CFRetain(v11);
    }

    v7 = 0;
    v9[1] = v11;
    v9[2] = *(v6 + 16);
    v8 = v13;
  }

  else
  {
    FigiTunesMetadataSerializerCreateCopy_cold_2(&v14);
    v8 = 0;
    v7 = v14;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  if (!v7)
  {
    *a3 = v8;
    return v7;
  }

LABEL_13:
  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

uint64_t FigEndpointManagerForNeroGetShared()
{
  if (LoadOctaviaPlugin_sCreateOnce != -1)
  {
    FigEndpointManagerForNeroGetShared_cold_1();
  }

  v1 = 0;
  if (!sFigNeroEndpointManagerGetShared)
  {
    return 0;
  }

  sFigNeroEndpointManagerGetShared(&v1);
  return v1;
}

uint64_t FigEndpointManagerForCameraPreviewGetShared()
{
  if (LoadOctaviaPlugin_sCreateOnce != -1)
  {
    FigEndpointManagerForNeroGetShared_cold_1();
  }

  v1 = 0;
  if (!sFigNeroEndpointManagerForCameraPreviewGetShared)
  {
    return 0;
  }

  sFigNeroEndpointManagerForCameraPreviewGetShared(&v1);
  return v1;
}

uint64_t FigAssetReaderCreateWithAsset(const __CFAllocator *a1, const void *a2, uint64_t a3, void *a4)
{
  IsServerProcess = FigServer_IsServerProcess();
  FigKTraceInit();
  if (!a2)
  {
    FigAssetReaderCreateWithAsset_cold_4(&v14);
LABEL_25:
    v8 = 0;
    goto LABEL_27;
  }

  if (!a4)
  {
    FigAssetReaderCreateWithAsset_cold_3(&v14);
    goto LABEL_25;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (!IsServerProcess)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v8 = FigOSTransactionCreate();
  if (v8)
  {
LABEL_9:
    FigAssetReaderGetClassID();
    LoggingIdentifier = CMDerivedObjectCreate();
    if (!LoggingIdentifier)
    {
      Storage = remakerFamily_getStorage(0);
      LoggingIdentifier = remakerFamily_generateLoggingIdentifier(82, (Storage + 41));
      if (!LoggingIdentifier)
      {
        *(Storage + 456) = -1;
        *(Storage + 72) = CFRetain(a2);
        FigCFDictionaryGetBooleanIfPresent();
        if (!*(Storage + 32))
        {
          *(Storage + 56) = 0;
          if (!IsServerProcess)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        LoggingIdentifier = assetReader_ensureRemakerQueue();
        if (!LoggingIdentifier)
        {
          if (!IsServerProcess)
          {
LABEL_15:
            Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
            *(Storage + 80) = Mutable;
            if (Mutable)
            {
              *(Storage + 8) = FigReentrantMutexCreate();
              *(Storage + 64) = FigReentrantMutexCreate();
              remakerFamily_SetRemakerState(0, 1, 0);
              v12 = 0;
              *a4 = 0;
              goto LABEL_17;
            }

            FigAssetReaderCreateWithAsset_cold_2(&v14);
            goto LABEL_27;
          }

LABEL_14:
          *(Storage + 448) = v8;
          v8 = 0;
          goto LABEL_15;
        }
      }
    }

    v12 = LoggingIdentifier;
    goto LABEL_17;
  }

  FigAssetReaderCreateWithAsset_cold_1(&v14);
LABEL_27:
  v12 = v14;
LABEL_17:
  if (v8)
  {
    os_release(v8);
  }

  return v12;
}

uint64_t assetReader_ensureRemakerQueue()
{
  Storage = remakerFamily_getStorage();
  if (*(Storage + 56))
  {
    return 0;
  }

  v1 = Storage;
  v2 = FigDispatchQueueCreateWithPriorityAndClientPID();
  *(v1 + 56) = v2;
  if (v2)
  {
    return 0;
  }

  assetReader_ensureRemakerQueue_cold_1(&v4);
  return v4;
}

uint64_t assetReader_SetProperty(const void *a1, const void *a2, const void *a3)
{
  Storage = remakerFamily_getStorage(a1);
  if (!CFEqual(a2, @"AssetReader_ClientSecTask"))
  {
    if (CFEqual(a2, @"AssetReader_ClientPID"))
    {
      if (*Storage == 1)
      {
        if (a3)
        {
          v10 = CFGetTypeID(a3);
          if (v10 == CFNumberGetTypeID())
          {
            CFNumberGetValue(a3, kCFNumberSInt32Type, (Storage + 36));

            return remakerfamily_updateClientPID();
          }
        }

        assetReader_SetProperty_cold_4(&v17);
      }

      else
      {
        assetReader_SetProperty_cold_3(&v17);
      }
    }

    else if (CFEqual(a2, @"AssetReader_ThrottleForBackground"))
    {
      if (*Storage == 1)
      {
        if (a3)
        {
          v11 = CFGetTypeID(a3);
          if (v11 == CFBooleanGetTypeID())
          {
            *(Storage + 40) = CFBooleanGetValue(a3);

            return remakerfamily_updateThrottleForBackground(a1);
          }
        }

        assetReader_SetProperty_cold_6(&v17);
      }

      else
      {
        assetReader_SetProperty_cold_5(&v17);
      }
    }

    else
    {
      if (!CFEqual(a2, @"AssetReader_IOPolicy"))
      {
        if (CFEqual(a2, @"AssetReader_RealTime"))
        {
          if (*Storage == 1)
          {
            if (a3)
            {
              v13 = CFGetTypeID(a3);
              if (v13 == CFBooleanGetTypeID())
              {
                Value = CFBooleanGetValue(a3);
                result = 0;
                *(Storage + 32) = Value;
                return result;
              }
            }

            assetReader_SetProperty_cold_10(&v17);
          }

          else
          {
            assetReader_SetProperty_cold_9(&v17);
          }
        }

        else
        {
          if (!CFEqual(a2, @"AssetReader_MinimizeMemoryUsage"))
          {
            return 4294954512;
          }

          if (*Storage >= 4u)
          {
            assetReader_SetProperty_cold_12(&v17);
          }

          else
          {
            if (a3)
            {
              v15 = CFGetTypeID(a3);
              if (v15 == CFBooleanGetTypeID())
              {
                v16 = CFBooleanGetValue(a3);
                *(Storage + 425) = v16;
                remakerFamily_setMemoryUsage(a1, v16);
                return 0;
              }
            }

            assetReader_SetProperty_cold_11(&v17);
          }
        }

        return v17;
      }

      if (*Storage == 1)
      {
        if (a3)
        {
          v12 = CFGetTypeID(a3);
          if (v12 == CFNumberGetTypeID())
          {
            CFNumberGetValue(a3, kCFNumberIntType, (Storage + 456));

            return remakerfamily_updateIOPolicy();
          }
        }

        assetReader_SetProperty_cold_8(&v17);
      }

      else
      {
        assetReader_SetProperty_cold_7(&v17);
      }
    }

    return v17;
  }

  if (*Storage != 1)
  {
    assetReader_SetProperty_cold_1(&v17);
    return v17;
  }

  if (a3)
  {
    v7 = CFGetTypeID(a3);
    if (v7 == SecTaskGetTypeID())
    {
      v8 = *(Storage + 440);
      *(Storage + 440) = a3;
      CFRetain(a3);
      if (v8)
      {
        CFRelease(v8);
      }

      return 0;
    }

    assetReader_SetProperty_cold_2(&v17);
    return v17;
  }

  result = *(Storage + 440);
  if (result)
  {
    CFRelease(result);
    result = 0;
    *(Storage + 440) = 0;
  }

  return result;
}

uint64_t assetReader_EnableDecodedAudioExtractionFromTrack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v14)
  {
    return v14(a1, a2, a3, a4, a5, 0, 0, a6, a7);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, _DWORD *a7)
{
  v13 = a1;
  v185 = *MEMORY[0x1E69E9840];
  Storage = remakerFamily_getStorage(a1);
  v180 = 0;
  v181 = 0;
  v179 = 0;
  v178 = 0;
  v176 = 0;
  v177 = 0;
  v174 = 0;
  v175 = 0;
  v172 = 0;
  v173 = 0;
  v171 = 1;
  v170 = 0;
  v168 = 0;
  tagCollectionsOut = 0;
  v166 = 0;
  v167 = 0;
  v158 = v13;
  if (*Storage != 1)
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_1(&tagBuffer);
    v50 = 0;
    v51 = 0;
    v31 = 0;
    v32 = 0;
    Mutable = 0;
    v52 = 0;
    v53 = 0;
    value_low = LODWORD(tagBuffer.start.value);
    goto LABEL_67;
  }

  v15 = Storage;
  v16 = *(Storage + 72);
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v17)
  {
    goto LABEL_66;
  }

  v148 = a3;
  v18 = v17(v16, a2, &v180);
  if (v18)
  {
LABEL_238:
    value_low = v18;
    v50 = 0;
    v51 = 0;
    v31 = 0;
    v32 = 0;
    goto LABEL_239;
  }

  v19 = v180;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v20)
  {
LABEL_66:
    v50 = 0;
    v51 = 0;
    v31 = 0;
    v32 = 0;
    Mutable = 0;
    v52 = 0;
    v53 = 0;
    value_low = 4294954514;
    goto LABEL_67;
  }

  v18 = v20(v19, 0, &v179);
  if (v18)
  {
    goto LABEL_238;
  }

  if (v179 != 1635088502 && v179 != 1986618469)
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  v21 = CFGetTypeID(v13);
  v18 = remakerFamily_copyFormatDescription(v21, v180, &v176);
  if (v18)
  {
    goto LABEL_238;
  }

  v18 = remakerFamily_createChannel(v13, a2, v179, &v181);
  if (v18)
  {
    goto LABEL_238;
  }

  TrackRotationAngle = remakerFamily_getTrackRotationAngle(v180, &v178 + 1, &v178);
  *v138 = a4;
  theDict = a6;
  *v144 = a5;
  v136 = a7;
  v137 = a2;
  v155 = v15;
  if (!a6)
  {
    v157 = 0;
    v26 = 0;
    v31 = 0;
    v32 = 0;
    Mutable = 0;
    goto LABEL_106;
  }

  cf = 0;
  value = 0;
  if (CFDictionaryGetValueIfPresent(a6, @"AssetReader_MatrixHandling", &value) && CFEqual(value, @"AssetReader_PreserveMatrix"))
  {
    TrackRotationAngle = 0;
    v178 = 0;
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  if (CFDictionaryGetValueIfPresent(a6, @"RemakerVideoProcessingOption_VideoFrameRateConversionAlgorithm", &cf))
  {
    if (cf)
    {
      v22 = CFGetTypeID(cf);
      if (v22 == CFStringGetTypeID() && FigCFEqual() && (*(a5 + 12) & 0x1D) == 1)
      {
        v23 = v181;
        *(v181 + 49) = 1;
        v24 = *(a5 + 16);
        *(v23 + 328) = *a5;
        *(v23 + 344) = v24;
      }
    }
  }

  if (FigCFDictionaryGetInt32IfPresent() && *(v181 + 68))
  {
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
  }

  if (FigCFDictionaryGetBooleanIfPresent() && *(v181 + 121))
  {
    FigCFDictionaryGetCMTimeIfPresent();
  }

  FigCFDictionaryGetBooleanIfPresent();
  theArray = 0;
  if (!CFDictionaryGetValueIfPresent(a6, *MEMORY[0x1E69839B8], &theArray) && !CFDictionaryGetValueIfPresent(a6, *MEMORY[0x1E69839B0], &theArray))
  {
    v157 = 0;
    v26 = 0;
    v31 = 0;
    v32 = 0;
    Mutable = 0;
    goto LABEL_65;
  }

  if (!theArray || (Count = CFArrayGetCount(theArray), Count <= 0))
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_16(&tagBuffer);
    v31 = 0;
    v32 = 0;
    Mutable = 0;
LABEL_220:
    value_low = LODWORD(tagBuffer.start.value);
LABEL_221:
    v50 = 0;
    v51 = 0;
    goto LABEL_222;
  }

  v26 = Count;
  v27 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_15(&tagBuffer);
    goto LABEL_218;
  }

  if (CMVideoFormatDescriptionCopyTagCollectionArray(v176, &tagCollectionsOut))
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_2(&tagBuffer);
    goto LABEL_218;
  }

  if (!tagCollectionsOut || (v29 = CFArrayGetCount(tagCollectionsOut), v26 > v29))
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_14(&tagBuffer);
LABEL_218:
    v31 = 0;
LABEL_219:
    v32 = 0;
    goto LABEL_220;
  }

  v30 = v29;
  v31 = CFArrayCreateMutable(v27, v29, MEMORY[0x1E695E9C0]);
  if (!v31)
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_13(&tagBuffer);
    goto LABEL_219;
  }

  v150 = Mutable;
  v32 = CFArrayCreateMutable(v27, v30, MEMORY[0x1E695E9C0]);
  if (!v32)
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_12(&tagBuffer);
    value_low = LODWORD(tagBuffer.start.value);
    goto LABEL_226;
  }

  v33 = v27;
  v34 = 0;
  *v156 = *MEMORY[0x1E6960630];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(tagCollectionsOut, v34);
    *&tagBuffer.start.value = *v156;
    *&v162.value = *v156;
    numberOfTagsCopied.value = 0;
    TagsWithCategory = CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_VideoLayerID, &tagBuffer, 1, &numberOfTagsCopied.value);
    if (TagsWithCategory || (TagsWithCategory = CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_StereoView, &v162, 1, &numberOfTagsCopied.value), TagsWithCategory))
    {
      value_low = TagsWithCategory;
LABEL_226:
      Mutable = v150;
      goto LABEL_221;
    }

    FigTagGetSInt64Value();
    FigCFArrayAppendInt64();
    FigTagGetFlagsValue();
    FigCFArrayAppendInt64();
    ++v34;
  }

  while (v30 != v34);
  v37 = 0;
  v38 = 1295;
  Mutable = v150;
  do
  {
    tagBuffer.start.value = 0;
    if (!FigCFArrayGetInt64AtIndex())
    {
      goto LABEL_228;
    }

    if (!FigCFArrayContainsInt64())
    {
      v38 = 1298;
LABEL_228:
      assetReader_EnableDecodedVideoExtractionFromTrack_cold_11(v38, &tagBuffer, &v162);
      value_low = LODWORD(v162.value);
      goto LABEL_221;
    }

    ++v37;
  }

  while (v26 != v37);
  v39 = theArray;
  v162.value = 0;
  if (!theArray || (v40 = CFGetTypeID(theArray), v40 != CFArrayGetTypeID()))
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_9(&tagBuffer);
LABEL_250:
    v134 = LODWORD(tagBuffer.start.value);
    goto LABEL_254;
  }

  v41 = CFGetTypeID(v31);
  if (v41 != CFArrayGetTypeID())
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_3(&tagBuffer);
    goto LABEL_250;
  }

  v42 = v32;
  v43 = CFGetTypeID(v32);
  if (v43 != CFArrayGetTypeID())
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_4(&tagBuffer);
    v134 = LODWORD(tagBuffer.start.value);
LABEL_253:
    v32 = v42;
LABEL_254:
    a6 = theDict;
    v15 = v155;
    if (!v134)
    {
      goto LABEL_215;
    }

    goto LABEL_255;
  }

  v44 = CFArrayGetCount(v39);
  v45 = CFArrayGetCount(v31);
  v157 = CFArrayCreateMutable(v33, v44, MEMORY[0x1E695E9C0]);
  if (!v157)
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_8(&tagBuffer);
    v134 = LODWORD(tagBuffer.start.value);
    Mutable = v150;
    goto LABEL_253;
  }

  if (v44 < 1)
  {
    goto LABEL_63;
  }

  v46 = 0;
  while (1)
  {
    numberOfTagsCopied.value = 0;
    flagsForTag[0] = 0;
    if (!FigCFArrayGetInt64AtIndex())
    {
      assetReader_EnableDecodedVideoExtractionFromTrack_cold_7(&v182);
      goto LABEL_234;
    }

    if (v45 < 1)
    {
      goto LABEL_59;
    }

    v47 = 0;
    while (1)
    {
      v182 = 0;
      if (!FigCFArrayGetInt64AtIndex())
      {
        assetReader_EnableDecodedVideoExtractionFromTrack_cold_6(&v182, &v183);
        v134 = v183;
        goto LABEL_212;
      }

      if (numberOfTagsCopied.value == v182)
      {
        break;
      }

      if (v45 == ++v47)
      {
        goto LABEL_59;
      }
    }

    FigCFArrayGetInt64AtIndex();
LABEL_59:
    v48 = CMTagMakeWithSInt64Value(kCMTagCategory_VideoLayerID, numberOfTagsCopied.value);
    tagBuffer.start.value = *&v48.category;
    *&tagBuffer.start.timescale = v48.value;
    *&tagBuffer.start.epoch = CMTagMakeWithFlagsValue(kCMTagCategory_StereoView, flagsForTag[0]);
    v49 = CMTagCollectionCreate(v33, &tagBuffer, 2, &v162);
    if (v49)
    {
      break;
    }

    CFArrayAppendValue(v157, v162.value);
    if (v162.value)
    {
      CFRelease(v162.value);
      v162.value = 0;
    }

    if (++v46 == v44)
    {
LABEL_63:
      Mutable = v150;
      v32 = v42;
      a6 = theDict;
      v15 = v155;
      goto LABEL_64;
    }
  }

  assetReader_EnableDecodedVideoExtractionFromTrack_cold_5(v49, &v182);
LABEL_234:
  v134 = v182;
LABEL_212:
  Mutable = v150;
  v32 = v42;
  a6 = theDict;
  v15 = v155;
  if (v162.value)
  {
    CFRelease(v162.value);
  }

  CFRelease(v157);
  if (v134)
  {
LABEL_255:
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_10(v134, &tagBuffer);
    goto LABEL_220;
  }

LABEL_215:
  v157 = 0;
LABEL_64:
  *(*(v181 + 152) + 160) = 1;
LABEL_65:
  FigCFDictionaryGetBooleanIfPresent();
LABEL_106:
  if (FigRemakerIsFormatDescriptionProtected(v176))
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_17(&tagBuffer);
    v51 = 0;
    v52 = 0;
LABEL_259:
    v53 = 0;
LABEL_260:
    value_low = LODWORD(tagBuffer.start.value);
    goto LABEL_261;
  }

  v56 = v181;
  *(v181 + 50) = 1;
  *(*(v56 + 152) + 28) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  v57 = remakerFamily_setupMultiPassTrackIfNecessary(v13, v181);
  if (v57)
  {
    goto LABEL_229;
  }

  v58 = CFGetAllocator(v13);
  v57 = FigVisualContextCreateBasic(v58, 0, &v177);
  if (v57)
  {
    goto LABEL_229;
  }

  if (*(*(v181 + 152) + 160) && v26 >= 1)
  {
    for (i = 0; i != v26; ++i)
    {
      if (i)
      {
        v60 = CFGetAllocator(v13);
        v57 = FigVisualContextCreateBasic(v60, 0, &v168);
        if (v57)
        {
          goto LABEL_229;
        }

        v61 = v168;
      }

      else
      {
        if (v177)
        {
          v61 = CFRetain(v177);
        }

        else
        {
          v61 = 0;
        }

        v168 = v61;
      }

      CFArrayAppendValue(Mutable, v61);
      if (v168)
      {
        CFRelease(v168);
        v168 = 0;
      }
    }
  }

  if (!TrackRotationAngle && !v178)
  {
    v62 = v177;
    if (v177)
    {
      v62 = CFRetain(v177);
    }

    v63 = *v138;
    *(*(v181 + 152) + 112) = v62;
    if (v148)
    {
      v64 = CFRetain(v148);
    }

    else
    {
      v64 = 0;
    }

    v146 = 0;
    v149 = 0;
    v154 = 0;
    v172 = v64;
LABEL_180:
    v109 = CFGetAllocator(v13);
    v110 = v176;
    remakerFamily_getLowWaterLevel(*(v15 + 32), &tagBuffer);
    remakerFamily_getHighWaterLevel(*(v15 + 32), &v162);
    v108 = remakerFamily_createRenderPipelineOptions(v109, v110, &tagBuffer.start.value, &v162.value, 0, 0, *(v15 + 424), 0, 0, *(v15 + 32), 0, 0, *(v15 + 426), v15 + 41, v137, &v175);
    if (!v108)
    {
      v108 = remakerFamily_createRemakerVideoDecoderSpecification(v13, a6, &v174);
      if (!v108)
      {
        if (!v63 || (v111 = CFGetAllocator(v13), v108 = remakerFamily_createVideoPixelTransferProperties(v111, v63, 0, &v173), !v108))
        {
          v112 = CFGetAllocator(v13);
          v113 = v112;
          v114 = v174;
          v115 = v181 + 56;
          if (Mutable)
          {
            v50 = v157;
            value_low = FigVideoRenderPipelineCreateWithVisualContextGroup(v112, v174, v172, v173, 1, Mutable, v157, 0, v175, (v181 + 56));
            goto LABEL_199;
          }

          v141 = v172;
          v143 = v32;
          v145 = v173;
          v152 = v175;
          v139 = v177;
          v116 = v170;
          v117 = *(v181 + 120);
          v118 = CFDictionaryCreateMutable(v112, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v118)
          {
            v119 = v118;
            v120 = MEMORY[0x1E695E4D0];
            if (v116)
            {
              v121 = MEMORY[0x1E695E4D0];
              CFDictionarySetValue(v118, @"EnsureModifiableImageBuffers", *MEMORY[0x1E695E4D0]);
              v120 = v121;
            }

            if (v117)
            {
              CFDictionarySetValue(v119, @"LimitImageQueueCapacityToOneFrame", *v120);
            }

            v32 = v143;
            if (CFDictionaryGetCount(v119))
            {
              value_low = FigVideoRenderPipelineCreateWithVisualContext(v113, v114, v141, v145, 1, v139, v119, v152, v115);
              CFRelease(v119);
            }

            else
            {
              CFRelease(v119);
              value_low = FigVideoRenderPipelineCreateWithVisualContext(v113, v114, v141, v145, 1, v139, 0, v152, v115);
            }

            v50 = v157;
LABEL_199:
            if (!value_low)
            {
              if (theDict)
              {
                v122 = CFDictionaryGetValue(theDict, @"AssetReader_DecompressionProperties");
                v123 = CFDictionaryGetValue(theDict, @"AssetReader_FieldMode");
              }

              else
              {
                v123 = 0;
                v122 = 0;
              }

              v53 = v146;
              v51 = v149;
              v124 = remakerFamily_setVideoRenderPipelineProperties(v158, v181, v171, 0, v176, v123, *(v15 + 32), *(v15 + 426), v122, v173);
              if (!v124)
              {
                v124 = assetReader_ensureRemakerQueue();
                if (!v124)
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  v124 = FigNotificationCenterAddWeakListeners();
                  if (!v124)
                  {
                    v125 = v181;
                    v126 = remakerFamily_getStorage(v158);
                    v127 = *(v126 + 152) + 1;
                    *(v126 + 152) = v127;
                    *(v125 + 300) = v127;
                    v128 = v181;
                    v129 = *(v181 + 152);
                    *(v129 + 152) = v50;
                    *(v129 + 120) = Mutable;
                    v130 = MEMORY[0x1E6960C70];
                    *(v129 + 164) = *MEMORY[0x1E6960C70];
                    *(v129 + 180) = *(v130 + 16);
                    *(v128 + 240) = v154;
                    v131 = *(v128 + 152);
                    *(v131 + 128) = v146;
                    if (!*(v131 + 72))
                    {
                      v132 = assetReaderTrack_setUpOutputVisualContextSemaphore(v131);
                      if (v132)
                      {
                        goto LABEL_208;
                      }

LABEL_210:
                      v133 = v181;
                      *v136 = *(v181 + 300);
                      remakerFamily_commitChannel(v158, v133);
                      v50 = 0;
                      Mutable = 0;
                      v52 = 0;
                      v53 = 0;
                      value_low = 0;
                      v181 = 0;
                      goto LABEL_67;
                    }

                    v132 = assetReaderTrack_setUpOutputBufferQueueSemaphore(v131);
                    if (!v132)
                    {
                      goto LABEL_210;
                    }

LABEL_208:
                    value_low = v132;
                    v50 = 0;
LABEL_239:
                    Mutable = 0;
LABEL_222:
                    v52 = 0;
                    v53 = 0;
                    goto LABEL_67;
                  }
                }
              }

              value_low = v124;
LABEL_189:
              v52 = v154;
              goto LABEL_67;
            }

LABEL_188:
            v53 = v146;
            v51 = v149;
            goto LABEL_189;
          }

          fig_log_get_emitter();
          v135 = FigSignalErrorAtGM();
          if (!v135)
          {
            value_low = FigVideoRenderPipelineCreateWithVisualContext(v113, v114, v141, v145, 1, v139, 0, v152, v115);
            v32 = v143;
            v15 = v155;
            v50 = v157;
            goto LABEL_199;
          }

          value_low = v135;
          Mutable = 0;
          v32 = v143;
LABEL_187:
          v50 = v157;
          goto LABEL_188;
        }
      }
    }

    goto LABEL_241;
  }

  v65 = CFGetAllocator(v13);
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v57 = CMBufferQueueCreate(v65, 0, CallbacksForUnsortedSampleBuffers, (*(v181 + 152) + 72));
  if (v57)
  {
LABEL_229:
    value_low = v57;
    v51 = 0;
LABEL_230:
    v52 = 0;
    v53 = 0;
    goto LABEL_261;
  }

  v142 = v32;
  v151 = Mutable;
  v67 = v176;
  if (!v148)
  {
    v74 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v74)
    {
      goto LABEL_223;
    }

    v73 = v74;
    v72 = 0;
    v70 = 0;
LABEL_141:
    FigCFDictionarySetInt32();
LABEL_142:
    if (!v72 || !v70)
    {
      CMVideoFormatDescriptionGetDimensions(v67);
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
    }

    goto LABEL_146;
  }

  v68 = CFDictionaryGetValue(v148, *MEMORY[0x1E6966130]);
  v69 = CFDictionaryGetValue(v148, *MEMORY[0x1E6966208]);
  v70 = v69 != 0;
  v71 = CFDictionaryGetValue(v148, *MEMORY[0x1E69660B8]);
  v72 = v71 != 0;
  if (!v68 || !v69 || !v71)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v148);
    if (!MutableCopy)
    {
      goto LABEL_223;
    }

    v73 = MutableCopy;
    if (v68)
    {
      goto LABEL_142;
    }

    goto LABEL_141;
  }

  v73 = CFRetain(v148);
  if (!v73)
  {
LABEL_223:
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_21(&tagBuffer);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    value_low = LODWORD(tagBuffer.start.value);
    goto LABEL_224;
  }

LABEL_146:
  v149 = v73;
  v76 = CFGetAllocator(v13);
  v77 = HIBYTE(v178);
  v78 = v178;
  v147 = v177;
  v162 = *(v15 + 88);
  numberOfTagsCopied = *(v15 + 112);
  CMTimeRangeFromTimeToTime(&tagBuffer, &v162, &numberOfTagsCopied);
  v79 = *(*(v181 + 152) + 72);
  CMTimeMake(&v162, 1, 10);
  CMTimeMake(&numberOfTagsCopied, 1, 30);
  if (*(v15 + 32))
  {
    v80 = 30;
  }

  else
  {
    v80 = 31;
  }

  v51 = v73;
  *flagsForTag = **v144;
  v160 = *(*v144 + 16);
  v81 = FigMediaProcessorCreateForVideoRotation(v76, TrackRotationAngle, v77, v78, v73, 0, v147, flagsForTag, &tagBuffer.start.value, v79, &v162, &numberOfTagsCopied, 0, v80, (v181 + 232));
  if (v81 || (v81 = assetReader_ensureRemakerQueue(), a6 = theDict, v81))
  {
    value_low = v81;
    v52 = 0;
    v53 = 0;
LABEL_224:
    Mutable = v151;
    v32 = v142;
LABEL_261:
    v50 = v157;
    goto LABEL_67;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v82 = FigNotificationCenterAddWeakListeners();
  Mutable = v151;
  v32 = v142;
  if (v82)
  {
    value_low = v82;
    goto LABEL_230;
  }

  if (!*(*(v181 + 152) + 160))
  {
    v52 = 0;
    v146 = 0;
    goto LABEL_177;
  }

  v83 = CFGetAllocator(v158);
  v52 = CFArrayCreateMutable(v83, v26, MEMORY[0x1E695E9C0]);
  if (!v52)
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_19(&tagBuffer);
    goto LABEL_259;
  }

  v84 = CFGetAllocator(v158);
  v85 = CFArrayCreateMutable(v84, v26, MEMORY[0x1E695E9C0]);
  v53 = v85;
  if (!v85)
  {
    assetReader_EnableDecodedVideoExtractionFromTrack_cold_18(&tagBuffer);
    goto LABEL_260;
  }

  v146 = v85;
  if (v26 < 1)
  {
LABEL_177:
    v154 = v52;
    SampleBufferProcessor = FigMediaProcessorGetSampleBufferProcessor(*(v181 + 232));
    v63 = *v138;
    v13 = v158;
    if (!SampleBufferProcessor)
    {
      assetReader_EnableDecodedVideoExtractionFromTrack_cold_20(&tagBuffer);
      value_low = LODWORD(tagBuffer.start.value);
      goto LABEL_187;
    }

    v104 = SampleBufferProcessor;
    v105 = CFGetAllocator(v158);
    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject(v104);
    v107 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v107)
    {
      value_low = 4294954514;
      goto LABEL_187;
    }

    v108 = v107(FigBaseObject, @"SampleBufferProcessor_SourcePixelBufferAttributes", v105, &v172);
    if (!v108)
    {
      goto LABEL_180;
    }

LABEL_241:
    value_low = v108;
    goto LABEL_187;
  }

  v86 = 0;
  while (!v86)
  {
    v100 = v181;
    v101 = *(v181 + 232);
    if (v101)
    {
      v101 = CFRetain(v101);
      v100 = v181;
    }

    v167 = v101;
    v102 = *(*(v100 + 152) + 72);
    if (v102)
    {
      v102 = CFRetain(v102);
    }

    v166 = v102;
LABEL_170:
    CFArrayAppendValue(v52, v167);
    if (v167)
    {
      CFRelease(v167);
      v167 = 0;
    }

    CFArrayAppendValue(v53, v166);
    v15 = v155;
    if (v166)
    {
      CFRelease(v166);
      v166 = 0;
    }

    if (v26 == ++v86)
    {
      a6 = theDict;
      goto LABEL_177;
    }
  }

  v87 = v52;
  v88 = CFGetAllocator(v158);
  v89 = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v90 = CMBufferQueueCreate(v88, 0, v89, &v166);
  if (v90)
  {
    value_low = v90;
    v50 = v157;
    v52 = v87;
    goto LABEL_237;
  }

  v91 = CFGetAllocator(v158);
  v92 = HIBYTE(v178);
  v93 = v178;
  v94 = CFArrayGetValueAtIndex(Mutable, v86);
  v162 = *(v155 + 88);
  numberOfTagsCopied = *(v155 + 112);
  CMTimeRangeFromTimeToTime(&tagBuffer, &v162, &numberOfTagsCopied);
  v95 = v166;
  CMTimeMake(&v162, 1, 10);
  CMTimeMake(&numberOfTagsCopied, 1, 30);
  if (*(v155 + 32))
  {
    v96 = 30;
  }

  else
  {
    v96 = 31;
  }

  *flagsForTag = **v144;
  v160 = *(*v144 + 16);
  v97 = v91;
  v51 = v149;
  v98 = FigMediaProcessorCreateForVideoRotation(v97, TrackRotationAngle, v92, v93, v149, 0, v94, flagsForTag, &tagBuffer.start.value, v95, &v162, &numberOfTagsCopied, 0, v96, &v167);
  if (!v98)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v99 = FigNotificationCenterAddWeakListeners();
    Mutable = v151;
    v32 = v142;
    v52 = v87;
    v53 = v146;
    if (v99)
    {
      value_low = v99;
      goto LABEL_261;
    }

    goto LABEL_170;
  }

  value_low = v98;
  Mutable = v151;
  v32 = v142;
  v50 = v157;
  v52 = v87;
LABEL_237:
  v53 = v146;
LABEL_67:
  remakerFamily_discardChannel(v158, v181);
  if (v180)
  {
    CFRelease(v180);
  }

  if (v177)
  {
    CFRelease(v177);
  }

  if (v176)
  {
    CFRelease(v176);
  }

  if (v175)
  {
    CFRelease(v175);
  }

  if (v174)
  {
    CFRelease(v174);
  }

  if (v173)
  {
    CFRelease(v173);
  }

  if (v172)
  {
    CFRelease(v172);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v168)
  {
    CFRelease(v168);
  }

  if (v167)
  {
    CFRelease(v167);
  }

  if (v166)
  {
    CFRelease(v166);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (tagCollectionsOut)
  {
    CFRelease(tagCollectionsOut);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  return value_low;
}

uint64_t assetReader_EnableVideoCompositionExtraction(const void *a1, const __CFArray *a2, __CFString *a3, const void *a4, const void *a5, int a6, const __CFArray *a7, uint64_t a8, const void *a9, __int128 *a10, unsigned int a11, int a12, uint64_t a13, int a14, void *a15, const __CFDictionary *a16, int a17, const __CFDictionary *a18, const __CFDictionary *a19, uint64_t a20, uint64_t a21, const __CFDictionary *a22, _DWORD *a23)
{
  v24 = *a10;
  v25 = *(a10 + 2);
  return assetReader_EnableVideoCompositionExtraction3(a1, a2, 0, 0, 0, a3, a4, a5, a6, a7, a8, a9, &v24, a11, a12, a13, SHIDWORD(a13), a14, a15, a16, a17, a18, a19, a20, a19, a22, a23);
}

uint64_t assetReader_EnableAudioMixdownExtraction(const void *a1, const __CFArray *a2, AudioStreamBasicDescription *a3, size_t a4, const AudioChannelLayout *a5, uint64_t a6, const __CFDictionary *a7, uint64_t a8, _DWORD *a9)
{
  Storage = remakerFamily_getStorage(a1);
  formatDescriptionOut = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  if (*Storage != 1)
  {
    assetReader_EnableAudioMixdownExtraction_cold_1(&v61);
LABEL_72:
    value_low = LODWORD(v61.value);
    remakerFamily_discardChannel(a1, 0);
    goto LABEL_53;
  }

  if (!a2)
  {
    assetReader_EnableAudioMixdownExtraction_cold_8(&v61);
    goto LABEL_72;
  }

  if (!a3)
  {
    assetReader_EnableAudioMixdownExtraction_cold_7(&v61);
    goto LABEL_72;
  }

  if (!a3->mChannelsPerFrame)
  {
    assetReader_EnableAudioMixdownExtraction_cold_6(&v61);
    goto LABEL_72;
  }

  if (a3->mSampleRate == 0.0)
  {
    assetReader_EnableAudioMixdownExtraction_cold_5(&v61);
    goto LABEL_72;
  }

  if (a3->mFormatID != 1819304813)
  {
    assetReader_EnableAudioMixdownExtraction_cold_2(&v61);
    goto LABEL_72;
  }

  v15 = Storage;
  Count = CFArrayGetCount(a2);
  v17 = malloc_type_calloc(8uLL, Count, 0xACA99D20uLL);
  if (a7)
  {
    Value = CFDictionaryGetValue(a7, @"RemakerFamilyAudioProcessingOption_TimePitchAlgorithm");
  }

  else
  {
    Value = 0;
  }

  v18 = CFGetAllocator(a1);
  v19 = CMAudioFormatDescriptionCreate(v18, a3, a4, a5, 0, 0, 0, &formatDescriptionOut);
  if (v19 || (v19 = remakerFamily_createChannel(a1, 0, 1936684398, &v65), v19))
  {
    value_low = v19;
    v34 = a1;
    goto LABEL_48;
  }

  v20 = v65;
  *(v65 + 48) = 0;
  *(v20 + 50) = 1;
  v21 = CFGetAllocator(a1);
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v23 = CMBufferQueueCreate(v21, 0, CallbacksForUnsortedSampleBuffers, (v65 + 208));
  if (v23 || (v24 = CFRetain(*(v65 + 208)), v25 = v65, *(*(v65 + 152) + 72) = v24, v26 = *(v25 + 208), CMTimeMake(&v61, 2, 1), CMTimeMake(&v60, 1, 1), v23 = FigSampleBufferConsumerCreateForBufferQueue(v26, &v61.value, &v60.value, &v63), v23) || (*(v15 + 32) ? (v27 = 30) : (v27 = 0), v23 = FigActivitySchedulerCreateForNewThread(*MEMORY[0x1E695E480], v27, @"com.apple.coremedia.readerOfflineMixer", &v62), v23))
  {
    value_low = v23;
    v34 = a1;
    goto LABEL_48;
  }

  v28 = remakerFamily_setupMultiPassTrackIfNecessary(a1, v65);
  if (v28 || (v29 = v65, v30 = remakerFamily_getStorage(a1), v31 = *(v30 + 152) + 1, *(v30 + 152) = v31, *(v29 + 300) = v31, v32 = CFGetAllocator(a1), v28 = FigAudioQueueOfflineMixerCreate(v32, a3, a4, a5, 0, v63, v62, (v65 + 200)), v28))
  {
    value_low = v28;
    v34 = a1;
    goto LABEL_48;
  }

  v33 = assetReader_ensureRemakerQueue();
  v34 = a1;
  if (v33)
  {
    goto LABEL_63;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v33 = FigNotificationCenterAddWeakListeners();
  if (v33)
  {
    goto LABEL_63;
  }

  if (Count < 1)
  {
LABEL_73:
    assetReader_EnableAudioMixdownExtraction_cold_3(&v61);
    value_low = LODWORD(v61.value);
    goto LABEL_48;
  }

  v56 = 0;
  v35 = 0;
  v36 = v17;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v35);
    v61.value = 0;
    if (!FigCFDictionaryGetInt32IfPresent())
    {
      assetReader_EnableAudioMixdownExtraction_cold_4(&v60);
      value_low = LODWORD(v60.value);
      goto LABEL_48;
    }

    v38 = CFDictionaryGetValue(ValueAtIndex, @"AssetReaderSource_AudioCurves");
    if (v38)
    {
      v39 = CFRetain(v38);
      if (v39)
      {
        goto LABEL_29;
      }
    }

    v61.value = CFDictionaryGetValue(ValueAtIndex, @"AssetReaderSource_AudioVolumeCurve");
    if (v61.value)
    {
      v40 = CFGetAllocator(v34);
      v39 = CFDictionaryCreate(v40, kFigAudioCurvesKey_Volume, &v61, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v39)
      {
        value_low = 4294954510;
        goto LABEL_48;
      }

LABEL_29:
      v41 = v39;
      goto LABEL_31;
    }

    v41 = 0;
LABEL_31:
    v42 = CFDictionaryGetValue(ValueAtIndex, @"AssetReaderSource_AudioProcessingTap");
    v43 = CFDictionaryGetValue(ValueAtIndex, @"RemakerFamilyAudioProcessingOption_TimePitchAlgorithmSourceTrack");
    v44 = CFDictionaryGetValue(ValueAtIndex, @"AssetReaderSource_CinematicAudioParameters");
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = Value;
    }

    v34 = a1;
    value_low = remakerFamily_createAudioMixdownSourceTrack(a1, 0, v41, v42, v44, v45, a8, formatDescriptionOut, v36);
    if (v41)
    {
      CFRelease(v41);
    }

    if (value_low != -12138)
    {
      if (value_low)
      {
        goto LABEL_48;
      }

      v47 = *(v65 + 200);
      FigBaseObject = FigRenderPipelineGetFigBaseObject(*(*v36 + 56));
      v49 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v49)
      {
        value_low = 4294954514;
        goto LABEL_48;
      }

      v50 = v49(FigBaseObject, @"OfflineMixer", v47);
      if (v50)
      {
        value_low = v50;
        goto LABEL_48;
      }

      *(*v36 + 304) = *(v65 + 300);
      ++v56;
    }

    ++v35;
    ++v36;
  }

  while (Count != v35);
  if (v56 <= 0)
  {
    goto LABEL_73;
  }

  v33 = assetReaderTrack_setUpOutputBufferQueueSemaphore(*(v65 + 152));
  if (!v33)
  {
    *a9 = *(v65 + 300);
    v51 = v17;
    v52 = Count;
    do
    {
      remakerFamily_commitChannel(a1, *v51);
      *v51++ = 0;
      --v52;
    }

    while (v52);
    remakerFamily_commitChannel(a1, v65);
    value_low = 0;
    v65 = 0;
    goto LABEL_48;
  }

LABEL_63:
  value_low = v33;
LABEL_48:
  remakerFamily_discardChannel(v34, v65);
  if (v17)
  {
    if (Count >= 1)
    {
      v53 = v17;
      do
      {
        v54 = *v53++;
        remakerFamily_discardChannel(v34, v54);
        --Count;
      }

      while (Count);
    }

    free(v17);
  }

LABEL_53:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  return value_low;
}

uint64_t assetReader_StartExtractionForTimeRange(const void *a1, __int128 *a2, uint64_t a3)
{
  Storage = remakerFamily_getStorage(a1);
  v7 = *a2;
  *(Storage + 104) = *(a2 + 2);
  *(Storage + 88) = v7;
  v8 = *(a3 + 16);
  *(Storage + 112) = *a3;
  *(Storage + 128) = v8;
  *(Storage + 136) = 0;

  return assetReader_startExtractionForTimeRangeCommon(a1);
}

uint64_t assetReader_StartExtractionForTimeRanges(uint64_t a1, __int128 *a2, CFIndex a3)
{
  Storage = remakerFamily_getStorage(a1);
  if (*Storage >= 4u)
  {
    assetReader_StartExtractionForTimeRanges_cold_4(&range);
    goto LABEL_16;
  }

  if (a3 <= 0)
  {
    assetReader_StartExtractionForTimeRanges_cold_3(&range);
    goto LABEL_16;
  }

  if (!a2)
  {
    assetReader_StartExtractionForTimeRanges_cold_2(&range);
LABEL_16:
    value_low = LODWORD(range.start.value);
    if (!LODWORD(range.start.value))
    {
      return value_low;
    }

    goto LABEL_13;
  }

  v7 = Storage;
  Count = CFArrayGetCount(*(Storage + 80));
  if (Count < 1)
  {
LABEL_9:
    v13 = a2[1];
    *&range.start.value = *a2;
    *&range.start.epoch = v13;
    *&range.duration.timescale = a2[2];
    CMTimeRangeGetEnd(&v20, &range);
    v17 = *a2;
    v18 = *(a2 + 2);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (v14)
    {
      *&range.start.value = v17;
      range.start.epoch = v18;
      v21 = v20;
      value_low = v14(a1, &range, &v21);
      if (!value_low)
      {
        return value_low;
      }
    }

    else
    {
      value_low = 4294954514;
    }
  }

  else
  {
    v9 = Count;
    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 80), v10);
      if (!ValueAtIndex[356])
      {
        assetReader_StartExtractionForTimeRanges_cold_1(&range);
        goto LABEL_16;
      }

      v12 = remakerFamily_resetTrackMultiPassTimeRanges(ValueAtIndex, a2, a3);
      if (v12)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_9;
      }
    }

    value_low = v12;
  }

LABEL_13:
  remakerfamily_setFailureStatusIfError(a1, value_low);
  remakerFamily_invalidateAllMediaProcessors();
  return value_low;
}

uint64_t assetReader_StartExtractionForTimeRangesFromTrack(const void *a1, int a2, uint64_t a3, CFIndex a4)
{
  Storage = remakerFamily_getStorage(a1);
  ChannelByExtractionID = assetReader_getChannelByExtractionID(a1, a2);
  if (ChannelByExtractionID && *(ChannelByExtractionID + 16))
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    v26 = 0;
    if (v10)
    {
      v11 = v10;
      if (*Storage >= 7u)
      {
        assetReader_StartExtractionForTimeRangesFromTrack_cold_4(&v24);
      }

      else if (*(v10 + 356))
      {
        if (a4 <= 0)
        {
          assetReader_StartExtractionForTimeRangesFromTrack_cold_2(&v24);
        }

        else
        {
          if (a3)
          {
            Segment = assetReader_ensureRemakerQueue();
            if (Segment)
            {
              goto LABEL_31;
            }

            Segment = remakerFamily_resetTrackMultiPassTimeRanges(v11, a3, a4);
            if (Segment)
            {
              goto LABEL_31;
            }

            if (*(v11 + 416))
            {
              v13 = *(a3 + 16);
              *&v24.start.value = *a3;
              *&v24.start.epoch = v13;
              *&v24.duration.timescale = *(a3 + 32);
              Segment = remakerFamily_resetSourceRenderersForNextSegment(v11, &v24, 1);
              if (Segment)
              {
                goto LABEL_31;
              }
            }

            else
            {
              Segment = remakerFamily_createMultiPassPlaybackBossForTrack(v11, (v11 + 416));
              if (Segment)
              {
                goto LABEL_31;
              }

              *(v11 + 424) = 0;
              v17 = *(v11 + 416);
              v18 = *(a3 + 16);
              *&v24.start.value = *a3;
              *&v24.start.epoch = v18;
              *&v24.duration.timescale = *(a3 + 32);
              CMTimeRangeGetEnd(&v25, &v24);
              *&v24.start.value = *a3;
              v24.start.epoch = *(a3 + 16);
              Segment = FigPlaybackBossSendSamplesForTimeRange(v17, &v24.start, &v25, 4);
              if (Segment)
              {
                goto LABEL_31;
              }

              Segment = remakerFamily_createRelatedTrackArray(v11, &v26);
              if (Segment)
              {
                goto LABEL_31;
              }

              Count = CFArrayGetCount(v26);
              if (Count >= 1)
              {
                v20 = Count;
                v21 = 0;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v26, v21);
                  v23 = *(a3 + 16);
                  *&v24.start.value = *a3;
                  *&v24.start.epoch = v23;
                  *&v24.duration.timescale = *(a3 + 32);
                  CMTimeRangeGetEnd(&v25, &v24);
                  *&v24.start.value = *a3;
                  v24.start.epoch = *(a3 + 16);
                  Segment = remakerFamily_startTrack(ValueAtIndex, &v24.start);
                  if (Segment)
                  {
                    goto LABEL_31;
                  }
                }

                while (v20 != ++v21);
              }
            }

            remakerFamily_SetRemakerState(a1, 3, 0);
            Segment = remakerfamily_updateClientPID();
            if (!Segment)
            {
              updated = remakerfamily_updateThrottleForBackground(a1);
              if (updated)
              {
LABEL_14:
                v15 = 0;
                goto LABEL_15;
              }

LABEL_16:
              CFRelease(v11);
              goto LABEL_17;
            }

LABEL_31:
            updated = Segment;
            goto LABEL_14;
          }

          assetReader_StartExtractionForTimeRangesFromTrack_cold_1(&v24);
        }
      }

      else
      {
        assetReader_StartExtractionForTimeRangesFromTrack_cold_3(&v24);
      }

      updated = LODWORD(v24.start.value);
      if (LODWORD(v24.start.value))
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v26 = 0;
  }

  if (!assetReader_StartExtractionForTimeRangesFromTrack_cold_5(&v24))
  {
    v11 = 0;
    updated = LODWORD(v24.start.value);
    v15 = 1;
LABEL_15:
    remakerfamily_setFailureStatusIfError(a1, updated);
    remakerFamily_invalidateAllMediaProcessors();
    if (v15)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  updated = 0;
LABEL_17:
  if (v26)
  {
    CFRelease(v26);
  }

  return updated;
}

uint64_t assetReader_StartExtractionForTime(const void *a1, __int128 *a2)
{
  Storage = remakerFamily_getStorage(a1);
  v5 = *a2;
  *(Storage + 104) = *(a2 + 2);
  *(Storage + 88) = v5;
  v6 = *(a2 + 2);
  *(Storage + 112) = *a2;
  *(Storage + 128) = v6;
  *(Storage + 136) = 1;

  return assetReader_startExtractionForTimeRangeCommon(a1);
}

uint64_t assetReader_EnableVideoCompositionExtraction2(const void *a1, const __CFArray *a2, const __CFArray *a3, __CFString *a4, const void *a5, const void *a6, int a7, const __CFArray *a8, uint64_t a9, const void *a10, __int128 *a11, unsigned int a12, int a13, uint64_t a14, int a15, void *a16, const __CFDictionary *a17, int a18, const __CFDictionary *a19, const __CFDictionary *a20, uint64_t a21, uint64_t a22, const __CFDictionary *a23, _DWORD *a24)
{
  v25 = *a11;
  v26 = *(a11 + 2);
  return assetReader_EnableVideoCompositionExtraction3(a1, a2, a3, 0, 0, a4, a5, a6, a7, a8, a9, a10, &v25, a12, a13, a14, SHIDWORD(a14), a15, a16, a17, a18, a19, a20, a21, a20, a23, a24);
}

void assetReaderTrack_dataBecameReady(uint64_t a1)
{
  if (a1 && *(a1 + 16) && (v2 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
  {
    v3 = v2;
    assetReaderTrack_safelyPostNotificationWithExtractionID(a1, @"AssetReader_SampleBufferNowAvailable");
    FigSemaphoreSignal();

    CFRelease(v3);
  }

  else
  {
    assetReaderTrack_dataBecameReady_cold_1();
  }
}

void assetReaderTrack_endOfDataReached(uint64_t a1)
{
  if (a1 && *(a1 + 16) && (v2 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
  {
    v3 = v2;
    assetReaderTrack_safelyPostNotificationWithExtractionID(a1, @"AssetReader_SampleBufferNowAvailable");
    assetReaderTrack_safelyPostNotificationWithExtractionID(a1, @"AssetReader_EndOfDataReached");
    FigSemaphoreSignal();

    CFRelease(v3);
  }

  else
  {
    assetReaderTrack_endOfDataReached_cold_1();
  }
}

uint64_t assetReaderTrack_copyRemaker(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (*(v1 + 16))
  {
    v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v3 = 0;
  }

  CFRelease(v2);
  return v3;
}

void assetReaderTrack_outputQueueBecameEmpty(uint64_t a1)
{
  if (a1 && *(a1 + 16) && (v2 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
  {
    v3 = v2;
    v4 = assetReaderTrack_copyRemaker(a1);
    if (v4)
    {
      v5 = v4;
      if (v3[356])
      {
        remakerFamily_startNextSegmentIfMultiPassComplete(v3);
      }

      CFRelease(v5);
    }

    else
    {
      assetReaderTrack_outputQueueBecameEmpty_cold_1();
    }

    CFRelease(v3);
  }

  else
  {
    assetReaderTrack_outputQueueBecameEmpty_cold_2();
  }
}

void assetReaderTrack_sourceImageAvailable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4 || !*(a4 + 16) || (v5 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    assetReaderTrack_sourceImageAvailable_cold_2();
    return;
  }

  v6 = v5;
  if (!*(a4 + 160))
  {
    goto LABEL_21;
  }

  v14 = **&MEMORY[0x1E6960C70];
  v13 = **&MEMORY[0x1E6960C88];
  v7 = *(a4 + 120);
  if (v7)
  {
    Count = CFArrayGetCount(v7);
    CFArrayGetValueAtIndex(*(a4 + 120), 0);
    if (Count >= 1)
    {
      v9 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a4 + 120), v9);
        if (FigVisualContextGetEarliestSequentialImageTime(ValueAtIndex, 0, &v14, 0))
        {
          goto LABEL_17;
        }

        if (v9)
        {
          time1 = v13;
          v11 = v14;
          if (CMTimeCompare(&time1, &v11))
          {
            goto LABEL_17;
          }
        }

        else
        {
          v13 = v14;
        }
      }

      while (Count != ++v9);
    }
  }

  else
  {
    CFArrayGetValueAtIndex(0, 0);
  }

  time1 = v13;
  v11 = *(a4 + 164);
  if (CMTimeCompare(&time1, &v11))
  {
    *(a4 + 164) = v13;
LABEL_21:
    assetReaderTrack_sourceImageAvailable_cold_1(a4);
  }

LABEL_17:
  CFRelease(v6);
}

void assetReaderTrack_sourceNoMoreImages(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 16) && (v3 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
  {
    assetReaderTrack_sourceNoMoreImages_cold_1(a2, v3);
  }

  else
  {
    assetReaderTrack_sourceNoMoreImages_cold_2();
  }
}

void assetReaderTrack_visualContextBecameEmpty(uint64_t a1)
{
  if (a1 && *(a1 + 16))
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v2 = 0;
  }

  v3 = assetReaderTrack_copyRemaker(a1);
  Storage = remakerFamily_getStorage(v3);
  if (v3)
  {
    if (v2)
    {
      assetReaderTrack_visualContextBecameEmpty_cold_1(Storage, v2);
    }

    else
    {
      assetReaderTrack_visualContextBecameEmpty_cold_2();
    }

    v2 = v3;
  }

  else if (!v2)
  {
    return;
  }

  CFRelease(v2);
}

uint64_t assetReader_startExtractionForTimeRangeCommon(const void *a1)
{
  Storage = remakerFamily_getStorage(a1);
  if (*Storage >= 7u)
  {
    assetReader_startExtractionForTimeRangeCommon_cold_2(&v22);
    goto LABEL_41;
  }

  v3 = Storage;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  SinglePassPlaybackBoss = assetReader_ensureRemakerQueue();
  if (SinglePassPlaybackBoss)
  {
LABEL_37:
    started = SinglePassPlaybackBoss;
    goto LABEL_38;
  }

  Count = CFArrayGetCount(*(v3 + 10));
  if (Count < 1)
  {
LABEL_28:
    if (*v3 != 1)
    {
      goto LABEL_46;
    }

    v17 = *(v3 + 47);
    if (v17)
    {
      CFRelease(v17);
      *(v3 + 47) = 0;
    }

    SinglePassPlaybackBoss = remakerFamily_createSinglePassPlaybackBoss(a1, v3 + 47);
    if (!SinglePassPlaybackBoss)
    {
LABEL_46:
      remakerFamily_SetRemakerState(a1, 3, 0);
      SinglePassPlaybackBoss = remakerfamily_updateClientPID();
      if (!SinglePassPlaybackBoss)
      {
        SinglePassPlaybackBoss = remakerfamily_updateThrottleForBackground(a1);
        if (!SinglePassPlaybackBoss)
        {
          SinglePassPlaybackBoss = remakerFamily_startAllSinglePassTracks(a1);
          if (!SinglePassPlaybackBoss)
          {
            started = remakerFamily_startAllMultiPassTracks(a1, 0);
            if (!started)
            {
              return started;
            }

            goto LABEL_38;
          }
        }
      }
    }

    goto LABEL_37;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 10), v7);
    v9 = ValueAtIndex;
    if (!ValueAtIndex[356])
    {
      break;
    }

    if (*(ValueAtIndex + 75))
    {
      if (*v3 == 3)
      {
        start = *(v3 + 22);
        v20 = *(v3 + 28);
        CMTimeRangeFromTimeToTime(&v22, &start, &v20);
        SinglePassPlaybackBoss = remakerFamily_resetSourceRenderersForNextSegment(v9, &v22, 1);
        if (SinglePassPlaybackBoss)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v16 = *(ValueAtIndex + 52);
        if (v16)
        {
          CFRelease(v16);
          *(v9 + 416) = 0;
        }

        SinglePassPlaybackBoss = remakerFamily_createMultiPassPlaybackBossForTrack(v9, (v9 + 416));
        if (SinglePassPlaybackBoss)
        {
          goto LABEL_37;
        }
      }
    }

LABEL_27:
    if (++v7 == v6)
    {
      goto LABEL_28;
    }
  }

  if ((*v3 - 3) > 2)
  {
    goto LABEL_27;
  }

  start = *(v3 + 22);
  v20 = *(v3 + 28);
  CMTimeRangeFromTimeToTime(&v22, &start, &v20);
  SinglePassPlaybackBoss = remakerFamily_resetSourceRenderersForNextSegment(v9, &v22, 1);
  if (SinglePassPlaybackBoss)
  {
    goto LABEL_37;
  }

  v10 = *(v9 + 232);
  if (!v10)
  {
    goto LABEL_27;
  }

  *(v9 + 256) = 0;
  SinglePassPlaybackBoss = FigMediaProcessorReset(v10, 1);
  if (SinglePassPlaybackBoss)
  {
    goto LABEL_37;
  }

  if (!*(*(v9 + 152) + 160))
  {
    goto LABEL_27;
  }

  v11 = *(v9 + 240);
  if (!v11)
  {
    goto LABEL_27;
  }

  v12 = CFArrayGetCount(v11);
  if (v12 < 2)
  {
    goto LABEL_27;
  }

  v13 = v12;
  v14 = 1;
  while (1)
  {
    v15 = CFArrayGetValueAtIndex(*(v9 + 240), v14);
    if (!v15)
    {
      break;
    }

    SinglePassPlaybackBoss = FigMediaProcessorReset(v15, 1);
    if (SinglePassPlaybackBoss)
    {
      goto LABEL_37;
    }

    if (v13 == ++v14)
    {
      goto LABEL_27;
    }
  }

  assetReader_startExtractionForTimeRangeCommon_cold_1(&v22);
LABEL_41:
  started = LODWORD(v22.start.value);
  if (LODWORD(v22.start.value))
  {
LABEL_38:
    remakerfamily_setFailureStatusIfError(a1, started);
    remakerFamily_invalidateAllMediaProcessors();
  }

  return started;
}

uint64_t assetReader_getChannelByExtractionID(uint64_t a1, int a2)
{
  Storage = remakerFamily_getStorage(a1);
  Count = CFArrayGetCount(*(Storage + 80));
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(Storage + 80), v6);
    if (ValueAtIndex[75] == a2)
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return *(ValueAtIndex + 19);
}

__n128 OUTLINED_FUNCTION_10_31()
{
  *(v1 - 208) = *(v0 + 88);
  *(v1 - 192) = *(v0 + 104);
  return *(v0 + 112);
}

uint64_t OUTLINED_FUNCTION_11_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, uint64_t a32)
{
  a31 = *v33;
  a32 = *(v33 + 2);

  return assetReader_createTaggedBufferGroupSampleBuffer(v32, &a31);
}

__n128 OUTLINED_FUNCTION_21_17()
{
  result = *(v0 - 192);
  *(v0 - 160) = result;
  *(v0 - 144) = *(v0 - 176);
  return result;
}

uint64_t RegisterFigBufferedAirPlayAudioChainSubPipeType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigBufferedAirPlayAudioChainSubPipeGetTypeID()
{
  MEMORY[0x19A8D3660](&FigBufferedAirPlayAudioChainSubPipeGetClassID_sRegisterFigBufferedAirPlayAudioChainSubPipeTypeOnce, RegisterFigBufferedAirPlayAudioChainSubPipeType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigMetadataSerializerCreateForQuickTimeMetadata(uint64_t a1, void *a2)
{
  if (a2)
  {
    FigMetadataSerializerGetClassID();
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      CMBaseObjectGetDerivedStorage();
      *a2 = 0;
    }

    return v3;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void FigQuickTimeMetadataSerializerFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    v2 = *DerivedStorage;
    if (v2)
    {
      CFRelease(v2);
      *v1 = 0;
    }

    v3 = v1[1];
    if (v3)
    {
      CFRelease(v3);
      v1[1] = 0;
    }

    v4 = v1[2];
    if (v4)
    {
      CFRelease(v4);
      v1[2] = 0;
    }

    v5 = v1[3];
    if (v5)
    {
      CFRelease(v5);
      v1[3] = 0;
    }
  }

  else
  {
    FigQuickTimeMetadataSerializerFinalize_cold_1();
  }
}

__CFString *FigQuickTimeMetadataSerializerCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    CFStringAppendFormat(Mutable, 0, @" FigQuickTimeMetadataSerializer %p\n", DerivedStorage);
    CFStringAppendFormat(Mutable, 0, @"  - handle name: %@\n", *(v2 + 24));
    CFStringAppendFormat(Mutable, 0, @"  - free atom size: %d\n", *(v2 + 32));
    CFStringAppendFormat(Mutable, 0, @"  - minimum container size: %d\n", *(v2 + 36));
    CFStringAppendFormat(Mutable, 0, @"%@", *v2);
  }

  else
  {
    FigQuickTimeMetadataSerializerCopyDebugDescription_cold_1();
  }

  return Mutable;
}

uint64_t FigQuickTimeMetadataSerializerCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigQuickTimeMetadataSerializerCopyProperty_cold_1(&v14);
    return v14;
  }

  v7 = DerivedStorage;
  if (!CFEqual(a2, @"handlerName"))
  {
    if (CFEqual(a2, @"freeAtomSize"))
    {
      v10 = *MEMORY[0x1E695E480];
      v11 = v7 + 4;
    }

    else
    {
      if (!CFEqual(a2, @"minimumSize"))
      {
        if (!CFEqual(a2, @"format"))
        {
          return 4294954512;
        }

        v8 = @"com.apple.quicktime.mdta";
        goto LABEL_4;
      }

      v10 = *MEMORY[0x1E695E480];
      v11 = v7 + 36;
    }

    v9 = CFNumberCreate(v10, kCFNumberSInt32Type, v11);
    goto LABEL_11;
  }

  v8 = v7[3];
  if (!v8)
  {
    return 4294954513;
  }

LABEL_4:
  v9 = CFRetain(v8);
LABEL_11:
  v13 = v9;
  result = 0;
  *a4 = v13;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigQuickTimeMetadataSerializerSetProperty_cold_1(&v14);
    return v14;
  }

  v6 = DerivedStorage;
  if (CFEqual(@"handlerName", a2))
  {
    if (a3)
    {
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        v8 = *(v6 + 24);
        *(v6 + 24) = CFRetain(a3);
        if (v8)
        {
          CFRelease(v8);
        }

        return 0;
      }
    }
  }

  else if (CFEqual(@"freeAtomSize", a2))
  {
    if (a3)
    {
      v10 = CFNumberGetTypeID();
      if (v10 == CFGetTypeID(a3))
      {
        valuePtr = 0;
        CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
        result = 0;
        *(v6 + 32) = valuePtr;
        return result;
      }
    }
  }

  else
  {
    if (!CFEqual(@"minimumSize", a2))
    {
      return 4294954710;
    }

    if (a3)
    {
      v11 = CFNumberGetTypeID();
      if (v11 == CFGetTypeID(a3))
      {
        v12 = 0;
        CFNumberGetValue(a3, kCFNumberSInt32Type, &v12);
        result = 0;
        *(v6 + 36) = v12;
        return result;
      }
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigQuickTimeMetadataSerializerAddItem(const void *a1, __CFString *a2, const void *a3, const void *a4, const __CFDictionary *a5)
{
  v59 = *MEMORY[0x1E69E9840];
  theDict = 0;
  value = 0;
  key = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigQuickTimeMetadataSerializerAddItem_cold_9(&rect);
    goto LABEL_95;
  }

  if (!a2 || !a3 || !a4)
  {
    FigQuickTimeMetadataSerializerAddItem_cold_8(&rect);
    goto LABEL_95;
  }

  v11 = DerivedStorage;
  if (CFStringGetLength(a2) != 4)
  {
    FigQuickTimeMetadataSerializerAddItem_cold_1(&rect);
    goto LABEL_95;
  }

  v12 = CFGetAllocator(a1);
  ActualKey = FigQuickTimeMetadataCreateActualKey(v12, a2, a3, &cf, &key);
  if (ActualKey)
  {
    goto LABEL_99;
  }

  v57 = 0;
  if (!a5 || FigMetadataGetNumericalDataTypeForMetadataProperties(@"com.apple.quicktime.mdta", a5, @"com.apple.quicktime.mdta", &v57, 0))
  {
    goto LABEL_41;
  }

  if (v57 <= 70)
  {
    if (v57 > 29)
    {
      if ((v57 - 65) < 3)
      {
        goto LABEL_36;
      }

      if (v57 == 30)
      {
        v49 = CFGetTypeID(a4);
        if (v49 != CFDictionaryGetTypeID() || CFDictionaryGetCount(a4) != 4)
        {
          goto LABEL_94;
        }

        v50 = 0;
        *&rect.origin.x = @"widthPixels";
        *&rect.origin.y = @"heightPixels";
        *&rect.size.width = @"widthPoints";
        *&rect.size.height = @"heightPoints";
        while (1)
        {
          TypeID = CFDictionaryGetValue(a4, *(&rect.origin.x + v50));
          if (!TypeID)
          {
            goto LABEL_40;
          }

          v51 = CFGetTypeID(TypeID);
          if (v51 != CFNumberGetTypeID())
          {
            LODWORD(TypeID) = 0;
            goto LABEL_40;
          }

          v50 += 8;
          if (v50 == 32)
          {
            goto LABEL_37;
          }
        }
      }

      if (v57 == 70)
      {
        v44 = CFGetTypeID(a4);
        if (v44 != CFDictionaryGetTypeID())
        {
          goto LABEL_94;
        }

        rect.origin.x = 0.0;
        rect.origin.y = 0.0;
        LODWORD(TypeID) = CGPointMakeWithDictionaryRepresentation(a4, &rect.origin);
        goto LABEL_40;
      }
    }

    else
    {
      if ((v57 - 21) < 4)
      {
        goto LABEL_36;
      }

      if ((v57 - 1) < 3)
      {
        v16 = CFGetTypeID(a4);
        TypeID = CFStringGetTypeID();
LABEL_39:
        LODWORD(TypeID) = v16 == TypeID;
        goto LABEL_40;
      }
    }

    goto LABEL_97;
  }

  if (v57 <= 78)
  {
    if ((v57 - 74) >= 5)
    {
      if (v57 != 71)
      {
        if (v57 == 72)
        {
          v14 = CFGetTypeID(a4);
          if (v14 == CFDictionaryGetTypeID())
          {
            memset(&rect, 0, sizeof(rect));
            LODWORD(TypeID) = CGRectMakeWithDictionaryRepresentation(a4, &rect);
            goto LABEL_40;
          }

LABEL_94:
          FigQuickTimeMetadataSerializerAddItem_cold_2(&rect);
LABEL_95:
          v34 = 0;
LABEL_96:
          x_low = LODWORD(rect.origin.x);
          goto LABEL_55;
        }

        goto LABEL_97;
      }

      v52 = CFGetTypeID(a4);
      if (v52 != CFDictionaryGetTypeID())
      {
        goto LABEL_94;
      }

      rect.origin.x = 0.0;
      rect.origin.y = 0.0;
      LODWORD(TypeID) = CGSizeMakeWithDictionaryRepresentation(a4, &rect);
LABEL_40:
      if (TypeID)
      {
        goto LABEL_41;
      }

      goto LABEL_94;
    }

LABEL_36:
    v23 = CFGetTypeID(a4);
    if (v23 == CFNumberGetTypeID())
    {
LABEL_37:
      LODWORD(TypeID) = 1;
      goto LABEL_40;
    }

    v16 = CFGetTypeID(a4);
    TypeID = CFBooleanGetTypeID();
    goto LABEL_39;
  }

  if (v57 > 82)
  {
    switch(v57)
    {
      case 'S':
LABEL_77:
        v45 = CFGetTypeID(a4);
        if (v45 == CFArrayGetTypeID() && CFArrayGetCount(a4) == 9)
        {
          v46 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a4, v46);
            if (!ValueAtIndex)
            {
              break;
            }

            v48 = CFGetTypeID(ValueAtIndex);
            if (v48 != CFNumberGetTypeID())
            {
              break;
            }

            if (++v46 == 9)
            {
              goto LABEL_41;
            }
          }
        }

        goto LABEL_94;
      case 'T':
        LODWORD(TypeID) = qtmetadata_checkIsValidAndReturnRasterRectangleValueArray(a4, 0, 0);
        goto LABEL_40;
      case 'U':
        LODWORD(TypeID) = qtmetadata_checkIsValidAndReturnExtendedRasterRectangleValue(a4, 0, 0, 0, 0);
        goto LABEL_40;
    }

LABEL_97:
    v16 = CFGetTypeID(a4);
    TypeID = CFDataGetTypeID();
    goto LABEL_39;
  }

  if ((v57 - 80) >= 2)
  {
    if (v57 == 79)
    {
      goto LABEL_77;
    }

    goto LABEL_97;
  }

  v17 = CFGetTypeID(a4);
  if (v17 != CFArrayGetTypeID())
  {
    goto LABEL_94;
  }

  v18 = v57;
  if (v57 == 80)
  {
    if (CFArrayGetCount(a4) < 3)
    {
      goto LABEL_94;
    }

    v18 = v57;
  }

  if (v18 == 81 && CFArrayGetCount(a4) < 2)
  {
    goto LABEL_94;
  }

  if (CFArrayGetCount(a4) >= 1)
  {
    v19 = 0;
    do
    {
      v20 = CFArrayGetValueAtIndex(a4, v19);
      rect.origin.x = 0.0;
      rect.origin.y = 0.0;
      if (!v20)
      {
        goto LABEL_94;
      }

      v21 = v20;
      v22 = CFGetTypeID(v20);
      if (v22 != CFDictionaryGetTypeID() || !CGPointMakeWithDictionaryRepresentation(v21, &rect.origin))
      {
        goto LABEL_94;
      }
    }

    while (++v19 < CFArrayGetCount(a4));
  }

LABEL_41:
  if (!*v11)
  {
    v24 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v24, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *v11 = Mutable;
    if (!Mutable)
    {
      FigQuickTimeMetadataSerializerAddItem_cold_7(&rect);
      goto LABEL_95;
    }
  }

  if (!v11[1])
  {
    v26 = CFGetAllocator(a1);
    v27 = CFArrayCreateMutable(v26, 0, MEMORY[0x1E695E9C0]);
    v11[1] = v27;
    if (!v27)
    {
      FigQuickTimeMetadataSerializerAddItem_cold_6(&rect);
      goto LABEL_95;
    }
  }

  if (!v11[2])
  {
    v28 = CFGetAllocator(a1);
    v29 = CFArrayCreateMutable(v28, 0, MEMORY[0x1E695E9C0]);
    v11[2] = v29;
    if (!v29)
    {
      FigQuickTimeMetadataSerializerAddItem_cold_5(&rect);
      goto LABEL_95;
    }
  }

  if (!CFDictionaryGetValueIfPresent(*v11, key, &value))
  {
    x_low = FigQuickTimeMetadataCreateNewItem(a1, cf, a4, a5, &theDict);
    if (!x_low)
    {
      CFArrayAppendValue(v11[1], key);
      *&rect.origin.x = CFArrayGetCount(v11[1]);
      v38 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &rect);
      v39 = theDict;
      CFDictionarySetValue(theDict, @"keyIndex", v38);
      CFRelease(v38);
      CFDictionarySetValue(*v11, key, v39);
      CFArrayAppendValue(v11[2], v39);
      CFRelease(v39);
      theDict = 0;
    }

    goto LABEL_54;
  }

  v30 = CFGetTypeID(value);
  if (v30 == CFDictionaryGetTypeID())
  {
    v31 = value;
    v32 = CFDictionaryGetValue(value, @"keyIndex");
    ActualKey = FigQuickTimeMetadataCreateNewItem(a1, cf, a4, a5, &theDict);
    if (!ActualKey)
    {
      v33 = CFGetAllocator(a1);
      v34 = CFArrayCreateMutable(v33, 0, MEMORY[0x1E695E9C0]);
      if (value)
      {
        v35 = theDict;
        CFDictionarySetValue(theDict, @"keyIndex", v32);
        CFArrayAppendValue(v34, v31);
        CFArrayAppendValue(v34, v35);
        CFDictionarySetValue(*v11, key, v34);
        CFArrayAppendValue(v11[2], v35);
        CFRelease(v35);
        v36 = v34;
LABEL_62:
        CFRelease(v36);
        x_low = 0;
        goto LABEL_63;
      }

      FigQuickTimeMetadataSerializerAddItem_cold_4(&rect);
      goto LABEL_96;
    }

    goto LABEL_99;
  }

  ActualKey = FigQuickTimeMetadataCreateNewItem(a1, cf, a4, a5, &theDict);
  if (!ActualKey)
  {
    v40 = CFArrayGetValueAtIndex(value, 0);
    if (v40)
    {
      v41 = CFDictionaryGetValue(v40, @"keyIndex");
      v42 = theDict;
      CFDictionarySetValue(theDict, @"keyIndex", v41);
      CFArrayAppendValue(value, v42);
      CFArrayAppendValue(v11[2], v42);
      v36 = v42;
      goto LABEL_62;
    }

    FigQuickTimeMetadataSerializerAddItem_cold_3(&rect);
    goto LABEL_95;
  }

LABEL_99:
  x_low = ActualKey;
LABEL_54:
  v34 = 0;
LABEL_55:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v34)
  {
    CFRelease(v34);
  }

LABEL_63:
  if (cf)
  {
    CFRelease(cf);
  }

  if (key)
  {
    CFRelease(key);
  }

  return x_low;
}

uint64_t FigQuickTimeMetadataSerializerContainsKey(const void *a1, __CFString *a2, const void *a3)
{
  key = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a2 && a3)
    {
      v7 = DerivedStorage;
      if (CFStringGetLength(a2) == 4)
      {
        if (*v7)
        {
          v10 = CFGetAllocator(a1);
          ActualKey = FigQuickTimeMetadataCreateActualKey(v10, a2, a3, 0, &key);
          v12 = key;
          if (ActualKey)
          {
            v8 = 0;
            if (!key)
            {
              return v8;
            }
          }

          else
          {
            v8 = CFDictionaryContainsKey(*v7, key);
            v12 = key;
            if (!key)
            {
              return v8;
            }
          }

          CFRelease(v12);
          return v8;
        }
      }

      else
      {
        FigQuickTimeMetadataSerializerContainsKey_cold_1();
      }
    }

    else
    {
      FigQuickTimeMetadataSerializerContainsKey_cold_2();
    }
  }

  else
  {
    FigQuickTimeMetadataSerializerContainsKey_cold_3();
  }

  return 0;
}

uint64_t FigQuickTimeMetadataCreateNewItem(const void *a1, const void *a2, const void *a3, const __CFDictionary *a4, __CFDictionary **a5)
{
  v9 = CFGetAllocator(a1);
  if (a4)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v9, 0, a4);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v11 = MutableCopy;
  if (MutableCopy)
  {
    CFDictionarySetValue(MutableCopy, @"value", a3);
    CFDictionarySetValue(v11, @"key", a2);
    result = 0;
    *a5 = v11;
  }

  else
  {
    FigQuickTimeMetadataCreateNewItem_cold_1(&v13);
    return v13;
  }

  return result;
}

uint64_t qtmetadata_checkIsValidAndReturnRasterRectangleValueArray(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 != CFArrayGetTypeID() || CFArrayGetCount(v5) != 6)
    {
      return 0;
    }

    if (a2 && (a3 & 0xFFFFFFFFFFFFFFFELL) != 0xC)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
      return 0;
    }

    v7 = 0;
    while (1)
    {
      result = FigCFArrayGetInt32AtIndex();
      if (!result)
      {
        break;
      }

      if (a2)
      {
        *(a2 + 2 * v7) = bswap32(0) >> 16;
      }

      if (++v7 == 6)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t qtmetadata_checkIsValidAndReturnExtendedRasterRectangleValue(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  if (result)
  {
    v9 = result;
    v10 = CFGetTypeID(result);
    if (v10 != CFArrayGetTypeID() || CFArrayGetCount(v9) < 6)
    {
      return 0;
    }

    if (a2 && (a3 & 0xFFFFFFFFFFFFFFFELL) != 0xC)
    {
LABEL_6:
      fig_log_get_emitter();
      FigSignalErrorAtGM();
      return 0;
    }

    for (i = 0; i != 6; ++i)
    {
      result = FigCFArrayGetInt32AtIndex();
      if (!result)
      {
        return result;
      }

      if (a2)
      {
        *(a2 + 2 * i) = bswap32(0) >> 16;
      }
    }

    Count = CFArrayGetCount(v9);
    if (Count == 7)
    {
      goto LABEL_6;
    }

    if (Count == 6)
    {
      if (a4)
      {
        *a4 = 0;
      }

      if (a5)
      {
        *a5 = 0;
      }

      return 1;
    }

    result = FigCFArrayGetInt32AtIndex();
    if (result)
    {
      if (a4)
      {
        *a4 = 0;
      }

      result = FigCFArrayGetInt32AtIndex();
      if (result)
      {
        if (a5)
        {
          *a5 = 0;
        }

        if (CFArrayGetCount(v9) < 8)
        {
          goto LABEL_6;
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t FigQuickTimeMetadataSerializerCreateBBuf(const void *a1, CMBlockBufferRef *a2)
{
  v134 = *MEMORY[0x1E69E9840];
  v109 = 0;
  blockBufferOut = 0;
  memset(v108, 0, sizeof(v108));
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!a2)
    {
      FigQuickTimeMetadataSerializerCreateBBuf_cold_9(v133);
      return LODWORD(v133[0].origin.x);
    }

    v5 = DerivedStorage;
    v6 = *DerivedStorage;
    if (v6 && CFDictionaryGetCount(v6) || v5[3] || *(v5 + 8) || *(v5 + 9))
    {
      v7 = CFGetAllocator(a1);
      x_low = CMBlockBufferCreateEmpty(v7, 8u, 0, &blockBufferOut);
      v9 = blockBufferOut;
      if (x_low)
      {
        goto LABEL_243;
      }

      v10 = FigAtomWriterInitWithBlockBuffer();
      if (v10)
      {
        x_low = v10;
        v9 = blockBufferOut;
        goto LABEL_243;
      }

      v11 = CMBaseObjectGetDerivedStorage();
      v12 = FigAtomWriterBeginAtom();
      if (v12)
      {
        goto LABEL_229;
      }

      v112 = 0;
      memset(v111, 0, sizeof(v111));
      v12 = FigAtomWriterInitWithParent();
      if (v12)
      {
        goto LABEL_229;
      }

      *buffer = 0;
      memset(v133, 0, 26);
      v13 = CMBaseObjectGetDerivedStorage();
      LODWORD(v133[0].origin.y) = 1635017837;
      v12 = FigAtomWriterBeginAtom();
      if (v12)
      {
        goto LABEL_229;
      }

      v14 = MEMORY[0x1E695E480];
      v105 = v11;
      if (*(v13 + 24))
      {
        BytesFromCFString = FigCreateBytesFromCFString();
        if (!BytesFromCFString)
        {
          FigQuickTimeMetadataSerializerCreateBBuf_cold_1(v117);
          x_low = LODWORD(v117[0]);
          if (LODWORD(v117[0]))
          {
            goto LABEL_230;
          }

          goto LABEL_24;
        }

        v16 = BytesFromCFString;
      }

      else
      {
        v16 = 0;
      }

      appended = FigAtomWriterAppendData();
      if (!appended)
      {
        if (*buffer < 1 || (appended = FigAtomWriterAppendData(), !appended))
        {
          appended = FigAtomWriterEndAtom();
        }
      }

      x_low = appended;
      if (v16)
      {
        CFAllocatorDeallocate(*v14, v16);
      }

      if (!x_low)
      {
LABEL_24:
        LODWORD(v113) = 0;
        v133[0].origin.x = 0.0;
        LODWORD(point.x) = 0;
        key = CMBaseObjectGetDerivedStorage();
        v18 = *(key + 1);
        if (!v18)
        {
          goto LABEL_45;
        }

        Count = CFArrayGetCount(v18);
        if (!Count)
        {
          goto LABEL_45;
        }

        v20 = Count;
        if (HIDWORD(Count))
        {
          FigQuickTimeMetadataSerializerCreateBBuf_cold_3(buffer);
          x_low = *buffer;
          if (*buffer)
          {
            goto LABEL_230;
          }

          goto LABEL_45;
        }

        v12 = FigAtomWriterBeginAtom();
        if (v12)
        {
          goto LABEL_229;
        }

        v12 = FigAtomWriterAppendVersionAndFlags();
        if (v12)
        {
          goto LABEL_229;
        }

        LODWORD(v117[0]) = bswap32(v20);
        v12 = FigAtomWriterAppendData();
        if (v12)
        {
          goto LABEL_229;
        }

        v21 = 0;
        v22 = *v14;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(key + 1), v21);
          Value = CFDictionaryGetValue(ValueAtIndex, @"key");
          v25 = CFDictionaryGetValue(ValueAtIndex, @"keyspace");
          v133[0].origin.x = 0.0;
          v26 = CFGetTypeID(Value);
          TypeID = CFStringGetTypeID();
          if (v26 == TypeID)
          {
            BytePtr = FigCreateBytesFromCFString();
            if (!BytePtr)
            {
              FigQuickTimeMetadataSerializerCreateBBuf_cold_2(buffer);
              x_low = *buffer;
LABEL_44:
              v14 = MEMORY[0x1E695E480];
              if (x_low)
              {
                break;
              }

LABEL_45:
              v34 = CMBaseObjectGetDerivedStorage();
              v12 = FigAtomWriterBeginAtom();
              if (!v12)
              {
                v116 = 0;
                v114 = 0u;
                v115 = 0u;
                v113 = 0u;
                v12 = FigAtomWriterInitWithParent();
                if (!v12)
                {
                  v35 = *(v34 + 16);
                  if (v35)
                  {
                    v36 = CFArrayGetCount(v35);
                    if (v36 >= 1)
                    {
                      v37 = v36;
                      v38 = 0;
                      v106 = *MEMORY[0x1E695E6D0];
                      v39 = *v14;
                      while (1)
                      {
                        v40 = CFArrayGetValueAtIndex(*(v34 + 16), v38);
                        valuePtr = 0;
                        v118 = 0;
                        memset(v117, 0, sizeof(v117));
                        v41 = CFDictionaryGetValue(v40, @"keyIndex");
                        CFNumberGetValue(v41, kCFNumberSInt32Type, &valuePtr);
                        v12 = FigAtomWriterBeginAtom();
                        if (v12)
                        {
                          goto LABEL_229;
                        }

                        v12 = FigAtomWriterInitWithParent();
                        if (v12)
                        {
                          goto LABEL_229;
                        }

                        if (!CFDictionaryContainsKey(v40, @"storageLocation"))
                        {
                          break;
                        }

                        if (FigCFDictionaryGetDictionaryValue())
                        {
                          if (FigCFDictionaryGetNumberValue())
                          {
                            UInt64 = FigCFNumberGetUInt64();
                            DataValue = FigCFDictionaryGetDataValue();
                            if (DataValue)
                            {
                              Length = CFDataGetLength(DataValue);
                              v132[0] = 0;
                              v125[0] = 0;
                              LOBYTE(v128) = -120;
                              LOWORD(cf) = 0;
                              *&v133[0].origin.x = bswap64(UInt64);
                              *buffer = bswap64(Length);
                              v12 = FigAtomWriterBeginAtom();
                              if (v12)
                              {
                                goto LABEL_229;
                              }

                              v12 = FigAtomWriterAppendData();
                              if (v12)
                              {
                                goto LABEL_229;
                              }

                              v12 = FigAtomWriterAppendData();
                              if (v12)
                              {
                                goto LABEL_229;
                              }

                              v12 = FigAtomWriterAppendData();
                              if (v12)
                              {
                                goto LABEL_229;
                              }

                              v12 = FigAtomWriterAppendData();
                              if (v12)
                              {
                                goto LABEL_229;
                              }

                              v12 = FigAtomWriterAppendData();
                              if (v12)
                              {
                                goto LABEL_229;
                              }

                              v12 = FigAtomWriterAppendData();
                              if (v12)
                              {
                                goto LABEL_229;
                              }

                              v12 = FigAtomWriterEndAtom();
                              if (v12)
                              {
                                goto LABEL_229;
                              }

LABEL_207:
                              x_low = FigAtomWriterEndAtom();
                              if (x_low)
                              {
                                goto LABEL_230;
                              }

                              goto LABEL_208;
                            }

                            FigQuickTimeMetadataSerializerCreateBBuf_cold_4(v133);
                          }

                          else
                          {
                            FigQuickTimeMetadataSerializerCreateBBuf_cold_5(v133);
                          }
                        }

                        else
                        {
                          FigQuickTimeMetadataSerializerCreateBBuf_cold_6(v133);
                        }

                        x_low = LODWORD(v133[0].origin.x);
                        if (LODWORD(v133[0].origin.x))
                        {
                          goto LABEL_230;
                        }

LABEL_208:
                        if (++v38 == v37)
                        {
                          goto LABEL_226;
                        }
                      }

                      v127 = 0;
                      v126 = 0;
                      cf = 0;
                      *v125 = 0;
                      v12 = FigAtomWriterBeginAtom();
                      if (v12)
                      {
                        goto LABEL_229;
                      }

                      v45 = CFDictionaryGetValue(v40, @"value");
                      if (v45)
                      {
                        v46 = CFRetain(v45);
                      }

                      else
                      {
                        v46 = 0;
                      }

                      v128 = 0;
                      if (FigMetadataGetNumericalDataTypeForMetadataProperties(@"com.apple.quicktime.mdta", v40, @"com.apple.quicktime.mdta", &v126, v125))
                      {
                        v47 = CFGetTypeID(v46);
                        if (v47 == CFStringGetTypeID() || v47 == CFDateGetTypeID())
                        {
                          v126 = 1;
                          goto LABEL_73;
                        }

                        if (v47 == CFNumberGetTypeID() || v47 == CFBooleanGetTypeID())
                        {
                          if (CFNumberIsFloatType(v46))
                          {
                            if (CFNumberGetByteSize(v46) == 4)
                            {
                              v66 = 23;
                            }

                            else
                            {
                              v66 = 24;
                            }

LABEL_165:
                            v126 = v66;
                          }

                          else
                          {
                            v126 = 21;
                            if (CFNumberGetByteSize(v46) == 8)
                            {
                              v133[0].origin.x = 0.0;
                              v133[0].origin.y = 0.0;
                              CFNumberGetValue(v46, kCFNumberMaxType|kCFNumberSInt8Type, v133);
                              if (!*&v133[0].origin.x && (*&v133[0].origin.y & 0x8000000000000000) != 0)
                              {
                                v66 = 22;
                                goto LABEL_165;
                              }
                            }
                          }
                        }
                      }

                      else if ((v126 - 23) >= 0xFFFFFFFE)
                      {
                        if (v46)
                        {
                          v55 = CFGetTypeID(v46);
                          if (v55 == CFNumberGetTypeID() || (v56 = CFGetTypeID(v46), v56 == CFBooleanGetTypeID()))
                          {
                            if (*v125 && !FigMetadataDataLengthCanHoldValue(v125[0], v126 == 21, v46))
                            {
                              *v125 = 0;
                            }
                          }
                        }
                      }

LABEL_73:
                      v128 = bswap32(v126 & 0xFFFFFF);
                      v48 = FigAtomWriterAppendData();
                      if (v48)
                      {
                        goto LABEL_216;
                      }

                      v49 = CFDictionaryGetValue(v40, @"locale");
                      if (v49)
                      {
                        v50 = v49;
                        PackedISO639_2TFromLocale = FigMetadataGetPackedISO639_2TFromLocale(v49);
                        v52 = CFLocaleGetValue(v50, v106);
                        if (v52)
                        {
                          BYTE2(v133[0].origin.x) = 0;
                          LOWORD(v133[0].origin.x) = 0;
                          CString = CFStringGetCString(v52, v133, 3, 0x600u);
                          v54 = bswap32(LOWORD(v133[0].origin.x)) >> 16;
                          if (!CString)
                          {
                            v54 = 0;
                          }

LABEL_88:
                          HIWORD(v127) = __rev16(PackedISO639_2TFromLocale);
                          LOWORD(v127) = __rev16(v54);
                          v48 = FigAtomWriterAppendData();
                          if (v48)
                          {
                            goto LABEL_216;
                          }

                          if (v126 > 23)
                          {
                            switch(v126)
                            {
                              case 'A':
                              case 'K':
                                goto LABEL_91;
                              case 'B':
                              case 'L':
                                goto LABEL_101;
                              case 'C':
                              case 'M':
                                goto LABEL_160;
                              case 'D':
                              case 'E':
                              case 'I':
                              case 'R':
                              case 'S':
                                goto LABEL_149;
                              case 'F':
                                if (!v46)
                                {
                                  goto LABEL_199;
                                }

                                v87 = CFGetTypeID(v46);
                                if (v87 != CFDictionaryGetTypeID())
                                {
                                  goto LABEL_199;
                                }

                                v133[0].origin.x = 0.0;
                                v133[0].origin.y = 0.0;
                                if (!CGPointMakeWithDictionaryRepresentation(v46, &v133[0].origin))
                                {
                                  goto LABEL_199;
                                }

                                goto LABEL_186;
                              case 'G':
                                if (!v46)
                                {
                                  goto LABEL_199;
                                }

                                v96 = CFGetTypeID(v46);
                                if (v96 != CFDictionaryGetTypeID())
                                {
                                  goto LABEL_199;
                                }

                                v133[0].origin.x = 0.0;
                                v133[0].origin.y = 0.0;
                                if (!CGSizeMakeWithDictionaryRepresentation(v46, v133))
                                {
                                  goto LABEL_199;
                                }

LABEL_186:
                                *buffer = vrev32_s8(vcvt_f32_f64(v133[0].origin));
                                goto LABEL_198;
                              case 'H':
                                if (!v46)
                                {
                                  goto LABEL_199;
                                }

                                v97 = CFGetTypeID(v46);
                                if (v97 != CFDictionaryGetTypeID())
                                {
                                  goto LABEL_199;
                                }

                                memset(v133, 0, 32);
                                if (!CGRectMakeWithDictionaryRepresentation(v46, v133))
                                {
                                  goto LABEL_199;
                                }

                                *buffer = vrev32q_s8(vcvt_hight_f32_f64(vcvt_f32_f64(v133[0].origin), v133[0].size));
                                goto LABEL_198;
                              case 'J':
                              case 'N':
                                goto LABEL_158;
                              case 'O':
                                v104 = a2;
                                if (!v46)
                                {
                                  goto LABEL_181;
                                }

                                v88 = CFGetTypeID(v46);
                                if (v88 != CFArrayGetTypeID() || CFArrayGetCount(v46) != 9)
                                {
                                  goto LABEL_181;
                                }

                                v89 = -9;
                                v90 = v133;
                                do
                                {
                                  v91 = CFArrayGetValueAtIndex(v46, v89 + 9);
                                  if (!v91)
                                  {
                                    goto LABEL_181;
                                  }

                                  v92 = v91;
                                  v93 = CFGetTypeID(v91);
                                  if (v93 != CFNumberGetTypeID())
                                  {
                                    goto LABEL_181;
                                  }

                                  CFNumberGetValue(v92, kCFNumberDoubleType, v90);
                                  *&v90->origin.x = bswap64(*&v90->origin.x);
                                  v90 = (v90 + 8);
                                }

                                while (!__CFADD__(v89++, 1));
                                v95 = FigAtomWriterAppendData();
                                if (!v95)
                                {
LABEL_181:
                                  v60 = 0;
                                  goto LABEL_182;
                                }

                                x_low = v95;
                                v60 = 0;
LABEL_224:
                                a2 = v104;
                                goto LABEL_202;
                              case 'P':
                              case 'Q':
                                if (!v46)
                                {
                                  goto LABEL_199;
                                }

                                v77 = CFGetTypeID(v46);
                                if (v77 != CFArrayGetTypeID())
                                {
                                  goto LABEL_199;
                                }

                                v78 = v126;
                                if (v126 != 80)
                                {
                                  goto LABEL_138;
                                }

                                if (CFArrayGetCount(v46) < 3)
                                {
                                  goto LABEL_199;
                                }

                                v78 = v126;
LABEL_138:
                                if (v78 == 81 && CFArrayGetCount(v46) < 2)
                                {
                                  goto LABEL_199;
                                }

                                v104 = a2;
                                point.x = 0.0;
                                point.y = 0.0;
                                v102 = 8 * CFArrayGetCount(v46);
                                v60 = malloc_type_calloc(1uLL, v102, 0x114FD564uLL);
                                if (!v60)
                                {
                                  FigQuickTimeMetadataSerializerCreateBBuf_cold_7(&point, v133);
                                  x_low = LODWORD(v133[0].origin.x);
                                  goto LABEL_224;
                                }

                                if (CFArrayGetCount(v46) < 1)
                                {
                                  goto LABEL_147;
                                }

                                v79 = 0;
                                break;
                              case 'T':
                                if (!qtmetadata_checkIsValidAndReturnRasterRectangleValueArray(v46, v133, 12))
                                {
                                  goto LABEL_199;
                                }

                                goto LABEL_198;
                              case 'U':
                                v121 = 0;
                                memset(v133, 0, 60);
                                v130 = 0u;
                                memset(v131, 0, sizeof(v131));
                                *buffer = 0u;
                                if (!qtmetadata_checkIsValidAndReturnExtendedRasterRectangleValue(v46, v132, 12, &v121 + 1, &v121))
                                {
                                  goto LABEL_199;
                                }

                                v48 = FigAtomWriterAppendData();
                                if (v48)
                                {
                                  goto LABEL_216;
                                }

                                v120 = v121 & 0xF | (16 * HIBYTE(v121));
                                v48 = FigAtomWriterAppendData();
                                if (v48)
                                {
                                  goto LABEL_216;
                                }

                                if (HIBYTE(v121))
                                {
                                  v48 = FigAtomWriterAppendData();
                                  if (v48)
                                  {
                                    goto LABEL_216;
                                  }
                                }

                                if (!v121)
                                {
                                  goto LABEL_199;
                                }

LABEL_198:
                                v48 = FigAtomWriterAppendData();
                                if (!v48)
                                {
                                  goto LABEL_199;
                                }

                                goto LABEL_216;
                              default:
                                if (v126 == 24)
                                {
                                  if (v46)
                                  {
                                    v98 = CFGetTypeID(v46);
                                    if (v98 == CFNumberGetTypeID() || (v99 = CFGetTypeID(v46), v99 == CFBooleanGetTypeID()))
                                    {
                                      v133[0].origin.x = 0.0;
                                      v85 = v46;
                                      v86 = kCFNumberFloat64Type;
                                      goto LABEL_159;
                                    }
                                  }

                                  goto LABEL_199;
                                }

                                if (v126 != 30)
                                {
                                  goto LABEL_149;
                                }

                                if (!v46)
                                {
                                  goto LABEL_199;
                                }

                                v67 = CFGetTypeID(v46);
                                if (v67 != CFDictionaryGetTypeID() || CFDictionaryGetCount(v46) != 4)
                                {
                                  goto LABEL_199;
                                }

                                v103 = a2;
                                v68 = 0;
                                *&v133[0].origin.x = @"widthPixels";
                                *&v133[0].origin.y = @"heightPixels";
                                v69 = buffer;
                                *&v133[0].size.width = @"widthPoints";
                                *&v133[0].size.height = @"heightPoints";
                                do
                                {
                                  v70 = CFDictionaryGetValue(v46, *(&v133[0].origin.x + v68));
                                  if (!v70 || (v71 = v70, v72 = CFGetTypeID(v70), v72 != CFNumberGetTypeID()))
                                  {
                                    a2 = v103;
                                    goto LABEL_199;
                                  }

                                  CFNumberGetValue(v71, kCFNumberSInt32Type, v69);
                                  *v69 = bswap32(*v69);
                                  v69 += 4;
                                  v68 += 8;
                                }

                                while (v68 != 32);
                                v48 = FigAtomWriterAppendData();
                                a2 = v103;
                                if (!v48)
                                {
                                  goto LABEL_199;
                                }

                                goto LABEL_216;
                            }

                            do
                            {
                              v80 = CFArrayGetValueAtIndex(v46, v79);
                              if (!v80 || (v81 = v80, v82 = CFGetTypeID(v80), v82 != CFDictionaryGetTypeID()) || !CGPointMakeWithDictionaryRepresentation(v81, &point))
                              {
LABEL_182:
                                a2 = v104;
                                goto LABEL_200;
                              }

                              v60[v79++] = vrev32_s8(vcvt_f32_f64(point));
                            }

                            while (v79 < CFArrayGetCount(v46));
LABEL_147:
                            v83 = FigAtomWriterAppendData();
                            a2 = v104;
                            if (!v83)
                            {
                              goto LABEL_200;
                            }

LABEL_201:
                            x_low = v83;
LABEL_202:
                            if (cf)
                            {
                              CFRelease(cf);
                            }

                            free(v60);
                            if (v46)
                            {
                              CFRelease(v46);
                            }

                            if (x_low)
                            {
                              break;
                            }

                            goto LABEL_207;
                          }

                          if ((v126 - 1) >= 3)
                          {
                            if ((v126 - 21) >= 2)
                            {
                              if (v126 == 23)
                              {
                                if (v46)
                                {
                                  v73 = CFGetTypeID(v46);
                                  if (v73 == CFNumberGetTypeID() || (v74 = CFGetTypeID(v46), v74 == CFBooleanGetTypeID()))
                                  {
                                    LODWORD(v133[0].origin.x) = 0;
                                    v75 = v46;
                                    v76 = kCFNumberFloat32Type;
                                    goto LABEL_161;
                                  }
                                }
                              }

                              else
                              {
LABEL_149:
                                if (v46)
                                {
                                  v84 = CFGetTypeID(v46);
                                  if (v84 == CFDataGetTypeID())
                                  {
                                    CFDataGetLength(v46);
                                    CFDataGetBytePtr(v46);
                                    goto LABEL_162;
                                  }
                                }
                              }
                            }

                            else
                            {
                              v57 = CFGetTypeID(v46);
                              if (v57 == CFNumberGetTypeID() || (v58 = CFGetTypeID(v46), v58 == CFBooleanGetTypeID()))
                              {
                                ByteSize = *v125;
                                if (!*v125)
                                {
                                  ByteSize = CFNumberGetByteSize(v46);
                                }

                                v60 = 0;
                                x_low = 4294954709;
                                if (ByteSize <= 3)
                                {
                                  if (ByteSize == 1)
                                  {
LABEL_91:
                                    LOBYTE(v133[0].origin.x) = 0;
                                    CFNumberGetValue(v46, kCFNumberSInt8Type, v133);
                                  }

                                  else
                                  {
                                    if (ByteSize != 2)
                                    {
                                      goto LABEL_202;
                                    }

LABEL_101:
                                    LOWORD(v133[0].origin.x) = 0;
                                    CFNumberGetValue(v46, kCFNumberSInt16Type, v133);
                                    LOWORD(v133[0].origin.x) = bswap32(LOWORD(v133[0].origin.x)) >> 16;
                                  }

                                  goto LABEL_162;
                                }

                                if (ByteSize != 4)
                                {
                                  if (ByteSize != 8)
                                  {
                                    goto LABEL_202;
                                  }

LABEL_158:
                                  v133[0].origin.x = 0.0;
                                  v85 = v46;
                                  v86 = kCFNumberSInt64Type;
LABEL_159:
                                  CFNumberGetValue(v85, v86, v133);
                                  *&v133[0].origin.x = bswap64(*&v133[0].origin.x);
LABEL_162:
                                  v83 = FigAtomWriterAppendData();
                                  v60 = 0;
                                  if (v83)
                                  {
                                    goto LABEL_201;
                                  }

LABEL_200:
                                  v83 = FigAtomWriterEndAtom();
                                  goto LABEL_201;
                                }

LABEL_160:
                                LODWORD(v133[0].origin.x) = 0;
                                v75 = v46;
                                v76 = kCFNumberSInt32Type;
LABEL_161:
                                CFNumberGetValue(v75, v76, v133);
                                LODWORD(v133[0].origin.x) = bswap32(LODWORD(v133[0].origin.x));
                                goto LABEL_162;
                              }
                            }

LABEL_199:
                            v60 = 0;
                            goto LABEL_200;
                          }

                          if (!v46)
                          {
                            goto LABEL_199;
                          }

                          v61 = CFGetTypeID(v46);
                          if (v61 == CFDateGetTypeID())
                          {
                            v48 = FigMetadataCopyISO8601GMTStringFromDate(v46, &cf);
                            if (!v48)
                            {
                              v62 = cf;
                              if (!cf)
                              {
                                CFRelease(v46);
                                v60 = 0;
                                v46 = 0;
                                goto LABEL_200;
                              }

                              CFRetain(cf);
                              CFRelease(v46);
                              v46 = v62;
                              goto LABEL_107;
                            }

LABEL_216:
                            x_low = v48;
                          }

                          else
                          {
LABEL_107:
                            v63 = CFGetTypeID(v46);
                            if (v63 != CFStringGetTypeID())
                            {
                              goto LABEL_199;
                            }

                            v123 = 0;
                            if (!CFStringGetLength(v46))
                            {
                              goto LABEL_199;
                            }

                            v64 = FigCreateBytesFromCFString();
                            if (!v64)
                            {
                              FigQuickTimeMetadataSerializerCreateBBuf_cold_8(&v123, v133);
                              v60 = 0;
                              x_low = LODWORD(v133[0].origin.x);
                              goto LABEL_202;
                            }

                            v65 = v64;
                            x_low = FigAtomWriterAppendData();
                            CFAllocatorDeallocate(v39, v65);
                            if (!x_low)
                            {
                              goto LABEL_199;
                            }
                          }

                          v60 = 0;
                          goto LABEL_202;
                        }
                      }

                      else
                      {
                        PackedISO639_2TFromLocale = 0;
                      }

                      v54 = 0;
                      goto LABEL_88;
                    }
                  }

LABEL_226:
                  v12 = FigAtomWriterEndAtom();
                  if (!v12)
                  {
                    v12 = FigMetadataWriteFreeAtom(v108, v111, *(v105 + 32), *(v105 + 36));
                    if (!v12)
                    {
                      v12 = FigAtomWriterEndAtom();
                    }
                  }
                }
              }

LABEL_229:
              x_low = v12;
              break;
            }
          }

          else
          {
            *&v133[0].origin.x = CFDataGetLength(Value);
            BytePtr = CFDataGetBytePtr(Value);
          }

          LODWORD(v113) = bswap32(LODWORD(v133[0].origin.x) + 8);
          v29 = FigAtomWriterAppendData();
          if (v29)
          {
            goto LABEL_235;
          }

          *buffer = 0;
          v30 = CFStringGetLength(v25);
          v135.location = 0;
          v135.length = v30;
          Bytes = CFStringGetBytes(v25, v135, 0, 0, 0, buffer, 4, 0);
          v32 = *buffer;
          v33 = bswap32(*buffer);
          if (v30 == Bytes)
          {
            v32 = v33;
          }

          LODWORD(point.x) = bswap32(v32);
          v29 = FigAtomWriterAppendData();
          if (v29 || (v29 = FigAtomWriterAppendData(), v29))
          {
LABEL_235:
            x_low = v29;
            if (v26 == TypeID && BytePtr != 0)
            {
              CFAllocatorDeallocate(v22, BytePtr);
            }

            break;
          }

          if (v26 == TypeID)
          {
            CFAllocatorDeallocate(v22, BytePtr);
          }

          if (v20 == ++v21)
          {
            x_low = FigAtomWriterEndAtom();
            goto LABEL_44;
          }
        }
      }

LABEL_230:
      v9 = blockBufferOut;
    }

    else
    {
      v9 = 0;
      x_low = 0;
    }
  }

  else
  {
    FigQuickTimeMetadataSerializerCreateBBuf_cold_10(v133);
    v9 = 0;
    x_low = LODWORD(v133[0].origin.x);
  }

  if (a2 && !x_low)
  {
    *a2 = v9;
    return x_low;
  }

LABEL_243:
  if (v9)
  {
    CFRelease(v9);
  }

  return x_low;
}