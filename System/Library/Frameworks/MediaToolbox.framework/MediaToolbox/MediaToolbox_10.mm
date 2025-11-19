const void *fpfsi_isAssociatedInterstitialEventActive()
{
  result = *(CMBaseObjectGetDerivedStorage() + 3232);
  if (result)
  {
    return (CFEqual(result, &stru_1F0B1AFB8) == 0);
  }

  return result;
}

void fpfsi_clearCoordinatedPlaybackSynchronizationTimebase()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 568);
  if (v1)
  {
    if (!dword_1EAF169F0 || (os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT), fig_log_call_emit_and_clean_up_after_send_and_compose(), (v1 = *(DerivedStorage + 568)) != 0))
    {
      CFRelease(v1);
      *(DerivedStorage + 568) = 0;
    }
  }
}

uint64_t fpfsi_handleIFrameOnlyRateTransition(const void *a1, int a2, int a3, const __CFArray *a4, int a5, float a6)
{
  v90 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v74 = *DerivedStorage;
  v11 = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  v12 = a3 | a2;
  if (a6 <= 1.0 || v12 != 0)
  {
    goto LABEL_10;
  }

  v14 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (!v14)
  {
    goto LABEL_10;
  }

  while (1)
  {
    if (*(v14 + 48) == 1986618469)
    {
      v15 = *(v14 + 112);
      if (v15)
      {
        break;
      }
    }

    v14 = *(v14 + 24);
    if (!v14)
    {
      goto LABEL_10;
    }
  }

  v41 = *(v15 + 32);
  if (!v41)
  {
    goto LABEL_10;
  }

  time.value = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigBaseObject = FigRenderPipelineGetFigBaseObject(v41);
  v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v44)
  {
    goto LABEL_104;
  }

  v45 = v44(FigBaseObject, @"VideoQualityOfServiceTier", AllocatorForMedia, &time);
  value = time.value;
  if (v45)
  {
    v47 = 1;
  }

  else
  {
    v47 = time.value == 0;
  }

  if (v47)
  {
    v29 = 0;
    goto LABEL_106;
  }

  CFDictionaryGetValue(time.value, *MEMORY[0x1E6983970]);
  v61 = FigCFEqual();
  if (v61 || FigCFEqual())
  {
    fpfsi_pauseItem(a1);
    v29 = fpfsi_SeekToCurrentTime(a1);
  }

  else
  {
LABEL_104:
    v29 = 0;
  }

  value = time.value;
LABEL_106:
  if (value)
  {
    CFRelease(value);
  }

  if (!v29)
  {
LABEL_10:
    if (dword_1EAF169F0)
    {
      LODWORD(lhs.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!v12)
    {
      return 0;
    }

    if (!a3 || (*(DerivedStorage + 472) = 0, (*(v11 + 108) * a6) <= 0.0))
    {
      fpfs_GetNextTimeToPlay(DerivedStorage, 0, &time);
      if (!fpfsi_atOrAfterTimeToPausePlayback(DerivedStorage))
      {
        v48 = CMBaseObjectGetDerivedStorage();
        fpfsi_pauseItem(a1);
        fpfs_GetTime(v48, &rhs);
        v49 = *(CMBaseObjectGetDerivedStorage() + 1024);
        if (v49)
        {
          while (*(v49 + 48) != 1986618469 || !*(v49 + 112))
          {
            v49 = *(v49 + 24);
            if (!v49)
            {
              goto LABEL_15;
            }
          }

          if (*(v49 + 200))
          {
            v69 = a6 < 0.0 ? fpfs_GetCurrentPTSDescending : fpfs_GetCurrentPTSAscending;
            time = rhs;
            v70 = (a6 < 0.0 ? MEMORY[0x1E6960C88] : MEMORY[0x1E6960C80]);
            v89 = *v70;
            if (CMBufferQueueCallForEachBuffer(*(v49 + 96), v69, &time) == -12863 && (v89.flags & 0x1D) == 1)
            {
              type = v89;
              v77 = rhs;
              CMTimeSubtract(&lhs, &type, &v77);
              if (fabs(CMTimeGetSeconds(&lhs)) < 5.0)
              {
                lhs = v89;
                fpfs_SetTime(a1, &lhs);
              }
            }
          }
        }
      }
    }

LABEL_15:
    if (a2 && a3)
    {
      goto LABEL_17;
    }

    *(DerivedStorage + 528) = 1;
    if (!a2 || a3)
    {
      if (!a2 && a3 && *(DerivedStorage + 912))
      {
        time.value = 0;
        v32 = *(DerivedStorage + 1688);
        v33 = *(DerivedStorage + 1680);
        *(DerivedStorage + 1688) = v33;
        if (v33)
        {
          CFRetain(v33);
        }

        if (v32)
        {
          CFRelease(v32);
        }

        v34 = *(DerivedStorage + 912);
        v35 = FigGetAllocatorForMedia();
        FigBytePumpGetFigBaseObject(v34);
        v37 = v36;
        v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v38)
        {
          v38(v37, 0x1F0B1EDB8, v35, &time);
        }

        v39 = time.value;
        if (time.value)
        {
          v40 = *(DerivedStorage + 1720);
          *(DerivedStorage + 1720) = time.value;
          CFRetain(v39);
          if (v40)
          {
            CFRelease(v40);
          }

          CFRelease(time.value);
        }
      }

      goto LABEL_17;
    }

    if (!*(DerivedStorage + 1688))
    {
      goto LABEL_17;
    }

    v91.length = CFArrayGetCount(a4);
    v91.location = 0;
    if (!CFArrayContainsValue(a4, v91, *(DerivedStorage + 1688)))
    {
      goto LABEL_78;
    }

    v30 = *(DerivedStorage + 1688);
    if (!*(DerivedStorage + 556))
    {
      ValueAtIndex = *(DerivedStorage + 1688);
      goto LABEL_80;
    }

    v31 = *(DerivedStorage + 1720);
    if (v31)
    {
      CFNumberGetValue(v31, kCFNumberSInt32Type, &valuePtr);
    }

    else
    {
      AverageBitRate = FigAlternateGetAverageBitRate(*(DerivedStorage + 1688));
      if (!AverageBitRate)
      {
        AverageBitRate = FigAlternateGetPeakBitRate(v30);
      }

      valuePtr = AverageBitRate;
    }

    v51 = *(DerivedStorage + 1664);
    if (v51 && CFArrayGetCount(v51) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 1664), 0);
    }

    else
    {
LABEL_78:
      ValueAtIndex = 0;
    }

    v30 = *(DerivedStorage + 1688);
LABEL_80:
    if (v30)
    {
      CFRelease(v30);
      *(DerivedStorage + 1688) = 0;
    }

    v52 = *(DerivedStorage + 1720);
    if (v52)
    {
      CFRelease(v52);
      *(DerivedStorage + 1720) = 0;
    }

    if (ValueAtIndex)
    {
LABEL_85:
      if (*(DerivedStorage + 912))
      {
        if (a3 != a2)
        {
          fpfsi_pauseItem(a1);
        }

        v53 = MEMORY[0x1E6960C70];
        v54 = a5;
        if (a3 && !a5)
        {
          if (*(DerivedStorage + 1484))
          {
            v55 = (DerivedStorage + 1472);
            if (dword_1EAF169F0)
            {
              LODWORD(lhs.value) = 0;
              LOBYTE(type.value) = 0;
              v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v57 = lhs.value;
              if (os_log_type_enabled(v56, type.value))
              {
                v58 = v57;
              }

              else
              {
                v58 = v57 & 0xFFFFFFFE;
              }

              if (v58)
              {
                if (v74)
                {
                  v59 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v59 = "";
                }

                v72 = v59;
                if (a1)
                {
                  v62 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v62 = "";
                }

                v71 = v62;
                *&time.value = *v55;
                time.epoch = *(DerivedStorage + 1488);
                Seconds = CMTimeGetSeconds(&time);
                LODWORD(rhs.value) = 136316418;
                *(&rhs.value + 4) = "fpfsi_handleIFrameOnlyRateTransition";
                LOWORD(rhs.flags) = 2048;
                *(&rhs.flags + 2) = v74;
                HIWORD(rhs.epoch) = 2082;
                v81 = v72;
                v82 = 2048;
                v83 = a1;
                v84 = 2082;
                v85 = v71;
                v86 = 2048;
                v87 = Seconds;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v54 = a5;
            }

            *&time.value = *v55;
            time.epoch = *(DerivedStorage + 1488);
            fpfs_SetTime(a1, &time);
            *v55 = *&v53->value;
            *(DerivedStorage + 1488) = v53->epoch;
            if (!*(DerivedStorage + 2216))
            {
              fpfsi_setLastSeekTimeSet(DerivedStorage, MEMORY[0x1E6960C70]);
            }
          }

          v64 = *(DerivedStorage + 1576);
          if (v64)
          {
            CFRelease(v64);
            *(DerivedStorage + 1576) = 0;
          }

          if (*(DerivedStorage + 2220))
          {
            fpfs_SeekDidFail();
          }
        }

        Current = CFAbsoluteTimeGetCurrent();
        if (a3)
        {
          v66 = a2 == 0;
        }

        else
        {
          v66 = 0;
        }

        *(DerivedStorage + 1520) = Current;
        if (v66)
        {
          v67 = 8;
        }

        else
        {
          v67 = 0;
        }

        *(DerivedStorage + 2152) = CFAbsoluteTimeGetCurrent();
        *(DerivedStorage + 2160) = 0u;
        *(DerivedStorage + 2176) = 0u;
        *(DerivedStorage + 2192) = 0u;
        *(DerivedStorage + 2208) = 0;
        v68 = *DerivedStorage;
        time = *v53;
        v29 = fpfs_SetAlternateWithContext(v68, a1, ValueAtIndex, 1u, &time, 0, 0, 0, v67);
        goto LABEL_99;
      }

LABEL_98:
      v29 = FigSignalErrorAtGM();
      v54 = a5;
LABEL_99:
      if (!(v54 | a3 | v29))
      {
        time = **&MEMORY[0x1E6960C70];
        fpfs_PrepareForSeek(a1, 255, 1);
        fpfs_GetNextTimeToPlay(DerivedStorage, 0, &time);
        CMTimeMake(&rhs, 1, 100000);
        lhs = time;
        CMTimeAdd(&time, &lhs, &rhs);
        rhs = time;
        lhs = **&MEMORY[0x1E6960C80];
        type = **&MEMORY[0x1E6960C88];
        return fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts(a1, &rhs, 5, &lhs, &type, 0, 0, 0, 65537, 0, 0);
      }

      return v29;
    }

LABEL_17:
    v17 = *(v11 + 108);
    v18 = fabsf(v17);
    v19 = *(DerivedStorage + 1680);
    if (v19)
    {
      valuePtr = FigAlternateGetPeakBitRate(v19);
      if (FigAlternateIsIFrameOnly(*(DerivedStorage + 1680)))
      {
        v20 = fabsf(a6);
        if (a6 == 0.0)
        {
          v20 = 2.0;
        }

        valuePtr = (v20 * valuePtr);
      }
    }

    v21 = 1.0;
    if (a3)
    {
      v21 = 2.0;
    }

    if (v17 == 0.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = v18;
    }

    if (!a4)
    {
      goto LABEL_98;
    }

    Count = CFArrayGetCount(a4);
    if (Count < 1)
    {
      goto LABEL_98;
    }

    v24 = Count;
    v25 = 0;
    ValueAtIndex = 0;
    do
    {
      v27 = CFArrayGetValueAtIndex(a4, v25);
      PeakBitRate = FigAlternateGetPeakBitRate(v27);
      if (!ValueAtIndex || (v22 * PeakBitRate) <= valuePtr)
      {
        ValueAtIndex = v27;
      }

      ++v25;
    }

    while (v24 != v25);
    if (!ValueAtIndex)
    {
      goto LABEL_98;
    }

    goto LABEL_85;
  }

  return v29;
}

void *fpfsi_applyTimeToPauseBuffering(uint64_t a1, __int128 *a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  if (!a3)
  {
    time1 = *(DerivedStorage + 1400);
    time2 = *a2;
    result = CMTimeCompare(&time1, &time2);
    if (!result)
    {
      return result;
    }
  }

  time2 = *a2;
  fpfsi_AlignTimeToSnapping();
  *a2 = time1;
  v9 = *(v7 + 2568);
  if (*(a2 + 12))
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (!v9)
    {
      goto LABEL_11;
    }

    v11 = UpTimeNanoseconds;
    v12 = *(v7 + 2072);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v13)
    {
      goto LABEL_11;
    }

    v14 = 0x1F0B675D8;
  }

  else
  {
    v10 = FigGetUpTimeNanoseconds();
    if (!v9)
    {
      goto LABEL_11;
    }

    v11 = v10;
    v12 = *(v7 + 2072);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v13)
    {
      goto LABEL_11;
    }

    v14 = 0x1F0B675B8;
  }

  v13(v9, @"playerStats", v14, (v11 - v12) / 0xF4240uLL, 1);
LABEL_11:
  time1 = *a2;
  time2 = *(v7 + 1400);
  if (CMTimeCompare(&time1, &time2) && dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v17 = *a2;
  *(v7 + 1416) = *(a2 + 2);
  *(v7 + 1400) = v17;
  if (*(a2 + 12) & 1) != 0 && (*(v7 + 1436))
  {
    time1 = *(v7 + 1424);
    time2 = *a2;
    CMTimeCompare(&time1, &time2);
  }

  return fpfs_CheckPrebufferedLevels(&time1, a1, 1, -1, 0);
}

void fpfsi_applyTimeToPausePlayback(const void *a1, __int128 *a2, int a3, int a4, int a5)
{
  v32 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  if (a4 && (*(a2 + 12) & 1) == 0)
  {
    fpfs_UnmuteNextAtmosAudioTrack(*DerivedStorage, a1, 0);
  }

  if (a3 || (time1 = *(v11 + 1424), time2 = *a2, CMTimeCompare(&time1, &time2)))
  {
    v12 = (v11 + 1424);
    *&v25.value = *(v11 + 1424);
    v25.epoch = *(v11 + 1440);
    time2 = *a2;
    fpfsi_AlignTimeToSnapping();
    *a2 = *&time1.value;
    epoch = time1.epoch;
    *(a2 + 2) = time1.epoch;
    *&time1.value = *a2;
    time1.epoch = epoch;
    time2 = *(v11 + 1424);
    if (CMTimeCompare(&time1, &time2) && dword_1EAF169F0)
    {
      LODWORD(v29.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v15 = *a2;
    *(v11 + 1440) = *(a2 + 2);
    *v12 = v15;
    if ((*(v11 + 1436) & 1) == 0)
    {
      if (*(v11 + 912))
      {
        memset(&time1, 0, sizeof(time1));
        if (!fpfsi_GetDuration(a1, &time1.value) && (time1.flags & 0x11) == 0x11)
        {
          v22 = (*(v11 + 532) ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
          FigBaseObject = FigBytePumpGetFigBaseObject(*(v11 + 912));
          v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v24)
          {
            v24(FigBaseObject, 0x1F0B1F458, *v22);
          }
        }
      }
    }

    v16 = *(v11 + 1436);
    if (a5)
    {
      if (v16)
      {
LABEL_18:
        if (*(v11 + 1412))
        {
          time1 = *(v11 + 1400);
          *&time2.value = *v12;
          time2.epoch = *(v11 + 1440);
          CMTimeCompare(&time1, &time2);
        }

LABEL_20:
        v17 = CMBaseObjectGetDerivedStorage();
        v18 = v17;
        if (*(v17 + 1436))
        {
          memset(&time1, 0, sizeof(time1));
          fpfs_GetNextTimeToPlay(v17, 0, &time1);
          v19 = (v18 + 2352);
          if (*(v18 + 2352) || !fpfsi_CreateTimebaseTimer(a1, *(v18 + 600), *(v18 + 16), &fpfs_TimeToPausePlaybackTimerProc, 0, (v18 + 2352)))
          {
            v20 = (v18 + 1424);
            memset(&time2, 0, sizeof(time2));
            fpfsi_EstimateTimeToPause(&time2);
            memset(&v29, 0, sizeof(v29));
            type = *v20;
            rhs = time2;
            CMTimeSubtract(&v29, &type, &rhs);
            type = time1;
            rhs = v29;
            if ((CMTimeCompare(&type, &rhs) & 0x80000000) == 0 && (type = time1, rhs = *v20, CMTimeCompare(&type, &rhs) < 0))
            {
              fpfs_HandleReachingTimeToPausePlayback();
            }

            else
            {
              memset(&type, 0, sizeof(type));
              rhs = *v20;
              *&v26.value = kTimeToPausePlaybackAdvanceNotice;
              v26.epoch = 0;
              CMTimeSubtract(&type, &rhs, &v26);
              rhs = time1;
              v26 = type;
              if (CMTimeCompare(&rhs, &v26) < 0)
              {
                v29 = type;
              }

              v21 = *v19;
              rhs = v29;
              FigSpeedRampTimerScheduleForL2Time(v21, &rhs, 0);
            }
          }
        }

        else if (*(v17 + 2352))
        {
          fpfsi_RemoveAndClearTimer((v17 + 2352));
        }

        fpfs_GetNextTimeToPlay(v11, 0, &time1);
        if (fpfsi_atOrAfterTimeToPausePlayback(v11))
        {
          fpfs_HandleReachingTimeToPausePlayback();
          if (!a4)
          {
            return;
          }
        }

        else if (!a4)
        {
          return;
        }

        fpfs_CheckPrebufferedLevels(&time1, a1, 1, -1, 0);
        return;
      }
    }

    else if (v16)
    {
      goto LABEL_17;
    }

    if ((*(v11 + 1460) & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_17:
    time1 = v25;
    *&time2.value = *v12;
    time2.epoch = *(v11 + 1440);
    fpfsi_ClampVideoToTime();
    if ((*(v11 + 1436) & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }
}

uint64_t fpfsi_EnterIFrameModeForSeekWithNonzeroToleranceIfPossible(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v5 = CMBaseObjectGetDerivedStorage();
  if (!*(v5 + 40))
  {
    return 0;
  }

  if (!*(v5 + 48) || !*(v5 + 49) || *(DerivedStorage + 108) != 0.0 || (*(v4 + 332) & 1) == 0 || (*(v4 + 356) & 0x1D) != 1 && (*(v4 + 380) & 0x1D) != 1)
  {
    goto LABEL_10;
  }

  time1 = *(v4 + 344);
  time2 = *(v4 + 368);
  if (!CMTimeCompare(&time1, &time2) || (*(v4 + 1484) & 1) != 0)
  {
    goto LABEL_10;
  }

  v7 = fpfsi_CreateAndAddScanningModeFilterToBoss(a2, 1u);
  if (*(v4 + 2904))
  {
    v7 = FigAlternateSelectionBossSetProperty(*(v4 + 40), @"Paused", *MEMORY[0x1E695E4C0]);
  }

  if (v7)
  {
    goto LABEL_10;
  }

  if (FigAlternateSelectionBossApplyFilters(*(v4 + 40)))
  {
    goto LABEL_10;
  }

  v8 = *(v4 + 40);
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (FigAlternateSelectionBossCopyProperty(v8, @"FilteredAlternateList", AllocatorForMedia, &cf))
  {
    goto LABEL_10;
  }

  if (!cf)
  {
    return 0;
  }

  if (CFArrayGetCount(cf) < 1 || (ValueAtIndex = CFArrayGetValueAtIndex(cf, 0), !FigAlternateIsIFrameOnly(ValueAtIndex)) || (fpfsi_UpdateValidAlternateListAndSuggestAnAlternate(), v11))
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    v6 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v6 = 1;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t fpfs_ClearAllCachedRenderChains(uint64_t a1)
{
  fpfsi_ClearCachedAudioRenderChains(a1);
  fpfsi_ClearCachedVideoRenderChains(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 816))
  {
    fpfs_releaseRenderChain(a1);
  }

  *(DerivedStorage + 816) = 0;
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  if (*(result + 808))
  {
    result = fpfs_releaseRenderChain(a1);
  }

  *(v4 + 808) = 0;
  return result;
}

double fpfsi_updateMaxPlayThroughTime()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 576);
  if (v2)
  {
    LODWORD(result) = *(DerivedStorage + 840);
    if (*&result <= 2.0 && *&result >= 0.0)
    {
      v3 = (DerivedStorage + 3272);
      if (*(DerivedStorage + 3284))
      {
        *&time1.value = *v3;
        time1.epoch = *(DerivedStorage + 3288);
        CMTimebaseGetTime(&time2, v2);
        CMTimeMaximum(&v6, &time1, &time2);
      }

      else
      {
        CMTimebaseGetTime(&v6, v2);
      }

      result = *&v6.value;
      *v3 = v6;
    }
  }

  return result;
}

uint64_t fpfsi_TimeInTrackListNonSparseCachedSamples(uint64_t *a1, CMTime *a2, _BYTE *a3)
{
  v4 = *a1;
  if (*a1)
  {
    v6 = 0;
    while (1)
    {
      if (!*(v4 + 200))
      {
        v7 = *(v4 + 96);
        if (v7)
        {
          if (!CMBufferQueueIsEmpty(v7))
          {
            time1 = *a2;
            time2 = *(v4 + 232);
            if (CMTimeCompare(&time1, &time2) < 0)
            {
              time1 = *a2;
              v11 = 0;
              CMBufferQueueCallForEachBuffer(*(v4 + 96), fpfsi_GetSampleRightBeforeTime, &time1);
              if (v11)
              {
                fpfs_GetEndOutputPresentationTimeStamp(v11, &time2);
                v9 = *a2;
                if (CMTimeCompare(&time2, &v9) > 0)
                {
                  result = 1;
                  v6 = 1;
                  if (a3)
                  {
                    goto LABEL_15;
                  }

                  return result;
                }
              }
            }

            v6 = 1;
          }
        }
      }

      v4 = *(v4 + 24);
      if (!v4)
      {
        result = 0;
        if (a3)
        {
          goto LABEL_15;
        }

        return result;
      }
    }
  }

  result = 0;
  v6 = 0;
  if (a3)
  {
LABEL_15:
    *a3 = v6 & 1;
  }

  return result;
}

uint64_t fpfsi_GetSampleRightBeforeTime(opaqueCMSampleBuffer *a1, CMTime *a2)
{
  memset(&v10, 0, sizeof(v10));
  CMSampleBufferGetOutputPresentationTimeStamp(&v10, a1);
  memset(&v9, 0, sizeof(v9));
  CMSampleBufferGetOutputDecodeTimeStamp(&v9, a1);
  memset(&v8, 0, sizeof(v8));
  value = a2[1].value;
  if (value)
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v8, value);
  }

  else
  {
    v8 = **&MEMORY[0x1E6960C80];
  }

  if ((v10.flags & 1) == 0 && (v9.flags & 1) == 0)
  {
    return 0;
  }

  time1 = v10;
  v6 = *a2;
  if (CMTimeCompare(&time1, &v6) >= 1)
  {
    time1 = v9;
    v6 = *a2;
    if (CMTimeCompare(&time1, &v6) > 0)
    {
      return 4294954433;
    }
  }

  time1 = v10;
  v6 = v8;
  if (CMTimeCompare(&time1, &v6) < 1)
  {
    return 0;
  }

  time1 = v10;
  v6 = *a2;
  if (CMTimeCompare(&time1, &v6) > 0)
  {
    return 0;
  }

  result = 0;
  a2[1].value = a1;
  return result;
}

uint64_t fpfs_PlayQueueCallForEachItem(uint64_t a1, uint64_t (*a2)(const __CFArray *, uint64_t), uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294954436;
  }

  v6 = DerivedStorage;
  Next = fpfs_getNext(DerivedStorage, 0);
  if (!Next)
  {
    return 0;
  }

  v8 = Next;
  do
  {
    v9 = a2(v8, a3);
    v10 = fpfs_getNext(v6, v8);
    if (v9)
    {
      break;
    }

    v8 = v10;
  }

  while (v10);
  return v9;
}

uint64_t fpfs_clearCoordinatedPlaybackSynchronizationTimebaseForPlayQueueItemsApply(uint64_t a1, uint64_t a2)
{
  if (*a2 && !*(a2 + 8))
  {
    if (*a2 == a1)
    {
      *(a2 + 8) = 1;
    }
  }

  else
  {
    fpfsi_clearCoordinatedPlaybackSynchronizationTimebase();
  }

  return 0;
}

uint64_t fpfs_getPlaybackState(uint64_t a1, int *a2, _BYTE *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 80);
  if (!result)
  {
    if (*(DerivedStorage + 108) != 0.0)
    {
      goto LABEL_26;
    }

LABEL_27:
    LOBYTE(v17) = 0;
    v22 = 0;
    goto LABEL_28;
  }

  result = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  if (*(DerivedStorage + 108) == 0.0)
  {
    goto LABEL_27;
  }

  v8 = result;
  if (!result)
  {
LABEL_26:
    LOBYTE(v17) = 0;
    v22 = 3;
    goto LABEL_28;
  }

  v9 = *(DerivedStorage + 80);
  v10 = CMBaseObjectGetDerivedStorage();
  v11 = CMBaseObjectGetDerivedStorage();
  if ((*(v10 + 1436) & 0x1D) == 1 && (result = fpfs_getPlaybackState_cold_1(v10), (result & 1) == 0) || fpfsi_isAssociatedInterstitialEventActive() && (*(v10 + 444) & 1) != 0 && (HostTimeClock = CMClockGetHostTimeClock(), CMClockGetTime(&time1, HostTimeClock), time2 = *(v10 + 432), result = CMTimeCompare(&time1, &time2), result < 1) || (result = fpfsi_isAssociatedInterstitialEventActive(), result) && (*(v10 + 1436) & 0x1D) == 1 && (fpfsi_PredictedEndTime(v9, &time1), time2 = *(v10 + 1424), result = fpfs_TimeIsAtOrAfter(v11, &time2, &time1), result) && ((v13 = *(v11 + 688), v14 = *(v11 + 80), Count = CFArrayGetCount(*(v11 + 72)), !v14) ? (v16 = Count) : (v16 = Count + 1), (result = FigPlaybackGetEffectiveActionAtEnd(v13, v16), result == 2) && *(v10 + 530)))
  {
    LOBYTE(v17) = 0;
    v22 = 6;
    goto LABEL_28;
  }

  LOBYTE(v17) = *(DerivedStorage + 160);
  if (!v17)
  {
LABEL_24:
    v22 = 4;
    goto LABEL_28;
  }

  if (*(v8 + 530) && ((v18 = *(DerivedStorage + 688), v19 = *(DerivedStorage + 80), v20 = CFArrayGetCount(*(DerivedStorage + 72)), !v19) ? (v21 = v20) : (v21 = v20 + 1), result = FigPlaybackGetEffectiveActionAtEnd(v18, v21), result == 2) || *(v8 + 840) != 0.0)
  {
LABEL_23:
    LOBYTE(v17) = 0;
    goto LABEL_24;
  }

  LODWORD(v17) = *(v8 + 524);
  if (!v17)
  {
    goto LABEL_38;
  }

  if (v17 != 1)
  {
LABEL_33:
    LOBYTE(v17) = 0;
    v22 = 2;
    goto LABEL_28;
  }

  result = fpfsi_waitForVenueDescriptionProcessing();
  if (result)
  {
    LOBYTE(v17) = 0;
LABEL_38:
    v22 = 1;
    goto LABEL_28;
  }

  v23 = *(v8 + 840);
  if (v23 == 0.0)
  {
    result = fpfs_getStartupTaskWaitingStatus(a1, &v26);
    if (result)
    {
      LOBYTE(v17) = 1;
      v22 = v26;
      goto LABEL_28;
    }

    v23 = *(v8 + 840);
  }

  if (v23 != 0.0)
  {
    goto LABEL_47;
  }

  v17 = *(v8 + 2992);
  if (v17)
  {
    goto LABEL_23;
  }

  v24 = *(DerivedStorage + 108);
  v22 = 4;
  if (v24 <= 2.0 && v24 >= 0.0)
  {
LABEL_47:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_33;
  }

LABEL_28:
  if (a3)
  {
    *a3 = v17;
  }

  *a2 = v22;
  return result;
}

