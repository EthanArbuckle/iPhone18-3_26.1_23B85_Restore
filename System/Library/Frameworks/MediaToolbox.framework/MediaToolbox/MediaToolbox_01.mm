uint64_t itemasync_GetDuration(const void *a1, uint64_t a2)
{
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (v5 = MEMORY[0x1E6960C70], *a2 = *MEMORY[0x1E6960C70], *(a2 + 16) = *(v5 + 16), !*DerivedStorage))
  {
    v7 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v7)
    {
      v8 = v7;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_GetDuration_cold_1(&v13);
        v10 = 0;
        v11 = v13;
      }

      else
      {
        v9 = playerasync_createCommand(v8, 29, a1, &v12);
        v10 = v12;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          *(v12 + 32) = a2;
          playerasync_runSynchronousCommand(v8, v10);
          v11 = v10[7];
        }
      }

      fpa_releaseCommand(v10);
      CFRelease(v8);
    }

    else
    {
      itemasync_GetDuration_cold_2();
      return v13;
    }

    return v11;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t itemfig_GetDuration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dictionaryRepresentation = 0;
  if (*DerivedStorage || !a2)
  {

    return FigSignalErrorAtGM();
  }

  v6 = DerivedStorage;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    v8 = CMBaseObjectGetDerivedStorage();
    v9 = MEMORY[0x1E6960C70];
    *(a2 + 16) = *(MEMORY[0x1E6960C70] + 16);
    *a2 = *v9;
    if ((*(v6 + 62) & 0x1D) == 1 && (time1 = *(v6 + 236), v23 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v10 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v10, (CMTimeCompare(&time1, &time2) & 0x80000000) == 0) && (*(v6 + 68) & 0x1D) == 1 && (time1 = *(v6 + 260), *&time2.value = v23, time2.epoch = v10, CMTimeCompare(&time1, &time2) >= 1))
    {
      v11 = 0;
      v12 = MEMORY[0x1E6960C88];
      *a2 = *MEMORY[0x1E6960C88];
      epoch = *(v12 + 16);
    }

    else
    {
      v14 = *(v8 + 78);
      v15 = *MEMORY[0x1E695E480];
      if (v14 || (FigBaseObject = FigPlaybackItemGetFigBaseObject(a1), (v22 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v22(FigBaseObject, @"EstimatedDuration", v15, &dictionaryRepresentation) || !dictionaryRepresentation)
      {
        v16 = CMBaseObjectGetDerivedStorage();
        time2.value = 0;
        CMBaseObject = FigAssetGetCMBaseObject(*(v16 + 1256));
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v18)
        {
          v11 = v18(CMBaseObject, @"Duration", v15, &time2);
          value = time2.value;
          if (!v11)
          {
            CMTimeMakeFromDictionary(&time1, time2.value);
            *(v16 + 1216) = time1;
            value = time2.value;
          }

          if (value)
          {
            CFRelease(value);
          }

          if (!v11)
          {
            v20 = *(v6 + 76);
            *(a2 + 16) = *(v6 + 154);
            *a2 = v20;
          }
        }

        else
        {
          v11 = 4294954514;
        }

        goto LABEL_27;
      }

      CMTimeMakeFromDictionary(&time1, dictionaryRepresentation);
      v11 = 0;
      *a2 = *&time1.value;
      epoch = time1.epoch;
    }

    *(a2 + 16) = epoch;
  }

  else
  {
    v11 = 0;
  }

LABEL_27:
  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v11;
}

uint64_t playerasync_AddToPlayQueue(void *a1, const void *a2, const void *a3)
{
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = CMBaseObjectGetDerivedStorage();
LABEL_6:
  if (*DerivedStorage || !a2 || *v7)
  {
LABEL_7:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  if (!v8)
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v10 == a1)
    {
      v11 = 0;
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (*v8)
  {
    goto LABEL_7;
  }

  v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v10 != a1)
  {
LABEL_31:
    fig_log_get_emitter();
    v16 = FigSignalErrorAtGM();
    v15 = 0;
    v11 = 0;
    goto LABEL_26;
  }

  v11 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v11 == a1)
  {
LABEL_21:
    v12 = playerasync_createCommand(a1, 6, a2, &v17);
    if (v12)
    {
      v16 = v12;
      v15 = v17;
    }

    else
    {
      if (a3)
      {
        v13 = CFRetain(a3);
      }

      else
      {
        v13 = 0;
      }

      v14 = v17;
      v17[4] = v13;
      playerasync_runAsynchronousCommand(a1, v14);
      v15 = 0;
      v16 = 0;
    }

    goto LABEL_26;
  }

  playerasync_AddToPlayQueue_cold_1(&v18);
  v15 = 0;
  v16 = v18;
LABEL_26:
  fpa_releaseCommand(v15);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v16;
}

uint64_t playercentral_AddToPlayQueue(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v7 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v7 = 0;
  }

  if (*(DerivedStorage + 8) || (v9 = *(DerivedStorage + 16)) == 0 || *(v6 + 16))
  {
LABEL_5:

    return FigSignalErrorAtGM();
  }

  if (v7)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    v10 = *(v7 + 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v6 + 8);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v12 && !v12(v9, v11, v10))
  {
    FigSimpleMutexLock();
    CFSetAddValue(*(DerivedStorage + 80), a2);
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t playerfig_AddToPlayQueue(const void *a1, const void *a2, const void *a3)
{
  v114 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10)
  {
    v92 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a1)
    {
      v9 = (CMBaseObjectGetDerivedStorage() + 972);
    }

    else
    {
      v9 = "";
    }

    strncpy(__dst, v9, 8uLL);
    if (a2)
    {
      v10 = (CMBaseObjectGetDerivedStorage() + 2096);
    }

    else
    {
      v10 = "";
    }

    strncpy(__dst, v10, 8uLL);
    if (a3)
    {
      v11 = (CMBaseObjectGetDerivedStorage() + 2096);
    }

    else
    {
      v11 = "";
    }

    strncpy(__dst, v11, 8uLL);
    kdebug_trace();
  }

  if (*DerivedStorage)
  {
    return FigSignalErrorAtGM();
  }

  if (!a2)
  {
    return FigSignalErrorAtGM();
  }

  v14 = CMBaseObjectGetDerivedStorage();
  if (*v14)
  {
    return FigSignalErrorAtGM();
  }

  v15 = v14;
  if (*(v14 + 8) != a1)
  {
    return FigSignalErrorAtGM();
  }

  v16 = a2;
  if (a3)
  {
    v17 = CMBaseObjectGetDerivedStorage();
    if (*v17)
    {
      return FigSignalErrorAtGM();
    }

    v18 = v17;
    if (*(v17 + 8) != a1)
    {
      return FigSignalErrorAtGM();
    }
  }

  else
  {
    v18 = 0;
  }

  if (*(v15 + 1280) || *(v15 + 1282) || (*(v15 + 1282) = 1, itemfig_retrieveAssetBasicsIfReady(), !v24))
  {
    FigSimpleMutexLock();
    if (*(v15 + 1) || a3 && !*(v18 + 1))
    {
      v12 = FigSignalErrorAtGM();
      FigSimpleMutexUnlock();
      goto LABEL_35;
    }

    v22 = *(v15 + 1560);
    if (v22)
    {
      CFArrayRemoveAllValues(v22);
    }

    *(v15 + 2217) = 0;
    v23 = v16;
    if (*(DerivedStorage + 853) && dword_1EAF16A10)
    {
      v92 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v87 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v23 = v16;
    }

    *(DerivedStorage + 853) = 0;
    Count = CFArrayGetCount(*(DerivedStorage + 528));
    v26 = Count;
    if (a3)
    {
      v128.location = 0;
      v128.length = Count;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v128, a3);
      if (FirstIndexOfValue == -1)
      {
        v92 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        a3 = 0;
        v27 = v26;
        v23 = v16;
      }

      else
      {
        v27 = FirstIndexOfValue + 1;
        if (FirstIndexOfValue + 1 < v26)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), v27);
          playerfig_maybeUndoQueueingForItem(a1, ValueAtIndex);
        }
      }
    }

    else
    {
      v27 = Count;
    }

    v31 = *(DerivedStorage + 536);
    v88 = v27;
    if (v31)
    {
      v129.location = 0;
      v129.length = v26;
      v32 = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v129, v31);
      if (v32 == -1)
      {
        v92 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        v84 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v83 = 0;
        *(DerivedStorage + 536) = 0;
        v23 = v16;
        goto LABEL_76;
      }

      if (v27 > v32)
      {
        if (v27 == v32 + 1)
        {
          v83 = CMBaseObjectGetDerivedStorage();
          if (*(v83 + 496))
          {
            if (dword_1EAF16A10)
            {
              v92 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v84 = 0x100000000;
              goto LABEL_76;
            }

            LODWORD(v84) = 0;
          }

          else
          {
            LODWORD(v84) = 1;
          }

          HIDWORD(v84) = 1;
        }

        else
        {
          v83 = 0;
          v84 = 0x100000001;
        }

LABEL_76:
        CFArrayInsertValueAtIndex(*(DerivedStorage + 528), v27, v23);
        *(v15 + 1) = 1;
        itemfig_reportingAgentReportEnqueueTime();
        v36 = *(v15 + 1432);
        if (v36)
        {
          CFRelease(v36);
          *(v15 + 1432) = 0;
        }

        if (*(v15 + 128))
        {
          CMByteStreamGetCMBaseObject();
          FigCRABSGetClassID();
          if (CMBaseObjectIsMemberOfClass())
          {
            CMBaseObject = CMByteStreamGetCMBaseObject();
            CMBaseObjectCopyProperty(CMBaseObject, @"CRABS_InteractivePlaybackAssertion", 0, v15 + 1432);
          }
        }

        *(v15 + 1328) = 0;
        if (v27)
        {
          *(v15 + 1600) = 0;
          *(v15 + 1744) = 0;
          v38 = v23;
        }

        else
        {
          *(v15 + 1600) = CFAbsoluteTimeGetCurrent();
          *(v15 + 1744) = 1;
          v38 = v23;
          itemfig_makePlaybackPrerequisitePropertiesReady(v23, &type, v39, v40, v41, v42, v43, v44, v77, v79, v81[0], v81[1], SBYTE2(v81[1]), HIBYTE(v81[1]), v83, SWORD2(v83), SBYTE6(v83), SHIBYTE(v83), v84, SHIDWORD(v84), *v85, *&v85[4], 0, v89, *cf, *&cf[8], *&cf[12], *&cf[16], values, *v95, *&v95[8], *&v95[16], v96, v97, v98, *__dst, *&__dst[8], v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
          if (type)
          {
            *(v15 + 1328) = 1;
            if (*(DerivedStorage + 60) == 2)
            {
              itemfig_becameBothCurrentAndReadyForInspection(v23, 0, v45, v46, v47, v48, v49, v50, v78, v80, v82[0], v82[1], v83, SBYTE2(v83), BYTE3(v83), SHIDWORD(v83), v84, SHIDWORD(v84), *v86, *&v86[4], v88, v90, *cf, *&cf[8], *&cf[16], values, *v95, *&v95[8], *&v95[16], v96, v97, v98, __dst[0], *&__dst[8], v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, vars0, vars8);
            }

            else if (dword_1EAF16A10)
            {
              v92 = 0;
              v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v55 = v92;
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                v56 = v55;
              }

              else
              {
                v56 = v55 & 0xFFFFFFFE;
              }

              if (v56)
              {
                if (a1)
                {
                  v58 = (CMBaseObjectGetDerivedStorage() + 972);
                }

                else
                {
                  v58 = "";
                }

                v60 = CMBaseObjectGetDerivedStorage();
                *cf = 136316162;
                *&cf[4] = "playerfig_AddToPlayQueue";
                *&cf[12] = 2048;
                *&cf[14] = a1;
                *&cf[22] = 2082;
                values = v58;
                *v95 = 2048;
                *&v95[2] = v23;
                *&v95[10] = 2082;
                *&v95[12] = v60 + 2096;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v38 = v23;
              v8 = MEMORY[0x1E695FF58];
            }
          }

          else if (dword_1EAF16A10)
          {
            v92 = 0;
            v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v52 = v92;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v53 = v52;
            }

            else
            {
              v53 = v52 & 0xFFFFFFFE;
            }

            if (v53)
            {
              if (a1)
              {
                v57 = (CMBaseObjectGetDerivedStorage() + 972);
              }

              else
              {
                v57 = "";
              }

              v59 = CMBaseObjectGetDerivedStorage();
              *cf = 136316162;
              *&cf[4] = "playerfig_AddToPlayQueue";
              *&cf[12] = 2048;
              *&cf[14] = a1;
              *&cf[22] = 2082;
              values = v57;
              *v95 = 2048;
              *&v95[2] = v23;
              *&v95[10] = 2082;
              *&v95[12] = v59 + 2096;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v8 = MEMORY[0x1E695FF58];
            v38 = v23;
          }

          v27 = v88;
        }

        v61 = fp_copyPlayQueueDescription();
        if (dword_1EAF16A10)
        {
          v92 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v63 = v92;
          if (os_log_type_enabled(v62, type))
          {
            v64 = v63;
          }

          else
          {
            v64 = v63 & 0xFFFFFFFE;
          }

          if (v64)
          {
            if (a1)
            {
              v65 = (CMBaseObjectGetDerivedStorage() + 972);
            }

            else
            {
              v65 = "";
            }

            *cf = 136315906;
            *&cf[4] = "playerfig_AddToPlayQueue";
            *&cf[12] = 2048;
            *&cf[14] = a1;
            *&cf[22] = 2082;
            values = v65;
            *v95 = 2114;
            *&v95[2] = v61;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v27 = v88;
        }

        if (v61)
        {
          CFRelease(v61);
        }

        if ((v84 & 0x100000000) != 0)
        {
          v66 = *(DerivedStorage + 536);
          if (v66)
          {
            if ((v84 & 1) == 0)
            {
              *(v83 + 496) = 0;
              playerfig_prepareNextItemForTransition(a1, v66);
            }
          }

          else
          {
            *(DerivedStorage + 536) = v38;
            *(DerivedStorage + 544) = 0;
            v67 = playerfig_prepareWorkingItem(a1, 0, 0);
            if (v67)
            {
              v68 = v67;
              v92 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v70 = v92;
              if (os_log_type_enabled(v69, type))
              {
                v71 = v70;
              }

              else
              {
                v71 = v70 & 0xFFFFFFFE;
              }

              if (v71)
              {
                *cf = 136315394;
                *&cf[4] = "playerfig_AddToPlayQueue";
                *&cf[12] = 1024;
                *&cf[14] = v68;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v8 = MEMORY[0x1E695FF58];
              v27 = v88;
            }
          }

          playerfig_updateStartHostTimeEstimatesOfItemAtIndexAndFollowingItems(a1, v27);
          FigSimpleMutexUnlock();
        }

        else
        {
          FigSimpleMutexUnlock();
          *__dst = *MEMORY[0x1E6960C70];
          v100 = *(MEMORY[0x1E6960C70] + 16);
          *cf = *__dst;
          *&cf[16] = v100;
          playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
          if (v72)
          {
            v73 = v72;
            v92 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v75 = v92;
            if (os_log_type_enabled(v74, type))
            {
              v76 = v75;
            }

            else
            {
              v76 = v75 & 0xFFFFFFFE;
            }

            if (v76)
            {
              *cf = 136315394;
              *&cf[4] = "playerfig_AddToPlayQueue";
              *&cf[12] = 1024;
              *&cf[14] = v73;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v27 = v88;
          }
        }

        playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer();
        if (!v27)
        {
          playerfig_AddToPlayQueue_cold_1();
        }

        v12 = 0;
        goto LABEL_35;
      }

      if (!dword_1EAF16A10)
      {
        v83 = 0;
        v84 = 1;
        goto LABEL_76;
      }
    }

    else
    {
      if (v26)
      {
        v83 = 0;
        v84 = 0x100000001;
        goto LABEL_76;
      }

      if (!dword_1EAF16A10)
      {
        v83 = 0;
        v84 = 1;
        goto LABEL_76;
      }
    }

    v92 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    v84 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v83 = 0;
    v8 = MEMORY[0x1E695FF58];
    goto LABEL_76;
  }

  v12 = v24;
LABEL_35:
  if (*v8 == 1)
  {
    if (a1)
    {
      v19 = (CMBaseObjectGetDerivedStorage() + 972);
    }

    else
    {
      v19 = "";
    }

    strncpy(__dst, v19, 8uLL);
    v20 = CMBaseObjectGetDerivedStorage();
    strncpy(__dst, (v20 + 2096), 8uLL);
    if (a3)
    {
      v21 = (CMBaseObjectGetDerivedStorage() + 2096);
    }

    else
    {
      v21 = "";
    }

    strncpy(__dst, v21, 8uLL);
    kdebug_trace();
  }

  return v12;
}

uint64_t itemfig_copyFormatDescription(uint64_t a1, uint64_t *a2)
{
  theArray = 0;
  FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v5 = v4(FigBaseObject, @"TrackFormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      if (!theArray)
      {
        return 4294954513;
      }

      if (CFArrayGetCount(theArray))
      {
        CFArrayGetValueAtIndex(theArray, 0);
        v6 = 0;
        *a2 = FigFormatDescriptionRetain();
      }

      else
      {
        itemfig_copyFormatDescription_cold_1(&v9);
        v6 = v9;
      }
    }
  }

  else
  {
    v6 = 4294954514;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v6;
}

uint64_t RegisterFigMetadataReaderBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigMetadataValidateHandlerType(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x18)
  {
    return 4294954687;
  }

  else
  {
    return FigAtomStreamReadCurrentAtomData();
  }
}

uint64_t FigiTunesMetadataCopyValue(uint64_t a1, CFTypeRef cf1, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6, CFTypeRef *a7)
{
  v25 = 0;
  cf = 0;
  if (!a1)
  {
    FigiTunesMetadataCopyValue_cold_5(&v27);
LABEL_41:
    v21 = 0;
    v20 = v27;
    goto LABEL_18;
  }

  if (!a3)
  {
    FigiTunesMetadataCopyValue_cold_4(&v27);
    goto LABEL_41;
  }

  if (!cf1)
  {
    FigiTunesMetadataCopyValue_cold_3(&v27);
    goto LABEL_41;
  }

  if (!a6)
  {
    FigiTunesMetadataCopyValue_cold_2(&v27);
    goto LABEL_41;
  }

  if (!CFEqual(cf1, @"comn") && !CFEqual(cf1, @"itsk") && !CFEqual(cf1, @"itlk"))
  {
    FigiTunesMetadataCopyValue_cold_1(&v27);
    goto LABEL_41;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v14 || (v15 = v14(a1, cf1, a3), v15 < 1))
  {
    v21 = 0;
    v20 = 0;
    goto LABEL_18;
  }

  v16 = v15;
  v17 = 0;
  while (1)
  {
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v18)
    {
      v20 = -12782;
      goto LABEL_33;
    }

    v19 = v18(a1, cf1, a3, v17, a5, &cf, &v25);
    if (v19)
    {
      v20 = v19;
      goto LABEL_33;
    }

    if (!a4 || CFGetTypeID(cf) == a4)
    {
      break;
    }

    CFRelease(cf);
    cf = 0;
    CFRelease(v25);
    v25 = 0;
    if (v16 == ++v17)
    {
      v20 = 0;
LABEL_33:
      if (cf)
      {
        CFRelease(cf);
      }

      v21 = 0;
      goto LABEL_18;
    }
  }

  *a6 = cf;
  cf = 0;
  v20 = 0;
  if (a7)
  {
    *a7 = v25;
    v21 = 1;
    goto LABEL_20;
  }

  v21 = 1;
LABEL_18:
  if (v25)
  {
    CFRelease(v25);
  }

LABEL_20:
  if (v20)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (a4)
  {
    v23 = -12608;
  }

  else
  {
    v23 = -12607;
  }

  if (v22)
  {
    return v20;
  }

  else
  {
    return v23;
  }
}

void FigiTunesMetadataGetItemCount(const void *a1, const void *a2, const __CFString *a3)
{
  v26 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigiTunesMetadataGetCommonKeyToShortKeyMapping();
  if (!DerivedStorage)
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_3_55();
  if (a2)
  {
    v8 = v7;
    if (CFEqual(a2, @"comn"))
    {
      if (a3)
      {
        v9 = CFGetTypeID(a3);
        if (v9 == CFStringGetTypeID())
        {
          valuePtr = CFDictionaryGetValue(v8, a3);
          if (!valuePtr)
          {
            goto LABEL_46;
          }

          goto LABEL_22;
        }
      }

      goto LABEL_47;
    }

    if (CFEqual(a2, @"itsk"))
    {
      if (!a3)
      {
        goto LABEL_22;
      }

      v12 = CFGetTypeID(a3);
      if (v12 == CFStringGetTypeID())
      {
        if (!FigiTunesMetadataShortStringKeyToOSTypeKey(a3, &valuePtr))
        {
LABEL_14:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_5();
LABEL_48:
          FigSignalErrorAtGM();
          goto LABEL_46;
        }

        goto LABEL_21;
      }

      v14 = CFGetTypeID(a3);
      if (v14 == CFNumberGetTypeID())
      {
        if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
        {
          goto LABEL_14;
        }

LABEL_21:
        OUTLINED_FUNCTION_4_57();
        if (v15)
        {
          goto LABEL_14;
        }

LABEL_22:
        v10 = 0;
        v11 = 1;
        goto LABEL_23;
      }

LABEL_47:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      goto LABEL_48;
    }

    if (!CFEqual(a2, @"itlk"))
    {
      goto LABEL_47;
    }

    if (a3)
    {
      v13 = CFGetTypeID(a3);
      if (v13 != CFStringGetTypeID())
      {
        goto LABEL_47;
      }
    }

    v11 = 0;
    v10 = 1;
  }

  else
  {
    if (a3)
    {
      goto LABEL_47;
    }

    v10 = 0;
    v11 = 0;
  }

LABEL_23:
  if (*(DerivedStorage + 24) >= 1)
  {
    OUTLINED_FUNCTION_11_28();
    if (!FigiTunesMetadataGetItemListAtomStream(DerivedStorage, v16, 0))
    {
      v17 = 0;
      if (a2)
      {
        v18 = v10;
      }

      else
      {
        v11 = 1;
        v18 = 1;
      }

      while (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
      {
        if (v23 == 757935405)
        {
          if (v18)
          {
            if (a3)
            {
              theString2 = 0;
              v19 = CFGetAllocator(a1);
              if (FigiTunesMetadataCopyLongKey(v25, v19, &theString2))
              {
                break;
              }

              v20 = theString2;
              if (theString2)
              {
                if (CFStringCompare(a3, theString2, 0) == kCFCompareEqualTo)
                {
                  FigiTunesMetadataGetDataAtomCount(v25, &v26);
                  CFRelease(v20);
                  break;
                }

                CFRelease(v20);
              }
            }

            else
            {
              theString2 = 0;
              FigiTunesMetadataGetDataAtomCount(v25, &theString2);
              v17 = theString2 + v17;
              v26 = v17;
            }
          }
        }

        else if (v11 && (!a3 || valuePtr == v23))
        {
          theString2 = 0;
          FigiTunesMetadataGetDataAtomCount(v25, &theString2);
          v21 = a3 ? 0 : v17;
          v17 = theString2 + v21;
          v26 = theString2 + v21;
          if (a3)
          {
            break;
          }
        }

        if (FigAtomStreamAdvanceToNextAtom())
        {
          OUTLINED_FUNCTION_8_25();
          break;
        }
      }
    }
  }

LABEL_46:
  OUTLINED_FUNCTION_252();
}

CFDictionaryRef FigiTunesMetadataSetUpCommonKeyMapping()
{
  keys[12] = *MEMORY[0x1E69E9840];
  keys[0] = @"title";
  keys[1] = @"description";
  keys[2] = @"publisher";
  keys[3] = @"contributor";
  keys[4] = @"type";
  keys[5] = @"source";
  keys[6] = @"copyrights";
  keys[7] = @"albumName";
  keys[8] = @"author";
  keys[9] = @"artist";
  keys[10] = @"artwork";
  keys[11] = @"software";
  v2[0] = @"title";
  v2[1] = @"description";
  v2[2] = @"publisher";
  v2[3] = @"contributor";
  v2[4] = @"contributor";
  v2[5] = @"contributor";
  v2[6] = @"contributor";
  v2[7] = @"type";
  v2[8] = @"source";
  v2[9] = @"copyrights";
  v2[10] = @"albumName";
  v2[11] = @"author";
  v2[12] = @"artist";
  v2[13] = @"artwork";
  v2[14] = @"software";
  v0 = *MEMORY[0x1E695E480];
  _MergedGlobals_516 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &FigiTunesMetadataSetUpCommonKeyMapping_toShortKeys, 12, MEMORY[0x1E695E9D8], 0);
  result = CFDictionaryCreate(v0, &FigiTunesMetadataSetUpCommonKeyMapping_fromShortKeys, v2, 15, 0, MEMORY[0x1E695E9E8]);
  giTunesMetadataShortKeyToCommonKeyDict = result;
  return result;
}

CFIndex FigiTunesMetadataShortStringKeyToOSTypeKey(const __CFString *a1, unsigned int *a2)
{
  MEMORY[0x19A8D3660](&FigiTunesMetadataSetUpStringKeyMappingOnce_sCreateKeyArrayOnce, FigiTunesMetadataSetUpStringKeyMapping);
  Value = CFDictionaryGetValue(giTunesMetadataShortStringKeyToOSTypeKeyDict, a1);
  *buffer = Value;
  if (Value)
  {
    goto LABEL_2;
  }

  if (CFStringGetLength(a1) != 4)
  {
    return 0;
  }

  v7.location = 0;
  v7.length = 4;
  result = CFStringGetBytes(a1, v7, 0, 0, 0, buffer, 4, 0);
  if (result)
  {
    Value = bswap32(*buffer);
LABEL_2:
    *a2 = Value;
    return 1;
  }

  return result;
}

