void fpic_GatePrimaryPlaybackAtCurrentEvent(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  v22 = *MEMORY[0x1E6960C70];
  *&v25.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v25.epoch = v5;
  memset(&v24, 0, sizeof(v24));
  fpic_TimeToGatePrimaryPlaybackAtCurrentEvent(&v25, &v26, &v24);
  v8 = CFArrayGetCount(*(DerivedStorage + 656)) < 1 || (ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 656), 0), v7 = (*(DerivedStorage + 88))(a1, a2, ValueAtIndex), *(CMBaseObjectGetDerivedStorage() + 896)) || (FigPlayerInterstitialEventGetSnapOptions(v7) & 1) == 0;
  v9 = *(DerivedStorage + 160);
  if (v9)
  {
    if (v8)
    {
      v10 = MEMORY[0x1E695E4C0];
    }

    else
    {
      v10 = MEMORY[0x1E695E4D0];
    }

    FigBaseObject = FigPlaybackItemGetFigBaseObject(v9);
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v12)
    {
      v12(FigBaseObject, @"SnapTimeToPausePlayback", *v10);
    }

    lhs = v24;
    FigCFSetPropertyToTime();
    *(DerivedStorage + 1064) = v24;
    *(DerivedStorage + 1088) = v26;
    *&lhs.value = v22;
    lhs.epoch = v5;
    v13 = *(DerivedStorage + 160);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v14)
    {
      v14(v13, &lhs);
    }

    rhs = lhs;
    fpic_CheckIfPlayheadHasReachedPrimaryPlaybackGate(a1, &rhs);
  }

  if (v25.flags)
  {
    memset(&v23, 0, sizeof(v23));
    lhs = v24;
    rhs = v25;
    CMTimeAdd(&v23, &lhs, &rhs);
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (dword_1EAF178D0)
  {
    LODWORD(v23.value) = 0;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = v23.value;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = value;
    }

    else
    {
      v18 = value & 0xFFFFFFFE;
    }

    if (v18)
    {
      lhs = v24;
      Seconds = CMTimeGetSeconds(&lhs);
      v20 = *(CMBaseObjectGetDerivedStorage() + 1088);
      v21 = *(DerivedStorage + 1144);
      LODWORD(rhs.value) = 136316162;
      *(&rhs.value + 4) = "fpic_GatePrimaryPlaybackAtCurrentEvent";
      LOWORD(rhs.flags) = 2048;
      *(&rhs.flags + 2) = a1;
      HIWORD(rhs.epoch) = 2048;
      v28 = Seconds;
      v29 = 1024;
      v30[0] = v20;
      LOWORD(v30[1]) = 1024;
      *(&v30[1] + 2) = v21;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t fpic_GetOffsetForEvent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, CMTime *a5@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = (*(DerivedStorage + 88))(a1, a4, a2);
  v12 = MEMORY[0x1E6960CC0];
  v17 = *MEMORY[0x1E6960CC0];
  *&a5->value = *MEMORY[0x1E6960CC0];
  v13 = *(v12 + 16);
  a5->epoch = v13;
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 896))
  {
    if (*(DerivedStorage + 904) != a2)
    {
      *&a5->value = v17;
      a5->epoch = v13;
      return result;
    }

    goto LABEL_10;
  }

  if (*(DerivedStorage + 924))
  {
LABEL_10:
    *&a5->value = *(DerivedStorage + 912);
    v15 = *(DerivedStorage + 928);
LABEL_11:
    a5->epoch = v15;
    return result;
  }

  if (*(a3 + 12))
  {
    *time1 = *a3;
    *&time1[16] = *(a3 + 16);
    *time2 = v17;
    *&time2[16] = v13;
    result = CMTimeCompare(time1, time2);
    if (result >= 1)
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      fpic_EventDateTimeMoment(v11, &v26);
      v25 = 0;
      memset(time1, 0, sizeof(time1));
      fpic_GetEffectiveCurrentItemMoment(*(DerivedStorage + 160), time1);
      *time2 = *time1;
      *&time2[16] = *&time1[16];
      v23 = v25;
      result = fpic_MomentGreaterThan(time2, &v26);
      if (result)
      {
        v19 = v26;
        v20 = v27;
        v21 = v28;
        v18 = *a3;
        fpic_AddTimeToMoment(&v19, &v18, time2);
        v19 = *time1;
        v20 = *&time1[16];
        v21 = v25;
        result = fpic_MomentGreaterThan(time2, &v19);
        if (result)
        {
          *time2 = *time1;
          *&time2[16] = *&time1[16];
          v23 = v25;
          v19 = v26;
          v20 = v27;
          v21 = v28;
          return fpic_SubtractMomentFromMoment(time2, &v19, a5);
        }

        v16 = MEMORY[0x1E6960C70];
        *&a5->value = *MEMORY[0x1E6960C70];
        v15 = *(v16 + 16);
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t fpic_ReadAssetListForEvent(uint64_t a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5, void *a6, uint64_t a7, CMBlockBufferRef *a8)
{
  v80 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = (*(DerivedStorage + 88))(a1, a2, a3);
  v18 = v17;
  if (a4)
  {
    v19 = CFRetain(a4);
  }

  else
  {
    v19 = FigPlayerInterstitialEventCopyAssetListUrl(v17);
  }

  anURL = v19;
  CMBaseObjectGetDerivedStorage();
  FigCFArrayGetFirstIndexOfValue();
  blockBufferOut = 0;
  memset(&v60, 0, sizeof(v60));
  fpic_PredictEventGroupDurationOnPrimary(a1, a3, a2, 0, 0, &v60);
  memset(&v59, 0, sizeof(v59));
  *time = v60;
  fpic_GetOffsetForEvent(a1, a3, time, a2, &v59);
  Seconds = 0.0;
  if (v59.flags)
  {
    *time = v59;
    Seconds = CMTimeGetSeconds(time);
  }

  if (anURL)
  {
    CFURLGetString(anURL);
    Value = FigCFDictionaryGetValue();
    if (Value)
    {
      v23 = Value;
      v24 = CMBaseObjectGetDerivedStorage();
      theArray = 0;
      v71 = 0;
      cf = 0;
      v65 = 0;
      v25 = *(MEMORY[0x1E6960C98] + 16);
      v66 = *MEMORY[0x1E6960C98];
      v67 = v25;
      v68 = *(MEMORY[0x1E6960C98] + 32);
      v64 = 0;
      if (dword_1EAF178D0)
      {
        *v63 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v27 = *v63;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v28 = v27;
        }

        else
        {
          v28 = v27 & 0xFFFFFFFE;
        }

        if (v28)
        {
          v72 = 136315650;
          v73 = "fpic_SetAssetListResponseFromOfflineCache";
          v74 = 2048;
          v75 = a1;
          v76 = 2112;
          v77 = a3;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v34 = FigInterstitialCreatePropertyListsFromJSONData(v23, &theArray, &cf, &v65, &v66, &v64);
      if (v34)
      {
        goto LABEL_69;
      }

      FigBaseObject = FigPlaybackItemGetFigBaseObject(*(v24 + 160));
      v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v36)
      {
        v21 = 4294954514;
        goto LABEL_34;
      }

      v37 = *MEMORY[0x1E695E480];
      v34 = v36(FigBaseObject, @"OfflineInterstitialURLs", *MEMORY[0x1E695E480], &v71);
      if (v34)
      {
LABEL_69:
        v21 = v34;
      }

      else
      {
        MutableCopy = CFArrayCreateMutableCopy(v37, 0, theArray);
        v21 = MutableCopy;
        if (MutableCopy)
        {
          if (CFArrayGetCount(MutableCopy) >= 1)
          {
            v39 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v21, v39);
              CFURLGetString(ValueAtIndex);
              v41 = FigCFDictionaryGetValue();
              if (v41)
              {
                v42 = v41;
              }

              else
              {
                v42 = ValueAtIndex;
              }

              CFArraySetValueAtIndex(v21, v39++, v42);
            }

            while (v39 < CFArrayGetCount(v21));
          }

          *time = v66;
          *&time[16] = v67;
          v79 = v68;
          fpic_handleAssetListResponseDataOnQueue();
          CFRelease(v21);
          v21 = 0;
        }
      }

LABEL_34:
      if (theArray)
      {
        CFRelease(theArray);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v65)
      {
        CFRelease(v65);
      }

      if (v71)
      {
        CFRelease(v71);
      }

      v43 = v64;
      if (!v64)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    if (!fpic_wasPreloadLoaded(a1, v18))
    {
      v29 = *MEMORY[0x1E695E480];
      v30 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%f", *&Seconds);
      v31 = CMBlockBufferCreateEmpty(v29, 0, 0, &blockBufferOut);
      if (v31)
      {
        v21 = v31;
        v32 = blockBufferOut;
      }

      else
      {
        v21 = fpic_IssueTopLevelInterstitialRequest(a1, anURL, v30, fpic_HTTPReadCallback, fpic_customURLReadCallback, a5, a6, a7);
        v32 = blockBufferOut;
        if (!v21)
        {
          *a8 = blockBufferOut;
          blockBufferOut = 0;
LABEL_19:
          CFRelease(anURL);
          if (!v30)
          {
            return v21;
          }

          v33 = v30;
LABEL_45:
          CFRelease(v33);
          return v21;
        }
      }

      if (v32)
      {
        CFRelease(v32);
      }

      goto LABEL_19;
    }

    theArray = 0;
    v71 = 0;
    cf = 0;
    v45 = *(MEMORY[0x1E6960C98] + 16);
    v66 = *MEMORY[0x1E6960C98];
    v67 = v45;
    v68 = *(MEMORY[0x1E6960C98] + 32);
    v65 = 0;
    if (dword_1EAF178D0)
    {
      LODWORD(v64) = 0;
      v63[0] = OS_LOG_TYPE_DEFAULT;
      v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v47 = v64;
      if (os_log_type_enabled(v46, v63[0]))
      {
        v48 = v47;
      }

      else
      {
        v48 = v47 & 0xFFFFFFFE;
      }

      if (v48)
      {
        v72 = 136315650;
        v73 = "fpic_SetAssetListResponseFromPreloadCache";
        v74 = 2048;
        v75 = a1;
        v76 = 2112;
        v77 = a3;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v49 = fpic_UnwrapEvent();
    PreloadedData = fpic_GetPreloadedData(a1, v49);
    if (PreloadedData)
    {
      v51 = PreloadedData;
      DataLength = CMBlockBufferGetDataLength(PreloadedData);
      Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], DataLength);
      v54 = Mutable;
      if (Mutable)
      {
        CFDataIncreaseLength(Mutable, DataLength);
        MutableBytePtr = CFDataGetMutableBytePtr(v54);
        v56 = CMBlockBufferCopyDataBytes(v51, 0, DataLength, MutableBytePtr);
        if (v56)
        {
          v21 = v56;
        }

        else
        {
          v21 = FigInterstitialCreatePropertyListsFromJSONData(v54, &v71, &theArray, &cf, &v66, &v65);
          v57 = v71;
          if (!v21)
          {
            *time = v66;
            *&time[16] = v67;
            v79 = v68;
            fpic_handleAssetListResponseDataOnQueue();
            v57 = v71;
          }

          if (v57)
          {
            CFRelease(v57);
          }
        }

LABEL_61:
        if (theArray)
        {
          CFRelease(theArray);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v54)
        {
          CFRelease(v54);
        }

        v43 = v65;
        if (!v65)
        {
          goto LABEL_44;
        }

LABEL_43:
        CFRelease(v43);
LABEL_44:
        v33 = anURL;
        goto LABEL_45;
      }

      fpic_ReadAssetListForEvent_cold_1(time);
    }

    else
    {
      fpic_ReadAssetListForEvent_cold_2(time);
      v54 = 0;
    }

    v21 = *time;
    goto LABEL_61;
  }

  fpic_SetPerAssetPerEventTrackedObject();
  return 0;
}

void fpic_AddNewHttpReq(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v9 = Mutable;
    CFDictionarySetValue(Mutable, @"FPICURLR_Event", a2);
    CFDictionarySetValue(v9, @"FPICURLR_HTTPRequest", a3);
    CFDictionarySetValue(v9, @"FPICURLR_Buffer", a4);
    CFArrayAppendValue(*(DerivedStorage + 680), v9);

    CFRelease(v9);
  }
}

void fpic_AddNewCustomURLReq(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v10 = Mutable;
    CFDictionarySetValue(Mutable, @"FPICURLR_Event", a2);
    CFDictionarySetValue(v10, @"FPICURLR_CURLLoader", a3);
    FigCFDictionarySetInt64();
    CFDictionarySetValue(v10, @"FPICURLR_Buffer", a5);
    CFArrayAppendValue(*(DerivedStorage + 680), v10);

    CFRelease(v10);
  }
}

void fpic_RemoveEvent(uint64_t a1, const void *a2, __CFArray *a3, int a4, int a5, int a6)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
  if (FirstIndexOfValue == -1 || v13 == 0)
  {
    goto LABEL_32;
  }

  v56 = a6;
  idx = FirstIndexOfValue;
  v61 = a4;
  v16 = (*(DerivedStorage + 88))(a1, v13, a2);
  v17 = FigCFArrayGetFirstIndexOfValue();
  v58 = v16;
  v18 = FigPlayerInterstitialEventCopyIdentifier(v16);
  v62 = v13;
  v60 = DerivedStorage;
  if (dword_1EAF178D0)
  {
    v65 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(CMBaseObjectGetDerivedStorage() + 896))
  {
    fpic_UnwrapEvent();
    if (FigCFEqual())
    {
      if (dword_1EAF178D0)
      {
        v65 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      fpic_ForceCancelInitiatedSeek();
    }
  }

  CFRetain(a2);
  v59 = v18;
  if (v17 != -1)
  {
    PerEventTrackingCount = fpic_GetPerEventTrackingCount(DerivedStorage, v17);
    FirstCurrentItem = fpic_GetFirstCurrentItem();
    LastPlaybackError = FigPlayerInterstitialEventGetLastPlaybackError(v16);
    v36 = LastPlaybackError;
    if (a3)
    {
      v54 = LastPlaybackError;
      cf[0] = 0;
      fpic_CopyNextItemFromInterstitialPlayer(a1, v13, cf);
      if (PerEventTrackingCount >= 1)
      {
        for (i = 0; i != PerEventTrackingCount; ++i)
        {
          PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(v60, v17, i, @"PlaybackItem");
          v39 = CMBaseObjectGetDerivedStorage();
          if (PerAssetPerEventTrackedObject)
          {
            v40 = PerAssetPerEventTrackedObject == @"DummyItem";
          }

          else
          {
            v40 = 1;
          }

          if (!v40)
          {
            v41 = (*(v39 + 80))(a1, v13, PerAssetPerEventTrackedObject);
            if (!a5 || (cf[0] == v41 ? (v42 = cf[0] == 0) : (v42 = 1), v42))
            {
              CFArrayAppendValue(a3, PerAssetPerEventTrackedObject);
            }
          }
        }
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      DerivedStorage = v60;
      v36 = v54;
    }

    fpic_RecordPastCurrentEventDuration(a1, a2);
    CFArrayRemoveValueAtIndex(*(DerivedStorage + 656), v17);
    fpic_RemovePerEventTrackedObjects();
    v43 = FigPlayerInterstitialEventCopyIdentifier(v58);
    fpic_ForgetPreloadByTargetID(a1, v43);
    if (v43)
    {
      CFRelease(v43);
    }

    CFSetSetValue(*(DerivedStorage + 688), a2);
    fpic_CancelPendingURLRequest(a1, a2);
    if (v56)
    {
      fpic_HopNextMomentIfNecessary();
    }

    if (!CFArrayGetCount(*(DerivedStorage + 656)) && FigPlayerInterstitialEventIsPostRoll(v58))
    {
      fpic_DeassertPostRoll(a1);
    }

    if (v17)
    {
      if (PerEventTrackingCount > 0 || v36)
      {
LABEL_78:
        fpic_PostInterstitialWasUnscheduledNotification(a1, a2, v36);
      }
    }

    else
    {
      v45 = *(DerivedStorage + 540);
      fpic_StopRecordingActiveInterstitialItemPlayoutTime(a1, FirstCurrentItem);
      fpic_SignalCurrentEvent(a1, v13);
      v46 = v45 & 0x1D;
      v18 = v59;
      v47 = MEMORY[0x1E6960CC0];
      v48 = *MEMORY[0x1E6960CC0];
      *(DerivedStorage + 432) = *MEMORY[0x1E6960CC0];
      v49 = *(v47 + 16);
      *(DerivedStorage + 448) = v49;
      *(DerivedStorage + 480) = v48;
      *(DerivedStorage + 496) = v49;
      v51 = PerEventTrackingCount > 0 || v36 != 0;
      if (v46 != 1 && v51)
      {
        goto LABEL_78;
      }
    }

    FigPlayerInterstitialEventSetLastPlaybackError(v58);
    if (*(DerivedStorage + 1224))
    {
      v52 = CFRetain(*(DerivedStorage + 32));
      v53 = *(DerivedStorage + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __fpic_RemoveEvent_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v52;
      dispatch_async(v53, block);
    }
  }

  v20 = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(v20 + 656));
  v22 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v22)
  {
    v23 = v22;
    v24 = (*(v20 + 88))(a1, v22, a2);
    v25 = FigPlayerInterstitialEventCopyIdentifier(v24);
    if (FigPlayerInterstitialEventIsPreRoll(v24))
    {
      if (Count < 1)
      {
LABEL_18:
        fpic_flipInterstitialAndPrimaryVisibility(a1, 0, v23, NAN);
        if (dword_1EAF178D0)
        {
          v65 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v31 = v65;
          if (os_log_type_enabled(v30, type))
          {
            v32 = v31;
          }

          else
          {
            v32 = v31 & 0xFFFFFFFE;
          }

          if (v32)
          {
            v66 = 136315394;
            v67 = "fpic_SwapToPrimaryItemPlayerLayerUponPrerollCancelation";
            v68 = 2048;
            v69 = a1;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        v26 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v20 + 656), v26);
          v28 = (*(v20 + 88))(a1, v23, ValueAtIndex);
          v29 = FigPlayerInterstitialEventCopyIdentifier(v28);
          if (FigPlayerInterstitialEventIsPreRoll(v28))
          {
            if (!FigCFEqual())
            {
              break;
            }
          }

          if (v29)
          {
            CFRelease(v29);
          }

          if (Count == ++v26)
          {
            goto LABEL_18;
          }
        }

        if (v29)
        {
          CFRelease(v29);
        }
      }
    }

    CFRelease(v23);
    v13 = v62;
    v18 = v59;
    if (v25)
    {
      CFRelease(v25);
    }
  }

  if (v61)
  {
    CMBaseObjectGetDerivedStorage();
    v44 = FigCFArrayGetFirstIndexOfValue();
    CFDictionaryRemoveValue(v60[87], v18);
    CFArrayRemoveValueAtIndex(v60[25], idx);
    if (v44 != -1)
    {
      CFArrayRemoveValueAtIndex(v60[26], v44);
    }

    fpic_ForgetPastEvent();
    fpic_UpdatePlaybackItemEventList();
    v18 = v59;
  }

  CFRelease(a2);
  if (v18)
  {
    CFRelease(v18);
  }

LABEL_32:
  if (v13)
  {
    CFRelease(v13);
  }
}

const void *fpic_wasPreloadLoaded(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigPlayerInterstitialEventCopyIdentifier(a2);
  attachmentModeOut = 0;
  Value = CFDictionaryGetValue(*(DerivedStorage + 712), v4);
  if (Value)
  {
    TypeID = CMBlockBufferGetTypeID();
    if (TypeID != CFGetTypeID(Value) || CMGetAttachment(Value, @"Preload_RequestID", &attachmentModeOut))
    {
      Value = 0;
      goto LABEL_5;
    }

    CMGetAttachment(Value, @"Preload_URL", &attachmentModeOut);
    v8 = FigPlayerInterstitialEventCopyAssetListUrl(a2);
    v9 = FigPlayerInterstitialEventCopyInterstitialAssetURLs(a2);
    v10 = v9;
    if (v8)
    {
      Value = FigCFEqual();
      if (v10)
      {
        CFRelease(v10);
      }

      v11 = v8;
    }

    else
    {
      if (!v9)
      {
        Value = FigCFEqual();
        goto LABEL_5;
      }

      if (CFArrayGetCount(v9) == 1)
      {
        CFArrayGetValueAtIndex(v10, 0);
      }

      Value = FigCFEqual();
      v11 = v10;
    }

    CFRelease(v11);
  }

LABEL_5:
  if (v4)
  {
    CFRelease(v4);
  }

  return Value;
}

void fpic_HTTPReadCallback(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, unsigned int a7, int a8)
{
  v61 = *MEMORY[0x1E69E9840];
  *&v42 = 0;
  *(&v42 + 1) = &v42;
  v43 = 0x2020000000uLL;
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated() || (Owner = FigRetainProxyGetOwner()) == 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = CFRetain(Owner);
  }

  FigRetainProxyUnlockMutex();
  if (v14)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v17 = *DerivedStorage;
    block = MEMORY[0x1E69E9820];
    *&v38 = 3221225472;
    *(&v38 + 1) = __fpic_HTTPReadCallback_block_invoke;
    *&v39 = &unk_1E748B8C8;
    *(&v39 + 1) = &v42;
    *&v40 = v14;
    *(&v40 + 1) = a1;
    v41 = DerivedStorage;
    dispatch_sync(v17, &block);
    v18 = *(*(&v42 + 1) + 24);
    if (v18)
    {
      Value = CFDictionaryGetValue(v18, @"FPICURLR_Event");
      v20 = CFDictionaryGetValue(*(*(&v42 + 1) + 24), @"FPICURLR_Buffer");
      if (a8 || (fpic_HandleResponseData(v14, Value, a4, a5, a6, v20, (a7 >> 1) & 1, v21, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, block, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60), (a8 = v22) != 0))
      {
        v23 = *(DerivedStorage + 300) + 1;
        *(DerivedStorage + 300) = v23;
        fpic_setItemPropertyInt32(DerivedStorage[20], @"interstitialPlaybackFailureCount", v23);
        HIDWORD(v36) = 0;
        BYTE3(v36) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v25 = *DerivedStorage;
        v29 = MEMORY[0x1E69E9820];
        v30 = 3221225472;
        v31 = __fpic_HTTPReadCallback_block_invoke_166;
        v32 = &__block_descriptor_52_e5_v8__0l;
        v33 = v14;
        v34 = Value;
        LODWORD(v35) = a8;
        dispatch_sync(v25, &v29);
      }

      fpic_ServiceCurrentEvent(v14, MEMORY[0x1E6960C70]);
    }

    else
    {
      FigSignalErrorAtGM();
    }

    CFRelease(v14);
  }

  else
  {
    FigSignalErrorAtGM();
  }

  v26 = *(*(&v42 + 1) + 24);
  if (v26)
  {
    CFRelease(v26);
  }

  _Block_object_dispose(&v42, 8);
}

