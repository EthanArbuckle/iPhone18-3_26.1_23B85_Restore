void fpfsi_RTCReportingReportDesiredRateChange(double a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_523();
  if (v2 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_730(100.0);
    v4 = OUTLINED_FUNCTION_235();
    v5(v4);
  }

  if (a1 != 0.0 && !*(v1 + 2617))
  {
    if (*(v1 + 2616))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v7 = *(v1 + 3016);
      *(v1 + 2617) = 1;
      if (*(v1 + 2568))
      {
        v8 = Current;
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          OUTLINED_FUNCTION_492(v8 - v7, 1000.0);
          v9 = OUTLINED_FUNCTION_177();

          v10(v9);
        }
      }
    }
  }
}

uint64_t fpfs_ShouldTryToGrab4kPlaybackBaton(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_251();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(v2 + 905) || *(v2 + 80) != a2 || !*(DerivedStorage + 1680))
  {
    return 0;
  }

  result = CelestialShouldLimit4kConcurrentPlayback();
  if (!result)
  {
    return result;
  }

  v6 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_260(v6);
  if (v8)
  {
    return 0;
  }

  result = fpfs_CanRenderVideo(v7, 0);
  if (result)
  {
    result = fpfsi_isPlaying4k();
    if (result)
    {
      return *(v2 + 864) == 0;
    }
  }

  return result;
}

void fpfs_scheduleReverseEndTimeTimer(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_260(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_29();
    if (v6)
    {
      if (*(v1 + 576) && !*(v1 + 530))
      {
        fpfsi_RemoveAndClearTimer((v1 + 2360));
        OUTLINED_FUNCTION_315();
        FPSTimelineConverterL3TimeToL2(v10, &v11);
        if (fpfs_isPlaybackBeyondReverseEndTime())
        {
          v9 = CMBaseObjectGetDerivedStorage();
          fpfs_StopPlayingItem(v9, a1, 0);
        }

        else
        {
          fpfsi_CreateTimebaseTimer(a1, *(v1 + 600), *(v1 + 16), &fpfs_reverseEndTimerProc, 0, (v1 + 2360));
          if (*(v1 + 2360))
          {
            v10[0] = v11;
            OUTLINED_FUNCTION_385();
            FigSpeedRampTimerScheduleForL2Time(v7, v8, 0);
          }

          else
          {
            OUTLINED_FUNCTION_376();
            FigSignalErrorAtGM();
          }
        }
      }
    }
  }
}

void fpfs_EnsureItemTracksStatusSnapshotTimer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_391(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_230();
  fpfs_GetNextTimeToPlay(v1, 0, v2);
  if (BYTE12(v33))
  {
    OUTLINED_FUNCTION_665(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31.n128_i64[0], v31.n128_i64[1], v32, v33);
    OUTLINED_FUNCTION_799();
    v19 = OUTLINED_FUNCTION_175(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v30, v31.n128_i8[0]);
    CMTimeAdd(v21, v19, v20);
    if (*(DerivedStorage + 3456) || !OUTLINED_FUNCTION_815(0, *(DerivedStorage + 600), *(DerivedStorage + 16)))
    {
      OUTLINED_FUNCTION_712();
      FigSpeedRampTimerScheduleForL2Time(v22, &v31, 1u);
    }
  }
}

uint64_t fpfs_EnterBestEffortTrickplayMode(float a1)
{
  OUTLINED_FUNCTION_261();
  v73 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_104(MEMORY[0x1E6960C70]);
  if (a1 == 0.0)
  {
    return 0;
  }

  v4 = v3;
  if (!*(v3 + 912))
  {
    return 0;
  }

  fpfsi_getSeekableTimeRange(&time);
  value = time.value;
  flags = time.flags;
  timescale = time.timescale;
  if ((time.flags & 1) == 0 || (v68 & 0x100000000) == 0 || v69 || v67 < 0)
  {
    OUTLINED_FUNCTION_243();
    return FigSignalErrorAtGM();
  }

  epoch = time.epoch;
  time.timescale = timescale;
  v16 = OUTLINED_FUNCTION_175(v5, v6, v7, v8, v9, v10, v11, v12, v67, v68, 0, v62, value);
  CMTimeAdd(v18, v16, v17);
  fpfs_GetTime(v4, &time);
  v27 = OUTLINED_FUNCTION_175(v19, v20, v21, v22, v23, v24, v25, v26, value, __SPAIR64__(flags, timescale), epoch, v63, time.value);
  v29 = CMTimeCompare(v27, v28);
  if (a1 < 0.0 && v29 < 1)
  {
    return 0;
  }

  fpfs_GetTime(v4, &time);
  OUTLINED_FUNCTION_662(v31, v32, v33, v34, v35, v36, v37, v38, v56, v58, v60, v64, time.value, *&time.timescale, time.epoch, v67, v68, v69, v70);
  v47 = OUTLINED_FUNCTION_175(v39, v40, v41, v42, v43, v44, v45, v46, v57, v59, v61, v65, time.value);
  v49 = CMTimeCompare(v47, v48);
  if (a1 > 0.0 && (v49 & 0x80000000) == 0)
  {
    return 0;
  }

  fpfsi_pauseItem(v1);
  v50 = (v4 + 2992);
  v51 = *(v4 + 2992);
  if (!v51)
  {
    FigGetAllocatorForMedia();
    CMClockGetHostTimeClock();
    v52 = OUTLINED_FUNCTION_188();
    v14 = CMTimebaseCreateWithSourceClock(v52, v53, v54);
    if (v14)
    {
      return v14;
    }

    v51 = *v50;
  }

  fpfs_GetTime(v4, &time);
  v14 = CMTimebaseSetTime(v51, &time);
  if (!v14)
  {
    v14 = CMTimebaseSetRate(*v50, a1);
    if (!v14)
    {
      *(v4 + 2944) = FigGetUpTimeNanoseconds();
      return fpfsi_HandleNextBestEffortTrickplayModeSeek();
    }
  }

  return v14;
}

void *fpfsi_EndBestEffortSeekTrickplayMode(uint64_t a1)
{
  v2 = *(a1 + 2992);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 2992) = 0;
  }

  *(a1 + 2944) = 0u;
  v3 = MEMORY[0x1E6960C70];
  v4 = OUTLINED_FUNCTION_298();
  fpfsi_setLastSeekTimeSet(v4, v5);
  *(a1 + 1472) = *v3;
  *(a1 + 1488) = *(v3 + 16);
  for (result = *(a1 + 2912); result; result = *(a1 + 2912))
  {
    v7 = *result;
    v8 = result[1];
    v9 = (*result + 8);
    if (!*result)
    {
      v9 = (a1 + 2920);
    }

    *v9 = v8;
    *v8 = v7;
    --*(a1 + 2984);
    free(result);
  }

  return result;
}

