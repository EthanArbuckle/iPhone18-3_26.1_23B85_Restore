@interface EnsureNextEventWillBuffer
@end

@implementation EnsureNextEventWillBuffer

void __fpic_EnsureNextEventWillBuffer_block_invoke(void *a1)
{
  if (CFArrayGetCount(*(a1[9] + 656)) < 1 || CFArrayGetCount(*(a1[9] + 656)) >= 1 && (__fpic_EnsureNextEventWillBuffer_block_invoke_cold_1() & 1) == 0)
  {
    return;
  }

  Count = CFArrayGetCount(*(a1[9] + 656));
  v3 = MEMORY[0x1E695E480];
  if (Count >= 1)
  {
    v4 = Count;
    v5 = 0;
    v6 = *MEMORY[0x1E695E480];
    v7 = MEMORY[0x1E6960CC0];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1[9] + 656), v5);
      if (ValueAtIndex)
      {
        v9 = CFRetain(ValueAtIndex);
      }

      else
      {
        v9 = 0;
      }

      v10 = (*(a1[9] + 88))(a1[10], a1[11], v9);
      if ((*(*(a1[4] + 8) + 44) & 1) == 0)
      {
        time1 = *v7;
        memset(&time2, 0, sizeof(time2));
        fpic_PredictEventGroupDurationOnPrimary(a1[10], v9, a1[11], 0, &time1, &time2);
        v11 = a1[10];
        v12 = a1[11];
        lhs = time2;
        fpic_GetOffsetForEvent(v11, v9, &lhs, v12, &v54);
        *(*(a1[4] + 8) + 32) = v54;
        if (!*(CMBaseObjectGetDerivedStorage() + 896))
        {
          lhs = *(*(a1[4] + 8) + 32);
          rhs = time1;
          CMTimeSubtract(&v52, &lhs, &rhs);
          *(*(a1[4] + 8) + 32) = v52;
          v13 = *(a1[4] + 8);
          FigPlayerInterstitialEventGetFirstItemStartOffset(v10, &lhs);
          rhs = *(v13 + 32);
          CMTimeAdd(&v50, &rhs, &lhs);
          *(*(a1[4] + 8) + 32) = v50;
        }
      }

      if (!fpic_GetPerAssetPerEventTrackedObject(a1[9], v5, 0, @"PlaybackItem"))
      {
        break;
      }

      if (v9)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (++v5 == v4)
      {
        goto LABEL_52;
      }
    }

    allocator = v6;
    v14 = fpic_CopyPerAssetPerEventTrackedObjects(a1[9], v5, @"AssetURL");
    v15 = CFArrayGetCount(v14);
    v46 = v15;
    cf = FigPlayerInterstitialEventCopyAssetListUrl(v10);
    if (cf)
    {
      time1.value = 0;
      if ((*(a1[9] + 112))(a1[10], a1[11], v10, v14, &time1))
      {
        value = v9;
      }

      else
      {
        fpic_UpdateEventInAddOrder(a1[10], v9, time1.value);
        v24 = fpic_CreateAssetListResponseStatusDidChangeNotificationPayload(time1.value, 0, 0);
        fpic_PostNotification(a1[10], @"fpiAssetListResponseStatusDidChange", v24);
        value = time1.value;
        if (time1.value)
        {
          CFRetain(time1.value);
        }

        if (v9)
        {
          CFRelease(v9);
        }

        if (v24)
        {
          CFRelease(v24);
        }

        if (time1.value)
        {
          CFRelease(time1.value);
        }
      }

      PreloadedData = 0;
      v9 = value;
    }

    else if (v15 == 1)
    {
      PreloadedData = fpic_GetPreloadedData(a1[10], v10);
    }

    else
    {
      PreloadedData = 0;
    }

    if (v5)
    {
      goto LABEL_31;
    }

    v18 = *(a1[4] + 8);
    if (*(v18 + 44))
    {
      time1 = *(v18 + 32);
      time2 = *v7;
      CMTimeCompare(&time1, &time2);
      if (v46 >= 1)
      {
        v19 = 0;
        v45 = v14;
        while (1)
        {
          memset(&time1, 0, sizeof(time1));
          fpic_GetEventItemDurationOnAssetTimeline(v9, v19, &time1);
          if ((time1.flags & 1) == 0)
          {
            break;
          }

          time2 = *(*(a1[4] + 8) + 32);
          lhs = time1;
          if (CMTimeCompare(&time2, &lhs) > 0)
          {
            time2 = *(*(a1[4] + 8) + 32);
            lhs = time1;
            CMTimeSubtract(&v49, &time2, &lhs);
            *(*(a1[4] + 8) + 32) = v49;
            v20 = PreloadedData;
            v21 = a1[9];
            lhs = v21[20];
            rhs = time1;
            CMTimeAdd(&time2, &lhs, &rhs);
            v21[20] = time2;
            PreloadedData = v20;
            ++*(*(a1[5] + 8) + 24);
            ++v19;
            v14 = v45;
            if (v46 != v19)
            {
              continue;
            }
          }

          goto LABEL_30;
        }

        if (v19 < v46 - 1)
        {
          v25 = *(a1[4] + 8);
          v26 = MEMORY[0x1E6960C70];
          *(v25 + 32) = *MEMORY[0x1E6960C70];
          *(v25 + 48) = *(v26 + 16);
        }
      }
    }

