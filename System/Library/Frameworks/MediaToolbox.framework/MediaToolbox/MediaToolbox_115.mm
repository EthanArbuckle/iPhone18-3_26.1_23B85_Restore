uint64_t playeroverlap_SetRateCommon(const void *a1, void *a2, float a3)
{
  if (*(CMBaseObjectGetDerivedStorage() + 56))
  {
    playeroverlap_removeOutroItem(a1, 1);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  IsScheduled = FigPlaybackTimerIsScheduled(*(DerivedStorage + 64));
  if (a3 == 0.0 && IsScheduled)
  {
    playeroverlap_cancelScheduledOverlap(a1);
  }

  if (dword_1EAF17080)
  {
    OUTLINED_FUNCTION_48_8();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_40();
    if (v3)
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_37_12();
      OUTLINED_FUNCTION_12_17();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_37_12();
  if (*a2)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!a2[1])
    {
      if (a2[2])
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 104))
        {
          goto LABEL_12;
        }
      }

      else if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        goto LABEL_12;
      }

      return 4294954514;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 88))
    {
LABEL_12:
      v10 = OUTLINED_FUNCTION_79_4();
      result = v11(v10);
      goto LABEL_16;
    }
  }

  result = 4294954514;
LABEL_16:
  if (!result)
  {
    if (a3 != 0.0)
    {
      if (a3 > 0.0)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      *(CMBaseObjectGetDerivedStorage() + 104) = v13;
    }

    v14 = OUTLINED_FUNCTION_312();
    result = playeroverlap_itemAtIndex(v14, v15);
    if (result)
    {
      v16 = CMBaseObjectGetDerivedStorage();
      v17 = v16;
      if (a3 > 0.0 && *(v16 + 88) == 2 || a3 < 0.0 && *(v16 + 88) == 1)
      {
        result = 0;
        *(v17 + 88) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t itemoverlap_SetCurrentTimeCommon(const void *a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = *(CMBaseObjectGetDerivedStorage() + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigPlaybackTimerIsScheduled(*(DerivedStorage + 64)) && (playeroverlap_itemAtIndex(v6, 1) == a1 || playeroverlap_itemAtIndex(v6, 0) == a1))
  {
    v12 = playeroverlap_cancelScheduledOverlap(v6);
    if (v12)
    {
      return v12;
    }

    OUTLINED_FUNCTION_1_16();
    v9 = itemoverlap_SetCurrentTimeSpecific(v13, &v26, a3);
    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_22:
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
    return v9;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 56))
  {
    if (*(CMBaseObjectGetDerivedStorage() + 56) == a1)
    {
      if (dword_1EAF17080)
      {
        OUTLINED_FUNCTION_147();
        v14 = OUTLINED_FUNCTION_126();
        OUTLINED_FUNCTION_835(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, SBYTE2(v25), BYTE3(v25), SHIDWORD(v25));
        OUTLINED_FUNCTION_70();
        if (v3)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_139();
          OUTLINED_FUNCTION_8_27();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_454();
      }

      if (!playeroverlap_removeOutroItem(v6, 1))
      {
        playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(v6);
      }
    }

    else if (playeroverlap_itemAtIndex(v6, 0) == a1)
    {
      playeroverlap_removeOutroItem(v6, 1);
    }
  }

  OUTLINED_FUNCTION_1_16();
  v9 = itemoverlap_SetCurrentTimeSpecific(v8, &v26, a3);
  if (v9)
  {
    goto LABEL_22;
  }

LABEL_9:
  OUTLINED_FUNCTION_1_16();
  v10 = CMBaseObjectGetDerivedStorage();
  *(v10 + 88) = 0;
  *(v10 + 132) = v26;
  *(v10 + 148) = v27;
  return v9;
}

uint64_t playeroverlap_AddToPlayQueue_fun(uint64_t a1)
{
  v4 = a1;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v8)
  {
    OUTLINED_FUNCTION_36_12();
    result = FigSignalErrorAtGM();
    goto LABEL_60;
  }

  v85 = v4;
  if (dword_1EAF17080)
  {
    OUTLINED_FUNCTION_147();
    v10 = OUTLINED_FUNCTION_27_15();
    OUTLINED_FUNCTION_830(v10, v11, v12, v13, v14, v15, v16, v17, v83, v84, v4, v86, SBYTE2(v86), BYTE3(v86), SHIDWORD(v86));
    OUTLINED_FUNCTION_37();
    if (!v3)
    {
      goto LABEL_13;
    }

    if (v5)
    {
      CMBaseObjectGetDerivedStorage();
      if (v6)
      {
        goto LABEL_7;
      }
    }

    else if (v6)
    {
LABEL_7:
      CMBaseObjectGetDerivedStorage();
      if (!v7)
      {
LABEL_12:
        OUTLINED_FUNCTION_7_38();
        OUTLINED_FUNCTION_443();
        OUTLINED_FUNCTION_81_3();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_27_10();
LABEL_13:
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_14;
      }

LABEL_8:
      CMBaseObjectGetDerivedStorage();
      goto LABEL_12;
    }

    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

LABEL_14:
  if (!v6 || (v18 = atomic_load(CMBaseObjectGetDerivedStorage()), (v18 & 1) != 0))
  {
    OUTLINED_FUNCTION_36_12();
    result = FigSignalErrorAtGM();
    goto LABEL_38;
  }

  CMBaseObjectGetDerivedStorage();
  if (!v7 || (v19 = OUTLINED_FUNCTION_517(), playeroverlap_isLastItem(v19, v20)))
  {
    result = playeroverlap_AppendToPlayQueueInPlayerQueue(v5, v6, 1);
    if (!result)
    {
      v68 = playeroverlap_playQueueCount();
      v4 = v85;
      if (v68 > 1)
      {
        v69 = playeroverlap_itemAtIndex(v5, v68 - 2);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (v69)
        {
          v71 = DerivedStorage;
          if (*(DerivedStorage + 88))
          {
            if (playeroverlap_isActionAtEnd())
            {
              v72 = OUTLINED_FUNCTION_517();
              playeroverlap_removeFinishedItem(v72, v73);
              *(v71 + 88) = 0;
            }
          }
        }
      }

      else
      {
        CMBaseObjectGetDerivedStorage();
      }

      goto LABEL_56;
    }

    goto LABEL_38;
  }

  v21 = OUTLINED_FUNCTION_265();
  if (playeroverlap_itemAtIndex(v21, v22) == v7)
  {
    v23 = OUTLINED_FUNCTION_265();
    v25 = playeroverlap_itemAtIndex(v23, v24);
    if (itemoverlap_hasAdvanceTime(v25))
    {
      v26 = CMBaseObjectGetDerivedStorage();
      if (FigPlaybackTimerIsScheduled(*(v26 + 64)))
      {
        result = playeroverlap_cancelScheduledOverlap(v5);
        if (result)
        {
          goto LABEL_38;
        }
      }
    }
  }

  if (dword_1EAF17080)
  {
    v27 = OUTLINED_FUNCTION_17_22();
    OUTLINED_FUNCTION_130(v27, v28, v29, v30, v31, v32, v33, v34, v83, v84, v85, v86, SBYTE2(v86), BYTE3(v86), SHIDWORD(v86));
    OUTLINED_FUNCTION_28();
    if (v2)
    {
      if (v5)
      {
        CMBaseObjectGetDerivedStorage();
      }

      CMBaseObjectGetDerivedStorage();
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_7_38();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_81_3();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_4_7();
      OUTLINED_FUNCTION_408();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417();
  }

  OUTLINED_FUNCTION_517();
  if (playeroverlap_indexForItem() == -1)
  {
    result = 4294954516;
    goto LABEL_38;
  }

  v35 = CMBaseObjectGetDerivedStorage();
  v36 = CMBaseObjectGetDerivedStorage();
  v37 = CMBaseObjectGetDerivedStorage();
  v38 = *(v37 + 72);
  if (v38 == -1)
  {
    v58 = *(v35 + 40);
    OUTLINED_FUNCTION_502();
    FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
    CFArrayInsertValueAtIndex(v58, FirstIndexOfValue + 1, v6);
    *(v36 + 72) = -1;
    v4 = v85;
    if (dword_1EAF17080)
    {
      v60 = OUTLINED_FUNCTION_17_22();
      OUTLINED_FUNCTION_304(v60, v61, v62, v63, v64, v65, v66, v67, v83, v84, v85, v86, SBYTE2(v86), BYTE3(v86), SHIDWORD(v86));
      OUTLINED_FUNCTION_46();
      if (v1)
      {
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_139();
        OUTLINED_FUNCTION_8_27();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_448();
        OUTLINED_FUNCTION_507();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0();
    }

    goto LABEL_56;
  }

  v39 = v37;
  v40 = *(v35 + 8 + 8 * v38);
  v41 = *(v36 + 16);
  v42 = *(v35 + 8 + 8 * ((v38 + 1) % 2));
  v43 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (v43)
  {
    v43(v40, v41, v42);
  }

  v44 = *(v35 + 8 + 8 * *(v39 + 72));
  v45 = *(v36 + 16);
  v46 = *(v39 + 16);
  v47 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v47)
  {
    result = 4294954514;
    goto LABEL_38;
  }

  result = v47(v44, v45, v46);
  if (result)
  {
LABEL_38:
    v4 = v85;
    goto LABEL_60;
  }

  v48 = *(v35 + 8 * *(v39 + 72) + 24);
  v49 = FigCFArrayGetFirstIndexOfValue();
  CFArrayInsertValueAtIndex(v48, v49 + 1, v6);
  *(v36 + 72) = *(v39 + 72);
  if (dword_1EAF17080)
  {
    OUTLINED_FUNCTION_147();
    v50 = OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_835(v50, v51, v52, v53, v54, v55, v56, v57, v83, v84, v85, v86, SBYTE2(v86), BYTE3(v86), SHIDWORD(v86));
    OUTLINED_FUNCTION_70();
    if (v45)
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_454();
  }

  v4 = v85;
  if (!itemoverlap_hasAdvanceTime(v6) && !itemoverlap_hasAdvanceTime(v7))
  {
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_517();
  v74 = playeroverlap_indexForItem();
  hasAdvanceTime = itemoverlap_hasAdvanceTime(v7);
  v76 = 1;
  if (!hasAdvanceTime)
  {
    v76 = 2;
  }

  result = playeroverlap_refreshPlayQueueFromIndex(v5, v76 + v74);
  if (!result)
  {
LABEL_56:
    v77 = OUTLINED_FUNCTION_265();
    if (playeroverlap_itemAtIndex(v77, v78) == v6 || playeroverlap_itemAtIndex(v5, 1) == v6)
    {
      v79 = OUTLINED_FUNCTION_265();
      v81 = playeroverlap_itemAtIndex(v79, v80);
      result = itemoverlap_hasAdvanceTime(v81);
      if (result)
      {
        v82 = CMBaseObjectGetDerivedStorage();
        if (!FigPlaybackTimerIsScheduled(*(v82 + 64)) || (result = playeroverlap_cancelScheduledOverlap(v5), !result))
        {
          result = playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(v5);
        }
      }
    }

    else
    {
      result = 0;
    }
  }

LABEL_60:
  *(v4 + 24) = result;
  return result;
}

uint64_t playeroverlap_SetConnectionActive(uint64_t a1, uint64_t a2)
{
  if (dword_1EAF17080)
  {
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_48_8();
    v6 = OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_311(v6, v7, v8, v9, v10, v11, v12, v13, v20, v21, v22, v23, SBYTE2(v23), BYTE3(v23), SHIDWORD(v23));
    OUTLINED_FUNCTION_40();
    if (v3)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_7_38();
      OUTLINED_FUNCTION_8_27();
      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_612();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  CMBaseObjectGetDerivedStorage();
  v14 = *(OUTLINED_FUNCTION_71_3() + 24);
  if (!v14)
  {
    return 4294954514;
  }

  v15 = *(v14 + 24);
  if (!v15)
  {
    return 4294954514;
  }

  result = v15(v2, a2);
  if (result)
  {
    return result;
  }

  v17 = *(a1 + 16);
  v18 = *(CMBaseObjectGetVTable() + 24);
  if (v18 && (v19 = *(v18 + 24)) != 0)
  {
    return v19(v17, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t playeroverlap_DuckVolume(uint64_t a1, uint64_t a2, float a3, float a4)
{
  if (dword_1EAF17080)
  {
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_48_8();
    v10 = OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_311(v10, v11, v12, v13, v14, v15, v16, v17, v24, v25, v26, v27, SBYTE2(v27), BYTE3(v27), SHIDWORD(v27));
    OUTLINED_FUNCTION_40();
    if (v5)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_7_38();
      OUTLINED_FUNCTION_8_27();
      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_612();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  CMBaseObjectGetDerivedStorage();
  v18 = *(OUTLINED_FUNCTION_71_3() + 32);
  if (!v18)
  {
    return 4294954514;
  }

  v19 = *(v18 + 8);
  if (!v19)
  {
    return 4294954514;
  }

  result = v19(v4, a2, a3, a4);
  if (result)
  {
    return result;
  }

  v21 = *(a1 + 16);
  v22 = *(CMBaseObjectGetVTable() + 32);
  if (v22 && (v23 = *(v22 + 8)) != 0)
  {
    return v23(v21, a2, a3, a4);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t playeroverlap_SilentMute(uint64_t a1, uint64_t a2)
{
  if (dword_1EAF17080)
  {
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_48_8();
    v6 = OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_311(v6, v7, v8, v9, v10, v11, v12, v13, v20, v21, v22, v23, SBYTE2(v23), BYTE3(v23), SHIDWORD(v23));
    OUTLINED_FUNCTION_40();
    if (v3)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_7_38();
      OUTLINED_FUNCTION_8_27();
      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_612();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  CMBaseObjectGetDerivedStorage();
  v14 = *(OUTLINED_FUNCTION_71_3() + 32);
  if (!v14)
  {
    return 4294954514;
  }

  v15 = *(v14 + 16);
  if (!v15)
  {
    return 4294954514;
  }

  result = v15(v2, a2);
  if (result)
  {
    return result;
  }

  v17 = *(a1 + 16);
  v18 = *(CMBaseObjectGetVTable() + 32);
  if (v18 && (v19 = *(v18 + 16)) != 0)
  {
    return v19(v17, a2);
  }

  else
  {
    return 4294954514;
  }
}

BOOL playeroverlap_scheduleAdvanceTimerAndAnchorTime_cold_2(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t playeroverlap_advanceTimeReached_cold_1(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_58();
  v3 = *(v2 + 8);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v4)
  {
    v4(v3, 0.0);
  }

  return playeroverlap_resetOverlapRangeProperty(a1);
}

void playeroverlap_overlappedPlaybackEndTimeReached_cold_1(const void *a1, const void *a2)
{
  CFRetain(a1);
  if (!playeroverlap_removeOutroItem(a2, 2))
  {
    playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(a2);
  }

  playeroverlap_dispatchAsyncPostNotification(0);
  CFRelease(a1);
}

uint64_t playeroverlap_overlappedPlaybackEndTimeReached_cold_2()
{
  v0 = OUTLINED_FUNCTION_6_49(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("playeroverlap_overlappedPlaybackEndTimeReached");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t itemoverlap_invalidateDispatchSync_fun_cold_1(void *a1)
{
  result = playeroverlap_removeOutroItem(a1, 1);
  if (!result)
  {

    return playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(a1);
  }

  return result;
}

uint64_t itemoverlap_subItemNotificationWeakCallback_cold_1(void *a1, uint64_t a2, const void *a3)
{
  if (playeroverlap_isActionAtEnd() || (result = playeroverlap_isActionAtEnd(), result) && (result = playeroverlap_isLastItem(a1, a3), !result))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (FigPlaybackTimerIsScheduled(*(DerivedStorage + 64)))
    {
      v7 = OUTLINED_FUNCTION_312();
      if (playeroverlap_itemAtIndex(v7, v8) == a3)
      {
        playeroverlap_advanceTimeReached(a1);
      }
    }

    return playeroverlap_removeFinishedItem(a1, a3);
  }

  else if (!*(a2 + 88))
  {
    result = CMBaseObjectGetDerivedStorage();
    *(a2 + 88) = *(result + 104);
  }

  return result;
}

uint64_t itemoverlap_subItemNotificationWeakCallback_cold_2(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigPlaybackTimerIsScheduled(*(DerivedStorage + 64)))
  {
    playeroverlap_cancelScheduledOverlap(a1);
  }

  return playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(a1);
}

uint64_t playeroverlap_setItemsToPrebufferInPlayerQueue_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playeroverlap_setItemsToPrebufferInPlayerQueue_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playeroverlap_setItemsToPrebufferInPlayerQueue_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playeroverlap_setItemsToPrebufferInPlayerQueue_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playeroverlap_setItemsToPrebufferInPlayerQueue_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playeroverlap_setItemsToPrebufferInPlayerQueue_cold_6(void *a1, void *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = *a1;
  return result;
}

uint64_t playeroverlap_setAdvanceTimeForOverlappedPlayback_fun_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playeroverlap_setAdvanceTimeForOverlappedPlayback_fun_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playeroverlap_setOverlappedPlaybackEndTime_fun_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playeroverlap_setOverlappedPlaybackEndTime_fun_cold_2()
{
  v0 = OUTLINED_FUNCTION_6_49(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("playeroverlap_setOverlappedPlaybackEndTimeInPlayerQueue");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t playeroverlap_setOverlappedPlaybackEndTime_fun_cold_3()
{
  v0 = OUTLINED_FUNCTION_6_49(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("playeroverlap_setOverlappedPlaybackEndTimeInPlayerQueue");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t playeroverlap_setOverlappedPlaybackEndTime_fun_cold_4()
{
  v0 = OUTLINED_FUNCTION_6_49(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("playeroverlap_setOverlappedPlaybackEndTimeInPlayerQueue");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t playeroverlap_setOverlappedPlaybackEndTime_fun_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playeroverlap_maybeSetOverlapRangeProperty_cold_1()
{
  v0 = OUTLINED_FUNCTION_6_49(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("playeroverlap_maybeSetOverlapRangeProperty");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t playeroverlap_setEndTime_fun_cold_1()
{
  v0 = OUTLINED_FUNCTION_6_49(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("playeroverlap_setEndTimeInPlayerQueue");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t playeroverlap_setEndTime_fun_cold_2()
{
  v0 = OUTLINED_FUNCTION_6_49(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("playeroverlap_setEndTimeInPlayerQueue");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t playeroverlap_setEndTime_fun_cold_3()
{
  v0 = OUTLINED_FUNCTION_6_49(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("playeroverlap_setEndTimeInPlayerQueue");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t playeroverlap_setActionAtEnd_fun_cold_1(uint64_t a1, void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 88))
  {
    return playeroverlap_removeFinishedItem(a2, a1);
  }

  return result;
}

uint64_t playeroverlap_CreatePlaybackItemFromAsset_cold_1()
{
  v0 = OUTLINED_FUNCTION_6_49(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("playeroverlap_CreatePlaybackItemFromAsset");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t playeroverlap_CreatePlaybackItemFromAsset_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playeroverlap_CreatePlaybackItemFromAsset_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playeroverlap_CopyPlayQueueItem_fun_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRateMinderCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRateMinderCreate_cold_2(uint64_t a1, _DWORD *a2)
{
  *(a1 + 16) = 0;
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigCaptionRendererTestingSimple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_1_77(a1, a2, a3, a4, a5, a6, a7, a8, v11, cf);
  if (v8 || (v8 = FigCaptionRendererSessionSetMasterClock(cfa), v8) || (v8 = FigCaptionRendererSessionSetRate(cfa), v8))
  {
    v9 = v8;
  }

  else if (FigCaptionRendererSessionGetRate(cfa) == 2.5)
  {
    v9 = 0;
  }

  else
  {
    v9 = 4294954516;
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  return v9;
}

uint64_t FigCaptionRendererTestingSetupLegible(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  result = fcrTestingSetup(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  if (!result)
  {
    OUTLINED_FUNCTION_0_79();

    return FigCaptionRendererSessionSetLegibleOutputDevice(v13);
  }

  return result;
}

uint64_t fcrTestingSetup(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  result = OUTLINED_FUNCTION_1_77(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20);
  if (!result)
  {
    if (FigCaptionRendererSessionGetIsMACacheReady(v21))
    {
      goto LABEL_10;
    }

    v16 = 0;
    do
    {
      v17 = v16;
      usleep(0x186A0u);
      ++v16;
      if (FigCaptionRendererSessionGetIsMACacheReady(v21))
      {
        v18 = 1;
      }

      else
      {
        v18 = v17 >= 0x1D;
      }
    }

    while (!v18);
    if (v17 < 0x1D)
    {
LABEL_10:
      result = FigCaptionRendererSessionClear(v21);
      if (!result)
      {
        result = FigCaptionRendererSessionSetLayoutContext_Viewport(v21);
        if (!result)
        {
          result = FigCaptionRendererSessionSetLayoutContext_VideoSize(v21, a11, a12);
          if (!result)
          {
            result = FigCaptionRendererSessionSetLayoutContext_Gravity(v21, 0);
            if (!result)
            {
              result = FigCaptionRendererSessionSetLayoutContext_Overscan(v21, 0);
              if (!result)
              {
                *a1 = v21;
              }
            }
          }
        }
      }
    }

    else
    {
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t FigCaptionRendererTestingSetupCGContext(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  result = fcrTestingSetup(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  if (!result)
  {
    OUTLINED_FUNCTION_0_79();

    return FigCaptionRendererSessionSetCGContextDevice(v13);
  }

  return result;
}

uint64_t FigCaptionRendererTestingSetupCALayer(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  result = fcrTestingSetup(a2, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  if (!result)
  {
    result = FigCaptionRendererSessionSetCALayerDevice(*a2, a1);
    if (!result)
    {
      result = FigCaptionRendererSessionSetMasterClock(*a2);
      if (!result)
      {
        v15 = *a2;

        return FigCaptionRendererSessionStart(v15);
      }
    }
  }

  return result;
}

uint64_t FigCaptionRendererTestingGetSampleWithLayout(void *a1, uint64_t a2, void *a3)
{
  v8 = 0;
  cf = 0;
  updated = FigCaptionRendererLayoutContextCreate(&cf);
  if (updated || (updated = FigCaptionRendererSessionSetCaptionSample(a1), updated) || (updated = FigCaptionRendererSessionUpdateLegibleOutputContext(a1, cf), updated))
  {
    SubtitleSample = updated;
  }

  else
  {
    SubtitleSample = FigCaptionRendererLayoutContextGetSubtitleSample(cf, &v8);
    if (!SubtitleSample)
    {
      *a3 = v8;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return SubtitleSample;
}

uint64_t FigCaptionRendererTestingUpdateCGContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = FigCaptionRendererSessionSetCaptionSample(a1);
  if (!result)
  {

    return FigCaptionRendererSessionUpdateCGContext(a1, a3);
  }

  return result;
}

uint64_t FigCaptionRendererTestingSetPlayer(uint64_t a1, uint64_t *a2)
{
  result = FigPlayerFileCreate(*MEMORY[0x1E695E480], a2);
  if (!result)
  {
    v5 = *a2;

    return FigCaptionRendererSessionSetPlayer(a1, v5);
  }

  return result;
}

uint64_t FigCoreTextSubtitleRendererTestingSetup(void *a1)
{
  v3 = 0;
  result = FigCoreTextSubtitleRendererCreate(*MEMORY[0x1E695E480], &v3);
  if (!result)
  {
    *a1 = v3;
  }

  return result;
}

void digestSubtitleSampleDo_0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  theDict = 0;
  v33 = 0;
  v3 = *(v2 + 48);
  v4 = *(v2 + 56) * 0.15;
  cf = 0;
  if (!FigSubtitleSampleCreateFromPropertyListAndInsertInfoForRenderer(v1, &theDict, &v33 + 1, 0.0, 0.0, v3, v4))
  {
    v5 = theDict;
    if (theDict)
    {
      value = 0;
      ValueIfPresent = CFDictionaryGetValueIfPresent(theDict, @"SubtitleOverHDRVideo", &value);
      v7 = *(v2 + 8);
      if (ValueIfPresent)
      {
        v8 = value == *MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __digestSubtitleSampleDo_block_invoke;
      block[3] = &unk_1E7483B70;
      block[4] = v7;
      v31 = v9;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v5 = theDict;
    }

    FigSubtitleRendererDetachRegionInfo(v5, &cf, &v33);
    if (cf)
    {
      FigSubtitleRendererPatchRegionInfo(*(v2 + 232), cf);
      v10 = CFDictionaryGetValue(*(v2 + 232), *MEMORY[0x1E6960A90]);
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v10);
      if (MutableCopy)
      {
        v12 = MutableCopy;
        Count = CFArrayGetCount(*(v2 + 240));
        if (Count >= 1)
        {
          v14 = Count;
          v15 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 240), v15);
            v17 = [ValueAtIndex getContentID];
            v18 = CFDictionaryGetValue(v12, v17);
            if (v18)
            {
              [ValueAtIndex setContent:v18];
              CFDictionaryRemoveValue(v12, v17);
              ++v15;
            }

            else
            {
              CFArrayRemoveValueAtIndex(*(v2 + 240), v15);
              CFArrayAppendValue(*(v2 + 248), ValueAtIndex);
              [MEMORY[0x1E6979518] begin];
              if (!pthread_main_np())
              {
                [MEMORY[0x1E6979518] activateBackground:1];
              }

              [MEMORY[0x1E6979518] setDisableActions:1];
              [ValueAtIndex setHidden:1];
              [MEMORY[0x1E6979518] commit];
              --v14;
            }
          }

          while (v15 < v14);
        }

        v19 = CFDictionaryGetCount(v12);
        if (v19)
        {
          v20 = v19;
          v21 = malloc_type_calloc(v19, 8uLL, 0xC0040B8AA526DuLL);
          v22 = malloc_type_calloc(v20, 8uLL, 0xC0040B8AA526DuLL);
          CFDictionaryGetKeysAndValues(v10, v21, v22);
          if (v20 < 1)
          {
LABEL_25:
            free(v21);
            free(v22);
          }

          else
          {
            v23 = v22;
            while (1)
            {
              v24 = objc_alloc_init(FigSubtitleWebVTTRegionCALayer);
              if (!v24)
              {
                break;
              }

              v25 = v24;
              [*(v2 + 8) addSublayer:v24];
              CFArrayAppendValue(*(v2 + 240), v25);
              [(FigSubtitleWebVTTRegionCALayer *)v25 setRenderer:*(v2 + 208)];
              [(FigSubtitleWebVTTRegionCALayer *)v25 setViewport:FCRGetVideoPresentationBounds(*(v2 + 48), *(v2 + 56), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40))];
              v26 = *v23++;
              [(FigSubtitleWebVTTRegionCALayer *)v25 setContent:v26];
              if (!--v20)
              {
                goto LABEL_25;
              }
            }
          }
        }

        CFRelease(v12);
      }
    }

    else
    {
      v27 = CFArrayGetCount(*(v2 + 240));
      if (v27 >= 1)
      {
        v28 = v27 + 1;
        do
        {
          v29 = CFArrayGetValueAtIndex(*(v2 + 240), 0);
          CFArrayRemoveValueAtIndex(*(v2 + 240), 0);
          CFArrayAppendValue(*(v2 + 248), v29);
          [MEMORY[0x1E6979518] begin];
          if (!pthread_main_np())
          {
            [MEMORY[0x1E6979518] activateBackground:1];
          }

          [MEMORY[0x1E6979518] setDisableActions:1];
          [v29 setHidden:1];
          [MEMORY[0x1E6979518] commit];
          --v28;
        }

        while (v28 > 1);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v33)
    {
      value = v2;
      v36 = 1;
      BYTE1(v36) = HIBYTE(v33);
      v37 = theDict;
      v38 = 0;
    }

    else
    {
      v37 = 0;
      v38 = 0;
      value = v2;
      v36 = 1;
      BYTE1(v36) = HIBYTE(v33);
    }

    updateSubtitleDo(&value);
    if (theDict)
    {
      CFRelease(theDict);
    }
  }

  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t setupFCR_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t setupFCR_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t setupCoreTextRenderer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t setupCoreTextRenderer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t setupCoreTextRenderer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t setupCoreTextRenderer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t localHelper_SetEnableEchoMitigation_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void __getTUCallCenterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getTUCallCenterClass(void)_block_invoke") description:{@"FigShareAndAirPlayHelperLocal.m", 50, @"Unable to find class %s", "TUCallCenter"}];
  __break(1u);
}

void __getTUCallCenterClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *TelephonyUtilitiesLibrary(void)") description:{@"FigShareAndAirPlayHelperLocal.m", 48, @"%s", *a1}];
  __break(1u);
}

uint64_t FigUserDataCreateActualKey(const void *a1, const void *a2, __CFString *a3, unint64_t a4, unint64_t a5)
{
  valuePtr = 0;
  theArray = 0;
  v9 = CFGetAllocator(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!(a4 | a5))
  {
    goto LABEL_32;
  }

  v11 = DerivedStorage;
  if (CFEqual(a2, @"comn"))
  {
    v12 = CFGetTypeID(a3);
    if (v12 == CFStringGetTypeID())
    {
      if (*(v11 + 16))
      {
        v13 = FigUserDataCopyOSTypeKeysFromCommonKey(a3, &theArray);
      }

      else
      {
        v13 = FigISOUserDataCopyOSTypeKeysFromCommonKey(a3, &theArray);
      }

      v15 = v13;
      if (v13)
      {
        goto LABEL_34;
      }

      if (theArray)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        v17 = bswap32(ValueAtIndex);
        v18 = HIBYTE(v17);
        valuePtr = ValueAtIndex;
LABEL_15:
        v19 = CFStringCreateWithFormat(v9, 0, @"%c%c%c%c", v17, BYTE1(v17), BYTE2(v17), v18);
        goto LABEL_16;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
LABEL_33:
      v15 = FigSignalErrorAtGM();
      goto LABEL_34;
    }

LABEL_32:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    goto LABEL_33;
  }

  if (*(v11 + 16))
  {
    if (CFEqual(a2, @"udta"))
    {
      v14 = CFGetTypeID(a3);
      if (v14 == CFStringGetTypeID())
      {
        if (!FigUserDataStringKeyToOSTypeKey(a3, &valuePtr))
        {
          goto LABEL_10;
        }

        goto LABEL_24;
      }

      v22 = CFGetTypeID(a3);
      if (v22 != CFNumberGetTypeID())
      {
        goto LABEL_32;
      }

      if (CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
      {
        v17 = bswap32(valuePtr);
        v18 = HIBYTE(v17);
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if (*(v11 + 16))
    {
      goto LABEL_32;
    }
  }

  if (!CFEqual(a2, @"uiso"))
  {
    goto LABEL_32;
  }

  v21 = CFGetTypeID(a3);
  if (v21 == CFStringGetTypeID())
  {
    if (!FigISOUserDataStringKeyToOSTypeKey(a3, &valuePtr))
    {
      goto LABEL_10;
    }

LABEL_24:
    v19 = CFRetain(a3);
    goto LABEL_16;
  }

  v23 = CFGetTypeID(a3);
  if (v23 != CFNumberGetTypeID())
  {
    goto LABEL_32;
  }

  if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    goto LABEL_33;
  }

  v19 = FigUserDataCFStringCreateFromOSType(v9, valuePtr);
LABEL_16:
  v20 = v19;
  if (a4)
  {
    *a4 = valuePtr;
  }

  v15 = 0;
  if (a5)
  {
    *a5 = v19;
LABEL_34:
    v20 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v15;
}

void FigUserDataWriteItemAtom(const __CFString *a1, const void *a2, _BYTE *a3)
{
  v20 = 0;
  if (a3[64])
  {
    FigUserDataStringKeyToOSTypeKey(a1, &v20);
  }

  else
  {
    FigISOUserDataStringKeyToOSTypeKey(a1, &v20);
  }

  v6 = CFGetTypeID(a2);
  if (v6 == CFDictionaryGetTypeID())
  {
    if (!FigAtomWriterBeginAtom())
    {
      v7 = a3 + 8;
      if (a3[64])
      {
        v8 = FigQTUserDataWriteItemData(v7, v20, a2);
      }

      else
      {
        v8 = FigISOUserDataWriteItemData(v7, v20, a2);
      }

      if (!v8 && !FigAtomWriterEndAtom())
      {
        *a3 = 1;
      }
    }
  }

  else if (CFArrayGetCount(a2) >= 1)
  {
    v9 = 0;
    v10 = 0;
    Mutable = 0;
    v12 = *MEMORY[0x1E695E480];
    v13 = MEMORY[0x1E695E9C0];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v10);
      if (ValueAtIndex)
      {
        v15 = ValueAtIndex;
        if (HIBYTE(v20) == 169)
        {
          if (!v9 && FigAtomWriterBeginAtom())
          {
            goto LABEL_35;
          }

          v16 = a3 + 8;
          if (a3[64] ? FigQTUserDataWriteItemData(v16, v20, v15) : FigISOUserDataWriteItemData(v16, v20, v15))
          {
            goto LABEL_35;
          }

          v9 = 1;
          *a3 = 1;
        }

        else
        {
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(v12, 0, v13);
          }

          CFArrayAppendValue(Mutable, v15);
        }
      }

      ++v10;
    }

    while (v10 < CFArrayGetCount(a2));
    if (v9 && FigAtomWriterEndAtom())
    {
LABEL_35:
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      if (!Mutable)
      {
        return;
      }

      if (CFArrayGetCount(Mutable) >= 1)
      {
        v18 = 0;
        do
        {
          v19 = CFArrayGetValueAtIndex(Mutable, v18);
          FigUserDataWriteItemAtom(a1, v19, a3);
          ++v18;
        }

        while (v18 < CFArrayGetCount(Mutable));
      }
    }

    CFRelease(Mutable);
  }
}

uint64_t FigQTUserDataWriteItemData(int a1, unsigned int a2, CFDictionaryRef theDict)
{
  valuePtr = 0x7FFF;
  cf = 0;
  theData = 0;
  Value = CFDictionaryGetValue(theDict, @"value");
  if (Value)
  {
    v6 = CFRetain(Value);
  }

  else
  {
    v6 = 0;
  }

  v7 = CFDictionaryGetValue(theDict, @"dataTypeNamespace");
  v8 = CFDictionaryGetValue(theDict, @"dataType");
  FigMetadataGetCoreMediaDataType(v7, v8, 0);
  v9 = MEMORY[0x1E695E480];
  if (a2 != -1453039239 || !v6)
  {
    if (HIBYTE(a2) == 169)
    {
      goto LABEL_12;
    }

    if (FigUserDataWeKnowIsISOText(a2))
    {
      v25 = CFDictionaryGetValue(theDict, @"locale");
      if (FigCFEqual())
      {
        v26 = 268435712;
      }

      else
      {
        v26 = 134217984;
      }

      appended = FigISOUserDataCreateItemDataFromText(*v9, v6, v26, v25, &theData);
      if (appended)
      {
        goto LABEL_38;
      }

      ExternalRepresentation = theData;
      if (!theData)
      {
LABEL_53:
        v22 = 0;
        v24 = 0;
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2 == 1851878757)
    {
      v27 = *v9;
      v28 = v6;
      v29 = 0;
    }

    else
    {
      if (a2 != 1952540515)
      {
        TypeID = CFDataGetTypeID();
        if (TypeID != CFGetTypeID(v6))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_2_10();
          appended = FigSignalErrorAtGM();
          goto LABEL_38;
        }

        if (v6)
        {
          ExternalRepresentation = CFRetain(v6);
        }

        else
        {
          ExternalRepresentation = 0;
        }

        goto LABEL_50;
      }

      v27 = *v9;
      v28 = v6;
      v29 = 1536;
    }

    ExternalRepresentation = CFStringCreateExternalRepresentation(v27, v28, v29, 0);
LABEL_50:
    theData = ExternalRepresentation;
    if (!ExternalRepresentation)
    {
      goto LABEL_53;
    }

LABEL_51:
    CFDataGetLength(ExternalRepresentation);
    if (!CFDataGetBytePtr(theData))
    {
      goto LABEL_53;
    }

    appended = FigAtomWriterAppendData();
    if (!appended)
    {
      goto LABEL_53;
    }

LABEL_38:
    v24 = appended;
    v22 = 0;
LABEL_54:
    v12 = v6;
    goto LABEL_55;
  }

  v10 = CFGetTypeID(v6);
  if (v10 == CFDateGetTypeID())
  {
    appended = FigMetadataCopyISO8601GMTStringFromDate(v6, &cf);
    if (!appended)
    {
      v12 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      CFRelease(v6);
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_12:
  v12 = v6;
LABEL_13:
  v13 = CFDictionaryGetValue(theDict, @"locale");
  v14 = CFDictionaryGetValue(theDict, @"languageCode");
  if (v12 && (v15 = v14, v16 = CFGetTypeID(v12), v16 == CFStringGetTypeID()))
  {
    if ((!v15 || !CFNumberGetValue(v15, kCFNumberSInt16Type, &valuePtr)) && v13)
    {
      valuePtr = FigMetadataGetPackedISO639_2TFromLocale(v13);
    }

    v17 = FigCFEqual() == 0;
    v19 = valuePtr < 0x400u || valuePtr == 0x7FFF;
    v20 = v17 || v19;
    if (v17 || v19)
    {
      BytesFromCFStringAndMovieLangCode = FigCreateBytesFromCFStringAndMovieLangCode();
    }

    else
    {
      BytesFromCFStringAndMovieLangCode = FigCreateBytesFromCFString();
    }

    v22 = BytesFromCFStringAndMovieLangCode;
    v23 = FigAtomWriterAppendData();
    if (!v23)
    {
      if (v20 || (v23 = FigAtomWriterAppendData(), !v23))
      {
        v23 = FigAtomWriterAppendData();
      }
    }

    v24 = v23;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v24 = FigSignalErrorAtGM();
    v22 = 0;
  }

LABEL_55:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v22)
  {
    CFAllocatorDeallocate(*v9, v22);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v24;
}

__CFData *FigISOUserDataWriteItemData(int a1, int a2, CFDictionaryRef theDict)
{
  cf = 0;
  *theData = 0;
  Value = CFDictionaryGetValue(theDict, @"value");
  if (Value && (v6 = CFRetain(Value)) != 0)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    if (v8 == CFDateGetTypeID())
    {
      v9 = FigMetadataCopyISO8601GMTStringFromDate(v7, &cf);
      if (v9)
      {
        ItemDataFromText = v9;
        v10 = v7;
        goto LABEL_78;
      }

      v10 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      CFRelease(v7);
    }

    else
    {
      v10 = v7;
    }
  }

  else
  {
    v10 = 0;
  }

  IsISOText = FigISOUserDataWeKnowIsISOText(a2);
  v12 = MEMORY[0x1E695E480];
  if (!IsISOText)
  {
    if (a2 == 1684108389)
    {
      if (!v10)
      {
        goto LABEL_85;
      }

      v39 = CFGetTypeID(v10);
      if (v39 != CFStringGetTypeID())
      {
        goto LABEL_85;
      }

      goto LABEL_64;
    }

    if (a2 == 2037543523)
    {
      *&bytes[4] = 0;
      *bytes = 0;
      if (v10 && CFNumberGetValue(v10, kCFNumberSInt16Type, &bytes[4]))
      {
        v30 = *v12;
        *&bytes[4] = bswap32(*&bytes[4]) >> 16;
        Mutable = CFDataCreateMutable(v30, 0);
        ItemDataFromText = Mutable;
        v32 = bytes;
        v33 = 6;
        goto LABEL_92;
      }

      goto LABEL_86;
    }

    if (a2 != 1953000802)
    {
      if (a2 != 1970430324)
      {
        if (a2 != 1952540515)
        {
          if (v10)
          {
            v21 = CFGetTypeID(v10);
            if (v21 == CFDataGetTypeID())
            {
              ExternalRepresentation = CFRetain(v10);
              goto LABEL_65;
            }
          }

LABEL_85:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_2_10();
          ItemDataFromText = FigSignalErrorAtGM();
          goto LABEL_78;
        }

LABEL_64:
        ExternalRepresentation = CFStringCreateExternalRepresentation(*v12, v10, 0x600u, 0);
LABEL_65:
        ItemDataFromText = ExternalRepresentation;
        v27 = 0;
        v14 = 0;
        *theData = ExternalRepresentation;
        if (ExternalRepresentation)
        {
          goto LABEL_71;
        }

        goto LABEL_74;
      }

      *bytes = 0;
      LOWORD(valuePtr) = 0;
      if (v10)
      {
        v34 = *MEMORY[0x1E695E480];
        CFNumberGetValue(v10, kCFNumberSInt16Type, &valuePtr);
        bytes[7] = valuePtr;
        Mutable = CFDataCreateMutable(v34, 0);
        ItemDataFromText = Mutable;
        v32 = bytes;
        v33 = 8;
        goto LABEL_92;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      v45 = FigSignalErrorAtGM();
      if (v45)
      {
        ItemDataFromText = v45;
        v10 = 0;
        goto LABEL_78;
      }

LABEL_87:
      ItemDataFromText = 0;
      goto LABEL_78;
    }

    *bytes = 0x6765706A00000000;
    if (v10)
    {
      if (theDict)
      {
        v35 = CFDictionaryGetValue(theDict, @"dataType");
        if (v35)
        {
          v36 = v35;
          v37 = CFDictionaryGetValue(theDict, @"dataTypeNamespace");
          if (!v37)
          {
            v37 = @"com.apple.quicktime.udta";
          }

          FigMetadataGetCoreMediaDataType(v37, v36, 0);
          if (FigCFEqual())
          {
            BytePtr = CFDataGetBytePtr(v10);
            if (CFDataGetLength(v10) < 4 || *BytePtr != 255 || BytePtr[1] != 216 || BytePtr[2] != 255)
            {
              goto LABEL_86;
            }
          }

          else if (!FigCFEqual())
          {
            goto LABEL_86;
          }

          v42 = CFDataGetBytePtr(v10);
          Length = CFDataGetLength(v10);
          if (v42)
          {
            v44 = Length;
            if (Length > 0)
            {
              ItemDataFromText = CFDataCreateMutable(*v12, 0);
              CFDataAppendBytes(ItemDataFromText, bytes, 8);
              Mutable = ItemDataFromText;
              v32 = v42;
              v33 = v44;
LABEL_92:
              CFDataAppendBytes(Mutable, v32, v33);
              v27 = 0;
              v14 = 0;
              *theData = ItemDataFromText;
              if (ItemDataFromText)
              {
                goto LABEL_71;
              }

              goto LABEL_74;
            }
          }
        }
      }
    }

LABEL_86:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    ItemDataFromText = FigSignalErrorAtGM();
    if (ItemDataFromText)
    {
      goto LABEL_78;
    }

    goto LABEL_87;
  }

  v13 = CFDictionaryGetValue(theDict, @"locale");
  v14 = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  if (a2 != 1819239273)
  {
    v23 = CFDictionaryGetValue(theDict, @"dataTypeNamespace");
    v24 = CFDictionaryGetValue(theDict, @"dataType");
    FigMetadataGetCoreMediaDataType(v23, v24, 0);
    if (FigCFEqual())
    {
      v25 = 268435712;
    }

    else
    {
      v25 = 134217984;
    }

    if (a2 == 1668313716)
    {
      if (v14 && (v26 = FigMetadataCopyLangCodeFromLocale(v14), *bytes = 0, v26))
      {
        v27 = v26;
        CFNumberGetValue(v26, kCFNumberSInt32Type, bytes);
        if (*bytes != 0x7FFF && *bytes != 138)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v27 = 0;
      }

      v28 = CFLocaleCreate(*v12, @"en");
      v29 = v28;
      if (v28)
      {
        CFRetain(v28);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (v29)
      {
        CFRelease(v29);
        v14 = v29;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_68;
    }

    v27 = 0;
LABEL_68:
    ItemDataFromText = FigISOUserDataCreateItemDataFromText(*v12, v10, v25, v14, theData);
    goto LABEL_69;
  }

  valuePtr = 0;
  *bytes = 0;
  v50 = 0;
  v51 = 0;
  v48 = 0;
  if (v10 && (v15 = *v12, v16 = CFStringGetLength(v10), (BytesFromCFString = FigCreateBytesFromCFString()) != 0))
  {
    v18 = BytesFromCFString;
    if (v16 + 1 == valuePtr)
    {
      memset(&theData[8], 0, 12);
      sscanf(BytesFromCFString, "%f%f%f", &theData[16], &theData[12], &theData[8]);
      v50 = vrev32_s8(vmovn_s64(vcvtq_n_s64_f64(vcvtq_f64_f32(*&theData[12]), 0x10uLL)));
      v51 = bswap32(vcvtd_n_s64_f64(*&theData[8], 0x10uLL));
      *&bytes[4] = __rev16(FigMetadataGetPackedISO639_2TFromLocale(v14));
      v19 = CFDataCreateMutable(v15, 0);
      CFDataAppendBytes(v19, bytes, 20);
      CFDataAppendBytes(v19, "earth", 6);
      CFDataAppendBytes(v19, &v48, 1);
      ItemDataFromText = 0;
      *theData = v19;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      ItemDataFromText = FigSignalErrorAtGM();
    }

    CFAllocatorDeallocate(v15, v18);
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    ItemDataFromText = FigSignalErrorAtGM();
  }

  v27 = 0;
LABEL_69:
  if (!ItemDataFromText)
  {
    ItemDataFromText = *theData;
    if (*theData)
    {
LABEL_71:
      CFDataGetLength(ItemDataFromText);
      if (CFDataGetBytePtr(*theData) && (appended = FigAtomWriterAppendData(), appended))
      {
        ItemDataFromText = appended;
      }

      else
      {
        ItemDataFromText = 0;
      }
    }
  }

LABEL_74:
  if (v27)
  {
    CFRelease(v27);
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_78:
  if (cf)
  {
    CFRelease(cf);
  }

  if (*theData)
  {
    CFRelease(*theData);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return ItemDataFromText;
}

uint64_t FigISOUserDataCreateItemDataFromText_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemDataFromText_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemDataFromText_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigUserDataSerializerFinalize_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigUserDataSerializerCopyDebugDescription_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigUserDataSerializerCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigUserDataSerializerSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigUserDataSerializerAddItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigUserDataSerializerAddItem_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigUserDataSerializerAddItem_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigUserDataSerializerAddItem_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigUserDataSerializerAddItem_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigUserDataSerializerAddItem_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigUserDataSerializerContainsKey_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigUserDataSerializerContainsKey_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigUserDataCreateNewItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigUserDataSerializerCreateBBuf_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigUserDataSerializerCreateBBuf_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigUserDataSerializerCreateCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigUserDataSerializerCreateCopy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVTTNoteBlockCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTNoteBlock_GetNodeType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTNoteBlock_copyNodeDocumentSerialization_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTNoteBlock_copyNodeDocumentSerialization_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void frlo_ensureRenderPipelinesForFormatDo_applier(void *key, uint64_t a2, CFMutableArrayRef *a3)
{
  Value = CFDictionaryGetValue(*(*a3 + 9), key);
  if (CMFormatDescriptionGetMediaType(a3[1]) == 1935832172 || CMFormatDescriptionGetMediaType(a3[1]) == 1952807028)
  {
    v5 = *(Value + 7);
    if (!v5)
    {
      goto LABEL_6;
    }

    if (*(a3 + 40))
    {
      CFRelease(v5);
      *(Value + 7) = 0;
LABEL_6:
      v7 = *a3;
      v6 = a3[1];
      v8 = *(Value + 8);
      v20 = *(Value + 3);
      v19 = v8;
      if (FigCreateCaptionRenderPipeline(v6, frlo_newSubtitleSampleArrivedCallback, v7, 0, 0, frlo_renderPipelineDidFlush, v7, 0, &v19, 0, Value + 7))
      {
        return;
      }
    }
  }

  if (*(*a3 + 81))
  {
    v9 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v9 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigRenderPipelineGetFigBaseObject(*(Value + 7));
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v11)
  {
    v11(FigBaseObject, @"DisplayNonForcedSubtitles", *v9);
  }

  v12 = a3[3];
  if (!v12 || (v13 = FigRenderPipelineGetFigBaseObject(*(Value + 7)), (v14 = *(*(CMBaseObjectGetVTable() + 8) + 56)) != 0) && !v14(v13, 0x1F0B55118, v12))
  {
    v15 = a3[2];
    if (!v15 || (v16 = FigRenderPipelineGetFigBaseObject(*(Value + 7)), (v17 = *(*(CMBaseObjectGetVTable() + 8) + 56)) != 0) && !v17(v16, 0x1F0B550D8, v15))
    {
      v18 = *(Value + 7);
      if (v18)
      {
        CFDictionaryAddValue(*(*a3 + 8), *(Value + 7), Value);
        CFArrayAppendValue(a3[4], v18);
      }
    }
  }
}

void frlo_convertSubtitleSampleIntoPixelBuffersDo(void *a1)
{
  v1 = a1;
  v48 = *MEMORY[0x1E69E9840];
  v43 = 0;
  theArray = 0;
  v42 = 0;
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_63;
  }

  Value = CFDictionaryGetValue(*(*a1 + 64), v2);
  v4 = MEMORY[0x1E695E480];
  if (!v1[2])
  {
    v13 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      goto LABEL_43;
    }

LABEL_64:
    v29 = 0;
    v30 = 0;
    goto LABEL_48;
  }

  if (!*(*v1 + 81) && !*(v1 + 48))
  {
    goto LABEL_63;
  }

  if (FigCaptionRendererSessionClearForRLO(*(*v1 + 96)))
  {
    goto LABEL_63;
  }

  v5 = OUTLINED_FUNCTION_1_79();
  if (FigCaptionRendererSessionSetLayoutContext_Viewport(v5))
  {
    goto LABEL_63;
  }

  v6 = OUTLINED_FUNCTION_1_79();
  if (FigCaptionRendererSessionSetLayoutContext_VideoSize(v6, Value[4], Value[5]))
  {
    goto LABEL_63;
  }

  v7 = OUTLINED_FUNCTION_1_79();
  if (FigCaptionRendererSessionSetLayoutContext_Gravity(v7, 0))
  {
    goto LABEL_63;
  }

  v8 = OUTLINED_FUNCTION_1_79();
  if (FigCaptionRendererSessionSetLayoutContext_Overscan(v8, 0))
  {
    goto LABEL_63;
  }

  if (FigSubtitleSampleCreatePropertyList(v1[2], *(v1 + 48), *(v1 + 49), &v42, *(v1 + 7), *(v1 + 8), *(v1 + 9), *(v1 + 10)))
  {
    goto LABEL_63;
  }

  cf[0] = 0;
  FigCaptionRendererLayoutContextCreate(cf);
  if (!cf[0])
  {
    goto LABEL_63;
  }

  v9 = OUTLINED_FUNCTION_1_79();
  if (FigCaptionRendererSessionSetCaptionSample(v9))
  {
    goto LABEL_63;
  }

  v10 = OUTLINED_FUNCTION_1_79();
  if (FigCaptionRendererSessionUpdateLegibleOutputContext(v10, cf[0]))
  {
    goto LABEL_63;
  }

  v41 = 0;
  if (FigCaptionRendererLayoutContextGetSubtitleSample(cf[0], &v41))
  {
    goto LABEL_63;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v11 = OUTLINED_FUNCTION_1_79();
  if (FigCaptionRendererSessionCopyOutputNodeImagesAndPositions(v11, &theArray, &v43) || (!theArray ? (Count = 0) : (Count = CFArrayGetCount(theArray)), v13 = *v4, (v15 = CFArrayCreateMutable(*v4, Count, MEMORY[0x1E695E9C0])) == 0))
  {
LABEL_63:
    Mutable = 0;
    goto LABEL_64;
  }

  v37 = v1;
  v38 = v15;
  v36 = Value;
  if (Count)
  {
    v16 = 0;
    v17 = MEMORY[0x1E695E9E8];
    v39 = Count;
    v40 = v13;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
      pixelBufferOut.value = 0;
      Width = CGImageGetWidth(ValueAtIndex);
      Height = CGImageGetHeight(ValueAtIndex);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v22 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E528], v17);
      if (v22)
      {
        v23 = v17;
        v17 = CFDictionaryCreate(v13, 0, 0, 0, MEMORY[0x1E695E9D8], v17);
        FigCFDictionarySetValue();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        if (CVPixelBufferCreate(v13, Width, Height, 0x42475241u, v22, &pixelBufferOut))
        {
          v28 = 0;
          v27 = 0;
          v26 = 0;
        }

        else if (pixelBufferOut.value)
        {
          CVPixelBufferLockBaseAddress(pixelBufferOut.value, 0);
          BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut.value);
          BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut.value);
          v26 = 1;
          v27 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, DeviceRGB, 1u);
          v49.size.width = Width;
          v49.size.height = Height;
          v49.origin.x = 0.0;
          v49.origin.y = 0.0;
          CGContextDrawImage(v27, v49, ValueAtIndex);
          CVPixelBufferUnlockBaseAddress(pixelBufferOut.value, 0);
          v28 = pixelBufferOut.value;
          pixelBufferOut.value = 0;
        }

        else
        {
          v28 = 0;
          v27 = 0;
          v26 = 1;
        }
      }

      else
      {
        v23 = v17;
        v28 = 0;
        v27 = 0;
        v26 = 1;
      }

      CGColorSpaceRelease(DeviceRGB);
      CGContextRelease(v27);
      CVPixelBufferRelease(pixelBufferOut.value);
      if (v22)
      {
        CFRelease(v22);
      }

      v13 = v40;
      if (v17)
      {
        CFRelease(v17);
      }

      if (!v26)
      {
        break;
      }

      if (v28)
      {
        CFArrayAppendValue(v38, v28);
        CVPixelBufferRelease(v28);
      }

      ++v16;
      v17 = v23;
      if (v39 == v16)
      {
        goto LABEL_42;
      }
    }

    v1 = v37;
    Mutable = v38;
    goto LABEL_64;
  }

LABEL_42:
  Value = v36;
  v1 = v37;
  Mutable = v38;
LABEL_43:
  pixelBufferOut = *(v1 + 1);
  v29 = CMTimeCopyAsDictionary(&pixelBufferOut, v13);
  pixelBufferOut.value = @"RenderedLegibleOutputKey";
  cf[0] = *Value;
  cf[1] = Mutable;
  *&pixelBufferOut.timescale = @"RenderedLegibleOutputPixelBuffers";
  pixelBufferOut.epoch = @"RenderedLegibleOutputPositions";
  v47 = @"FigTime";
  cf[2] = v43;
  cf[3] = v29;
  v30 = CFDictionaryCreate(v13, &pixelBufferOut, cf, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v30)
  {
    v31 = *(*v1 + 32);
    v32 = *(*v1 + 48);
    v33 = OUTLINED_FUNCTION_2_78();
    *v33 = CFRetain(v30);
    v33[1] = v31;
    if (v32)
    {
      v34 = CFRetain(v32);
    }

    else
    {
      v34 = 0;
    }

    v33[2] = v34;
    dispatch_async_f(*(*v1 + 24), v33, frlo_invokeCallbackAndDisposeContext);
  }

LABEL_48:
  if (*v1)
  {
    CFRelease(*v1);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  v35 = v1[2];
  if (v35)
  {
    CFRelease(v35);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  free(v1);
}

void frlo_renderPipelineDidFlushDo(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    Value = CFDictionaryGetValue(*(*a1 + 64), v2);
    if (Value)
    {
      v4 = *Value;
      v6 = *(*a1 + 40);
      v5 = *(*a1 + 48);
      v7 = OUTLINED_FUNCTION_2_78();
      if (v4)
      {
        v8 = CFRetain(v4);
      }

      else
      {
        v8 = 0;
      }

      *v7 = v8;
      v7[1] = v6;
      if (v5)
      {
        v9 = CFRetain(v5);
      }

      else
      {
        v9 = 0;
      }

      v7[2] = v9;
      dispatch_async_f(*(*a1 + 24), v7, frlo_invokeFlushCallbackAndDisposeContext);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v10 = a1[1];
  if (v10)
  {
    CFRelease(v10);
  }

  free(a1);
}

uint64_t FigRenderedLegibleOutputManagerCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRenderedLegibleOutputManagerCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRenderedLegibleOutputManagerCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRenderedLegibleOutputManagerCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRenderedLegibleOutputManagerCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRenderedLegibleOutputManagerCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRenderedLegibleOutputManagerCreate_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRenderedLegibleOutputManagerEnsureRenderPipelinesForFormat_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

BOOL frlo_rebuildFigRenderedLegibleOutputs_applier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM() == 0;
}

uint64_t FigiTunesMetadataSerializerContainsKey(const void *a1, __CFString *a2, const __CFString *a3)
{
  key = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && a2 && a3)
  {
    v7 = DerivedStorage;
    v8 = CFGetAllocator(a1);
    if (!FigiTunesMetadataCreateActualKey(v8, a2, a3, 0, &key) && *v7)
    {
      v9 = CFDictionaryContainsKey(*v7, key);
      goto LABEL_9;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM();
  }

  v9 = 0;
LABEL_9:
  if (key)
  {
    CFRelease(key);
  }

  return v9;
}

void FigiTunesMetadataWriteItemAtom(const __CFString *a1, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  TypeID = CFDictionaryGetTypeID();
  ValueAtIndex = cf;
  if (v4 != TypeID)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(cf, 0);
  }

  v20 = 0;
  memset(v19, 0, sizeof(v19));
  Value = CFDictionaryGetValue(ValueAtIndex, @"keyspace");
  if (CFEqual(Value, @"itsk"))
  {
    LODWORD(result.location) = 0;
    FigiTunesMetadataShortStringKeyToOSTypeKey(a1, &result);
    if (FigAtomWriterBeginAtom())
    {
      return;
    }

    OUTLINED_FUNCTION_4_9();
    if (FigAtomWriterInitWithParent())
    {
      return;
    }

    goto LABEL_6;
  }

  if (!CFEqual(Value, @"itlk"))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();

    FigSignalErrorAtGM();
    return;
  }

  if (FigAtomWriterBeginAtom())
  {
    return;
  }

  OUTLINED_FUNCTION_4_9();
  if (FigAtomWriterInitWithParent())
  {
    return;
  }

  if (CFStringHasPrefix(a1, @"com.apple.iTunes."))
  {
    result.location = 0;
    result.length = 0;
    Length = CFStringGetLength(a1);
    v21 = 0;
    v24.location = 0;
    v24.length = Length;
    if (CFStringFindWithOptions(a1, @".", v24, 4uLL, &result))
    {
      appended = FigAtomWriterBeginAtom();
      if (!appended)
      {
        appended = FigAtomWriterAppendVersionAndFlags();
        if (!appended)
        {
          strlen(FigiTunesMetadataWriteMeaningAndNameAtoms_longMeaning);
          appended = FigAtomWriterAppendData();
          if (!appended)
          {
            appended = FigAtomWriterEndAtom();
            if (!appended)
            {
              appended = FigAtomWriterBeginAtom();
              if (!appended)
              {
                appended = FigAtomWriterAppendVersionAndFlags();
                if (!appended)
                {
                  v12 = *MEMORY[0x1E695E480];
                  v25.location = result.location + 1;
                  v25.length = Length + ~result.location;
                  v13 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v25);
                  if (v13)
                  {
                    v14 = v13;
                    BytesFromCFString = FigCreateBytesFromCFString();
                    if (BytesFromCFString)
                    {
                      v16 = BytesFromCFString;
                      v17 = FigAtomWriterAppendData();
                      CFAllocatorDeallocate(v12, v16);
                      if (v17)
                      {
                        goto LABEL_30;
                      }

                      v18 = FigAtomWriterEndAtom();
                    }

                    else
                    {
                      fig_log_get_emitter();
                      OUTLINED_FUNCTION_1_11();
                      v18 = FigSignalErrorAtGM();
                    }

                    v17 = v18;
LABEL_30:
                    CFRelease(v14);
                    if (v17)
                    {
                      return;
                    }

                    goto LABEL_6;
                  }

                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_1_11();
                  appended = FigSignalErrorAtGM();
                }
              }
            }
          }
        }
      }

      if (appended)
      {
        return;
      }
    }
  }

LABEL_6:
  if (v4 == TypeID)
  {
    if (FigiTunesMetadataWriteItemDataAtom(v19, ValueAtIndex))
    {
      return;
    }

    goto LABEL_36;
  }

  if (CFArrayGetCount(cf) < 1)
  {
LABEL_36:
    FigAtomWriterEndAtom();
    return;
  }

  v8 = 0;
  while (1)
  {
    v9 = CFArrayGetValueAtIndex(cf, v8);
    if (v9)
    {
      if (FigiTunesMetadataWriteItemDataAtom(v19, v9))
      {
        break;
      }
    }

    if (++v8 >= CFArrayGetCount(cf))
    {
      goto LABEL_36;
    }
  }
}

uint64_t FigiTunesMetadataWriteItemDataAtom(uint64_t a1, const __CFDictionary *a2)
{
  v32 = 0;
  v31 = 0;
  *v30 = 0;
  appended = FigAtomWriterBeginAtom();
  if (appended)
  {
    return appended;
  }

  Value = CFDictionaryGetValue(a2, @"value");
  if (!FigMetadataGetNumericalDataTypeForMetadataProperties(@"com.apple.itunes", a2, @"com.apple.itunes", &v31, v30))
  {
    if (v31 != 21 || !Value)
    {
      goto LABEL_20;
    }

    v7 = CFGetTypeID(Value);
    if (v7 == CFNumberGetTypeID())
    {
      v8 = v30[0];
      if (!*v30)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v9 = CFGetTypeID(Value);
      TypeID = CFBooleanGetTypeID();
      v8 = v30[0];
      if (v9 != TypeID || *v30 == 0)
      {
        goto LABEL_20;
      }
    }

    if (!FigMetadataDataLengthCanHoldValue(v8, 1, Value))
    {
      *v30 = 0;
    }

    goto LABEL_20;
  }

  v5 = CFGetTypeID(Value);
  if (v5 != CFStringGetTypeID())
  {
    if (v5 == CFNumberGetTypeID() || v5 == CFBooleanGetTypeID())
    {
      v6 = 21;
      goto LABEL_13;
    }

LABEL_20:
    LOBYTE(v6) = v31;
    goto LABEL_21;
  }

  v6 = 1;
LABEL_13:
  v31 = v6;
LABEL_21:
  HIBYTE(v32) = v6;
  appended = FigAtomWriterAppendData();
  if (appended)
  {
    return appended;
  }

  appended = FigAtomWriterAppendData();
  if (appended)
  {
    return appended;
  }

  if (v31 > 0x19)
  {
    goto LABEL_39;
  }

  if (((1 << v31) & 0x2008606) == 0)
  {
    if (v31 == 21)
    {
      v18 = CFGetTypeID(Value);
      if (v18 == CFNumberGetTypeID() || (v19 = CFGetTypeID(Value), v19 == CFBooleanGetTypeID()))
      {
        ByteSize = *v30;
        if (!*v30)
        {
          ByteSize = CFNumberGetByteSize(Value);
        }

        v16 = 4294954709;
        switch(ByteSize)
        {
          case 1:
            v21 = OUTLINED_FUNCTION_3_59();
            if (!CFNumberGetValue(v21, kCFNumberSInt8Type, v22))
            {
              return FigAtomWriterEndAtom();
            }

            goto LABEL_48;
          case 2:
            v26 = OUTLINED_FUNCTION_3_59();
            if (!CFNumberGetValue(v26, kCFNumberSInt16Type, v27))
            {
              return FigAtomWriterEndAtom();
            }

            goto LABEL_48;
          case 4:
            v24 = OUTLINED_FUNCTION_3_59();
            if (!CFNumberGetValue(v24, kCFNumberSInt32Type, v25))
            {
              return FigAtomWriterEndAtom();
            }

            goto LABEL_48;
          case 8:
            v28 = OUTLINED_FUNCTION_3_59();
            if (!CFNumberGetValue(v28, kCFNumberSInt64Type, v29))
            {
              return FigAtomWriterEndAtom();
            }

LABEL_48:
            OUTLINED_FUNCTION_4_9();
            goto LABEL_41;
          default:
            return v16;
        }
      }

      return FigAtomWriterEndAtom();
    }

LABEL_39:
    v23 = CFGetTypeID(Value);
    if (v23 == CFDataGetTypeID())
    {
      CFDataGetLength(Value);
      CFDataGetBytePtr(Value);
LABEL_41:
      appended = FigAtomWriterAppendData();
      if (appended)
      {
        return appended;
      }
    }

    return FigAtomWriterEndAtom();
  }

  v12 = CFGetTypeID(Value);
  if (v12 != CFStringGetTypeID())
  {
    return FigAtomWriterEndAtom();
  }

  v13 = *MEMORY[0x1E695E480];
  BytesFromCFString = FigCreateBytesFromCFString();
  if (!BytesFromCFString)
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  v15 = BytesFromCFString;
  v16 = FigAtomWriterAppendData();
  CFAllocatorDeallocate(v13, v15);
  if (!v16)
  {
    return FigAtomWriterEndAtom();
  }

  return v16;
}

uint64_t FigiTunesMetadataSerializerFinalize_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigiTunesMetadataSerializerCopyDebugDescription_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigiTunesMetadataSerializerCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataSerializerSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataSerializerAddItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataSerializerAddItem_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataSerializerAddItem_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataSerializerAddItem_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataCreateActualKey_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataCreateActualKey_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataCreateActualKey_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataCreateActualKey_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataCreateActualKey_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataCreateActualKey_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataCreateActualKey_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataCreateNewItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataSerializerCreateBBuf_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataSerializerCreateBBuf_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataSerializerCreateBBuf_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataSerializerCreateCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataSerializerCreateCopy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetReaderCreateWithURLAndFormatReader(const __CFAllocator *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  cf = 0;
  v15 = 0;
  FigKTraceInit();
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  if (!(a2 | a3) || !a6 || a2 && !FigCFURLIsLocalResource())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v12 = FigSignalErrorAtGM();
    goto LABEL_15;
  }

  if (a3)
  {
    v11 = FigAssetCreateWithFormatReader(a1, a3, 1, 0, &cf);
    if (!v11)
    {
      goto LABEL_13;
    }

LABEL_22:
    v12 = v11;
    goto LABEL_15;
  }

  if (a2)
  {
    v11 = FigAssetCreateWithURL(a1, a2, 1, 0, &cf);
    if (v11)
    {
      goto LABEL_22;
    }
  }

LABEL_13:
  v12 = FigAssetReaderCreateWithAsset(a1, cf, a5, &v15);
  if (v12)
  {
    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    *a6 = v15;
    v15 = 0;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t assetReader_ExtractAndRetainNextSampleBuffer(uint64_t a1, int a2, int a3, _BYTE *a4, void *a5)
{
  Storage = remakerFamily_getStorage(a1);
  v181 = 0;
  v182 = 0;
  OUTLINED_FUNCTION_18_20();
  if (v12)
  {
    fig_log_get_emitter();
    goto LABEL_34;
  }

  if (v11 != 3 || (ChannelByExtractionID = assetReader_getChannelByExtractionID(a1, a2)) == 0)
  {
LABEL_219:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
LABEL_34:
    TaggedBufferGroupSampleBuffer = FigSignalErrorAtGM();
LABEL_35:
    EarliestSequentialImageTime = TaggedBufferGroupSampleBuffer;
    goto LABEL_36;
  }

  v14 = ChannelByExtractionID;
  v15 = *(ChannelByExtractionID + 72);
  v16 = MEMORY[0x1E6960C70];
  if (!v15)
  {
    *numSamplesa = *MEMORY[0x1E6960C70];
    *&v184.value = *MEMORY[0x1E6960C70];
    v33 = *(MEMORY[0x1E6960C70] + 16);
    v184.epoch = v33;
    LOBYTE(pixelBufferOut[0]) = 0;
    EarliestSequentialImageTime = *(v14 + 64);
    if (EarliestSequentialImageTime)
    {
LABEL_54:
      *(v14 + 64) = 0;
      goto LABEL_36;
    }

    while (1)
    {
      EarliestSequentialImageTime = *(Storage + 20);
      if (EarliestSequentialImageTime)
      {
        goto LABEL_36;
      }

      EarliestSequentialImageTime = FigVisualContextGetEarliestSequentialImageTime(*(v14 + 112), 0, &v184, pixelBufferOut);
      if (!EarliestSequentialImageTime)
      {
        break;
      }

LABEL_50:
      if (EarliestSequentialImageTime != -12813)
      {
        goto LABEL_36;
      }

      v20 = pixelBufferOut[0];
      if (!a3 || LOBYTE(pixelBufferOut[0]))
      {
        goto LABEL_86;
      }

      FigSemaphoreWaitRelative();
      EarliestSequentialImageTime = *(v14 + 64);
      if (EarliestSequentialImageTime)
      {
        goto LABEL_54;
      }
    }

    if (*(v14 + 160))
    {
      *&v180.duration.value = *numSamplesa;
      v180.duration.epoch = v33;
      v34 = *(v14 + 120);
      if (v34)
      {
        Count = CFArrayGetCount(v34);
        if (Count >= 2)
        {
          v36 = Count;
          v37 = 1;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v14 + 120), v37);
            if (!ValueAtIndex)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_120();
              goto LABEL_34;
            }

            v39 = FigVisualContextGetEarliestSequentialImageTime(ValueAtIndex, 0, &v180, pixelBufferOut);
            if (v39)
            {
              EarliestSequentialImageTime = v39;
              goto LABEL_50;
            }

            OUTLINED_FUNCTION_21_17();
            time2 = v180.duration;
            if (CMTimeCompare(&time1, &time2))
            {
              break;
            }

            if (v36 == ++v37)
            {
              goto LABEL_55;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_120();
          FigSignalErrorAtGM();
          EarliestSequentialImageTime = 0;
          goto LABEL_36;
        }
      }
    }

LABEL_55:
    v20 = pixelBufferOut[0];
    if (a5)
    {
      memset(&v180, 0, sizeof(v180));
      if (!*(v14 + 160))
      {
        v40 = *(v14 + 112);
        time2 = v184;
        v41 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v41)
        {
          EarliestSequentialImageTime = 4294954514;
          goto LABEL_36;
        }

        v42 = *MEMORY[0x1E695E480];
        time1 = time2;
        TaggedBufferGroupSampleBuffer = v41(v40, v42, &time1, 3, &v182, 0, 0);
        if (TaggedBufferGroupSampleBuffer)
        {
          goto LABEL_35;
        }

        v43 = v182;
        if (!v182)
        {
LABEL_66:
          v180.presentationTimeStamp = v184;
          *&v180.decodeTimeStamp.value = *numSamplesa;
          v180.decodeTimeStamp.epoch = v33;
          *&v180.duration.value = *numSamplesa;
          v180.duration.epoch = v33;
          if (v43)
          {
            OUTLINED_FUNCTION_9_32();
            TaggedBufferGroupSampleBuffer = CMSampleBufferCreateForImageBuffer(v46, v47, v48, v49, v50, v51, v52, v53);
            if (TaggedBufferGroupSampleBuffer)
            {
              goto LABEL_35;
            }
          }

          else
          {
            OUTLINED_FUNCTION_9_32();
            TaggedBufferGroupSampleBuffer = CMSampleBufferCreate(v55, v56, v57, v58, v59, 0, 0, 1, &v180, 0, 0, &v181);
            if (TaggedBufferGroupSampleBuffer)
            {
              goto LABEL_35;
            }

            CMSetAttachment(v181, *MEMORY[0x1E69604B0], *MEMORY[0x1E695E4D0], 1u);
          }

          goto LABEL_86;
        }

        v45 = (v14 + 192);
        v44 = *(v14 + 192);
        if (v44)
        {
          if (CMVideoFormatDescriptionMatchesImageBuffer(v44, v182))
          {
LABEL_65:
            v43 = v182;
            goto LABEL_66;
          }

          if (*v45)
          {
            CFRelease(*v45);
            *v45 = 0;
          }
        }

        TaggedBufferGroupSampleBuffer = CMVideoFormatDescriptionCreateForImageBuffer(v42, v182, (v14 + 192));
        if (TaggedBufferGroupSampleBuffer)
        {
          goto LABEL_35;
        }

        goto LABEL_65;
      }

      OUTLINED_FUNCTION_21_17();
      TaggedBufferGroupSampleBuffer = assetReader_createTaggedBufferGroupSampleBuffer(v14, &time1);
      if (TaggedBufferGroupSampleBuffer)
      {
        goto LABEL_35;
      }
    }

LABEL_86:
    v18 = 0;
LABEL_87:
    if (!a5)
    {
      goto LABEL_187;
    }

    goto LABEL_88;
  }

  EarliestSequentialImageTime = *(v14 + 64);
  if (!a3)
  {
    if (EarliestSequentialImageTime)
    {
      v18 = 0;
      goto LABEL_222;
    }

    EarliestSequentialImageTime = *(Storage + 20);
    if (!EarliestSequentialImageTime)
    {
      if (a4)
      {
        if (*(v14 + 160))
        {
          v54 = assetReader_outputBufferQueuesAtEndOfData(*(v14 + 128));
        }

        else
        {
          v54 = CMBufferQueueIsAtEndOfData(v15);
        }

        v20 = v54;
        if (!a5)
        {
          goto LABEL_201;
        }
      }

      else
      {
        v20 = 0;
        if (!a5)
        {
          goto LABEL_201;
        }
      }

      if (!*(v14 + 160))
      {
        v18 = 0;
        v181 = CMBufferQueueDequeueIfDataReadyAndRetain(*(v14 + 72));
        goto LABEL_88;
      }

      v134 = assetReader_outputBufferQueuesIfDataReady(*(v14 + 128), (v14 + 164));
      if (v134)
      {
        OUTLINED_FUNCTION_11_31(v134, v135, v136, v137, v138, v139, v140, v141, sampleTimingArray, v145, sampleSizeArray, v148, v149, v150, v151, v152, v154, v156, v158, v160, v162, v164, v165, cf, v168, v170, group, poolOut, numSamples, numSamples_8, *&v180.duration.value, v180.duration.epoch);
      }

LABEL_201:
      v18 = 0;
      if (!a5)
      {
        goto LABEL_187;
      }

LABEL_88:
      if (!*(v14 + 28))
      {
        goto LABEL_187;
      }

      v60 = v181;
      if (!v181)
      {
        goto LABEL_187;
      }

      v181 = 0;
      blockBufferOut = 0;
      pixelBufferOut[0] = 0;
      sizeArrayEntriesNeededOut = 0;
      timingArrayEntriesNeededOut = 0;
      v186 = 0;
      v187 = 0;
      v163 = *v16;
      *&v180.duration.value = *v16;
      v161 = *(v16 + 2);
      v180.duration.epoch = v161;
      v61 = CMSampleBufferGetNumSamples(v60);
      SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(v60, 0, 0, &timingArrayEntriesNeededOut);
      v63 = v60;
      if (SampleTimingInfoArray)
      {
        EarliestSequentialImageTime = SampleTimingInfoArray;
        if (SampleTimingInfoArray != -12736)
        {
          v66 = 0;
          v67 = 0;
          SampleBufferProcessor = 0;
          v64 = 0;
          goto LABEL_174;
        }
      }

      numSamplesb = v61;
      if (timingArrayEntriesNeededOut < 1)
      {
        v64 = 0;
      }

      else
      {
        v64 = malloc_type_malloc(72 * timingArrayEntriesNeededOut, 0x1000040FF89C88EuLL);
        if (!v64)
        {
          goto LABEL_125;
        }

        v65 = CMSampleBufferGetSampleTimingInfoArray(v60, timingArrayEntriesNeededOut, v64, 0);
        if (v65)
        {
          goto LABEL_126;
        }
      }

      if (*(v14 + 160))
      {
        groupa = CMSampleBufferGetTaggedBufferGroup(v60);
        CVPixelBufferAtIndex = CMTaggedBufferGroupGetCVPixelBufferAtIndex(groupa, 0);
      }

      else
      {
        CVPixelBufferAtIndex = CMSampleBufferGetImageBuffer(v60);
        groupa = 0;
      }

      DataBuffer = CMSampleBufferGetDataBuffer(v63);
      if (CVPixelBufferAtIndex)
      {
        if (*(v14 + 16))
        {
          cfa = FigCFWeakReferenceHolderCopyReferencedObject();
          if (cfa)
          {
            v155 = CVPixelBufferAtIndex;
            v157 = v63;
            poolOuta = (v14 + 32);
            v171 = a4;
            v159 = v64;
            if (*(v14 + 32))
            {
              goto LABEL_105;
            }

            v87 = cfa[29];
            if (v87)
            {
              SampleBufferProcessor = FigMediaProcessorGetSampleBufferProcessor(v87);
              if (!SampleBufferProcessor)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_3_3();
                EarliestSequentialImageTime = FigSignalErrorAtGM();
                v66 = 0;
                goto LABEL_173;
              }

              CFGetAllocator(cfa);
              FigSampleBufferProcessorGetFigBaseObject(SampleBufferProcessor);
              if (*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                v88 = OUTLINED_FUNCTION_400_0();
                v89(v88);
              }
            }

            v90 = cfa[7];
            if (v90)
            {
              if (*poolOuta)
              {
                goto LABEL_105;
              }

              CFGetAllocator(cfa);
              FigRenderPipelineGetFigBaseObject(v90);
              if (*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                v91 = OUTLINED_FUNCTION_400_0();
                v92(v91);
              }
            }

            if (*poolOuta)
            {
LABEL_105:
              v71 = (v14 + 40);
              if (*(v14 + 40) || (v72 = CFGetAllocator(cfa), PixelBuffer = VTPixelTransferSessionCreate(v72, (v14 + 40)), !PixelBuffer))
              {
                v74 = CFGetAllocator(v155);
                PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(v74, *poolOuta, pixelBufferOut);
                if (!PixelBuffer)
                {
                  CVBufferPropagateAttachments(v155, pixelBufferOut[0]);
                  PixelBuffer = VTPixelTransferSessionTransferImage(*v71, v155, pixelBufferOut[0]);
                  if (!PixelBuffer)
                  {
                    v76 = (v14 + 48);
                    v75 = *(v14 + 48);
                    if (v75)
                    {
                      if (CMVideoFormatDescriptionMatchesImageBuffer(v75, pixelBufferOut[0]))
                      {
LABEL_114:
                        if (*(v14 + 160))
                        {
                          v77 = *(v14 + 152);
                          if (v77)
                          {
                            v78 = CFArrayGetCount(v77);
                          }

                          else
                          {
                            v78 = 0;
                          }

                          v169 = *MEMORY[0x1E695E480];
                          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v78, MEMORY[0x1E695E9C0]);
                          SampleBufferProcessor = Mutable;
                          if (Mutable)
                          {
                            CFArrayAppendValue(Mutable, pixelBufferOut[0]);
                            if (v78 >= 2)
                            {
                              v120 = 1;
                              do
                              {
                                if (pixelBufferOut[0])
                                {
                                  CFRelease(pixelBufferOut[0]);
                                  pixelBufferOut[0] = 0;
                                }

                                v121 = CMTaggedBufferGroupGetCVPixelBufferAtIndex(groupa, v120);
                                v122 = CFGetAllocator(v121);
                                v123 = CVPixelBufferPoolCreatePixelBuffer(v122, *poolOuta, pixelBufferOut);
                                if (v123)
                                {
                                  goto LABEL_226;
                                }

                                CVBufferPropagateAttachments(v121, pixelBufferOut[0]);
                                v123 = VTPixelTransferSessionTransferImage(*v71, v121, pixelBufferOut[0]);
                                if (v123)
                                {
                                  goto LABEL_226;
                                }

                                CFArrayAppendValue(SampleBufferProcessor, pixelBufferOut[0]);
                              }

                              while (v78 != ++v120);
                            }

                            v123 = MEMORY[0x19A8D33F0](v169, *(v14 + 152), SampleBufferProcessor, &v186);
                            if (!v123)
                            {
                              memset(&time1, 0, sizeof(time1));
                              v63 = v157;
                              CMSampleBufferGetOutputPresentationTimeStamp(&time1, v157);
                              v184 = time1;
                              *&time2.value = v163;
                              time2.epoch = v161;
                              v124 = FigSampleBufferCreateForTaggedBufferGroup();
                              v66 = 0;
                              v118 = numSamplesb;
                              if (v124)
                              {
                                EarliestSequentialImageTime = v124;
LABEL_171:
                                a4 = v171;
LABEL_172:
                                v64 = v159;
LABEL_173:
                                v67 = cfa;
                                goto LABEL_174;
                              }

LABEL_166:
                              v125 = v63;
                              SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v63, 0);
                              if (SampleAttachmentsArray)
                              {
                                v127 = SampleAttachmentsArray;
                                v128 = CMSampleBufferGetSampleAttachmentsArray(v187, 1u);
                                if (v118 >= 1)
                                {
                                  v129 = v128;
                                  v130 = 0;
                                  do
                                  {
                                    v131 = CFArrayGetValueAtIndex(v127, v130);
                                    v132 = CFArrayGetValueAtIndex(v129, v130);
                                    CFDictionaryApplyFunction(v131, assetReader_addValueToDictionary, v132);
                                    ++v130;
                                  }

                                  while (numSamplesb != v130);
                                }
                              }

                              v63 = v125;
                              CMPropagateAttachments(v125, v187);
                              CMSampleBufferGetOutputPresentationTimeStamp(&v180.duration, v125);
                              time1 = v180.duration;
                              CMSampleBufferSetOutputPresentationTimeStamp(v187, &time1);
                              EarliestSequentialImageTime = 0;
                              v181 = v187;
                              v187 = 0;
                              goto LABEL_171;
                            }
                          }

                          else
                          {
                            fig_log_get_emitter();
                            OUTLINED_FUNCTION_0_4();
                            v123 = FigSignalErrorAtGM();
                          }

LABEL_226:
                          EarliestSequentialImageTime = v123;
                          v66 = 0;
                          a4 = v171;
                          v63 = v157;
                          goto LABEL_172;
                        }

                        v63 = v157;
                        CFGetAllocator(v157);
                        OUTLINED_FUNCTION_9_32();
                        v109 = CMSampleBufferCreateForImageBuffer(v102, v103, v104, v105, v106, v107, v64, v108);
                        v66 = 0;
                        if (v109)
                        {
                          EarliestSequentialImageTime = v109;
                          SampleBufferProcessor = 0;
                          a4 = v171;
                          goto LABEL_173;
                        }

                        SampleBufferProcessor = 0;
LABEL_154:
                        v118 = numSamplesb;
                        goto LABEL_166;
                      }

                      if (*v76)
                      {
                        CFRelease(*v76);
                        *v76 = 0;
                      }
                    }

                    PixelBuffer = CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x1E695E480], pixelBufferOut[0], (v14 + 48));
                    if (!PixelBuffer)
                    {
                      goto LABEL_114;
                    }
                  }
                }
              }

              EarliestSequentialImageTime = PixelBuffer;
              v66 = 0;
              SampleBufferProcessor = 0;
              v63 = v157;
              goto LABEL_173;
            }

            PixelFormatType = CVPixelBufferGetPixelFormatType(v155);
            CVPixelBufferGetWidth(v155);
            CVPixelBufferGetHeight(v155);
            IOSurface = CVPixelBufferGetIOSurface(v155);
            if (!*(v14 + 56))
            {
              CVPixelBufferGetAttributes();
            }

            MutableCopy = FigCFDictionaryCreateMutableCopy();
            if (!MutableCopy)
            {
              fig_log_get_emitter();
              FigSignalErrorAtGM();
              v63 = v157;
              goto LABEL_234;
            }

            v95 = MutableCopy;
            Value = CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E6966130]);
            if (Value)
            {
              v97 = Value;
              v98 = CFGetTypeID(Value);
              if (v98 != CFArrayGetTypeID())
              {
                goto LABEL_206;
              }

              v99 = CFArrayGetCount(v97);
              if (v99 < 1)
              {
                goto LABEL_206;
              }

              v100 = v99;
              v101 = 0;
              while (1)
              {
                LODWORD(time1.value) = 0;
                if (FigCFArrayGetInt32AtIndex())
                {
                  if (LODWORD(time1.value) == PixelFormatType)
                  {
                    break;
                  }
                }

                if (v100 == ++v101)
                {
                  goto LABEL_206;
                }
              }
            }

            if (FigCFDictionarySetInt32())
            {
              v142 = 0;
              a4 = v171;
              v63 = v157;
              v64 = v159;
              goto LABEL_213;
            }

LABEL_206:
            a4 = v171;
            v63 = v157;
            if ((!CFDictionaryGetValue(v95, *MEMORY[0x1E6966208]) || !CFDictionaryGetValue(v95, *MEMORY[0x1E69660B8])) && (FigCFDictionarySetInt32() || FigCFDictionarySetInt32()))
            {
              v142 = 0;
              v64 = v159;
            }

            else
            {
              if (!IOSurface)
              {
                v142 = v95;
                v64 = v159;
                goto LABEL_216;
              }

              time1.value = 0;
              v64 = v159;
              if (FigCreatePixelBufferAttributesWithIOSurfaceSupport())
              {
                v142 = 0;
              }

              else
              {
                CFRelease(v95);
                v95 = 0;
                v142 = time1.value;
              }
            }

LABEL_213:
            if (v95)
            {
              CFRelease(v95);
            }

LABEL_216:
            if (v142)
            {
              v143 = CFGetAllocator(cfa);
              EarliestSequentialImageTime = CVPixelBufferPoolCreate(v143, 0, v142, poolOuta);
              CFRelease(v142);
              if (EarliestSequentialImageTime)
              {
                goto LABEL_235;
              }

              goto LABEL_105;
            }

LABEL_234:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_3_3();
            EarliestSequentialImageTime = FigSignalErrorAtGM();
LABEL_235:
            v66 = 0;
            SampleBufferProcessor = 0;
            goto LABEL_173;
          }
        }

LABEL_125:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_3();
        v65 = FigSignalErrorAtGM();
LABEL_126:
        EarliestSequentialImageTime = v65;
LABEL_127:
        v66 = 0;
LABEL_128:
        v67 = 0;
        SampleBufferProcessor = 0;
        goto LABEL_174;
      }

      v79 = DataBuffer;
      if (DataBuffer)
      {
        v80 = CFGetAllocator(DataBuffer);
        v81 = v64;
        v82 = CFGetAllocator(v79);
        DataLength = CMBlockBufferGetDataLength(v79);
        v84 = v82;
        v64 = v81;
        v65 = CMBlockBufferCreateContiguous(v80, v79, v84, 0, 0, DataLength, 2u, &blockBufferOut);
        if (v65)
        {
          goto LABEL_126;
        }
      }

      v85 = CMSampleBufferGetSampleSizeArray(v63, 0, 0, &sizeArrayEntriesNeededOut);
      if (v85)
      {
        EarliestSequentialImageTime = v85;
        if (v85 != -12735)
        {
          goto LABEL_127;
        }
      }

      v171 = a4;
      if (sizeArrayEntriesNeededOut < 1)
      {
        v66 = 0;
      }

      else
      {
        v66 = malloc_type_malloc(8 * sizeArrayEntriesNeededOut, 0x100004000313F17uLL);
        if (!v66)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_3();
          v86 = FigSignalErrorAtGM();
LABEL_229:
          EarliestSequentialImageTime = v86;
          goto LABEL_128;
        }

        v86 = CMSampleBufferGetSampleSizeArray(v63, sizeArrayEntriesNeededOut, v66, 0);
        if (v86)
        {
          goto LABEL_229;
        }
      }

      CFGetAllocator(v63);
      CMSampleBufferGetFormatDescription(v63);
      v146 = sizeArrayEntriesNeededOut;
      OUTLINED_FUNCTION_9_32();
      v117 = CMSampleBufferCreate(v110, v111, v112, v113, v114, v115, numSamplesb, v116, v64, v146, v66, &v187);
      v67 = 0;
      if (v117)
      {
        EarliestSequentialImageTime = v117;
        SampleBufferProcessor = 0;
LABEL_174:
        if (pixelBufferOut[0])
        {
          CFRelease(pixelBufferOut[0]);
        }

        if (blockBufferOut)
        {
          CFRelease(blockBufferOut);
        }

        free(v64);
        free(v66);
        if (v187)
        {
          CFRelease(v187);
        }

        if (v67)
        {
          CFRelease(v67);
        }

        if (SampleBufferProcessor)
        {
          CFRelease(SampleBufferProcessor);
        }

        if (v186)
        {
          CFRelease(v186);
        }

        CFRelease(v63);
        if (EarliestSequentialImageTime)
        {
          goto LABEL_191;
        }

LABEL_187:
        if (a5)
        {
          *a5 = v181;
          v181 = 0;
        }

        EarliestSequentialImageTime = 0;
        if (a4)
        {
          *a4 = v20;
        }

        goto LABEL_191;
      }

      v159 = v64;
      cfa = 0;
      SampleBufferProcessor = 0;
      goto LABEL_154;
    }

LABEL_36:
    v18 = 0;
    goto LABEL_191;
  }

  v18 = 0;
  if (EarliestSequentialImageTime)
  {
LABEL_222:
    *(v14 + 64) = 0;
    goto LABEL_191;
  }

  while (1)
  {
    EarliestSequentialImageTime = *(Storage + 20);
    if (EarliestSequentialImageTime)
    {
      break;
    }

    if (*(v14 + 160))
    {
      v19 = assetReader_outputBufferQueuesAtEndOfData(*(v14 + 128));
    }

    else
    {
      v19 = CMBufferQueueIsAtEndOfData(*(v14 + 72));
    }

    v20 = v19;
    if (v19)
    {
      goto LABEL_87;
    }

    if (a5)
    {
      if (v181)
      {
        CFRelease(v181);
        v181 = 0;
      }

      if (*(v14 + 160))
      {
        v23 = assetReader_outputBufferQueuesIfDataReady(*(v14 + 128), (v14 + 164));
        if (v23)
        {
          v31 = OUTLINED_FUNCTION_11_31(v23, v24, v25, v26, v27, v28, v29, v30, sampleTimingArray, v145, sampleSizeArray, v148, v149, v150, v151, v152, v154, v156, v158, v160, v162, v164, v165, cf, v168, v170, group, poolOut, numSamples, numSamples_8, *&v180.duration.value, v180.duration.epoch);
          if (v31)
          {
            EarliestSequentialImageTime = v31;
            break;
          }
        }
      }

      else
      {
        v181 = CMBufferQueueDequeueIfDataReadyAndRetain(*(v14 + 72));
        if (v181)
        {
          if (v18)
          {
            CFRelease(v18);
          }

          if (!*(v14 + 16))
          {
            goto LABEL_219;
          }

          v21 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (!v21)
          {
            goto LABEL_219;
          }

          v18 = v21;
          if (CMSampleBufferGetNumSamples(v181) > 0 || remakerFamily_keepMarkerSbuf(a1, v18, v181))
          {
LABEL_76:
            v20 = 0;
            if (a5)
            {
              goto LABEL_88;
            }

            goto LABEL_187;
          }
        }
      }
    }

    else
    {
      Head = CMBufferQueueGetHead(*(v14 + 72));
      if (Head && CMSampleBufferDataIsReady(Head))
      {
        goto LABEL_76;
      }
    }

    FigSemaphoreWaitRelative();
    EarliestSequentialImageTime = *(v14 + 64);
    if (EarliestSequentialImageTime)
    {
      goto LABEL_222;
    }
  }

LABEL_191:
  if (v181)
  {
    CFRelease(v181);
  }

  if (v182)
  {
    CFRelease(v182);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return EarliestSequentialImageTime;
}

uint64_t assetReader_EnableDecodedAudioExtractionFromTrackWithAudioOptions(const void *a1, unsigned int a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  valuePtr = a2;
  Storage = remakerFamily_getStorage(a1);
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v17 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  cf = CFDictionaryCreate(v17, &kFigAssetReaderSourceTrackArrayKey_TrackID, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v18 = CFArrayCreate(v17, &cf, 1, MEMORY[0x1E695E9C0]);
  if (*Storage != 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    SourceASBDForTrackID = FigSignalErrorAtGM();
    goto LABEL_14;
  }

  if (!a3)
  {
    SourceASBDForTrackID = remakerFamily_getSourceASBDForTrackID(a1, valuePtr, &v29);
    if (!SourceASBDForTrackID)
    {
      *(&v29 + 1) = 0x96C70636DLL;
      LODWORD(v31) = 32;
      DWORD1(v30) = 1;
      DWORD2(v30) = 4 * HIDWORD(v30);
      LODWORD(v30) = 4 * HIDWORD(v30);
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v19 = a3[1];
  v29 = *a3;
  v30 = v19;
  v31 = *(a3 + 4);
  if (*&v29 != 0.0 && HIDWORD(v30))
  {
    goto LABEL_12;
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  SourceASBDForTrackID = remakerFamily_getSourceASBDForTrackID(a1, valuePtr, &v24);
  if (SourceASBDForTrackID)
  {
LABEL_14:
    v22 = SourceASBDForTrackID;
    goto LABEL_16;
  }

  if (*&v29 == 0.0)
  {
    *&v29 = v24;
  }

  if (!HIDWORD(v30))
  {
    HIDWORD(v30) = HIDWORD(v25);
  }

LABEL_12:
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v21)
  {
    SourceASBDForTrackID = v21(a1, v18, &v29, a4, a5, a6, a7, a8, a9);
    goto LABEL_14;
  }

  v22 = 4294954514;
LABEL_16:
  if (values)
  {
    CFRelease(values);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v22;
}

uint64_t assetReader_EnableCaptionExtraction(const void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  Storage = remakerFamily_getStorage(a1);
  v38 = 0;
  v37 = 0;
  cf = 0;
  if (*Storage != 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v11 = FigSignalErrorAtGM();
    goto LABEL_27;
  }

  v8 = Storage;
  v9 = *(Storage + 72);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v10)
  {
LABEL_22:
    v32 = 4294954514;
    goto LABEL_23;
  }

  v11 = v10(v9, a2, &cf);
  if (v11)
  {
LABEL_27:
    v32 = v11;
    goto LABEL_23;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 32))
  {
    goto LABEL_22;
  }

  v12 = OUTLINED_FUNCTION_173_0();
  v11 = v13(v12);
  if (v11)
  {
    goto LABEL_27;
  }

  v11 = remakerFamily_createChannel(a1, a2, v37, &v38);
  if (v11)
  {
    goto LABEL_27;
  }

  v11 = remakerFamily_setupMultiPassTrackIfNecessary(a1, v38);
  if (v11)
  {
    goto LABEL_27;
  }

  v14 = v38;
  *(v38 + 50) = 1;
  *(*(v14 + 152) + 28) = 0;
  CFGetAllocator(a1);
  CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v15 = OUTLINED_FUNCTION_173_0();
  v11 = CMBufferQueueCreate(v15, v16, v17, v18);
  if (v11)
  {
    goto LABEL_27;
  }

  CFGetAllocator(a1);
  CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v19 = OUTLINED_FUNCTION_173_0();
  v11 = CMBufferQueueCreate(v19, v20, v21, v22);
  if (v11)
  {
    goto LABEL_27;
  }

  v23 = CFGetAllocator(a1);
  v11 = FigRenderPipelineCreateForBufferQueue(v23, *(v38 + 248), 0, (v38 + 56));
  if (v11)
  {
    goto LABEL_27;
  }

  v11 = assetReader_ensureRemakerQueue();
  if (v11)
  {
    goto LABEL_27;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v11 = FigNotificationCenterAddWeakListeners();
  if (v11)
  {
    goto LABEL_27;
  }

  v24 = CFGetAllocator(a1);
  v25 = *(v38 + 248);
  v26 = *(*(v38 + 152) + 72);
  CMTimeMake(&v35, 2, 1);
  CMTimeMake(&v34, 1, 1);
  v27 = *(v8 + 32) ? 0 : 31;
  v11 = FigMediaProcessorCreateForCaptionConversionWithBufferQueue(v24, 1668310898, 1668310898, v25, v26, 0, &v35.value, 0, &v34, 0, v27, (v38 + 232));
  if (v11)
  {
    goto LABEL_27;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v11 = FigNotificationCenterAddWeakListeners();
  if (v11)
  {
    goto LABEL_27;
  }

  v28 = v38;
  v29 = remakerFamily_getStorage(a1);
  OUTLINED_FUNCTION_12_29(v29);
  *(v28 + 300) = v30;
  v11 = assetReaderTrack_setUpOutputBufferQueueSemaphore(*(v38 + 152));
  if (v11)
  {
    goto LABEL_27;
  }

  v31 = v38;
  *(v38 + 52) = 1;
  if (a4)
  {
    *a4 = *(v31 + 300);
  }

  remakerFamily_commitChannel(a1, v31);
  v32 = 0;
  v38 = 0;
LABEL_23:
  remakerFamily_discardChannel(a1, v38);
  if (cf)
  {
    CFRelease(cf);
  }

  return v32;
}

uint64_t assetReader_EnableVideoCompositionExtraction3(const void *a1, const __CFArray *a2, const __CFArray *a3, const void *a4, const void *a5, __CFString *a6, const void *a7, const void *a8, int a9, const __CFArray *a10, uint64_t a11, const void *a12, uint64_t a13, unsigned int a14, int a15, int a16, int a17, int a18, void *a19, const __CFDictionary *a20, int a21, const __CFDictionary *a22, const __CFDictionary *a23, uint64_t a24, CFTypeRef cf, const __CFDictionary *a26, _DWORD *a27)
{
  v153 = a3;
  Storage = remakerFamily_getStorage(a1);
  v162 = 0;
  v163 = 0;
  propertyValueOut = 0;
  v161 = 0;
  if (*Storage != 1 || !a2 || !a7 || (a17 >= 1 ? (v36 = a18 <= 0) : (v36 = 1), v36 || (v154 = a13, (*(a13 + 12) & 0x1D) != 1) || (v37 = Storage, HIDWORD(v146) = a17, LODWORD(v147) = a18, v152 = a6, cf) && (v38 = CFGetTypeID(cf), v38 != CFDictionaryGetTypeID())))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    goto LABEL_81;
  }

  v39 = *(v37 + 60);
  *(v37 + 60) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  v40 = *(v37 + 61);
  *(v37 + 61) = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  v41 = remakerFamily_createChannel(a1, 0, 1986618469, &v163);
  if (v41)
  {
    goto LABEL_82;
  }

  v149 = a7;
  v42 = v163;
  *(v163 + 48) = 0;
  *(v42 + 50) = 1;
  *(*(v42 + 152) + 28) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  v151 = a26;
  FigCFDictionaryGetBooleanIfPresent();
  v43 = v163;
  v44 = remakerFamily_getStorage(a1);
  OUTLINED_FUNCTION_12_29(v44);
  *(v43 + 300) = v45;
  v148 = cf;
  Value = CFDictionaryGetValue(cf, @"VideoCompositionProcessor_OutputBufferDescription");
  v47 = MEMORY[0x1E695E480];
  v150 = a8;
  if (!Value)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      goto LABEL_31;
    }

    goto LABEL_77;
  }

  v48 = Value;
  Count = CFArrayGetCount(Value);
  v50 = CFArrayCreateMutable(*v47, 0, MEMORY[0x1E695E9C0]);
  if (!v50)
  {
LABEL_77:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_120();
LABEL_81:
    v41 = FigSignalErrorAtGM();
LABEL_82:
    v120 = v41;
    Mutable = 0;
    goto LABEL_61;
  }

  Mutable = v50;
  if (Count >= 2)
  {
    v52 = CFArrayGetCount(v48);
    if (v52 >= 1)
    {
      v53 = v52;
      do
      {
        v54 = CFGetAllocator(a1);
        v55 = FigVisualContextCreateBasic(v54, 0, &v162);
        if (v55)
        {
          goto LABEL_79;
        }

        CFArrayAppendValue(Mutable, v162);
        if (v162)
        {
          CFRelease(v162);
          v162 = 0;
        }
      }

      while (--v53);
    }

    OUTLINED_FUNCTION_15_26();
    v56 = 1;
    *(v57 + 160) = 1;
    CFRetain(Mutable);
    OUTLINED_FUNCTION_15_26();
    *(v59 + 120) = v58;
    CFRetain(v48);
    OUTLINED_FUNCTION_15_26();
    *(v61 + 152) = v60;
    FirstValue = FigCFArrayGetFirstValue();
    v162 = CFRetain(FirstValue);
    goto LABEL_33;
  }

LABEL_31:
  v63 = CFGetAllocator(a1);
  v55 = FigVisualContextCreateBasic(v63, 0, &v162);
  if (v55)
  {
    goto LABEL_79;
  }

  CFArrayAppendValue(Mutable, v162);
  v56 = 0;
LABEL_33:
  v155 = Mutable;
  if (a21)
  {
    v64 = CFGetAllocator(a1);
    CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
    OUTLINED_FUNCTION_15_26();
    v55 = CMBufferQueueCreate(v64, 0, v66, (v65 + 72));
    if (v55)
    {
      goto LABEL_79;
    }

    v55 = assetReaderTrack_setUpOutputBufferQueueSemaphore(*(v163 + 152));
    if (v55)
    {
      goto LABEL_79;
    }

    v55 = remakerFamily_createRemakerVideoEncoderSpecification(a1, a22, &v161);
    if (v55)
    {
      goto LABEL_79;
    }

    CFGetAllocator(a1);
    if (v56)
    {
      OUTLINED_FUNCTION_10_31();
      CMTimeRangeFromTimeToTime(&v159, &start, &end);
      CMTimeMake(&start, 2, 1);
      v67 = CMTimeMake(&end, 1, 1);
      OUTLINED_FUNCTION_8_28(v67, v68, v69, v70, v71, v72, v73, v74, v124, v125, v126, v128, v129, v130, v131, v134, v137, v140, v143, v144, v145, v27, v146, v147, cf, v149, v150, a26, v152, v153, a13);
      v75 = OUTLINED_FUNCTION_14_26();
      v55 = FigMediaProcessorCreateForVideoCompressionWithVisualContextGroupAndFormatWriter(v75, v76, v77, v78, v79, v80, Mutable, v81, &v159.start.value, 0, 0, &start.value, 0, &end.value, v132, v135, v138, v141);
      if (v55)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v82 = v162;
      OUTLINED_FUNCTION_10_31();
      CMTimeRangeFromTimeToTime(&v159, &start, &end);
      OUTLINED_FUNCTION_15_26();
      v83 = Mutable;
      v85 = *(v84 + 72);
      CMTimeMake(&start, 2, 1);
      v86 = CMTimeMake(&end, 1, 1);
      OUTLINED_FUNCTION_8_28(v86, v87, v88, v89, v90, v91, v92, v93, v124, v125, v126, v128, v129, v130, v131, v134, v137, v140, v143, v144, v145, v27, v146, v147, cf, v149, v150, a26, v152, v153, a13);
      v127 = v85;
      Mutable = v83;
      v94 = OUTLINED_FUNCTION_14_26();
      v55 = FigMediaProcessorCreateForVideoCompression(v94, v95, v96, v97, v98, v99, 0, v82, v156, &v159.start.value, v127, &start.value, 0, &end.value, v133, v136, v139, v142);
      if (v55)
      {
        goto LABEL_79;
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v55 = FigNotificationCenterAddWeakListeners();
    if (!v55)
    {
      if (a23)
      {
        FigCFDictionaryGetInt32IfPresent();
        v100 = OUTLINED_FUNCTION_16_22();
        VTCompressionSession = FigMediaProcessorGetVTCompressionSession(v100);
        VTSessionSetProperties(VTCompressionSession, a23);
      }

      v102 = OUTLINED_FUNCTION_16_22();
      SampleBufferProcessor = FigMediaProcessorGetSampleBufferProcessor(v102);
      if (SampleBufferProcessor)
      {
        v104 = *MEMORY[0x1E695E4D0];
        FigBaseObject = FigSampleBufferProcessorGetFigBaseObject(SampleBufferProcessor);
        v106 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v106)
        {
          v106(FigBaseObject, @"SampleBufferProcessor_InheritOutputColorSpaceFromInput", v104);
        }

        v107 = OUTLINED_FUNCTION_16_22();
        v108 = FigMediaProcessorGetVTCompressionSession(v107);
        v109 = *MEMORY[0x1E69838A8];
        v110 = CFGetAllocator(a1);
        v55 = VTSessionCopyProperty(v108, v109, v110, &propertyValueOut);
        if (v55)
        {
          goto LABEL_79;
        }

        if (*(v37 + 424) == 1)
        {
          v111 = OUTLINED_FUNCTION_16_22();
          v112 = FigMediaProcessorGetVTCompressionSession(v111);
          v55 = VTSessionSetProperty(v112, *MEMORY[0x1E6983708], v104);
          if (v55)
          {
            goto LABEL_79;
          }
        }

        v113 = propertyValueOut;
        if (*(v37 + 58))
        {
          v114 = OUTLINED_FUNCTION_16_22();
          v115 = FigMediaProcessorGetVTCompressionSession(v114);
          VTSessionSetProperty(v115, *MEMORY[0x1E69837A0], *(v37 + 58));
        }

        goto LABEL_52;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_120();
      v55 = FigSignalErrorAtGM();
    }

LABEL_79:
    v120 = v55;
    goto LABEL_61;
  }

  v123 = v162;
  *(*(v163 + 152) + 112) = v162;
  CFRetain(v123);
  v116 = assetReaderTrack_setUpOutputVisualContextSemaphore(*(v163 + 152));
  if (v116)
  {
LABEL_72:
    v120 = v116;
    Mutable = v155;
    goto LABEL_61;
  }

  v113 = a19;
LABEL_52:
  v116 = remakerFamily_setupMultiPassTrackIfNecessary(a1, v163);
  if (v116)
  {
    goto LABEL_72;
  }

  v117 = a9;
  if (v151)
  {
    v118 = CFDictionaryGetValue(v151, @"AssetReader_FieldMode");
    v117 = a9;
  }

  else
  {
    v118 = 0;
  }

  *&v159.start.value = *v154;
  v159.start.epoch = *(v154 + 16);
  v116 = remakerFamily_finishVideoCompositionChannel(a1, v163, a2, v153, v152, v149, v150, v117, a10, a11, a12, &v159.start.value, a14, a15, a16, v118, a20, v148, v155, v113);
  if (v116)
  {
    goto LABEL_72;
  }

  if (v113)
  {
    v119 = CFRetain(v113);
  }

  else
  {
    v119 = 0;
  }

  Mutable = v155;
  v120 = 0;
  v121 = v163;
  *(*(v163 + 152) + 56) = v119;
  *a27 = *(v121 + 300);
  v163 = 0;
LABEL_61:
  remakerFamily_discardChannel(a1, v163);
  if (v162)
  {
    CFRelease(v162);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v161)
  {
    CFRelease(v161);
  }

  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }

  return v120;
}

uint64_t assetReader_enableOriginalSampleExtractionFromTrackCommon(const void *a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5)
{
  Storage = remakerFamily_getStorage(a1);
  v33 = 0;
  v32 = 0;
  cf = 0;
  if (*Storage != 1)
  {
    fig_log_get_emitter();
    v12 = FigSignalErrorAtGM();
    goto LABEL_29;
  }

  v10 = *(Storage + 72);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v11)
  {
LABEL_15:
    v18 = 4294954514;
    goto LABEL_16;
  }

  v12 = v11(v10, a2, &cf);
  if (v12)
  {
LABEL_29:
    v18 = v12;
    goto LABEL_16;
  }

  v13 = cf;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v14)
  {
    goto LABEL_15;
  }

  v12 = v14(v13, 0, &v32);
  if (v12)
  {
    goto LABEL_29;
  }

  v12 = remakerFamily_createChannel(a1, a2, v32, &v33);
  if (v12)
  {
    goto LABEL_29;
  }

  if (v32 == 1936684398)
  {
    v15 = CFGetTypeID(a1);
    v12 = remakerFamily_copyFormatDescription(v15, cf, (v33 + 40));
    if (v12)
    {
      goto LABEL_29;
    }
  }

  v12 = remakerFamily_setupMultiPassTrackIfNecessary(a1, v33);
  if (v12)
  {
    goto LABEL_29;
  }

  v16 = v33;
  *(v33 + 50) = 1;
  v16 += 50;
  *(*(v16 + 102) + 28) = 0;
  *(v16 - 2) = 1;
  FigCFDictionaryGetBooleanIfPresent();
  if (!a4)
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  OUTLINED_FUNCTION_107(MEMORY[0x1E6960C70]);
  if (FigCFDictionaryGetCMTimeIfPresent())
  {
    v17 = v33;
    if ((BYTE12(v29) & 0x1D) == 1)
    {
      *(v33 + 344) = v30;
      *(v17 + 328) = v29;
      *(v17 + 49) = 1;
    }
  }

  if (FigCFDictionaryGetBooleanIfPresent() && *(v33 + 121))
  {
    FigCFDictionaryGetCMTimeIfPresent();
  }

  FigCFDictionaryGetBooleanIfPresent();
  *(v33 + 51) = a4;
  CFGetAllocator(a1);
  CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v20 = OUTLINED_FUNCTION_173_0();
  v12 = CMBufferQueueCreate(v20, v21, v22, v23);
  if (v12)
  {
    goto LABEL_29;
  }

  v24 = CFGetAllocator(a1);
  v12 = FigRenderPipelineCreateForBufferQueue(v24, *(*(v33 + 152) + 72), 0, (v33 + 56));
  if (v12)
  {
    goto LABEL_29;
  }

  v12 = assetReader_ensureRemakerQueue();
  if (v12)
  {
    goto LABEL_29;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v12 = FigNotificationCenterAddWeakListeners();
  if (v12)
  {
    goto LABEL_29;
  }

  v25 = v33;
  v26 = remakerFamily_getStorage(a1);
  OUTLINED_FUNCTION_12_29(v26);
  *(v25 + 300) = v27;
  v18 = assetReaderTrack_setUpOutputBufferQueueSemaphore(*(v33 + 152));
  if (!v18)
  {
    v28 = v33;
    *a5 = *(v33 + 300);
    remakerFamily_commitChannel(a1, v28);
    v33 = 0;
  }

LABEL_16:
  remakerFamily_discardChannel(a1, v33);
  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t assetReaderTrack_setUpOutputBufferQueueSemaphore(uint64_t a1)
{
  *(a1 + 80) = FigSemaphoreCreate();
  v40 = *MEMORY[0x1E6960C70];
  OUTLINED_FUNCTION_6_50();
  result = CMBufferQueueInstallTrigger(v2, v3, a1, 7, v4, (a1 + 88));
  if (!result)
  {
    OUTLINED_FUNCTION_4_61(*(a1 + 72), v6, v7, v8, v9, v10, v11, v12, v40);
    result = CMBufferQueueInstallTrigger(v13, v14, a1, 8, v15, (a1 + 96));
    if (!result)
    {
      if (*(a1 + 160))
      {
        v16 = *(a1 + 128);
        if (v16)
        {
          Count = CFArrayGetCount(v16);
          if (Count > 0)
          {
            v18 = Count;
            v19 = 8 * Count;
            v20 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
            *(a1 + 136) = v20;
            if (v20)
            {
              v21 = malloc_type_malloc(v19, 0x2004093837F09uLL);
              *(a1 + 144) = v21;
              if (v21)
              {
                v22 = 0;
                v23 = 0;
                while (1)
                {
                  if (v23)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 128), v23);
                    if (!ValueAtIndex)
                    {
                      break;
                    }

                    v25 = ValueAtIndex;
                    OUTLINED_FUNCTION_6_50();
                    result = CMBufferQueueInstallTrigger(v27, v28, a1, 7, v29, (v26 + v22));
                    if (result)
                    {
                      return result;
                    }

                    OUTLINED_FUNCTION_4_61(result, v30, v31, v32, v33, v34, v35, v36, v41);
                    result = CMBufferQueueInstallTrigger(v25, v38, a1, 8, v39, (v37 + v22));
                    if (result)
                    {
                      return result;
                    }
                  }

                  else
                  {
                    **(a1 + 136) = *(a1 + 88);
                    **(a1 + 144) = *(a1 + 96);
                  }

                  ++v23;
                  v22 += 8;
                  if (v18 == v23)
                  {
                    return CMBufferQueueInstallTriggerWithIntegerThreshold(*(a1 + 72), assetReaderTrack_defer_outputQueueBecameEmpty, a1, 10, 1, (a1 + 104));
                  }
                }
              }
            }
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        return FigSignalErrorAtGM();
      }

      else
      {
        return CMBufferQueueInstallTriggerWithIntegerThreshold(*(a1 + 72), assetReaderTrack_defer_outputQueueBecameEmpty, a1, 10, 1, (a1 + 104));
      }
    }
  }

  return result;
}

void assetReaderTrack_defer_outputQueueBecameEmpty(void *a1)
{
  v2 = assetReaderTrack_copyRemaker(a1);
  Storage = remakerFamily_getStorage(v2);
  if (v2)
  {
    v4 = Storage;
    if ((*Storage - 7) >= 0xFFFFFFFC && !assetReader_ensureRemakerQueue())
    {
      remakerFamily_safeDispatchAsync(v4[7], a1, assetReaderTrack_outputQueueBecameEmpty);
    }

    CFRelease(v2);
  }
}

uint64_t assetReaderTrack_setUpOutputVisualContextSemaphore(uint64_t a1)
{
  *(a1 + 80) = FigSemaphoreCreate();
  if (*(a1 + 160))
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      Count = CFArrayGetCount(v2);
      if (Count >= 1)
      {
        v4 = Count;
        v5 = 0;
        while (CFArrayGetValueAtIndex(*(a1 + 120), v5))
        {
          if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
          {
            return 4294954514;
          }

          OUTLINED_FUNCTION_7_39();
          v6 = OUTLINED_FUNCTION_400_0();
          result = v7(v6);
          if (result)
          {
            return result;
          }

          if (v4 == ++v5)
          {
            goto LABEL_12;
          }
        }
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }

  else
  {
    v9 = *(a1 + 112);
    if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      return 4294954514;
    }

    OUTLINED_FUNCTION_7_39();
    result = v10(v9);
    if (result)
    {
      return result;
    }

LABEL_12:
    v11 = *(a1 + 112);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v12)
    {
      return 4294954514;
    }

    result = v12(v11, assetReaderTrack_sourceNoMoreImages, a1);
    if (result)
    {
      return result;
    }

    v13 = *(a1 + 112);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v14)
    {

      return v14(v13, assetReaderTrack_defer_visualContextBecameEmpty, a1);
    }

    else
    {
      return 4294954514;
    }
  }
}

void assetReaderTrack_defer_visualContextBecameEmpty(uint64_t a1, void *a2)
{
  v3 = assetReaderTrack_copyRemaker(a2);
  Storage = remakerFamily_getStorage(v3);
  if (v3)
  {
    v5 = Storage;
    OUTLINED_FUNCTION_18_20();
    if (!(!v7 & v6) && !assetReader_ensureRemakerQueue())
    {
      remakerFamily_safeDispatchAsync(*(v5 + 56), a2, assetReaderTrack_visualContextBecameEmpty);
    }

    CFRelease(v3);
  }
}

const __CFArray *assetReader_outputBufferQueuesAtEndOfData(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v3 = Count;
      for (i = 0; i != v3; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
        result = CMBufferQueueIsAtEndOfData(ValueAtIndex);
        if (!result)
        {
          break;
        }
      }
    }
  }

  return result;
}

const __CFArray *assetReader_outputBufferQueuesIfDataReady(const __CFArray *result, CMTime *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E6960C88];
  v15 = *(MEMORY[0x1E6960C88] + 8);
  if (result)
  {
    v3 = result;
    v4 = *(MEMORY[0x1E6960C88] + 16);
    v5 = *(MEMORY[0x1E6960C88] + 12);
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
        CMBufferQueueGetFirstPresentationTimeStamp(&time1, ValueAtIndex);
        value = time1.value;
        flags = time1.flags;
        timescale = time1.timescale;
        epoch = time1.epoch;
        if (CMBufferQueueIsEmpty(ValueAtIndex) || (flags & 1) == 0)
        {
          break;
        }

        if (v7)
        {
          OUTLINED_FUNCTION_13_22();
          v12.value = value;
          v12.timescale = timescale;
          v12.flags = flags;
          v12.epoch = epoch;
          if (CMTimeCompare(&time1, &v12))
          {
            break;
          }
        }

        else
        {
          v14 = value;
          v15 = timescale;
          v4 = epoch;
          v5 = flags;
        }

        if (Count == ++v7)
        {
          v7 = Count;
          break;
        }
      }
    }

    OUTLINED_FUNCTION_13_22();
    v12 = *a2;
    v11 = CMTimeCompare(&time1, &v12);
    result = 0;
    if (v7 == Count)
    {
      if (v11)
      {
        a2->value = v14;
        a2->timescale = v15;
        a2->flags = v5;
        a2->epoch = v4;
        return 1;
      }
    }
  }

  return result;
}

uint64_t assetReader_createTaggedBufferGroupSampleBuffer(uint64_t a1, uint64_t a2)
{
  value = 0;
  v4 = *(a1 + 152);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
  }

  else
  {
    Count = 0;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (*(a1 + 72))
    {
      if (Count >= 1)
      {
        v8 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 128), v8);
          if (!ValueAtIndex)
          {
            break;
          }

          v10 = CMBufferQueueDequeueIfDataReadyAndRetain(ValueAtIndex);
          v11 = v10;
          if (!v10)
          {
            goto LABEL_25;
          }

          CMSampleBufferGetPresentationTimeStamp(&v21, v10);
          *a2 = v21;
          if ((*(a2 + 12) & 1) == 0)
          {
            v11 = 0;
            goto LABEL_25;
          }

          ImageBuffer = CMSampleBufferGetImageBuffer(v11);
          value = ImageBuffer;
          if (!ImageBuffer)
          {
            break;
          }

          CFArrayAppendValue(Mutable, ImageBuffer);
          value = 0;
          CFRelease(v11);
          if (Count == ++v8)
          {
            goto LABEL_22;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        goto LABEL_34;
      }
    }

    else if (Count >= 1)
    {
      v13 = 0;
      while (1)
      {
        v14 = CFArrayGetValueAtIndex(*(a1 + 120), v13);
        *&v19.value = *a2;
        v19.epoch = *(a2 + 16);
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v15)
        {
          v11 = 4294954514;
          goto LABEL_25;
        }

        v21 = v19;
        v16 = v15(v14, v6, &v21, 3, &value, 0, 0);
        if (v16)
        {
          goto LABEL_24;
        }

        if (!value)
        {
          break;
        }

        CFArrayAppendValue(Mutable, value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }

        if (Count == ++v13)
        {
          goto LABEL_22;
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      goto LABEL_34;
    }

LABEL_22:
    v17 = OUTLINED_FUNCTION_400_0();
    v16 = MEMORY[0x19A8D33F0](v17);
    if (!v16)
    {
      v21 = *a2;
      OUTLINED_FUNCTION_107(MEMORY[0x1E6960C70]);
      v16 = FigSampleBufferCreateForTaggedBufferGroup();
    }

    goto LABEL_24;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();
LABEL_34:
  v16 = FigSignalErrorAtGM();
LABEL_24:
  v11 = v16;
LABEL_25:
  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v11;
}

uint64_t FigAssetReaderCreateWithAsset_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetReaderCreateWithAsset_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetReaderCreateWithAsset_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetReaderCreateWithAsset_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_ensureRemakerQueue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_SetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_SetProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_SetProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_SetProperty_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_SetProperty_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_SetProperty_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_SetProperty_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_SetProperty_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_SetProperty_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_SetProperty_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_5(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_6(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_10(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_11(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a3 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_16(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_17(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_18(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_19(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_20(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableDecodedVideoExtractionFromTrack_cold_21(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableAudioMixdownExtraction_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableAudioMixdownExtraction_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableAudioMixdownExtraction_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableAudioMixdownExtraction_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableAudioMixdownExtraction_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableAudioMixdownExtraction_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableAudioMixdownExtraction_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_EnableAudioMixdownExtraction_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_StartExtractionForTimeRanges_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_StartExtractionForTimeRanges_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_StartExtractionForTimeRanges_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_StartExtractionForTimeRanges_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_StartExtractionForTimeRangesFromTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_StartExtractionForTimeRangesFromTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_StartExtractionForTimeRangesFromTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_StartExtractionForTimeRangesFromTrack_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL assetReader_StartExtractionForTimeRangesFromTrack_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t assetReaderTrack_dataBecameReady_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t assetReaderTrack_endOfDataReached_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t assetReaderTrack_outputQueueBecameEmpty_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t assetReaderTrack_outputQueueBecameEmpty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t assetReaderTrack_sourceImageAvailable_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

void assetReaderTrack_sourceNoMoreImages_cold_1(uint64_t a1, const void *a2)
{
  assetReaderTrack_safelyPostNotificationWithExtractionID(a1, @"AssetReader_SampleBufferNowAvailable");
  assetReaderTrack_safelyPostNotificationWithExtractionID(a1, @"AssetReader_EndOfDataReached");
  FigSemaphoreSignal();

  CFRelease(a2);
}

uint64_t assetReaderTrack_sourceNoMoreImages_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

void assetReaderTrack_visualContextBecameEmpty_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_20();
  if (!(!v4 & v3))
  {
    *(*(a2 + 152) + 200) = 1;
    if (*(a2 + 356))
    {
      remakerFamily_startNextSegmentIfMultiPassComplete(a2);
    }
  }

  CFRelease(a2);
}

uint64_t assetReaderTrack_visualContextBecameEmpty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t assetReader_startExtractionForTimeRangeCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetReader_startExtractionForTimeRangeCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataCreateActualKey(const __CFAllocator *a1, __CFString *cf1, const void *ValueAtIndex, unint64_t a4, __CFDictionary **a5)
{
  theArray = 0;
  if (!(a4 | a5))
  {
    goto LABEL_28;
  }

  v8 = cf1;
  if (!CFEqual(cf1, @"comn"))
  {
    if (!CFEqual(v8, @"mdta"))
    {
      goto LABEL_10;
    }

    v12 = CFGetTypeID(ValueAtIndex);
    if (v12 == CFStringGetTypeID())
    {
      goto LABEL_10;
    }

LABEL_28:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    goto LABEL_18;
  }

  v10 = CFGetTypeID(ValueAtIndex);
  if (v10 != CFStringGetTypeID())
  {
    goto LABEL_28;
  }

  v11 = FigQuickTimeMetadataCopyNativeKeysFromCommonKey(ValueAtIndex, &theArray);
  if (!v11)
  {
    if (!theArray || !CFArrayGetCount(theArray))
    {
LABEL_17:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
LABEL_18:
      v11 = FigSignalErrorAtGM();
      goto LABEL_19;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    v8 = @"mdta";
LABEL_10:
    if (!a5)
    {
      goto LABEL_13;
    }

    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v14 = Mutable;
      CFDictionaryAddValue(Mutable, @"key", ValueAtIndex);
      CFDictionaryAddValue(v14, @"keyspace", v8);
      *a5 = v14;
LABEL_13:
      if (a4)
      {
        if (ValueAtIndex)
        {
          v15 = CFRetain(ValueAtIndex);
        }

        else
        {
          v15 = 0;
        }

        v16 = 0;
        *a4 = v15;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_22;
    }

    goto LABEL_17;
  }

LABEL_19:
  v16 = v11;
LABEL_22:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v16;
}

uint64_t FigQuickTimeMetadataSerializerFinalize_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigQuickTimeMetadataSerializerCopyDebugDescription_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigQuickTimeMetadataSerializerCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerAddItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerAddItem_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerAddItem_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerAddItem_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerAddItem_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerAddItem_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerAddItem_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerAddItem_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerAddItem_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerContainsKey_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigQuickTimeMetadataSerializerContainsKey_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigQuickTimeMetadataSerializerContainsKey_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigQuickTimeMetadataCreateNewItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerCreateBBuf_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerCreateBBuf_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerCreateBBuf_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerCreateBBuf_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerCreateBBuf_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerCreateBBuf_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerCreateBBuf_cold_7(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerCreateBBuf_cold_8(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerCreateBBuf_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerCreateBBuf_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerCreateCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataSerializerCreateCopy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void *piqca_loadCAImageQueueSetEDRDeadline()
{
  result = dlopen("/System/Library/Frameworks/QuartzCore.framework/QuartzCore", 1);
  if (result)
  {
    result = dlsym(result, "CAImageQueueSetEDRDeadline");
    sCAImageQueueSetEDRDeadline = result;
    if (!result)
    {

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

void piqca_syncMomentSourceCallback(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v14 = CACurrentMediaTime();
    v15 = *(DerivedStorage + 3080);
    v16 = *(DerivedStorage + 3088);
    v17 = *(DerivedStorage + 3096);
    v18 = *(a2 + 4);
    if (v18)
    {
      *(DerivedStorage + 2544) = mach_absolute_time();
      piqca_gmstats_dump();
      v18 = *(a2 + 4);
    }

    if ((v18 & 3) != 0 || vabdd_f64(OUTLINED_FUNCTION_1_80(v6, v7, v8, v9, v10, v11, v12, v13, *&v29.value, v29.epoch), v17 + (v14 - v15) * v16) >= 0.005)
    {
      v29 = *(a2 + 40);
      Seconds = CMTimeGetSeconds(&v29);
      v28 = OUTLINED_FUNCTION_1_80(v20, v21, v22, v23, v24, v25, v26, v27, *&v29.value, v29.epoch);
      piqca_setImageQueueTiming(Seconds, v28, *(a2 + 8));
    }

    CFRelease(v4);
  }
}

uint64_t piqca_requestRendererPreparationForPreroll(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 3200);
  FigSimpleMutexUnlock();
  if (!v5)
  {
    return 4294951395;
  }

  piqca_postRendererPreparationCompletedIfPreviouslyRequestedAndRecordNewRequest(a1, 1, a2);
  return 0;
}

uint64_t piqca_createSlot(const void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19[24] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1 && a4)
  {
    CASlot = FPSupport_CreateCASlot(*DerivedStorage, &v18);
    if (!CASlot)
    {
      v10 = malloc_type_calloc(1uLL, 0x10uLL, 0x80040803F642BuLL);
      if (v10)
      {
        v11 = v10;
        *v10 = a3;
        v10[1] = a2;
        v12 = CFGetAllocator(a1);
        v13 = FigImageQueueSlotCreateWithSlotID(v12, v18, piqcas_imageQueueSlotWasDestroyedCallback, v11, v19);
        if (v13)
        {
          v15 = v13;
          v17 = v19[0];
          free(v11);
          if (v17)
          {
            CFRelease(v17);
          }
        }

        else
        {
          if (dword_1EAF19510)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v15 = 0;
          *a4 = v19[0];
        }

        return v15;
      }

      return FigSignalErrorAtGM();
    }

    return CASlot;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigImageQueueCreateForCoreAnimationWithOptions_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueCreateForCoreAnimationWithOptions_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueCreateForCoreAnimationWithOptions_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueCreateForCoreAnimationWithOptions_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t piqca_setProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t piqca_setProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t piqca_enqueueImageWithRotation_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

id FigTrialCopyTrialValueForFactor(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (!a1 || ![*(a1 + 72) count])
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v5 = 0;
  while (![a2 isEqualToString:{objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 72), "objectAtIndex:", v5), "factor"), "name")}])
  {
    if ([*(a1 + 72) count] <= ++v5)
    {
      goto LABEL_6;
    }
  }

  v9 = [*(a1 + 40) levelForFactor:a2 withNamespaceName:*(a1 + 48)];
  v6 = v9;
  if (v9)
  {
    v10 = [v9 metadata];
    if (v10)
    {
      v11 = [v10 valueForKey:@"clientNameMetaData"];
      if (v11)
      {
        v12 = *(a1 + 24);
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], v11, @",");
        if (ArrayBySeparatingStrings)
        {
          v14 = ArrayBySeparatingStrings;
          v16.length = CFArrayGetCount(ArrayBySeparatingStrings);
          v16.location = 0;
          if (CFArrayContainsValue(v14, v16, v12))
          {
            CFRelease(v14);
            goto LABEL_7;
          }

          v15 = FigCFEqual();
          CFRelease(v14);
          if (v15)
          {
            goto LABEL_7;
          }
        }

        goto LABEL_6;
      }
    }
  }

LABEL_7:
  v7 = v6;
  objc_autoreleasePoolPop(v4);
  return v7;
}

uint64_t FigTrialGetInt(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    v5 = FigTrialCopyTrialValueForFactor(a1, a2);
    v6 = v5;
    if (v5 && [v5 levelOneOfCase] == 13)
    {
      a1 = [v6 longValue];
    }

    else
    {
      a1 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return a1;
}

double FigTrialGetDouble(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = 0.0;
  if (a1)
  {
    v6 = FigTrialCopyTrialValueForFactor(a1, a2);
    v7 = v6;
    if (v6 && [v6 levelOneOfCase] == 15)
    {
      [v7 doubleValue];
      v5 = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

__CFString *FigTrialCopyExperimentId(__CFString *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    isa = a1[2].isa;
    if (isa)
    {
      a1 = isa;
    }

    else
    {
      a1 = @"Empty";
    }
  }

  objc_autoreleasePoolPop(v2);
  return a1;
}

uint64_t FigTrialCreate(const void *a1, uint64_t a2, uint64_t *a3)
{
  if (!a3)
  {
    return 4294948235;
  }

  if (a1)
  {
    if (qword_1ED4CAA70 != -1)
    {
      dispatch_once(&qword_1ED4CAA70, &__block_literal_global_32);
    }

    v6 = _MergedGlobals_55;
    if (_MergedGlobals_55)
    {
      return v6;
    }

    v7 = *MEMORY[0x1E695E480];
    if (qword_1ED4CAA60 != -1)
    {
      OUTLINED_FUNCTION_0_82();
      dispatch_once_f(v19, v20, v21);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v9 = Instance;
      Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(v9 + 80) = Mutable;
      if (Mutable && (*(v9 + 24) = CFRetain(a1), v11 = FigSimpleMutexCreate(), (*(v9 + 32) = v11) != 0))
      {
        *(v9 + 56) = 221;
        if (qword_1ED4CAA70 != -1)
        {
          dispatch_once(&qword_1ED4CAA70, &__block_literal_global_32);
        }

        if (_MergedGlobals_55 || (FigSimpleMutexLock(), v13 = qword_1ED4CAA80, ++qword_1ED4CAA88, FigSimpleMutexUnlock(), !v13))
        {
          *(v9 + 40) = 0;
        }

        else
        {
          v14 = CFRetain(v13);
          *(v9 + 40) = v14;
          if (v14)
          {
            if (qword_1ED4CAA70 != -1)
            {
              dispatch_once(&qword_1ED4CAA70, &__block_literal_global_32);
            }

            v6 = _MergedGlobals_55;
            if (!_MergedGlobals_55)
            {
              Value = CFDictionaryGetValue(qword_1ED4CAA98, [MEMORY[0x1E696AD98] numberWithInt:a2]);
              if (Value)
              {
                Value = CFRetain(Value);
              }

              *(v9 + 48) = Value;
              v16 = CFDictionaryGetValue(qword_1ED4CAAA0, [MEMORY[0x1E696AD98] numberWithInt:a2]);
              if (v16)
              {
                v16 = CFRetain(v16);
              }

              *(v9 + 64) = v16;
              v17 = CFDictionaryGetValue(qword_1ED4CAAA8, [MEMORY[0x1E696AD98] numberWithInt:a2]);
              if (v17)
              {
                v17 = CFRetain(v17);
              }

              *(v9 + 72) = v17;
              if (dword_1EAF170C0)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v6 = 0;
              *a3 = v9;
              return v6;
            }

            goto LABEL_16;
          }
        }

        v6 = 4294948236;
      }

      else
      {
        OUTLINED_FUNCTION_243();
        FigSignalErrorAtGM();
        v6 = 0;
      }

LABEL_16:
      CFRelease(v9);
      return v6;
    }
  }

  OUTLINED_FUNCTION_243();

  return FigSignalErrorAtGM();
}

void FigTrial_Finalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 80) = 0;
  }

  FigSimpleMutexDestroy();
  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    if (qword_1ED4CAA70 != -1)
    {
      dispatch_once(&qword_1ED4CAA70, &__block_literal_global_32);
    }

    if (!_MergedGlobals_55)
    {
      FigSimpleMutexLock();
      v5 = qword_1ED4CAA88 == 1;
      if (qword_1ED4CAA88 >= 1)
      {
        --qword_1ED4CAA88;
        if (v5)
        {
          if (byte_1ED4CAA90)
          {
            byte_1ED4CAA90 = 0;
            [qword_1ED4CAA80 refresh];
            fstc_populateCachesWithMutex(&qword_1ED4CAA78);
          }
        }
      }

      FigSimpleMutexUnlock();
    }

    CFRelease(v4);
  }
}

uint64_t fstc_populateCachesWithMutex_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fstc_populateCachesWithMutex_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void __getTRINamespaceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getTRINamespaceClass(void)_block_invoke") description:{@"FigTrial.m", 68, @"Unable to find class %s", "TRINamespace"}];
  __break(1u);
}

void TrialLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *TrialLibrary(void)") description:{@"FigTrial.m", 64, @"%s", *a1}];
  __break(1u);
}

void __getTRIClientClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getTRIClientClass(void)_block_invoke") description:{@"FigTrial.m", 67, @"Unable to find class %s", "TRIClient"}];
  __break(1u);
}

uint64_t FigImageQueueArrayCreateImageQueueConfigurationArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueArrayCreateImageQueueConfigurationArray_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueArrayCreateImageQueueConfigurationArray_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueSlotCreateWithSlotID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueSlotCreateWithSlotID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueSlotCreateWithSlotID_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figFairplayPSSHAtom_replyingMessageHandler()
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t FigVideoTargetCreateRemoteWithVideoReceiver(uint64_t a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  v13 = 0;
  cf = 0;
  if (!a2 || !a4)
  {
    v9 = FigSignalErrorAtGM();
    goto LABEL_10;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    v10 = 4294954514;
    goto LABEL_8;
  }

  v9 = v8(a2, &v13);
  if (v9)
  {
LABEL_10:
    v10 = v9;
    goto LABEL_8;
  }

  v10 = figVideoTargetRemoteCreateCommon(a1, v13, a3, &cf);
  if (v10)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 80) = CFRetain(a2);
    *a4 = cf;
    cf = 0;
  }

LABEL_8:
  FigXPCRelease();
  return v10;
}

uint64_t remoteXPCVideoTargetClient_EnsureClientEstablished()
{
  if (_MergedGlobals_57 != -1)
  {
    OUTLINED_FUNCTION_0_84();
    dispatch_once_f(v7, v7 + 1, v8);
  }

  v0 = qword_1ED4CAAC8;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v1 = dispatch_time(0, 10000000000);
  if (v0)
  {
    v2 = v1;
    FigSimpleMutexLock();
    v3 = *v0;
    FigSimpleMutexUnlock();
    if (v3 != 1)
    {
      v4 = dispatch_group_create();
      dispatch_retain(v4);
      dispatch_group_enter(v4);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 0x40000000;
      v9[2] = __FigVideoTargetConnectionEstablisher_EstablishConnectionSync_block_invoke;
      v9[3] = &unk_1E7487058;
      v9[4] = &v10;
      v9[5] = v4;
      FigVideoTargetConnectionEstablisher_EstablishConnectionAsync(v0, v9);
      if (dispatch_group_wait(v4, v2))
      {
        *(v11 + 6) = FigSignalErrorAtGM();
      }

      if (v4)
      {
        dispatch_release(v4);
      }
    }
  }

  else
  {
    *(v11 + 6) = FigSignalErrorAtGM();
  }

  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  if (!v5)
  {
    if (*qword_1ED4CAAC8 == 1)
    {
      return 0;
    }

    else
    {
      return *(qword_1ED4CAAC8 + 4);
    }
  }

  return v5;
}

uint64_t videoTargetRemote_completeObjectSetupWithServerReply(const void *a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  uint64 = xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  v7 = FigXPCMessageCopyCFString();
  if (v7)
  {
    return v7;
  }

  if (dword_1EAF17100)
  {
    OUTLINED_FUNCTION_4_62();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (OUTLINED_FUNCTION_102_0(os_log_and_send_and_compose_flags_and_os_log_type, v9, v10, v11, v12, v13, v14, v15, v34, v35, v36, SBYTE2(v36), BYTE3(v36), SHIDWORD(v36)))
    {
      v16 = v2;
    }

    else
    {
      v16 = v2 & 0xFFFFFFFE;
    }

    if (v16)
    {
      OUTLINED_FUNCTION_3_60();
      v38 = v17;
      v39 = uint64;
      v40 = 2114;
      v41 = v18;
      LODWORD(v35) = 42;
      v34 = v37;
      OUTLINED_FUNCTION_5_55();
      v2 = HIDWORD(v36);
    }

    OUTLINED_FUNCTION_7_40();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 116))
  {
    OUTLINED_FUNCTION_4_62();
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (OUTLINED_FUNCTION_102_0(v19, v20, v21, v22, v23, v24, v25, v26, v34, v35, v36, SBYTE2(v36), BYTE3(v36), SHIDWORD(v36)))
    {
      v27 = v2;
    }

    else
    {
      v27 = v2 & 0xFFFFFFFE;
    }

    if (v27)
    {
      OUTLINED_FUNCTION_3_60();
      v38 = 1024;
      LODWORD(v39) = v28;
      OUTLINED_FUNCTION_5_55();
    }

    OUTLINED_FUNCTION_7_40();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    usleep(*(DerivedStorage + 116));
  }

  v7 = remoteXPCVideoTarget_CompleteVideoTargetObjectSetup(a1, uint64, 0);
  if (v7)
  {
    return v7;
  }

  if (!*(DerivedStorage + 112))
  {
    return 0;
  }

  v42 = 0;
  v37[0] = 0;
  ObjectID = FigVideoTargetXPCRemoteGetObjectID(a1, v37);
  if (!ObjectID)
  {
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      if (_MergedGlobals_57 != -1)
      {
        OUTLINED_FUNCTION_0_84();
        dispatch_once_f(v32, v32 + 1, v33);
      }

      ObjectID = FigXPCRemoteClientSendAsyncMessage();
    }
  }

  v30 = ObjectID;
  FigXPCRelease();
  return v30;
}

uint64_t remoteXPCVideoTarget_informServerActiveStateChanged(uint64_t a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  v3 = FigXPCCreateBasicMessage();
  if (!v3)
  {
    xpc_dictionary_set_BOOL(0, "Active", a2 != 0);
    if (_MergedGlobals_57 != -1)
    {
      OUTLINED_FUNCTION_0_84();
      OUTLINED_FUNCTION_6_51(v9, v10, v11);
    }

    v3 = FigXPCRemoteClientSendSyncMessage();
  }

  v4 = v3;
  FigXPCRelease();
  if (_MergedGlobals_57 != -1)
  {
    OUTLINED_FUNCTION_0_84();
    OUTLINED_FUNCTION_6_51(v6, v7, v8);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t remoteXPCVideoTarget_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (_MergedGlobals_57 != -1)
  {
    OUTLINED_FUNCTION_0_84();
    OUTLINED_FUNCTION_6_51(v7, v8, v9);
  }

  FigXPCRemoteClientDisassociateObject();
  if (*(DerivedStorage + 8))
  {
    goto LABEL_8;
  }

  if (!FigXPCCreateBasicMessage())
  {
    if (_MergedGlobals_57 != -1)
    {
      OUTLINED_FUNCTION_0_84();
      OUTLINED_FUNCTION_6_51(v13, v14, v15);
    }

    if (!FigXPCRemoteClientSendAsyncMessage())
    {
LABEL_8:
      v1 = *(DerivedStorage + 80);
      if (v1)
      {
        CFRelease(v1);
        *(DerivedStorage + 80) = 0;
      }

      FigSimpleMutexDestroy();
      v2 = *(DerivedStorage + 40);
      if (v2)
      {
        CFRelease(v2);
        *(DerivedStorage + 40) = 0;
      }

      v3 = *(DerivedStorage + 24);
      if (v3)
      {
        CFRelease(v3);
        *(DerivedStorage + 24) = 0;
      }

      if (*(DerivedStorage + 104))
      {
        FigSimpleMutexDestroy();
        *(DerivedStorage + 104) = 0;
      }

      v4 = *(DerivedStorage + 88);
      if (v4)
      {
        CFRelease(v4);
        *(DerivedStorage + 88) = 0;
      }

      v5 = *(DerivedStorage + 72);
      if (v5)
      {
        CFRelease(v5);
        *(DerivedStorage + 72) = 0;
      }

      if (*(DerivedStorage + 56))
      {
        FigSimpleMutexDestroy();
        *(DerivedStorage + 56) = 0;
      }
    }
  }

  FigXPCRelease();
  if (_MergedGlobals_57 != -1)
  {
    OUTLINED_FUNCTION_0_84();
    OUTLINED_FUNCTION_6_51(v10, v11, v12);
  }

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t remoteXPCVideoTarget_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CVPixelBufferRef *a4)
{
  v27 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 || !a4)
  {
    goto LABEL_48;
  }

  v9 = DerivedStorage;
  *a4 = 0;
  if (*(DerivedStorage + 80))
  {
    v10 = CMBaseObjectGetDerivedStorage();
    pixelBufferOut = 0;
    if (*(v10 + 80))
    {
      v11 = v10;
      if (FigVideoTargetGetCorrespondingVideoReceiverPropertyForVideoTargetPropertyKey())
      {
        CMBaseObject = FigVideoReceiverGetCMBaseObject(*(v11 + 80));
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v13)
        {
          if (!v13(CMBaseObject, pixelBufferOut, a3, a4))
          {
LABEL_37:
            v16 = 0;
            goto LABEL_38;
          }
        }
      }
    }
  }

  if (CFEqual(a2, @"InstanceType"))
  {
    v14 = kFigVideoTargetInstanceType_Remote;
LABEL_10:
    v15 = *v14;
LABEL_11:
    v15 = CFRetain(v15);
LABEL_12:
    v16 = 0;
    *a4 = v15;
    goto LABEL_38;
  }

  if (!CFEqual(a2, @"LastSampledCVPixelBuffer"))
  {
    if (CFEqual(a2, @"VideoReceiver"))
    {
      v15 = *(v9 + 80);
      if (!v15)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (CFEqual(a2, @"ReceiverLoadingState"))
    {
      FigSimpleMutexLock();
      v20 = *(v9 + 88);
      if (v20)
      {
        v20 = CFRetain(v20);
      }

      *a4 = v20;
      FigSimpleMutexUnlock();
      goto LABEL_37;
    }

    if (CFEqual(a2, @"IsValid"))
    {
      isValid = remoteXPCVideoTarget_isValid();
      v14 = MEMORY[0x1E695E4D0];
      if (!isValid)
      {
        v14 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_10;
    }

    if (remoteXPCVideoTarget_isFullySetupWithServer())
    {
      ObjectID = remoteXPCVideoTarget_GetObjectID(a1, &v27);
      if (!ObjectID)
      {
        RemoteVideoTargetGetRemoteClient();
        ObjectID = FigXPCSendStdCopyPropertyMessage();
      }

      goto LABEL_49;
    }

LABEL_48:
    OUTLINED_FUNCTION_243();
    ObjectID = FigSignalErrorAtGM();
LABEL_49:
    v16 = ObjectID;
    goto LABEL_38;
  }

  v29 = 0;
  pixelBufferOut = 0;
  xdict = 0;
  CMBaseObjectGetDerivedStorage();
  if (remoteXPCVideoTarget_isFullySetupWithServer())
  {
    v17 = FigXPCCreateBasicMessage();
    if (!v17)
    {
      if (_MergedGlobals_57 != -1)
      {
        OUTLINED_FUNCTION_0_84();
        dispatch_once_f(&_MergedGlobals_57, &qword_1ED4CAAC8, v26);
      }

      v17 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v17)
      {
        value = xpc_dictionary_get_value(xdict, "LastSampledIOSurface");
        if (value)
        {
          v19 = IOSurfaceLookupFromXPCObject(value);
          if (v19)
          {
            v16 = CVPixelBufferCreateWithIOSurface(a3, v19, 0, &pixelBufferOut);
            if (!v16)
            {
              *a4 = pixelBufferOut;
              pixelBufferOut = 0;
            }
          }

          else
          {
            OUTLINED_FUNCTION_243();
            v16 = FigSignalErrorAtGM();
          }
        }

        else
        {
          v19 = 0;
          v16 = 0;
        }

        goto LABEL_23;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();
    v17 = FigSignalErrorAtGM();
  }

  v16 = v17;
  v19 = 0;
LABEL_23:
  FigXPCRelease();
  FigXPCRelease();
  if (v19)
  {
    CFRelease(v19);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (_MergedGlobals_57 != -1)
  {
    OUTLINED_FUNCTION_0_84();
    dispatch_once_f(&_MergedGlobals_57, &qword_1ED4CAAC8, v25);
  }

  FigXPCRemoteClientKillServerOnTimeout();
LABEL_38:
  if (_MergedGlobals_57 != -1)
  {
    OUTLINED_FUNCTION_0_84();
    dispatch_once_f(&_MergedGlobals_57, &qword_1ED4CAAC8, v24);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v16;
}

uint64_t remoteXPCVideoTarget_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 || !a3)
  {
    goto LABEL_21;
  }

  if (!*(DerivedStorage + 80) || (v7 = CMBaseObjectGetDerivedStorage(), v18 = 0, !*(v7 + 80)) || (v8 = v7, !FigVideoTargetGetCorrespondingVideoReceiverPropertyForVideoTargetPropertyKey()) || (CMBaseObject = FigVideoReceiverGetCMBaseObject(*(v8 + 80)), (v10 = *(*(CMBaseObjectGetVTable() + 8) + 56)) == 0) || v10(CMBaseObject, v18, a3))
  {
    v11 = CMBaseObjectGetDerivedStorage();
    if (FigCFEqual())
    {
      FigSimpleMutexLock();
      CFDictionarySetValue(*(v11 + 72), a2, a3);
      FigSimpleMutexUnlock();
    }

    if (remoteXPCVideoTarget_isFullySetupWithServer())
    {
      ObjectID = remoteXPCVideoTarget_GetObjectID(a1, &v17);
      if (!ObjectID)
      {
        if (_MergedGlobals_57 != -1)
        {
          OUTLINED_FUNCTION_0_84();
          dispatch_once_f(&_MergedGlobals_57, &qword_1ED4CAAC8, v16);
        }

        ObjectID = FigXPCSendStdSetPropertyMessage();
      }

      goto LABEL_15;
    }

    if (!FigCFEqual())
    {
LABEL_21:
      OUTLINED_FUNCTION_243();
      ObjectID = FigSignalErrorAtGM();
LABEL_15:
      v13 = ObjectID;
      goto LABEL_18;
    }
  }

  v13 = 0;
LABEL_18:
  if (_MergedGlobals_57 != -1)
  {
    OUTLINED_FUNCTION_0_84();
    dispatch_once_f(&_MergedGlobals_57, &qword_1ED4CAAC8, v15);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v13;
}

uint64_t FigVideoTargetXPCRemoteGetObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoTargetXPCRemoteGetObjectID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCVideoTarget_GetObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCVideoTarget_GetObjectID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVideoTargetRemoteCreateCommon_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVideoTargetRemoteCreateCommon_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoTargetCreateRemoteSharingVideoReceiverFromRemoteVideoTarget_cold_2(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t remoteXPCVideoTarget_CreateVideoTargetObject_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoTargetRemoteConnectionEstablisherCreateOnce_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCVideoTarget_copyPreferredDataChannelGroups_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCVideoTarget_copyPreferredDataChannelGroups_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCVideoTarget_copyDataChannelSettings_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCVideoTarget_copyDataChannelSettings_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCVideoTarget_addLayersToLayerSynchronizerConfiguration_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCVideoTarget_addLayersToLayerSynchronizerConfiguration_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCVideoTarget_updateDurationWithDeferredTransaction_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLDocumentWriterStyleOptimizer_EndElement(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[2];
  v3 = DerivedStorage[1];
  if (v2 != v3)
  {
    goto LABEL_12;
  }

  ChildrenCount = FigTTMLDocumentWriterElementGetChildrenCount(DerivedStorage[1]);
  if (ChildrenCount >= 1)
  {
    v5 = ChildrenCount;
    v6 = 0;
    while (1)
    {
      ChildAtIndex = FigTTMLDocumentWriterElementGetChildAtIndex(v3, v6);
      if (ChildAtIndex)
      {
        v8 = ChildAtIndex;
        v9 = CFGetTypeID(ChildAtIndex);
        if (v9 == FigTTMLDocumentWriterElementGetTypeID() && FigTTMLDocumentWriterElementGetElementType(v8) == 2)
        {
          break;
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_10;
      }
    }

    v10 = FigTTMLGetInheritableStyleAttributeNames();
    v13.length = CFArrayGetCount(v10);
    v13.location = 0;
    CFArrayApplyFunction(v10, v13, optimizeStyleAttributesAux, v8);
  }

LABEL_10:
  result = FigTTMLDocumentWriterElementWriteTree(DerivedStorage[1], *DerivedStorage);
  if (!result)
  {
    v2 = DerivedStorage[2];
LABEL_12:
    ParentElement = FigTTMLDocumentWriterElementGetParentElement(v2);
    result = 0;
    DerivedStorage[2] = ParentElement;
  }

  return result;
}

uint64_t FigTTMLDocumentWriterCreateStyleOptimizer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterCreateStyleOptimizer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSFBSKeepForegroundAssertionCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSFBSKeepForegroundAssertionCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t piqcv_setProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t calculateHeaderByteCount(uint64_t a1, unint64_t *a2)
{
  Count = CFArrayGetCount(*(a1 + 488));
  v5 = CFArrayGetCount(*(a1 + 488));
  if (v5 < 1)
  {
    v8 = 1;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    LODWORD(v8) = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 488), v7);
      LODWORD(theBuffer) = 0;
      PreferredChunkAlignment = MovieSampleDataWriterTrackGetPreferredChunkAlignment(*(a1 + 752), ValueAtIndex[95], &theBuffer);
      if (theBuffer)
      {
        v11 = PreferredChunkAlignment == 0;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        v12 = theBuffer;
      }

      else
      {
        v12 = 1;
      }

      v13 = v12;
      if (v12 != v8)
      {
        v14 = v12;
        if (v8)
        {
          v15 = v8;
          do
          {
            v16 = v12;
            v12 = v15;
            v15 = v16 % v15;
          }

          while (v15);
          v14 = v12;
        }

        v13 *= v8 / v14;
      }

      if (v13 > 0x7FFFFFFF)
      {
        LODWORD(v8) = 1;
      }

      else
      {
        LODWORD(v8) = v13;
      }

      ++v7;
    }

    while (v7 != v6);
    v8 = v8;
  }

  v17 = 0;
  v18 = *MEMORY[0x1E695E480];
  if (Count + 2 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = Count + 2;
  }

  do
  {
    v29 = 0;
    theBuffer = 0;
    if (*(a1 + 320) == 3)
    {
      v20 = MovieSampleDataWriterCopyFileTypeAtomAsBlockBuffer(*(a1 + 752), v18, &theBuffer);
      if (v20)
      {
        MovieAtomBBuf = v20;
        v24 = 0;
        goto LABEL_30;
      }

      DataLength = CMBlockBufferGetDataLength(theBuffer);
    }

    else
    {
      DataLength = 0;
    }

    MovieAtomBBuf = createMovieAtomBBuf(a1, 0, 0, &v29);
    v23 = v29;
    if (!MovieAtomBBuf)
    {
      v24 = CMBlockBufferGetDataLength(v29) + DataLength;
      if (!v23)
      {
        goto LABEL_30;
      }

LABEL_29:
      CFRelease(v23);
      goto LABEL_30;
    }

    v24 = 0;
    if (v29)
    {
      goto LABEL_29;
    }

LABEL_30:
    if (theBuffer)
    {
      CFRelease(theBuffer);
    }

    if (MovieAtomBBuf)
    {
      return MovieAtomBBuf;
    }

    if (v24 % v8)
    {
      v25 = v8 - v24 % v8;
    }

    else
    {
      v25 = 0;
    }

    if (v25 - 1 <= 6)
    {
      v25 += (v8 - v25 + 7) / v8 * v8;
    }

    v26 = v25 + v24;
    if (v26 == v17)
    {
      MovieAtomBBuf = 0;
      *a2 = v26;
      return MovieAtomBBuf;
    }

    v27 = MovieHeaderMakerAddByteCountToChunkOffsets(*(a1 + 744), v26);
    if (v27)
    {
      return v27;
    }

    v17 = v26;
    --v19;
  }

  while (v19);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t createMediaDataLocation(const __CFAllocator *a1, uint64_t a2, CFMutableArrayRef *a3)
{
  v12 = 0;
  v13 = 0;
  FirstMediaDataAtomOffset = MovieSampleDataWriterGetFirstMediaDataAtomOffset(*(a2 + 752), 1, &v13);
  if (FirstMediaDataAtomOffset)
  {
    return FirstMediaDataAtomOffset;
  }

  FirstMediaDataAtomOffset = MovieSampleDataWriterGetLengthOfDefaultByteStream(*(a2 + 752), &v12);
  if (FirstMediaDataAtomOffset)
  {
    return FirstMediaDataAtomOffset;
  }

  Mutable = CFArrayCreateMutable(a1, 2, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    return FigSignalErrorAtGM();
  }

  v8 = Mutable;
  appended = FigCFArrayAppendInt64();
  if (appended)
  {
    v10 = appended;
    goto LABEL_11;
  }

  v10 = FigCFArrayAppendInt64();
  if (v10)
  {
LABEL_11:
    CFRelease(v8);
    return v10;
  }

  *a3 = v8;
  return v10;
}

uint64_t estimateResultFileSize(uint64_t a1, void *a2)
{
  v2 = a1;
  v41 = 0;
  Count = CFArrayGetCount(*(a1 + 488));
  v4 = MEMORY[0x1E695FF58];
  if (Count < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 488), v5);
      TotalSize = CMBufferQueueGetTotalSize(ValueAtIndex[77]);
      v9 = CMBufferQueueGetTotalSize(ValueAtIndex[76]);
      if (ValueAtIndex[41])
      {
        v10 = ValueAtIndex[87];
      }

      else
      {
        v10 = 0;
      }

      v11 = v9 + TotalSize;
      if (*v4 == 1)
      {
        kdebug_trace();
      }

      v6 += v10 + v11;
      ++v5;
    }

    while (Count != v5);
  }

  if (*v4 == 1)
  {
    kdebug_trace();
  }

  v36 = *(v2 + 704);
  v37 = v6;
  if (*(v2 + 329))
  {
    v12 = *(v2 + 712);
    if (!*(v2 + 531))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = CFArrayGetCount(*(v2 + 488));
  if (v13 >= 1)
  {
    v14 = 0;
    v39 = v13;
    v40 = v2;
    do
    {
      v15 = CFArrayGetValueAtIndex(*(v2 + 488), v14);
      v16 = v15[92];
      TimeToSampleTable = MovieSampleTableGetTimeToSampleTable(v16);
      DataLength = CMBlockBufferGetDataLength(TimeToSampleTable);
      CompositionOffsetTable = MovieSampleTableGetCompositionOffsetTable(v16);
      v20 = CMBlockBufferGetDataLength(CompositionOffsetTable);
      SyncSampleTable = MovieSampleTableGetSyncSampleTable(v16);
      v22 = CMBlockBufferGetDataLength(SyncSampleTable);
      SampleDependencyTable = MovieSampleTableGetSampleDependencyTable(v16);
      v24 = CMBlockBufferGetDataLength(SampleDependencyTable);
      PartialSyncSampleTable = MovieSampleTableGetPartialSyncSampleTable(v16);
      v26 = CMBlockBufferGetDataLength(PartialSyncSampleTable);
      SampleToChunkTable = MovieSampleTableGetSampleToChunkTable(v16);
      v28 = CMBlockBufferGetDataLength(SampleToChunkTable);
      SampleSizeTable = MovieSampleTableGetSampleSizeTable(v16);
      v30 = CMBlockBufferGetDataLength(SampleSizeTable);
      v31 = DataLength + v12 + v20 + v22 + v24 + v26 + v28;
      v2 = v40;
      v12 = v31 + v30 + v15[74];
      ++v14;
    }

    while (v39 != v14);
  }

LABEL_20:
  if (*(v2 + 384))
  {
    v32 = 0;
LABEL_22:
    result = 0;
    *a2 = v36 + v37 + v32 + v12;
    return result;
  }

  v34 = *(v2 + 8);
  v35 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v35)
  {
    return 4294954514;
  }

  result = v35(v34, 0, &v41);
  if (!result)
  {
    v32 = v41;
    goto LABEL_22;
  }

  return result;
}

uint64_t createMovieAtomBBuf(uint64_t a1, int a2, const __CFURL *a3, CFTypeRef *a4)
{
  v174 = *MEMORY[0x1E69E9840];
  v155 = 0;
  InsertMediaSegments(a1, 1);
  if (v8)
  {
    return v8;
  }

  v9 = *(a1 + 744);
  v10 = FigCFEqual();
  if (a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  v12 = v11;
  v13 = *(a1 + 488);
  if (v13)
  {
    Count = CFArrayGetCount(v13);
  }

  else
  {
    Count = 0;
  }

  Settings = MovieHeaderMakerSetShouldWriteMovieExtendsAtom(v9, a2);
  if (Settings)
  {
    goto LABEL_213;
  }

  keys = *(a1 + 244);
  Settings = MovieHeaderMakerSetMovieExtendsHeaderFragmentDuration(v9, &keys);
  if (Settings)
  {
    goto LABEL_213;
  }

  v148 = a4;
  v161 = 0;
  v162 = 0;
  v160 = 0;
  v15 = *(a1 + 692);
  if (v15)
  {
    v16 = &kFigMetadataFormat_ISOUserData;
  }

  else
  {
    v16 = &kFigMetadataFormat_QuickTimeUserData;
  }

  if (v15)
  {
    v17 = kFigISOUserDataKeyspace;
  }

  else
  {
    v17 = kFigUserDataKeyspace;
  }

  v158 = 0;
  cf = 0;
  blockBufferOut = 0;
  v157 = 0;
  v18 = *MEMORY[0x1E695E480];
  v19 = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 2u, 0, &blockBufferOut);
  blockAllocator = v18;
  v149 = a3;
  if (v19)
  {
    v42 = v19;
    goto LABEL_221;
  }

  if ((v12 & 1) == 0)
  {
    v33 = *(a1 + 696);
    if (v33)
    {
      v20 = createiTunesGaplessInfoString(v33);
      if (!v20)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }

    v107 = *(a1 + 488);
    if (!v107)
    {
      goto LABEL_21;
    }

    v108 = CFArrayGetCount(v107);
    if (v108 < 1)
    {
      goto LABEL_21;
    }

    v109 = v108;
    v110 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 488), v110);
      if (*ValueAtIndex == 1936684398)
      {
        break;
      }

      if (v109 == ++v110)
      {
        goto LABEL_21;
      }
    }

    v137 = ValueAtIndex;
    if (*(ValueAtIndex + 192) != 2 || !*(ValueAtIndex + 87))
    {
      goto LABEL_21;
    }

    FirstEditBuilder = getFirstEditBuilder(ValueAtIndex);
    v139 = v137[45];
    v140 = CFArrayGetCount(*(FirstEditBuilder + 24));
    if (v140 + editMediaTimeIsValid(*(FirstEditBuilder + 16)) != 1)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_58();
      v147 = FigSignalErrorAtGM();
      v43 = 0;
      if (v147)
      {
        v42 = v147;
        v20 = 0;
        v21 = 0;
        goto LABEL_47;
      }

      v20 = 0;
      v21 = 0;
      goto LABEL_23;
    }

    EditMediaTimeAtIndex = editBuilderGetEditMediaTimeAtIndex(FirstEditBuilder, 0);
    memset(&values, 0, sizeof(values));
    memset(&valuePtr, 0, sizeof(valuePtr));
    memset(&v166, 0, sizeof(v166));
    v170 = 0;
    v171 = 0;
    v168[0] = @"EncodingDelayInFrame";
    v168[1] = @"EncodingDrainInFrames";
    v168[2] = @"DurationInFrames";
    keys = *(EditMediaTimeAtIndex + 60);
    CMTimeConvertScale(&values, &keys, v139, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    keys = *(EditMediaTimeAtIndex + 84);
    CMTimeConvertScale(&v166, &keys, v139, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    lhs = *(EditMediaTimeAtIndex + 36);
    v142 = *(EditMediaTimeAtIndex + 12);
    rhs.epoch = *(EditMediaTimeAtIndex + 28);
    *&rhs.value = v142;
    CMTimeSubtract(&keys, &lhs, &rhs);
    OUTLINED_FUNCTION_53_8();
    CMTimeConvertScale(&lhs, &rhs, v139, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    keys = lhs;
    rhs = values;
    v163 = v166;
    CMTimeAdd(&lhs, &rhs, &v163);
    OUTLINED_FUNCTION_53_8();
    CMTimeSubtract(&valuePtr, &rhs, &lhs);
    v169 = CFNumberCreate(v18, kCFNumberSInt64Type, &values);
    if (v169 && (v170 = CFNumberCreate(v18, kCFNumberSInt64Type, &v166)) != 0 && (v171 = CFNumberCreate(v18, kCFNumberSInt64Type, &valuePtr)) != 0 && (v143 = CFDictionaryCreate(v18, v168, &v169, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
    {
      v144 = v143;
      v42 = 0;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_58();
      v42 = FigSignalErrorAtGM();
      v144 = 0;
    }

    for (i = 0; i != 24; i += 8)
    {
      v146 = *(&v169 + i);
      if (v146)
      {
        CFRelease(v146);
      }
    }

    if (!v42)
    {
      if (!v144)
      {
        goto LABEL_21;
      }

      v20 = createiTunesGaplessInfoString(v144);
      CFRelease(v144);
      if (!v20)
      {
        goto LABEL_22;
      }

LABEL_33:
      keys.value = @"dataType";
      *&keys.timescale = @"dataTypeNamespace";
      values.value = 0;
      *&values.timescale = @"com.apple.itunes";
      LODWORD(valuePtr.value) = 1;
      v34 = CFNumberCreate(v18, kCFNumberSInt32Type, &valuePtr);
      values.value = v34;
      v35 = v18;
      v21 = CFDictionaryCreate(v18, &keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFRelease(v34);
      if (!copyMetadataSerializer(v35, a1, @"com.apple.itunes", &v157))
      {
        FigMetadataWriter = FigMetadataSerializerGetFigMetadataWriter(v157);
        v37 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v37)
        {
          v42 = 4294954514;
          goto LABEL_44;
        }

        Contiguous = v37(FigMetadataWriter, @"itlk", @"com.apple.iTunes.iTunSMPB", v20, v21);
        if (Contiguous)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_23;
    }

LABEL_221:
    v43 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_47;
  }

LABEL_21:
  v20 = 0;
LABEL_22:
  v21 = 0;
LABEL_23:
  v22 = *(a1 + 296);
  if (!v22)
  {
    v22 = *(a1 + 304);
    if (!v22)
    {
      goto LABEL_38;
    }
  }

  v23 = CFGetTypeID(v22);
  if (v23 == CFDictionaryGetTypeID())
  {
    v133 = OUTLINED_FUNCTION_57_5();
    transferMovieMetadata(v133, v22, v134, v135, v136);
    goto LABEL_38;
  }

  v24 = CFGetTypeID(v22);
  if (v24 == CFArrayGetTypeID())
  {
    v25 = CFArrayGetCount(v22);
    if (v25 >= 1)
    {
      v26 = v25;
      for (j = 0; j != v26; ++j)
      {
        CFArrayGetValueAtIndex(v22, j);
        v28 = OUTLINED_FUNCTION_57_5();
        transferMovieMetadata(v28, v29, v30, v31, v32);
      }
    }

LABEL_38:
    v39 = v157;
    if (!v157)
    {
      v40 = *(a1 + 288);
      if (!v40)
      {
        goto LABEL_177;
      }

      v39 = FigMetadataSerializerRetain(v40);
      v157 = v39;
    }

    v41 = *(*(CMBaseObjectGetVTable() + 24) + 8);
    if (!v41)
    {
      v43 = 0;
      goto LABEL_46;
    }

    Contiguous = v41(v39, &v160);
    if (Contiguous)
    {
      goto LABEL_43;
    }

    if (v160)
    {
      keys.value = CMBlockBufferGetDataLength(v160);
      values.value = 0;
      IsRangeContiguous = CMBlockBufferIsRangeContiguous(v160, 0, keys.value);
      value = v160;
      if (!IsRangeContiguous)
      {
        valuePtr.value = 0;
        Contiguous = CMBlockBufferCreateContiguous(blockAllocator, v160, blockAllocator, 0, 0, keys.value, 0, &valuePtr);
        if (Contiguous)
        {
          goto LABEL_43;
        }

        if (v160)
        {
          CFRelease(v160);
        }

        value = valuePtr.value;
        v160 = valuePtr.value;
      }

      Contiguous = CMBlockBufferGetDataPointer(value, 8uLL, &keys, 0, &values);
      if (Contiguous)
      {
        goto LABEL_43;
      }

      v43 = CFDataCreateWithBytesNoCopy(blockAllocator, values.value, keys.value, *MEMORY[0x1E695E498]);
      if (!v43)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_58();
        v117 = FigSignalErrorAtGM();
LABEL_223:
        v42 = v117;
        goto LABEL_47;
      }

      v114 = cf;
      if (!cf && (copyMetadataSerializer(blockAllocator, a1, *v16, &cf) || (v114 = cf) == 0))
      {
LABEL_178:
        v118 = cf;
        if (!cf)
        {
          v119 = *(a1 + 280);
          if (!v119)
          {
            goto LABEL_185;
          }

          v118 = FigMetadataSerializerRetain(v119);
          cf = v118;
        }

        v120 = *(*(CMBaseObjectGetVTable() + 24) + 8);
        if (!v120)
        {
          goto LABEL_194;
        }

        appended = v120(v118, &v161);
        if (appended)
        {
          goto LABEL_193;
        }

        if (v161)
        {
          OUTLINED_FUNCTION_496();
          appended = CMBlockBufferAppendBufferReference(v122, v123, v124, v125, 0);
          if (appended)
          {
            goto LABEL_193;
          }
        }

LABEL_185:
        v126 = v158;
        if (!v158)
        {
          v127 = *(a1 + 272);
          if (!v127)
          {
LABEL_192:
            appended = MovieHeaderMakerSetMovieMetadataBlockBuffer(*(a1 + 744), blockBufferOut);
LABEL_193:
            v42 = appended;
            goto LABEL_47;
          }

          v126 = FigMetadataSerializerRetain(v127);
          v158 = v126;
        }

        v128 = *(*(CMBaseObjectGetVTable() + 24) + 8);
        if (v128)
        {
          appended = v128(v126, &v162);
          if (appended)
          {
            goto LABEL_193;
          }

          if (v162)
          {
            OUTLINED_FUNCTION_496();
            appended = CMBlockBufferAppendBufferReference(v129, v130, v131, v132, 0);
            if (appended)
            {
              goto LABEL_193;
            }
          }

          goto LABEL_192;
        }

LABEL_194:
        v42 = 4294954514;
        goto LABEL_47;
      }

      v115 = FigMetadataSerializerGetFigMetadataWriter(v114);
      v116 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v116)
      {
        v117 = v116(v115, *v17, @"meta", v43, 0);
        if (v117)
        {
          goto LABEL_223;
        }

        goto LABEL_178;
      }

LABEL_46:
      v42 = 4294954514;
      goto LABEL_47;
    }

LABEL_177:
    v43 = 0;
    goto LABEL_178;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_58();
  Contiguous = FigSignalErrorAtGM();
  if (!Contiguous)
  {
    goto LABEL_38;
  }

LABEL_43:
  v42 = Contiguous;
LABEL_44:
  v43 = 0;
LABEL_47:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v158)
  {
    CFRelease(v158);
  }

  if (v157)
  {
    CFRelease(v157);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  v44 = blockAllocator;
  if (v160)
  {
    CFRelease(v160);
  }

  if (v161)
  {
    CFRelease(v161);
  }

  if (v162)
  {
    CFRelease(v162);
  }

  if (v42)
  {
    goto LABEL_214;
  }

  if (Count >= 1)
  {
    for (k = 0; k != Count; ++k)
    {
      v46 = CFArrayGetValueAtIndex(*(a1 + 488), k);
      OUTLINED_FUNCTION_63();
      v152 = v47;
      v48 = v11 && FigCFEqual() != 0;
      if (*(a1 + 384))
      {
        v150 = v46[492] != 0 && v48;
        v151 = v150;
      }

      else
      {
        v150 = 0;
        v151 = 1;
      }

      Settings = setTrackExtendsDefaultValuesIfNeeded(v46);
      if (Settings)
      {
        goto LABEL_213;
      }

      v49 = *(v46 + 2);
      keys.value = 0;
      values.value = 0;
      valuePtr.value = 0;
      Empty = CMBlockBufferCreateEmpty(v44, 2u, 0, &valuePtr);
      if (Empty)
      {
        goto LABEL_102;
      }

      if ((*(*(v46 + 2) + 692) & 3) != 0)
      {
        v51 = OUTLINED_FUNCTION_60_7();
        Mutable = CFSetCreateMutable(v51, v52, MEMORY[0x1E695E9F8]);
      }

      else
      {
        Mutable = 0;
      }

      v54 = *(v46 + 70);
      if (v54 || (v54 = *(v46 + 71)) != 0)
      {
        v55 = CFGetTypeID(v54);
        if (v55 == CFDictionaryGetTypeID())
        {
          transferTrackMetadata(v46, v54, &keys.value, &values.value);
        }

        else
        {
          v56 = CFGetTypeID(v54);
          if (v56 != CFArrayGetTypeID())
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_58();
            v42 = FigSignalErrorAtGM();
            goto LABEL_90;
          }

          v57 = CFArrayGetCount(v54);
          if (v57 >= 1)
          {
            v58 = v57;
            for (m = 0; m != v58; ++m)
            {
              v60 = CFArrayGetValueAtIndex(v54, m);
              transferTrackMetadata(v46, v60, &keys.value, &values.value);
              v42 = 0;
            }

LABEL_90:
            if (!Mutable)
            {
              goto LABEL_92;
            }

LABEL_91:
            CFRelease(Mutable);
            goto LABEL_92;
          }
        }
      }

      v42 = 0;
      if (Mutable)
      {
        goto LABEL_91;
      }

LABEL_92:
      v44 = blockAllocator;
      if (v42)
      {
        goto LABEL_103;
      }

      v61 = keys.value;
      if (keys.value)
      {
        goto LABEL_96;
      }

      v62 = *(v46 + 69);
      if (v62)
      {
        v61 = FigMetadataSerializerRetain(v62);
        keys.value = v61;
LABEL_96:
        Empty = appendBBufFromMetadataSerializerToBlockBuffer(v61, valuePtr.value);
        if (Empty)
        {
          goto LABEL_102;
        }
      }

      v63 = values.value;
      if (!values.value)
      {
        v64 = *(v46 + 68);
        if (!v64)
        {
          goto LABEL_101;
        }

        v63 = FigMetadataSerializerRetain(v64);
        values.value = v63;
      }

      Empty = appendBBufFromMetadataSerializerToBlockBuffer(v63, valuePtr.value);
      if (!Empty)
      {
LABEL_101:
        Empty = MovieHeaderMakerTrackSetTrackMetadataBlockBuffer(*(v49 + 744), *(v46 + 93), valuePtr.value);
      }

LABEL_102:
      v42 = Empty;
LABEL_103:
      if (keys.value)
      {
        CFRelease(keys.value);
      }

      if (values.value)
      {
        CFRelease(values.value);
      }

      if (valuePtr.value)
      {
        CFRelease(valuePtr.value);
      }

      if (v42)
      {
        goto LABEL_214;
      }

      v65 = *(v46 + 92);
      v66 = *(v46 + 51);
      if (v66 || (v66 = *(v46 + 52)) != 0)
      {
        PackedISO639_2TFromLocaleIdentifier = FigMetadataGetPackedISO639_2TFromLocaleIdentifier(v66);
        StringForLanguageCode = FigCreateStringForLanguageCode(v44, PackedISO639_2TFromLocaleIdentifier, 1);
        v69 = MovieTrackSetLanguageCodeString(v65, StringForLanguageCode);
        if (v69)
        {
          goto LABEL_119;
        }

        v70 = *(v46 + 52);
        if (v70)
        {
LABEL_118:
          v69 = MovieTrackSetExtendedLanguageTagString(v65, v70);
LABEL_119:
          v42 = v69;
          if (!StringForLanguageCode)
          {
            goto LABEL_121;
          }

LABEL_120:
          CFRelease(StringForLanguageCode);
          goto LABEL_121;
        }
      }

      else
      {
        StringForLanguageCode = 0;
      }

      if (*(*(v46 + 2) + 328))
      {
        v70 = *(v46 + 51);
        if (v70)
        {
          goto LABEL_118;
        }
      }

      v42 = 0;
      if (StringForLanguageCode)
      {
        goto LABEL_120;
      }

LABEL_121:
      if (v42)
      {
        goto LABEL_214;
      }

      if (v46[40])
      {
        if (v46[56])
        {
          OUTLINED_FUNCTION_51_10();
          values = *(v46 + 44);
          CMTimeConvertScale(&keys, &values, v72, kCMTimeRoundingMethod_QuickTime);
          value_low = LODWORD(keys.value);
        }

        else
        {
          value_low = 0xFFFFFFFFLL;
        }

        if (v46[80])
        {
          OUTLINED_FUNCTION_51_10();
          values = *(v46 + 68);
          CMTimeConvertScale(&valuePtr, &values, v74, kCMTimeRoundingMethod_QuickTime);
          v73 = valuePtr.value << 32;
        }

        else
        {
          v73 = 0;
        }

        Settings = MovieTrackSetLoadSettings(*(v46 + 92), v73 | value_low, *(v46 + 92));
        if (Settings)
        {
          goto LABEL_213;
        }
      }

      v75 = OUTLINED_FUNCTION_27_16();
      Settings = MovieHeaderMakerTrackSetShouldWriteCompactSampleSizeAtomIfPossible(v75, v76, v77);
      if (Settings)
      {
        goto LABEL_213;
      }

      v78 = OUTLINED_FUNCTION_27_16();
      Settings = MovieHeaderMakerTrackSetShouldWriteCleanApertureDimensionsAtom(v78, v79, v80);
      if (Settings)
      {
        goto LABEL_213;
      }

      v81 = OUTLINED_FUNCTION_27_16();
      Settings = MovieHeaderMakerTrackSetShouldWriteProductionApertureDimensionsAtom(v81, v82, v83);
      if (Settings)
      {
        goto LABEL_213;
      }

      v84 = OUTLINED_FUNCTION_27_16();
      Settings = MovieHeaderMakerTrackSetShouldWriteEncodedPixelsDimensionsAtom(v84, v85, v86);
      if (Settings)
      {
        goto LABEL_213;
      }

      v87 = OUTLINED_FUNCTION_27_16();
      Settings = MovieHeaderMakerTrackSetSampleReferenceBaseURL(v87, v88, v89);
      if (Settings)
      {
        goto LABEL_213;
      }

      v90 = OUTLINED_FUNCTION_27_16();
      Settings = MovieHeaderMakerTrackSetShouldWriteRollSampleGroupAtoms(v90, v91, v152);
      if (Settings)
      {
        goto LABEL_213;
      }

      v92 = OUTLINED_FUNCTION_27_16();
      Settings = MovieHeaderMakerTrackSetShouldWriteSampleAuxiliaryInformationAtoms(v92, v93, v94);
      if (Settings)
      {
        goto LABEL_213;
      }

      v95 = OUTLINED_FUNCTION_27_16();
      Settings = MovieHeaderMakerTrackSetShouldWriteEditAtom(v95, v96, v151);
      if (Settings)
      {
        goto LABEL_213;
      }

      v97 = OUTLINED_FUNCTION_27_16();
      Settings = MovieHeaderMakerTrackSetShouldAllowWritingZeroTrackDurationInEditListAtom(v97, v98, v150);
      if (Settings)
      {
        goto LABEL_213;
      }
    }
  }

  Settings = MovieHeaderMakerCopyMovieHeaderAsBlockBuffer(*(a1 + 744), v44, *(a1 + 720), v149, &v155);
  if (!Settings)
  {
    if (!*(a1 + 329) || (v99 = *(a1 + 488)) == 0 || (v100 = *(a1 + 744), v101 = CFArrayGetCount(v99), v101 < 1))
    {
LABEL_155:
      v42 = 0;
      *v148 = v155;
      return v42;
    }

    v102 = v101;
    v103 = 0;
    while (1)
    {
      v104 = CFArrayGetValueAtIndex(*(a1 + 488), v103);
      v105 = v104[93];
      LOBYTE(keys.value) = 0;
      Settings = MovieHeaderMakerTrackDidWriteEditAtom(v100, v105, &keys);
      if (Settings)
      {
        break;
      }

      if (!LOBYTE(keys.value))
      {
        *(v104 + 353) = 1;
      }

      if (v102 == ++v103)
      {
        goto LABEL_155;
      }
    }
  }

LABEL_213:
  v42 = Settings;
LABEL_214:
  if (v155)
  {
    CFRelease(v155);
  }

  return v42;
}

void InsertMediaSegments(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = *(a1 + 736);
  v50 = 0;
  v5 = *(a1 + 488);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
  }

  else
  {
    Count = 0;
  }

  v49 = 0;
  OUTLINED_FUNCTION_613();
  if (MovieInformationGetBasicMetrics(v7, v8, v9, v10, 0) || Count < 1)
  {
    goto LABEL_35;
  }

  v11 = 0;
  allocator = *MEMORY[0x1E695E480];
  v12 = MEMORY[0x1E6960CC0];
  v35 = v3;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 488), v11);
    v14 = *(ValueAtIndex + 92);
    OUTLINED_FUNCTION_33_13(MEMORY[0x1E6960C88], allocator, v35, v36.value, *&v36.timescale, v36.epoch, v37, v38, v39, duration.value, *&duration.timescale, duration.epoch, v41, v42, v43, *&start.start.value, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, *v12, v12[1], v12[2], v45.duration.value, *&v45.duration.timescale, v45.duration.epoch, v46[0].value);
    if (a2 ? MovieTrackDeleteSegment(v4, v14, &v46[0].value) : MovieTrackFragmentDeleteSegment(v14, &v46[0].value))
    {
      break;
    }

    v16 = *(ValueAtIndex + 50);
    if (v16 && CFArrayGetCount(v16))
    {
      v17 = *(ValueAtIndex + 50);
      if (v17)
      {
        v18 = CFRetain(v17);
      }

      else
      {
        v18 = 0;
      }

      v49 = v18;
      if (!v18)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (createDefaultTrackEditSegmentArray(allocator, ValueAtIndex, &v49))
      {
        break;
      }

      v18 = v49;
      if (!v49)
      {
        goto LABEL_27;
      }
    }

    v19 = Count;
    v20 = CFArrayGetCount(v18);
    if (v20 >= 1)
    {
      v21 = v20;
      v22 = 0;
      do
      {
        v23 = CFArrayGetValueAtIndex(v18, v22);
        memset(v48, 0, sizeof(v48));
        v47 = 0u;
        memset(v46, 0, sizeof(v46));
        getFigTimeMappingFromDictionary(v23, v46);
        if (v24)
        {
          goto LABEL_33;
        }

        if (v46[0].flags)
        {
          memset(&v45, 0, sizeof(v45));
          *&start.start.value = v47;
          start.start.epoch = *&v48[0];
          duration = *(v48 + 8);
          CMTimeRangeMake(&v45, &start.start, &duration);
          memset(&start, 0, sizeof(start));
          duration = v46[0];
          v36 = v46[1];
          v25 = CMTimeRangeMake(&start, &duration, &v36);
          OUTLINED_FUNCTION_29_16(v25, v26, v27, v28, v29, v30, v31, v32, allocator, v35, v36.value, *&v36.timescale, v36.epoch, v37, v38, v39, duration.value, *&duration.timescale, duration.epoch, v41, v42, v43, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale);
          if (a2)
          {
            MovieTrackInsertMediaSegment(v4, v14, &duration, &v36);
          }

          else
          {
            MovieTrackFragmentInsertMediaSegment(v14, &duration, &v36);
          }

          if (v33)
          {
            goto LABEL_33;
          }
        }
      }

      while (v21 != ++v22);
    }

    CFRelease(v18);
    v49 = 0;
    Count = v19;
    v3 = v35;
    v12 = MEMORY[0x1E6960CC0];
LABEL_27:
    ++v11;
  }

  while (v11 != Count);
LABEL_33:
  if (v49)
  {
    CFRelease(v49);
  }

LABEL_35:
  OUTLINED_FUNCTION_66_5();
}

uint64_t setTrackExtendsDefaultValuesIfNeeded(uint64_t a1)
{
  if (*(a1 + 728))
  {
    return 0;
  }

  result = MovieTrackSetTrackExtendsDefaultValues(*(a1 + 736), 1, 0, 0, 0);
  if (!result)
  {
    *(a1 + 728) = 1;
  }

  return result;
}

void transferMovieMetadata(uint64_t a1, CFDictionaryRef theDict, CFTypeRef *a3, CFTypeRef *a4, CFTypeRef *a5)
{
  v5 = theDict;
  theArray = 0;
  cf1 = 0;
  cf = 0;
  if (!theDict)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_58();
    FigSignalErrorAtGM();
    goto LABEL_62;
  }

  if (!a3 || !a4 || !a5)
  {
    goto LABEL_60;
  }

  if (CFDictionaryGetValue(theDict, @"items"))
  {
    Value = CFDictionaryGetValue(v5, @"format");
    if (Value)
    {
      v10 = CFRetain(Value);
    }

    else
    {
      v10 = 0;
    }

    cf1 = v10;
    copyMetadataDestinationFormat(a1, v10, &theArray);
    goto LABEL_13;
  }

  v11 = CFDictionaryGetValue(v5, @"MetadataReader");
  if (!v11)
  {
LABEL_60:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_58();
    FigSignalErrorAtGM();
    goto LABEL_61;
  }

  if (OUTLINED_FUNCTION_67_8(v11, v12, v13, v14, v15, v16, v17, v18, v35))
  {
    goto LABEL_61;
  }

LABEL_13:
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_61:
    v5 = 0;
LABEL_62:
    Mutable = 0;
    goto LABEL_63;
  }

  v20 = Count;
  v37 = v5;
  Mutable = 0;
  v22 = 0;
  v5 = 0;
  while (1)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v5)
    {
      CFRelease(v5);
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v22);
    if (cf1 && !CFEqual(cf1, ValueAtIndex) && createMetadataConverter(a1, cf1, ValueAtIndex, &cf))
    {
LABEL_57:
      v5 = 0;
      goto LABEL_54;
    }

    if (CFEqual(ValueAtIndex, @"com.apple.quicktime.udta"))
    {
      if (*(a1 + 692))
      {
        goto LABEL_26;
      }

LABEL_28:
      v24 = *a3;
      if (*a3)
      {
        goto LABEL_38;
      }

      v25 = OUTLINED_FUNCTION_37_13();
      v28 = a3;
      goto LABEL_30;
    }

    if (CFEqual(ValueAtIndex, @"org.mp4ra"))
    {
      if ((*(a1 + 692) & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    if (CFEqual(ValueAtIndex, @"com.apple.quicktime.mdta"))
    {
      v24 = *a4;
      if (*a4)
      {
        goto LABEL_38;
      }

      v25 = OUTLINED_FUNCTION_37_13();
      v28 = a4;
    }

    else
    {
      if (!CFEqual(ValueAtIndex, @"com.apple.itunes"))
      {
        goto LABEL_26;
      }

      v24 = *a5;
      if (*a5)
      {
        goto LABEL_38;
      }

      v25 = OUTLINED_FUNCTION_37_13();
      v28 = a5;
    }

LABEL_30:
    if (copyMetadataSerializer(v25, v26, v27, v28))
    {
      goto LABEL_57;
    }

    v24 = *v28;
    if (*v28)
    {
LABEL_38:
      FigMetadataWriter = FigMetadataSerializerGetFigMetadataWriter(v24);
      if (FigMetadataWriter)
      {
        v5 = CFRetain(FigMetadataWriter);
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_41;
    }

LABEL_26:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_58();
    v5 = 0;
    if (FigSignalErrorAtGM())
    {
      goto LABEL_54;
    }

LABEL_41:
    v31 = (*(a1 + 692) & 4) == 0 || ValueAtIndex != @"com.apple.itunes";
    if (cf1 && CFEqual(cf1, ValueAtIndex))
    {
      v31 = 0;
    }

    if (!Mutable)
    {
      v32 = OUTLINED_FUNCTION_265();
      Mutable = CFSetCreateMutable(v32, v33, MEMORY[0x1E695E9F8]);
      if (!Mutable)
      {
        break;
      }
    }

    transferMetadata(a1, v37, cf, v5, *(a1 + 312), Mutable, v31);
    if (v34 && v34 != -12583)
    {
      goto LABEL_63;
    }

LABEL_54:
    if (v20 == ++v22)
    {
      goto LABEL_63;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_58();
  FigSignalErrorAtGM();
LABEL_63:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}