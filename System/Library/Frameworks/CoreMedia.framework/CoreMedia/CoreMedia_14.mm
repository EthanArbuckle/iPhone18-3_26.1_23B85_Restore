uint64_t FigTimelineCoordinatorCoordinateJumpToTime2(uint64_t a1, __int128 *a2, void *a3, const void *a4, void *a5, void *a6)
{
  v12 = malloc_type_malloc(0x40uLL, 0x1060040C2398F4EuLL);
  if (a1)
  {
    v13 = CFRetain(a1);
  }

  else
  {
    v13 = 0;
  }

  *v12 = v13;
  v14 = *a2;
  *(v12 + 3) = *(a2 + 2);
  *(v12 + 8) = v14;
  if (a5 && a6)
  {
    v15 = malloc_type_malloc(0x20uLL, 0x10200405C7134C3uLL);
    v15[4] = *(a1 + 100);
    v12[48] = 1;
    *(v12 + 4) = 0;
    *(v12 + 7) = v15;
    *a5 = figTimelineCoordinator_timelineControlCommandCompletion;
    *a6 = v15;
  }

  else
  {
    v12[48] = 0;
    if (a4)
    {
      v16 = CFRetain(a4);
    }

    else
    {
      v16 = 0;
    }

    *(v12 + 4) = v16;
    *(v12 + 7) = 0;
  }

  FigSimpleMutexLock(*(a1 + 16));
  v17 = *(a1 + 24);
  *(a1 + 24) = v17 + 1;
  *(v12 + 5) = v17;
  dispatch_async_f(*(a1 + 88), v12, figTimelineCoordinator_coordinateTimeJumpDispatch);
  FigSimpleMutexUnlock(*(a1 + 16));
  if (a3)
  {
    *a3 = v17;
  }

  return 0;
}

void figTimelineCoordinator_timelineControlCommandCompletion(void *context, OpaqueCMTimebase *a2)
{
  if (context)
  {
    v6 = 0;
    v3 = *context;
    if (*context)
    {
      if (a2)
      {
        FigSimpleMutexLock(*(v3 + 16));
        v5 = *(v3 + 24);
        *(v3 + 24) = v5 + 1;
        figTimelineCoordinatorTimelineStateCreateFromTimebase(*MEMORY[0x1E695E480], *(context[1] + 88), a2, v5, &v6);
        context[3] = v6;
        dispatch_async_f(*(*context + 88), context, figTimelineCoordinator_timelineControlCommandCompletionOnQueue);
        FigSimpleMutexUnlock(*(v3 + 16));
      }

      else
      {
        context[3] = 0;
        dispatch_async_f(*(v3 + 88), context, figTimelineCoordinator_timelineControlCommandCompletionOnQueue);
      }
    }
  }
}

uint64_t FigTimelineCoordinatorCopyParticipantSnapshotForUUID(uint64_t a1, const void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    FigTimelineCoordinatorCopyParticipantSnapshotForUUID_cold_4(&v20, a2, a3, a4, a5, a6, a7, a8);
    return v20;
  }

  if (!a2)
  {
    FigTimelineCoordinatorCopyParticipantSnapshotForUUID_cold_3(&v20, 0, a3, a4, a5, a6, a7, a8);
    return v20;
  }

  if (!a3)
  {
    FigTimelineCoordinatorCopyParticipantSnapshotForUUID_cold_2(&v20, a2, 0, a4, a5, a6, a7, a8);
    return v20;
  }

  FigSimpleMutexLock(*(a1 + 320));
  Value = CFDictionaryGetValue(*(a1 + 328), a2);
  if (!Value)
  {
    FigTimelineCoordinatorCopyParticipantSnapshotForUUID_cold_1((a1 + 320), &v20, v12, v13, v14, v15, v16, v17);
    return v20;
  }

  v18 = Value;
  CFRetain(Value);
  FigSimpleMutexUnlock(*(a1 + 320));
  result = 0;
  *a3 = v18;
  return result;
}

uint64_t FigTimelineCoordinatorCopyParticipantSnapshots(uint64_t a1, CFArrayRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock(*(a1 + 320));
      v10 = FigCFDictionaryCopyArrayOfValues(*(a1 + 328));
      FigSimpleMutexUnlock(*(a1 + 320));
      result = 0;
      *a2 = v10;
    }

    else
    {
      FigTimelineCoordinatorCopyParticipantSnapshots_cold_1(&v12, 0, a3, a4, a5, a6, a7, a8);
      return v12;
    }
  }

  else
  {
    FigTimelineCoordinatorCopyParticipantSnapshots_cold_2(&v13, a2, a3, a4, a5, a6, a7, a8);
    return v13;
  }

  return result;
}

uint64_t FigTimelineCoordinatorHandleRemovalOfParticipantStateFromMedium(dispatch_queue_t *a1, const void *a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0x60040FAFB2B2FuLL);
  if (a1)
  {
    if (a2)
    {
      v12 = v4;
      *v4 = CFRetain(a1);
      v12[1] = CFRetain(a2);
      dispatch_async_f(a1[11], v12, figTimelineCoordinator_removeParticipantStateOnQueue);
      return 0;
    }

    else
    {
      FigTimelineCoordinatorHandleRemovalOfParticipantStateFromMedium_cold_1(&v14, v5, v6, v7, v8, v9, v10, v11);
      return v14;
    }
  }

  else
  {
    FigTimelineCoordinatorHandleRemovalOfParticipantStateFromMedium_cold_2(&v15, v5, v6, v7, v8, v9, v10, v11);
    return v15;
  }
}

void figTimelineCoordinator_removeParticipantStateOnQueue(CFTypeRef *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (CFDictionaryContainsKey(*(*a1 + 41), a1[1]))
  {
    if (dword_1EAF1CF08)
    {
      Value = CFDictionaryGetValue(*(v2 + 328), a1[1]);
      v5 = FigCFCopyCompactDescription(Value[2]);
      if (dword_1EAF1CF08)
      {
        v12[0] = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, v12, &type);
        v7 = v12[0];
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
          v12[1] = 136315650;
          v13 = "figTimelineCoordinator_removeParticipantStateOnQueue";
          v14 = 2112;
          v15 = v2;
          v16 = 2114;
          v17 = v5;
          v10 = _os_log_send_and_compose_impl();
          LOBYTE(v7) = v12[0];
        }

        else
        {
          v10 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v10, v10 != &v18, v7, 0, v8);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }

    FigSimpleMutexLock(*(v2 + 320));
    CFDictionaryRemoveValue(*(v2 + 328), a1[1]);
    FigSimpleMutexUnlock(*(v2 + 320));
    figTimelineCoordinator_postParticipantsDidChange(v2);
    figTimelineCoordinator_triggerTimelineChangesAfterParticipantChangeOnQueue(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t FigTimelineCoordinatorCopyActiveSuspensionReasons(uint64_t a1, const __CFArray **a2)
{
  FigSimpleMutexLock(*(a1 + 416));
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v12 = Mutable;
    Count = CFArrayGetCount(*(a1 + 424));
    if (Count >= 1)
    {
      v14 = Count;
      for (i = 0; i != v14; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 424), i);
        v20.length = CFArrayGetCount(v12);
        v20.location = 0;
        if (CFArrayGetFirstIndexOfValue(v12, v20, ValueAtIndex[2]) == -1)
        {
          CFArrayAppendValue(v12, ValueAtIndex[2]);
        }
      }
    }

    v17 = 0;
    if (a2)
    {
      *a2 = v12;
    }
  }

  else
  {
    FigTimelineCoordinatorCopyActiveSuspensionReasons_cold_1(&v19, v5, v6, v7, v8, v9, v10, v11);
    v17 = v19;
  }

  FigSimpleMutexUnlock(*(a1 + 416));
  return v17;
}

BOOL FigTimelineCoordinatorIsSuspended(uint64_t a1)
{
  FigSimpleMutexLock(*(a1 + 416));
  v2 = CFArrayGetCount(*(a1 + 424)) > 0;
  FigSimpleMutexUnlock(*(a1 + 416));
  return v2;
}

size_t FigTimelineCoordinatorBeginSuspensionProposingTime(uint64_t a1, const void *a2, __int128 *a3)
{
  FigSimpleMutexLock(*(a1 + 416));
  CFArrayAppendValue(*(a1 + 424), a2);
  FigSimpleMutexUnlock(*(a1 + 416));
  v6 = malloc_type_malloc(0x30uLL, 0x10200401705F15EuLL);
  *v6 = CFRetain(a1);
  if (a2)
  {
    v7 = CFRetain(a2);
  }

  else
  {
    v7 = 0;
  }

  v6[1] = v7;
  v8 = *a3;
  v6[4] = *(a3 + 2);
  *(v6 + 1) = v8;
  FigSimpleMutexLock(*(a1 + 16));
  v9 = *(a1 + 24);
  *(a1 + 24) = v9 + 1;
  v6[5] = v9;
  dispatch_async_f(*(a1 + 88), v6, figTimelineCoordinator_beginSuspensionOnQueue);
  FigSimpleMutexUnlock(*(a1 + 16));

  return figTimelineCoordinator_postSuspensionReasonsChangedNotification(a1);
}

uint64_t figTimelineCoordinator_removeSuspension(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock(*(a1 + 416));
  v4 = figTimelineCoordinatorRemoveSuspensionInternal(a1, a2);
  FigSimpleMutexUnlock(*(a1 + 416));
  return v4;
}

void figTimelineCoordinator_endSuspensionOnQueue(char *a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  cf = 0;
  v3 = &sVCCPreallocationSaveToSymlinkCString[720];
  if (dword_1EAF1CF08)
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    CFStringAppend(Mutable, @"[");
    v5 = 0;
    v6 = 0;
    while (1)
    {
      Count = *(a1 + 1);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (v5 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 1), v5);
      if (CFStringCompare(@"PlayingInterstitial", ValueAtIndex[2], 0) == kCFCompareEqualTo)
      {
        v6 = 1;
      }

      if (v5)
      {
        v9 = ", ";
      }

      else
      {
        v9 = "";
      }

      CFStringAppendFormat(Mutable, 0, @"%s'%@'", v9, ValueAtIndex[2]);
      ++v5;
    }

    CFStringAppend(Mutable, @"]");
    v10 = v6 == 0;
    v3 = sVCCPreallocationSaveToSymlinkCString + 720;
  }

  else
  {
    Mutable = 0;
    v10 = 1;
  }

  v11 = *(a1 + 1);
  if (v11)
  {
    v12 = CFArrayGetCount(*(a1 + 1));
    v13 = v12 - 1;
    if (v12 >= 1)
    {
      for (i = 0; ; ++i)
      {
        v15 = CFArrayGetValueAtIndex(v11, i);
        v16 = *(v2 + 432);
        v68.length = CFArrayGetCount(v16);
        v68.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v16, v68, v15);
        if (FirstIndexOfValue == -1)
        {
          if (!figTimelineCoordinator_endSuspensionOnQueue_cold_1(-1, v18, v19, v20, v21, v22, v23, v24))
          {
            break;
          }
        }

        else
        {
          CFArrayRemoveValueAtIndex(*(v2 + 432), FirstIndexOfValue);
        }

        if (v13 == i)
        {
          break;
        }
      }
    }
  }

  v25 = *(v3 + 962);
  if ((*(a1 + 8) & 0x1D) == 1)
  {
    if (!v25)
    {
      goto LABEL_43;
    }

    LODWORD(v57) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &v57, &type);
    LODWORD(v27) = v57;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v29 = v27;
    }

    else
    {
      v29 = v27 & 0xFFFFFFFE;
    }

    if (v29)
    {
      if (CFArrayGetCount(*(v2 + 432)) >= 1)
      {
        v27 = "discarding proposed";
      }

      else
      {
        v27 = "proposing";
      }

      time = *(a1 + 20);
      Seconds = CMTimeGetSeconds(&time);
      *v60 = 136316162;
      *&v60[4] = "figTimelineCoordinator_endSuspensionOnQueue";
      *&v60[12] = 2112;
      *&v60[14] = v2;
      *&v60[22] = 2114;
      v61 = Mutable;
      v62 = 2080;
      v63 = v27;
      v64 = 2048;
      v65 = Seconds;
      v31 = _os_log_send_and_compose_impl();
      LOBYTE(v27) = v57;
    }

    else
    {
      v31 = 0;
    }

    v35 = qword_1EAF1CF00;
    v36 = v31 != &time;
    v37 = v27;
  }

  else
  {
    if (!v25)
    {
      goto LABEL_43;
    }

    LODWORD(v57) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &v57, &type);
    v33 = v57;
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
      *v60 = 136315650;
      *&v60[4] = "figTimelineCoordinator_endSuspensionOnQueue";
      *&v60[12] = 2112;
      *&v60[14] = v2;
      *&v60[22] = 2114;
      v61 = Mutable;
      v31 = _os_log_send_and_compose_impl();
      LOBYTE(v33) = v57;
    }

    else
    {
      v31 = 0;
    }

    v35 = qword_1EAF1CF00;
    v36 = v31 != &time;
    v37 = v33;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(v35, 1u, 1, v31, v36, v37, 0, v28);
LABEL_43:
  if (CFArrayGetCount(*(v2 + 432)) > 0 || *(v2 + 440) && !FigCFDictionaryGetCount(*(v2 + 328)))
  {
    goto LABEL_71;
  }

  v43 = *(v2 + 352);
  if (!v43)
  {
    goto LABEL_71;
  }

  v44 = *(a1 + 11);
  v45 = *(a1 + 8) & 0x1D;
  if (v44 != 3.4028e38)
  {
    if (v45 == 1)
    {
      v57 = 0;
      if (!*(v2 + 200) || !a1[16])
      {
        goto LABEL_53;
      }

      if (figTimelineCoordinator_othersAreSuspended(v2))
      {
        v43 = *(v2 + 352);
        v44 = *(a1 + 11);
LABEL_53:
        v46 = *MEMORY[0x1E695E480];
        v47 = *(v2 + 344);
        v48 = *(a1 + 7);
        time = *(a1 + 20);
        memset(v60, 0, sizeof(v60));
        if (figTimelineCoordinatorTimelineStateCreateInternal(v44, 0.0, v46, v43, &time, v60, 0, v47, v48, 0xFFFFFFFFLL, 0, 0, &v57))
        {
          goto LABEL_74;
        }

        figTimelineCoordinator_endSuspensionOnQueue_cold_3(v2, &v57);
        goto LABEL_71;
      }

      goto LABEL_63;
    }

LABEL_62:
    if (!a1[48] && (figTimelineCoordinator_endSuspensionOnQueue_cold_2(v2) & 1) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_63;
  }

  if (v45 != 1)
  {
    goto LABEL_62;
  }

  if (!*(v2 + 200))
  {
    figTimelineCoordinator_issueProposeTimelineForIdentifierOnQueue(v2);
  }

  if (v10 || figTimelineCoordinator_othersAreSuspended(v2) || !*(v2 + 200))
  {
    v49 = *(a1 + 7);
    time = *(a1 + 20);
    figTimelineCoordinator_coordinateTimeJumpOnQueue(v2, &time, 1, 0, v49, 0, v41, v42);
    goto LABEL_71;
  }

LABEL_63:
  v50 = *(v2 + 200);
  if (v50)
  {
    v51 = figTimelineCoordinatorTimelineStateCopy(*MEMORY[0x1E695E480], v50, &cf, v38, v39, v40, v41, v42);
    v52 = cf;
    if (v51)
    {
      goto LABEL_72;
    }

    *(cf + 2) = *(a1 + 7);
    FigSimpleMutexLock(*(v2 + 184));
    v53 = *(v2 + 200);
    v54 = cf;
    *(v2 + 200) = cf;
    if (v54)
    {
      CFRetain(v54);
    }

    if (v53)
    {
      CFRelease(v53);
    }

    FigSimpleMutexUnlock(*(v2 + 184));
    v55 = *(v2 + 200);
    if (v55)
    {
      figTimelineCoordinator_transitionToNewExpectedTimelineIssuingCommandsWhenAppropriateOnQueue(v2, v55, 5u, 1, 1, 0, 0, 1);
    }
  }

  else if (*(v2 + 352))
  {
    figTimelineCoordinator_issueProposeTimelineForIdentifierOnQueue(v2);
  }

LABEL_71:
  figTimelineCoordinator_sendParticipantStateToGroupOnQueue(v2);
  v52 = cf;
LABEL_72:
  if (v52)
  {
    CFRelease(v52);
  }

LABEL_74:
  CFRelease(v2);
  v56 = *(a1 + 1);
  if (v56)
  {
    CFRelease(v56);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  free(a1);
}

CFStringRef *figTimelineCoordinator_getActiveSuspensionWithReason(uint64_t a1, const __CFString *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 432);
  if (v4 && (Count = CFArrayGetCount(v4), Count >= 1))
  {
    v6 = Count;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 432), v7);
      if (CFStringCompare(a2, ValueAtIndex[2], 0) == kCFCompareEqualTo)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    ValueAtIndex = 0;
  }

  if (dword_1EAF1CF08)
  {
    v16[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, v16, &type);
    v10 = v16[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 0xFFFFFFFE;
    }

    if (v12)
    {
      v16[1] = 136315906;
      v17 = "figTimelineCoordinator_getActiveSuspensionWithReason";
      v18 = 2112;
      v19 = a1;
      v20 = 2112;
      v21 = ValueAtIndex;
      v22 = 2112;
      v23 = a2;
      v13 = _os_log_send_and_compose_impl();
      LOBYTE(v10) = v16[0];
    }

    else
    {
      v13 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v13, v13 != &v24, v10, 0, v11);
  }

  return ValueAtIndex;
}

uint64_t FigTimelineCoordinatorGetExpectedGroupTimeForIdentifier(uint64_t a1, const void *a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  theArray = 0;
  if (!a1)
  {
    FigTimelineCoordinatorGetExpectedGroupTimeForIdentifier_cold_3(&v26, a2, a3, a4, a5, a6, a7, a8);
LABEL_27:
    value_low = LODWORD(v26.value);
    goto LABEL_20;
  }

  if (!a2)
  {
    FigTimelineCoordinatorGetExpectedGroupTimeForIdentifier_cold_2(&v26, 0, a3, a4, a5, a6, a7, a8);
    goto LABEL_27;
  }

  if (!a3)
  {
    FigTimelineCoordinatorGetExpectedGroupTimeForIdentifier_cold_1(&v26, a2, 0, a4, a5, a6, a7, a8);
    goto LABEL_27;
  }

  FigSimpleMutexLock(*(a1 + 184));
  Value = CFDictionaryGetValue(*(a1 + 216), a2);
  if (Value)
  {
    v12 = CFRetain(Value);
  }

  else
  {
    v12 = 0;
  }

  FigSimpleMutexUnlock(*(a1 + 184));
  v19 = FigTimelineCoordinatorCopyParticipantSnapshots(a1, &theArray, v13, v14, v15, v16, v17, v18);
  if (!v19)
  {
    v20 = 0;
    while (1)
    {
      Count = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      if (v20 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
      v23 = participantState_timelineIdentifier(ValueAtIndex[2]);
      ++v20;
      if (FigCFEqual(a2, v23))
      {
        if (v12 && *(v12 + 11) && (v12[9] == 0.0 || (v12[19] & 0x1D) == 1) && (v12[13] & 0x1D) == 1)
        {
          figTimelineCoordinator_timelineTimeAtHostTime(v12, &v26);
          value_low = 0;
          *a3 = v26;
          goto LABEL_19;
        }

        break;
      }
    }

    value_low = 0;
    *&a3->value = *&kCMTimeInvalid.value;
    a3->epoch = 0;
    if (!v12)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  value_low = v19;
  if (v12)
  {
LABEL_19:
    CFRelease(v12);
  }

LABEL_20:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return value_low;
}

uint64_t FigTimelineCoordinatorGetExpectedTimeAtHostTime(uint64_t a1, uint64_t a2, CMTime *a3)
{
  memset(&v7, 0, sizeof(v7));
  FigSimpleMutexLock(*(a1 + 184));
  v5 = *(a1 + 200);
  if (!v5)
  {
    FigSimpleMutexUnlock(*(a1 + 184));
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  CFRetain(*(a1 + 200));
  FigSimpleMutexUnlock(*(a1 + 184));
  figTimelineCoordinator_timelineTimeAtHostTime(v5, &v7);
  if (a3)
  {
LABEL_3:
    *a3 = v7;
  }

LABEL_4:
  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

uint64_t FigTimelineCoordinatorSetWeakMediumAndCallbacks(dispatch_queue_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (*a3)
  {
    FigTimelineCoordinatorSetWeakMediumAndCallbacks_cold_1(&v14, a2, a3, a4, a5, a6, a7, a8);
    return v14;
  }

  if (!a3[4])
  {
    FigTimelineCoordinatorSetWeakMediumAndCallbacks_cold_4(&v14, a2, a3, a4, a5, a6, a7, a8);
    return v14;
  }

  if (!a3[2])
  {
    FigTimelineCoordinatorSetWeakMediumAndCallbacks_cold_3(&v14, a2, a3, a4, a5, a6, a7, a8);
    return v14;
  }

  if (!a3[3])
  {
    FigTimelineCoordinatorSetWeakMediumAndCallbacks_cold_2(&v14, a2, a3, a4, a5, a6, a7, a8);
    return v14;
  }

  v11 = malloc_type_malloc(0x38uLL, 0x10A004042A389E2uLL);
  if (a1)
  {
    v12 = CFRetain(a1);
  }

  else
  {
    v12 = 0;
  }

  *v11 = v12;
  __copy_assignment_8_8_t0w16_pa0_12868_16_pa0_63777_24_pa0_904_32((v11 + 1), a3);
  v11[6] = FigCFWeakReferenceHolderCreateWithReferencedObject(a2);
  dispatch_async_f(a1[11], v11, figTimelineCoordinator_setMediumCallbacksOnQueue);
  return 0;
}

uint64_t __copy_assignment_8_8_t0w16_pa0_12868_16_pa0_63777_24_pa0_904_32(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  return result;
}

void figTimelineCoordinator_setMediumCallbacksOnQueue(void *a1)
{
  v2 = *a1;
  __copy_assignment_8_8_t0w16_pa0_12868_16_pa0_63777_24_pa0_904_32(*a1 + 120, (a1 + 1));
  v3 = v2[20];
  v4 = a1[6];
  v2[20] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  figTimelineCoordinator_resetGroupExpectationsOnQueue(v2);
  CFRelease(v2);
  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t FigTimelineCoordinatorHandleAssignmentOfUUIDToLocalParticipantByMedium(dispatch_queue_t *a1, const void *a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0x60040FAFB2B2FuLL);
  if (a1)
  {
    v5 = CFRetain(a1);
  }

  else
  {
    v5 = 0;
  }

  *v4 = v5;
  if (a2)
  {
    v6 = CFRetain(a2);
  }

  else
  {
    v6 = 0;
  }

  v4[1] = v6;
  dispatch_async_f(a1[11], v4, figTimelineCoordinator_handleNewParticipantUUIDFromMediumOnQueue);
  return 0;
}

void figTimelineCoordinator_handleNewParticipantUUIDFromMediumOnQueue(uint64_t *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  if (*(*a1 + 344))
  {
    if (!v2)
    {
      FigSimpleMutexLock(*(v3 + 168));
      v10 = *(v3 + 176);
      if (v10)
      {
        CFRelease(v10);
        *(v3 + 176) = 0;
      }

      FigSimpleMutexUnlock(*(v3 + 168));
    }
  }

  else if (v2)
  {
    if (!*(v3 + 176))
    {
      FigSimpleMutexLock(*(v3 + 536));
      v4 = figTimelineCoordinator_setNetworkToHostTimeOffset(v3);
      FigSimpleMutexUnlock(*(v3 + 536));
      if (v4 || !*(v3 + 176))
      {
        v22 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 0, &v22, &type);
        v6 = v22;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v8 = v6;
        }

        else
        {
          v8 = v6 & 0xFFFFFFFE;
        }

        if (v8)
        {
          v23 = 136315394;
          v24 = "figTimelineCoordinator_handleNewParticipantUUIDFromMediumOnQueue";
          v25 = 1024;
          v26 = v4;
          v9 = _os_log_send_and_compose_impl();
          LOBYTE(v6) = v22;
        }

        else
        {
          v9 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 0, 1, v9, v9 != v27, v6, 0, v7);
      }
    }
  }

  v11 = *(v3 + 344);
  v12 = a1[1];
  *(v3 + 344) = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v13 = figTimelineCoordinator_resetGroupExpectationsOnQueue(v3);
  if (v13)
  {
    v14 = v13;
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 0, &v22, &type);
    v16 = v22;
    if (os_log_type_enabled(v15, type))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v23 = 136315394;
      v24 = "figTimelineCoordinator_handleNewParticipantUUIDFromMediumOnQueue";
      v25 = 1024;
      v26 = v14;
      v19 = _os_log_send_and_compose_impl();
      LOBYTE(v16) = v22;
    }

    else
    {
      v19 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 0, 1, v19, v19 != v27, v16, 0, v17);
  }

  CFRelease(v3);
  v20 = a1[1];
  if (v20)
  {
    CFRelease(v20);
  }

  free(a1);
}

uint64_t FigTimelineCoordinatorReapplyGroupStateViaTimelineControl(dispatch_queue_t *a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x10200405F07FB98uLL);
  if (a1)
  {
    v3 = CFRetain(a1);
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  v2[8] = 1;
  dispatch_async_f(a1[11], v2, figTimelineCoordinator_reapplyExpectedTimelineDispatch);
  return 0;
}

void figTimelineCoordinator_reapplyExpectedTimelineDispatch(uint64_t a1)
{
  v2 = *a1;
  figTimelineCoordinator_reapplyExpectedTimelineOnQueue(*a1, *(a1 + 8), 2u);
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t FigTimelineCoordinatorHandleTransitionToNewTimelineFromTimelineControl(uint64_t a1, const void *a2, OpaqueCMTimebase *a3)
{
  cf = 0;
  if (!a2)
  {
    v10 = malloc_type_malloc(0x18uLL, 0x1020040A95220FAuLL);
    if (!a1)
    {
      v11 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v11 = CFRetain(a1);
LABEL_8:
    *v10 = v11;
    v9 = cf;
    if (cf)
    {
      v12 = CFRetain(cf);
    }

    else
    {
      v12 = 0;
    }

    v10[1] = v12;
    *(v10 + 16) = 0;
    dispatch_async_f(*(a1 + 88), v10, figTimelineCoordinator_switchToProposedTimelineWithNewIdentifierOnQueue);
    v8 = 0;
    v13 = 0;
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  FigSimpleMutexLock(*(a1 + 16));
  v6 = *(a1 + 24);
  *(a1 + 24) = v6 + 1;
  v7 = figTimelineCoordinatorTimelineStateCreateFromTimebase(*MEMORY[0x1E695E480], a2, a3, v6, &cf);
  if (!v7)
  {
    v10 = malloc_type_malloc(0x18uLL, 0x1020040A95220FAuLL);
    goto LABEL_7;
  }

  v8 = v7;
  v9 = cf;
LABEL_12:
  FigSimpleMutexUnlock(*(a1 + 16));
  v13 = v8;
LABEL_13:
  if (v9)
  {
    CFRelease(v9);
  }

  return v13;
}

uint64_t figTimelineCoordinatorTimelineStateCreateFromTimebase(uint64_t a1, const void *a2, CMTimebaseRef timebase, uint64_t a4, void *a5)
{
  v19 = 0;
  memset(&v18, 0, sizeof(v18));
  memset(&v17, 0, sizeof(v17));
  Rate = 0.0;
  if (a2)
  {
    if (timebase)
    {
      Rate = CMTimebaseGetRate(timebase);
      if (CMTimebaseGetEffectiveRate(timebase) == 0.0)
      {
        CMTimebaseGetTime(&v18, timebase);
      }

      else
      {
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&v17, HostTimeClock);
        v12 = CMClockGetHostTimeClock();
        time = v17;
        CMSyncConvertTime(&v18, &time, v12, timebase);
      }
    }

    else
    {
      *&v18.value = *&kCMTimeZero.value;
      v18.epoch = 0;
      memset(&v17, 0, sizeof(v17));
    }
  }

  time = v18;
  v15 = v17;
  Internal = figTimelineCoordinatorTimelineStateCreateInternal(0.0, Rate, a1, a2, &time, &v15, 0, 0, a4, 0xFFFFFFFFLL, 0, 1, &v19);
  if (Internal)
  {
    if (v19)
    {
      CFRelease(v19);
    }
  }

  else
  {
    *a5 = v19;
  }

  return Internal;
}

void figTimelineCoordinator_switchToProposedTimelineWithNewIdentifierOnQueue(uint64_t *a1)
{
  v1 = a1;
  v99 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[1];
  v87 = 0;
  v4 = *(v2 + 360);
  cf = 0;
  v84 = v4;
  if (v3)
  {
    v5 = *(v3 + 88);
  }

  else
  {
    v5 = 0;
  }

  v6 = &sVCCPreallocationSaveToSymlinkCString[720];
  if (dword_1EAF1CF08)
  {
    v89 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &v89, &type);
    v8 = v89;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v90 = 136315650;
      v91 = "figTimelineCoordinator_switchToProposedTimelineWithNewIdentifierOnQueue";
      v92 = 2112;
      v93 = v2;
      v94 = 2114;
      v95 = v5;
      v11 = _os_log_send_and_compose_impl();
      LOBYTE(v8) = v89;
    }

    else
    {
      v11 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v11, v11 != &context, v8, 0, v9);
  }

  v12 = FigCFEqual(v5, *(v2 + 352));
  v13 = *(v2 + 296);
  *(v2 + 296) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  *(v2 + 336) = 0;
  *(v2 + 360) = 0;
  v14 = *(v2 + 368);
  if (v14)
  {
    CFRelease(v14);
    *(v2 + 368) = 0;
  }

  v15 = *(v2 + 352);
  if (v15)
  {
    CFRelease(v15);
    *(v2 + 352) = 0;
  }

  figTimelineCoordinator_copyActiveSuspensionReasonsOnQueue(v2, &cf);
  if (figTimelineCoordinator_suspensionReasonsContainInternalSuspensionReasons(v2, cf))
  {
    if (dword_1EAF1CF08)
    {
      v89 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &v89, &type);
      v22 = v89;
      if (os_log_type_enabled(v21, type))
      {
        v24 = v22;
      }

      else
      {
        v24 = v22 & 0xFFFFFFFE;
      }

      if (v24)
      {
        v90 = 136315394;
        v91 = "figTimelineCoordinator_switchToProposedTimelineWithNewIdentifierOnQueue";
        v92 = 2112;
        v93 = v2;
        v25 = _os_log_send_and_compose_impl();
        LOBYTE(v22) = v89;
      }

      else
      {
        v25 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v25, v25 != &context, v22, 0, v23);
    }
  }

  else
  {
    v81 = v1;
    v78 = FigCFDictionaryCopyArrayOfKeys(*(v2 + 216));
    MutableCopy = FigCFArrayCreateMutableCopy(*MEMORY[0x1E695E480], v78);
    v56 = FigCFDictionaryCopyArrayOfValues(*(v2 + 328));
    figTimelineCoordinator_removeValueFromArray(MutableCopy, *(v2 + 352));
    v57 = 0;
    v80 = v56;
    do
    {
      if (v56)
      {
        Count = CFArrayGetCount(v56);
      }

      else
      {
        Count = 0;
      }

      if (v57 >= Count)
      {
        break;
      }

      v59 = v6;
      ValueAtIndex = CFArrayGetValueAtIndex(v56, v57);
      v61 = participantState_timelineIdentifier(ValueAtIndex[2]);
      if (figTimelineCoordinator_removeValueFromArray(MutableCopy, v61))
      {
        v62 = *(v59 + 962) == 0;
      }

      else
      {
        v62 = 1;
      }

      if (!v62)
      {
        v89 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &v89, &type);
        v64 = v89;
        if (os_log_type_enabled(v63, type))
        {
          v66 = v64;
        }

        else
        {
          v66 = v64 & 0xFFFFFFFE;
        }

        if (v66)
        {
          StateLoggingIdentifier = FigParticipantStateDictionaryGetStateLoggingIdentifier(ValueAtIndex[2]);
          v90 = 136315906;
          v91 = "figTimelineCoordinator_removeUnusedExpectations";
          v92 = 2112;
          v93 = v2;
          v94 = 2112;
          v95 = StateLoggingIdentifier;
          v96 = 2112;
          v97 = v61;
          v67 = _os_log_send_and_compose_impl();
          LOBYTE(v64) = v89;
        }

        else
        {
          v67 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v67, v67 != &context, v64, 0, v65);
      }

      v6 = sVCCPreallocationSaveToSymlinkCString + 720;
      v56 = v80;
      if (!MutableCopy)
      {
        break;
      }

      ++v57;
    }

    while (CFArrayGetCount(MutableCopy));
    v69 = 0;
    if (!MutableCopy)
    {
      goto LABEL_115;
    }

