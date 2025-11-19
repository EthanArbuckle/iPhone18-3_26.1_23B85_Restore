uint64_t FigMutableMovieCreateEmpty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMutableMovieCreateEmpty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMutableMovieCreateWithByteStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMutableMovieCreateWithByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMutableMovieCreateFromData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMutableMovieCreateFromData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMutableMovieCreateFromData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MutableMovie_WriteHeader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MutableMovie_WriteHeader_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MutableMovie_WriteHeader_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MutableMovie_WriteHeader_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MutableMovie_WriteHeader_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MutableMovie_WriteHeaderToByteStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MutableMovie_WriteHeaderToByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MutableMovie_WriteHeaderToByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MutableMovie_WriteHeaderToByteStream_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MutableMovie_WriteHeaderToByteStream_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t createMovieHeaderMakerFromMiP_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t addSampleBufferToTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void writeMdatHeader_cold_1(CMBlockBufferRef *a1, uint64_t a2, _DWORD *a3)
{
  appended = MovieHeaderMakerCopyMediaDataAtomHeaderAsBlockBuffer(*MEMORY[0x1E695E480], 1, 0, a1);
  v6 = *a1;
  if (!appended)
  {
    CMBlockBufferGetDataLength(v6);
    appended = CMByteStreamAppendBlockBuffer();
    v6 = *a1;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  *a3 = appended;
}

uint64_t writeMdatHeader_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigNWPathEvaluatorCreate(uint64_t a1, const __CFURL *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_100();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_3_100();
  fig_note_initialize_category_with_default_work_cf();
  if (a7 && a4 && a6 && a5)
  {
    if (a2 && !FigCFHTTPIsHTTPBasedURL(a2))
    {
      return 4294954516;
    }

    if (_MergedGlobals_93 != -1)
    {
      dispatch_once(&_MergedGlobals_93, &__block_literal_global_69);
    }

    CMDerivedObjectCreate();
    OUTLINED_FUNCTION_0_142();
  }

  else
  {
    OUTLINED_FUNCTION_0_142();
  }

  v11 = FigSignalErrorAtGM();
  if (!v11)
  {
    *a7 = 0;
  }

  return v11;
}

void __FigNWPathEvaluatorCreate_block_invoke(uint64_t a1, NSObject *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fnpe_EvaluatorHandleNetworkChange_block_invoke;
    block[3] = &unk_1E74901A0;
    block[5] = &v9;
    block[6] = DerivedStorage;
    block[4] = &v13;
    dispatch_sync(v5, block);
    v6 = fnpe_CopyCurrentPathInformationFromNWPath(a2);
    if (v6)
    {
      (v10[3])(v14[3], v6);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v14[3];
  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
}

uint64_t __figNwPathEvaluatorCopyCurrentPathInformation_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 8);
  if (result)
  {
    result = nw_path_evaluator_copy_path();
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

void playbackCoordinator_setRateAndAnchorTime(uint64_t a1, float a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, const void *a8, int a9, uint64_t a10, void (*a11)(uint64_t, void))
{
  HIDWORD(v117) = a9;
  v146 = *MEMORY[0x1E69E9840];
  v137 = 0;
  v138 = 0;
  v136 = 0;
  HIDWORD(v135) = 0;
  BYTE3(v135) = 0;
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  v133 = **&MEMORY[0x1E6960C70];
  v17 = *(MEMORY[0x1E6960C98] + 16);
  v130 = *MEMORY[0x1E6960C98];
  v131 = v17;
  v132 = *(MEMORY[0x1E6960C98] + 32);
  v127 = v130;
  v128 = v17;
  v129 = v132;
  if (!a1)
  {
    v27 = 0;
    goto LABEL_122;
  }

  cf = OUTLINED_FUNCTION_28_20();
  if (!cf)
  {
    v27 = 0;
    goto LABEL_122;
  }

  if (!*(v11 + 48) || !FigCFEqual() || *(v11 + 496) && !*(v11 + 456))
  {
    v27 = cf;
LABEL_122:
    if (FigSignalErrorAtGM())
    {
      a11(a10, 0);
    }

    goto LABEL_75;
  }

  OUTLINED_FUNCTION_36_18();
  OUTLINED_FUNCTION_14_39(v18, v19, v20, v21, v22, v23, v24, v25, v108, v110, v112, a7, v117, a6, cf, v123, *&lhs.value, lhs.epoch, v126, v127, *(&v127 + 1), v128, *(&v128 + 1), v129, *(&v129 + 1), v130, *(&v130 + 1), v131, *(&v131 + 1), v132, *(&v132 + 1), v133.value, *&v133.timescale, v133.epoch, v134, v135, SBYTE2(v135), SBYTE3(v135), v136, v137, v138, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v140, *(&v140 + 1), v141, v142[0], v142[1], v142[2], v142[3], v143, v144, rhs.value);
  OUTLINED_FUNCTION_32_18();
  figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, a11, a10, 0);
  if ((*(a5 + 12) & 1) == 0)
  {
LABEL_8:
    OUTLINED_FUNCTION_42_15();
    OUTLINED_FUNCTION_3_101();
    Mutable = 0;
    v27 = cfa;
    goto LABEL_76;
  }

  v28 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v28)
  {
    v28(cfa, &v135 + 4);
  }

  v29 = *(v11 + 48);
  v30 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v30)
  {
    v30(v29, &v133);
  }

  v31 = MEMORY[0x1E695E480];
  if (*(&v135 + 1) != 0.0)
  {
    rhs = v133;
    if (figPlaybackCoordinator_isTimeInInterstitialRange(a1, &rhs, &v127))
    {
      OUTLINED_FUNCTION_1_128();
      if (figPlaybackCoordinator_isTimeInInterstitialRange(a1, &rhs, &v130))
      {
        rhs.value = 0;
        LODWORD(valuePtr.value) = 0;
        v27 = cfa;
        FigBaseObject = FigPlayerGetFigBaseObject(cfa);
        v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v33)
        {
          v33(FigBaseObject, @"PlaybackState", *v31, &rhs);
          if (rhs.value)
          {
            CFNumberGetValue(rhs.value, kCFNumberSInt32Type, &valuePtr);
            if (rhs.value)
            {
              CFRelease(rhs.value);
            }
          }
        }

LABEL_74:
        OUTLINED_FUNCTION_3_101();
LABEL_75:
        Mutable = 0;
        goto LABEL_76;
      }
    }
  }

  if (*(v120 + 12))
  {
    OUTLINED_FUNCTION_1_128();
    if (figPlaybackCoordinator_isTimeInInterstitialRange(a1, &rhs, &v130))
    {
      OUTLINED_FUNCTION_27_20(&rhs);
      OUTLINED_FUNCTION_40_14();
      v34 = CMTimeAdd(&valuePtr, &lhs, &rhs);
      OUTLINED_FUNCTION_14_39(v34, v35, v36, *(v11 + 368), v37, v38, v39, v40, v109, v111, v113, v116, v118, v120, cfa, v124, *&lhs.value, lhs.epoch, v126, v127, *(&v127 + 1), v128, *(&v128 + 1), v129, *(&v129 + 1), v130, *(&v130 + 1), v131, *(&v131 + 1), v132, *(&v132 + 1), v133.value, *&v133.timescale, v133.epoch, v134, v135, SBYTE2(v135), SBYTE3(v135), v136, v137, v138, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v140, *(&v140 + 1), v141, v142[0], v142[1], v142[2], v142[3], v143, v144, rhs.value);
      OUTLINED_FUNCTION_32_18();
      if ((*(a5 + 12) & 1) == 0)
      {
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_27_20(&valuePtr);
      lhs = *v120;
      CMTimeAdd(&rhs, &lhs, &valuePtr);
      *v120 = rhs;
    }
  }

  *(v11 + 248) = a2;
  *(v11 + 252) = 0;
  v41 = *v31;
  Current = CFAbsoluteTimeGetCurrent();
  v43 = CFDateCreate(v41, Current);
  v44 = *(v11 + 256);
  *(v11 + 256) = a8;
  *(v11 + 264) = v43;
  if (a8)
  {
    CFRetain(a8);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  *(v11 + 176) = a2;
  *(v11 + 164) = a2;
  v45 = *a5;
  *(v11 + 132) = *(a5 + 2);
  *(v11 + 116) = v45;
  v27 = cfa;
  v46 = *v120;
  *(v11 + 156) = *(v120 + 16);
  *(v11 + 140) = v46;
  *(v11 + 112) = 1;
  v47 = *(v11 + 96);
  if (v47 > a4)
  {
    if (dword_1ED4CBE70)
    {
      LODWORD(lhs.value) = 0;
      v48 = OUTLINED_FUNCTION_637();
      v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_109_0(v49))
      {
        v50 = *(v11 + 496);
        LODWORD(valuePtr.value) = 136315650;
        *(&valuePtr.value + 4) = "playbackCoordinator_setRateAndAnchorTime";
        LOWORD(valuePtr.flags) = 2048;
        *(&valuePtr.flags + 2) = a1;
        HIWORD(valuePtr.epoch) = 1024;
        LODWORD(v140) = v50;
        OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_74;
  }

  if (HIDWORD(v118) == 5)
  {
    FigSimpleMutexLock();
    *(v11 + 328) = 0;
    FigSimpleMutexUnlock();
    v47 = *(v11 + 96);
  }

  if (v47 < a4)
  {
    *(v11 + 96) = a4;
    if (*(v11 + 192))
    {
      v51 = OUTLINED_FUNCTION_234();
      playbackCoordinator_completePendingStartupTask(v51, v52);
    }
  }

  if (*(a5 + 12) & 1) != 0 && a2 != 0.0 && (*(v120 + 12))
  {
    lhs.value = 0;
    HostTimeClock = CMClockGetHostTimeClock();
    CMTimebaseCreateWithSourceClock(v41, HostTimeClock, &lhs);
    OUTLINED_FUNCTION_1_128();
    valuePtr = *v120;
    CMTimebaseSetRateAndAnchorTime(v54, a2, &rhs, &valuePtr);
    CMTimebaseCreateReadOnlyTimebase();
    if (lhs.value)
    {
      CFRelease(lhs.value);
    }
  }

  v55 = *(v11 + 168);
  v56 = v137;
  *(v11 + 168) = v137;
  if (v56)
  {
    CFRetain(v56);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  v57 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v57)
  {
    v57(cfa, &v135 + 4);
  }

  v58 = (*(a5 + 3) & 0x1D) == 1 || (*(a5 + 3) & 5) == 5;
  v59 = HIDWORD(v118);
  if (v58)
  {
    if (a2 == 0.0 || (CMTimebaseGetTime(&rhs, *(v11 + 56)), v62 = 1, CMTimeMake(&valuePtr, 1, 1), OUTLINED_FUNCTION_40_14(), !faqrp_timeDifferenceIsWithinTolerance(&lhs, &rhs, &valuePtr)))
    {
      v60 = *(v11 + 88);
      *(v11 + 88) = FPSupport_IncrementSeekID(*(v11 + 88));
      FigTimelineCoordinatorSetReadinessHintFromTimelineControl();
      v114 = v60;
      if (dword_1ED4CBE70 >= 2)
      {
        asprintf(&v136, " (id=%d)", v60);
      }

      v62 = 0;
      v61 = 1;
    }

    else
    {
      v61 = 0;
      v114 = 0;
    }
  }

  else
  {
    v61 = 0;
    v114 = 0;
    v62 = 1;
  }

  if (!*(v11 + 192))
  {
    goto LABEL_61;
  }

  if (*(&v135 + 1) != a2)
  {
    v61 = 1;
  }

  if ((v61 & 1) == 0)
  {
    if (dword_1ED4CBE70)
    {
      LODWORD(lhs.value) = 0;
      HIBYTE(v124) = 0;
      v90 = OUTLINED_FUNCTION_637();
      value = lhs.value;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        v92 = value;
      }

      else
      {
        v92 = value & 0xFFFFFFFE;
      }

      if (v92)
      {
        v93 = *(v11 + 496);
        v94 = a2;
        OUTLINED_FUNCTION_1_128();
        Seconds = CMTimeGetSeconds(&rhs);
        v104 = OUTLINED_FUNCTION_23_31(v96, v97, v98, v99, v100, v101, v102, v103, v109, v111, v114, v116, v118, v120, cfa, v124, lhs.value, *&lhs.timescale, lhs.epoch, v126, v127, *(&v127 + 1), v128, *(&v128 + 1), v129, *(&v129 + 1), v130, *(&v130 + 1), v131, *(&v131 + 1), v132, *(&v132 + 1), v133.value, *&v133.timescale, v133.epoch, v134, v135, v136, v137, v138, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v140, *(&v140 + 1), v141, v142[0], v142[1], v142[2], v142[3], v143, v144, rhs.value);
        LODWORD(valuePtr.value) = 136316418;
        *(&valuePtr.value + 4) = "playbackCoordinator_setRateAndAnchorTime";
        LOWORD(valuePtr.flags) = 2048;
        *(&valuePtr.flags + 2) = a1;
        HIWORD(valuePtr.epoch) = 1024;
        LODWORD(v140) = v93;
        WORD2(v140) = 2048;
        *(&v140 + 6) = v94;
        HIWORD(v140) = 2048;
        v141 = *&Seconds;
        LOWORD(v142[0]) = 2048;
        *(v142 + 2) = v104;
        OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_61_5();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v105 = *(v11 + 48);
    if (v105)
    {
      v106 = *(v11 + 168);
      if (v106)
      {
        FigPlaybackItemSetProperty(v105, @"TransientTimebaseForCoordinatedPlaybackSynchronization", v106);
        rhs.value = 0;
        v107 = FigPlayerGetFigBaseObject(v27);
        CMBaseObjectCopyProperty_0(v107, @"SynchronizedNULL", v41, &rhs);
        if (rhs.value)
        {
          CFRelease(rhs.value);
        }
      }
    }

    playbackCoordinator_completePendingStartupTask(a1, 1);
  }

  else
  {
LABEL_61:
    v63 = OUTLINED_FUNCTION_234();
    playbackCoordinator_completePendingStartupTask(v63, v64);
    if (dword_1ED4CBE70)
    {
      LODWORD(lhs.value) = 0;
      HIBYTE(v124) = 0;
      v65 = OUTLINED_FUNCTION_637();
      v66 = lhs.value;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        v67 = v66;
      }

      else
      {
        v67 = v66 & 0xFFFFFFFE;
      }

      if (v67)
      {
        v68 = *(v11 + 496);
        OUTLINED_FUNCTION_1_128();
        v69 = CMTimeGetSeconds(&rhs);
        v78 = OUTLINED_FUNCTION_23_31(v70, v71, v72, v73, v74, v75, v76, v77, v109, v111, v114, v116, v118, v120, cfa, v124, lhs.value, *&lhs.timescale, lhs.epoch, v126, v127, *(&v127 + 1), v128, *(&v128 + 1), v129, *(&v129 + 1), v130, *(&v130 + 1), v131, *(&v131 + 1), v132, *(&v132 + 1), v133.value, *&v133.timescale, v133.epoch, v134, v135, v136, v137, v138, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v140, *(&v140 + 1), v141, v142[0], v142[1], v142[2], v142[3], v143, v144, rhs.value);
        v79 = v136;
        v80 = "[SEEK";
        LODWORD(valuePtr.value) = 136317186;
        v81 = "";
        *(&valuePtr.value + 4) = "playbackCoordinator_setRateAndAnchorTime";
        if (!v136)
        {
          v79 = "";
        }

        LOWORD(valuePtr.flags) = 2048;
        if (v62)
        {
          v80 = "";
        }

        *(&valuePtr.flags + 2) = a1;
        HIWORD(valuePtr.epoch) = 1024;
        if (!v62)
        {
          v81 = "]";
        }

        LODWORD(v140) = v68;
        WORD2(v140) = 2048;
        *(&v140 + 6) = a2;
        HIWORD(v140) = 2048;
        v141 = *&v69;
        LOWORD(v142[0]) = 2048;
        *(v142 + 2) = v78;
        WORD1(v142[1]) = 2082;
        *(&v142[1] + 4) = v80;
        WORD2(v142[2]) = 2082;
        *(&v142[2] + 6) = v79;
        HIWORD(v142[3]) = 2082;
        v143 = v81;
        OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_61_5();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v27 = cfa;
      v59 = HIDWORD(v118);
    }

    if (FPSupport_CreateSetRateOptions(v41, 33, &v138))
    {
      goto LABEL_75;
    }

    v82 = *MEMORY[0x1E695E4C0];
    if (a2 == 0.0)
    {
      v83 = *MEMORY[0x1E695E4C0];
    }

    else
    {
      v83 = *MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(v138, @"SynchronizeWithStartupTasks", v83);
    FigCFDictionarySetValue();
    if (v59 == 6 || !v59)
    {
      FigCFDictionarySetValue();
    }

    *(v11 + 240) = v62;
    v84 = v138;
    v85 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (!v85 || v85(v27, v84, a2))
    {
      goto LABEL_75;
    }

    if ((v62 & 1) == 0)
    {
      lhs.value = v82;
      v86 = FigPlaybackItemGetFigBaseObject(*(v11 + 48));
      v87 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v87)
      {
        v87(v86, @"IsPlayingIFrameOnly", v41, &lhs);
      }

      *(v11 + 244) = v114;
      *(v11 + 240) = 1;
      Mutable = CFDictionaryCreateMutable(v41, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetValue();
      FigCFDictionarySetInt32();
      v88 = *(v11 + 48);
      OUTLINED_FUNCTION_36_18();
      v89 = *(*(CMBaseObjectGetVTable() + 16) + 176);
      if (v89)
      {
        rhs = valuePtr;
        v89(v88, &rhs, Mutable);
      }

      if (lhs.value)
      {
        CFRelease(lhs.value);
      }

      goto LABEL_106;
    }
  }

  Mutable = 0;
LABEL_106:
  figPlaybackCoordinator_checkForCommandCompletion(a1);
LABEL_76:
  if (v138)
  {
    CFRelease(v138);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v137)
  {
    CFRelease(v137);
  }

  free(v136);
}

void playbackCoordinator_jumpToTime(uint64_t a1, float a2, uint64_t a3, uint64_t a4, CMTime *a5, unsigned int a6, unsigned int a7, uint64_t a8, const void *a9, int a10, uint64_t a11, void (*a12)(uint64_t, void))
{
  v62 = __PAIR64__(a7, a6);
  v82 = *MEMORY[0x1E69E9840];
  cf = 0;
  v60 = *MEMORY[0x1E6960C70];
  *&v65.value = *MEMORY[0x1E6960C70];
  v18 = *(MEMORY[0x1E6960C70] + 16);
  v65.epoch = v18;
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    v61 = 0;
    goto LABEL_94;
  }

  v61 = OUTLINED_FUNCTION_28_20();
  if (!v61)
  {
    v61 = 0;
    goto LABEL_94;
  }

  if (!*(v12 + 48) || !FigCFEqual() || *(v12 + 496) && !*(v12 + 456))
  {
LABEL_94:
    if (FigSignalErrorAtGM())
    {
      a12(a11, 0);
    }

    goto LABEL_17;
  }

  v19 = *(v12 + 368);
  time2 = *a5;
  rhs = *(v12 + 332);
  figPlaybackCoordinator_getPlayerTimeFromGroupTime(a1, &time2, &rhs, v19, 0, &time1);
  *a5 = time1;
  figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, a12, a11, 0);
  time1 = *a5;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    OUTLINED_FUNCTION_42_15();
    OUTLINED_FUNCTION_3_101();
LABEL_17:
    Mutable = 0;
    v24 = v61;
    goto LABEL_79;
  }

  v20 = *MEMORY[0x1E695E480];
  Current = CFAbsoluteTimeGetCurrent();
  allocator = v20;
  v22 = CFDateCreate(v20, Current);
  v23 = *(v12 + 256);
  *(v12 + 256) = a9;
  *(v12 + 264) = v22;
  v24 = v61;
  if (a9)
  {
    CFRetain(a9);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (a10 == 5)
  {
    FigSimpleMutexLock();
    *(v12 + 328) = 0;
    FigSimpleMutexUnlock();
    v25 = 1;
  }

  else
  {
    if (!a10)
    {
      figPlaybackCoordinator_updateReportingStats(a1);
    }

    v25 = 0;
  }

  if (v62)
  {
    *(v12 + 112) = 0;
    v27 = HIDWORD(v62) != 0;
    v28 = 0.0;
    if (HIDWORD(v62))
    {
      v28 = a2;
    }

    *(v12 + 176) = v28;
    *(v12 + 248) = 0;
    if (a2 == 0.0)
    {
      v27 = 0;
    }

    *(v12 + 252) = v27;
  }

  else
  {
    LODWORD(time1.value) = 0;
    v29 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v29)
    {
      v29(v61, &time1);
    }

    value = time1.value;
    *(v12 + 176) = time1.value;
    *(v12 + 248) = value;
    epoch = a5->epoch;
    *(v12 + 116) = *&a5->value;
    *(v12 + 132) = epoch;
    *(v12 + 140) = v60;
    *(v12 + 156) = v18;
  }

  if (*(v12 + 96) > a4)
  {
    if (dword_1ED4CBE70)
    {
      v32 = OUTLINED_FUNCTION_17_29();
      v33 = rhs.value;
      if (os_log_type_enabled(v32, type))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (v34)
      {
        v35 = *(v12 + 496);
        LODWORD(time2.value) = 136315650;
        *(&time2.value + 4) = "playbackCoordinator_jumpToTime";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = a1;
        HIWORD(time2.epoch) = 1024;
        v68 = v35;
        OUTLINED_FUNCTION_378();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_448();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    OUTLINED_FUNCTION_3_101();
LABEL_62:
    Mutable = 0;
    goto LABEL_79;
  }

  v36 = OUTLINED_FUNCTION_234();
  playbackCoordinator_completePendingStartupTask(v36, v37);
  v38 = *(v12 + 48);
  v39 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v39)
  {
    v39(v38, &v65);
  }

  CMTimeMake(&time1, 8, 1000);
  time2 = v65;
  rhs = *a5;
  IsWithinTolerance = faqrp_timeDifferenceIsWithinTolerance(&time2, &rhs, &time1);
  if (IsWithinTolerance)
  {
    v57 = 0;
  }

  else
  {
    LODWORD(time1.value) = 0;
    v41 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v41)
    {
      v41(v61, &time1);
    }

    if (v62 && !HIDWORD(v62) && *&time1.value != 0.0)
    {
      FigSimpleMutexLock();
      *(v12 + 272) = 1;
      FigSimpleMutexUnlock();
    }

    v57 = *(v12 + 88);
    *(v12 + 88) = FPSupport_IncrementSeekID(v57);
  }

  if (dword_1ED4CBE70)
  {
    v58 = v25;
    v42 = OUTLINED_FUNCTION_17_29();
    v43 = rhs.value;
    os_log_type_enabled(v42, type);
    OUTLINED_FUNCTION_134();
    if (v45)
    {
      v46 = v44;
    }

    else
    {
      v46 = v43;
    }

    if (v46)
    {
      v47 = *(v12 + 496);
      if (IsWithinTolerance)
      {
        v48 = " SKIP";
      }

      else
      {
        v48 = "";
      }

      time1 = *a5;
      Seconds = CMTimeGetSeconds(&time1);
      LODWORD(time2.value) = 136317186;
      *(&time2.value + 4) = "playbackCoordinator_jumpToTime";
      v50 = " NOT";
      LOWORD(time2.flags) = 2048;
      if (v62)
      {
        v51 = "";
      }

      else
      {
        v51 = " NOT";
      }

      *(&time2.flags + 2) = a1;
      HIWORD(time2.epoch) = 1024;
      if (HIDWORD(v62))
      {
        v50 = "";
      }

      v68 = v47;
      v69 = 2082;
      v70 = v48;
      v24 = v61;
      v71 = 2048;
      v72 = Seconds;
      v73 = 2082;
      v74 = "";
      v75 = 2082;
      v76 = v51;
      v77 = 2082;
      v78 = v50;
      v79 = 2048;
      v80 = a2;
      OUTLINED_FUNCTION_378();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_61_5();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
    v25 = v58;
  }

  *(v12 + 240) = IsWithinTolerance;
  if (v62)
  {
    if (FPSupport_CreateSetRateOptions(allocator, 33, &cf))
    {
      goto LABEL_62;
    }

    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    if (HIDWORD(v62))
    {
      if (a10 == 6 || (v52 = a2, !a10))
      {
        FigCFDictionarySetValue();
        v52 = a2;
      }
    }

    else
    {
      v52 = 0.0;
    }

    v53 = cf;
    v54 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (!v54 || v54(v24, v53, v52))
    {
      goto LABEL_62;
    }
  }

  *(v12 + 240) = 1;
  if (IsWithinTolerance)
  {
    Mutable = 0;
LABEL_75:
    if (HIDWORD(v62) && a2 != 0.0 && (time1 = *a5, figPlaybackCoordinator_isInterstitialScheduledAtTime(a1, &time1)))
    {
      OUTLINED_FUNCTION_42_15();
      OUTLINED_FUNCTION_3_101();
    }

    else
    {
      figPlaybackCoordinator_checkForCommandCompletion(a1);
    }

    goto LABEL_79;
  }

  *(v12 + 244) = v57;
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetValue();
  FigCFDictionarySetInt32();
  if (v25)
  {
    OUTLINED_FUNCTION_200_0();
    rhs = v65;
    CMTimeSubtract(&time1, &time2, &rhs);
    CMTimeGetSeconds(&time1);
    figPlaybackCoordinator_updateReportingStats(a1);
  }

  v55 = *(v12 + 48);
  OUTLINED_FUNCTION_200_0();
  v56 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (v56)
  {
    time1 = time2;
    if (!v56(v55, &time1, Mutable))
    {
      goto LABEL_75;
    }
  }

LABEL_79:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v24)
  {
    CFRelease(v24);
  }
}

uint64_t figPlaybackCoordinator_beginPlayingPrimarySuspension(const void *a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 448) && !FigTimelineCoordinatorSuspensionCreate() && *(DerivedStorage + 448))
  {
    figPlaybackCoordinator_BeginSuspension(a1);
  }

  return FigSimpleMutexUnlock();
}