void fpic_customURLReadCallback(const void *a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6)
{
  v60 = *MEMORY[0x1E69E9840];
  SInt64 = FigCFNumberCreateSInt64();
  cf = 0;
  v59 = 0;
  HIDWORD(v57) = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  LODWORD(v56) = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  if (!a1)
  {
    *(v54 + 6) = FigSignalErrorAtGM();
LABEL_19:
    fpic_ServiceCurrentEvent(a1, MEMORY[0x1E6960C70]);
    if (!v6)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  v14 = *DerivedStorage;
  *(&v42 + 1) = MEMORY[0x1E69E9820];
  *&v43 = 3221225472;
  *(&v43 + 1) = __fpic_customURLReadCallback_block_invoke;
  v44 = &unk_1E748B8C8;
  v45 = &v49;
  v46 = a1;
  v47 = SInt64;
  v48 = DerivedStorage;
  dispatch_sync(v14, &v42 + 8);
  v15 = v50[3];
  if (v15)
  {
    Value = CFDictionaryGetValue(v15, @"FPICURLR_Event");
    HTTPStatusCode = FigCustomURLResponseInfoGetHTTPStatusCode();
    v18 = v54;
    *(v54 + 6) = HTTPStatusCode;
    if (HTTPStatusCode == -17360)
    {
      *(v18 + 6) = 0;
    }

    else if (HTTPStatusCode)
    {
      goto LABEL_14;
    }

    v19 = v59;
    if (!v59)
    {
      v19 = 200;
      v59 = 200;
    }

    HTTPStatusCode = FigCFHTTPCopyErrorCodeAndCommentForHTTPStatusCode(v19, &v57 + 1, 0);
    *(v54 + 6) = HTTPStatusCode;
    if (!HTTPStatusCode && !a6 && !HIDWORD(v57))
    {
      if ((a5 & 1) == 0 || !fpic_copyRedirectURLFromCustomURLResponse(a3, &cf))
      {
        v21 = CFDictionaryGetValue(v50[3], @"FPICURLR_Buffer");
        fpic_HandleResponseData(a1, Value, a4, 0, 0, v21, a5 & 1, v22, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, cf, v59);
        *(v54 + 6) = HTTPStatusCode;
        goto LABEL_17;
      }

      v20 = *DerivedStorage;
      *(&v37 + 1) = MEMORY[0x1E69E9820];
      *&v38 = 3221225472;
      *(&v38 + 1) = __fpic_customURLReadCallback_block_invoke_2;
      *&v39 = &unk_1E7494FB8;
      *(&v39 + 1) = &v53;
      v40 = v6;
      *&v41 = a1;
      *(&v41 + 1) = Value;
      *&v42 = cf;
      dispatch_sync(v20, &v37 + 8);
      HTTPStatusCode = *(v54 + 6);
    }

LABEL_14:
    if (a6)
    {
LABEL_18:
      DWORD1(v37) = 0;
      BYTE3(v37) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v24 = *DerivedStorage;
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __fpic_customURLReadCallback_block_invoke_172;
      v32 = &unk_1E748B8C8;
      v33 = &v53;
      v34 = a1;
      v35 = Value;
      v36 = a6;
      dispatch_sync(v24, &v29);
      goto LABEL_19;
    }

LABEL_17:
    if (!HTTPStatusCode)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  *(v54 + 6) = FigSignalErrorAtGM();
  if (v6)
  {
LABEL_20:
    CFRelease(v6);
  }

LABEL_21:
  if (SInt64)
  {
    CFRelease(SInt64);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v25 = v50[3];
  if (v25)
  {
    CFRelease(v25);
  }

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
}

void sub_1967C4FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Unwind_Resume(a1);
}

const void *fpic_GetPreloadedData(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigPlayerInterstitialEventCopyIdentifier(a2);
  if (!fpic_wasPreloadLoaded(a1, a2))
  {
    Value = 0;
    if (!v5)
    {
      return Value;
    }

    goto LABEL_3;
  }

  Value = CFDictionaryGetValue(*(DerivedStorage + 712), v5);
  if (v5)
  {
LABEL_3:
    CFRelease(v5);
  }

  return Value;
}

uint64_t fpic_FindURLReq(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 680));
  while (Count-- >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 680), Count);
    if (CFDictionaryGetValue(ValueAtIndex, a2) == a3)
    {
      return Count;
    }
  }

  return -1;
}

const void *__fpic_customURLReadCallback_block_invoke(uint64_t a1)
{
  result = fpic_FindURLReq(*(a1 + 40), @"FPICURLR_CURLRequestID", *(a1 + 48));
  if (result != -1)
  {
    result = CFArrayGetValueAtIndex(*(*(a1 + 56) + 680), result);
    if (result)
    {
      result = CFRetain(result);
    }

    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

void fpic_setItemPropertyInt32(uint64_t a1, uint64_t a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  FigBaseObject = FigPlaybackItemGetFigBaseObject(a1);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    v7(FigBaseObject, a2, v5);
  }

  CFRelease(v5);
}

uint64_t fpic_clearEventAssetListState(uint64_t a1)
{
  FigPlayerInterstitialEventSetAssetListResponse(a1, 0);
  v2 = *(MEMORY[0x1E6960C98] + 16);
  v4[0] = *MEMORY[0x1E6960C98];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E6960C98] + 32);
  FigPlayerInterstitialEventSetOverrideSkipControlTimeRange(a1, v4);
  return FigPlayerInterstitialEventSetOverrideSkipControlLocalizedLabelBundleKey(a1, 0);
}

void fpic_UpdateEventInAddOrder(uint64_t a1, CFTypeRef a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
  CMBaseObjectGetDerivedStorage();
  v8 = FigCFArrayGetFirstIndexOfValue();
  if (a2)
  {
    a2 = CFRetain(a2);
  }

  if (FirstIndexOfValue != -1)
  {
    fpic_ForgetPastEvent();
    CFArraySetValueAtIndex(*(DerivedStorage + 200), FirstIndexOfValue, a3);
    if (v8 == -1)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      CFArraySetValueAtIndex(*(DerivedStorage + 208), v8, a3);
    }

    fpic_UpdatePlaybackItemEventList();
    CMBaseObjectGetDerivedStorage();
    v10 = FigCFArrayGetFirstIndexOfValue();
    if (v10 != -1)
    {
      CFArraySetValueAtIndex(*(DerivedStorage + 656), v10, a3);
      URLReq = fpic_FindURLReq(a1, @"FPICURLR_Event", a2);
      if (URLReq != -1)
      {
        v12 = URLReq;
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 680), URLReq);
        Value = CFDictionaryGetValue(ValueAtIndex, @"FPICURLR_Buffer");
        v15 = CFDictionaryGetValue(ValueAtIndex, @"FPICURLR_HTTPRequest");
        if (v15)
        {
          fpic_AddNewHttpReq(a1, a3, v15, Value);
        }

        else
        {
          v16 = CFDictionaryGetValue(ValueAtIndex, @"FPICURLR_CURLLoader");
          if (v16)
          {
            v17 = v16;
            if (FigCFDictionaryGetInt64IfPresent())
            {
              fpic_AddNewCustomURLReq(a1, a3, v17, 0, Value);
            }
          }
        }

        CFArrayRemoveValueAtIndex(*(DerivedStorage + 680), v12);
      }
    }

    fpic_PostNotification(a1, @"fpiEventsDidChange", 0);
    if (*(DerivedStorage + 904) == a2)
    {
      *(DerivedStorage + 904) = a3;
    }
  }

  if (a2)
  {
    CFRelease(a2);
  }
}

uint64_t fpic_CopyNextItemFromInterstitialPlayer(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = (*(DerivedStorage + 72))(a1, a2, *(DerivedStorage + 48));
  if (a3)
  {
    if (result)
    {
      fpic_CopyNextItem(result, a3);
      return 0;
    }

    else
    {
      *a3 = 0;
    }
  }

  else
  {
    fpic_CopyNextItemFromInterstitialPlayer_cold_1(&v8);
    return v8;
  }

  return result;
}

uint64_t fpic_RecordPastCurrentEventDuration(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = **&MEMORY[0x1E6960C70];
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v5)
  {
    v6 = v5;
    CMBaseObjectGetDerivedStorage();
    FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
    fpic_GetProjectedDuration(a1, a2, FirstIndexOfValue, v6);
    if (!FirstIndexOfValue)
    {
      lhs = v13;
      v11 = *(DerivedStorage + 480);
      CMTimeAdd(&v13, &lhs, &v11);
    }

    v8 = *MEMORY[0x1E695E480];
    lhs = v13;
    v9 = CMTimeCopyAsDictionary(&lhs, v8);
    CFDictionarySetValue(*(DerivedStorage + 672), a2, v9);
    if (v9)
    {
      CFRelease(v9);
    }

    CFRelease(v6);
    return 0;
  }

  else
  {
    fpic_RecordPastCurrentEventDuration_cold_1(&lhs);
    return LODWORD(lhs.value);
  }
}

void fpic_CancelPendingURLRequest(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  URLReq = fpic_FindURLReq(a1, @"FPICURLR_Event", a2);
  if (URLReq != -1)
  {
    v6 = URLReq;
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 680), URLReq);
    Value = CFDictionaryGetValue(ValueAtIndex, @"FPICURLR_HTTPRequest");
    if (Value)
    {
      v9 = Value;
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v10)
      {
        v10(v9);
      }
    }

    else
    {
      v11 = CFDictionaryGetValue(ValueAtIndex, @"FPICURLR_CURLLoader");
      if (v11)
      {
        v12 = v11;
        if (FigCFDictionaryGetInt64IfPresent())
        {
          v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v13)
          {
            v13(v12, 0);
          }
        }
      }
    }

    CFArrayRemoveValueAtIndex(*(DerivedStorage + 680), v6);
  }
}

void fpic_DeassertPostRoll(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(a1, &cf);
  *(DerivedStorage + 1146) = 0;
  if (PrimaryPlayerAndCopyWrapper)
  {
    v4 = *(DerivedStorage + 1168);
    FigBaseObject = FigPlayerGetFigBaseObject(PrimaryPlayerAndCopyWrapper);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(FigBaseObject, @"ActionAtEnd", v4);
    }
  }

  v7 = cf;
  if (cf)
  {

    CFRelease(v7);
  }
}

void fpic_StopRecordingActiveInterstitialItemPlayoutTime(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 540) & 0x1D) == 1)
  {
    v4 = DerivedStorage;
    memset(&v12, 0, sizeof(v12));
    fpic_GetItemPlayoutDuration(a2, &v12);
    if ((v12.flags & 0x1D) == 1)
    {
      lhs = *(v4 + 432);
      rhs = v12;
      CMTimeAdd(&time, &lhs, &rhs);
      *(v4 + 432) = time;
    }

    if (dword_1EAF178D0)
    {
      LODWORD(rhs.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = rhs.value;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
      {
        v7 = value;
      }

      else
      {
        v7 = value & 0xFFFFFFFE;
      }

      if (v7)
      {
        time = v12;
        Seconds = CMTimeGetSeconds(&time);
        time = *(v4 + 432);
        v9 = CMTimeGetSeconds(&time);
        LODWORD(lhs.value) = 136315906;
        *(&lhs.value + 4) = "fpic_StopRecordingActiveInterstitialItemPlayoutTime";
        LOWORD(lhs.flags) = 2112;
        *(&lhs.flags + 2) = a2;
        HIWORD(lhs.epoch) = 2048;
        v14 = Seconds;
        v15 = 2048;
        v16 = v9;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = MEMORY[0x1E6960C70];
    *(v4 + 528) = *MEMORY[0x1E6960C70];
    *(v4 + 544) = *(v10 + 16);
  }
}

void fpic_SignalCurrentEvent(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v15 = 0;
  cf = 0;
  if (!Mutable)
  {
    goto LABEL_21;
  }

  v7 = Mutable;
  if (!*(DerivedStorage + 160))
  {
    CFRelease(Mutable);
LABEL_21:
    v9 = &stru_1F0B1AFB8;
LABEL_14:
    CFRelease(v9);
    goto LABEL_15;
  }

  if (CFArrayGetCount(*(DerivedStorage + 656)) && (ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 656), 0)) != 0)
  {
    v10 = (*(DerivedStorage + 88))(a1, a2, ValueAtIndex);
    v9 = FigPlayerInterstitialEventCopyIdentifier(v10);
  }

  else
  {
    v9 = &stru_1F0B1AFB8;
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject(*(DerivedStorage + 160));
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v12)
  {
    v12(FigBaseObject, @"currentInterstitialEvent", v9);
  }

  FigCFDictionarySetValue();
  fpic_copyPrimaryPlayer(a1, &v15);
  if (v15)
  {
    v13 = FigPlayerGetFigBaseObject(v15);
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(v13, @"PlaybackState", v5, &cf);
    }

    FigCFDictionarySetValue();
  }

  fpic_PostNotification(a1, @"fpiCurrentEventDidChange", v7);
  fpic_updateSkippableEventStateOnQueue();
  CFRelease(v7);
  if (v9)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

void fpic_CopyNextItem(uint64_t a1, CFTypeRef *a2)
{
  v6 = 0;
  if (a1)
  {
    v4 = *a2;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v5)
    {
      v5(a1, v4, &v6);
    }
  }

  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = v6;
}

void fpic_ForgetPreloadByTargetID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 712), a2);
  if (Value)
  {
    v5 = Value;
    attachmentModeOut = 0;
    v6 = CMGetAttachment(Value, @"Preload_RequestID", &attachmentModeOut);
    if (v6)
    {
      v7 = v6;
      FigHTTPRequestGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v8)
        {
          v8(v7);
        }
      }

      else
      {
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(v7))
        {
          v10 = CMGetAttachment(v5, @"Preload_CustomURLLoader", &attachmentModeOut);
          if (v10)
          {
            v11 = v10;
            UInt64 = FigCFNumberGetUInt64();
            v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v13)
            {
              v13(v11, UInt64);
            }
          }
        }
      }
    }

    CFDictionaryRemoveValue(*(DerivedStorage + 712), a2);
  }
}

double fpic_GetItemPlayoutDuration@<D0>(uint64_t a1@<X1>, CMTime *a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E6960C70];
  a2->epoch = *(MEMORY[0x1E6960C70] + 16);
  v6 = *v5;
  *&a2->value = *v5;
  if ((*(DerivedStorage + 540) & 0x1D) == 1)
  {
    memset(&v15, 0, sizeof(v15));
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v7)
    {
      v7(a1, &v15);
      if ((v15.flags & 0x1D) == 1)
      {
        fpic_GetCurrentlyPlayingEvent();
        v8 = fpic_UnwrapEvent();
        v13 = 0uLL;
        v14 = 0;
        fpic_GetItemEndTime();
        time1 = v15;
        memset(&time2, 0, sizeof(time2));
        CMTimeMinimum(a2, &time1, &time2);
        if (!fpic_hasFirstItemPlayedOutForEvent())
        {
          FigPlayerInterstitialEventGetFirstItemStartOffset(v8, &time1);
          time2 = *a2;
          if ((CMTimeCompare(&time2, &time1) & 0x80000000) == 0)
          {
            FigPlayerInterstitialEventGetFirstItemStartOffset(v8, &time2);
            v10 = *a2;
            CMTimeSubtract(&time1, &v10, &time2);
            *&v6 = time1.value;
            *a2 = time1;
          }
        }
      }
    }
  }

  return *&v6;
}

uint64_t fpic_copyPrimaryPlayer(uint64_t a1, void *a2)
{
  cf = 0;
  PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(a1, &cf);
  if (a2)
  {
    if (PrimaryPlayerAndCopyWrapper)
    {
      PrimaryPlayerAndCopyWrapper = CFRetain(PrimaryPlayerAndCopyWrapper);
    }

    v4 = 0;
    *a2 = PrimaryPlayerAndCopyWrapper;
  }

  else
  {
    fpic_copyPrimaryPlayer_cold_1(&v7);
    v4 = v7;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

BOOL fpic_isTimelineTimerScheduledForItemTime(uint64_t a1, uint64_t a2, CMTime *a3)
{
  if (!*(a1 + 32) || *(a1 + 24) != a2)
  {
    return 0;
  }

  v8 = v3;
  v9 = v4;
  v7 = *a1;
  v6 = *a3;
  return faqrp_timeDifferenceIsWithinTolerance(&v7, &v6, &kMomentsAreCloseThreshold);
}

void fpic_UpdateSkippableEventStateTimerProc()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v0)
  {
    v2 = *DerivedStorage;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __fpic_UpdateSkippableEventStateTimerProc_block_invoke;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v3[4] = v0;
    v3[5] = DerivedStorage;
    dispatch_sync(v2, v3);
    fpic_ServiceCurrentEvent(v0, MEMORY[0x1E6960C70]);
    CFRelease(v0);
  }
}

uint64_t fpic_TimeToGatePrimaryPlaybackAtCurrentEvent@<X0>(CMTime *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  v8 = v7 + 264;
  if (!*(v7 + 296) && !*(v7 + 297))
  {
    v8 = v7 + 224;
  }

  v25 = *v8;
  v26 = *(v8 + 16);
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v11 = *(v8 + 33);
  v12 = *MEMORY[0x1E6960C70];
  *&v24.value = *MEMORY[0x1E6960C70];
  v13 = *(MEMORY[0x1E6960C70] + 16);
  v24.epoch = v13;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (*(DerivedStorage + 1143))
  {
    if (v10)
    {
      *a3 = v25;
      *(a3 + 16) = v26;
    }

    else if (v11)
    {
      v14 = *(DerivedStorage + 320);
      *time1 = *(DerivedStorage + 304);
      *&time1[16] = v14;
      v28 = *(DerivedStorage + 336);
      FigCreateTimeWithDateAndMoment(time1, a3, v9);
    }

    else
    {
      *a3 = v12;
      *(a3 + 16) = v13;
    }
  }

  else
  {
    CMTimeMake(a3, 0, 1);
  }

  if (!*(DerivedStorage + 968) && !*(DerivedStorage + 969))
  {
    result = CMBaseObjectGetDerivedStorage();
    if (*(result + 1144) && (*&time1[16] = *(DerivedStorage + 520), *time1 = *(DerivedStorage + 504), time2 = **&MEMORY[0x1E6960CC0], result = CMTimeCompare(time1, &time2), result >= 1))
    {
      v21 = (DerivedStorage + 1064);
      *time1 = *a3;
      *&time1[16] = *(a3 + 16);
      time2 = *(DerivedStorage + 1064);
      result = faqrp_timeDifferenceIsWithinTolerance(time1, &time2, &kMomentsAreCloseThreshold);
      if (!result)
      {
        result = CMBaseObjectGetDerivedStorage();
        if (!*(result + 1088))
        {
          *time1 = *a3;
          *&time1[16] = *(a3 + 16);
          *&time2.value = *v21;
          time2.epoch = *(DerivedStorage + 1080);
          result = CMTimeSubtract(&v24, time1, &time2);
          v20 = 0;
          v22 = *v21;
          *(a3 + 16) = *(DerivedStorage + 1080);
          *a3 = v22;
          goto LABEL_16;
        }
      }
    }

    else
    {
      v20 = *(DerivedStorage + 1146);
      if (!v20)
      {
        goto LABEL_16;
      }

      if (*(DerivedStorage + 160))
      {
        fpic_GetItemEndTime();
        *&v23.value = *&kPostRollTimeToPausePlaybackBuffer.value;
        v23.epoch = 0;
        result = CMTimeAdd(time1, &time2, &v23);
        v20 = 0;
        *a3 = *time1;
        *(a3 + 16) = *&time1[16];
        goto LABEL_16;
      }
    }

    v20 = 0;
    goto LABEL_16;
  }

  v15 = *(DerivedStorage + 160);
  VTable = CMBaseObjectGetVTable();
  v18 = *(VTable + 16);
  result = VTable + 16;
  v19 = *(v18 + 32);
  if (v19)
  {
    result = v19(v15, a3);
  }

  v20 = 1;
LABEL_16:
  if (a1)
  {
    *a1 = v24;
  }

  if (a2)
  {
    *a2 = v20;
  }

  return result;
}

void fpic_CheckIfPlayheadHasReachedPrimaryPlaybackGate(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1076))
  {
    v4 = DerivedStorage;
    v5 = (DerivedStorage + 1064);
    lhs = *a2;
    *&v10.value = *&kMomentsAreCloseThreshold.value;
    v10.epoch = 0;
    CMTimeAdd(&time1, &lhs, &v10);
    lhs = *v5;
    if ((CMTimeCompare(&time1, &lhs) & 0x80000000) == 0 && !*(CMBaseObjectGetDerivedStorage() + 1144))
    {
      v6 = FigCFWeakReferenceHolderCopyReferencedObject();
      v7 = fpic_CopyCurrentInterstitialItemTimebase();
      if (v7)
      {
        v8 = v7;
        if (CMTimebaseGetRate(v7) == 0.0)
        {
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        }

        else
        {
          UpTimeNanoseconds = 0;
        }

        *(v4 + 1176) = UpTimeNanoseconds;
        CFRelease(v8);
      }

      else
      {
        *(v4 + 1176) = FigGetUpTimeNanoseconds();
      }

      if (v6)
      {
        CFRelease(v6);
      }

      *(v4 + 1144) = 1;
    }
  }
}

void fpic_HandlePreloadResponseData(uint64_t a1, uint64_t a2, const void *a3, OpaqueCMBlockBuffer *a4, size_t a5, size_t a6, int a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = a2;
  key = 0;
  CFDictionaryApplyFunction(*(DerivedStorage + 712), fpic_FindPreloadApplier, &v18);
  if (key)
  {
    Value = CFDictionaryGetValue(*(DerivedStorage + 712), key);
    if (a3)
    {
      v15 = key;
      v16 = CMBaseObjectGetDerivedStorage();
      CFDictionarySetValue(*(v16 + 712), v15, a3);
    }

    else
    {
      v17 = Value;
      if (Value)
      {
        if (a4)
        {
          CMBlockBufferAppendBufferReference(Value, a4, a5, a6, 0);
        }

        if (a7)
        {
          CMRemoveAttachment(v17, @"Preload_RequestID");
        }
      }
    }
  }
}

CFTypeID fpic_FindPreloadApplier(uint64_t a1, const void *a2, uint64_t a3)
{
  TypeID = CMBlockBufferGetTypeID();
  result = CFGetTypeID(a2);
  if (TypeID == result)
  {
    attachmentModeOut = 0;
    CMGetAttachment(a2, @"Preload_RequestID", &attachmentModeOut);
    result = FigCFEqual();
    if (result)
    {
      *(a3 + 8) = a1;
    }
  }

  return result;
}