LABEL_114:
    for (i = CFArrayGetCount(MutableCopy); v69 < i; i = 0)
    {
      v71 = CFArrayGetValueAtIndex(MutableCopy, v69);
      CFDictionaryRemoveValue(*(v2 + 216), v71);
      if (*(v6 + 962))
      {
        v89 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &v89, &type);
        v73 = v89;
        if (os_log_type_enabled(v72, type))
        {
          v75 = v73;
        }

        else
        {
          v75 = v73 & 0xFFFFFFFE;
        }

        if (v75)
        {
          v90 = 136315650;
          v91 = "figTimelineCoordinator_removeUnusedExpectations";
          v92 = 2112;
          v93 = v2;
          v94 = 2112;
          v95 = v71;
          v76 = _os_log_send_and_compose_impl();
          LOBYTE(v73) = v89;
        }

        else
        {
          v76 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v76, v76 != &context, v73, 0, v74);
        v6 = sVCCPreallocationSaveToSymlinkCString + 720;
      }

      ++v69;
      if (MutableCopy)
      {
        goto LABEL_114;
      }

LABEL_115:
      ;
    }

    if (v78)
    {
      CFRelease(v78);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    v1 = v81;
    if (v80)
    {
      CFRelease(v80);
    }
  }

  v26 = *(v2 + 352);
  *(v2 + 352) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  v83 = v5;
  if (!v5 || (v27 = CFDictionaryGetValue(*(v2 + 216), v5)) == 0)
  {
    if (!v12)
    {
      *(v2 + 280) = *(v2 + 281) != 0;
      LODWORD(context.value) = 0;
      if (v5)
      {
        v40 = FigCFDictionaryCopyArrayOfValues(*(v2 + 328));
        if (v40)
        {
          figTimelineCoordinator_switchToProposedTimelineWithNewIdentifierOnQueue_cold_1(v40, v5, &context, v2);
        }
      }

      value = context.value;
      *(v2 + 456) = context.value;
      if (v3 && *(v3 + 32) != 0.0)
      {
        *(v2 + 456) = value + 1;
        FigCFDictionarySetInt32(*(v2 + 464), v5, value + 1, v16, v17, v18, v19, v20);
      }
    }

    v31 = v12;
    v36 = 1;
    *(v2 + 304) = 1;
    v87 = 1;
    if (v3)
    {
      v28 = 0;
      if (*(v3 + 32) != 0.0)
      {
        v32 = 0;
        v38 = 0;
        v39 = 1;
        v35 = 1;
        v37 = v3;
        v82 = 1;
        v34 = 1;
        if (*(v3 + 36) != 0.0)
        {
          goto LABEL_55;
        }

        goto LABEL_45;
      }

      v38 = 0;
      v37 = v3;
    }

    else
    {
      v28 = 0;
      v37 = 0;
      v38 = 0;
    }

    v82 = 1;
    v34 = 1;
    goto LABEL_55;
  }

  v28 = v27;
  *(v27 + 2) = *(v3 + 16);
  v29 = *(v27 + 9);
  v30 = *(v3 + 36);
  if (v29 == 0.0)
  {
    v29 = *(v27 + 8);
  }

  v31 = v12;
  if (v30 == 0.0)
  {
    v30 = *(v3 + 32);
  }

  v82 = v30 == v29;
  v32 = 1;
  *(v2 + 280) = 1;
  v33 = *(v27 + 25);
  *(v2 + 456) = v33;
  FigCFDictionarySetInt32(*(v2 + 464), *(v27 + 11), v33, v16, v17, v18, v19, v20);
  CMTimeMake(&context, 1, 10);
  v34 = figTimelineCoordinator_timelinesMatch(v3, v28, &context, &v87);
  v35 = 0;
  v36 = 0;
  *(v2 + 304) = v34;
  v37 = v28;
  v38 = 1;
  v39 = v84;
  if (v31)
  {
LABEL_45:
    *(v2 + 360) = v39;
    v36 = v35;
    v38 = v32;
  }

LABEL_55:
  if (*(v1 + 16))
  {
    *(v2 + 340) = 1;
  }

  if (v37)
  {
    v79 = v38;
    v85 = v34;
    v42 = CFArrayGetCount(*(v2 + 432));
    if (v42 >= 1 && dword_1EAF1CF08)
    {
      v89 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &v89, &type);
      v44 = v89;
      if (os_log_type_enabled(v43, type))
      {
        v46 = v44;
      }

      else
      {
        v46 = v44 & 0xFFFFFFFE;
      }

      if (v46)
      {
        v90 = 136315394;
        v91 = "figTimelineCoordinator_switchToProposedTimelineWithNewIdentifierOnQueue";
        v92 = 2112;
        v93 = v2;
        v47 = _os_log_send_and_compose_impl();
        LOBYTE(v44) = v89;
      }

      else
      {
        v47 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v47, v47 != &context, v44, 0, v45);
    }

    FigSimpleMutexLock(*(v2 + 184));
    v51 = *(v2 + 192);
    *(v2 + 192) = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    v52 = *(v2 + 200);
    *(v2 + 200) = v28;
    if ((v36 & 1) == 0)
    {
      CFRetain(v28);
    }

    if (v52)
    {
      CFRelease(v52);
    }

    v53 = *(v2 + 208);
    if (v53)
    {
      CFRelease(v53);
      *(v2 + 208) = 0;
    }

    FigSimpleMutexUnlock(*(v2 + 184));
    if (v42 <= 0)
    {
      figTimelineCoordinator_transitionToNewExpectedTimelineIssuingCommandsWhenAppropriateOnQueue(v2, v37, 6u, 1, v79, v87, v85, v82);
      if (v31)
      {
        goto LABEL_87;
      }
    }

    else if (v31)
    {
      goto LABEL_87;
    }

    goto LABEL_134;
  }

  FigSimpleMutexLock(*(v2 + 184));
  v48 = *(v2 + 200);
  if (v48)
  {
    CFRelease(v48);
    *(v2 + 200) = 0;
  }

  v49 = *(v2 + 192);
  if (v49)
  {
    CFRelease(v49);
    *(v2 + 192) = 0;
  }

  v50 = *(v2 + 208);
  if (v50)
  {
    CFRelease(v50);
    *(v2 + 208) = 0;
  }

  FigSimpleMutexUnlock(*(v2 + 184));
  if (!v31)
  {
LABEL_134:
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    context.value = v83;
    *&context.timescale = 0;
    CFDictionaryApplyFunction(*(v2 + 328), figTimelineCoordinator_updateParticipantsWithNewLocalIdentifierApply, &context);
    if (LOBYTE(context.timescale))
    {
      figTimelineCoordinator_postParticipantsDidChange(v2);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    figTimelineCoordinator_sendParticipantStateToGroupOnQueue(v2);
  }

LABEL_87:
  if (*v1)
  {
    CFRelease(*v1);
  }

  v54 = v1[1];
  if (v54)
  {
    CFRelease(v54);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  free(v1);
}

uint64_t FigTimelineCoordinatorHandleTransitionToNewTimelineFromTimelineControlProposingTimeAndPrerollRate(uint64_t a1, const void *a2, __int128 *a3, char a4, float a5)
{
  cf = 0;
  if (a2)
  {
    FigSimpleMutexLock(*(a1 + 16));
    v10 = *(a1 + 24);
    *(a1 + 24) = v10 + 1;
    v11 = *MEMORY[0x1E695E480];
    v12 = *(a1 + 344);
    v20 = *a3;
    v21 = *(a3 + 2);
    v18 = *&kCMTimeInvalid.value;
    v19 = 0;
    Internal = figTimelineCoordinatorTimelineStateCreateInternal(a5, 0.0, v11, a2, &v20, &v18, 0, v12, v10, 0xFFFFFFFFLL, 0, 1, &cf);
    v14 = malloc_type_malloc(0x18uLL, 0x1020040A95220FAuLL);
LABEL_4:
    v15 = CFRetain(a1);
    goto LABEL_5;
  }

  v14 = malloc_type_malloc(0x18uLL, 0x1020040A95220FAuLL);
  Internal = 0;
  if (a1)
  {
    goto LABEL_4;
  }

  v15 = 0;
LABEL_5:
  *v14 = v15;
  v16 = cf;
  if (cf)
  {
    v16 = CFRetain(cf);
  }

  v14[1] = v16;
  *(v14 + 16) = a4;
  dispatch_async_f(*(a1 + 88), v14, figTimelineCoordinator_switchToProposedTimelineWithNewIdentifierOnQueue);
  if (a2)
  {
    FigSimpleMutexUnlock(*(a1 + 16));
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return Internal;
}

uint64_t figTimelineCoordinatorTimelineStateCreateInternal(float a1, float a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8, uint64_t a9, CMBlockBufferRef *a10, char a11, char a12, uint64_t *a13)
{
  if (!a13)
  {
    figTimelineCoordinatorTimelineStateCreateInternal_cold_5(&v36, a4, a5, a6, a7, a8, a9, a10);
    return v36;
  }

  v13 = a10;
  v16 = a7;
  if (a4)
  {
    if (a2 == 0.0)
    {
      if (*(a6 + 12))
      {
        *a6 = *&kCMTimeInvalid.value;
        *(a6 + 16) = 0;
      }
    }

    else if (a12)
    {
      if ((*(a6 + 12) & 0x1D) != 1)
      {
        figTimelineCoordinatorTimelineStateCreateInternal_cold_1(&v36, a4, a5, a6, a7, a8, a9, a10);
        return v36;
      }

      if ((*(a5 + 12) & 0x1D) != 1)
      {
        figTimelineCoordinatorTimelineStateCreateInternal_cold_2(&v36, a4, a5, a6, a7, a8, a9, a10);
        return v36;
      }
    }
  }

  if (FigTimelineCoordinatorTimelineStateGetTypeID_sRegisterFigTimelineCoordinatorTimelineStateTypeOnce != -1)
  {
    FigTimelineCoordinatorTimelineStateGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    figTimelineCoordinatorTimelineStateCreateInternal_cold_4(&v36, v23, v24, v25, v26, v27, v28, v29);
    return v36;
  }

  v30 = Instance;
  *(Instance + 32) = a1;
  *(Instance + 36) = a2;
  v31 = *a5;
  *(Instance + 56) = *(a5 + 16);
  *(Instance + 40) = v31;
  v32 = *a6;
  *(Instance + 80) = *(a6 + 16);
  *(Instance + 64) = v32;
  if (a4)
  {
    v33 = CFRetain(a4);
  }

  else
  {
    v33 = 0;
  }

  *(v30 + 88) = v33;
  if (a8)
  {
    v34 = CFRetain(a8);
  }

  else
  {
    v34 = 0;
  }

  result = 0;
  *(v30 + 16) = a9;
  *(v30 + 24) = v34;
  *(v30 + 96) = v16;
  *(v30 + 100) = v13;
  *(v30 + 104) = a11;
  *a13 = v30;
  return result;
}

uint64_t FigTimelineCoordinatorSetReadinessHintFromTimelineControl(dispatch_queue_t *a1, int a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0x10200403A5D3213uLL);
  if (a1)
  {
    v5 = CFRetain(a1);
  }

  else
  {
    v5 = 0;
  }

  *v4 = v5;
  v4[2] = a2;
  dispatch_async_f(a1[11], v4, figTimelineCoordinator_setReadinessHintFromTimelineControlOnQueue);
  return 0;
}

void figTimelineCoordinator_setReadinessHintFromTimelineControlOnQueue(_DWORD *a1)
{
  v2 = *a1;
  v3 = a1[2];
  if (v2[84] != v3)
  {
    v2[84] = v3;
  }

  CFRelease(v2);

  free(a1);
}

uint64_t FigTimelineCoordinatorSetProperty(uint64_t a1, CFTypeRef cf1, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FigTimelineCoordinatorSetProperty_cold_6(&v73, cf1, a3, a4, a5, a6, a7, a8);
    return LODWORD(v73.value);
  }

  if (!cf1)
  {
    FigTimelineCoordinatorSetProperty_cold_5(&v73, 0, a3, a4, a5, a6, a7, a8);
    return LODWORD(v73.value);
  }

  if (!FigCFEqual(cf1, @"SuspensionWaitingPolicies"))
  {
    if (FigCFEqual(cf1, @"PauseSnapsToMediaTimeOfOriginator"))
    {
      if (a3)
      {
        v45 = CFGetTypeID(a3);
        if (v45 == CFBooleanGetTypeID())
        {
          v46 = *MEMORY[0x1E695E4D0] == a3;
          FigSimpleMutexLock(*(a1 + 392));
          *(a1 + 408) = v46;
          v47 = *(a1 + 392);
LABEL_21:
          FigSimpleMutexUnlock(v47);
          return 0;
        }
      }

      FigTimelineCoordinatorSetProperty_cold_3(&v73, v38, v39, v40, v41, v42, v43, v44);
    }

    else
    {
      if (FigCFEqual(cf1, @"InternalSuspensionReasons"))
      {
        FigCFArrayAppendArray(*(a1 + 448), a3);
        return 0;
      }

      if (!FigCFEqual(cf1, @"IsLocallyCoordinated"))
      {
        return 4294954512;
      }

      if (a3)
      {
        v56 = CFGetTypeID(a3);
        if (v56 == CFBooleanGetTypeID())
        {
          v57 = *MEMORY[0x1E695E4D0];
          v58 = *MEMORY[0x1E695E4D0] == a3;
          if (dword_1EAF1CF08)
          {
            v67[0] = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, v67, &type);
            v60 = v67[0];
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v62 = v60;
            }

            else
            {
              v62 = v60 & 0xFFFFFFFE;
            }

            if (v62)
            {
              v63 = "is NOT";
              v68 = "figTimelineCoordinator_setLocallyCoordinatedProperties";
              v67[1] = 136315650;
              if (v57 == a3)
              {
                v63 = "IS";
              }

              v69 = 2112;
              v70 = a1;
              v71 = 2080;
              v72 = v63;
              v64 = _os_log_send_and_compose_impl();
              LOBYTE(v60) = v67[0];
            }

            else
            {
              v64 = 0;
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v64, v64 != &v73, v60, 0, v61);
          }

          *(a1 + 544) = v58;
          FigSimpleMutexLock(*(a1 + 472));
          if (v57 == a3)
          {
            v65 = 10;
          }

          else
          {
            v65 = 1;
          }

          CMTimeMake(&v73, 1, v65);
          *(a1 + 480) = v73;
          v47 = *(a1 + 472);
          goto LABEL_21;
        }
      }

      FigTimelineCoordinatorSetProperty_cold_4(&v73, v49, v50, v51, v52, v53, v54, v55);
    }

    return LODWORD(v73.value);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Count = CFArrayGetCount(a3);
  if (Count < 1)
  {
LABEL_11:
    FigSimpleMutexLock(*(a1 + 392));
    v35 = *(a1 + 400);
    *(a1 + 400) = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    FigSimpleMutexUnlock(*(a1 + 392));
    v36 = malloc_type_malloc(0x10uLL, 0x10200405F07FB98uLL);
    *v36 = CFRetain(a1);
    v36[8] = 0;
    dispatch_async_f(*(a1 + 88), v36, figTimelineCoordinator_reapplyExpectedTimelineDispatch);
    value_low = 0;
    if (!Mutable)
    {
      return value_low;
    }

LABEL_16:
    CFRelease(Mutable);
    return value_low;
  }

  v13 = Count;
  v14 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a3, v14);
    if (!ValueAtIndex || (v23 = ValueAtIndex, v24 = CFGetTypeID(ValueAtIndex), v24 != CFDictionaryGetTypeID()))
    {
      FigTimelineCoordinatorSetProperty_cold_2(&v73, v16, v17, v18, v19, v20, v21, v22);
      goto LABEL_40;
    }

    Value = CFDictionaryGetValue(v23, @"SuspensionReason");
    if (!Value)
    {
      break;
    }

    v33 = Value;
    v34 = CFGetTypeID(Value);
    if (v34 != CFStringGetTypeID())
    {
      break;
    }

    CFDictionarySetValue(Mutable, v33, v23);
    if (v13 == ++v14)
    {
      goto LABEL_11;
    }
  }

  FigTimelineCoordinatorSetProperty_cold_1(&v73, v26, v27, v28, v29, v30, v31, v32);
LABEL_40:
  value_low = LODWORD(v73.value);
  if (Mutable)
  {
    goto LABEL_16;
  }

  return value_low;
}

size_t FigTimelineCoordinatorCopyProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3, CFArrayRef *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    FigTimelineCoordinatorCopyProperty_cold_3(&v24, cf1, a3, a4, a5, a6, a7, a8);
    return LODWORD(v24.value);
  }

  if (!cf1)
  {
    FigTimelineCoordinatorCopyProperty_cold_2(&v24, 0, a3, a4, a5, a6, a7, a8);
    return LODWORD(v24.value);
  }

  if (!a4)
  {
    FigTimelineCoordinatorCopyProperty_cold_1(&v24, cf1, a3, 0, a5, a6, a7, a8);
    return LODWORD(v24.value);
  }

  if (FigCFEqual(cf1, @"SuspensionWaitingPolicies"))
  {
    FigSimpleMutexLock(*(a1 + 392));
    *a4 = FigCFDictionaryCopyArrayOfValues(*(a1 + 400));
    v11 = *(a1 + 392);
LABEL_6:
    FigSimpleMutexUnlock(v11);
    return 0;
  }

  if (FigCFEqual(cf1, @"PauseSnapsToMediaTimeOfOriginator"))
  {
    FigSimpleMutexLock(*(a1 + 392));
    v13 = *(a1 + 408);
    FigSimpleMutexUnlock(*(a1 + 392));
    v12 = 0;
    v14 = MEMORY[0x1E695E4D0];
    if (!v13)
    {
      v14 = MEMORY[0x1E695E4C0];
    }

    *a4 = *v14;
  }

  else
  {
    if (!FigCFEqual(cf1, @"PreferredAudioClockDeviceUID"))
    {
      if (!FigCFEqual(cf1, @"NetworkToHostTimeOffset"))
      {
        return 4294954512;
      }

      FigSimpleMutexLock(*(a1 + 536));
      if ((*(a1 + 520) & 1) == 0)
      {
        figTimelineCoordinator_setNetworkToHostTimeOffset(a1);
      }

      v23 = *MEMORY[0x1E695E480];
      v24 = *(a1 + 508);
      *a4 = CMTimeCopyAsDictionary(&v24, v23);
      v11 = *(a1 + 536);
      goto LABEL_6;
    }

    FigSimpleMutexLock(*(a1 + 168));
    v21 = *(a1 + 176);
    if (v21)
    {
      v12 = CMTimeSyncCoPresenceNTPClockCopyDeviceIdentifier(v21, a4, v15, v16, v17, v18, v19, v20);
    }

    else
    {
      v12 = 4294954513;
    }

    FigSimpleMutexUnlock(*(a1 + 168));
  }

  return v12;
}

uint64_t figTimelineCoordinator_setNetworkToHostTimeOffset(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  memset(cf, 0, 32);
  FigSimpleMutexLock(*(a1 + 168));
  if (*(a1 + 176))
  {
    goto LABEL_8;
  }

  if (sFigTimelineCoordinatorSharedCoPresenceNTPClockInitOnce != -1)
  {
    figTimelineCoordinator_setNetworkToHostTimeOffset_cold_1();
  }

  FigSimpleMutexLock(sFigTimelineCoordinatorSharedCoPresenceNTPClock_1);
  cf[0] = FigCFWeakReferenceHolderCopyReferencedObject(sFigTimelineCoordinatorSharedCoPresenceNTPClock_0);
  if (cf[0])
  {
LABEL_5:
    FigSimpleMutexUnlock(sFigTimelineCoordinatorSharedCoPresenceNTPClock_1);
    v2 = cf[0];
    if (cf[0])
    {
      v2 = CFRetain(cf[0]);
    }

    *(a1 + 176) = v2;
LABEL_8:
    if (*(a1 + 544))
    {
      HostTimeForClockTime = 0;
      *(a1 + 508) = *&kCMTimeZero.value;
      *(a1 + 524) = 0;
      goto LABEL_27;
    }

    *&v24.value = *&kCMTimeZero.value;
    v24.epoch = 0;
    HostTimeForClockTime = CMTimeSyncCoPresenceNTPClockGetHostTimeForClockTime();
    if (!HostTimeForClockTime)
    {
      lhs = *&cf[1];
      *&rhs.value = *&kCMTimeZero.value;
      rhs.epoch = 0;
      CMTimeSubtract(&v24, &lhs, &rhs);
      *(a1 + 508) = v24;
      goto LABEL_27;
    }

    LODWORD(rhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 0, &rhs, &type);
    value = rhs.value;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v18 = value;
    }

    else
    {
      v18 = value & 0xFFFFFFFE;
    }

    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  v4 = CFGetAllocator(a1);
  v11 = CMTimeSyncCoPresenceNTPClockCreate(v4, cf, v5, v6, v7, v8, v9, v10);
  if (!v11)
  {
    if (sFigTimelineCoordinatorSharedCoPresenceNTPClock_0)
    {
      CFRelease(sFigTimelineCoordinatorSharedCoPresenceNTPClock_0);
    }

    sFigTimelineCoordinatorSharedCoPresenceNTPClock_0 = FigCFWeakReferenceHolderCreateWithReferencedObject(cf[0]);
    goto LABEL_5;
  }

  HostTimeForClockTime = v11;
  FigSimpleMutexUnlock(sFigTimelineCoordinatorSharedCoPresenceNTPClock_1);
  LODWORD(rhs.value) = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 0, &rhs, &type);
  value = rhs.value;
  if (os_log_type_enabled(v12, type))
  {
    v15 = value;
  }

  else
  {
    v15 = value & 0xFFFFFFFE;
  }

  if (!v15)
  {
LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

LABEL_17:
  LODWORD(lhs.value) = 136315394;
  *(&lhs.value + 4) = "figTimelineCoordinator_setNetworkToHostTimeOffset";
  LOWORD(lhs.flags) = 1024;
  *(&lhs.flags + 2) = HostTimeForClockTime;
  v16 = _os_log_send_and_compose_impl();
  LOBYTE(value) = rhs.value;
LABEL_26:
  fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 0, 1, v16, v16 != &v24, value, 0, v14);
LABEL_27:
  FigSimpleMutexUnlock(*(a1 + 168));
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return HostTimeForClockTime;
}