uint64_t fpfsi_HandleNextBestEffortTrickplayModeSeek()
{
  v84 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Next = fpfs_getNext(DerivedStorage, 0);
  if (!Next)
  {
    return 0;
  }

  v2 = Next;
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = v3;
  memset(&v72, 0, sizeof(v72));
  if (v3)
  {
    if (!*(v3 + 2992))
    {
      return 0;
    }

    v5 = CMBaseObjectGetDerivedStorage();
    v81.value = *MEMORY[0x1E6960C70];
    v81.timescale = *(MEMORY[0x1E6960C70] + 8);
    v6 = **(*(v5 + 2920) + 8);
    if (v6)
    {
      v81.value = *(v6 + 32);
      v81.timescale = *(v6 + 40);
      v7 = (v6 + 44);
      v8 = (v6 + 48);
    }

    else
    {
      v8 = (MEMORY[0x1E6960C70] + 16);
      v7 = (MEMORY[0x1E6960C70] + 12);
    }

    v9 = *v7;
    if ((*v7 & 0x1D) == 1)
    {
      v10 = *v8;
      OUTLINED_FUNCTION_335();
      v11 = CMTimebaseGetTime(&rhs.start, *(v5 + 2992));
      OUTLINED_FUNCTION_761(v11, v12, v13, v14, v15, v16, v17, v18, v64, v66, v68, v70, 0, 0, 0, v73, *&rhs.start.value);
      v27 = OUTLINED_FUNCTION_738(v19, v20, v21, v22, v23, v24, v25, v26, v65, v67, v69, v71, v72.value, *&v72.timescale, v72.epoch, v73, rhs.start.value, *&rhs.start.timescale, rhs.start.epoch, rhs.duration.value, *&rhs.duration.timescale, rhs.duration.epoch, v81.value, __SPAIR64__(v9, v81.timescale), v10, v76, v77.value);
      CMTimeSubtract(v29, v27, v28);
      Seconds = CMTimeGetSeconds(&time);
      v31 = ((0.2 - fmax(Seconds / CMTimebaseGetRate(*(v5 + 2992)), 0.0)) * 1000000000.0);
      if (v31 >= 1)
      {
        FigRetainProxyRetain();
        v32 = dispatch_time(0, v31);
        dispatch_after_f(v32, *(v4 + 600), *(v4 + 16), &fpfsi_HandleNextBestEffortTrickplayModeSeekDispatch);
        return 0;
      }
    }

    CMTimebaseGetRate(*(v4 + 2992));
    v34 = CMBaseObjectGetDerivedStorage();
    memset(&time, 0, sizeof(time));
    CMTimebaseGetTime(&v77, *(v34 + 2992));
    v35 = CMBaseObjectGetDerivedStorage();
    for (i = v35[364]; i; i = v35[364])
    {
      if (FigGetUpTimeNanoseconds() - (i[2] + i[3]) < 3000000001)
      {
        break;
      }

      v37 = *i;
      v38 = i[1];
      v39 = (*i + 8);
      if (!*i)
      {
        v39 = v35 + 365;
      }

      *v39 = v38;
      *v38 = v37;
      --v35[373];
      free(i);
    }

    v40 = **(v35[365] + 8);
    v41 = 0.0;
    if (v40)
    {
      v42 = 0;
      v43 = 0;
      do
      {
        v43 += *(v40 + 24);
        v44 = v42 + 1;
        v40 = **(*(v40 + 8) + 8);
        if (v40)
        {
          v45 = v42 == 0x7FFFFFFFFFFFFFFELL;
        }

        else
        {
          v45 = 1;
        }

        ++v42;
      }

      while (!v45);
      v41 = (v43 / v44);
    }

    Rate = CMTimebaseGetRate(*(v34 + 2992));
    CMTimeMake(&rhs.start, (v41 * Rate), 1000000000);
    lhs = v77;
    CMTimeAdd(&time, &lhs, &rhs.start);
    OUTLINED_FUNCTION_690();
    fpfsi_getSeekableTimeRange(v47);
    value = rhs.start.value;
    LODWORD(v83) = rhs.start.timescale;
    if ((rhs.start.flags & 1) == 0 || (rhs.duration.flags & 1) == 0 || rhs.duration.epoch || rhs.duration.value < 0)
    {
      OUTLINED_FUNCTION_239();
      v48 = FigSignalErrorAtGM();
      if (v48)
      {
LABEL_33:
        if (v48 << 16)
        {
          v4 = v48;
          fpfs_haltStream(v2, v49, v50, v51, v52, v53, v54, v55, v64, v66, v68, SBYTE2(v68), BYTE3(v68), BYTE4(v68), v70, *&v72.value, v72.epoch, v73, rhs.start.value, *&rhs.start.timescale, *&rhs.start.epoch, *&rhs.duration.timescale, rhs.duration.epoch, lhs.value, *&lhs.timescale, lhs.epoch, v76, v77.value, *&v77.timescale, v77.epoch, v78, time.value, *&time.timescale, time.epoch, v80, v81.value, *&v81.timescale, v81.epoch, value, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
          return v4;
        }

        return 0;
      }
    }

    else
    {
      v81 = time;
      rhs.start.value = value;
      OUTLINED_FUNCTION_775();
      CMTimeClampToRange(&lhs, &v81, &rhs);
      time = lhs;
      v72 = lhs;
    }

    *(v4 + 2944) = FigGetUpTimeNanoseconds();
    *(v4 + 2960) = v72;
    rhs.start = v72;
    OUTLINED_FUNCTION_389(MEMORY[0x1E6960C80]);
    time.epoch = v56;
    OUTLINED_FUNCTION_386(MEMORY[0x1E6960C88]);
    LOBYTE(v68) = 0;
    OUTLINED_FUNCTION_186();
    v48 = fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts(v57, v58, v59, v60, v61, v62, v63, 0, 16843009, 0, v68);
    goto LABEL_33;
  }

  return v4;
}

void fpfs_ItemTracksStatusSnapshotTimerProc()
{
  OUTLINED_FUNCTION_813();
  v212 = *MEMORY[0x1E69E9840];
  fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(v1, &cf, &v192, v2, v3, v4, v5, v6, v85, v90, v95, v100, v105, v114, v119, SBYTE2(v119), BYTE3(v119), HIDWORD(v119), v124, SHIDWORD(v124), *v129, *&v129[4], v134, v139, v144, v149, v154, v159, type, type_8, v170, v173, v178, v183, v186, v189, 0, 0, time.value, *&time.timescale, time.epoch, v195, *v196, *&v196[8], *&v196[16], *&v196[24], v197, v198.value, *&v198.timescale, v198.epoch, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211);
  v7 = v192;
  if (v8)
  {
    Mutable = 0;
    if (v192)
    {
LABEL_35:
      CFRelease(v7);
    }
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v10 = CMBaseObjectGetDerivedStorage();
    v11 = *(DerivedStorage + 1024);
    if (v11)
    {
      v160 = v10;
      Mutable = 0;
      OUTLINED_FUNCTION_340();
      do
      {
        fpfs_isKnownMebxMetadataForRendering(*(v11 + 56));
        if (*(v11 + 64) == *(DerivedStorage + 976 + 16 * *(v11 + 196)))
        {
          OUTLINED_FUNCTION_674();
          if (v14)
          {
            if (!*(v11 + 200) || *(v11 + 48) != v0 && v13)
            {
              if (!Mutable)
              {
                AllocatorForMedia = FigGetAllocatorForMedia();
                Mutable = CFStringCreateMutable(AllocatorForMedia, 0);
              }

              memset(&v198, 0, sizeof(v198));
              FigStreamTrackGetRecentSampleEndTimeForTrack(v11, &v198);
              v16 = *(v11 + 112);
              if (v16 && *(v16 + 40))
              {
                v17 = *(v11 + 48);
                v18 = HIBYTE(v17);
                v19 = BYTE2(v17);
                v20 = BYTE1(v17);
                v21 = v17;
                v0 = *(v11 + 32);
                time = *(v11 + 208);
                Seconds = CMTimeGetSeconds(&time);
                v31 = OUTLINED_FUNCTION_631(v23, v24, v25, v26, v27, v28, v29, v30, v86, v91, v96, v101, v106, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v160, typea, type_8a, v171, v174, v179, v184, v187, v190, v192, cf, *&time.value, time.epoch);
                OUTLINED_FUNCTION_668();
                v40 = OUTLINED_FUNCTION_445(v32, v33, v34, v35, v36, v37, v38, v39, v87, v92, v97, v102, v107, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v161, *(v11 + 208), *(v11 + 216), *(v11 + 224), v175, v180);
                CMTimeSubtract(v42, v40, v41);
                v43 = CMTimeGetSeconds(&time);
                v44 = OUTLINED_FUNCTION_533();
                CMBufferQueueGetFirstPresentationTimeStamp(v45, v44);
                v46 = CMTimeGetSeconds(&time);
                v47 = OUTLINED_FUNCTION_533();
                CMBufferQueueGetEndPresentationTimeStamp(v48, v47);
                v49 = CMTimeGetSeconds(&time);
                v50 = OUTLINED_FUNCTION_533();
                CMBufferQueueGetDuration(v51, v50);
                v52 = CMTimeGetSeconds(&time);
                time = v198;
                v53 = CMTimeGetSeconds(&time);
                v62 = OUTLINED_FUNCTION_631(v54, v55, v56, v57, v58, v59, v60, v61, v88, v93, v98, v103, v108, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v162, typeb, type_8b, v172, v176, v181, v185, v188, v191, v192, cf, *&time.value, time.epoch);
                OUTLINED_FUNCTION_668();
                v71 = OUTLINED_FUNCTION_445(v63, v64, v65, v66, v67, v68, v69, v70, v89, v94, v99, v104, v109, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v163, v198.value, *&v198.timescale, v198.epoch, v177, v182);
                CMTimeSubtract(v73, v71, v72);
                v145 = *&v62;
                v150 = CMTimeGetSeconds(&time);
                v135 = *&v52;
                v140 = *&v53;
                v125 = *&v46;
                v130 = *&v49;
                v115 = *&v31;
                v120 = *&v43;
                v110 = *&Seconds;
                v101 = v21;
                v106 = v0;
                OUTLINED_FUNCTION_340();
                v91 = v19;
                v96 = v20;
                v86 = v18;
                v74 = OUTLINED_FUNCTION_312();
                CFStringAppendFormat(v74, v75, @"\t%c%c%c%c Track %d Total Enqueued: [%.3f->%.3f](dur: %.3f) | inputQueue: [%.3f->%.3f](dur:%.3f) | New: [%.3f->%.3f](dur:%.3f)\n");
                FigStreamTrackUpdateRecentSampleEndTimeForTrack(v11);
              }
            }
          }
        }

        v11 = *(v11 + 24);
      }

      while (v11);
      if (Mutable && dword_1EAF169F0)
      {
        OUTLINED_FUNCTION_795();
        OUTLINED_FUNCTION_432();
        v76 = OUTLINED_FUNCTION_509();
        os_log_type_enabled(v76, typea);
        OUTLINED_FUNCTION_46();
        if (DerivedStorage != -976)
        {
          v77 = cf;
          if (cf)
          {
            v78 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v78 = "";
          }

          v79 = v192;
          if (v192)
          {
            v80 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v80 = "";
          }

          fpfs_GetTime(DerivedStorage, &v198);
          v81 = CMTimeGetSeconds(&v198);
          LODWORD(time.value) = 136316674;
          *(&time.value + 4) = "fpfs_ItemTracksStatusSnapshotTimerProc";
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = v77;
          HIWORD(time.epoch) = 2082;
          v195 = v78;
          *v196 = 2048;
          *&v196[2] = v79;
          *&v196[10] = 2082;
          *&v196[12] = v80;
          *&v196[20] = 2048;
          *&v196[22] = v81;
          *&v196[30] = 2114;
          v197 = Mutable;
          OUTLINED_FUNCTION_72();
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_448();
        }

        OUTLINED_FUNCTION_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      Mutable = 0;
    }

    OUTLINED_FUNCTION_588();
    if (v83 ^ v84 | v14 && v82 >= 0.0 || *(DerivedStorage + 2992))
    {
      v7 = v192;
      fpfs_EnsureItemTracksStatusSnapshotTimer(v192);
    }

    else
    {
      fpfsi_RemoveAndClearTimer((DerivedStorage + 3456));
      v7 = v192;
    }

    fpfs_UnlockWithCaller();
    if (v7)
    {
      goto LABEL_35;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  OUTLINED_FUNCTION_812();
}

void fpfs_CheckItemsPrebuffering(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, int a14, __int16 a15, char a16, os_log_type_t type, int a18, __int16 a19, char a20, char a21, int a22, int a23, __int128 a24, const char *a25, __int128 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  OUTLINED_FUNCTION_416();
  a57 = v58;
  a58 = v59;
  v61 = v60;
  a45 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v63 = CMBaseObjectGetDerivedStorage();
  v64 = v63[122];
  if (v64)
  {
    Count = CFArrayGetCount(v64);
  }

  else
  {
    Count = 0;
  }

  v66 = v63[9];
  if (v66)
  {
    v67 = CFArrayGetCount(v66);
  }

  else
  {
    v67 = 0;
  }

  if (Count < 1)
  {
    v68 = 0;
  }

  else
  {
    v68 = 0;
    for (i = 0; i != Count; ++i)
    {
      if (FigCFArrayGetValueAtIndex())
      {
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_205();
        if (!v71 && !*(v70 + 1896))
        {
          ++v68;
        }
      }
    }
  }

  if (v67 >= 1)
  {
    for (j = 0; j != v67; ++j)
    {
      if (FigCFArrayGetValueAtIndex())
      {
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_205();
        if (!v71 && !*(v73 + 1896))
        {
          ++v68;
        }
      }
    }
  }

  if (v63[10])
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_205();
    if (!v71 && !*(v74 + 1896))
    {
      ++v68;
    }
  }

  v75 = *(DerivedStorage + 976);
  if (v75)
  {
    v76 = CFArrayGetCount(v75);
    v77 = v76 >= 1 && v68 <= 3;
    if (v77)
    {
      v78 = v76;
      v79 = 4 - v68;
      v80 = 1;
      do
      {
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        if (ValueAtIndex)
        {
          v82 = ValueAtIndex;
          CMBaseObjectGetDerivedStorage();
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_205();
          OUTLINED_FUNCTION_132();
          if (v71)
          {
            a21 = 0;
            v83 = OUTLINED_FUNCTION_620();
            if (fpfs_CheckItem(v83, v84))
            {
              CMBaseObjectGetDerivedStorage();
              CMBaseObjectGetDerivedStorage();
              OUTLINED_FUNCTION_205();
              OUTLINED_FUNCTION_132();
              if (v71)
              {
                if (dword_1EAF169F0)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  OUTLINED_FUNCTION_46();
                  if (&unk_1EAF16000)
                  {
                    v86 = "";
                    if (v61)
                    {
                      v86 = (CMBaseObjectGetDerivedStorage() + 888);
                    }

                    CMBaseObjectGetDerivedStorage();
                    a22 = 136316162;
                    OUTLINED_FUNCTION_318();
                    *(&a24 + 6) = v61;
                    HIWORD(a24) = 2082;
                    a25 = v86;
                    LOWORD(a26) = v87;
                    *(&a26 + 2) = v82;
                    WORD5(a26) = 2082;
                    *(&a26 + 12) = v88;
                    OUTLINED_FUNCTION_100();
                    OUTLINED_FUNCTION_30();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_4();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                if (!fpfsi_MakeReadyForInspection(v82, 0, &a21) && a21)
                {
                  fpfsi_NowReadyForInspection();
                }

                fpfs_ResolveAllWaitingTracks(v82);
                OUTLINED_FUNCTION_530(v82);
              }
            }

            else
            {
              FigSignalErrorAtGM();
            }

            --v79;
          }
        }

        v77 = v80++ < v78;
      }

      while (v77 && v79 > 0);
    }
  }

  OUTLINED_FUNCTION_372();
}

void fpfs_needsMoreTimerProc(int a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(a1, &v147, &v148, a4, a5, a6, a7, a8, v113, v119, v125, v132, v138, 0, 0, 0, OS_LOG_TYPE_DEFAULT, 0, v149.value, SHIDWORD(v149.value), v149.timescale, v149.flags, v149.epoch, v150, v151.value, *&v151.timescale, v151.epoch, v152, rhs.value, *&rhs.timescale, rhs.epoch, v154, *v155, v155[8], *&v157[4], *&v157[12], v158, v159, *(&v159 + 1), v160, time.value, *&time.timescale, time.epoch, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, *MEMORY[0x1E69E9840], v176, v177, v178, v179, v180);
  if (!v10)
  {
    v11 = v148;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v13 = v147;
    v14 = *(CMBaseObjectGetDerivedStorage() + 840);
    voucher_adopt();
    OUTLINED_FUNCTION_297();
    v15 = CMBaseObjectGetDerivedStorage();
    if ((*(DerivedStorage + 1652) & 1) == 0)
    {
      goto LABEL_16;
    }

    v16 = v15;
    v8 = (DerivedStorage + 1640);
    v17 = CMBaseObjectGetDerivedStorage();
    memset(&time, 0, sizeof(time));
    fpfs_GetTime(v16, &time);
    v18 = OUTLINED_FUNCTION_755();
    if (v19 == v20)
    {
      OUTLINED_FUNCTION_302();
      CMTimeAdd(v23, v21, v22);
      OUTLINED_FUNCTION_77();
      v32 = OUTLINED_FUNCTION_499(v24, v25, v26, v27, v28, v29, v30, v31, v114, v120, v126, v133, v139, v144, v147, v148, v149.value, *&v149.timescale, v149.epoch, v150, v151.value);
      v34 = CMTimeCompare(v32, v33);
      if (v34 >= 1)
      {
        OUTLINED_FUNCTION_469(v34, v35, v36, v37, v38, v39, v40, v41, v114, v120, v126, v133, v139, v144, v147, v148, v149.value, *&v149.timescale, v149.epoch, v150, v151.value, *&v151.timescale, v151.epoch, v152, v42, rhs.value);
        fpfs_GetTime(v16, &rhs);
        OUTLINED_FUNCTION_77();
        v51 = OUTLINED_FUNCTION_499(v43, v44, v45, v46, v47, v48, v49, v50, v115, v121, v127, v134, v140, v145, v147, v148, v149.value, *&v149.timescale, v149.epoch, v150, v151.value);
        v53 = CMTimeCompare(v51, v52) > 0;
LABEL_10:
        if (v53)
        {
          *(DerivedStorage + 1616) = *v8;
          *(DerivedStorage + 1632) = *(DerivedStorage + 1656);
          OUTLINED_FUNCTION_800(MEMORY[0x1E6960C70]);
          if (dword_1EAF169F0)
          {
            LODWORD(v151.value) = 0;
            LOBYTE(v149.value) = 0;
            v86 = OUTLINED_FUNCTION_638();
            OUTLINED_FUNCTION_306(v86, v87, v88, v89, v90, v91, v92, v93, v116, v122, v128, v135, v13, v144, v147, v148, v149.value, *&v149.timescale, v149.epoch, v150, v151.value);
            OUTLINED_FUNCTION_37();
            if (v9)
            {
              if (*v16)
              {
                v94 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v94 = "";
              }

              v131 = v94;
              v97 = (DerivedStorage + 1616);
              if (v11)
              {
                v98 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v98 = "";
              }

              fpfs_GetTime(v16, &time);
              Seconds = CMTimeGetSeconds(&time);
              if (v16 == DerivedStorage)
              {
                v100 = "needsMoreTimer";
              }

              else
              {
                v100 = "testTimer";
              }

              time = *v97;
              CMTimeGetSeconds(&time);
              LODWORD(rhs.value) = 136316930;
              OUTLINED_FUNCTION_468();
              v154 = v131;
              *v155 = v101;
              *&v155[2] = v11;
              v156 = v102;
              *v157 = v98;
              *&v157[8] = v101;
              *&v157[10] = Seconds;
              *&v157[18] = v102;
              v158 = v100;
              LOWORD(v159) = v101;
              *(&v159 + 2) = v103;
              OUTLINED_FUNCTION_145();
              OUTLINED_FUNCTION_27();
              OUTLINED_FUNCTION_200();
              _os_log_send_and_compose_impl();
              OUTLINED_FUNCTION_776();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_449();
            v13 = v143;
          }

LABEL_46:

          fpfs_UnlockAndPostNotificationsWithCaller(v13);
          CFRelease(v11);
          CFRelease(v13);
          return;
        }

LABEL_16:
        v95 = MEMORY[0x1E6960C70];
        *(DerivedStorage + 1616) = *MEMORY[0x1E6960C70];
        *(DerivedStorage + 1632) = *(v95 + 16);
        memset(&v151, 0, sizeof(v151));
        OUTLINED_FUNCTION_335();
        fpfs_GetTime(DerivedStorage, &v149);
        if (dword_1EAF169F0)
        {
          OUTLINED_FUNCTION_427();
          v96 = OUTLINED_FUNCTION_371();
          os_log_type_enabled(v96, BYTE3(v144));
          OUTLINED_FUNCTION_28();
          if (v8)
          {
            if (v13)
            {
              v104 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v104 = "";
            }

            if (v11)
            {
              v105 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v105 = "";
            }

            time = v149;
            CMTimeGetSeconds(&time);
            LODWORD(rhs.value) = 136316418;
            OUTLINED_FUNCTION_468();
            v154 = v104;
            *v155 = v106;
            *&v155[2] = v11;
            v156 = v107;
            *v157 = v105;
            *&v157[8] = v106;
            *&v157[10] = v108;
            OUTLINED_FUNCTION_127();
            OUTLINED_FUNCTION_23();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (*(DerivedStorage + 912))
        {
          v109 = OUTLINED_FUNCTION_198();
          fpfs_CheckPrebufferedLevels(v111, v109, v110, -1, 1);
        }

        v112 = *(DerivedStorage + 1680);
        if (v112 && FigAlternateIsIFrameOnly(v112) && *(DerivedStorage + 1541))
        {
          if (*(DerivedStorage + 1196))
          {
            time = *(DerivedStorage + 1184);
            rhs = *(DerivedStorage + 1160);
            CMTimeSubtract(&v151, &time, &rhs);
          }

          else
          {
            v151 = *(DerivedStorage + 1496);
          }

          fpfs_CurrentSubStreamBufferedDuration(*(DerivedStorage + 1088), &time);
          rhs = v151;
          fpfs_RequestNextIFrameStepUnlocked(v11, &rhs, &time);
        }

        fpfsi_TrimCachedSamplesFromItem();
        goto LABEL_46;
      }

      v18 = *(v17 + 108);
    }

    if (v18 >= 0.0)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_302();
    CMTimeSubtract(v56, v54, v55);
    OUTLINED_FUNCTION_77();
    v65 = OUTLINED_FUNCTION_499(v57, v58, v59, v60, v61, v62, v63, v64, v114, v120, v126, v133, v139, v144, v147, v148, v149.value, *&v149.timescale, v149.epoch, v150, v151.value);
    v67 = CMTimeCompare(v65, v66);
    if ((v67 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_469(v67, v68, v69, v70, v71, v72, v73, v74, v117, v123, v129, v136, v141, v144, v147, v148, v149.value, *&v149.timescale, v149.epoch, v150, v151.value, *&v151.timescale, v151.epoch, v152, v75, rhs.value);
    fpfs_GetTime(v16, &rhs);
    OUTLINED_FUNCTION_77();
    v84 = OUTLINED_FUNCTION_499(v76, v77, v78, v79, v80, v81, v82, v83, v118, v124, v130, v137, v142, v146, v147, v148, v149.value, *&v149.timescale, v149.epoch, v150, v151.value);
    v53 = CMTimeCompare(v84, v85) >> 31;
    goto LABEL_10;
  }
}

uint64_t fpfs_CreateItemAndTrackNumberPayload(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  values[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a2 + 32);
  }

  else
  {
    v4 = -1;
  }

  v10 = v4;
  if (!a1)
  {
    return 0;
  }

  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &v10);
  if (!v5)
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM();
    return 0;
  }

  v6 = v5;
  values[0] = *(CMBaseObjectGetDerivedStorage() + 16);
  values[1] = v6;
  AllocatorForMedia = FigGetAllocatorForMedia();
  CFArrayCreate(AllocatorForMedia, values, 2, MEMORY[0x1E695E9C0]);
  v8 = OUTLINED_FUNCTION_519();
  CFRelease(v8);
  return v3;
}

uint64_t fpfs_RemoveFromPrebufferArrayGuts()
{
  OUTLINED_FUNCTION_261();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_199();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_294(DerivedStorage);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_224();
  if (!*(v1 + 52))
  {
    if (v2)
    {
      if (!fpfs_CheckItem(v0, v2))
      {
        goto LABEL_13;
      }

      if (!*(v1 + 976))
      {
        goto LABEL_10;
      }

      if (FigCFArrayGetFirstIndexOfValue() == -1)
      {
LABEL_13:
        OUTLINED_FUNCTION_243();
        FigSignalErrorAtGM();
      }

      else
      {
        fpfsi_ResetPrebufferingItem();
        FigCFArrayRemoveFirstElementOfValue();
      }
    }

    else
    {
      v4 = *(v1 + 976);
      if (v4 && CFArrayGetCount(v4) >= 1)
      {
        do
        {
          CFArrayGetValueAtIndex(*(v1 + 976), 0);
          fpfsi_ResetPrebufferingItem();
          CFArrayRemoveValueAtIndex(*(v1 + 976), 0);
        }

        while (CFArrayGetCount(*(v1 + 976)) > 0);
      }
    }
  }

LABEL_10:

  return fpfs_UnlockAndPostNotificationsWithCaller(v0);
}

void fpfs_EnqueuePossibleEndOfMediaData(uint64_t a1)
{
  v10 = 0;
  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_19();
  if (!CMSampleBufferCreate(v2, v3, v4, v5, v6, v7, v8, v9, 0, 0, 0, &v10))
  {
    CMSetAttachment(v10, *MEMORY[0x1E6962DF8], *MEMORY[0x1E695E4D0], 1u);
    fpfsi_logAttachMarker(a1);
    fpfs_RenderBufferOrEnqueueToStartupQueue(a1, v10);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

uint64_t fpfsi_CopyCurrentDateAndTime()
{
  OUTLINED_FUNCTION_187();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_230();
  fpfs_GetNextTimeToPlay(v1, 0, v2);
  v30 = 0;
  OUTLINED_FUNCTION_29();
  if (!v11)
  {
    return 4294950069;
  }

  OUTLINED_FUNCTION_150(v3, v4, v5, v6, v7, v8, v9, v10, v24, v25, v26, v27, v28, v29, v30, v31);
  v12 = v30;
  if (fpfsi_CopyDateForTime())
  {
    v13 = 0;
    v14 = 0.0;
  }

  else
  {
    v14 = MEMORY[0x19A8CCD90](v30);
    v13 = 1;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_150(AllocatorForMedia, AllocatorForMedia, v16, v17, v18, v19, v20, v21, v24, v25, v26, v27, v28, v29, v30, v31);
  v27 = *&v14;
  LOBYTE(v28) = 1;
  BYTE1(v28) = v13;
  *(&v28 + 2) = 0;
  HIWORD(v28) = 0;
  *v0 = FigDateTimeMomentCopyAsDictionary(&v24, v22);
  if (v12)
  {
    CFRelease(v12);
  }

  return 0;
}

uint64_t fpfsi_createTrackIDArray()
{
  OUTLINED_FUNCTION_629();
  v19 = v0;
  v20 = v1;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_570();
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    LoggingIDForTrackList = fpfsi_createLoggingIDForTrackList(v5, @":TrackIDArray");
    v9 = 0;
    while (1)
    {
      v10 = FigGetAllocatorForMedia();
      LastPlayingTracksForMediaType = FigStreamTrackListCreate(v10, LoggingIDForTrackList, &v17);
      if (LastPlayingTracksForMediaType)
      {
        goto LABEL_23;
      }

      LastPlayingTracksForMediaType = fpfsi_findLastPlayingTracksForMediaType();
      if (LastPlayingTracksForMediaType)
      {
        goto LABEL_23;
      }

      v12 = FigGetAllocatorForMedia();
      LastPlayingTracksForMediaType = FigStreamTrackListCreateIterator(v12, v17, &v16);
      if (LastPlayingTracksForMediaType)
      {
        goto LABEL_23;
      }

      Count = FigStreamTrackListGetCount(v17);
      if (v9 == 2)
      {
        if (Count > 4)
        {
          goto LABEL_33;
        }
      }

      else if (Count > 1)
      {
LABEL_33:
        v14 = 4294950069;
        goto LABEL_24;
      }

      FigStreamTrackListIteratorResetAndCopyTrack(v16, &cf);
      while (cf)
      {
        FigStreamTrackGetTrackNumber(cf);
        OUTLINED_FUNCTION_399();
        FigCFArrayAppendInt32();
        if (cf)
        {
          CFRelease(cf);
        }

        cf = 0;
        FigStreamTrackListIteratorCopyNextTrack(v16, &cf);
      }

      if (v16)
      {
        CFRelease(v16);
        v16 = 0;
      }

      if (v17)
      {
        CFRelease(v17);
        v17 = 0;
      }

      if (++v9 == 5)
      {
        if (CFArrayGetCount(Mutable))
        {
          v14 = 0;
          *v3 = Mutable;
          Mutable = 0;
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_239();
        LastPlayingTracksForMediaType = FigSignalErrorAtGM();
LABEL_23:
        v14 = LastPlayingTracksForMediaType;
        goto LABEL_24;
      }
    }
  }

  LoggingIDForTrackList = 0;
  v14 = 4294954434;
LABEL_24:
  if (v17)
  {
    CFRelease(v17);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (LoggingIDForTrackList)
  {
    CFRelease(LoggingIDForTrackList);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v14;
}

uint64_t fpfsi_copyPlaybackRateMonitorProperty(uint64_t a1)
{
  if (!*(a1 + 96))
  {
    return 4294954368;
  }

  OUTLINED_FUNCTION_471();
  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_398();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    return 4294954514;
  }

  v1 = OUTLINED_FUNCTION_171();

  return v2(v1);
}

void fpfsi_handleSetProperty()
{
  OUTLINED_FUNCTION_460();
  v454 = v0;
  v455 = v1;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v447 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *DerivedStorage;
  v13 = CMBaseObjectGetDerivedStorage();
  *v4 = 1;
  v14 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_740(v14);
  FigSimpleMutexLock();
  ++*(v4 + 8);
  if (FigRetainProxyIsInvalidated())
  {
    goto LABEL_40;
  }

  if (CFEqual(v8, @"PlaybackItemProperties"))
  {
    if (v6)
    {
      v15 = CFGetTypeID(v6);
      if (v15 == CFDictionaryGetTypeID())
      {
        seconds.value = 0;
        if (FigCFDictionaryGetDoubleIfPresent())
        {
          CMTimeMakeWithSeconds(&time, *&seconds.value, 1000);
          *(DerivedStorage + 224) = time;
        }

        v16 = *MEMORY[0x1E695E4D0];
        if (v16 == CFDictionaryGetValue(v6, @"OverrideHEAACPrimingEditList"))
        {
          *(DerivedStorage + 873) = 1;
        }
      }
    }

    goto LABEL_12;
  }

  if (CFEqual(v8, @"OutputQTESFilePath") || CFEqual(v8, @"AvailableFileSize") || CFEqual(v8, @"ChosenAlternateTrackIDDictionary"))
  {
    goto LABEL_12;
  }

  if (!CFEqual(v8, @"EndTime"))
  {
    if (CFEqual(v8, @"TimeToPauseBuffering"))
    {
      if (v6)
      {
        TypeID = CFDictionaryGetTypeID();
        if (TypeID != CFGetTypeID(v6))
        {
          goto LABEL_12;
        }

        memset(&time, 0, sizeof(time));
        v22 = OUTLINED_FUNCTION_440();
        CMTimeMakeFromDictionary(v23, v22);
      }

      else
      {
        OUTLINED_FUNCTION_232(MEMORY[0x1E6960C70]);
        time.epoch = v27;
      }

      v28 = OUTLINED_FUNCTION_428();
      goto LABEL_28;
    }

    if (CFEqual(v8, @"TimeToPausePlayback"))
    {
      if (v6)
      {
        v24 = CFDictionaryGetTypeID();
        if (v24 != CFGetTypeID(v6))
        {
          goto LABEL_12;
        }

        memset(&time, 0, sizeof(time));
        v25 = OUTLINED_FUNCTION_440();
        CMTimeMakeFromDictionary(v26, v25);
      }

      else
      {
        OUTLINED_FUNCTION_232(MEMORY[0x1E6960C70]);
        time.epoch = v36;
      }

      v37 = OUTLINED_FUNCTION_428();
      fpfsi_applyTimeToPausePlayback(v37, v38, v39, 1, 0);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"AssociatedPlaybackDurationWhilePaused"))
    {
      v31 = OUTLINED_FUNCTION_440();
      CMTimeMakeFromDictionary(v32, v31);
      *(DerivedStorage + 3344) = time;
      goto LABEL_12;
    }

    if (CFEqual(v8, @"SnapTimeToPausePlayback"))
    {
      v40 = FigCFEqual();
      if (*(DerivedStorage + 466) == v40)
      {
        goto LABEL_12;
      }

      *(DerivedStorage + 466) = v40;
      time = *(DerivedStorage + 1424);
      v41 = OUTLINED_FUNCTION_748();
      fpfsi_applyTimeToPausePlayback(v41, v42, 0, 1, 0);
      time = *(DerivedStorage + 1400);
      v28 = OUTLINED_FUNCTION_748();
      v30 = 1;
LABEL_28:
      fpfsi_applyTimeToPauseBuffering(v28, v29, v30);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"AutomaticallyHandlesInterstitialEvents"))
    {
      CFBooleanGetTypeID();
      v53 = OUTLINED_FUNCTION_411();
      if (v2 != CFGetTypeID(v53))
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_438();
      *(DerivedStorage + 467) = v54;
      if (!dword_1EAF169F0)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_781();
      OUTLINED_FUNCTION_225();
      v55 = OUTLINED_FUNCTION_510();
      OUTLINED_FUNCTION_820(v55, v56, v57, v58, v59, v60, v61, v62, v414, v415, v416, v418, v420, v422, BYTE4(v422));
      OUTLINED_FUNCTION_46();
      if (v13)
      {
        v63 = *DerivedStorage;
        if (*DerivedStorage)
        {
          v64 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v64 = "";
        }

        if (v10)
        {
          CMBaseObjectGetDerivedStorage();
        }

        LODWORD(seconds.value) = 136316418;
        OUTLINED_FUNCTION_536();
        *(&seconds.flags + 2) = v63;
        OUTLINED_FUNCTION_768();
        v424 = v64;
        *v425 = v74;
        *&v425[2] = v10;
        OUTLINED_FUNCTION_682();
        *&v425[20] = 1024;
        *&v425[22] = v75;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_448();
      }

      OUTLINED_FUNCTION_4();
LABEL_99:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_12;
    }

    if (CFEqual(v8, @"ReverseEndTime"))
    {
      if (v6)
      {
        CFDictionaryGetTypeID();
        v68 = OUTLINED_FUNCTION_411();
        if (v2 == CFGetTypeID(v68))
        {
          v69 = OUTLINED_FUNCTION_440();
          CMTimeMakeFromDictionary(v70, v69);
          *(DerivedStorage + 1376) = time;
          fpfs_scheduleReverseEndTimeTimer(v10);
        }
      }

      else
      {
        v71 = MEMORY[0x1E6960C70];
        *(DerivedStorage + 1376) = *MEMORY[0x1E6960C70];
        *(DerivedStorage + 1392) = *(v71 + 16);
      }

      goto LABEL_12;
    }

    if (CFEqual(v8, @"EQPreset"))
    {
      LODWORD(time.value) = 0;
      if (v6 && CFNumberGetValue(v6, kCFNumberIntType, &time))
      {
        fpfsi_setEQPreset(v10, time.value);
      }

      goto LABEL_12;
    }

    if (CFEqual(v8, @"AudioDeviceChannelMap"))
    {
      if (v6)
      {
        CFDataGetTypeID();
        v72 = OUTLINED_FUNCTION_411();
        if (v2 != CFGetTypeID(v72))
        {
          goto LABEL_12;
        }
      }

      time.value = @"AudioDeviceChannelMap";
      *&time.timescale = v6;
      v73 = *(DerivedStorage + 1816);
      *(DerivedStorage + 1816) = v6;
      if (!v6)
      {
        goto LABEL_91;
      }

      goto LABEL_90;
    }

    if (CFEqual(v8, @"QualityGear"))
    {
      v76 = *(DerivedStorage + 96);
      if (v76)
      {
        CMBaseObjectSetProperty(v76, @"AfmfpbProperty_QualityGear", v6);
      }

      *(v13 + 458) = 0;
      goto LABEL_12;
    }

    if (CFEqual(v8, @"SynchronizedLayers"))
    {
      v77 = objc_autoreleasePoolPush();
      if (!v6 || (v78 = CFArrayGetTypeID(), v78 == CFGetTypeID(v6)))
      {
        v79 = *(DerivedStorage + 704);
        if (v79)
        {
          CFRelease(v79);
          *(DerivedStorage + 704) = 0;
        }

        if (v6 && (AllocatorForMedia = FigGetAllocatorForMedia(), Copy = CFArrayCreateCopy(AllocatorForMedia, v6), (*(DerivedStorage + 704) = Copy) == 0))
        {
          OUTLINED_FUNCTION_15();
          FigSignalErrorAtGM();
        }

        else if (*(v13 + 80) == v10)
        {
          time.value = 0;
          fpfs_ensureTransaction(v12, &time.value);
          v93 = OUTLINED_FUNCTION_687();
          fpfs_createOrUpdateLayerSync(v93, v94, v95, v96, v97, v98, v99, v100, v414, v415, v416, v418, SBYTE2(v418), BYTE3(v418), SHIDWORD(v418), v420, v422, *&seconds.value, seconds.epoch, v424, v425[0], *&v425[8], *&v425[16], *&v425[24], v426, *(&v426 + 1), v427, v428, *(&v428 + 1), v429, time.value, *&time.timescale, time.epoch, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, value, v445, v446, v447);
          if (!v101 && *(DerivedStorage + 688))
          {
            fpfsi_synchronizeLayerToTimebaseWithTransaction();
          }

          fpfs_commitTransaction(v12, time.value);
          if (time.value)
          {
            CFRelease(time.value);
          }
        }
      }

      objc_autoreleasePoolPop(v77);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"VideoEnhancementMode"))
    {
      if (v6)
      {
        v82 = CFGetTypeID(v6);
        if (v82 == CFStringGetTypeID())
        {
          if (!FigCFEqual())
          {
            v83 = *(DerivedStorage + 712);
            *(DerivedStorage + 712) = v6;
            CFRetain(v6);
            if (v83)
            {
              CFRelease(v83);
            }

            v84 = OUTLINED_FUNCTION_178();
            fpfsi_setVideoEnhancementModeOnImageQueues(v84, v85);
          }

          goto LABEL_12;
        }
      }

      goto LABEL_40;
    }

    if (CFEqual(v8, @"RestrictsAutomaticMediaSelectionToAvailableOfflineOptions"))
    {
      if (v6)
      {
        v86 = CFGetTypeID(v6);
        if (v86 == CFBooleanGetTypeID())
        {
          *(DerivedStorage + 1844) = CFBooleanGetValue(v6);
          goto LABEL_12;
        }
      }

      goto LABEL_40;
    }

    if (CFEqual(v8, @"RequiresExternalProtection"))
    {
      if (v6)
      {
        v87 = CFGetTypeID(v6);
        if (v87 == CFBooleanGetTypeID())
        {
          if (CFBooleanGetValue(v6))
          {
            time.value = 1;
            v88 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &time);
            v89 = v88;
            v90 = *(DerivedStorage + 1848);
            *(DerivedStorage + 1848) = v88;
            if (v88)
            {
              CFRetain(v88);
            }

            if (v90)
            {
              CFRelease(v90);
            }

            v91 = *(DerivedStorage + 912);
            if (v91)
            {
              FigBytePumpGetFigBaseObject(v91);
              CMBaseObjectSetProperty(v92, 0x1F0B1F1B8, v89);
            }

            goto LABEL_149;
          }
        }
      }

LABEL_40:
      OUTLINED_FUNCTION_15();
LABEL_41:
      FigSignalErrorAtGM();
      goto LABEL_12;
    }

    if (CFEqual(v8, @"estimatedCurrentDate"))
    {
      if (*(DerivedStorage + 912))
      {
        goto LABEL_40;
      }

      v89 = *(DerivedStorage + 1584);
      *(DerivedStorage + 1584) = v6;
      if (!v6)
      {
LABEL_149:
        if (!v89)
        {
          goto LABEL_12;
        }

        v104 = v89;
        goto LABEL_151;
      }

LABEL_148:
      CFRetain(v6);
      goto LABEL_149;
    }

    if (CFEqual(v8, @"currentDate"))
    {
      v102 = OUTLINED_FUNCTION_178();
      fpfsi_SeekToDateWithID(v102, v103, 0);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"SelectedMediaArray"))
    {
      if (v6)
      {
        v105 = CFGetTypeID(v6);
        if (v105 == CFArrayGetTypeID())
        {
          OUTLINED_FUNCTION_178();
          fpfs_SetClientMediaArray();
          goto LABEL_12;
        }
      }

      goto LABEL_40;
    }

    if (CFEqual(v8, @"MediaPresentationLanguages"))
    {
      if (!v6)
      {
        v107 = *(DerivedStorage + 1784);
        *(DerivedStorage + 1784) = 0;
        goto LABEL_179;
      }

      v106 = CFGetTypeID(v6);
      if (v106 != CFDictionaryGetTypeID())
      {
        goto LABEL_40;
      }

      v107 = *(DerivedStorage + 1784);
      *(DerivedStorage + 1784) = v6;
LABEL_165:
      CFRetain(v6);
LABEL_179:
      if (v107)
      {
        CFRelease(v107);
      }

      v113 = OUTLINED_FUNCTION_198();
      fpfs_applyAutoSelectionCriteria(v113, v114);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"kFigPlaybackItemProperty_MediaPresentationCharacteristics"))
    {
      if (!v6)
      {
        v107 = *(DerivedStorage + 1792);
        *(DerivedStorage + 1792) = 0;
        goto LABEL_179;
      }

      v108 = CFGetTypeID(v6);
      if (v108 != CFDictionaryGetTypeID())
      {
        goto LABEL_40;
      }

      v107 = *(DerivedStorage + 1792);
      *(DerivedStorage + 1792) = v6;
      goto LABEL_165;
    }

    if (CFEqual(v8, @"ItemCoordinationMediaSelectionCriteria"))
    {
      if (!v6 || (CFDictionaryGetTypeID(), v109 = OUTLINED_FUNCTION_773(), v8 == CFGetTypeID(v109)))
      {
        if (!FigCFEqual())
        {
          v110 = *(DerivedStorage + 1808);
          *(DerivedStorage + 1808) = v6;
          if (v6)
          {
            CFRetain(v6);
          }

          if (v110)
          {
            CFRelease(v110);
          }

          v111 = OUTLINED_FUNCTION_245();
          fpfs_applyAutoSelectionCriteriaOnItem(v111, v112);
        }

        goto LABEL_12;
      }

      goto LABEL_40;
    }

    if (CFEqual(v8, @"PreferredMaximumBufferDuration"))
    {
      if (v6)
      {
        v115 = CFGetTypeID(v6);
        v116 = CFNumberGetTypeID();
        if (v115 == v116)
        {
          OUTLINED_FUNCTION_129(v116, v117, v118, v119, v120, v121, v122, v123, v414, v415, v416, v418, v420, v422, seconds.value, *&seconds.timescale, seconds.epoch, v424, *v425, *&v425[8], *&v425[16], *&v425[24], v426, *(&v426 + 1), v427, v428, *(&v428 + 1), v429, time.value);
          if ((time.value & 0x80000000) == 0)
          {
            *(DerivedStorage + 2260) = time.value;
            OUTLINED_FUNCTION_245();
            fpfsi_UpdateHighWaterSecs();
            goto LABEL_12;
          }
        }
      }

      goto LABEL_40;
    }

    if (CFEqual(v8, @"MaximumTrailingBufferDuration"))
    {
      if (v6)
      {
        v124 = CFGetTypeID(v6);
        v125 = CFNumberGetTypeID();
        if (v124 == v125)
        {
          OUTLINED_FUNCTION_129(v125, v126, v127, v128, v129, v130, v131, v132, v414, v415, v416, v418, v420, v422, seconds.value, *&seconds.timescale, seconds.epoch, v424, *v425, *&v425[8], *&v425[16], *&v425[24], v426, *(&v426 + 1), v427, v428, *(&v428 + 1), v429, time.value);
          *(DerivedStorage + 2304) = time.value;
          OUTLINED_FUNCTION_245();
          fpfsi_UpdateCacheBehindSecs();
          goto LABEL_12;
        }
      }

      goto LABEL_40;
    }

    if (CFEqual(v8, @"TextMarkupArray"))
    {
      v133 = *(DerivedStorage + 808);
      if (v6)
      {
        v134 = CFGetTypeID(v6);
        if (v134 == CFArrayGetTypeID())
        {
          v135 = *(DerivedStorage + 1824);
          if (v135)
          {
            CFRelease(v135);
            *(DerivedStorage + 1824) = 0;
          }

          v136 = 0;
          *(DerivedStorage + 1824) = CFRetain(v6);
        }

        else
        {
          OUTLINED_FUNCTION_15();
          v136 = FigSignalErrorAtGM();
        }
      }

      else
      {
        v141 = *(DerivedStorage + 1824);
        if (v141)
        {
          CFRelease(v141);
          v136 = 0;
          *(DerivedStorage + 1824) = 0;
        }

        else
        {
          v136 = 0;
        }
      }

      if (!v136 && v133)
      {
        v144 = *(DerivedStorage + 1024);
        if (!v144)
        {
          goto LABEL_238;
        }

        OUTLINED_FUNCTION_756();
        do
        {
          if (*(v144 + 48) == &time)
          {
            v146 = *(v144 + 112);
            v147 = !v146 || v146 == v145;
            if (!v147)
            {
              fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
              v145 = v146;
            }
          }

          v144 = *(v144 + 24);
        }

        while (v144);
        if (v133 != v145)
        {
LABEL_238:
          OUTLINED_FUNCTION_827();
        }
      }

      v148 = *(DerivedStorage + 888);
      if (!v148)
      {
        goto LABEL_12;
      }

      v149 = @"TextMarkupArray";
      v150 = *(DerivedStorage + 1824);
      goto LABEL_254;
    }

    if (CFEqual(v8, @"TextHighlightArray"))
    {
      v137 = *(DerivedStorage + 808);
      if (v6)
      {
        v138 = CFGetTypeID(v6);
        if (v138 == CFArrayGetTypeID())
        {
          v139 = *(DerivedStorage + 1832);
          if (v139)
          {
            CFRelease(v139);
            *(DerivedStorage + 1832) = 0;
          }

          v140 = 0;
          *(DerivedStorage + 1832) = CFRetain(v6);
        }

        else
        {
          OUTLINED_FUNCTION_15();
          v140 = FigSignalErrorAtGM();
        }
      }

      else
      {
        v143 = *(DerivedStorage + 1832);
        if (v143)
        {
          CFRelease(v143);
          v140 = 0;
          *(DerivedStorage + 1832) = 0;
        }

        else
        {
          v140 = 0;
        }
      }

      if (!v140 && v137)
      {
        v152 = *(DerivedStorage + 1024);
        if (!v152)
        {
          goto LABEL_257;
        }

        OUTLINED_FUNCTION_756();
        do
        {
          if (*(v152 + 48) == &time)
          {
            v154 = *(v152 + 112);
            if (v154 && v154 != v153)
            {
              fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
              v153 = v154;
            }
          }

          v152 = *(v152 + 24);
        }

        while (v152);
        if (v137 != v153)
        {
LABEL_257:
          OUTLINED_FUNCTION_827();
        }
      }

      v148 = *(DerivedStorage + 888);
      if (!v148)
      {
        goto LABEL_12;
      }

      v149 = @"TextHighlightArray";
      v150 = *(DerivedStorage + 1832);
LABEL_254:
      FigOutOfBandTrackControllerSetProperty(v148, v149, v150);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"LegibleOutputs"))
    {
      if (!v6 || (v142 = CFGetTypeID(v6), v142 == CFDictionaryGetTypeID()))
      {
        OUTLINED_FUNCTION_178();
        fpfsi_setLegibleOutputsDictionary();
        goto LABEL_12;
      }

      goto LABEL_40;
    }

    if (CFEqual(v8, @"MetadataOutputs"))
    {
      if (!v6 || (v151 = CFGetTypeID(v6), v151 == CFDictionaryGetTypeID()))
      {
        OUTLINED_FUNCTION_178();
        fpfsi_setMetadataOutputsDictionary();
        goto LABEL_12;
      }

      goto LABEL_40;
    }

    if (CFEqual(v8, @"VisualContextArray"))
    {
      v156 = OUTLINED_FUNCTION_178();
      fpfsi_setVisualContextArray(v156, v157);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"SuppressVideoLayers"))
    {
      v158 = OUTLINED_FUNCTION_115();
      fpfsi_setSuppressVideoLayers(v158);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"SuppressLegibleRendering"))
    {
      OUTLINED_FUNCTION_438();
      *(DerivedStorage + 846) = v159;
      goto LABEL_12;
    }

    if (CFEqual(v8, @"ApertureMode"))
    {
      if (v6)
      {
        v160 = CFGetTypeID(v6);
        if (v160 == CFStringGetTypeID())
        {
          if (CFEqual(v6, @"CleanAperture"))
          {
            v171 = 1;
            v172 = 1;
          }

          else if (CFEqual(v6, @"ProductionAperture"))
          {
            v172 = 0;
            v171 = 1;
          }

          else
          {
            if (!CFEqual(v6, @"EncodedPixels"))
            {
              goto LABEL_270;
            }

            v171 = 0;
            v172 = 0;
          }

          *(DerivedStorage + 844) = v171;
          *(DerivedStorage + 845) = v172;
          goto LABEL_308;
        }
      }

LABEL_270:
      OUTLINED_FUNCTION_111();
      if (FigSignalErrorAtGM())
      {
        goto LABEL_12;
      }

LABEL_308:
      fpfsi_updateVideoChannelSettingForAllVideoTracks();
      fpfsi_setCAImageQueueFlagsForItem();
      goto LABEL_12;
    }

    if (CFEqual(v8, @"Volume"))
    {
      if (v6)
      {
        v161 = CFGetTypeID(v6);
        if (v161 == CFNumberGetTypeID())
        {
          LODWORD(time.value) = 1065353216;
          CFNumberGetValue(v6, kCFNumberFloat32Type, &time);
          OUTLINED_FUNCTION_484();
          if (v163 ^ v164 | v147)
          {
            if (v162 < 0.0)
            {
              LODWORD(time.value) = 0;
              v162 = 0.0;
            }
          }

          else
          {
            LODWORD(time.value) = 1065353216;
            v162 = 1.0;
          }

          if (v162 != *(DerivedStorage + 1840) && !fpfsi_applySoftwareVolume())
          {
            *(DerivedStorage + 1840) = time.value;
          }

          goto LABEL_12;
        }
      }

      goto LABEL_40;
    }

    if (CFEqual(v8, @"DisplayNonForcedSubtitles"))
    {
      OUTLINED_FUNCTION_115();
      fpfsi_setNonForcedSubtitlesEnabled();
      goto LABEL_12;
    }

    if (CFEqual(v8, @"ClientAuditToken"))
    {
      if (!v6)
      {
        goto LABEL_40;
      }

      CFDataGetTypeID();
      v165 = OUTLINED_FUNCTION_179();
      if (v10 != CFGetTypeID(v165))
      {
        goto LABEL_40;
      }

      v166 = *(DerivedStorage + 2376);
      *(DerivedStorage + 2376) = v6;
      CFRetain(v6);
      if (v166)
      {
        CFRelease(v166);
      }

      v167 = *(DerivedStorage + 912);
      if (!v167)
      {
        goto LABEL_12;
      }

      v168 = 0x1F0B1F218;
LABEL_426:
      FigBytePumpGetFigBaseObject(v167);
      CMBaseObjectSetProperty(v281, v168, v6);
      goto LABEL_12;
    }

    if (CFEqual(v8, @"ServiceIdentifier"))
    {
      if (!v6)
      {
        goto LABEL_40;
      }

      CFStringGetTypeID();
      v169 = OUTLINED_FUNCTION_179();
      if (v10 != CFGetTypeID(v169))
      {
        goto LABEL_40;
      }

      v89 = *(DerivedStorage + 2384);
      *(DerivedStorage + 2384) = v6;
      goto LABEL_148;
    }

    if (CFEqual(v8, @"allowProgressiveSwitchUp"))
    {
      *(DerivedStorage + 554) = *MEMORY[0x1E695E4D0] == v6;
    }

    else if (CFEqual(v8, @"allowProgressiveStartup"))
    {
      *(DerivedStorage + 555) = *MEMORY[0x1E695E4D0] == v6;
    }

    else
    {
      if (!CFEqual(v8, @"allowProgressiveResume"))
      {
        if (CFEqual(v8, @"AutomaticallyLoadedAssetProperties"))
        {
          if (!v6)
          {
            v89 = *(DerivedStorage + 144);
            *(DerivedStorage + 144) = 0;
            goto LABEL_149;
          }

          CFArrayGetTypeID();
          v170 = OUTLINED_FUNCTION_179();
          if (v10 == CFGetTypeID(v170))
          {
            v89 = *(DerivedStorage + 144);
            *(DerivedStorage + 144) = v6;
            goto LABEL_148;
          }

LABEL_606:
          OUTLINED_FUNCTION_111();
          goto LABEL_41;
        }

        if (CFEqual(v8, @"AutomaticallyLoadedAssetTrackProperties"))
        {
          if (!v6)
          {
            v89 = *(DerivedStorage + 152);
            *(DerivedStorage + 152) = 0;
            goto LABEL_149;
          }

          CFArrayGetTypeID();
          v174 = OUTLINED_FUNCTION_179();
          if (v10 == CFGetTypeID(v174))
          {
            v89 = *(DerivedStorage + 152);
            *(DerivedStorage + 152) = v6;
            goto LABEL_148;
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"MediaKind"))
        {
          if (!v6)
          {
            v176 = *(DerivedStorage + 2392);
            *(DerivedStorage + 2392) = 0;
LABEL_474:
            if (v176)
            {
              CFRelease(v176);
            }

            v306 = OUTLINED_FUNCTION_265();
            fpfsi_applyLoudnessInfo(v306, v307, 1);
            goto LABEL_12;
          }

          CFStringGetTypeID();
          v175 = OUTLINED_FUNCTION_179();
          if (v10 != CFGetTypeID(v175))
          {
            goto LABEL_606;
          }

          v176 = *(DerivedStorage + 2392);
          *(DerivedStorage + 2392) = v6;
LABEL_468:
          CFRetain(v6);
          goto LABEL_474;
        }

        if (CFEqual(v8, @"TimePitchAlgorithm"))
        {
          if (!*(DerivedStorage + 553))
          {
            v177 = OUTLINED_FUNCTION_178();
            fpfsi_setTimePitchAlgorithm(v177, v178);
          }

          goto LABEL_12;
        }

        if (CFEqual(v8, @"AdjustTargetLevel"))
        {
          if (v6)
          {
            CFNumberGetTypeID();
            v179 = OUTLINED_FUNCTION_179();
            if (v10 == CFGetTypeID(v179))
            {
              v180 = *(DerivedStorage + 3168);
              *(DerivedStorage + 3168) = v6;
              CFRetain(v6);
              if (v180)
              {
                CFRelease(v180);
              }

              v181 = OUTLINED_FUNCTION_265();
              fpfsi_applyAdjustTargetLevel(v181, v182);
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"AdjustCompressionProfile"))
        {
          if (v6)
          {
            CFNumberGetTypeID();
            v183 = OUTLINED_FUNCTION_179();
            if (v10 == CFGetTypeID(v183))
            {
              v184 = *(DerivedStorage + 3176);
              *(DerivedStorage + 3176) = v6;
              CFRetain(v6);
              if (v184)
              {
                CFRelease(v184);
              }

              v185 = OUTLINED_FUNCTION_265();
              fpfsi_applyAdjustCompressionProfile(v185, v186);
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"BandwidthCap"))
        {
          if (v6)
          {
            CFNumberGetTypeID();
            v187 = OUTLINED_FUNCTION_773();
            v188 = CFGetTypeID(v187);
            if (v8 == v188)
            {
              OUTLINED_FUNCTION_129(v188, v189, v190, v191, v192, v193, v194, v195, v414, v415, v416, v418, v420, v422, seconds.value, *&seconds.timescale, seconds.epoch, v424, *v425, *&v425[8], *&v425[16], *&v425[24], v426, *(&v426 + 1), v427, v428, *(&v428 + 1), v429, time.value);
              *(DerivedStorage + 2412) = time.value;
              v196 = OUTLINED_FUNCTION_245();
              fpfsi_UpdateBandwidthCap(v196, v197);
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"BandwidthCapForExpensiveNetwork"))
        {
          if (v6)
          {
            CFNumberGetTypeID();
            v198 = OUTLINED_FUNCTION_500();
            if (v13 != CFGetTypeID(v198))
            {
              goto LABEL_606;
            }

            v206 = *(DerivedStorage + 2416);
            *(DerivedStorage + 2416) = v6;
            CFRetain(v6);
          }

          else
          {
            v206 = *(DerivedStorage + 2416);
            *(DerivedStorage + 2416) = 0;
          }

          if (v206)
          {
            CFRelease(v206);
          }

          OUTLINED_FUNCTION_178();
          fpfsi_setPreferredBitrateForExpensiveNetworks();
          goto LABEL_12;
        }

        if (CFEqual(v8, @"TimeOffsetFromLive"))
        {
          if (v6)
          {
            CFDictionaryGetTypeID();
            v199 = OUTLINED_FUNCTION_500();
            if (v13 == CFGetTypeID(v199))
            {
              v200 = OUTLINED_FUNCTION_440();
              CMTimeMakeFromDictionary(v201, v200);
              *(DerivedStorage + 632) = time;
              v202 = *(DerivedStorage + 912);
              if (v202)
              {
                if ((*(DerivedStorage + 644) & 0x1D) == 1)
                {
                  FigBytePumpGetFigBaseObject(v202);
                  CMBaseObjectSetProperty(v203, @"FBP_PrebufferReservation", v6);
                  fpfs_GetNextTimeToPlayIfEstablished(v10, &time);
                  value = time.value;
                  LODWORD(v445) = time.timescale;
                  flags = time.flags;
                  if ((time.flags & 0x1D) == 1)
                  {
                    epoch = time.epoch;
                    fpfsi_GetPumpMaxTimeAvailable(&time);
                    seconds.value = value;
                    seconds.timescale = v445;
                    seconds.flags = flags;
                    seconds.epoch = epoch;
                    if (CMTimeCompare(&seconds, &time) >= 1)
                    {
                      fpfsi_SetCurrentL3Time(v10, MEMORY[0x1E6960C88], 4u);
                    }
                  }
                }
              }

              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"AutomaticallyPreservesTimeOffsetFromLive"))
        {
          if (v6)
          {
            CFBooleanGetTypeID();
            v207 = OUTLINED_FUNCTION_500();
            if (v13 == CFGetTypeID(v207))
            {
              OUTLINED_FUNCTION_438();
              if (*(DerivedStorage + 465) != v208)
              {
                *(DerivedStorage + 465) = v208;
                OUTLINED_FUNCTION_112((DerivedStorage + 408));
                *(DerivedStorage + 424) = v209;
                v210 = OUTLINED_FUNCTION_234();
                fpfs_GetNextTimeToPlay(v210, v211, v212);
                v213 = OUTLINED_FUNCTION_748();
                fpfsi_PrepareToStartWhenLikelyToKeepUp(v213, v214);
              }

              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"IFramePrefetchTargetDimensions"))
        {
          time.value = 0;
          *&time.timescale = 0;
          v215 = 0.0;
          if (v6)
          {
            v216 = CFGetTypeID(v6);
            v217 = CFDictionaryGetTypeID();
            if (v216 == v217)
            {
              OUTLINED_FUNCTION_856(v217, v218, v219, v220, v221, v222, v223, v224, *&v225, v414, v415, v416, v418, v420, v422, seconds.value, *&seconds.timescale, seconds.epoch, v424, *v425, *&v425[8], *&v425[16], *&v425[24], v426, *(&v426 + 1), v427, v428, *(&v428 + 1), v429, *&v227);
              v215 = *&time.timescale;
            }
          }

          v229 = (DerivedStorage + 2488);
          if (v215 != *(DerivedStorage + 2496) || *&time.value != *v229)
          {
            *v229 = *&time.value;
            if (*(DerivedStorage + 2496) * *(DerivedStorage + 2488) > 0.0)
            {
              *(v13 + 872) = 1;
              if (*(DerivedStorage + 40))
              {
                if (!fpfsi_UpdateResourceSpecifierOnResourceArbiter(v10) && !fpfsi_ConfigureAlternateSelectionBossForScanningRole(v10, v230, v231, v232, v233, v234, v235, v236, v414, v415, v416, SHIDWORD(v416), v418, v420, v422, seconds.value, *&seconds.timescale, seconds.epoch, v424, *v425, *&v425[8], *&v425[16], *&v425[24], *&v425[28], v426, *(&v426 + 1), v427, v428, *(&v428 + 1), v429, time.value, *&time.timescale, time.epoch, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, value, v445, v446, v447, v448, v449, v450, v451, v452, v453))
                {
                  FigAlternateSelectionBossApplyFilters(*(DerivedStorage + 40));
                }
              }
            }
          }

          goto LABEL_12;
        }

        if (CFEqual(v8, @"ResolutionCap"))
        {
          *&time.value = *MEMORY[0x1E695F060];
          if (!v6)
          {
            goto LABEL_606;
          }

          v237 = CFGetTypeID(v6);
          v238 = CFDictionaryGetTypeID();
          if (v237 != v238 || !OUTLINED_FUNCTION_856(v238, v239, v240, v241, v242, v243, v244, v245, *&v246, v414, v415, v416, v418, v420, v422, seconds.value, *&seconds.timescale, seconds.epoch, v424, *v425, *&v425[8], *&v425[16], *&v425[24], v426, *(&v426 + 1), v427, v428, *(&v428 + 1), v429, *&v248) || *&time.value < 0.0 || *&time.timescale < 0.0)
          {
            goto LABEL_606;
          }

          if (*(DerivedStorage + 2512) == *&time.value && *(DerivedStorage + 2520) == *&time.timescale)
          {
            goto LABEL_12;
          }

          v251 = (DerivedStorage + 2512);
LABEL_418:
          *v251 = *&time.value;
          fpfsi_HandleResolutionCapOrDisplaySizeChange(v10);
          goto LABEL_12;
        }

        if (CFEqual(v8, @"ResolutionCapForExpensiveNetwork"))
        {
          *&time.value = *MEMORY[0x1E695F060];
          if (v6)
          {
            v252 = CFGetTypeID(v6);
            v253 = CFDictionaryGetTypeID();
            if (v252 == v253 && OUTLINED_FUNCTION_856(v253, v254, v255, v256, v257, v258, v259, v260, *&v261, v414, v415, v416, v418, v420, v422, seconds.value, *&seconds.timescale, seconds.epoch, v424, *v425, *&v425[8], *&v425[16], *&v425[24], v426, *(&v426 + 1), v427, v428, *(&v428 + 1), v429, *&v263) && *&time.value >= 0.0 && *&time.timescale >= 0.0)
            {
              v265 = *(DerivedStorage + 2552);
              *(DerivedStorage + 2552) = v6;
              CFRetain(v6);
              if (v265)
              {
                CFRelease(v265);
              }

              fpfsi_setResolutionCapForExpensiveNetworks();
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"ResolutionFloor"))
        {
          *&time.value = *MEMORY[0x1E695F060];
          if (!v6)
          {
            goto LABEL_606;
          }

          v266 = CFGetTypeID(v6);
          v267 = CFDictionaryGetTypeID();
          if (v266 != v267 || !OUTLINED_FUNCTION_856(v267, v268, v269, v270, v271, v272, v273, v274, *&v275, v414, v415, v416, v418, v420, v422, seconds.value, *&seconds.timescale, seconds.epoch, v424, *v425, *&v425[8], *&v425[16], *&v425[24], v426, *(&v426 + 1), v427, v428, *(&v428 + 1), v429, *&v277) || *&time.value < 0.0 || *&time.timescale < 0.0)
          {
            goto LABEL_606;
          }

          if (*(DerivedStorage + 2528) == *&time.value && *(DerivedStorage + 2536) == *&time.timescale)
          {
            goto LABEL_12;
          }

          v251 = (DerivedStorage + 2528);
          goto LABEL_418;
        }

        if (CFEqual(v8, @"MinimizeNetworkingWhilePaused"))
        {
          OUTLINED_FUNCTION_438();
          *(DerivedStorage + 532) = v280;
          if (!*(DerivedStorage + 912) || fpfsi_isLiveStreaming(v10) && (*(DerivedStorage + 1436) & 1) != 0)
          {
            goto LABEL_12;
          }

          v167 = *(DerivedStorage + 912);
          v168 = 0x1F0B1F458;
          goto LABEL_426;
        }

        if (CFEqual(v8, @"CountOfTaggedRangeMetadataArrayListeners"))
        {
          if (v6)
          {
            v282 = CFGetTypeID(v6);
            if (v282 == CFNumberGetTypeID())
            {
              v283 = *(DerivedStorage + 2632);
              CFNumberGetValue(v6, kCFNumberCFIndexType, (DerivedStorage + 2632));
              if (v283 < *(DerivedStorage + 2632))
              {
                v284 = OUTLINED_FUNCTION_687();
                fpfsi_EnqueueTaggedRangeMetadataChangedNotificationIfNeeded(v284, v285);
              }

              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"VariantPreferences"))
        {
          if (!v6)
          {
            goto LABEL_606;
          }

          v286 = CFGetTypeID(v6);
          v287 = CFNumberGetTypeID();
          if (v286 != v287)
          {
            goto LABEL_606;
          }

          OUTLINED_FUNCTION_129(v287, v288, v289, v290, v291, v292, v293, v294, v414, v415, v416, v418, v420, v422, seconds.value, *&seconds.timescale, seconds.epoch, v424, *v425, *&v425[8], *&v425[16], *&v425[24], v426, *(&v426 + 1), v427, v428, *(&v428 + 1), v429, time.value);
          if (LODWORD(time.value) == *(DerivedStorage + 560))
          {
            goto LABEL_12;
          }

          *(DerivedStorage + 560) = time.value;
LABEL_539:
          fpfsi_handleVariantPreferencesChanged();
          goto LABEL_12;
        }

        if (CFEqual(v8, @"AudioSampleRateCap"))
        {
          if (!v6)
          {
            goto LABEL_606;
          }

          v295 = CFGetTypeID(v6);
          if (v295 != CFNumberGetTypeID())
          {
            goto LABEL_606;
          }

          time.value = 0;
          CFNumberGetValue(v6, kCFNumberDoubleType, &time);
          if (*&time.value < 0.0 || *&time.value == *(DerivedStorage + 2544))
          {
            goto LABEL_12;
          }

          *(DerivedStorage + 2544) = time.value;
          goto LABEL_539;
        }

        if (CFEqual(v8, @"SuppressesAudioOnlyVariants"))
        {
          if (v6)
          {
            v297 = CFGetTypeID(v6);
            if (v297 == CFBooleanGetTypeID())
            {
              OUTLINED_FUNCTION_438();
              *(DerivedStorage + 558) = v300;
              fpfsi_handleSuppressedAudioOnlyVariantsChanged();
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"AudioSpatializationAllowed"))
        {
          if (v6)
          {
            v298 = CFGetTypeID(v6);
            if (v298 == CFBooleanGetTypeID())
            {
              v299 = OUTLINED_FUNCTION_115();
              fpfsi_setAudioSpatializationAllowed(v299);
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"StereoAudioSpatializationAllowed"))
        {
          if (v6)
          {
            v301 = CFGetTypeID(v6);
            if (v301 == CFBooleanGetTypeID())
            {
              v302 = OUTLINED_FUNCTION_115();
              fpfsi_setStereoAudioSpatializationAllowed(v302);
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"LoudnessInfo"))
        {
          if (!v6)
          {
            v176 = *(DerivedStorage + 2400);
            *(DerivedStorage + 2400) = 0;
            goto LABEL_474;
          }

          v303 = CFGetTypeID(v6);
          if (v303 != CFDictionaryGetTypeID())
          {
            goto LABEL_606;
          }

          v176 = *(DerivedStorage + 2400);
          *(DerivedStorage + 2400) = v6;
          goto LABEL_468;
        }

        if (CFEqual(v8, @"AudioProcessingTap"))
        {
          if (fpfs_isSupportedAudioProcessingTap(v6, 0))
          {
            v304 = OUTLINED_FUNCTION_178();
            fpfsi_setAudioProcessingTap(v304, v305);
            goto LABEL_12;
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"ResetAudioBufferedAhead"))
        {
          if (*(CMBaseObjectGetDerivedStorage() + 504))
          {
            if (dword_1EAF169F0)
            {
              OUTLINED_FUNCTION_781();
              OUTLINED_FUNCTION_225();
              v308 = OUTLINED_FUNCTION_510();
              OUTLINED_FUNCTION_820(v308, v309, v310, v311, v312, v313, v314, v315, v414, v415, v416, v418, v420, v422, BYTE4(v422));
              OUTLINED_FUNCTION_46();
              if (v13)
              {
                v316 = *DerivedStorage;
                if (*DerivedStorage)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                if (v10)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                LODWORD(seconds.value) = 136316162;
                OUTLINED_FUNCTION_47();
                *(&seconds.flags + 2) = v316;
                OUTLINED_FUNCTION_166();
                *&v425[2] = v10;
                OUTLINED_FUNCTION_10();
                OUTLINED_FUNCTION_30();
                OUTLINED_FUNCTION_448();
              }

              OUTLINED_FUNCTION_4();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v328 = OUTLINED_FUNCTION_687();
            fpfs_stopResetDisturbReprepareAndResume(v328, v329, 1);
          }

          goto LABEL_12;
        }

        if (CFEqual(v8, @"AudioProcessingUnits"))
        {
          if (!v6 || (v317 = CFGetTypeID(v6), v317 == CFArrayGetTypeID()))
          {
            v318 = OUTLINED_FUNCTION_178();
            fpfsi_setAudioProcessingUnits(v318, v319);
            goto LABEL_12;
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"AudioCurves"))
        {
          if (!v6 || (v320 = CFGetTypeID(v6), v320 == CFDictionaryGetTypeID()))
          {
            v321 = OUTLINED_FUNCTION_687();
            Prev = fpfs_getPrev(v321, v322);
            v324 = *(DerivedStorage + 3152);
            *(DerivedStorage + 3152) = v6;
            if (v6)
            {
              CFRetain(v6);
            }

            if (v324)
            {
              CFRelease(v324);
            }

            if (*(DerivedStorage + 2472))
            {
              if (*(DerivedStorage + 824))
              {
                if (Prev)
                {
                  v325 = OUTLINED_FUNCTION_373();
                  if (!fpfs_SetRenderPipelinePropertiesToUpdateAtTransition(v325, v326, v327))
                  {
                    goto LABEL_12;
                  }
                }
              }
            }

            time.value = @"SecondaryAudioCurves";
            *&time.timescale = v6;
LABEL_93:
            OUTLINED_FUNCTION_748();
            fpfsi_setPropertyOnAllAudioRenderPipelines();
            goto LABEL_12;
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"AudioClockDevice"))
        {
          if (!v6 || (v330 = CFGetTypeID(v6), v330 == CFStringGetTypeID()))
          {
            time.value = @"AudioQueueClockDevice";
            *&time.timescale = v6;
            v73 = *(DerivedStorage + 3160);
            *(DerivedStorage + 3160) = v6;
            if (!v6)
            {
LABEL_91:
              if (v73)
              {
                CFRelease(v73);
              }

              goto LABEL_93;
            }

LABEL_90:
            CFRetain(v6);
            goto LABEL_91;
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"VideoSlotUsage"))
        {
          if (v6)
          {
            v331 = CFGetTypeID(v6);
            if (v331 == CFArrayGetTypeID())
            {
              v332 = OUTLINED_FUNCTION_178();
              fpfsi_updateVideoSlotUsage(v332, v333);
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"PreferSDRVideo"))
        {
          if (v6)
          {
            v334 = CFGetTypeID(v6);
            if (v334 == CFBooleanGetTypeID())
            {
              v335 = OUTLINED_FUNCTION_115();
              fpfsi_setPreferSDRVideo(v335, v336);
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"StartsOnFirstEligibleVariant"))
        {
          if (v6)
          {
            v337 = CFGetTypeID(v6);
            if (v337 == CFBooleanGetTypeID())
            {
              v338 = *MEMORY[0x1E695E4D0] == v6;
              v339 = CMBaseObjectGetDerivedStorage();
              if (*(v339 + 2892) != v338)
              {
                *(v339 + 2892) = v338;
              }

              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"DisableTrialSwitchUpTimer"))
        {
          v340 = *(DerivedStorage + 96);
          if (v340)
          {
            CMBaseObjectSetProperty(v340, @"AfmfpbProperty_DisableTrialSwitchUpTimer", v6);
          }

          else
          {
            *(DerivedStorage + 137) = 1;
          }

          goto LABEL_12;
        }

        if (CFEqual(v8, @"PrefersOfflinePlayableVariants"))
        {
          if (!v6)
          {
            goto LABEL_606;
          }

          v341 = CFGetTypeID(v6);
          if (v341 != CFBooleanGetTypeID())
          {
            goto LABEL_606;
          }

          OUTLINED_FUNCTION_438();
          if (*(DerivedStorage + 3200) == v342)
          {
            goto LABEL_12;
          }

          *(DerivedStorage + 3200) = v342;
          fpfsi_SetupAlternateSelectionBossWithPreferPlaybackFromCache();
          goto LABEL_539;
        }

        if (CFEqual(v8, @"CoordinationIdentifier"))
        {
          if (!v6 || (v343 = CFGetTypeID(v6), v343 == CFStringGetTypeID()))
          {
            if (FigCFEqual())
            {
              goto LABEL_12;
            }

            v344 = FigGetAllocatorForMedia();
            Mutable = CFDictionaryCreateMutable(v344, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!Mutable)
            {
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_501();
            FigCFDictionarySetValue();
            v346 = OUTLINED_FUNCTION_521();
            fpfs_EnqueueNotification(v346, v347, v348, Mutable);
            v349 = *(DerivedStorage + 3216);
            *(DerivedStorage + 3216) = v6;
            if (v6)
            {
              CFRetain(v6);
            }

            if (v349)
            {
              CFRelease(v349);
            }

            v104 = Mutable;
LABEL_151:
            CFRelease(v104);
            goto LABEL_12;
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"ParticipatesInCoordinatedPlayback"))
        {
          if (v6)
          {
            v350 = CFGetTypeID(v6);
            if (v350 == CFBooleanGetTypeID())
            {
              OUTLINED_FUNCTION_438();
              *(DerivedStorage + 3224) = v351;
              fpfsi_CheckSpeedRampCompatibility();
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"TransientTimebaseForCoordinatedPlaybackSynchronization"))
        {
          if (v6)
          {
            v352 = CFGetTypeID(v6);
            if (v352 != CMTimebaseGetTypeID())
            {
              goto LABEL_606;
            }

            v353 = *(DerivedStorage + 568);
            *(DerivedStorage + 568) = v6;
            CFRetain(v6);
          }

          else
          {
            v353 = *(DerivedStorage + 568);
            *(DerivedStorage + 568) = 0;
          }

          if (v353)
          {
            CFRelease(v353);
          }

          if (v6)
          {
            if (!dword_1EAF169F0)
            {
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_781();
            OUTLINED_FUNCTION_279();
            v358 = OUTLINED_FUNCTION_510();
            OUTLINED_FUNCTION_847(v358, v359, v360, v361, v362, v363, v364, v365, v414, v415, v416, v418, v420, v422, BYTE4(v422));
            OUTLINED_FUNCTION_40();
            if (!v353)
            {
              goto LABEL_610;
            }

            if (v12)
            {
              v366 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v366 = "";
            }

            if (!v10)
            {
              goto LABEL_609;
            }
          }

          else
          {
            if (!dword_1EAF169F0)
            {
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_781();
            OUTLINED_FUNCTION_279();
            v368 = OUTLINED_FUNCTION_510();
            OUTLINED_FUNCTION_847(v368, v369, v370, v371, v372, v373, v374, v375, v414, v415, v416, v418, v420, v422, BYTE4(v422));
            OUTLINED_FUNCTION_40();
            if (!v353)
            {
              goto LABEL_610;
            }

            if (v12)
            {
              v366 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v366 = "";
            }

            if (!v10)
            {
LABEL_609:
              LODWORD(seconds.value) = 136316162;
              OUTLINED_FUNCTION_47();
              *(&seconds.flags + 2) = v12;
              OUTLINED_FUNCTION_227();
              v424 = v366;
              *v425 = v383;
              *&v425[2] = v10;
              OUTLINED_FUNCTION_10();
              OUTLINED_FUNCTION_31();
              OUTLINED_FUNCTION_667();
              _os_log_send_and_compose_impl();
LABEL_610:
              OUTLINED_FUNCTION_1();
              goto LABEL_99;
            }
          }

          CMBaseObjectGetDerivedStorage();
          goto LABEL_609;
        }

        if (CFEqual(v8, @"currentInterstitialEvent"))
        {
          v354 = *(DerivedStorage + 3232);
          *(DerivedStorage + 3232) = v6;
          if (v6)
          {
            CFRetain(v6);
          }

          if (v354)
          {
            CFRelease(v354);
          }

          v355 = OUTLINED_FUNCTION_521();
          fpfs_EnqueueNotification(v355, v356, v357, 0);
          goto LABEL_12;
        }

        if (CFEqual(v8, @"interstitialEvents"))
        {
          if (v6)
          {
            v367 = CFGetTypeID(v6);
            if (v367 != CFArrayGetTypeID())
            {
              goto LABEL_606;
            }

            v376 = *(DerivedStorage + 3240);
            *(DerivedStorage + 3240) = v6;
            CFRetain(v6);
          }

          else
          {
            v376 = *(DerivedStorage + 3240);
            *(DerivedStorage + 3240) = 0;
          }

          if (v376)
          {
            CFRelease(v376);
          }

          v377 = *(DerivedStorage + 3240);
          if (v377)
          {
            CFArrayGetCount(v377);
          }

          v379 = OUTLINED_FUNCTION_284();
          FigReportingAgentStatsSetIntValueWithOptions(v379);
          v380 = OUTLINED_FUNCTION_521();
          fpfs_EnqueueNotification(v380, v381, v382, 0);
          fpfsi_CheckSpeedRampCompatibility();
          fpfsi_CheckInterstitialVideoLayoutCompatibility();
          goto LABEL_12;
        }

        if (CFEqual(v8, @"InterstitialEventItemTimeOffset"))
        {
          v89 = *(DerivedStorage + 3248);
          *(DerivedStorage + 3248) = v6;
          if (!v6)
          {
            goto LABEL_149;
          }

          goto LABEL_148;
        }

        if (CFEqual(v8, @"timeToSwapPlayback"))
        {
          goto LABEL_12;
        }

        if (CFEqual(v8, @"AutoSwitchAtmosVariants"))
        {
          if (v6)
          {
            v378 = CFGetTypeID(v6);
            if (v378 == CFBooleanGetTypeID())
            {
              OUTLINED_FUNCTION_115();
              fpfsi_handleAutoSwitchAtmosVariantsChanged();
              goto LABEL_12;
            }
          }

          goto LABEL_606;
        }

        if (CFEqual(v8, @"interstitialPlaybackSuccessCount"))
        {
          if (!v6)
          {
            goto LABEL_12;
          }

          v384 = CFGetTypeID(v6);
          v385 = CFNumberGetTypeID();
          if (v384 != v385)
          {
            goto LABEL_12;
          }

          goto LABEL_623;
        }

        if (CFEqual(v8, @"interstitialPlaybackFailureCount"))
        {
          if (!v6)
          {
            goto LABEL_12;
          }

          v393 = CFGetTypeID(v6);
          v385 = CFNumberGetTypeID();
          if (v393 != v385)
          {
            goto LABEL_12;
          }

          goto LABEL_623;
        }

        if (CFEqual(v8, @"interstitialPlaybackDeadTime"))
        {
          if (!v6)
          {
            goto LABEL_12;
          }

          v394 = CFGetTypeID(v6);
          v385 = CFNumberGetTypeID();
          if (v394 != v385)
          {
            goto LABEL_12;
          }

LABEL_623:
          OUTLINED_FUNCTION_129(v385, v386, v387, v388, v389, v390, v391, v392, v414, v415, v416, v418, v420, v422, seconds.value, *&seconds.timescale, seconds.epoch, v424, *v425, *&v425[8], *&v425[16], *&v425[24], v426, *(&v426 + 1), v427, v428, *(&v428 + 1), v429, time.value);
          FigReportingAgentStatsUpdateSampleValue(*(DerivedStorage + 2568));
          goto LABEL_12;
        }

        if (CFEqual(v8, @"RTCReportingCategory"))
        {
          if (v6)
          {
            v395 = CFGetTypeID(v6);
            if (v395 == CFStringGetTypeID())
            {
              v396 = *(DerivedStorage + 2568);
              if (v396)
              {
                FigReportingAgentStatsSetCFTypeValue(v396);
              }
            }
          }

          goto LABEL_12;
        }

        if (CFEqual(v8, @"ClientReportingValues"))
        {
          if (v6)
          {
            v397 = CFGetTypeID(v6);
            if (v397 == CFDictionaryGetTypeID())
            {
              FigReportingAgentSetStatsForAllKeys(*(DerivedStorage + 2568), @"playerStats");
            }
          }

          goto LABEL_12;
        }

        if (!CFEqual(v8, @"TimestampInterstitialReadyToPlay"))
        {
          if (CFEqual(v8, @"SaveDownloadedDataToDiskWhenDone"))
          {
            v408 = OUTLINED_FUNCTION_115();
            fpfsi_setSaveDownloadedDataToDiskWhenDone(v408, v409);
            goto LABEL_12;
          }

          if (CFEqual(v8, @"SpeedRampData"))
          {
            if (*(v13 + 968))
            {
              v400 = OUTLINED_FUNCTION_178();
              fpfsi_setSpeedRampData(v400, v401, v402, v403, v404, v405, v406, v407, v414, v415, v416, v418, v420, v422, seconds.value, *&seconds.timescale, seconds.epoch, v424, *v425, *&v425[8]);
              fpfsi_CheckSpeedRampCompatibility();
            }

            goto LABEL_12;
          }

          if (!CFEqual(v8, @"OverlapRange"))
          {
            if (CFEqual(v8, @"PriorImageQueueGauge"))
            {
              v412 = *(DerivedStorage + 728);
              *(DerivedStorage + 728) = v6;
              if (v6)
              {
                CFRetain(v6);
              }

              if (v412)
              {
                CFRelease(v412);
              }

              fpfsi_updatePriorImageQueueGaugeOnVideoRenderPipelines();
            }

            goto LABEL_12;
          }

          if (v6)
          {
            v410 = CFGetTypeID(v6);
            if (v410 != CFDictionaryGetTypeID())
            {
              goto LABEL_606;
            }

            v411 = *(DerivedStorage + 3384);
            *(DerivedStorage + 3384) = v6;
            CFRetain(v6);
            if (v411)
            {
              CFRelease(v411);
            }
          }

          else
          {
            v413 = *(DerivedStorage + 3384);
            if (v413)
            {
              CFRelease(v413);
              *(DerivedStorage + 3384) = 0;
            }
          }

          fpfsi_updateOverlapRangeOnAllRenderPipelines();
          goto LABEL_12;
        }

        if (!v6)
        {
          goto LABEL_12;
        }

        v398 = CFGetTypeID(v6);
        if (v398 != CFNumberGetTypeID())
        {
          goto LABEL_12;
        }

        FigCFNumberGetFloat64();
        OUTLINED_FUNCTION_492(v399 - *(DerivedStorage + 2040), 1000.0);
LABEL_637:
        FigReportingAgentStatsSetIntValueWithOptions(v173);
        goto LABEL_12;
      }

      *(DerivedStorage + 556) = *MEMORY[0x1E695E4D0] == v6;
    }

    v173 = *(DerivedStorage + 2568);
    goto LABEL_637;
  }

  if (v6)
  {
    CFDictionaryGetTypeID();
    v17 = OUTLINED_FUNCTION_411();
    if (v2 != CFGetTypeID(v17))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_838();
    fpfsi_EnqueueEndTimeChangedNotification();
    v18 = OUTLINED_FUNCTION_440();
    CMTimeMakeFromDictionary(v19, v18);
    *(DerivedStorage + 1352) = *&time.value;
    v20 = time.epoch;
  }

  else
  {
    OUTLINED_FUNCTION_838();
    fpfsi_EnqueueEndTimeChangedNotification();
    OUTLINED_FUNCTION_112((DerivedStorage + 1352));
  }

  *(DerivedStorage + 1368) = v20;
  OUTLINED_FUNCTION_29();
  if (v147)
  {
    LODWORD(v13) = -256480360;
    OUTLINED_FUNCTION_549();
    time.epoch = v65;
    v66 = CMTimeGetSeconds(&time);
    OUTLINED_FUNCTION_492(v66, 1000.0);
    v67 = OUTLINED_FUNCTION_284();
    FigReportingAgentStatsSetIntValueWithOptions(v67);
  }

  if (dword_1EAF169F0)
  {
    OUTLINED_FUNCTION_427();
    OUTLINED_FUNCTION_225();
    v33 = OUTLINED_FUNCTION_371();
    os_log_type_enabled(v33, BYTE3(v422));
    OUTLINED_FUNCTION_46();
    if (v13)
    {
      v34 = *DerivedStorage;
      if (*DerivedStorage)
      {
        v35 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v35 = "";
      }

      v421 = v35;
      if (v10)
      {
        v43 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v43 = "";
      }

      v419 = v43;
      v44 = *(DerivedStorage + 1352);
      v417 = *(DerivedStorage + 1360);
      OUTLINED_FUNCTION_549();
      time.epoch = v45;
      v46 = CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_790();
      v47 = CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_790();
      FPSTimelineConverterL2TimeToL3(&time, &seconds);
      time = seconds;
      v48 = CMTimeGetSeconds(&time);
      LODWORD(seconds.value) = 136317442;
      *(&seconds.value + 4) = "fpfsi_handleSetProperty";
      LOWORD(seconds.flags) = 2048;
      *(&seconds.flags + 2) = v34;
      HIWORD(seconds.epoch) = 2082;
      v424 = v421;
      *v425 = 2048;
      *&v425[2] = v10;
      *&v425[10] = 2082;
      *&v425[12] = v419;
      *&v425[20] = 2048;
      *&v425[22] = v44;
      *&v425[30] = 1024;
      LODWORD(v426) = v417;
      WORD2(v426) = 2048;
      *(&v426 + 6) = v46;
      HIWORD(v426) = 2048;
      v427 = *&v47;
      LOWORD(v428) = 2048;
      *(&v428 + 2) = v48;
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_448();
    }

    OUTLINED_FUNCTION_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(DerivedStorage + 576))
  {
    goto LABEL_64;
  }

  if (fpfsi_PlaybackHasBufferedBeyondForwardEndTime())
  {
    for (i = *(DerivedStorage + 1024); i; i = *(i + 24))
    {
      if (*(i + 64) != *(DerivedStorage + 976 + 16 * *(i + 196)))
      {
        OUTLINED_FUNCTION_746();
        if (!v147)
        {
          continue;
        }
      }

      if (!*(i + 128))
      {
        fpfs_EnsureEndTimerProcForTrack(i);
      }
    }
  }

  if (!fpfsi_applyForwardEndTime(v10))
  {
    fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd(v10);
LABEL_64:
    if (!*(DerivedStorage + 471) || *(DerivedStorage + 1024) || !fpfsi_SeekToCurrentTime(v10))
    {
      if (fpfsi_PlaybackHasBufferedBeyondForwardEndTime() || (OUTLINED_FUNCTION_133(), !fpfs_FlowControlPump(v50, v51, v52, 255)))
      {
        OUTLINED_FUNCTION_300(v10, &time);
        fpfs_endEndedTracks(DerivedStorage);
      }
    }
  }

LABEL_12:
  fpfs_UnlockAndPostNotificationsWithCaller(v12);
  OUTLINED_FUNCTION_459();
}

void fpfs_createOrUpdateLayerSync(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15, CFTypeRef cf, CFTypeRef a17, __int128 a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  OUTLINED_FUNCTION_458();
  a49 = v53;
  a50 = v54;
  OUTLINED_FUNCTION_261();
  a38 = *MEMORY[0x1E69E9840];
  cf = 0;
  a17 = 0;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_398();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fpfs_ensureTransaction(v50, &a17);
  v56 = *(v51 + 880);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_603();
  v57 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_104(MEMORY[0x1E6960C70]);
  FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(v56, &a21, v58);
  FigStreamingPlayerCombinedVideoDestinationSetDurationInvalid(*(v52 + 376), v57[88], v56);
  FigStreamingPlayerCombinedVideoDestinationCopyFVTs(*(v51 + 376));
  v59 = OUTLINED_FUNCTION_297();
  v60 = CFGetAllocator(v59);
  FPSupport_CreateLayerSynchronizerConfiguration(v60, 1, *(v51 + 392), v57, *(DerivedStorage + 704), &cf);
  FigSimpleMutexLock();
  v61 = *(DerivedStorage + 688);
  if (!v61)
  {
    FigLayerSynchronizerCreate((DerivedStorage + 688));
    v61 = *(DerivedStorage + 688);
  }

  if (v61)
  {
    if (cf)
    {
      v62 = FigLayerSynchronizerSetConfigurationWithDeferredTransaction(v61, cf, *(v51 + 880));
      if (v62)
      {
        v63 = v62;
        OUTLINED_FUNCTION_21();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
        OUTLINED_FUNCTION_134();
        if (v66)
        {
          a15 = v65;
        }

        if (a15)
        {
          LODWORD(a18) = 136315394;
          *(&a18 + 4) = "fpfs_createOrUpdateLayerSync";
          WORD6(a18) = 1024;
          *(&a18 + 14) = v63;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_507();
        }

        OUTLINED_FUNCTION_16();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  FigSimpleMutexUnlock();
  fpfs_commitTransaction(v50, a17);
  if (cf)
  {
    CFRelease(cf);
  }

  if (a17)
  {
    CFRelease(a17);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  OUTLINED_FUNCTION_457();
}

uint64_t fpfs_SetClientMediaArray()
{
  OUTLINED_FUNCTION_261();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_522();
  Mutable = *(v2 + 1760);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(v0 + 1760) = Mutable) != 0))
  {
    v5 = FigAutomaticMediaSelectionCoalesceSelectedMediaArrays(Mutable, v1, 1);
    if (v5)
    {
      return v5;
    }

    v6 = fpfs_CreateAppliedMediaArray(v0, &cf);
    v7 = cf;
    if (!v6 && cf)
    {
      v8 = OUTLINED_FUNCTION_520();
      v6 = fpfs_ApplyMediaArray(v8, v9);
      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
    }

    return v6;
  }

  else
  {
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM();
  }
}

void fpfsi_UpdateHighWaterSecs()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(v1 + 816);
  v4 = *(DerivedStorage + 2260);
  if (v3 >= v4)
  {
    v5 = *(DerivedStorage + 2260);
  }

  else
  {
    v5 = *(v1 + 816);
  }

  if (!v4)
  {
    v4 = 50;
    v5 = *(v1 + 816);
  }

  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  *(DerivedStorage + 2256) = v7;
  if (v7 >= 50)
  {
    v8 = 50;
  }

  else
  {
    v8 = v7;
  }

  *(DerivedStorage + 2264) = v8;
  if (*(DerivedStorage + 2568))
  {
    v9 = DerivedStorage;
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      OUTLINED_FUNCTION_211();
      v10();
    }

    if (*(v9 + 2568))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_138();
        v11();
      }

      if (*(v9 + 2568))
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          OUTLINED_FUNCTION_138();
          v12();
        }

        if (*(v9 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          OUTLINED_FUNCTION_373();
          OUTLINED_FUNCTION_333();
          v13();
        }
      }
    }
  }

  if (*(v1 + 80) == v0)
  {
    OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_530();
  }

  OUTLINED_FUNCTION_860();
}

uint64_t fpfsi_UpdateCacheBehindSecs()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(v0 + 820);
  v3 = DerivedStorage[576];
  if (v2 < 0)
  {
    v2 = DerivedStorage[576];
    if (v3 < 0)
    {
      v2 = DerivedStorage[575];
    }
  }

  else if ((v3 & 0x80000000) == 0 && v2 >= DerivedStorage[574])
  {
    v2 = DerivedStorage[574];
  }

  DerivedStorage[574] = v2;
  fpfsi_TrimCachedSamplesFromItem();
  return 0;
}

void fpfsi_setLegibleOutputsDictionary()
{
  OUTLINED_FUNCTION_261();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1872))
  {
    v3 = DerivedStorage;
    if (v1 && !CFDictionaryGetCount(v1))
    {
      v1 = 0;
    }

    if (!FigCFEqual())
    {
      v4 = *(v3 + 1880);
      *(v3 + 1880) = v1;
      if (v1)
      {
        CFRetain(v1);
      }

      if (v4)
      {
        CFRelease(v4);
      }

      FigLegibleOutputManagerSetLegibleOutputsDict(*(v3 + 1872), *(v3 + 1880));
      if (*(CMBaseObjectGetDerivedStorage() + 80) == v0)
      {
        v5 = OUTLINED_FUNCTION_475();

        fpfs_stopResetDisturbReprepareAndResume(v5, v6, 0);
      }
    }
  }
}

uint64_t fpfsi_setMetadataOutputsDictionary()
{
  OUTLINED_FUNCTION_261();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Tag = FigXMLNodeGetTag(*(DerivedStorage + 1888));
  if (!Tag)
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

  Count = CFDictionaryGetCount(Tag);
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = CFDictionaryGetCount(v1);
LABEL_6:
  updated = FPSupport_UpdateMetadataOutputs(*(DerivedStorage + 1888), v1);
  if (!updated && *(CMBaseObjectGetDerivedStorage() + 80) == v0 && (Count != v5 || v5 >= 1))
  {
    v8 = OUTLINED_FUNCTION_475();
    fpfs_stopResetDisturbReprepareAndResume(v8, v9, 0);
  }

  return updated;
}

uint64_t fpfsi_updateVideoChannelSettingForAllVideoTracks()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (!v0)
  {
    return 0;
  }

  while (1)
  {
    if (*(v0 + 48) == 1986618469)
    {
      if (*(v0 + 104))
      {
        OUTLINED_FUNCTION_203();
        result = fpfsi_setAggregateDestinationVideoChannelSettingsForTrack();
        if (result)
        {
          break;
        }
      }
    }

    v0 = *(v0 + 24);
    if (!v0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t fpfsi_handleVariantPreferencesChanged()
{
  if (!*(CMBaseObjectGetDerivedStorage() + 40))
  {
    return 0;
  }

  result = fpfsi_CreateAndAddCombinedAudioPreferenceFilter();
  if (!result)
  {
    OUTLINED_FUNCTION_198();

    return fpfsi_ApplyFiltersAndSwitchVariantIfNecessary();
  }

  return result;
}

uint64_t fpfsi_handleSuppressedAudioOnlyVariantsChanged()
{
  if (!*(CMBaseObjectGetDerivedStorage() + 40))
  {
    return 0;
  }

  result = fpfsi_ConfigureAlternateSelectionBossForSuppressAudioOnly();
  if (!result)
  {
    OUTLINED_FUNCTION_203();

    return fpfsi_ApplyFiltersAndSwitchVariantIfNecessary();
  }

  return result;
}

uint64_t fpfsi_handleAutoSwitchAtmosVariantsChanged()
{
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 564) == v0)
  {
    return 0;
  }

  *(DerivedStorage + 564) = v0;
  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  result = fpfsi_ConfigureAlternateSelectionBossForHighestAtmosFiltering();
  if (!result)
  {
    OUTLINED_FUNCTION_198();

    return fpfsi_ApplyFiltersAndSwitchVariantIfNecessary();
  }

  return result;
}

uint64_t fpfsi_setSaveDownloadedDataToDiskWhenDone(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 3201) == a2)
  {
    return 0;
  }

  *(DerivedStorage + 3201) = a2;
  result = *(DerivedStorage + 912);
  if (result)
  {
    if (a2)
    {
      v5 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = MEMORY[0x1E695E4C0];
    }

    FigBytePumpGetFigBaseObject(result);
    v7 = v6;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {
      v9 = *v5;

      return v8(v7, 0x1F0B1F118, v9);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

const void *fpfsi_GetClosedCaptionType()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_563();
  v1 = OUTLINED_FUNCTION_399();
  MediaTypeInMediaArray = fpfs_FindMediaTypeInMediaArray(v1, v2, 0);
  if (!MediaTypeInMediaArray)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(MediaTypeInMediaArray, @"MediaSelectionOptionsPersistentID");
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = *(DerivedStorage + 1680);
  if (!v6)
  {
    return 0;
  }

  ClosedCaptionGroupLocatorMap = FigAlternateGetClosedCaptionGroupLocatorMap(v6);
  if (!ClosedCaptionGroupLocatorMap)
  {
    return 0;
  }

  v8 = CFDictionaryGetValue(ClosedCaptionGroupLocatorMap, v5);
  if (!v8)
  {
    return 0;
  }

  v9 = *MEMORY[0x1E6962B78];

  return CFDictionaryGetValue(v8, v9);
}

uint64_t fpfs_CreateAndApplyMediaArrayWithContext()
{
  OUTLINED_FUNCTION_400();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*(DerivedStorage + 1672))
  {
    return 0;
  }

  v2 = fpfs_CreateAppliedMediaArray(DerivedStorage, &cf);
  v3 = cf;
  if (!v2 && cf)
  {
    v2 = fpfs_ApplyMediaArray(v0, cf);
    v3 = cf;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v2;
}

const void *fpfsi_handleVideoOutputsChanged()
{
  OUTLINED_FUNCTION_700();
  v132 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v114 = OUTLINED_FUNCTION_258(DerivedStorage);
  v7 = CMBaseObjectGetDerivedStorage();
  CanRenderVideo = fpfs_CanRenderVideo(v7, v0);
  v8 = *v2;
  if (v8 == FigVideoTargetGetTypeID())
  {
    FigStreamingPlayerCombinedVideoDestinationGetFVTCount(*(v7 + 376));
    v9 = *(v1 + 2568);
    if (v9)
    {
      OUTLINED_FUNCTION_604();
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v10)
      {
        v10(v9, @"playerStats", 0x1F0B650F8, v3, 0);
      }
    }
  }

  v115 = v2;
  v11 = *v2;
  if (v11 != CAImageQueueGetTypeID())
  {
    goto LABEL_40;
  }

  v2 = *(v2 + 16);
  v12 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_592(v12);
  v13 = CMBaseObjectGetDerivedStorage();
  v14 = v13[48];
  v15 = v14 ? CFArrayGetCount(v14) : 0;
  v16 = v13[51];
  v17 = *(v4 + 672);
  v18 = v17 ? CFArrayGetCount(v17) : 0;
  v8 = (v16 + v15);
  v19 = *(v4 + 664);
  v20 = v19 ? CFArrayGetCount(v19) : 0;
  if (v20 <= v8 || v2 && v18 <= v13[51])
  {
    goto LABEL_40;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_723();
    v28 = FigSignalErrorAtGM();
    if (v28)
    {
      goto LABEL_88;
    }

    goto LABEL_40;
  }

  v23 = Mutable;
  v113 = v5;
  v24 = FigGetAllocatorForMedia();
  v25 = CFArrayCreateMutable(v24, 0, MEMORY[0x1E695E9C0]);
  if (!v25)
  {
    OUTLINED_FUNCTION_120();
    v28 = FigSignalErrorAtGM();
    v36 = v23;
    goto LABEL_38;
  }

  v26 = v25;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 664), --v20);
    CFArrayAppendValue(v23, ValueAtIndex);
    CFArrayRemoveValueAtIndex(*(v4 + 664), v20);
  }

  while (v20 > v8);
  if (v2)
  {
    while (v18 > v8)
    {
      v31 = CFArrayGetValueAtIndex(*(v4 + 672), --v18);
      CFArrayAppendValue(v26, v31);
      CFArrayRemoveValueAtIndex(*(v4 + 672), v18);
    }

    v32 = FigGetAllocatorForMedia();
    Copy = CFArrayCreateCopy(v32, *(v4 + 672));
    FigPropertyStorageSetValue(*(v4 + 168), @"VideoSlotArray", Copy);
    if (Copy)
    {
      CFRelease(Copy);
    }

    ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
    if (ConcatenationOfTwoArrays)
    {
      v34 = FigCFArrayCreateConcatenationOfTwoArrays();
      v29 = v34;
      if (v34)
      {
        v35 = v13[53];
        v13[53] = v34;
        CFRetain(v34);
        if (v35)
        {
          CFRelease(v35);
        }

        v28 = v13[54];
        v13[54] = ConcatenationOfTwoArrays;
        CFRetain(ConcatenationOfTwoArrays);
        if (v28)
        {
          CFRelease(v28);
          v28 = 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_120();
        v28 = FigSignalErrorAtGM();
      }
    }

    else
    {
      OUTLINED_FUNCTION_120();
      v28 = FigSignalErrorAtGM();
      v29 = 0;
    }
  }

  else
  {
    v28 = 0;
    v29 = 0;
    ConcatenationOfTwoArrays = 0;
  }

  CFRelease(v23);
  CFRelease(v26);
  if (ConcatenationOfTwoArrays)
  {
    CFRelease(ConcatenationOfTwoArrays);
  }

  if (v29)
  {
    v36 = v29;
LABEL_38:
    CFRelease(v36);
  }

  if (v28)
  {
    goto LABEL_88;
  }

LABEL_40:
  if (!CanRenderVideo)
  {
    OUTLINED_FUNCTION_168(MEMORY[0x1E6960C70]);
    if (!v0)
    {
LABEL_79:
      if (!CelestialShouldLimitHDRConcurrentPlayback() || (v54 = CMBaseObjectGetDerivedStorage(), OUTLINED_FUNCTION_260(v54), v56) || !fpfs_CanRenderVideo(v55, 0))
      {
        fpfs_ReleasePlayerHDRPlaybackBaton();
      }

      if (!CelestialShouldLimit4kConcurrentPlayback() || (v57 = CMBaseObjectGetDerivedStorage(), OUTLINED_FUNCTION_260(v57), v56) || !fpfs_CanRenderVideo(v58, 0))
      {
        fpfs_ReleasePlayer4kPlaybackBaton(v114);
      }

      goto LABEL_87;
    }

    v117 = CMBaseObjectGetDerivedStorage();
    fpfs_GetTime(v117, &v121);
    v37 = &unk_1EAF16000;
    if (dword_1EAF169F0)
    {
      LODWORD(v119.value) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_40();
      if (v2)
      {
        if (*v117)
        {
          v8 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v8 = "";
        }

        v46 = CMBaseObjectGetDerivedStorage() + 3096;
        *&time.value = v121;
        time.epoch = v122;
        CMTimeGetSeconds(&time);
        LODWORD(time2.value) = 136316418;
        OUTLINED_FUNCTION_493();
        v124 = v8;
        v125 = v47;
        v126 = v0;
        v127 = v48;
        v128 = v46;
        v129 = v47;
        v130[0] = v49;
        OUTLINED_FUNCTION_127();
        p_time2 = &time2;
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_667();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *type = 0;
    v50 = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (!v50)
    {
LABEL_72:
      if (*type)
      {
        CFRelease(*type);
      }

      fpfsi_ClearCachedVideoRenderChains(v0);
      v51 = v117[210];
      if (v51 && FigAlternateIsIFrameOnly(v51) || v117[374])
      {
        OUTLINED_FUNCTION_852(*v117, MEMORY[0x1E6960C70]);
      }

      v52 = OUTLINED_FUNCTION_198();
      fpfs_cleanupAllImageQueues(v52, v53);
      goto LABEL_79;
    }

    v60 = 0;
    OUTLINED_FUNCTION_340();
    *&v61 = 136316674;
    v111 = v61;
    while (1)
    {
      v62 = v60;
      while (1)
      {
        if (*(v50 + 48) == v8)
        {
          v60 = *(v50 + 112);
          if (v60)
          {
            break;
          }
        }

        v50 = *(v50 + 24);
        if (!v50)
        {
          goto LABEL_72;
        }
      }

      if (*(v50 + 200))
      {
        fpfs_ReleaseTrackRenderChain(v50);
        fpfs_ChangeTrackState(v50, 2u);
        goto LABEL_72;
      }

      v63 = OUTLINED_FUNCTION_249();
      fpfs_SetFeederTrack(v63, v64);
      if (v60 != v62)
      {
        if (*type)
        {
          CFRelease(*type);
          *type = 0;
        }

        FigGetAllocatorForMedia();
        CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
        v65 = OUTLINED_FUNCTION_265();
        CMBufferQueueCreate(v65, v66, v67, v68);
        if (*type)
        {
          OUTLINED_FUNCTION_0();
          MEMORY[0x19A8CE710]();
        }
      }

      v69 = OUTLINED_FUNCTION_627();
      fpfs_unscheduleRanDryTimer(v69, v70);
      fpfsi_RemoveAndClearTimer((v50 + 128));
      v71 = *(v50 + 280);
      if (v71)
      {
        CFRelease(v71);
        *(v50 + 280) = 0;
      }

      if (*type)
      {
        OUTLINED_FUNCTION_674();
        if (v56)
        {
          if (CMBufferQueueGetHead(v72))
          {
            break;
          }
        }
      }

LABEL_107:
      fpfs_ReleaseTrackRenderChain(v50);
      time = *(v50 + 208);
      *&time2.value = v121;
      time2.epoch = v122;
      if (CMTimeCompare(&time, &time2) < 0)
      {
        *(v50 + 208) = v121;
        *(v50 + 224) = v122;
      }

      fpfs_ChangeTrackState(v50, 5u);
      fpfs_CheckVideoSyncQueue();
      v50 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (!v50)
      {
        goto LABEL_72;
      }
    }

    v73 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_514();
      OutputPresentationTimeStamp = CMSampleBufferGetOutputPresentationTimeStamp(&v119, v74);
      if (v119.flags)
      {
        OUTLINED_FUNCTION_661(OutputPresentationTimeStamp, v76, v77, v78, v79, v80, v81, v82, p_time2, v110, v111, *(&v111 + 1), v112, v113, v114, v115, v117, v118, v83, v119.value);
        time2 = *(v50 + 232);
        if (CMTimeCompare(&time, &time2) >= 1)
        {
          goto LABEL_107;
        }
      }

      v84 = CMBufferQueueDequeueAndRetain(*type);
      v85 = v84;
      if (!v73)
      {
        if (!fpfs_IsVideoSync(v84))
        {
          v73 = 0;
          if (!v85)
          {
            goto LABEL_117;
          }

LABEL_116:
          CFRelease(v85);
          goto LABEL_117;
        }

        CMSampleBufferGetOutputPresentationTimeStamp(&time, v85);
        *(v50 + 288) = time;
        if (v37[636])
        {
          HIDWORD(v118) = 0;
          BYTE3(v118) = 0;
          v86 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_121();
          if (v56)
          {
            v88 = v87;
          }

          else
          {
            v88 = 0;
          }

          if (v88)
          {
            v113 = v86;
            HIDWORD(v112) = 0;
            if (*v117)
            {
              v89 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v89 = "";
            }

            v115 = v89;
            v90 = CMBaseObjectGetDerivedStorage() + 3096;
            v91 = *(v50 + 32);
            time = *(v50 + 288);
            CMTimeGetSeconds(&time);
            LODWORD(time2.value) = v111;
            OUTLINED_FUNCTION_493();
            v124 = v115;
            v125 = v92;
            v126 = v0;
            v127 = v93;
            v128 = v90;
            v129 = 1024;
            LODWORD(v130[0]) = v91;
            WORD2(v130[0]) = v92;
            *(v130 + 6) = v94;
            OUTLINED_FUNCTION_378();
            OUTLINED_FUNCTION_34();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_109();
          v73 = 1;
          OUTLINED_FUNCTION_61();
          v37 = &unk_1EAF16000;
        }

        else
        {
          v73 = 1;
        }
      }

      CMBufferQueueEnqueue(*(v50 + 88), v85);
      if (v85)
      {
        goto LABEL_116;
      }

LABEL_117:
      if (!CMBufferQueueGetHead(*type))
      {
        goto LABEL_107;
      }
    }
  }

  v39 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (v39)
  {
    v2 = 1835365473;
    while (1)
    {
      v44 = *(v39 + 48);
      if (v44 == 1986618469)
      {
        if (!FPSupport_CanVideoRenderPipelineSupportChangingFigImageQueues(*(v39 + 56)))
        {
          break;
        }

        v44 = *(v39 + 48);
      }

      if (v44 == 1835365473 && fpfs_canSendMetadataTrackToVideoTargets())
      {
        break;
      }

      v39 = *(v39 + 24);
      if (!v39)
      {
        goto LABEL_46;
      }
    }

    v40 = 1;
  }

  else
  {
LABEL_46:
    v40 = 0;
  }

  OUTLINED_FUNCTION_301();
  if (fpfs_FirstTrackWithFormatDescriptionOfType(v41, v42))
  {
    v43 = *(v1 + 840) == 0.0;
  }

  else
  {
    v43 = 0;
  }

  if (v43 | v40)
  {
    fpfs_stopResetDisturbReprepareAndResume(*v1, v0, 0);
    goto LABEL_87;
  }

  v45 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (!v45)
  {
LABEL_64:
    fpfsi_ResumeAllWaitingVideoTracks(v0);
LABEL_87:
    v28 = 0;
    goto LABEL_88;
  }

  while (*(v45 + 48) != 1986618469 || !*(v45 + 112))
  {
    v45 = *(v45 + 24);
    if (!v45)
    {
      goto LABEL_64;
    }
  }

  v95 = v0;
  v96 = *v115;
  v56 = v96 == CAImageQueueGetTypeID();
  v0 = v95;
  if (!v56 || *(v115 + 1) < 1)
  {
    goto LABEL_142;
  }

  for (i = *(CMBaseObjectGetDerivedStorage() + 1024); i; i = *(i + 24))
  {
    if (*(i + 48) == 1986618469 && *(i + 112))
    {
      break;
    }
  }

  fpfsi_addCAImageQueuesAndSlots();
  v28 = v98;
  if (!v98)
  {
LABEL_142:
    time.value = 0;
    time2.value = 0;
    v99 = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_294(v99);
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_576();
    v100 = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (v100)
    {
      while (*(v100 + 48) != 1986618469 || !*(v100 + 112))
      {
        v100 = *(v100 + 24);
        if (!v100)
        {
          goto LABEL_146;
        }
      }

      fpfs_CreateFigImageQueueOutputsArray(v95, v100, &time);
      value = time.value;
      OUTLINED_FUNCTION_298();
      updated = fpfsi_updateOutputsForAllAggregateVideoDestinations();
      if (updated)
      {
        v28 = updated;
LABEL_148:
        if (time2.value)
        {
          CFRelease(time2.value);
          if (!value)
          {
LABEL_150:
            if (v28)
            {
              goto LABEL_88;
            }

LABEL_154:
            v102 = *v115;
            if (v102 != FigVideoTargetGetTypeID())
            {
              v28 = 0;
              v0 = v95;
              goto LABEL_88;
            }

            v0 = v95;
            OUTLINED_FUNCTION_133();
            fpfsi_scheduleFVTTransitionsForItem(v103, v104, v105);
            goto LABEL_87;
          }
        }

        else if (!value)
        {
          goto LABEL_150;
        }

        CFRelease(value);
        if (v28)
        {
          goto LABEL_88;
        }

        goto LABEL_154;
      }

      fpfsi_copyCurrentImageQueueArrayAndOptions(v95, &time2);
      for (j = *(v2 + 1024); j; j = *(j + 24))
      {
        if (*(j + 48) == 1986618469)
        {
          v108 = *(j + 112);
          if (v108)
          {
            FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnRenderPipeline(*(v1 + 880), time2.value, *(v108 + 32), "fpfsi_UpdateWithNewFigImageQueues");
          }
        }
      }
    }

    else
    {
LABEL_146:
      value = 0;
    }

    v28 = 0;
    goto LABEL_148;
  }

LABEL_88:
  fpfsi_UpdateResourceSpecifierOnResourceArbiter(v0);
  return v28;
}

uint64_t fpfs_canSendMetadataTrackToVideoTargets()
{
  CMBaseObjectGetDerivedStorage();
  v1 = OUTLINED_FUNCTION_251();
  result = fpfs_isKnownMebxMetadataForRendering(v1);
  if (result)
  {
    v3 = *(v0 + 376);

    return FigStreamingPlayerCombinedVideoDestinationSupportsMebxMetadata(v3);
  }

  return result;
}

void fpfsi_assignCAImageQueuesToLayers(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, os_log_type_t type, int a16, CFTypeRef cf, int a18, int a19, __int128 a20, const char *a21, uint64_t a22, uint64_t a23, __int128 a24, const void *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  OUTLINED_FUNCTION_416();
  a55 = v58;
  a56 = v59;
  v61 = v60;
  a43 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v63 = CMBaseObjectGetDerivedStorage();
  v64 = *(v63 + 392);
  if (v64)
  {
    Count = CFArrayGetCount(v64);
  }

  else
  {
    Count = 0;
  }

  v66 = *(DerivedStorage + 664);
  if (!v66)
  {
    goto LABEL_33;
  }

  v67 = CFArrayGetCount(v66);
  if (Count < 1 || v67 < 1)
  {
    goto LABEL_33;
  }

  if (Count == v67)
  {
    v69 = OUTLINED_FUNCTION_312();
    if (fpfs_getNext(v69, v70) == v61)
    {
      v71 = *(v63 + 880);
      cf = 0;
      AllocatorForMedia = FigGetAllocatorForMedia();
      Copy = CFArrayCreateCopy(AllocatorForMedia, *(DerivedStorage + 664));
      if (!v71)
      {
        v74 = FigGetAllocatorForMedia();
        FigDeferredTransactionCreate(v74, &cf);
      }

      FigCFCopyCompactDescription();
      OUTLINED_FUNCTION_604();
      v75 = FigCFCopyCompactDescription();
      if (!dword_1EAF169F0)
      {
        goto LABEL_25;
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_125();
      if (v77)
      {
        v78 = v76;
      }

      else
      {
        v78 = 0;
      }

      if (!v78)
      {
LABEL_24:
        OUTLINED_FUNCTION_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_25:
        if (v57)
        {
          CFRelease(v57);
        }

        if (v75)
        {
          CFRelease(v75);
        }

        OUTLINED_FUNCTION_387(MEMORY[0x1E6960C88]);
        v81 = OUTLINED_FUNCTION_171();
        FPSupport_AppendDeferredTransactionChangeForSettingCAImageQueuesOnVideoLayers(v81, v82, v83, v84);
        v85 = OUTLINED_FUNCTION_410();
        FPSupport_AppendDeferredTransactionChangeForSettingEdgeAntialiasingMaskOnLayers(v85, v86, v87);
        FigDeferredTransactionCommit(cf, 0);
        if (cf)
        {
          CFRelease(cf);
        }

        if (Copy)
        {
          CFRelease(Copy);
        }

        goto LABEL_33;
      }

      v79 = *DerivedStorage;
      if (v79)
      {
        v80 = (CMBaseObjectGetDerivedStorage() + 888);
        if (!v61)
        {
LABEL_23:
          a18 = 136316674;
          OUTLINED_FUNCTION_47();
          *(&a20 + 6) = v79;
          OUTLINED_FUNCTION_227();
          a21 = v80;
          OUTLINED_FUNCTION_97();
          WORD2(a24) = 2112;
          *(&a24 + 6) = v57;
          HIWORD(a24) = 2112;
          a25 = v75;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_34();
          _os_log_send_and_compose_impl();
          goto LABEL_24;
        }
      }

      else
      {
        v80 = "";
        if (!v61)
        {
          goto LABEL_23;
        }
      }

      CMBaseObjectGetDerivedStorage();
      goto LABEL_23;
    }

LABEL_33:
    OUTLINED_FUNCTION_372();
    return;
  }

  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_372();

  FigSignalErrorAtGM();
}

uint64_t fpfsi_ApplyFiltersAndSwitchVariantIfNecessary()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 40);
  if (!v0)
  {
    return 0;
  }

  v1 = FigAlternateSelectionBossApplyFilters(v0);
  if (!v1)
  {
    FigGetAllocatorForMedia();
    v2 = OUTLINED_FUNCTION_292();
    v1 = FigAlternateSelectionBossCopyProperty(v2, v3, v4, v5);
    if (!v1)
    {
      OUTLINED_FUNCTION_243();
      return FigSignalErrorAtGM();
    }
  }

  return v1;
}

CFTypeRef fpfsi_copyPreviousImageQueueGauge()
{
  OUTLINED_FUNCTION_522();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 463))
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_172(DerivedStorage);
  if (fpfs_getPrev(v3, v1))
  {
    FigGetAllocatorForMedia();
    v4 = OUTLINED_FUNCTION_251();
    FigPlaybackItemGetFigBaseObject(v4);
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v5 = OUTLINED_FUNCTION_228();
      v6(v5);
      return v8;
    }

    return 0;
  }

  result = *(v0 + 728);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void fpfsi_CopyTaggedCharacteristicsForTrack(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFArrayRef theArray, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  v20 = v19;
  v22 = *(v21 + 48);
  v23 = *(v21 + 456);
  CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  OUTLINED_FUNCTION_522();
  *v20 = 0;
  if (v22 == 1668047728)
  {
    v22 = 1935832172;
  }

  FigGetCFStringForOSTypeValue();
  v25 = OUTLINED_FUNCTION_731();
  MediaTypeInMediaArray = fpfs_FindMediaTypeInMediaArray(v25, v26, v27);
  if (!MediaTypeInMediaArray)
  {
    goto LABEL_15;
  }

  v29 = MediaTypeInMediaArray;
  v30 = OUTLINED_FUNCTION_249();
  if (!FigMediaCharacteristicsCreateMediaCharacteristicsForMediaOption(v30, v31, v29, v32))
  {
    if (theArray)
    {
      CFArrayGetCount(theArray);
      OUTLINED_FUNCTION_607();
      CFArrayAppendArray(v33, v34, v38);
    }

    Value = CFDictionaryGetValue(v29, @"MediaSelectionOptionsPersistentID");
    if (!v23 || v22 != 1936684398 || !Value)
    {
      goto LABEL_15;
    }

    SpecializedAudioChannelUsage = FigAlternateGetSpecializedAudioChannelUsage(v23, Value);
    if (SpecializedAudioChannelUsage == 3)
    {
      v37 = kFigStdAssetMediaCharacteristic_TaggedBinauralForHeadphones;
    }

    else
    {
      if (SpecializedAudioChannelUsage != 2)
      {
LABEL_15:
        *v20 = v18;
        goto LABEL_16;
      }

      v37 = kFigStdAssetMediaCharacteristic_TaggedDownmix;
    }

    CFArrayAppendValue(v18, *v37);
    goto LABEL_15;
  }

  if (v18)
  {
    CFRelease(v18);
  }

LABEL_16:
  if (theArray)
  {
    CFRelease(theArray);
  }

  OUTLINED_FUNCTION_652();
}

void fpfs_EnqueueReleaseAfterDecoding(uint64_t a1)
{
  v10 = 0;
  CMBaseObjectGetDerivedStorage();
  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_19();
  if (!CMSampleBufferCreate(v2, v3, v4, v5, v6, v7, v8, v9, 0, 0, 0, &v10) && (!*(CMBaseObjectGetDerivedStorage() + 504) || (_os_feature_enabled_impl() & 1) == 0))
  {
    CMSetAttachment(v10, *MEMORY[0x1E6962E00], *MEMORY[0x1E695E4D0], 1u);
    fpfsi_logAttachMarker(a1);
    fpfs_RenderBufferOrEnqueueToStartupQueue(a1, v10);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

void fpfs_AccumulateTrackDurationToBufferedAirPlayRenderedSampleRange(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (*(a1 + 198))
  {
    if (*(a1 + 112))
    {
      OUTLINED_FUNCTION_63();
      if (v2)
      {
        if (*(CMBaseObjectGetDerivedStorage() + 504))
        {
          lhs = *(a1 + 232);
          rhs = *(a1 + 208);
          CMTimeSubtract(&v7.start, &lhs, &rhs);
          value = v7.start.value;
          timescale = v7.start.timescale;
          OUTLINED_FUNCTION_350();
          if (v2)
          {
            epoch = v7.start.epoch;
            v5 = *(a1 + 112);
            *&v7.start.value = *(v5 + 120);
            v7.start.epoch = *(v5 + 136);
            rhs.value = value;
            rhs.timescale = timescale;
            rhs.flags = v3;
            rhs.epoch = epoch;
            CMTimeAdd(&lhs, &v7.start, &rhs);
            rhs = *(v5 + 96);
            CMTimeRangeMake(&v7, &rhs, &lhs);
            v6 = *&v7.start.epoch;
            *(v5 + 96) = *&v7.start.value;
            *(v5 + 112) = v6;
            *(v5 + 128) = *&v7.duration.timescale;
          }

          else
          {
            OUTLINED_FUNCTION_376();
            FigSignalErrorAtGM();
          }
        }
      }
    }
  }
}

void fpfs_CreateTrackDryTimer(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = OUTLINED_FUNCTION_171();
  ItemAndTrackNumberPayload = fpfs_CreateItemAndTrackNumberPayload(v2, v3);
  fpfsi_RemoveAndClearTimer((a1 + 136));
  v5 = OUTLINED_FUNCTION_621();
  fpfsi_CreateTimebaseTimer(v5, v6, v7, v8, 0, v9);
  v10 = MEMORY[0x1E6960C70];
  *(a1 + 172) = *MEMORY[0x1E6960C70];
  *(a1 + 188) = *(v10 + 16);
  if (ItemAndTrackNumberPayload)
  {

    CFRelease(ItemAndTrackNumberPayload);
  }
}

uint64_t fpfsi_deferredMarkerBufferConsumed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  OUTLINED_FUNCTION_382();
  v86 = *MEMORY[0x1E69E9840];
  v60 = 0;
  cf = 0;
  v13 = &unk_1EAF16000;
  if (!v9 || !CFDictionaryGetValue(a5, @"renderPipelineToStart"))
  {
    v14 = 0;
LABEL_4:
    v15 = 1;
    goto LABEL_5;
  }

  v14 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v14)
  {
    goto LABEL_4;
  }

  if (dword_1EAF169F0)
  {
    LODWORD(v59.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_134();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0;
    }

    if (v27)
    {
      v62 = 136315394;
      *v63 = "fpfsi_deferredMarkerBufferConsumed";
      *&v63[8] = 2048;
      *&v63[10] = v14;
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v13 = &unk_1EAF16000;
  }

  FigRenderPipelineGetFigBaseObject(v14);
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v30 = OUTLINED_FUNCTION_148();
    v31(v30);
  }

  FigRenderPipelineGetFigBaseObject(v14);
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v32 = OUTLINED_FUNCTION_148();
    v33(v32);
  }

  v15 = 0;
LABEL_5:
  fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(v5, &cf, &v60, v8, v9, v10, v11, v12, v49, v50, v51, v53, v54, type.value, type.timescale, SBYTE2(type.timescale), HIBYTE(type.timescale), type.flags, type.epoch, SHIDWORD(type.epoch), v59.value, SWORD2(v59.value), *&v59.timescale, v59.epoch, v60, cf, v62, *&v63[4], *&v63[12], v65, v66, *&v67[6], *v68, v68[8], *&v70[1], *&v70[3], time.value, *&time.timescale, time.epoch, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
  if (v16)
  {
    v17 = cf;
    if (!cf)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v19 = v13;
  v20 = v60;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = *(DerivedStorage + 1024);
  if (v22)
  {
    v23 = DerivedStorage;
    while (!*(v22 + 112) || !FigCFEqual())
    {
      v22 = *(v22 + 24);
      if (!v22)
      {
        goto LABEL_35;
      }
    }

    v28 = *(*(v22 + 112) + 64);
    if (v28)
    {
      CFRelease(v28);
      *(*(v22 + 112) + 64) = 0;
    }

    if ((v15 & 1) == 0)
    {
      v29 = *(v22 + 24);
      if (v29)
      {
        while (*(v29 + 48) != *(v22 + 48) || !*(v29 + 112))
        {
          v29 = *(v29 + 24);
          if (!v29)
          {
            goto LABEL_35;
          }
        }

        memset(&v59, 0, sizeof(v59));
        memset(&type, 0, sizeof(type));
        if (v19[636])
        {
          OUTLINED_FUNCTION_427();
          v55 = OUTLINED_FUNCTION_371();
          os_log_type_enabled(v55, v56);
          OUTLINED_FUNCTION_189();
          if (!v26)
          {
            v34 = v57;
          }

          if (v34)
          {
            v52 = cf;
            if (cf)
            {
              v35 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v35 = "";
            }

            if (v20)
            {
              CMBaseObjectGetDerivedStorage();
            }

            v62 = 136316674;
            *v63 = "fpfsi_deferredMarkerBufferConsumed";
            *&v63[8] = 2048;
            *&v63[10] = v52;
            v64 = 2082;
            v65 = v35;
            v66 = 2048;
            *v67 = v20;
            *&v67[8] = 2082;
            OUTLINED_FUNCTION_359();
            *&v68[6] = v36;
            v69 = v37;
            *v70 = v38;
            OUTLINED_FUNCTION_66();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        fpfsi_scheduleFVTTransitionsForItem(v20, 3, 0);
        v39 = OUTLINED_FUNCTION_732();
        fpfsi_RTCReportingReportFormatTransition(v39, v40, v29);
        fpfsi_RTCReportingUpdateCompletedDecodeForPrerollTime(v23);
        FPSupport_getVideoDecodeWaterLevels(&type, &v59, 1);
        time = v59;
        Seconds = CMTimeGetSeconds(&time);
        v42 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
        *v42 = FigRetainProxyRetain();
        v42[1] = *(v29 + 32);
        dispatch_time(0, (Seconds * 1000000000.0));
        v43 = OUTLINED_FUNCTION_802();
        dispatch_get_global_queue(v43, v44);
        v45 = OUTLINED_FUNCTION_406();
        dispatch_after_f(v45, v46, v47, v48);
        fpfsi_setCAImageQueueFlagsForTrack(v29);
      }
    }
  }

LABEL_35:
  v17 = cf;
  fpfs_UnlockAndPostNotificationsWithCaller(cf);
  if (v17)
  {
LABEL_7:
    CFRelease(v17);
  }

LABEL_8:
  if (v60)
  {
    CFRelease(v60);
  }

  if ((v15 & 1) == 0)
  {
    CFRelease(v14);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return FigRetainProxyRelease();
}

uint64_t fpfsi_RTCReportingUpdateCompletedDecodeForPrerollTime(uint64_t a1)
{
  result = FigGetUpTimeNanoseconds();
  v4 = *(a1 + 2072);
  if (v4)
  {
    v5 = *(a1 + 2568);
    if (v5)
    {
      OUTLINED_FUNCTION_199();
      VTable = CMBaseObjectGetVTable();
      v7 = *(VTable + 16);
      result = VTable + 16;
      v8 = *(v7 + 56);
      if (v8)
      {

        return v8(v5, 0x1F0B64678, 0x1F0B67798, (v1 - v4) / 0xF4240uLL, 1);
      }
    }
  }

  return result;
}

void fpfs_ExternalProtectionStatusChangedGuts(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(a1, 0, a3, a4, a5, a6, a7, a8, @"ExternalProtectionStatus", 0);
  OUTLINED_FUNCTION_403();
  fpfs_EnqueueNotification(v9, v10, v11, v12);
  if (NotificationPayloadForProperties)
  {

    CFRelease(NotificationPayloadForProperties);
  }
}

void fpfs_PushSampleBuffer()
{
  OUTLINED_FUNCTION_182();
  v2 = v1;
  v4 = v3;
  LODWORD(v441) = v5;
  v7 = v6;
  v526 = *MEMORY[0x1E69E9840];
  v439 = *(v6 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_258(DerivedStorage);
  v9 = CMBaseObjectGetDerivedStorage();
  memset(&v451, 0, sizeof(v451));
  CMSampleBufferGetPresentationTimeStamp(&v451, v4);
  epoch_high = 0;
  v519 = 0;
  memset(&v450, 0, sizeof(v450));
  v448[0] = 0;
  v448[1] = 0;
  v449 = 0;
  memset(&v447, 0, sizeof(v447));
  CMSampleBufferGetDuration(&v447, v4);
  memset(&v446, 0, sizeof(v446));
  fpfs_GetTimeOffsetIntoSegment(v4, &v446);
  if (v4)
  {
    CFRetain(v4);
  }

  *(v7 + 204) = 1;
  v10 = *MEMORY[0x1E6962DF0];
  OUTLINED_FUNCTION_607();
  v14 = CMGetAttachment(v11, v12, v13);
  if (v14)
  {
    v15 = v14;
    v16 = CFGetTypeID(v14);
    if (v16 == CFDictionaryGetTypeID())
    {
      v17 = *(v7 + 480);
      *(v7 + 480) = v15;
      CFRetain(v15);
      if (v17)
      {
        CFRelease(v17);
      }

      v18 = OUTLINED_FUNCTION_184();
      fpfsi_applyLoudnessInfo(v18, v19, 1);
    }

    if (CMSampleBufferGetNumSamples(v4) < 1)
    {
      goto LABEL_407;
    }

    CMRemoveAttachment(v4, v10);
  }

  CMBufferQueueEnqueue(*(v7 + 96), v4);
  if (*(v9 + 32))
  {
    v20 = &unk_1EAF16000;
    if (!*(v7 + 56))
    {
      OUTLINED_FUNCTION_376();
LABEL_406:
      FigSignalErrorAtGM();
      goto LABEL_407;
    }

    if (*(v7 + 400))
    {
      FigBasicAESCPECryptorGetClassID();
      OUTLINED_FUNCTION_399();
      if (!CMBaseObjectIsMemberOfClass() || (LODWORD(outputPresentationTimeStamp.value) = 0, v21 = *(v7 + 400), (v22 = *(*(CMBaseObjectGetVTable() + 16) + 16)) == 0) || (v23 = v22(v21, &outputPresentationTimeStamp), v23 | LODWORD(outputPresentationTimeStamp.value)))
      {
        FigSampleBufferSetDecryptor();
      }
    }

    OUTLINED_FUNCTION_196();
    v435 = v2;
    LOBYTE(v26) = *(v7 + 48) == v25 && *(v7 + 168) != 6;
    p_cf = &cf;
    v442 = *MEMORY[0x1E6960C70];
    v444 = (v7 + 412);
    v445 = v0 + 64;
    v411 = v0 + 92;
    v408 = @"Suspended";
    v443 = &v0[61];
    v430 = &v0[15].n128_i64[1];
    v407 = *MEMORY[0x1E695E4D0];
    v410 = 0x1F0B1F618;
    key = *MEMORY[0x1E6962E18];
    allocator = *MEMORY[0x1E695E480];
    v440 = @"FMFD_HintForStartTime";
    *&v24 = 136316674;
    *v426 = v24;
    *&v24 = 136317698;
    *v412 = v24;
    *&v24 = 136317954;
    *v409 = v24;
    *&v24 = 136320770;
    *v433 = v24;
    HIDWORD(v441) = *(MEMORY[0x1E6960C70] + 8);
    LODWORD(v427) = *(MEMORY[0x1E6960C70] + 12);
    HIDWORD(v427) = *(MEMORY[0x1E6960CC0] + 8);
    v428 = *MEMORY[0x1E6960CC0];
    v429 = *(MEMORY[0x1E6960C70] + 16);
    v438 = v0;
    while (1)
    {
      OUTLINED_FUNCTION_29();
      if (v49)
      {
        *&cf.value = *&v451.value;
        OUTLINED_FUNCTION_5(v451.epoch, p_outputPresentationTimeStamp, v406, v407, v408, v409[0], v409[1], v410, v411, v412[0], v412[1], v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v424, key, v426[0], v426[1], v427, v428, v429, v430, v431, v432, v433[0], v433[1], allocator, v435, v436[0], v436[1], v437, v438, v439, v440, v441, v442, v443, v444);
        CMTimeSubtract(v30, v28, v29);
        cf = *(v7 + 144);
        v31 = OUTLINED_FUNCTION_183();
        CMTimeAdd(v33, v31, v32);
        value = type.value;
        timescale = type.timescale;
        OUTLINED_FUNCTION_714();
        if (*(v7 + 200))
        {
          OUTLINED_FUNCTION_17();
          if (v49)
          {
            outputPresentationTimeStamp.value = value;
            outputPresentationTimeStamp.timescale = timescale;
            OUTLINED_FUNCTION_94();
            cf = **&MEMORY[0x1E6960CC0];
            v34 = OUTLINED_FUNCTION_183();
            if (CMTimeCompare(v34, v35) < 0)
            {
              OUTLINED_FUNCTION_358();
              timescale = HIDWORD(v427);
              value = v428;
            }
          }
        }

        outputPresentationTimeStamp.value = value;
        outputPresentationTimeStamp.timescale = timescale;
        OUTLINED_FUNCTION_94();
        CMSampleBufferSetOutputPresentationTimeStamp(v4, &outputPresentationTimeStamp);
      }

      else
      {
        OUTLINED_FUNCTION_358();
        timescale = HIDWORD(v441);
        value = v442;
      }

      if (v26)
      {
        break;
      }

LABEL_46:
      v26 = 0;
      switch(*(v7 + 168))
      {
        case 0:
          goto LABEL_53;
        case 1:
        case 5:
          if ((v441 & 2) != 0)
          {
            *(v7 + 472) = 1;
          }

          if (!*(v7 + 200) || (OUTLINED_FUNCTION_17(), !v49))
          {
            memset(&v458, 0, sizeof(v458));
            v65 = *(v7 + 16);
            v66 = CMBaseObjectGetDerivedStorage();
            OUTLINED_FUNCTION_248(v66);
            v424 = CMBaseObjectGetDerivedStorage();
            CMSampleBufferGetPresentationTimeStamp(&type, v4);
            if ((*(v7 + 156) & 1) == 0)
            {
              v524 = v442;
              v525 = HIDWORD(v441);
              v456 = 0uLL;
              v457 = 0;
              fpfs_GetTime(0, &v456);
              v67 = MEMORY[0x400];
              if (MEMORY[0x400])
              {
                v68 = 0;
                v69 = v427;
                v436[0] = v429;
                do
                {
                  if (v67 != v7)
                  {
                    OUTLINED_FUNCTION_29();
                    if (v49 && !*(v67 + 472) && *(v67 + 80) == *(v7 + 80))
                    {
                      v70 = *(v67 + 144);
                      *(v7 + 160) = *(v67 + 160);
                      *(v7 + 144) = v70;
                      v68 = v67;
                    }

                    if ((*(v67 + 244) & 1) != 0 && *(v67 + 80) <= *(v7 + 80))
                    {
                      v71 = OUTLINED_FUNCTION_171();
                      if (FigStreamTrackCanTracksBeSyncPairsIgnoringDiscontinuity(v71, v72))
                      {
                        v524 = *(v67 + 232);
                        v69 = *(v67 + 244);
                        v525 = *(v67 + 240);
                        v436[0] = *(v67 + 248);
                      }
                    }
                  }

                  v67 = *(v67 + 24);
                }

                while (v67);
              }

              else
              {
                v68 = 0;
                v436[0] = v429;
                v69 = v427;
              }

              *(v7 + 208) = v524;
              *(v7 + 216) = v525;
              *(v7 + 220) = v69;
              *(v7 + 224) = v436[0];
              LOBYTE(v118) = v69;
              if ((v69 & 0x1D) != 1)
              {
                LOBYTE(v118) = v69;
                if ((*(v7 + 156) & 0x1D) == 1)
                {
                  OUTLINED_FUNCTION_55();
                  OUTLINED_FUNCTION_5(v119, p_outputPresentationTimeStamp, v406, v407, v408, v409[0], v409[1], v410, v411, v412[0], v412[1], v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v424, key, v426[0], v426[1], v427, v428, v429, v430, v431, v432, v433[0], v433[1], allocator, v435, v436[0], v436[1], v437, v438, v439, v440, v441, v442, v443, v444);
                  CMTimeSubtract(v122, v120, v121);
                  OUTLINED_FUNCTION_43();
                  v123 = OUTLINED_FUNCTION_183();
                  CMTimeAdd(v125, v123, v124);
                  *(v7 + 208) = rhs;
                  v118 = *(v7 + 220);
                }
              }

              if ((v118 & 0x1D) != 1 || (outputPresentationTimeStamp = *(v7 + 208), OUTLINED_FUNCTION_739(), v126 = OUTLINED_FUNCTION_183(), CMTimeCompare(v126, v127) < 0))
              {
                *(v7 + 208) = v456;
                *(v7 + 224) = v457;
              }

              OUTLINED_FUNCTION_63();
              if (v49)
              {
                OUTLINED_FUNCTION_194();
                TrackOfType = fpfs_LastTrackOfType(v128, v129, v7);
                if (TrackOfType)
                {
                  if (fpfs_canCrossfade(v424, TrackOfType, v7))
                  {
                    OUTLINED_FUNCTION_155();
                    OUTLINED_FUNCTION_8(gFSPAudioCrossfadeDuration);
                    CMTimeSubtract(v133, v131, v132);
                    OUTLINED_FUNCTION_657();
                    *&p_cf->value = *(v7 + 208);
                    cf.epoch = v134;
                    *&rhs.value = kAudioRampingDownSilenceDuration;
                    rhs.epoch = 0;
                    CMTimeSubtract(&outputPresentationTimeStamp, &cf, &rhs);
                    OUTLINED_FUNCTION_657();
                  }
                }
              }

              v135 = *(v7 + 156);
              v431 = v65;
              v432 = 0;
              v437 = v4;
              if (v135)
              {
                v455 = *(v7 + 208);
                v521 = 0;
                v522 = 0;
                v523 = 0;
                valuePtr = 0;
                number = 0;
                v136 = MEMORY[0x390];
                AllocatorForMedia = FigGetAllocatorForMedia();
                FigBytePumpGetFigBaseObject(v136);
                v139 = v138;
                v140 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v140 && !v140(v139, v410, AllocatorForMedia, &number) && number)
                {
                  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
                  CFRelease(number);
                }

                v26 = 0;
                fpfs_GetTime(0, &outputPresentationTimeStamp);
                epoch = outputPresentationTimeStamp.epoch;
                v457 = outputPresentationTimeStamp.epoch;
                v142 = *&outputPresentationTimeStamp.value;
                v456 = *&outputPresentationTimeStamp.value;
                outputPresentationTimeStamp = v455;
                *&p_cf->value = v142;
                cf.epoch = epoch;
                v143 = OUTLINED_FUNCTION_183();
                if (CMTimeCompare(v143, v144) >= 1)
                {
                  *&v455.value = v456;
                  v455.epoch = v457;
                }

                if (valuePtr <= MEMORY[0x8D0])
                {
                  CMTimeMake(&cf, 2 * MEMORY[0x8D0], 1);
                  rhs = v455;
                  CMTimeSubtract(&outputPresentationTimeStamp, &rhs, &cf);
                  v455 = outputPresentationTimeStamp;
                }

                else
                {
                  CMTimeMake(&outputPresentationTimeStamp, 2 * valuePtr, 1);
                  OUTLINED_FUNCTION_161();
                  v145 = OUTLINED_FUNCTION_716();
                  CMTimeSubtract(v147, v145, v146);
                }

                CMTimeMake(&outputPresentationTimeStamp, MEMORY[0x8D0], 1);
                OUTLINED_FUNCTION_155();
                v149 = OUTLINED_FUNCTION_716();
                CMTimeAdd(v151, v149, v150);
                OUTLINED_FUNCTION_55();
                OUTLINED_FUNCTION_5(v152, p_outputPresentationTimeStamp, v406, v407, v408, v409[0], v409[1], v410, v411, v412[0], v412[1], v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v424, key, v426[0], v426[1], v427, v428, v429, v430, v65, 0, v433[0], v433[1], allocator, v435, v436[0], v436[1], v4, v438, v439, v440, v441, v442, v443, v444);
                CMTimeSubtract(v155, v153, v154);
                OUTLINED_FUNCTION_43();
                v156 = OUTLINED_FUNCTION_183();
                CMTimeAdd(v158, v156, v157);
                if (dword_1EAF169F0)
                {
                  LODWORD(rhs.value) = 0;
                  v452 = OS_LOG_TYPE_DEFAULT;
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v160 = rhs.value;
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v452);
                  OUTLINED_FUNCTION_121();
                  if (v49)
                  {
                    v162 = v161;
                  }

                  else
                  {
                    v162 = v160;
                  }

                  if (v162)
                  {
                    isa = v432->isa;
                    if (v432->isa)
                    {
                      v164 = (CMBaseObjectGetDerivedStorage() + 888);
                    }

                    else
                    {
                      v164 = "";
                    }

                    v422 = v164;
                    if (v65)
                    {
                      v181 = (CMBaseObjectGetDerivedStorage() + 3096);
                    }

                    else
                    {
                      v181 = "";
                    }

                    v421 = v181;
                    v182 = *(v7 + 32);
                    *&outputPresentationTimeStamp.value = *(v7 + 208);
                    OUTLINED_FUNCTION_244(*(v7 + 224));
                    Seconds = CMTimeGetSeconds(v183);
                    *&outputPresentationTimeStamp.value = *(v7 + 144);
                    OUTLINED_FUNCTION_244(*(v7 + 160));
                    v186 = CMTimeGetSeconds(v185);
                    if (v68)
                    {
                      v187 = *(v68 + 32);
                    }

                    else
                    {
                      v187 = -1;
                    }

                    *&outputPresentationTimeStamp.value = *&v458.value;
                    OUTLINED_FUNCTION_244(v458.epoch);
                    v189 = CMTimeGetSeconds(v188);
                    OUTLINED_FUNCTION_55();
                    OUTLINED_FUNCTION_244(v190);
                    v192 = CMTimeGetSeconds(v191);
                    v193 = "";
                    if (*(v7 + 472))
                    {
                      v193 = "(gap track)";
                    }

                    LODWORD(cf.value) = v409[0];
                    *(&cf.value + 4) = "fpfs_SyncSampleBuffer";
                    LOWORD(cf.flags) = 2048;
                    *(&cf.flags + 2) = isa;
                    HIWORD(cf.epoch) = 2082;
                    v504 = v422;
                    v505 = 2048;
                    v65 = v431;
                    v506 = v431;
                    v507 = 2082;
                    v508 = v421;
                    p_cf = &cf;
                    v509 = 1024;
                    *v510 = v182;
                    *&v510[4] = 2048;
                    *&v510[6] = Seconds;
                    v511 = 2048;
                    v512 = v186;
                    v513 = 1024;
                    *v514 = v187;
                    *&v514[4] = 2048;
                    *&v514[6] = v189;
                    v515 = 2048;
                    v516 = v192;
                    v517 = 2080;
                    v518 = v193;
                    OUTLINED_FUNCTION_101();
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl();
                    v20 = &unk_1EAF16000;
                  }

                  OUTLINED_FUNCTION_1();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v4 = v437;
                  v26 = v432;
                }

                if (!*(v7 + 200))
                {
                  OUTLINED_FUNCTION_571();
                  OUTLINED_FUNCTION_161();
                  v194 = OUTLINED_FUNCTION_183();
                  if (CMTimeCompare(v194, v195) < 0 || (OUTLINED_FUNCTION_571(), OUTLINED_FUNCTION_708(), v196 = OUTLINED_FUNCTION_183(), CMTimeCompare(v196, v197) >= 1))
                  {
                    *(v7 + 144) = *MEMORY[0x1E6960C70];
                    *(v7 + 160) = v429;
                  }
                }

                v135 = *(v7 + 156);
              }

              if ((v135 & 1) == 0)
              {
                OUTLINED_FUNCTION_155();
                *&rhs.value = OUTLINED_FUNCTION_259();
                OUTLINED_FUNCTION_14(type.epoch);
                CMTimeSubtract(v200, v198, v199);
                *(v7 + 144) = outputPresentationTimeStamp;
                if (dword_1EAF169F0)
                {
                  LODWORD(rhs.value) = 0;
                  LOBYTE(v455.value) = 0;
                  v201 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v202 = rhs.value;
                  os_log_type_enabled(v201, v455.value);
                  OUTLINED_FUNCTION_202();
                  if (v49)
                  {
                    v204 = v203;
                  }

                  else
                  {
                    v204 = v202;
                  }

                  if (v204)
                  {
                    v205 = v432->isa;
                    if (v432->isa)
                    {
                      v206 = (CMBaseObjectGetDerivedStorage() + 888);
                      if (v65)
                      {
                        goto LABEL_246;
                      }

LABEL_249:
                      v207 = "";
                    }

                    else
                    {
                      v206 = "";
                      if (!v65)
                      {
                        goto LABEL_249;
                      }

LABEL_246:
                      v207 = (CMBaseObjectGetDerivedStorage() + 3096);
                    }

                    v208 = *(v7 + 32);
                    *&outputPresentationTimeStamp.value = *(v7 + 144);
                    OUTLINED_FUNCTION_244(*(v7 + 160));
                    v210 = CMTimeGetSeconds(v209);
                    LODWORD(cf.value) = v426[0];
                    *(&cf.value + 4) = "fpfs_SyncSampleBuffer";
                    LOWORD(cf.flags) = 2048;
                    *(&cf.flags + 2) = v205;
                    HIWORD(cf.epoch) = 2082;
                    v504 = v206;
                    p_cf = &cf;
                    v505 = 2048;
                    v506 = v65;
                    v507 = 2082;
                    v508 = v207;
                    v509 = 1024;
                    *v510 = v208;
                    *&v510[4] = 2048;
                    *&v510[6] = v210;
                    OUTLINED_FUNCTION_101();
                    OUTLINED_FUNCTION_27();
                    _os_log_send_and_compose_impl();
                    v20 = &unk_1EAF16000;
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_454();
                  v4 = v437;
                  v26 = v432;
                }
              }

              if (v69)
              {
                OUTLINED_FUNCTION_17();
                if (v49)
                {
                  p_cf = (v26 + 2776);
                  cf = *(v26 + 2776);
                  rhs.value = v524;
                  rhs.timescale = v525;
                  rhs.flags = v69;
                  OUTLINED_FUNCTION_14(v436[0]);
                  CMTimeMaximum(v224, v222, v223);
                  OUTLINED_FUNCTION_583();
                  *(v26 + 2792) = v225;
                  OUTLINED_FUNCTION_55();
                  OUTLINED_FUNCTION_5(v226, p_outputPresentationTimeStamp, v406, v407, v408, v409[0], v409[1], v410, v411, v412[0], v412[1], v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v424, key, v426[0], v426[1], v427, v428, v429, v430, v431, v432, v433[0], v433[1], allocator, v435, v436[0], v436[1], v437, v438, v439, v440, v441, v442, v443, v444);
                  CMTimeSubtract(v229, v227, v228);
                  OUTLINED_FUNCTION_43();
                  v230 = OUTLINED_FUNCTION_183();
                  CMTimeAdd(v232, v230, v231);
                  *(v26 + 2752) = rhs;
                }

                else
                {
                  OUTLINED_FUNCTION_63();
                  if (v49)
                  {
                    p_cf = (v26 + 2728);
                    cf = *(v26 + 2728);
                    rhs.value = v524;
                    rhs.timescale = v525;
                    rhs.flags = v69;
                    OUTLINED_FUNCTION_14(v436[0]);
                    CMTimeMaximum(v213, v211, v212);
                    OUTLINED_FUNCTION_583();
                    *(v26 + 2744) = v214;
                    OUTLINED_FUNCTION_55();
                    OUTLINED_FUNCTION_5(v215, p_outputPresentationTimeStamp, v406, v407, v408, v409[0], v409[1], v410, v411, v412[0], v412[1], v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v424, key, v426[0], v426[1], v427, v428, v429, v430, v431, v432, v433[0], v433[1], allocator, v435, v436[0], v436[1], v437, v438, v439, v440, v441, v442, v443, v444);
                    CMTimeSubtract(v218, v216, v217);
                    OUTLINED_FUNCTION_43();
                    v219 = OUTLINED_FUNCTION_183();
                    CMTimeAdd(v221, v219, v220);
                    *(v26 + 2704) = rhs;
                  }
                }
              }

              v233 = v20;
              if (dword_1EAF169F0)
              {
                LODWORD(v455.value) = 0;
                LOBYTE(v521) = 0;
                v234 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v235 = v455.value;
                os_log_type_enabled(v234, v521);
                OUTLINED_FUNCTION_121();
                if (v49)
                {
                  v237 = v236;
                }

                else
                {
                  v237 = v235;
                }

                if (v237)
                {
                  v238 = v432->isa;
                  if (v432->isa)
                  {
                    v436[0] = CMBaseObjectGetDerivedStorage() + 888;
                    v239 = "";
                  }

                  else
                  {
                    v239 = "";
                    v436[0] = "";
                  }

                  v240 = v431;
                  if (v431)
                  {
                    v239 = (CMBaseObjectGetDerivedStorage() + 3096);
                  }

                  v423 = *(v7 + 32);
                  *&cf.value = OUTLINED_FUNCTION_259();
                  *&rhs.value = OUTLINED_FUNCTION_54(v241, v242, v243, v244, v245, v246, v247, v248, p_outputPresentationTimeStamp, v406, v407, v408, v409[0], v409[1], v410, v411, v412[0], v412[1], v413, v414, v415, v416, v417, v418, v419, v420, v421, v423, v424, key, v426[0], v426[1], v427, v428, v429, v430, v431, v432, v433[0], v433[1], allocator, v435, v436[0], v436[1], v437, v438, v439, v440, v441, v442, v443, v444);
                  OUTLINED_FUNCTION_11(v249);
                  CMTimeSubtract(v252, v250, v251);
                  cf = *(v7 + 144);
                  v253 = OUTLINED_FUNCTION_183();
                  CMTimeAdd(v255, v253, v254);
                  v256 = CMTimeGetSeconds(&rhs);
                  *&outputPresentationTimeStamp.value = *(v7 + 208);
                  OUTLINED_FUNCTION_244(*(v7 + 224));
                  v258 = CMTimeGetSeconds(v257);
                  *&outputPresentationTimeStamp.value = OUTLINED_FUNCTION_259();
                  OUTLINED_FUNCTION_244(type.epoch);
                  v260 = CMTimeGetSeconds(v259);
                  v261 = *(v7 + 80);
                  fpfs_GetTime(v432, &outputPresentationTimeStamp);
                  v262 = CMTimeGetSeconds(&outputPresentationTimeStamp);
                  LODWORD(cf.value) = v412[0];
                  *(&cf.value + 4) = "fpfs_SyncSampleBuffer";
                  LOWORD(cf.flags) = 2048;
                  *(&cf.flags + 2) = v238;
                  HIWORD(cf.epoch) = 2082;
                  v504 = v436[0];
                  v505 = 2048;
                  v506 = v240;
                  v507 = 2082;
                  v508 = v239;
                  p_cf = &cf;
                  v509 = 1024;
                  *v510 = v422;
                  *&v510[4] = 2048;
                  *&v510[6] = v256;
                  v511 = 2048;
                  v512 = v258;
                  v513 = 2048;
                  *v514 = v260;
                  *&v514[8] = 1024;
                  *&v514[10] = v261;
                  v515 = 2048;
                  v516 = v262;
                  OUTLINED_FUNCTION_101();
                  OUTLINED_FUNCTION_108();
                  OUTLINED_FUNCTION_772();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_1();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v4 = v437;
                v26 = v432;
              }

              v263 = *(v7 + 64);
              v264 = *(v7 + 196);
              if (v263 == *(v26 + 976 + 16 * v264) || v263 == *(v26 + 976 + 16 * v264 + 8))
              {
                v265 = *(v7 + 144);
                v266 = v26 + 24 * *(v7 + 196);
                *(v266 + 264) = *(v7 + 160);
                *(v266 + 248) = v265;
              }

              v20 = v233;
              v65 = v431;
              if (fpfs_UseTrackToSetPumpOffset(v7))
              {
                v267 = CMGetAttachment(v4, key, 0);
                memset(&v455, 0, sizeof(v455));
                if (v267)
                {
                  CMTimeMakeFromDictionary(&v455, v267);
                }

                else
                {
                  *&v455.value = OUTLINED_FUNCTION_259();
                  v455.epoch = type.epoch;
                }

                v521 = 0;
                v522 = 0;
                v523 = 0;
                OUTLINED_FUNCTION_161();
                OUTLINED_FUNCTION_317();
                OUTLINED_FUNCTION_14(v268);
                CMTimeSubtract(v271, v269, v270);
                OUTLINED_FUNCTION_43();
                v272 = OUTLINED_FUNCTION_183();
                CMTimeAdd(v274, v272, v273);
                OUTLINED_FUNCTION_142();
                OUTLINED_FUNCTION_708();
                OUTLINED_FUNCTION_317();
                OUTLINED_FUNCTION_14(v275);
                CMTimeAdd(v278, v276, v277);
                OUTLINED_FUNCTION_343((v26 + 24 * *(v7 + 196)), *&outputPresentationTimeStamp.value);
                fpfs_UpdatePumpOffset(v431, v279, v280);
                if (*(v26 + 1568))
                {
                  OUTLINED_FUNCTION_309();
                  updated = fpfs_UpdateDateInfo();
                  if (updated)
                  {
LABEL_288:
                    v293 = updated;
                    goto LABEL_302;
                  }
                }
              }

              OUTLINED_FUNCTION_63();
              if (v49)
              {
                OUTLINED_FUNCTION_194();
                if (!fpfs_LastTrackOfType(v281, v282, v7))
                {
                  OUTLINED_FUNCTION_746();
                  if (!v49)
                  {
                    if (*(v7 + 112) || *(v26 + 2904) || !fpfs_CanRenderAudio() || (fpfs_EnsureRenderChainForTrack(), !updated))
                    {
                      *&p_cf->value = OUTLINED_FUNCTION_259();
                      *&rhs.value = OUTLINED_FUNCTION_54(v340, v341, v342, v343, v344, v345, v346, v347, p_outputPresentationTimeStamp, v406, v407, v408, v409[0], v409[1], v410, v411, v412[0], v412[1], v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v424, key, v426[0], v426[1], v427, v428, v429, v430, v431, v432, v433[0], v433[1], allocator, v435, v436[0], v436[1], v437, v438, v439, v440, v441, v442, v443, v444);
                      OUTLINED_FUNCTION_11(v348);
                      CMTimeSubtract(v351, v349, v350);
                      OUTLINED_FUNCTION_43();
                      v352 = OUTLINED_FUNCTION_183();
                      CMTimeAdd(v354, v352, v353);
                      v458 = rhs;
                      OUTLINED_FUNCTION_837(rhs.epoch, *&rhs.value);
                      fpfs_ChangeTrackState(v7, 4u);
                      OUTLINED_FUNCTION_309();
                      fpfs_PushToNonVideoLateJoiner();
                    }

                    goto LABEL_288;
                  }
                }
              }
            }

            OUTLINED_FUNCTION_55();
            OUTLINED_FUNCTION_5(v283, p_outputPresentationTimeStamp, v406, v407, v408, v409[0], v409[1], v410, v411, v412[0], v412[1], v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v424, key, v426[0], v426[1], v427, v428, v429, v430, v431, v432, v433[0], v433[1], allocator, v435, v436[0], v436[1], v437, v438, v439, v440, v441, v442, v443, v444);
            CMTimeSubtract(v286, v284, v285);
            OUTLINED_FUNCTION_43();
            v287 = OUTLINED_FUNCTION_183();
            CMTimeAdd(v289, v287, v288);
            v458 = rhs;
            OUTLINED_FUNCTION_837(rhs.epoch, *&rhs.value);
            OUTLINED_FUNCTION_17();
            if (!v49)
            {
              OUTLINED_FUNCTION_63();
              if (v49)
              {
                v290 = OUTLINED_FUNCTION_245();
                fpfs_SyncAudioBuffer(v290, v291, v4);
                goto LABEL_288;
              }

              if (*(v7 + 200))
              {
                OUTLINED_FUNCTION_142();
                v296 = OUTLINED_FUNCTION_584();
                fpfs_GetEndOutputPresentationTimeStamp(v296, v297);
                OUTLINED_FUNCTION_210(*&outputPresentationTimeStamp.value);
                rhs = *(v7 + 208);
                if (CMTimeCompare(&cf, &rhs) >= 1)
                {
                  fpfs_GetTime(v26, &cf);
                  *&rhs.value = *&outputPresentationTimeStamp.value;
                  OUTLINED_FUNCTION_246(outputPresentationTimeStamp.epoch);
                  if ((CMTimeCompare(v298, &cf) & 0x80000000) == 0)
                  {
                    OUTLINED_FUNCTION_632();
                    *&p_cf->value = *&v458.value;
                    cf.epoch = v458.epoch;
                    *&rhs.value = *MEMORY[0x1E6960C70];
                    rhs.epoch = v429;
                    OUTLINED_FUNCTION_245();
                    fpfs_StartTrackPlaying();
                    if (updated)
                    {
                      goto LABEL_288;
                    }
                  }
                }

                v293 = 0;
LABEL_302:
                v299 = v293 == -12863 || v293 == -12785;
                if (!v299 && v293)
                {
                  v395 = CMBaseObjectGetDerivedStorage();
                  fpfs_StopPlayingItemWithOSStatus(v395, v65, v293);
                  goto LABEL_407;
                }

                if (v293)
                {
                  goto LABEL_407;
                }
              }

LABEL_376:
              OUTLINED_FUNCTION_586();
              v0 = v438;
              goto LABEL_377;
            }

            IsVideoSync = fpfs_IsVideoSync(v4);
            if (!*(v7 + 112))
            {
              fpfs_PreallocateVideoRendering(v7);
            }

            if (IsVideoSync && (*(v7 + 300) & 1) == 0)
            {
              *(v7 + 288) = v458;
            }

            Head = CMBufferQueueGetHead(*(v7 + 88));
            if (IsVideoSync || Head)
            {
              if (IsVideoSync)
              {
                fpfs_GetTime(v26, &outputPresentationTimeStamp);
                *&p_cf->value = *&v458.value;
                cf.epoch = v458.epoch;
                if (!fpfs_TimeIsAtOrAfter(v424, &cf, &outputPresentationTimeStamp))
                {
                  CMBufferQueueReset(*(v7 + 88));
                  v300 = *(v7 + 112);
                  if (v300)
                  {
                    if (*(v300 + 56))
                    {
                      CMBufferQueueReset(*(v300 + 40));
                    }

                    else
                    {
                      OUTLINED_FUNCTION_277();
                      MEMORY[0x19A8CE710]();
                    }
                  }

                  *(v7 + 201) = 1;
                }
              }
            }

            else if (!*(v7 + 199))
            {
              goto LABEL_376;
            }

            OUTLINED_FUNCTION_632();
            if (*(v7 + 64) == *(v26 + 16 * *(v7 + 196) + 984))
            {
              v333 = OUTLINED_FUNCTION_245();
              fpfs_IsTrialReadyToComplete(v333, v334);
              if (IsVideoSync)
              {
                goto LABEL_390;
              }
            }

            else if (IsVideoSync)
            {
LABEL_390:
              fpfs_CheckVideoSyncQueue();
              if (v339)
              {
                fpfs_FinishVideoSync();
                if (updated)
                {
                  goto LABEL_288;
                }

                goto LABEL_373;
              }
            }

            *(v26 + 1152) = *(v7 + 32);
LABEL_373:
            if (*(v7 + 200) && *(v7 + 168) != 6)
            {
              *(v26 + 1540) = 1;
            }

            goto LABEL_376;
          }

          v44 = v7;
          v45 = 2;
LABEL_152:
          fpfs_ChangeTrackState(v44, v45);
LABEL_153:
          LOBYTE(v26) = 0;
          break;
        case 2:
          OUTLINED_FUNCTION_17();
          if (v49)
          {
            if (*(v7 + 200))
            {
              v313 = *(v7 + 16);
              v314 = CMBaseObjectGetDerivedStorage();
              OUTLINED_FUNCTION_724(v314);
              CMBaseObjectGetDerivedStorage();
              OUTLINED_FUNCTION_142();
              v315 = OUTLINED_FUNCTION_584();
              CMSampleBufferGetOutputPresentationTimeStamp(v316, v315);
              v317 = *(value + 1024);
              if (v317)
              {
                do
                {
                  v318 = *(v317 + 24);
                  if (v317 != v7)
                  {
                    if (!*(v317 + 200) || (OUTLINED_FUNCTION_33(), !v49))
                    {
                      fpfs_DeleteTrack(v313, v317);
                    }
                  }

                  if (!v318)
                  {
                    break;
                  }

                  v317 = v318;
                }

                while (*(value + 1024));
              }

              *(value + 1536) = 1044549468;
              *v436 = *MEMORY[0x1E6960C70];
              *(value + 1496) = *MEMORY[0x1E6960C70];
              LOBYTE(v26) = v429;
              *(value + 1512) = v429;
              OUTLINED_FUNCTION_632();
              v319 = OUTLINED_FUNCTION_618();
              if (!fpfs_CanRenderVideo(v319, v320))
              {
                v321 = OUTLINED_FUNCTION_410();
                fpfs_ChangeTrackState(v321, v322);
                p_cf = &cf;
                goto LABEL_362;
              }

              p_cf = &cf;
              OUTLINED_FUNCTION_210(*&outputPresentationTimeStamp.value);
              *&rhs.value = *v436;
              rhs.epoch = v429;
              fpfs_StartTrackPlaying();
              if (!v330)
              {
                if ((*(value + 332) & 1) != 0 && !*(v7 + 120))
                {
                  OUTLINED_FUNCTION_210(*&outputPresentationTimeStamp.value);
                  fpfs_SetTime(v313, &cf);
                  OUTLINED_FUNCTION_210(*&outputPresentationTimeStamp.value);
                  OUTLINED_FUNCTION_305();
                  fpfs_SeekDidComplete();
                  *(value + 2216) = 0;
                }

LABEL_362:
                v331 = OUTLINED_FUNCTION_765();
                fpfs_UpdateDimensions(v331, v332);
                OUTLINED_FUNCTION_210(*&outputPresentationTimeStamp.value);
                fpfs_StepIFrame();
                if (!v330)
                {
                  fpfs_CheckIfLikelyToKeepUpAndNotify();
                }
              }

              v0 = v438;
              if (v330)
              {
                goto LABEL_407;
              }

              goto LABEL_365;
            }

            if ((v441 & 1) == 0)
            {
              goto LABEL_196;
            }

            if (OUTLINED_FUNCTION_632())
            {
              goto LABEL_407;
            }

            fpfs_ChangeTrackState(v7, 3u);
LABEL_365:
            OUTLINED_FUNCTION_586();
          }

          else
          {
            if (CMSampleBufferGetNumSamples(v4) > 0 || *(v7 + 472) == 1)
            {
              v44 = v7;
              v45 = 3;
              goto LABEL_152;
            }

LABEL_196:
            LOBYTE(v26) = 0;
LABEL_197:
            v99 = 0;
          }

          goto LABEL_377;
        case 3:
          if (v0[92].n128_u8[12])
          {
            OUTLINED_FUNCTION_29();
            if (v49)
            {
              OUTLINED_FUNCTION_390(v411);
              OUTLINED_FUNCTION_5(v73, p_outputPresentationTimeStamp, v406, v407, v408, v409[0], v409[1], v410, v411, v412[0], v412[1], v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v424, key, v426[0], v426[1], v427, v428, v429, v430, v431, v432, v433[0], v433[1], allocator, v435, v436[0], v436[1], v437, v438, v439, v440, v441, v442, v443, v444);
              CMTimeSubtract(v76, v74, v75);
              cf.value = value;
              cf.timescale = timescale;
              *&cf.flags = v519;
              HIDWORD(cf.epoch) = epoch_high;
              v77 = OUTLINED_FUNCTION_716();
              if (CMTimeCompare(v77, v78) <= 0)
              {
                OUTLINED_FUNCTION_17();
                if (v172)
                {
                  v173 = 1;
                }

                else
                {
                  v173 = 0;
                }

                if (v172)
                {
                  v174 = v441 & v173;
                }

                else
                {
                  v301 = *(v7 + 80);
                  v302 = CMBaseObjectGetDerivedStorage();
                  v303 = *(v302 + 1024);
                  if (v303)
                  {
                    v174 = 0;
                    v304 = 0;
                    do
                    {
                      if (*(v303 + 80) == v301 && (*(v303 + 156) & 0x1D) == 1)
                      {
                        v305 = *(v303 + 48);
                        if (v305 == 1936684398)
                        {
                          v304 = 1;
                        }

                        if (v305 == 1986618469)
                        {
                          v174 = 1;
                        }
                      }

                      v303 = *(v303 + 24);
                    }

                    while (v303);
                  }

                  else
                  {
                    v304 = 0;
                    v174 = 0;
                  }

                  if (*(v302 + 1088))
                  {
                    v174 = v304;
                  }

                  p_cf = &cf;
                }

                if (v174)
                {
                  if (*(v7 + 436))
                  {
                    outputPresentationTimeStamp.value = value;
                    outputPresentationTimeStamp.timescale = timescale;
                    OUTLINED_FUNCTION_94();
                    fpfs_TrimAudioTrack(v7, &outputPresentationTimeStamp);
                  }

                  else
                  {
                    CMBufferQueueReset(*(v7 + 88));
                  }
                }
              }
            }
          }

          v79 = CMBufferQueueGetHead(*(v7 + 88));
          if (!v79)
          {
            goto LABEL_103;
          }

          CMSampleBufferGetPresentationTimeStamp(&v450, v79);
          CMTimeMake(&outputPresentationTimeStamp, 100, 1000);
          *&p_cf->value = *&v450.value;
          cf.epoch = v450.epoch;
          v80 = OUTLINED_FUNCTION_716();
          CMTimeAdd(v82, v80, v81);
          *&p_cf->value = *v448;
          OUTLINED_FUNCTION_5(v449, p_outputPresentationTimeStamp, v406, v407, v408, v409[0], v409[1], v410, v411, v412[0], v412[1], v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v424, key, v426[0], v426[1], v427, v428, v429, v430, v431, v432, v433[0], v433[1], allocator, v435, v436[0], v436[1], v437, v438, v439, v440, v441, v442, v443, v444);
          CMTimeAdd(v85, v83, v84);
          v86 = outputPresentationTimeStamp.epoch;
          v449 = outputPresentationTimeStamp.epoch;
          *v448 = *&outputPresentationTimeStamp.value;
          v87 = *&outputPresentationTimeStamp.value;
          outputPresentationTimeStamp = v451;
          *&p_cf->value = v87;
          cf.epoch = v86;
          v88 = OUTLINED_FUNCTION_183();
          if (CMTimeCompare(v88, v89) < 0)
          {
            goto LABEL_103;
          }

          fpfs_AreTracksReadyToPlay();
          if (!v306)
          {
            goto LABEL_103;
          }

          if (fpfs_PerformInitialResolveOfAllWaitingTracks(v439))
          {
            goto LABEL_407;
          }

          v307 = *(v7 + 168);
          if (v307 <= 8 && ((1 << v307) & 0x1D0) != 0)
          {
            goto LABEL_153;
          }

LABEL_103:
          OUTLINED_FUNCTION_632();
          goto LABEL_196;
        case 4:
          OUTLINED_FUNCTION_17();
          if (v49 && !*(v7 + 472))
          {
            fpfs_ChangeTrackState(v7, 5u);
            LOBYTE(v26) = 0;
            v0[29].n128_u8[6] = 0;
            break;
          }

          OUTLINED_FUNCTION_309();
          fpfs_PushToNonVideoLateJoiner();
          if (v171)
          {
            goto LABEL_407;
          }

          goto LABEL_365;
        case 6:
          if (!*(v7 + 200))
          {
            goto LABEL_195;
          }

          OUTLINED_FUNCTION_17();
          if (!v49)
          {
            goto LABEL_195;
          }

          if (v0[96].n128_u8[4])
          {
            goto LABEL_407;
          }

          if (fpfs_IsVideoSync(v4))
          {
            outputPresentationTimeStamp.value = value;
            outputPresentationTimeStamp.timescale = timescale;
            LOBYTE(v26) = timescale;
            *&outputPresentationTimeStamp.flags = v519;
            HIDWORD(outputPresentationTimeStamp.epoch) = epoch_high;
            OUTLINED_FUNCTION_390(MEMORY[0x1E6960CC0]);
            cf.epoch = v323;
            v324 = OUTLINED_FUNCTION_183();
            if (CMTimeCompare(v324, v325) < 0)
            {
              OUTLINED_FUNCTION_358();
              LOBYTE(v26) = BYTE4(v427);
            }

            OUTLINED_FUNCTION_431();
            CMSampleBufferSetOutputPresentationTimeStamp(v4, v326);
            v327 = OUTLINED_FUNCTION_309();
            fpfs_RenderBuffer(v327, v328);
            OUTLINED_FUNCTION_431();
            fpfs_StepIFrame();
            if (v329)
            {
              goto LABEL_407;
            }

            goto LABEL_365;
          }

          if (dword_1EAF169F0 < 2)
          {
            goto LABEL_196;
          }

          v437 = v4;
          OUTLINED_FUNCTION_212();
          v95 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_466(v95);
          OUTLINED_FUNCTION_125();
          if (v49)
          {
            LODWORD(v26) = v96;
          }

          else
          {
            LODWORD(v26) = v4;
          }

          if (v26)
          {
            v97 = v0->n128_u64[0];
            if (v0->n128_u64[0])
            {
              v98 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v98 = "";
            }

            v308 = *(v7 + 16);
            if (v308)
            {
              v309 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v309 = "";
            }

            *&outputPresentationTimeStamp.value = *&v451.value;
            OUTLINED_FUNCTION_244(v451.epoch);
            v311 = CMTimeGetSeconds(v310);
            v312 = *(v438 + 928);
            LODWORD(cf.value) = v426[0];
            *(&cf.value + 4) = "fpfs_PushSampleBuffer";
            LOWORD(cf.flags) = 2048;
            *(&cf.flags + 2) = v97;
            HIWORD(cf.epoch) = 2082;
            v504 = v98;
            p_cf = &cf;
            v505 = 2048;
            v506 = v308;
            v507 = 2082;
            v508 = v309;
            v0 = v438;
            v509 = 2048;
            *v510 = v311;
            *&v510[8] = 1024;
            *&v510[10] = v312;
            OUTLINED_FUNCTION_101();
            OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_566();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          OUTLINED_FUNCTION_586();
          v4 = v437;
          goto LABEL_377;
        case 7:
          v90 = OUTLINED_FUNCTION_584();
          fpfs_GetEndOutputPresentationTimeStamp(v90, v91);
          OUTLINED_FUNCTION_155();
          v92 = OUTLINED_FUNCTION_183();
          if (CMTimeCompare(v92, v93) < 0)
          {
            if (fpfs_IsVideoSync(v4))
            {
              v94 = *(v7 + 112);
              if (v94)
              {
                if (*(v94 + 56))
                {
                  CMBufferQueueReset(*(v94 + 40));
                }

                else
                {
                  OUTLINED_FUNCTION_277();
                  MEMORY[0x19A8CE710]();
                }
              }

              *(v7 + 201) = 1;
            }

            fpfs_DoNotDisplay(v4);
LABEL_195:
            v169 = OUTLINED_FUNCTION_309();
            fpfs_RenderBuffer(v169, v170);
            goto LABEL_196;
          }

          LOBYTE(v26) = v0;
          v175 = *(v7 + 112);
          if (v175)
          {
            v176 = v445->n128_u64[0];
            if (v445->n128_u64[0] != v7 && v176)
            {
              do
              {
                if (*(v176 + 112) == v175)
                {
                  break;
                }

                v176 = *(v176 + 24);
              }

              while (v176 != v7 && v176 != 0);
            }

            if (v176 == v7)
            {
              FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v175 + 32));
              v179 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v179)
              {
                v179(FigBaseObject, v408, v407);
              }
            }
          }

          OUTLINED_FUNCTION_632();
          outputPresentationTimeStamp = *(v7 + 208);
          *&p_cf->value = *MEMORY[0x1E6960C70];
          cf.epoch = v429;
          OUTLINED_FUNCTION_245();
          fpfs_StartTrackPlaying();
          if (v180)
          {
            goto LABEL_407;
          }

          goto LABEL_365;
        case 8:
          v99 = dword_1EAF169F0;
          if (dword_1EAF169F0)
          {
            v20 = timescale;
            v437 = v4;
            LODWORD(rhs.value) = 0;
            LOBYTE(type.value) = 0;
            v100 = OUTLINED_FUNCTION_823();
            OUTLINED_FUNCTION_466(v100);
            OUTLINED_FUNCTION_125();
            if (v49)
            {
              LODWORD(v26) = v101;
            }

            else
            {
              LODWORD(v26) = v4;
            }

            if (v26)
            {
              v102 = v0->n128_u64[0];
              if (v0->n128_u64[0])
              {
                v103 = value;
                v104 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v103 = value;
                v104 = "";
              }

              v436[0] = v104;
              v165 = *(v7 + 16);
              if (v165)
              {
                v166 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v166 = "";
              }

              v167 = *(v7 + 32);
              outputPresentationTimeStamp.value = v103;
              outputPresentationTimeStamp.timescale = timescale;
              *&outputPresentationTimeStamp.flags = v519;
              HIDWORD(outputPresentationTimeStamp.epoch) = epoch_high;
              v168 = CMTimeGetSeconds(&outputPresentationTimeStamp);
              LODWORD(cf.value) = v426[0];
              *(&cf.value + 4) = "fpfs_PushSampleBuffer";
              LOWORD(cf.flags) = 2048;
              *(&cf.flags + 2) = v102;
              HIWORD(cf.epoch) = 2082;
              v504 = v436[0];
              v505 = 2048;
              v506 = v165;
              v507 = 2082;
              v508 = v166;
              v509 = 1024;
              *v510 = v167;
              p_cf = &cf;
              *&v510[4] = 2048;
              *&v510[6] = v168;
              OUTLINED_FUNCTION_101();
              OUTLINED_FUNCTION_30();
              OUTLINED_FUNCTION_566();
              _os_log_send_and_compose_impl();
              v148 = v438;
            }

            else
            {
              v148 = v0;
            }

            OUTLINED_FUNCTION_279();
            OUTLINED_FUNCTION_110();
            OUTLINED_FUNCTION_417();
            OUTLINED_FUNCTION_586();
            v4 = v437;
            v0 = v148;
          }

          else
          {
            LOBYTE(v26) = 0;
          }

          goto LABEL_377;
        default:
          goto LABEL_197;
      }

LABEL_154:
      v99 = 1;
LABEL_377:
      v335 = v445;
      do
      {
        v336 = v335->n128_u64[0];
        v335 = (v335->n128_u64[0] + 24);
        if (v336)
        {
          v337 = v336 == v7;
        }

        else
        {
          v337 = 1;
        }
      }

      while (!v337);
      if (!v336)
      {
        v338 = v0[65].n128_u64[0];
        if (!v338)
        {
LABEL_400:
          OUTLINED_FUNCTION_212();
          v355 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v356 = rhs.value;
          if (os_log_type_enabled(v355, type.value))
          {
            v357 = v356;
          }

          else
          {
            v357 = v356 & 0xFFFFFFFE;
          }

          if (v357)
          {
            LODWORD(cf.value) = 136315138;
            *(&p_cf->value + 4) = "fpfs_PushSampleBuffer";
            OUTLINED_FUNCTION_65();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_16();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          OUTLINED_FUNCTION_120();
          goto LABEL_406;
        }

        while (v338 != v7)
        {
          v338 = *(v338 + 24);
          if (!v338)
          {
            goto LABEL_400;
          }
        }
      }

      if ((v99 & 1) == 0)
      {
        OUTLINED_FUNCTION_29();
        if (!v358)
        {
          goto LABEL_436;
        }

        v359 = v0;
        LODWORD(v522) = 0;
        v521 = 0;
        memset(&type, 0, sizeof(type));
        CMSampleBufferGetOutputDuration(&type, v4);
        v360 = OUTLINED_FUNCTION_584();
        CMSampleBufferGetOutputPresentationTimeStamp(v361, v360);
        v362 = outputPresentationTimeStamp.value;
        v519 = *&outputPresentationTimeStamp.flags;
        v363 = outputPresentationTimeStamp.timescale;
        epoch_high = HIDWORD(outputPresentationTimeStamp.epoch);
        if (v441)
        {
          OUTLINED_FUNCTION_17();
          if (v49)
          {
            if ((v359[94].n128_u8[4] & 1) != 0 && !*(v7 + 200))
            {
              OUTLINED_FUNCTION_142();
              cf.value = v362;
              *&cf.flags = v519;
              cf.timescale = v363;
              HIDWORD(cf.epoch) = epoch_high;
              OUTLINED_FUNCTION_8(v364);
              CMTimeSubtract(v367, v365, v366);
              v368 = v359[95].n128_f64[1];
              cf = outputPresentationTimeStamp;
              v359[95].n128_f64[1] = (fabs(CMTimeGetSeconds(&cf)) + v368 * 4.0) / 5.0;
            }

            v359[93].n128_u64[1] = v362;
            v359[94].n128_u32[0] = v363;
            *(v359[94].n128_u64 + 4) = v519;
            v359[94].n128_u32[3] = epoch_high;
            p_cf = &cf;
          }
        }

        OUTLINED_FUNCTION_29();
        if (v49)
        {
          cf.value = v362;
          *&p_cf->flags = v519;
          cf.timescale = v363;
          HIDWORD(cf.epoch) = epoch_high;
          *&rhs.value = OUTLINED_FUNCTION_259();
          OUTLINED_FUNCTION_14(type.epoch);
          CMTimeAdd(v371, v369, v370);
          v362 = outputPresentationTimeStamp.value;
          v521 = *&outputPresentationTimeStamp.flags;
          v363 = outputPresentationTimeStamp.timescale;
          v372 = HIDWORD(outputPresentationTimeStamp.epoch);
        }

        else
        {
          v521 = v519;
          v372 = epoch_high;
        }

        LODWORD(v522) = v372;
        v373 = (v7 + 232);
        if ((*(v7 + 244) & 1) == 0 || (*&outputPresentationTimeStamp.value = *v373, outputPresentationTimeStamp.epoch = *(v7 + 248), cf.value = v362, *&cf.flags = v521, cf.timescale = v363, HIDWORD(cf.epoch) = v522, v374 = OUTLINED_FUNCTION_183(), CMTimeCompare(v374, v375) < 0))
        {
          *(v7 + 232) = v362;
          *(v7 + 240) = v363;
          *(v7 + 244) = v521;
          *(v7 + 252) = v522;
        }

        v0 = v359;
        if (v359[30].n128_u8[12])
        {
          *&outputPresentationTimeStamp.value = *v373;
          outputPresentationTimeStamp.epoch = *(v7 + 248);
          cf = *v359[30].n128_u8;
          v376 = OUTLINED_FUNCTION_183();
          if (CMTimeCompare(v376, v377) >= 1)
          {
            v359[30] = *MEMORY[0x1E6960C70];
            v359[31].n128_u64[0] = v429;
            fpfsi_EnqueueEndTimeChangedNotification();
          }
        }

        if (!fpfs_UseTrackToSetPumpOffset(v7))
        {
          goto LABEL_436;
        }

        memset(&v458, 0, sizeof(v458));
        CMSampleBufferGetPresentationTimeStamp(&v458, v4);
        v456 = 0uLL;
        v457 = 0;
        outputPresentationTimeStamp = v458;
        cf = v446;
        v378 = OUTLINED_FUNCTION_183();
        CMTimeSubtract(v380, v378, v379);
        memset(&v455, 0, sizeof(v455));
        OUTLINED_FUNCTION_739();
        OUTLINED_FUNCTION_317();
        OUTLINED_FUNCTION_14(v381);
        CMTimeSubtract(v384, v382, v383);
        OUTLINED_FUNCTION_43();
        v385 = OUTLINED_FUNCTION_183();
        CMTimeAdd(v387, v385, v386);
        OUTLINED_FUNCTION_142();
        OUTLINED_FUNCTION_161();
        OUTLINED_FUNCTION_317();
        v0 = v359;
        OUTLINED_FUNCTION_14(v388);
        CMTimeAdd(v391, v389, v390);
        OUTLINED_FUNCTION_17();
        if (!v49 || !*(v7 + 200) || fpfs_IsVideoSync(v4))
        {
          OUTLINED_FUNCTION_343((v359 + 24 * *(v7 + 196)), *&outputPresentationTimeStamp.value);
          fpfs_UpdatePumpOffset(v439, v392, v393);
        }

        if (!v359[98].n128_u64[0] && !v359[98].n128_u64[1] || (OUTLINED_FUNCTION_309(), !fpfs_UpdateDateInfo()))
        {
LABEL_436:
          OUTLINED_FUNCTION_17();
          if (v49)
          {
            v394 = *(v7 + 24);
            if (v394)
            {
              while (*(v394 + 48) != 1986618469 || *(v394 + 168) != 1 || *(v394 + 64) != *(v443 + 16 * *(v394 + 196) + 8))
              {
                v394 = *(v394 + 24);
                if (!v394)
                {
                  goto LABEL_445;
                }
              }

              v0[72].n128_u64[0] = *(v394 + 32);
            }
          }

LABEL_445:
          if (v0[33].n128_u8[1])
          {
            fpfs_CallDispatchHandlerWithItemAndTrack(v439, 0, fpfs_endTimerProc);
          }
        }

        goto LABEL_407;
      }
    }

    if (!*(v7 + 168))
    {
LABEL_53:
      LODWORD(v436[0]) = timescale;
      if ((v441 & 2) != 0)
      {
        *(v7 + 472) = 1;
      }

      OUTLINED_FUNCTION_29();
      if (v49)
      {
        *&outputPresentationTimeStamp.value = *&v451.value;
        OUTLINED_FUNCTION_244(v451.epoch);
        v47 = CMTimeCopyAsDictionary(v46, allocator);
        for (i = v445->n128_u64[0]; i; i = *(i + 24))
        {
          if (*(i + 80) == *(v7 + 80))
          {
            v49 = (*(i + 244) & 0x1D) == 1 || v47 == 0;
            if (!v49)
            {
              v50 = *(i + 64);
              v51 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v51)
              {
                v51(v50, v440, v47);
              }
            }
          }
        }

        p_cf = &cf;
        if (v47)
        {
          CFRelease(v47);
        }
      }

      v52 = OUTLINED_FUNCTION_309();
      if (fpfs_SetTrackStartTimeAndTimeOffset(v52, v53, 1))
      {
        goto LABEL_407;
      }

      v54 = *(v7 + 64);
      v55 = *(v7 + 196);
      if ((v54 == *(v443 + 16 * v55) || v54 == *(v443 + 16 * v55 + 8)) && (*(v7 + 156) & 0x1D) == 1)
      {
        v56 = *(v7 + 144);
        v57 = v430 + 24 * *(v7 + 196);
        *(v57 + 16) = *(v7 + 160);
        *v57 = v56;
      }

      if (!*(v7 + 168))
      {
        fpfs_ChangeTrackState(v7, 2u);
      }

      v58 = OUTLINED_FUNCTION_584();
      CMSampleBufferGetDuration(v59, v58);
      v447 = outputPresentationTimeStamp;
      if (dword_1EAF169F0)
      {
        OUTLINED_FUNCTION_212();
        v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v61 = rhs.value;
        v432 = v60;
        LODWORD(v431) = LOBYTE(type.value);
        os_log_type_enabled(v60, type.value);
        OUTLINED_FUNCTION_233();
        if (v49)
        {
          v63 = v62;
        }

        else
        {
          v63 = v61;
        }

        if (v63)
        {
          v64 = v0->n128_u64[0];
          if (v0->n128_u64[0])
          {
            v424 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v424 = "";
          }

          v437 = v4;
          if (v439)
          {
            v422 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v422 = "";
          }

          v419 = *(v7 + 32);
          v420 = v451.value;
          LODWORD(v421) = v451.timescale;
          *&outputPresentationTimeStamp.value = *&v451.value;
          OUTLINED_FUNCTION_244(v451.epoch);
          v106 = CMTimeGetSeconds(v105);
          outputPresentationTimeStamp.value = value;
          outputPresentationTimeStamp.timescale = v436[0];
          OUTLINED_FUNCTION_94();
          v107 = CMTimeGetSeconds(&outputPresentationTimeStamp);
          v108 = "(gap track)";
          if (!*(v7 + 472))
          {
            v108 = "";
          }

          v415 = v108;
          v416 = v447.value;
          v417 = *(v7 + 80);
          HIDWORD(v418) = v447.timescale;
          *&outputPresentationTimeStamp.value = *&v447.value;
          OUTLINED_FUNCTION_244(v447.epoch);
          v110 = CMTimeGetSeconds(v109);
          HIDWORD(v414) = *(v7 + 216);
          *&outputPresentationTimeStamp.value = *(v7 + 208);
          v111 = outputPresentationTimeStamp.value;
          OUTLINED_FUNCTION_244(*(v7 + 224));
          v113 = CMTimeGetSeconds(v112);
          v115 = *(v7 + 152);
          *&outputPresentationTimeStamp.value = *(v7 + 144);
          v114 = outputPresentationTimeStamp.value;
          OUTLINED_FUNCTION_244(*(v7 + 160));
          v117 = CMTimeGetSeconds(v116);
          LODWORD(outputPresentationTimeStamp.value) = v433[0];
          *(&outputPresentationTimeStamp.value + 4) = "fpfs_PushSampleBuffer";
          LOWORD(outputPresentationTimeStamp.flags) = 2048;
          *(&outputPresentationTimeStamp.flags + 2) = v64;
          HIWORD(outputPresentationTimeStamp.epoch) = 2082;
          v462 = v424;
          v463 = 2048;
          v464 = v439;
          v465 = 2082;
          v466 = v422;
          v467 = 1024;
          v468 = v419;
          v469 = 2048;
          v470 = v420;
          v471 = 1024;
          v472 = v421;
          v473 = 2048;
          v474 = v106;
          v475 = 2048;
          v476 = value;
          v477 = 1024;
          v478 = v436[0];
          v479 = 2048;
          v480 = v107;
          v481 = 1024;
          v482 = v417;
          v483 = 2082;
          v484 = v415;
          v485 = 2048;
          v486 = v416;
          v487 = 1024;
          v488 = HIDWORD(v418);
          v489 = 2048;
          v490 = v110;
          v491 = 2048;
          v492 = v111;
          v493 = 1024;
          v494 = HIDWORD(v414);
          v495 = 2048;
          v496 = v113;
          v497 = 2048;
          v498 = v114;
          v499 = 1024;
          v500 = v115;
          v501 = 2048;
          v502 = v117;
          LODWORD(v406) = 204;
          p_outputPresentationTimeStamp = &outputPresentationTimeStamp;
          OUTLINED_FUNCTION_34();
          _os_log_send_and_compose_impl();
          v4 = v437;
          v0 = v438;
          p_cf = &cf;
          v20 = &unk_1EAF16000;
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_467();
      }

      if (!*(v7 + 168))
      {
        if (dword_1EAF169F0)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(type.value) = 0;
          v396 = OUTLINED_FUNCTION_823();
          OUTLINED_FUNCTION_466(v396);
          OUTLINED_FUNCTION_125();
          if (v49)
          {
            v398 = v397;
          }

          else
          {
            v398 = v4;
          }

          if (v398)
          {
            v399 = v0->n128_u64[0];
            if (v399)
            {
              v400 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v400 = "";
            }

            v401 = v439;
            if (v439)
            {
              v402 = CMBaseObjectGetDerivedStorage();
              v401 = v439;
              v403 = (v402 + 3096);
            }

            else
            {
              v403 = "";
            }

            v404 = *(v7 + 32);
            LODWORD(cf.value) = 136316418;
            *(&cf.value + 4) = "fpfs_PushSampleBuffer";
            LOWORD(cf.flags) = 2048;
            *(&cf.flags + 2) = v399;
            HIWORD(cf.epoch) = 2082;
            v504 = v400;
            v505 = 2048;
            v506 = v401;
            v507 = 2082;
            v508 = v403;
            v509 = 1024;
            *v510 = v404;
            OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_566();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_407;
      }

      goto LABEL_154;
    }

    if (!v4)
    {
      goto LABEL_409;
    }

    CMBaseObjectGetDerivedStorage();
    if (!*(v7 + 436) || (CMBufferQueueGetMinPresentationTimeStamp(&outputPresentationTimeStamp, *(v7 + 88)), (outputPresentationTimeStamp.flags & 1) != 0))
    {
      v38 = timescale;
    }

    else
    {
      v38 = timescale;
      cf.value = 0;
      v39 = OUTLINED_FUNCTION_615();
      if (FigCreateReplacementAudioSBufByOmittingLeadingDependentPackets(v39, v40, v41))
      {
        v42 = cf.value;
        if (cf.value)
        {
          CFRetain(cf.value);
        }

        CFRelease(v4);
        if (cf.value)
        {
          CFRelease(cf.value);
        }

        if (!v42)
        {
          goto LABEL_409;
        }

        goto LABEL_43;
      }
    }

    v42 = v4;
LABEL_43:
    CMSampleBufferGetPresentationTimeStamp(&outputPresentationTimeStamp, v42);
    v451 = outputPresentationTimeStamp;
    OUTLINED_FUNCTION_29();
    if (v49)
    {
      CMSampleBufferGetOutputPresentationTimeStamp(&outputPresentationTimeStamp, v42);
      value = outputPresentationTimeStamp.value;
      OUTLINED_FUNCTION_714();
      v4 = v42;
      timescale = v43;
    }

    else
    {
      v4 = v42;
      timescale = v38;
    }

    goto LABEL_46;
  }

LABEL_407:
  if (v4)
  {
    CFRelease(v4);
  }

LABEL_409:
  OUTLINED_FUNCTION_181();
}

void fpfs_PushToNonVideoLateJoiner()
{
  OUTLINED_FUNCTION_261();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v84, 0, sizeof(v84));
  fpfs_GetEndOutputPresentationTimeStamp(v1, &v84);
  v82 = *(v0 + 208);
  v83 = *(v0 + 224);
  OUTLINED_FUNCTION_744();
  fpfs_GetTime(DerivedStorage, &v80);
  OUTLINED_FUNCTION_33();
  if (!v3 || *(v0 + 472))
  {
    OUTLINED_FUNCTION_688();
    if ((OUTLINED_FUNCTION_268(v81, v53, v57, v61, v65, v80.n128_i64[0], v80.n128_i64[1], v73, v76, time2.value) & 0x80000000) != 0)
    {
      v82 = v80;
      v83 = v81;
    }

    OUTLINED_FUNCTION_658();
    if (OUTLINED_FUNCTION_268(v81, v54, v58, v62, v66, v80.n128_i64[0], v80.n128_i64[1], v74, v77, time2.value) > 0 || (v70 = v82.n128_u8[0], OUTLINED_FUNCTION_107(v0 + 412), v12 = OUTLINED_FUNCTION_137(v4, v5, v6, v7, v8, v9, v10, v11, v55, v59, v63, v67, v70), CMTimeSubtract(v14, v12, v13), value = v84.value, OUTLINED_FUNCTION_269(), CMTimeCompare(v15, &time2) >= 1))
    {
      if (*(v0 + 48) != 1936684398)
      {
        v71 = v82.n128_u8[0];
        v75 = v83;
        OUTLINED_FUNCTION_107(v0 + 412);
        v24 = OUTLINED_FUNCTION_137(v16, v17, v18, v19, v20, v21, v22, v23, v55, v59, v63, v67, v71);
        CMTimeSubtract(v26, v24, v25);
        v72 = *&v84.value;
        OUTLINED_FUNCTION_269();
        if (CMTimeCompare(v27, &time2) < 1)
        {
          return;
        }

        CMBufferQueueEnqueue(*(v0 + 88), v1);
        OUTLINED_FUNCTION_658();
        OUTLINED_FUNCTION_154();
        v36 = OUTLINED_FUNCTION_281(v28, v29, v30, v31, v32, v33, v34, v35, v56, v60, v64, v68, v72, *(&v72 + 1), v75, v78, time2.value);
        if (CMTimeCompare(v36, v37) <= 0)
        {
          return;
        }

        goto LABEL_11;
      }

      OUTLINED_FUNCTION_335();
      CMTimeMake(&time2, 250, 1000);
      OUTLINED_FUNCTION_401();
      if (!v3)
      {
        OUTLINED_FUNCTION_154();
        v48 = OUTLINED_FUNCTION_175(v40, v41, v42, v43, v44, v45, v46, v47, time2.value, *&time2.timescale, time2.epoch, v67, value);
        CMTimeAdd(v50, v48, v49);
      }

      OUTLINED_FUNCTION_154();
      v51 = OUTLINED_FUNCTION_412();
      if (fpfs_IsAudioTrackReadyToStart(v51, v1, v52, 0))
      {
LABEL_11:
        OUTLINED_FUNCTION_688();
        OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
        OUTLINED_FUNCTION_177();
        fpfs_StartTrackPlaying();
        if (!v38)
        {
          for (i = *(CMBaseObjectGetDerivedStorage() + 1024); i; i = *(i + 24))
          {
            if (*(i + 48) == 1936684398 && *(i + 112))
            {
              break;
            }
          }

          if (i == v0)
          {
            fpfs_SetRateOnTrack();
          }
        }
      }
    }
  }
}

uint64_t fpfs_UpdateDateInfo()
{
  OUTLINED_FUNCTION_400();
  v97 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_29();
  if (v4)
  {
    v5 = v3;
    if (*(v3 + 1568))
    {
      v2 = *(v0 + 16);
      v6 = (v3 + 1160);
      CMSampleBufferGetPresentationTimeStamp(&time1, v1);
      lhs = *(v5 + 1544);
      *&rhs.value = *v6;
      rhs.epoch = *(v5 + 1176);
      v84 = *(v0 + 144);
      v7 = OUTLINED_FUNCTION_502();
      result = fpfsi_AddDateToQueue(v7, v8, v9, v10, v11, v12, v13, 0, 1);
      if (result)
      {
        return result;
      }

      v15 = *(v5 + 1568);
      if (v15)
      {
        CFRelease(v15);
        *(v5 + 1568) = 0;
      }
    }

    if (*(v5 + 1576) && (*(v5 + 1484) & 1) != 0)
    {
      v16 = (v5 + 1472);
      memset(&v84, 0, sizeof(v84));
      CMSampleBufferGetPresentationTimeStamp(&v96, v1);
      lhs = v96;
      OUTLINED_FUNCTION_104(v0 + 412);
      CMTimeSubtract(&time1, &lhs, &rhs);
      lhs = *(v0 + 144);
      CMTimeAdd(&v84, &time1, &lhs);
      OUTLINED_FUNCTION_514();
      time1 = v84;
      lhs = *(v5 + 1160);
      CMTimeAdd(&rhs, &time1, &lhs);
      lhs = rhs;
      OUTLINED_FUNCTION_774();
      fpfs_GetTimeForDate();
      v96.value = time1.value;
      flags = time1.flags;
      v96.timescale = time1.timescale;
      if (time1.flags)
      {
        epoch = time1.epoch;
        *v16 = v96.value;
        *(v5 + 1480) = v96.timescale;
        *(v5 + 1484) = flags;
        *(v5 + 1488) = epoch;
      }

      time1 = *(v0 + 208);
      *&lhs.value = *v16;
      lhs.epoch = *(v5 + 1488);
      if (CMTimeCompare(&time1, &lhs) < 1)
      {
        if (!dword_1EAF169F0)
        {
          goto LABEL_34;
        }

        OUTLINED_FUNCTION_427();
        OUTLINED_FUNCTION_279();
        v36 = OUTLINED_FUNCTION_371();
        OUTLINED_FUNCTION_465(v36, v37, v38, v39, v40, v41, v42, v43, v66, v69, v72, v75, v78, v81, SBYTE2(v81), BYTE3(v81), SHIDWORD(v81));
        OUTLINED_FUNCTION_40();
        if (v2)
        {
          if (*v5)
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            v52 = (DerivedStorage + 888);
          }

          else
          {
            v52 = "";
          }

          v80 = v52;
          v60 = *(v0 + 16);
          if (v60)
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            v61 = (DerivedStorage + 3096);
          }

          else
          {
            v61 = "";
          }

          OUTLINED_FUNCTION_553(DerivedStorage, v45, v46, v47, v48, v49, v50, v51, v68, v71, v74, v76, v80, v83, v84.value, *&v84.timescale, v84.epoch, v85, rhs.value, *&rhs.timescale, rhs.epoch, v87, lhs.value, *&lhs.timescale, lhs.epoch, v89, *v90, *&v90[8], *&v90[16], v91, *&v92, v93, *(&v93 + 1), v94, time1.value);
          LODWORD(lhs.value) = 136316674;
          OUTLINED_FUNCTION_336();
          *&v90[2] = v60;
          *&v90[10] = v62;
          *&v90[12] = v61;
          OUTLINED_FUNCTION_787(v63);
          v92 = *&v64;
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_456();
        }
      }

      else
      {
        OUTLINED_FUNCTION_427();
        OUTLINED_FUNCTION_279();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_465(os_log_and_send_and_compose_flags_and_os_log_type, v20, v21, v22, v23, v24, v25, v26, v66, v69, v72, v75, v78, v81, SBYTE2(v81), BYTE3(v81), SHIDWORD(v81));
        OUTLINED_FUNCTION_40();
        if (v2)
        {
          if (*v5)
          {
            v27 = CMBaseObjectGetDerivedStorage();
            v35 = (v27 + 888);
          }

          else
          {
            v35 = "";
          }

          v79 = v35;
          v53 = *(v0 + 16);
          if (v53)
          {
            v27 = CMBaseObjectGetDerivedStorage();
            v54 = (v27 + 3096);
          }

          else
          {
            v54 = "";
          }

          v55 = OUTLINED_FUNCTION_553(v27, v28, v29, v30, v31, v32, v33, v34, v67, v70, v73, v54, v79, v82, v84.value, *&v84.timescale, v84.epoch, v85, rhs.value, *&rhs.timescale, rhs.epoch, v87, lhs.value, *&lhs.timescale, lhs.epoch, v89, *v90, *&v90[8], *&v90[16], v91, *&v92, v93, *(&v93 + 1), v94, time1.value);
          time1 = *(v0 + 208);
          CMTimeGetSeconds(&time1);
          LODWORD(lhs.value) = 136316930;
          OUTLINED_FUNCTION_336();
          *&v90[2] = v53;
          *&v90[10] = v56;
          *&v90[12] = v77;
          OUTLINED_FUNCTION_787(v57);
          v92 = v55;
          LOWORD(v93) = v58;
          *(&v93 + 2) = v59;
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_456();
        }
      }

      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_414();
LABEL_34:
      v65 = *(v5 + 1576);
      if (v65)
      {
        CFRelease(v65);
        *(v5 + 1576) = 0;
      }
    }
  }

  return 0;
}

uint64_t fpfsi_CanReuseRenderChainForTrack()
{
  OUTLINED_FUNCTION_400();
  CMBaseObjectGetDerivedStorage();
  if (!v0)
  {
    return 0;
  }

  if (*(v1 + 112) == v0 && fpfs_FormatsAreCompatible(*(v1 + 16), *(v0 + 16), *(v1 + 56)))
  {
    return 1;
  }

  OUTLINED_FUNCTION_63();
  if (v2)
  {
    FigGetAllocatorForMedia();
    v3 = OUTLINED_FUNCTION_413();
    FigRenderPipelineGetFigBaseObject(v3);
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v4 = OUTLINED_FUNCTION_308();
      v5(v4);
    }

    return *(CMBaseObjectGetDerivedStorage() + 504) && !*MEMORY[0x1E695E4D0] && (_os_feature_enabled_impl() & 1) != 0;
  }

  v7 = *(v1 + 16);
  v8 = *(v0 + 16);
  v9 = *(v1 + 56);

  return fpfs_FormatsAreCompatible(v7, v8, v9);
}

void fpfs_createMetadataOutputRenderChainsAndAttachToPrimary()
{
  OUTLINED_FUNCTION_629();
  v19 = v0;
  v20 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v6 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  if (!FPSupport_CreateAndAddMetadataOutputRenderPipelinesForTrackWithID(*(DerivedStorage + 1888), *(v7 + 32), &theArray) && CFArrayGetCount(theArray) >= 1)
  {
    for (i = 0; i < CFArrayGetCount(theArray); ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v12 = malloc_type_calloc(1uLL, 0x90uLL, 0x1060040EF867D01uLL);
      v13 = v12;
      if (v12)
      {
        ++*v12;
        v12[4] = CFRetain(ValueAtIndex);
        v13[2] = CFRetain(v5);
        v14 = v13[4];
        AllocatorForMedia = FigGetAllocatorForMedia();
        FigBaseObject = FigRenderPipelineGetFigBaseObject(v14);
        v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v17 || v17(FigBaseObject, @"SourceSampleBufferQueue", AllocatorForMedia, v13 + 5))
        {
          fpfs_releaseRenderChain(v8);
          continue;
        }
      }

      else
      {
        OUTLINED_FUNCTION_376();
        if (FigSignalErrorAtGM())
        {
          continue;
        }
      }

      v3[11] = v13;
      v3 = v13;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  OUTLINED_FUNCTION_320();
}

uint64_t fpfs_createLegibleOutputRenderChainsAndAttachToPrimary(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v28 = 0;
  if (!*(DerivedStorage + 1872))
  {
    return 0;
  }

  v10 = DerivedStorage;
  if (!*(DerivedStorage + 1880))
  {
    return 0;
  }

  fpfsi_GetDimensions(a2, &v28 + 1, &v28);
  FigLegibleOutputManagerSetVideoDisplaySize(*(v10 + 1872), *(&v28 + 1), *&v28);
  v11 = FigLegibleOutputManagerCreateAndRegisterRenderPipelinesForFormat(*(v10 + 1872), a3);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v26 = a1;
  v27 = a4;
  Count = CFArrayGetCount(v11);
  if (Count < 1)
  {
LABEL_17:
    CFRelease(v12);
    return 0;
  }

  v14 = Count;
  v15 = 0;
  while (1)
  {
    v16 = malloc_type_calloc(1uLL, 0x90uLL, 0x1060040EF867D01uLL);
    if (!v16)
    {
      break;
    }

    v17 = v16;
    a4[11] = v16;
    ++*v16;
    ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
    v17[4] = ValueAtIndex;
    CFRetain(ValueAtIndex);
    if (CMFormatDescriptionGetMediaType(a3) == 1935832172)
    {
      v19 = fpfsi_prepareSubtitleRenderPipeline(a2, v17[4]);
      if (v19)
      {
        goto LABEL_16;
      }
    }

    else if (CMFormatDescriptionGetMediaType(a3) == 1668047728)
    {
      v19 = fpfs_prepareClosedCaptionRenderPipeline(v26, a2, v17[4]);
      if (v19)
      {
LABEL_16:
        v23 = v19;
LABEL_21:
        CFRelease(v12);
        v25 = v27;
        goto LABEL_22;
      }
    }

    FigGetAllocatorForMedia();
    v20 = OUTLINED_FUNCTION_758();
    FigBaseObject = FigRenderPipelineGetFigBaseObject(v20);
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v22)
    {
      v23 = 4294954514;
      goto LABEL_21;
    }

    v19 = v22(FigBaseObject, @"SourceSampleBufferQueue", v4, v17 + 5);
    if (v19)
    {
      goto LABEL_16;
    }

    v17[2] = FigFormatDescriptionRetain();
    ++v15;
    a4 = v17;
    if (v14 == v15)
    {
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_120();
  v23 = FigSignalErrorAtGM();
  CFRelease(v12);
  v25 = v27;
  if (!v23)
  {
    return v23;
  }

LABEL_22:
  if (v25[11])
  {
    fpfs_releaseRenderChain(a2);
    v25[11] = 0;
  }

  return v23;
}

void fpfsi_createOutputDestinationForMetadata()
{
  OUTLINED_FUNCTION_653();
  v2 = v1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = FigStreamingPlayerCombinedVideoDestinationCopyFVTs(*(v4 + 376));
  OUTLINED_FUNCTION_217();
  if (v8 && fpfs_canSendMetadataTrackToVideoTargets())
  {
    v6 = *(v0 + 1024);
    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = *(v6 + 112) != *(v2 + 112) || v6 == v2;
        if (!v8)
        {
          v7 = v6;
        }

        v6 = *(v6 + 24);
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v10 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"M.%d");
    if (v10)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetValue();
    }

    else
    {
      Mutable = 0;
    }

    v12 = FigGetAllocatorForMedia();
    if (v7)
    {
      v13 = *(v7 + 104);
    }

    else
    {
      v13 = 0;
    }

    FigAggregateVideoDestinationForDataQueueCreate(v12, v5, *(v0 + 576), *(v2 + 56), v13, Mutable, (v2 + 104));
    if (v5)
    {
      goto LABEL_21;
    }
  }

  else
  {
    Mutable = 0;
    v10 = 0;
    if (v5)
    {
LABEL_21:
      CFRelease(v5);
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  OUTLINED_FUNCTION_652();
}

uint64_t fpfs_prepareClosedCaptionRenderPipeline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  fpfsi_GetClosedCaptionType();
  OUTLINED_FUNCTION_519();
  if (*(CMBaseObjectGetDerivedStorage() + 210))
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigRenderPipelineGetFigBaseObject(a3);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  result = v6(FigBaseObject, @"DisplayClosedCaptions", *v4);
  if (result)
  {
    return result;
  }

  FigRenderPipelineGetFigBaseObject(a3);
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    return 4294954514;
  }

  v8 = OUTLINED_FUNCTION_228();

  return v9(v8);
}

void fpfs_postClosedCaptionNotificationIfEnabled(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  a17 = v18;
  a18 = v21;
  if (!v22)
  {
    goto LABEL_7;
  }

  v23 = v20;
  v24 = v19;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = *DerivedStorage;
  v27 = CMBaseObjectGetDerivedStorage();
  if (*(v27 + 208))
  {
    cf = 0;
    if (!FigCaptionCommandCreatePropertyList(v24, v23, &cf))
    {
      fpfs_EnqueueNotification(v26, @"ClosedCaptionCommand", *DerivedStorage, cf);
      CFRelease(cf);
    }

LABEL_7:
    OUTLINED_FUNCTION_652();
    return;
  }

  v28 = v27;
  if (!*(v27 + 210) || *(DerivedStorage + 846) || !*(v27 + 80) || !*(CMBaseObjectGetDerivedStorage() + 1024))
  {
    goto LABEL_7;
  }

  while (1)
  {
    OUTLINED_FUNCTION_247();
    if (v30)
    {
      if (*(v29 + 112))
      {
        break;
      }
    }

    if (!*(v29 + 24))
    {
      goto LABEL_7;
    }
  }

  FigSimpleMutexLock();
  v31 = *(v28 + 216);
  if (v31)
  {
    Count = CFArrayGetCount(v31);
    v33 = objc_autoreleasePoolPush();
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        [CFArrayGetValueAtIndex(*(v28 + 216) i)];
      }
    }
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
  }

  objc_autoreleasePoolPop(v33);
  OUTLINED_FUNCTION_652();

  FigSimpleMutexUnlock();
}

uint64_t fpfs_setRateOnPrimaryAndAuxRenderPipelines()
{
  OUTLINED_FUNCTION_471();
  OUTLINED_FUNCTION_659();
  v2 = *(v1 + 88);
  v36 = *v3;
  v38 = *(v3 + 16);
  v30 = *v4;
  v32 = *(v4 + 2);
  VTable = CMBaseObjectGetVTable();
  v14 = *(VTable + 16);
  v13 = VTable + 16;
  if (!*(v14 + 8))
  {
    return 4294954514;
  }

  v15 = OUTLINED_FUNCTION_250(v13, v6, v7, v8, v9, v10, v11, v12, v30, *(&v30 + 1), v32, v34, v36, v38);
  result = v16(v15);
  if (!result && v2)
  {
    do
    {
      OUTLINED_FUNCTION_73();
      v31 = *v0;
      v33 = *(v0 + 2);
      v18 = CMBaseObjectGetVTable();
      v27 = *(v18 + 16);
      v26 = v18 + 16;
      if (*(v27 + 8))
      {
        v28 = OUTLINED_FUNCTION_250(v26, v19, v20, v21, v22, v23, v24, v25, v31, *(&v31 + 1), v33, v35, v37, v39);
        v29(v28);
      }

      v2 = *(v2 + 88);
    }

    while (v2);
    return 0;
  }

  return result;
}

uint64_t fpfs_ConfigureRatePlan(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, float a6, float a7)
{
  if (a3)
  {
    *&a4 = 2.1;
  }

  if (a6 < 0.0)
  {
    return 0;
  }

  *(a5 + 8) = 0;
  *a5 = a6;
  if (a1 && *(&a1 + 1) > a7 || (a1 & 0xFF00) != 0 && *&a2 < a7)
  {
    goto LABEL_8;
  }

  if (*&a4 >= a7)
  {
    if (a7 > 0.0 && a3)
    {
      v9 = FPSupport_ConfigSnapRateForLQZL((a5 + 4), a5, a7);
    }

    else
    {
      if (a7 == 0.0)
      {
        *(a5 + 4) = 1065353216;
      }

      else
      {
        if (*(&a3 + 1) > a7)
        {
LABEL_8:
          v9 = 1;
          *(a5 + 8) = 1;
          *(a5 + 4) = 1065353216;
          goto LABEL_9;
        }

        *(a5 + 4) = a7;
      }

      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
    *a5 = 0;
  }

LABEL_9:
  if (dword_1EAF169F0)
  {
    OUTLINED_FUNCTION_147();
    v10 = OUTLINED_FUNCTION_126();
    os_log_type_enabled(v10, type);
    OUTLINED_FUNCTION_189();
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = v16;
    }

    if (v13)
    {
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524();
  }

  return v9;
}

uint64_t fpfsi_SetLastTimestampClientDidPauseOnContentSteeringMonitor(uint64_t a1, uint64_t a2)
{
  valuePtr = a2;
  if (!*(CMBaseObjectGetDerivedStorage() + 120))
  {
    return 0;
  }

  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (v2)
  {
    v3 = v2;
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v4 = OUTLINED_FUNCTION_228();
      v6 = v5(v4);
    }

    else
    {
      v6 = 4294954514;
    }

    CFRelease(v3);
  }

  else
  {
    OUTLINED_FUNCTION_303();
    return FigSignalErrorAtGM();
  }

  return v6;
}

void fpfs_copyFirstConcurrentMetadataTrackInDiscontinuityDomainNeededForVideo(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, __int16 a12, char a13, os_log_type_t type, int a15, const opaqueCMFormatDescription **cf, CFTypeRef a17, CFTypeRef a18, __int128 a19, int a20, __int16 a21, __int16 a22, uint64_t a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  OUTLINED_FUNCTION_253();
  a53 = v57;
  a54 = v58;
  OUTLINED_FUNCTION_261();
  a41 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  a17 = 0;
  a18 = 0;
  cf = 0;
  LoggingIDForTrackList = fpfsi_createLoggingIDForTrackList(v54, @":MetadataForVideo");
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (!FigStreamTrackListCreate(AllocatorForMedia, LoggingIDForTrackList, &a17))
  {
    v62 = FigGetAllocatorForMedia();
    if (!FigStreamTrackListCreateIterator(v62, a17, &a18) && !fpfsi_findTracksInListOfMediaType(1835365473, DerivedStorage[128], DerivedStorage[129], v55, a17, 0))
    {
      FigStreamTrackListIteratorResetAndCopyTrack(a18, &cf);
      v63 = cf;
      if (cf)
      {
        v64 = 0;
        while (1)
        {
          if (!fpfs_isKnownMebxMetadataForRendering(v63[7]))
          {
            goto LABEL_19;
          }

          if (v64)
          {
            break;
          }

          if (cf)
          {
            v64 = CFRetain(cf);
LABEL_19:
            if (cf)
            {
              CFRelease(cf);
            }

            goto LABEL_21;
          }

          v64 = 0;
LABEL_21:
          cf = 0;
          FigStreamTrackListIteratorCopyNextTrack(a18, &cf);
          v63 = cf;
          if (!cf)
          {
            if (LoggingIDForTrackList)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }
        }

        if (!FigStreamTrackAreTracksSyncPairs(v64, cf))
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_37();
          if (v56)
          {
            v66 = *DerivedStorage;
            if (*DerivedStorage)
            {
              v67 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v67 = "";
            }

            TrackNumber = FigStreamTrackGetTrackNumber(cf);
            LODWORD(a19) = 136315906;
            *(&a19 + 4) = "fpfs_copyFirstConcurrentMetadataTrackInDiscontinuityDomainNeededForVideo";
            WORD6(a19) = 2048;
            *(&a19 + 14) = v66;
            a22 = 2082;
            a23 = v67;
            LOWORD(a24) = 2048;
            *(&a24 + 2) = TrackNumber;
            OUTLINED_FUNCTION_100();
            OUTLINED_FUNCTION_27();
            OUTLINED_FUNCTION_200();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_449();
        }

        goto LABEL_19;
      }
    }
  }

  if (LoggingIDForTrackList)
  {
LABEL_23:
    CFRelease(LoggingIDForTrackList);
  }

LABEL_24:
  if (a18)
  {
    CFRelease(a18);
  }

  if (a17)
  {
    CFRelease(a17);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_252();
}

void fpfsi_scheduleFVTTransitionForTracks()
{
  OUTLINED_FUNCTION_193();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v80 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  v10 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v51 = *MEMORY[0x1E6960C70];
  *&v53.value = *MEMORY[0x1E6960C70];
  v11 = *(MEMORY[0x1E6960C70] + 16);
  v53.epoch = v11;
  if (FigStreamingPlayerCombinedVideoDestinationContainsBufferDeliveryFVR(*(v10 + 376)) && !*(v0 + 760))
  {
    if (dword_1EAF169F0)
    {
      LODWORD(value) = 0;
      OUTLINED_FUNCTION_201();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_121();
      if (v41)
      {
        v42 = v40;
      }

      else
      {
        v42 = 0;
      }

      if (v42)
      {
        v43 = *v0;
        if (v43)
        {
          v44 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v44 = "";
        }

        if (v8)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v55 = 136316162;
        OUTLINED_FUNCTION_545();
        v58 = v43;
        v59 = 2082;
        v60 = v44;
        v61 = v45;
        v62 = v8;
        v63 = 2082;
        v64 = v46;
        OUTLINED_FUNCTION_145();
        OUTLINED_FUNCTION_25();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_47;
  }

  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_178();
  fpfs_createDataChannelConfigurationAndSetIdentifiers();
  if (v12)
  {
    goto LABEL_47;
  }

  if (v6)
  {
    v13 = *(v6 + 104);
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v4)
    {
LABEL_6:
      v14 = *(v4 + 104);
      if (!v14)
      {
        goto LABEL_47;
      }

      if (v2)
      {
LABEL_8:
        if (!dword_1EAF169F0)
        {
LABEL_33:
          v26 = *(v10 + 376);
          v27 = *(v0 + 760);
          v28 = cf;
          *&time.value = v51;
          time.epoch = v11;
          v29 = v13;
          v30 = v14;
LABEL_46:
          FigStreamingPlayerCombinedVideoDestinationSendFVTConfigAtHostTime(v26, v29, v30, v27, v28, &time);
          goto LABEL_47;
        }

        v50 = v14;
        LODWORD(value) = 0;
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_69();
        if (!v13)
        {
LABEL_32:
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_420();
          v14 = v50;
          goto LABEL_33;
        }

        v16 = *v0;
        if (*v0)
        {
          v17 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v17 = "";
        }

        v48 = v17;
        if (v8)
        {
          v23 = (CMBaseObjectGetDerivedStorage() + 3096);
          if (v6)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v23 = "";
          if (v6)
          {
LABEL_26:
            v24 = *(v6 + 32);
            if (v4)
            {
LABEL_27:
              v25 = *(v4 + 32);
LABEL_31:
              v55 = 136316930;
              v56 = "fpfsi_scheduleFVTTransitionForTracks";
              v57 = 2048;
              v58 = v16;
              v59 = 2082;
              v60 = v48;
              v61 = 2048;
              v62 = v8;
              v63 = 2082;
              v64 = v23;
              v65 = 1024;
              v66 = v24;
              v67 = 1024;
              v68 = v25;
              v69 = 2112;
              v70 = 0.0;
              OUTLINED_FUNCTION_145();
              OUTLINED_FUNCTION_34();
              OUTLINED_FUNCTION_282();
              _os_log_send_and_compose_impl();
              goto LABEL_32;
            }

LABEL_30:
            v25 = -1;
            goto LABEL_31;
          }
        }

        v24 = -1;
        if (v4)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }

      goto LABEL_14;
    }
  }

  v14 = 0;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_14:
  if (v6 && *(v6 + 168) == 6 && (*(v6 + 500) & 1) != 0 && CMTimebaseGetRate(*(v0 + 576)) != 0.0)
  {
    OUTLINED_FUNCTION_387(v6 + 488);
    FPSTimelineConverterL2TimeToL4(&time);
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    epoch = time.epoch;
    fpfs_GetTime(v0, &time);
    FPSTimelineConverterL2TimeToL4(&v53);
    if (dword_1EAF169F0)
    {
      v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_69();
      if (v13)
      {
        v20 = epoch;
        v21 = *v0;
        if (*v0)
        {
          v22 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v22 = "";
        }

        v49 = v22;
        if (v8)
        {
          v31 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v31 = "";
        }

        v47 = v31;
        v32 = *(v6 + 32);
        if (v4)
        {
          v33 = *(v4 + 32);
        }

        else
        {
          v33 = -1;
        }

        OUTLINED_FUNCTION_707();
        time.epoch = v20;
        Seconds = CMTimeGetSeconds(&time);
        time = v53;
        v35 = CMTimeGetSeconds(&time);
        fpfs_GetTime(v0, &time);
        CMTimeGetSeconds(&time);
        v55 = 136317698;
        OUTLINED_FUNCTION_545();
        v58 = v21;
        epoch = v20;
        v59 = 2082;
        v60 = v49;
        v61 = v36;
        v62 = v8;
        v63 = 2082;
        v64 = v47;
        v65 = 1024;
        v66 = v32;
        v67 = 1024;
        v68 = v33;
        v69 = v36;
        v70 = Seconds;
        v71 = v36;
        v72 = v35;
        v73 = v36;
        v74 = v37;
        v75 = 2112;
        v76 = v38;
        OUTLINED_FUNCTION_145();
        OUTLINED_FUNCTION_34();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_420();
    }

    if (flags)
    {
      OUTLINED_FUNCTION_707();
      time.epoch = epoch;
      v29 = v13;
      goto LABEL_46;
    }
  }

LABEL_47:
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_191();
}

void fpfsi_networkActivitySubmitMetricsForInitialStartupIfAvailable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 3264);
  if (v1)
  {
    v2 = *(DerivedStorage + 2040);
    if (v2 != 0.0)
    {
      v3 = *(DerivedStorage + 3016);
      if (v3 != 0.0)
      {
        v4 = *(DerivedStorage + 2088);
        if (v4 != 0.0)
        {
          FigNWActivitySubmitMetricsForInitialStartup(v1, v2, v3, v4);
          v5 = *(DerivedStorage + 3264);
          if (v5)
          {
            CFRelease(v5);
            *(DerivedStorage + 3264) = 0;
          }
        }
      }
    }
  }
}

uint64_t fpfs_PlayerResourceBudgetChanged()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_199();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_45();
  if (!v3 && *(v1 + 80))
  {
    v4 = OUTLINED_FUNCTION_270();
    fpfs_PlayQueueCallForEachItem(v4, v5, v6);
  }

  return fpfs_UnlockAndPostNotificationsWithCaller(v0);
}

void fpfsi_HandleResourceBudgetChange()
{
  if (*(CMBaseObjectGetDerivedStorage() + 40))
  {
    OUTLINED_FUNCTION_251();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 40))
    {
      if (*(DerivedStorage + 48))
      {
        if (*(DerivedStorage + 49))
        {
          fpfsi_SetupResolutionCapFilter();
          if (!v2 && !fpfsi_UpdatePixelPerSecondsCapFilter())
          {
            v3 = *(v0 + 40);

            FigAlternateSelectionBossApplyFilters(v3);
          }
        }
      }
    }
  }
}

uint64_t fpfs_handleAvailableAudioFormatChange_Apply(int a1, unsigned __int8 *a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, int a11, __int16 a12, char a13, os_log_type_t a14, int a15, os_log_type_t a16, uint64_t a17, const void *a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, __int16 a23, uint64_t a24, uint64_t a25, uint64_t a26, size_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  if (a2)
  {
    LODWORD(a2) = *a2;
  }

  return fpfsi_handleAvailableAudioFormatChange(a1, a2, 0, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

void fpfs_InvalidateGuts(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  a10 = 0;
  v23 = objc_autoreleasePoolPush();
  cf = 0;
  v24 = OUTLINED_FUNCTION_383();
  fpfs_RemoveFromPlayQueueGuts(v24, v25, 0);
  v26 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_258(v26);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_547();
  if (*(DerivedStorage + 52))
  {
    fpfs_UnlockWithCaller();
    v27 = 0;
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    JNvfYIDgz();
    OUTLINED_FUNCTION_184();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    JNvfYIDgz();
    OUTLINED_FUNCTION_577();
    CMNotificationCenterBarrier();
    if (*(DerivedStorage + 762))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigGetNotifyingObjectForSelectionCriteriaChanged();
      OUTLINED_FUNCTION_184();
      FigNotificationCenterRemoveWeakListener();
      *(DerivedStorage + 762) = 0;
      CMNotificationCenterGetDefaultLocalCenter();
      FigGetNotifyingObjectForSelectionCriteriaChanged();
      OUTLINED_FUNCTION_577();
      CMNotificationCenterBarrier();
    }

    v29 = *(DerivedStorage + 64);
    if (v29)
    {
      v30 = CFGetAllocator(v29);
      Copy = CFSetCreateCopy(v30, *(DerivedStorage + 64));
      if (Copy)
      {
        v32 = Copy;
        CFSetApplyFunction(Copy, fpfs_InvalidateItem, 0);
        CFRelease(v32);
      }

      CFRelease(*(DerivedStorage + 64));
      *(DerivedStorage + 64) = 0;
    }

    v33 = *(DerivedStorage + 72);
    if (v33)
    {
      CFRelease(v33);
      *(DerivedStorage + 72) = 0;
    }

    v34 = *(DerivedStorage + 976);
    if (v34)
    {
      CFRelease(v34);
      *(DerivedStorage + 976) = 0;
    }

    fpfs_ResetAudioHardwareFormat(v21);
    v35 = *(DerivedStorage + 536);
    if (v35)
    {
      CFRelease(v35);
      *(DerivedStorage + 536) = 0;
    }

    v36 = *(DerivedStorage + 576);
    if (v36)
    {
      CFRelease(v36);
      *(DerivedStorage + 576) = 0;
    }

    v37 = *(DerivedStorage + 528);
    if (v37)
    {
      CFRelease(v37);
      *(DerivedStorage + 528) = 0;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    FigDeferredTransactionCreate(AllocatorForMedia, &cf);
    v39 = *(DerivedStorage + 392);
    if (v39)
    {
      FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(0, v39, 1);
      v40 = *(DerivedStorage + 392);
      *(DerivedStorage + 392) = 0;
    }

    else
    {
      v40 = 0;
    }

    v41 = *(DerivedStorage + 384);
    if (v41)
    {
      FPSupport_AppendDeferredTransactionChangeToRelease(cf, v41);
      *(DerivedStorage + 384) = 0;
    }

    v42 = *(DerivedStorage + 200);
    if (v42)
    {
      FPSupport_AppendDeferredTransactionChangeToRelease(cf, v42);
      *(DerivedStorage + 200) = 0;
    }

    fpfs_releaseTransitionImageQueuesAndSlots();
    OUTLINED_FUNCTION_68();
    FigStreamingPlayerCombinedVideoDestinationRemoveFVTNotificationListeners(v43);
    OUTLINED_FUNCTION_67();
    FigStreamingPlayerCombinedVideoDestinationRemoveFVTNotificationListeners(v44);
    fpfs_sendEmptyConfigurationToEachVideoTarget();
    v45 = *(DerivedStorage + 176);
    if (v45)
    {
      CFRelease(v45);
      *(DerivedStorage + 176) = 0;
    }

    v46 = *(DerivedStorage + 184);
    if (v46)
    {
      CFRelease(v46);
      *(DerivedStorage + 184) = 0;
    }

    v47 = *(DerivedStorage + 640);
    if (v47)
    {
      CFRelease(v47);
      *(DerivedStorage + 640) = 0;
    }

    v48 = *(DerivedStorage + 744);
    if (v48)
    {
      CFRelease(v48);
      *(DerivedStorage + 744) = 0;
    }

    v49 = *(DerivedStorage + 752);
    if (v49)
    {
      CFRelease(v49);
      *(DerivedStorage + 752) = 0;
    }

    v50 = *(DerivedStorage + 768);
    if (v50)
    {
      CFRelease(v50);
      *(DerivedStorage + 768) = 0;
    }

    fpfs_ReleasePlayerHDRPlaybackBaton();
    fpfs_ReleasePlayer4kPlaybackBaton(v21);
    v51 = *(DerivedStorage + 720);
    if (v51)
    {
      CFRelease(v51);
      *(DerivedStorage + 720) = 0;
    }

    v52 = *(DerivedStorage + 728);
    if (v52)
    {
      CFRelease(v52);
      *(DerivedStorage + 728) = 0;
    }

    v53 = *(DerivedStorage + 960);
    if (v53)
    {
      CFRelease(v53);
      *(DerivedStorage + 960) = 0;
    }

    v54 = *(DerivedStorage + 944);
    if (v54)
    {
      while (1)
      {
        Count = CFArrayGetCount(v54);
        v56 = *(DerivedStorage + 944);
        if (!Count)
        {
          break;
        }

        CFArrayGetValueAtIndex(v56, 0);
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_272();
        FigNotificationCenterRemoveWeakListener();
        CFArrayRemoveValueAtIndex(*(DerivedStorage + 944), 0);
        v54 = *(DerivedStorage + 944);
        if (!v54)
        {
          goto LABEL_55;
        }
      }

      if (v56)
      {
        CFRelease(v56);
        *(DerivedStorage + 944) = 0;
      }
    }

LABEL_55:
    v57 = *(DerivedStorage + 952);
    if (v57)
    {
      CFRelease(v57);
      *(DerivedStorage + 952) = 0;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_488();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_488();
    FigNotificationCenterRemoveWeakListener();
    if (FPSupport_GetAudioSpatializationPreferencesMonitor())
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FPSupport_GetAudioSpatializationPreferencesMonitor();
      OUTLINED_FUNCTION_373();
      FigNotificationCenterRemoveWeakListener();
    }

    v58 = *(DerivedStorage + 480);
    if (v58)
    {
      CFRelease(v58);
      *(DerivedStorage + 480) = 0;
    }

    v59 = *(DerivedStorage + 488);
    if (v59)
    {
      CFRelease(v59);
      *(DerivedStorage + 488) = 0;
    }

    if (*(CMBaseObjectGetDerivedStorage() + 504))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_488();
      FigNotificationCenterRemoveWeakListener();
      v60 = *(DerivedStorage + 504);
      if (v60)
      {
        CFRelease(v60);
        *(DerivedStorage + 504) = 0;
      }
    }

    v61 = *(DerivedStorage + 56);
    if (v61)
    {
      CFRelease(v61);
      *(DerivedStorage + 56) = 0;
    }

    v62 = *(DerivedStorage + 592);
    if (v62)
    {
      CFRelease(v62);
      *(DerivedStorage + 592) = 0;
    }

    v63 = *(DerivedStorage + 616);
    if (v63)
    {
      CFRelease(v63);
      *(DerivedStorage + 616) = 0;
    }

    v64 = *(DerivedStorage + 608);
    if (v64)
    {
      CFRelease(v64);
      *(DerivedStorage + 608) = 0;
    }

    v65 = *(DerivedStorage + 792);
    if (v65)
    {
      CFRelease(v65);
      *(DerivedStorage + 792) = 0;
    }

    v66 = *(DerivedStorage + 840);
    if (v66)
    {

      *(DerivedStorage + 840) = 0;
    }

    v67 = *(DerivedStorage + 376);
    if (v67)
    {
      CFRelease(v67);
      *(DerivedStorage + 376) = 0;
    }

    v68 = *(DerivedStorage + 656);
    if (v68)
    {
      CFRelease(v68);
      *(DerivedStorage + 656) = 0;
    }

    v69 = *(DerivedStorage + 912);
    if (v69)
    {
      CFRelease(v69);
      *(DerivedStorage + 912) = 0;
    }

    v70 = *(DerivedStorage + 920);
    if (v70)
    {
      CFRelease(v70);
      *(DerivedStorage + 920) = 0;
    }

    v71 = *(DerivedStorage + 696);
    if (v71)
    {
      CFRelease(v71);
      *(DerivedStorage + 696) = 0;
    }

    FigPropertyStorageInvalidate(*(DerivedStorage + 16));
    FigPlayerResourceArbiterGetGlobalSingleton(&a10);
    if (a10)
    {
      FigPlayerResourceArbiterUnregisterConsumer(a10, *(DerivedStorage + 928));
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_488();
      FigNotificationCenterRemoveWeakListener();
    }

    *(DerivedStorage + 52) = 1;
    fpfs_UnlockWithCaller();
    v27 = cf;
    if (v40)
    {
      FPSupport_AppendDeferredTransactionChangeToRelease(cf, v40);
      v27 = cf;
    }
  }

  FigDeferredTransactionCommit(v27, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(v23);
  v28 = *(DerivedStorage + 984);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 984) = 0;
  }

  OUTLINED_FUNCTION_652();
}

void fpfs_deferredClientRenderOptionChanged()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_199();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_45();
  if (!v2)
  {
    v3 = OUTLINED_FUNCTION_270();
    fpfs_PlayQueueCallForEachItem(v3, v4, v5);
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v0);
  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t fpfsi_handleFVTClientRenderOptionChanged()
{
  if (!*(CMBaseObjectGetDerivedStorage() + 40))
  {
    return 0;
  }

  OUTLINED_FUNCTION_251();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 40) || !*(DerivedStorage + 48) || !*(DerivedStorage + 49))
  {
    return 0;
  }

  result = fpfsi_updateSupportedFramerateBucketCapMonitorFromFVT();
  if (!result)
  {
    v3 = *(v0 + 40);

    return FigAlternateSelectionBossApplyFilters(v3);
  }

  return result;
}

void fpfs_deferredFVTPreferredDataChannelChanged()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_199();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_45();
  if (!v3)
  {
    FigStreamingPlayerCombinedVideoDestinationReevaluateCanSendMetadataToFVT(*(v1 + 376));
    v4 = OUTLINED_FUNCTION_270();
    fpfs_PlayQueueCallForEachItem(v4, v5, v6);
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v0);
  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t fpfsi_handleVideoLayoutPreferenceChanged(uint64_t a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 40))
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 40) || !*(DerivedStorage + 48) || !*(DerivedStorage + 49))
  {
    return 0;
  }

  result = fpfsi_setUpVideoLayoutFilters(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_203();

    return fpfsi_ApplyFiltersAndSwitchVariantIfNecessary();
  }

  return result;
}