void __fpic_customURLIssuePreloadCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 & 1) == 0 || (__fpic_customURLIssuePreloadCallback_block_invoke_cold_1())
  {
    fpic_HandlePreloadResponseData(*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), 0, 0, v2 & 1);
  }
}

BOOL fpic_FindEventStraddlingPrimaryMoment(uint64_t a1, __int128 *a2, void *a3, CMTime *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = *MEMORY[0x1E6960C70];
  *&v34.value = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v34.epoch = v9;
  v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v10)
  {
    fpic_FindEventStraddlingPrimaryMoment_cold_1();
    return 0;
  }

  v11 = v10;
  for (i = 0; ; ++i)
  {
    Count = *(DerivedStorage + 208);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      ValueAtIndex = 0;
      if (!a3)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v15 = fpic_UnwrapEvent();
    fpic_GetEventStartMoment(v15, &v31);
    v29 = v20;
    v30 = v9;
    v27 = 0uLL;
    v28 = 0;
    fpic_PredictEventDurationOnPrimary(a1, ValueAtIndex, v11, &v27);
    fpic_PredictEventGroupDurationOnPrimary(a1, ValueAtIndex, v11, 0, &v29, &v38);
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v38 = v31;
    v39 = v32;
    v40 = v33;
    v35 = v29;
    *&v36 = v30;
    fpic_AddTimeToMoment(&v38, &v35, &v24);
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v38 = v24;
    v39 = v25;
    v40 = v26;
    v35 = v27;
    *&v36 = v28;
    fpic_AddTimeToMoment(&v38, &v35, &v21);
    v16 = a2[1];
    v38 = *a2;
    v39 = v16;
    v40 = *(a2 + 4);
    v35 = v24;
    v36 = v25;
    v37 = v26;
    if (fpic_MomentGreaterThan(&v38, &v35))
    {
      v17 = a2[1];
      v35 = *a2;
      v36 = v17;
      v37 = *(a2 + 4);
      v38 = v21;
      v39 = v22;
      v40 = v23;
      if (fpic_MomentGreaterThan(&v38, &v35))
      {
        break;
      }
    }
  }

  v19 = a2[1];
  v38 = *a2;
  v39 = v19;
  v40 = *(a2 + 4);
  v35 = v24;
  v36 = v25;
  v37 = v26;
  fpic_SubtractMomentFromMoment(&v38, &v35, &v34);
  if (a3)
  {
LABEL_10:
    *a3 = ValueAtIndex;
  }

LABEL_11:
  if (a4)
  {
    *a4 = v34;
  }

  CFRelease(v11);
  return ValueAtIndex != 0;
}

void fpic_UnpauseInterstitialPlayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf[24] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(a1, cf);
  v20 = 1.0;
  v8 = *(DerivedStorage + 656);
  if (v8 && CFArrayGetCount(v8) > 0)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    v10 = 1.0;
    if (v9)
    {
      v9(PrimaryPlayerAndCopyWrapper, &v20);
      v10 = v20;
      if (v20 == 0.0 && *(DerivedStorage + 1146))
      {
        v10 = *(DerivedStorage + 880);
        v20 = v10;
      }

      if (v10 == 0.0)
      {
        if (*(CMBaseObjectGetDerivedStorage() + 1256))
        {
          v10 = *(DerivedStorage + 880);
          v20 = v10;
        }

        else
        {
          v10 = v20;
        }
      }
    }

    v11 = CMBaseObjectGetDerivedStorage();
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    if (ValueAtIndex)
    {
      v13 = (*(v11 + 88))(a1, a3, ValueAtIndex);
      if ((FigPlayerInterstitialEventGetRestrictions(v13) & 4) != 0 && v10 >= 1.0)
      {
        v10 = 1.0;
      }
    }

    v20 = v10;
    FigBaseObject = FigPlayerGetFigBaseObject(PrimaryPlayerAndCopyWrapper);
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v16)
    {
      v16(FigBaseObject, @"AllowVideoRenderingIfSendingVisualsToNero", *MEMORY[0x1E695E4C0]);
    }

    v17 = FigPlayerGetFigBaseObject(a2);
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v18)
    {
      v18(v17, @"AllowVideoRenderingIfSendingVisualsToNero", *MEMORY[0x1E695E4D0]);
    }

    fpic_SetRateWithReason(a2, 37, v20);
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    fpic_UnpauseInterstitialPlayer_cold_1();
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }
}

void fpic_UnregisterInterstitialItemNotifications(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (a3 || (FigBaseObject = FigPlaybackItemGetFigBaseObject(a2), (v6 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && (v6(FigBaseObject, @"Timebase", *MEMORY[0x1E695E480], &cf), cf))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t fpic_findEventAndItemIndexForItemOnQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 656));
  if (Count < 1)
  {
    result = 0;
    v20 = -1;
    v17 = -1;
    if (a4)
    {
LABEL_10:
      *a4 = v20;
    }
  }

  else
  {
    v12 = Count;
    v21 = a4;
    v22 = a5;
    v13 = 0;
    v14 = 1;
    while (1)
    {
      PerEventTrackingCount = fpic_GetPerEventTrackingCount(DerivedStorage, v13);
      if (PerEventTrackingCount >= 1)
      {
        break;
      }

LABEL_7:
      v14 = ++v13 < v12;
      if (v13 == v12)
      {
        result = 0;
        v20 = -1;
        v17 = -1;
        goto LABEL_9;
      }
    }

    v16 = PerEventTrackingCount;
    v17 = 0;
    while (1)
    {
      PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(DerivedStorage, v13, v17, @"PlaybackItem");
      if (fpic_UnwrapPlaybackItem(a1, PerAssetPerEventTrackedObject, a2) == a3)
      {
        break;
      }

      if (v16 == ++v17)
      {
        goto LABEL_7;
      }
    }

    if (v14)
    {
      v20 = v13;
    }

    else
    {
      v20 = -1;
    }

    result = 1;
LABEL_9:
    a4 = v21;
    a5 = v22;
    if (v21)
    {
      goto LABEL_10;
    }
  }

  if (a5)
  {
    *a5 = v17;
  }

  return result;
}

double fpic_CurrentResumptionOffset@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, CMTime *a6@<X5>, CMTime *a7@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v38, 0, sizeof(v38));
  v10 = *(DerivedStorage + 408);
  a7->epoch = *(DerivedStorage + 424);
  v11 = MEMORY[0x1E6960CC0];
  v24 = a7;
  *&a7->value = v10;
  v36 = *v11;
  v37 = *(v11 + 2);
  Count = CFArrayGetCount(*(DerivedStorage + 656));
  v13 = *(DerivedStorage + 456);
  v35.epoch = *(DerivedStorage + 472);
  result = 0.0;
  v33 = 0u;
  v34 = 0u;
  *&v35.value = v13;
  v31 = 0;
  v32 = 0;
  if (Count >= 1)
  {
    v15 = Count;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 656), v16);
      v20 = (*(DerivedStorage + 88))(a1, a3, ValueAtIndex);
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      fpic_GetEventStartMoment(v20, &v28);
      if (!v17)
      {
        if (v18)
        {
          v17 = 0;
        }

        else
        {
          v33 = v28;
          v34 = v29;
          v17 = v30;
          v18 = BYTE1(v30);
          v31 = *(&v30 + 2);
          v32 = HIWORD(v30);
        }
      }

      if (!a4)
      {
        if (v16)
        {
          *lhs = v28;
          *&lhs[16] = v29;
          v45 = v30;
          *rhs = v33;
          *&rhs[16] = v34;
          v42 = v31;
          v43 = v32;
          v40 = v17;
          v41 = v18;
          if (fpic_MomentsAreCloseWithTolerance(lhs, rhs, &kMomentsAreCloseThreshold))
          {
            goto LABEL_12;
          }
        }
      }

      if (!a5)
      {
        *lhs = v28;
        *&lhs[16] = v29;
        v45 = v30;
        *rhs = v33;
        *&rhs[16] = v34;
        v42 = v31;
        v43 = v32;
        v40 = v17;
        v41 = v18;
        if (!fpic_MomentsAreCloseWithTolerance(lhs, rhs, &kMomentsAreCloseThreshold))
        {
          goto LABEL_12;
        }
      }

      if (v16)
      {
        fpic_GetProjectedDuration(a1, ValueAtIndex, v16, a3);
        v38 = *lhs;
        v21 = *&lhs[16];
      }

      else
      {
        if (a2 || (*(DerivedStorage + 540) & 0x1D) != 1)
        {
          fpic_GetProjectedDuration(a1, ValueAtIndex, 0, a3);
          v38 = *lhs;
          fpic_AccumulateDuration(&v35, lhs);
          *lhs = v38;
          *rhs = *(DerivedStorage + 480);
          *&rhs[16] = *(DerivedStorage + 496);
          CMTimeAdd(&v38, lhs, rhs);
          goto LABEL_21;
        }

        fpic_GetCurrentlyPlayingEventPlayoutDuration();
        *lhs = v36;
        v21 = v37;
      }

      *&lhs[16] = v21;
      fpic_AccumulateDuration(&v35, lhs);
LABEL_21:
      FigPlayerInterstitialEventGetResumptionOffset(v20, lhs);
      if ((lhs[12] & 0x11) == 1)
      {
        FigPlayerInterstitialEventGetResumptionOffset(v20, lhs);
        v38 = *lhs;
      }

      *lhs = v38;
      *&result = fpic_AccumulateDuration(v24, lhs).n128_u64[0];
LABEL_12:
      ++v16;
    }

    while (v15 != v16);
  }

  if (a6)
  {
    result = *&v35.value;
    *a6 = v35;
  }

  return result;
}

double fpic_clearIntendedCurrentItemMoment()
{
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage + 936;
  if (*(DerivedStorage + 968) || *(DerivedStorage + 969))
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v4 = 0u;
    v5 = 0u;
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

__n128 fpic_clearIntentionToSeekIntoEventState()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 896))
  {
    v1 = dword_1EAF178D0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 896) = 0;
  *(DerivedStorage + 904) = 0;
  v3 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 912) = *MEMORY[0x1E6960C70];
  v5 = *(v3 + 16);
  *(DerivedStorage + 928) = v5;
  *(DerivedStorage + 976) = result;
  *(DerivedStorage + 992) = v5;
  *(DerivedStorage + 1000) = result;
  *(DerivedStorage + 1016) = v5;
  *(DerivedStorage + 1024) = 0;
  *(DerivedStorage + 1028) = 0;
  return result;
}

