void dworch_downloadMedia_downloadFailedCallback(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_downloadMedia_downloadFailedCallback_cold_1();
  }

  else if (FigCFArrayContainsValue())
  {
    if (a5)
    {
      Value = CFDictionaryGetValue(a5, @"AssetDownloaderPayloadKey_CFError");
      v9 = CFDictionaryGetValue(a5, @"AssetDownloaderPayloadKey_SelectedAlternate");
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      *(DerivedStorage + 528) = v9;
      if (dword_1EAF16DB8)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      dworch_transitionToTerminalState(a2, Value);
    }

    else
    {
      dworch_downloadMedia_downloadFailedCallback_cold_2();
    }
  }

  else
  {
    dworch_downloadMedia_downloadFailedCallback_cold_3();
  }
}

void dworch_downloadMedia_loadedTimeRangesChanged(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(MEMORY[0x1E6960CA8] + 16);
  *&v23.start.value = *MEMORY[0x1E6960CA8];
  *&v23.start.epoch = v9;
  *&v23.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_downloadMedia_loadedTimeRangesChanged_cold_1();
  }

  else if (FigCFArrayContainsValue())
  {
    if (a5)
    {
      Value = CFDictionaryGetValue(a5, @"AssetDownloaderPayloadKey_NewlyLoadedTimeRanges");
      v11 = CFDictionaryGetValue(a5, @"AssetDownloaderPayloadKey_CurrentLoadedTimeRanges");
      v12 = CFDictionaryGetValue(a5, @"AssetDownloaderPayloadKey_SelectedMediaArray");
      CMTimeMakeFromDictionary(&v21.start, *(DerivedStorage + 376));
      start = **&MEMORY[0x1E6960CC0];
      CMTimeRangeMake(&v23, &start, &v21.start);
      v13 = *(DerivedStorage + 8);
      v21 = v23;
      v14 = CMTimeRangeCopyAsDictionary(&v21, v13);
      if (v14)
      {
        v15 = v14;
        v16 = (CMBaseObjectGetDerivedStorage() + 536);
        while (1)
        {
          v16 = *v16;
          if (!v16)
          {
            break;
          }

          if (v16[2] == a4)
          {
            v17 = v16[3];
            v16[3] = v11;
            if (v11)
            {
              CFRetain(v11);
            }

            if (v17)
            {
              CFRelease(v17);
            }

            v18 = v16[4];
            v16[4] = v15;
            CFRetain(v15);
            if (v18)
            {
              CFRelease(v18);
            }

            v19 = v16[5];
            v16[5] = v12;
            if (v12)
            {
              CFRetain(v12);
            }

            if (v19)
            {
              CFRelease(v19);
            }

            if (v16 == *(DerivedStorage + 536))
            {
              dworch_sendDidChangeLoadedTimeRangeCallback(a2, Value, v11, v15, v12);
            }

            v20 = *(DerivedStorage + 512);
            if (*(DerivedStorage + 504) != v20 && *(DerivedStorage + 556) == 1)
            {
              *(DerivedStorage + 504) = v20;
              dworch_downloadMedia_startNextMediaSelectionDownload(a2);
            }

            break;
          }
        }

        CFRelease(v15);
      }

      else
      {
        dworch_downloadMedia_loadedTimeRangesChanged_cold_2();
      }
    }

    else
    {
      dworch_downloadMedia_loadedTimeRangesChanged_cold_3();
    }
  }

  else
  {
    dworch_downloadMedia_loadedTimeRangesChanged_cold_4();
  }
}

void dworch_transitionToTerminalStateWithOSStatus(const void *a1, uint64_t a2)
{
  cf = 0;
  FigCreateErrorForOSStatus(a2, &cf);
  dworch_transitionToTerminalState(a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void dworch_sendDidChangeLoadedTimeRangeOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_sendDidChangeLoadedTimeRangeOnCallbackQueue_cold_1();
  }

  else
  {
    v3 = *(DerivedStorage + 224);
    if (v3)
    {
      v3(a1[1], *a1, a1[3], a1[4], a1[5], a1[6]);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[4];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[5];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[6];
  if (v8)
  {
    CFRelease(v8);
  }

  free(a1);
}

void dworch_sendDidFinishDownloadForMediaSelectionCallbackOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_sendDidFinishDownloadForMediaSelectionCallbackOnCallbackQueue_cold_1();
  }

  else
  {
    v3 = *(DerivedStorage + 240);
    if (v3)
    {
      v3(a1[1], *a1, a1[6]);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t dworch_downloadMedia_checkIfStageComplete(const void *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 553))
  {
    return 0;
  }

  v3 = *(DerivedStorage + 456);
  if (!v3 || CFArrayGetCount(v3) < 1)
  {
    v6 = CMBaseObjectGetDerivedStorage();
    v36 = 0;
    CMBaseObject = FigAssetDownloaderGetCMBaseObject(*(v6 + 384));
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v9 = v8(CMBaseObject, @"AssetDownloaderProperty_DownloadedBytes", *MEMORY[0x1E695E480], &v36);
      if (!v9)
      {
        SInt64 = FigCFNumberGetSInt64();
        dworch_sendProgressUpdateCallback(a1, SInt64, SInt64);
        FigStreamingAssetProgressMarkDownloadComplete(*(v6 + 384));
        v11 = *(v6 + 56);
        if (v11)
        {
          FigStreamingAssetDownloadConfigGetTimeRange(v11, v35);
          if (v35[12])
          {
            FigStreamingAssetDownloadConfigGetTimeRange(*(v6 + 56), v34);
            if (v34[36])
            {
              FigStreamingAssetDownloadConfigGetTimeRange(*(v6 + 56), v32);
              if (!v33)
              {
                FigStreamingAssetDownloadConfigGetTimeRange(*(v6 + 56), v30);
                if ((v31 & 0x8000000000000000) == 0)
                {
LABEL_49:
                  if (dword_1EAF16DB8)
                  {
                    LODWORD(cf) = 0;
                    LOBYTE(theArray) = 0;
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v27 = cf;
                    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, theArray))
                    {
                      v28 = v27;
                    }

                    else
                    {
                      v28 = v27 & 0xFFFFFFFE;
                    }

                    if (v28)
                    {
                      v29 = *(v6 + 32);
                      v41 = 136315650;
                      v42 = "dworch_downloadMedia_stageComplete";
                      v43 = 2048;
                      v44 = a1;
                      v45 = 2114;
                      v46 = v29;
                      _os_log_send_and_compose_impl();
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  dworch_transitionToTerminalState(a1, 0);
                  v20 = 0;
                  goto LABEL_57;
                }
              }
            }
          }
        }

        v12 = CMBaseObjectGetDerivedStorage();
        theArray = 0;
        cf = 0;
        v9 = dworch_ensurePersistentStreamingCache(a1);
        if (!v9)
        {
          v13 = *(v12 + 352);
          if (v13)
          {
            v14 = MEMORY[0x1E695E9C0];
            while (1)
            {
              v15 = CFArrayCreate(*(v12 + 8), v13 + 2, 1, v14);
              if (!v15)
              {
                dworch_downloadMedia_checkIfStageComplete_cold_1(v51);
                v19 = 0;
                v20 = v51[0];
                goto LABEL_40;
              }

              v16 = FigAlternateOfflinePlayableForMediaSelectionFilterCreate(*(v12 + 8), *(v12 + 480), v13[3], 1, &cf);
              if (v16)
              {
                goto LABEL_61;
              }

              v17 = cf;
              v18 = *(*(CMBaseObjectGetVTable() + 16) + 24);
              if (!v18)
              {
                v19 = 0;
                v20 = 4294954514;
                goto LABEL_40;
              }

              v16 = v18(v17, v15, &theArray);
              if (v16)
              {
LABEL_61:
                v20 = v16;
                v19 = 0;
                goto LABEL_40;
              }

              if (!theArray || CFArrayGetCount(theArray) != 1)
              {
                break;
              }

              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              CFRelease(v15);
              if (theArray)
              {
                CFRelease(theArray);
                theArray = 0;
              }

              v13 = *v13;
              if (!v13)
              {
                goto LABEL_28;
              }
            }

            v19 = FigMediaSelectionArrayCopyDescription(*(v12 + 8), v13[3]);
            if (dword_1EAF16DB8)
            {
              v38 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v22 = v38;
              if (os_log_type_enabled(v21, type))
              {
                v23 = v22;
              }

              else
              {
                v23 = v22 & 0xFFFFFFFE;
              }

              if (v23)
              {
                v24 = *(v12 + 32);
                v25 = v13[2];
                v41 = 136316162;
                v42 = "dworch_downloadMedia_validateDownloadIsPlayableOffline";
                v43 = 2048;
                v44 = a1;
                v45 = 2114;
                v46 = v24;
                v47 = 2112;
                v48 = v25;
                v49 = 2112;
                v50 = v19;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v20 = 4294950639;
            }

            else
            {
              v20 = 4294950639;
            }
          }

          else
          {
LABEL_28:
            v19 = 0;
            v15 = 0;
            v20 = 0;
          }

LABEL_40:
          if (cf)
          {
            CFRelease(cf);
          }

          if (v15)
          {
            CFRelease(v15);
          }

          if (theArray)
          {
            CFRelease(theArray);
          }

          if (v19)
          {
            CFRelease(v19);
          }

          if (v20)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        }
      }

      v20 = v9;
    }

    else
    {
      v20 = 4294954514;
    }

LABEL_57:
    if (v36)
    {
      CFRelease(v36);
    }

    return v20;
  }

  ValueAtIndex = FigCFArrayGetValueAtIndex();

  return dworch_start(ValueAtIndex);
}

uint64_t dworch_downloadMedia_startNextMediaSelectionDownload(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*(CMBaseObjectGetDerivedStorage() + 556) != 1)
  {
    dworch_downloadMedia_startNextMediaSelectionDownload_cold_1(v44);
    return v44[0];
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = 0;
  v4 = 0;
  value = 0;
  v5 = *MEMORY[0x1E695E4D0];
  v42 = *MEMORY[0x1E695E4C0];
  while (1)
  {
    if (*(DerivedStorage + 520))
    {
      Count = *(DerivedStorage + 496);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (Count < *(DerivedStorage + 504))
      {
        goto LABEL_10;
      }
    }

    if (!*(DerivedStorage + 328))
    {
      goto LABEL_71;
    }

    v7 = *(DerivedStorage + 496);
    if (v7)
    {
      if (CFArrayGetCount(v7))
      {
LABEL_71:
        v11 = 0;
        v40 = 0;
        goto LABEL_66;
      }

LABEL_10:
      if (!*(DerivedStorage + 328))
      {
        v8 = *(DerivedStorage + 520);
        v4 = *(v8 + 16);
        v3 = *(v8 + 24);
      }
    }

    v9 = CMBaseObjectGetDerivedStorage();
    Mutable = CFDictionaryCreateMutable(*(v9 + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = Mutable;
    if (!Mutable)
    {
      if (!dworch_downloadMedia_startNextMediaSelectionDownload_cold_2())
      {
        v11 = 0;
LABEL_64:
        v40 = v44[0];
        goto LABEL_66;
      }

      goto LABEL_31;
    }

    if (v4)
    {
      CFDictionarySetValue(Mutable, @"AssetDownloaderCreateOption_SelectedAlternate", v4);
    }

    CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_DisableCoordinatorInteraction", v5);
    CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_enableDownloadStorageManagementInteraction", v42);
    CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_ReleaseResourcesImmediatelyOnPause", v5);
    v12 = *(v9 + 304);
    if (v12)
    {
      CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_PlaylistCache", v12);
    }

    if (*(v9 + 178))
    {
      CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_DisallowsExpensiveNetworkAccess", v5);
    }

    if (*(v9 + 179))
    {
      CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_DisallowsConstrainedNetworkAccess", v5);
    }

    v13 = *(v9 + 32);
    if (v13)
    {
      CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_DebugIdentifier", v13);
    }

    v14 = *(v9 + 72);
    if (v14)
    {
      CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_ClientBundleIdentifier", v14);
    }

    v15 = *(v9 + 184);
    if (v15)
    {
      CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_NetworkHistory", v15);
    }

    v16 = *(v9 + 424);
    if (v16)
    {
      CFDictionarySetValue(v11, @"AssetDownloaderCreateOption_ContentSteeringMonitor", v16);
    }

    v17 = *(v9 + 56);
    if (v17)
    {
      FigStreamingAssetDownloadConfigGetTimeRange(v17, v44);
      v18 = FigCFDictionarySetCMTimeRange();
      if (v18)
      {
        break;
      }
    }

LABEL_31:
    matched = FigStreamingAssetDownloaderCreateWithAsset(*(DerivedStorage + 8), *(DerivedStorage + 16), *(DerivedStorage + 24), v11, &value);
    if (matched)
    {
      goto LABEL_72;
    }

    if (dword_1EAF16DB8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMBaseObjectGetDerivedStorage();
    CMNotificationCenterGetDefaultLocalCenter();
    matched = FigNotificationCenterAddWeakListener();
    if (matched)
    {
      goto LABEL_72;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    matched = FigNotificationCenterAddWeakListener();
    if (matched)
    {
      goto LABEL_72;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    matched = FigNotificationCenterAddWeakListener();
    if (matched)
    {
      goto LABEL_72;
    }

    v21 = *(DerivedStorage + 400);
    if (v21)
    {
      CMBaseObject = FigAssetDownloaderGetCMBaseObject(value);
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v23)
      {
        goto LABEL_65;
      }

      matched = v23(CMBaseObject, @"AssetDownloaderProperty_MediaSelectionArray", v21);
      if (matched)
      {
        goto LABEL_72;
      }
    }

    if (v3)
    {
      v24 = FigAssetDownloaderGetCMBaseObject(value);
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v25)
      {
        goto LABEL_65;
      }

      matched = v25(v24, @"AssetDownloaderProperty_SelectedMediaArray", v3);
      if (matched)
      {
        goto LABEL_72;
      }
    }

    v26 = *(DerivedStorage + 384);
    v27 = FigAssetDownloaderGetCMBaseObject(value);
    v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v28)
    {
      goto LABEL_65;
    }

    matched = v28(v27, @"AssetDownloaderProperty_ProgressMonitor", v26);
    if (matched)
    {
      goto LABEL_72;
    }

    v29 = *(DerivedStorage + 632);
    v30 = FigAssetDownloaderGetCMBaseObject(value);
    v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v31)
    {
      goto LABEL_65;
    }

    matched = v31(v30, @"AssetDownloaderProperty_ReportingAgent", v29);
    if (matched)
    {
      goto LABEL_72;
    }

    v32 = *(DerivedStorage + 608);
    v33 = FigAssetDownloaderGetCMBaseObject(value);
    v34 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v34)
    {
LABEL_65:
      v40 = 4294954514;
      goto LABEL_66;
    }

    matched = v34(v33, @"AssetDownloaderProperty_MetricEventTimeline", v32);
    if (matched)
    {
      goto LABEL_72;
    }

    v35 = value;
    v36 = malloc_type_calloc(1uLL, 0x38uLL, 0x10E00404C80A7E4uLL);
    if (v36)
    {
      v37 = v35 ? CFRetain(v35) : 0;
      v36[2] = v37;
    }

    else if (!dworch_downloadMedia_startNextMediaSelectionDownload_cold_3())
    {
      goto LABEL_64;
    }

    *v36 = 0;
    v38 = *(DerivedStorage + 544);
    v36[1] = v38;
    *v38 = v36;
    *(DerivedStorage + 544) = v36;
    CFArrayAppendValue(*(DerivedStorage + 496), value);
    v39 = *(DerivedStorage + 520);
    if (v39)
    {
      *(DerivedStorage + 520) = *v39;
    }

    matched = dworch_downloadMedia_matchMediaDownloaderToOrchestratorStatus(a1, value);
    if (matched)
    {
LABEL_72:
      v40 = matched;
      goto LABEL_66;
    }

    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  v40 = v18;
  CFRelease(v11);
  v11 = 0;
LABEL_66:
  if (value)
  {
    CFRelease(value);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v40;
}

uint64_t dworch_start(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
  if (v3)
  {
    v4 = v3;
    if (a1)
    {
      v5 = CFRetain(a1);
    }

    else
    {
      v5 = 0;
    }

    *v4 = v5;
    dispatch_async_f(*DerivedStorage, v4, dworch_startDispatch);
    return 0;
  }

  else
  {
    dworch_start_cold_1(&v7);
    return v7;
  }
}

uint64_t dworch_selectAlternates_pauseForInteractivePlayback()
{
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DB8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  dworch_releaseDiskResources();
  return 0;
}

uint64_t dworch_downloadMetadata_start(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    v3 = DerivedStorage;
    if (*(CMBaseObjectGetDerivedStorage() + 576))
    {
      dworch_downloadMetadata_gotAccessToDestinationURLCallback(a1, 1, *(v3 + 576));
      return 0;
    }

    else
    {
      v5 = *(v3 + 24);
      v6 = *v3;

      return FigAssetDownloadCoordinatorScheduleAccessToURL(a1, v5, v6, 1, dworch_downloadMetadata_gotAccessToDestinationURLCallback);
    }
  }

  else
  {

    return dworch_downloadMetadata_proceedAfterCheckingDestinationURL(a1);
  }
}

uint64_t dworch_persistMetadata_start(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DB8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(CMBaseObjectGetDerivedStorage() + 576))
  {
    return FigAssetDownloadCoordinatorScheduleAccessToURL(a1, *(DerivedStorage + 24), *DerivedStorage, 0, dworch_persistMetadata_gotAccessToDestinationURLCallback);
  }

  dworch_persistMetadata_gotAccessToDestinationURLCallback(a1, 1, *(DerivedStorage + 576));
  return 0;
}

uint64_t dworch_downloadMedia_start()
{
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DB8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 568) || (v2 = DerivedStorage, v3 = *MEMORY[0x1E695E480], Current = CFAbsoluteTimeGetCurrent(), v5 = CFDateCreate(v3, Current), (*(v2 + 568) = v5) != 0) || dworch_downloadMedia_start_cold_1())
  {
    dworch_downloadMedia_start_cold_2();
  }

  return v7;
}

uint64_t dworch_downloadMedia_pauseForInteractivePlayback()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  for (i = 0; ; ++i)
  {
    Count = *(DerivedStorage + 496);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 496), i);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v4)
    {
      return 4294954514;
    }

    result = v4(ValueAtIndex);
    if (result)
    {
      return result;
    }
  }

  for (j = 0; ; ++j)
  {
    v7 = *(DerivedStorage + 456);
    if (v7)
    {
      v7 = CFArrayGetCount(v7);
    }

    if (j >= v7)
    {
      break;
    }

    v8 = FigCFArrayGetValueAtIndex();
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v9)
    {
      return 4294954514;
    }

    result = v9(v8);
    if (result)
    {
      return result;
    }
  }

  dworch_downloadMedia_pauseForInteractivePlayback_cold_1();
  return 0;
}

uint64_t dworch_downloadMedia_resumeFromInteractivePlayback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  for (i = 0; ; ++i)
  {
    Count = *(v3 + 496);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 496), i);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v7)
    {
      return 4294954514;
    }

    result = v7(ValueAtIndex);
    if (result)
    {
      return result;
    }
  }

  for (j = 0; ; ++j)
  {
    v10 = *(v3 + 456);
    if (v10)
    {
      v10 = CFArrayGetCount(v10);
    }

    if (j >= v10)
    {
      break;
    }

    v11 = FigCFArrayGetValueAtIndex();
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v12)
    {
      return 4294954514;
    }

    result = v12(v11);
    if (result)
    {
      return result;
    }
  }

  FigSymptomsReportStreamingAssetDownloadResume((DerivedStorage + 656));
  dworch_issueReportingEvent(a1, 705);
  return 0;
}

uint64_t dworch_copyAssetDownloaderFromRetainProxy(uint64_t a1, void *a2)
{
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_copyAssetDownloaderFromRetainProxy_cold_1(&v6);
    v4 = v6;
  }

  else
  {
    Owner = FigRetainProxyGetOwner();
    if (Owner)
    {
      Owner = CFRetain(Owner);
    }

    v4 = 0;
    *a2 = Owner;
  }

  FigRetainProxyUnlockMutex();
  return v4;
}

uint64_t dworch_ensureTemporaryMetadataOnlyStreamingCache(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 304))
  {
    return 0;
  }

  return dworch_createStreamingCache(a1, @"FSC_MemoryBacking", (DerivedStorage + 304));
}

uint64_t dworch_ensurePersistentStreamingCache(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 480))
  {
    return 0;
  }

  return dworch_createStreamingCache(a1, @"FSC_DiskBacking", (DerivedStorage + 480));
}