CFDictionaryRef FigiTunesMetadataSetUpStringKeyMapping()
{
  keys[50] = *MEMORY[0x1E69E9840];
  keys[0] = @"@alb";
  keys[1] = @"@ART";
  keys[2] = @"@cmt";
  keys[3] = @"covr";
  keys[4] = @"cprt";
  keys[5] = @"@day";
  keys[6] = @"@enc";
  keys[7] = @"gnre";
  keys[8] = @"@gen";
  keys[9] = @"@nam";
  keys[10] = @"@st3";
  keys[11] = @"@too";
  keys[12] = @"@wrt";
  keys[13] = @"aART";
  keys[14] = @"akID";
  keys[15] = @"apID";
  keys[16] = @"atID";
  keys[17] = @"cnID";
  keys[18] = @"cpil";
  keys[19] = @"disk";
  keys[20] = @"geID";
  keys[21] = @"grup";
  keys[22] = @"plID";
  keys[23] = @"rtng";
  keys[24] = @"tmpo";
  keys[25] = @"trkn";
  keys[26] = @"stik";
  keys[27] = @"purd";
  keys[28] = @"@ard";
  keys[29] = @"@arg";
  keys[30] = @"@aut";
  keys[31] = @"@lyr";
  keys[32] = @"@cak";
  keys[33] = @"@con";
  keys[34] = @"@des";
  keys[35] = @"@dir";
  keys[36] = @"@equ";
  keys[37] = @"@lnt";
  keys[38] = @"@mak";
  keys[39] = @"@ope";
  keys[40] = @"@phg";
  keys[41] = @"@prd";
  keys[42] = @"@prf";
  keys[43] = @"@pub";
  keys[44] = @"@sne";
  keys[45] = @"@sol";
  keys[46] = @"@src";
  keys[47] = @"@thx";
  keys[48] = @"@url";
  keys[49] = @"@xpd";
  v0 = *MEMORY[0x1E695E480];
  giTunesMetadataShortStringKeyToOSTypeKeyDict = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &FigiTunesMetadataSetUpStringKeyMapping_iTunesShortOSTypeKeys, 50, MEMORY[0x1E695E9D8], 0);
  result = CFDictionaryCreate(v0, &FigiTunesMetadataSetUpStringKeyMapping_iTunesShortOSTypeKeys, keys, 50, 0, MEMORY[0x1E695E9E8]);
  giTunesMetadataOSTypeKeyToShortStringKeyDict = result;
  return result;
}

uint64_t FigiTunesMetadataGetItemListAtomStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) < 1)
  {
    return 0;
  }

  result = FigAtomStreamInitWithByteStream();
  if (!result)
  {
    if (a3 < 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM();
    }

    else
    {

      return FigAtomStreamInitWithParent();
    }
  }

  return result;
}

uint64_t itemfig_antiprepare(const void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  itemfig_unregisterPlayabilityMonitor();
  v4 = *(DerivedStorage + 360);
  if (v4)
  {
    CFSetRemoveAllValues(v4);
    CFRelease(*(DerivedStorage + 360));
    *(DerivedStorage + 360) = 0;
  }

  v5 = 0;
  v6 = DerivedStorage + 368;
  do
  {
    v7 = *(v6 + v5);
    if (v7)
    {
      CFRelease(v7);
      *(v6 + v5) = 0;
    }

    v5 += 8;
  }

  while (v5 != 112);
  v8 = *(DerivedStorage + 1912);
  if (v8)
  {
    FigSyncMomentSourceDestroy(v8);
    *(DerivedStorage + 1912) = 0;
  }

  v9 = *(DerivedStorage + 1904);
  if (v9)
  {
    FigOutOfBandTrackControllerInvalidate(v9);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v10 = *(DerivedStorage + 1904);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 1904) = 0;
    }
  }

  if (*(DerivedStorage + 1745))
  {
    itemfig_accumulateFrameDropCountFromAllVideoPipelines(a1);
  }

  itemfig_storeItemPerformanceDataIfGathering(a1);
  FigSimpleMutexLock();
  v11 = *(DerivedStorage + 648);
  FigSimpleMutexUnlock();
  if (v11)
  {
    Count = CFArrayGetCount(*(DerivedStorage + 648));
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 648), i);
        v16 = ValueAtIndex;
        v17 = ValueAtIndex[2];
        if (v17)
        {
          v18 = *(ValueAtIndex + 1);
          v19 = v18 == 1986618469 || v18 == 1635088502;
          if (!v19 || (FigStopForwardingMediaServicesProcessDeathNotification(), (v17 = v16[2]) != 0))
          {
            CFRelease(v17);
            v16[2] = 0;
          }
        }

        v20 = v16[31];
        if (v20)
        {
          CFRelease(v20);
          v16[31] = 0;
        }

        v21 = v16[33];
        if (v21)
        {
          CFRelease(v21);
          v16[33] = 0;
        }

        v22 = v16[21];
        if (v22)
        {
          v23 = CFArrayGetCount(v22);
          if (v23 >= 1)
          {
            v24 = v23;
            for (j = 0; j != v24; ++j)
            {
              v26 = CFArrayGetValueAtIndex(v16[21], j);
              v27 = v26[6];
              if (v27)
              {
                CFRelease(v27);
                v26[6] = 0;
              }
            }
          }
        }
      }
    }
  }

  v28 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v29 = *(v28 + 896);
  if (v29)
  {
    FigLayerSynchronizerSetConfigurationWithDeferredTransaction(v29, 0, 0);
  }

  FigSimpleMutexUnlock();
  v30 = *(v28 + 352);
  if (v30)
  {
    v31 = *(v28 + 352);
    if (!*(v28 + 480))
    {
      FigPlaybackBossSetRate(*(v28 + 352), 0, 0.0);
      v31 = *(v28 + 352);
    }

    FigPlaybackBossGetTime(v31, &time);
    *(v28 + 24) = time;
    CMNotificationCenterGetDefaultLocalCenter();
    FigPlaybackBossGetTimebase(*(v28 + 352));
    FigNotificationCenterRemoveWeakListener();
    itemfig_removeBossListeners();
    FigPlaybackBossInvalidate(*(v28 + 352));
    CFRelease(*(v28 + 352));
    *(v28 + 352) = 0;
    *(v28 + 480) = 0;
    v32 = *(v28 + 328);
    HostTimeClock = CMClockGetHostTimeClock();
    CMTimebaseSetSourceClock(v32, HostTimeClock);
    CMTimebaseSetRate(*(v28 + 328), 0.0);
    v34 = *(v28 + 328);
    time = *(v28 + 24);
    CMTimebaseSetTime(v34, &time);
  }

  v35 = *(v28 + 880);
  if (v35)
  {
    FigSyncMomentSourceDestroy(v35);
    *(v28 + 880) = 0;
  }

  FigSimpleMutexLock();
  v36 = *(v28 + 896);
  if (v36)
  {
    CFRelease(v36);
    *(v28 + 896) = 0;
  }

  FigSimpleMutexUnlock();
  if (v30)
  {
    itemfig_cancelPreroll();
  }

  if (*(DerivedStorage + 1200))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (*(DerivedStorage + 915))
  {
    v37 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v37)
    {
      v38 = v37;
      CMBaseObjectGetDerivedStorage();
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      CFRelease(v38);
    }

    *(DerivedStorage + 915) = 0;
  }

  *(DerivedStorage + 916) = 0;
  v39 = *(DerivedStorage + 1064);
  if (v39)
  {
    CFRelease(v39);
    *(DerivedStorage + 1064) = 0;
  }

  v40 = *(DerivedStorage + 488);
  if (v40)
  {
    CFRelease(v40);
    *(DerivedStorage + 488) = 0;
  }

  return itemfig_updateStartHostTimeEstimate(a1, 0);
}

uint64_t FigAudioQueueRenderPipelineCreate(const __CFAllocator *a1, const __CFDictionary *a2, void *a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a3)
  {
    cf[0] = 0;
    FigRenderPipelineGetClassID();
    v6 = CMDerivedObjectCreate();
    if (v6)
    {
      return v6;
    }

    v7 = cf[0];
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 164) = 0;
    v9 = (DerivedStorage + 164);
    if (FigCFDictionaryGetValueIfPresent())
    {
      CFStringGetCString(0, v9, 16, 0x600u);
    }

    v10 = FigReentrantMutexCreate();
    *(DerivedStorage + 8) = v10;
    if (v10)
    {
      v11 = FigSimpleMutexCreate();
      *(DerivedStorage + 48) = v11;
      if (v11)
      {
        snprintf(__str, 0x80uLL, "com.apple.coremedia.faqrp.notification.%s", v9);
        v12 = dispatch_queue_create(__str, 0);
        *(DerivedStorage + 16) = v12;
        if (v12)
        {
          LOBYTE(cf[0]) = 0;
          FigCFDictionaryGetBooleanIfPresent();
          LOBYTE(cf[0]) = 0;
          FigCFDictionaryGetBooleanIfPresent();
          snprintf(__str, 0x80uLL, "com.apple.coremedia.faqrp.asyncQueue.%s", v9);
          *(DerivedStorage + 24) = FigDispatchQueueCreateWithPriority();
          LOBYTE(cf[0]) = 0;
          BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
          v14 = cf[0];
          if (!BooleanIfPresent)
          {
            v14 = 0;
          }

          *(DerivedStorage + 67) = v14;
          *(DerivedStorage + 160) = 1065353216;
          *(DerivedStorage + 100) = 256;
          v15 = CMBaseObjectGetDerivedStorage();
          if (!a2)
          {
            FigAudioQueueRenderPipelineCreate_cold_3(cf);
            updated = LODWORD(cf[0]);
            if (LODWORD(cf[0]))
            {
              return updated;
            }

            goto LABEL_100;
          }

          v16 = v15;
          CMBaseObjectGetDerivedStorage();
          Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          cf[0] = 0;
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
          FigDispatchQueueHolderCreateWithDispatchQueue();
          FigCFDictionarySetValue();
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          Value = CFDictionaryGetValue(a2, @"FormatDescription");
          if (!Value)
          {
            FigAudioQueueRenderPipelineCreate_cold_2(cf);
            updated = LODWORD(cf[0]);
            goto LABEL_90;
          }

          v19 = Value;
          LOBYTE(cf[0]) = 0;
          v20 = FigCFDictionaryGetBooleanIfPresent();
          if (LOBYTE(cf[0]))
          {
            v21 = v20 == 0;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
          {
            v22 = 0;
          }

          else
          {
            v22 = 32;
          }

          LOBYTE(cf[0]) = 0;
          v23 = FigCFDictionaryGetBooleanIfPresent();
          if (LOBYTE(cf[0]))
          {
            v24 = v23 == 0;
          }

          else
          {
            v24 = 1;
          }

          if (!v24)
          {
            v22 |= 0x10u;
          }

          LOBYTE(cf[0]) = 0;
          v25 = FigCFDictionaryGetBooleanIfPresent();
          if (LOBYTE(cf[0]))
          {
            v26 = v25 == 0;
          }

          else
          {
            v26 = 1;
          }

          if (!v26)
          {
            v22 |= 2u;
          }

          LOBYTE(cf[0]) = 0;
          v27 = FigCFDictionaryGetBooleanIfPresent();
          if (LOBYTE(cf[0]))
          {
            v28 = v27 == 0;
          }

          else
          {
            v28 = 1;
          }

          if (!v28)
          {
            v22 |= 0x8000u;
          }

          LOBYTE(cf[0]) = 0;
          v29 = FigCFDictionaryGetBooleanIfPresent();
          if (LOBYTE(cf[0]))
          {
            v30 = v29 == 0;
          }

          else
          {
            v30 = 1;
          }

          if (!v30)
          {
            v22 |= 4u;
          }

          LOBYTE(cf[0]) = 0;
          v31 = FigCFDictionaryGetBooleanIfPresent();
          if (LOBYTE(cf[0]))
          {
            v32 = v31 == 0;
          }

          else
          {
            v32 = 1;
          }

          if (!v32)
          {
            v22 |= 0x40u;
          }

          LOBYTE(cf[0]) = 0;
          v33 = FigCFDictionaryGetBooleanIfPresent();
          if (LOBYTE(cf[0]))
          {
            v34 = v33 == 0;
          }

          else
          {
            v34 = 1;
          }

          if (!v34)
          {
            v22 |= 0x80u;
          }

          LOBYTE(cf[0]) = 0;
          v35 = FigCFDictionaryGetBooleanIfPresent();
          if (LOBYTE(cf[0]))
          {
            v36 = 1;
          }

          else
          {
            v36 = v35 == 0;
          }

          if (v36)
          {
            v22 |= 0x200u;
          }

          LOBYTE(cf[0]) = 0;
          v37 = FigCFDictionaryGetBooleanIfPresent();
          if (LOBYTE(cf[0]))
          {
            v38 = v37 == 0;
          }

          else
          {
            v38 = 1;
          }

          if (!v38)
          {
            v22 |= 0x100u;
          }

          LOBYTE(cf[0]) = 0;
          v39 = FigCFDictionaryGetBooleanIfPresent();
          if (LOBYTE(cf[0]))
          {
            v40 = v39 == 0;
          }

          else
          {
            v40 = 1;
          }

          if (!v40)
          {
            v22 |= 0x800u;
          }

          LOBYTE(cf[0]) = 0;
          v41 = FigCFDictionaryGetBooleanIfPresent();
          if (LOBYTE(cf[0]))
          {
            v42 = v41 == 0;
          }

          else
          {
            v42 = 1;
          }

          if (!v42)
          {
            v22 |= 0x402u;
          }

          LOBYTE(cf[0]) = 0;
          v43 = FigCFDictionaryGetBooleanIfPresent();
          if (LOBYTE(cf[0]))
          {
            v44 = v43 == 0;
          }

          else
          {
            v44 = 1;
          }

          if (!v44)
          {
            v22 |= 0x2000u;
          }

          LOBYTE(cf[0]) = 0;
          v45 = FigCFDictionaryGetBooleanIfPresent();
          if (LOBYTE(cf[0]))
          {
            v46 = v45 == 0;
          }

          else
          {
            v46 = 1;
          }

          v47 = v22 | 0x4000;
          if (v46)
          {
            v47 = v22;
          }

          *(v16 + 96) = v47;
          *(v16 + 66) = v47 & 2;
          v48 = *MEMORY[0x1E695E480];
          CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
          updated = CMBufferQueueCreate(v48, 0, CallbacksForUnsortedSampleBuffers, (v16 + 32));
          if (!updated)
          {
            v51 = CMBaseObjectGetDerivedStorage();
            v57 = 0;
            v52 = CFGetAllocator(v7);
            v53 = FigAudioQueueCreateWithOptions(v52, v19, *(v51 + 32), *(v51 + 96), Mutable, &v57);
            if (v53)
            {
              updated = v53;
              FigAudioQueueRenderPipelineCreate_cold_1();
            }

            else
            {
              CMNotificationCenterGetDefaultLocalCenter();
              v54 = FigNotificationCenterAddWeakListeners();
              if (!v54)
              {
                if (dword_1EAF16ED8)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                *(v16 + 40) = v57;
                updated = faqrp_updateTimePitchBypass();
                goto LABEL_90;
              }

              updated = v54;
            }

            if (v57)
            {
              CFRelease(v57);
            }
          }

LABEL_90:
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (updated)
          {
            return updated;
          }

LABEL_100:
          *a3 = v7;
          return updated;
        }
      }
    }

    return 4294954510;
  }

  return FigSignalErrorAtGM();
}

uint64_t RegisterFigRenderPipelineType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAudioQueueCreate(uint64_t a1, const opaqueCMFormatDescription *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t *a8)
{
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  v14 = FigAudioQueueCreateWithOptions(v12, a2, a4, a7, Mutable, a8);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v14;
}

uint64_t figAudioQueueRenderPipelineSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    goto LABEL_2;
  }

  if (CFEqual(@"Timebase", a2))
  {
    if (!a3 || (TypeID = CMTimebaseGetTypeID(), TypeID == CFGetTypeID(a3)))
    {
      faqrp_setTimebase(a1, a3);
      goto LABEL_9;
    }

LABEL_2:
    v7 = FigSignalErrorAtGM();
LABEL_3:
    v8 = v7;
    goto LABEL_4;
  }

  if (CFEqual(@"SoftwareVolume1", a2))
  {
    if (!a3)
    {
      goto LABEL_2;
    }

    v11 = CFNumberGetTypeID();
    if (v11 != CFGetTypeID(a3))
    {
      goto LABEL_2;
    }

    valuePtr = 1.0;
    CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
    v12 = valuePtr;
    *(DerivedStorage + 104) = valuePtr;
    if (*(DerivedStorage + 103))
    {
      goto LABEL_9;
    }

    v13 = *(DerivedStorage + 40);
    v14 = 1;
LABEL_46:
    v7 = FigAudioQueueSetParameter(v13, v14, v12);
    goto LABEL_3;
  }

  if (CFEqual(@"SoftwareVolume1RampDuration", a2))
  {
    if (!a3)
    {
      goto LABEL_2;
    }

    v15 = CFNumberGetTypeID();
    if (v15 != CFGetTypeID(a3))
    {
      goto LABEL_2;
    }

    valuePtr = 0.0;
    CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
    v13 = *(DerivedStorage + 40);
    v12 = valuePtr;
    v14 = 4;
    goto LABEL_46;
  }

  if (CFEqual(@"SoftwareVolume2", a2))
  {
    if (!a3)
    {
      goto LABEL_2;
    }

    v16 = CFNumberGetTypeID();
    if (v16 != CFGetTypeID(a3))
    {
      goto LABEL_2;
    }

    valuePtr = 1.0;
    CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
    v13 = *(DerivedStorage + 40);
    v12 = valuePtr;
    v14 = 5;
    goto LABEL_46;
  }

  if (CFEqual(@"SoftwareVolume3", a2))
  {
    if (!a3)
    {
      goto LABEL_2;
    }

    v17 = CFNumberGetTypeID();
    if (v17 != CFGetTypeID(a3))
    {
      goto LABEL_2;
    }

    valuePtr = 1.0;
    CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
    v13 = *(DerivedStorage + 40);
    v12 = valuePtr;
    v14 = 9;
    goto LABEL_46;
  }

  if (CFEqual(@"SoftwareVolume5", a2))
  {
    if (!a3)
    {
      goto LABEL_2;
    }

    v18 = CFNumberGetTypeID();
    if (v18 != CFGetTypeID(a3))
    {
      goto LABEL_2;
    }

    valuePtr = 1.0;
    CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
    v13 = *(DerivedStorage + 40);
    v12 = valuePtr;
    v14 = 14;
    goto LABEL_46;
  }

  if (CFEqual(@"SoftwareVolume2RampDuration", a2))
  {
    if (!a3)
    {
      goto LABEL_2;
    }

    v19 = CFNumberGetTypeID();
    if (v19 != CFGetTypeID(a3))
    {
      goto LABEL_2;
    }

    valuePtr = 0.0;
    CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
    v13 = *(DerivedStorage + 40);
    v12 = valuePtr;
    v14 = 6;
    goto LABEL_46;
  }

  if (CFEqual(@"Pan", a2))
  {
    if (!a3)
    {
      goto LABEL_2;
    }

    v20 = CFNumberGetTypeID();
    if (v20 != CFGetTypeID(a3))
    {
      goto LABEL_2;
    }

    valuePtr = 0.0;
    CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
    v13 = *(DerivedStorage + 40);
    v12 = valuePtr;
    v14 = 13;
    goto LABEL_46;
  }

  if (CFEqual(@"EQPreset", a2))
  {
    if (!a3)
    {
      goto LABEL_2;
    }

    v21 = CFNumberGetTypeID();
    if (v21 != CFGetTypeID(a3))
    {
      goto LABEL_2;
    }

    v22 = *(DerivedStorage + 40);
    v23 = kFigAudioQueueProperty_EQPreset;
    goto LABEL_52;
  }

  if (CFEqual(@"Muted", a2))
  {
    if (a3)
    {
      v24 = CFBooleanGetTypeID();
      if (v24 == CFGetTypeID(a3))
      {
        Value = CFBooleanGetValue(a3);
        faqrp_setMuted(a1, Value);
        goto LABEL_9;
      }
    }

    goto LABEL_2;
  }

  if (CFEqual(@"Suspended", a2))
  {
    if (a3)
    {
      v26 = CFBooleanGetTypeID();
      if (v26 == CFGetTypeID(a3))
      {
        v27 = CFBooleanGetValue(a3);
        faqrp_setSuspended(a1, v27);
        goto LABEL_9;
      }
    }

    goto LABEL_2;
  }

  if (CFEqual(@"ClientName", a2))
  {
    v28 = *(DerivedStorage + 56);
    *(DerivedStorage + 56) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    v22 = *(DerivedStorage + 40);
    v23 = kFigAudioQueueProperty_ClientName;
    goto LABEL_52;
  }

  if (CFEqual(@"OfflineMixer", a2))
  {
    v22 = *(DerivedStorage + 40);
    v23 = kFigAudioQueueProperty_OfflineMixer;
    goto LABEL_52;
  }

  if (CFEqual(@"AudioDeviceUID", a2))
  {
    v22 = *(DerivedStorage + 40);
    v23 = kFigAudioQueueProperty_DeviceUID;
    goto LABEL_52;
  }

  if (CFEqual(@"AudioQueueClockDevice", a2))
  {
    v22 = *(DerivedStorage + 40);
    v23 = kFigAudioQueueProperty_ClockDevice;
    goto LABEL_52;
  }

  if (CFEqual(@"AudioDeviceChannelMap", a2))
  {
    v22 = *(DerivedStorage + 40);
    v23 = kFigAudioQueueProperty_DeviceChannelMap;
    goto LABEL_52;
  }

  if (CFEqual(@"STSLabel", a2))
  {
    v22 = *(DerivedStorage + 40);
    v23 = kFigAudioQueueProperty_STSLabel;
    goto LABEL_52;
  }

  if (CFEqual(@"MATOriginalSourceFormat", a2))
  {
    v22 = *(DerivedStorage + 40);
    v23 = kFigAudioQueueProperty_MATOriginalSourceFormat;
    goto LABEL_52;
  }

  if (CFEqual(@"IgnoreAudioDeviceLatencyInStartupSync", a2))
  {
    v22 = *(DerivedStorage + 40);
    v23 = kFigAudioQueueProperty_IgnoreAudioDeviceLatencyInStartupSync;
    goto LABEL_52;
  }

  if (CFEqual(@"IsTimebaseStarter", a2))
  {
    if (a3)
    {
      v29 = CFBooleanGetTypeID();
      if (v29 == CFGetTypeID(a3))
      {
        v8 = 0;
        *(DerivedStorage + 65) = *MEMORY[0x1E695E4D0] == a3;
        goto LABEL_4;
      }
    }

    goto LABEL_9;
  }

  if (CFEqual(@"AudioProcessingUnits", a2))
  {
    v22 = *(DerivedStorage + 40);
    v23 = kFigAudioQueueProperty_AudioProcessingUnits;
    goto LABEL_52;
  }

  if (CFEqual(@"AudioCurves", a2))
  {
    v22 = *(DerivedStorage + 40);
    v23 = kFigAudioQueueProperty_AudioCurves;
    goto LABEL_52;
  }

  if (CFEqual(@"SecondaryAudioCurves", a2))
  {
    v22 = *(DerivedStorage + 40);
    v23 = kFigAudioQueueProperty_SecondaryAudioCurves;
    goto LABEL_52;
  }

  if (CFEqual(@"AllowedToUseHardware", a2))
  {
    v22 = *(DerivedStorage + 40);
    v23 = kFigAudioQueueProperty_AllowedToUseHardware;
    goto LABEL_52;
  }

  if (!CFEqual(@"HandleFormatDescriptionChanges", a2))
  {
    if (CFEqual(@"TimePitchAlgorithm", a2))
    {
      v22 = *(DerivedStorage + 40);
      v23 = kFigAudioQueueProperty_TimePitchAlgorithm;
    }

    else if (CFEqual(@"TrackID", a2))
    {
      v22 = *(DerivedStorage + 40);
      v23 = kFigAudioQueueProperty_TrackID;
    }

    else if (CFEqual(@"AudioProcessingTap", a2))
    {
      v22 = *(DerivedStorage + 40);
      v23 = kFigAudioQueueProperty_AudioProcessingTap;
    }

    else if (CFEqual(@"AudioSubmixID", a2))
    {
      v22 = *(DerivedStorage + 40);
      v23 = kFigAudioQueueProperty_SubmixID;
    }

    else
    {
      if (CFEqual(@"PipelineRate", a2))
      {
        if (a3)
        {
          v31 = CFNumberGetTypeID();
          if (v31 == CFGetTypeID(a3))
          {
            CFNumberGetValue(a3, kCFNumberFloat32Type, (DerivedStorage + 160));
            goto LABEL_9;
          }
        }

        goto LABEL_2;
      }

      if (CFEqual(@"FAQRate2", a2))
      {
        v22 = *(DerivedStorage + 40);
        v23 = kFigAudioQueueProperty_Rate2;
      }

      else if (CFEqual(@"LoudnessInfo", a2))
      {
        v22 = *(DerivedStorage + 40);
        v23 = kFigAudioQueueProperty_LoudnessInfo;
      }

      else if (CFEqual(@"CinematicAudioParameters", a2))
      {
        v22 = *(DerivedStorage + 40);
        v23 = kFigAudioQueueProperty_CinematicAudioParameters;
      }

      else if (CFEqual(@"AudioDynamicRangeCompression", a2))
      {
        v22 = *(DerivedStorage + 40);
        v23 = kFigAudioQueueProperty_AudioDynamicRangeCompression;
      }

      else if (CFEqual(@"AdjustTargetLevel", a2))
      {
        v22 = *(DerivedStorage + 40);
        v23 = kFigAudioQueueProperty_AdjustTargetLevel;
      }

      else if (CFEqual(@"AdjustCompressionProfile", a2))
      {
        v22 = *(DerivedStorage + 40);
        v23 = kFigAudioQueueProperty_AdjustCompressionProfile;
      }

      else if (CFEqual(@"ExpectScaledEdits", a2))
      {
        if (!a3)
        {
          goto LABEL_9;
        }

        v32 = CFBooleanGetTypeID();
        if (v32 != CFGetTypeID(a3))
        {
          goto LABEL_9;
        }

        *(DerivedStorage + 100) = CFBooleanGetValue(a3);
        faqrp_updateTimePitchBypass();
        v22 = *(DerivedStorage + 40);
        v23 = kFigAudioQueueProperty_ExpectScaledEdits;
      }

      else if (CFEqual(@"ShouldCompensateForNeroScreenLatency", a2))
      {
        v22 = *(DerivedStorage + 40);
        v23 = kFigAudioQueueProperty_ShouldCompensateForNeroScreenLatency;
      }

      else
      {
        if (CFEqual(@"SweepFilterSweepValue", a2))
        {
          valuePtr = 0.0;
          CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
          v13 = *(DerivedStorage + 40);
          v12 = valuePtr;
          v14 = 22;
          goto LABEL_46;
        }

        if (CFEqual(@"SweepFilterConfiguration", a2))
        {
          v22 = *(DerivedStorage + 40);
          v23 = kFigAudioQueueProperty_SweepFilterConfiguration;
        }

        else if (CFEqual(@"EnableSweepFilter", a2))
        {
          v22 = *(DerivedStorage + 40);
          v23 = kFigAudioQueueProperty_EnableSweepFilter;
        }

        else if (CFEqual(@"CodecProgramTargetLevel", a2))
        {
          v22 = *(DerivedStorage + 40);
          v23 = kFigAudioQueueProperty_CodecProgramTargetLevel;
        }

        else
        {
          if (CFEqual(@"OfflineAudioQueueRate", a2))
          {
            if (!*(DerivedStorage + 66))
            {
              v8 = 4294954444;
              goto LABEL_4;
            }

            valuePtr = 0.0;
            if (!a3)
            {
              goto LABEL_2;
            }

            v33 = CFGetTypeID(a3);
            if (v33 != CFNumberGetTypeID())
            {
              goto LABEL_2;
            }

            CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
            v34 = valuePtr == 1.0 || valuePtr == 0.0;
            *(DerivedStorage + 101) = v34;
            if (v34 && !*(DerivedStorage + 100))
            {
              v35 = MEMORY[0x1E695E4D0];
            }

            else
            {
              v35 = MEMORY[0x1E695E4C0];
            }

            v36 = *v35;
            if (*v35 == *MEMORY[0x1E695E4D0])
            {
              v37 = *MEMORY[0x1E695E4C0];
            }

            else
            {
              v37 = *MEMORY[0x1E695E4D0];
            }

            FigAudioQueueSetProperty(*(DerivedStorage + 40), @"EnableTimePitch", v37);
            FigAudioQueueSetProperty(*(DerivedStorage + 40), @"TimePitchBypass", v36);
            FigAudioQueueSetParameter(*(DerivedStorage + 40), 2, valuePtr);
LABEL_9:
            v8 = 0;
            goto LABEL_4;
          }

          if (CFEqual(@"DisconnectOfflineMixerWhileResetting", a2))
          {
            v22 = *(DerivedStorage + 40);
            v23 = kFigAudioQueueProperty_DisconnectOfflineMixerWhileResetting;
          }

          else
          {
            if (CFEqual(@"OfflineRenderPriority", a2))
            {
              if (a3)
              {
                v38 = CFStringGetTypeID();
                if (v38 == CFGetTypeID(a3) && (CFEqual(a3, @"BufferedAirPlayUrgent") || CFEqual(a3, @"BufferedAirPlayDefault") || CFEqual(a3, @"BufferedAirPlayRelaxed")))
                {
                  SInt32 = FigCFNumberCreateSInt32();
                  if (SInt32)
                  {
                    v40 = SInt32;
                    v8 = FigAudioQueueSetProperty(*(DerivedStorage + 40), @"RenderThreadPriority", SInt32);
                    CFRelease(v40);
                    goto LABEL_4;
                  }
                }
              }

              goto LABEL_2;
            }

            if (CFEqual(@"MXSession", a2))
            {
              v22 = *(DerivedStorage + 40);
              v23 = kFigAudioQueueProperty_MXSession;
            }

            else if (CFEqual(@"BestAvailableContentType", a2))
            {
              v22 = *(DerivedStorage + 40);
              v23 = kFigAudioQueueProperty_BestAvailableContentType;
            }

            else
            {
              if (!CFEqual(@"SceneCompositionPreset", a2))
              {
                v8 = 4294954446;
                goto LABEL_4;
              }

              v22 = *(DerivedStorage + 40);
              v23 = kFigAudioQueueProperty_SceneCompositionPreset;
            }
          }
        }
      }
    }

LABEL_52:
    v7 = FigAudioQueueSetProperty(v22, *v23, a3);
    goto LABEL_3;
  }

  if (!a3)
  {
    goto LABEL_2;
  }

  v30 = CFBooleanGetTypeID();
  if (v30 != CFGetTypeID(a3))
  {
    goto LABEL_2;
  }

  v8 = 0;
  *(DerivedStorage + 92) = *MEMORY[0x1E695E4D0] == a3;