uint64_t FigTimelineCoordinatorCreate(const __CFAllocator *a1, uint64_t a2, void *a3, NSObject *a4, const __CFDictionary *a5, uint64_t a6)
{
  v182 = *MEMORY[0x1E69E9840];
  HIBYTE(v178) = 0;
  cf = 0;
  v11 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigTimelineCoordinatorTrace[1], @"timelinecoordinator_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v11, 0, gFigTimelineCoordinatorTrace);
  fig_note_initialize_category_with_default_work_cf(&dword_1EAF1CF08, @"timelinecoordinator_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CF00);
  if (FigTimelineCoordinatorGetTypeID_sRegisterFigTimelineCoordinatorTypeOnce != -1)
  {
    FigTimelineCoordinatorGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigTimelineCoordinatorCreate_cold_23(0, v13, v14, v15, v16, v17, v18, v19);
    return 0;
  }

  v20 = Instance;
  if (*a3)
  {
    FigTimelineCoordinatorCreate_cold_2(Instance, v13, v14, v15, v16, v17, v18, v19);
    goto LABEL_42;
  }

  if (!a3[1])
  {
    FigTimelineCoordinatorCreate_cold_22(Instance, v13, v14, v15, v16, v17, v18, v19);
LABEL_42:
    CFRelease(v20);
    return 0;
  }

  if (!a3[4])
  {
    FigTimelineCoordinatorCreate_cold_21(Instance, v13, v14, v15, v16, v17, v18, v19);
    goto LABEL_42;
  }

  if (!a3[2])
  {
    FigTimelineCoordinatorCreate_cold_20(Instance, v13, v14, v15, v16, v17, v18, v19);
    goto LABEL_42;
  }

  if (!a3[3])
  {
    FigTimelineCoordinatorCreate_cold_19(Instance, v13, v14, v15, v16, v17, v18, v19);
    goto LABEL_42;
  }

  if (!a2)
  {
    FigTimelineCoordinatorCreate_cold_18(Instance, v13, v14, v15, v16, v17, v18, v19);
    goto LABEL_42;
  }

  if (!a4)
  {
    FigTimelineCoordinatorCreate_cold_17(Instance, v13, v14, v15, v16, v17, v18, v19);
    goto LABEL_42;
  }

  *(Instance + 104) = 1;
  FigCFDictionaryGetBooleanIfPresent(a5, @"OnlySendFullyDefinedCommands", Instance + 104, v15, v16, v17, v18, v19, v163, v167, a6, v176, cf, v178, *v179, *&v179[8], *&v179[16], v180);
  FigCFDictionaryGetBooleanIfPresent(a5, @"SkipEndSuspensionCommandsWhenAlone", v20 + 440, v21, v22, v23, v24, v25, v164, v168, v172, v176, cf, v178, *v179, *&v179[8], *&v179[16], v180);
  FigCFDictionaryGetBooleanIfPresent(a5, @"IsInterstitialTimelineCoordinator", v20 + 504, v26, v27, v28, v29, v30, v165, v169, v173, v176, cf, v178, *v179, *&v179[8], *&v179[16], v180);
  FigCFDictionaryGetValueIfPresent(a5, @"InitialLamportTimestamps", &cf);
  FigCFDictionaryGetBooleanIfPresent(a5, @"ShouldOverrideGroupState", &v178 + 7, v31, v32, v33, v34, v35, v166, v170, v174, v176, cf, v178, *v179, *&v179[8], *&v179[16], v180);
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(v20 + 216) = Mutable;
  if (!Mutable)
  {
    FigTimelineCoordinatorCreate_cold_16(0, v37, v38, v39, v40, v41, v42, v43);
    goto LABEL_42;
  }

  v44 = FigSimpleMutexCreate();
  *(v20 + 184) = v44;
  if (!v44)
  {
    FigTimelineCoordinatorCreate_cold_15(0, v45, v46, v47, v48, v49, v50, v51);
    goto LABEL_42;
  }

  v52 = *MEMORY[0x1E695E480];
  v53 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(v20 + 328) = v53;
  if (!v53)
  {
    FigTimelineCoordinatorCreate_cold_14(0, v54, v55, v56, v57, v58, v59, v60);
    goto LABEL_42;
  }

  v61 = FigSimpleMutexCreate();
  *(v20 + 320) = v61;
  if (!v61)
  {
    FigTimelineCoordinatorCreate_cold_13(0, v62, v63, v64, v65, v66, v67, v68);
    goto LABEL_42;
  }

  v69 = CFArrayCreateMutable(v52, 0, MEMORY[0x1E695E9C0]);
  *(v20 + 424) = v69;
  if (!v69)
  {
    FigTimelineCoordinatorCreate_cold_12(0, v70, v71, v72, v73, v74, v75, v76);
    goto LABEL_42;
  }

  v77 = CFArrayCreateMutable(v52, 0, MEMORY[0x1E695E9C0]);
  *(v20 + 432) = v77;
  if (!v77)
  {
    FigTimelineCoordinatorCreate_cold_11(0, v78, v79, v80, v81, v82, v83, v84);
    goto LABEL_42;
  }

  v85 = CFArrayCreateMutable(v52, 0, MEMORY[0x1E695E9C0]);
  *(v20 + 448) = v85;
  if (!v85)
  {
    FigTimelineCoordinatorCreate_cold_10(0, v86, v87, v88, v89, v90, v91, v92);
    goto LABEL_42;
  }

  v93 = FigSimpleMutexCreate();
  *(v20 + 416) = v93;
  if (!v93)
  {
    FigTimelineCoordinatorCreate_cold_9(0, v94, v95, v96, v97, v98, v99, v100);
    goto LABEL_42;
  }

  v101 = FigSimpleMutexCreate();
  *(v20 + 16) = v101;
  if (!v101)
  {
    FigTimelineCoordinatorCreate_cold_8(0, v102, v103, v104, v105, v106, v107, v108);
    goto LABEL_42;
  }

  v109 = FigSimpleMutexCreate();
  *(v20 + 392) = v109;
  if (!v109)
  {
    FigTimelineCoordinatorCreate_cold_7(0, v110, v111, v112, v113, v114, v115, v116);
    goto LABEL_42;
  }

  v117 = FigSimpleMutexCreate();
  *(v20 + 168) = v117;
  if (!v117)
  {
    FigTimelineCoordinatorCreate_cold_6(0, v118, v119, v120, v121, v122, v123, v124);
    goto LABEL_42;
  }

  v125 = FigSimpleMutexCreate();
  *(v20 + 536) = v125;
  if (!v125)
  {
    FigTimelineCoordinatorCreate_cold_5(0, v126, v127, v128, v129, v130, v131, v132);
    goto LABEL_42;
  }

  *(v20 + 24) = 1;
  *(v20 + 456) = 0;
  if (cf && (v133 = CFGetTypeID(cf), v133 == CFDictionaryGetTypeID()))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, cf);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  *(v20 + 464) = MutableCopy;
  if (!MutableCopy)
  {
    FigTimelineCoordinatorCreate_cold_4(0, v135, v136, v137, v138, v139, v140, v141);
    goto LABEL_42;
  }

  v142 = FigSimpleMutexCreate();
  *(v20 + 472) = v142;
  if (!v142)
  {
    FigTimelineCoordinatorCreate_cold_3(0, v143, v144, v145, v146, v147, v148, v149);
    goto LABEL_42;
  }

  CMTimeMake(&v181, 1, 1);
  *(v20 + 480) = v181;
  *(v20 + 281) = HIBYTE(v178);
  *(v20 + 544) = 0;
  v150 = FigCFWeakReferenceHolderCreateWithReferencedObject(v20);
  v151 = MEMORY[0x1E69E9710];
  v152 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a4);
  *(v20 + 376) = v152;
  dispatch_source_set_timer(v152, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  dispatch_set_context(*(v20 + 376), v150);
  dispatch_source_set_event_handler_f(*(v20 + 376), figTimelineCoordinator_didFireAdvanceToNextCommandSource);
  dispatch_source_set_cancel_handler_f(*(v20 + 376), figTimelineCoordinator_cancelAdvanceToNextCommandSource);
  dispatch_resume(*(v20 + 376));
  v153 = dispatch_source_create(v151, 0, 0, a4);
  *(v20 + 112) = v153;
  dispatch_source_set_timer(v153, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  dispatch_source_set_event_handler_f(*(v20 + 112), figTimelineCoordinator_handleMissedControlCallbackCompletionOnQueue);
  dispatch_source_set_cancel_handler_f(*(v20 + 112), figTimelineCoordinator_cancelTimelineControlCommandCompletionTimer);
  v154 = *(v20 + 112);
  v155 = FigCFWeakReferenceHolderCreateWithReferencedObject(v20);
  dispatch_set_context(v154, v155);
  dispatch_resume(*(v20 + 112));
  __copy_assignment_8_8_t0w8_pa0_17997_8_pa0_38372_16_pa0_19900_24_pa0_16123_32_pa0_58861_40((v20 + 32), a3);
  *(v20 + 88) = a4;
  dispatch_retain(a4);
  *(v20 + 80) = FigCFWeakReferenceHolderCreateWithReferencedObject(a2);
  if (dword_1EAF1CF08)
  {
    HIDWORD(v176) = 0;
    BYTE3(v176) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &v176 + 1, &v176 + 3);
    v157 = HIDWORD(v176);
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v176)))
    {
      v159 = v157;
    }

    else
    {
      v159 = v157 & 0xFFFFFFFE;
    }

    if (v159)
    {
      v160 = *(v20 + 504);
      *v179 = 136315650;
      *&v179[4] = "FigTimelineCoordinatorCreate";
      *&v179[12] = 2048;
      *&v179[14] = v20;
      *&v179[22] = 1024;
      LODWORD(v180) = v160;
      v161 = _os_log_send_and_compose_impl();
      LOBYTE(v157) = BYTE4(v176);
    }

    else
    {
      v161 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v161, v161 != &v181, v157, 0, v158);
  }

  *v175 = v20;
  return 0;
}

void figTimelineCoordinator_cancelAdvanceToNextCommandSource(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void figTimelineCoordinator_cancelTimelineControlCommandCompletionTimer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void *__copy_assignment_8_8_t0w8_pa0_17997_8_pa0_38372_16_pa0_19900_24_pa0_16123_32_pa0_58861_40(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  return result;
}

uint64_t FigXPCMessageSetTimelineCoordinatorSuspension(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a3)
  {
    v10 = *(a3 + 16);

    return FigXPCMessageSetCFString(a1, a2, v10);
  }

  else
  {
    v13 = v8;
    v14 = v9;
    FigXPCMessageSetTimelineCoordinatorSuspension_cold_1(&v12, a2, a3, a4, a5, a6, a7, a8);
    return v12;
  }
}

uint64_t FigXPCMessageCopyTimelineCoordinatorSuspension(void *a1, const char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  cf = 0;
  if (!a3)
  {
    FigXPCMessageCopyTimelineCoordinatorSuspension_cold_1(&v19, a2, 0, a4, a5, a6, a7, a8);
    return v19;
  }

  v9 = FigXPCMessageCopyCFString(a1, a2, &cf);
  v15 = cf;
  if (v9)
  {
    v16 = v9;
    if (!cf)
    {
      return v16;
    }

    goto LABEL_4;
  }

  v16 = FigTimelineCoordinatorSuspensionCreate(*MEMORY[0x1E695E480], cf, a3, v10, v11, v12, v13, v14);
  v15 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v15);
  }

  return v16;
}

uint64_t FigXPCMessageSetTimelineCoordinatorParticipantSnapshot(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a3)
  {
    XPCDictionaryFromParticipantSnapshot = createXPCDictionaryFromParticipantSnapshot(a3);
    xpc_dictionary_set_value(a1, a2, XPCDictionaryFromParticipantSnapshot);
    v11 = 0;
  }

  else
  {
    FigXPCMessageSetTimelineCoordinatorParticipantSnapshot_cold_1(&v13, a2, 0, a4, a5, a6, a7, a8);
    XPCDictionaryFromParticipantSnapshot = 0;
    v11 = v13;
  }

  FigXPCRelease(XPCDictionaryFromParticipantSnapshot);
  return v11;
}

xpc_object_t createXPCDictionaryFromParticipantSnapshot(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (*(a1 + 24))
  {
    v3 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v2, "LocalTimeline", v3);
    FigXPCRelease(v3);
  }

  v4 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_value(v2, "SourceState", v4);
  FigXPCRelease(v4);
  return v2;
}

size_t FigXPCMessageCopyTimelineCoordinatorParticipantSnapshot(void *a1, const char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a3)
  {
    value = xpc_dictionary_get_value(a1, a2);

    return figTimelineCoordinatorParticipantCreateFromXPCDictionary(value, a3);
  }

  else
  {
    FigXPCMessageCopyTimelineCoordinatorParticipantSnapshot_cold_1(&v11, a2, 0, a4, a5, a6, a7, a8);
    return v11;
  }
}

size_t figTimelineCoordinatorParticipantCreateFromXPCDictionary(void *a1, uint64_t *a2)
{
  value = xpc_dictionary_get_value(a1, "LocalTimeline");
  v5 = xpc_dictionary_get_value(a1, "SourceState");
  if (value)
  {
    value = _CFXPCCreateCFObjectFromXPCObject();
  }

  if (v5)
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
  }

  v6 = figTimelineCoordinatorParticipantCreateFromDictionary(*MEMORY[0x1E695E480], v5, value, a2);
  if (value)
  {
    CFRelease(value);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t FigXPCMessageSetTimelineCoordinatorParticipantSnapshots(void *a1, const char *a2, const __CFArray *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a3)
  {
    v11 = xpc_array_create(0, 0);
    if (CFArrayGetCount(a3) < 1)
    {
LABEL_9:
      xpc_dictionary_set_value(a1, a2, v11);
      v24 = 0;
    }

    else
    {
      v12 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v12);
        if (!ValueAtIndex)
        {
          break;
        }

        v21 = ValueAtIndex;
        v22 = CFGetTypeID(ValueAtIndex);
        if (_MergedGlobals_55 != -1)
        {
          FigTimelineCoordinationParticipantSnapshotGetTypeID_cold_1();
        }

        if (v22 != qword_1ED4CCDF0)
        {
          break;
        }

        XPCDictionaryFromParticipantSnapshot = createXPCDictionaryFromParticipantSnapshot(v21);
        xpc_array_append_value(v11, XPCDictionaryFromParticipantSnapshot);
        xpc_release(XPCDictionaryFromParticipantSnapshot);
        if (++v12 >= CFArrayGetCount(a3))
        {
          goto LABEL_9;
        }
      }

      FigXPCMessageSetTimelineCoordinatorParticipantSnapshots_cold_2(&v26, v14, v15, v16, v17, v18, v19, v20);
      v24 = v26;
    }
  }

  else
  {
    FigXPCMessageSetTimelineCoordinatorParticipantSnapshots_cold_3(&v27, a2, 0, a4, a5, a6, a7, a8);
    v11 = 0;
    v24 = v27;
  }

  FigXPCRelease(v11);
  return v24;
}

size_t FigXPCMessageCopyTimelineCoordinatorParticipantSnapshots(void *a1, const char *a2, __CFArray **a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a3)
  {
    FigXPCMessageCopyTimelineCoordinatorParticipantSnapshots_cold_3(&value, a2, 0, a4, a5, a6, a7, a8);
    return value;
  }

  array = xpc_dictionary_get_array(a1, a2);
  if (!array)
  {
    FigXPCMessageCopyTimelineCoordinatorParticipantSnapshots_cold_2(&value, v10, v11, v12, v13, v14, v15, v16);
    return value;
  }

  v17 = array;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (xpc_array_get_count(v17))
  {
    v19 = 0;
    while (1)
    {
      value = 0;
      dictionary = xpc_array_get_dictionary(v17, v19);
      if (!dictionary)
      {
        FigXPCMessageCopyTimelineCoordinatorParticipantSnapshots_cold_1(&v32, v21, v22, v23, v24, v25, v26, v27);
        v29 = v32;
        goto LABEL_14;
      }

      v28 = figTimelineCoordinatorParticipantCreateFromXPCDictionary(dictionary, &value);
      if (v28)
      {
        break;
      }

      CFArrayAppendValue(Mutable, value);
      if (value)
      {
        CFRelease(value);
      }

      if (++v19 >= xpc_array_get_count(v17))
      {
        goto LABEL_10;
      }
    }

    v29 = v28;
LABEL_14:
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
LABEL_10:
    v29 = 0;
    *a3 = Mutable;
  }

  return v29;
}

size_t FigTimelineCoordinator_Finalize(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 296) = 0;
  }

  v3 = *(a1 + 200);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 200) = 0;
  }

  v4 = *(a1 + 192);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 192) = 0;
  }

  v5 = *(a1 + 216);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 216) = 0;
  }

  FigSimpleMutexDestroy(*(a1 + 184));
  *(a1 + 184) = 0;
  v6 = *(a1 + 88);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 328);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 328) = 0;
  }

  FigSimpleMutexDestroy(*(a1 + 320));
  *(a1 + 320) = 0;
  v8 = *(a1 + 272);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 272) = 0;
  }

  v9 = *(a1 + 288);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 288) = 0;
  }

  v10 = *(a1 + 344);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 344) = 0;
  }

  v11 = *(a1 + 352);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 352) = 0;
  }

  v12 = *(a1 + 368);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 368) = 0;
  }

  dispatch_source_cancel(*(a1 + 376));
  v13 = *(a1 + 376);
  if (v13)
  {
    dispatch_release(v13);
    *(a1 + 376) = 0;
  }

  dispatch_source_cancel(*(a1 + 112));
  v14 = *(a1 + 112);
  if (v14)
  {
    dispatch_release(v14);
    *(a1 + 112) = 0;
  }

  v15 = *(a1 + 80);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 80) = 0;
  }

  v16 = *(a1 + 160);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 160) = 0;
  }

  v17 = *(a1 + 176);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 176) = 0;
  }

  v18 = *(a1 + 224);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 224) = 0;
  }

  v19 = *(a1 + 464);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 464) = 0;
  }

  v20 = *(a1 + 424);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 424) = 0;
  }

  v21 = *(a1 + 432);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 432) = 0;
  }

  v22 = *(a1 + 448);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 448) = 0;
  }

  FigSimpleMutexDestroy(*(a1 + 416));
  *(a1 + 416) = 0;
  v23 = *(a1 + 400);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 400) = 0;
  }

  FigSimpleMutexDestroy(*(a1 + 392));
  *(a1 + 392) = 0;
  FigSimpleMutexDestroy(*(a1 + 168));
  *(a1 + 168) = 0;
  FigSimpleMutexDestroy(*(a1 + 16));
  *(a1 + 16) = 0;
  FigSimpleMutexDestroy(*(a1 + 536));
  *(a1 + 536) = 0;
  result = FigSimpleMutexDestroy(*(a1 + 472));
  *(a1 + 472) = 0;
  return result;
}

__CFString *FigTimelineCoordinator_CopyDescription(unsigned __int8 *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigTimelineCoordinator %p, Type %d>", a1, a1[504]);
  return Mutable;
}

void FigTimelineCoordinatorSuspension_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

__CFString *FigTimelineCoordinatorSuspension_CopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigTimelineCoordinatorSuspension %p, Reason %@>", a1, a1[2]);
  return Mutable;
}

double FigTimelineCoordinatorTimelineState_Init(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void FigTimelineCoordinatorTimelineState_Finalize(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    CFRelease(v2);
    a1[11] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[14];
  if (v4)
  {
    CFRelease(v4);
    a1[14] = 0;
  }
}

__CFString *FigTimelineCoordinatorTimelineState_CopyFormattingDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = Mutable;
  if (*(a1 + 112))
  {
    CFStringAppendFormat(Mutable, 0, @"[%@] ", *(a1 + 112));
  }

  else
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = CFUUIDCreateString(*MEMORY[0x1E695E480], v11);
      OriginatorLoggingIdentifier = figTimelineCoordinator_createOriginatorLoggingIdentifier(v12);
      CFStringAppendFormat(v4, 0, @"[%@] ", OriginatorLoggingIdentifier);
      if (v12)
      {
        CFRelease(v12);
      }

      if (OriginatorLoggingIdentifier)
      {
        CFRelease(OriginatorLoggingIdentifier);
      }
    }
  }

  CFStringAppendFormat(v4, 0, @"pr: %g r:%g", *(a1 + 32), *(a1 + 36));
  if (*(a1 + 52))
  {
    time = *(a1 + 40);
    Seconds = CMTimeGetSeconds(&time);
    CFStringAppendFormat(v4, 0, @" t:%.3f", *&Seconds);
  }

  else
  {
    CFStringAppend(v4, @" t:<INV>");
  }

  if (*(a1 + 76))
  {
    memset(&time, 0, sizeof(time));
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&time, HostTimeClock);
    lhs = *(a1 + 64);
    rhs = time;
    CMTimeSubtract(&v16, &lhs, &rhs);
    v7 = CMTimeGetSeconds(&v16);
    v16 = *(a1 + 64);
    v8 = CMTimeGetSeconds(&v16);
    CFStringAppendFormat(v4, 0, @" ht:<NOW>%+.3f (%.3f)", *&v7, *&v8);
  }

  else
  {
    CFStringAppend(v4, @" ht:<INV>");
  }

  v9 = "<A>";
  if (!*(a1 + 96))
  {
    v9 = "<E>";
  }

  CFStringAppendFormat(v4, 0, @" sp:%s id: [%@]", v9, *(a1 + 88));
  return v4;
}

__CFString *figTimelineCoordinator_createOriginatorLoggingIdentifier(const void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = CFHash(a1);
  CFStringAppendFormat(Mutable, 0, @"%c%c%c%c", (v3 % 0x1A) + 65, (v3 / 0x1A) - 26 * ((v3 / 0x1A * 0x9D89D89D89D89D9uLL) >> 64) + 65, (v3 / 0x2A4) - 26 * ((v3 / 0x2A4 * 0x9D89D89D89D89D9uLL) >> 64) + 65, (v3 / 0x44A8) - 26 * ((v3 / 0x44A8 * 0x9D89D89D89D89D9uLL) >> 64) + 65);
  return Mutable;
}

double FigTimelineCoordinationParticipantSnapshot_Init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void FigTimelineCoordinationParticipantSnapshot_Finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
    a1[5] = 0;
  }
}

CFHashCode FigTimelineCoordinationParticipantSnapshot_Hash(uint64_t a1)
{
  v2 = FigTimelineCoordinationParticipantSnapshotCopySuspensionReasons(a1);
  v3 = CFHash(v2);
  v4 = CFHash(*(a1 + 32));
  IsReadyToSetNonZeroRate = FigTimelineCoordinationParticipantSnapshotIsReadyToSetNonZeroRate(a1, v5);
  if (v2)
  {
    CFRelease(v2);
  }

  return v4 | v3 | IsReadyToSetNonZeroRate;
}

__CFString *FigTimelineCoordinationParticipantSnapshot_CopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigTimelineCoordinationParticipantSnapshot %p>", a1);
  return Mutable;
}

BOOL figTimelineCoordinator_newTimelineStateShouldOverrideExistingState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 1;
  }

  if (*(a3 + 104) || FigCFEqual(*(a1 + 272), *(a3 + 88)))
  {
    return 1;
  }

  v7 = *(a2 + 100);
  v8 = *(a3 + 100);
  if (v7 > v8)
  {
    return 0;
  }

  if (v7 < v8)
  {
    return 1;
  }

  v9 = figTimelineCoordinator_compareUUIDs(*(a2 + 24), *(a3 + 24));
  if (v9 == 1)
  {
    return 0;
  }

  if (v9)
  {
    return 1;
  }

  return FigCFEqual(*(a3 + 24), *(a1 + 344)) != 0;
}

uint64_t figTimelineCoordinator_timelinesMatch(uint64_t a1, uint64_t a2, CMTime *a3, BOOL *a4)
{
  v4 = 0;
  memset(&v19, 0, sizeof(v19));
  memset(&v18, 0, sizeof(v18));
  if (!a1 || !a2)
  {
    return v4;
  }

  if (!FigCFEqual(*(a1 + 88), *(a2 + 88)))
  {
    if (a4)
    {
      v4 = 0;
      *a4 = 0;
      return v4;
    }

    return 0;
  }

  v9 = *(a1 + 88);
  if (v9)
  {
    LOBYTE(v9) = (*(a1 + 36) == 0.0 || (*(a1 + 76) & 0x1D) == 1) && (*(a1 + 52) & 0x1D) == 1;
  }

  if (*(a2 + 88) && (*(a2 + 36) == 0.0 || (*(a2 + 76) & 0x1D) == 1))
  {
    LOBYTE(v9) = v9 ^ ((*(a2 + 52) & 0x1D) == 1);
  }

  if (v9)
  {
    return 0;
  }

  figTimelineCoordinator_timelineTimeAtHostTime(a1, &v19);
  figTimelineCoordinator_timelineTimeAtHostTime(a2, &v18);
  v17 = v19;
  v16 = v18;
  v15 = *a3;
  IsWithinTolerance = CMTimeDifferenceIsWithinTolerance(&v17, &v16, &v15);
  if (a4)
  {
    *a4 = IsWithinTolerance;
  }

  v12 = *(a1 + 36);
  v13 = *(a2 + 36);
  if (v12 == 0.0 && v12 == v13 && *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  return IsWithinTolerance && v12 == v13;
}

uint64_t figTimelineCoordinator_compareUUIDs(CFUUIDRef uuid, const __CFUUID *a2)
{
  if (uuid | a2)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  if (uuid)
  {
    result = 1;
  }

  else
  {
    result = v3;
  }

  if (uuid)
  {
    if (a2)
    {
      uu1 = CFUUIDGetUUIDBytes(uuid);
      v6 = CFUUIDGetUUIDBytes(a2);
      return uuid_compare(&uu1.byte0, &v6.byte0);
    }
  }

  return result;
}

BOOL CMTimeDifferenceIsWithinTolerance(CMTime *a1, CMTime *a2, CMTime *a3)
{
  lhs = *a1;
  v5 = *a2;
  CMTimeSubtract(&time, &lhs, &v5);
  CMTimeAbsoluteValue(&lhs, &time);
  time = *a3;
  return CMTimeCompare(&lhs, &time) < 1;
}

uint64_t figTimelineCoordinator_copyActiveSuspensionReasonsOnQueue(uint64_t a1, const __CFArray **a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v12 = Mutable;
    Count = CFArrayGetCount(*(a1 + 432));
    if (Count >= 1)
    {
      v14 = Count;
      for (i = 0; i != v14; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 432), i);
        v19.length = CFArrayGetCount(v12);
        v19.location = 0;
        if (CFArrayGetFirstIndexOfValue(v12, v19, ValueAtIndex[2]) == -1)
        {
          CFArrayAppendValue(v12, ValueAtIndex[2]);
        }
      }
    }

    result = 0;
    if (a2)
    {
      *a2 = v12;
    }
  }

  else
  {
    figTimelineCoordinator_copyActiveSuspensionReasonsOnQueue_cold_1(&v18, v5, v6, v7, v8, v9, v10, v11);
    return v18;
  }

  return result;
}

uint64_t figTimelineCoordinator_suspensionReasonsContainInternalSuspensionReasons(uint64_t a1, CFArrayRef theArray)
{
  v4 = 0;
  while (1)
  {
    v5 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v4 >= v5)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4++);
    if (FigCFArrayContainsValue(*(a1 + 448), ValueAtIndex))
    {
      return 1;
    }
  }

  return 0;
}

__CFString *figTimelineCoordinator_createStateLoggingIdentifier(uint64_t a1, const void *a2, uint64_t a3)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  OriginatorLoggingIdentifier = figTimelineCoordinator_createOriginatorLoggingIdentifier(a2);
  CFStringAppendFormat(Mutable, 0, @"%@%@-%d", a1, OriginatorLoggingIdentifier, a3);
  if (OriginatorLoggingIdentifier)
  {
    CFRelease(OriginatorLoggingIdentifier);
  }

  return Mutable;
}

uint64_t figTimelineCoordinatorTimelineStateCopy(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v20 = 0;
  if (a3)
  {
    v9 = *(a2 + 32);
    v10 = *(a2 + 36);
    v11 = *(a2 + 96);
    v12 = *(a2 + 16);
    v18 = *(a2 + 40);
    v19 = *(a2 + 56);
    v16 = *(a2 + 64);
    v13 = *(a2 + 88);
    v17 = *(a2 + 80);
    Internal = figTimelineCoordinatorTimelineStateCreateInternal(v9, v10, a1, v13, &v18, &v16, v11, 0, v12, 0xFFFFFFFFLL, 0, 0, &v20);
    if (Internal)
    {
      if (v20)
      {
        CFRelease(v20);
      }
    }

    else
    {
      *a3 = v20;
    }
  }

  else
  {
    figTimelineCoordinatorTimelineStateCopy_cold_1(&v18, a2, 0, a4, a5, a6, a7, a8);
    return v18;
  }

  return Internal;
}

BOOL figTimelineCoordinator_timelineControlMustPrepareForCoordinatedStart(uint64_t a1)
{
  if (*(a1 + 340))
  {
    return 0;
  }

  if (figTimelineCoordinator_havePassedReadinessDeadline(a1))
  {
    return 0;
  }

  if (CFArrayGetCount(*(a1 + 432)) < 1)
  {
    return 1;
  }

  return *(a1 + 259) != 0;
}

uint64_t figTimelineCoordinator_isReadyToPickAnchorTimeForInProgressOnQueue(uint64_t a1)
{
  Count = FigCFDictionaryGetCount(*(a1 + 328));
  if (!*(a1 + 264))
  {
    return 1;
  }

  v3 = Count;
  if (figTimelineCoordinator_anyParticipantIsSuspendedWithOnlyReasonsThatTriggerWaiting(a1) || !figTimelineCoordinator_havePassedReadinessDeadline(a1))
  {
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    isResponsibleForPickingAnchorTimeDuringCoordinatedStart = figTimelineCoordinator_isResponsibleForPickingAnchorTimeDuringCoordinatedStart(a1);
    result = isResponsibleForPickingAnchorTimeDuringCoordinatedStart != 0;
    if (isResponsibleForPickingAnchorTimeDuringCoordinatedStart || !v3)
    {
      return result;
    }
  }

  if (!*(a1 + 263))
  {
    return 0;
  }

  return figTimelineCoordinator_isReadyToPickAnchorTimeOnQueue(a1);
}

CMTime *figTimelineCoordinator_pickHostTimeForCoordinatedStart@<X0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  if (FigCFDictionaryGetCount(*(a1 + 328)) && !*(a1 + 259))
  {
    FigSimpleMutexLock(*(a1 + 472));
    v11 = *(a1 + 480);
    FigSimpleMutexUnlock(*(a1 + 472));
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&lhs, HostTimeClock);
    v9 = v11;
    p_lhs = &lhs;
    v6 = &v9;
  }

  else
  {
    v4 = CMClockGetHostTimeClock();
    CMClockGetTime(&v11, v4);
    CMTimeMake(&lhs, 1, 10);
    p_lhs = &v11;
    v6 = &lhs;
  }

  return CMTimeAdd(a2, p_lhs, v6);
}

uint64_t figTimelineCoordinator_othersAreSuspended(uint64_t a1)
{
  v1 = FigCFDictionaryCopyArrayOfValues(*(a1 + 328));
  v2 = 0;
  while (1)
  {
    v3 = v1 ? CFArrayGetCount(v1) : 0;
    if (v2 >= v3)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v1, v2++);
    if (!participantState_isSuspended(ValueAtIndex[2]))
    {
      v5 = 0;
      if (!v1)
      {
        return v5;
      }

      goto LABEL_10;
    }
  }

  v5 = 1;
  if (!v1)
  {
    return v5;
  }

LABEL_10:
  CFRelease(v1);
  return v5;
}

BOOL figTimelineCoordinator_havePassedReadinessDeadline(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Current = CFAbsoluteTimeGetCurrent();
  v4 = CFDateCreate(v2, Current);
  v5 = v4;
  v6 = *(a1 + 368);
  if (!v6)
  {
    v7 = 0;
    if (!v4)
    {
      return v7;
    }

    goto LABEL_3;
  }

  v7 = CFDateGetTimeIntervalSinceDate(v4, v6) > 0.0;
  if (v5)
  {
LABEL_3:
    CFRelease(v5);
  }

  return v7;
}

uint64_t figTimelineCoordinator_anyParticipantIsSuspendedWithOnlyReasonsThatTriggerWaiting(uint64_t a1)
{
  v2 = FigCFDictionaryCopyArrayOfKeys(*(a1 + 328));
  v3 = 0;
  if (!v2)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(v2); ; i = 0)
  {
    if (v3 >= i)
    {
      v8 = 0;
      v9 = 0;
      if (!v2)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v2, v3);
    Value = CFDictionaryGetValue(*(a1 + 328), ValueAtIndex);
    v7 = FigTimelineCoordinationParticipantSnapshotCopySuspensionReasons(Value);
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v7;
    if (CFArrayGetCount(v7) >= 1)
    {
      if (figTimelineCoordinator_groupShouldWaitForAllSuspensions(a1, v8))
      {
        break;
      }
    }

    CFRelease(v8);
LABEL_9:
    ++v3;
    if (v2)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  v9 = 1;
  if (v2)
  {
LABEL_12:
    CFRelease(v2);
  }

LABEL_13:
  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

uint64_t figTimelineCoordinator_isResponsibleForPickingAnchorTimeDuringCoordinatedStart(uint64_t a1)
{
  v33[16] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 360))
  {
    return 0;
  }

  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v4 = FigCFDictionaryCopyArrayOfValues(*(a1 + 328));
  if (v4)
  {
    v5 = v4;
    if (CFArrayGetCount(v4) >= 1)
    {
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v6);
        v8 = *(ValueAtIndex + 2);
        LOBYTE(v33[0]) = 0;
        FigCFDictionaryGetBooleanIfPresent(v8, @"CoordinatingStart", v33, v9, v10, v11, v12, v13, v26, v27, v28, v29, *v30, *&v30[8], *&v30[16], v31, v32, v33[0]);
        if (LOBYTE(v33[0]))
        {
          CFArrayAppendValue(Mutable, *(ValueAtIndex + 4));
        }

        ++v6;
      }

      while (v6 < CFArrayGetCount(v5));
    }

    CFRelease(v5);
  }

  v14 = 0;
  if (!Mutable)
  {
    goto LABEL_11;
  }