uint64_t dworch_createStreamingCache(uint64_t a1, __CFString *a2, CFTypeRef *a3)
{
  v23 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a3)
  {
    dworch_createStreamingCache_cold_2(&v24);
LABEL_27:
    v9 = 0;
    v20 = v24;
    goto LABEL_18;
  }

  v6 = DerivedStorage;
  if (@"FSC_DiskBacking" != a2)
  {
    v7 = (DerivedStorage + 8);
    Mutable = CFDictionaryCreateMutable(*(DerivedStorage + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v9 = Mutable;
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  v10 = *(DerivedStorage + 16);
  AllocatorForMedia = FigGetAllocatorForMedia();
  CMBaseObject = FigAssetGetCMBaseObject(v10);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(CMBaseObject, @"assetProperty_DiskBackedStreamingCache", AllocatorForMedia, &cf);
    if (cf)
    {
      v14 = 0;
      v9 = 0;
      goto LABEL_15;
    }
  }

  v7 = (v6 + 8);
  v15 = CFDictionaryCreateMutable(*(v6 + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v15)
  {
LABEL_26:
    dworch_createStreamingCache_cold_1(&v24);
    goto LABEL_27;
  }

  v9 = v15;
  CFDictionarySetValue(v15, @"FSC_DownloadDestinationURL", *(v6 + 24));
LABEL_10:
  CFDictionarySetValue(v9, @"FSC_Backing", a2);
  v16 = *(v6 + 8);
  v17 = FigAssetGetCMBaseObject(*(v6 + 16));
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v18)
  {
    v19 = v18(v17, @"assetProperty_OriginalNetworkContentURL", v16, &v23);
    if (!v19)
    {
      v19 = FigStreamingCacheCreate(*v7, v23, v9, &cf);
      if (!v19)
      {
        if (@"FSC_DiskBacking" != a2)
        {
LABEL_16:
          v20 = 0;
          *a3 = cf;
          cf = 0;
          goto LABEL_20;
        }

        v14 = 1;
LABEL_15:
        *(v6 + 488) = v14;
        goto LABEL_16;
      }
    }

    v20 = v19;
  }

  else
  {
    v20 = 4294954514;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_20:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v20;
}

uint64_t dworch_selectAlternates_stageComplete(uint64_t a1)
{
  cf[24] = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DB8)
  {
    LODWORD(cf[0]) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  if (!*(DerivedStorage + 312))
  {
    return dworch_changeStageOnQueue(a1, 1u);
  }

  v4 = DerivedStorage;
  TimestampClientDidPauseOnContentSteeringMonitor = dworch_selectAlternates_removePumpListeners(a1);
  if (TimestampClientDidPauseOnContentSteeringMonitor)
  {
    return TimestampClientDidPauseOnContentSteeringMonitor;
  }

  FigBytePumpGetFigBaseObject(*(v4 + 312));
  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v8)
  {
    return 4294954514;
  }

  TimestampClientDidPauseOnContentSteeringMonitor = v8(v7, 0x1F0B1F098, 0);
  if (TimestampClientDidPauseOnContentSteeringMonitor)
  {
    return TimestampClientDidPauseOnContentSteeringMonitor;
  }

  FigBytePumpGetFigBaseObject(*(v4 + 312));
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    return 4294954514;
  }

  v12 = *MEMORY[0x1E695E480];
  TimestampClientDidPauseOnContentSteeringMonitor = v11(v10, 0x1F0B1F7F8, *MEMORY[0x1E695E480], v4 + 424);
  if (TimestampClientDidPauseOnContentSteeringMonitor)
  {
    return TimestampClientDidPauseOnContentSteeringMonitor;
  }

  if (*(v4 + 424))
  {
    if (dword_1EAF16DB8)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(v4 + 556) == 1 && !*(v4 + 561))
    {
      TimestampClientDidPauseOnContentSteeringMonitor = dworch_setLastTimestampClientDidPauseOnContentSteeringMonitor(a1, 0x7FFFFFFFFFFFFFFFLL);
      if (TimestampClientDidPauseOnContentSteeringMonitor)
      {
        return TimestampClientDidPauseOnContentSteeringMonitor;
      }
    }
  }

  FigBytePumpGetFigBaseObject(*(v4 + 312));
  v15 = v14;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    return 4294954514;
  }

  v17 = v16(v15, 0x1F0B1F0B8, v12, cf);
  v18 = cf[0];
  if (!v17)
  {
    if (cf[0])
    {
      v17 = dworch_ensureTemporaryMetadataOnlyStreamingCache(a1);
      v18 = cf[0];
      if (!v17)
      {
        v17 = FigStreamingCacheTransferData(cf[0], *(v4 + 304));
        v18 = cf[0];
      }
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (!v17)
  {
    return dworch_changeStageOnQueue(a1, 1u);
  }

  return v17;
}

uint64_t dworch_selectAlternates_installDeviceCapabilityFilters(const __CFAllocator *a1, uint64_t a2)
{
  v8 = 0;
  cf = 0;
  v4 = FigAlternateMediaValidationFilterCreate(a1, 0, &cf);
  if (v4)
  {
    goto LABEL_18;
  }

  v4 = FigAlternateSelectionBossAddFilter(a2, cf);
  if (v4)
  {
    goto LABEL_18;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v10 = 0;
  FPSupport_GetMainDisplayVideoRangeAndSizeAndFrameRate(&v10, 0, 0);
  v4 = FigAlternateSupportedVideoRangeFilterCreate(a1, v10, &cf);
  if (v4)
  {
    goto LABEL_18;
  }

  v4 = FigAlternateSelectionBossAddFilter(a2, cf);
  if (v4)
  {
    goto LABEL_18;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (!PKDGetSystemCPC(&v8))
  {
    v4 = FigAlternateAllowedCPCFilterCreate(a1, v8, &cf);
    if (v4)
    {
      goto LABEL_18;
    }

    v4 = FigAlternateSelectionBossAddFilter(a2, cf);
    if (v4)
    {
      goto LABEL_18;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  v4 = FigAlternatePreferVideoCodecsWithHardwareDecodeFilterCreate(a1, &cf);
  if (v4)
  {
LABEL_18:
    v5 = v4;
    v6 = cf;
    goto LABEL_19;
  }

  v5 = FigAlternateSelectionBossAddFilter(a2, cf);
  v6 = cf;
  if (!v5 && cf)
  {
    v5 = 0;
LABEL_20:
    CFRelease(v6);
    return v5;
  }

LABEL_19:
  if (v6)
  {
    goto LABEL_20;
  }

  return v5;
}

void dworch_selectUsingMediaSelectionCriteria(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    CFDictionarySetValue(Mutable, *(a2 + 16), a1);
    v7 = FigAutomaticMediaSelectionCreateSelectedMediaArrayForCriteria(*(DerivedStorage + 400), 0, v6, 0, 0, 0, &value);
    if (v7)
    {
      *(a2 + 32) = v7;
    }

    else
    {
      CFArrayAppendValue(*(a2 + 8), value);
      ++*(a2 + 24);
    }

    CFRelease(v6);
    if (value)
    {
      CFRelease(value);
    }
  }

  else
  {
    dworch_selectUsingMediaSelectionCriteria_cold_1(a2);
  }
}

uint64_t dworch_selectAlternates_getMediaSelectionForMediaType(CFArrayRef theArray)
{
  v2 = 0;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v2 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2);
    if (CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType"))
    {
      FigCFStringGetOSTypeValue();
    }

    ++v2;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return 0;
}

void dworch_sendDidResolveMediaSelectionCallbackForSelectedMediaArray(const void *a1, CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (DerivedStorage)
        {
          v8 = DerivedStorage;
          if (*(DerivedStorage + 232))
          {
            v9 = FigCFWeakReferenceHolderCopyReferencedObject();
            if (v9)
            {
              v10 = v9;
              v11 = malloc_type_calloc(1uLL, 0x58uLL, 0x10E004049432B73uLL);
              if (v11)
              {
                v12 = v11;
                if (a1)
                {
                  v13 = CFRetain(a1);
                }

                else
                {
                  v13 = 0;
                }

                *v12 = v13;
                v12[1] = v10;
                if (ValueAtIndex)
                {
                  v14 = CFRetain(ValueAtIndex);
                }

                else
                {
                  v14 = 0;
                }

                v12[6] = v14;
                dispatch_async_f(*(v8 + 296), v12, dworch_sendDidResolveMediaSelectionCallbackOnCallbackQueue);
              }

              else
              {
                dworch_sendDidResolveMediaSelectionCallbackForSelectedMediaArray_cold_1(v10);
              }
            }
          }
        }
      }
    }
  }
}

void dworch_sendDidResolveMediaSelectionCallbackOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_sendDidResolveMediaSelectionCallbackOnCallbackQueue_cold_1();
  }

  else
  {
    v3 = *(DerivedStorage + 232);
    if (v3)
    {
      v3(a1[1], *a1, a1[6]);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

void dworch_updateMediaSelectionsReportingKeys()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 640);
  if (*(DerivedStorage + 624))
  {
    if (!v1)
    {
      return;
    }
  }

  else if (v1 != 2)
  {
    return;
  }

  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v31 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
    if (v31)
    {
      v3 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
      if (v3 && (v4 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0])) != 0)
      {
        v27 = DerivedStorage;
        theArray = *(DerivedStorage + 40);
        v30 = v4;
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            for (i = 0; i != Count; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
              if (ValueAtIndex)
              {
                v7 = ValueAtIndex;
                v8 = CFArrayGetCount(ValueAtIndex);
                if (v8 >= 1)
                {
                  v9 = v8;
                  for (j = 0; j != v9; ++j)
                  {
                    v11 = CFArrayGetValueAtIndex(v7, j);
                    if (v11)
                    {
                      v12 = v11;
                      Value = CFDictionaryGetValue(v11, @"MediaSelectionGroupMediaType");
                      if (Value)
                      {
                        CFArrayAppendValue(Mutable, Value);
                      }

                      v14 = CFDictionaryGetValue(v12, @"MediaSelectionOptionsAudioChannelLayouts");
                      if (v14)
                      {
                        CFArrayAppendValue(v31, v14);
                      }

                      v15 = CFDictionaryGetValue(v12, @"MediaSelectionOptionsLanguageCode");
                      if (v15)
                      {
                        CFArrayAppendValue(v3, v15);
                      }

                      v16 = CFDictionaryGetValue(v12, @"MediaSelectionOptionsName");
                      if (v16)
                      {
                        CFArrayAppendValue(v30, v16);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v17 = *(v27 + 632);
        if (!v17)
        {
          goto LABEL_38;
        }

        v18 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v18)
        {
          v18(v17, 0x1F0B64618, 0x1F0B39E38, Mutable, 0);
        }

        v19 = *(v27 + 632);
        if (!v19)
        {
          goto LABEL_38;
        }

        v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v20)
        {
          v20(v19, 0x1F0B64618, 0x1F0B39E58, v31, 0);
        }

        v21 = *(v27 + 632);
        if (!v21)
        {
          goto LABEL_38;
        }

        v22 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v22)
        {
          v22(v21, 0x1F0B64618, 0x1F0B39E78, v3, 0);
        }

        v23 = *(v27 + 632);
        if (v23 && (v24 = *(*(CMBaseObjectGetVTable() + 16) + 48)) != 0)
        {
          v25 = v23;
          v26 = v30;
          v24(v25, 0x1F0B64618, 0x1F0B39E98, v30, 0);
        }

        else
        {
LABEL_38:
          v26 = v30;
        }
      }

      else
      {
        dworch_updateMediaSelectionsReportingKeys_cold_1();
        v26 = 0;
      }

      CFRelease(Mutable);
      CFRelease(v31);
      if (v3)
      {
        CFRelease(v3);
      }

      if (v26)
      {

        CFRelease(v26);
      }
    }

    else
    {
      dworch_updateMediaSelectionsReportingKeys_cold_2(Mutable);
    }
  }

  else
  {
    dworch_updateMediaSelectionsReportingKeys_cold_3();
  }
}

void dworch_updateAlternateInfoForReporting()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v3 = Mutable;
    v4 = CFArrayCreateMutable(v1, 0, MEMORY[0x1E695E9C0]);
    if (v4)
    {
      dworch_updateAlternateInfoForReporting_cold_1(v1, DerivedStorage, v3, v4);
    }

    else
    {
      dworch_updateAlternateInfoForReporting_cold_2(v3);
    }
  }

  else
  {
    dworch_updateAlternateInfoForReporting_cold_3();
  }
}

void dworch_sendWillDownloadAlternatesOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_sendWillDownloadAlternatesOnCallbackQueue_cold_1();
  }

  else if (*(DerivedStorage + 200) >= 2)
  {
    v3 = *(DerivedStorage + 264);
    if (v3)
    {
      v3(a1[1], *a1, a1[9]);
    }
  }

  v4 = a1[9];
  if (v4)
  {
    CFRelease(v4);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v5 = a1[1];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t dworch_changeStageOnQueue(uint64_t a1, unsigned int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 564) >= a2)
  {
    dworch_changeStageOnQueue_cold_1(v9);
    return v9[0];
  }

  else
  {
    v5 = DerivedStorage;
    if (dword_1EAF16DB8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v5 + 564) = a2;
    if (a2 == 3)
    {
      dworch_releaseDiskResources();
      if (*(v5 + 556) != 1)
      {
        dworch_relinquishAccessToDestinationURL(a1);
      }
    }

    if ((*(v5 + 556) == 1 || a2 <= 2 && *(v5 + 560)) && (v7 = kDownloadOrchestratorStage_JumpTable[6 * *(v5 + 564)]) != 0)
    {
      return (v7)(a1);
    }

    else
    {
      return 0;
    }
  }
}

void dworch_releaseDiskResources()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  if (*(DerivedStorage + 488))
  {
    FigStreamingCacheInvalidate(*(DerivedStorage + 480));
    *(v1 + 488) = 0;
  }

  v2 = *(v1 + 480);
  if (v2)
  {
    CFRelease(v2);
    *(v1 + 480) = 0;
  }
}

uint64_t dworch_relinquishAccessToDestinationURLIfNotDownloadingOrNotLoadingMetadataOrPausedForInteractivePlayback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 556) != 1 && !*(result + 561) && !*(result + 560))
  {
    dworch_releaseDiskResources();

    return dworch_relinquishAccessToDestinationURL(a1);
  }

  return result;
}

void dworch_sendDidReceiveMetricEventOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_sendDidReceiveMetricEventOnCallbackQueue_cold_1();
  }

  else if (*(DerivedStorage + 200) >= 4)
  {
    v3 = *(DerivedStorage + 288);
    if (v3)
    {
      v3(a1[1], *a1, a1[10]);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

void dworch_sendDownloadSucceededCallbackOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_sendDownloadSucceededCallbackOnCallbackQueue_cold_1();
  }

  else
  {
    v3 = *(DerivedStorage + 208);
    if (v3)
    {
      v3(a1[1], *a1);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void dworch_sendDownloadFailedCallbackOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_sendDownloadFailedCallbackOnCallbackQueue_cold_1();
  }

  else
  {
    v3 = *(DerivedStorage + 216);
    if (v3)
    {
      v3(a1[1], *a1, a1[2]);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t dworch_issueReportingEvent(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = *(result + 632);
  if (v4)
  {
    VTable = CMBaseObjectGetVTable();
    v6 = *(VTable + 16);
    result = VTable + 16;
    v7 = *(v6 + 8);
    if (v7)
    {

      return v7(v4, 0x1F0B64618, a2, 1, 0);
    }
  }

  return result;
}

void dworch_downloadMetadata_gotAccessToDestinationURLCallback(const void *a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CFGetTypeID(a1);
  if (v7 != FigAssetDownloaderGetTypeID())
  {
    dworch_downloadMetadata_gotAccessToDestinationURLCallback_cold_1(&v10);
    v9 = v10;
    goto LABEL_9;
  }

  *(DerivedStorage + 576) = a3;
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_downloadMetadata_gotAccessToDestinationURLCallback_cold_2(&v11);
    v9 = v11;
    goto LABEL_9;
  }

  if (a2 && !a3)
  {
    dworch_downloadMetadata_gotAccessToDestinationURLCallback_cold_3(&v12);
    v9 = v12;
    goto LABEL_9;
  }

  if (*(DerivedStorage + 556) == 1 || *(DerivedStorage + 560))
  {
    IsRegisteredForDownload = dworch_ensureAssetIsRegisteredForDownload(a1);
    if (IsRegisteredForDownload)
    {
      v9 = IsRegisteredForDownload;
      dworch_relinquishAccessToDestinationURLIfNotDownloadingOrNotLoadingMetadataOrPausedForInteractivePlayback(a1);
LABEL_10:

      dworch_transitionToTerminalStateWithOSStatus(a1, v9);
      return;
    }

    v9 = dworch_downloadMetadata_proceedAfterCheckingDestinationURL(a1);
LABEL_9:
    dworch_relinquishAccessToDestinationURLIfNotDownloadingOrNotLoadingMetadataOrPausedForInteractivePlayback(a1);
    if (!v9)
    {
      return;
    }

    goto LABEL_10;
  }

  dworch_relinquishAccessToDestinationURLIfNotDownloadingOrNotLoadingMetadataOrPausedForInteractivePlayback(a1);
}

uint64_t dworch_downloadMetadata_downloadSuccededCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DB8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void dworch_sendDidFinishLoadingMetadataOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_sendDidFinishLoadingMetadataOnCallbackQueue_cold_1();
  }

  else
  {
    v3 = *(DerivedStorage + 248);
    if (v3)
    {
      v3(a1[1], *a1);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

uint64_t dworch_loadMetadata(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, dworch_loadMetadataDispatch);
  return v5;
}

void dworch_interstitialDownloadSuccessCallback(const void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DB8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (FigCFArrayGetValueAtIndex() == a2)
  {
    CFArrayRemoveValueAtIndex(*(DerivedStorage + 456), 0);
    v6 = dworch_downloadMedia_checkIfStageComplete(a1);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    dworch_interstitialDownloadSuccessCallback_cold_1(v7);
    v6 = v7[0];
    if (!v7[0])
    {
      return;
    }
  }

  dworch_transitionToTerminalStateWithOSStatus(a1, v6);
}

void dworch_interstitialDidFinishLoadingMetadata(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DB8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Count = *(DerivedStorage + 456);
  v5 = *(DerivedStorage + 464) + 1;
  *(DerivedStorage + 464) = v5;
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (v5 >= Count)
  {
    dworch_interstitialDidFinishLoadingMetadata_cold_1(a1);
  }
}

void dworch_interstitialDidPersistMetadata(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 472) + 1;
  *(DerivedStorage + 472) = v3;
  Count = *(DerivedStorage + 456);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (v3 >= Count)
  {
    v5 = dworch_persistMetadata_stageComplete(a1);
    if (v5)
    {

      dworch_transitionToTerminalStateWithOSStatus(a1, v5);
    }
  }
}

void dworch_sendDidPersistMetadataOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_sendDidPersistMetadataOnCallbackQueue_cold_1();
  }

  else if (*(DerivedStorage + 200) >= 3)
  {
    v3 = *(DerivedStorage + 280);
    if (v3)
    {
      v3(a1[1], *a1);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

uint64_t dworch_setupDownloadItemsForContentConfig(uint64_t a1, uint64_t a2)
{
  Alternate = FigStreamingAssetDownloadContentConfigGetAlternate(a2);
  if (Alternate)
  {
    v5 = Alternate;
    MediaSelections = FigStreamingAssetDownloadContentConfigGetMediaSelections(a2);
    if (MediaSelections)
    {

      return dworch_setupDownloadItemsAndProgressMonitorForAlternate(a1, v5, MediaSelections);
    }

    else
    {
      dworch_setupDownloadItemsForContentConfig_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    dworch_setupDownloadItemsForContentConfig_cold_2(&v9);
    return v9;
  }
}

void dworch_persistMetadata_gotAccessToDestinationURLCallback(const void *a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CFGetTypeID(a1);
  if (v7 == FigAssetDownloaderGetTypeID())
  {
    *(DerivedStorage + 576) = a3;
    CMBaseObjectGetDerivedStorage();
    if (FigRetainProxyIsInvalidated())
    {
      dworch_persistMetadata_gotAccessToDestinationURLCallback_cold_2(&cf);
    }

    else if (a2)
    {
      if (*(DerivedStorage + 556) != 1 && !*(DerivedStorage + 560))
      {
        goto LABEL_38;
      }

      IsRegisteredForDownload = dworch_ensureAssetIsRegisteredForDownload(a1);
      if (IsRegisteredForDownload)
      {
        goto LABEL_16;
      }

      if (*(DerivedStorage + 561))
      {
LABEL_38:

        dworch_relinquishAccessToDestinationURLIfNotDownloadingOrPausedForInteractivePlayback(a1);
        return;
      }

      IsRegisteredForDownload = dworch_ensurePersistentStreamingCache(a1);
      if (IsRegisteredForDownload || (IsRegisteredForDownload = dworch_ensureExtendedAttributesSetOnDestinationURL(), IsRegisteredForDownload) || !*(DerivedStorage + 441) && (v11 = *(DerivedStorage + 304)) != 0 && (v12 = *(DerivedStorage + 480)) != 0 && (IsRegisteredForDownload = FigStreamingCacheTransferData(v11, v12), IsRegisteredForDownload))
      {
LABEL_16:
        v13 = IsRegisteredForDownload;
LABEL_17:
        dworch_relinquishAccessToDestinationURLIfNotDownloadingOrPausedForInteractivePlayback(a1);
        goto LABEL_18;
      }

      v9 = *(DerivedStorage + 456);
      if (v9)
      {
        Count = CFArrayGetCount(v9);
      }

      else
      {
        Count = 0;
      }

      v14 = *(DerivedStorage + 448);
      if (v14)
      {
        v14 = CFArrayGetCount(v14);
      }

      if (Count == v14)
      {
        if (*(DerivedStorage + 442) && Count >= 1)
        {
          v15 = 0;
          while (1)
          {
            ValueAtIndex = FigCFArrayGetValueAtIndex();
            v17 = FigCFArrayGetValueAtIndex();
            cf = 0;
            v18 = *(DerivedStorage + 480);
            v19 = CFURLGetString(ValueAtIndex);
            FigStreamingCacheAddInterstitialAsset(v18, v19, &cf);
            if (IsRegisteredForDownload)
            {
              goto LABEL_16;
            }

            v20 = cf;
            CMBaseObject = FigAssetDownloaderGetCMBaseObject(v17);
            v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v22)
            {
              v13 = v22(CMBaseObject, @"AssetDownloaderProperty_DestinationURL", v20);
            }

            else
            {
              v13 = 4294954514;
            }

            if (cf)
            {
              CFRelease(cf);
            }

            if (v13)
            {
              goto LABEL_17;
            }

            if (Count == ++v15)
            {
              dworch_relinquishAccessToDestinationURLIfNotDownloadingOrPausedForInteractivePlayback(a1);
              return;
            }
          }
        }

        v13 = dworch_persistMetadata_stageComplete(a1);
        goto LABEL_36;
      }

      dworch_persistMetadata_gotAccessToDestinationURLCallback_cold_3(&cf);
    }

    else
    {
      dworch_persistMetadata_gotAccessToDestinationURLCallback_cold_4(&cf);
    }
  }

  else
  {
    dworch_persistMetadata_gotAccessToDestinationURLCallback_cold_1(&cf);
  }

  v13 = cf;
LABEL_36:
  dworch_relinquishAccessToDestinationURLIfNotDownloadingOrPausedForInteractivePlayback(a1);
  if (v13)
  {
LABEL_18:
    dworch_transitionToTerminalStateWithOSStatus(a1, v13);
  }
}

uint64_t dworch_relinquishAccessToDestinationURLIfNotDownloadingOrPausedForInteractivePlayback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 556) != 1 && !*(result + 561))
  {
    dworch_releaseDiskResources();

    return dworch_relinquishAccessToDestinationURL(a1);
  }

  return result;
}

