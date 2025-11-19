uint64_t videoMentorDependencyStateGetNodeForCursor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  OUTLINED_FUNCTION_21_5();
  v12 = v11;
  bzero(v17, 0xA8uLL);
  *a6 = 0;
  v18 = v8;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v13)
  {
    return 4294954514;
  }

  result = v13(v8, &v19);
  if (result)
  {
    return result;
  }

  Value = CFDictionaryGetValue(*(v6 + 8), v17);
  v16 = Value;
  v20 = Value;
  if (a5 && !Value)
  {
    result = videoMentorFrameNodeCreate(v12, *MEMORY[0x1E695E480], v8, v7, &v20);
    if (result)
    {
      return result;
    }

    v16 = v20;
    CFDictionarySetValue(*(v6 + 8), v20, v20);
    if (v16)
    {
      CFRelease(v16);
    }
  }

  result = 0;
  *a6 = v16;
  return result;
}

void videoMentorPostCollectorCoherenceConduitNotification(uint64_t a1)
{
  if (*(a1 + 488))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v3 = Mutable;
      FigCFDictionarySetInt32();
      v4 = *(a1 + 24);
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v5)
      {
        v5(v4, *MEMORY[0x1E6962E58], v3, 0);
      }

      CFRelease(v3);
    }

    else
    {

      FigSignalErrorAtGM();
    }
  }
}

uint64_t videoMentorRefreshGroupClassifyNodes(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 40));
  v3 = Count;
  if (Count > 10000)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_16();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), 0);
    return videoMentorReportIssueWithRefreshNode(ValueAtIndex);
  }

  if (Count < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = CFArrayGetValueAtIndex(*(a1 + 40), v5);
    if (v6[19] == 1)
    {
      goto LABEL_49;
    }

    v7 = v6;
    result = videoMentorFrameNodeDetermineIfIsLeaf(v6, a1);
    if (result)
    {
      return result;
    }

    if (v7[17] == 1)
    {
      v8 = OUTLINED_FUNCTION_30_5();
      CFArrayAppendValue(v8, v7);
      if (CFArrayGetCount(v8) >= 1)
      {
        do
        {
          v9 = OUTLINED_FUNCTION_9_2();
          v11 = CFArrayGetValueAtIndex(v9, v10);
          v12 = CFArrayGetCount(v11[4]);
          if (v12 >= 1)
          {
            v13 = v12;
            for (i = 0; i != v13; ++i)
            {
              v15 = CFArrayGetValueAtIndex(v11[4], i);
              if (*(v15 + 7) == a1 && !v15[17])
              {
                v15[17] = 1;
                CFArrayAppendValue(v8, v15);
              }
            }
          }

          v16 = OUTLINED_FUNCTION_9_2();
          CFArrayRemoveValueAtIndex(v16, v17);
        }

        while (CFArrayGetCount(v8) > 0);
      }

      CFRelease(v8);
    }

    v18 = OUTLINED_FUNCTION_30_5();
    CFArrayAppendValue(v18, v7);
    if (CFArrayGetCount(v18) < 1)
    {
      v46 = 2;
      goto LABEL_40;
    }

    v19 = v3;
    while (1)
    {
      v20 = OUTLINED_FUNCTION_9_2();
      v22 = CFArrayGetValueAtIndex(v20, v21);
      v23 = v22[2];
      if (v23)
      {
        break;
      }

LABEL_32:
      v34 = OUTLINED_FUNCTION_9_2();
      CFArrayRemoveValueAtIndex(v34, v35);
      if (CFArrayGetCount(v18) <= 0)
      {
        v46 = 2;
        goto LABEL_38;
      }
    }

    v24 = v22;
    v25 = *(a1 + 64);
    v26 = *(CMBaseObjectGetVTable() + 16);
    if (v26)
    {
      v27 = v26;
      if (!v25)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v27 = 0;
      if (!v25)
      {
        goto LABEL_26;
      }
    }

    v28 = *(CMBaseObjectGetVTable() + 16);
    if (v28)
    {
      v29 = v28;
      goto LABEL_27;
    }

LABEL_26:
    v29 = 0;
LABEL_27:
    if (v27 == v29 && *(v27 + 32) && (*(v29 + 32))(v23, v25) == -1)
    {
      goto LABEL_32;
    }

    v30 = CFArrayGetCount(v24[4]);
    if (v30 < 1)
    {
      goto LABEL_32;
    }

    v31 = v30;
    v32 = 0;
    while (1)
    {
      v33 = CFArrayGetValueAtIndex(v24[4], v32);
      if (v33[7] == a1)
      {
        break;
      }

      CFArrayAppendValue(v18, v33);
      if (v31 == ++v32)
      {
        goto LABEL_32;
      }
    }

    v46 = 1;
LABEL_38:
    v3 = v19;
LABEL_40:
    CFRelease(v18);
    v7[18] = v46;
    v36 = OUTLINED_FUNCTION_30_5();
    CFArrayAppendValue(v36, v7);
    if (CFArrayGetCount(v36) >= 1)
    {
      do
      {
        v37 = OUTLINED_FUNCTION_9_2();
        v39 = CFArrayGetValueAtIndex(v37, v38);
        v40 = CFArrayGetCount(v39[3]);
        if (v40 >= 1)
        {
          v41 = v40;
          for (j = 0; j != v41; ++j)
          {
            v43 = CFArrayGetValueAtIndex(v39[3], j);
            if (*(v43 + 7) == a1 && !v43[18])
            {
              v43[18] = 1;
              CFArrayAppendValue(v36, v43);
            }
          }
        }

        v44 = OUTLINED_FUNCTION_9_2();
        CFArrayRemoveValueAtIndex(v44, v45);
      }

      while (CFArrayGetCount(v36) > 0);
    }

    CFRelease(v36);
LABEL_49:
    if (++v5 == v3)
    {
      return 0;
    }
  }
}

uint64_t videoMentorCursorIsInPlayRange(const void *a1, uint64_t a2, CMTime *a3, _BYTE *a4)
{
  v7 = *(MEMORY[0x1E6960C98] + 16);
  *&v12.start.value = *MEMORY[0x1E6960C98];
  *&v12.start.epoch = v7;
  *&v12.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  *a4 = 0;
  CursorPTSRange = videoMentorGetCursorPTSRange(a1, &v12);
  if (!CursorPTSRange)
  {
    *&v10.start.value = *&v12.start.value;
    v10.start.epoch = v12.start.epoch;
    time2 = *a3;
    if (CMTimeCompare(&v10.start, &time2) < 0)
    {
      v10 = v12;
      CMTimeRangeGetEnd(&time2, &v10);
      *&v10.start.value = *a2;
      v10.start.epoch = *(a2 + 16);
      if (CMTimeCompare(&v10.start, &time2) < 0)
      {
        *a4 = 1;
      }
    }
  }

  return CursorPTSRange;
}

void videoMentorDependencyStateExecuteAction(const void **a1, int *a2)
{
  v4 = *(a2 + 1);
  v5 = *a2;
  if (*a2 != 2)
  {
    if (v5 != 1)
    {
      if (!v5 && *(v4 + 76) != 1)
      {
        *(v4 + 76) = 1;
        v6 = *(v4 + 56);
        if (v6)
        {
          --*(v6 + 80);
          *(v6 + 57) = 0;
        }

        Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(v4 + 32));
        if (CFArrayGetCount(Copy) >= 1)
        {
          OUTLINED_FUNCTION_417_0();
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Copy, v2);
            videoMentorFrameNodeRemoveDependentNode(ValueAtIndex, v4, 1);
            if (!*(ValueAtIndex + 19))
            {
              v10 = *(ValueAtIndex + 7);
              if (v10)
              {
                v34 = ValueAtIndex;
                v33 = 2;
                if (!*(v10 + 56))
                {
                  CFArrayAppendValue(*(v10 + 48), &v33);
                  videoMentorAddRefreshGroupToProcess(a1, *(ValueAtIndex + 7));
                }
              }
            }

            OUTLINED_FUNCTION_377_0();
          }

          while (!v9);
        }

        if (Copy)
        {
          CFRelease(Copy);
        }
      }

      goto LABEL_59;
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v12 = Mutable;
      CFArrayAppendValue(Mutable, v4);
      if (CFArrayGetCount(v12) >= 1)
      {
        do
        {
          v13 = OUTLINED_FUNCTION_383();
          v15 = CFArrayGetValueAtIndex(v13, v14);
          v16 = OUTLINED_FUNCTION_383();
          CFArrayRemoveValueAtIndex(v16, v17);
          if (*(v15 + 19) != 2 && v15 != *a1)
          {
            *(v15 + 19) = 2;
            v18 = *(v15 + 7);
            if (v18)
            {
              v18[10] = vadd_s32(v18[10], 0x1FFFFFFFFLL);
            }

            if (CFArrayGetCount(*(v15 + 4)) >= 1)
            {
              OUTLINED_FUNCTION_417_0();
              do
              {
                v19 = CFArrayGetValueAtIndex(*(v15 + 4), v2);
                if (v19[19] != 2)
                {
                  CFArrayAppendValue(v12, v19);
                }

                OUTLINED_FUNCTION_377_0();
              }

              while (!v9);
            }

            if (CFArrayGetCount(*(v15 + 3)) >= 1)
            {
              OUTLINED_FUNCTION_417_0();
              do
              {
                v20 = *(CFArrayGetValueAtIndex(*(v15 + 3), v2) + 7);
                if (v20)
                {
                  videoMentorAddRefreshGroupToProcess(a1, v20);
                }

                OUTLINED_FUNCTION_377_0();
              }

              while (!v9);
            }

            v21 = *(v15 + 7);
            if (v21)
            {
              videoMentorAddRefreshGroupToProcess(a1, v21);
            }
          }
        }

        while (CFArrayGetCount(v12) > 0);
      }

      OUTLINED_FUNCTION_52_4();

      CFRelease(v22);
      return;
    }

LABEL_59:
    OUTLINED_FUNCTION_52_4();
    return;
  }

  if ((*(v4 + 76) - 1) < 2 || *(v4 + 68) == 2)
  {
    goto LABEL_59;
  }

  *(v4 + 68) = 0;
  videoMentorFrameNodeDetermineIfIsLeaf(v4, *(v4 + 56));
  if (*(v4 + 68) == 2)
  {
    Count = CFArrayGetCount(*(v4 + 32));
    if (Count >= 1)
    {
      v25 = Count;
      for (i = 0; i != v25; ++i)
      {
        v27 = CFArrayGetValueAtIndex(*(v4 + 32), i);
        if (!*(v27 + 19))
        {
          v28 = v27;
          v29 = v27[7];
          if (v29)
          {
            v34 = v27;
            v33 = 2;
            if (!*(v29 + 56))
            {
              CFArrayAppendValue(*(v29 + 48), &v33);
              videoMentorAddRefreshGroupToProcess(a1, v28[7]);
            }
          }
        }
      }
    }

    videoMentorAddRefreshGroupToProcess(a1, *(v4 + 56));
    goto LABEL_59;
  }

  if (CFArrayGetCount(*(v4 + 24)) != 1 || !*(CFArrayGetValueAtIndex(*(v4 + 24), 0) + 7))
  {
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_52_4();

  videoMentorAddRefreshGroupToProcess(v30, v31);
}

uint64_t videoMentorSimulateSyncFrameClustersOnly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _BYTE *a6, _BYTE *a7, _BYTE *a8, uint64_t a9)
{
  OUTLINED_FUNCTION_21_5();
  v15 = v14;
  v57 = 0;
  cf = 0;
  if (*(*(CMBaseObjectGetVTable() + 16) + 64))
  {
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v16)
    {
      v17 = v16(v15, &v57 + 1, 0, 0, &v57);
      if (!v17)
      {
        v18 = HIBYTE(v57);
        goto LABEL_16;
      }
    }

    else
    {
      v17 = 4294954514;
    }

    goto LABEL_30;
  }

  LOBYTE(v54) = 0;
  LOBYTE(v51) = 0;
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v19)
  {
    v17 = 4294954514;
    goto LABEL_30;
  }

  v17 = v19(v15, &v54, &v51, 0);
  if (v17)
  {
LABEL_30:
    FigSignalErrorAtGM();
    goto LABEL_31;
  }

  v20 = v54 - 66;
  if (v20 > 0xE || ((1 << v20) & 0x4081) == 0)
  {
    v30 = FigSignalErrorAtGM();
    goto LABEL_53;
  }

  if (v51)
  {
    v21 = 0;
  }

  else
  {
    v21 = v54 == 73;
  }

  v18 = v21;
  HIBYTE(v57) = v18;
  LOBYTE(v57) = v54 == 66;
LABEL_16:
  if (v18)
  {
    if ((*(a9 + 16) & 1) == 0 || (v54 = *(a9 + 4), v55 = *(a9 + 20), OUTLINED_FUNCTION_20_4(), OUTLINED_FUNCTION_268(v22, v43, v45, v47, v49, v51, *(&v51 + 1), v52, v53, v54) <= 0))
    {
      *a6 = 1;
      *a8 = 1;
      *(a9 + 76) = videoMentorSyncFrameIsOpenGOP(v15);
      v25 = OUTLINED_FUNCTION_51_4();
      *(a9 + 44) = v26;
      *(a9 + 28) = v25;
      if (!*a7)
      {
        goto LABEL_67;
      }

      *a9 = 1;
      v27 = OUTLINED_FUNCTION_51_4();
      *(a9 + 68) = v28;
      *(a9 + 52) = v27;
      if (a5 < 2)
      {
        goto LABEL_47;
      }

      v29 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v29)
      {
        v17 = 4294954514;
        goto LABEL_31;
      }

      v30 = v29(v15, &cf);
      if (!v30)
      {
        v31 = cf;
        v32 = *(*(CMBaseObjectGetVTable() + 16) + 176);
        if (v32)
        {
          v32(v31, (a5 - 1), 0);
        }

        v33 = cf;
        v34 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v34)
        {
          v34(v33, a9 + 52);
        }

        goto LABEL_47;
      }

LABEL_53:
      v17 = v30;
      goto LABEL_31;
    }
  }

  if (*(a9 + 77))
  {
    if (*a9 >= a5)
    {
      *a6 = 0;
      *a7 = 0;
      if (v57)
      {
        goto LABEL_67;
      }

      *a8 = 0;
      *(a9 + 76) = 0;
    }

    else
    {
      v54 = *(a9 + 28);
      v55 = *(a9 + 44);
      OUTLINED_FUNCTION_20_4();
      if (OUTLINED_FUNCTION_268(v23, v43, v45, v47, v49, v51, *(&v51 + 1), v52, v53, v54) > 0 || (OUTLINED_FUNCTION_6_22(), OUTLINED_FUNCTION_268(*(a9 + 68), v44, v46, v48, v50, *(a9 + 52), *(a9 + 60), v52, v53, v54) > 0))
      {
        if (v57)
        {
          goto LABEL_58;
        }

        if (*(a9 + 76))
        {
          OUTLINED_FUNCTION_6_22();
          if ((OUTLINED_FUNCTION_268(*(a9 + 44), v44, v46, v48, v50, *(a9 + 28), *(a9 + 36), v52, v53, v54) & 0x80000000) != 0)
          {
            goto LABEL_58;
          }
        }

        goto LABEL_60;
      }

      *a6 = 1;
      *a7 = 1;
      ++*a9;
    }

    goto LABEL_65;
  }

  if (*(a9 + 76))
  {
    OUTLINED_FUNCTION_6_22();
    if ((OUTLINED_FUNCTION_268(*(a9 + 44), v43, v45, v47, v49, *(a9 + 28), *(a9 + 36), v52, v53, v54) & 0x80000000) != 0)
    {
      goto LABEL_58;
    }
  }

  if (!*a7 || !*a8)
  {
    if (v57)
    {
LABEL_58:
      v17 = 0;
      *a6 = 0;
LABEL_61:
      *a7 = 0;
      goto LABEL_31;
    }

LABEL_60:
    v17 = 0;
    *a6 = 1;
    goto LABEL_61;
  }

  *a6 = 1;
  *a7 = 1;
  *a9 = 1;
  v35 = OUTLINED_FUNCTION_51_4();
  *(a9 + 44) = v36;
  *(a9 + 28) = v35;
  v37 = OUTLINED_FUNCTION_51_4();
  *(a9 + 68) = v38;
  *(a9 + 52) = v37;
LABEL_47:
  OUTLINED_FUNCTION_29();
  if (v21 && (v54 = *v9, v55 = *(v9 + 2), OUTLINED_FUNCTION_268(*(MEMORY[0x1E6960CC0] + 16), v43, v45, v47, v49, *MEMORY[0x1E6960CC0], *(MEMORY[0x1E6960CC0] + 8), v52, v53, v54) >= 1))
  {
    if (*(a9 + 16))
    {
      v51 = *(a9 + 4);
      v39 = *(a9 + 20);
    }

    else
    {
      OUTLINED_FUNCTION_20_4();
    }

    v52 = v39;
  }

  else
  {
    v51 = *(a9 + 28);
    v52 = *(a9 + 44);
  }

  OUTLINED_FUNCTION_31_5();
  CMTimeAdd(v42, v40, v41);
  *(a9 + 4) = v54;
  *(a9 + 20) = v55;
LABEL_65:
  if (*a7)
  {
    v17 = 0;
    *(a9 + 77) = 1;
    goto LABEL_31;
  }

LABEL_67:
  v17 = 0;
LABEL_31:
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

void videoMentorUpdateUpcomingOutputPTSRangeAnnouncement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6, uint64_t *a7)
{
  v54 = 0uLL;
  v55 = 0;
  v52 = 0uLL;
  v53 = 0;
  v48 = *MEMORY[0x1E6960C88];
  v49 = *(MEMORY[0x1E6960C88] + 16);
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v13 || v13(a2, &v52) || (OUTLINED_FUNCTION_29(), !v14) || (v15 = *(*(CMBaseObjectGetVTable() + 16) + 40)) == 0 || v15(a2, &v54) || (BYTE12(v54) & 0x1D) != 1)
  {
    OUTLINED_FUNCTION_39_4();
    FigSignalErrorAtGM();
    return;
  }

  v50 = v54;
  v51 = v55;
  v46 = *a7;
  v47 = a7[2];
  if ((BYTE12(v46) & 0x1D) == 1 && (v44 = v52, v45 = v53, (OUTLINED_FUNCTION_268(a7[2], v30, v33, v35, v37, *a7, a7[1], v39, v42, v52) & 0x80000000) != 0))
  {
    v50 = *a6;
    v51 = *(a6 + 2);
    v24 = 1;
  }

  else
  {
    if (!FigSampleCursorImplementsGetMinimumUpcomingPresentationTime() || (v16 = OUTLINED_FUNCTION_42_5(), FigSampleCursorGetMinimumUpcomingPresentationTime(v16, v17, v18, v19)))
    {
      v20 = OUTLINED_FUNCTION_42_5();
      if (FigSampleCursorUtilityGetMinimumUpcomingPresentationTime(v20, v21, v22, v23))
      {
        return;
      }
    }

    v24 = 0;
  }

  FigSimpleMutexLock();
  v25 = *(a1 + 64);
  if (v25)
  {
    if ((BYTE12(v54) & 0x1D) == 1)
    {
      v25(*(a1 + 72), a4, 0, &v54, &v48);
    }

    if ((v24 & 1) == 0)
    {
      OUTLINED_FUNCTION_29();
      if (v14)
      {
        (*(a1 + 64))(*(a1 + 72), a4, 0, &v50, &v48);
      }
    }
  }

  FigSimpleMutexUnlock();
  v40 = *(a5 + 2);
  v31 = v54;
  OUTLINED_FUNCTION_31_5();
  CMTimeMaximum(v28, v26, v27);
  *a5 = v44;
  v29 = v45;
  *(a5 + 2) = v45;
  v44 = *a5;
  v45 = v29;
  if (OUTLINED_FUNCTION_268(v51, v31, *(&v31 + 1), v35, v37, v50, *(&v50 + 1), v40, v42, v44) <= 0)
  {
    v50 = *MEMORY[0x1E6960C70];
    v51 = *(MEMORY[0x1E6960C70] + 16);
    v46 = v50;
    v47 = v51;
  }

  OUTLINED_FUNCTION_6_22();
  if (OUTLINED_FUNCTION_268(v51, v32, v34, v36, v38, v50, *(&v50 + 1), v41, v43, v44))
  {
    v44 = v50;
    v45 = v51;
    videoMentorPostMinAndMaxUpcomingOutputPTS(a1, &v44, MEMORY[0x1E6960C70]);
    *a6 = v50;
    *(a6 + 2) = v51;
    *a7 = v46;
    a7[2] = v47;
  }
}

void videoMentorThrottlingStateHandleDiscontinuity()
{
  OUTLINED_FUNCTION_21_5();
  v4 = v3;
  v50 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v47 = 0;
  *&v45.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v45.epoch = v5;
  *&v44.value = *&v45.value;
  v44.epoch = v5;
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v37 = *&v45.value;
  *&v43.value = *&v45.value;
  v43.epoch = v5;
  v42 = 0;
  v6 = *v3;
  if (v6)
  {
    CFRelease(v6);
    *v4 = 0;
  }

  OUTLINED_FUNCTION_29();
  if (v18)
  {
    OUTLINED_FUNCTION_50_3();
    if (OUTLINED_FUNCTION_28_7(*(MEMORY[0x1E6960CC0] + 16), v22, v25, v27, v30, v32, v35, v37, *(&v37 + 1), *MEMORY[0x1E6960CC0], *(MEMORY[0x1E6960CC0] + 8), range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, time2.value, *&time2.timescale, time2.epoch, v40, time.start.value) >= 1)
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v7)
      {
        if (!v7(v1, &v47))
        {
          v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v8)
          {
            if (!v8(v1, &v46))
            {
              while (1)
              {
                v9 = *(*(OUTLINED_FUNCTION_55_5() + 16) + 40);
                if (!v9 || v9(v2, &v44))
                {
                  break;
                }

                if (v46)
                {
                  *&time.start.timescale = *&v44.timescale;
                  time.start.epoch = v44.epoch;
                  if ((OUTLINED_FUNCTION_28_7(v45.epoch, v23, v26, v28, v31, v33, v36, v37, *(&v37 + 1), v45.value, *&v45.timescale, range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, time2.value, *&time2.timescale, time2.epoch, v40, v44.value) & 0x80000000) == 0)
                  {
                    goto LABEL_19;
                  }

                  if (v46)
                  {
                    CFRelease(v46);
                    v46 = 0;
                  }
                }

                v10 = *(*(OUTLINED_FUNCTION_55_5() + 16) + 8);
                if (!v10 || v10(v2, &v46))
                {
                  break;
                }

                v45 = v44;
LABEL_19:
                if (!*(*(CMBaseObjectGetVTable() + 16) + 80))
                {
                  goto LABEL_32;
                }

                v11 = *(OUTLINED_FUNCTION_55_5() + 16);
                if (v11)
                {
                  v12 = v11;
                  if (!v1)
                  {
                    goto LABEL_24;
                  }
                }

                else
                {
                  v12 = 0;
                  if (!v1)
                  {
LABEL_24:
                    v13 = 0;
                    goto LABEL_25;
                  }
                }

                v13 = *(CMBaseObjectGetVTable() + 16);
LABEL_25:
                if (v12 != v13 || (v15 = *(v12 + 80)) == 0 || !v15(v2, v1, 1))
                {
                  v14 = *(*(OUTLINED_FUNCTION_55_5() + 16) + 168);
                  if (!v14 || v14(v2, 1, &v42))
                  {
                    break;
                  }

                  if (v42 == 1)
                  {
                    continue;
                  }
                }

LABEL_32:
                v29 = *(MEMORY[0x1E6960C98] + 16);
                v34 = *MEMORY[0x1E6960C98];
                v24 = *(MEMORY[0x1E6960C98] + 32);
                do
                {
                  *&time.start.value = v34;
                  *&time.start.epoch = v29;
                  *&time.duration.timescale = v24;
                  if (videoMentorGetCursorPTSRange(v46, &time))
                  {
                    break;
                  }

                  range = time;
                  CMTimeRangeGetEnd(&time2, &range);
                  *&range.start.value = *(v4 + 104);
                  range.start.epoch = *(v4 + 120);
                  if (CMTimeCompare(&range.start, &time2) < 0)
                  {
                    break;
                  }

                  v16 = v46;
                  v17 = *(*(CMBaseObjectGetVTable() + 16) + 176);
                  if (!v17)
                  {
                    break;
                  }

                  v18 = !v17(v16, 1, &v42) && v42 == 1;
                }

                while (v18);
                epoch = v45.epoch;
                *v4 = v46;
                v46 = 0;
                *&time.start.value = *&v45.value;
                time.start.epoch = epoch;
                if ((OUTLINED_FUNCTION_28_7(*(v0 + 16), v24, *(&v24 + 1), v29, *(&v29 + 1), v34, *(&v34 + 1), v37, *(&v37 + 1), *v0, *(v0 + 8), range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, time2.value, *&time2.timescale, time2.epoch, v40, v45.value) & 0x80000000) != 0)
                {
                  v45 = *v0;
                }

                *&range.start.value = *(v4 + 8);
                range.start.epoch = *(v4 + 24);
                time2 = v45;
                CMTimeSubtract(&time.start, &range.start, &time2);
                value = time.start.value;
                timescale = time.start.timescale;
                if ((time.start.flags & 0x1D) == 1)
                {
                  time.start.value = value;
                  time.start.timescale = timescale;
                  Seconds = CMTimeGetSeconds(&time.start);
                  OUTLINED_FUNCTION_50_3();
                  if (Seconds / CMTimeGetSeconds(&time.start) < 2147483650.0)
                  {
                    OUTLINED_FUNCTION_6_22();
                    CMTimeMultiply(&time.start, &range.start, v21);
                    *&range.start.value = *(v4 + 8);
                    range.start.epoch = *(v4 + 24);
                    CMTimeSubtract(&v43, &range.start, &time.start);
                  }
                }

                break;
              }
            }
          }
        }
      }
    }
  }

  *(v4 + 8) = v43;
  *(v4 + 32) = v37;
  *(v4 + 48) = v5;
  *(v4 + 152) = 0;
  videoMentorThrottlingStateClearSelectedCursors(v4);
  if (v46)
  {
    CFRelease(v46);
    v46 = 0;
  }

  if (v47)
  {
    CFRelease(v47);
  }
}

uint64_t videoMentorThread_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoMentorThread_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void videoMentorDependencyStateReset_cold_1(const void *a1, CFTypeRef *a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v5 = Mutable;
    CFArrayAppendValue(Mutable, a1);
    if (CFArrayGetCount(v5) >= 1)
    {
      do
      {
        v6 = OUTLINED_FUNCTION_265();
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
        v9 = OUTLINED_FUNCTION_265();
        CFArrayRemoveValueAtIndex(v9, v10);
        Count = CFArrayGetCount(ValueAtIndex[3]);
        OUTLINED_FUNCTION_53_3(Count);
        v12 = CFArrayGetCount(ValueAtIndex[5]);
        OUTLINED_FUNCTION_53_3(v12);
        CFArrayRemoveAllValues(ValueAtIndex[3]);
        CFArrayRemoveAllValues(ValueAtIndex[5]);
        CFArrayRemoveAllValues(ValueAtIndex[4]);
        CFArrayRemoveAllValues(ValueAtIndex[6]);
      }

      while (CFArrayGetCount(v5) > 0);
    }

    CFRelease(v5);
  }

  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }
}