uint64_t figPlaybackCoordinator_InterstitialStarted(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  result = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  if (*(result + 496))
  {
    v4 = result;
    FigPlaybackCoordinatorGetCMBaseObject(a2);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*(DerivedStorage + 448))
    {
      FigTimelineCoordinatorEndSuspension();
      v6 = *(DerivedStorage + 448);
      if (v6)
      {
        CFRelease(v6);
        *(DerivedStorage + 448) = 0;
      }
    }

    FigSimpleMutexUnlock();
    v7 = *(v4 + 48);
    if (v7)
    {
      FigBaseObject = FigPlaybackItemGetFigBaseObject(v7);
      VTable = CMBaseObjectGetVTable();
      v10 = *(VTable + 8);
      result = VTable + 8;
      v11 = *(v10 + 48);
      if (v11)
      {
        result = v11(FigBaseObject, @"ParticipatesInCoordinatedPlayback", *MEMORY[0x1E695E480], &v18);
        if (!result)
        {
          v12 = v18 == *MEMORY[0x1E695E4D0];
          *(v4 + 456) = v12;
          if (!v12)
          {
            result = playbackCoordinator_coordinatedPlaybackNotPossibleSuspensionActive(a2, 4);
            if (!result)
            {
              v16 = *MEMORY[0x1E6960C70];
              epoch = *(MEMORY[0x1E6960C70] + 16);
              v13 = *(v4 + 480);
              if (v13)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
                memset(&v15, 0, sizeof(v15));
                CMTimeMappingMakeFromDictionary(&v15, ValueAtIndex);
                v16 = *&v15.target.start.value;
                epoch = v15.target.start.epoch;
              }

              return playbackCoordinator_beginCoordinatedPlaybackNotPossibleSuspension(a2, 4);
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_239();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

void figPlaybackCoordinator_transitionToNewCurrentItem(uint64_t a1, const void *a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    a2 = 0;
  }

  if (a2 != *(DerivedStorage + 48))
  {
    figPlaybackCoordinator_removeAllItemListeners(a1);
    if (*(DerivedStorage + 56))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v6 = *(DerivedStorage + 56);
      if (v6)
      {
        CFRelease(v6);
        *(DerivedStorage + 56) = 0;
      }
    }

    v7 = OUTLINED_FUNCTION_16_6();
    if (playbackCoordinator_coordinatedPlaybackNotPossibleSuspensionActive(v7, v8) || *(DerivedStorage + 64) != 2 || (v9 = OUTLINED_FUNCTION_16_6(), !playbackCoordinator_beginCoordinatedPlaybackNotPossibleSuspension(v9, v10)))
    {
      v11 = *(DerivedStorage + 48);
      *(DerivedStorage + 48) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      *(DerivedStorage + 64) = 0;
      FigPlaybackCoordinatorGetCMBaseObject(a1);
      v12 = CMBaseObjectGetDerivedStorage();
      v13 = v12;
      v34 = 0;
      cf = 0;
      if (*(v12 + 64))
      {
        FigSignalErrorAtGM();
      }

      else if (*(v12 + 48))
      {
        FigPlaybackCoordinatorGetCMBaseObject(a1);
        v14 = CMBaseObjectGetDerivedStorage();
        if (*(v14 + 48))
        {
          v15 = v14;
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_31_18();
          FigNotificationCenterAddWeakListener();
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_31_18();
          FigNotificationCenterAddWeakListener();
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_31_18();
          FigNotificationCenterAddWeakListener();
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_31_18();
          FigNotificationCenterAddWeakListener();
          *(v15 + 68) = 1;
        }

        FigBaseObject = FigPlaybackItemGetFigBaseObject(*(v13 + 48));
        v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v17)
        {
          v25 = *MEMORY[0x1E695E480];
          if (!v17(FigBaseObject, @"IsReadyForPlayback", *MEMORY[0x1E695E480], &cf))
          {
            v26 = *MEMORY[0x1E695E4D0];
            if (cf == *MEMORY[0x1E695E4D0])
            {
              v18 = 102;
              goto LABEL_38;
            }

            v32 = FigPlaybackItemGetFigBaseObject(*(v13 + 48));
            v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v33)
            {
              if (!v33(v32, @"BasicsReadyForInspection", v25, &v34))
              {
                if (v34 == v26)
                {
                  v18 = 101;
LABEL_38:
                  v27 = *(v13 + 48);
                  v36 = 0;
                  if (v27)
                  {
                    v28 = FigPlaybackItemGetFigBaseObject(v27);
                    v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v29)
                    {
                      if (v29(v28, @"IsCoordinatedPlaybackSupported", v25, &v36))
                      {
                        v30 = 0;
                      }

                      else
                      {
                        v30 = v36 == *MEMORY[0x1E695E4C0];
                      }

                      v31 = v30;
                      if (v36)
                      {
                        CFRelease(v36);
                      }

                      if (v31)
                      {
                        v18 = 2;
                      }
                    }
                  }

                  else
                  {
                    FigSignalErrorAtGM();
                  }

                  goto LABEL_23;
                }

                v18 = 100;
LABEL_23:
                *(v13 + 64) = v18;
                if (cf)
                {
                  CFRelease(cf);
                }

                if (v34)
                {
                  CFRelease(v34);
                }

                figPlaybackCoordinator_resetInterstitialStateMachine(a1);
                v19 = *(DerivedStorage + 464);
                if (v19)
                {
                  CFRelease(v19);
                  *(DerivedStorage + 464) = 0;
                }

                v20 = *(DerivedStorage + 472);
                if (v20)
                {
                  CFRelease(v20);
                  *(DerivedStorage + 472) = 0;
                }

                figPlaybackCoordinator_seekToGroupTimeIfOnlyReadyForInspection(a1);
                figPlaybackCoordinator_startTrackingPlaybackStateIfReady(a1);
                figPlaybackCoordinator_setIntegratedTimelineOffsetTimesForItem(a1, a2);
                if (!figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming(a1))
                {
                  v21 = OUTLINED_FUNCTION_16_6();
                  if (playbackCoordinator_coordinatedPlaybackNotPossibleSuspensionActive(v21, v22) && *(DerivedStorage + 64) != 2)
                  {
                    v23 = OUTLINED_FUNCTION_16_6();
                    playbackCoordinator_endCoordinatedPlaybackNotPossibleSuspension(v23, v24);
                  }
                }

                goto LABEL_4;
              }
            }
          }
        }
      }

      v18 = 1;
      goto LABEL_23;
    }
  }

LABEL_4:
  FigSimpleMutexLock();
  *(DerivedStorage + 328) = 0;
  FigSimpleMutexUnlock();
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t playbackCoordinator_beginCoordinatedPlaybackNotPossibleSuspension(uint64_t a1, int a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 312);
  if (v4)
  {
    v5 = 0;
LABEL_9:
    v8 = 0;
    *(DerivedStorage + 312) = v4 | a2;
    goto LABEL_10;
  }

  if (*(DerivedStorage + 496))
  {
    v6 = MEMORY[0x1E6963310];
  }

  else
  {
    v6 = MEMORY[0x1E6963308];
  }

  v5 = *v6;
  v7 = FigTimelineCoordinatorSuspensionCreate();
  if (!v7)
  {
    v7 = FigTimelineCoordinatorBeginSuspensionProposingTime();
    if (!v7)
    {
      *(DerivedStorage + 304) = 0;
      v4 = *(DerivedStorage + 312);
      goto LABEL_9;
    }
  }

  v8 = v7;
LABEL_10:
  FigSimpleMutexUnlock();
  if (v5)
  {
    CFRelease(v5);
  }

  return v8;
}

void figPlaybackCoordinator_seekToGroupTimeIfOnlyReadyForInspection(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v54 = 0;
  cf = 0;
  v2 = MEMORY[0x1E6960C70];
  *&v52.value = *MEMORY[0x1E6960C70];
  epoch = *(MEMORY[0x1E6960C70] + 16);
  v52.epoch = epoch;
  *&v50.value = *&v52.value;
  v50.epoch = epoch;
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64) != 101)
  {
    goto LABEL_25;
  }

  v5 = DerivedStorage;
  if (figPlaybackCoordinator_recordDateOffsetForItem(a1, &v52))
  {
    goto LABEL_25;
  }

  figPlaybackCoordinator_recordInterstitialTimeRange(a1, &cf);
  FigBaseObject = FigPlaybackItemGetFigBaseObject(*(v5 + 48));
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = *MEMORY[0x1E695E480];
  if (v7(FigBaseObject, @"CoordinationIdentifier", *MEMORY[0x1E695E480], &v54))
  {
    goto LABEL_25;
  }

  if (FigTimelineCoordinatorIsSuspended())
  {
    goto LABEL_25;
  }

  if (FigTimelineCoordinatorGetExpectedGroupTimeForIdentifier())
  {
    goto LABEL_25;
  }

  if ((v50.flags & 1) == 0)
  {
    goto LABEL_25;
  }

  memset(&v49, 0, sizeof(v49));
  time1 = v50;
  time2 = v52;
  figPlaybackCoordinator_getPlayerTimeFromGroupTime(a1, &time1, &time2, cf, 0, &v49);
  time1 = v49;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    goto LABEL_25;
  }

  v46 = v49;
  v63 = *v2;
  v9 = *(v2 + 8);
  flags = *(v2 + 12);
  timescale = v9;
  v61 = *MEMORY[0x1E6960C80];
  v11 = *(MEMORY[0x1E6960C80] + 12);
  v62 = *(MEMORY[0x1E6960C80] + 8);
  v12 = *(v5 + 48);
  v59 = 0;
  v13 = *(MEMORY[0x1E6960C80] + 16);
  v14 = FigPlaybackItemGetFigBaseObject(v12);
  VTable = CMBaseObjectGetVTable();
  v23 = *(VTable + 8);
  v22 = (VTable + 8);
  v24 = *(v23 + 48);
  if (v24)
  {
    v24(v14, @"SeekableTimeIntervals", v8, &v59);
    v22 = v59;
    if (v59)
    {
      v44 = v8;
      Count = CFArrayGetCount(v59);
      if (Count >= 1)
      {
        v26 = Count;
        for (i = 0; i != v26; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v59, i);
          memset(&time1, 0, sizeof(time1));
          Value = CFDictionaryGetValue(ValueAtIndex, @"startTime");
          CMTimeMakeFromDictionary(&time1, Value);
          memset(&time2, 0, sizeof(time2));
          v30 = CFDictionaryGetValue(ValueAtIndex, @"endTime");
          CMTimeMakeFromDictionary(&time2, v30);
          v57.timescale = timescale;
          v57.flags = flags;
          v57.epoch = epoch;
          v56 = time1;
          v57.value = v63;
          if (CMTimeCompare(&v57, &v56) >= 1)
          {
            v63 = time1.value;
            flags = time1.flags;
            timescale = time1.timescale;
            epoch = time1.epoch;
          }

          v57.timescale = v62;
          v57.flags = v11;
          v57.epoch = v13;
          v56 = time2;
          v57.value = v61;
          if (CMTimeCompare(&v57, &v56) < 0)
          {
            v61 = time2.value;
            v11 = time2.flags;
            v62 = time2.timescale;
            v13 = time2.epoch;
          }
        }
      }

      CFRelease(v59);
    }
  }

  v31 = (flags & 0x1D) == 1 && (v11 & 0x1D) == 1;
  if (!v31 || (time1.value = v63, time1.timescale = timescale, time1.flags = flags, time1.epoch = epoch, v32 = OUTLINED_FUNCTION_22_23(v22, v16, v17, v18, v19, v20, v21, v42, v44, *&v46.value, v46.epoch, v49.value, *&v49.timescale, v49.epoch, v50.value, *&v50.timescale, v50.epoch, v51, v52.value, *&v52.timescale, v52.epoch, v53, v54, cf, v56.value, *&v56.timescale, v56.epoch, v57.value, *&v57.timescale, v57.epoch, *&time2.value, time2.epoch), v32 >= 1) || (time1.value = v61, time1.timescale = v62, time1.flags = v11, time1.epoch = v13, (OUTLINED_FUNCTION_22_23(v32, v33, v34, v35, v36, v37, v38, v43, v45, v47, v48, v49.value, *&v49.timescale, v49.epoch, v50.value, *&v50.timescale, v50.epoch, v51, v52.value, *&v52.timescale, v52.epoch, v53, v54, cf, v56.value, *&v56.timescale, v56.epoch, v57.value, *&v57.timescale, v57.epoch, *&time2.value, time2.epoch) & 0x80000000) != 0))
  {
LABEL_25:
    Mutable = 0;
  }

  else
  {
    *(v5 + 88) = FPSupport_IncrementSeekID(*(v5 + 88));
    Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    v40 = *(v5 + 48);
    v41 = *(*(CMBaseObjectGetVTable() + 16) + 176);
    if (v41)
    {
      time1 = v49;
      v41(v40, &time1, Mutable);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void figPlaybackCoordinator_startTrackingPlaybackStateIfReady(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  cf = 0;
  if (*(DerivedStorage + 64) == 102)
  {
    v3 = DerivedStorage;
    FigPlaybackCoordinatorGetCMBaseObject(a1);
    v4 = CMBaseObjectGetDerivedStorage();
    if (*(v4 + 48))
    {
      v5 = v4;
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_8_48();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_8_48();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_8_48();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_8_48();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_8_48();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_8_48();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_8_48();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_8_48();
      *(v5 + 69) = 1;
    }

    FigPlaybackCoordinatorGetCMBaseObject(a1);
    CMBaseObjectGetDerivedStorage();
    FigPlaybackItemGetFigBaseObject(v3[6]);
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v6 = *MEMORY[0x1E695E480];
      v7 = OUTLINED_FUNCTION_501();
      if (!v8(v7))
      {
        figPlaybackCoordinator_addTimebaseNotificationListeners(a1, cf);
        figPlaybackCoordinator_updateHLSInterstitialStartTimes(a1);
        figPlaybackCoordinator_recordCurrentHLSInterstitialEventCoordinationStatus(a1);
        v9 = cf;
        if (cf)
        {
          v9 = CFRetain(cf);
        }

        v3[7] = v9;
        FigPlaybackCoordinatorGetCMBaseObject(a1);
        v10 = CMBaseObjectGetDerivedStorage();
        theArray = 0;
        v29 = 0;
        v11 = *(v10 + 48);
        if (v11)
        {
          FigBaseObject = FigPlaybackItemGetFigBaseObject(v11);
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v13)
          {
            if (!v13(FigBaseObject, 0x1F0B28738, v6, &v29) && !figPlaybackCoordinator_CopyParticipantSnapshots(a1, &theArray))
            {
              if (theArray)
              {
                Count = CFArrayGetCount(theArray);
                if (Count >= 1)
                {
                  v15 = *(v10 + 320);
                  if (v15)
                  {
                    v16 = Count;
                    v17 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                    if (v17)
                    {
                      v17(v15, 0x1F0B64638, 0x1F0B66F98, v16);
                    }

                    v18 = *(v10 + 320);
                    if (v18)
                    {
                      v19 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                      if (v19)
                      {
                        v19(v18, 0x1F0B66F78, 0x1F0B66F98, 1);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_239();
          FigSignalErrorAtGM();
        }

        v20 = *(v10 + 320);
        v21 = v29;
        *(v10 + 320) = v29;
        if (v21)
        {
          CFRetain(v21);
        }

        if (v20)
        {
          CFRelease(v20);
        }

        if (v29)
        {
          CFRelease(v29);
        }

        if (theArray)
        {
          CFRelease(theArray);
        }

        v22 = FigPlaybackItemGetFigBaseObject(v3[6]);
        v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v23 && !v23(v22, @"IntegratedTimelineTimeOffsets", v6, &v26))
        {
          v24 = v3[60];
          v25 = v26;
          v3[60] = v26;
          if (v25)
          {
            CFRetain(v25);
          }

          if (v24)
          {
            CFRelease(v24);
          }
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }
}

uint64_t figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming(uint64_t a1)
{
  v127 = *MEMORY[0x1E69E9840];
  timebase = 0;
  cf = 0;
  v117 = 0;
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  v3 = OUTLINED_FUNCTION_28_20();
  v116 = **&MEMORY[0x1E6960C70];
  v4 = *(MEMORY[0x1E6960C98] + 16);
  v114 = *MEMORY[0x1E6960C98];
  *v115 = v4;
  *&v115[16] = *(MEMORY[0x1E6960C98] + 32);
  HIDWORD(v113) = 0;
  LODWORD(v5) = *(v1 + 64);
  v111 = 0;
  OUTLINED_FUNCTION_42_15();
  OUTLINED_FUNCTION_3_101();
  *(v1 + 112) = 0;
  *(v1 + 176) = 2143289344;
  if (*(v1 + 64) < 0x66u)
  {
    goto LABEL_44;
  }

  FigPlaybackItemGetFigBaseObject(*(v1 + 48));
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v6 = OUTLINED_FUNCTION_501();
    DefaultCoordinationIdentifierForPlaybackItem = v7(v6);
    if (DefaultCoordinationIdentifierForPlaybackItem == -12783)
    {
      DefaultCoordinationIdentifierForPlaybackItem = FPSupport_CreateDefaultCoordinationIdentifierForPlaybackItem(*(v1 + 48), &cf);
    }

    v9 = DefaultCoordinationIdentifierForPlaybackItem == 0;
  }

  else
  {
    v9 = 0;
  }

  figPlaybackCoordinator_beginOrEndCoordinatedPlaybackNotPossibleSuspension(a1, v9, 2);
  if (*(v1 + 496))
  {
    FigPlaybackItemGetFigBaseObject(*(v1 + 48));
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      goto LABEL_24;
    }

    v10 = OUTLINED_FUNCTION_501();
    v12 = v11(v10);
    if (v12)
    {
      goto LABEL_88;
    }

    *(v1 + 456) = *MEMORY[0x1E695E4D0] == 0;
    FigPlaybackCoordinatorGetCMBaseObject(a1);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 496) != 1 || (v14 = DerivedStorage, FigSimpleMutexLock(), v5 = *(v14 + 448), FigSimpleMutexUnlock(), !v5))
    {
      figPlaybackCoordinator_beginOrEndCoordinatedPlaybackNotPossibleSuspension(a1, *(v1 + 456) != 0, 4);
    }
  }

  FigPlaybackItemGetFigBaseObject(*(v1 + 48));
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
LABEL_24:
    v32 = 4294954514;
    if (!v3)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  v15 = OUTLINED_FUNCTION_501();
  v12 = v16(v15);
  if (v12)
  {
    goto LABEL_88;
  }

  figPlaybackCoordinator_recordInterstitialTimeRange(a1, 0);
  Rate = CMTimebaseGetRate(timebase);
  *(v1 + 176) = Rate;
  figPlaybackCoordinator_recordDateOffsetForItem(a1, 0);
  v18 = *(v1 + 48);
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v19)
  {
    v19(v18, &v116);
  }

  v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v20)
  {
    v20(v3, &v113 + 4);
  }

  v29.n128_f64[0] = CMTimebaseGetRate(timebase);
  v30 = v29.n128_f64[0];
  if (v30 == 0.0 && v3)
  {
    v29.n128_u32[0] = HIDWORD(v113);
    v31 = 0.0;
    if ((v116.flags & 1) != 0 && *(&v113 + 1) != v30)
    {
      *(v1 + 176) = HIDWORD(v113);
      v31 = v29.n128_f32[0];
    }
  }

  else
  {
    v31 = 0.0;
    v29.n128_u32[0] = HIDWORD(v113);
  }

  if (v29.n128_f32[0] != 0.0 && (v116.flags & 1) != 0)
  {
    OUTLINED_FUNCTION_2_125(isTimeInInterstitialRange, v22, v23, v24, v25, v26, v27, v28, v103, v105, v107, type, 0, v113, v114, *(&v114 + 1), *v115, *&v115[8], *&v115[16], *&v115[24], v29, v116.value);
    isTimeInInterstitialRange = figPlaybackCoordinator_isTimeInInterstitialRange(a1, &time, &v114);
    if (isTimeInInterstitialRange)
    {
      if (dword_1ED4CBE70)
      {
        v33 = OUTLINED_FUNCTION_5_86();
        OUTLINED_FUNCTION_304(v33, v34, v35, v36, v37, v38, v39, v40, v103, v105, v107, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
        OUTLINED_FUNCTION_134();
        if (v51)
        {
          v52 = v49;
        }

        else
        {
          v52 = v5;
        }

        if (v52)
        {
          v50.n128_u32[0] = HIDWORD(v113);
          v53 = *(&v113 + 1);
          OUTLINED_FUNCTION_2_125(v41, v42, v43, v44, v45, v46, v47, v48, v103, v105, v107, type, v111, v113, v114, *(&v114 + 1), *v115, *&v115[8], *&v115[16], *&v115[24], v50, v116.value);
          Seconds = CMTimeGetSeconds(&time);
          *&time.value = v114;
          time.epoch = *v115;
          v55 = CMTimeGetSeconds(&time);
          time = *&v115[8];
          CMTimeGetSeconds(&time);
          LODWORD(v120.value) = 136317186;
          OUTLINED_FUNCTION_7_62();
          *(v123 + 2) = v53;
          WORD1(v123[1]) = v56;
          *(&v123[1] + 4) = Seconds;
          WORD2(v123[2]) = v56;
          *(&v123[2] + 6) = v55;
          HIWORD(v123[3]) = v56;
          v124 = v57;
          OUTLINED_FUNCTION_378();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_448();
        }

        OUTLINED_FUNCTION_7();
        isTimeInInterstitialRange = OUTLINED_FUNCTION_238_0();
      }

      OUTLINED_FUNCTION_18_28(isTimeInInterstitialRange, v22, v23, v24, v25, v26, v27, v28, v103, v105, v107, type, v111, v113, v114, *(&v114 + 1), *v115, *&v115[8], *&v115[16], *&v115[24], *&v116.value, v116.epoch, v117, timebase, cf, *&v120.value, v120.epoch, v121, *(&v121 + 1), v122, v123[0], v123[1], v123[2], v123[3], v124, v125, time.value);
      v116 = time;
LABEL_86:
      v12 = FigTimelineCoordinatorHandleTransitionToNewTimelineFromTimelineControlProposingTimeAndPrerollRate();
      if (v12)
      {
        goto LABEL_88;
      }

      LODWORD(v5) = 10000;
      goto LABEL_57;
    }
  }

  if (v31 != 0.0)
  {
    OUTLINED_FUNCTION_18_28(isTimeInInterstitialRange, v22, v23, v24, v25, v26, v27, v28, v103, v105, v107, type, v111, v113, v114, *(&v114 + 1), *v115, *&v115[8], *&v115[16], *&v115[24], *&v116.value, v116.epoch, v117, timebase, cf, *&v120.value, v120.epoch, v121, *(&v121 + 1), v122, v123[0], v123[1], v123[2], v123[3], v124, v125, time.value);
    v63 = *&time.value;
    v116 = time;
    if (dword_1ED4CBE70)
    {
      v64 = OUTLINED_FUNCTION_5_86();
      OUTLINED_FUNCTION_304(v64, v65, v66, v67, v68, v69, v70, v71, v104, v106, v108, v110, SBYTE2(v110), BYTE3(v110), SHIDWORD(v110));
      OUTLINED_FUNCTION_134();
      if (v51)
      {
        v82 = v80;
      }

      else
      {
        v82 = v5;
      }

      if (v82)
      {
        OUTLINED_FUNCTION_2_125(v72, v73, v74, v75, v76, v77, v78, v79, v104, v106, v108, v110, v112, v113, v114, *(&v114 + 1), *v115, *&v115[8], *&v115[16], *&v115[24], v81, v116.value);
        CMTimeGetSeconds(&time);
        LODWORD(v120.value) = 136316674;
        OUTLINED_FUNCTION_7_62();
        *(v123 + 2) = v31;
        WORD1(v123[1]) = v83;
        *(&v123[1] + 4) = v84;
        OUTLINED_FUNCTION_378();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_448();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0();
    }

    OUTLINED_FUNCTION_2_125(*(v1 + 16), cf, v58, *(v1 + 104), v59, v60, v61, v62, v104, v106, v108, v110, v112, v113, v114, *(&v114 + 1), *v115, *&v115[8], *&v115[16], *&v115[24], v63, v116.value);
    goto LABEL_86;
  }

  LODWORD(v5) = 10000;
LABEL_44:
  if (dword_1ED4CBE70)
  {
    v85 = OUTLINED_FUNCTION_5_86();
    if (os_log_type_enabled(v85, BYTE3(type)))
    {
      v86 = HIDWORD(type);
    }

    else
    {
      v86 = HIDWORD(type) & 0xFFFFFFFE;
    }

    if (v86)
    {
      v87 = *(v1 + 496);
      v88 = *(v1 + 80);
      LODWORD(v120.value) = 136316162;
      *(&v120.value + 4) = "figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming";
      LOWORD(v120.flags) = 2048;
      *(&v120.flags + 2) = a1;
      HIWORD(v120.epoch) = 1024;
      LODWORD(v121) = v87;
      WORD2(v121) = 2114;
      *(&v121 + 6) = v88;
      HIWORD(v121) = 2114;
      v122 = cf;
      OUTLINED_FUNCTION_378();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_448();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(v1 + 104) && cf)
  {
    v89 = *(v1 + 56);
    FigPlaybackCoordinatorGetCMBaseObject(a1);
    v90 = CMBaseObjectGetDerivedStorage();
    v91 = CMTimebaseGetRate(v89);
    if (v91 == 0.0)
    {
      *(v90 + 112) = 0;
    }

    else
    {
      *(v90 + 112) = 1;
      v97 = v91;
      *(v90 + 164) = v97;
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&time, HostTimeClock);
      *(v90 + 140) = time;
      v99 = CMClockGetHostTimeClock();
      v120 = *(v90 + 140);
      CMSyncConvertTime(&time, &v120, v99, v89);
      *(v90 + 116) = time;
      v102 = *(v90 + 168);
      v101 = (v90 + 168);
      v100 = v102;
      if (v102)
      {
        CFRelease(v100);
        *v101 = 0;
      }

      v12 = figPlaybackCoordinator_copyTimebaseAndAddOffset(v89, MEMORY[0x1E6960CC0], v101);
      if (v12)
      {
        goto LABEL_88;
      }
    }
  }

  v12 = figPlaybackCoordinator_copyGroupTimebaseFromCurrentItemTimebase(a1, &v117);
  if (v12)
  {
    goto LABEL_88;
  }

  v12 = FigTimelineCoordinatorHandleTransitionToNewTimelineFromTimelineControl();
  if (v12)
  {
    goto LABEL_88;
  }

LABEL_57:
  v92 = *(v1 + 80);
  v93 = cf;
  *(v1 + 80) = cf;
  if (v93)
  {
    CFRetain(v93);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  v12 = FigTimelineCoordinatorSetReadinessHintFromTimelineControl();
  if (!v12)
  {
    if (!*(v1 + 384))
    {
      v95 = OUTLINED_FUNCTION_234();
      figPlaybackCoordinator_updateInterstitialStateMachine(v95, v96);
    }

    if (*(v1 + 64) == v5)
    {
      v32 = 0;
      if (!v3)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v32 = 0;
      *(v1 + 64) = v5;
      if (!v3)
      {
        goto LABEL_69;
      }
    }

LABEL_68:
    CFRelease(v3);
    goto LABEL_69;
  }

LABEL_88:
  v32 = v12;
  if (v3)
  {
    goto LABEL_68;
  }

LABEL_69:
  if (cf)
  {
    CFRelease(cf);
  }

  if (timebase)
  {
    CFRelease(timebase);
  }

  if (v117)
  {
    CFRelease(v117);
  }

  if (v111)
  {
    CFRelease(v111);
  }

  return v32;
}

uint64_t figPlaybackCoordinator_recordDateOffsetForItem(uint64_t a1, CMTime *a2)
{
  v27 = 0;
  v26 = **&MEMORY[0x1E6960C70];
  v25 = v26;
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (*(DerivedStorage + 64) < 0x65u)
  {
LABEL_16:
    result = 0;
    goto LABEL_18;
  }

  v5 = *(DerivedStorage + 48);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6)
  {
    goto LABEL_17;
  }

  result = v6(v5, &v26);
  if (result)
  {
    goto LABEL_18;
  }

  if ((v26.flags & 0x1D) == 1)
  {
    goto LABEL_16;
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject(*(v4 + 48));
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v10 = *MEMORY[0x1E695E480];
    result = v9(FigBaseObject, @"currentDateAndTime", *MEMORY[0x1E695E480], &v27);
    if (!result)
    {
      FigDateTimeMakeFromDictionary(v27, &time);
      v24 = time;
      v11 = v21;
      v12 = v22;
      v13 = v23;
      CFRelease(v27);
      result = 0;
      if (v13)
      {
        if (v12)
        {
          memset(&v19, 0, sizeof(v19));
          CMTimeMakeWithSeconds(&v19, v11, 1000000000);
          time = v24;
          Seconds = CMTimeGetSeconds(&time);
          v15 = CFDateCreate(v10, v11);
          v16 = CFCopyDescription(v15);
          if (v15)
          {
            CFRelease(v15);
          }

          v17 = CFStringCreateWithFormat(v10, 0, @"time: %f date: %@ (%f)", *&Seconds, v16, *&v11);
          if (v16)
          {
            CFRelease(v16);
          }

          if (v17)
          {
            CFRelease(v17);
          }

          time = v19;
          rhs = v24;
          CMTimeSubtract(&v25, &time, &rhs);
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
LABEL_17:
    result = 4294954514;
  }

LABEL_18:
  if (a2)
  {
    *a2 = v25;
  }

  if (*(v4 + 64) >= 0x66u)
  {
    *(v4 + 332) = v25;
  }

  return result;
}

void figPlaybackCoordinator_recordInterstitialTimeRange(uint64_t a1, void *a2)
{
  cf = 0;
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64) < 0x65u || (v4 = DerivedStorage, FigBaseObject = FigPlaybackItemGetFigBaseObject(*(DerivedStorage + 48)), (v6 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v6(FigBaseObject, @"InterstitialTimeRanges", *MEMORY[0x1E695E480], &cf))
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v7 = 0;
  if (*(v4 + 64) >= 0x66u && cf)
  {
    if (!*(v4 + 368))
    {
      v7 = FigCFCopyCompactDescription();
      *(v4 + 368) = CFRetain(cf);
      if (!a2)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_8:
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = cf;
  if (cf)
  {
    v8 = CFRetain(cf);
  }

  *a2 = v8;
LABEL_12:
  if (v7)
  {
    CFRelease(v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void figPlaybackCoordinator_recordCurrentHLSInterstitialEventCoordinationStatus(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf1 = 0;
  v2 = *(DerivedStorage + 48);
  if (v2)
  {
    if (*(DerivedStorage + 64) != 10000)
    {
      goto LABEL_17;
    }

    FigBaseObject = FigPlaybackItemGetFigBaseObject(v2);
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v4 || v4(FigBaseObject, @"currentInterstitialEvent", *MEMORY[0x1E695E480], &cf1))
    {
      goto LABEL_17;
    }

    if (cf1)
    {
      if (CFEqual(cf1, &stru_1F0B1AFB8))
      {
        goto LABEL_17;
      }

      *(DerivedStorage + 488) = 1;
      v5 = *(DerivedStorage + 472);
      if (!v5)
      {
        goto LABEL_17;
      }

      Count = CFArrayGetCount(v5);
      if (Count < 1)
      {
        goto LABEL_17;
      }

      v7 = Count;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 472), v8);
        cf = 0;
        if (!FigPlayerInterstitialEventCreateFromDictionary(0, ValueAtIndex, &cf))
        {
          v10 = FigPlayerInterstitialEventCopyIdentifier(cf);
          if (CFStringCompare(cf1, v10, 0) == kCFCompareEqualTo)
          {
            if (FigPlayerInterstitialEventContentMayVary(cf) || !FigPlayerInterstitialEventGetTimelineOccupancy(cf) || FigPlayerInterstitialEventIsPreRoll(cf))
            {
              *(DerivedStorage + 488) = 0;
            }

            if (cf)
            {
              CFRelease(cf);
            }

            if (v10)
            {
              CFRelease(v10);
            }

LABEL_17:
            if (cf1)
            {
              CFRelease(cf1);
            }

            return;
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v10)
          {
            CFRelease(v10);
          }
        }

        if (v7 == ++v8)
        {
          goto LABEL_17;
        }
      }
    }
  }
}

void figPlaybackCoordinator_itemBecameLikelyToKeepUp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) == a4)
  {
    v7 = DerivedStorage;
    v8 = *MEMORY[0x1E6963328];
    FigPlaybackCoordinatorGetCMBaseObject(a2);
    v9 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(v9 + 296), v8);
    if (Value)
    {
      v11 = Value;
      CFRetain(Value);
      CFDictionaryRemoveValue(*(v9 + 296), v8);
      FigSimpleMutexUnlock();
      v12 = FigTimelineCoordinatorEndSuspension();
      CFRelease(v11);
      if (v12)
      {
        return;
      }
    }

    else
    {
      CFDictionaryRemoveValue(*(v9 + 296), v8);
      FigSimpleMutexUnlock();
    }

    figPlaybackCoordinator_checkForCommandCompletion(a2);
    v13 = *(v7 + 208);
    if (v13)
    {
      v14 = *MEMORY[0x1E695E480];
      Current = CFAbsoluteTimeGetCurrent();
      v16 = CFDateCreate(v14, Current);
      *(v7 + 208) = v16;
      if (v16)
      {
        CFRetain(v16);
      }

      CFRelease(v13);
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();

    FigSignalErrorAtGM();
  }
}

void figPlaybackCoordinator_hlsInterstitialEventsChanged(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_28_20();
  cf = 0;
  if (v4)
  {
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v6)
    {
      v6(v5, 0, &cf);
      v7 = cf;
    }

    else
    {
      v7 = 0;
    }

    if (v7 == *(v2 + 48))
    {
      figPlaybackCoordinator_updateHLSInterstitialStartTimes(a2);
      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
    }

    CFRelease(v5);
  }
}

void figPlaybackCoordinator_hlsCurrentInterstitialEventChanged(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a2);
  CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_28_20();
  v8 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v6)
    {
      v6(v5, 0, &v8);
      v7 = v8;
    }

    else
    {
      v7 = 0;
    }

    if (!*(v2 + 496) && v7 == *(v2 + 48))
    {
      figPlaybackCoordinator_recordCurrentHLSInterstitialEventCoordinationStatus(a2);
      v7 = v8;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else if (!v7)
    {
LABEL_9:
      CFRelease(v5);
      return;
    }

    CFRelease(v7);
    goto LABEL_9;
  }
}

void figPlaybackCoordinator_checkForCommandCompletion(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  cf = 0;
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 224))
  {
    goto LABEL_20;
  }

  v3 = DerivedStorage;
  Rate = CMTimebaseGetRate(*(DerivedStorage + 56));
  if (*(v3 + 244))
  {
    if (!dword_1ED4CBE70)
    {
      goto LABEL_20;
    }

    v5 = OUTLINED_FUNCTION_4_99();
    v13 = OUTLINED_FUNCTION_437_1(v5, v6, v7, v8, v9, v10, v11, v12, v37, v38, v39, SBYTE2(v39), BYTE3(v39), SHIDWORD(v39));
    if (!OUTLINED_FUNCTION_109_0(v13))
    {
      goto LABEL_19;
    }

    v41 = 136315650;
    OUTLINED_FUNCTION_9_45();
    goto LABEL_10;
  }

  v14 = Rate;
  if (*(v3 + 248) != v14)
  {
    if (!dword_1ED4CBE70)
    {
      goto LABEL_20;
    }

    v15 = OUTLINED_FUNCTION_4_99();
    v23 = OUTLINED_FUNCTION_437_1(v15, v16, v17, v18, v19, v20, v21, v22, v37, v38, v39, SBYTE2(v39), BYTE3(v39), SHIDWORD(v39));
    if (!OUTLINED_FUNCTION_109_0(v23))
    {
      goto LABEL_19;
    }

    v24 = *(v3 + 496);
    v25 = *(v3 + 248);
    v41 = 136316162;
    v42 = "figPlaybackCoordinator_checkForCommandCompletion";
    v43 = 2048;
    v44 = a1;
    v45 = 1024;
    v46 = v24;
    v47 = 2048;
    v48 = v14;
    v49 = 2048;
    v50 = v25;
    goto LABEL_10;
  }

  if (!*(v3 + 252))
  {
    goto LABEL_15;
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject(*(v3 + 48));
  v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v27)
  {
    v27(FigBaseObject, @"WillKeepUpPrediction", *MEMORY[0x1E695E480], &cf);
  }

  if (FigCFEqual())
  {
LABEL_15:
    figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, 0, 0, 1);
    goto LABEL_20;
  }

  if (dword_1ED4CBE70)
  {
    v28 = OUTLINED_FUNCTION_4_99();
    v36 = OUTLINED_FUNCTION_437_1(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, SBYTE2(v39), BYTE3(v39), SHIDWORD(v39));
    if (!OUTLINED_FUNCTION_109_0(v36))
    {
      goto LABEL_19;
    }

    v41 = 136315650;
    OUTLINED_FUNCTION_9_45();
LABEL_10:
    OUTLINED_FUNCTION_108();
    _os_log_send_and_compose_impl();
LABEL_19:
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }
}