void dworch_downloadMedia_gotAccessToDestinationURLCallback(const void *a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CFGetTypeID(a1);
  if (v6 == FigAssetDownloaderGetTypeID())
  {
    *(DerivedStorage + 576) = a3;
    CMBaseObjectGetDerivedStorage();
    if (!FigRetainProxyIsInvalidated())
    {
      if (*(DerivedStorage + 556) != 1)
      {
LABEL_40:
        dworch_relinquishAccessToDestinationURLIfNotDownloadingOrPausedForInteractivePlayback(a1);
        return;
      }

      IsRegisteredForDownload = dworch_ensureExtendedAttributesSetOnDestinationURL();
      if (IsRegisteredForDownload)
      {
        goto LABEL_36;
      }

      IsRegisteredForDownload = dworch_ensureAssetIsRegisteredForDownload(a1);
      if (IsRegisteredForDownload)
      {
        goto LABEL_36;
      }

      if (!*(DerivedStorage + 328))
      {
        if (*(DerivedStorage + 408))
        {
          v8 = CMBaseObjectGetDerivedStorage();
          if (!*(v8 + 552))
          {
            v9 = v8;
            Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
            if (Mutable)
            {
              v11 = Mutable;
              if (dword_1EAF16DB8)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v13 = v9[44];
              if (v13)
              {
                dworch_downloadMedia_gotAccessToDestinationURLCallback_cold_3(v9, v13);
              }

              v14 = v9[51];
              PrimaryContentConfig = FigStreamingAssetDownloadConfigGetPrimaryContentConfig(v14, @"kFigEnvironmentalCondition_DefaultKey");
              if (PrimaryContentConfig || (PrimaryContentConfig = FigStreamingAssetDownloadConfigGetDefaultPrimaryContentConfig(v14)) != 0)
              {
                v16 = PrimaryContentConfig;
                v17 = dworch_setupDownloadItemsForContentConfig(a1, PrimaryContentConfig);
                if (v17)
                {
LABEL_41:
                  v27 = v17;
                  goto LABEL_29;
                }

                Alternate = FigStreamingAssetDownloadContentConfigGetAlternate(v16);
                if (Alternate)
                {
                  CFArrayAppendValue(v11, Alternate);
                }
              }

              else if (!dworch_downloadMedia_gotAccessToDestinationURLCallback_cold_4(v31))
              {
                v27 = v31[0];
LABEL_29:
                CFRelease(v11);
                if (v27)
                {
LABEL_37:
                  dworch_relinquishAccessToDestinationURLIfNotDownloadingOrPausedForInteractivePlayback(a1);
LABEL_38:
                  dworch_transitionToTerminalStateWithOSStatus(a1, v27);
                  return;
                }

                goto LABEL_30;
              }

              v19 = v9[51];
              AuxConfigs = FigStreamingAssetDownloadConfigGetAuxConfigs(v19, @"kFigEnvironmentalCondition_DefaultKey");
              if ((!AuxConfigs || (DefaultAuxConfigs = AuxConfigs, !CFArrayGetCount(AuxConfigs))) && (DefaultAuxConfigs = FigStreamingAssetDownloadConfigGetDefaultAuxConfigs(v19)) == 0 || (Count = CFArrayGetCount(DefaultAuxConfigs), Count < 1))
              {
LABEL_28:
                v9[65] = v9[44];
                dworch_sendWillDownloadAlternatesCallback(a1, v11);
                v27 = 0;
                goto LABEL_29;
              }

              v23 = Count;
              v24 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(DefaultAuxConfigs, v24);
                v17 = dworch_setupDownloadItemsForContentConfig(a1, ValueAtIndex);
                if (v17)
                {
                  goto LABEL_41;
                }

                v26 = FigStreamingAssetDownloadContentConfigGetAlternate(ValueAtIndex);
                if (v26)
                {
                  CFArrayAppendValue(v11, v26);
                }

                if (v23 == ++v24)
                {
                  goto LABEL_28;
                }
              }
            }

            dworch_downloadMedia_gotAccessToDestinationURLCallback_cold_5(v31);
            v27 = v31[0];
            if (v31[0])
            {
              goto LABEL_37;
            }
          }
        }
      }

LABEL_30:
      IsRegisteredForDownload = dworch_downloadMedia_startNextMediaSelectionDownload(a1);
      if (!IsRegisteredForDownload)
      {
        v28 = 0;
        while (1)
        {
          v29 = *(DerivedStorage + 496);
          if (v29)
          {
            v29 = CFArrayGetCount(v29);
          }

          if (v28 >= v29)
          {
            break;
          }

          v30 = CFArrayGetValueAtIndex(*(DerivedStorage + 496), v28);
          IsRegisteredForDownload = dworch_downloadMedia_matchMediaDownloaderToOrchestratorStatus(a1, v30);
          ++v28;
          if (IsRegisteredForDownload)
          {
            goto LABEL_36;
          }
        }

        dworch_updateAlternateInfoForReporting();
        dworch_updateMediaSelectionsReportingKeys();
        goto LABEL_40;
      }

LABEL_36:
      v27 = IsRegisteredForDownload;
      goto LABEL_37;
    }

    dworch_downloadMedia_gotAccessToDestinationURLCallback_cold_2(v31);
  }

  else
  {
    dworch_downloadMedia_gotAccessToDestinationURLCallback_cold_1(v31);
  }

  v27 = v31[0];
  dworch_relinquishAccessToDestinationURLIfNotDownloadingOrPausedForInteractivePlayback(a1);
  if (v27)
  {
    goto LABEL_38;
  }
}

const void *dworch_copyPropertyDispatch(uint64_t a1)
{
  v10 = 0;
  v2 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_copyPropertyDispatch_cold_1(&v11);
    goto LABEL_18;
  }

  if (CFEqual(@"AssetDownloaderProperty_Status", v2))
  {
    result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (DerivedStorage + 556));
    if (result)
    {
LABEL_4:
      v5 = 0;
      goto LABEL_5;
    }

    dworch_copyPropertyDispatch_cold_2(&v11);
LABEL_18:
    result = 0;
    v5 = v11;
    goto LABEL_5;
  }

  if (!CFEqual(@"AssetDownloaderProperty_DownloadedBytes", v2))
  {
    if (!CFEqual(@"AssetDownloaderProperty_HasAccessToDestinationURL", v2))
    {
      result = 0;
      v5 = -12784;
      goto LABEL_5;
    }

    v8 = CMBaseObjectGetDerivedStorage();
    v9 = MEMORY[0x1E695E4D0];
    if (!*(v8 + 576))
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    result = *v9;
    if (*v9)
    {
      result = CFRetain(result);
    }

    goto LABEL_4;
  }

  CMBaseObject = FigAssetDownloaderGetCMBaseObject(*(DerivedStorage + 384));
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v5 = v7(CMBaseObject, @"AssetDownloaderProperty_DownloadedBytes", *MEMORY[0x1E695E480], &v10);
    result = v10;
  }

  else
  {
    result = 0;
    v5 = -12782;
  }

LABEL_5:
  *(a1 + 24) = v5;
  *(a1 + 16) = result;
  return result;
}

CFTypeID dworch_setPropertyDispatch(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    result = dworch_setPropertyDispatch_cold_1(&v8);
    v7 = v8;
    goto LABEL_12;
  }

  result = CFEqual(@"AssetDownloaderProperty_DestinationURL", v3);
  if (!result)
  {
    v7 = -12787;
    goto LABEL_12;
  }

  v6 = CFGetTypeID(v2);
  result = CFURLGetTypeID();
  if (v6 != result)
  {
    result = dworch_setPropertyDispatch_cold_2(&v9);
    v7 = v9;
    goto LABEL_12;
  }

  if (*(DerivedStorage + 24))
  {
    result = dworch_setPropertyDispatch_cold_3(&v10);
    v7 = v10;
    goto LABEL_12;
  }

  *(DerivedStorage + 24) = v2;
  if (v2)
  {
    result = CFRetain(v2);
  }

  if (*(DerivedStorage + 564) != 1)
  {
    goto LABEL_10;
  }

  v7 = *(DerivedStorage + 443);
  if (*(DerivedStorage + 443))
  {
    result = dworch_downloadMetadata_stageComplete(*a1);
LABEL_10:
    v7 = 0;
  }

LABEL_12:
  *(a1 + 24) = v7;
  return result;
}

uint64_t dworch_pause(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
  if (v3)
  {
    v4 = v3;
    if (a1)
    {
      v5 = CFRetain(a1);
    }

    else
    {
      v5 = 0;
    }

    *v4 = v5;
    dispatch_async_f(*DerivedStorage, v4, dworch_pauseDispatch);
    return 0;
  }

  else
  {
    dworch_pause_cold_1(&v7);
    return v7;
  }
}

uint64_t dworch_stop(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
  if (v3)
  {
    v4 = v3;
    if (a1)
    {
      v5 = CFRetain(a1);
    }

    else
    {
      v5 = 0;
    }

    *v4 = v5;
    dispatch_async_f(*DerivedStorage, v4, dworch_stopDispatch);
    return 0;
  }

  else
  {
    dworch_stop_cold_1(&v7);
    return v7;
  }
}

uint64_t dworch_pauseForPlayback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, dworch_pauseForPlaybackDispatch);
  return v5;
}

uint64_t dworch_resumeAfterPlayback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, dworch_resumeAfterPlaybackDispatch);
  return v5;
}

void dworch_logMediaSelectionArray(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v5 = DerivedStorage;
    Count = CFArrayGetCount(a3);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
        v10 = FigMediaSelectionArrayCopyDescription(*(v5 + 8), ValueAtIndex);
        if (dword_1EAF16DB8)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v10)
        {
          CFRelease(v10);
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_5_24()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_8_14()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void *OUTLINED_FUNCTION_11_13()
{

  return malloc_type_calloc(1uLL, 0x58uLL, 0x10E004049432B73uLL);
}

uint64_t OUTLINED_FUNCTION_34_6@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_43_4()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_49_3()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_50_2()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void *OUTLINED_FUNCTION_60_4()
{

  return malloc_type_calloc(1uLL, 0x58uLL, v0);
}

uint64_t OUTLINED_FUNCTION_61_5()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_62_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 320);

  return FigAlternateSelectionBossAddFilter(v12, a10);
}

uint64_t OUTLINED_FUNCTION_63_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v27 = *(v25 + 320);

  return FigAlternateSelectionBossAddFilter(v27, a25);
}

BOOL OUTLINED_FUNCTION_64_4(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_74_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  *(a2 + 8) = v3;
  *v3 = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_83_2()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_85_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, os_log_type_t type, int a28, int a29)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_86_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigSampleGeneratorDataSourceCacheCreate(uint64_t a1, const void *a2, void *a3)
{
  if (!a3)
  {
    FigSampleGeneratorDataSourceCacheCreate_cold_4(&v17);
    return v17;
  }

  if (_MergedGlobals_33 != -1)
  {
    FigSampleGeneratorDataSourceCacheCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigSampleGeneratorDataSourceCacheCreate_cold_3(&v16);
    return v16;
  }

  v6 = Instance;
  v7 = FigReadWriteLockCreate();
  v6[2] = v7;
  if (!v7)
  {
    v14 = 782;
LABEL_19:
    FigSampleGeneratorDataSourceCacheCreate_cold_2(v14, v6, &v15);
    return v15;
  }

  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6[3] = Mutable;
  if (!Mutable)
  {
    v14 = 784;
    goto LABEL_19;
  }

  v10 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6[4] = v10;
  if (!v10)
  {
    v14 = 786;
    goto LABEL_19;
  }

  v11 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6[5] = v11;
  if (!v11)
  {
    v14 = 788;
    goto LABEL_19;
  }

  if (a2)
  {
    v12 = CFRetain(a2);
  }

  else
  {
    v12 = 0;
  }

  result = 0;
  v6[6] = v12;
  *a3 = v6;
  return result;
}

uint64_t FigSampleGeneratorCreateForTrackReaderUsingScheduledIO(const void *a1, const void *a2, const void *a3, const void *a4, uint64_t a5, CMTime *a6, char a7, void *a8)
{
  v14 = 0;
  v13 = *a6;
  v10 = figSampleGeneratorCreateForFormatReaderCommon(a1, 0, a2, 0, 1, a3, a5, &v13, a7, a4, &v14);
  v11 = v10;
  if (a5 && !v10)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
  }

  *a8 = v14;
  return v11;
}

uint64_t FigSampleGeneratorCreateForFormatReaderUsingScheduledIO(const void *a1, const void *a2, const void *a3, const void *a4, uint64_t a5, CMTime *a6, char a7, void *a8)
{
  v14 = 0;
  v13 = *a6;
  v10 = figSampleGeneratorCreateForFormatReaderCommon(a1, a2, a3, 0, 1, a4, a5, &v13, a7, 0, &v14);
  v11 = v10;
  if (a5 && !v10)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
  }

  *a8 = v14;
  return v11;
}

uint64_t RegisterFigSampleGeneratorDataSourceCacheType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double sampleGeneratorDataSourceCache_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void sampleGeneratorDataSourceCache_Finalize(void *a1)
{
  FigReadWriteLockDestroy();
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
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

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }
}

__CFString *sampleGeneratorDataSourceCache_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"FigSampleGeneratorDataSourceCache:  urlToByteStream: {%@}", *(a1 + 24));
  return Mutable;
}

__CFString *sgffr_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleGenerator %p>", a1);
  return Mutable;
}

uint64_t sgffr_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  keys[4] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(@"SampleGeneratorPerformanceDictionary", a2))
  {
    return 4294954512;
  }

  memset(&keys[1], 0, 24);
  memset(&values[1], 0, 24);
  FigReadWriteLockLockForRead();
  Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v9 = *(DerivedStorage + 48);
    if (*(DerivedStorage + 32))
    {
      v10 = *(v9 + 40);
      if (!v10)
      {
        goto LABEL_10;
      }

      v11 = sgffr_collectSchedIOReadStatistics;
    }

    else
    {
      v10 = *(v9 + 32);
      if (!v10)
      {
        goto LABEL_10;
      }

      v11 = sgffr_collectByteStreamReadStatistics;
    }

    CFDictionaryApplyFunction(v10, v11, Mutable);
LABEL_10:
    if (!CFArrayGetCount(Mutable))
    {
      CFRelease(Mutable);
      Mutable = 0;
    }

    goto LABEL_12;
  }

  sgffr_copyProperty_cold_1();
LABEL_12:
  FigReadWriteLockUnlockForRead();
  if (Mutable)
  {
    keys[0] = @"ReadStatistics";
    values[0] = CFRetain(Mutable);
    v13 = CFDictionaryCreate(a3, keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (values[0])
    {
      CFRelease(values[0]);
    }

    CFRelease(Mutable);
  }

  else
  {
    v13 = 0;
  }

  *a4 = v13;
  if (v13)
  {
    return 0;
  }

  else
  {
    return 4294954513;
  }
}

uint64_t sgffr_finishPrerollBatch(uint64_t a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  FigReadWriteLockLockForRead();
  v4 = FigCFDictionaryCopyArrayOfValues();
  FigReadWriteLockUnlockForRead();
  if (!v4)
  {
    return 0;
  }

  Count = CFArrayGetCount(v4);
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
      ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v10)
      {
        v11 = v10(ValueAtIndex, 0, v3);
      }

      else
      {
        v11 = -12782;
      }

      if (v7)
      {
        v7 = v7;
      }

      else
      {
        v7 = v11;
      }
    }
  }

  CFRelease(v4);
  return v7;
}

void sgffr_collectSchedIOReadStatistics(int a1, int a2, void *cf)
{
  value = 0;
  v4 = CFGetAllocator(cf);
  v5 = FigScheduledIOGetFigBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    if (!v6(v5, *MEMORY[0x1E6962E88], v4, &value))
    {
      CFArrayAppendValue(cf, value);
      CFRelease(value);
    }
  }
}

void sgffr_collectByteStreamReadStatistics(int a1, int a2, void *cf)
{
  value = 0;
  v4 = CFGetAllocator(cf);
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    if (!v6(CMBaseObject, *MEMORY[0x1E6960E08], v4, &value))
    {
      CFArrayAppendValue(cf, value);
      CFRelease(value);
    }
  }
}

uint64_t CMBaseObjectCopyProperty_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 8);
  result = VTable + 8;
  v11 = *(v10 + 48);
  if (v11)
  {

    return v11(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sgffr_GenerateSampleBuffersForRequests(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, CFTypeRef))
{
  context = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (a2 < 1)
  {
    return 0;
  }

  v11 = DerivedStorage;
  Mutable = 0;
  LODWORD(v13) = 0;
  allocator = *MEMORY[0x1E695E480];
  do
  {
    v20 = 0;
    cf = 0;
    if (*(v11 + 32))
    {
      sgffr_copyCursorSampleLocationAndDataSource(a1, *a3, 0, 0, 0, 0, 0, 0, 0, 0, &v20);
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      value = CFDictionaryGetValue(Mutable, v20);
      if (!value && *(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        v16 = v20;
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v17)
        {
          context = v17(v16, allocator, &value);
          if (!context)
          {
            CFDictionarySetValue(Mutable, v20, value);
            if (value)
            {
              CFRelease(value);
            }
          }
        }

        else
        {
          context = -12782;
        }
      }
    }

    v14 = sgffr_createSampleBufferAtCursorUsingBatch(a1, *a3, *(a3 + 8), *(a3 + 16), *(a3 + 24), *a3, *(a3 + 36), *(a3 + 40), *(a3 + 44), *(a3 + 52), *(a3 + 60), value, &cf);
    context = v14;
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = cf;
    }

    a5(a4, a3, v14, v15);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (v13)
    {
      v13 = v13;
    }

    else
    {
      v13 = v14;
    }

    a3 += 68;
    --a2;
  }

  while (a2);
  if (Mutable)
  {
    CFDictionaryApplyFunction(Mutable, sgffr_commitBatchApply, &context);
    if (v13)
    {
      v13 = v13;
    }

    else
    {
      v13 = context;
    }

    CFRelease(Mutable);
  }

  return v13;
}

uint64_t sgffr_CreateSampleGeneratorBatch(uint64_t a1, const __CFAllocator *a2, void *a3)
{
  if (!a3)
  {
    sgffr_CreateSampleGeneratorBatch_cold_2(&v9);
    return v9;
  }

  if (!a1)
  {
    sgffr_CreateSampleGeneratorBatch_cold_1(&v9);
    return v9;
  }

  FigSampleGeneratorBatchGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 16) = FigSimpleMutexCreate();
    *DerivedStorage = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(DerivedStorage + 32) = 0;
    *(DerivedStorage + 36) = 0;
    v7 = *MEMORY[0x1E695E480];
    *(DerivedStorage + 24) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    *(DerivedStorage + 40) = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
    FigCFWeakReferenceStore();
    if (!*(CMBaseObjectGetDerivedStorage() + 32))
    {
      *(DerivedStorage + 36) = 1;
    }

    v5 = 0;
    *a3 = 0;
  }

  return v5;
}

uint64_t sgffr_createSampleBufferAtCursorUsingBatch(const void *a1, const void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, char a8, uint64_t (*a9)(uint64_t, uint64_t, opaqueCMSampleBuffer *), uint64_t a10, uint64_t a11, uint64_t a12, CFTypeRef *a13)
{
  v236 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v185 = 0;
  if (*(*(CMBaseObjectGetVTable() + 16) + 144))
  {
    v20 = 1;
    v21 = 1;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 112))
  {
    v22 = 0;
    v23 = 1;
  }

  else
  {
    v23 = 0;
    v22 = 1;
  }

  if (a7 == 4 && !*(DerivedStorage + 32))
  {
    sgffr_createSampleBufferAtCursorUsingBatch_cold_15(time);
    value_low = *time;
    goto LABEL_493;
  }

  v182 = a8;
  v183 = v22;
  if (a6)
  {
    v24 = *(CMBaseObjectGetVTable() + 16);
    if (a5 == 1)
    {
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v27 = *(CMBaseObjectGetVTable() + 16);
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      if (v25 == v28 && *(v25 + 32) && (*(v28 + 32))(a2, a6) == 1)
      {
        return 4294954454;
      }
    }

    else
    {
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0;
      }

      v29 = *(CMBaseObjectGetVTable() + 16);
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      if (v26 == v30 && *(v26 + 32) && (*(v30 + 32))(a2, a6) == -1)
      {
        return 4294954454;
      }
    }
  }

  v31 = a13;
  if ((v20 & v23) == 1)
  {
    v32 = *MEMORY[0x1E695E4C0];
    *time = *MEMORY[0x1E695E4C0];
    FigBaseObject = FigSampleCursorGetFigBaseObject(a2);
    v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v34)
    {
      v34(FigBaseObject, @"PreferCreateSampleBuffer", *MEMORY[0x1E695E480], time);
      v32 = *time;
    }

    if (*MEMORY[0x1E695E4D0] == v32)
    {
      if (!*(DerivedStorage + 33))
      {
        v21 = 0;
      }

      if (!v32)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v21 = 1;
      if (!v32)
      {
LABEL_34:
        v31 = a13;
        goto LABEL_35;
      }
    }

    CFRelease(v32);
    goto LABEL_34;
  }