uint64_t VideoMentorSetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VideoMentorSetProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VideoMentorCopyPerformanceDictionary_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoMentorThreadReversePlayback_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoMentorThreadReversePlayback_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoMentorThreadReversePlayback_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoMentorGetCursorPTSRange_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void videoMentorResetSavedListAndEnqueueMarker_cold_1(CMAttachmentBearerRef *a1, uint64_t a2, void **a3)
{
  if (!CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, a1))
  {
    CMSetAttachment(*a1, *MEMORY[0x1E6962E08], *MEMORY[0x1E695E4D0], 1u);
    v6 = *(a2 + 24);
    v7 = *a1;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      if (!v8(v6, v7))
      {
        ++*(a2 + 912);
        v9 = *a3;
        *a3 = 0;
        if (v9)
        {
          do
          {
            v10 = *v9;
            videoMentorSavedFrameDestroy(v9);
            v9 = v10;
          }

          while (v10);
        }
      }
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

uint64_t videoMentorFrameNodeCreate_cold_1(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t videoMentorFrameNodeCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoMentorCopySyncCursorForCursor_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void videoMentorRefreshGroupCreate_cold_1(uint64_t a1, const void *a2, _DWORD *a3)
{
  *a3 = FigSignalErrorAtGM();

  CFRelease(a2);
}

uint64_t videoMentorRefreshGroupCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

CFIndex videoMentorFrameNodeCopyUndeterminedParentNodes_cold_1(__CFArray *a1, __CFSet *a2)
{
  do
  {
    v5 = OUTLINED_FUNCTION_265();
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v6);
    v8 = OUTLINED_FUNCTION_265();
    CFArrayRemoveValueAtIndex(v8, v9);
    if (CFArrayGetCount(ValueAtIndex[4]) >= 1)
    {
      OUTLINED_FUNCTION_417_0();
      do
      {
        v10 = CFArrayGetValueAtIndex(ValueAtIndex[4], v2);
        if (!v10[19])
        {
          v11 = v10;
          if (!CFSetContainsValue(a2, v10))
          {
            CFSetSetValue(a2, v11);
            CFArrayAppendValue(a1, v11);
          }
        }

        OUTLINED_FUNCTION_377_0();
      }

      while (!v12);
    }

    result = CFArrayGetCount(a1);
  }

  while (result > 0);
  return result;
}

uint64_t inspectorInspectBytePair(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, __CFString *a5)
{
  v10 = *a2;
  if (v10 <= 0xF)
  {
    if (*a2 && *(a1 + 16) == 2)
    {
      if (a3 > 1)
      {
        if (!a5)
        {
LABEL_8:
          result = 0;
          *a4 = 1;
          *(a4 + 4) = 0x7874646100000002;
          *(a4 + 12) = 0;
          *(a1 + 16) = 2;
          *(a1 + 8) = 2020893793;
          return result;
        }

        v30 = 0;
        *cStr = 0;
        __sprintf_chk(cStr, 0, 5uLL, "%02x%02x", v10, a2[1]);
        v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0);
        if (v11)
        {
          v12 = v11;
          CFStringAppend(a5, v11);
          CFRelease(v12);
          goto LABEL_8;
        }

        return 4294950736;
      }

      goto LABEL_81;
    }

    if (a3)
    {
      if (!a5)
      {
        goto LABEL_24;
      }

      cStr[2] = 0;
      *cStr = 0;
      __sprintf_chk(cStr, 0, 3uLL, "%02x", v10);
      v19 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0);
      if (!v19)
      {
        return 4294950736;
      }

      goto LABEL_23;
    }

LABEL_81:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();

    return FigSignalErrorAtGM();
  }

  if (v10 > 0x1F)
  {
    if ((v10 & 0x80) != 0)
    {
      return 0;
    }

    if (!a3)
    {
      goto LABEL_81;
    }

    if (!a5)
    {
      goto LABEL_24;
    }

    *cStr = bswap32(kUTF16StandardCharacters[*a2 - 32]) >> 16;
    v19 = OUTLINED_FUNCTION_3_30(*MEMORY[0x1E695E480], cStr);
    if (v19)
    {
LABEL_23:
      v20 = v19;
      CFStringAppend(a5, v19);
      CFRelease(v20);
LABEL_24:
      *a4 = 1;
      *(a4 + 4) = *(a1 + 16);
      *(a4 + 8) = *(a1 + 8);
      if (a3 != 1)
      {
        return inspectorInspectBytePair(a1, a2 + 1, a3 - 1, a4, a5);
      }

      return 0;
    }

    return 4294950736;
  }

  if (a3 <= 1)
  {
    goto LABEL_81;
  }

  v14 = a2[1];
  v15 = v10 & 0x17;
  v16 = v14 & 0xF0;
  if (v15 == 16 && v16 == 32)
  {
    if (a5)
    {
      v17 = a5;
      v18 = 16;
      goto LABEL_39;
    }

    goto LABEL_46;
  }

  if (v15 != 23 || (v14 - 45) > 2u)
  {
    if (v15 == 17 && v16 == 32)
    {
      if (!a5)
      {
        goto LABEL_46;
      }

      v22 = CFStringCreateWithCString(*MEMORY[0x1E695E480], &inspectorAppendMnemonicForMidRowCode_kMidRowMnemonics[6 * v14 - 192], 0);
      if (!v22)
      {
        return 4294950736;
      }

LABEL_45:
      v23 = v22;
      CFStringAppend(a5, v22);
      CFRelease(v23);
      goto LABEL_46;
    }

    if (v15 != 17 || v16 != 48)
    {
      if ((v10 & 0x16) == 0x14 && v16 == 32)
      {
        if (a5)
        {
          result = inspectorAppendMnemonicForMiscControlCode(a5, v15, v14);
          if (result)
          {
            return result;
          }
        }

        if (v10)
        {
          v24 = 2;
        }

        else
        {
          v24 = 1;
        }

        goto LABEL_47;
      }

      if (v15 == 23 && (v14 - 33) <= 2u)
      {
        if (a5)
        {
          result = inspectorAppendMnemonicForMiscControlCode(a5, 23, v14);
          if (result)
          {
            return result;
          }
        }

        goto LABEL_46;
      }

      if (v14 >= 64)
      {
        if (a5)
        {
          result = inspectorAppendMnemonicForPreambleAddressCode(a5, v15, v14);
          if (result)
          {
            return result;
          }
        }

        goto LABEL_46;
      }

      if ((v10 & 0x16) == 0x12 && (v14 & 0xE0) == 0x20)
      {
        if (a5)
        {
          result = inspectorAppendMnemonicForExtendedCharacterCode(a5, v15, v14);
          if (result)
          {
            return result;
          }
        }

        goto LABEL_46;
      }

      if (a5)
      {
        v30 = 0;
        *cStr = 0;
        __sprintf_chk(cStr, 0, 5uLL, "%02x%02x", v10, v14);
        v27 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0);
        if (!v27)
        {
          return 4294950736;
        }

        v28 = v27;
        CFStringAppend(a5, v27);
        CFRelease(v28);
      }

      result = 0;
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 4) = 0;
      return result;
    }

    if (!a5)
    {
      goto LABEL_46;
    }

    *cStr = bswap32(kUTF16SpecialCharacters[v14 - 48]) >> 16;
    v22 = OUTLINED_FUNCTION_3_30(*MEMORY[0x1E695E480], cStr);
    if (v22)
    {
      goto LABEL_45;
    }

    return 4294950736;
  }

  if (a5)
  {
    v17 = a5;
    v18 = 23;
LABEL_39:
    result = inspectorAppendMnemonicForBackgroundAndForegroundAttributeCode(v17, v18, v14);
    if (result)
    {
      return result;
    }
  }

LABEL_46:
  v24 = *(a1 + 16);
LABEL_47:
  result = 0;
  *a4 = 1;
  if ((v10 & 8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  *(a4 + 4) = v24;
  *(a4 + 8) = 1668314222;
  *(a4 + 12) = v25;
  *(a1 + 12) = v25;
  *(a1 + 16) = v24;
  *(a1 + 8) = 1668314222;
  return result;
}

uint64_t inspectorAppendMnemonicForBackgroundAndForegroundAttributeCode(uint64_t a1, int a2, unsigned int a3)
{
  if (a2 == 23)
  {
    if (a3 > 0x2F)
    {
      return 4294950734;
    }

    v4 = &inspectorAppendMnemonicForBackgroundAndForegroundAttributeCode_kAttributeMnemonics2[6 * a3 - 270];
  }

  else
  {
    if (a2 == 16)
    {
      if (a3 <= 0x2F)
      {
        v4 = &inspectorAppendMnemonicForBackgroundAndForegroundAttributeCode_kAttributeMnemonics1[8 * a3 - a3 - 224];
        goto LABEL_8;
      }

      return 4294950734;
    }

    v4 = 0;
  }

LABEL_8:
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v4, 0);
  if (!v5)
  {
    return 4294950736;
  }

  OUTLINED_FUNCTION_4_34(v5);
  CFRelease(v3);
  return 0;
}

uint64_t inspectorAppendMnemonicForMiscControlCode(uint64_t a1, int a2, unsigned int a3)
{
  if ((a2 & 0xFE) == 0x14)
  {
    if (a3 <= 0x2F)
    {
      v4 = &inspectorAppendMnemonicForMiscControlCode_kMiscMnemonics1[6 * a3 - 192];
      goto LABEL_8;
    }

    return 4294950734;
  }

  if (a2 == 23)
  {
    if (a3 > 0x23)
    {
      return 4294950734;
    }

    v4 = &inspectorAppendMnemonicForMiscControlCode_kMiscMnemonics2[6 * a3 - 198];
  }

  else
  {
    v4 = 0;
  }

LABEL_8:
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v4, 0);
  if (!v5)
  {
    return 4294950736;
  }

  OUTLINED_FUNCTION_4_34(v5);
  CFRelease(v3);
  return 0;
}

