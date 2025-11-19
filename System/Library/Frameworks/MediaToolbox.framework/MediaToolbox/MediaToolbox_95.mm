uint64_t playerfig_setActionAtEnd(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  LODWORD(v6) = *(result + 816);
  if (v6 != a2)
  {
    OUTLINED_FUNCTION_440_0();
    *(v2 + 816) = a2;
    v7 = a2 != 2 && v6 == 2;
    if (v7)
    {
      OUTLINED_FUNCTION_221_0();
      v8 = !v7;
    }

    else
    {
      v8 = 0;
    }

    if (CFArrayGetCount(*(v2 + 528)) >= 1)
    {
      v9 = OUTLINED_FUNCTION_233_0();
      CFRetain(v9);
      if (v9)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v11 = *(DerivedStorage + 352);
        if (v11)
        {
          if (!a2 && v6 && FigPlaybackBossDidReachEnd(v11))
          {
            v8 = 1;
          }

          if (*(DerivedStorage + 480))
          {
            v6 = *(v2 + 816);
            Count = CFArrayGetCount(*(v2 + 528));
            if (!FigPlaybackGetEffectiveActionAtEnd(v6, Count))
            {
              v22 = *(v2 + 528);
              if (v22)
              {
                if (CFArrayGetCount(v22) >= 2)
                {
                  CFArrayGetValueAtIndex(*(v2 + 528), 1);
                  v23 = OUTLINED_FUNCTION_201_0();
                  if (playerfig_maybeUndoQueueingForItem(v23, v24))
                  {
                    FigSimpleMutexUnlock();
                    OUTLINED_FUNCTION_137_0();
                    OUTLINED_FUNCTION_93_0();
                    playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
                    FigSimpleMutexLock();
                  }
                }
              }
            }
          }

          FigPlaybackBossSetStopAtEnd(*(DerivedStorage + 352), a2 == 1);
          if (v8)
          {
            v13 = &off_196E72000;
            if (*(DerivedStorage + 496) && !FigPlaybackBossDidReachEnd(*(DerivedStorage + 352)))
            {
              if (dword_1EAF16A10)
              {
                v14 = OUTLINED_FUNCTION_73_0();
                OUTLINED_FUNCTION_339_0(v14, v15, v16, v17, v18, v19, v20, v21, v37, v38, v39, v40, SBYTE2(v40), BYTE3(v40), SHIDWORD(v40));
                OUTLINED_FUNCTION_28();
                if (a1)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                CMBaseObjectGetDerivedStorage();
                OUTLINED_FUNCTION_18_0();
                OUTLINED_FUNCTION_9_0();
                OUTLINED_FUNCTION_23();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_2();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v13 = &off_196E72000;
              }

              *(DerivedStorage + 496) = 0;
              v25 = OUTLINED_FUNCTION_198_0();
              playerfig_prepareNextItemForTransition(v25, v26);
            }

            if (FigPlaybackBossDidReachEnd(*(DerivedStorage + 352)))
            {
              if (dword_1EAF16A10)
              {
                v27 = OUTLINED_FUNCTION_73_0();
                OUTLINED_FUNCTION_304(v27, v28, v29, v30, v31, v32, v33, v34, v37, v38, v39, v40, SBYTE2(v40), BYTE3(v40), SHIDWORD(v40));
                OUTLINED_FUNCTION_46();
                if (v6)
                {
                  if (a1)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  CMBaseObjectGetDerivedStorage();
                  OUTLINED_FUNCTION_18_0();
                  OUTLINED_FUNCTION_9_0();
                  OUTLINED_FUNCTION_36();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_238_0();
              }

              *(v2 + 840) = 1;
              if (!*CMBaseObjectGetDerivedStorage())
              {
                v35 = OUTLINED_FUNCTION_354_0();
                if (v35)
                {
                  v36 = v35;
                  if (!*CMBaseObjectGetDerivedStorage())
                  {
                    CFRetain(v9);
                    FigSimpleMutexLock();
                    if (*(v13 + 44))
                    {
                      itemfig_advanceToNextItem(v9);
                    }

                    FigSimpleMutexUnlock();
                    playerfig_updatePlaybackStateAndBossRate(v36, 7, 0);
                    CFRelease(v9);
                  }

                  CFRelease(v36);
                }
              }

              *(v2 + 840) = 0;
            }
          }
        }

        CFRelease(v9);
        playerfig_updateStartHostTimeEstimatesOfAllItems(a1);
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

void itemfig_reportingAgentReportBufferedAirPlayMode(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
    v2 = OUTLINED_FUNCTION_282_0();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (v2 && DerivedStorage)
    {
      FigSimpleMutexLock();
      if (*(v1 + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_333();
        v4();
      }

      FigSimpleMutexUnlock();
    }

    else if (!v2)
    {
      return;
    }

    CFRelease(v2);
  }
}

void playerfig_removeVideoTargetsFromFigImageQueueTableArray(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, CFAllocatorRef allocator, CFArrayRef theArray, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_298_0();
  a26 = v27;
  a27 = v28;
  v30 = v29;
  v32 = v31;
  theArray = 0;
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v54 = v30;
  if (v30)
  {
    v55 = *v30;
  }

  else
  {
    v55 = 0;
  }

  v34 = 0;
  allocatora = *MEMORY[0x1E695E480];
  if (!v32)
  {
    goto LABEL_6;
  }

LABEL_5:
  for (i = CFArrayGetCount(v32); v34 < i; i = 0)
  {
    v36 = OUTLINED_FUNCTION_331_0();
    ValueAtIndex = CFArrayGetValueAtIndex(v36, v37);
    if (FigImageQueueTableCopyVideoTargets(ValueAtIndex, &theArray))
    {
      goto LABEL_35;
    }

    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count < 1)
      {
        v41 = 0;
        v46 = 0;
      }

      else
      {
        Mutable = CFArrayCreateMutable(allocatora, 0, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          OUTLINED_FUNCTION_120();
          FigSignalErrorAtGM();
          goto LABEL_35;
        }

        v41 = Mutable;
        if (theArray)
        {
          v42 = CFArrayGetCount(theArray);
          if (v42 >= 1)
          {
            v43 = v42;
            for (j = 0; j != v43; ++j)
            {
              v45 = CFArrayGetValueAtIndex(theArray, j);
              if (!FigCFArrayContainsValue())
              {
                CFArrayAppendValue(v41, v45);
              }
            }
          }
        }

        v46 = CFArrayGetCount(v41);
      }

      v47 = theArray;
      if (theArray)
      {
        v47 = CFArrayGetCount(theArray);
      }

      if (v46 < v47)
      {
        OUTLINED_FUNCTION_156_0();
        if (!FigImageQueueTableUpdateToMatchOutputsArray(v48, v49, v50, v51, v52, v53))
        {
          FigImageQueueTableSetTimebase(ValueAtIndex, *(DerivedStorage + 328));
        }

        v55 = 1;
      }

      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }

      if (Count >= 1)
      {
        CFRelease(v41);
      }
    }

    ++v34;
    if (v32)
    {
      goto LABEL_5;
    }

LABEL_6:
    ;
  }

  if (v54)
  {
    *v54 = v55;
  }

LABEL_35:
  if (theArray)
  {
    CFRelease(theArray);
  }

  OUTLINED_FUNCTION_297_0();
}

void itemfig_becameBothCurrentAndReadyForInspection(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, __int16 a13, char a14, os_log_type_t type, int a16, int a17, int a18, int a19, __int16 a20, uint64_t a21, __int16 a22, uint64_t a23, __int16 a24, uint64_t a25, __int16 a26, uint64_t a27, __int16 a28, uint64_t a29, __int16 a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_369();
  CMBaseObjectGetDerivedStorage();
  v66 = OUTLINED_FUNCTION_337_0();
  if (v66)
  {
    v67 = v66;
    if (*(v64 + 2008) == 0.0)
    {
      *(v64 + 2008) = CFAbsoluteTimeGetCurrent();
    }

    updated = playerfig_UpdateAudioSessionPreferredDeviceFormat();
    playerfig_UpdateAudioSessionPreferredDeviceSampleRate();
    v69 = playerfig_UpdateAudioSessionPreferredNumberOfAudioOutputChannels();
    v70 = (updated | v69) != 0;
    if (dword_1EAF16A10)
    {
      v72 = (updated | v69) != 0;
      OUTLINED_FUNCTION_147();
      v71 = OUTLINED_FUNCTION_126();
      os_log_type_enabled(v71, type);
      OUTLINED_FUNCTION_70();
      if (v65)
      {
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_114();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_35();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_454();
      v70 = v72;
    }

    if (v63)
    {
      *v63 = v70;
    }

    itemfig_InformStakeholdersOfBestAvailableAudioContentType(v62);
    CFRelease(v67);
  }

  OUTLINED_FUNCTION_252();
}

uint64_t itemfig_reportingAgentTeardown()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 1952);
  if (v1)
  {
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v2)
    {
      v2(v1);
    }
  }

  v3 = *(DerivedStorage + 1960);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 1960) = 0;
  }

  v4 = *(DerivedStorage + 1952);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 1952) = 0;
  }

  return FigSimpleMutexUnlock();
}

void itemfig_timebaseEffectiveRateChanged()
{
  OUTLINED_FUNCTION_163_0();
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (v1)
  {
    CFRetain(v0);
    OUTLINED_FUNCTION_120_0();
    FigDeferNotificationToDispatchQueue();

    CFRelease(v1);
  }
}

void itemfig_assetPropertyRevised(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  CFDictionaryGetValue(a5, @"assetPayload_Property");
  if (v7)
  {
    if (FigCFEqual())
    {
      OUTLINED_FUNCTION_104(MEMORY[0x1E6960C70]);
      Duration = itemfig_GetDuration(a2, &v98);
      OUTLINED_FUNCTION_660(Duration, v9, v10, v11, v12, v13, v14, v15, value, v88, cf, v93, v94, v95, v96.value, *&v96.timescale, v96.epoch, v97, *&v98.value);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v17 = CMBaseObjectGetDerivedStorage();
      cf = 0;
      v18 = *MEMORY[0x1E695E480];
      v19 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf);
      v28 = MEMORY[0x1E6960CC0];
      if (!v19)
      {
        v29 = cf;
        Count = *(DerivedStorage + 904);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
          v31 = Count > 0;
        }

        else
        {
          v31 = 0;
        }

        OUTLINED_FUNCTION_376_0(Count, v20, v21, v22, v23, v24, v25, v26, valuea, v89, cf, v93, v94, v95, v27, v96.value);
        time2 = *v28;
        v32 = CMTimeCompare(&time1, &time2);
        if (v32 >= 1)
        {
          if (v31)
          {
            OUTLINED_FUNCTION_376_0(v32, v33, *(DerivedStorage + 904), v34, v35, v36, v37, v38, valuea, v89, cf, v93, v94, v95, v39, v96.value);
            FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(v29, &time1, v40);
          }

          if (FigUseVideoReceiverForCALayer())
          {
            FigSimpleMutexLock();
            for (i = 0; ; ++i)
            {
              v80 = *(v17 + 256);
              if (v80)
              {
                v80 = CFArrayGetCount(v80);
              }

              if (i >= v80)
              {
                break;
              }

              ValueAtIndex = CFArrayGetValueAtIndex(*(v17 + 256), i);
              v82 = *(CMBaseObjectGetVTable() + 24);
              if (v82)
              {
                v83 = *(v82 + 16);
                if (v83)
                {
                  time1 = v96;
                  v83(ValueAtIndex, &time1, v29);
                }
              }
            }
          }

          else
          {
            FigSimpleMutexLock();
            v41 = *(v17 + 216);
            if (v41 && CFArrayGetCount(v41) >= 1)
            {
              v42 = *(v17 + 216);
              time1 = **&MEMORY[0x1E6960C88];
              FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(v29, &time1, v42);
            }
          }

          FigSimpleMutexUnlock();
        }
      }

      FigDeferredTransactionCommit(cf, 0);
      v50 = cf;
      if (cf)
      {
        CFRelease(cf);
      }

      OUTLINED_FUNCTION_385_0(v50, v43, v44, v45, v46, v47, v48, v49, valuea, v89, cf, v93, v94, v95, v96.value, *&v96.timescale, v96.epoch, v97, *&v98.value);
      v51 = CMBaseObjectGetDerivedStorage();
      v102[0] = 0;
      OUTLINED_FUNCTION_361_0(v51, v52, v53, v54, v55, v56, v57, v58, valueb, v90, v59, cf);
      v60 = CMTimeCopyAsDictionary(&time1, v18);
      OUTLINED_FUNCTION_361_0(v60, v61, v62, v63, v64, v65, v66, v67, valuec, v91, v68, cf);
      time2 = *v28;
      v100 = 0;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        itemfig_getVideoTargetTableForVideoTrack(a2, &v100);
        if (v100)
        {
          FigImageQueueTableCopyFigImageQueueArray(v100, v102);
          if (v102[0])
          {
            FigImageQueueArraySetProperty();
            if (v102[0])
            {
              CFRelease(v102[0]);
            }
          }
        }
      }

      if (v60)
      {
        CFRelease(v60);
      }

      if ((v98.flags & 1) != 0 && (time1 = v98, (time1.value = CMTimeCopyAsDictionary(&time1, v18)) != 0))
      {
        v69 = CFDictionaryCreate(v18, &kFigPlaybackItemParameter_CurrentDuration, &time1, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFRelease(time1.value);
      }

      else
      {
        v69 = 0;
      }

      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_333();
      CMNotificationCenterPostNotification();
      if (v69)
      {
        CFRelease(v69);
      }

      v70 = OUTLINED_FUNCTION_298();
      NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(v70, v71, v72, v73, v74, v75, v76, v77, @"SeekableTimeIntervals", 0);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_171_0();
      FigDispatchAsyncPostNotification();
      if (NotificationPayloadForProperties)
      {
        CFRelease(NotificationPayloadForProperties);
      }
    }

    CFRelease(v7);
  }
}

void itemfig_retrieveAssetBasicsIfReady()
{
  OUTLINED_FUNCTION_298_0();
  CMBaseObjectGetDerivedStorage();
  v1 = OUTLINED_FUNCTION_283_0();
  CMBaseObjectGetDerivedStorage();
  if (v1)
  {
    if (!*(v0 + 1280) && *(*(CMBaseObjectGetVTable() + 16) + 8))
    {
      v2 = OUTLINED_FUNCTION_292();
      v3(v2);
    }

    CFRelease(v1);
  }

  OUTLINED_FUNCTION_297_0();
}

uint64_t itemfig_postReadyForInspectionPayloadBecauseAssetPropertyLoadedAndBasicsReady(uint64_t a1, const void *a2)
{
  values[16] = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_283_0();
  CMBaseObjectGetDerivedStorage();
  if (!v4)
  {
    return 0;
  }

  if (*(v2 + 1280))
  {
    v34 = v4;
    if (*(v2 + 2008) == 0.0)
    {
      *(v2 + 2008) = CFAbsoluteTimeGetCurrent();
    }

    v5 = OUTLINED_FUNCTION_195_0();
    v7 = CFEqual(v5, v6);
    v8 = MEMORY[0x1E695E480];
    if (!v7 && !CFEqual(a2, @"Duration") && !CFEqual(a2, @"assetProperty_InitialSamples") && !CFEqual(a2, @"iTunesGaplessInfo") && !CFEqual(a2, @"assetProperty_CPEProtector"))
    {
      v13 = 0;
LABEL_36:
      if (CFEqual(a2, @"assetProperty_InitialSamples"))
      {
        v40 = 0;
        number = 0;
        v18 = *(v2 + 1008);
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v19)
        {
          v19(v18, &v40);
          if (v40 >= 1)
          {
            for (i = 0; i < v40; ++i)
            {
              v39 = 0;
              v37 = 0;
              v38 = 1061109567;
              if (*(*(CMBaseObjectGetVTable() + 16) + 48))
              {
                v21 = OUTLINED_FUNCTION_624();
                v22(v21);
              }

              FigTrackReaderGetFigBaseObject(v39);
              if (*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                v23 = OUTLINED_FUNCTION_415_0();
                if (!v24(v23))
                {
                  if (number)
                  {
                    valuePtr = 0.0;
                    CFNumberGetValue(number, kCFNumberFloat32Type, &valuePtr);
                    if (dword_1EAF16A10)
                    {
                      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                      OUTLINED_FUNCTION_425();
                      if (v27)
                      {
                        v28 = v26;
                      }

                      else
                      {
                        v28 = 0;
                      }

                      if (v28)
                      {
                        v29 = a1;
                        if (a1)
                        {
                          v30 = (CMBaseObjectGetDerivedStorage() + 2096);
                          v29 = a1;
                        }

                        else
                        {
                          v30 = "";
                        }

                        v31 = "samples per second";
                        if (v38 == 1986618469)
                        {
                          v31 = "frames per second";
                        }

                        *cf = 136317698;
                        *&cf[4] = "itemfig_postReadyForInspectionPayloadBecauseAssetPropertyLoadedAndBasicsReady";
                        v43 = 2048;
                        v44 = v29;
                        v45 = 2082;
                        v46 = v30;
                        v47 = 1024;
                        v48 = v37;
                        v49 = 1024;
                        v50 = HIBYTE(v38);
                        v51 = 1024;
                        v52 = BYTE2(v38);
                        v53 = 1024;
                        v54 = BYTE1(v38);
                        v55 = 1024;
                        v56 = v38;
                        v57 = 2048;
                        v58 = v39;
                        v59 = 2048;
                        v60 = valuePtr;
                        v61 = 2082;
                        v62 = v31;
                        OUTLINED_FUNCTION_66();
                        OUTLINED_FUNCTION_35();
                        _os_log_send_and_compose_impl();
                      }

                      OUTLINED_FUNCTION_7();
                      OUTLINED_FUNCTION_635();
                    }

                    CFRelease(number);
                  }
                }
              }

              if (v39)
              {
                CFRelease(v39);
              }
            }
          }
        }
      }

      if (v13)
      {
        CFRelease(v13);
      }

      v32 = 0;
      v4 = v34;
      goto LABEL_65;
    }

    v9 = OUTLINED_FUNCTION_195_0();
    if (CFEqual(v9, v10))
    {
      v11 = &kFigPlaybackItemProperty_Lyrics;
    }

    else if (CFEqual(a2, @"Duration"))
    {
      v11 = &kFigPlaybackItemProperty_AccurateDuration;
    }

    else if (CFEqual(a2, @"assetProperty_InitialSamples"))
    {
      v11 = &kFigPlaybackItemProperty_InitialSamples;
    }

    else if (CFEqual(a2, @"iTunesGaplessInfo"))
    {
      v11 = &kFigPlaybackItemProperty_iTunesGaplessInfo;
    }

    else
    {
      if (!CFEqual(a2, @"assetProperty_CPEProtector"))
      {
        if (!CFEqual(a2, @"assetProperty_ContentByteStream") && !CFEqual(a2, @"assetProperty_FormatReader") && !CFEqual(a2, @"assetProperty_Tracks"))
        {
          CFEqual(a2, @"MediaSelectionArray");
        }

        goto LABEL_30;
      }

      v11 = &kFigPlaybackItemProperty_CPEProtector;
    }

    values[0] = *v11;
    if (values[0])
    {
      v12 = *v8;
      *cf = CFArrayCreate(*v8, values, 1, MEMORY[0x1E695E9C0]);
      v13 = CFDictionaryCreate(v12, &kFigPlaybackItemParameter_Properties, cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (*cf)
      {
        CFRelease(*cf);
      }

      if (v13)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_171_0();
        FigDispatchAsyncPostNotification();
        FigSimpleMutexLock();
        v14 = *(v2 + 1241);
        *(v2 + 1241) = 256;
        FigSimpleMutexUnlock();
        v15 = v14 == 0;
LABEL_32:
        v16 = OUTLINED_FUNCTION_195_0();
        if (CFEqual(v16, v17))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
        }

        if (!v15)
        {
          itemfig_postSelectedMediaOptionsDidChangeNotification();
        }

        goto LABEL_36;
      }

LABEL_31:
      v15 = 1;
      goto LABEL_32;
    }

LABEL_30:
    v13 = 0;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_376();
  v32 = FigSignalErrorAtGM();
LABEL_65:
  CFRelease(v4);
  return v32;
}

void itemfig_DeferredTimebaseEffectiveRateChanged()
{
  OUTLINED_FUNCTION_645();
  v4 = OUTLINED_FUNCTION_337_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  if (v4)
  {
    v6 = DerivedStorage;
    FigSimpleMutexLock();
    itemfig_getVideoTargetTableForVideoTrack(v0, &v22);
    if (v22)
    {
      FigImageQueueTableRespondToTimebaseRateChange(v22, *(v1 + 328));
    }

    v7 = *(v1 + 1088);
    if (v7 && CFArrayGetCount(v7) >= 1)
    {
      OUTLINED_FUNCTION_332_0();
      do
      {
        cf = 0;
        FigCFArrayGetInt32AtIndex();
        itemfig_getTrackStorage(v0, 0, &cf);
        v8 = cf;
        if (cf)
        {
          v9 = *(cf + 28);
          if (v9)
          {
            if (CFArrayGetCount(v9) >= 1)
            {
              for (i = 0; ; ++i)
              {
                Count = *(v8 + 28);
                if (Count)
                {
                  Count = CFArrayGetCount(Count);
                }

                if (i >= Count)
                {
                  break;
                }

                ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 28), i);
                FigImageQueueTableRespondToTimebaseRateChange(ValueAtIndex, *(v1 + 328));
              }
            }
          }
        }

        ++v3;
      }

      while (v3 != v2);
    }

    v13 = *(v1 + 856);
    if (v13 && CFArrayGetCount(v13) >= 1)
    {
      OUTLINED_FUNCTION_332_0();
      do
      {
        v14 = CFArrayGetValueAtIndex(*(v1 + 856), v3);
        FigImageQueueTableRespondToTimebaseRateChange(v14, *(v1 + 328));
        OUTLINED_FUNCTION_220_0();
      }

      while (!v15);
    }

    if (!*(v1 + 2216))
    {
      Rate = CMTimebaseGetRate(*(v1 + 328));
      if (Rate != 0.0)
      {
        itemfig_UpdateLastPlayedOutOrLastPlayedDateIfNecessary();
        *(v1 + 2216) = 1;
      }
    }

    if (CFArrayGetCount(*(v6 + 528)) >= 1 && CFArrayGetValueAtIndex(*(v6 + 528), 0) == v0)
    {
      v17 = CMTimebaseGetRate(*(v1 + 328));
      v18 = *(v1 + 2048);
      if (v18 != v17)
      {
        cf = 0;
        if (v0)
        {
          if (*(CMBaseObjectGetDerivedStorage() + 2232))
          {
            AllocatorForMedia = FigGetAllocatorForMedia();
            if (!FigMetricItemRateChangeEventCreate(AllocatorForMedia, 0, &cf, v17, v18))
            {
              if (*(*(CMBaseObjectGetVTable() + 16) + 40))
              {
                v20 = OUTLINED_FUNCTION_249();
                v21(v20);
              }
            }
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      itemfig_reportingAgentReportRateChanged();
    }

    FigSimpleMutexUnlock();
  }

  if (v0)
  {
    CFRelease(v0);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t itemfig_assureFormatReader(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = itemfig_setFormatReader(a1);
  FigSimpleMutexUnlock();
  return v2;
}

void itemfig_createTrackIDArray(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, CFIndex numValues, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_845();
  a20 = v23;
  a21 = v24;
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!itemfig_assureBasicsReadyForInspection(v21))
  {
    v26 = *(DerivedStorage + 1008);
    v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v27)
    {
      numValues = 0;
      if (!v27(v26, &numValues))
      {
        OUTLINED_FUNCTION_185_0();
        v30 = malloc_type_calloc(v28, 8uLL, v29);
        if (v30)
        {
          v31 = v30;
          v32 = numValues;
          v33 = *MEMORY[0x1E695E480];
          if (numValues < 1)
          {
LABEL_11:
            *v22 = CFArrayCreate(v33, v31, v32, MEMORY[0x1E695E9C0]);
          }

          else
          {
            v34 = 0;
            while (1)
            {
              a10 = 0;
              if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
              {
                break;
              }

              v35 = OUTLINED_FUNCTION_195_0();
              v37 = v36(v35);
              if (v37)
              {
                break;
              }

              v39 = OUTLINED_FUNCTION_441_0(v37, v38, &a10);
              v31[v34] = v39;
              if (!v39)
              {
                OUTLINED_FUNCTION_239();
                FigSignalErrorAtGM();
                break;
              }

              ++v34;
              v32 = numValues;
              if (v34 >= numValues)
              {
                goto LABEL_11;
              }
            }
          }

          v40 = numValues;
          if (numValues >= 1)
          {
            v41 = 0;
            do
            {
              v42 = v31[v41];
              if (v42)
              {
                CFRelease(v42);
                v40 = numValues;
              }

              ++v41;
            }

            while (v41 < v40);
          }

          free(v31);
        }

        else
        {
          OUTLINED_FUNCTION_239();
          FigSignalErrorAtGM();
        }
      }
    }
  }

  OUTLINED_FUNCTION_843();
}

uint64_t itemfig_copyMetadata()
{
  OUTLINED_FUNCTION_471();
  v3 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage && v0)
  {
    v6 = DerivedStorage;
    result = itemfig_assureBasicsReadyForInspection(v3);
    if (!result)
    {
      v7 = *(v6 + 126);

      return FigMetadataCopyMovieMetadata(v7, v1, v0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM();
  }

  return result;
}

void itemfig_updatePreferredMaximumBufferDuration(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 1424);
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v5)
  {
    v6 = v5;
    *(DerivedStorage + 1424) = a2;
    if (v4 != a2)
    {
      if (*(DerivedStorage + 1456))
      {
        Mutable = 0;
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetValue();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_426();
      CMNotificationCenterPostNotification();
      playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer();
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    CFRelease(v6);
  }
}

uint64_t itemfig_startCachePrimingWithDownloadToken()
{
  OUTLINED_FUNCTION_565();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  valuePtr = 0;
  if (*(DerivedStorage + 1384))
  {
    OUTLINED_FUNCTION_303();
    goto LABEL_14;
  }

  v2 = DerivedStorage;
  CFNumberGetValue(v0, kCFNumberSInt64Type, &valuePtr);
  v3 = FigAssetCopyAssetWithDownloadToken(valuePtr, &v10);
  if (v3)
  {
LABEL_8:
    v8 = v3;
    goto LABEL_10;
  }

  FigAssetGetCMBaseObject(v10);
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v4 = OUTLINED_FUNCTION_292();
    v3 = v5(v4);
    if (v3)
    {
      goto LABEL_8;
    }

    FigAssetGetCMBaseObject(*(v2 + 1256));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v6 = OUTLINED_FUNCTION_292();
      v3 = v7(v6);
      if (!v3)
      {
        OUTLINED_FUNCTION_303();
LABEL_14:
        v3 = FigSignalErrorAtGM();
        goto LABEL_8;
      }

      goto LABEL_8;
    }
  }

  v8 = 4294954514;
LABEL_10:
  if (v10)
  {
    CFRelease(v10);
  }

  return v8;
}