LABEL_4:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigAudioQueueSetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  if (!a1)
  {
    FigAudioQueueSetProperty_cold_5(&v42);
    return v42;
  }

  FigSimpleMutexLock();
  v6 = (a1 + 16);
  if (*(a1 + 16))
  {
    FigAudioQueueSetProperty_cold_1(&v42);
    goto LABEL_75;
  }

  if (CFEqual(a2, @"TimebaseRate"))
  {
    if (a3)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        CFNumberGetValue(a3, kCFNumberFloat32Type, (a1 + 416));
        goto LABEL_9;
      }
    }

    goto LABEL_7;
  }

  if (CFEqual(a2, @"AudioProcessingUnits"))
  {
    if (!a3 || (v13 = CFGetTypeID(a3), v13 == CFArrayGetTypeID()))
    {
      if (*v6)
      {
        ValueAtIndex = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
      }

      v15 = *(a1 + 688);
      *(a1 + 688) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if (!ValueAtIndex)
      {
        goto LABEL_9;
      }

      v8 = subaq_buildAudioProcssingUnits(a1, ValueAtIndex);
      goto LABEL_8;
    }

LABEL_7:
    v8 = FigSignalErrorAtGM();
    goto LABEL_8;
  }

  if (CFEqual(a2, @"AudioCurves"))
  {
    if (a3)
    {
      v16 = CFDictionaryGetTypeID();
      if (v16 != CFGetTypeID(a3))
      {
        goto LABEL_7;
      }
    }

    v20 = a1;
    v21 = 0;
LABEL_63:
    v8 = faq_setAudioCurves(v20, v21);
    goto LABEL_8;
  }

  if (CFEqual(a2, @"SecondaryAudioCurves"))
  {
    if (a3)
    {
      v17 = CFDictionaryGetTypeID();
      if (v17 != CFGetTypeID(a3))
      {
        goto LABEL_7;
      }
    }

    v20 = a1;
    v21 = 1;
    goto LABEL_63;
  }

  if (CFEqual(a2, @"ExpectScaledEdits"))
  {
    if (a3)
    {
      v18 = CFBooleanGetTypeID();
      if (v18 == CFGetTypeID(a3))
      {
        Value = CFBooleanGetValue(a3);
        if (Value != *(a1 + 680))
        {
          *(a1 + 680) = Value;
          goto LABEL_42;
        }
      }
    }

LABEL_9:
    Mutable = *(a1 + 240);
    if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(a1 + 240) = Mutable) != 0))
    {
      if (a3)
      {
        v11 = a3;
      }

      else
      {
        v11 = *MEMORY[0x1E695E738];
      }

      CFDictionarySetValue(Mutable, a2, v11);
      v9 = 0;
    }

    else
    {
      v9 = 4294954355;
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"OfflineMixer"))
  {
    if ((*(a1 + 48) & 2) != 0)
    {
      if (a3)
      {
        v22 = FigAudioQueueOfflineMixerGetTypeID();
        if (v22 != CFGetTypeID(a3))
        {
          goto LABEL_7;
        }
      }

      if (*v6)
      {
        v25 = (a1 + 720);
        if (!*(a1 + 720))
        {
          if (!a3)
          {
            goto LABEL_9;
          }

          *v25 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          goto LABEL_127;
        }

        v24 = 0;
      }

      else
      {
        Count = CFArrayGetCount(*(a1 + 176));
        v24 = Count;
        v25 = (a1 + 720);
        if (!*(a1 + 720))
        {
          goto LABEL_53;
        }

        if (Count >= 1)
        {
          FigAudioQueueSetProperty_cold_2(a1 + 16, (a1 + 176), a1, Count);
        }
      }

      faq_removeOfflineMixer(a1);
LABEL_53:
      if (!a3)
      {
        goto LABEL_9;
      }

      *v25 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (v24 >= 1)
      {
        v26 = 0;
        do
        {
          v27 = *v6 ? 0 : CFArrayGetValueAtIndex(*(a1 + 176), v26);
          v28 = faq_connectToOfflineMixer(a1, v27);
          if (v28)
          {
            goto LABEL_97;
          }
        }

        while (v24 != ++v26);
      }

LABEL_127:
      *(a1 + 728) = a3;
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      goto LABEL_9;
    }

    FigAudioQueueSetProperty_cold_3(&v42);
LABEL_75:
    v9 = v42;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"AllowedToUseHardware"))
  {
    goto LABEL_9;
  }

  if (CFEqual(a2, @"MXSession"))
  {
    v29 = *(a1 + 256);
    if (v29 != a3)
    {
      *(a1 + 256) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v29)
      {
        CFRelease(v29);
      }

      faq_setPropertyOnAllSubAudioQueues(a1);
    }

    goto LABEL_9;
  }

  if (CFEqual(a2, @"AudioProcessingTap"))
  {
    if (a3)
    {
      v30 = MTAudioProcessingTapGetTypeID();
      if (v30 != CFGetTypeID(a3))
      {
        goto LABEL_7;
      }
    }

    if (*(a1 + 744) == a3)
    {
      goto LABEL_9;
    }

    *(a1 + 752) = 0;
    faq_removeAudioProcessingTapListeners(a1);
    v31 = *(a1 + 744);
    *(a1 + 744) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    v28 = faq_addAudioProcessingTapListeners(a1);
    if (!v28)
    {
      v28 = faq_setPropertyOnAllSubAudioQueues(a1);
      if (!v28)
      {
        LastSubAudioQueue = faq_GetLastSubAudioQueue(a1);
        v33 = LastSubAudioQueue[80];
        if (v33)
        {
          v34 = LastSubAudioQueue[81];
          if (!v34)
          {
            v34 = LastSubAudioQueue[83];
          }

          MTAudioProcessingTapInitializeTap(v33, v34);
        }

        goto LABEL_9;
      }
    }

LABEL_97:
    v9 = v28;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"SubmixID"))
  {
    if (a3 && (v35 = CFGetTypeID(a3), v35 == CFUUIDGetTypeID()))
    {
      v36 = *(a1 + 760);
      if (v36 == a3)
      {
        goto LABEL_9;
      }

      *(a1 + 760) = a3;
      CFRetain(a3);
      if (!v36)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v36 = *(a1 + 760);
      if (!v36)
      {
        goto LABEL_9;
      }

      *(a1 + 760) = 0;
    }

    CFRelease(v36);
    goto LABEL_9;
  }

  if (CFEqual(a2, @"DiscardSampleBuffers"))
  {
    if (a3)
    {
      v37 = CFBooleanGetTypeID();
      if (v37 == CFGetTypeID(a3))
      {
        v38 = *MEMORY[0x1E695E4D0];
        v39 = *MEMORY[0x1E695E4D0] == a3;
        if (*(a1 + 312) != v39)
        {
          *(a1 + 312) = v39;
          FigAtomicCompareAndSwap32();
          v40 = *(a1 + 344);
          if (v38 == a3)
          {
            dispatch_source_set_timer(v40, 0, 0x1DCD6500uLL, 0x4C4B40uLL);
          }

          else
          {
            dispatch_source_set_timer(v40, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
            if (*(a1 + 296))
            {
              FigSemaphoreSignal();
            }
          }
        }
      }
    }

    goto LABEL_9;
  }

  if (CFEqual(a2, @"ShouldCompensateForNeroScreenLatency"))
  {
    *(a1 + 768) = *MEMORY[0x1E695E4D0] == a3;
    goto LABEL_9;
  }

  if (CFEqual(a2, @"DisconnectOfflineMixerWhileResetting"))
  {
    *(a1 + 784) = *MEMORY[0x1E695E4D0] == a3;
    goto LABEL_9;
  }

  if (!CFEqual(a2, @"RenderThreadPriority"))
  {
    if (!CFEqual(a2, @"Rate2Rate"))
    {
      v8 = faq_setPropertyOnAllSubAudioQueues(a1);
      goto LABEL_8;
    }

    CFNumberGetValue(a3, kCFNumberFloat32Type, (a1 + 788));
LABEL_42:
    faq_updateRate2Enable(a1);
    goto LABEL_9;
  }

  if ((*(a1 + 49) & 4) == 0)
  {
    FigAudioQueueSetProperty_cold_4(&v42);
    goto LABEL_75;
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v41 = CFNumberGetTypeID();
  if (v41 != CFGetTypeID(a3))
  {
    goto LABEL_7;
  }

  if (!*(a1 + 288))
  {
    goto LABEL_9;
  }

  v8 = FigThreadSetProperty();
LABEL_8:
  v9 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_15:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t FigPlaybackBossCreate(const __CFAllocator *a1, const void *a2, uint64_t a3, unsigned int *a4, const void **a5, uint64_t a6, const void *a7, const void *a8, OpaqueCMClock *a9, unsigned int a10, const __CFDictionary *a11, uint64_t *a12)
{
  v106 = *MEMORY[0x1E69E9840];
  value = 0;
  BOOLean = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a2 && a7 && a12)
  {
    v14 = a4;
    if (a3 >= 1)
    {
      if (a4)
      {
        v15 = a5;
        if (a5)
        {
          v16 = a3;
          while (*v15)
          {
            ++v15;
            if (!--v16)
            {
              goto LABEL_10;
            }
          }
        }
      }

      goto LABEL_55;
    }

LABEL_10:
    if (FigPlaybackBossGetTypeID_oneTimeOnly != -1)
    {
      FigPlaybackBossCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      FigPlaybackBossCreate_cold_9(&v105);
      value_low = LODWORD(v105.start.value);
      v63 = &unk_1EAF16000;
      if (!LODWORD(v105.start.value))
      {
        return value_low;
      }

LABEL_133:
      if (v63[926])
      {
        v98 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v86 = v98;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
        {
          v87 = v86;
        }

        else
        {
          v87 = v86 & 0xFFFFFFFE;
        }

        if (v87)
        {
          v101 = 136315394;
          v102 = "FigPlaybackBossCreate";
          v103 = 1024;
          LODWORD(v104) = value_low;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return value_low;
    }

    v18 = Instance;
    v19 = FigSimpleMutexCreate();
    *(v18 + 24) = v19;
    if (v19)
    {
      v20 = FigSimpleMutexCreate();
      *(v18 + 584) = v20;
      if (v20)
      {
        v21 = FigSimpleMutexCreate();
        *(v18 + 64) = v21;
        if (v21)
        {
          v22 = FigDispatchQueueCreateWithPriority();
          *(v18 + 32) = v22;
          if (v22)
          {
            FigThreadMakeDispatchQueueAbortable();
            *(v18 + 552) = 1000000;
            *(v18 + 850) = 0;
            if (a11 && CFDictionaryGetValueIfPresent(a11, @"Boss_ItemIdentifier", &value))
            {
              CFStringGetCString(value, (v18 + 850), 10, 0x600u);
            }

            *(v18 + 48) = a7;
            CFRetain(a7);
            v23 = MEMORY[0x1E695E480];
            v24 = MEMORY[0x1E695E4D0];
            if ((a10 & 0x20) != 0)
            {
              Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              CFDictionarySetValue(Mutable, *MEMORY[0x1E6962E80], *v24);
            }

            else
            {
              Mutable = 0;
            }

            v26 = FigSampleGeneratorDataSourceCacheCreate(a1, Mutable, (v18 + 56));
            if (!v26)
            {
              *(v18 + 40) = a2;
              CFRetain(a2);
              *(v18 + 129) = (a10 & 8 | (a10 >> 5) & 1) != 0;
              v92 = (a10 >> 4) & 1;
              *(v18 + 849) = (a10 & 0x10) != 0;
              v27 = *v23;
              FigBaseObject = FigFormatReaderGetFigBaseObject(*(v18 + 40));
              v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v29)
              {
                if (!v29(FigBaseObject, @"AccurateDurationIsKnown", v27, &BOOLean))
                {
                  *(v18 + 131) = CFBooleanGetValue(BOOLean);
                  if (BOOLean)
                  {
                    CFRelease(BOOLean);
                    BOOLean = 0;
                  }
                }
              }

              v30 = FigFormatReaderGetFigBaseObject(*(v18 + 40));
              v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v31)
              {
                if (!v31(v30, @"SampleCursorTimeAccuracyIsExact", v27, &BOOLean))
                {
                  *(v18 + 132) = CFBooleanGetValue(BOOLean);
                  if (BOOLean)
                  {
                    CFRelease(BOOLean);
                    BOOLean = 0;
                  }
                }
              }

              v32 = FigFormatReaderGetFigBaseObject(*(v18 + 40));
              v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v33)
              {
                v33(v32, @"CouldContainFragments", v27, &BOOLean);
              }

              if (BOOLean)
              {
                *(v18 + 133) = CFBooleanGetValue(BOOLean);
                if (BOOLean)
                {
                  CFRelease(BOOLean);
                  BOOLean = 0;
                }
              }

              if (*(v18 + 133))
              {
                CMNotificationCenterGetDefaultLocalCenter();
                FigNotificationCenterAddWeakListener();
                *(v18 + 134) = 1;
              }

              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              v34 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
              *(v18 + 72) = v34;
              if (!v34)
              {
                FigPlaybackBossCreate_cold_4(&v105);
                v67 = 0;
                value_low = LODWORD(v105.start.value);
                v63 = &unk_1EAF16000;
                goto LABEL_95;
              }

              v35 = MEMORY[0x1E6960C70];
              v36 = *MEMORY[0x1E6960C70];
              *(v18 + 176) = *MEMORY[0x1E6960C70];
              v37 = *(v35 + 16);
              *(v18 + 192) = v37;
              *(v18 + 296) = v36;
              *(v18 + 312) = v37;
              *(v18 + 344) = v36;
              *(v18 + 360) = v37;
              *(v18 + 130) = a10 & 1;
              *(v18 + 400) = 0;
              *(v18 + 412) = 1;
              *(v18 + 143) = 0;
              *(v18 + 144) = 0x40000000;
              *(v18 + 148) = 1;
              *(v18 + 152) = 0x300000003;
              *(v18 + 160) = 0;
              *(v18 + 138) = 257;
              *(v18 + 784) = 0;
              *(v18 + 788) = 0;
              *(v18 + 476) = 0;
              *(v18 + 800) = v36;
              *(v18 + 816) = v37;
              *(v18 + 824) = v36;
              *(v18 + 840) = v37;
              *(v18 + 96) = -1;
              if (v92)
              {
                LODWORD(v105.start.value) = 31;
                if (a3 && a6)
                {
                  FigCFDictionaryGetInt32IfPresent();
                }

                v38 = FigDispatchQueueCreateWithPriority();
              }

              else
              {
                v38 = 0;
              }

              object = v38;
              if (a11 && (v39 = CFDictionaryGetValue(a11, @"Boss_LoopTimeRange")) != 0)
              {
                CMTimeRangeMakeFromDictionary(&v105, v39);
                v40 = *&v105.start.epoch;
                *(v18 + 200) = *&v105.start.value;
                *(v18 + 216) = v40;
                v41 = *&v105.duration.timescale;
              }

              else
              {
                v42 = MEMORY[0x1E6960C98];
                v43 = *(MEMORY[0x1E6960C98] + 16);
                *(v18 + 200) = *MEMORY[0x1E6960C98];
                *(v18 + 216) = v43;
                v41 = *(v42 + 32);
              }

              *(v18 + 232) = v41;
              FigSimpleMutexLock();
              if (*(v18 + 848))
              {
                v98 = 0;
                v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v89 = Mutable;
              if (a3 >= 1)
              {
                v46 = *v24;
                v47 = *MEMORY[0x1E695E4C0];
                v48 = a3;
                while (1)
                {
                  v105.start.value = 0;
                  if (FigPlaybackBossTrackGetTypeID_oneTimeOnly != -1)
                  {
                    FigPlaybackBossCreate_cold_2();
                  }

                  v49 = _CFRuntimeCreateInstance();
                  if (!v49)
                  {
                    v88 = 3451;
                    goto LABEL_143;
                  }

                  v50 = v49;
                  CFArrayAppendValue(*(v18 + 72), v49);
                  CFRelease(v50);
                  ++*(v18 + 80);
                  v51 = FigCFWeakReferenceHolderCreateWithReferencedObject();
                  *(v50 + 2) = v51;
                  if (!v51)
                  {
                    break;
                  }

                  v52 = *v14;
                  *(v50 + 6) = v52;
                  v53 = *(v18 + 40);
                  v54 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                  if (!v54)
                  {
                    value_low = 4294954514;
                    goto LABEL_93;
                  }

                  v55 = v54(v53, v52, v50 + 32, v50 + 72);
                  if (v55)
                  {
                    goto LABEL_92;
                  }

                  v56 = *a5;
                  *(v50 + 10) = *a5;
                  CFRetain(v56);
                  if (*(v18 + 135))
                  {
                    v57 = v46;
                  }

                  else
                  {
                    v57 = v47;
                  }

                  v58 = FigRenderPipelineGetFigBaseObject(*(v50 + 10));
                  v59 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v59)
                  {
                    v59(v58, @"ThrottleForBackground", v57);
                  }

                  v60 = FigRenderPipelineGetFigBaseObject(*(v50 + 10));
                  v61 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v61)
                  {
                    if (!v61(v60, @"NeedsToFlushWhenRateChanges", a1, &v105) && v105.start.value == v46)
                    {
                      v50[88] = 1;
                      *(v18 + 108) = 1;
                    }
                  }

                  if (v92)
                  {
                    *(v50 + 15) = object;
                    dispatch_retain(object);
                  }

                  v50[89] = 1;
                  ++a5;
                  ++v14;
                  if (!--v48)
                  {
                    goto LABEL_81;
                  }
                }

                v88 = 3457;
LABEL_143:
                FigPlaybackBossCreate_cold_3(v88, &v101);
                value_low = v101;
                goto LABEL_93;
              }

LABEL_81:
              v55 = bossSetCursorServiceInTrackList(*(v18 + 72), a6);
              if (v55)
              {
LABEL_92:
                value_low = v55;
LABEL_93:
                v63 = &unk_1EAF16000;
LABEL_94:
                Mutable = v89;
                v67 = object;
                FigSimpleMutexUnlock();
LABEL_95:
                CFRelease(v18);
                goto LABEL_128;
              }

              bossElectNewTimebaseStarter(v18);
              v63 = &unk_1EAF16000;
              if (a8)
              {
                if (a8 == 1)
                {
                  *(v18 + 120) = 0;
                  *(v18 + 128) = 1;
                  goto LABEL_100;
                }

                *(v18 + 120) = a8;
                CFRetain(a8);
              }

              else
              {
                HostTimeClock = CMClockGetHostTimeClock();
                v66 = CMTimebaseCreateWithSourceClock(a1, HostTimeClock, (v18 + 120));
                if (v66)
                {
LABEL_144:
                  value_low = v66;
                  goto LABEL_94;
                }
              }

              if (a9)
              {
                *(v18 + 88) = -1;
                v66 = CMTimebaseSetSourceClock(*(v18 + 120), a9);
                if (v66)
                {
                  goto LABEL_144;
                }
              }

              else
              {
                *(v18 + 88) = -2;
                bossElectNewPreferredClock(v18);
              }

              v98 = 0x40000000;
              if (bossGetVideoDecoderMaxSpeedThreshold(v18, &v98))
              {
                *(v18 + 144) = v98;
                *(v18 + 148) = 0;
                if (dword_1EAF16E78)
                {
                  v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }
              }

LABEL_100:
              v105.start.value = 0;
              if (a3 <= 0)
              {
LABEL_118:
                if (!*(v18 + 120) || (CMNotificationCenterGetDefaultLocalCenter(), v66 = CMNotificationCenterAddListener(), !v66))
                {
                  bossSetExpectScaledEdits(*(v18 + 72), (v18 + 104), (v18 + 105));
                  *(v18 + 106) = bosstrackListDoesContainVideoTrack(*(v18 + 72));
                  FigSimpleMutexUnlock();
                  *(v18 + 432) = 1634624887;
                  *(v18 + 792) = voucher_copy();
                  *a12 = v18;
                  Mutable = v89;
                  if (dword_1EAF16E78)
                  {
                    v98 = 0;
                    v81 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v82 = v98;
                    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                    {
                      v83 = v82;
                    }

                    else
                    {
                      v83 = v82 & 0xFFFFFFFE;
                    }

                    if (v83)
                    {
                      v84 = *a12;
                      v101 = 136315394;
                      v102 = "FigPlaybackBossCreate";
                      v103 = 2048;
                      v104 = v84;
                      _os_log_send_and_compose_impl();
                    }

                    v67 = object;
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    value_low = 0;
                  }

                  else
                  {
                    value_low = 0;
                    v67 = object;
                  }

LABEL_128:
                  if (Mutable)
                  {
                    CFRelease(Mutable);
                  }

                  if (v67)
                  {
                    dispatch_release(v67);
                  }

                  if (!value_low)
                  {
                    return value_low;
                  }

                  goto LABEL_133;
                }
              }

              else
              {
                v69 = 0;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(*(v18 + 72), v69);
                  v71 = FigRenderPipelineGetFigBaseObject(ValueAtIndex[10]);
                  v72 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v72)
                  {
                    v72(v71, @"Timebase", a1, &v105);
                  }

                  if (v105.start.value)
                  {
                    CFRelease(v105.start.value);
                    goto LABEL_112;
                  }

                  ++v69;
                }

                while (a3 != v69);
                v73 = 0;
                do
                {
                  v74 = CFArrayGetValueAtIndex(*(v18 + 72), v73);
                  v75 = *(v18 + 120);
                  v76 = FigRenderPipelineGetFigBaseObject(v74[10]);
                  v77 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v77)
                  {
                    v77(v76, @"Timebase", v75);
                  }

                  ++v73;
                }

                while (a3 != v73);
LABEL_112:
                v78 = 0;
                while (1)
                {
                  v79 = CFArrayGetValueAtIndex(*(v18 + 72), v78);
                  v66 = bossBuildMentorForTrack(v18, v79, a1, *(a6 + 8 * v78));
                  if (v66)
                  {
                    break;
                  }

                  *(v79 + 58) = 1000 * FigAtomicIncrement32();
                  v66 = bossAddNotificationListenersForTrack(v18, v79);
                  if (v66)
                  {
                    break;
                  }

                  v80 = *(v79 + 14);
                  if (v80)
                  {
                    v66 = FigMediaProcessorGo(v80);
                    if (v66)
                    {
                      break;
                    }
                  }

                  if (a3 == ++v78)
                  {
                    goto LABEL_118;
                  }
                }
              }

              goto LABEL_144;
            }

            value_low = v26;
            v67 = 0;
LABEL_152:
            v63 = &unk_1EAF16000;
            goto LABEL_95;
          }

          FigPlaybackBossCreate_cold_5(&v105);
        }

        else
        {
          FigPlaybackBossCreate_cold_6(&v105);
        }
      }

      else
      {
        FigPlaybackBossCreate_cold_7(&v105);
      }
    }

    else
    {
      FigPlaybackBossCreate_cold_8(&v105);
    }

    Mutable = 0;
    v67 = 0;
    value_low = LODWORD(v105.start.value);
    goto LABEL_152;
  }