uint64_t inspectorAppendMnemonicForPreambleAddressCode(__CFString *a1, int a2, int a3)
{
  switch(a2)
  {
    case 16:
      if ((a3 & 0xE0) == 0x40)
      {
        v4 = a3 - 64;
      }

      else
      {
        v4 = 0;
      }

      if ((a3 & 0xE0) == 0x40)
      {
        v5 = 11;
      }

      else
      {
        v5 = 0;
      }

      break;
    case 17:
      OUTLINED_FUNCTION_0_44();
      if (v37 ^ v38 | v36)
      {
        v40 = 0;
      }

      else
      {
        v40 = 1;
      }

      if (v37 ^ v38 | v36)
      {
        v21 = 0;
      }

      v23 = 2 * v40;
      v24 = v39 - 64;
      v25 = 1;
      goto LABEL_63;
    case 18:
      OUTLINED_FUNCTION_0_44();
      if (v17 ^ v18 | v16)
      {
        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

      if (v17 ^ v18 | v16)
      {
        v21 = 0;
      }

      v23 = 4 * v22;
      v24 = v19 - 64;
      v25 = 3;
      goto LABEL_63;
    case 19:
      OUTLINED_FUNCTION_0_44();
      if (v27 ^ v28 | v26)
      {
        v12 = 0;
      }

      else
      {
        v12 = v30;
      }

      if (v27 ^ v28 | v26)
      {
        v13 = 0;
      }

      else
      {
        v13 = 13;
      }

      v14 = v29 - 64;
      v15 = 12;
      goto LABEL_50;
    case 20:
      OUTLINED_FUNCTION_0_44();
      if (v7 ^ v8 | v6)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      if (v7 ^ v8 | v6)
      {
        v13 = 0;
      }

      else
      {
        v13 = 15;
      }

      v14 = v9 - 64;
      v15 = 14;
      goto LABEL_50;
    case 21:
      OUTLINED_FUNCTION_0_44();
      if (v42 ^ v43 | v41)
      {
        v12 = 0;
      }

      else
      {
        v12 = v45;
      }

      if (v42 ^ v43 | v41)
      {
        v13 = 0;
      }

      else
      {
        v13 = 6;
      }

      v14 = v44 - 64;
      v15 = 5;
      goto LABEL_50;
    case 22:
      OUTLINED_FUNCTION_0_44();
      if (v47 ^ v48 | v46)
      {
        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      if (v47 ^ v48 | v46)
      {
        v21 = 0;
      }

      v23 = 8 * v50;
      v24 = v49 - 64;
      v25 = 7;
LABEL_63:
      if (v20 == 64)
      {
        v4 = v24;
      }

      else
      {
        v4 = v21;
      }

      if (v20 == 64)
      {
        v5 = v25;
      }

      else
      {
        v5 = v23;
      }

      break;
    case 23:
      OUTLINED_FUNCTION_0_44();
      if (v32 ^ v33 | v31)
      {
        v12 = 0;
      }

      else
      {
        v12 = v35;
      }

      if (v32 ^ v33 | v31)
      {
        v13 = 0;
      }

      else
      {
        v13 = 10;
      }

      v14 = v34 - 64;
      v15 = 9;
LABEL_50:
      if (v10 == 64)
      {
        v4 = v14;
      }

      else
      {
        v4 = v12;
      }

      if (v10 == 64)
      {
        v5 = v15;
      }

      else
      {
        v5 = v13;
      }

      break;
    default:
      v4 = 0;
      v5 = 0;
      break;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    return 4294950736;
  }

  v52 = Mutable;
  CFStringAppendFormat(Mutable, 0, @"{Row:%02d,Col:%s}", v5, &inspectorAppendMnemonicForPreambleAddressCode_kPACMnemonics[5 * v4]);
  CFStringAppend(a1, v52);
  CFRelease(v52);
  return 0;
}

uint64_t inspectorAppendMnemonicForExtendedCharacterCode(uint64_t a1, int a2, unsigned int a3)
{
  v4 = a3 - 32;
  v8 = 0;
  if (a2 == 19)
  {
    if (a3 <= 0x3F)
    {
      v5 = kUTF16ExtendedCharacters2[v4];
      goto LABEL_7;
    }

    return 4294950734;
  }

  if (a2 != 18)
  {
    goto LABEL_8;
  }

  if (a3 > 0x3F)
  {
    return 4294950734;
  }

  v5 = kUTF16ExtendedCharacters1[v4];
LABEL_7:
  v8 = bswap32(v5) >> 16;
LABEL_8:
  v6 = OUTLINED_FUNCTION_3_30(*MEMORY[0x1E695E480], &v8);
  if (!v6)
  {
    return 4294950736;
  }

  OUTLINED_FUNCTION_4_34(v6);
  CFRelease(v3);
  return 0;
}

uint64_t FigCEA608DataInspectorCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataInspectorCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataInspectorInspectBytePair_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataInspectorInspectBytePair_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataInspectorInspectBytePair_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataInspectorInspectBytePair_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataInspectorInspectBytePair_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueTimingShimNewOutput(const AudioStreamBasicDescription *a1, void (__cdecl *a2)(void *, AudioQueueRef, AudioQueueBufferRef), void *a3, __CFRunLoop *a4, const __CFString *a5, UInt32 a6, const void *a7, __int128 *a8, uint64_t *a9)
{
  outAQ = 0;
  inData = 0;
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  p_mSampleRate = &a1->mSampleRate;
  fig_note_initialize_category_with_default_work_cf();
  v15 = AudioQueueNewOutput(a1, a2, a3, a4, a5, a6, &outAQ);
  if (v15)
  {
    goto LABEL_24;
  }

  if (a7)
  {
    v16 = *(CMBaseObjectGetVTable() + 16);
    if (!v16)
    {
      Instance = 0;
      v22 = 4294948075;
      goto LABEL_17;
    }

    v17 = *(v16 + 16);
    if (!v17)
    {
      Instance = 0;
      v22 = 4294948071;
      goto LABEL_17;
    }

    v15 = v17(a7, @"FAS_AudioSessionID", *MEMORY[0x1E695E480], &cf);
    if (v15 || (inData = FigCFNumberGetSInt32()) != 0 && (v15 = AudioQueueSetProperty(outAQ, 0x72736573u, &inData, 4u), v15))
    {
LABEL_24:
      v22 = v15;
LABEL_13:
      Instance = 0;
      goto LABEL_17;
    }
  }

  MEMORY[0x19A8D3660](&sRegisterFigAudioQueueTimingShimTypeOnce, registerFigAudioQueueTimingShimType);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v19 = FigDispatchQueueCreateWithPriority();
    if (v19)
    {
      v20 = v19;
      *(Instance + 52) = *p_mSampleRate;
      v21 = *a8;
      *(Instance + 44) = *(a8 + 2);
      *(Instance + 28) = v21;
      *(Instance + 16) = outAQ;
      outAQ = 0;
      if (a7)
      {
        CFRetain(a7);
      }

      v22 = 0;
      *(Instance + 24) = -12948;
      *(Instance + 56) = a7;
      *(Instance + 64) = v20;
      *a9 = Instance;
      goto LABEL_13;
    }

    v22 = 4294954510;
  }

  else
  {
    v22 = FigSignalErrorAtGM();
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  if (outAQ)
  {
    AudioQueueDispose(outAQ, 0);
  }

  return v22;
}

uint64_t FigAudioQueueTimingShimDispose(AudioQueueRef *a1, Boolean a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  if (!a1[2])
  {
    return 4294954511;
  }

  faqts_waitAudioQueueStartSynchronous(a1);
  if (dword_1EAF16E18)
  {
    v5 = OUTLINED_FUNCTION_126();
    if (OUTLINED_FUNCTION_116_0(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17, v18, *v19, v19[2], OS_LOG_TYPE_DEFAULT, 0))
    {
      v13 = v2;
    }

    else
    {
      v13 = v2 & 0xFFFFFFFE;
    }

    if (v13)
    {
      OUTLINED_FUNCTION_1_41();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_0_45();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = AudioQueueDispose(a1[2], a2);
  a1[2] = 0;
  CFRelease(a1);
  return v14;
}

uint64_t FigAudioQueueTimingShimFlush(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 4294954511;
  }

  if (dword_1EAF16E18)
  {
    v3 = OUTLINED_FUNCTION_5_30();
    v11 = OUTLINED_FUNCTION_180_0(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15, v16, SBYTE2(v16), BYTE3(v16), SHIDWORD(v16));
    if (OUTLINED_FUNCTION_124_0(v11))
    {
      OUTLINED_FUNCTION_1_41();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_0_45();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = *(a1 + 16);
  }

  return AudioQueueFlush(v2);
}

uint64_t FigAudioQueueTimingShimReset(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 4294954511;
  }

  if (dword_1EAF16E18)
  {
    v3 = OUTLINED_FUNCTION_5_30();
    v11 = OUTLINED_FUNCTION_180_0(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15, v16, SBYTE2(v16), BYTE3(v16), SHIDWORD(v16));
    if (OUTLINED_FUNCTION_124_0(v11))
    {
      OUTLINED_FUNCTION_1_41();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_0_45();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = *(a1 + 16);
  }

  return AudioQueueReset(v2);
}

uint64_t FigAudioQueueTimingShimPause(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  if (!*(a1 + 16))
  {
    return 4294954511;
  }

  faqts_waitAudioQueueStartSynchronous(a1);
  if (dword_1EAF16E18)
  {
    v2 = OUTLINED_FUNCTION_5_30();
    v10 = OUTLINED_FUNCTION_180_0(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, v14, v15, SBYTE2(v15), BYTE3(v15), SHIDWORD(v15));
    if (OUTLINED_FUNCTION_124_0(v10))
    {
      OUTLINED_FUNCTION_1_41();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_0_45();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = AudioQueuePause(*(a1 + 16));
  if (!result)
  {
    *(a1 + 24) = -12948;
  }

  return result;
}

uint64_t FigAudioQueueTimingShimPrime(uint64_t a1, UInt32 inNumberOfFramesToPrepare, UInt32 *outNumberOfFramesPrepared)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 4294954511;
  }

  if (dword_1EAF16E18)
  {
    v7 = OUTLINED_FUNCTION_126();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_0_45();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = *(a1 + 16);
  }

  return AudioQueuePrime(v4, inNumberOfFramesToPrepare, outNumberOfFramesPrepared);
}

uint64_t FigAudioQueueTimingShimGetIncrementedSampleTime(CMTime *a1, double *a2, double *a3)
{
  if (!a1)
  {
    return 4294954516;
  }

  if (!a1->epoch)
  {
    return 4294954511;
  }

  if (!a3)
  {
    return 4294954516;
  }

  memset(v17, 0, sizeof(v17));
  faqts_convertTimingShimTimeStampToAQTimeStamp(a1, a2, v17);
  *v17 = *v17 + 1.0;
  v6 = faqts_convertAQTimeStampToTimingShimTimeStamp(a1, v17, v16);
  OUTLINED_FUNCTION_16_9(v6, v7, v8, v9, v10, v11, v12, v13, v16[0], v16[1], v14, v16[2]);
  result = 0;
  if (*a3 == *a2)
  {
    *a3 = *a3 + 1.0;
  }

  return result;
}

void FigAudioQueueTimingShimConvertTimingShimTimeToAQTime()
{
  OUTLINED_FUNCTION_17_7(MEMORY[0x1E6960C70]);
  if (v0)
  {
    v8 = OUTLINED_FUNCTION_7_16(v0, v1, v2, v3, v4, v5, v6, v7, v27, v31, v33, v35, v37, v39, v41, v43, v45);
    v16 = OUTLINED_FUNCTION_12_13(v8, v9, v10, v11, v12, v13, v14, v15, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46);
    v19 = faqts_convertTimingShimTimeStampToAQTimeStamp(v16, v17, v18);
    OUTLINED_FUNCTION_19_8(v19, v20, v21, v22, v23, v24, v25, v26, v29);
  }
}

uint64_t FigAudioQueueTimingShimStartAsyncWithPerfCallback(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    return 4294954516;
  }

  if (!*(a1 + 16))
  {
    return 4294954511;
  }

  if (a2)
  {
    v13 = a1 + 72;
    faqts_convertTimingShimTimeStampToAQTimeStamp(a1, a2, v17);
    v14 = v17[1];
    *(a1 + 72) = v17[0];
    *(a1 + 88) = v14;
    v15 = v17[3];
    *(a1 + 104) = v17[2];
    *(a1 + 120) = v15;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 136) = v13;
  faqts_audioQueueStartAsync(a1, a4, a5, a3, a6, a7);
  return 0;
}

uint64_t FigAudioQueueTimingShimStartWithPerfCallback(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 4294954516;
  }

  if (!*(a1 + 16))
  {
    return 4294954511;
  }

  if (a2)
  {
    v9 = a1 + 72;
    faqts_convertTimingShimTimeStampToAQTimeStamp(a1, a2, v13);
    v10 = v13[1];
    *(a1 + 72) = v13[0];
    *(a1 + 88) = v10;
    v11 = v13[3];
    *(a1 + 104) = v13[2];
    *(a1 + 120) = v11;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 136) = v9;
  faqts_audioQueueStartAsync(a1, 0, 0, a3, a4, a5);

  return faqts_waitAudioQueueStartSynchronous(a1);
}

uint64_t FigAudioQueueTimingShimStop(uint64_t a1, Boolean a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  if (!*(a1 + 16))
  {
    return 4294954511;
  }

  faqts_waitAudioQueueStartSynchronous(a1);
  if (dword_1EAF16E18)
  {
    v5 = OUTLINED_FUNCTION_126();
    if (OUTLINED_FUNCTION_116_0(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, *v18, v18[2], OS_LOG_TYPE_DEFAULT, 0))
    {
      v13 = v2;
    }

    else
    {
      v13 = v2 & 0xFFFFFFFE;
    }

    if (v13)
    {
      OUTLINED_FUNCTION_1_41();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_0_45();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = AudioQueueStop(*(a1 + 16), a2);
  if (!result)
  {
    *(a1 + 24) = -12948;
  }

  return result;
}

uint64_t FigAudioQueueTimingShimGetParameter(uint64_t a1, AudioQueueParameterID a2, AudioQueueParameterValue *a3)
{
  if (!a1)
  {
    return 4294954516;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    return AudioQueueGetParameter(v3, a2, a3);
  }

  else
  {
    return OUTLINED_FUNCTION_6_23();
  }
}

uint64_t FigAudioQueueTimingShimSetParameter(uint64_t a1, AudioQueueParameterID a2, AudioQueueParameterValue a3)
{
  if (!a1)
  {
    return 4294954516;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    return AudioQueueSetParameter(v3, a2, a3);
  }

  else
  {
    return OUTLINED_FUNCTION_6_23();
  }
}

uint64_t FigAudioQueueTimingShimGetProperty(uint64_t a1, AudioQueuePropertyID a2, void *a3, UInt32 *a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    return AudioQueueGetProperty(v4, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_6_23();
  }
}

uint64_t FigAudioQueueTimingShimSetProperty(uint64_t a1, AudioQueuePropertyID a2, const void *a3, UInt32 a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    return AudioQueueSetProperty(v4, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_6_23();
  }
}

uint64_t FigAudioQueueTimingShimAddPropertyListener(uint64_t a1, AudioQueuePropertyID a2, void (__cdecl *a3)(void *, AudioQueueRef, AudioQueuePropertyID), void *a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    return AudioQueueAddPropertyListener(v4, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_6_23();
  }
}

uint64_t FigAudioQueueTimingShimRemovePropertyListener(uint64_t a1, AudioQueuePropertyID a2, void (__cdecl *a3)(void *, AudioQueueRef, AudioQueuePropertyID), void *a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    return AudioQueueRemovePropertyListener(v4, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_6_23();
  }
}

uint64_t FigAudioQueueTimingShimAllocateBufferWithMemory(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  if (*(a1 + 16))
  {
    return MEMORY[0x1EEDB4228]();
  }

  return OUTLINED_FUNCTION_6_23();
}

uint64_t FigAudioQueueTimingShimAllocateBuffer(uint64_t a1, UInt32 a2, AudioQueueBufferRef *a3)
{
  if (!a1)
  {
    return 4294954516;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    return AudioQueueAllocateBuffer(v3, a2, a3);
  }

  else
  {
    return OUTLINED_FUNCTION_6_23();
  }
}

uint64_t FigAudioQueueTimingShimFreeBuffer(uint64_t a1, AudioQueueBuffer *a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    return AudioQueueFreeBuffer(v2, a2);
  }

  else
  {
    return OUTLINED_FUNCTION_6_23();
  }
}

void FigAudioQueueTimingShimGetCurrentTime(CMTime *a1, AudioQueueTimelineRef inTimeline, int a3, _OWORD *a4, Boolean *outTimelineDiscontinuity, _OWORD *a6)
{
  v6 = a4[1];
  *&outTimeStamp.mSampleTime = *a4;
  *&outTimeStamp.mRateScalar = v6;
  v7 = a4[3];
  *&outTimeStamp.mSMPTETime.mSubframes = a4[2];
  *&outTimeStamp.mSMPTETime.mHours = v7;
  if (a1)
  {
    epoch = a1->epoch;
    if (epoch)
    {
      if (a3)
      {
        if (faqts_waitAudioQueueStartSynchronous(a1))
        {
          return;
        }

        epoch = a1->epoch;
      }

      if (!AudioQueueGetCurrentTime(epoch, inTimeline, &outTimeStamp, outTimelineDiscontinuity))
      {
        if (a6)
        {
          v13 = *&outTimeStamp.mRateScalar;
          *a6 = *&outTimeStamp.mSampleTime;
          a6[1] = v13;
          v14 = *&outTimeStamp.mSMPTETime.mHours;
          a6[2] = *&outTimeStamp.mSMPTETime.mSubframes;
          a6[3] = v14;
        }

        faqts_convertAQTimeStampToTimingShimTimeStamp(a1, &outTimeStamp, v23);
        OUTLINED_FUNCTION_16_9(0, v15, v16, v17, v18, v19, v20, v21, v23[0], v23[1], v22, v23[2]);
      }
    }
  }
}

uint64_t FigAudioQueueTimingShimScheduleParameters(uint64_t a1, double *a2, unsigned int a3, unsigned int *a4, float *a5)
{
  memset(v27, 0, 64);
  if (a1)
  {
    if (*(a1 + 16))
    {
      faqts_convertTimingShimTimeStampToAQTimeStamp(a1, a2, v27);
      v9 = a3;
      v19 = malloc_type_calloc(a3, 4uLL, 0x100004052888210uLL);
      if (a3)
      {
        v11 = v19;
        v10 = a4;
        do
        {
          v12 = *v10++;
          v13 = (1 << v12) & 0x8001440;
          if (v12 > 0x1B || v13 == 0)
          {
            v15 = *a5;
          }

          else
          {
            v26 = 1;
            v25 = 0u;
            v24 = 0u;
            v23 = 0u;
            v22 = *a2 + (*a5 * *(a1 + 52));
            faqts_convertTimingShimTimeStampToAQTimeStamp(a1, &v22, v21);
            v15 = (v21[0] - *v27) / *(a1 + 52);
          }

          *v11++ = v15;
          ++a5;
          --v9;
        }

        while (v9);
      }

      v16 = v19;
      v17 = AudioQueueScheduleParameters();
    }

    else
    {
      v16 = 0;
      v17 = 4294954511;
    }
  }

  else
  {
    v16 = 0;
    v17 = 4294954516;
  }

  free(v16);
  return v17;
}

uint64_t FigAudioQueueTimingShimEnqueueBufferWithParameters(CMTime *a1, AudioQueueBuffer *a2, UInt32 a3, const AudioStreamPacketDescription *a4, UInt32 a5, UInt32 a6, UInt32 a7, const AudioQueueParameterEvent *a8, uint64_t a9, _OWORD *a10)
{
  if (!a1)
  {
    return 4294954516;
  }

  epoch = a1->epoch;
  if (!epoch)
  {
    return 4294954511;
  }

  memset(v25, 0, 64);
  memset(&v24, 0, sizeof(v24));
  if (a9)
  {
    inStartTime = v25;
    faqts_convertTimingShimTimeStampToAQTimeStamp(a1, a9, v25);
    epoch = a1->epoch;
  }

  else
  {
    inStartTime = 0;
  }

  result = AudioQueueEnqueueBufferWithParameters(epoch, a2, a3, a4, a5, a6, a7, a8, inStartTime, &v24);
  if (a10)
  {
    if (!result)
    {
      faqts_convertAQTimeStampToTimingShimTimeStamp(a1, &v24, v23);
      result = 0;
      v21 = v23[1];
      *a10 = v23[0];
      a10[1] = v21;
      v22 = v23[3];
      a10[2] = v23[2];
      a10[3] = v22;
    }
  }

  return result;
}

uint64_t FigAudioQueueTimingShimGetAudioQueueLatency(uint64_t a1, OpaqueCMClock *a2, int a3, CMTime *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E6960C70];
  *&v40.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v40.epoch = v5;
  if (!a1)
  {
    return 4294954516;
  }

  if (!*(a1 + 16))
  {
    return 4294954511;
  }

  v38 = v4;
  v10 = FigPreferAudioSessionClock();
  v11 = MEMORY[0x1E6960CC0];
  clock = a2;
  if (v10)
  {
    outData.value = 0;
    LODWORD(ioDataSize.value) = 8;
    Property = AudioQueueGetProperty(*(a1 + 16), 0x7164646Cu, &outData, &ioDataSize);
    if (!Property)
    {
      CMTimeMakeWithSeconds(&v40, *&outData.value, 1000000000);
      if (dword_1EAF16E18)
      {
        LODWORD(v50.value) = 0;
        LOBYTE(type.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = v50.value;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value))
        {
          v15 = value;
        }

        else
        {
          v15 = value & 0xFFFFFFFE;
        }

        if (v15)
        {
          OUTLINED_FUNCTION_14_12(v40.epoch, v34, v35, v36, a2, v38, *(&v38 + 1), v40.value, *&v40.timescale, v40.epoch, v41, v42, v43, v44, v45, v46.value, *&v46.timescale, v46.epoch, v47, type.value, *&type.timescale, type.epoch, v49, v50.value, *&v50.timescale, v50.epoch, v51, ioDataSize.value, *&ioDataSize.timescale, ioDataSize.epoch, v53, *&value_4, v55, outData.value, *&outData.timescale, outData.epoch, v57, *&rhs.mSampleTime, rhs.mHostTime, *&rhs.mRateScalar, rhs.mWordClockTime, *&rhs.mSMPTETime.mSubframes, *&rhs.mSMPTETime.mType, *&rhs.mSMPTETime.mHours, *&rhs.mFlags, v59, v60, v40.value, *&v40.timescale, *&lhs[0].mRateScalar);
          LODWORD(rhs.mSampleTime) = 136315650;
          OUTLINED_FUNCTION_11_15();
          rhs.mWordClockTime = v16;
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v11 = MEMORY[0x1E6960CC0];
      }
    }
  }

  else
  {
    HIDWORD(v55) = 0;
    value_4 = NAN;
    HIDWORD(v53) = 0;
    *&outData.value = v38;
    outData.epoch = v5;
    *&ioDataSize.value = v38;
    ioDataSize.epoch = v5;
    *&v50.value = v38;
    v50.epoch = v5;
    type = **&MEMORY[0x1E6960CC0];
    *&v46.value = v38;
    v46.epoch = v5;
    LODWORD(v45) = 0;
    v44 = *"trsnptuo";
    AudioDevice = CMAudioDeviceClockGetAudioDevice(a2, 0, &v55 + 1, 0);
    if (AudioDevice)
    {
      goto LABEL_44;
    }

    if (!FigAudioDeviceSupportsPresentationTime())
    {
      Property = 4294949375;
      goto LABEL_22;
    }

    AudioDevice = faqts_getAudioQueueLatency(a1, &v50);
    if (AudioDevice || (AudioDevice = FigAudioDeviceGetCurrentDynamicLatency(), AudioDevice) || (HIDWORD(v45) = 8, AudioDevice = OUTLINED_FUNCTION_15_10(HIDWORD(v55), &v44, v18, v19, &v45 + 1, &value_4), AudioDevice))
    {
LABEL_44:
      Property = AudioDevice;
    }

    else
    {
      LODWORD(v43) = 0;
      v42 = *"tlwhptuo";
      HIDWORD(v45) = 4;
      if (!OUTLINED_FUNCTION_15_10(HIDWORD(v55), &v42, v20, v21, &v45 + 1, &v53 + 4))
      {
        CMTimeMake(&ioDataSize, HIDWORD(v53), value_4);
        *&lhs[0].mSampleTime = *&v50.value;
        *&lhs[0].mRateScalar = v50.epoch;
        *&rhs.mSampleTime = *&ioDataSize.value;
        *&rhs.mRateScalar = ioDataSize.epoch;
        CMTimeSubtract(&type, lhs, &rhs);
      }

      *&lhs[0].mSampleTime = *&outData.value;
      *&lhs[0].mRateScalar = outData.epoch;
      *&rhs.mSampleTime = *&type.value;
      *&rhs.mRateScalar = type.epoch;
      CMTimeAdd(&v46, lhs, &rhs);
      if (dword_1EAF16E18)
      {
        HIDWORD(v41) = 0;
        BYTE3(v41) = 0;
        v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      Property = 0;
      v40 = v46;
    }
  }

LABEL_22:
  if (Property && faqts_getAudioQueueLatency(a1, &v40))
  {
    memset(lhs, 0, 64);
    memset(&rhs, 0, sizeof(rhs));
    outData = *v11;
    CurrentTime = AudioQueueDeviceGetCurrentTime(*(a1 + 16), lhs);
    if (!CurrentTime)
    {
      if ((~lhs[0].mFlags & 3) != 0)
      {
LABEL_43:
        v40 = outData;
        goto LABEL_23;
      }

      LODWORD(v50.value) = 0;
      LODWORD(type.value) = 0;
      LODWORD(v44) = 0;
      LODWORD(v42) = 0;
      if (CMAudioDeviceClockGetAudioDevice(clock, 0, &v50, 0))
      {
        goto LABEL_49;
      }

      ioDataSize.value = 0x6F75747073746D23;
      ioDataSize.timescale = 0;
      LODWORD(v46.value) = 4;
      CurrentTime = OUTLINED_FUNCTION_15_10(v50.value, &ioDataSize, v27, v28, &v46, &type);
      if (CurrentTime)
      {
        return CurrentTime;
      }

      ioDataSize.value = 0x676C6F626C746E63;
      ioDataSize.timescale = 0;
      LODWORD(v46.value) = 4;
      if (OUTLINED_FUNCTION_15_10(type.value, &ioDataSize, v29, v30, &v46, &v44) || (ioDataSize.value = 0x6F7574706C746E63, ioDataSize.timescale = 0, LODWORD(v46.value) = 4, OUTLINED_FUNCTION_15_10(v50.value, &ioDataSize, v31, v32, &v46, &v42)))
      {
LABEL_49:
        OUTLINED_FUNCTION_8_16();
        FigSignalErrorAtGM();
        return Property;
      }

      lhs[0].mSampleTime = lhs[0].mSampleTime + (v42 + v44);
      lhs[0].mFlags = 1;
      rhs.mFlags = 2;
      CurrentTime = AudioQueueDeviceTranslateTime(*(a1 + 16), lhs, &rhs);
      if (!CurrentTime)
      {
        if ((rhs.mFlags & 2) != 0)
        {
          v33 = FigHostTimeToNanoseconds();
          CMTimeMake(&outData, v33, 1000000000);
        }

        goto LABEL_43;
      }
    }

    return CurrentTime;
  }

LABEL_23:
  LODWORD(rhs.mSampleTime) = 0;
  v39 = *&v11->value;
  *&lhs[0].mSampleTime = *&v11->value;
  v23 = *&v11->epoch;
  lhs[0].mRateScalar = v23;
  if (!FigPreferAudioSessionClock() && !faqts_getAudioDeviceScreenLatencyFromDevice(@"AirTunes", &rhs))
  {
    mSampleTime_low = LODWORD(rhs.mSampleTime);
    if (!a3 || LODWORD(rhs.mSampleTime))
    {
LABEL_29:
      CMTimeMake(lhs, mSampleTime_low, 1000);
      *&rhs.mSampleTime = *&lhs[0].mSampleTime;
      rhs.mRateScalar = lhs[0].mRateScalar;
      *&outData.value = v39;
      *&outData.epoch = v23;
      if (CMTimeCompare(&rhs, &outData))
      {
        outData = v40;
        *&ioDataSize.value = *&lhs[0].mSampleTime;
        ioDataSize.epoch = *&lhs[0].mRateScalar;
        CMTimeSubtract(&rhs, &outData, &ioDataSize);
        *&v40.value = *&rhs.mSampleTime;
        v40.epoch = *&rhs.mRateScalar;
      }

      goto LABEL_31;
    }

    if (!faqts_getAudioDeviceScreenLatencyFromDevice(@"Nero", &rhs))
    {
      mSampleTime_low = LODWORD(rhs.mSampleTime);
      goto LABEL_29;
    }
  }

LABEL_31:
  Property = 0;
  *a4 = v40;
  return Property;
}

uint64_t faqts_getAudioQueueLatency(uint64_t a1, CMTime *a2)
{
  outData = 0.0;
  ioDataSize = 8;
  Property = AudioQueueGetProperty(*(a1 + 16), 0x71646C73u, &outData, &ioDataSize);
  if (!Property)
  {
    CMTimeMakeWithSeconds(&v5, outData, 1000000000);
    *a2 = v5;
  }

  return Property;
}

BOOL editMentorNewWithChildAudioVideoEditOrCallbacksMentorAndSingleEditSegmentOrTrack_cold_1(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = FigSignalErrorAtGM();
  *a3 = v5;
  EditMentorDispose(a2);
  return v5 == 0;
}

uint64_t editMentorConsolidateCurrentEdit_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferRenderSynchronizerCreateRemoteWithOptions(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    v9 = 0;
    v5 = 4294950926;
    goto LABEL_16;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  cf[0] = MEMORY[0x1E69E9820];
  cf[1] = 0x40000000;
  cf[2] = __synchronizerRemote_ensureClientEstablished_block_invoke;
  cf[3] = &unk_1E7481528;
  cf[4] = &v15;
  if (qword_1ED4CA758 != -1)
  {
    dispatch_once(&qword_1ED4CA758, cf);
  }

  v5 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  if (v5)
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  cf[0] = 0;
  FigSampleBufferRenderSynchronizerGetClassID();
  OnlyTimebase = CMDerivedObjectCreate();
  if (OnlyTimebase || (DerivedStorage = CMBaseObjectGetDerivedStorage(), HostTimeClock = CMClockGetHostTimeClock(), OnlyTimebase = CMTimebaseCreateWithSourceClock(a1, HostTimeClock, (DerivedStorage + 16)), OnlyTimebase) || (OnlyTimebase = CMTimebaseCreateWithSourceTimebase(a1, *(DerivedStorage + 16), (DerivedStorage + 24)), OnlyTimebase) || (OnlyTimebase = CMTimebaseCreateReadOnlyTimebase(), OnlyTimebase))
  {
    v5 = OnlyTimebase;
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_15;
  }

  v9 = cf[0];
  v10 = FigXPCCreateBasicMessage();
  if (!v10)
  {
    v10 = FigXPCMessageSetCFDictionary();
    if (!v10)
    {
      v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (v5)
      {
        goto LABEL_16;
      }

      uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
      v12 = CMBaseObjectGetDerivedStorage();
      FigXPCRemoteClientAssociateObject();
      *(v12 + 8) = uint64;
      CMBaseObjectGetDerivedStorage();
      cf[0] = 0;
      if (!FigXPCCreateBasicMessage())
      {
        FigXPCRemoteClientSendAsyncMessage();
      }

      FigXPCRelease();
      v5 = 0;
      *a3 = v9;
      goto LABEL_15;
    }
  }

  v5 = v10;
LABEL_16:
  FigXPCRelease();
  FigXPCRelease();
  if (v9)
  {
    CFRelease(v9);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t synchronizerRemote_handleClientMessage()
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

uint64_t synchronizerRemote_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v2)
  {
    FigXPCRemoteClientDisassociateObject();
    if (!*DerivedStorage && !FigXPCCreateBasicMessage())
    {
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t synchronizerRemote_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  ObjectID = synchronizerRemote_getObjectID(a1, &v8);
  if (!ObjectID)
  {
    ObjectID = FigXPCSendStdCopyPropertyMessage();
  }

  v6 = ObjectID;
  if (a4)
  {
    *a4 = 0;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

uint64_t synchronizerRemote_SetProperty(uint64_t a1)
{
  v4 = 0;
  ObjectID = synchronizerRemote_getObjectID(a1, &v4);
  if (!ObjectID)
  {
    ObjectID = FigXPCSendStdSetPropertyMessage();
  }

  v2 = ObjectID;
  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

uint64_t synchronizerRemote_SetRateAndTime(uint64_t a1, float a2)
{
  v7 = 0;
  if (a1)
  {
    ObjectID = synchronizerRemote_getObjectID(a1, &v7);
    if (ObjectID)
    {
      v5 = ObjectID;
    }

    else
    {
      v4 = FigXPCCreateBasicMessage();
      if (v4 || (xpc_dictionary_set_double(0, "rate", a2), v4 = FigXPCMessageSetCMTime(), v4))
      {
        v5 = v4;
      }

      else
      {
        v5 = FigXPCRemoteClientSendSyncMessage();
      }
    }
  }

  else
  {
    v5 = 4294950926;
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t synchronizerRemote_CopyReadOnlyTimebase(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950926;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    CFRetain(v5);
    v6 = *(v4 + 32);
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t synchronizerRemote_SetRateAndAnchorTime(uint64_t a1, float a2)
{
  v7 = 0;
  if (a1)
  {
    ObjectID = synchronizerRemote_getObjectID(a1, &v7);
    if (ObjectID)
    {
      v5 = ObjectID;
    }

    else
    {
      v4 = FigXPCCreateBasicMessage();
      if (v4 || (xpc_dictionary_set_double(0, "rate", a2), OUTLINED_FUNCTION_1_42(), v4 = FigXPCMessageSetCMTime(), v4) || (v4 = FigXPCMessageSetCMTime(), v4))
      {
        v5 = v4;
      }

      else
      {
        v5 = FigXPCRemoteClientSendSyncMessage();
      }
    }
  }

  else
  {
    v5 = 4294950926;
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t synchronizerRemote_ConvertTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v4 = 4294950926;
  if (a1 && a4)
  {
    ObjectID = synchronizerRemote_getObjectID(a1, &v7);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        FigXPCMessageSetUInt32();
        OUTLINED_FUNCTION_1_42();
        ObjectID = FigXPCMessageSetCMTime();
        if (!ObjectID)
        {
          ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
          if (!ObjectID)
          {
            ObjectID = FigXPCMessageGetCMTime();
          }
        }
      }
    }

    v4 = ObjectID;
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t synchronizerRemote_sendMessageWithAudioRendererPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  if (a1)
  {
    ObjectID = synchronizerRemote_getObjectID(a1, &v8);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigSampleBufferAudioRendererGetRemoteObjectID(a3, &v7);
        if (!ObjectID)
        {
          xpc_dictionary_set_uint64(0, "audioRendererObjectID", v7);
          ObjectID = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }

    v5 = ObjectID;
  }

  else
  {
    v5 = 4294950926;
  }

  FigXPCRelease();
  return v5;
}

uint64_t synchronizerRemote_getObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioFileFormatReaderCreateFromStream(const void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  FigFormatReaderGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    return v6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  inPropertyData = 0;
  outDataSize[0] = 0;
  v46[0] = 0;
  LODWORD(dataPointerOut) = 0;
  if (qword_1ED4CA770 != -1)
  {
    dispatch_once_f(&qword_1ED4CA770, 0, RegisterFigAudioFileInfoType);
  }

  ioDataSize[0] = 0;
  isWritable[0] = 0;
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v27 = FigSignalErrorAtGM();
    v24 = 0;
    v21 = 0;
    goto LABEL_25;
  }

  v9 = Instance;
  *(Instance + 16) = FigReentrantMutexCreate();
  *(v9 + 24) = CFRetain(a1);
  OUTLINED_FUNCTION_9_15();
  *(v9 + 112) = AudioFileGetGlobalInfoSize(v10, v11, v12, v13) == 0;
  AudioFileInfos = FigDetermineAudioFileTypeHintAndCreateAudioFileInfos(a1, v14, 0, 0);
  Property = AudioFileOpenWithCallbacks(v9, AudioFile_FigReadProc, 0, AudioFile_FigGetSizeProc, 0, AudioFileInfos, (v9 + 32));
  if (Property)
  {
    goto LABEL_65;
  }

  ioDataSize[0] = 4;
  Property = AudioFileGetProperty(*(v9 + 32), 0x66666D74u, ioDataSize, (v9 + 40));
  if (Property)
  {
    goto LABEL_65;
  }

  if (FigCFDictionaryGetInt32IfPresent())
  {
    AudioFileSetProperty(*(v9 + 32), 0x61616770u, 4u, &inPropertyData);
  }

  ioDataSize[0] = 40;
  Property = AudioFileGetProperty(*(v9 + 32), 0x64666D74u, ioDataSize, (v9 + 48));
  if (Property)
  {
    goto LABEL_65;
  }

  v17 = *(v9 + 48);
  if (v17 <= 0.0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    Property = FigSignalErrorAtGM();
LABEL_65:
    v27 = Property;
    v21 = 0;
LABEL_66:
    v24 = 0;
    goto LABEL_67;
  }

  *(v9 + 88) = v17;
  v18 = *(v9 + 68);
  if (v18)
  {
    v19 = v17 / 2;
    v20 = v18 - (v18 & v19);
    if ((v18 & v19) == 0)
    {
      v20 = 0;
    }

    *(v9 + 96) = (v20 + v19) / v18;
  }

  v21 = 0;
  if (AudioFileGetPropertyInfo(*(v9 + 32), 0x6D676963u, outDataSize, isWritable) || !outDataSize[0])
  {
    goto LABEL_19;
  }

  v21 = malloc_type_malloc(outDataSize[0], 0x49D8F5A5uLL);
  if (!v21)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v22 = FigSignalErrorAtGM();
    goto LABEL_69;
  }

  v22 = AudioFileGetProperty(*(v9 + 32), 0x6D676963u, outDataSize, v21);
  if (v22)
  {
LABEL_69:
    v27 = v22;
    goto LABEL_66;
  }

LABEL_19:
  PropertyInfo = AudioFileGetPropertyInfo(*(v9 + 32), 0x636D6170u, v46, isWritable);
  v24 = 0;
  v25 = v46[0];
  if (PropertyInfo || !v46[0])
  {
LABEL_23:
    v27 = CMAudioFormatDescriptionCreate(*MEMORY[0x1E695E480], (v9 + 48), v25, v24, outDataSize[0], v21, 0, (v9 + 104));
    if (!v27)
    {
      *DerivedStorage = v9;
      goto LABEL_25;
    }

    goto LABEL_67;
  }

  v24 = malloc_type_malloc(v46[0], 0x1B64FC67uLL);
  v26 = AudioFileGetProperty(*(v9 + 32), 0x636D6170u, v46, v24);
  if (!v26)
  {
    v25 = v46[0];
    goto LABEL_23;
  }

  v27 = v26;
LABEL_67:
  CFRelease(v9);
LABEL_25:
  free(v21);
  free(v24);
  if (v27)
  {
    goto LABEL_63;
  }

  v28 = *DerivedStorage;
  *ioDataSize = 0;
  FigTrackReaderGetClassID();
  v29 = CMDerivedObjectCreate();
  if (v29)
  {
    v27 = v29;
    goto LABEL_63;
  }

  v30 = CMBaseObjectGetDerivedStorage();
  if (v28)
  {
    v31 = CFRetain(v28);
  }

  else
  {
    v31 = 0;
  }

  *v30 = v31;
  DerivedStorage[1] = *ioDataSize;
  if ((*(*DerivedStorage + 56) - 778924081) <= 2)
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v33 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v33)
    {
      v33(CMBaseObject, 0x1F0B330B8, *MEMORY[0x1E695E4D0]);
    }
  }

  v34 = *DerivedStorage;
  *outDataSize = 0;
  *ioDataSize = 0;
  inPropertyData = 8;
  if (AudioFileGetProperty(*(v34 + 32), 0x6964336Fu, &inPropertyData, outDataSize))
  {
    dataPointerOut = 0;
    *v46 = 0;
    *(v34 + 216) = -1;
    v35 = *(v34 + 24);
    v36 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v36)
    {
      v37 = v36(v35, 3, 0, ioDataSize, v46);
      if (v37)
      {
LABEL_71:
        v27 = v37;
LABEL_55:
        if (*ioDataSize)
        {
          CFRelease(*ioDataSize);
        }

        if (!v27)
        {
          goto LABEL_58;
        }

LABEL_63:
        CFRelease(0);
        return v27;
      }

      if (*v46 == 3)
      {
        CMBlockBufferGetDataPointer(*ioDataSize, 0, 0, 0, &dataPointerOut);
        if (*dataPointerOut == 73 && dataPointerOut[1] == 68 && dataPointerOut[2] == 51)
        {
          v27 = 0;
          *(v34 + 216) = 0;
          goto LABEL_55;
        }
      }

      if (*(v34 + 216) != -1)
      {
        goto LABEL_53;
      }

      SizeProc = AudioFile_FigGetSizeProc(v34);
      if (SizeProc < 129)
      {
        goto LABEL_53;
      }

      v39 = SizeProc;
      *isWritable = 0;
      if (*ioDataSize)
      {
        CFRelease(*ioDataSize);
      }

      *ioDataSize = 0;
      v40 = *(v34 + 24);
      v41 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v41)
      {
        v42 = v39 - 128;
        v37 = v41(v40, 3, v42, ioDataSize, v46);
        if (!v37)
        {
          if (*v46 == 3)
          {
            CMBlockBufferGetDataPointer(*ioDataSize, 0, 0, 0, isWritable);
            if (**isWritable == 84 && *(*isWritable + 1) == 65 && *(*isWritable + 2) == 71)
            {
              *(v34 + 216) = v42;
            }
          }

LABEL_53:
          v27 = 0;
          goto LABEL_55;
        }

        goto LABEL_71;
      }
    }

    v27 = 4294954514;
    goto LABEL_55;
  }

  *(v34 + 216) = *outDataSize;
LABEL_58:
  v27 = 0;
  *a4 = 0;
  return v27;
}

uint64_t FigAudioFileTrackReaderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v8 = *DerivedStorage;
    *a4 = 0;
    if (CFEqual(a2, @"TrackFormatDescriptionArray"))
    {
      v10 = *(v8 + 104);
      v9 = (v8 + 104);
      if (!v10)
      {
        return 0;
      }

      v11 = CFArrayCreate(a3, v9, 1, MEMORY[0x1E695E9C0]);
      goto LABEL_11;
    }

    if (CFEqual(a2, @"TrackTimescale"))
    {
      LODWORD(valuePtr.value) = *(v8 + 88);
      v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
LABEL_11:
      Property = 0;
LABEL_12:
      *a4 = v11;
      return Property;
    }

    if (CFEqual(a2, @"TrackEnabled"))
    {
      v13 = MEMORY[0x1E695E4D0];
      goto LABEL_10;
    }

    if (CFEqual(a2, @"TrackDuration"))
    {
      if (*(v8 + 32))
      {
        memset(&valuePtr, 0, sizeof(valuePtr));
        GetAudioFilePacketTableInfo(v8);
        if (*(v8 + 179))
        {
          v15 = *(v8 + 184);
        }

        else
        {
          AudioFilePacketAndFrameCount = GetAudioFilePacketAndFrameCount(v8);
          if (AudioFilePacketAndFrameCount)
          {
            return AudioFilePacketAndFrameCount;
          }

          DefaultEnhanced = FigGaplessInfoCreateDefaultEnhanced(*(v8 + 104));
          LODWORD(v44) = 0;
          v15 = *(v8 + 136);
          if (FigCFDictionaryGetInt32IfPresent())
          {
            v15 &= ~(v15 >> 63);
          }

          if (DefaultEnhanced)
          {
            CFRelease(DefaultEnhanced);
          }
        }

        v16 = CMTimeMake(&valuePtr, v15, *(v8 + 88));
        v11 = OUTLINED_FUNCTION_6_24(v16, v17, v18, v19, v20, v21, v22, v23, v44, v45, *&valuePtr.value, valuePtr.epoch);
        if (v11)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

    else if (CFEqual(a2, @"UneditedTrackDuration"))
    {
      if (*(v8 + 32))
      {
        memset(&valuePtr, 0, sizeof(valuePtr));
        AudioFilePacketAndFrameCount = GetAudioFilePacketAndFrameCount(v8);
        if (AudioFilePacketAndFrameCount)
        {
          return AudioFilePacketAndFrameCount;
        }

        v25 = CMTimeMake(&valuePtr, *(v8 + 136), *(v8 + 88));
        v11 = OUTLINED_FUNCTION_6_24(v25, v26, v27, v28, v29, v30, v31, v32, v44, v45, *&valuePtr.value, valuePtr.epoch);
        if (v11)
        {
          goto LABEL_11;
        }

LABEL_19:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        return FigSignalErrorAtGM();
      }
    }

    else
    {
      if (!CFEqual(a2, @"UneditedSampleCount"))
      {
        if (CFEqual(a2, @"LoudnessInfo"))
        {
          v33 = OUTLINED_FUNCTION_2_42();
          Property = AudioFileGetProperty(v33, 0x6C6F7564u, v34, v35);
          v11 = 0;
          if (Property)
          {
            return Property;
          }

          goto LABEL_12;
        }

        if (CFEqual(a2, @"HasAudioSampleDependencyInformation"))
        {
          HasSampleDependencies = AudioFileHasSampleDependencies(v8);
        }

        else
        {
          if (!CFEqual(a2, @"IndicatesContentProtection"))
          {
            if (CFEqual(a2, @"UsesAudibleDRM"))
            {
              LODWORD(valuePtr.value) = 0;
              v38 = OUTLINED_FUNCTION_2_42();
              AudioFileGetProperty(v38, 0x61756462u, v39, v40);
              v13 = MEMORY[0x1E695E4C0];
            }

            else
            {
              if (!CFEqual(a2, @"AudibleContentIsAuthorized"))
              {
                return 4294954512;
              }

              LODWORD(valuePtr.value) = 0;
              if (*(v8 + 40) == 1635083362)
              {
                v41 = OUTLINED_FUNCTION_2_42();
                if (AudioFileGetProperty(v41, 0x61757468u, v42, v43))
                {
                  LODWORD(valuePtr.value) = 0;
                }
              }

              v13 = MEMORY[0x1E695E4C0];
            }

            goto LABEL_10;
          }

          HasSampleDependencies = IndicatesContentProtection(v8);
        }

        v13 = MEMORY[0x1E695E4D0];
        if (!HasSampleDependencies)
        {
          v13 = MEMORY[0x1E695E4C0];
        }

LABEL_10:
        v11 = CFRetain(*v13);
        goto LABEL_11;
      }

      if (*(v8 + 32))
      {
        Property = GetAudioFilePacketAndFrameCount(v8);
        if (Property)
        {
          return Property;
        }

        v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (v8 + 128));
        goto LABEL_12;
      }
    }

    return 4294954513;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_5();

  return FigSignalErrorAtGM();
}

CFMutableDictionaryRef CreateGaplessInfoDictionary_0(uint64_t a1)
{
  v8 = **&MEMORY[0x1E6960C70];
  GetAudioFilePacketTableInfo(a1);
  if (!*(a1 + 179))
  {
    return 0;
  }

  GetAudioFilePacketAndFrameCount(a1);
  if (!*(a1 + 116))
  {
    return 0;
  }

  CMTimeMake(&v8, *(a1 + 136), *(a1 + 88));
  v2 = *(a1 + 104);
  v3 = *(a1 + 192);
  v4 = *(a1 + 196);
  v5 = *(a1 + 184);
  v7 = v8;
  return FigGaplessInfoCreateEnhanced_CorrectingWithUneditedDuration(v2, &v7, v3, v4, v5);
}

void CreateChaptersFromAudioFileChapterList()
{
  v3 = 0;
  FigSimpleMutexLock();
  v0 = OUTLINED_FUNCTION_10_14();
  AudioFileGetPropertyInfo(v0, v1, v2, 0);
  FigSimpleMutexUnlock();
  free(0);
}

uint64_t GetAudioFilePacketAndFrameCount(uint64_t a1)
{
  outPropertyData = 0;
  if (!*(a1 + 116))
  {
    ioDataSize = 8;
    Property = AudioFileGetProperty(*(a1 + 32), 0x70636E74u, &ioDataSize, &outPropertyData);
    if (Property)
    {
      return Property;
    }

    FigSimpleMutexLock();
    v4 = outPropertyData;
    *(a1 + 128) = outPropertyData;
    v5 = *(a1 + 68);
    if (v5)
    {
      v6 = v4 * v5;
    }

    else
    {
      v15 = 0;
      PacketData = MapPacketNumberToFrameNumber_0(a1, v4 - 1, &v15);
      if (PacketData || (OUTLINED_FUNCTION_9_15(), PacketData = AudioFileReadPacketData(v8, v9, v10, v11, v12, v13, 0), PacketData))
      {
        v1 = PacketData;
        goto LABEL_10;
      }

      v6 = v15;
    }

    *(a1 + 136) = v6;
    v1 = 0;
    *(a1 + 116) = 1;
LABEL_10:
    FigSimpleMutexUnlock();
    return v1;
  }

  return 0;
}

uint64_t FigAudioFileCursorService_createCursorAtPresentationTimeStamp(uint64_t a1, CMTime *a2, void *a3, BOOL *a4, char *a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();
  v16 = 0;
  FigSimpleMutexLock();
  v10 = createFigAudioPacketAccessor_0(v9, &v16);
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v11 = v16;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v15 = *a2;
    v13 = moveToSampleAtPTS_0(DerivedStorage, v9, &v15, a4, a5);
    if (v13)
    {
      if (v11)
      {
        CFRelease(v11);
      }
    }

    else
    {
      *a3 = v11;
    }
  }

  FigSimpleMutexUnlock();
  return v13;
}

uint64_t FigAudioFileCursorService_createCursorAtFirstSampleInDecodeOrder(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v7 = 0;
  FigSimpleMutexLock();
  v4 = createFigAudioPacketAccessor_0(v3, &v7);
  if (!v4)
  {
    v5 = v7;
    *(CMBaseObjectGetDerivedStorage() + 8) = 0;
    *a2 = v5;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t FigAudioFileCursorService_createCursorAtLastSampleInDecodeOrder(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v9 = 0;
  FigSimpleMutexLock();
  v4 = createFigAudioPacketAccessor_0(v3, &v9);
  if (v4)
  {
    AudioFilePacketAndFrameCount = v4;
  }

  else
  {
    v5 = v9;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    AudioFilePacketAndFrameCount = GetAudioFilePacketAndFrameCount(v3);
    if (AudioFilePacketAndFrameCount)
    {
      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {
      *(DerivedStorage + 8) = v3[16] - 1;
      *a2 = v5;
    }
  }

  FigSimpleMutexUnlock();
  return AudioFilePacketAndFrameCount;
}

uint64_t createFigAudioPacketAccessor_0(void *a1, void *a2)
{
  AudioFilePacketAndFrameCount = GetAudioFilePacketAndFrameCount(a1);
  if (AudioFilePacketAndFrameCount)
  {
    return AudioFilePacketAndFrameCount;
  }

  if (a1[16])
  {
    FigSampleCursorGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = CFRetain(a1);
      DerivedStorage[1] = 0;
      *a2 = 0;
    }

    return v5;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t moveToSampleAtPTS_0(void *a1, uint64_t a2, CMTime *a3, BOOL *a4, char *a5)
{
  flags = a3->flags;
  v11 = flags & 9;
  if (v11 == 9)
  {
    value = 0;
  }

  else if ((flags & 0x1D) == 1)
  {
    memset(&outPropertyData, 0, sizeof(outPropertyData));
    v13 = *(*a1 + 88);
    v21 = *a3;
    CMTimeConvertScale(&outPropertyData, &v21, v13, kCMTimeRoundingMethod_RoundTowardZero);
    value = outPropertyData.value;
  }

  else
  {
    value = 0x7FFFFFFFFFFEA06FLL;
  }

  v14 = *(a2 + 68);
  if (!v14)
  {
    *&outPropertyData.timescale = 0;
    outPropertyData.epoch = 0;
    outPropertyData.value = value;
    LODWORD(v21.value) = 24;
    result = AudioFileGetProperty(*(a2 + 32), 0x6672706Bu, &v21, &outPropertyData);
    if (value < 0 || result != 1885563711)
    {
      if (result)
      {
        return result;
      }

      v16 = 0;
      v17 = *&outPropertyData.timescale;
      goto LABEL_11;
    }

    result = GetAudioFilePacketAndFrameCount(a2);
    if (result)
    {
      return result;
    }

    v20 = *(a2 + 128);
    v17 = v20 - 1;
    if (v20 <= 0)
    {
      v17 = 0;
    }

    goto LABEL_29;
  }

  if (GetAudioFilePacketAndFrameCount(a2) || !*(a2 + 116) || (v17 = value / v14, *(a2 + 128) <= value / v14))
  {
    result = GetAudioFilePacketAndFrameCount(a2);
    if (result)
    {
      return result;
    }

    v17 = *(a2 + 128) - 1;
LABEL_29:
    v16 = 1;
    goto LABEL_11;
  }

  v16 = 0;
LABEL_11:
  a1[1] = v17;
  if (a4)
  {
    v19 = v11 == 9 || a3->value < 0;
    *a4 = v19;
  }

  result = 0;
  if (a5)
  {
    *a5 = v16;
  }

  return result;
}

uint64_t fafc_GetDependencyInfo(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  ioDataSize = 16;
  v4 = *DerivedStorage;
  outPropertyData = DerivedStorage[1];
  result = AudioFileGetProperty(*(v4 + 32), 0x706B6470u, &ioDataSize, &outPropertyData);
  if (!result)
  {
    v6 = HIDWORD(v9);
    *a2 = v9 != 0;
    *(a2 + 4) = v6;
  }

  return result;
}

uint64_t FigAudioFileCursor_getDependencyInfo(uint64_t a1, char *a2, _BYTE *a3, _DWORD *a4, _BYTE *a5)
{
  v10 = *CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (!a2)
  {
    return 0;
  }

  *a2 = 1;
  result = AudioFileHasSampleDependencies(v10);
  if (result)
  {
    v14 = 0;
    result = fafc_GetDependencyInfo(a1, &v14);
    if (!result)
    {
      if (v14)
      {
        v12 = HIDWORD(v14) == 0;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      *a2 = v13;
    }
  }

  return result;
}

uint64_t FigAudioFileCursor_createSampleBuffer(uint64_t a1, uint64_t a2, CMSampleBufferRef *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v7 = 0;
  }

  v8 = *DerivedStorage;
  sbuf = 0;
  dataBuffer = 0;
  memset(&v44, 0, sizeof(v44));
  cf = 0;
  *ioNumPackets = 0;
  FigSimpleMutexLock();
  v9 = DerivedStorage[1];
  if (v7)
  {
    v10 = *(v7 + 8);
    if (v10 < v9)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      v12 = FigSignalErrorAtGM();
      goto LABEL_57;
    }

    v11 = v10 - v9 + 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = PacketToPTS(v8, DerivedStorage[1], &v44);
  if (v12)
  {
LABEL_57:
    v39 = v12;
    goto LABEL_54;
  }

  ioNumPackets[1] = v11;
  v13 = *(v8 + 64);
  v14 = MEMORY[0x1E695E480];
  if (v13)
  {
    epoch = v13 * v11;
LABEL_17:
    v21 = *v14;
    v22 = MEMORY[0x19A8CC720](*v14, epoch, 3939191739, 0);
    if (!v22)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      PacketData = FigSignalErrorAtGM();
      goto LABEL_60;
    }

    if (*(v8 + 68) && *(v8 + 64) || (v12 = ensureAllocationOfPacketDescriptions(v8, ioNumPackets[1]), !v12))
    {
      ioNumPackets[0] = epoch;
      PacketData = AudioFileReadPacketData(*(v8 + 32), 0, ioNumPackets, *(v8 + 168), v9, &ioNumPackets[1], v22);
      if (!PacketData)
      {
        PacketData = CMBlockBufferCreateWithMemoryBlock(v21, v22, epoch, v21, 0, 0, ioNumPackets[0], 0, &dataBuffer);
        if (!PacketData)
        {
          v24 = *(v8 + 104);
          v25 = *(v8 + 168);
          outPropertyData = v44;
          v26 = CMAudioSampleBufferCreateWithPacketDescriptions(v21, dataBuffer, 1u, 0, 0, v24, ioNumPackets[1], &outPropertyData, v25, &sbuf);
          if (v26)
          {
            v39 = v26;
LABEL_46:
            if (sbuf)
            {
              CFRelease(sbuf);
            }

            goto LABEL_48;
          }

          if (AudioFileHasSampleDependencies(v8))
          {
            v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v27)
            {
LABEL_43:
              v39 = 4294954514;
              goto LABEL_44;
            }

            v28 = v27(a1, &cf);
            if (v28)
            {
LABEL_62:
              v39 = v28;
LABEL_44:
              if (cf)
              {
                CFRelease(cf);
              }

              goto LABEL_46;
            }

            if (ioNumPackets[1])
            {
              v29 = 0;
              do
              {
                v30 = cf;
                SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
                if (SampleAttachmentsArray)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, v29);
                  if (ValueAtIndex)
                  {
                    v33 = ValueAtIndex;
                    outPropertyData.value = 0;
                    FigBaseObject = FigSampleCursorGetFigBaseObject(v30);
                    v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v35)
                    {
                      if (!v35(FigBaseObject, @"SampleDependencyAttributes", 0, &outPropertyData) && outPropertyData.value)
                      {
                        CFDictionaryApplyFunction(outPropertyData.value, appendAttributesToDictionary_Applier, v33);
                        CFRelease(outPropertyData.value);
                      }
                    }
                  }
                }

                v36 = cf;
                v37 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                if (!v37)
                {
                  goto LABEL_43;
                }

                v28 = v37(v36, 1, 0);
                if (v28)
                {
                  goto LABEL_62;
                }
              }

              while (++v29 < ioNumPackets[1]);
            }

            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }
          }

          v38 = dataBuffer;
          *a3 = sbuf;
          if (v38)
          {
            CFRelease(v38);
          }

          v39 = 0;
          goto LABEL_54;
        }
      }

LABEL_60:
      v39 = PacketData;
      goto LABEL_49;
    }

    goto LABEL_57;
  }

  ioDataSize = 24;
  outPropertyData.value = v9;
  *&outPropertyData.timescale = v11;
  outPropertyData.epoch = 0;
  if (AudioFileGetProperty(*(*DerivedStorage + 32), 0x70727562u, &ioDataSize, &outPropertyData))
  {
    v12 = ensureAllocationOfPacketDescriptions(v8, ioNumPackets[1]);
    if (v12)
    {
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_9_15();
    v12 = AudioFileReadPacketData(v16, v17, v18, v19, v9, v20, 0);
    if (v12)
    {
      goto LABEL_57;
    }

    if (ioNumPackets[1])
    {
      epoch = *(*(v8 + 168) + 16 * (ioNumPackets[1] - 1)) - **(v8 + 168) + *(*(v8 + 168) + 16 * (ioNumPackets[1] - 1) + 12);
      goto LABEL_16;
    }

LABEL_53:
    v39 = 4294954456;
    goto LABEL_54;
  }

  epoch = outPropertyData.epoch;
  ioNumPackets[1] = outPropertyData.timescale;
  if (!outPropertyData.timescale)
  {
    goto LABEL_53;
  }

LABEL_16:
  if (!HIDWORD(epoch))
  {
    goto LABEL_17;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();
  v39 = FigSignalErrorAtGM();
LABEL_48:
  v22 = 0;
LABEL_49:
  if (dataBuffer)
  {
    CFRelease(dataBuffer);
  }

  if (v22)
  {
    CFAllocatorDeallocate(*v14, v22);
  }

LABEL_54:
  FigSimpleMutexUnlock();
  return v39;
}

uint64_t FigAudioFileCursor_stepByDecodeTime(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v14, 0, sizeof(v14));
  v13 = 0;
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_7_17();
  if (v5 >= v6)
  {
    v9 = 4294954456;
  }

  else
  {
    memset(&v15, 0, sizeof(v15));
    v7 = PacketToPTS(v4, v5, &v15);
    if (v7 || (lhs = v15, v11 = *a2, CMTimeAdd(&v14, &lhs, &v11), v8 = *DerivedStorage, lhs = v14, v7 = moveToSampleAtPTS_0(DerivedStorage, v8, &lhs, &v13 + 1, &v13), v7))
    {
      v9 = v7;
    }

    else if (HIBYTE(v13) | v13)
    {
      v9 = 4294954456;
    }

    else
    {
      v9 = 0;
    }
  }

  FigSimpleMutexUnlock();
  return v9;
}

uint64_t FigAudioFileCursor_copySampleLocation(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *DerivedStorage;
  v26 = 0;
  v27 = 0;
  v25 = 1;
  FigSimpleMutexLock();
  if (!*(v10 + 120))
  {
    outPropertyData = 0;
    ioDataSize = 8;
    Property = AudioFileGetProperty(*(v10 + 32), 0x646F6666u, &ioDataSize, &outPropertyData);
    if (Property)
    {
      v20 = Property;
      goto LABEL_20;
    }

    *(v10 + 120) = 1;
    *(v10 + 144) = outPropertyData;
  }

  v12 = *(v10 + 64);
  if (v12)
  {
    v26 = DerivedStorage[1] * v12;
    HIDWORD(v27) = v12;
  }

  else
  {
    OUTLINED_FUNCTION_9_15();
    PacketData = AudioFileReadPacketData(v13, v14, v15, v16, v17, v18, 0);
    if (PacketData == 1869627199)
    {
      v20 = 4294954455;
    }

    else
    {
      v20 = PacketData;
    }

    if (v20)
    {
      goto LABEL_20;
    }
  }

  if (a2)
  {
    *a2 = *(v10 + 144) + v26;
  }

  if (a3)
  {
    *a3 = HIDWORD(v27);
  }

  if (a4)
  {
    v21 = *(v10 + 24);
    if (v21)
    {
      v21 = CFRetain(v21);
    }

    *a4 = v21;
  }

  v20 = 0;
  if (a5)
  {
    *a5 = 0;
  }

LABEL_20:
  FigSimpleMutexUnlock();
  return v20;
}

uint64_t FigAudioFileCursor_stepInDecodeOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  FigSimpleMutexLock();
  v7 = DerivedStorage[1];
  OUTLINED_FUNCTION_7_17();
  if (v7 >= v8)
  {
    AudioFilePacketAndFrameCount = 4294954456;
    v9 = v7;
  }

  else
  {
    v9 = v7 + a2;
    if (a2 >= 1)
    {
      if (GetAudioFilePacketAndFrameCount(v6) || !*(v6 + 116) || *(v6 + 128) <= v9)
      {
        AudioFilePacketAndFrameCount = GetAudioFilePacketAndFrameCount(v6);
        if (AudioFilePacketAndFrameCount)
        {
          goto LABEL_7;
        }

        v9 = *(v6 + 128) - 1;
      }

      else
      {
        AudioFilePacketAndFrameCount = 0;
      }
    }

    else
    {
      AudioFilePacketAndFrameCount = 0;
      v9 &= ~(v9 >> 63);
    }
  }

  if (a3)
  {
    *a3 = v9 - v7;
  }

  DerivedStorage[1] = v9;
LABEL_7:
  FigSimpleMutexUnlock();
  return AudioFilePacketAndFrameCount;
}

uint64_t PacketToPTS(uint64_t a1, int64_t a2, CMTime *a3)
{
  value = 0;
  v5 = MapPacketNumberToFrameNumber_0(a1, a2, &value);
  if (!v5)
  {
    CMTimeMake(&v7, value, *(a1 + 88));
    *a3 = v7;
  }

  return v5;
}

uint64_t FigAudioFileFormatReaderCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t EnsureMetadataReaderCreated_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigAudioFileTrackReaderCopySampleCursorService_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigAudioFileCursor_copyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioFileCursor_copy_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t ensureAllocationOfPacketDescriptions_cold_1(_WORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterAddText(uint64_t a1)
{
  result = FigCaptionDataCreate();
  if (!result)
  {
    return FigTTMLDocumentWriterAddCaptionData(a1, 0);
  }

  return result;
}

uint64_t FigSampleCursorUtilityGetMinimumUpcomingPresentationTime(uint64_t a1, uint64_t a2, CMTime *a3, CMTime *a4)
{
  v33 = 0;
  v32 = **&MEMORY[0x1E6960C70];
  v31 = v32;
  v29 = v32;
  v28 = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_239();
    goto LABEL_7;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v9)
  {
    v10 = v9(a1, &v33);
    if (v10)
    {
LABEL_8:
      v4 = v10;
      goto LABEL_53;
    }

    v11 = *(*(OUTLINED_FUNCTION_3_31() + 16) + 48);
    if (!v11 || v11(v4, &v31) || (OUTLINED_FUNCTION_29(), !v12) || (v13 = *(*(OUTLINED_FUNCTION_3_31() + 16) + 40)) == 0 || v13(v4, &v32) || (OUTLINED_FUNCTION_29(), !v12))
    {
      OUTLINED_FUNCTION_239();
      OUTLINED_FUNCTION_0_46();
LABEL_7:
      v10 = FigSignalErrorAtGM();
      goto LABEL_8;
    }

    v30 = v32;
    v14 = v33;
    v29 = v31;
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (v15)
    {
      while (1)
      {
        v10 = v15(v14, 1, &v28);
        if (v10)
        {
          goto LABEL_8;
        }

        if (v28 != 1)
        {
          goto LABEL_48;
        }

        if (a2)
        {
          v16 = *(OUTLINED_FUNCTION_3_31() + 16);
          v17 = v16 ? v16 : 0;
          v18 = *(CMBaseObjectGetVTable() + 16);
          v19 = v18 ? v18 : 0;
          if (v17 == v19 && *(v17 + 32) && (*(v19 + 32))(v4, a2) == 1)
          {
            goto LABEL_48;
          }
        }

        v20 = *(*(OUTLINED_FUNCTION_3_31() + 16) + 40);
        if (!v20 || v20(v4, &v32) || (v32.flags & 0x1D) != 1 || (time1 = v32, v26 = v30, CMTimeCompare(&time1, &v26) < 0) && ((v30 = v32, v4 = v33, (v23 = *(*(CMBaseObjectGetVTable() + 16) + 48)) == 0) || v23(v4, &v29) || (v29.flags & 0x1D) != 1))
        {
          OUTLINED_FUNCTION_239();
          OUTLINED_FUNCTION_0_46();
          goto LABEL_7;
        }

        if (!*(*(CMBaseObjectGetVTable() + 16) + 80) || ((v21 = *(OUTLINED_FUNCTION_3_31() + 16)) == 0 ? (v22 = 0) : (v22 = v21), v22 == *(CMBaseObjectGetVTable() + 16) && (v24 = *(v22 + 80)) != 0 && v24(v4, a1, 1)))
        {
LABEL_48:
          if (a3)
          {
            *a3 = v30;
          }

          v4 = 0;
          if (a4)
          {
            *a4 = v29;
          }

          goto LABEL_53;
        }

        v14 = v33;
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 168);
        v4 = 4294954514;
        if (!v15)
        {
          goto LABEL_53;
        }
      }
    }
  }

  v4 = 4294954514;
LABEL_53:
  if (v33)
  {
    CFRelease(v33);
  }

  return v4;
}

uint64_t FigSampleCursorUtilityGetPresentationTimeRange(const void *a1, _OWORD *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  memset(&v26, 0, sizeof(v26));
  value = 0;
  timescale = 0;
  v25 = 0;
  v24 = **&MEMORY[0x1E6960C70];
  v23 = 0;
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *&v22.start.value = *MEMORY[0x1E6960C98];
  *&v22.start.epoch = v4;
  *&v22.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  v5 = CFGetTypeID(a1);
  MEMORY[0x19A8D3660](&FigSampleCursorGetClassID_sRegisterFigSampleCursorTypeOnce, RegisterFigSampleCursorType);
  if (v5 != CMBaseClassGetCFTypeID())
  {
    goto LABEL_27;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6(a1, &v26);
  if (v7)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_29();
  if (!v18)
  {
    OUTLINED_FUNCTION_0_46();
LABEL_27:
    v7 = FigSignalErrorAtGM();
    goto LABEL_28;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    goto LABEL_14;
  }

  v7 = v8(a1, &v25);
  if (v7)
  {
    goto LABEL_28;
  }

  v9 = v25;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v10)
  {
    goto LABEL_14;
  }

  v7 = v10(v9, 1, &v23);
  if (v7)
  {
    goto LABEL_28;
  }

  if (v23 != 1)
  {
    value = *MEMORY[0x1E6960C88];
    flags = *(MEMORY[0x1E6960C88] + 12);
    timescale = *(MEMORY[0x1E6960C88] + 8);
    epoch = *(MEMORY[0x1E6960C88] + 16);
    goto LABEL_21;
  }

  v11 = v25;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v12)
  {
LABEL_14:
    v15 = 4294954514;
    goto LABEL_15;
  }

  v7 = v12(v11, &v24);
  if (!v7)
  {
    lhs = v24;
    v19 = v26;
    CMTimeSubtract(&start, &lhs, &v19);
    value = start.value;
    flags = start.flags;
    timescale = start.timescale;
    epoch = start.epoch;
LABEL_21:
    v18 = (flags & 0x1D) == 1 || (flags & 5) == 5;
    if (v18)
    {
      start = v26;
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = flags;
      lhs.epoch = epoch;
      CMTimeRangeMake(&v22, &start, &lhs);
      v15 = 0;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_0_46();
    goto LABEL_27;
  }

LABEL_28:
  v15 = v7;
LABEL_15:
  if (a2)
  {
    v16 = *&v22.start.epoch;
    *a2 = *&v22.start.value;
    a2[1] = v16;
    a2[2] = *&v22.duration.timescale;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v15;
}

uint64_t FigSampleCursorUtilityGetBatchSampleTimingAndSizes_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t globalRoutingRegistry_handleClientMessage(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  uint64 = xpc_dictionary_get_uint64(a2, "RemoteClientID");
  if (!uint64)
  {
    return 4294951145;
  }

  v5 = uint64;
  if (FigXPCServerGetConnectionRefcon())
  {
    return 4294951138;
  }

  v6 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
  v7 = v6;
  if (!v6)
  {
    v8 = 4294951146;
    goto LABEL_6;
  }

  *v6 = v5;
  v8 = FigXPCServerSetConnectionRefcon();
  if (!v8)
  {
    return 4294951138;
  }

LABEL_6:
  globalRoutingRegistry_disposeConnectionState(v7);
  return v8;
}

uint64_t snippetCursorService_CreateCursorAtTrackTime(const void *a1, CMTime *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  CFGetAllocator(a1);
  FigEditCursorGetClassID();
  v7 = CMDerivedObjectCreate();
  if (!v7)
  {
    v8 = CMBaseObjectGetDerivedStorage();
    *v8 = a1;
    CFRetain(a1);
    FigSimpleMutexLock();
    if ((*(DerivedStorage + 60) & 0x1D) == 1)
    {
      memset(&v14, 0, sizeof(v14));
      v9 = *(DerivedStorage + 56);
      v13 = *a2;
      CMTimeConvertScale(&v14, &v13, v9, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
      v10 = v14.value / *(DerivedStorage + 48);
      if (v10 < 0)
      {
        v10 = 0;
      }

      else
      {
        v11 = *(DerivedStorage + 80);
        if (v10 >= v11)
        {
          v10 = v11 - 1;
        }
      }

      v8[1] = v10;
    }

    else
    {
      v8[1] = 0;
    }

    FigSimpleMutexUnlock();
    *a3 = v15;
  }

  return v7;
}

uint64_t snippetCursor_Copy(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFGetAllocator(a1);
  FigEditCursorGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    v6 = CMBaseObjectGetDerivedStorage();
    v7 = *DerivedStorage;
    v8 = *(DerivedStorage + 8);
    *v6 = *DerivedStorage;
    v6[1] = v8;
    CFRetain(v7);
    *a2 = 0;
  }

  return v5;
}

uint64_t snippetCursor_GetEditSegment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

CFIndex FigStreamingAssetLoaderRequestSessionKeys()
{
  cf = 0;
  theArray = 0;
  v8 = 1;
  v9 = 0;
  v10 = 0;
  v11 = sapl_didUpdateContentKeyBossToNewBoss;
  v7 = 0;
  FigGetAllocatorForMedia();
  v0 = OUTLINED_FUNCTION_298();
  v4 = FigStreamingAssetLoaderCopyProperty(v0, v1, v2, v3);
  if (v4)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

CFIndex sapl_loadMultivariantPlaylist(uint64_t a1)
{
  cf = 0;
  v12 = 0;
  if (*(a1 + 248))
  {
    v7 = 0;
    v5 = 1;
    goto LABEL_14;
  }

  sapl_copyCurrentMediaRequest(a1, &cf);
  if (cf)
  {
    goto LABEL_30;
  }

  v2 = *(a1 + 96);
  if (!v2 || *(a1 + 264))
  {
    v10 = *(a1 + 16);
    v4 = v10 ? CFRetain(v10) : 0;
    v12 = v4;
  }

  else
  {
    Param = FigCFHTTPCreateURLWithQueryParam(*(a1 + 16), @"_HLS_primary_id=", v2, &v12);
    if (Param)
    {
      v7 = Param;
      goto LABEL_10;
    }

    v4 = v12;
  }

  v5 = 1;
  *(a1 + 208) = 1;
  Playlist = sapl_loadPlaylist(a1, v4, *(a1 + 24), 0, 0, 0);
  if (Playlist)
  {
    v7 = Playlist;
  }

  else
  {
LABEL_30:
    if (*(a1 + 248))
    {
      v7 = 0;
LABEL_10:
      v5 = 1;
      goto LABEL_12;
    }

    v7 = 0;
    v5 = 0;
    OUTLINED_FUNCTION_2_44();
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_14:
  if (v12)
  {
    CFRelease(v12);
  }

  if ((v5 & 1) == 0)
  {
    sapl_waitForSemaphore(a1);
  }

  v8 = *(a1 + 256);
  if (v8)
  {
    return CFErrorGetCode(v8);
  }

  return v7;
}

CFIndex sapl_loadMediaPlaylist(uint64_t a1)
{
  v16 = 0;
  v17 = 0;
  cf = 0;
  if (*(a1 + 272))
  {
    v2 = 0;
    v3 = 1;
    goto LABEL_11;
  }

  if (*(a1 + 120))
  {
    goto LABEL_6;
  }

  if (!*(a1 + 240))
  {
    NextAlternate = FigSignalErrorAtGM();
    goto LABEL_28;
  }

  sapl_copyCurrentMediaRequest(a1, &cf);
  if (cf)
  {
    goto LABEL_5;
  }

  NextAlternate = sapl_findNextAlternate(a1, &v17);
  if (NextAlternate || ((PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(v17)) == 0 ? (v8 = 0) : (v8 = CFRetain(PlaylistAlternateURL)), (v16 = v8, *(a1 + 80)) && (NextAlternate = FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(*(a1 + 16), &v16), NextAlternate)))
  {
LABEL_28:
    v2 = NextAlternate;
    goto LABEL_7;
  }

  *(a1 + 208) = 2;
  URLForCacheLookup = FigAlternateGetURLForCacheLookup(v17);
  StableStreamIdentifier = FigAlternateGetStableStreamIdentifier(v17);
  FigAlternateGetPeakBitRate(v17);
  v3 = 1;
  v11 = OUTLINED_FUNCTION_298();
  Playlist = sapl_loadPlaylist(v11, v12, URLForCacheLookup, 1, StableStreamIdentifier, v13);
  if (Playlist)
  {
    v2 = Playlist;
    goto LABEL_9;
  }

LABEL_5:
  if (*(a1 + 272))
  {
LABEL_6:
    v2 = 0;
LABEL_7:
    v3 = 1;
    goto LABEL_9;
  }

  v2 = 0;
  v3 = 0;
  OUTLINED_FUNCTION_2_44();
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_11:
  if (v16)
  {
    CFRelease(v16);
  }

  if ((v3 & 1) == 0)
  {
    sapl_waitForSemaphore(a1);
  }

  v4 = *(a1 + 280);
  if (v4)
  {
    return CFErrorGetCode(v4);
  }

  return v2;
}

uint64_t sapl_loadSessionData(uint64_t a1)
{
  v20 = 0;
  value = 0;
  cf = 0;
  if (*(a1 + 120))
  {
    v17 = 0;
  }

  else
  {
    if (*(a1 + 344))
    {
      v17 = 0;
    }

    else
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      Queue = FigMediaRequestSchedulerCreate(AllocatorForMedia, *(a1 + 128), *(a1 + 40), *(a1 + 48), *(a1 + 168), 0, *(a1 + 56), *(a1 + 160), *(a1 + 144), *(a1 + 184), *(a1 + 152), a1, sapl_loadSessionData_outputCallbacks, *(a1 + 136), &v20);
      if (Queue)
      {
LABEL_35:
        v17 = Queue;
      }

      else
      {
        v4 = *(a1 + 240);
        if (v4)
        {
          v5 = 0;
          v6 = 0;
          v7 = MEMORY[0x1E695E9C0];
          while (1)
          {
            SessionDataSpecifiers = FigMultivariantPlaylistGetSessionDataSpecifiers(v4);
            if (SessionDataSpecifiers)
            {
              SessionDataSpecifiers = CFArrayGetCount(SessionDataSpecifiers);
            }

            if (v6 >= SessionDataSpecifiers)
            {
              break;
            }

            v9 = FigMultivariantPlaylistGetSessionDataSpecifiers(*(a1 + 240));
            ValueAtIndex = CFArrayGetValueAtIndex(v9, v6);
            if (FigSessionDataSpecifierGetURL(ValueAtIndex))
            {
              if (*(a1 + 80))
              {
                URL = FigSessionDataSpecifierGetURL(ValueAtIndex);
                if (URL)
                {
                  URL = CFRetain(URL);
                }

                cf = URL;
                Queue = FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(*(a1 + 16), &cf);
                if (Queue)
                {
                  goto LABEL_35;
                }

                FigSessionDataSpecifierSetURL(ValueAtIndex, cf);
              }

              Queue = FigMediaRequestSchedulerAddResourceToReadQueue(v20, ValueAtIndex);
              if (Queue)
              {
                goto LABEL_35;
              }

              v5 = 1;
            }

            else
            {
              if (!*(a1 + 336))
              {
                v12 = FigGetAllocatorForMedia();
                Mutable = CFArrayCreateMutable(v12, 0, v7);
                *(a1 + 336) = Mutable;
                if (!Mutable)
                {
                  Queue = FigSignalErrorAtGM();
                  goto LABEL_35;
                }
              }

              Identifier = FigSessionDataSpecifierGetIdentifier(ValueAtIndex);
              v15 = FigSessionDataSpecifierGetValue(ValueAtIndex);
              Language = FigSessionDataSpecifierGetLanguage(ValueAtIndex);
              Queue = FigHLSSessionDataCopyMetadataEntry(Identifier, v15, Language, 0, &value);
              if (Queue)
              {
                goto LABEL_35;
              }

              CFArrayAppendValue(*(a1 + 336), value);
              if (value)
              {
                CFRelease(value);
                value = 0;
              }
            }

            ++v6;
            v4 = *(a1 + 240);
          }

          if (v5)
          {
            OUTLINED_FUNCTION_2_44();
            v17 = FigMediaRequestSchedulerStart(v20);
            if (!v17)
            {
              FigSimpleMutexUnlock();
              dispatch_semaphore_wait(*(a1 + 224), 0xFFFFFFFFFFFFFFFFLL);
              FigSimpleMutexLock();
            }
          }

          else
          {
            v17 = 0;
            *(a1 + 344) = 1;
          }
        }

        else
        {
          v17 = 4294954513;
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v17;
}

uint64_t sapl_copyCurrentMediaRequest(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    FigSimpleMutexLock();
    v4 = *(v3 + 192);
    if (v4)
    {
      v5 = CFRetain(v4);
    }

    else
    {
      v5 = 0;
    }

    result = FigSimpleMutexUnlock();
    *a2 = v5;
  }

  return result;
}

uint64_t sapl_loadPlaylist(uint64_t a1, const void *a2, const __CFURL *a3, int a4, const void *a5, int a6)
{
  cf[25] = *MEMORY[0x1E69E9840];
  *v36 = 0;
  cf[0] = 0;
  v12 = a1 + 128;
  v35 = *(a1 + 104);
  if (*(a1 + 128))
  {
    goto LABEL_10;
  }

  v13 = *(a1 + 40);
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (v13)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, *(a1 + 40));
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v16 = MutableCopy;
  if (!MutableCopy)
  {
    v20 = FigSignalErrorAtGM();
    if (!v20)
    {
      goto LABEL_10;
    }

LABEL_41:
    v25 = 0;
    goto LABEL_34;
  }

  FigCFDictionarySetInt64();
  v17 = *(a1 + 32);
  v18 = *(a1 + 136);
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v19)
  {
    v20 = v19(v17, v18, v16, v12);
  }

  else
  {
    v20 = 4294954514;
  }

  CFRelease(v16);
  if (v20)
  {
    goto LABEL_41;
  }

LABEL_10:
  if (!*(a1 + 160))
  {
    *(a1 + 160) = FigCopyCommonMemoryPool();
  }

  if (*(a1 + 248))
  {
    v21 = *(a1 + 240);
    if (v21)
    {
      Alternates = FigMultivariantPlaylistGetAlternates(v21);
      HasOnlyAudioOnly = FigAlternateSelectionUtility_AlternateListHasOnlyAudioOnly(Alternates);
      v24 = HasOnlyAudioOnly;
      if (HasOnlyAudioOnly)
      {
        a6 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
    *(a1 + 184) |= 4uLL;
  }

  if (!*(a1 + 144))
  {
    v28 = 0;
    v25 = 0;
LABEL_27:
    v27 = a2;
    goto LABEL_28;
  }

  if (!a4)
  {
    v25 = 0;
    v28 = 1;
    goto LABEL_27;
  }

  v25 = FigCFHTTPCreateURLString(a3);
  if (!v25)
  {
    v30 = FigSignalErrorAtGM();
LABEL_43:
    v20 = v30;
    goto LABEL_34;
  }

  if (!FigStreamingCacheCreateMediaStream(*(a1 + 144), v24, v25, a5, a6, 0, v36))
  {
    v28 = 2;
    goto LABEL_27;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  v27 = a2;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v28 = 2;
LABEL_28:
  v29 = FigGetAllocatorForMedia();
  v30 = FigMediaRequestCreateForPlaylist(v29, v27, a3, *(a1 + 144), *v36, v28, *(a1 + 128), *(a1 + 40), *(a1 + 48), 0, 0, v35 | 7u, 0, *(a1 + 56), *(a1 + 160), *(a1 + 88), a1, *(a1 + 184), sapl_loadPlaylist_outputCallbacks, *(a1 + 136), cf);
  if (v30)
  {
    goto LABEL_43;
  }

  sapl_setCurrentMediaRequest(a1, cf[0]);
  v31 = cf[0];
  v32 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v32)
  {
    v20 = 4294954514;
    goto LABEL_34;
  }

  v30 = v32(v31);
  if (v30)
  {
    goto LABEL_43;
  }

  v33 = *(a1 + 88);
  if (v33)
  {
    CFRelease(v33);
    v20 = 0;
    *(a1 + 88) = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_34:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v20;
}

uint64_t sapl_appendToUnpublishedPlaylistRequestEvents(uint64_t a1, const __CFData *a2, const void *a3, const void *a4, char a5, char a6)
{
  v10 = a2;
  v29 = 0;
  if (a2)
  {
    FigGetAllocatorForMedia();
    if (*(*(OUTLINED_FUNCTION_6_25() + 8) + 48))
    {
      v12 = OUTLINED_FUNCTION_187_1();
      v13(v12);
    }

    FigGetAllocatorForMedia();
    if (*(*(OUTLINED_FUNCTION_6_25() + 8) + 48))
    {
      v14 = OUTLINED_FUNCTION_187_1();
      v15(v14);
    }

    FigGetAllocatorForMedia();
    if (*(*(OUTLINED_FUNCTION_6_25() + 8) + 48))
    {
      v16 = OUTLINED_FUNCTION_187_1();
      v17(v16);
    }

    FigCFDictionaryGetInt64IfPresent();
    FigCFDictionaryGetInt64IfPresent();
    FigGetAllocatorForMedia();
    if (*(*(OUTLINED_FUNCTION_6_25() + 8) + 48))
    {
      v18 = OUTLINED_FUNCTION_187_1();
      v19(v18);
    }

    v10 = FigCFHTTPCreateAddressString(0);
  }

  v20 = 1986618469;
  v21 = *(a1 + 240);
  if (v21)
  {
    Alternates = FigMultivariantPlaylistGetAlternates(v21);
    if (FigAlternateSelectionUtility_AlternateListHasOnlyAudioOnly(Alternates))
    {
      v20 = 1936684398;
    }

    else
    {
      v20 = 1986618469;
    }
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  FigMetricHLSPlaylistRequestEventCreate(AllocatorForMedia, a3, v10, 0, 0, a6, a4, 0, 0.0, 0.0, 0.0, 0.0, v20, a5, &v29);
  v24 = v29;
  if (!v29)
  {
    goto LABEL_20;
  }

  Mutable = *(a1 + 384);
  if (Mutable)
  {
LABEL_19:
    CFArrayAppendValue(Mutable, v24);
LABEL_20:
    v27 = 0;
    goto LABEL_21;
  }

  v26 = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(v26, 0, MEMORY[0x1E695E9C0]);
  *(a1 + 384) = Mutable;
  if (Mutable)
  {
    v24 = v29;
    goto LABEL_19;
  }

  v27 = 4294954510;
LABEL_21:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return v27;
}

uint64_t sapl_findNextAlternate(uint64_t a1, uint64_t *a2)
{
  cf = 0;
  cf2 = 0;
  v18 = 0;
  v19 = 0;
  if (!a2 || (v4 = *(a1 + 208), (Alternates = FigMultivariantPlaylistGetAlternates(*(a1 + 240))) == 0) || (v6 = Alternates, CFArrayGetCount(Alternates) <= 0))
  {
    LongestContiguousMediaStreamInCacheAtTime = FigSignalErrorAtGM();
    goto LABEL_23;
  }

  v7 = *(a1 + 144);
  if (!v7)
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  v8 = 0;
  if (*(a1 + 152) || v4 == 2)
  {
    goto LABEL_18;
  }

  LongestContiguousMediaStreamInCacheAtTime = FigStreamingCacheGetLongestContiguousMediaStreamInCacheAtTime(v7, 0, &v19, &cf2, &cf, &v18, 0.0);
  if (LongestContiguousMediaStreamInCacheAtTime)
  {
LABEL_23:
    v15 = LongestContiguousMediaStreamInCacheAtTime;
    v8 = 0;
    goto LABEL_28;
  }

  if (!cf2 || CFArrayGetCount(v6) < 1)
  {
    goto LABEL_17;
  }

  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
    URLForCacheLookup = FigAlternateGetURLForCacheLookup(ValueAtIndex);
    v8 = FigCFHTTPCreateURLString(URLForCacheLookup);
    if (CFEqual(v8, cf2))
    {
      break;
    }

    if (cf)
    {
      FigAlternateGetStableStreamIdentifier(ValueAtIndex);
      if (FigCFEqual())
      {
        break;
      }
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (++v10 >= CFArrayGetCount(v6))
    {
      goto LABEL_17;
    }
  }

  *(a1 + 216) = v10;
  if (ValueAtIndex)
  {
    goto LABEL_27;
  }

LABEL_18:
  for (i = *(a1 + 216); i < CFArrayGetCount(v6); ++i)
  {
    v14 = CFArrayGetValueAtIndex(v6, i);
    if (!FigAlternateIsIFrameOnly(v14))
    {
      *(a1 + 216) = i;
      break;
    }
  }

  v16 = FigCFArrayGetValueAtIndex();
  if (v16)
  {
    ValueAtIndex = v16;
LABEL_27:
    v15 = 0;
    *a2 = ValueAtIndex;
    goto LABEL_28;
  }

  v15 = FigSignalErrorAtGM();
LABEL_28:
  if (cf2)
  {
    CFRelease(cf2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v15;
}

void sapl_threadAbortAction(uint64_t a1)
{
  cf[20] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  sapl_copyCurrentMediaRequest(a1, cf);
  if (dword_1EAF16E58)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = cf[0];
  if (cf[0])
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(v2);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }
}

void sapl_sessionDataSchedulerDidProduceDataOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, OpaqueCMBlockBuffer *a7, int a8)
{
  MutableCopy = v9;
  v64 = 0;
  message = 0;
  blockBufferOut = 0;
  FigSimpleMutexLock();
  v17 = &unk_1EAF16000;
  if (!a8)
  {
    OUTLINED_FUNCTION_1_43();
    FigSignalErrorAtGM();
    goto LABEL_95;
  }

  if (a4)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v19)
    {
      v19(a4, @"FHRP_HTTPResponseHeaders", AllocatorForMedia, &message);
      if (message)
      {
        v64 = CFHTTPMessageCopyAllHeaderFields(message);
      }
    }
  }

  else if (a5)
  {
    FigCustomURLResponseInfoCopyHTTPHeaders();
  }

  v20 = FigGetAllocatorForMedia();
  v21 = FigGetAllocatorForMedia();
  DataLength = CMBlockBufferGetDataLength(a7);
  if (!CMBlockBufferCreateContiguous(v20, a7, v21, 0, 0, DataLength, 0, &blockBufferOut))
  {
    v23 = v64;
    theArray = 0;
    cf = 0;
    value = 0;
    FigGetAllocatorForMedia();
    if (FigCreateCFDataWithBlockBufferNoCopy())
    {
      v26 = 0;
      goto LABEL_65;
    }

    v24 = cf;
    anURL = 0;
    if (FigSessionDataSpecifierGetFormatType(a2) == 2)
    {
      v25 = FigGetAllocatorForMedia();
      v26 = OUTLINED_FUNCTION_5_32(v25);
      if (!v26)
      {
        goto LABEL_65;
      }

LABEL_25:
      if (*(a3 + 288) || (v29 = FigGetAllocatorForMedia(), v30 = CFArrayCreateMutable(v29, 0, MEMORY[0x1E695E9C0]), (*(a3 + 288) = v30) != 0))
      {
        v31 = *(a3 + 264);
        if (v31)
        {
          PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(v31);
        }

        else
        {
          PlaylistActiveDurationSecs = 0.0;
        }

        Identifier = FigSessionDataSpecifierGetIdentifier(a2);
        FigSessionDataSpecifierGetURL(a2);
        v34 = OUTLINED_FUNCTION_298();
        if (FigHLSSessionDataCopyChapterMetadataAndCopyErrorLogEntry(v34, v35, v36, v23, v37, 0, PlaylistActiveDurationSecs))
        {
          goto LABEL_65;
        }

        if (theArray && CFArrayGetCount(theArray) >= 1)
        {
          if (*(a3 + 80))
          {
            v38 = theArray;
            anURL = 0;
            if (theArray)
            {
              v39 = FigGetAllocatorForMedia();
              Mutable = CFArrayCreateMutable(v39, 0, MEMORY[0x1E695E9C0]);
              if (!Mutable)
              {
                v8 = 0;
                v17 = 0;
                MutableCopy = 0;
                goto LABEL_70;
              }

              if (CFArrayGetCount(v38) < 1)
              {
                OUTLINED_FUNCTION_0_48();
                goto LABEL_72;
              }

              v61 = v26;
              v41 = 0;
              Identifier = @"URL";
              v62 = Mutable;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v38, v41);
                v43 = CFDictionaryGetValue(ValueAtIndex, @"ChapterMetadataItems");
                v44 = FigGetAllocatorForMedia();
                MutableCopy = CFDictionaryCreateMutableCopy(v44, 0, ValueAtIndex);
                if (!MutableCopy)
                {
                  break;
                }

                CFArrayAppendValue(Mutable, MutableCopy);
                v45 = FigGetAllocatorForMedia();
                v17 = CFArrayCreateMutable(v45, 0, MEMORY[0x1E695E9C0]);
                if (!v17)
                {
                  v8 = 0;
                  v26 = v61;
                  goto LABEL_70;
                }

                CFDictionarySetValue(MutableCopy, @"ChapterMetadataItems", v17);
                if (CFArrayGetCount(v43) >= 1)
                {
                  for (i = 0; i < CFArrayGetCount(v43); ++i)
                  {
                    v47 = CFArrayGetValueAtIndex(v43, i);
                    v48 = CFDictionaryGetValue(v47, @"URL");
                    v49 = FigGetAllocatorForMedia();
                    v8 = CFDictionaryCreateMutableCopy(v49, 0, v47);
                    if (!v8)
                    {
LABEL_69:
                      v26 = v61;
                      Mutable = v62;
                      goto LABEL_70;
                    }

                    if (v48)
                    {
                      v50 = FigGetAllocatorForMedia();
                      anURL = CFURLCreateWithString(v50, v48, 0);
                      if (!anURL)
                      {
                        goto LABEL_69;
                      }

                      URL = FigSessionDataSpecifierGetURL(a2);
                      if (FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(URL, &anURL))
                      {
                        Identifier = 0;
                        LODWORD(a2) = 0;
                        v26 = v61;
                        Mutable = v62;
LABEL_72:
                        if (anURL)
                        {
                          CFRelease(anURL);
                        }

                        if (Mutable)
                        {
                          CFRelease(Mutable);
                        }

                        if (MutableCopy)
                        {
                          CFRelease(MutableCopy);
                        }

                        if (v17)
                        {
                          CFRelease(v17);
                        }

                        if (v8)
                        {
                          CFRelease(v8);
                        }

                        if (a2 && Identifier)
                        {
                          FigCFArrayAppendArray();
                        }

LABEL_85:
                        if (value)
                        {
                          CFRelease(value);
                        }

                        if (Identifier)
                        {
                          CFRelease(Identifier);
                        }

                        if (theArray)
                        {
                          CFRelease(theArray);
                        }

                        if (v26)
                        {
                          CFRelease(v26);
                        }

                        if (cf)
                        {
                          CFRelease(cf);
                        }

                        goto LABEL_95;
                      }

                      v52 = CFURLGetString(anURL);
                      CFDictionarySetValue(v8, @"URL", v52);
                      if (anURL)
                      {
                        CFRelease(anURL);
                        anURL = 0;
                      }
                    }

                    CFArrayAppendValue(v17, v8);
                    CFRelease(v8);
                  }
                }

                CFRelease(v17);
                CFRelease(MutableCopy);
                ++v41;
                Mutable = v62;
                if (v41 >= CFArrayGetCount(v38))
                {
                  OUTLINED_FUNCTION_0_48();
                  v26 = v61;
                  goto LABEL_72;
                }
              }

              v8 = 0;
              v17 = 0;
              v26 = v61;
LABEL_70:
              Identifier = 0;
              LODWORD(a2) = FigSignalErrorAtGM() == 0;
              goto LABEL_72;
            }
          }

          else
          {
            FigCFArrayAppendArray();
          }

LABEL_65:
          Identifier = 0;
          goto LABEL_85;
        }

        if (FigSessionDataSpecifierIsLocalizedRenditionNameMetadata(a2))
        {
          Identifier = *(a3 + 312);
          *(a3 + 312) = v26;
          if (!v26)
          {
LABEL_54:
            if (!Identifier)
            {
              goto LABEL_85;
            }

            CFRelease(Identifier);
            goto LABEL_65;
          }

LABEL_53:
          CFRetain(v26);
          goto LABEL_54;
        }

        if (FigSessionDataSpecifierIsCustomMediaSelectionSchemeMetadata(a2))
        {
          Identifier = *(a3 + 360);
          *(a3 + 360) = v26;
          if (!v26)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }

        if (*(a3 + 336) || (v53 = FigGetAllocatorForMedia(), v54 = CFArrayCreateMutable(v53, 0, MEMORY[0x1E695E9C0]), (*(a3 + 336) = v54) != 0))
        {
          FigSessionDataSpecifierGetIdentifier(a2);
          Language = FigSessionDataSpecifierGetLanguage(a2);
          FigSessionDataSpecifierGetURL(a2);
          v56 = OUTLINED_FUNCTION_298();
          if (!FigHLSSessionDataCopyMetadataEntry(v56, v57, Language, v58, v59))
          {
            CFArrayAppendValue(*(a3 + 336), value);
          }

          goto LABEL_65;
        }
      }

      OUTLINED_FUNCTION_1_43();
      FigSignalErrorAtGM();
      goto LABEL_65;
    }

    if (FigSessionDataSpecifierGetFormatType(a2) == 1)
    {
LABEL_14:
      v27 = FigCFHTTPCreatePropertyListFromJSON(v24, &anURL);
      v26 = anURL;
      if (v27)
      {
        goto LABEL_65;
      }

      goto LABEL_25;
    }

    if (FigSessionDataSpecifierGetFormatType(a2) == 3)
    {
      if (v24)
      {
        goto LABEL_18;
      }
    }

    else
    {
      FigSessionDataSpecifierGetIdentifier(a2);
      if (!FigCFEqual())
      {
        if (FigSessionDataSpecifierGetFormatType(a2))
        {
          v26 = anURL;
          goto LABEL_25;
        }

        v60 = FigGetAllocatorForMedia();
        v28 = OUTLINED_FUNCTION_5_32(v60);
        anURL = v28;
        if (!v28)
        {
          goto LABEL_14;
        }

LABEL_19:
        v26 = v28;
        goto LABEL_25;
      }

      if (v24)
      {
LABEL_18:
        v28 = CFRetain(v24);
        goto LABEL_19;
      }
    }

    v26 = 0;
    goto LABEL_25;
  }

LABEL_95:
  FigSimpleMutexUnlock();
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (message)
  {
    CFRelease(message);
  }
}

uint64_t FigStreamingAssetLoaderCopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetLoaderCopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetLoaderCopyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetPropertyLoaderCopyAndClearMetricEvents_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetPropertyLoaderCopyAndClearMetricEvents_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetPropertyLoaderCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetPropertyLoaderCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sapl_playlistDidProduceDataOutput_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sapl_playlistDidProduceDataOutput_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sapl_playlistDidFail_cold_1(uint64_t *a1, uint64_t a2, const void *a3)
{
  URLForCacheLookup = FigAlternateGetURLForCacheLookup(*a1);
  StableStreamIdentifier = FigAlternateGetStableStreamIdentifier(*a1);
  PeakBitRate = FigAlternateGetPeakBitRate(*a1);
  return sapl_loadPlaylist(a2, a3, URLForCacheLookup, 1, StableStreamIdentifier, PeakBitRate);
}

intptr_t sapl_playlistDidFail_cold_2(uint64_t a1, int a2)
{
  v4 = *(a1 + 208);
  AllocatorForMedia = FigGetAllocatorForMedia();
  result = CFErrorCreate(AllocatorForMedia, @"CoreMediaErrorDomain", a2, 0);
  v7 = 280;
  if (v4 == 1)
  {
    v7 = 256;
  }

  *(a1 + v7) = result;
  if (*(a1 + 232) >= 1)
  {
    v8 = 0;
    do
    {
      result = dispatch_semaphore_signal(*(a1 + 224));
      ++v8;
    }

    while (v8 < *(a1 + 232));
  }

  *(a1 + 232) = 0;
  return result;
}

void FigPlaybackItemLogCreateW3CLogData_cold_1(uint64_t a1, const void *a2, _DWORD *a3)
{
  *a3 = FigSignalErrorAtGM();

  CFRelease(a2);
}

uint64_t FigPlaybackItemLogCreateW3CLogData_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackItemLogCreateW3CLogData_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSetStartupScore(uint64_t a1, double a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(DerivedStorage + 216) = a2;
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t FigAlternateSetLastKnownValueForIsFullyCached(uint64_t a1, char a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    *(DerivedStorage + 236) = a2;
    FigSimpleMutexUnlock();
  }

  return 0;
}

void FigAlternateHasNonRectangularProjection(__CFArray *a1)
{
  if (a1)
  {
    VideoLayoutTags = FigAlternateGetVideoLayoutTags(a1);
    v2 = 0;
    v3 = *MEMORY[0x1E6960668];
    v4 = *(MEMORY[0x1E6960668] + 8);
    v5 = *MEMORY[0x1E6960670];
    v6 = *(MEMORY[0x1E6960670] + 8);
    v7 = *MEMORY[0x1E6960660];
    v8 = *(MEMORY[0x1E6960660] + 8);
    v9 = *MEMORY[0x1E6960678];
    v10 = *(MEMORY[0x1E6960678] + 8);
    do
    {
      if (VideoLayoutTags)
      {
        Count = CFArrayGetCount(VideoLayoutTags);
      }

      else
      {
        Count = 0;
      }

      if (v2 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(VideoLayoutTags, v2);
      *&tagBuffer.category = 0;
      tagBuffer.value = 0;
      numberOfTagsCopied = 0;
      CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_ProjectionType, &tagBuffer, 1, &numberOfTagsCopied);
      *&v15.category = v3;
      v15.value = v4;
      if (CMTagEqualToTag(tagBuffer, v15))
      {
        break;
      }

      *&v16.category = v5;
      v16.value = v6;
      if (CMTagEqualToTag(tagBuffer, v16))
      {
        break;
      }

      *&v17.category = v7;
      v17.value = v8;
      if (CMTagEqualToTag(tagBuffer, v17))
      {
        break;
      }

      *&v18.category = v9;
      v18.value = v10;
      ++v2;
    }

    while (!CMTagEqualToTag(tagBuffer, v18));
    OUTLINED_FUNCTION_207_0();
  }
}

uint64_t FigAlternateGetRankingScoreOrPeakBWWithVideoCodecScore(uint64_t result, int a2, _DWORD *a3)
{
  if (result)
  {
    v5 = result;
    PeakBitRate = FigAlternateGetPeakBitRate(result);
    if (a2)
    {
      result = CMBaseObjectGetDerivedStorage();
      if (!a3)
      {
        return result;
      }
    }

    else
    {
      result = FigAlternateGetBestVideoFormat(v5);
      if (!a3)
      {
        return result;
      }
    }
  }

  else
  {
    PeakBitRate = 0;
    if (!a3)
    {
      return result;
    }
  }

  *a3 = PeakBitRate;
  return result;
}

uint64_t FigAlternateHasSupplementalVideoFormat(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(CMBaseObjectGetDerivedStorage() + 72);
  if (v3)
  {
    switch(a2)
    {
      case 1:
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_7_18();
        if (*(DerivedStorage + 328))
        {
          v3 = *(DerivedStorage + 327);
        }

        else
        {
          FigSimpleMutexUnlock();
          v3 = OUTLINED_FUNCTION_8_17();
          v8 = CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_7_18();
          *(v8 + 327) = v3;
          *(v8 + 328) = DerivedStorage;
        }

        goto LABEL_16;
      case 2:
        v5 = CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_7_18();
        if (*(v5 + 326))
        {
          v3 = *(v5 + 325);
        }

        else
        {
          FigSimpleMutexUnlock();
          v3 = OUTLINED_FUNCTION_8_17();
          v7 = CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_7_18();
          *(v7 + 325) = v3;
          *(v7 + 326) = v5;
        }

        goto LABEL_16;
      case 3:
        v4 = CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_7_18();
        if (*(v4 + 324))
        {
          v3 = *(v4 + 323);
        }

        else
        {
          FigSimpleMutexUnlock();
          v3 = OUTLINED_FUNCTION_8_17();
          v9 = CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_7_18();
          *(v9 + 323) = v3;
          *(v9 + 324) = v4;
        }

LABEL_16:
        FigSimpleMutexUnlock();
        return v3;
    }

    return 0;
  }

  return v3;
}

const __CFDictionary *FigAlternateMightHaveDummyAudioGroup(const __CFDictionary *result)
{
  if (result)
  {
    result = *(CMBaseObjectGetDerivedStorage() + 176);
    if (result)
    {
      if (CFDictionaryContainsKey(result, *MEMORY[0x1E6962B98]))
      {
        return 0;
      }

      else
      {
        CMBaseObjectGetDerivedStorage();
        return (FigCFEqual() != 0);
      }
    }
  }

  return result;
}

const void *FigAlternateGetStableStreamIdentifierForMediaSubstream(uint64_t a1, int a2, const void *a3)
{
  if (!a1)
  {
    return 0;
  }

  switch(a2)
  {
    case 1935832172:
      v4 = 192;
      break;
    case 1936684398:
      v4 = 176;
      break;
    case 1986618469:
      v4 = 184;
      break;
    default:
      return 0;
  }

  v5 = *(CMBaseObjectGetDerivedStorage() + v4);
  if (!v5)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v5, a3);
  if (!Value)
  {
    return 0;
  }

  v7 = *MEMORY[0x1E6962BA8];

  return CFDictionaryGetValue(Value, v7);
}

uint64_t FigAlternateHasAudioFormat(uint64_t result, int a2)
{
  if (result)
  {
    v2 = result;
    switch(a2)
    {
      case 1:
        return fa_CodecsIncludeAudioFormatChoice(result, 1633772320) || fa_CodecsIncludeAudioFormatChoice(v2, 1633772392) || fa_CodecsIncludeAudioFormatChoice(v2, 1633772400) || fa_CodecsIncludeAudioFormatChoice(v2, 778924083) || fa_CodecsIncludeAudioFormatChoice(v2, 1970495843) || fa_CodecsIncludeAudioFormatChoice(v2, 778924082) || fa_CodecsIncludeAudioFormatChoice(v2, 778924081) != 0;
      case 2:
        v3 = 1718378851;
        goto LABEL_16;
      case 3:
        v3 = 1869641075;
        goto LABEL_16;
      case 4:
        v3 = 1634492771;
        goto LABEL_16;
      case 5:
        v3 = 1633889587;
        goto LABEL_16;
      case 6:
        v3 = 1700998451;
        goto LABEL_16;
      case 7:

        return FigAlternateHasAudioFormatID(result, 1700997939);
      case 8:
        v3 = 1634754915;
LABEL_16:

        result = fa_CodecsIncludeAudioFormatChoice(result, v3);
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

void fa_getDeclaredAudioInfo(const void *a1@<X0>, const void *a2@<X1>, __int128 *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  if (!a2 || !a1)
  {
    goto LABEL_53;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (FigCFDictionaryGetCount() < 1 || (v7 = CFDictionaryGetValue(*(DerivedStorage + 472), a2)) == 0)
  {
    FigSimpleMutexUnlock();
    v9 = *(CMBaseObjectGetDerivedStorage() + 16);
    v10 = CMBaseObjectGetDerivedStorage();
    v11 = *(v10 + 176);
    if (v11)
    {
      v12 = CFGetTypeID(*(v10 + 176));
      if (v12 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v11, a2);
        if (Value)
        {
          v14 = Value;
          v15 = CFGetTypeID(Value);
          if (v15 == CFDictionaryGetTypeID())
          {
            v16 = CFDictionaryGetValue(v14, *MEMORY[0x1E6962B68]);
            v17 = v16;
            if (!v16)
            {
              goto LABEL_45;
            }

            v18 = CFGetTypeID(v16);
            if (v18 == CFStringGetTypeID())
            {
              v19 = *MEMORY[0x1E695E480];
              ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], v17, @"/");
              if (ArrayBySeparatingStrings)
              {
                v17 = ArrayBySeparatingStrings;
                if (CFArrayGetCount(ArrayBySeparatingStrings) < 1)
                {
                  v30 = 0;
                  goto LABEL_50;
                }

                v21 = OUTLINED_FUNCTION_173_0();
                ValueAtIndex = CFArrayGetValueAtIndex(v21, v22);
                *a3 = CFStringGetIntValue(ValueAtIndex);
                if (CFArrayGetCount(v17) >= 2)
                {
                  v24 = CFArrayGetValueAtIndex(v17, 1);
                  if (FigAlternateHasAudioFormatID(a1, 1700998451) && FigCFStringFind())
                  {
                    v25 = 1;
                    *(a3 + 1) = 1;
                    goto LABEL_26;
                  }

                  if (v9)
                  {
                    if (FigAlternateHasAudioFormatID(a1, 1634754915))
                    {
                      location = CFStringFind(v24, @"OA", 0).location;
                      if (location != -1)
                      {
                        v42.length = location;
                        v42.location = 0;
                        v27 = CFStringCreateWithSubstring(v19, v24, v42);
                        if (v27)
                        {
                          v28 = v27;
                          *(a3 + 2) = CFStringGetIntValue(v27);
                          CFRelease(v28);
                        }
                      }
                    }
                  }
                }

                v25 = 0;
LABEL_26:
                if (CFArrayGetCount(v17) > 2)
                {
                  LODWORD(v39) = 0;
                  v29 = CFArrayGetValueAtIndex(v17, 2);
                  v30 = CFStringCreateArrayBySeparatingStrings(v19, v29, @",");
                  v31 = 0;
                  if (!v30)
                  {
                    goto LABEL_29;
                  }

LABEL_28:
                  for (i = CFArrayGetCount(v30); ; i = 0)
                  {
                    if (v31 >= i)
                    {
                      goto LABEL_46;
                    }

                    CFArrayGetValueAtIndex(v30, v31);
                    if (FigCFStringFind())
                    {
                      break;
                    }

                    if (FigCFStringFind())
                    {
                      v25 |= 8u;
                      goto LABEL_35;
                    }

                    if (FigCFStringFind())
                    {
                      v25 |= 4u;
                      *(a3 + 1) = v25;
                      if (FigCFStringGetIntAfterString())
                      {
                        *(a3 + 4) = v39;
                      }
                    }

                    else if (FigCFStringGetIntAfterString())
                    {
                      *(a3 + 3) = v39;
                    }

                    else if (FigCFStringGetIntAfterString())
                    {
                      *(a3 + 5) = v39;
                    }

LABEL_36:
                    ++v31;
                    if (v30)
                    {
                      goto LABEL_28;
                    }

LABEL_29:
                    ;
                  }

                  v25 |= 2u;
LABEL_35:
                  *(a3 + 1) = v25;
                  goto LABEL_36;
                }

LABEL_45:
                v30 = 0;
LABEL_46:
                v39 = *a3;
                v40 = *(a3 + 2);
                v33 = CMBaseObjectGetDerivedStorage();
                FigSimpleMutexLock();
                if ((*(v33 + 472) || (v34 = CFGetAllocator(a1), Mutable = CFDictionaryCreateMutable(v34, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(v33 + 472) = Mutable) != 0)) && (v36 = CFGetAllocator(a1), (v37 = CFDataCreate(v36, &v39, 24)) != 0))
                {
                  v38 = v37;
                  CFDictionarySetValue(*(v33 + 472), a2, v37);
                  FigSimpleMutexUnlock();
                  CFRelease(v38);
                  if (!v17)
                  {
                    goto LABEL_51;
                  }
                }

                else
                {
                  FigSimpleMutexUnlock();
                  if (!v17)
                  {
LABEL_51:
                    if (v30)
                    {
                      CFRelease(v30);
                    }

                    goto LABEL_53;
                  }
                }

LABEL_50:
                CFRelease(v17);
                goto LABEL_51;
              }
            }
          }
        }
      }
    }

LABEL_53:
    OUTLINED_FUNCTION_207_0();
    return;
  }

  v41.location = 0;
  v41.length = 24;
  CFDataGetBytes(v7, v41, a3);
  OUTLINED_FUNCTION_207_0();

  FigSimpleMutexUnlock();
}

const void *FigAlternateGetAudioBitDepth(uint64_t a1, const void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = *(DerivedStorage + 176);
    if (!v6)
    {
      return 0;
    }

    v7 = CFGetTypeID(*(DerivedStorage + 176));
    if (v7 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    result = CFDictionaryGetValue(v6, a2);
    if (!result)
    {
      return result;
    }

    v8 = CFGetTypeID(result);
    if (v8 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    FigCFDictionaryGetInt32IfPresent();
    return 0;
  }

  return result;
}

double FigAlternateGetAudioSampleRate(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v4 = *(DerivedStorage + 176);
      if (v4)
      {
        v5 = CFGetTypeID(*(DerivedStorage + 176));
        if (v5 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(v4, a2);
          if (Value)
          {
            v7 = CFGetTypeID(Value);
            if (v7 == CFDictionaryGetTypeID())
            {
              FigCFDictionaryGetDoubleIfPresent();
            }
          }
        }
      }
    }
  }

  return 0.0;
}

uint64_t FigAlternateGetAudioInstreamID(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 176);
  if (!v4)
  {
    return 0;
  }

  v5 = CFGetTypeID(*(DerivedStorage + 176));
  if (v5 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v4, a2);
  if (!Value)
  {
    return 0;
  }

  v7 = CFGetTypeID(Value);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return FigCFDictionaryGetValue();
}

uint64_t FigAlternateGetSpecializedAudioChannelUsage(const void *a1, const void *a2)
{
  v6 = 0;
  v2 = 1;
  if (a2)
  {
    FigAlternateGetAudioChannelCount(a1, a2, &v6);
    if ((v6 & 4) != 0)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    if ((v6 & 8) != 0)
    {
      v4 = 4;
    }

    else
    {
      v4 = v3;
    }

    if ((v6 & 2) != 0)
    {
      return 3;
    }

    else
    {
      return v4;
    }
  }

  return v2;
}

uint64_t FigAlternateCreateWithSerializedRepresentation(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = 0;
  v22 = 0;
  v20 = 0;
  bzero(&__src[1], 0xC8uLL);
  v5 = FigCFDictionaryGetValue();
  __src[0] = FigCFDictionaryGetValue();
  v6 = FigCFDictionaryGetValue();
  __src[4] = FigCFDictionaryGetValue();
  __src[7] = FigCFDictionaryGetValue();
  __src[5] = FigCFDictionaryGetValue();
  __src[9] = FigCFDictionaryGetValue();
  __src[11] = FigCFDictionaryGetValue();
  __src[13] = FigCFDictionaryGetValue();
  __src[18] = FigCFDictionaryGetValue();
  __src[21] = FigCFDictionaryGetValue();
  __src[22] = FigCFDictionaryGetValue();
  __src[23] = FigCFDictionaryGetValue();
  __src[24] = FigCFDictionaryGetValue();
  DictionaryValue = FigCFDictionaryGetDictionaryValue();
  CGSizeMakeWithDictionaryRepresentation(DictionaryValue, &__src[19]);
  FigCFDictionaryGetInt64IfPresent();
  FigCFDictionaryGetInt64IfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetInt64IfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetDoubleIfPresent();
  FigCFDictionaryGetDoubleIfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  value[0] = 0;
  v8 = FigCFDictionaryGetValue();
  if (v8)
  {
    v9 = v8;
    Count = CFArrayGetCount(v8);
    v11 = *MEMORY[0x1E695E480];
    if (Count < 1)
    {
      Mutable = 0;
    }

    else
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        if (CFArrayGetCount(v9) >= 1)
        {
          v13 = 0;
          do
          {
            ValueAtIndex = FigCFArrayGetValueAtIndex();
            AllocatorForMedia = FigGetAllocatorForMedia();
            if (MEMORY[0x19A8D32E0](ValueAtIndex, AllocatorForMedia, value))
            {
              break;
            }

            CFArrayAppendValue(Mutable, value[0]);
            if (value[0])
            {
              CFRelease(value[0]);
              value[0] = 0;
            }

            ++v13;
          }

          while (v13 < CFArrayGetCount(v9));
          if (value[0])
          {
            CFRelease(value[0]);
          }
        }
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    Mutable = 0;
    v11 = *MEMORY[0x1E695E480];
  }

  __src[16] = Mutable;
  FigCFDictionaryGetBooleanIfPresent();
  memcpy(value, __src, sizeof(value));
  v16 = FigAlternateCreate(v11, 0, v5, v21, v6, v20, SHIDWORD(v22), v22, value, a4);
  if (__src[16])
  {
    CFRelease(__src[16]);
  }

  return v16;
}

CFMutableStringRef figAlternateCopyDesc(__CFString *cf)
{
  if (cf)
  {
    v86 = *(CMBaseObjectGetDerivedStorage() + 32);
    v2 = *(CMBaseObjectGetDerivedStorage() + 8);
    v3 = *(CMBaseObjectGetDerivedStorage() + 48);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = *(DerivedStorage + 160);
    v6 = *(DerivedStorage + 168);
    v7 = *(CMBaseObjectGetDerivedStorage() + 24);
    IsAudioOnly = FigAlternateIsAudioOnly(cf);
    v9 = *(CMBaseObjectGetDerivedStorage() + 88);
    v10 = *(CMBaseObjectGetDerivedStorage() + 80);
    v87 = *(CMBaseObjectGetDerivedStorage() + 96);
    v89 = *(CMBaseObjectGetDerivedStorage() + 16);
    v90 = *(CMBaseObjectGetDerivedStorage() + 72);
    v11 = *(CMBaseObjectGetDerivedStorage() + 152);
    if (!v11)
    {
      v11 = @".";
    }

    v92 = v11;
    if (*(CMBaseObjectGetDerivedStorage() + 132) == -1)
    {
      VideoRangeString = 0;
    }

    else
    {
      VideoRangeString = FigAlternateGetVideoRangeString(cf);
    }

    if (*(CMBaseObjectGetDerivedStorage() + 128) < -1)
    {
      HDCPString = 0;
    }

    else
    {
      HDCPString = FigAlternateGetHDCPString(cf);
    }

    v14 = *(CMBaseObjectGetDerivedStorage() + 56);
    v13 = *(CMBaseObjectGetDerivedStorage() + 120);
    v16 = *(CMBaseObjectGetDerivedStorage() + 64);
    VideoLayoutString = FigAlternateGetVideoLayoutString(cf);
    v15 = v7 == 0;
    v17 = IsAudioOnly == 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v87 = 0;
    VideoRangeString = 0;
    v89 = 0;
    v90 = 0;
    HDCPString = 0;
    VideoLayoutString = 0;
    v92 = 0;
    v13 = 0;
    v86 = 0;
    v3 = 0;
    v2 = 0;
    v5 = 0.0;
    v6 = 0.0;
    v14 = 0.0;
    v15 = 1;
    v16 = 0.0;
    v17 = 1;
  }

  v18 = CFGetAllocator(cf);
  Mutable = CFStringCreateMutable(v18, 0);
  if (Mutable)
  {
    v20 = OUTLINED_FUNCTION_173_0();
    CFStringAppendFormat(v20, v21, v22, v86, cf);
    if (v2 >= 1)
    {
      v23 = "";
      if (v3 > 0)
      {
        v23 = "/Avg";
      }

      v85 = v23;
      v24 = OUTLINED_FUNCTION_173_0();
      CFStringAppendFormat(v24, v25, v26, v85, v2);
      if (v3 >= 1)
      {
        v27 = OUTLINED_FUNCTION_173_0();
        CFStringAppendFormat(v27, v28, v29, v3);
      }

      v30 = OUTLINED_FUNCTION_173_0();
      CFStringAppendFormat(v30, v31, v32);
    }

    if (v5 <= 2.22044605e-16 && v6 <= 2.22044605e-16)
    {
      if (!v15)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v76 = OUTLINED_FUNCTION_173_0();
      CFStringAppendFormat(v76, v77, v78, *&v5, *&v6);
      if (!v15)
      {
LABEL_56:
        v79 = OUTLINED_FUNCTION_173_0();
        CFStringAppendFormat(v79, v80, v81);
        if (!v17)
        {
LABEL_57:
          v82 = OUTLINED_FUNCTION_173_0();
          CFStringAppendFormat(v82, v83, v84);
          if (!v9)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

LABEL_26:
        if (!v9)
        {
LABEL_28:
          if (v10)
          {
            v37 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v37, v38, v39, v10);
          }

          if (v87)
          {
            v40 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v40, v41, v42, v87);
          }

          if (v89)
          {
            v43 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v43, v44, v45, v89);
          }

          if (v90)
          {
            v46 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v46, v47, v48, v90);
          }

          if (VideoRangeString)
          {
            v49 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v49, v50, v51, VideoRangeString);
          }

          if (HDCPString)
          {
            v52 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v52, v53, v54, HDCPString);
          }

          if (v14 > 2.22044605e-16)
          {
            v55 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v55, v56, v57, *&v14);
          }

          if (!FigCFEqual())
          {
            v58 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v58, v59, v60, v92);
          }

          if (v16 != -1.0)
          {
            v61 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v61, v62, v63, *&v16);
          }

          if (VideoLayoutString)
          {
            v64 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v64, v65, v66, VideoLayoutString);
          }

          if (v13)
          {
            Length = CFStringGetLength(v13);
            MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v13);
            if (Length > CFStringGetLength(@"...") + 16)
            {
              v93.length = Length - 16;
              v93.location = 9;
              CFStringReplace(MutableCopy, v93, @"...");
            }

            v69 = OUTLINED_FUNCTION_173_0();
            CFStringAppendFormat(v69, v70, v71, MutableCopy);
            if (MutableCopy)
            {
              CFRelease(MutableCopy);
            }
          }

          v72 = OUTLINED_FUNCTION_173_0();
          CFStringAppendFormat(v72, v73, v74);
          return Mutable;
        }