LABEL_10:
  for (i = CFArrayGetCount(Mutable); ; i = 0)
  {
    if (v14 >= i)
    {
      v18 = 1;
      if (!Mutable)
      {
        return v18;
      }

      goto LABEL_31;
    }

    v16 = CFArrayGetValueAtIndex(Mutable, v14);
    if (v16)
    {
      v17 = v16;
      if (figTimelineCoordinator_compareUUIDs(v16, *(a1 + 344)) == 1)
      {
        break;
      }
    }

    ++v14;
    if (Mutable)
    {
      goto LABEL_10;
    }

LABEL_11:
    ;
  }

  v19 = CFUUIDCreateString(v2, v17);
  if (dword_1EAF1CF08)
  {
    HIDWORD(v29) = 0;
    BYTE3(v29) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &v29 + 1, &v29 + 3);
    v21 = HIDWORD(v29);
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v29)))
    {
      v23 = v21;
    }

    else
    {
      v23 = v21 & 0xFFFFFFFE;
    }

    if (v23)
    {
      *v30 = 136315650;
      *&v30[4] = "figTimelineCoordinator_isResponsibleForPickingAnchorTimeDuringCoordinatedStart";
      *&v30[12] = 2112;
      *&v30[14] = a1;
      *&v30[22] = 2112;
      v31 = v19;
      v24 = _os_log_send_and_compose_impl();
      LOBYTE(v21) = BYTE4(v29);
    }

    else
    {
      v24 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v24, v24 != v33, v21, 0, v22);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  v18 = 0;
  if (Mutable)
  {
LABEL_31:
    CFRelease(Mutable);
  }

  return v18;
}

uint64_t figTimelineCoordinator_isReadyToPickAnchorTimeOnQueue(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!figTimelineCoordinator_isResponsibleForPickingAnchorTimeDuringCoordinatedStart(a1))
  {
    return 0;
  }

  v2 = FigCFDictionaryCopyArrayOfKeys(*(a1 + 328));
  if (v2)
  {
    v3 = v2;
    if (CFArrayGetCount(v2) < 1)
    {
      v20 = 0;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v6 = &sVCCPreallocationSaveToSymlinkCString[720];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
        Value = CFDictionaryGetValue(*(a1 + 328), ValueAtIndex);
        if (FigTimelineCoordinationParticipantSnapshotIsReadyToSetNonZeroRate(Value, v9))
        {
          ++v5;
        }

        else
        {
          v10 = FigTimelineCoordinationParticipantSnapshotCopySuspensionReasons(Value);
          if (v10)
          {
            v11 = v10;
            if (CFArrayGetCount(v10) >= 1)
            {
              if (figTimelineCoordinator_groupShouldWaitForAllSuspensions(a1, v11))
              {
                if (*(v6 + 962))
                {
                  v12 = FigCFCopyCompactDescription(v11);
                  if (*(v6 + 962))
                  {
                    v25[0] = 0;
                    type = OS_LOG_TYPE_DEFAULT;
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, v25, &type);
                    v14 = v25[0];
                    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                    {
                      v16 = v14;
                    }

                    else
                    {
                      v16 = v14 & 0xFFFFFFFE;
                    }

                    if (v16)
                    {
                      StateLoggingIdentifier = FigParticipantStateDictionaryGetStateLoggingIdentifier(Value[2]);
                      v25[1] = 136315906;
                      v26 = "figTimelineCoordinator_areAllOtherParticipantsReady";
                      v27 = 2112;
                      v28 = a1;
                      v29 = 2114;
                      v30 = v12;
                      v31 = 2114;
                      v32 = StateLoggingIdentifier;
                      v17 = _os_log_send_and_compose_impl();
                      LOBYTE(v14) = v25[0];
                    }

                    else
                    {
                      v17 = 0;
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v17, v17 != &v33, v14, 0, v15);
                    v6 = sVCCPreallocationSaveToSymlinkCString + 720;
                  }

                  if (v12)
                  {
                    CFRelease(v12);
                  }
                }
              }

              else
              {
                ++v5;
              }
            }

            CFRelease(v11);
          }
        }

        ++v4;
      }

      while (v4 < CFArrayGetCount(v3));
      v20 = v5;
    }

    Count = CFArrayGetCount(v3);
    CFRelease(v3);
    if (Count != v20)
    {
      goto LABEL_31;
    }
  }

  if (CFArrayGetCount(*(a1 + 432)) >= 1 && ((figTimelineCoordinator_copyActiveSuspensionReasonsOnQueue(a1, &cf), figTimelineCoordinator_groupShouldWaitForAllSuspensions(a1, cf)) || figTimelineCoordinator_suspensionReasonsContainInternalSuspensionReasons(a1, cf)))
  {
LABEL_31:
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

uint64_t figTimelineCoordinator_groupShouldWaitForAllSuspensions(uint64_t a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    v7 = *MEMORY[0x1E695E4D0];
    while (1)
    {
      CFArrayGetValueAtIndex(theArray, v6);
      FigSimpleMutexLock(*(a1 + 392));
      Value = FigCFDictionaryGetValue(*(a1 + 400));
      v9 = Value;
      if (FigCFDictionaryGetValue(Value) != v7)
      {
        break;
      }

      FigCFDictionaryGetInt32IfPresent(v9, @"ParticipantLimit", &v21, v10, v11, v12, v13, v14, v19, v20, v22, v23, v24, v25, v26, v27, v28, v29);
      if (v15)
      {
        v16 = FigCFDictionaryGetCount(*(a1 + 328));
        v17 = v21;
        FigSimpleMutexUnlock(*(a1 + 392));
        if (v16 >= v17)
        {
          return 0;
        }
      }

      else
      {
        FigSimpleMutexUnlock(*(a1 + 392));
      }

      if (v5 == ++v6)
      {
        return 1;
      }
    }

    FigSimpleMutexUnlock(*(a1 + 392));
  }

  return 0;
}

void figTimelineCoordinator_fetchCompleteCallbackOnQueue(CFTypeRef *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (FigCFEqual(a1[1], *(*a1 + 44)))
  {
    if (dword_1EAF1CF08)
    {
      v21 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &v21, &type);
      v4 = v21;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v6 = v4;
      }

      else
      {
        v6 = v4 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v7 = *(v2 + 352);
        if (*(v2 + 288))
        {
          v8 = "Did NOT";
        }

        else
        {
          v8 = "Did";
        }

        v22 = 136315906;
        v23 = "figTimelineCoordinator_fetchCompleteCallbackOnQueue";
        v24 = 2112;
        v25 = v2;
        v26 = 2114;
        v27 = v7;
        v28 = 2082;
        v29 = v8;
        v9 = _os_log_send_and_compose_impl();
        LOBYTE(v4) = v21;
      }

      else
      {
        v9 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v9, v9 != v30, v4, 0, v5);
    }

    *(v2 + 280) = 1;
    v16 = *(v2 + 272);
    if (v16)
    {
      CFRelease(v16);
      *(v2 + 272) = 0;
    }
  }

  else if (dword_1EAF1CF08)
  {
    v21 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &v21, &type);
    v11 = v21;
    if (os_log_type_enabled(v10, type))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 0xFFFFFFFE;
    }

    if (v13)
    {
      v14 = *(v2 + 352);
      v22 = 136315650;
      v23 = "figTimelineCoordinator_fetchCompleteCallbackOnQueue";
      v24 = 2112;
      v25 = v2;
      v26 = 2114;
      v27 = v14;
      v15 = _os_log_send_and_compose_impl();
      LOBYTE(v11) = v21;
    }

    else
    {
      v15 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v15, v15 != v30, v11, 0, v12);
  }

  if (FigCFEqual(a1[1], *(v2 + 272)))
  {
    v17 = *(v2 + 272);
    if (v17)
    {
      CFRelease(v17);
      *(v2 + 272) = 0;
    }
  }

  v18 = *(v2 + 288);
  if (v18 && v18 == *(v2 + 200) && FigCFEqual(a1[1], *(v18 + 88)))
  {
    figTimelineCoordinator_fetchCompleteCallbackOnQueue_cold_1(v2, (v2 + 288));
  }

  v19 = a1[1];
  if (v19)
  {
    CFRelease(v19);
  }

  CFRelease(v2);
  free(a1);
}

void figTimelineCoordinator_startTimeoutForTimelineControlCommandOnQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v8 = *(a1 + 112);
  if (v8)
  {
    v9 = dispatch_time(0, 60000000000);

    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  }

  else
  {
    figTimelineCoordinator_startTimeoutForTimelineControlCommandOnQueue_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t figTimelineCoordinator_createDidIssueCommandNotificationPayload(const void *a1, const void *a2, __CFDictionary **a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v14 = Mutable;
    CFDictionarySetValue(Mutable, @"Command", a1);
    if (a2)
    {
      CFDictionarySetValue(v14, @"ParticipantUUID", a2);
    }

    result = 0;
    *a3 = v14;
  }

  else
  {
    figTimelineCoordinator_createDidIssueCommandNotificationPayload_cold_1(&v16, v7, v8, v9, v10, v11, v12, v13);
    return v16;
  }

  return result;
}

size_t figTimelineCoordinator_postDidIssueCommandNotification(uint64_t a1, const void *a2)
{
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  result = CMNotificationCenterPostNotification(DefaultLocalCenter, @"DidIssueCommandToTimelineControl", a1, a2);
  if (result)
  {
    v9 = qword_1EAF1CF00;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, result, "<<<< FigTimelineCoordinator >>>>", 0xAE9, v2, v7, v8);
  }

  return result;
}

size_t figTimelineCoordinatorParticipantCreateFromDictionary(int a1, CFDictionaryRef theDict, const void *a3, uint64_t *a4)
{
  Value = CFDictionaryGetValue(theDict, @"UUID");
  v16 = Value;
  if (Value)
  {
    v17 = CFGetTypeID(Value);
    if (v17 == CFStringGetTypeID())
    {
      v16 = CFUUIDCreateFromString(*MEMORY[0x1E695E480], v16);
    }

    else
    {
      v16 = 0;
    }
  }

  if (!a4)
  {
    v30 = 2099;
    goto LABEL_19;
  }

  if (!theDict)
  {
    v30 = 2100;
LABEL_19:
    v28 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", v30, v4, v14, v15);
    if (!v16)
    {
      return v28;
    }

    goto LABEL_15;
  }

  if (!v16)
  {
    figTimelineCoordinatorParticipantCreateFromDictionary_cold_3(&v32, v9, v10, v11, v12, v13, v14, v15);
    return v32;
  }

  if (_MergedGlobals_55 != -1)
  {
    FigTimelineCoordinationParticipantSnapshotGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v26 = Instance;
    *(Instance + 16) = CFRetain(theDict);
    if (a3)
    {
      v27 = CFRetain(a3);
    }

    else
    {
      v27 = 0;
    }

    *(v26 + 24) = v27;
    v28 = 0;
    *(v26 + 32) = CFRetain(v16);
    *a4 = v26;
  }

  else
  {
    figTimelineCoordinatorParticipantCreateFromDictionary_cold_2(&v31, v19, v20, v21, v22, v23, v24, v25);
    v28 = v31;
  }

LABEL_15:
  CFRelease(v16);
  return v28;
}

void figTimelineCoordinator_integrateParticipantStateOnQueue(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v78 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 32);
  cf = 0;
  if (!v8)
  {
    figTimelineCoordinator_integrateParticipantStateOnQueue_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_5;
  }

  if (FigCFEqual(*(a1 + 344), v8))
  {
    v17 = *(a2 + 16);
    LOBYTE(v76) = 0;
    FigCFDictionaryGetBooleanIfPresent(v17, @"CoordinatingStart", &v76, v12, v13, v14, v15, v16, v63, v64, v65, v67, v68, cf, *v70, *&v70[8], *&v70[16], v71);
    if (v76)
    {
      *(a1 + 360) = 1;
    }

    goto LABEL_5;
  }

  Value = CFDictionaryGetValue(*(a1 + 328), v8);
  v19 = Value;
  if (!Value)
  {
    v20 = 0;
    v21 = 0;
    goto LABEL_10;
  }

  v28 = FigCFEqual(Value[4], *(a2 + 32));
  v29 = FigTimelineCoordinationParticipantSnapshotCopySuspensionReasons(v19);
  v30 = FigTimelineCoordinationParticipantSnapshotCopySuspensionReasons(a2);
  v31 = FigCFEqual(v29, v30) != 0;
  IsReadyToSetNonZeroRate = FigTimelineCoordinationParticipantSnapshotIsReadyToSetNonZeroRate(v19, v32);
  v35 = IsReadyToSetNonZeroRate == FigTimelineCoordinationParticipantSnapshotIsReadyToSetNonZeroRate(a2, v34);
  v21 = v31;
  v20 = v35;
  if (v28)
  {
    v36 = v20 & v21;
  }

  else
  {
    v36 = 0;
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (!v30)
  {
    if (v36)
    {
      goto LABEL_29;
    }

LABEL_10:
    if (dword_1EAF1CF08)
    {
      v22 = FigCFCopyCompactDescription(*(a2 + 16));
      if (dword_1EAF1CF08)
      {
        v66 = v21;
        LODWORD(v68) = 0;
        BYTE4(v67) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &v68, &v67 + 4);
        v24 = v68;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE4(v67)))
        {
          v26 = v24;
        }

        else
        {
          v26 = v24 & 0xFFFFFFFE;
        }

        if (v26)
        {
          v38 = " [Suspensions]";
          *&v70[4] = "figTimelineCoordinator_integrateParticipantStateOnQueue";
          v39 = "";
          *v70 = 136316162;
          if (v66)
          {
            v38 = "";
          }

          *&v70[12] = 2112;
          *&v70[14] = a1;
          v71 = v38;
          *&v70[22] = 2082;
          if (!v20)
          {
            v39 = " [Readiness]";
          }

          v72 = 2082;
          v73 = v39;
          v74 = 2114;
          v75 = v22;
          v27 = _os_log_send_and_compose_impl();
          LOBYTE(v24) = v68;
        }

        else
        {
          v27 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v27, v27 != &v76, v24, 0, v25);
      }

      if (v22)
      {
        CFRelease(v22);
      }
    }

    v37 = 1;
    if (!v19)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  CFRelease(v30);
  if ((v36 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_29:
  v37 = 0;
LABEL_39:
  if (participantState_isSuspended(*(v19 + 16)))
  {
LABEL_41:
    v40 = 0;
    goto LABEL_51;
  }

LABEL_40:
  if (!participantState_isSuspended(*(a2 + 16)))
  {
    goto LABEL_41;
  }

  if (dword_1EAF1CF08)
  {
    LODWORD(v68) = 0;
    BYTE4(v67) = 0;
    v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &v68, &v67 + 4);
    v42 = v68;
    if (os_log_type_enabled(v41, BYTE4(v67)))
    {
      v44 = v42;
    }

    else
    {
      v44 = v42 & 0xFFFFFFFE;
    }

    if (v44)
    {
      *v70 = 136315394;
      *&v70[4] = "figTimelineCoordinator_integrateParticipantStateOnQueue";
      *&v70[12] = 2112;
      *&v70[14] = a1;
      v45 = _os_log_send_and_compose_impl();
      LOBYTE(v42) = v68;
    }

    else
    {
      v45 = 0;
    }

    v40 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v45, v45 != &v76, v42, 0, v43);
  }

  else
  {
    v40 = 1;
  }

LABEL_51:
  FigSimpleMutexLock(*(a1 + 320));
  CFDictionarySetValue(*(a1 + 328), v8, a2);
  FigSimpleMutexUnlock(*(a1 + 320));
  figTimelineCoordinator_copyActiveSuspensionReasonsOnQueue(a1, &cf);
  IsSuspended = figTimelineCoordinator_everyoneIsSuspended(a1);
  if (!v40)
  {
    goto LABEL_66;
  }

  if (!IsSuspended)
  {
    goto LABEL_66;
  }

  if (!*(a1 + 208))
  {
    goto LABEL_66;
  }

  v47 = *(a1 + 200);
  if (v47)
  {
    if (*(v47 + 36) == 0.0)
    {
      goto LABEL_66;
    }
  }

  v68 = 0;
  if (dword_1EAF1CF08)
  {
    HIDWORD(v67) = 0;
    BYTE3(v67) = 0;
    v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &v67 + 1, &v67 + 3);
    v49 = HIDWORD(v67);
    if (os_log_type_enabled(v48, BYTE3(v67)))
    {
      v51 = v49;
    }

    else
    {
      v51 = v49 & 0xFFFFFFFE;
    }

    if (v51)
    {
      v52 = *(a1 + 200);
      v53 = *(a1 + 208);
      *v70 = 136315906;
      *&v70[4] = "figTimelineCoordinator_integrateParticipantStateOnQueue";
      *&v70[12] = 2112;
      *&v70[14] = a1;
      *&v70[22] = 2112;
      v71 = v52;
      v72 = 2112;
      v73 = v53;
      v54 = _os_log_send_and_compose_impl();
      LOBYTE(v49) = BYTE4(v67);
    }

    else
    {
      v54 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v54, v54 != &v76, v49, 0, v50);
  }

  FigSimpleMutexLock(*(a1 + 16));
  v55 = *(a1 + 16);
  v56 = *(a1 + 24);
  *(a1 + 24) = v56 + 1;
  FigSimpleMutexUnlock(v55);
  v57 = *MEMORY[0x1E695E480];
  v58 = *(a1 + 208);
  v59 = *(v58 + 32);
  v60 = *(v58 + 36);
  v62 = *(a1 + 344);
  v61 = *(a1 + 352);
  v76 = *(v58 + 40);
  v77 = *(v58 + 56);
  memset(v70, 0, sizeof(v70));
  if (!figTimelineCoordinatorTimelineStateCreateInternal(v59, v60, v57, v61, &v76, v70, 0, v62, v56, 0xFFFFFFFFLL, 0, 0, &v68))
  {
    figTimelineCoordinator_integrateParticipantStateOnQueue_cold_1(a1, &v68, (a1 + 208));
LABEL_66:
    *a3 = v37;
  }

LABEL_5:
  if (cf)
  {
    CFRelease(cf);
  }
}

void figTimelineCoordinator_postParticipantsDidChange(uint64_t a1)
{
  v2 = FigCFDictionaryCopyArrayOfKeys(*(a1 + 328));
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = Mutable;
  if (Mutable)
  {
    if (v2)
    {
      CFDictionarySetValue(Mutable, @"ParticipantUUIDs", v2);
    }

    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification(DefaultLocalCenter, @"ParticipantsDidChange", a1, v11);
    if (v2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    figTimelineCoordinator_postParticipantsDidChange_cold_1(0, v4, v5, v6, v7, v8, v9, v10);
    if (v2)
    {
LABEL_5:
      CFRelease(v2);
    }
  }

  if (v11)
  {

    CFRelease(v11);
  }
}

void figTimelineCoordinator_reapplyExpectedTimelineOnQueue(uint64_t a1, char a2, unsigned int a3)
{
  v4 = *(a1 + 200);
  if (v4)
  {
    figTimelineCoordinator_reapplyExpectedTimelineOnQueue_cold_1(a2, a1, v4, a3);
  }
}

void figTimelineCoordinator_timelineControlCommandCompletionOnQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v9 = *a1;
  figTimelineCoordinator_suspendTimelineControlCommandCompletionTimer(*a1, a2, a3, a4, a5, a6, a7, a8);
  *(*a1 + 96) = 0;
  v10 = *(a1 + 16);
  if (v10 != *(v9 + 100))
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 24) = 0;
    }

    v10 = *(v9 + 100);
  }

  *(v9 + 100) = v10 + 1;
  v12 = *(a1 + 8);
  v13 = *(v9 + 224);
  if (v12 != v13)
  {
    if (v12 && v13 && FigCFEqual(*(v13 + 88), *(v12 + 88)))
    {
      v30 = *(v13 + 88);
      if (v30)
      {
        LOBYTE(v30) = (*(v13 + 36) == 0.0 || (*(v13 + 76) & 0x1D) == 1) && (*(v13 + 52) & 0x1D) == 1;
      }

      if (*(v12 + 88) && (*(v12 + 36) == 0.0 || (*(v12 + 76) & 0x1D) == 1))
      {
        LOBYTE(v30) = v30 ^ ((*(v12 + 52) & 0x1D) == 1);
      }

      if ((v30 & 1) == 0)
      {
        time1 = *(v13 + 40);
        v31 = *(v12 + 40);
        if (!CMTimeCompare(&time1, &v31) && *(v13 + 100) - *(v12 + 100) == 1 && *(v13 + 36) == *(v12 + 32) && (*(v13 + 76) & 1) != 0)
        {
          *(v9 + 256) = 0;
          *(v9 + 258) = 0;
        }
      }
    }

    goto LABEL_59;
  }

  v14 = *(v9 + 296);
  v15 = *(a1 + 24);
  *(v9 + 296) = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v16 = *(v9 + 296);
  if (v16)
  {
    v17 = *(a1 + 8);
    if (*(v17 + 88) && (*(v17 + 36) == 0.0 || (*(v17 + 76) & 0x1D) == 1) && (*(v17 + 52) & 0x1D) == 1)
    {
      CMTimeMake(&time1, 5, 1);
      if (!figTimelineCoordinator_timelinesMatch(v16, v17, &time1, 0))
      {
        memset(&time1, 0, sizeof(time1));
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&time1, HostTimeClock);
      }
    }

    v19 = *(v9 + 224);
    if (!*(v19 + 88) || *(v19 + 36) != 0.0 && (*(v19 + 76) & 0x1D) != 1 || (*(v19 + 52) & 0x1D) != 1)
    {
      v20 = *(v9 + 296);
      *(v19 + 36) = *(v20 + 36);
      v21 = *(v20 + 40);
      *(v19 + 56) = *(v20 + 56);
      *(v19 + 40) = v21;
      v22 = *(v9 + 224);
      v23 = *(v9 + 296);
      v24 = *(v23 + 64);
      *(v22 + 80) = *(v23 + 80);
      *(v22 + 64) = v24;
    }

    *(v9 + 304) = 1;
  }

  else if (!*(v9 + 104))
  {
    v25 = *(v9 + 224);
    if (v25)
    {
      CFRelease(v25);
      *(v9 + 224) = 0;
    }
  }

  if (!*(a1 + 20))
  {
    goto LABEL_59;
  }

  v26 = *(v9 + 336);
  if ((v26 & 2) != 0)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  if (v27 != *(v9 + 340))
  {
    *(v9 + 340) = v27;
    figTimelineCoordinator_sendParticipantStateToGroupOnQueue(v9);
  }

  if ((v26 & 2) == 0)
  {
LABEL_59:
    figTimelineCoordinator_issueAppropriateCommandsToMatchInProgressTimelineOnQueue(v9);
    figTimelineCoordinator_triggerTimelineChangesAfterParticipantChangeOnQueue(v9);
  }

  v28 = *(a1 + 24);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(a1 + 8);
  if (v29)
  {
    CFRelease(v29);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void figTimelineCoordinator_suspendTimelineControlCommandCompletionTimer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v9 = *(a1 + 112);
  if (v9)
  {

    dispatch_source_set_timer(v9, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  }

  else
  {
    figTimelineCoordinator_suspendTimelineControlCommandCompletionTimer_cold_1(v9, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t figTimelineCoordinatorRemoveSuspensionInternal(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 424);
  v15.length = CFArrayGetCount(v4);
  v15.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v15, a2);
  if (FirstIndexOfValue == -1)
  {
    figTimelineCoordinatorRemoveSuspensionInternal_cold_1(&v14, v6, v7, v8, v9, v10, v11, v12);
    return v14;
  }

  else
  {
    CFArrayRemoveValueAtIndex(*(a1 + 424), FirstIndexOfValue);
    return 0;
  }
}

void figTimelineCoordinator_issueProposeTimelineForIdentifierOnQueue(uint64_t a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject(*(a1 + 80));
  v10 = v2;
  v11 = *(a1 + 72);
  if (v11)
  {
    if (!v2)
    {
      figTimelineCoordinator_issueProposeTimelineForIdentifierOnQueue_cold_1(0, v3, v4, v5, v6, v7, v8, v9);
      return;
    }

    v11(v2, *(a1 + 352));
  }

  else if (!v2)
  {
    return;
  }

  CFRelease(v10);
}

uint64_t figTimelineCoordinator_sFigTimelineCoordinatorSharedCoPresenceNTPClockOneTimeInitialization()
{
  result = FigSimpleMutexCreate();
  sFigTimelineCoordinatorSharedCoPresenceNTPClock_1 = result;
  sFigTimelineCoordinatorSharedCoPresenceNTPClock_0 = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, char a16, int a17)
{
  a17 = 0;
  a16 = 0;
  v19 = *(v17 + 3840);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v19, 1, &a17, &a16);
}

void *OUTLINED_FUNCTION_6_25()
{

  return malloc_type_malloc(0x40uLL, 0x1060040E14BA948uLL);
}

void *OUTLINED_FUNCTION_9_15()
{

  return malloc_type_malloc(0x20uLL, 0x10200405C7134C3uLL);
}

uint64_t OUTLINED_FUNCTION_14_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  a19 = 0;
  a15 = 0;
  v21 = *(v19 + 3840);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v21, 1, &a19, &a15);
}

uint64_t OUTLINED_FUNCTION_20_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  *(v38 + 64) = *(v39 + 64);
  *(v38 + 80) = a37;
  result = a14;
  *(v37 + 224) = a14;
  return result;
}

BOOL OUTLINED_FUNCTION_21_9(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

__n128 OUTLINED_FUNCTION_24_7(uint64_t a1)
{
  *(v2 + 8) = a1;
  v3 = v1[1].n128_u64[0];
  result = *v1;
  *(v2 + 20) = *v1;
  *(v2 + 36) = v3;
  return result;
}

void OUTLINED_FUNCTION_29_4(uint64_t a1@<X8>)
{
  *(v1 + 36) = a1;
  *(v1 + 44) = 2139095039;
  *(v1 + 16) = 0;
}

__n128 OUTLINED_FUNCTION_31_4()
{
  result = *(v0 + 40);
  *v1 = result;
  v1[1].n128_u64[0] = *(v0 + 56);
  return result;
}

void OUTLINED_FUNCTION_33_4()
{
  *(v0 + 340) = 0;

  figTimelineCoordinator_sendParticipantStateToGroupOnQueue(v0);
}

uint64_t RegisterFigCaptionGroupType()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionGroupID = result;
  return result;
}

uint64_t FigCaptionGroupCreate(const __CFAllocator *a1, CFArrayRef theArray, CMTime *a3, CMTime *a4, uint64_t *a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!theArray)
  {
    FigCaptionGroupCreate_cold_5(&time1, 0, a3, a4, a5, a6, a7, a8);
    return LODWORD(time1.value);
  }

  if (!a5)
  {
    FigCaptionGroupCreate_cold_4(&time1, theArray, a3, a4, 0, a6, a7, a8);
    return LODWORD(time1.value);
  }

  Count = CFArrayGetCount(theArray);
  v19 = Count;
  if (Count >= 1)
  {
    v21 = a3;
    v20 = a4;
    v22 = Count;
    while (1)
    {
      if ((v21->flags & 0x1D) != 1 || (time1 = *v21, *&time2.value = *&kCMTimeZero.value, time2.epoch = 0, CMTimeCompare(&time1, &time2) < 0))
      {
        FigCaptionGroupCreate_cold_3(&time1, v12, v13, v14, v15, v16, v17, v18);
        return LODWORD(time1.value);
      }

      if ((v20->flags & 0x1D) != 1)
      {
        break;
      }

      time1 = *v20;
      *&time2.value = *&kCMTimeZero.value;
      time2.epoch = 0;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        break;
      }

      ++v21;
      ++v20;
      if (!--v22)
      {
        goto LABEL_10;
      }
    }

    FigCaptionGroupCreate_cold_2(&time1, v12, v13, v14, v15, v16, v17, v18);
    return LODWORD(time1.value);
  }

LABEL_10:
  FigThreadRunOnce(&sRegisterFigCaptionGroupTypeOnce, RegisterFigCaptionGroupType);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v31 = Instance;
    *(Instance + 16) = CFArrayCreateCopy(a1, theArray);
    if (v19)
    {
      if (v19 - 0xAAAAAAAAAAAAAABLL >= 0xF555555555555556)
      {
        v34 = 24 * v19;
        *(v31 + 24) = malloc_type_malloc(24 * v19, 0x1000040504FFAC1uLL);
        v33 = malloc_type_malloc(24 * v19, 0x1000040504FFAC1uLL);
        v32 = *(v31 + 24);
      }

      else
      {
        v32 = 0;
        v33 = 0;
        *(v31 + 24) = 0;
        v34 = -1;
      }

      *(v31 + 32) = v33;
      if (v19 <= 0xAAAAAAAAAAAAAAALL)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      memcpy(v32, a3, v35);
      memcpy(*(v31 + 32), a4, v35);
    }

    result = 0;
    *a5 = v31;
  }

  else
  {
    FigCaptionGroupCreate_cold_1(0, v24, v25, v26, v27, v28, v29, v30);
    return 0;
  }

  return result;
}

uint64_t FigCaptionGroupCreateEmpty(const __CFAllocator *a1, uint64_t *a2)
{
  v4 = CFArrayCreate(a1, 0, 0, MEMORY[0x1E695E9C0]);
  v8 = FigCaptionGroupCreate(a1, v4, &kCMTimeZero, &kCMTimeZero, a2, v5, v6, v7);
  if (v4)
  {
    CFRelease(v4);
  }

  return v8;
}