LABEL_55:

  return FigSignalErrorAtGM();
}

uint64_t FigPlaybackBossGetTypeID()
{
  if (FigPlaybackBossGetTypeID_oneTimeOnly != -1)
  {
    FigPlaybackBossCreate_cold_1();
  }

  return gFigPlaybackBossTypeID;
}

uint64_t figPlaybackBossClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  gFigPlaybackBossTypeID = result;
  return result;
}

uint64_t figAudioQueueRenderPipelineCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v9 = FigSignalErrorAtGM();
LABEL_3:
    Parameter = v9;
    goto LABEL_11;
  }

  if (CFEqual(@"SourceSampleBufferQueue", a2))
  {
    v11 = *(DerivedStorage + 32);
LABEL_8:
    *a4 = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    Parameter = 0;
    goto LABEL_11;
  }

  if (CFEqual(@"Timebase", a2))
  {
    v11 = *(DerivedStorage + 112);
    goto LABEL_8;
  }

  if (!CFEqual(@"PerformanceDictionary", a2))
  {
    if (CFEqual(@"SoftwareVolume1", a2))
    {
      LODWORD(valuePtr) = 1065353216;
      if (*(DerivedStorage + 103))
      {
        LODWORD(valuePtr) = *(DerivedStorage + 104);
      }

      else
      {
        Parameter = FigAudioQueueGetParameter(*(DerivedStorage + 40), 1u, &valuePtr);
        if (Parameter)
        {
          goto LABEL_11;
        }
      }

      v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
      goto LABEL_19;
    }

    if (CFEqual(@"EQPreset", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_EQPreset;
LABEL_24:
      v9 = FigAudioQueueCopyProperty(v17, *v18, a3, a4);
      goto LABEL_3;
    }

    if (CFEqual(@"Muted", a2))
    {
      v22 = MEMORY[0x1E695E4D0];
      v23 = *(DerivedStorage + 103);
LABEL_35:
      if (!v23)
      {
        v22 = MEMORY[0x1E695E4C0];
      }

      v14 = *v22;
LABEL_38:
      v14 = CFRetain(v14);
      goto LABEL_19;
    }

    if (CFEqual(@"PreferredClock", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_Clock;
      goto LABEL_24;
    }

    if (CFEqual(@"IsRunning", a2))
    {
      v22 = MEMORY[0x1E695E4D0];
      v23 = *(DerivedStorage + 64);
      goto LABEL_35;
    }

    if (CFEqual(@"PipelineLatency", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_PipelineLatency;
      goto LABEL_24;
    }

    if (CFEqual(@"UnpauseLatencyEstimate", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_UnpauseLatencyEstimate;
      goto LABEL_24;
    }

    if (CFEqual(@"EndPresentationTimeForQueuedSamples", a2))
    {
      valuePtr = 0uLL;
      *&v41 = 0;
      CMBufferQueueGetEndPresentationTimeStamp(&valuePtr, *(DerivedStorage + 32));
      v17 = *(DerivedStorage + 40);
      if (v17 && (BYTE12(valuePtr) & 1) == 0)
      {
        v18 = kFigAudioQueueProperty_EndPresentationTimeForQueuedSamples;
        goto LABEL_24;
      }

      *values = valuePtr;
      *&v31 = v41;
      v14 = CMTimeCopyAsDictionary(values, a3);
LABEL_19:
      Parameter = 0;
      *a4 = v14;
      goto LABEL_11;
    }

    if (CFEqual(@"EndPresentationTimeForDecodedSamples", a2))
    {
      v17 = *(DerivedStorage + 40);
      if (v17)
      {
        v18 = kFigAudioQueueProperty_EndPresentationTimeForDecodedSamples;
        goto LABEL_24;
      }

      goto LABEL_100;
    }

    if (CFEqual(@"OfflineMixer", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_OfflineMixer;
      goto LABEL_24;
    }

    if (CFEqual(@"AudioDeviceUID", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_DeviceUID;
      goto LABEL_24;
    }

    if (CFEqual(@"AudioDeviceChannelMap", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_DeviceChannelMap;
      goto LABEL_24;
    }

    if (CFEqual(@"STSLabel", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_STSLabel;
      goto LABEL_24;
    }

    if (CFEqual(@"IsTimebaseStarter", a2))
    {
      v22 = MEMORY[0x1E695E4D0];
      v23 = *(DerivedStorage + 65);
      goto LABEL_35;
    }

    if (CFEqual(@"AudioProcessingUnits", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_AudioProcessingUnits;
      goto LABEL_24;
    }

    if (CFEqual(@"AudioCurves", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_AudioCurves;
      goto LABEL_24;
    }

    if (CFEqual(@"SecondaryAudioCurves", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_SecondaryAudioCurves;
      goto LABEL_24;
    }

    if (CFEqual(@"HandleFormatDescriptionChanges", a2))
    {
      v22 = MEMORY[0x1E695E4D0];
      v23 = *(DerivedStorage + 92);
      goto LABEL_35;
    }

    if (CFEqual(@"IgnoreAudioDeviceLatencyInStartupSync", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_IgnoreAudioDeviceLatencyInStartupSync;
      goto LABEL_24;
    }

    if (CFEqual(@"ExpectScaledEdits", a2))
    {
      v26 = MEMORY[0x1E695E4D0];
      if (!*(DerivedStorage + 100))
      {
        v26 = MEMORY[0x1E695E4C0];
      }
    }

    else
    {
      if (CFEqual(@"IsPausedForConfigurationChange", a2))
      {
        v17 = *(DerivedStorage + 40);
        v18 = kFigAudioQueueProperty_IsPausedForConfigurationChange;
        goto LABEL_24;
      }

      if (!CFEqual(@"SpatializationEnabled", a2))
      {
        if (CFEqual(@"MXSession", a2))
        {
          v17 = *(DerivedStorage + 40);
          v18 = kFigAudioQueueProperty_MXSession;
          goto LABEL_24;
        }

        if (CFEqual(@"WillTrimShortDurationSamples", a2))
        {
          v17 = *(DerivedStorage + 40);
          v18 = kFigAudioQueueProperty_WillTrimShortDurationSamples;
          goto LABEL_24;
        }

        if (CFEqual(@"EmploysHardwarePassthrough", a2))
        {
          v17 = *(DerivedStorage + 40);
          v18 = kFigAudioQueueProperty_EmploysHardwarePassthrough;
          goto LABEL_24;
        }

        if (CFEqual(@"LoggingIdentifier", a2))
        {
          if (a1)
          {
            v27 = (CMBaseObjectGetDerivedStorage() + 164);
          }

          else
          {
            v27 = "";
          }

          v14 = CFStringCreateWithCString(a3, v27, 0x600u);
          goto LABEL_19;
        }

LABEL_100:
        Parameter = 4294954446;
        goto LABEL_11;
      }

      v26 = MEMORY[0x1E695E4D0];
      if ((*(DerivedStorage + 97) & 1) == 0)
      {
        v26 = MEMORY[0x1E695E4C0];
      }
    }

    v14 = *v26;
    if (!*v26)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  memset(v29, 0, sizeof(v29));
  if (*v13)
  {
    Parameter = 4294954444;
  }

  else
  {
    v15 = *(v13 + 40);
    if (v15)
    {
      v16 = FigAudioQueueCopyPerformanceDictionary(v15, v29) == 0;
    }

    else
    {
      v16 = 0;
    }

    v19 = CMBaseObjectGetDerivedStorage();
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    valuePtr = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *values = 0u;
    v31 = 0u;
    if (*v19)
    {
      Parameter = FigCFCreateCombinedDictionary();
      if (!v16)
      {
        goto LABEL_11;
      }

      v20 = 1;
    }

    else
    {
      if (*(v19 + 148))
      {
        v28 = *(v19 + 136);
        v28.value = CMTimeGetSeconds(&v28);
        *&valuePtr = @"MaxStartDelay";
        values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &v28);
        v21 = CFDictionaryCreate(a3, &valuePtr, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFRelease(values[0]);
      }

      else
      {
        v21 = CFDictionaryCreate(a3, &valuePtr, values, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      *(v29 | (8 * v16)) = v21;
      v20 = v16 + 1;
      Parameter = FigCFCreateCombinedDictionary();
    }

    v24 = v29;
    do
    {
      v25 = *v24++;
      CFRelease(v25);
      --v20;
    }

    while (v20);
  }

LABEL_11:
  FigSimpleMutexUnlock();
  return Parameter;
}

uint64_t FigAudioQueueCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FigAudioQueueCopyProperty_cold_3(&time);
    return LODWORD(time.value);
  }

  if (!a4)
  {
    FigAudioQueueCopyProperty_cold_2(&time);
    return LODWORD(time.value);
  }

  *a4 = 0;
  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigAudioQueueCopyProperty_cold_1(&time);
    value_low = LODWORD(time.value);
    goto LABEL_12;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
  if (!CFEqual(a2, @"EndPresentationTimeForQueuedSamples"))
  {
    if (CFEqual(a2, @"EndPresentationTimeForDecodedSamples"))
    {
      FigSimpleMutexLock();
      time = *(ValueAtIndex + 508);
      *a4 = CMTimeCopyAsDictionary(&time, a3);
      FigSimpleMutexUnlock();
      value_low = 0;
      goto LABEL_12;
    }

    if (CFEqual(a2, @"Clock"))
    {
      v11 = *(ValueAtIndex + 78);
      if (!v11)
      {
        value_low = 4294954356;
        goto LABEL_12;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"PipelineLatency"))
    {
      time = **&MEMORY[0x1E6960C70];
      if (*(*(ValueAtIndex + 8) + 8) == 1819304813)
      {
        v14 = 1;
        v15 = 10;
      }

      else
      {
        v14 = 25;
        v15 = 100;
      }

      CMTimeMake(&time, v14, v15);
      if (ValueAtIndex[120])
      {
        lhs = time;
        rhs = *(ValueAtIndex + 108);
        CMTimeAdd(&v30, &lhs, &rhs);
        time = v30;
      }

      v30 = time;
      v10 = &v30;
      goto LABEL_7;
    }

    if (CFEqual(a2, @"UnpauseLatencyEstimate"))
    {
      time = **&MEMORY[0x1E6960C70];
      subaq_getAudioQueueLatencyFigTime();
      value_low = v19;
      v30 = time;
      v11 = CMTimeCopyAsDictionary(&v30, a3);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"DynamicLatency"))
    {
      lhs = **&MEMORY[0x1E6960CC0];
      if (!*(a1 + 792) || !ValueAtIndex[785])
      {
        goto LABEL_51;
      }

      rhs.value = 0;
      v27 = 8;
      if (FigAudioQueueTimingShimGetProperty(*(ValueAtIndex + 5), 0x7164646Cu, &rhs, &v27))
      {
        if (dword_1EAF16C30 < 5)
        {
LABEL_51:
          *&time.value = *&lhs.value;
          epoch = lhs.epoch;
          goto LABEL_6;
        }
      }

      else
      {
        CMTimeMakeWithSeconds(&lhs, *&rhs.value, 1000000000);
        if (dword_1EAF16C30 < 5)
        {
          goto LABEL_51;
        }
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_51;
    }

    if (CFEqual(a2, @"OfflineMixer"))
    {
      if (!*(a1 + 720))
      {
        value_low = 0;
        *a4 = 0;
        goto LABEL_12;
      }

      v11 = FigCFWeakReferenceHolderCopyReferencedObject();
      goto LABEL_8;
    }

    if (CFEqual(a2, @"DeviceUID"))
    {
      time.value = 0;
      LODWORD(v30.value) = 8;
      v17 = *(ValueAtIndex + 5);
      v18 = 1634820964;
      goto LABEL_42;
    }

    if (CFEqual(a2, @"STSLabel"))
    {
      time.value = 0;
      LODWORD(v30.value) = 8;
      v17 = *(ValueAtIndex + 5);
      v18 = 1937011564;
LABEL_42:
      value_low = FigAudioQueueTimingShimGetProperty(v17, v18, &time, &v30);
      if (!value_low)
      {
        *a4 = time.value;
      }

      goto LABEL_12;
    }

    if (CFEqual(a2, @"AllowedToUseHardware"))
    {
      v20 = MEMORY[0x1E695E4C0];
LABEL_50:
      v11 = *v20;
LABEL_16:
      v11 = CFRetain(v11);
      goto LABEL_8;
    }

    if (CFEqual(a2, @"MXSession"))
    {
      v11 = *(a1 + 256);
      if (!v11)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"TimebaseRate"))
    {
      v21 = *MEMORY[0x1E695E480];
      p_time = (a1 + 416);
      v23 = kCFNumberFloat32Type;
LABEL_57:
      v11 = CFNumberCreate(v21, v23, p_time);
      goto LABEL_8;
    }

    if (CFEqual(a2, @"AudioProcessingUnits"))
    {
      v11 = *(a1 + 688);
      if (!v11)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"AudioCurves"))
    {
      v11 = *(a1 + 656);
      if (!v11)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"SecondaryAudioCurves"))
    {
      v11 = *(a1 + 664);
      if (!v11)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"DiscardSampleBuffers"))
    {
      v20 = MEMORY[0x1E695E4D0];
      v24 = *(a1 + 312);
    }

    else if (CFEqual(a2, @"IsPausedForConfigurationChange"))
    {
      v20 = MEMORY[0x1E695E4D0];
      v24 = *(a1 + 785);
    }

    else
    {
      if (CFEqual(a2, @"EQPreset"))
      {
        LODWORD(time.value) = -1;
        subaq_getEQPreset(a1);
        v21 = *MEMORY[0x1E695E480];
        p_time = &time;
        v23 = kCFNumberIntType;
        goto LABEL_57;
      }

      if (CFEqual(a2, @"WillTrimShortDurationSamples"))
      {
        v20 = MEMORY[0x1E695E4D0];
        v24 = ValueAtIndex[592];
      }

      else
      {
        if (CFEqual(a2, @"EmploysHardwarePassthrough"))
        {
          v20 = MEMORY[0x1E695E4D0];
          v25 = MEMORY[0x1E695E4C0];
          v26 = (*(a1 + 48) & 4) == 0;
LABEL_76:
          if (v26)
          {
            v20 = v25;
          }

          goto LABEL_50;
        }

        if (!CFEqual(a2, @"IgnoreAudioDeviceLatencyInStartupSync"))
        {
          value_low = 4294954353;
          goto LABEL_12;
        }

        v20 = MEMORY[0x1E695E4D0];
        v24 = *(a1 + 654);
      }
    }

    v25 = MEMORY[0x1E695E4C0];
    v26 = v24 == 0;
    goto LABEL_76;
  }

  *&time.value = *(ValueAtIndex + 484);
  epoch = *(ValueAtIndex + 500);
LABEL_6:
  time.epoch = epoch;
  v10 = &time;
LABEL_7:
  v11 = CMTimeCopyAsDictionary(v10, a3);
LABEL_8:
  value_low = 0;
LABEL_9:
  *a4 = v11;
LABEL_12:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t FigSampleBufferConsumerCreateForBufferQueue(uint64_t a1, __int128 *a2, __int128 *a3, void *a4)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  v5 = *a3;
  v6 = *(a3 + 2);
  return FigSampleBufferConsumerCreateForBufferQueue2(a1, &v7, 0, &v5, 0, a4);
}

uint64_t RegisterFigSampleBufferConsumerType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t figSampleGeneratorCreateForFormatReaderCommon(const void *a1, const void *a2, const void *a3, int a4, char a5, const void *a6, uint64_t a7, CMTime *a8, char a9, const void *a10, void *a11)
{
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  if (a11)
  {
    v18 = *MEMORY[0x1E695E480];
    FigSampleGeneratorGetClassID();
    v19 = CMDerivedObjectCreate();
    if (v19)
    {
      goto LABEL_3;
    }

    allocator = v18;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = a1;
    if (a1)
    {
      CFRetain(a1);
    }

    if (a2)
    {
      v23 = CFRetain(a2);
    }

    else
    {
      v23 = 0;
    }

    *(DerivedStorage + 16) = v23;
    v24 = a3;
    if (a3)
    {
      v25 = CFRetain(a3);
    }

    else
    {
      v25 = 0;
    }

    *(DerivedStorage + 24) = v25;
    *(DerivedStorage + 32) = a5;
    if (a6)
    {
      *(DerivedStorage + 40) = CFRetain(a6);
    }

    *(DerivedStorage + 56) = a7;
    time = *a8;
    CMTimeConvertScale(&v46, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *(DerivedStorage + 64) = v46;
    v26 = *(DerivedStorage + 56);
    if (v26)
    {
      CFRetain(v26);
    }

    if (a4)
    {
      *(DerivedStorage + 33) = 1;
    }

    if (a10)
    {
      *(DerivedStorage + 48) = CFRetain(a10);
    }

    else
    {
      v19 = FigSampleGeneratorDataSourceCacheCreate(a1, 0, (DerivedStorage + 48));
      if (v19)
      {
LABEL_3:
        v20 = v19;
        if (v50)
        {
          CFRelease(v50);
        }

        return v20;
      }
    }

    if (!*(DerivedStorage + 32))
    {
      if (gSGFFRCommonMemoryPool != -1)
      {
        figSampleGeneratorCreateForFormatReaderCommon_cold_1();
      }

      FigSimpleMutexLock();
      v27 = MEMORY[0x19A8D0E00](&unk_1EAF18D38);
      if (!v27 && byte_1EAF18D40)
      {
        Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, *MEMORY[0x1E69628C8], @"SampleGeneratorForFormatReader-SampleData");
        v27 = CMMemoryPoolCreate(Mutable);
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        FigCFWeakReferenceStore();
      }

      FigSimpleMutexUnlock();
      *(DerivedStorage + 8) = v27;
      v24 = a3;
    }

    v29 = MEMORY[0x1E6960CC0];
    v30 = *MEMORY[0x1E6960CC0];
    *(DerivedStorage + 88) = *MEMORY[0x1E6960CC0];
    v31 = *(v29 + 16);
    *(DerivedStorage + 104) = v31;
    *(DerivedStorage + 112) = v30;
    *(DerivedStorage + 128) = v31;
    if ((a9 & 2) != 0)
    {
      *(DerivedStorage + 34) = 1;
    }

    if (v24)
    {
      v41 = v30;
      FigBaseObject = FigTrackReaderGetFigBaseObject(v24);
      v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v33)
      {
        v33(FigBaseObject, @"AdvanceDecodeDelta", allocator, &v49);
        if (v49)
        {
          CMTimeMakeFromDictionary(&v46, v49);
          CFRelease(v49);
          time = v46;
          *&time2.value = v41;
          time2.epoch = v31;
          if (CMTimeCompare(&time, &time2) >= 1)
          {
            v34 = (DerivedStorage + 88);
            if ((a9 & 1) == 0)
            {
              v34 = (DerivedStorage + 112);
            }

            *v34 = v46;
          }
        }
      }

      v35 = FigTrackReaderGetFigBaseObject(a3);
      v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v36)
      {
        v36(v35, @"HasAudioSampleDependencyInformation", allocator, &v48);
        v36 = v48;
      }

      v38 = *MEMORY[0x1E695E4D0];
      if (v36 == *MEMORY[0x1E695E4D0])
      {
        *(DerivedStorage + 35) = 1;
      }

      v39 = FigTrackReaderGetFigBaseObject(a3);
      v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v40)
      {
        v40(v39, @"HasSeamSamples", allocator, &v47);
        v37 = v47;
      }

      else
      {
        v37 = 0;
      }

      if (v37 == v38)
      {
        *(DerivedStorage + 36) = 1;
      }
    }

    else
    {
      v37 = 0;
    }

    *a11 = v50;
    v50 = 0;
    if (v48)
    {
      CFRelease(v48);
      v37 = v47;
    }

    if (v37)
    {
      CFRelease(v37);
    }

    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t RegisterFigSampleGeneratorType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t AudioMentorNew(const void *a1, const void *a2, const void *a3, const __CFDictionary *a4, void *a5)
{
  values = @"com.apple.coremedia.audiomentor";
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a5)
        {
          fig_note_initialize_category_with_default_work_cf();
          fig_note_initialize_category_with_default_work_cf();
          v9 = malloc_type_calloc(0x168uLL, 1uLL, 0x10E00403AB65953uLL);
          if (v9)
          {
            v10 = v9;
            v9[1] = CFRetain(a1);
            v10[2] = CFRetain(a2);
            v10[3] = CFRetain(a3);
            *(v10 + 41) = 0;
            if (a4)
            {
              Value = CFDictionaryGetValue(a4, @"SampleBufferCryptor");
              v10[6] = Value;
              if (Value)
              {
                CFRetain(Value);
              }

              if (_os_feature_enabled_impl())
              {
                v12 = *MEMORY[0x1E695E4D0];
                v13 = v12 == CFDictionaryGetValue(a4, @"OptimizeSampleCursorIPCForPower");
              }

              else
              {
                v13 = 0;
              }

              *(v10 + 41) = v13;
            }

            FigCFDictionaryGetInt32IfPresent();
            v10[10] = FigSemaphoreCreate();
            v10[11] = FigSemaphoreCreate();
            v10[12] = FigSimpleMutexCreate();
            v10[9] = FigSimpleMutexCreate();
            v10[15] = FigSemaphoreCreate();
            *(v10 + 11) = 0;
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterAddListener();
            v15 = v10[3];
            v16 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v16)
            {
              v17 = v16(v15, audioMentorLowWaterTrigger, v10, v10 + 4);
              if (!v17)
              {
                *(v10 + 40) = 1;
                *(v10 + 28) = 0;
                v18 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                v17 = FigThreadCreate();
                if (!v17)
                {
                  *a5 = v10;
                  v10 = 0;
                }

                if (v18)
                {
                  CFRelease(v18);
                }

                goto LABEL_24;
              }
            }

            else
            {
              v17 = 4294954514;
            }

            FigSignalErrorAtGM();
LABEL_24:
            AudioMentorDispose(v10);
            return v17;
          }
        }
      }
    }
  }

  return FigSignalErrorAtGM();
}

uint64_t sbcbq_installLowWaterTrigger(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 60) & 0x1D) == 1)
  {
    FigSimpleMutexLock();
    *(DerivedStorage + 112) = a2;
    *(DerivedStorage + 120) = a3;
    FigSimpleMutexUnlock();
    v9 = *(DerivedStorage + 136);
    if (*(DerivedStorage + 72))
    {
      v11 = *(DerivedStorage + 48);
      result = FigBufferQueueInstallTriggerWithTimeAndIntegerThresholds();
    }

    else
    {
      v11 = *(DerivedStorage + 48);
      result = CMBufferQueueInstallTrigger(v9, sbcbq_LowWater, a1, 2, &v11, (DerivedStorage + 128));
    }
  }

  else
  {
    result = 0;
  }

  *a4 = DerivedStorage + 104;
  return result;
}