LABEL_35:
  if (!v21)
  {
    value_low = 0;
    goto LABEL_377;
  }

  v35 = a12;
  if (a4 != 1 && a5)
  {
    v211 = a7;
    v36 = CMBaseObjectGetDerivedStorage();
    v209 = 0;
    v210 = 0;
    v207 = 0;
    v208 = 0;
    v205 = 0;
    v206 = 0;
    v204 = 0;
    v203 = 0;
    v202 = 0;
    v200 = 0u;
    v201 = 0u;
    memset(time, 0, sizeof(time));
    dataBuffer = 0;
    v198 = 0;
    v195 = 0;
    sbuf = 0;
    invalidateRefCon = 0;
    v193 = 0;
    v192 = 1;
    v190 = 0;
    v191 = 0;
    v188 = 0;
    v189 = 0;
    v186 = 0;
    makeDataReadyRefcon = 0;
    if (!*(*(CMBaseObjectGetVTable() + 16) + 152))
    {
      formatDescriptiona = 0;
      v50 = 0;
      goto LABEL_106;
    }

    v176 = v31;
    v228 = 0;
    v229 = 0;
    v37 = MEMORY[0x1E6960C70];
    *v179 = *MEMORY[0x1E6960C70];
    *&v233.value = *MEMORY[0x1E6960C70];
    v38 = *(MEMORY[0x1E6960C70] + 16);
    v39 = *MEMORY[0x1E6960C70];
    v233.epoch = v38;
    v234 = v39;
    timescale = *(MEMORY[0x1E6960C70] + 8);
    v227 = 0;
    v226 = 0;
    cf2 = 0;
    cf = 0;
    v223 = 0;
    cf1 = 0;
    v40 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v40)
    {
      v41 = v40(a2, &v226, &v227, &v207, &v206, &v205, &v204, &v203 + 1, &v203, &v192);
      value_low = v41;
      if (v41 == -12841)
      {
LABEL_130:
        v59 = 0;
        formatDescriptiona = 0;
LABEL_131:
        v45 = 1;
        v35 = a12;
        goto LABEL_132;
      }

      if (!v41)
      {
        v43 = *(*(CMBaseObjectGetVTable() + 16) + 160);
        if (v43)
        {
          value_low = v43(a2, &cf2);
          if (!value_low)
          {
            if (!v192)
            {
              v59 = 0;
              formatDescriptiona = 0;
              value_low = 0;
              goto LABEL_131;
            }

            if (v205 >= a3)
            {
              value_low = 0;
              v45 = 1;
              v35 = a12;
LABEL_435:
              formatDescriptiona = cf2;
              cf2 = 0;
              v148 = v227;
              v227 = 0;
              v59 = v226;
              v189 = v148;
              v190 = v226;
              v226 = 0;
LABEL_132:
              if (v229)
              {
                CFRelease(v229);
              }

              if (cf2)
              {
                CFRelease(cf2);
              }

              if (v227)
              {
                CFRelease(v227);
              }

              if (v226)
              {
                CFRelease(v226);
              }

              if (cf)
              {
                CFRelease(cf);
              }

              if (v223)
              {
                CFRelease(v223);
              }

              if (cf1)
              {
                CFRelease(cf1);
              }

              if (value_low != -12841)
              {
                if (!value_low)
                {
                  if (v59 | v189)
                  {
                    if (v45)
                    {
                      v60 = v203 == 0;
                    }

                    else
                    {
                      v60 = 1;
                    }

                    v50 = !v60;
                    if (*(v36 + 33))
                    {
                      if (v189)
                      {
                        v31 = v176;
                      }

                      else
                      {
                        v172 = v50;
                        CMBaseObject = CMByteStreamGetCMBaseObject();
                        v72 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                        if (!v72)
                        {
                          LODWORD(v54) = 0;
                          v56 = 0;
                          value_low = 4294954514;
                          v180 = &v198;
                          v57 = time;
                          goto LABEL_294;
                        }

                        SingleSampleBuffer = v72(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &v189);
                        v31 = v176;
                        if (SingleSampleBuffer)
                        {
LABEL_127:
                          value_low = SingleSampleBuffer;
                          LODWORD(v54) = 0;
                          v56 = 0;
                          v180 = &v198;
                          v57 = time;
                          v58 = formatDescriptiona;
                          goto LABEL_349;
                        }

                        v50 = v172;
                      }

LABEL_106:
                      if (v206 && v205 && v192)
                      {
                        v176 = v31;
                        v51 = v205 - v204;
                        if (a5 != 1)
                        {
                          v51 = v204 + 1;
                        }

                        if (v51 >= a4)
                        {
                          v52 = a4;
                        }

                        else
                        {
                          v52 = v51;
                        }

                        if (a4 <= 0)
                        {
                          value = v51;
                        }

                        else
                        {
                          value = v52;
                        }

                        if (v50)
                        {
                          v54 = 0;
                          v169 = 0;
                          sampleTimingArray = time;
                          v165 = 1;
                          goto LABEL_160;
                        }

                        v61 = malloc_type_malloc(72 * value, 0x1000040FF89C88EuLL);
                        v54 = v61;
                        if (v61)
                        {
                          v169 = 1;
                          sampleTimingArray = v61;
                          v165 = value;
LABEL_160:
                          v171 = v50;
                          if (HIBYTE(v203))
                          {
                            v180 = &v198;
                            ContiguousSampleOffsetAndSize = sgffr_getContiguousSampleOffsetAndSize(a2, 0, &v198);
                            v167 = 0;
                            if (ContiguousSampleOffsetAndSize)
                            {
LABEL_162:
                              value_low = ContiguousSampleOffsetAndSize;
LABEL_163:
                              v31 = v176;
LABEL_164:
                              v58 = formatDescriptiona;
LABEL_347:
                              LODWORD(v54) = v169;
                              v56 = v167;
LABEL_348:
                              v57 = sampleTimingArray;
                              goto LABEL_349;
                            }

                            numSampleSizeEntries = 1;
                          }

                          else
                          {
                            v180 = malloc_type_malloc(8 * value, 0x100004000313F17uLL);
                            if (!v180)
                            {
                              sgffr_createSampleBufferAtCursorUsingBatch_cold_12(&v233);
                              v180 = 0;
                              v56 = 0;
                              value_low = LODWORD(v233.value);
                              v31 = v176;
                              v58 = formatDescriptiona;
                              LODWORD(v54) = v169;
                              goto LABEL_348;
                            }

                            v167 = 1;
                            numSampleSizeEntries = value;
                          }

                          if (a5 == 1)
                          {
                            if (a2)
                            {
                              v63 = CFRetain(a2);
                            }

                            else
                            {
                              v63 = 0;
                            }

                            v209 = v63;
                            if (a6)
                            {
                              v73 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                              if (v73)
                              {
                                v74 = v73(a2, &v210);
                                if (!v74)
                                {
                                  v75 = FigSampleCursorStepInDecodeOrderAndReportStepsTaken(v210, value - 1, &v188);
                                  if (v75)
                                  {
                                    value_low = v75;
                                    v31 = v176;
                                    goto LABEL_164;
                                  }

                                  v175 = v35;
                                  v76 = value - 1 == v188 && FigSampleCursorCompareInDecodeOrder_0(v210, a6) != 1;
                                  CFRelease(v210);
                                  v210 = 0;
                                  goto LABEL_205;
                                }

                                value_low = v74;
                              }

                              else
                              {
                                value_low = 4294954514;
                              }

                              sgffr_createSampleBufferAtCursorUsingBatch_cold_11();
                              goto LABEL_163;
                            }

                            v175 = v35;
                            goto LABEL_199;
                          }

                          v64 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                          if (v64)
                          {
                            v65 = v64(a2, &v209);
                            if (!v65)
                            {
                              v66 = v209;
                              v67 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                              if (v67)
                              {
                                value_low = v67(v66, 1 - value, &v188);
                                if (!value_low && 1 - value == v188)
                                {
                                  v175 = v35;
                                  if (!a6)
                                  {
                                    v76 = 1;
                                    v50 = v171;
                                    goto LABEL_205;
                                  }

                                  v50 = v171;
                                  if (FigSampleCursorCompareInDecodeOrder_0(v209, a6) == -1)
                                  {
                                    if (v209)
                                    {
                                      CFRelease(v209);
                                      v209 = 0;
                                    }

                                    v68 = FigSampleCursorCopy(a6, &v209);
                                    if (v68)
                                    {
                                      value_low = v68;
                                      sgffr_createSampleBufferAtCursorUsingBatch_cold_8();
                                      goto LABEL_163;
                                    }

                                    if (((HIBYTE(v203) != 0) & v171) != 0)
                                    {
LABEL_237:
                                      v233.value = 0;
                                      v232.value = 0;
                                      time1.value = 0;
                                      time2.value = 0;
                                      if (a5 == -1)
                                      {
                                        v88 = a2;
                                      }

                                      else
                                      {
                                        v88 = a6;
                                      }

                                      v163 = v88;
                                      ContiguousSampleOffsetAndSize = FigSampleCursorCopyChunkDetails(v88, 0, 0, &time1, 0, 0, &time2, 0, 0, 0);
                                      if (ContiguousSampleOffsetAndSize)
                                      {
                                        goto LABEL_162;
                                      }

                                      ContiguousSampleOffsetAndSize = FigSampleCursorCopyChunkDetails(v209, 0, 0, &v233, 0, 0, &v232, 0, 0, 0);
                                      if (ContiguousSampleOffsetAndSize)
                                      {
                                        goto LABEL_162;
                                      }

                                      if (time1.value != v233.value)
                                      {
                                        ContiguousSampleOffsetAndSize = FigSampleCursorCopy(v209, &v210);
                                        if (!ContiguousSampleOffsetAndSize)
                                        {
                                          v161 = v36;
                                          v162 = 0;
                                          v90 = 0;
                                          v91 = value;
                                          while (1)
                                          {
                                            v92 = v210;
                                            v93 = *(CMBaseObjectGetVTable() + 16);
                                            if (v93)
                                            {
                                              v94 = v93;
                                            }

                                            else
                                            {
                                              v94 = 0;
                                            }

                                            if (v163 && (v95 = *(CMBaseObjectGetVTable() + 16)) != 0)
                                            {
                                              v96 = v95;
                                            }

                                            else
                                            {
                                              v96 = 0;
                                            }

                                            if (v94 != v96 || !*(v94 + 32) || !(*(v96 + 32))(v92, v163))
                                            {
                                              v58 = formatDescriptiona;
                                              v89 = v162;
                                              goto LABEL_299;
                                            }

                                            if (v91 / 2 <= 1)
                                            {
                                              v91 = 1;
                                            }

                                            else
                                            {
                                              v91 /= 2;
                                            }

                                            v97 = v210;
                                            v98 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                                            if (!v98)
                                            {
                                              goto LABEL_295;
                                            }

                                            ContiguousSampleOffsetAndSize = v98(v97, &v208);
                                            if (ContiguousSampleOffsetAndSize)
                                            {
                                              goto LABEL_162;
                                            }

                                            v99 = v208;
                                            v100 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                                            if (!v100)
                                            {
LABEL_295:
                                              value_low = 4294954514;
                                              goto LABEL_163;
                                            }

                                            v101 = v100(v99, v91, &v188);
                                            if (v101)
                                            {
                                              value_low = v101;
                                              if (v101 != -12840)
                                              {
                                                goto LABEL_163;
                                              }
                                            }

                                            if (v188 == v91)
                                            {
                                              v102 = v208;
                                              v103 = *(CMBaseObjectGetVTable() + 16);
                                              if (v103)
                                              {
                                                v104 = v103;
                                              }

                                              else
                                              {
                                                v104 = 0;
                                              }

                                              if (v163 && (v105 = *(CMBaseObjectGetVTable() + 16)) != 0)
                                              {
                                                v106 = v105;
                                              }

                                              else
                                              {
                                                v106 = 0;
                                              }

                                              if (v104 != v106 || !*(v104 + 32) || (*(v106 + 32))(v102, v163) != 1)
                                              {
                                                v107 = v188;
                                                v108 = v210;
                                                v210 = v208;
                                                if (v208)
                                                {
                                                  CFRetain(v208);
                                                }

                                                v162 += v107;
                                                if (v108)
                                                {
                                                  CFRelease(v108);
                                                }
                                              }

                                              v36 = v161;
                                            }

                                            v90 += v91;
                                            if (v90 >= value)
                                            {
                                              break;
                                            }

                                            if (v208)
                                            {
                                              CFRelease(v208);
                                              v208 = 0;
                                            }
                                          }

                                          sgffr_createSampleBufferAtCursorUsingBatch_cold_3(&v214);
                                          value_low = LODWORD(v214.value);
                                          goto LABEL_163;
                                        }

                                        goto LABEL_162;
                                      }

                                      v89 = time2.value - v232.value;
                                      v58 = formatDescriptiona;
LABEL_299:
                                      value = v89 + 1;
                                      v50 = v171;
                                      if (v210)
                                      {
                                        CFRelease(v210);
                                        v210 = 0;
                                      }

                                      goto LABEL_301;
                                    }

                                    time2.value = 0;
                                    v69 = a2;
LABEL_214:
                                    if (*(*(CMBaseObjectGetVTable() + 16) + 224))
                                    {
                                      if (HIBYTE(v203))
                                      {
                                        v79 = 0;
                                      }

                                      else
                                      {
                                        v79 = v180;
                                      }

                                      BatchSampleTimingAndSizes = FigSampleCursorGetBatchSampleTimingAndSizes(v209, value, v69, &time2, v54, v79);
                                      if (BatchSampleTimingAndSizes)
                                      {
LABEL_219:
                                        value_low = BatchSampleTimingAndSizes;
                                        v58 = formatDescriptiona;
LABEL_344:
                                        v31 = v176;
                                        goto LABEL_347;
                                      }
                                    }

                                    else
                                    {
                                      if (HIBYTE(v203))
                                      {
                                        v81 = 0;
                                      }

                                      else
                                      {
                                        v81 = v180;
                                      }

                                      BatchSampleTimingAndSizes = FigSampleCursorUtilityGetBatchSampleTimingAndSizes(v209, value, v69, &time2.value, 0, v54, 0, v81);
                                      if (BatchSampleTimingAndSizes)
                                      {
                                        goto LABEL_219;
                                      }
                                    }

                                    value = time2.value;
                                    v58 = formatDescriptiona;
                                    v50 = v171;
                                    if ((v171 & 1) == 0)
                                    {
                                      v165 = time2.value;
                                      if (time2.value >= 1)
                                      {
                                        p_decodeTimeStamp = &sampleTimingArray->decodeTimeStamp;
                                        v83 = time2.value;
                                        do
                                        {
                                          if (p_decodeTimeStamp->flags)
                                          {
                                            v84 = *&p_decodeTimeStamp->value;
                                            v232.epoch = p_decodeTimeStamp->epoch;
                                            *&v232.value = v84;
                                            time1 = *(v36 + 88);
                                            CMTimeSubtract(&v233, &v232, &time1);
                                            v85 = *&v233.value;
                                            p_decodeTimeStamp->epoch = v233.epoch;
                                            *&p_decodeTimeStamp->value = v85;
                                          }

                                          p_decodeTimeStamp += 3;
                                          --v83;
                                        }

                                        while (v83);
                                        v165 = value;
                                        v58 = formatDescriptiona;
                                        v50 = v171;
                                      }
                                    }

                                    if (!HIBYTE(v203))
                                    {
                                      if (value >= 1)
                                      {
                                        v86 = 0;
                                        v77 = 0;
                                        while (1)
                                        {
                                          v87 = v77;
                                          v77 += v180[v86];
                                          if (v77 <= v87)
                                          {
                                            break;
                                          }

                                          if (value == ++v86)
                                          {
                                            goto LABEL_289;
                                          }
                                        }

                                        sgffr_createSampleBufferAtCursorUsingBatch_cold_2(&v233);
                                        value_low = LODWORD(v233.value);
                                        goto LABEL_344;
                                      }

                                      v77 = 0;
LABEL_289:
                                      numSampleSizeEntries = value;
LABEL_302:
                                      if (v50)
                                      {
                                        PTSAndDTSAndDuration = sgffr_getPTSAndDTSAndDuration(v36, v209, &sampleTimingArray->duration);
                                        if (PTSAndDTSAndDuration)
                                        {
                                          goto LABEL_343;
                                        }
                                      }

                                      if (HIBYTE(v203))
                                      {
                                        v110 = *v180;
                                        if (a5 == 1)
                                        {
                                          v111 = v207 + v204 * v110;
                                        }

                                        else
                                        {
                                          v111 = v110 + v110 * (v204 - value) + v207;
                                        }

                                        v195 = v111;
                                      }

                                      else
                                      {
                                        v195 = v207;
                                        if (v204 < 1)
                                        {
                                          goto LABEL_314;
                                        }

                                        PTSAndDTSAndDuration = sgffr_getContiguousSampleOffsetAndSize(v209, &v195, 0);
                                        if (PTSAndDTSAndDuration)
                                        {
                                          goto LABEL_343;
                                        }

                                        if (!HIBYTE(v203))
                                        {
LABEL_314:
                                          if (!*(v36 + 33))
                                          {
                                            PTSAndDTSAndDuration = sgffr_checkByteRangeForByteStream(v36, v190, v195, v77);
                                            if (PTSAndDTSAndDuration)
                                            {
                                              goto LABEL_343;
                                            }
                                          }

                                          if (v211 == 3)
                                          {
                                            sgffr_checkDataAvailability(a1, v191, v190, v195, v77, &v211);
                                          }

                                          if (*(v36 + 33))
                                          {
                                            goto LABEL_318;
                                          }

                                          if (!*(v36 + 32))
                                          {
                                            v144 = sgffr_readFromByteStreamCreatingBlockBuffer(v36, v190, v77, v195, &dataBuffer);
                                            if (v144)
                                            {
                                              value_low = v144;
                                              sgffr_createSampleBufferAtCursorUsingBatch_cold_7();
                                              goto LABEL_344;
                                            }

LABEL_318:
                                            v112 = 0;
                                            v113 = 1;
                                            goto LABEL_319;
                                          }

                                          PTSAndDTSAndDuration = CMBlockBufferCreateEmpty(*v36, 0, 0, &dataBuffer);
                                          if (!PTSAndDTSAndDuration)
                                          {
                                            if (v211 == 4)
                                            {
                                              v146 = CFGetAllocator(a1);
                                              PTSAndDTSAndDuration = SampleGeneratorMakeDataReadyInfoCreateForScheduledIORead(v146, a1, v191, &makeDataReadyRefcon);
                                              if (PTSAndDTSAndDuration)
                                              {
                                                goto LABEL_343;
                                              }

                                              v112 = sgffr_makeDataReady_deferUntilMakeDataReadyPolicyOnly;
                                              v113 = 0;
                                            }

                                            else
                                            {
                                              v113 = 0;
                                              v112 = 0;
                                            }

LABEL_319:
                                            DataReadyRefcon = CMSampleBufferCreate(*v36, dataBuffer, v113, v112, makeDataReadyRefcon, v58, value, v165, sampleTimingArray, numSampleSizeEntries, v180, &sbuf);
                                            if (!DataReadyRefcon)
                                            {
                                              v115 = makeDataReadyRefcon;
                                              if (!makeDataReadyRefcon)
                                              {
LABEL_323:
                                                if (CMFormatDescriptionGetMediaType(v58) != 1936684398 || *(v36 + 35) || *(v36 + 36))
                                                {
                                                  if (v210)
                                                  {
                                                    CFRelease(v210);
                                                    v210 = 0;
                                                  }

                                                  v116 = FigSampleCursorCopy(a2, &v210);
                                                  if (v116)
                                                  {
                                                    value_low = v116;
                                                    sgffr_createSampleBufferAtCursorUsingBatch_cold_6();
                                                    goto LABEL_346;
                                                  }

                                                  FigSampleCursorSetProperty(v210, @"EagerlyFetchSampleDependencyAttributes", *MEMORY[0x1E695E4D0]);
                                                  if (value >= 1)
                                                  {
                                                    v117 = 0;
                                                    while (1)
                                                    {
                                                      sgffr_attachMediaSampleAttachmentsToSampleBuffer(v36, v210, sbuf, v117);
                                                      v118 = v210;
                                                      v119 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                                                      if (!v119)
                                                      {
                                                        break;
                                                      }

                                                      DataReadyRefcon = v119(v118, 1, &v188);
                                                      if (DataReadyRefcon)
                                                      {
                                                        goto LABEL_500;
                                                      }

                                                      if (value == ++v117)
                                                      {
                                                        goto LABEL_334;
                                                      }
                                                    }

                                                    value_low = 4294954514;
                                                    goto LABEL_346;
                                                  }

LABEL_334:
                                                  CFRelease(v210);
                                                  v210 = 0;
                                                }

                                                if (!a9 || (v120 = a9(a10, a11, sbuf), !v120))
                                                {
                                                  v31 = v176;
                                                  if (*(v36 + 32))
                                                  {
                                                    v121 = CFGetAllocator(a1);
                                                    v122 = SampleGeneratorReadCompletionInfoCreate(v121, sbuf, 0, 0, 0, 0, v195, v77, &v186);
                                                    if (v122)
                                                    {
                                                      value_low = v122;
                                                      goto LABEL_164;
                                                    }

                                                    TimeNeededInNanosecondsAndReadSchedulerFlags = sgffr_getTimeNeededInNanosecondsAndReadSchedulerFlags(v36, sbuf, v211, v182, a2, &v193);
                                                    v124 = v191;
                                                    sgffr_rememberScheduledIOForSampleBuffer(v191, sbuf);
                                                    if (v175)
                                                    {
                                                      v125 = FigScheduledIOBatchAddRead(v175, v195, v77, dataBuffer, a1, v186, TimeNeededInNanosecondsAndReadSchedulerFlags, v193, &invalidateRefCon);
                                                    }

                                                    else
                                                    {
                                                      v125 = FigScheduledIORequestRead(v124, v195, v77, dataBuffer, a1, v186, TimeNeededInNanosecondsAndReadSchedulerFlags, v193, &invalidateRefCon);
                                                    }

                                                    value_low = v125;
                                                    v58 = formatDescriptiona;
                                                    v57 = sampleTimingArray;
                                                    if (v125)
                                                    {
                                                      sgffr_createSampleBufferAtCursorUsingBatch_cold_4(v125, &sbuf);
                                                      LODWORD(v54) = v169;
                                                      v56 = v167;
LABEL_349:
                                                      if (sbuf)
                                                      {
                                                        CFRelease(sbuf);
                                                      }

                                                      goto LABEL_351;
                                                    }

                                                    v186 = 0;
                                                    v145 = invalidateRefCon;
                                                    if (makeDataReadyRefcon)
                                                    {
                                                      *(makeDataReadyRefcon + 4) = invalidateRefCon;
                                                    }

                                                    CMSampleBufferSetInvalidateCallback(sbuf, sgffr_invalidateSampleBuffer, v145);
                                                  }

                                                  sgffr_setSampleBufferAttachments(v36, sbuf, v189, v195);
                                                  value_low = 0;
                                                  v185 = sbuf;
                                                  sbuf = 0;
                                                  LODWORD(v54) = v169;
                                                  v56 = v167;
                                                  v57 = sampleTimingArray;
LABEL_351:
                                                  if (dataBuffer)
                                                  {
                                                    CFRelease(dataBuffer);
                                                  }

                                                  if (v54)
                                                  {
                                                    free(v57);
                                                  }

                                                  if (v56)
                                                  {
                                                    free(v180);
                                                  }

                                                  if (v210)
                                                  {
                                                    CFRelease(v210);
                                                  }

                                                  if (v208)
                                                  {
                                                    CFRelease(v208);
                                                  }

                                                  if (v209)
                                                  {
                                                    CFRelease(v209);
                                                  }

                                                  if (v189)
                                                  {
                                                    CFRelease(v189);
                                                  }

                                                  if (v58)
                                                  {
                                                    CFRelease(v58);
                                                  }

                                                  if (v190)
                                                  {
                                                    CFRelease(v190);
                                                  }

                                                  if (v191)
                                                  {
                                                    CFRelease(v191);
                                                  }

                                                  if (makeDataReadyRefcon)
                                                  {
                                                    CFRelease(makeDataReadyRefcon);
                                                  }

                                                  if (v186)
                                                  {
                                                    CFRelease(v186);
                                                  }

                                                  goto LABEL_375;
                                                }

                                                value_low = v120;
                                                sgffr_createSampleBufferAtCursorUsingBatch_cold_5();
LABEL_346:
                                                v31 = v176;
                                                goto LABEL_347;
                                              }

                                              DataReadyRefcon = CMSampleBufferSetShouldReleaseMakeDataReadyRefcon();
                                              if (!DataReadyRefcon)
                                              {
                                                CFRetain(v115);
                                                goto LABEL_323;
                                              }
                                            }

LABEL_500:
                                            value_low = DataReadyRefcon;
                                            goto LABEL_346;
                                          }

LABEL_343:
                                          value_low = PTSAndDTSAndDuration;
                                          goto LABEL_344;
                                        }

                                        v110 = *v180;
                                      }

                                      v77 = v110 * value;
                                      goto LABEL_314;
                                    }

LABEL_301:
                                    v77 = 0;
                                    goto LABEL_302;
                                  }

LABEL_199:
                                  v76 = 1;
LABEL_205:
                                  if (((HIBYTE(v203) != 0) & v50) != 0)
                                  {
                                    if (v76)
                                    {
                                      v77 = 0;
                                      v58 = formatDescriptiona;
                                      goto LABEL_302;
                                    }

                                    goto LABEL_237;
                                  }

                                  time2.value = 0;
                                  if (a5 == 1)
                                  {
                                    v78 = a6;
                                  }

                                  else
                                  {
                                    v78 = a2;
                                  }

                                  if (v76)
                                  {
                                    v69 = 0;
                                  }

                                  else
                                  {
                                    v69 = v78;
                                  }

                                  goto LABEL_214;
                                }
                              }

                              else
                              {
                                value_low = 4294954514;
                              }

                              sgffr_createSampleBufferAtCursorUsingBatch_cold_9();
                              goto LABEL_163;
                            }

                            value_low = v65;
                          }

                          else
                          {
                            value_low = 4294954514;
                          }

                          sgffr_createSampleBufferAtCursorUsingBatch_cold_10();
                          goto LABEL_163;
                        }

                        sgffr_createSampleBufferAtCursorUsingBatch_cold_13(&v233);
                        v57 = 0;
                        v56 = 0;
                        value_low = LODWORD(v233.value);
                        v180 = &v198;
LABEL_294:
                        v31 = v176;
                        v58 = formatDescriptiona;
                        goto LABEL_349;
                      }

                      SingleSampleBuffer = sgffr_generateSingleSampleBuffer(a1, a2, a7, v182, a9, a10, a11, v35, &v185);
                      goto LABEL_127;
                    }

                    if (v59 || (v147 = sgffr_copyByteStreamForDataSourceURL(v36, v189, &v190), !v147))
                    {
                      if (!*(v36 + 32))
                      {
                        v31 = v176;
                        goto LABEL_106;
                      }

                      v70 = sgffr_copyScheduledIOForByteStream(v36, v190, &v191);
                      v31 = v176;
                      if (!v70)
                      {
                        goto LABEL_106;
                      }

                      value_low = v70;
                      LODWORD(v54) = 0;
                      v56 = 0;
                      v180 = &v198;
                      v57 = time;
                    }

                    else
                    {
                      value_low = v147;
                      LODWORD(v54) = 0;
                      v56 = 0;
                      v180 = &v198;
                      v57 = time;
                      v31 = v176;
                    }

                    v58 = formatDescriptiona;
                    goto LABEL_349;
                  }

                  sgffr_createSampleBufferAtCursorUsingBatch_cold_1(&v233);
                  LODWORD(v54) = 0;
                  v56 = 0;
                  value_low = LODWORD(v233.value);
LABEL_292:
                  v180 = &v198;
                  v57 = time;
                  v31 = v176;
                  v58 = formatDescriptiona;
                  goto LABEL_349;
                }

                sgffr_createSampleBufferAtCursorUsingBatch_cold_14();
              }

              LODWORD(v54) = 0;
              v56 = 0;
              goto LABEL_292;
            }

            v44 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v44)
            {
              value_low = v44(a2, &v229);
              if (!value_low)
              {
                v173 = a5;
                formatDescription = (v205 - v204);
                if (v205 - v204 >= 1 && v206)
                {
                  v170 = v207 + v206;
                  v45 = 1;
                  flags = *(v37 + 12);
                  epoch = v38;
                  while (1)
                  {
                    v221 = 0;
                    v220 = 0;
                    v219 = 0;
                    v218 = 0;
                    v217 = 0;
                    v216 = 0;
                    v215 = 0;
                    v46 = v229;
                    v47 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                    if (v47)
                    {
                      value_low = v47(v46, formatDescription, &v215);
                    }

                    else
                    {
                      value_low = 4294954514;
                    }

                    if (v215 != formatDescription)
                    {
                      goto LABEL_498;
                    }

                    if (value_low)
                    {
                      break;
                    }

                    Duration = FigSampleCursorCopyChunkDetails(v229, &v223, &cf, &v221, &v220, &v219, &v218, &v217 + 1, &v217, &v216);
                    if (Duration)
                    {
                      goto LABEL_507;
                    }

                    if (!FigCFEqual() || !FigCFEqual())
                    {
                      goto LABEL_497;
                    }

                    if (cf)
                    {
                      CFRelease(cf);
                      cf = 0;
                    }

                    if (v223)
                    {
                      CFRelease(v223);
                      v223 = 0;
                    }

                    if (!v216)
                    {
                      goto LABEL_497;
                    }

                    Duration = FigSampleCursorCopyFormatDescription(v229, &cf1);
                    if (Duration)
                    {
                      goto LABEL_507;
                    }

                    if (!CFEqual(cf1, cf2))
                    {
                      goto LABEL_497;
                    }

                    if (cf1)
                    {
                      CFRelease(cf1);
                      cf1 = 0;
                    }

                    if (v170 != v221 || (formatDescription = v219, v219 < 1) || (v49 = v220) == 0)
                    {
LABEL_497:
                      value_low = 0;
                      goto LABEL_498;
                    }

                    if (__CFADD__(v206, v220))
                    {
                      fig_log_get_emitter();
                      value_low = FigSignalErrorAtGM();
LABEL_509:
                      v59 = 0;
                      formatDescriptiona = 0;
                      v35 = a12;
                      a5 = v173;
                      goto LABEL_132;
                    }

                    v206 += v220;
                    v205 += v219;
                    if (HIBYTE(v217))
                    {
                      if (HIBYTE(v203))
                      {
                        v232.value = 0;
                        if (!v228 && (Duration = FigSampleCursorCopySampleLocation_0(a2, 0, &v228, 0, 0), Duration) || (Duration = FigSampleCursorCopySampleLocation_0(v229, 0, &v232, 0, 0), Duration))
                        {
LABEL_507:
                          value_low = Duration;
                          fig_log_get_emitter();
                          goto LABEL_508;
                        }

                        if (v228 != v232.value)
                        {
                          HIBYTE(v203) = 0;
                        }

                        a5 = v173;
                      }
                    }

                    else
                    {
                      HIBYTE(v203) = 0;
                    }

                    if (v217)
                    {
                      if (v203)
                      {
                        *&v232.value = *v179;
                        v232.epoch = v38;
                        if ((v233.flags & 0x1D) != 1)
                        {
                          Duration = FigSampleCursorGetDuration(a2, &v233);
                          if (Duration)
                          {
                            goto LABEL_507;
                          }
                        }

                        Duration = FigSampleCursorGetDuration(v229, &v232);
                        if (Duration)
                        {
                          goto LABEL_507;
                        }

                        time1 = v233;
                        time2 = v232;
                        if (CMTimeCompare(&time1, &time2))
                        {
                          LOBYTE(v203) = 0;
                        }

                        a5 = v173;
                      }
                    }

                    else
                    {
                      LOBYTE(v203) = 0;
                    }

                    if (v45)
                    {
                      *&v232.value = *v179;
                      v232.epoch = v38;
                      *&time1.value = *v179;
                      time1.epoch = v38;
                      *&time2.value = *v179;
                      time2.epoch = v38;
                      if ((flags & 0x1D) != 1)
                      {
                        Duration = FigSampleCursorGetPresentationTimeStamp(a2, &time1);
                        if (Duration)
                        {
                          goto LABEL_507;
                        }

                        Duration = FigSampleCursorGetDecodeTimeStamp(a2, &time2);
                        if (Duration)
                        {
                          goto LABEL_507;
                        }

                        lhs = time2;
                        rhs = time1;
                        CMTimeSubtract(&v214, &lhs, &rhs);
                        v234 = v214.value;
                        flags = v214.flags;
                        timescale = v214.timescale;
                        epoch = v214.epoch;
                      }

                      Duration = FigSampleCursorGetPresentationTimeStamp(v229, &time1);
                      if (Duration)
                      {
                        goto LABEL_507;
                      }

                      Duration = FigSampleCursorGetDecodeTimeStamp(v229, &time2);
                      if (Duration)
                      {
                        goto LABEL_507;
                      }

                      v214 = time2;
                      lhs = time1;
                      CMTimeSubtract(&v232, &v214, &lhs);
                      v214.value = v234;
                      v214.timescale = timescale;
                      v214.flags = flags;
                      v214.epoch = epoch;
                      lhs = v232;
                      if (CMTimeCompare(&v214, &lhs))
                      {
                        v45 = 0;
                      }

                      a5 = v173;
                    }

                    else
                    {
                      v45 = 0;
                    }

                    value_low = 0;
                    v170 += v49;
                    v35 = a12;
                    if (v205 >= a3)
                    {
                      goto LABEL_435;
                    }
                  }

                  fig_log_get_emitter();
LABEL_508:
                  FigSignalErrorAtGM();
                  goto LABEL_509;
                }

                value_low = 0;
                v45 = 1;
LABEL_498:
                v35 = a12;
                a5 = v173;
                goto LABEL_435;
              }
            }

            else
            {
              value_low = 4294954514;
            }
          }
        }

        else
        {
          value_low = 4294954514;
        }
      }
    }

    else
    {
      value_low = 4294954514;
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM();
    goto LABEL_130;
  }

  value_low = sgffr_generateSingleSampleBuffer(a1, a2, a7, v182, a9, a10, a11, a12, &v185);