CFIndex FigCaptionGroupGetSliceCount(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    v9 = *(a1 + 16);

    return CFArrayGetCount(v9);
  }

  else
  {
    FigCaptionGroupGetSliceCount_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
    return 0;
  }
}

const void *FigCaptionGroupGetCaptionData(uint64_t a1, CFIndex a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    v9 = *(a1 + 16);

    return CFArrayGetValueAtIndex(v9, a2);
  }

  else
  {
    FigCaptionGroupGetCaptionData_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
    return 0;
  }
}

CFIndex FigCaptionGroupGetDurationBeforeSlice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, CMBlockBufferFlags a7@<W6>, CMBlockBufferRef *a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = *&kCMTimeInvalid.value;
  *(a9 + 16) = 0;
  if (!a1)
  {
    return FigCaptionGroupGetDurationBeforeSlice_cold_2(0, a2, a3, a4, a5, a6, a7, a8);
  }

  result = CFArrayGetCount(*(a1 + 16));
  if (result <= a2)
  {
    return FigCaptionGroupGetDurationBeforeSlice_cold_1(result, v13, v14, v15, v16, v17, v18, v19);
  }

  v20 = *(a1 + 24) + 24 * a2;
  *a9 = *v20;
  *(a9 + 16) = *(v20 + 16);
  return result;
}

CFIndex FigCaptionGroupGetDurationAfterSlice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, CMBlockBufferFlags a7@<W6>, CMBlockBufferRef *a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = *&kCMTimeInvalid.value;
  *(a9 + 16) = 0;
  if (!a1)
  {
    return FigCaptionGroupGetDurationAfterSlice_cold_2(0, a2, a3, a4, a5, a6, a7, a8);
  }

  result = CFArrayGetCount(*(a1 + 16));
  if (result <= a2)
  {
    return FigCaptionGroupGetDurationAfterSlice_cold_1(result, v13, v14, v15, v16, v17, v18, v19);
  }

  v20 = *(a1 + 32) + 24 * a2;
  *a9 = *v20;
  *(a9 + 16) = *(v20 + 16);
  return result;
}

void *CaptionGroupInit(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void CaptionGroupFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  free(*(a1 + 24));
  v3 = *(a1 + 32);

  free(v3);
}

__CFString *CaptionGroupCopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  Count = CFArrayGetCount(*(a1 + 16));
  CFStringAppendFormat(Mutable, 0, @"FigCaptionGroup (number of captions = %ld)\n", Count);
  if (Count)
  {
    v4 = 0;
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), i);
      if (v4)
      {
        CFRelease(v4);
      }

      v4 = CFCopyDescription(ValueAtIndex);
      FigCaptionGroupGetDurationBeforeSlice(a1, i, v7, v8, v9, v10, v11, v12, &time);
      Seconds = CMTimeGetSeconds(&time);
      FigCaptionGroupGetDurationAfterSlice(a1, i, v14, v15, v16, v17, v18, v19, &time);
      v20 = CMTimeGetSeconds(&time);
      CFStringAppendFormat(Mutable, 0, @"BeforeSlice<%4.2f> AfterSlice<%4.2f> %@\n", *&Seconds, *&v20, v4);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  return Mutable;
}

uint64_t FigEndpointAudioSinkGetClassID()
{
  if (FigEndpointAudioSinkGetClassID_sRegisterOnce != -1)
  {
    FigEndpointAudioSinkGetClassID_cold_1();
  }

  return FigEndpointAudioSinkGetClassID_sClassID;
}

size_t __FigEndpointAudioSinkGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&FigEndpointAudioSinkGetClassID_sClassDesc, ClassID, 1, &FigEndpointAudioSinkGetClassID_sClassID, v1, v2, v3, v4);
}

uint64_t FigEndpointAudioSinkGetTypeID()
{
  if (FigEndpointAudioSinkGetClassID_sRegisterOnce != -1)
  {
    FigEndpointAudioSinkGetClassID_cold_1();
  }

  v1 = FigEndpointAudioSinkGetClassID_sClassID;

  return CMBaseClassGetCFTypeID(v1);
}

uint64_t FigRemote_LookUpServerTimeoutPort()
{
  if (gServerRPCTimeoutListener != -1)
  {
    FigRemote_LookUpServerTimeoutPort_cold_1();
  }

  FigSimpleMutexLock(qword_1ED4CCE00);
  FigMachPortReleaseSendRight_(dword_1ED4CCE08, 0, 0, 0, 0);
  dword_1ED4CCE08 = 0;
  bootstrap_look_up(*MEMORY[0x1E69E99F8], "com.apple.coremedia.admin", &dword_1ED4CCE08);
  v0 = qword_1ED4CCE00;

  return FigSimpleMutexUnlock(v0);
}

uint64_t fpServer_CreateRPCTimeoutThread()
{
  fig_note_initialize_category_with_default_work_cf(&gFigRPCTimeoutServerTrace[1], @"rpctimeoutserver_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 0, 0, gFigRPCTimeoutServerTrace);
  fig_note_initialize_category_with_default_work_cf(&unk_1ED4CC340, @"rpctimeoutserver_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 0, 0, &qword_1ED4CC338);
  if (fpServer_CreateRPCTimeoutThread_sFigRPCTimeoutServer != -1)
  {
    fpServer_CreateRPCTimeoutThread_cold_1();
  }

  return 0;
}

void FigRPCServer_TimeoutCrashReport(uint64_t a1, const char *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = getpid();
  memset(v26, 0, sizeof(v26));
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  memset(buffer, 63, sizeof(buffer));
  v5 = getpid();
  proc_name(v5, buffer, 0x80u);
  if (in_audio_mx_server_process())
  {
    LogACQEvents();
  }

  v6 = CFPreferencesCopyValue(@"rpc_timeout_method", @"com.apple.coremedia", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v6)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    if (v8 == CFStringGetTypeID())
    {
      v9 = 1;
      if (CFStringCompare(v7, @"SimulateCrash", 1uLL) == kCFCompareEqualTo)
      {
        v11 = "";
        v10 = 1;
        goto LABEL_10;
      }

      v10 = 1;
      if (CFStringCompare(v7, @"Stackshot", 1uLL) == kCFCompareEqualTo)
      {
        v9 = 0;
        goto LABEL_9;
      }

      CFStringCompare(v7, @"Tailspin", 1uLL);
    }

    v9 = 0;
    v10 = 0;
LABEL_9:
    v11 = " stackshot taken";
LABEL_10:
    CFRelease(v7);
    goto LABEL_12;
  }

  v9 = 0;
  v10 = 0;
  v11 = " stackshot taken";
LABEL_12:
  v12 = "<unspecified>";
  if (a2)
  {
    v12 = a2;
  }

  v13 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s: RPCTimeout terminating %d for %d (%@) with reason '%s'%s", buffer, v4, a1, 0, v12, v11);
  global_queue = dispatch_get_global_queue(2, 0);
  v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, global_queue);
  if (v13)
  {
    CFRetain(v13);
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __FigRPCServer_TimeoutCrashReport_block_invoke;
  handler[3] = &__block_descriptor_tmp_37_0;
  v18 = v4;
  handler[4] = v13;
  dispatch_source_set_event_handler(v15, handler);
  v16 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(v15);
  if ((v10 & 1) == 0)
  {
    FigUserTailspinWithMessage();
  }

  if (v9)
  {
    FigUserFaultWithMessage(3189297646, v13);
    if (!v13)
    {
      return;
    }
  }

  else
  {
    FigUserStackshotWithMessage(3189297646, v13);
    if (!v13)
    {
      return;
    }
  }

  CFRelease(v13);
}

uint64_t FigRPCTimeoutServer_KillAndForceCrashReport(uint64_t a1, uint64_t a2, const char *a3, _OWORD *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = getpid();
  v8 = getpid();
  if (gFigServerSideRPCTimeoutNanoseconds)
  {
    if (a2 && v8 != a2)
    {
      return 4294950775;
    }

    v10 = a4[1];
    v22[0] = *a4;
    v22[1] = v10;
    ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken(v22);
    FigRPCServer_TimeoutCrashReport(ClientPIDFromAuditToken, a3);
    v18[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC338, 0, v18, &type);
    v13 = v18[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v18[1] = 136315394;
      v19 = "FigRPCTimeoutServer_KillAndForceCrashReport";
      v20 = 1024;
      v21 = v7;
      v16 = _os_log_send_and_compose_impl();
      LOBYTE(v13) = v18[0];
    }

    else
    {
      v16 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC338, 0, 1, v16, v16 != v22, v13, 0, v14);
    kill(v7, 9);
  }

  return 0;
}

uint64_t FigRPCTimeoutServer_ResetFigNotePreset(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 && a3)
  {
    MEMORY[0x19A8DA090](*MEMORY[0x1E69E9A60]);
  }

  return 0;
}

uint64_t FigRPCTimeoutServer_SetFigNotePreferences(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7)
{
  if (a2 && a3)
  {
    MEMORY[0x19A8DA090](*MEMORY[0x1E69E9A60]);
  }

  if (a4 && a5)
  {
    MEMORY[0x19A8DA090](*MEMORY[0x1E69E9A60], a4, a5);
  }

  if (a6 && a7)
  {
    MEMORY[0x19A8DA090](*MEMORY[0x1E69E9A60], a6, a7);
  }

  return 0;
}

void FigRemote_InterpretMachErrorForTimeout(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sSetupRPCTimeoutOnce != -1)
  {
    FigRemote_InterpretMachErrorForTimeout_cold_1();
  }

  if (a1 == 268451843 || a1 == 268435460)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigRemote_InterpretMachErrorForTimeout_block_invoke_2;
    block[3] = &__block_descriptor_tmp_42;
    block[4] = a2;
    block[5] = a3;
    block[6] = a4;
    dispatch_sync(sServerKillingQueue, block);
  }

  else if (!a1)
  {
    if (a2)
    {
      sSuccessfulMessageServerToken = a2;
    }

    if (FigAtomicCompareAndSwap32(0, 1u, &sMessageSentSuccessfully))
    {
      gFigRemoteCommonTimeout = sTimeoutValueFromPreference;
    }
  }
}

uint64_t FigRemote_HandleServerTimeout_WithExtraInfo(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  __strlcpy_chk();
  if (a3)
  {
    __strlcat_chk();
    v5 = strlen(__s);
    CFStringGetCString(a3, &__s[v5], 511 - v5, 0);
    __strlcat_chk();
  }

  if (!dword_1ED4CCE08)
  {
    return 4294950776;
  }

  memcpy(__dst, "fig rpc timeout -- ", sizeof(__dst));
  strlen(__dst);
  __strncat_chk();
  return FigRPCTimeoutRemote_KillAndForceCrashReport(dword_1ED4CCE08, a1, __dst);
}

void sbufAtom_InitializeKnownKeys()
{
  v355 = *MEMORY[0x1E69E9840];
  values[0] = @"NotSync";
  values[1] = @"PartialSync";
  values[2] = @"HasRedundantCoding";
  values[3] = @"IsDependedOnByOthers";
  values[4] = @"DependsOnOthers";
  values[5] = @"EarlierDisplayTimesAllowed";
  values[6] = @"DisplayImmediately";
  values[7] = @"DoNotDisplay";
  values[8] = @"BytesOfClearDataCount";
  values[9] = @"CryptorIV";
  values[10] = @"ResetDecoderBeforeDecoding";
  values[11] = @"DrainAfterDecoding";
  values[12] = @"PostNotificationWhenConsumed";
  values[13] = @"ResumeOutput";
  values[14] = @"TrimDurationAtStart";
  values[15] = @"TrimDurationAtEnd";
  values[16] = @"SpeedMultiplier";
  values[17] = @"Reverse";
  values[18] = @"FillDiscontinuitiesWithSilence";
  values[19] = @"EmptyMedia";
  values[20] = @"PermanentEmptyMedia";
  values[21] = @"DisplayEmptyMediaImmediately";
  values[22] = @"EndsPreviousSampleDuration";
  values[23] = @"SampleReferenceURL";
  values[24] = @"SampleReferenceByteOffset";
  values[25] = @"GradualDecoderRefresh";
  values[26] = @"SourceRect";
  values[27] = @"DestRect";
  values[28] = @"VirtualDisplaySizeForDestRect";
  values[29] = @"SymmetricTransform";
  values[30] = @"LoudnessInfo";
  values[31] = @"TransitionID";
  values[32] = @"StartPresentationTimesStamp";
  values[33] = @"EndPresentationTimesStamp";
  values[34] = @"EditBoundary";
  values[35] = @"EmptyMediaBeforeBeginning";
  values[36] = @"ClientTimingInfo";
  values[37] = @"ReferenceWasRefreshed";
  values[38] = @"EncoderRetryCount";
  values[39] = @"RequireAcknowledgementToken";
  values[40] = @"value";
  values[41] = @"timescale";
  values[42] = @"epoch";
  values[43] = @"flags";
  values[44] = @"X";
  values[45] = @"Y";
  values[46] = @"Width";
  values[47] = @"Height";
  values[48] = @"com.apple.fig.format_description.original_compression_settings";
  values[49] = @"SampleDescriptionExtensionAtoms";
  values[50] = @"VerbatimSampleDescription";
  values[51] = @"VerbatimISOSampleEntry";
  values[52] = @"FormatName";
  values[53] = @"Depth";
  v0 = *MEMORY[0x1E6965D80];
  values[54] = *MEMORY[0x1E6965D70];
  values[55] = v0;
  v1 = *MEMORY[0x1E6965D68];
  values[56] = *MEMORY[0x1E6965D60];
  values[57] = v1;
  values[58] = *MEMORY[0x1E6965D78];
  values[59] = @"HeightAsRational";
  values[60] = @"HorizontalOffsetAsRational";
  values[61] = @"VerticalOffsetAsRational";
  v2 = *MEMORY[0x1E6965E58];
  values[62] = *MEMORY[0x1E6965E50];
  values[63] = v2;
  values[64] = *MEMORY[0x1E6965E78];
  values[65] = *MEMORY[0x1E6965E70];
  values[66] = *MEMORY[0x1E6965E60];
  values[67] = *MEMORY[0x1E6965E68];
  values[68] = *MEMORY[0x1E6965EF8];
  values[69] = *MEMORY[0x1E6965EF0];
  values[70] = *MEMORY[0x1E6965F00];
  v12 = *MEMORY[0x1E6965D88];
  v13 = *MEMORY[0x1E6965DB8];
  v14 = *MEMORY[0x1E6965DA0];
  v15 = *MEMORY[0x1E6965DD8];
  v16 = *MEMORY[0x1E6965F30];
  v17 = *MEMORY[0x1E6965F50];
  v18 = *MEMORY[0x1E6965F68];
  v19 = *MEMORY[0x1E6965F80];
  v20 = *MEMORY[0x1E6965E80];
  v21 = *MEMORY[0x1E6965F98];
  v22 = *MEMORY[0x1E6965FD0];
  v23 = *MEMORY[0x1E6965FC8];
  v24 = *MEMORY[0x1E6965FF0];
  v25 = @"FullRangeVideo";
  v26 = @"CVImageBufferICCProfile";
  v27 = @"CVBytesPerRow";
  v28 = *MEMORY[0x1E6965D00];
  v29 = *MEMORY[0x1E6965CF0];
  v30 = *MEMORY[0x1E6965D30];
  v31 = *MEMORY[0x1E6965D20];
  v32 = *MEMORY[0x1E6965D40];
  v33 = *MEMORY[0x1E6965D38];
  v34 = *MEMORY[0x1E6965D10];
  v35 = *MEMORY[0x1E6965D08];
  v36 = *MEMORY[0x1E6965D28];
  v37 = @"TemporalQuality";
  v38 = @"SpatialQuality";
  v39 = @"Version";
  v40 = @"RevisionLevel";
  v41 = @"Vendor";
  v42 = @"CommonEncryptionProtected";
  v43 = @"CommonEncryptionTrackEncryptionBox";
  v44 = @"CommonEncryptionOriginalFormat";
  v45 = @"FieldsPerSample";
  v46 = @"avcC";
  v47 = @"d263";
  v48 = @"uuid";
  v49 = @"UUID";
  v50 = @"sinf";
  v51 = @"pinf";
  v52 = @"CryptorSubsampleAuxiliaryData";
  v53 = @"hvcC";
  v54 = @"MetadataKeyTable";
  v55 = @"MetadataKeyNamespace";
  v56 = @"MetadataKeyValue";
  v57 = @"MetadataKeyLocalID";
  v58 = @"MetadataKeyDataTypeNameSpace";
  v59 = @"MetadataKeyDataType";
  v60 = @"MetadataKeyConformingDataTypes";
  v61 = @"MetadataPrimaryLocalIDs";
  v62 = @"MetadataLocalIDDependencyLists";
  v63 = @"BitsPerComponent";
  v64 = @"MetadataKeyStructuralDependency";
  v65 = @"StructuralDependencyIsInvalidFlag";
  v66 = @"MetadataKeySetupData";
  v67 = @"DisplayFlags";
  v68 = @"BackgroundColor";
  v69 = @"Red";
  v70 = @"Green";
  v71 = @"Blue";
  v72 = @"Alpha";
  v73 = @"DefaultTextBox";
  v74 = @"Top";
  v75 = @"Left";
  v76 = @"Bottom";
  v77 = @"Right";
  v78 = @"DefaultStyle";
  v79 = @"StartChar";
  v80 = @"Font";
  v81 = @"FontFace";
  v82 = @"ForegroundColor";
  v83 = @"FontSize";
  v84 = @"HorizontalJustification";
  v86 = @"EndChar";
  v87 = @"FontTable";
  v88 = @"TextJustification";
  v89 = @"Height";
  v90 = @"Ascent";
  v85 = @"VerticalJustification";
  v91 = @"DefaultFontName";
  v92 = @"HorizontalJustification";
  v93 = @"VerticalJustification";
  v94 = @"TimeCode_SourceReferenceName";
  v95 = @"TimeCode_SourceReferenceName_Value";
  v96 = @"TimeCode_SourceReferenceName_LangCode";
  v97 = @"Linear";
  v98 = @"SMPTE_ST_428_1";
  v99 = @"SMPTE_ST_2084_PQ";
  v100 = @"ITU_R_2100_HLG";
  v101 = @"IEC_sRGB";
  v102 = @"AlphaChannelIsOpaque";
  v103 = *MEMORY[0x1E6965CE8];
  v104 = *MEMORY[0x1E6965EC8];
  v105 = v12;
  v106 = v16;
  v107 = v21;
  v108 = @"ColorInfoGuessedBy";
  v109 = *MEMORY[0x1E6965C60];
  v110 = *MEMORY[0x1E6965C88];
  v111 = *MEMORY[0x1E6965C80];
  v112 = @"SceneReferredExtendedLinear";
  v113 = @"SourceTrackID";
  v114 = @"CameraIntrinsicMatrix";
  v115 = @"DroppedFrameReason";
  v116 = @"DroppedFrameReasonInfo";
  v117 = @"StillImageLensStabilizationInfo";
  v118 = @"HEVCSyncSampleNALUnitType";
  v119 = @"AmbientViewingEnvironment";
  v120 = @"auxi";
  v121 = @"ccst";
  v122 = @"slmC";
  v123 = @"IsGradualDecoderRefreshAuthoritative";
  v124 = @"EndOfSiriTTSUtterance";
  v125 = @"FECGroupID";
  v126 = @"FECLastFrameInGroup";
  v127 = @"FECLevelOfProtection";
  v128 = @"QualityMetrics";
  v129 = @"EncodedFrameAvgQP";
  v130 = @"PadByteCount";
  v131 = @"VRAWidth";
  v132 = @"VRAHeight";
  v133 = *MEMORY[0x1E6965D48];
  v134 = @"dvvC";
  v135 = @"disc";
  v136 = @"TierFlag";
  v137 = @"ProfileCompatibilityFlags";
  v138 = @"ProfileSpace";
  v139 = @"TemporalLevel";
  v140 = @"ConstraintIndicatorFlags";
  v141 = @"LevelIndex";
  v142 = @"ProfileIndex";
  v143 = @"HEVCTemporalLevelInfo";
  v144 = @"HEVCTemporalSubLayerAccess";
  v145 = @"HEVCStepwiseTemporalSubLayerAccess";
  v146 = @"HEVCSyncSampleNALUnitType";
  v147 = @"AudioIndependentSampleDecoderRefreshCount";
  v148 = @"LayerSelector";
  v149 = @"OperatingPointSelector";
  v150 = @"IncompleteSample";
  v151 = @"av1C";
  v152 = *MEMORY[0x1E6965EE8];
  v153 = *MEMORY[0x1E6965DE0];
  v154 = @"HDR10PlusPerFrameData";
  v155 = *MEMORY[0x1E6965E88];
  v156 = *MEMORY[0x1E6965E48];
  v157 = @"RequestNonReferenceFrame";
  v158 = @"CryptKeyParsedIndex";
  v159 = @"MediaParsedIndex";
  v160 = @"PartMediaParsedIndex";
  v161 = @"FigAlternates";
  v162 = @"AudioGroups";
  v163 = @"VideoGroups";
  v164 = @"SubtitleGroups";
  v165 = @"ClosedCaptionGroups";
  v166 = @"PersistentID";
  v167 = @"GroupID";
  v168 = @"MultivariantPlaylistVariables";
  v169 = @"MediaSelectionArray";
  v170 = @"SteeringServerURI";
  v171 = @"InitPathwayID";
  v172 = @"DateEntryArray";
  v173 = @"PlaylistActiveDurationSecs";
  v174 = @"TargetDuration";
  v175 = @"PartTargetDuration";
  v176 = @"HoldBackDuration";
  v177 = @"PartHoldBackDuration";
  v178 = @"SkipDeltaBoundary";
  v179 = @"PlaylistType";
  v180 = @"HasEndTag";
  v181 = @"HasMediaSequence";
  v182 = @"HasOnlyIFrames";
  v183 = @"HasStartTime";
  v184 = @"StartTimeIsPrecise";
  v185 = @"SpecifiesIndependentSegments";
  v186 = @"HasIndependentParts";
  v187 = @"HasDiscontinuitySequence";
  v188 = @"HasPartTag";
  v189 = @"SupportsBlockingReload";
  v190 = @"CanSkipDATERANGES";
  v191 = @"VersionNum";
  v192 = @"StartTimeValue";
  v193 = @"DateStampCount";
  v194 = @"AvgSegmentDuration";
  v195 = @"MaxSegmentDuration";
  v196 = @"ParseDate";
  v197 = @"KeySystem";
  v198 = @"EncryptionMethod";
  v199 = @"CryptKeyURL";
  v200 = @"SupportedProtocolVersions";
  v201 = @"PrefetchKey";
  v202 = @"CryptKeyParsed";
  v203 = @"SessionDataIdentifier";
  v204 = @"PlistURL";
  v205 = @"SessionDataValue";
  v206 = @"SessionDataLanguage";
  v207 = @"SessionDataFormat";
  v208 = @"RenditionURL";
  v209 = @"LastMediaSequenceNumber";
  v210 = @"LastIndependentMediaSequenceNumber";
  v211 = @"LastPart";
  v212 = @"LastIndependentPart";
  v213 = @"GapAtLive";
  v214 = @"ReadInCurrent";
  v215 = @"TaggedRangeMetadata";
  v216 = @"TaggedRangeID";
  v217 = @"TaggedRangeClass";
  v218 = @"TaggedRangeLine";
  v219 = @"TaggedRangeCue";
  v220 = @"StartDate";
  v221 = @"EndDate";
  v222 = @"EndOnNext";
  v223 = @"EndOnNextSet";
  v224 = @"scte35cmd";
  v225 = @"scte35in";
  v226 = @"scte35out";
  v227 = @"Duration";
  v228 = @"PlannedDuration";
  v229 = @"TagsFirstFoundDateDict";
  v230 = @"DiscoveryTimestamp";
  v231 = @"ModificationTimestamp";
  v232 = @"PreloadHint";
  v233 = @"PreloadMapHint";
  v234 = @"MediaFileEntries";
  v235 = @"MapFileEntries";
  v236 = @"CryptKeyEntries";
  v237 = @"SessionDataEntries";
  v238 = @"RenditionReportEntries";
  v239 = @"DateEntries";
  v240 = @"ReadInCurrentMediaEntriesArray";
  v241 = @"ReadInCurrentCryptKeyEntriesArray";
  v242 = @"FPAK_URL";
  v243 = @"FPAK_URLForCacheLookup";
  v244 = @"FBPAEK_DeclaredPeakBitRate";
  v245 = @"FBPAEK_AverageBitRate";
  v246 = @"FBPAEK_CodecString";
  v247 = @"FBPAEK_SupplementalCodecString";
  v248 = @"FBPAEK_AudioGroupID";
  v249 = @"FBPAEK_VideoGroupID";
  v250 = @"FBPAEK_SubtitlesGroupID";
  v251 = @"FBPAEK_CCGroupID";
  v252 = @"FBPAEK_AudioGroupIsSynthesized";
  v253 = @"FBPAEK_VideoGroupIsSynthesized";
  v254 = @"FBPAEK_SubtitleGroupIsSynthesized";
  v255 = @"FBPAEK_ClosedCaptionGroupIsSynthesized";
  v256 = @"FBPAEK_IFrameOnly";
  v257 = @"FBPAEK_Resolution";
  v258 = @"FBPAEK_FrameRate";
  v259 = @"FBPAEK_StableStreamIdentifier";
  v260 = @"FBPAEK_HDCP";
  v261 = @"FBPAEK_VideoRange";
  v262 = @"FBPAEK_AudioGroupLocatorMap";
  v263 = @"FBPAEK_VideoGroupLocatorMap";
  v264 = @"FBPAEK_SubtitlesGroupLocatorMap";
  v265 = @"FBPAEK_ClosedCaptionGroupLocatorMap";
  v266 = @"FBPAEGLMK_URL";
  v267 = @"FBPAEGLMK_URLForCacheLookup";
  v268 = @"FBPAEGLMK_ClosedCaptionType";
  v269 = @"FBPAEGLMK_AudioInstreamID";
  v270 = @"FBPAEGLMK_StableStreamIdentifier";
  v271 = @"FBPAEGLMK_Channels";
  v272 = @"FBPAEGLMK_BitDepth";
  v273 = @"FBPAEGLMK_SampleRate";
  v274 = @"FBPAEGLMK_PersistentIDKeyForSerialization";
  v275 = @"FBPAEGLMK_TemplateID";
  v276 = @"FBPAEGLMK_Autoselect";
  v277 = @"FBPAEGLMK_Default";
  v278 = @"FBPAEGLMK_UnicodeLanguageIdentifier";
  v279 = @"FBPAEGLMK_Name";
  v280 = @"FBPAEGLMK_Forced";
  v281 = @"FBPAEGLMK_Characteristics";
  v282 = @"FBPAEGLMK_GroupID";
  v283 = @"FBPAEK_RankingScore";
  v284 = @"FBPAEK_AllowedCPC";
  v285 = @"FBPAEK_AllowedAOCP";
  v286 = @"FBPAEK_HasDeclaredVideoLayoutTags";
  v287 = @"FBPAEK_PathwayID";
  v288 = @"FBPAEK_AlternateIndex";
  v289 = @"FBPAEK_ZeroIndexedAlternateIndex";
  v290 = @"TransportStreamEncryptionInitData";
  v291 = @"FBPAEK_SerializedVideoLayout";
  v292 = @"FrameChecksum";
  v293 = @"CalculateYUVChecksum";
  v294 = @"ExtraInLoopChromaFilter";
  v295 = @"ActiveVideoResolution";
  v296 = @"HasLeftStereoEyeView";
  v297 = @"HasRightStereoEyeView";
  v298 = @"ViewPackingKind";
  v299 = @"HeroEye";
  v300 = @"ProjectionKind";
  v301 = @"StereoCameraBaseline";
  v302 = @"HorizontalDisparityAdjustment";
  v303 = @"HorizontalFieldOfView";
  v304 = @"TransportIdentifier";
  v305 = @"CameraCalibrationDataLensCollection";
  v306 = @"LensAlgorithmKind";
  v307 = @"LensDomain";
  v308 = @"LensIdentifier";
  v309 = @"LensRole";
  v310 = @"LensDistortions";
  v311 = @"LensFrameAdjustmentsPolynomialX";
  v312 = @"LensFrameAdjustmentsPolynomialY";
  v313 = @"RadialAngleLimit";
  v314 = @"IntrinsicMatrix";
  v315 = @"IntrinsicMatrixProjectionOffset";
  v316 = @"IntrinsicMatrixReferenceDimensions";
  v317 = @"ExtrinsicOriginSource";
  v318 = @"ExtrinsicOrientationQuaternion";
  v319 = @"SCStreamUpdateFrameStatus";
  v320 = @"SCStreamUpdateFrameDisplayTime";
  v321 = @"SCStreamUpdateFrameDisplayResolution";
  v322 = @"SCStreamUpdateFrameContentRect";
  v323 = @"SCStreamUpdateFrameContentRectX";
  v324 = @"SCStreamUpdateFrameContentRectY";
  v325 = @"SCStreamUpdateFrameContentRectWidth";
  v326 = @"SCStreamUpdateFrameContentRectHeight";
  v327 = @"SCStreamUpdateFrameBoundingRect";
  v328 = @"SCStreamUpdateFrameContentScale";
  v329 = @"SCStreamUpdateFrameIOSurface";
  v330 = @"SCStreamUpdateStreamID";
  v331 = @"SCStreamUpdateCompositeMode";
  v332 = @"SCStreamUpdateFrameDirtyRect";
  v333 = @"SCStreamUpdateFrameDirtyRectY";
  v334 = @"SCStreamUpdateFrameDirtyRectX";
  v335 = @"SCStreamUpdateFrameDirtyRectHeight";
  v336 = @"SCStreamUpdateFrameDirtyRectWidth";
  v337 = @"SCStreamUpdateFrameScreenRect";
  v338 = @"SCStreamUpdateFrameNormalizedNewsroomFrameROI";
  v339 = @"SCStreamUpdateFramePresenterOverlayContentRect";
  v340 = @"SCStreamMetricCaptureLatencyTime";
  v341 = @"SCStreamMetricCaptureLatencyTimeAudio";
  v342 = @"SCStreamMetricCaptureTimeMicrophone";
  v343 = @"mlcC";
  v344 = @"DisplayMaskRectangleMono";
  v345 = @"DisplayMaskRectangleStereoLeft";
  v346 = @"DisplayMaskRectangleStereoRight";
  v347 = @"ReferenceRasterWidth";
  v348 = @"ReferenceRasterHeight";
  v349 = @"RectangleLeft";
  v350 = @"RectangleWidth";
  v351 = @"RectangleTop";
  v3 = *MEMORY[0x1E695E480];
  v352 = @"RectangleHeight";
  v353 = @"LeftEdgePoints";
  v354 = @"RighEdgePoints";
  v4 = 0;
  sKnownSBufKeysDictionary = CFDictionaryCreateMutable(v3, 414, MEMORY[0x1E695E9D8], 0);
  do
  {
    CFDictionaryAddValue(sKnownSBufKeysDictionary, values[v4], v4);
    v4 = v4 + 1;
  }

  while (v4 != 414);
  sKnownSBufKeysArray = CFArrayCreate(v3, values, 414, MEMORY[0x1E695E9C0]);
  if (MEMORY[0x1EEE842A8])
  {
    v5 = FigCaptureCopySerializableKeys();
    sKnownCaptureKeysArray = v5;
    if (v5)
    {
      Count = CFArrayGetCount(v5);
      if (Count)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          v9 = sKnownSBufKeysDictionary;
          ValueAtIndex = CFArrayGetValueAtIndex(sKnownCaptureKeysArray, i);
          CFDictionaryAddValue(v9, ValueAtIndex, (i + 0x7FFF));
        }
      }
    }
  }
}