uint64_t sbcbq_LowWater()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 8))
  {
    v1 = result;
    FigSimpleMutexLock();
    v2 = *(v1 + 112);
    if (v2)
    {
      v2(*(v1 + 120));
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t audioMentorThread(uint64_t a1)
{
  cf = 0;
  if (*(a1 + 41))
  {
    FigFormatReaderXPCRemoteEnsureEfficientIPCFromCurrentThread(*(a1 + 44), &cf);
  }

  if (*(a1 + 112) == 4)
  {
    goto LABEL_4;
  }

  v218 = (a1 + 308);
  v215 = (a1 + 332);
  allocator = *MEMORY[0x1E695E480];
  v201 = *MEMORY[0x1E695E4D0];
  key = *MEMORY[0x1E6960518];
  v194 = *MEMORY[0x1E69605A0];
  v195 = *MEMORY[0x1E6960598];
  v197 = *MEMORY[0x1E69604F0];
  v198 = *MEMORY[0x1E69604E8];
  v193 = *MEMORY[0x1E695E4C0];
  v199 = *MEMORY[0x1E6960510];
  v196 = *MEMORY[0x1E69604D0];
  v189 = *MEMORY[0x1E6960490];
  while (1)
  {
    FigSimpleMutexLock();
    v4 = *(a1 + 112);
    v5 = *(a1 + 128);
    *&v227.value = *(a1 + 136);
    v6 = *(a1 + 160);
    v227.epoch = *(a1 + 152);
    v226 = *(a1 + 168);
    v7 = *(a1 + 268);
    v9 = *(a1 + 192);
    v8 = *(a1 + 196);
    v11 = *(a1 + 200);
    v10 = *(a1 + 204);
    v12 = *(a1 + 208);
    v224 = *(a1 + 212);
    v225 = *(a1 + 228);
    v13 = *(a1 + 236);
    v14 = *(a1 + 237);
    v15 = *(a1 + 238);
    v16 = *(a1 + 239);
    v17 = *(a1 + 248);
    v219 = *(a1 + 240);
    v18 = *(a1 + 256);
    *(a1 + 128) = 0;
    *(a1 + 160) = 0;
    *(a1 + 288) = 0;
    *(a1 + 116) = 0;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    *(a1 + 240) = 0;
    if (!v4)
    {
      if (*(a1 + 117))
      {
        *(a1 + 117) = 0;
        FigSemaphoreSignal();
      }

      FigMemoryBarrier();
      FigSimpleMutexUnlock();
      v20 = v17;
      v23 = v219;
      if (v17)
      {
        audioMentorEnqueueBufferConsumedMarker(a1, v17);
      }

      goto LABEL_164;
    }

    v209 = v13;
    v211 = v10;
    value = v12;
    v213 = v8;
    v207 = v14;
    v217 = v15;
    FigMemoryBarrier();
    FigSimpleMutexUnlock();
    if ((v4 - 1) >= 2)
    {
      v20 = v17;
      v23 = v219;
      if (v4 != 3)
      {
        goto LABEL_164;
      }

      *&v235[0] = 0;
      *(a1 + 264) = v9;
      if ((v213 - 3) < 0xFFFFFFFE)
      {
        *(a1 + 305) = 1;
        if (!v219)
        {
LABEL_33:
          if (v17)
          {
            v26 = audioMentorEnqueueBufferConsumedMarker(a1, v17);
          }

          else
          {
            v26 = 0;
          }

          v17 = 0;
LABEL_109:
          if (v217)
          {
            FigSemaphoreSignal();
          }

          goto LABEL_111;
        }

        goto LABEL_31;
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 72))
      {
        v27 = *(a1 + 24);
        v28 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v28)
        {
          v28(v27);
        }
      }

      *(a1 + 305) = 1;
      values[0] = 0;
      v29 = CMSampleBufferCreate(allocator, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, v235);
      if (v29)
      {
        v26 = v29;
        goto LABEL_88;
      }

      ++*(a1 + 272);
      values[0] = CFNumberCreate(allocator, kCFNumberIntType, (a1 + 272));
      v51 = CFDictionaryCreate(allocator, MEMORY[0x1E6960580], values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CMSetAttachment(*&v235[0], key, values[0], 1u);
      v52 = *(a1 + 24);
      v53 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v53)
      {
        v53(v52, v195, v51, 0);
      }

      v54 = *(a1 + 24);
      v55 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v55)
      {
        v55(v54, v194, 0, 0);
      }

      if (values[0])
      {
        CFRelease(values[0]);
      }

      if (v51)
      {
        CFRelease(v51);
      }

      if (v217)
      {
        FigSemaphoreSignal();
      }

      v56 = *(a1 + 24);
      v57 = *&v235[0];
      v58 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v58)
      {
        v26 = v58(v56, v57);
        if (!v26)
        {
          v217 = 0;
          if (!v219)
          {
            goto LABEL_33;
          }

LABEL_31:
          v24 = *(a1 + 24);
          v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v25)
          {
            v26 = v25(v24, v219);
            if (!v26)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v26 = -12782;
          }

LABEL_88:
          FigSignalErrorAtGM();
          goto LABEL_109;
        }
      }

      else
      {
        v26 = -12782;
      }

      FigSignalErrorAtGM();
LABEL_111:
      audioMentorThreadFinishPreroll(a1, 0, v18);
      if (!*a1)
      {
        v59 = @"MentorStoppingDueToCompletion";
        if (v26)
        {
          v59 = @"MentorStoppingDueToError";
        }

        if (v26 == -1)
        {
          v60 = 0;
        }

        else
        {
          v60 = v26;
        }

        if (v26 == -1)
        {
          v61 = @"MentorResettingDueToModeSwitch";
        }

        else
        {
          v61 = v59;
        }

        v62 = FigMentorNotificationPayloadCreate(v61, v18, v60, *(a1 + 288), v17, 0);
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        if (v62)
        {
          CFRelease(v62);
        }
      }

      if (*&v235[0])
      {
        CFRelease(*&v235[0]);
      }

      goto LABEL_164;
    }

    v216 = v4;
    v223 = v227;
    v222 = v226;
    v220 = v224;
    v221 = v225;
    v243 = v6;
    v244[0] = v5;
    valuePtr = v11;
    v241 = 0;
    v233 = 0;
    v234 = 0;
    v19 = *MEMORY[0x1E695FF58];
    if ((v9 & 0xFFFFFFFD) == 1 && v19 == 1)
    {
      kdebug_trace();
      v19 = *MEMORY[0x1E695FF58];
    }

    v20 = v17;
    if (v19 == 1)
    {
      kdebug_trace();
    }

    *(a1 + 292) = 0;
    *(a1 + 264) = v9;
    *(a1 + 268) = v7;
    v21 = *(a1 + 280);
    *(a1 + 280) = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    values[0] = 0;
    values[1] = 0;
    v240 = 0;
    memset(v235, 0, sizeof(v235));
    v236 = 0u;
    memset(v237, 0, sizeof(v237));
    v22 = v5;
    v238 = 0;
    if (v16)
    {
      time1 = v223;
      *&time2.value = *v218;
      time2.epoch = *(a1 + 324);
      if (CMTimeCompare(&time1, &time2))
      {
        v22 = v244[0];
        goto LABEL_43;
      }

      v22 = v244[0];
      if ((*(a1 + 344) & 0x1D) == 1)
      {
        if (v244[0])
        {
          goto LABEL_44;
        }

        *&v223.value = *v215;
        v223.epoch = *(a1 + 348);
LABEL_58:
        time1 = v223;
        CursorForPresentationTimeStamp = audioMentorCreateCursorForPresentationTimeStamp(a1, v209, &time1.value, v244);
        if (CursorForPresentationTimeStamp)
        {
          goto LABEL_59;
        }

        if (v4 != 2)
        {
LABEL_84:
          v203 = 1;
          goto LABEL_45;
        }

        memset(&time1, 0, sizeof(time1));
        v48 = v244[0];
        v49 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v49)
        {
          v33 = v49(v48, &time1);
          if (v33)
          {
            goto LABEL_125;
          }

          if ((time1.flags & 0x1D) == 1)
          {
            time2 = time1;
            lhs = v223;
            if (CMTimeCompare(&time2, &lhs))
            {
              goto LABEL_84;
            }

            v179 = v244[0];
            v180 = *(*(CMBaseObjectGetVTable() + 16) + 168);
            if (v180)
            {
              v33 = v180(v179, -1, 0);
              if (v33)
              {
                goto LABEL_125;
              }

              goto LABEL_84;
            }

            v33 = -12782;
LABEL_125:
            FigSignalErrorAtGM();
          }

          else
          {
            CursorForPresentationTimeStamp = FigSignalErrorAtGM();
LABEL_59:
            v33 = CursorForPresentationTimeStamp;
          }

          v212 = 0;
          v203 = 0;
          goto LABEL_127;
        }

        v33 = -12782;
        goto LABEL_125;
      }
    }

LABEL_43:
    if (!v22)
    {
      goto LABEL_58;
    }

LABEL_44:
    v203 = 0;
LABEL_45:
    if ((v223.flags & 0x1D) != 1)
    {
      v36 = v244[0];
      v37 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (!v37)
      {
        v33 = -12782;
        goto LABEL_77;
      }

      v33 = v37(v36, &v223);
      if (v33)
      {
        goto LABEL_77;
      }

      if ((v223.flags & 0x1D) != 1)
      {
LABEL_249:
        v30 = FigSignalErrorAtGM();
LABEL_250:
        v33 = v30;
LABEL_78:
        v212 = 0;
LABEL_127:
        v42 = 0;
LABEL_128:
        v63 = v20;
        goto LABEL_129;
      }

      if (v4 == 2)
      {
        v191 = *MEMORY[0x1E6960CC0];
        *&time1.value = *MEMORY[0x1E6960CC0];
        v38 = *(MEMORY[0x1E6960CC0] + 16);
        time1.epoch = v38;
        v39 = v244[0];
        v40 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v40)
        {
          v41 = v40(v39, &time1);
          if (!v41)
          {
            v20 = v17;
            if ((time1.flags & 0x1D) != 1)
            {
              goto LABEL_249;
            }

            goto LABEL_68;
          }

          v33 = v41;
          if (v41 != -12782)
          {
            FigSignalErrorAtGM();
            v20 = v17;
            goto LABEL_78;
          }
        }

        *&time1.value = v191;
        time1.epoch = v38;
        v20 = v17;
LABEL_68:
        lhs = v223;
        rhs = time1;
        CMTimeAdd(&time2, &lhs, &rhs);
        v223 = time2;
      }
    }

    if (v243 || (v222.flags & 0x1D) != 1)
    {
      v42 = 0;
    }

    else
    {
      time1 = v222;
      v30 = audioMentorCreateCursorForPresentationTimeStamp(a1, v209, &time1.value, &v243);
      if (v30)
      {
        goto LABEL_250;
      }

      if (v4 == 1)
      {
        memset(&time1, 0, sizeof(time1));
        v31 = v243;
        v32 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v32)
        {
          v33 = -12782;
          goto LABEL_77;
        }

        v33 = v32(v31, &time1);
        if (v33)
        {
          goto LABEL_77;
        }

        if ((time1.flags & 0x1D) != 1)
        {
          goto LABEL_249;
        }

        time2 = time1;
        lhs = v222;
        if (!CMTimeCompare(&time2, &lhs))
        {
          v186 = FigSampleCursorStepInDecodeOrderAndReportStepsTaken(v243, -1, 0);
          if (v186)
          {
            v33 = v186;
LABEL_77:
            FigSignalErrorAtGM();
            goto LABEL_78;
          }
        }

        if (value && v243)
        {
          PresentationTimeStamp = FigSampleCursorGetPresentationTimeStamp(v243, &time1);
          if (PresentationTimeStamp)
          {
            v33 = PresentationTimeStamp;
            goto LABEL_77;
          }

          if ((time1.flags & 0x1D) != 1)
          {
            goto LABEL_249;
          }

          v187 = FigSampleCursorStepInDecodeOrderAndReportStepsTaken(v243, value, 0);
          if (v187)
          {
            v33 = v187;
            goto LABEL_77;
          }
        }
      }

      v42 = 1;
    }

    FigBaseObject = FigSampleCursorGetFigBaseObject(v244[0]);
    v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v44)
    {
      v44(FigBaseObject, @"GradualDecoderRefresh", allocator, &v234);
    }

    v45 = v234;
    if (v234)
    {
      CFNumberGetValue(v234, kCFNumberSInt32Type, &valuePtr);
      v46 = v234;
      v47 = v4;
      if (v4 == 2)
      {
        valuePtr = 0;
        if (v234)
        {
          CFRelease(v234);
          v47 = 2;
          v46 = 0;
          v211 = 0;
          v234 = 0;
        }

        else
        {
          v211 = 0;
        }

        goto LABEL_181;
      }

      v50 = 0;
    }

    else
    {
      v47 = v4;
      if (v4 == 2)
      {
        v46 = 0;
        v211 = 0;
        valuePtr = 0;
LABEL_181:
        v50 = 1;
        goto LABEL_182;
      }

      v50 = 0;
      v46 = 0;
    }

LABEL_182:
    if (valuePtr)
    {
      if (!v46)
      {
        v75 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
        v47 = v4;
        v234 = v75;
        if (!v75)
        {
          FigSignalErrorAtGM();
          v212 = 0;
          v33 = 0;
          goto LABEL_128;
        }
      }
    }

    valuea = v45;
    if (v47 != 1)
    {
      goto LABEL_196;
    }

    if (!v243)
    {
      goto LABEL_196;
    }

    v76 = v244[0];
    time1.value = 0;
    v77 = *(*(CMBaseObjectGetVTable() + 16) + 160);
    if (!v77)
    {
      goto LABEL_196;
    }

    v77(v76, &time1);
    if (!time1.value)
    {
      goto LABEL_196;
    }

    if (CMFormatDescriptionGetMediaType(time1.value) == 1936684398)
    {
      time2.value = 0;
      FormatList = CMAudioFormatDescriptionGetFormatList(time1.value, &time2);
      if (FormatList)
      {
        if (time2.value >= 0x30uLL)
        {
          v169 = time2.value / 0x30uLL;
          p_mFormatID = &FormatList->mASBD.mFormatID;
          while (1)
          {
            v79 = 0;
            v172 = *p_mFormatID;
            p_mFormatID += 12;
            v171 = v172;
            if (v172 > 1885430639)
            {
              break;
            }

            if (v171 > 1667326823)
            {
              if (v171 > 1668641632)
              {
                if (v171 == 1668641633)
                {
                  goto LABEL_193;
                }

                v177 = 1885430632;
              }

              else
              {
                if (v171 == 1667326824)
                {
                  goto LABEL_193;
                }

                v177 = 1667326832;
              }

LABEL_407:
              if (v171 == v177)
              {
                goto LABEL_193;
              }

              goto LABEL_408;
            }

            v173 = v171 - 1633772389;
            v174 = v173 > 0xB;
            v175 = (1 << v173) & 0x80F;
            if (!v174 && v175 != 0)
            {
              goto LABEL_193;
            }

LABEL_408:
            v79 = 1;
            if (!--v169)
            {
              goto LABEL_193;
            }
          }

          if (v171 <= 1903522656)
          {
            if (v171 > 1902207847)
            {
              if (v171 == 1902207848)
              {
                goto LABEL_193;
              }

              v177 = 1902207856;
            }

            else
            {
              if (v171 == 1885430640)
              {
                goto LABEL_193;
              }

              v177 = 1886745441;
            }
          }

          else if (v171 <= 2053202791)
          {
            if (v171 == 1903522657)
            {
              goto LABEL_193;
            }

            v177 = 1970495843;
          }

          else
          {
            if (v171 == 2053202792 || v171 == 2053202800)
            {
              goto LABEL_193;
            }

            v177 = 2054517601;
          }

          goto LABEL_407;
        }
      }
    }

    v79 = 1;
LABEL_193:
    if (time1.value)
    {
      CFRelease(time1.value);
    }

    if ((v79 & 1) == 0)
    {
      v112 = v243;
      v113 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (!v113)
      {
        v33 = -12782;
LABEL_281:
        FigSignalErrorAtGM();
        goto LABEL_234;
      }

      v33 = v113(v112, 1, 0);
      if (v33)
      {
        goto LABEL_281;
      }
    }

LABEL_196:
    v80 = v244[0];
    time1.value = 0;
    v210 = v42;
    if (v211)
    {
      v81 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v81)
      {
        v82 = v81(v80, &time1);
        v83 = time1.value;
        if (v82)
        {
          v89 = 1;
          v88 = v211;
          if (time1.value)
          {
LABEL_204:
            CFRelease(v83);
            v88 = v211;
          }
        }

        else
        {
          time2.value = 0;
          v84 = ~v211;
          v85 = *(*(CMBaseObjectGetVTable() + 16) + 168);
          if (v85)
          {
            v86 = v85(v83, v84, &time2) != 0;
            v87 = time2.value;
          }

          else
          {
            v87 = 0;
            v86 = 1;
          }

          v88 = v211;
          v89 = v86 || v87 == v84;
          v83 = time1.value;
          if (time1.value)
          {
            goto LABEL_204;
          }
        }

        if ((v89 & 1) == 0)
        {
          goto LABEL_207;
        }
      }
    }

    v88 = 0;
LABEL_207:
    v90 = v244[0];
    v91 = valuePtr;
    time1.value = 0;
    v92 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v92)
    {
      v33 = -12782;
      goto LABEL_231;
    }

    v192 = v50;
    v93 = v92(v90, &time1);
    if (v93)
    {
      v33 = v93;
LABEL_231:
      v42 = v210;
LABEL_232:
      if (time1.value)
      {
        CFRelease(time1.value);
      }

LABEL_234:
      v212 = 0;
      goto LABEL_128;
    }

    if (v91 <= v88)
    {
      v94 = v88;
    }

    else
    {
      v94 = v91;
    }

    if (v94 >= 1)
    {
      v95 = time1.value;
      v96 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (v96)
      {
        v96(v95, -v94, 0);
      }
    }

    v97 = FigSampleCursorGetFigBaseObject(time1.value);
    v98 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    v42 = v210;
    if (v98)
    {
      v98(v97, @"EagerlyFetchSampleDependencyAttributes", v201);
    }

    if (audioMentorGetDecodeWalkCatchupStatusForSteps(time1.value, 0) != 2)
    {
      v99 = 0;
      do
      {
        time2.value = 0;
        v100 = time1.value;
        v101 = *(*(CMBaseObjectGetVTable() + 16) + 168);
        if (v101)
        {
          v33 = v101(v100, -1, &time2);
        }

        else
        {
          v33 = -12782;
        }

        if (!time2.value)
        {
          break;
        }

        if (v33)
        {
          goto LABEL_232;
        }

        v99 += time2.value;
      }

      while (audioMentorGetDecodeWalkCatchupStatusForSteps(time1.value, -v99) != 2);
    }

    v212 = time1.value;
    if ((v213 - 1) <= 1 && *(*(CMBaseObjectGetVTable() + 16) + 72))
    {
      v102 = *(a1 + 24);
      v103 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v103)
      {
        v103(v102);
      }

      v104 = 0;
    }

    else
    {
      v104 = 1;
    }

    v105 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v216 == 1)
    {
      if (v105)
      {
        v106 = v105(v212, values);
        if (!v106)
        {
          if ((BYTE4(values[1]) & 0x1D) != 1)
          {
            goto LABEL_376;
          }

          goto LABEL_241;
        }

        v33 = v106;
        if (v106 != -12782)
        {
          goto LABEL_447;
        }
      }

      *values = *MEMORY[0x1E6960CC0];
      v240 = *(MEMORY[0x1E6960CC0] + 16);
LABEL_241:
      v107 = 0;
      if (values[0])
      {
        v214 = 2 * LODWORD(values[1]) / SLODWORD(values[0]);
        v190 = 1;
        v108 = &v222;
        v109 = &v223;
        v110 = 3 * LODWORD(values[1]) / SLODWORD(values[0]);
      }

      else
      {
        v110 = 0;
        v214 = 1;
        v108 = &v222;
        v109 = &v223;
        v190 = 1;
      }

      goto LABEL_256;
    }

    if (v105)
    {
      v111 = v105(v212, values);
      if (!v111)
      {
        if ((BYTE4(values[1]) & 0x1D) != 1)
        {
LABEL_376:
          v33 = FigSignalErrorAtGM();
          goto LABEL_128;
        }

        goto LABEL_247;
      }

      v33 = v111;
      if (v111 != -12782)
      {
LABEL_447:
        FigSignalErrorAtGM();
        goto LABEL_128;
      }
    }

    *values = *MEMORY[0x1E6960CC0];
    v240 = *(MEMORY[0x1E6960CC0] + 16);
LABEL_247:
    if (values[0])
    {
      v110 = SLODWORD(values[1]) / (4 * LODWORD(values[0]));
      v214 = v110;
      v190 = -1;
      v107 = 1;
      v108 = &v223;
      v109 = &v222;
    }

    else
    {
      v110 = 0;
      v190 = -1;
      v107 = 1;
      v108 = &v223;
      v109 = &v222;
      v214 = 1;
    }

LABEL_256:
    *&v235[0] = a1;
    *(v235 + 8) = *&v109->value;
    *(&v235[1] + 1) = v109->epoch;
    v236 = *&v108->value;
    *&v237[0] = v108->epoch;
    BYTE1(v238) = v107;
    *(v237 + 8) = v220;
    *(&v237[1] + 1) = v221;
    LOBYTE(v238) = v207;
    if ((v104 & 1) == 0)
    {
      time1.value = 0;
      v119 = CMSampleBufferCreate(allocator, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &v241);
      if (v119)
      {
        v33 = v119;
      }

      else
      {
        ++*(a1 + 272);
        time1.value = CFNumberCreate(allocator, kCFNumberIntType, (a1 + 272));
        v120 = CFDictionaryCreate(allocator, MEMORY[0x1E6960580], &time1, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CMSetAttachment(v241, key, time1.value, 1u);
        v121 = *(a1 + 24);
        v122 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v122)
        {
          v122(v121, v195, v120, 0);
        }

        v123 = *(a1 + 24);
        v124 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v124)
        {
          v124(v123, v194, 0, 0);
        }

        if (time1.value)
        {
          CFRelease(time1.value);
        }

        if (v120)
        {
          CFRelease(v120);
        }

        v125 = *(a1 + 24);
        v126 = v241;
        v127 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v127)
        {
          v33 = v127(v125, v126);
          if (v33)
          {
            goto LABEL_370;
          }

          if (v241)
          {
            CFRelease(v241);
            v241 = 0;
          }

          if (v217)
          {
            FigSemaphoreSignal();
          }

          v114 = 0;
          goto LABEL_258;
        }

        v33 = -12782;
      }

LABEL_370:
      FigSignalErrorAtGM();
      v63 = v20;
      v114 = v217;
LABEL_435:
      v42 = v210;
      if (v114)
      {
        goto LABEL_130;
      }

      goto LABEL_131;
    }

    v114 = v217;
LABEL_258:
    v115 = 1;
    if (v216 != 1)
    {
      v115 = -1;
    }

    v188 = v115;
    v116 = v243;
    v217 = v114;
    if (v243 && ((v117 = *(CMBaseObjectGetVTable() + 16)) == 0 ? (v118 = 0) : (v118 = v117), (v128 = *(CMBaseObjectGetVTable() + 16)) == 0 ? (v129 = 0) : (v129 = v128), (v114 = v217, v118 == v129) && *(v118 + 32)))
    {
      v168 = (*(v129 + 32))(v212, v116);
      v114 = v217;
      v130 = v168;
      if (v168 == v188)
      {
        goto LABEL_431;
      }
    }

    else
    {
      v130 = 0;
    }

    v131 = v201;
    if (!valuea)
    {
      v131 = v193;
    }

    valueb = v131;
    v208 = v110;
    while (1)
    {
      if (*(a1 + 116))
      {
        v33 = -1;
        goto LABEL_434;
      }

      if ((*(a1 + 264) | 2) == 3)
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 104))
        {
          v132 = *(a1 + 24);
          v133 = *(*(CMBaseObjectGetVTable() + 16) + 104);
          if (!v133 || !v133(v132))
          {
            goto LABEL_299;
          }
        }

        else
        {
          v134 = *(a1 + 24);
          v135 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v135 || !v135(v134))
          {
LABEL_299:
            audioMentorThreadFinishPreroll(a1, 2, v18);
          }
        }
      }

      v136 = *(a1 + 24);
      v137 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v137 && v137(v136))
      {
        if (!*a1)
        {
          v138 = FigMentorNotificationPayloadCreate(@"MentorPausingDueToHighWaterLevel", v18, 0, *(a1 + 288), 0, 0);
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          if (v138)
          {
            CFRelease(v138);
          }
        }

        v42 = v210;
        if (*MEMORY[0x1E695FF58] == 1)
        {
          kdebug_trace();
        }

        do
        {
          FigSemaphoreWaitRelative();
          if (*(a1 + 116))
          {
            v33 = -1;
            goto LABEL_128;
          }

          v139 = *(a1 + 24);
          v140 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        }

        while (v140 && v140(v139));
        if (*MEMORY[0x1E695FF58] == 1)
        {
          kdebug_trace();
        }

        *(a1 + 292) = 0;
        if (!*a1)
        {
          v141 = FigMentorNotificationPayloadCreate(@"MentorResumingAfterHighWaterLevel", v18, 0, *(a1 + 288), 0, 0);
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          if (v141)
          {
            CFRelease(v141);
          }
        }
      }

      v142 = *(a1 + 16);
      v143 = v243;
      v144 = *(a1 + 264);
      v145 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v145)
      {
        v33 = -12782;
LABEL_411:
        FigSignalErrorAtGM();
        v114 = v217;
LABEL_434:
        v63 = v20;
        goto LABEL_435;
      }

      v146 = v145(v142, v212, v214, v208, v190, v143, v144, 0, audioMentorRemapSBufTiming, v235, v18, &v241);
      if (v146)
      {
        v33 = v146;
        if (v146 == -12840)
        {
          goto LABEL_431;
        }

        goto LABEL_411;
      }

      if (v234)
      {
        CMSetAttachment(v241, v198, v234, 1u);
        CMSetAttachment(v241, v197, valueb, 1u);
      }

      if (*(a1 + 48))
      {
        FigSampleBufferSetDecryptor();
      }

      v147 = *(a1 + 296);
      v42 = v210;
      if (v147 && ((v148 = *(CMBaseObjectGetVTable() + 16)) == 0 ? (v149 = 0) : (v149 = v148), (v150 = *(CMBaseObjectGetVTable() + 16)) == 0 ? (v151 = 0) : (v151 = v150), v149 == v151 && *(v149 + 32) && (*(v151 + 32))(v212, v147)))
      {
        *(a1 + 304) = 1;
      }

      else if (!*(a1 + 304))
      {
        goto LABEL_331;
      }

      CMSetAttachment(v241, v199, v201, 1u);
      *(a1 + 304) = 0;