void figPlaybackCoordinator_updateInterstitialStateMachine(const void *a1, int a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v133 = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  epoch = v5;
  v115 = v133;
  *&v132.value = v133;
  v132.epoch = v5;
  v6 = *(DerivedStorage + 368);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v15 = (DerivedStorage + 392);
      v16 = *(DerivedStorage + 384);
      v17 = MEMORY[0x1E6960C98];
      while (1)
      {
        do
        {
          while (1)
          {
            if (v16 < 2)
            {
              v130 = v115;
              v131 = v5;
              v41 = *(DerivedStorage + 48);
              v42 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (v42)
              {
                v42(v41, &v130);
              }

              v107 = v17[1];
              v112 = *v17;
              v127 = *v17;
              v128 = v107;
              v102 = v17[2];
              v129 = v102;
              FigPlaybackCoordinatorGetCMBaseObject(a1);
              v43 = CMBaseObjectGetDerivedStorage();
              *&range.start.value = v115;
              range.start.epoch = v5;
              LODWORD(lhs.start.value) = 0;
              v44 = FigCFWeakReferenceHolderCopyReferencedObject();
              if (v44)
              {
                v45 = v44;
                v46 = *(v43 + 48);
                v47 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v47)
                {
                  v47(v46, &range);
                }

                v48 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                if (!v48 || (v48(v45, &lhs), *&lhs.start.value == 0.0))
                {
                  CFRelease(v45);
                }

                else
                {
                  OUTLINED_FUNCTION_29_20();
                  isTimeInInterstitialRange = figPlaybackCoordinator_isTimeInInterstitialRange(a1, &v136.start, &v127);
                  CFRelease(v45);
                  if (isTimeInInterstitialRange)
                  {
                    if ((*(DerivedStorage + 404) & 1) == 0 || (*(DerivedStorage + 428) & 1) == 0 || *(DerivedStorage + 432) || (*(DerivedStorage + 416) & 0x8000000000000000) != 0)
                    {
                      v50 = v128;
                      *v15 = v127;
                      *(DerivedStorage + 408) = v50;
                      *(DerivedStorage + 424) = v129;
                    }

                    v51 = *(DerivedStorage + 408);
                    *&range.start.value = *v15;
                    *&range.start.epoch = v51;
                    *&range.duration.timescale = *(DerivedStorage + 424);
                    CMTimeRangeGetEnd(&v136.start, &range);
                    OUTLINED_FUNCTION_27_20(&range.start);
                    CMTimeAdd(&v132, &v136.start, &range.start);
                    range.start = v132;
                    v52 = OUTLINED_FUNCTION_24_21();
                    figPlaybackCoordinator_primeNextInterstitialEventTimer(v52, v53, 1);
                    OUTLINED_FUNCTION_12_42();
                    v54 = OUTLINED_FUNCTION_24_21();
                    figPlaybackCoordinator_getGroupTimeFromPlayerTimeForInterstitials(v54, v55, v56);
                    FigPlaybackCoordinatorGetCMBaseObject(a1);
                    v57 = CMBaseObjectGetDerivedStorage();
                    if (!*(v57 + 440))
                    {
                      v58 = v57;
                      if (!FigTimelineCoordinatorSuspensionCreate())
                      {
                        if (*(v58 + 440))
                        {
                          figPlaybackCoordinator_BeginSuspension(a1);
                        }
                      }
                    }

                    v59 = 3;
LABEL_64:
                    *(DerivedStorage + 384) = v59;
                    return;
                  }
                }
              }

              else
              {
                OUTLINED_FUNCTION_239();
                FigSignalErrorAtGM();
              }

              OUTLINED_FUNCTION_12_42();
              v60 = OUTLINED_FUNCTION_24_21();
              figPlaybackCoordinator_getGroupTimeFromPlayerTimeForInterstitials(v60, v61, v62);
              OUTLINED_FUNCTION_27_20(&v136.start);
              *&lhs.start.value = v133;
              lhs.start.epoch = epoch;
              CMTimeAdd(&range.start, &lhs.start, &v136.start);
              v63 = OUTLINED_FUNCTION_24_21();
              figPlaybackCoordinator_endDiscontinuitiyBasedInterstitialSuspensionProposingNewTime(v63);
              v119 = v130;
              v123 = v131;
              FigPlaybackCoordinatorGetCMBaseObject(a1);
              v64 = CMBaseObjectGetDerivedStorage();
              v65 = *(v64 + 368);
              if (v65)
              {
                v66 = CFArrayGetCount(v65);
              }

              else
              {
                v66 = 0;
              }

              *&lhs.start.value = v112;
              *&lhs.start.epoch = v107;
              *&lhs.duration.timescale = v102;
              v138 = 0.0;
              v67 = FigCFWeakReferenceHolderCopyReferencedObject();
              if (v67)
              {
                v68 = v67;
                v69 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                if (v69)
                {
                  v69(v68, &v138);
                }

                if (v66 >= 1)
                {
                  v70 = 0;
                  while (1)
                  {
                    memset(&range, 0, sizeof(range));
                    ValueAtIndex = CFArrayGetValueAtIndex(*(v64 + 368), v70);
                    v72 = CMTimeRangeMakeFromDictionary(&range, ValueAtIndex);
                    v136 = range;
                    v80 = OUTLINED_FUNCTION_19_31(v72, v73, v74, v75, v76, v77, v78, v79, v102.n128_i64[0], v102.n128_i64[1], v107.n128_i64[0], v107.n128_i64[1], v112.n128_i64[0], v112.n128_i64[1], v115, *(&v115 + 1), v119, v123);
                    if (figPlaybackCoordinator_timeRangeContainsTimeWithStartTolerance(v80, v81))
                    {
                      if (v138 == 0.0)
                      {
                        break;
                      }
                    }

                    OUTLINED_FUNCTION_29_20();
                    v90 = OUTLINED_FUNCTION_19_31(v82, v83, v84, v85, v86, v87, v88, v89, v103, v104, v108, v109, v113, v114, v116, v117, v120, v124);
                    if ((CMTimeCompare(v90, v91) & 0x80000000) == 0)
                    {
                      break;
                    }

                    if (v66 == ++v70)
                    {
                      goto LABEL_56;
                    }
                  }

                  lhs = range;
                }

LABEL_56:
                CFRelease(v68);
              }

              else
              {
                OUTLINED_FUNCTION_239();
                FigSignalErrorAtGM();
              }

              v92 = *&lhs.start.epoch;
              *v15 = *&lhs.start.value;
              *(DerivedStorage + 408) = v92;
              *(DerivedStorage + 424) = *&lhs.duration.timescale;
              if ((*(DerivedStorage + 404) & 1) == 0 || (*(DerivedStorage + 428) & 1) == 0 || *(DerivedStorage + 432) || (*(DerivedStorage + 416) & 0x8000000000000000) != 0)
              {
                figPlaybackCoordinator_clearInterstitialEventTimer(a1);
              }

              else
              {
                OUTLINED_FUNCTION_12_42();
                v93 = OUTLINED_FUNCTION_24_21();
                figPlaybackCoordinator_primeNextInterstitialEventTimer(v93, v94, 0);
              }

              v59 = 2;
              goto LABEL_64;
            }

            if (v16 != 2)
            {
              break;
            }

            if (a2 == 2)
            {
              goto LABEL_23;
            }

            v16 = 2;
            if (a2 == 1)
            {
              v21 = v17[1];
              *v15 = *v17;
              *(DerivedStorage + 408) = v21;
              *(DerivedStorage + 424) = v17[2];
              goto LABEL_23;
            }
          }
        }

        while (v16 != 3);
        v127 = v115;
        v128.n128_u64[0] = v5;
        v18 = *v17;
        v19 = v17[1];
        *&range.start.value = *v17;
        *&range.start.epoch = v19;
        v20 = v17[2];
        *&range.duration.timescale = v20;
        if (a2 == 1)
        {
          break;
        }

        if (a2 == 3)
        {
LABEL_18:
          if (v127.n128_u8[12])
          {
            OUTLINED_FUNCTION_30_18(Count, v8, v9, v10, v11, v12, v13, v14, v100, *(&v100 + 1), v105, *(&v105 + 1), v110, *(&v110 + 1), v115, *(&v115 + 1), v118, v121, v122, v125, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, v18, v127.n128_i64[0]);
            v37 = OUTLINED_FUNCTION_35_14();
            figPlaybackCoordinator_getGroupTimeFromPlayerTimeForInterstitials(v37, v38, v39);
          }

          else
          {
            *&v136.start.value = *v15;
            v136.start.epoch = *(DerivedStorage + 408);
            v34 = OUTLINED_FUNCTION_35_14();
            figPlaybackCoordinator_getGroupTimeFromPlayerTimeForInterstitials(v34, v35, v36);
            OUTLINED_FUNCTION_27_20(&rhs);
            CMTimeAdd(&v136.start, &lhs.start, &rhs);
            v133 = *&v136.start.value;
            epoch = v136.start.epoch;
          }

          *&v136.start.value = v133;
          v136.start.epoch = epoch;
          v40 = OUTLINED_FUNCTION_35_14();
          figPlaybackCoordinator_endDiscontinuitiyBasedInterstitialSuspensionProposingNewTime(v40);
          if (*(DerivedStorage + 104))
          {
            Count = figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming(a1);
          }

LABEL_23:
          v16 = 1;
          *(DerivedStorage + 384) = 1;
        }

        else
        {
          v16 = 3;
        }
      }

      v101 = v20;
      v106 = v19;
      v111 = v18;
      v22 = *(DerivedStorage + 48);
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v23)
      {
        v23(v22, &v127);
      }

      v24 = *(DerivedStorage + 408);
      *&v136.start.value = *v15;
      *&v136.start.epoch = v24;
      *&v136.duration.timescale = *(DerivedStorage + 424);
      *&lhs.start.value = v127;
      lhs.start.epoch = v128.n128_u64[0];
      started = figPlaybackCoordinator_timeRangeContainsTimeWithStartTolerance(&v136, &lhs.start);
      if (started)
      {
        return;
      }

      OUTLINED_FUNCTION_30_18(started, v26, v27, v28, v29, v30, v31, v32, v101.n128_i64[0], v101.n128_i64[1], v106.n128_i64[0], v106.n128_i64[1], v111.n128_i64[0], v111.n128_i64[1], v115, *(&v115 + 1), v118, v121, v122, v125, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, v33, v127.n128_i64[0]);
      Count = figPlaybackCoordinator_isTimeInInterstitialRange(a1, &v136.start, &range);
      if (Count)
      {
        v95 = *&range.start.value;
        v96 = *&range.start.epoch;
        *v15 = *&range.start.value;
        *(DerivedStorage + 408) = v96;
        v97 = *&range.duration.timescale;
        *(DerivedStorage + 424) = *&range.duration.timescale;
        *&v136.start.value = v95;
        *&v136.start.epoch = v96;
        *&v136.duration.timescale = v97;
        CMTimeRangeGetEnd(&lhs.start, &v136);
        OUTLINED_FUNCTION_27_20(&v136.start);
        CMTimeAdd(&v132, &lhs.start, &v136.start);
        v136.start = v132;
        v98 = OUTLINED_FUNCTION_35_14();
        figPlaybackCoordinator_primeNextInterstitialEventTimer(v98, v99, 1);
        return;
      }

      *v15 = v110;
      *(DerivedStorage + 408) = v105;
      v18 = v100;
      *(DerivedStorage + 424) = v100;
      goto LABEL_18;
    }
  }
}

void figPlaybackCoordinator_clearInterstitialEventTimer(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 368);
  if (v2 && CFArrayGetCount(v2) >= 1)
  {
    v3 = *(DerivedStorage + 376);
    if (v3)
    {
      dispatch_source_cancel(v3);
      dispatch_release(*(DerivedStorage + 376));
      *(DerivedStorage + 376) = 0;
    }
  }
}

uint64_t figPlaybackCoordinator_BeginSuspension(const void *a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigTimelineCoordinatorBeginSuspension();
  if (!v3)
  {
    v4 = malloc_type_malloc(0x10uLL, 0x10200405F07FB98uLL);
    if (a1)
    {
      v5 = CFRetain(a1);
    }

    else
    {
      v5 = 0;
    }

    *v4 = v5;
    v4[8] = 1;
    dispatch_async_f(*(DerivedStorage + 280), v4, playbackCoordinator_completePendingStartupTaskOnQueue);
  }

  return v3;
}

uint64_t figPlaybackCoordinator_copyTimebaseAndAddOffset(OpaqueCMTimebase *a1, CMTime *a2, CMTimebaseRef *a3)
{
  timebaseOut = 0;
  v6 = CMTimebaseCopySource(a1);
  v7 = v6;
  outRelativeRate = 0.0;
  outOfClockOrTimebaseAnchorTime = **&MEMORY[0x1E6960C70];
  outRelativeToClockOrTimebaseAnchorTime = outOfClockOrTimebaseAnchorTime;
  if (a1)
  {
    if (v6 && (v8 = CFGetTypeID(v6), v8 == CMTimebaseGetTypeID()))
    {
      RelativeRateAndAnchorTime = CMTimebaseCreateWithSourceTimebase(*MEMORY[0x1E695E480], v7, &timebaseOut);
      if (RelativeRateAndAnchorTime)
      {
        goto LABEL_9;
      }
    }

    else
    {
      RelativeRateAndAnchorTime = CMTimebaseCreateWithSourceClock(*MEMORY[0x1E695E480], v7, &timebaseOut);
      if (RelativeRateAndAnchorTime)
      {
        goto LABEL_9;
      }
    }

    RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(a1, v7, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime);
    if (!RelativeRateAndAnchorTime)
    {
      v10 = timebaseOut;
      v11 = outRelativeRate;
      lhs = outOfClockOrTimebaseAnchorTime;
      v14 = *a2;
      CMTimeAdd(&timebaseTime, &lhs, &v14);
      lhs = outRelativeToClockOrTimebaseAnchorTime;
      RelativeRateAndAnchorTime = CMTimebaseSetRateAndAnchorTime(v10, v11, &timebaseTime, &lhs);
    }

LABEL_9:
    v12 = RelativeRateAndAnchorTime;
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = 0;
  if (a3)
  {
LABEL_10:
    *a3 = timebaseOut;
  }

LABEL_11:
  if (v7)
  {
    CFRelease(v7);
  }

  return v12;
}

void figPlaybackCoordinator_timelineCoordinatorParticipantsDidChangeDispatch(uint64_t *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  FigPlaybackCoordinatorGetCMBaseObject(*a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  cf = 0;
  v32 = 0;
  v4 = a1[1];
  if (!v4 || !v3)
  {
    goto LABEL_33;
  }

  v5 = *MEMORY[0x1E6963278];
  if (CFDictionaryContainsKey(v4, *MEMORY[0x1E6963278]))
  {
    Value = CFDictionaryGetValue(a1[1], v5);
    if (!Value)
    {
      goto LABEL_33;
    }

    v7 = Value;
    v8 = CFGetTypeID(Value);
    if (v8 != CFArrayGetTypeID())
    {
      goto LABEL_33;
    }
  }

  else
  {
    v7 = 0;
  }

  if (CFArrayGetCount(v7) < 1)
  {
    *(DerivedStorage + 104) = 1;
    FigBaseObject = FigPlayerGetFigBaseObject(v3);
    v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v26)
    {
      v26(FigBaseObject, @"ParticipatingInCoordinatedPlayback", *MEMORY[0x1E695E4C0]);
    }

    v27 = *(DerivedStorage + 48);
    if (v27)
    {
      v28 = FigPlaybackItemGetFigBaseObject(v27);
      v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v29)
      {
        v29(v28, @"TransientTimebaseForCoordinatedPlaybackSynchronization", 0);
      }
    }

    v23 = *a1;
    goto LABEL_32;
  }

  if (!*(DerivedStorage + 104))
  {
LABEL_31:
    figPlaybackCoordinator_updateReportingStats(*a1);
    v23 = *a1;
LABEL_32:
    figPlaybackCoordinator_updateReportingStats(v23);
    goto LABEL_33;
  }

  v30 = 0.0;
  *(DerivedStorage + 104) = 0;
  v9 = *MEMORY[0x1E695E4D0];
  v10 = FigPlayerGetFigBaseObject(v3);
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v11)
  {
    v11(v10, @"ParticipatingInCoordinatedPlayback", v9);
  }

  FigPlaybackCoordinatorGetCMBaseObject(*a1);
  CMBaseObjectGetDerivedStorage();
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v12)
  {
    v12(v3, &v30);
  }

  v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v13)
  {
    v13(v3, 0, &cf);
    v13 = cf;
  }

  if (v13 != *(DerivedStorage + 48) || v30 == 0.0 || v30 == *(DerivedStorage + 176))
  {
    FigTimelineCoordinatorReapplyGroupStateViaTimelineControl();
    goto LABEL_31;
  }

  if (!FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 33, &v32))
  {
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    if (dword_1ED4CBE70)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_134();
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        v18 = *a1;
        v19 = *(DerivedStorage + 496);
        v33 = 136315650;
        v34 = "figPlaybackCoordinator_timelineCoordinatorParticipantsDidChangeDispatch";
        v35 = 2048;
        v36 = v18;
        v37 = 1024;
        v38 = v19;
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_61_5();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0();
    }

    v20 = v30;
    v21 = v32;
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (v22)
    {
      if (!v22(v3, v21, v20))
      {
        goto LABEL_31;
      }
    }
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v24 = a1[1];
  if (v24)
  {
    CFRelease(v24);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  free(a1);
}