LABEL_27:
        v34 = OUTLINED_FUNCTION_173_0();
        CFStringAppendFormat(v34, v35, v36, v9);
        goto LABEL_28;
      }
    }

    if (!v17)
    {
      goto LABEL_57;
    }

    goto LABEL_26;
  }

  return Mutable;
}

CFMutableDictionaryRef FigAlternateCopyAsSerializedRepresentation(__CFArray *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetBoolean();
  FigCFDictionarySetBoolean();
  FigCFDictionarySetBoolean();
  FigCFDictionarySetBoolean();
  FigCFDictionarySetBoolean();
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(DerivedStorage[10]);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetInt64();
  FigCFDictionarySetBoolean();
  FigCFDictionarySetDouble();
  FigCFDictionarySetDouble();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  if (Mutable)
  {
    VideoLayoutTags = FigAlternateGetVideoLayoutTags(a1);
    if (VideoLayoutTags)
    {
      v9 = VideoLayoutTags;
      if (CFArrayGetCount(VideoLayoutTags) >= 1)
      {
        v10 = FigGetAllocatorForMedia();
        v11 = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
        if (v11)
        {
          v12 = v11;
          if (CFArrayGetCount(v9) < 1)
          {
LABEL_10:
            FigCFDictionarySetValue();
          }

          else
          {
            v13 = 0;
            while (1)
            {
              ValueAtIndex = FigCFArrayGetValueAtIndex();
              v15 = FigGetAllocatorForMedia();
              v16 = MEMORY[0x19A8D3280](ValueAtIndex, v15);
              if (!v16)
              {
                break;
              }

              v17 = v16;
              CFArrayAppendValue(v12, v16);
              CFRelease(v17);
              if (++v13 >= CFArrayGetCount(v9))
              {
                goto LABEL_10;
              }
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_2_10();
            FigSignalErrorAtGM();
          }

          CFRelease(v12);
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_2_10();
          FigSignalErrorAtGM();
        }
      }
    }
  }

  FigCFDictionarySetBoolean();
  if (a2)
  {
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
  }

  FigSimpleMutexUnlock();
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  return Mutable;
}

uint64_t FigAlternateCopyAsXPCObject(uint64_t a1, void *a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = xpc_dictionary_create(0, 0, 0);
    if (!v4)
    {
      fig_log_get_emitter();
      v20 = FigSignalErrorAtGM();
      goto LABEL_18;
    }

    v5 = v4;
    xpc_dictionary_set_double(v4, "AltRankingScore", *(DerivedStorage + 64));
    xpc_dictionary_set_double(v5, "AltFrameRate", *(DerivedStorage + 56));
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(DerivedStorage + 160));
    FigXPCMessageSetCFDictionary();
    xpc_dictionary_set_int64(v5, "AltHDCP", *(DerivedStorage + 128));
    xpc_dictionary_set_int64(v5, "AltVideoRange", *(DerivedStorage + 132));
    xpc_dictionary_set_uint64(v5, "AltAllowedCPC", *(DerivedStorage + 136));
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(v5, "AltAllowedAOCP", v7);
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(v5, "AltHasDeclaredVideoLayoutTags", v8);
    xpc_dictionary_set_int64(v5, "AltAlternateIndex", *(DerivedStorage + 28));
    xpc_dictionary_set_int64(v5, "AltZeroIndexedAlternateIndex", *(DerivedStorage + 32));
    FigXPCMessageSetCFObject();
    FigXPCMessageSetCFObject();
    xpc_dictionary_set_int64(v5, "AlternateDeclaredPeakBitRate", *(DerivedStorage + 8));
    xpc_dictionary_set_int64(v5, "AltAverageBitRate", *(DerivedStorage + 48));
    FigXPCMessageSetCFObject();
    FigXPCMessageSetCFObject();
    FigXPCMessageSetCFObject();
    FigXPCMessageSetCFObject();
    FigXPCMessageSetCFObject();
    FigXPCMessageSetCFObject();
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(v5, "AltAudioGroupIsSynthesized", v9);
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(v5, "AltVideoGroupIsSynthesized", v10);
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(v5, "AltSubtitlesGroupIsSynthesized", v11);
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(v5, "AltClosedCaptionGroupIsSynthesized", v12);
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(v5, "AltIFrameOnly", v13);
    FigXPCMessageSetCFObject();
    FigXPCMessageSetCFObject();
    v14 = CMBaseObjectGetDerivedStorage();
    v15 = *(v14 + 144);
    if (!v15 || CFArrayGetCount(*(v14 + 144)) < 1)
    {
      goto LABEL_15;
    }

    empty = xpc_array_create_empty();
    if (empty)
    {
      if (CFArrayGetCount(v15) < 1)
      {
        FigXPCRelease();
LABEL_13:
        xpc_dictionary_set_value(v5, "AltVideoLayoutTags", empty);
LABEL_14:
        FigXPCRelease();
LABEL_15:
        *a2 = v5;
        if (DictionaryRepresentation)
        {
          CFRelease(DictionaryRepresentation);
        }

        goto LABEL_17;
      }

      v17 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(v15, v17);
        v18 = FigTagCollectionCopyAsXPCDictionary();
        if (!v18)
        {
          break;
        }

        v19 = v18;
        xpc_array_append_value(empty, v18);
        xpc_release(v19);
        if (++v17 >= CFArrayGetCount(v15))
        {
          goto LABEL_10;
        }
      }
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM();
LABEL_10:
    FigXPCRelease();
    if (!empty)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_17:
  v20 = 0;
LABEL_18:
  FigXPCRelease();
  return v20;
}