const __CFArray *fpfs_getStartupTaskWaitingStatus(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 952);
  if (result)
  {
    if (CFArrayGetCount(result) < 1)
    {
      return 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 952), 0);
      *a2 = FigPlayerStartupTaskGetWaitingState(ValueAtIndex);
      return 1;
    }
  }

  return result;
}

double fpfsi_PredictedEndTime@<D0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E6960C70];
  *&a2->value = *MEMORY[0x1E6960C70];
  a2->epoch = *(v5 + 16);
  v11 = 0uLL;
  v12 = 0;
  time1 = *(DerivedStorage + 1352);
  FPSTimelineConverterL3TimeToL2(&time1, &v11);
  if (*(DerivedStorage + 471))
  {
    memset(&time1, 0, sizeof(time1));
    memset(&time2, 0, sizeof(time2));
    fpfs_GetNextTimeToPlay(DerivedStorage, 0, &time2);
    fpfs_GetItemBufferedDuration(a1, &time1, 0, 0);
    lhs = time2;
    v7 = time1;
    CMTimeAdd(a2, &lhs, &v7);
  }

  if ((v11.n128_u8[12] & 0x1D) == 1)
  {
    *&time1.value = v11;
    time1.epoch = v12;
    time2 = *a2;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      result = v11.n128_f64[0];
      *&a2->value = v11;
      a2->epoch = v12;
    }
  }

  return result;
}

uint64_t __fpfsi_waitForVenueDescriptionProcessing_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  byte_1ED4CA3B9 = result;
  return result;
}

double fpfs_GetCurrentPTSAscending(opaqueCMSampleBuffer *a1, CMTime *a2)
{
  memset(&v7, 0, sizeof(v7));
  CMSampleBufferGetOutputPresentationTimeStamp(&v7, a1);
  if (!fpfs_IsMarkerOnly(a1))
  {
    time1 = v7;
    v5 = *a2;
    if (CMTimeCompare(&time1, &v5) < 0 || (time1 = v7, v5 = *a2, !CMTimeCompare(&time1, &v5)))
    {
      result = *&v7.value;
      a2[1] = v7;
    }
  }

  return result;
}

uint64_t fpfs_GetCurrentPTSDescending(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  memset(&v9, 0, sizeof(v9));
  CMSampleBufferGetOutputPresentationTimeStamp(&v9, a1);
  if (fpfs_IsMarkerOnly(a1))
  {
    return 0;
  }

  v5 = *&v9.value;
  *(a2 + 24) = *&v9.value;
  epoch = v9.epoch;
  *(a2 + 40) = v9.epoch;
  *&time1.value = v5;
  time1.epoch = epoch;
  v7 = *a2;
  if (CMTimeCompare(&time1, &v7) <= 0)
  {
    return 4294954433;
  }

  else
  {
    return 0;
  }
}

uint64_t fpfs_GetClosestSegmentBoundary(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  memset(&v13, 0, sizeof(v13));
  fpfs_GetEndOutputPresentationTimeStamp(a1, &v13);
  v4 = CMGetAttachment(a1, *MEMORY[0x1E6960538], 0);
  v5 = *(a2 + 84);
  if (v13.flags)
  {
    if ((v5 & 1) == 0 || (time1 = *(a2 + 72), time2 = v13, CMTimeCompare(&time1, &time2) < 0))
    {
      *(a2 + 72) = v13;
    }
  }

  if ((*(a2 + 84) & 1) != 0 && (v4 || (v5 & 1) == 0))
  {
    memset(&time1, 0, sizeof(time1));
    if (v5)
    {
      time1 = *(a2 + 72);
    }

    else
    {
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, a1);
    }

    memset(&time2, 0, sizeof(time2));
    lhs = time1;
    v8 = *a2;
    CMTimeSubtract(&time, &lhs, &v8);
    CMTimeAbsoluteValue(&time2, &time);
    *(a2 + 48) = time1;
    if ((*(a2 + 108) & 1) == 0 || (time = time2, lhs = *(a2 + 96), CMTimeCompare(&time, &lhs) < 0))
    {
      *(a2 + 24) = time1;
      *(a2 + 96) = time2;
    }

    else
    {
      time = time2;
      lhs = *(a2 + 96);
      if (CMTimeCompare(&time, &lhs) > 0)
      {
        return 4294954433;
      }
    }
  }

  return 0;
}

__n128 fpfsi_UpdateTimeIfCloser(uint64_t a1, uint64_t a2, _BYTE *a3, BOOL *a4)
{
  v7 = *(a1 + 60);
  *a3 = v7 & 1;
  if (v7)
  {
    time1 = *(a1 + 48);
    time2 = *a1;
    v8 = CMTimeCompare(&time1, &time2) >= 0;
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
  if (*(a1 + 36))
  {
    memset(&time1, 0, sizeof(time1));
    lhs = *a2;
    v10 = *a1;
    CMTimeSubtract(&time2, &lhs, &v10);
    CMTimeAbsoluteValue(&time1, &time2);
    if ((*(a2 + 12) & 1) == 0 || (time2 = *(a1 + 96), lhs = time1, CMTimeCompare(&time2, &lhs) < 0))
    {
      result = *(a1 + 24);
      *(a2 + 16) = *(a1 + 40);
      *a2 = result;
    }
  }

  return result;
}

uint64_t fpfs_UnmuteNextAtmosAudioTrack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CMBaseObjectGetDerivedStorage();
  v6 = (a3 + 24);
  if (!a3)
  {
    v6 = (result + 1024);
  }

  for (i = *v6; i; i = *(i + 24))
  {
    if (*(i + 48) != 1936684398)
    {
      continue;
    }

    v8 = *(i + 56);
    result = CMFormatDescriptionGetMediaSubType(v8);
    if (result <= 1885692722)
    {
      if (result <= 1700997938)
      {
        if (result != 1667575091)
        {
          v10 = 1667574579;
          goto LABEL_34;
        }
      }

      else if (result != 1700998451)
      {
        if (result == 1700997939)
        {
          return fpfs_UnmuteAtmosAudioTrack(a1, a2, i);
        }

        v10 = 1885547315;
LABEL_34:
        if (result == v10)
        {
          return fpfs_UnmuteAtmosAudioTrack(a1, a2, i);
        }

        continue;
      }
    }

    else if (result <= 1902469938)
    {
      if (result != 1885692723)
      {
        v10 = 1902324531;
        goto LABEL_34;
      }
    }

    else if (result != 1902469939 && result != 2053464883)
    {
      v10 = 2053319475;
      goto LABEL_34;
    }

    sizeOut = 0;
    result = CMAudioFormatDescriptionGetFormatList(v8, &sizeOut);
    if (result && sizeOut > 0x2F)
    {
      v11 = *(result + 8);
      if (v11 <= 1885547314)
      {
        v12 = v11 == 1667574579;
        v13 = 1700997939;
      }

      else
      {
        v12 = v11 == 1885547315 || v11 == 1902324531;
        v13 = 2053319475;
      }

      if (v12 || v11 == v13)
      {
        return fpfs_UnmuteAtmosAudioTrack(a1, a2, i);
      }
    }
  }

  return result;
}

uint64_t fpfs_UnmuteAtmosAudioTrack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(a3 + 206) = 0;
  return fpfs_applySoftwareVolumeToTrack();
}

CMTime *fpfsi_EstimateTimeToPause@<X0>(CMTime *a1@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v19, 0, sizeof(v19));
  CMTimeMake(&v19, 48, 1000);
  v18 = **&MEMORY[0x1E6960CC0];
  v3 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (v3)
  {
    while (1)
    {
      if (*(v3 + 48) == 1986618469)
      {
        v4 = *(v3 + 112);
        if (v4)
        {
          break;
        }
      }

      v3 = *(v3 + 24);
      if (!v3)
      {
        goto LABEL_13;
      }
    }

    cf = 0;
    v5 = *(v4 + 32);
    AllocatorForMedia = FigGetAllocatorForMedia();
    FigBaseObject = FigRenderPipelineGetFigBaseObject(v5);
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(FigBaseObject, @"NextNonJerkyStopTime", AllocatorForMedia, &cf);
      v9 = cf;
    }

    else
    {
      v9 = 0;
    }

    memset(&time1, 0, sizeof(time1));
    CMTimeMakeFromDictionary(&rhs, v9);
    FPSTimelineConverterL3TimeToL2(&rhs, &time1);
    if (cf)
    {
      CFRelease(cf);
    }

    if ((time1.flags & 0x1D) == 1)
    {
      fpfs_GetTime(DerivedStorage, &rhs);
      v14 = time1;
      CMTimeSubtract(&v18, &v14, &rhs);
      v14 = v18;
      CMTimeMultiply(&rhs, &v14, 2);
      v18 = rhs;
    }
  }

LABEL_13:
  v10 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (v10)
  {
    while (*(v10 + 48) != 1936684398 || !*(v10 + 112))
    {
      v10 = *(v10 + 24);
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    v12 = *(v10 + 56);
    if (v12)
    {
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v12);
      if (StreamBasicDescription)
      {
        CMTimeMake(&time1, StreamBasicDescription->mFramesPerPacket, StreamBasicDescription->mSampleRate);
        v19 = time1;
        CMTimeMake(&rhs, 25, 1000);
        v14 = v19;
        CMTimeAdd(&time1, &v14, &rhs);
        v19 = time1;
      }
    }
  }

LABEL_17:
  time1 = v19;
  rhs = v18;
  return CMTimeMaximum(a1, &time1, &rhs);
}

uint64_t fpfs_RestartPlayedOutTracks(const void *a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 1040);
  if (v5)
  {
    v6 = DerivedStorage;
    v7 = MEMORY[0x1E6960C70];
    do
    {
      if (*(v5 + 168) != 1)
      {
        time1 = *(v5 + 232);
        v22 = *a2;
        if (CMTimeCompare(&time1, &v22) > 0 || !*(v5 + 198))
        {
          *(v5 + 208) = *v7;
          *(v5 + 224) = *(v7 + 16);
        }
      }

      v5 = *(v5 + 24);
    }

    while (v5);
    v8 = *(v6 + 1040);
    if (v8)
    {
      v5 = 0;
      while (1)
      {
        v9 = *(v8 + 24);
        time1 = *(v8 + 232);
        v22 = *a2;
        if (CMTimeCompare(&time1, &v22) > 0 || !*(v8 + 198))
        {
          if ((*(v8 + 220) & 1) == 0)
          {
            v10 = *&a2->value;
            *(v8 + 224) = a2->epoch;
            *(v8 + 208) = v10;
          }

          fpfs_ResurrectPlayedOutTrack(v8);
          v11 = *(v8 + 168);
          if (v11 == 1)
          {
            if (*(v8 + 48) == 1986618469)
            {
              fpfs_CheckVideoSyncQueue();
              if (v15)
              {
                fpfs_FinishVideoSync();
LABEL_37:
                if (v16)
                {
                  v20 = v5 == 0;
                }

                else
                {
                  v20 = 0;
                }

                if (v20)
                {
                  v5 = v16;
                }

                else
                {
                  v5 = v5;
                }
              }
            }
          }

          else if (v11 == 6)
          {
            if (*(v8 + 48) == 1986618469)
            {
              fpfs_UpdateDimensions(a1, 1);
            }

            time1 = *(v8 + 208);
            fpfsi_RestartResurrectedTrack(v8, &time1, 1);
            v13 = v12;
            if (!v12 && v9)
            {
              v14 = v9;
              while (*(v14 + 168) == 1 || !FigStreamTrackCanTracksBeSyncPairsIgnoringDiscontinuity(v14, v8))
              {
                v14 = *(v14 + 24);
                if (!v14)
                {
                  goto LABEL_34;
                }
              }

              v17 = 256;
              if ((*(v8 + 268) & 1) == 0)
              {
                v17 = 232;
              }

              v18 = v8 + v17;
              v19 = *v18;
              *(v14 + 224) = *(v18 + 16);
              *(v14 + 208) = v19;
            }

LABEL_34:
            if (v13 == -16042)
            {
              v16 = 0;
            }

            else
            {
              v16 = v13;
            }

            goto LABEL_37;
          }
        }

        if (v9)
        {
          v8 = v9;
          if (*(v6 + 1040))
          {
            continue;
          }
        }

        return v5;
      }
    }

    return 0;
  }

  return v5;
}

void fpfs_PostHasEnabledTrackTypeNotification(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x1E695E4D0];
  v5 = *MEMORY[0x1E695E4C0];
  v6 = @"HasEnabledVideo";
  v7 = 1;
  do
  {
    v8 = v7;
    if (v7)
    {
      v9 = *(DerivedStorage + 1680);
      if (v9)
      {
        if (FigAlternateIsIFrameOnly(v9))
        {
          if (*(DerivedStorage + 793))
          {
            v10 = v4;
          }

          else
          {
            v10 = v5;
          }

          v17 = CFRetain(v10);
          if (v17 == v4)
          {
LABEL_24:
            if (*(DerivedStorage + 793))
            {
              goto LABEL_34;
            }

            *(DerivedStorage + 793) = 1;
          }

          else
          {
LABEL_21:
            if (!*(DerivedStorage + 793))
            {
              goto LABEL_34;
            }

            *(DerivedStorage + 793) = 0;
          }

          value = @"HasEnabledAudio";
          v22 = @"HasEnabledAudioChanged";
          if (!@"HasEnabledAudioChanged")
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }
    }

    cf = 0;
    LoggingIDForTrackList = fpfsi_createLoggingIDForTrackList(a2, @":HasEnabledMedia");
    AllocatorForMedia = FigGetAllocatorForMedia();
    if (FigStreamTrackListCreate(AllocatorForMedia, LoggingIDForTrackList, &cf) || fpfsi_findLastPlayingTracksForMediaType())
    {
      v17 = 0;
      if (LoggingIDForTrackList)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (FigStreamTrackListGetCount(cf))
      {
        v20 = v4;
      }

      else
      {
        v20 = v5;
      }

      v17 = CFRetain(v20);
      if (LoggingIDForTrackList)
      {
LABEL_16:
        CFRelease(LoggingIDForTrackList);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v17 == v4)
    {
      if (v8)
      {
        goto LABEL_24;
      }

      if (*(DerivedStorage + 794))
      {
        goto LABEL_34;
      }

      *(DerivedStorage + 794) = 1;
    }

    else
    {
      if (v8)
      {
        goto LABEL_21;
      }

      if (!*(DerivedStorage + 794))
      {
        goto LABEL_34;
      }

      *(DerivedStorage + 794) = 0;
    }

    v22 = @"HasEnabledVideoChanged";
    value = v6;
    if (!@"HasEnabledVideoChanged")
    {
      goto LABEL_34;
    }

LABEL_33:
    if (!value)
    {
LABEL_34:
      if (!v17)
      {
        goto LABEL_36;
      }

LABEL_35:
      CFRelease(v17);
      goto LABEL_36;
    }

    v24 = v6;
    NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(a1, a2, v11, v12, v13, v14, v15, v16, value, 0);
    fpfs_EnqueueNotification(a1, v22, a2, NotificationPayloadForProperties);
    if (NotificationPayloadForProperties)
    {
      CFRelease(NotificationPayloadForProperties);
    }

    v6 = v24;
    if (v17)
    {
      goto LABEL_35;
    }

LABEL_36:
    v7 = 0;
  }

  while ((v8 & 1) != 0);
}

__CFString *fpfsi_createLoggingIDForTrackList(uint64_t a1, const __CFString *a2)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFStringCreateMutable(AllocatorForMedia, 0);
  if (Mutable)
  {
    if (a1)
    {
      v6 = (CMBaseObjectGetDerivedStorage() + 3096);
    }

    else
    {
      v6 = "";
    }

    CFStringAppendCString(Mutable, v6, 0x600u);
    if (a2)
    {
      CFStringAppend(Mutable, a2);
    }
  }

  return Mutable;
}

CFTypeRef fpfsi_copyImageQueueGauge(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v30 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  result = fpfsi_copyCurrentVideoDestination();
  if (result || (v8 = *(DerivedStorage + 752)) != 0 && (result = CFRetain(v8)) != 0)
  {
LABEL_2:
    v4 = result;
    AllocatorForMedia = FigGetAllocatorForMedia();
    CMBaseObject = FigAggregateVideoDestinationGetCMBaseObject(v4);
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, @"ImageQueueGauge", AllocatorForMedia, &v30);
    }

    CFRelease(v4);
    return v30;
  }

  TrackWithFormatDescriptionOfType = fpfs_FirstTrackWithFormatDescriptionOfType(a1, 1986618469);
  if (TrackWithFormatDescriptionOfType)
  {
    v23 = TrackWithFormatDescriptionOfType;
    fpfsi_addCAImageQueuesAndSlots();
    fpfsi_createOutputDestinationForVideo();
    result = *(v23 + 104);
    if (!result)
    {
      return result;
    }

    result = CFRetain(result);
    if (!result)
    {
      return result;
    }

    goto LABEL_2;
  }

  if (*(DerivedStorage + 1712))
  {
    return 0;
  }

  memset(&v29, 0, sizeof(v29));
  NextTimeToPlay = fpfs_GetNextTimeToPlay(DerivedStorage, 0, &v29);
  memset(&v28, 0, sizeof(v28));
  fpfsi_PredictedEndTime(&v28, a1, NextTimeToPlay);
  flags = v28.flags;
  if (v28.flags)
  {
    v12 = v29.flags;
    epoch = v29.epoch;
    v14 = v28.epoch;
    if ((v28.flags & 0x1F) == 3 || (v29.flags & 0x1F) == 3)
    {
      memset(&time1, 0, sizeof(time1));
      rhs = v28;
      lhs = v29;
      CMTimeSubtract(&time, &lhs, &rhs);
      CMTimeAbsoluteValue(&time1, &time);
      CMTimeMake(&time, 1, 1000000000);
      lhs = time1;
      if (CMTimeCompare(&lhs, &time) < 1)
      {
        return 0;
      }
    }

    time1.value = v29.value;
    time1.timescale = v29.timescale;
    time1.flags = v12;
    time1.epoch = epoch;
    time.value = v28.value;
    time.timescale = v28.timescale;
    time.flags = flags;
    time.epoch = v14;
    if ((CMTimeCompare(&time1, &time) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  v15 = *(DerivedStorage + 736);
  if (!v15)
  {
    v16 = (DerivedStorage + 736);
    v17 = FigGetAllocatorForMedia();
    FigImageQueueGaugeCreate(v17, 0, (DerivedStorage + 736));
    if (dword_1EAF169F0)
    {
      LODWORD(lhs.value) = 0;
      LOBYTE(rhs.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = lhs.value;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, rhs.value))
      {
        v20 = value;
      }

      else
      {
        v20 = value & 0xFFFFFFFE;
      }

      if (v20)
      {
        v21 = *DerivedStorage;
        if (v21)
        {
          v22 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v22 = "";
        }

        if (a1)
        {
          v24 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v24 = "";
        }

        v25 = *v16;
        time1 = v29;
        Seconds = CMTimeGetSeconds(&time1);
        time1 = v28;
        v27 = CMTimeGetSeconds(&time1);
        LODWORD(time.value) = 136316930;
        *(&time.value + 4) = "fpfsi_copyImageQueueGauge";
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = v21;
        HIWORD(time.epoch) = 2082;
        v34 = v22;
        v35 = 2048;
        v36 = a1;
        v37 = 2082;
        v38 = v24;
        v39 = 2048;
        v40 = v25;
        v41 = 2048;
        v42 = Seconds;
        v43 = 2048;
        v44 = v27;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v15 = *v16;
    if (!*v16)
    {
      return 0;
    }
  }

  result = CFRetain(v15);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t fpfs_RenderBufferOrEnqueueToStartupQueue(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = *(a1 + 112);
  if (v4 && ((v5 = *(v4 + 8), v5 != a1) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {

    return fpfs_RenderBuffer(a1, a2);
  }

  else if (*(a1 + 168) >= 6)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294951597;
  }

  else
  {
    v8 = *(a1 + 88);

    return CMBufferQueueEnqueue(v8, a2);
  }
}

uint64_t CMTimeCompareApproximately(CMTime *a1, CMTime *a2)
{
  if ((a1->flags & 0x1F) == 3 || (a2->flags & 0x1F) == 3)
  {
    memset(&time1, 0, sizeof(time1));
    lhs = *a1;
    v5 = *a2;
    CMTimeSubtract(&time, &lhs, &v5);
    CMTimeAbsoluteValue(&time1, &time);
    CMTimeMake(&time, 1, 1000000000);
    lhs = time1;
    if (CMTimeCompare(&lhs, &time) < 1)
    {
      return 0;
    }
  }

  time1 = *a1;
  time = *a2;
  return CMTimeCompare(&time1, &time);
}

void fpfsi_displaySizeChanged(int a1, uint64_t a2, int a3, int a4, CFTypeRef cf)
{
  v11[20] = *MEMORY[0x1E69E9840];
  cfa = 0;
  v11[0] = 0;
  if (!cf)
  {
    fpfsi_displaySizeChanged_cold_3();
    goto LABEL_13;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFDictionaryGetTypeID())
  {
    fpfsi_displaySizeChanged_cold_1();
    goto LABEL_13;
  }

  if (FigRetainProxyIsInvalidated())
  {
    fpfsi_displaySizeChanged_cold_2();
    goto LABEL_13;
  }

  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, v11, &cfa))
  {
    v8 = cfa;
    if (!cfa)
    {
      goto LABEL_13;
    }

LABEL_12:
    CFRelease(v8);
    goto LABEL_13;
  }

  CMBaseObjectGetDerivedStorage();
  v8 = cfa;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 792))
  {
    *(DerivedStorage + 792) = 1;
    FigRetainProxyRetain();
    CMNotificationCenterGetDefaultLocalCenter();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
  }

  FigSimpleMutexUnlock();
  if (v8)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v11[0])
  {
    CFRelease(v11[0]);
  }
}

void fpfsi_copyCurrentImageQueueArrayAndOptions(uint64_t a1, uint64_t a2)
{
  v3 = fpfsi_copyCurrentVideoDestination();
  if (v3)
  {
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v5)
    {
      v5(v4, a2, 0);
    }

    CFRelease(v4);
  }
}

void fpfs_TransitionFromItemToItem(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 2472))
  {
    fpfs_CommitToGaplessTransition();
  }

  else
  {
    fpfs_ResolveAllWaitingTracks(a2);
  }
}

void fpfs_AreItemsEligibleForGaplessTransition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, _BYTE *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = CMBaseObjectGetDerivedStorage();
  v24 = 0uLL;
  v25 = 0;
  fpfsi_NonSparsePlaybackEndTime(a1, &v24);
  if (a1 == a3)
  {
LABEL_16:
    v16 = 2;
    if (!a5)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ((*a2 & 1) == 0 || (*a4 & 1) == 0 || (v14 = *(a2 + 16), (v15 = *(v14 + 112)) == 0) || !FPSupport_RenderPipelineSupportsGaplessTransitionWithFormats(*(v15 + 32), *(v14 + 56), *(*(a4 + 8) + 56)) || (v17 = fpfsi_GetSpatializationConfiguration() == 1, fpfs_ShouldEnableSpatializationForTrack(*(a4 + 8)) != v17) || (v18 = *(DerivedStorage + 3128), v18 != *(v13 + 3128)) || v18 && MTAudioProcessingTapIsProxyTap(v18) || FPSupport_AudioProcessingUnitsConfigurationsAreDifferent() || (v24.n128_u8[12] & 1) == 0)
  {
    v16 = 0;
    if (!a5)
    {
      goto LABEL_18;
    }

LABEL_17:
    *a5 = v16;
    goto LABEL_18;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 504))
  {
    memset(&v23, 0, sizeof(v23));
    CMTimeMake(&v23, 1, 1);
    fpfsi_LastAudioNonSparseSampleEnd(a1, &lhs);
    v20 = v23;
    CMTimeSubtract(&v22, &lhs, &v20);
    fpfsi_PredictedEndTime(&lhs, a1, v19);
    if (CMTimeCompareApproximately(&v22, &lhs) > 0)
    {
      goto LABEL_16;
    }
  }

  v16 = 1;
  if (a5)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (a6)
  {
    *a6 = 0;
  }
}

uint64_t fpfsi_AllTracksForMediaTypeArePlaying()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (!v0)
  {
    return 1;
  }

  while (*(v0 + 48) != 1936684398 || *(v0 + 168) == 6)
  {
    v0 = *(v0 + 24);
    if (!v0)
    {
      return 1;
    }
  }

  return 0;
}

