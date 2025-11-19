uint64_t playerfig_removeExcessImageQueuesAndSlotsFromAllWorkingOrLameDuckItems(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 536))
  {
    v48.length = CFArrayGetCount(*(DerivedStorage + 528));
    v48.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v48, *(DerivedStorage + 536));
    if ((FirstIndexOfValue & 0x8000000000000000) == 0)
    {
      v3 = 0;
      v37 = *MEMORY[0x1E695E480];
      v38 = DerivedStorage;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), v3);
        v5 = CMBaseObjectGetDerivedStorage();
        v6 = FigCFWeakReferenceHolderCopyReferencedObject();
        cf = 0;
        v47 = 0;
        if (*v5)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6 == 0;
        }

        v44 = v6;
        if (v7)
        {
          v17 = 0;
          v13 = 0;
          v12 = 0;
          Mutable = 0;
          v10 = 0;
          v14 = 0;
          ConcatenationOfTwoArrays = 0;
          v16 = 0;
          goto LABEL_63;
        }

        v8 = v6;
        v9 = CMBaseObjectGetDerivedStorage();
        if (!itemfig_shouldEnableMainVideo())
        {
          v13 = 0;
          v12 = 0;
          Mutable = 0;
          v10 = 0;
          v14 = 0;
          ConcatenationOfTwoArrays = 0;
          v16 = 0;
          v17 = 4294954433;
          goto LABEL_63;
        }

        v42 = v3;
        CFGetAllocator(v8);
        fp_visualContextArrayIfVideoOutputAllowed(*(v5 + 1776), *(v5 + 1200));
        MutableCopy = FigCFArrayCreateMutableCopy();
        if (!MutableCopy)
        {
          playerfig_removeExcessImageQueuesAndSlotsFromAllWorkingOrLameDuckItems_cold_4(&v45);
          v13 = 0;
          v12 = 0;
          Mutable = 0;
          v10 = 0;
          v14 = 0;
          ConcatenationOfTwoArrays = 0;
          v16 = 0;
          v17 = v45;
          goto LABEL_63;
        }

        if (FigUseVideoReceiverForCALayer())
        {
          v10 = 0;
          Mutable = 0;
          v12 = 0;
          v13 = 0;
          goto LABEL_33;
        }

        v18 = *(v5 + 1144);
        if (v18)
        {
          Count = CFArrayGetCount(v18);
        }

        else
        {
          Count = 0;
        }

        v20 = v9[28];
        v21 = v9[26];
        if (v21)
        {
          v21 = CFArrayGetCount(v21);
        }

        v22 = v21 + v20;
        if (v22 > Count)
        {
          playerfig_removeExcessImageQueuesAndSlotsFromAllWorkingOrLameDuckItems_cold_3(&v45);
          v13 = 0;
          v12 = 0;
          Mutable = 0;
          v10 = 0;
          v14 = 0;
          ConcatenationOfTwoArrays = 0;
          v17 = v45;
          v3 = v42;
          v16 = MutableCopy;
          goto LABEL_63;
        }

        v13 = FigCFArrayCreateMutableCopy();
        Mutable = CFArrayCreateMutable(v37, 0, MEMORY[0x1E695E9C0]);
        v23 = *(v5 + 1152);
        if (v23 && CFArrayGetCount(v23) >= 1)
        {
          v12 = FigCFArrayCreateMutableCopy();
          v10 = CFArrayCreateMutable(v37, 0, MEMORY[0x1E695E9C0]);
          if (v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v10 = 0;
          v12 = 0;
          if (v13)
          {
LABEL_24:
            v24 = CFArrayGetCount(v13);
            goto LABEL_26;
          }
        }

        v24 = 0;
LABEL_26:
        while (v24 > v22)
        {
          v25 = CFArrayGetValueAtIndex(v13, --v24);
          CFArrayAppendValue(Mutable, v25);
          CFArrayRemoveValueAtIndex(v13, v24);
        }

        if (v12)
        {
          v26 = CFArrayGetCount(v12);
        }

        else
        {
          v26 = 0;
        }

        while (v26 > v22)
        {
          v27 = CFArrayGetValueAtIndex(v12, --v26);
          CFArrayAppendValue(v10, v27);
          CFArrayRemoveValueAtIndex(v12, v26);
        }

        FigCFArrayAppendArray();
LABEL_33:
        v3 = v42;
        FigSimpleMutexLock();
        v28 = v9[33];
        if (v28)
        {
          v29 = CFRetain(v28);
          FigSimpleMutexUnlock();
          if (v29 && CFArrayGetCount(v29) >= 1)
          {
            FigCFArrayAppendArray();
          }
        }

        else
        {
          FigSimpleMutexUnlock();
          v29 = 0;
        }

        if (*(v5 + 656))
        {
          v47 = *(v5 + 832);
          *(v5 + 832) = 0;
          matched = FigImageQueueTableUpdateToMatchOutputsArray(*(v5 + 848), MutableCopy, *(v5 + 328), 0, 0, 0);
          if (!matched)
          {
            FigImageQueueTableSetTimebase(*(v5 + 848), *(v5 + 328));
            FigImageQueueTableCopyFigImageQueueArray(*(v5 + 848), &cf);
            matched = FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnComposition(a2, cf, *(v5 + 824), "itemfig_removeExcessImageQueuesAndSlots");
          }

          itemfig_removeImageQueueListenersForObsoleteImageQueues();
          *(v5 + 832) = cf;
          cf = 0;
        }

        else
        {
          v30 = *(v5 + 1040);
          if (v30)
          {
            v45 = 0;
            itemfig_getTrackStorage(ValueAtIndex, v30, &v45);
            v35 = v45;
            matched = FigImageQueueTableCopyFigImageQueueArray(*(v45 + 48), &v47);
            if (!matched)
            {
              matched = FigImageQueueTableUpdateToMatchOutputsArray(*(v35 + 48), MutableCopy, *(v5 + 328), 0, 0, 0);
              if (!matched)
              {
                FigImageQueueTableSetTimebase(*(v35 + 48), *(v5 + 328));
                FigImageQueueTableCopyFigImageQueueArray(*(v35 + 48), &cf);
                matched = FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnRenderPipeline(a2, cf, *(v35 + 16), "itemfig_removeExcessImageQueuesAndSlots");
              }
            }

            v3 = v42;
            itemfig_removeImageQueueListenersForObsoleteImageQueues();
          }

          else
          {
            matched = 0;
          }
        }

        if (!v10 || CFArrayGetCount(v10) < 1)
        {
          ConcatenationOfTwoArrays = 0;
          v14 = 0;
LABEL_51:
          FigSimpleMutexLock();
          v33 = *(v5 + 1144);
          *(v5 + 1144) = v13;
          if (v13)
          {
            CFRetain(v13);
          }

          if (v33)
          {
            CFRelease(v33);
          }

          v34 = *(v5 + 1152);
          *(v5 + 1152) = v12;
          if (v12)
          {
            CFRetain(v12);
          }

          if (v34)
          {
            CFRelease(v34);
          }

          FigSimpleMutexUnlock();
          v17 = matched;
          goto LABEL_60;
        }

        ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
        if (ConcatenationOfTwoArrays)
        {
          v14 = FigCFArrayCreateConcatenationOfTwoArrays();
          if (v14)
          {
            v31 = v9[109];
            v9[109] = ConcatenationOfTwoArrays;
            CFRetain(ConcatenationOfTwoArrays);
            if (v31)
            {
              CFRelease(v31);
            }

            v32 = v9[108];
            v9[108] = v14;
            CFRetain(v14);
            if (v32)
            {
              CFRelease(v32);
            }

            v3 = v42;
            goto LABEL_51;
          }

          playerfig_removeExcessImageQueuesAndSlotsFromAllWorkingOrLameDuckItems_cold_1(&v45);
        }

        else
        {
          playerfig_removeExcessImageQueuesAndSlotsFromAllWorkingOrLameDuckItems_cold_2(&v45);
          v14 = 0;
        }

        v17 = v45;
LABEL_60:
        v16 = MutableCopy;
        if (v29)
        {
          CFRelease(v29);
        }

        DerivedStorage = v38;
LABEL_63:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v47)
        {
          CFRelease(v47);
        }

        if (v16)
        {
          CFRelease(v16);
        }

        if (v12)
        {
          CFRelease(v12);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        if (ConcatenationOfTwoArrays)
        {
          CFRelease(ConcatenationOfTwoArrays);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        FPSupport_AppendDeferredTransactionChangeToRelease(a2, Mutable);
        if (v44)
        {
          CFRelease(v44);
        }

        if (v17)
        {
          goto LABEL_99;
        }

        v7 = v3++ == FirstIndexOfValue;
      }

      while (!v7);
    }
  }

  v17 = 0;
LABEL_99:
  FigSimpleMutexUnlock();
  return v17;
}

uint64_t playerfig_gracefullyAddImageQueues(uint64_t a1, const void *a2)
{
  videoDesc[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 52) != 4)
  {
    if (!dword_1EAF16A10)
    {
LABEL_90:
      matched = 4294954433;
      goto LABEL_77;
    }

LABEL_86:
    LODWORD(cf) = 0;
    LOBYTE(value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_90;
  }

  v4 = *(DerivedStorage + 536);
  if (v4 != CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0))
  {
    if (!dword_1EAF16A10)
    {
      goto LABEL_90;
    }

    goto LABEL_86;
  }

  v5 = *(DerivedStorage + 536);
  v6 = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = v7;
  videoDesc[0] = 0;
  cf = 0;
  v53[0] = 0;
  if (*v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (!v9)
  {
    v10 = CMBaseObjectGetDerivedStorage();
    if (FigUseVideoReceiverForCALayer())
    {
      v11 = 0;
      v12 = 0;
      Count = 0;
    }

    else
    {
      v14 = *(v6 + 1144);
      if (v14)
      {
        Count = CFArrayGetCount(v14);
      }

      else
      {
        Count = 0;
      }

      v11 = v10[28];
      v15 = v10[26];
      if (v15)
      {
        v12 = CFArrayGetCount(v15);
      }

      else
      {
        v12 = 0;
      }
    }

    FigSimpleMutexLock();
    v16 = v10[33];
    if (v16)
    {
      v17 = CFRetain(v16);
    }

    else
    {
      v17 = 0;
    }

    FigSimpleMutexUnlock();
    if (!*(v6 + 1040))
    {
      playerfig_gracefullyAddImageQueues_cold_1(&value);
      v20 = 0;
      v21 = 0;
      MutableCopy = 0;
      matched = value;
      goto LABEL_61;
    }

    v18 = *(v6 + 392);
    if (!v18 || CFArrayGetCount(v18) < 1)
    {
      v20 = 0;
      v21 = 0;
      MutableCopy = 0;
      matched = 4294954433;
      goto LABEL_61;
    }

    v47 = Count;
    v48 = v12;
    CFGetAllocator(v8);
    fp_visualContextArrayIfVideoOutputAllowed(*(v6 + 1776), *(v6 + 1200));
    MutableCopy = FigCFArrayCreateMutableCopy();
    v45 = a2;
    v46 = v5;
    if (FigUseVideoReceiverForCALayer())
    {
      v20 = 0;
      v21 = 0;
LABEL_23:
      FigCFArrayAppendArray();
      if (*(v6 + 656))
      {
        matched = FigImageQueueTableUpdateToMatchOutputsArray(*(v6 + 848), MutableCopy, *(v6 + 328), 0, 0, 0);
        if (!matched)
        {
          FigImageQueueTableSetTimebase(*(v6 + 848), *(v6 + 328));
          FigImageQueueTableCopyFigImageQueueArray(*(v6 + 848), &cf);
          FigImageQueueArraySetProperty();
          v39 = *(v6 + 1184);
          if (v39)
          {
            itemfig_setVideoEnhancementModeOnImageQueues(v46, v39);
          }

          itemfig_enableImageQueueTimingAndSetDurationOnFigImageQueueArray();
          matched = FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnComposition(v45, cf, *(v6 + 824), "itemfig_gracefullyAddImageQueuesForCurrentVideoOutputsToImageQueueTable");
        }

        v23 = *(v6 + 832);
        v24 = cf;
        *(v6 + 832) = cf;
        if (v24)
        {
          CFRetain(v24);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        goto LABEL_34;
      }

      v25 = *(v6 + 1040);
      if (!v25)
      {
        matched = 0;
LABEL_34:
        if (!FigUseVideoReceiverForCALayer())
        {
          FigSimpleMutexLock();
          v26 = *(v6 + 1144);
          *(v6 + 1144) = v20;
          if (v20)
          {
            CFRetain(v20);
          }

          if (v26)
          {
            CFRelease(v26);
          }

          v27 = *(v6 + 1152);
          *(v6 + 1152) = v21;
          if (v21)
          {
            CFRetain(v21);
          }

          if (v27)
          {
            CFRelease(v27);
          }

          FigSimpleMutexUnlock();
        }

        goto LABEL_61;
      }

      value = 0;
      TrackStorage = itemfig_getTrackStorage(v46, v25, &value);
      if (!TrackStorage)
      {
        v41 = value;
        matched = FigImageQueueTableUpdateToMatchOutputsArray(*(value + 6), MutableCopy, *(v6 + 328), 0, 0, 0);
        if (!matched)
        {
          FigImageQueueTableSetTimebase(*(v41 + 6), *(v6 + 328));
          FigImageQueueTableCopyFigImageQueueArray(*(v41 + 6), &cf);
          itemfig_enableImageQueueTimingAndSetDurationOnFigImageQueueArray();
          matched = FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnRenderPipeline(v45, cf, *(v41 + 2), "itemfig_gracefullyAddImageQueuesForCurrentVideoOutputsToImageQueueTable");
        }

        goto LABEL_34;
      }

      matched = TrackStorage;
LABEL_61:
      if (v17)
      {
        CFRelease(v17);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_71;
    }

    if (v11 < 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = FigCFArrayCreateMutableCopy();
    }

    v20 = FigCFArrayCreateMutableCopy();
    v28 = *(v6 + 1008);
    v29 = *(v6 + 1040);
    v30 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v30)
    {
      v43 = MutableCopy;
      v31 = v30(v28, v29, v53, 0);
      if (v31)
      {
        matched = v31;
      }

      else
      {
        v44 = v17;
        v32 = itemfig_copyFormatDescription(v53[0], videoDesc);
        if (!v32)
        {
          Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc[0]);
          if (v47 < v48 + v11)
          {
            v34 = Dimensions;
            v35 = HIDWORD(Dimensions);
            if (v11 >= 1)
            {
              v36 = &v50;
            }

            else
            {
              v36 = 0;
            }

            v37 = v11 + v48 - v47;
            do
            {
              value = 0;
              v50 = 0;
              FPSupport_EnsureCAImageQueue(&value, v36, v34, v35);
              if (v11 >= 1)
              {
                FigCFArrayAppendInt32();
              }

              CFArrayAppendValue(v20, value);
              if (value)
              {
                CFRelease(value);
              }

              --v37;
            }

            while (v37);
          }

          MutableCopy = v43;
          FigCFArrayAppendArray();
          v17 = v44;
          v21 = v49;
          goto LABEL_23;
        }

        matched = v32;
      }
    }

    else
    {
      matched = 4294954514;
    }

    v21 = v49;
    goto LABEL_61;
  }

  matched = 0;
LABEL_71:
  if (v53[0])
  {
    CFRelease(v53[0]);
  }

  if (videoDesc[0])
  {
    CFRelease(videoDesc[0]);
  }

  if (v8)
  {
    CFRelease(v8);
  }

LABEL_77:
  FigSimpleMutexUnlock();
  return matched;
}

uint64_t playerfig_removeAllImageQueuesFromAllWorkingOrLameDuckItems()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 536))
  {
    v7.length = CFArrayGetCount(*(DerivedStorage + 528));
    v7.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v7, *(DerivedStorage + 536));
    if ((FirstIndexOfValue & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = FirstIndexOfValue + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), v2);
        if (FigUseVideoReceiverForCALayer())
        {
          itemfig_clearAllImageQueueTables(ValueAtIndex);
        }

        else
        {
          itemfig_removeAllImageQueues(ValueAtIndex);
        }

        ++v2;
      }

      while (v3 != v2);
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t playerfig_resetAlreadyPostedFirstVideoFrameEnqueuedNotificationFlagFromAllWorkingOrLameDuckItems()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 536))
  {
    v6.length = CFArrayGetCount(*(DerivedStorage + 528));
    v6.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v6, *(DerivedStorage + 536));
    if ((FirstIndexOfValue & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = FirstIndexOfValue + 1;
      do
      {
        CFArrayGetValueAtIndex(*(DerivedStorage + 528), v2);
        *(CMBaseObjectGetDerivedStorage() + 914) = 0;
        ++v2;
      }

      while (v3 != v2);
    }
  }

  return FigSimpleMutexUnlock();
}

CFIndex playerfig_mustDisturbPlaybackWhenSettingAudioPropertyOnCurrentItem(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 536))
  {
    return 1;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 528);
  if (!v5)
  {
    return 1;
  }

  if (CFArrayGetCount(v5) < 1)
  {
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 528), 0);
  v7 = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (!*(v8 + 352) || *(v8 + 480))
    {
      return 1;
    }
  }

  if (*(v4 + 536) == ValueAtIndex)
  {
    return 0;
  }

  result = *(v7 + 368);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result)
    {
      if (result <= 1)
      {
        v10 = *(CFArrayGetValueAtIndex(*(v7 + 368), 0) + 3);
        if (v10)
        {
          return v10 != *(v4 + 584);
        }
      }

      return 1;
    }
  }

  return result;
}

void playerfig_setClosedCaptionsDisplayRequested(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 305) != a2)
  {
    *(DerivedStorage + 305) = a2;
    playerfig_updateClosedCaptionsDisplayForItem(a1, 0);

    playerfig_updateCaptionOrSubtitleHintOnVideoPipeline(a1, 0);
  }
}

void playerfig_setPreferredLanguageLists(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 760);
  *(DerivedStorage + 760) = a2;
  FigSimpleMutexUnlock();
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t playerfig_setResourceConservationLevelAndUpdateWhenPaused(int a1, int a2)
{
  v44 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (dword_1EAF16A10)
  {
    HIDWORD(v18) = 0;
    BYTE3(v18) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 68) = a2;
  v6 = *(DerivedStorage + 48);
  result = FigSimpleMutexUnlock();
  if (v6 == 0.0)
  {
    return playerfig_updateEffectiveResourceConservationLevel(a1, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, SBYTE2(v17), BYTE3(v17), SHIDWORD(v17), v18, v19, v20, v21, v22, v23[0], v24, v25[0], v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, vars0, vars8);
  }

  return result;
}

void playerfig_rebuildRenderPipelines_disturbIfInLameDuckGap(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 528);
  if (!v3 || CFArrayGetCount(v3) < 1 || playerfig_isCurrentItemQuiescent() || (playerfig_rebuildRenderPipelines_disturbIfInLameDuckGap_cold_1(DerivedStorage, a1, DerivedStorage + 520) & 1) != 0)
  {
    playerfig_rebuildRenderPipelines_disturbIfInLameDuckGap_cold_2();
  }
}