uint64_t itemfig_setVideoCompositionProperties(uint64_t a1)
{
  v269 = *MEMORY[0x1E69E9840];
  v262 = 0;
  cf = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_376();
    Basic = FigSignalErrorAtGM();
    v252 = 0;
    goto LABEL_241;
  }

  CMBaseObjectGetDerivedStorage();
  v5 = OUTLINED_FUNCTION_282_0();
  if (!v5)
  {
    v252 = 0;
    Basic = 0;
    goto LABEL_241;
  }

  v259 = v3;
  v260 = v5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = OUTLINED_FUNCTION_732();
  if (!CFDictionaryContainsKey(v7, v8))
  {
    goto LABEL_13;
  }

  v9 = OUTLINED_FUNCTION_732();
  Value = CFDictionaryGetValue(v9, v10);
  CMTimeMakeFromDictionary(&time1[0].start, Value);
  valuePtr.value = time1[0].start.value;
  flags = time1[0].start.flags;
  valuePtr.timescale = time1[0].start.timescale;
  if ((time1[0].start.flags & 0x1D) != 1)
  {
    goto LABEL_261;
  }

  epoch = time1[0].start.epoch;
  time1[0].start.value = valuePtr.value;
  time1[0].start.timescale = valuePtr.timescale;
  OUTLINED_FUNCTION_386(MEMORY[0x1E6960CC0]);
  if (CMTimeCompare(&time1[0].start, &time2) < 1 || epoch)
  {
    goto LABEL_261;
  }

  *&time1[0].start.value = *(v1 + 692);
  time1[0].start.epoch = *(v1 + 708);
  time2.value = valuePtr.value;
  time2.timescale = valuePtr.timescale;
  time2.flags = flags;
  time2.epoch = 0;
  if (CMTimeCompare(&time1[0].start, &time2) && (*(v1 + 692) = valuePtr.value, *(v1 + 700) = valuePtr.timescale, *(v1 + 704) = flags, *(v1 + 708) = 0, *(v1 + 352)))
  {
    OUTLINED_FUNCTION_250_0();
    if (v14)
    {
      OUTLINED_FUNCTION_412_0();
      v15 = OUTLINED_FUNCTION_276_0();
      v23 = OUTLINED_FUNCTION_239_0(v15, v16, v17, v18, v19, v20, v21, v22, v255, v256, v257, *(&v257 + 1), v258, v3, v260, type, BYTE4(type), v262, cf, time.value);
      if (OUTLINED_FUNCTION_71_0(v23))
      {
        LODWORD(time2.value) = 136315138;
        OUTLINED_FUNCTION_27_0();
        OUTLINED_FUNCTION_51_0();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_323_0();
      }

      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_449();
    }

    else
    {
      flags = 1;
    }
  }

  else
  {
LABEL_13:
    flags = 0;
  }

  v24 = OUTLINED_FUNCTION_732();
  if (!CFDictionaryContainsKey(v24, v25))
  {
    goto LABEL_25;
  }

  v26 = OUTLINED_FUNCTION_732();
  v28 = CFDictionaryGetValue(v26, v27);
  if (!v28 || (v29 = v28, v30 = CFGetTypeID(v28), v30 != CFNumberGetTypeID()))
  {
LABEL_261:
    OUTLINED_FUNCTION_76_0();
LABEL_268:
    Duration = FigSignalErrorAtGM();
    goto LABEL_269;
  }

  valuePtr.value = 0;
  CFNumberGetValue(v29, kCFNumberCFIndexType, &valuePtr);
  if (*(v1 + 716) != LODWORD(valuePtr.value))
  {
    *(v1 + 716) = valuePtr.value;
    if (*(v1 + 352))
    {
      OUTLINED_FUNCTION_250_0();
      if (v14)
      {
        OUTLINED_FUNCTION_412_0();
        v31 = OUTLINED_FUNCTION_276_0();
        v39 = OUTLINED_FUNCTION_239_0(v31, v32, v33, v34, v35, v36, v37, v38, v255, v256, v257, *(&v257 + 1), v258, v259, v260, type, BYTE4(type), v262, cf, time.value);
        if (OUTLINED_FUNCTION_71_0(v39))
        {
          LODWORD(time2.value) = 136315138;
          OUTLINED_FUNCTION_27_0();
          OUTLINED_FUNCTION_51_0();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_323_0();
        }

        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_449();
      }

      else
      {
        flags = 1;
      }
    }
  }

LABEL_25:
  v40 = OUTLINED_FUNCTION_732();
  if (CFDictionaryContainsKey(v40, v41))
  {
    *&valuePtr.value = 0uLL;
    v42 = OUTLINED_FUNCTION_732();
    v44 = CFDictionaryGetValue(v42, v43);
    if (!v44 || (v45 = v44, v46 = CFGetTypeID(v44), v46 != CFDictionaryGetTypeID()) || !CGSizeMakeWithDictionaryRepresentation(v45, &valuePtr))
    {
LABEL_267:
      OUTLINED_FUNCTION_76_0();
      goto LABEL_268;
    }

    FigSimpleMutexLock();
    v47 = *(v1 + 720) == *&valuePtr.value && *(v1 + 728) == *&valuePtr.timescale;
    if (v47)
    {
      FigSimpleMutexUnlock();
    }

    else
    {
      *(v1 + 720) = *&valuePtr.value;
      v48 = *(v1 + 352);
      FigSimpleMutexUnlock();
      if (v48)
      {
        OUTLINED_FUNCTION_250_0();
        if (v14)
        {
          OUTLINED_FUNCTION_412_0();
          v49 = OUTLINED_FUNCTION_276_0();
          os_log_type_enabled(v49, BYTE4(type));
          OUTLINED_FUNCTION_70();
          if (v2)
          {
            flags = CMBaseObjectGetDerivedStorage() + 972;
            CMBaseObjectGetDerivedStorage();
            LODWORD(time2.value) = 136316162;
            OUTLINED_FUNCTION_60_0();
            OUTLINED_FUNCTION_51_0();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_13_0();
          OUTLINED_FUNCTION_454();
        }

        else
        {
          flags = 1;
        }
      }
    }
  }

  v50 = OUTLINED_FUNCTION_732();
  if (CFDictionaryContainsKey(v50, v51))
  {
    v52 = OUTLINED_FUNCTION_732();
    v54 = CFDictionaryGetValue(v52, v53);
    v55 = v54;
    if (v54)
    {
      v56 = CFGetTypeID(v54);
      if (v56 != CFArrayGetTypeID())
      {
        v55 = 0;
      }
    }

    FigSimpleMutexLock();
    if (FigCFEqual())
    {
      FigSimpleMutexUnlock();
    }

    else
    {
      v80 = *(v1 + 776);
      *(v1 + 776) = v55;
      if (v55)
      {
        CFRetain(v55);
      }

      if (v80)
      {
        CFRelease(v80);
      }

      v81 = *(v1 + 352);
      FigSimpleMutexUnlock();
      if (v81)
      {
        OUTLINED_FUNCTION_250_0();
        if (v14)
        {
          OUTLINED_FUNCTION_227_0();
          v82 = OUTLINED_FUNCTION_178_0();
          OUTLINED_FUNCTION_426_0(v82, v83, v84, v85, v86, v87, v88, v89, v255, v256, v257, *(&v257 + 1), v258, v259, v260, type, v262, cf, time.value, *&time.timescale, time.epoch, v265, valuePtr.value);
          OUTLINED_FUNCTION_70();
          if (v2)
          {
            flags = CMBaseObjectGetDerivedStorage() + 972;
            CMBaseObjectGetDerivedStorage();
            LODWORD(time2.value) = 136316162;
            OUTLINED_FUNCTION_60_0();
            OUTLINED_FUNCTION_51_0();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_13_0();
          OUTLINED_FUNCTION_454();
        }

        else
        {
          flags = 1;
        }
      }
    }
  }

  v57 = OUTLINED_FUNCTION_732();
  if (CFDictionaryContainsKey(v57, v58))
  {
    v59 = OUTLINED_FUNCTION_732();
    v61 = CFDictionaryGetValue(v59, v60);
    v62 = v61;
    if (v61)
    {
      v63 = CFGetTypeID(v61);
      if (v63 != CFArrayGetTypeID())
      {
        v62 = 0;
      }
    }

    FigSimpleMutexLock();
    if (FigCFEqual())
    {
      FigSimpleMutexUnlock();
    }

    else
    {
      v90 = *(v1 + 784);
      *(v1 + 784) = v62;
      if (v62)
      {
        CFRetain(v62);
      }

      if (v90)
      {
        CFRelease(v90);
      }

      v91 = *(v1 + 352);
      FigSimpleMutexUnlock();
      if (v91)
      {
        OUTLINED_FUNCTION_250_0();
        if (v14)
        {
          OUTLINED_FUNCTION_227_0();
          v92 = OUTLINED_FUNCTION_178_0();
          OUTLINED_FUNCTION_426_0(v92, v93, v94, v95, v96, v97, v98, v99, v255, v256, v257, *(&v257 + 1), v258, v259, v260, type, v262, cf, time.value, *&time.timescale, time.epoch, v265, valuePtr.value);
          OUTLINED_FUNCTION_70();
          if (v2)
          {
            flags = CMBaseObjectGetDerivedStorage() + 972;
            CMBaseObjectGetDerivedStorage();
            LODWORD(time2.value) = 136316162;
            OUTLINED_FUNCTION_60_0();
            OUTLINED_FUNCTION_51_0();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_13_0();
          OUTLINED_FUNCTION_454();
        }

        else
        {
          flags = 1;
        }
      }
    }
  }

  v64 = OUTLINED_FUNCTION_732();
  if (CFDictionaryContainsKey(v64, v65))
  {
    LODWORD(valuePtr.value) = 1065353216;
    v66 = OUTLINED_FUNCTION_732();
    v68 = CFDictionaryGetValue(v66, v67);
    if (!v68)
    {
      goto LABEL_271;
    }

    v69 = v68;
    v70 = CFGetTypeID(v68);
    if (v70 != CFNumberGetTypeID())
    {
      goto LABEL_271;
    }

    CFNumberGetValue(v69, kCFNumberFloatType, &valuePtr);
    if (*(v1 + 736) != *&valuePtr.value)
    {
      *(v1 + 736) = valuePtr.value;
      if (*(v1 + 352))
      {
        OUTLINED_FUNCTION_250_0();
        if (v14)
        {
          OUTLINED_FUNCTION_412_0();
          v71 = OUTLINED_FUNCTION_276_0();
          v79 = OUTLINED_FUNCTION_239_0(v71, v72, v73, v74, v75, v76, v77, v78, v255, v256, v257, *(&v257 + 1), v258, v259, v260, type, BYTE4(type), v262, cf, time.value);
          if (OUTLINED_FUNCTION_71_0(v79))
          {
            LODWORD(time2.value) = 136315138;
            OUTLINED_FUNCTION_27_0();
            OUTLINED_FUNCTION_51_0();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_323_0();
          }

          OUTLINED_FUNCTION_13_0();
          OUTLINED_FUNCTION_449();
        }

        else
        {
          flags = 1;
        }
      }
    }
  }

  v100 = OUTLINED_FUNCTION_732();
  v102 = CFDictionaryContainsKey(v100, v101);
  v103 = MEMORY[0x1E695E738];
  if (v102)
  {
    v104 = OUTLINED_FUNCTION_732();
    CFDictionaryGetValue(v104, v105);
    OUTLINED_FUNCTION_108_0();
    if (!FigCFEqual())
    {
      if (@"VideoCompositorColorPrimaries")
      {
        v145 = CFGetTypeID(@"VideoCompositorColorPrimaries");
        if (v145 != CFStringGetTypeID())
        {
          goto LABEL_271;
        }

        v146 = *(v1 + 744);
        *(v1 + 744) = @"VideoCompositorColorPrimaries";
        CFRetain(@"VideoCompositorColorPrimaries");
        if (!v146)
        {
          goto LABEL_128;
        }
      }

      else
      {
        v146 = *(v1 + 744);
        *(v1 + 744) = 0;
        if (!v146)
        {
LABEL_128:
          if (*(v1 + 352))
          {
            if (dword_1EAF16A10 < 2)
            {
              flags = 1;
            }

            else
            {
              OUTLINED_FUNCTION_227_0();
              v147 = OUTLINED_FUNCTION_178_0();
              v155 = OUTLINED_FUNCTION_152_0(v147, v148, v149, v150, v151, v152, v153, v154, v255, v256, v257, *(&v257 + 1), v258, v259, v260, type, v262, cf, time.value, *&time.timescale, time.epoch, v265, valuePtr.value);
              if (OUTLINED_FUNCTION_71_0(v155))
              {
                LODWORD(time2.value) = 136315138;
                OUTLINED_FUNCTION_27_0();
                OUTLINED_FUNCTION_51_0();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_321_0();
              }

              OUTLINED_FUNCTION_13_0();
              OUTLINED_FUNCTION_449();
            }
          }

          goto LABEL_82;
        }
      }

      CFRelease(v146);
      goto LABEL_128;
    }
  }

LABEL_82:
  v106 = OUTLINED_FUNCTION_732();
  if (!CFDictionaryContainsKey(v106, v107))
  {
    goto LABEL_84;
  }

  v108 = OUTLINED_FUNCTION_732();
  CFDictionaryGetValue(v108, v109);
  OUTLINED_FUNCTION_108_0();
  if (FigCFEqual())
  {
    goto LABEL_84;
  }

  if (@"VideoCompositorColorYCbCrMatrix")
  {
    v156 = CFGetTypeID(@"VideoCompositorColorYCbCrMatrix");
    if (v156 != CFStringGetTypeID())
    {
      goto LABEL_271;
    }

    v157 = *(v1 + 752);
    *(v1 + 752) = @"VideoCompositorColorYCbCrMatrix";
    CFRetain(@"VideoCompositorColorYCbCrMatrix");
    if (!v157)
    {
      goto LABEL_136;
    }

    goto LABEL_135;
  }

  v157 = *(v1 + 752);
  *(v1 + 752) = 0;
  if (v157)
  {
LABEL_135:
    CFRelease(v157);
  }

LABEL_136:
  if (*(v1 + 352))
  {
    if (dword_1EAF16A10 < 2)
    {
      flags = 1;
    }

    else
    {
      OUTLINED_FUNCTION_227_0();
      v158 = OUTLINED_FUNCTION_178_0();
      v166 = OUTLINED_FUNCTION_152_0(v158, v159, v160, v161, v162, v163, v164, v165, v255, v256, v257, *(&v257 + 1), v258, v259, v260, type, v262, cf, time.value, *&time.timescale, time.epoch, v265, valuePtr.value);
      if (OUTLINED_FUNCTION_71_0(v166))
      {
        LODWORD(time2.value) = 136315138;
        OUTLINED_FUNCTION_27_0();
        OUTLINED_FUNCTION_51_0();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_321_0();
      }

      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_449();
    }
  }

LABEL_84:
  v110 = OUTLINED_FUNCTION_732();
  if (!CFDictionaryContainsKey(v110, v111))
  {
    goto LABEL_86;
  }

  v112 = OUTLINED_FUNCTION_732();
  CFDictionaryGetValue(v112, v113);
  OUTLINED_FUNCTION_108_0();
  if (FigCFEqual())
  {
    goto LABEL_86;
  }

  if (@"VideoCompositorColorTransferFunction")
  {
    v167 = CFGetTypeID(@"VideoCompositorColorTransferFunction");
    if (v167 != CFStringGetTypeID())
    {
      goto LABEL_271;
    }

    v168 = *(v1 + 760);
    *(v1 + 760) = @"VideoCompositorColorTransferFunction";
    CFRetain(@"VideoCompositorColorTransferFunction");
    if (!v168)
    {
      goto LABEL_144;
    }

    goto LABEL_143;
  }

  v168 = *(v1 + 760);
  *(v1 + 760) = 0;
  if (v168)
  {
LABEL_143:
    CFRelease(v168);
  }

LABEL_144:
  if (*(v1 + 352))
  {
    if (dword_1EAF16A10 < 2)
    {
      flags = 1;
    }

    else
    {
      OUTLINED_FUNCTION_227_0();
      v169 = OUTLINED_FUNCTION_178_0();
      v177 = OUTLINED_FUNCTION_152_0(v169, v170, v171, v172, v173, v174, v175, v176, v255, v256, v257, *(&v257 + 1), v258, v259, v260, type, v262, cf, time.value, *&time.timescale, time.epoch, v265, valuePtr.value);
      if (OUTLINED_FUNCTION_71_0(v177))
      {
        LODWORD(time2.value) = 136315138;
        OUTLINED_FUNCTION_27_0();
        OUTLINED_FUNCTION_51_0();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_321_0();
      }

      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_449();
    }
  }

LABEL_86:
  v114 = OUTLINED_FUNCTION_732();
  if (!CFDictionaryContainsKey(v114, v115))
  {
    goto LABEL_88;
  }

  v116 = OUTLINED_FUNCTION_732();
  CFDictionaryGetValue(v116, v117);
  OUTLINED_FUNCTION_108_0();
  if (FigCFEqual())
  {
    goto LABEL_88;
  }

  if (@"VideoCompositorHDRDisplayMetadataPolicy")
  {
    v178 = CFGetTypeID(@"VideoCompositorHDRDisplayMetadataPolicy");
    if (v178 == CFStringGetTypeID())
    {
      v179 = *(v1 + 768);
      *(v1 + 768) = @"VideoCompositorHDRDisplayMetadataPolicy";
      CFRetain(@"VideoCompositorHDRDisplayMetadataPolicy");
      if (!v179)
      {
        goto LABEL_152;
      }

      goto LABEL_151;
    }

LABEL_271:
    OUTLINED_FUNCTION_76_0();
    goto LABEL_268;
  }

  v179 = *(v1 + 768);
  *(v1 + 768) = 0;
  if (v179)
  {
LABEL_151:
    CFRelease(v179);
  }

LABEL_152:
  if (*(v1 + 352))
  {
    if (dword_1EAF16A10 < 2)
    {
      flags = 1;
    }

    else
    {
      OUTLINED_FUNCTION_227_0();
      v180 = OUTLINED_FUNCTION_178_0();
      v188 = OUTLINED_FUNCTION_152_0(v180, v181, v182, v183, v184, v185, v186, v187, v255, v256, v257, *(&v257 + 1), v258, v259, v260, type, v262, cf, time.value, *&time.timescale, time.epoch, v265, valuePtr.value);
      if (OUTLINED_FUNCTION_71_0(v188))
      {
        LODWORD(time2.value) = 136315138;
        OUTLINED_FUNCTION_27_0();
        OUTLINED_FUNCTION_51_0();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_321_0();
      }

      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_449();
    }
  }

LABEL_88:
  v118 = OUTLINED_FUNCTION_732();
  if (CFDictionaryContainsKey(v118, v119))
  {
    v120 = OUTLINED_FUNCTION_732();
    CFDictionaryGetValue(v120, v121);
    OUTLINED_FUNCTION_108_0();
    if (@"VideoCompositorSourceSampleDataTrackIDs")
    {
      v122 = CFGetTypeID(@"VideoCompositorSourceSampleDataTrackIDs");
      if (v122 != CFArrayGetTypeID())
      {
        goto LABEL_270;
      }
    }

    FigSimpleMutexLock();
    v123 = *(v1 + 800);
    *(v1 + 800) = @"VideoCompositorSourceSampleDataTrackIDs";
    if (@"VideoCompositorSourceSampleDataTrackIDs")
    {
      CFRetain(@"VideoCompositorSourceSampleDataTrackIDs");
    }

    if (v123)
    {
      CFRelease(v123);
    }

    FigSimpleMutexUnlock();
  }

  v124 = OUTLINED_FUNCTION_732();
  if (CFDictionaryContainsKey(v124, v125))
  {
    v126 = OUTLINED_FUNCTION_732();
    CFDictionaryGetValue(v126, v127);
    OUTLINED_FUNCTION_108_0();
    if (@"VideoCompositorSourceVideoTrackWindows")
    {
      v128 = CFGetTypeID(@"VideoCompositorSourceVideoTrackWindows");
      if (v128 != CFArrayGetTypeID())
      {
        goto LABEL_270;
      }
    }

    FigSimpleMutexLock();
    if (!FigVideoCompositionWindowSerializedConfigurationForTracksEqual(*(v1 + 808), @"VideoCompositorSourceVideoTrackWindows"))
    {
      v129 = *(v1 + 808);
      *(v1 + 808) = @"VideoCompositorSourceVideoTrackWindows";
      if (@"VideoCompositorSourceVideoTrackWindows")
      {
        CFRetain(@"VideoCompositorSourceVideoTrackWindows");
      }

      if (v129)
      {
        CFRelease(v129);
      }

      flags = 1;
    }

    FigSimpleMutexUnlock();
  }

  v130 = OUTLINED_FUNCTION_732();
  if (!CFDictionaryContainsKey(v130, v131))
  {
    goto LABEL_116;
  }

  v132 = OUTLINED_FUNCTION_732();
  CFDictionaryGetValue(v132, v133);
  OUTLINED_FUNCTION_108_0();
  if (@"VideoCompositorSourceSampleDataTrackWindows")
  {
    v134 = CFGetTypeID(@"VideoCompositorSourceSampleDataTrackWindows");
    if (v134 != CFArrayGetTypeID())
    {
LABEL_270:
      OUTLINED_FUNCTION_76_0();
      FigSignalErrorAtGM();
      Basic = 0;
      goto LABEL_240;
    }
  }

  FigSimpleMutexLock();
  if (!FigVideoCompositionWindowSerializedConfigurationForTracksEqual(*(v1 + 816), @"VideoCompositorSourceSampleDataTrackWindows"))
  {
    v135 = *(v1 + 816);
    *(v1 + 816) = @"VideoCompositorSourceSampleDataTrackWindows";
    if (@"VideoCompositorSourceSampleDataTrackWindows")
    {
      CFRetain(@"VideoCompositorSourceSampleDataTrackWindows");
    }

    if (v135)
    {
      CFRelease(v135);
    }

    flags = 1;
  }

  FigSimpleMutexUnlock();
LABEL_116:
  v136 = OUTLINED_FUNCTION_732();
  if (!CFDictionaryContainsKey(v136, v137))
  {
    Basic = 0;
    goto LABEL_205;
  }

  v138 = OUTLINED_FUNCTION_732();
  v140 = CFDictionaryGetValue(v138, v139);
  v141 = 0;
  Basic = 0;
  v143 = MEMORY[0x1E695E480];
  if (!v140 || v140 == *v103)
  {
    goto LABEL_156;
  }

  if (CFEqual(v140, @"VideoCompositor_Basic"))
  {
    goto LABEL_120;
  }

  if (CFEqual(v140, @"VideoCompositor_vImage"))
  {
LABEL_160:
    if (*(v1 + 664) == 3 && (v193 = *(v1 + 656)) != 0)
    {
      CFRetain(v193);
      OUTLINED_FUNCTION_367_0();
    }

    else
    {
      v194 = OUTLINED_FUNCTION_284_0();
      Basic = FigVideoCompositorCreatevImage(v194, v195, v196);
    }

    v189 = 3;
    goto LABEL_195;
  }

  if (CFEqual(v140, @"VideoCompositor_Metal"))
  {
    goto LABEL_178;
  }

  if (CFEqual(v140, @"VideoCompositor_OpenGL"))
  {
    goto LABEL_190;
  }

  if (!CFEqual(v140, @"VideoCompositor_DeviceSpecific"))
  {
    FigVideoCompositorGetTypeID();
    CFGetTypeID(v140);
    goto LABEL_259;
  }

  Basic = FigVideoCompositorCopyDeviceSpecificCompositorName(0, &v262);
  if (Basic)
  {
LABEL_260:
    v141 = CFRetain(v140);
LABEL_156:
    v189 = 0;
    cf = v141;
    goto LABEL_195;
  }

  if (FigCFEqual())
  {
LABEL_120:
    if (*(v1 + 664) == 1 && (v144 = *(v1 + 656)) != 0)
    {
      CFRetain(v144);
      OUTLINED_FUNCTION_367_0();
    }

    else
    {
      v190 = OUTLINED_FUNCTION_284_0();
      Basic = FigVideoCompositorCreateBasic(v190, v191, v192);
    }

    v189 = 1;
    goto LABEL_195;
  }

  if (FigCFEqual())
  {
    goto LABEL_160;
  }

  if (FigCFEqual())
  {
LABEL_178:
    if (*(v1 + 664) == 4 && (v197 = *(v1 + 656)) != 0)
    {
      CFRetain(v197);
      OUTLINED_FUNCTION_367_0();
    }

    else
    {
      Basic = FigVideoCompositorCreateMetal(*v143, &cf);
    }

    v189 = 4;
    goto LABEL_195;
  }

  if (!FigCFEqual())
  {
LABEL_259:
    Basic = 0;
    goto LABEL_260;
  }

LABEL_190:
  if (*(v1 + 664) == 2 && (v198 = *(v1 + 656)) != 0)
  {
    CFRetain(v198);
    OUTLINED_FUNCTION_367_0();
  }

  else
  {
    v199 = OUTLINED_FUNCTION_284_0();
    Basic = FigVideoCompositorCreateOpenGL(v199, v200, v201);
  }

  v189 = 2;
LABEL_195:
  v202 = cf;
  if (Basic || !cf)
  {
    if (Basic)
    {
      goto LABEL_205;
    }
  }

  else
  {
    LODWORD(time1[0].start.value) = 23;
    v203 = CFNumberCreate(*v143, kCFNumberSInt32Type, time1);
    FigBaseObject = FigVideoCompositorGetFigBaseObject(cf);
    v205 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v205)
    {
      v205(FigBaseObject, @"WorkerThreadPriority", v203);
    }

    if (v203)
    {
      CFRelease(v203);
    }

    v202 = cf;
  }

  if (*(v1 + 656) == v202)
  {
    goto LABEL_204;
  }

  FigSimpleMutexLock();
  v241 = *(v1 + 656);
  v242 = cf;
  *(v1 + 656) = cf;
  if (v242)
  {
    CFRetain(v242);
  }

  if (v241)
  {
    CFRelease(v241);
  }

  *(v1 + 664) = v189;
  itemfig_updateHasEnabledVideo();
  FigSimpleMutexUnlock();
  if (!*(v1 + 352))
  {
    goto LABEL_204;
  }

  if (dword_1EAF16A10 >= 2)
  {
    OUTLINED_FUNCTION_227_0();
    v243 = OUTLINED_FUNCTION_178_0();
    v251 = OUTLINED_FUNCTION_152_0(v243, v244, v245, v246, v247, v248, v249, v250, v255, v256, v257, *(&v257 + 1), v258, v259, v260, type, v262, cf, time.value, *&time.timescale, time.epoch, v265, valuePtr.value);
    if (OUTLINED_FUNCTION_71_0(v251))
    {
      LODWORD(time2.value) = 136315138;
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_51_0();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_321_0();
    }

    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_449();
LABEL_204:
    Basic = 0;
    goto LABEL_205;
  }

  Basic = 0;
  flags = 1;
LABEL_205:
  v206 = OUTLINED_FUNCTION_204_0();
  if (CFDictionaryContainsKey(v206, v207))
  {
    memset(&time2, 0, sizeof(time2));
    v208 = OUTLINED_FUNCTION_204_0();
    v210 = CFDictionaryGetValue(v208, v209);
    if (v210)
    {
      v211 = v210;
      v212 = CFGetTypeID(v210);
      if (v212 == CFArrayGetTypeID())
      {
        Duration = itemfig_GetDuration(a1, &time2);
        if (Duration)
        {
LABEL_269:
          Basic = Duration;
          goto LABEL_240;
        }

        valuePtr = time2;
        OUTLINED_FUNCTION_29();
        if (v47)
        {
          *&time1[0].start.value = *(v1 + 236);
          time1[0].start.epoch = *(v1 + 252);
          v257 = *MEMORY[0x1E6960CC0];
          *&time.value = *MEMORY[0x1E6960CC0];
          v214 = *(MEMORY[0x1E6960CC0] + 16);
          time.epoch = v214;
          if ((CMTimeCompare(&time1[0].start, &time) & 0x80000000) == 0)
          {
            OUTLINED_FUNCTION_29();
            if (v47)
            {
              OUTLINED_FUNCTION_196_0((v1 + 260));
              *&time.value = v257;
              time.epoch = v214;
              v215 = CMTimeCompare(&time1[0].start, &time);
              if (v215 >= 1)
              {
                OUTLINED_FUNCTION_418_0(v215, v216, v217, v218, v219, v220, v221, v222, v255, v256, v257, *(&v257 + 1), v258, v259, v260, type, v262, cf, time.value, *&time.timescale, time.epoch, v265, *&valuePtr.value);
                v223 = *(v1 + 252);
                *&time1[0].start.value = *(v1 + 236);
                *&time1[0].start.epoch = v223;
                *&time1[0].duration.timescale = *(v1 + 268);
                CMTimeFoldIntoRange(&valuePtr, &time, time1);
              }
            }
          }
        }

        OUTLINED_FUNCTION_196_0(MEMORY[0x1E6960CC0]);
        OUTLINED_FUNCTION_418_0(v224, v225, v226, v227, v228, v229, v230, v231, v255, v256, v257, *(&v257 + 1), v258, v259, v260, type, v262, cf, time.value, *&time.timescale, time.epoch, v265, *&valuePtr.value);
        if (FigVideoCompositionInstructionArrayIsValid(v211, time1, &time))
        {
          FigSimpleMutexLock();
          v232 = *(v1 + 680);
          *(v1 + 680) = v211;
          CFRetain(v211);
          if (v232)
          {
            CFRelease(v232);
          }

          FigSimpleMutexUnlock();
          v233 = *(v1 + 824);
          if (v233)
          {
            v234 = *(v1 + 352);
            if (v234)
            {
              if (!flags)
              {
                if (*(DerivedStorage + 48) == 0.0 || !*(v1 + 688))
                {
                  FigPlaybackBossResetCompositionInstructions(v234, v233, 1, 1);
                  if (dword_1EAF16A10 >= 2)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v240 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    if (OUTLINED_FUNCTION_109_0(v240))
                    {
                      LODWORD(time.value) = 136315138;
                      *(&time.value + 4) = "itemfig_setVideoCompositionProperties";
                      OUTLINED_FUNCTION_146();
                      OUTLINED_FUNCTION_38();
                      _os_log_send_and_compose_impl();
                    }

                    OUTLINED_FUNCTION_7();
                    OUTLINED_FUNCTION_524();
                  }

                  FigPlaybackBossRefreshVideoComposition(*(v1 + 352));
                }

                else
                {
                  OUTLINED_FUNCTION_439();
                  FigPlaybackBossResetCompositionInstructions(v235, v236, v237, v238);
                }
              }
            }
          }

          Basic = 0;
          goto LABEL_239;
        }
      }
    }

    goto LABEL_267;
  }

LABEL_239:
  if (!flags)
  {
LABEL_240:
    v252 = v260;
    goto LABEL_241;
  }

  *&time2.value = OUTLINED_FUNCTION_196_0(MEMORY[0x1E6960C70]);
  time2.epoch = v254;
  v252 = v260;
  OUTLINED_FUNCTION_160_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
LABEL_241:
  if (v262)
  {
    CFRelease(v262);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v252)
  {
    CFRelease(v252);
  }

  return Basic;
}