double fpfp_GetTransitionTimebaseStartTime@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, CMTime *a5@<X4>, int a6@<W5>, CMTime *a7@<X6>, CMTime *a8@<X7>, CMTime *a9@<X8>)
{
  v13 = *(a3 + 16);
  v14 = *(a4 + 8);
  v15 = MEMORY[0x1E6960C70];
  v16 = *MEMORY[0x1E6960C70];
  *&a9->value = *MEMORY[0x1E6960C70];
  v17 = *(v15 + 16);
  a9->epoch = v17;
  *&v30.value = v16;
  v30.epoch = v17;
  v18 = *MEMORY[0x1E6960CC0];
  *&v29.value = *MEMORY[0x1E6960CC0];
  v19 = *(MEMORY[0x1E6960CC0] + 16);
  v29.epoch = v19;
  if (a6)
  {
    if (v13)
    {
      v25 = v18;
      v21 = *(a3 + 32);
      time2 = *a5;
      fpfs_TransposeItemTime(&time2, v13, v14, &time1);
      v30 = time1;
      if ((*(a1 + 1364) & 1) != 0 || !v21 || (time1 = *(v13 + 232), time2 = *(v21 + 232), CMTimeCompare(&time1, &time2) < 1))
      {
        *&v29.value = v25;
        v29.epoch = v19;
      }

      else
      {
        time1 = *(v13 + 232);
        time2 = *(v21 + 232);
        CMTimeSubtract(&v29, &time1, &time2);
      }

      time1 = v30;
      time2 = v29;
      CMTimeAdd(a9, &time1, &time2);
    }

    else
    {
      v22 = *(a4 + 24);
      v23 = *(a3 + 32);
      time1 = *a5;
      fpfs_TransposeItemTime(&time1, v23, v22, &v30);
      *a9 = v30;
    }
  }

  else
  {
    v26 = v16;
    fpfs_GetNextTimeToPlay(a2, 0, a9);
    *&v30.value = v26;
    v30.epoch = v17;
  }

  *a7 = v30;
  result = *&v29.value;
  *a8 = v29;
  return result;
}

uint64_t fpfs_SetRenderPipelinePropertiesToUpdateAtTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v6 = CMBaseObjectGetDerivedStorage();
  valuePtr = *(DerivedStorage + 160);
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v10 = Mutable;
    FigCFDictionarySetValueOrCFNull();
    if (*(v6 + 968))
    {
      FPSTimelineConverterCopyProperty(*(v5 + 3376), @"SpeedRampData", 0, &cf);
      FigCFDictionarySetValueOrCFNull();
    }

    if (CFDictionaryGetCount(v10) < 1)
    {
      v13 = 0;
    }

    else
    {
      v11 = *(a3 + 32);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (v12)
      {
        v13 = v12(v11, v7, v10);
      }

      else
      {
        v13 = 4294954514;
      }
    }

    CFRelease(v10);
    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    fpfs_SetRenderPipelinePropertiesToUpdateAtTransition_cold_1(&v17);
    v13 = v17;
    if (v7)
    {
LABEL_10:
      CFRelease(v7);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

void fpfsi_SetRenderChainOnTrackOfItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sizeOut[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MediaType = CMFormatDescriptionGetMediaType(*(a3 + 16));
  if (*(a2 + 112))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return;
  }

  v8 = MediaType;
  *(a2 + 112) = a3;
  *(a2 + 437) = 0;
  ++*a3;
  fpfs_SetFeederTrack(a3, a2);
  fpfs_CacheRenderChain(a1, a3, v8);
  if (*(a2 + 48) == 1936684398)
  {
    BOOLean = 0;
    v9 = *(*(a2 + 112) + 32);
    AllocatorForMedia = FigGetAllocatorForMedia();
    FigBaseObject = FigRenderPipelineGetFigBaseObject(v9);
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(FigBaseObject, @"SpatializationEnabled", AllocatorForMedia, &BOOLean);
    }

    v13 = *(DerivedStorage + 1816);
    v14 = FigRenderPipelineGetFigBaseObject(*(*(a2 + 112) + 32));
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v15)
    {
      v15(v14, @"AudioDeviceChannelMap", v13);
    }

    if (dword_1EAF169F0)
    {
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v17 = *(DerivedStorage + 856);
    v18 = FigRenderPipelineGetFigBaseObject(*(*(a2 + 112) + 32));
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v19)
    {
      v19(v18, @"TimePitchAlgorithm", v17);
    }

    v20 = *(DerivedStorage + 3144);
    v21 = FigRenderPipelineGetFigBaseObject(*(*(a2 + 112) + 32));
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v22)
    {
      v22(v21, @"AudioProcessingUnits", v20);
    }

    v23 = *(DerivedStorage + 3160);
    v24 = FigRenderPipelineGetFigBaseObject(*(*(a2 + 112) + 32));
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v25)
    {
      v25(v24, @"AudioQueueClockDevice", v23);
    }

    fpfsi_applyLoudnessInfo(DerivedStorage, a2, 0);
    fpfsi_applyAdjustTargetLevel(DerivedStorage, a2);
    fpfsi_applyAdjustCompressionProfile(DerivedStorage, a2);
    fpfsi_RTCReportingUpdateAudioInfo(DerivedStorage, a2);
    if (BOOLean)
    {
      Value = CFBooleanGetValue(BOOLean);
    }

    else
    {
      Value = 0;
    }

    v27 = *(DerivedStorage + 2568);
    if (v27)
    {
      v28 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v28)
      {
        v28(v27, @"playerStats", 0x1F0B43478, Value, 0);
      }
    }

    v29 = *(a2 + 56);
    MediaSubType = CMFormatDescriptionGetMediaSubType(v29);
    v31 = 1;
    if (MediaSubType > 1885692722)
    {
      if (MediaSubType <= 1902469938)
      {
        if (MediaSubType != 1885692723)
        {
          v32 = 1902324531;
LABEL_37:
          if (MediaSubType == v32)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        }

        goto LABEL_39;
      }

      if (MediaSubType == 2053464883)
      {
LABEL_39:
        sizeOut[0] = 0;
        FormatList = CMAudioFormatDescriptionGetFormatList(v29, sizeOut);
        v31 = 0;
        if (!FormatList || sizeOut[0] < 0x30)
        {
          goto LABEL_49;
        }

        mFormatID = FormatList->mASBD.mFormatID;
        v31 = 1;
        if (mFormatID <= 1885547314)
        {
          if (mFormatID == 1667574579)
          {
            goto LABEL_49;
          }

          v36 = 1700997939;
        }

        else
        {
          if (mFormatID == 1885547315 || mFormatID == 1902324531)
          {
            goto LABEL_49;
          }

          v36 = 2053319475;
        }

        if (mFormatID == v36)
        {
LABEL_49:
          fpfsi_RTCReportingUpdateATMOSMetricVar(DerivedStorage, (DerivedStorage + 2603), (DerivedStorage + 2599), v31, 0, 0);
          if (BOOLean)
          {
            CFRelease(BOOLean);
          }

          return;
        }

LABEL_48:
        v31 = 0;
        goto LABEL_49;
      }

      if (MediaSubType == 2053319475)
      {
        goto LABEL_49;
      }

      v33 = 1902469939;
    }

    else
    {
      if (MediaSubType > 1700997938)
      {
        if (MediaSubType == 1700997939)
        {
          goto LABEL_49;
        }

        if (MediaSubType != 1700998451)
        {
          v32 = 1885547315;
          goto LABEL_37;
        }

        goto LABEL_39;
      }

      if (MediaSubType == 1667574579)
      {
        goto LABEL_49;
      }

      v33 = 1667575091;
    }

    if (MediaSubType != v33)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }
}

void fpfsi_gatherInterestingGaplessInfoForItem(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v5 = *(DerivedStorage + 1024);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = DerivedStorage + 976;
      do
      {
        v13 = *(v5 + 64);
        v14 = *(v5 + 196);
        if (v13 == *(v12 + 16 * v14) || v13 == *(v12 + 16 * v14 + 8))
        {
          v15 = *(v5 + 48);
          v16 = v15 == 1935832172 || v15 == 1986618469;
          v17 = v16 || v15 == 1936684398;
          v18 = (1 << v14) | v10;
          if (v17)
          {
            v10 = v18;
          }
        }

        if (*(v5 + 56) && !*(v5 + 200))
        {
          v19 = *(v5 + 48);
          if (v9)
          {
            v20 = v9;
          }

          else
          {
            v20 = v5;
          }

          v21 = v11 | 2;
          if (v7)
          {
            v22 = v7;
          }

          else
          {
            v22 = v5;
          }

          if (v19 == 1936684398)
          {
            v23 = v5;
          }

          else
          {
            v23 = v6;
          }

          if (v19 == 1936684398)
          {
            v11 |= 1u;
          }

          else
          {
            v22 = v7;
          }

          if (v19 == 1986618469)
          {
            v8 = v5;
            v9 = v20;
            v11 = v21;
          }

          else
          {
            v6 = v23;
            v7 = v22;
          }
        }

        v5 = *(v5 + 24);
      }

      while (v5);
      *(a2 + 24) = v9;
      *(a2 + 32) = v8;
      *(a2 + 8) = v7;
      *(a2 + 16) = v6;
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    *a2 = v11;
    v24 = (DerivedStorage + 475);
    v25 = 472;
    while (1)
    {
      v26 = *(v24 - 3);
      if (*(DerivedStorage + 553))
      {
        if (!*(v24 - 3))
        {
          goto LABEL_42;
        }

        if (!*(DerivedStorage + 1744))
        {
          goto LABEL_41;
        }

        v26 = *v24;
      }

      if (v26)
      {
LABEL_41:
        v10 |= 1 << (v25 + 40);
      }

LABEL_42:
      ++v25;
      ++v24;
      if (v25 == 475)
      {
        *(a2 + 40) = v10 == *(DerivedStorage + 1072);
        fpfsi_NonSparsePlaybackEndTime(a1, (a2 + 44));
        return;
      }
    }
  }
}

void fpfsi_NonSparsePlaybackEndTime(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  a2[1].n128_u64[0] = *(v4 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (fpfsi_PlaybackHasBufferedBeyondForwardEndTime())
  {
    v6 = *(DerivedStorage + 1352);
    v7 = *(DerivedStorage + 1368);
    FPSTimelineConverterL3TimeToL2(&v6, a2);
  }

  else if (*(DerivedStorage + 471))
  {

    fpfsi_LastNonSparseSampleEnd(a1, a2);
  }
}

CMTime *fpfsi_LastNonSparseSampleEnd@<X0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  v4 = MEMORY[0x1E6960C70];
  v13 = *MEMORY[0x1E6960C70];
  *&a2->value = *MEMORY[0x1E6960C70];
  v5 = *(v4 + 16);
  a2->epoch = v5;
  TrackOfType = fpfs_LastTrackOfType(a1, 1936684398, 0);
  result = fpfs_LastTrackOfType(a1, 1986618469, 0);
  if (!TrackOfType)
  {
    v8 = v13;
    *&v17.value = v13;
    v17.epoch = v5;
    if (result)
    {
      v16 = *(result + 232);
      goto LABEL_9;
    }

LABEL_8:
    *&v16.value = v8;
    v16.epoch = v5;
    goto LABEL_9;
  }

  v17 = *(TrackOfType + 232);
  v8 = v13;
  if (!result)
  {
    goto LABEL_8;
  }

  v16 = *(result + 232);
  v9 = *(TrackOfType + 80);
  v10 = *&result[3].timescale;
  if (v9 == v10)
  {
LABEL_9:
    time1 = v17;
    time2 = v16;
    return CMTimeMinimum(a2, &time1, &time2);
  }

  if (v10 <= v9)
  {
    v11 = *(TrackOfType + 232);
    v12 = *(TrackOfType + 248);
  }

  else
  {
    v11 = *&result[9].epoch;
    v12 = *&result[10].timescale;
  }

  a2->epoch = v12;
  *&a2->value = v11;
  return result;
}

uint64_t fpfsi_GetSpatializationConfiguration()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (!v0)
  {
    return 2;
  }

  while (1)
  {
    if (*(v0 + 48) == 1936684398)
    {
      v1 = *(v0 + 112);
      if (v1)
      {
        break;
      }
    }

    v0 = *(v0 + 24);
    if (!v0)
    {
      return 2;
    }
  }

  cf = 0;
  v4 = *(v1 + 32);
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigBaseObject = FigRenderPipelineGetFigBaseObject(v4);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    return 2;
  }

  v7(FigBaseObject, @"SpatializationEnabled", AllocatorForMedia, &cf);
  if (!cf)
  {
    return 2;
  }

  v2 = cf == *MEMORY[0x1E695E4D0];
  CFRelease(cf);
  return v2;
}

__n128 fpfsi_LastAudioNonSparseSampleEnd@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = MEMORY[0x1E6960C70];
  v9 = *MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  v5 = *(v4 + 16);
  a2[1].n128_u64[0] = v5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (fpfsi_PlaybackHasBufferedBeyondForwardEndTime())
  {
    v10 = *(DerivedStorage + 1352);
    v11 = *(DerivedStorage + 1368);
    FPSTimelineConverterL3TimeToL2(&v10, a2);
  }

  else if (*(DerivedStorage + 471))
  {
    TrackOfType = fpfs_LastTrackOfType(a1, 1936684398, 0);
    if (TrackOfType)
    {
      result = *(TrackOfType + 232);
      a2[1].n128_u64[0] = *(TrackOfType + 248);
      *a2 = result;
    }

    else
    {
      result = v9;
      *a2 = v9;
      a2[1].n128_u64[0] = v5;
    }
  }

  return result;
}

uint64_t fpfs_TransposeItemTime@<X0>(CMTime *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memset(&v8, 0, sizeof(v8));
  lhs = *a1;
  rhs = *(a2 + 412);
  CMTimeAdd(&v11, &lhs, &rhs);
  lhs = *(a2 + 144);
  CMTimeSubtract(&v8, &v11, &lhs);
  lhs = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  rhs = *(a3 + 412);
  CMTimeSubtract(&v11, &lhs, &rhs);
  lhs = *(a3 + 144);
  CMTimeAdd(a4, &v11, &lhs);
  return CMBaseObjectGetDerivedStorage();
}

void *fpfs_CacheRenderChain(uint64_t a1, void *a2, int a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a3 <= 1936684397)
  {
    if (a3 == 1668047728)
    {
      v7 = result + 102;
      if (!result[102])
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (a3 != 1935832172)
      {
        return result;
      }

      v7 = result + 101;
      if (!result[101])
      {
        goto LABEL_6;
      }
    }

    goto LABEL_5;
  }

  if (a3 == 1986618469)
  {
    v7 = result + 104;
    if (!result[104])
    {
      goto LABEL_6;
    }

LABEL_5:
    result = fpfs_releaseRenderChain(a1);
LABEL_6:
    *v7 = a2;
    ++*a2;
    return result;
  }

  if (a3 == 1936684398)
  {
    v7 = result + 103;
    if (!result[103])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return result;
}

void fpfsi_applyLoudnessInfo(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return;
  }

  v9 = 0;
  if (!a2)
  {
    v6 = *(a1 + 1024);
    if (!v6)
    {
      return;
    }

    while (!*(v6 + 112) || *(v6 + 48) != 1936684398)
    {
LABEL_19:
      v6 = *(v6 + 24);
      if (!v6)
      {
        return;
      }
    }

    if (fpfsi_copyLoudnessInfoWithItemMediaKindAndLID(a1, v6, &v9))
    {
      return;
    }

    if (a3 == 1)
    {
      v7 = v9;
      v8 = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines() == 0;
      if (!v7)
      {
LABEL_18:
        if (!v8)
        {
          return;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v7 = v9;
      fpfsi_sendLoudnessInfoMarkerSampleBufferToAudioRenderPipeline();
      v8 = 1;
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    CFRelease(v7);
    v9 = 0;
    goto LABEL_18;
  }

  if (*(a2 + 48) == 1936684398 && *(a2 + 112) && !fpfsi_copyLoudnessInfoWithItemMediaKindAndLID(a1, a2, &v9))
  {
    if (a3 == 1)
    {
      v5 = v9;
      fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v5 = v9;
      fpfsi_sendLoudnessInfoMarkerSampleBufferToAudioRenderPipeline();
      if (!v5)
      {
        return;
      }
    }

    CFRelease(v5);
  }
}

uint64_t fpfsi_applyAdjustTargetLevel(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 3168))
    {
      if (a2 && (result = *(a2 + 112)) != 0)
      {

        return fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
      }

      else
      {
        for (i = *(v2 + 1024); i; i = *(i + 24))
        {
          result = *(i + 112);
          if (result)
          {
            if (*(i + 48) == 1936684398)
            {
              result = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
              if (result)
              {
                break;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t fpfsi_applyAdjustCompressionProfile(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 3176))
    {
      if (a2 && (result = *(a2 + 112)) != 0)
      {

        return fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
      }

      else
      {
        for (i = *(v2 + 1024); i; i = *(i + 24))
        {
          result = *(i + 112);
          if (result)
          {
            if (*(i + 48) == 1936684398)
            {
              result = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
              if (result)
              {
                break;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t fpfsi_RTCReportingUpdateAudioInfo(uint64_t result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a2 + 456))
  {
    v3 = result;
    RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(*(a2 + 56));
    if (RichestDecodableFormat)
    {
      v5 = 1;
    }

    else
    {
      v5 = dword_1EAF169F0 == 0;
    }

    if (!v5)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CurrentAudioPersistentIDFromMediaOption = fpfsi_GetCurrentAudioPersistentIDFromMediaOption();
    v13[0] = 0;
    result = FigAlternateGetAudioChannelCount(*(a2 + 456), CurrentAudioPersistentIDFromMediaOption, v13);
    if ((result - 1) > 1)
    {
      if (result < 3)
      {
LABEL_17:
        if (RichestDecodableFormat)
        {
          return fpfsi_RTCReportingUpdateAudioInfo_cold_1(v3, RichestDecodableFormat);
        }

        return result;
      }

      v8 = 1;
    }

    else if ((v13[0] & 2) != 0)
    {
      v8 = 3;
    }

    else
    {
      v8 = (v13[0] >> 1) & 2;
    }

    v9 = *(v3 + 2568);
    if (v9)
    {
      VTable = CMBaseObjectGetVTable();
      v11 = *(VTable + 16);
      result = VTable + 16;
      v12 = *(v11 + 56);
      if (v12)
      {
        result = v12(v9, @"playerStats", 0x1F0B43418, v8, 0);
      }
    }

    goto LABEL_17;
  }

  return result;
}

uint64_t fpfsi_copyLoudnessInfoWithItemMediaKindAndLID(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  if (a2)
  {
    if (!a1)
    {
      goto LABEL_13;
    }
  }

  else if (!a1)
  {
LABEL_13:
    v6 = 0;
LABEL_14:
    result = 0;
    *a3 = v6;
    return result;
  }

  if (!*(a1 + 2400) && !*(a1 + 2392) && FigCFDictionaryGetCount() < 1)
  {
    goto LABEL_13;
  }

  FigGetAllocatorForMedia();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v6 = MutableCopy;
    v7 = *(a1 + 2392);
    if (v7)
    {
      CFDictionarySetValue(MutableCopy, @"media kind", v7);
    }

    if (FigCFDictionaryGetCount() >= 1)
    {
      FigCFDictionaryAddEntriesToDictionaryWithRecursion();
    }

    goto LABEL_14;
  }

  fpfsi_copyLoudnessInfoWithItemMediaKindAndLID_cold_1(&v9);
  return v9;
}

void fpfsi_RTCReportingUpdateItemStats(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = 0uLL;
  v5 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fpfs_GetItemBufferedDuration(a1);
  memset(&v3, 0, sizeof(v3));
  CMTimeGetSeconds(&v3);
  fpfsi_RTCReportingUpdateBufferDuration(DerivedStorage, v6);
}

uint64_t fpfsi_CopyCurrentDate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(v2, 0, sizeof(v2));
  fpfs_GetNextTimeToPlay(DerivedStorage, 0, v2);
  return fpfsi_CopyDateForTime();
}

uint64_t fpfsi_EnqueueTaggedRangeMetadataChangedNotificationIfNeeded(uint64_t a1, const void *a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 2632) < 1)
  {
    return 0;
  }

  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(a1, a2, v4, v5, v6, v7, v8, v9, @"TaggedRangeMetadataArray", 0);
  if (NotificationPayloadForProperties)
  {
    v12 = NotificationPayloadForProperties;
    v13 = fpfs_EnqueueNotification(a1, @"TaggedRangeMetadataChanged", a2, NotificationPayloadForProperties);
    CFRelease(v12);
    return v13;
  }

  else
  {
    fpfsi_EnqueueTaggedRangeMetadataChangedNotificationIfNeeded_cold_1(&v14);
    return v14;
  }
}

CMTime *fpfsi_getDateEntryTimelineOrigin@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (*(a1 + 84))
  {
    lhs = *(a1 + 72);
    v3 = *(a1 + 96);
    return CMTimeAdd(a2, &lhs, &v3);
  }

  else
  {
    lhs = *(a1 + 24);
    v3 = *(a1 + 48);
    return CMTimeSubtract(a2, &lhs, &v3);
  }
}

uint64_t fpfsi_AssetBecameEligibleForDownload()
{
  FigRetainProxyRetain();
  CMNotificationCenterGetDefaultLocalCenter();
  dispatch_get_global_queue(0, 0);
  FigGetAllocatorForMedia();

  return FigDeferNotificationToDispatchQueue();
}

void fpfs_FreeDeadTracks(void *a1)
{
  v1 = a1[132];
  if (v1)
  {
    v3 = a1 + 132;
    v4 = *MEMORY[0x1E695E480];
    do
    {
      v5 = v1[3];
      *v3 = v5;
      if (!v5)
      {
        a1[133] = v3;
      }

      v6 = a1[21];
      valuePtr = v1[4];
      theDict = 0;
      if (v6)
      {
        FigPropertyStorageCopyValue(v6, @"TrackPropertyStorages", &theDict);
        if (theDict)
        {
          AllocatorForMedia = FigGetAllocatorForMedia();
          MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, theDict);
          if (MutableCopy)
          {
            fpfs_FreeDeadTracks_cold_1(v4, &valuePtr, MutableCopy);
          }

          if (theDict)
          {
            CFRelease(theDict);
          }
        }
      }

      fpfs_FreeTrack(v1);
      v1 = *v3;
    }

    while (*v3);
  }
}

uint64_t fpfs_EstablishTimebase(const __CFArray *a1)
{
  v77 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 824);
  clockOut = 0;
  v5 = *(DerivedStorage + 1024);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = 0;
  while (!*(v5 + 112))
  {
LABEL_7:
    v5 = *(v5 + 24);
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if (*(v5 + 48) != 1936684398)
  {
    if (!v6)
    {
      v6 = *(v5 + 112);
    }

    goto LABEL_7;
  }

  v4 = *(v5 + 112);
LABEL_11:
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (!*(DerivedStorage + 553))
  {
    v12 = 1;
    if (v7)
    {
      goto LABEL_23;
    }

LABEL_27:
    if (FigPreferAudioSessionClock())
    {
      v17 = CMBaseObjectGetDerivedStorage();
      if (!*(v17 + 536))
      {
LABEL_33:
        v24 = clockOut;
        HostTimeClock = CMClockGetHostTimeClock();
        clockOut = HostTimeClock;
        if (HostTimeClock)
        {
          CFRetain(HostTimeClock);
        }

        if (v24)
        {
          CFRelease(v24);
        }

        goto LABEL_37;
      }

      v18 = v17;
      AllocatorForMedia = FigGetAllocatorForMedia();
      v20 = FigAudioSessionClockCreate(AllocatorForMedia, *(v18 + 536), 0, &clockOut);
    }

    else
    {
      v21 = FigGetAllocatorForMedia();
      v22 = CFStringCreateWithCString(v21, "VirtualAudioDevice_Default", 0);
      v23 = FigGetAllocatorForMedia();
      v20 = CMAudioDeviceClockCreate(v23, v22, &clockOut);
      if (v22)
      {
        CFRelease(v22);
      }
    }

    if (!v20)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  if (!*(DerivedStorage + 3192))
  {
    v8 = *DerivedStorage;
    v9 = FigGetAllocatorForMedia();
    FigRateMinderCreate(v9, 0, v8, @"PlaylistVsHostTime", 1, (v3 + 3192));
  }

  Clock = FigRateMinderGetClock();
  if (Clock)
  {
    v11 = CFRetain(Clock);
  }

  else
  {
    v11 = 0;
  }

  clockOut = v11;
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v12 = v11 == 0;
  if (!v7)
  {
    goto LABEL_27;
  }

LABEL_23:
  v13 = *(v7 + 32);
  if (!v13)
  {
    goto LABEL_27;
  }

  if (v12)
  {
    v14 = FigGetAllocatorForMedia();
    FigBaseObject = FigRenderPipelineGetFigBaseObject(v13);
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v16 || v16(FigBaseObject, @"PreferredClock", v14, &clockOut))
    {
      goto LABEL_27;
    }
  }

LABEL_37:
  v26 = *(v3 + 576);
  v27 = clockOut;
  if (v26)
  {
    v28 = CMTimebaseSetSourceClock(v26, clockOut);
  }

  else
  {
    v29 = CMBaseObjectGetDerivedStorage();
    *(v29 + 576) = 0;
    v30 = FigGetAllocatorForMedia();
    v28 = CMTimebaseCreateWithSourceClock(v30, v27, (v29 + 576));
    if (!v28)
    {
      FPSTimelineConverterSetProperty(*(v29 + 3376), @"Timebase", *(v29 + 576));
      FigNetworkUrgencyMonitorSetTimebase(*(v29 + 3120), *(v29 + 576));
      v35 = *(v29 + 1024);
      if (v35)
      {
        v37 = MEMORY[0x1E6960C70];
        v38 = &unk_1EAF16000;
        do
        {
          if (v35[16])
          {
            v55 = *v37;
            fpfs_scheduleForwardEndTimeForTrack();
            if (v38[636])
            {
              v54 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v40 = v54;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v41 = v40;
              }

              else
              {
                v41 = v40 & 0xFFFFFFFE;
              }

              if (v41)
              {
                v42 = *v29;
                if (*v29)
                {
                  v43 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v43 = "";
                }

                v51 = v43;
                if (a1)
                {
                  v44 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v44 = "";
                }

                v50 = v44;
                v45 = v35[4];
                time = v55;
                Seconds = CMTimeGetSeconds(&time);
                v47 = v35[16];
                fpfs_GetTime(v29, &time);
                v48 = CMTimeGetSeconds(&time);
                v49 = *(v29 + 840);
                v56 = 136317442;
                v57 = "fpfs_CreateItemTimebase";
                v58 = 2048;
                v59 = v42;
                v60 = 2082;
                v61 = v51;
                v62 = 2048;
                v63 = a1;
                v64 = 2082;
                v65 = v50;
                v66 = 2048;
                v67 = v45;
                v68 = 2048;
                v69 = Seconds;
                v70 = 2048;
                v71 = v47;
                v72 = 2048;
                v73 = v48;
                v74 = 2048;
                v75 = v49;
                _os_log_send_and_compose_impl();
                v37 = MEMORY[0x1E6960C70];
                v38 = &unk_1EAF16000;
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          v35 = v35[3];
        }

        while (v35);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      v36 = CMBaseObjectGetDerivedStorage();
      if (fpfs_getNext(v36, 0) == a1)
      {
        *(v29 + 470) = 1;
        fpfs_EnqueueNotification(*v29, @"TimebaseChanged", a1, 0);
      }

      fpfs_CheckPrebufferedLevels(&time, a1, 0, -1, 0);
    }

    v31 = *(v29 + 96);
    if (v31)
    {
      v32 = *(v29 + 576);
      v33 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v33)
      {
        v33(v31, @"AfmfpbProperty_Timebase", v32);
      }
    }

    fpfsi_setupCMCDHeaderVendor();
  }

  if (clockOut)
  {
    CFRelease(clockOut);
  }

  if (!v28 && v7 && *(v7 + 32))
  {
    *(v7 + 24) = 1;
  }

  return v28;
}

void fps_HandleRateDelta(int a1, CFTypeRef cf)
{
  cfa = 0;
  v4 = 0;
  if (cf)
  {
    CFRetain(cf);
  }

  if (fpfsi_CopyPlayerAndItemFromItemRetainProxy(cf, &v4, &cfa))
  {
    FigRetainProxyRelease();
  }

  else
  {
    CMBaseObjectGetDerivedStorage();
    CMNotificationCenterGetDefaultLocalCenter();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
    if (cfa)
    {
      CFRelease(cfa);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }
}

uint64_t fpfsi_HandleTimebaseEffectiveRateChanged(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    CFRetain(a2);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigGetAllocatorForMedia();
  return FigDeferNotificationToDispatchQueue();
}

uint64_t FigAudioSessionSetMXSessionProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294948075;
  }

  v6 = *(CMBaseObjectGetVTable() + 16);
  if (!v6)
  {
    return 4294948075;
  }

  v7 = *(v6 + 56);
  if (!v7)
  {
    return 4294948071;
  }

  return v7(a1, a2, a3);
}

void fpfs_PostNotificationWhenUnlocked(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CMBaseObjectGetDerivedStorage();
  if (FigSimpleMutexTryLock())
  {
    ++*(v9 + 8);
    fpfs_EnqueueNotification(a1, a2, a3, a4);

    fpfs_UnlockAndPostNotificationsWithCaller(a1);
  }

  else
  {
    v10 = malloc_type_malloc(0x28uLL, 0xE0040CDB25F8DuLL);
    if (v10)
    {
      v11 = v10;
      *v10 = a2;
      if (a3)
      {
        v12 = CFRetain(a3);
      }

      else
      {
        v12 = 0;
      }

      v11[1] = v12;
      if (a4)
      {
        v13 = CFRetain(a4);
      }

      else
      {
        v13 = 0;
      }

      v11[2] = v13;
      v14 = *(DerivedStorage + 24);

      dispatch_async_f(v14, v11, fpfs_PostNotificationFromDispatch);
    }
  }
}

void fpfs_PostNotificationFromDispatch(__CFString **a1)
{
  if (*a1 == @"PlayableRangeChanged")
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  if (v2 <= dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t fpfsi_copyPerformanceDictionary(uint64_t a1, const __CFAllocator *a2, __CFDictionary **a3)
{
  cf = 0;
  if (!a1)
  {
    v10 = 0;
    value_low = 0;
    goto LABEL_51;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v45 = 0;
  v7 = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 1904))
  {
    Mutable = 0;
LABEL_7:
    if (*(DerivedStorage + 1912))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      MutableCopy = CFArrayCreateMutableCopy(AllocatorForMedia, 0, *(DerivedStorage + 1912));
      if (!MutableCopy)
      {
        fpfsi_copyPerformanceDictionary_cold_2(&v44);
LABEL_10:
        v10 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      MutableCopy = 0;
    }

    v14 = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (v14)
    {
      while (1)
      {
        if (*(v14 + 48) == 1986618469)
        {
          v15 = *(v14 + 112);
          if (v15)
          {
            break;
          }
        }

        v14 = *(v14 + 24);
        if (!v14)
        {
          goto LABEL_17;
        }
      }

      FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v15 + 32));
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v28)
      {
        v29 = v28(FigBaseObject, @"PerformanceDictionary", a2, &cf);
        v30 = cf;
        if (!v29 && cf != 0)
        {
          if (!Mutable)
          {
            v32 = FigGetAllocatorForMedia();
            Mutable = CFArrayCreateMutable(v32, 0, MEMORY[0x1E695E9C0]);
            if (!Mutable)
            {
              fpfsi_copyPerformanceDictionary_cold_3(&v44);
              goto LABEL_10;
            }

            v30 = cf;
          }

          CFArrayAppendValue(Mutable, v30);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }
        }
      }
    }

LABEL_17:
    v16 = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (v16)
    {
      while (1)
      {
        if (*(v16 + 48) == 1936684398)
        {
          v17 = *(v16 + 112);
          if (v17)
          {
            break;
          }
        }

        v16 = *(v16 + 24);
        if (!v16)
        {
          goto LABEL_21;
        }
      }

      v33 = FigRenderPipelineGetFigBaseObject(*(v17 + 32));
      v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v34)
      {
        v35 = v34(v33, @"PerformanceDictionary", a2, &cf);
        v36 = cf;
        if (!v35 && cf != 0)
        {
          if (!MutableCopy)
          {
            v38 = FigGetAllocatorForMedia();
            MutableCopy = CFArrayCreateMutable(v38, 0, MEMORY[0x1E695E9C0]);
            if (!MutableCopy)
            {
              fpfsi_copyPerformanceDictionary_cold_4(&v44);
              goto LABEL_10;
            }

            v36 = cf;
          }

          CFArrayAppendValue(MutableCopy, v36);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }
        }
      }

      v39 = CFDictionaryCreateMutable(a2, 20, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v39)
      {
        v10 = v39;
        AudioFormatDescriptionSpatializationEligibility = FPSupport_GetAudioFormatDescriptionSpatializationEligibility(*(v16 + 56), 0);
        AudioRouteSpatializationCapabilities = fpfsi_getAudioRouteSpatializationCapabilities(*(v16 + 16));
        if (AudioFormatDescriptionSpatializationEligibility == 2 && (AudioRouteSpatializationCapabilities & 1) != 0 || AudioFormatDescriptionSpatializationEligibility == 1)
        {
          SInt32 = FigCFNumberCreateSInt32();
          FigCFDictionarySetValue();
          if (SInt32)
          {
            CFRelease(SInt32);
          }
        }

        else
        {
          FigCFDictionarySetValue();
        }

        goto LABEL_22;
      }
    }

    else
    {
LABEL_21:
      v10 = CFDictionaryCreateMutable(a2, 20, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v10)
      {
LABEL_22:
        if (Mutable)
        {
          CFDictionarySetValue(v10, @"VideoTracks", Mutable);
        }

        if (MutableCopy)
        {
          CFDictionarySetValue(v10, @"AudioTracks", MutableCopy);
        }

        if (*(v7 + 462))
        {
          v18 = (v7 + 464);
        }

        else
        {
          v18 = (DerivedStorage + 768);
        }

        if (*(v7 + 462))
        {
          v19 = (v7 + 472);
        }

        else
        {
          v19 = (DerivedStorage + 776);
        }

        if (*v18 != *MEMORY[0x1E695F060] || *v19 != *(MEMORY[0x1E695F060] + 8))
        {
          FigCFDictionarySetCGSize();
        }

        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(DerivedStorage + 2512));
        if (DictionaryRepresentation)
        {
          v22 = DictionaryRepresentation;
          FigCFDictionarySetValue();
          CFRelease(v22);
        }

        Dimensions = fpfsi_GetDimensions(a1, &v45 + 1, &v45);
        if (Dimensions)
        {
          value_low = Dimensions;
        }

        else
        {
          v47.width = *(&v45 + 1);
          v47.height = *&v45;
          v24 = CGSizeCreateDictionaryRepresentation(v47);
          if (v24)
          {
            v25 = v24;
            FigCFDictionarySetValue();
            CFRelease(v25);
          }

          v44 = **&MEMORY[0x1E6960C70];
          fpfs_GetItemBufferedDuration(a1);
          if (v44.flags)
          {
            v43 = v44;
            CMTimeGetSeconds(&v43);
            FigCFDictionarySetDouble();
          }

          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          value_low = 0;
        }

        goto LABEL_45;
      }
    }

    value_low = FigSignalErrorAtGM();
    v10 = 0;
    goto LABEL_45;
  }

  v8 = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutableCopy(v8, 0, *(DerivedStorage + 1904));
  if (Mutable)
  {
    goto LABEL_7;
  }

  fpfsi_copyPerformanceDictionary_cold_1(&v44);
  v10 = 0;
  MutableCopy = 0;