LABEL_375:
  if (!value_low)
  {
    goto LABEL_378;
  }

  if (value_low != -12841)
  {
    goto LABEL_493;
  }

LABEL_377:
  if ((v183 & 1) == 0)
  {
    v126 = 0;
    v214.value = 0;
    lhs.value = 0;
    rhs.value = 0;
    v185 = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      v127 = 0x7FFFFFFF;
    }

    else
    {
      v127 = a3;
    }

    v128 = a4 - 1;
    if (a4 == 1 || !a5)
    {
      goto LABEL_469;
    }

    v233 = **&MEMORY[0x1E6960C70];
    memset(&v232, 0, sizeof(v232));
    v129 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v129)
    {
      v129(a2, &v233);
    }

    if (a3 >= 1 && (v233.flags & 0x1D) == 1)
    {
      *time = v233;
      CMTimeMultiply(&v232, time, v127);
    }

    else
    {
      CMTimeMake(time, 1, 2);
      v232 = *time;
    }

    v130 = v31;
    if (a5 == 1)
    {
      v131 = -1;
    }

    else
    {
      time1 = **&MEMORY[0x1E6960CC0];
      time2 = v232;
      CMTimeSubtract(time, &time1, &time2);
      v232 = *time;
      v131 = 1;
      v128 = 1 - a4;
    }

    v132 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v132)
    {
      v133 = v132(a2, &lhs);
      if (v133)
      {
        goto LABEL_511;
      }

      v134 = lhs.value;
      time1 = v232;
      v135 = *(*(CMBaseObjectGetVTable() + 16) + 120);
      if (!v135)
      {
        goto LABEL_407;
      }

      *time = time1;
      v136 = v135(v134, time);
      if (v136)
      {
        value_low = v136;
        if (v136 != -12840)
        {
          goto LABEL_408;
        }
      }

      v137 = lhs.value;
      if (a4 < 1)
      {
LABEL_451:
        if (a6)
        {
          v152 = *(CMBaseObjectGetVTable() + 16);
          v153 = v152 ? v152 : 0;
          if (v137 && (v154 = *(CMBaseObjectGetVTable() + 16)) != 0)
          {
            v155 = v154;
          }

          else
          {
            v155 = 0;
          }

          v156 = v153 == v155 && *(v153 + 32) ? (*(v155 + 32))(a6, v137) : 0;
          if (v131 == v156)
          {
            v137 = a6;
          }
        }

        if (a5 == -1)
        {
          v126 = a2;
        }

        else
        {
          v126 = v137;
        }

        if (a5 == -1)
        {
          a2 = v137;
        }

        v31 = v130;
LABEL_469:
        v157 = *(*(CMBaseObjectGetVTable() + 16) + 112);
        if (v157)
        {
          v158 = v157(a2, v126, &v214);
          value_low = v158;
          if (v158 == -12840)
          {
            goto LABEL_478;
          }

          if (!v158)
          {
            if (!a9 || (v159 = a9(a10, a11, v214.value), !v159))
            {
              value_low = 0;
              v185 = v214.value;
              v214.value = 0;
              goto LABEL_480;
            }

            value_low = v159;
            fig_log_get_emitter();
            goto LABEL_477;
          }
        }

        else
        {
          value_low = 4294954514;
        }

        fig_log_get_emitter();
LABEL_477:
        FigSignalErrorAtGM();
LABEL_478:
        if (v214.value)
        {
          CFRelease(v214.value);
        }

LABEL_480:
        if (rhs.value)
        {
          CFRelease(rhs.value);
        }

        if (lhs.value)
        {
          CFRelease(lhs.value);
        }

        if (!v31 || value_low)
        {
          goto LABEL_493;
        }

LABEL_486:
        *v31 = v185;
        return value_low;
      }

      *time = 0;
      v138 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v138)
      {
        goto LABEL_407;
      }

      v133 = v138(a2, &rhs);
      if (v133)
      {
LABEL_511:
        value_low = v133;
        goto LABEL_408;
      }

      v139 = rhs.value;
      v140 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (v140)
      {
        v133 = v140(v139, v128, time);
        if (!v133)
        {
          if (v128 == *time)
          {
            v141 = rhs.value;
            v142 = *(CMBaseObjectGetVTable() + 16);
            v143 = v142 ? v142 : 0;
            if (v137 && (v149 = *(CMBaseObjectGetVTable() + 16)) != 0)
            {
              v150 = v149;
            }

            else
            {
              v150 = 0;
            }

            v151 = v143 == v150 && *(v143 + 32) ? (*(v150 + 32))(v141, v137) : 0;
            if (v131 == v151)
            {
              v137 = rhs.value;
            }
          }

          goto LABEL_451;
        }

        goto LABEL_511;
      }
    }

LABEL_407:
    value_low = 4294954514;
LABEL_408:
    v31 = v130;
    goto LABEL_478;
  }

LABEL_378:
  if (v31)
  {
    goto LABEL_486;
  }

LABEL_493:
  if (v185)
  {
    CFRelease(v185);
  }

  return value_low;
}

uint64_t FigSampleCursorCopyFormatDescription(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t sgffr_checkDataAvailability(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, _DWORD *a6)
{
  v19 = 0;
  if (a2)
  {
    VTable = CMBaseObjectGetVTable();
    v12 = *(VTable + 16);
    result = VTable + 16;
    v13 = *(v12 + 40);
    if (!v13)
    {
      return result;
    }

    result = v13(a2, a4, &v19);
  }

  else
  {
    v15 = CMBaseObjectGetVTable();
    v16 = *(v15 + 16);
    result = v15 + 16;
    v17 = *(v16 + 24);
    if (!v17)
    {
      return result;
    }

    result = v17(a3, a4, &v19);
  }

  if (result)
  {
    v18 = 1;
  }

  else
  {
    v18 = v19 >= a5;
  }

  if (!v18)
  {
    *a6 = 2;
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }

  return result;
}

uint64_t CMByteStreamReadAndCreateBlockBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4, 0);
}

uint64_t SampleGeneratorMakeDataReadyInfoCreateForScheduledIORead(uint64_t a1, const void *a2, const void *a3, uint64_t *a4)
{
  if (sampleGeneratorMakeDataReadyInfoGetTypeID_onceToken != -1)
  {
    SampleGeneratorMakeDataReadyInfoCreateForScheduledIORead_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v8 = Instance;
    *(Instance + 16) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    *(v8 + 24) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    result = 0;
    *a4 = v8;
  }

  else
  {
    SampleGeneratorMakeDataReadyInfoCreateForScheduledIORead_cold_2(&v10);
    return v10;
  }

  return result;
}

uint64_t CMByteStreamRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4, 0);
}

uint64_t sgffr_readFromByteStreamCreatingBlockBuffer(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, CMBlockBufferRef *a5)
{
  theBuffer = 0;
  if (a3 > 0x2000)
  {
    if (*(a1 + 8))
    {
      CMByteStreamGetCMBaseObject();
      FigCachedFileByteStreamGetClassID();
      if (!CMBaseObjectIsMemberOfClass())
      {
        v15 = 0;
        BlockBuffer = FigMemoryPoolCreateBlockBuffer();
        if (!BlockBuffer)
        {
          BlockBuffer = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &v15);
          if (!BlockBuffer)
          {
            v12 = v15;
            v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v13)
            {
              goto LABEL_12;
            }

            BlockBuffer = v13(a2, a3, a4, v12, 0);
            if (!BlockBuffer)
            {
              goto LABEL_6;
            }
          }
        }

LABEL_11:
        v11 = BlockBuffer;
        goto LABEL_13;
      }
    }
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v9)
  {
    BlockBuffer = v9(a2, a3, a4, &theBuffer, 0);
    if (!BlockBuffer)
    {
LABEL_6:
      v11 = 0;
      *a5 = theBuffer;
      return v11;
    }

    goto LABEL_11;
  }

LABEL_12:
  v11 = 4294954514;
LABEL_13:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v11;
}

uint64_t sgffr_createBlockBufferWithBufferReference(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, size_t a3, size_t a4, CMBlockBufferRef *blockBufferOut)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v9 = v5;
    v10 = v6;
    sgffr_createBlockBufferWithBufferReference_cold_1(&v8);
    return v8;
  }

  else
  {

    return CMBlockBufferCreateWithBufferReference(a1, a2, a3, a4, 0, blockBufferOut);
  }
}

uint64_t SampleGeneratorReadCompletionInfoCreate(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (sampleGeneratorReadCompletionInfoGetTypeID_onceToken != -1)
  {
    SampleGeneratorReadCompletionInfoCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v17 = Instance;
    *(Instance + 16) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(a2);
    *(v17 + 24) = ImageBuffer;
    if (ImageBuffer)
    {
      CFRetain(ImageBuffer);
    }

    if (a3)
    {
      *(v17 + 40) = a3;
      *(v17 + 48) = a5;
      *(v17 + 56) = a6;
      *(v17 + 64) = a7;
      *(v17 + 72) = a8;
      if (a4)
      {
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v19)
        {
          v19(a4, v17 + 32);
        }
      }
    }

    result = 0;
    *a9 = v17;
  }

  else
  {
    SampleGeneratorReadCompletionInfoCreate_cold_2(&v21);
    return v21;
  }

  return result;
}

uint64_t sgffr_getTimeNeededInNanosecondsAndReadSchedulerFlags(uint64_t a1, opaqueCMSampleBuffer *a2, int a3, char a4, uint64_t a5, _DWORD *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (a4)
  {
    *a6 |= 0x80u;
    return UpTimeNanoseconds;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
LABEL_11:
        *a6 |= 4u;
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      return UpTimeNanoseconds;
    }

    if (!*(a1 + 56))
    {
      return UpTimeNanoseconds;
    }

    CMSampleBufferGetOutputDecodeTimeStamp(&v24, a2);
    value = v24.value;
    flags = v24.flags;
    timescale = v24.timescale;
    epoch = v24.epoch;
    if (*(a1 + 24))
    {
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = v24.flags;
      lhs.epoch = v24.epoch;
      rhs = *(a1 + 112);
      CMTimeSubtract(&v24, &lhs, &rhs);
      value = v24.value;
      flags = v24.flags;
      timescale = v24.timescale;
      epoch = v24.epoch;
    }

    else if (a5)
    {
      dictionaryRepresentation = 0;
      v18 = *MEMORY[0x1E695E480];
      FigBaseObject = FigSampleCursorGetFigBaseObject(a5);
      CMBaseObjectCopyProperty_0(FigBaseObject, @"AdvanceDecodeDelta", v18, &dictionaryRepresentation);
      if (dictionaryRepresentation)
      {
        memset(&v24, 0, sizeof(v24));
        CMTimeMakeFromDictionary(&v24, dictionaryRepresentation);
        CFRelease(dictionaryRepresentation);
        lhs = v24;
        rhs = **&MEMORY[0x1E6960CC0];
        if (CMTimeCompare(&lhs, &rhs) >= 1)
        {
          rhs.value = value;
          rhs.timescale = timescale;
          rhs.flags = flags;
          rhs.epoch = epoch;
          v20 = v24;
          CMTimeSubtract(&lhs, &rhs, &v20);
          value = lhs.value;
          flags = lhs.flags;
          timescale = lhs.timescale;
          epoch = lhs.epoch;
        }
      }
    }

    if ((flags & 0x1D) != 1)
    {
      return UpTimeNanoseconds;
    }

    memset(&v24, 0, sizeof(v24));
    CMTimebaseGetTime(&lhs, *(a1 + 56));
    rhs.value = value;
    rhs.timescale = timescale;
    rhs.flags = flags;
    rhs.epoch = epoch;
    CMTimeSubtract(&v24, &rhs, &lhs);
    EffectiveRate = CMTimebaseGetEffectiveRate(*(a1 + 56));
    if (EffectiveRate == 0.0)
    {
      *&v24.value = *MEMORY[0x1E6960CC0];
      v17 = *(MEMORY[0x1E6960CC0] + 16);
    }

    else
    {
      if (EffectiveRate == 1.0)
      {
LABEL_29:
        rhs = v24;
        v20 = *(a1 + 64);
        CMTimeSubtract(&lhs, &rhs, &v20);
        v24 = lhs;
        rhs = lhs;
        CMTimeConvertScale(&lhs, &rhs, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v24 = lhs;
        return v24.value + FigGetUpTimeNanoseconds();
      }

      rhs = v24;
      CMTimeMultiplyByFloat64(&lhs, &rhs, 1.0 / EffectiveRate);
      *&v24.value = *&lhs.value;
      v17 = lhs.epoch;
    }

    v24.epoch = v17;
    goto LABEL_29;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      return UpTimeNanoseconds;
    }

    goto LABEL_11;
  }

  return FigGetUpTimeNanoseconds();
}

uint64_t sgffr_rememberScheduledIOForSampleBuffer(const void *a1, const void *a2)
{
  MEMORY[0x19A8D3660](&gFigSampleGeneratorSetUpTableOnce, sgffr_setUpTableOnce);
  FigSimpleMutexLock();
  CFDictionarySetValue(gFigSampleGeneratorSampleBufferToScheduledIOTable, a2, a1);

  return FigSimpleMutexUnlock();
}

uint64_t FigScheduledIOBatchAddRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v17)
  {
    return v17(a1, a2, a3, a4, sgffr_markSampleBufferReady, a5, a6, a7, a8, a9);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t sgffr_forgetScheduledIOForSampleBuffer(const void *a1)
{
  MEMORY[0x19A8D3660](&gFigSampleGeneratorSetUpTableOnce, sgffr_setUpTableOnce);
  FigSimpleMutexLock();
  CFDictionaryRemoveValue(gFigSampleGeneratorSampleBufferToScheduledIOTable, a1);

  return FigSimpleMutexUnlock();
}

void sgffr_invalidateSampleBuffer(const void *a1, uint64_t a2)
{
  MEMORY[0x19A8D3660](&gFigSampleGeneratorSetUpTableOnce, sgffr_setUpTableOnce);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(gFigSampleGeneratorSampleBufferToScheduledIOTable, a1);
  if (Value)
  {
    v5 = Value;
    CFRetain(Value);
    CFDictionaryRemoveValue(gFigSampleGeneratorSampleBufferToScheduledIOTable, a1);
    FigSimpleMutexUnlock();
    v6 = FigScheduledIOGetTypeID();
    if (v6 == CFGetTypeID(v5))
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v7)
      {
        v7(v5, a2, 2);
      }
    }

    CFRelease(v5);
  }

  else
  {
    CFDictionaryRemoveValue(gFigSampleGeneratorSampleBufferToScheduledIOTable, a1);

    FigSimpleMutexUnlock();
  }
}

void sgffr_attachMediaSampleAttachmentsToSampleBuffer(uint64_t a1, uint64_t a2, CMSampleBufferRef sbuf, CFIndex a4)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, a4);
    if (ValueAtIndex)
    {
      v9 = ValueAtIndex;
      value = 0;
      theDict = 0;
      FigBaseObject = FigSampleCursorGetFigBaseObject(a2);
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v11 || (!v11(FigBaseObject, @"SampleDependencyAttributes", 0, &theDict) ? (v12 = theDict == 0) : (v12 = 1), v12))
      {
        v18 = 0;
        v17 = 0;
        if (!*(*(CMBaseObjectGetVTable() + 16) + 64))
        {
          return;
        }

        v13 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (!v13 || v13(a2, &v18 + 1, &v18, 0, &v17))
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM();
          return;
        }

        v14 = MEMORY[0x1E695E4D0];
        if (!HIBYTE(v18))
        {
          CFDictionarySetValue(v9, *MEMORY[0x1E6960458], *MEMORY[0x1E695E4D0]);
        }

        if (v18)
        {
          CFDictionarySetValue(v9, *MEMORY[0x1E6960460], *v14);
        }

        if (v17)
        {
          CFDictionarySetValue(v9, *MEMORY[0x1E6960450], *MEMORY[0x1E695E4C0]);
        }
      }

      else
      {
        CFDictionaryApplyFunction(theDict, sgffr_appendAttributesToDictionary, v9);
        CFRelease(theDict);
      }

      if (*(a1 + 36))
      {
        v15 = FigSampleCursorGetFigBaseObject(a2);
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v16)
        {
          if (!v16(v15, @"SeamIdentifier", 0, &value))
          {
            if (value)
            {
              CFDictionarySetValue(v9, *MEMORY[0x1E6962DD8], value);
              CFRelease(value);
            }
          }
        }
      }
    }
  }
}

void sgffr_setSampleBufferAttachments(uint64_t a1, CMAttachmentBearerRef target, const void *a3, uint64_t a4)
{
  valuePtr = a4;
  if (*(a1 + 33))
  {
    if (a3)
    {
      CMSetAttachment(target, *MEMORY[0x1E6960530], a3, 1u);
      v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
      CMSetAttachment(target, *MEMORY[0x1E6960528], v5, 1u);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {
      fig_log_get_emitter();

      FigSignalErrorAtGM();
    }
  }
}

uint64_t FigSampleCursorCopySampleLocation_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t sgffr_copyScheduledIOForByteStream(uint64_t a1, const void *a2, void *a3)
{
  FigReadWriteLockLockForRead();
  v6 = CFDictionaryGetValue(*(*(a1 + 48) + 40), a2);
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    FigReadWriteLockUnlockForRead();
    v8 = 0;
  }

  else
  {
    FigReadWriteLockUnlockForRead();
    FigReadWriteLockLockForWrite();
    v9 = CFDictionaryGetValue(*(*(a1 + 48) + 40), a2);
    value = v9;
    if (v9)
    {
      CFRetain(v9);
      v8 = 0;
    }

    else
    {
      v8 = FigScheduledIOCreateForReadingByteStream();
      if (!v8)
      {
        CFDictionarySetValue(*(*(a1 + 48) + 40), a2, 0);
      }
    }

    FigReadWriteLockUnlockForWrite();
    v7 = value;
  }

  *a3 = v7;
  return v8;
}