LABEL_30:
    v22 = *(a1[5] + 8);
    if (*(v22 + 24) < v46)
    {
LABEL_31:
      CFArrayAppendValue(*(*(a1[6] + 8) + 24), v9);
      if (PreloadedData)
      {
        v23 = *(*(a1[7] + 8) + 24);
        if (v23 || (*(*(a1[7] + 8) + 24) = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (v23 = *(*(a1[7] + 8) + 24)) != 0))
        {
          CFDictionarySetValue(v23, v9, PreloadedData);
        }
      }
    }

    else
    {
      *(v22 + 24) = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    v6 = allocator;
    if (!v9)
    {
      goto LABEL_14;
    }

LABEL_13:
    CFRelease(v9);
    goto LABEL_14;
  }

LABEL_52:
  if (CFArrayGetCount(*(*(a1[6] + 8) + 24)) >= 1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    time1.value = 0;
    time2.value = 0;
    v28 = *(DerivedStorage + 160);
    if (v28 && (FigBaseObject = FigPlaybackItemGetFigBaseObject(v28), (v30 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && (v31 = *v3, !v30(FigBaseObject, @"ChosenTrackIDArray", *v3, &time1)))
    {
      v34 = 0;
      v35 = 0;
      while (1)
      {
        v36 = time1.value;
        if (time1.value)
        {
          v36 = CFArrayGetCount(time1.value);
        }

        v32 = !v35;
        if (v34 >= v36 || v35)
        {
          break;
        }

        v37 = *(DerivedStorage + 160);
        CFArrayGetValueAtIndex(time1.value, v34);
        SInt32 = FigCFNumberGetSInt32();
        v39 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v39 && !v39(v37, SInt32, @"FormatDescriptionArray", v31, &time2))
        {
          v40 = 0;
          v35 = 0;
          while (1)
          {
            v41 = time2.value ? CFArrayGetCount(time2.value) : 0;
            if (v40 >= v41 || v35)
            {
              break;
            }

            v42 = CFArrayGetValueAtIndex(time2.value, v40);
            if (CMFormatDescriptionGetMediaType(v42) == 1936684398)
            {
              RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(v42);
              if (RichestDecodableFormat)
              {
                mChannelsPerFrame = RichestDecodableFormat->mASBD.mChannelsPerFrame;
              }

              else
              {
                mChannelsPerFrame = CMAudioFormatDescriptionGetChannelCount();
              }

              v35 = mChannelsPerFrame < 3;
            }

            else
            {
              v35 = 0;
            }

            ++v40;
          }

          if (time2.value)
          {
            CFRelease(time2.value);
            time2.value = 0;
          }
        }

        else
        {
          v35 = 0;
        }

        ++v34;
      }
    }

    else
    {
      v32 = 1;
    }

    if (time1.value)
    {
      CFRelease(time1.value);
    }

    v33 = &kFigPlayerMultichannelAudioStrategy_PreferStereo;
    if (v32)
    {
      v33 = &kFigPlayerMultichannelAudioStrategy_MatchMultichannelTrackPreferenceToAudioDevice;
    }

    *(*(a1[8] + 8) + 24) = *v33;
  }
}