LABEL_331:
      if (*(a1 + 305))
      {
        CMSetAttachment(v241, v196, v201, 1u);
        *(a1 + 305) = 0;
      }

      v152 = *(a1 + 24);
      v153 = v241;
      v154 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v154)
      {
        v33 = -12782;
        goto LABEL_447;
      }

      v155 = v154(v152, v153);
      if (v155)
      {
        v33 = v155;
        goto LABEL_447;
      }

      ++*(a1 + 292);
      *(a1 + 288) = 1;
      NumSamples = CMSampleBufferGetNumSamples(v241);
      if (v192)
      {
        v157 = -NumSamples;
      }

      else
      {
        v157 = NumSamples;
      }

      v158 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (!v158)
      {
        v33 = -12782;
        goto LABEL_447;
      }

      v159 = v158(v212, v157, &v233);
      if (v159)
      {
        v33 = v159;
        goto LABEL_447;
      }

      if (v157 != v233)
      {
        break;
      }

      v160 = *(a1 + 296);
      if (v160)
      {
        CFRelease(v160);
        *(a1 + 296) = 0;
      }

      if (v216 == 1)
      {
        v161 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v161)
        {
          v33 = -12782;
          goto LABEL_447;
        }

        v162 = v161(v212, a1 + 296);
        if (v162)
        {
          v33 = v162;
          goto LABEL_447;
        }
      }

      else
      {
        *(a1 + 304) = 1;
      }

      v163 = v243;
      if (v243)
      {
        v164 = *(CMBaseObjectGetVTable() + 16);
        if (v164)
        {
          v165 = v164;
        }

        else
        {
          v165 = 0;
        }

        v166 = *(CMBaseObjectGetVTable() + 16);
        if (v166)
        {
          v167 = v166;
        }

        else
        {
          v167 = 0;
        }

        if (v165 == v167 && *(v165 + 32))
        {
          v130 = (*(v167 + 32))(v212, v163);
        }

        else
        {
          v130 = 0;
        }
      }

      if (v241)
      {
        CFRelease(v241);
        v241 = 0;
      }

      v114 = v217;
      if (v130 == v188)
      {
        goto LABEL_431;
      }
    }

    if (v243 && FigSampleCursorCompareInDecodeOrder(v212, v243))
    {
      FigSignalErrorAtGM();
      v178 = 0;
      v33 = -12840;
    }

    else
    {
      v33 = 0;
      v178 = 1;
    }

    v181 = *(a1 + 296);
    if (v181)
    {
      CFRelease(v181);
      *(a1 + 296) = 0;
    }

    *(a1 + 304) = 1;
    v114 = v217;
    if (!v178)
    {
      goto LABEL_434;
    }

LABEL_431:
    time1.value = 0;
    v33 = CMSampleBufferCreate(allocator, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &time1);
    if (!v33)
    {
      CMSetAttachment(time1.value, v189, v201, 1u);
      v182 = *(a1 + 24);
      v183 = time1.value;
      v184 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v184)
      {
        v33 = v184(v182, v183);
      }

      else
      {
        v33 = -12782;
      }

      CFRelease(time1.value);
    }

    v185 = *(a1 + 296);
    if (v185)
    {
      CFRelease(v185);
      *(a1 + 296) = 0;
    }

    *(a1 + 304) = 1;
    v42 = v210;
    if (!v20 || v33)
    {
      goto LABEL_128;
    }

    v33 = audioMentorEnqueueBufferConsumedMarker(a1, v20);
    v63 = 0;
LABEL_129:
    if (v217)
    {
LABEL_130:
      FigSemaphoreSignal();
    }

LABEL_131:
    audioMentorThreadFinishPreroll(a1, 0, v18);
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    if (!*a1)
    {
      v64 = @"MentorStoppingDueToCompletion";
      if (v33)
      {
        v64 = @"MentorStoppingDueToError";
      }

      if (v33 == -1)
      {
        v65 = 0;
      }

      else
      {
        v65 = v33;
      }

      v66 = v42;
      if (v33 == -1)
      {
        v67 = @"MentorResettingDueToModeSwitch";
      }

      else
      {
        v67 = v64;
      }

      v68 = FigMentorNotificationPayloadCreate(v67, v18, v65, *(a1 + 288), v63, 0);
      CMNotificationCenterGetDefaultLocalCenter();
      v42 = v66;
      CMNotificationCenterPostNotification();
      if (v68)
      {
        CFRelease(v68);
      }
    }

    v23 = v219;
    if ((v33 - 1) <= 0xFFFFFFFD)
    {
      v69 = *(a1 + 296);
      if (v69)
      {
        CFRelease(v69);
        *(a1 + 296) = 0;
      }

      *(a1 + 304) = 1;
    }

    if (v203 && v244[0])
    {
      CFRelease(v244[0]);
      v244[0] = 0;
    }

    if (v42 && v243)
    {
      CFRelease(v243);
      v243 = 0;
    }

    if (v241)
    {
      CFRelease(v241);
    }

    if (v234)
    {
      CFRelease(v234);
    }

    if (v212)
    {
      CFRelease(v212);
    }

    v70 = *(a1 + 280);
    if (v70)
    {
      CFRelease(v70);
      *(a1 + 280) = 0;
    }

    if (v216 == 1)
    {
      v71 = a1 + 308;
      *v218 = *&v226.value;
      epoch = v226.epoch;
      goto LABEL_165;
    }

LABEL_164:
    v73 = MEMORY[0x1E6960C70];
    v74 = *MEMORY[0x1E6960C70];
    *v218 = *MEMORY[0x1E6960C70];
    epoch = *(v73 + 16);
    *(a1 + 324) = epoch;
    v71 = a1 + 332;
    *v215 = v74;
LABEL_165:
    *(v71 + 16) = epoch;
    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (*(a1 + 112) == 4)
    {
      break;
    }

    if (!*(a1 + 116))
    {
      do
      {
        FigSemaphoreWaitRelative();
        FigMemoryBarrier();
      }

      while (!*(a1 + 116));
      if (*(a1 + 112) == 4)
      {
        break;
      }
    }
  }

LABEL_4:
  v2 = *(a1 + 296);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 296) = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

void AudioMentorDispose(void *a1)
{
  if (a1)
  {
    AudioMentorInvalidate(a1);
    if (a1[10])
    {
      FigSemaphoreDestroy();
      a1[10] = 0;
    }

    if (a1[11])
    {
      FigSemaphoreDestroy();
      a1[11] = 0;
    }

    if (a1[12])
    {
      FigSimpleMutexDestroy();
      a1[12] = 0;
    }

    if (a1[9])
    {
      FigSimpleMutexDestroy();
      a1[9] = 0;
    }

    if (a1[15])
    {
      FigSemaphoreDestroy();
      a1[15] = 0;
    }

    v2 = a1[16];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[20];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[30];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[31];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[32];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a1[1];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = a1[2];
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = a1[3];
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = a1[6];
    if (v10)
    {
      CFRelease(v10);
    }

    free(a1);
  }
}

uint64_t editMentorNewWithChildAudioVideoEditOrCallbacksMentorAndSingleEditSegmentOrTrack(void *a1, void *a2, void *a3, uint64_t a4, __int128 *a5, const void *a6, char a7, void *a8)
{
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v12 = malloc_type_calloc(0x2B0uLL, 1uLL, 0x10E00406B69F22AuLL);
  v13 = MEMORY[0x1E695E480];
  if (v12)
  {
    v14 = v12;
    *(v12 + 80) = 0;
    v15 = MEMORY[0x1E6960CC0];
    v16 = *MEMORY[0x1E6960CC0];
    *(v12 + 184) = *MEMORY[0x1E6960CC0];
    v17 = *(v15 + 16);
    *(v12 + 25) = v17;
    v18 = MEMORY[0x1E6960C88];
    v19 = *MEMORY[0x1E6960C88];
    *(v12 + 13) = *MEMORY[0x1E6960C88];
    v20 = *(v18 + 16);
    *(v12 + 28) = v20;
    *(v12 + 136) = v16;
    *(v12 + 19) = v17;
    *(v12 + 22) = v20;
    *(v12 + 10) = v19;
    *(v12 + 38) = FigDispatchQueueCreateWithPriority();
    v14[39] = FigSimpleMutexCreate();
    *(v14 + 81) = 1000 * FigAtomicIncrement32() + 10000;
    v14[33] = FigSimpleMutexCreate();
    v21 = FigSimpleMutexCreate();
    v14[43] = v21;
    if (v21)
    {
      v22 = FigSimpleMutexCreate();
      v14[45] = v22;
      if (v22)
      {
        Mutable = CFDictionaryCreateMutable(*v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v14[35] = Mutable;
        if (Mutable)
        {
          v24 = FigSimpleMutexCreate();
          v14[34] = v24;
          if (v24)
          {
            EditMentorDispose(0);
            goto LABEL_7;
          }

          v41 = 542;
        }

        else
        {
          v41 = 540;
        }
      }

      else
      {
        v41 = 537;
      }
    }

    else
    {
      v41 = 535;
    }

    if (!editMentorNewWithChildAudioVideoEditOrCallbacksMentorAndSingleEditSegmentOrTrack_cold_1(v41, v14, &v47))
    {
      return v47;
    }

LABEL_14:
    v14 = 0;
LABEL_7:
    *v14 = a2;
    v14[1] = a1;
    v14[2] = a3;
    if (a4)
    {
      *(v14 + 24) = 1;
      v25 = *(a4 + 16);
      *(v14 + 2) = *a4;
      *(v14 + 3) = v25;
      v26 = *(a4 + 32);
      v27 = *(a4 + 48);
      v28 = *(a4 + 64);
      v14[14] = *(a4 + 80);
      *(v14 + 5) = v27;
      *(v14 + 6) = v28;
      *(v14 + 4) = v26;
    }

    if (a6)
    {
      v14[16] = CFRetain(a6);
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      cf = 0;
      v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v29)
      {
        v29(a6, 0x1F0B60C38, *v13, &cf);
        v30 = cf;
        *(v14 + 289) = cf == *MEMORY[0x1E695E4D0];
        if (v30)
        {
          CFRelease(v30);
        }
      }

      else
      {
        *(v14 + 289) = *MEMORY[0x1E695E4D0] == 0;
      }

      v32 = 1;
    }

    else if (a5)
    {
      if ((*(a5 + 3) & 0x1D) != 1 || (*(a5 + 15) & 0x1D) != 1 || ((*(a5 + 9) & 0x1D) != 1 || (*(a5 + 21) & 0x1D) != 1) && ((~*(a5 + 9) & 5) != 0 || (~*(a5 + 21) & 5) != 0))
      {
        v31 = FigSignalErrorAtGM();
LABEL_39:
        EditMentorDispose(v14);
        return v31;
      }

      v32 = 0;
      v34 = *a5;
      *(v14 + 19) = a5[1];
      *(v14 + 17) = v34;
      v35 = a5[2];
      v36 = a5[3];
      v37 = a5[4];
      *(v14 + 27) = a5[5];
      *(v14 + 25) = v37;
      *(v14 + 23) = v36;
      *(v14 + 21) = v35;
    }

    else
    {
      v32 = 0;
    }

    *(v14 + 120) = v32;
    if (a7)
    {
      *(v14 + 232) = 1;
    }

    if ((*v14 || v14[1] || v14[2] || *(v14 + 24) && v14[6]) && (CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterAddListener(), CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterAddListener(), CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterAddListener(), CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterAddListener(), CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterAddListener(), *v14))
    {
      v33 = VideoMentorSetTimeRemapCallback(*v14, editMentorRemapSampleBufferTiming, editMentorRemapTimeInterval, v14);
    }

    else
    {
      v38 = v14[1];
      if (v38)
      {
        v33 = AudioMentorSetTimeRemapCallback(v38, editMentorRemapSampleBufferTiming, editMentorRemapTimeInterval, v14);
      }

      else
      {
        v39 = v14[2];
        if (v39)
        {
          FigSimpleMutexLock();
          v39[30] = editMentorRemapSampleBufferTiming;
          v39[31] = editMentorRemapTimeInterval;
          v39[32] = v14;
          FigSimpleMutexUnlock();
          goto LABEL_42;
        }

        if (!*(v14 + 24))
        {
          goto LABEL_42;
        }

        v33 = (v14[7])(v14[5], editMentorRemapSampleBufferTiming, editMentorRemapTimeInterval, v14);
      }
    }

    v31 = v33;
    if (v33)
    {
      goto LABEL_39;
    }

LABEL_42:
    v31 = 0;
    *a8 = v14;
    return v31;
  }

  v31 = FigSignalErrorAtGM();
  if (!v31)
  {
    goto LABEL_14;
  }

  return v31;
}

void EditMentorDispose(void *a1)
{
  if (a1)
  {
    if ((*a1 || *(a1 + 1) || *(a1 + 2) || *(a1 + 24) && *(a1 + 6)) && (CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterRemoveListener(), CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterRemoveListener(), CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterRemoveListener(), CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterRemoveListener(), CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterRemoveListener(), *a1))
    {
      VideoMentorSetTimeRemapCallback(*a1, 0, 0, 0);
    }

    else
    {
      v2 = *(a1 + 1);
      if (v2)
      {
        AudioMentorSetTimeRemapCallback(v2, 0, 0, 0);
      }

      else
      {
        v3 = *(a1 + 2);
        if (v3)
        {
          FigSimpleMutexLock();
          v3[31] = 0;
          v3[32] = 0;
          v3[30] = 0;
          FigSimpleMutexUnlock();
        }

        else if (*(a1 + 24))
        {
          (*(a1 + 7))(*(a1 + 5), 0, 0, 0);
        }
      }
    }

    if (*(a1 + 16))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      v4 = *(a1 + 16);
      v5 = *(CMBaseObjectGetVTable() + 8);
      if (*v5 >= 2uLL)
      {
        v6 = v5[8];
        if (v6)
        {
          v6(v4);
        }
      }

      v7 = *(a1 + 16);
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 16) = 0;
      }
    }

    v8 = *(a1 + 38);
    if (v8)
    {
      dispatch_sync_f(v8, 0, editMentorNoop);
      dispatch_release(*(a1 + 38));
      *(a1 + 38) = 0;
    }

    v9 = *(a1 + 44);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 44) = 0;
    }

    v10 = *(a1 + 41);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 41) = 0;
    }

    v11 = *(a1 + 71);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 71) = 0;
    }

    v12 = *(a1 + 75);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 75) = 0;
    }

    v13 = *(a1 + 76);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + 76) = 0;
    }

    v14 = *(a1 + 84);
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 84) = 0;
    }

    v15 = *(a1 + 42);
    if (v15)
    {
      CFRelease(v15);
      *(a1 + 42) = 0;
    }

    v16 = *(a1 + 35);
    if (v16)
    {
      CFRelease(v16);
      *(a1 + 35) = 0;
    }

    v17 = *(a1 + 37);
    if (v17)
    {
      CFRelease(v17);
      *(a1 + 37) = 0;
    }

    if (*(a1 + 39))
    {
      FigSimpleMutexDestroy();
      *(a1 + 39) = 0;
    }

    if (*(a1 + 33))
    {
      FigSimpleMutexDestroy();
      *(a1 + 33) = 0;
    }

    if (*(a1 + 34))
    {
      FigSimpleMutexDestroy();
      *(a1 + 34) = 0;
    }

    if (*(a1 + 43))
    {
      FigSimpleMutexDestroy();
      *(a1 + 43) = 0;
    }

    if (*(a1 + 45))
    {
      FigSimpleMutexDestroy();
    }

    free(a1);
  }
}

uint64_t AudioMentorSetTimeRemapCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigSimpleMutexLock();
  *(a1 + 56) = a2;
  *(a1 + 64) = a4;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t EditMentorSetTimeRemapCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigSimpleMutexLock();
  a1[30] = a2;
  a1[31] = a3;
  a1[32] = a4;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigPlaybackBossSetTimeWithRange(uint64_t a1, CMTime *a2, unsigned int a3, CMTime *a4, CMTime *a5, const void *a6, int a7)
{
  v9 = a1;
  v90 = *MEMORY[0x1E69E9840];
  memset(&v78, 0, sizeof(v78));
  v76 = 0uLL;
  v77 = 0;
  v10 = *(a1 + 138);
  v75 = 0;
  timescale = 0;
  value = 0;
  if (dword_1EAF16E78)
  {
    LODWORD(lhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = a1;
  }

  if (*(v9 + 16) || *(v9 + 128))
  {
    return FigSignalErrorAtGM();
  }

  FigPlaybackBossGetDuration(v9, &v76);
  time = *a2;
  v15 = MEMORY[0x1E6960CC0];
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time, &time2) < 0)
  {
    v16 = a7;
  }

  else
  {
    time = *a2;
    *&time2.value = v76;
    time2.epoch = v77;
    v16 = a7;
    if (CMTimeCompare(&time, &time2) < 1)
    {
      goto LABEL_12;
    }

    v15 = &v76;
  }

  v17 = *v15;
  a2->epoch = v15[1].n128_i64[0];
  *&a2->value = v17;