void itemfig_setTextMarkupArray(uint64_t a1, const __CFArray *a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_282_0();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (*(v2 + 1880) && !CFArrayGetCount(a2))
  {
    a2 = 0;
  }

  if (!FigCFEqual())
  {
    v6 = *(v2 + 1880);
    *(v2 + 1880) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (*(v2 + 352))
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v8 = *(DerivedStorage + 608);
      if (!v8)
      {
        goto LABEL_20;
      }

      if (*(DerivedStorage + 821))
      {
        FigRenderPipelineGetFigBaseObject(v8);
        if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          goto LABEL_20;
        }
      }

      else
      {
        FigRenderPipelineGetFigBaseObject(v8);
        if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          goto LABEL_20;
        }
      }

      v9 = OUTLINED_FUNCTION_188();
      v10(v9);
LABEL_20:
      v11 = *(v2 + 1904);
      if (v11)
      {
        FigOutOfBandTrackControllerSetProperty(v11, @"TextMarkupArray", *(v2 + 1880));
      }
    }
  }

  CFRelease(v5);
}

void itemfig_setTextHighlightArray(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_282_0();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (!FigCFEqual())
  {
    v6 = *(v2 + 1888);
    *(v2 + 1888) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (*(v2 + 352))
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v8 = *(DerivedStorage + 600);
      if (v8)
      {
        v9 = *(v2 + 1888);
        FigBaseObject = FigRenderPipelineGetFigBaseObject(v8);
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v11)
        {
          v11(FigBaseObject, @"CCRPP_TextHighlightArray", v9);
        }
      }

      v12 = *(DerivedStorage + 608);
      if (!v12)
      {
        goto LABEL_20;
      }

      if (*(DerivedStorage + 821))
      {
        FigRenderPipelineGetFigBaseObject(v12);
        if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          goto LABEL_20;
        }
      }

      else
      {
        FigRenderPipelineGetFigBaseObject(v12);
        if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          goto LABEL_20;
        }
      }

      v13 = OUTLINED_FUNCTION_188();
      v14(v13);
LABEL_20:
      v15 = *(v2 + 1904);
      if (v15)
      {
        FigOutOfBandTrackControllerSetProperty(v15, @"TextHighlightArray", *(v2 + 1888));
      }
    }
  }

  CFRelease(v5);
}

void itemfig_setLegibleOutputsDict(uint64_t a1, const __CFDictionary *a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_282_0();
  if (v4)
  {
    v5 = v4;
    if (a2 && !CFDictionaryGetCount(a2))
    {
      a2 = 0;
    }

    if (!FigCFEqual())
    {
      v6 = *(v2 + 1800);
      *(v2 + 1800) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      v7 = *(v2 + 1792);
      if (v7)
      {
        FigLegibleOutputManagerSetLegibleOutputsDict(v7, *(v2 + 1800));
      }

      if (*(v2 + 352))
      {
        playerfig_rebuildRenderPipelines_disturbIfInLameDuckGap(v5);
      }
    }

    CFRelease(v5);
  }
}

uint64_t itemfig_setMetadataOutputsDict(uint64_t a1, const __CFDictionary *a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_282_0();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Tag = FigXMLNodeGetTag(*(v2 + 1808));
  if (CFEqual(a2, Tag))
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    updated = FPSupport_UpdateMetadataOutputs(*(v2 + 1808), a2);
    if (updated)
    {
      v9 = updated;
      goto LABEL_8;
    }

    v8 = *(v2 + 352);
    FigSimpleMutexUnlock();
    if (v8)
    {
      playerfig_rebuildRenderPipelines_disturbIfInLameDuckGap(v5);
    }
  }

  v9 = 0;
LABEL_8:
  CFRelease(v5);
  return v9;
}

void itemfig_setRenderedLegibleOutputsDict(uint64_t a1, const __CFDictionary *a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_282_0();
  if (v4)
  {
    v5 = v4;
    if (a2 && !CFDictionaryGetCount(a2))
    {
      a2 = 0;
    }

    if (!FigCFEqual())
    {
      v6 = *(v2 + 1832);
      *(v2 + 1832) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      v7 = *(v2 + 1824);
      if (v7)
      {
        FigRenderedLegibleOutputManagerSetRenderedLegibleOutputsDict(v7, *(v2 + 1832));
      }

      if (*(v2 + 352))
      {
        playerfig_rebuildRenderPipelines_disturbIfInLameDuckGap(v5);
      }
    }

    CFRelease(v5);
  }
}

uint64_t itemfig_setSuppressLegibleRendering(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 1873);
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  *(DerivedStorage + 1873) = a2;
  if (*(DerivedStorage + 352))
  {
    v7 = v4 == a2;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
    OUTLINED_FUNCTION_355_0();
    OUTLINED_FUNCTION_357_0();
    OUTLINED_FUNCTION_160_0();
    playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
    v10 = v9;
  }

  CFRelease(v6);
  return v10;
}

void itemfig_updateVideoSlotUsage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_296_0();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  CMBaseObjectGetDerivedStorage();
  if (OUTLINED_FUNCTION_283_0())
  {
    v31 = *(v24 + 1040);
    if (v31)
    {
      a12 = 0;
      if (!itemfig_getTrackStorage(v30, v31, &a12))
      {
        v50 = a12;
        if (a12)
        {
          FigSimpleMutexLock();
          if (*(v24 + 1152) && v28 && CFArrayGetCount(v28) >= 1)
          {
            OUTLINED_FUNCTION_417_0();
            do
            {
              v34 = OUTLINED_FUNCTION_618();
              ValueAtIndex = CFArrayGetValueAtIndex(v34, v35);
              if (ValueAtIndex)
              {
                v37 = ValueAtIndex;
                v38 = CFGetTypeID(ValueAtIndex);
                if (v38 == CFDictionaryGetTypeID())
                {
                  Value = CFDictionaryGetValue(v37, @"SlotNumber");
                  v40 = CFDictionaryGetValue(v37, @"UsedForScrubbingOnly");
                  if (Value)
                  {
                    v41 = v40;
                    if (v40)
                    {
                      v42 = *(v24 + 1152);
                      v51.length = CFArrayGetCount(v42);
                      v51.location = 0;
                      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v42, v51, Value);
                      if (FirstIndexOfValue != -1)
                      {
                        v44 = CFArrayGetValueAtIndex(*(v24 + 1144), FirstIndexOfValue);
                        v45 = FigImageQueueTableCopyFigImageQueueForCAImageQueue(*(v50 + 48), v44);
                        if (v45)
                        {
                          v46 = v45;
                          FigBaseObject = FigImageQueueGetFigBaseObject(v45);
                          v48 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                          if (v48)
                          {
                            v48(FigBaseObject, @"ForScrubbingOnly", v41);
                          }

                          CFRelease(v46);
                        }
                      }
                    }
                  }
                }
              }

              OUTLINED_FUNCTION_377_0();
            }

            while (!v49);
          }

          FigSimpleMutexUnlock();
        }
      }
    }

    OUTLINED_FUNCTION_207_0();

    CFRelease(v32);
  }

  else
  {
    OUTLINED_FUNCTION_207_0();
  }
}

void itemfig_updateSpeedRampDataOnAllRenderPipelines()
{
  CMBaseObjectGetDerivedStorage();
  v1 = OUTLINED_FUNCTION_282_0();
  if (v1)
  {
    v2 = v1;
    CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v3 = *(v0 + 360);
    if (v3)
    {
      CFSetApplyFunction(v3, fp_updateRenderPipelineSpeedRamp, *(v0 + 2128));
    }

    FigSimpleMutexUnlock();

    CFRelease(v2);
  }
}

void itemfig_updateOverlapRangeOnAllRenderPipelines()
{
  CMBaseObjectGetDerivedStorage();
  v1 = OUTLINED_FUNCTION_282_0();
  if (v1)
  {
    v2 = v1;
    CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v3 = *(v0 + 360);
    if (v3)
    {
      CFSetApplyFunction(v3, fp_updateRenderPipelineOverlapRange, *(v0 + 2136));
    }

    FigSimpleMutexUnlock();

    CFRelease(v2);
  }
}

uint64_t playerfig_triggerStartupTasksForSeekIfNecessary(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 52);
  v21 = v10;
  result = *(DerivedStorage + 528);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      result = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
      if (result == a2)
      {
        v19 = *a4;
        v20 = *(a4 + 16);
        result = playerfig_performStartupTasksForEvents(a1, 2, 0, a3, &v19);
        if (!result && (v10 == 4 || *(DerivedStorage + 56)))
        {
          result = playerfig_isWaitingForAnyStartupTask(a1, &v21);
          if (result)
          {
            result = playerfig_enterPlaybackState(a1, v21);
            if (!result && v10 == 4 && !*(v9 + 480))
            {
              v12 = OUTLINED_FUNCTION_198();
              itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v12, v13);
              OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
              OUTLINED_FUNCTION_355_0();
              OUTLINED_FUNCTION_357_0();
              return FigPlaybackBossSetRateAndAnchorTime(v14, v15, v16, v17, v18);
            }
          }
        }
      }
    }
  }

  return result;
}

void playerfig_CreatePlaybackItemFromAsset()
{
  OUTLINED_FUNCTION_649();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v100 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v7 || *DerivedStorage || !v5 || !v1)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM();
    goto LABEL_18;
  }

  CFGetAllocator(v7);
  v9 = OUTLINED_FUNCTION_413();
  FigAssetGetCMBaseObject(v9);
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_18;
  }

  v10 = OUTLINED_FUNCTION_405_0();
  if (v11(v10))
  {
    goto LABEL_18;
  }

  CFGetAllocator(v7);
  v12 = OUTLINED_FUNCTION_413();
  FigAssetGetCMBaseObject(v12);
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_18;
  }

  v13 = OUTLINED_FUNCTION_405_0();
  if (v14(v13))
  {
    goto LABEL_18;
  }

  v75 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_390_0();
  memset(v99, 0, 80);
  CFGetAllocator(v7);
  FigPlaybackItemGetClassID();
  v15 = CMDerivedObjectCreate();
  if (!v84)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM();
    v19 = 0;
    goto LABEL_20;
  }

  v72 = v1;
  v16 = CMBaseObjectGetDerivedStorage();
  *(v16 + 2096) = 0;
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(theString, (v16 + 2096), 16, 0x600u);
  }

  if (FigCFDictionaryGetValueIfPresent())
  {
    v17 = cf;
    if (cf)
    {
      v17 = CFRetain(cf);
    }

    *(v16 + 2192) = v17;
  }

  if (FigIsItOKToLogURLs())
  {
    FPSupport_GetAssetDoNotLogURLs(v5);
    OUTLINED_FUNCTION_786();
  }

  else
  {
    v18 = 0;
  }

  *(v16 + 1281) = v18;
  if (FigCFDictionaryGetValueIfPresent())
  {
    v21 = v80;
    if (v80)
    {
      v21 = CFRetain(v80);
    }

    *(v16 + 2080) = v21;
  }

  if (FigCFDictionaryGetValueIfPresent())
  {
    *(v16 + 2088) = *MEMORY[0x1E695E4D0] == v79[1];
  }

  v22 = FigCopyRedactedURLFromURL();
  v73 = v3;
  if (dword_1EAF16A10)
  {
    v23 = OUTLINED_FUNCTION_293_0();
    if (os_log_type_enabled(v23, type))
    {
      v24 = v77;
    }

    else
    {
      v24 = v77 & 0xFFFFFFFE;
    }

    if (v24)
    {
      v25 = CMBaseObjectGetDerivedStorage() + 972;
      if (v84)
      {
        v26 = (CMBaseObjectGetDerivedStorage() + 2096);
      }

      else
      {
        v26 = "";
      }

      *theDict = 136316675;
      *&theDict[4] = "fp_CreatePlaybackItem";
      v86 = 2048;
      v87 = v7;
      v88 = 2082;
      v89 = v25;
      v90 = 2113;
      v91 = v22;
      v92 = 2048;
      v93 = v5;
      v94 = 2048;
      v95 = v84;
      v96 = 2082;
      v97 = v26;
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_134_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_454();
  }

  if (v22)
  {
    CFRelease(v22);
  }

  *(v16 + 8) = v7;
  v27 = MEMORY[0x1E6960C70];
  v28 = *MEMORY[0x1E6960C70];
  *(v16 + 140) = *MEMORY[0x1E6960C70];
  v29 = *(v27 + 16);
  *(v16 + 156) = v29;
  *(v16 + 164) = v28;
  *(v16 + 180) = v29;
  *(v16 + 188) = v28;
  *(v16 + 204) = v29;
  *(v16 + 40) = v29;
  v71 = v28;
  *(v16 + 24) = v28;
  *(v16 + 284) = 0x1000000;
  *(v16 + 288) = 1;
  *(v16 + 292) = 0x40000000;
  *(v16 + 290) = 0;
  CMTimeMake(&v98, 1, 10);
  *(v16 + 296) = v98;
  *(v16 + 320) = 0;
  v30 = MEMORY[0x1E6960C80];
  *(v16 + 48) = *MEMORY[0x1E6960C80];
  *(v16 + 64) = *(v30 + 16);
  v31 = MEMORY[0x1E6960C88];
  *(v16 + 72) = *MEMORY[0x1E6960C88];
  *(v16 + 88) = *(v31 + 16);
  *(v16 + 96) = 0;
  *(v16 + 976) = 0;
  *(v16 + 112) = 0;
  *(v16 + 1256) = CFRetain(v5);
  *(v16 + 1016) = 0;
  *(v16 + 120) = v3;
  *(v16 + 137) = (v3 & 0x40) != 0;
  *(v16 + 1424) = 0;
  *(v16 + 1456) = 0;
  *(v16 + 1472) = 1;
  *(v16 + 1464) = @"Connected";
  *(v16 + 504) = FigSimpleMutexCreate();
  *(v16 + 524) = 0;
  *(v16 + 536) = 0;
  *(v16 + 544) = 0;
  *(v16 + 1476) = 1065353216;
  *(v16 + 1488) = 0;
  *(v16 + 640) = FigSimpleMutexCreate();
  *(v16 + 1282) = 1;
  *(v16 + 1160) = FigSimpleMutexCreate();
  *(v16 + 1440) = 1;
  *(v16 + 2092) = FPSupport_InitialSeekIDForSource(1);
  *(v16 + 2112) = 0;
  FigSimpleMutexLock();
  v32 = *(v75 + 472);
  if (!v32)
  {
    FigSimpleMutexUnlock();
    goto LABEL_48;
  }

  v33 = CFRetain(v32);
  FigSimpleMutexUnlock();
  if (!v33)
  {
LABEL_48:
    v74 = 0;
    goto LABEL_49;
  }

  v74 = v33;
  *(v16 + 1441) = FPSupport_CopyAndCheckClientOnAllowListForPrefDomainKey(v33, 1, 0x1F0B2FBF8, v79);
LABEL_49:
  v34 = FigReentrantMutexCreate();
  *(v16 + 1448) = v34;
  if (v34)
  {
    v35 = FigSimpleMutexCreate();
    *(v16 + 1248) = v35;
    if (v35)
    {
      v36 = FigSimpleMutexCreate();
      *(v16 + 672) = v36;
      if (v36)
      {
        *(v16 + 664) = 0;
        CMTimeMake(&v98, 1, 3);
        *(v16 + 692) = v98;
        *(v16 + 716) = 0;
        *(v16 + 720) = xmmword_196E72720;
        *(v16 + 736) = 1065353216;
        v37 = FigSimpleMutexCreate();
        *(v16 + 792) = v37;
        if (v37)
        {
          *(v16 + 1368) = 1;
          *(v16 + 1370) = 0;
          *(v16 + 1376) = 0;
          *(v16 + 1396) = v71;
          *(v16 + 1412) = v29;
          v38 = FigReentrantMutexCreate();
          *(v16 + 616) = v38;
          if (v38)
          {
            *(v16 + 1168) = 0;
            *(v16 + 1176) = 0;
            v39 = FigSimpleMutexCreate();
            *(v16 + 888) = v39;
            if (v39)
            {
              *(v16 + 1192) = 257;
              *(v16 + 1194) = 1;
              snprintf(v99, 0x50uLL, "com.apple.coremedia.fileplaybackitem.timer.%s", (v16 + 2096));
              if (FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue() && (v40 = *(v75 + 96)) != 0)
              {
                v41 = dispatch_queue_create_with_target_V2(v99, 0, v40);
              }

              else
              {
                v41 = dispatch_queue_create(v99, 0);
              }

              *(v16 + 104) = v41;
              if (!v41)
              {
                goto LABEL_120;
              }

              v42 = *MEMORY[0x1E695E480];
              HostTimeClock = CMClockGetHostTimeClock();
              OnlyTimebase = CMTimebaseCreateWithSourceClock(v42, HostTimeClock, (v16 + 328));
              if (OnlyTimebase || (OnlyTimebase = CMTimebaseCreateReadOnlyTimebase()) != 0)
              {
                v15 = OnlyTimebase;
LABEL_122:
                v1 = v72;
                LOBYTE(v3) = v73;
                goto LABEL_123;
              }

              v45 = FigSimpleMutexCreate();
              *(v16 + 2152) = v45;
              if (!v45)
              {
                goto LABEL_120;
              }

              *theDict = 0;
              v46 = *(v16 + 1256);
              CFGetAllocator(v7);
              FigAssetGetCMBaseObject(v46);
              if (*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                v47 = OUTLINED_FUNCTION_405_0();
                v48(v47);
              }

              if (!*theDict)
              {
LABEL_77:
                if (v79[0])
                {
                  CFRelease(v79[0]);
                }

                started = FigStartForwardingMediaServicesProcessDeathNotification();
                if (started)
                {
                  goto LABEL_121;
                }

                started = FigStartForwardingMediaServicesProcessDeathNotification();
                if (started)
                {
                  goto LABEL_121;
                }

                CMNotificationCenterGetDefaultLocalCenter();
                FigNotificationCenterAddWeakListeners();
                FigSimpleMutexLock();
                CFSetAddValue(*(v75 + 32), v84);
                FigSimpleMutexUnlock();
                *(v16 + 1568) = CFAbsoluteTimeGetCurrent();
                *(v16 + 1968) = CFAbsoluteTimeGetCurrent();
                *(v16 + 1944) = FigSimpleMutexCreate();
                if (FigCFDictionaryGetValueIfPresent())
                {
                  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
                  {
                    v57 = OUTLINED_FUNCTION_405_0();
                    v58(v57);
                  }

                  v59 = v78;
                  if (v78)
                  {
                    v59 = CFRetain(v78);
                  }

                  *(v16 + 2232) = v59;
                }

                AllocatorForMedia = FigGetAllocatorForMedia();
                FigMetricEventPlaybackSummarySubscriberCreate(AllocatorForMedia, v78, (v16 + 2240));
                *(v16 + 1752) = 0u;
                v61 = FigSimpleMutexCreate();
                *(v16 + 1784) = v61;
                if (v61)
                {
                  v62 = @"TimeDomain";
                  if (@"TimeDomain")
                  {
                    v62 = CFRetain(@"TimeDomain");
                  }

                  *(v16 + 1512) = v62;
                  *(v16 + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
                  if (FigRenderedLegibleOutputManagerIsSupported())
                  {
                    v63 = (v16 + 1792);
                    started = FigLegibleOutputManagerCreate(v42, itemfig_postLegibleOutputNotification, itemfig_postLegibleFlushNotification, v84, (v16 + 1792));
                    if (started)
                    {
LABEL_121:
                      v15 = started;
                      goto LABEL_122;
                    }

                    FigLegibleOutputManagerSetCaptionPipelineStrategy(*v63, *(v75 + 821) == 0);
                    FigLegibleOutputManagerSetCaptionRenderingStrategy(*v63, *(v75 + 822) == 0);
                  }

                  if (FigRenderedLegibleOutputManagerIsSupported())
                  {
                    started = FigRenderedLegibleOutputManagerCreate(v42, itemfig_postRenderedLegibleOutputNotification, itemfig_postRenderedLegibleFlushNotification, v84, (v16 + 1824));
                    if (started)
                    {
                      goto LABEL_121;
                    }
                  }

                  started = FigMetadataStorageCreate(&v83);
                  if (started)
                  {
                    goto LABEL_121;
                  }

                  v64 = v83;
                  *(v16 + 1808) = v83;
                  v83 = 0;
                  FPSupport_SetMetadataOutputCallbacks(v64, itemfig_postMetadataOutputChanged, itemfig_postMetadataOutputFlushed);
                  v65 = CFArrayCreate(v42, 0, 0, MEMORY[0x1E695E9C0]);
                  *(v16 + 1816) = v65;
                  if (v65)
                  {
                    Mutable = CFDictionaryCreateMutable(v42, 0, 0, MEMORY[0x1E695E9E8]);
                    *(v16 + 1136) = Mutable;
                    if (Mutable)
                    {
                      CMNotificationCenterGetDefaultLocalCenter();
                      OUTLINED_FUNCTION_186();
                      FigNotificationCenterAddWeakListener();
                      v15 = 0;
                      v20 = v84;
                      v84 = 0;
                      v1 = v72;
                      LOBYTE(v3) = v73;
                      v19 = v74;
                      if (!v74)
                      {
                        goto LABEL_100;
                      }

                      goto LABEL_99;
                    }
                  }
                }

LABEL_120:
                OUTLINED_FUNCTION_31_0();
                started = FigSignalErrorAtGM();
                goto LABEL_121;
              }

              Value = CFDictionaryGetValue(*theDict, @"assetOption_PreloadDurationWhenNextItem");
              CMTimeMakeFromDictionary(&v98, Value);
              *(v16 + 1396) = v98;
              v50 = *MEMORY[0x1E695E4D0];
              *(v16 + 2064) = v50 == CFDictionaryGetValue(*theDict, @"assetOption_VideoNotEligibleForAppRecording");
              v51 = CFDictionaryGetValue(*theDict, @"assetOption_DownloadDestinationURL");
              if (v51)
              {
                v51 = CFRetain(v51);
              }

              *(v16 + 2160) = v51;
              v52 = CFDictionaryGetValue(*theDict, @"assetOption_ClientBundleIdentifier");
              if (v52)
              {
                v53 = CFRetain(v52);
                *(v16 + 2144) = v53;
                if (v53)
                {
LABEL_75:
                  *(v16 + 2184) = 256;
                  if (*theDict)
                  {
                    CFRelease(*theDict);
                  }

                  goto LABEL_77;
                }

                v54 = (v16 + 2144);
              }

              else
              {
                v54 = (v16 + 2144);
                *(v16 + 2144) = 0;
              }

              v55 = v79[0];
              if (v79[0])
              {
                v55 = CFRetain(v79[0]);
              }

              *v54 = v55;
              goto LABEL_75;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_31_0();
  v15 = FigSignalErrorAtGM();
  v1 = v72;
LABEL_123:
  v19 = v74;
LABEL_20:
  if (v84)
  {
    CFRelease(v84);
  }

  v20 = 0;
  if (v19)
  {
LABEL_99:
    CFRelease(v19);
  }

LABEL_100:
  if (v83)
  {
    CFRelease(v83);
  }

  if (v15 && dword_1EAF16A10)
  {
    v67 = OUTLINED_FUNCTION_293_0();
    v68 = os_log_type_enabled(v67, type);
    if (OUTLINED_FUNCTION_77_0(v68))
    {
      *theDict = 136315394;
      *&theDict[4] = "fp_CreatePlaybackItem";
      v86 = 1024;
      LODWORD(v87) = v15;
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_44_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_420();
LABEL_111:
    if (v20)
    {
LABEL_112:
      CFRelease(v20);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (v15)
  {
    goto LABEL_111;
  }

  v69 = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListeners();
  if ((v3 & 0x80) != 0)
  {
    *(v69 + 1282) = 0;
  }

  else
  {
    itemfig_retrieveAssetBasicsIfReady();
    if (v70)
    {
      if (!v20)
      {
        goto LABEL_18;
      }

      goto LABEL_112;
    }
  }

  *v1 = v20;
LABEL_18:
  OUTLINED_FUNCTION_651();
}

void playerfig_TransferOwnershipOfPlaybackItemFromPlayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3 && (OUTLINED_FUNCTION_187(), v7 = CMBaseObjectGetDerivedStorage(), v8 = CMBaseObjectGetDerivedStorage(), *(v7 + 8) == a3))
  {
    v9 = v8;
    FigSimpleMutexLock();
    if (dword_1EAF16A10)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_248_0();
      v10 = OUTLINED_FUNCTION_126();
      OUTLINED_FUNCTION_830(v10, v11, v12, v13, v14, v15, v16, v17, v37, v38, v39, v40, SBYTE2(v40), BYTE3(v40), SHIDWORD(v40));
      OUTLINED_FUNCTION_37();
      if (v5)
      {
        if (v4)
        {
          v18 = (CMBaseObjectGetDerivedStorage() + 972);
        }

        else
        {
          v18 = "";
        }

        v19 = CMBaseObjectGetDerivedStorage() + 2096;
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v21 = "item is currently on play queue, will remove it first";
        *v41 = 136316930;
        *&v41[4] = "playerfig_TransferOwnershipOfPlaybackItemFromPlayer";
        *&v41[12] = 2048;
        *&v41[14] = v4;
        if (!*(v7 + 1))
        {
          v21 = "item is not currently on play queue";
        }

        *&v41[22] = 2082;
        v42 = v18;
        *v43 = 2048;
        *&v43[2] = v3;
        *&v43[10] = 2082;
        *&v43[12] = v19;
        *&v43[20] = 2048;
        *&v43[22] = a3;
        *&v43[30] = 2082;
        v44 = DerivedStorage + 972;
        LOWORD(v45) = 2082;
        *(&v45 + 2) = v21;
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_179_0();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_449();
    }

    if (*(v7 + 1))
    {
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v22)
      {
        v22(a3, v3);
      }
    }

    v23 = *(v9 + 1200);
    if (v23)
    {
      v47.length = CFArrayGetCount(*(v9 + 1200));
      v47.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v23, v47, v3);
      if (FirstIndexOfValue != -1)
      {
        v25 = FirstIndexOfValue;
        FigGetAllocatorForMedia();
        MutableCopy = FigCFArrayCreateMutableCopy();
        if (MutableCopy)
        {
          v27 = MutableCopy;
          CFArrayRemoveValueAtIndex(MutableCopy, v25);
          CFRelease(*(v9 + 1200));
          *(v9 + 1200) = v27;
        }
      }
    }

    if (a3 != v4)
    {
      FigStopForwardingMediaServicesProcessDeathNotification();
    }

    FigSimpleMutexUnlock();
    if (*(v7 + 8) != v4)
    {
      itemfig_reportingAgentTeardown();
      v28 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      FigSimpleMutexLock();
      CFSetRemoveValue(*(v9 + 32), v3);
      *(v7 + 8) = v4;
      if (*(v7 + 16))
      {
        CFRelease(*(v7 + 16));
        *(v7 + 16) = 0;
      }

      *(v7 + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
      CFSetAddValue(*(v28 + 32), v3);
      if (a3 != v4)
      {
        FigStartForwardingMediaServicesProcessDeathNotification();
      }

      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
      itemfig_reportingAgentSetup(v3, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, v40, *v41, *&v41[8], *&v41[16], v42, *v43, *&v43[8], *&v43[16], *&v43[24], v44, v45, *(&v45 + 1), v46);
    }

    OUTLINED_FUNCTION_372();
  }

  else
  {
    OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_372();

    FigSignalErrorAtGM();
  }
}

uint64_t itemfig_reportingAgentReportEnqueueTime()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFAbsoluteTimeGetCurrent();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v1 = OUTLINED_FUNCTION_285_0();
    v2(v1);
  }

  return FigSimpleMutexUnlock();
}

void itemfig_postLegibleOutputNotification(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_369();
    CMBaseObjectGetDerivedStorage();
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_151_0();
      CMNotificationCenterPostNotification();

      CFRelease(v3);
    }
  }
}

void itemfig_postLegibleFlushNotification(void *a1, uint64_t a2)
{
  values = a1;
  if (a2)
  {
    OUTLINED_FUNCTION_645();
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigPlaybackItemParameter_LegibleOutputKey, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_426();
      CMNotificationCenterPostNotification();
      if (v4)
      {
        CFRelease(v4);
      }

      CFRelease(v3);
    }
  }
}

void itemfig_postRenderedLegibleOutputNotification(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_369();
    CMBaseObjectGetDerivedStorage();
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_151_0();
      CMNotificationCenterPostNotification();

      CFRelease(v3);
    }
  }
}