void fpfs_CopyExternalProtectionStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, __int128 a20, int a21, __int16 a22, __int16 a23, uint64_t a24, __int128 a25, int a26, int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  OUTLINED_FUNCTION_809();
  a57 = v61;
  a58 = v62;
  OUTLINED_FUNCTION_207();
  a45 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v64 = CMBaseObjectGetDerivedStorage();
  if (v64)
  {
    v84 = v59;
    v85 = v58;
    v65 = 1;
    if (*(DerivedStorage + 462))
    {
      v66 = *(v64 + 1712) != 0;
    }

    else
    {
      v66 = 1;
    }

    a19 = 1;
    v68 = *(v64 + 1024);
    if (v68)
    {
      v86 = DerivedStorage;
      v87 = v60;
      v69 = &unk_1EAF16000;
      v70 = &unk_1EAF16000;
      OUTLINED_FUNCTION_340();
      do
      {
        if (v66 || *(v68 + 48) == v60)
        {
          v71 = *(v68 + 400);
          if (v71)
          {
            v72 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v72)
            {
              v67 = v72(v71, 7, &a19);
            }

            else
            {
              v67 = -12782;
            }

            if (v69[636] >= 2u)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_189();
              if (v80)
              {
                v75 = v74;
              }

              else
              {
                v75 = 0;
              }

              if (v75)
              {
                v60 = v70;
                v76 = v69;
                if (v87)
                {
                  v77 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v77 = "";
                }

                v78 = *(v86 + 80);
                if (v78)
                {
                  v79 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v79 = "";
                }

                LODWORD(a20) = 136316418;
                *(&a20 + 4) = "fpfs_CopyStatus";
                WORD6(a20) = 2048;
                *(&a20 + 14) = v87;
                a23 = 2082;
                a24 = v77;
                LOWORD(a25) = 2048;
                *(&a25 + 2) = v78;
                WORD5(a25) = 2082;
                *(&a25 + 12) = v79;
                LOWORD(a27) = 1024;
                *(&a27 + 2) = a19;
                OUTLINED_FUNCTION_146();
                OUTLINED_FUNCTION_34();
                OUTLINED_FUNCTION_282();
                _os_log_send_and_compose_impl();
                v69 = v76;
                v70 = v60;
                OUTLINED_FUNCTION_340();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_524();
            }

            v65 = a19;
            if (v67)
            {
              goto LABEL_36;
            }

            v80 = a19 == 4 || a19 == 1;
            if (!v80)
            {
              break;
            }
          }
        }

        v68 = *(v68 + 24);
      }

      while (v68);
    }

    v67 = 0;