LABEL_12:
  v78 = *a2;
  if (a3)
  {
    time = *a2;
    time2 = *a4;
    lhs = *a5;
    bossSnapTimeToIFrameWithRange(v9, &time, a3, &time2, &lhs, &v78);
  }

  *(v9 + 136) = 0;
  v18 = *(v9 + 432);
  if (v18 == 1886151033 || v18 == 1886530416 || v18 == 1886154860)
  {
    time = **&MEMORY[0x1E6960C70];
    v19 = *(v9 + 440);
    time2 = v78;
    if (bossCheckTimeWithEndTimes(v9, &time2, &time, v19))
    {
      v78 = time;
    }
  }

  FigSimpleMutexLock();
  v20 = *(v9 + 432);
  if (v20 != 1634624887 && v20 != 1886151033 && v20 != 1886154860)
  {
    memset(&time, 0, sizeof(time));
    if (*(v9 + 492))
    {
      time = *(v9 + 480);
    }

    else
    {
      CMTimebaseGetTime(&time, *(v9 + 120));
    }

    time2 = v78;
    lhs = time;
    if (!CMTimeCompare(&time2, &lhs))
    {
LABEL_92:
      v13 = 0;
      v34 = 1;
      goto LABEL_126;
    }
  }

  if (!*(v9 + 104) && *(v9 + 432) == 1886151033 && FigPlaybackBossGetRate(v9) > 0.0)
  {
    CMTimebaseGetTime(&time, *(v9 + 120));
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    if ((time.flags & 0x1D) == 1)
    {
      epoch = time.epoch;
      CMTimeMake(&time2, 250, 1000);
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = flags;
      lhs.epoch = epoch;
      CMTimeAdd(&time, &lhs, &time2);
      time2 = v78;
      if (CMTimeCompare(&time2, &time) <= 0)
      {
        CMTimeMake(&time2, 50, 1000);
        lhs.value = value;
        lhs.timescale = timescale;
        lhs.flags = flags;
        lhs.epoch = epoch;
        CMTimeSubtract(&time, &lhs, &time2);
        time2 = v78;
        if ((CMTimeCompare(&time2, &time) & 0x80000000) == 0)
        {
          v63 = *(v9 + 120);
          time = v78;
          CMTimebaseSetTime(v63, &time);
          if (dword_1EAF16E78)
          {
            LODWORD(lhs.value) = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v65 = lhs.value;
            if (os_log_type_enabled(v64, type))
            {
              v66 = v65;
            }

            else
            {
              v66 = v65 & 0xFFFFFFFE;
            }

            if (v66)
            {
              time.value = value;
              time.timescale = timescale;
              time.flags = flags;
              time.epoch = epoch;
              Seconds = CMTimeGetSeconds(&time);
              CMTimebaseGetTime(&time, *(v9 + 120));
              v68 = CMTimeGetSeconds(&time);
              LODWORD(time2.value) = 136316418;
              *(&time2.value + 4) = "FigPlaybackBossSetTimeWithRange";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v9;
              HIWORD(time2.epoch) = 2082;
              v80 = v9 + 850;
              v81 = 1024;
              v82 = v16;
              v83 = 2048;
              v84 = Seconds;
              v85 = 2048;
              v86 = v68;
              _os_log_send_and_compose_impl();
            }

            v34 = 1;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v13 = 0;
            goto LABEL_126;
          }

          goto LABEL_92;
        }
      }
    }
  }

  if (v16)
  {
    *(v9 + 788) = 1;
    *(v9 + 784) = v16;
  }

  bossBumpCurrentMasterOrder(v9);
  FigSimpleMutexLock();
  if (*(v9 + 848))
  {
    LODWORD(lhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v24 = lhs.value;
    if (os_log_type_enabled(v23, type))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (v25)
    {
      LODWORD(time2.value) = 136315394;
      *(&time2.value + 4) = "FigPlaybackBossSetTimeWithRange";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = v9;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  bossSetMentorModesToDoNothing(v9, 0, *(v9 + 80), 0);
  FigSimpleMutexUnlock();
  v26 = *(v9 + 432);
  if (v26 == 1886154860 || (v27 = 0, v26 == 1886151033))
  {
    if (v10)
    {
      v27 = 1;
    }

    else
    {
      v28 = MEMORY[0x1E6960C70];
      *(v9 + 452) = *MEMORY[0x1E6960C70];
      *(v9 + 468) = v28->epoch;
      bossStopTimebaseAndAudioContext(v9, 0, v28);
      v27 = 0;
    }
  }

  if (*(v9 + 600) && *(v9 + 476) && ((v29 = *(v9 + 432), v29 == 1885435251) || v29 == 1919247481 || v29 == 1886545266))
  {
    v30 = v10;
    v13 = 0;
    *(v9 + 480) = v78;
    v31 = 1;
  }

  else
  {
    v30 = v10;
    v32 = MEMORY[0x1E6960C70];
    *(v9 + 480) = *MEMORY[0x1E6960C70];
    *(v9 + 496) = *(v32 + 16);
    if (v27)
    {
      v31 = 0;
      v13 = 0;
    }

    else
    {
      v33 = *(v9 + 120);
      time = v78;
      v13 = CMTimebaseSetTime(v33, &time);
      v31 = 0;
    }
  }

  v34 = 0;
  ++*(v9 + 732);
  v35 = *(v9 + 432);
  v36 = 3;
  if (v35 <= 1886530415)
  {
    if (v35 <= 1886151032)
    {
      if (v35 == 1634624887)
      {
LABEL_71:
        v38 = *(v9 + 424);
        *(v9 + 424) = a6;
        if (a6)
        {
          CFRetain(a6);
        }

        if (v38)
        {
          CFRelease(v38);
        }

        bossBumpCurrentMasterOrder(v9);
        FigSimpleMutexLock();
        if (*(v9 + 848))
        {
          LODWORD(lhs.value) = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v40 = lhs.value;
          if (os_log_type_enabled(v39, type))
          {
            v41 = v40;
          }

          else
          {
            v41 = v40 & 0xFFFFFFFE;
          }

          if (v41)
          {
            LODWORD(time2.value) = 136315394;
            *(&time2.value + 4) = "FigPlaybackBossSetTimeWithRange";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = v9;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v51 = *(v9 + 80);
        time = v78;
        v13 = bossSetMentorModesToScrub(v9, 0, v51, &time, 0, &v75);
        FigSimpleMutexUnlock();
        v34 = 0;
        if (v75)
        {
          v52 = 1;
        }

        else
        {
          v52 = v31;
        }

        if ((v52 & 1) == 0)
        {
          *(v9 + 788) = 0;
          *(v9 + 784) = 0;
          v34 = 1;
        }

        *(v9 + 432) = 1885435251;
        if (dword_1EAF16E78)
        {
          LODWORD(lhs.value) = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v54 = lhs.value;
          if (os_log_type_enabled(v53, type))
          {
            v55 = v54;
          }

          else
          {
            v55 = v54 & 0xFFFFFFFE;
          }

          if (v55)
          {
            LODWORD(time2.value) = 136315650;
            *(&time2.value + 4) = "FigPlaybackBossSetTimeWithRange";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = v9;
            HIWORD(time2.epoch) = 2082;
            v80 = v9 + 850;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_126;
      }

      if (v35 != 1768189029)
      {
        v37 = 1885435251;
        goto LABEL_70;
      }

LABEL_86:
      LODWORD(lhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v46 = lhs.value;
      if (os_log_type_enabled(v45, type))
      {
        v47 = v46;
      }

      else
      {
        v47 = v46 & 0xFFFFFFFE;
      }

      if (!v47)
      {
        goto LABEL_91;
      }

      goto LABEL_90;
    }

    if (v35 != 1886151033)
    {
      if (v35 == 1886154860)
      {
        bossBumpCurrentMasterOrder(v9);
        FigSimpleMutexLock();
        if (*(v9 + 848))
        {
          LODWORD(lhs.value) = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v49 = lhs.value;
          if (os_log_type_enabled(v48, type))
          {
            v50 = v49;
          }

          else
          {
            v50 = v49 & 0xFFFFFFFE;
          }

          if (v50)
          {
            LODWORD(time2.value) = 136315394;
            *(&time2.value + 4) = "FigPlaybackBossSetTimeWithRange";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = v9;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v36 = 2;
        bossSetMentorModesToDoNothing(v9, 0, *(v9 + 80), 2);
        bossResetSideQueuesAndSwitchMentorsToMainQueues(v9);
        FigSimpleMutexUnlock();
      }

      else if (v35 != 1886155888)
      {
        goto LABEL_126;
      }
    }

LABEL_114:
    if (v30)
    {
      bossBumpCurrentMasterOrder(v9);
      FigSimpleMutexLock();
      if (*(v9 + 848))
      {
        LODWORD(lhs.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v57 = lhs.value;
        if (os_log_type_enabled(v56, type))
        {
          v58 = v57;
        }

        else
        {
          v58 = v57 & 0xFFFFFFFE;
        }

        if (v58)
        {
          LODWORD(time2.value) = 136315394;
          *(&time2.value + 4) = "FigPlaybackBossSetTimeWithRange";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = v9;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      bossSetMentorModesToDoNothing(v9, 0, *(v9 + 80), 2);
      bossSwitchMentorsToSideQueues(v9, 0);
      FigSimpleMutexUnlock();
      time = v78;
      started = figPlaybackBossStartPrerollAndSetPlayState(v9, &time, *(v9 + 440), *(v9 + 448), 2, 1886154860, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], a6);
    }

    else
    {
      time = **&MEMORY[0x1E6960C70];
      started = figPlaybackBossStartPrerollAndSetPlayState(v9, &time, *(v9 + 440), *(v9 + 448), v36, 1886530416, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], a6);
    }

    v13 = started;
    goto LABEL_125;
  }

  if (v35 <= 1919247480)
  {
    if (v35 == 1886530416)
    {
      goto LABEL_114;
    }

    if (v35 != 1886544244)
    {
      v37 = 1886545266;
      goto LABEL_70;
    }

LABEL_81:
    LODWORD(lhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v43 = lhs.value;
    if (os_log_type_enabled(v42, type))
    {
      v44 = v43;
    }

    else
    {
      v44 = v43 & 0xFFFFFFFE;
    }

    if (!v44)
    {
      goto LABEL_91;
    }

LABEL_90:
    LODWORD(time2.value) = 136315650;
    *(&time2.value + 4) = "FigPlaybackBossSetTimeWithRange";
    LOWORD(time2.flags) = 2048;
    *(&time2.flags + 2) = v9;
    HIWORD(time2.epoch) = 2082;
    v80 = v9 + 850;
    _os_log_send_and_compose_impl();
LABEL_91:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_125:
    v34 = 0;
    goto LABEL_126;
  }

  if (v35 == 2003853684)
  {
    goto LABEL_81;
  }

  if (v35 == 1920298606)
  {
    goto LABEL_86;
  }

  v37 = 1919247481;
LABEL_70:
  if (v35 == v37)
  {
    goto LABEL_71;
  }

LABEL_126:
  FigSimpleMutexUnlock();
  if (v16 && v34)
  {
    if (dword_1EAF16E78)
    {
      LODWORD(lhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v61 = lhs.value;
      if (os_log_type_enabled(v60, type))
      {
        v62 = v61;
      }

      else
      {
        v62 = v61 & 0xFFFFFFFE;
      }

      if (v62)
      {
        LODWORD(time2.value) = 136315906;
        *(&time2.value + 4) = "FigPlaybackBossSetTimeWithRange";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v9;
        HIWORD(time2.epoch) = 2082;
        v80 = v9 + 850;
        v81 = 1024;
        v82 = v16;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    figPlaybackBossPostSeekDidComplete(v9, v16, 0);
  }

  return v13;
}

__n128 FigPlaybackBossGetDuration@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  if (a1)
  {
    if ((*(a1 + 212) & 1) == 0 || (*(a1 + 236) & 1) == 0 || *(a1 + 240) || (*(a1 + 224) & 0x8000000000000000) != 0)
    {
      bossGetContentDuration(a1, a2);
      return result;
    }

    v3 = MEMORY[0x1E6960C88];
  }

  else
  {
    v3 = MEMORY[0x1E6960C70];
  }

  result = *v3;
  *a2 = *v3;
  a2[1].n128_u64[0] = v3[1].n128_u64[0];
  return result;
}

void bossSetMentorModesToDoNothing(uint64_t a1, CFIndex a2, uint64_t a3, int a4)
{
  if (a4)
  {
    keys[0] = @"AbortReading";
    if (a4 == 2)
    {
      keys[0] = @"SynchronouslyAbortReading";
    }

    v8 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v8 = 0;
  }

  bossBumpEveryTrackCurrentOrder(a1, a2, a3, 0);
  *(a1 + 608) = 0;
  v9 = *(a1 + 600);
  if (v9)
  {
    v10 = *(a1 + 552);
    *keys = *MEMORY[0x1E6960C70];
    v18 = *(MEMORY[0x1E6960C70] + 16);
    v15 = *keys;
    v16 = v18;
    FigVideoCompositionProcessorSetPlaybackTimeRange(v9, keys, &v15, v10, 0);
  }

  if (a2 < FigCFRangeGetLimit())
  {
    v11 = 0;
    v12 = a2;
    do
    {
      v13 = *(CFArrayGetValueAtIndex(*(a1 + 72), v12) + 27);
      if (v13)
      {
        v14 = EditMentorSetModeToDoNothing(v13, v8, 0);
        if (!v11)
        {
          v11 = v14;
        }
      }

      ++v12;
    }

    while (v12 < FigCFRangeGetLimit());
  }

  if (a4)
  {
    FigThreadAbortQueue();
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t bossBumpEveryTrackCurrentOrder(uint64_t a1, CFIndex a2, uint64_t a3, char a4)
{
  *(a1 + 609) = 0;
  result = FigCFRangeGetLimit();
  if (a2 < result)
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = a2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v9);
      v11 = ValueAtIndex[28];
      ++*(ValueAtIndex + 58);
      ValueAtIndex[28] = CFNumberCreate(v8, kCFNumberSInt32Type, ValueAtIndex + 29);
      if (v11)
      {
        CFRelease(v11);
      }

      if ((a4 & 2) != 0)
      {
        *(ValueAtIndex + 236) = 1;
      }

      if (a4)
      {
        *(ValueAtIndex + 237) = 1;
        *(a1 + 609) = 1;
      }

      ++v9;
      result = FigCFRangeGetLimit();
    }

    while (v9 < result);
  }

  return result;
}

uint64_t EditMentorSetModeToDoNothing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  v5 = 0;
  dispatch_sync_f(*(a1 + 304), v4, EditMentorSetModeToDoNothing_fun);
  return v5;
}

uint64_t editMentorStartNewParentOrder(uint64_t a1, const void *a2, const void *a3)
{
  dispatch_assert_queue_V2(*(a1 + 304));
  FigSimpleMutexLock();
  *(a1 + 288) = 0;
  v6 = *(a1 + 608);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 608) = 0;
  }

  v7 = *(a1 + 600);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 600) = 0;
  }

  if (a2)
  {
    v8 = CFRetain(a2);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 600) = v8;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  *(a1 + 608) = MutableCopy;
  *(a1 + 680) = 0;
  if (MutableCopy)
  {
    Value = CFDictionaryGetValue(MutableCopy, @"PrerollPolicy");
    if (Value)
    {
      v11 = Value;
      if (CFEqual(Value, @"PrerollUntilOutputReachesLowWater") || CFEqual(v11, @"PrerollUntilOutputReachesLowWaterOrSampleNotImmediatelyAvailable"))
      {
        *(a1 + 680) = 1;
      }
    }
  }

  v12 = *MEMORY[0x1E695E4C0];
  *(a1 + 616) = v12 != CFDictionaryGetValue(*(a1 + 608), @"SendPermanentEmptyMediaMarkers");
  CFDictionarySetValue(*(a1 + 608), @"SendPermanentEmptyMediaMarkers", v12);
  v13 = *MEMORY[0x1E695E4D0];
  *(a1 + 617) = v13 == CFDictionaryGetValue(*(a1 + 608), @"OKToWaitForTrackToGrow");
  *(a1 + 681) = v13 == CFDictionaryGetValue(*(a1 + 608), @"ConsolidateContinuousEdits");
  *(a1 + 682) = v13 == CFDictionaryGetValue(*(a1 + 608), @"RoundUpStartPTS");
  v14 = *(a1 + 568);
  *(a1 + 568) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  editMentorBumpChildOrder(a1);
  if (dword_1EAF16E38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigSimpleMutexUnlock();
}

CFNumberRef editMentorBumpChildOrder(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 304));
  v2 = *(a1 + 328);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 328) = 0;
  }

  ++*(a1 + 324);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (a1 + 324));
  *(a1 + 328) = result;
  return result;
}

uint64_t editMentorSetChildMentorModeToDoNothing(uint64_t a1, const __CFDictionary *a2, const void *a3)
{
  if (*a1)
  {
    v5 = *a1;

    return VideoMentorSetModeToDoNothing(v5, a2, a3);
  }

  else if (*(a1 + 8))
  {
    v7 = *(a1 + 8);

    return AudioMentorSetModeToDoNothing(v7, a2, a3);
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v13 = v3;
      v14 = v4;
      v11[0] = v8;
      v11[1] = a2;
      v11[2] = a3;
      v12 = 0;
      dispatch_sync_f(*(v8 + 304), v11, EditMentorSetModeToDoNothing_fun);
      return v12;
    }

    else if (*(a1 + 24))
    {
      v9 = *(a1 + 64);
      v10 = *(a1 + 40);

      return v9(v10);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t AudioMentorSetModeToDoNothing(uint64_t a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = theDict;
  if (theDict)
  {
    v6 = *MEMORY[0x1E695E4D0];
    Value = CFDictionaryGetValue(theDict, @"AbortReading");
    LODWORD(v4) = v6 == CFDictionaryGetValue(v4, @"SynchronouslyAbortReading");
    if (v6 == Value)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4;
    }
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexLock();
  if (!*a1)
  {
    v9 = *(a1 + 248);
    if (v9)
    {
      CFRelease(v9);
    }

    *(a1 + 248) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    *(a1 + 112) = 0;
    *(a1 + 116) = 1;
    *(a1 + 117) = v8;
    FigMemoryBarrier();
  }

  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
  if (v8)
  {
    v10 = 0;
    do
    {
      if (!*(a1 + 116))
      {
        break;
      }

      FigThreadAbort();
      if (*(a1 + 116))
      {
        FigSemaphoreWaitRelative();
      }

      v11 = v10++ >= 4;
      v12 = v11 ? v4 : 1;
    }

    while ((v12 & 1) != 0);
  }

  return 0;
}

uint64_t bossSetMentorModesToScrub(uint64_t a1, CFIndex a2, uint64_t a3, CMTime *a4, int a5, _BYTE *a6)
{
  v7 = a3;
  v49 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    LODWORD(lhs.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v7 = a3;
  }

  bossBumpEveryTrackCurrentOrder(a1, a2, v7, 2 * (a5 != 0));
  *(a1 + 608) = 0;
  v11 = *(a1 + 600);
  if (v11)
  {
    v12 = *(a1 + 552);
    time = *a4;
    time2 = *a4;
    FigVideoCompositionProcessorSetPlaybackTimeRange(v11, &time, &time2, v12, 0);
  }

  if (a2 >= FigCFRangeGetLimit())
  {
    LOBYTE(v13) = 0;
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    cf = 0;
    allocator = *MEMORY[0x1E695E480];
    v39 = *(MEMORY[0x1E6960CC0] + 16);
    v40 = *(MEMORY[0x1E6960CC0] + 12);
    v37 = v40 & 0x1F;
    v15 = a2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v15);
      if (*(ValueAtIndex + 27))
      {
        v17 = ValueAtIndex;
        if (*(a1 + 141) && ValueAtIndex[18] == 1668047728)
        {
          CMTimeMakeWithSeconds(&time, 10.0, 1);
          value = CMTimeCopyAsDictionary(&time, allocator);
        }

        else
        {
          value = 0;
        }

        v19 = bossCopyOptionsDictionaryForMentors(a1, 3, 0, 0, 0, 0, 0, 0, 0.0, 0, *(a1 + 849), *(a1 + 129), 0, 0, 0, 0, value, 0);
        v20 = bossCopyRenderPipelineCachedVideoFrames(a1, *(v17 + 10));
        v42 = v14;
        if (v13)
        {
          v41 = 1;
        }

        else if (v17[18] == 1986618469)
        {
          v41 = 1;
          cf = CFDictionaryCreate(allocator, kFigPlaybackBoss_ScrubOrder, (a1 + 544), 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
        }

        else
        {
          v41 = 0;
        }

        if (!*(v17 + 425) || ((v21 = (v17 + 119), v46 = v17[121], v45 = *(v17 + 119), v22 = v17[122], v23 = *(v17 + 123), (v22 & 0x1F) != 3) ? (v24 = v37 == 3) : (v24 = 1), v24 && (memset(&time, 0, sizeof(time)), lhs.value = *v21, lhs.timescale = v17[121], lhs.flags = v22, lhs.epoch = v23, type.value = *MEMORY[0x1E6960CC0], type.timescale = *(MEMORY[0x1E6960CC0] + 8), type.flags = v40, type.epoch = v39, CMTimeSubtract(&time2, &lhs, &type), CMTimeAbsoluteValue(&time, &time2), CMTimeMake(&time2, 1, 1000000000), lhs = time, CMTimeCompare(&lhs, &time2) <= 0) || (time.value = v45, time.timescale = v46, time.flags = v22, time.epoch = v23, time2.value = *MEMORY[0x1E6960CC0], time2.timescale = *(MEMORY[0x1E6960CC0] + 8), time2.flags = v40, time2.epoch = v39, CMTimeCompare(&time, &time2) <= 0)) && (((v46 = v17[127], v45 = *(v17 + 125), v25 = v17[128], v26 = *(v17 + 129), (v25 & 0x1F) == 3) || v37 == 3) && (memset(&time, 0, sizeof(time)), lhs.value = *(v17 + 125), lhs.timescale = v17[127], lhs.flags = v25, lhs.epoch = v26, type.value = *MEMORY[0x1E6960CC0], type.timescale = *(MEMORY[0x1E6960CC0] + 8), type.flags = v40, type.epoch = v39, CMTimeSubtract(&time2, &lhs, &type), CMTimeAbsoluteValue(&time, &time2), CMTimeMake(&time2, 1, 1000000000), lhs = time, CMTimeCompare(&lhs, &time2) <= 0) || (time.value = v45, time.timescale = v46, time.flags = v25, time.epoch = v26, time2.value = *MEMORY[0x1E6960CC0], time2.timescale = *(MEMORY[0x1E6960CC0] + 8), time2.flags = v40, time2.epoch = v39, CMTimeCompare(&time, &time2) < 1)))
        {
          v30 = *(v17 + 27);
          v31 = *(v17 + 28);
          time = *a4;
          v29 = EditMentorSetModeToScrub(v30, &time.value, v19, v20, cf, v31);
        }

        else
        {
          memset(&time, 0, sizeof(time));
          time2 = *a4;
          *&lhs.value = *v21;
          lhs.epoch = *(v17 + 123);
          CMTimeSubtract(&time, &time2, &lhs);
          memset(&time2, 0, sizeof(time2));
          lhs = *a4;
          type = *(v17 + 125);
          CMTimeAdd(&time2, &lhs, &type);
          v27 = *(v17 + 27);
          v28 = *(v17 + 28);
          lhs = time;
          type = time2;
          v29 = EditMentorSetModeToForwardPlayback(v27, &lhs.value, &type.value, v19, v20, 0, v28);
        }

        if (v42)
        {
          v14 = v42;
        }

        else
        {
          v14 = v29;
        }

        if (value)
        {
          CFRelease(value);
        }

        if (v19)
        {
          CFRelease(v19);
        }

        v13 = v41;
        if (v20)
        {
          CFRelease(v20);
        }
      }

      ++v15;
    }

    while (v15 < FigCFRangeGetLimit());
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (a6)
  {
    *a6 = v13;
  }

  return v14;
}

__CFDictionary *bossCopyOptionsDictionaryForMentors(uint64_t a1, int a2, const void *a3, const void *a4, const void *a5, const void *a6, int a7, int a8, float a9, char a10, char a11, char a12, char a13, char a14, int a15, char a16, void *value, char a18)
{
  v40 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 20, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v26 = Mutable;
  if (*(a1 + 160) == 1)
  {
    v27 = kVideoMentorScrubPolicy_BlendFrames;
  }

  else
  {
    v27 = kVideoMentorScrubPolicy_FrameAccurate;
  }

  CFDictionarySetValue(Mutable, @"ScrubPolicy", *v27);
  if (a10)
  {
    v28 = &kMentorPrerollPolicy_PrerollUntilOutputReachesLowWaterOrSampleNotImmediatelyAvailable;
    if (a9 <= 1.0)
    {
      v28 = &kMentorPrerollPolicy_PrerollUntilOutputReachesLowWater;
    }

    CFDictionarySetValue(v26, @"PrerollPolicy", *v28);
  }

  v29 = &kMentorReadPolicy_Immediate;
  if (a12)
  {
    v29 = &kMentorReadPolicy_Scheduled;
  }

  if (a11)
  {
    v29 = &kMentorReadPolicy_DeferUntilMakeDataReady;
  }

  CFDictionarySetValue(v26, @"ReadPolicy", *v29);
  if (a2 == 2)
  {
    v30 = &kMentorModeChangePolicy_CancelPreviousOutput;
  }

  else
  {
    v30 = &kMentorModeChangePolicy_RepurposeOrCancelPreviousOutput;
  }

  if (a2 == 1)
  {
    v30 = &kMentorModeChangePolicy_PreservePreviousOutput;
  }

  CFDictionarySetValue(v26, @"ModeChangePolicy", *v30);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  if (a3)
  {
    CFDictionarySetValue(v26, @"DefaultGradualDecoderRefresh", a3);
  }

  if (a4)
  {
    CFDictionarySetValue(v26, @"BonusAudioPrimingPacketCountAtStart", a4);
  }

  if (a5)
  {
    CFDictionarySetValue(v26, @"PostDecoderDrain", a5);
  }

  if (a6)
  {
    CFDictionarySetValue(v26, @"TrimDurationAtEOF", a6);
  }

  v31 = &kMentorCursorAccuracy_Exact;
  if (!*(a1 + 130))
  {
    v31 = &kMentorCursorAccuracy_Approximate;
  }

  CFDictionarySetValue(v26, @"CursorAccuracy", *v31);
  v32 = MEMORY[0x1E695E4C0];
  if (a7)
  {
    CFDictionarySetValue(v26, @"TrimSampleBufferDurations", *MEMORY[0x1E695E4C0]);
  }

  v33 = MEMORY[0x1E695E4D0];
  if (a8)
  {
    CFDictionarySetValue(v26, @"SynchronouslyResetOutput", *MEMORY[0x1E695E4D0]);
  }

  if (!*(a1 + 143) && *(a1 + 148))
  {
    if (!*(a1 + 128))
    {
      v39 = 0x40000000;
      if (bossGetVideoDecoderMaxSpeedThreshold(a1, &v39))
      {
        if (dword_1EAF16E78)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *(a1 + 144) = v39;
      }
    }

    *(a1 + 148) = 0;
  }

  if (*(a1 + 140))
  {
    FigCFDictionarySetFloat32();
    FigCFDictionarySetFloat32();
  }

  else if (*(a1 + 144) < a9)
  {
    CFDictionarySetValue(v26, @"PlayIFramesOnly", *v33);
  }

  if (a15)
  {
    FigCFDictionarySetInt32();
  }

  if (*(a1 + 128) || *(a1 + 600))
  {
    CFDictionarySetValue(v26, @"PostUpcomingOutputPTSRangeChangeNotifications", *v33);
  }

  if (*(a1 + 432) == 1920298606 && *(a1 + 437))
  {
    CFDictionarySetValue(v26, @"SendPermanentEmptyMediaMarkers", *v32);
  }

  if (a13)
  {
    CFDictionarySetValue(v26, @"OKToWaitForTrackToGrow", *v33);
  }

  if (a14)
  {
    CFDictionarySetValue(v26, @"ConsolidateContinuousEdits", *v33);
  }

  if (a16)
  {
    CFDictionarySetValue(v26, @"RoundUpStartPTS", *v33);
  }

  if (value)
  {
    CFDictionarySetValue(v26, @"ExtendedCatchUpDuration", value);
  }

  if (a18)
  {
    v35 = v33;
  }

  else
  {
    v35 = v32;
  }

  CFDictionarySetValue(v26, @"RemoveExcessFramesInRefreshIntervals", *v35);
  FigCFDictionarySetInt32();
  return v26;
}

uint64_t EditMentorSetModeToScrub(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  context = a1;
  v8 = *a2;
  v9 = *(a2 + 2);
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = 0;
  dispatch_sync_f(*(a1 + 304), &context, EditMentorSetModeToScrub_fun);
  return v14;
}

uint64_t FigTrackReaderGetTrackEditWithIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

__n128 editMentorMapTrackTimeToMediaTimeUsingEditSegment@<Q0>(CMTime *a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  time1 = *a2;
  time2 = a2[2];
  v6 = CMTimeCompare(&time1, &time2);
  time1 = a2[3];
  time2 = a2[1];
  v7 = CMTimeCompare(&time1, &time2);
  if (v6 | v7)
  {
    v8 = v7;
    time2 = *a1;
    rhs = a2[2];
    CMTimeSubtract(&time1, &time2, &rhs);
    *a1 = time1;
    if (v8)
    {
      time2 = *a1;
      rhs = a2[1];
      CMTimeMultiplyTimeByTimeRatio();
      *a1 = time1;
    }

    time2 = *a1;
    rhs = *a2;
    CMTimeAdd(&time1, &time2, &rhs);
    *a1 = time1;
  }

  result = *&a1->value;
  *a3 = *&a1->value;
  *(a3 + 16) = a1->epoch;
  return result;
}

uint64_t editMentorRetainCurrentChildOrderAndOptionsDictionary(uint64_t a1, __CFDictionary **a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 328);
  if (v4)
  {
    CFRetain(*(a1 + 328));
  }

  if (a2)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if ((*(a1 + 380) & 0x1D) == 1 && (*(a1 + 404) & 0x1D) == 1)
    {
      v6 = (a1 + 392);
      time1 = *(a1 + 392);
      v10 = *MEMORY[0x1E6960CC0];
      *&time2.value = *MEMORY[0x1E6960CC0];
      v7 = *(MEMORY[0x1E6960CC0] + 16);
      time2.epoch = v7;
      if (CMTimeCompare(&time1, &time2))
      {
        v8 = (a1 + 440);
        time1 = *(a1 + 440);
        *&time2.value = v10;
        time2.epoch = v7;
        if (CMTimeCompare(&time1, &time2))
        {
          *&time1.value = *v8;
          time1.epoch = *(a1 + 456);
          *&time2.value = *v6;
          time2.epoch = *(a1 + 408);
          if (CMTimeCompare(&time1, &time2))
          {
            FigCFDictionaryGetFloat32IfPresent();
            *&time1.value = *v6;
            time1.epoch = *(a1 + 408);
            *&time2.value = *v8;
            time2.epoch = *(a1 + 456);
            CMTimeGetSeconds(&time1);
            time1 = time2;
            CMTimeGetSeconds(&time1);
            FigCFDictionarySetFloat32();
          }
        }
      }
    }

    if (*(a1 + 682))
    {
      CFDictionarySetValue(MutableCopy, @"RoundUpStartPTS", *MEMORY[0x1E695E4D0]);
    }

    *a2 = MutableCopy;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t FigPlaybackBossSetEndTime(uint64_t a1, __int128 *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 3) & 0x1D) != 1)
  {
    v4 = MEMORY[0x1E6960C70];
    *a2 = *MEMORY[0x1E6960C70];
    *(a2 + 2) = *(v4 + 16);
  }

  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = *a2;
  *(a1 + 192) = *(a2 + 2);
  *(a1 + 176) = v6;
  if (*(a1 + 432) == 1886151033)
  {
    v7 = *(a1 + 120);
    if (v7)
    {
      EffectiveRate = CMTimebaseGetEffectiveRate(v7);
    }

    else
    {
      EffectiveRate = 1.0;
    }

    bossScheduleReachedEndCallbackForRate(a1, EffectiveRate);
  }

  return 0;
}

uint64_t FigPlaybackBossSetReverseEndTime(uint64_t a1, __int128 *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 3) & 0x1D) != 1)
  {
    v4 = MEMORY[0x1E6960C70];
    *a2 = *MEMORY[0x1E6960C70];
    *(a2 + 2) = *(v4 + 16);
  }

  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = *a2;
  *(a1 + 312) = *(a2 + 2);
  *(a1 + 296) = v6;
  if (*(a1 + 432) == 1886151033)
  {
    v7 = *(a1 + 120);
    if (v7)
    {
      EffectiveRate = CMTimebaseGetEffectiveRate(v7);
    }

    else
    {
      EffectiveRate = 1.0;
    }

    bossScheduleReachedEndCallbackForRate(a1, EffectiveRate);
  }

  return 0;
}

uint64_t FigPlaybackBossSetStopAtEnd(_BYTE *a1, char a2)
{
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1 || a1[16])
  {
    return FigSignalErrorAtGM();
  }

  if (a1[848])
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = 0;
  a1[137] = a2;
  return result;
}

uint64_t FigPlaybackBossGetTimebase(uint64_t result)
{
  if (result)
  {
    if (*(result + 16))
    {
      return 0;
    }

    else
    {
      return *(result + 120);
    }
  }

  return result;
}

uint64_t FigPlayabilityMonitorCreate(const void *a1, _DWORD *a2, CFTypeRef *a3, int64_t a4, const void *a5, const void *a6, int a7, UInt8 **a8)
{
  v96 = *MEMORY[0x1E69E9840];
  v92 = **&MEMORY[0x1E6960C70];
  valuePtr = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v13 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 8648);
  if (!Mutable)
  {
    FigPlayabilityMonitorCreate_cold_10(BOOLean);
    return LODWORD(BOOLean[0].value);
  }

  v15 = Mutable;
  CFDataSetLength(Mutable, 8648);
  MutableBytePtr = CFDataGetMutableBytePtr(v15);
  bzero(MutableBytePtr, 0x21C8uLL);
  *MutableBytePtr = v15;
  if (*(*(CMBaseObjectGetVTable() + 16) + 80))
  {
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v17)
    {
      value_low = 4294954514;
LABEL_97:
      FigPlayabilityMonitorDestroy(MutableBytePtr);
      return value_low;
    }

    v18 = v17(a1, MutableBytePtr + 8);
    if (v18)
    {
LABEL_141:
      value_low = v18;
      goto LABEL_97;
    }
  }

  else
  {
    *(MutableBytePtr + 1) = CFRetain(a1);
  }

  *(MutableBytePtr + 2) = CFRetain(a5);
  *(MutableBytePtr + 3) = CFRetain(a6);
  v19 = FigReentrantMutexCreateWithFlags();
  *(MutableBytePtr + 6) = v19;
  if (!v19)
  {
    FigPlayabilityMonitorCreate_cold_9(BOOLean);
    goto LABEL_152;
  }

  v20 = FigReentrantMutexCreate();
  *(MutableBytePtr + 7) = v20;
  if (!v20)
  {
    FigPlayabilityMonitorCreate_cold_8(BOOLean);
    goto LABEL_152;
  }

  v21 = FigReentrantMutexCreate();
  *(MutableBytePtr + 1079) = v21;
  if (!v21)
  {
    FigPlayabilityMonitorCreate_cold_7(BOOLean);
    goto LABEL_152;
  }

  v22 = FigConditionVariableCreate();
  *(MutableBytePtr + 9) = v22;
  if (!v22)
  {
    FigPlayabilityMonitorCreate_cold_6(BOOLean);
    goto LABEL_152;
  }

  v18 = FigRetainProxyCreate();
  if (v18)
  {
    goto LABEL_141;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  v18 = CMTimebaseCreateWithSourceClock(v13, HostTimeClock, MutableBytePtr + 4);
  if (v18)
  {
    goto LABEL_141;
  }

  v18 = CMTimebaseCreateWithSourceTimebase(v13, *(MutableBytePtr + 4), MutableBytePtr + 5);
  if (v18)
  {
    goto LABEL_141;
  }

  CMTimebaseSetRate(*(MutableBytePtr + 4), 1.0);
  v24 = malloc_type_calloc(a4, 0x30uLL, 0x10200403DD621CEuLL);
  *(MutableBytePtr + 11) = v24;
  if (!v24)
  {
    FigPlayabilityMonitorCreate_cold_5(BOOLean);
    goto LABEL_152;
  }

  *(MutableBytePtr + 10) = 0;
  *(MutableBytePtr + 24) = 1;
  MutableBytePtr[314] = 0;
  if (*(MutableBytePtr + 2))
  {
    CMByteStreamGetCMBaseObject();
    FigCRABSGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      BOOLean[0].value = 0;
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v26 && !v26(CMBaseObject, @"CRABS_ReadAheadActive", v13, BOOLean))
      {
        MutableBytePtr[314] = CFBooleanGetValue(BOOLean[0].value) == 0;
        CFRelease(BOOLean[0].value);
      }

      v27 = CMByteStreamGetCMBaseObject();
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v28)
      {
        v28(v27, @"CRABS_ReportingAgent", v13, MutableBytePtr + 8568);
      }
    }
  }

  *(MutableBytePtr + 26) = 0;
  *(MutableBytePtr + 33) = 0x7FFFFFFFFFFFFFFFLL;
  MutableBytePtr[8554] = 1;
  if (a7)
  {
    if (a7 != 1)
    {
      goto LABEL_27;
    }

    v29 = 3;
  }

  else
  {
    v29 = 2;
  }

  *(MutableBytePtr + 28) = v29;