uint64_t fpic_CopyEvents(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v5 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpic_CopyEvents_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = a1;
    block[5] = a2;
    block[6] = DerivedStorage;
    dispatch_sync(v5, block);
    if (*a2)
    {
      return 0;
    }

    else
    {
      return 4294954510;
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t fpic_CopyCurrentEvent(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *CMBaseObjectGetDerivedStorage();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __fpic_CopyCurrentEvent_block_invoke;
  v5[3] = &unk_1E7482510;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t fpic_SetEvents(uint64_t a1, const __CFArray *a2)
{
  if (a1)
  {
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return fpic_SetEventsInternal(a1, a2, 1);
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t fpic_RemoveEvents(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3810000000;
  v23 = "";
  v24 = *MEMORY[0x1E6960C70];
  v25 = *(MEMORY[0x1E6960C70] + 16);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (a1)
  {
    v5 = DerivedStorage;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (v13[3] && (v6 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
    {
      v7 = *v5;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __fpic_RemoveEvents_block_invoke;
      block[3] = &unk_1E7495160;
      block[8] = a2;
      block[9] = v5;
      block[4] = &v26;
      block[5] = &v12;
      block[10] = a1;
      block[11] = v6;
      block[6] = &v16;
      block[7] = &v20;
      dispatch_sync(v7, block);
      fpic_DequeueItemsFromInterstitialPlayer(a1, v13[3], v6);
      if (*(v17 + 24))
      {
        v30 = *(v21 + 2);
        v31 = v21[6];
        fpic_cancelCurrentEventPlaybackWithReason(a1, &v30, 1, 0);
      }

      if (v27[3] >= 1)
      {
        fpic_PostNotification(a1, @"fpiEventsDidChange", 0);
      }

      v8 = fpic_ServiceCurrentEvent(a1, MEMORY[0x1E6960C70]);
      CFRelease(v6);
    }

    else
    {
      v8 = FigSignalErrorAtGM();
    }

    v9 = v13[3];
    if (v9)
    {
      CFRelease(v9);
    }

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v8 = FigSignalErrorAtGM();
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  return v8;
}

void sub_1967CA0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t fpic_CancelCurrentEventPlayback(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  fpic_cancelCurrentEventPlaybackWithReason(a1, &v5, 0, 0);
  v3 = MEMORY[0x1E6960C70];

  return fpic_ServiceCurrentEvent(a1, v3);
}

uint64_t fpic_SetRemoteEvents(uint64_t a1, const __CFArray *a2)
{
  value[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v5 = DerivedStorage;
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v9 = Mutable;
      v10 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v10)
      {
        v11 = v10;
        if (a2 && (Count = CFArrayGetCount(a2), Count >= 1))
        {
          v13 = Count;
          v14 = 0;
          while (1)
          {
            value[0] = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(a2, v14);
            v16 = (*(v5 + 112))(a1, v11, ValueAtIndex, 0, value);
            if (v16)
            {
              break;
            }

            CFArrayAppendValue(v9, value[0]);
            if (value[0])
            {
              CFRelease(value[0]);
            }

            if (v13 == ++v14)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
LABEL_16:
          v16 = fpic_SetEventsInternal(a1, v9, 0);
        }

        v17 = v16;
        CFRelease(v11);
      }

      else
      {
        fpic_SetRemoteEvents_cold_1(value);
        v17 = LODWORD(value[0]);
      }

      CFRelease(v9);
    }

    else
    {
      fpic_SetRemoteEvents_cold_2(value);
      return LODWORD(value[0]);
    }

    return v17;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

void fpic_WrappedPlayerDidChange(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v2 = CFRetain(*(DerivedStorage + 32));
    v3 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpic_WrappedPlayerDidChange_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void fpic_SetActionAtEnd(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = *DerivedStorage;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __fpic_SetActionAtEnd_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = DerivedStorage;
    v5[5] = a2;
    dispatch_sync(v4, v5);
  }
}

void fpic_WillSeekTo(uint64_t a1, __int128 *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fpic_WillSeekTo_block_invoke;
  block[3] = &__block_descriptor_84_e5_v8__0l;
  v10 = a3;
  v12 = *(a2 + 2);
  v11 = *a2;
  block[4] = DerivedStorage;
  block[5] = a1;
  block[6] = v7;
  dispatch_sync(v8, block);
  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t fpic_CopyPlayableEventsForItem(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  v10 = v9;
  if (a2 && a3 && a4 && v9)
  {
    v11 = *DerivedStorage;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __fpic_CopyPlayableEventsForItem_block_invoke;
    v16[3] = &unk_1E74950E8;
    v16[4] = &v17;
    v16[5] = DerivedStorage;
    v16[6] = a3;
    v16[7] = a2;
    v16[8] = a1;
    v16[9] = v10;
    dispatch_sync(v11, v16);
    v12 = 0;
    v13 = v18;
    *a4 = v18[3];
    v13[3] = 0;
  }

  else
  {
    v12 = FigSignalErrorAtGM();
  }

  v14 = v18[3];
  if (v14)
  {
    CFRelease(v14);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  _Block_object_dispose(&v17, 8);
  return v12;
}

void sub_1967CA7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpic_InitiateSeekIntoEvent(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, int a6, int a7)
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x4810000000;
  v37 = 0u;
  v38 = 0u;
  v36[3] = "";
  v39 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v15 && v41[3])
  {
    v16 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpic_InitiateSeekIntoEvent_block_invoke;
    block[3] = &unk_1E7495188;
    block[8] = a2;
    block[9] = DerivedStorage;
    v28 = *a3;
    v17 = *(a3 + 2);
    v30 = *a4;
    v18 = *a5;
    v19 = *(a5 + 2);
    v31 = *(a4 + 2);
    v33 = v19;
    v32 = v18;
    v34 = a7;
    v35 = a6;
    v29 = v17;
    block[10] = v15;
    block[4] = v36;
    block[5] = &v44;
    block[6] = &v40;
    block[7] = a1;
    dispatch_sync(v16, block);
    v20 = fpic_DequeueItemsFromInterstitialPlayer(a1, v41[3], v15);
    *(v45 + 6) = v20;
    if (!v20)
    {
      v21 = fpic_ServiceCurrentEvent(a1, MEMORY[0x1E6960C70]);
      *(v45 + 6) = v21;
      v22 = *DerivedStorage;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __fpic_InitiateSeekIntoEvent_block_invoke_217;
      v26[3] = &unk_1E748B8C8;
      v26[6] = a2;
      v26[7] = DerivedStorage;
      v26[4] = v36;
      v26[5] = a1;
      dispatch_sync(v22, v26);
    }
  }

  else
  {
    *(v45 + 6) = FigSignalErrorAtGM();
  }

  v23 = v41[3];
  if (v23)
  {
    CFRelease(v23);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v24 = *(v45 + 6);
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  return v24;
}

void sub_1967CAAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 168), 8);
  _Block_object_dispose((v39 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t fpic_ObserveSeekOutOfEvent(uint64_t a1, int a2)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v5)
  {
    if (v14[3])
    {
      v6 = *DerivedStorage;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __fpic_ObserveSeekOutOfEvent_block_invoke;
      v11[3] = &unk_1E74951B0;
      v11[6] = a1;
      v11[7] = DerivedStorage;
      v12 = a2;
      v11[8] = v5;
      v11[4] = &v17;
      v11[5] = &v13;
      dispatch_sync(v6, v11);
      v7 = fpic_DequeueItemsFromInterstitialPlayer(a1, v14[3], v5);
    }

    else
    {
      v7 = FigSignalErrorAtGM();
    }

    *(v18 + 6) = v7;
    CFRelease(v5);
  }

  else
  {
    *(v18 + 6) = FigSignalErrorAtGM();
  }

  v8 = v14[3];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(v18 + 6);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v9;
}

void sub_1967CAD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void fpic_GetCurrentTimeInCurrentEvent(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3810000000;
  v15 = "";
  v16 = *MEMORY[0x1E6960C70];
  v17 = *(MEMORY[0x1E6960C70] + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = v7;
  if (a2 && v7)
  {
    v9 = *DerivedStorage;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __fpic_GetCurrentTimeInCurrentEvent_block_invoke;
    v11[3] = &unk_1E7494FB8;
    v11[4] = &v12;
    v11[5] = a1;
    v11[6] = v8;
    v11[7] = DerivedStorage;
    v11[8] = a2;
    dispatch_sync(v9, v11);
  }

  else if (!v7)
  {
    goto LABEL_5;
  }

  CFRelease(v8);
LABEL_5:
  v10 = v13;
  *a3 = *(v13 + 2);
  *(a3 + 16) = v10[6];
  _Block_object_dispose(&v12, 8);
}

void sub_1967CAE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpic_GetCurrentEventSkippableState()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *DerivedStorage;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __fpic_GetCurrentEventSkippableState_block_invoke;
  v4[3] = &unk_1E7482510;
  v4[4] = &v5;
  v4[5] = DerivedStorage;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t fpic_CancelCurrentEventPlaybackWithReason(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = *CMBaseObjectGetDerivedStorage();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fpic_CancelCurrentEventPlaybackWithReason_block_invoke;
  block[3] = &unk_1E7482510;
  block[4] = &v13;
  block[5] = a1;
  dispatch_sync(v4, block);
  if (!v14[3])
  {
    v10 = 0;
    goto LABEL_10;
  }

  v5 = fpic_UnwrapEvent();
  v6 = FigPlayerInterstitialEventCopyIdentifier(v5);
  if (dword_1EAF178D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  fpic_cancelCurrentEventPlaybackWithReason(a1, MEMORY[0x1E6960C70], 0, a2);
  if (!FigCFEqual())
  {
    goto LABEL_7;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    FigCFDictionarySetValue();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(Mutable);
LABEL_7:
    v9 = fpic_ServiceCurrentEvent(a1, MEMORY[0x1E6960C70]);
    goto LABEL_8;
  }

  v9 = FigSignalErrorAtGM();
LABEL_8:
  v10 = v9;
  if (v6)
  {
    CFRelease(v6);
  }

LABEL_10:
  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_1967CB224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpic_SetRemotePreloads(uint64_t a1, uint64_t a2)
{
  block[16] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpic_SetRemotePreloadsInternal_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = a2;
    block[5] = DerivedStorage;
    block[6] = a1;
    dispatch_sync(v7, block);
    return 0;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

CFTypeRef fpic_CopyCurrentEventSkipControlLabel()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v1 = *DerivedStorage;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __fpic_CopyCurrentEventSkipControlLabel_block_invoke;
  v5[3] = &unk_1E7482510;
  v5[4] = &v6;
  v5[5] = DerivedStorage;
  dispatch_sync(v1, v5);
  v2 = v7[3];
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1967CB54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpic_SetEventsInternal(uint64_t a1, CFArrayRef a2, char a3)
{
  v55 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3810000000;
  v22 = "";
  v23 = *MEMORY[0x1E6960C70];
  v24 = *(MEMORY[0x1E6960C70] + 16);
  v25 = 0;
  if (!v34[3] || (v8 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    *(v50 + 6) = FigSignalErrorAtGM();
    goto LABEL_21;
  }

  if (a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = CFArrayCreate(v7, 0, 0, MEMORY[0x1E695E9C0]);
    a2 = v9;
    if (!v9)
    {
      v13 = FigSignalErrorAtGM();
      v9 = 0;
      goto LABEL_18;
    }
  }

  v10 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fpic_SetEventsInternal_block_invoke;
  block[3] = &unk_1E7495110;
  block[12] = a2;
  block[13] = a1;
  v18 = a3;
  block[14] = v8;
  block[15] = DerivedStorage;
  block[4] = &v49;
  block[5] = &v41;
  block[6] = &v37;
  block[7] = &v45;
  block[8] = &v33;
  block[9] = &v29;
  block[10] = &v25;
  block[11] = &v19;
  dispatch_sync(v10, block);
  v11 = fpic_DequeueItemsFromInterstitialPlayer(a1, v34[3], v8);
  *(v50 + 6) = v11;
  if (v11)
  {
    goto LABEL_19;
  }

  if (*(v30 + 24))
  {
    v53 = *(v20 + 2);
    v54 = v20[6];
    fpic_cancelCurrentEventPlaybackWithReason(a1, &v53, 1, 0);
  }

  else if (*(v26 + 24))
  {
    CFArrayRemoveAllValues(v34[3]);
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fpic_RescheduleCurrentEvents(a1, v34 + 3, v8);
    fpic_DequeueItemsFromInterstitialPlayer(a1, v34[3], v8);
  }

  if (v42[3] > 0 || v46[3] > 0 || v38[3] >= 1)
  {
    fpic_PostNotification(a1, @"fpiEventsDidChange", 0);
  }

  v13 = fpic_ServiceCurrentEvent(a1, MEMORY[0x1E6960C70]);
LABEL_18:
  *(v50 + 6) = v13;
LABEL_19:
  CFRelease(v8);
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_21:
  v14 = v34[3];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(v50 + 6);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  return v15;
}

void sub_1967CBB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

uint64_t fpic_setEventsInAddOrderForPlayerItem(uint64_t a1, __CFString *a2, const __CFArray *a3, uint64_t a4, void *a5, void *a6, void *a7, __CFArray *a8, _BYTE *a9, _BYTE *a10, uint64_t a11)
{
  v108 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    Count = CFArrayGetCount(a3);
  }

  else
  {
    Count = 0;
  }

  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v89 = 0;
  v88 = 0;
  v90 = *MEMORY[0x1E6960C70];
  v91 = *(MEMORY[0x1E6960C70] + 16);
  if (a2)
  {
    v17 = fpic_doesPlayerItemWrapperBelongToCurrentlyEngagedPrimaryItem(a1, a2, a4) != 0;
  }

  else
  {
    v17 = 1;
  }

  v82 = v17;
  v18 = *(DerivedStorage + 656);
  if (v18 && CFArrayGetCount(v18))
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v20 = (*(DerivedStorage + 88))(a1, a4, ValueAtIndex);
    fpic_GetEventStartMoment(v20, &v105);
    v90 = v105;
    v21 = *(&v106 + 1);
    v91 = v106;
    LODWORD(v67) = v107;
    HIDWORD(v67) = BYTE1(v107);
    v88 = *(&v107 + 2);
    v89 = HIWORD(v107);
    v22 = CMBaseObjectGetDerivedStorage();
    if (*(v22 + 376) | *(v22 + 377))
    {
      v94 = *(DerivedStorage + 376);
      v23 = *(DerivedStorage + 360);
      v92 = *(DerivedStorage + 344);
      v93 = v23;
    }

    else
    {
      fpic_CurrentItemMoment(*(DerivedStorage + 160), &v92);
    }
  }

  else
  {
    v67 = 0;
    v21 = 0x7FEFFFFFFFFFFFFFLL;
  }

  v83 = a3;
  if (v82)
  {
    theArray = *(DerivedStorage + 200);
    goto LABEL_19;
  }

  v24 = CMBaseObjectGetDerivedStorage();
  if (CFDictionaryContainsKey(*(v24 + 184), a2))
  {
    goto LABEL_18;
  }

  v25 = a7;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v27 = Mutable;
    CFDictionaryAddValue(*(v24 + 184), a2, Mutable);
    CFRelease(v27);
    a7 = v25;
LABEL_18:
    v28 = CMBaseObjectGetDerivedStorage();
    theArray = CFDictionaryGetValue(*(v28 + 184), a2);
    a3 = v83;
    goto LABEL_19;
  }

  if (!fpic_setEventsInAddOrderForPlayerItem_cold_1(&v105))
  {
    return v105;
  }

  theArray = 0;
  a3 = v83;
LABEL_19:
  v29 = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    range = CFArrayGetCount(a3);
  }

  else
  {
    range = 0;
  }

  LOBYTE(v85[0]) = 0;
  v75 = a1;
  v68 = DerivedStorage;
  v69 = a2;
  v84 = a4;
  if (a2 && !fpic_doesPlayerItemWrapperBelongToCurrentlyEngagedPrimaryItem(a1, a2, a4))
  {
    v32 = CMBaseObjectGetDerivedStorage();
    Value = CFDictionaryGetValue(*(v32 + 184), a2);
    v31 = 0;
    if (!Value)
    {
      goto LABEL_57;
    }

LABEL_30:
    v66 = a7;
    v33 = CFArrayGetCount(Value);
    if (v33 < 1)
    {
      v78 = 0;
    }

    else
    {
      v78 = 0;
      v34 = (v29 + 88);
      v35 = v31 ^ 1;
      v36 = v33 + 1;
      v70 = v31;
      v37 = v83;
      do
      {
        v38 = CFArrayGetValueAtIndex(Value, v36 - 2);
        v39 = (*v34)(a1, v84, v38);
        v109.location = 0;
        v109.length = range;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v37, v109, v38);
        if (FirstIndexOfValue == -1)
        {
          v41 = v35;
        }

        else
        {
          v41 = 1;
        }

        if (v41)
        {
          v42 = v70;
          if (FirstIndexOfValue != -1)
          {
            v42 = 1;
          }

          if ((v42 & 1) == 0)
          {
            if (dword_1EAF178D0)
            {
              v98 = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v44 = v98;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
              {
                v45 = v44;
              }

              else
              {
                v45 = v44 & 0xFFFFFFFE;
              }

              if (v45)
              {
                LODWORD(v99[0]) = 136315906;
                *(v99 + 4) = "fpic_removeEventsThatAreNotPartOfIncomingEventsForPlayerItem";
                WORD6(v99[0]) = 2048;
                *(v99 + 14) = v75;
                WORD3(v99[1]) = 2112;
                *(&v99[1] + 1) = v38;
                LOWORD(v100) = 2048;
                *(&v100 + 2) = v69;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              a1 = v75;
              v37 = v83;
            }

            CFArrayRemoveValueAtIndex(Value, v36 - 2);
          }
        }

        else
        {
          fpic_RemoveEventIfNotPlaying(a1, v38, a8, v85);
          if (a11 && a9 && LOBYTE(v85[0]))
          {
            *a9 = 1;
            FigPlayerInterstitialEventGetResumptionOffset(v39, &v105);
            *a11 = v105;
            *(a11 + 16) = v106;
          }

          ++v78;
        }

        --v36;
      }

      while (v36 > 1);
    }

    a4 = v84;
    if (v66)
    {
      *v66 += v78;
    }

    goto LABEL_57;
  }

  if (!a8 || !a9 || !a11)
  {
    result = FigSignalErrorAtGM();
    v46 = theArray;
    if (result)
    {
      return result;
    }

    goto LABEL_58;
  }

  Value = *(v29 + 200);
  v31 = 1;
  if (Value)
  {
    goto LABEL_30;
  }

LABEL_57:
  v46 = theArray;
LABEL_58:
  if (v46)
  {
    v79 = CFArrayGetCount(v46);
  }

  else
  {
    v79 = 0;
  }

  v47 = v83;
  if (Count < 1)
  {
    LOBYTE(v71) = 0;
    v73 = 0;
    v49 = 0;
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v73 = 0;
    v71 = 0;
    v50 = (DerivedStorage + 88);
    rangea = *MEMORY[0x1E695E4C0];
    v74 = *MEMORY[0x1E695E4D0];
    v63 = DerivedStorage + 604;
    do
    {
      v51 = CFArrayGetValueAtIndex(v47, v48);
      v110.location = 0;
      v110.length = v79;
      v52 = CFArrayGetFirstIndexOfValue(v46, v110, v51);
      v53 = (*v50)(a1, a4, v51);
      *type = rangea;
      v86 = 0;
      memset(v85, 0, sizeof(v85));
      fpic_EventDateTimeMoment(v53, v85);
      if (v52 == -1)
      {
        v104 = 0;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        memset(v99, 0, sizeof(v99));
        CFArrayAppendValue(v46, v51);
        if (dword_1EAF178D0)
        {
          v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          a1 = v75;
          a4 = v84;
        }

        v59 = 0;
        ++v49;
        v55 = v53;
      }

      else
      {
        v54 = CFArrayGetValueAtIndex(v46, v52);
        v55 = (*v50)(a1, a4, v54);
        result = FigPlayerInterstitialEventMerge(v55, v53, type);
        if (result)
        {
          return result;
        }

        if (*type == v74)
        {
          v104 = 0;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          memset(v99, 0, sizeof(v99));
          if (dword_1EAF178D0)
          {
            v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            a1 = v75;
            a4 = v84;
          }

          ++v73;
        }

        v59 = v55;
      }

      if (!v82)
      {
        goto LABEL_88;
      }

      if (FigPlayerInterstitialEventIsPreRoll(v55))
      {
        if ((v68[1076] & 1) == 0 && (v68[616] & 1) == 0)
        {
          fpic_GatePrimaryPlaybackAtCurrentEvent(a1, a4);
          fpic_SwapToInterstitialPlayerLayerIfPrerollDetected(a1, a4);
        }

        if (v68[1143])
        {
          v105 = *v63;
          *&v106 = *(v63 + 16);
          FigPlayerInterstitialEventSetStartTime(v55, &v105);
          fpic_EnsureEventHasResolvedProperties();
        }
      }

      v60 = v67 == 0;
      if (!v55)
      {
        v60 = 1;
      }

      if (v60 || v55 == v59)
      {
LABEL_88:
        v47 = v83;
      }

      else
      {
        fpic_GetEventStartMoment(v55, &v95);
        v99[0] = v95;
        v99[1] = v96;
        *&v100 = v97;
        v105 = v90;
        *&v106 = v91;
        *(&v107 + 2) = v88;
        HIWORD(v107) = v89;
        *(&v106 + 1) = v21;
        LOBYTE(v107) = v67;
        BYTE1(v107) = BYTE4(v67);
        v47 = v83;
        if (fpic_MomentGreaterThan(&v105, v99))
        {
          v105 = v92;
          v106 = v93;
          v107 = v94;
          v99[0] = v95;
          v99[1] = v96;
          *&v100 = v97;
          v61 = fpic_MomentGreaterThan(&v105, v99);
          v62 = v71;
          if (!v61)
          {
            v62 = 1;
          }

          v71 = v62;
        }
      }

      v46 = theArray;
      ++v48;
    }

    while (Count != v48);
  }

  if (v82)
  {
    fpic_SortEventsInAddOrder();
  }

  if (fpic_UnwrapPlaybackItem(a1, v69, a4))
  {
    fpic_UpdatePlaybackItemEventList();
  }

  if (a5)
  {
    *a5 += v49;
  }

  if (a6)
  {
    *a6 += v73;
  }

  result = 0;
  if (a10)
  {
    *a10 = v71;
  }

  return result;
}

void fpic_RescheduleCurrentEvents(uint64_t a1, CFTypeRef *a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  Copy = FigCFArrayCreateCopy();
  if (dword_1EAF178D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  fpic_ResetCurrentEventList(a1, a3, a2);
  if (Copy)
  {
    Count = CFArrayGetCount(Copy);
    if (Count >= 1)
    {
      v9 = Count + 1;
      do
      {
        CFArrayGetValueAtIndex(Copy, v9 - 2);
        fpic_ForgetPastEvent();
        --v9;
      }

      while (v9 > 1);
    }

    CFRelease(Copy);
  }
}

uint64_t fpic_doesPlayerItemWrapperBelongToCurrentlyEngagedPrimaryItem(uint64_t a1, __CFString *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = fpic_UnwrapPlaybackItem(a1, a2, a3);
  if (result)
  {
    return *(DerivedStorage + 160) == result;
  }

  return result;
}

void fpic_RemoveEventIfNotPlaying(uint64_t a1, const void *a2, __CFArray *a3, char *a4)
{
  if (fpic_GetCurrentlyPlayingEvent() == a2)
  {
    v8 = 1;
  }

  else
  {
    fpic_RemoveEvent(a1, a2, a3, 1, 0, 1);
    v8 = 0;
  }

  *a4 = v8;
}

void fpic_cancelCurrentEventPlaybackWithReason(uint64_t a1, __int128 *a2, char a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3810000000;
  v33 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v32 = "";
  v34 = v9;
  if (a1)
  {
    v10 = DerivedStorage;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v48[3] = Mutable;
    if (Mutable && (v12 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
    {
      v13 = *v10;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __fpic_cancelCurrentEventPlaybackWithReason_block_invoke;
      block[3] = &unk_1E7495138;
      block[10] = a1;
      block[11] = a4;
      v26 = *a2;
      v27 = *(a2 + 2);
      v28 = a3;
      block[12] = v12;
      block[13] = v10;
      block[4] = &v47;
      block[5] = &v35;
      block[6] = &v29;
      block[7] = &v39;
      block[8] = &v43;
      block[9] = &v51;
      dispatch_sync(v13, block);
      if (!*(v40 + 24) || (v14 = v36[3], v15 = *(v44 + 6), v23 = *(v30 + 2), v24 = v30[6], v21 = *(v30 + 2), v22 = v30[6], v19 = *(v30 + 2), v20 = v30[6], v16 = fpic_InitiateSeekIntoEvent(a1, v14, &v23, &v21, &v19, v15, 5), (*(v52 + 6) = v16) == 0))
      {
        v17 = fpic_DequeueItemsFromInterstitialPlayer(a1, v48[3], v12);
        *(v52 + 6) = v17;
      }

      CFRelease(v12);
    }

    else
    {
      *(v52 + 6) = FigSignalErrorAtGM();
    }

    v18 = v48[3];
    if (v18)
    {
      CFRelease(v18);
    }
  }

  else
  {
    FigSignalErrorAtGM();
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
}

void sub_1967CCD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 240), 8);
  _Block_object_dispose((v38 - 208), 8);
  _Block_object_dispose((v38 - 176), 8);
  _Block_object_dispose((v38 - 144), 8);
  _Block_object_dispose((v38 - 112), 8);
  _Unwind_Resume(a1);
}

CFIndex fpic_RescheduleEvents(int a1, CFArrayRef theArray)
{
  v3 = 0;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (result = CFArrayGetCount(theArray); v3 < result; result = 0)
  {
    FigCFArrayGetValueAtIndex();
    fpic_ForgetPastEvent();
    ++v3;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return result;
}

uint64_t fpic_preloadCompFunc(uint64_t a1, uint64_t a2)
{
  started = FigPlayerInterstitialPreloadCopyStartDate(a1);
  v5 = FigPlayerInterstitialPreloadCopyStartDate(a2);
  v6 = MEMORY[0x19A8CCD90](started);
  v7 = v6 + FigPlayerInterstitialPreloadGetTriggerOffset(a1);
  v8 = MEMORY[0x19A8CCD90](v5);
  v9 = v8 + FigPlayerInterstitialPreloadGetTriggerOffset(a2);
  if (v7 < v9)
  {
    v10 = -1;
    if (!started)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v7 <= v9)
  {
    v10 = 0;
    if (!started)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = 1;
  if (started)
  {
LABEL_8:
    CFRelease(started);
  }

LABEL_9:
  if (v5)
  {
    CFRelease(v5);
  }

  return v10;
}

uint64_t __fpic_getTimerQueue_block_invoke()
{
  result = FigDispatchQueueCreateWithPriority();
  fpic_getTimerQueue_sTimerQueue = result;
  return result;
}

uint64_t __fpic_getNotificationQueue_block_invoke()
{
  result = FigDispatchQueueCreateWithPriority();
  fpic_getNotificationQueue_sNotificationQueue = result;
  return result;
}

void fpic_eventItemReadyStateChange(uint64_t a1, uint64_t a2, char a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  v10 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fpic_eventItemReadyStateChange_block_invoke;
  block[3] = &__block_descriptor_69_e5_v8__0l;
  block[4] = a1;
  block[5] = v9;
  block[6] = a2;
  block[7] = DerivedStorage;
  v13 = a3;
  v12 = a4;
  dispatch_sync(v10, block);
  if (v9)
  {
    CFRelease(v9);
  }
}

void fpic_NoticeRateChange(uint64_t a1, uint64_t a2)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v22 = 0.0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(a1, &v21);
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  v7 = (*(DerivedStorage + 72))(a1, v6, *(DerivedStorage + 48));
  Float32IfPresent = FigCFDictionaryGetFloat32IfPresent();
  v20 = 0;
  Mutable = 0;
  FigCFDictionaryGetInt32IfPresent();
  v9 = 0;
  if (Float32IfPresent && v22 < 0.0)
  {
    v10 = *(CMBaseObjectGetDerivedStorage() + 884);
    CurrentlyPlayingEvent = fpic_GetCurrentlyPlayingEvent();
    if ((PrimaryPlayerAndCopyWrapper == a2 || v7 == a2) && (v10 <= 2.0 && v10 >= 0.0 || !CurrentlyPlayingEvent && !*(CMBaseObjectGetDerivedStorage() + 896)))
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (dword_1EAF178D0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      fpic_RescheduleCurrentEvents(a1, &Mutable, v6);
      v9 = Mutable;
      fpic_DequeueItemsFromInterstitialPlayer(a1, Mutable, v6);
      fpic_UngatePrimaryBuffering();
      fpic_UngatePrimaryPlayback(a1);
      v15 = CMBaseObjectGetDerivedStorage();
      *(v15 + 256) = 0;
      *(v15 + 296) = 0;
      v16 = MEMORY[0x1E6960C70];
      v17 = *MEMORY[0x1E6960C70];
      *(v15 + 432) = *MEMORY[0x1E6960C70];
      v18 = *(v16 + 16);
      *(v15 + 448) = v18;
      *(v15 + 480) = v17;
      *(v15 + 496) = v18;
      *(v15 + 504) = v17;
      *(v15 + 520) = v18;
      *(v15 + 1144) = 0;
      *(v15 + 644) = v18;
      *(v15 + 628) = v17;
      *(v15 + 1147) = 0;
    }

    else
    {
      v9 = 0;
    }

    if (PrimaryPlayerAndCopyWrapper == a2)
    {
      *(DerivedStorage + 1145) = 0;
    }
  }

  if (Float32IfPresent && v22 > 0.0 && PrimaryPlayerAndCopyWrapper == a2 && v20 != 43)
  {
    LODWORD(cf[0]) = 0;
    if (v7)
    {
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v12 || (v12(v7, cf), *cf == 0.0))
      {
        v13 = CMBaseObjectGetDerivedStorage();
        if (*(v13 + 376) | *(v13 + 377))
        {
          fpic_UnpauseInterstitialPlayer(a1, v7, v6);
        }
      }
    }

    *(DerivedStorage + 880) = v22;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void fpic_HandleAirPlayVideoActiveDidChange(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(a1, &v21);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = FigCFWeakReferenceHolderCopyReferencedObject();
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  if (v14[3])
  {
    if (PrimaryPlayerAndCopyWrapper == a2)
    {
      v6 = *DerivedStorage;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __fpic_HandleAirPlayVideoActiveDidChange_block_invoke;
      block[3] = &unk_1E74951F8;
      block[8] = DerivedStorage;
      block[9] = a1;
      block[4] = v11;
      block[5] = &v13;
      block[6] = &v17;
      block[7] = PrimaryPlayerAndCopyWrapper;
      dispatch_sync(v6, block);
    }

    v7 = v18[3];
    if (v7)
    {
      fpic_DequeueItemsFromInterstitialPlayer(a1, v7, v14[3]);
    }
  }

  else
  {
    FigSignalErrorAtGM();
  }

  v8 = v18[3];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = v14[3];
  if (v9)
  {
    CFRelease(v9);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void fpic_HandleExternalPlaybackInitiatedCancelInterstitialEvent(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (v5)
  {
    v6 = v5;
    if ((*(DerivedStorage + 72))(a1, v5, *(DerivedStorage + 48)) == a2)
    {
      FigCFDictionaryGetValueIfPresent();
      v7 = *DerivedStorage;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __fpic_HandleExternalPlaybackInitiatedCancelInterstitialEvent_block_invoke;
      v8[3] = &unk_1E747EC60;
      v8[4] = &v9;
      v8[5] = a1;
      v8[6] = v13;
      dispatch_sync(v7, v8);
      if (*(v10 + 24))
      {
        fpic_CancelCurrentEventPlaybackWithReason(a1, @"CancelCurrentEventReasonSkipControlAction");
      }
    }

    CFRelease(v6);
  }

  else
  {
    FigSignalErrorAtGM();
  }

  _Block_object_dispose(&v9, 8);
}

void sub_1967CDE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void fpic_mediaSelectionsChanged(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  v6 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fpic_mediaSelectionsChanged_block_invoke;
  block[3] = &__block_descriptor_64_e5_v8__0l;
  block[4] = a2;
  block[5] = DerivedStorage;
  block[6] = a1;
  block[7] = v5;
  dispatch_sync(v6, block);
  if (v5)
  {
    CFRelease(v5);
  }
}

void fpic_checkForSnappedTimeToPauseBuffering(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *DerivedStorage;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __fpic_checkForSnappedTimeToPauseBuffering_block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = DerivedStorage;
  v4[5] = a1;
  dispatch_sync(v3, v4);
}

void fpic_checkForSnapOut(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *DerivedStorage;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __fpic_checkForSnapOut_block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = DerivedStorage;
  v4[5] = a1;
  dispatch_sync(v3, v4);
}

void fpic_schedulePrimaryToInterstitialTransition(uint64_t a1, __int128 *a2)
{
  v4 = *CMBaseObjectGetDerivedStorage();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __fpic_schedulePrimaryToInterstitialTransition_block_invoke;
  v5[3] = &__block_descriptor_64_e5_v8__0l;
  v5[4] = a1;
  v7 = *(a2 + 2);
  v6 = *a2;
  dispatch_sync(v4, v5);
}

void fpic_HandleSeekDidFinishNotification(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v24 = -1;
  v22 = *MEMORY[0x1E6960C70];
  v23 = *(MEMORY[0x1E6960C70] + 16);
  v8 = FigCFEqual();
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (a3)
  {
    v9 = v8;
    v10 = CFGetTypeID(a3);
    if (v10 == CFDictionaryGetTypeID())
    {
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetCMTimeIfPresent();
      if (v24 >= 1)
      {
        v11 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v11)
        {
          v12 = *DerivedStorage;
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __fpic_HandleSeekDidFinishNotification_block_invoke;
          v13[3] = &unk_1E7495220;
          v14 = v24;
          v15 = v22;
          v16 = v23;
          v13[4] = &v18;
          v13[5] = DerivedStorage;
          v13[6] = a1;
          v13[7] = v11;
          v17 = v9;
          dispatch_sync(v12, v13);
          if (*(v19 + 24))
          {
            fpic_EnsurePrimaryWillResumeBuffering(a1, v11);
          }

          if (a4 && (BYTE12(v22) & 0x1D) == 1)
          {
            *a4 = v22;
            *(a4 + 16) = v23;
          }

          CFRelease(v11);
        }

        else
        {
          FigSignalErrorAtGM();
        }
      }
    }
  }

  _Block_object_dispose(&v18, 8);
}

void sub_1967CE320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void fpic_EnsureCurrentEventsHaveResolvedProperties(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      Count = *(DerivedStorage + 656);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (v5 >= Count)
      {
        break;
      }

      CFArrayGetValueAtIndex(*(DerivedStorage + 656), v5);
      fpic_EnsureEventHasResolvedProperties();
      if (v8)
      {
        v6 = 1;
      }

      ++v5;
    }

    if (v6)
    {
      fpic_EnsureCurrentEventsHaveResolvedProperties_cold_1(DerivedStorage, a1);
    }

    CFRelease(v4);
  }

  else
  {
    fpic_EnsureCurrentEventsHaveResolvedProperties_cold_2();
  }
}

void fpic_HandleEndTimeChangedNotification(uint64_t a1, uint64_t a2)
{
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = *MEMORY[0x1E6960C70];
  v16 = *(MEMORY[0x1E6960C70] + 16);
  FigCFDictionaryGetCMTimeIfPresent();
  v5 = *DerivedStorage;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __fpic_HandleEndTimeChangedNotification_block_invoke;
  v6[3] = &unk_1E7495248;
  v6[6] = DerivedStorage;
  v7 = v15;
  v8 = v16;
  v9 = 0;
  v10 = BYTE12(v15) & 1;
  memset(v11, 0, sizeof(v11));
  v13 = v15;
  v14 = v16;
  v12 = a1;
  v6[4] = v17;
  v6[5] = a2;
  dispatch_sync(v5, v6);
  _Block_object_dispose(v17, 8);
}

void fpic_updateEventLoadedTimeIntervals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *CMBaseObjectGetDerivedStorage();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __fpic_updateEventLoadedTimeIntervals_block_invoke;
  v9[3] = &__block_descriptor_64_e5_v8__0l;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a3;
  v9[7] = a4;
  dispatch_sync(v8, v9);
}

void fpic_mediaAccessibilityChanged(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigMediaAccessibilityCaptionsDisplayType();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = *DerivedStorage;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __fpic_mediaAccessibilityChanged_block_invoke;
  v6[3] = &unk_1E748B8C8;
  v6[4] = &v7;
  v6[5] = DerivedStorage;
  v6[6] = v3;
  v6[7] = a1;
  dispatch_sync(v4, v6);
  v5 = v8[3];
  if (v5)
  {
    CFRelease(v5);
  }

  _Block_object_dispose(&v7, 8);
}

void __fpic_eventItemReadyStateChange_block_invoke(uint64_t a1)
{
  v21 = 0;
  v22 = 0;
  if (fpic_findEventAndItemIndexForItemOnQueue(*(a1 + 32), *(a1 + 40), *(a1 + 48), &v22, &v21))
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    if (*(a1 + 68))
    {
      fpic_UpdateEventLastPlaybackFailed(*(a1 + 32), ValueAtIndex, 0);
      fpic_EnsureEventHasResolvedProperties();
      fpic_updateIntegratedTimelineOffsetTimesOnItemForEvent();
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = *(MEMORY[0x1E6960C98] + 16);
      *&v28.start.value = *MEMORY[0x1E6960C98];
      *&v28.start.epoch = v7;
      *&v28.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
      *allocator = *MEMORY[0x1E6960CC0];
      *&start.value = *MEMORY[0x1E6960CC0];
      v8 = *(MEMORY[0x1E6960CC0] + 16);
      start.epoch = v8;
      v26 = **&MEMORY[0x1E6960C70];
      CMBaseObjectGetDerivedStorage();
      FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
      PerEventTrackingCount = fpic_GetPerEventTrackingCount(DerivedStorage, FirstIndexOfValue);
      if (!FirstIndexOfValue)
      {
        v11 = CMBaseObjectGetDerivedStorage();
        *&lhs.start.value = *(v11 + 432);
        lhs.start.epoch = *(v11 + 448);
        rhs = *(v11 + 480);
        CMTimeAdd(&v26, &lhs.start, &rhs);
        *&lhs.start.value = *allocator;
        lhs.start.epoch = v8;
        rhs = v26;
        CMTimeAdd(&start, &lhs.start, &rhs);
      }

      if (PerEventTrackingCount >= 1)
      {
        v12 = 0;
        allocatora = *MEMORY[0x1E695E480];
        do
        {
          PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(DerivedStorage, FirstIndexOfValue, v12, @"PlaybackItem");
          v14 = fpic_UnwrapPlaybackItem(v4, PerAssetPerEventTrackedObject, v5);
          if (v14)
          {
            v15 = v14;
            memset(&rhs, 0, sizeof(rhs));
            fpic_GetEventItemDurationOnEventTimeline(v4, v5, ValueAtIndex, v12, &rhs);
            if ((rhs.flags & 0x1D) == 1)
            {
              lhs.start = start;
              duration = rhs;
              CMTimeRangeMake(&v28, &lhs.start, &duration);
              duration = start;
              v24 = rhs;
              CMTimeAdd(&lhs.start, &duration, &v24);
              start = lhs.start;
            }

            lhs = v28;
            v16 = CMTimeRangeCopyAsDictionary(&lhs, allocatora);
            FigBaseObject = FigPlaybackItemGetFigBaseObject(v15);
            v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (!v18 || v18(FigBaseObject, @"InterstitialEventItemTimeOffset", v16))
            {
              break;
            }

            if (v16)
            {
              CFRelease(v16);
            }
          }

          ++v12;
        }

        while (PerEventTrackingCount != v12);
      }

      fpic_passImageQueueGaugeBetweenPlayers();
    }

    else
    {
      v3 = fpic_UnwrapEvent();
      FigPlayerInterstitialEventReportItemFailure(v3);
      if (FigPlayerInterstitialEventDidAllItemsFail(v3))
      {
        FigPlayerInterstitialEventSetLastPlaybackError(v3);
      }

      fpic_PruneCurrentEventsToQueue();
    }
  }
}

void __fpic_mediaSelectionsChanged_block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2 != *(a1[5] + 160))
  {
    if (!fpic_findEventAndItemIndexForItemOnQueue(a1[6], a1[7], v2, 0, 0))
    {
      return;
    }

    v2 = a1[4];
  }

  v3 = a1[6];

  fpic_applyCoordinationMediaSelectionCriteria(v3, v2);
}

void __fpic_coordinationIdentifierChanged_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 176);
  if (v3)
  {
    CFRelease(v3);
    *(a1[4] + 176) = 0;
    v2 = a1[4];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject(a1[5]);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(FigBaseObject, @"CoordinationIdentifier", *MEMORY[0x1E695E480], v2 + 176);
  }

  v6 = a1[6];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  Count = CFArrayGetCount(*(DerivedStorage + 656));
  if (v8)
  {
    v10 = Count;
    if (Count >= 1)
    {
      v11 = 0;
      while (1)
      {
        PerEventTrackingCount = fpic_GetPerEventTrackingCount(DerivedStorage, v11);
        if (PerEventTrackingCount >= 1)
        {
          break;
        }

LABEL_18:
        if (++v11 == v10)
        {
          goto LABEL_19;
        }
      }

      v13 = PerEventTrackingCount;
      v14 = 0;
      while (1)
      {
        PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(DerivedStorage, v11, v14, @"PlaybackItem");
        v16 = CMBaseObjectGetDerivedStorage();
        if (PerAssetPerEventTrackedObject && PerAssetPerEventTrackedObject != @"DummyItem")
        {
          v18 = (*(v16 + 80))(v6, v8, PerAssetPerEventTrackedObject);
          if (v18)
          {
            v19 = *(DerivedStorage + 176);
            v20 = FigPlaybackItemGetFigBaseObject(v18);
            v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (!v21 || v21(v20, @"CoordinationIdentifier", v19))
            {
              break;
            }
          }
        }

        if (v13 == ++v14)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_19:

    CFRelease(v8);
  }

  else
  {
    __fpic_coordinationIdentifierChanged_block_invoke_cold_1();
  }
}

void __fpic_schedulePrimaryToInterstitialTransition_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v17 = *(a1 + 40);
  v4 = *(a1 + 52);
  v18 = *(a1 + 48);
  v5 = *(a1 + 56);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v4)
  {
    v7 = DerivedStorage;
    if (*(DerivedStorage + 1224))
    {
      if (!fpic_skipShowInterstitial(DerivedStorage))
      {
        Rate = CMTimebaseGetRate(*(v7 + 1224));
        if (Rate > 0.0)
        {
          v9 = Rate;
          v10 = FigCFWeakReferenceHolderCopyReferencedObject();
          memset(&v16, 0, sizeof(v16));
          CMTimebaseGetTime(&v16, *(v7 + 1224));
          time1.timescale = v18;
          time1.flags = v4;
          time1.epoch = v5;
          time2 = v16;
          time1.value = v17;
          if (CMTimeCompare(&time1, &time2) >= 1)
          {
            time2.value = v17;
            time2.timescale = v18;
            time2.flags = v4;
            time2.epoch = v5;
            v13 = v16;
            CMTimeSubtract(&time1, &time2, &v13);
            Seconds = CMTimeGetSeconds(&time1);
            fpic_flipInterstitialAndPrimaryVisibility(v3, 1, v10, Seconds / v9);
          }

          if (v10)
          {
            CFRelease(v10);
          }
        }
      }
    }
  }

  v12 = *(a1 + 32);
  v16 = *v2;
  fpic_scheduleInterstitialAudioTransition(v12, &v16.value, 1);
}

void fpic_SchedulePrimaryTransitionTimerProc()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (dword_1EAF178D0 >= 5)
  {
    v6 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v3 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpic_SchedulePrimaryTransitionTimerProc_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = v0;
    dispatch_sync(v3, block);
    CFRelease(v0);
  }
}

void fpic_cancelScheduledAudioTransition(uint64_t a1, int a2, uint64_t a3)
{
  cf[20] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  cf[0] = 0;
  if (a2)
  {
    v8 = DerivedStorage + 72;
    v9 = (*(DerivedStorage + 72))(a1, a3, *(DerivedStorage + 48));
    if ((*(v8 + 1032) & 1) == 0)
    {
      goto LABEL_10;
    }

    v10 = v9;
    v11 = v8 + 1020;
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fpic_SetRateWithReason(v10, 41, 0.0);
  }

  else
  {
    fpic_GetPrimaryPlayerAndCopyWrapper(a1, cf);
    if ((*(v7 + 1128) & 1) == 0)
    {
      goto LABEL_10;
    }

    v11 = v7 + 1116;
    if (dword_1EAF178D0)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fpic_GatePrimaryPlaybackAtCurrentEvent(a1, a3);
  }

  v14 = MEMORY[0x1E6960C70];
  *v11 = *MEMORY[0x1E6960C70];
  *(v11 + 16) = *(v14 + 16);
LABEL_10:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }
}

void fpirc_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[3];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[3] = 0;
  }

  v2 = DerivedStorage[4];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[4] = 0;
  }

  v3 = DerivedStorage[5];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[5] = 0;
  }

  v4 = DerivedStorage[17];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[17] = 0;
  }

  v5 = DerivedStorage[18];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[18] = 0;
  }

  v6 = DerivedStorage[20];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[20] = 0;
  }

  v7 = DerivedStorage[2];
  if (v7)
  {
    dispatch_release(v7);
    DerivedStorage[2] = 0;
  }
}