void itemfig_postRenderedLegibleFlushNotification(void *a1, uint64_t a2)
{
  values = a1;
  if (a2)
  {
    OUTLINED_FUNCTION_645();
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigPlaybackItemParameter_RenderedLegibleOutputKey, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_426();
      CMNotificationCenterPostNotification();
      if (v4)
      {
        CFRelease(v4);
      }

      CFRelease(v3);
    }
  }
}

uint64_t FigPlayerFileCreateWithOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerFileCreateWithOptions_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerFileCreateWithOptions_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_applySelectedMediaArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_applySelectedMediaArray_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_applySelectedMediaArray_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_applySelectedMediaArray_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_applySelectedMediaArray_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_applySelectedMediaArray_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_setBasicInspectables_cold_1()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x1E69E9840]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v8 = OUTLINED_FUNCTION_103_0(os_log_and_send_and_compose_flags_and_os_log_type, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("itemfig_setBasicInspectables");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t itemfig_setBasicInspectables_cold_2()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x1E69E9840]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v8 = OUTLINED_FUNCTION_103_0(os_log_and_send_and_compose_flags_and_os_log_type, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("itemfig_setBasicInspectables");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t itemfig_setBasicInspectables_cold_3()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x1E69E9840]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v8 = OUTLINED_FUNCTION_103_0(os_log_and_send_and_compose_flags_and_os_log_type, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("itemfig_establishTrackIDs");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t itemfig_setBasicInspectables_cold_4()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x1E69E9840]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v8 = OUTLINED_FUNCTION_103_0(os_log_and_send_and_compose_flags_and_os_log_type, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("itemfig_setBasicInspectables");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t itemfig_hintTrackIfPreload_cold_1(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if (v8)
  {
    CFRelease(v8);
    *a1 = 0;
  }

  if (FigSampleCursorServiceCreateCursorAtLastSampleInDecodeOrder(*a2, a1))
  {
    v9 = 1;
  }

  else if (FigSampleCursorCopySampleLocation(*a1, a3, a4))
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t itemfig_copyFormatDescription_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_setTrackPropertyInternal_cold_1()
{
  OUTLINED_FUNCTION_375_0();
  v3 = v2;
  valuePtr = 0.0;
  v4 = *(v2 + 136);
  CFNumberGetValue(v5, kCFNumberFloat32Type, &valuePtr);
  v6 = valuePtr;
  if (valuePtr == v4)
  {
    goto LABEL_5;
  }

  v7 = *(v3 + 16);
  if (!v7)
  {
    goto LABEL_5;
  }

  FigBaseObject = FigRenderPipelineGetFigBaseObject(v7);
  result = CMBaseObjectSetProperty(FigBaseObject, @"SweepFilterSweepValue", v1);
  if (!result)
  {
    v6 = valuePtr;
LABEL_5:
    result = 0;
    *(v3 + 136) = v6;
  }

  *v0 = result;
  return result;
}

uint64_t itemfig_setTrackPropertyInternal_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_setTrackPropertyInternal_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_setTrackPropertyInternal_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_setTrackPropertyInternal_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_setTrackPropertyInternal_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_setTrackPropertyInternal_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_setTrackPropertyInternal_cold_8(const void *a1, _DWORD *a2)
{
  if (a1)
  {
    v3 = CFGetTypeID(a1);
    if (v3 == CFBooleanGetTypeID())
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_303();
  *a2 = FigSignalErrorAtGM();
  return 1;
}

uint64_t itemfig_setTrackPropertyInternal_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_setTrackPropertyInternal_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_setTrackPropertyInternal_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_setTrackPropertyInternal_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_setTrackPropertyInternal_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_setTrackPropertyInternal_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_setTrackPropertyInternal_cold_15(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_setTrackPropertyInternal_cold_16(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemfig_setTrackPropertyInternal_cold_17(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_601();
  NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_426();
  CMNotificationCenterPostNotification();
  if (NotificationPayloadForProperties)
  {
    CFRelease(NotificationPayloadForProperties);
  }

  *a4 = a3;
}

uint64_t itemfig_setTrackPropertyInternal_cold_18(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_createUpdatedExtractionTable_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_createUpdatedExtractionTable_cold_3()
{
  OUTLINED_FUNCTION_369();
  v1 = FigSignalErrorAtGM();
  *v0 = v1;
  if (v1)
  {
    return 1;
  }

  v2 = OUTLINED_FUNCTION_312();
  CFArrayAppendValue(v2, v3);
  return 0;
}

uint64_t itemfig_copyCombinedLoudnessInfoDictionary_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_GetCurrentTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_GetCurrentTime_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_GetCurrentTime_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_GetCurrentTime_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_getMaximumNumberOfSpatializedOutputChannels_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_reportingAgentReportPlayStartMovieTime_cold_1(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 1952);
  OUTLINED_FUNCTION_130_0();
  CMTimeGetSeconds(&v6);
  if (v2 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v3 = OUTLINED_FUNCTION_285_0();
    v4(v3);
  }

  return FigSimpleMutexUnlock();
}

uint64_t itemfig_buildOutOfBandTrackControllerOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_buildOutOfBandTrackControllerOptions_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemfig_updateVolumeOffset_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313_0();
  if (!itemfig_getTrackStorage(v4, v5, v6))
  {
    if (v11)
    {
      if (*(v11 + 16))
      {
        v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, (a3 + 1476));
        if (v7)
        {
          v8 = v7;
          FigRenderPipelineGetFigBaseObject(*(v11 + 16));
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v9 = OUTLINED_FUNCTION_228();
            v10(v9);
          }

          CFRelease(v8);
        }
      }
    }
  }
}

uint64_t itemfig_applyAdjustTargetLevel_cold_1()
{
  OUTLINED_FUNCTION_279_0();
  result = itemfig_getTrackStorage(v2, *(v1 + 1036), &v8);
  if (!result)
  {
    if (v8)
    {
      result = *(v8 + 16);
      if (result)
      {
        if (*(v0 + 1544))
        {
          FigRenderPipelineGetFigBaseObject(result);
          VTable = CMBaseObjectGetVTable();
          v5 = *(VTable + 8);
          result = VTable + 8;
          if (*(v5 + 56))
          {
            v6 = OUTLINED_FUNCTION_228();

            return v7(v6);
          }
        }
      }
    }
  }

  return result;
}

uint64_t itemfig_applyAdjustCompressionProfile_cold_1()
{
  OUTLINED_FUNCTION_279_0();
  result = itemfig_getTrackStorage(v2, *(v1 + 1036), &v8);
  if (!result)
  {
    if (v8)
    {
      result = *(v8 + 16);
      if (result)
      {
        if (*(v0 + 1552))
        {
          FigRenderPipelineGetFigBaseObject(result);
          VTable = CMBaseObjectGetVTable();
          v5 = *(VTable + 8);
          result = VTable + 8;
          if (*(v5 + 56))
          {
            v6 = OUTLINED_FUNCTION_228();

            return v7(v6);
          }
        }
      }
    }
  }

  return result;
}

void itemfig_reportingAgentReportError_cold_1(uint64_t a1, CFTypeRef *a2, const void *a3)
{
  if (*(CMBaseObjectGetDerivedStorage() + 2232))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    if (!FigMetricErrorEventCreate(AllocatorForMedia, 0, a3, a2))
    {
      if (*(*(OUTLINED_FUNCTION_253_0() + 16) + 40))
      {
        v6 = OUTLINED_FUNCTION_383();
        v7(v6);
      }
    }
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t playerfig_clearVideoLayers_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemfig_ExternalProtectionStatusChangedGuts_cold_1(int a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(a1, a2, a3, a4, a5, a6, a7, a8, @"ExternalProtectionStatus", 0);
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_151_0();
  CMNotificationCenterPostNotification();
  if (NotificationPayloadForProperties)
  {

    CFRelease(NotificationPayloadForProperties);
  }
}

uint64_t itemfig_updateStartHostTimeEstimate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_updateStartHostTimeEstimate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemfig_DeferredStallWarning_cold_1(uint64_t a1, CFTypeRef *a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 2232))
  {
    FigGetAllocatorForMedia();
    v3 = OUTLINED_FUNCTION_360_0();
    if (!FigMetricItemStallEventCreate(v4, v5, v6, v3, v7))
    {
      if (*(*(OUTLINED_FUNCTION_253_0() + 16) + 40))
      {
        v8 = OUTLINED_FUNCTION_383();
        v9(v8);
      }
    }
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

void itemfig_BossSeekDidComplete_cold_1(double a1, uint64_t a2, CFTypeRef *a3)
{
  if (*(CMBaseObjectGetDerivedStorage() + 2232))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    if (!FigMetricItemSeekDidCompleteEventCreate(AllocatorForMedia, 0, 0, a3, a1, 0.0))
    {
      if (*(*(OUTLINED_FUNCTION_253_0() + 16) + 40))
      {
        v6 = OUTLINED_FUNCTION_383();
        v7(v6);
      }
    }
  }

  if (*a3)
  {
    CFRelease(*a3);
  }
}

uint64_t itemfig_ReachedEndGuts_cold_1()
{
  OUTLINED_FUNCTION_369();
  itemfig_UpdateLastPlayedOutOrLastPlayedDateIfNecessary();
  v2 = *(v1 + 816);
  Count = CFArrayGetCount(*(v1 + 528));
  if (FigPlaybackGetEffectiveActionAtEnd(v2, Count) == 1)
  {
    return 0;
  }

  v5 = *(v1 + 816);
  v6 = CFArrayGetCount(*(v1 + 528));
  if (FigPlaybackGetEffectiveActionAtEnd(v5, v6))
  {
    return 2;
  }

  itemfig_advanceToNextItem(v0);
  return 1;
}

uint64_t itemfig_handleReadyToDisplayVideoLatch_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_handleReadyToDisplayVideoLatch_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_matchBossRateToPlayerRateAndPlaybackState_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_matchBossRateToPlayerRateAndPlaybackState_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_matchBossRateToPlayerRateAndPlaybackState_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem_cold_1(const void *a1, char a2)
{
  FigSignalErrorAtGM();
  CFRelease(a1);
  return a2 & 1;
}

uint64_t playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem_cold_3()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x1E69E9840]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v8 = OUTLINED_FUNCTION_103_0(os_log_and_send_and_compose_flags_and_os_log_type, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("playerfig_scheduleVideoSlotSwitchForNextItem");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_7();
  return OUTLINED_FUNCTION_420();
}

uint64_t playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem_cold_4()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x1E69E9840]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v8 = OUTLINED_FUNCTION_103_0(os_log_and_send_and_compose_flags_and_os_log_type, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("playerfig_scheduleVideoSlotSwitchForNextItem");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_7();
  return OUTLINED_FUNCTION_420();
}

uint64_t playerfig_setExitTransitionIDOnItemPrecedingWorkingItem_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_setExitTransitionIDOnItemPrecedingWorkingItem_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_setExitTransitionIDOnItemPrecedingWorkingItem_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_getNextPlaybackState_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void playerfig_setRateGuts_cold_1(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(a1, 0, a3, a4, a5, a6, a7, a8, @"CurrentRate", 0);
  FigCFDictionarySetInt32();
  OUTLINED_FUNCTION_319_0();
  FigCFDictionarySetValueFromKeyInDict();
  OUTLINED_FUNCTION_319_0();
  FigCFDictionarySetValueFromKeyInDict();
  OUTLINED_FUNCTION_319_0();
  FigCFDictionarySetValueFromKeyInDict();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (NotificationPayloadForProperties)
  {
    CFRelease(NotificationPayloadForProperties);
  }

  playerfig_updateStartHostTimeEstimatesOfAllItems(a1);
  OUTLINED_FUNCTION_652();
}

void playerfig_deferredLatencyChanged_cold_1()
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_93_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

void playerfig_deferredRenderPipelineWantsRebuild_cold_1()
{
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_148_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

uint64_t itemfig_createRenderTriplesForVideoComposition_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_createRenderTriplesForVideoComposition_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_createRenderTriplesForVideoComposition_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_createRenderTriplesForVideoComposition_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_createRenderTriplesForVideoComposition_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fp_createFigImageQueueArrayForVideoRenderPipeline_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fp_buildVideoRenderPipelineForTrack_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigSimpleMutexLock();
  v6 = *(a1 + 1952);
  if (v6)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v7)
    {
      v7(v6, @"playerStats", 0x1F0B665F8, a2, 0);
    }
  }

  FigSimpleMutexUnlock();
  FigRenderPipelineGetFigBaseObject(a3);
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 8);
  result = VTable + 8;
  if (*(v10 + 56))
  {
    v11 = OUTLINED_FUNCTION_228();
    return v12(v11);
  }

  return result;
}