LABEL_27:
  CMTimeMakeWithSeconds(BOOLean, 5.0, 1000);
  *(MutableBytePtr + 160) = BOOLean[0];
  v30 = *(MutableBytePtr + 28);
  if (v30 == 1)
  {
    if (*(MutableBytePtr + 29) == 0.0)
    {
      *(MutableBytePtr + 29) = 1067869798;
    }

    if (*(MutableBytePtr + 30) == 0.0)
    {
      *(MutableBytePtr + 30) = 1066611507;
    }

    if (*(MutableBytePtr + 31) == 0.0)
    {
      *(MutableBytePtr + 31) = 1066192077;
    }

    if (*(MutableBytePtr + 32) == 0.0)
    {
      *(MutableBytePtr + 32) = 1067869798;
    }

    if (*(MutableBytePtr + 33) == 0.0)
    {
      *(MutableBytePtr + 33) = 1077936128;
    }

    if (*(MutableBytePtr + 17) == 0.0)
    {
      *(MutableBytePtr + 17) = 0x404E000000000000;
    }

    if (*(MutableBytePtr + 18) == 0.0)
    {
      *(MutableBytePtr + 18) = 0x4024000000000000;
    }

    if (*(MutableBytePtr + 19) == 0.0)
    {
      *(MutableBytePtr + 19) = 0x3FF0000000000000;
    }
  }

  v31 = *(MutableBytePtr + 1071);
  if (v31)
  {
    v32 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v32)
    {
      v32(v31, 0x1F0B645D8, 0x1F0B3F4D8, v30, 0);
    }
  }

  v33 = FigDispatchQueueCreateWithPriority();
  *(MutableBytePtr + 40) = v33;
  if (!v33)
  {
    FigPlayabilityMonitorCreate_cold_4(BOOLean);
    goto LABEL_152;
  }

  *(MutableBytePtr + 1070) = voucher_copy();
  v34 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(MutableBytePtr + 40));
  *(MutableBytePtr + 37) = v34;
  if (!v34)
  {
    FigPlayabilityMonitorCreate_cold_3(BOOLean);
    goto LABEL_152;
  }

  dispatch_set_context(v34, *(MutableBytePtr + 41));
  dispatch_source_set_timer(*(MutableBytePtr + 37), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler_f(*(MutableBytePtr + 37), fpm_UpdateTimerProc);
  dispatch_resume(*(MutableBytePtr + 37));
  v35 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(MutableBytePtr + 40));
  *(MutableBytePtr + 38) = v35;
  if (!v35)
  {
    FigPlayabilityMonitorCreate_cold_2(BOOLean);
    goto LABEL_152;
  }

  dispatch_set_context(v35, *(MutableBytePtr + 41));
  dispatch_source_set_timer(*(MutableBytePtr + 38), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler_f(*(MutableBytePtr + 38), fpm_StallWarningProc);
  dispatch_resume(*(MutableBytePtr + 38));
  v18 = CMTimebaseAddTimerDispatchSource(*(MutableBytePtr + 3), *(MutableBytePtr + 38));
  if (v18)
  {
    goto LABEL_141;
  }

  LODWORD(BOOLean[0].value) = 32;
  v36 = CFNumberCreate(v13, kCFNumberSInt32Type, BOOLean);
  v37 = CMByteStreamGetCMBaseObject();
  v38 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v38)
  {
    v38(v37, *MEMORY[0x1E6960DB0], v36);
  }

  CFRelease(v36);
  if (a4 >= 1)
  {
    v39 = a3;
    while (1)
    {
      v93.value = 0;
      v87.value = 0;
      v89 = 0;
      v90 = 0;
      v88 = 0;
      v40 = *(MutableBytePtr + 1);
      v41 = *a2;
      v42 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v42)
      {
        if (!v42(v40, v41, &v93, &v88))
        {
          break;
        }
      }

LABEL_78:
      if (v90)
      {
        CFRelease(v90);
        v90 = 0;
      }

      if (v89)
      {
        CFRelease(v89);
        v89 = 0;
      }

      if (v87.value)
      {
        CFRelease(v87.value);
      }

      ++v39;
      ++a2;
      if (!--a4)
      {
        goto LABEL_89;
      }
    }

    if (v88 == 1952807028 || v88 == 1668310898)
    {
      FigBaseObject = FigTrackReaderGetFigBaseObject(v93.value);
      v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v44)
      {
        LOBYTE(v44) = v44(FigBaseObject, @"CaptionSampleCursorService", v13, &v87) == 0;
      }

      value = v87.value;
      if (v87.value)
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      if (v87.value)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v45 = 0;
      value = v87.value;
      if (v87.value)
      {
        goto LABEL_67;
      }
    }

    v54 = v93.value;
    v55 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v55 || v55(v54, &v87))
    {
LABEL_76:
      if (v93.value)
      {
        CFRelease(v93.value);
        v93.value = 0;
      }

      goto LABEL_78;
    }

    value = v87.value;
LABEL_67:
    v47 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v47)
    {
      BOOLean[0] = **&MEMORY[0x1E6960CC0];
      if (!v47(value, BOOLean, &v90, 0, 0))
      {
        v48 = v87.value;
        v49 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v49)
        {
          BOOLean[0] = **&MEMORY[0x1E6960C88];
          if (!v49(v48, BOOLean, 1, &v89, 0, 0))
          {
            *(*(MutableBytePtr + 11) + 48 * *(MutableBytePtr + 10)) = *a2;
            *(*(MutableBytePtr + 11) + 48 * *(MutableBytePtr + 10) + 8) = CFRetain(v93.value);
            *(*(MutableBytePtr + 11) + 48 * *(MutableBytePtr + 10) + 16) = CFRetain(v90);
            v50 = CFRetain(v89);
            v52 = *(MutableBytePtr + 10);
            v51 = *(MutableBytePtr + 11);
            *(v51 + 48 * v52 + 24) = v50;
            if (a3)
            {
              v53 = *v39;
              if (*v39)
              {
                v53 = CFRetain(v53);
                v52 = *(MutableBytePtr + 10);
                v51 = *(MutableBytePtr + 11);
              }
            }

            else
            {
              v53 = 0;
            }

            v56 = v51 + 48 * v52;
            *(v56 + 32) = v53;
            *(v56 + 40) = v45;
            *(MutableBytePtr + 10) = v52 + 1;
          }
        }
      }
    }

    goto LABEL_76;
  }

LABEL_89:
  if (!*(MutableBytePtr + 10))
  {
    FigPlayabilityMonitorCreate_cold_1(BOOLean);
LABEL_152:
    value_low = LODWORD(BOOLean[0].value);
    if (!LODWORD(BOOLean[0].value))
    {
      return value_low;
    }

    goto LABEL_97;
  }

  FigFormatReaderUtilityGetDuration(*(MutableBytePtr + 1), 1, &v92);
  if (dword_1EAF16BF0)
  {
    LODWORD(v87.value) = 0;
    LOBYTE(v90) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v58 = v87.value;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v90))
    {
      v59 = v58;
    }

    else
    {
      v59 = v58 & 0xFFFFFFFE;
    }

    if (v59)
    {
      BOOLean[0] = v92;
      Seconds = CMTimeGetSeconds(BOOLean);
      LODWORD(v93.value) = 136315650;
      *(&v93.value + 4) = "FigPlayabilityMonitorCreate";
      LOWORD(v93.flags) = 2048;
      *(&v93.flags + 2) = MutableBytePtr;
      HIWORD(v93.epoch) = 2048;
      v94 = Seconds;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ((v92.flags & 0x1D) == 1)
  {
    BOOLean[0] = v92;
    v93 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(BOOLean, &v93) >= 1)
    {
      if (!*(MutableBytePtr + 2))
      {
LABEL_122:
        MutableBytePtr[8552] = 0;
LABEL_123:
        fpm_prepareDataRateProfile(MutableBytePtr);
        goto LABEL_124;
      }

      CMByteStreamGetCMBaseObject();
      FigCRABSGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        v62 = CMByteStreamGetCMBaseObject();
        v63 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v63)
        {
          v64 = *MEMORY[0x1E695FF78];
          BOOLean[0].value = 0;
          v65 = v63(v62, v64, v13, BOOLean);
          if (v65 || !BOOLean[0].value)
          {
            if (v65)
            {
              goto LABEL_119;
            }
          }

          else
          {
            CFNumberGetValue(BOOLean[0].value, kCFNumberSInt64Type, &valuePtr);
            CFRelease(BOOLean[0].value);
          }

          v66 = valuePtr;
          BOOLean[0] = v92;
          v87.value = (v66 / CMTimeGetSeconds(BOOLean));
          v67 = CFNumberCreate(v13, kCFNumberSInt64Type, &v87);
          if (dword_1EAF16BF0)
          {
            LODWORD(v90) = 0;
            LOBYTE(v89) = 0;
            v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v69 = v90;
            if (os_log_type_enabled(v68, v89))
            {
              v70 = v69;
            }

            else
            {
              v70 = v69 & 0xFFFFFFFE;
            }

            if (v70)
            {
              LODWORD(v93.value) = 136315650;
              *(&v93.value + 4) = "FigPlayabilityMonitorCreate";
              LOWORD(v93.flags) = 2048;
              *(&v93.flags + 2) = MutableBytePtr;
              HIWORD(v93.epoch) = 2048;
              v94 = (8 * v87.value) / 1000.0;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v71 = CMByteStreamGetCMBaseObject();
          v72 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v72)
          {
            v72(v71, @"CRABS_DataConsumptionRateHint", v67);
          }

          if (v67)
          {
            CFRelease(v67);
          }
        }
      }
    }
  }

LABEL_119:
  if (!*(MutableBytePtr + 2))
  {
    goto LABEL_122;
  }

  BOOLean[0].value = 0;
  v73 = CMByteStreamGetCMBaseObject();
  v74 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v74 || v74(v73, *MEMORY[0x1E695FF80], v13, BOOLean))
  {
    goto LABEL_122;
  }

  v83 = CFBooleanGetValue(BOOLean[0].value);
  CFRelease(BOOLean[0].value);
  MutableBytePtr[8552] = 0;
  if (!v83)
  {
    goto LABEL_123;
  }

LABEL_124:
  CMByteStreamGetCMBaseObject();
  FigCRABSGetClassID();
  if (CMBaseObjectIsMemberOfClass() && *(MutableBytePtr + 3))
  {
    v75 = CMByteStreamGetCMBaseObject();
    v76 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v76)
    {
      v76(v75, @"CRABS_NetworkUrgencyMonitor", v13, MutableBytePtr + 8640);
    }

    v77 = *(MutableBytePtr + 1080);
    if (v77)
    {
      FigNetworkUrgencyMonitorSetTimebase(v77, *(MutableBytePtr + 3));
    }
  }

  FigRetainProxyLockMutex();
  MutableBytePtr[313] = 1;
  CMTimebaseGetTime(BOOLean, *(MutableBytePtr + 3));
  v93 = **&MEMORY[0x1E6960CC0];
  CMTimeMaximum(&v87, BOOLean, &v93);
  *(MutableBytePtr + 15) = *&v87.value;
  epoch = v87.epoch;
  *(MutableBytePtr + 32) = v87.epoch;
  *(MutableBytePtr + 216) = *(MutableBytePtr + 15);
  *(MutableBytePtr + 29) = epoch;
  fpm_ensureUpdatePrimed(MutableBytePtr);
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  FigRetainProxyUnlockMutex();
  if (dword_1EAF16BF0)
  {
    LODWORD(v87.value) = 0;
    LOBYTE(v90) = 0;
    v79 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v80 = v87.value;
    if (os_log_type_enabled(v79, v90))
    {
      v81 = v80;
    }

    else
    {
      v81 = v80 & 0xFFFFFFFE;
    }

    if (v81)
    {
      LODWORD(v93.value) = 136315650;
      *(&v93.value + 4) = "FigPlayabilityMonitorCreate";
      LOWORD(v93.flags) = 2048;
      *(&v93.flags + 2) = MutableBytePtr;
      HIWORD(v93.epoch) = 2048;
      v94 = *&a5;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  value_low = 0;
  *a8 = MutableBytePtr;
  return value_low;
}

uint64_t FigCachedFileByteStreamSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v12 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"CFBS_EnableCaching"))
  {
    return 4294954512;
  }

  v6 = *MEMORY[0x1E695E4D0];
  v7 = *MEMORY[0x1E695E4D0] == a3;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 120) == v7)
  {
    goto LABEL_10;
  }

  *(DerivedStorage + 120) = v7;
  v8 = *(DerivedStorage + 24);
  if (v6 == a3)
  {
    FigReadCacheContainerShowInterestInCaching(v8);
  }

  else
  {
    FigReadCacheContainerShowDisinterestInCaching(v8);
  }

  if (!FigServer_IsMediaserverd())
  {
LABEL_10:
    FigSimpleMutexUnlock();
  }

  else
  {
    v10 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigCachedFileByteStreamProperty_EnableCaching, &v12, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v10)
    {
      FigCachedFileByteStreamSetProperty_cold_1(&v13);
      return v13;
    }

    v11 = v10;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    FigSimpleMutexUnlock();
    CFRelease(v11);
  }

  return 0;
}

void fpm_ensureUpdatePrimed(uint64_t a1)
{
  if (!*(a1 + 312) || fpm_shouldUpdateAggressively(a1))
  {
    v2 = dispatch_time(0, 0);
    v3 = 0;
    v4 = *(a1 + 192) + 500000000;
    v5 = v4 - v2;
    if (v4 >= v2)
    {
      if (fpm_shouldUpdateAggressively(a1))
      {
        v3 = 0;
      }

      else
      {
        v3 = v5;
      }
    }

    *(a1 + 312) = 1;
    v6 = *(a1 + 296);
    v7 = dispatch_time(0, v3);

    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

uint64_t FigSyncMomentSourceSetTimebase(void *a1, const void *a2)
{
  if (a1)
  {
    CFRetain(a1);
    FigSimpleMutexLock();
    v4 = a1[8];
    if (v4 == a2)
    {
      goto LABEL_8;
    }

    if (v4)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v5 = a1[8];
      if (v5)
      {
        CFRelease(v5);
      }

      a1[8] = 0;
    }

    if (a2)
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      a1[8] = CFRetain(a2);
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      figSyncMomentSource_UpdateToCurrentTimebaseRate(a1);
      figSyncMomentSource_getSyncMoment(a1, 3, v7);
      FigSimpleMutexUnlock();
      figSyncMomentSource_SendMoment(a1, v7, 0);
    }

    else
    {
LABEL_8:
      FigSimpleMutexUnlock();
    }

    CFRelease(a1);
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void figSyncMomentSource_SendMoment(dispatch_queue_t *cf, __int128 *a2, int a3)
{
  v4 = a2[5];
  v20 = a2[4];
  v21 = v4;
  v22 = a2[6];
  v5 = a2[1];
  v16 = *a2;
  v17 = v5;
  v6 = a2[3];
  v18 = a2[2];
  v19 = v6;
  v23 = *(a2 + 14);
  v24 = 0;
  context = cf;
  if (!a3)
  {
    dispatch_sync_f(cf[10], &context, figSyncMomentSource_updatePendingMoment);
    if (!v24)
    {
      return;
    }

    goto LABEL_5;
  }

  v7 = DWORD1(v16);
  v8 = *(a2 + 56);
  v9 = *(a2 + 88);
  v29 = *(a2 + 72);
  v30 = v9;
  v31 = *(a2 + 104);
  v10 = *(a2 + 24);
  v25 = *(a2 + 8);
  v26 = v10;
  v27 = *(a2 + 40);
  v28 = v8;
  if (*(cf + 208))
  {
    v7 = *(cf + 23) | DWORD1(v16);
  }

  v11 = *(cf + 208) == 0;
  *(cf + 22) = v16;
  *(cf + 23) = v7;
  v12 = v30;
  *(cf + 10) = v29;
  *(cf + 11) = v12;
  *(cf + 12) = v31;
  v13 = v26;
  *(cf + 6) = v25;
  *(cf + 7) = v13;
  v14 = v28;
  *(cf + 8) = v27;
  *(cf + 9) = v14;
  LOBYTE(v24) = v11;
  *(cf + 208) = 1;
  if (v11)
  {
LABEL_5:
    CFRetain(cf);
    dispatch_async_f(cf[27], cf, figSyncMomentSource_sendMomentInternal);
  }
}

double FigTimebaseGetSyncMoment(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_20();
  if (!figtimebase_getSyncMomentInternal(v3, 0, v7))
  {
    v5 = v9;
    *a2 = 0u;
    *(a2 + 16) = v5;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 8) = v8;
    v6 = v7[1] & 0xFFFFFFF7;
    *a2 = 72;
    *(a2 + 4) = v6;
    *(a2 + 32) = v10;
    *(a2 + 56) = v12;
    *(a2 + 64) = 0;
    *(a2 + 40) = v11;
    result = v13;
    *(a2 + 64) = v13;
  }

  return result;
}

uint64_t playerfig_doingGapless()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 77))
  {
    if (dword_1EAF16A10)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (*(DerivedStorage + 48) != 1.0)
  {
    if (dword_1EAF16A10)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (*(DerivedStorage + 816))
  {
    if (dword_1EAF16A10)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (*(DerivedStorage + 840))
  {
    if (dword_1EAF16A10)
    {
LABEL_12:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  if (!dword_1EAF16A10)
  {
    return 1;
  }

  v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  v4 = 1;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return v4;
}

uint64_t bossScheduleReachedEndCallbackForTime(uint64_t a1, CMTime *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *(a1 + 168);
  if (v5)
  {
    goto LABEL_4;
  }

  v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 32));
  *(a1 + 168) = v9;
  if (!v9)
  {
    return FigSignalErrorAtGM();
  }

  dispatch_set_context(v9, a1);
  dispatch_source_set_event_handler_f(*(a1 + 168), figPlaybackBossReachedEndWithContext);
  dispatch_resume(*(a1 + 168));
  result = CMTimebaseAddTimerDispatchSource(*(a1 + 120), *(a1 + 168));
  if (!result)
  {
    v5 = *(a1 + 168);
LABEL_4:
    v6 = *&a2->value;
    *(a1 + 336) = a2->epoch;
    *(a1 + 320) = v6;
    v7 = *(a1 + 120);
    time = *a2;
    return CMTimebaseSetTimerDispatchSourceNextFireTime(v7, v5, &time, 1u);
  }

  return result;
}

void bossConfigureRatePlan(int a1, uint64_t a2, float *a3, uint64_t a4, float a5)
{
  v7 = *a3;
  if (*a3)
  {
    v8 = 2.1;
  }

  else
  {
    v8 = a3[2];
  }

  v9 = fabs(a5);
  *(a4 + 8) = 0;
  if (!a1)
  {
    *a4 = a5;
    *(a4 + 4) = v9;
    goto LABEL_22;
  }

  if (*a2 && *(a2 + 4) > a5 || *(a2 + 1) && *(a2 + 8) < a5)
  {
    goto LABEL_9;
  }

  if (v8 < v9)
  {
    if ((getPlaybackBossSnippetRate_preferencesChecked & 1) == 0)
    {
      v10 = CFPreferencesCopyAppValue(@"snippet_rate", @"com.apple.coremedia");
      getPlaybackBossSnippetRate_preferencesChecked = 1;
      if (v10)
      {
        v11 = v10;
        v12 = CFGetTypeID(v10);
        if (v12 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v11, kCFNumberFloat32Type, &getPlaybackBossSnippetRate_playbackBossSnippetRate);
        }

        CFRelease(v11);
      }
    }

    *(a4 + 4) = getPlaybackBossSnippetRate_playbackBossSnippetRate;
    goto LABEL_20;
  }

  if (a5 == 0.0)
  {
    *(a4 + 4) = 1065353216;
LABEL_20:
    *a4 = a5;
LABEL_21:
    *(a4 + 8) = 1;
    goto LABEL_22;
  }

  if (v7)
  {
    FPSupport_ConfigSnapRateForLQZL((a4 + 4), a4, a5);
  }

  else
  {
    if (a3[1] > v9)
    {
LABEL_9:
      *(a4 + 9) = 1;
      *(a4 + 4) = 1065353216;
      *a4 = a5;
      goto LABEL_22;
    }

    *a4 = a5;
    *(a4 + 4) = v9;
  }

  if (a5 <= 0.0)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t bossCheckTimeWithEndTimes(uint64_t a1, CMTime *a2, uint64_t a3, float a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((a2->flags & 0x1D) != 1 || a4 == 0.0)
  {
    return 0;
  }

  if (a4 > 0.0)
  {
    if ((*(a1 + 188) & 0x1D) == 1)
    {
      v7 = (a1 + 176);
      time1 = *a2;
      time2 = *(a1 + 176);
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        if (dword_1EAF16E78)
        {
          goto LABEL_12;
        }

        goto LABEL_13;
      }
    }

    return 0;
  }

  if ((*(a1 + 308) & 0x1D) != 1)
  {
    return 0;
  }

  v7 = (a1 + 296);
  time1 = *a2;
  time2 = *(a1 + 296);
  if (CMTimeCompare(&time1, &time2) > 0)
  {
    return 0;
  }

  if (dword_1EAF16E78)
  {
LABEL_12:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_13:
  if (a3)
  {
    v9 = *v7;
    *(a3 + 16) = *(v7 + 2);
    *a3 = v9;
  }

  if (dword_1EAF16E78)
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = MEMORY[0x1E6960C70];
  *(a1 + 320) = *MEMORY[0x1E6960C70];
  *(a1 + 336) = *(v11 + 16);
  CMTimebaseSetTimerDispatchSourceToFireImmediately(*(a1 + 120), *(a1 + 168));
  return 1;
}

uint64_t figPlaybackBossStartPrerollAndSetPlayState(uint64_t a1, CMTime *a2, uint64_t a3, __int16 a4, int a5, int a6, CMTime *a7, __int128 *a8, const void *a9)
{
  v43 = *MEMORY[0x1E69E9840];
  v14 = *&a3;
  v37 = (*(a8 + 3) & 0x1D) == 1;
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v16 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    time = *a7;
    CMTimeGetSeconds(&time);
    kdebug_trace();
    if (*v16 == 1)
    {
      strncpy(&time, (a1 + 850), 8uLL);
      kdebug_trace();
    }
  }

  ++*(a1 + 648);
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&time, HostTimeClock);
  *(a1 + 624) = time;
  v18 = *(a1 + 424);
  *(a1 + 424) = a9;
  if (a9)
  {
    CFRetain(a9);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  *(a1 + 432) = a6;
  v19 = *&a7->value;
  *(a1 + 816) = a7->epoch;
  *(a1 + 800) = v19;
  v20 = *a8;
  *(a1 + 840) = *(a8 + 2);
  *(a1 + 824) = v20;
  *(a1 + 512) = a3;
  *(a1 + 107) = 0;
  if ((a2->flags & 0x1D) == 1)
  {
    v21 = *&a2->value;
    *(a1 + 468) = a2->epoch;
    *(a1 + 452) = v21;
  }

  else if ((a7->flags & 0x1D) == 1)
  {
    v22 = *&a7->value;
    a2->epoch = a7->epoch;
    *&a2->value = v22;
  }

  else
  {
    CMTimebaseGetTime(&time, *(a1 + 120));
    *a2 = time;
  }

  v23 = *&a2->value;
  *(a1 + 532) = a2->epoch;
  *(a1 + 516) = v23;
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v25 = *(a1 + 80);
  bossBroadcastPrerollRateToRenderPipelines(a1, 0, v14);
  bossBumpCurrentMasterOrder(a1);
  v26 = *(a1 + 80);
  time = *a2;
  v27 = bossSetMentorModesForTimeAndRate(a1, 0, v26, &time, a3, a4, a5, v37, 0);
  FigSimpleMutexUnlock();
  if (a6 == 1886151033)
  {
    v28 = *(a1 + 440);
    v29 = *(a1 + 444);
    time = *a7;
    v41 = *a8;
    started = bossStartTimebaseAndAudioContext(a1, &time.value, &v41, v28, v29);
    if (started)
    {
      v27 = started;
      *(a1 + 432) = 1885435251;
    }

    else
    {
      *(a1 + 432) = 1886151033;
      ++*(a1 + 720);
      ++*(a1 + 728);
      v32 = CMClockGetHostTimeClock();
      CMClockGetTime(&time, v32);
      *(a1 + 664) = time;
      v33 = *(a1 + 120);
      if (v33)
      {
        CMTimebaseGetTime(&time, v33);
        v27 = 0;
        *(a1 + 696) = time;
      }

      else
      {
        return 0;
      }
    }
  }

  else if (!v25)
  {
    if (dword_1EAF16E78)
    {
      v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v34 = malloc_type_calloc(1uLL, 0x10uLL, 0xE0040E685C293uLL);
    *v34 = CFRetain(a1);
    v35 = *(a1 + 544);
    if (v35)
    {
      v35 = CFRetain(v35);
    }

    v34[1] = v35;
    dispatch_async_f(*(a1 + 32), v34, figPlaybackBoss_AllMentorsPrerollCompleteWithContext);
  }

  return v27;
}