uint64_t fpirc_CopyEvents(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = *(DerivedStorage + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __fpirc_CopyEvents_block_invoke;
  v7[3] = &unk_1E7482510;
  v7[4] = &v8;
  v7[5] = DerivedStorage;
  dispatch_sync(v4, v7);
  v5 = v9;
  *a2 = v9[3];
  v5[3] = 0;
  _Block_object_dispose(&v8, 8);
  return 0;
}

void fpirc_WillSeekTo(uint64_t a1, __int128 *a2, int a3)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = *(DerivedStorage + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __fpirc_WillSeekTo_block_invoke;
  v9[3] = &unk_1E7495270;
  v9[4] = v13;
  v9[5] = a1;
  v10 = *a2;
  v11 = *(a2 + 2);
  v9[6] = v7;
  v9[7] = DerivedStorage;
  v12 = a3;
  dispatch_sync(v8, v9);
  _Block_object_dispose(v13, 8);
}

uint64_t fpirc_CopyPlayableEventsForItem(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  v10 = v9;
  if (a2 && a3 && a4 && v9)
  {
    v11 = *(DerivedStorage + 16);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __fpirc_CopyPlayableEventsForItem_block_invoke;
    v16[3] = &unk_1E74950E8;
    v16[4] = &v17;
    v16[5] = a3;
    v16[6] = DerivedStorage;
    v16[7] = a1;
    v16[8] = v10;
    v16[9] = a2;
    dispatch_sync(v11, v16);
    v12 = 0;
    v13 = v18;
    *a4 = v18[3];
    v13[3] = 0;
  }

  else
  {
    v12 = FigSignalErrorAtGM();
  }

  v14 = v18[3];
  if (v14)
  {
    CFRelease(v14);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  _Block_object_dispose(&v17, 8);
  return v12;
}

void sub_1967D0A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void fpirc_GetCurrentTimeInCurrentEvent(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3810000000;
  v15 = "";
  v16 = *MEMORY[0x1E6960C70];
  v17 = *(MEMORY[0x1E6960C70] + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = v7;
  if (a2 && v7)
  {
    v9 = *(DerivedStorage + 16);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __fpirc_GetCurrentTimeInCurrentEvent_block_invoke;
    v11[3] = &unk_1E7494FB8;
    v11[6] = v8;
    v11[7] = DerivedStorage;
    v11[4] = &v12;
    v11[5] = a1;
    v11[8] = a2;
    dispatch_sync(v9, v11);
  }

  else if (!v7)
  {
    goto LABEL_5;
  }

  CFRelease(v8);
LABEL_5:
  v10 = v13;
  *a3 = *(v13 + 2);
  *(a3 + 16) = v10[6];
  _Block_object_dispose(&v12, 8);
}

void sub_1967D0B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpirc_GetCurrentEventSkippableState(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = fpirc_CopyCurrentEvent(a1);
  if (v3)
  {
    v4 = *(DerivedStorage + 16);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __fpirc_GetCurrentEventSkippableState_block_invoke;
    v7[3] = &unk_1E7482510;
    v7[4] = &v8;
    v7[5] = DerivedStorage;
    dispatch_sync(v4, v7);
    CFRelease(v3);
  }

  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_1967D0C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef fpirc_CopyCurrentEventSkipControlLabel()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 160))
  {
    return 0;
  }

  v1 = *(DerivedStorage + 160);
  if (!v1)
  {
    return 0;
  }

  return CFRetain(v1);
}

uint64_t OUTLINED_FUNCTION_15_52(int a1)
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

uint64_t OUTLINED_FUNCTION_18_43()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_19_42()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_25_34()
{
  result = v0[6];
  v0[12] = result;
  v0[13].n128_u64[0] = v0[7].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_33_28(uint64_t a1@<X8>)
{
  *(v2 + 52) = a1;
  *(v2 + 60) = 2048;
  *(v2 + 62) = v1;
  *(v2 + 70) = 2080;
}

__n128 OUTLINED_FUNCTION_38_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __n128 a18, unint64_t a19)
{
  result = a18;
  *v19 = a18;
  v19[1].n128_u64[0] = a19;
  return result;
}

__n128 OUTLINED_FUNCTION_39_22()
{
  result = v0[4];
  v0[12] = result;
  v0[13].n128_u64[0] = v0[5].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_40_22()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_43_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 a23)
{
  *(a1 + 256) = 0;
  *(a1 + 296) = 0;
  result = a23;
  *(a1 + 432) = a23;
  *(a1 + 448) = a22;
  *(a1 + 480) = a23;
  *(a1 + 496) = a22;
  *(a1 + 504) = a23;
  *(a1 + 520) = a22;
  *(a1 + 1144) = 0;
  *(a1 + 644) = a22;
  *(a1 + 628) = a23;
  *(a1 + 1147) = 0;
  return result;
}

void OUTLINED_FUNCTION_46_16()
{
  *(v2 + 4) = v1;
  *(v2 + 14) = v3;
  *(v2 + 34) = v4;
  *(v2 + 44) = v0;
}

uint64_t OUTLINED_FUNCTION_51_20()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

Float64 OUTLINED_FUNCTION_52_18(uint64_t a1, uint64_t a2, uint64_t a3, __int128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 time, uint64_t time_16)
{
  time = a11;
  time_16 = a12;

  return CMTimeGetSeconds(&time);
}

CMTime *OUTLINED_FUNCTION_54_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, unint64_t a55, int a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, unint64_t rhs, int rhs_8, int rhs_12)
{
  STACK[0x210] = a55;
  LODWORD(STACK[0x218]) = a56;
  LODWORD(STACK[0x21C]) = v67;
  STACK[0x220] = v66;
  rhs = STACK[0x280];
  rhs_8 = STACK[0x288];
  rhs_12 = v64;
  rhs_16 = v65;

  return CMTimeSubtract(&STACK[0x2B0], &STACK[0x210], &rhs);
}

uint64_t OUTLINED_FUNCTION_58_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33, uint64_t a34)
{
  *(v34 - 224) = a33;
  *(v34 - 208) = a34;
  return v34 - 224;
}

__n128 OUTLINED_FUNCTION_59_14()
{
  v2 = *(v0 + 72);
  v3 = *(*(v0 + 32) + 8);
  v4 = *(v2 + 240);
  *(v1 - 256) = *(v2 + 224);
  *(v1 - 240) = v4;
  *(v1 - 224) = *(v2 + 256);
  return v3[2];
}

__n128 OUTLINED_FUNCTION_60_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, __n128 a52, unint64_t a53)
{
  result = a52;
  *&STACK[0x2B0] = a52;
  STACK[0x2C0] = a53;
  STACK[0x2C8] = v56;
  LOBYTE(STACK[0x2D0]) = v53;
  LOBYTE(STACK[0x2D1]) = v54;
  *(v55 + 194) = a37;
  LOWORD(STACK[0x2D6]) = a38;
  return result;
}

__n128 OUTLINED_FUNCTION_68_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __n128 a31, unint64_t a32)
{
  result = a31;
  *&STACK[0x2B0] = a31;
  STACK[0x2C0] = a32;
  return result;
}

__n128 OUTLINED_FUNCTION_72_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a21, unint64_t a22)
{
  result = a21;
  v22[2] = a21;
  v22[3].n128_u64[0] = a22;
  return result;
}

uint64_t OUTLINED_FUNCTION_83_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 time2, uint64_t time2_16)
{
  *(v33 - 256) = *(v32 + 88);
  *(v33 - 240) = *(v32 + 104);
  time2 = a23;
  time2_16 = a24;

  return CMTimeCompare((v33 - 256), &time2);
}

uint64_t OUTLINED_FUNCTION_97_9()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_100_6(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, os_log_type_t type, uint64_t a40, uint64_t a41, uint64_t a42, int a43)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_103_4()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_115_3()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_133_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_134_2()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

Float64 OUTLINED_FUNCTION_135_3@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CMTime *time, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeGetSeconds(&timea);
}

double OUTLINED_FUNCTION_137_2@<D0>(uint64_t a1@<X8>)
{
  *(v1 - 240) = a1;

  return CMTimeGetSeconds((v1 - 256));
}

__n128 OUTLINED_FUNCTION_139_2@<Q0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, __n128 a48, __int128 a49, unint64_t a50)
{
  STACK[0x2D0] = a1;
  result = a48;
  *&STACK[0x210] = a48;
  *&STACK[0x220] = a49;
  STACK[0x230] = a50;
  return result;
}

void OUTLINED_FUNCTION_141_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50)
{
  STACK[0x2C8] = v53;
  LOBYTE(STACK[0x2D0]) = v51;
  LOBYTE(STACK[0x2D1]) = v50;
  *(v52 + 194) = a50;
}

__n128 OUTLINED_FUNCTION_144_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 *a23)
{
  result = *a23;
  *&STACK[0x2B0] = *a23;
  STACK[0x2C0] = a23[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_155_1()
{
  result = *(v2 + 80);
  v5 = *(v2 + 96);
  *(v2 + 256) = result;
  *(v2 + 272) = v5;
  *(v3 - 208) = v1;
  *(v3 - 207) = v0;
  return result;
}

void OUTLINED_FUNCTION_162_1(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 4) = a1;
  *(v8 + 12) = 2048;
  *(v8 + 14) = a8;
}

uint64_t OUTLINED_FUNCTION_164_2()
{

  return FigCFArrayGetFirstIndexOfValue();
}

double OUTLINED_FUNCTION_165_2@<D0>(unint64_t a1@<X8>)
{
  STACK[0x2C0] = a1;

  return CMTimeGetSeconds(&STACK[0x2B0]);
}

BOOL OUTLINED_FUNCTION_167_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_169_2()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_173_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a25, __int128 a26)
{
  result = a25;
  *(v26 + 96) = a25;
  *(v26 + 112) = a26;
  *(v26 + 128) = *(v26 + 32);
  return result;
}

__n128 OUTLINED_FUNCTION_181_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, __n128 a61, __int128 a62, unint64_t a63)
{
  result = a61;
  *&STACK[0x210] = a61;
  *&STACK[0x220] = a62;
  STACK[0x230] = a63;
  return result;
}

__n128 OUTLINED_FUNCTION_185_2()
{
  result = *&STACK[0x280];
  *&STACK[0x2B0] = *&STACK[0x280];
  STACK[0x2C0] = STACK[0x290];
  return result;
}

__n128 OUTLINED_FUNCTION_191_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a21, unint64_t a22)
{
  result = a21;
  v22[6] = a21;
  v22[7].n128_u64[0] = a22;
  return result;
}

__n128 OUTLINED_FUNCTION_193_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a21, uint64_t a22)
{
  result = a21;
  *(v22 - 240) = a21;
  *(v22 - 224) = a22;
  return result;
}

void OUTLINED_FUNCTION_194_1()
{
  v1 = *(v0 - 144);
  *(v0 - 112) = *(v0 - 160);
  *(v0 - 96) = v1;
  *(v0 - 80) = *(v0 - 128);
}

__n128 OUTLINED_FUNCTION_206_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, __int128 a14, uint64_t a15)
{
  result = a13;
  *(v15 + 96) = a13;
  *(v15 + 112) = a14;
  *(v15 + 128) = a15;
  return result;
}

__n128 OUTLINED_FUNCTION_208_1@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 + 224);
  v2 = *(a1 + 240);
  *&STACK[0x2B0] = result;
  *&STACK[0x2C0] = v2;
  STACK[0x2D0] = *(a1 + 256);
  return result;
}