LABEL_11:
  value_low = LODWORD(v44.value);
LABEL_45:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

LABEL_51:
  *a3 = v10;
  return value_low;
}

uint64_t fpfsi_GetDimensions(uint64_t a1, float *a2, float *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  v7 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v7 + 8);
  if (FigRetainProxyIsInvalidated())
  {
    fpfsi_GetDimensions_cold_1(&v13);
    v8 = v13;
  }

  else
  {
    v12 = vcvtq_f64_f32(*(DerivedStorage + 796));
    fpfs_ReadjustDimensions();
    v8 = 0;
    v9 = v12.f64[0];
    *a2 = v9;
    v10 = v12.f64[1];
    *a3 = v10;
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v6);
  return v8;
}

uint64_t fpfsi_setItemRateTimebaseAndAnchor(float a1, uint64_t a2, int a3, CMTime *a4, CMTime *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage;
  if (a3)
  {
    v11 = *(DerivedStorage + 576);
    if (v11)
    {
      if ((a4->flags & 0x1D) == 1)
      {
        v12 = CMTimebaseCopySource(v11);
        v13 = v12;
        memset(&v19, 0, sizeof(v19));
        if ((a5->flags & 0x1D) == 1)
        {
          time = *a5;
          HostTimeClock = CMClockGetHostTimeClock();
          CMSyncConvertTime(&v19, &time, HostTimeClock, v13);
          if (!v13)
          {
LABEL_11:
            v16 = *(v10 + 576);
            time = *a4;
            v17 = v19;
            result = CMTimebaseSetRateAndAnchorTime(v16, a1, &time, &v17);
            if (result)
            {
              return result;
            }

            goto LABEL_12;
          }
        }

        else
        {
          CMSyncGetTime(&v19, v12);
          if (!v13)
          {
            goto LABEL_11;
          }
        }

        CFRelease(v13);
        goto LABEL_11;
      }

      v19 = **&MEMORY[0x1E6960C70];
      time = v19;
      result = CMTimebaseSetRateAndAnchorTimeWithFlags();
      if (result)
      {
        return result;
      }
    }
  }

LABEL_12:
  *(v10 + 840) = a1;
  fpfsi_updateMaxPlayThroughTime();
  return 0;
}

uint64_t fpfsi_isPlayingHDR()
{
  result = *(CMBaseObjectGetDerivedStorage() + 1680);
  if (result)
  {
    return FigAlternateGetVideoRange(result) > 1;
  }

  return result;
}

uint64_t fpfsi_isPlaying4k()
{
  result = *(CMBaseObjectGetDerivedStorage() + 1680);
  if (result)
  {
    return FigAlternateIs4k(result);
  }

  return result;
}

CFIndex fpfs_PostPlayQueueNotificationIfHungry(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 80);
  result = CFArrayGetCount(*(DerivedStorage + 72));
  if (v3)
  {
    v5 = result + 1;
  }

  else
  {
    v5 = result;
  }

  if (v5 <= 1)
  {

    return fpfs_EnqueueNotification(a1, @"PlayQueueBecameHungry", a1, 0);
  }

  return result;
}