LABEL_36:
    v59 = v84;
    v58 = v85;
  }

  else
  {
    v67 = 0;
    v65 = 1;
    a19 = 1;
  }

  if (v65 == 1 || v65 == 4)
  {
    v82 = &kFigPlayerExternalProtectionStatus_Protected;
  }

  else
  {
    v82 = &kFigPlayerExternalProtectionStatus_NotProtected;
  }

  v83 = CFDictionaryCreate(v59, &kFigPlayerExternalProtectionStatusKey_Video, v82, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v83 && v67)
  {
    CFRelease(v83);
    v83 = 0;
  }

  *v58 = v83;
  OUTLINED_FUNCTION_808();
}

uint64_t fpfs_setMuted()
{
  OUTLINED_FUNCTION_261();
  v17 = v3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v1)
  {
    return 4294954436;
  }

  v5 = DerivedStorage;
  CFBooleanGetTypeID();
  v6 = OUTLINED_FUNCTION_398();
  if (v2 != CFGetTypeID(v6))
  {
    return 4294954436;
  }

  Value = CFBooleanGetValue(v1);
  if (*(v5 + 521) == Value)
  {
    return 0;
  }

  v9 = Value;
  *(v5 + 521) = Value;
  result = fpfsi_UpdateResourceSpecifierOnResourceArbiter(*(v5 + 80));
  if (!result)
  {
    result = fpfs_PlayQueueCallForEachItem(v0, fpfsi_setMutedApply, &v17);
    if (!result)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v12 = Mutable;
      v13 = MEMORY[0x1E695E4C0];
      if (v9)
      {
        v13 = MEMORY[0x1E695E4D0];
      }

      CFDictionarySetValue(Mutable, @"CurrentMuted", *v13);
      FigPropertyStorageSetValue(*(v5 + 16), @"PlayerMuted", v17);
      v14 = OUTLINED_FUNCTION_805();
      fpfs_EnqueueNotification(v14, v15, v16, v12);
      if (v12)
      {
        CFRelease(v12);
      }

      return 0;
    }
  }

  return result;
}