__n128 OUTLINED_FUNCTION_213_1()
{
  result = v0[10];
  v0[16] = result;
  v0[17].n128_u64[0] = v0[11].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_222_1()
{
  result = v1[27];
  v0[4] = result;
  v0[5].n128_u64[0] = v1[28].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_225_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __n128 a29, unint64_t a30)
{
  result = a29;
  *v30 = a29;
  v30[1].n128_u64[0] = a30;
  return result;
}

__n128 OUTLINED_FUNCTION_227_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15, uint64_t a16)
{
  result = a15;
  *(v16 - 208) = a15;
  *(v16 - 192) = a16;
  return result;
}

__n128 OUTLINED_FUNCTION_229_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __n128 a31, __int128 a32, unint64_t a33)
{
  result = a31;
  *&STACK[0x2B0] = a31;
  *&STACK[0x2C0] = a32;
  STACK[0x2D0] = a33;
  return result;
}

__n128 OUTLINED_FUNCTION_232_1()
{
  result = *(v0 + 32);
  v2 = *(v0 + 48);
  *(v0 + 208) = result;
  *(v0 + 224) = v2;
  *(v0 + 240) = *(v0 + 64);
  return result;
}

__n128 OUTLINED_FUNCTION_233_1()
{
  result = *(v0 + 32);
  v2 = *(v0 + 48);
  *(v0 + 256) = result;
  *(v0 + 272) = v2;
  *(v0 + 288) = *(v0 + 64);
  return result;
}

__n128 OUTLINED_FUNCTION_236_1()
{
  result = *(v0 + 224);
  v3 = *(v0 + 240);
  *(v1 + 96) = result;
  *(v1 + 112) = v3;
  *(v1 + 128) = *(v0 + 256);
  return result;
}

__n128 OUTLINED_FUNCTION_238_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19, unint64_t a20)
{
  result = a19;
  v20[8] = a19;
  v20[9].n128_u64[0] = a20;
  return result;
}

BOOL OUTLINED_FUNCTION_254_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, os_log_type_t type, int a19)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_255_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, os_log_type_t type, int a42)
{

  return os_log_type_enabled(a1, type);
}

double OUTLINED_FUNCTION_256_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, __int128 a28, __int128 a29)
{
  a28 = 0u;
  a29 = 0u;
  a27 = 0u;

  return FigPlayerInterstitialEventGetEffectiveSkipControlTimeRange(a1, &a27);
}

BOOL OUTLINED_FUNCTION_258_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, os_log_type_t type, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61)
{

  return os_log_type_enabled(a1, type);
}

uint64_t ExternalProtectionStatusChangedCallback_3()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t FigPKDCPEProtectorCryptorWasInvalidated(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 9) && !*(DerivedStorage + 8))
  {
    goto LABEL_9;
  }

  FigSimpleMutexLock();
  if (!*(DerivedStorage + 96))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (!*(DerivedStorage + 9))
  {
    CFSetRemoveValue(*(DerivedStorage + 24), a2);
  }

  FigSimpleMutexUnlock();
  if (*(DerivedStorage + 9) || *(DerivedStorage + 8))
  {
LABEL_9:
    v4 = 4294951452;
  }

  else
  {
    v4 = 0;
  }

  FigReadWriteLockUnlockForRead();
  return v4;
}

uint64_t ExternalProtectionRequiredChangedCallback()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t FigPKDCPEProtectorInvalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    if (*DerivedStorage)
    {
      FigReadWriteLockLockForWrite();
      v4 = *(v3 + 9);
      *(v3 + 8) = *(v3 + 9) == 0;
      *(v3 + 9) = 1;
      FigReadWriteLockUnlockForWrite();
      FigReadWriteLockLockForRead();
      if (!v4)
      {
        FigSimpleMutexLock();
        CFSetApplyFunction(v3[3], InvalidateCryptorSetApplier, a1);
        FigSimpleMutexUnlock();
        v7 = v3[10];
        if (v7)
        {
          PKDKeyManagerInvalidate(v7);
          v8 = v3[10];
          if (v8)
          {
            CFRelease(v8);
            v3[10] = 0;
          }
        }

        v9 = v3[6];
        if (v9)
        {
          CFRelease(v9);
          v3[6] = 0;
        }

        v10 = v3[8];
        if (v10)
        {
          CFRelease(v10);
          v3[8] = 0;
        }

        v11 = v3[9];
        if (v11)
        {
          CFRelease(v11);
          v3[9] = 0;
        }

        if (v3[11])
        {
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterRemoveWeakListener();
          v12 = v3[11];
          if (v12)
          {
            CFRelease(v12);
            v3[11] = 0;
          }
        }
      }

      FigReadWriteLockUnlockForRead();
      FigReadWriteLockLockForWrite();
      *(v3 + 8) = 0;
      v5 = v3[3];
      if (v5)
      {
        CFRelease(v5);
        v3[3] = 0;
      }

      FigSimpleMutexDestroy();
      v3[2] = 0;
      FigReadWriteLockUnlockForWrite();
    }
  }

  return 0;
}

uint64_t FigPKDCPEProtectorFinalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigPKDCPEProtectorInvalidate(a1);
  result = *DerivedStorage;
  if (*DerivedStorage)
  {

    return FigReadWriteLockDestroy();
  }

  return result;
}

__CFString *FigPKDCPEProtectorCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = Mutable;
  if (DerivedStorage && Mutable)
  {
    v6 = CFGetRetainCount(a1);
    if (*(DerivedStorage + 9))
    {
      v7 = " (invalidated)";
    }

    else
    {
      v7 = "";
    }

    v8 = CFGetAllocator(a1);
    CFStringAppendFormat(v5, 0, @"<FigPKDPKDCPEProtector %p retainCount: %ld%s allocator: %p, >", a1, v6, v7, v8);
  }

  return v5;
}

uint64_t InvalidateCryptorSetApplier(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 96))
  {
    if (!a1)
    {
      return result;
    }
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListener();
    if (!a1)
    {
      return result;
    }
  }

  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 8);
  result = VTable + 8;
  v5 = *(v4 + 24);
  if (v5)
  {

    return v5(a1);
  }

  return result;
}

uint64_t InitKeyManagerForPastis(uint64_t a1)
{
  result = PKDKeyManagerCreateForPastis(*MEMORY[0x1E695E480], *(a1 + 8));
  **a1 = result;
  return result;
}

void *InitMovieIDForPastis(uint64_t a1)
{
  result = PKDMovieIDCreateForPastis();
  *(a1 + 48) = result;
  return result;
}

uint64_t InitKeyManagerForMSE(uint64_t a1)
{
  result = PKDKeyManagerCreateForMSE(*MEMORY[0x1E695E480], *(a1 + 8));
  **a1 = result;
  return result;
}

uint64_t RegisterFigPKDCPEProtectorType()
{
  FigCPEProtectorGetClassID();

  return FigBaseClassRegisterClass();
}

void FigInstallVirtualDisplay()
{
  if (FigInstallVirtualDisplay_once != -1)
  {
    FigInstallVirtualDisplay_cold_1();
  }
}

uint64_t FigVirtualFramebuffer_GetSupportedDigitalOutModes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVirtualFramebuffer_SetDigitalOutMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVirtualFramebuffer_SubmitSurface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v28 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v28)
  {
    return 4294954514;
  }

  v29.n128_f64[0] = a7;
  v30.n128_f64[0] = a8;
  v31.n128_f64[0] = a9;
  v32.n128_f64[0] = a10;
  v33.n128_f64[0] = a11;
  v34.n128_f64[0] = a12;
  v35.n128_f64[0] = a13;
  v36.n128_f64[0] = a14;

  return v28(a1, a2, a3, a4, a5, a6, v29, v30, v31, v32, v33, v34, v35, v36);
}

uint64_t FigVirtualFramebuffer_SwapWaitWithTimeout(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v8)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a4;

  return v8(a1, a2, a3, v9);
}

uint64_t FigVirtualFramebuffer_SwapWaitSurfaceTimeout(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v8)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a4;

  return v8(a1, a2, a3, v9);
}

uint64_t FigVirtualFramebuffer_GetVSyncRunLoopSource(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t FigVirtualFramebuffer_EnableVSyncNotifications(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVirtualFramebuffer_DisableVSyncNotifications(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigVirtualFramebuffer_GetHotPlugRunLoopSource(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t FigVirtualFramebuffer_EnableHotPlugDetectNotifications(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVirtualFramebuffer_DisableHotPlugDetectNotifications(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigVirtualFramebuffer_GetHDCPDownstreamState(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigVirtualFramebuffer_GetDisplayCapabilities(uint64_t a1, uint64_t a2)
{
  cf = 0;
  FigBytePumpGetFigBaseObject(a1);
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, @"SupportsRotation", *MEMORY[0x1E695E480], &cf);
    if (cf)
    {
      v6 = CFGetTypeID(cf);
      if (v6 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(cf))
        {
          v7 = 0x5A0000010ELL;
          if (!a2)
          {
            return 0;
          }

          goto LABEL_8;
        }
      }
    }
  }

  v7 = 0;
  if (a2)
  {
LABEL_8:
    *a2 = 0;
    *(a2 + 4) = v7;
    *(a2 + 12) = 1;
    *(a2 + 13) = 0;
    *(a2 + 15) = 0;
  }

  return 0;
}

uint64_t FigVirtualFramebuffer_EnableMirroring(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigVirtualFramebuffer_AcquireWritebackSurface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v16)
  {
    return 4294954514;
  }

  v17.n128_f64[0] = a7;
  v18.n128_f64[0] = a8;

  return v16(a1, a2, a3, a4, a5, a6, v17, v18);
}

uint64_t FigVirtualFramebuffer_RelinquishWritebackSurface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 120);
  if (v11)
  {

    return v11(a1, a2, a3, a4);
  }

  return result;
}

uint64_t FigVirtualFramebuffer_CopyProperty(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  FigBytePumpGetFigBaseObject(a1);
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    return 0;
  }

  v5(v4, a2, *MEMORY[0x1E695E480], &v7);
  return v7;
}

uint64_t FigVirtualFramebuffer_GetHDCPRunLoopSource(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t FigVirtualFramebuffer_HDCPSendRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t FigVirtualFramebuffer_HDCPGetReply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVirtualFramebuffer_GetProtectionOptions(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t OUTLINED_FUNCTION_1_175()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t FigMetricItemPlaybackSummaryEventCreate(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  ensureMetricEventTrace();
  if (a15)
  {
    FigMetricEventGetClassID();
    v25 = CMDerivedObjectCreate();
    if (!v25)
    {
      v34 = a8;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v27 = FigSimpleMutexCreate();
      *(DerivedStorage + 136) = v27;
      if (v27)
      {
        *DerivedStorage = 1;
        *(DerivedStorage + 8) = 15;
        if (a3)
        {
          v28 = CFRetain(a3);
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          v28 = CFDateCreate(a1, Current);
        }

        *(DerivedStorage + 16) = v28;
        v30 = *a2;
        *(DerivedStorage + 48) = *(a2 + 2);
        *(DerivedStorage + 32) = v30;
        if (a4)
        {
          v31 = CFRetain(a4);
        }

        else
        {
          v31 = 0;
        }

        *(DerivedStorage + 24) = v31;
        if (a5)
        {
          v32 = CFRetain(a5);
        }

        else
        {
          v32 = 0;
        }

        v25 = 0;
        *(DerivedStorage + 56) = v32;
        *(DerivedStorage + 64) = a6;
        *(DerivedStorage + 72) = a7;
        *(DerivedStorage + 80) = v34;
        *(DerivedStorage + 88) = a11;
        *(DerivedStorage + 96) = a12;
        *(DerivedStorage + 104) = a9;
        *(DerivedStorage + 112) = a10;
        *(DerivedStorage + 120) = a13;
        *(DerivedStorage + 128) = a14;
        *a15 = 0;
      }

      else
      {
        return FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    FigMetricItemPlaybackSummaryEventCreate_cold_1(&v35);
    return v35;
  }

  return v25;
}

uint64_t mes_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[7];
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = DerivedStorage[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[3];
  if (v3)
  {
    CFRelease(v3);
  }

  return FigSimpleMutexDestroy();
}

uint64_t mes_setImmutable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 0;

  return FigSimpleMutexUnlock();
}

uint64_t mes_isMutable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v1;
}

CFTypeRef mes_copySessionID()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    v2 = CFRetain(v1);
  }

  else
  {
    v2 = 0;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t mes_setSessionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v5 = 0;
  }

  else
  {
    mes_setSessionID_cold_1(&v7);
    v5 = v7;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t mes_getMediaTime@<X0>(uint64_t a1@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a1 = *(DerivedStorage + 32);
  *(a1 + 16) = *(DerivedStorage + 48);

  return FigSimpleMutexUnlock();
}

uint64_t mes_setMediaTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = 0;
    v5 = *a2;
    *(DerivedStorage + 48) = *(a2 + 2);
    *(DerivedStorage + 32) = v5;
  }

  else
  {
    mes_setMediaTime_cold_1(&v7);
    v4 = v7;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t FigMetadataReaderCreateWithSampleBufferForIcy(uint64_t a1, void *a2, void *a3)
{
  if (a2 && a3)
  {
    FigMetadataReaderGetClassID();
    v5 = CMDerivedObjectCreate();
    if (!v5)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      FigIcyMetadataParseSampleBuffer(a2, DerivedStorage, DerivedStorage + 1);
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

void FigIcyMetadataFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *FigIcyMetadataCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigIcyMetadataReader %p\n", DerivedStorage);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v6 = v5(a1, 0, 0);
    if (v6 >= 1)
    {
      v7 = v6;
      CFStringAppendFormat(Mutable, 0, @"  Item Count = %d\n", v6);
      for (i = 0; i != v7; ++i)
      {
        theDict = 0;
        cf = 0;
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v9 || v9(a1, 0, 0, i, v2, &cf, &theDict))
        {
          break;
        }

        CFStringAppendFormat(Mutable, 0, @"   [%d]:\n", i);
        if (cf)
        {
          v10 = CFCopyDescription(cf);
          if (v10)
          {
            v11 = v10;
            CFStringAppendFormat(Mutable, 0, @"    Value = %@\n", v10);
            CFRelease(v11);
          }

          CFRelease(cf);
        }

        if (theDict)
        {
          CFStringAppendFormat(Mutable, 0, @"    Properties:\n");
          Value = CFDictionaryGetValue(theDict, @"key");
          if (Value)
          {
            CFStringAppendFormat(Mutable, 0, @"     Key = %@\n", Value);
          }

          CFRelease(theDict);
        }
      }
    }
  }

  return Mutable;
}

uint64_t FigIcyMetadataCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (FigCFEqual())
  {
    v5 = *MEMORY[0x1E695E4D0];
LABEL_5:
    v6 = CFRetain(v5);
    result = 0;
    *a4 = v6;
    return result;
  }

  if (FigCFEqual())
  {
    v5 = @"com.nullsoft.icy";
    goto LABEL_5;
  }

  return 4294954512;
}

uint64_t FigIcyMetadataCopyValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6, CFTypeRef *a7)
{
  v20 = 0;
  cf = 0;
  if (!a1)
  {
    v19 = 176;
LABEL_22:
    FigIcyMetadataCopyValue_cold_1(v19, &v22);
    v17 = v22;
    goto LABEL_14;
  }

  if (!a3)
  {
    v19 = 177;
    goto LABEL_22;
  }

  if (!a6)
  {
    v19 = 178;
    goto LABEL_22;
  }

  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v15)
  {
    v17 = 4294954514;
    goto LABEL_14;
  }

  v16 = v15(a1, a2, a3, 0, a5, &cf, v14);
  if (v16)
  {
    v17 = v16;
LABEL_14:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_16;
  }

  if (a4 && CFGetTypeID(cf) != a4)
  {
    v17 = 4294954688;
    goto LABEL_14;
  }

  *a6 = cf;
  cf = 0;
  v17 = 0;
  if (a7)
  {
    *a7 = v20;
    return v17;
  }

LABEL_16:
  if (v20)
  {
    CFRelease(v20);
  }

  return v17;
}

uint64_t FigIcyMetadataGetKeyCount(uint64_t a1, const void *a2)
{
  if (!CMBaseObjectGetDerivedStorage())
  {
    FigIcyMetadataGetKeyCount_cold_2();
    return 0;
  }

  if (a2 && !CFEqual(a2, @"icy"))
  {
    FigIcyMetadataGetKeyCount_cold_1();
    return 0;
  }

  return FigCFDictionaryGetCount();
}

uint64_t FigIcyMetadataCopyKeyAtIndex(uint64_t a1, const void *a2, CFIndex a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a5)
    {
      v9 = DerivedStorage;
      if (a2 && !CFEqual(a2, @"icy"))
      {
        FigIcyMetadataCopyKeyAtIndex_cold_1(&v14);
        return v14;
      }

      else
      {
        Count = *v9;
        if (*v9)
        {
          Count = CFArrayGetCount(Count);
        }

        if (Count > a3 && (ValueAtIndex = CFArrayGetValueAtIndex(*v9, a3)) != 0)
        {
          v12 = CFRetain(ValueAtIndex);
          result = 0;
          *a5 = v12;
        }

        else
        {
          return 4294954692;
        }
      }
    }

    else
    {
      FigIcyMetadataCopyKeyAtIndex_cold_2(&v15);
      return v15;
    }
  }

  else
  {
    FigIcyMetadataCopyKeyAtIndex_cold_3(&v16);
    return v16;
  }

  return result;
}

uint64_t FigIcyMetadataGetItemCount(uint64_t a1, const void *a2, __CFString *a3)
{
  if (a3)
  {
    return FigIcyMetadataHasKey(a1, a2, a3);
  }

  return FigIcyMetadataGetKeyCount(a1, a2);
}

uint64_t FigIcyMetadataMapKeyToIcyKeyspace(uint64_t result, __CFString *a2, __CFString **a3)
{
  if (result)
  {
    v5 = result;
    if (CFEqual(result, @"icy"))
    {
      result = 0;
    }

    else if (CFEqual(v5, @"comn"))
    {
      v6 = FigCFEqual();
      if (v6)
      {
        a2 = @"StreamTitle";
      }

      else
      {
        a2 = 0;
      }

      if (v6)
      {
        result = 0;
      }

      else
      {
        result = 4294954691;
      }
    }

    else
    {
      a2 = 0;
      result = 4294954690;
    }
  }

  *a3 = a2;
  return result;
}

uint64_t FigImageQueueCreateForCacheAndFanOutWithOptions(int a1, const __CFArray *a2, const __CFArray *a3, uint64_t a4, void *a5)
{
  v51 = *MEMORY[0x1E69E9840];
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a5 && a2 && a3)
  {
    Count = CFArrayGetCount(a2);
    if (Count == CFArrayGetCount(a3))
    {
      if (Count <= 0)
      {
        FigImageQueueCreateForCacheAndFanOutWithOptions_cold_11(value);
      }

      else
      {
        FigImageQueueGetClassID();
        v10 = CMDerivedObjectCreate();
        if (v10)
        {
          return v10;
        }

        DerivedStorage = CMBaseObjectGetDerivedStorage();
        *(DerivedStorage + 1040) = 0;
        if (FigCFDictionaryGetStringIfPresent())
        {
          CFStringGetCString(0, (DerivedStorage + 1040), 32, 0x600u);
        }

        theArray = a2;
        v12 = FigSimpleMutexCreate();
        *(DerivedStorage + 24) = v12;
        if (v12)
        {
          v13 = *MEMORY[0x1E695E480];
          v14 = MEMORY[0x1E695E9C0];
          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
          v16 = CFArrayCreateMutable(v13, Count, v14);
          v17 = v16;
          if (Mutable)
          {
            allocator = v13;
            v45 = a5;
            if (v16)
            {
              v18 = 0;
              v19 = *MEMORY[0x1E695E4D0];
              v20 = *MEMORY[0x1E695E4C0];
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(a3, v18);
                value[0] = 0;
                LOBYTE(v48) = 0;
                v22 = fiqcfo_createPixelBufferConformerForOptions(a1, ValueAtIndex, &v48, value);
                if (v22)
                {
                  v38 = v22;
                  goto LABEL_54;
                }

                v23 = value[0];
                CFArrayAppendValue(v17, value[0]);
                if (v48)
                {
                  v24 = v19;
                }

                else
                {
                  v24 = v20;
                }

                CFArrayAppendValue(Mutable, v24);
                if (v23)
                {
                  CFRelease(v23);
                }

                ++v18;
              }

              while (Count != v18);
              *(DerivedStorage + 8) = Mutable;
              *(DerivedStorage + 16) = v17;
              Copy = CFArrayCreateCopy(allocator, theArray);
              *DerivedStorage = Copy;
              if (Copy)
              {
                v26 = dispatch_queue_create("com.apple.coremedia.imagequeue.cache", 0);
                *(DerivedStorage + 40) = v26;
                if (v26)
                {
                  v27 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
                  *(DerivedStorage + 48) = v27;
                  if (v27)
                  {
                    *(DerivedStorage + 88) = 0;
                    v28 = MEMORY[0x1E6960C70];
                    *(DerivedStorage + 56) = *MEMORY[0x1E6960C70];
                    *(DerivedStorage + 72) = *(v28 + 16);
                    *(DerivedStorage + 37) = 0;
                    *(DerivedStorage + 1036) = 3;
                    *(DerivedStorage + 112) = 1;
                    v29 = FigCFWeakReferenceHolderCreateWithReferencedObject();
                    *(DerivedStorage + 96) = v29;
                    if (v29)
                    {
                      memset(__str, 0, sizeof(__str));
                      snprintf(__str, 0x50uLL, "com.apple.coremedia.imagequeue.memorypressure.%p", theArray);
                      if (fiqcfo_createSharedMemoryPressureDispatchQueue_sCreateSharedMemoryPressureDispatchQueueOnce != -1)
                      {
                        FigImageQueueCreateForCacheAndFanOutWithOptions_cold_2();
                      }

                      v30 = dispatch_queue_create_with_target_V2(__str, 0, fiqcfo_createSharedMemoryPressureDispatchQueue_sFIQCFOSharedMemoryPressureDispatchQueue);
                      *(DerivedStorage + 120) = v30;
                      v31 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 7uLL, v30);
                      *(DerivedStorage + 104) = v31;
                      if (v31)
                      {
                        dispatch_source_set_event_handler_f(v31, fiqcfo_MemoryPressureHandler);
                        dispatch_set_context(*(DerivedStorage + 104), *(DerivedStorage + 96));
                        CFRetain(*(DerivedStorage + 96));
                        dispatch_set_finalizer_f(*(DerivedStorage + 104), fiqcfo_FinalizeMemoryPressureSource);
                        dispatch_resume(*(DerivedStorage + 104));
                        theArraya = CMBaseObjectGetDerivedStorage();
                        value[0] = 0;
                        CMNotificationCenterGetDefaultLocalCenter();
                        fiqcfo_CopyImageQueueArray(0, value, 0, 0);
                        if (value[0])
                        {
                          v32 = CFArrayGetCount(value[0]);
                        }

                        else
                        {
                          v32 = 0;
                        }

                        v34 = 0;
                        while (1)
                        {
                          v35 = *(&fiqcfo_notifications + 3 * v34 + 2);
                          if (v32 >= 1)
                          {
                            break;
                          }

LABEL_38:
                          *(theArraya + v35) = 1;
                          if (++v34 == 5)
                          {
                            v38 = 0;
                            goto LABEL_46;
                          }
                        }

                        v36 = 0;
                        while (1)
                        {
                          CFArrayGetValueAtIndex(value[0], v36);
                          v37 = FigNotificationCenterAddWeakListener();
                          if (v37)
                          {
                            break;
                          }

                          if (v32 == ++v36)
                          {
                            goto LABEL_38;
                          }
                        }

                        v38 = v37;
                        v34 = v34;
                        do
                        {
                          v39 = *(&fiqcfo_notifications + 3 * v34 + 2);
                          if (v36 >= 1)
                          {
                            v40 = v36 + 1;
                            do
                            {
                              CFArrayGetValueAtIndex(value[0], v40 - 2);
                              FigNotificationCenterRemoveWeakListener();
                              --v40;
                            }

                            while (v40 > 1);
                          }

                          *(theArraya + v39) = 0;
                          v36 = v32;
                        }

                        while (v34-- > 0);
LABEL_46:
                        v42 = v45;
                        if (value[0])
                        {
                          CFRelease(value[0]);
                        }

                        if (!v38)
                        {
                          if (dword_1EAF170E0)
                          {
                            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                            fig_log_call_emit_and_clean_up_after_send_and_compose();
                            v42 = v45;
                          }

                          v38 = 0;
                          *v42 = 0;
                        }

                        return v38;
                      }

                      FigImageQueueCreateForCacheAndFanOutWithOptions_cold_3(value);
                    }

                    else
                    {
                      FigImageQueueCreateForCacheAndFanOutWithOptions_cold_4(value);
                    }
                  }

                  else
                  {
                    FigImageQueueCreateForCacheAndFanOutWithOptions_cold_5(value);
                  }
                }

                else
                {
                  FigImageQueueCreateForCacheAndFanOutWithOptions_cold_6(value);
                }
              }

              else
              {
                FigImageQueueCreateForCacheAndFanOutWithOptions_cold_7(value);
              }

              return LODWORD(value[0]);
            }

            FigImageQueueCreateForCacheAndFanOutWithOptions_cold_8(value);
            v38 = LODWORD(value[0]);
LABEL_54:
            CFRelease(Mutable);
            if (!v17)
            {
              return v38;
            }
          }

          else
          {
            FigImageQueueCreateForCacheAndFanOutWithOptions_cold_9(value);
            v38 = LODWORD(value[0]);
            if (!v17)
            {
              return v38;
            }
          }

          CFRelease(v17);
          return v38;
        }

        FigImageQueueCreateForCacheAndFanOutWithOptions_cold_10(value);
      }
    }

    else
    {
      FigImageQueueCreateForCacheAndFanOutWithOptions_cold_1(value);
    }

    return LODWORD(value[0]);
  }

  return FigSignalErrorAtGM();
}