uint64_t FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData(uint64_t a1, unint64_t a2, __CFArray **a3)
{
  v3 = a3;
  v17 = 0;
  value = 0;
  if (!a3)
  {
    FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_7(&v19);
LABEL_25:
    Mutable = 0;
    goto LABEL_31;
  }

  if (!a1)
  {
    FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_6(&v19);
    goto LABEL_25;
  }

  if (!a2)
  {
    FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_5(&v19);
    goto LABEL_25;
  }

  v6 = FigThreadRunOnce(&sKnownSBufKeysInit, sbufAtom_InitializeKnownKeys);
  if (v6)
  {
    v14 = v6;
    Mutable = 0;
  }

  else
  {
    v7 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_4(&v19);
      goto LABEL_31;
    }

    v9 = figReadNEAtomHeader(a1, 0, a2, &v17 + 1, &v17);
    if (!v9)
    {
      if (HIDWORD(v17) == 1718776441)
      {
        v10 = v17;
        if (v17 <= a2)
        {
          if (v17 < 9)
          {
            v14 = 0;
            goto LABEL_19;
          }

          v16 = v3;
          v11 = 8;
          while (1)
          {
            v12 = figReadNEAtomHeader(a1, v11, v10, &v17 + 1, &v17);
            if (v12)
            {
LABEL_20:
              v14 = v12;
              v3 = v16;
              goto LABEL_33;
            }

            if (HIDWORD(v17) != 1717859171)
            {
              break;
            }

            v13 = v17;
            v12 = sbufAtom_copyFormatDescriptionFromAtom(v7, a1 + 8 + v11, v17 - 8, &value);
            if (v12)
            {
              goto LABEL_20;
            }

            CFArrayAppendValue(Mutable, value);
            if (value)
            {
              CFRelease(value);
              value = 0;
            }

            v11 += v13;
            if (v11 >= v10)
            {
              v14 = 0;
              v3 = v16;
              goto LABEL_19;
            }
          }

          FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_2(&v19);
          v14 = v19;
          v3 = v16;
          goto LABEL_32;
        }

        FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_3(&v19);
      }

      else
      {
        FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_1(&v19);
      }

LABEL_31:
      v14 = v19;
LABEL_32:
      if (!v14)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }

    v14 = v9;
  }

LABEL_33:
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

LABEL_19:
  *v3 = Mutable;
  return v14;
}

uint64_t figReadNEAtomHeader(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, _DWORD *a5)
{
  if (a2 + 8 > a3)
  {
    return 4294947652;
  }

  v6 = a1 + a2;
  v7 = *(a1 + a2);
  if (v7 <= 7)
  {
    figReadNEAtomHeader_cold_2(&v9);
    return v9;
  }

  else if (a3 - a2 < v7)
  {
    figReadNEAtomHeader_cold_1(&v8);
    return v8;
  }

  else
  {
    result = 0;
    *a4 = *(v6 + 4);
    *a5 = v7;
  }

  return result;
}

size_t FigRemote_CopyReplacementAttachmentsForSampleBuffer(const void *a1, CFArrayRef theArray, __CFDictionary **a3, __CFDictionary **a4)
{
  attachmentModeOut = 1;
  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
      if (CMGetAttachment(a1, ValueAtIndex, &attachmentModeOut))
      {
        break;
      }

LABEL_15:
      if (CFArrayGetCount(theArray) <= ++v11)
      {
        goto LABEL_18;
      }
    }

    if (attachmentModeOut)
    {
      if (attachmentModeOut != 1)
      {
        goto LABEL_20;
      }

      if (v9)
      {
        v13 = v9;
LABEL_14:
        CFDictionaryRemoveValue(v13, ValueAtIndex);
        goto LABEL_15;
      }

      v13 = figRemote_copyMutableDictionaryOfAttachments(a1, 1u);
      v9 = v13;
    }

    else
    {
      if (v10)
      {
        v13 = v10;
        goto LABEL_14;
      }

      v13 = figRemote_copyMutableDictionaryOfAttachments(a1, 0);
      v10 = v13;
    }

    if (!v13)
    {
LABEL_20:
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1301, v4, v17, v18);
      if (v9)
      {
        CFRelease(v9);
      }

      if (v10)
      {
        CFRelease(v10);
      }

      return v14;
    }

    goto LABEL_14;
  }

  v9 = 0;
  v10 = 0;
LABEL_18:
  v14 = 0;
  *a3 = v9;
  *a4 = v10;
  return v14;
}

CFMutableDictionaryRef figRemote_copyMutableDictionaryOfAttachments(CMAttachmentBearerRef target, CMAttachmentMode attachmentMode)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], target, attachmentMode);
  MutableCopy = FigCFDictionaryCreateMutableCopy(v2, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return MutableCopy;
}

size_t FigRemote_CreateSerializedAtomDataForSampleBufferWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, mach_port_t *a5, vm_address_t *a6, vm_size_t a7, vm_size_t *a8, const opaqueCMFormatDescription **a9, uint64_t *a10)
{
  buffer = 0;
  if (a5)
  {
    p_buffer = &buffer;
  }

  else
  {
    p_buffer = 0;
  }

  result = FigRemote_CreateSerializedAtomDataAndSurfaceForSampleBufferWithOptions(0, a1, a2, a3, a4, p_buffer, a6, a7, a8, a9, a10);
  if (a5 && !result)
  {
    result = buffer;
    if (buffer)
    {
      MachPort = IOSurfaceCreateMachPort(buffer);
      *a5 = MachPort;
      if (MachPort)
      {
        return 0;
      }

      else
      {
        FigRemote_CreateSerializedAtomDataForSampleBufferWithOptions_cold_1(&v17);
        return v17;
      }
    }

    else
    {
      *a5 = 0;
    }
  }

  return result;
}