uint64_t fp_buildVideoRenderPipelineForTrack_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fp_buildImageQueueArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemfig_DeferredLikelyToKeepUp_cold_1(uint64_t a1, CFTypeRef *a2, CFArrayRef *a3)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 2232))
  {
    goto LABEL_8;
  }

  v6 = OUTLINED_FUNCTION_179();
  if (itemfig_copyPlayableTime(v6, a3))
  {
    v9 = *a3;
    if (v9)
    {
LABEL_7:
      CFRelease(v9);
    }
  }

  else
  {
    v7 = CFAbsoluteTimeGetCurrent() - *(v3 + 2224);
    AllocatorForMedia = FigGetAllocatorForMedia();
    v9 = *a3;
    if (!FigMetricItemLikelyToKeepUpEventCreate(AllocatorForMedia, 0, v9, a2, v7) && *(*(CMBaseObjectGetVTable() + 16) + 40))
    {
      v10 = OUTLINED_FUNCTION_173_0();
      v11(v10);
    }

    if (v9)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t itemfig_copyPlayableTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_copyPlayableTime_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_copyPlayableTime_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_copyPlayableTime_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_copyPlayableTime_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_CopyTrackProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void playerfig_deferredValeriaEnabled_cold_1()
{
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_148_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

void playerfig_Invalidate_cold_1()
{
  OUTLINED_FUNCTION_207();
  FigDeferredTransactionCreate(*MEMORY[0x1E695E480], v2);
  if (*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    v4 = OUTLINED_FUNCTION_265();
    v5(v4);
  }

  *v0 = 1;
  v6 = OUTLINED_FUNCTION_234();
  playerfig_cleanupOverlappedOutroComponents(v6, v7);
  if (*(v0 + 801))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = 0x1F0B60CF8;
    FigGetNotifyingObjectForSelectionCriteriaChanged();
    OUTLINED_FUNCTION_241_0();
    *(v0 + 801) = 0;
  }

  if (*(v0 + 899))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = 0x1F0B5F018;
    JNvfYIDgz();
    OUTLINED_FUNCTION_241_0();
    *(v0 + 899) = 0;
  }

  if (FPSupport_GetAudioSpatializationPreferencesMonitor())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = 0x1F0B46CD8;
    FPSupport_GetAudioSpatializationPreferencesMonitor();
    OUTLINED_FUNCTION_241_0();
  }

  FigSimpleMutexLock();
  v8 = *(v0 + 32);
  if (v8)
  {
    v9 = CFGetAllocator(v8);
    Copy = CFSetCreateCopy(v9, *(v0 + 32));
    FigSimpleMutexUnlock();
    if (Copy)
    {
      CFSetApplyFunction(Copy, playerfig_InvalidateItem, 0);
      CFRelease(Copy);
    }
  }

  else
  {
    FigSimpleMutexUnlock();
  }

  v11 = *(v0 + 584);
  if (v11)
  {
    playerfig_removeAudioRenderPipelineListeners(v1, v11);
    FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v0 + 584));
    if (FigBaseObject)
    {
      v13 = FigBaseObject;
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v14)
      {
        v14(v13);
      }
    }
  }

  FPSupport_ReleasePassthroughHelper();
  *(v0 + 952) = 0;
  v15 = *(v0 + 664);
  if (v15)
  {
    while (CFArrayGetCount(v15) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v0 + 664), 0);
      playerfig_removeAudioRenderPipelineListeners(v1, ValueAtIndex);
      v17 = FigRenderPipelineGetFigBaseObject(ValueAtIndex);
      if (v17)
      {
        v18 = v17;
        v19 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v19)
        {
          v19(v18);
        }
      }

      v15 = *(v0 + 664);
    }
  }

  FigSimpleMutexLock();
  v20 = *(v0 + 176);
  if (v20)
  {
    CFRelease(v20);
    *(v0 + 176) = 0;
  }

  FigSimpleMutexUnlock();
  v21 = *(v0 + 592);
  if (v21)
  {
    v22 = FigRenderPipelineGetFigBaseObject(v21);
    if (v22)
    {
      v23 = v22;
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v24)
      {
        v24(v23);
      }
    }
  }

  v25 = *(v0 + 672);
  if (v25)
  {
    while (CFArrayGetCount(v25) >= 1)
    {
      v26 = CFArrayGetValueAtIndex(*(v0 + 672), 0);
      v27 = FigRenderPipelineGetFigBaseObject(v26);
      if (v27)
      {
        v28 = v27;
        v29 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v29)
        {
          v29(v28);
        }
      }

      CFArrayRemoveValueAtIndex(*(v0 + 672), 0);
      v25 = *(v0 + 672);
    }

    v30 = *(v0 + 672);
    if (v30)
    {
      CFRelease(v30);
      *(v0 + 672) = 0;
    }
  }

  v31 = *(v0 + 600);
  if (v31)
  {
    v32 = FigRenderPipelineGetFigBaseObject(v31);
    if (v32)
    {
      v33 = v32;
      v34 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v34)
      {
        v34(v33);
      }
    }

    CFRelease(*(v0 + 600));
    *(v0 + 600) = 0;
  }

  v35 = *(v0 + 608);
  if (v35)
  {
    v36 = FigRenderPipelineGetFigBaseObject(v35);
    if (v36)
    {
      v37 = v36;
      v38 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v38)
      {
        v38(v37);
      }
    }

    CFRelease(*(v0 + 608));
    *(v0 + 608) = 0;
  }

  v39 = *(v0 + 680);
  if (v39)
  {
    CFRelease(v39);
    *(v0 + 680) = 0;
  }

  v40 = *(v0 + 688);
  if (v40)
  {
    CFRelease(v40);
    *(v0 + 688) = 0;
  }

  v41 = *(v0 + 696);
  if (v41)
  {
    CFRelease(v41);
    *(v0 + 696) = 0;
  }

  v42 = *(v0 + 704);
  if (v42)
  {
    CFRelease(v42);
    *(v0 + 704) = 0;
  }

  v43 = *(v0 + 200);
  if (v43)
  {
    CFRelease(v43);
    *(v0 + 200) = 0;
  }

  FigSimpleMutexLock();
  v44 = *(v0 + 768);
  if (v44)
  {
    v45 = CFRetain(v44);
    v46 = *(v0 + 768);
    if (v46)
    {
      CFRelease(v46);
      *(v0 + 768) = 0;
    }

    if (v45)
    {
      CFRelease(v45);
    }
  }

  v47 = *(v0 + 776);
  if (v47)
  {
    v48 = CFRetain(v47);
    v49 = *(v0 + 776);
    if (v49)
    {
      CFRelease(v49);
      *(v0 + 776) = 0;
    }

    if (v48)
    {
      CFRelease(v48);
    }
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v50 = *(v0 + 760);
  if (v50)
  {
    CFRelease(v50);
    *(v0 + 760) = 0;
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v51 = *(v0 + 504);
  if (v51)
  {
    CFRelease(v51);
    *(v0 + 504) = 0;
  }

  FigSimpleMutexUnlock();
  v52 = *(v0 + 904);
  if (v52)
  {
    CFRelease(v52);
    *(v0 + 904) = 0;
  }

  if (!FigUseVideoReceiverForCALayer())
  {
    playerfig_freeTransitionImageQueueAndSlot();
    FigSimpleMutexLock();
    v53 = *(v0 + 216);
    if (!v53)
    {
      goto LABEL_81;
    }

    if (CFArrayGetCount(v53) <= 0)
    {
      v54 = *(v0 + 216);
      if (!v54)
      {
        goto LABEL_81;
      }

      CFRelease(v54);
    }

    else
    {
      FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(*v2, *(v0 + 216), 1);
      FPSupport_AppendDeferredTransactionChangeToRelease(*v2, *(v0 + 216));
    }

    *(v0 + 216) = 0;
LABEL_81:
    FigSimpleMutexUnlock();
    v55 = *(v0 + 208);
    if (v55)
    {
      FPSupport_AppendDeferredTransactionChangeToRelease(*v2, v55);
      *(v0 + 208) = 0;
    }
  }

  v56 = *(v0 + 296);
  if (v56)
  {
    FPSupport_AppendDeferredTransactionChangeToRelease(*v2, v56);
    *(v0 + 296) = 0;
  }

  FigSimpleMutexLock();
  v57 = *(v0 + 256);
  if (v57 && CFArrayGetCount(v57) >= 1)
  {
    OUTLINED_FUNCTION_417_0();
    do
    {
      CFArrayGetValueAtIndex(*(v0 + 256), v3);
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      OUTLINED_FUNCTION_377_0();
    }

    while (!v58);
  }

  v59 = *(v0 + 264);
  if (v59)
  {
    CFRelease(v59);
    *(v0 + 264) = 0;
  }

  v60 = *(v0 + 272);
  if (v60)
  {
    CFRelease(v60);
    *(v0 + 272) = 0;
  }

  playerfig_sendEmptyConfigurationToEachVideoTarget(v1, *(v0 + 256));
  v61 = *(v0 + 256);
  if (v61)
  {
    CFRelease(v61);
    *(v0 + 256) = 0;
  }

  FigSimpleMutexUnlock();
  v62 = *(v0 + 856);
  if (v62)
  {
    CFRelease(v62);
    *(v0 + 856) = 0;
  }

  FigSimpleMutexLock();
  v63 = *(v0 + 472);
  if (v63)
  {
    CFRelease(v63);
    *(v0 + 472) = 0;
  }

  FigSimpleMutexUnlock();
  v64 = *(v0 + 888);
  if (v64)
  {
    CFRelease(v64);
    *(v0 + 888) = 0;
  }

  v65 = *(v0 + 152);
  if (v65)
  {
    CFRelease(v65);
    *(v0 + 152) = 0;
  }

  FigSimpleMutexLock();
  v66 = *(v0 + 168);
  if (v66)
  {
    CFRelease(v66);
    *(v0 + 168) = 0;
  }

  FigSimpleMutexUnlock();
  if (*(v0 + 912))
  {
    FigSimpleMutexLock();
    v67 = *(v0 + 920);
    if (v67)
    {
      CFRelease(v67);
      *(v0 + 920) = 0;
    }

    v68 = *(v0 + 928);
    if (v68)
    {
      CFRelease(v68);
      *(v0 + 928) = 0;
    }

    FigSimpleMutexUnlock();
  }

  FigDeferredTransactionCommit(*v2, 0);
  if (*v2)
  {
    CFRelease(*v2);
  }

  v69 = *(v0 + 832);
  if (v69)
  {
    CFRelease(v69);
    *(v0 + 832) = 0;
  }

  v70 = *(v0 + 488);
  if (v70)
  {
    CFRelease(v70);
    *(v0 + 488) = 0;
  }

  v71 = *(v0 + 1144);
  if (v71)
  {
    while (1)
    {
      Count = CFArrayGetCount(v71);
      v73 = *(v0 + 1144);
      if (Count <= 0)
      {
        break;
      }

      CFArrayGetValueAtIndex(v73, 0);
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CFArrayRemoveValueAtIndex(*(v0 + 1144), 0);
      v71 = *(v0 + 1144);
      if (!v71)
      {
        goto LABEL_124;
      }
    }

    if (v73)
    {
      CFRelease(v73);
      *(v0 + 1144) = 0;
    }
  }

LABEL_124:
  v79 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1176))
  {
    v75 = DerivedStorage;
    if (!FigPlayerResourceArbiterGetGlobalSingleton(&v79))
    {
      FigPlayerResourceArbiterUnregisterConsumer(v79, *(v75 + 1176));
      *(v75 + 1176) = 0;
    }
  }

  v76 = *(v0 + 1160);
  if (v76)
  {
    CFRelease(v76);
    *(v0 + 1160) = 0;
  }

  v77 = *(v0 + 1168);
  if (v77)
  {
    CFRelease(v77);
    *(v0 + 1168) = 0;
  }

  v78 = *(v0 + 1184);
  if (v78)
  {
    CFRelease(v78);
    *(v0 + 1184) = 0;
  }

  OUTLINED_FUNCTION_652();
}

uint64_t playerfig_handleSetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_handleSetProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_handleSetProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void playerfig_handleSetProperty_cold_4()
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_93_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

uint64_t playerfig_handleSetProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_handleSetProperty_cold_6()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x1E69E9840]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v8 = OUTLINED_FUNCTION_103_0(os_log_and_send_and_compose_flags_and_os_log_type, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("playerfig_handleSetProperty");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_7();
  return OUTLINED_FUNCTION_420();
}

void playerfig_handleSetProperty_cold_7()
{
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_148_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

uint64_t playerfig_handleSetProperty_cold_8()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x1E69E9840]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v8 = OUTLINED_FUNCTION_103_0(os_log_and_send_and_compose_flags_and_os_log_type, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("playerfig_handleSetProperty");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_7();
  return OUTLINED_FUNCTION_420();
}

void playerfig_handleSetProperty_cold_9()
{
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_148_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

void playerfig_handleSetProperty_cold_10()
{
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_148_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

void playerfig_handleSetProperty_cold_11()
{
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_148_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

void playerfig_handleSetProperty_cold_12()
{
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_148_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

uint64_t playerfig_handleSetProperty_cold_13()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  FigReportingAgentStatsSetIntValue(*(DerivedStorage + 1952));

  return FigSimpleMutexUnlock();
}

uint64_t playerfig_handleSetProperty_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_handleSetProperty_cold_15(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_handleSetProperty_cold_16(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_setVideoTargetArray_cold_1(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

void playerfig_setVideoTargetArray_cold_2(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_148_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
  *a2 = v3;
}

uint64_t playerfig_removeExcessImageQueuesAndSlotsFromAllWorkingOrLameDuckItems_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_removeExcessImageQueuesAndSlotsFromAllWorkingOrLameDuckItems_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_removeExcessImageQueuesAndSlotsFromAllWorkingOrLameDuckItems_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_removeExcessImageQueuesAndSlotsFromAllWorkingOrLameDuckItems_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_gracefullyAddImageQueues_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void playerfig_rebuildRenderPipelines_disturbIfInLameDuckGap_cold_2()
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_93_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

uint64_t itemfig_setVideoEnhancementModeOnImageQueues_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  if (itemfig_getTrackStorage(a2, a3, a1))
  {
    return 1;
  }

  v4 = *(*a1 + 16);
  if (!v4)
  {
    return 1;
  }

  FigRenderPipelineGetFigBaseObject(v4);
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v5 = OUTLINED_FUNCTION_228();
    v6(v5);
  }

  return 0;
}

uint64_t itemfig_assetPropertyLoaded_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_216_0();
  FigSimpleMutexLock();
  v5 = OUTLINED_FUNCTION_171();
  playerfig_updateStartHostTimeEstimatesOfItemAndFollowingItems(v5, v6);
  if (*(a4 + 1306))
  {
    v8 = OUTLINED_FUNCTION_171();
    NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(v8, v9, v10, v11, v12, v13, v14, v15, @"SeekableTimeIntervals", 0);
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_406_0();
    FigDispatchAsyncPostNotification();
    if (NotificationPayloadForProperties)
    {
      CFRelease(NotificationPayloadForProperties);
    }
  }

  return FigSimpleMutexUnlock();
}

void itemfig_assetDownloadComplete_cold_1(const __CFURL **a1, uint64_t a2, const void *a3)
{
  FigAssetDownloadStorageManagementSetDownloadCompletionDateForAssetAtURL();
  if (!v5)
  {
    FigAssetDownloadStorageManagementExcludeURLFromBackup(*a1);
  }

  CFRelease(a3);
}

uint64_t itemfig_handleSetProperty_cold_1()
{
  OUTLINED_FUNCTION_11_0(*MEMORY[0x1E69E9840]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v8 = OUTLINED_FUNCTION_103_0(os_log_and_send_and_compose_flags_and_os_log_type, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("itemfig_handleSetProperty");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_7();
  return OUTLINED_FUNCTION_420();
}

void itemfig_handleSetProperty_cold_2(int a1, uint64_t a2, int a3, _DWORD *a4, int a5, int a6, int a7, int a8)
{
  NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(a1, a2, a3, a4, a5, a6, a7, a8, @"CurrentDimensions", 0);
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (NotificationPayloadForProperties)
  {
    CFRelease(NotificationPayloadForProperties);
  }

  *a4 = 0;
}

void itemfig_handleSetProperty_cold_4()
{
  OUTLINED_FUNCTION_471();
  valuePtr = 0;
  CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr);
  *(v0 + 1488) = valuePtr;
  v2 = OUTLINED_FUNCTION_198();
  itemfig_applyLoudnessInfo(v2, v3, 1, 0);
}

void itemfig_handleSetProperty_cold_5()
{
  OUTLINED_FUNCTION_471();
  itemfig_setDisplayNonForcedSubtitlesEnabled(v0, *MEMORY[0x1E695E4D0] == v1);
  v2 = OUTLINED_FUNCTION_298();
  playerfig_updateClosedCaptionsDisplayForItem(v2, v3);
  v4 = OUTLINED_FUNCTION_298();
  playerfig_updateSubtitleDisplayForItem(v4, v5);
  v6 = OUTLINED_FUNCTION_298();

  playerfig_updateCaptionOrSubtitleHintOnVideoPipeline(v6, v7);
}

uint64_t itemfig_handleSetProperty_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_handleSetProperty_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemfig_handleSetProperty_cold_9()
{
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_148_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

uint64_t itemfig_handleSetProperty_cold_10()
{
  OUTLINED_FUNCTION_207();
  if (v3 && (v4 = CFGetTypeID(v2), v4 != CFArrayGetTypeID()))
  {
    OUTLINED_FUNCTION_243();
    result = FigSignalErrorAtGM();
  }

  else
  {
    FigSimpleMutexLock();
    v5 = *(v1 + 800);
    *(v1 + 800) = v2;
    if (v2)
    {
      CFRetain(v2);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    FigSimpleMutexUnlock();
    result = 0;
  }

  *v0 = result;
  return result;
}

void itemfig_handleSetProperty_cold_11(uint64_t a1)
{
  valuePtr = 0;
  if (a1)
  {
    OUTLINED_FUNCTION_207();
    v4 = CFGetTypeID(v3);
    if (v4 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v2, kCFNumberIntType, &valuePtr))
      {
        *(v1 + 976) = valuePtr;
        playerfig_applyEQPreset();
      }
    }
  }
}

uint64_t itemfig_handleSetProperty_cold_12(uint64_t a1, _DWORD *a2)
{
  if (!*(a1 + 1))
  {
    return 1;
  }

  v3 = FigSignalErrorAtGM();
  result = 0;
  *a2 = v3;
  return result;
}

BOOL itemfig_handleSetProperty_cold_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 286);
  v3 = *MEMORY[0x1E695E4D0] == a2;
  *(a1 + 286) = v3;
  return !*(a1 + 352) || v3 == v2;
}

BOOL itemfig_handleSetProperty_cold_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 285);
  v3 = *MEMORY[0x1E695E4D0] == a2;
  *(a1 + 285) = v3;
  return !*(a1 + 352) || v3 == v2;
}

BOOL itemfig_handleSetProperty_cold_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 284);
  v3 = *MEMORY[0x1E695E4D0] == a2;
  *(a1 + 284) = v3;
  return !*(a1 + 352) || v3 == v2;
}

uint64_t itemfig_handleSetProperty_cold_16(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_handleSetProperty_cold_17(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_handleSetProperty_cold_18(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_handleSetProperty_cold_19(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_CopyCommonMetadata_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_CopyCommonMetadata_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_CopyCommonMetadata_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_SetTrackProperty_cold_1()
{
  OUTLINED_FUNCTION_471();
  *v0 = FigSignalErrorAtGM();

  return FigSimpleMutexUnlock();
}

uint64_t itemfig_SetTrackProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_ExtractAndRetainNextSampleBuffer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemfig_setCurrentTimeWithRangeAndIDGuts_cold_1(uint64_t a1, CFTypeRef *a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 2232))
  {
    FigGetAllocatorForMedia();
    v3 = OUTLINED_FUNCTION_360_0();
    if (!FigMetricItemSeekEventCreate(v4, v5, v6, v3, v7))
    {
      if (*(*(OUTLINED_FUNCTION_253_0() + 16) + 40))
      {
        v8 = OUTLINED_FUNCTION_383();
        v9(v8);
      }
    }
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t playerfig_AddToPlayQueue_cold_1()
{
  OUTLINED_FUNCTION_207();
  playerfig_applyEQPreset();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_348_0();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_348_0();
  playerfig_postDeferredCurrentItemDidChangeNotificationWithReason();
  return playerfig_updatePlaybackStateAndBossRate(v0, 7, 0);
}

uint64_t playerfig_RemoveFromPlayQueue_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_RemoveFromPlayQueue_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_RemoveFromPlayQueue_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void playerfig_RemoveFromPlayQueue_cold_4()
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_93_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

uint64_t playerfig_RemoveFromPlayQueue_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_AddExternalStartupTask_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_AddExternalStartupTask_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_RemoveExternalStartupTask_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_RemoveExternalStartupTask_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_CopyDisplayedCVPixelBuffer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_CopyDisplayedCVPixelBuffer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_CopyDisplayedCVPixelBuffer_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerfig_CopyDisplayedCVPixelBuffer_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void playerfig_DuckVolume_cold_1()
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_93_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

void playerfig_DuckVolume_cold_2()
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_4_0(MEMORY[0x1E6960C70]);
  OUTLINED_FUNCTION_93_0();
  playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
}

uint64_t segPumpSetupNetworkHistory()
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954655;
  }

  v2 = Mutable;
  FigCFDictionarySetInt64();
  FigCFDictionarySetValue();
  v3 = FigNetworkHistoryCreate();
  if (!v3)
  {
    segPumpSetNetworkHistory();
  }

  v4 = v3;
  CFRelease(v2);
  return v4;
}

void segPumpClearStatistics(uint64_t a1)
{
  v2 = (a1 + 400);
  v3 = 3;
  do
  {
    segPumpStreamClearStatistics(*(v2 - 1));
    v4 = *v2;
    v2 += 2;
    segPumpStreamClearStatistics(v4);
    --v3;
  }

  while (v3);
  *(a1 + 8728) = 0u;
  *(a1 + 8744) = 0u;
  *(a1 + 8696) = 0u;
  *(a1 + 8712) = 0u;
  *(a1 + 8664) = 0u;
  *(a1 + 8680) = 0u;
  *(a1 + 8816) = 0u;
  *(a1 + 8832) = 0u;
  FigNetworkInterfaceResetStatistics(*(a1 + 9312));
  v5 = *(a1 + 9232);
  if (v5)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v6)
    {

      v6(v5, 0x1F0B64538);
    }
  }
}

uint64_t segPumpStreamInitStorage(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  *a2 = a3;
  *(a2 + 866) = 1;
  *(a2 + 112) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 120) = _Q0;
  *(a2 + 72) = 1;
  *(a2 + 944) = -1;
  *(a2 + 680) = 0;
  *(a2 + 688) = a2 + 680;
  *(a2 + 336) = 0;
  *(a2 + 344) = a2 + 336;
  *(a2 + 752) = 1;
  *(a2 + 760) = a4;
  if (a4 >= 2)
  {
    if (a7)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a1 + 48) == 0;
    }

    *(a2 + 406) = v15;
  }

  result = segPumpCreateMediaConnection(a2);
  if (!result)
  {
    *(a2 + 696) = *(a2 + 680);
    v17 = a5 <= 1 ? 1 : a5;
    result = segPumpStreamSetReadAheadConnectionCountMax(a2, v17);
    if (!result)
    {
      if (a6 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = a6;
      }

      if (v18 >= a5)
      {
        v18 = a5;
      }

      *(a2 + 784) = v18;
      *(a2 + 360) = -1;
      *(a2 + 368) = -1;
    }
  }

  return result;
}

void segPumpLoadStartupScoreCallback()
{
  OUTLINED_FUNCTION_813();
  __dst[28] = *MEMORY[0x1E69E9840];
  if (!segPumpLockAndCopyPumpFromRetainProxy())
  {
    bzero(&__src[1], 0xD8uLL);
    segPumpMakeNetworkPredictionInput(0, __src);
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    FigGetUpTimeNanoseconds();
    __src[2] = 0.0;
    *&__src[0] = 1;
    *&__src[7] = MEMORY[0x80];
    *&__src[21] |= 4uLL;
    v0 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v0 || (memcpy(__dst, __src, 0xE0uLL), v1 = OUTLINED_FUNCTION_235(), v0(v1)))
    {
      v2 = 0;
    }

    else
    {
      v2 = (*(&v42 + 1) * v41);
      if (dword_1EAF16A30)
      {
        LODWORD(v48) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v4 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        if (OUTLINED_FUNCTION_124_0(v4))
        {
          v5 = MEMORY[0x22F0];
          if (!MEMORY[0x22F0])
          {
            v5 = &stru_1F0B1AFB8;
          }

          *v49 = 136316162;
          *&v49[4] = "segPumpMakeGlobalBandwidthPrediction";
          v50 = 2114;
          v51 = v5;
          v52 = 2048;
          v53 = v41 / 1000.0;
          v54 = 2048;
          v55 = *(&v42 + 1);
          v56 = 2048;
          v57 = *(&v41 + 1) / 1000.0;
          OUTLINED_FUNCTION_44_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_345_0();
      }

      v6 = MEMORY[0x2410];
      if (MEMORY[0x2410])
      {
        v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v7)
        {
          v7(v6, 0x1F0B64538, 0x1F0B422B8, v2, 0);
        }
      }
    }

    if (!MEMORY[0x263A])
    {
      MEMORY[0x263A] = 1;
      if (MEMORY[0x2410])
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          OUTLINED_FUNCTION_606();
          v39(v37, v38);
        }
      }
    }

    if (!v2)
    {
      v2 = FigRCLGetNumberWithDefault(MEMORY[0x2468], @"coldStartArbitraryBandwidthGuess");
    }

    if (v2 >= 1)
    {
      v8 = MEMORY[0x2058];
      if (MEMORY[0x2058])
      {
        v9 = v2;
        v40 = v2;
        do
        {
          v10 = FigRCLGetDoubleWithDefault(MEMORY[0x2468], @"adaptiveStartupRewardWeight");
          v11 = FigRCLGetDoubleWithDefault(MEMORY[0x2468], @"adaptiveStartupCostWeight");
          v12 = FigRCLGetNumberWithDefault(MEMORY[0x2468], @"fastStartupThresholdMS");
          v13 = FigRCLGetNumberWithDefault(MEMORY[0x2468], @"slowStartupThresholdMS");
          v14 = FigRCLGetNumberWithDefault(MEMORY[0x2468], @"superSlowStartupThresholdMS");
          v15 = FigRCLGetDoubleWithDefault(MEMORY[0x2468], @"fastStartCostScore");
          v16 = FigRCLGetDoubleWithDefault(MEMORY[0x2468], @"slowStartCostScore");
          v17 = FigRCLGetDoubleWithDefault(MEMORY[0x2468], @"superSlowStartCostScore");
          v18 = *(v8 + 6);
          __dst[0] = 0.0;
          __src[0] = 0.0;
          *&v41 = 0;
          v48 = 0;
          *v49 = 0;
          if (MEMORY[8])
          {
            v19 = MEMORY[8];
          }

          else
          {
            v19 = 6;
          }

          segPumpGetStartupRequirements(0, v19, __dst, __src, &v41, v49, &v48, v18);
          if (__src[0] <= v9)
          {
            v20 = *v49;
          }

          else if (__dst[0] <= v9)
          {
            v21 = &v41;
            if (MEMORY[0x151])
            {
              v21 = &v48;
            }

            v20 = *v21;
          }

          else
          {
            v20 = MEMORY[0x2030];
          }

          v22 = v12;
          v23 = v20 * 1000.0;
          v24 = ((v18 * v23) / v40);
          if (v24 <= v12)
          {
            v26 = v15 / v22 * v24;
          }

          else
          {
            v25 = v15 + (v16 - v15) / (v13 - v22) * (v24 - v22);
            if (v24 <= v13)
            {
              v26 = v25;
            }

            else
            {
              v26 = v16 + (v17 - v16) / (v14 - v13) * (v24 - v13);
            }
          }

          v27 = v8[1];
          v28 = FigRCLGetNumberWithDefault(MEMORY[0x2468], @"lowQualityBWThreshold");
          v29 = FigRCLGetNumberWithDefault(MEMORY[0x2468], @"highQualityBWThreshold");
          v30 = FigRCLGetNumberWithDefault(MEMORY[0x2468], @"superHighQualityBWThreshold");
          v31 = FigRCLGetDoubleWithDefault(MEMORY[0x2468], @"lowQualityRewardScore");
          v32 = FigRCLGetDoubleWithDefault(MEMORY[0x2468], @"highQualityRewardScore");
          v33 = FigRCLGetDoubleWithDefault(MEMORY[0x2468], @"superHighQualityRewardScore");
          NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(v27);
          if (NormalizedPeakBitrate <= v28)
          {
            v35 = v31 / v28 * NormalizedPeakBitrate;
          }

          else
          {
            v35 = v32 + (v33 - v32) / (v30 - v29) * (NormalizedPeakBitrate - v29);
            if (NormalizedPeakBitrate <= v29)
            {
              v35 = v31 + (v32 - v31) / (v29 - v28) * (NormalizedPeakBitrate - v28);
            }
          }

          v36 = v26;
          FigAlternateSetStartupScore(v8[1], v10 * v35 - v11 * v36);
          v8 = *v8;
        }

        while (v8);
      }
    }
  }

  segPumpUnlockAndSendAllPendingNotifications();
  OUTLINED_FUNCTION_812();
}