uint64_t FigAlternateCopyAsXPCObjectWithContext(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = 0;
  v5 = FigAlternateCopyAsXPCObject(a1, &v20);
  if (!v5)
  {
    if (a1)
    {
      v6 = *(CMBaseObjectGetDerivedStorage() + 176);
      v9 = v20;
      if (v6)
      {
        OUTLINED_FUNCTION_10_15(v6, v7, v8, "AltAudioGroupLocatorMap", "AltAudioGroupID", @"FASP_AudioGroups");
      }

      v10 = *(CMBaseObjectGetDerivedStorage() + 184);
      if (v10)
      {
        OUTLINED_FUNCTION_10_15(v10, v11, v12, "AltVideoGroupLocatorMap", "AltVideoGroupID", @"FASP_VideoGroups");
      }

      v13 = *(CMBaseObjectGetDerivedStorage() + 192);
      if (v13)
      {
        OUTLINED_FUNCTION_10_15(v13, v14, v15, "AltSubtitleGroupLocatorMap", "AltSubtitleGroupID", @"FASP_SubtitleGroups");
      }

      v16 = *(CMBaseObjectGetDerivedStorage() + 200);
      if (v16)
      {
        OUTLINED_FUNCTION_10_15(v16, v17, v18, "AltClosedCaptionGroupLocatorMap", "AltClosedCaptionGroupID", @"FASP_ClosedCaptionGroups");
      }
    }

    else
    {
      v9 = v20;
    }

    *a3 = v9;
  }

  FigXPCRelease();
  return v5;
}