__CFArray *fpfs_CopyMediaSelectionArrayAndMarkOptionsAvailableOffline(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (!*(a1 + 1672))
  {
    goto LABEL_11;
  }

  if (!*(a1 + 1844))
  {
    goto LABEL_11;
  }

  if (!*(a1 + 912))
  {
    goto LABEL_11;
  }

  if (!CMBaseObjectGetDerivedStorage())
  {
    goto LABEL_11;
  }

  cf = 0;
  v2 = *(a1 + 912);
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigBaseObject = FigBytePumpGetFigBaseObject(v2);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    goto LABEL_11;
  }

  v5(FigBaseObject, 0x1F0B1F098, AllocatorForMedia, &cf);
  if (!cf)
  {
    goto LABEL_11;
  }

  v6 = FigCopyMediaSelectionArrayAndMarkOptionsAvailableOffline(*(a1 + 1672), *(a1 + 32), cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v6)
  {
LABEL_11:
    v7 = *(a1 + 1672);
    if (v7)
    {
      return CFRetain(v7);
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void fpfs_BytePumpFn(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, CMTime *a8, const void *a9, int a10, uint64_t a11, CFErrorRef err, CMTime *a13, int *a14)
{
  v17 = a5;
  v18 = a4;
  v426 = *MEMORY[0x1E69E9840];
  if (err)
  {
    Code = CFErrorGetCode(err);
  }

  else
  {
    Code = 0;
  }

  v402 = 0;
  v403 = 0;
  v400 = 0uLL;
  v401 = 0;
  if (v17 > 2)
  {
    return;
  }

  fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(a2, &v402, &v403, a4, a5, a6, a7, a8, sampleTimingArray, numSampleSizeEntries, sampleSizeArray, v340, v342, v345, v347, SBYTE2(v347), BYTE3(v347), HIDWORD(v347), *v350, *&v350[4], *v352, *&v352[4], v354, v356, v358, v360, v361, v363, v366, v368, v370, v372, v376, v379, v380, v384, v386, v387, a3, v392, v394, v397, type.value, *&type.timescale, type.epoch, v400, *(&v400 + 1), v401, v402, v403, time2.value, *&time2.timescale, time2.epoch, v405, rhs.value, *&rhs.timescale, rhs.epoch, v407, *v408, *&v408[8], *&v408[16], *&v408[24], *&v408[32]);
  if (v23)
  {
    goto LABEL_754;
  }

  v373 = v402;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v378 = v403;
  v25 = CMBaseObjectGetDerivedStorage();
  v26 = v25;
  if (!*(v25 + 912))
  {
    goto LABEL_46;
  }

  v27 = v25 + 976;
  v367 = (v25 + 976 + 16 * v17 + 8);
  v371 = *v367;
  v385 = DerivedStorage;
  v393 = v25;
  if (*(DerivedStorage + 32))
  {
    if (*(v25 + 462))
    {
      v28 = 1;
    }

    else
    {
      v28 = Code == 0;
    }

    if (v28)
    {
      goto LABEL_21;
    }
  }

  else if (!Code)
  {
LABEL_46:
    v36 = 0;
    v38 = 1;
    goto LABEL_47;
  }

  v29 = v25 + 976;
  cf[0].value = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigBaseObject = FigBytePumpGetFigBaseObject(a1);
  v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v32)
  {
    goto LABEL_23;
  }

  v33 = v32(FigBaseObject, 0x1F0B1EE98, AllocatorForMedia, cf);
  if (cf[0].value)
  {
    CFRelease(cf[0].value);
  }

  if (v33)
  {
LABEL_23:
    v36 = 0;
    v37 = 0;
    v38 = 1;
    v26 = v393;
    v39 = v385;
    v40 = a14;
    goto LABEL_24;
  }

  v26 = v393;
  v27 = v29;
  if (!*(v385 + 32))
  {
    v36 = 0;
    v38 = 1;
    v40 = a14;
    goto LABEL_747;
  }

LABEL_21:
  v34 = v17;
  if ((v18 & 0x1000) != 0)
  {
    v35 = (v18 >> 12) & 1;
    if (!*(v26 + 1744) && !*(v27 + 16 * v17 + 8 * v35))
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  v362 = v27;
  if (*(v26 + 12 * v35 + 4 * v17 + 928) != a6)
  {
    goto LABEL_46;
  }

  v381 = v35;
  *(v26 + 12 * v35 + 4 * v17 + 952) = a6;
  *(v26 + 8 * v17 + 3024) = CFAbsoluteTimeGetCurrent();
  if ((v18 & 0x10000) != 0)
  {
    cf[0].value = 0;
    v44 = *(v26 + 40);
    v45 = FigGetAllocatorForMedia();
    if (!FigAlternateSelectionBossCopyProperty(v44, @"FilteredAlternateList", v45, cf))
    {
      fpfsi_UpdateValidAlternateListAndEvaluateCurrentAlternateAgaintValidAlternateList();
    }

    v40 = a14;
    if (cf[0].value)
    {
      CFRelease(cf[0].value);
    }

    v36 = 0;
    v38 = 1;
LABEL_44:
    v26 = v393;
    if (!Code)
    {
      goto LABEL_543;
    }

    goto LABEL_747;
  }

  if ((v18 & 8) != 0)
  {
    *(v26 + (v35 | (2 * v35)) + v17 + 3082) = 0;
  }

  HIDWORD(v364) = v35;
  if ((v18 & 0x800) != 0)
  {
    v46 = v26 + (v35 | (2 * v35)) + v17;
    v18 |= *(v46 + 3082) == 0;
    *(v46 + 3082) = 1;
    v47 = theBuffer;
    if (v17 == 2)
    {
      v47 = 0;
    }

    theBuffer = v47;
    if (dword_1EAF169F0)
    {
      LODWORD(time2.value) = 0;
      LOBYTE(v425.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = time2.value;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v425.value))
      {
        v50 = value;
      }

      else
      {
        v50 = value & 0xFFFFFFFE;
      }

      if (v50)
      {
        if (v373)
        {
          v51 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v51 = "";
        }

        if (v378)
        {
          v52 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v52 = "";
        }

        LODWORD(rhs.value) = 136316418;
        *(&rhs.value + 4) = "fpfs_BytePumpFn";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = v373;
        HIWORD(rhs.epoch) = 2082;
        v407 = v51;
        *v408 = 2048;
        *&v408[2] = v378;
        *&v408[10] = 2082;
        *&v408[12] = v52;
        *&v408[20] = 2114;
        *&v408[22] = a9;
        LODWORD(numSampleSizeEntriesa) = 62;
        sampleTimingArraya = &rhs;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v26 = v393;
    }

    v53 = *(v26 + 2568);
    if (v53)
    {
      v54 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v54)
      {
        v54(v53, @"playerStats", 0x1F0B43598, 1);
      }
    }

    v26 = v393;
  }

  else if (theBuffer)
  {
    v43 = v26 + (v35 | (2 * v35)) + v17;
    v18 |= *(v43 + 3082) != 0;
    *(v43 + 3082) = 0;
  }

  else
  {
    theBuffer = 0;
  }

  v55 = *(v26 + 24 * v35 + 8 * v17 + 1104);
  if (v55 != a11 && (v18 & 4) != 0)
  {
    v18 &= ~4u;
    if (*(v26 + 2816) > *(v26 + 2820) && v17 != 2 && (*(v26 + 2844) & (1 << v17)) != 0)
    {
      if (((1 << v17) & 2) != 0)
      {
        *(v26 + 2848) = 1;
      }

      else
      {
        *(v26 + 2849) = 1;
      }
    }
  }

  v56 = (v55 != a11) | v18;
  v57 = v18;
  v58 = v26 + 518;
  LODWORD(v359) = v56;
  if (*(v26 + 518 + v17))
  {
    *(v58 + v17) = 0;
    if (!(((v56 & 1) == 0) | (v57 >> 2) & 1) || (v57 & 8) != 0)
    {
      for (i = 0; i != 3; ++i)
      {
        v62 = (1 << i);
        if ((*(v393 + 1072) & v62) != 0 && *(v58 + i))
        {
          fpfs_PrepareForSeek(v378, v62, 1);
        }
      }

      v18 = v57 | 8;
      v26 = v393;
    }

    else
    {
      v18 = v57;
      v59 = *(v385 + 108);
      if (v59 <= 2.0 && v59 >= 0.0 || *(v26 + 2992))
      {
        v60 = 518;
        while (!*(v26 + v60))
        {
          if (++v60 == 521)
          {
            fpfs_BytePumpFn_cold_1(v26);
            break;
          }
        }
      }
    }
  }

  else
  {
    v18 = v57;
  }

  v63 = *(v26 + 1680);
  if (v63)
  {
    v64 = FigAlternateIsIFrameOnly(v63) != 0;
  }

  else
  {
    v64 = 0;
  }

  if ((v18 & 0x10) != 0 || Code && (v18 & 0x20) != 0)
  {
    *(v26 + 1540) = 0;
  }

  HIDWORD(v357) = v18 & 0x20;
  if ((v18 & 0x20) == 0)
  {
    goto LABEL_112;
  }

  if (!Code)
  {
    if (CMBlockBufferIsEmpty(theBuffer) != 1 || !v64)
    {
      goto LABEL_111;
    }

    goto LABEL_109;
  }

  if (Code == -12648)
  {
    fpfs_FrameStepHitEnd(v378);
LABEL_111:
    Code = 0;
    goto LABEL_112;
  }

  if (v64)
  {
LABEL_109:
    if (*(v26 + 2220))
    {
      fpfs_SeekDidFail();
    }

    goto LABEL_111;
  }

LABEL_112:
  HIDWORD(v369) = v18;
  HIDWORD(v353) = v64;
  if ((v18 & 2) == 0)
  {
    if (!Code)
    {
      goto LABEL_142;
    }

    goto LABEL_288;
  }

  if (dword_1EAF169F0)
  {
    LODWORD(time2.value) = 0;
    LOBYTE(v425.value) = 0;
    v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v66 = time2.value;
    v351[0] = v425.value;
    if (os_log_type_enabled(v65, v425.value))
    {
      v67 = v66;
    }

    else
    {
      v67 = v66 & 0xFFFFFFFE;
    }

    if (v67)
    {
      if (v373)
      {
        v68 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v68 = "";
      }

      if (v378)
      {
        v69 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v69 = "";
      }

      fpfs_CurrentSubStreamBufferedDuration(v17, cf);
      Seconds = CMTimeGetSeconds(cf);
      LODWORD(rhs.value) = 136316930;
      *(&rhs.value + 4) = "fpfs_BytePumpFn";
      LOWORD(rhs.flags) = 2048;
      *(&rhs.flags + 2) = v373;
      HIWORD(rhs.epoch) = 2082;
      v407 = v68;
      *v408 = 2048;
      *&v408[2] = v378;
      *&v408[10] = 2082;
      *&v408[12] = v69;
      *&v408[20] = 1024;
      *&v408[22] = v17;
      *&v408[26] = 2048;
      *&v408[28] = Seconds;
      *&v408[36] = 2112;
      *&v408[38] = err;
      LODWORD(numSampleSizeEntriesa) = 78;
      sampleTimingArraya = &rhs;
      _os_log_send_and_compose_impl();
      v35 = HIDWORD(v364);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v26 = v393;
  }

  v71 = 0;
  v72 = 0;
  *(v26 + (v381 | (2 * v381)) + v17 + 472) = 1;
  do
  {
    v73 = *(v26 + v72 + 472);
    if (!*(v26 + 553))
    {
      goto LABEL_134;
    }

    if (!*(v26 + v72 + 472))
    {
      goto LABEL_136;
    }

    if (*(v26 + 1744))
    {
      v73 = *(v26 + v72 + 475);
LABEL_134:
      if (!v73)
      {
        goto LABEL_136;
      }
    }

    ++v71;
LABEL_136:
    ++v72;
  }

  while (v72 != 3);
  if (!v35 && *(v26 + 1088) == v17)
  {
    fpfsi_RemoveAndClearTimer((v26 + 2320));
  }

  v28 = *(v26 + 1080) == v71;
  v18 = HIDWORD(v369);
  if (!v28)
  {
    if (!Code)
    {
      goto LABEL_142;
    }

LABEL_287:
    fpfs_BytePumpFn_cold_6();
LABEL_288:
    v37 = 0;
    v36 = 0;
    v38 = 1;
    v40 = a14;
LABEL_661:
    if (err)
    {
      v298 = v38;
      v299 = v403;
      v300 = CMBaseObjectGetDerivedStorage();
      v301 = CMBaseObjectGetDerivedStorage();
      memset(cf, 0, 24);
      fpfs_GetItemBufferedDuration(v299);
      if (*(v300 + 840) == 0.0 || (rhs = cf[0], CMTimeGetSeconds(&rhs) <= 0.0))
      {
        fpfs_StopPlayingItem(v301, v299, err);
      }

      else
      {
        v302 = *(v300 + 504);
        *(v300 + 504) = err;
        CFRetain(err);
        if (v302)
        {
          CFRelease(v302);
        }
      }

      LODWORD(Code) = 0;
      v26 = v393;
      v38 = v298;
      goto LABEL_25;
    }

LABEL_667:
    v39 = v385;
    if (!Code)
    {
      goto LABEL_25;
    }

LABEL_24:
    fpfs_StopPlayingItemWithOSStatus(v39, v403, Code);
    goto LABEL_25;
  }

  if (dword_1EAF169F0)
  {
    LODWORD(time2.value) = 0;
    LOBYTE(v425.value) = 0;
    v88 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v89 = time2.value;
    if (os_log_type_enabled(v88, v425.value))
    {
      v90 = v89;
    }

    else
    {
      v90 = v89 & 0xFFFFFFFE;
    }

    if (v90)
    {
      if (v373)
      {
        v127 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v127 = "";
      }

      if (v378)
      {
        v130 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v130 = "";
      }

      LODWORD(rhs.value) = 136316674;
      *(&rhs.value + 4) = "fpfs_BytePumpFn";
      LOWORD(rhs.flags) = 2048;
      *(&rhs.flags + 2) = v373;
      HIWORD(rhs.epoch) = 2082;
      v407 = v127;
      *v408 = 2048;
      *&v408[2] = v378;
      *&v408[10] = 2082;
      *&v408[12] = v130;
      *&v408[20] = 1024;
      *&v408[22] = Code;
      *&v408[26] = 2082;
      *&v408[28] = "Yes";
      LODWORD(numSampleSizeEntriesa) = 68;
      sampleTimingArraya = &rhs;
      _os_log_send_and_compose_impl();
      v35 = HIDWORD(v364);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v18 = HIDWORD(v369);
    v26 = v393;
  }

  v131 = CMBaseObjectGetDerivedStorage();
  if (*(v131 + 471) != 1)
  {
    *(v131 + 471) = 1;
  }

  fpfs_AssessItemTransition(v373);
  if (Code)
  {
    goto LABEL_287;
  }

LABEL_142:
  v74 = v359;
  if (v359 & 1 | ((v18 & 0xC) != 0))
  {
    *(v26 + (v381 | (2 * v381)) + v17 + 512) = (v18 & 0x14) == 4;
  }

  if (a9 && *(v26 + 1088) == v17 && (a8->flags & 0x1D) == 1)
  {
    v75 = *(v26 + 1568);
    if (v75)
    {
      CFRelease(v75);
    }

    *(v26 + 1568) = CFRetain(a9);
    epoch = a8->epoch;
    *(v26 + 1544) = *&a8->value;
    *(v26 + 1560) = epoch;
  }

  if (*(v26 + 1576) && *(v26 + 1088) == v17 && (v77 = *(v26 + 1568)) != 0)
  {
    v355 = CFRetain(v77);
  }

  else
  {
    v355 = 0;
  }

  v78 = a10;
  if ((v18 & 0x14) == 4)
  {
    if (dword_1EAF169F0)
    {
      v351[0] = a10;
      LODWORD(time2.value) = 0;
      LOBYTE(v425.value) = 0;
      v79 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v80 = time2.value;
      v359 = v79;
      if (os_log_type_enabled(v79, v425.value))
      {
        v81 = v80;
      }

      else
      {
        v81 = v80 & 0xFFFFFFFE;
      }

      if (v81)
      {
        if (v373)
        {
          v82 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v82 = "";
        }

        if (v378)
        {
          v87 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v87 = "";
        }

        LODWORD(rhs.value) = 136316674;
        *(&rhs.value + 4) = "fpfs_BytePumpFn";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = v373;
        HIWORD(rhs.epoch) = 2082;
        v407 = v82;
        *v408 = 2048;
        *&v408[2] = v378;
        *&v408[10] = 2082;
        *&v408[12] = v87;
        *&v408[20] = 1024;
        *&v408[22] = v17;
        *&v408[26] = 1024;
        *&v408[28] = v35;
        LODWORD(numSampleSizeEntriesa) = 64;
        sampleTimingArraya = &rhs;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!v35)
    {
      if ((v369 & 0x20000000000) == 0)
      {
        fpfs_WeakStreamEnd(v393, v17, 0);
        StoreCurrentManifold(v393, v17, 0, 0);
      }

      fpfs_DeleteStrandedTracksUponSwitch(v378);
    }
  }

  else if ((v359 | (v18 >> 3)))
  {
    if (dword_1EAF169F0)
    {
      v351[0] = a10;
      LODWORD(time2.value) = 0;
      LOBYTE(v425.value) = 0;
      v83 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v84 = time2.value;
      v346 = v83;
      if (os_log_type_enabled(v83, v425.value))
      {
        v85 = v84;
      }

      else
      {
        v85 = v84 & 0xFFFFFFFE;
      }

      if (v85)
      {
        if (v373)
        {
          v86 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v86 = "";
        }

        if (v378)
        {
          v91 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v91 = "";
        }

        v92 = "TimeJumped - ";
        LODWORD(rhs.value) = 136317442;
        *(&rhs.value + 4) = "fpfs_BytePumpFn";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = v373;
        if (((BYTE4(v369) >> 3) & 1) == 0)
        {
          v92 = "";
        }

        v407 = v86;
        v93 = "discontinuity - ";
        HIWORD(rhs.epoch) = 2082;
        if ((BYTE4(v369) >> 3))
        {
          v93 = "";
        }

        *v408 = 2048;
        *&v408[2] = v378;
        *&v408[10] = 2082;
        *&v408[12] = v91;
        *&v408[20] = 2082;
        *&v408[22] = v92;
        *&v408[30] = 2082;
        *&v408[32] = v93;
        *&v408[40] = 1024;
        *&v408[42] = v17;
        *&v408[46] = 1024;
        *&v408[48] = HIDWORD(v364);
        LOWORD(v409) = 1024;
        *(&v409 + 2) = a11;
        LODWORD(numSampleSizeEntriesa) = 90;
        sampleTimingArraya = &rhs;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v74 = v359;
    }

    v26 = v393;
    if ((v369 & 0x800000000) != 0)
    {
      if (v74 & 1 | ((v353 & 0x100000000) == 0))
      {
        fpfs_PrepareForSeek(v378, (1 << v17), 1);
      }

      else if (!v17 && (a8->flags & 0x1D) == 1)
      {
        rhs = *a8;
        time2 = *(v393 + 1160);
        CMTimeSubtract(cf, &rhs, &time2);
        IFrameTrack = fpfs_PrepareToReuseLastIFrameTrack(v378, cf, 1);
        if (IFrameTrack)
        {
          Code = IFrameTrack;
          v37 = 0;
          LOBYTE(v18) = BYTE4(v369);
          v39 = v385;
          v40 = a14;
          v36 = v355;
          v38 = 1;
          goto LABEL_24;
        }
      }

      if (v17 != 2 && a10 && *(v393 + 1088) == v17)
      {
        *(v393 + 2216) = a10;
      }
    }

    if (v74)
    {
      v94 = CMBaseObjectGetDerivedStorage();
      if (dword_1EAF169F0)
      {
        LODWORD(time2.value) = 0;
        LOBYTE(v425.value) = 0;
        v95 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v96 = time2.value;
        LODWORD(v359) = LOBYTE(v425.value);
        v97 = os_log_type_enabled(v95, v425.value);
        v98 = v96 & 0xFFFFFFFE;
        if (v97)
        {
          v98 = v96;
        }

        if (v98)
        {
          HIDWORD(v353) = v98;
          v351[0] = a10;
          v99 = *v94;
          if (*v94)
          {
            v100 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v100 = "";
          }

          if (v378)
          {
            v101 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v101 = "";
          }

          LODWORD(rhs.value) = 136316930;
          *(&rhs.value + 4) = "fpfs_StartNewDiscontinuity";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v99;
          HIWORD(rhs.epoch) = 2082;
          v407 = v100;
          *v408 = 2048;
          *&v408[2] = v378;
          *&v408[10] = 2082;
          *&v408[12] = v101;
          *&v408[20] = 2048;
          *&v408[22] = a11;
          *&v408[30] = 1024;
          *&v408[32] = v17;
          *&v408[36] = 1024;
          *&v408[38] = HIDWORD(v364);
          LODWORD(numSampleSizeEntriesa) = 74;
          sampleTimingArraya = &rhs;
          _os_log_send_and_compose_impl();
          v78 = a10;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      fpfs_EndCurrentDiscontinuity(v378, v17, HIDWORD(v364), 0);
      v102 = MEMORY[0x1E6960C70];
      v103 = *MEMORY[0x1E6960C70];
      *(v94 + 1496) = *MEMORY[0x1E6960C70];
      v104 = *(v102 + 16);
      *(v94 + 1512) = v104;
      v105 = v94 + 24 * v17;
      *(v105 + 248) = v103;
      *(v105 + 264) = v104;
      *(v94 + 24 * v381 + 8 * v17 + 1104) = a11;
      if (*(v94 + 976 + 16 * v17 + 8 * v381))
      {
        StoreCurrentManifold(v94, v17, HIDWORD(v364), 0);
      }

      v106 = *(v94 + 1024);
      if (v106)
      {
        do
        {
          while (1)
          {
            v107 = *(v106 + 24);
            if (v107)
            {
              v108 = *(v107 + 32);
            }

            else
            {
              v108 = -1;
            }

            v109 = *(v106 + 196);
            if (*(v106 + 64) == *(v94 + 976 + 16 * v109 + 8) && v109 == v17 && *(v106 + 80) < a11)
            {
              fpfs_DeleteTrack(v378, v106);
            }

            if (v108 < 0)
            {
              break;
            }

            v107 = *(v94 + 1024);
            if (!v107)
            {
              goto LABEL_241;
            }

            v106 = *(v94 + 1024);
            while (*(v106 + 32) != v108)
            {
              v106 = *(v106 + 24);
              if (!v106)
              {
                goto LABEL_239;
              }
            }
          }

LABEL_239:
          if (!v107)
          {
            break;
          }

          v106 = v107;
        }

        while (*(v94 + 1024));
      }
    }
  }

LABEL_241:
  v111 = v393;
  v112 = HIDWORD(v364);
  v113 = v371;
  if (!*(v393 + 592) && v17 != 2 && (a8->flags & 0x1D) == 1)
  {
    if (dword_1EAF169F0)
    {
      *v351 = v78;
      LODWORD(time2.value) = 0;
      LOBYTE(v425.value) = 0;
      v124 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v125 = time2.value;
      if (os_log_type_enabled(v124, v425.value))
      {
        v126 = v125;
      }

      else
      {
        v126 = v125 & 0xFFFFFFFE;
      }

      if (v126)
      {
        v389 = v17;
        v128 = v402;
        if (v402)
        {
          v129 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v129 = "";
        }

        v132 = v403;
        if (v403)
        {
          v133 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v133 = "";
        }

        cf[0] = *a8;
        v134 = CMTimeGetSeconds(cf);
        LODWORD(rhs.value) = 136316418;
        *(&rhs.value + 4) = "fpfs_BytePumpFn";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = v128;
        HIWORD(rhs.epoch) = 2082;
        v407 = v129;
        *v408 = 2048;
        *&v408[2] = v132;
        *&v408[10] = 2082;
        *&v408[12] = v133;
        *&v408[20] = 2048;
        *&v408[22] = v134;
        LODWORD(numSampleSizeEntriesa) = 62;
        sampleTimingArraya = &rhs;
        _os_log_send_and_compose_impl();
        v17 = v389;
        v112 = HIDWORD(v364);
        v113 = v371;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v78 = *v351;
    }

    cf[0] = *a8;
    fpfs_SetTime(v403, cf);
    fpfs_CancelSeekIfNeeded();
    v111 = v393;
    *(v393 + 592) = 1;
  }

  v18 = HIDWORD(v369);
  if (!v112 && (a8->flags & 0x1D) == 1)
  {
    if ((v369 & 0x800000000) != 0 && v17 != 2 && v78)
    {
      memset(&time2, 0, sizeof(time2));
      v114 = (v111 + 1160);
      cf[0] = *a8;
      rhs = *(v111 + 1160);
      CMTimeSubtract(&time2, cf, &rhs);
      v116 = (*(v111 + 393) & 2) != 0 || (v115 = *(v111 + 1680)) == 0 || FigAlternateIsIFrameOnly(v115) == 0;
      cf[0] = time2;
      *v377 = *MEMORY[0x1E6960CC0];
      *&rhs.value = *MEMORY[0x1E6960CC0];
      v117 = *(MEMORY[0x1E6960CC0] + 16);
      rhs.epoch = v117;
      if (CMTimeCompare(cf, &rhs) < 0)
      {
        *&time2.value = *v377;
        time2.epoch = v117;
      }

      v118 = v393;
      v119 = (*(v393 + 332) & 1) == 0 && v116;
      v18 = HIDWORD(v369);
      if (v119 || (cf[0] = *(v393 + 320), v425 = time2, CMTimeSubtract(&rhs, cf, &v425), CMTimeAbsoluteValue(cf, &rhs), CMTimeMake(&rhs, 1, 1), CMTimeCompare(cf, &rhs) >= 1) && (*(v393 + 392) & 0xF) != 5 && ((*(v393 + 356) & 1) == 0 || (cf[0] = time2, rhs = *(v393 + 344), (CMTimeCompare(cf, &rhs) & 0x80000000) == 0)) && ((*(v393 + 380) & 1) == 0 || (cf[0] = time2, rhs = *(v393 + 368), CMTimeCompare(cf, &rhs) <= 0)))
      {
        if (dword_1EAF169F0)
        {
          v348 = v34;
          v388 = v17;
          LODWORD(v425.value) = 0;
          LOBYTE(type.value) = 0;
          v120 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v121 = v425.value;
          v122 = os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT);
          v123 = v121 & 0xFFFFFFFE;
          if (v122)
          {
            v123 = v121;
          }

          if (v123)
          {
            v135 = v402;
            if (v402)
            {
              v136 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v136 = "";
            }

            v374 = v136;
            v138 = v403;
            if (v403)
            {
              v139 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v139 = "";
            }

            if (*(v393 + 332))
            {
              v140 = "New time differs the seek request more than 1s.";
            }

            else
            {
              v140 = "TimeJump while no seek request.";
            }

            cf[0] = time2;
            v141 = CMTimeGetSeconds(cf);
            cf[0] = *v114;
            v142 = CMTimeGetSeconds(cf);
            LODWORD(rhs.value) = 136316930;
            *(&rhs.value + 4) = "fpfs_BytePumpFn";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = v135;
            HIWORD(rhs.epoch) = 2082;
            v407 = v374;
            *v408 = 2048;
            *&v408[2] = v138;
            *&v408[10] = 2082;
            *&v408[12] = v139;
            *&v408[20] = 2082;
            *&v408[22] = v140;
            *&v408[30] = 2048;
            *&v408[32] = v141;
            *&v408[40] = 2048;
            *&v408[42] = v142;
            LODWORD(numSampleSizeEntriesa) = 82;
            sampleTimingArraya = &rhs;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v17 = v388;
          v18 = HIDWORD(v369);
          v118 = v393;
          v112 = HIDWORD(v364);
          v34 = v348;
        }

        cf[0] = time2;
        fpfsi_setLastSeekTimeSet(v118, cf);
      }

      v143 = v403;
      fpfs_GetNextTimeToPlay(v393, 0, cf);
      v144 = v143;
      v111 = v393;
      fpfsi_PrepareToStartWhenLikelyToKeepUp(v144, cf);
      v113 = v371;
    }

    if ((v18 & 0x4000) != 0 && *(v111 + 1088) == v34 && *(v111 + 465))
    {
      v145 = MEMORY[0x1E6960CC0];
      *(v111 + 408) = *MEMORY[0x1E6960CC0];
      *(v111 + 424) = *(v145 + 16);
    }

    v146 = *&a8->value;
    v147 = v111 + 24 * v34;
    *(v147 + 1200) = a8->epoch;
    *(v147 + 1184) = v146;
    memset(cf, 0, 24);
    fpfs_GetTime(v111, cf);
  }

  if (theBuffer)
  {
    DataLength = CMBlockBufferGetDataLength(theBuffer);
  }

  else
  {
    DataLength = 0;
  }

  if (v113)
  {
    if (*(v362 + 16 * v34) == v113)
    {
      v148 = 0;
    }

    else
    {
      v148 = v112;
    }

    v112 = v148;
  }

  else
  {
    v148 = v381;
  }

  v377[0] = v362 + 16 * v34;
  if (!*(v377[0] + 8 * v148))
  {
    if (theBuffer)
    {
      HIDWORD(v353) = v18 & 0x10;
      HIDWORD(v364) = v112;
      v149 = MEMORY[0x1E6960C70];
      v150 = *MEMORY[0x1E6960C70];
      v416 = v150;
      v151 = *(MEMORY[0x1E6960C70] + 8);
      v417 = v151;
      v414 = v150;
      v415 = v151;
      memset(&type, 0, sizeof(type));
      cf[0] = *a8;
      rhs = *(v111 + 1160);
      CMTimeSubtract(&type, cf, &rhs);
      v152 = v111 + 176;
      v382 = v148;
      v153 = v111 + 176 + 24 * v148;
      v154 = *(v153 + 8 * v34);
      v359 = v153;
      v390 = v17;
      v348 = v34;
      *v351 = v152;
      if (v154)
      {
        if (CMBlockBufferGetDataLength(theBuffer))
        {
          appended = CMBlockBufferAppendBufferReference(v154, theBuffer, 0, 0, 0);
          if (appended)
          {
            Code = appended;
            v395 = 1;
            v40 = a14;
LABEL_707:
            LOBYTE(v18) = BYTE4(v369);
            v26 = v393;
            v37 = DataLength;
            goto LABEL_476;
          }
        }
      }

      else
      {
        *(v153 + 8 * v34) = CFRetain(theBuffer);
      }

      v166 = 0;
      v412 = type.value;
      flags = type.flags;
      timescale = type.timescale;
      *v422 = type.value;
      v423 = type.timescale;
      *v420 = v150;
      v421 = v151;
      v168 = *(v149 + 12);
      v425.value = v393 + 1024;
      *&v425.timescale = v393 + 1040;
      v425.epoch = v393 + 1056;
      v344 = type.epoch;
      v169 = type.epoch;
      LODWORD(v346) = type.flags;
      v170 = *(v149 + 16);
      do
      {
        v171 = **(&v425.value + v166);
        if (v171)
        {
          v172 = v170;
          v173 = v168;
          do
          {
            if (*(v171 + 80) != a11)
            {
              goto LABEL_365;
            }

            rhs = *(v171 + 232);
            time2 = *(v171 + 412);
            CMTimeAdd(cf, &rhs, &time2);
            rhs = *(v171 + 144);
            CMTimeSubtract(&time2, cf, &rhs);
            v418 = time2.value;
            v168 = time2.flags;
            v419 = time2.timescale;
            if ((time2.flags & 0x1D) != 1)
            {
              goto LABEL_365;
            }

            v170 = time2.epoch;
            if ((flags & 1) == 0 || (cf[0].value = v418, cf[0].timescale = v419, cf[0].flags = time2.flags, cf[0].epoch = time2.epoch, rhs.value = *v422, rhs.timescale = v423, rhs.flags = flags, rhs.epoch = v169, CMTimeCompare(cf, &rhs) >= 1))
            {
              *v422 = v418;
              v423 = v419;
              flags = v168;
              v169 = v170;
            }

            if (((v174 = *(v171 + 48), v174 == 1986618469) || v174 == 1936684398) && ((v173 & 1) == 0 || (cf[0].value = v418, cf[0].timescale = v419, cf[0].flags = v168, cf[0].epoch = v170, rhs.value = *v420, rhs.timescale = v421, rhs.flags = v173, rhs.epoch = v172, CMTimeCompare(cf, &rhs) >= 1)) && *(v171 + 196) == v390)
            {
              *v420 = v418;
              v421 = v419;
            }

            else
            {
LABEL_365:
              v168 = v173;
              v170 = v172;
            }

            v171 = *(v171 + 24);
            v172 = v170;
            v173 = v168;
          }

          while (v171);
        }

        v175 = v168 & 0x1D;
        v176 = (flags & 0x1D) == 1;
        if ((flags & 0x1D) == 1 && v175 == 1)
        {
          v176 = 1;
          goto LABEL_373;
        }

        ++v166;
      }

      while (v166 != 3);
      if (v175 != 1)
      {
        *v420 = v412;
        v421 = timescale;
        LODWORD(v168) = v346;
        v170 = v344;
      }

LABEL_373:
      v416 = *v422;
      v417 = v423;
      v414 = *v420;
      v415 = v421;
      v177 = v403;
      v178 = *(v153 + 8 * v348);
      v179 = CMBaseObjectGetDerivedStorage();
      time2.value = 0;
      v425.value = 0;
      if (*(v179 + 400))
      {
        ArrayValue = FigCFDictionaryGetArrayValue();
      }

      else
      {
        ArrayValue = 0;
      }

      v396 = v179;
      if (*(v179 + 873))
      {
        v181 = 3;
      }

      else
      {
        v181 = 1;
      }

      v182 = fpfs_FirstTrackWithFormatDescriptionOfType(v177, 1986618469) == 0;
      cf[0].value = v414;
      cf[0].timescale = v415;
      cf[0].flags = v168;
      cf[0].epoch = v170;
      v183 = v177;
      Code = FigManifoldFactoryCreateManifold(0, v178, v181, cf, v182, fpfs_NewTrackNote, fpfs_MPEG2ManifoldErrorCallback, 0, ArrayValue, 31, v177, &time2);
      v184 = time2.value;
      if (Code)
      {
        v185 = 1;
      }

      else
      {
        v185 = time2.value == 0;
      }

      v186 = !v185 && v176;
      v40 = a14;
      v112 = HIDWORD(v364);
      v37 = DataLength;
      if (v186)
      {
        v187 = *MEMORY[0x1E695E480];
        cf[0].value = v416;
        cf[0].timescale = v417;
        cf[0].flags = flags;
        cf[0].epoch = v169;
        v188 = CMTimeCopyAsDictionary(cf, v187);
        v184 = time2.value;
        if (v188)
        {
          v189 = v188;
          v190 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v190)
          {
            v190(v184, @"FMFD_HintForStartTime", v189);
          }

          CFRelease(v189);
          v184 = time2.value;
        }
      }

      if (Code)
      {
        v17 = v390;
LABEL_455:
        v26 = v393;
        goto LABEL_456;
      }

      v17 = v390;
      v26 = v393;
      if (!v184)
      {
LABEL_456:
        if (v184)
        {
          CFRelease(v184);
        }

        if (v425.value)
        {
          CFRelease(v425.value);
        }

LABEL_460:
        if (v112)
        {
          v371 = *v367;
        }

        if (Code == -16048 || Code == -16044)
        {
          v223 = CMBlockBufferGetDataLength(*(v359 + 8 * v348));
          v224 = 0x20000;
          if (Code == -16048)
          {
            v224 = 0x200000;
          }

          v395 = 1;
          LOWORD(v18) = WORD2(v369);
          if (v223 > v224)
          {
            goto LABEL_476;
          }

          goto LABEL_482;
        }

        if (Code)
        {
          v395 = 1;
        }

        else
        {
          fpfs_prepareDataForInject(*(v359 + 8 * v348));
          CurrentManifold = GetCurrentManifold(v26, v17, v112);
          Code = FigManifoldInjectData(CurrentManifold, 0, (HIDWORD(v369) >> 6) & 4 | (HIDWORD(v353) >> 4) | (HIDWORD(v369) >> 5) & 2, *(v359 + 8 * v348));
          v395 = Code != 0;
          if (v371)
          {
            if (GetCurrentManifold(v26, v17, 0) == v371)
            {
              v222 = 0;
            }

            else
            {
              v222 = v112;
            }

            HIDWORD(v364) = v222;
          }

          else
          {
            v222 = v382;
          }

          v225 = *v351 + 24 * v222;
          v226 = *(v225 + 8 * v348);
          v37 = DataLength;
          if (v226)
          {
            CFRelease(v226);
            *(v225 + 8 * v348) = 0;
          }

          v112 = HIDWORD(v364);
          if (GetCurrentManifold(v26, v17, HIDWORD(v364)))
          {
            LOWORD(v18) = WORD2(v369);
            if (!Code)
            {
LABEL_482:
              v34 = v348;
              goto LABEL_483;
            }

LABEL_476:
            v36 = v355;
            v38 = v395;
            goto LABEL_667;
          }

          if (dword_1EAF169F0)
          {
            LODWORD(time2.value) = 0;
            LOBYTE(v425.value) = 0;
            v268 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v269 = time2.value;
            if (os_log_type_enabled(v268, v425.value))
            {
              v270 = v269;
            }

            else
            {
              v270 = v269 & 0xFFFFFFFE;
            }

            if (v270)
            {
              v271 = v402;
              if (v402)
              {
                v272 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v272 = "";
              }

              v321 = v403;
              if (v403)
              {
                v322 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v322 = "";
              }

              LODWORD(rhs.value) = 136316930;
              *(&rhs.value + 4) = "fpfs_BytePumpFn";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v271;
              HIWORD(rhs.epoch) = 2082;
              v407 = v272;
              *v408 = 2048;
              *&v408[2] = v321;
              *&v408[10] = 2082;
              *&v408[12] = v322;
              *&v408[20] = 1024;
              *&v408[22] = Code;
              *&v408[26] = 1024;
              *&v408[28] = v17;
              *&v408[32] = 1024;
              *&v408[34] = HIDWORD(v364);
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            Code = 0;
            goto LABEL_707;
          }

          Code = 0;
        }

        LOBYTE(v18) = BYTE4(v369);
        goto LABEL_476;
      }

      v191 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v191)
      {
        v191(v184, @"FMFD_ProhibitPrimingTrim", *MEMORY[0x1E695E4D0]);
      }

      if (_os_feature_enabled_impl())
      {
        v192 = *MEMORY[0x1E695E480];
        if (!v396[428])
        {
          v193 = FigSampleAttachmentCollectionRulesCopyForManifold(*MEMORY[0x1E695E480], 0, v396 + 428);
          if (v193)
          {
            v194 = v193;
            fpfs_BytePumpFn_cold_2();
            Code = v194;
            v26 = v393;
            v112 = HIDWORD(v364);
            goto LABEL_460;
          }
        }
      }

      else
      {
        v192 = *MEMORY[0x1E695E480];
      }

      v195 = time2.value;
      v196 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v196)
      {
        v196(v195, @"FMFD_Type", v192, &v425);
      }

      v112 = HIDWORD(v364);
      if (!HIDWORD(v364))
      {
        v202 = v425.value;
        if (v390 || !v425.value)
        {
          if (v390 != 1)
          {
            goto LABEL_403;
          }

          if (!v425.value)
          {
            goto LABEL_403;
          }

          v203 = v396[321];
          if (!v203)
          {
            goto LABEL_403;
          }

          v204 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (!v204)
          {
            goto LABEL_403;
          }

          v205 = 0x1F0B66CD8;
        }

        else
        {
          v203 = v396[321];
          if (!v203)
          {
            goto LABEL_403;
          }

          v204 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (!v204)
          {
            goto LABEL_403;
          }

          v205 = 0x1F0B66CB8;
        }

        v204(v203, @"playerStats", v205, v202, 0);
      }

LABEL_403:
      if (dword_1EAF169F0)
      {
        *v422 = 0;
        v420[0] = OS_LOG_TYPE_DEFAULT;
        v197 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v198 = *v422;
        LODWORD(v346) = v420[0];
        if (os_log_type_enabled(v197, v420[0]))
        {
          v199 = v198;
        }

        else
        {
          v199 = v198 & 0xFFFFFFFE;
        }

        if (v199)
        {
          v200 = *v396;
          if (*v396)
          {
            v201 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v201 = "";
          }

          if (v183)
          {
            v220 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v220 = "";
          }

          LODWORD(rhs.value) = 136316930;
          *(&rhs.value + 4) = "fpfs_CreateManifold";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v200;
          HIWORD(rhs.epoch) = 2082;
          v407 = v201;
          *v408 = 2048;
          *&v408[2] = v183;
          *&v408[10] = 2082;
          *&v408[12] = v220;
          *&v408[20] = 1024;
          *&v408[22] = v390;
          *&v408[26] = 2048;
          *&v408[28] = time2.value;
          *&v408[36] = 2114;
          *&v408[38] = v425.value;
          LODWORD(numSampleSizeEntriesa) = 78;
          sampleTimingArraya = &rhs;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v112 = HIDWORD(v364);
      }

      StoreCurrentManifold(v396, v390, v112, time2.value);
      v184 = time2.value;
      goto LABEL_455;
    }

    v395 = 1;
    if ((v18 & 2) == 0 || *(v111 + 1088) != v34)
    {
LABEL_483:
      v227 = v403;
      v383 = v402;
      v228 = CMBaseObjectGetDerivedStorage();
      v229 = v228;
      time2.value = 0;
      v230 = *(v228 + 1024);
      if (v230)
      {
        while (*(v230 + 196) != v17 || *(v230 + 64) != *(v228 + 16 * v34 + 976))
        {
          v230 = *(v230 + 24);
          if (!v230)
          {
            goto LABEL_487;
          }
        }

        v232 = 1;
        v231 = v112;
        if ((v18 & 0x8000) != 0)
        {
          v233 = 0;
          *(v230 + 204) = 1;
        }

        else
        {
          v233 = 1;
        }
      }

      else
      {
LABEL_487:
        v231 = v112;
        v232 = 0;
        v230 = 0;
        v233 = (v18 & 0x8000) == 0;
      }

      if ((v18 & 0x840) == 0x40)
      {
        v234 = v232 ^ 1;
        if (*(v228 + 1088) != v34)
        {
          v234 = 1;
        }

        if ((v234 & 1) == 0 && !*(v230 + 204))
        {
          if (dword_1EAF169F0)
          {
            LODWORD(v425.value) = 0;
            LOBYTE(type.value) = 0;
            v259 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v260 = v425.value;
            v371 = v259;
            if (os_log_type_enabled(v259, type.value))
            {
              v261 = v260;
            }

            else
            {
              v261 = v260 & 0xFFFFFFFE;
            }

            if (v261)
            {
              if (v383)
              {
                v262 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v262 = "";
              }

              if (v227)
              {
                v275 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v275 = "";
              }

              LODWORD(rhs.value) = 136316418;
              *(&rhs.value + 4) = "fpfsi_checkIfActiveSubstreamSegmentProduceSample";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v383;
              HIWORD(rhs.epoch) = 2082;
              v407 = v262;
              *v408 = 2048;
              *&v408[2] = v227;
              *&v408[10] = 2082;
              *&v408[12] = v275;
              *&v408[20] = 2114;
              *&v408[22] = a9;
              LODWORD(numSampleSizeEntriesa) = 62;
              sampleTimingArraya = &rhs;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            LOBYTE(v18) = BYTE4(v369);
          }

          v276 = *(v229 + 2568);
          if (v276)
          {
            v277 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v277)
            {
              v277(v276, @"playerStats", 0x1F0B43578, 1);
            }
          }

          v278 = *(v229 + 32);
          v279 = FigGetAllocatorForMedia();
          CMBaseObject = FigAssetGetCMBaseObject(v278);
          v281 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v281)
          {
            v282 = v281(CMBaseObject, @"assetProperty_CreationURL", v279, &time2);
            v283 = !v233;
            if (v282)
            {
              v283 = 1;
            }

            if ((v283 & 1) == 0 && FigCFURLIsLocalResource())
            {
              FigSignalErrorAtGM();
            }
          }
        }
      }

      if (time2.value)
      {
        CFRelease(time2.value);
      }

      v36 = v355;
      if (theBuffer)
      {
        v235 = *(v393 + 1152);
        if (v235)
        {
          v236 = *(v393 + 1024);
          if (v236)
          {
            while (*(v236 + 32) != v235)
            {
              v236 = *(v236 + 24);
              if (!v236)
              {
                goto LABEL_500;
              }
            }

            if (*(v236 + 64) == *(v362 + 16 * *(v236 + 196) + 8))
            {
              fpfs_IsTrialReadyToComplete(v393, v236);
            }

            fpfs_CheckVideoSyncQueue();
            if (v309)
            {
              fpfs_FinishVideoSync();
              if (v310)
              {
                Code = v310;
                LODWORD(time2.value) = 0;
                LOBYTE(v425.value) = 0;
                v311 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v312 = time2.value;
                if (os_log_type_enabled(v311, v425.value))
                {
                  v313 = v312;
                }

                else
                {
                  v313 = v312 & 0xFFFFFFFE;
                }

                if (v313)
                {
                  LODWORD(rhs.value) = 136316162;
                  *(&rhs.value + 4) = "fpfs_BytePumpFn";
                  LOWORD(rhs.flags) = 1024;
                  *(&rhs.flags + 2) = Code;
                  WORD1(rhs.epoch) = 1024;
                  HIDWORD(rhs.epoch) = v235;
                  LOWORD(v407) = 1024;
                  *(&v407 + 2) = v17;
                  HIWORD(v407) = 1024;
                  *v408 = v231;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v40 = a14;
                LOBYTE(v18) = BYTE4(v369);
                v26 = v393;
                v39 = v385;
                v36 = v355;
                v37 = DataLength;
                v38 = v395;
                goto LABEL_24;
              }
            }
          }
        }

LABEL_500:
        *(v393 + 1152) = 0;
        LOBYTE(v18) = BYTE4(v369);
      }

      v237 = v231;
      if (HIDWORD(v357))
      {
        v238 = *(v377[0] + 8 * v231);
        if (v238)
        {
          v239 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (v239)
          {
            v239(v238);
          }
        }
      }

      if (v17 != 2 && (v18 & 8) != 0)
      {
        fpfs_EnqueueNotification(v383, @"TimeJumped", v227, 0);
      }

      memset(cf, 0, 24);
      v26 = v393;
      rhs = *(v393 + 1304);
      if (!fpfsi_GetDuration(v227, &cf[0].value))
      {
        time2 = rhs;
        v425 = cf[0];
        if (CMTimeCompare(&time2, &v425))
        {
          fpfs_BytePumpFn_cold_3(v383, v227, v240, v241, v242, v243, v244, v245);
        }
      }

      if (theBuffer && ((UpTimeNanoseconds = FigGetUpTimeNanoseconds(), (v18 & 0x40) != 0) || UpTimeNanoseconds - *(v393 + 2368) >= 500000001))
      {
        fpfsi_EnqueuePlayableRangeChangedNotification(v227);
        if ((v18 & 2) == 0)
        {
          goto LABEL_561;
        }
      }

      else if ((v18 & 2) == 0)
      {
        goto LABEL_561;
      }

      v247 = CMBaseObjectGetDerivedStorage();
      v248 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (v248)
      {
        v249 = 0;
        do
        {
          if (!*(v248 + 200) && *(v248 + 196) == v17)
          {
            if (!v249 || (cf[0] = *(v248 + 232), rhs = *(v249 + 232), CMTimeCompare(cf, &rhs) >= 1))
            {
              v249 = v248;
            }
          }

          v248 = *(v248 + 24);
        }

        while (v248);
      }

      else
      {
        v249 = 0;
      }

      memset(cf, 0, 24);
      rhs = *(v247 + 1352);
      FPSTimelineConverterL3TimeToL2(&rhs, cf);
      v250 = (cf[0].flags & 0x1D) != 1 || v249 == 0;
      LOBYTE(v18) = BYTE4(v369);
      if (v250 || (rhs = cf[0], time2 = *(v249 + 232), CMTimeCompare(&rhs, &time2) < 1) || (v369 & 0x2000000000000) != 0 || *(v249 + 472))
      {
        fpfs_EndCurrentDiscontinuity(v227, v17, v237, 1);
        if (!*(v247 + 471))
        {
          goto LABEL_561;
        }

        memset(&rhs, 0, sizeof(rhs));
        fpfsi_LastNonSparseSampleEnd(v227, &rhs);
        if (rhs.flags)
        {
          *(v247 + 480) = rhs;
          fpfsi_EnqueueEndTimeChangedNotification();
        }

        if ((*(v247 + 332) & 1) != 0 && (!*(v247 + 1024) || (*(v247 + 1484) & 1) != 0 && (time2 = *(v247 + 1472), v425 = *(v247 + 480), CMTimeCompare(&time2, &v425) >= 1)))
        {
          fpfs_BytePumpFn_cold_4(v247);
          v256 = -12863;
        }

        else
        {
          v256 = 0;
        }
      }

      else
      {
        fpfs_CancelGaplessTransitionThatDependsOnTrack(*v247, v249, 1, v251, v252, v253, v254, v255, sampleTimingArraya, numSampleSizeEntriesa, sampleSizeArraya, v341, v343, v344, v346, v348, v351[0], v353, v355, v357, v359, a9, v362, v364, v367, v369, v371, DataLength, v377[0], v377[1], v383, v385);
        v256 = fpfs_AddGAPTrackForExtendedForwardPlaybackEnd(v227, v249);
      }

      if (v256)
      {
        LODWORD(Code) = 0;
        v40 = a14;
        v38 = v395;
        goto LABEL_542;
      }

LABEL_561:
      fpfsi_TrimCachedSamplesFromItem();
      if ((v18 & 0x40) != 0)
      {
        fpfs_BytePumpFn_cold_5(v393);
      }

      v263 = *(v393 + 1576);
      if (v263 && (*(v393 + 1484) & 1) == 0 && v36 && !*(v393 + 1568))
      {
        time2 = **&MEMORY[0x1E6960C70];
        LODWORD(v425.value) = 0;
        v264 = fpsi_TryDateSeekWithSeekID(v227, v263, &v425, &time2, *(v393 + 2216), *(v393 + 2240), 0);
        if (dword_1EAF169F0)
        {
          v349 = v34;
          v365 = v237;
          LODWORD(type.value) = 0;
          v422[0] = OS_LOG_TYPE_DEFAULT;
          v265 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v266 = type.value;
          if (os_log_type_enabled(v265, v422[0]))
          {
            v267 = v266;
          }

          else
          {
            v267 = v266 & 0xFFFFFFFE;
          }

          if (v267)
          {
            if (v383)
            {
              v316 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v316 = "";
            }

            v398 = v316;
            if (v227)
            {
              v323 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v323 = "";
            }

            v324 = *(v393 + 1576);
            if (v264)
            {
              v325 = "proceeding";
            }

            else
            {
              v325 = "failed";
            }

            cf[0] = time2;
            v326 = CMTimeGetSeconds(cf);
            cf[0] = *(v393 + 1544);
            v327 = CMTimeGetSeconds(cf);
            LODWORD(rhs.value) = 136317442;
            *(&rhs.value + 4) = "fpfs_BytePumpFn";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = v383;
            HIWORD(rhs.epoch) = 2082;
            v407 = v398;
            *v408 = 2048;
            *&v408[2] = v227;
            *&v408[10] = 2082;
            *&v408[12] = v323;
            *&v408[20] = 2114;
            *&v408[22] = v324;
            *&v408[30] = 2080;
            *&v408[32] = v325;
            *&v408[40] = 2048;
            *&v408[42] = v326;
            *&v408[50] = 2048;
            v409 = v327;
            v410 = 1024;
            v411 = v425.value;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          LOBYTE(v18) = BYTE4(v369);
          v26 = v393;
          v237 = v365;
          v34 = v349;
        }

        if (!v264)
        {
          if (LODWORD(v425.value) && *(v26 + 2216))
          {
            fpfs_SeekDidFail();
          }

          v328 = *(v26 + 1576);
          if (v328)
          {
            CFRelease(v328);
            *(v26 + 1576) = 0;
          }
        }
      }

      fpfs_CheckPrebufferedLevels(&v400, v227, 1, v34, 0);
      if (!HIDWORD(v357) || *(v385 + 108) == 0.0 || !*(v377[0] + 8 * v237) || *(v26 + 1540))
      {
        goto LABEL_617;
      }

      memset(&time2, 0, sizeof(time2));
      cf[0] = *(v26 + 1184);
      rhs = *(v26 + 1160);
      CMTimeSubtract(&time2, cf, &rhs);
      memset(&v425, 0, sizeof(v425));
      if (time2.flags)
      {
        v425 = time2;
      }

      else
      {
        fpfs_GetTime(v26, cf);
        *&rhs.value = v400;
        rhs.epoch = v401;
        fpfs_TimeAfterPlayback(v385, cf, &rhs, &v425);
      }

      if (v425.flags)
      {
        v303 = v17;
        if (dword_1EAF169F0)
        {
          v304 = v237;
          LODWORD(type.value) = 0;
          v422[0] = OS_LOG_TYPE_DEFAULT;
          v305 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v306 = type.value;
          if (os_log_type_enabled(v305, v422[0]))
          {
            v307 = v306;
          }

          else
          {
            v307 = v306 & 0xFFFFFFFE;
          }

          if (v307)
          {
            if (v383)
            {
              v308 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v308 = "";
            }

            if (v227)
            {
              v329 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v329 = "";
            }

            cf[0] = v425;
            v330 = CMTimeGetSeconds(cf);
            *&cf[0].value = v400;
            cf[0].epoch = v401;
            v331 = CMTimeGetSeconds(cf);
            LODWORD(rhs.value) = 136316674;
            *(&rhs.value + 4) = "fpfs_BytePumpFn";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = v383;
            HIWORD(rhs.epoch) = 2082;
            v407 = v308;
            *v408 = 2048;
            *&v408[2] = v227;
            *&v408[10] = 2082;
            *&v408[12] = v329;
            *&v408[20] = 2048;
            *&v408[22] = v330;
            *&v408[30] = 2048;
            *&v408[32] = v331;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v237 = v304;
        }

        cf[0] = v425;
        *&rhs.value = v400;
        rhs.epoch = v401;
        Code = fpfs_RequestNextIFrameStepUnlocked(v227, cf, &rhs);
        v17 = v303;
        LOBYTE(v18) = BYTE4(v369);
        v26 = v393;
        if ((v369 & 0x4000000000) == 0)
        {
          goto LABEL_660;
        }
      }

      else
      {
LABEL_617:
        Code = 0;
        if ((v18 & 0x40) == 0)
        {
          goto LABEL_660;
        }
      }

      if (!*(v26 + 2144))
      {
        *(v26 + 2144) = 1;
        fpfs_EnqueueNotification(v383, @"NewAccessLogEntry", v227, 0);
      }

      if (dword_1EAF169F0)
      {
        LODWORD(time2.value) = 0;
        LOBYTE(v425.value) = 0;
        v284 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v285 = time2.value;
        if (os_log_type_enabled(v284, v425.value))
        {
          v286 = v285;
        }

        else
        {
          v286 = v285 & 0xFFFFFFFE;
        }

        if (v286)
        {
          if (v383)
          {
            v287 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v287 = "";
          }

          v288 = v237;
          if (v227)
          {
            v289 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v289 = "";
          }

          *&cf[0].value = v400;
          cf[0].epoch = v401;
          v290 = CMTimeGetSeconds(cf);
          fpfs_GetTime(v393, cf);
          v291 = CMTimeGetSeconds(cf);
          LODWORD(rhs.value) = 136316930;
          *(&rhs.value + 4) = "fpfs_BytePumpFn";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v383;
          HIWORD(rhs.epoch) = 2082;
          v407 = v287;
          *v408 = 2048;
          *&v408[2] = v227;
          *&v408[10] = 2082;
          *&v408[12] = v289;
          *&v408[20] = 1024;
          *&v408[22] = v17;
          *&v408[26] = 2048;
          *&v408[28] = v290;
          *&v408[36] = 2048;
          *&v408[38] = v291;
          _os_log_send_and_compose_impl();
          v237 = v288;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v26 = v393;
      }

      if ((*(v26 + 1436) & 1) != 0 && *(v26 + 466) && GetCurrentManifold(v26, v17, v237))
      {
        v292 = GetCurrentManifold(v26, v17, v237);
        FigManifoldFlush(v292);
      }

      v293 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (v293)
      {
        v294 = *MEMORY[0x1E6960538];
        v295 = *MEMORY[0x1E695E4D0];
        do
        {
          if (!*(v293 + 198) && *(v293 + 196) == v17 && !*(v293 + 200))
          {
            cf[0].value = 0;
            v296 = FigGetAllocatorForMedia();
            if (!CMSampleBufferCreate(v296, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, cf))
            {
              CMSetAttachment(cf[0].value, v294, v295, 0);
              CMBufferQueueEnqueue(*(v293 + 96), cf[0].value);
              CFRelease(cf[0].value);
            }
          }

          v293 = *(v293 + 24);
        }

        while (v293);
      }

      v26 = v393;
      LOBYTE(v18) = BYTE4(v369);
      if ((*(v393 + 1436) & 1) != 0 && *(v393 + 466))
      {
        cf[0] = *(v393 + 1424);
        fpfsi_applyTimeToPausePlayback(v227, &cf[0].value, 1, 1, 0);
      }

      if ((*(v393 + 1412) & 1) != 0 && *(v393 + 466))
      {
        cf[0] = *(v393 + 1400);
        fpfsi_applyTimeToPauseBuffering(v227, &cf[0].value, 1);
      }

      fpfsi_RTCReportingUpdateItemStats(v227);
      if (*(v393 + 1736))
      {
        v297 = *(v393 + 1024);
        if (v297)
        {
          while (*(v297 + 48) != 1986618469 || *(v297 + 64) != *(v362 + 16 * *(v297 + 196)) || *(v297 + 168) != 6)
          {
            v297 = *(v297 + 24);
            if (!v297)
            {
              goto LABEL_658;
            }
          }

          GetSwitchOptions(v393, 0);
          memset(&time2, 0, sizeof(time2));
          if (dword_1EAF169F0)
          {
            LODWORD(v425.value) = 0;
            LOBYTE(type.value) = 0;
            v317 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v318 = v425.value;
            if (os_log_type_enabled(v317, type.value))
            {
              v319 = v318;
            }

            else
            {
              v319 = v318 & 0xFFFFFFFE;
            }

            if (v319)
            {
              if (v383)
              {
                v320 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v320 = "";
              }

              if (v227)
              {
                v332 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v332 = "";
              }

              LODWORD(rhs.value) = 136316162;
              *(&rhs.value + 4) = "fpfs_BytePumpFn";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v383;
              HIWORD(rhs.epoch) = 2082;
              v407 = v320;
              *v408 = 2048;
              *&v408[2] = v227;
              *&v408[10] = 2082;
              *&v408[12] = v332;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          fpfs_GetItemBufferedDuration(v227);
          v26 = v393;
          rhs = time2;
          if (!fpfs_SetAlternateWithContext(v383))
          {
            v333 = *(v393 + 1736);
            if (v333)
            {
              CFRelease(v333);
              *(v393 + 1736) = 0;
            }
          }

          LOBYTE(v18) = BYTE4(v369);
          if (!a13)
          {
            goto LABEL_660;
          }

          goto LABEL_659;
        }
      }

LABEL_658:
      if (a13)
      {
LABEL_659:
        fpfs_GetTime(v26, &rhs);
        time2 = *(v26 + 1160);
        CMTimeAdd(cf, &rhs, &time2);
        *a13 = cf[0];
      }

LABEL_660:
      fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd(v227);
      v40 = a14;
      v36 = v355;
      v37 = DataLength;
      v38 = v395;
      goto LABEL_661;
    }

    v159 = v112;
    cf[0] = **&MEMORY[0x1E6960C70];
    v160 = v403;
    fpfs_GetItemBufferedDuration(v403);
    rhs = cf[0];
    time2 = **&MEMORY[0x1E6960CC0];
    v161 = CMTimeCompare(&rhs, &time2);
    v162 = *(v385 + 688);
    v163 = *(v385 + 80);
    Count = CFArrayGetCount(*(v385 + 72));
    if (v163)
    {
      v165 = Count + 1;
    }

    else
    {
      v165 = Count;
    }

    if (FigPlaybackGetEffectiveActionAtEnd(v162, v165) || v161 >= 1)
    {
      v395 = 1;
      LOWORD(v18) = WORD2(v369);
      v112 = v159;
      goto LABEL_483;
    }

    fpfs_StopPlayingItemWithOSStatus(v385, v160, 0);
    LODWORD(Code) = 0;
    v38 = 1;
    LOBYTE(v18) = BYTE4(v369);
    v26 = v393;
    v36 = v355;
LABEL_47:
    v40 = a14;
    if (!Code)
    {
      goto LABEL_543;
    }

    goto LABEL_747;
  }

  if (!theBuffer && !v18)
  {
    v395 = 1;
    goto LABEL_483;
  }

  v156 = v112;
  v157 = (v18 >> 6) & 4 | ((v18 & 0x10) >> 4) | (v18 >> 5) & 2;
  if (!theBuffer && !v157)
  {
    v395 = 1;
    v112 = v156;
    goto LABEL_483;
  }

  v158 = *(v111 + 1024);
  if (v158)
  {
    while (*(v158 + 196) != v17 || *(v158 + 64) != *v377[0])
    {
      v158 = *(v158 + 24);
      if (!v158)
      {
        goto LABEL_417;
      }
    }

    if ((v18 & 0x8100) == 0x100)
    {
      *(v158 + 204) = 0;
    }
  }

LABEL_417:
  fpfs_prepareDataForInject(theBuffer);
  v206 = *(v377[0] + 8 * v148);
  v207 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v207)
  {
    Code = v207(v206, a7, v157, theBuffer);
  }

  else
  {
    Code = 4294954514;
  }

  v26 = v393;
  v112 = v156;
  if (v371)
  {
    if (*(v362 + 16 * v34) == v371)
    {
      v112 = 0;
    }

    else
    {
      v112 = v156;
    }
  }

  if (!Code)
  {
    v395 = 0;
    goto LABEL_483;
  }

  if (*(v377[0] + 8 * v112))
  {
    v208 = v112;
    LODWORD(time2.value) = 0;
    LOBYTE(v425.value) = 0;
    v209 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v210 = time2.value;
    if (os_log_type_enabled(v209, v425.value))
    {
      v211 = v210;
    }

    else
    {
      v211 = v210 & 0xFFFFFFFE;
    }

    if (v211)
    {
      v212 = v402;
      if (v402)
      {
        v213 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v213 = "";
      }

      v273 = v403;
      if (v403)
      {
        v274 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v274 = "";
      }

      LODWORD(rhs.value) = 136316930;
      *(&rhs.value + 4) = "fpfs_BytePumpFn";
      LOWORD(rhs.flags) = 2048;
      *(&rhs.flags + 2) = v212;
      HIWORD(rhs.epoch) = 2082;
      v407 = v213;
      *v408 = 2048;
      *&v408[2] = v273;
      *&v408[10] = 2082;
      *&v408[12] = v274;
      *&v408[20] = 1024;
      *&v408[22] = Code;
      *&v408[26] = 1024;
      *&v408[28] = v17;
      *&v408[32] = 1024;
      *&v408[34] = v208;
      _os_log_send_and_compose_impl();
    }

    v38 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOBYTE(v18) = BYTE4(v369);
    v26 = v393;
    v39 = v385;
    v40 = a14;
    v36 = v355;
    v37 = DataLength;
    goto LABEL_24;
  }

  if (dword_1EAF169F0)
  {
    v214 = v112;
    LODWORD(time2.value) = 0;
    LOBYTE(v425.value) = 0;
    v215 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v216 = time2.value;
    if (os_log_type_enabled(v215, v425.value))
    {
      v217 = v216;
    }

    else
    {
      v217 = v216 & 0xFFFFFFFE;
    }

    if (v217)
    {
      v218 = v402;
      if (v402)
      {
        v219 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v219 = "";
      }

      v314 = v403;
      if (v403)
      {
        v315 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v315 = "";
      }

      LODWORD(rhs.value) = 136316930;
      *(&rhs.value + 4) = "fpfs_BytePumpFn";
      LOWORD(rhs.flags) = 2048;
      *(&rhs.flags + 2) = v218;
      HIWORD(rhs.epoch) = 2082;
      v407 = v219;
      *v408 = 2048;
      *&v408[2] = v314;
      *&v408[10] = 2082;
      *&v408[12] = v315;
      *&v408[20] = 1024;
      *&v408[22] = Code;
      *&v408[26] = 1024;
      *&v408[28] = v17;
      *&v408[32] = 1024;
      *&v408[34] = v214;
      _os_log_send_and_compose_impl();
    }

    v38 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LODWORD(Code) = 0;
    LOBYTE(v18) = BYTE4(v369);
    v26 = v393;
  }

  else
  {
    LODWORD(Code) = 0;
    v38 = 1;
  }

  v36 = v355;
  v40 = a14;
  v37 = DataLength;
LABEL_25:
  if (v37)
  {
    v41 = *(v26 + 2568);
    if (v41)
    {
      v42 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v42)
      {
        v42(v41, @"playerStats", 0x1F0B42738, v37);
      }
    }

    goto LABEL_44;
  }

LABEL_542:
  if (Code)
  {
    goto LABEL_747;
  }

LABEL_543:
  if ((v18 & 0x40) == 0 || v17 && (*(v26 + 1072) & 1) != 0 || (v257 = *(v26 + 96)) == 0)
  {
LABEL_747:
    fpfs_UnlockAndPostNotificationsWithCaller(v402);
    v258 = 0;
    goto LABEL_748;
  }

  v258 = CFRetain(v257);
  fpfs_UnlockAndPostNotificationsWithCaller(v402);
  if (v258 && FigAlternatePlaybackBitrateMonitorTryToSwitchUp(v258))
  {
    v38 |= 2u;
  }

LABEL_748:
  if (v40)
  {
    *v40 = v38;
  }

  if (v258)
  {
    CFRelease(v258);
  }

  if (v36)
  {
    CFRelease(v36);
  }

LABEL_754:
  if (v403)
  {
    CFRelease(v403);
  }

  if (v402)
  {
    CFRelease(v402);
  }
}

uint64_t fpfs_FrameStepHitEnd(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  TrackOfType = fpfs_LastTrackOfType(a1, 1986618469, 0);
  memset(v9, 0, 24);
  result = fpfsi_GetDuration(a1, &v9[0].value);
  if (result | ~v9[0].flags & 0x11)
  {
    v5 = TrackOfType == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = CMBaseObjectGetDerivedStorage();
    if (*(v7 + 471) != 1)
    {
      *(v7 + 471) = 1;
    }

    fpfs_StopFeedingTrack(TrackOfType, 0, 1);
    if (*(DerivedStorage + 840) > 0.0 && (*(DerivedStorage + 492) & 1) == 0)
    {
      v8 = *(TrackOfType + 232);
      *(DerivedStorage + 496) = *(TrackOfType + 248);
      *(DerivedStorage + 480) = v8;
      fpfsi_EnqueueEndTimeChangedNotification();
    }

    fpfs_GetTime(DerivedStorage, v9);
    result = fpfs_TrackIsStalled(TrackOfType, v9);
    if (result)
    {
      return fpfs_EndTrackPlayback(TrackOfType);
    }
  }

  return result;
}

__n128 fpfs_CurrentSubStreamBufferedDuration@<Q0>(unsigned int a1@<W1>, uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  memset(&v29, 0, sizeof(v29));
  v6 = *MEMORY[0x1E6960C70];
  *(a2 + 16) = *(MEMORY[0x1E6960C70] + 16);
  v7 = MEMORY[0x1E6960CC0];
  *a2 = v6;
  *&v28.value = *v7;
  v8 = *(v7 + 16);
  v28.epoch = v8;
  *&v27.value = *&v28.value;
  v27.epoch = v8;
  v21 = *&v28.value;
  *&v26.value = *&v28.value;
  v26.epoch = v8;
  memset(&v25, 0, sizeof(v25));
  result.n128_f64[0] = fpfs_GetNextTimeToPlay(DerivedStorage, 1, &v25);
  v10 = *(DerivedStorage + 1024);
  if (!v10)
  {
    goto LABEL_37;
  }

  v11 = 0;
  v12 = 0;
  v20 = 0;
  v13 = (DerivedStorage + 16 * a1 + 976);
  do
  {
    while (1)
    {
      if (*(v10 + 196) != a1 || *(v10 + 64) != *v13)
      {
        goto LABEL_25;
      }

      if (*(v10 + 200) && (~*(v10 + 156) & 0x11) == 0)
      {
        CMBufferQueueGetDuration(&v29, *(v10 + 88));
        goto LABEL_17;
      }

      v14 = *(v10 + 244);
      if (*(v5 + 108) >= 0.0)
      {
        if (v14)
        {
          time1 = *(v10 + 232);
          time2 = v25;
          if (CMTimeCompare(&time1, &time2) >= 1)
          {
            time2 = *(v10 + 232);
            *&rhs.value = *&v25.value;
            epoch = v25.epoch;
            goto LABEL_15;
          }
        }
      }

      else if (v14)
      {
        time1 = v25;
        time2 = *(v10 + 232);
        if (CMTimeCompare(&time1, &time2) >= 1)
        {
          time2 = v25;
          *&rhs.value = *(v10 + 232);
          epoch = *(v10 + 248);
LABEL_15:
          rhs.epoch = epoch;
          CMTimeSubtract(&time1, &time2, &rhs);
          result.n128_u64[0] = time1.value;
          v29 = time1;
          goto LABEL_17;
        }
      }

      result = v21;
      *&v29.value = v21;
      v29.epoch = v8;
LABEL_17:
      v16 = *(v10 + 48);
      if (v16 != 1986618469)
      {
        break;
      }

      result.n128_u64[0] = v29.value;
      v27 = v29;
      v10 = *(v10 + 24);
      v12 = 1;
      if (!v10)
      {
        v18 = v11 == 0;
        result.n128_u64[0] = v29.value;
        *a2 = *&v29.value;
        v19 = v29.epoch;
        goto LABEL_28;
      }
    }

    if (v16 == 1936684398)
    {
      v20 = 1;
      v17 = &v28;
    }

    else
    {
      if (v16 != 1935832172)
      {
        goto LABEL_25;
      }

      v11 = 1;
      v17 = &v26;
    }

    result.n128_u64[0] = v29.value;
    *v17 = v29;
LABEL_25:
    v10 = *(v10 + 24);
  }

  while (v10);
  v18 = v11 == 0;
  if (!v12)
  {
    goto LABEL_29;
  }

  result.n128_u64[0] = v27.value;
  *a2 = *&v27.value;
  v19 = v27.epoch;
LABEL_28:
  *(a2 + 16) = v19;
LABEL_29:
  if (v20)
  {
    if ((*(a2 + 12) & 1) == 0 || (time1 = v28, time2 = *a2, CMTimeCompare(&time1, &time2) < 0))
    {
      result.n128_u64[0] = v28.value;
      *a2 = v28;
    }
  }

  if (!v18)
  {
    if ((*(a2 + 12) & 1) == 0 || (time1 = v26, time2 = *a2, CMTimeCompare(&time1, &time2) < 0))
    {
      result.n128_u64[0] = v26.value;
      *a2 = v26;
    }
  }

LABEL_37:
  if ((*(a2 + 12) & 1) == 0)
  {
    result = v21;
    *a2 = v21;
    *(a2 + 16) = v8;
  }

  return result;
}

void fpfs_prepareDataForInject(const void *a1)
{
  attachmentModeOut = 0;
  v2 = CMGetAttachment(a1, @"FBPAKey_Decryptor", &attachmentModeOut);
  if (v2)
  {
    CMSetAttachment(a1, @"FMFD_BufferDecryptor", v2, attachmentModeOut);
    CMRemoveAttachment(a1, @"FBPAKey_Decryptor");
  }

  v3 = CMGetAttachment(a1, @"FBPAKey_AudioDecryptor", &attachmentModeOut);
  if (v3)
  {
    CMSetAttachment(a1, @"FMFD_BufferAudioDecryptor", v3, attachmentModeOut);
    CMRemoveAttachment(a1, @"FBPAKey_AudioDecryptor");
  }
}

uint64_t FigManifoldInjectData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t fpsi_TryDateSeekWithSeekID(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v33, 0, sizeof(v33));
  v15 = MEMORY[0x1E6960C70];
  *a4 = *MEMORY[0x1E6960C70];
  *(a4 + 16) = *(v15 + 16);
  if (!*(DerivedStorage + 1592))
  {
    return 0;
  }

  v16 = DerivedStorage;
  if (*(DerivedStorage + 912))
  {
    fpfsi_GetPumpReferenceTimeForDate(DerivedStorage, a2, &v33);
    rhs = v33;
    fpfs_GetTimeForDate();
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    v17 = time.flags & 1;
    if (time.flags)
    {
      epoch = time.epoch;
      if (dword_1EAF169F0)
      {
        v31 = time.epoch;
        v32 = time.flags;
        LODWORD(lhs.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v23 = lhs.value;
        v24 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        v25 = v23 & 0xFFFFFFFE;
        if (v24)
        {
          v25 = v23;
        }

        if (v25)
        {
          v26 = *v16;
          if (v26)
          {
            v27 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v27 = "";
          }

          v30 = v27;
          if (a1)
          {
            v28 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v28 = "";
          }

          time.value = value;
          time.timescale = timescale;
          time.flags = v32;
          time.epoch = v31;
          Seconds = CMTimeGetSeconds(&time);
          LODWORD(rhs.value) = 136316418;
          *(&rhs.value + 4) = "fpsi_TryDateSeekWithSeekID";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v26;
          HIWORD(rhs.epoch) = 2082;
          v36 = v30;
          v37 = 2048;
          v38 = a1;
          v39 = 2082;
          v40 = v28;
          v41 = 2048;
          v42 = Seconds;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        flags = v32;
        epoch = v31;
      }

      time.value = value;
      time.timescale = timescale;
      time.flags = flags;
      time.epoch = epoch;
      rhs = **&MEMORY[0x1E6960C80];
      lhs = **&MEMORY[0x1E6960C88];
      v18 = fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts(a1, &time, 5, &rhs, &lhs, a5, 0, a6, 16842753, a7, 1);
    }

    else
    {
      CMTimeMake(&rhs, 1, 1000);
      lhs = v33;
      CMTimeAdd(&time, &lhs, &rhs);
      v33 = time;
      rhs = time;
      lhs = *(v16 + 1160);
      CMTimeSubtract(&time, &rhs, &lhs);
      v18 = 0;
      v33 = time;
    }

    *a4 = v33;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  *a3 = v18;
  if (v18)
  {
    return 0;
  }

  else
  {
    return v17;
  }
}

uint64_t fpfs_RequestNextIFrameStepUnlocked(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  time = *a3;
  Seconds = CMTimeGetSeconds(&time);
  v9 = *(v7 + 108);
  v10 = fabsf(v9);
  if (v9 == 0.0)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = v10;
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  memset(&v27, 0, sizeof(v27));
  CMTimeMake(&v27, 1, 1);
  memset(&v26, 0, sizeof(v26));
  CMTimeMake(&v26, 1, 100);
  memset(&v25, 0, sizeof(v25));
  memset(&v24, 0, sizeof(v24));
  if (!*(DerivedStorage + 912))
  {
    return 0;
  }

  time = *a2;
  rhs = *(DerivedStorage + 1160);
  CMTimeAdd(&v25, &time, &rhs);
  rhs = v25;
  v23 = v26;
  CMTimeAdd(&time, &rhs, &v23);
  v25 = time;
  v13 = *(v7 + 108);
  rhs = v27;
  CMTimeMultiplyByFloat64(&time, &rhs, v13);
  rhs = v25;
  CMTimeAdd(&v24, &rhs, &time);
  *(DerivedStorage + 1520) = CFAbsoluteTimeGetCurrent();
  *(DerivedStorage + 1541) = 0;
  v14 = CMBaseObjectGetDerivedStorage();
  if (*(v14 + 471))
  {
    *(v14 + 471) = 0;
  }

  v15 = *(DerivedStorage + 912);
  v16 = *(v7 + 108);
  v23 = v25;
  v22 = v24;
  v17 = Seconds / v11;
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v18)
  {
    time = v23;
    rhs = v22;
    v19 = v18(v15, &time, (UpTimeNanoseconds + v17 * 1000000000.0), &rhs, 8, DerivedStorage + 928, v16);
  }

  else
  {
    v19 = 4294954514;
  }

  if (dword_1EAF169F0 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v19 == -12648)
  {
    fpfs_FrameStepHitEnd(a1);
    return 0;
  }

  return v19;
}

BOOL fpfs_TrackIsStalled(uint64_t a1, CMTime *a2)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(a1 + 200) && *(a1 + 48) == 1986618469)
  {
    v5 = DerivedStorage;
    memset(&v10, 0, sizeof(v10));
    CMTimeMake(&v10, 10, 1000);
    if (*(v5 + 108) >= 0.0 && (*(a1 + 244) & 1) != 0)
    {
      lhs = *a2;
      v7 = v10;
      CMTimeAdd(&time1, &lhs, &v7);
      lhs = *(a1 + 232);
      return CMTimeCompare(&time1, &lhs) >= 0;
    }

    else
    {
      lhs = *a2;
      v7 = v10;
      CMTimeSubtract(&time1, &lhs, &v7);
      lhs = *(a1 + 232);
      return CMTimeCompare(&time1, &lhs) < 1;
    }
  }

  else
  {
    time1 = *(a1 + 232);
    lhs = *a2;
    CMTimeSubtract(&v10, &time1, &lhs);
    *&time1.value = kGaplessTransitionDeadlineInterval;
    time1.epoch = 0;
    return CMTimeCompare(&v10, &time1) >> 31;
  }
}

void fpfs_EndTrackPlayback(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = *(a1 + 48);
  fpfs_FinishTrack(a1, 1);
  v6 = *(DerivedStorage + 1024);
  if (!v6)
  {
    goto LABEL_11;
  }

  while (*(v6 + 48) != v5 || !FigStreamTrackAreTracksSyncPairs(a1, v6))
  {
    v6 = *(v6 + 24);
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (*(v6 + 168) == 1)
  {
    memset(&v17, 0, sizeof(v17));
    v7 = *(v6 + 88);
    if (v7)
    {
      CMBufferQueueGetMinPresentationTimeStamp(&v17, v7);
    }

    else
    {
      v17 = **&MEMORY[0x1E6960C70];
    }

    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fpfs_AbandonSyncAttempt(v6);
  }

  else
  {
LABEL_11:
    if (*(DerivedStorage + 840) == 0.0)
    {
      return;
    }

    v9 = *(DerivedStorage + 1024);
    if (v9)
    {
      while (v9 == a1 || *(v9 + 168) != 6)
      {
        v9 = *(v9 + 24);
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      if (!*(a1 + 200))
      {
        v11 = *(a1 + 196);
        if ((*(DerivedStorage + 1072) >> v11))
        {
          if (*(a1 + 48) == 1986618469)
          {
            if (!fpfs_CanRenderVideo(v4, *(v9 + 16)))
            {
              return;
            }

            v11 = *(a1 + 196);
          }

          if (!*(DerivedStorage + v11 + 472))
          {
            v12 = *(DerivedStorage + 1024);
            if (!v12)
            {
              goto LABEL_45;
            }

            v13 = 0;
            v14 = 0;
            do
            {
              if (*(v12 + 196) == v11)
              {
                if (*(v12 + 168) == 6 && *(v12 + 80) == *(a1 + 80) && !*(v12 + 200))
                {
                  v14 = v12;
                }

                v13 = v12;
              }

              v12 = *(v12 + 24);
            }

            while (v12);
            if (!v13 || (*(v13 + 80) == *(a1 + 80) ? (v15 = v14 == 0) : (v15 = 0), v15))
            {
LABEL_45:
              if (dword_1EAF169F0)
              {
                LODWORD(v17.value) = 0;
                v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              fpfs_StopPlaybackByStalledTrack(a1, 1u);
            }
          }
        }
      }
    }

    else
    {
LABEL_16:
      v10 = *(v4 + 108);
      if (v10 <= 2.0 && v10 >= 0.0 || *(DerivedStorage + 2992))
      {
        fpfs_setUnlikelyToKeepUpAndRanDry(v2);
        if (!*(DerivedStorage + 471) && !fpfsi_PlaybackHasBufferedBeyondForwardEndTime())
        {

          fpfsi_pauseItem(v2);
        }
      }
    }
  }
}

void fpfs_FinishTrack(uint64_t a1, int a2)
{
  v132 = *MEMORY[0x1E69E9840];
  v116 = a1;
  v4 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v114 = 0uLL;
  v115 = 0;
  fpfs_GetTime(DerivedStorage, &v114);
  v128 = *(a1 + 256);
  v129 = *(a1 + 264);
  v6 = *(a1 + 268);
  v105 = *(a1 + 272);
  v112 = DerivedStorage;
  v7 = *DerivedStorage;
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = *(a1 + 48);
  v104 = *(a1 + 32);
  v111 = v7;
  if (*(v8 + 872) == 2)
  {
    v10 = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (v10)
    {
      v11 = 0;
      do
      {
        if (*(v10 + 48) != 1986618469)
        {
          goto LABEL_8;
        }

        Dimensions = CMVideoFormatDescriptionGetDimensions(*(v10 + 56));
        v13 = HIDWORD(Dimensions);
        if (SHIDWORD(Dimensions) >= Dimensions)
        {
          LODWORD(v13) = Dimensions;
        }

        v14 = v10;
        if (v13 <= 1440)
        {
LABEL_8:
          v14 = v11;
        }

        v10 = *(v10 + 24);
        v11 = v14;
      }

      while (v10);
    }

    else
    {
      v14 = 0;
    }

    v15 = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (v15)
    {
      v16 = 0;
      do
      {
        if (*(v15 + 48) != 1986618469 || (VideoDynamicRange = CMVideoFormatDescriptionGetVideoDynamicRange(), v18 = v15, VideoDynamicRange <= 1))
        {
          v18 = v16;
        }

        v15 = *(v15 + 24);
        v16 = v18;
      }

      while (v15);
    }

    else
    {
      v18 = 0;
    }

    v7 = v111;
    if (v18 == a1)
    {
      fpfs_ReleasePlayerHDRPlaybackBaton();
      if (!v14)
      {
LABEL_25:
        fpfs_ReleasePlayer4kPlaybackBaton(v111);
        goto LABEL_26;
      }
    }

    else if (!v14)
    {
      goto LABEL_25;
    }

    if (v14 != a1)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  v110 = v8;
  HIDWORD(v106) = a2;
  if (*(a1 + 48) != 1936684398)
  {
    v19 = v112;
    v21 = *(v112 + 1024);
    if (v21)
    {
      v23 = 0;
      v24 = 0x7FFFFFFFLL;
      v25 = *(v112 + 1024);
      do
      {
        if (v25 != a1 && *(v25 + 168) == 6 && *(v25 + 80) < v24)
        {
          v23 = v25;
          v24 = *(v25 + 80);
        }

        v25 = *(v25 + 24);
      }

      while (v25);
      while (v23)
      {
        if (v23 != a1 && *(v23 + 80) == v24 && *(v23 + 48) == 1936684398 && *(v23 + 168) == 6)
        {
          v58 = *(v23 + 112);
          if (!v58)
          {
            goto LABEL_49;
          }

          v22 = 0;
          if (!*(v58 + 25))
          {
            v51 = 0;
            v22 = v23;
            goto LABEL_195;
          }

          LODWORD(v108) = 1;
          v21 = 0;
          goto LABEL_53;
        }

        v23 = *(v23 + 24);
      }

      goto LABEL_49;
    }

LABEL_51:
    v22 = 0;
LABEL_52:
    LODWORD(v108) = 1;
    goto LABEL_53;
  }

  v19 = v112;
  if (*(CMBaseObjectGetDerivedStorage() + 568))
  {
    fpfs_UnmuteNextAtmosAudioTrack(v7, v4, a1);
  }

  IsRendererTimebaseStarter = FigStreamTrackIsRendererTimebaseStarter(a1);
  v21 = *(v112 + 1024);
  if (!v21)
  {
    goto LABEL_51;
  }

  v22 = *(v112 + 1024);
  while (v22 == a1 || *(v22 + 48) != 1936684398)
  {
    v22 = *(v22 + 24);
    if (!v22)
    {
      goto LABEL_50;
    }
  }

  if (*(v22 + 168) != 6 || (v50 = *(v22 + 112)) == 0 || v50 == *(a1 + 112))
  {
LABEL_49:
    v22 = 0;
LABEL_50:
    v21 = 0;
    goto LABEL_52;
  }

  if (IsRendererTimebaseStarter)
  {
    v51 = v22;
  }

  else
  {
    v51 = 0;
  }

  if (!*(v50 + 25))
  {
LABEL_195:
    while (1)
    {
      if (v21 != a1 && v21 != v22 && *(v21 + 168) == 6)
      {
        if (*(v21 + 128))
        {
          time = *(v21 + 232);
          v117 = *(v22 + 208);
          if (CMTimeCompare(&time, &v117) < 1)
          {
            break;
          }
        }
      }

      v21 = *(v21 + 24);
      if (!v21)
      {
        CMTimebaseSetRate(*(v19 + 576), 0.0);
        FigCFArrayApplyFunction();
        LODWORD(v108) = 0;
        goto LABEL_202;
      }
    }
  }

  v22 = 0;
  LODWORD(v108) = 1;
LABEL_202:
  v21 = v51;
LABEL_53:
  HIDWORD(v108) = v6;
  if (dword_1EAF169F0)
  {
    v107 = v21;
    v109 = v4;
    LODWORD(time2.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = time2.value;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v28 = value;
    }

    else
    {
      v28 = value & 0xFFFFFFFE;
    }

    if (v28)
    {
      if (v7)
      {
        v29 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v29 = "";
      }

      v103 = v29;
      v30 = "";
      if (v4)
      {
        v102 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v102 = "";
      }

      v101 = *(a1 + 32);
      *&time.value = v114;
      time.epoch = v115;
      Seconds = CMTimeGetSeconds(&time);
      if (*(a1 + 48) == 1936684398)
      {
        v30 = "(audio)";
      }

      time = *(a1 + 232);
      v32 = CMTimeGetSeconds(&time);
      LODWORD(v117.value) = 136317186;
      *(&v117.value + 4) = "fpfs_FinishTrack";
      LOWORD(v117.flags) = 2048;
      *(&v117.flags + 2) = v111;
      HIWORD(v117.epoch) = 2082;
      v118 = v103;
      v119 = 2048;
      v120 = v4;
      v7 = v111;
      v121 = 2082;
      v122 = v102;
      v123 = 2048;
      *v124 = v101;
      v124[4] = 2048;
      *&v124[5] = Seconds;
      v124[9] = 2082;
      v125 = v30;
      v126 = 2048;
      v127 = v32;
      LODWORD(cf) = 92;
      v98 = &v117;
      _os_log_send_and_compose_impl();
      v19 = v112;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v21 = v107;
  }

  if (*(a1 + 48) == 1668047728)
  {
    FPSupport_resetClosedCaptionLayer(v110 + 208);
  }

  fpfs_StopFeedingTrack(a1, 0, 0);
  *&time.value = v114;
  time.epoch = v115;
  fpfsi_MoveTrackToPlayedOut(v19, a1, &time);
  if (!v21)
  {
    goto LABEL_74;
  }

  v33 = v21;
  FigBaseObject = FigRenderPipelineGetFigBaseObject(*(*(v21 + 112) + 32));
  v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v35)
  {
    v44 = 4294954514;
    goto LABEL_90;
  }

  v36 = v35(FigBaseObject, @"IsTimebaseStarter", *MEMORY[0x1E695E4D0]);
  v21 = v33;
  if (v36)
  {
    v44 = v36;
LABEL_90:
    LODWORD(time2.value) = 0;
    LOBYTE(type.value) = 0;
    v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v46 = time2.value;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v46;
    }

    else
    {
      v47 = v46 & 0xFFFFFFFE;
    }

    v39 = v110;
    if (!v47)
    {
      goto LABEL_109;
    }

    if (v7)
    {
      v48 = (CMBaseObjectGetDerivedStorage() + 888);
      if (v4)
      {
LABEL_96:
        v49 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_108:
        v52 = *(v33 + 32);
        LODWORD(v117.value) = 136316674;
        *(&v117.value + 4) = "fpfs_FinishTrack";
        LOWORD(v117.flags) = 2048;
        *(&v117.flags + 2) = v111;
        HIWORD(v117.epoch) = 2082;
        v118 = v48;
        v119 = 2048;
        v120 = v4;
        v121 = 2082;
        v122 = v49;
        v123 = 1024;
        *v124 = v52;
        v124[2] = 1024;
        *&v124[3] = v44;
        _os_log_send_and_compose_impl();
LABEL_109:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_110:
        fpfs_StopPlayingItemWithOSStatus(v39, v4, v44);
        return;
      }
    }

    else
    {
      v48 = "";
      if (v4)
      {
        goto LABEL_96;
      }
    }

    v49 = "";
    goto LABEL_108;
  }

LABEL_74:
  v37 = HIDWORD(v108);
  if ((v108 & 0x100000000) != 0)
  {
    v107 = v21;
    if (dword_1EAF169F0)
    {
      v109 = v4;
      LODWORD(time2.value) = 0;
      LOBYTE(type.value) = 0;
      v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v54 = time2.value;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v55 = v54;
      }

      else
      {
        v55 = v54 & 0xFFFFFFFE;
      }

      if (v55)
      {
        if (v7)
        {
          v95 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v95 = "";
        }

        v103 = v95;
        if (v109)
        {
          v96 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v96 = "";
        }

        time.value = v128;
        time.timescale = v129;
        time.flags = HIDWORD(v108);
        time.epoch = v105;
        v97 = CMTimeGetSeconds(&time);
        LODWORD(v117.value) = 136316418;
        *(&v117.value + 4) = "fpfs_FinishTrack";
        LOWORD(v117.flags) = 2048;
        *(&v117.flags + 2) = v111;
        HIWORD(v117.epoch) = 2082;
        v118 = v103;
        v119 = 2048;
        v120 = v109;
        v121 = 2082;
        v122 = v96;
        v7 = v111;
        v123 = 2048;
        *v124 = v97;
        LODWORD(cf) = 62;
        v98 = &v117;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v4 = v109;
      v19 = v112;
      v37 = HIDWORD(v108);
    }

    fpfsi_pauseItem(v4);
    time.value = v128;
    time.timescale = v129;
    time.flags = v37;
    time.epoch = v105;
    fpfs_JumpToTime(v4, &time, 1);
    time = **&MEMORY[0x1E6960C70];
    v117 = time;
    fpfs_setRateInternal(v7, v4, &time, &v117);
    v21 = v107;
    if (!fpfsi_isTrackInLists(v19, a1, 3u))
    {
      v116 = 0;
    }
  }

  if ((v108 & 1) == 0)
  {
    time2 = **&MEMORY[0x1E6960C70];
    v56 = *&time2.value;
    type = time2;
    if (*(v22 + 438))
    {
      *(v22 + 438) = 0;
    }

    v57 = *(v19 + 840);
    if (*(v19 + 568))
    {
      fpfs_getAnchorTimeForSyncTimebase(v57, v7, v4, &time2, &type);
    }

    else if (v57 != 0.0)
    {
      fpfs_getCachedAnchorTimeForItem();
    }

    v56.n128_u32[0] = *(v19 + 840);
    time = time2;
    v117 = type;
    v59 = fpfs_SetRateOnTrack(v22, &time, &v117, v56);
    if (v59)
    {
      if (v22 == v21)
      {
        v60 = v59;
        v61 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
        v44 = v60;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v39 = v110;
        goto LABEL_110;
      }
    }
  }

  v38 = *(v19 + 1024);
  v39 = v110;
  if (!v38)
  {
    goto LABEL_131;
  }

  while (1)
  {
    v40 = v38;
    v38 = *(v38 + 24);
    if (*(v40 + 48) != v9)
    {
      goto LABEL_82;
    }

    v41 = *(v40 + 168);
    if (v41 == 3)
    {
      break;
    }

LABEL_79:
    if (v41 == 1 && !*(v40 + 112) && *(v40 + 48) == 1986618469)
    {
      fpfs_CheckVideoSyncQueue();
      if (v42)
      {
        fpfs_FinishVideoSync();
        if (v43)
        {
          v44 = v43;
          goto LABEL_110;
        }
      }
    }

LABEL_82:
    if (!v38)
    {
      goto LABEL_131;
    }
  }

  if (!fpfs_AreTracksReadyToPlay(v4, *(v40 + 80), 0))
  {
    v41 = *(v40 + 168);
    goto LABEL_79;
  }

  fpfs_PerformInitialResolveOfAllWaitingTracks(v4);
  if (!fpfs_GetItemLivingTrack(v112, v104, &v116))
  {
    v116 = 0;
  }

LABEL_131:
  if (CFArrayGetCount(*(v110 + 72)) < 1)
  {
    v65 = CMBaseObjectGetDerivedStorage();
    memset(&v117, 0, sizeof(v117));
    fpfs_GetTime(v65, &v117);
    if ((*(v65 + 1364) & 0x1D) == 1)
    {
      fpfsi_PlaybackHasTraversedForwardEndTime();
      if (!v66)
      {
        goto LABEL_167;
      }

      if (!dword_1EAF169F0)
      {
        goto LABEL_174;
      }

      LODWORD(type.value) = 0;
      v67 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v68 = type.value;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v69 = v68;
      }

      else
      {
        v69 = v68 & 0xFFFFFFFE;
      }

      if (v69)
      {
        LODWORD(time2.value) = 136315138;
        *(&time2.value + 4) = "fpfsi_ShouldStopPlayingItemNow";
LABEL_165:
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      if (!HIDWORD(v106))
      {
        goto LABEL_167;
      }

      time = v117;
      time2 = *(v65 + 480);
      if (CMTimeCompare(&time, &time2) < 0)
      {
        goto LABEL_167;
      }

      if (!dword_1EAF169F0)
      {
        goto LABEL_174;
      }

      LODWORD(type.value) = 0;
      v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v74 = type.value;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v75 = v74;
      }

      else
      {
        v75 = v74 & 0xFFFFFFFE;
      }

      if (v75)
      {
        LODWORD(time2.value) = 136315138;
        *(&time2.value + 4) = "fpfsi_ShouldStopPlayingItemNow";
        goto LABEL_165;
      }
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_174;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v110 + 72), 0);
  v63 = v116;
  if (!v116)
  {
    goto LABEL_133;
  }

  v70 = ValueAtIndex;
  *&time2.value = v114;
  time2.epoch = v115;
  v71 = CMBaseObjectGetDerivedStorage();
  if (*(v63 + 200))
  {
    if (!HIDWORD(v106) || *(v63 + 48) != 1986618469)
    {
      goto LABEL_133;
    }

LABEL_154:
    time = time2;
    v117 = v71[20];
    if (CMTimeCompare(&time, &v117) < 0)
    {
      fpfsi_PlaybackHasTraversedForwardEndTime();
      if (!v72)
      {
        goto LABEL_133;
      }
    }

    if (fpfsi_AllTracksForMediaTypeArePlaying())
    {
      v64 = 1;
      goto LABEL_134;
    }

    fpfs_TransitionFromItemToItem(v4, v70);
LABEL_174:
    fpfs_StopPlayingItem(v110, v4, 0);
    v89 = 0;
    v83 = v112;
  }

  else
  {
    if (HIDWORD(v106))
    {
      goto LABEL_154;
    }

LABEL_133:
    v64 = 0;
LABEL_134:
    fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd(v4);
    if (v64)
    {
      goto LABEL_174;
    }

LABEL_167:
    fpfs_UpdateDimensions(v4, 0);
    v83 = v112;
    if (*(v110 + 872) != 1 && *(v110 + 108) == 1.0)
    {
      if (v9 == 1936684398)
      {
        RenderingNonGapTrackofType = fpfs_FirstRenderingNonGapTrackofType(v4, 1936684398);
        if (RenderingNonGapTrackofType)
        {
          v91 = RenderingNonGapTrackofType;
          v92 = v116;
          if (!FigCFEqual())
          {
            v88 = (v92 + 456);
            fpfs_ReportAudioPlaybackThroughFigLog(v4);
            if (FigAlternateIsAudioOnly(*v88))
            {
              v87 = (v91 + 456);
LABEL_179:
              fpfsi_metricEventPublishVariantChangeOrVariantChangeStartEvent(v4, *v87, *v88, 1, 1);
            }
          }
        }
      }

      else if (v9 == 1986618469)
      {
        v84 = fpfs_FirstRenderingNonGapTrackofType(v4, 1986618469);
        if (v84)
        {
          v85 = v84;
          v86 = v116;
          if (!FigCFEqual())
          {
            v87 = (v85 + 456);
            v88 = (v86 + 456);
            fpfs_ReportVideoPlaybackTimeThroughFigLog(v4);
            goto LABEL_179;
          }
        }
      }
    }

    fpfsi_SetupSkipBitrateRangeFilter(v4, v76, v77, v78, v79, v80, v81, v82, v98, cf, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
    v89 = 1;
  }

  fpfs_PostHasEnabledTrackTypeNotification(v111, v4);
  if (v89)
  {
    if (v116)
    {
      if (!*(v116 + 200))
      {
        v93 = *(v116 + 196);
        if (((*(v83 + 1072) >> v93) & 1) != 0 && !*(v83 + 471))
        {
          v94 = *(v83 + 1024);
          if (v94)
          {
            while (v94 == v116 || *(v94 + 196) != v93)
            {
              v94 = *(v94 + 24);
              if (!v94)
              {
                goto LABEL_191;
              }
            }
          }

          else
          {
LABEL_191:
            fpfs_StopPlaybackByStalledTrack(v116, 3);
          }
        }
      }
    }
  }
}

uint64_t fpfs_AbandonSyncAttempt(uint64_t a1)
{
  v96 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v81, 0, sizeof(v81));
  memset(&v80, 0, sizeof(v80));
  v78 = 0uLL;
  *&v79 = 0;
  fpfs_GetTime(DerivedStorage, &v78);
  *&v76.value = v78;
  v76.epoch = v79;
  HIBYTE(v75) = 0;
  if (*(DerivedStorage + 1680) && fpfsi_TrialSwitchDownInProgress(DerivedStorage))
  {
    fpfs_CompleteTrialSwitch(*(a1 + 16), a1, &v75 + 3, v4, v5, v6, v7, v8, v63, SBYTE2(v63), BYTE3(v63), SHIDWORD(v63), v64, v65, v66, v68, v69, v70, v72, v73.value, *&v73.timescale, v73.epoch, SHIDWORD(v73.epoch), v74, v75, v76.value, SHIDWORD(v76.value), *&v76.timescale, v76.epoch, v77, v78.n128_i64[0], v78.n128_i64[1], v79, v80.value, *&v80.timescale, v80.epoch, v81.value, *&v81.timescale, v81.epoch, lhs.value, *&lhs.timescale, lhs.epoch, v83, v84[0], v84[1], v84[2], v84[3], v85, v86, *(&v86 + 1), v87, time.value, *&time.timescale, time.epoch, v89, v90, v91, v92, v93, v94, v95);
  }

  v9 = *(a1 + 48);
  if (v9 == 1986618469)
  {
    if (!*(a1 + 199))
    {
      *(a1 + 201) = 1;
    }

    if (*(a1 + 200))
    {
      goto LABEL_100;
    }
  }

  else
  {
    *(a1 + 201) = 1;
    if (*(a1 + 200))
    {
LABEL_100:
      *&time.value = v78;
      time.epoch = v79;
      *&lhs.value = v78;
      lhs.epoch = v79;
      v73 = **&MEMORY[0x1E6960C70];
      return fpfs_StartTrackPlaying(DerivedStorage);
    }

    if (v9 == 1936684398)
    {
      fpfs_EnsureRenderChainForTrack(*DerivedStorage, a1, 1);
      if (*(a1 + 112))
      {
        for (i = *(CMBaseObjectGetDerivedStorage() + 1024); i; i = *(i + 24))
        {
          if (*(i + 48) == 1936684398 && *(i + 112))
          {
            break;
          }
        }

        if (i == a1)
        {
          if (dword_1EAF169F0)
          {
            LODWORD(v73.value) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v28 = fpfs_SetTimebaseOnTrack();
          if (v28)
          {
            goto LABEL_94;
          }

          FigBaseObject = FigRenderPipelineGetFigBaseObject(*(*(a1 + 112) + 32));
          v62 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v62)
          {
            v44 = 4294954514;
            goto LABEL_98;
          }

          v28 = v62(FigBaseObject, @"IsTimebaseStarter", *MEMORY[0x1E695E4D0]);
          if (v28)
          {
            goto LABEL_94;
          }
        }
      }
    }
  }

  if (dword_1EAF169F0)
  {
    LODWORD(v73.value) = 0;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = *(DerivedStorage + 840);
  if (v11 == 0.0 || HIBYTE(v75) != 0)
  {
    if (v11 != 0.0)
    {
      goto LABEL_53;
    }

LABEL_54:
    v14 = 0;
    goto LABEL_55;
  }

  v13 = *(DerivedStorage + 1024);
  if (!v13)
  {
LABEL_141:
    v28 = fpfsi_pauseItem(v2);
    if (v28)
    {
      goto LABEL_94;
    }

    v14 = 1;
LABEL_55:
    if ((*(a1 + 156) & 1) == 0)
    {
      v29 = *(DerivedStorage + 1024);
      if (v29)
      {
        while (*(v29 + 80) != *(a1 + 80) || *(v29 + 472) || (*(v29 + 156) & 0x1D) != 1)
        {
          v29 = *(v29 + 24);
          if (!v29)
          {
            goto LABEL_61;
          }
        }

        *&time.value = *(v29 + 144);
        v30 = *(v29 + 160);
      }

      else
      {
LABEL_61:
        *&time.value = *MEMORY[0x1E6960C70];
        v30 = *(MEMORY[0x1E6960C70] + 16);
      }

      time.epoch = v30;
      *(a1 + 144) = *&time.value;
      *(a1 + 160) = v30;
    }

    fpfs_GetTime(DerivedStorage, &time);
    *&v79 = time.epoch;
    epoch = time.epoch;
    v78 = *&time.value;
    v32 = *&time.value;
    time = v76;
    *&lhs.value = v32;
    lhs.epoch = epoch;
    if (CMTimeCompare(&time, &lhs) >= 1)
    {
      time = v76;
      fpfs_JumpToTime(v2, &time, 0);
      v78 = *&v76.value;
      *&v79 = v76.epoch;
    }

    if (!v14)
    {
      if (*(DerivedStorage + 2816) > *(DerivedStorage + 2820))
      {
        *(DerivedStorage + 2312) = 1;
        v39 = *(a1 + 48);
        if (v39 == 1986618469)
        {
          *(DerivedStorage + 2849) = 1;
        }

        else if (v39 == 1936684398)
        {
          *(DerivedStorage + 2848) = 1;
        }

        v48 = *(DerivedStorage + 1024);
        if (v48)
        {
          v49 = *(a1 + 80);
          do
          {
            if (v49 == *(v48 + 80) && *(v48 + 168) == 1)
            {
              v50 = *(v48 + 48);
              if (v50 == 1986618469)
              {
                *(DerivedStorage + 2849) = 1;
              }

              else if (v50 == 1936684398)
              {
                *(DerivedStorage + 2848) = 1;
              }
            }

            v48 = *(v48 + 24);
          }

          while (v48);
        }

        fpfsi_RTCReportingReportVariantSwitchComplete(v2, 1u);
      }

      v44 = *(DerivedStorage + 1024);
      if (!v44)
      {
LABEL_97:
        CMBaseObjectGetDerivedStorage();
        result = fpfs_FlowControlPump(DerivedStorage, 0, 1, 255);
        if (v44)
        {
          goto LABEL_98;
        }

        return result;
      }

      v51 = *(DerivedStorage + 1024);
      do
      {
        if (*(v51 + 168) == 6 && *(v51 + 80) == *(a1 + 80) && !*(v51 + 200))
        {
          *&time.value = v78;
          time.epoch = v79;
          lhs = **&MEMORY[0x1E6960C88];
          started = fpfs_StartTrackPlaying(DerivedStorage);
          if (started == -16042)
          {
            v44 = 0;
          }

          else
          {
            v44 = started;
          }

          goto LABEL_97;
        }

        v51 = *(v51 + 24);
      }

      while (v51);
      do
      {
        if (!*(DerivedStorage + 1024))
        {
          goto LABEL_96;
        }

        v52 = v44;
        v44 = *(v44 + 24);
        if (*(v52 + 196) == *(a1 + 196) && *(v52 + 80) <= *(a1 + 80) && *(v52 + 64) != *(a1 + 64))
        {
          fpfs_DeleteTrack(v2, v52);
        }
      }

      while (v44);
      v53 = *(DerivedStorage + 1024);
      if (v53)
      {
        while (*(DerivedStorage + 1024))
        {
          v54 = v53;
          v53 = *(v53 + 24);
          if (*(v54 + 64) == *(a1 + 64) && *(v54 + 168) != 6)
          {
            v55 = *(v54 + 48);
            if (v55 == 1986618469)
            {
              v57 = *(v54 + 280);
              v56 = (DerivedStorage + 832);
              if (v57)
              {
                CFRelease(v57);
                *(v54 + 280) = 0;
                v56 = (DerivedStorage + 832);
              }

LABEL_135:
              if (*v56)
              {
                fpfs_FlushPrimaryAndAuxRenderChains(*v56, 1);
              }
            }

            else if (v55 == 1936684398)
            {
              *&time.value = v78;
              time.epoch = v79;
              fpfs_TrimAudioTrack(v54, &time);
              v56 = (DerivedStorage + 824);
              goto LABEL_135;
            }

            fpfs_GetTime(DerivedStorage, &time);
            *(v54 + 208) = time;
            fpfs_ChangeTrackState(v54, 2);
          }

          if (!v53)
          {
            break;
          }

          continue;
        }
      }

LABEL_96:
      v44 = 0;
      goto LABEL_97;
    }

    if (!dword_1EAF169F0)
    {
LABEL_83:
      v40 = *(DerivedStorage + 1024);
      if (v40)
      {
        v41 = MEMORY[0x1E6960C70];
        while (1)
        {
          v42 = *(v40 + 24);
          if (*(v40 + 80) == *(a1 + 80) && *(v40 + 196) == *(a1 + 196))
          {
            v43 = *(v40 + 280);
            if (v43)
            {
              CFRelease(v43);
              *(v40 + 280) = 0;
            }

            if ((*(v40 + 168) | 4) == 5)
            {
              *&time.value = v78;
              time.epoch = v79;
              lhs = *v41;
              v28 = fpfs_StartTrackPlaying(DerivedStorage);
              if (v28)
              {
                goto LABEL_94;
              }
            }
          }

          if (v42)
          {
            v40 = v42;
            if (*(DerivedStorage + 1024))
            {
              continue;
            }
          }

          break;
        }
      }

      fpfs_CheckPrebufferedLevels(&time, v2, 0, -1, 0);
      v45 = *DerivedStorage;
      time = **&MEMORY[0x1E6960C70];
      lhs = time;
      fpfs_setRateInternal(v45, v2, &time, &lhs);
      goto LABEL_96;
    }

    LODWORD(v73.value) = 0;
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = v73.value;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v35 = value;
    }

    else
    {
      v35 = value & 0xFFFFFFFE;
    }

    if (!v35)
    {
LABEL_82:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_83;
    }

    v36 = *DerivedStorage;
    if (*DerivedStorage)
    {
      v37 = (CMBaseObjectGetDerivedStorage() + 888);
      if (v2)
      {
LABEL_73:
        v38 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_81:
        LODWORD(lhs.value) = 136316162;
        *(&lhs.value + 4) = "fpfs_AbandonSyncAttempt";
        LOWORD(lhs.flags) = 2048;
        *(&lhs.flags + 2) = v36;
        HIWORD(lhs.epoch) = 2082;
        v83 = v37;
        LOWORD(v84[0]) = 2048;
        *(v84 + 2) = v2;
        WORD1(v84[1]) = 2082;
        *(&v84[1] + 4) = v38;
        _os_log_send_and_compose_impl();
        goto LABEL_82;
      }
    }

    else
    {
      v37 = "";
      if (v2)
      {
        goto LABEL_73;
      }
    }

    v38 = "";
    goto LABEL_81;
  }

  v14 = 1;
  do
  {
    if (*(v13 + 80) == *(a1 + 80) && *(v13 + 196) == *(a1 + 196) && (*(v13 + 168) | 4) == 5)
    {
      v15 = *(v13 + 48);
      v16 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (!v16)
      {
        goto LABEL_31;
      }

      while (*(v16 + 48) != v15 || !*(v16 + 112))
      {
        v16 = *(v16 + 24);
        if (!v16)
        {
          goto LABEL_31;
        }
      }

      if (*(v16 + 32) >= *(v13 + 32) || *(v16 + 168) != 6)
      {
LABEL_31:
        Head = CMBufferQueueGetHead(*(v13 + 88));
        if (!Head)
        {
          goto LABEL_42;
        }

        CMSampleBufferGetOutputPresentationTimeStamp(&v81, Head);
        lhs = v81;
        fpfs_GetTrackStartupQueueDuration(v13, &lhs, &time);
        lhs = v81;
        CMTimeAdd(&v80, &lhs, &time);
        time = v81;
        *&lhs.value = v78;
        lhs.epoch = v79;
        if (CMTimeCompare(&time, &lhs) >= 1)
        {
          time = v76;
          lhs = v81;
          CMTimeMaximum(&v76, &time, &lhs);
        }

        CMTimeMake(&lhs, 1, 1);
        v73 = v76;
        CMTimeAdd(&time, &v73, &lhs);
        lhs = v80;
        if (CMTimeCompare(&lhs, &time) < 0)
        {
          if (!dword_1EAF169F0)
          {
LABEL_42:
            v14 = 0;
            goto LABEL_50;
          }

          LODWORD(v73.value) = 0;
          v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v19 = v73.value;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v19;
          }

          else
          {
            v20 = v19 & 0xFFFFFFFE;
          }

          if (v20)
          {
            v71 = v2;
            v21 = *DerivedStorage;
            if (*DerivedStorage)
            {
              v22 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v22 = "";
            }

            v67 = v22;
            v23 = *(v13 + 16);
            if (v23)
            {
              v24 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v24 = "";
            }

            *&time.value = v78;
            time.epoch = v79;
            Seconds = CMTimeGetSeconds(&time);
            time = v81;
            v26 = CMTimeGetSeconds(&time);
            time = v80;
            v27 = CMTimeGetSeconds(&time);
            LODWORD(lhs.value) = 136316930;
            *(&lhs.value + 4) = "fpfs_AbandonSyncAttempt";
            LOWORD(lhs.flags) = 2048;
            *(&lhs.flags + 2) = v21;
            HIWORD(lhs.epoch) = 2082;
            v83 = v67;
            LOWORD(v84[0]) = 2048;
            *(v84 + 2) = v23;
            WORD1(v84[1]) = 2082;
            *(&v84[1] + 4) = v24;
            WORD2(v84[2]) = 2048;
            *(&v84[2] + 6) = Seconds;
            HIWORD(v84[3]) = 2048;
            v85 = *&v26;
            LOWORD(v86) = 2048;
            *(&v86 + 2) = v27;
            _os_log_send_and_compose_impl();
            v2 = v71;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v14 = 0;
        }
      }
    }

LABEL_50:
    v13 = *(v13 + 24);
  }

  while (v13);
  if (*(DerivedStorage + 840) == 0.0)
  {
    goto LABEL_55;
  }

  if (v14)
  {
    goto LABEL_141;
  }

LABEL_53:
  v28 = fpfs_StopPlaybackByStalledTrack(a1, 2);
  if (!v28)
  {
    goto LABEL_54;
  }

LABEL_94:
  v44 = v28;
LABEL_98:
  v47 = CMBaseObjectGetDerivedStorage();
  return fpfs_StopPlayingItemWithOSStatus(v47, v2, v44);
}

uint64_t fpfs_PerformInitialResolveOfAllWaitingTracks(const __CFArray *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  Next = fpfs_getNext(v3, *(v3 + 80));
  v5 = Next;
  v6 = *(v3 + 80);
  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7 && Next == a1;
  if (!v8 || *(DerivedStorage + 2472))
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = CMBaseObjectGetDerivedStorage();
  v12 = CMBaseObjectGetDerivedStorage();
  v20 = *MEMORY[0x1E6960C70];
  *&v50.value = *MEMORY[0x1E6960C70];
  v13 = *(MEMORY[0x1E6960C70] + 16);
  v50.epoch = v13;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  if (fpfsi_IsEligibleForGaplessTransition())
  {
    fpfs_OkayToAttemptGapless(v6, a1, &v45, &v39, &v50, v14, v15, v16, v20, *(&v20 + 1), rhs.value, *&rhs.timescale, rhs.epoch, v23, lhs.value, *&lhs.timescale, lhs.epoch, v25, v26.value, *&v26.timescale, v26.epoch, v27.value, *&v27.timescale, v27.epoch, v28.value, *&v28.timescale, v28.epoch, v29, v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, v34, *v35, *&v35[8], *&v35[24], *&v35[40], v36, *(&v36 + 1), v37, v38, v39, *(&v39 + 1), v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44);
    if (v17)
    {
      HIBYTE(v38) = 0;
      LODWORD(v38) = 0;
      result = fpfs_EstablishTimebase(a1);
      if (result)
      {
        *(DerivedStorage + 2472) = 0;
        return result;
      }

      *&v35[32] = v47;
      v36 = v48;
      v37 = v49;
      *v35 = v45;
      *&v35[16] = v46;
      v32 = v41;
      v33 = v42;
      *&v34 = v43;
      v30 = v39;
      v31 = v40;
      fpfs_AreItemsEligibleForGaplessTransition(v6, v35, a1, &v30, &v38, &v38 + 7);
      if (v38 == 2)
      {
        v19 = 0;
        v9 = 0;
      }

      else if (v38 == 1)
      {
        *v35 = v21;
        *&v35[16] = v13;
        v30 = v21;
        *&v31 = v13;
        *&v28.value = v21;
        v28.epoch = v13;
        lhs = v50;
        fpfp_GetTransitionTimebaseStartTime(v11, v12, &v45, &v39, &lhs, HIBYTE(v38), &v27, &v26, v35);
        fpfs_GetItemBufferedDuration(a1);
        fpfs_GetNextTimeToPlay(v12, 0, &lhs);
        *&rhs.value = v30;
        rhs.epoch = v31;
        CMTimeAdd(&v28, &lhs, &rhs);
        lhs = v28;
        rhs = *v35;
        v18 = CMTimeCompare(&lhs, &rhs);
        v19 = v18 > 0;
        v9 = v18 < 1;
      }

      else
      {
        v19 = 0;
        v9 = 1;
      }

      goto LABEL_29;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v19 = 0;
LABEL_29:
  *(DerivedStorage + 2472) = v19;
LABEL_11:
  if (*(v3 + 80) == a1)
  {
    if (v9)
    {
      return 0;
    }

    return fpfs_ResolveAllWaitingTracks(a1);
  }

  result = 0;
  if (v5 == a1 && !v9)
  {
    return fpfs_ResolveAllWaitingTracks(a1);
  }

  return result;
}

BOOL fpfs_GetItemLivingTrack(uint64_t a1, uint64_t a2, void *a3)
{
  i = *(a1 + 1024);
  if (i)
  {
    while (*(i + 32) != a2)
    {
      i = *(i + 24);
      if (!i)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    for (i = *(a1 + 1040); i; i = *(i + 24))
    {
      if (*(i + 32) == a2)
      {
        break;
      }
    }
  }

  *a3 = i;
  return i != 0;
}

uint64_t fpfs_FirstRenderingNonGapTrackofType(uint64_t a1, int a2)
{
  for (result = *(CMBaseObjectGetDerivedStorage() + 1024); result; result = *(result + 24))
  {
    if (*(result + 48) == a2 && *(result + 112) && !*(result + 472))
    {
      break;
    }
  }

  return result;
}

void fpfs_ReportVideoPlaybackTimeThroughFigLog(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  RenderingNonGapTrackofType = fpfs_FirstRenderingNonGapTrackofType(a1, 1986618469);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (RenderingNonGapTrackofType)
  {
    if (*(RenderingNonGapTrackofType + 456))
    {
      if (!*(RenderingNonGapTrackofType + 200) && !*(RenderingNonGapTrackofType + 472))
      {
        v5 = 0uLL;
        v6 = 0;
        fpfs_GetTime(DerivedStorage, &v5);
        time1 = *(RenderingNonGapTrackofType + 232);
        *&time2.value = v5;
        time2.epoch = v6;
        if (CMTimeCompare(&time1, &time2) >= 1)
        {
          DescriptionString = FigAlternateCreateDescriptionString(*(RenderingNonGapTrackofType + 456));
          if (dword_1EAF169F0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (DescriptionString)
          {
            CFRelease(DescriptionString);
          }
        }
      }
    }
  }
}

void fpfs_ReportAudioPlaybackThroughFigLog(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  theArray = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  RenderingNonGapTrackofType = fpfs_FirstRenderingNonGapTrackofType(a1, 1936684398);
  if (!RenderingNonGapTrackofType)
  {
    return;
  }

  v4 = RenderingNonGapTrackofType;
  v5 = *(RenderingNonGapTrackofType + 56);
  v33 = 0;
  LODWORD(v31) = fpfsi_GetSpatializationConfiguration();
  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(v5);
  *v27 = RichestDecodableFormat;
  if (!RichestDecodableFormat)
  {
    RichestDecodableFormat = CMAudioFormatDescriptionGetStreamBasicDescription(v5);
  }

  theDict = RichestDecodableFormat;
  CurrentAudioPersistentIDFromMediaOption = fpfsi_GetCurrentAudioPersistentIDFromMediaOption();
  SpecializedAudioChannelUsage = FigAlternateGetSpecializedAudioChannelUsage(*(v4 + 456), CurrentAudioPersistentIDFromMediaOption);
  HIDWORD(v30) = FPSupport_GetAudioFormatDescriptionSpatializationEligibility(v5, &v33);
  if (*(DerivedStorage + 795))
  {
    v12 = 1836019574;
  }

  else
  {
    v12 = 1936684398;
  }

  fpfsi_CreateAudioSpatialSourcesArray(a1, v12, &theArray, 0, 0, v9, v10, v11, v18, v19, v20, v21, v22, v23, v24, v25, v27[0], v27[1], theDict, v5, SBYTE2(v5), SBYTE3(v5), SHIDWORD(v5), v30, v31, v32, v33, theArray, v35, v36, v37, v38, v39, v40, v41, v42);
  v13 = 0;
  v14 = 0;
  while (1)
  {
    Count = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    if (v13 >= Count)
    {
      break;
    }

    LODWORD(v35) = 1064530531;
    FigCFArrayGetInt32AtIndex();
    if (v35 == 1836020596)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14;
    }

    if (v35 != 1835824233)
    {
      v14 = v16;
    }

    ++v13;
  }

  if (SpecializedAudioChannelUsage != 1)
  {
    FigAlternateGetStringFromSpecializedChannelUsage(SpecializedAudioChannelUsage);
  }

  if (theDicta)
  {
    if (!dword_1EAF169F0)
    {
      goto LABEL_26;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  }

  else
  {
    if (!dword_1EAF169F0)
    {
      goto LABEL_26;
    }

    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_26:
  if (theArray)
  {
    CFRelease(theArray);
  }
}