void segPumpAttemptNetworkMonitorSetupDispatch(const void *a1)
{
  OUTLINED_FUNCTION_50();
  if (!segPumpLockAndCopyPumpFromRetainProxy())
  {
    AttemptNetworkMonitorSetup(v2);
  }

  segPumpUnlockAndSendAllPendingNotifications();
  if (cf)
  {
    CFRelease(cf);
  }

  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t segPumpRemoveStreamingCacheListeners(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_187();
    FigRetainProxyGetOwner();
    CMBaseObjectGetDerivedStorage();
    if (dword_1EAF16A30)
    {
      OUTLINED_FUNCTION_10_1();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v9 = OUTLINED_FUNCTION_311(os_log_and_send_and_compose_flags_and_os_log_type, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SBYTE2(v13), BYTE3(v13), SHIDWORD(v13));
      if (OUTLINED_FUNCTION_115_1(v9))
      {
        OUTLINED_FUNCTION_53_0();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_612();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_84_0();
    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

uint64_t segPumpCustomURLLoaderCancelRequest(uint64_t result)
{
  if (*(result + 80))
  {
    VTable = CMBaseObjectGetVTable();
    v2 = *(VTable + 16);
    result = VTable + 16;
    if (*(v2 + 32))
    {
      v3 = OUTLINED_FUNCTION_177();

      return v4(v3);
    }
  }

  return result;
}

void segPumpStreamingCacheDiskWriteErrorCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!segPumpLockAndCopyPumpFromRetainProxy() && MEMORY[0x128] == a4)
  {
    if (a5)
    {
      FigCFDictionaryGetInt32IfPresent();
    }

    segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(a2, 0);
  }

  segPumpUnlockAndSendAllPendingNotifications();
}

uint64_t segPumpLockAndCopyPumpFromRetainProxy()
{
  OUTLINED_FUNCTION_113_1();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    return 4294954413;
  }

  if (v1 && v0)
  {
    Owner = FigRetainProxyGetOwner();
    if (Owner)
    {
      v3 = CFRetain(Owner);
      *v1 = v3;
      if (v3)
      {
        v4 = CFGetTypeID(v3);
        if (v4 == FigBytePumpGetTypeID())
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          *v0 = DerivedStorage;
          if (DerivedStorage)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      *v1 = 0;
    }
  }

  OUTLINED_FUNCTION_376();

  return FigSignalErrorAtGM();
}

void segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (a2 != -15626)
  {
    FigCreateErrorForOSStatus(a2, &cf);
    segPumpSendEndCallbackForAllActiveStreams();
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t segPumpSendEndCallbackForAllActiveStreams()
{
  OUTLINED_FUNCTION_261();
  values = v1;
  FigRetainProxyRetain();
  v2 = segPumpLockAndCopyPumpFromRetainProxy();
  if (!v2 && !segPumpSentEndCallbackForAllActiveStreams(0) && !FigCFErrorIsEqualToOSStatus(v0, @"CoreMediaErrorDomain", -15626))
  {
    if (v0)
    {
      v3 = MEMORY[0x2028];
      MEMORY[0x2028] = v0;
      CFRetain(v0);
      if (v3)
      {
        CFRelease(v3);
      }

      AllocatorForMedia = FigGetAllocatorForMedia();
      v5 = CFDictionaryCreate(AllocatorForMedia, &kFigBytePumpFatalErrorNotificationValue_Error, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      segPumpReadyNotification(0, @"FBP_FatalErrorOccurred", v5);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    segPumpSendEndCallbackForActiveStream(0, MEMORY[0x1A8], values);
    segPumpSendEndCallbackForActiveStream(0, MEMORY[0x198], values);
    segPumpSendEndCallbackForActiveStream(0, MEMORY[0x188], values);
    segPumpSendEndCallbackForActiveStream(0, MEMORY[0x1B0], values);
    segPumpSendEndCallbackForActiveStream(0, MEMORY[0x1A0], values);
    segPumpSendEndCallbackForActiveStream(0, MEMORY[0x190], values);
  }

  segPumpUnlockAndSendAllPendingNotifications();
  FigRetainProxyRelease();
  return v2;
}

uint64_t segPumpSentEndCallbackForAllActiveStreams(uint64_t a1)
{
  if (segPumpSentEndCallbackForAnyStream(a1))
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v4 = *(a1 + 392 + v2);
      if (*(v4 + 16))
      {
        v3 &= *(v4 + 1152);
      }

      v2 += 16;
    }

    while (v2 != 48);
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t segPumpStopStream(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_180_1();
  FigRetainProxyRetain();
  ++*(v3 + 880);
  *(v3 + 860) = 0;
  v6 = *(v3 + 288);
  if (v6)
  {
    CFRelease(v6);
    *(v3 + 288) = 0;
    *(v3 + 320) = -1;
  }

  v7 = OUTLINED_FUNCTION_171();
  segPumpCancelMediaFileReadAndResetData(v7, v8, a3, 0);
  if (FigRetainProxyIsInvalidated() || (v9 = OUTLINED_FUNCTION_171(), segPumpSetStreamDiscontinuityDomain(v9, v10, 0), v11 = *(v3 + 537), segPumpResetConnection(v4, v3 + 408), *(v3 + 859) = 0, v12 = OUTLINED_FUNCTION_171(), segPumpStreamUpdateIndexExpectedArrival(v12, v13), FigRetainProxyIsInvalidated()))
  {
    v20 = 4294954511;
  }

  else
  {
    *(v3 + 400) = 0;
    FigHTTPStopAndReleaseTimer((v3 + 392));
    if (!a3 || v11)
    {
      v14 = *(v3 + 280);
      if (v14)
      {
        CFRelease(v14);
        *(v3 + 280) = 0;
      }

      v15 = *(v3 + 272);
      if (v15)
      {
        CFRelease(v15);
        *(v3 + 272) = 0;
      }

      for (i = *(v3 + 680); i; i = *i)
      {
        v17 = OUTLINED_FUNCTION_178();
        segPumpStreamDontReuseHTTPRequest(v17, v18);
      }
    }

    v19 = *(v3 + 56);
    if (v19)
    {
      CFRelease(v19);
      *(v3 + 56) = 0;
    }

    segPumpCompleteNWAlternateForStream(v3);
    v20 = 0;
    *(v3 + 1216) = 0;
  }

  FigRetainProxyRelease();
  return v20;
}

uint64_t segPumpUpdateCurrentAlternate(uint64_t a1, uint64_t a2)
{
  *(a1 + 8328) = a2;
  result = segPumpUpdateBytesRequiredForNetworkPrediction(a1);
  v4 = *(a1 + 8328);
  v5 = *(a1 + 9232);
  if (v4)
  {
    result = FigAlternateGetAlternateIndex(*(v4 + 8));
    if (v5)
    {
      VTable = CMBaseObjectGetVTable();
      v7 = *(VTable + 16);
      result = VTable + 16;
      if (*(v7 + 56))
      {
        v8 = OUTLINED_FUNCTION_177();

        return v9(v8);
      }
    }
  }

  else if (v5)
  {
    v10 = CMBaseObjectGetVTable();
    v11 = *(v10 + 16);
    result = v10 + 16;
    if (*(v11 + 64))
    {
      v12 = OUTLINED_FUNCTION_177();

      return v13(v12);
    }
  }

  return result;
}

uint64_t segPumpUpdateBytesRequiredForNetworkPrediction(uint64_t a1)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  v59 = 0;
  *v60 = 0;
  OUTLINED_FUNCTION_381_1();
  v53 = 0;
  v54 = 0;
  cf = 0;
  v3 = FigRCLGetNumberWithDefault(*(v2 + 9320), @"minRequiredBytesForNetworkHistory");
  v4 = v3;
  valuePtr = v3;
  theArray[0] = 0;
  v5 = *(a1 + 9760);
  if (v5)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(v5, @"AfmfpbProperty_CandidateAlternatesForAdaptiveBitrateSwitching", AllocatorForMedia, theArray);
      if (theArray[0])
      {
        Count = CFArrayGetCount(theArray[0]);
        v9 = theArray[0];
        if (Count)
        {
          goto LABEL_10;
        }

        if (theArray[0])
        {
          CFRelease(theArray[0]);
          theArray[0] = 0;
        }
      }
    }
  }

  v10 = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_376();
    v39 = FigSignalErrorAtGM();
    if (theArray[0])
    {
      CFRelease(theArray[0]);
    }

    if (v39)
    {
      v9 = 0;
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  v9 = Mutable;
  v12 = *(a1 + 8280);
  if (!v12)
  {
    goto LABEL_11;
  }

  do
  {
    CFArrayAppendValue(v9, v12[1]);
    v12 = *v12;
  }

  while (v12);
LABEL_10:
  if (!v9)
  {
LABEL_51:
    v9 = 0;
    goto LABEL_52;
  }

LABEL_11:
  if (CFArrayGetCount(v9) < 1)
  {
LABEL_52:
    v39 = 0;
    goto LABEL_53;
  }

  HasOnlyAudioOnly = FigAlternateSelectionUtility_AlternateListHasOnlyAudioOnly(v9);
  v14 = *(a1 + 16 * *(a1 + 8600) + 392);
  v15 = FigGetAllocatorForMedia();
  inserted = FigAlternateFilterTreeCreate(v15, &cf);
  if (inserted)
  {
    goto LABEL_46;
  }

  v17 = *(a1 + 8328);
  if (!v17 || FigAlternateIs4k(*(v17 + 8)) || HasOnlyAudioOnly)
  {
    v18 = FigGetAllocatorForMedia();
    inserted = FigAlternateHighestPeakBitRateFilterCreate(v18, &v55);
    if (!inserted)
    {
      v19 = cf;
      v20 = v55;
      v21 = 600;
      goto LABEL_30;
    }

LABEL_46:
    v39 = inserted;
    goto LABEL_53;
  }

  if (*(a1 + 8218) && *(v14 + 96) - *(v14 + 904) < (3 * *(a1 + 8)))
  {
    v22 = FigGetAllocatorForMedia();
    inserted = FigAlternateNextHighestPeakBitRateFilterCreate(v22, *(*(a1 + 8328) + 8), &v53, 1.1);
    if (inserted)
    {
      goto LABEL_46;
    }

    v19 = cf;
    v20 = v53;
    v21 = 500;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_249_1();
    HasHDVideoResolution = FigAlternateHasHDVideoResolution(v23);
    v25 = FigGetAllocatorForMedia();
    inserted = FigAlternateLowestPeakBitRateFilterCreate(v25, &v57);
    if (inserted)
    {
      goto LABEL_46;
    }

    v26 = dbl_196E72880[!HasHDVideoResolution];
    v27 = HasHDVideoResolution ? 4800.0 : 2560.0;
    v28 = FigGetAllocatorForMedia();
    inserted = FigAlternateResolutionClosestHeightFilterCreate(v28, &v58, v27, v26);
    if (inserted)
    {
      goto LABEL_46;
    }

    v29 = FigGetAllocatorForMedia();
    inserted = FigAlternateContinuousFramesOnlyFilterCreate(v29, &v56);
    if (inserted)
    {
      goto LABEL_46;
    }

    inserted = FigAlternateFilterTreeInsertLeaf(cf, v56, 400);
    if (inserted)
    {
      goto LABEL_46;
    }

    inserted = FigAlternateFilterTreeInsertLeaf(cf, v58, 300);
    if (inserted)
    {
      goto LABEL_46;
    }

    v19 = cf;
    v20 = v57;
    v21 = 200;
  }

LABEL_30:
  inserted = FigAlternateFilterTreeInsertLeaf(v19, v20, v21);
  if (inserted)
  {
    goto LABEL_46;
  }

  v30 = FigGetAllocatorForMedia();
  inserted = FigAlternateLowestIndexAlternateFilterCreate(v30, &v54);
  if (inserted)
  {
    goto LABEL_46;
  }

  inserted = FigAlternateFilterTreeInsertLeaf(cf, v54, 100);
  if (inserted)
  {
    goto LABEL_46;
  }

  inserted = FigAlternateFilterTreeCreateFilter(cf, @"FigNetworkHistoryTree", -1, &v59);
  if (inserted)
  {
    goto LABEL_46;
  }

  v31 = v59;
  v32 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v32)
  {
    v39 = 4294954514;
    goto LABEL_53;
  }

  inserted = v32(v31, v9, v60);
  if (inserted)
  {
    goto LABEL_46;
  }

  if (!*v60 || CFArrayGetCount(*v60) != 1)
  {
    OUTLINED_FUNCTION_376();
    inserted = FigSignalErrorAtGM();
    goto LABEL_46;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*v60, 0);
  v34 = ValueAtIndex;
  if (*(a1 + 8328))
  {
    PeakBitRate = FigAlternateGetPeakBitRate(ValueAtIndex);
    v36 = OUTLINED_FUNCTION_249_1();
    if (PeakBitRate <= FigAlternateGetPeakBitRate(v36))
    {
      v34 = *(*(a1 + 8328) + 8);
    }
  }

  v37 = FigRCLGetNumberWithDefault(*(a1 + 9320), @"minContentMillisecondsBeforePredicting");
  v38 = FigAlternateGetPeakBitRate(v34);
  v39 = 0;
  v40 = v38 * v37 / 8000;
  if (v40 <= v4)
  {
    v40 = v4;
  }

  valuePtr = v40;
LABEL_53:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (*v60)
  {
    CFRelease(*v60);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (!v39)
  {
    if (dword_1EAF16A30)
    {
      LODWORD(v59) = 0;
      LOBYTE(v58) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v42 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v58);
      if (OUTLINED_FUNCTION_109_0(v42))
      {
        v43 = &stru_1F0B1AFB8;
        if (a1)
        {
          OUTLINED_FUNCTION_164_1();
          if (!v45)
          {
            v43 = v44;
          }
        }

        *v60 = 136315650;
        *&v60[4] = "segPumpUpdateBytesRequiredForNetworkPrediction";
        v61 = 2114;
        v62 = v43;
        v63 = 2048;
        v64 = valuePtr;
        OUTLINED_FUNCTION_82_1();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524();
    }

    *(a1 + 9472) = valuePtr;
    v46 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
    if (v46)
    {
      v47 = v46;
      v48 = *(a1 + 9760);
      if (v48)
      {
        v49 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v49)
        {
          v39 = v49(v48, @"AfmfpbProperty_BytesRequiredForNetworkPrediction", v47);
        }

        else
        {
          v39 = 4294954514;
        }
      }

      else
      {
        v39 = 0;
      }

      CFRelease(v47);
    }

    else
    {
      OUTLINED_FUNCTION_376();
      return FigSignalErrorAtGM();
    }
  }

  return v39;
}

uint64_t FigReportingAgentStatsSetIntValueWithOptions_0(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_370_1();
    VTable = CMBaseObjectGetVTable();
    v2 = *(VTable + 16);
    result = VTable + 16;
    if (*(v2 + 56))
    {
      OUTLINED_FUNCTION_148_1();

      return v3();
    }
  }

  return result;
}

uint64_t segPumpCopyCachedTimeRanges(uint64_t a1, CFTypeRef *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  values = 0;
  v53 = 0;
  if (*(a1 + 296))
  {
    v3 = a1;
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v42 = a2;
      v6 = 0;
      v7 = 0;
      v8 = v3 + 392;
      v9 = MEMORY[0x1E695E9C0];
      v43 = v3 + 392;
      v44 = v3;
      do
      {
        v10 = *(v8 + 16 * v7);
        if (*(v10 + 16))
        {
          LOBYTE(v51.start.value) = 0;
          v11 = *(v10 + 64);
          if (v11)
          {
            FigCFErrorIsEqualToOSStatus(*(v10 + 1160), @"CoreMediaErrorDomain", -15642);
            OUTLINED_FUNCTION_786();
            if (!v12)
            {
              if (v6)
              {
                OUTLINED_FUNCTION_299_0();
                if (!v13)
                {
                  FigStreamingCacheMediaStreamIsComplete(*(v3 + 296), *(v10 + 64), &v51);
                }

                LODWORD(v11) = 1;
              }
            }
          }

          if (LOBYTE(v51.start.value))
          {
            LODWORD(v11) = 0;
          }

          if (*v10 == *(v3 + 8600))
          {
            v6 = v11;
          }

          if (v11 == 1)
          {
            v14 = *(v10 + 64);
            if (v14)
            {
              v15 = FigStreamingCacheMediaStreamCopyCachedTimeRanges(*(v3 + 296), v14, &v53);
              if (v15)
              {
                goto LABEL_64;
              }
            }

            if (!v53 || !CFArrayGetCount(v53))
            {
              v16 = FigGetAllocatorForMedia();
              values = OUTLINED_FUNCTION_170_0(v16, MEMORY[0x1E6960CA8]);
              if (!values)
              {
                goto LABEL_62;
              }

              v17 = FigGetAllocatorForMedia();
              v53 = CFArrayCreate(v17, &values, 1, v9);
              if (values)
              {
                CFRelease(values);
                values = 0;
              }
            }

            if (CFArrayGetCount(Mutable))
            {
              v18 = FigGetAllocatorForMedia();
              v19 = CFArrayCreateMutable(v18, 0, v9);
              if (!v19)
              {
                goto LABEL_62;
              }

              theArray = v19;
              v45 = v6;
              if (CFArrayGetCount(v53) >= 1)
              {
                v20 = 0;
                v21 = 0;
                while (v20 < CFArrayGetCount(Mutable))
                {
                  memset(&v50, 0, sizeof(v50));
                  timescale = 0;
                  value = 0;
                  values = CFArrayGetValueAtIndex(v53, v21);
                  CMTimeRangeMakeFromDictionary(&v51, values);
                  v22 = Mutable;
                  values = CFArrayGetValueAtIndex(Mutable, v20);
                  CMTimeRangeMakeFromDictionary(&v50, values);
                  range = v51;
                  otherRange = v50;
                  CMTimeRangeGetIntersection(&v49, &range, &otherRange);
                  value = v49.start.value;
                  flags = v49.start.flags;
                  timescale = v49.start.timescale;
                  epoch = v49.start.epoch;
                  v24 = v49.duration.value;
                  v27 = v49.duration.timescale;
                  v26 = v49.duration.flags;
                  v28 = v49.duration.epoch;
                  if ((v49.start.flags & 1) == 0 || (v49.duration.flags & 1) == 0 || v49.duration.epoch || v49.duration.value < 0 || (v49.start.value = v49.duration.value, v49.start.timescale = v49.duration.timescale, v49.start.flags = v49.duration.flags, v49.start.epoch = 0, *&range.start.value = *MEMORY[0x1E6960CC0], range.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&v49.start, &range.start)))
                  {
                    v29 = FigGetAllocatorForMedia();
                    v49.start.value = value;
                    v49.start.timescale = timescale;
                    v49.start.flags = flags;
                    v49.start.epoch = epoch;
                    v49.duration.value = v24;
                    v49.duration.timescale = v27;
                    v49.duration.flags = v26;
                    v49.duration.epoch = v28;
                    v30 = CMTimeRangeCopyAsDictionary(&v49, v29);
                    values = v30;
                    if (!v30)
                    {
                      OUTLINED_FUNCTION_40_0();
                      v40 = FigSignalErrorAtGM();
                      Mutable = v22;
                      v32 = theArray;
                      goto LABEL_61;
                    }

                    CFArrayAppendValue(theArray, v30);
                    if (values)
                    {
                      CFRelease(values);
                      values = 0;
                    }
                  }

                  v49 = v51;
                  CMTimeRangeGetEnd(&range.start, &v49);
                  v49 = v50;
                  CMTimeRangeGetEnd(&otherRange.start, &v49);
                  v31 = CMTimeCompare(&range.start, &otherRange.start);
                  v21 += v31 >> 31;
                  v20 += v31 >= 0;
                  Mutable = v22;
                  if (v21 >= CFArrayGetCount(v53))
                  {
                    break;
                  }
                }
              }

              v32 = theArray;
              v8 = v43;
              v3 = v44;
              v6 = v45;
              if (!CFArrayGetCount(theArray))
              {
                v33 = FigGetAllocatorForMedia();
                v34 = OUTLINED_FUNCTION_170_0(v33, MEMORY[0x1E6960CA8]);
                values = v34;
                if (!v34)
                {
                  OUTLINED_FUNCTION_40_0();
                  v40 = FigSignalErrorAtGM();
LABEL_61:
                  CFRelease(v32);
                  goto LABEL_55;
                }

                CFArrayAppendValue(theArray, v34);
                if (values)
                {
                  CFRelease(values);
                  values = 0;
                }
              }

              CFRetain(theArray);
              CFRelease(Mutable);
              CFRelease(theArray);
              v9 = MEMORY[0x1E695E9C0];
            }

            else
            {
              CFArrayGetCount(v53);
              v35 = OUTLINED_FUNCTION_193_0();
              v57.location = 0;
              CFArrayAppendArray(v35, v36, v57);
              v32 = Mutable;
            }

            if (v53)
            {
              CFRelease(v53);
              v53 = 0;
            }

            Mutable = v32;
          }
        }

        else
        {
          OUTLINED_FUNCTION_299_0();
          if (v13)
          {
            v6 = 0;
          }
        }

        ++v7;
      }

      while (v7 != 3);
      if (CFArrayGetCount(Mutable))
      {
LABEL_54:
        v40 = 0;
        *v42 = CFRetain(Mutable);
        goto LABEL_55;
      }

      v37 = FigGetAllocatorForMedia();
      values = OUTLINED_FUNCTION_170_0(v37, MEMORY[0x1E6960CA8]);
      if (values)
      {
        v38 = OUTLINED_FUNCTION_201_0();
        CFArrayAppendValue(v38, v39);
        if (values)
        {
          CFRelease(values);
          values = 0;
        }

        goto LABEL_54;
      }

LABEL_62:
      OUTLINED_FUNCTION_40_0();
    }

    else
    {
      OUTLINED_FUNCTION_40_0();
    }

    v15 = FigSignalErrorAtGM();
LABEL_64:
    v40 = v15;
  }

  else
  {
    Mutable = 0;
    *a2 = 0;
    v40 = 4294954513;
  }

LABEL_55:
  if (v53)
  {
    CFRelease(v53);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v40;
}

void segPumpCreateAccessLog(uint64_t a1, CFAllocatorRef allocator, __CFDictionary **a3)
{
  v6 = a1 + 392;
  v7 = *(a1 + 392 + 16 * *(a1 + 8600));
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v9 = Mutable;
    v10 = (*(v6 + 16 * *(a1 + 8600)) + 680);
    do
    {
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_11;
      }

      v11 = v10[22];
    }

    while (!v11);
    v12 = FigCFHTTPCreateAddressString(v11);
    if (v12)
    {
      v13 = v12;
      CFDictionarySetValue(v9, @"s-ip", v12);
      CFRelease(v13);
    }

    v14 = 0;
    v15 = 0;
    do
    {
      v15 += *(*(v6 + v14) + 952);
      v14 += 16;
    }

    while (v14 != 48);
    if (FigCFDictionarySetCFIndex())
    {
LABEL_10:
      CFRelease(v9);
      goto LABEL_66;
    }

LABEL_11:
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (segPumpGetObservedNetworkStats(a1, UpTimeNanoseconds - 60000000000, v40) || FigCFDictionarySetDouble() || FigCFDictionarySetDouble())
    {
      goto LABEL_10;
    }

    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    *number = 0u;
    v43 = 0u;
    v17 = v7[120];
    if (v17 >= 1)
    {
      segPumpGetObservedNetworkStats(a1, v17, number);
    }

    OUTLINED_FUNCTION_627();
    if (FigCFDictionarySetDouble() || *(a1 + 8760) > 0.0 && FigCFDictionarySetDouble())
    {
      goto LABEL_10;
    }

    if (FigCFDictionarySetInt64() || *(a1 + 8728) >= 1 && (FigCFDictionarySetInt64() || *(a1 + 8736) >= 1 && FigCFDictionarySetInt64()) || FigCFDictionarySetDouble() || FigCFDictionarySetDouble())
    {
      goto LABEL_10;
    }

    v18 = FigCFHTTPCreateURLString(*(*v6 + 8));
    if (v18)
    {
      v19 = v18;
      CFDictionarySetValue(v9, @"uri", v18);
      CFRelease(v19);
    }

    if (FigCFDictionarySetCFIndex())
    {
      goto LABEL_10;
    }

    if (FigCFDictionarySetCFIndex())
    {
      goto LABEL_10;
    }

    if (FigCFDictionarySetDouble())
    {
      goto LABEL_10;
    }

    FigCFDictionarySetDouble();
    if (FigCFDictionarySetCFIndex() || FigCFDictionarySetCFIndex() || FigCFDictionarySetCFIndex() || FigCFDictionarySetCFIndex() || FigCFDictionarySetCFIndex())
    {
      goto LABEL_10;
    }

    v20 = *(a1 + 8328);
    if (v20)
    {
      AverageBitRate = FigAlternateGetAverageBitRate(*(v20 + 8));
      DeclaredPeakBitRate = FigAlternateGetDeclaredPeakBitRate(*(*(a1 + 8328) + 8));
      v39 = 0;
      segPumpGetSafeNetworkBandwidth(a1, &v39, 0, 0);
      if (FigCFDictionarySetDouble())
      {
        goto LABEL_10;
      }

      number[0] = 0;
      valuePtr = 0;
      v23 = *(a1 + 9760);
      if (v23)
      {
        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_230_1();
        v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v24)
        {
          v24(v23, @"AfmfpbProperty_MinimumBandwidthToSwitchUp", v3, number);
          if (number[0])
          {
            CFNumberGetValue(number[0], kCFNumberSInt32Type, &valuePtr);
            if (number[0])
            {
              CFRelease(number[0]);
            }
          }
        }
      }

      FigCFDictionarySetInt32();
      if (DeclaredPeakBitRate)
      {
        FigCFDictionarySetInt32();
      }

      if (AverageBitRate)
      {
        FigCFDictionarySetInt32();
      }

      if (FigAlternateGetFrameRate(*(*(a1 + 8328) + 8)) != 0.0)
      {
        FigCFDictionarySetDouble();
      }
    }

    v25 = *(a1 + 224);
    if (v25)
    {
      CFDictionarySetValue(v9, @"cs-guid", v25);
    }

    if (*(a1 + 8218))
    {
      v26 = @"VOD";
    }

    else
    {
      v26 = @"LIVE";
    }

    CFDictionarySetValue(v9, @"s-playback-type", v26);
    v27 = *(a1 + 9080);
    if (v27)
    {
      CFDictionarySetValue(v9, @"c-client-name", v27);
    }

    v28 = FigNetworkInterfaceReporterCopyPhysicalStatistics(*(a1 + 9312));
    if (v28)
    {
      v29 = v28;
      v30 = OUTLINED_FUNCTION_627();
      FigAccessLogUpdateWithPhysicalStatistcs(v30, v31, v32, v33, v34, v35, v36, v37);
      CFRelease(v29);
    }

    if (*(a1 + 8600) == 1)
    {
      v38 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v38 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(v9, @"c-audio-only", *v38);
    if (v7[143] >= 1)
    {
      FigCFDictionarySetInt64();
    }

    if (v7[140] >= 1)
    {
      FigCFDictionarySetInt64();
      FigCFDictionarySetDouble();
    }

    *a3 = v9;
  }

LABEL_66:
  OUTLINED_FUNCTION_426_1();
}