void playerfig_traceVideoTargetEvent(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  theString = 0;
  CMBaseObject = FigVideoTargetGetCMBaseObject(a2);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, 0x1F0B32A78, *MEMORY[0x1E695E480], &theString);
    v4 = theString;
  }

  else
  {
    v4 = 0;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    *buffer = 0;
    if (v4)
    {
      if (CFStringGetLength(v4) <= 8)
      {
        v5.length = CFStringGetLength(v4);
      }

      else
      {
        v5.length = 8;
      }

      v5.location = 0;
      CFStringGetBytes(v4, v5, 0, 0x3Fu, 0, buffer, 8, 0);
    }

    strncpy(__dst, buffer, 8uLL);
    kdebug_trace();
    v4 = theString;
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void itemfig_setVideoEnhancementModeOnImageQueues(uint64_t a1, uint64_t a2)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (*(DerivedStorage + 656))
  {
    v6 = *(DerivedStorage + 848);
    if (v6)
    {
      FigImageQueueTableCopyFigImageQueueArray(v6, &cf);
      FigImageQueueArraySetProperty();
    }
  }

  else
  {
    v7 = *(DerivedStorage + 1040);
    if (v7 && (itemfig_setVideoEnhancementModeOnImageQueues_cold_1(v19, a1, v7) & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  v8 = *(v5 + 1088);
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        v18 = 0;
        v17 = 0;
        FigCFArrayGetInt32AtIndex();
        itemfig_getTrackStorage(a1, v18, &v17);
        v12 = v17;
        if (v17)
        {
          if (*(v17 + 4) == 1986618469)
          {
            v13 = *(v17 + 216);
            if (v13)
            {
              if (CFArrayGetCount(v13) >= 1)
              {
                v14 = *(v12 + 248);
                if (v14)
                {
                  FigBaseObject = FigRenderPipelineGetFigBaseObject(v14);
                  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v16)
                  {
                    v16(FigBaseObject, @"VideoEnhancementMode", a2);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t playerfig_maybeUndoQueueingForItem(uint64_t a1, __CFString *a2)
{
  v95 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v79 = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 528));
  v96.location = 0;
  v96.length = Count;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v96, a2);
  context = 0;
  v7 = fp_copyPlayQueueDescription();
  if (dword_1EAF16A10)
  {
    v83 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (!FirstIndexOfValue)
  {
    if (!dword_1EAF16A10)
    {
      return 0;
    }

LABEL_19:
    v83 = 0;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    goto LABEL_25;
  }

  v9 = *(DerivedStorage + 536);
  if (!v9)
  {
    if (!dword_1EAF16A10)
    {
      return 0;
    }

    goto LABEL_19;
  }

  v97.location = 0;
  v97.length = Count;
  v10 = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v97, v9);
  if (FirstIndexOfValue > v10)
  {
    if (dword_1EAF16A10)
    {
      v83 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
LABEL_25:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return 0;
    }

    return 0;
  }

  v12 = v10;
  v13 = *(v79 + 360);
  if (!v13)
  {
    if (!dword_1EAF16A10)
    {
      return 0;
    }

    goto LABEL_19;
  }

  CFSetApplyFunction(v13, fp_writeTrueIfARenderPipelineDoesntImplementCancelAndFlushTransition, &context);
  if (context)
  {
    if (dword_1EAF16A10)
    {
      v83 = 0;
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      goto LABEL_25;
    }

    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), FirstIndexOfValue - 1);
  v17 = CMBaseObjectGetDerivedStorage();
  if (!*(v17 + 488))
  {
    if (dword_1EAF16A10)
    {
      v83 = 0;
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      goto LABEL_25;
    }

    return 0;
  }

  v18 = v17;
  if (dword_1EAF16A10)
  {
    v83 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v78 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 536))
  {
    v21 = CMBaseObjectGetDerivedStorage();
    if (!*(v21 + 480))
    {
      v22 = v21;
      FigPlaybackBossInterruptQueueing(*(v21 + 352));
      FigPlaybackBossGoQuiescent(*(v22 + 352));
      *(v22 + 480) = 1;
    }
  }

  v23 = *(v18 + 488);
  v80[0] = *(v18 + 328);
  v80[1] = v23;
  v81 = 0;
  CFSetApplyFunction(*(v79 + 360), fp_callCancelAndFlushTransition, v80);
  result = v81;
  if (!v81)
  {
    do
    {
      v24 = CFArrayGetValueAtIndex(*(DerivedStorage + 528), FirstIndexOfValue);
      itemfig_antiprepare(v24);
      ++FirstIndexOfValue;
    }

    while (v12 + 1 != FirstIndexOfValue);
    v25 = *(v18 + 488);
    if (v25)
    {
      CFRelease(v25);
      *(v18 + 488) = 0;
    }

    v26 = 1;
    *(v18 + 496) = 1;
    *(DerivedStorage + 536) = ValueAtIndex;
    *(DerivedStorage + 544) = 0;
    v27 = CMBaseObjectGetDerivedStorage();
    if (*(v27 + 536))
    {
      v28 = CMBaseObjectGetDerivedStorage();
      v29 = *(v28 + 360);
      if (v29)
      {
        v30 = *(v27 + 584);
        if (v30)
        {
          v26 = 0;
          if (CFSetContainsValue(v29, v30))
          {
            goto LABEL_55;
          }
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v28 = 0;
    }

    v31 = *(v27 + 584);
    if (v31)
    {
      playerfig_removeAudioRenderPipelineListeners(a1, v31);
      v32 = *(v27 + 584);
      if (v32)
      {
        CFRelease(v32);
        *(v27 + 584) = 0;
      }
    }

    v33 = *(v27 + 688);
    if (v33)
    {
      CFRelease(v33);
      *(v27 + 688) = 0;
    }

    v34 = *(v27 + 632);
    if (v34)
    {
      CFRelease(v34);
      *(v27 + 632) = 0;
    }

    v35 = *(v27 + 624);
    if (v35)
    {
      CFRelease(v35);
      *(v27 + 624) = 0;
    }

    v36 = *(v27 + 640);
    if (v36)
    {
      CFRelease(v36);
      *(v27 + 640) = 0;
    }

    v37 = *(v27 + 648);
    if (v37)
    {
      CFRelease(v37);
      *(v27 + 648) = 0;
    }

LABEL_55:
    v38 = *(v27 + 664);
    if (v38)
    {
      v39 = CFArrayGetCount(v38);
      if (v39 >= 1)
      {
        v40 = v39;
        v41 = 0;
        while (1)
        {
          v42 = CFArrayGetValueAtIndex(*(v27 + 664), v41);
          if (v26)
          {
            break;
          }

          if (v28)
          {
            v43 = v42;
            v44 = *(v28 + 360);
            if (v44)
            {
              if (!CFSetContainsValue(v44, v43))
              {
                break;
              }
            }
          }

          if (v40 == ++v41)
          {
            goto LABEL_69;
          }
        }

        if (CFArrayGetCount(*(v27 + 664)) >= 1)
        {
          do
          {
            v45 = CFArrayGetValueAtIndex(*(v27 + 664), 0);
            playerfig_removeAudioRenderPipelineListeners(a1, v45);
            CFArrayRemoveValueAtIndex(*(v27 + 664), 0);
          }

          while (CFArrayGetCount(*(v27 + 664)) > 0);
        }

        v46 = *(v27 + 664);
        if (v46)
        {
          CFRelease(v46);
          *(v27 + 664) = 0;
        }
      }
    }

    if ((v26 & 1) == 0)
    {
LABEL_69:
      v47 = *(v27 + 592);
      if (v47)
      {
        if (!v28 || (v48 = *(v28 + 360)) == 0 || CFSetContainsValue(v48, v47))
        {
LABEL_77:
          v51 = *(v27 + 672);
          if (v51)
          {
            CFRelease(v51);
            *(v27 + 672) = 0;
          }

          if (v26)
          {
            goto LABEL_84;
          }

          v52 = *(v27 + 608);
          if (!v52)
          {
            goto LABEL_84;
          }

          if (!v28)
          {
            if (!*(v27 + 600))
            {
LABEL_95:
              v58 = *(v27 + 600);
              if (v58)
              {
                CFRelease(v58);
                *(v27 + 600) = 0;
              }

              v59 = *(v27 + 696);
              if (v59)
              {
                CFRelease(v59);
                *(v27 + 696) = 0;
              }
            }

LABEL_99:
            v60 = *(v27 + 680);
            if (v60)
            {
              v61 = CFArrayGetCount(v60);
              if (v61 >= 1)
              {
                v62 = v61;
                v63 = 0;
                while (1)
                {
                  v64 = CFArrayGetValueAtIndex(*(v27 + 680), v63);
                  if (v26)
                  {
                    break;
                  }

                  if (v28)
                  {
                    v65 = v64;
                    v66 = *(v28 + 360);
                    if (v66)
                    {
                      if (!CFSetContainsValue(v66, v65))
                      {
                        break;
                      }
                    }
                  }

                  if (v62 == ++v63)
                  {
                    goto LABEL_110;
                  }
                }

                v67 = *(v27 + 680);
                if (v67)
                {
                  CFRelease(v67);
                  *(v27 + 680) = 0;
                }
              }
            }

LABEL_110:
            v68 = fp_copyPlayQueueDescription();
            if (dword_1EAF16A10)
            {
              v83 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v70 = v83;
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
                if (a1)
                {
                  v72 = (CMBaseObjectGetDerivedStorage() + 972);
                }

                else
                {
                  v72 = "";
                }

                v85 = 136315906;
                v86 = "playerfig_maybeUndoQueueingForItem";
                v87 = 2048;
                v88 = a1;
                v89 = 2082;
                v90 = v72;
                v91 = 2114;
                v92 = v68;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (v68)
            {
              CFRelease(v68);
            }

            return 0;
          }

          v53 = *(v28 + 360);
          if (v53)
          {
            if (!CFSetContainsValue(v53, v52))
            {
LABEL_84:
              v54 = *(v27 + 608);
              if (v54)
              {
                CFRelease(v54);
                *(v27 + 608) = 0;
              }

              v55 = *(v27 + 704);
              if (v55)
              {
                CFRelease(v55);
                *(v27 + 704) = 0;
              }

              if (v26)
              {
                goto LABEL_95;
              }
            }
          }

          v56 = *(v27 + 600);
          if (!v56)
          {
            goto LABEL_95;
          }

          if (v28)
          {
            v57 = *(v28 + 360);
            if (v57)
            {
              if (!CFSetContainsValue(v57, v56))
              {
                goto LABEL_95;
              }
            }
          }

          goto LABEL_99;
        }
      }
    }

    v49 = *(v27 + 592);
    if (v49)
    {
      CFRelease(v49);
      *(v27 + 592) = 0;
    }

    v50 = *(v27 + 616);
    if (v50)
    {
      CFRelease(v50);
      *(v27 + 616) = 0;
    }

    goto LABEL_77;
  }

  if (v81 == -12857)
  {
    if (dword_1EAF16A10)
    {
      v83 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v74 = v83;
      if (os_log_type_enabled(v73, type))
      {
        v75 = v74;
      }

      else
      {
        v75 = v74 & 0xFFFFFFFE;
      }

      if (v75)
      {
        if (a1)
        {
          v76 = (CMBaseObjectGetDerivedStorage() + 972);
        }

        else
        {
          v76 = "";
        }

        if (a2)
        {
          v77 = (CMBaseObjectGetDerivedStorage() + 2096);
        }

        else
        {
          v77 = "";
        }

        v85 = 136316162;
        v86 = "playerfig_maybeUndoQueueingForItem";
        v87 = 2048;
        v88 = a1;
        v89 = 2082;
        v90 = v76;
        v91 = 2048;
        v92 = a2;
        v93 = 2082;
        v94 = v77;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 4294954439;
  }

  return result;
}

uint64_t fp_writeTrueIfARenderPipelineDoesntImplementCancelAndFlushTransition(uint64_t a1, _BYTE *a2)
{
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  if (!*(v5 + 80))
  {
    *a2 = 1;
  }

  return result;
}

uint64_t fp_callCancelAndFlushTransition(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    v3 = result;
    v4 = *(a2 + 8);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v5)
    {
      result = v5(v3, v4);
    }

    else
    {
      result = 4294954514;
    }

    *(a2 + 16) = result;
  }

  return result;
}

uint64_t itemfig_CachePrimingCompleted()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void itemfig_formatReaderTracksChanged()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    if (*(DerivedStorage + 352))
    {
      if (dword_1EAF16A10)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
    }

    CFRelease(v2);
  }
}

void itemfig_removeFromPlayQueueIfAdvanceAtEnd_f(const void *a1)
{
  itemfig_removeFromPlayQueueIfAdvanceAtEnd(a1);

  CFRelease(a1);
}

void itemfig_assetDownloadComplete(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  v5 = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10 >= 3)
  {
    HIDWORD(v21) = 0;
    BYTE3(v21) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v4)
  {
    v7 = *DerivedStorage == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if (!*v5)
    {
      FigSimpleMutexLock();
      DerivedStorage[1370] = 1;
      v8 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (!*(v8 + 2185) && *(v8 + 2160) && *(v8 + 2144))
      {
        v15 = *MEMORY[0x1E695E480];
        Current = CFAbsoluteTimeGetCurrent();
        v17 = CFDateCreate(v15, Current);
        if (v17)
        {
          itemfig_assetDownloadComplete_cold_1((v8 + 2160), v8 + 2144, v17);
        }

        else
        {
          itemfig_assetDownloadComplete_cold_2();
        }
      }

      FigSimpleMutexUnlock();
      if (!DerivedStorage[1])
      {
        itemfig_configureDownloadForItem(a2, 0, v9, v10, v11, v12, v13, v14, v18, v19, v20, v21, v22, v23, v24, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10], v26[11], v26[12], v26[13], v26[14], v26[15], v26[16], v26[17], v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
      }

      playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer();
      FigSimpleMutexUnlock();
    }

    goto LABEL_15;
  }

  if (v4)
  {
LABEL_15:
    CFRelease(v4);
  }
}

void itemfig_copyChosenAlternateTrackIDsDictionary(uint64_t a1, const __CFAllocator *a2, __CFDictionary **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = MEMORY[0x1E695E480];
  if (*(DerivedStorage + 1036))
  {
    valuePtr = *(DerivedStorage + 1036);
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(Mutable, @"Audio", v8);
    CFRelease(v8);
  }

  if (*(DerivedStorage + 1056))
  {
    valuePtr = *(DerivedStorage + 1056);
    v9 = CFNumberCreate(*v7, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(Mutable, @"Subtitle", v9);
    CFRelease(v9);
  }

  *a3 = Mutable;
}

uint64_t FigPlaybackItemGetDuration(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigCPEProtectorIsApplicationAuthorized(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (!*v4)
  {
    return 4294954514;
  }

  v5 = v4[4];
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a1, 1, a2);
}

uint64_t FigCPEProtectorIsContentAuthorized(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (!*v4)
  {
    return 4294954514;
  }

  v5 = v4[6];
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a1, 1, a2);
}

uint64_t itemfig_createPlayabilityMetricsDictionary(uint64_t a1, const __CFAllocator *a2, CFDictionaryRef *a3)
{
  keys[7] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  valuePtr = 0;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  keys[0] = @"BytesStillNeededToEnd";
  keys[1] = @"DurationFromNowToEnd";
  keys[2] = @"CurrentMeasuredBytesPerSecond";
  keys[3] = @"RawMeasuredBytesPerSecond";
  keys[4] = @"BandwidthSlopFactor";
  keys[5] = @"EstimatedTimeToLikelyToKeepUp";
  v13 = 0;
  keys[6] = @"RemoteIPAddress";
  v21 = 0;
  *a3 = 0;
  FigSimpleMutexLock();
  PlayabilityMetrics = FigPlayabilityMonitorGetPlayabilityMetrics(*(DerivedStorage + 600), &valuePtr, &v18, &v17, &v16, &v15, &v14);
  if (PlayabilityMetrics || (PlayabilityMetrics = FigPlayabilityMonitorCopyRemoteIPAddress(*(DerivedStorage + 600), &v13), PlayabilityMetrics))
  {
    v10 = PlayabilityMetrics;
    FigSimpleMutexUnlock();
  }

  else
  {
    v7 = *MEMORY[0x1E695E480];
    v8 = 6;
    values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, &valuePtr);
    values[1] = CFNumberCreate(v7, kCFNumberFloat64Type, &v18);
    values[2] = CFNumberCreate(v7, kCFNumberFloat64Type, &v17);
    values[3] = CFNumberCreate(v7, kCFNumberFloat64Type, &v16);
    values[4] = CFNumberCreate(v7, kCFNumberFloat64Type, &v15);
    values[5] = CFNumberCreate(v7, kCFNumberFloat64Type, &v14);
    if (v13)
    {
      v21 = v13;
      v8 = 7;
    }

    v9 = 0;
    while (values[v9])
    {
      if (v8 == ++v9)
      {
        v10 = 0;
        *a3 = CFDictionaryCreate(a2, keys, values, v8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        goto LABEL_9;
      }
    }

    v10 = 4294954434;
LABEL_9:
    FigSimpleMutexUnlock();
    v11 = values;
    do
    {
      if (*v11)
      {
        CFRelease(*v11);
      }

      ++v11;
      --v8;
    }

    while (v8);
  }

  return v10;
}

uint64_t itemfig_handleSetProperty(void *a1, uint64_t a2, const void *a3, const __CFDictionary *a4, _BYTE *a5)
{
  v323 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a5 = 1;
  if (!*DerivedStorage)
  {
    v10 = DerivedStorage;
    v11 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v11)
    {
      return 0;
    }

    v12 = v11;
    v13 = CMBaseObjectGetDerivedStorage();
    if (CFEqual(a3, @"PlaybackItemProperties"))
    {
      if (a1)
      {
        if (a4)
        {
          TypeID = CFDictionaryGetTypeID();
          if (TypeID == CFGetTypeID(a4))
          {
            v15 = CMBaseObjectGetDerivedStorage();
            Value = CFDictionaryGetValue(a4, @"AVItemPlaybackProperties_RampInDuration");
            if (Value)
            {
              v17 = Value;
              v18 = CFNumberGetTypeID();
              if (v18 == CFGetTypeID(v17))
              {
                *(v15 + 1332) = 0;
                CFNumberGetValue(v17, kCFNumberFloatType, (v15 + 1332));
                v19 = *(v15 + 1332);
                v20 = 0;
                if (v19 < 0.0)
                {
LABEL_12:
                  *(v15 + 1332) = v20;
                  goto LABEL_13;
                }

                if (v19 > 0.8)
                {
                  v20 = 1061997773;
                  goto LABEL_12;
                }
              }
            }

LABEL_13:
            v21 = CFDictionaryGetValue(a4, @"AVItemPlaybackProperties_RampOutDuration");
            if (v21)
            {
              v22 = v21;
              v23 = CFNumberGetTypeID();
              if (v23 == CFGetTypeID(v22))
              {
                *(v15 + 1336) = 0;
                CFNumberGetValue(v22, kCFNumberFloatType, (v15 + 1336));
                v24 = *(v15 + 1336);
                v25 = 0;
                if (v24 < 0.0)
                {
LABEL_18:
                  *(v15 + 1336) = v25;
                  goto LABEL_19;
                }

                if (v24 > 0.8)
                {
                  v25 = 1061997773;
                  goto LABEL_18;
                }
              }
            }

LABEL_19:
            v26 = CFDictionaryGetValue(a4, @"AVItemPlaybackProperties_GaplessHeuristicInfo");
            if (v26)
            {
              v27 = v26;
              v28 = CFNumberGetTypeID();
              if (v28 == CFGetTypeID(v27))
              {
                valuePtr.start.value = 0;
                CFNumberGetValue(v27, kCFNumberSInt64Type, &valuePtr);
                *(v15 + 920) = valuePtr.start.value;
              }
            }

            v29 = CFDictionaryGetValue(a4, @"AVItemPlaybackProperties_GaplessEncodingDelayInFrames");
            if (v29 && (v30 = v29, v31 = CFNumberGetTypeID(), v31 == CFGetTypeID(v30)))
            {
              CFNumberGetValue(v30, kCFNumberSInt32Type, (v15 + 924));
              v32 = 1;
            }

            else
            {
              v32 = 0;
            }

            v43 = CFDictionaryGetValue(a4, @"AVItemPlaybackProperties_GaplessEncodingDrainInFrames");
            if (v43)
            {
              v44 = v43;
              v45 = CFNumberGetTypeID();
              if (v45 == CFGetTypeID(v44))
              {
                CFNumberGetValue(v44, kCFNumberSInt32Type, (v15 + 928));
                v32 = 1;
              }
            }

            v46 = CFDictionaryGetValue(a4, @"AVItemPlaybackProperties_GaplessDurationInFrames");
            if (v46)
            {
              v47 = v46;
              v48 = CFNumberGetTypeID();
              if (v48 == CFGetTypeID(v47))
              {
                CFNumberGetValue(v47, kCFNumberSInt64Type, (v15 + 936));
                v32 = 1;
              }
            }

            v49 = CFDictionaryGetValue(a4, @"AVItemPlaybackProperties_GaplessLastPacketsResync");
            if (v49)
            {
              v50 = v49;
              v51 = CFNumberGetTypeID();
              if (v51 == CFGetTypeID(v50))
              {
                CFNumberGetValue(v50, kCFNumberSInt64Type, (v15 + 944));
                v32 = 1;
              }
            }

            v52 = CFDictionaryGetValue(a4, @"AVItemPlaybackProperties_AudibleDRMGroupID");
            if (v52)
            {
              v53 = v52;
              v54 = CFNumberGetTypeID();
              if (v54 == CFGetTypeID(v53))
              {
                valuePtr.start.value = 0;
                CFNumberGetValue(v53, kCFNumberSInt64Type, &valuePtr);
                *(v15 + 952) = valuePtr.start.value;
              }
            }

            v55 = CFDictionaryGetValue(a4, @"AVItemPlaybackProperties_LookForLyrics");
            if (v55)
            {
              v56 = v55;
              v57 = CFBooleanGetTypeID();
              if (v57 == CFGetTypeID(v56))
              {
                if (CFBooleanGetValue(v56))
                {
                  if (*(v15 + 1008))
                  {
                    itemfig_lookForLyrics(a1);
                  }

                  else
                  {
                    *(v15 + 992) = 1;
                  }
                }
              }
            }

            if (!v32)
            {
              goto LABEL_75;
            }

            v60 = *(v15 + 960);
            if (v60)
            {
              CFRelease(v60);
              *(v15 + 960) = 0;
            }

            v61 = *(v15 + 928);
            v62 = *(v15 + 936);
            if (!*(v15 + 924))
            {
              v61 = 0;
              OpenGL = 0;
              if (!v62)
              {
                goto LABEL_76;
              }
            }

            v63 = FigGaplessInfoCreateForLaterEnhancement(*(v15 + 924), v61, v62);
            *(v15 + 960) = v63;
            if (v63)
            {
              goto LABEL_75;
            }

            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_74:
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            goto LABEL_75;
          }
        }
      }

      goto LABEL_25;
    }

    if (CFEqual(a3, @"EnableDownloadWhenInPlayQueue"))
    {
      if (a4)
      {
        v35 = CFBooleanGetTypeID();
        if (v35 == CFGetTypeID(a4))
        {
          *(v10 + 1368) = CFBooleanGetValue(a4);
          playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer();
        }
      }

      goto LABEL_75;
    }

    if (CFEqual(a3, @"EnableDownloadWhenNotInPlayQueue"))
    {
      if (!a4)
      {
        goto LABEL_75;
      }

      v36 = CFBooleanGetTypeID();
      if (v36 != CFGetTypeID(a4))
      {
        goto LABEL_75;
      }

      *(v10 + 1369) = CFBooleanGetValue(a4);
      FigSimpleMutexLock();
      if (!*(v10 + 1))
      {
        itemfig_configureDownloadForItem(a1, *(v10 + 1369), v37, v38, v39, v40, v41, v42, v296, v297, v298, v300, v301, v302, start.value, *&start.timescale, start.epoch, v304, time2.value, *&time2.timescale, time2.epoch, v306, *v307, *&v307[8], *&v307[16], v308, type.value, *&type.timescale, type.epoch, v310, valuePtr.start.value, *&valuePtr.start.timescale, valuePtr.start.epoch, valuePtr.duration.value, *&valuePtr.duration.timescale, valuePtr.duration.epoch, v312, v313, v314, v315, v316, v317, v318, v319);
      }

      goto LABEL_36;
    }

    if (CFEqual(a3, @"PreferredMaximumBufferDuration"))
    {
      if (a4)
      {
        v58 = CFGetTypeID(a4);
        if (v58 == CFNumberGetTypeID())
        {
          LODWORD(valuePtr.start.value) = 0;
          CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
          if ((valuePtr.start.value & 0x80000000) == 0)
          {
            itemfig_updatePreferredMaximumBufferDuration(a1, valuePtr.start.value);
            goto LABEL_75;
          }
        }
      }

      goto LABEL_25;
    }

    if (CFEqual(a3, @"CachePrimingDownloadToken"))
    {
      if (a4)
      {
        v59 = CFNumberGetTypeID();
        if (v59 == CFGetTypeID(a4))
        {
          started = itemfig_startCachePrimingWithDownloadToken();
          goto LABEL_26;
        }
      }

LABEL_25:
      started = FigSignalErrorAtGM();
LABEL_26:
      OpenGL = started;
LABEL_76:
      CFRelease(v12);
      return OpenGL;
    }

    if (CFEqual(a3, @"LikelyToKeepUpTrigger"))
    {
      if (itemfig_handleSetProperty_cold_12(v10, &valuePtr))
      {
        if (a4)
        {
          v82 = CFStringGetTypeID();
          if (v82 == CFGetTypeID(a4))
          {
            if (CFEqual(a4, @"LikelyToKeepUpTriggerDefault"))
            {
              OpenGL = 0;
              *(v10 + 1392) = 0;
              goto LABEL_76;
            }

            if (CFEqual(a4, @"LikelyToKeepUpTriggerLive"))
            {
              OpenGL = 0;
              *(v10 + 1392) = 1;
              goto LABEL_76;
            }
          }
        }

        goto LABEL_25;
      }

      goto LABEL_233;
    }

    if (CFEqual(a3, @"ChosenAlternateTrackIDDictionary"))
    {
      started = itemfig_setChosenAlternateTrackIDsFromDictionary(a1, a4, v66, v67, v68, v69, v70, v71, v296, v297, v298, v300, v301, v302, SHIDWORD(v302), start.value, *&start.timescale, start.epoch, v304, time2.value, *&time2.timescale, time2.epoch, v306, *v307, *&v307[8], *&v307[16], v308, type.value, *&type.timescale, type.epoch, v310, valuePtr.start.value, *&valuePtr.start.timescale, valuePtr.start.epoch, valuePtr.duration.value, *&valuePtr.duration.timescale, valuePtr.duration.epoch, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323);
      goto LABEL_26;
    }

    if (CFEqual(a3, @"EndTime"))
    {
      FigSimpleMutexLock();
      if (a4)
      {
        CMTimeMakeFromDictionary(&valuePtr.start, a4);
        *(v10 + 140) = *&valuePtr.start.value;
        epoch = valuePtr.start.epoch;
      }

      else
      {
        v83 = MEMORY[0x1E6960C70];
        *(v10 + 140) = *MEMORY[0x1E6960C70];
        epoch = *(v83 + 16);
      }

      *(v10 + 156) = epoch;
      itemfig_checkForShortAudioTrack();
      v92 = *(v10 + 352);
      if (v92)
      {
        if (*(v13 + 536) != a1 || (*&valuePtr.start.value = *(v10 + 140), valuePtr.start.epoch = *(v10 + 156), !FigPlaybackBossCanChangeEndTimeTo(v92, &valuePtr)))
        {
          FigSimpleMutexUnlock();
          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v93 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }
      }

      itemfig_setEndTimeOnBoss();
      FigSimpleMutexUnlock();
    }

    else if (CFEqual(a3, @"ReverseEndTime"))
    {
      if (a4)
      {
        CMTimeMakeFromDictionary(&valuePtr.start, a4);
        *(v10 + 164) = *&valuePtr.start.value;
        v86 = valuePtr.start.epoch;
      }

      else
      {
        v85 = MEMORY[0x1E6960C70];
        *(v10 + 164) = *MEMORY[0x1E6960C70];
        v86 = *(v85 + 16);
      }

      *(v10 + 180) = v86;
      if (*(v10 + 352))
      {
        if (dword_1EAF16A10 >= 2)
        {
          LODWORD(start.value) = 0;
          LOBYTE(type.value) = 0;
          v94 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *&valuePtr.start.value = *MEMORY[0x1E6960C70];
        valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
        time2 = valuePtr.start;
        goto LABEL_184;
      }
    }

    else
    {
      if (!CFEqual(a3, @"AdvanceTimeForOverlappedPlayback"))
      {
        if (CFEqual(a3, @"LoopTimeRange"))
        {
          v72 = (v10 + 236);
          if (a4)
          {
            CMTimeRangeMakeFromDictionary(&valuePtr, a4);
            v73 = *&valuePtr.start.epoch;
            *v72 = *&valuePtr.start.value;
            *(v10 + 252) = v73;
            v74 = *&valuePtr.duration.timescale;
          }

          else
          {
            v77 = MEMORY[0x1E6960C98];
            v78 = *(MEMORY[0x1E6960C98] + 16);
            *v72 = *MEMORY[0x1E6960C98];
            *(v10 + 252) = v78;
            v74 = *(v77 + 32);
          }

          *(v10 + 268) = v74;
          if (!*(v10 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v79 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"ReversesMoreVideoFramesInMemory"))
        {
          if (itemfig_handleSetProperty_cold_15(v10, a4))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v97 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"AggressivelyCachesVideoFrames"))
        {
          if (itemfig_handleSetProperty_cold_14(v10, a4))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v98 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"DecodeAllFramesDuringOrdinaryPlayback"))
        {
          if (itemfig_handleSetProperty_cold_13(v10, a4))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v99 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"EQPreset"))
        {
          itemfig_handleSetProperty_cold_11(a4);
          goto LABEL_75;
        }

        if (CFEqual(a3, @"AudioDeviceChannelMap"))
        {
          if (a4)
          {
            v75 = CFDataGetTypeID();
            if (v75 != CFGetTypeID(a4))
            {
              goto LABEL_75;
            }
          }

          v76 = *(v10 + 984);
          if (v76)
          {
            CFRelease(v76);
          }

          *(v10 + 984) = a4;
          if (a4)
          {
            CFRetain(a4);
          }

          goto LABEL_180;
        }

        if (CFEqual(a3, @"ReadAheadAllowBackfill"))
        {
          if (!a4)
          {
            goto LABEL_25;
          }

          v80 = CFGetTypeID(a4);
          if (v80 != CFBooleanGetTypeID())
          {
            goto LABEL_25;
          }

          *(v10 + 1429) = 1;
          *(v10 + 1428) = CFBooleanGetValue(a4);
          if (!*(v10 + 128))
          {
            goto LABEL_75;
          }

          CMByteStreamGetCMBaseObject();
          FigCRABSGetClassID();
          if (!CMBaseObjectIsMemberOfClass())
          {
            goto LABEL_75;
          }

          v81 = kFigCachedReadAheadByteStreamProperty_ReadAheadAllowBackfill;
LABEL_129:
          v90 = *v81;
          CMBaseObject = CMByteStreamGetCMBaseObject();
          started = CMBaseObjectSetProperty(CMBaseObject, v90, a4);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"SaveDownloadedDataToDiskWhenDone"))
        {
          if (!a4)
          {
            goto LABEL_25;
          }

          v89 = CFGetTypeID(a4);
          if (v89 != CFBooleanGetTypeID())
          {
            goto LABEL_25;
          }

          if (!*(v10 + 128))
          {
            goto LABEL_75;
          }

          CMByteStreamGetCMBaseObject();
          FigCRABSGetClassID();
          if (!CMBaseObjectIsMemberOfClass())
          {
            goto LABEL_75;
          }

          v81 = kFigCachedReadAheadByteStreamProperty_SaveMemoryCacheToDiskWhenDone;
          goto LABEL_129;
        }

        if (CFEqual(a3, @"VideoCompositionInstructionArray"))
        {
          memset(&time2, 0, sizeof(time2));
          started = itemfig_GetDuration(a1, &time2);
          if (started)
          {
            goto LABEL_26;
          }

          start = time2;
          v100 = MEMORY[0x1E6960CC0];
          if ((*(v10 + 248) & 0x1D) == 1)
          {
            *&valuePtr.start.value = *(v10 + 236);
            valuePtr.start.epoch = *(v10 + 252);
            v299 = *MEMORY[0x1E6960CC0];
            *&type.value = *MEMORY[0x1E6960CC0];
            v101 = *(MEMORY[0x1E6960CC0] + 16);
            type.epoch = v101;
            if ((CMTimeCompare(&valuePtr.start, &type) & 0x80000000) == 0 && (*(v10 + 272) & 0x1D) == 1)
            {
              *&valuePtr.start.value = *(v10 + 260);
              valuePtr.start.epoch = *(v10 + 276);
              *&type.value = v299;
              type.epoch = v101;
              if (CMTimeCompare(&valuePtr.start, &type) >= 1)
              {
                type = start;
                v102 = *(v10 + 252);
                *&valuePtr.start.value = *(v10 + 236);
                *&valuePtr.start.epoch = v102;
                *&valuePtr.duration.timescale = *(v10 + 268);
                CMTimeFoldIntoRange(&start, &type, &valuePtr);
              }
            }
          }

          if (!a4 || (*&valuePtr.start.value = *v100, valuePtr.start.epoch = *(v100 + 16), type = start, FigVideoCompositionInstructionArrayIsValid(a4, &valuePtr, &type)))
          {
            FigSimpleMutexLock();
            v103 = *(v10 + 680);
            *(v10 + 680) = a4;
            if (a4)
            {
              CFRetain(a4);
            }

            if (v103)
            {
              CFRelease(v103);
            }

            FigSimpleMutexUnlock();
            v104 = *(v10 + 824);
            if (v104)
            {
              started = *(v10 + 352);
              if (!started)
              {
                goto LABEL_26;
              }

              if (*(v13 + 48) == 0.0 || !*(v10 + 688))
              {
                FigPlaybackBossResetCompositionInstructions(started, v104, 1, 1);
                if (dword_1EAF16A10 >= 2)
                {
                  v111 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                FigPlaybackBossRefreshVideoComposition(*(v10 + 352));
              }

              else
              {
                FigPlaybackBossResetCompositionInstructions(started, v104, 0, 0);
              }
            }

            started = 0;
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"VideoCompositorSourceSampleDataTrackIDs"))
        {
          itemfig_handleSetProperty_cold_10();
          goto LABEL_233;
        }

        if (CFEqual(a3, @"VideoCompositorSourceVideoTrackWindows"))
        {
          itemfig_handleSetProperty_cold_16(&valuePtr);
          goto LABEL_233;
        }

        if (CFEqual(a3, @"VideoCompositorSourceSampleDataTrackWindows"))
        {
          itemfig_handleSetProperty_cold_18(&valuePtr);
          goto LABEL_233;
        }

        if (CFEqual(a3, @"VideoCompositorOutputBufferDescription"))
        {
          itemfig_handleSetProperty_cold_17(&valuePtr);
          goto LABEL_233;
        }

        if (CFEqual(a3, @"UsesMinimalLatencyForVideoCompositionRendering"))
        {
          if (a4)
          {
            v105 = CFGetTypeID(a4);
            if (v105 == CFBooleanGetTypeID())
            {
              v106 = CFBooleanGetValue(a4);
              if (v106 != *(v10 + 688))
              {
                *(v10 + 688) = v106;
                if (*(v10 + 824))
                {
                  memset(&valuePtr, 0, 24);
                  memset(&time2, 0, sizeof(time2));
                  itemfig_getHighAndLowWaterLevelDurationsForVideoCompositionProcessing(a1, &valuePtr, &time2);
                  v107 = *(v10 + 824);
                  start = valuePtr.start;
                  type = time2;
                  FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels(v107, &start, &type);
                }
              }

              goto LABEL_75;
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"VideoCompositorFrameDuration"))
        {
          memset(&start, 0, sizeof(start));
          CMTimeMakeFromDictionary(&start, a4);
          if ((start.flags & 0x1D) != 1)
          {
            goto LABEL_25;
          }

          valuePtr.start = start;
          time2 = **&MEMORY[0x1E6960CC0];
          if (CMTimeCompare(&valuePtr.start, &time2) < 1 || start.epoch)
          {
            goto LABEL_25;
          }

          *&valuePtr.start.value = *(v10 + 692);
          valuePtr.start.epoch = *(v10 + 708);
          *&time2.value = *&start.value;
          time2.epoch = 0;
          if (!CMTimeCompare(&valuePtr.start, &time2))
          {
            goto LABEL_75;
          }

          *(v10 + 692) = start;
          if (!*(v10 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(type.value) = 0;
            v108 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v109 = type.value;
            if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
            {
              v110 = v109;
            }

            else
            {
              v110 = v109 & 0xFFFFFFFE;
            }

            if (v110)
            {
              LODWORD(time2.value) = 136315138;
              *(&time2.value + 4) = "itemfig_handleSetProperty";
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"VideoCompositorSourceTrackIDForFrameTiming"))
        {
          if (!a4)
          {
            goto LABEL_25;
          }

          v112 = CFGetTypeID(a4);
          if (v112 != CFNumberGetTypeID())
          {
            goto LABEL_25;
          }

          start.value = 0;
          CFNumberGetValue(a4, kCFNumberCFIndexType, &start);
          if (*(v10 + 716) == LODWORD(start.value))
          {
            goto LABEL_75;
          }

          *(v10 + 716) = start.value;
          if (!*(v10 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(type.value) = 0;
            v113 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v114 = type.value;
            if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
            {
              v115 = v114;
            }

            else
            {
              v115 = v114 & 0xFFFFFFFE;
            }

            if (v115)
            {
              LODWORD(time2.value) = 136315138;
              *(&time2.value + 4) = "itemfig_handleSetProperty";
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"VideoCompositorRenderDimensions"))
        {
          start.value = 0;
          *&start.timescale = 0;
          if (!a4)
          {
            goto LABEL_25;
          }

          v116 = CFDictionaryGetTypeID();
          if (v116 != CFGetTypeID(a4) || !CGSizeMakeWithDictionaryRepresentation(a4, &start))
          {
            goto LABEL_25;
          }

          FigSimpleMutexLock();
          if (*(v10 + 720) != *&start.value || *(v10 + 728) != *&start.timescale)
          {
            *(v10 + 720) = *&start.value;
            v117 = *(v10 + 352);
            FigSimpleMutexUnlock();
            if (!v117)
            {
              goto LABEL_75;
            }

            if (dword_1EAF16A10 >= 2)
            {
              LODWORD(type.value) = 0;
              v118 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v119 = type.value;
              if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                v120 = v119;
              }

              else
              {
                v120 = v119 & 0xFFFFFFFE;
              }

              if (v120)
              {
                v139 = (CMBaseObjectGetDerivedStorage() + 972);
                if (a1)
                {
                  v140 = (CMBaseObjectGetDerivedStorage() + 2096);
                }

                else
                {
                  v140 = "";
                }

                LODWORD(time2.value) = 136316162;
                *(&time2.value + 4) = "itemfig_handleSetProperty";
                LOWORD(time2.flags) = 2048;
                *(&time2.flags + 2) = v12;
                HIWORD(time2.epoch) = 2082;
                v306 = v139;
                *v307 = 2048;
                *&v307[2] = a1;
                *&v307[10] = 2082;
                *&v307[12] = v140;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *&valuePtr.start.value = *MEMORY[0x1E6960C70];
            valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
            time2 = valuePtr.start;
            goto LABEL_184;
          }

LABEL_36:
          FigSimpleMutexUnlock();
LABEL_75:
          OpenGL = 0;
          goto LABEL_76;
        }

        if (CFEqual(a3, @"VideoCompositorRenderScale"))
        {
          if (!a4)
          {
            goto LABEL_25;
          }

          v121 = CFNumberGetTypeID();
          if (v121 != CFGetTypeID(a4))
          {
            goto LABEL_25;
          }

          LODWORD(start.value) = 0;
          CFNumberGetValue(a4, kCFNumberFloatType, &start);
          if (*(v10 + 736) == *&start.value)
          {
            goto LABEL_75;
          }

          *(v10 + 736) = start.value;
          if (!*(v10 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(type.value) = 0;
            v122 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v123 = type.value;
            if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
            {
              v124 = v123;
            }

            else
            {
              v124 = v123 & 0xFFFFFFFE;
            }

            if (v124)
            {
              LODWORD(time2.value) = 136315138;
              *(&time2.value + 4) = "itemfig_handleSetProperty";
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"VideoCompositorColorPrimaries"))
        {
          if (FigCFEqual())
          {
            goto LABEL_75;
          }

          if (a4)
          {
            v125 = CFStringGetTypeID();
            if (v125 != CFGetTypeID(a4))
            {
              goto LABEL_25;
            }

            v126 = *(v10 + 744);
            *(v10 + 744) = a4;
            CFRetain(a4);
          }

          else
          {
            v126 = *(v10 + 744);
            *(v10 + 744) = 0;
          }

          if (v126)
          {
            CFRelease(v126);
          }

          if (!*(v10 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v131 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
LABEL_184:
          playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
          goto LABEL_75;
        }

        if (CFEqual(a3, @"VideoCompositorColorYCbCrMatrix"))
        {
          if (FigCFEqual())
          {
            goto LABEL_75;
          }

          if (a4)
          {
            v127 = CFStringGetTypeID();
            if (v127 != CFGetTypeID(a4))
            {
              goto LABEL_25;
            }

            v128 = *(v10 + 752);
            *(v10 + 752) = a4;
            CFRetain(a4);
          }

          else
          {
            v128 = *(v10 + 752);
            *(v10 + 752) = 0;
          }

          if (v128)
          {
            CFRelease(v128);
          }

          if (!*(v10 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v135 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"VideoCompositorColorTransferFunction"))
        {
          if (FigCFEqual())
          {
            goto LABEL_75;
          }

          if (a4)
          {
            v129 = CFStringGetTypeID();
            if (v129 != CFGetTypeID(a4))
            {
              goto LABEL_25;
            }

            v130 = *(v10 + 760);
            *(v10 + 760) = a4;
            CFRetain(a4);
          }

          else
          {
            v130 = *(v10 + 760);
            *(v10 + 760) = 0;
          }

          if (v130)
          {
            CFRelease(v130);
          }

          if (!*(v10 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v137 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"VideoCompositorHDRDisplayMetadataPolicy"))
        {
          if (FigCFEqual())
          {
            goto LABEL_75;
          }

          if (!a4)
          {
            goto LABEL_25;
          }

          v132 = CFGetTypeID(a4);
          if (v132 != CFStringGetTypeID())
          {
            goto LABEL_25;
          }

          v133 = *(v10 + 768);
          *(v10 + 768) = a4;
          CFRetain(a4);
          if (v133)
          {
            CFRelease(v133);
          }

          if (!*(v10 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v134 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"VideoCompositor"))
        {
          start.value = 0;
          if (a4)
          {
            if (CFEqual(a4, @"VideoCompositor_Basic"))
            {
              OpenGL = 0;
              goto LABEL_311;
            }

            if (CFEqual(a4, @"VideoCompositor_vImage"))
            {
              OpenGL = 0;
              goto LABEL_337;
            }

            if (CFEqual(a4, @"VideoCompositor_Metal"))
            {
              OpenGL = 0;
LABEL_357:
              if (*(v10 + 664) == 4 && (v147 = *(v10 + 656)) != 0)
              {
                start.value = CFRetain(v147);
              }

              else
              {
                OpenGL = FigVideoCompositorCreateMetal(*MEMORY[0x1E695E480], &start);
              }

              v142 = 4;
              goto LABEL_383;
            }

            if (CFEqual(a4, @"VideoCompositor_OpenGL"))
            {
              OpenGL = 0;
              goto LABEL_370;
            }

            if (CFEqual(a4, @"VideoCompositor_DeviceSpecific"))
            {
              valuePtr.start.value = 0;
              v167 = 0;
              OpenGL = FigVideoCompositorCopyDeviceSpecificCompositorName(0, &valuePtr);
              if (!OpenGL)
              {
                if (FigCFEqual())
                {
                  v167 = 1;
                }

                else if (FigCFEqual())
                {
                  v167 = 3;
                }

                else if (FigCFEqual())
                {
                  v167 = 4;
                }

                else
                {
                  v167 = 2 * (FigCFEqual() != 0);
                }
              }

              if (valuePtr.start.value)
              {
                CFRelease(valuePtr.start.value);
              }

              if (v167 > 1)
              {
                if (v167 != 2)
                {
                  if (v167 == 3)
                  {
LABEL_337:
                    if (*(v10 + 664) == 3 && (v143 = *(v10 + 656)) != 0)
                    {
                      start.value = CFRetain(v143);
                    }

                    else
                    {
                      OpenGL = FigVideoCompositorCreatevImage(*MEMORY[0x1E695E480], 0, &start);
                    }

                    v142 = 3;
                    goto LABEL_383;
                  }

                  goto LABEL_357;
                }

LABEL_370:
                if (*(v10 + 664) == 2 && (v149 = *(v10 + 656)) != 0)
                {
                  start.value = CFRetain(v149);
                }

                else
                {
                  OpenGL = FigVideoCompositorCreateOpenGL(*MEMORY[0x1E695E480], 0, &start);
                }

                v142 = 2;
LABEL_383:
                v153 = start.value;
                if (OpenGL || !start.value)
                {
                  if (OpenGL)
                  {
                    goto LABEL_390;
                  }
                }

                else
                {
                  LODWORD(valuePtr.start.value) = 23;
                  v154 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
                  FigBaseObject = FigVideoCompositorGetFigBaseObject(start.value);
                  CMBaseObjectSetProperty(FigBaseObject, @"WorkerThreadPriority", v154);
                  if (v154)
                  {
                    CFRelease(v154);
                  }

                  v153 = start.value;
                }

                if (*(v10 + 656) != v153)
                {
                  FigSimpleMutexLock();
                  v156 = *(v10 + 656);
                  v157 = start.value;
                  *(v10 + 656) = start.value;
                  if (v157)
                  {
                    CFRetain(v157);
                  }

                  if (v156)
                  {
                    CFRelease(v156);
                  }

                  *(v10 + 664) = v142;
                  itemfig_updateHasEnabledVideo();
                  FigSimpleMutexUnlock();
                  if (*(v10 + 352))
                  {
                    if (dword_1EAF16A10 >= 2)
                    {
                      LODWORD(type.value) = 0;
                      v173 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v174 = type.value;
                      if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
                      {
                        v175 = v174;
                      }

                      else
                      {
                        v175 = v174 & 0xFFFFFFFE;
                      }

                      if (v175)
                      {
                        LODWORD(time2.value) = 136315138;
                        *(&time2.value + 4) = "itemfig_handleSetProperty";
                        _os_log_send_and_compose_impl();
                      }

                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }

                    *&valuePtr.start.value = *MEMORY[0x1E6960C70];
                    valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
                    time2 = valuePtr.start;
                    playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
                  }

                  v153 = start.value;
                  if (!start.value)
                  {
                    goto LABEL_76;
                  }

                  goto LABEL_391;
                }

LABEL_390:
                if (!v153)
                {
                  goto LABEL_76;
                }

LABEL_391:
                CFRelease(v153);
                goto LABEL_76;
              }

              if (v167)
              {
LABEL_311:
                if (*(v10 + 664) == 1 && (v136 = *(v10 + 656)) != 0)
                {
                  start.value = CFRetain(v136);
                }

                else
                {
                  OpenGL = FigVideoCompositorCreateBasic(*MEMORY[0x1E695E480], 0, &start);
                }

                v142 = 1;
                goto LABEL_383;
              }
            }

            else
            {
              FigVideoCompositorGetTypeID();
              CFGetTypeID(a4);
              OpenGL = 0;
            }

            v141 = CFRetain(a4);
          }

          else
          {
            OpenGL = 0;
            v141 = 0;
          }

          v142 = 0;
          start.value = v141;
          goto LABEL_383;
        }

        if (CFEqual(a3, @"VideoCompositionProperties"))
        {
          if (a4)
          {
            v138 = CFGetTypeID(a4);
            if (v138 == CFDictionaryGetTypeID())
            {
              started = itemfig_setVideoCompositionProperties(a1);
              goto LABEL_26;
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"SynchronizedLayers"))
        {
          start.value = 0;
          if (a4)
          {
            v158 = CFGetTypeID(a4);
            if (v158 == CFArrayGetTypeID())
            {
              v159 = *(v10 + 904);
              if (v159)
              {
                CFRelease(v159);
                *(v10 + 904) = 0;
              }

              *(v10 + 904) = CFArrayCreateCopy(*MEMORY[0x1E695E480], a4);
            }
          }

          FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &start.value);
          FigSimpleMutexLock();
          playerfig_connectLayerSynchronizerToVideoOutputs(v12, a1, start.value, v160, v161, v162, v163, v164, v296, v297, v298, v300, v301, SBYTE2(v301), BYTE3(v301), SHIDWORD(v301), v302, *&start.value, start.epoch, SWORD2(start.epoch), SHIWORD(start.epoch), v304, *&time2.value, time2.epoch, v306, *v307, *&v307[8], *&v307[16], v308, type.value, *&type.timescale, type.epoch, v310, valuePtr.start.value, *&valuePtr.start.timescale, valuePtr.start.epoch, valuePtr.duration.value, *&valuePtr.duration.timescale, valuePtr.duration.epoch, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327);
          FigSimpleMutexUnlock();
          if (*(v10 + 904))
          {
            *&valuePtr.start.value = *MEMORY[0x1E6960CC0];
            valuePtr.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
            itemfig_GetDuration(a1, &valuePtr);
            v165 = *(v10 + 904);
            time2 = valuePtr.start;
            FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(start.value, &time2, v165);
            if (*(v10 + 352))
            {
              playerfig_synchronizeLayerToTimebaseWithTransaction();
            }
          }

          FigDeferredTransactionCommit(start.value, 0);
          v166 = start.value;
          if (!start.value)
          {
            goto LABEL_75;
          }

          goto LABEL_409;
        }

        if (CFEqual(a3, @"BlendsVideoFrames"))
        {
          if (a4)
          {
            v144 = CFBooleanGetTypeID();
            if (v144 != CFGetTypeID(a4))
            {
              goto LABEL_25;
            }
          }

          v145 = *MEMORY[0x1E695E4D0] == a4;
          if (*(v10 + 1176) == v145)
          {
            goto LABEL_75;
          }

          *(v10 + 1176) = v145;
          if (!*(v10 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v146 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"PropagatePerFrameHDRDisplayMetadata"))
        {
          if (!a4)
          {
            goto LABEL_25;
          }

          v148 = CFGetTypeID(a4);
          if (v148 != CFBooleanGetTypeID())
          {
            goto LABEL_25;
          }

          *(v10 + 1192) = CFBooleanGetValue(a4);
          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v176 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"ApertureMode"))
        {
          LODWORD(time2.value) = 0;
          HIDWORD(v302) = 0;
          LODWORD(start.value) = 0;
          LODWORD(type.value) = 0;
          if (a4)
          {
            v150 = CFGetTypeID(a4);
            if (v150 == CFStringGetTypeID())
            {
              if (*(v10 + 1240))
              {
                itemfig_GetDimensions();
              }

              if (CFEqual(a4, @"CleanAperture"))
              {
                v151 = 1;
                v152 = 1;
LABEL_458:
                *(v10 + 1193) = v151;
                *(v10 + 1194) = v152;
LABEL_459:
                itemfig_setCAImageQueueFlagsForApertureMode(a1);
                if (!FigUseVideoReceiverForCALayer())
                {
                  FigSimpleMutexLock();
                  playerfig_updateVideoLayerSize(v12, 0);
                  FigSimpleMutexUnlock();
                }

                v183 = *(v13 + 536);
                if (v183 == a1)
                {
                  playerfig_scheduleVideoTargetImageQueueConfigurationTransitionForItem(v12, v183, MEMORY[0x1E6960C70], v178, v179, v180, v181, v182, v296, v297, v298, v300, v301, v302, start.value, *&start.timescale, start.epoch, v304, SHIDWORD(v304), time2.value, *&time2.timescale, time2.epoch, v306, *v307, *&v307[8], *&v307[16], v308, type.value, *&type.timescale, type.epoch, v310, valuePtr.start.value, *&valuePtr.start.timescale, valuePtr.start.epoch, valuePtr.duration.value, *&valuePtr.duration.timescale, valuePtr.duration.epoch, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333);
                }

                if (!*(v10 + 1240))
                {
                  goto LABEL_75;
                }

                itemfig_GetDimensions();
                if (*&time2.value == *&type.value && *&start.value == *(&v302 + 1))
                {
                  goto LABEL_75;
                }

                itemfig_handleSetProperty_cold_2(v12, a1, v13, &valuePtr, v184, v185, v186, v187);
                goto LABEL_233;
              }

              if (CFEqual(a4, @"ProductionAperture"))
              {
                v152 = 0;
                v151 = 1;
                goto LABEL_458;
              }

              if (CFEqual(a4, @"EncodedPixels"))
              {
                v151 = 0;
                v152 = 0;
                goto LABEL_458;
              }
            }
          }

          OpenGL = FigSignalErrorAtGM();
          if (OpenGL)
          {
            goto LABEL_76;
          }

          goto LABEL_459;
        }

        if (CFEqual(a3, @"ImageQueueInterpolationCurve"))
        {
          if (a4)
          {
            v168 = CFArrayGetTypeID();
            if (v168 != CFGetTypeID(a4))
            {
              goto LABEL_25;
            }

            v169 = *(v10 + 1168);
            if (v169 == a4)
            {
              goto LABEL_75;
            }

            *(v10 + 1168) = a4;
            CFRetain(a4);
            if (!v169)
            {
              goto LABEL_434;
            }
          }

          else
          {
            v169 = *(v10 + 1168);
            if (!v169)
            {
              goto LABEL_75;
            }

            *(v10 + 1168) = 0;
          }

          CFRelease(v169);
LABEL_434:
          if (!*(v10 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v172 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"VideoEnhancementMode"))
        {
          if (a4)
          {
            v170 = CFGetTypeID(a4);
            if (v170 == CFStringGetTypeID())
            {
              if (!FigCFEqual())
              {
                v171 = *(v10 + 1184);
                *(v10 + 1184) = a4;
                CFRetain(a4);
                if (v171)
                {
                  CFRelease(v171);
                }

                itemfig_setVideoEnhancementModeOnImageQueues(a1, a4);
              }

              goto LABEL_75;
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"AlwaysMonitorPlayability"))
        {
          if (!a4)
          {
            goto LABEL_25;
          }

          v177 = CFGetTypeID(a4);
          if (v177 != CFBooleanGetTypeID())
          {
            goto LABEL_25;
          }

          if (!CFBooleanGetValue(a4))
          {
            goto LABEL_75;
          }

          itemfig_handleSetProperty_cold_3(v10, a1, &valuePtr);
          goto LABEL_233;
        }

        if (CFEqual(a3, @"ContinuePlayingDuringPrerollForSeek"))
        {
          if (a4)
          {
            v188 = CFGetTypeID(a4);
            if (v188 == CFBooleanGetTypeID())
            {
              v189 = CFBooleanGetValue(a4);
              *(v10 + 287) = v189;
              v190 = *(v10 + 352);
              if (v190)
              {
                FigPlaybackBossSetContinuePlayingDuringPrerollForSeek(v190, v189);
              }

              goto LABEL_75;
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"ContinuePlayingDuringPrerollForRateChange"))
        {
          if (a4)
          {
            v191 = CFGetTypeID(a4);
            if (v191 == CFBooleanGetTypeID())
            {
              v192 = CFBooleanGetValue(a4);
              *(v10 + 288) = v192;
              v193 = *(v10 + 352);
              if (v193)
              {
                FigPlaybackBossSetContinuePlayingDuringPrerollForRateChange(v193, v192);
              }

              goto LABEL_75;
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"IFrameOnlySpeedThreshold"))
        {
          if (a4)
          {
            v194 = CFGetTypeID(a4);
            if (v194 == CFNumberGetTypeID())
            {
              *(v10 + 290) = 1;
              CFNumberGetValue(a4, kCFNumberFloat32Type, (v10 + 292));
              v195 = *(v10 + 352);
              if (v195)
              {
                FigPlaybackBossSetIFrameOnlySpeedThreshold(v195, *(v10 + 292));
              }

              goto LABEL_75;
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"UseIFrameOnlyPlaybackForHighRateScaledEdits"))
        {
          if (a4)
          {
            v196 = CFGetTypeID(a4);
            if (v196 == CFBooleanGetTypeID())
            {
              v197 = CFBooleanGetValue(a4);
              *(v10 + 289) = v197;
              v198 = *(v10 + 352);
              if (v198)
              {
                FigPlaybackBossSetUseIFrameOnlyPlaybackForHighRateScaledEdits(v198, v197);
              }

              goto LABEL_75;
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"MinimumIntervalForIFrameOnlyPlayback"))
        {
          if (a4)
          {
            v199 = CFGetTypeID(a4);
            if (v199 == CFDictionaryGetTypeID())
            {
              CMTimeMakeFromDictionary(&valuePtr.start, a4);
              *(v10 + 296) = *&valuePtr.start.value;
              *(v10 + 312) = valuePtr.start.epoch;
              v200 = *(v10 + 352);
              if (v200)
              {
                *&valuePtr.start.value = *(v10 + 296);
                valuePtr.start.epoch = *(v10 + 312);
                FigPlaybackBossSetMinimumIntervalForIFrameOnlyPlayback(v200, &valuePtr.start.value);
              }

              goto LABEL_75;
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"ThoroughlyRefreshClosedCaptionsWhenSeeking"))
        {
          if (a4)
          {
            v201 = CFGetTypeID(a4);
            if (v201 == CFBooleanGetTypeID())
            {
              v202 = CFBooleanGetValue(a4);
              *(v10 + 320) = v202;
              v203 = *(v10 + 352);
              if (v203)
              {
                FigPlaybackBossSetThoroughlyRefreshClosedCaptionsWhenSeeking(v203, v202);
              }

              goto LABEL_75;
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"RequiresExternalProtection"))
        {
          if (a4)
          {
            v204 = CFGetTypeID(a4);
            if (v204 == CFBooleanGetTypeID())
            {
              if (CFBooleanGetValue(a4))
              {
                valuePtr.start.value = 1;
                OpenGL = 0;
                *(v10 + 1208) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
                goto LABEL_76;
              }
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"LoudnessInfo"))
        {
          if (a4)
          {
            v205 = CFGetTypeID(a4);
            if (v205 != CFDictionaryGetTypeID())
            {
              goto LABEL_25;
            }

            v208 = *(v10 + 1504);
            *(v10 + 1504) = a4;
            goto LABEL_566;
          }

          v208 = *(v10 + 1504);
          *(v10 + 1504) = 0;
          goto LABEL_567;
        }

        if (CFEqual(a3, @"SoundCheckVolumeNormalization"))
        {
          if (a4)
          {
            v206 = CFGetTypeID(a4);
            if (v206 == CFNumberGetTypeID())
            {
              itemfig_handleSetProperty_cold_4();
              goto LABEL_75;
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"Volume"))
        {
          if (a4)
          {
            v207 = CFGetTypeID(a4);
            if (v207 == CFNumberGetTypeID())
            {
              LODWORD(valuePtr.start.value) = 1065353216;
              CFNumberGetValue(a4, kCFNumberFloat32Type, &valuePtr);
              *(v10 + 1476) = valuePtr.start.value;
              itemfig_updateVolumeOffset(a1);
              goto LABEL_75;
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"AdjustTargetLevel"))
        {
          if (a4)
          {
            v209 = CFGetTypeID(a4);
            if (v209 == CFNumberGetTypeID())
            {
              v210 = *(v10 + 1544);
              *(v10 + 1544) = a4;
              CFRetain(a4);
              if (v210)
              {
                CFRelease(v210);
              }

              itemfig_applyAdjustTargetLevel();
              goto LABEL_75;
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"AdjustCompressionProfile"))
        {
          if (a4)
          {
            v211 = CFGetTypeID(a4);
            if (v211 == CFNumberGetTypeID())
            {
              v212 = *(v10 + 1552);
              *(v10 + 1552) = a4;
              CFRetain(a4);
              if (v212)
              {
                CFRelease(v212);
              }

              itemfig_applyAdjustCompressionProfile();
              goto LABEL_75;
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"MediaKind"))
        {
          if (a4)
          {
            v213 = CFGetTypeID(a4);
            if (v213 != CFStringGetTypeID())
            {
              goto LABEL_25;
            }

            v208 = *(v10 + 1496);
            *(v10 + 1496) = a4;
LABEL_566:
            CFRetain(a4);
            goto LABEL_567;
          }

          v208 = *(v10 + 1496);
          *(v10 + 1496) = 0;
LABEL_567:
          if (v208)
          {
            CFRelease(v208);
          }

          itemfig_applyLoudnessInfo(a1, 0, 1, 0);
          goto LABEL_75;
        }

        if (CFEqual(a3, @"VisualContextArray"))
        {
          itemfig_setVisualContextArray(a1, a4);
          goto LABEL_75;
        }

        if (CFEqual(a3, @"TextMarkupArray"))
        {
          itemfig_setTextMarkupArray(a1, a4);
          goto LABEL_75;
        }

        if (CFEqual(a3, @"TextHighlightArray"))
        {
          itemfig_setTextHighlightArray(a1, a4);
          goto LABEL_75;
        }

        if (CFEqual(a3, @"LegibleOutputs"))
        {
          if (!a4 || (v214 = CFGetTypeID(a4), v214 == CFDictionaryGetTypeID()))
          {
            itemfig_setLegibleOutputsDict(a1, a4);
            goto LABEL_75;
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"MetadataOutputs"))
        {
          if (!a4 || (v215 = CFGetTypeID(a4), v215 == CFDictionaryGetTypeID()))
          {
            started = itemfig_setMetadataOutputsDict(a1, a4);
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"RenderedLegibleOutputs"))
        {
          if (!a4 || (v216 = CFGetTypeID(a4), v216 == CFDictionaryGetTypeID()))
          {
            itemfig_setRenderedLegibleOutputsDict(a1, a4);
            goto LABEL_75;
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"SelectedMediaArray"))
        {
          if (a4)
          {
            v217 = CFGetTypeID(a4);
            if (v217 == CFArrayGetTypeID())
            {
              started = itemfig_updateSelectedMediaArrayInternal(a1);
              goto LABEL_26;
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"SuppressVideoLayers"))
        {
          started = itemfig_setSuppressVideoLayers(a1, *MEMORY[0x1E695E4D0] == a4, v218, v219, v220, v221, v222, v223, v296, v297, v298, v300, v301, v302, start.value, *&start.timescale, start.epoch, v304, time2.value, *&time2.timescale);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"SuppressLegibleRendering"))
        {
          started = itemfig_setSuppressLegibleRendering(a1, *MEMORY[0x1E695E4D0] == a4);
          goto LABEL_26;
        }

        if (CFEqual(a3, @"SeekingWaitsForVideoCompositionRendering"))
        {
          if (a4)
          {
            v224 = CFBooleanGetTypeID();
            if (v224 != CFGetTypeID(a4))
            {
              goto LABEL_25;
            }

            v225 = CFBooleanGetValue(a4);
          }

          else
          {
            v225 = 0;
          }

          *(v10 + 545) = v225;
          if (!*(v10 + 352) || !*(v10 + 656))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v228 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"AudioProcessingTap"))
        {
          if (a4)
          {
            v226 = MTAudioProcessingTapGetTypeID();
            if (v226 != CFGetTypeID(a4))
            {
              goto LABEL_25;
            }

            v227 = *(v10 + 1480);
            if (v227 == a4)
            {
              goto LABEL_75;
            }

            *(v10 + 1480) = a4;
            CFRetain(a4);
            if (!v227)
            {
              goto LABEL_622;
            }
          }

          else
          {
            v227 = *(v10 + 1480);
            if (!v227)
            {
              goto LABEL_75;
            }

            *(v10 + 1480) = 0;
          }

          CFRelease(v227);
LABEL_622:
          if (!*(v10 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v230 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"ResetAudioBufferedAhead"))
        {
          if (!*(v10 + 352) || !fp_bufferedAirPlayActiveAndSupportsAtmos(v12, 0))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v229 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"TimePitchAlgorithm"))
        {
          if (!a4)
          {
            goto LABEL_25;
          }

          v231 = CFStringGetTypeID();
          if (v231 != CFGetTypeID(a4))
          {
            goto LABEL_25;
          }

          if (CFEqual(a4, *(v10 + 1512)))
          {
            goto LABEL_75;
          }

          v232 = @"TimeDomain";
          if (!FigCFEqual())
          {
            v232 = @"Spectral";
            if (!FigCFEqual())
            {
              v232 = @"Varispeed";
              if (!FigCFEqual())
              {
                v232 = @"LowQualityZeroLatency";
                if (!FigCFEqual())
                {
                  OpenGL = FigSignalErrorAtGM();
                  if (OpenGL)
                  {
                    goto LABEL_76;
                  }

                  v232 = 0;
                }
              }
            }
          }

          if (dword_1EAF16A10)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v233 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v237 = *(v10 + 1512);
          *(v10 + 1512) = v232;
          if (v232)
          {
            CFRetain(v232);
          }

          if (v237)
          {
            CFRelease(v237);
          }

          if (!*(v10 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v238 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"AudioProcessingUnits"))
        {
          if (a4)
          {
            v234 = CFGetTypeID(a4);
            if (v234 != CFArrayGetTypeID())
            {
              goto LABEL_25;
            }
          }

          if (!FPSupport_AudioProcessingUnitsConfigurationsAreDifferent())
          {
            goto LABEL_75;
          }

          v235 = *(v10 + 1528);
          *(v10 + 1528) = a4;
          if (a4)
          {
            CFRetain(a4);
          }

          if (v235)
          {
            CFRelease(v235);
          }

          if (!*(v10 + 352))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v236 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"AudioCurves"))
        {
          LOBYTE(valuePtr.start.value) = 0;
          LOBYTE(time2.value) = 0;
          fp_checkForCinematicAudioParametersInAudioCurves(*(v10 + 1520), &valuePtr, 0, 0);
          if (fp_isValidAudioCurves(a4))
          {
            v243 = *(v10 + 1520);
            *(v10 + 1520) = a4;
            if (a4)
            {
              CFRetain(a4);
            }

            if (v243)
            {
              CFRelease(v243);
            }

            itemfig_applyItemAudioCurvesToAllAudioTracks(v10);
            fp_checkForCinematicAudioParametersInAudioCurves(a4, &time2, 0, 0);
            if (LOBYTE(valuePtr.start.value) != LOBYTE(time2.value))
            {
              playerfig_dispatchAsyncAutoSelectionCriteriaChangedForItem(v12, a1);
            }

            goto LABEL_75;
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"AudioClockDevice"))
        {
          if (a4)
          {
            v239 = CFStringGetTypeID();
            if (v239 != CFGetTypeID(a4))
            {
              goto LABEL_25;
            }

            v242 = *(v10 + 1536);
            *(v10 + 1536) = a4;
            CFRetain(a4);
          }

          else
          {
            v242 = *(v10 + 1536);
            *(v10 + 1536) = 0;
          }

          if (v242)
          {
            CFRelease(v242);
          }

LABEL_180:
          started = fp_setPropertyOnAllAudioRenderPipelines();
          goto LABEL_26;
        }

        if (CFEqual(a3, @"DisplayNonForcedSubtitles"))
        {
          itemfig_handleSetProperty_cold_5();
          goto LABEL_75;
        }

        if (CFEqual(a3, @"AutomaticallyLoadedAssetProperties"))
        {
          if (!a4)
          {
            goto LABEL_25;
          }

          v240 = CFGetTypeID(a4);
          if (v240 != CFArrayGetTypeID())
          {
            goto LABEL_25;
          }

          FigSimpleMutexLock();
          v241 = *(v10 + 1264);
          *(v10 + 1264) = a4;
          goto LABEL_691;
        }

        if (CFEqual(a3, @"AutomaticallyLoadedAssetTrackProperties"))
        {
          if (!a4)
          {
            goto LABEL_25;
          }

          v244 = CFGetTypeID(a4);
          if (v244 != CFArrayGetTypeID())
          {
            goto LABEL_25;
          }

          FigSimpleMutexLock();
          v241 = *(v10 + 1272);
          *(v10 + 1272) = a4;
LABEL_691:
          CFRetain(a4);
          if (v241)
          {
            CFRelease(v241);
          }

          goto LABEL_36;
        }

        if (CFEqual(a3, @"ServiceIdentifier"))
        {
          if (!a4)
          {
            goto LABEL_25;
          }

          v245 = CFStringGetTypeID();
          if (v245 != CFGetTypeID(a4))
          {
            goto LABEL_25;
          }

          v246 = *(v10 + 1320);
          *(v10 + 1320) = a4;
          goto LABEL_721;
        }

        if (CFEqual(a3, @"ForceEnableAccessLog"))
        {
          if (a4)
          {
            v247 = CFGetTypeID(a4);
            if (v247 == CFBooleanGetTypeID())
            {
              OpenGL = 0;
              *(v10 + 1745) = *MEMORY[0x1E695E4D0] == a4;
              goto LABEL_76;
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"OutOfBandTextRenderingVideoDimensions"))
        {
          if (a4)
          {
            v248 = CFGetTypeID(a4);
            if (v248 == CFDictionaryGetTypeID() && CGSizeMakeWithDictionaryRepresentation(a4, (v10 + 1928)))
            {
              OpenGL = 0;
              *(v10 + 1920) = 1;
              goto LABEL_76;
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"PlayHapticTracks"))
        {
          if (a4)
          {
            v249 = CFGetTypeID(a4);
            if (v249 == CFBooleanGetTypeID())
            {
              *(v10 + 1063) = *MEMORY[0x1E695E4D0] == a4;
              if (!*(v10 + 352))
              {
                goto LABEL_75;
              }

              if (dword_1EAF16A10 >= 2)
              {
                LODWORD(start.value) = 0;
                LOBYTE(type.value) = 0;
                v250 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              *&valuePtr.start.value = *MEMORY[0x1E6960C70];
              valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
              time2 = valuePtr.start;
              goto LABEL_184;
            }
          }

          itemfig_handleSetProperty_cold_6(&valuePtr);
LABEL_233:
          OpenGL = LODWORD(valuePtr.start.value);
          goto LABEL_76;
        }

        if (CFEqual(a3, @"HapticPlaybackLocality"))
        {
          if (!a4)
          {
            v246 = *(v10 + 1072);
            *(v10 + 1072) = 0;
            goto LABEL_731;
          }

          v251 = CFGetTypeID(a4);
          if (v251 != CFStringGetTypeID())
          {
            itemfig_handleSetProperty_cold_7(&valuePtr);
            goto LABEL_233;
          }

          v246 = *(v10 + 1072);
          *(v10 + 1072) = a4;
LABEL_721:
          CFRetain(a4);
LABEL_731:
          if (!v246)
          {
            goto LABEL_75;
          }

          v166 = v246;
          goto LABEL_409;
        }

        if (CFEqual(a3, @"AudioSpatializationAllowed"))
        {
          if (!a4)
          {
            goto LABEL_25;
          }

          v252 = CFGetTypeID(a4);
          if (v252 != CFBooleanGetTypeID())
          {
            goto LABEL_25;
          }

          *(v10 + 1440) = *MEMORY[0x1E695E4D0] == a4;
          if (!itemfig_wantsDifferentSpatializationConfiguration(a1))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v253 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v253, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"StereoAudioSpatializationAllowed"))
        {
          if (!a4)
          {
            goto LABEL_25;
          }

          v254 = CFGetTypeID(a4);
          if (v254 != CFBooleanGetTypeID())
          {
            goto LABEL_25;
          }

          *(v10 + 1442) = 1;
          *(v10 + 1441) = *MEMORY[0x1E695E4D0] == a4;
          if (!itemfig_wantsDifferentSpatializationConfiguration(a1))
          {
            goto LABEL_75;
          }

          if (dword_1EAF16A10)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v255 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        if (CFEqual(a3, @"CoordinationIdentifier"))
        {
          if (a4)
          {
            v256 = CFGetTypeID(a4);
            if (v256 != CFStringGetTypeID())
            {
              goto LABEL_25;
            }
          }

          if (FigCFEqual())
          {
            goto LABEL_75;
          }

          AllocatorForMedia = FigGetAllocatorForMedia();
          OpenGL = CFDictionaryCreateMutable(AllocatorForMedia, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!OpenGL)
          {
            goto LABEL_76;
          }

          FigCFDictionarySetValue();
          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
          v258 = *(v10 + 2080);
          *(v10 + 2080) = a4;
          if (a4)
          {
            CFRetain(a4);
          }

          if (v258)
          {
            CFRelease(v258);
          }

          v166 = OpenGL;
LABEL_409:
          CFRelease(v166);
          goto LABEL_75;
        }

        if (CFEqual(a3, @"ParticipatesInCoordinatedPlayback"))
        {
          if (a4)
          {
            v259 = CFGetTypeID(a4);
            if (v259 == CFBooleanGetTypeID())
            {
              OpenGL = 0;
              *(v10 + 2088) = *MEMORY[0x1E695E4D0] == a4;
              goto LABEL_76;
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"VideoSlotUsage"))
        {
          if (a4)
          {
            v260 = CFGetTypeID(a4);
            if (v260 == CFArrayGetTypeID())
            {
              itemfig_updateVideoSlotUsage(a1, a4, v261, v262, v263, v264, v265, v266, v296, v297, v298, v300, v301, v302, start.value, *&start.timescale, start.epoch, v304, time2.value, *&time2.timescale, time2.epoch, v306, *v307, *&v307[8]);
              goto LABEL_75;
            }
          }

          goto LABEL_25;
        }

        if (CFEqual(a3, @"TransientTimebaseForCoordinatedPlaybackSynchronization"))
        {
          if (a4)
          {
            v267 = CFGetTypeID(a4);
            if (v267 != CMTimebaseGetTypeID())
            {
              goto LABEL_25;
            }

            v268 = *(v10 + 344);
            *(v10 + 344) = a4;
            CFRetain(a4);
          }

          else
          {
            v268 = *(v10 + 344);
            *(v10 + 344) = 0;
          }

          if (v268)
          {
            CFRelease(v268);
          }

          if (a4)
          {
            if (!dword_1EAF16A10)
            {
              goto LABEL_75;
            }
          }

          else if (!dword_1EAF16A10)
          {
            goto LABEL_75;
          }

          LODWORD(start.value) = 0;
          LOBYTE(type.value) = 0;
          v272 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v272, OS_LOG_TYPE_DEFAULT);
          goto LABEL_74;
        }

        if (CFEqual(a3, @"RTCReportingCategory"))
        {
          if (!a4)
          {
            goto LABEL_75;
          }

          v269 = CFGetTypeID(a4);
          if (v269 != CFStringGetTypeID())
          {
            goto LABEL_75;
          }

          FigSimpleMutexLock();
          v270 = *(v10 + 1960);
          *(v10 + 1960) = a4;
          CFRetain(a4);
          if (v270)
          {
            CFRelease(v270);
          }

          v271 = *(v10 + 1952);
          if (v271)
          {
            itemfig_handleSetProperty_cold_8(v10 + 1960, v271);
          }

          goto LABEL_835;
        }

        if (CFEqual(a3, @"ClientReportingValues"))
        {
          if (!a4)
          {
            goto LABEL_75;
          }

          v273 = CFGetTypeID(a4);
          if (v273 != CFDictionaryGetTypeID())
          {
            goto LABEL_75;
          }

          FigSimpleMutexLock();
          FigReportingAgentSetStatsForAllKeys(*(v10 + 1952), @"playerStats");
          goto LABEL_835;
        }

        if (CFEqual(a3, @"ArtificiallyDelayPreparingItemForTestingOnly"))
        {
          FigCFNumberGetFloat64();
          OpenGL = 0;
          *(v10 + 2120) = v274;
          goto LABEL_76;
        }

        if (CFEqual(a3, @"SpeedRampData"))
        {
          if (!*(v13 + 1140))
          {
            goto LABEL_75;
          }

          if (a4)
          {
            v275 = CFGetTypeID(a4);
            if (v275 != CFDataGetTypeID() || !FigSpeedRampDataIsValid(a4))
            {
              goto LABEL_25;
            }
          }

          v277 = *(v10 + 2128);
          if (v277)
          {
            CFRelease(v277);
            *(v10 + 2128) = 0;
          }

          if (a4)
          {
            v278 = FigGetAllocatorForMedia();
            *(v10 + 2128) = CFDataCreateCopy(v278, a4);
          }

          if (*(v13 + 48) > 0.0 && (*(v10 + 560) & 0x1D) == 1 && (*(v10 + 584) & 0x1D) == 1)
          {
            FigSimpleMutexLock();
            v279 = *(v13 + 176);
            FigSimpleMutexUnlock();
            if (!v279)
            {
              v280 = v10 + 572;
              memset(&start, 0, sizeof(start));
              HostTimeClock = CMClockGetHostTimeClock();
              CMClockGetTime(&start, HostTimeClock);
              memset(&type, 0, sizeof(type));
              *&valuePtr.start.value = *v280;
              valuePtr.start.epoch = *(v280 + 16);
              time2 = start;
              CMTimeSubtract(&type, &valuePtr.start, &time2);
              valuePtr.start = type;
              time2 = **&MEMORY[0x1E6960CC0];
              v282 = CMTimeCompare(&valuePtr.start, &time2);
              if (v282 >= 1 && dword_1EAF16A10 >= 2)
              {
                v283 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_838:
                itemfig_handleSetProperty_cold_9();
                goto LABEL_75;
              }

              if (v282 >= 1)
              {
                goto LABEL_838;
              }
            }
          }

          if (dword_1EAF16A10 >= 2)
          {
            LODWORD(start.value) = 0;
            LOBYTE(type.value) = 0;
            v288 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v289 = start.value;
            if (os_log_type_enabled(v288, type.value))
            {
              v290 = v289;
            }

            else
            {
              v290 = v289 & 0xFFFFFFFE;
            }

            if (v290)
            {
              v292 = (CMBaseObjectGetDerivedStorage() + 972);
              if (a1)
              {
                v293 = (CMBaseObjectGetDerivedStorage() + 2096);
              }

              else
              {
                v293 = "";
              }

              LODWORD(time2.value) = 136316162;
              *(&time2.value + 4) = "itemfig_handleSetProperty";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v12;
              HIWORD(time2.epoch) = 2082;
              v306 = v292;
              *v307 = 2048;
              *&v307[2] = a1;
              *&v307[10] = 2082;
              *&v307[12] = v293;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          itemfig_updateSpeedRampDataOnAllRenderPipelines();
          goto LABEL_75;
        }

        if (CFEqual(a3, @"OverlapRange"))
        {
          if (a4)
          {
            v276 = CFGetTypeID(a4);
            if (v276 != CFDictionaryGetTypeID())
            {
              goto LABEL_25;
            }

            v287 = *(v10 + 2136);
            *(v10 + 2136) = a4;
            CFRetain(a4);
            if (v287)
            {
              CFRelease(v287);
            }
          }

          else
          {
            v286 = *(v10 + 2136);
            if (v286)
            {
              CFRelease(v286);
              *(v10 + 2136) = 0;
            }
          }

          itemfig_updateOverlapRangeOnAllRenderPipelines();
          goto LABEL_75;
        }

        if (CFEqual(a3, @"AssetDownloadedName"))
        {
          FigSimpleMutexLock();
          if (!a4 || (v284 = CFGetTypeID(a4), v284 != CFStringGetTypeID()))
          {
LABEL_835:
            FigSimpleMutexUnlock();
            goto LABEL_75;
          }

          v285 = *(v10 + 2168);
          *(v10 + 2168) = a4;
        }

        else
        {
          if (!CFEqual(a3, @"AssetDownloadedImageData"))
          {
            if (!CFEqual(a3, @"PriorImageQueueGauge"))
            {
              OpenGL = 4294954512;
              goto LABEL_76;
            }

            if (a4)
            {
              v294 = CFGetTypeID(a4);
              if (v294 != FigImageQueueGaugeGetTypeID())
              {
                goto LABEL_75;
              }

              v295 = *(v10 + 2200);
              *(v10 + 2200) = a4;
              CFRetain(a4);
            }

            else
            {
              v295 = *(v10 + 2200);
              *(v10 + 2200) = 0;
            }

            if (v295)
            {
              CFRelease(v295);
            }

            itemfig_updatePriorImageQueueGaugeOnRenderPipelines(a1);
            goto LABEL_75;
          }

          FigSimpleMutexLock();
          if (!a4)
          {
            goto LABEL_835;
          }

          v291 = CFGetTypeID(a4);
          if (v291 != CFDataGetTypeID())
          {
            goto LABEL_835;
          }

          v285 = *(v10 + 2176);
          *(v10 + 2176) = a4;
        }

        CFRetain(a4);
        if (v285)
        {
          CFRelease(v285);
        }

        goto LABEL_835;
      }

      if (a4)
      {
        CMTimeMakeFromDictionary(&valuePtr.start, a4);
        *(v10 + 188) = *&valuePtr.start.value;
        v88 = valuePtr.start.epoch;
      }

      else
      {
        v87 = MEMORY[0x1E6960C70];
        *(v10 + 188) = *MEMORY[0x1E6960C70];
        v88 = *(v87 + 16);
      }

      *(v10 + 204) = v88;
      if (*(v10 + 352))
      {
        FigSimpleMutexLock();
        v95 = *(v13 + 536);
        FigSimpleMutexUnlock();
        if (v95 != a1)
        {
          if (dword_1EAF16A10 >= 2)
          {
            itemfig_handleSetProperty_cold_1();
          }

          *&valuePtr.start.value = *MEMORY[0x1E6960C70];
          valuePtr.start.epoch = *(MEMORY[0x1E6960C70] + 16);
          time2 = valuePtr.start;
          goto LABEL_184;
        }

        v96 = *(v10 + 352);
        *&valuePtr.start.value = *(v10 + 188);
        valuePtr.start.epoch = *(v10 + 204);
        FigPlaybackBossSetAdvanceTimeForOverlappedPlayback(v96, &valuePtr.start.value);
      }
    }

    playerfig_updateStartHostTimeEstimatesOfItemAndFollowingItems(v12, a1);
    goto LABEL_75;
  }

  itemfig_handleSetProperty_cold_19(&valuePtr);
  return LODWORD(valuePtr.start.value);
}

uint64_t playerfig_synchronizeLayerToTimebaseWithTransaction()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 896);
  if (v1)
  {
    Timebase = FigPlaybackBossGetTimebase(*(DerivedStorage + 352));
    FigLayerSynchronizerSynchronizeToTimebaseWithDeferredTransaction(v1, Timebase);
  }

  return FigSimpleMutexUnlock();
}

void itemfig_setCAImageQueueFlagsForApertureMode(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  if (*(v3 + 1193))
  {
    v4 = (8 * (*(v3 + 1194) != 0)) | 0x10;
  }

  else
  {
    v4 = 8 * (*(v3 + 1194) != 0);
  }

  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (FigUseVideoReceiverForCALayer())
  {
    if (v5)
    {
      FigSimpleMutexLock();
    }

    v10 = 0;
    itemfig_getVideoTargetTableForVideoTrack(a1, &v10);
    if (v10)
    {
      FigImageQueueTableSetFlagsAndMask(v10, v4, 24);
    }

    if (v5)
    {
      FigSimpleMutexUnlock();
LABEL_11:

      CFRelease(v5);
    }
  }

  else
  {
    FigSimpleMutexLock();
    v6 = *(DerivedStorage + 1144);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          CFArrayGetValueAtIndex(*(DerivedStorage + 1144), i);
          CAImageQueueSetFlags();
        }
      }
    }

    FigSimpleMutexUnlock();
    if (v5)
    {
      goto LABEL_11;
    }
  }
}

void itemfig_setVisualContextArray(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      if (CFArrayGetCount(a2))
      {
        v6 = a2;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    FigSimpleMutexLock();
    v7 = FigCFEqual();
    if (!v7)
    {
      v8 = *(DerivedStorage + 1776);
      *(DerivedStorage + 1776) = v6;
      if (v6)
      {
        CFRetain(v6);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    v9 = *(DerivedStorage + 352);
    FigSimpleMutexUnlock();
    if (!v7 && v9)
    {
      playerfig_rebuildRenderPipelines_disturbIfInLameDuckGapOrMainVideoStillEnabled(v5, 0, 0);
    }

    CFRelease(v5);
  }

  else
  {
    itemfig_setVisualContextArray_cold_1();
  }
}

void itemfig_applyItemAudioCurvesToAllAudioTracks(uint64_t a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v4 = *(a1 + 648);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v6 = Count;
        v7 = 0;
        do
        {
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 648), v7);
            if (*(ValueAtIndex + 1) == 1936684398)
            {
              v9 = ValueAtIndex[2];
              if (v9)
              {
                break;
              }
            }

            if (++v7 == v6)
            {
              goto LABEL_15;
            }
          }

          v10 = *(a1 + 1520);
          FigBaseObject = FigRenderPipelineGetFigBaseObject(v9);
          v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v12)
          {
            break;
          }

          ++v7;
        }

        while (!v12(FigBaseObject, @"SecondaryAudioCurves", v10) && v7 != v6);
      }
    }

LABEL_15:
    FigSimpleMutexUnlock();

    CFRelease(v3);
  }

  else
  {

    FigSignalErrorAtGM();
  }
}

uint64_t itemfig_wantsDifferentSpatializationConfiguration(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 368);
  if (v3 && (Count = CFArrayGetCount(v3), Count >= 1))
  {
    v5 = Count;
    v6 = 0;
    v7 = *MEMORY[0x1E695E480];
    v8 = *MEMORY[0x1E695E4D0];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 368), v6);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v10 = *(ValueAtIndex + 3);
      if (v10)
      {
        FigBaseObject = FigRenderPipelineGetFigBaseObject(v10);
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v12)
        {
          v12(FigBaseObject, @"SpatializationEnabled", v7, &cf);
        }

        if (cf)
        {
          v13 = cf == v8;
          if (itemfig_shouldEnableSpatializationForTrack(a1, *ValueAtIndex) != v13)
          {
            break;
          }
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_14;
      }
    }

    v14 = 1;
  }

  else
  {
LABEL_14:
    v14 = 0;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t fp_updateRenderPipelineSpeedRamp(uint64_t a1, uint64_t a2)
{
  FigBaseObject = FigRenderPipelineGetFigBaseObject(a1);
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {

    return v7(FigBaseObject, @"SpeedRampData", a2);
  }

  return result;
}

uint64_t fp_updateRenderPipelineOverlapRange(uint64_t a1, uint64_t a2)
{
  FigBaseObject = FigRenderPipelineGetFigBaseObject(a1);
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {

    return v7(FigBaseObject, @"OverlapRange", a2);
  }

  return result;
}

uint64_t itemfig_CopyCommonMetadata(void *a1, const __CFArray *AllCommonKeys, const __CFAllocator *a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v47 = 0;
  v48 = 0;
  cf = 0;
  value = 0;
  if (*DerivedStorage || !a4)
  {

    return FigSignalErrorAtGM();
  }

  v10 = DerivedStorage;
  v11 = itemfig_assureBasicsReadyForInspection(a1);
  if (v11)
  {
    v41 = v11;
  }

  else if (AllCommonKeys || (AllCommonKeys = FigMetadataGetAllCommonKeys()) != 0)
  {
    Count = CFArrayGetCount(AllCommonKeys);
    if (Count < 1)
    {
      itemfig_CopyCommonMetadata_cold_3(v52);
      Mutable = 0;
LABEL_88:
      v41 = v52[0];
      goto LABEL_69;
    }

    v12 = 0;
    v42 = 0;
    v44 = 0;
    v13 = 0;
    v14 = 0;
    Mutable = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(AllCommonKeys, v12);
      v17 = v51;
      if (!v14 && !v51)
      {
        FigBaseObject = FigFormatReaderGetFigBaseObject(*(v10 + 126));
        v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v19)
        {
          v14 = v19(FigBaseObject, @"QuickTimeMetadataReader", a3, &v51) != 0;
        }

        else
        {
          v14 = 1;
        }

        v17 = v51;
      }

      if (!v17 || (v20 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0 || v20(v17, @"comn", ValueAtIndex, 0, a3, &value, &cf))
      {
        v21 = v50;
        if (!v44 && !v50)
        {
          v22 = FigFormatReaderGetFigBaseObject(*(v10 + 126));
          v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v23)
          {
            v24 = v23(v22, @"iTunesMetadataReader", a3, &v50) != 0;
          }

          else
          {
            v24 = 1;
          }

          v44 = v24;
          v21 = v50;
        }

        if (!v21 || (v25 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0 || v25(v21, @"comn", ValueAtIndex, 0, a3, &value, &cf))
        {
          v26 = v49;
          if (!v13 && !v49)
          {
            v27 = FigFormatReaderGetFigBaseObject(*(v10 + 126));
            v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v28)
            {
              v13 = v28(v27, @"QuickTimeUserDataReader", a3, &v49) != 0;
            }

            else
            {
              v13 = 1;
            }

            v26 = v49;
          }

          if (!v26 || (v29 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0 || v29(v26, @"comn", ValueAtIndex, 0, a3, &value, &cf))
          {
            v30 = v48;
            if (!v48)
            {
              v31 = FigFormatReaderGetFigBaseObject(*(v10 + 126));
              v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v32)
              {
                if (v32(v31, @"ISOUserDataReader", a3, &v48))
                {
                  v13 = 1;
                }
              }

              else
              {
                v13 = 1;
              }

              v30 = v48;
              if (!v48)
              {
                goto LABEL_46;
              }
            }

            v33 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v33 || v33(v30, @"comn", ValueAtIndex, 0, a3, &value, &cf))
            {
LABEL_46:
              v34 = v47;
              if (!v42 && !v47)
              {
                v35 = FigFormatReaderGetFigBaseObject(*(v10 + 126));
                v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v36)
                {
                  v37 = v36(v35, @"MetadataReader", a3, &v47) != 0;
                }

                else
                {
                  v37 = 1;
                }

                v42 = v37;
                v34 = v47;
              }

              if (v34)
              {
                v38 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (v38)
                {
                  v38(v34, @"comn", ValueAtIndex, 0, a3, &value, &cf);
                }
              }
            }
          }
        }
      }

      if (value)
      {
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!Mutable)
          {
            itemfig_CopyCommonMetadata_cold_2(v52);
            goto LABEL_88;
          }
        }

        v39 = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!v39)
        {
          itemfig_CopyCommonMetadata_cold_1(v52);
          goto LABEL_88;
        }

        v40 = v39;
        CFDictionaryAddValue(v39, @"MetadataCommonKey", ValueAtIndex);
        CFDictionaryAddValue(v40, @"MetadataValue", value);
        if (cf)
        {
          CFDictionaryAddValue(v40, @"MetadataProperties", cf);
        }

        CFDictionaryAddValue(Mutable, ValueAtIndex, v40);
        CFRelease(v40);
        CFRelease(value);
        value = 0;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      ++v12;
    }

    while (Count != v12);
    v41 = 0;
    if (!Mutable)
    {
      goto LABEL_69;
    }

    *a4 = Mutable;
  }

  else
  {
    v41 = 0;
  }

  Mutable = 0;
LABEL_69:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v50)
  {
    CFRelease(v50);
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

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v41;
}

uint64_t itemfig_GetNextThumbnailTime(void *a1, CMTime *a2, unsigned int a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *MEMORY[0x1E6960C70];
  *&v20.value = *MEMORY[0x1E6960C70];
  v10 = *(MEMORY[0x1E6960C70] + 16);
  v20.epoch = v10;
  cf = 0;
  if (*DerivedStorage || !a4 || (*a4 = v9, *(a4 + 16) = v10, a3 >= 4))
  {

    return FigSignalErrorAtGM();
  }

  v12 = DerivedStorage;
  v13 = dword_196E72750[a3];
  v14 = itemfig_assureBasicsReadyForInspection(a1);
  if (v14)
  {
    goto LABEL_15;
  }

  v15 = *(v12 + 260);
  if (!v15)
  {
    v14 = FigSignalErrorAtGM();
LABEL_15:
    v18 = v14;
    goto LABEL_16;
  }

  v16 = *(v12 + 126);
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v17)
  {
    v14 = v17(v16, v15, &cf, 0);
    if (!v14)
    {
      v19 = *a2;
      v18 = FigPlaybackBossSnapTimeToIFrame(cf, 0, &v19, v13, &v20);
      if (!v18)
      {
        *a4 = v20;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v18 = 4294954514;
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t itemfig_SetTrackProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v9)
  {
    itemfig_SetTrackProperty_cold_2(&v19);
    return v19;
  }

  v10 = v9;
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 1240))
  {
    v12 = *(DerivedStorage + 1312);
    if (v12 || (v12 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]), (*(DerivedStorage + 1312) = v12) != 0))
    {
      v13 = a2;
      Value = CFDictionaryGetValue(v12, a2);
      if (Value)
      {
        v15 = Value;
        CFRetain(Value);
LABEL_10:
        if (a4)
        {
          CFDictionarySetValue(v15, a3, a4);
        }

        else
        {
          CFDictionaryRemoveValue(v15, a3);
        }

        FigSimpleMutexUnlock();
        CFRelease(v15);
        v11 = 0;
        goto LABEL_14;
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v15 = Mutable;
        CFDictionarySetValue(*(DerivedStorage + 1312), v13, Mutable);
        goto LABEL_10;
      }
    }

    itemfig_SetTrackProperty_cold_1();
    v11 = v18;
    goto LABEL_14;
  }

  FigSimpleMutexUnlock();
  v11 = itemfig_setTrackPropertyInternal(a1, a2, a3, a4, 1);
LABEL_14:
  CFRelease(v10);
  return v11;
}

uint64_t itemfig_SeekToDateWithID(uint64_t a1, uint64_t a2, int a3)
{
  if (*CMBaseObjectGetDerivedStorage() || (v6 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v7 = v6;
    itemfig_postSeekWasCanceledNotification(v6, a1, a3, 0);
    CFRelease(v7);
    return 4294954514;
  }
}

uint64_t itemfig_SetCurrentTimeWithRangeAndID(const void *a1, CMTime *a2, int a3, CMTime *a4, __int128 *a5, int a6)
{
  v10 = *a2;
  v9 = *a4;
  v7 = *a5;
  v8 = *(a5 + 2);
  return itemfig_setCurrentTimeWithRangeAndIDGuts(a1, &v10, a3, &v9, &v7, a6, 0, 0);
}

uint64_t itemfig_CopyAsset(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage || !a2)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v5 = *(DerivedStorage + 1256);
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    *a2 = v5;
    return 0;
  }
}

uint64_t itemfig_ExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, int a3, CMBufferRef *a4)
{
  v19 = 0;
  if (!*CMBaseObjectGetDerivedStorage() && a4)
  {
    v9 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v9)
    {
      v10 = v9;
      TrackStorage = itemfig_getTrackStorage(a1, a2, &v19);
      if (TrackStorage)
      {
        v18 = TrackStorage;
      }

      else
      {
        CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        v12 = v19;
        v13 = *(v19 + 168);
        if (v13 && (Count = CFArrayGetCount(v13), Count >= 1))
        {
          v15 = Count;
          v16 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v12 + 168), v16);
            if (*(ValueAtIndex + 7) == a3)
            {
              break;
            }

            if (v15 == ++v16)
            {
              goto LABEL_13;
            }
          }

          v18 = 0;
          *a4 = CMBufferQueueDequeueIfDataReadyAndRetain(*(ValueAtIndex + 4));
        }

        else
        {
LABEL_13:
          v18 = FigSignalErrorAtGM();
        }

        FigSimpleMutexUnlock();
      }

      CFRelease(v10);
    }

    else
    {
      itemfig_ExtractAndRetainNextSampleBuffer_cold_1(&v20);
      return v20;
    }

    return v18;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t itemfig_SetCurrentTimeWithOptions(const void *a1, CMTime *a2)
{
  v12 = 0;
  v11 = **&MEMORY[0x1E6960C70];
  v10 = v11;
  v9 = 0;
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetInt32IfPresent();
  Value = FigCFDictionaryGetValue();
  FigCFDictionaryGetInt32IfPresent();
  v8 = *a2;
  v7 = v11;
  v6 = v11;
  return itemfig_setCurrentTimeWithRangeAndIDGuts(a1, &v8, 0, &v7, &v6, 0, Value, 0);
}

uint64_t itemfig_setCurrentTimeWithRangeAndIDGuts(CFTypeRef cf, CMTime *a2, int a3, CMTime *a4, uint64_t a5, int a6, const void *a7, int a8)
{
  LODWORD(v71) = a3;
  v81 = *MEMORY[0x1E69E9840];
  v72 = cf;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = DerivedStorage;
  if (!a6)
  {
    a6 = *(DerivedStorage + 2092);
    *(DerivedStorage + 2092) = FPSupport_IncrementSeekID(a6);
  }

  if (dword_1EAF16A10)
  {
    LODWORD(v74.value) = 0;
    BYTE4(v73) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*v12)
  {
    return FigSignalErrorAtGM();
  }

  if ((a2->flags & 0x1D) != 1)
  {
    return FigSignalErrorAtGM();
  }

  v14 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v14)
  {
    return FigSignalErrorAtGM();
  }

  v15 = v14;
  v16 = CMBaseObjectGetDerivedStorage();
  if (*v16)
  {
    CFRelease(v15);
    return FigSignalErrorAtGM();
  }

  v19 = v16;
  v20 = v71 & 0xF;
  if ((v20 - 2) > 3)
  {
    v21 = 1;
  }

  else
  {
    v21 = dword_196E727BC[v20 - 2];
  }

  FigSimpleMutexLock();
  v22 = *(v12 + 528);
  if (v22)
  {
    CFRelease(v22);
    *(v12 + 528) = 0;
  }

  *(v12 + 2224) = CFAbsoluteTimeGetCurrent();
  time[0].start.value = 0;
  if (v72)
  {
    itemfig_setCurrentTimeWithRangeAndIDGuts_cold_1(v72, time);
  }

  *(v12 + 536) = 0;
  *(v12 + 96) = v20;
  v23 = *&a4->value;
  *(v12 + 64) = a4->epoch;
  *(v12 + 48) = v23;
  v24 = *a5;
  *(v12 + 88) = *(a5 + 16);
  *(v12 + 72) = v24;
  v66 = v19;
  HIDWORD(v65) = a6;
  HIDWORD(v67) = a8;
  if (*(v12 + 352))
  {
    if (*(v19 + 67))
    {
      v25 = !*(CMBaseObjectGetDerivedStorage() + 480) && CFArrayGetValueAtIndex(*(v19 + 66), 0) == *(v19 + 67);
    }

    else
    {
      v25 = CFArrayGetCount(*(v19 + 66)) < 1;
    }

    if (*(v12 + 1745))
    {
      v27 = 0.0;
      if (*(v19 + 13) == 4)
      {
        v27 = *(v19 + 12);
      }

      itemfig_updateAccessLogEntry(v27);
      itemfig_commitAccessLogEntry(v15);
    }

    if (*(v12 + 524) == a6)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(v12 + 524);
    }

    if (a6)
    {
      *(v12 + 524) = a6;
      *(v12 + 536) = a8;
      v29 = *(v12 + 528);
      *(v12 + 528) = a7;
      if (a7)
      {
        CFRetain(a7);
      }

      if (v29)
      {
        CFRelease(v29);
      }

      *(v12 + 544) = 1;
    }

    playerfig_cleanupOverlappedOutroComponents(v15, 0);
    *(v12 + 2217) = 0;
    if ((v71 & 0x20) != 0)
    {
      if (!v25)
      {
LABEL_42:
        v74.value = 0;
        v30 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &v74.value);
        if (v30)
        {
          v17 = v30;
          FigSimpleMutexUnlock();
          v48 = 1;
          if (!v28)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        }

        if (dword_1EAF16A10 >= 2)
        {
          HIDWORD(v73) = 0;
          BYTE3(v73) = 0;
          v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        playerfig_pauseRenderPipelines();
        playeritemfig_releaseRenderPipelines(v15, 0, v74.value, v32, v33, v34, v35, v36, value, v65, v66, v67, a7, a4, a5, v71, v72, v73, v74.value, *&v74.timescale, v74.epoch, v75, start.value, *&start.timescale);
        playerfig_disturbPlayQueue();
        v37 = *&a2->value;
        *(v12 + 40) = a2->epoch;
        *(v12 + 24) = v37;
        v38 = *(v12 + 328);
        *&time[0].start.value = *&a2->value;
        time[0].start.epoch = a2->epoch;
        CMTimebaseSetTime(v38, &time[0].start);
        playerfig_prepareWorkingItem(v15, 0, v74.value);
        if (*(v66 + 536) && *(CMBaseObjectGetDerivedStorage() + 352))
        {
          itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(*(v66 + 536), 0);
          v39 = *(v66 + 536);
          *&time[0].start.value = *MEMORY[0x1E6960C70];
          time[0].start.epoch = *(MEMORY[0x1E6960C70] + 16);
          start = time[0].start;
          itemfig_matchBossRateToPlayerRateAndPlaybackState(v39, &time[0].start, &start);
        }

        FigDeferredTransactionCommit(v74.value, 0);
        if (v74.value)
        {
          CFRelease(v74.value);
        }

        v17 = 0;
        v40 = 1;
        goto LABEL_51;
      }
    }

    else
    {
      itemfig_clearCoordinatedPlaybackSynchronizationTimebase();
      playerfig_clearCoordinatedPlaybackSynchronizationTimebaseForItemsAfterItem(v15, v72);
      *&time[0].start.value = *&a2->value;
      time[0].start.epoch = a2->epoch;
      playerfig_triggerStartupTasksForSeekIfNecessary(v15, v72, a6, time);
      if (!v25)
      {
        goto LABEL_42;
      }
    }

    if (*(v12 + 128))
    {
      CMByteStreamGetCMBaseObject();
      FigCRABSGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        if (*(v66 + 52) == 4 || (FigPlaybackBossGetTime(*(v12 + 352), time), start = *a2, CMTimeCompare(&start, &time[0].start)))
        {
          FigPlaybackBossInterruptQueueing(*(v12 + 352));
          FigCRABSUnhintActiveRanges(*(v12 + 128));
        }
      }
    }

    if (dword_1EAF16A10 >= 2)
    {
      LODWORD(v74.value) = 0;
      v61 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v72, 0);
    v62 = *(v12 + 352);
    v63 = *(v12 + 512);
    *&time[0].start.value = *&a2->value;
    time[0].start.epoch = a2->epoch;
    start = *a4;
    v74 = *a5;
    v17 = FigPlaybackBossSetTimeWithRange(v62, &time[0].start, v21, &start, &v74, v63, a6);
    FigPlaybackBossGetTime(*(v12 + 352), &start);
    v74 = **&MEMORY[0x1E6960CC0];
    CMTimeRangeMake(time, &start, &v74);
    itemfig_HintStreamForTimeRange(v72, &time[0].start.value);
    v40 = 0;
LABEL_51:
    playerfig_updateStartHostTimeEstimatesOfItemAndFollowingItems(v15, v72);
    if (*(v66 + 536) && *(CMBaseObjectGetDerivedStorage() + 1745))
    {
      v41 = 0.0;
      if (*(v66 + 52) == 4)
      {
        v41 = *(v66 + 48);
      }

      itemfig_updateAccessLogEntry(v41);
    }

    v42 = 0;
    goto LABEL_65;
  }

  if (dword_1EAF16A10)
  {
    LODWORD(v74.value) = 0;
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v43 = *&a2->value;
  *(v12 + 40) = a2->epoch;
  *(v12 + 24) = v43;
  v44 = *(v12 + 328);
  *&time[0].start.value = *&a2->value;
  time[0].start.epoch = a2->epoch;
  CMTimebaseSetTime(v44, &time[0].start);
  v42 = a6 != 0;
  start = *a2;
  v74 = **&MEMORY[0x1E6960CC0];
  CMTimeRangeMake(time, &start, &v74);
  itemfig_HintStreamForTimeRange(v72, &time[0].start.value);
  if (CFArrayGetCount(*(v19 + 66)) >= 1 && CFArrayGetValueAtIndex(*(v19 + 66), 0) == v72)
  {
    if (v19[568])
    {
      v19[568] = 0;
      playerfig_postDeferredPrerollWasCancelledNotification(v15, *(v19 + 144));
    }

    v28 = 0;
    v17 = 0;
    v45 = MEMORY[0x1E6960C70];
    v46 = *MEMORY[0x1E6960C70];
    *(v12 + 548) = *MEMORY[0x1E6960C70];
    v47 = *(v45 + 16);
    *(v12 + 564) = v47;
    *(v12 + 572) = v46;
    *(v12 + 588) = v47;
  }

  else
  {
    v28 = 0;
    v17 = 0;
  }

  v40 = 1;
LABEL_65:
  itemfig_reportingAgentReportPlayStartMovieTime();
  v48 = !v42;
  FigSimpleMutexUnlock();
  if (v40)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  if (!v28)
  {
    goto LABEL_69;
  }

LABEL_68:
  itemfig_postSeekWasCanceledNotification(v15, v72, v28, 0);
LABEL_69:
  if ((v48 & 1) == 0)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    FigCFDictionarySetValue();
    FigCFDictionarySetInt32();
    if (Mutable)
    {
      if (dword_1EAF16A10)
      {
        LODWORD(v74.value) = 0;
        v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v51 = v74.value;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v52 = v51;
        }

        else
        {
          v52 = v51 & 0xFFFFFFFE;
        }

        if (v52)
        {
          v53 = v72;
          if (v72)
          {
            v54 = (CMBaseObjectGetDerivedStorage() + 2096);
            v53 = v72;
          }

          else
          {
            v54 = "";
          }

          LODWORD(start.value) = 136315906;
          *(&start.value + 4) = "itemfig_setCurrentTimeWithRangeAndIDGuts";
          LOWORD(start.flags) = 2048;
          *(&start.flags + 2) = v53;
          HIWORD(start.epoch) = 2082;
          *v77 = v54;
          v78 = 1024;
          v79 = HIDWORD(v65);
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CFRelease(Mutable);
    }

    else
    {
      v55 = v15;
      LODWORD(v74.value) = 0;
      v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v57 = v74.value;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v58 = v57;
      }

      else
      {
        v58 = v57 & 0xFFFFFFFE;
      }

      if (v58)
      {
        v59 = v72;
        if (v72)
        {
          v60 = (CMBaseObjectGetDerivedStorage() + 2096);
          v59 = v72;
        }

        else
        {
          v60 = "";
        }

        LODWORD(start.value) = 136315650;
        *(&start.value + 4) = "itemfig_setCurrentTimeWithRangeAndIDGuts";
        LOWORD(start.flags) = 2048;
        *(&start.flags + 2) = v59;
        HIWORD(start.epoch) = 2082;
        *v77 = v60;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v15 = v55;
    }
  }

  CFRelease(v15);
  return v17;
}

uint64_t FigCRABSUnhintActiveRanges(uint64_t a1)
{
  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 24);
  result = VTable + 24;
  v5 = *(v4 + 16);
  if (v5)
  {

    return v5(a1, 0, 0);
  }

  return result;
}

uint64_t playerfig_StartPreroll(float a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*DerivedStorage || a1 == 0.0)
  {
    return FigSignalErrorAtGM();
  }

  if (*(DerivedStorage + 48) == 0.0)
  {
    FigSimpleMutexLock();
    if (*(DerivedStorage + 536))
    {
      v8 = CMBaseObjectGetDerivedStorage();
      if (*(v8 + 352))
      {
        v9 = v8;
        itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(*(DerivedStorage + 536), a3);
        started = FigPlaybackBossStartPreroll(*(v9 + 352), *(v9 + 512), *(v9 + 512), a1);
        goto LABEL_19;
      }

      if (dword_1EAF16A10)
      {
        goto LABEL_15;
      }
    }

    else if (dword_1EAF16A10)
    {
LABEL_15:
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (CFArrayGetCount(*(DerivedStorage + 528)) >= 1)
    {
      v11 = 0;
      *(DerivedStorage + 568) = 1;
      *(DerivedStorage + 572) = a1;
      *(DerivedStorage + 576) = a3;
LABEL_20:
      FigSimpleMutexUnlock();
      return v11;
    }

    started = FigSignalErrorAtGM();
LABEL_19:
    v11 = started;
    goto LABEL_20;
  }

  v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return FigSignalErrorAtGM();
}

uint64_t playerfig_StepByCount(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*DerivedStorage || !*(DerivedStorage + 536))
  {
    return FigSignalErrorAtGM();
  }

  if (*(DerivedStorage + 48) != 0.0)
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return FigSignalErrorAtGM();
  }

  v8 = CMBaseObjectGetDerivedStorage();
  if (!*(v8 + 352))
  {
    return FigSignalErrorAtGM();
  }

  v9 = v8;
  v10 = *(v8 + 524);
  if (v10)
  {
    *(v8 + 524) = 0;
    *(v8 + 536) = 0;
    itemfig_postSeekWasCanceledNotification(a1, *(DerivedStorage + 536), v10, 0);
  }

  itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(*(DerivedStorage + 536), 0);
  return FigPlaybackBossStepByCount(*(v9 + 352), a2, *(v9 + 512));
}

uint64_t playerfig_SetRateAndAnchorTime(uint64_t a1, CMTime *a2, uint64_t a3, char a4, float a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16A10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ((a2->flags & 0x1D) != 1 && (*(a3 + 12) & 0x1D) != 1)
  {
    return playerfig_setRateForReason(a1, 0, 0, a5);
  }

  if (a4)
  {
    time.value = @"EstablishCoordinatedPlaybackTiming";
    values[0] = *MEMORY[0x1E695E4D0];
    v11 = CFDictionaryCreate(*MEMORY[0x1E695E480], &time, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v11 = 0;
  }

  time = *a2;
  *values = *a3;
  v15 = *(a3 + 16);
  v12 = playerfig_setRateGuts(a1, 0, MEMORY[0x1E6960C70], &time, values, v11, a5);
  if (v11)
  {
    CFRelease(v11);
  }

  return v12;
}

uint64_t playerfig_SetRateWithOptions(uint64_t a1, int a2, float a3)
{
  v8 = *MEMORY[0x1E6960C70];
  *&v15.value = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v15.epoch = v6;
  v14 = 0;
  FigCFDictionaryGetInt32IfPresent();
  if (!FigCFDictionaryGetCMTimeIfPresent())
  {
    return playerfig_setRateForReason(a1, 0, a2, a3);
  }

  v13 = v15;
  v11 = v8;
  v12 = v6;
  v9 = v8;
  v10 = v6;
  return playerfig_setRateGuts(a1, 0, &v13, &v11, &v9, a2, a3);
}

uint64_t playerfig_AddExternalStartupTask(uint64_t a1, const void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    playerfig_AddExternalStartupTask_cold_2(v7);
    return v7[0];
  }

  v4 = DerivedStorage;
  if (*DerivedStorage)
  {
    playerfig_AddExternalStartupTask_cold_1(v7);
    return v7[0];
  }

  FigSimpleMutexLock();
  if (dword_1EAF16A10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFArrayAppendValue(v4[143], a2);
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t playerfig_RemoveExternalStartupTask(uint64_t a1, const void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    playerfig_RemoveExternalStartupTask_cold_2(v11);
    return v11[0];
  }

  v4 = DerivedStorage;
  if (*DerivedStorage)
  {
    playerfig_RemoveExternalStartupTask_cold_1(v11);
    return v11[0];
  }

  FigSimpleMutexLock();
  v5 = *(v4 + 143);
  v13.length = CFArrayGetCount(v5);
  v13.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v13, a2);
  if (FirstIndexOfValue == -1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v7 = FirstIndexOfValue;
    if (dword_1EAF16A10)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFArrayRemoveValueAtIndex(*(v4 + 143), v7);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t playerfig_CopyDisplayedCVPixelBuffer(uint64_t a1, uint64_t a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  memset(v16, 0, sizeof(v16));
  if (!a1)
  {
    playerfig_CopyDisplayedCVPixelBuffer_cold_4(&v17);
    return v17;
  }

  if (!a3)
  {
    playerfig_CopyDisplayedCVPixelBuffer_cold_3(&v17);
    return v17;
  }

  FigSimpleMutexLock();
  ValueAtIndex = FigCFArrayGetValueAtIndex();
  if (!ValueAtIndex)
  {
    FigSimpleMutexUnlock();
    goto LABEL_20;
  }

  v6 = CFRetain(ValueAtIndex);
  FigSimpleMutexUnlock();
  if (!v6)
  {
LABEL_20:
    playerfig_CopyDisplayedCVPixelBuffer_cold_2(&v17);
    return v17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v8 = DerivedStorage;
    FigSimpleMutexLock();
    ValueIfPresent = FigCFDictionaryGetValueIfPresent();
    v10 = MEMORY[0x1E695E480];
    if ((ValueIfPresent || FigCFDictionaryGetValueIfPresent()) && FigCFArrayGetFirstIndexOfValue() != -1 && (v16[0] = FigCFArrayGetValueAtIndex()) != 0)
    {
      v11 = CFArrayCreate(*v10, v16, 1, MEMORY[0x1E695E9C0]);
    }

    else
    {
      v12 = *(v8 + 1144);
      if (!v12)
      {
        v13 = 0;
LABEL_15:
        FigSimpleMutexUnlock();
        v14 = FPSupport_CopyCurrentlyDisplayedPixelBufferFromCAImageQueueArray(v13, *v10, a3);
        if (v13)
        {
          CFRelease(v13);
        }

        goto LABEL_17;
      }

      v11 = CFRetain(v12);
    }

    v13 = v11;
    goto LABEL_15;
  }

  playerfig_CopyDisplayedCVPixelBuffer_cold_1(&v17);
  v14 = v17;
LABEL_17:
  CFRelease(v6);
  return v14;
}

uint64_t itemfig_reportAttemptToWriteToReadOnlyTimebase()
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

void itemfig_postMetadataOutputChanged(const void *a1, uint64_t a2, const void *a3)
{
  MetadataOutputDataCallbackPayload = FPSupport_CreateMetadataOutputDataCallbackPayload(a3, a1);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (MetadataOutputDataCallbackPayload)
  {

    CFRelease(MetadataOutputDataCallbackPayload);
  }
}

void itemfig_postMetadataOutputFlushed(void *a1)
{
  MedadataOutputFlushCallbackPayload = FPSupport_CreateMedadataOutputFlushCallbackPayload(a1);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (MedadataOutputFlushCallbackPayload)
  {

    CFRelease(MedadataOutputFlushCallbackPayload);
  }
}

uint64_t playerfig_DuckVolume(uint64_t a1, int a2, float a3, float a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v10 = DerivedStorage;
    if (a3 < 0.0)
    {
      a3 = 0.0;
    }

    if (a2)
    {
      if (a3 >= 1.0 || *(DerivedStorage + 812) != 0)
      {
        return 0;
      }

      *(DerivedStorage + 808) = a3;
      *(DerivedStorage + 812) = 1;
      FigSimpleMutexLock();
      if (!*(v10 + 536))
      {
        goto LABEL_21;
      }

      if (playerfig_mustDisturbPlaybackWhenSettingAudioPropertyOnCurrentItem(a1, 0))
      {
        playerfig_DuckVolume_cold_1();
        return 0;
      }

      v12 = a1;
      v13 = a3;
      v14 = a4;
      v15 = 1;
    }

    else
    {
      if (!*(DerivedStorage + 812))
      {
        return 0;
      }

      *(DerivedStorage + 812) = 0;
      FigSimpleMutexLock();
      if (!*(v10 + 536))
      {
LABEL_21:
        FigSimpleMutexUnlock();
        return 0;
      }

      if (playerfig_mustDisturbPlaybackWhenSettingAudioPropertyOnCurrentItem(a1, 0))
      {
        playerfig_DuckVolume_cold_2();
        return 0;
      }

      v12 = a1;
      v13 = a3;
      v14 = a4;
      v15 = 0;
    }

    playerfig_applySoftwareVolume(v13, v14, v12, @"SoftwareVolume2", v15);
    goto LABEL_21;
  }

  return FigSignalErrorAtGM();
}

uint64_t playerfig_SilentMute(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v6 = DerivedStorage;
    if (a2)
    {
      if (!DerivedStorage[813])
      {
        v7 = 1;
        v8 = 0.0;
        goto LABEL_10;
      }
    }

    else if (DerivedStorage[813])
    {
      v7 = 0;
      v8 = 1.0;
LABEL_10:
      playerfig_applySoftwareVolume(v8, 0.0, a1, @"SoftwareVolume5", 1);
      v6[813] = v7;
      v9 = *(v6 + 67);
      if (v9)
      {
        playerfig_updateResourceUsageOnGlobalResourceArbiter(a1, v9);
      }
    }

    return 0;
  }

  return FigSignalErrorAtGM();
}

uint64_t OUTLINED_FUNCTION_28_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_71_0(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t OUTLINED_FUNCTION_72_0()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_77_0(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

double OUTLINED_FUNCTION_79_0()
{
  STACK[0x260] = 0;
  STACK[0x2B0] = 0;
  result = 0.0;
  *&STACK[0x290] = 0u;
  *&STACK[0x2A0] = 0u;
  return result;
}

double OUTLINED_FUNCTION_80_0()
{
  STACK[0x2B0] = 0;
  result = 0.0;
  *&STACK[0x290] = 0u;
  *&STACK[0x2A0] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_85_0()
{

  return FigNotificationCenterAddWeakListener();
}

uint64_t OUTLINED_FUNCTION_88_0()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_89_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_96_0(float a1)
{
  v3 = v2 - 128;
  *v3 = a1;
  *(v3 + 4) = v1;
  *(v3 + 12) = 1024;
}

BOOL OUTLINED_FUNCTION_103_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_109_0(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

BOOL OUTLINED_FUNCTION_110_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, os_log_type_t type, int a37, int a38)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_111_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_log_type_t type, int a13, int a14)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_113_0@<X0>(__int128 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __int128 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, __int128 a41, uint64_t a42)
{
  a41 = *a1;
  a42 = *(a1 + 2);
  a32 = a41;
  a33 = a42;

  return itemfig_matchBossRateToPlayerRateAndPlaybackState(v42, &a41, &a32);
}

uint64_t OUTLINED_FUNCTION_114_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_115_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_117_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_124_0(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

BOOL OUTLINED_FUNCTION_135_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, os_log_type_t type, int a37, int a38)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_139_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_142_0()
{

  return itemfig_addCFNumberToAccessLogEntry();
}

BOOL OUTLINED_FUNCTION_152_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_log_type_t type, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_161_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_163_0()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_177_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_178_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_180_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_182_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, os_log_type_t type, int a53, int a54)
{

  return os_log_type_enabled(a1, type);
}

__n128 OUTLINED_FUNCTION_196_0@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  v1[4] = *a1;
  v1[5].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_209_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_210_0()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

void OUTLINED_FUNCTION_214_0(uint64_t a1@<X8>)
{
  *(v3 + 52) = a1;
  *(v3 + 60) = 2048;
  *(v3 + 62) = v2;
  *(v3 + 70) = 2082;
  *(v3 + 72) = v1;
}

__n128 OUTLINED_FUNCTION_229_0@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, __int128 a40)
{
  *&STACK[0x290] = *a1;
  STACK[0x2A0] = *(a1 + 16);
  return a40;
}

const void *OUTLINED_FUNCTION_233_0()
{
  v2 = *(v0 + 528);

  return CFArrayGetValueAtIndex(v2, 0);
}

uint64_t OUTLINED_FUNCTION_238_0()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

BOOL OUTLINED_FUNCTION_239_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, os_log_type_t type, uint64_t a18, uint64_t a19, int a20)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_240_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, os_log_type_t type, int a58, int a59)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_241_0()
{

  return FigNotificationCenterRemoveWeakListener();
}