size_t FigRemote_CreateSerializedAtomDataAndSurfaceForSampleBufferWithOptions(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, vm_address_t *a7, vm_size_t a8, vm_size_t *a9, const opaqueCMFormatDescription **a10, uint64_t *a11)
{
  cf = 0;
  v12 = FigRemote_CreateSerializedAtomDataAndSurfaceArrayForSampleBufferWithOptions(a1, a2, a3, a4, a5, &cf, a7, a8, a9, a10, a11);
  if (!v12)
  {
    if (!cf)
    {
      return v12;
    }

    FigRemote_CreateSerializedAtomDataAndSurfaceForSampleBufferWithOptions_cold_1(cf, a6, &cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

void _bbufBlockSourceFree(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x19A8DA090);
  }
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface(const __CFAllocator *a1, __IOSurface *a2, uint64_t a3, char *a4, int a5, const opaqueCMFormatDescription **a6, void **a7, _BYTE *a8, void *a9, uint64_t *a10, void *a11)
{
  v11 = a11;
  formatDescriptionOut = 0;
  sampleBufferOut = 0;
  v116 = 0;
  pixelBufferOut = 0;
  v115 = 0;
  v114 = 0;
  taggedBufferGroup = 0;
  memset(&v112[1] + 4, 0, 12);
  v111 = 0;
  v112[0] = 0;
  theAttachments = 0;
  v110 = 0;
  v108 = 0;
  v106 = *&kCMTimeInvalid.value;
  v107 = 0;
  v105 = 0;
  if (!a11)
  {
    sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_23(&sbufPTS);
    v13 = 0;
LABEL_279:
    v24 = 0;
    Mutable = 0;
    isa_low = LODWORD(sbufPTS.isa);
    goto LABEL_206;
  }

  v12 = a3;
  if (!a3)
  {
    sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_22(&sbufPTS);
LABEL_277:
    v13 = 0;
    goto LABEL_278;
  }

  v13 = a4;
  if (!a4)
  {
    sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_21(&sbufPTS);
LABEL_278:
    v11 = 0;
    goto LABEL_279;
  }

  if (a6)
  {
    FormatDescription = *a6;
  }

  else
  {
    FormatDescription = 0;
  }

  v89 = a8;
  v90 = a6;
  if (a7)
  {
    v17 = *a7;
  }

  else
  {
    v17 = 0;
  }

  v18 = FigThreadRunOnce(&sKnownSBufKeysInit, sbufAtom_InitializeKnownKeys);
  if (v18 || (v87 = a11, v88 = a7, v18 = figReadNEAtomHeader(v12, 0, v13, &v105 + 1, &v105), v18))
  {
    isa_low = v18;
    v13 = 0;
    v11 = 0;
    v24 = 0;
    goto LABEL_250;
  }

  if (HIDWORD(v105) != 1935832422)
  {
    sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_1(&sbufPTS);
    goto LABEL_277;
  }

  v22 = v105;
  if (v105 > v13)
  {
    sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_20(&sbufPTS);
    goto LABEL_277;
  }

  HIDWORD(v86) = a5;
  if (v105 < 9)
  {
    v49 = 0;
    v13 = 0;
    v11 = 0;
    numSampleTimingEntries = 0;
    v93 = 0;
    sampleTiming = 0;
    v94 = 0;
    v95 = 0;
    v24 = 0;
    v91 = 0;
    v96 = 0;
    LOBYTE(v23) = 0;
LABEL_122:
    v104 = v13;
    if (!a2 || v49)
    {
LABEL_145:
      if (v49 && (Count = CFArrayGetCount(v49), Count >= 1))
      {
        v54 = Count;
        Mutable = CFArrayCreateMutable(a1, Count, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_12(&sbufPTS);
          goto LABEL_287;
        }

        if (a2 && v54 == 1)
        {
          v121 = 0;
          v55 = CVPixelBufferCreateWithIOSurface(a1, a2, 0, &v121);
          if (v55)
          {
            isa_low = v55;
            goto LABEL_205;
          }

          sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_24(&v121, Mutable);
          v13 = v104;
        }

        else
        {
          CVPixelBufferCreate(a1, 0x10uLL, 0x10uLL, 0x20u, 0, &v114);
          if (!v114)
          {
            sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_11(&sbufPTS);
            goto LABEL_287;
          }

          do
          {
            CFArrayAppendValue(Mutable, v114);
            --v54;
          }

          while (v54);
          v13 = v104;
          if (v114)
          {
            CFRelease(v114);
            v114 = 0;
          }
        }

        v56 = FigTaggedBufferGroupCreate(a1, v49, Mutable, &taggedBufferGroup);
        if (v56)
        {
          goto LABEL_283;
        }

        if (!FormatDescription)
        {
          if (formatDescriptionOut)
          {
            CFRelease(formatDescriptionOut);
            formatDescriptionOut = 0;
          }

          v56 = FigTaggedBufferGroupFormatDescriptionCreate(a1, 1952606066, &formatDescriptionOut);
          if (!v56)
          {
            FormatDescription = formatDescriptionOut;
            goto LABEL_163;
          }

LABEL_283:
          isa_low = v56;
          goto LABEL_206;
        }
      }

      else
      {
        Mutable = 0;
      }

LABEL_163:
      if (pixelBufferOut && taggedBufferGroup)
      {
        sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_19(&sbufPTS);
      }

      else
      {
        v85 = v12;
        v102 = v24;
        if (pixelBufferOut)
        {
          v57 = CMSampleBufferCreateForImageBuffer(a1, pixelBufferOut, !(v86 & 0x100000000), 0, 0, FormatDescription, sampleTiming, &sampleBufferOut);
          goto LABEL_171;
        }

        if (taggedBufferGroup)
        {
          *&sbufPTS.isa = *&sampleTiming->presentationTimeStamp.value;
          sbufPTS.data = sampleTiming->presentationTimeStamp.epoch;
          v58 = *&sampleTiming->duration.value;
          sbufDuration.epoch = sampleTiming->duration.epoch;
          *&sbufDuration.value = v58;
          v57 = CMSampleBufferCreateForTaggedBufferGroup(a1, taggedBufferGroup, &sbufPTS, &sbufDuration, FormatDescription, &sampleBufferOut);
          goto LABEL_171;
        }

        if (v116)
        {
          v57 = CMSampleBufferCreateReadyForCVDataBuffer(a1, v116, FormatDescription, sampleTiming, &sampleBufferOut, v19, v20, v21);
          goto LABEL_171;
        }

        if (v11)
        {
          if (sampleTiming)
          {
            *&sbufPTS.isa = *&sampleTiming->presentationTimeStamp.value;
            sbufPTS.data = sampleTiming->presentationTimeStamp.epoch;
            v76 = *&sampleTiming->duration.value;
            sbufDuration.epoch = sampleTiming->duration.epoch;
            *&sbufDuration.value = v76;
            v77 = FigSampleBufferCreateForCaptionGroup(a1, v11, &sbufPTS, &sbufDuration, &sampleBufferOut, v19, v20, v21);
            if (v77)
            {
              isa_low = v77;
            }

            else
            {
              FormatDescription = CMSampleBufferGetFormatDescription(sampleBufferOut);
              if (FormatDescription)
              {
LABEL_172:
                v24 = Mutable;
                LOBYTE(allocator) = v23;
                cf = FormatDescription;
                isa = v11;
                a1 = v17;
                FigSampleBufferSetDecryptor(sampleBufferOut, v17);
                if (BYTE12(v106))
                {
                  *&sbufPTS.isa = v106;
                  sbufPTS.data = v107;
                  CMSampleBufferSetOutputPresentationTimeStamp(sampleBufferOut, &sbufPTS);
                }

                v59 = sampleBufferOut;
                v60 = v111;
                v61 = v112[0];
                v62 = v108;
                if (v108)
                {
                  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sampleBufferOut, 1u);
                  v64 = CFArrayGetCount(v62);
                  if (SampleAttachmentsArray)
                  {
                    v65 = CFArrayGetCount(SampleAttachmentsArray);
                  }

                  else
                  {
                    v65 = 0;
                  }

                  if (v64 != v65)
                  {
LABEL_282:
                    sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_17(&sbufPTS);
                    goto LABEL_258;
                  }

                  if (v64 >= 1)
                  {
                    v66 = 0;
                    while (1)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(v62, v66);
                      if (!ValueAtIndex)
                      {
                        break;
                      }

                      v68 = ValueAtIndex;
                      v69 = CFGetTypeID(ValueAtIndex);
                      if (v69 != CFDictionaryGetTypeID())
                      {
                        break;
                      }

                      v70 = CFArrayGetValueAtIndex(SampleAttachmentsArray, v66);
                      CFDictionaryApplyFunction(v68, CopyEntry, v70);
                      if (v64 == ++v66)
                      {
                        goto LABEL_184;
                      }
                    }

                    sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_18(&sbufPTS);
LABEL_258:
                    isa_low = LODWORD(sbufPTS.isa);
                    v13 = v104;
                    v71 = v88;
                    v72 = v85;
                    Mutable = v24;
                    v24 = v102;
                    if (LODWORD(sbufPTS.isa))
                    {
LABEL_271:
                      v11 = isa;
                      goto LABEL_206;
                    }

                    goto LABEL_188;
                  }
                }

LABEL_184:
                Mutable = v24;
                if (v61)
                {
                  CMSetAttachments(v59, v61, 1u);
                }

                v71 = v88;
                v72 = v85;
                v24 = v102;
                if (v60)
                {
                  CMSetAttachments(v59, v60, 0);
                }

LABEL_188:
                if (v89)
                {
                  *v89 = allocator;
                }

                if (a9)
                {
                  *a9 = v95 - v72;
                }

                if (a10)
                {
                  *a10 = v96;
                }

                *v87 = sampleBufferOut;
                sampleBufferOut = 0;
                v11 = isa;
                if (v90)
                {
                  v73 = *v90;
                  *v90 = cf;
                  if (cf)
                  {
                    CFRetain(cf);
                  }

                  if (v73)
                  {
                    CFRelease(v73);
                  }
                }

                if (v71)
                {
                  v74 = *v71;
                  *v71 = a1;
                  if (a1)
                  {
                    CFRetain(a1);
                  }

                  if (v74)
                  {
                    CFRelease(v74);
                  }
                }

                isa_low = 0;
                goto LABEL_205;
              }

              sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_13(&sbufPTS);
              isa_low = LODWORD(sbufPTS.isa);
            }

LABEL_291:
            v13 = v104;
            goto LABEL_206;
          }

          sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_14(&sbufPTS);
          goto LABEL_287;
        }

        if (!v93 || numSampleTimingEntries < 1)
        {
          v78 = v94;
          if (HIDWORD(v112[1]))
          {
            v79 = v24;
          }

          else
          {
            v78 = 0;
            v79 = 0;
          }

          v57 = CMSampleBufferCreate(a1, 0, !(v86 & 0x100000000), 0, 0, FormatDescription, HIDWORD(v112[1]), numSampleTimingEntries, sampleTiming, v78, v79, &sampleBufferOut);
LABEL_171:
          isa_low = v57;
          if (!v57)
          {
            goto LABEL_172;
          }

          goto LABEL_291;
        }

        if (HIDWORD(v112[1]))
        {
          if (v91 >= 16 * HIDWORD(v112[1]))
          {
            *&sbufPTS.isa = *&sampleTiming->presentationTimeStamp.value;
            sbufPTS.data = sampleTiming->presentationTimeStamp.epoch;
            v57 = CMAudioSampleBufferCreateWithPacketDescriptions(a1, 0, (v23 | BYTE4(v86) & 1) == 0, 0, 0, FormatDescription, HIDWORD(v112[1]), &sbufPTS, v93, &sampleBufferOut);
            goto LABEL_171;
          }

          sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_15(&sbufPTS);
        }

        else
        {
          sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_16(&sbufPTS);
        }

        v11 = 0;
      }

LABEL_287:
      isa_low = LODWORD(sbufPTS.isa);
LABEL_205:
      v13 = v104;
      goto LABEL_206;
    }

    if (v115)
    {
      v50 = CVDataBufferCreateWithIOSurface();
      if (!v50)
      {
        if (theAttachments)
        {
          CVBufferSetAttachments(v116, theAttachments, kCVAttachmentMode_ShouldPropagate);
        }

        if (!FormatDescription)
        {
          Mutable = 0;
          isa_low = 0;
          goto LABEL_206;
        }

        goto LABEL_144;
      }

LABEL_284:
      isa_low = v50;
      goto LABEL_250;
    }

    if (IOSurfaceGetProhibitUseCount())
    {
      v52 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(v52, *MEMORY[0x1E6966058], *MEMORY[0x1E695E4D0]);
      isa_low = CVPixelBufferCreateWithIOSurface(a1, a2, v52, &pixelBufferOut);
      if (v52)
      {
        CFRelease(v52);
      }

      v13 = v104;
      if (isa_low)
      {
        goto LABEL_250;
      }
    }

    else
    {
      isa_low = CVPixelBufferCreateWithIOSurface(a1, a2, 0, &pixelBufferOut);
      if (isa_low)
      {
        goto LABEL_250;
      }
    }

    if (v110)
    {
      CVBufferSetAttachments(pixelBufferOut, v110, kCVAttachmentMode_ShouldPropagate);
    }

    if (!FormatDescription || !CMVideoFormatDescriptionMatchesImageBuffer(FormatDescription, pixelBufferOut))
    {
      if (formatDescriptionOut)
      {
        CFRelease(formatDescriptionOut);
        formatDescriptionOut = 0;
      }

      v50 = CMVideoFormatDescriptionCreateForImageBuffer(a1, pixelBufferOut, &formatDescriptionOut);
      if (v50)
      {
        goto LABEL_284;
      }

      FormatDescription = formatDescriptionOut;
    }

LABEL_144:
    v49 = v112[2];
    goto LABEL_145;
  }

  v96 = 0;
  cf = FormatDescription;
  v23 = 0;
  v94 = 0;
  v95 = 0;
  v91 = 0;
  numSampleTimingEntries = 0;
  v93 = 0;
  v24 = 0;
  sampleTiming = 0;
  isa = 0;
  v13 = 0;
  v104 = (v12 + 8);
  allocator = *MEMORY[0x1E695E480];
  p_data = &sbufPTS.data;
  v25 = 8;
  while (1)
  {
    v26 = figReadNEAtomHeader(v12, v25, v22, &v105 + 1, &v105);
    if (v26)
    {
LABEL_255:
      isa_low = v26;
LABEL_256:
      Mutable = 0;
      goto LABEL_271;
    }

    v28 = &v104[v25];
    v29 = v105 - 8;
    if (SHIDWORD(v105) <= 1885631330)
    {
      break;
    }

    if (SHIDWORD(v105) <= 1935958387)
    {
      if (SHIDWORD(v105) > 1935766577)
      {
        if (HIDWORD(v105) != 1935897200)
        {
          if (HIDWORD(v105) == 1935766578)
          {
            p_theAttachments = &v111;
          }

          else
          {
            if (HIDWORD(v105) != 1935766644)
            {
              goto LABEL_91;
            }

            p_theAttachments = v112;
          }

LABEL_116:
          sbufAtom_copyDictionaryFromAtom(a1, v104 + v25, v105 - 8, p_theAttachments, v27, v19, v20, v21, packetDescriptions, v81, sampleSizeArray, v83, p_data, v85, v86, v87, v88, v89, v90, v91, numSampleTimingEntries, v93, v94, v95);
          if (v26)
          {
            goto LABEL_255;
          }

          goto LABEL_91;
        }

LABEL_43:
        v121 = 0;
        v120 = 0;
        if (v105 != 8)
        {
          v29 = CFDataCreate(allocator, v28, v29);
          if (!v17)
          {
            goto LABEL_79;
          }

          v33 = *(CMBaseObjectGetVTable(v17) + 16);
          if (*v33 >= 8uLL && (v34 = v33[34]) != 0)
          {
            v35 = v34(v17, v29, &v120);
            if (v35)
            {
              isa_low = v35;
            }

            else
            {
              if (v120 == 1)
              {
                v13 = CFRetain(v17);
                goto LABEL_84;
              }

LABEL_79:
              v42 = v13;
              sbufDuration.value = 0;
              *&sbufDuration.timescale = &sbufDuration;
              sbufDuration.epoch = 0x2000000000;
              v43 = getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc_ptr;
              v125 = getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc_ptr;
              if (!getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc_ptr)
              {
                sbufPTS.isa = MEMORY[0x1E69E9820];
                sbufPTS.info = 0x40000000;
                sbufPTS.data = __getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc_block_invoke;
                sbufPTS.length = &unk_1E74A4E78;
                p_sbufDuration = &sbufDuration;
                __getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc_block_invoke(&sbufPTS);
                v43 = *(*&sbufDuration.timescale + 24);
              }

              _Block_object_dispose(&sbufDuration, 8);
              if (!v43)
              {
                sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_2();
                goto LABEL_282;
              }

              v44 = v43(a1, v29, &v121);
              if (v44)
              {
                isa_low = v44;
                v13 = v42;
              }

              else
              {
                v13 = v121;
LABEL_84:
                isa_low = 0;
                v121 = 0;
              }
            }
          }

          else
          {
            isa_low = 4294954514;
          }

          if (v29)
          {
            CFRelease(v29);
          }

          if (v121)
          {
            CFRelease(v121);
          }

          if (isa_low)
          {
            goto LABEL_256;
          }

          v17 = v13;
          goto LABEL_91;
        }

        v13 = 0;
        goto LABEL_84;
      }

      if (HIDWORD(v105) == 1885631331)
      {
        if (HIDWORD(v112[1]))
        {
          if (((16 * HIDWORD(v112[1])) | 8uLL) <= v105)
          {
            v93 = &v104[v25];
            v91 = v105 - 8;
            goto LABEL_91;
          }

          sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_4(&sbufPTS);
        }

        else
        {
          sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_5(&sbufPTS);
        }

LABEL_270:
        Mutable = 0;
        isa_low = LODWORD(sbufPTS.isa);
        goto LABEL_271;
      }

      if (HIDWORD(v105) == 1935766137)
      {
        sbufAtom_copyArrayFromAtom(a1, v104 + v25, v105 - 8, &v108, v27, v19, v20, v21, packetDescriptions, v81, sampleSizeArray, v83, p_data, v85, v86, v87, v88, v89, v90, v91, numSampleTimingEntries, v93, v94, v95);
        if (v26)
        {
          goto LABEL_255;
        }
      }
    }

    else if (SHIDWORD(v105) > 1937008992)
    {
      if (HIDWORD(v105) == 1937008993)
      {
        if (v105 > 0x4F)
        {
          numSampleTimingEntries = v29 / 0x48;
          sampleTiming = &v104[v25];
          goto LABEL_91;
        }

        sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_9(&sbufPTS);
        goto LABEL_270;
      }

      if (HIDWORD(v105) == 1952673644)
      {
        v26 = sbufAtom_copyTagCollectionArrayFromAtom(a1, &v104[v25], v105 - 8, &v112[2]);
        if (v26)
        {
          goto LABEL_255;
        }
      }
    }

    else
    {
      if (HIDWORD(v105) == 1935958388)
      {
        v23 = 1;
        if (!HIDWORD(v112[1]))
        {
          HIDWORD(v112[1]) = 1;
        }

        v95 = &v104[v25];
        v96 = v105 - 8;
        goto LABEL_91;
      }

      if (HIDWORD(v105) == 1936943482)
      {
        if (v105 <= 0xB)
        {
          sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_7(&sbufPTS);
          goto LABEL_270;
        }

        if (v24)
        {
          free(v24);
        }

        v31 = v29 >> 2;
        v94 = v29 >> 2;
        if (v29 >= 4)
        {
          if (8 * v31)
          {
            v45 = malloc_type_malloc(8 * v31, 0x100004000313F17uLL);
            if (v45)
            {
              v24 = v45;
              v46 = 0;
              v47 = v29 >> 2;
              if (v94 <= 1)
              {
                v47 = 1;
              }

              do
              {
                *(v45 + v46) = *&v28[4 * v46];
                ++v46;
              }

              while (v47 != v46);
              goto LABEL_91;
            }
          }

LABEL_260:
          sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_6(&sbufPTS);
          v24 = 0;
          goto LABEL_270;
        }

        v32 = malloc_type_malloc(0, 0x100004000313F17uLL);
        if (!v32)
        {
          goto LABEL_260;
        }

        v24 = v32;
      }
    }

LABEL_91:
    v25 += v105;
    if (v25 >= v22)
    {
      v49 = v112[2];
      v11 = isa;
      FormatDescription = cf;
      goto LABEL_122;
    }
  }

  if (SHIDWORD(v105) > 1818456687)
  {
    if (HIDWORD(v105) != 1818456688)
    {
      if (HIDWORD(v105) == 1853058416)
      {
        if (v105 != 12)
        {
          sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_8(&sbufPTS);
          goto LABEL_270;
        }
      }

      else
      {
        if (HIDWORD(v105) != 1869640819)
        {
          goto LABEL_91;
        }

        if (v105 != 32)
        {
          sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_10(&sbufPTS);
          goto LABEL_270;
        }
      }

LABEL_76:
      __memcpy_chk();
      goto LABEL_91;
    }

    goto LABEL_43;
  }

  if (SHIDWORD(v105) > 1684108403)
  {
    if (SHIDWORD(v105) > 1768911715)
    {
      if (HIDWORD(v105) != 1768911716)
      {
        goto LABEL_91;
      }

      if (v105 != 9)
      {
        sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_3(&sbufPTS);
        goto LABEL_270;
      }

      goto LABEL_76;
    }

    switch(HIDWORD(v105))
    {
      case 0x64617474:
        p_theAttachments = &theAttachments;
        break;
      case 0x66647363:
        v26 = sbufAtom_copyFormatDescriptionFromAtom(a1, &v104[v25], v105 - 8, &formatDescriptionOut);
        if (v26)
        {
          goto LABEL_255;
        }

        cf = formatDescriptionOut;
        goto LABEL_91;
      case 0x69617474:
        p_theAttachments = &v110;
        break;
      default:
        goto LABEL_91;
    }

    goto LABEL_116;
  }

  if (HIDWORD(v105) == 1667330151)
  {
    v102 = v24;
    v36 = v23;
    v37 = v12;
    v38 = v13;
    sbufPTS.isa = 0;
    sbufDuration.value = 0;
    v39 = FigCaptionSerializerCreate(allocator, &sbufDuration);
    if (v39)
    {
      isa_low = v39;
      v40 = 0;
    }

    else
    {
      v40 = CFDataCreate(a1, v28, v29);
      isa_low = FigCaptionSerializerCreateCaptionGroupFromCFData(sbufDuration.value, v40, &sbufPTS);
      if (!isa_low)
      {
        isa = sbufPTS.isa;
        sbufPTS.isa = 0;
      }
    }

    if (sbufDuration.value)
    {
      CFRelease(sbufDuration.value);
    }

    if (v40)
    {
      CFRelease(v40);
    }

    if (sbufPTS.isa)
    {
      CFRelease(sbufPTS.isa);
    }

    v13 = v38;
    if (isa_low)
    {
      Mutable = 0;
      v11 = isa;
      v24 = v102;
      goto LABEL_206;
    }

    v12 = v37;
    v23 = v36;
    v24 = v102;
    goto LABEL_91;
  }

  if (HIDWORD(v105) != 1668310371)
  {
    goto LABEL_91;
  }

  v17 = 0;
  sbufPTS.isa = 0;
  if (v105 == 8)
  {
    goto LABEL_25;
  }

  if (v105 != 16)
  {
    isa_low = 4294966630;
    v11 = isa;
    goto LABEL_250;
  }

  v30 = FigCPECopyCryptorForSerializationToken(*v28, &sbufPTS.isa);
  v17 = sbufPTS.isa;
  if (!v30)
  {
LABEL_25:
    v13 = v17;
    goto LABEL_91;
  }

  isa_low = v30;
  v11 = isa;
  if (sbufPTS.isa)
  {
    CFRelease(sbufPTS.isa);
  }

LABEL_250:
  Mutable = 0;
LABEL_206:
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (v108)
  {
    CFRelease(v108);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v116)
  {
    CFRelease(v116);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v114)
  {
    CFRelease(v114);
  }

  if (taggedBufferGroup)
  {
    CFRelease(taggedBufferGroup);
  }

  if (v112[2])
  {
    CFRelease(v112[2]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v112[0])
  {
    CFRelease(v112[0]);
  }

  if (v111)
  {
    CFRelease(v111);
  }

  if (v110)
  {
    CFRelease(v110);
  }

  if (theAttachments)
  {
    CFRelease(theAttachments);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  free(v24);
  return isa_low;
}

size_t FigRemote_CreateSampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor(const __CFAllocator *a1, uint64_t a2, char *a3, int a4, OpaqueCMBlockBuffer *a5, const opaqueCMFormatDescription **a6, void **a7, CMSampleBufferRef *a8)
{
  sbuf = 0;
  v11 = sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface(a1, 0, a2, a3, 1, a6, a7, 0, 0, 0, &sbuf);
  if (v11)
  {
    goto LABEL_16;
  }

  if (!a5)
  {
    goto LABEL_10;
  }

  v11 = CMSampleBufferSetDataBuffer(sbuf, a5);
  if (v11)
  {
LABEL_16:
    SampleSizeArray = v11;
    goto LABEL_17;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  SampleSizeArray = FormatDescription;
  if (!FormatDescription)
  {
LABEL_11:
    if (!a4)
    {
LABEL_14:
      *a8 = sbuf;
      return SampleSizeArray;
    }

    v19 = CMSampleBufferSetDataReady(sbuf);
    goto LABEL_13;
  }

  if (CMFormatDescriptionGetMediaType(FormatDescription) != 1986618469 && CMFormatDescriptionGetMediaType(SampleSizeArray) != 1635088502 && CMFormatDescriptionGetMediaType(SampleSizeArray) != 1885954932)
  {
LABEL_10:
    SampleSizeArray = 0;
    goto LABEL_11;
  }

  SampleSizeArray = CMSampleBufferGetSampleSizeArray(sbuf, 0, 0, 0);
  if (SampleSizeArray != -12735)
  {
    goto LABEL_11;
  }

  DataLength = CMBlockBufferGetDataLength(a5);
  v19 = CMSampleBufferSetDataReadyWithNewSize(sbuf, 1, &DataLength, v14, v15, v16, v17, v18);
LABEL_13:
  SampleSizeArray = v19;
  if (!v19)
  {
    goto LABEL_14;
  }

LABEL_17:
  if (sbuf)
  {
    CFRelease(sbuf);
  }

  return SampleSizeArray;
}

uint64_t FigRemote_CreatePixelBufferFromSerializedAtomData(mach_port_t a1, void *a2, size_t a3, CVPixelBufferRef *a4)
{
  blockBufferOut = 0;
  HIDWORD(customBlockSource.AllocateBlock) = 0;
  customBlockSource.refCon = 0;
  *&customBlockSource.version = 0;
  customBlockSource.FreeBlock = _bbufBlockSourceFree;
  if (a1)
  {
    v7 = IOSurfaceLookupFromMachPort(a1);
    if (!v7)
    {
      FigRemote_CreatePixelBufferFromSerializedAtomData_cold_1(&v14);
      v10 = v14;
      goto LABEL_11;
    }

    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v7 = 0;
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  PixelBufferFromSerializedAtomDataAndSurface = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], a2, a3, *MEMORY[0x1E695E480], &customBlockSource, 0, a3, 0, &blockBufferOut);
  if (PixelBufferFromSerializedAtomDataAndSurface)
  {
    goto LABEL_9;
  }

  v9 = blockBufferOut;
LABEL_8:
  PixelBufferFromSerializedAtomDataAndSurface = FigRemote_CreatePixelBufferFromSerializedAtomDataAndSurface(v7, v9, a4);
LABEL_9:
  v10 = PixelBufferFromSerializedAtomDataAndSurface;
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_11:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v10;
}

uint64_t FigRemote_CreatePixelBufferFromSerializedAtomDataAndSurface(__IOSurface *a1, OpaqueCMBlockBuffer *a2, CVPixelBufferRef *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v29 = 0;
  v30 = 0;
  bytesPerRow = 0;
  *pixelFormatType = 0;
  v26 = 0;
  dataPointerOut = 0;
  theAttachments = 0;
  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  if (!a3)
  {
    FigRemote_CreatePixelBufferFromSerializedAtomDataAndSurface_cold_2(planeBaseAddress);
    goto LABEL_29;
  }

  DataPointer = FigThreadRunOnce(&sKnownSBufKeysInit, sbufAtom_InitializeKnownKeys);
  if (DataPointer)
  {
    goto LABEL_35;
  }

  if (a2)
  {
    DataLength = CMBlockBufferGetDataLength(a2);
    if (DataLength)
    {
      DataPointer = CMBlockBufferGetDataPointer(a2, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
      if (DataPointer)
      {
        goto LABEL_35;
      }

      v8 = lengthAtOffsetOut;
      DataLength = dataPointerOut;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    DataLength = 0;
  }

  DataPointer = sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData(DataLength, v8, &v31, &v30, &v29, pixelFormatType, &bytesPerRow + 1, &pixelFormatType[1], &bytesPerRow, &v26, &theAttachments);
  if (DataPointer)
  {
    goto LABEL_35;
  }

  v9 = *MEMORY[0x1E695E480];
  if (a1)
  {
    v10 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], a1, 0, a3);
    v11 = theAttachments;
    if (v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = theAttachments == 0;
    }

    if (v12)
    {
      if (!theAttachments)
      {
        return v10;
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (!v31)
  {
    FigRemote_CreatePixelBufferFromSerializedAtomDataAndSurface_cold_3(planeBaseAddress);
LABEL_29:
    v10 = LODWORD(planeBaseAddress[0]);
    goto LABEL_30;
  }

  v13 = dataPointerOut;
  v14 = v30;
  if (a2)
  {
    a2 = CFRetain(a2);
  }

  v15 = v26;
  if (v26 < 2)
  {
    v16 = CVPixelBufferCreateWithBytes(v9, pixelFormatType[0], HIDWORD(bytesPerRow), pixelFormatType[1], &v13[v14], bytesPerRow, _pixelbufferreleasecallback, a2, 0, a3);
    if (!v16)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

  *planeBaseAddress = 0u;
  v36 = 0u;
  v19 = pixelFormatType[0];
  v18 = pixelFormatType[1];
  v20 = HIDWORD(bytesPerRow);
  dataSize = v29;
  DataPointer = figReconstructPixelBufferPlaneInfo(&v13[v14], v29, v26, pixelFormatType[1], pixelFormatType[0], HIDWORD(bytesPerRow), planeBaseAddress, planeWidth, planeHeight, planeBytesPerRow);
  if (DataPointer)
  {
LABEL_35:
    v10 = DataPointer;
LABEL_30:
    v11 = theAttachments;
    if (!theAttachments)
    {
      return v10;
    }

    goto LABEL_25;
  }

  v16 = CVPixelBufferCreateWithPlanarBytes(v9, v19, v20, v18, &v13[v14], dataSize, v15, planeBaseAddress, planeWidth, planeHeight, planeBytesPerRow, _pixelbufferreleaseplanarcallback, a2, 0, a3);
  if (v16)
  {
LABEL_34:
    FigRemote_CreatePixelBufferFromSerializedAtomDataAndSurface_cold_1(v16, planeBaseAddress);
    goto LABEL_29;
  }

LABEL_23:
  v11 = theAttachments;
  if (!theAttachments)
  {
    return 0;
  }

LABEL_24:
  CVBufferSetAttachments(*a3, v11, kCVAttachmentMode_ShouldPropagate);
  v10 = 0;
LABEL_25:
  CFRelease(v11);
  return v10;
}

uint64_t sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData(uint64_t a1, unint64_t a2, _BYTE *a3, void *a4, uint64_t *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, void *a11)
{
  v43 = 0;
  v42 = 0;
  v41 = 0;
  HIDWORD(v40) = 0;
  v39 = 0;
  if (a2)
  {
    v36 = a3;
    v18 = figReadNEAtomHeader(a1, 0, a2, &v39 + 1, &v39);
    if (v18)
    {
LABEL_31:
      v26 = v18;
    }

    else
    {
      if (HIDWORD(v39) == 1885500774)
      {
        v19 = v39;
        if (v39 <= a2)
        {
          a3 = v36;
          if (v39 >= 9)
          {
            key = a4;
            v32 = a5;
            v33 = a6;
            v34 = a7;
            v35 = a8;
            v37 = 0;
            v38 = 0;
            value = *MEMORY[0x1E695E480];
            v20 = 8;
            while (1)
            {
              v18 = figReadNEAtomHeader(a1, v20, v19, &v39 + 1, &v39);
              if (v18)
              {
                goto LABEL_31;
              }

              v25 = v39;
              if (SHIDWORD(v39) > 1885889896)
              {
                switch(HIDWORD(v39))
                {
                  case 0x70686569:
                    if (v39 != 12)
                    {
                      sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_4(&v44 + 1);
                      goto LABEL_45;
                    }

                    goto LABEL_25;
                  case 0x70706C63:
                    if (v39 != 12)
                    {
                      sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_2(&v44 + 1);
                      goto LABEL_45;
                    }

                    goto LABEL_25;
                  case 0x70776964:
                    if (v39 != 12)
                    {
                      sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_5(&v44 + 1);
                      goto LABEL_45;
                    }

LABEL_25:
                    __memcpy_chk();
                    break;
                }
              }

              else
              {
                if (SHIDWORD(v39) <= 1885626739)
                {
                  if (HIDWORD(v39) != 1885499506)
                  {
                    if (HIDWORD(v39) == 1767994484)
                    {
                      sbufAtom_copyDictionaryFromAtom(value, a1 + 8 + v20, v39 - 8, &v43, v21, v22, v23, v24, v29, value, key, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
                      if (v18)
                      {
                        goto LABEL_31;
                      }
                    }

                    goto LABEL_26;
                  }

                  if (v39 != 12)
                  {
                    sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_3(&v44 + 1);
                    goto LABEL_45;
                  }

                  goto LABEL_25;
                }

                if (HIDWORD(v39) == 1885626740)
                {
                  v37 = a1 + 8 + v20;
                  v38 = v39 - 8;
                  goto LABEL_26;
                }

                if (HIDWORD(v39) == 1885762157)
                {
                  if (v39 != 12)
                  {
                    sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_6(&v44 + 1);
                    goto LABEL_45;
                  }

                  goto LABEL_25;
                }
              }

LABEL_26:
              v20 += v25;
              if (v20 >= v19)
              {
                a7 = v34;
                a8 = v35;
                a6 = v33;
                a3 = v36;
                if (v37 && v38)
                {
                  *v36 = 1;
                  *key = v37 - a1;
                  *v32 = v38;
                  goto LABEL_36;
                }

                goto LABEL_35;
              }
            }
          }

          goto LABEL_35;
        }

        sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_7(&v44 + 1);
      }

      else
      {
        sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_1(&v44 + 1);
      }

LABEL_45:
      v26 = HIDWORD(v44);
    }

    if (v43)
    {
      CFRelease(v43);
    }

    return v26;
  }

LABEL_35:
  *a3 = 0;
LABEL_36:
  v26 = 0;
  v27 = HIDWORD(v41);
  *a6 = v42;
  *a7 = v27;
  *a8 = HIDWORD(v42);
  *a9 = v41;
  *a10 = HIDWORD(v40);
  *a11 = v43;
  return v26;
}

void _pixelbufferreleaseplanarcallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void _pixelbufferreleasecallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigRemote_CreatePixelBufferFromSerializedAtomDataBlockBuffer(const __CFAllocator *a1, CMBlockBufferRef theBuffer, size_t a3, CVPixelBufferRef *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  dataPointerOut = 0;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v27 = 0;
  v25 = 0;
  v26 = 0;
  bytesPerRow = 0;
  *pixelFormatType = 0;
  v22 = 0;
  theAttachments = 0;
  blockBufferOut = 0;
  if (!a4)
  {
    FigRemote_CreatePixelBufferFromSerializedAtomDataBlockBuffer_cold_2(planeBaseAddress);
    goto LABEL_20;
  }

  v9 = DataLength;
  if (!CMBlockBufferIsRangeContiguous(theBuffer, 0, DataLength))
  {
    v14 = 4294947653;
    goto LABEL_13;
  }

  DataPointer = FigThreadRunOnce(&sKnownSBufKeysInit, sbufAtom_InitializeKnownKeys);
  if (DataPointer)
  {
    goto LABEL_24;
  }

  DataPointer = CMBlockBufferGetDataPointer(theBuffer, a3, 0, 0, &dataPointerOut);
  if (DataPointer)
  {
    goto LABEL_24;
  }

  DataPointer = sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData(dataPointerOut, v9, &v27, &v26, &v25, pixelFormatType, &bytesPerRow + 1, &pixelFormatType[1], &bytesPerRow, &v22, &theAttachments);
  if (DataPointer)
  {
    goto LABEL_24;
  }

  if (!v27)
  {
    FigRemote_CreatePixelBufferFromSerializedAtomDataBlockBuffer_cold_3(planeBaseAddress);
LABEL_20:
    v14 = LODWORD(planeBaseAddress[0]);
    goto LABEL_13;
  }

  v19 = 0;
  v11 = v25;
  DataPointer = CMBlockBufferCreateWithBufferReference(a1, theBuffer, v26 + a3, v25, 0, &blockBufferOut);
  if (DataPointer)
  {
    goto LABEL_24;
  }

  DataPointer = CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &v19);
  if (DataPointer)
  {
    goto LABEL_24;
  }

  v12 = v22;
  if (v22 >= 2)
  {
    *planeBaseAddress = 0u;
    v33 = 0u;
    v17 = pixelFormatType[0];
    v16 = pixelFormatType[1];
    v18 = HIDWORD(bytesPerRow);
    DataPointer = figReconstructPixelBufferPlaneInfo(v19, v11, v22, pixelFormatType[1], pixelFormatType[0], HIDWORD(bytesPerRow), planeBaseAddress, v31, planeHeight, planeBytesPerRow);
    if (!DataPointer)
    {
      v13 = CVPixelBufferCreateWithPlanarBytes(*MEMORY[0x1E695E480], v17, v18, v16, v19, v11, v12, planeBaseAddress, v31, planeHeight, planeBytesPerRow, _pixelbufferreleaseplanarbbufcallback, blockBufferOut, 0, a4);
      if (!v13)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }

LABEL_24:
    v14 = DataPointer;
    goto LABEL_13;
  }

  v13 = CVPixelBufferCreateWithBytes(*MEMORY[0x1E695E480], pixelFormatType[0], HIDWORD(bytesPerRow), pixelFormatType[1], v19, bytesPerRow, _pixelbufferreleasebbufcallback, blockBufferOut, 0, a4);
  if (v13)
  {
LABEL_23:
    FigRemote_CreatePixelBufferFromSerializedAtomDataBlockBuffer_cold_1(v13, planeBaseAddress);
    goto LABEL_20;
  }

LABEL_11:
  blockBufferOut = 0;
  if (!theAttachments)
  {
    return 0;
  }

  CVBufferSetAttachments(*a4, theAttachments, kCVAttachmentMode_ShouldPropagate);
  v14 = 0;
LABEL_13:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (theAttachments)
  {
    CFRelease(theAttachments);
  }

  return v14;
}

void _pixelbufferreleaseplanarbbufcallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void _pixelbufferreleasebbufcallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t sbufAtom_copyKeyValuePairFromAtom(const __CFAllocator *a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  if (!a4)
  {
    sbufAtom_copyKeyValuePairFromAtom_cold_3(&v32);
LABEL_36:
    v25 = v32;
    goto LABEL_37;
  }

  if (!a5)
  {
    sbufAtom_copyKeyValuePairFromAtom_cold_2(&v32);
    goto LABEL_36;
  }

  if (!a3)
  {
    v26 = 0;
    ValueAtIndex = 0;
LABEL_26:
    v25 = 0;
    *a4 = ValueAtIndex;
    *a5 = v26;
    return v25;
  }

  v28 = a4;
  v29 = a5;
  v8 = 0;
  ValueAtIndex = 0;
  v10 = a2 + 8;
  v32 = 0;
  while (1)
  {
    v11 = figReadNEAtomHeader(a2, v8, a3, &v32 + 1, &v32);
    if (v11)
    {
      v25 = v11;
      goto LABEL_30;
    }

    v15 = v8 + v32;
    if (v15 > a3)
    {
      break;
    }

    v16 = v32 - 8;
    if (ValueAtIndex)
    {
      sbufAtom_copyCFTypeFromAtom(a1, SHIDWORD(v32), (v10 + v8), v16, &cf, v12, v13, v14, v28, v29, v30, cf, v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v33[8], v33[9], v33[10]);
    }

    else
    {
      if (HIDWORD(v32) == 1768192107)
      {
        if (v32 != 10)
        {
          v25 = 4294947652;
          goto LABEL_37;
        }

        v17 = *(v10 + v8);
        v18 = &sKnownCaptureKeysArray;
        if (v17 <= 0x7FFE)
        {
          v18 = &sKnownSBufKeysArray;
        }

        v19 = *v18;
        if (!*v18 || (v17 <= 0x7FFE ? (v20 = v17) : (v20 = v17 - 0x7FFF), CFArrayGetCount(v19) <= v20))
        {
          v25 = 4294947651;
          goto LABEL_37;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v19, v20);
        CFRetain(ValueAtIndex);
        goto LABEL_22;
      }

      if (HIDWORD(v32) == 1937011307)
      {
        ValueAtIndex = CFStringCreateWithBytes(a1, (v10 + v8), v16, 0x8000100u, 0);
        goto LABEL_22;
      }

      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v24 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB343uLL, "<<<< FigSampleBufferSerialization >>>>", 0x100F, v30, v22, v23);
    }

    v25 = v24;
    if (v24)
    {
      goto LABEL_30;
    }

LABEL_22:
    v8 = v15;
    if (v15 >= a3)
    {
      v26 = cf;
      a4 = v28;
      a5 = v29;
      goto LABEL_26;
    }
  }

  sbufAtom_copyKeyValuePairFromAtom_cold_1(v33 + 1);
  v25 = HIDWORD(v33[0]);
LABEL_30:
  if (ValueAtIndex)
  {
    CFRelease(ValueAtIndex);
  }

LABEL_37:
  if (cf)
  {
    CFRelease(cf);
  }

  return v25;
}

uint64_t FigRemote_GetKnownNeroKeysForLightningAdapters()
{
  FigThreadRunOnce(&sKnownSBufKeysInit, sbufAtom_InitializeKnownKeys);
  if (FigRemote_GetKnownNeroKeysForLightningAdapters_onceToken != -1)
  {
    FigRemote_GetKnownNeroKeysForLightningAdapters_cold_1();
  }

  return FigRemote_GetKnownNeroKeysForLightningAdapters_neroKeys;
}

uint64_t FigNEAtomWriterBeginAtom(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v8 = v2;
    v9 = v3;
    FigNEAtomWriterBeginAtom_cold_1(&v7);
    return v7;
  }

  if (!*a1)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 24);
  if ((v4 + 8) <= *(a1 + 8))
  {
    *(*a1 + v4) = a2 << 32;
LABEL_6:
    v5 = 0;
    *(a1 + 32) = *(a1 + 24) + 8;
    *(a1 + 40) = 8;
    *(a1 + 48) = 1;
    return v5;
  }

  return 4294947647;
}

size_t FigNEAtomWriterEndAtom(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v3 = *(a1 + 40);
    if (HIDWORD(v3))
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB33FuLL, "<<<< FigSampleBufferSerialization >>>>", 0x416, v1, v5, v6);
    }

    else
    {
      if (*a1)
      {
        v8 = *(a1 + 24);
        if ((v8 + 4) > *(a1 + 8))
        {
          result = 4294947647;
          goto LABEL_12;
        }

        *(*a1 + v8) = v3;
        v3 = *(a1 + 40);
      }

      v9 = *(a1 + 16);
      if (v9)
      {
        *(v9 + 40) += v3;
        v3 = *(a1 + 40);
      }

      result = 0;
      *(a1 + 24) += v3;
    }
  }

  else
  {
    result = 0;
  }

LABEL_12:
  *(a1 + 48) = 0;
  return result;
}

uint64_t FigNEAtomWriterAppendData(int64x2_t *a1, const void *a2, size_t __n)
{
  if (a1[3].i8[0])
  {
    if (__n)
    {
      v5 = a1->u64[1];
      if (v5)
      {
        v6 = a1[2].i64[0];
        if (v6 + __n > v5)
        {
          return 4294947647;
        }

        if (a2)
        {
          memcpy((a1->i64[0] + v6), a2, __n);
        }
      }

      result = 0;
      a1[2] = vaddq_s64(a1[2], vdupq_n_s64(__n));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    FigNEAtomWriterAppendData_cold_1(&v8);
    return v8;
  }

  return result;
}

uint64_t sbufAtom_appendCFTypeAtom(__CFString *a1, uint64_t a2, uint64_t *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = CFGetTypeID(a1);
  if (v6 == CFArrayGetTypeID())
  {

    return sbufAtom_appendArrayAtom(a1, a2, 1634886009, a3);
  }

  else if (v6 == CFDictionaryGetTypeID())
  {

    return sbufAtom_appendDictionaryAtom(a1, a2, 1684628340, a3);
  }

  else if (v6 == CFNumberGetTypeID())
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v7 = a3[1];
    v13.i64[0] = *a3;
    v13.i64[1] = v7;
    v8 = a3[5] + a3[3];
    v14 = a3;
    v15 = v8;
    result = FigNEAtomWriterBeginAtom(&v13, 1852662390);
    if (!result)
    {
      Type = CFNumberGetType(a1);
      ByteSize = CFNumberGetByteSize(a1);
      if (*a3)
      {
        CFNumberGetValue(a1, Type, valuePtr);
      }

      v12 = Type;
      result = FigNEAtomWriterAppendData(&v13, &v12, 1uLL);
      if (!result)
      {
        result = FigNEAtomWriterAppendData(&v13, valuePtr, ByteSize);
        if (!result)
        {
          return FigNEAtomWriterEndAtom(&v13);
        }
      }
    }
  }

  else if (v6 == CFBooleanGetTypeID())
  {
    v13.i8[0] = CFBooleanGetValue(a1);
    return sbufAtom_appendAtomWithMemoryBlock(&v13, 1uLL);
  }

  else if (v6 == CFStringGetTypeID())
  {

    return sbufAtom_appendStringAtom(a1, 1937011318, a3);
  }

  else if (v6 == CFDataGetTypeID())
  {

    return sbufAtom_appendDataAtom(a1, 1684108406, a3);
  }

  else if (v6 == CFDateGetTypeID())
  {

    return sbufAtom_appendDateAtom();
  }

  else if (v6 == CGColorSpaceGetTypeID())
  {

    return sbufAtom_appendColorSpaceAtom(a1, a3);
  }

  else if (v6 == CFURLGetTypeID())
  {

    return sbufAtom_appendURLAtom(a1, a3);
  }

  else if (v6 == CMFormatDescriptionGetTypeID())
  {

    return sbufAtom_appendFormatDescriptionAtom(a1);
  }

  else if (v6 == CFNullGetTypeID())
  {

    return sbufAtom_appendAtomWithMemoryBlock(0, 0);
  }

  else
  {
    return 4294947656;
  }

  return result;
}

size_t sbufAtom_appendStringAtom(const __CFString *a1, uint64_t a2, void *a3)
{
  maxBufLen = 0;
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  v11.location = 0;
  v11.length = Length;
  CFStringGetBytes(a1, v11, 0x8000100u, 0x3Fu, 0, 0, 0, &maxBufLen);
  if (*a3)
  {
    v6 = malloc_type_malloc(maxBufLen, 0xD6D8DC01uLL);
    if (!v6)
    {
      sbufAtom_appendStringAtom_cold_1(&v10);
      appended = v10;
      goto LABEL_6;
    }

    v12.location = 0;
    v12.length = Length;
    if (CFStringGetBytes(a1, v12, 0x8000100u, 0x3Fu, 0, v6, maxBufLen, &maxBufLen) != Length)
    {
      appended = 4294947647;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
  }

  appended = sbufAtom_appendAtomWithMemoryBlock(v6, maxBufLen);
LABEL_6:
  free(v6);
  return appended;
}

size_t sbufAtom_appendDataAtom(const __CFData *a1, uint64_t a2, void *a3)
{
  Length = CFDataGetLength(a1);
  if (Length >= 1)
  {
    v9 = Length;
    if (*a3)
    {
      BytePtr = CFDataGetBytePtr(a1);
      if (!BytePtr)
      {
        v12 = malloc_type_malloc(v9, 0xD35BF1DAuLL);
        if (!v12)
        {
          sbufAtom_appendDataAtom_cold_1(&v13);
          v6 = 0;
          appended = v13;
          goto LABEL_3;
        }

        v10 = v12;
        v14.location = 0;
        v14.length = v9;
        CFDataGetBytes(a1, v14, v12);
        v6 = v10;
        goto LABEL_11;
      }

      v10 = BytePtr;
    }

    else
    {
      v10 = 0;
    }

    v6 = 0;
LABEL_11:
    appended = sbufAtom_appendAtomWithMemoryBlock(v10, v9);
    goto LABEL_3;
  }

  v6 = 0;
  appended = 0;
LABEL_3:
  free(v6);
  return appended;
}

size_t sbufAtom_appendColorSpaceAtom(CGColorSpace *a1, void *a2)
{
  cf = 0;
  v3 = CGColorSpaceCopyPropertyList(a1);
  CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList(v3, *MEMORY[0x1E695E480], &cf);
  if (CFDataFromCFPropertyList)
  {
    v5 = 1;
  }

  else
  {
    v5 = cf == 0;
  }

  if (!v5)
  {
    CFDataFromCFPropertyList = sbufAtom_appendDataAtom(cf, 1668051571, a2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return CFDataFromCFPropertyList;
}

size_t sbufAtom_appendURLAtom(const __CFURL *a1, void *a2)
{
  v3 = CFURLCopyAbsoluteURL(a1);
  if (v3)
  {
    v4 = v3;
    v5 = CFURLGetString(v3);
    if (v5)
    {
      appended = sbufAtom_appendStringAtom(v5, 1970433142, a2);
    }

    else
    {
      sbufAtom_appendURLAtom_cold_1(&v8);
      appended = v8;
    }

    CFRelease(v4);
  }

  else
  {
    sbufAtom_appendURLAtom_cold_2(&v9);
    return v9;
  }

  return appended;
}

CMItemCount sbufAtom_appendNumSamples(opaqueCMSampleBuffer *a1)
{
  result = CMSampleBufferGetNumSamples(a1);
  v2 = result;
  if (result)
  {
    return sbufAtom_appendAtomWithMemoryBlock(&v2, 4uLL);
  }

  return result;
}

size_t sbufAtom_appendPacketDescriptions(opaqueCMSampleBuffer *a1)
{
  packetDescriptionsSizeOut = 0;
  packetDescriptionsPointerOut = 0;
  result = CMSampleBufferGetAudioStreamPacketDescriptionsPtr(a1, &packetDescriptionsPointerOut, &packetDescriptionsSizeOut);
  if (!result && packetDescriptionsSizeOut)
  {
    NumSamples = CMSampleBufferGetNumSamples(a1);
    if (NumSamples == packetDescriptionsSizeOut >> 4)
    {
      return sbufAtom_appendAtomWithMemoryBlock(packetDescriptionsPointerOut, packetDescriptionsSizeOut);
    }

    else
    {
      sbufAtom_appendPacketDescriptions_cold_1(&v6);
      return v6;
    }
  }

  return result;
}

size_t sbufAtom_copyBackingIOSurfacesFromTaggedBufferGroup(OpaqueCMTaggedBufferGroup *a1, __CFArray **a2)
{
  Count = CMTaggedBufferGroupGetCount(a1);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    sbufAtom_copyBackingIOSurfacesFromTaggedBufferGroup_cold_2(&v21);
    return v21;
  }

  v7 = Mutable;
  if (Count < 1)
  {
LABEL_11:
    v13 = 0;
    *a2 = v7;
    return v13;
  }

  v8 = 0;
  while (1)
  {
    CVPixelBufferAtIndex = CMTaggedBufferGroupGetCVPixelBufferAtIndex(a1, v8);
    if (CVPixelBufferAtIndex)
    {
      IOSurface = CVPixelBufferGetIOSurface(CVPixelBufferAtIndex);
      goto LABEL_9;
    }

    CMSampleBufferAtIndex = CMTaggedBufferGroupGetCMSampleBufferAtIndex(a1, v8);
    if (!CMSampleBufferAtIndex)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v17 = v2;
      v18 = 2991;
LABEL_14:
      v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB345uLL, "<<<< FigSampleBufferSerialization >>>>", v18, v17, v15, v16);
      goto LABEL_15;
    }

    DataBuffer = CMSampleBufferGetDataBuffer(CMSampleBufferAtIndex);
    if (!DataBuffer)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v17 = v2;
      v18 = 2985;
      goto LABEL_14;
    }

    CMGetAttachment(DataBuffer, @"CVDataBuffer", 0);
    IOSurface = CVDataBufferGetIOSurface();
LABEL_9:
    if (!IOSurface)
    {
      break;
    }

    CFArrayAppendValue(v7, IOSurface);
    if (Count == ++v8)
    {
      goto LABEL_11;
    }
  }

  sbufAtom_copyBackingIOSurfacesFromTaggedBufferGroup_cold_1(&v20);
  v13 = v20;