void fpfs_AdvanceToNextItemIfNecessary()
{
  v22 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Next = fpfs_getNext(DerivedStorage, 0);
  if (Next)
  {
    v2 = Next;
    v3 = CMBaseObjectGetDerivedStorage();
    fpfs_GetNextTimeToPlay(v3, 0, &time1);
    value = time1.value;
    flags = time1.flags;
    timescale = time1.timescale;
    epoch = time1.epoch;
    fpfsi_PredictedEndTime(v2, &time1);
    v18 = time1.value;
    v6 = time1.flags;
    v19 = time1.timescale;
    v7 = time1.epoch;
    v8 = *(DerivedStorage + 688);
    v9 = *(DerivedStorage + 80);
    Count = CFArrayGetCount(*(DerivedStorage + 72));
    v11 = v9 ? Count + 1 : Count;
    if (!FigPlaybackGetEffectiveActionAtEnd(v8, v11))
    {
      v12 = (flags & 0x1F) == 3 || (v6 & 0x1F) == 3;
      if (v12 && (OUTLINED_FUNCTION_514(), rhs.epoch = v7, lhs.value = value, lhs.timescale = timescale, lhs.flags = flags, lhs.epoch = epoch, rhs.value = v18, rhs.timescale = v19, rhs.flags = v6, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 1, 1000000000), *&lhs.value = *&time1.value, OUTLINED_FUNCTION_269(), CMTimeCompare(v13, &time) < 1) || (time.epoch = v7, time1.value = value, time1.timescale = timescale, time1.flags = flags, time1.epoch = epoch, time.value = v18, time.timescale = v19, time.flags = v6, (CMTimeCompare(&time1, &time) & 0x80000000) == 0) || fpfs_isPlaybackBeyondReverseEndTime())
      {
        OUTLINED_FUNCTION_298();
        fpfs_StopPlayingItem();
      }
    }
  }
}