BOOL OUTLINED_FUNCTION_242_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_243_0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_244_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, os_log_type_t type, uint64_t a54, int a55)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_245_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_247_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_252_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_253_0()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_255_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, __int128 a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, __int128 a51, uint64_t a52)
{
  a42 = a51;
  a43 = a52;

  return itemfig_lookForEmptyEditAndMapTime(a1, &a42, &a51, &a41);
}

uint64_t OUTLINED_FUNCTION_271_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_274_0()
{

  return FigCFDictionarySetCMTime();
}

uint64_t OUTLINED_FUNCTION_276_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_282_0()
{

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

uint64_t OUTLINED_FUNCTION_283_0()
{

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

Float64 OUTLINED_FUNCTION_292_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, CMTime *time, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t timea)
{
  *(v45 + 112) = a27;
  *(v45 + 128) = a28;

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_293_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_294_0@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v25 + 16) = a1;
  a13 = a2;
  a14 = a1;

  return itemfig_matchBossRateToPlayerRateAndPlaybackState(v24, &a24, &a13);
}

uint64_t OUTLINED_FUNCTION_295_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_304_0()
{
  v1 = *(v0 + 16);
  *&STACK[0x290] = *v0;
  *&STACK[0x2A0] = v1;
  result = *(v0 + 32);
  *&STACK[0x2B0] = result;
  return result;
}