uint64_t FigSampleCursorGetDecodeTimeStamp(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigSampleCursorGetDuration(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

void *cvbufferBBufSourceLock(__CVBuffer *a1, size_t a2)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  if (CVPixelBufferGetHeight(a1) * BytesPerRow < a2)
  {
    cvbufferBBufSourceLock_cold_1();
  }

  return CVPixelBufferGetBaseAddress(a1);
}

uint64_t sampleGeneratorMakeDataReadyInfoGetTypeIDOnce()
{
  sSampleGeneratorMakeDataReadyInfoClass = 0;
  unk_1EAF18C50 = "SampleGeneratorMakeDataReadyInfo";
  qword_1EAF18C58 = sampleGeneratorMakeDataReadyInfoInit;
  unk_1EAF18C60 = 0;
  qword_1EAF18C68 = sampleGeneratorMakeDataReadyInfoFinalize;
  unk_1EAF18C70 = 0;
  qword_1EAF18C78 = 0;
  unk_1EAF18C80 = 0;
  qword_1EAF18C88 = sampleGeneratorMakeDataReadyInfoCopyDesc;
  result = _CFRuntimeRegisterClass();
  sSampleGeneratorMakeDataReadyInfoTypeID = result;
  return result;
}

void *sampleGeneratorMakeDataReadyInfoInit(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void sampleGeneratorMakeDataReadyInfoFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

__CFString *sampleGeneratorMakeDataReadyInfoCopyDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SampleGeneratorMakeDataReadyInfo: %p>", a1);
  return Mutable;
}

uint64_t FigSampleCursorCopy(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t sampleGeneratorReadCompletionInfoGetTypeIDOnce()
{
  sSampleGeneratorReadCompletionInfoClass = 0;
  unk_1EAF18CC0 = "SampleGeneratorReadCompletionInfo";
  qword_1EAF18CC8 = sampleGeneratorReadCompletionInfoInit;
  unk_1EAF18CD0 = 0;
  qword_1EAF18CD8 = sampleGeneratorReadCompletionInfoFinalize;
  unk_1EAF18CE0 = 0;
  qword_1EAF18CE8 = 0;
  unk_1EAF18CF0 = 0;
  qword_1EAF18CF8 = sampleGeneratorReadCompletionInfoCopyDesc;
  result = _CFRuntimeRegisterClass();
  sSampleGeneratorReadCompletionInfoTypeID = result;
  return result;
}

double sampleGeneratorReadCompletionInfoInit(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void sampleGeneratorReadCompletionInfoFinalize(void *a1)
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
}

__CFString *sampleGeneratorReadCompletionInfoCopyDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SampleGeneratorReadCompletionInfo: %p>", a1);
  return Mutable;
}

uint64_t sgffr_setUpTableOnce()
{
  gFigSampleGeneratorSampleBufferToScheduledIOTable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  result = FigSimpleMutexCreate();
  gFigSampleGeneratorSampleBufferToScheduledIOMutex = result;
  return result;
}

uint64_t FigSampleCursorGetBatchSampleTimingAndSizes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 224);
  if (!v12)
  {
    return 4294954514;
  }

  return v12(a1, a2, a3, a4, 0, a5, 0, a6);
}

uint64_t FigSampleCursorCopyChunkDetails(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v18)
  {
    return 4294954514;
  }

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t FigSampleCursorSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigBaseObject = FigSampleCursorGetFigBaseObject(a1);
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(FigBaseObject, a2, a3);
  }

  return result;
}

uint64_t sgffr_commitBatchApply(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v5)
  {
    result = v5(a2);
  }

  else
  {
    result = 4294954514;
  }

  if (!*a3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t figSampleGeneratorBatch_Finalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFDictionaryApplyFunction(*DerivedStorage, figSampleGeneratorBatch_removeListeners, a1);
  }

  if (!*(DerivedStorage + 32))
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v6)
    {
      v6(a1);
    }
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  FigCFWeakReferenceStore();

  return FigSimpleMutexDestroy();
}

__CFString *figSampleGeneratorBatch_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(0, 0);
  v4 = CFGetRetainCount(a1);
  Count = FigCFDictionaryGetCount();
  v6 = "open";
  v7 = *(DerivedStorage + 32);
  if (v7 > 1)
  {
    v6 = "completed";
  }

  if (v7 == 1)
  {
    v6 = "committed";
  }

  CFStringAppendFormat(Mutable, 0, @"FigSampleGenBatch %p(%d): batchCount=%ld state:%s(%d)", a1, v4, Count, v6, v7);
  return Mutable;
}

uint64_t figSampleGeneratorBatch_removeListeners()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

uint64_t figSampleGeneratrBatch_completionCallback(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  CFSetRemoveValue(*(DerivedStorage + 24), a4);
  if (!CFSetGetCount(*(DerivedStorage + 24)))
  {
    *(DerivedStorage + 32) = 2;
    Count = CFArrayGetCount(*(DerivedStorage + 40));
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 40), v8);
        statusOut = 0;
        if (CMSampleBufferHasDataFailed(ValueAtIndex, &statusOut) || !CMSampleBufferDataIsReady(ValueAtIndex))
        {
          break;
        }

        if (v7 == ++v8)
        {
          goto LABEL_12;
        }
      }

      if (statusOut == -16751)
      {
        v10 = 4;
      }

      else
      {
        v10 = 3;
      }

      *(DerivedStorage + 32) = v10;
    }

LABEL_12:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  return FigSimpleMutexUnlock();
}

uint64_t figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, char a8, uint64_t (*a9)(uint64_t, uint64_t, opaqueCMSampleBuffer *), uint64_t a10, uint64_t a11, void **a12)
{
  value = 0;
  cf = 0;
  if (!a1)
  {
    figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_6(&v31);
LABEL_33:
    v19 = 0;
    v21 = v31;
    goto LABEL_13;
  }

  if (!a12)
  {
    figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_5(&v31);
    goto LABEL_33;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v19 = MEMORY[0x19A8D0E00](DerivedStorage + 8);
  if (!v19)
  {
    figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_4(&v31);
LABEL_36:
    v21 = v31;
    goto LABEL_37;
  }

  if (*(DerivedStorage + 32))
  {
    figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_1(&v31);
    goto LABEL_36;
  }

  if (*(DerivedStorage + 36) || !*(*(CMBaseObjectGetVTable() + 16) + 144) || sgffr_copyCursorSampleLocationAndDataSource(v19, a2, 0, 0, 0, 0, 0, 0, 0, 0, &cf))
  {
    goto LABEL_7;
  }

  key = cf;
  v31 = 0;
  v26 = CMBaseObjectGetDerivedStorage();
  if (!*v26)
  {
    v25 = 4341;
LABEL_41:
    if (figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_2(v25, &v31, &v32))
    {
      goto LABEL_7;
    }

    v21 = v32;
LABEL_37:
    FigSimpleMutexUnlock();
    goto LABEL_13;
  }

  if (!key)
  {
    v25 = 4342;
    goto LABEL_41;
  }

  if (!CFDictionaryContainsKey(*v26, key))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v24)
      {
        if (!v24(key, *MEMORY[0x1E695E480], &v31))
        {
          CFDictionarySetValue(*v26, key, v31);
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
          if (v31)
          {
            CFRelease(v31);
            v31 = 0;
          }
        }
      }
    }
  }

  v23 = CFDictionaryGetValue(*v26, key);
  v31 = v23;
  if (v23)
  {
    CFRetain(v23);
    v20 = v31;
    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  if (sgffr_createSampleBufferAtCursorUsingBatch(v19, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, v20, &value) || !value)
  {
    figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_3(&v32);
    v21 = v32;
  }

  else
  {
    CFArrayAppendValue(*(DerivedStorage + 40), value);
    v21 = 0;
    *a12 = value;
    value = 0;
  }

  FigSimpleMutexUnlock();
  if (v20)
  {
    CFRelease(v20);
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v21;
}

uint64_t figSampleGeneratorBatch_Commit(uint64_t a1)
{
  if (!a1)
  {
    figSampleGeneratorBatch_Commit_cold_3(&v6);
    return v6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 32))
  {
    figSampleGeneratorBatch_Commit_cold_1(&v6);
  }

  else
  {
    v3 = *DerivedStorage;
    if (*DerivedStorage)
    {
      if (*(DerivedStorage + 36))
      {
        *(DerivedStorage + 32) = 2;
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        v4 = 0;
      }

      else
      {
        *(DerivedStorage + 32) = 1;
        v6 = a1;
        v7 = 0;
        CFDictionaryApplyFunction(v3, figSampleGeneratorBatch_commitBatchApply, &v6);
        v4 = v7;
      }

      goto LABEL_7;
    }

    figSampleGeneratorBatch_Commit_cold_2(&v6);
  }

  v4 = v6;
LABEL_7:
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t figSampleGeneratorBatch_Cancel(uint64_t a1)
{
  if (!a1)
  {
    figSampleGeneratorBatch_Cancel_cold_1();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 32) == 2)
  {
    v3 = 0;
  }

  else
  {
    *(DerivedStorage + 32) = 4;
    v5 = a1;
    v6 = 0;
    CFDictionaryApplyFunction(*DerivedStorage, figSampleGeneratorBatch_cancelBatchApply, &v5);
    v3 = v6;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t figSampleGeneratorBatch_GetState(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      result = 0;
      *a2 = *(DerivedStorage + 32);
    }

    else
    {
      figSampleGeneratorBatch_GetState_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    figSampleGeneratorBatch_GetState_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t figSampleGeneratorBatch_commitBatchApply(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFSetAddValue(*(DerivedStorage + 24), a2);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v6)
  {
    result = v6(a2);
  }

  else
  {
    result = 4294954514;
  }

  if (!*(a3 + 8))
  {
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t figSampleGeneratorBatch_cancelBatchApply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetVTable() + 16);
  if (*v5 >= 2uLL && (v6 = v5[3]) != 0)
  {
    result = v6(a2);
  }

  else
  {
    result = 4294954514;
  }

  if (!*(a3 + 8))
  {
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t sgffr_initializeSharedMemoryPoolManagement()
{
  result = FigSimpleMutexCreate();
  qword_1EAF18D30 = result;
  byte_1EAF18D40 = 1;
  return result;
}

uint64_t sgffr_expediteAllClientRequestsForScheduledIO(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 32);
  if (v6)
  {

    return v6(a2);
  }

  return result;
}

uint64_t FigStreamingAssetDownloadContentConfigSetAlternateQualifiers(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return 0;
}

uint64_t FigStreamingAssetDownloadContentConfigSetAlternate(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return 0;
}

uint64_t FigStreamingAssetDownloadContentConfigSetMediaSelectionCriteria(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  if (!a2)
  {
    return 0;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  *(a1 + 40) = MutableCopy;
  if (MutableCopy)
  {
    return 0;
  }

  FigStreamingAssetDownloadContentConfigSetMediaSelectionCriteria_cold_1(&v7);
  return v7;
}

uint64_t FigStreamingAssetDownloadContentConfigCreate(uint64_t a1, uint64_t *a2)
{
  dwContentConf_getTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    result = 0;
    *a2 = v4;
  }

  else
  {
    FigStreamingAssetDownloadContentConfigCreate_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t dwContentConf_getTypeID()
{
  v1 = xmmword_1E7481400;
  if (dwContentConf_getTypeID_once != -1)
  {
    dispatch_once_f(&dwContentConf_getTypeID_once, &v1, dwConf_registerClass);
  }

  return dwContentConf_getTypeID_typeID;
}

uint64_t FigStreamingAssetDownloadContentConfigCreateCopy(const __CFAllocator *a1, void *a2, void *a3)
{
  if (a2)
  {
    dwContentConf_getTypeID();
    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      FigStreamingAssetDownloadContentConfigCreateCopy_cold_1(&v12);
      return v12;
    }

    v7 = Instance;
    v8 = a2[3];
    if (v8)
    {
      v8 = CFRetain(v8);
    }

    v7[3] = v8;
    v9 = a2[2];
    if (v9)
    {
      v7[2] = CFArrayCreateCopy(a1, v9);
    }

    v10 = a2[4];
    if (v10)
    {
      v7[4] = CFArrayCreateCopy(a1, v10);
    }
  }

  else
  {
    v7 = 0;
  }

  result = 0;
  *a3 = v7;
  return result;
}

uint64_t FigStreamingAssetDownloadConfigGetPrimaryContentConfig(uint64_t a1, __CFString *a2)
{
  if (a2 == @"kFigEnvironmentalCondition_DefaultKey")
  {
    v3 = 24;
  }

  else
  {
    if (a2 != @"kFigEnvironmentalCondition_OnExpensiveNetworkKey")
    {
      return 0;
    }

    v3 = 32;
  }

  return *(a1 + v3);
}

uint64_t FigStreamingAssetDownloadConfigSetPrimaryContentConfig(uint64_t a1, CFTypeRef cf, __CFString *a3)
{
  if (a3 == @"kFigEnvironmentalCondition_DefaultKey")
  {
    v5 = 24;
    if (!cf)
    {
LABEL_7:
      v6 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if (a3 != @"kFigEnvironmentalCondition_OnExpensiveNetworkKey")
    {
      return 4294950643;
    }

    v5 = 32;
    if (!cf)
    {
      goto LABEL_7;
    }
  }

  v6 = CFRetain(cf);
LABEL_8:
  result = 0;
  *(a1 + v5) = v6;
  return result;
}

uint64_t FigStreamingAssetDownloadConfigGetAuxConfigs(uint64_t a1, __CFString *a2)
{
  if (a2 == @"kFigEnvironmentalCondition_DefaultKey")
  {
    v3 = 40;
  }

  else
  {
    if (a2 != @"kFigEnvironmentalCondition_OnExpensiveNetworkKey")
    {
      return 0;
    }

    v3 = 48;
  }

  return *(a1 + v3);
}

uint64_t FigStreamingAssetDownloadConfigAddAuxConfig(uint64_t a1, void *value, __CFString *a3)
{
  if (a3 == @"kFigEnvironmentalCondition_DefaultKey")
  {
    Mutable = *(a1 + 40);
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      *(a1 + 40) = Mutable;
      if (!Mutable)
      {
        FigStreamingAssetDownloadConfigAddAuxConfig_cold_2(&v8);
        return v8;
      }
    }
  }

  else
  {
    if (a3 != @"kFigEnvironmentalCondition_OnExpensiveNetworkKey")
    {
      return 4294950643;
    }

    Mutable = *(a1 + 48);
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      *(a1 + 48) = Mutable;
      if (!Mutable)
      {
        FigStreamingAssetDownloadConfigAddAuxConfig_cold_1(&v7);
        return v7;
      }
    }
  }

  CFArrayAppendValue(Mutable, value);
  return 0;
}

void *FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers(uint64_t a1, uint64_t a2)
{
  v4 = downloadConfig_copyPrimaryWithOnlyQualifiers(a1, a2, @"kFigEnvironmentalCondition_DefaultKey");
  if (v4)
  {
    v7 = v4;
    FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers_cold_1();
  }

  else
  {
    v5 = downloadConfig_copyPrimaryWithOnlyQualifiers(a1, a2, @"kFigEnvironmentalCondition_OnExpensiveNetworkKey");
    if (v5)
    {
      v7 = v5;
      FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers_cold_2();
    }

    else
    {
      v6 = downloadConfig_copyAuxConfigsWithOnlyQualifiers(a1, a2, @"kFigEnvironmentalCondition_DefaultKey");
      if (v6)
      {
        v7 = v6;
        FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers_cold_3();
      }

      else
      {
        v7 = downloadConfig_copyAuxConfigsWithOnlyQualifiers(a1, a2, @"kFigEnvironmentalCondition_OnExpensiveNetworkKey");
        if (v7)
        {
          FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers_cold_4();
        }
      }
    }
  }

  return v7;
}

uint64_t downloadConfig_copyPrimaryWithOnlyQualifiers(uint64_t a1, uint64_t a2, __CFString *a3)
{
  cf = 0;
  if (!a1)
  {
    goto LABEL_7;
  }

  if (a3 == @"kFigEnvironmentalCondition_DefaultKey")
  {
    v5 = 24;
  }

  else
  {
    if (a3 != @"kFigEnvironmentalCondition_OnExpensiveNetworkKey")
    {
      goto LABEL_7;
    }

    v5 = 32;
  }

  v6 = *(a1 + v5);
  if (v6)
  {
    v12 = downloadContentConfig_createCopyWithOnlyQualifiers(v6, &cf);
    if (v12)
    {
      v9 = v12;
      downloadConfig_copyPrimaryWithOnlyQualifiers_cold_1();
      goto LABEL_15;
    }

    v8 = cf;
    if (cf)
    {
LABEL_9:
      if (a3 == @"kFigEnvironmentalCondition_DefaultKey")
      {
        v10 = 24;
        if (!v8)
        {
LABEL_14:
          v9 = 0;
          *(a2 + v10) = v8;
          goto LABEL_15;
        }
      }

      else
      {
        if (a3 != @"kFigEnvironmentalCondition_OnExpensiveNetworkKey")
        {
          v9 = 4294950643;
          goto LABEL_15;
        }

        v10 = 32;
        if (!v8)
        {
          goto LABEL_14;
        }
      }

      v8 = CFRetain(v8);
      goto LABEL_14;
    }
  }

LABEL_7:
  v7 = FigStreamingAssetDownloadContentConfigCreate(*MEMORY[0x1E695E480], &cf);
  if (!v7)
  {
    v8 = cf;
    goto LABEL_9;
  }

  v9 = v7;
  downloadConfig_copyPrimaryWithOnlyQualifiers_cold_2();
LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t FigStreamingAssetDownloadConfigApplyMediaSelectionCriteriaToContentConfigs(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    FigStreamingAssetDownloadContentConfigSetMediaSelectionCriteria(v4, a2);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    FigStreamingAssetDownloadContentConfigSetMediaSelectionCriteria(v5, a2);
  }

  v6 = *(a1 + 40);
  if (v6 && CFArrayGetCount(v6) >= 1)
  {
    v7 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v7);
      FigStreamingAssetDownloadContentConfigSetMediaSelectionCriteria(ValueAtIndex, a2);
      ++v7;
    }

    while (v7 < CFArrayGetCount(*(a1 + 40)));
  }

  v9 = *(a1 + 48);
  if (v9 && CFArrayGetCount(v9) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = CFArrayGetValueAtIndex(*(a1 + 48), v10);
      FigStreamingAssetDownloadContentConfigSetMediaSelectionCriteria(v11, a2);
      ++v10;
    }

    while (v10 < CFArrayGetCount(*(a1 + 48)));
  }

  return 0;
}

CFDictionaryRef FigStreamingAssetDownloadConfigCopyMediaSelectionCriteriaForInterstitials(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    return CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v1);
  }

  else
  {
    return 0;
  }
}

uint64_t FigStreamingAssetDownloadConfigSetMediaSelectionCriteriaForInterstitials(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 120);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 120) = 0;
  }

  if (!a2)
  {
    return 0;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  *(a1 + 120) = MutableCopy;
  if (MutableCopy)
  {
    return 0;
  }

  FigStreamingAssetDownloadConfigSetMediaSelectionCriteriaForInterstitials_cold_1(&v7);
  return v7;
}

uint64_t FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForPrimary(uint64_t a1, __CFArray **a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v5 = Mutable;
    if (*(a1 + 24))
    {
      CFArrayAppendValue(Mutable, @"kFigEnvironmentalCondition_DefaultKey");
    }

    if (*(a1 + 32))
    {
      CFArrayAppendValue(v5, @"kFigEnvironmentalCondition_OnExpensiveNetworkKey");
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForPrimary_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForAux(uint64_t a1, __CFArray **a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = *(a1 + 40);
    if (v6 && CFArrayGetCount(v6) >= 1)
    {
      CFArrayAppendValue(v5, @"kFigEnvironmentalCondition_DefaultKey");
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      if (CFArrayGetCount(v7) >= 1)
      {
        CFArrayAppendValue(v5, @"kFigEnvironmentalCondition_OnExpensiveNetworkKey");
      }
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForAux_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t FigStreamingAssetDownloadConfigCreate(uint64_t a1, uint64_t *a2)
{
  dwconf_getTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    result = 0;
    *a2 = v4;
  }

  else
  {
    FigStreamingAssetDownloadConfigCreate_cold_1(&v6);
    return v6;
  }

  return result;
}

CFTypeRef FigStreamingAssetDownloadConfigCopyAssetNameAndImage(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  *a2 = v6;
  result = *(a1 + 64);
  if (result)
  {
    result = CFRetain(result);
  }

  *a3 = result;
  return result;
}

CFTypeRef FigStreamingAssetDownloadConfigSetAssetNameAndImage(uint64_t a1, CFTypeRef cf, const void *a3)
{
  if (cf)
  {
    v5 = CFRetain(cf);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 56) = v5;
  if (a3)
  {
    result = CFRetain(a3);
  }

  else
  {
    result = 0;
  }

  *(a1 + 64) = result;
  return result;
}

__n128 FigStreamingAssetDownloadConfigGetTimeRange@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 88);
  *a2 = *(a1 + 72);
  *(a2 + 16) = v2;
  result = *(a1 + 104);
  *(a2 + 32) = result;
  return result;
}

__n128 FigStreamingAssetDownloadConfigSetTimeRange(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 104) = *(a2 + 32);
  *(a1 + 88) = v3;
  *(a1 + 72) = result;
  return result;
}

uint64_t dwconf_getTypeID()
{
  v1 = xmmword_1E7481410;
  if (dwconf_getTypeID_once != -1)
  {
    dispatch_once_f(&dwconf_getTypeID_once, &v1, dwConf_registerClass);
  }

  return dwconf_getTypeID_typeID;
}

uint64_t FigStreamingAssetDownloadConfigCreateCopy(const __CFAllocator *a1, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    dwconf_getTypeID();
    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      FigStreamingAssetDownloadConfigCreateCopy_cold_1(&v15);
      return v15;
    }

    v7 = Instance;
    v8 = *(a2 + 64);
    if (v8)
    {
      *(Instance + 64) = CFDataCreateCopy(a1, v8);
    }

    v9 = *(a2 + 56);
    if (v9)
    {
      *(v7 + 56) = CFStringCreateCopy(a1, v9);
    }

    v10 = *(a2 + 40);
    if (v10)
    {
      *(v7 + 40) = CFArrayCreateMutableCopy(a1, 0, v10);
    }

    v11 = *(a2 + 48);
    if (v11)
    {
      *(v7 + 48) = CFArrayCreateMutableCopy(a1, 0, v11);
    }

    *(v7 + 16) = *(a2 + 16);
    v12 = *(a2 + 72);
    v13 = *(a2 + 88);
    *(v7 + 104) = *(a2 + 104);
    *(v7 + 88) = v13;
    *(v7 + 72) = v12;
    FigStreamingAssetDownloadContentConfigCreateCopy(a1, *(a2 + 24), (v7 + 24));
    FigStreamingAssetDownloadContentConfigCreateCopy(a1, *(a2 + 32), (v7 + 32));
  }

  else
  {
    v7 = 0;
  }

  result = 0;
  *a3 = v7;
  return result;
}