void fpfs_FetchClientBundleIdentifierFromAudioSession(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 536))
  {
    v3 = DerivedStorage;
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    if (v4)
    {
      v5 = v4;
      if (a1)
      {
        v6 = CFRetain(a1);
      }

      else
      {
        v6 = 0;
      }

      *v5 = v6;
      v7 = *(v3 + 536);
      if (v7)
      {
        v7 = CFRetain(v7);
      }

      v5[1] = v7;
      v8 = OUTLINED_FUNCTION_802();
      global_queue = dispatch_get_global_queue(v8, v9);

      dispatch_async_f(global_queue, v5, fpfs_FetchClientBundleIdentifierFromAudioSessionDispatch);
    }

    else
    {
      OUTLINED_FUNCTION_243();

      FigSignalErrorAtGM();
    }
  }
}

uint64_t fpfsi_updateNeroChange()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v2 = CMBaseObjectGetDerivedStorage();
  if (!*(v0 + 40) || !*(v0 + 56))
  {
    return 0;
  }

  v3 = v2;
  result = fpfsi_ConfigureAlternateSelectionBossForNeroSupportedVideoFormat(v0, *(v2 + 462));
  if (!result)
  {
    result = FigAlternateFilterMonitorForHDCPNeedsNewExternalProtectionMonitorIfNecessary(*(v0 + 56), *(v3 + 462), *(v3 + 488));
    if (!result)
    {
      fpfsi_ConfigurePumpForPlayerAndRelock();
      OUTLINED_FUNCTION_198();
      result = fpfsi_ApplyFiltersAndSwitchVariantIfNecessary();
      if (!result)
      {
        v5 = OUTLINED_FUNCTION_475();
        fpfs_stopResetDisturbReprepareAndResume(v5, v6, 1);
        return 0;
      }
    }
  }

  return result;
}