__n128 OUTLINED_FUNCTION_312_0()
{
  result = *v0;
  *&STACK[0x290] = *v0;
  STACK[0x2A0] = v0[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_337_0()
{

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

uint64_t OUTLINED_FUNCTION_338_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_339_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

Float64 OUTLINED_FUNCTION_340_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CMTime *time, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 timea, uint64_t time_16)
{
  timea = *v28;
  time_16 = *(v28 + 2);

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_341_0()
{

  return FigSimpleMutexUnlock();
}

CFTypeRef OUTLINED_FUNCTION_342_0()
{
  *(v1 + 128) = v0;

  return CFRetain(v0);
}

CFNumberRef OUTLINED_FUNCTION_343_0(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberSInt32Type, a3);
}

uint64_t OUTLINED_FUNCTION_344_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 192) = a1;

  return FigCFDictionarySetCMTime();
}

uint64_t OUTLINED_FUNCTION_345_0()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_346_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_347_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_348_0()
{

  return FigDispatchAsyncPostNotification();
}

uint64_t OUTLINED_FUNCTION_349_0()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

void OUTLINED_FUNCTION_353_0()
{

  CFArrayAppendValue(v0, &STACK[0x290]);
}

uint64_t OUTLINED_FUNCTION_354_0()
{

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

__n128 OUTLINED_FUNCTION_361_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11, uint64_t a12)
{
  result = a11;
  *(v12 - 128) = a11;
  *(v12 - 112) = a12;
  return result;
}