void dwContentConf_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t dwConf_registerClass(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

uint64_t downloadConfig_serializeAuxContentConfigsGuts(const __CFArray *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v7 = Count;
      empty = 0;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
        v11 = downloadContentConfig_copySerializedRepresentation(ValueAtIndex, a2);
        if (v11)
        {
          v12 = v11;
          if (!empty)
          {
            empty = xpc_array_create_empty();
            if (!empty)
            {
              downloadConfig_serializeAuxContentConfigsGuts_cold_1(&v15);
              v13 = v15;
              goto LABEL_12;
            }
          }

          xpc_array_append_value(empty, v12);
          xpc_release(v12);
        }

        if (v7 == ++v9)
        {
          goto LABEL_11;
        }
      }
    }
  }

  empty = 0;
LABEL_11:
  v13 = 0;
  *a3 = empty;
LABEL_12:
  FigXPCRelease();
  FigXPCRelease();
  return v13;
}

uint64_t downloadConfig_deserializeAuxContentConfigsGuts(void *a1, uint64_t a2, __CFArray **a3)
{
  count = xpc_array_get_count(a1);
  if (count >= 1)
  {
    v7 = count;
    Mutable = 0;
    v9 = 0;
    v10 = *MEMORY[0x1E695E480];
    v11 = MEMORY[0x1E695E9C0];
    while (1)
    {
      value = xpc_array_get_value(a1, v9);
      v13 = downloadContentConfig_deserializeAndCopyContentConfig(value, a2);
      if (v13)
      {
        v14 = v13;
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(v10, 0, v11);
          if (!Mutable)
          {
            downloadConfig_deserializeAuxContentConfigsGuts_cold_1(v14, &v16);
            return v16;
          }
        }

        CFArrayAppendValue(Mutable, v14);
        CFRelease(v14);
      }

      if (v7 == ++v9)
      {
        goto LABEL_10;
      }
    }
  }

  Mutable = 0;
LABEL_10:
  result = 0;
  *a3 = Mutable;
  return result;
}

void dwConf_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[8];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[15];
  if (v8)
  {

    CFRelease(v8);
  }
}

void OUTLINED_FUNCTION_4_30(uint64_t a1, const char *a2)
{

  xpc_dictionary_set_value(v2, a2, v3);
}

uint64_t OUTLINED_FUNCTION_5_26(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  return [v2 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t FigVideoCompositorCreatevImage(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  FigVideoCompositorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    return v4;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    value = 0;
    v11 = *"v024f024ARGB ";
    qmemcpy(v12, "024x02fx024p02fpr46l", sizeof(v12));
    DesiredSourcePixelBufferAttributes = FigVideoCompositorCreateDesiredSourcePixelBufferAttributes(&v11, 9, &value);
    if (!DesiredSourcePixelBufferAttributes)
    {
      CFDictionarySetValue(v6, @"SourcePixelBufferAttributes", value);
    }

    if (value)
    {
      CFRelease(value);
    }

    if (DesiredSourcePixelBufferAttributes)
    {
      CFRelease(v6);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = v6;
      *(DerivedStorage + 56) = 0u;
      *(DerivedStorage + 72) = 0u;
      *(DerivedStorage + 88) = 0u;
      *(DerivedStorage + 104) = 0u;
      *(DerivedStorage + 120) = 0u;
      *(DerivedStorage + 136) = 0u;
      *(DerivedStorage + 152) = 0u;
      *(DerivedStorage + 168) = 0u;
      *a3 = 0;
    }
  }

  else
  {
    FigVideoCompositorCreatevImage_cold_1(&v11);
    return v11;
  }

  return DesiredSourcePixelBufferAttributes;
}

void vivc_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  via_cleanupVImageAdaptor(DerivedStorage + 56);
  via_cleanupVImageAdaptor(DerivedStorage + 120);
  v3 = *(DerivedStorage + 48);

  free(v3);
}

__CFString *vivc_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @"<FigVideoCompositor_vImage %p>\n", a1);
  CFDictionaryApplyFunction(*DerivedStorage, vivc_appendDebugDescriptionOfProperty, Mutable);
  return Mutable;
}

uint64_t vivc_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    vivc_CopyProperty_cold_1(&v13);
    return v13;
  }

  v7 = DerivedStorage;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      UInt32 = FigCFNumberCreateUInt32();
    }

    else
    {
      if (CFEqual(a2, @"SupportsSpatialSourceBuffers"))
      {
        result = 0;
        v9 = MEMORY[0x1E695E4C0];
        goto LABEL_4;
      }

      Value = CFDictionaryGetValue(*v7, a2);
      if (!Value)
      {
        v10 = 0;
        goto LABEL_8;
      }

      UInt32 = CFRetain(Value);
    }

    v10 = UInt32;
LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  result = 0;
  v9 = MEMORY[0x1E695E4D0];
LABEL_4:
  v10 = *v9;
LABEL_9:
  *a4 = v10;
  return result;
}

uint64_t vivc_SetProperty(const void *a1, const void *a2, const void *a3)
{
  v13[5] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2)
  {
    vivc_SetProperty_cold_2(v13);
    return LODWORD(v13[0]);
  }

  if (!a3)
  {
    vivc_SetProperty_cold_1(v13);
    return LODWORD(v13[0]);
  }

  v7 = DerivedStorage;
  v8 = 0;
  v13[0] = @"RenderDimensions";
  v13[1] = @"RenderPixelAspectRatio";
  v13[2] = @"RenderEdgeProcessingPixels";
  v13[3] = @"DestinationPixelBufferDesiredAttributes";
  v13[4] = @"RenderScale";
  while (!FigCFEqual())
  {
    v8 += 8;
    if (v8 == 40)
    {
      goto LABEL_12;
    }
  }

  CFGetAllocator(a1);
  vivc_CopyProperty(a1, a2, v9, &cf);
  if (!FigCFEqual())
  {
    v10 = *(v7 + 8);
    if (v10)
    {
      CFRelease(v10);
      *(v7 + 8) = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_12:
  CFDictionarySetValue(*v7, a2, a3);
  return 0;
}

uint64_t vivc_SetOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 24) = a2;
  *(DerivedStorage + 32) = a3;
  return 0;
}

uint64_t vifa_vImageFill(_DWORD *a1, vImage_Buffer *dest, uint64_t a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    vifa_vImageFill_cold_2(v6);
    return LODWORD(v6[0]);
  }

  if (!a3)
  {
    vifa_vImageFill_cold_1(v6);
    return LODWORD(v6[0]);
  }

  if (*a1 == 16)
  {
    v5 = 0;
    v6[0] = 0;
    do
    {
      *(v6 + a1[v5 + 1]) = (*(a3 + v5 * 4) * 65535.0);
      ++v5;
    }

    while (v5 != 4);
    return vImageBufferFill_ARGB16U(dest, v6, 0);
  }

  else if (*a1 == 8)
  {
    v3 = 0;
    LODWORD(v6[0]) = 0;
    do
    {
      *(v6 + a1[v3 + 1]) = (*(a3 + v3 * 4) * 255.0);
      ++v3;
    }

    while (v3 != 4);
    return vImageBufferFill_ARGB8888(dest, v6, 0);
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t vifa_vImageAffineWarpCG(_DWORD *a1, vImage_Buffer *src, vImage_Buffer *dest, void *tempBuffer, float64x2_t *a5, uint64_t a6, vImage_Flags flags)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    vifa_vImageAffineWarpCG_cold_2(backColor);
    return *backColor;
  }

  if (!a6)
  {
    vifa_vImageAffineWarpCG_cold_1(backColor);
    return *backColor;
  }

  *&v10.a = vcvt_hight_f32_f64(vcvt_f32_f64(*a5), a5[1]);
  *&v10.tx = vcvt_f32_f64(a5[2]);
  if (*a1 == 16)
  {
    v9 = 0;
    *backColor = 0;
    do
    {
      *&backColor[2 * a1[v9 + 1]] = (*(a6 + v9 * 4) * 65535.0);
      ++v9;
    }

    while (v9 != 4);
    return vImageAffineWarp_ARGB16U(src, dest, tempBuffer, &v10, backColor, flags);
  }

  else if (*a1 == 8)
  {
    v7 = 0;
    *backColor = 0;
    do
    {
      backColor[a1[v7 + 1]] = (*(a6 + v7 * 4) * 255.0);
      ++v7;
    }

    while (v7 != 4);
    return vImageAffineWarp_ARGB8888(src, dest, tempBuffer, &v10, backColor, flags);
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

CGAffineTransform *OUTLINED_FUNCTION_2_39(__n128 a1)
{
  *&STACK[0x230] = a1;

  return CGAffineTransformConcat(&STACK[0x270], &STACK[0x240], &STACK[0x210]);
}

__n128 OUTLINED_FUNCTION_3_28()
{
  result = *&STACK[0x270];
  v1 = *&STACK[0x280];
  v2 = *&STACK[0x290];
  *&STACK[0x240] = *&STACK[0x270];
  *&STACK[0x250] = v1;
  *&STACK[0x260] = v2;
  return result;
}

uint64_t FigStreamingAssetMetadataDownloaderConfigureMediaSelectionsForAlternate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v9 = 0;
  dispatch_sync_f(*DerivedStorage, v8, metadw_configureMediaSelectionsForAlternateDispatch);
  return v9;
}

void metadw_configureMediaSelectionsForAlternateDispatch(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 240))
  {
    metadw_configureMediaSelectionsForAlternateDispatch_cold_1(&v9);
LABEL_16:
    v7 = v9;
    goto LABEL_9;
  }

  if (*(DerivedStorage + 256))
  {
    metadw_configureMediaSelectionsForAlternateDispatch_cold_2(&v9);
    goto LABEL_16;
  }

  if (!v2)
  {
    metadw_configureMediaSelectionsForAlternateDispatch_cold_5(&v9);
    goto LABEL_16;
  }

  if (!v3)
  {
    metadw_configureMediaSelectionsForAlternateDispatch_cold_4(&v9);
    goto LABEL_16;
  }

  v5 = FigMediaSelectionArrayCopyDescription(*(DerivedStorage + 8), v3);
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0xE00401043B4FBuLL);
  if (v6)
  {
    v6[2] = CFRetain(v2);
    v6[3] = CFRetain(v3);
    goto LABEL_7;
  }

  if (metadw_configureMediaSelectionsForAlternateDispatch_cold_3(&v9))
  {
LABEL_7:
    v7 = 0;
    *v6 = 0;
    v8 = *(DerivedStorage + 296);
    v6[1] = v8;
    *v8 = v6;
    *(DerivedStorage + 296) = v6;
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = v9;
  if (v5)
  {
LABEL_8:
    CFRelease(v5);
  }

LABEL_9:
  if (v7)
  {
    metadw_transitionToTerminalStateWithOSStatus(*a1, v7);
  }

  *(a1 + 24) = v7;
}

uint64_t FigStreamingAssetMetadataDownloaderCreate(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, NSObject *a6, void *a7, void *a8)
{
  v35 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2 || (v13 = CFGetTypeID(a2), v13 != FigAssetGetTypeID()))
  {
    FigStreamingAssetMetadataDownloaderCreate_cold_9(v34);
    return v34[0];
  }

  if (a3)
  {
    v14 = CFGetTypeID(a3);
    if (v14 != CFDictionaryGetTypeID())
    {
      FigStreamingAssetMetadataDownloaderCreate_cold_1(v34);
      return v34[0];
    }
  }

  if (!a8)
  {
    FigStreamingAssetMetadataDownloaderCreate_cold_8(v34);
    return v34[0];
  }

  FigAssetDownloaderGetClassID();
  v15 = CMDerivedObjectCreate();
  if (v15)
  {
    return v15;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v17 = CFRetain(a1);
  }

  else
  {
    v17 = 0;
  }

  *(DerivedStorage + 8) = v17;
  *(DerivedStorage + 16) = CFRetain(a2);
  if (FigIsItOKToLogURLs())
  {
    v18 = FPSupport_GetAssetDoNotLogURLs(a2) == 0;
  }

  else
  {
    v18 = 0;
  }

  *(DerivedStorage + 218) = v18;
  if (a5)
  {
    if (a6)
    {
      if (a7)
      {
        dispatch_retain(a6);
        *(DerivedStorage + 136) = a6;
        __copy_assignment_8_8_t0w8_pa0_62591_8_pa0_48202_16_pa0_13082_24_pa0_11046_32_pa0_49729_40_pa0_62126_48_pa0_6100_56_pa0_11999_64_pa0_10804_72_pa0_24756_80_pa0_9655_88((DerivedStorage + 40), a7);
        v19 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        *(DerivedStorage + 32) = v19;
        if (!v19)
        {
          FigStreamingAssetMetadataDownloaderCreate_cold_7(v34);
          return v34[0];
        }
      }
    }
  }

  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"AssetDownloaderCreateOption_DebugIdentifier");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(DerivedStorage + 152) = Value;
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    v21 = a4;
    if (!a4)
    {
      FigCFDictionaryGetBooleanIfPresent();
      goto LABEL_24;
    }
  }

  else
  {
    v21 = a4;
    if (!a4)
    {
      goto LABEL_24;
    }
  }

  *(DerivedStorage + 160) = FigStreamingAssetDownloadConfigGetDownloadsInterstitialAssets(v21);
LABEL_24:
  v22 = dispatch_queue_create("com.apple.coremedia.streamingassetmetadatadownloader.state", 0);
  *DerivedStorage = v22;
  if (!v22)
  {
    FigStreamingAssetMetadataDownloaderCreate_cold_6(v34);
    return v34[0];
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, 0, 0);
  *(DerivedStorage + 336) = Mutable;
  if (!Mutable)
  {
    FigStreamingAssetMetadataDownloaderCreate_cold_5(v34);
    return v34[0];
  }

  v24 = CFDictionaryCreateMutable(a1, 0, 0, 0);
  *(DerivedStorage + 344) = v24;
  if (!v24)
  {
    FigStreamingAssetMetadataDownloaderCreate_cold_4(v34);
    return v34[0];
  }

  v25 = CFSetCreateMutable(a1, 0, MEMORY[0x1E695E9F8]);
  *(DerivedStorage + 328) = v25;
  if (!v25)
  {
    FigStreamingAssetMetadataDownloaderCreate_cold_3(v34);
    return v34[0];
  }

  v26 = CFSetCreateMutable(a1, 0, MEMORY[0x1E695E9F8]);
  *(DerivedStorage + 320) = v26;
  if (!v26)
  {
    FigStreamingAssetMetadataDownloaderCreate_cold_2(v34);
    return v34[0];
  }

  *(DerivedStorage + 288) = 0;
  *(DerivedStorage + 296) = DerivedStorage + 288;
  *(DerivedStorage + 304) = 0;
  *(DerivedStorage + 312) = DerivedStorage + 304;
  v15 = FigRetainProxyCreate();
  if (v15)
  {
    return v15;
  }

  v27 = FigCFCopyCompactDescription();
  if (dword_1EAF16DD8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v29 = 0;
  *a8 = 0;
  if (v27)
  {
    CFRelease(v27);
  }

  return v29;
}

void metadw_transitionToTerminalStateWithOSStatus(const void *a1, uint64_t a2)
{
  cf = 0;
  FigCreateErrorForOSStatus(a2, &cf);
  metadw_transitionToTerminalState(a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void metadw_cancelResourceRequestForMetadataItems(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  for (i = *(DerivedStorage + 304); i; i = *i)
  {
    if (*(i + 16) != 5)
    {
      shouldRequestBeSentOverHTTP = metadw_shouldRequestBeSentOverHTTP(a1, i);
      CMBaseObjectGetDerivedStorage();
      if (shouldRequestBeSentOverHTTP)
      {
        if (*(i + 88))
        {
          if (dword_1EAF16DD8)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          metadw_clearHTTPRequestState(a1, i);
        }
      }

      else if (*(i + 104))
      {
        if (dword_1EAF16DD8)
        {
          v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        metadw_clearCustomURLRequestState(a1, i);
      }
    }
  }

  CFDictionaryRemoveAllValues(*(DerivedStorage + 336));
  CFDictionaryRemoveAllValues(*(DerivedStorage + 344));
  *(DerivedStorage + 352) = 0;
  *(DerivedStorage + 360) = 0;
}

BOOL metadw_shouldRequestBeSentOverHTTP(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigCFHTTPIsHTTPBasedURL(*(a2 + 24));
  if (result)
  {
    return *(DerivedStorage + 216) == 0;
  }

  return result;
}

void metadw_clearHTTPRequestState(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(a2 + 88);
  if (v4)
  {
    v5 = DerivedStorage;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v6)
    {
      v6(v4);
    }

    v7 = *(a2 + 88);
    if (v7)
    {
      CFRelease(v7);
      *(a2 + 88) = 0;
    }

    *(a2 + 96) = 0;
    v8 = *(v5 + 336);

    CFDictionaryRemoveValue(v8, 0);
  }
}

void metadw_clearCustomURLRequestState(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(a2 + 104);
  if (v4)
  {
    v5 = DerivedStorage;
    v6 = *(DerivedStorage + 184);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v7)
    {
      v7(v6, v4);
    }

    *(a2 + 104) = 0;
    v8 = *(v5 + 344);

    CFDictionaryRemoveValue(v8, 0);
  }
}

void metadw_sendDownloadFailedCallbackOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 240))
  {
    metadw_sendDownloadFailedCallbackOnCallbackQueue_cold_1();
  }

  else
  {
    v3 = *(DerivedStorage + 56);
    if (v3)
    {
      v3(a1[1], *a1, a1[2]);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t metadw_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4[2] = 0;
  v5 = 0;
  v4[0] = a1;
  v4[1] = 0;
  dispatch_sync_f(*DerivedStorage, v4, metadw_invalidateDispatch);
  return v5;
}

void metadw_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  metadw_invalidateOnQueue(a1);
  v3 = *(DerivedStorage + 152);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 152) = 0;
  }

  v4 = *(DerivedStorage + 400);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 400) = 0;
  }

  v5 = *(DerivedStorage + 232);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 232) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t metadw_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  context[0] = a1;
  context[1] = a2;
  v12 = a3;
  v13 = 0;
  dispatch_sync_f(*DerivedStorage, context, metadw_copyPropertyDispatch);
  result = v13;
  if (!v13)
  {
    *a4 = v11;
  }

  return result;
}

uint64_t metadw_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[3] = 0;
  v9 = 0;
  context[0] = a1;
  context[1] = a2;
  context[2] = a3;
  dispatch_sync_f(*DerivedStorage, context, metadw_setPropertyDispatch);
  return v9;
}

const __CFArray *metadw_copyPropertyDispatch(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 240))
  {
    metadw_copyPropertyDispatch_cold_1(&v7);
    result = 0;
    v6 = v7;
    goto LABEL_10;
  }

  if (!CFEqual(@"AssetDownloaderProperty_InterstitialURLs", v3))
  {
    result = 0;
    v6 = -12784;
    goto LABEL_10;
  }

  result = *(DerivedStorage + 400);
  if (!result)
  {
    goto LABEL_9;
  }

  if (CFArrayGetCount(result) < 1)
  {
    result = 0;
    goto LABEL_9;
  }

  result = CFArrayCreateCopy(v2, *(DerivedStorage + 400));
  if (result)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  metadw_copyPropertyDispatch_cold_2(&v8);
  result = 0;
  v6 = v8;
LABEL_10:
  *(a1 + 32) = v6;
  *(a1 + 16) = result;
  return result;
}

uint64_t metadw_start(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = malloc_type_calloc(1uLL, 0x20uLL, 0x10600405C4CBD68uLL);
  if (v3)
  {
    v4 = v3;
    if (a1)
    {
      v5 = CFRetain(a1);
    }

    else
    {
      v5 = 0;
    }

    *v4 = v5;
    dispatch_async_f(*DerivedStorage, v4, metadw_startDispatch);
    return 0;
  }

  else
  {
    metadw_start_cold_1(&v7);
    return v7;
  }
}

uint64_t metadw_pause(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4[2] = 0;
  v5 = 0;
  v4[0] = a1;
  v4[1] = 0;
  dispatch_sync_f(*DerivedStorage, v4, metadw_pauseDispatch);
  return v5;
}

uint64_t metadw_stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4[2] = 0;
  v5 = 0;
  v4[0] = a1;
  v4[1] = 0;
  dispatch_sync_f(*DerivedStorage, v4, metadw_stopDispatch);
  return v5;
}

uint64_t metadw_createMetadataDownloadItem(uint64_t a1, int a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, void *a8)
{
  v16 = malloc_type_calloc(1uLL, 0x98uLL, 0x10E0040DF620F7DuLL);
  if (v16)
  {
    v17 = v16;
    v16[5] = a1;
    *(v16 + 4) = a2;
    if (a3)
    {
      v18 = CFRetain(a3);
    }

    else
    {
      v18 = 0;
    }

    v17[3] = v18;
    if (a4)
    {
      v19 = CFRetain(a4);
    }

    else
    {
      v19 = 0;
    }

    v17[4] = v19;
    if (a5)
    {
      v20 = CFRetain(a5);
    }

    else
    {
      v20 = 0;
    }

    v17[6] = v20;
    if (a6)
    {
      v21 = CFRetain(a6);
    }

    else
    {
      v21 = 0;
    }

    v17[7] = v21;
    if (a7)
    {
      v22 = CFRetain(a7);
    }

    else
    {
      v22 = 0;
    }

    result = 0;
    v17[8] = v22;
    *a8 = v17;
  }

  else
  {
    metadw_createMetadataDownloadItem_cold_1(&v24);
    return v24;
  }

  return result;
}

uint64_t metadw_createCacheForStream(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  if (*(DerivedStorage + 217))
  {
    PeakBitRate = 0;
  }

  else
  {
    PeakBitRate = FigAlternateGetPeakBitRate(*(*(a2 + 40) + 16));
  }

  v7 = FigCFHTTPCreateURLString(*(a2 + 32));
  if (!v7)
  {
    metadw_createCacheForStream_cold_1(&v15);
    return v15;
  }

  v8 = v7;
  v9 = *(a2 + 16);
  v10 = (v9 - 2);
  if (v10 >= 3)
  {
    v11 = FigSignalErrorAtGM();
  }

  else
  {
    v11 = FigStreamingCacheCreateMediaStream(*(DerivedStorage + 24), v10, v7, *(a2 + 56), PeakBitRate, v9 == 4, &v14);
    if (!v11)
    {
      v12 = FigStreamingCacheMediaStreamSetPersistent(*(DerivedStorage + 24), v14, *MEMORY[0x1E695E4D0]);
      if (!v12)
      {
        *a3 = v14;
      }

      goto LABEL_11;
    }
  }

  v12 = v11;
LABEL_11:
  CFRelease(v8);
  return v12;
}