void segPumpLoadSynchronousProperties()
{
  OUTLINED_FUNCTION_845();
  if (v0[989])
  {
    goto LABEL_23;
  }

  v1 = v0;
  if (v0[987])
  {
    goto LABEL_23;
  }

  v2 = *(v0[49] + 48);
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = v1[995];
  SessionDataSpecifiers = FigMultivariantPlaylistGetSessionDataSpecifiers(v2);
  if (!SessionDataSpecifiers || CFArrayGetCount(SessionDataSpecifiers) < 1)
  {
    goto LABEL_23;
  }

  if (v1[995])
  {
    goto LABEL_10;
  }

  v3 = dispatch_group_create();
  v1[995] = v3;
  v5 = v1[1014];
  if (v5)
  {
    CFRelease(v5);
    v1[1014] = 0;
    v3 = v1[995];
  }

  if (v3)
  {
LABEL_10:
    dispatch_retain(v3);
    if (*(v1 + 7968))
    {
      goto LABEL_15;
    }

    *(v1 + 7968) = 1;
    v6 = v1[995];
    if (v6)
    {
      dispatch_group_enter(v6);
      if (!v1[1225])
      {
        v1[1225] = FigGetUpTimeNanoseconds();
      }

      v7 = OUTLINED_FUNCTION_627();
      SessionDataRequest = segPumpSendNextSessionDataRequest(v7, v8, v9);
      dispatch_group_leave(v1[995]);
      if (SessionDataRequest)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_111();
    if (!FigSignalErrorAtGM())
    {
LABEL_15:
      FigRetainProxyRetain();
      FigRetainProxyUnlockAll();
      dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
      if (v1[1225] >= 1 && FigGetUpTimeNanoseconds() - v1[1225] >= 1)
      {
        v11 = v1[1154];
        if (v11)
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            OUTLINED_FUNCTION_165_1();
            v12(v11);
          }
        }
      }

      OUTLINED_FUNCTION_517();
      FigRetainProxyRelock();
      dispatch_release(v3);
      if (!FigRetainProxyIsInvalidated())
      {
        *(v1 + 7968) = 0;
      }

      FigRetainProxyRelease();
    }

LABEL_23:
    OUTLINED_FUNCTION_843();
    return;
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_843();

  FigSignalErrorAtGM();
}

void segPumpCreateIFrameReport()
{
  OUTLINED_FUNCTION_629();
  v2 = v1;
  if (*(v3 + 8896))
  {
    OUTLINED_FUNCTION_400();
    FigGetUpTimeNanoseconds();
    Mutable = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      goto LABEL_6;
    }

    v5 = Mutable;
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
    FigCFDictionarySetInt64();
    FigCFDictionarySetDouble();
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
LABEL_6:
  OUTLINED_FUNCTION_345_1();
}

uint64_t segPumpCreateNetworkStatistics(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = *(a1 + 9312);
  if (!v4 || (Mutable = FigNetworkInterfaceReporterCopyPhysicalStatistics(v4)) == 0)
  {
    v6 = OUTLINED_FUNCTION_173_0();
    Mutable = CFDictionaryCreateMutable(v6, v7, v8, v9);
    if (!Mutable)
    {
      return 4294954510;
    }
  }

  v10 = Mutable;
  v11 = OUTLINED_FUNCTION_265();
  InterfaceTypeEnum = segPumpGetInterfaceTypeEnum(v11, v12);
  StringFromInterfaceType = FigErrorLogGetStringFromInterfaceType(InterfaceTypeEnum);
  CFDictionarySetValue(v10, @"cs-iftype", StringFromInterfaceType);
  result = 0;
  *a3 = v10;
  return result;
}

uint64_t segPumpCreateStartupStatistics(uint64_t a1, CFAllocatorRef allocator, CFMutableDictionaryRef *a3)
{
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v6 = Mutable;
  if (*(a1 + 8848))
  {
    FigCFDictionarySetInt32();
  }

  if (*(a1 + 8))
  {
    FigCFDictionarySetInt32();
  }

  result = 0;
  *a3 = v6;
  return result;
}

uint64_t segPumpEnsureNetworkCostMonitor(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8656))
  {
    return 0;
  }

  result = FigNetworkCostMonitorCreate(a2, (a1 + 8656));
  if (!result)
  {
    v4 = *(a1 + 8656);
    if (v4 && *(a1 + 9832))
    {
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v5)
      {
        v5(v4, 0x1F0B5F7F8, *MEMORY[0x1E695E4D0]);
      }
    }

    segPumpUpdateNetworkCostHasHighSpeedHighPower(a1);
    segPumpUpdateNetworkCostIsExpensive(a1);
    segPumpUpdateNetworkCostHasEndTag(a1);
    return 0;
  }

  return result;
}

void segPumpEnsureCMCDHeaderVendor(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  v19 = v18;
  if (!*(v18 + 9776))
  {
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      goto LABEL_14;
    }

    v20 = OUTLINED_FUNCTION_308();
    if (v21(v20))
    {
      goto LABEL_14;
    }

    UInt64 = FigCFNumberGetUInt64();
    if (!UInt64)
    {
      goto LABEL_16;
    }

    if ((v23 = UInt64, FigCFDictionaryGetValue(), v24 = OUTLINED_FUNCTION_178(), FigCMCDHeaderVendorCreate(v24, v25, v26, v27, v28)) || (v29 = *(v19 + 88)) != 0 && FigCMCDHeaderVendorSetNetworkHistory(*(v19 + 9776), v29) || segPumpUpdateCMCDStreamType(v19) || FigCMCDHeaderVendorSetStreamingFormat(*(v19 + 9776), *(v19 + 337) != 0) || FigCMCDHeaderVendorSetAllowedKeys(*(v19 + 9776), v23))
    {
LABEL_14:
      v32 = *(v19 + 9776);
      if (v32)
      {
        CFRelease(v32);
        *(v19 + 9776) = 0;
      }
    }

    else if (*(v19 + 9680) && *(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v30 = OUTLINED_FUNCTION_515();
      v31(v30);
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_652();
}

uint64_t segPumpCopyNearFutureLiveBufferInfo(uint64_t a1)
{
  if (*(a1 + 8218))
  {
    return 4294954513;
  }

  OUTLINED_FUNCTION_187();
  v4 = *(v3 + 392);
  v5 = *(v3 + 408);
  v6 = 0.0;
  v7 = v5;
  EndDate = 0.0;
  if (*(v4 + 16))
  {
    EndDate = segPumpPlaylistGetEndDate(*(v4 + 56));
    v7 = *(v2 + 408);
  }

  if (*(v7 + 16))
  {
    v6 = segPumpPlaylistGetEndDate(*(v5 + 56));
  }

  if (EndDate <= 0.0 && v6 <= 0.0)
  {
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM();
  }

  else
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v11 = Mutable;
      if (EndDate != 0.0)
      {
        if (v6 == 0.0)
        {
          v5 = v4;
        }

        else
        {
          if (EndDate < v6)
          {
            v6 = EndDate;
          }

          if (v6 == EndDate)
          {
            v5 = v4;
          }
        }
      }

      FigCFDictionarySetDouble();
      segPumpGetDurationOfLastMediaSegment(*(v5 + 56));
      FigCFDictionarySetDouble();
      FigCFDictionarySetDouble();
      FigCFDictionarySetDouble();
      result = 0;
      *v1 = v11;
    }

    else
    {
      return 4294954655;
    }
  }

  return result;
}

uint64_t segPumpSendNextSessionDataRequest(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v98 = *MEMORY[0x1E69E9840];
  value = 0;
  v85 = 0;
  v4 = a2[6];
  if (!v4)
  {
    v7 = 0;
LABEL_97:
    v39 = 0;
    goto LABEL_57;
  }

  v7 = *(a1 + 7992);
  v8 = *(a1 + 8088);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 8088) = 0;
  }

  v9 = (a1 + 7976);
  *(a1 + 7992) = 0;
  *(a1 + 8064) = 0;
  v10 = *(a1 + 8112);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 8112) = 0;
  }

  for (i = 0; ; ++i)
  {
    SessionDataSpecifiers = FigMultivariantPlaylistGetSessionDataSpecifiers(a2[6]);
    if (SessionDataSpecifiers)
    {
      SessionDataSpecifiers = CFArrayGetCount(SessionDataSpecifiers);
    }

    if (i >= SessionDataSpecifiers)
    {
      break;
    }

    v13 = FigMultivariantPlaylistGetSessionDataSpecifiers(a2[6]);
    ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
    if (FigSessionDataSpecifierGetURL(ValueAtIndex))
    {
      SessionDataPrivateData = segPumpEnsureAndGetSessionDataPrivateData(ValueAtIndex);
      v16 = SessionDataPrivateData;
      if (SessionDataPrivateData && !*(SessionDataPrivateData + 16))
      {
        v21 = SessionDataPrivateData[4];
        if (v21)
        {
          CFRelease(v21);
          v16[4] = 0;
        }

        segPumpFreeChapterArtworkQueue(v16 + 23);
        *(v16 + 9) = 0;
        v22 = *(a1 + 8112);
        *(a1 + 8112) = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
        }

        if (v22)
        {
          CFRelease(v22);
        }

        v16[23] = 0;
        v16[24] = v16 + 23;
        break;
      }
    }

    else if (FigSessionDataSpecifierGetValue(ValueAtIndex))
    {
      v17 = segPumpEnsureMetadataArray(a1);
      if (v17)
      {
        goto LABEL_100;
      }

      Identifier = FigSessionDataSpecifierGetIdentifier(ValueAtIndex);
      v19 = FigSessionDataSpecifierGetValue(ValueAtIndex);
      Language = FigSessionDataSpecifierGetLanguage(ValueAtIndex);
      v17 = FigHLSSessionDataCopyMetadataEntry(Identifier, v19, Language, 0, &value);
      if (v17)
      {
        goto LABEL_100;
      }

      CFArrayAppendValue(*(a1 + 7896), value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }
  }

  v23 = *(a1 + 8112);
  if (!v23)
  {
    LOBYTE(v4) = 0;
    goto LABEL_97;
  }

  if (!FigSessionDataSpecifierGetURL(v23))
  {
    OUTLINED_FUNCTION_120();
    v17 = FigSignalErrorAtGM();
    goto LABEL_100;
  }

  if (!*(a1 + 328))
  {
    goto LABEL_36;
  }

  URL = FigSessionDataSpecifierGetURL(*(a1 + 8112));
  if (URL)
  {
    URL = CFRetain(URL);
  }

  cf[0] = URL;
  v17 = FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(*(a1 + 320), cf);
  if (v17)
  {
LABEL_100:
    v39 = v17;
    LOBYTE(v4) = 0;
    goto LABEL_57;
  }

  FigSessionDataSpecifierSetURL(*(a1 + 8112), cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_36:
  if (*v9)
  {
    CFRelease(*v9);
    *v9 = 0;
  }

  v25 = FigSessionDataSpecifierGetURL(*(a1 + 8112));
  *(a1 + 7976) = CFRetain(v25);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  *(a1 + 8008) = UpTimeNanoseconds;
  if (!*(a1 + 8040))
  {
    *(a1 + 8000) = UpTimeNanoseconds;
  }

  if (!*(a1 + 296))
  {
    goto LABEL_45;
  }

  v27 = *v9;
  cf[0] = 0;
  URLAndString = segPumpCreateURLAndString(v27, 0, cf);
  v29 = cf[0];
  if (!URLAndString)
  {
    v30 = FigStreamingCacheCopySessionData(*(a1 + 296), cf[0], &v85);
    v29 = cf[0];
    if (!cf[0])
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v30 = URLAndString;
  if (cf[0])
  {
LABEL_43:
    CFRelease(v29);
  }

LABEL_44:
  if (v30 << 16)
  {
    LOBYTE(v4) = 0;
    v39 = v30;
    goto LABEL_57;
  }

LABEL_45:
  v31 = *(a1 + 9232);
  if (v31)
  {
    v32 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v32)
    {
      v32(v31, 0x1F0B64678, 0x1F0B669B8, 1);
    }
  }

  v33 = v85;
  v34 = *(a1 + 8112);
  if (v85)
  {
    v35 = malloc_type_calloc(1uLL, 0x20uLL, 0x20040DC1BFBCFuLL);
    if (v35)
    {
      v36 = v35;
      v37 = *a1;
      if (*a1)
      {
        v37 = CFRetain(v37);
      }

      *v36 = v37;
      v36[1] = a2;
      v36[2] = CFRetain(v33);
      if (v34)
      {
        v38 = CFRetain(v34);
      }

      else
      {
        v38 = 0;
      }

      v36[3] = v38;
      dispatch_async_f(*(a1 + 72), v36, segPumpDispatchParseSessionDataFromCacheFunc);
      goto LABEL_56;
    }

    OUTLINED_FUNCTION_120();
    v17 = FigSignalErrorAtGM();
    if (!v17)
    {
LABEL_56:
      v39 = 0;
      LOBYTE(v4) = 1;
      goto LABEL_57;
    }

    goto LABEL_100;
  }

  FigSessionDataSpecifierGetURL(v34);
  v41 = OUTLINED_FUNCTION_171_1();
  if (segPumpShouldRequestURLAsHTTPURL(v41, v42))
  {
    if (dword_1EAF16A30)
    {
      OUTLINED_FUNCTION_201_1();
      v54 = OUTLINED_FUNCTION_141_1();
      os_log_type_enabled(v54, BYTE3(v83));
      OUTLINED_FUNCTION_101_0();
      if (v53)
      {
        v56 = v55;
      }

      else
      {
        v56 = HIDWORD(v83);
      }

      if (v56)
      {
        if (*(a1 + 8944))
        {
          v57 = *(a1 + 8944);
        }

        else
        {
          v57 = &stru_1F0B1AFB8;
        }

        v58 = *a2;
        v59 = FigSessionDataSpecifierGetURL(*(a1 + 8112));
        v53 = *(a1 + 347) == 0;
        *v86 = 136315906;
        *&v86[4] = "segPumpSendNextSessionDataRequest";
        if (v53)
        {
          v60 = @"[]";
        }

        else
        {
          v60 = v59;
        }

        *v87 = 2114;
        *&v87[2] = v57;
        *&v87[10] = 2048;
        v88 = v58;
        LOWORD(v89) = 2114;
        *(&v89 + 2) = v60;
        OUTLINED_FUNCTION_95_1();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_449();
    }

    if (!*(a1 + 9816))
    {
      *(a1 + 9816) = FigGetUpTimeNanoseconds();
    }

    v61 = *(a1 + 9232);
    if (v61)
    {
      v62 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v62)
      {
        v62(v61, 0x1F0B64678, 0x1F0B669D8, 1);
      }
    }

    v63 = *(a1 + 7984);
    FigSessionDataSpecifierGetURL(*(a1 + 8112));
    v64 = *a1;
    v92 = 0u;
    v93 = 0u;
    *cf = 0u;
    v91 = 0u;
    v94 = 0x900000000;
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    v79 = v64;
    v65 = OUTLINED_FUNCTION_178();
    segPumpCreateHTTPRequest(v65, v66, 0, v63, v7, v67, v68, v69, 0, 0x100000008, cf, 0, 0, 0, segPumpSessionDataReadCallback, v79, 0, v9, v82, v83, value, v85, *v86, *&v86[8], *v87, *&v87[4], v88, v89, *(&v89 + 1), cf[0], cf[1], v91, *(&v91 + 1));
    v39 = v70;
    v53 = v70 == 0;
  }

  else
  {
    FigSessionDataSpecifierGetURL(*(a1 + 8112));
    OUTLINED_FUNCTION_281_0();
    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_394_1();
    segPumpCustomURLLoaderGetURLGuts(v43, v44, v45, v46, v47, v48, v49, 0, v71, v72, v73, v74, v75, v76, v77, v78, v80, v81, v82, v83, value, v85, *v86);
    v39 = v50;
    if (!*(a1 + 9824))
    {
      *(a1 + 9824) = FigGetUpTimeNanoseconds();
    }

    v51 = *(a1 + 9232);
    if (v51)
    {
      v52 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v52)
      {
        v52(v51, 0x1F0B64678, 0x1F0B669F8, 1);
      }
    }

    v53 = v39 == 0;
  }

  LOBYTE(v4) = v53;
LABEL_57:
  if (a3)
  {
    *a3 = v4;
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v85)
  {
    CFRelease(v85);
  }

  return v39;
}

uint64_t segPumpEnsureMetadataArray(uint64_t a1)
{
  if (*(a1 + 7896))
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  *(a1 + 7896) = Mutable;
  if (Mutable)
  {
    return 0;
  }

  OUTLINED_FUNCTION_376();

  return FigSignalErrorAtGM();
}

uint64_t FigReportingAgentStatsAddToCountValue(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_113_1();
    VTable = CMBaseObjectGetVTable();
    v2 = *(VTable + 16);
    result = VTable + 16;
    if (*(v2 + 32))
    {
      v3 = OUTLINED_FUNCTION_64_0();

      return v4(v3);
    }
  }

  return result;
}

void segPumpCreateHTTPRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const __CFArray *a23, int a24, unsigned int a25, const void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_193();
  v108[15] = *MEMORY[0x1E69E9840];
  v105 = 0;
  cf = v41;
  v104 = 0;
  v43 = (a25 & 1) == 0 || v36 == 0;
  v103 = 0;
  if (*(v33 + 335))
  {
    OUTLINED_FUNCTION_374();
LABEL_73:
    FigSignalErrorAtGM();
    goto LABEL_65;
  }

  v44 = v39;
  v45 = v38;
  v46 = v36;
  v47 = v35;
  v48 = v40;
  v49 = v34;
  v50 = v33;
  if (segPumpCreateURLWithQueryParams(v33, v37, a23, &v103))
  {
    goto LABEL_65;
  }

  if (*(v50 + 48))
  {
    v51 = *(v50 + 40);
    cf = v51;
    if (!v51)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v51 = cf;
    if (!cf)
    {
      goto LABEL_15;
    }
  }

  if (!v43 || v51 == *(v50 + 40))
  {
    v55 = 1;
    goto LABEL_23;
  }

LABEL_15:
  v52 = *(v50 + 32);
  if (!v52)
  {
    goto LABEL_72;
  }

  v53 = *(v50 + 64);
  v54 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v54 || v54(v52, v53, v44, &cf))
  {
    goto LABEL_65;
  }

  if (!cf)
  {
LABEL_72:
    OUTLINED_FUNCTION_374();
    goto LABEL_73;
  }

  if (*(v50 + 48) && !*(v50 + 40))
  {
    v55 = 0;
    *(v50 + 40) = CFRetain(cf);
  }

  else
  {
    v55 = 0;
  }

LABEL_23:
  if (segPumpAmendHTTPRequestFlags(v50, &a25))
  {
    if ((v55 & 1) == 0)
    {
LABEL_64:
      CFRelease(cf);
    }
  }

  else
  {
    v101 = v55;
    v56 = a33;
    v57 = a26;
    v58 = OUTLINED_FUNCTION_770();
    v100 = segPumpCopyHTTPRequestCreationsOptionsAndSetNWActivityAndStuff(v48, v58, v59, v47, v60, v61);
    segPumpEnsureCMCDHeaderVendor(v50, v62, v63, v64, v65, v66, v67, v68, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
    if (v69)
    {
      v70 = cf;
      v71 = *(v50 + 9776);
      v72 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v72)
      {
        v72(v70, 0x1F0B5F698, v71);
      }
    }

    v73 = cf;
    v102 = v103;
    v74 = a25;
    memcpy(v108, v57, 0x70uLL);
    v75 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v75)
    {
      memcpy(__dst, v108, 0x70uLL);
      v76 = v100;
      if (v75(v73, v49, v46, v102, 0, v45, v100, v74, __dst, a27, a28, a29, a30, a31, &v105, &v104))
      {
        v77 = 0;
      }

      else
      {
        if (!*(v50 + 336))
        {
          FigNetworkUrgencyMonitorAddHTTPRequest(*(v50 + 9712));
        }

        v77 = 1;
      }
    }

    else
    {
      v77 = 0;
      v76 = v100;
    }

    v78 = *(v56 + 8);
    v79 = cf;
    *(v56 + 8) = cf;
    if (v79)
    {
      CFRetain(v79);
    }

    if (v78)
    {
      CFRelease(v78);
    }

    v80 = *(v56 + 16);
    if (v80)
    {
      CFRelease(v80);
    }

    *(v56 + 16) = v105;
    *(v56 + 80) = v104;
    if (dword_1EAF16A30)
    {
      OUTLINED_FUNCTION_384_1();
      v81 = OUTLINED_FUNCTION_348_1();
      v82 = os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_28_1(v82))
      {
        v83 = *(v50 + 8944);
        if (!v83)
        {
          v83 = &stru_1F0B1AFB8;
        }

        if (v47)
        {
          v84 = *v47;
        }

        else
        {
          v84 = -1;
        }

        LODWORD(v108[0]) = 136316418;
        *(v108 + 4) = "segPumpCreateHTTPRequest";
        WORD2(v108[1]) = 2114;
        *(&v108[1] + 6) = v83;
        HIWORD(v108[2]) = 2048;
        v108[3] = v84;
        LOWORD(v108[4]) = 2048;
        *(&v108[4] + 2) = v50;
        WORD1(v108[5]) = 2048;
        *(&v108[5] + 4) = v105;
        WORD2(v108[6]) = 2048;
        *(&v108[6] + 6) = cf;
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_417();
    }

    v85 = *v56;
    *v56 = v102;
    if (v102)
    {
      CFRetain(v102);
    }

    if (v85)
    {
      CFRelease(v85);
    }

    if (v77)
    {
      if ((a25 & 0x400) != 0)
      {
        __dst[0] = segPumpGetCurrentRTT(v50);
        v86 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, __dst);
        if (v86)
        {
          v87 = v86;
          v88 = v105;
          v89 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v89)
          {
            v89(v88, @"FHRP_DefaultLatency", v87);
          }

          CFRelease(v87);
        }
      }
    }

    if (v76)
    {
      CFRelease(v76);
    }

    if ((v101 & 1) == 0)
    {
      goto LABEL_64;
    }
  }

LABEL_65:
  if (v103)
  {
    CFRelease(v103);
  }

  OUTLINED_FUNCTION_191();
}