__n128 OUTLINED_FUNCTION_365_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __n128 a28, unint64_t a29)
{
  result = a28;
  v29[3] = a28;
  v29[4].n128_u64[0] = a29;
  return result;
}

__n128 OUTLINED_FUNCTION_376_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15, uint64_t a16)
{
  result = a15;
  *(v16 - 128) = a15;
  *(v16 - 112) = a16;
  return result;
}

__n128 OUTLINED_FUNCTION_419_0()
{
  result = *v0;
  *(v1 - 256) = *v0;
  *(v1 - 240) = v0[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_425_0()
{

  return FigDispatchAsyncPostNotification();
}

BOOL OUTLINED_FUNCTION_426_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_log_type_t type, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_428_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, os_log_type_t type, int a37, int a38)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_429_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_log_type_t type, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_430_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_431_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_432_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int16 a18, char a19, os_log_type_t type, int a21)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_433_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, os_log_type_t type, int a18)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_434_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, os_log_type_t type, int a37, int a38)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_435_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, os_log_type_t type, int a19)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_436_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_type_t type, int a14, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_437_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_438_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v59 = STACK[0x260];

  return itemfig_copyFormatDescription(v59, &a58);
}

uint64_t OUTLINED_FUNCTION_439_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t time2)
{

  return CMTimeCompare(&STACK[0x290], &time2);
}