uint64_t __fpic_EnsureNextEventWillBuffer_block_invoke_191(void *a1)
{
  v66 = *MEMORY[0x1E69E9840];
  theArray = *(*(a1[4] + 8) + 24);
  if (theArray >= 1)
  {
    v2 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(*(a1[5] + 8) + 24), v2);
      CMBaseObjectGetDerivedStorage();
      FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
      v4 = fpic_UnwrapEvent();
      v5 = FigPlayerInterstitialEventCopyIdentifier(v4);
      if ((FirstIndexOfValue & 0x8000000000000000) == 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1[6] + 8) + 24), v2);
        if (*(*(a1[7] + 8) + 24) >= 1)
        {
          v7 = 0;
          do
          {
            fpic_SetPerAssetPerEventTrackedObject();
            if (dword_1EAF178D0)
            {
              LODWORD(v52.value) = 0;
              LOBYTE(type.value) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            ++v7;
          }

          while (v7 < *(*(a1[7] + 8) + 24));
        }

        for (i = 0; ; ++i)
        {
          v11 = ValueAtIndex ? CFArrayGetCount(ValueAtIndex) : 0;
          if (i >= v11)
          {
            break;
          }

          CFArrayGetValueAtIndex(ValueAtIndex, i);
          fpic_SetPerAssetPerEventTrackedObject();
          if (dword_1EAF178D0)
          {
            LODWORD(v52.value) = 0;
            LOBYTE(type.value) = 0;
            v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        *(*(a1[7] + 8) + 24) = 0;
        CFArrayRemoveValueAtIndex(*(*(a1[6] + 8) + 24), v2);
        CFArrayRemoveValueAtIndex(*(*(a1[5] + 8) + 24), v2--);
        --*(*(a1[4] + 8) + 24);
      }

      if (v5)
      {
        CFRelease(v5);
      }

      ++v2;
    }

    while (v2 < *(*(a1[4] + 8) + 24));
  }

  if (!*(CMBaseObjectGetDerivedStorage() + 896) || *(a1[11] + 1028) || (CMBaseObjectGetDerivedStorage(), FigCFArrayGetFirstIndexOfValue()) || (v12 = a1[11], (*(v12 + 924) & 1) == 0))
  {
    result = CMBaseObjectGetDerivedStorage();
    if (*(result + 896))
    {
      v14 = 1;
    }

    else
    {
      v14 = theArray < 1;
    }

    if (!v14)
    {
      v15 = a1[11];
      if (*(v15 + 924))
      {
LABEL_30:
        v16 = MEMORY[0x1E6960C70];
        *(v15 + 912) = *MEMORY[0x1E6960C70];
        *(v15 + 928) = *(v16 + 16);
      }
    }

    return result;
  }

  v17 = *(v12 + 904);
  v18 = *(v12 + 1024);
  v19 = a1[10];
  theArraya = *(*(a1[9] + 8) + 24);
  v44 = a1[12];
  *&v47.value = *(v12 + 912);
  v47.epoch = *(v12 + 928);
  *&v46.value = *(v12 + 976);
  v46.epoch = *(v12 + 992);
  *&v45.value = *(v12 + 1000);
  v45.epoch = *(v12 + 1016);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v21 = FigCFArrayGetFirstIndexOfValue();
  PerEventTrackingCount = fpic_GetPerEventTrackingCount(DerivedStorage, v21);
  memset(&v52, 0, sizeof(v52));
  v23 = CMBaseObjectGetDerivedStorage();
  lhs = v23[18];
  rhs = v23[20];
  CMTimeAdd(&v52, &lhs, &rhs);
  type = v47;
  if (v21 == -1)
  {
    __fpic_EnsureNextEventWillBuffer_block_invoke_191_cold_1(&lhs);
    result = LODWORD(lhs.value);
    goto LABEL_49;
  }

  if (PerEventTrackingCount < 1)
  {
LABEL_48:
    result = 0;
    goto LABEL_49;
  }

  lhs = v47;
  rhs = v52;
  CMTimeSubtract(&type, &lhs, &rhs);
  v24 = 0;
  while (1)
  {
    PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(DerivedStorage, v21, v24, @"PlaybackItem");
    if (PerAssetPerEventTrackedObject)
    {
      v26 = PerAssetPerEventTrackedObject == @"DummyItem";
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      goto LABEL_40;
    }

    v27 = PerAssetPerEventTrackedObject;
    v28 = CMBaseObjectGetDerivedStorage();
    if (v44)
    {
      v39 = (*(v28 + 80))(v19, v44, v27);
    }

    else
    {
      v39 = 0;
    }

    v40 = v17;
    v41 = v19;
    fpic_GetEventItemDurationOnAssetTimeline(v17, v24, &lhs);
    value = lhs.value;
    flags = lhs.flags;
    timescale = lhs.timescale;
    if ((lhs.flags & 1) == 0)
    {
      goto LABEL_60;
    }

    epoch = lhs.epoch;
    lhs = type;
    rhs.value = value;
    rhs.timescale = timescale;
    rhs.flags = flags;
    rhs.epoch = epoch;
    if (CMTimeCompare(&lhs, &rhs) < 1)
    {
      break;
    }

    rhs = type;
    v50.value = value;
    v50.timescale = timescale;
    v50.flags = flags;
    v50.epoch = epoch;
    CMTimeSubtract(&lhs, &rhs, &v50);
    type = lhs;
    CFArrayAppendValue(theArraya, v27);
    rhs = DerivedStorage[20];
    v50.value = value;
    v50.timescale = timescale;
    v50.flags = flags;
    v50.epoch = epoch;
    CMTimeAdd(&lhs, &rhs, &v50);
    DerivedStorage[20] = lhs;
    fpic_SetPerAssetPerEventTrackedObject();
    v17 = v40;
    v19 = v41;
LABEL_40:
    if (PerEventTrackingCount == ++v24)
    {
      goto LABEL_48;
    }
  }

  if (!v39)
  {
LABEL_60:
    v31 = 1;
LABEL_64:
    result = 0;
    goto LABEL_50;
  }

  v32 = CMBaseObjectGetDerivedStorage();
  lhs = v32[18];
  rhs = v32[20];
  CMTimeAdd(&v50, &lhs, &rhs);
  v52 = v50;
  memset(&v50, 0, sizeof(v50));
  rhs = v46;
  v49 = v52;
  CMTimeSubtract(&lhs, &rhs, &v49);
  rhs = **&MEMORY[0x1E6960CC0];
  CMTimeMaximum(&v50, &lhs, &rhs);
  memset(&v49, 0, sizeof(v49));
  rhs = v45;
  v48 = v52;
  CMTimeSubtract(&lhs, &rhs, &v48);
  rhs.value = value;
  rhs.timescale = timescale;
  rhs.flags = flags;
  rhs.epoch = epoch;
  CMTimeMinimum(&v49, &lhs, &rhs);
  if (dword_1EAF178D0)
  {
    LODWORD(v48.value) = 0;
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v34 = v48.value;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v34;
    }

    else
    {
      v35 = v34 & 0xFFFFFFFE;
    }

    if (v35)
    {
      lhs = type;
      Seconds = CMTimeGetSeconds(&lhs);
      lhs = v50;
      v37 = CMTimeGetSeconds(&lhs);
      lhs = v49;
      v38 = CMTimeGetSeconds(&lhs);
      LODWORD(rhs.value) = 136316674;
      *(&rhs.value + 4) = "fpic_seekIntoCurrentEvent";
      LOWORD(rhs.flags) = 2048;
      *(&rhs.flags + 2) = v41;
      HIWORD(rhs.epoch) = 2048;
      v54 = v39;
      v55 = 2048;
      v56 = Seconds;
      v57 = 2048;
      v58 = v37;
      v59 = 2048;
      v60 = v38;
      v61 = 1024;
      v62 = v18;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  lhs = type;
  rhs = v50;
  v48 = v49;
  result = FPSupport_SetCurrentTimeWithRangeIDAndReason(v39, &lhs.value, v18, &rhs.value, &v48.value);
  if (!result)
  {
    v31 = 0;
    goto LABEL_64;
  }

LABEL_49:
  v31 = 1;
LABEL_50:
  *(*(a1[8] + 8) + 24) = result;
  if ((v31 & 1) == 0 && !*(*(a1[8] + 8) + 24))
  {
    v15 = a1[11];
    goto LABEL_30;
  }

  return result;
}

uint64_t __fpic_EnsureNextEventWillBuffer_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_187();
  v1 = 0;
  while (1)
  {
    v2 = OUTLINED_FUNCTION_266();
    if (fpic_GetPerAssetPerEventTrackedObject(v2, v3, 0, @"PlaybackItem") != @"DummyItem")
    {
      v4 = OUTLINED_FUNCTION_266();
      result = fpic_GetPerAssetPerEventTrackedObject(v4, v5, 0, @"AssetURL");
      if (!result)
      {
        break;
      }
    }

    if (v0 == ++v1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t __fpic_EnsureNextEventWillBuffer_block_invoke_191_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end