void segPumpSessionDataReadCallback()
{
  OUTLINED_FUNCTION_629();
  v27 = v3;
  v28 = v4;
  v6 = v5;
  OUTLINED_FUNCTION_308_1();
  v25 = 0;
  cf = 0;
  v24 = 0;
  FigRetainProxyRetain();
  OUTLINED_FUNCTION_198_1();
  if (!segPumpLockAndCopyPumpFromRetainProxy())
  {
    if (*(v25 + 7960))
    {
      if (!*(v25 + 8112))
      {
        goto LABEL_10;
      }

      v7 = *(v25 + 392);
      if (v6)
      {
        OUTLINED_FUNCTION_197();
        segPumpHandleSessionDataNetworkError();
        v19 = v18;
        OUTLINED_FUNCTION_335_0();
        goto LABEL_25;
      }

      if (v2)
      {
        if (!*(v25 + 8088))
        {
          FigGetAllocatorForMedia();
          OUTLINED_FUNCTION_296();
          Empty = CMBlockBufferCreateEmpty(v8, v9, v10, v11);
          if (Empty)
          {
            goto LABEL_29;
          }
        }

        OUTLINED_FUNCTION_310();
        Empty = CMBlockBufferAppendBufferReference(v13, v14, v15, v16, v17);
        if (Empty)
        {
          goto LABEL_29;
        }
      }

      if ((v1 & 2) == 0)
      {
        goto LABEL_10;
      }

      *(segPumpEnsureAndGetSessionDataPrivateData(*(v25 + 8112)) + 16) = 1;
      v21 = v25;
      *(v25 + 8040) = 0;
      if (*(v21 + 8048))
      {
        CFRelease(*(v21 + 8048));
        v21 = v25;
        *(v25 + 8048) = 0;
      }

      Empty = segPumpSetWiFiStatsOnNetworkPredictor(v21, v21 + 7976);
      if (Empty)
      {
LABEL_29:
        v19 = Empty;
        goto LABEL_30;
      }

      segPumpParseSessionDataFromConnection();
      v19 = segPumpSendNextSessionDataRequest(v25, v7, &v24);
      if (v24)
      {
        LOBYTE(v20) = 1;
        goto LABEL_25;
      }

      segPumpResetConnection(v25, v25 + 7976);
      if (*(v25 + 9816) >= 1 && FigGetUpTimeNanoseconds() - *(v25 + 9816) >= 1)
      {
        v22 = *(v25 + 9232);
        if (v22)
        {
          v20 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (!v20)
          {
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_165_1();
          v23(v22);
        }
      }

      LOBYTE(v20) = 0;
LABEL_25:
      if (!v19)
      {
        if (v20)
        {
          goto LABEL_10;
        }

        goto LABEL_27;
      }

LABEL_30:
      segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(v0, v19);
LABEL_27:
      dispatch_group_leave(*(v25 + 7960));
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM();
  }

LABEL_10:
  segPumpUnlockAndSendAllPendingNotifications();
  if (cf)
  {
    CFRelease(cf);
  }

  FigRetainProxyRelease();
  OUTLINED_FUNCTION_345_1();
}

void segPumpDispatchParseSessionDataFromCacheFunc(const void **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = 0;
  if (!segPumpLockAndCopyPumpFromRetainProxy())
  {
    if (MEMORY[0x1FB0])
    {
      if (!FigCFEqual())
      {
        goto LABEL_11;
      }

      *(segPumpEnsureAndGetSessionDataPrivateData(v4) + 16) = 1;
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_496();
      if (!FigCreateCFDataWithBlockBuffer() && !segPumpParseSessionDataBuffer(0, 0, 0))
      {
        v6 = segPumpSendNextSessionDataRequest(0, v3, &v7);
        if (v7)
        {
          if (!v6)
          {
            goto LABEL_11;
          }
        }

        else
        {
          segPumpResetConnection(0, 7976);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_429();
      FigSignalErrorAtGM();
    }

    dispatch_group_leave(MEMORY[0x1F18]);
  }

LABEL_11:
  segPumpUnlockAndSendAllPendingNotifications();
  if (v5)
  {
    CFRelease(v5);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
  OUTLINED_FUNCTION_860();
}

uint64_t segPumpParseSessionDataBuffer(uint64_t a1, const void *a2, void *a3)
{
  v5 = a1;
  v6 = *(a1 + 8112);
  SessionDataPrivateData = segPumpEnsureAndGetSessionDataPrivateData(v6);
  theArray = 0;
  theDict = 0;
  cf = 0;
  v91 = 0;
  if (FigSessionDataSpecifierGetFormatType(v6) != 2)
  {
    if (FigSessionDataSpecifierGetFormatType(v6) == 1)
    {
      goto LABEL_5;
    }

    if (FigSessionDataSpecifierGetFormatType(v6) == 3 || FigSessionDataSpecifierIsVenueDescriptionMetadata())
    {
      if (a2)
      {
        v23 = CFRetain(a2);
        goto LABEL_14;
      }
    }

    else if (!FigSessionDataSpecifierGetFormatType(v6))
    {
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_197();
      v23 = CFPropertyListCreateWithData(v68, v69, v70, v71, v72);
      v91 = v23;
      if (!v23)
      {
LABEL_5:
        v14 = FigCFHTTPCreatePropertyListFromJSON(a2, &v91);
        v13 = v91;
        if (v14)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }

LABEL_14:
      v13 = v23;
      goto LABEL_17;
    }

    v13 = 0;
    goto LABEL_17;
  }

  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_197();
  v13 = CFPropertyListCreateWithData(v8, v9, v10, v11, v12);
  if (!v13)
  {
    v14 = -12642;
LABEL_6:
    v15 = v14;
    FigSessionDataSpecifierGetURL(v6);
    OUTLINED_FUNCTION_330_1();
    segPumpRTCReportingUpdateAndIssueErrorEvent();
    FigGetAllocatorForMedia();
    FigSessionDataSpecifierGetURL(v6);
    v16 = OUTLINED_FUNCTION_173_0();
    Entry = FigErrorLogCreateEntry(v16, v17, v18, v19, v15, @"CoreMediaErrorDomain", @"Failed to parse HLS Session Data", 0, 0, 0, 4, 3, a3);
    if (Entry)
    {
      v82 = Entry;
      segPumpAppendErrorLogDictionary(v5, Entry);
      CFRelease(v82);
    }

    OUTLINED_FUNCTION_62_0();
    v21 = FigSignalErrorAtGM();
    goto LABEL_9;
  }

LABEL_17:
  if (!*(v5 + 9808))
  {
    *(v5 + 9808) = FigGetUpTimeNanoseconds();
  }

  v24 = *(v5 + 392);
  v25 = *(v24 + 48);
  if (v25)
  {
    for (i = 0; ; ++i)
    {
      SessionDataSpecifiers = FigMultivariantPlaylistGetSessionDataSpecifiers(v25);
      if (SessionDataSpecifiers)
      {
        SessionDataSpecifiers = CFArrayGetCount(SessionDataSpecifiers);
      }

      if (i >= SessionDataSpecifiers)
      {
        break;
      }

      v28 = FigMultivariantPlaylistGetSessionDataSpecifiers(*(v24 + 48));
      ValueAtIndex = CFArrayGetValueAtIndex(v28, i);
      v30 = segPumpEnsureAndGetSessionDataPrivateData(ValueAtIndex);
      if (FigSessionDataSpecifierIsChapterMetadata(ValueAtIndex) && v30[16] && *(v30 + 23))
      {
        goto LABEL_36;
      }

      v25 = *(v24 + 48);
    }
  }

  v31 = segPumpEnsureAndGetSessionDataPrivateData(*(v5 + 8112));
  if (!v31[4])
  {
    v32 = v31;
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    v32[4] = Mutable;
    if (!Mutable)
    {
      OUTLINED_FUNCTION_62_0();
      v21 = FigSignalErrorAtGM();
      if (v21)
      {
        goto LABEL_9;
      }
    }
  }

  Identifier = FigSessionDataSpecifierGetIdentifier(v6);
  v36 = *(v5 + 352);
  URL = FigSessionDataSpecifierGetURL(*(v5 + 8112));
  v22 = FigHLSSessionDataCopyChapterMetadataAndCopyErrorLogEntry(Identifier, v13, URL, a3, &theArray, &theDict, v36);
  if (theDict && (v38 = FigGetAllocatorForMedia(), (MutableCopy = CFDictionaryCreateMutableCopy(v38, 0, theDict)) != 0))
  {
    v66 = MutableCopy;
    v67 = FigGetAllocatorForMedia();
    FigErrorLogSetSeverity(v67, v66, 3);
    segPumpAppendErrorLogDictionary(v5, v66);
    CFRelease(v66);
    if (v22)
    {
      goto LABEL_99;
    }
  }

  else if (v22)
  {
    goto LABEL_99;
  }

  if (theArray)
  {
    CFArrayGetCount(theArray);
  }

  v40 = OUTLINED_FUNCTION_298();
  v92.location = 0;
  CFArrayAppendArray(v40, v41, v92);
LABEL_36:
  v42 = *(SessionDataPrivateData + 4);
  if (!v42 || CFArrayGetCount(v42) < 1)
  {
    if (FigSessionDataSpecifierIsLocalizedRenditionNameMetadata(*(v5 + 8112)))
    {
      v65 = *(v5 + 7928);
      *(v5 + 7928) = v13;
      if (!v13)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (!FigSessionDataSpecifierIsCustomMediaSelectionSchemeMetadata(*(v5 + 8112)))
      {
        v21 = segPumpEnsureMetadataArray(v5);
        if (v21 || (v79 = FigSessionDataSpecifierGetIdentifier(v6), Language = FigSessionDataSpecifierGetLanguage(*(v5 + 8112)), v81 = FigSessionDataSpecifierGetURL(*(v5 + 8112)), v21 = FigHLSSessionDataCopyMetadataEntry(v79, v13, Language, v81, &cf), v21))
        {
LABEL_9:
          v22 = v21;
          goto LABEL_99;
        }

        CFArrayAppendValue(*(v5 + 7896), cf);
        goto LABEL_90;
      }

      v65 = *(v5 + 7944);
      *(v5 + 7944) = v13;
      if (!v13)
      {
        goto LABEL_63;
      }
    }

    CFRetain(v13);
LABEL_63:
    if (v65)
    {
      CFRelease(v65);
    }

    goto LABEL_90;
  }

  if (!*(v5 + 328))
  {
    goto LABEL_118;
  }

  v85 = SessionDataPrivateData;
  v86 = v5;
  v83 = segPumpEnsureAndGetSessionDataPrivateData(v6);
  v43 = *(v83 + 4);
  v91 = 0;
  v44 = FigGetAllocatorForMedia();
  v45 = CFArrayCreateMutable(v44, 0, MEMORY[0x1E695E9C0]);
  if (v43)
  {
    v84 = v13;
    if (CFArrayGetCount(v43) < 1)
    {
LABEL_54:
      v64 = *(v83 + 4);
      *(v83 + 4) = v45;
      if (v45)
      {
        CFRetain(v45);
      }

      if (v64)
      {
        CFRelease(v64);
      }

      v59 = 0;
      v54 = 0;
      v52 = 0;
      v22 = 0;
LABEL_59:
      v13 = v84;
    }

    else
    {
      v46 = 0;
      v87 = v45;
      while (1)
      {
        v47 = OUTLINED_FUNCTION_267_0();
        v49 = CFArrayGetValueAtIndex(v47, v48);
        Value = CFDictionaryGetValue(v49, @"ChapterMetadataItems");
        v51 = FigGetAllocatorForMedia();
        v52 = CFDictionaryCreateMutableCopy(v51, 0, v49);
        if (!v52)
        {
          OUTLINED_FUNCTION_62_0();
          v22 = FigSignalErrorAtGM();
          v59 = 0;
          v54 = 0;
          goto LABEL_59;
        }

        CFArrayAppendValue(v45, v52);
        v53 = FigGetAllocatorForMedia();
        v54 = CFArrayCreateMutable(v53, 0, MEMORY[0x1E695E9C0]);
        if (!v54)
        {
          OUTLINED_FUNCTION_62_0();
          v22 = FigSignalErrorAtGM();
          v59 = 0;
          goto LABEL_59;
        }

        CFDictionarySetValue(v52, @"ChapterMetadataItems", v54);
        if (CFArrayGetCount(Value) >= 1)
        {
          break;
        }

LABEL_53:
        CFRelease(v54);
        CFRelease(v52);
        ++v46;
        v45 = v87;
        if (v46 >= CFArrayGetCount(v43))
        {
          goto LABEL_54;
        }
      }

      v55 = 0;
      while (1)
      {
        v56 = CFArrayGetValueAtIndex(Value, v55);
        v57 = CFDictionaryGetValue(v56, @"URL");
        v58 = FigGetAllocatorForMedia();
        v59 = CFDictionaryCreateMutableCopy(v58, 0, v56);
        if (!v59)
        {
          break;
        }

        CFArrayAppendValue(v54, v59);
        if (v57)
        {
          v60 = FigGetAllocatorForMedia();
          v91 = CFURLCreateWithString(v60, v57, 0);
          if (!v91)
          {
            break;
          }

          v61 = FigSessionDataSpecifierGetURL(v6);
          v62 = FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(v61, &v91);
          if (v62)
          {
            goto LABEL_74;
          }

          v63 = CFURLGetString(v91);
          CFDictionarySetValue(v59, @"URL", v63);
          if (v91)
          {
            CFRelease(v91);
            v91 = 0;
          }
        }

        CFRelease(v59);
        if (++v55 >= CFArrayGetCount(Value))
        {
          goto LABEL_53;
        }
      }

      OUTLINED_FUNCTION_62_0();
      v62 = FigSignalErrorAtGM();
LABEL_74:
      v22 = v62;
      v13 = v84;
      v45 = v87;
    }
  }

  else
  {
    OUTLINED_FUNCTION_62_0();
    v22 = FigSignalErrorAtGM();
    v59 = 0;
    v54 = 0;
    v52 = 0;
  }

  if (v91)
  {
    CFRelease(v91);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  v5 = v86;
  if (v59)
  {
    CFRelease(v59);
  }

  SessionDataPrivateData = v85;
  if (!v22)
  {
LABEL_118:
    if (!*(v5 + 7912))
    {
      v73 = *(SessionDataPrivateData + 4);
      if (v73)
      {
        v73 = CFRetain(v73);
      }

      *(v5 + 7912) = v73;
    }

LABEL_90:
    if (*(v5 + 9808) >= 1 && FigGetUpTimeNanoseconds() - *(v5 + 9808) >= 1 && *(v5 + 9232))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_165_1();
        v74 = OUTLINED_FUNCTION_177();
        v75(v74);
      }

      if (*(v5 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 32))
      {
        v76 = OUTLINED_FUNCTION_177();
        v77(v76);
      }
    }

    v22 = 0;
  }

LABEL_99:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v22;
}

void segPumpRTCReportingUpdateAndIssueErrorEvent()
{
  OUTLINED_FUNCTION_629();
  v28 = v0;
  v29 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = FigCFHTTPCreateURLString(v8);
  v27 = 0;
  if (*(v7 + 9232))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v10 = OUTLINED_FUNCTION_163_1();
      v11(v10);
    }

    v12 = *(v7 + 9232);
    if (v12)
    {
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v13)
      {
        v13(v12, 0x1F0B64538, 0x1F0B657F8, v3, 0);
      }

      v14 = *(v7 + 9232);
      if (v14)
      {
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v15)
        {
          v15(v14, 0x1F0B64538, 0x1F0B65818, v5, 0);
        }

        if (*(v7 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v16 = OUTLINED_FUNCTION_262_1();
          v17(v16);
        }
      }
    }
  }

  if (!segPumpIsConnectedWithHighSpeedHighPower(v7, &v27))
  {
    if (!*(v7 + 9232))
    {
      goto LABEL_17;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v25 = OUTLINED_FUNCTION_293();
      v26(v25);
    }
  }

  if (*(v7 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v18 = OUTLINED_FUNCTION_293();
    v19(v18);
  }

LABEL_17:
  if (v9)
  {
    if (!*(v7 + 9232))
    {
      goto LABEL_25;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_606();
      v20();
    }
  }

  if (*(v7 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v21 = OUTLINED_FUNCTION_171();
    v22(v21);
  }

  if (!v9)
  {
    OUTLINED_FUNCTION_320();
    return;
  }

LABEL_25:
  OUTLINED_FUNCTION_320();

  CFRelease(v23);
}

void segPumpAppendErrorLogDictionary(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_369();
    v5 = *(v4 + 8856);
    if (v5 || (v5 = CFArrayCreateMutable(v2[7], 64, MEMORY[0x1E695E9C0]), (v2[1107] = v5) != 0))
    {
      if (!v2[1148])
      {
        Mutable = CFArrayCreateMutable(v2[7], 0, MEMORY[0x1E695E9C0]);
        v2[1148] = Mutable;
        if (!Mutable)
        {
          return;
        }

        v5 = v2[1107];
      }

      if (CFArrayGetCount(v5) >= 65)
      {
        CFArrayRemoveValueAtIndex(v2[1107], 0);
      }

      CFArrayAppendValue(v2[1107], v3);
      CFArrayAppendValue(v2[1148], v3);
      AllocatorForMedia = FigGetAllocatorForMedia();
      v8 = CFDictionaryCreate(AllocatorForMedia, kFigBytePumpErrorLogNotificationKey_ErrorLogs, v2 + 1148, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v8)
      {
        v9 = v8;
        v10 = OUTLINED_FUNCTION_236();
        segPumpReadyNotification(v10, v11, v12);

        CFRelease(v9);
      }
    }
  }
}

void segPumpHandleSessionDataNetworkError()
{
  OUTLINED_FUNCTION_218_1();
  v55 = v0;
  v56 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *(DerivedStorage + 7992);
  *v45 = 0;
  SessionDataPrivateData = segPumpEnsureAndGetSessionDataPrivateData(*(DerivedStorage + 8112));
  cf = 0;
  if (v3)
  {
    *v3 = 0;
  }

  ++*(DerivedStorage + 8040);
  if (FigStreamingNetworkErrorCreateErrorFromHTTPRequestIfAvailable(v11, v9, v7, v5, &cf))
  {
    goto LABEL_60;
  }

  v13 = *(DerivedStorage + 8048);
  v14 = cf;
  *(DerivedStorage + 8048) = cf;
  if (v14)
  {
    CFRetain(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (FigSessionDataSpecifierIsChapterMetadata(*(DerivedStorage + 8112)))
  {
    if (!*(DerivedStorage + 7920))
    {
      v16 = *(DerivedStorage + 8048);
      if (v16)
      {
        v16 = CFRetain(v16);
      }

      *(DerivedStorage + 7920) = v16;
    }
  }

  else if (FigSessionDataSpecifierIsLocalizedRenditionNameMetadata(*(DerivedStorage + 8112)))
  {
    if (!*(DerivedStorage + 7936))
    {
      v17 = *(DerivedStorage + 8048);
      if (v17)
      {
        v17 = CFRetain(v17);
      }

      *(DerivedStorage + 7936) = v17;
    }
  }

  else if (FigSessionDataSpecifierIsCustomMediaSelectionSchemeMetadata(*(DerivedStorage + 8112)))
  {
    if (!*(DerivedStorage + 7952))
    {
      v18 = *(DerivedStorage + 8048);
      if (v18)
      {
        v18 = CFRetain(v18);
      }

      *(DerivedStorage + 7952) = v18;
    }
  }

  else if (!*(DerivedStorage + 7904))
  {
    v15 = *(DerivedStorage + 8048);
    if (v15)
    {
      v15 = CFRetain(v15);
    }

    *(DerivedStorage + 7904) = v15;
  }

  v19 = cf;
  v20 = *(DerivedStorage + 7992);
  v47 = 0;
  CFErrorGetCode(cf);
  CFErrorGetDomain(v19);
  v21 = CFErrorCopyUserInfo(v19);
  v46 = 0;
  CommonActionForNetworkError = segPumpGetCommonActionForNetworkError();
  if (CommonActionForNetworkError)
  {
    goto LABEL_64;
  }

  v23 = v47;
  if (v20 || v47 != 1)
  {
    goto LABEL_33;
  }

  CommonActionForNetworkError = FigCFHTTPCreateCFErrorFromHTTPStatusCode(-12938, &v46);
  if (CommonActionForNetworkError || (CommonActionForNetworkError = segPumpGetCommonActionForNetworkError()) != 0)
  {
LABEL_64:
    v24 = CommonActionForNetworkError;
    v23 = 0;
    goto LABEL_40;
  }

  v23 = v47;
LABEL_33:
  if ((v23 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    if (v23 == 3)
    {
      v24 = 0;
      if (*(DerivedStorage + 8361))
      {
        v23 = 3;
      }

      else
      {
        v23 = 6;
        v47 = 6;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v47 = 0;
  }

LABEL_40:
  if (v46)
  {
    CFRelease(v46);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (!v24)
  {
    if (v23 == 1)
    {
      segPumpResetConnectionByPreservingConnectionStats(DerivedStorage, DerivedStorage + 7976);
      segPumpEnsureAndGetSessionDataPrivateData(*(DerivedStorage + 8112));
      FigSessionDataSpecifierGetURL(*(DerivedStorage + 8112));
      OUTLINED_FUNCTION_281_0();
      OUTLINED_FUNCTION_39_1();
      OUTLINED_FUNCTION_394_1();
      segPumpCustomURLLoaderGetURLGuts(v25, v26, v27, v28, v29, v30, v31, 0, v40, v41, v42, v43, cf, *v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
      if (!v32)
      {
        v33 = OUTLINED_FUNCTION_171();
        segPumpAppendErrorLogEntryWithCFError(v33, v34, v35, v36, 4, 3);
        if (v3)
        {
          v37 = 1;
LABEL_59:
          *v3 = v37;
        }
      }
    }

    else
    {
      if (v23 == 3)
      {
        if (*(DerivedStorage + 8040) > 2u || *(DerivedStorage + 8624) && (v38 = *(DerivedStorage + 8632)) != 0 && !FigNetworkPathInformationIsHostReachable(v38, 1))
        {
          v23 = 0;
        }

        else
        {
          v23 = 3;
        }
      }

      SessionDataPrivateData[16] = 0;
      OUTLINED_FUNCTION_104_0();
      segPumpHandleCommonNetworkError();
      if (v3 && !v39)
      {
        v37 = v23 == 3;
        goto LABEL_59;
      }
    }
  }

LABEL_60:
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_209_1();
}

void segPumpParseSessionDataFromConnection()
{
  OUTLINED_FUNCTION_369();
  cf[16] = *MEMORY[0x1E69E9840];
  if (CMBlockBufferGetDataLength(*(v1 + 8088)) > 1)
  {
    if (!v0[37])
    {
LABEL_8:
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_496();
      if (!FigCreateCFDataWithBlockBuffer())
      {
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM();
      }

      return;
    }

    URL = FigSessionDataSpecifierGetURL(v0[1014]);
    v3 = v0[1011];
    cf[0] = 0;
    if (v0[37])
    {
      URLAndString = segPumpCreateURLAndString(URL, 0, cf);
      v5 = cf[0];
      if (!URLAndString)
      {
        v6 = FigStreamingCacheSetSessionData(v0[37], cf[0], v3);
        v5 = cf[0];
        if (!cf[0])
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      v6 = URLAndString;
      if (cf[0])
      {
LABEL_6:
        CFRelease(v5);
      }
    }

    else
    {
      OUTLINED_FUNCTION_239();
      v6 = FigSignalErrorAtGM();
    }

LABEL_7:
    if (v6)
    {
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_10_1();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v15 = OUTLINED_FUNCTION_116_0(os_log_and_send_and_compose_flags_and_os_log_type, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26, SBYTE2(v26), BYTE3(v26), SHIDWORD(v26));
  if (OUTLINED_FUNCTION_109_0(v15))
  {
    OUTLINED_FUNCTION_264_0();
    OUTLINED_FUNCTION_168_1();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_38();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_329_0();
  }

  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_524();
  v16 = OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_214_1(v16, v17, v18, -12886, v19, v20, v21, v22, 4, 1);
  segPumpResetConnection(v0, (v0 + 997));
}

void segPumpResetConnectionByPreservingConnectionStats(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_187();
    v4 = *(v3 + 24);
    v5 = *(v3 + 64);
    v6 = *(v3 + 72);
    if (v6)
    {
      v7 = CFRetain(v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = OUTLINED_FUNCTION_177();
    segPumpResetConnection(v8, v9);
    *(v2 + 24) = v4;
    *(v2 + 64) = v5;
    if (v7)
    {
      *(v2 + 72) = CFRetain(v7);

      CFRelease(v7);
    }

    else
    {
      *(v2 + 72) = 0;
    }
  }
}

void segPumpHandleCommonNetworkError()
{
  OUTLINED_FUNCTION_416();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_358_1();
  v9 = v8;
  CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    v28 = v7;
    v10 = 1;
    v11 = 3;
    v12 = 1;
    switch(v0)
    {
      case 0uLL:
        break;
      case 1uLL:
      case 5uLL:
        goto LABEL_29;
      case 3uLL:
        v16 = v1[146];
        v1[146] = v3;
        CFRetain(v3);
        if (v16)
        {
          CFRelease(v16);
        }

        v17 = OUTLINED_FUNCTION_395_0();
        if (!segPumpAttemptToRetryRequest(v17, v18, v5, v19, v28))
        {
          goto LABEL_15;
        }

        goto LABEL_28;
      case 6uLL:
        goto LABEL_17;
      case 7uLL:
        if ((v28 & 4) != 0 && segPumpMoveAlternatesMatchingHostAndPathwayToPenaltyBox(v9, v1[2], v1[5], v28 & 1))
        {
          goto LABEL_28;
        }

        v13 = OUTLINED_FUNCTION_395_0();
        v15 = 0;
LABEL_7:
        if (segPumpMoveStreamAlternateToPenaltyBox(v13, v14, v15))
        {
          goto LABEL_28;
        }

        v11 = 2;
        break;
      case 8uLL:
        v13 = OUTLINED_FUNCTION_395_0();
        v15 = 1;
        goto LABEL_7;
      case 9uLL:
        if (!FigSignalErrorAtGM())
        {
          goto LABEL_10;
        }

        goto LABEL_28;
      default:
LABEL_10:
        if (FigSignalErrorAtGM())
        {
          goto LABEL_28;
        }

LABEL_15:
        v11 = 3;
        break;
    }

    v10 = 0;
    v12 = v11;
LABEL_17:
    v20 = OUTLINED_FUNCTION_489();
    segPumpAppendErrorLogEntryWithCFError(v20, v21, v5, v3, v22, v12);
    if (dword_1EAF16A30)
    {
      v23 = OUTLINED_FUNCTION_371();
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_233();
      if (v25)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        CFErrorGetCode(v3);
        if (v0 - 5 >= 5)
        {
          FigStreamingNetworkErrorGetStringForErrorAction(v0);
        }

        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_51_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_467();
    }

    if (v10)
    {
      segPumpSendEndCallbackForAllActiveStreams();
    }

LABEL_28:
    OUTLINED_FUNCTION_372();
  }

  else
  {
LABEL_29:
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_372();

    FigSignalErrorAtGM();
  }
}

uint64_t segPumpGetCommonActionForNetworkError()
{
  OUTLINED_FUNCTION_471();
  OUTLINED_FUNCTION_50();
  result = FigStreamingNetworkErrorGetRecommendedAction(v2, v3, v4);
  if (!result)
  {
    if (v1)
    {
      v6 = v8;
      if (v8 == 2)
      {
        v6 = 7;
      }

      *v1 = v6;
    }

    if (v0)
    {
      *v0 = v7;
    }
  }

  return result;
}

void segPumpAppendErrorLogEntry(uint64_t a1, uint64_t a2, const __CFURL **a3, int a4, const void *a5, const void *a6, const void *a7, int a8, int a9, int a10)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v39 = *a3;
  }

  else
  {
    v39 = 0;
  }

  v40 = 0;
  cf = 0;
  if (dword_1EAF16A30)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v17 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_288_1(v17))
    {
      if (a1)
      {
        OUTLINED_FUNCTION_253_1();
      }

      v42 = 136316418;
      v43 = "segPumpAppendErrorLogEntry";
      v44 = 2114;
      OUTLINED_FUNCTION_37_0();
      v45 = 1024;
      v46 = a4;
      v47 = v18;
      v48 = a5;
      v49 = v18;
      v50 = a6;
      OUTLINED_FUNCTION_146();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_454();
  }

  if (a8)
  {
    v20 = OUTLINED_FUNCTION_193_0();
    InterfaceTypeEnum = segPumpGetInterfaceTypeEnum(v20, v21);
    value = FigErrorLogGetStringFromInterfaceType(InterfaceTypeEnum);
  }

  else
  {
    value = 0;
  }

  v23 = FigNetworkInterfaceReporterCopyPhysicalStatistics(*(a1 + 9312));
  OUTLINED_FUNCTION_198_0();
  segPumpRTCReportingUpdateAndIssueErrorEvent();
  if (a3)
  {
    v24 = a3[2];
    if (v24)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v26 && (v26(v24, @"FHRP_HTTPResponseHeaders", AllocatorForMedia, &cf), cf))
      {
        v24 = CFHTTPMessageCopyAllHeaderFields(cf);
      }

      else
      {
        v24 = 0;
      }
    }

    v25 = a3[2];
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  Entry = FigErrorLogCreateEntry(*(a1 + 56), v25, v39, *(a1 + 224), a4, a5, a6, a7, value, v23, a9, a10, v24);
  if (v23)
  {
    CFRelease(v23);
  }

  v28 = OUTLINED_FUNCTION_415_0();
  segPumpAppendErrorLogDictionary(v28, v29);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_197();
  CFError = FigCreateCFError(v30, v31, v32, v33, v34, v39, 0);
  v36 = FigGetAllocatorForMedia();
  FigMetricErrorEventCreate(v36, 1, CFError, &v40);
  segPumpPublishMetricEvent(a1, v40);
  if (v24)
  {
    CFRelease(v24);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Entry)
  {
    CFRelease(Entry);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (CFError)
  {
    CFRelease(CFError);
  }
}