uint64_t OUTLINED_FUNCTION_440_0()
{

  return FigSimpleMutexLock();
}

CFNumberRef OUTLINED_FUNCTION_441_0(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberSInt32Type, a3);
}

uint64_t OUTLINED_FUNCTION_442_0()
{

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

uint64_t OUTLINED_FUNCTION_444_0()
{

  return __maskrune(v0, 0x40000uLL);
}

uint64_t FigBytePumpCreateForHTTPChunk(const void *a1, const __CFURL *a2, const void *a3, const __CFDictionary *a4, NSObject *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v206 = *MEMORY[0x1E69E9840];
  valuePtr = -1;
  v174 = 0;
  value = 0;
  if (!a2 || !a6 || !a8)
  {
    FigBytePumpCreateForHTTPChunk_cold_3(&context);
    return context;
  }

  v176 = 0;
  v162 = FigCFHTTPCreateURLString(a2);
  CFPreferencesSynchronize(@"com.apple.coremedia", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  FigNote_AllowInternalDefaultLogs();
  v167 = a1;
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MTEnableCaption2015Behavior();
  FigBytePumpGetClassID();
  v11 = CMDerivedObjectCreate();
  if (!v11)
  {
    cf = a2;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    inited = FigRetainProxyCreate();
    if (inited)
    {
      goto LABEL_254;
    }

    v14 = DerivedStorage + 8120;
    if (a1)
    {
      *(DerivedStorage + 56) = CFRetain(a1);
    }

    *(DerivedStorage + 9216) = 1;
    IsItOKToLogURLs = FigIsItOKToLogURLs();
    *(DerivedStorage + 347) = IsItOKToLogURLs;
    v16 = MEMORY[0x1E695E4D0];
    if (a4)
    {
      v17 = CFDictionaryGetValue(a4, @"FBPCreateOption_InheritURIQueryComponentFromReferencingURI");
      v178[0] = 0;
      v18 = *v16;
      *(DerivedStorage + 328) = v17 == *v16;
      if (CFDictionaryGetValue(a4, @"FBPCreateOption_HTTPRequestOptions"))
      {
        FigBytePumpCreateForHTTPChunk_cold_2();
      }

      else
      {
        *(DerivedStorage + 240) = 0;
      }

      v19 = CFDictionaryGetValue(a4, @"FBPCreateOption_OutOfBandAlternateTracks");
      if (v19)
      {
        v19 = CFRetain(v19);
      }

      *(DerivedStorage + 8568) = v19;
      v20 = CFDictionaryGetValue(a4, @"FBPCreateOption_PlaylistCache");
      if (v20)
      {
        v20 = CFRetain(v20);
      }

      *(DerivedStorage + 304) = v20;
      v21 = CFDictionaryGetValue(a4, @"FBPCreateOption_StreamingCache");
      if (v21)
      {
        v21 = CFRetain(v21);
      }

      *(DerivedStorage + 296) = v21;
      if (CFDictionaryGetValueIfPresent(a4, @"FBPCreateOption_MetricEvents", &value))
      {
        *(DerivedStorage + 9208) = CFArrayCreateMutableCopy(a1, 0, value);
      }

      v22 = CFDictionaryGetValue(a4, @"FBPCreateOption_CPECryptors");
      if (v22)
      {
        context = DerivedStorage;
        CFDictionaryApplyFunction(v22, segPumpSetupInitialCryptorApplierFunction, &context);
        v23 = DWORD2(context);
        if (DWORD2(context))
        {
          goto LABEL_252;
        }
      }

      *(DerivedStorage + 332) = v18 == CFDictionaryGetValue(a4, @"FBPCreateOption_DisallowCellularAccess");
      *(DerivedStorage + 333) = v18 == CFDictionaryGetValue(a4, @"FBPCreateOption_DisallowsExpensiveNetworkAccess");
      *(DerivedStorage + 334) = v18 == CFDictionaryGetValue(a4, @"FBPCreateOption_DisallowsConstrainedNetworkAccess");
      v24 = CFDictionaryGetValue(a4, @"FBPCreateOption_iTunesRentalID");
      if (v24)
      {
        v24 = CFRetain(v24);
      }

      *(DerivedStorage + 9640) = v24;
      v25 = CFDictionaryGetValue(a4, @"FBPCreateOption_iTunesAccountID");
      if (v25)
      {
        v25 = CFRetain(v25);
      }

      *(DerivedStorage + 9648) = v25;
      v26 = CFDictionaryGetValue(a4, @"FBPCreateOption_PrimarySessionID");
      if (v26)
      {
        v26 = CFRetain(v26);
      }

      *(DerivedStorage + 232) = v26;
      v27 = CFDictionaryGetValue(a4, @"FBPCreateOption_CustomURLLoader");
      if (v27)
      {
        v27 = CFRetain(v27);
      }

      *(DerivedStorage + 80) = v27;
      v28 = CFDictionaryGetValue(a4, @"FBPCreateOption_DefaultContentKeySession");
      if (v28)
      {
        v29 = CFRetain(v28);
        *(DerivedStorage + 9664) = v29;
        if (v29)
        {
          if (FigCFDictionaryGetBooleanIfPresent())
          {
            v30 = v174 == 0;
          }

          else
          {
            v30 = PKDIsContentKeyBossEnabled();
          }

          *(DerivedStorage + 9672) = v30;
          v31 = CFDictionaryGetValue(a4, @"FBPCreateOption_ContentKeyBoss");
          if (v31)
          {
            v31 = CFRetain(v31);
          }

          *(DerivedStorage + 9680) = v31;
          *(DerivedStorage + 335) = CFDictionaryGetValue(a4, @"FBPCreateOption_DisableNativeHTTPReads") == v18;
          v32 = CFDictionaryGetValue(a4, @"FBPCreateOption_ParentNetworkActivity");
          if (v32)
          {
            v32 = CFRetain(v32);
          }

          *(DerivedStorage + 9288) = v32;
          v33 = FigCFDictionaryGetValue();
          if (v33)
          {
            v33 = CFRetain(v33);
          }

          *(DerivedStorage + 9296) = v33;
          FigCFDictionaryGetBooleanIfPresent();
          v34 = CFDictionaryGetValue(a4, @"FBPCreateOption_InitialPreloadedPlaylist");
          if (v34)
          {
            v34 = CFRetain(v34);
          }

          *(DerivedStorage + 312) = v34;
          if (v18 == CFDictionaryGetValue(a4, @"FBPCreateOption_DoNotLogURLs"))
          {
            *(DerivedStorage + 347) = 0;
          }

          v157 = v18 == CFDictionaryGetValue(a4, @"FBPCreateOption_ABRHistoryRecordingEnabled");
          v35 = FigCFDictionaryGetValue();
          if (v35)
          {
            v35 = CFRetain(v35);
          }

          *(DerivedStorage + 9688) = v35;
          IsItOKToLogURLs = *(DerivedStorage + 347);
LABEL_48:
          v171 = *MEMORY[0x1E695E4C0];
          if (IsItOKToLogURLs)
          {
            v36 = v18;
          }

          else
          {
            v36 = *MEMORY[0x1E695E4C0];
          }

          inited = segPumpSetHTTPRequestOptionsValue(DerivedStorage, @"FHRP_OKToLogURLs", v36);
          if (!inited)
          {
            inited = segPumpSetHTTPRequestOptionsValue(DerivedStorage, @"FHRP_NetworkHistory", *(DerivedStorage + 88));
            if (!inited)
            {
              FigNetworkUrgencyMonitorCreate(a1, (DerivedStorage + 9712));
              if (a4)
              {
                v37 = CFDictionaryGetValue(a4, @"FBPCreateOption_AlternativeConfigurationOptions");
                if (v37)
                {
                  FigCFDictionaryGetBooleanIfPresent();
                  v163 = 0;
LABEL_58:
                  v38 = CFDictionaryGetValue(a4, @"FBPCreateOption_StoreBagSessionConfiguration");
                  if (v38)
                  {
                    v40 = CFRetain(v38);
                    v39 = (DerivedStorage + 9320);
                    *(DerivedStorage + 9320) = v40;
                    if (v40)
                    {
LABEL_62:
                      v168 = v37;
                      v41 = FigRCLGetNumberWithDefault(v40, @"networkHistoryPredictorAlgorithm");
                      LODWORD(v42) = v41 & ~(v41 >> 31);
                      if (v42 >= 8)
                      {
                        v42 = 8;
                      }

                      else
                      {
                        v42 = v42;
                      }

                      *(DerivedStorage + 112) = v42;
                      v43 = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"networkHistoryLowLatencyPredictorAlgorithm");
                      LODWORD(v44) = v43 & ~(v43 >> 31);
                      if (v44 >= 8)
                      {
                        v44 = 8;
                      }

                      else
                      {
                        v44 = v44;
                      }

                      *(DerivedStorage + 104) = v44;
                      v45 = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"networkHistorySecondaryPredictorAlgorithm");
                      if (v45 >= 8)
                      {
                        v46 = 8;
                      }

                      else
                      {
                        v46 = v45;
                      }

                      *(DerivedStorage + 120) = v46;
                      *(DerivedStorage + 128) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"minBytesForGlobalNetworkHistoryPrediction");
                      *(DerivedStorage + 136) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"minActiveNetworkTimeForGlobalNetworkHistoryPrediction");
                      *(DerivedStorage + 144) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"networkHistoryPredictorReportingInterval");
                      *(DerivedStorage + 8160) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"minReserveSegments");
                      *(DerivedStorage + 0x2000) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"highSegmentLatencyThresholdForRTCReporting");
                      *(DerivedStorage + 8200) = FigRCLGetDoubleWithDefault(*(DerivedStorage + 9320), @"minDownloadTimerInterval");
                      *(DerivedStorage + 8272) = FigRCLGetDoubleWithDefault(*(DerivedStorage + 9320), @"fastStartBandwidthAddend");
                      v47 = FigRCLGetDoubleWithDefault(*(DerivedStorage + 9320), @"fastStartBandwidthMultiplier");
                      if (v47 < 1.0)
                      {
                        v47 = 1.0;
                      }

                      *(DerivedStorage + 8264) = v47;
                      v48 = FigRCLGetDoubleWithDefault(*(DerivedStorage + 9320), @"slowDownloadBufferMaximum");
                      if (v48 < 0.0)
                      {
                        v48 = 0.0;
                      }

                      *(DerivedStorage + 8240) = v48;
                      v49 = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"fastStartTargetDurationPercentage") / 100.0;
                      if (v49 < 0.1)
                      {
                        v49 = 0.1;
                      }

                      *(DerivedStorage + 8256) = v49;
                      v50 = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"startTargetDurationPercentage") / 100.0;
                      if (v50 < 0.2)
                      {
                        v50 = 0.2;
                      }

                      *(DerivedStorage + 8248) = v50;
                      *(DerivedStorage + 8209) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"allowAverageBandwidth") != 0;
                      *(DerivedStorage + 8225) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"halveExpectedSwitchBandwidthWhenAudioIsActive") != 0;
                      *(DerivedStorage + 8226) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"issueLowBandwidthAlertWhenNWPathUpdates") != 0;
                      *(DerivedStorage + 8228) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"allowDownloadPerfReports") != 0;
                      *(DerivedStorage + 9784) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"enableHTTP3Connection") != 0;
                      *(DerivedStorage + 9833) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"enableL4S") != 0;
                      *(DerivedStorage + 9832) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"disableHSHPBuffering") != 0;
                      v51 = MGGetSInt32Answer();
                      v52 = MGGetSInt32Answer();
                      v165 = DerivedStorage + 8120;
                      v166 = DerivedStorage;
                      if (v51 >= 1 && v52 >= 1)
                      {
                        v53 = 0;
                        if (v51 >= v52)
                        {
                          v54 = v52;
                        }

                        else
                        {
                          v54 = v51;
                        }

                        *&context = DerivedStorage + 192;
                        *(&context + 1) = DerivedStorage + 200;
                        *&v193 = DerivedStorage + 208;
                        v55 = &unk_196E728E0;
                        do
                        {
                          v56 = FigRCLCopyCFType(*v39, off_1E7476C00[v53]);
                          v57 = v56;
                          if (v56)
                          {
                            v58 = CFGetTypeID(v56);
                            if (v58 == CFArrayGetTypeID())
                            {
                              v59 = v39;
                              Count = CFArrayGetCount(v57);
                              v177 = 0;
                              *v178 = 0;
                              if (Count >= 1)
                              {
                                v61 = Count;
                                for (i = 0; v61 != i; ++i)
                                {
                                  ValueAtIndex = CFArrayGetValueAtIndex(v57, i);
                                  if (!ValueAtIndex)
                                  {
                                    break;
                                  }

                                  v64 = CFGetTypeID(ValueAtIndex);
                                  if (v64 != CFDictionaryGetTypeID() || !FigCFDictionaryGetInt32IfPresent() || !FigCFDictionaryGetInt32IfPresent())
                                  {
                                    break;
                                  }

                                  if (v54 <= *v178)
                                  {
                                    v67 = 0;
                                    v66 = v177;
                                    v39 = v59;
                                    goto LABEL_101;
                                  }
                                }
                              }

                              v39 = v59;
                            }
                          }

                          v65 = 0;
                          while (v54 > dword_196E728CC[v65])
                          {
                            if (++v65 == 5)
                            {
                              goto LABEL_109;
                            }
                          }

                          v66 = *&v55[v65 * 4];
                          v67 = 1;
LABEL_101:
                          if (v66 >= 1)
                          {
                            v68 = *(&context + v53);
                            if (*v68)
                            {
                              CFRelease(*v68);
                            }

                            AllocatorForMedia = FigGetAllocatorForMedia();
                            Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                            *v68 = Mutable;
                            if (Mutable)
                            {
                              FigCFDictionarySetInt32();
                              if (v67)
                              {
                                v71 = v171;
                              }

                              else
                              {
                                v71 = v18;
                              }

                              CFDictionaryAddValue(*v68, @"FBPBTK_IsSetByStoreBag", v71);
                            }
                          }

LABEL_109:
                          if (v57)
                          {
                            CFRelease(v57);
                          }

                          ++v53;
                          v55 += 20;
                        }

                        while (v53 != 3);
                        v14 = v165;
                        DerivedStorage = v166;
                        a1 = v167;
                      }

                      FigGetCFPreferenceDoubleWithDefault();
                      *(v14 + 256) = v72;
                      v73 = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"enableQUIC");
                      if (v73 != -1)
                      {
                        if (v73 == 1)
                        {
                          v74 = v18;
                        }

                        else
                        {
                          v74 = v171;
                        }

                        segPumpSetHTTPRequestOptionsValue(DerivedStorage, @"FHRP_EnableQUIC", v74);
                      }

                      valuePtr = FigGetCFPreferenceNumberWithDefault();
                      if (valuePtr != -1 || (valuePtr = FigRCLGetNumberWithDefault(*v39, @"connectionCacheCellPurgeTimeout"), valuePtr != -1))
                      {
                        v75 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
                        segPumpSetHTTPRequestOptionsValue(DerivedStorage, @"FHRP_ConnectionCacheCellPurgeTimeout", v75);
                        if (v75)
                        {
                          CFRelease(v75);
                        }
                      }

                      if (*v39)
                      {
                        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(DerivedStorage, @"networkPredictorCoefPredictionTimeInterval", (DerivedStorage + 9328));
                        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(DerivedStorage, @"networkPredictorCoefBandwidth", (DerivedStorage + 9336));
                        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(DerivedStorage, @"networkPredictorCoefBandwidthRelativeStdDev", (DerivedStorage + 9344));
                        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(DerivedStorage, @"networkPredictorCoefBandwidthStdError", (DerivedStorage + 9352));
                        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(DerivedStorage, @"networkPredictorCoefLatency", (DerivedStorage + 9368));
                        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(DerivedStorage, @"networkPredictorCoefLatencyRelativeStdDev", (DerivedStorage + 9376));
                        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(DerivedStorage, @"networkPredictorCoefLatencyStdError", (DerivedStorage + 9384));
                        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(DerivedStorage, @"networkPredictorCoefActiveNetworkTime", (DerivedStorage + 9392));
                        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(DerivedStorage, @"networkPredictorCoefBandwidthRelativeStdDev", (DerivedStorage + 9360));
                        *(DerivedStorage + 9400) = FigRCLGetDoubleWithDefault(*(DerivedStorage + 9320), @"networkPredictorCoefKonstant");
                      }

                      *(DerivedStorage + 8396) = FigGetCFPreferenceNumberWithDefault();
                      *(v14 + 1665) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"enablePeriodicBandwidthReporting") != 0;
                      *(DerivedStorage + 342) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"enablePairedLLABR");
                      *(DerivedStorage + 342) = FigGetCFPreferenceNumberWithDefault();
                      *(DerivedStorage + 392) = DerivedStorage + 440;
                      *(DerivedStorage + 400) = DerivedStorage + 4160;
                      *(DerivedStorage + 408) = DerivedStorage + 1680;
                      *(DerivedStorage + 416) = DerivedStorage + 5400;
                      *(DerivedStorage + 424) = DerivedStorage + 2920;
                      *(DerivedStorage + 432) = DerivedStorage + 6640;
                      *(*(DerivedStorage + 392) + 16) = CFRetain(cf);
                      *(*(DerivedStorage + 392) + 8) = CFRetain(cf);
                      *(*(DerivedStorage + 392) + 24) = CFRetain(cf);
                      *(DerivedStorage + 160) = a6;
                      *(DerivedStorage + 176) = FigRetainProxyRetain();
                      *(DerivedStorage + 8888) = 0x3FF0000000000000;
                      *(DerivedStorage + 8880) = 1065353216;
                      *(v14 + 93) = 257;
                      *(DerivedStorage + 8848) = 0;
                      *(DerivedStorage + 330) = 257;
                      *(v14 + 240) = 257;
                      *(v14 + 304) = 1;
                      *(DerivedStorage + 8384) = 0x4034000000000000;
                      *v14 = 1;
                      *(DerivedStorage + 338) = 1;
                      *(DerivedStorage + 8944) = CFStringCreateWithFormat(a1, 0, @"%p", v176);
                      *(v14 + 96) = 1;
                      inited = segPumpSetupNetworkHistory();
                      if (!inited)
                      {
                        *(DerivedStorage + 360) = 0;
                        *(DerivedStorage + 368) = DerivedStorage + 360;
                        *(DerivedStorage + 8280) = 0;
                        *(DerivedStorage + 8288) = DerivedStorage + 8280;
                        *(DerivedStorage + 8296) = 0;
                        *(DerivedStorage + 8304) = DerivedStorage + 8296;
                        segPumpClearStatistics(DerivedStorage);
                        if (a3)
                        {
                          v76 = CFRetain(a3);
                          *(DerivedStorage + 216) = v76;
                          if (v76)
                          {
                            v77 = CFDictionaryGetValue(v76, @"X-Playback-Session-Id");
                            v78 = v77 ? CFRetain(v77) : 0;
                            *(DerivedStorage + 224) = v78;
                            v79 = *(DerivedStorage + 96);
                            v80 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                            if (v80)
                            {
                              v80(v79, 0x1F0B635B8, v78);
                            }
                          }
                        }

                        else
                        {
                          *(DerivedStorage + 216) = 0;
                        }

                        *(DerivedStorage + 376) = -1;
                        v81 = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"maxParallelConnectionCount");
                        v82 = 0;
                        if (v81 <= 1)
                        {
                          v83 = 1;
                        }

                        else
                        {
                          v83 = v81;
                        }

                        if (v83 >= 6)
                        {
                          v84 = 6;
                        }

                        else
                        {
                          v84 = v83;
                        }

                        if (v81 >= 2)
                        {
                          v82 = FigRCLGetNumberWithDefault(*v39, @"startWithSingleConnection");
                        }

                        v85 = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"maxReadAheadConnectionCount");
                        if (v85 >= 5)
                        {
                          v86 = 5;
                        }

                        else
                        {
                          v86 = v85;
                        }

                        v87 = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"maxStepAheadConnectionCount");
                        v88 = 0;
                        if (v86 >= v87)
                        {
                          v89 = v87;
                        }

                        else
                        {
                          v89 = v86;
                        }

                        v90 = (DerivedStorage + 400);
                        while (1)
                        {
                          inited = segPumpStreamInitStorage(DerivedStorage, *(v90 - 1), v88, v84, v86, v89, v82);
                          if (inited)
                          {
                            break;
                          }

                          inited = segPumpStreamInitStorage(DerivedStorage, *v90, v88, v84, v86, v89, v82);
                          if (inited)
                          {
                            break;
                          }

                          ++v88;
                          v90 += 2;
                          if (v88 == 3)
                          {
                            if (a5)
                            {
                              Local = FigHTTPSchedulerRetain(a5);
                              *(DerivedStorage + 64) = Local;
                              v92 = v168;
                            }

                            else
                            {
                              Local = FigHTTPSchedulerCreateLocal(v176);
                              *(DerivedStorage + 64) = Local;
                              v92 = v168;
                              if (!Local)
                              {
                                Local = FigHTTPSchedulerRetain(0);
                                *(DerivedStorage + 64) = Local;
                              }
                            }

                            *(DerivedStorage + 72) = FigHTTPSchedulerRetain(Local);
                            *(DerivedStorage + 48) = 1;
                            if (*(DerivedStorage + 32) || (v93 = FigURLStorageSessionCopyGlobalSession(), (*(DerivedStorage + 32) = v93) != 0))
                            {
                              *(DerivedStorage + 320) = CFRetain(cf);
                              *(DerivedStorage + 9312) = FigNetworkInterfaceReporterCreate();
                              if (v163)
                              {
                                v94 = 0;
                                v169 = 0;
                                v170 = 0;
                                v95 = 0;
                                v96 = 0;
                                v97 = 0;
                              }

                              else
                              {
                                v98 = CFDictionaryGetValue(v92, @"ServiceIdentifier");
                                if (!v98 || (v94 = v98, v99 = CFGetTypeID(v98), v99 != CFStringGetTypeID()))
                                {
                                  v94 = 0;
                                }

                                v100 = CFDictionaryGetValue(v92, @"StorefrontID");
                                if (!v100 || (v101 = v100, v102 = CFGetTypeID(v100), v102 != CFStringGetTypeID()))
                                {
                                  v101 = 0;
                                }

                                v170 = v101;
                                v103 = CFDictionaryGetValue(v92, @"MediaIdentifier");
                                if (!v103 || (v104 = v103, v105 = CFGetTypeID(v103), v105 != CFStringGetTypeID()))
                                {
                                  v104 = 0;
                                }

                                v106 = CFDictionaryGetValue(v92, @"ContentProvider");
                                if (!v106 || (v96 = v106, v107 = CFGetTypeID(v106), v107 != CFStringGetTypeID()))
                                {
                                  v96 = 0;
                                }

                                v169 = v104;
                                v108 = CFDictionaryGetValue(v92, @"ServiceInformationKey");
                                if (!v108 || (v97 = v108, v109 = CFGetTypeID(v108), v109 != CFDictionaryGetTypeID()))
                                {
                                  v97 = 0;
                                }

                                v95 = CFDictionaryGetValue(v92, @"HierarchyToken");
                              }

                              v110 = *v39;
                              v111 = FigGetAllocatorForMedia();
                              v112 = CFDictionaryCreateMutable(v111, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                              if (v112)
                              {
                                v113 = v112;
                                v114 = v94;
                                for (j = 0; j != 13; ++j)
                                {
                                  v116 = featureOptionsList[j];
                                  v117 = FigRCLCopyCFType(v110, *v116);
                                  if (v117)
                                  {
                                    v118 = v117;
                                    CFDictionarySetValue(v113, *v116, v117);
                                    CFRelease(v118);
                                  }
                                }

                                v119 = FigRCLCopyConfigurationGroupName(v110);
                                if (v119)
                                {
                                  v120 = v119;
                                  CFDictionarySetValue(v113, @"configurationGroup", v119);
                                  CFRelease(v120);
                                }

                                DerivedStorage = v166;
                                v121 = CFDictionaryGetValue(*(v166 + 240), @"FHRP_ClientBundleIdentifier");
                                if (v169)
                                {
                                  CFDictionarySetValue(v113, @"MediaIdentifier", v169);
                                }

                                v122 = v95;
                                if (v96)
                                {
                                  CFDictionarySetValue(v113, @"ContentProvider", v96);
                                }

                                if (v170)
                                {
                                  CFDictionarySetValue(v113, @"StorefrontID", v170);
                                }

                                if (v97)
                                {
                                  CFDictionarySetValue(v113, @"ServiceInformationKey", v97);
                                }

                                v123 = (v166 + 9232);
                                if (!FigReportingAgentCreate(*(v166 + 224), 0, *(v166 + 9080), v114, v122, v121, 1, v113, *(v166 + 347), (v166 + 9232)))
                                {
                                  v124 = *v123;
                                  if (*v123)
                                  {
                                    v125 = CFURLCopyHostName(*(v166 + 320));
                                    if (v125)
                                    {
                                      v126 = v125;
                                      if (*(v165 + 1144))
                                      {
                                        v127 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                                        if (v127)
                                        {
                                          v127(v124, 0x1F0B64538, 0x1F0B66638, v126, 0);
                                        }
                                      }

                                      CFRelease(v126);
                                    }

                                    v128 = *v123;
                                    v129 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                    if (v129)
                                    {
                                      v129(v128, 0x1F0B644D8, v171);
                                    }
                                  }
                                }

                                CFRelease(v113);
                                v92 = v168;
                              }

                              *(DerivedStorage + 9696) = nw_activity_create();
                              *(*(DerivedStorage + 392) + 1192) = nw_activity_create();
                              *(*(DerivedStorage + 408) + 1192) = nw_activity_create();
                              *(*(DerivedStorage + 424) + 1192) = nw_activity_create();
                              if (*(DerivedStorage + 9696))
                              {
                                if (!*(DerivedStorage + 9288) || (nw_activity_set_parent_activity(), *(DerivedStorage + 9696)))
                                {
                                  nw_activity_activate();
                                }
                              }

                              if (*(*(DerivedStorage + 392) + 1192) && *(DerivedStorage + 9696))
                              {
                                nw_activity_set_parent_activity();
                              }

                              if (*(*(DerivedStorage + 408) + 1192) && *(DerivedStorage + 9696))
                              {
                                nw_activity_set_parent_activity();
                              }

                              if (*(*(DerivedStorage + 424) + 1192) && *(DerivedStorage + 9696))
                              {
                                nw_activity_set_parent_activity();
                              }

                              if (*(*(DerivedStorage + 392) + 1192))
                              {
                                nw_activity_activate();
                              }

                              if (*(*(DerivedStorage + 408) + 1192))
                              {
                                nw_activity_activate();
                              }

                              if (*(*(DerivedStorage + 424) + 1192))
                              {
                                nw_activity_activate();
                              }

                              FigNetworkInterfaceReporterSamplePhysicalStatistics(*(DerivedStorage + 9312), 0, 0, 0, 0);
                              *(DerivedStorage + 288) = -1;
                              memset(&v172[8], 0, 216);
                              segPumpMakeNetworkPredictionInput(DerivedStorage, v172);
                              v130 = *(DerivedStorage + 104);
                              v131 = *(DerivedStorage + 112);
                              *v172 = v131;
                              v132 = xmmword_196E72850;
                              *&v172[40] = xmmword_196E72850;
                              v133 = *(DerivedStorage + 342) != 0;
                              if (*(DerivedStorage + 342))
                              {
                                v134 = 0.96;
                              }

                              else
                              {
                                v134 = 0.0;
                              }

                              if (dword_1EAF16A30)
                              {
                                v177 = 0;
                                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                                v136 = v177;
                                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
                                {
                                  v137 = v136;
                                }

                                else
                                {
                                  v137 = v136 & 0xFFFFFFFE;
                                }

                                if (v137)
                                {
                                  v138 = *(v166 + 8944);
                                  v139 = *(v166 + 120);
                                  if (!v138)
                                  {
                                    v138 = &stru_1F0B1AFB8;
                                  }

                                  *v178 = 136316418;
                                  *&v178[4] = "FigBytePumpCreateForHTTPChunk";
                                  *&v178[12] = 2114;
                                  *&v178[14] = v138;
                                  *&v178[22] = 1024;
                                  LODWORD(v179) = v131;
                                  WORD2(v179) = 1024;
                                  *(&v179 + 6) = v130;
                                  WORD5(v179) = 1024;
                                  HIDWORD(v179) = v139;
                                  LOWORD(v180) = 1024;
                                  *(&v180 + 2) = 1;
                                  _os_log_send_and_compose_impl();
                                }

                                fig_log_call_emit_and_clean_up_after_send_and_compose();
                                DerivedStorage = v166;
                                v92 = v168;
                                v132 = xmmword_196E72850;
                              }

                              v140 = *DerivedStorage;
                              v141 = *(DerivedStorage + 96);
                              v203 = *&v172[176];
                              v204 = *&v172[192];
                              v205 = *&v172[208];
                              v199 = *&v172[112];
                              v200 = *&v172[128];
                              v201 = *&v172[144];
                              v202 = *&v172[160];
                              v195 = *&v172[48];
                              v196 = *&v172[64];
                              v197 = *&v172[80];
                              v198 = *&v172[96];
                              v193 = *&v172[16];
                              v194 = *&v172[32];
                              *&v178[8] = xmmword_196E72860;
                              v179 = xmmword_196E72870;
                              v142 = *(DerivedStorage + 9320);
                              v143 = (DerivedStorage + 9760);
                              *v178 = v130;
                              v180 = v132;
                              v181 = 0u;
                              v182 = 0u;
                              v183 = 0u;
                              v184 = 0u;
                              v185 = 0u;
                              v186 = 0u;
                              v187 = v134;
                              v188 = v133;
                              v189 = 0u;
                              v190 = 0u;
                              memset(v191, 0, sizeof(v191));
                              context = *v172;
                              v23 = FigAlternateFilterMonitorCreateForPlaybackBitrate(v167, v140, 0, segPumpLoadStartupScoreCallback, v141, &context, v178, v142, v176, v157, (DerivedStorage + 9760));
                              if (*(DerivedStorage + 9760))
                              {
                                if ((v163 & 1) == 0)
                                {
                                  v144 = CFDictionaryGetValue(v92, @"ServiceIdentifier");
                                  if (v144)
                                  {
                                    v145 = v144;
                                    v146 = CFGetTypeID(v144);
                                    if (v146 == CFStringGetTypeID())
                                    {
                                      v147 = *v143;
                                      v148 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                      if (v148)
                                      {
                                        v148(v147, @"AfmfpbProperty_ServiceIdentifier", v145);
                                      }
                                    }
                                  }
                                }

                                v149 = *(DerivedStorage + 9080);
                                if (v149)
                                {
                                  v150 = *v143;
                                  v151 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                  if (v151)
                                  {
                                    v151(v150, @"AfmfpbProperty_ClientName", v149);
                                  }
                                }

                                v152 = *(DerivedStorage + 9688);
                                if (v152)
                                {
                                  v153 = *v143;
                                  v154 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                  if (v154)
                                  {
                                    v154(v153, @"AfmfpbProperty_PlaybackSessionID", v152);
                                  }
                                }
                              }

                              *(*(DerivedStorage + 392) + 76) = 0;
                              *(*(DerivedStorage + 408) + 76) = 0;
                              *(*(DerivedStorage + 424) + 76) = 0;
                              if (!v23)
                              {
                                *(v165 + 1185) = FigDebugIsInternalBuild();
                                *(DerivedStorage + 9252) = FigGetCFPreferenceNumberWithDefault();
                                FigNetworkWirelessReportingInterfaceInit();
                                v155 = FigRetainProxyRetain();
                                dispatch_async_f(*(DerivedStorage + 64), v155, segPumpAttemptNetworkMonitorSetupDispatch);
                                *a8 = v176;
                                v176 = 0;
                                goto LABEL_246;
                              }
                            }

                            else
                            {
                              v23 = 4294954655;
                            }

                            goto LABEL_252;
                          }
                        }
                      }

                      goto LABEL_254;
                    }
                  }

                  else
                  {
                    v39 = (DerivedStorage + 9320);
                    *(DerivedStorage + 9320) = 0;
                  }

                  FigRCLCreateConfiguration(*(DerivedStorage + 9080), @"kFigRemoteConfigurationLoaderStoreBagType_Pump", v37, v39);
                  v40 = *(DerivedStorage + 9320);
                  goto LABEL_62;
                }
              }

              else
              {
                v37 = 0;
              }

              v163 = 1;
              goto LABEL_58;
            }
          }