LABEL_15:
  CFRelease(v7);
  return v13;
}

size_t sbufAtom_appendTagCollectionFromTaggedBufferGroup(uint64_t a1, uint64_t a2, void *a3)
{
  Count = FigTaggedBufferGroupGetCount();
  if (Count <= 0)
  {
    sbufAtom_appendTagCollectionFromTaggedBufferGroup_cold_4(&v17);
    return v17;
  }

  v7 = Count;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    sbufAtom_appendTagCollectionFromTaggedBufferGroup_cold_3(&v17);
    return v17;
  }

  v10 = Mutable;
  v11 = 0;
  while (1)
  {
    TagCollectionAtIndex = FigTaggedBufferGroupGetTagCollectionAtIndex(a1, v11);
    if (!TagCollectionAtIndex)
    {
      sbufAtom_appendTagCollectionFromTaggedBufferGroup_cold_2(&v17);
      goto LABEL_10;
    }

    v13 = FigTagCollectionCopyAsData(TagCollectionAtIndex, v8);
    if (!v13)
    {
      break;
    }

    v14 = v13;
    CFArrayAppendValue(v10, v13);
    CFRelease(v14);
    if (v7 == ++v11)
    {
      appended = sbufAtom_appendArrayAtom(v10, a2, 1952673644, a3);
      goto LABEL_11;
    }
  }

  sbufAtom_appendTagCollectionFromTaggedBufferGroup_cold_1(&v17);
LABEL_10:
  appended = v17;
LABEL_11:
  CFRelease(v10);
  return appended;
}

void sbufAtomAppendSampleSizes_MissingSampleSizes_LogOnce()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    sbufAtomAppendSampleSizes_MissingSampleSizes_LogOnce_cold_1();
  }

  FigLogBacktrace();
}

void *__getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaToolboxLibraryCore_frameworkLibrary_1)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 0x40000000;
    v5[3] = __MediaToolboxLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_tmp_195;
    v5[5] = v5;
    v6 = xmmword_1E74A4E98;
    v7 = 0;
    MediaToolboxLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v3 = v5[0];
    v2 = MediaToolboxLibraryCore_frameworkLibrary_1;
    if (MediaToolboxLibraryCore_frameworkLibrary_1)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = MediaToolboxLibraryCore_frameworkLibrary_1;
LABEL_5:
  result = dlsym(v2, "FigCPECryptorCreateCryptorFromSerializedRecipe");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaToolboxLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  MediaToolboxLibraryCore_frameworkLibrary_1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_73(pthread_once_t *a1)
{

  return FigThreadRunOnce(a1, sbufAtom_InitializeKnownKeys);
}

uint64_t OUTLINED_FUNCTION_6_26(int a1, int a2, int a3, const __CFAllocator *a4, int a5, int a6, size_t a7, int a8, CMBlockBufferRef *blockBufferOut)
{

  return CMBlockBufferCreateWithMemoryBlock(v9, v11, v12, a4, 0, 0, a7, 0, v10);
}

uint64_t OUTLINED_FUNCTION_27_7(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return figReadNEAtomHeader(v4, v5, v3, (v6 | 4), va);
}

uint64_t OUTLINED_FUNCTION_28_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, int a12, int a13)
{

  return figReadNEAtomHeader(a11, 0, a10, &a13, &a12);
}

size_t OUTLINED_FUNCTION_29_5(const char *a1, uint64_t *a2, uint64_t a3, const __CFAllocator *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{

  return FigSignalErrorAtGM(a1, a2, 0xFFFFB348uLL, a4, v8, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_40_1(uint64_t a1)
{

  return FigNEAtomWriterBeginAtom(a1, 1717859171);
}

uint64_t FigTestSupportIsAllowed()
{
  if (FigTestSupportIsAllowed_onceToken != -1)
  {
    FigTestSupportIsAllowed_cold_1();
  }

  return FigTestSupportIsAllowed_isInternalBuild;
}

uint64_t __FigTestSupportIsAllowed_block_invoke()
{
  FigTestSupportIsAllowed_isInternalBuild = FigDebugIsInternalBuild();
  result = os_variant_has_internal_content();
  FigTestSupportIsAllowed_isInternalBuild |= result;
  return result;
}

uint64_t FigTestSupportIsActive()
{
  if (FigTestSupportIsAllowed_onceToken != -1)
  {
    FigTestSupportIsAllowed_cold_1();
  }

  if (FigTestSupportIsAllowed_isInternalBuild)
  {
    return gFigTestSupportEnabled;
  }

  else
  {
    return 0;
  }
}

size_t RegisterFigVirtualCaptureCardBaseType()
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&sFigVirtualCaptureCardClassDesc, ClassID, 1, &sFigVirtualCaptureCardClassID, v1, v2, v3, v4);
}

uint64_t FigVirtualCaptureCardGetTypeID()
{
  FigThreadRunOnce(&FigVirtualCaptureCardGetClassID_sRegisterFigVirtualCaptureCardBaseTypeOnce, RegisterFigVirtualCaptureCardBaseType);
  v0 = sFigVirtualCaptureCardClassID;

  return CMBaseClassGetCFTypeID(v0);
}

size_t FigTaggedBufferGroupFormatDescriptionRegisterOnce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v9 = 0;
  v13 = figTaggedBufferGroupFormatDescriptionFinalize;
  v12 = figTaggedBufferGroupFormatDescriptionCopyDebugDesc;
  v10 = 16;
  v11 = figTaggedBufferGroupFormatDescriptionEqual;
  return FigDerivedFormatDescriptionRegister(0x74626772u, &v9, a3, a4, a5, a6, a7, a8);
}

size_t FigTaggedBufferGroupFormatDescriptionCreateWithExtensions(const __CFAllocator *a1, int a2, const __CFArray *a3, const void *a4, CFTypeRef *a5)
{
  cf = 0;
  if (!a5)
  {
    FigTaggedBufferGroupFormatDescriptionCreateWithExtensions_cold_2(&v29);
    return v29;
  }

  FigThreadRunOnce(&sFigTaggedBufferGroupFormatDescriptionRegisterOnce, FigTaggedBufferGroupFormatDescriptionRegisterOnce);
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    if (Count >= 1)
    {
      v14 = Count;
      v15 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v15);
        if (!ValueAtIndex)
        {
          break;
        }

        v17 = CFGetTypeID(ValueAtIndex);
        if (v17 != CMTagCollectionGetTypeID())
        {
          break;
        }

        if (v14 == ++v15)
        {
          goto LABEL_8;
        }
      }

      FigTaggedBufferGroupFormatDescriptionCreateWithExtensions_cold_1(&v29);
      return v29;
    }
  }

LABEL_8:
  v25 = FigDerivedFormatDescriptionCreate(a1, 0x74626772, a2, a4, &cf, v10, v11, v12);
  if (v25)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(cf, v18, v19, v20, v21, v22, v23, v24);
    *DerivedStorage = a2;
    *(DerivedStorage + 8) = FigCFArrayCreateCopy(a1, a3);
    *a5 = cf;
  }

  return v25;
}

Boolean CMTaggedBufferGroupFormatDescriptionMatchesTaggedBufferGroup(CMTaggedBufferGroupFormatDescriptionRef desc, CMTaggedBufferGroupRef taggedBufferGroup)
{
  v3 = desc;
  if (!desc)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE5AuLL, "(Fig)", 0xF1, v2, v18, v19);
    return v3;
  }

  if (!taggedBufferGroup)
  {
    v20 = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 0xFFFFCE5AuLL, "(Fig)", 0xF6, v2, v21, v22);
LABEL_11:
    LOBYTE(v3) = 0;
    return v3;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    CMTaggedBufferGroupFormatDescriptionMatchesTaggedBufferGroup_cold_1();
    goto LABEL_11;
  }

  v6 = Mutable;
  if (CMTaggedBufferGroupGetCount(taggedBufferGroup) >= 1)
  {
    v14 = 0;
    do
    {
      TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(taggedBufferGroup, v14);
      CFArrayAppendValue(v6, TagCollectionAtIndex);
      ++v14;
    }

    while (v14 < CMTaggedBufferGroupGetCount(taggedBufferGroup));
  }

  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(v3, v7, v8, v9, v10, v11, v12, v13);
  LOBYTE(v3) = *DerivedStorage == 1952606066 && compareTagCollections(v6, *(DerivedStorage + 8)) != 0;
  CFRelease(v6);
  return v3;
}

uint64_t compareTagCollections(CFArrayRef theArray, const __CFArray *a2)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a2)
    {
LABEL_3:
      v5 = CFArrayGetCount(a2);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_6:
  if (Count != v5)
  {
    return 0;
  }

  for (i = 0; ; ++i)
  {
    v7 = theArray ? CFArrayGetCount(theArray) : 0;
    if (i >= v7)
    {
      break;
    }

    ValueAtIndex = FigCFArrayGetValueAtIndex(theArray, i);
    v9 = 0;
    if (a2)
    {
LABEL_13:
      v10 = CFArrayGetCount(a2);
      goto LABEL_15;
    }

    while (1)
    {
      v10 = 0;
LABEL_15:
      if (v9 >= v10)
      {
        break;
      }

      v11 = FigCFArrayGetValueAtIndex(a2, v9);
      if (CFEqual(ValueAtIndex, v11))
      {
        break;
      }

      ++v9;
      if (a2)
      {
        goto LABEL_13;
      }
    }

    if (a2)
    {
      v12 = CFArrayGetCount(a2);
    }

    else
    {
      v12 = 0;
    }

    if (v12 == v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t FigTaggedBufferGroupFormatDescriptionCopyTagCollections(uint64_t a1, const __CFAllocator *a2, CFArrayRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  if (a1)
  {
    if (a3)
    {
      if (*DerivedStorage == 1952606066)
      {
        Copy = FigCFArrayCreateCopy(a2, *(DerivedStorage + 8));
        result = 0;
        *a3 = Copy;
      }

      else
      {
        FigTaggedBufferGroupFormatDescriptionCopyTagCollections_cold_1(&v14);
        return v14;
      }
    }

    else
    {
      FigTaggedBufferGroupFormatDescriptionCopyTagCollections_cold_2(&v15);
      return v15;
    }
  }

  else
  {
    FigTaggedBufferGroupFormatDescriptionCopyTagCollections_cold_3(&v16);
    return v16;
  }

  return result;
}

void figTaggedBufferGroupFormatDescriptionFinalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v8 = *(FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8) + 8);
  if (v8)
  {

    CFRelease(v8);
  }
}

__CFString *figTaggedBufferGroupFormatDescriptionCopyDebugDesc(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v10, 0);
  CFStringAppendFormat(Mutable, 0, @"\t\tsubType: '%c%c%c%c'", HIBYTE(*DerivedStorage), BYTE2(*DerivedStorage), BYTE1(*DerivedStorage), *DerivedStorage);
  return Mutable;
}

BOOL figTaggedBufferGroupFormatDescriptionEqual(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = FigDerivedFormatDescriptionGetDerivedStorage(a2, v10, v11, v12, v13, v14, v15, v16);
  return *DerivedStorage == *v17 && compareTagCollections(*(DerivedStorage + 8), *(v17 + 8));
}

size_t FigEndpointRemoteControlSessionStartServer()
{
  v8[0] = 1;
  v8[1] = HandleEndpointRemoteControlSessionRemoteMessage;
  v9 = 0u;
  v10 = 0u;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32(Mutable, @"xpcServerOption_SelfTerminationTimeout", 30, v1, v2, v3, v4, v5);
  v6 = FigXPCServerStart("com.apple.coremedia.endpointremotecontrolsession.xpc", v8, Mutable, &gEndpointRemoteControlSessionServer);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v6;
}

uint64_t FigXPCEndpointRemoteControlSessionServerAssociateNeighborFigEndpointRemoteControlSession(uint64_t a1, const void *a2, uint64_t a3)
{
  v10 = 0;
  SessionEventHandlerState = CreateSessionEventHandlerState(a2, &v10);
  v7 = v10;
  if (SessionEventHandlerState)
  {
    v8 = SessionEventHandlerState;
    goto LABEL_3;
  }

  v8 = FigXPCServerAssociateObjectWithNeighborProcess(gEndpointRemoteControlSessionServer, a1, a2, v10, DisposeSessionEventHandlerState_0, 0, a3);
  if (v8)
  {
LABEL_3:
    DisposeSessionEventHandlerState_0(v7);
  }

  return v8;
}

uint64_t CreateSessionEventHandlerState(const void *a1, uint64_t *a2)
{
  if (sRegisterFigEndpointRemoteControlSessionEventHandlerStateTypeOnce != -1)
  {
    CreateSessionEventHandlerState_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a1;
    if (a1)
    {
      CFRetain(a1);
    }

    result = 0;
  }

  else
  {
    CreateSessionEventHandlerState_cold_2(&v7);
    result = v7;
  }

  *a2 = v5;
  return result;
}

void DisposeSessionEventHandlerState_0(void *cf)
{
  if (cf)
  {
    v2 = cf[2];
    if (v2)
    {
      v3 = *(*(CMBaseObjectGetVTable(cf[2]) + 16) + 16);
      if (v3)
      {
        v3(v2, 0, 0);
      }
    }

    CFRelease(cf);
  }
}

uint64_t FigXPCEndpointRemoteControlSessionServerAssociateCopiedNeighborRemoteControlSession(uint64_t a1, const void *a2, uint64_t a3)
{
  v10 = 0;
  SessionEventHandlerState = CreateSessionEventHandlerState(a2, &v10);
  v7 = v10;
  if (SessionEventHandlerState)
  {
    v8 = SessionEventHandlerState;
    goto LABEL_3;
  }

  v8 = FigXPCServerAssociateCopiedObjectWithNeighborProcess(gEndpointRemoteControlSessionServer, a1, a2, v10, DisposeSessionEventHandlerState_0, 0, a3);
  if (v8)
  {
LABEL_3:
    DisposeSessionEventHandlerState_0(v7);
  }

  return v8;
}

uint64_t RegisterFigEndpointRemoteControlSessionEventHandlerStateType()
{
  result = _CFRuntimeRegisterClass();
  sFigEndpointRemoteControlSessionEventHandlerStateID = result;
  return result;
}

void *figEndpointRemoteControlSessionEventHandlerStateInit(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void figEndpointRemoteControlSessionEventHandlerStateFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  FigXPCRelease(*(a1 + 32));
  *(a1 + 32) = 0;
}

__CFString *figEndpointRemoteControlSessionEventHandlerStateCopyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigEndpointRemoteControlSessionEventHandlerState %p> for objectID %16llx", a1, a1[3]);
  return Mutable;
}

void *FigCopyCommonMemoryPool()
{
  if (sFigCommonMemoryPool != -1)
  {
    FigCopyCommonMemoryPool_cold_1();
  }

  FigSimpleMutexLock(qword_1ED4CCE58);
  v0 = FigCFWeakReferenceLoadAndRetain(&qword_1ED4CCE60);
  if (!v0)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"FigMemoryPool_LoggingName", @"CommonMemoryPool");
    v0 = CMMemoryPoolCreate(Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    FigCFWeakReferenceStore(&qword_1ED4CCE60, v0);
  }

  FigSimpleMutexUnlock(qword_1ED4CCE58);
  return v0;
}

uint64_t fig_initializeCommonMemoryPoolManagement()
{
  result = FigSimpleMutexCreate();
  qword_1ED4CCE58 = result;
  return result;
}

uint64_t FigCustomURLHandlerServerEnsure()
{
  if (FigCustomURLHandlerServerEnsure_sFigCustomURLHandlerServerOnce != -1)
  {
    FigCustomURLHandlerServerEnsure_cold_1();
  }

  return FigCustomURLHandlerServerEnsure_sFigCustomURLHandlerStartError;
}

dispatch_queue_t __FigCustomURLHandlerServerEnsure_block_invoke()
{
  fig_note_initialize_category_with_default_work_cf(&gFigCustomURLHandler2RemoteNote[1], @"customurlhandler_xpc_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 0, 0, gFigCustomURLHandler2RemoteNote);
  fig_note_initialize_category_with_default_work_cf(&dword_1ED4CC360, @"customurlhandler_xpc_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 0, 0, &qword_1ED4CC358);
  FigCustomURLHandlerServerEnsure_sFigCustomURLHandlerStartError = FigXPCServerStartWithNewXPCEndpoint("com.apple.coremedia.customurlhandler.xpc", figCustomURLHandlerServerStart_callbacks, 0, &gFigCustomURLHandlerServer);
  result = dispatch_queue_create("com.apple.coremedia.customurlhandlerserver.data", 0);
  _MergedGlobals_56 = result;
  return result;
}

uint64_t FigCustomURLHandlerServerAssociateObjectAndContentKeySessionByPID(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v20 = 0;
  v8 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  v8[1] = FigOSTransactionCreate("FigCustomURLHandler", 0, 0, 0);
  if (a3)
  {
    v9 = FigCFWeakReferenceHolderCreateWithReferencedObject(a3);
    if (!v9)
    {
      FigCustomURLHandlerServerAssociateObjectAndContentKeySessionByPID_cold_1(&v21, v10, v11, v12, v13, v14, v15, v16);
      return v21;
    }

    a3 = v9;
    v17 = v8[2];
    v8[2] = v9;
    CFRetain(v9);
    if (v17)
    {
      CFRelease(v17);
    }
  }

  v18 = FigXPCServerAssociateObjectWithNeighborProcessByPID(gFigCustomURLHandlerServer, a1, a2, v8, figCustomURLHandlerServer_disposeCompanion, 0, &v20);
  if (!v18)
  {
    *a4 = v20;
  }

  if (a3)
  {
    CFRelease(a3);
  }

  return v18;
}

void figCustomURLHandlerServer_disposeCompanion(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = a1[1];
  if (v3)
  {
    os_release(v3);
    a1[1] = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

uint64_t FigCustomURLHandlerServerRequestingClientCreate(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *MEMORY[0x1E695E480];
  if (FigCustomURLHandlerServerRequestingClientGetTypeID_sFigCustomURLHandlerServerRequestingClientRegisterOnce != -1)
  {
    FigCustomURLHandlerServerRequestingClientCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v15 = Instance;
    *(Instance + 16) = FigXPCRetain(a1);
    *(v15 + 24) = a2;
    Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    result = 0;
    *(v15 + 32) = Mutable;
    *a3 = v15;
  }

  else
  {
    FigCustomURLHandlerServerRequestingClientCreate_cold_2(&v18, v8, v9, v10, v11, v12, v13, v14);
    return v18;
  }

  return result;
}

double figCustomURLHandlerServerRequestingClient_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figCustomURLHandlerServerRequestingClient_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[2] = 0;
    xpc_release(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }
}

uint64_t __FigCustomURLHandlerServerRequestingClientGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigCustomURLHandlerServerRequestingClientGetTypeID_sFigCustomURLHandlerServerRequestingClientTypeID = result;
  return result;
}

void figCustomURLHandlerServer_shimDataCallback(uint64_t a1, uint64_t a2, const __CFDictionary *a3, OpaqueCMBlockBuffer *a4, unsigned int a5, __CFError *a6, void *a7)
{
  xdict = 0;
  valuePtr = a2;
  HIBYTE(v40) = 0;
  if (FigXPCCreateBasicMessage(0x63684443u, *(a1 + 24), &xdict))
  {
    goto LABEL_33;
  }

  v13 = *MEMORY[0x1E695E480];
  v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (!v14)
  {
    figCustomURLHandlerServer_shimDataCallback_cold_1(0, v15, v16, v17, v18, v19, v20, v21);
LABEL_33:
    FigXPCRelease(xdict);
    return;
  }

  v22 = v14;
  xpc_dictionary_set_uint64(xdict, "CustomURLHandler_RequestID", valuePtr);
  FigCFDictionaryGetBooleanIfPresent(*(a1 + 32), v22, &v40 + 7, v23, v24, v25, v26, v27, v40, xdict, valuePtr, v43, v44, cf[0], cf[1], cf[2], cf[3], cf[4]);
  if (HIBYTE(v40))
  {
    v28 = 0;
  }

  else
  {
    v44 = 0;
    cf[0] = 0;
    v43 = 0;
    if (FigCustomURLResponseInfoCopyRequestInfo(a3, cf) || FigCustomURLRequestInfoCreateMutableCopy(v13, cf[0], &v44, v29, v30, v31, v32, v33) || FigCustomURLRequestInfoSetCryptor(v44, 0) || FigCustomURLResponseInfoCreateMutable(v13, v44, &v43, v34, v35, v36, v37, v38) || FigCustomURLResponseInfoSetAllValuesFromResponseInfo(v43, a3) || FigCustomURLResponseInfoMakeNSSecureCodingTypesSerializable(v43))
    {
      v28 = 0;
      v39 = 0;
    }

    else
    {
      v28 = v43;
      v43 = 0;
      v39 = 1;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v44)
    {
      CFRelease(v44);
    }

    if (v43)
    {
      CFRelease(v43);
    }

    if (!v39 || FigXPCMessageSetCFDictionary(xdict, "CustomURLHandler_ResponseInfo", v28))
    {
      goto LABEL_27;
    }

    CFDictionarySetValue(*(a1 + 32), v22, *MEMORY[0x1E695E4D0]);
  }

  if ((a5 & 3) != 0)
  {
    CFDictionaryRemoveValue(*(a1 + 32), v22);
  }

  if (!FigXPCMessageSetBlockBuffer(xdict, "CustomURLHandler_BlockBuffer", a4))
  {
    xpc_dictionary_set_uint64(xdict, "CustomURLHandler_CallbackFlags", a5);
    if (!FigXPCMessageSetCFError(xdict, "CustomURLHandler_Error", a6) && !FigXPCMessageSetCFDictionary(xdict, "CustomURLHandler_FinalReport", a7))
    {
      xpc_connection_send_message(*(a1 + 16), xdict);
    }
  }

LABEL_27:
  FigXPCRelease(xdict);
  if (v28)
  {
    CFRelease(v28);
  }

  CFRelease(v22);
}

intptr_t figCustomURLHandlerServer_handleRequestShimCompletionHandler(const __CFData *a1, char a2, int a3)
{
  BytePtr = CFDataGetBytePtr(a1);
  *(BytePtr + 8) = a2;
  *(BytePtr + 3) = a3;
  v6 = *BytePtr;

  return dispatch_semaphore_signal(v6);
}

void handlerServerShimCompletionRec_dealloc(NSObject **a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_release(v2);
  }

  free(a1);
}

uint64_t FigEndpointExtendedGetClassID()
{
  if (_MergedGlobals_57 != -1)
  {
    FigEndpointExtendedGetClassID_cold_1();
  }

  return qword_1ED4CCEB0;
}

size_t FigEndpointExtendedGetClassIDCallback(void *a1)
{
  ClassID = FigEndpointGetClassID();

  return FigBaseClassRegisterClass(&FigEndpointExtendedGetClassIDCallback_sFigEndpointExtendedClassDesc, ClassID, 0, a1, v3, v4, v5, v6);
}

uint64_t RegisterFigCaptionSerializerType()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionSerializerID = result;
  return result;
}

uint64_t FigCaptionSerializerCreate(uint64_t a1, void ***a2)
{
  if (!a2)
  {
    FigCaptionSerializerCreate_cold_3(&v20);
    return v20;
  }

  FigThreadRunOnce(&sRegisterFigCaptionSerializerTypeOnce, RegisterFigCaptionSerializerType);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigCaptionSerializerCreate_cold_2();
    return 0;
  }

  v4 = Instance;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4[2] = Mutable;
  if (!Mutable)
  {
    FigCaptionSerializerCreate_cold_1(&v19);
    v17 = v19;
    goto LABEL_12;
  }

  v11 = FigCFDictionarySetInt32(Mutable, @"FigCaptionSerializerVersion", 1, v6, v7, v8, v9, v10);
  if (v11)
  {
    v17 = v11;
    goto LABEL_12;
  }

  v17 = FigCFDictionarySetInt32(v4[2], @"FigCaptionSerializerFormat", 1, v12, v13, v14, v15, v16);
  if (v17)
  {
LABEL_12:
    CFRelease(v4);
    return v17;
  }

  *a2 = v4;
  return v17;
}

uint64_t FigCaptionSerializerCopyProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  if (!a1)
  {
    FigCaptionSerializerCopyProperty_cold_4(&v10);
    return v10;
  }

  if (!cf1)
  {
    FigCaptionSerializerCopyProperty_cold_3(&v10);
    return v10;
  }

  if (!a4)
  {
    FigCaptionSerializerCopyProperty_cold_2(&v10);
    return v10;
  }

  if (!CFEqual(cf1, @"FigCaptionSerializerVersion") && !CFEqual(cf1, @"FigCaptionSerializerFormat"))
  {
    FigCaptionSerializerCopyProperty_cold_1(&v10);
    return v10;
  }

  Value = CFDictionaryGetValue(*(a1 + 16), cf1);
  v8 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  result = 0;
  *a4 = v8;
  return result;
}

uint64_t FigCaptionSerializerSetProperty(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  if (!a1)
  {
    FigCaptionSerializerSetProperty_cold_4(&v7);
    return v7;
  }

  if (!cf1)
  {
    FigCaptionSerializerSetProperty_cold_3(&v7);
    return v7;
  }

  if (!a3)
  {
    FigCaptionSerializerSetProperty_cold_2(&v7);
    return v7;
  }

  if (!CFEqual(cf1, @"FigCaptionSerializerVersion") && !CFEqual(cf1, @"FigCaptionSerializerFormat"))
  {
    FigCaptionSerializerSetProperty_cold_1(&v7);
    return v7;
  }

  CFDictionarySetValue(*(a1 + 16), cf1, a3);
  return 0;
}

uint64_t fcs_deserializeAndCreateFigCaptionData(const void *a1, CFTypeRef *a2)
{
  cf = 0;
  if (!a1)
  {
    fcs_deserializeAndCreateFigCaptionData_cold_6(&v16);
LABEL_24:
    v11 = v16;
    goto LABEL_14;
  }

  if (!a2)
  {
    fcs_deserializeAndCreateFigCaptionData_cold_5(&v16);
    goto LABEL_24;
  }

  v4 = FigCaptionDataCreateMutable(*MEMORY[0x1E695E480], &cf);
  if (v4)
  {
LABEL_19:
    v11 = v4;
    goto LABEL_14;
  }

  v5 = CFGetTypeID(a1);
  if (v5 != CFDictionaryGetTypeID())
  {
    fcs_deserializeAndCreateFigCaptionData_cold_1(&v16);
    goto LABEL_24;
  }

  Value = CFDictionaryGetValue(a1, @"Text");
  if (!Value)
  {
    fcs_deserializeAndCreateFigCaptionData_cold_4(&v16);
    goto LABEL_24;
  }

  v7 = Value;
  v8 = cf;
  v9 = *(*(CMBaseObjectGetVTable(cf) + 16) + 16);
  if (!v9)
  {
    v11 = 4294954514;
    goto LABEL_14;
  }

  v4 = v9(v8, v7);
  if (v4)
  {
    goto LABEL_19;
  }

  v14[0] = 0;
  v14[1] = cf;
  v10 = CFDictionaryGetValue(a1, @"Properties");
  if (!v10)
  {
    fcs_deserializeAndCreateFigCaptionData_cold_3(&v16);
    goto LABEL_24;
  }

  CFDictionaryApplyFunction(v10, fcs_deserializeCaptionPropertyApplier, v14);
  v11 = LODWORD(v14[0]);
  if (LODWORD(v14[0]))
  {
    goto LABEL_14;
  }

  v12 = CFDictionaryGetValue(a1, @"StyleProperties");
  if (!v12)
  {
    fcs_deserializeAndCreateFigCaptionData_cold_2(&v16);
    goto LABEL_24;
  }

  CFDictionaryApplyFunction(v12, fcs_deserializeCaptionStyleApplier, v14);
  v11 = LODWORD(v14[0]);
  if (!LODWORD(v14[0]))
  {
    *a2 = cf;
    return v11;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}