void fa_serializeMediaGroupLocatorMapToXPCDict(const __CFDictionary *a1, void *a2, CFMutableDictionaryRef *a3, const char *a4, uint64_t a5, void *a6)
{
  theDict = 0;
  if (CFDictionaryGetCount(a1) < 1)
  {
    v12 = 0;
  }

  else
  {
    if (fa_ensureSerializationContextAndCopyMediaGroupForCache(a3, a6, &theDict))
    {
      v12 = 0;
      v14 = theDict;
    }

    else
    {
      Count = CFDictionaryGetCount(a1);
      v12 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
      CFDictionaryGetKeysAndValues(a1, 0, v12);
      Value = CFDictionaryGetValue(*v12, *MEMORY[0x1E6962B90]);
      v14 = theDict;
      if (Value)
      {
        v15 = Value;
        if (!theDict || !CFDictionaryContainsKey(theDict, Value))
        {
          v16 = FigStreamPlaylistParserCopySerializedRepresentationForMediaGroupAsXPCObject(v15, a1);
          if (v16)
          {
            xpc_dictionary_set_value(a2, a4, v16);
          }

          if (v14)
          {
            CFDictionarySetValue(v14, v15, *MEMORY[0x1E695E738]);
          }
        }

        FigXPCMessageSetCFString();
      }
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  FigXPCRelease();

  free(v12);
}

uint64_t FigAlternateCopyArrayOfAlternatesAsXPCObject(const __CFArray *a1, void *a2)
{
  cf = 0;
  value = 0;
  empty = xpc_array_create_empty();
  if (empty)
  {
    if (!a1 || (Count = CFArrayGetCount(a1), Count < 1))
    {
LABEL_9:
      v13 = 0;
      *a2 = empty;
      goto LABEL_10;
    }

    v6 = Count;
    v7 = 0;
    while (1)
    {
      v8 = OUTLINED_FUNCTION_331_0();
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
      v11 = FigAlternateCopyAsXPCObjectWithContext(ValueAtIndex, &cf, &value);
      if (v11)
      {
        break;
      }

      v12 = value;
      xpc_array_append_value(empty, value);
      if (v12)
      {
        value = 0;
        xpc_release(v12);
      }

      if (v6 == ++v7)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v11 = FigSignalErrorAtGM();
  }

  v13 = v11;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v13;
}

uint64_t FigAlternateCreateWithXPCObject(void *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = *MEMORY[0x1E695E480];
  if (_MergedGlobals_36 != -1)
  {
    dispatch_once_f(&_MergedGlobals_36, 0, RegisterFigAlternateType);
  }

  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    return v6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = OUTLINED_FUNCTION_331_0();
  v6 = fa_deserializeAndCopyMediaGroupLocatorMap(v8, v9, v10, v11, v12, v13);
  if (v6)
  {
    return v6;
  }

  v14 = OUTLINED_FUNCTION_331_0();
  v6 = fa_deserializeAndCopyMediaGroupLocatorMap(v14, v15, v16, v17, v18, v19);
  if (v6)
  {
    return v6;
  }

  v20 = OUTLINED_FUNCTION_331_0();
  v6 = fa_deserializeAndCopyMediaGroupLocatorMap(v20, v21, v22, v23, v24, v25);
  if (v6)
  {
    return v6;
  }

  v26 = OUTLINED_FUNCTION_331_0();
  v6 = fa_deserializeAndCopyMediaGroupLocatorMap(v26, v27, v28, v29, v30, v31);
  if (v6)
  {
    return v6;
  }

  v6 = FigXPCMessageCopyCFURL();
  if (v6)
  {
    return v6;
  }

  v6 = FigXPCMessageCopyCFURL();
  if (v6)
  {
    return v6;
  }

  v6 = FigXPCMessageCopyCFString();
  if (v6)
  {
    return v6;
  }

  v6 = FigXPCMessageCopyCFString();
  if (v6)
  {
    return v6;
  }

  v6 = FigXPCMessageCopyCFString();
  if (v6)
  {
    return v6;
  }

  v6 = FigXPCMessageCopyCFString();
  if (v6)
  {
    return v6;
  }

  v6 = FigXPCMessageCopyCFString();
  if (v6)
  {
    return v6;
  }

  v6 = FigXPCMessageCopyCFString();
  if (v6)
  {
    return v6;
  }

  v6 = FigXPCMessageCopyCFString();
  if (v6)
  {
    return v6;
  }

  v6 = FigXPCMessageCopyCFString();
  if (v6)
  {
    return v6;
  }

  *(DerivedStorage + 8) = xpc_dictionary_get_int64(a1, "AlternateDeclaredPeakBitRate");
  *(DerivedStorage + 48) = xpc_dictionary_get_int64(a1, "AltAverageBitRate");
  *(DerivedStorage + 112) = xpc_dictionary_get_BOOL(a1, "AltAudioGroupIsSynthesized");
  *(DerivedStorage + 113) = xpc_dictionary_get_BOOL(a1, "AltVideoGroupIsSynthesized");
  *(DerivedStorage + 114) = xpc_dictionary_get_BOOL(a1, "AltSubtitlesGroupIsSynthesized");
  *(DerivedStorage + 115) = xpc_dictionary_get_BOOL(a1, "AltClosedCaptionGroupIsSynthesized");
  *(DerivedStorage + 24) = xpc_dictionary_get_BOOL(a1, "AltIFrameOnly");
  *(DerivedStorage + 56) = xpc_dictionary_get_double(a1, "AltFrameRate");
  *(DerivedStorage + 128) = xpc_dictionary_get_int64(a1, "AltHDCP");
  *(DerivedStorage + 132) = xpc_dictionary_get_int64(a1, "AltVideoRange");
  *(DerivedStorage + 64) = xpc_dictionary_get_double(a1, "AltRankingScore");
  *(DerivedStorage + 136) = xpc_dictionary_get_uint64(a1, "AltAllowedCPC");
  *(DerivedStorage + 116) = xpc_dictionary_get_BOOL(a1, "AltAllowedAOCP");
  *(DerivedStorage + 28) = xpc_dictionary_get_int64(a1, "AltAlternateIndex");
  *(DerivedStorage + 32) = xpc_dictionary_get_int64(a1, "AltZeroIndexedAlternateIndex");
  FigXPCMessageCopyCFDictionary();
  CGSizeMakeWithDictionaryRepresentation(0, (DerivedStorage + 160));
  value = xpc_dictionary_get_value(a1, "AltVideoLayoutTags");
  if (FigXPCArrayGetCount())
  {
    Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      if (xpc_array_get_count(value))
      {
        v34 = 0;
        while (1)
        {
          xpc_array_get_value(value, v34);
          if (FigTagCollectionCreateFromXPCDictionary())
          {
            break;
          }

          CFArrayAppendValue(Mutable, 0);
          if (++v34 >= xpc_array_get_count(value))
          {
            v35 = 0;
            goto LABEL_26;
          }
        }

        v35 = Mutable;
        Mutable = 0;
LABEL_26:
        if (v35)
        {
          CFRelease(v35);
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM();
    }
  }

  else
  {
    Mutable = 0;
  }

  *(DerivedStorage + 144) = Mutable;
  *(DerivedStorage + 117) = xpc_dictionary_get_BOOL(a1, "AltHasDeclaredVideoLayoutTags");
  v36 = FigSimpleMutexCreate();
  *(DerivedStorage + 488) = v36;
  if (!v36)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    return FigSignalErrorAtGM();
  }

  v37 = 0;
  *(DerivedStorage + 216) = 0xFFEFFFFFFFFFFFFFLL;
  *(DerivedStorage + 228) = *(DerivedStorage + 8);
  *a3 = 0;
  return v37;
}

uint64_t fa_deserializeAndCopyMediaGroupLocatorMap(void *a1, CFMutableDictionaryRef *a2, const char *a3, int a4, void *a5, void *key)
{
  value = 0;
  keya = 0;
  theDict = 0;
  v9 = fa_ensureSerializationContextAndCopyMediaGroupForCache(a2, key, &theDict);
  if (v9)
  {
    v15 = v9;
    v10 = theDict;
  }

  else
  {
    FigXPCMessageCopyCFString();
    v10 = theDict;
    if (keya)
    {
      if (theDict && CFDictionaryContainsKey(theDict, keya))
      {
        v11 = CFDictionaryGetValue(v10, keya);
        v12 = v11;
        if (v11)
        {
          CFRetain(v11);
        }

        goto LABEL_12;
      }

      v13 = xpc_dictionary_get_value(a1, a3);
      if (!v13)
      {
        v12 = 0;
LABEL_12:
        v15 = 0;
        *a5 = v12;
        value = 0;
        goto LABEL_13;
      }

      MediaGroupFromXPCDictionary = FigStreamPlaylistParserCreateMediaGroupFromXPCDictionary(v13, 0, &value);
      if (!MediaGroupFromXPCDictionary)
      {
        v12 = value;
        if (v10)
        {
          CFDictionarySetValue(v10, keya, value);
          v12 = value;
        }

        goto LABEL_12;
      }

      v15 = MediaGroupFromXPCDictionary;
    }

    else
    {
      v15 = 0;
    }
  }

LABEL_13:
  if (v10)
  {
    CFRelease(v10);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (keya)
  {
    CFRelease(keya);
  }

  return v15;
}

uint64_t FigAlternateCreateArrayOfAlternatesFromXPCObject(void *a1, __CFArray **a2)
{
  cf = 0;
  value = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    count = xpc_array_get_count(a1);
    if (count < 1)
    {
LABEL_8:
      v13 = 0;
      *a2 = Mutable;
      Mutable = 0;
      goto LABEL_9;
    }

    v6 = count;
    v7 = 0;
    while (1)
    {
      v8 = OUTLINED_FUNCTION_331_0();
      v10 = xpc_array_get_value(v8, v9);
      v11 = FigAlternateCreateWithXPCObject(v10, &cf, &value);
      if (v11)
      {
        break;
      }

      v12 = value;
      CFArrayAppendValue(Mutable, value);
      if (v12)
      {
        CFRelease(v12);
        value = 0;
      }

      if (v6 == ++v7)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v11 = FigSignalErrorAtGM();
  }

  v13 = v11;
LABEL_9:
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

  return v13;
}

uint64_t FigAlternateHasAudioFormatID_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigAlternateGetMaxAudioSampleRate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigAlternateGetMaxAudioChannelCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigAlternateGetMaxPlayableAudioChannelCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigAlternateHasBinauralAudio_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigAlternateCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fa_ensureSerializationContextAndCopyMediaGroupForCache_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fa_ensureSerializationContextAndCopyMediaGroupForCache_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void figPlaybackBoss_durationChanged(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v16 = *MEMORY[0x1E6960C70];
  v17 = *(MEMORY[0x1E6960C70] + 16);
  if (!*(a2 + 16))
  {
    *(a2 + 148) = 1;
    FigSimpleMutexLock();
    if (!*(a2 + 136) && *(a2 + 432) == 1886151033)
    {
      v3 = *(a2 + 120);
      if (v3)
      {
        EffectiveRate = CMTimebaseGetEffectiveRate(v3);
      }

      else
      {
        EffectiveRate = 1.0;
      }

      bossScheduleReachedEndCallbackForRate(a2, EffectiveRate);
    }

    FigSimpleMutexUnlock();
    bossGetContentDuration(a2, &v16);
    FigSimpleMutexLock();
    if (*(a2 + 848))
    {
      v5 = OUTLINED_FUNCTION_25_7();
      if (os_log_type_enabled(v5, type))
      {
        v6 = v15;
      }

      else
      {
        v6 = v15 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v18 = 136315394;
        v19 = "figPlaybackBoss_durationChanged";
        v20 = 2048;
        v21[0] = a2;
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_16();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a2 + 80) >= 1)
    {
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 72), v7);
        v9 = ValueAtIndex[23];
        if (v9)
        {
          if (*(ValueAtIndex + 192))
          {
            v22 = v16;
            v23 = v17;
            v10 = FigSnippetEditCursorServiceSetTrackDuration(v9, &v22);
            if (v10)
            {
              v11 = v10;
              v12 = OUTLINED_FUNCTION_25_7();
              v13 = os_log_type_enabled(v12, type);
              if (OUTLINED_FUNCTION_28_1(v13))
              {
                v18 = 136315650;
                v19 = "figPlaybackBoss_durationChanged";
                v20 = 1024;
                LODWORD(v21[0]) = v7;
                WORD2(v21[0]) = 1024;
                *(v21 + 6) = v11;
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_21_6();
            }
          }
        }

        ++v7;
      }

      while (v7 < *(a2 + 80));
    }

    FigSimpleMutexUnlock();
  }
}

void figPlaybackBoss_formatReaderPropertyChanged(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    *(a2 + 148) = 1;
  }
}

uint64_t bossBuildMentorForTrack(uint64_t a1, uint64_t a2, const __CFAllocator *a3, const __CFDictionary *a4)
{
  v296 = *MEMORY[0x1E69E9840];
  *(a2 + 368) = 0;
  v9 = a2 + 372;
  CMTimeMake(__src, 1, 10);
  *v9 = *__src;
  *(v9 + 16) = *&__src[16];
  Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(a2 + 280) = Mutable;
  if (!Mutable)
  {
    return FigSignalErrorAtGM();
  }

  v11 = MEMORY[0x1E6960C70];
  v12 = MEMORY[0x1E695E4D0];
  v220 = v4;
  if (a4)
  {
    rhs = **&MEMORY[0x1E6960C70];
    LODWORD(v274.value) = 0;
    v13 = CFDictionaryGetValue(a4, @"gdrCount");
    if (v13)
    {
      v14 = v13;
      v15 = CFGetTypeID(v13);
      if (v15 == CFNumberGetTypeID())
      {
        *(a2 + 240) = CFRetain(v14);
      }
    }

    v16 = CFDictionaryGetValue(a4, @"BossTrack_BonusAudioPrimingPacketCountAtStart");
    if (v16)
    {
      v17 = v16;
      v18 = CFGetTypeID(v16);
      if (v18 == CFNumberGetTypeID())
      {
        *(a2 + 248) = CFRetain(v17);
      }
    }

    v19 = *MEMORY[0x1E695E4C0];
    if (v19 == CFDictionaryGetValue(a4, @"BossTrack_TrimSampleBufferDurations"))
    {
      *(a2 + 272) = 1;
    }

    v20 = CFDictionaryGetValue(a4, @"BossTrack_SampleBufferCryptor");
    if (v20)
    {
      CFDictionarySetValue(*(a2 + 280), @"SampleBufferCryptor", v20);
    }

    if (FigCFDictionaryGetCMTimeIfPresent())
    {
      OUTLINED_FUNCTION_29();
      if (v120)
      {
        *(a2 + 288) = rhs;
      }
    }

    *(a2 + 312) = 1065353216;
    FigCFDictionaryGetFloat32IfPresent();
    if (FigCFDictionaryGetCMTimeIfPresent())
    {
      OUTLINED_FUNCTION_29();
      if (v120)
      {
        OUTLINED_FUNCTION_31_6((a2 + 316));
      }
    }

    if (FigCFDictionaryGetCMTimeIfPresent())
    {
      OUTLINED_FUNCTION_29();
      if (v120)
      {
        OUTLINED_FUNCTION_31_6((a2 + 340));
      }
    }

    v21 = *v12;
    if (v21 == CFDictionaryGetValue(a4, @"BossTrack_SendSampleReferenceSampleBuffers"))
    {
      *(a2 + 364) = 1;
    }

    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
    v23 = MEMORY[0x1E6960CC0];
    if (Int32IfPresent)
    {
      FigCFDictionarySetInt32();
    }

    if (v21 == CFDictionaryGetValue(a4, @"BossTrack_RoundUpStartPTS"))
    {
      *(a2 + 424) = 1;
    }

    if (v19 == CFDictionaryGetValue(a4, @"BossTrack_EnableForStepping"))
    {
      *(a2 + 89) = 0;
    }

    *__src = *v23;
    v24 = *(v23 + 2);
    *&__src[24] = *__src;
    *&__src[16] = v24;
    *&__src[40] = v24;
    *&__src[48] = *__src;
    *&__src[72] = *__src;
    *&__src[64] = v24;
    *&__src[88] = v24;
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    if (!FigCFDictionaryGetCMTimeIfPresent())
    {
      *&__src[48] = *__src;
      *&__src[64] = *&__src[16];
    }

    if (!FigCFDictionaryGetCMTimeIfPresent())
    {
      *&__src[72] = *&__src[24];
      *&__src[88] = *&__src[40];
    }

    *(a2 + 428) = *__src;
    *(a2 + 444) = *&__src[16];
    *(a2 + 452) = *&__src[24];
    *(a2 + 468) = *&__src[40];
    *(a2 + 476) = *&__src[48];
    *(a2 + 492) = *&__src[64];
    *(a2 + 516) = *&__src[88];
    *(a2 + 500) = *&__src[72];
    memcpy(__dst, __src, 0x60uLL);
    *(a2 + 425) = !FigVideoCompositionTimeWindowDurationIsZero(__dst);
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    Mutable = *(a2 + 280);
  }

  else
  {
    v21 = *MEMORY[0x1E695E4D0];
    v23 = MEMORY[0x1E6960CC0];
  }

  CFDictionarySetValue(Mutable, @"OptimizeSampleCursorIPCForPower", v21);
  v25 = *(a1 + 849);
  queueOut = 0;
  cf = 0;
  v269 = 0;
  v270 = 0;
  v268 = 0;
  OUTLINED_FUNCTION_35_5();
  if (v120)
  {
    v27 = @"AudioEarlyDumpBefore";
  }

  else
  {
    if (v26 != 1986618469)
    {
      goto LABEL_49;
    }

    v27 = @"VideoEarlyDumpBefore";
  }

  v28 = CFPreferencesCopyValue(v27, @"com.apple.coremedia", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v28)
  {
    v29 = v28;
    v30 = CFGetTypeID(v28);
    if (v30 == CFStringGetTypeID())
    {
      v31 = CFStringCompare(v29, @"decode", 1uLL);
      CFRelease(v29);
      if (v31 == kCFCompareEqualTo)
      {
        ThatDiscards = FigSampleBufferConsumerCreateThatDiscards((a2 + 96));
        goto LABEL_47;
      }
    }

    else
    {
      CFRelease(v29);
    }
  }

LABEL_49:
  FigBaseObject = FigRenderPipelineGetFigBaseObject(*(a2 + 80));
  v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v35)
  {
    v35(FigBaseObject, @"SourceSampleBufferQueue", a3, &cf);
  }

  v36 = FigRenderPipelineGetFigBaseObject(*(a2 + 80));
  v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v37)
  {
    v37(v36, @"SourceSampleBufferConsumer", a3, &v270);
  }

  if (!v270)
  {
    __dst[0] = *v11;
    memset(&rhs, 0, sizeof(rhs));
    CMTimeMake(&rhs, 1, 1);
    memset(&v274, 0, sizeof(v274));
    CMTimeMake(&v274, 1, 2);
    v58 = *(a2 + 72);
    if (v58 == 1936684398)
    {
      v59 = CMTimeMake(__src, 4, 1);
      OUTLINED_FUNCTION_14_13(v59, v60, v61, v62, v63, v64, v65, v66, v204, v208, v212, v216, v4, v224, v229, v234, v238, *(&v238 + 1), v244, v248, value, value_8, v258, v262, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v267, v268, v269, v270, queueOut, cf, v273, v274.value, *&v274.timescale, v274.epoch, v275, v67, *__src);
      v68 = CMTimeMake(__src, 2, 1);
      v57 = OUTLINED_FUNCTION_34_7(v68, v69, v70, v71, v72, v73, v74, v75, v206, v210, v214, v218, v222, v226, v231, v236, v240, v243, v246, v250, valueb, value_8b, v260, v264, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v267, v268, v269, v270, queueOut, cf, v273, v274.value, *&v274.timescale, v274.epoch, v275, *__src);
      v58 = *(a2 + 72);
    }

    MEMORY[0x19A8D3660](&sReadModelSpecificPlaybackTuningOnce, bossReadModelSpecificPlaybackTuning, v57);
    if (sModelSpecificPlaybackTuning)
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(sModelSpecificPlaybackTuning))
      {
        v212 = (v58 >> 8);
        v216 = v58;
        v204 = (v58 >> 24);
        v208 = (v58 << 8 >> 24);
        v77 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%c%c%c%c");
        v78 = CFDictionaryGetValue(sModelSpecificPlaybackTuning, v77);
        if (v78 || (v78 = CFDictionaryGetValue(sModelSpecificPlaybackTuning, @"Default")) != 0)
        {
          v79 = v78;
          v80 = CFDictionaryGetTypeID();
          if (v80 == CFGetTypeID(v79))
          {
            v81 = CFDictionaryGetValue(v79, @"SampleBufferQueueLowWaterLevelMilliseconds");
            v82 = CFDictionaryGetValue(v79, @"SampleBufferQueueHighWaterLevelMilliseconds");
            LODWORD(valuePtr.value) = 0;
            if (v81)
            {
              v83 = CFNumberGetTypeID();
              v120 = v83 == CFGetTypeID(v81);
              v23 = MEMORY[0x1E6960CC0];
              if (v120)
              {
                CFNumberGetValue(v81, kCFNumberIntType, &valuePtr);
                v84 = CMTimeMake(__src, SLODWORD(valuePtr.value), 1000);
                OUTLINED_FUNCTION_34_7(v84, v85, v86, v87, v88, v89, v90, v91, v204, v208, v212, v216, v220, v224, v229, v234, v238, *(&v238 + 1), v244, v248, value, value_8, v258, v262, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v267, v268, v269, v270, queueOut, cf, v273, v274.value, *&v274.timescale, v274.epoch, v275, *__src);
              }
            }

            if (v82)
            {
              v92 = CFNumberGetTypeID();
              if (v92 == CFGetTypeID(v82))
              {
                CFNumberGetValue(v82, kCFNumberIntType, &valuePtr);
                v93 = CMTimeMake(__src, SLODWORD(valuePtr.value), 1000);
                OUTLINED_FUNCTION_14_13(v93, v94, v95, v96, v97, v98, v99, v100, v204, v208, v212, v216, v220, v224, v229, v234, v238, *(&v238 + 1), v244, v248, value, value_8, v258, v262, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v267, v268, v269, v270, queueOut, cf, v273, v274.value, *&v274.timescale, v274.epoch, v275, v101, *__src);
              }
            }
          }
        }

        if (v77)
        {
          CFRelease(v77);
        }
      }
    }

    if (FigCFDictionaryGetCMTimeIfPresent())
    {
      OUTLINED_FUNCTION_29();
      if (v120)
      {
        rhs = __dst[0];
      }
    }

    if (FigCFDictionaryGetCMTimeIfPresent())
    {
      OUTLINED_FUNCTION_29();
      if (v120)
      {
        OUTLINED_FUNCTION_32_6(v102, v103, v104, v105, v106, v107, v108, v109, v204, v208, v212, v216, v220, v224, v229, v234, v238, *(&v238 + 1), v244, v248, value, value_8, v258, v262, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v267, v268, v269, v270, queueOut, cf, v273, v274.value, *&v274.timescale, v274.epoch, v275, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], v277, *v278, *&v278[8], *&v278[16], *&v278[24], v279, v280, *&__dst[0].value);
      }
    }

    v110 = *(a2 + 32);
    *__src = 0;
    v111 = FigTrackReaderGetFigBaseObject(v110);
    v112 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v112)
    {
      v112(v111, @"HasSeamSamples", *MEMORY[0x1E695E480], __src);
      v113 = *__src;
      if (*__src)
      {
        CFRelease(*__src);
      }
    }

    else
    {
      v113 = 0;
    }

    if (v113 == v21)
    {
      memset(__src, 0, 24);
      CMTimeMake(__src, 1, 1);
      OUTLINED_FUNCTION_20_5(rhs.epoch, v204, v208, v212, v216, v220, v224, v229, v234, v238, v244, v248, rhs.value, *&rhs.timescale, v258, v262, *&valuePtr.value, valuePtr.epoch, v267, v268, v269, v270, queueOut, cf, v273, v274.value, *&v274.timescale, v274.epoch, v275, *__src, *&__src[16]);
      rhs = valuePtr;
      OUTLINED_FUNCTION_20_5(v274.epoch, v207, v211, v215, v219, v223, v227, v232, v237, v241, v247, v251, v274.value, *&v274.timescale, v261, v265, *&valuePtr.value, valuePtr.epoch, v267, v268, v269, v270, queueOut, cf, v273, v274.value, *&v274.timescale, v274.epoch, v275, *__src, *&__src[16]);
      v274 = valuePtr;
    }

    *__src = rhs;
    valuePtr = v274;
    v33 = FigSampleBufferConsumerCreateForBufferQueue(cf, __src, &valuePtr.value, &v270);
    if (v33)
    {
      goto LABEL_91;
    }
  }

  if (!v25)
  {
    v33 = 0;
    v114 = cf;
    cf = 0;
    *(a2 + 96) = v270;
    *(a2 + 104) = v114;
    v270 = 0;
    goto LABEL_93;
  }

  memset(__src, 0, 24);
  CMTimeMake(__src, 6, 2);
  memset(__dst, 0, 24);
  CMTimeMake(__dst, 5, 2);
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  ThatDiscards = CMBufferQueueCreate(a3, 0, CallbacksForUnsortedSampleBuffers, &queueOut);
  if (!ThatDiscards)
  {
    OUTLINED_FUNCTION_14_13(queueOut, v39, v40, v41, v42, v43, v44, v45, v204, v208, v212, v216, v220, v224, v229, v234, v238, *(&v238 + 1), v244, v248, value, value_8, v258, v262, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v267, v268, v269, v270, queueOut, cf, v273, v274.value, *&v274.timescale, v274.epoch, v275, v46, *__src);
    OUTLINED_FUNCTION_32_6(v47, v48, v49, v50, v51, v52, v53, v54, v205, v209, v213, v217, v221, v225, v230, v235, v239, v242, v245, v249, valuea, value_8a, v259, v263, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v267, v268, v269, v270, queueOut, cf, v273, v274.value, *&v274.timescale, v274.epoch, v275, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], v277, *v278, *&v278[8], *&v278[16], *&v278[24], v279, v280, *&__dst[0].value);
    ThatDiscards = FigSampleBufferConsumerCreateForBufferQueue(v55, &rhs.value, &v274.value, &v269);
    if (!ThatDiscards)
    {
      v33 = FigMediaProcessorCreateForMakingDataReady(a3, queueOut, v270, *(a2 + 120), 0, &v268);
      if (!v33)
      {
        v56 = queueOut;
        queueOut = 0;
        *(a2 + 96) = v269;
        *(a2 + 104) = v56;
        *(a2 + 112) = v268;
        v268 = 0;
        v269 = 0;
      }

      goto LABEL_91;
    }
  }