LABEL_254:
          v23 = inited;
LABEL_252:
          if (v176)
          {
            CFRelease(v176);
          }

          goto LABEL_246;
        }
      }

      else
      {
        *(DerivedStorage + 9664) = 0;
      }

      FigBytePumpCreateForHTTPChunk_cold_1(&context);
      v23 = context;
      goto LABEL_252;
    }

    v157 = 0;
    v18 = *MEMORY[0x1E695E4D0];
    goto LABEL_48;
  }

  v23 = v11;
LABEL_246:
  if (v162)
  {
    CFRelease(v162);
  }

  return v23;
}

uint64_t segPumpSetHTTPRequestOptionsValue(uint64_t a1, const void *a2, const void *a3)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, *(a1 + 240));
  if (MutableCopy)
  {
    v8 = MutableCopy;
    if (a3)
    {
      CFDictionarySetValue(MutableCopy, a2, a3);
    }

    else
    {
      CFDictionaryRemoveValue(MutableCopy, a2);
    }

    v9 = *(a1 + 240);
    *(a1 + 240) = v8;
    CFRetain(v8);
    if (v9)
    {
      CFRelease(v9);
    }

    CFRelease(v8);
    return 0;
  }

  else
  {
    segPumpSetHTTPRequestOptionsValue_cold_1(&v11);
    return v11;
  }
}

__n128 segPumpMakeNetworkPredictionInput@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 9408))
  {
    *(a1 + 9408) = 1;
    v13 = *(a1 + 9344);
    v14 = *(a1 + 9376);
    *(a1 + 9528) = *(a1 + 9360);
    *(a1 + 9544) = v14;
    *(a1 + 9560) = *(a1 + 9392);
    *(a1 + 9496) = *(a1 + 9328);
    *(a1 + 9512) = v13;
    *(a1 + 9480) = FigRCLGetNumberWithDefault(*(a1 + 9320), @"minActiveNetworkTimeForNetworkHistory");
    *(a1 + 9456) = xmmword_196E72850;
    if (!FigRCLGetNumberWithDefault(*(a1 + 9320), @"disableWeightBWPredictionByResponseSize"))
    {
      *(a1 + 9424) |= 4uLL;
    }

    *(a1 + 9584) = 17;
    if (FigRCLGetNumberWithDefault(*(a1 + 9320), @"allowMLPredictions"))
    {
      *(a1 + 9584) |= 2uLL;
      v15 = *(a1 + 96);
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v16)
      {
        v16(v15, 0x1F0B63578, *MEMORY[0x1E695E4D0]);
      }
    }
  }

  v4 = *(a1 + 9472);
  if (!v4)
  {
    v4 = 0x40000;
  }

  *(a1 + 9472) = v4;
  v5 = *(a1 + 9592);
  *(a2 + 160) = *(a1 + 9576);
  *(a2 + 176) = v5;
  v6 = *(a1 + 9624);
  *(a2 + 192) = *(a1 + 9608);
  *(a2 + 208) = v6;
  v7 = *(a1 + 9528);
  *(a2 + 96) = *(a1 + 9512);
  *(a2 + 112) = v7;
  v8 = *(a1 + 9560);
  *(a2 + 128) = *(a1 + 9544);
  *(a2 + 144) = v8;
  v9 = *(a1 + 9496);
  *(a2 + 64) = *(a1 + 9480);
  *(a2 + 80) = v9;
  v10 = *(a1 + 9432);
  *a2 = *(a1 + 9416);
  *(a2 + 16) = v10;
  result = *(a1 + 9448);
  v12 = *(a1 + 9464);
  *(a2 + 32) = result;
  *(a2 + 48) = v12;
  return result;
}

uint64_t segPumpInvalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  v3 = *(DerivedStorage + 9144);
  *(DerivedStorage + 9144) = 0;
  v4 = *(DerivedStorage + 9152);
  *(DerivedStorage + 9152) = 0;
  FigRetainProxyUnlockMutex();
  if ((v3 & 0x20) != 0)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  v5 = (DerivedStorage + 7968);
  if (v4)
  {
    CFRelease(v4);
  }

  FigRetainProxyLockMutex();
  FigRetainProxyInvalidate();
  v6 = *(DerivedStorage + 7960);
  if (v6)
  {
    if (*v5)
    {
      *v5 = 0;
      while (dispatch_group_wait(v6, 0))
      {
        dispatch_group_leave(*(DerivedStorage + 7960));
        v6 = *(DerivedStorage + 7960);
      }
    }

    v7 = *(DerivedStorage + 7960);
    if (v7)
    {
      dispatch_release(v7);
      *(DerivedStorage + 7960) = 0;
    }
  }

  FigHTTPStopAndReleaseTimer((DerivedStorage + 8152));
  FigHTTPStopAndReleaseTimer((DerivedStorage + 8352));
  FigHTTPStopAndReleaseTimer((DerivedStorage + 8800));
  while (1)
  {
    v8 = *(DerivedStorage + 360);
    if (!v8)
    {
      break;
    }

    segPumpFreeSavedEntry(DerivedStorage, v8);
  }

  v9 = *(DerivedStorage + 7888);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 7888) = 0;
  }

  v10 = 0;
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = DerivedStorage + 392 + 16 * v10;
    v14 = v13;
    for (i = 1; i != 4; ++i)
    {
      v16 = *v14;
      if (*v14)
      {
        *(v16 + 859) = 0;
        *(v16 + 400) = 0;
        FigHTTPStopAndReleaseTimer((v16 + 392));
        FigHTTPStopAndReleaseTimer((v16 + 640));
        segPumpResetConnection(DerivedStorage, v16 + 544);
        segPumpResetConnection(DerivedStorage, DerivedStorage + 7976);
        segPumpCancelMediaFileReadAndResetData(DerivedStorage, v16, 0, 0);
        segPumpResetConnection(DerivedStorage, v16 + 408);
        *(v16 + 859) = 0;
        segPumpStreamUpdateIndexExpectedArrival(DerivedStorage, v16);
        v17 = *(v16 + 840);
        if (v17)
        {
          CFRelease(v17);
          *(v16 + 840) = 0;
        }

        v18 = *(v16 + 832);
        if (v18)
        {
          CFRelease(v18);
          *(v16 + 832) = 0;
        }

        v19 = *(v16 + 296);
        if (v19)
        {
          CFRelease(v19);
          *(v16 + 296) = 0;
        }

        v20 = *(v16 + 1160);
        if (v20)
        {
          CFRelease(v20);
          *(v16 + 1160) = 0;
        }

        v21 = *(v16 + 248);
        if (v21)
        {
          CFRelease(v21);
          *(v16 + 248) = 0;
        }

        v22 = *(v16 + 256);
        if (v22)
        {
          CFRelease(v22);
          *(v16 + 256) = 0;
        }

        v23 = *(v16 + 264);
        if (v23)
        {
          CFRelease(v23);
          *(v16 + 264) = 0;
        }

        v24 = *(v16 + 288);
        if (v24)
        {
          CFRelease(v24);
          *(v16 + 288) = 0;
        }

        for (j = *(v16 + 680); j; j = *j)
        {
          segPumpResetMediaConnection(DerivedStorage, j, 0);
        }

        segPumpCompleteNWAlternateForStream(v16);
        if (*(v16 + 1192))
        {
          nw_activity_complete_with_reason();
          v26 = *(v16 + 1192);
          if (v26)
          {
            CFRelease(v26);
            *(v16 + 1192) = 0;
          }
        }

        v27 = *(v16 + 56);
        if (v27)
        {
          if (FigMediaPlaylistGetXPCClientObject(v27))
          {
            FigMediaPlaylistGetXPCClientObject(*(v16 + 56));
            FigStopForwardingMediaServicesProcessDeathNotification();
          }

          v28 = *(v16 + 56);
          if (v28)
          {
            CFRelease(v28);
            *(v16 + 56) = 0;
          }
        }

        v29 = *(v16 + 48);
        if (v29)
        {
          CFRelease(v29);
          *(v16 + 48) = 0;
        }

        v30 = *(v16 + 1168);
        if (v30)
        {
          CFRelease(v30);
          *(v16 + 1168) = 0;
        }
      }

      v14 = (v13 + 8 * i);
    }

    v11 = 0;
    v10 = 1;
  }

  while ((v12 & 1) != 0);
  if (*(DerivedStorage + 9696))
  {
    nw_activity_complete_with_reason();
    v31 = *(DerivedStorage + 9696);
    if (v31)
    {
      CFRelease(v31);
      *(DerivedStorage + 9696) = 0;
    }
  }

  v32 = *(DerivedStorage + 9288);
  if (v32)
  {
    CFRelease(v32);
    *(DerivedStorage + 9288) = 0;
  }

  v33 = *(DerivedStorage + 296);
  if (v33)
  {
    FigStreamingCacheClearExclusiveWriter(v33, a1);
    segPumpRemoveStreamingCacheListeners(*DerivedStorage);
    v40 = *(DerivedStorage + 296);
    if (v40)
    {
      CFRelease(v40);
      *(DerivedStorage + 296) = 0;
    }
  }

  v34 = *(DerivedStorage + 304);
  if (v34)
  {
    CFRelease(v34);
    *(DerivedStorage + 304) = 0;
  }

  v35 = *(DerivedStorage + 8136);
  if (v35)
  {
    CMMemoryPoolInvalidate(v35);
    v36 = *(DerivedStorage + 8136);
    if (v36)
    {
      CFRelease(v36);
      *(DerivedStorage + 8136) = 0;
    }
  }

  v37 = *(DerivedStorage + 9760);
  if (v37)
  {
    CFRelease(v37);
    *(DerivedStorage + 9760) = 0;
  }

  v38 = *(DerivedStorage + 9776);
  if (v38)
  {
    CFRelease(v38);
    *(DerivedStorage + 9776) = 0;
  }

  FigRetainProxyUnlockMutex();
  FigRetainProxyRelease();
  return 0;
}

void segPumpFinalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  segPumpInvalidate(a1);
  v3 = *(DerivedStorage + 8616);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 8624);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 8624) = 0;
  }

  v5 = *(DerivedStorage + 8632);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 8632) = 0;
  }

  v6 = *(DerivedStorage + 8656);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 8656) = 0;
  }

  v7 = 0;
  v8 = DerivedStorage + 392;
  v9 = DerivedStorage + 8440;
  do
  {
    v10 = *(v8 + 16 * v7);
    if (v10)
    {
      v11 = *(v9 + 40 * *v10 + 32);
      if (v11)
      {
        CFRelease(v11);
        *(v9 + 40 * *v10 + 32) = 0;
      }

      segPumpStreamDisposeStorage(v10);
      v12 = v10[96];
      if (v12)
      {
        v10[96] = 0;
        free(v12);
      }

      while (1)
      {
        v13 = v10[85];
        if (!v13)
        {
          break;
        }

        segPumpDestroyMediaConnection(DerivedStorage, v10, v13);
      }
    }

    ++v7;
  }

  while (v7 != 3);
  for (i = 0; i != 3; ++i)
  {
    v15 = v8 + 16 * i;
    v16 = *(v15 + 8);
    if (v16)
    {
      segPumpStreamDisposeStorage(*(v15 + 8));
      v17 = v16[96];
      if (v17)
      {
        v16[96] = 0;
        free(v17);
      }

      while (1)
      {
        v18 = v16[85];
        if (!v18)
        {
          break;
        }

        segPumpDestroyMediaConnection(DerivedStorage, v16, v18);
      }
    }
  }

  AlternateQueueFree(DerivedStorage + 8280);
  AlternateQueueFree(DerivedStorage + 8296);
  v19 = *(DerivedStorage + 8112);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 8112) = 0;
  }

  v20 = *(DerivedStorage + 8312);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(DerivedStorage + 8320);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(DerivedStorage + 8336);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(DerivedStorage + 8344);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(DerivedStorage + 9744);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(DerivedStorage + 9752);
  if (v25)
  {
    CFRelease(v25);
  }

  segPumpUpdateCurrentAlternate(DerivedStorage, 0);
  v26 = *(DerivedStorage + 9712);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(DerivedStorage + 8560);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(DerivedStorage + 8432);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 8432) = 0;
  }

  v29 = *(DerivedStorage + 80);
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = *(DerivedStorage + 152);
  if (v30)
  {
    dispatch_release(v30);
  }

  v31 = *(DerivedStorage + 88);
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = *(DerivedStorage + 216);
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = *(DerivedStorage + 224);
  if (v33)
  {
    CFRelease(v33);
  }

  v34 = *(DerivedStorage + 232);
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = *(DerivedStorage + 192);
  if (v35)
  {
    CFRelease(v35);
    *(DerivedStorage + 192) = 0;
  }

  v36 = *(DerivedStorage + 200);
  if (v36)
  {
    CFRelease(v36);
    *(DerivedStorage + 200) = 0;
  }

  v37 = *(DerivedStorage + 208);
  if (v37)
  {
    CFRelease(v37);
    *(DerivedStorage + 208) = 0;
  }

  v38 = *(DerivedStorage + 248);
  if (v38)
  {
    CFRelease(v38);
  }

  v39 = *(DerivedStorage + 264);
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = *(DerivedStorage + 272);
  if (v40)
  {
    CFRelease(v40);
  }

  v41 = *(DerivedStorage + 280);
  if (v41)
  {
    CFRelease(v41);
  }

  v42 = *(DerivedStorage + 8856);
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = *(DerivedStorage + 9152);
  if (v43)
  {
    CFRelease(v43);
  }

  v44 = *(DerivedStorage + 9160);
  if (v44)
  {
    CFRelease(v44);
  }

  v45 = *(DerivedStorage + 9184);
  if (v45)
  {
    CFRelease(v45);
  }

  v46 = *(DerivedStorage + 9176);
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = *(DerivedStorage + 9168);
  if (v47)
  {
    CFRelease(v47);
  }

  v48 = *(DerivedStorage + 312);
  if (v48)
  {
    CFRelease(v48);
  }

  v49 = *(DerivedStorage + 320);
  if (v49)
  {
    CFRelease(v49);
  }

  FigHTTPSchedulerRelease(*(DerivedStorage + 64));
  *(DerivedStorage + 64) = 0;
  v50 = *(DerivedStorage + 9064);
  if (v50)
  {
    CFRelease(v50);
  }

  v51 = *(DerivedStorage + 9072);
  if (v51)
  {
    CFRelease(v51);
  }

  v52 = *(DerivedStorage + 9080);
  if (v52)
  {
    CFRelease(v52);
  }

  v53 = *(DerivedStorage + 240);
  if (v53)
  {
    CFRelease(v53);
  }

  v54 = *(DerivedStorage + 8568);
  if (v54)
  {
    CFRelease(v54);
  }

  v55 = *(DerivedStorage + 8576);
  if (v55)
  {
    CFRelease(v55);
  }

  v56 = *(DerivedStorage + 8584);
  if (v56)
  {
    CFRelease(v56);
  }

  v57 = *(DerivedStorage + 8592);
  if (v57)
  {
    CFRelease(v57);
  }

  v58 = *(DerivedStorage + 8608);
  if (v58)
  {
    CFRelease(v58);
  }

  v59 = *(DerivedStorage + 8408);
  if (v59)
  {
    CFRelease(v59);
  }

  v60 = *(DerivedStorage + 8416);
  if (v60)
  {
    CFRelease(v60);
  }

  v61 = *(DerivedStorage + 7992);
  if (v61)
  {
    CFRelease(v61);
  }

  v62 = *(DerivedStorage + 7984);
  if (v62)
  {
    CFRelease(v62);
  }

  v63 = *(DerivedStorage + 8128);
  if (v63)
  {
    CFRelease(v63);
  }

  v64 = *(DerivedStorage + 7912);
  if (v64)
  {
    CFRelease(v64);
    *(DerivedStorage + 7912) = 0;
  }

  v65 = *(DerivedStorage + 7896);
  if (v65)
  {
    CFRelease(v65);
    *(DerivedStorage + 7896) = 0;
  }

  v66 = *(DerivedStorage + 7920);
  if (v66)
  {
    CFRelease(v66);
    *(DerivedStorage + 7920) = 0;
  }

  v67 = *(DerivedStorage + 7936);
  if (v67)
  {
    CFRelease(v67);
    *(DerivedStorage + 7936) = 0;
  }

  v68 = *(DerivedStorage + 7928);
  if (v68)
  {
    CFRelease(v68);
    *(DerivedStorage + 7928) = 0;
  }

  v69 = *(DerivedStorage + 7952);
  if (v69)
  {
    CFRelease(v69);
    *(DerivedStorage + 7952) = 0;
  }

  v70 = *(DerivedStorage + 7944);
  if (v70)
  {
    CFRelease(v70);
    *(DerivedStorage + 7944) = 0;
  }

  v71 = *(DerivedStorage + 7904);
  if (v71)
  {
    CFRelease(v71);
    *(DerivedStorage + 7904) = 0;
  }

  v72 = *(DerivedStorage + 256);
  if (v72)
  {
    CFRelease(v72);
    *(DerivedStorage + 256) = 0;
  }

  v73 = *(DerivedStorage + 8944);
  if (v73)
  {
    CFRelease(v73);
    *(DerivedStorage + 8944) = 0;
  }

  v74 = *(DerivedStorage + 9320);
  if (v74)
  {
    CFRelease(v74);
  }

  if (*(DerivedStorage + 8992))
  {
    FigGzipDispose();
    *(DerivedStorage + 8992) = 0;
  }

  v75 = *(DerivedStorage + 72);
  if (v75)
  {
    dispatch_release(v75);
    *(DerivedStorage + 72) = 0;
  }

  FigNetworkInterfaceReporterDestroy(*(DerivedStorage + 9312));
  v76 = *(DerivedStorage + 32);
  if (v76)
  {
    CFRelease(v76);
  }

  v77 = *(DerivedStorage + 40);
  if (v77)
  {
    CFRelease(v77);
  }

  v78 = *(DerivedStorage + 9224);
  if (v78)
  {
    CFRelease(v78);
  }

  v79 = *(DerivedStorage + 9272);
  if (v79)
  {
    CFRelease(v79);
  }

  v80 = *(DerivedStorage + 9232);
  if (v80)
  {
    CFRelease(v80);
  }

  FigRetainProxyRelease();
  *(DerivedStorage + 176) = 0;
  FigRetainProxyRelease();
  *DerivedStorage = 0;
  v81 = *(DerivedStorage + 9296);
  if (v81)
  {
    CFRelease(v81);
    *(DerivedStorage + 9296) = 0;
  }

  v82 = *(DerivedStorage + 9640);
  if (v82)
  {
    CFRelease(v82);
    *(DerivedStorage + 9640) = 0;
  }

  v83 = *(DerivedStorage + 9648);
  if (v83)
  {
    CFRelease(v83);
    *(DerivedStorage + 9648) = 0;
  }

  v84 = *(DerivedStorage + 9656);
  if (v84)
  {
    CFRelease(v84);
    *(DerivedStorage + 9656) = 0;
  }

  v85 = *(DerivedStorage + 9664);
  if (v85)
  {
    CFRelease(v85);
    *(DerivedStorage + 9664) = 0;
  }

  v86 = *(DerivedStorage + 9680);
  if (v86)
  {
    CFRelease(v86);
    *(DerivedStorage + 9680) = 0;
  }

  v87 = *(DerivedStorage + 96);
  if (v87)
  {
    CFRelease(v87);
    *(DerivedStorage + 96) = 0;
  }

  v88 = *(DerivedStorage + 8232);
  if (v88)
  {
    CFRelease(v88);
    *(DerivedStorage + 8232) = 0;
  }

  v89 = *(DerivedStorage + 9768);
  if (v89)
  {
    CFRelease(v89);
    *(DerivedStorage + 9768) = 0;
  }

  v90 = *(DerivedStorage + 9688);
  if (v90)
  {
    CFRelease(v90);
    *(DerivedStorage + 9688) = 0;
  }

  v91 = *(DerivedStorage + 9328);
  if (v91)
  {
    CFRelease(v91);
    *(DerivedStorage + 9328) = 0;
  }

  v92 = *(DerivedStorage + 9336);
  if (v92)
  {
    CFRelease(v92);
    *(DerivedStorage + 9336) = 0;
  }

  v93 = *(DerivedStorage + 9344);
  if (v93)
  {
    CFRelease(v93);
    *(DerivedStorage + 9344) = 0;
  }

  v94 = *(DerivedStorage + 9368);
  if (v94)
  {
    CFRelease(v94);
    *(DerivedStorage + 9368) = 0;
  }

  v95 = *(DerivedStorage + 9376);
  if (v95)
  {
    CFRelease(v95);
    *(DerivedStorage + 9376) = 0;
  }

  v96 = *(DerivedStorage + 9392);
  if (v96)
  {
    CFRelease(v96);
    *(DerivedStorage + 9392) = 0;
  }

  v97 = *(DerivedStorage + 9360);
  if (v97)
  {
    CFRelease(v97);
    *(DerivedStorage + 9360) = 0;
  }

  v98 = *(DerivedStorage + 9720);
  if (v98)
  {
    CFRelease(v98);
    *(DerivedStorage + 9720) = 0;
  }

  v99 = *(DerivedStorage + 9728);
  if (v99)
  {
    CFRelease(v99);
    *(DerivedStorage + 9728) = 0;
  }

  v100 = *(DerivedStorage + 9736);
  if (v100)
  {
    dispatch_release(v100);
    *(DerivedStorage + 9736) = 0;
  }

  v101 = *(DerivedStorage + 9208);
  if (v101)
  {
    CFRelease(v101);
  }

  v102 = *(DerivedStorage + 9200);
  if (v102)
  {

    CFRelease(v102);
  }
}