uint64_t fiqcfo_createPixelBufferConformerForOptions(int a1, const __CFDictionary *cf, _BYTE *a3, void *a4)
{
  v6 = cf;
  if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFDictionaryGetTypeID())
    {
      CFDictionaryGetValue(v6, @"DestinationPixelBufferAttributes");
      LOBYTE(v6) = CFDictionaryGetValue(v6, @"EnsureModifiableImageBuffers") == *MEMORY[0x1E695E4D0];
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  v8 = VTPixelBufferConformerCreateWithAttributes();
  if (!v8)
  {
    *a3 = v6;
    *a4 = 0;
  }

  return v8;
}

uint64_t fiqcfo_finalize(uint64_t a1)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF170E0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = CMBaseObjectGetDerivedStorage();
  theArray[0] = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  fiqcfo_CopyImageQueueArray(a1, theArray, 0, 0);
  if (theArray[0])
  {
    Count = CFArrayGetCount(theArray[0]);
  }

  else
  {
    Count = 0;
  }

  for (i = 0; i != 5; ++i)
  {
    v7 = *(&fiqcfo_notifications + 3 * i + 2);
    if (*(v7 + v4))
    {
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          CFArrayGetValueAtIndex(theArray[0], j);
          FigNotificationCenterRemoveWeakListener();
        }
      }

      *(v4 + v7) = 0;
    }
  }

  if (theArray[0])
  {
    CFRelease(theArray[0]);
  }

  v9 = *(DerivedStorage + 96);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(DerivedStorage + 104);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(DerivedStorage + 120);
  if (v11)
  {
    dispatch_release(v11);
  }

  CFArrayRemoveAllValues(*(DerivedStorage + 48));
  v12 = *(DerivedStorage + 48);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 48) = 0;
  }

  v13 = *(DerivedStorage + 40);
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = *(DerivedStorage + 80);
  if (v14)
  {
    CFRelease(v14);
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v15 = *(DerivedStorage + 8);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(DerivedStorage + 16);
  if (v16)
  {
    CFRelease(v16);
  }

  return FigSimpleMutexDestroy();
}

CFStringRef fiqcfo_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  fiqcfo_CopyImageQueueArray(a1, &cf, 0, 0);
  v3 = FigCFCopyCompactDescription();
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%p %s fanOut : %@", a1, DerivedStorage + 1040, v3);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

uint64_t fiqcfo_copyProperty(const void *a1, const void *a2, uint64_t a3, CFDictionaryRef *a4)
{
  theArray = 0;
  fiqcfo_CopyImageQueueArray(a1, &theArray, 0, 0);
  if (!theArray)
  {
    if (CFEqual(@"FigImageQueueProperty_CurrentFrameRate", a2))
    {
      goto LABEL_91;
    }

    v9 = 0;
    Count = 0;
LABEL_30:
    if (CFEqual(@"FigImageQueueProperty_EnqueueResetsSystemSleepTimer", a2))
    {
      if (v9)
      {
        FigBaseObject = FigImageQueueGetFigBaseObject(v9);
        v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v19)
        {
          v16 = v19(FigBaseObject, @"FigImageQueueProperty_EnqueueResetsSystemSleepTimer", a3, a4);
        }

        else
        {
          v16 = 4294954514;
        }

        goto LABEL_92;
      }

LABEL_91:
      v16 = 4294954512;
      goto LABEL_92;
    }

    if (CFEqual(@"FigImageQueueProperty_NextNonJerkyStopTime", a2))
    {
      if (!Count)
      {
        goto LABEL_91;
      }

      if (Count >= 1)
      {
        v20 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
          v22 = FigImageQueueGetFigBaseObject(ValueAtIndex);
          v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v23)
          {
            v24 = v23(v22, @"FigImageQueueProperty_NextNonJerkyStopTime", a3, a4);
            v16 = v24;
            if (v24 == -12783 || v24 == 0)
            {
              goto LABEL_92;
            }
          }

          else
          {
            v16 = 4294954514;
          }

          if (Count == ++v20)
          {
            goto LABEL_92;
          }
        }
      }

LABEL_70:
      v16 = 0;
      goto LABEL_92;
    }

    if (CFEqual(@"FigImageQueueProperty_FirstImageEnqueued", a2))
    {
      if (!Count)
      {
        goto LABEL_91;
      }

      if (Count < 1)
      {
        v33 = *MEMORY[0x1E695E4C0];
      }

      else
      {
        v26 = 0;
        v27 = *MEMORY[0x1E695E4D0];
        v28 = 1;
        do
        {
          v29 = CFArrayGetValueAtIndex(theArray, v26);
          cf = 0;
          v30 = FigImageQueueGetFigBaseObject(v29);
          v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v31)
          {
            v31(v30, a2, a3, &cf);
          }

          v32 = cf;
          if (cf)
          {
            CFRelease(cf);
          }

          if (v32 == v27)
          {
            break;
          }

          v28 = ++v26 < Count;
        }

        while (Count != v26);
        if (v28)
        {
          v33 = v27;
        }

        else
        {
          v33 = *MEMORY[0x1E695E4C0];
        }
      }

      DictionaryRepresentation = CFRetain(v33);
    }

    else
    {
      if (CFEqual(@"FigImageQueueProperty_CachedVideoFrames", a2))
      {
        fiqcfo_CopyCachedVideoFrames(a1, a4);
        goto LABEL_70;
      }

      if (CFEqual(@"FigImageQueueProperty_CachedTimeRange", a2))
      {
        fiqcfo_CopyCachedTimeRange(a1, a4);
        goto LABEL_70;
      }

      if (CFEqual(@"FigImageQueueProperty_DisplaySize", a2))
      {
        v44.width = fiqcfo_GetMaximumDisplaySize(a1);
        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v44);
      }

      else
      {
        if (!CFEqual(@"FigImageQueueProperty_GPURegistryID", a2))
        {
          if (!CFEqual(@"CanSupportAV1FilmGrainDeferMode", a2))
          {
            goto LABEL_91;
          }

          if (Count)
          {
            v35 = *MEMORY[0x1E695E4D0];
            if (Count < 1)
            {
              v16 = 0;
            }

            else
            {
              v36 = 0;
              v37 = 1;
              while (1)
              {
                v38 = CFArrayGetValueAtIndex(theArray, v36);
                cf = 0;
                v16 = FigImageQueueCopyProperty(v38, @"CanSupportAV1FilmGrainDeferMode", a3, &cf);
                if (v35 != cf)
                {
                  v37 = 0;
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                if (v37)
                {
                  v39 = 0;
                }

                else
                {
                  v39 = 13;
                }

                if (v16)
                {
                  v39 = 18;
                }

                if (v39)
                {
                  break;
                }

                if (Count == ++v36)
                {
                  goto LABEL_99;
                }
              }

              if (v39 != 13)
              {
                goto LABEL_92;
              }

LABEL_99:
              if (!v37)
              {
                v35 = *MEMORY[0x1E695E4C0];
              }
            }
          }

          else
          {
            v16 = 0;
            v35 = *MEMORY[0x1E695E4D0];
          }

          DictionaryRepresentation = CFRetain(v35);
LABEL_67:
          *a4 = DictionaryRepresentation;
          goto LABEL_92;
        }

        DictionaryRepresentation = fiqcfo_CopyGPURegistryIDIfSingular(a1);
      }
    }

    v16 = 0;
    goto LABEL_67;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    if (CFEqual(@"FigImageQueueProperty_CurrentFrameRate", a2))
    {
      goto LABEL_91;
    }

    v9 = 0;
    goto LABEL_30;
  }

  v9 = CFArrayGetValueAtIndex(theArray, 0);
  if (!CFEqual(@"FigImageQueueProperty_CurrentFrameRate", a2))
  {
    goto LABEL_30;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    cf = 0;
    v12 = CFArrayGetValueAtIndex(theArray, v10);
    v13 = FigImageQueueGetFigBaseObject(v12);
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v15 = v14(v13, @"FigImageQueueProperty_CurrentFrameRate", a3, &cf);
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        valuePtr = 0;
        if (cf)
        {
          CFNumberGetValue(cf, kCFNumberFloat32Type, &valuePtr + 4);
        }

        if (v11)
        {
          CFNumberGetValue(v11, kCFNumberFloat32Type, &valuePtr);
        }

        if (*(&valuePtr + 1) <= *&valuePtr)
        {
          v17 = v11;
        }

        else
        {
          v17 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          if (v11)
          {
            CFRelease(v11);
          }
        }

        v16 = 0;
        v11 = v17;
      }
    }

    else
    {
      v16 = 4294954514;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    ++v10;
  }

  while (Count != v10);
  if (v11)
  {
    v16 = 0;
    *a4 = v11;
  }

LABEL_92:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v16;
}

uint64_t fiqcfo_setProperty(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v51 = 0;
  v52 = 0;
  v50 = 0;
  if (!CFEqual(@"PreventDisplaySleepDuringVideoPlayback", a2))
  {
    goto LABEL_5;
  }

  if (a3)
  {
    v7 = CFGetTypeID(a3);
    if (v7 == CFBooleanGetTypeID())
    {
      fiqcfo_CopyImageQueueArray(a1, &v52, 0, 0);
      FigImageQueueArraySetProperty();
LABEL_5:
      value_low = 0;
      goto LABEL_7;
    }
  }

  value_low = FigSignalErrorAtGM();
LABEL_7:
  if (CFEqual(@"Duration", a2))
  {
    if (a3 && (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(a3)))
    {
      fiqcfo_CopyImageQueueArray(a1, &v52, 0, 0);
      FigImageQueueArraySetProperty();
    }

    else
    {
      value_low = FigSignalErrorAtGM();
    }
  }

  if (CFEqual(@"EnableImageQueueTiming", a2))
  {
    if (!a3 || (v10 = CFGetTypeID(a3), v10 != CFBooleanGetTypeID()))
    {
LABEL_20:
      value_low = FigSignalErrorAtGM();
      goto LABEL_21;
    }

LABEL_19:
    fiqcfo_CopyImageQueueArray(a1, &v52, 0, 0);
    FigImageQueueArraySetProperty();
LABEL_21:
    Mutable = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_22;
  }

  if (CFEqual(@"FigImageQueueProperty_EnqueueResetsSystemSleepTimer", a2))
  {
    if (!a3)
    {
      goto LABEL_20;
    }

    v11 = CFGetTypeID(a3);
    if (v11 != CFBooleanGetTypeID())
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (CFEqual(@"FigImageQueueProperty_Timebase", a2))
  {
    if (!a3 || (v16 = CFGetTypeID(a3), v16 == CMTimebaseGetTypeID()))
    {
      v17 = CMBaseObjectGetDerivedStorage();
      context.value = CFRetain(a1);
      if (a3)
      {
        v18 = CFRetain(a3);
      }

      else
      {
        v18 = 0;
      }

      *&context.timescale = v18;
      dispatch_sync_f(*(v17 + 40), &context, fiqcfo_SetTimebaseNoLock);
      if (*&context.timescale)
      {
        CFRelease(*&context.timescale);
      }

      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (CFEqual(@"FigImageQueueProperty_CAImageQueueCaptionsMayAppearHint", a2))
  {
    if (!a3)
    {
      goto LABEL_20;
    }

    v19 = CFGetTypeID(a3);
    if (v19 != CFBooleanGetTypeID())
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (CFEqual(@"FigImageQueueProperty_DurationAllowedForCachedVideoFrames", a2))
  {
    context = **&MEMORY[0x1E6960C70];
    CMTimeMakeFromDictionary(&context, a3);
    v48 = context;
    fiqcfo_SetDurationAllowedForCachedVideoFrames(a1, &v48.value);
    goto LABEL_21;
  }

  if (CFEqual(@"FigImageQueueProperty_DisableColorMatching", a2))
  {
    if (a3)
    {
      v20 = CFGetTypeID(a3);
      if (v20 != CFBooleanGetTypeID())
      {
        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

  if (CFEqual(@"VideoEnhancementMode", a2))
  {
    if (!a3)
    {
      goto LABEL_20;
    }

    v21 = CFGetTypeID(a3);
    if (v21 != CFStringGetTypeID())
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (CFEqual(@"FigImageQueueProperty_ImageQueueConfigurationArrayForFanout", a2))
  {
    if (a3)
    {
      v22 = CFArrayGetTypeID();
      if (v22 != CFGetTypeID(a3))
      {
        goto LABEL_20;
      }
    }

    fiqcfo_CopyImageQueueArray(a1, &v52, &v51, &v50);
    v23 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      fiqcfo_setProperty_cold_4(&context);
      v13 = 0;
      v14 = 0;
      value_low = LODWORD(context.value);
      goto LABEL_22;
    }

    MutableCopy = FigCFArrayCreateMutableCopy();
    v25 = MEMORY[0x1E695E9C0];
    v14 = CFArrayCreateMutable(v23, 0, MEMORY[0x1E695E9C0]);
    v13 = CFArrayCreateMutable(v23, 0, v25);
    if (v13)
    {
      if (v14)
      {
        if (a3 && (v46 = v23, v45 = CFArrayGetCount(a3), v45 >= 1))
        {
          v26 = 0;
          v44 = *MEMORY[0x1E695E4D0];
          v43 = *MEMORY[0x1E695E4C0];
          while (1)
          {
            context.value = 0;
            v47 = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(a3, v26);
            Value = CFDictionaryGetValue(ValueAtIndex, @"FigImageQueueConfigurationKey_ImageQueue");
            v29 = CFDictionaryGetValue(ValueAtIndex, @"FigImageQueueConfigurationKey_Options");
            if (!Value)
            {
              fiqcfo_setProperty_cold_1(&v48);
              value_low = LODWORD(v48.value);
              goto LABEL_93;
            }

            v30 = v29;
            v31.length = MutableCopy ? CFArrayGetCount(MutableCopy) : 0;
            v31.location = 0;
            FirstIndexOfValue = CFArrayGetFirstIndexOfValue(MutableCopy, v31, Value);
            if (FirstIndexOfValue == -1)
            {
              fiqcfo_AddListenersOnFanoutImageQueue();
            }

            else
            {
              CFArrayRemoveValueAtIndex(MutableCopy, FirstIndexOfValue);
            }

            v33 = fiqcfo_createPixelBufferConformerForOptions(v46, v30, &v47, &context);
            if (v33)
            {
              break;
            }

            if (v47)
            {
              v34 = v44;
            }

            else
            {
              v34 = v43;
            }

            CFArrayAppendValue(v13, v34);
            v35 = context.value;
            CFArrayAppendValue(v14, context.value);
            if (v35)
            {
              CFRelease(v35);
            }

            CFArrayAppendValue(Mutable, Value);
            if (v45 == ++v26)
            {
              value_low = 0;
              goto LABEL_82;
            }
          }

          value_low = v33;
        }

        else
        {
LABEL_82:
          if (MutableCopy)
          {
            Count = CFArrayGetCount(MutableCopy);
            if (Count >= 1)
            {
              v37 = Count;
              for (i = 0; i != v37; ++i)
              {
                CFArrayGetValueAtIndex(MutableCopy, i);
                fiqcfo_RemoveListenersOnFanoutImageQueue();
              }
            }
          }

          FigSimpleMutexLock();
          v39 = *DerivedStorage;
          *DerivedStorage = Mutable;
          CFRetain(Mutable);
          if (v39)
          {
            CFRelease(v39);
          }

          v40 = *(DerivedStorage + 8);
          *(DerivedStorage + 8) = v13;
          CFRetain(v13);
          if (v40)
          {
            CFRelease(v40);
          }

          v41 = *(DerivedStorage + 16);
          *(DerivedStorage + 16) = v14;
          CFRetain(v14);
          if (v41)
          {
            CFRelease(v41);
          }

          FigSimpleMutexUnlock();
        }

        goto LABEL_93;
      }

      fiqcfo_setProperty_cold_2(&context);
    }

    else
    {
      fiqcfo_setProperty_cold_3(&context);
    }

    value_low = LODWORD(context.value);
LABEL_93:
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    goto LABEL_22;
  }

  if (CFEqual(@"ResponsibleProcessID", a2))
  {
    if (!a3)
    {
      goto LABEL_20;
    }

    v42 = CFGetTypeID(a3);
    if (v42 != CFNumberGetTypeID())
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  Mutable = 0;
  v13 = 0;
  v14 = 0;
  value_low = 4294954512;
LABEL_22:
  if (v52)
  {
    CFRelease(v52);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  return value_low;
}

uint64_t fiqcfo_CopyImageQueueArray(uint64_t a1, void *a2, void *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2)
  {
    v8 = *DerivedStorage;
    if (*DerivedStorage)
    {
      v8 = CFRetain(v8);
    }

    *a2 = v8;
  }

  if (a3)
  {
    v9 = *(DerivedStorage + 8);
    if (v9)
    {
      v9 = CFRetain(v9);
    }

    *a3 = v9;
  }

  if (a4)
  {
    v10 = *(DerivedStorage + 16);
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    *a4 = v10;
  }

  return FigSimpleMutexUnlock();
}

void fiqcfo_OccupancyChangedNotification(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterPostNotification();
  FigMemoryBarrier();
  if (FigAtomicAdd32() >= 1)
  {

    fiqcfo_UpdateCachedVideoFrames(a2, 1);
  }
}

void fiqcfo_DisplaySizeChangedNotification(uint64_t a1, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  fiqcfo_GetMaximumDisplaySize(a2);
  FigCFDictionarySetCGSize();
  CMNotificationCenterPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void fiqcfo_UpdateCachedVideoFrames(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7[0] = 0;
  v7[1] = 0;
  if (a2)
  {
    v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040FFEA222EuLL);
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = v7;
  }

  *v5 = CFRetain(a1);
  *(v5 + 8) = 0;
  *(v5 + 9) = a2;
  v6 = *(DerivedStorage + 40);
  if (a2)
  {
    dispatch_async_f(v6, v5, fiqcfo_UpdateCachedVideoFramesNoLock);
  }

  else
  {
    dispatch_sync_f(v6, v5, fiqcfo_UpdateCachedVideoFramesNoLock);
  }
}

void fiqcfo_UpdateCachedVideoFramesNoLock(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*(DerivedStorage + 37))
  {
    memset(&v16, 0, sizeof(v16));
    CMTimebaseGetTime(&v16, *(DerivedStorage + 80));
    memset(&v15, 0, sizeof(v15));
    lhs = v16;
    rhs = *(v3 + 56);
    CMTimeSubtract(&v15, &lhs, &rhs);
    memset(&lhs, 0, sizeof(lhs));
    rhs = v16;
    time1 = *(v3 + 56);
    CMTimeAdd(&lhs, &rhs, &time1);
    if (!*(a1 + 8))
    {
      v4 = *(v3 + 32);
      if (v4 < 1)
      {
        if (v4 < 0)
        {
          v15 = **&MEMORY[0x1E6960C80];
        }
      }

      else
      {
        lhs = **&MEMORY[0x1E6960C88];
      }
    }

    Count = CFArrayGetCount(*(v3 + 48));
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      v10 = *MEMORY[0x1E6960C70];
      v8 = *(MEMORY[0x1E6960C70] + 16);
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 48), v7);
        *&rhs.value = v10;
        rhs.epoch = v8;
        if (ValueAtIndex)
        {
          CMSampleBufferGetOutputPresentationTimeStamp(&rhs, ValueAtIndex);
        }

        time1 = rhs;
        time2 = v15;
        if (CMTimeCompare(&time1, &time2) < 0 || (time1 = rhs, time2 = lhs, CMTimeCompare(&time1, &time2) >= 1))
        {
          CFArrayRemoveValueAtIndex(*(v3 + 48), v7);
          --v6;
          FigAtomicDecrement32();
        }

        else
        {
          ++v7;
        }
      }

      while (v7 < v6);
    }
  }

  else
  {
    CFArrayRemoveAllValues(*(DerivedStorage + 48));
    FigAtomicBitAnd32();
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  if (*(a1 + 9))
  {
    free(a1);
  }
}

double fiqcfo_GetMaximumDisplaySize(uint64_t a1)
{
  theArray = 0;
  v1 = MEMORY[0x1E695F060];
  width = *MEMORY[0x1E695F060];
  height = *(MEMORY[0x1E695F060] + 8);
  fiqcfo_CopyImageQueueArray(a1, &theArray, 0, 0);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v7 = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
        dict = 0;
        FigBaseObject = FigImageQueueGetFigBaseObject(ValueAtIndex);
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v10)
        {
          v10(FigBaseObject, @"FigImageQueueProperty_DisplaySize", v7, &dict);
        }

        if (dict)
        {
          v12 = *v1;
          CGSizeMakeWithDictionaryRepresentation(dict, &v12);
          if (v12.height * v12.width > height * width)
          {
            height = v12.height;
            width = v12.width;
          }

          if (dict)
          {
            CFRelease(dict);
          }
        }

        ++v6;
      }

      while (v5 != v6);
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  return width;
}

void fiqcfo_CopyCachedVideoFrames(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5[0] = CFRetain(a1);
  v5[1] = a2;
  dispatch_sync_f(*(DerivedStorage + 40), v5, fiqcfo_CopyCachedVideoFramesNoLock);
}

CFDictionaryRef fiqcfo_CopyCachedTimeRange(const void *a1, CFDictionaryRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  *&v19.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v19.epoch = v5;
  v13 = *&v19.value;
  *&v18.value = *&v19.value;
  v18.epoch = v5;
  v6 = *(MEMORY[0x1E6960C98] + 16);
  *&v17.start.value = *MEMORY[0x1E6960C98];
  *&v17.start.epoch = v6;
  *&v17.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  *a2 = 0;
  fiqcfo_UpdateCachedVideoFrames(a1, 0);
  context[0] = CFRetain(a1);
  context[1] = &v20;
  dispatch_sync_f(*(DerivedStorage + 40), context, fiqcfo_CopyCachedVideoFramesNoLock);
  if (v20)
  {
    Count = CFArrayGetCount(v20);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; v8 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v20, i);
        *&start.start.value = v13;
        start.start.epoch = v5;
        if (ValueAtIndex)
        {
          CMSampleBufferGetOutputPresentationTimeStamp(&start.start, ValueAtIndex);
        }

        if (i)
        {
          time1 = start.start;
          time2 = v19;
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            v19 = start.start;
          }

          time1 = start.start;
          time2 = v18;
          if (CMTimeCompare(&time1, &time2) < 1)
          {
            continue;
          }
        }

        else
        {
          v19 = start.start;
        }

        v18 = start.start;
      }
    }

    if (v20)
    {
      CFRelease(v20);
    }
  }

  start.start = v19;
  time1 = v18;
  CMTimeRangeFromTimeToTime(&v17, &start.start, &time1);
  v11 = *MEMORY[0x1E695E480];
  start = v17;
  result = CMTimeRangeCopyAsDictionary(&start, v11);
  *a2 = result;
  return result;
}