LABEL_47:
  v33 = ThatDiscards;
LABEL_91:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_93:
  if (queueOut)
  {
    CFRelease(queueOut);
  }

  if (v270)
  {
    CFRelease(v270);
  }

  if (v269)
  {
    CFRelease(v269);
  }

  if (v268)
  {
    CFRelease(v268);
  }

  if (v33)
  {
    return v33;
  }

  v115 = *(a1 + 129);
  rhs.value = 0;
  v274.value = 0;
  v233 = *v23;
  *__src = *v23;
  v228 = *(v23 + 2);
  *&__src[16] = v228;
  v116 = FigRenderPipelineGetFigBaseObject(*(a2 + 80));
  v117 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v117)
  {
    if (!v117(v116, @"PipelineLatency", a3, &v274))
    {
      if (v274.value)
      {
        CMTimeMakeFromDictionary(__src, v274.value);
        if (v274.value)
        {
          CFRelease(v274.value);
          v274.value = 0;
        }
      }
    }
  }

  if (*(a2 + 364))
  {
    v118 = FigSampleGeneratorCreateForFormatReaderProducingByteReferenceSampleBuffers(a3, *(a1 + 40), *(a2 + 32), *(a1 + 120), 0, &rhs);
    if (!v118)
    {
LABEL_109:
      v33 = 0;
      *(a2 + 40) = CFRetain(rhs.value);
      goto LABEL_110;
    }
  }

  else
  {
    v131 = *(a1 + 120);
    if (v115)
    {
      v132 = *(a2 + 32);
      v133 = *(a1 + 48);
      v134 = *(a1 + 56);
      __dst[0] = *__src;
      v118 = FigSampleGeneratorCreateForTrackReaderUsingScheduledIO(a3, v132, v133, v134, v131, __dst, 2, &rhs);
      if (!v118)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v118 = FigSampleGeneratorCreateForFormatReaderUsingByteStreams(a3, *(a1 + 40), *(a2 + 32), *(a1 + 48), v131, 2, &rhs);
      if (!v118)
      {
        goto LABEL_109;
      }
    }
  }

  v33 = v118;