uint64_t figPlaybackCoordinator_updateReportingStats(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 320))
  {
    return result;
  }

  v2 = result;
  result = OUTLINED_FUNCTION_15_36();
  if (!result)
  {
    goto LABEL_24;
  }

  result = OUTLINED_FUNCTION_15_36();
  if (!result)
  {
    goto LABEL_24;
  }

  result = OUTLINED_FUNCTION_15_36();
  if (!result)
  {
    if (!*(v2 + 320))
    {
      return result;
    }

    VTable = CMBaseObjectGetVTable();
    v12 = *(VTable + 16);
    result = VTable + 16;
    if (!*(v12 + 40))
    {
      return result;
    }

    v9 = OUTLINED_FUNCTION_20_24();

    return v10(v9);
  }

  result = OUTLINED_FUNCTION_15_36();
  if (!result)
  {
LABEL_24:
    if (!*(v2 + 320))
    {
      return result;
    }

    v7 = CMBaseObjectGetVTable();
    v8 = *(v7 + 16);
    result = v7 + 16;
    if (!*(v8 + 32))
    {
      return result;
    }

    v9 = OUTLINED_FUNCTION_20_24();

    return v10(v9);
  }

  result = OUTLINED_FUNCTION_15_36();
  if (!result)
  {
    if (*(v2 + 320))
    {
      v3 = CMBaseObjectGetVTable();
      v4 = *(v3 + 16);
      result = v3 + 16;
      if (*(v4 + 56))
      {
        v5 = OUTLINED_FUNCTION_20_24();

        return v6(v5);
      }
    }
  }

  return result;
}

uint64_t figPlaybackCoordinator_EndSuspension(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = FigTimelineCoordinatorEndSuspension();
  if (!v2 && !FigTimelineCoordinatorIsSuspended())
  {
    *(DerivedStorage + 328) = 1;
  }

  FigSimpleMutexUnlock();
  return v2;
}

void playbackCoordinator_stopTrackingPlayerOnQueue(const void *a1)
{
  figPlaybackCoordinator_transitionToNewCurrentItem(a1, 0);
  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t FigPlaybackCoordinatorCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackCoordinatorCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackCoordinatorCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackCoordinatorCreate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackCoordinatorCreate_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackCoordinatorCreate_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackCoordinatorCreate_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playbackCoordinator_performStartupTaskNegotiatingTimingWithCoordinatedPlaybackGroup_cold_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  FigSignalErrorAtGM();

  return a3(a1, a2, 1);
}

uint64_t playbackCoordinator_prepareToSetRate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playbackCoordinator_prepareToSetRate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playbackCoordinator_prepareToSetRate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playbackCoordinator_prepareToSetRate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playbackCoordinator_prepareToSetRate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playbackCoordinator_prepareToSetRate_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figPlaybackCoordinator_SetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void figPlaybackCoordinator_currentItemReadyForPlayback_cold_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  figPlaybackCoordinator_setIntegratedTimelineOffsetTimesForItem(a1, a2);
  if ((*(a3 + 64) & 0xFFFFFFFE) == 0x64)
  {
    *(a3 + 64) = 102;
  }

  figPlaybackCoordinator_startTrackingPlaybackStateIfReady(a1);
  if ((*(a3 + 64) - 102) <= 0x26A9)
  {

    figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming(a1);
  }
}

void figPlaybackCoordinator_interstitialTimerEventProc_cold_1(const void *a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  v4 = *(DerivedStorage + 408);
  *&v7.start.value = *(DerivedStorage + 392);
  *&v7.start.epoch = v4;
  *&v7.duration.timescale = *(DerivedStorage + 424);
  v5 = CMTimeRangeCopyDescription(v3, &v7);
  CFRelease(v5);
  if (*(DerivedStorage + 388))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  figPlaybackCoordinator_updateInterstitialStateMachine(a1, v6);
  CFRelease(a1);
}

uint64_t playbackCoordinator_beginSystemEventSuspensionForReason_cold_1(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 8);
  if (v7)
  {
    return v7(a1, a2);
  }

  return result;
}

uint64_t figPlaybackCoordinator_handleChangeInInterstitialActiveStatusOnQueue_cold_1(const void *a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 448) && !FigTimelineCoordinatorSuspensionCreate() && *(DerivedStorage + 448))
  {
    figPlaybackCoordinator_BeginSuspension(a1);
  }

  return FigSimpleMutexUnlock();
}

uint64_t figPlaybackCoordinator_EndSuspensionWithReason_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figPlaybackCoordinator_isSuspendedForReason_cold_1(const __CFArray *a1, CFArrayRef *a2, const __CFString *a3, char *a4)
{
  result = CFArrayGetCount(a1);
  if (result < 1)
  {
LABEL_5:
    v11 = 0;
  }

  else
  {
    v8 = result;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a2, v9);
      result = CFStringCompare(ValueAtIndex, a3, 0);
      if (!result)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_5;
      }
    }

    v11 = 1;
  }

  *a4 = v11;
  return result;
}