const void *fiqcfo_CopyGPURegistryIDIfSingular(uint64_t a1)
{
  cf = 0;
  theArray = 0;
  fiqcfo_CopyImageQueueArray(a1, &theArray, 0, 0);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v2 = Count;
      v3 = 0;
      v4 = 0;
      v5 = *MEMORY[0x1E695E480];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3);
        FigBaseObject = FigImageQueueGetFigBaseObject(ValueAtIndex);
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v8)
        {
          v8(FigBaseObject, @"FigImageQueueProperty_GPURegistryID", v5, &cf);
        }

        if (!cf)
        {
          goto LABEL_16;
        }

        TypeID = CFNumberGetTypeID();
        v10 = CFGetTypeID(cf);
        v11 = cf;
        if (TypeID == v10)
        {
          break;
        }

LABEL_14:
        if (v11)
        {
          CFRelease(v11);
          cf = 0;
        }

LABEL_16:
        if (v2 == ++v3)
        {
          goto LABEL_21;
        }
      }

      valuePtr = 0;
      CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr);
      if (valuePtr)
      {
        v12 = cf;
        if (!v4)
        {
          cf = 0;
          goto LABEL_13;
        }

        if (!FigCFEqual())
        {
          CFRelease(v4);
          goto LABEL_20;
        }
      }

      v12 = v4;
LABEL_13:
      v11 = cf;
      v4 = v12;
      goto LABEL_14;
    }

LABEL_20:
    v4 = 0;
LABEL_21:
    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  else
  {
    v4 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

void fiqcfo_CopyCachedVideoFramesNoLock(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  **(a1 + 8) = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(DerivedStorage + 48));
  v3 = *a1;
  if (*a1)
  {

    CFRelease(v3);
  }
}

void fiqcfo_SetDurationAllowedForCachedVideoFrames(const void *a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFRetain(a1);
  v6 = *a2;
  v7 = *(a2 + 2);
  dispatch_sync_f(*(DerivedStorage + 40), &v5, fiqcfo_SetDurationAllowedForCachedVideoFramesNoLock);
}

uint64_t fiqcfo_AddListenersOnFanoutImageQueue()
{
  v0 = &off_1EE59EED0;
  v1 = 4;
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = &off_1EE59EED0;
  do
  {
    result = FigNotificationCenterAddWeakListener();
    if (result)
    {
      v4 = 1;
    }

    else
    {
      v4 = v1 == 0;
    }

    --v1;
    v2 += 3;
    v0 += 3;
  }

  while (!v4);
  return result;
}

uint64_t fiqcfo_RemoveListenersOnFanoutImageQueue()
{
  v0 = &off_1EE59EED0;
  v1 = 5;
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = &off_1EE59EED0;
  do
  {
    result = FigNotificationCenterRemoveWeakListener();
    v2 += 3;
    v0 += 3;
    --v1;
  }

  while (v1);
  return result;
}

void fiqcfo_SetTimebaseNoLock(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 80);
  *(DerivedStorage + 80) = *(a1 + 8);
  fiqcfo_UpdateCacheIsEnabledNoLock();
  *(a1 + 8) = v3;
  v4 = *a1;
  if (*a1)
  {

    CFRelease(v4);
  }
}

uint64_t fiqcfo_UpdateCacheIsEnabledNoLock()
{
  result = CMBaseObjectGetDerivedStorage();
  v2 = (*(result + 68) & 0x1D) == 1 && *(result + 80) != 0;
  v3 = *(result + 112);
  if (v3 == 4 || v3 == 2)
  {
    v2 = 0;
  }

  *(result + 37) = v2;
  return result;
}

void fiqcfo_SetDurationAllowedForCachedVideoFramesNoLock(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(a1 + 8);
  *(DerivedStorage + 72) = *(a1 + 24);
  *(DerivedStorage + 56) = v3;
  fiqcfo_UpdateCacheIsEnabledNoLock();
  v4 = *a1;
  if (*a1)
  {

    CFRelease(v4);
  }
}

uint64_t fiqcfo_flush(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  fiqcfo_CopyImageQueueArray(a1, &theArray, 0, 0);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    *(DerivedStorage + 36) = 1;
    if (Count < 1)
    {
      v5 = 0;
    }

    else
    {
      v4 = Count;
      LODWORD(v5) = 0;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v8)
        {
          v9 = v8(ValueAtIndex);
        }

        else
        {
          v9 = -12782;
        }

        if (v5)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9 == 0;
        }

        if (v10)
        {
          v5 = v5;
        }

        else
        {
          v5 = v9;
        }
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  else
  {
    v5 = 0;
    *(DerivedStorage + 36) = 1;
  }

  return v5;
}

uint64_t fiqcfo_canEnqueueImage(uint64_t a1)
{
  theArray = 0;
  fiqcfo_CopyImageQueueArray(a1, &theArray, 0, 0);
  if (!theArray)
  {
    return 100;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v4 = 100;
  }

  else
  {
    v2 = Count;
    v3 = 0;
    LODWORD(v4) = 100;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v6)
      {
        v7 = v6(ValueAtIndex);
      }

      else
      {
        v7 = 0;
      }

      if (v7 >= v4)
      {
        v4 = v4;
      }

      else
      {
        v4 = v7;
      }

      ++v3;
    }

    while (v2 != v3);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v4;
}

uint64_t fiqcfo_enqueueImage(const void *a1, __CVBuffer *a2, uint64_t a3, uint64_t a4, int a5)
{
  v48 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v42 = 0;
  theArray = 0;
  v41 = 0;
  fiqcfo_CopyImageQueueArray(a1, &theArray, &v42, &v41);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  if (*(DerivedStorage + 36))
  {
    *(DerivedStorage + 36) = 0;
    *&context.duration.timescale = 1;
    v10 = CMBaseObjectGetDerivedStorage();
    context.duration.value = CFRetain(a1);
    dispatch_sync_f(*(v10 + 40), &context, fiqcfo_UpdateCachedVideoFramesNoLock);
  }

  if (*(DerivedStorage + 37))
  {
    v11 = Count;
    v46 = *a4;
    v12 = *(a4 + 12);
    v47 = *(a4 + 8);
    v13 = *(a4 + 16);
    v14 = CMBaseObjectGetDerivedStorage();
    sampleBufferOut[0] = 0;
    formatDescriptionOut = 0;
    memset(&context, 0, sizeof(context));
    if (a2 && (v12 & 0x1D) == 1)
    {
      v15 = *MEMORY[0x1E695E480];
      v16 = CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x1E695E480], a2, &formatDescriptionOut);
      v17 = formatDescriptionOut;
      if (!v16)
      {
        context.presentationTimeStamp.timescale = v47;
        context.presentationTimeStamp.flags = v12;
        context.presentationTimeStamp.epoch = v13;
        context.decodeTimeStamp = **&MEMORY[0x1E6960C70];
        context.duration = context.decodeTimeStamp;
        context.presentationTimeStamp.value = v46;
        CMSampleBufferCreateReadyWithImageBuffer(v15, a2, formatDescriptionOut, &context, sampleBufferOut);
        v17 = formatDescriptionOut;
      }

      if (v17)
      {
        CFRelease(v17);
      }
    }

    v18 = sampleBufferOut[0];
    if (sampleBufferOut[0])
    {
      context.duration.epoch = 0;
      context.duration.value = CFRetain(a1);
      *&context.duration.timescale = v18;
      context.presentationTimeStamp.value = v46;
      context.presentationTimeStamp.timescale = v47;
      context.presentationTimeStamp.flags = v12;
      context.presentationTimeStamp.epoch = v13;
      dispatch_sync_f(*(v14 + 40), &context, fiqcfo_AddFrameToCachedVideoFramesNoLock);
    }

    fiqcfo_UpdateCachedVideoFrames(a1, 0);
    v38 = 1;
    Count = v11;
  }

  else
  {
    v38 = (a5 & 0x10000) == 0;
  }

  if (Count < 1)
  {
    v19 = 0;
  }

  else
  {
    LODWORD(v19) = 0;
    v20 = 0;
    v21 = 0;
    v22 = Count - 1;
    v35 = a5 & 0xFFFEFFFF;
    v23 = a2;
    do
    {
      v24 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
      formatDescriptionOut = 0;
      CFArrayGetValueAtIndex(v41, v21);
      CFArrayGetValueAtIndex(v42, v21);
      if (v38 | v20)
      {
        v26 = 1;
      }

      else
      {
        v26 = v21 < v22;
      }

      v27 = v26;
      v28 = VTPixelBufferConformerCopyConformedPixelBuffer();
      if (v28)
      {
        if (v19)
        {
          v19 = v19;
        }

        else
        {
          v19 = v28;
        }
      }

      else
      {
        v29 = formatDescriptionOut;
        if (formatDescriptionOut == v23)
        {
          v20 = 1;
        }

        if ((v27 & (formatDescriptionOut == v23)) != 0)
        {
          v30 = 0;
        }

        else
        {
          v30 = 0x10000;
        }

        *sampleBufferOut = *a4;
        v40 = *(a4 + 16);
        v31 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v31)
        {
          *&context.duration.value = *sampleBufferOut;
          context.duration.epoch = v40;
          v32 = v31(ValueAtIndex, v29, a3, &context, v30 | v35);
        }

        else
        {
          v32 = -12782;
        }

        if (v19)
        {
          v33 = 1;
        }

        else
        {
          v33 = v32 == 0;
        }

        if (v33)
        {
          v19 = v19;
        }

        else
        {
          v19 = v32;
        }

        CVBufferRelease(formatDescriptionOut);
      }

      Count = v24;
      ++v21;
    }

    while (v24 != v21);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  return v19;
}

uint64_t fiqcfo_setAsync(uint64_t a1, uint64_t a2)
{
  theArray = 0;
  fiqcfo_CopyImageQueueArray(a1, &theArray, 0, 0);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = Count;
    LODWORD(v5) = 0;
    for (i = 0; i != v4; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v8)
      {
        v9 = v8(ValueAtIndex, a2);
      }

      else
      {
        v9 = -12782;
      }

      if (v5)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        v5 = v5;
      }

      else
      {
        v5 = v9;
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v5;
}

uint64_t fiqcfo_setDirection(const void *a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  fiqcfo_CopyImageQueueArray(a1, &theArray, 0, 0);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  if (a2 >= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (a2 > 0.0)
  {
    v6 = 1;
  }

  *(DerivedStorage + 32) = v6;
  fiqcfo_UpdateCachedVideoFrames(a1, 0);
  if (Count < 1)
  {
    v7 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v10)
      {
        v11 = v10(ValueAtIndex, a2);
      }

      else
      {
        v11 = -12782;
      }

      if (v7)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 == 0;
      }

      if (v12)
      {
        v7 = v7;
      }

      else
      {
        v7 = v11;
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v7;
}

uint64_t fiqcfo_setUpcomingImageInfo(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  theArray = 0;
  fiqcfo_CopyImageQueueArray(a1, &theArray, 0, 0);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = Count;
    LODWORD(v9) = 0;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v18 = *a3;
      v19 = *(a3 + 2);
      v16 = *a4;
      v17 = *(a4 + 2);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v12)
      {
        v23 = v18;
        v24 = v19;
        v21 = v16;
        v22 = v17;
        v13 = v12(ValueAtIndex, a2, &v23, &v21);
      }

      else
      {
        v13 = -12782;
      }

      if (v9)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13 == 0;
      }

      if (v14)
      {
        v9 = v9;
      }

      else
      {
        v9 = v13;
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v9;
}

uint64_t fiqcfo_getOccupancyInfo(uint64_t a1, _DWORD *a2, CMTime *a3, CMTime *a4)
{
  v27[0] = 0;
  v19 = *MEMORY[0x1E6960C88];
  *&v26.value = *MEMORY[0x1E6960C88];
  v7 = *(MEMORY[0x1E6960C88] + 16);
  v26.epoch = v7;
  v18 = *MEMORY[0x1E6960C80];
  *&v25.value = *MEMORY[0x1E6960C80];
  v8 = *(MEMORY[0x1E6960C80] + 16);
  v25.epoch = v8;
  fiqcfo_CopyImageQueueArray(a1, v27, 0, 0);
  if (v27[0])
  {
    Count = CFArrayGetCount(v27[0]);
    if (Count >= 1)
    {
      v10 = Count;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v27[0], v12);
        v24 = 0;
        *&v23.value = v19;
        v23.epoch = v7;
        *&v22.value = v18;
        v22.epoch = v8;
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (!v15)
        {
          break;
        }

        v16 = v15(ValueAtIndex, &v24, &v23, &v22);
        if (v16)
        {
          goto LABEL_8;
        }

        v13 += v24;
        time1 = v26;
        time2 = v23;
        CMTimeMinimum(&v26, &time1, &time2);
        time1 = v25;
        time2 = v22;
        CMTimeMaximum(&v25, &time1, &time2);
LABEL_11:
        if (v10 == ++v12)
        {
          if (a2)
          {
            goto LABEL_13;
          }

          goto LABEL_14;
        }
      }

      v16 = -12782;
LABEL_8:
      if (v11)
      {
        v11 = v11;
      }

      else
      {
        v11 = v16;
      }

      goto LABEL_11;
    }
  }

  v13 = 0;
  v11 = 0;
  if (a2)
  {
LABEL_13:
    *a2 = v13;
  }

LABEL_14:
  if (a3)
  {
    *a3 = v26;
  }

  if (a4)
  {
    *a4 = v25;
  }

  if (v27[0])
  {
    CFRelease(v27[0]);
  }

  return v11;
}

uint64_t fiqcfo_copyPerformanceDictionary(uint64_t a1, __CFDictionary **a2)
{
  v3 = (CMBaseObjectGetDerivedStorage() + 136);
  v4 = *MEMORY[0x1E695E480];

  return PIQCopyPerformanceDictionaryForInstanceStatistics(v4, v3, a2);
}

void fiqcfo_getSafeDisplayDuration(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  v3 = MEMORY[0x1E6960C70];
  v10 = *MEMORY[0x1E6960C70];
  *&a2->value = *MEMORY[0x1E6960C70];
  v4 = *(v3 + 16);
  a2->epoch = v4;
  v14 = 0;
  fiqcfo_CopyImageQueueArray(a1, &v14, 0, 0);
  if (v14)
  {
    Count = CFArrayGetCount(v14);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, i);
        memset(&v13, 0, sizeof(v13));
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (v9)
        {
          v9(&v13, ValueAtIndex);
        }

        else
        {
          *&v13.value = v10;
          v13.epoch = v4;
        }

        time1 = *a2;
        time2 = v13;
        CMTimeMinimum(a2, &time1, &time2);
      }
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }
}

uint64_t fiqcfo_postNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  theArray = 0;
  fiqcfo_CopyImageQueueArray(a1, &theArray, 0, 0);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = Count;
    LODWORD(v7) = 0;
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (v10)
      {
        v11 = v10(ValueAtIndex, a2, a3);
      }

      else
      {
        v11 = -12782;
      }

      if (v7)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 == 0;
      }

      if (v12)
      {
        v7 = v7;
      }

      else
      {
        v7 = v11;
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v7;
}

void fiqcfo_AddFrameToCachedVideoFramesNoLock(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *MEMORY[0x1E6960C70];
  *&v14.value = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  v14.epoch = v3;
  Count = CFArrayGetCount(*(DerivedStorage + 48));
  if (Count < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 48), v6);
      *&time1.value = v11;
      time1.epoch = v3;
      if (ValueAtIndex)
      {
        CMSampleBufferGetOutputPresentationTimeStamp(&time1, ValueAtIndex);
      }

      v14 = time1;
      time2 = *(a1 + 24);
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        v6 = v5;
        break;
      }
    }
  }

  time1 = v14;
  time2 = *(a1 + 24);
  if (CMTimeCompare(&time1, &time2))
  {
    CFArrayInsertValueAtIndex(*(DerivedStorage + 48), v6, *(a1 + 8));
    FigAtomicIncrement32();
    v8 = CFArrayGetCount(*(DerivedStorage + 48));
    if (v8 <= 2147483646 && v8 > *(DerivedStorage + 1032))
    {
      *(DerivedStorage + 1032) = v8;
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    CFRelease(v10);
  }
}

uint64_t __fiqcfo_createSharedMemoryPressureDispatchQueue_block_invoke()
{
  result = FigDispatchQueueCreateWithPriority();
  fiqcfo_createSharedMemoryPressureDispatchQueue_sFIQCFOSharedMemoryPressureDispatchQueue = result;
  return result;
}

void __FigCaptionRendererCALayerOutputNodeCreate_block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  *(*(a1 + 32) + 8) = objc_alloc_init(FigFCRCALayerOutputNodeLayer);
  [MEMORY[0x1E6979518] commit];
  v2 = *(a1 + 40);

  CFRelease(v2);
}

uint64_t FigCaptionRendererCALayerOutputNodeAttachToCALayer(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  v4 = *(DerivedStorage + 8);
  [a2 bounds];
  [v4 setBounds:?];
  v5 = *(DerivedStorage + 8);
  [a2 bounds];
  v7 = v6 * 0.5;
  [a2 bounds];
  [v5 setPosition:{v7, v8 * 0.5}];
  [a2 addSublayer:*(DerivedStorage + 8)];
  [MEMORY[0x1E6979518] commit];
  return 0;
}

void FigCaptionRendererCALayerOutputNodeFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigCaptionRendererCALayerOutputNodeFinalize_block_invoke;
  block[3] = &unk_1E7482608;
  block[4] = v1;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigCaptionRendererCALayerOutputNodeCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"FigCaptionRendererCALayerOutputNode: <%p>", a1);
  return Mutable;
}

uint64_t __FigCaptionRendererCALayerOutputNodeFinalize_block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(a1 + 32) removeFromSuperlayer];

  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

__CFString *FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCALayerOutputNode <FigCaptionRendererOutputNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_AddChildNode(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_AddChildNode_block_invoke;
  v10[3] = &__block_descriptor_48_e5_v8__0l;
  v10[4] = a1;
  v10[5] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
  v5 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 24);
  if (v8)
  {
    return v8(v5, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_RemoveChildNode(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_RemoveChildNode_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v4 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v6 = *(ProtocolVTable + 16);
  if (!v6)
  {
    return 4294954508;
  }

  v7 = *(v6 + 32);
  if (v7)
  {
    return v7(v4, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_GetChildNodes(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v5, a2, a3);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_RemoveAllChildNodes(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_RemoveAllChildNodes_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v3 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 56);
  if (v6)
  {
    return v6(v3);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_GetPosition(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 64);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetPosition(const void *a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetPosition_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a1;
  *&block[5] = a2;
  *&block[6] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v7 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 72);
  if (v10)
  {
    return v10(v7, a2, a3);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_GetSize(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 80);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetSize(const void *a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetSize_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a1;
  *&block[5] = a2;
  *&block[6] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v7 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 88);
  if (v10)
  {
    return v10(v7, a2, a3);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_GetClipToBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 96);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetClipToBounds(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetClipToBounds_block_invoke;
  v10[3] = &__block_descriptor_41_e5_v8__0l;
  v10[4] = a1;
  v11 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
  v5 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 104);
  if (v8)
  {
    return v8(v5, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_GetContent(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 112);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetContent(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigCaptionRendererCALayerOutputNode_FigCaptionRendererOutputNodeProtocol_SetContent_block_invoke;
  v10[3] = &__block_descriptor_48_e5_v8__0l;
  v10[4] = a1;
  v10[5] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
  v5 = *DerivedStorage;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 120);
  if (v8)
  {
    return v8(v5, a2);
  }

  else
  {
    return 4294954514;
  }
}