LABEL_110:
  if (rhs.value)
  {
    CFRelease(rhs.value);
  }

  if (v33)
  {
    return v33;
  }

  OUTLINED_FUNCTION_35_5();
  v120 = v120 || v119 == 1751216244;
  if (v120)
  {
    valuePtr.value = 0;
    LODWORD(cf) = 0;
    LODWORD(queueOut) = 0;
    if (!a4 || (v121 = CFDictionaryGetValue(a4, @"iTunesGaplessInfo")) == 0 || (v122 = CFGetTypeID(v121), v122 != CFDictionaryGetTypeID()))
    {
      v127 = 0;
      v128 = 1;
      goto LABEL_145;
    }

    v123 = FigCFDictionaryGetInt32IfPresent();
    Int64IfPresent = FigCFDictionaryGetInt64IfPresent();
    v125 = FigCFDictionaryGetInt32IfPresent();
    v126 = FigCFDictionaryGetInt32IfPresent();
    v127 = 0;
    v128 = 1;
    if (v125 && v126)
    {
      if (FigCFDictionaryGetInt32IfPresent())
      {
        if (!Int64IfPresent)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(v274.value) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v130 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v274.value);
          if (OUTLINED_FUNCTION_28_1(v130))
          {
            OUTLINED_FUNCTION_19_9();
            OUTLINED_FUNCTION_9_16();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_16();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_144;
      }

      if (*(a1 + 132))
      {
LABEL_144:
        v127 = (v123 | Int64IfPresent) != 0;
        v128 = Int64IfPresent == 0;
        goto LABEL_145;
      }

      LODWORD(rhs.value) = 0;
      LOBYTE(v274.value) = 0;
      v140 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v141 = os_log_type_enabled(v140, v274.value);
      if (OUTLINED_FUNCTION_109_0(v141))
      {
        OUTLINED_FUNCTION_19_9();
        OUTLINED_FUNCTION_9_16();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_524();
      v127 = 0;
    }

LABEL_145:
    v33 = AudioMentorNew(*(a2 + 48), *(a2 + 40), *(a2 + 96), *(a2 + 280), (a2 + 128));
    if (v33 || !v127)
    {
LABEL_179:
      if (v33)
      {
        return v33;
      }

      v135 = *MEMORY[0x1E695E480];
      goto LABEL_181;
    }

    LODWORD(v270) = 0;
    memset(__dst, 0, 96);
    v142 = *(a2 + 32);
    *__src = 0;
    v143 = *MEMORY[0x1E695E480];
    v144 = FigTrackReaderGetFigBaseObject(v142);
    v145 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v145)
    {
      v146 = v145(v144, @"TrackFormatDescriptionArray", v143, __src);
      if (!v146)
      {
        if (*__src && CFArrayGetCount(*__src))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*__src, 0);
          if (ValueAtIndex)
          {
            v148 = CFRetain(ValueAtIndex);
          }

          else
          {
            v148 = 0;
          }

          v33 = 0;
          goto LABEL_156;
        }

        v146 = FigSignalErrorAtGM();
      }

      v33 = v146;
      v148 = 0;
    }

    else
    {
      v148 = 0;
      v33 = 4294954514;
    }

LABEL_156:
    if (*__src)
    {
      CFRelease(*__src);
    }

    if (!v33)
    {
      v149 = queueOut;
      CMTimeMake(__dst, 0, queueOut);
      if (v128)
      {
        *&__dst[1].value = *MEMORY[0x1E6960C88];
        v150 = *(MEMORY[0x1E6960C88] + 16);
      }

      else
      {
        CMTimeMake(__src, valuePtr.value, v149);
        *&__dst[1].value = *__src;
        v150 = *&__src[16];
      }

      __dst[1].epoch = v150;
      CMTimeMake(__src, 0, v149);
      __dst[2] = *__src;
      __dst[3] = __dst[1];
      v151 = cf;
      if (cf <= 0)
      {
        LODWORD(v274.value) = 0;
        LOBYTE(v269) = 0;
        v152 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v153 = os_log_type_enabled(v152, v269);
        if (OUTLINED_FUNCTION_28_1(v153))
        {
          LODWORD(rhs.value) = 136315394;
          *(&rhs.value + 4) = "bossCreateAudioAndGaplessMentorForTrack";
          LOWORD(rhs.flags) = 1024;
          *(&rhs.flags + 2) = cf;
          OUTLINED_FUNCTION_13_8();
          OUTLINED_FUNCTION_9_16();
          _os_log_send_and_compose_impl();
        }

        v151 = 1;
        OUTLINED_FUNCTION_21_6();
        LODWORD(cf) = 1;
      }

      if (v151 < 0)
      {
        LODWORD(v270) = 0 / v151;
        *(a2 + 256) = CFNumberCreate(v143, kCFNumberSInt32Type, &v270);
      }

      if (dword_1EAF16E78)
      {
        LODWORD(v274.value) = 0;
        LOBYTE(v269) = 0;
        v154 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v155 = v274.value;
        if (os_log_type_enabled(v154, v269))
        {
          v156 = v155;
        }

        else
        {
          v156 = v155 & 0xFFFFFFFE;
        }

        if (v156)
        {
          LODWORD(rhs.value) = 136317186;
          *(&rhs.value + 4) = "bossCreateAudioAndGaplessMentorForTrack";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = a1;
          HIWORD(rhs.epoch) = 2082;
          v283 = a1 + 850;
          v284 = 2048;
          v285 = __dst[0].value;
          v286 = 2048;
          v287 = __dst[1].value;
          v288 = 2048;
          v289 = __dst[2].value;
          v290 = 2048;
          v291 = __dst[3].value;
          v292 = 1024;
          v293 = v270;
          v294 = 1024;
          v295 = 0;
          OUTLINED_FUNCTION_13_8();
          OUTLINED_FUNCTION_9_16();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v33 = EditMentorNewWithChildAudioMentorAndSingleEditSegment(*(a2 + 128), &__dst[0].value, (a2 + 136));
      OUTLINED_FUNCTION_0_50();
      v157 = CFStringCreateWithFormat(v143, 0, @"GAPLESS (%c%c%c%c)");
      EditMentorSetDebugName(*(a2 + 136), v157);
      if (v157)
      {
        CFRelease(v157);
      }
    }

    if (v148)
    {
      CFRelease(v148);
    }

    goto LABEL_179;
  }

  *__src = 0;
  v135 = *MEMORY[0x1E695E480];
  v136 = FigRenderPipelineGetFigBaseObject(*(a2 + 80));
  v137 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v137)
  {
    v137(v136, @"SupportsSavingFrames", v135, __src);
  }

  v138 = *__src;
  if (*__src == v21)
  {
    CFDictionarySetValue(*(a2 + 280), @"SpeculativelySaveFrames", v21);
    v138 = *__src;
  }

  if (v138)
  {
    CFRelease(v138);
  }

  v139 = VideoMentorNew(*(a2 + 48), *(a2 + 40), *(a2 + 96), *(a2 + 280), (a2 + 144));
  if (v139)
  {
    return v139;
  }

LABEL_181:
  v158 = FigTrackReaderGetFigBaseObject(*(a2 + 32));
  v159 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v159)
  {
    v159(v158, @"EditCursorService", v135, a2 + 56);
  }

  v160 = *(a2 + 128);
  if (v160)
  {
    v161 = *(a2 + 56);
    if (*(a2 + 136))
    {
      v162 = EditMentorNewWithChildEditMentor(*(a2 + 136), v161, 0, (a2 + 152));
    }

    else
    {
      v162 = EditMentorNewWithChildAudioMentor(v160, v161, (a2 + 152));
    }
  }

  else
  {
    v162 = EditMentorNewWithChildVideoMentor(*(a2 + 144), *(a2 + 56), (a2 + 152));
  }

  v33 = v162;
  if (!v162)
  {
    OUTLINED_FUNCTION_0_50();
    v165 = OUTLINED_FUNCTION_29_7(v163, v164, @"PRIMARY (%c%c%c%c)");
    EditMentorSetDebugName(*(a2 + 152), v165);
    if (v165)
    {
      CFRelease(v165);
    }

    *(a2 + 216) = *(a2 + 152);
    v166 = FigTrackReaderGetFigBaseObject(*(a2 + 32));
    v167 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v167)
    {
      v167(v166, @"SecondaryEditCursorService", v135, a2 + 64);
    }

    v168 = *(a2 + 64);
    if (v168)
    {
      v139 = EditMentorNewWithChildEditMentor(*(a2 + 216), v168, 0, (a2 + 160));
      if (v139)
      {
        return v139;
      }

      OUTLINED_FUNCTION_0_50();
      v171 = OUTLINED_FUNCTION_29_7(v169, v170, @"SUPER (%c%c%c%c)");
      EditMentorSetDebugName(*(a2 + 160), v171);
      if (v171)
      {
        CFRelease(v171);
      }

      *(a2 + 216) = *(a2 + 160);
    }

    if ((*(a1 + 212) & 1) != 0 && (*(a1 + 236) & 1) != 0 && !*(a1 + 240) && (*(a1 + 224) & 0x8000000000000000) == 0)
    {
      v172 = *(a1 + 216);
      *__src = *(a1 + 200);
      *&__src[16] = v172;
      *&__src[32] = *(a1 + 232);
      v139 = FigLoopingEditCursorServiceCreate(v135, __src, (a2 + 168));
      if (v139)
      {
        return v139;
      }

      v139 = EditMentorNewWithChildEditMentor(*(a2 + 216), *(a2 + 168), 0, (a2 + 176));
      if (v139)
      {
        return v139;
      }

      OUTLINED_FUNCTION_0_50();
      v175 = OUTLINED_FUNCTION_29_7(v173, v174, @"LOOPING (%c%c%c%c)");
      EditMentorSetDebugName(*(a2 + 176), v175);
      if (v175)
      {
        CFRelease(v175);
      }

      *(a2 + 216) = *(a2 + 176);
    }

    if (!*(a2 + 128))
    {
      goto LABEL_213;
    }

    *__src = *MEMORY[0x1E6960C68];
    *&__src[16] = *(MEMORY[0x1E6960C68] + 16);
    v139 = FigSnippetEditCursorServiceCreate(v135, __src, (a2 + 184));
    if (!v139)
    {
      *(a2 + 192) = 0;
      v139 = EditMentorNewWithChildEditMentor(*(a2 + 216), *(a2 + 184), 1, (a2 + 200));
      if (!v139)
      {
        OUTLINED_FUNCTION_0_50();
        v178 = OUTLINED_FUNCTION_29_7(v176, v177, @"SNIPPET (%c%c%c%c)");
        EditMentorSetDebugName(*(a2 + 200), v178);
        if (v178)
        {
          CFRelease(v178);
        }

        *(a2 + 216) = *(a2 + 200);
LABEL_213:
        if (*(a2 + 144))
        {
          v179 = (a2 + 524);
          if (*(a2 + 536))
          {
            memset(&__dst[1], 0, 72);
            *&__dst[0].value = *v179;
            __dst[0].epoch = *(a2 + 540);
            v180 = *(a2 + 560);
          }

          else
          {
            v180 = *(a2 + 560);
            if ((v180 & 1) == 0)
            {
              goto LABEL_216;
            }

            memset(&__dst[1], 0, 72);
            *&__dst[0].value = v233;
            __dst[0].epoch = v228;
          }

          if (v180)
          {
            *__src = *(a2 + 548);
            *&__src[16] = *(a2 + 564);
            *&rhs.value = *v179;
            rhs.epoch = *(a2 + 540);
            CMTimeSubtract(&__dst[1], __src, &rhs);
          }

          else
          {
            __dst[1] = **&MEMORY[0x1E6960C88];
          }

          __dst[2] = __dst[0];
          __dst[3] = __dst[1];
          if (dword_1EAF16E78)
          {
            LODWORD(v274.value) = 0;
            LOBYTE(valuePtr.value) = 0;
            v181 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v182 = os_log_type_enabled(v181, valuePtr.value);
            if (OUTLINED_FUNCTION_115_1(v182))
            {
              LODWORD(rhs.value) = 136316418;
              *(&rhs.value + 4) = "bossBuildMentorForTrack";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = a1;
              HIWORD(rhs.epoch) = 2048;
              v283 = __dst[0].value;
              v284 = 2048;
              v285 = __dst[1].value;
              v286 = 2048;
              v287 = __dst[2].value;
              v288 = 2048;
              v289 = __dst[3].value;
              OUTLINED_FUNCTION_13_8();
              OUTLINED_FUNCTION_9_16();
              OUTLINED_FUNCTION_448();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_414();
          }

          v33 = EditMentorNewWithChildEditMentorAndSingleEditSegment(*(a2 + 216), &__dst[0].value, (a2 + 208));
          OUTLINED_FUNCTION_0_50();
          v185 = OUTLINED_FUNCTION_29_7(v183, v184, @"TRIM (%c%c%c%c)");
          EditMentorSetDebugName(*(a2 + 208), v185);
          if (v185)
          {
            CFRelease(v185);
          }

          *(a2 + 216) = *(a2 + 208);
          goto LABEL_229;
        }

LABEL_216:
        v33 = 0;
LABEL_229:
        if (dword_1EAF16E78)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(v274.value) = 0;
          v186 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v187 = os_log_type_enabled(v186, v274.value);
          if (OUTLINED_FUNCTION_109_0(v187))
          {
            v188 = *(a2 + 24);
            v189 = *(a2 + 72);
            v190 = HIBYTE(v189);
            v191 = BYTE2(v189);
            v192 = BYTE1(v189);
            v193 = v189;
            if (*(a2 + 89))
            {
              v194 = "enableForStepping";
            }

            else
            {
              v194 = "disableForStepping";
            }

            v195 = *(a2 + 216);
            v196 = *(a2 + 200);
            v197 = *(a2 + 176);
            v198 = *(a2 + 152);
            v199 = *(a2 + 160);
            v200 = *(a2 + 128);
            v201 = *(a2 + 136);
            v202 = "audioMentor";
            if (!v200)
            {
              v202 = "videoMentor";
              v200 = *(a2 + 144);
            }

            *__src = 136319234;
            *&__src[4] = "bossBuildMentorForTrack";
            *&__src[12] = 2048;
            *&__src[14] = a1;
            *&__src[22] = 2082;
            *&__src[24] = a1 + 850;
            *&__src[32] = 1024;
            *&__src[34] = v188;
            *&__src[38] = 1024;
            *&__src[40] = v190;
            *&__src[44] = 1024;
            *&__src[46] = v191;
            *&__src[50] = 1024;
            *&__src[52] = v192;
            *&__src[56] = 1024;
            *&__src[58] = v193;
            *&__src[62] = 2082;
            *&__src[64] = v194;
            *&__src[72] = 2048;
            *&__src[74] = v195;
            *&__src[82] = 2048;
            *&__src[84] = v196;
            *&__src[92] = 2048;
            *&__src[94] = v197;
            *&__src[102] = 2048;
            v277 = v199;
            *v278 = 2048;
            *&v278[2] = v198;
            *&v278[10] = 2048;
            *&v278[12] = v201;
            *&v278[20] = 2082;
            *&v278[22] = v202;
            *&v278[30] = 2048;
            v279 = v200;
            OUTLINED_FUNCTION_38();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_524();
        }

        return v33;
      }
    }

    return v139;
  }

  return v33;
}

uint64_t bossAddNotificationListenersForTrack(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();
  result = FigNotificationCenterAddWeakListeners();
  if (!result)
  {
    *(a2 + 421) = 1;
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterAddWeakListeners();
    if (!result)
    {
      *(a2 + 422) = 1;
      if (*(a2 + 112))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        result = FigNotificationCenterAddWeakListeners();
        if (!result)
        {
          *(a2 + 423) = 1;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t FigPlaybackBossSetVideoCompositionProcessor(uint64_t a1, const void *a2)
{
  if (*(a1 + 476) && *(a1 + 600))
  {
    bossRemoveVideoCompositionProcessorNotificationListenersForSeekForBoss(a1);
  }

  if (*(a1 + 600))
  {
    bossRemoveVideoCompositionProcessorNotificationListenersForPrerollForBoss(a1);
    v4 = *(a1 + 600);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 600) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 600);
  if (*(a1 + 476))
  {
    if (!v5)
    {
      return 0;
    }

    bossAddVideoCompositionProcessorNotificationListenersForSeekForBoss(a1);
    v5 = *(a1 + 600);
  }

  if (v5)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    if (!OUTLINED_FUNCTION_38_4())
    {
      *(a1 + 789) = a2;
    }
  }

  return 0;
}

uint64_t bossAddVideoCompositionProcessorNotificationListenersForSeekForBoss(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  result = OUTLINED_FUNCTION_38_4();
  if (!result)
  {
    *(a1 + 790) = v1;
  }

  return result;
}

void figPlaybackBossPostSeekDidComplete(uint64_t a1, int a2, int a3)
{
  if (dword_1EAF16E78)
  {
    v5 = OUTLINED_FUNCTION_126();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_115_1(v6))
    {
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_448();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v8 = Mutable;
      if (!FigCFDictionarySetInt32() && (!a3 || !FigCFDictionarySetInt32()))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      CFRelease(v8);
    }
  }
}

void figPlaybackBoss_MentorPrerollComplete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    v8 = v7;
    if (!*(v7 + 16))
    {
      FigSimpleMutexLock();
      FigSimpleMutexLock();
      FigSimpleMutexLock();
      if (*(v8 + 848))
      {
        OUTLINED_FUNCTION_26_9();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v10 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
        if (OUTLINED_FUNCTION_115_1(v10))
        {
          OUTLINED_FUNCTION_38();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_414();
      }

      if (a5)
      {
        Value = CFDictionaryGetValue(a5, @"MentorPrerollComplete_Order");
        FigCFDictionaryGetInt32IfPresent();
      }

      else
      {
        Value = 0;
      }

      if (dword_1EAF16E78)
      {
        OUTLINED_FUNCTION_26_9();
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        if (os_log_type_enabled(v12, type))
        {
          v13 = v23;
        }

        else
        {
          v13 = v23 & 0xFFFFFFFE;
        }

        if (v13)
        {
          FigMentorPrerollCompletionReasonGetDescription(0);
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_448();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (!*(v8 + 16) && *(a2 + 224) == Value && *(a2 + 237))
      {
        v14 = *(v8 + 544);
        if (v14)
        {
          CFRetain(*(v8 + 544));
        }

        *(a2 + 237) = 0;
        v15 = *(v8 + 80);
        if (v15 >= 1 && (v16 = *(v8 + 72)) != 0)
        {
          Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v16);
        }

        else
        {
          Copy = 0;
        }

        FigSimpleMutexUnlock();
        FigSimpleMutexUnlock();
        if (v15 < 1)
        {
LABEL_38:
          if (!*(v8 + 16))
          {
            *(v8 + 609) = 0;
            figPlaybackBoss_waitForCompletionOfPhase1AndStartPhase2(v8);
            if (!v14)
            {
LABEL_41:
              FigSimpleMutexUnlock();
              if (Copy)
              {
                CFRelease(Copy);
              }

              goto LABEL_20;
            }

LABEL_40:
            CFRelease(v14);
            goto LABEL_41;
          }
        }

        else
        {
          v18 = 0;
          while (!*(CFArrayGetValueAtIndex(Copy, v18) + 237))
          {
            if (v15 == ++v18)
            {
              for (i = 0; i != v15; ++i)
              {
                v20 = *(CFArrayGetValueAtIndex(Copy, i) + 5);
                if (v20)
                {
                  v21 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                  if (v21)
                  {
                    v21(v20);
                  }
                }
              }

              goto LABEL_38;
            }
          }
        }

        if (!v14)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
    }

LABEL_20:
    CFRelease(v8);
  }
}

void figPlaybackBoss_waitForCompletionOfPhase1AndStartPhase2(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    return;
  }

  FigSimpleMutexLock();
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    OUTLINED_FUNCTION_4_37();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v10 = OUTLINED_FUNCTION_116_0(os_log_and_send_and_compose_flags_and_os_log_type, v3, v4, v5, v6, v7, v8, v9, v42, v43, v44, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    if (OUTLINED_FUNCTION_109_0(v10))
    {
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_524();
  }

  if (!FigCFEqual())
  {
    if (dword_1EAF16E78)
    {
      OUTLINED_FUNCTION_4_37();
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (os_log_type_enabled(v24, BYTE3(type)))
      {
        v25 = HIDWORD(type);
      }

      else
      {
        v25 = HIDWORD(type) & 0xFFFFFFFE;
      }

      if (v25)
      {
        OUTLINED_FUNCTION_23_8();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_24;
  }

  if (*(a1 + 608))
  {
LABEL_24:
    FigSimpleMutexUnlock();
    goto LABEL_25;
  }

  v11 = *(a1 + 609);
  FigSimpleMutexUnlock();
  if (v11)
  {
LABEL_25:
    FigSimpleMutexUnlock();
    return;
  }

  if (*(a1 + 432) == 1886154860)
  {
    v12 = MEMORY[0x1E6960C70];
    bossStopTimebaseAndAudioContext(a1, 0, MEMORY[0x1E6960C70]);
    ++*(a1 + 728);
    OUTLINED_FUNCTION_29();
    if (v13)
    {
      v14 = *(a1 + 120);
      time = *(a1 + 452);
      CMTimebaseSetTime(v14, &time);
      *(a1 + 452) = *v12;
      *(a1 + 468) = *(v12 + 16);
    }

    bossReplaceMainQueuesWithSideQueuesAndSwitchMentorsToMainQueues(a1);
  }

  FigSimpleMutexUnlock();
  if (dword_1EAF16E78)
  {
    OUTLINED_FUNCTION_4_37();
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v23 = OUTLINED_FUNCTION_116_0(v15, v16, v17, v18, v19, v20, v21, v22, v42, v43, v44, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    if (OUTLINED_FUNCTION_109_0(v23))
    {
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524();
  }

  if (!*(a1 + 16))
  {
    FigSimpleMutexLock();
    FigSimpleMutexLock();
    if (*(a1 + 848))
    {
      OUTLINED_FUNCTION_4_37();
      v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v34 = OUTLINED_FUNCTION_116_0(v26, v27, v28, v29, v30, v31, v32, v33, v42, v43, v44, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      if (OUTLINED_FUNCTION_109_0(v34))
      {
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_524();
    }

    if (!FigCFEqual() || *(a1 + 80) < 1)
    {
      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
LABEL_44:
      figPlaybackBossPrerollCompleted(a1, 0);
      return;
    }

    v35 = 0;
    v36 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v35);
      v38 = ValueAtIndex;
      ValueAtIndex[238] = 1;
      v39 = *(ValueAtIndex + 10);
      if (v39 && (v40 = *(ValueAtIndex + 28), (v41 = *(*(CMBaseObjectGetVTable() + 16) + 56)) != 0) && !v41(v39, v40))
      {
        v36 = 1;
      }

      else
      {
        v38[238] = 0;
      }

      ++v35;
    }

    while (*(a1 + 80) > v35);
    FigSimpleMutexUnlock();
    FigSimpleMutexUnlock();
    if (!v36)
    {
      goto LABEL_44;
    }
  }
}