uint64_t metadw_processCryptKeysFromPlaylist(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v18 = 0;
  if (!a3)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a3); ; i = 0)
  {
    if (v7 >= i)
    {
      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a3, v7);
    AllocatorForMedia = FigGetAllocatorForMedia();
    Identifier = FigContentKeySpecifierGetIdentifier(ValueAtIndex);
    v12 = CFURLCreateWithString(AllocatorForMedia, Identifier, 0);
    if (FigCFHTTPIsHTTPBasedURL(v12) || CFSetContainsValue(*(DerivedStorage + 328), v12))
    {
      if (!v12)
      {
        goto LABEL_9;
      }

LABEL_8:
      CFRelease(v12);
      goto LABEL_9;
    }

    ResourceRequestForMetadataItem = metadw_createMetadataDownloadItem(*(a2 + 40), 5, v12, 0, 0, 0, ValueAtIndex, &v18);
    if (ResourceRequestForMetadataItem)
    {
      break;
    }

    v14 = v18;
    ResourceRequestForMetadataItem = metadw_createResourceRequestForMetadataItem(a1, v18);
    if (ResourceRequestForMetadataItem)
    {
      break;
    }

    CFSetAddValue(*(DerivedStorage + 328), v12);
    v15 = *(DerivedStorage + 312);
    *v14 = 0;
    v14[1] = v15;
    *v15 = v14;
    *(DerivedStorage + 312) = v14;
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_9:
    ++v7;
    if (a3)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  v16 = ResourceRequestForMetadataItem;
  if (v12)
  {
    CFRelease(v12);
  }

  free(v18);
  return v16;
}

void metadw_appendUniqueInterstitialURL(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigCFArrayContainsValue())
  {
    v4 = *(DerivedStorage + 400);

    CFArrayAppendValue(v4, a2);
  }
}

void metadw_contentKeyRequestDidFail(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ++*(DerivedStorage + 376);

  metadw_checkIfDownloadIsComplete(a1);
}

void metadw_contentKeyRequestDidUpdateContentKeyBossToNewBoss(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (_os_feature_enabled_impl())
  {
    if (dword_1EAF16DD8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = *(DerivedStorage + 384);
    *(DerivedStorage + 384) = a1;
    if (a1)
    {
      CFRetain(a1);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }
}

void metadw_sendDidFinishLoadingPlaylistsCallbackCallbackOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 240))
  {
    metadw_sendDidFinishLoadingPlaylistsCallbackCallbackOnCallbackQueue_cold_1();
  }

  else
  {
    v3 = *(DerivedStorage + 112);
    if (v3)
    {
      v3(a1[1], *a1);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void metadw_sendDownloadSucceededCallbackOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 240))
  {
    metadw_sendDownloadSucceededCallbackOnCallbackQueue_cold_1();
  }

  else
  {
    v3 = *(DerivedStorage + 48);
    if (v3)
    {
      v3(a1[1], *a1);
    }

    v4 = *(DerivedStorage + 88);
    if (v4)
    {
      v4(a1[1], *a1);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v5 = a1[1];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t metadw_copyMetadataDownloaderFromRetainProxy(uint64_t a1, void *a2)
{
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    metadw_copyMetadataDownloaderFromRetainProxy_cold_1(&v6);
    v4 = v6;
  }

  else
  {
    Owner = FigRetainProxyGetOwner();
    if (Owner)
    {
      Owner = CFRetain(Owner);
    }

    v4 = 0;
    *a2 = Owner;
  }

  FigRetainProxyUnlockMutex();
  return v4;
}

void *OUTLINED_FUNCTION_7_15()
{

  return malloc_type_calloc(1uLL, 0x18uLL, 0xE0040D4EF70FBuLL);
}

void OUTLINED_FUNCTION_15_8()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = (*v0 + 8);
  if (!*v0)
  {
    v4 = v1;
  }

  *v4 = v2;
  *v2 = v3;
}

void OUTLINED_FUNCTION_29_5()
{
  ++*(v1 + 360);

  metadw_checkIfDownloadIsComplete(v0);
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo(int a1, unsigned int a2, signed int a3, unsigned int a4, const __CFData *a5, void *a6, unint64_t a7, CMBlockBufferRef *a8)
{
  v51 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  blockBufferOut = 0;
  v15 = CMBlockBufferCreateEmpty(0, 0x20u, 1u, &blockBufferOut);
  if (v15)
  {
    goto LABEL_83;
  }

  v15 = FigAtomWriterInitWithBlockBuffer();
  if (v15)
  {
    goto LABEL_83;
  }

  v16 = FigAtomWriterBeginAtom();
  if (v16)
  {
    appended = v16;
    goto LABEL_86;
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  LODWORD(v38) = 0;
  v17 = FigAtomWriterInitWithParent();
  if (v17)
  {
    goto LABEL_82;
  }

  v17 = FigAtomWriterBeginAtom();
  if (v17)
  {
    goto LABEL_82;
  }

  LODWORD(v38) = bswap32(a2);
  appended = FigAtomWriterAppendData();
  FigAtomWriterEndAtom();
  if (appended)
  {
LABEL_86:
    FigAtomWriterEndAtom();
    goto LABEL_87;
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  DWORD2(v38) = 0;
  *&v38 = 0;
  v48 = 0;
  if (EC_GetEncryptionScheme(a6, &v48))
  {
    hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_1(&v49);
LABEL_93:
    appended = v49;
    goto LABEL_19;
  }

  if (!v48)
  {
    hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_3(&v49);
    goto LABEL_93;
  }

  if (v48 >= 4)
  {
    hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_2(&v49);
    goto LABEL_93;
  }

  v17 = FigAtomWriterInitWithParent();
  if (v17 || (v17 = FigAtomWriterBeginAtom(), v17))
  {
LABEL_82:
    appended = v17;
    FigAtomWriterEndAtom();
    goto LABEL_86;
  }

  if (v48 == 1)
  {
    v19 = 845374051;
  }

  else
  {
    v19 = 1935893091;
  }

  if (v48 == 3)
  {
    v20 = 1668179299;
  }

  else
  {
    v20 = v19;
  }

  LODWORD(v38) = 0;
  *(&v38 + 4) = v20 | 0x10000000000;
  appended = FigAtomWriterAppendData();
LABEL_19:
  FigAtomWriterEndAtom();
  if (appended)
  {
    goto LABEL_86;
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v37 = 0;
  if (EC_GetEncryptionScheme(a6, &v37))
  {
    hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_4(&v44);
LABEL_96:
    appended = v44;
    goto LABEL_65;
  }

  if (!v37)
  {
    hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_15(&v44);
    goto LABEL_96;
  }

  if (v37 >= 4)
  {
    hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_14(&v44);
    goto LABEL_96;
  }

  v21 = FigAtomWriterInitWithParent();
  if (!v21)
  {
    v21 = FigAtomWriterBeginAtom();
    if (!v21)
    {
      if (v37 == 1)
      {
        if (a1 != 1986618469)
        {
          appended = 0;
          goto LABEL_65;
        }

        v47 = 0;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        LODWORD(v50) = 0;
        v49 = 0;
        v22 = FigAtomWriterInitWithParent();
        if (v22)
        {
          goto LABEL_63;
        }

        v22 = FigAtomWriterBeginAtom();
        if (v22)
        {
          goto LABEL_63;
        }

        if (a3 <= 0)
        {
          hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_13(&v48);
        }

        else if ((a4 & 0x80000000) != 0)
        {
          hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_12(&v48);
        }

        else
        {
          if (a4 + a3 == 10)
          {
            LODWORD(v49) = 0;
            HIDWORD(v49) = bswap32(a3);
            LODWORD(v50) = bswap32(a4);
            goto LABEL_62;
          }

          hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_11(&v48);
        }

LABEL_81:
        appended = v48;
        goto LABEL_64;
      }

      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      v49 = 0;
      v50 = 0uLL;
      if (a5)
      {
        Length = CFDataGetLength(a5);
      }

      else
      {
        Length = 0;
      }

      v43 = Length;
      v42 = 0;
      if (a3 >= 0x10)
      {
        hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_10(&v48);
        goto LABEL_81;
      }

      if (a4 >= 0x10)
      {
        hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_9(&v48);
        goto LABEL_81;
      }

      if (EC_GetEncryptionScheme(a6, &v42))
      {
        hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_5(&v48);
        goto LABEL_81;
      }

      if (!v42)
      {
        hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_8(&v48);
        goto LABEL_81;
      }

      v22 = FigAtomWriterInitWithParent();
      if (v22)
      {
        goto LABEL_63;
      }

      v22 = FigAtomWriterBeginAtom();
      if (v22)
      {
        goto LABEL_63;
      }

      LODWORD(v49) = v42 != 3;
      if (v42 != 3)
      {
        BYTE5(v49) = a4 | (16 * a3);
        HIWORD(v49) = 1;
        LOBYTE(v50) = 0;
        goto LABEL_55;
      }

      if (a4 | a3)
      {
        hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_6(&v48);
        goto LABEL_81;
      }

      *(&v49 + 5) = 256;
      if (EC_HasPlayReadyInfo(a6))
      {
        PlayReadyKeyIdentifier = EC_GetPlayReadyKeyIdentifier(a6);
        if (!PlayReadyKeyIdentifier)
        {
LABEL_80:
          hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_7(&v48);
          goto LABEL_81;
        }
      }

      else if (EC_HasWidevineInfo(a6))
      {
        PlayReadyKeyIdentifier = EC_GetWidevineKeyIdentifier(a6);
        if (!PlayReadyKeyIdentifier)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (!EC_HasLegacyConfigInfo(a6))
        {
          goto LABEL_80;
        }

        PlayReadyKeyIdentifier = EC_GetLegacyConfigKeyIdentifier(a6);
        if (!PlayReadyKeyIdentifier)
        {
          goto LABEL_80;
        }
      }

      HIBYTE(v49) = 8;
      v50 = *CFDataGetBytePtr(PlayReadyKeyIdentifier);
LABEL_55:
      appended = FigAtomWriterAppendData();
      if (appended || BYTE6(v49) != 1 || HIBYTE(v49))
      {
        goto LABEL_64;
      }

      if (Length != 8 && Length != 16)
      {
        v22 = FigSignalErrorAtGM();
        goto LABEL_63;
      }

      v22 = FigAtomWriterAppendData();
      if (v22)
      {
LABEL_63:
        appended = v22;
LABEL_64:
        FigAtomWriterEndAtom();
        goto LABEL_65;
      }

      CFDataGetBytePtr(a5);
LABEL_62:
      v22 = FigAtomWriterAppendData();
      goto LABEL_63;
    }
  }

  appended = v21;
LABEL_65:
  FigAtomWriterEndAtom();
  FigAtomWriterEndAtom();
  if (appended)
  {
    goto LABEL_87;
  }

  if (!a7 || *(&v34 + 1) == a7)
  {
    goto LABEL_77;
  }

  if (*(&v35 + 1) + 8 > a7)
  {
    hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_19(&v44);
    appended = v44;
    goto LABEL_87;
  }

  v15 = FigAtomWriterInitWithBlockBuffer();
  if (v15)
  {
LABEL_83:
    appended = v15;
    goto LABEL_87;
  }

  v25 = a7 - *(&v34 + 1);
  v26 = a7 - *(&v34 + 1) >= 7;
  v27 = a7 - *(&v34 + 1) - 7;
  if (v27 == 0 || !v26)
  {
    hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_18(&v44);
LABEL_104:
    v29 = 0;
    goto LABEL_107;
  }

  if (v25 >= 0x7D1)
  {
    hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_17(&v44);
    goto LABEL_104;
  }

  v28 = FigAtomWriterBeginAtom();
  if (v28)
  {
    appended = v28;
    v29 = 0;
    goto LABEL_76;
  }

  v29 = malloc_type_calloc(1uLL, v27, 0x8412AC64uLL);
  if (v29)
  {
    FigAtomWriterAppendData();
    appended = 0;
    goto LABEL_76;
  }

  hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_16(&v44);
LABEL_107:
  appended = v44;
LABEL_76:
  free(v29);
  FigAtomWriterEndAtom();
  if (!appended)
  {
LABEL_77:
    appended = 0;
    *a8 = blockBufferOut;
    return appended;
  }

LABEL_87:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return appended;
}

uint64_t FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV(const opaqueCMFormatDescription *a1, int *a2, _DWORD *a3, _DWORD *a4, _OWORD *a5, void *a6)
{
  MediaType = CMFormatDescriptionGetMediaType(a1);
  cf = 0;
  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (!Extensions)
  {
    FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_5(&v31);
    goto LABEL_31;
  }

  Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E69600A0]);
  if (!Value)
  {
    FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_4(&v31);
    goto LABEL_31;
  }

  v14 = CFDictionaryGetValue(Value, @"sinf");
  if (!v14)
  {
    FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_3(&v31);
    goto LABEL_31;
  }

  v15 = v14;
  v16 = CFGetTypeID(v14);
  if (v16 != CFArrayGetTypeID())
  {
    v26 = CFGetTypeID(v15);
    if (v26 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v15);
      Length = CFDataGetLength(v15);
      v22 = FigParseHLSfMP4SecurityInfoAndCopyIV(MediaType, BytePtr, Length, a2, a3, a4, a5, &cf);
      if (v22)
      {
        v23 = cf;
        if (!cf)
        {
          return v22;
        }

        goto LABEL_20;
      }

      goto LABEL_13;
    }

    FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_1(&v31);
LABEL_31:
    v22 = v31;
    goto LABEL_13;
  }

  if (CFArrayGetCount(v15) >= 1)
  {
    v17 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v15, v17);
      v19 = CFGetTypeID(ValueAtIndex);
      if (v19 != CFDataGetTypeID())
      {
        break;
      }

      v20 = CFDataGetBytePtr(ValueAtIndex);
      v21 = CFDataGetLength(ValueAtIndex);
      if (!FigParseHLSfMP4SecurityInfoAndCopyIV(MediaType, v20, v21, a2, a3, a4, a5, &cf))
      {
        v22 = 0;
        goto LABEL_13;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (++v17 >= CFArrayGetCount(v15))
      {
        goto LABEL_12;
      }
    }

    FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_2(&v31);
    goto LABEL_31;
  }

LABEL_12:
  v22 = FigSignalErrorAtGM();
LABEL_13:
  v23 = cf;
  if (a6 && !v22)
  {
    if (cf)
    {
      v24 = CFRetain(cf);
      v23 = cf;
    }

    else
    {
      v24 = 0;
    }

    *a6 = v24;
  }

  if (v23)
  {
LABEL_20:
    CFRelease(v23);
  }

  return v22;
}

uint64_t FigWriteHLSfMP4SecurityInfoPlaceholderIncludingAtomHeader(int a1, uint64_t a2, size_t *a3, size_t a4, uint64_t *a5)
{
  if (a1 == 1936684398 || a1 == 1986618469)
  {
    v6 = 89;
  }

  else
  {
    v6 = 40;
  }

  v7 = v6 + 8;
  if (a3)
  {
    *a3 = v7;
  }

  if (!a5)
  {
    return 0;
  }

  if (v7 > a4)
  {
    FigWriteHLSfMP4SecurityInfoPlaceholderIncludingAtomHeader_cold_1(&v9);
    return v9;
  }

  else
  {
    *a5 = (v7 << 24) | 0x666E733400000000;
    bzero(a5 + 1, v6);
    return 0;
  }
}

uint64_t FigCreateHLSfMP4SecurityInfoPlaceholderData(int a1, uint64_t a2, __CFData **a3)
{
  if (a1 == 1936684398 || a1 == 1986618469)
  {
    v5 = 89;
  }

  else
  {
    v5 = 40;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v5);
  if (Mutable)
  {
    v7 = Mutable;
    CFDataSetLength(Mutable, v5);
    MutableBytePtr = CFDataGetMutableBytePtr(v7);
    bzero(MutableBytePtr, v5);
    result = 0;
    *a3 = v7;
  }

  else
  {
    FigCreateHLSfMP4SecurityInfoPlaceholderData_cold_1(&v10);
    return v10;
  }

  return result;
}

uint64_t videoMentorRegisterCFTypes()
{
  sVideoMentorFrameNodeID = _CFRuntimeRegisterClass();
  result = _CFRuntimeRegisterClass();
  sVideoMentorRefreshGroupID = result;
  return result;
}

void videoMentorDependencyStateReset(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    videoMentorDependencyStateReset_cold_1(v2, a1);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), i);
        CFArrayRemoveAllValues(ValueAtIndex[5]);
        CFArrayRemoveAllValues(ValueAtIndex[6]);
      }
    }

    v9 = *(a1 + 16);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 16) = 0;
    }
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 24) = 0;
  }

  v11 = MEMORY[0x1E6960C70];
  *(a1 + 32) = 0;
  *(a1 + 36) = *v11;
  *(a1 + 52) = *(v11 + 16);
  v12 = *(a1 + 64);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 64) = 0;
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 72) = 0;
  }

  v14 = *(a1 + 80);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 80) = 0;
  }

  *(a1 + 88) = 0;
  v15 = *(a1 + 96);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 96) = 0;
  }
}

const __CFDictionary *videoMentorGetReadPolicyAfterPrerollFromMentorReadPolicy(const __CFDictionary *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, @"ReadPolicy");
    if (result)
    {
      v1 = result;
      if (CFEqual(result, @"Immediate"))
      {
        return 2;
      }

      else if (CFEqual(v1, @"Scheduled"))
      {
        return 0;
      }

      else
      {
        return (4 * (CFEqual(v1, @"DeferUntilMakeDataReady") != 0));
      }
    }
  }

  return result;
}

uint64_t VideoMentorSetModeToReversePlayback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, const __CFDictionary *a6, const void *a7, const void *a8, CFTypeRef a9)
{
  v34 = 0;
  cf = 0;
  Policy = videoMentorGetReadPolicyAfterPrerollFromMentorReadPolicy(a6);
  PolicyFromPrerollPolicy = audioMentorGetInitialReadPolicyFromPrerollPolicy(a6, Policy);
  v30 = audioMentorGetModeChangePolicy(a6);
  IsCursorAccuracyExact = videoMentorIsCursorAccuracyExact(a6);
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  v36 = 0;
  FigCFDictionaryGetInt32IfPresent();
  if (a6)
  {
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetFloat32IfPresent();
    FigCFDictionaryGetFloat32IfPresent();
  }

  if (a2 && ((v16 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0 || v16(a2, &cf)) || a4 && ((v17 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0 || v17(a4, &v34)))
  {
    v27 = FigSignalErrorAtGM();
  }

  else
  {
    FigSimpleMutexLock();
    if (!*a1)
    {
      v18 = *(a1 + 168);
      v19 = cf;
      *(a1 + 168) = cf;
      if (v19)
      {
        CFRetain(v19);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      v20 = *(a3 + 16);
      *(a1 + 176) = *a3;
      v21 = *(a1 + 200);
      v22 = v34;
      *(a1 + 192) = v20;
      *(a1 + 200) = v22;
      if (v22)
      {
        CFRetain(v22);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      v23 = *a5;
      *(a1 + 224) = *(a5 + 2);
      *(a1 + 208) = v23;
      *(a1 + 232) = -1;
      *(a1 + 236) = -1;
      *(a1 + 240) = PolicyFromPrerollPolicy;
      *(a1 + 244) = v30;
      *(a1 + 248) = 0;
      *(a1 + 252) = 0;
      *(a1 + 256) = 1065353216;
      *(a1 + 372) = IsCursorAccuracyExact;
      *(a1 + 373) = 1;
      *(a1 + 374) = 0;
      *(a1 + 452) = 0;
      v24 = *(a1 + 464);
      *(a1 + 464) = a7;
      if (a7)
      {
        CFRetain(a7);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      v25 = *(a1 + 472);
      *(a1 + 472) = a8;
      if (a8)
      {
        CFRetain(a8);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      v26 = *(a1 + 480);
      *(a1 + 480) = a9;
      if (a9)
      {
        CFRetain(a9);
      }

      if (v26)
      {
        CFRelease(v26);
      }

      *(a1 + 112) = 3;
      *(a1 + 116) = 1;
      FigMemoryBarrier();
    }

    FigSimpleMutexUnlock();
    FigSemaphoreSignal();
    v27 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  return v27;
}

uint64_t VideoMentorSetModeToEmptyEdit(uint64_t a1, const void *a2, const __CFDictionary *a3, const void *a4, const void *a5)
{
  PolicyFromPrerollPolicy = audioMentorGetInitialReadPolicyFromPrerollPolicy(a3, 0);
  v11 = audioMentorGetModeChangePolicy(a3);
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigSimpleMutexLock();
  if (!*a1)
  {
    *(a1 + 240) = PolicyFromPrerollPolicy;
    *(a1 + 244) = v11;
    *(a1 + 374) = 0;
    *(a1 + 452) = 0;
    v12 = *(a1 + 456);
    *(a1 + 456) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    v13 = *(a1 + 472);
    *(a1 + 472) = a4;
    if (a4)
    {
      CFRetain(a4);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    v14 = *(a1 + 480);
    *(a1 + 480) = a5;
    if (a5)
    {
      CFRetain(a5);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    *(a1 + 112) = 4;
    *(a1 + 116) = 1;
    FigMemoryBarrier();
  }

  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
  return 0;
}

uint64_t VideoMentorSetProperty(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a1)
  {
    VideoMentorSetProperty_cold_2(&v11);
    return LODWORD(v11.value);
  }

  if (*a1)
  {
    VideoMentorSetProperty_cold_1(&v11);
    return LODWORD(v11.value);
  }

  if (FigCFEqual())
  {
    if (!a3)
    {
      return 0;
    }

    v5 = CFGetTypeID(a3);
    if (v5 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    FigSimpleMutexLock();
    CMTimeMakeFromDictionary(&v11, a3);
    *(a1 + 272) = v11;
LABEL_23:
    FigSimpleMutexUnlock();
    return 0;
  }

  if (FigCFEqual())
  {
    if (!a3)
    {
      return 0;
    }

    v6 = CFGetTypeID(a3);
    if (v6 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    FigSimpleMutexLock();
    CMTimeMakeFromDictionary(&v11, a3);
    *(a1 + 296) = v11;
    goto LABEL_23;
  }

  if (FigCFEqual())
  {
    if (!a3)
    {
      return 0;
    }

    v7 = CFGetTypeID(a3);
    if (v7 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    FigSimpleMutexLock();
    CMTimeMakeFromDictionary(&v11, a3);
    *(a1 + 320) = v11;
    goto LABEL_23;
  }

  if (FigCFEqual())
  {
    if (!a3)
    {
      return 0;
    }

    v8 = CFGetTypeID(a3);
    if (v8 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    FigSimpleMutexLock();
    CMTimeMakeFromDictionary(&v11, a3);
    *(a1 + 344) = v11;
    goto LABEL_23;
  }

  if (FigCFEqual())
  {
    if (!a3)
    {
      return 0;
    }

    v9 = CFGetTypeID(a3);
    if (v9 != CFNumberGetTypeID())
    {
      return 0;
    }

    FigSimpleMutexLock();
    CFNumberGetValue(a3, kCFNumberFloat32Type, (a1 + 368));
    goto LABEL_23;
  }

  return FigSignalErrorAtGM();
}

uint64_t VideoMentorSetClientPID(_BYTE *a1)
{
  if (a1 && !*a1)
  {
    return FigThreadSetProperty();
  }

  else
  {
    return 4294954511;
  }
}

uint64_t VideoMentorSetThrottleForBackground(uint64_t a1, int a2)
{
  if (!a1 || *a1)
  {
    return 4294954511;
  }

  valuePtr = 16 * (a2 != 0);
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v3 = FigThreadSetProperty();
  if (*(a1 + 41))
  {
    FigBaseObject = FigSampleCursorServiceGetFigBaseObject(*(a1 + 8));
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(FigBaseObject, @"PriorityOfConsistentThreadHandlingSampleCursors", v5);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v3;
}