uint64_t figTTMLHead_ConsumeChildNode(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  cf = 0;
  v25 = 0;
  v7 = FigTTMLGetLibXMLAccess();
  if (!v7)
  {
    v8 = FigSignalErrorAtGM();
    goto LABEL_31;
  }

  if ((*(v7 + 72))(a1) != 1)
  {
    goto LABEL_20;
  }

  v8 = FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(a1, &v26, &v25);
  if (v8)
  {
    goto LABEL_31;
  }

  if (FigCFEqual() && FigCFEqual())
  {
    CFGetAllocator(*a2);
    OUTLINED_FUNCTION_0_143();
    v8 = FigTTMLStylingCreate(v9, v10, v11, v12);
    if (!v8)
    {
      v13 = *(DerivedStorage + 136);
      v14 = cf;
      *(DerivedStorage + 136) = cf;
      if (!v14)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_31;
  }

  if (FigCFEqual() && FigCFEqual())
  {
    CFGetAllocator(*a2);
    OUTLINED_FUNCTION_0_143();
    v8 = FigTTMLLayoutCreate(v15, v16, v17, v18);
    if (!v8)
    {
      v13 = *(DerivedStorage + 144);
      v14 = cf;
      *(DerivedStorage + 144) = cf;
      if (!v14)
      {
LABEL_9:
        if (v13)
        {
          CFRelease(v13);
        }

        goto LABEL_21;
      }

LABEL_8:
      CFRetain(v14);
      goto LABEL_9;
    }

LABEL_31:
    v23 = v8;
    goto LABEL_23;
  }

  if (FigCFEqual() && FigCFEqual())
  {
    CFGetAllocator(*a2);
    OUTLINED_FUNCTION_0_143();
    v8 = FigTTMLProfileCreate(v19, v20, v21, v22);
    if (v8)
    {
      goto LABEL_31;
    }

    CFArrayAppendValue(*(DerivedStorage + 152), cf);
  }

  else
  {
LABEL_20:
    v8 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
    if (v8)
    {
      goto LABEL_31;
    }
  }

LABEL_21:
  v23 = 0;
  if (a3)
  {
    *a3 = cf;
    cf = 0;
  }

LABEL_23:
  if (v25)
  {
    CFRelease(v25);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v23;
}

uint64_t FigTTMLHeadCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLHeadCreateDefault_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLHead_GetNodeType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void CopyCreationDate(const __CFAllocator *a1, uint64_t *a2, CFDateRef *a3)
{
  v24 = 0;
  cf = 0;
  v23 = 0;
  AssureQuickTimeMetadataReaderCreated(a2);
  if (a2[12] && *(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v6 = OUTLINED_FUNCTION_1_129();
    v7(v6);
  }

  AssureiTunesMetadataReaderCreated(a2);
  if (a2[14] && *(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v8 = OUTLINED_FUNCTION_1_129();
    v9(v8);
  }

  AssureQuickTimeUserDataReaderCreated(a2);
  if (a2[11] && *(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v10 = OUTLINED_FUNCTION_1_129();
    v11(v10);
  }

  AssureISOUserDataReaderCreated(a2);
  if (a2[13] && *(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v12 = OUTLINED_FUNCTION_1_129();
    v13(v12);
  }

  v22 = 0;
  MovieInformationLockForRead(a2[1]);
  MovieInformationGetTimeInfo(a2[1], &v22, 0);
  MovieInformationUnlockForRead(a2[1]);
  if (v22 && (v21 = CFDateCreate(a1, v22 - *MEMORY[0x1E695E460])) != 0)
  {
    *a3 = v21;
    if (v23)
    {
      CFRelease(v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_74_8(0, v14, v15, v16, v17, v18, v19, v20, v22, v23);
  }
}

uint64_t CopyPictureCollection(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  cf = 0;
  v5 = MovieInformationCopyIFFItemInformation(*(a2 + 8), &cf);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    if (!cf)
    {
      return 0;
    }

    v6 = FigPictureCollectionCreateFromIFFItemInformation(a1, cf, &v8);
    if (!v6)
    {
      *a3 = v8;
      v8 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t MovieEditCursorServiceCreateCursorAtTrackTime(const void *a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  v22 = 0;
  memset(__src, 0, sizeof(__src));
  if (*DerivedStorage && (v6 = DerivedStorage, MovieTrackIsValid(DerivedStorage[1])))
  {
    v7 = v6[1];
    MovieInformationLockForRead(*v6);
    OUTLINED_FUNCTION_3_102();
    EditIndexForTrackTime = MovieTrackFindEditIndexForTrackTime(v7, v8, &v21, v9, v10, v11, v12, v13);
    if (!EditIndexForTrackTime)
    {
      EditIndexForTrackTime = MovieTrackGetEditSegmentWithIndex(v7, v21, __src);
    }

    MovieInformationUnlockForRead(*v6);
    if (!EditIndexForTrackTime)
    {
      CFGetAllocator(a1);
      FigEditCursorGetClassID();
      v15 = CMDerivedObjectCreate();
      if (v15)
      {
        return v15;
      }

      else
      {
        v16 = CMBaseObjectGetDerivedStorage();
        v17 = *v6;
        if (*v6)
        {
          v17 = CFRetain(v17);
        }

        *v16 = v17;
        v18 = v6[1];
        if (v18)
        {
          v18 = CFRetain(v18);
        }

        *(v16 + 8) = v18;
        *(v16 + 16) = v21;
        memcpy((v16 + 20), __src, 0x60uLL);
        EditIndexForTrackTime = 0;
        *a3 = v22;
      }
    }

    return EditIndexForTrackTime;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void MovieEditCursorCopy(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (MovieTrackIsValid(*(DerivedStorage + 8)))
  {
    CFGetAllocator(a1);
    FigEditCursorGetClassID();
    if (!CMDerivedObjectCreate())
    {
      v3 = CMBaseObjectGetDerivedStorage();
      v4 = *DerivedStorage;
      if (*DerivedStorage)
      {
        v4 = CFRetain(v4);
      }

      *v3 = v4;
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v5 = CFRetain(v5);
      }

      *(v3 + 8) = v5;
      *(v3 + 16) = *(DerivedStorage + 16);
      memcpy((v3 + 20), (DerivedStorage + 20), 0x60uLL);
      OUTLINED_FUNCTION_74_8(0, v6, v7, v8, v9, v10, v11, v12, v13, 0);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    FigSignalErrorAtGM();
  }
}

uint64_t MovieEditCursorStep(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  MovieInformationLockForRead(*DerivedStorage);
  v5 = ValidateMovieEditCursor();
  if (v5)
  {
    EditSegmentWithIndex = v5;
    v8 = 0;
  }

  else
  {
    EditSegmentCount = MovieTrackGetEditSegmentCount(v4);
    v7 = *(DerivedStorage + 16) + a2;
    if (v7 < 0)
    {
      v7 = 0;
      v8 = 1;
    }

    else if (EditSegmentCount > v7)
    {
      v8 = 0;
    }

    else
    {
      v7 = EditSegmentCount - 1;
      v8 = 1;
    }

    *(DerivedStorage + 16) = v7;
    EditSegmentWithIndex = MovieTrackGetEditSegmentWithIndex(*(DerivedStorage + 8), v7, (DerivedStorage + 20));
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  if (((EditSegmentWithIndex == 0) & v8) != 0)
  {
    return 4294954776;
  }

  else
  {
    return EditSegmentWithIndex;
  }
}

uint64_t MovieEditCursorGetEditSegment(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieInformationLockForRead(*DerivedStorage);
  v4 = ValidateMovieEditCursor();
  if (!v4)
  {
    memcpy(a2, DerivedStorage + 20, 0x60uLL);
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return v4;
}

uint64_t ValidateMovieEditCursor()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  result = MovieInformationIsMutable(*DerivedStorage);
  if (result)
  {
    if (MovieTrackIsValid(*(DerivedStorage + 8)) && (EditSegmentCount = MovieTrackGetEditSegmentCount(v1), v4 = *(DerivedStorage + 16), EditSegmentCount > v4))
    {
      result = MovieTrackGetEditSegmentWithIndex(*(DerivedStorage + 8), v4, v14);
      if (!result)
      {
        *&time1.value = v15;
        time1.epoch = *&v16[0];
        if (OUTLINED_FUNCTION_268(*(DerivedStorage + 84), v9.value, *&v9.timescale, v9.epoch, v10, *(DerivedStorage + 68), *(DerivedStorage + 76), time.epoch, v12, v15) || (time1 = v14[0], OUTLINED_FUNCTION_268(*(DerivedStorage + 36), v9.value, *&v9.timescale, v9.epoch, v10, *(DerivedStorage + 20), *(DerivedStorage + 28), time.epoch, v12, v14[0].value)))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          return FigSignalErrorAtGM();
        }

        if ((v14[0].flags & 0x1D) != 1)
        {
          return 0;
        }

        time1 = *(DerivedStorage + 92);
        if (OUTLINED_FUNCTION_268(*(DerivedStorage + 60), v9.value, *&v9.timescale, v9.epoch, v10, *(DerivedStorage + 44), *(DerivedStorage + 52), time.epoch, v12, time1.value))
        {
          v5 = *(DerivedStorage + 92);
          v6 = *(DerivedStorage + 100);
          time = v14[1];
          CMTimeMultiplyByRatio(&time1, &time, v5, v6);
          v7 = *(DerivedStorage + 44);
          v8 = *(DerivedStorage + 52);
          v9 = *(v16 + 8);
          CMTimeMultiplyByRatio(&time, &v9, v7, v8);
          result = CMTimeCompare(&time1, &time);
          if (result)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_4();
            return FigSignalErrorAtGM();
          }
        }

        else
        {
          time1 = v14[1];
          time = *(v16 + 8);
          result = CMTimeCompare(&time1, &time);
          if (result)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_4();
            return FigSignalErrorAtGM();
          }
        }
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

uint64_t MovieFormatReaderParseAdditionalFragments(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = 0;
  v5 = MovieInformationLockForWrite(*(DerivedStorage + 8));
  if (v5)
  {
    return v5;
  }

  v6 = *(DerivedStorage + 8);
  if (*(v6 + 90))
  {
    v27 = a3;
    MovieInformationClearChangeBits(v6, 1);
    v28 = DerivedStorage;
    v26 = MoovParseIncrementalFragments(*(DerivedStorage + 8), &v29);
    v7 = CMBaseObjectGetDerivedStorage();
    if (MovieInformationGetChangeBits(*(v7 + 8)))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_5_87();
    }

    TrackCount = MovieInformationGetTrackCount(*(v7 + 8));
    if (TrackCount >= 1)
    {
      v9 = TrackCount;
      v10 = 0;
      v11 = *MEMORY[0x1E695E480];
      v12 = MEMORY[0x1E695E9E8];
      do
      {
        TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(*(v7 + 8), v10);
        AudioQueue = FigAudioQueueTimingShimGetAudioQueue(TrackForTrackIndex);
        if (AudioQueue)
        {
          v15 = AudioQueue;
          cf = 0;
          CopyTrackReader(v7, TrackForTrackIndex, &cf);
          v16 = cf;
          if (cf)
          {
            if ((v15 & 2) != 0)
            {
              v17 = CFDictionaryCreate(v11, kFigTrackReaderPayloadKey_FragmentWasAdded, MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], v12);
              CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterPostNotification();
              if (v17)
              {
                CFRelease(v17);
              }
            }

            if (v15)
            {
              CMNotificationCenterGetDefaultLocalCenter();
              OUTLINED_FUNCTION_5_87();
            }

            CFRelease(v16);
          }
        }

        ++v10;
      }

      while (v9 != v10);
    }

    if ((v29 & 4) != 0)
    {
      v18 = v27;
      DerivedStorage = v28;
      v19 = v26;
      if (*(*(v28 + 8) + 91))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_5_87();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_5_87();
        FigSimpleMutexLock();
        v21 = FigCFDictionaryCopyArrayOfValues();
        FigSimpleMutexUnlock();
        Count = CFArrayGetCount(v21);
        if (Count >= 1)
        {
          v23 = Count;
          for (i = 0; i != v23; ++i)
          {
            CFArrayGetValueAtIndex(v21, i);
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_5_87();
          }
        }

        if (v21)
        {
          CFRelease(v21);
        }
      }
    }

    else
    {
      v18 = v27;
      DerivedStorage = v28;
      v19 = v26;
      if ((v29 & 2) != 0)
      {
        v20 = *(v28 + 8);
        if (!*(v20 + 92))
        {
          *(v20 + 92) = 1;
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_5_87();
        }
      }
    }

    if (v18)
    {
      *v18 = v29;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    v19 = FigSignalErrorAtGM();
  }

  MovieInformationUnlockForWrite(*(DerivedStorage + 8));
  return v19;
}

uint64_t MovieFormatReaderCopyTrackByIndex(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieInformationLockForRead(*(DerivedStorage + 8));
  TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(*(DerivedStorage + 8), a2);
  if (TrackForTrackIndex)
  {
    v11 = TrackForTrackIndex;
    if (!a3 || (BasicInfo = CopyTrackReader(DerivedStorage, TrackForTrackIndex, a3), !BasicInfo))
    {
      BasicInfo = MovieTrackGetBasicInfo(v11, a4, a5);
    }

    v13 = BasicInfo;
  }

  else
  {
    v13 = 4294954453;
  }

  MovieInformationUnlockForRead(*(DerivedStorage + 8));
  return v13;
}

uint64_t MovieFormatReaderCopyTrackByID(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieInformationLockForRead(*(DerivedStorage + 8));
  TrackForTrackID = MovieInformationFindTrackForTrackID(*(DerivedStorage + 8), a2);
  if (TrackForTrackID)
  {
    v9 = TrackForTrackID;
    if (!a3 || (BasicInfo = CopyTrackReader(DerivedStorage, TrackForTrackID, a3), !BasicInfo))
    {
      BasicInfo = MovieTrackGetBasicInfo(v9, a4, 0);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    BasicInfo = FigSignalErrorAtGM();
  }

  v11 = BasicInfo;
  MovieInformationUnlockForRead(*(DerivedStorage + 8));
  return v11;
}

uint64_t MovieFormatReaderCopyTrackByType(uint64_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieInformationLockForRead(*(DerivedStorage + 8));
  NthTrackOfType = MovieInformationFindNthTrackOfType(*(DerivedStorage + 8), a2, a3);
  if (NthTrackOfType)
  {
    v11 = NthTrackOfType;
    if (!a4 || (BasicInfo = CopyTrackReader(DerivedStorage, NthTrackOfType, a4), !BasicInfo))
    {
      BasicInfo = MovieTrackGetBasicInfo(v11, 0, a5);
    }

    v13 = BasicInfo;
  }

  else
  {
    v13 = 4294954453;
  }

  MovieInformationUnlockForRead(*(DerivedStorage + 8));
  return v13;
}

uint64_t CopyLoudnessDictionaryFromUserData(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  ioPropertyDataSize = 8;
  v5 = *a1;
  if (!*(*a1 + 81))
  {
    if (!*(v5 + 84))
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = @"uiso";
    v7 = AssureTrackISOUserDataReaderCreated(a1);
    goto LABEL_6;
  }

  if (!*(v5 + 82))
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = @"udta";
  v7 = AssureTrackQuickTimeUserDataReaderCreated(a1);
LABEL_6:
  v8 = v7;
  if (!v7 || (v9 = *(*(CMBaseObjectGetVTable() + 16) + 40)) == 0 || (v10 = v9(v8, v6, @"ludt"), v11 = v10 - 1, v10 < 1))
  {
LABEL_15:
    v15 = 4294954513;
    goto LABEL_17;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v12)
  {
    Property = v12(v8, v6, @"ludt", v11, a2, &cf, 0);
    if (Property)
    {
LABEL_14:
      v15 = Property;
      goto LABEL_17;
    }

    if (!cf)
    {
      return 4294954513;
    }

    v14 = CFGetTypeID(cf);
    if (v14 == CFDataGetTypeID())
    {
      Property = AudioFormatGetProperty(0x6C646C62u, 8u, &cf, &ioPropertyDataSize, a3);
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v15 = 4294954514;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

uint64_t MovieTrackReaderCopySampleCursorService(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage && (v3 = DerivedStorage, MovieTrackIsValid(DerivedStorage[1])))
  {
    v4 = MoovAssureSampleTableParsed(*v3);
    if (v4)
    {
      return v4;
    }

    CFGetAllocator(a1);
    FigSampleCursorServiceGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v16 = v5;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      FigSignalErrorAtGM();
    }

    else
    {
      v13 = CMBaseObjectGetDerivedStorage();
      v14 = *v3;
      if (*v3)
      {
        v14 = CFRetain(v14);
      }

      *v13 = v14;
      v15 = v3[1];
      if (v15)
      {
        v15 = CFRetain(v15);
      }

      v16 = 0;
      v13[1] = v15;
      OUTLINED_FUNCTION_74_8(v15, v6, v7, v8, v9, v10, v11, v12, v18, 0);
    }

    return v16;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM();
  }
}

uint64_t MovieCursorService_createCursorAtPresentationTimeStamp(const void *a1, uint64_t a2, void *a3, _BYTE *a4, _BYTE *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  MovieInformationLockForRead(*DerivedStorage);
  v10 = CFGetAllocator(a1);
  v11 = CreateMovieSampleCursor(v10, *DerivedStorage, DerivedStorage[1], &v18);
  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v12 = v18;
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_3_102();
    MovieSampleAccessorMoveToSampleAtPTS(v13, v14, a4, a5);
    v16 = v15;
    if (v15)
    {
      if (v12)
      {
        CFRelease(v12);
      }
    }

    else
    {
      *a3 = v12;
    }
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return v16;
}

uint64_t MovieCursorService_createCursorNearPresentationTimeStamp(const void *a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5, _BYTE *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  MovieInformationLockForRead(*DerivedStorage);
  v11 = CFGetAllocator(a1);
  v12 = CreateMovieSampleCursor(v11, *DerivedStorage, DerivedStorage[1], &v19);
  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v13 = v19;
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_3_102();
    MovieSampleAccessorMoveToSampleAtPTS(v14, v15, a5, a6);
    v17 = v16;
    if (v16)
    {
      if (v13)
      {
        CFRelease(v13);
      }
    }

    else
    {
      *a4 = v13;
    }
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return v17;
}

uint64_t MovieCursorService_createCursorAtFirstSampleInDecodeOrder(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  MovieInformationLockForRead(*DerivedStorage);
  v3 = CFGetAllocator(a1);
  v4 = CreateMovieSampleCursor(v3, *DerivedStorage, DerivedStorage[1], &v15);
  v12 = v4;
  if (!v4)
  {
    OUTLINED_FUNCTION_74_8(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15);
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return v12;
}

uint64_t MovieCursorService_createCursorAtLastSampleInDecodeOrder(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  MovieInformationLockForRead(*DerivedStorage);
  v5 = CFGetAllocator(a1);
  v6 = CreateMovieSampleCursor(v5, *DerivedStorage, DerivedStorage[1], &v11);
  if (v6)
  {
    SampleInDecodeOrder = v6;
  }

  else
  {
    v7 = v11;
    v8 = CMBaseObjectGetDerivedStorage();
    SampleInDecodeOrder = MovieSampleAccessorMoveToLastSampleInDecodeOrder(*(v8 + 8));
    if (SampleInDecodeOrder)
    {
      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      *a2 = v7;
    }
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return SampleInDecodeOrder;
}

uint64_t MovieCursor_copyFormatDescription(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  MovieInformationLockForRead(*DerivedStorage);
  if (!MovieTrackIsValid(*(DerivedStorage[1] + 8)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FormatDescription = FigSignalErrorAtGM();
    goto LABEL_8;
  }

  FormatDescription = MovieSampleAccessorGetFormatDescription(DerivedStorage[1], &cf);
  if (FormatDescription)
  {
LABEL_8:
    v6 = FormatDescription;
    goto LABEL_6;
  }

  v5 = cf;
  if (cf)
  {
    v5 = CFRetain(cf);
  }

  v6 = 0;
  *a2 = v5;
LABEL_6:
  MovieInformationUnlockForRead(*DerivedStorage);
  return v6;
}

uint64_t CreateTrackReaderDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreateTrackReaderDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieFormatReaderGetMovieInformation_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t MovieFormatReaderGetMovieInformation_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t MovieFormatReaderCreateWithMovieInformation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieFormatReaderCreateWithMovieInformation_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieFormatReaderCreateWithMovieInformation_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieFormatReaderCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieFormatReaderCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieFormatReaderCopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieFormatReaderCopyProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieFormatReaderCopyProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieFormatReaderCopyProperty_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CopySoundCheckInfoDictionary_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t CopySoundCheckInfoDictionary_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t MovieTrackReaderCreateEditCursorService_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void GetGaplessSourceTimeRange_cold_1(const __CFArray *a1, uint64_t *a2, CFTypeRef *a3)
{
  if (CFArrayGetCount(a1) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
    MovieTrackCopyEnhancedGaplessInfo(*a2, a3);
    FigGaplessInfoGetGaplessSourceTimeRange(ValueAtIndex, *a3);
  }

  CFRelease(a1);
  if (*a3)
  {
    CFRelease(*a3);
  }
}

uint64_t MovieEditCursorCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CopyCreationDateAsDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CopyCreationDateAsDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreateTrackReaderForMovieTrack_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t MovieTrackReaderCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackReaderCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackReaderCopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackReaderCopyProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackReaderGetTrackEditWithIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreateMovieSampleCursor_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t CreateMovieSampleCursor_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieCursor_copyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieCursor_copyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieCursor_copy_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t MovieCursor_copy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieCursor_getPresentationTimeStamp_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieCursor_getDecodeTimeStamp_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieCursor_getDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieCursor_getDependencyInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieCursor_testReorderingBoundary_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t MovieCursor_stepByDecodeTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieCursor_stepByPresentationTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieCursor_copySampleLocation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieCursor_copyChunkDetails_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieCursor_stepInDecodeOrderAndReportStepsTaken_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieCursor_stepInPresentationOrderAndReportStepsTaken_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieCursor_getDecodeToPresentationTimeDeltaRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MoovParseByteStream(uint64_t a1, __int16 a2, const void *a3, const void *a4)
{
  v29[1] = 0;
  v29[2] = 0;
  v30 = 0;
  result = MovieInformationSetByteStream(a1, a3);
  if (result)
  {
    return result;
  }

  MovieInformationSetAssetAnalysisReporter(a1, a4);
  v29[0] = a1;
  if ((a2 & 2) != 0)
  {
    BYTE1(v30) = 1;
    a2 |= 1u;
  }

  LOBYTE(v30) = (a2 & 1) == 0;
  *(a1 + 153) = (a2 & 0x20) != 0;
  *(a1 + 80) = (a2 & 0x40) != 0;
  *(a1 + 86) = HIBYTE(a2) & 1;
  if ((a2 & 0x80) != 0)
  {
    BYTE3(v30) = 1;
  }

  OUTLINED_FUNCTION_12_43();
  result = FigAtomStreamInitWithByteStreamAndReporter();
  if (result)
  {
    return result;
  }

  result = ParseChildAtoms(a1, v28, 5, &MoovParseByteStream_atomDispatch, v29);
  if (!*(a1 + 85))
  {
    if (!result)
    {
      v22 = OUTLINED_FUNCTION_312();
      _MovieAtomReportParsingMessage(v22, v23, v24, v25, 3);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      return FigSignalErrorAtGM();
    }

    return result;
  }

  MovieInformationCheckForMovieTimescaleAnomaly_7135294(a1);
  NextTrackID = MovieInformationGetNextTrackID(a1);
  TrackCount = MovieInformationGetTrackCount(a1);
  if (TrackCount < 1)
  {
    goto LABEL_32;
  }

  v10 = TrackCount;
  v11 = 0;
  Mutable = 0;
  v13 = 0;
  LODWORD(v27) = 0;
  LOWORD(valuePtr) = 0;
  v14 = *MEMORY[0x1E695E480];
  do
  {
    TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(a1, v11);
    MovieTrackGetBasicInfo(TrackForTrackIndex, 0, &v27);
    if (v27 == 0x7FFFFFFF)
    {
      v16 = v13;
    }

    else
    {
      v16 = 1;
    }

    if (v27 == 0x7FFFFFFF)
    {
      v17 = NextTrackID;
    }

    else
    {
      v17 = v27 + 1;
    }

    if (v27 > NextTrackID)
    {
      v13 = v16;
      NextTrackID = v17;
    }

    TrackAlternateGroupID = MovieInformationGetTrackAlternateGroupID(a1, TrackForTrackIndex);
    LOWORD(valuePtr) = TrackAlternateGroupID;
    if (TrackAlternateGroupID)
    {
      if (MovieTrackIsEnabled(TrackForTrackIndex))
      {
        v19 = CFNumberCreate(v14, kCFNumberSInt16Type, &valuePtr);
        if (v19)
        {
          v20 = v19;
          if (Mutable)
          {
            CFArrayGetCount(Mutable);
            v21 = OUTLINED_FUNCTION_249();
            if (CFArrayContainsValue(v21, v31, v20))
            {
              MovieTrackSetEnabled(TrackForTrackIndex, 0);
LABEL_26:
              CFRelease(v20);
              goto LABEL_27;
            }
          }

          else
          {
            Mutable = CFArrayCreateMutable(v14, 0, MEMORY[0x1E695E9C0]);
            if (!Mutable)
            {
              goto LABEL_26;
            }
          }

          CFArrayAppendValue(Mutable, v20);
          goto LABEL_26;
        }
      }
    }

LABEL_27:
    MovieTrackCreateEnhancedGaplessInfo(a1, TrackForTrackIndex);
    ++v11;
  }

  while (v10 != v11);
  if (v13)
  {
    MovieInformationSetParsedNextTrackID(a1, NextTrackID);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_32:
  if ((a2 & 0x10) != 0 && *(a1 + 154) && (valuePtr = 0, v27 = 0, !FigAtomStreamGetCurrentAtomGlobalOffset()))
  {
    *(a1 + 144) = valuePtr + v27;
    *(a1 + 90) = 1;
    if ((a2 & 8) != 0)
    {
      return MovieInformationPerformPostParsingForHeaderWriting(a1);
    }

    return 0;
  }

  else
  {
    if ((a2 & 8) == 0)
    {
      return 0;
    }

    return MovieInformationPerformPostParsingForHeaderWriting(a1);
  }
}

void ParseFileTypeAtom_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  v21 = v20;
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    v22 = OUTLINED_FUNCTION_312();
    _MovieAtomReportParsingMessage(v22, v23, v21, v24, 1);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_860();
}

uint64_t ParseTopLevelMetaAtom(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  ItemInformation = IFFParseMetaAtomStreamAndCreateItemInformation();
  if (ItemInformation)
  {
    return ItemInformation;
  }

  v5 = MovieInformationSetParsedIFFItemInformation(v3, 0);
  if (!v5)
  {
    *(a2 + 26) = 0;
  }

  return v5;
}

uint64_t SaveTopLevelDiscoveredUUIDBoxLocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_36_19(a1, a2, a3, a4, a5, a6, a7, a8, v10, v12, v14, v16);
  if (!result)
  {
    return MovieInformationAddOneTopLevelDiscoveredUUIDBox(*v8, v11, v13, v17, v15);
  }

  return result;
}

void MoovParseMovieLevelAtom()
{
  if (!FigAtomStreamInitWithBBuf())
  {
    FigAtomStreamGetCurrentAtomTypeAndDataLength();
  }
}

uint64_t MoovParseIncrementalFragments(uint64_t a1, int *a2)
{
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  v21 = 0;
  if (!*(a1 + 90))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
LABEL_33:
    result = FigSignalErrorAtGM();
LABEL_34:
    v11 = 0;
    goto LABEL_25;
  }

  if (!*(a1 + 154) || *(a1 + 184) == 2)
  {
    OUTLINED_FUNCTION_613();
    _MovieAtomReportParsingMessage(v14, v15, v16, v17, 3);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    goto LABEL_33;
  }

  v20 = 0;
  v19 = 0;
  v4 = *(a1 + 48);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v5)
  {
    v5(v4, 1, 0, &v20, 0);
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 144);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    v11 = 0;
    result = 4294954514;
    goto LABEL_25;
  }

  result = v8(v6, v7, &v21);
  if (result)
  {
    goto LABEL_34;
  }

  if (!v21)
  {
    result = 0;
    goto LABEL_34;
  }

  v10 = *(a1 + 144) + v21;
  if (v10 <= *(a1 + 72))
  {
    v11 = 0;
  }

  else
  {
    *(a1 + 72) = v10;
    v11 = 1;
  }

  v22[0] = a1;
  BYTE1(v23) = 1;
  while (1)
  {
    if (FigAtomUtilityGetAtomTypeAndLengthInByteStream() || (v12 = v19, v13 = v21 - v19, v21 < v19))
    {
LABEL_24:
      result = 0;
      goto LABEL_25;
    }

    if (v19 <= 0)
    {
      break;
    }

    if (v20 == 1836019558)
    {
      OUTLINED_FUNCTION_0_15();
      result = FigAtomStreamInitWithByteStream();
      if (result)
      {
        goto LABEL_25;
      }

      result = ParseMovieFragmentAtom(&v18, v22);
      if (result)
      {
        goto LABEL_25;
      }

      v11 |= 2u;
      v12 = v19;
      v13 = v21 - v19;
    }

    else if (v20 == 1836019574)
    {
      result = 0;
      v11 |= 4u;
      *(a1 + 90) = 256;
      goto LABEL_25;
    }

    v21 = v13;
    *(a1 + 144) += v12;
    if (v13 <= 0)
    {
      goto LABEL_24;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_5();
  result = FigSignalErrorAtGM();
LABEL_25:
  if (a2)
  {
    *a2 = v11;
  }

  if (result)
  {
    *(a1 + 90) = 0;
  }

  return result;
}

uint64_t MoovAssureSampleTableParsed(uint64_t a1)
{
  v20 = 0;
  v21 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v17 = 0;
  v18 = 0;
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  if (!*(a1 + 56))
  {
    return 0;
  }

  OUTLINED_FUNCTION_187();
  FigSimpleMutexLock();
  if (*(v1 + 718))
  {
    v3 = FigAtomStreamInitWithByteStream();
    if (v3)
    {
      v4 = v3;
      *(v1 + 718) = 0;
LABEL_13:
      *(v1 + 712) = v4;
      goto LABEL_14;
    }

    *&v15[0] = v2;
    v16[0] = v15;
    v17 = v16;
    v18 = v1;
    v19[0] = &v17;
    v21 = v19;
    v22 = 0;
    memset(v23, 0, sizeof(v23));
    *(v1 + 718) = 0;
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (!CurrentAtomTypeAndDataLength)
    {
      if (v22 < 1)
      {
LABEL_10:
        v7 = OUTLINED_FUNCTION_177();
        DoPostParsingSampleTableCommon(v7, v8, v9);
        goto LABEL_11;
      }

      CurrentAtomTypeAndDataLength = FigAtomStreamInitWithParent();
      if (!CurrentAtomTypeAndDataLength)
      {
        v6 = ParseChildAtoms(v2, v23, 11, &ParseSampleTableAtom_Phase2_atomDispatch, &v20);
        if (v6)
        {
          v4 = v6;
          v10 = OUTLINED_FUNCTION_177();
          _MovieAtomReportParsingMessage(v10, v11, v12, v13, 5);
          goto LABEL_13;
        }

        goto LABEL_10;
      }
    }

LABEL_11:
    v4 = CurrentAtomTypeAndDataLength;
    goto LABEL_13;
  }

  v4 = *(v1 + 712);
LABEL_14:
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t ParseMovieHeaderAtom()
{
  OUTLINED_FUNCTION_66_10();
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    OUTLINED_FUNCTION_152_2();
    result = FigAtomStreamGetCurrentAtomVersionAndFlags();
    if (!result)
    {
      if (v8 == 1)
      {
        OUTLINED_FUNCTION_0_15();
      }

      else
      {
        OUTLINED_FUNCTION_2_90();
      }

      v1 = OUTLINED_FUNCTION_312();
      OUTLINED_FUNCTION_85_4(v1, v2, v3, v4);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t ParseTrackAtom(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_66_10();
  v4 = *v3;
  memset(v32, 0, sizeof(v32));
  OUTLINED_FUNCTION_12_43();
  v29 = 0;
  cf = 0;
  v28 = v5;
  started = FigAtomStreamInitWithParent();
  if (!started)
  {
    started = MovieTrackCreate(&cf);
    if (!started)
    {
      v7 = cf;
      *(cf + 736) = *(v4 + 153);
      v29 = v7;
      v8 = ParseChildAtoms(v4, v32, 3, &ParseTrackAtom_atomDispatchTrackFirstPass, &v28);
      if (v8)
      {
LABEL_6:
        v9 = v8;
        if (!MoovIsParsingError(v8))
        {
          goto LABEL_7;
        }

        OUTLINED_FUNCTION_52_15(v4, cf, v10, "Omitting a track that encountered an error during atom parsing");
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_383();
      started = FigAtomStreamInitWithParent();
      if (!started)
      {
        v8 = ParseChildAtoms(v4, v31, 9, &ParseTrackAtom_atomDispatchTrackSecondPass, &v28);
        if (v8)
        {
          goto LABEL_6;
        }

        if (*(v4 + 81))
        {
          v12 = *(v4 + 82) == 0;
        }

        else
        {
          v12 = *(v4 + 84) != 0;
        }

        MovieTrackEvaluateParsedLanguageCode(cf, v12);
        v13 = OUTLINED_FUNCTION_73_6();
        MovieTrackCreateEditSegmentArray(v13, v14);
        v15 = OUTLINED_FUNCTION_73_6();
        MovieInformationEvaluateTrackAlternateGroupAssignment(v15, v16);
        v17 = OUTLINED_FUNCTION_73_6();
        started = MovieTrackInitializeLowestDisplayStartTimeAndHighestDisplayEndTime(v17, v18);
        if (!started)
        {
          if (*(*a2 + 27))
          {
            v19 = cf;
            if (!MovieTrackIsEnabled(cf) && MovieTrackGetMediaType(v19) == 1936684398)
            {
              v20 = MovieTrackCopyFormatDescriptionArray(v19);
              if (v20)
              {
                v21 = v20;
                if (CFArrayGetCount(v20) <= 0)
                {
                  CFRelease(v21);
                }

                else
                {
                  v22 = OUTLINED_FUNCTION_265();
                  ValueAtIndex = CFArrayGetValueAtIndex(v22, v23);
                  MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
                  CFRelease(v21);
                  if (MediaSubType == 1634754915)
                  {
LABEL_22:
                    v9 = 0;
                    goto LABEL_7;
                  }
                }
              }
            }
          }

          v26 = OUTLINED_FUNCTION_73_6();
          started = MovieInformationAddNewPerTrackInfo(v26, v27);
        }
      }
    }
  }

  v9 = started;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t ParseMovieUserDataAtom(uint64_t a1)
{
  OUTLINED_FUNCTION_0_15();
  result = FigAtomStreamGetCurrentAtomGlobalOffset();
  if (!result)
  {
    OUTLINED_FUNCTION_312();
    v3 = FigAtomStreamInitWithParent();
    v10 = v3;
    if (!v3)
    {
      v10 = OUTLINED_FUNCTION_83_6(v3, v4, v5, ParseMovieUserDataAtom_atomDispatch, v6, v7, v8, v9, v14);
    }

    result = 0;
    if (v10 != -12893)
    {
      if (v10)
      {
        v11 = OUTLINED_FUNCTION_265();
        _MovieAtomReportParsingMessage(v11, v12, a1, v13, 6);
        return v10;
      }
    }
  }

  return result;
}

uint64_t ParseCompressedMovieAtom(uint64_t a1, uint64_t **a2)
{
  v3 = **a2;
  OUTLINED_FUNCTION_0_15();
  *(v4 + 9) = 1;
  *(v3 + 89) = 1;
  if (*(v3 + 87) || (v5 = v4, *(v4 + 8)))
  {
    v9 = OUTLINED_FUNCTION_265();
    _MovieAtomReportParsingMessage(v9, v10, a1, v11, 3);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();

    return FigSignalErrorAtGM();
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v6 = FigAtomStreamInitWithParent();
    if (v6)
    {
      return v6;
    }

    v7 = ParseChildAtoms(v3, &v15, 2, &ParseCompressedMovieAtom_atomDispatch, v5);
    if (v7)
    {
      v12 = OUTLINED_FUNCTION_265();
      _MovieAtomReportParsingMessage(v12, v13, a1, v14, 6);
    }

    return v7;
  }
}

uint64_t ParseMovieExtendsAtom(uint64_t a1, uint64_t a2)
{
  BBuf = FigAtomStreamReadCurrentAtomAndCreateBBuf();
  if (BBuf)
  {
    return BBuf;
  }

  if (!MovieInformationGetTrackCount(**a2))
  {
    return 0;
  }

  v4 = ParseMovieExtendsAtomFromBBuf(*(a2 + 16), a2);
  v6 = *(a2 + 16);
  if (v6)
  {
    CFRelease(v6);
    *(a2 + 16) = 0;
  }

  return v4;
}

uint64_t SaveMovieDiscoveredUUIDBoxLocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_36_19(a1, a2, a3, a4, a5, a6, a7, a8, v10, v12, v14, v16);
  if (!result)
  {
    return MovieInformationAddOneMovieDiscoveredUUIDBox(**v8, v11, v13, v17, v15);
  }

  return result;
}

uint64_t ParseMovieExtendsAtomFromBBuf(uint64_t a1, uint64_t **a2)
{
  v3 = **a2;
  memset(v12, 0, sizeof(v12));
  v4 = FigAtomStreamInitWithBBuf();
  if (v4)
  {
    return v4;
  }

  FigAtomStreamGetCurrentAtomTypeAndDataLength();
  v4 = FigAtomStreamInitWithParent();
  if (v4)
  {
    return v4;
  }

  v5 = ParseChildAtoms(v3, v12, 2, &ParseMovieExtendsAtomFromBBuf_atomDispatch, a2);
  if (v5)
  {
    v6 = v5;
    v8 = OUTLINED_FUNCTION_312();
    _MovieAtomReportParsingMessage(v8, v9, v10, v11, 6);
  }

  else
  {
    *(v3 + 154) = 1;
    v6 = 0;
    if (*(*a2 + 25))
    {
      *(*a2 + 24) = 0;
    }
  }

  return v6;
}

uint64_t ParseTrackHeaderAtom()
{
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    result = FigAtomStreamGetCurrentAtomVersionAndFlags();
    if (!result)
    {
      v1 = OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_86_6(v1, v2, v3, v4);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t ParseTrackReferenceAtom()
{
  OUTLINED_FUNCTION_61_13();
  OUTLINED_FUNCTION_12_43();
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    v1 = OUTLINED_FUNCTION_64_0();
    _MovieAtomReportParsingMessage(v1, v2, v3, v4, 2);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t SaveTrackDiscoveredUUIDBoxLocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_36_19(a1, a2, a3, a4, a5, a6, a7, a8, v10, v12, v14, v16);
  if (!result)
  {
    return MovieTrackAddOneDiscoveredUUIDBox(*(v8 + 8), v11, v13, v17, v15);
  }

  return result;
}

uint64_t ParseEditsAtom(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_12_43();
  v12 = 0;
  v10[1] = v3;
  v11 = 0;
  v10[0] = v2;
  OUTLINED_FUNCTION_39_17();
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  *(v3 + 721) = 257;
  if (v11 < 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_312();
  CurrentAtomTypeAndDataLength = FigAtomStreamInitWithParent();
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  v5 = ParseChildAtoms(v2, v13, 1, &ParseEditsAtom_atomDispatch, v10);
  v8 = v5;
  if (v5)
  {
    OUTLINED_FUNCTION_42_16(v5, v6, v7, "while parsing");
  }

  return v8;
}

uint64_t ParseMediaAtom()
{
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_11_30();
  v8[0] = v1;
  v8[1] = 0;
  v2 = FigAtomStreamInitWithParent();
  if (v2)
  {
    return v2;
  }

  v3 = ParseChildAtoms(v0, v9, 4, &ParseMediaAtom_atomDispatch, v8);
  v6 = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_42_16(v3, v4, v5, "while parsing");
  }

  return v6;
}

uint64_t ParseTrackLoadSettingsAtom(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  OUTLINED_FUNCTION_46_13();
  v8.i64[0] = 0;
  OUTLINED_FUNCTION_39_17();
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    if (v10 == 16)
    {
      OUTLINED_FUNCTION_20_25();
      result = FigAtomStreamReadCurrentAtomData();
      if (!result)
      {
        v9 = vrev32q_s8(v8);
        return MovieTrackSetLoadSettings(v2, v9.i64[0], v9.i64[1]);
      }
    }

    else
    {
      v4 = OUTLINED_FUNCTION_283();
      OUTLINED_FUNCTION_55_15(v4, v5, v6, v7);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t ParseTrackUserDataAtom(uint64_t a1, uint64_t ***a2)
{
  v3 = ***a2;
  if (*(v3 + 56))
  {
    CurrentAtomGlobalOffset = FigAtomStreamGetCurrentAtomGlobalOffset();
    goto LABEL_9;
  }

  CurrentAtomGlobalOffset = FigAtomStreamReadCurrentAtomAndCreateBBuf();
  if (!CurrentAtomGlobalOffset)
  {
    if (*(v3 + 81))
    {
      if (*(v3 + 82))
      {
LABEL_6:
        OUTLINED_FUNCTION_177();
        CurrentAtomGlobalOffset = MovieTrackSupplementQuickTimeUserDataFromBlockBuffer();
        goto LABEL_9;
      }
    }

    else if (!*(v3 + 84))
    {
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_177();
    CurrentAtomGlobalOffset = MovieTrackSupplementISOUserDataFromBlockBuffer();
  }

LABEL_9:
  v12 = OUTLINED_FUNCTION_10_11(CurrentAtomGlobalOffset, v5, v6, v7, v8, v9, v10, v11, v14, 0);
  if (v12)
  {
    CFRelease(v12);
  }

  return v2;
}

uint64_t ParseTrackApertureModeDimensionsAtom(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_0_15();
  v4 = FigAtomStreamInitWithParent();
  if (v4)
  {
    return v4;
  }

  v5 = ParseChildAtoms(v2, &v10, 3, &ParseTrackApertureModeDimensionsAtom_atomDispatch, a2);
  v8 = v5;
  if (v5)
  {
    OUTLINED_FUNCTION_42_16(v5, v6, v7, "while parsing");
  }

  return v8;
}

uint64_t ParseProvisionalTrackGroupAssignmentAtom()
{
  OUTLINED_FUNCTION_61_13();
  OUTLINED_FUNCTION_39_17();
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    v1 = OUTLINED_FUNCTION_14_40();
    _MovieAtomReportParsingMessage(v1, v2, v3, v4, 2);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    return FigSignalErrorAtGM();
  }

  return result;
}

void _MovieAtomReportParsingMessage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a1[8])
  {
    v10 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v12 = Mutable;
      v13 = CFGetAllocator(a1);
      v14 = CFStringCreateMutable(v13, 0);
      if (v14)
      {
        v15 = v14;
        CFStringAppendFormat(v14, 0, @"%s.", a4);
        if (a3)
        {
          v18 = 0;
          v17 = 0;
          FigAtomStreamGetCurrentAtomGlobalOffset();
          FigAtomStreamGetCurrentAtomTypeAndDataLength();
          CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
          CFStringAppendFormat(v15, 0, @" Atom: '%@' Offset: %lld", CFStringForOSTypeValue, 0);
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt32();
        }

        if (a2)
        {
          v17 = 0;
          LODWORD(v18) = 0;
          MovieTrackGetBasicInfo(a2, &v18, &v17);
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
        }

        FigCFDictionarySetInt64();
        CFDictionarySetValue(v12, *MEMORY[0x1E6960D58], v15);
        FigCFDictionarySetInt32();
        if (a5 == 6 || a5 == 5)
        {
          FigAssetAnalysisReporterEditAndAppendMessage();
        }

        else
        {
          FigAssetAnalysisReporterAddMessage();
        }

        CFRelease(v15);
      }

      CFRelease(v12);
    }
  }
}

uint64_t ParseDiscoveredUUIDBoxLocation(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = FigAtomStreamGetCurrentAtomGlobalOffset();
  if (!result)
  {
    result = FigAtomStreamGetCurrentAtomHeaderSize();
    if (!result)
    {
      result = FigAtomStreamGetCurrentAtomUUIDType();
      if (!result)
      {
        *a3 = 0;
        *a4 = 0;
      }
    }
  }

  return result;
}

uint64_t ParseMediaHeaderAtom()
{
  OUTLINED_FUNCTION_66_10();
  v1 = ***v0;
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    OUTLINED_FUNCTION_152_2();
    result = FigAtomStreamGetCurrentAtomVersionAndFlags();
    if (!result)
    {
      OUTLINED_FUNCTION_40_16(v1, v3, v4, "'mdhd' V0 atom size less than minimum");
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t ParseMediaHandlerAtom()
{
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_43_15();
  result = FigAtomStreamReadCurrentAtomData();
  if (!result)
  {
    OUTLINED_FUNCTION_64_0();
    result = CheckAtomVersionIsZero_0();
    if (!result)
    {
      *(v0 + 8) = 0;
    }
  }

  return result;
}

uint64_t ParseExtendedLanguageTagAtom()
{
  OUTLINED_FUNCTION_66_10();
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  theBuffer = 0;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  FigAtomStreamGetCurrentAtomVersionAndFlags();
  return 0;
}

uint64_t ParseVideoMediaInfoHeaderAtom()
{
  OUTLINED_FUNCTION_10_45();
  OUTLINED_FUNCTION_61_13();
  v0 = OUTLINED_FUNCTION_4_47();
  if (!v0)
  {
    if (v6 == 12)
    {
      OUTLINED_FUNCTION_64_0();
      return CheckAtomVersionIsZero_0();
    }

    else
    {
      v2 = OUTLINED_FUNCTION_64_0();
      _MovieAtomReportParsingMessage(v2, v3, v4, v5, 2);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      return FigSignalErrorAtGM();
    }
  }

  return v0;
}

uint64_t ParseDataInfoAtom(uint64_t a1)
{
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_0_15();
  v2 = FigAtomStreamInitWithParent();
  if (v2)
  {
    return v2;
  }

  v9 = OUTLINED_FUNCTION_83_6(v2, v3, v4, ParseDataInfoAtom_atomDispatch, v5, v6, v7, v8, v14);
  if (v9)
  {
    v11 = OUTLINED_FUNCTION_265();
    _MovieAtomReportParsingMessage(v11, v12, a1, v13, 5);
  }

  return v9;
}

uint64_t ParseDataRefAtom()
{
  OUTLINED_FUNCTION_28_21();
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_43_15();
  OUTLINED_FUNCTION_12_43();
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!CurrentAtomTypeAndDataLength)
  {
    v4 = OUTLINED_FUNCTION_283();
    OUTLINED_FUNCTION_55_15(v4, v5, v6, v7);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    CurrentAtomTypeAndDataLength = FigSignalErrorAtGM();
  }

  v8 = CurrentAtomTypeAndDataLength;
  if (CurrentAtomTypeAndDataLength)
  {
    ReleaseDataReferenceInfoArray(v1);
  }

  return v8;
}

uint64_t ParseSampleGroupDescriptionAtom()
{
  OUTLINED_FUNCTION_10_45();
  OUTLINED_FUNCTION_43_15();
  v23 = 0;
  v21 = 0;
  v22 = 0;
  cf = 0;
  v19 = 0;
  v18 = 0;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength || (CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomVersionAndFlags(), CurrentAtomTypeAndDataLength))
  {
LABEL_7:
    v8 = CurrentAtomTypeAndDataLength;
    goto LABEL_8;
  }

  if (v19 < 3u)
  {
    OUTLINED_FUNCTION_265();
    CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
    if (!CurrentAtomTypeAndDataLength)
    {
      OUTLINED_FUNCTION_156_0();
      CurrentAtomTypeAndDataLength = CMBlockBufferCreateContiguous(v1, v2, v3, v4, v5, v6, 2u, v7);
      if (!CurrentAtomTypeAndDataLength)
      {
        v14 = OUTLINED_FUNCTION_64_0();
        _MovieAtomReportParsingMessage(v14, v15, v16, v17, 2);
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        CurrentAtomTypeAndDataLength = FigSignalErrorAtGM();
      }
    }

    goto LABEL_7;
  }

  v10 = OUTLINED_FUNCTION_64_0();
  _MovieAtomReportParsingMessage(v10, v11, v12, v13, 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM();
  v8 = 0;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v8;
}

void ParseTimeToSampleNumAtom(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, int a10, unsigned int a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_0_144();
  OUTLINED_FUNCTION_49_11();
  OUTLINED_FUNCTION_39_17();
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    if (a12 <= 7)
    {
      v23 = OUTLINED_FUNCTION_7_63();
      _MovieAtomReportParsingMessage(v23, v24, v25, v26, 2);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      FigSignalErrorAtGM();
    }

    else
    {
      OUTLINED_FUNCTION_7_63();
      if (!CheckAtomVersionIsZero_0() && !OUTLINED_FUNCTION_25_23())
      {
        if ((v38 = bswap32(a11), (v38 & 0x80000000) == 0) && ((OUTLINED_FUNCTION_51_15(), v35) || (v31 = OUTLINED_FUNCTION_7_63(), _MovieAtomReportParsingMessage(v31, v32, v33, v34, 2), OUTLINED_FUNCTION_51_15(), v36 ^ v37 | v35)) || (v27 = OUTLINED_FUNCTION_7_63(), _MovieAtomReportParsingMessage(v27, v28, v29, v30, 2), fig_log_get_emitter(), OUTLINED_FUNCTION_3_5(), !OUTLINED_FUNCTION_69_6()))
        {
          v22 = v38;
          if (v38 >= 1)
          {
            OUTLINED_FUNCTION_41_16();
            if (FigAtomStreamReadCurrentAtomDataAndCreateBBuf())
            {
              goto LABEL_12;
            }

            v22 = v38;
          }

          MovieSampleTableSet_stts(v21, v22, 0);
        }
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_860();
}

void ParseSyncSampleAtom(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, CMBlockBufferRef blockBufferOut, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_47_5();
  a20 = v21;
  a21 = v22;
  OUTLINED_FUNCTION_0_144();
  OUTLINED_FUNCTION_46_13();
  OUTLINED_FUNCTION_39_17();
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    if (a12 <= 7)
    {
      v26 = OUTLINED_FUNCTION_7_63();
      _MovieAtomReportParsingMessage(v26, v27, v28, v29, 2);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      FigSignalErrorAtGM();
      goto LABEL_12;
    }

    if (OUTLINED_FUNCTION_31_19())
    {
      goto LABEL_12;
    }

    v41 = bswap32(0);
    if (v41 < 0 || (OUTLINED_FUNCTION_51_15(), !v38) && (v34 = OUTLINED_FUNCTION_7_63(), _MovieAtomReportParsingMessage(v34, v35, v36, v37, 2), OUTLINED_FUNCTION_51_15(), !(v39 ^ v40 | v38)))
    {
      v30 = OUTLINED_FUNCTION_7_63();
      _MovieAtomReportParsingMessage(v30, v31, v32, v33, 2);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      if (OUTLINED_FUNCTION_69_6())
      {
        goto LABEL_12;
      }
    }

    if (v41 < 1)
    {
      CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, &blockBufferOut);
    }

    else
    {
      OUTLINED_FUNCTION_23_32();
      if (FigAtomStreamReadCurrentAtomDataAndCreateBBuf())
      {
        goto LABEL_12;
      }
    }

    v23 = OUTLINED_FUNCTION_65_10();
    MovieSampleTableSet_stss(v23, v24, v25);
  }

LABEL_12:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  OUTLINED_FUNCTION_860();
}

void ParseSampleToChunkAtom(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, int a10, unsigned int a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_0_144();
  OUTLINED_FUNCTION_49_11();
  OUTLINED_FUNCTION_39_17();
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    if (a12 <= 7)
    {
      v23 = OUTLINED_FUNCTION_7_63();
      _MovieAtomReportParsingMessage(v23, v24, v25, v26, 2);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      FigSignalErrorAtGM();
    }

    else
    {
      OUTLINED_FUNCTION_7_63();
      if (!CheckAtomVersionIsZero_0() && !OUTLINED_FUNCTION_25_23())
      {
        if ((v38 = bswap32(a11), (v38 & 0x80000000) == 0) && ((OUTLINED_FUNCTION_51_15(), v35) || (v31 = OUTLINED_FUNCTION_7_63(), _MovieAtomReportParsingMessage(v31, v32, v33, v34, 2), OUTLINED_FUNCTION_51_15(), v36 ^ v37 | v35)) || (v27 = OUTLINED_FUNCTION_7_63(), _MovieAtomReportParsingMessage(v27, v28, v29, v30, 2), fig_log_get_emitter(), OUTLINED_FUNCTION_3_5(), !OUTLINED_FUNCTION_69_6()))
        {
          v22 = v38;
          if (v38 >= 1)
          {
            OUTLINED_FUNCTION_41_16();
            if (FigAtomStreamReadCurrentAtomDataAndCreateBBuf())
            {
              goto LABEL_12;
            }

            v22 = v38;
          }

          MovieSampleTableSet_stsc(v21, v22, 0);
        }
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_860();
}

uint64_t ParseSampleSizeAtom()
{
  OUTLINED_FUNCTION_0_144();
  v1 = *v0;
  result = OUTLINED_FUNCTION_57_9();
  if (!result)
  {
    OUTLINED_FUNCTION_22_24(v1, v3, v4, "'stsz' atom size less than minimum");
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t ParseCompactSampleSizeAtom()
{
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_43_15();
  result = OUTLINED_FUNCTION_57_9();
  if (!result)
  {
    v1 = OUTLINED_FUNCTION_14_40();
    _MovieAtomReportParsingMessage(v1, v2, v3, v4, 2);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    return FigSignalErrorAtGM();
  }

  return result;
}

void ParseChunkOffsetAtom()
{
  OUTLINED_FUNCTION_0_144();
  if (!OUTLINED_FUNCTION_57_9())
  {
    v0 = OUTLINED_FUNCTION_13_36();
    _MovieAtomReportParsingMessage(v0, v1, v2, v3, 2);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_88_6();
}

void ParseChunkOffset64Atom()
{
  OUTLINED_FUNCTION_0_144();
  if (!OUTLINED_FUNCTION_57_9())
  {
    v0 = OUTLINED_FUNCTION_13_36();
    _MovieAtomReportParsingMessage(v0, v1, v2, v3, 2);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_88_6();
}

void ParseCompositionOffsetAtom()
{
  OUTLINED_FUNCTION_0_144();
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    v0 = OUTLINED_FUNCTION_7_63();
    _MovieAtomReportParsingMessage(v0, v1, v2, v3, 2);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_88_6();
}

void ParsePartialSyncSampleAtom(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, CMBlockBufferRef blockBufferOut, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_47_5();
  a20 = v21;
  a21 = v22;
  OUTLINED_FUNCTION_0_144();
  OUTLINED_FUNCTION_46_13();
  OUTLINED_FUNCTION_39_17();
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    if (a12 <= 0xB)
    {
      v26 = OUTLINED_FUNCTION_7_63();
      _MovieAtomReportParsingMessage(v26, v27, v28, v29, 2);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      FigSignalErrorAtGM();
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_7_63();
    if (CheckAtomVersionIsZero_0() || OUTLINED_FUNCTION_31_19())
    {
      goto LABEL_13;
    }

    v41 = bswap32(0);
    if (v41 < 0 || (OUTLINED_FUNCTION_51_15(), !v38) && (v34 = OUTLINED_FUNCTION_7_63(), _MovieAtomReportParsingMessage(v34, v35, v36, v37, 2), OUTLINED_FUNCTION_51_15(), !(v39 ^ v40 | v38)))
    {
      v30 = OUTLINED_FUNCTION_7_63();
      _MovieAtomReportParsingMessage(v30, v31, v32, v33, 2);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      if (OUTLINED_FUNCTION_69_6())
      {
        goto LABEL_13;
      }
    }

    if (v41 < 1)
    {
      CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, &blockBufferOut);
    }

    else
    {
      OUTLINED_FUNCTION_23_32();
      if (FigAtomStreamReadCurrentAtomDataAndCreateBBuf())
      {
        goto LABEL_13;
      }
    }

    v23 = OUTLINED_FUNCTION_65_10();
    MovieSampleTableSet_stps(v23, v24, v25);
  }

LABEL_13:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  OUTLINED_FUNCTION_860();
}

uint64_t ParseSampleDependencyAtom()
{
  OUTLINED_FUNCTION_0_144();
  OUTLINED_FUNCTION_46_13();
  OUTLINED_FUNCTION_39_17();
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  OUTLINED_FUNCTION_7_63();
  CurrentAtomTypeAndDataLength = CheckAtomVersionIsZero_0();
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  OUTLINED_FUNCTION_26_23();
  v2 = OUTLINED_FUNCTION_84_4();
  v10 = OUTLINED_FUNCTION_10_11(v2, v3, v4, v5, v6, v7, v8, v9, v23, v25);
  if (!v0)
  {
    CMBlockBufferGetDataLength(v10);
    v11 = OUTLINED_FUNCTION_65_10();
    v14 = MovieSampleTableSet_sdtp(v11, v12, v13);
    v10 = OUTLINED_FUNCTION_10_11(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v0;
}

void ParseCompositionShiftLeastGreatestAtom(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_0_144();
  OUTLINED_FUNCTION_39_17();
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    v21 = OUTLINED_FUNCTION_13_36();
    _MovieAtomReportParsingMessage(v21, v22, v23, v24, 2);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_860();
}

void CommonSampleGroupDescriptionEntryParse(uint64_t appended, uint64_t a2, uint64_t a3, int a4, int a5, int a6, unint64_t a7, uint64_t a8)
{
  v11 = a4;
  v12 = a3;
  if (a5)
  {
    if (a5 * a4 <= a7)
    {
      if (a4 >= 1)
      {
        v13 = a5;
        while (1)
        {
          v14 = OUTLINED_FUNCTION_177();
          if (MovieSampleGroupDescriptionArrayAppendParsedDescription(v14, v15, v12))
          {
            goto LABEL_24;
          }

          v12 += v13;
          if (!--v11)
          {
            goto LABEL_18;
          }
        }
      }

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_44_17(appended, a2, a3, "Entry length and count inconsistent with atom data size");
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
LABEL_26:
    OUTLINED_FUNCTION_651();

    FigSignalErrorAtGM();
    return;
  }

  if (a4 >= 1)
  {
    v16 = 0;
    while (v16 + 4 <= a7)
    {
      v17 = *v12;
      v18 = bswap32(*v12);
      if ((v18 & 0x80000000) != 0)
      {
        OUTLINED_FUNCTION_44_17(appended, a2, a3, "Invalid sample group description length");
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM();
        goto LABEL_24;
      }

      v16 += 4 + v18;
      if (v16 > a7)
      {
        break;
      }

      v19 = v12 + 4;
      if (v17)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      appended = MovieSampleGroupDescriptionArrayAppendParsedDescription(a8, v18, v20);
      if (appended)
      {
        goto LABEL_24;
      }

      v12 = &v19[v18];
      if (!--v11)
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_44_17(appended, a2, a3, "Atom too short to hold description length");
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    goto LABEL_26;
  }

LABEL_18:
  if (!a6)
  {
LABEL_24:
    OUTLINED_FUNCTION_651();
    return;
  }

  OUTLINED_FUNCTION_651();

  MovieSampleGroupDescriptionArraySetDefaultDescriptionIndex(v21, v22);
}

uint64_t ParseSoundMediaInfoHeaderAtom()
{
  OUTLINED_FUNCTION_10_45();
  OUTLINED_FUNCTION_61_13();
  result = OUTLINED_FUNCTION_4_47();
  if (!result)
  {
    if (v5 == 8)
    {
      OUTLINED_FUNCTION_64_0();
      return CheckAtomVersionIsZero_0();
    }

    else
    {
      v1 = OUTLINED_FUNCTION_64_0();
      _MovieAtomReportParsingMessage(v1, v2, v3, v4, 2);
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t ParseTimeCodeMediaHeaderAtom(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28_21();
  v4 = ***v3;
  v12 = 0;
  v11[14] = 0;
  OUTLINED_FUNCTION_0_15();
  FigAtomStreamGetCurrentAtomTypeAndDataLength();
  OUTLINED_FUNCTION_312();
  v5 = FigAtomStreamInitWithParent();
  if (v5)
  {
    return v5;
  }

  v6 = ParseChildAtoms(v4, v11, 1, &ParseTimeCodeMediaHeaderAtom_atomDispatch, a2);
  v9 = v6;
  if (v6)
  {
    OUTLINED_FUNCTION_42_16(v6, v7, v8, "while parsing");
  }

  return v9;
}

uint64_t ParseTimeCodeMediaInfoAtom()
{
  OUTLINED_FUNCTION_10_45();
  v2 = *(v1 + 8);
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_49_11();
  OUTLINED_FUNCTION_39_17();
  FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (v8 <= 0x18)
  {
    OUTLINED_FUNCTION_22_24(v0, v3, v4, "Incorrect 'tcmi' atom size");
  }

  OUTLINED_FUNCTION_265();
  CurrentAtomVersionAndFlags = FigAtomStreamGetCurrentAtomVersionAndFlags();
  if (!CurrentAtomVersionAndFlags)
  {
    MovieTrackSetTimecodeSpecifics(v2, v7 & 1);
  }

  return CurrentAtomVersionAndFlags;
}

uint64_t ParseTrackCleanApertureDimensionsAtom()
{
  result = OUTLINED_FUNCTION_37_20();
  if (!result)
  {
    result = OUTLINED_FUNCTION_25_23();
    if (!result)
    {
      OUTLINED_FUNCTION_23_32();
      result = FigAtomStreamReadCurrentAtomData();
      if (!result)
      {
        v1 = OUTLINED_FUNCTION_21_24();
        return MovieTrackSetCleanApertureDimensions(v1, v2, v3);
      }
    }
  }

  return result;
}

uint64_t ParseTrackProductionApertureDimensionsAtom()
{
  result = OUTLINED_FUNCTION_37_20();
  if (!result)
  {
    result = OUTLINED_FUNCTION_25_23();
    if (!result)
    {
      OUTLINED_FUNCTION_23_32();
      result = FigAtomStreamReadCurrentAtomData();
      if (!result)
      {
        v1 = OUTLINED_FUNCTION_21_24();
        return MovieTrackSetProductionApertureDimensions(v1, v2, v3);
      }
    }
  }

  return result;
}

uint64_t ParseTrackEncodedPixelsDimensionsAtom()
{
  result = OUTLINED_FUNCTION_37_20();
  if (!result)
  {
    result = OUTLINED_FUNCTION_25_23();
    if (!result)
    {
      OUTLINED_FUNCTION_23_32();
      result = FigAtomStreamReadCurrentAtomData();
      if (!result)
      {
        v1 = OUTLINED_FUNCTION_21_24();
        return MovieTrackSetEncodedPixelsDimensions(v1, v2, v3);
      }
    }
  }

  return result;
}

uint64_t ParseCompressedMovieDataAtom()
{
  OUTLINED_FUNCTION_11_30();
  if (*(v0 + 12) != 2053925218)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    return FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_613();
  result = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
  if (!result)
  {
    OUTLINED_FUNCTION_613();
    CMBlockBufferGetDataPointer(v2, v3, v4, v5, v6);
    v7 = OUTLINED_FUNCTION_265();
    OUTLINED_FUNCTION_85_4(v7, v8, v9, v10);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t ParseMovieExtendsHeaderAtom(uint64_t a1, uint64_t **a2)
{
  v2 = **a2;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  FigAtomStreamGetCurrentAtomTypeAndDataLength();
  CurrentAtomVersionAndFlags = FigAtomStreamGetCurrentAtomVersionAndFlags();
  if (CurrentAtomVersionAndFlags)
  {
    return CurrentAtomVersionAndFlags;
  }

  if (v10 == 1)
  {
    OUTLINED_FUNCTION_26_23();
    CurrentAtomData = FigAtomStreamReadCurrentAtomData();
    if (!CurrentAtomData)
    {
      v5 = bswap64(0);
      goto LABEL_7;
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_23();
    CurrentAtomData = FigAtomStreamReadCurrentAtomData();
    if (!CurrentAtomData)
    {
      v5 = bswap32(0);
LABEL_7:
      CMTimeMake(&v7, v5, *(v2 + 240));
      *(v2 + 160) = v7;
      *(v2 + 155) = 1;
    }
  }

  return CurrentAtomData;
}

_DWORD *ParseTrackExtendsAtom()
{
  OUTLINED_FUNCTION_66_10();
  v1 = *v0;
  FigAtomStreamGetCurrentAtomTypeAndDataLength();
  result = FigAtomStreamGetCurrentAtomVersionAndFlags();
  if (!result)
  {
    OUTLINED_FUNCTION_383();
    result = FigAtomStreamReadCurrentAtomData();
    if (!result)
    {
      result = MovieInformationFindTrackForTrackID(v1, bswap32(0));
      if (result)
      {
        v3 = result;
        v8 = vrev32q_s8(0);
        result = MovieTrackSetTrackExtendsDefaultValues(result, v8.i32[0], v8.i32[1], v8.i32[2], v8.i32[3]);
        if (!result)
        {
          if (*(v3 + 91))
          {
            return 0;
          }

          else
          {
            v4 = OUTLINED_FUNCTION_34_18();
            v6 = malloc_type_calloc(v4, 0x40uLL, v5);
            *(v3 + 91) = v6;
            if (v6)
            {
              v7 = v6;
              result = 0;
              *(v7 + 40) = v8;
              *(v7 + 1) = xmmword_196E78670;
              *(v7 + 4) = vneg_f32(0xFFFFFFFF00000000);
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_4();
              return FigSignalErrorAtGM();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ParseMovieFragmentHeaderAtom(uint64_t a1, uint64_t **a2)
{
  v3 = **a2;
  FigAtomStreamGetCurrentAtomTypeAndDataLength();
  v4 = OUTLINED_FUNCTION_25_23();
  if (v4)
  {
    return v4;
  }

  v5 = bswap32(0);
  v6 = *(v3 + 184);
  switch(v6)
  {
    case 2:
      return 1937010544;
    case 1:
      if (v5 != *(v3 + 188) + 1)
      {
        v7 = 1937010544;
        v9 = OUTLINED_FUNCTION_312();
        _MovieAtomReportParsingMessage(v9, v10, a1, v11, 3);
        *(v3 + 184) = 2;
        return v7;
      }

      MovieInformationUpdateLastParsedFragmentSequenceNumber(v3, v5);
      break;
    case 0:
      MovieInformationEstablishFirstParsedFragmentSequenceNumber(v3, v5);
      break;
  }

  return 0;
}

uint64_t ParseTrackFragmentAtom(uint64_t a1, uint64_t a2)
{
  v4 = **a2;
  v95 = 0;
  v94 = 0u;
  v93 = 0u;
  v91 = 0;
  v90 = 0;
  OUTLINED_FUNCTION_12_43();
  FigAtomStreamGetCurrentAtomTypeAndDataLength();
  OUTLINED_FUNCTION_249();
  v5 = FigAtomStreamInitWithParent();
  if (v5)
  {
    return v5;
  }

  v6 = *(a2 + 8);
  v92 = *a2;
  v7 = *(a2 + 16);
  *&v94 = v6;
  *(&v94 + 1) = v7;
  LOBYTE(v95) = *(a2 + 24);
  v8 = ParseChildAtoms(v4, v89, 13, &ParseTrackFragmentAtom_atomDispatch, &v92);
  if (v8)
  {
    _MovieAtomReportParsingMessage(v4, v93, a1, "Encountered an error during parsing of track fragment atom", 5);
  }

  if (!*(a2 + 24))
  {
    if (BYTE1(v95))
    {
      v9 = v95 == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = !v9;
    *(a2 + 24) = v10;
  }

  if (*(&v93 + 1))
  {
    if (*(*(&v93 + 1) + 176))
    {
      MovieTrackEstablishFirstFragmentBaseDecodeTime(v4, v93, *(*(&v93 + 1) + 16));
    }

    MovieTrackCreateEditSegmentArrayFromFragmentEditList(v4, v93, *(*a2 + 25));
    v11 = *(&v93 + 1);
    if (!*(*(&v93 + 1) + 72))
    {
      v38 = *(*(&v93 + 1) + 8);
      if (!v38)
      {
        v38 = (*(v93 + 728) + 56);
      }

      *v38 = 0;
      if (*(*a2 + 25))
      {
        MovieTrackIntegrateFragmentSampleGroups(v93, *(v11 + 104));
        v11 = *(&v93 + 1);
      }

      if (*(v11 + 96))
      {
        CFRelease(*(v11 + 96));
        v11 = *(&v93 + 1);
      }

      if (*(v11 + 112))
      {
        CFRelease(*(v11 + 112));
        v11 = *(&v93 + 1);
      }

      if (*(v11 + 104))
      {
        CFRelease(*(v11 + 104));
        v11 = *(&v93 + 1);
      }

      FreeSampleAuxInfo(v11);
      free(*(&v93 + 1));
      return v8;
    }

    *(v4 + 157) = 1;
    if (*(v11 + 88))
    {
      v12 = v93;
      v13 = *v92;
      v100 = 0;
      GetFirstFormatDescription(v93);
      OUTLINED_FUNCTION_35_15();
      if (*(v15 + 12))
      {
        if (*v15)
        {
          if (*(&v94 + 1))
          {
            v16 = v14;
            if (v14)
            {
              Extension = CMFormatDescriptionGetExtension(v14, *MEMORY[0x1E6962768]);
              if (Extension)
              {
                v18 = Extension;
                v19 = CFGetTypeID(Extension);
                if (v19 == CFDataGetTypeID())
                {
                  if (CFDataGetLength(v18) <= 7)
                  {
                    OUTLINED_FUNCTION_52_15(v13, v12, v20, ">> CommonEncryptionTrackEncryptionBox is too small");
                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_0_4();
                    goto LABEL_94;
                  }

                  BytePtr = CFDataGetBytePtr(v18);
                  if (BytePtr[6])
                  {
                    v28 = BytePtr;
                    v87 = v13;
                    v29 = BytePtr[7];
                    v30 = MEMORY[0x1E695E480];
                    v88 = v8;
                    if (BytePtr[7])
                    {
                      if (v29 != 8 && v29 != 16)
                      {
                        OUTLINED_FUNCTION_45_14(BytePtr, v22, v23, ">> Only default_Per_Sample_IV_Size = 0, 8, 16  is supported", v24, v25, v26, v27, v86, v87);
                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_0_121();
LABEL_94:
                        FigSignalErrorAtGM();
                        return v8;
                      }

                      OUTLINED_FUNCTION_35_15();
                      v33 = *v32;
                      v34 = *v30;
                      CFArrayCreateMutable(*v30, *(v32 + 3), MEMORY[0x1E695E9C0]);
                      OUTLINED_FUNCTION_35_15();
                      *(v36 + 24) = v35;
                      if (v35)
                      {
                        v37 = 0;
LABEL_60:
                        OUTLINED_FUNCTION_35_15();
                        CFArrayCreateMutable(v34, *(v61 + 12), MEMORY[0x1E695E9C0]);
                        OUTLINED_FUNCTION_35_15();
                        *(v63 + 32) = v62;
                        if (v62)
                        {
                          if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
                          {
                            OUTLINED_FUNCTION_35_15();
                            if (*(v65 + 12))
                            {
                              v66 = 0;
                              v67 = v33 - 8;
                              do
                              {
                                destination = 0;
                                v68 = *(v65 + 8);
                                if (v68)
                                {
                                  v69 = *(v65 + 8);
                                  destination = v68;
                                }

                                else
                                {
                                  if (CMBlockBufferCopyDataBytes(*(v65 + 16), v66, 1uLL, &destination))
                                  {
                                    break;
                                  }

                                  v69 = destination;
                                }

                                if (v67 + v69 > v100)
                                {
                                  OUTLINED_FUNCTION_52_15(v87, v12, v64, ">> Sample auxiliary data read offset out of range");
                                  fig_log_get_emitter();
                                  OUTLINED_FUNCTION_0_121();
                                  goto LABEL_101;
                                }

                                if (v29)
                                {
                                  Mutable = CFDataCreateMutable(v34, v29);
                                  if (!Mutable)
                                  {
                                    goto LABEL_100;
                                  }

                                  v71 = Mutable;
                                  CFDataSetLength(Mutable, v29);
                                  CFDataGetMutableBytePtr(v71);
                                  if (FigAtomStreamReadCurrentAtomData())
                                  {
                                    v84 = v71;
LABEL_89:
                                    CFRelease(v84);
                                    break;
                                  }

                                  OUTLINED_FUNCTION_35_15();
                                  CFArrayAppendValue(*(v72 + 24), v71);
                                  CFRelease(v71);
                                  v67 += v29;
                                }

                                else if (v37)
                                {
                                  OUTLINED_FUNCTION_35_15();
                                  CFArrayAppendValue(*(v73 + 24), v37);
                                }

                                if (destination > v29)
                                {
                                  v98 = 0;
                                  if (FigAtomStreamReadCurrentAtomData())
                                  {
                                    break;
                                  }

                                  v75 = bswap32(v98) >> 16;
                                  v98 = v75;
                                  if (v29 + 2 + 6 * v75 != destination)
                                  {
                                    OUTLINED_FUNCTION_52_15(v87, v12, v74, ">> Bad sample auxiliary data");
                                    fig_log_get_emitter();
                                    OUTLINED_FUNCTION_0_121();
                                    goto LABEL_101;
                                  }

                                  v76 = 8 * v75;
                                  v77 = CFDataCreateMutable(v34, v76);
                                  if (!v77)
                                  {
                                    goto LABEL_100;
                                  }

                                  v78 = v77;
                                  v67 += 2;
                                  CFDataSetLength(v77, v76);
                                  MutableBytePtr = CFDataGetMutableBytePtr(v78);
                                  if (v98)
                                  {
                                    v80 = 0;
                                    v81 = MutableBytePtr + 4;
                                    while (1)
                                    {
                                      v82 = v67;
                                      v97 = 0;
                                      v96 = 0;
                                      if (FigAtomStreamReadCurrentAtomData() || FigAtomStreamReadCurrentAtomData())
                                      {
                                        break;
                                      }

                                      *(v81 - 1) = bswap32(v97) >> 16;
                                      *v81 = bswap32(v96);
                                      v81 += 2;
                                      ++v80;
                                      v67 += 6;
                                      if (v80 >= v98)
                                      {
                                        v67 = v82 + 6;
                                        goto LABEL_85;
                                      }
                                    }

                                    v84 = v78;
                                    goto LABEL_89;
                                  }

LABEL_85:
                                  OUTLINED_FUNCTION_35_15();
                                  CFArrayAppendValue(*(v83 + 32), v78);
                                  CFRelease(v78);
                                }

                                ++v66;
                                OUTLINED_FUNCTION_35_15();
                              }

                              while (v66 < *(v65 + 12));
                            }
                          }
                        }

                        else
                        {
LABEL_100:
                          fig_log_get_emitter();
                          OUTLINED_FUNCTION_0_121();
LABEL_101:
                          FigSignalErrorAtGM();
                        }

                        v8 = v88;
                        if (v37)
                        {
                          CFRelease(v37);
                        }

                        return v8;
                      }
                    }

                    else
                    {
                      Length = CFDataGetLength(v18);
                      if (Length <= 24)
                      {
                        OUTLINED_FUNCTION_45_14(Length, v40, v41, ">> CommonEncryptionTrackEncryptionBox is too small (< 25)", v42, v43, v44, v45, v86, v87);
                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_0_121();
                        goto LABEL_93;
                      }

                      v46 = v28[24];
                      if (v46 > 0x10 || ((1 << v46) & 0x10101) == 0)
                      {
                        OUTLINED_FUNCTION_45_14(Length, v40, v41, ">> Only default_constant_IV_size = 0, 8, 16  is supported", v42, v43, v44, v45, v86, v87);
                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_0_121();
                        goto LABEL_93;
                      }

                      OUTLINED_FUNCTION_35_15();
                      v33 = *v47;
                      MediaSubType = CMFormatDescriptionGetMediaSubType(v16);
                      if (MediaSubType != 1635135537 && MediaSubType != 1902212657)
                      {
                        v37 = 0;
                        v34 = *v30;
                        goto LABEL_60;
                      }

                      if (v46 == 8 || v46 == 16)
                      {
                        v34 = *v30;
                        OUTLINED_FUNCTION_35_15();
                        CFArrayCreateMutable(v34, *(v51 + 12), MEMORY[0x1E695E9C0]);
                        OUTLINED_FUNCTION_35_15();
                        *(v53 + 24) = v52;
                        if (v52)
                        {
                          v54 = CFDataGetLength(v18);
                          if (v54 >= v46 + 25)
                          {
                            v37 = CFDataCreate(v34, v28 + 25, v46);
                            goto LABEL_60;
                          }

                          OUTLINED_FUNCTION_45_14(v54, v55, v56, ">> CommonEncryptionTrackEncryptionBox is too small (25+default_constant_IV_size)", v57, v58, v59, v60, v86, v87);
                          fig_log_get_emitter();
                          OUTLINED_FUNCTION_0_121();
LABEL_93:
                          FigSignalErrorAtGM();
                          return v88;
                        }
                      }
                    }

                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_0_121();
                    goto LABEL_93;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v8;
}

void ParseTrackFragmentHeaderAtom(uint64_t a1, uint64_t a2)
{
  v2 = **a2;
  if (*(a2 + 40))
  {
    v6 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_50_10(v6, v7, v8, v9);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_88_6();

    FigSignalErrorAtGM();
  }

  else
  {
    FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (!FigAtomStreamGetCurrentAtomVersionAndFlags() && !OUTLINED_FUNCTION_31_19())
    {
      TrackForTrackID = MovieInformationFindTrackForTrackID(v2, bswap32(0));
      *(a2 + 8) = TrackForTrackID;
      if (TrackForTrackID)
      {
        if (*(TrackForTrackID + 728))
        {
          if (*(*a2 + 25))
          {
            v5 = OUTLINED_FUNCTION_373();
            MoovAssureSampleTableParsed(v5);
          }
        }

        v15 = OUTLINED_FUNCTION_373();
        OUTLINED_FUNCTION_50_10(v15, v16, v17, v18);
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_10();
      }

      else
      {
        v11 = OUTLINED_FUNCTION_249();
        OUTLINED_FUNCTION_50_10(v11, v12, v13, v14);
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_10();
      }

      FigSignalErrorAtGM();
    }

    OUTLINED_FUNCTION_88_6();
  }
}

uint64_t ParseTrackFragmentBaseMediaDecodeTimeAtom(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2 || *(v2 + 72))
  {
    v6 = OUTLINED_FUNCTION_502();
    OUTLINED_FUNCTION_55_15(v6, v7, v8, v9);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM();
  }

  else
  {
    OUTLINED_FUNCTION_152_2();
    result = FigAtomStreamGetCurrentAtomVersionAndFlags();
    if (!result)
    {
      OUTLINED_FUNCTION_20_25();
      result = FigAtomStreamReadCurrentAtomData();
      if (!result)
      {
        v5 = *(a2 + 16);
        *(v5 + 16) = bswap32(0);
        result = 0;
        *(v5 + 176) = 1;
      }
    }
  }

  return result;
}

uint64_t ParseTrackRunAtom(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && ((FigAtomStreamGetCurrentAtomTypeAndDataLength(), CurrentAtomVersionAndFlags = FigAtomStreamGetCurrentAtomVersionAndFlags(), CurrentAtomVersionAndFlags) || (CurrentAtomVersionAndFlags = FigAtomStreamReadCurrentAtomData(), CurrentAtomVersionAndFlags)))
  {
    return CurrentAtomVersionAndFlags;
  }

  else
  {
    return 0;
  }
}

uint64_t ParseSampleAuxInfoSizesAtom()
{
  OUTLINED_FUNCTION_187();
  v3 = *(v2 + 8);
  v4 = **v2;
  v5 = *(v2 + 16);
  if (!v5)
  {
    OUTLINED_FUNCTION_50_10(v4, v3, v1, "'saiz' atom appears without prior 'tfhd' atom");
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
LABEL_14:
    CurrentAtomData = FigSignalErrorAtGM();
    goto LABEL_15;
  }

  if (*(v5 + 40) != 1)
  {
    OUTLINED_FUNCTION_50_10(v4, v3, v1, "Only supports sample auxiliary info data when default-base-is-moof is set");
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    goto LABEL_14;
  }

  v6 = *(v5 + 88);
  if (v6 && *(v6 + 16))
  {
    return 0;
  }

  FigAtomStreamGetCurrentAtomTypeAndDataLength();
  CurrentAtomVersionAndFlags = FigAtomStreamGetCurrentAtomVersionAndFlags();
  if (CurrentAtomVersionAndFlags)
  {
    v15 = CurrentAtomVersionAndFlags;
    goto LABEL_16;
  }

  FirstFormatDescription = GetFirstFormatDescription(v3);
  MovieTrackNoteSampleAuxInfoSizesAtomPresent(v3);
  memset(v17, 0, sizeof(v17));
  OUTLINED_FUNCTION_19_32();
  CurrentAtomData = FigAtomStreamReadCurrentAtomData();
  if (CurrentAtomData)
  {
LABEL_15:
    v15 = CurrentAtomData;
    if (!CurrentAtomData)
    {
      return v15;
    }

LABEL_16:
    FreeSampleAuxInfo(*(v0 + 16));
    return v15;
  }

  v10 = *MEMORY[0x1E695E4D0];
  if (v10 != CMFormatDescriptionGetExtension(FirstFormatDescription, *MEMORY[0x1E6962760]))
  {
    return 0;
  }

  v11 = bswap32(*&v17[1]);
  v12 = *(*(v0 + 16) + 88);
  if (!v12)
  {
    v13 = OUTLINED_FUNCTION_34_18();
    v12 = malloc_type_calloc(v13, 0x28uLL, v14);
    *(*(v0 + 16) + 88) = v12;
  }

  v12[2] = 0;
  v12[3] = v11;
  v15 = 0;
  *(v12 + 2) = 0;
  return v15;
}

void ParseSampleAuxInfoOffsetsAtom()
{
  OUTLINED_FUNCTION_187();
  v3 = *(v2 + 8);
  v4 = **v2;
  v5 = *(v2 + 16);
  if (!v5)
  {
    OUTLINED_FUNCTION_50_10(v4, v3, v1, "'saio' atom appears without prior 'tfhd' atom");
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
LABEL_16:
    CurrentAtomData = FigSignalErrorAtGM();
    goto LABEL_17;
  }

  if (*(v5 + 40) != 1)
  {
    OUTLINED_FUNCTION_50_10(v4, v3, v1, "Only supports sample auxiliary info data when default-base-is-moof is set");
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    goto LABEL_16;
  }

  v6 = *(v5 + 88);
  if (!v6 || !*v6)
  {
    FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (FigAtomStreamGetCurrentAtomVersionAndFlags())
    {
      goto LABEL_18;
    }

    FirstFormatDescription = GetFirstFormatDescription(v3);
    MovieTrackNoteSampleAuxInfoOffsetsAtomPresent(v3);
    OUTLINED_FUNCTION_19_32();
    CurrentAtomData = FigAtomStreamReadCurrentAtomData();
    if (!CurrentAtomData)
    {
      v9 = *MEMORY[0x1E695E4D0];
      if (v9 == CMFormatDescriptionGetExtension(FirstFormatDescription, *MEMORY[0x1E6962760]))
      {
        if (!*(*(v0 + 16) + 88))
        {
          v10 = OUTLINED_FUNCTION_34_18();
          *(*(v0 + 16) + 88) = malloc_type_calloc(v10, 0x28uLL, v11);
        }

        OUTLINED_FUNCTION_26_23();
        if (!FigAtomStreamReadCurrentAtomData())
        {
          **(*(v0 + 16) + 88) = bswap32(0);
          goto LABEL_12;
        }

LABEL_18:
        FreeSampleAuxInfo(*(v0 + 16));
        goto LABEL_12;
      }
    }

LABEL_17:
    if (!CurrentAtomData)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_12:
  OUTLINED_FUNCTION_88_6();
}

uint64_t ParseEditsAtomInTrackFragment(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = **a2;
  v14[0] = v4;
  v14[1] = v3;
  OUTLINED_FUNCTION_11_30();
  v5 = OUTLINED_FUNCTION_4_47();
  if (v5)
  {
    return v5;
  }

  if (!v3)
  {
    v9 = OUTLINED_FUNCTION_265();
    _MovieAtomReportParsingMessage(v9, v10, a1, v11, 3);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    return FigSignalErrorAtGM();
  }

  *(v3 + 722) = 1;
  *(v3 + 727) = 1;
  v6 = *(v3 + 696);
  if (v6)
  {
    CFRelease(v6);
  }

  *(v3 + 696) = 0;
  *(v3 + 704) = 0;
  if (v12 < 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_312();
  v5 = FigAtomStreamInitWithParent();
  if (v5)
  {
    return v5;
  }

  v7 = ParseChildAtoms(v4, v13, 1, &ParseEditsAtomInTrackFragment_atomDispatch, v14);
  if (v7)
  {
    _MovieAtomReportParsingMessage(v4, v3, a1, "while parsing", 5);
  }

  return v7;
}

uint64_t ParseSampleDependencyAtomInTrackFragment(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_502();
    _MovieAtomReportParsingMessage(v4, v5, a1, v6, 2);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t ParseFragmentSampleGroupDescriptionAtom(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = **a2;
  v27 = 0;
  cf = 0;
  v26 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  if (!v2)
  {
    _MovieAtomReportParsingMessage(v3, 0, a1, "Track Information is NULL (missing track fragment header)", 3);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    goto LABEL_18;
  }

  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength)
  {
    goto LABEL_8;
  }

  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomVersionAndFlags();
  if (CurrentAtomTypeAndDataLength)
  {
    goto LABEL_8;
  }

  if (v23 - 3 > 0xFFFFFFFD)
  {
    OUTLINED_FUNCTION_265();
    CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_156_0();
    CurrentAtomTypeAndDataLength = CMBlockBufferCreateContiguous(v5, v6, v7, v8, v9, v10, 2u, v11);
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_8;
    }

    v18 = OUTLINED_FUNCTION_64_0();
    _MovieAtomReportParsingMessage(v18, v19, v20, v21, 2);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
LABEL_18:
    CurrentAtomTypeAndDataLength = FigSignalErrorAtGM();
LABEL_8:
    v12 = CurrentAtomTypeAndDataLength;
    goto LABEL_9;
  }

  v14 = OUTLINED_FUNCTION_64_0();
  _MovieAtomReportParsingMessage(v14, v15, v16, v17, 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM();
  v12 = 0;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v12;
}

uint64_t ParseTrackFragmentUserDataAtom(uint64_t a1, uint64_t a2)
{
  v4 = **a2;
  if (*(a2 + 8))
  {
    BBuf = FigAtomStreamReadCurrentAtomAndCreateBBuf();
    if (BBuf)
    {
      goto LABEL_8;
    }

    if (v4[81])
    {
      if (v4[82])
      {
LABEL_5:
        OUTLINED_FUNCTION_65_10();
        BBuf = MovieTrackSupplementQuickTimeUserDataFromBlockBuffer();
        goto LABEL_8;
      }
    }

    else if (!v4[84])
    {
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_65_10();
    BBuf = MovieTrackSupplementISOUserDataFromBlockBuffer();
  }

  else
  {
    v2 = v3;
    v15 = OUTLINED_FUNCTION_312();
    _MovieAtomReportParsingMessage(v15, v16, v17, v18, 3);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    BBuf = FigSignalErrorAtGM();
  }

LABEL_8:
  v13 = OUTLINED_FUNCTION_10_11(BBuf, v6, v7, v8, v9, v10, v11, v12, v19, 0);
  if (v13)
  {
    CFRelease(v13);
  }

  return v2;
}

uint64_t FragmentInfoAddAndRetainSampleGroup(CFTypeRef cf, uint64_t a2, unint64_t a3, unsigned int a4, void *a5)
{
  v23 = 0;
  v10 = (a2 + 104);
  v9 = *(a2 + 104);
  if (!v9)
  {
    v11 = CFGetAllocator(cf);
    v12 = MovieSampleGroupCollectionCreate(v11, v10);
    if (v12)
    {
      goto LABEL_14;
    }

    v9 = *v10;
  }

  v13 = MovieSampleGroupCollectionLookupAndRetainSampleGroup(v9, a3, a4);
  v23 = v13;
  if (v13)
  {
LABEL_10:
    v21 = 0;
    *a5 = v13;
    v23 = 0;
    goto LABEL_11;
  }

  v14 = OUTLINED_FUNCTION_373();
  MovieTrackAddAndRetainSampleGroup(v14, v15, a4, v16);
  v17 = CFGetAllocator(cf);
  v12 = MovieSampleGroupCreateForFragment(v17, a3, a4, 0, &v23);
  if (!v12)
  {
    v18 = OUTLINED_FUNCTION_502();
    v12 = FragmentInfoAddAndRetainSampleGroupDescriptionArray(v18, v19, a3, v20);
    if (!v12)
    {
      v12 = MovieSampleGroupSetDescriptionArray(v23, 0);
      if (!v12)
      {
        v12 = MovieSampleGroupCollectionAddSampleGroup(*v10, v23);
        if (!v12)
        {
          v13 = v23;
          goto LABEL_10;
        }
      }
    }
  }

LABEL_14:
  v21 = v12;
LABEL_11:
  if (v23)
  {
    CFRelease(v23);
  }

  return v21;
}

uint64_t ParseMovieAtom_cold_1()
{
  OUTLINED_FUNCTION_62_10();
  OUTLINED_FUNCTION_67_11(v1, v2, v3, "No movie header atom found");
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t ParseEditListAtom_cold_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, a4, 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a6 = result;
  return result;
}

uint64_t CheckAtomVersionIsZero_cold_1(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Invalid atom version", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t ParseSampleDescriptionAtom_cold_1(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "ISO requires 1-based data reference index", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t ParseSampleDescriptionAtom_cold_2(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Expected number of sample descriptions not present", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t ParseSampleDescriptionAtom_cold_3(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Number of sample description entries out of range", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t ParseSampleDescriptionAtom_cold_4(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Expect V0 or V1 for 'stsd'", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t ParseSampleDescriptionAtom_cold_5(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "'stsd' atom size less than minimum", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t ParseMOVCompactSampleToGroupAtom_cold_1(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Fragment-local indexes in track-borne 'csgp' atom", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t ParseISOCompactSampleToGroupAtom_cold_1(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Fragment-local indexes in track-borne 'csgp' atom", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t CommonSampleToGroupAtomParseAndCreateArrayBBuf_cold_1(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Atom size is too small", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t CommonSampleToGroupAtomParseAndCreateArrayBBuf_cold_2(void *a1, uint64_t a2, uint64_t a3)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Expected non-negative number of entries", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

BOOL CommonSampleToGroupAtomParseAndCreateArrayBBuf_cold_3(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Invalid 'sbgp' atom version", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v5 = FigSignalErrorAtGM();
  *a4 = v5;
  return v5 == 0;
}

uint64_t CommonMOVCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_1(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Invalid atom version", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t CommonMOVCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_3(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Invalid fieldSize", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t CommonMOVCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_4(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "'csgm' atom size less than minimum", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t CommonISOCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_1(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Invalid atom version", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t CommonISOCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_2(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Pattern entry is not byte aligned", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t CommonISOCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_3(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "'csgp' atom size less than minimum", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t CommonISOCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_4(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "'csgp' Atom too small to accommodate pattern entry array", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t CommonISOCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_5(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "Atom too small for description indexes ", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t CommonISOCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_6(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "'csgp' atom size less than minimum", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t ParseGenericMediaInfoHeaderAtom_cold_1(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _MovieAtomReportParsingMessage(a1, a2, a3, "'gmhd' atom size too small", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a4 = result;
  return result;
}

uint64_t ParseFragmentSampleToGroupAtom_cold_1()
{
  OUTLINED_FUNCTION_62_10();
  OUTLINED_FUNCTION_67_11(v1, v2, v3, "Track Information is NULL (missing track fragment header)");
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t ParseFragmentMOVCompactSampleToGroupAtom_cold_1()
{
  OUTLINED_FUNCTION_62_10();
  OUTLINED_FUNCTION_67_11(v1, v2, v3, "Track Information is NULL (missing track fragment header)");
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t ParseFragmentISOCompactSampleToGroupAtom_cold_1()
{
  OUTLINED_FUNCTION_62_10();
  OUTLINED_FUNCTION_67_11(v1, v2, v3, "Track Information is NULL (missing track fragment header)");
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t ParseSampleEncryptionAtomInTraf_cold_1()
{
  OUTLINED_FUNCTION_62_10();
  OUTLINED_FUNCTION_67_11(**v1, v2, v3, "Track Information is NULL (missing track fragment header)");
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t FragmentInfoAddAndRetainSampleGroupDescriptionArray_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

void MovieTrackGetDataSourceAtIndex(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const __CFURL *cf, unint64_t a11, UInt8 *URLBytes, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_296_0();
  a23 = v24;
  a24 = v30;
  if ((v27 & 0x8000000000000000) == 0)
  {
    v31 = v29;
    v32 = v28;
    v33 = v27;
    v34 = v26;
    v35 = v25;
    Count = *(v26 + 64);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count > v33)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v34 + 64), v33);
      v38 = ValueAtIndex;
      a11 = 0;
      if (!ValueAtIndex[2])
      {
        URLBytes = 0;
        if (!*ValueAtIndex)
        {
          v45 = 0;
LABEL_26:
          v38[2] = v45;
          v50 = v38[1];
          if (v50)
          {
            CFRelease(v50);
            v38[1] = 0;
          }

          goto LABEL_28;
        }

        OUTLINED_FUNCTION_613();
        if (CMBlockBufferGetDataPointer(v39, v40, v41, v42, v43))
        {
          goto LABEL_30;
        }

        if (*v38 == 1970433056)
        {
          if (!a11)
          {
            goto LABEL_13;
          }

          v44 = 0;
          while (URLBytes[v44])
          {
            if (a11 == ++v44)
            {
              goto LABEL_13;
            }
          }

          if (v44 && v44 < a11)
          {
            cf = 0;
            v46 = *MEMORY[0x1E695E480];
            CMBaseObject = CMByteStreamGetCMBaseObject();
            v48 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v48)
            {
              v48(CMBaseObject, *MEMORY[0x1E695FFA0], v46, &cf);
              v49 = cf;
            }

            else
            {
              v49 = 0;
            }

            v45 = CFURLCreateWithBytes(v46, URLBytes, v44, 0x8000100u, v49);
            if (cf)
            {
              CFRelease(cf);
            }

            if (v45)
            {
              goto LABEL_26;
            }

            MovieInformationReportParsingFailureMessage(v35, v34, "Could not create CFURL for url data ref", 2);
            fig_log_get_emitter();
            OUTLINED_FUNCTION_2_10();
          }

          else
          {
LABEL_13:
            MovieInformationReportParsingFailureMessage(v35, v34, "Bad string in url data ref", 2);
            fig_log_get_emitter();
            OUTLINED_FUNCTION_2_10();
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_2_10();
        }

        if (FigSignalErrorAtGM())
        {
LABEL_30:
          OUTLINED_FUNCTION_207_0();
          return;
        }
      }

LABEL_28:
      *v31 = v38[2];
      if (v32)
      {
        *v32 = *v38 == 0;
      }

      goto LABEL_30;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_207_0();

  FigSignalErrorAtGM();
}

void MovieInformationReportParsingFailureMessage(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a1 + 8;
  if (!a1)
  {
    v4 = (a2 + 640);
  }

  if (*v4 && (v9 = CFGetAllocator(a1), (v10 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0))
  {
    v11 = v10;
    v12 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v12, 0);
    if (Mutable)
    {
      v14 = Mutable;
      CFStringAppendFormat(Mutable, 0, @"%s.", a3);
      if (a2)
      {
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
      }

      FigCFDictionarySetInt64();
      CFDictionarySetValue(v11, *MEMORY[0x1E6960D58], v14);
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_266();
      if (a4 == 7)
      {
        FigAssetAnalysisReporterEditAndCombineMessage();
      }

      else
      {
        FigAssetAnalysisReporterAddMessage();
      }

      CFRelease(v14);
    }

    OUTLINED_FUNCTION_652();

    CFRelease(v15);
  }

  else
  {
    OUTLINED_FUNCTION_652();
  }
}

void MovieTrackCopySyncSampleCombinations(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, CFIndex capacity, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_845();
  *v20 = 0;
  v22 = *(v21 + 80);
  if (v22 && CFDictionaryGetValue(v22, 0x73796E63))
  {
    OUTLINED_FUNCTION_156_0();
    MovieSampleGroupDescriptionArrayCopyInfo(v23, v24, v25, v26, v27, v28);
  }

  OUTLINED_FUNCTION_843();
}

uint64_t MovieTrackCopyTemporalLevelCombinations(const __CFAllocator *a1, uint64_t a2, __CFArray **a3)
{
  v34 = 0;
  v33 = 0;
  *a3 = 0;
  v4 = *(a2 + 80);
  if (v4 && CFDictionaryGetValue(v4, 0x7473636C))
  {
    OUTLINED_FUNCTION_156_0();
    v13 = MovieSampleGroupDescriptionArrayCopyInfo(v7, v8, v9, v10, v11, v12);
    v14 = v13;
    if (v33)
    {
      v28 = a3;
      v29 = v13;
      if (v33 < 1)
      {
        v16 = 0;
LABEL_15:
        *v28 = v16;
        v14 = v29;
      }

      else
      {
        v27 = a2;
        v15 = 0;
        v16 = 0;
        key = *MEMORY[0x1E69601A0];
        v17 = *MEMORY[0x1E6960190];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v34, v15);
          v31 = 0uLL;
          v32 = 0;
          if (CFDataGetLength(ValueAtIndex) != 20)
          {
            MovieInformationReportParsingFailureMessage(0, v27, "Invalid tscl sample group description size", 2);
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_121();
            v14 = FigSignalErrorAtGM();
            Mutable = 0;
            goto LABEL_22;
          }

          BytePtr = CFDataGetBytePtr(ValueAtIndex);
          v20 = *(BytePtr + 4);
          v31 = *BytePtr;
          v32 = v20;
          Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!Mutable || (v22 = CFDataCreate(a1, &v31 + 2, 4)) == 0)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_121();
            v14 = FigSignalErrorAtGM();
            goto LABEL_22;
          }

          v23 = v22;
          v24 = CFDataCreate(a1, &v31 + 6, 6);
          if (!v24)
          {
            break;
          }

          v25 = v24;
          FigCFDictionarySetInt();
          FigCFDictionarySetInt();
          FigCFDictionarySetInt();
          FigCFDictionarySetInt();
          CFDictionarySetValue(Mutable, key, v23);
          CFDictionarySetValue(Mutable, v17, v25);
          FigCFDictionarySetInt();
          if (!v16)
          {
            v16 = CFArrayCreateMutable(a1, v33, MEMORY[0x1E695E9C0]);
            if (!v16)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_121();
              v14 = FigSignalErrorAtGM();
              CFRelease(v23);
              CFRelease(v25);
LABEL_25:
              CFRelease(Mutable);
              goto LABEL_16;
            }
          }

          CFArrayAppendValue(v16, Mutable);
          CFRelease(Mutable);
          CFRelease(v23);
          CFRelease(v25);
          if (++v15 >= v33)
          {
            goto LABEL_15;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_121();
        v14 = FigSignalErrorAtGM();
        CFRelease(v23);
LABEL_22:
        if (v16)
        {
          CFRelease(v16);
        }

        if (Mutable)
        {
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_16:
  if (v34)
  {
    CFRelease(v34);
  }

  return v14;
}

uint64_t MovieTrackCopySampleGroupDescriptionDictionary(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_79_9(a1, a2, a3);
  if (!FigCFDictionaryGetCount())
  {
    return 0;
  }

  Count = CFDictionaryGetCount(*(v4 + 80));
  Mutable = CFDictionaryCreateMutable(v5, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v8 = Mutable;
    CFDictionaryApplyFunction(*(v4 + 80), SampleGroupDescCollectingApplierFunction, Mutable);
    *v3 = v8;
    return 0;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();

  return FigSignalErrorAtGM();
}

void MovieTrackAppendSampleGroupDescriptions(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFAllocatorRef allocator, int a11, int a12, CFTypeRef cf, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_296_0();
  a24 = v25;
  a25 = v26;
  v28 = v27;
  v30 = v29;
  v31 = CFGetAllocator(v29);
  cf = 0;
  Count = CFDictionaryGetCount(v28);
  if (!Count)
  {
    goto LABEL_26;
  }

  v33 = Count;
  OUTLINED_FUNCTION_93_4();
  v35 = v34;
  if (!v34)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM();
    v37 = 0;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_93_4();
  v37 = v36;
  if (!v36)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM();
    goto LABEL_20;
  }

  CFDictionaryGetKeysAndValues(v28, v35, v36);
  if (v33 < 1)
  {
    goto LABEL_20;
  }

  allocatora = v31;
  v38 = 0;
  while (1)
  {
    v39 = v37[v38];
    v40 = v39 ? CFArrayGetCount(v37[v38]) : 0;
    if (FigCFStringGetOSTypeValue() && v40)
    {
      break;
    }

LABEL_18:
    if (++v38 == v33)
    {
      goto LABEL_19;
    }
  }

  if (MovieTrackAddAndRetainSampleGroupDescriptionArray(v30, 0, &cf))
  {
    goto LABEL_19;
  }

  if (v40 < 1)
  {
LABEL_16:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_18;
  }

  v41 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v39, v41);
    BytePtr = CFDataGetBytePtr(ValueAtIndex);
    Length = CFDataGetLength(ValueAtIndex);
    if (MovieSampleGroupDescriptionArrayAppendDescriptionUniquely(cf, Length, BytePtr, 0))
    {
      break;
    }

    if (v40 == ++v41)
    {
      goto LABEL_16;
    }
  }

LABEL_19:
  v31 = allocatora;
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFAllocatorDeallocate(v31, v37);
  }

  if (v35)
  {
    CFAllocatorDeallocate(v31, v35);
  }

LABEL_26:
  OUTLINED_FUNCTION_207_0();
}

uint64_t MovieTrackAppendTemporalLevelCombinations(const void *a1, const __CFArray *a2)
{
  v5 = CFGetAllocator(a1);
  keys[0] = @"tscl";
  if (!a2)
  {
    return 0;
  }

  v6 = v5;
  Count = CFArrayGetCount(a2);
  if (!Count)
  {
    return 0;
  }

  v8 = Count;
  Mutable = CFArrayCreateMutable(v6, Count, MEMORY[0x1E695E9C0]);
  cf = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
LABEL_26:
    v28 = FigSignalErrorAtGM();
    goto LABEL_15;
  }

  *v31 = a1;
  if (v8 >= 1)
  {
    v10 = Mutable;
    v11 = 0;
    v12 = *MEMORY[0x1E695E480];
    v13 = MEMORY[0x1E695E9D8];
    v14 = MEMORY[0x1E695E9E8];
    while (1)
    {
      values = CFArrayGetValueAtIndex(a2, v11);
      v15 = CFDictionaryCreate(v12, MEMORY[0x1E6960438], &values, 1, v13, v14);
      *bytes = 0;
      v34 = 0;
      LODWORD(v35) = 0;
      HIBYTE(v32) = 0;
      VideoTemporalLayerEntryFromSampleAttachment = FigMovieGetVideoTemporalLayerEntryFromSampleAttachment(v15, bytes, &v32 + 7);
      if (VideoTemporalLayerEntryFromSampleAttachment)
      {
        break;
      }

      if (HIBYTE(v32))
      {
        v17 = CFDataCreate(v6, bytes, 20);
        if (!v17)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_2();
          VideoTemporalLayerEntryFromSampleAttachment = FigSignalErrorAtGM();
          break;
        }

        v18 = v17;
        CFArrayAppendValue(v10, v17);
        CFRelease(v18);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if (v8 == ++v11)
      {
        goto LABEL_13;
      }
    }

    v28 = VideoTemporalLayerEntryFromSampleAttachment;
    goto LABEL_16;
  }

LABEL_13:
  v19 = CFDictionaryCreate(v6, keys, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v19)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    goto LABEL_26;
  }

  v26 = v19;
  MovieTrackAppendSampleGroupDescriptions(v31[0], v19, v20, v21, v22, v23, v24, v25, v30, allocator, v31[0], v31[1], v32, *bytes, v34, v35, values, cf, keys[0], keys[1], keys[2], keys[3], keys[4], keys[5], keys[6]);
  v28 = v27;
  CFRelease(v26);
LABEL_15:
  v15 = 0;
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v28;
}

uint64_t MovieSampleAccessorCopy(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 288);
  v6 = *(v4 + 728);
  if (v6 && *(v6 + 56))
  {
    v5 += *(v6 + 8);
  }

  if (!v5)
  {
    v7 = 0;
    v23 = 4294954454;
    goto LABEL_28;
  }

  v7 = malloc_type_calloc(1uLL, 0xD8uLL, 0x106004069928606uLL);
  if (!v7)
  {
LABEL_30:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v11 = FigSignalErrorAtGM();
LABEL_31:
    v23 = v11;
    goto LABEL_28;
  }

  v8 = *a1;
  if (*a1)
  {
    v8 = CFRetain(v8);
  }

  *v7 = v8;
  v9 = *(a1 + 8);
  if (v9)
  {
    v9 = CFRetain(v9);
  }

  v7[1] = v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = MovieSampleGroupAccessorCopy(v10, v7 + 2);
    if (v11)
    {
      goto LABEL_31;
    }
  }

  v12 = *(a1 + 24);
  if (v12)
  {
    v11 = MovieSampleGroupAccessorCopy(v12, v7 + 3);
    if (v11)
    {
      goto LABEL_31;
    }
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v11 = MovieSampleGroupAccessorCopy(v13, v7 + 4);
    if (v11)
    {
      goto LABEL_31;
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    v11 = MovieSampleGroupAccessorCopy(v14, v7 + 5);
    if (v11)
    {
      goto LABEL_31;
    }
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v11 = MovieSampleGroupAccessorCopy(v15, v7 + 6);
    if (v11)
    {
      goto LABEL_31;
    }
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    v11 = MovieSampleGroupAccessorCopy(v16, v7 + 7);
    if (v11)
    {
      goto LABEL_31;
    }
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    v11 = MovieSampleGroupAccessorCopy(v17, v7 + 8);
    if (v11)
    {
      goto LABEL_31;
    }
  }

  v18 = *(a1 + 72);
  if (v18)
  {
    v19 = *MEMORY[0x1E695E480];
    Count = CFDictionaryGetCount(v18);
    Mutable = CFDictionaryCreateMutable(v19, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v22 = Mutable;
      CFDictionaryApplyFunction(*(a1 + 72), CopyMovieSampleGroupAccessorIntoNewDictionary, Mutable);
      v7[9] = v22;
      goto LABEL_27;
    }

    goto LABEL_30;
  }

LABEL_27:
  memcpy(v7 + 10, (a1 + 80), 0x88uLL);
  v23 = 0;
  *a2 = v7;
  v7 = 0;
LABEL_28:
  MovieSampleAccessorDispose(v7);
  return v23;
}

void MovieSampleAccessorGetSampleLocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_845();
  a20 = v23;
  a21 = v25;
  if (!*(*(v26 + 8) + 719))
  {
    v27 = v24;
    OUTLINED_FUNCTION_216_0();
    v30 = v28;
    v31 = *(v29 + 728);
    if (v31)
    {
      if (*(v31 + 56))
      {
        v32 = *(v28 + 80);
        if (v32 > *(v29 + 288))
        {
          v33 = *(v28 + 208);
          v34 = *(v33 + 16);
          v35 = v32 - v34;
          if (v32 < v34 || v32 >= *(v33 + 40) + v34)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1_4();
            FigSignalErrorAtGM();
            if (!v27)
            {
              goto LABEL_51;
            }
          }

          else
          {
            if (v22)
            {
              v36 = *(v28 + 200);
              v37 = *(v33 + 32) + *(v36 + 48);
              v38 = *(v33 + 52);
              if ((v38 & 2) != 0)
              {
                if (v35 < 1)
                {
                  v39 = 0;
                }

                else
                {
                  v39 = 0;
                  v51 = kPerSampleInfo_SizeInInt32s[v38];
                  v52 = (v33 + 4 * kPerSampleInfo_SizeIndex[v38] + 56);
                  v53 = 4 * v51;
                  v54 = v32 - v34;
                  do
                  {
                    v39 += bswap32(*v52);
                    v52 = (v52 + v53);
                    --v54;
                  }

                  while (v54);
                }
              }

              else
              {
                v39 = (*(v36 + 64) * v35);
              }

              *v22 = v37 + v39;
            }

            if (v21)
            {
              v55 = *(v33 + 52);
              if ((v55 & 2) != 0)
              {
                v56 = bswap32(*(v33 + 4 * kPerSampleInfo_SizeInInt32s[v55] * v35 + 4 * kPerSampleInfo_SizeIndex[v55] + 56));
              }

              else
              {
                v56 = *(*(v28 + 200) + 64);
              }

              *v21 = v56;
            }

            if (!v27)
            {
              goto LABEL_51;
            }
          }

          *v27 = *(*(v30 + 200) + 56);
LABEL_51:
          OUTLINED_FUNCTION_843();
          return;
        }
      }
    }

    a11 = 0;
    if (locateChunk(v28, &a11, v27))
    {
      goto LABEL_51;
    }

    if (!(v22 | v21))
    {
      goto LABEL_51;
    }

    v40 = *(v30 + 8);
    LODWORD(v41) = *(v40 + 248);
    v42 = a11;
    if (CheckChunkNumber(v40, a11))
    {
      goto LABEL_51;
    }

    v43 = (*(*(v30 + 8) + 616))();
    if (!v41)
    {
      LODWORD(v41) = *(*(v30 + 8) + 292);
    }

    v41 = v41;
    if (*(v30 + 160) == v42)
    {
      v44 = *(v30 + 164);
      v45 = *(v30 + 80);
      if (v44 && v44 == v45 - 1)
      {
        if (!v41)
        {
          v41 = (*(*(v30 + 8) + 592))();
          v45 = *(v30 + 80);
        }

        v43 = *(v30 + 176) + *(v30 + 168);
        v46 = v41;
LABEL_28:
        *(v30 + 160) = v42;
        *(v30 + 164) = v45;
        *(v30 + 168) = v43;
        *(v30 + 176) = v46;
        if (v22)
        {
          *v22 = v43;
        }

        if (v21)
        {
          v50 = *(*(v30 + 8) + 248);
          if (!v50)
          {
            v50 = v46;
          }

          *v21 = v50;
        }

        goto LABEL_51;
      }
    }

    else
    {
      v45 = *(v30 + 80);
    }

    v47 = (v45 - *(v30 + 140)) % *(v30 + 148);
    v48 = v45 - v47;
    if (v45 >= v47)
    {
      v49 = 0;
      do
      {
        v46 = v41;
        if (!v41)
        {
          v46 = (*(*(v30 + 8) + 592))();
          v45 = *(v30 + 80);
        }

        v43 += v49;
        ++v48;
        v49 = v46;
      }

      while (v48 <= v45);
    }

    else
    {
      v46 = 0;
    }

    goto LABEL_28;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_843();

  FigSignalErrorAtGM();
}

void MovieSampleAccessorGetChunkDetails(uint64_t a1, _DWORD *a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6, BOOL *a7, BOOL *a8, _BYTE *a9)
{
  if (a9)
  {
    *a9 = 1;
  }

  v17 = *(a1 + 8);
  v18 = *(v17 + 728);
  if (v18 && *(v18 + 56) && (v19 = *(a1 + 80), v19 > *(v17 + 288)))
  {
    if (a3)
    {
      *a3 = *(*(a1 + 208) + 32) + *(*(a1 + 200) + 48);
    }

    if (a4)
    {
      *a4 = TotalRunDataSize(*(a1 + 200), *(a1 + 208));
    }

    if (a5)
    {
      *a5 = *(*(a1 + 208) + 40);
    }

    if (a6)
    {
      *a6 = v19 - *(*(a1 + 208) + 16);
    }

    if (a7)
    {
      *a7 = (*(*(a1 + 208) + 52) & 2) == 0;
    }

    if (a8)
    {
      *a8 = (*(*(a1 + 208) + 52) & 1) == 0;
    }

    if (a2)
    {
      v20 = *(*(a1 + 200) + 56);
LABEL_40:
      *a2 = v20;
    }
  }

  else
  {
    v33 = 0;
    if (!locateChunk(a1, &v33 + 1, &v33) && !CheckChunkNumber(*(a1 + 8), SHIDWORD(v33)))
    {
      v21 = (*(*(a1 + 8) + 616))();
      v22 = v21;
      if (a3)
      {
        *a3 = v21;
      }

      if (a4)
      {
        memcpy(__dst, a1, sizeof(__dst));
        LODWORD(__dst[10]) += HIDWORD(__dst[18]) + ~((LODWORD(__dst[10]) - HIDWORD(__dst[17])) % HIDWORD(__dst[18]));
        MovieSampleAccessorGetSampleLocation(__dst, &v31, &v30, 0, v25, v26, v27, v28, 0, 0, 0, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9]);
        if (v29)
        {
          return;
        }

        *a4 = v31 - v22 + v30;
      }

      v23 = *(a1 + 148);
      if (a5)
      {
        *a5 = v23;
      }

      if (a6)
      {
        *a6 = (*(a1 + 80) - *(a1 + 140)) % v23;
      }

      if (a7)
      {
        v24 = v23 == 1 || *(*(a1 + 8) + 292) != 0;
        *a7 = v24;
      }

      if (a8)
      {
        if (v23 != 1)
        {
          LOBYTE(v23) = *(*(a1 + 8) + 408) == 1;
        }

        *a8 = v23;
      }

      if (a2)
      {
        v20 = v33;
        goto LABEL_40;
      }
    }
  }
}

uint64_t MovieSampleAccessorGetFormatDescription(uint64_t a1, const void **a2)
{
  v8 = 0;
  v4 = *(a1 + 8);
  v5 = *(v4 + 728);
  if (v5 && *(v5 + 56) && *(a1 + 80) > *(v4 + 288))
  {
    v7 = *(*(a1 + 200) + 56);
    v8 = v7;
  }

  else
  {
    result = locateChunk(a1, &v9, &v8);
    if (result)
    {
      return result;
    }

    v4 = *(a1 + 8);
    v7 = v8;
  }

  return GetFormatDescriptionForSampleDescriptionID(v4, v7, a2);
}

uint64_t GetFormatDescriptionForSampleDescriptionID(uint64_t a1, int a2, const void **a3)
{
  idx = -1;
  SampleDescriptionInformationAtIndex = MovieTrackGetSampleDescriptionInformationAtIndex(a1, a2 - 1, &idx, 0);
  if (!SampleDescriptionInformationAtIndex)
  {
    *a3 = CFArrayGetValueAtIndex(*(a1 + 48), idx);
  }

  return SampleDescriptionInformationAtIndex;
}

uint64_t MovieSampleAccessorGetRollValue()
{
  OUTLINED_FUNCTION_8_50();
  if (v3 && *(v3 + 56) && (OUTLINED_FUNCTION_29_21(), !v5 & v4))
  {
    v7 = *(v1 + 200);
    MovieSampleGroupTypeSpecMakeBasic(1919904876);
    OUTLINED_FUNCTION_42_17();
    FragmentCursorEnsureAccessorAndCopySampleGroupDescription();
    OUTLINED_FUNCTION_51_16();
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      MovieSampleGroupTypeSpecMakeBasic(1919904876);
      v8 = OUTLINED_FUNCTION_50_11();
      if (v8)
      {
        v7 = OUTLINED_FUNCTION_69_7(v8, v9, v10, v11);
      }

      else
      {
        v7 = 0;
      }

      if (OUTLINED_FUNCTION_105_4())
      {
        goto LABEL_20;
      }

      v6 = *(v1 + 16);
    }

    if (OUTLINED_FUNCTION_104_3(v6, v2))
    {
      goto LABEL_20;
    }

    v12 = theData;
    if (!theData)
    {
      goto LABEL_20;
    }
  }

  if (CFDataGetLength(v12) == 2)
  {
    BytePtr = CFDataGetBytePtr(theData);
    OUTLINED_FUNCTION_65_11(BytePtr);
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_20:
  v0 = 0;
  if (v7)
  {
LABEL_15:
    CFRelease(v7);
  }

LABEL_16:
  if (theData)
  {
    CFRelease(theData);
  }

  return v0;
}

uint64_t MovieSampleAccessorGetIndependentFramePrerollPacketCount()
{
  OUTLINED_FUNCTION_8_50();
  if (v3 && *(v3 + 56) && (OUTLINED_FUNCTION_29_21(), !v5 & v4))
  {
    v7 = *(v1 + 200);
    OUTLINED_FUNCTION_103_3();
    OUTLINED_FUNCTION_42_17();
    FragmentCursorEnsureAccessorAndCopySampleGroupDescription();
    OUTLINED_FUNCTION_51_16();
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v6 = *(v1 + 24);
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_103_3();
      v8 = OUTLINED_FUNCTION_50_11();
      if (v8)
      {
        v7 = OUTLINED_FUNCTION_69_7(v8, v9, v10, v11);
      }

      else
      {
        v7 = 0;
      }

      if (OUTLINED_FUNCTION_105_4())
      {
        goto LABEL_20;
      }

      v6 = *(v1 + 24);
    }

    if (OUTLINED_FUNCTION_104_3(v6, v2))
    {
      goto LABEL_20;
    }

    v12 = theData;
    if (!theData)
    {
      goto LABEL_20;
    }
  }

  if (CFDataGetLength(v12) == 2)
  {
    BytePtr = CFDataGetBytePtr(theData);
    OUTLINED_FUNCTION_65_11(BytePtr);
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_20:
  v0 = 0;
  if (v7)
  {
LABEL_15:
    CFRelease(v7);
  }

LABEL_16:
  if (theData)
  {
    CFRelease(theData);
  }

  return v0;
}

BOOL MovieSampleAccessorCopySeamIdentifier()
{
  OUTLINED_FUNCTION_8_50();
  if (v3 && *(v3 + 56) && (OUTLINED_FUNCTION_29_21(), !v5 & v4))
  {
    v7 = *(v1 + 200);
    OUTLINED_FUNCTION_102_3();
    OUTLINED_FUNCTION_42_17();
    FragmentCursorEnsureAccessorAndCopySampleGroupDescription();
    OUTLINED_FUNCTION_51_16();
    if (!v12)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v6 = *(v1 + 32);
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_102_3();
      v8 = OUTLINED_FUNCTION_50_11();
      if (v8)
      {
        v7 = OUTLINED_FUNCTION_69_7(v8, v9, v10, v11);
      }

      else
      {
        v7 = 0;
      }

      if (OUTLINED_FUNCTION_105_4())
      {
        goto LABEL_22;
      }

      v6 = *(v1 + 32);
    }

    if (OUTLINED_FUNCTION_104_3(v6, v2))
    {
      goto LABEL_22;
    }

    v12 = theData;
    if (!theData)
    {
      goto LABEL_22;
    }
  }

  if (CFDataGetLength(v12) == 16)
  {
    v13 = CFGetAllocator(theData);
    v20 = *CFDataGetBytePtr(theData);
    v14 = CFUUIDCreateFromUUIDBytes(v13, v20);
    v15 = CFGetAllocator(theData);
    v16 = CFUUIDCreateString(v15, v14);
    v17 = v16 != 0;
    *v0 = v16;
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_22:
  v17 = 0;
  v14 = 0;
  if (v7)
  {
LABEL_15:
    CFRelease(v7);
  }

LABEL_16:
  if (theData)
  {
    CFRelease(theData);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v17;
}

uint64_t MovieSampleAccessorGetSyncValues()
{
  OUTLINED_FUNCTION_8_50();
  if (v3 && *(v3 + 56) && (OUTLINED_FUNCTION_29_21(), !v5 & v4))
  {
    v7 = *(v1 + 200);
    OUTLINED_FUNCTION_101_3();
    OUTLINED_FUNCTION_42_17();
    FragmentCursorEnsureAccessorAndCopySampleGroupDescription();
    OUTLINED_FUNCTION_51_16();
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v6 = *(v1 + 40);
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_101_3();
      v8 = OUTLINED_FUNCTION_50_11();
      if (v8)
      {
        v7 = OUTLINED_FUNCTION_69_7(v8, v9, v10, v11);
      }

      else
      {
        v7 = 0;
      }

      if (OUTLINED_FUNCTION_105_4())
      {
        goto LABEL_20;
      }

      v6 = *(v1 + 40);
    }

    if (OUTLINED_FUNCTION_104_3(v6, v2))
    {
      goto LABEL_20;
    }

    v12 = theData;
    if (!theData)
    {
      goto LABEL_20;
    }
  }

  if (CFDataGetLength(v12) == 1)
  {
    *v0 = *CFDataGetBytePtr(theData) & 0x3F;
    v13 = 1;
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_20:
  v13 = 0;
  if (v7)
  {
LABEL_15:
    CFRelease(v7);
  }

LABEL_16:
  if (theData)
  {
    CFRelease(theData);
  }

  return v13;
}

void MovieSampleAccessorGetTsclValues(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFDataRef theData, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _BYTE *a25, _BYTE *a26, _BYTE *a27, _BYTE *a28)
{
  OUTLINED_FUNCTION_296_0();
  a23 = v28;
  a24 = v30;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v29;
  theData = 0;
  v46 = *(v29 + 8);
  v47 = *(v46 + 728);
  if (v47 && *(v47 + 56) && *(v29 + 80) > *(v46 + 288))
  {
    MovieSampleGroupTypeSpecMakeBasic(1953719148);
    OUTLINED_FUNCTION_42_17();
    v55 = FragmentCursorEnsureAccessorAndCopySampleGroupDescription();
    v50 = 0;
    theData = v55;
    if (!v55)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v49 = (v29 + 48);
    v48 = *(v29 + 48);
    if (v48)
    {
      v50 = 0;
    }

    else
    {
      Basic = MovieSampleGroupTypeSpecMakeBasic(1953719148);
      v54 = *(v46 + 72);
      if (v54)
      {
        v50 = OUTLINED_FUNCTION_69_7(v54, v51, v52, Basic);
      }

      else
      {
        v50 = 0;
      }

      if (MovieSampleGroupAccessorCreate(v50, (v45 + 48)))
      {
        goto LABEL_20;
      }

      v48 = *v49;
    }

    if (MovieSampleGroupAccessorCopyDescriptionForSample(v48, *(v45 + 80), &theData))
    {
      goto LABEL_20;
    }

    v55 = theData;
    if (!theData)
    {
      goto LABEL_20;
    }
  }

  if (CFDataGetLength(v55) == 20)
  {
    v61 = a28;
    v60 = a27;
    v56 = a25;
    v57 = a26;
    BytePtr = CFDataGetBytePtr(theData);
    *v44 = *BytePtr;
    *v42 = BytePtr[1] >> 6;
    *v40 = (BytePtr[1] & 0x20) != 0;
    *v38 = BytePtr[1] & 0x1F;
    *v36 = *(BytePtr + 2);
    v59 = *(BytePtr + 6);
    *(v34 + 4) = *(BytePtr + 5);
    *v34 = v59;
    *v32 = BytePtr[12];
    *v56 = BytePtr[13];
    *v57 = BytePtr[15];
    *v60 = BytePtr[17];
    *v61 = BytePtr[18];
    if (!v50)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_20:
  if (v50)
  {
LABEL_15:
    CFRelease(v50);
  }

LABEL_16:
  if (theData)
  {
    CFRelease(theData);
  }

  OUTLINED_FUNCTION_207_0();
}