__CFString *segPumpCopyDebugDescription(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFStringCreateMutable(AllocatorForMedia, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigBytePumpHTTPSegment %p>", a1);
  return Mutable;
}

uint64_t segPumpCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    segPumpCopyProperty_cold_1(&value);
    goto LABEL_77;
  }

  if (CFEqual(a2, @"FBP_AlternateInfo"))
  {
    if (*(DerivedStorage + 8280))
    {
      value.start.value = 0;
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v10 = Mutable;
        LODWORD(v11) = segPumpCreateFigAlternatesArray(DerivedStorage, &value);
        if (v11)
        {
          v14 = 0;
        }

        else
        {
          CFDictionarySetValue(v10, @"FBPAIK_FigAlternateArray", value.start.value);
          v12 = *(DerivedStorage + 8328);
          if (v12)
          {
            CFDictionarySetValue(v10, @"FBPAIK_CurrentFigAlternate", *(v12 + 8));
          }

          v13 = *(DerivedStorage + 8560);
          if (v13)
          {
            CFDictionarySetValue(v10, @"FBPAIK_MediaSelectionArray", v13);
          }

          v14 = CFRetain(v10);
        }

        CFRelease(v10);
        if (value.start.value)
        {
          CFRelease(value.start.value);
        }

        if (v14)
        {
          *a4 = v14;
        }

        goto LABEL_15;
      }

LABEL_78:
      CPECryptorsSessionCryptKeysDict = FigSignalErrorAtGM();
      goto LABEL_69;
    }

    goto LABEL_65;
  }

  if (CFEqual(a2, @"FBP_MinTime"))
  {
    v15 = *(*(DerivedStorage + 392) + 1185);
    v16 = *(DerivedStorage + 408);
    if (*(v16 + 16))
    {
      v15 = (*(v16 + 1185) & v15);
    }

    v17 = *(DerivedStorage + 424);
    if (*(v17 + 16))
    {
      v15 = (*(v17 + 1185) & v15);
    }

    if (!v15)
    {
      MinTime = segPumpGetMinTime(DerivedStorage);
      memset(&value, 0, 24);
LABEL_43:
      CMTimeMakeWithSeconds(&value.start, MinTime, 1000);
LABEL_44:
      *&v87.start.value = *&value.start.value;
      v87.start.epoch = value.start.epoch;
      p_value = &v87;
      goto LABEL_45;
    }

LABEL_31:
    *&value.start.value = *MEMORY[0x1E6960C70];
    value.start.epoch = *(MEMORY[0x1E6960C70] + 16);
    p_value = &value;
LABEL_45:
    Copy = CMTimeCopyAsDictionary(&p_value->start, a3);
    goto LABEL_46;
  }

  if (CFEqual(a2, @"FBP_MaxTime"))
  {
    v19 = *(*(DerivedStorage + 392) + 1185);
    v20 = *(DerivedStorage + 408);
    if (*(v20 + 16))
    {
      v19 = (*(v20 + 1185) & v19);
    }

    v21 = *(DerivedStorage + 424);
    if (*(v21 + 16))
    {
      v19 = (*(v21 + 1185) & v19);
    }

    if (!v19)
    {
      memset(&value, 0, 24);
      v29 = segPumpGetMinTime(DerivedStorage);
      MaxTime = segPumpGetMaxTime(DerivedStorage);
      if (!*(DerivedStorage + 8218))
      {
        MaxTime = MaxTime - (segPumpGetMinimumPrebufferReservation(DerivedStorage, 0) + *(DerivedStorage + 8176));
      }

      if (MaxTime >= v29)
      {
        MinTime = MaxTime;
      }

      else
      {
        MinTime = v29;
      }

      goto LABEL_43;
    }

    goto LABEL_31;
  }

  if (CFEqual(a2, @"FBP_TimeAvailableModDate"))
  {
    v23 = *(*(DerivedStorage + 16 * *(DerivedStorage + 8600) + 392) + 1064);
    if (v23)
    {
      v24 = (FigGetUpTimeNanoseconds() - v23) / 0xF4240uLL;
      v25 = CACurrentMediaTime() + v24 / -1000.0;
LABEL_35:
      *&value.start.value = v25;
LABEL_36:
      v26 = *MEMORY[0x1E695E480];
      v27 = kCFNumberDoubleType;
LABEL_37:
      Copy = CFNumberCreate(v26, v27, &value);
      goto LABEL_46;
    }

    goto LABEL_65;
  }

  if (CFEqual(a2, @"FBP_CachedTimeRanges"))
  {
    CPECryptorsSessionCryptKeysDict = segPumpCopyCachedTimeRanges(DerivedStorage, a4);
LABEL_69:
    LODWORD(v11) = CPECryptorsSessionCryptKeysDict;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"FBP_MeasuredBandwidth"))
  {
    v91 = 0;
    v89 = 0u;
    v90 = 0u;
    memset(&value, 0, sizeof(value));
    LODWORD(v11) = segPumpGetObservedNetworkStats(DerivedStorage, 0, &value);
    if (!v11)
    {
      *a4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &value);
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"FBP_RequiredBandwidth"))
  {
    if (!*(DerivedStorage + 8328))
    {
      v31 = 0;
      v32 = 0;
      v33 = 0.0;
      do
      {
        v34 = *(DerivedStorage + 392 + v31);
        if (*(v34 + 16))
        {
          v35 = *(v34 + 1096);
          if (!v35)
          {
            goto LABEL_65;
          }

          v32 += v35;
          if (v33 == 0.0)
          {
            v33 = *(v34 + 1104);
          }

          else if (v33 >= *(v34 + 1104))
          {
            v33 = *(v34 + 1104);
          }
        }

        v31 += 16;
      }

      while (v31 != 48);
      if (v33 > 0.0)
      {
        v25 = v32;
        goto LABEL_35;
      }

LABEL_65:
      v11 = 4294954513;
      goto LABEL_66;
    }

    segPumpCopyProperty_cold_3();
    goto LABEL_77;
  }

  if (CFEqual(a2, @"FBP_NetworkBandwidth"))
  {
    value.start.value = 0;
    if (!segPumpGetSafeNetworkBandwidth(DerivedStorage, &value.start.value, 0, 0))
    {
      goto LABEL_36;
    }

    goto LABEL_65;
  }

  if (CFEqual(a2, @"FBP_CanContinueWithoutGapBitField"))
  {
    LODWORD(value.start.value) = 0;
    segPumpCanContinueWithoutGap(DerivedStorage, &value);
    v26 = a3;
    v27 = kCFNumberSInt32Type;
    goto LABEL_37;
  }

  if (CFEqual(a2, @"FBP_Duration"))
  {
    *&value.start.value = *MEMORY[0x1E6960C68];
    value.start.epoch = *(MEMORY[0x1E6960C68] + 16);
    if (*(DerivedStorage + 8218))
    {
      v38 = segPumpGetMaxTime(DerivedStorage);
      MinTime = v38 - segPumpGetMinTime(DerivedStorage);
      goto LABEL_43;
    }

    if (*(DerivedStorage + 352) > 0.0)
    {
      goto LABEL_44;
    }

    goto LABEL_65;
  }

  if (CFEqual(a2, @"FBP_MaximumRecommendedCellularBitrate"))
  {
    if (!segPumpConnectedInterfaceIsWWAN(DerivedStorage))
    {
      v39 = *a4;
      goto LABEL_94;
    }

    v39 = *(DerivedStorage + 208);
    if (!v39)
    {
LABEL_84:
      *a4 = v39;
LABEL_94:
      v42 = v39 == 0;
LABEL_95:
      v43 = -12783;
      goto LABEL_96;
    }

LABEL_83:
    v39 = CFRetain(v39);
    goto LABEL_84;
  }

  if (CFEqual(a2, @"FBP_AccessLog"))
  {
    segPumpCreateAccessLog(DerivedStorage, a3, a4);
    goto LABEL_69;
  }

  if (CFEqual(a2, @"FBP_LastServerIPAddress"))
  {
    v40 = (*(DerivedStorage + 16 * *(DerivedStorage + 8600) + 392) + 680);
    while (1)
    {
      v40 = *v40;
      if (!v40)
      {
        break;
      }

      v41 = v40[22];
      if (v41)
      {
        goto LABEL_104;
      }
    }

    v41 = 0;
LABEL_104:
    Copy = FigCFHTTPCreateAddressString(v41);
    if (Copy)
    {
      goto LABEL_46;
    }

    goto LABEL_65;
  }

  if (CFEqual(a2, @"FBP_ErrorLog"))
  {
    v44 = *(DerivedStorage + 8856);
    if (v44)
    {
      Copy = CFArrayCreateCopy(a3, v44);
      if (!Copy)
      {
        v11 = 4294954510;
        goto LABEL_66;
      }

      goto LABEL_46;
    }

    goto LABEL_65;
  }

  if (CFEqual(a2, @"FBP_EndError"))
  {
    Copy = *(DerivedStorage + 8232);
    if (!Copy)
    {
      goto LABEL_65;
    }

LABEL_118:
    Copy = CFRetain(Copy);
    goto LABEL_46;
  }

  if (CFEqual(a2, @"FBP_PlaybackSessionID"))
  {
    Copy = *(DerivedStorage + 224);
    if (!Copy)
    {
      goto LABEL_65;
    }

    goto LABEL_118;
  }

  if (CFEqual(a2, @"FBP_SegmentCache"))
  {
    Copy = *(DerivedStorage + 296);
    if (!Copy)
    {
      goto LABEL_65;
    }

    goto LABEL_118;
  }

  if (CFEqual(a2, @"FBP_ExternalProtectionMethods"))
  {
    Copy = *(DerivedStorage + 264);
    if (Copy)
    {
      goto LABEL_118;
    }

    value.start.value = 0;
LABEL_127:
    v26 = *MEMORY[0x1E695E480];
    v27 = kCFNumberSInt64Type;
    goto LABEL_37;
  }

  if (CFEqual(a2, @"FBP_HasKeyContent"))
  {
    v45 = 0;
    *a4 = *MEMORY[0x1E695E4C0];
    while (1)
    {
      v46 = *(*(DerivedStorage + 392 + v45) + 56);
      if (v46)
      {
        ContentKeySpecifiers = FigMediaPlaylistGetContentKeySpecifiers(v46);
        if (ContentKeySpecifiers)
        {
          if (CFArrayGetCount(ContentKeySpecifiers) >= 1)
          {
            break;
          }
        }
      }

      v11 = 0;
      v45 += 16;
      if (v45 == 48)
      {
        goto LABEL_66;
      }
    }

    v11 = 0;
    v54 = MEMORY[0x1E695E4D0];
    goto LABEL_137;
  }

  if (CFEqual(a2, @"FBP_SpecifiedPreciseStartTime"))
  {
    if (!*(DerivedStorage + 8869) || !*(DerivedStorage + 8870))
    {
      goto LABEL_65;
    }

    v48 = *(DerivedStorage + 8872);
    *&value.start.value = v48;
    if (v48 >= 0.0)
    {
      goto LABEL_134;
    }

    v49 = v48 + *(DerivedStorage + 352);
LABEL_133:
    *&value.start.value = v49;
LABEL_134:
    v50 = *MEMORY[0x1E695E480];
    v51 = &value;
    v52 = kCFNumberDoubleType;
LABEL_135:
    v53 = CFNumberCreate(v50, v52, v51);
LABEL_144:
    *a4 = v53;
    v42 = v53 == 0;
    v43 = -12786;
LABEL_96:
    if (v42)
    {
      v11 = v43;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_66;
  }

  if (CFEqual(a2, @"FBP_PrebufferReservation"))
  {
    if (!*(DerivedStorage + 8))
    {
      goto LABEL_65;
    }

    MinimumPrebufferReservation = segPumpGetMinimumPrebufferReservation(DerivedStorage, 0);
    CMTimeMakeWithSeconds(&value.start, MinimumPrebufferReservation + *(DerivedStorage + 8176), 1000000);
    v53 = CMTimeCopyAsDictionary(&value.start, a3);
    goto LABEL_144;
  }

  if (CFEqual(a2, @"FBP_ManagedLiveEdgeSeekablePoint"))
  {
    memset(&value, 0, sizeof(value));
    segPumpGetLiveEdge(DerivedStorage, 7u, 1, &value);
    v87 = value;
    v53 = CMTimeRangeCopyAsDictionary(&v87, a3);
    goto LABEL_144;
  }

  if (CFEqual(a2, @"FBP_RecommendedPrebufferReservation"))
  {
    value.start.value = *(DerivedStorage + 8184);
    if (*&value.start.value <= 0.0)
    {
      goto LABEL_65;
    }

    goto LABEL_134;
  }

  if (CFEqual(a2, @"FBSP_Chapters"))
  {
    segPumpLoadSynchronousProperties();
    if (CPECryptorsSessionCryptKeysDict)
    {
      goto LABEL_69;
    }

    v62 = *(DerivedStorage + 7920);
    if (!v62)
    {
      Copy = *(DerivedStorage + 7912);
      if (!Copy)
      {
        goto LABEL_65;
      }

      goto LABEL_118;
    }
  }

  else if (CFEqual(a2, @"FBSP_LocalizedMSODisplayName"))
  {
    segPumpLoadSynchronousProperties();
    if (CPECryptorsSessionCryptKeysDict)
    {
      goto LABEL_69;
    }

    v62 = *(DerivedStorage + 7936);
    if (!v62)
    {
      Copy = *(DerivedStorage + 7928);
      if (!Copy)
      {
        goto LABEL_65;
      }

      goto LABEL_118;
    }
  }

  else if (CFEqual(a2, @"FBSP_CustomMediaSelectionSchemeMetadata"))
  {
    segPumpLoadSynchronousProperties();
    if (CPECryptorsSessionCryptKeysDict)
    {
      goto LABEL_69;
    }

    v62 = *(DerivedStorage + 7952);
    if (!v62)
    {
      Copy = *(DerivedStorage + 7944);
      if (!Copy)
      {
        goto LABEL_65;
      }

      goto LABEL_118;
    }
  }

  else
  {
    if (!CFEqual(a2, @"FBSP_Metadata"))
    {
      if (CFEqual(a2, @"FBSP_MetadataFormats"))
      {
        v57 = *(*(DerivedStorage + 392) + 48);
        if (!v57)
        {
          goto LABEL_65;
        }

        SessionDataSpecifiers = FigMultivariantPlaylistGetSessionDataSpecifiers(v57);
        if (!SessionDataSpecifiers || CFArrayGetCount(SessionDataSpecifiers) < 1)
        {
          goto LABEL_65;
        }

        v59 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (v59)
        {
          v60 = v59;
          CFArrayAppendValue(v59, @"com.apple.quicktime.HLS");
          *a4 = CFRetain(v60);
          CFRelease(v60);
          goto LABEL_158;
        }

        segPumpCopyProperty_cold_2(&value);
LABEL_77:
        LODWORD(v11) = value.start.value;
        goto LABEL_15;
      }

      if (CFEqual(a2, @"FBP_SessionConfiguration"))
      {
        Copy = *(DerivedStorage + 9320);
        if (!Copy)
        {
          goto LABEL_65;
        }

        goto LABEL_118;
      }

      if (CFEqual(a2, @"FBP_TaggedRangeMetadataArray"))
      {
        v61 = *(*(DerivedStorage + 392 + 16 * *(DerivedStorage + 8600)) + 56);
        if (!v61 || !FigMediaPlaylistGetDateEntryArray(v61))
        {
          goto LABEL_65;
        }

        Copy = FigMediaPlaylistGetDateEntryArray(*(*(DerivedStorage + 392 + 16 * *(DerivedStorage + 8600)) + 56));
        goto LABEL_118;
      }

      if (CFEqual(a2, @"FBP_BandwidthEstimateStatistics"))
      {
        v63 = *(DerivedStorage + 9312);
        if (v63)
        {
          Copy = FigNetworkInterfaceReporterCopyBandwidthEstimates(v63);
          if (Copy)
          {
            goto LABEL_46;
          }
        }

        goto LABEL_65;
      }

      if (CFEqual(a2, @"FBP_IFrameReport"))
      {
        segPumpCreateIFrameReport();
        goto LABEL_69;
      }

      if (CFEqual(a2, @"FBP_MaxIFrameRate"))
      {
        if (!*(DerivedStorage + 8896))
        {
          goto LABEL_65;
        }

        v64 = *(*(DerivedStorage + 16 * *(DerivedStorage + 8600) + 392) + 56);
        if (!v64)
        {
          goto LABEL_65;
        }

        v65 = fabsf(*(DerivedStorage + 8880));
        v49 = v65 / FigMediaPlaylistGetAvgSegmentDuration(v64);
        goto LABEL_133;
      }

      if (CFEqual(a2, @"FBP_NetworkInterfaceStatistics"))
      {
        NetworkStatistics = segPumpCreateNetworkStatistics(DerivedStorage, a3, a4);
      }

      else
      {
        if (CFEqual(a2, @"FBP_PrefetchKeys"))
        {
          v11 = 0;
          v66 = *(DerivedStorage + 8210);
LABEL_194:
          v67 = MEMORY[0x1E695E4D0];
          v68 = MEMORY[0x1E695E4C0];
          v69 = v66 == 0;
          goto LABEL_195;
        }

        if (CFEqual(a2, @"FBP_NetworkServiceType"))
        {
          Copy = *(DerivedStorage + 256);
          goto LABEL_118;
        }

        if (!CFEqual(a2, @"FBP_StartupStatistics"))
        {
          if (CFEqual(a2, @"FBP_RecoveryAlternate"))
          {
            v39 = segPumpCopyRecoveryAlternateIfViable(DerivedStorage);
            goto LABEL_84;
          }

          if (CFEqual(a2, @"FBP_MinimizeNetworkingWhilePaused"))
          {
            v11 = 0;
            v66 = *(DerivedStorage + 8211);
            goto LABEL_194;
          }

          if (CFEqual(a2, @"FBP_InitialBandwidthTargetForNetwork"))
          {
            if (segPumpConnectedInterfaceIsWWAN(DerivedStorage))
            {
              v39 = *(DerivedStorage + 192);
              if (!v39)
              {
                goto LABEL_84;
              }
            }

            else
            {
              v39 = *(DerivedStorage + 200);
              if (!v39)
              {
                goto LABEL_84;
              }
            }

            goto LABEL_83;
          }

          if (CFEqual(a2, @"FPB_CPECryptorsForSessionCryptKeys"))
          {
            CPECryptorsSessionCryptKeysDict = segPumpCreateCPECryptorsSessionCryptKeysDict(DerivedStorage, a4);
            goto LABEL_69;
          }

          if (CFEqual(a2, @"FBP_ReportingAgent"))
          {
            v71 = *(DerivedStorage + 9232);
            if (v71)
            {
              CFRetain(v71);
              v55 = *(DerivedStorage + 9232);
            }

            else
            {
              v55 = 0;
            }

            v11 = 0;
            goto LABEL_138;
          }

          if (CFEqual(a2, @"FBP_LiveUpdateInterval"))
          {
            v51 = (DerivedStorage + 8);
            if (!*(DerivedStorage + 8))
            {
              goto LABEL_65;
            }

            if (*(DerivedStorage + 8218) || *(DerivedStorage + 24) > 1u)
            {
              v11 = 4294954509;
              goto LABEL_66;
            }

            goto LABEL_227;
          }

          if (CFEqual(a2, @"FBP_DownloadDestinationURL"))
          {
            v72 = *(DerivedStorage + 296);
            if (!v72)
            {
              goto LABEL_65;
            }

            v73 = FigGetAllocatorForMedia();
            FigStreamingCacheCopyProperty(v72, @"FSC_DownloadDestinationURL", v73, a4);
LABEL_158:
            v11 = 0;
            goto LABEL_66;
          }

          if (CFEqual(a2, @"FBP_AlternatesInPenaltybox"))
          {
            value.start.value = 0;
            v74 = segPumpCopyAlternatesInPenaltyBox(DerivedStorage, &value);
            goto LABEL_236;
          }

          if (CFEqual(a2, @"FBP_MaxOverlapDurationForSwitching"))
          {
            v51 = (DerivedStorage + 8);
            if (!*(DerivedStorage + 8))
            {
              goto LABEL_65;
            }

LABEL_227:
            v50 = *MEMORY[0x1E695E480];
            v52 = kCFNumberSInt32Type;
            goto LABEL_135;
          }

          if (CFEqual(a2, @"FBP_PrefersConcurrentSwitch"))
          {
            v11 = 0;
            v66 = *(DerivedStorage + 337);
            goto LABEL_194;
          }

          if (CFEqual(a2, @"FBP_NetworkUrgencyMonitor"))
          {
            Copy = *(DerivedStorage + 9712);
            if (!Copy)
            {
              goto LABEL_65;
            }

            goto LABEL_118;
          }

          if (CFEqual(a2, @"FBP_NominalVideoFramerate"))
          {
            segPumpCopyNominalVideoFrameRate(DerivedStorage, a4);
            v42 = *a4 == 0;
            goto LABEL_95;
          }

          if (CFEqual(a2, @"FBP_HasAlternates"))
          {
            v11 = 0;
            v67 = MEMORY[0x1E695E4D0];
            v68 = MEMORY[0x1E695E4C0];
            v69 = *(DerivedStorage + 8280) == 0;
LABEL_195:
            if (v69)
            {
              v54 = v68;
            }

            else
            {
              v54 = v67;
            }

LABEL_137:
            v55 = *v54;
LABEL_138:
            *a4 = v55;
            goto LABEL_66;
          }

          if (CFEqual(a2, @"FBP_SessionKeys"))
          {
            value.start.value = 0;
            v74 = segPumpCopySessionKeys(DerivedStorage, &value);
LABEL_236:
            LODWORD(v11) = v74;
            if (!v74)
            {
              *a4 = value.start.value;
            }

            goto LABEL_15;
          }

          if (CFEqual(a2, @"FBP_LastMediaFileInterfaceType"))
          {
            if (!*(DerivedStorage + 8648))
            {
              goto LABEL_65;
            }

            v50 = *MEMORY[0x1E695E480];
            v51 = (DerivedStorage + 8648);
            v52 = kCFNumberIntType;
            goto LABEL_135;
          }

          if (CFEqual(a2, @"FBP_NetworkCostMonitor"))
          {
            CPECryptorsSessionCryptKeysDict = segPumpEnsureNetworkCostMonitor(DerivedStorage, a3);
            if (CPECryptorsSessionCryptKeysDict)
            {
              goto LABEL_69;
            }

            Copy = *(DerivedStorage + 8656);
            if (!Copy)
            {
              goto LABEL_46;
            }

            goto LABEL_118;
          }

          if (CFEqual(a2, @"FBP_PlaybackRateMonitor"))
          {
            Copy = *(DerivedStorage + 9760);
            if (!Copy)
            {
              goto LABEL_46;
            }

            goto LABEL_118;
          }

          if (CFEqual(a2, @"FBP_EnableContentSteering"))
          {
            v11 = 0;
            v66 = *(DerivedStorage + 8120);
            goto LABEL_194;
          }

          if (CFEqual(a2, @"FBP_ContentSteeringMonitor"))
          {
            Copy = *(DerivedStorage + 9752);
            if (!Copy)
            {
              goto LABEL_46;
            }

            goto LABEL_118;
          }

          if (CFEqual(a2, @"FBP_MainSegmentBytesInTransit"))
          {
            value.start.value = segPumpMainSegmentBytesInTransit(DerivedStorage);
            goto LABEL_127;
          }

          if (CFEqual(a2, @"FBP_PlaylistCache"))
          {
            Copy = *(DerivedStorage + 304);
            if (!Copy)
            {
              goto LABEL_46;
            }

            goto LABEL_118;
          }

          if (CFEqual(a2, @"FBP_ClientNetworkActivity"))
          {
            Copy = *(DerivedStorage + 9288);
            if (!Copy)
            {
              goto LABEL_46;
            }

            goto LABEL_118;
          }

          if (CFEqual(a2, @"FBP_HasFairPlayEncryptedContent"))
          {
            v75 = 0;
            while (1)
            {
              Count = *(DerivedStorage + 7888);
              if (Count)
              {
                Count = CFArrayGetCount(Count);
              }

              if (v75 >= Count)
              {
                break;
              }

              ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 7888), v75++);
              if (ValueAtIndex[6] == 1)
              {
                goto LABEL_284;
              }
            }
          }

          else
          {
            if (!CFEqual(a2, @"FBP_DidTransitionFromLiveToVOD"))
            {
              if (CFEqual(a2, @"FBP_OfflineInterstitialURLs"))
              {
                CPECryptorsSessionCryptKeysDict = segPumpCopyOfflineInterstitialURLs(DerivedStorage, a3, a4);
                goto LABEL_69;
              }

              if (CFEqual(a2, @"FBP_OfflineInterstitialListJSONs"))
              {
                CPECryptorsSessionCryptKeysDict = segPumpCopyOfflineInterstitialListJSONs(DerivedStorage, a3, a4);
                goto LABEL_69;
              }

              if (!CFEqual(a2, @"FBP_CMCDHeaderVendor"))
              {
                if (CFEqual(a2, @"FBP_NearFutureLiveBufferInfo"))
                {
                  CPECryptorsSessionCryptKeysDict = segPumpCopyNearFutureLiveBufferInfo(DerivedStorage);
                  goto LABEL_69;
                }

                goto LABEL_78;
              }

              segPumpEnsureCMCDHeaderVendor(DerivedStorage, v79, v80, v81, v82, v83, v84, v85, v87.start.value, *&v87.start.timescale, v87.start.epoch, v87.duration.value, *&v87.duration.timescale, v87.duration.epoch, value.start.value, *&value.start.timescale, value.start.epoch, value.duration.value);
              if (!v86)
              {
                goto LABEL_65;
              }

              Copy = *(DerivedStorage + 9776);
              if (!Copy)
              {
LABEL_46:
                v11 = 0;
                *a4 = Copy;
LABEL_66:
                segPumpUnlockAndSendAllPendingNotifications();
                return v11;
              }

              goto LABEL_118;
            }

            if (*(DerivedStorage + 8219))
            {
LABEL_284:
              v78 = MEMORY[0x1E695E4D0];
              goto LABEL_288;
            }
          }

          v78 = MEMORY[0x1E695E4C0];
LABEL_288:
          Copy = *v78;
          if (!*v78)
          {
            goto LABEL_46;
          }

          goto LABEL_118;
        }

        NetworkStatistics = segPumpCreateStartupStatistics(DerivedStorage, a3, a4);
      }

      v11 = NetworkStatistics;
      goto LABEL_66;
    }

    segPumpLoadSynchronousProperties();
    if (CPECryptorsSessionCryptKeysDict)
    {
      goto LABEL_69;
    }

    v62 = *(DerivedStorage + 7904);
    if (!v62)
    {
      Copy = *(DerivedStorage + 7896);
      if (!Copy)
      {
        goto LABEL_65;
      }

      goto LABEL_118;
    }
  }

  LODWORD(v11) = CFErrorGetCode(v62);
LABEL_15:
  segPumpUnlockAndSendAllPendingNotifications();
  if (v11 == -15626)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}