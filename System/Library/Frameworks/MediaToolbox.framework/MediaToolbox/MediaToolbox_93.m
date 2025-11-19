uint64_t fpfs_RTCReportingSetSendingVisualsToNero(uint64_t a1)
{
  result = fpfs_getNext(a1, 0);
  if (result)
  {
    result = CMBaseObjectGetDerivedStorage();
    v2 = *(result + 2568);
    if (v2)
    {
      VTable = CMBaseObjectGetVTable();
      v4 = *(VTable + 16);
      result = VTable + 16;
      v5 = *(v4 + 56);
      if (v5)
      {

        return v5(v2, @"playerStats", 0x1F0B66598, 1, 0);
      }
    }
  }

  return result;
}

uint64_t fpfsi_updateDisplayListForVideoRangeMonitors()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  CMBaseObjectGetDerivedStorage();
  if (v0[11])
  {
    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      return 4294954514;
    }

    v2 = OUTLINED_FUNCTION_444();
    result = v3(v2);
    if (result)
    {
      return result;
    }
  }

  if (v0[10])
  {
    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      return 4294954514;
    }

    v5 = OUTLINED_FUNCTION_444();
    result = v6(v5);
    if (result)
    {
      return result;
    }
  }

  if (!v0[8])
  {
    goto LABEL_10;
  }

  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    return 4294954514;
  }

  v7 = OUTLINED_FUNCTION_444();
  result = v8(v7);
  if (result)
  {
    return result;
  }

LABEL_10:
  if (!v0[9])
  {
    return 0;
  }

  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    return 4294954514;
  }

  v9 = OUTLINED_FUNCTION_236();

  return v10(v9);
}

uint64_t fpfs_UpdatePlayerOverrideForAllItems()
{
  OUTLINED_FUNCTION_187();
  if (*(v2 + 80))
  {
    v3 = v0(v1);
    if (v3)
    {
      return v3;
    }
  }

  v4 = *(v1 + 72);
  if (!v4)
  {
    return 0;
  }

  Count = CFArrayGetCount(v4);
  v6 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Copy = CFArrayCreateCopy(AllocatorForMedia, *(v1 + 72));
  if (Copy)
  {
    v9 = Copy;
    v10 = 0;
    do
    {
      v11 = OUTLINED_FUNCTION_184();
      CFArrayGetValueAtIndex(v11, v12);
      v13 = OUTLINED_FUNCTION_399();
      v14 = v0(v13);
      if (v14)
      {
        break;
      }
    }

    while (v6 != v10++);
    CFRelease(v9);
    return v14;
  }

  OUTLINED_FUNCTION_239();

  return FigSignalErrorAtGM();
}

uint64_t fpfs_SetReleaseResourcesWhenPaused(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 824) == a2)
  {
    return 0;
  }

  v4 = DerivedStorage;
  *(DerivedStorage + 824) = a2;
  result = *(DerivedStorage + 80);
  if (result)
  {
    v6 = CMBaseObjectGetDerivedStorage();
    if (!fpfs_shouldReleaseRenderChainForPausing())
    {
      return 0;
    }

    if (!*(v6 + 464))
    {
      return 0;
    }

    result = fpfsi_ReleaseRenderChainsForPausing(*(v4 + 80));
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t fpfs_SetResourceConservationLevelWhenPaused()
{
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 828);
  if (v4 == v1)
  {
    return 0;
  }

  *(DerivedStorage + 828) = v1;
  return fpfs_PlayQueueCallForEachItem(v0, fpfsi_setAndPerformResourceConservation, &v4);
}

uint64_t fpfs_SetPlayerRole(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 872);
  if (v5 == a2)
  {
    return 0;
  }

  v6 = DerivedStorage;
  *(DerivedStorage + 872) = a2;
  fpfsi_UpdateResourceSpecifierOnResourceArbiter(*(DerivedStorage + 80));
  v7 = &fpfsi_EnsureIFrameModeForScanningPlayer;
  if (a2 != 1 && v5 != 1)
  {
    v7 = fpfsi_EnsureVideoModeForPIPPlayer;
    if (a2 != 2 && v5 != 2)
    {
      return 0;
    }
  }

  return fpfs_PlayQueueCallForEachItem(a1, v7, v6 + 872);
}

void fpfs_setVideoTargetArray(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14, CFArrayRef a15, CFArrayRef theArray, uint64_t TypeID, uint64_t a18, uint64_t a19, int a20, int a21, __int128 a22, uint64_t a23, __int128 a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  OUTLINED_FUNCTION_253();
  a53 = v58;
  a54 = v59;
  OUTLINED_FUNCTION_565();
  a42 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  TypeID = 0;
  a18 = 0;
  a19 = 0;
  a15 = 0;
  theArray = 0;
  FVTCount = FigStreamingPlayerCombinedVideoDestinationGetFVTCount(*(DerivedStorage + 376));
  if (dword_1EAF169F0)
  {
    OUTLINED_FUNCTION_225();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_28();
    if (v57)
    {
      if (v55)
      {
        CMBaseObjectGetDerivedStorage();
      }

      a20 = 136315906;
      OUTLINED_FUNCTION_318();
      *(&a22 + 6) = v55;
      HIWORD(a22) = 2082;
      a23 = v63;
      LOWORD(a24) = 2114;
      *(&a24 + 2) = v56;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 456) = 1;
  OUTLINED_FUNCTION_68();
  FigStreamingPlayerCombinedVideoDestinationRemoveFVTNotificationListeners(v64);
  OUTLINED_FUNCTION_67();
  FigStreamingPlayerCombinedVideoDestinationRemoveFVTNotificationListeners(v65);
  if (!FigStreamingPlayerCombinedVideoDestinationSetFVTs(*(DerivedStorage + 376), v56, &a15, &theArray))
  {
    OUTLINED_FUNCTION_68();
    FigStreamingPlayerCombinedVideoDestinationAddFVTNotificationListeners(v66);
    OUTLINED_FUNCTION_67();
    FigStreamingPlayerCombinedVideoDestinationAddFVTNotificationListeners(v67);
    for (i = 0; ; ++i)
    {
      Count = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      fpfs_traceVideoTargetEvent(v55, ValueAtIndex);
    }

    for (j = 0; ; ++j)
    {
      v72 = a15;
      if (a15)
      {
        v72 = CFArrayGetCount(a15);
      }

      if (j >= v72)
      {
        break;
      }

      v73 = CFArrayGetValueAtIndex(a15, j);
      fpfs_traceVideoTargetEvent(v55, v73);
    }

    if (theArray && CFArrayGetCount(theArray) > 0)
    {
      FigStreamingPlayerCombinedVideoDestinationSendEmptyConfigToGivenFVTsImmediately(theArray);
    }

    fpfsi_ensureLayerSyncForItem(*(DerivedStorage + 80));
    v74 = OUTLINED_FUNCTION_270();
    fpfs_PlayQueueCallForEachItem(v74, v75, v76);
    v77 = OUTLINED_FUNCTION_270();
    fpfs_PlayQueueCallForEachItem(v77, v78, v79);
    v80 = OUTLINED_FUNCTION_270();
    fpfs_PlayQueueCallForEachItem(v80, v81, v82);
    v83 = OUTLINED_FUNCTION_270();
    fpfs_PlayQueueCallForEachItem(v83, v84, v85);
    TypeID = FigVideoTargetGetTypeID();
    a18 = FigStreamingPlayerCombinedVideoDestinationGetFVTCount(*(DerivedStorage + 376)) - FVTCount;
    fpfs_PlayQueueCallForEachItem(v55, fpfsi_handleVideoOutputsChanged, &TypeID);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (a15)
  {
    CFRelease(a15);
  }

  OUTLINED_FUNCTION_252();
}

void fpfs_FetchClientBundleIdentifierFromAudioSessionDispatch(const void **a1)
{
  v2 = *a1;
  v3 = a1[1];
  FigGetAllocatorForMedia();
  if (v3)
  {
    OUTLINED_FUNCTION_398();
    v4 = *(CMBaseObjectGetVTable() + 16);
    if (v4 && *(v4 + 48))
    {
      v5 = OUTLINED_FUNCTION_444();
      v6(v5);
    }

    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void fpfs_CreatePlaybackItemFromAsset()
{
  OUTLINED_FUNCTION_649();
  v128 = *MEMORY[0x1E69E9840];
  if (!v1)
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM();
    goto LABEL_111;
  }

  v3 = v2;
  v4 = v1;
  v5 = v0;
  CFGetAllocator(v1);
  v6 = OUTLINED_FUNCTION_576();
  CMBaseObject = FigAssetGetCMBaseObject(v6);
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v8 = OUTLINED_FUNCTION_620();
    if (!v9(v8))
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v104 = 0;
      value = 0;
      v11 = gNextItemOrdinal++;
      cf = 0;
      theString = 0;
      v100 = 0;
      v101 = 0;
      v99 = 0;
      memset(v127, 0, 80);
      memset(buffer, 0, sizeof(buffer));
      if (!v5 || !v3)
      {
        OUTLINED_FUNCTION_111();
        v26 = FigSignalErrorAtGM();
LABEL_109:
        if (!v26)
        {
          FigStartForwardingMediaServicesProcessDeathNotification();
        }

        goto LABEL_111;
      }

      v98 = DerivedStorage;
      v12 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_180(v12);
      FigSimpleMutexLock();
      ++*(CMBaseObject + 8);
      CFGetAllocator(v5);
      FigPlaybackItemGetClassID();
      CMDerivedObjectCreate();
      v13 = MEMORY[0x1E695FF40];
      if (!value)
      {
        OUTLINED_FUNCTION_120();
        v26 = FigSignalErrorAtGM();
LABEL_101:
        if (v104)
        {
          CFRelease(v104);
        }

        if (*MEMORY[0x1E695FF50])
        {
          v89 = fig_log_handle();
          if (os_signpost_enabled(v89))
          {
            *buf = 134218752;
            v119 = v5;
            v120 = 2048;
            v121 = value;
            v122 = 2048;
            v123 = v11;
            v124 = 2048;
            v125 = v26;
            OUTLINED_FUNCTION_546();
            _os_signpost_emit_with_name_impl(v90, v89, OS_SIGNPOST_INTERVAL_END, v91, v92, v93, buf, 0x2Au);
          }
        }

        if (*MEMORY[0x1E695FF40])
        {
          OUTLINED_FUNCTION_439();
          fig_gm_ktrace_wrapper();
        }

        fpfs_UnlockAndPostNotificationsWithCaller(v5);
        goto LABEL_109;
      }

      if (*MEMORY[0x1E695FF50])
      {
        v14 = fig_log_handle();
        if (os_signpost_enabled(v14))
        {
          *buf = 134218496;
          v119 = v5;
          v120 = 2048;
          v121 = value;
          v122 = 2048;
          v123 = v11;
          OUTLINED_FUNCTION_546();
          _os_signpost_emit_with_name_impl(v15, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, v17, v18, buf, 0x20u);
        }
      }

      v96 = v3;
      if (*v13)
      {
        OUTLINED_FUNCTION_296();
        fig_gm_ktrace_wrapper();
      }

      v19 = v98;
      v20 = CMBaseObjectGetDerivedStorage();
      *v20 = v5;
      v21 = FigSimpleMutexCreate();
      *(v20 + 8) = v21;
      if (!v21)
      {
        v26 = -12786;
        goto LABEL_119;
      }

      FigGetAllocatorForMedia();
      started = FigRetainProxyCreate();
      if (started || (*(v20 + 160) = v11, (started = FigStartForwardingMediaServicesProcessDeathNotification()) != 0))
      {
        v26 = started;
        goto LABEL_119;
      }

      *(v20 + 3096) = 0;
      if (FigCFDictionaryGetStringIfPresent())
      {
        CFStringGetCString(theString, (v20 + 3096), 10, 0x600u);
      }

      if (dword_1EAF169F0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_221();
        if (v11)
        {
          v24 = CMBaseObjectGetDerivedStorage() + 888;
          if (value)
          {
            v25 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v25 = "";
          }

          v106 = 136316418;
          v107 = "fpfs_CreatePlaybackItem";
          v108 = 2048;
          v109 = v5;
          v110 = 2082;
          v111 = v24;
          v112 = 2048;
          v113 = value;
          v114 = 2082;
          v115 = v25;
          v116 = 1024;
          v117 = v11;
          OUTLINED_FUNCTION_117();
          OUTLINED_FUNCTION_25();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_467();
        v19 = v98;
      }

      if (FigCFDictionaryGetValueIfPresent())
      {
        v27 = cf;
        if (cf)
        {
          v27 = CFRetain(cf);
        }

        *(v20 + 3392) = v27;
      }

      if (FigCFDictionaryGetValueIfPresent())
      {
        v28 = v101;
        if (v101)
        {
          v28 = CFRetain(v101);
        }

        *(v20 + 3216) = v28;
      }

      if (FigCFDictionaryGetValueIfPresent())
      {
        *(v20 + 3224) = *MEMORY[0x1E695E4D0] == v100;
      }

      FigCFDictionaryGetStringValue();
      AllocatorForMedia = FigGetAllocatorForMedia();
      FigPropertyStorageCreate(AllocatorForMedia, (v20 + 168));
      v95 = v11;
      if (FigIsItOKToLogURLs())
      {
        FPSupport_GetAssetDoNotLogURLs(v4);
        OUTLINED_FUNCTION_786();
      }

      else
      {
        v30 = 0;
      }

      *(v20 + 25) = v30;
      *(v20 + 32) = CFRetain(v4);
      FigGetAllocatorForMedia();
      v31 = OUTLINED_FUNCTION_611();
      FigAssetGetCMBaseObject(v31);
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v32 = OUTLINED_FUNCTION_620();
        v33(v32);
      }

      v34 = FigGetAllocatorForMedia();
      OnlyTimebase = FPSTimelineConverterCreate(v34, (v20 + 3376));
      if (!OnlyTimebase)
      {
        *(v20 + 869) = 1;
        *(v20 + 871) = 0;
        v36 = *(v19 + 536);
        if (v36)
        {
          *(v20 + 870) = FPSupport_CopyAndCheckClientOnAllowListForPrefDomainKey(v36, 1, 0x1F0B2FBF8, &v99);
        }

        if (v99)
        {
          CFRelease(v99);
        }

        FigGetAllocatorForMedia();
        v37 = OUTLINED_FUNCTION_611();
        FigAssetGetCMBaseObject(v37);
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v38 = OUTLINED_FUNCTION_516();
          v39(v38);
        }

        *(v20 + 1592) = 0;
        *(v20 + 1600) = v20 + 1592;
        fpfsi_ResetPlaybackItem();
        if (*(v20 + 400))
        {
          DataValue = FigCFDictionaryGetDataValue();
          if (DataValue)
          {
            v41 = FigCFHTTPCopyClientProcessName(DataValue);
            if (v41)
            {
              v42 = v41;
              CFStringGetCString(v41, buffer, 128, 0x8000100u);
              CFRelease(v42);
            }
          }
        }

        if (value)
        {
          v43 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v43 = "";
        }

        snprintf(v127, 0x50uLL, "com.apple.coremedia.fpfs.timer(%s).%s", buffer, v43);
        v44 = FigDispatchQueueCreateWithPriority();
        *(v20 + 600) = v44;
        if (!v44)
        {
          goto LABEL_118;
        }

        *(v20 + 1024) = 0;
        *(v20 + 1032) = v20 + 1024;
        *(v20 + 1056) = 0;
        *(v20 + 1064) = v20 + 1056;
        *(v20 + 1040) = 0;
        *(v20 + 1048) = v20 + 1040;
        v45 = CFGetAllocator(v5);
        Mutable = CFArrayCreateMutable(v45, 0, MEMORY[0x1E695E9C0]);
        *(v20 + 1920) = Mutable;
        if (!Mutable)
        {
          goto LABEL_118;
        }

        v47 = FigGetAllocatorForMedia();
        OnlyTimebase = FigStreamingItemCombinedVideoDestinationCreate(v47, 0, (v20 + 656));
        if (!OnlyTimebase)
        {
          *(v20 + 2912) = 0;
          *(v20 + 2920) = v20 + 2912;
          CelestialGetStreamingBackBufferDuration();
          *(v20 + 2296) = v48;
          *(v20 + 2300) = v48;
          *(v20 + 2304) = -1;
          *(v20 + 1840) = 1065353216;
          *(v20 + 2512) = 0u;
          v94 = *MEMORY[0x1E695F060];
          *(v20 + 2528) = *MEMORY[0x1E695F060];
          *(v20 + 2648) = -1;
          *(v20 + 2120) = 0;
          *(v20 + 1960) = 0u;
          *(v20 + 1728) = -1;
          *(v20 + 2884) = -1;
          *(v20 + 2800) = 0;
          *(v20 + 2656) = 0u;
          *(v20 + 2672) = 0u;
          v49 = MEMORY[0x1E6960C70];
          *(v20 + 2688) = 0;
          v97 = *v49;
          v50 = *v49;
          v51 = *(v49 + 2);
          *(v20 + 2720) = v51;
          *(v20 + 2704) = v50;
          v52 = MEMORY[0x1E6960C80];
          v53 = *MEMORY[0x1E6960C80];
          *(v20 + 2728) = *MEMORY[0x1E6960C80];
          v54 = *(v52 + 16);
          *(v20 + 2744) = v54;
          *(v20 + 2752) = v50;
          *(v20 + 2768) = v51;
          *(v20 + 2776) = v53;
          *(v20 + 2792) = v54;
          *(v20 + 2852) = -1;
          *(v20 + 2824) = -1;
          *(v20 + 2832) = 0;
          *(v20 + 2840) = 0;
          *(v20 + 2844) = 0;
          *(v20 + 2848) = 0;
          *(v20 + 2868) = 0;
          *(v20 + 2696) = 0;
          *(v20 + 2808) = 0u;
          *(v20 + 2880) = 0;
          *(v20 + 2896) = 0;
          *(v20 + 1712) = 0;
          *(v20 + 557) = 1;
          *(v20 + 2892) = -1;
          *(v20 + 560) = 0;
          *(v20 + 564) = 1;
          *(v20 + 848) = 0;
          *(v20 + 856) = CFRetain(@"TimeDomain");
          *(v20 + 864) = 1065353216;
          *(v20 + 844) = 257;
          *(v20 + 1352) = v97;
          *(v20 + 1368) = v51;
          *(v20 + 1376) = v97;
          *(v20 + 1392) = v51;
          *(v20 + 2544) = 0;
          *(v20 + 2224) = 0;
          *(v20 + 3272) = v97;
          *(v20 + 3288) = v51;
          v55 = *(v20 + 2560);
          if (v55)
          {
            CFRelease(v55);
            *(v20 + 2560) = 0;
          }

          FigGetAllocatorForMedia();
          v56 = OUTLINED_FUNCTION_611();
          FigAssetGetCMBaseObject(v56);
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v57 = OUTLINED_FUNCTION_516();
            v58(v57);
          }

          *(v20 + 2560) = 0;
          v59 = (v20 + 2568);
          FigReportingAgentCreateFromAsset(*(v20 + 32));
          if (*(v20 + 2568))
          {
            if (*(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              OUTLINED_FUNCTION_396();
              OUTLINED_FUNCTION_446();
              v60();
            }

            FigGetAllocatorForMedia();
            v61 = OUTLINED_FUNCTION_611();
            FigAssetGetCMBaseObject(v61);
            if (*(*(CMBaseObjectGetVTable() + 8) + 48))
            {
              v62 = OUTLINED_FUNCTION_516();
              v63(v62);
            }

            if (*v59 && *(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              OUTLINED_FUNCTION_396();
              OUTLINED_FUNCTION_504();
              v64();
            }
          }

          *(v20 + 2592) = 0;
          *(v20 + 2040) = CFAbsoluteTimeGetCurrent();
          if (FigRenderedLegibleOutputManagerIsSupported())
          {
            v65 = FigGetAllocatorForMedia();
            v26 = FigLegibleOutputManagerCreate(v65, &fpfs_postLegibleOutputNotification, fpfs_postLegibleOutputFlushNotification, *(v20 + 16), (v20 + 1872));
            OUTLINED_FUNCTION_757();
            FigLegibleOutputManagerSetCaptionPipelineStrategy(v66, v67);
            OUTLINED_FUNCTION_757();
            FigLegibleOutputManagerSetCaptionRenderingStrategy(v68, v69);
            if (v26)
            {
              goto LABEL_114;
            }
          }

          OnlyTimebase = FigMetadataStorageCreate(&v104);
          if (!OnlyTimebase)
          {
            v70 = v104;
            *(v20 + 1888) = v104;
            v104 = 0;
            FPSupport_SetMetadataOutputCallbacks(v70, fpfsi_postMetadataOutputChanged, &fpfsi_postMetadataOutputFlushed);
            v71 = FigSimpleMutexCreate();
            *(v20 + 680) = v71;
            if (v71)
            {
              v72 = *(v20 + 1872);
              if (v72)
              {
                FigLegibleOutputManagerSetNonForcedEnabledForMediaType(v72, 1668047728, *(v19 + 210));
              }

              if (CelestialGetSystemMemorySize() >= 0x10000001)
              {
                v73 = 0x2000000;
              }

              else
              {
                v73 = 0x1000000;
              }

              OUTLINED_FUNCTION_494();
              CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
              v75 = CFPreferenceNumberWithDefault << 20;
              if (!CFPreferenceNumberWithDefault)
              {
                v75 = v73;
              }

              *(v20 + 536) = v75;
              FigGetCFPreferenceOrOptionDoubleWithDefault();
              v77 = v76;
              if (v77 < 0.0)
              {
                v77 = 3.0;
              }

              *(v20 + 904) = v77;
              if (FigRECGCommandsContextCreate())
              {
                CMNotificationCenterGetDefaultLocalCenter();
                FigRECGCommandsContextCreate();
                OUTLINED_FUNCTION_186();
                FigNotificationCenterAddWeakListener();
              }

              OnlyTimebase = fpfs_EstablishTimebase(value);
              if (!OnlyTimebase)
              {
                FigGetAllocatorForMedia();
                OnlyTimebase = CMTimebaseCreateReadOnlyTimebase();
                if (!OnlyTimebase)
                {
                  if (*v59 && *(*(CMBaseObjectGetVTable() + 8) + 56))
                  {
                    v78 = OUTLINED_FUNCTION_516();
                    v79(v78);
                  }

                  *(v20 + 592) = 256;
                  *(v20 + 3000) = 0;
                  *(v20 + 3048) = v97;
                  *(v20 + 3064) = v51;
                  *(v20 + 3208) = FPSupport_InitialSeekIDForSource(1);
                  *(v20 + 3432) = 0x7FFFFFFFFFFFFFFFLL;
                  *(v20 + 3440) = 0u;
                  OUTLINED_FUNCTION_494();
                  FigGetCFPreferenceNumberWithDefault();
                  OUTLINED_FUNCTION_381();
                  *(v20 + 554) = v80;
                  OUTLINED_FUNCTION_494();
                  FigGetCFPreferenceNumberWithDefault();
                  OUTLINED_FUNCTION_381();
                  *(v20 + 555) = v81;
                  OUTLINED_FUNCTION_494();
                  FigGetCFPreferenceNumberWithDefault();
                  OUTLINED_FUNCTION_381();
                  *(v20 + 556) = v82;
                  OUTLINED_FUNCTION_494();
                  FigGetCFPreferenceNumberWithDefault();
                  OUTLINED_FUNCTION_381();
                  *(v20 + 465) = v83;
                  *(v20 + 768) = v94;
                  v84 = FigSimpleMutexCreate();
                  *(v20 + 784) = v84;
                  if (v84)
                  {
                    *(v20 + 3200) = 257;
                    *(v20 + 3256) = 1;
                    fpfsi_UpdateHighWaterSecs();
                    if ((*(v19 + 906) || *(v19 + 872) == 1) && *v59 && *(*(CMBaseObjectGetVTable() + 16) + 48))
                    {
                      OUTLINED_FUNCTION_717();
                      v85();
                    }

                    FigCFDictionaryGetValueIfPresent();
                    *(v20 + 3400) = 0;
                    v11 = v95;
                    FigGetAllocatorForMedia();
                    FigMetricEventTimelineCreate();
                    v86 = FigGetAllocatorForMedia();
                    FigMetricEventPlaybackSummarySubscriberCreate(v86, *(v20 + 3400), (v20 + 3408));
                    v87 = FigGetAllocatorForMedia();
                    FigMetricEventInitialLikelyToKeepUpSubscriberCreate(v87, *(v20 + 3400), (v20 + 3416));
                    CFSetAddValue(*(v98 + 64), value);
                    if (*(v20 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
                    {
                      OUTLINED_FUNCTION_446();
                      v88();
                    }

                    fpfsi_CheckSpeedRampCompatibility();
                    v26 = 0;
                    *v96 = value;
                    value = 0;
                    goto LABEL_101;
                  }

                  goto LABEL_118;
                }
              }

              goto LABEL_113;
            }

LABEL_118:
            v11 = v95;
            OUTLINED_FUNCTION_120();
            v26 = FigSignalErrorAtGM();
LABEL_119:
            if (value)
            {
              CFRelease(value);
            }

            goto LABEL_101;
          }
        }
      }

LABEL_113:
      v26 = OnlyTimebase;
LABEL_114:
      v11 = v95;
      goto LABEL_119;
    }
  }

LABEL_111:
  OUTLINED_FUNCTION_651();
}

uint64_t fpfs_RemoveExternalStartupTask()
{
  OUTLINED_FUNCTION_187();
  CMBaseObjectGetDerivedStorage();
  if (!v0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_297();
  CFRetain(v3);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_294(DerivedStorage);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_224();
  if (*(v2 + 52))
  {
    OUTLINED_FUNCTION_243();
    v9 = FigSignalErrorAtGM();
  }

  else
  {
    Count = CFArrayGetCount(*(v2 + 944));
    v6 = OUTLINED_FUNCTION_455(Count);
    if (v6 != -1)
    {
      CFArrayRemoveValueAtIndex(*(v2 + 944), v6);
      v7 = CFArrayGetCount(*(v2 + 952));
      v8 = OUTLINED_FUNCTION_455(v7);
      if (v8 != -1)
      {
        CFArrayRemoveValueAtIndex(*(v2 + 952), v8);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_272();
      FigNotificationCenterRemoveWeakListener();
    }

    v9 = 0;
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v1);
  CFRelease(v0);
  return v9;
}

void fpfs_DuckVolume()
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    OUTLINED_FUNCTION_147();
    v5 = OUTLINED_FUNCTION_102();
    OUTLINED_FUNCTION_130(v5, v6, v7, v8, v9, v10, v11, v12, v21, v22, v23, v24, SBYTE2(v24), BYTE3(v24), SHIDWORD(v24));
    OUTLINED_FUNCTION_28();
    if (v2)
    {
      if (v0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_114();
      OUTLINED_FUNCTION_407();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_408();
    }

    OUTLINED_FUNCTION_2();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_294(v13);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_224();
  if (*(DerivedStorage + 52))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
    goto LABEL_22;
  }

  if (!v1)
  {
    v19 = 0;
    if (!*(DerivedStorage + 512))
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_484();
  if (v16 != v17 && v14 == 0)
  {
    *(DerivedStorage + 516) = v15;
    v19 = 1;
LABEL_17:
    *(DerivedStorage + 512) = v19;
    if (*(DerivedStorage + 80))
    {
      v20 = fpfsi_applySoftwareVolume();
      if (v1)
      {
        if (v3 > 0.0 && !v20)
        {
          usleep((v3 * 1000.0 * 1000.0));
        }
      }
    }
  }

LABEL_22:
  fpfs_UnlockAndPostNotificationsWithCaller(v0);
  OUTLINED_FUNCTION_628();
}

uint64_t FigPlayerStreamCreateWithOptions_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerStreamCreateWithOptions_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerStreamCreateWithOptions_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerStreamCreateWithOptions_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerStreamCreateWithOptions_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerStreamCreateWithOptions_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerStreamCreateWithOptions_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void fpfs_enqueuePrerollWasCancelledNotificationIfNeeded_cold_2()
{
  OUTLINED_FUNCTION_369();
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!FigCFDictionarySetInt32())
  {
    fpfs_EnqueueNotification(*v1, @"PrerollWasCancelled", *v1, Mutable);
    *v0 = 0;
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

BOOL fpfsi_scheduleFVTTransitionsForItem_cold_1()
{
  FigGetAllocatorForMedia();
  v0 = OUTLINED_FUNCTION_179();
  FigRenderPipelineGetFigBaseObject(v0);
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v1 = OUTLINED_FUNCTION_188();
    v2(v1);
  }

  v3 = FigCFEqual();
  return OUTLINED_FUNCTION_616(v3);
}

uint64_t fpfs_EnqueueNotificationWithoutLocking_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_canCrossfade_cold_1()
{
  OUTLINED_FUNCTION_207();
  result = fpfs_WantAudioHardwarePassthroughForTrack(v3, 0);
  v5 = 0;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_265();
    result = fpfs_WantAudioHardwarePassthroughForTrack(v6, v7);
    if (!result)
    {
      CMBaseObjectGetDerivedStorage();
      result = CMBaseObjectGetDerivedStorage();
      if (!*(result + 568) || (result = CMAudioFormatDescriptionIsAtmos(*(v2 + 56)), !result) && (result = CMAudioFormatDescriptionIsAtmos(*(v1 + 56)), !result))
      {
        v5 = 1;
      }
    }
  }

  *v0 = v5;
  return result;
}

void fpfs_RenderBuffer_cold_1(opaqueCMSampleBuffer *a1, void *a2)
{
  memset(&v10, 0, sizeof(v10));
  CMSampleBufferGetOutputDuration(&v10, a1);
  v11 = *&v10.value;
  OUTLINED_FUNCTION_269();
  v4 = CMTimeGetSeconds(v3) * 1000.0;
  v5 = v4;
  v6 = a2[430];
  if (v6 <= v4)
  {
    v6 = v4;
  }

  a2[430] = v6;
  v7 = a2[429];
  if (v7 >= v5)
  {
    v7 = v4;
  }

  a2[429] = v7;
  if (a2[431] != v5)
  {
    a2[431] = v5;
  }

  v8 = a2[321];
  if (v8)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v9)
    {
      v9(v8, @"playerStats", 0x1F0B43A78, v5);
    }
  }
}

void fpfs_RenderBuffer_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_806(a1);
  fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
  CFRelease(v1);
}

uint64_t fpfs_RenderWithEndSignal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void fpfs_SetAlternateWithContext_cold_1()
{
  OUTLINED_FUNCTION_261();
  idx = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Count = CFArrayGetCount(*(v0 + 1768));
  MutableCopy = CFArrayCreateMutableCopy(AllocatorForMedia, Count, *(v0 + 1768));
  *v1 = MutableCopy;
  if (MutableCopy)
  {
    v5 = MutableCopy;
    v6 = OUTLINED_FUNCTION_563();
    fpfs_FindMediaTypeInMediaArray(v5, v6, &idx);
    CFArrayRemoveValueAtIndex(v5, idx);
    v7 = *(v0 + 1800);
    if (v7)
    {
      CFArrayAppendValue(v5, v7);
    }
  }
}

BOOL fpfs_SetAlternateWithContext_cold_2(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_369();
  AllocatorForMedia = FigGetAllocatorForMedia();
  v9 = FigAlternateVideoLayoutPinningFilterCreate(AllocatorForMedia, v4, v5);
  *a4 = v9;
  v10 = *v5;
  if (!v9)
  {
    FigAlternateSelectionBossAddFilter(*a3, v10);
    v10 = *v5;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v9 == 0;
}

uint64_t fpfsi_copyPlayableTimeL3_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_copyPlayableTimeL3_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_FormatsAreCompatible_cold_1(int a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v3 = 1;
    if (a1 == 1633889587 && *(DerivedStorage + 536))
    {
      OUTLINED_FUNCTION_689();
      if (v4)
      {
        v3 = -1;
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t fpfs_SetTrackStartTimeAndTimeOffset_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_PullNextCallback_cold_1()
{
  OUTLINED_FUNCTION_349();
  fpfsi_UpdateSourceFormatInfoIfNecessary(v4);
  fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd(v3);
  FigPlayerResourceArbiterAssignReportingAgentForConsumer(*v2, *(v1 + 928), *v0);
  return fpfsi_UpdateResourceSpecifierOnResourceArbiter(v3);
}

uint64_t fpfsi_MakeReadyForInspection_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_MakeReadyForInspection_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void fpfsi_ResumeAllWaitingVideoTracks_cold_1(CMTime *a1, CMSampleBufferRef *a2)
{
  CMSampleBufferGetOutputPresentationTimeStamp(&v4, *a2);
  a1[12] = v4;
  if (!a1[4].epoch)
  {
    fpfs_PreallocateVideoRendering(a1);
  }

  OUTLINED_FUNCTION_198();
  fpfs_CheckVideoSyncQueue();
  if (v3)
  {
    fpfs_FinishVideoSync();
  }
}

void fpfsi_ConfigurePlaybackMonitorForBandwidthCap_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_400();
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v3);
  v7 = *(v4 + 96);
  if (v7)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v8)
    {
      LODWORD(v7) = -12782;
      if (!v6)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    LODWORD(v7) = v8(v7, @"AfmfpbProperty_BandwidthCap", v6);
  }

  if (v6)
  {
LABEL_5:
    CFRelease(v6);
  }

LABEL_6:
  if (*(v4 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_446();
    v9();
  }

  *a3 = v7;
}

void fpfsi_setPlaybackRateMonitorPendingSeekTime_cold_1(uint64_t a1, CFTypeRef cf)
{
  if (*(a1 + 96) && *(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v3 = OUTLINED_FUNCTION_228();
    v4(v3);
  }

  CFRelease(cf);
}

uint64_t fpfs_StopPlaybackByStalledTrack_cold_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_807();
  FigGetAllocatorForMedia();
  v5 = OUTLINED_FUNCTION_179();
  FigBytePumpGetFigBaseObject(v5);
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v6 = OUTLINED_FUNCTION_188();
    v7(v6);
  }

  result = *a3;
  if (*a3)
  {
    OUTLINED_FUNCTION_681();
    result = CFNumberGetValue(v9, v10, v11);
    if (*v3)
    {
      VTable = CMBaseObjectGetVTable();
      v13 = *(VTable + 16);
      result = VTable + 16;
      if (*(v13 + 40))
      {
        v14 = OUTLINED_FUNCTION_626();
        return v15(v14);
      }
    }
  }

  return result;
}

uint64_t fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL fpfs_getPlaybackState_cold_1(uint64_t a1)
{
  fpfs_GetNextTimeToPlay(a1, 0, v4);
  v2 = fpfsi_atOrAfterTimeToPausePlayback(a1);
  return OUTLINED_FUNCTION_616(v2);
}

uint64_t fpfs_SetRenderPipelinePropertiesToUpdateAtTransition_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_copyLoudnessInfoWithItemMediaKindAndLID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_EnqueueTaggedRangeMetadataChangedNotificationIfNeeded_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void fpfs_FreeDeadTracks_cold_1(const __CFAllocator *a1, void *valuePtr, const void *a3)
{
  if (CFNumberCreate(a1, kCFNumberSInt32Type, valuePtr))
  {
    v5 = OUTLINED_FUNCTION_297();
    CFDictionaryRemoveValue(v5, v3);
    v6 = OUTLINED_FUNCTION_228();
    FigPropertyStorageSetValue(v6, v7, v8);
    CFRelease(v3);
  }

  CFRelease(a3);
}

uint64_t fpfsi_copyPerformanceDictionary_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_copyPerformanceDictionary_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_copyPerformanceDictionary_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_copyPerformanceDictionary_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_GetDimensions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void fpfs_BytePumpFn_cold_3(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(a1, a2, a3, a4, a5, a6, a7, a8, @"CurrentDuration", 0);
  v9 = OUTLINED_FUNCTION_308();
  fpfs_EnqueueNotification(v9, v10, v11, NotificationPayloadForProperties);
  if (NotificationPayloadForProperties)
  {
    CFRelease(NotificationPayloadForProperties);
  }
}

uint64_t fpfs_BytePumpFn_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_806(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return fpfs_StopPlayingItem(DerivedStorage, v1, 0);
}

void fpfs_BytePumpFn_cold_5(uint64_t a1)
{
  OUTLINED_FUNCTION_388(a1 + 1448);
  if (fpfsi_PlaybackHasBufferedBeyondTime())
  {
    fpfs_SignalImageQueueGaugeEnqueueingCompleteAfterClampTime();
  }
}

void fpfs_BytePumpFn_cold_6()
{
  OUTLINED_FUNCTION_369();
  memset(&v2, 0, sizeof(v2));
  fpfsi_LastNonSparseSampleEnd(v1, &v2);
  if (v2.flags)
  {
    v0[20] = v2;
    fpfsi_EnqueueEndTimeChangedNotification();
  }
}

uint64_t fpfs_EndCurrentDiscontinuity_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_385();
  fpfs_FinishAudioSyncAndStart();
  v4 = 1;
  if (v5 != -16042)
  {
    v7 = OUTLINED_FUNCTION_171();
    if (fpfsi_isTrackInLists(v7, v8, 1u))
    {
      if (*a3 == 6)
      {
        v4 = -1;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4 & 1;
}

uint64_t fpfs_NewTrackNote_cold_1(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t fpfs_NewTrackNote_cold_2(int a1, uint64_t *a2)
{
  if (a1 != 1936684398)
  {
    v4 = 1;
    return v4 & 1;
  }

  v2 = *a2;
  if (!*a2)
  {
    goto LABEL_11;
  }

  if (!FigAlternateIsIFrameOnly(*a2))
  {
    if (FigAlternateHasVideo(v2))
    {
      v3 = FigAlternateHasAudio(v2) == 0;
      goto LABEL_8;
    }

LABEL_11:
    v4 = 1;
    return v4 & 1;
  }

  v3 = 1;
LABEL_8:
  if (!dword_1EAF169F0)
  {
    v3 = 0;
  }

  v4 = v3 - 1;
  return v4 & 1;
}

uint64_t fpfs_NewTrackNote_cold_3(uint64_t a1)
{
  v1 = *(a1 + 1680);
  if (v1)
  {
    if (FigAlternateIsAudioOnly(v1))
    {
      v2 = dword_1EAF169F0 == 0;
    }

    else
    {
      v2 = 1;
    }

    v3 = v2;
    v4 = v3 << 31 >> 31;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

uint64_t fpfs_NewTrackNote_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_NewTrackNote_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_AddDateToQueue_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_PreallocateVideoRendering_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_806(a1);
  result = fpfs_EnsureRenderChainForTrack(v1, v2, 1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_713();
    FigBaseObject = FigRenderPipelineGetFigBaseObject(v4);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(FigBaseObject, @"Suspended", *MEMORY[0x1E695E4C0]);
    }

    return fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
  }

  return result;
}

void fpfs_endTimerProc_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_107(MEMORY[0x1E6960C70]);
  fpfs_scheduleForwardEndTimeForTrack();
  if (v3)
  {
    fpfs_EndTrackPlayback(a2);
  }
}

uint64_t fpfsi_CopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_CopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_CopyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_CopyProperty_cold_4()
{
  OUTLINED_FUNCTION_207();
  CurrentAudioPersistentIDFromMediaOption = fpfsi_GetCurrentAudioPersistentIDFromMediaOption();
  SpecializedAudioChannelUsage = FigAlternateGetSpecializedAudioChannelUsage(*(v1 + 456), CurrentAudioPersistentIDFromMediaOption);
  result = fpfsi_GetSpatializationConfiguration();
  v5 = SpecializedAudioChannelUsage == 3 || result == 1;
  v6 = MEMORY[0x1E695E4C0];
  if (v5)
  {
    v6 = MEMORY[0x1E695E4D0];
  }

  *v0 = v6;
  return result;
}

uint64_t fpfsi_GetDurationL3_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_SeekToDateWithID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL fpfsi_SeekToDateWithID_cold_2(int *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return OUTLINED_FUNCTION_616(v2);
}

uint64_t fpfsi_SeekToDateWithID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void fpfsi_CheckSpeedRampCompatibility_cold_1()
{
  OUTLINED_FUNCTION_471();
  cf = 0;
  FPSTimelineConverterCopyProperty(*(v0 + 3376), @"SpeedRampData", *MEMORY[0x1E695E480], &cf);
  if (cf)
  {
    v1 = OUTLINED_FUNCTION_177();
    fpfs_StopPlayingItemWithOSStatus(v1, v2, 4294951598);
    CFRelease(cf);
  }
}

uint64_t fpfs_ApplyMediaArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_ApplyMediaArray_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_ApplyMediaArray_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_ApplyMediaArray_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_SetCurrentL3TimeWithRangeAndSeekIDGuts_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_vtable_GetCurrentTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_vtable_GetCurrentTime_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_CopyTrackProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_CopyTrackProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_CopyTrackProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_CopyAsset_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_createTimedDataRenderChain_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void fpfs_enqueuePrerollDidCompleteNotificationIfNeeded_cold_1()
{
  OUTLINED_FUNCTION_369();
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!FigCFDictionarySetInt32())
  {
    fpfs_EnqueueNotification(*v1, @"PrerollDidComplete", *v1, Mutable);
    *v0 = 0;
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t fpfs_CopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_7(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_15(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_16(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_17(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

const void *fpfs_handleSetProperty_cold_18()
{
  OUTLINED_FUNCTION_187();
  FigVisualContextGetTypeID();
  return fpfsi_handleVideoOutputsChanged();
}

uint64_t fpfs_handleSetProperty_cold_19(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_20(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_21(uint64_t a1)
{
  OUTLINED_FUNCTION_806(a1);
  *(v1 + 936) = FigCFNumberGetSInt32();
  return fpfsi_UpdateResourceSpecifierOnResourceArbiter(*(v1 + 80));
}

uint64_t fpfs_handleSetProperty_cold_23(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_24(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_25(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void fpfs_handleSetProperty_cold_26(const __CFArray *a1, CFTypeRef *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i != v4; ++i)
    {
      FigCFArrayGetValueAtIndex();
      if (!FigCFArrayContainsValue())
      {
        fpfs_RemoveFromPrebufferArrayGuts();
      }
    }
  }

  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }
}

void fpfs_handleSetProperty_cold_27(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, unsigned int valuePtr, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_653();
  a18 = v19;
  a19 = v21;
  v23 = v22;
  v25 = v24;
  valuePtr = 0;
  if (*v20 && (v26 = v20, TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(*v26)))
  {
    Value = CFDictionaryGetValue(*v26, @"ClosedCaptionLayerSetSeparated_LayerIndex");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    }

    v29 = FigCFDictionaryGetValue();
    if (v29)
    {
      v30 = CFBooleanGetValue(v29);
      LODWORD(v29) = 0;
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();
    LODWORD(v29) = FigSignalErrorAtGM();
  }

  v30 = 0;
LABEL_9:
  *v23 = v29;
  if ((valuePtr & 0x80000000) == 0)
  {
    FPSupport_setClosedCaptionLayerSeparated(v25 + 208, *(v25 + 200), valuePtr, v30);
  }

  OUTLINED_FUNCTION_652();
}

CFTypeID fpfs_handleSetProperty_cold_28(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = OUTLINED_FUNCTION_173(a1);
  if (result)
  {
    v6 = v5;
    v7 = CFGetTypeID(result);
    result = CFNumberGetTypeID();
    if (v7 == result)
    {
      OUTLINED_FUNCTION_681();
      result = CFNumberGetValue(v8, v9, v10);
      if (*(v6 + 232))
      {
        *(v6 + 232) = 0;
        result = FPSupport_updateClosedCaptionLayer(v6 + 208, *(v6 + 200));
      }
    }
  }

  *a3 = 0;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_29(const void **a1, const void **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  fpfs_setCachedRouteInfo();
  return OUTLINED_FUNCTION_271(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, SWORD2(v15), SBYTE6(v15), SHIBYTE(v15));
}

void fpfs_handleSetProperty_cold_30(const void **a1, const void **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v5 = OUTLINED_FUNCTION_520();
  fpfs_stopResetDisturbReprepareAndResume(v5, v6, v7);
}

uint64_t fpfs_handleSetProperty_cold_31(const void **a1, uint64_t a2, _DWORD *a3)
{
  v4 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigCFEqual();
  if (!result)
  {
    v7 = *(DerivedStorage + 200);
    if (v4)
    {
      v8 = CFRetain(v4);
    }

    else
    {
      v8 = 0;
    }

    *(DerivedStorage + 200) = v8;
    FPSupport_updateClosedCaptionLayer(DerivedStorage + 208, v8);
    result = FPSupport_AppendDeferredTransactionChangeToRelease(*(DerivedStorage + 880), v7);
  }

  *a3 = 0;
  return result;
}

const void *fpfs_handleSetProperty_cold_32(CFBooleanRef *a1, uint64_t a2, _DWORD *a3)
{
  if (*a1 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(*a1)))
  {
    Value = CFBooleanGetValue(*a1);
    if (Value == *(a2 + 712) || (*(a2 + 712) = Value, Value))
    {
      result = 0;
    }

    else
    {
      result = *(a2 + 720);
      if (result)
      {
        CFRelease(result);
        result = 0;
        *(a2 + 720) = 0;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();
    result = FigSignalErrorAtGM();
  }

  *a3 = result;
  return result;
}

const void *fpfs_handleSetProperty_cold_33()
{
  OUTLINED_FUNCTION_471();
  result = OUTLINED_FUNCTION_173(v3);
  if (result)
  {
    v5 = CFGetTypeID(result);
    result = CFBooleanGetTypeID();
    if (v5 != result)
    {
      v7 = -12780;
      goto LABEL_9;
    }

    if (*v2 == *MEMORY[0x1E695E4C0])
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  *(v1 + 648) = v6;
LABEL_9:
  *v0 = v7;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_34(CFTypeRef *a1)
{
  if (!*a1)
  {
    return 0;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(*a1))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t fpfs_handleSetProperty_cold_35(CFTypeRef *a1)
{
  if (*a1)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(*a1))
    {
      v3 = -1;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t fpfs_handleSetProperty_cold_36(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_handleSetProperty_cold_37(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_setClientVideoLayerArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_setClientVideoLayerArray_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_setVolume_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfsi_UpdateActiveStateForPlaybackItem_cold_1()
{
  OUTLINED_FUNCTION_187();
  v1 = MEMORY[0x1E6960C98];
  v2 = *(MEMORY[0x1E6960C98] + 16);
  *v3 = *MEMORY[0x1E6960C98];
  v3[1] = v2;
  v3[2] = *(v1 + 32);
  fpfsi_getPumpAvailableTimeRange(v4, v0);
  if (v5 || (*(v0 + 12) & 1) != 0 && (*(v0 + 36) & 1) != 0 && !*(v0 + 40) && (*(v0 + 24) & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v6 = 1;
  OUTLINED_FUNCTION_677();
  fpfs_FlowControlPump(v7, v8, v9, 0);
  return v6;
}

uint64_t fpfs_AddToPlayQueue_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_AddToPlayQueue_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_AddToPlayQueue_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_AddToPlayQueue_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_AddToPlayQueue_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_AddToPlayQueue_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_CopyPlayQueueItem_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_CopyPlayQueueItem_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_CopyPlayQueueItem_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_CopyPlayQueueItem_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_StartPreroll_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_ReevaluateRouteConfiguration_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_AddExternalStartupTask_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_TransferOwnershipOfPlaybackItemFromPlayer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_TransferOwnershipOfPlaybackItemFromPlayer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_TransferOwnershipOfPlaybackItemFromPlayer_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_TransferOwnershipOfPlaybackItemFromPlayer_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_CopyDisplayedCVPixelBuffer_cold_1()
{
  OUTLINED_FUNCTION_471();
  *v0 = FigSignalErrorAtGM();

  return fpfs_UnlockAndPostNotificationsWithCaller(v1);
}

uint64_t fpfs_CopyDisplayedCVPixelBuffer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpfs_CopyDisplayedCVPixelBuffer_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemfig_createCoalescedClientAndAutomaticSelectedMediaArray()
{
  OUTLINED_FUNCTION_327_0();
  v44 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MutableCopy = 0;
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v2)
  {
    OUTLINED_FUNCTION_81_0();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v27 = OUTLINED_FUNCTION_180_0(os_log_and_send_and_compose_flags_and_os_log_type, v20, v21, v22, v23, v24, v25, v26, v37, v38, v39, v40, SBYTE2(v40), BYTE3(v40), SHIDWORD(v40));
    if (OUTLINED_FUNCTION_124_0(v27))
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v3 = CMBaseObjectGetDerivedStorage();
  if (*v3)
  {
    OUTLINED_FUNCTION_81_0();
    v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v36 = OUTLINED_FUNCTION_180_0(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, v40, SBYTE2(v40), BYTE3(v40), SHIDWORD(v40));
    if (OUTLINED_FUNCTION_124_0(v36))
    {
LABEL_28:
      v42 = 136315138;
      v43 = "itemfig_createCoalescedClientAndAutomaticSelectedMediaArray";
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

LABEL_31:
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_345_0();
    v16 = 0;
    goto LABEL_17;
  }

  v4 = v3;
  if (!v3[800])
  {
    OUTLINED_FUNCTION_489();
    itemfig_createSelectedMediaArray();
    if (v18 || (MutableCopy = FigCFArrayCreateMutableCopy(), v18 = FigAutomaticMediaSelectionCoalesceSelectedMediaArrays(MutableCopy, *(DerivedStorage + 1864), 1), v18))
    {
      v16 = v18;
      goto LABEL_17;
    }

    v8 = 0;
    v6 = 0;
LABEL_11:
    v16 = 0;
    if (v0)
    {
      *v0 = MutableCopy;
      MutableCopy = 0;
    }

    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  FigSimpleMutexLock();
  v5 = *(v4 + 96);
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v4 + 97);
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  OUTLINED_FUNCTION_197();
  v15 = FigAutomaticMediaSelectionCreateSelectedMediaArrayForCriteriaWithLegibleFallbackCriteria(v9, v10, v11, v12, v13, v8, 0, v14, 0, &MutableCopy);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  if (v6)
  {
LABEL_14:
    CFRelease(v6);
  }

LABEL_15:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_17:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v16;
}

__CFDictionary *playerfig_createNotificationPayloadForProperties(int a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, void *value, uint64_t a10)
{
  OUTLINED_FUNCTION_279_0();
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v20 = &a10;
  v13 = value;
  if (value)
  {
    do
    {
      CFArrayAppendValue(Mutable, v13);
      v14 = v20++;
      v13 = *v14;
    }

    while (*v14);
  }

  if (v10 || !a2)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    CFRetain(v10);
LABEL_9:
    v15 = OUTLINED_FUNCTION_198_0();
    NotificationPayloadForProperties = FPSupport_CreateNotificationPayloadForProperties(v15, v16, Mutable);
    v18 = 0;
    if (!Mutable)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  CMBaseObjectGetDerivedStorage();
  v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v10)
  {
    goto LABEL_9;
  }

LABEL_14:
  NotificationPayloadForProperties = 0;
  v18 = 1;
  if (Mutable)
  {
LABEL_10:
    CFRelease(Mutable);
  }

LABEL_11:
  if ((v18 & 1) == 0)
  {
    CFRelease(v10);
  }

  return NotificationPayloadForProperties;
}

void itemfig_createSelectedMediaArray()
{
  OUTLINED_FUNCTION_649();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v88[16] = *MEMORY[0x1E69E9840];
  if (itemfig_assureBasicsReadyForInspection(v2))
  {
    goto LABEL_102;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1840))
  {
    v7 = DerivedStorage;
    v8 = OUTLINED_FUNCTION_249();
    Mutable = CFArrayCreateMutable(v8, v9, v10);
    if (!Mutable)
    {
      goto LABEL_102;
    }

    v12 = Mutable;
    Count = CFArrayGetCount(*(v7 + 1840));
    if (Count >= 1)
    {
      v14 = Count;
      v77 = v1;
      v78 = v3;
      allocator = v5;
      theArray = v12;
      v15 = 0;
      v82 = 0;
      v16 = @"MediaSelectionGroupID";
      v73 = *MEMORY[0x1E695E4D0];
      v79 = Count;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 1840), v15);
        if (!ValueAtIndex)
        {
          break;
        }

        v18 = ValueAtIndex;
        v19 = CFGetTypeID(ValueAtIndex);
        if (v19 != CFDictionaryGetTypeID())
        {
          break;
        }

        Value = CFDictionaryGetValue(v18, v16);
        v21 = CFDictionaryGetValue(v18, @"MediaSelectionGroupMediaType");
        v22 = CFDictionaryGetValue(v18, @"MediaSelectionGroupMediaCharacteristics");
        if (v22 && (v23 = v22, v24 = CFGetTypeID(v22), v24 == CFArrayGetTypeID()) && CFArrayGetCount(v23) >= 1)
        {
          CFArrayGetCount(v23);
          v25 = OUTLINED_FUNCTION_312();
          v26 = CFArrayContainsValue(v25, v89, @"public.legible") != 0;
        }

        else
        {
          v26 = 0;
        }

        v81 = Value;
        if (v82 || (v34 = *(v7 + 1896), v34 == 0 || !v26))
        {
          v27 = CFDictionaryGetValue(v18, @"MediaSelectionGroupOptions");
          if (!v27)
          {
            break;
          }

          v28 = v27;
          v29 = CFGetTypeID(v27);
          if (v29 != CFArrayGetTypeID())
          {
            break;
          }

          v76 = v21;
          v30 = CFArrayGetCount(v28);
          if (v30)
          {
            v31 = v30;
            if (v30 >= 1)
            {
              v32 = 0;
              v75 = v16;
              do
              {
                v88[0] = 0;
                valuePtr = -1;
                v33 = CFArrayGetValueAtIndex(v28, v32);
                if (!v33)
                {
                  goto LABEL_88;
                }

                v34 = v33;
                v35 = CFGetTypeID(v33);
                if (v35 != CFDictionaryGetTypeID())
                {
                  goto LABEL_88;
                }

                v36 = CFDictionaryGetValue(v34, @"MediaSelectionOptionsPersistentID");
                if (v36)
                {
                  v37 = v36;
                  v38 = CFGetTypeID(v36);
                  if (v38 != CFNumberGetTypeID())
                  {
                    goto LABEL_88;
                  }

                  CFNumberGetValue(v37, kCFNumberSInt32Type, &valuePtr);
                  TrackStorage = itemfig_getTrackStorage(v78, valuePtr, v88);
                  if (TrackStorage)
                  {
                    goto LABEL_89;
                  }

                  if (valuePtr == *(v7 + 1048))
                  {
                    v14 = v79;
                    v16 = v75;
                    if (*(v7 + 1052))
                    {
                      goto LABEL_87;
                    }
                  }

                  else
                  {
                    *v85 = -1;
                    v42 = v88[0];
                    OUTLINED_FUNCTION_63();
                    if (v43)
                    {
                      FigCFDictionaryGetCFIndexIfPresent();
                      ArrayValue = FigCFDictionaryGetArrayValue();
                    }

                    else
                    {
                      ArrayValue = 0;
                    }

                    if (!*(v42 + 8))
                    {
                      v49 = CFDictionaryGetValue(v34, @"MediaSelectionOptionsFallbackIDs");
                      if (v49)
                      {
                        v72 = CFArrayGetCount(v49);
                        if (v72 >= 1)
                        {
                          v50 = 0;
                          while (1)
                          {
                            OUTLINED_FUNCTION_198_0();
                            FigCFArrayGetInt32AtIndex();
                            if (itemfig_getTrackStorage(v78, valuePtr, v88))
                            {
                              v12 = theArray;
                              goto LABEL_100;
                            }

                            v42 = v88[0];
                            if (*(v88[0] + 8))
                            {
                              break;
                            }

                            if (v72 == ++v50)
                            {
                              goto LABEL_34;
                            }
                          }

                          if (ArrayValue)
                          {
                            OUTLINED_FUNCTION_373();
                            FigCFArrayGetCFIndexAtIndex();
                          }
                        }
                      }
                    }

LABEL_34:
                    if (*(v42 + 8))
                    {
                      OUTLINED_FUNCTION_63();
                      if (v43)
                      {
                        v51 = -1;
                        v83 = -1;
                        v52 = *(v42 + 144);
                        if (v52)
                        {
                          CFNumberGetValue(v52, kCFNumberCFIndexType, &v83);
                          v51 = v83;
                        }

                        if (v51 == *v85)
                        {
LABEL_86:
                          v16 = v75;
LABEL_87:
                          Value = v81;
                          v21 = v76;
                          goto LABEL_60;
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_544();
                        if (!v43)
                        {
                          goto LABEL_86;
                        }

                        if (!*(v7 + 1062))
                        {
                          v45 = CFDictionaryGetValue(v34, @"MediaSelectionOptionsDisplaysNonForcedSubtitles");
                          if (v45)
                          {
                            v46 = v45;
                            v47 = CFGetTypeID(v45);
                            if (v47 == CFBooleanGetTypeID())
                            {
                              v48 = *(v7 + 1060);
                              if (v48 == CFBooleanGetValue(v46))
                              {
                                goto LABEL_86;
                              }
                            }
                          }
                        }
                      }
                    }

                    v14 = v79;
                    v16 = v75;
                  }
                }

                else
                {
                  v40 = CFDictionaryGetValue(v34, @"MediaSelectionOptionsUniqueOutOfBandID");
                  if (!v40)
                  {
                    goto LABEL_88;
                  }

                  v41 = CFGetTypeID(v40);
                  if (v41 != CFNumberGetTypeID())
                  {
                    goto LABEL_88;
                  }
                }
              }

              while (++v32 != v31);
            }
          }

          else
          {
            LODWORD(v83) = 0;
            LOBYTE(valuePtr) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v68 = v83;
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, valuePtr);
            OUTLINED_FUNCTION_425();
            if (v43)
            {
              v70 = v69;
            }

            else
            {
              v70 = v68;
            }

            if (v70)
            {
              *v85 = 136315394;
              *&v85[4] = "itemfig_createSelectedMediaArray";
              v86 = 2114;
              v87 = v18;
              OUTLINED_FUNCTION_36_0();
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_635();
          }
        }

        else
        {
          v82 = 1;
LABEL_60:
          MutableCopy = CFDictionaryCreateMutableCopy(allocator, 0, v34);
          if (!MutableCopy)
          {
            break;
          }

          v54 = MutableCopy;
          if (Value)
          {
            v55 = OUTLINED_FUNCTION_618();
            CFDictionaryAddValue(v55, v56, Value);
          }

          v57 = v16;
          if (v21)
          {
            CFDictionaryAddValue(v54, @"MediaSelectionGroupMediaType", v21);
          }

          v58 = FigCFWeakReferenceHolderCopyReferencedObject();
          v59 = CMBaseObjectGetDerivedStorage();
          if (v59 && *(v59 + 800))
          {
            v60 = *(v7 + 1864);
            if (v60 && (v61 = CFArrayGetCount(*(v7 + 1864)), v61 >= 1))
            {
              v62 = v61;
              v63 = 0;
              while (1)
              {
                v64 = CFArrayGetValueAtIndex(v60, v63);
                if (v64)
                {
                  v65 = v64;
                  v66 = CFGetTypeID(v64);
                  if (v66 == CFDictionaryGetTypeID())
                  {
                    CFDictionaryGetValue(v65, v57);
                    if (FigCFEqual())
                    {
                      break;
                    }
                  }
                }

                if (v62 == ++v63)
                {
                  goto LABEL_74;
                }
              }
            }

            else
            {
LABEL_74:
              CFDictionaryAddValue(v54, @"AutomaticallySelected", v73);
            }
          }

          if (v58)
          {
            CFRelease(v58);
          }

          CFArrayAppendValue(theArray, v54);
          CFRelease(v54);
          v14 = v79;
          v16 = v57;
        }

        if (++v15 == v14)
        {
          v71 = 0;
          goto LABEL_90;
        }
      }

LABEL_88:
      OUTLINED_FUNCTION_120();
      TrackStorage = FigSignalErrorAtGM();
LABEL_89:
      v71 = TrackStorage;
LABEL_90:
      v1 = v77;
      v12 = theArray;
      if (!v77)
      {
        goto LABEL_100;
      }

LABEL_95:
      if (!v71)
      {
        *v1 = v12;
        goto LABEL_102;
      }

      goto LABEL_100;
    }
  }

  else
  {
    v12 = 0;
  }

  v71 = 0;
  if (v1)
  {
    goto LABEL_95;
  }

LABEL_100:
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_102:
  OUTLINED_FUNCTION_651();
}

uint64_t itemfig_setFormatReader(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1240))
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 1008))
  {
    return 0;
  }

  CFGetAllocator(a1);
  v5 = OUTLINED_FUNCTION_179();
  FigAssetGetCMBaseObject(v5);
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    return 4294954514;
  }

  v6 = (v3 + 1008);
  v7 = OUTLINED_FUNCTION_188();
  result = v8(v7);
  if (!result)
  {
    if (*v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_376();

    return FigSignalErrorAtGM();
  }

  return result;
}

void itemfig_ConnectionStateChanged(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  values[16] = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v8 = OUTLINED_FUNCTION_442_0();
  if (v8)
  {
    v9 = v8;
    CMBaseObjectGetDerivedStorage();
    if (a5)
    {
      v10 = CFGetTypeID(a5);
      if (v10 == CFDictionaryGetTypeID())
      {
        if (FigCFDictionaryGetInt32IfPresent())
        {
          values[0] = @"Connected";
          FigSimpleMutexLock();
          if (@"Connected" == *(v5 + 1464))
          {
            FigSimpleMutexUnlock();
          }

          else
          {
            *(v5 + 1464) = values[0];
            v11 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigPlaybackItemParameter_ConnectionState, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            FigSimpleMutexUnlock();
            if (v11)
            {
              CFRetain(a2);
              FigDeferNotificationToDispatchQueue();
            }
          }
        }
      }
    }

    CFRelease(v9);
  }
}

void itemfig_checkForShortAudioTrack()
{
  v33 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  memset(v26, 0, sizeof(v26));
  dictionaryRepresentation = 0;
  memset(&v24, 0, sizeof(v24));
  *(DerivedStorage + 1032) = 0;
  if (!*(DerivedStorage + 1036))
  {
    goto LABEL_32;
  }

  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 1008);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v3)
  {
    goto LABEL_32;
  }

  if (v3(v2, &v30) || v30 == 1)
  {
    goto LABEL_32;
  }

  v5 = *(v1 + 1008);
  v6 = *(v1 + 1036);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v7 || v7(v5, v6, &v29, 0))
  {
    goto LABEL_32;
  }

  FigTrackReaderGetFigBaseObject(v29);
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v8 = OUTLINED_FUNCTION_308();
    v9(v8);
  }

  if (v28)
  {
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v12)
    {
      goto LABEL_32;
    }

    *&range.start.value = *MEMORY[0x1E6960C88];
    range.start.epoch = *(MEMORY[0x1E6960C88] + 16);
    v13 = v12(v28, &range, &v27);
    if (v13 == -12521)
    {
      goto LABEL_17;
    }

    if (v13)
    {
      goto LABEL_32;
    }

    v14 = v27;
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v15 || v15(v14, v26))
    {
      goto LABEL_32;
    }

    range = v26[1];
    CMTimeRangeGetEnd(&v24, &range);
  }

  else
  {
    FigTrackReaderGetFigBaseObject(v29);
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v10 = OUTLINED_FUNCTION_308();
      v11(v10);
    }

    FigTrackReaderGetFigBaseObject(v29);
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      goto LABEL_32;
    }

    v16 = OUTLINED_FUNCTION_308();
    if (v17(v16))
    {
      goto LABEL_32;
    }

    CMTimeMakeFromDictionary(&v24, dictionaryRepresentation);
    if (dictionaryRepresentation)
    {
      CFRelease(dictionaryRepresentation);
      dictionaryRepresentation = 0;
    }
  }

  value = *(v1 + 140);
  flags = *(v1 + 152);
  timescale = *(v1 + 148);
  if ((flags & 0x1D) == 1)
  {
    epoch = *(v1 + 156);
    goto LABEL_31;
  }

  FigFormatReaderGetFigBaseObject(*(v1 + 1008));
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v20 = OUTLINED_FUNCTION_308();
    if (!v21(v20))
    {
      CMTimeMakeFromDictionary(&range.start, dictionaryRepresentation);
      value = range.start.value;
      flags = range.start.flags;
      timescale = range.start.timescale;
      epoch = range.start.epoch;
LABEL_31:
      range.start = v24;
      time2.value = value;
      time2.timescale = timescale;
      time2.flags = flags;
      time2.epoch = epoch;
      if ((CMTimeCompare(&range.start, &time2) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

LABEL_17:
      *(v1 + 1032) = 1;
    }
  }

LABEL_32:
  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  if (v29)
  {
    CFRelease(v29);
  }
}

uint64_t FigReportingAgentStatsSetIntValue(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_216_0();
    VTable = CMBaseObjectGetVTable();
    v2 = *(VTable + 16);
    result = VTable + 16;
    if (*(v2 + 56))
    {
      OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_151_0();

      return v3();
    }
  }

  return result;
}

uint64_t FigReportingAgentStatsSetCFTypeValue_0(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_216_0();
    VTable = CMBaseObjectGetVTable();
    v2 = *(VTable + 16);
    result = VTable + 16;
    if (*(v2 + 48))
    {
      OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_151_0();

      return v3();
    }
  }

  return result;
}

void itemfig_updateHasEnabledVideo()
{
  CMBaseObjectGetDerivedStorage();
  v1 = OUTLINED_FUNCTION_283_0();
  CMBaseObjectGetDerivedStorage();
  if (v1)
  {
    v2 = *(v0 + 2066);
    v3 = *(v0 + 1040);
    *(v0 + 2066) = v3 != 0;
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = *(v0 + 656) != 0;
      *(v0 + 2066) = v4;
    }

    if (v2 != v4)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v6 = Mutable;
      v7 = MEMORY[0x1E695E4D0];
      if (!*(v0 + 2066))
      {
        v7 = MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(Mutable, @"HasEnabledVideo", *v7);
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      if (v6)
      {
        CFRelease(v6);
      }
    }

    if (!*(v0 + 2067) && *(v0 + 2066))
    {
      *(v0 + 2067) = 1;
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_348_0();
    }

    CFRelease(v1);
  }
}

void itemfig_updateListenersForVideoTrack(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  cf = 0;
  v4 = *(DerivedStorage + 1008);
  if (v4)
  {
    v5 = DerivedStorage;
    v6 = *(DerivedStorage + 1044);
    if (v6)
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v7 || v7(v4, v6, &cf, 0))
      {
        goto LABEL_10;
      }

      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_169_0();
      FigNotificationCenterRemoveWeakListener();
      *(v5 + 1044) = 0;
    }

    if (a2)
    {
      v8 = *(v5 + 1008);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v9)
      {
        if (!v9(v8, a2, &v10, 0))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_169_0();
          OUTLINED_FUNCTION_186();
          FigNotificationCenterAddWeakListener();
          *(v5 + 1044) = a2;
        }
      }
    }
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  OUTLINED_FUNCTION_652();
}

void itemfig_copyTrackFormatDescription(void *a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*DerivedStorage || !a2)
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_652();

    FigSignalErrorAtGM();
  }

  else
  {
    v7 = DerivedStorage;
    if (!itemfig_assureBasicsReadyForInspection(a1))
    {
      v8 = *(v7 + 126);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v9)
      {
        v10 = v9(v8, a2, &cf, 0);
        v11 = cf;
        if (!v10)
        {
          itemfig_copyFormatDescription(cf, a3);
          v11 = cf;
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }
    }

    OUTLINED_FUNCTION_652();
  }
}

uint64_t itemfig_IsThereMediaTrack(uint64_t result)
{
  if (result)
  {
    if (*(result + 1008) && *(*(CMBaseObjectGetVTable() + 16) + 64))
    {
      v1 = OUTLINED_FUNCTION_265();
      v2(v1);
      return 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void fp_checkForCinematicAudioParametersInAudioCurves(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  OUTLINED_FUNCTION_216_0();
  if (v7)
  {
    v8 = FigCFDictionaryGetValue() != 0;
    v9 = FigCFDictionaryGetValue() != 0;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  v9 = 0;
  if (v5)
  {
LABEL_3:
    *v5 = v8 || v9;
  }

LABEL_4:
  if (v4)
  {
    *v4 = v8;
  }

  if (a4)
  {
    *a4 = v9;
  }
}

uint64_t itemfig_updateDefaultTrackID(uint64_t a1, uint64_t a2, char *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  v24 = 0;
  *a3 = 0;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = CMBaseObjectGetDerivedStorage();
  if (*v9)
  {
    goto LABEL_30;
  }

  v10 = v9;
  v11 = OUTLINED_FUNCTION_403_0();
  TrackStorage = itemfig_getTrackStorage(v11, a2, v12);
  if (TrackStorage)
  {
    goto LABEL_36;
  }

  if (*(v24 + 4) == 1668047728)
  {
    v15 = (DerivedStorage + 1048);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_289_0();
  if (v19)
  {
    v17 = 0;
    v15 = (DerivedStorage + 1080);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_544();
  if (v19)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_63();
  if (v19)
  {
    v15 = (DerivedStorage + 1036);
    v16 = v10[128];
    goto LABEL_14;
  }

  if (v14 == 1952807028)
  {
LABEL_12:
    v15 = (DerivedStorage + 1056);
LABEL_17:
    v17 = 1;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_33();
  if (v19)
  {
    v15 = (DerivedStorage + 1040);
    v16 = v10[129];
LABEL_14:
    v17 = v16 == 0;
LABEL_18:
    v18 = *v15;
    if (!*(v24 + 8))
    {
      if (v18 != a2)
      {
        goto LABEL_28;
      }

      v19 = a2 == 0;
      LODWORD(a2) = 0;
LABEL_24:
      v20 = !v19;
      *a3 = v20;
      *v15 = a2;
      goto LABEL_28;
    }

    if (!v18 || v18 == a2)
    {
LABEL_21:
      v19 = *v15 == a2;
      goto LABEL_24;
    }

    TrackStorage = itemfig_getTrackStorage(a1, v18, &v23);
    if (!TrackStorage)
    {
      if (v17)
      {
        itemfig_setTrackEnabled(a1, v23, 0);
      }

      goto LABEL_21;
    }

LABEL_36:
    v21 = TrackStorage;
    goto LABEL_31;
  }

LABEL_28:
  OUTLINED_FUNCTION_33();
  if (v19)
  {
    itemfig_updateHasEnabledVideo();
    itemfig_updateListenersForVideoTrack(a1, *(DerivedStorage + 1040));
  }

LABEL_30:
  v21 = 0;
LABEL_31:
  CFRelease(v8);
  return v21;
}

void itemfig_applyLoudnessInfo(const void *a1, uint64_t a2, int a3, int a4)
{
  v65 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v10 = OUTLINED_FUNCTION_354_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v10)
  {
    if (!*DerivedStorage)
    {
      if (*(DerivedStorage + 536) != a1 || !*(DerivedStorage + 584))
      {
        if (dword_1EAF16A10)
        {
          OUTLINED_FUNCTION_202_0();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_436_0(os_log_and_send_and_compose_flags_and_os_log_type, v13, v14, v15, v16, v17, v18, v19, v53, v54, v55, v56, OS_LOG_TYPE_DEFAULT, *&v57[4], 0);
          OUTLINED_FUNCTION_46();
          if (a4)
          {
            v20 = CMBaseObjectGetDerivedStorage() + 972;
            if (!a1)
            {
LABEL_25:
              v59 = 136316418;
              OUTLINED_FUNCTION_24_0();
              v60 = v20;
              OUTLINED_FUNCTION_91_0();
              v61 = 1024;
              LODWORD(v62) = a2;
              OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_36();
              _os_log_send_and_compose_impl();
              OUTLINED_FUNCTION_393_0();
              goto LABEL_30;
            }

LABEL_7:
            CMBaseObjectGetDerivedStorage();
            goto LABEL_25;
          }

LABEL_30:
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_238_0();
        }

LABEL_31:
        CFRelease(v10);
        goto LABEL_32;
      }

      if (a3 && CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0) != a1)
      {
        if (dword_1EAF16A10)
        {
          OUTLINED_FUNCTION_202_0();
          v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_436_0(v21, v22, v23, v24, v25, v26, v27, v28, v53, v54, v55, v56, OS_LOG_TYPE_DEFAULT, *&v57[4], 0);
          OUTLINED_FUNCTION_46();
          if (a4)
          {
            v20 = CMBaseObjectGetDerivedStorage() + 972;
            if (!a1)
            {
              goto LABEL_25;
            }

            goto LABEL_7;
          }

          goto LABEL_30;
        }

        goto LABEL_31;
      }

      *v58 = 0;
      if (a2 || (a2 = *(v4 + 1036), a2))
      {
        itemfig_getTrackStorage(a1, a2, v58);
        v29 = *v58;
        if (*v58 && *(*v58 + 16))
        {
          *v57 = 0;
          itemfig_copyCombinedLoudnessInfoDictionary(a1, a2, v57);
          v30 = *v57;
          if (*v57)
          {
            v31 = FigCFCopyCompactDescription();
            if (a4 == 1)
            {
              if (dword_1EAF16A10)
              {
                OUTLINED_FUNCTION_147();
                v44 = OUTLINED_FUNCTION_126();
                OUTLINED_FUNCTION_830(v44, v45, v46, v47, v48, v49, v50, v51, v53, v54, v55, v56, SBYTE2(v56), BYTE3(v56), SHIDWORD(v56));
                OUTLINED_FUNCTION_37();
                if (v5)
                {
                  v52 = CMBaseObjectGetDerivedStorage() + 972;
                  if (a1)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  v59 = 136316674;
                  OUTLINED_FUNCTION_24_0();
                  v60 = v52;
                  OUTLINED_FUNCTION_91_0();
                  v61 = 2114;
                  v62 = v31;
                  v63 = 1024;
                  v64 = a2;
                  OUTLINED_FUNCTION_32();
                  OUTLINED_FUNCTION_43_0();
                  OUTLINED_FUNCTION_179_0();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_449();
              }

              fp_sendLoudnessInfoMarkerSampleBufferToAudioRenderPipeline(*(v29 + 16), v30);
            }

            else
            {
              if (dword_1EAF16A10)
              {
                OUTLINED_FUNCTION_147();
                v32 = OUTLINED_FUNCTION_126();
                OUTLINED_FUNCTION_830(v32, v33, v34, v35, v36, v37, v38, v39, v53, v54, v55, v56, SBYTE2(v56), BYTE3(v56), SHIDWORD(v56));
                OUTLINED_FUNCTION_37();
                if (v5)
                {
                  v40 = CMBaseObjectGetDerivedStorage() + 972;
                  if (a1)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  v59 = 136316674;
                  OUTLINED_FUNCTION_24_0();
                  v60 = v40;
                  OUTLINED_FUNCTION_91_0();
                  v61 = 2114;
                  v62 = v31;
                  v63 = 1024;
                  v64 = a2;
                  OUTLINED_FUNCTION_32();
                  OUTLINED_FUNCTION_43_0();
                  OUTLINED_FUNCTION_179_0();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_449();
              }

              FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v29 + 16));
              CMBaseObjectSetProperty(FigBaseObject, @"LoudnessInfo", v30);
            }

            CFRelease(v30);
            if (v31)
            {
              CFRelease(v31);
            }
          }

          goto LABEL_31;
        }

        if (dword_1EAF16A10)
        {
          *v57 = 0;
          OUTLINED_FUNCTION_202_0();
          v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_46();
          if (a4)
          {
            v42 = CMBaseObjectGetDerivedStorage() + 972;
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            v59 = 136316418;
            OUTLINED_FUNCTION_24_0();
            v60 = v42;
            OUTLINED_FUNCTION_91_0();
            v61 = 1024;
            LODWORD(v62) = a2;
            OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_36();
            _os_log_send_and_compose_impl();
          }

          goto LABEL_30;
        }

        goto LABEL_31;
      }
    }

    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
    goto LABEL_31;
  }

LABEL_32:
  OUTLINED_FUNCTION_372();
}

void itemfig_setSweepFilterConfgurationPropertyInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_845();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  *v13 = 0;
  v16 = OUTLINED_FUNCTION_489();
  if (itemfig_getTrackStorage(v16, v17, v18))
  {
    goto LABEL_31;
  }

  v19 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v19)
  {
    v20 = v19;
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_63();
    if (v21)
    {
      if (v15)
      {
        v22 = CFGetTypeID(v15);
        if (v22 == CFDictionaryGetTypeID())
        {
          v23 = OUTLINED_FUNCTION_797();
          if (CFDictionaryContainsKey(v23, v24))
          {
            v25 = OUTLINED_FUNCTION_797();
            Value = CFDictionaryGetValue(v25, v26);
            if (Value)
            {
              v28 = Value;
              v29 = CFGetTypeID(Value);
              if (v29 == CFBooleanGetTypeID())
              {
                if (!CFBooleanGetValue(v28))
                {
                  if (!*(a10 + 120))
                  {
                    goto LABEL_30;
                  }

                  OUTLINED_FUNCTION_342_0();
                  if (v11)
                  {
                    CFRelease(v11);
                  }

                  *(a10 + 120) = 0;
                  goto LABEL_25;
                }

                v30 = OUTLINED_FUNCTION_622();
                if (CFDictionaryContainsKey(v30, v31))
                {
                  v32 = OUTLINED_FUNCTION_331_0();
                  if (CFDictionaryContainsKey(v32, v33))
                  {
                    v34 = OUTLINED_FUNCTION_797();
                    if (CFDictionaryContainsKey(v34, v35))
                    {
                      if (!*(a10 + 120))
                      {
                        *(a10 + 120) = 1;
                        OUTLINED_FUNCTION_342_0();
                        if (v11)
                        {
                          CFRelease(v11);
                        }

                        *v13 = 1;
                        goto LABEL_30;
                      }

                      v36 = OUTLINED_FUNCTION_622();
                      v38 = CFDictionaryGetValue(v36, v37);
                      CFDictionaryGetValue(*(a10 + 128), @"MinimumCutOffFrequency");
                      OUTLINED_FUNCTION_577();
                      if (FigCFEqual())
                      {
                        v39 = OUTLINED_FUNCTION_331_0();
                        v38 = CFDictionaryGetValue(v39, v40);
                        CFDictionaryGetValue(*(a10 + 128), @"MaximumCutOffFrequency");
                        OUTLINED_FUNCTION_577();
                        if (FigCFEqual())
                        {
                          v41 = OUTLINED_FUNCTION_797();
                          v38 = CFDictionaryGetValue(v41, v42);
                          CFDictionaryGetValue(*(a10 + 128), @"BypassThreshold");
                          OUTLINED_FUNCTION_577();
                          if (FigCFEqual())
                          {
LABEL_30:
                            CFRelease(v20);
LABEL_31:
                            OUTLINED_FUNCTION_843();
                            return;
                          }
                        }
                      }

                      OUTLINED_FUNCTION_342_0();
                      if (v38)
                      {
                        CFRelease(v38);
                      }

LABEL_25:
                      *v13 = 1;
                      goto LABEL_30;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_843();

  FigSignalErrorAtGM();
}

uint64_t itemfig_applyEnhancementFilterOptions()
{
  OUTLINED_FUNCTION_313_0();
  result = itemfig_getTrackStorage(v0, v1, v2);
  if (!result && v11)
  {
    v4 = *(v11 + 16);
    if (v4)
    {
      FigRenderPipelineGetFigBaseObject(v4);
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v5 = OUTLINED_FUNCTION_123_0();
        v6(v5);
      }
    }

    result = *(v11 + 248);
    if (result)
    {
      FigRenderPipelineGetFigBaseObject(result);
      VTable = CMBaseObjectGetVTable();
      v8 = *(VTable + 8);
      result = VTable + 8;
      if (*(v8 + 56))
      {
        v9 = OUTLINED_FUNCTION_123_0();

        return v10(v9);
      }
    }
  }

  return result;
}

uint64_t itemfig_applyDisableColorMatching()
{
  OUTLINED_FUNCTION_313_0();
  result = itemfig_getTrackStorage(v0, v1, v2);
  if (!result && v11)
  {
    v4 = *(v11 + 16);
    if (v4)
    {
      FigRenderPipelineGetFigBaseObject(v4);
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v5 = OUTLINED_FUNCTION_123_0();
        v6(v5);
      }
    }

    result = *(v11 + 248);
    if (result)
    {
      FigRenderPipelineGetFigBaseObject(result);
      VTable = CMBaseObjectGetVTable();
      v8 = *(VTable + 8);
      result = VTable + 8;
      if (*(v8 + 56))
      {
        v9 = OUTLINED_FUNCTION_123_0();

        return v10(v9);
      }
    }
  }

  return result;
}

void fp_sendLoudnessInfoMarkerSampleBufferToAudioRenderPipeline(uint64_t a1, const void *a2)
{
  target = 0;
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_19();
  if (!CMSampleBufferCreate(v4, v5, v6, v7, v8, v9, v10, v11, 0, 0, 0, &target))
  {
    CMSetAttachment(target, *MEMORY[0x1E6962DF0], a2, 0);
    FigRenderPipelineGetFigBaseObject(a1);
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v12 = OUTLINED_FUNCTION_228();
      if (!v13(v12))
      {
        CMBufferQueueEnqueue(0, target);
      }
    }
  }

  if (target)
  {
    CFRelease(target);
  }
}

void itemfig_autoSelectionCriteriaChangedForItemAsync(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  v3 = OUTLINED_FUNCTION_283_0();
  if (v3)
  {
    v4 = v3;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*v1 && *(DerivedStorage + 800))
    {
      v6 = OUTLINED_FUNCTION_312();
      itemfig_updateSelectedMediaArrayInternal(v6);
    }

    CFRelease(v4);
  }

  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t itemfig_getDurationIfReady(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  v16 = 0;
  if (*DerivedStorage || !a2)
  {
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM();
  }

  else
  {
    v5 = DerivedStorage;
    OUTLINED_FUNCTION_29();
    if (v6)
    {
      time1 = *(v5 + 236);
      v13 = *MEMORY[0x1E6960CC0];
      *&time2.value = *MEMORY[0x1E6960CC0];
      v7 = *(MEMORY[0x1E6960CC0] + 16);
      time2.epoch = v7;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        OUTLINED_FUNCTION_29();
        if (v6)
        {
          OUTLINED_FUNCTION_132_0((v5 + 260));
          *&time2.value = v13;
          time2.epoch = v7;
          if (CMTimeCompare(&time1, &time2) >= 1)
          {
            result = 0;
            v8 = MEMORY[0x1E6960C88];
LABEL_24:
            *a2 = *v8;
            *(a2 + 16) = *(v8 + 16);
            return result;
          }
        }
      }
    }

    if (!*(v5 + 157))
    {
      OUTLINED_FUNCTION_239();
      return FigSignalErrorAtGM();
    }

    if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
    {
      return 4294954514;
    }

    v9 = OUTLINED_FUNCTION_184();
    result = v10(v9);
    if (result)
    {
      return result;
    }

    if (v16 != 2)
    {
      result = 0;
      v8 = MEMORY[0x1E6960C68];
      goto LABEL_24;
    }

    FigAssetGetCMBaseObject(*(v5 + 157));
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      return 4294954514;
    }

    v11 = OUTLINED_FUNCTION_266();
    result = v12(v11);
    if (!result)
    {
      CMTimeMakeFromDictionary(&time1, v17);
      *a2 = time1;
      result = v17;
      if (v17)
      {
        CFRelease(v17);
        return 0;
      }
    }
  }

  return result;
}

uint64_t itemfig_getTrackHintLocationForTime(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v41 = 0;
  valuePtr = 0;
  v8 = *(CMBaseObjectGetDerivedStorage() + 1008);
  if (!v8)
  {
    return 0;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v9)
  {
    return 0;
  }

  cf = 0;
  v40 = 0;
  number[1] = 0;
  if (v9(v8, a2, &v41, 0))
  {
    return 0;
  }

  v10 = v41;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v11 || v11(v10, &v40))
  {
    v31 = 0;
    goto LABEL_36;
  }

  *v42 = *a3;
  *&v42[16] = *(a3 + 16);
  if (*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    v46 = *v42;
    v47 = *&v42[16];
    OUTLINED_FUNCTION_156_0();
    if (!v12())
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 152) && (v33 = 0, v34 = 0, OUTLINED_FUNCTION_383(), OUTLINED_FUNCTION_156_0(), v14 = v13(), v14 != -12782) || *(*(CMBaseObjectGetVTable() + 16) + 144) && (OUTLINED_FUNCTION_197(), v14 = v17(v15, v16), v14 != -12782))
      {
        v20 = v14;
LABEL_32:
        if (v20)
        {
          v31 = 0;
        }

        else
        {
          *a4 = valuePtr;
          v31 = 1;
        }

        CFRelease(cf);
        goto LABEL_35;
      }

      number[0] = 0;
      FigBaseObject = FigSampleCursorGetFigBaseObject(cf);
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v19)
      {
        v20 = v19(FigBaseObject, @"ApproximateSampleLocation", 0, number);
        v21 = number[0];
        if (v20 || !number[0])
        {
LABEL_30:
          if (v21)
          {
            CFRelease(v21);
          }

          goto LABEL_32;
        }

        CFNumberGetValue(number[0], kCFNumberSInt64Type, &valuePtr);
        if (dword_1EAF16A10)
        {
          v22 = OUTLINED_FUNCTION_30_0();
          OUTLINED_FUNCTION_311(v22, v23, v24, v25, v26, v27, v28, v29, v33, v34, v35, v36, SBYTE2(v36), BYTE3(v36), SHIDWORD(v36));
          OUTLINED_FUNCTION_40();
          if (v8)
          {
            if (a1)
            {
              v30 = (CMBaseObjectGetDerivedStorage() + 2096);
            }

            else
            {
              v30 = "";
            }

            *v42 = 136315906;
            *&v42[4] = "itemfig_getTrackHintLocationForTime";
            *&v42[12] = 2048;
            *&v42[14] = a1;
            *&v42[22] = 2082;
            v43 = v30;
            v44 = 2048;
            v45 = valuePtr;
            OUTLINED_FUNCTION_146();
            OUTLINED_FUNCTION_38();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_612();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_414();
        }

        v20 = 0;
      }

      else
      {
        v20 = -12782;
      }

      v21 = number[0];
      goto LABEL_30;
    }
  }

  v31 = 0;
LABEL_35:
  CFRelease(v40);
LABEL_36:
  if (v41)
  {
    CFRelease(v41);
  }

  return v31;
}

void itemfig_ensureTrackStorageArray(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef a11, CFTypeRef cf, CFTypeRef a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_298_0();
  a25 = v26;
  a26 = v27;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  a13 = 0;
  a14 = 0;
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 648))
  {
    if (*(DerivedStorage + 1008))
    {
      v29 = *MEMORY[0x1E695E480];
      v30 = OUTLINED_FUNCTION_383();
      Mutable = CFArrayCreateMutable(v30, v31, 0);
      *(DerivedStorage + 648) = Mutable;
      if (Mutable)
      {
        v33 = *(DerivedStorage + 1008);
        v34 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v34 || v34(v33, &a14) || a14 < 1)
        {
          goto LABEL_28;
        }

        v35 = 0;
        v36 = *MEMORY[0x1E695E4C0];
        v37 = *MEMORY[0x1E695E4D0];
        while (1)
        {
          cf = 0;
          v38 = malloc_type_calloc(0x140uLL, 1uLL, 0xB2F3FDC6uLL);
          if (!v38)
          {
            break;
          }

          v39 = v38;
          CFArrayAppendValue(*(DerivedStorage + 648), v38);
          v40 = *(DerivedStorage + 1008);
          v41 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v41 && !v41(v40, v35, &a13, v39 + 4, v39))
          {
            FigBaseObject = FigTrackReaderGetFigBaseObject(a13);
            v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v43)
            {
              v43(FigBaseObject, @"TrackEnabled", v29, &cf);
            }

            v44 = cf;
            if (v36 != cf)
            {
              v39[8] = 1;
            }

            if (v44)
            {
              CFRelease(v44);
            }

            v39[9] = 0;
            if (*(v39 + 1) == 1986618469)
            {
              a11 = 0;
              v45 = FigTrackReaderGetFigBaseObject(a13);
              v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v46)
              {
                v46(v45, @"ContainsChapters", v29, &a11);
              }

              v47 = a11;
              if (v37 == a11)
              {
                v39[72] = 1;
              }

              if (v47)
              {
                CFRelease(v47);
              }
            }

            if (a13)
            {
              CFRelease(a13);
              a13 = 0;
            }

            if (++v35 < a14)
            {
              continue;
            }
          }

          goto LABEL_28;
        }
      }
    }

    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }

LABEL_28:
  FigSimpleMutexUnlock();
  if (a13)
  {
    CFRelease(a13);
  }

  OUTLINED_FUNCTION_297_0();
}

void itemfig_setDisplayNonForcedSubtitlesEnabled(uint64_t a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_337_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v4)
  {
    if (*DerivedStorage)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v21 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_124_0(v21))
      {
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_65();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_345_0();
    }

    else if (*(v2 + 1060) != a2)
    {
      *(v2 + 1060) = a2;
      if (*(v2 + 1792))
      {
        OUTLINED_FUNCTION_394_0();
        FigLegibleOutputManagerSetNonForcedEnabledForMediaType(v6, v7, a2);
      }

      if (*(v2 + 1824))
      {
        OUTLINED_FUNCTION_394_0();
        FigRenderedLegibleOutputManagerSetNonForcedEnabledForMediaType(v8, v9, v10);
      }

      v11 = OUTLINED_FUNCTION_298();
      NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(v11, v12, v13, v14, v15, v16, v17, v18, @"DisplayNonForcedSubtitles", @"SelectedMediaArray");
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_171_0();
      FigDispatchAsyncPostNotification();
      if (NotificationPayloadForProperties)
      {
        CFRelease(NotificationPayloadForProperties);
      }
    }

    CFRelease(v4);
  }
}

void itemfig_postSelectedMediaOptionsDidChangeNotification()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (v0)
  {
    OUTLINED_FUNCTION_601();
    v1 = OUTLINED_FUNCTION_298();
    NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_406_0();
    FigDispatchAsyncPostNotification();
    if (NotificationPayloadForProperties)
    {
      CFRelease(NotificationPayloadForProperties);
    }

    CFRelease(v0);
  }
}

void itemfig_enableAudioTrackAndSetCompositionPresetIndexForEnabledTrack(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t valuePtr, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_427_0();
  a24 = v25;
  a25 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  a14 = 0;
  valuePtr = v31;
  if (itemfig_getTrackStorage(v37, v33, &a14))
  {
    goto LABEL_15;
  }

  v39 = a14;
  if (*(a14 + 8) == v36)
  {
    v40 = 0;
    if (v36)
    {
      goto LABEL_4;
    }

LABEL_14:
    *v30 = v40;
    *v28 = 0;
    goto LABEL_15;
  }

  itemfig_setTrackEnabled(v38, a14, v36);
  if (itemfig_updateDefaultTrackID(v38, v34, &a13))
  {
    goto LABEL_15;
  }

  v40 = 1;
  if (!v36)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v32 == -1)
  {
    goto LABEL_14;
  }

  v41 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  if (v41)
  {
    v42 = v41;
    if (FigCFEqual())
    {
      v43 = 0;
    }

    else
    {
      v44 = *(v39 + 144);
      *(v39 + 144) = v42;
      CFRetain(v42);
      if (v44)
      {
        CFRelease(v44);
      }

      v43 = 1;
    }

    *v30 = v40;
    *v28 = v43;
    CFRelease(v42);
  }

  else
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM();
  }

LABEL_15:
  OUTLINED_FUNCTION_424_0();
}

uint64_t itemfig_isAC3PassthroughSupported()
{
  BOOLean[16] = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v0)
  {
    return 0;
  }

  v2 = DerivedStorage;
  if (*DerivedStorage)
  {
    OUTLINED_FUNCTION_81_0();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v19 = OUTLINED_FUNCTION_180_0(os_log_and_send_and_compose_flags_and_os_log_type, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22, v23, SBYTE2(v23), BYTE3(v23), SHIDWORD(v23));
    if (OUTLINED_FUNCTION_124_0(v19))
    {
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_345_0();
  }

  else
  {
    FigSimpleMutexLock();
    v3 = *(v2 + 59);
    if (v3)
    {
      v4 = CFRetain(v3);
      FigSimpleMutexUnlock();
      if (v4)
      {
        BOOLean[0] = 0;
        v5 = *(CMBaseObjectGetVTable() + 16);
        if (v5 && (v6 = *(v5 + 48)) != 0)
        {
          v7 = v6(v4, *MEMORY[0x1E69AFC28], *MEMORY[0x1E695E480], BOOLean);
          Value = 0;
          v9 = BOOLean[0];
          if (!v7 && BOOLean[0])
          {
            Value = CFBooleanGetValue(BOOLean[0]);
            v9 = BOOLean[0];
          }

          if (v9)
          {
            CFRelease(v9);
          }
        }

        else
        {
          Value = 0;
        }

        CFRelease(v4);
        goto LABEL_16;
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }
  }

  Value = 0;
LABEL_16:
  CFRelease(v0);
  return Value;
}

uint64_t itemfig_isAtmosSupported(uint64_t a1)
{
  v75[16] = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v3)
  {
    return 0;
  }

  if (*DerivedStorage)
  {
    goto LABEL_48;
  }

  if (playerfig_isMATAtmosEnabled())
  {
    if (dword_1EAF16A10)
    {
      v5 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_311(v5, v6, v7, v8, v9, v10, v11, v12, v60, v62, v64, v66, SBYTE2(v66), BYTE3(v66), SHIDWORD(v66));
      OUTLINED_FUNCTION_40();
      if (!v1)
      {
LABEL_34:
        OUTLINED_FUNCTION_109();
        v50 = 1;
        OUTLINED_FUNCTION_70_0();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_35;
      }

      CMBaseObjectGetDerivedStorage();
      if (!a1)
      {
        goto LABEL_8;
      }

LABEL_7:
      CMBaseObjectGetDerivedStorage();
LABEL_8:
      OUTLINED_FUNCTION_2_0();
LABEL_9:
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_612();
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v13 = OUTLINED_FUNCTION_234();
  itemfig_isSpatializationAllowed(v13, v14, 0, v15, v16, v17, v18, v19, v60, v62, v64, v66, v68, v69, v70, v71, v72, v73, v74, v75[0], v75[1], v75[2], v75[3], v75[4], v75[5], v75[6]);
  if (!v20)
  {
    LOBYTE(v75[0]) = 0;
    if (fp_bufferedAirPlayActiveAndSupportsAtmos(v3, v75) && LOBYTE(v75[0]))
    {
      if (!dword_1EAF16A10)
      {
        goto LABEL_33;
      }

      v29 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_311(v29, v30, v31, v32, v33, v34, v35, v36, v61, v63, v65, v67, SBYTE2(v67), BYTE3(v67), SHIDWORD(v67));
      OUTLINED_FUNCTION_40();
      if (!v1)
      {
        goto LABEL_34;
      }

      CMBaseObjectGetDerivedStorage();
      if (a1)
      {
        goto LABEL_20;
      }

      goto LABEL_37;
    }

    LODWORD(v75[0]) = 0;
    CMBaseObjectGetDerivedStorage();
    v37 = FigCFWeakReferenceHolderCopyReferencedObject();
    v38 = CMBaseObjectGetDerivedStorage();
    if (v37)
    {
      v39 = v38;
      if (*v38)
      {
        CFRelease(v37);
      }

      else
      {
        FigSimpleMutexLock();
        v40 = *(v39 + 59);
        if (v40)
        {
          v1 = FPSupport_GetAudioSessionOutputChannelCount(v40, v75) != 0;
        }

        else
        {
          v1 = 0;
        }

        FigSimpleMutexUnlock();
        v41 = v75[0];
        CFRelease(v37);
        if (!v1 && v41 == 16)
        {
          if (!dword_1EAF16A10)
          {
            goto LABEL_33;
          }

          v42 = OUTLINED_FUNCTION_30_0();
          OUTLINED_FUNCTION_311(v42, v43, v44, v45, v46, v47, v48, v49, v61, v63, v65, v67, SBYTE2(v67), BYTE3(v67), SHIDWORD(v67));
          OUTLINED_FUNCTION_40();
          if (!v1)
          {
            goto LABEL_34;
          }

          CMBaseObjectGetDerivedStorage();
          if (a1)
          {
LABEL_20:
            CMBaseObjectGetDerivedStorage();
          }

LABEL_37:
          OUTLINED_FUNCTION_2_0();
          goto LABEL_9;
        }
      }
    }

    if (dword_1EAF16A10)
    {
      v52 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_311(v52, v53, v54, v55, v56, v57, v58, v59, v61, v63, v65, v67, SBYTE2(v67), BYTE3(v67), SHIDWORD(v67));
      OUTLINED_FUNCTION_40();
      if (v1)
      {
        CMBaseObjectGetDerivedStorage();
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_612();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
    }

LABEL_48:
    v50 = 0;
    goto LABEL_35;
  }

  if (dword_1EAF16A10)
  {
    v21 = OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_311(v21, v22, v23, v24, v25, v26, v27, v28, v61, v63, v65, v67, SBYTE2(v67), BYTE3(v67), SHIDWORD(v67));
    OUTLINED_FUNCTION_40();
    if (!v1)
    {
      goto LABEL_34;
    }

    CMBaseObjectGetDerivedStorage();
    if (!a1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_33:
  v50 = 1;
LABEL_35:
  CFRelease(v3);
  return v50;
}

BOOL itemfig_isTrackDecodable(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  desc = 0;
  cf = 0;
  if (!*(*(CMBaseObjectGetVTable() + 16) + 56) || (v3 = OUTLINED_FUNCTION_403_0(), v4(v3, a2)))
  {
    v7 = 0;
  }

  else
  {
    v5 = itemfig_copyFormatDescription(cf, &desc);
    v6 = desc;
    if (!v5)
    {
      v7 = CMAudioFormatDescriptionGetRichestDecodableFormat(desc) != 0;
      if (!v6)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }

    v7 = 0;
    if (desc)
    {
LABEL_5:
      CFRelease(v6);
    }
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void playerfig_getDeviceMaximumNumberOfPhysicalOutputChannels()
{
  OUTLINED_FUNCTION_471();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 2;
  cf = 0;
  if (!FigCFEqual())
  {
    FigSimpleMutexLock();
    v6 = *(DerivedStorage + 176);
    if (v6)
    {
      v5 = CFRetain(v6);
      FigSimpleMutexUnlock();
      if (v5)
      {
        CMBaseObject = FigBufferedAirPlayOutputGetCMBaseObject(v5);
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v8)
        {
          v4 = 0;
          goto LABEL_6;
        }

        if (v8(CMBaseObject, @"MaximumNumberOfOutputChannels", *MEMORY[0x1E695E480], &cf))
        {
          v4 = 0;
          goto LABEL_6;
        }

        CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
        v4 = 0;
        v3 = 1;
        goto LABEL_4;
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }

    FigSimpleMutexLock();
    v9 = *(DerivedStorage + 472);
    if (v9)
    {
      v4 = CFRetain(v9);
      FigSimpleMutexUnlock();
      if (v4)
      {
        v10 = *(CMBaseObjectGetVTable() + 16);
        if (!v10)
        {
          v5 = 0;
          goto LABEL_6;
        }

        v11 = *(v10 + 48);
        if (!v11)
        {
          v5 = 0;
          goto LABEL_6;
        }

        if (v11(v4, *MEMORY[0x1E69B0120], *MEMORY[0x1E695E480], &cf))
        {
          v5 = 0;
          goto LABEL_6;
        }

        if (cf)
        {
          CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
        }
      }

      v3 = 0;
      goto LABEL_3;
    }

    FigSimpleMutexUnlock();
  }

  v3 = 0;
  v4 = 0;
LABEL_3:
  v5 = 0;
LABEL_4:
  *v1 = valuePtr;
  if (v0)
  {
    *v0 = v3;
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  OUTLINED_FUNCTION_652();
}

void itemfig_isSpatializationAllowed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const __CFDictionary *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_298_0();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  CMBaseObjectGetDerivedStorage();
  v31 = OUTLINED_FUNCTION_354_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v31)
  {
    if (!*DerivedStorage)
    {
      if (FPSupport_HasTrackOfType(*(v26 + 1008), 1986618469))
      {
        v33 = 1836019574;
      }

      else
      {
        v33 = 1936684398;
      }

      v34 = CMBaseObjectGetDerivedStorage();
      a14 = 0;
      FigSimpleMutexLock();
      v35 = *(v34 + 472);
      if (v35)
      {
        v36 = CFRetain(v35);
        FigSimpleMutexUnlock();
        if (v36)
        {
          if (FPSupport_CreateAudioSessionSpatializationCapabilities(v36, v33, &a14))
          {
            CFRelease(v36);
          }

          else
          {
            v37 = a14;
            CFRelease(v36);
            if (v37)
            {
              Value = CFDictionaryGetValue(v37, @"SpatialCapabilitiesKey_spatialAudioSources");
              if (Value)
              {
                v39 = Value;
                FigCFDictionaryGetBooleanIfPresent();
                if (CFArrayGetCount(v39) >= 1)
                {
                  v40 = 0;
                  do
                  {
                    OUTLINED_FUNCTION_732();
                    FigCFArrayGetInt32AtIndex();
                    ++v40;
                  }

                  while (v40 < CFArrayGetCount(v39));
                }

                if (!v30)
                {
                  if (*(v26 + 1440))
                  {
                    CMBaseObjectGetDerivedStorage();
                    if (!FigCFEqual() && !FigCFEqual())
                    {
                      FigCFEqual();
                    }
                  }
                }
              }

              CFRelease(v37);
            }
          }
        }
      }

      else
      {
        FigSimpleMutexUnlock();
      }
    }

    CFRelease(v31);
  }

  OUTLINED_FUNCTION_297_0();
}

CFIndex itemfig_rebuildRenderPipelinesAndBossGuts(const void *a1, int a2, int a3, uint64_t i, uint64_t a5, uint64_t a6, uint64_t CMBaseObject, CFIndex p_duration)
{
  LODWORD(v1258) = a3;
  LODWORD(v1203) = a2;
  OctaviaClosedCaptionsRenderPipeline = cf;
  v1308 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1207 = *(DerivedStorage + 1);
  OctaviaSubtitleRenderPipeline = CMBaseObjectGetDerivedStorage();
  v1281 = 0;
  RenderTriplesForVideoComposition = *(DerivedStorage + 2065);
  v1303 = 0u;
  v1304 = 0u;
  v1301 = 0u;
  v1302 = 0u;
  v1299 = 0u;
  v1300 = 0u;
  *v1298 = 0u;
  context = objc_autoreleasePoolPush();
  v1215 = OctaviaSubtitleRenderPipeline;
  HIDWORD(v1219) = CMBaseObject;
  HIDWORD(v1203) = RenderTriplesForVideoComposition;
  if (!a6 && !CMBaseObject)
  {
    v18 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &v1281);
    if (v18)
    {
      v21 = v18;
      OUTLINED_FUNCTION_67_0();
      OUTLINED_FUNCTION_26_0();
      LODWORD(v1199) = 0;
      goto LABEL_1182;
    }

    a6 = v1281;
    goto LABEL_5;
  }

  if (!CMBaseObject)
  {
LABEL_5:
    FigSimpleMutexLock();
    v19 = *(OctaviaSubtitleRenderPipeline + 928);
    if (v19)
    {
      CFRelease(v19);
      *(OctaviaSubtitleRenderPipeline + 928) = 0;
    }

    LODWORD(theSet) = 1;
    *(OctaviaSubtitleRenderPipeline + 936) = 1;
    FigSimpleMutexUnlock();
    goto LABEL_8;
  }

  if (!*(DerivedStorage + 44))
  {
    LODWORD(v1199) = a6;
    OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_26_0();
    v21 = 4294954433;
    goto LABEL_1182;
  }

  LODWORD(theSet) = 0;
LABEL_8:
  v20 = *(OctaviaSubtitleRenderPipeline + 528);
  LODWORD(v1170) = v20 && CFArrayGetCount(v20) && OUTLINED_FUNCTION_233_0() == a1;
  v22 = itemfig_assureBasicsReadyForInspection(a1);
  v1199 = a6;
  if (v22)
  {
    goto LABEL_1299;
  }

  if (!*(DerivedStorage + 44))
  {
    PlayableDurationAtCurrentTime = itemfig_getPlayableDurationAtCurrentTime(a1);
    itemfig_monitorPlayability(a1, v31, v32, v33, v34, v35, v36, v37, v1101, v1107, SHIDWORD(v1107), v1114, v1120, SBYTE2(v1120), BYTE3(v1120), SHIDWORD(v1120), v1126, SHIDWORD(v1126), v1130, SWORD2(v1130), key, v1138, v1142, v1146, v1150, v1154, SHIDWORD(v1154), v1158, v1162, v1166, v1170, v1174, v1180, v1185, v1190, v1195, a6, v1203, v1207, context, OctaviaSubtitleRenderPipeline, v1219, v1223, v1230, allocator, v1238[0], v1238[1], v1243, v1246, alloc, theArray, v1258, v1263, v1272, *(&v1272 + 1), theSet, v1281);
    *(DerivedStorage + 212) = PlayableDurationAtCurrentTime;
    FigSimpleMutexLock();
    OctaviaSubtitleRenderPipeline = *(DerivedStorage + 244);
    if (OctaviaSubtitleRenderPipeline && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v38 = OUTLINED_FUNCTION_285_0();
      v39(v38);
    }

    FigSimpleMutexUnlock();
  }

  itemfig_ensureTrackStorageArray(a1, v23, v24, v25, v26, v27, v28, v29, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1174, v1180);
  if (v22)
  {
LABEL_1299:
    v21 = v22;
    OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_26_0();
    goto LABEL_1182;
  }

  *&v1272 = a5;
  LODWORD(v1238[0]) = p_duration;
  if (!CMBaseObject && DerivedStorage[1745])
  {
    itemfig_accumulateFrameDropCountFromAllVideoPipelines(a1);
  }

  OctaviaClosedCaptionsRenderPipeline = CMBaseObjectGetDerivedStorage();
  v40 = *(OctaviaClosedCaptionsRenderPipeline + 8);
  a6 = CMBaseObjectGetDerivedStorage();
  v1288 = 0;
  v1289 = 0;
  v1306 = 0;
  memset(value, 0, sizeof(value));
  v41 = *(a6 + 1137);
  v1287 = 0;
  FigSimpleMutexLock();
  v42 = *(a6 + 472);
  v1247 = DerivedStorage;
  if (v42)
  {
    OctaviaSubtitleRenderPipeline = CFRetain(v42);
  }

  else
  {
    OctaviaSubtitleRenderPipeline = 0;
  }

  FigSimpleMutexUnlock();
  IsAnAudioDeviceAvailable = FPSupport_IsAnAudioDeviceAvailable(OctaviaSubtitleRenderPipeline);
  *(a6 + 1138) = IsAnAudioDeviceAvailable;
  v1224 = a1;
  if (!IsAnAudioDeviceAvailable && !*(a6 + 176))
  {
    if (dword_1EAF16A10)
    {
      OUTLINED_FUNCTION_362_0();
      v47 = OUTLINED_FUNCTION_252_0();
      a6 = valuePtr;
      os_log_type_enabled(v47, type[0]);
      OUTLINED_FUNCTION_134();
      if (v50)
      {
        CMBaseObject = v48;
      }

      else
      {
        CMBaseObject = a6;
      }

      if (CMBaseObject)
      {
        if (v40)
        {
          v49 = (CMBaseObjectGetDerivedStorage() + 972);
        }

        else
        {
          v49 = "";
        }

        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_32_0();
        *&cf[14] = v40;
        *&cf[22] = 2082;
        *&cf[24] = v49;
        *&cf[32] = v94;
        *&cf[34] = a1;
        *v1291 = 2082;
        *&v1291[2] = v95;
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_44_0();
        _os_log_send_and_compose_impl();
        a6 = valuePtr;
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0();
      OUTLINED_FUNCTION_258_0();
      v21 = 0;
      RenderTriplesForVideoComposition = 2;
      i = HIDWORD(v1219);
      p_duration = v1272;
      if (OctaviaSubtitleRenderPipeline)
      {
        goto LABEL_205;
      }

      goto LABEL_206;
    }

    goto LABEL_83;
  }

  if (*(OctaviaClosedCaptionsRenderPipeline + 2016) == 0.0)
  {
    *(OctaviaClosedCaptionsRenderPipeline + 2016) = CFAbsoluteTimeGetCurrent();
  }

  if (!*(a6 + 128))
  {
    v46 = 0;
    CMBaseObject = 1;
    goto LABEL_53;
  }

  if (CFArrayGetCount(*(OctaviaClosedCaptionsRenderPipeline + 648)) < 1)
  {
    v46 = 0;
    CMBaseObject = 1;
    goto LABEL_53;
  }

  v44 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(*(OctaviaClosedCaptionsRenderPipeline + 648), 0);
    OUTLINED_FUNCTION_363_0();
    if (!v50 || !*(v45 + 8))
    {
      goto LABEL_40;
    }

    if (v44 >= 1)
    {
      break;
    }

    ++v44;
LABEL_40:
    OUTLINED_FUNCTION_378_0();
    if (v50)
    {
      v46 = 0;
      CMBaseObject = 1;
      goto LABEL_53;
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v46 = 1;
  FigDispatchAsyncPostNotification();
  CMBaseObject = 0;
LABEL_53:
  if (OctaviaSubtitleRenderPipeline)
  {
    v50 = 0;
  }

  else
  {
    v50 = v41 == 0;
  }

  if (v50)
  {
    v41 = 1;
  }

  if ((theSet & 1) == 0)
  {
    if (v41)
    {
LABEL_83:
      OUTLINED_FUNCTION_258_0();
      v21 = 0;
      goto LABEL_84;
    }

    p_duration = v1272;
    if (!CMBaseObject || *(a6 + 664))
    {
      goto LABEL_98;
    }

    v86 = *(OctaviaClosedCaptionsRenderPipeline + 1036);
    if (!v86)
    {
      OUTLINED_FUNCTION_258_0();
      v21 = 0;
      goto LABEL_99;
    }

    if (!itemfig_canTrackPassthrough(a1, v86))
    {
      goto LABEL_113;
    }

    v87 = OUTLINED_FUNCTION_302_0();
    if (itemfig_isTrackAtmos(v87, v88))
    {
      itemfig_isEC3PassthroughSupported();
    }

    v89 = OUTLINED_FUNCTION_302_0();
    if (itemfig_isTrackEnhancedAC3(v89, v90))
    {
      itemfig_isEC3PassthroughSupported();
    }

    v91 = OUTLINED_FUNCTION_302_0();
    if (itemfig_isTrackAC3(v91, v92))
    {
      isAC3PassthroughSupported = itemfig_isAC3PassthroughSupported();
      CMBaseObject = isAC3PassthroughSupported != 0;
      if (isAC3PassthroughSupported)
      {
        v93 = 1633889587;
      }

      else
      {
        v93 = 0;
      }

      if (!OctaviaSubtitleRenderPipeline)
      {
        goto LABEL_114;
      }
    }

    else
    {
LABEL_113:
      v93 = 0;
      CMBaseObject = 0;
      if (!OctaviaSubtitleRenderPipeline)
      {
LABEL_114:
        v21 = 0;
LABEL_115:
        if (*(a6 + 960) != CMBaseObject || *(a6 + 964) != v93)
        {
LABEL_98:
          OUTLINED_FUNCTION_258_0();
          v21 = 4294954433;
          goto LABEL_99;
        }

        OUTLINED_FUNCTION_258_0();
LABEL_99:
        RenderTriplesForVideoComposition = 2;
        i = HIDWORD(v1219);
        if (OctaviaSubtitleRenderPipeline)
        {
          goto LABEL_205;
        }

        goto LABEL_206;
      }
    }

    LODWORD(valuePtr) = 2;
    formatDescriptionOut[0].start.value = 0;
    v21 = FigAudioSessionCopyMXSessionProperty(OctaviaSubtitleRenderPipeline, *MEMORY[0x1E69B0120], *MEMORY[0x1E695E480], formatDescriptionOut);
    if (!v21 && formatDescriptionOut[0].start.value)
    {
      v849 = OUTLINED_FUNCTION_302_0();
      TrackAudioChannelCount = itemfig_getTrackAudioChannelCount(v849, v850, 1);
      CFNumberGetValue(formatDescriptionOut[0].start.value, kCFNumberSInt32Type, &valuePtr);
      v852 = valuePtr;
      if (valuePtr < 3 || ((v853 = *(a6 + 968), TrackAudioChannelCount <= 2) ? (v854 = v853 < 3) : (v854 = 0), v854))
      {
        v21 = 0;
      }

      else
      {
        if (TrackAudioChannelCount < valuePtr)
        {
          v852 = TrackAudioChannelCount;
        }

        if (v853 == v852)
        {
          v21 = 0;
        }

        else
        {
          v21 = 4294954433;
        }
      }
    }

    v900 = OUTLINED_FUNCTION_302_0();
    if (itemfig_isTrackDecodable(v900, v901))
    {
      *cf = 0;
      if (itemfig_getMaximumNumberOfSpatializedOutputChannels(a1, cf))
      {
        v902 = 1;
      }

      else
      {
        v902 = *cf < 3;
      }

      if (v902)
      {
        CMBaseObject = CMBaseObject;
      }

      else
      {
        v93 = 0;
        CMBaseObject = 0;
      }
    }

    if (formatDescriptionOut[0].start.value)
    {
      CFRelease(formatDescriptionOut[0].start.value);
    }

    goto LABEL_115;
  }

  DerivedStorage = *MEMORY[0x1E695E480];
  v51 = OUTLINED_FUNCTION_173_0();
  theArray = CFArrayCreateMutable(v51, v52, v53);
  if (!theArray)
  {
    OUTLINED_FUNCTION_39_0();
    v21 = FigSignalErrorAtGM();
    OUTLINED_FUNCTION_258_0();
LABEL_84:
    RenderTriplesForVideoComposition = 2;
    i = HIDWORD(v1219);
    DerivedStorage = v1247;
    p_duration = v1272;
    if (OctaviaSubtitleRenderPipeline)
    {
      goto LABEL_205;
    }

    goto LABEL_206;
  }

  v1264 = OctaviaSubtitleRenderPipeline;
  if (!*(OctaviaClosedCaptionsRenderPipeline + 960) && !*(OctaviaClosedCaptionsRenderPipeline + 968))
  {
    v83 = *(OctaviaClosedCaptionsRenderPipeline + 1256);
    if (v83)
    {
      FigAssetGetCMBaseObject(v83);
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v84 = OUTLINED_FUNCTION_319_0();
        v85(v84);
      }
    }
  }

  v54 = *(a6 + 664);
  if (v54)
  {
    if (CFArrayGetCount(v54) >= 1)
    {
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a6 + 664), 0);
        playerfig_removeAudioRenderPipelineListeners(v40, ValueAtIndex);
        CFArrayRemoveValueAtIndex(*(a6 + 664), 0);
      }

      while (CFArrayGetCount(*(a6 + 664)) > 0);
    }

    v56 = *(a6 + 664);
    if (v56)
    {
      CFRelease(v56);
      *(a6 + 664) = 0;
    }
  }

  *(OctaviaClosedCaptionsRenderPipeline + 1874) = 1;
  if (v41)
  {
    v57 = 1;
  }

  else
  {
    v57 = CMBaseObject;
  }

  OctaviaSubtitleRenderPipeline = kFigRenderPipelineProperty_LoggingIdentifier;
  if ((v57 & 1) == 0)
  {
    v70 = *(a6 + 584);
    if (v70)
    {
      FigBaseObject = FigRenderPipelineGetFigBaseObject(v70);
      v72 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v72)
      {
        v72(FigBaseObject, @"LoggingIdentifier", DerivedStorage, &v1287);
      }

      if (dword_1EAF16A10 >= 2)
      {
        OUTLINED_FUNCTION_362_0();
        v73 = OUTLINED_FUNCTION_252_0();
        OUTLINED_FUNCTION_244_0(v73, v74, v75, v76, v77, v78, v79, v80, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, a1, v1230, allocator, v1238[0], v1238[1], v1243, v1247, alloc, theArray, v1258, v1264, v1272, *(&v1272 + 1), theSet, v1281, v1282, *v1283, type[0], v1285, valuePtr);
        OUTLINED_FUNCTION_125();
        if (v50)
        {
          v82 = v81;
        }

        else
        {
          v82 = v41;
        }

        if (v82)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          *cf = 136315906;
          *&cf[4] = "itemfig_createRenderTriplesForAudio";
          OUTLINED_FUNCTION_215_0();
          *&cf[32] = 2114;
          OUTLINED_FUNCTION_301_0();
          OUTLINED_FUNCTION_52_0();
          OUTLINED_FUNCTION_44_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      playerfig_removeAudioRenderPipelineListeners(v40, *(a6 + 584));
      v96 = *(a6 + 584);
      if (v96)
      {
        CFRelease(v96);
        *(a6 + 584) = 0;
      }

      v97 = *(a6 + 688);
      if (v97)
      {
        CFRelease(v97);
        *(a6 + 688) = 0;
      }

      v98 = *(a6 + 632);
      if (v98)
      {
        CFRelease(v98);
        *(a6 + 632) = 0;
      }

      v99 = *(a6 + 624);
      if (v99)
      {
        CFRelease(v99);
        *(a6 + 624) = 0;
      }

      v100 = *(a6 + 640);
      if (v100)
      {
        CFRelease(v100);
        *(a6 + 640) = 0;
      }

      v101 = *(a6 + 648);
      if (v101)
      {
        CFRelease(v101);
        *(a6 + 648) = 0;
      }
    }

    FPSupport_ReleasePassthroughHelper();
    *(a6 + 952) = 0;
    v102 = OUTLINED_FUNCTION_173_0();
    *(a6 + 664) = CFArrayCreateMutable(v102, v103, v104);
    Count = CFArrayGetCount(*(OctaviaClosedCaptionsRenderPipeline + 648));
    if (Count < 1)
    {
      LOBYTE(a1) = 0;
      OUTLINED_FUNCTION_286_0();
    }

    else
    {
      v106 = Count;
      LOBYTE(a1) = 0;
      v107 = 0;
      v1230 = @"TrackID";
      allocator = DerivedStorage;
      v1190 = @"AudioSubmixID";
      LODWORD(alloc) = 2;
      v1175[0] = @"AudioProcessingTap";
      DerivedStorage = v1247;
      do
      {
        v108 = CFArrayGetValueAtIndex(*(OctaviaClosedCaptionsRenderPipeline + 648), v107);
        if (v108[1] == 1936684398)
        {
          v109 = v108;
          if (*(v108 + 8))
          {
            itemfig_shouldEnableSpatializationForTrack(v1224, *v108);
            v110 = v109[2];
            if (v110)
            {
              CFRelease(v110);
              v109[2] = 0;
            }

            fp_buildAudioRenderPipelineForTrack();
            DerivedStorage = v1247;
            if (!v111)
            {
              alloc = (v109 + 2);
              CFArrayAppendValue(*(a6 + 664), v109[2]);
              *value = *v109;
              *&value[8] = 0;
              *&value[24] = CFRetain(v109[2]);
              v1306 = 0;
              itemfig_updateVolumeOffset(v1224);
              OUTLINED_FUNCTION_439();
              itemfig_applyLoudnessInfo(v112, v113, v114, v115);
              v116 = OUTLINED_FUNCTION_245();
              itemfig_applyAudioProcessingUnitsToTrack(v116, v117);
              v118 = OUTLINED_FUNCTION_245();
              itemfig_applyAllAudioCurvesToTrack(v118, v119);
              itemfig_applyAdjustTargetLevel();
              itemfig_applyAdjustCompressionProfile();
              v120 = CFNumberCreate(allocator, kCFNumberSInt32Type, v109);
              v121 = FigRenderPipelineGetFigBaseObject(v109[2]);
              v122 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v122)
              {
                v122(v121, @"TrackID", v120);
              }

              if (v120)
              {
                CFRelease(v120);
              }

              OUTLINED_FUNCTION_416_0();
              v123 = OUTLINED_FUNCTION_331_0();
              playerfig_determineAudioProcessingTapRoles(v123, v124, v125, v126);
              if (formatDescriptionOut[0].start.value)
              {
                v1166 = formatDescriptionOut[0].start.value;
                v128 = 0;
                v127 = v109 + 2;
              }

              else
              {
                v127 = v109 + 2;
                if (*cf)
                {
                  v1166 = *cf;
                  v128 = *(a6 + 632);
                  if (!v128)
                  {
                    v135 = CFUUIDCreate(allocator);
                    v127 = v109 + 2;
                    v128 = v135;
                    *(a6 + 632) = v135;
                  }
                }

                else
                {
                  v128 = 0;
                  v1166 = 0;
                }
              }

              v129 = FigRenderPipelineGetFigBaseObject(*v127);
              v130 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v130)
              {
                v130(v129, @"AudioSubmixID", v128);
              }

              v131 = FigRenderPipelineGetFigBaseObject(*alloc);
              v132 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v132)
              {
                v132(v131, @"AudioProcessingTap", v1166);
              }

              v133 = *(a6 + 624);
              v134 = *cf;
              *(a6 + 624) = *cf;
              if (v134)
              {
                CFRetain(v134);
              }

              if (v133)
              {
                CFRelease(v133);
              }

              OUTLINED_FUNCTION_373();
              itemfig_applyTimePitchAlgorithmToTrack();
              LOBYTE(a1) = 1;
              fp_createAudioRenderPipelineOptionsForTrack();
              CFArrayAppendValue(theArray, value);
              itemfig_resetRenderTriple(value);
              LODWORD(alloc) = 0;
              DerivedStorage = v1247;
            }
          }
        }

        ++v107;
      }

      while (v106 != v107);
    }

    playerfig_applyEQPreset();
    playerfig_applySoftwareVolume(*(a6 + 804), 0.0, v40, @"SoftwareVolume1", 0);
    if (*(a6 + 812))
    {
      playerfig_applySoftwareVolume(*(a6 + 808), 0.0, v40, @"SoftwareVolume2", 1);
    }

    v136 = 1.0;
    if (*(a6 + 813))
    {
      v136 = 0.0;
    }

    playerfig_applySoftwareVolume(v136, 0.0, v40, @"SoftwareVolume5", 1);
    OctaviaSubtitleRenderPipeline = v1264;
    goto LABEL_203;
  }

  allocator = (OctaviaClosedCaptionsRenderPipeline + 1036);
  v58 = *(OctaviaClosedCaptionsRenderPipeline + 1036);
  if (!v58 || v41)
  {
    OUTLINED_FUNCTION_359_0();
    if (v59)
    {
      if (dword_1EAF16A10 >= 2)
      {
        OUTLINED_FUNCTION_362_0();
        v60 = OUTLINED_FUNCTION_252_0();
        OUTLINED_FUNCTION_244_0(v60, v61, v62, v63, v64, v65, v66, v67, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, a1, v1230, allocator, v1238[0], v1238[1], v1243, v1247, alloc, theArray, v1258, v1264, v1272, *(&v1272 + 1), theSet, v1281, v1282, *v1283, type[0], v1285, valuePtr);
        OUTLINED_FUNCTION_125();
        if (v50)
        {
          v69 = v68;
        }

        else
        {
          v69 = v41;
        }

        if (v69)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          *cf = 136315650;
          *&cf[4] = "itemfig_createRenderTriplesForAudio";
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_52_0();
          OUTLINED_FUNCTION_44_0();
          _os_log_send_and_compose_impl();
          v41 = valuePtr;
        }

        OUTLINED_FUNCTION_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        OUTLINED_FUNCTION_359_0();
      }

      playerfig_removeAudioRenderPipelineListeners(v40, v59);
      v137 = *(a6 + 584);
      if (v137)
      {
        CFRelease(v137);
        *(a6 + 584) = 0;
      }

      v138 = *(a6 + 688);
      if (v138)
      {
        CFRelease(v138);
        *(a6 + 688) = 0;
      }
    }

    if (*(a6 + 1137) && ((*allocator == 0) & ~v46) == 0)
    {
      if (dword_1EAF16A10)
      {
        OUTLINED_FUNCTION_362_0();
        v139 = OUTLINED_FUNCTION_252_0();
        OUTLINED_FUNCTION_244_0(v139, v140, v141, v142, v143, v144, v145, v146, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v1230, allocator, v1238[0], v1238[1], v1243, v1247, alloc, theArray, v1258, v1264, v1272, *(&v1272 + 1), theSet, v1281, v1282, *v1283, type[0], v1285, valuePtr);
        OUTLINED_FUNCTION_125();
        if (v50)
        {
          v148 = v147;
        }

        else
        {
          v148 = v41;
        }

        if (v148)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          *cf = 136315650;
          *&cf[4] = "itemfig_createRenderTriplesForAudio";
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_52_0();
          OUTLINED_FUNCTION_44_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        OctaviaSubtitleRenderPipeline = v1265;
      }

      playerfig_removeAudioRenderPipelineListeners(v40, *(a6 + 584));
    }

    goto LABEL_202;
  }

  valuePtr = 0;
  isTrackAC3 = itemfig_isTrackAC3(a1, v58);
  v150 = OUTLINED_FUNCTION_411_0();
  LODWORD(v1230) = itemfig_isTrackEnhancedAC3(v150, v151);
  v152 = OUTLINED_FUNCTION_411_0();
  LODWORD(v1190) = itemfig_isTrackAtmos(v152, v153);
  v154 = OUTLINED_FUNCTION_411_0();
  canTrackPassthrough = itemfig_canTrackPassthrough(v154, v155);
  v157 = OUTLINED_FUNCTION_411_0();
  isTrackDecodable = itemfig_isTrackDecodable(v157, v158);
  LODWORD(formatDescriptionOut[0].start.value) = 0;
  MaximumNumberOfSpatializedOutputChannels = itemfig_getMaximumNumberOfSpatializedOutputChannels(a1, formatDescriptionOut);
  v161 = v1264;
  LODWORD(alloc) = isTrackAC3;
  v162 = 0;
  if (v1264)
  {
    v633 = !isTrackDecodable || MaximumNumberOfSpatializedOutputChannels != 0 || SLODWORD(formatDescriptionOut[0].start.value) < 3;
    if (!isTrackAC3 || !v633)
    {
      v161 = 0;
      goto LABEL_191;
    }

    v161 = 0;
    v163 = 1;
    if (canTrackPassthrough)
    {
      if (!itemfig_isAC3PassthroughSupported())
      {
        v162 = 0;
        v161 = 0;
        goto LABEL_191;
      }

      v163 = 0;
      v161 = 1;
      v162 = 1633889587;
    }
  }

  else
  {
LABEL_191:
    v163 = 1;
  }

  LODWORD(v1175[0]) = v161;
  LODWORD(v1166) = v162;
  if (dword_1EAF16A10 <= 1)
  {
    if (isTrackDecodable)
    {
      OctaviaSubtitleRenderPipeline = 0;
    }

    else
    {
      OctaviaSubtitleRenderPipeline = v163;
    }
  }

  else
  {
    LODWORD(v1162) = v163;
    LODWORD(v1158) = isTrackDecodable;
    OUTLINED_FUNCTION_230_0();
    v164 = OUTLINED_FUNCTION_177_0();
    v165 = *type;
    os_log_type_enabled(v164, v1283[0]);
    OUTLINED_FUNCTION_125();
    if (v50)
    {
      v167 = v166;
    }

    else
    {
      v167 = v165;
    }

    if (v167)
    {
      if (a1)
      {
        v763 = (CMBaseObjectGetDerivedStorage() + 2096);
      }

      else
      {
        v763 = "";
      }

      *cf = 136316418;
      *&cf[4] = "itemfig_createRenderTriplesForAudio";
      *&cf[12] = 2082;
      *&cf[14] = v763;
      *&cf[22] = 1024;
      *&cf[24] = v1158;
      *&cf[28] = 1024;
      *&cf[30] = isTrackAC3;
      *&cf[34] = 1024;
      *&cf[36] = v1230;
      *&cf[40] = 1024;
      *v1291 = v1190;
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
      v168 = v1158;
      v165 = *type;
    }

    else
    {
      v168 = v1158;
    }

    OUTLINED_FUNCTION_2();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (v168)
    {
      OctaviaSubtitleRenderPipeline = 0;
    }

    else
    {
      OctaviaSubtitleRenderPipeline = v1162;
    }

    if (OctaviaSubtitleRenderPipeline == 1 && dword_1EAF16A10 >= 2)
    {
      OUTLINED_FUNCTION_230_0();
      v805 = OUTLINED_FUNCTION_177_0();
      OUTLINED_FUNCTION_182_0(v805, v806, v807, v808, v809, v810, v811, v812, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, a1, v1230, allocator, v1238[0], v1238[1], v1243, v1247, alloc, theArray, v1258, v1264, v1272, *(&v1272 + 1), theSet, v1281, v1282, v1283[0], *&v1283[4], *type);
      OUTLINED_FUNCTION_125();
      if (v50)
      {
        v814 = v813;
      }

      else
      {
        v814 = v165;
      }

      if (v814)
      {
        *cf = 136315138;
        *&cf[4] = "itemfig_createRenderTriplesForAudio";
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_322_0();
      }

      OUTLINED_FUNCTION_109();
      OctaviaSubtitleRenderPipeline = 1;
      OUTLINED_FUNCTION_72_0();
    }
  }

  TrackStorage = itemfig_getTrackStorage(a1, *allocator, &valuePtr);
  if (TrackStorage)
  {
    goto LABEL_1649;
  }

  v816 = valuePtr;
  v817 = *(valuePtr + 2);
  if (v817)
  {
    CFRelease(v817);
    v816[2] = 0;
  }

  if ((OctaviaSubtitleRenderPipeline & 1) == 0)
  {
    *value = *allocator;
    fp_createAudioRenderPipelineOptionsForTrack();
    if (!TrackStorage)
    {
      v843 = *(OctaviaClosedCaptionsRenderPipeline + 1008);
      v844 = *(OctaviaClosedCaptionsRenderPipeline + 1036);
      v845 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v845)
      {
        v21 = 4294954514;
LABEL_1357:
        RenderTriplesForVideoComposition = 2;
        goto LABEL_1358;
      }

      TrackStorage = v845(v843, v844, &v1289, 0);
      if (!TrackStorage)
      {
        TrackStorage = itemfig_copyFormatDescription(v1289, &v1288);
        if (!TrackStorage)
        {
          v846 = *(OctaviaClosedCaptionsRenderPipeline + 368);
          if (v846)
          {
            itemfig_reuseExistingRenderPipeline(v846, value);
          }

          if (*&value[24])
          {
            OUTLINED_FUNCTION_286_0();
            OctaviaSubtitleRenderPipeline = v1264;
LABEL_1582:
            v816[2] = CFRetain(v847);
LABEL_1583:
            CFArrayAppendValue(theArray, value);
            itemfig_resetRenderTriple(value);
            LOBYTE(a1) = 1;
            goto LABEL_203;
          }

          v1230 = v40;
          if (*(a6 + 584))
          {
            if (i && playerfig_doingGapless() && itemfig_canItemAudioTrackReusePreviousItemAudioRenderPipeline(v1224))
            {
              v1066 = FigRenderPipelineGetFigBaseObject(*(a6 + 584));
              CMBaseObjectCopyProperty(v1066, @"LoggingIdentifier", DerivedStorage, &v1287);
              if (dword_1EAF16A10)
              {
                OUTLINED_FUNCTION_230_0();
                v1067 = OUTLINED_FUNCTION_177_0();
                OUTLINED_FUNCTION_182_0(v1067, v1068, v1069, v1070, v1071, v1072, v1073, v1074, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v40, allocator, v1238[0], v1238[1], v1243, v1247, alloc, theArray, v1258, v1264, v1272, *(&v1272 + 1), theSet, v1281, v1282, v1283[0], *&v1283[4], *type);
                OUTLINED_FUNCTION_125();
                if (v50)
                {
                  v1076 = v1075;
                }

                else
                {
                  v1076 = v844;
                }

                if (v1076)
                {
                  if (v1224)
                  {
                    v1097 = (CMBaseObjectGetDerivedStorage() + 2096);
                  }

                  else
                  {
                    v1097 = "";
                  }

                  *cf = 136316162;
                  *&cf[4] = "itemfig_createRenderTriplesForAudio";
                  *&cf[12] = 2048;
                  *&cf[14] = v1224;
                  *&cf[22] = 2082;
                  *&cf[24] = v1097;
                  *&cf[32] = 2048;
                  OUTLINED_FUNCTION_301_0();
                  *v1291 = 2114;
                  *&v1291[2] = v1098;
                  OUTLINED_FUNCTION_52_0();
                  OUTLINED_FUNCTION_38();
                  _os_log_send_and_compose_impl();
                  OUTLINED_FUNCTION_322_0();
                }

                OUTLINED_FUNCTION_2();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              if (v1287)
              {
                CFRelease(v1287);
                v1287 = 0;
              }

              *&value[24] = CFRetain(*(a6 + 584));
              v1099 = *(a6 + 688);
              v1100 = v1288;
              *(a6 + 688) = v1288;
              if (v1100)
              {
                CFRetain(v1100);
              }

              if (v1099)
              {
                CFRelease(v1099);
              }

              LODWORD(alloc) = 1;
              fp_createAudioRenderPipelineOptionsForTrack();
              if (!TrackStorage)
              {
                *(OctaviaClosedCaptionsRenderPipeline + 1772) = 1;
                goto LABEL_1580;
              }

              goto LABEL_1649;
            }

            if (dword_1EAF16A10 >= 2)
            {
              OUTLINED_FUNCTION_230_0();
              v960 = OUTLINED_FUNCTION_177_0();
              OUTLINED_FUNCTION_182_0(v960, v961, v962, v963, v964, v965, v966, v967, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v40, allocator, v1238[0], v1238[1], v1243, v1247, alloc, theArray, v1258, v1264, v1272, *(&v1272 + 1), theSet, v1281, v1282, v1283[0], *&v1283[4], *type);
              OUTLINED_FUNCTION_125();
              if (v50)
              {
                v969 = v968;
              }

              else
              {
                v969 = v844;
              }

              if (v969)
              {
                if (v1224)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                *cf = 136315650;
                OUTLINED_FUNCTION_97_0();
                *&cf[14] = v1224;
                OUTLINED_FUNCTION_25_0();
                OUTLINED_FUNCTION_38();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_322_0();
              }

              OUTLINED_FUNCTION_2();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            playerfig_removeAudioRenderPipelineListeners(v1230, *(a6 + 584));
            v1059 = *(a6 + 584);
            if (v1059)
            {
              CFRelease(v1059);
              *(a6 + 584) = 0;
            }
          }

          else if (dword_1EAF16A10 >= 2)
          {
            OUTLINED_FUNCTION_230_0();
            v1024 = OUTLINED_FUNCTION_177_0();
            OUTLINED_FUNCTION_182_0(v1024, v1025, v1026, v1027, v1028, v1029, v1030, v1031, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v40, allocator, v1238[0], v1238[1], v1243, v1247, alloc, theArray, v1258, v1264, v1272, *(&v1272 + 1), theSet, v1281, v1282, v1283[0], *&v1283[4], *type);
            OUTLINED_FUNCTION_125();
            if (v50)
            {
              v1033 = v1032;
            }

            else
            {
              v1033 = v844;
            }

            if (v1033)
            {
              if (v1224)
              {
                CMBaseObjectGetDerivedStorage();
              }

              *cf = 136315650;
              OUTLINED_FUNCTION_97_0();
              *&cf[14] = v1224;
              OUTLINED_FUNCTION_25_0();
              OUTLINED_FUNCTION_38();
              _os_log_send_and_compose_impl();
              OUTLINED_FUNCTION_322_0();
            }

            OUTLINED_FUNCTION_2();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          LODWORD(alloc) = 2;
LABEL_1580:
          v847 = *&value[24];
          if (*&value[24])
          {
            DerivedStorage = v1247;
            OctaviaSubtitleRenderPipeline = v1264;
            goto LABEL_1582;
          }

          LODWORD(v1190) = itemfig_shouldEnableSpatializationForTrack(v1224, *allocator);
          fp_createAudioRenderPipelineOptionsForTrack();
          if (!v1060)
          {
            fp_buildAudioRenderPipelineForTrack();
            if (!v1060)
            {
              v1061 = FigRenderPipelineGetFigBaseObject(*&value[24]);
              CMBaseObjectCopyProperty(v1061, @"LoggingIdentifier", DerivedStorage, &v1287);
              if (dword_1EAF16A10)
              {
                OUTLINED_FUNCTION_230_0();
                v1062 = OUTLINED_FUNCTION_177_0();
                v1063 = *type;
                os_log_type_enabled(v1062, v1283[0]);
                OUTLINED_FUNCTION_425();
                if (v50)
                {
                  v1065 = v1064;
                }

                else
                {
                  v1065 = v1063;
                }

                if (v1065)
                {
                  if (v1224)
                  {
                    v1077 = (CMBaseObjectGetDerivedStorage() + 2096);
                  }

                  else
                  {
                    v1077 = "";
                  }

                  *cf = 136316162;
                  *&cf[4] = "itemfig_createRenderTriplesForAudio";
                  *&cf[12] = 2048;
                  *&cf[14] = v1224;
                  *&cf[22] = 2082;
                  *&cf[24] = v1077;
                  *&cf[32] = 2048;
                  OUTLINED_FUNCTION_301_0();
                  *v1291 = 2114;
                  *&v1291[2] = v1078;
                  OUTLINED_FUNCTION_52_0();
                  OUTLINED_FUNCTION_27();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_635();
              }

              v1079 = *&value[24];
              if (*&value[24])
              {
                v1079 = CFRetain(*&value[24]);
              }

              *(a6 + 584) = v1079;
              *(a6 + 960) = v1175[0];
              *(a6 + 964) = v1166;
              v1080 = *(a6 + 688);
              v1081 = v1288;
              *(a6 + 688) = v1288;
              if (v1081)
              {
                CFRetain(v1081);
              }

              if (v1080)
              {
                CFRelease(v1080);
              }

              playerfig_applyEQPreset();
              playerfig_applySoftwareVolume(*(a6 + 804), 0.0, v1230, @"SoftwareVolume1", 0);
              if (*(a6 + 812))
              {
                playerfig_applySoftwareVolume(*(a6 + 808), 0.0, v1230, @"SoftwareVolume2", 1);
              }

              v1082 = 1.0;
              if (*(a6 + 813))
              {
                v1082 = 0.0;
              }

              playerfig_applySoftwareVolume(v1082, 0.0, v1230, @"SoftwareVolume5", 1);
              v1083 = *&value[24];
              if (*&value[24])
              {
                v1083 = CFRetain(*&value[24]);
              }

              v816[2] = v1083;
              *(OctaviaClosedCaptionsRenderPipeline + 1874) = 0;
              OUTLINED_FUNCTION_439();
              itemfig_applyLoudnessInfo(v1084, v1085, v1086, v1087);
              itemfig_updateVolumeOffset(v1224);
              itemfig_applyAudioProcessingUnitsToTrack(OctaviaClosedCaptionsRenderPipeline, v816);
              itemfig_applyAllAudioCurvesToTrack(OctaviaClosedCaptionsRenderPipeline, v816);
              itemfig_applyAdjustTargetLevel();
              itemfig_applyAdjustCompressionProfile();
              v1088 = CFNumberCreate(DerivedStorage, kCFNumberSInt32Type, allocator);
              v1089 = FigRenderPipelineGetFigBaseObject(v816[2]);
              CMBaseObjectSetProperty(v1089, @"TrackID", v1088);
              if (v1088)
              {
                CFRelease(v1088);
              }

              OUTLINED_FUNCTION_416_0();
              playerfig_determineAudioProcessingTapRoles(v816, OctaviaClosedCaptionsRenderPipeline, v1090, v1091);
              v1092 = formatDescriptionOut[0].start.value;
              if (!formatDescriptionOut[0].start.value && (v1092 = *cf) != 0)
              {
                v1093 = *(a6 + 632);
                if (!v1093)
                {
                  v1093 = CFUUIDCreate(DerivedStorage);
                  *(a6 + 632) = v1093;
                }
              }

              else
              {
                v1093 = 0;
              }

              v1094 = FigRenderPipelineGetFigBaseObject(v816[2]);
              CMBaseObjectSetProperty(v1094, @"AudioSubmixID", v1093);
              v1095 = FigRenderPipelineGetFigBaseObject(v816[2]);
              CMBaseObjectSetProperty(v1095, @"AudioProcessingTap", v1092);
              v1096 = *(a6 + 624);
              *(a6 + 624) = v1092;
              if (v1092)
              {
                CFRetain(v1092);
              }

              if (v1096)
              {
                CFRelease(v1096);
              }

              *(a6 + 656) = v1190;
              itemfig_applyTimePitchAlgorithmToTrack();
              itemfig_applyAudioSceneCompositionPresetToTrack(v816);
              LODWORD(alloc) = 0;
              DerivedStorage = v1247;
              OctaviaSubtitleRenderPipeline = v1264;
              goto LABEL_1583;
            }
          }

          v21 = v1060;
          RenderTriplesForVideoComposition = alloc;
LABEL_1358:
          LOBYTE(a1) = 0;
          i = HIDWORD(v1219);
          DerivedStorage = v1247;
          OctaviaSubtitleRenderPipeline = v1264;
          p_duration = v1272;
          CMBaseObject = theArray;
          if (v1264)
          {
            goto LABEL_205;
          }

          goto LABEL_206;
        }
      }
    }

LABEL_1649:
    v21 = TrackStorage;
    goto LABEL_1357;
  }

  OUTLINED_FUNCTION_359_0();
  if (v818)
  {
    if (dword_1EAF16A10 >= 2)
    {
      OUTLINED_FUNCTION_230_0();
      v819 = OUTLINED_FUNCTION_177_0();
      v820 = *type;
      OctaviaSubtitleRenderPipeline = v1283[0];
      os_log_type_enabled(v819, v1283[0]);
      OUTLINED_FUNCTION_125();
      if (v50)
      {
        v822 = v821;
      }

      else
      {
        v822 = v820;
      }

      if (v822)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        *cf = 136315650;
        *&cf[4] = "itemfig_createRenderTriplesForAudio";
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_44_0();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_322_0();
      }

      OUTLINED_FUNCTION_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      OUTLINED_FUNCTION_359_0();
    }

    playerfig_removeAudioRenderPipelineListeners(v40, v818);
    v841 = *(a6 + 584);
    if (v841)
    {
      CFRelease(v841);
      *(a6 + 584) = 0;
    }

    v842 = *(a6 + 688);
    if (v842)
    {
      CFRelease(v842);
      *(a6 + 688) = 0;
    }
  }

LABEL_202:
  FPSupport_ReleasePassthroughHelper();
  LOBYTE(a1) = 0;
  *(a6 + 952) = 0;
  OUTLINED_FUNCTION_286_0();
LABEL_203:
  if (v1170)
  {
    if (*(a6 + 60) == 2)
    {
      playerfig_UpdateAudioSessionPreferredDeviceFormat();
      playerfig_UpdateAudioSessionPreferredDeviceSampleRate();
      playerfig_UpdateAudioSessionPreferredNumberOfAudioOutputChannels();
    }

    itemfig_InformStakeholdersOfBestAvailableAudioContentType(v1224);
  }

  v21 = 0;
  i = HIDWORD(v1219);
  p_duration = v1272;
  CMBaseObject = theArray;
  RenderTriplesForVideoComposition = alloc;
  if (OctaviaSubtitleRenderPipeline)
  {
LABEL_205:
    CFRelease(OctaviaSubtitleRenderPipeline);
  }

LABEL_206:
  v1298[0] = CMBaseObject;
  itemfig_resetRenderTriple(value);
  if (v1289)
  {
    CFRelease(v1289);
  }

  if (v1288)
  {
    CFRelease(v1288);
  }

  if (v1287)
  {
    CFRelease(v1287);
  }

  if (!i && !v21)
  {
    *(OctaviaClosedCaptionsRenderPipeline + 2065) = a1;
  }

  if (p_duration)
  {
    *p_duration = RenderTriplesForVideoComposition;
  }

  a1 = v1224;
  if (*(OctaviaClosedCaptionsRenderPipeline + 2024) == 0.0)
  {
    *(OctaviaClosedCaptionsRenderPipeline + 2024) = CFAbsoluteTimeGetCurrent();
  }

  if (v21)
  {
    goto LABEL_1362;
  }

  i = CMBaseObjectGetDerivedStorage();
  v169 = *(i + 648);
  if (v169)
  {
    OctaviaSubtitleRenderPipeline = CFArrayGetCount(v169);
  }

  else
  {
    OctaviaSubtitleRenderPipeline = 0;
  }

  memset(cf, 0, 40);
  if ((theSet & 1) == 0)
  {
    FigXMLNodeGetTag(*(i + 1808));
    CMBaseObject = 0;
    if (FigCFDictionaryGetCount() < 1 || OctaviaSubtitleRenderPipeline < 1)
    {
      goto LABEL_258;
    }

    while (*(CFArrayGetValueAtIndex(*(i + 648), 0) + 1) != 1835365473)
    {
      OUTLINED_FUNCTION_378_0();
      if (v50)
      {
        CMBaseObject = 0;
        DerivedStorage = v1247;
        goto LABEL_258;
      }
    }

    itemfig_resetRenderTriple(cf);
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_189_0();
    v1298[1] = 0;
    v21 = 4294954433;
    goto LABEL_749;
  }

  RenderTriplesForVideoComposition = *MEMORY[0x1E695E480];
  v170 = OUTLINED_FUNCTION_249();
  Mutable = CFArrayCreateMutable(v170, v171, v172);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_39_0();
    v21 = FigSignalErrorAtGM();
    itemfig_resetRenderTriple(cf);
    v1298[1] = 0;
    if (!v21)
    {
      goto LABEL_259;
    }

    goto LABEL_1362;
  }

  CMBaseObject = Mutable;
  FigXMLNodeGetTag(*(i + 1808));
  if (FigCFDictionaryGetCount() >= 1)
  {
    v174 = OUTLINED_FUNCTION_249();
    MutableCopy = CFArrayCreateMutableCopy(v174, v175, v176);
    if (OctaviaSubtitleRenderPipeline >= 1)
    {
      v179 = 0;
      *&v178 = 136315394;
      v1272 = v178;
      do
      {
        v180 = *CFArrayGetValueAtIndex(*(i + 648), v179);
        v1289 = 0;
        OUTLINED_FUNCTION_303_0();
        if (v50)
        {
          v181 = FPSupport_CreateAndAddMetadataOutputRenderPipelinesForTrackWithID(*(i + 1808), v180, &v1289);
          if (v181)
          {
            v182 = v181;
            LODWORD(v1288) = 0;
            LOBYTE(v1287) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v184 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v1287);
            if (OUTLINED_FUNCTION_71_0(v184))
            {
              *value = v1272;
              *&value[4] = "itemfig_createRenderTriplesForMetadataOutputs";
              *&value[12] = 1024;
              *&value[14] = v182;
              LODWORD(v1107) = 18;
              v1101 = value;
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_449();
          }

          else if (CFArrayGetCount(v1289) >= 1)
          {
            v185 = 0;
            do
            {
              v186 = CFArrayGetValueAtIndex(v1289, v185);
              v187 = OUTLINED_FUNCTION_502();
              CFArrayAppendValue(v187, v188);
              *cf = v180;
              if (v186)
              {
                v189 = CFRetain(v186);
              }

              else
              {
                v189 = 0;
              }

              *&cf[24] = v189;
              CFArrayAppendValue(CMBaseObject, cf);
              itemfig_resetRenderTriple(cf);
              ++v185;
            }

            while (v185 < CFArrayGetCount(v1289));
          }

          DerivedStorage = v1247;
          if (v1289)
          {
            CFRelease(v1289);
          }
        }

        ++v179;
      }

      while (v179 != OctaviaSubtitleRenderPipeline);
    }

    v190 = *(i + 1816);
    *(i + 1816) = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    a1 = v1224;
    if (v190)
    {
      CFRelease(v190);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

LABEL_258:
  itemfig_resetRenderTriple(cf);
  v1298[1] = CMBaseObject;
LABEL_259:
  CMBaseObject = CMBaseObjectGetDerivedStorage();
  RenderTriplesForVideoComposition = CMBaseObjectGetDerivedStorage();
  OctaviaClosedCaptionsRenderPipeline = CFArrayGetCount(*(CMBaseObject + 648));
  i = *(CMBaseObject + 1063);
  FigSimpleMutexLock();
  v192 = *(RenderTriplesForVideoComposition + 472);
  if (v192)
  {
    OctaviaSubtitleRenderPipeline = CFRetain(v192);
  }

  else
  {
    OctaviaSubtitleRenderPipeline = 0;
  }

  a6 = 1751216244;
  FigSimpleMutexUnlock();
  if (OctaviaSubtitleRenderPipeline)
  {
    v193 = 1;
  }

  else
  {
    v193 = i == 0;
  }

  if (v193)
  {
    v194 = i;
  }

  else
  {
    v194 = 0;
  }

  if (HIDWORD(v1219) && OctaviaClosedCaptionsRenderPipeline >= 1)
  {
    for (i = 0; OctaviaClosedCaptionsRenderPipeline != i; ++i)
    {
      CFArrayGetValueAtIndex(*(CMBaseObject + 648), i);
      OUTLINED_FUNCTION_303_0();
      if (v50)
      {
        if (v194 && *(v195 + 8))
        {
          if (!*(v195 + 16))
          {
            goto LABEL_1175;
          }
        }

        else if (*(v195 + 16))
        {
LABEL_1175:
          p_duration = 0;
          v1273 = 0;
          v21 = 4294954433;
          goto LABEL_325;
        }
      }
    }
  }

  alloc = OctaviaSubtitleRenderPipeline;
  if (OctaviaClosedCaptionsRenderPipeline < 1)
  {
    i = 0;
  }

  else
  {
    OUTLINED_FUNCTION_164_0();
    do
    {
      CFArrayGetValueAtIndex(*(CMBaseObject + 648), OctaviaSubtitleRenderPipeline);
      OUTLINED_FUNCTION_303_0();
      if (v50)
      {
        v197 = v196;
        if (v194 && *(v196 + 8))
        {
          ++i;
        }

        else
        {
          v198 = *(v196 + 16);
          if (v198)
          {
            CFRelease(v198);
            *(v197 + 16) = 0;
          }
        }
      }

      ++OctaviaSubtitleRenderPipeline;
    }

    while (OctaviaClosedCaptionsRenderPipeline != OctaviaSubtitleRenderPipeline);
  }

  v199 = *(RenderTriplesForVideoComposition + 680);
  if (v199)
  {
    CFRelease(v199);
    *(RenderTriplesForVideoComposition + 680) = 0;
  }

  v1266 = *MEMORY[0x1E695E480];
  DerivedStorage = v1247;
  OctaviaSubtitleRenderPipeline = alloc;
  v1273 = CFArrayCreateMutable(*MEMORY[0x1E695E480], i, &_MergedGlobals);
  if (v1273)
  {
    if (i <= 0)
    {
      v899 = *(CMBaseObject + 1064);
      if (!v899)
      {
        goto LABEL_298;
      }

      CFRelease(v899);
      p_duration = 0;
      v21 = 0;
      *(CMBaseObject + 1064) = 0;
    }

    else
    {
      v200 = CFArrayCreateMutable(v1266, i, MEMORY[0x1E695E9C0]);
      *(RenderTriplesForVideoComposition + 680) = v200;
      if (v200)
      {
        i = CMBaseObject + 1064;
        if (*(CMBaseObject + 1064))
        {
          if (OctaviaClosedCaptionsRenderPipeline < 1)
          {
LABEL_298:
            p_duration = 0;
            v21 = 0;
            goto LABEL_325;
          }

LABEL_301:
          theArray = (CMBaseObject + 1064);
          v201 = 0;
          p_duration = 0;
          v1166 = @"STSLabel";
          allocator = @"ActiveHapticChannelIndex";
          v1230 = @"SoftwareVolume1";
          v1190 = @"Muted";
          v1175[0] = *MEMORY[0x1E695E4D0];
          do
          {
            CFArrayGetValueAtIndex(*(CMBaseObject + 648), v201);
            OUTLINED_FUNCTION_303_0();
            if (v50)
            {
              i = v202;
              if (*(v202 + 8))
              {
                v203 = (v202 + 16);
                if (*(v202 + 16) || !FigHapticRenderPipelineCreate(v1266, 0, *theArray, (v202 + 16)))
                {
                  FigSimpleMutexLock();
                  v204 = *(RenderTriplesForVideoComposition + 16);
                  if (v204)
                  {
                    p_duration = CFRetain(v204);
                    FigSimpleMutexUnlock();
                    if (p_duration)
                    {
                      v205 = FigRenderPipelineGetFigBaseObject(*v203);
                      v206 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (v206)
                      {
                        v206(v205, @"STSLabel", p_duration);
                      }
                    }
                  }

                  else
                  {
                    FigSimpleMutexUnlock();
                    p_duration = 0;
                  }

                  v207 = *(i + 176);
                  if (v207)
                  {
                    v208 = FigRenderPipelineGetFigBaseObject(*v203);
                    v209 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v209)
                    {
                      v209(v208, @"ActiveHapticChannelIndex", v207);
                    }
                  }

                  v210 = *(i + 184);
                  if (v210)
                  {
                    v211 = FigRenderPipelineGetFigBaseObject(*v203);
                    v212 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v212)
                    {
                      v212(v211, @"SoftwareVolume1", v210);
                    }
                  }

                  if (*(i + 9))
                  {
                    v213 = FigRenderPipelineGetFigBaseObject(*v203);
                    v214 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v214)
                    {
                      v214(v213, @"Muted", v1175[0]);
                    }
                  }

                  CFArrayAppendValue(*(RenderTriplesForVideoComposition + 680), *(i + 16));
                  memset(formatDescriptionOut, 0, 40);
                  LODWORD(formatDescriptionOut[0].start.value) = *i;
                  formatDescriptionOut[0].duration.value = *(i + 16);
                  CFArrayAppendValue(v1273, formatDescriptionOut);
                  a1 = v1224;
                  DerivedStorage = v1247;
                }
              }
            }

            ++v201;
          }

          while (OctaviaClosedCaptionsRenderPipeline != v201);
          v21 = 0;
          OctaviaSubtitleRenderPipeline = alloc;
        }

        else
        {
          p_duration = 0;
          v21 = FigHapticEngineCreate(v1266, alloc, *(CMBaseObject + 1072), (CMBaseObject + 1064));
          if (!v21 && OctaviaClosedCaptionsRenderPipeline > 0)
          {
            goto LABEL_301;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_39_0();
        v21 = FigSignalErrorAtGM();
        p_duration = 0;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_39_0();
    v21 = FigSignalErrorAtGM();
    p_duration = 0;
    v1273 = 0;
  }

LABEL_325:
  if (OctaviaSubtitleRenderPipeline)
  {
    CFRelease(OctaviaSubtitleRenderPipeline);
  }

  if (p_duration)
  {
    CFRelease(p_duration);
  }

  *&v1299 = v1273;
  if (v21)
  {
    goto LABEL_1362;
  }

  OctaviaSubtitleRenderPipeline = v1238[0] & 1;
  i = CMBaseObjectGetDerivedStorage();
  v215 = *(i + 8);
  CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  v1287 = 0;
  *v1283 = 0;
  *type = 0;
  OUTLINED_FUNCTION_80_0();
  v1282 = 0;
  LODWORD(theArray) = v1238[0] & 1;
  if ((theSet & 1) == 0)
  {
    OctaviaClosedCaptionsRenderPipeline = 0;
    v21 = 0;
    v1267 = 0;
    *&v1272 = 0;
    p_duration = 0;
    v219 = *(i + 656);
    i = 0;
    if (v219)
    {
      v220 = v1238[0] & 1;
    }

    else
    {
      v220 = 1;
    }

    OctaviaSubtitleRenderPipeline = 0;
    if (v220)
    {
      RenderTriplesForVideoComposition = 0;
    }

    else
    {
      RenderTriplesForVideoComposition = 4294954433;
    }

    goto LABEL_340;
  }

  v217 = v216;
  CMBaseObject = *MEMORY[0x1E695E480];
  if (!*(v216 + 972))
  {
    alloc = 0;
    v21 = 0;
    goto LABEL_342;
  }

  v21 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (v216 + 972), 0x600u);
  v218 = CFDictionaryCreateMutable(CMBaseObject, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v218)
  {
    OUTLINED_FUNCTION_39_0();
    RenderTriplesForVideoComposition = FigSignalErrorAtGM();
    OctaviaClosedCaptionsRenderPipeline = 0;
    OUTLINED_FUNCTION_368_0();
    v1267 = 0;
    *&v1272 = 0;
    p_duration = 0;
    goto LABEL_340;
  }

  alloc = v218;
  FigCFDictionarySetValue();
LABEL_342:
  v221 = OUTLINED_FUNCTION_383();
  OctaviaSubtitleRenderPipeline = CFArrayCreateMutable(v221, v222, v223);
  if (!OctaviaSubtitleRenderPipeline || (v224 = OUTLINED_FUNCTION_383(), (allocator = CFArrayCreateMutable(v224, v225, v226)) == 0))
  {
    OUTLINED_FUNCTION_39_0();
    RenderTriplesForVideoComposition = FigSignalErrorAtGM();
    i = 0;
    v1267 = 0;
    *&v1272 = 0;
    p_duration = 0;
    a6 = v1215;
    OctaviaClosedCaptionsRenderPipeline = alloc;
    goto LABEL_479;
  }

  FigSimpleMutexLock();
  v227 = *(i + 1776);
  if (v227)
  {
    *&v1272 = CFRetain(v227);
  }

  else
  {
    *&v1272 = 0;
  }

  FigSimpleMutexUnlock();
  if (FigUseVideoReceiverForCALayer())
  {
    v1267 = 0;
  }

  else
  {
    FigSimpleMutexLock();
    v228 = *(v217 + 216);
    if (v228)
    {
      v1267 = CFRetain(v228);
    }

    else
    {
      v1267 = 0;
    }

    FigSimpleMutexUnlock();
  }

  v1166 = CMBaseObject;
  FigSimpleMutexLock();
  v230 = *(v217 + 264);
  v1238[0] = v21;
  if (v230)
  {
    p_duration = CFRetain(v230);
  }

  else
  {
    p_duration = 0;
  }

  FigSimpleMutexUnlock();
  shouldEnableMainVideo = itemfig_shouldEnableMainVideo();
  v232 = *(v217 + 592);
  if (v232)
  {
    CFRelease(v232);
    *(v217 + 592) = 0;
  }

  v233 = *(v217 + 672);
  if (v233)
  {
    CFRelease(v233);
    *(v217 + 672) = 0;
  }

  v234 = *(v217 + 616);
  if (v234)
  {
    CFRelease(v234);
    *(v217 + 616) = 0;
  }

  v235 = *(i + 656);
  LODWORD(v1190) = v235 != 0;
  LODWORD(v1175[0]) = *(i + 832) != 0;
  if (!v235)
  {
    playeritemfig_releaseVideoCompositionObjects();
  }

  if (v1258 && shouldEnableMainVideo)
  {
    v1230 = OctaviaSubtitleRenderPipeline;
    if (v1272)
    {
      v236 = CFArrayGetCount(v1272) > 0;
    }

    else
    {
      v236 = 0;
    }

    v237 = 0;
    if (p_duration)
    {
      goto LABEL_380;
    }

LABEL_381:
    for (j = 0; v237 < j; j = CFArrayGetCount(p_duration))
    {
      v238 = CFArrayGetValueAtIndex(p_duration, v237);
      v239 = CFGetAllocator(v215);
      CMBaseObject = FigVideoTargetGetCMBaseObject(v238);
      v240 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v240)
      {
        v240(CMBaseObject, 0x1F0B32AB8, v239, &v1287);
      }

      if (v1287)
      {
        if (CFBooleanGetValue(v1287))
        {
          v236 = 1;
        }

        if (v1287)
        {
          CFRelease(v1287);
          v1287 = 0;
        }
      }

      ++v237;
      if (!p_duration)
      {
        goto LABEL_381;
      }

LABEL_380:
      ;
    }

    FigSimpleMutexLock();
    v242 = *(v217 + 504);
    if (v242)
    {
      v243 = CFRetain(v242);
    }

    else
    {
      v243 = 0;
    }

    a1 = v1224;
    FigSimpleMutexUnlock();
    RenderTriplesForVideoComposition = FPSupport_CopyDestinationPixelBufferAttributesWithIOSurfaceSupport(v243, v236, &valuePtr);
    if (v243)
    {
      CFRelease(v243);
    }

    DerivedStorage = v1247;
    OctaviaSubtitleRenderPipeline = v1230;
    if (RenderTriplesForVideoComposition)
    {
LABEL_389:
      a6 = v1215;
      v21 = v1238[0];
      goto LABEL_477;
    }
  }

  FigUseVideoReceiverForCALayer();
  OUTLINED_FUNCTION_786();
  if (shouldEnableMainVideo)
  {
    if ((v244 & (v1190 ^ LODWORD(v1175[0]))) != 0)
    {
      v245 = *(i + 1144);
      if (v245)
      {
        if (CFArrayGetCount(v245) >= 1)
        {
          CMBaseObject = OctaviaSubtitleRenderPipeline;
          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
          itemfig_handleReadyToDisplayVideoLatch(a1, 1, v1199);
          if (*(v217 + 224) < 1)
          {
            FigSimpleMutexLock();
            v246 = *(i + 1144);
            if (v246)
            {
              CFRelease(v246);
              *(i + 1144) = 0;
            }

            v247 = *(i + 1152);
            if (v247)
            {
              CFRelease(v247);
              *(i + 1152) = 0;
            }

            FigSimpleMutexUnlock();
          }

          else
          {
            itemfig_stashTransitionImageQueuesAndSlots();
          }
        }
      }
    }
  }

  v248 = _os_feature_enabled_impl();
  if (!shouldEnableMainVideo || !v248)
  {
    if (shouldEnableMainVideo)
    {
      CMBaseObject = 0;
      v249 = theArray;
      v21 = v1238[0];
      goto LABEL_415;
    }

    v21 = v1238[0];
    if (*(v217 + 129))
    {
      goto LABEL_475;
    }

    goto LABEL_423;
  }

  if (itemfig_countOfEnabledVideoTracks() == 1)
  {
    RenderTriplesForVideoTrackSampleAttachmentCollectors = itemfig_createRenderTriplesForVideoTrackSampleAttachmentCollectors(a1, *(i + 1040), (i + 2208), type);
    if (RenderTriplesForVideoTrackSampleAttachmentCollectors)
    {
      RenderTriplesForVideoComposition = RenderTriplesForVideoTrackSampleAttachmentCollectors;
      goto LABEL_389;
    }
  }

  v21 = v1238[0];
  if (*type)
  {
    CMBaseObject = CFArrayGetCount(*type) > 0;
  }

  else
  {
    CMBaseObject = 0;
  }

  v249 = theArray;
LABEL_415:
  if (!*(i + 656))
  {
    if (*(v217 + 129))
    {
LABEL_475:
      RenderTriplesForVideoComposition = 0;
      goto LABEL_476;
    }

    v257 = *(i + 1040);
    if (!v257)
    {
LABEL_423:
      if (FigUseVideoReceiverForCALayer())
      {
        itemfig_clearAllImageQueueTables(a1);
      }

      else
      {
        itemfig_removeAllImageQueues(a1);
        playerfig_freeTransitionImageQueueAndSlot();
      }

      goto LABEL_475;
    }

    *value = 0;
    v767 = itemfig_getTrackStorage(a1, v257, value);
    if (v767)
    {
      RenderTriplesForVideoComposition = v767;
      a1 = v1224;
LABEL_476:
      a6 = v1215;
LABEL_477:
      OctaviaClosedCaptionsRenderPipeline = alloc;
      goto LABEL_478;
    }

    v771 = *value;
    v772 = *(*value + 16);
    if (v772)
    {
      FigStopForwardingMediaServicesProcessDeathNotification();
      v767 = *(v771 + 16);
      if (v767)
      {
        CFRelease(v767);
        *(v771 + 16) = 0;
      }
    }

    v774 = *(v771 + 48);
    v773 = (v771 + 48);
    if (!v774)
    {
      v767 = FigImageQueueTableCreateWithOptions(v1166, alloc, v773);
    }

    v775 = *(i + 1040);
    LODWORD(formatDescriptionOut[0].start.value) = *(i + 1040);
    v1230 = OctaviaSubtitleRenderPipeline;
    v776 = CMBaseObject;
    if (!*(v217 + 130))
    {
      goto LABEL_1222;
    }

    CMBaseObject = formatDescriptionOut;
    *v1175 = *MEMORY[0x1E6960C70];
    *cf = *MEMORY[0x1E6960C70];
    v825 = *(MEMORY[0x1E6960C70] + 16);
    *&cf[16] = v825;
    OUTLINED_FUNCTION_263_0();
    CommonRenderPipelineOptionsForTrack = fp_createCommonRenderPipelineOptionsForTrack(v826, v827, v828, v829, v830, 0, v831);
    if (CommonRenderPipelineOptionsForTrack)
    {
      goto LABEL_1601;
    }

    itemfig_reuseExistingRenderPipeline(*(i + 392), formatDescriptionOut);
    v784 = formatDescriptionOut[0].duration.value;
    if (formatDescriptionOut[0].duration.value)
    {
      goto LABEL_1496;
    }

    v1289 = 0;
    *cf = *v1175;
    *&cf[16] = v825;
    OUTLINED_FUNCTION_263_0();
    v838 = fp_createCommonRenderPipelineOptionsForTrack(v832, v833, v834, v835, v836, 1, v837);
    if (v838)
    {
      RenderTriplesForVideoComposition = v838;
      a1 = v1224;
      a6 = v1215;
      goto LABEL_1632;
    }

    v839 = *(i + 1144);
    if (v839)
    {
      v839 = CFRetain(v839);
    }

    *v1283 = v839;
    v840 = *(i + 1152);
    if (v840)
    {
      v840 = CFRetain(v840);
    }

    v1282 = v840;
    if (*(i + 1872))
    {
      OUTLINED_FUNCTION_156_0();
    }

    OUTLINED_FUNCTION_380_0();
    v918 = OUTLINED_FUNCTION_356_0(v911, v912, v913, v914, v915, v916, v1283, &v1282, 0, v917, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224);
    if (fp_createFigImageQueueArrayForVideoRenderPipeline(v918, v919, 1, v920, v921, v922, v923, v924, v1106, v1113, v1119, v1125))
    {
      if (v1289)
      {
        CFRelease(v1289);
      }
    }

    else
    {
      v925 = fp_buildVideoRenderPipelineForTrack(v215, 0, *(i + 1040), valuePtr, 1, *(*value + 24), *(v217 + 904), 1, v1289, 0, 0, &formatDescriptionOut[0].duration);
      if (v1289)
      {
        CFRelease(v1289);
      }

      if (!v925)
      {
        FigSimpleMutexLock();
        v926 = *(i + 1144);
        v927 = *v1283;
        *(i + 1144) = *v1283;
        if (v927)
        {
          CFRetain(v927);
        }

        if (v926)
        {
          CFRelease(v926);
        }

        v928 = *(i + 1152);
        v929 = v1282;
        *(i + 1152) = v1282;
        if (v929)
        {
          CFRetain(v929);
        }

        if (v928)
        {
          CFRelease(v928);
        }

        FigSimpleMutexUnlock();
        v930 = FigUseVideoReceiverForCALayer();
        if (v930)
        {
          v983 = OUTLINED_FUNCTION_356_0(v930, v931, v932, v933, v934, v935, v936, v937, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224);
          itemfig_clearAllImageQueueTables(v983);
        }

        else
        {
          v938 = OUTLINED_FUNCTION_356_0(v930, v931, v932, v933, v934, v935, v936, v937, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224);
          itemfig_removeAllImageQueues(v938);
          playerfig_freeTransitionImageQueueAndSlot();
        }

        *(v217 + 131) = 1;
        NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(v215, v928, v939, v940, v941, v942, v943, v944, @"IsNeroPlaybackActive", 0);
        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        if (NotificationPayloadForProperties)
        {
          CFRelease(NotificationPayloadForProperties);
        }

        v767 = *(v217 + 584);
        v21 = v1238[0];
        if (!v767)
        {
          goto LABEL_1494;
        }

        v945 = MEMORY[0x1E695E4C0];
LABEL_1493:
        v985 = *v945;
        v986 = FigRenderPipelineGetFigBaseObject(v767);
        v767 = CMBaseObjectSetProperty(v986, @"ShouldCompensateForNeroScreenLatency", v985);
LABEL_1494:
        v784 = formatDescriptionOut[0].duration.value;
        if (formatDescriptionOut[0].duration.value)
        {
          goto LABEL_1496;
        }

        v775 = *(i + 1040);
LABEL_1222:
        *v1238 = *MEMORY[0x1E6960C70];
        *cf = *MEMORY[0x1E6960C70];
        CMBaseObject = *(MEMORY[0x1E6960C70] + 16);
        *&cf[16] = CMBaseObject;
        OUTLINED_FUNCTION_420_0(v767, v772, cf, v775, v768, v769, &formatDescriptionOut[0].start.timescale, v770, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224);
        OUTLINED_FUNCTION_263_0();
        CommonRenderPipelineOptionsForTrack = fp_createCommonRenderPipelineOptionsForTrack(v777, v778, v779, v780, v781, 0, v782);
        if (!CommonRenderPipelineOptionsForTrack)
        {
          itemfig_reuseExistingRenderPipeline(*(i + 392), formatDescriptionOut);
          v784 = formatDescriptionOut[0].duration.value;
          if (!formatDescriptionOut[0].duration.value)
          {
            v1289 = 0;
            *cf = *v1238;
            *&cf[16] = CMBaseObject;
            a1 = v1224;
            OUTLINED_FUNCTION_263_0();
            FigImageQueueArrayForVideoRenderPipeline = fp_createCommonRenderPipelineOptionsForTrack(v785, v786, v787, v788, v789, 1, v790);
            if (FigImageQueueArrayForVideoRenderPipeline)
            {
              goto LABEL_1630;
            }

            v792 = *(i + 1144);
            if (v792)
            {
              v792 = CFRetain(v792);
            }

            *v1283 = v792;
            v793 = *(i + 1152);
            if (v793)
            {
              v793 = CFRetain(v793);
            }

            v1282 = v793;
            if (*(i + 1872))
            {
              OUTLINED_FUNCTION_156_0();
            }

            OUTLINED_FUNCTION_380_0();
            FigImageQueueArrayForVideoRenderPipeline = fp_createFigImageQueueArrayForVideoRenderPipeline(v1224, v946, 0, v947, v948, v949, v1283, &v1282, p_duration, v950, v1114, v1120);
            if (FigImageQueueArrayForVideoRenderPipeline)
            {
LABEL_1630:
              a6 = v1215;
              RenderTriplesForVideoComposition = FigImageQueueArrayForVideoRenderPipeline;
            }

            else
            {
              CMBaseObject = *value;
              if (v776)
              {
                v951 = *(*value + 4) == 1986618469;
              }

              else
              {
                v951 = 0;
              }

              RenderTriplesForVideoComposition = fp_buildVideoRenderPipelineForTrack(v215, v1224, *(i + 1040), valuePtr, 0, *(*value + 24), *(v217 + 904), 1, v1289, 0, v951, &formatDescriptionOut[0].duration);
              if (v1289)
              {
                CFRelease(v1289);
              }

              a6 = v1215;
              if (!RenderTriplesForVideoComposition)
              {
                FigSimpleMutexLock();
                v952 = *(i + 1144);
                v953 = *v1283;
                *(i + 1144) = *v1283;
                if (v953)
                {
                  CFRetain(v953);
                }

                if (v952)
                {
                  CFRelease(v952);
                }

                v954 = *(i + 1152);
                v955 = v1282;
                *(i + 1152) = v1282;
                if (v955)
                {
                  CFRetain(v955);
                }

                if (v954)
                {
                  CFRelease(v954);
                }

                FigSimpleMutexUnlock();
                v784 = formatDescriptionOut[0].duration.value;
                FigStartForwardingMediaServicesProcessDeathNotification();
                if (!v784)
                {
                  v956 = 0;
                  *(CMBaseObject + 16) = 0;
                  v957 = (CMBaseObject + 16);
                  goto LABEL_1498;
                }

LABEL_1497:
                v987 = CFRetain(v784);
                CMBaseObject = *value;
                v988 = *value;
                *(*value + 16) = v987;
                v957 = (v988 + 16);
                v956 = CFRetain(v784);
LABEL_1498:
                *(v217 + 592) = v956;
                v989 = *(CMBaseObject + 48);
                if (v989)
                {
                  v989 = CFRetain(v989);
                }

                *(v217 + 616) = v989;
                CFArrayAppendValue(v1230, formatDescriptionOut);
                itemfig_resetRenderTriple(formatDescriptionOut);
                v990 = *(v217 + 616);
                if (v990)
                {
                  *cf = 0;
                  FigImageQueueTableCopyFigImageQueueArray(v990, cf);
                  FigImageQueueArraySetProperty();
                  FigImageQueueArraySetProperty();
                  itemfig_enableImageQueueTimingAndSetDurationOnFigImageQueueArray();
                  if (*cf)
                  {
                    CFRelease(*cf);
                  }
                }

                if (v1203)
                {
                  FigImageQueueTableSetTimebase(*(v217 + 616), *(i + 328));
                }

                v991 = *(i + 2208);
                v992 = FigRenderPipelineGetFigBaseObject(*(v217 + 592));
                CMBaseObjectSetProperty(v992, @"AttachmentCollectorMetadataSourceBuffers", v991);
                if (*(v217 + 240))
                {
                  v993 = *MEMORY[0x1E695E4D0];
                }

                else
                {
                  v993 = *MEMORY[0x1E695E4C0];
                }

                v994 = FigRenderPipelineGetFigBaseObject(*(v217 + 592));
                CMBaseObjectSetProperty(v994, @"PreventDisplaySleepDuringVideoPlayback", v993);
                v995 = *(i + 1184);
                if (v995)
                {
                  v996 = FigRenderPipelineGetFigBaseObject(*v957);
                  CMBaseObjectSetProperty(v996, @"VideoEnhancementMode", v995);
                }

                FigRenderPipelineGetFigBaseObject(*v957);
                OUTLINED_FUNCTION_206_0();
                CMBaseObjectSetProperty(v997, v998, v999);
                CMBaseObject = @"PropagatePerFrameHDRDisplayMetadata";
                FigRenderPipelineGetFigBaseObject(*v957);
                OUTLINED_FUNCTION_206_0();
                CMBaseObjectSetProperty(v1000, v1001, v1002);
                itemfig_updateRotationOnVideoRenderPipeline(a1, *(i + 1040));
                itemfig_applyEnhancementFilterOptions();
                itemfig_applyDisableColorMatching();
                itemfig_updatePriorImageQueueGaugeOnRenderPipelines(a1);
                v1003 = FigUseVideoReceiverForCALayer();
                RenderTriplesForVideoComposition = 0;
                if (v1170)
                {
                  DerivedStorage = v1247;
                  OctaviaClosedCaptionsRenderPipeline = alloc;
                  OctaviaSubtitleRenderPipeline = v1230;
                  i = allocator;
                  if (!v1003)
                  {
                    itemfig_handleReadyToDisplayVideoLatch(a1, 3, v1199);
                    RenderTriplesForVideoComposition = 0;
                  }

                  goto LABEL_479;
                }
              }
            }

LABEL_1632:
            DerivedStorage = v1247;
            goto LABEL_1633;
          }

LABEL_1496:
          a1 = v1224;
          FigStartForwardingMediaServicesProcessDeathNotification();
          a6 = v1215;
          goto LABEL_1497;
        }

LABEL_1601:
        a1 = v1224;
        a6 = v1215;
        DerivedStorage = v1247;
        RenderTriplesForVideoComposition = CommonRenderPipelineOptionsForTrack;
LABEL_1633:
        OctaviaClosedCaptionsRenderPipeline = alloc;
        OctaviaSubtitleRenderPipeline = v1230;
LABEL_478:
        i = allocator;
        goto LABEL_479;
      }
    }

    if (*&formatDescriptionOut[0].start.timescale)
    {
      CFRelease(*&formatDescriptionOut[0].start.timescale);
      *&formatDescriptionOut[0].start.timescale = 0;
    }

    if (*&formatDescriptionOut[0].duration.timescale)
    {
      CFRelease(*&formatDescriptionOut[0].duration.timescale);
      *&formatDescriptionOut[0].duration.timescale = 0;
    }

    if (formatDescriptionOut[0].duration.value)
    {
      CFRelease(formatDescriptionOut[0].duration.value);
      formatDescriptionOut[0].duration.value = 0;
    }

    v767 = *(v217 + 584);
    if (!v767)
    {
      goto LABEL_1494;
    }

    v945 = MEMORY[0x1E695E4D0];
    goto LABEL_1493;
  }

  OctaviaClosedCaptionsRenderPipeline = alloc;
  if (v249 && *(i + 824))
  {
    i = allocator;
    RenderTriplesForVideoComposition = itemfig_reuseRenderTriplesForVideoComposition(a1, OctaviaSubtitleRenderPipeline, allocator, v1203);
LABEL_340:
    a6 = v1215;
    goto LABEL_479;
  }

  v1230 = OctaviaSubtitleRenderPipeline;
  playeritemfig_releaseVideoCompositionObjects();
  v250 = CMBaseObjectGetDerivedStorage();
  v251 = CMBaseObjectGetDerivedStorage();
  v1288 = 0;
  v1289 = 0;
  v252 = *(v250 + 720);
  v253 = *(v250 + 736);
  v254 = *(v250 + 728);
  v1285 = 0;
  itemfig_getImageQueueFlagsAndMask(a1, &v1285 + 1, &v1285);
  CFGetAllocator(a1);
  fp_visualContextArrayIfVideoOutputAllowed(v1272, *(v250 + 1200));
  v255 = FigCFArrayCreateMutableCopy();
  if (!v255)
  {
    OUTLINED_FUNCTION_39_0();
    RenderTriplesForVideoComposition = FigSignalErrorAtGM();
    a6 = v1215;
    i = allocator;
    v21 = v1238[0];
    goto LABEL_470;
  }

  v256 = v255;
  LODWORD(v1190) = CMBaseObject;
  if (FigUseVideoReceiverForCALayer() || (!v1267 || CFArrayGetCount(v1267) <= 0) && *(v251 + 224) < 1)
  {
    v1175[0] = 0;
    goto LABEL_442;
  }

  v258 = *(v250 + 1144);
  if (v258)
  {
    v258 = CFRetain(v258);
  }

  v1289 = v258;
  v259 = *(v250 + 1152);
  if (v259)
  {
    v259 = CFRetain(v259);
  }

  v1288 = v259;
  v260 = fp_buildImageQueueArray((v252 * v253), (v254 * v253), v1267, *(v251 + 224), &v1289, &v1288);
  if (v260)
  {
    RenderTriplesForVideoComposition = v260;
    v1175[0] = v1289;
    goto LABEL_1469;
  }

  FigSimpleMutexLock();
  v261 = *(v250 + 1144);
  v262 = v1289;
  *(v250 + 1144) = v1289;
  OctaviaClosedCaptionsRenderPipeline = alloc;
  if (v262)
  {
    CFRetain(v262);
  }

  v1175[0] = v262;
  if (v261)
  {
    CFRelease(v261);
  }

  v263 = *(v250 + 1152);
  v264 = v1288;
  *(v250 + 1152) = v1288;
  if (v264)
  {
    CFRetain(v264);
  }

  if (v263)
  {
    CFRelease(v263);
  }

  FigSimpleMutexUnlock();
  FigCFArrayAppendArray();
LABEL_442:
  FigCFArrayAppendArray();
  v265 = (v250 + 848);
  if (!*(v250 + 848) && (matched = FigImageQueueTableCreateWithOptions(v1166, OctaviaClosedCaptionsRenderPipeline, (v250 + 848)), matched) || (OUTLINED_FUNCTION_75_0(), matched = FigImageQueueTableUpdateToMatchOutputsArray(v267, v256, v268, v269, fp_imageQueueTableWillReleaseImageQueueCallback, v1224), matched))
  {
    RenderTriplesForVideoComposition = matched;
LABEL_1469:
    CFRelease(v256);
    v21 = v1238[0];
    OctaviaClosedCaptionsRenderPipeline = alloc;
    goto LABEL_468;
  }

  FigImageQueueTableSetFlagsAndMask(*(v250 + 848), SHIDWORD(v1285), v1285);
  v270 = *MEMORY[0x1E695E4D0];
  FigImageQueueTableSetPropertyOnImageQueues(*(v250 + 848), @"FigImageQueueProperty_EnqueueResetsSystemSleepTimer", *MEMORY[0x1E695E4D0]);
  if (*(v251 + 240))
  {
    v271 = v270;
  }

  else
  {
    v271 = *MEMORY[0x1E695E4C0];
  }

  FigImageQueueTableSetPropertyOnImageQueues(*(v250 + 848), @"PreventDisplaySleepDuringVideoPlayback", v271);
  v272 = *(v250 + 1184);
  if (v272)
  {
    FigImageQueueTableSetPropertyOnImageQueues(*v265, @"VideoEnhancementMode", v272);
  }

  v273 = *v265;
  FigImageQueueTableSetPropertyOnImageQueues(*v265, @"EnableImageQueueTiming", v270);
  OUTLINED_FUNCTION_95_0(MEMORY[0x1E6960C70]);
  if (!itemfig_getDurationIfReady(v1224, cf) && (cf[12] & 1) != 0)
  {
    *value = *cf;
    *&value[16] = *&cf[16];
    v274 = CMTimeCopyAsDictionary(value, v1166);
    FigImageQueueTableSetPropertyOnImageQueues(v273, @"Duration", v274);
    if (v274)
    {
      CFRelease(v274);
    }
  }

  CFRelease(v256);
  v275 = (v250 + 832);
  v276 = *(v250 + 832);
  if (v276)
  {
    CFRelease(v276);
    *v275 = 0;
  }

  v277 = *(v250 + 840);
  v21 = v1238[0];
  OctaviaClosedCaptionsRenderPipeline = alloc;
  if (v277)
  {
    CFRelease(v277);
    *(v250 + 840) = 0;
  }

  FigImageQueueTableCopyFigImageQueueArray(*v265, (v250 + 832));
  if (*v275 && (v278 = CFArrayGetCount(*v275), v278 >= 1))
  {
    v279 = v278;
    for (k = 0; k != v279; ++k)
    {
      v281 = CFArrayGetValueAtIndex(*v275, k);
      v282 = *(v251 + 48) != 0.0;
      v283 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v283)
      {
        v283(v281, v282);
      }

      v284 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v284)
      {
        v284(v281, 1.0);
      }
    }

    RenderTriplesForVideoComposition = 0;
    DerivedStorage = v1247;
  }

  else
  {
    RenderTriplesForVideoComposition = 0;
  }

LABEL_468:
  a1 = v1224;
  OctaviaSubtitleRenderPipeline = v1230;
  a6 = v1215;
  i = allocator;
  CMBaseObject = v1190;
  if (v1175[0])
  {
    CFRelease(v1175[0]);
  }

LABEL_470:
  if (v1288)
  {
    CFRelease(v1288);
  }

  if (!RenderTriplesForVideoComposition)
  {
    RenderTriplesForVideoComposition = itemfig_createRenderTriplesForVideoComposition(a1, v1203, valuePtr, CMBaseObject, OctaviaClosedCaptionsRenderPipeline, OctaviaSubtitleRenderPipeline, i);
  }

LABEL_479:
  itemfig_resetRenderTriple(formatDescriptionOut);
  *(&v1299 + 1) = OctaviaSubtitleRenderPipeline;
  *&v1302 = i;
  *&v1304 = *type;
  if (*v1283)
  {
    CFRelease(*v1283);
  }

  if (v1282)
  {
    CFRelease(v1282);
  }

  if (v1272)
  {
    CFRelease(v1272);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  if (v1267)
  {
    dispatch_async_f(MEMORY[0x1E69E96A0], v1267, itemfig_releaseVideoLayerArray);
  }

  if (p_duration)
  {
    CFRelease(p_duration);
  }

  if (v1287)
  {
    CFRelease(v1287);
  }

  if (OctaviaClosedCaptionsRenderPipeline)
  {
    CFRelease(OctaviaClosedCaptionsRenderPipeline);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (RenderTriplesForVideoComposition)
  {
    v21 = RenderTriplesForVideoComposition;
LABEL_1362:
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_189_0();
    goto LABEL_1179;
  }

  if (!FigRenderedLegibleOutputManagerIsSupported())
  {
    goto LABEL_542;
  }

  CMBaseObject = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_79_0();
  if (!theSet)
  {
    i = 0;
    goto LABEL_515;
  }

  RenderTriplesForVideoComposition = v285;
  i = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &_MergedGlobals);
  if (!i)
  {
    OUTLINED_FUNCTION_39_0();
    ClosedCaptionRenderPipeline = FigSignalErrorAtGM();
LABEL_1442:
    v21 = ClosedCaptionRenderPipeline;
    goto LABEL_516;
  }

  v286 = *(RenderTriplesForVideoComposition + 600);
  if (v286)
  {
    CFRelease(v286);
    *(RenderTriplesForVideoComposition + 600) = 0;
  }

  FPSupport_resetClosedCaptionLayer(RenderTriplesForVideoComposition + 304);
  if (!*(CMBaseObject + 1048) || *(CMBaseObject + 1873))
  {
    goto LABEL_515;
  }

  LODWORD(formatDescriptionOut[0].start.value) = *(CMBaseObject + 1048);
  OUTLINED_FUNCTION_155_0(MEMORY[0x1E6960C70]);
  v287 = OUTLINED_FUNCTION_188_0();
  ClosedCaptionRenderPipeline = fp_createCommonRenderPipelineOptionsForTrack(v287, v288, v289, v290, v291, 0, v292);
  if (ClosedCaptionRenderPipeline)
  {
    goto LABEL_1576;
  }

  itemfig_reuseExistingRenderPipeline(*(CMBaseObject + 400), formatDescriptionOut);
  v300 = formatDescriptionOut[0].duration.value;
  if (*(RenderTriplesForVideoComposition + 130) && formatDescriptionOut[0].duration.value)
  {
    CFRelease(formatDescriptionOut[0].duration.value);
    formatDescriptionOut[0].duration.value = 0;
  }

  else if (formatDescriptionOut[0].duration.value)
  {
    goto LABEL_509;
  }

  OUTLINED_FUNCTION_249_0(v300, v294, v295, *(CMBaseObject + 1048), v296, v297, v298, v299, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v1230, allocator, v1238[0], v1238[1], v1243, v1247, alloc, theArray, v1258, v1267, v1272);
  v855 = OUTLINED_FUNCTION_188_0();
  ClosedCaptionRenderPipeline = fp_createCommonRenderPipelineOptionsForTrack(v855, v856, v857, v858, v859, 1, v860);
  if (ClosedCaptionRenderPipeline)
  {
    goto LABEL_1576;
  }

  OctaviaSubtitleRenderPipeline = *(CMBaseObject + 1008);
  OctaviaClosedCaptionsRenderPipeline = *(CMBaseObject + 1048);
  if (!*(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v21 = 4294954514;
    a6 = v1215;
    goto LABEL_516;
  }

  v861 = OUTLINED_FUNCTION_309_0();
  ClosedCaptionRenderPipeline = v862(v861, OctaviaClosedCaptionsRenderPipeline);
  if (ClosedCaptionRenderPipeline)
  {
    goto LABEL_1576;
  }

  ClosedCaptionRenderPipeline = OUTLINED_FUNCTION_438_0(ClosedCaptionRenderPipeline, v863, v864, v865, v866, v867, v868, v869, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v1230, allocator, v1238[0], v1238[1], v1243, v1247, alloc, theArray, v1258, v1267, v1272, *(&v1272 + 1), theSet, v1281, v1282, *v1283, *type, v1285, valuePtr, v1287, v1288, v1289);
  if (ClosedCaptionRenderPipeline)
  {
    goto LABEL_1576;
  }

  if (*(RenderTriplesForVideoComposition + 130) && *(RenderTriplesForVideoComposition + 131))
  {
    FigSimpleMutexLock();
    v870 = *(RenderTriplesForVideoComposition + 168);
    if (v870)
    {
      v871 = CFRetain(v870);
    }

    else
    {
      v871 = 0;
    }

    FigSimpleMutexUnlock();
    OctaviaSubtitleRenderPipeline = v1289;
    v979 = OUTLINED_FUNCTION_265();
    OctaviaClosedCaptionsRenderPipeline = FigCreateOctaviaClosedCaptionsRenderPipeline(v979, v980, v871, v981);
    if (v871)
    {
      CFRelease(v871);
    }

    if (OctaviaClosedCaptionsRenderPipeline || !formatDescriptionOut[0].duration.value)
    {
      a1 = v1224;
      DerivedStorage = v1247;
      ClosedCaptionRenderPipeline = OctaviaClosedCaptionsRenderPipeline;
    }

    else
    {
      a1 = v1224;
      ClosedCaptionRenderPipeline = fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(formatDescriptionOut[0].duration.value, *(RenderTriplesForVideoComposition + 136), *(RenderTriplesForVideoComposition + 144), *(RenderTriplesForVideoComposition + 152), v1224);
      DerivedStorage = v1247;
    }
  }

  else
  {
    OctaviaSubtitleRenderPipeline = v1289;
    OUTLINED_FUNCTION_95_0(MEMORY[0x1E6960CC0]);
    OUTLINED_FUNCTION_197();
    ClosedCaptionRenderPipeline = FigCreateClosedCaptionRenderPipeline(v904, v905, v906, v907, v908, v909, 0, v910);
  }

  if (ClosedCaptionRenderPipeline)
  {
LABEL_1576:
    a6 = v1215;
    goto LABEL_1442;
  }

  ClosedCaptionRenderPipeline = itemfig_prepareClosedCaptionRenderPipeline(formatDescriptionOut[0].duration.value, OctaviaSubtitleRenderPipeline);
  if (ClosedCaptionRenderPipeline)
  {
    a6 = v1215;
    DerivedStorage = v1247;
    goto LABEL_1442;
  }

  v982 = *(RenderTriplesForVideoComposition + 696);
  *(RenderTriplesForVideoComposition + 696) = OctaviaSubtitleRenderPipeline;
  if (OctaviaSubtitleRenderPipeline)
  {
    CFRetain(OctaviaSubtitleRenderPipeline);
  }

  if (v982)
  {
    CFRelease(v982);
  }

  v300 = formatDescriptionOut[0].duration.value;
  DerivedStorage = v1247;
  if (formatDescriptionOut[0].duration.value)
  {
LABEL_509:
    v300 = CFRetain(v300);
  }

  *(RenderTriplesForVideoComposition + 600) = v300;
  OUTLINED_FUNCTION_353_0();
  OctaviaSubtitleRenderPipeline = *(CMBaseObject + 1888);
  a6 = v1215;
  if (OctaviaSubtitleRenderPipeline)
  {
    CMBaseObject = FigRenderPipelineGetFigBaseObject(*(RenderTriplesForVideoComposition + 600));
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v301 = OUTLINED_FUNCTION_308();
      v302(v301);
    }
  }

  itemfig_resetRenderTriple(formatDescriptionOut);
LABEL_515:
  v21 = 0;
LABEL_516:
  itemfig_resetRenderTriple(formatDescriptionOut);
  *&v1300 = i;
  if (*value)
  {
    CFRelease(*value);
  }

  if (v1289)
  {
    CFRelease(v1289);
  }

  if (v21)
  {
    goto LABEL_1362;
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_79_0();
  if (!theSet)
  {
    OUTLINED_FUNCTION_164_0();
LABEL_533:
    v21 = 0;
    goto LABEL_534;
  }

  CMBaseObject = v303;
  i = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &_MergedGlobals);
  if (!i)
  {
    OUTLINED_FUNCTION_39_0();
    v615 = FigSignalErrorAtGM();
    goto LABEL_1444;
  }

  v304 = *(CMBaseObject + 408);
  if (v304)
  {
    v305 = CFArrayGetCount(v304);
    if (v305 >= 1)
    {
      v306 = v305;
      for (RenderTriplesForVideoComposition = 0; RenderTriplesForVideoComposition != v306; ++RenderTriplesForVideoComposition)
      {
        v307 = CFArrayGetValueAtIndex(*(CMBaseObject + 408), RenderTriplesForVideoComposition);
        if (*v307 != *(CMBaseObject + 1048))
        {
          FigLegibleOutputManagerForgetAboutLegibleOutputRenderPipeline(*(CMBaseObject + 1792), v307[3]);
        }
      }
    }
  }

  if (!*(CMBaseObject + 1800) || !*(CMBaseObject + 1048))
  {
    OctaviaSubtitleRenderPipeline = 0;
    goto LABEL_533;
  }

  OUTLINED_FUNCTION_404_0();
  itemfig_GetDimensions(a1, v607, v608);
  FigLegibleOutputManagerSetVideoDisplaySize(*(CMBaseObject + 1792), *&v1288, *&v1287);
  OUTLINED_FUNCTION_261_0();
  v609 = OUTLINED_FUNCTION_188_0();
  v615 = fp_createCommonRenderPipelineOptionsForTrack(v609, v610, v611, v612, v613, 1, v614);
  if (v615)
  {
    goto LABEL_1444;
  }

  RenderTriplesForVideoComposition = *(CMBaseObject + 1048);
  if (!*(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v21 = 4294954514;
LABEL_1005:
    OctaviaSubtitleRenderPipeline = 0;
    goto LABEL_534;
  }

  v616 = OUTLINED_FUNCTION_309_0();
  v615 = v617(v616, RenderTriplesForVideoComposition);
  if (v615 || (v615 = OUTLINED_FUNCTION_438_0(v615, v618, v619, v620, v621, v622, v623, v624, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v1230, allocator, v1238[0], v1238[1], v1243, v1247, alloc, theArray, v1258, v1267, v1272, *(&v1272 + 1), theSet, v1281, v1282, *v1283, *type, v1285, valuePtr, v1287, v1288, v1289), v615))
  {
LABEL_1444:
    v21 = v615;
    goto LABEL_1005;
  }

  RenderTriplesForVideoComposition = v1289;
  v625 = FigLegibleOutputManagerEnsureRenderPipelinesForFormat(*(CMBaseObject + 1792), v1289);
  OctaviaSubtitleRenderPipeline = v625;
  if (!v625 || CFArrayGetCount(v625) < 1)
  {
    goto LABEL_533;
  }

  OUTLINED_FUNCTION_402_0();
  while (1)
  {
    LODWORD(formatDescriptionOut[0].start.value) = *(CMBaseObject + 1048);
    v626 = OUTLINED_FUNCTION_389_0();
    v628 = CFArrayGetValueAtIndex(v626, v627);
    if (v628)
    {
      v628 = CFRetain(v628);
    }

    formatDescriptionOut[0].duration.value = v628;
    v629 = itemfig_prepareClosedCaptionRenderPipeline(v628, RenderTriplesForVideoComposition);
    if (v629)
    {
      break;
    }

    OUTLINED_FUNCTION_353_0();
    itemfig_resetRenderTriple(formatDescriptionOut);
    if (OctaviaClosedCaptionsRenderPipeline == ++a6)
    {
      v21 = 0;
      a6 = v1215;
      goto LABEL_534;
    }
  }

  a6 = v1215;
  v21 = v629;
LABEL_534:
  itemfig_resetRenderTriple(formatDescriptionOut);
  *(&v1300 + 1) = i;
  if (*value)
  {
    CFRelease(*value);
  }

  if (v1289)
  {
    CFRelease(v1289);
  }

  if (OctaviaSubtitleRenderPipeline)
  {
    CFRelease(OctaviaSubtitleRenderPipeline);
  }

  if (v21)
  {
    goto LABEL_1362;
  }

  playerfig_updateClosedCaptionsDisplayForItem(v1207, a1);
LABEL_542:
  if (!FigRenderedLegibleOutputManagerIsSupported())
  {
    goto LABEL_594;
  }

  RenderTriplesForVideoComposition = CMBaseObjectGetDerivedStorage();
  a6 = *(RenderTriplesForVideoComposition + 8);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_79_0();
  if (!theSet)
  {
    i = 0;
    goto LABEL_556;
  }

  CMBaseObject = v308;
  OctaviaClosedCaptionsRenderPipeline = *MEMORY[0x1E695E480];
  v309 = OUTLINED_FUNCTION_266_0();
  i = CFArrayCreateMutable(v309, v310, v311);
  if (!i)
  {
    OUTLINED_FUNCTION_39_0();
    v324 = FigSignalErrorAtGM();
LABEL_1446:
    OctaviaSubtitleRenderPipeline = v324;
    goto LABEL_557;
  }

  v312 = *(CMBaseObject + 608);
  if (v312)
  {
    CFRelease(v312);
    *(CMBaseObject + 608) = 0;
  }

  if (!*(RenderTriplesForVideoComposition + 1056) || *(RenderTriplesForVideoComposition + 1873))
  {
    goto LABEL_556;
  }

  LODWORD(formatDescriptionOut[0].start.value) = *(RenderTriplesForVideoComposition + 1056);
  v21 = formatDescriptionOut;
  OUTLINED_FUNCTION_155_0(MEMORY[0x1E6960C70]);
  v319 = OUTLINED_FUNCTION_420_0(v313, v314, cf, v315, v316, v317, &formatDescriptionOut[0].start.timescale, v318, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224);
  v324 = fp_createCommonRenderPipelineOptionsForTrack(v319, v320, v321, v322, 1935832172, 0, v323);
  if (v324)
  {
    goto LABEL_1446;
  }

  itemfig_reuseExistingRenderPipeline(*(RenderTriplesForVideoComposition + 416), formatDescriptionOut);
  v331 = formatDescriptionOut[0].duration.value;
  if (*(CMBaseObject + 130) && formatDescriptionOut[0].duration.value)
  {
    CFRelease(formatDescriptionOut[0].duration.value);
    formatDescriptionOut[0].duration.value = 0;
  }

  else if (formatDescriptionOut[0].duration.value)
  {
    goto LABEL_553;
  }

  v1288 = 0;
  OUTLINED_FUNCTION_249_0(v331, v325, v326, *(RenderTriplesForVideoComposition + 1056), v327, v328, v329, v330, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v1230, allocator, v1238[0], v1238[1], v1243, v1247, alloc, theArray, v1258, v1267, v1272);
  v880 = OUTLINED_FUNCTION_420_0(v872, v873, v874, v875, v876, v877, v878, v879, v1105, v1112, v1118, v1124, v1129, v1133, keyc, v1141, v1145, v1149, v1153, v1157, v1161, v1165, v1169, v1173, v1179, v1184, v1189, v1194, v1198, v1202, v1206, v1210, contextc, v1218, v1222, v1227);
  v324 = fp_createCommonRenderPipelineOptionsForTrack(v880, v881, v882, v883, 1935832172, 1, v884);
  if (v324)
  {
    goto LABEL_1446;
  }

  p_duration = *(RenderTriplesForVideoComposition + 1056);
  if (!*(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OctaviaSubtitleRenderPipeline = 4294954514;
    goto LABEL_557;
  }

  v885 = OUTLINED_FUNCTION_309_0();
  v324 = v886(v885, p_duration);
  if (v324)
  {
    goto LABEL_1446;
  }

  v894 = OUTLINED_FUNCTION_438_0(v324, v887, v888, v889, v890, v891, v892, v893, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v1230, allocator, v1238[0], v1238[1], v1243, v1247, alloc, theArray, v1258, v1267, v1272, *(&v1272 + 1), theSet, v1281, v1282, *v1283, *type, v1285, valuePtr, v1287, v1288, v1289);
  if (v894)
  {
    OctaviaSubtitleRenderPipeline = v894;
    DerivedStorage = v1247;
    goto LABEL_557;
  }

  v895 = *(CMBaseObject + 704);
  v896 = v1289;
  *(CMBaseObject + 704) = v1289;
  if (v896)
  {
    CFRetain(v896);
  }

  p_duration = &formatDescriptionOut[0].duration;
  if (v895)
  {
    CFRelease(v895);
  }

  if ((!*(CMBaseObject + 130) || !*(CMBaseObject + 131)) && !*(CMBaseObject + 194))
  {
    if (*(CMBaseObject + 821))
    {
      OUTLINED_FUNCTION_95_0(MEMORY[0x1E6960CC0]);
      OUTLINED_FUNCTION_19();
      SubtitleRenderPipeline = FigCreateSubtitleRenderPipeline(v970, v971, v972, v973, v974, v975, v976, v977, cf, 0, &formatDescriptionOut[0].duration);
    }

    else
    {
      OUTLINED_FUNCTION_95_0(MEMORY[0x1E6960CC0]);
      OUTLINED_FUNCTION_19();
      SubtitleRenderPipeline = FigCreateCaptionRenderPipeline(v1034, v1035, v1036, v1037, v1038, v1039, v1040, v1041, cf, 0, &formatDescriptionOut[0].duration);
    }

    OctaviaSubtitleRenderPipeline = SubtitleRenderPipeline;
LABEL_1534:
    DerivedStorage = v1247;
    goto LABEL_1535;
  }

  FigSimpleMutexLock();
  v897 = *(CMBaseObject + 168);
  if (v897)
  {
    v898 = CFRetain(v897);
  }

  else
  {
    v898 = 0;
  }

  FigSimpleMutexUnlock();
  v958 = OUTLINED_FUNCTION_265();
  OctaviaSubtitleRenderPipeline = FigCreateOctaviaSubtitleRenderPipeline(v958, v959, v898, &formatDescriptionOut[0].duration);
  if (v898)
  {
    CFRelease(v898);
  }

  if (OctaviaSubtitleRenderPipeline)
  {
    goto LABEL_1534;
  }

  DerivedStorage = v1247;
  if (formatDescriptionOut[0].duration.value)
  {
    OctaviaSubtitleRenderPipeline = fp_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(formatDescriptionOut[0].duration.value, *(CMBaseObject + 136), *(CMBaseObject + 144), *(CMBaseObject + 152), v1224);
  }

LABEL_1535:
  if (!OctaviaSubtitleRenderPipeline)
  {
    if (*(CMBaseObject + 720) && *(RenderTriplesForVideoComposition + 1060))
    {
      v1042 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v1042 = MEMORY[0x1E695E4C0];
    }

    v1043 = *v1042;
    a6 = FigRenderPipelineGetFigBaseObject(formatDescriptionOut[0].duration.value);
    v1044 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v1044)
    {
      v1044(a6, @"DisplayNonForcedSubtitles", v1043);
    }

    v1045 = FigTrackReaderGetFigBaseObject(*value);
    v1046 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v1046)
    {
      v1046(v1045, @"ExtendedLanguageTagString", OctaviaClosedCaptionsRenderPipeline, &v1288);
      v1047 = v1288;
      if (v1288)
      {
        if (*(CMBaseObject + 821))
        {
          v1048 = kFigSubtitleRenderPipelineProperty_ExtendedLanguageTagString;
        }

        else
        {
          v1048 = &kFigCaptionRenderPipelineProperty_ExtendedLanguageTagString;
        }

        v1049 = *v1048;
        v1050 = FigRenderPipelineGetFigBaseObject(formatDescriptionOut[0].duration.value);
        v1051 = v1049;
        DerivedStorage = v1247;
        CMBaseObjectSetProperty(v1050, v1051, v1047);
        CFRelease(v1288);
      }
    }

    v1052 = *(RenderTriplesForVideoComposition + 1880);
    if (v1052)
    {
      if (*(CMBaseObject + 821))
      {
        v1053 = &kFigSubtitleRenderPipelineProperty_TextMarkupArray;
      }

      else
      {
        v1053 = &kFigCaptionRenderPipelineProperty_TextMarkupArray;
      }

      v1054 = *v1053;
      v1055 = FigRenderPipelineGetFigBaseObject(formatDescriptionOut[0].duration.value);
      v1056 = v1054;
      DerivedStorage = v1247;
      CMBaseObjectSetProperty(v1055, v1056, v1052);
    }

    v331 = formatDescriptionOut[0].duration.value;
    if (formatDescriptionOut[0].duration.value)
    {
LABEL_553:
      v331 = CFRetain(v331);
    }

    *(CMBaseObject + 608) = v331;
    OUTLINED_FUNCTION_353_0();
    itemfig_resetRenderTriple(formatDescriptionOut);
LABEL_556:
    OctaviaSubtitleRenderPipeline = 0;
  }

LABEL_557:
  itemfig_resetRenderTriple(formatDescriptionOut);
  *&v1301 = i;
  if (*value)
  {
    CFRelease(*value);
  }

  if (v1289)
  {
    CFRelease(v1289);
  }

  if (OctaviaSubtitleRenderPipeline)
  {
    v21 = OctaviaSubtitleRenderPipeline;
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_189_0();
LABEL_1178:
    a1 = v1224;
    goto LABEL_1179;
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_79_0();
  if (!theSet)
  {
    v21 = 0;
    a6 = 0;
    OctaviaClosedCaptionsRenderPipeline = 0;
    i = 0;
LABEL_583:
    CMBaseObject = 0;
    goto LABEL_584;
  }

  RenderTriplesForVideoComposition = v332;
  v333 = *MEMORY[0x1E695E480];
  v334 = OUTLINED_FUNCTION_266_0();
  i = CFArrayCreateMutable(v334, v335, v336);
  if (!i)
  {
    OUTLINED_FUNCTION_39_0();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_141_0();
    OctaviaClosedCaptionsRenderPipeline = 0;
    goto LABEL_583;
  }

  v337 = OUTLINED_FUNCTION_266_0();
  CMBaseObject = CFArrayCreateMutable(v337, v338, v339);
  if (!CMBaseObject)
  {
    OUTLINED_FUNCTION_39_0();
    v596 = FigSignalErrorAtGM();
    goto LABEL_1449;
  }

  v340 = *(RenderTriplesForVideoComposition + 424);
  if (v340)
  {
    v341 = CFArrayGetCount(v340);
    if (v341 >= 1)
    {
      OctaviaSubtitleRenderPipeline = v341;
      for (m = 0; m != OctaviaSubtitleRenderPipeline; ++m)
      {
        v343 = CFArrayGetValueAtIndex(*(RenderTriplesForVideoComposition + 424), m);
        if (*v343 != *(RenderTriplesForVideoComposition + 1056))
        {
          FigLegibleOutputManagerForgetAboutLegibleOutputRenderPipeline(*(RenderTriplesForVideoComposition + 1792), v343[3]);
        }
      }
    }
  }

  v344 = *(RenderTriplesForVideoComposition + 472);
  if (v344)
  {
    v345 = CFArrayGetCount(v344);
    if (v345 >= 1)
    {
      OctaviaSubtitleRenderPipeline = v345;
      for (n = 0; n != OctaviaSubtitleRenderPipeline; ++n)
      {
        v347 = CFArrayGetValueAtIndex(*(RenderTriplesForVideoComposition + 472), n);
        if (*v347 != *(RenderTriplesForVideoComposition + 1056))
        {
          FigRenderedLegibleOutputManagerForgetAboutRenderedLegibleOutputRenderPipeline(*(RenderTriplesForVideoComposition + 1824), v347[3]);
        }
      }
    }
  }

  if (!*(RenderTriplesForVideoComposition + 1800) && !*(RenderTriplesForVideoComposition + 1832) || !*(RenderTriplesForVideoComposition + 1056))
  {
    v21 = 0;
    goto LABEL_581;
  }

  OUTLINED_FUNCTION_404_0();
  v586 = OUTLINED_FUNCTION_356_0(v578, v579, v580, v581, v582, v583, v584, v585, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224);
  itemfig_GetDimensions(v586, v587, v588);
  v589 = *&v1288;
  v590 = *&v1287;
  OUTLINED_FUNCTION_261_0();
  v591 = OUTLINED_FUNCTION_234();
  v596 = fp_createCommonRenderPipelineOptionsForTrack(v591, v592, v593, v594, 1935832172, 1, v595);
  if (v596)
  {
    goto LABEL_1449;
  }

  OctaviaSubtitleRenderPipeline = *(RenderTriplesForVideoComposition + 1008);
  v597 = *(RenderTriplesForVideoComposition + 1056);
  if (!*(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v21 = 4294954514;
LABEL_581:
    a6 = 0;
    OctaviaClosedCaptionsRenderPipeline = 0;
LABEL_584:
    a1 = v1224;
    goto LABEL_585;
  }

  v598 = OUTLINED_FUNCTION_309_0();
  v596 = v599(v598, v597);
  if (v596 || (v596 = OUTLINED_FUNCTION_438_0(v596, v600, v601, v602, v603, v604, v605, v606, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v1230, allocator, v1238[0], v1238[1], v1243, v1247, alloc, theArray, v1258, v1267, v1272, *(&v1272 + 1), theSet, v1281, v1282, *v1283, *type, v1285, valuePtr, v1287, v1288, v1289), v596))
  {
LABEL_1449:
    v21 = v596;
    goto LABEL_581;
  }

  if (*(RenderTriplesForVideoComposition + 1800))
  {
    FigLegibleOutputManagerSetVideoDisplaySize(*(RenderTriplesForVideoComposition + 1792), v589, v590);
    a6 = FigLegibleOutputManagerEnsureRenderPipelinesForFormat(*(RenderTriplesForVideoComposition + 1792), v1289);
  }

  else
  {
    a6 = 0;
  }

  if (*(RenderTriplesForVideoComposition + 1832))
  {
    *cf = 0;
    OctaviaSubtitleRenderPipeline = FigTrackReaderGetFigBaseObject(*value);
    v794 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v794)
    {
      v794(OctaviaSubtitleRenderPipeline, @"ExtendedLanguageTagString", v333, cf);
      v795 = *cf;
    }

    else
    {
      v795 = 0;
    }

    a1 = v1224;
    OctaviaClosedCaptionsRenderPipeline = FigRenderedLegibleOutputManagerEnsureRenderPipelinesForFormat(*(RenderTriplesForVideoComposition + 1824), v1289, *(RenderTriplesForVideoComposition + 1880), v795);
    if (*cf)
    {
      CFRelease(*cf);
    }
  }

  else
  {
    OctaviaClosedCaptionsRenderPipeline = 0;
    a1 = v1224;
  }

  if (a6)
  {
    v796 = CFArrayGetCount(a6);
    if (v796 >= 1)
    {
      OctaviaSubtitleRenderPipeline = v796;
      p_duration = 0;
      do
      {
        LODWORD(formatDescriptionOut[0].start.value) = *(RenderTriplesForVideoComposition + 1056);
        v797 = OUTLINED_FUNCTION_396();
        v799 = CFArrayGetValueAtIndex(v797, v798);
        if (v799)
        {
          v799 = CFRetain(v799);
        }

        formatDescriptionOut[0].duration.value = v799;
        OUTLINED_FUNCTION_353_0();
        itemfig_resetRenderTriple(formatDescriptionOut);
        ++p_duration;
      }

      while (OctaviaSubtitleRenderPipeline != p_duration);
    }
  }

  if (OctaviaClosedCaptionsRenderPipeline)
  {
    v800 = CFArrayGetCount(OctaviaClosedCaptionsRenderPipeline);
    if (v800 >= 1)
    {
      OctaviaSubtitleRenderPipeline = v800;
      p_duration = 0;
      do
      {
        LODWORD(formatDescriptionOut[0].start.value) = *(RenderTriplesForVideoComposition + 1056);
        v801 = OUTLINED_FUNCTION_204_0();
        v803 = CFArrayGetValueAtIndex(v801, v802);
        if (v803)
        {
          v803 = CFRetain(v803);
        }

        formatDescriptionOut[0].duration.value = v803;
        CFArrayAppendValue(CMBaseObject, formatDescriptionOut);
        itemfig_resetRenderTriple(formatDescriptionOut);
        ++p_duration;
      }

      while (OctaviaSubtitleRenderPipeline != p_duration);
    }
  }

  v21 = 0;
LABEL_585:
  itemfig_resetRenderTriple(formatDescriptionOut);
  *(&v1301 + 1) = i;
  *(&v1304 + 1) = CMBaseObject;
  if (a6)
  {
    CFRelease(a6);
  }

  if (OctaviaClosedCaptionsRenderPipeline)
  {
    CFRelease(OctaviaClosedCaptionsRenderPipeline);
  }

  a6 = v1215;
  if (*value)
  {
    CFRelease(*value);
  }

  if (v1289)
  {
    CFRelease(v1289);
  }

  if (v21)
  {
    goto LABEL_1362;
  }

LABEL_594:
  FigSimpleMutexLock();
  v348 = *(a6 + 272);
  if (!v348)
  {
    FigSimpleMutexUnlock();
    v349 = HIDWORD(v1219);
    goto LABEL_724;
  }

  i = CFArrayGetCount(v348);
  FigSimpleMutexUnlock();
  v349 = HIDWORD(v1219);
  if (i < 1)
  {
    goto LABEL_724;
  }

  if (!*(v1247 + 656))
  {
    v350 = CMBaseObjectGetDerivedStorage();
    v1289 = 0;
    *cf = 0;
    *value = 0;
    v1287 = 0;
    v1288 = 0;
    valuePtr = 0;
    if (*(v350 + 648))
    {
      i = v350;
      FigSimpleMutexLock();
      v351 = CFArrayGetCount(*(i + 648));
      if (v351 >= 1)
      {
        OctaviaClosedCaptionsRenderPipeline = v351;
        RenderTriplesForVideoComposition = 0;
        v352 = *MEMORY[0x1E695E480];
        v1154 = *(MEMORY[0x1E6963148] + 8);
        v1158 = *MEMORY[0x1E6963148];
        v1146 = *(MEMORY[0x1E6963140] + 8);
        v1150 = *MEMORY[0x1E6963140];
        v1138 = *(MEMORY[0x1E6963150] + 8);
        v1142 = *MEMORY[0x1E6963150];
        CMBaseObject = 1635088502;
        *&v1272 = @"TrackFormatDescriptionArray";
        v1166 = *MEMORY[0x1E6962790];
        key = *MEMORY[0x1E69600D0];
        v1130 = *MEMORY[0x1E69600C8];
        v1190 = 1;
        v1126 = @"rndr";
        v1175[0] = 1;
        v1170 = 1;
        v1162 = v351;
        while (1)
        {
          v353 = CFArrayGetValueAtIndex(*(i + 648), RenderTriplesForVideoComposition);
          if (!v353[24])
          {
            break;
          }

LABEL_672:
          if (++RenderTriplesForVideoComposition == OctaviaClosedCaptionsRenderPipeline)
          {
            goto LABEL_685;
          }
        }

        p_duration = v353;
        OUTLINED_FUNCTION_173_0();
        v354 = FigTagCollectionCreateMutable();
        if (v354)
        {
          goto LABEL_1314;
        }

        v355 = *cf;
        FigTagMakeWithSInt64Value();
        OUTLINED_FUNCTION_260_0();
        OUTLINED_FUNCTION_219_0();
        CMTagCollectionAddTag(v356, v1309);
        v357 = *(p_duration + 4);
        if (v357 != 1635088502)
        {
          switch(v357)
          {
            case 1835365473:
              FigTagMakeWithSInt64Value();
              OUTLINED_FUNCTION_287_0();
              v355 = v1154;
              a6 = v1158;
              goto LABEL_613;
            case 1935832172:
              OUTLINED_FUNCTION_372_0();
              OUTLINED_FUNCTION_394_0();
              FigTagMakeWithOSTypeValue();
              OUTLINED_FUNCTION_131_0();
              CMBaseObject = 1;
              FigTagMakeWithSInt64Value();
              OUTLINED_FUNCTION_191_0();
              goto LABEL_613;
            case 1936684398:
              FigTagMakeWithSInt64Value();
              OUTLINED_FUNCTION_287_0();
              v355 = v1146;
              a6 = v1150;
              goto LABEL_613;
            case 1986618469:
              FigTagMakeWithSInt64Value();
              OUTLINED_FUNCTION_287_0();
              v355 = v1138;
              a6 = v1142;
              goto LABEL_613;
          }
        }

        OUTLINED_FUNCTION_372_0();
        FigTagMakeWithOSTypeValue();
        OUTLINED_FUNCTION_131_0();
        CMBaseObject = 1;
        FigTagMakeWithSInt64Value();
        OUTLINED_FUNCTION_191_0();
LABEL_613:
        *&v1310.category = a6;
        v1310.value = v355;
        CMTagCollectionAddTag(*cf, v1310);
        *&v1311.category = v21;
        v1311.value = a1;
        CMTagCollectionAddTag(*cf, v1311);
        OctaviaSubtitleRenderPipeline = *(i + 1008);
        a6 = *p_duration;
        if (!*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          a6 = 0;
          v21 = 4294954514;
LABEL_896:
          a1 = v1224;
          goto LABEL_686;
        }

        a1 = v1224;
        v358 = OUTLINED_FUNCTION_309_0();
        v354 = v359(v358, a6);
        if (v354)
        {
          goto LABEL_1314;
        }

        OctaviaSubtitleRenderPipeline = FigTrackReaderGetFigBaseObject(*value);
        v360 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v360)
        {
          v360(OctaviaSubtitleRenderPipeline, @"TrackFormatDescriptionArray", v352, &v1289);
        }

        FirstValue = FigCFArrayGetFirstValue();
        v21 = FirstValue;
        if (FirstValue && CMFormatDescriptionGetMediaSubType(FirstValue))
        {
          OctaviaSubtitleRenderPipeline = *cf;
          FigTagMakeWithOSTypeValue();
          OUTLINED_FUNCTION_260_0();
          OUTLINED_FUNCTION_219_0();
          CMTagCollectionAddTag(v362, v1312);
        }

        OUTLINED_FUNCTION_33();
        if (!v50)
        {
          if (v363 == 1835365473 && itemfig_hasTrackReference(v1224, @"rndr", *p_duration, 0, 0))
          {
            OctaviaSubtitleRenderPipeline = valuePtr;
            if (!valuePtr)
            {
              v378 = OUTLINED_FUNCTION_173_0();
              v354 = FigSampleAttachmentCollectionRulesCopyForFilePlayback(v378, v379, v380);
              if (v354)
              {
LABEL_1314:
                a6 = 0;
                v21 = v354;
                goto LABEL_686;
              }

              OctaviaSubtitleRenderPipeline = valuePtr;
            }

            v381 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v381 && v381(OctaviaSubtitleRenderPipeline, v21))
            {
              MEMORY[0x19A8D3360](*cf);
            }
          }

          a6 = 0;
          goto LABEL_623;
        }

        if (!v21)
        {
          OUTLINED_FUNCTION_39_0();
          FigSignalErrorAtGM();
          OUTLINED_FUNCTION_141_0();
          goto LABEL_686;
        }

        CMBaseObject = v352;
        if (CMFormatDescriptionGetMediaSubType(v21) == 1768972832)
        {
          LOBYTE(formatDescriptionOut[0].start.value) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          OctaviaSubtitleRenderPipeline = CMFormatDescriptionGetExtensions(v21);
          v364 = 0;
          if (FigCFDictionaryGetBooleanIfPresent() && LOBYTE(formatDescriptionOut[0].start.value))
          {
            BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
            if (type[0])
            {
              v366 = BooleanIfPresent == 0;
            }

            else
            {
              v366 = 1;
            }

            v364 = !v366;
          }

          a6 = 0;
          if (FigGetCFPreferenceNumberWithDefault() >= 2 && !v364)
          {
            formatDescriptionOut[0].start.value = 0;
            Dimensions = CMVideoFormatDescriptionGetDimensions(v21);
            CMFormatDescriptionGetExtensions(v21);
            v368 = FigCFDictionaryCreateMutableCopy();
            if (v368)
            {
              OctaviaSubtitleRenderPipeline = v368;
              CFDictionaryRemoveValue(v368, key);
              CFDictionaryRemoveValue(OctaviaSubtitleRenderPipeline, v1130);
              FigCFDictionarySetBoolean();
              FigCFDictionarySetBoolean();
              v369 = CMVideoFormatDescriptionCreate(CMBaseObject, 0x69706220u, Dimensions.width, Dimensions.height, OctaviaSubtitleRenderPipeline, formatDescriptionOut);
              a6 = formatDescriptionOut[0].start.value;
              if (v369)
              {
                OctaviaClosedCaptionsRenderPipeline = v1162;
                if (formatDescriptionOut[0].start.value)
                {
                  CFRelease(formatDescriptionOut[0].start.value);
                  a6 = 0;
                }
              }

              else
              {
                formatDescriptionOut[0].start.value = 0;
                OctaviaClosedCaptionsRenderPipeline = v1162;
              }

              CFRelease(OctaviaSubtitleRenderPipeline);
            }

            else
            {
              OUTLINED_FUNCTION_39_0();
              FigSignalErrorAtGM();
              a6 = 0;
              OctaviaClosedCaptionsRenderPipeline = v1162;
            }

            v364 = a6 != 0;
            if (a6)
            {
              v21 = a6;
            }
          }
        }

        else
        {
          a6 = 0;
          v364 = 0;
        }

        if (!VTIsStereoMVHEVCDecodeSupported() && !v364)
        {
          if (!FPSupport_CreateTagCollectionFromVideoFormatDescriptionExtensionsWithDefaults(0, &v1287))
          {
            OctaviaSubtitleRenderPipeline = 0;
            v352 = CMBaseObject;
            goto LABEL_666;
          }

          v352 = CMBaseObject;
          if (v1287)
          {
            CFRelease(v1287);
            OctaviaSubtitleRenderPipeline = 0;
            v1287 = 0;
            goto LABEL_666;
          }

LABEL_623:
          OctaviaSubtitleRenderPipeline = 0;
LABEL_666:
          CMBaseObject = 1635088502;
          v376 = *cf;
          *cf = 0;
          v377 = v1288;
          *(p_duration + 200) = v1287;
          *(p_duration + 208) = v377;
          v1287 = 0;
          v1288 = 0;
          *(p_duration + 192) = v376;
          *(p_duration + 280) = OctaviaSubtitleRenderPipeline;
          if (*value)
          {
            CFRelease(*value);
            *value = 0;
          }

          if (v1289)
          {
            CFRelease(v1289);
            v1289 = 0;
          }

          if (a6)
          {
            CFRelease(a6);
          }

          goto LABEL_672;
        }

        if (CMVideoFormatDescriptionCopyTagCollectionArray(v21, &v1288) && v1288)
        {
          CFRelease(v1288);
          v1288 = 0;
        }

        v352 = CMBaseObject;
        if (FPSupport_CreateTagCollectionFromVideoFormatDescriptionExtensionsWithDefaults(v21, &v1287) && v1287)
        {
          CFRelease(v1287);
          v1287 = 0;
        }

        v370 = v1289;
        if (v1289)
        {
          v21 = CFArrayGetCount(v1289);
          v371 = CFDictionaryCreateMutable(CMBaseObject, v21, MEMORY[0x1E6960F10], MEMORY[0x1E695E9E8]);
          if (v371)
          {
            OctaviaSubtitleRenderPipeline = v371;
            if (v21 >= 1)
            {
              for (ii = 0; ii != v21; ++ii)
              {
                MTSidebandVideoPropertiesAcquireNextAvailableSidebandVideoPropertiesLookupID();
                CFArrayGetValueAtIndex(v370, ii);
                FigCFDictionarySetInt16();
              }

LABEL_661:
              a1 = v1224;
              v352 = CMBaseObject;
              OctaviaClosedCaptionsRenderPipeline = v1162;
              goto LABEL_666;
            }

LABEL_664:
            a1 = v1224;
            goto LABEL_666;
          }
        }

        else
        {
          v373 = OUTLINED_FUNCTION_173_0();
          v375 = CFDictionaryCreateMutable(v373, v374, MEMORY[0x1E6960F10], MEMORY[0x1E695E9E8]);
          if (v375)
          {
            OctaviaSubtitleRenderPipeline = v375;
            goto LABEL_664;
          }
        }

        OUTLINED_FUNCTION_39_0();
        v382 = FigSignalErrorAtGM();
        if (v382)
        {
          v21 = v382;
          goto LABEL_896;
        }

        OctaviaSubtitleRenderPipeline = 0;
        goto LABEL_661;
      }

LABEL_685:
      a6 = 0;
      v21 = 0;
LABEL_686:
      FigSimpleMutexUnlock();
      if (*cf)
      {
        CFRelease(*cf);
      }
    }

    else
    {
      OUTLINED_FUNCTION_39_0();
      FigSignalErrorAtGM();
      OUTLINED_FUNCTION_141_0();
    }

    if (*value)
    {
      CFRelease(*value);
    }

    if (v1289)
    {
      CFRelease(v1289);
    }

    if (v1288)
    {
      CFRelease(v1288);
    }

    if (v1287)
    {
      CFRelease(v1287);
    }

    if (a6)
    {
      CFRelease(a6);
    }

    if (valuePtr)
    {
      CFRelease(valuePtr);
    }

    v349 = HIDWORD(v1219);
    if (v21)
    {
      goto LABEL_1433;
    }
  }

  v383 = CMBaseObjectGetDerivedStorage();
  formatDescriptionOut[0].start.value = 0;
  LOBYTE(v1289) = 0;
  *cf = 0;
  *value = 0;
  if (*v383)
  {
    OUTLINED_FUNCTION_39_0();
    FigSignalErrorAtGM();
    goto LABEL_712;
  }

  i = v383;
  if (!*(v383 + 1096))
  {
    OctaviaSubtitleRenderPipeline = *MEMORY[0x1E695E480];
    CMBaseObject = FigAssetGetCMBaseObject(*(v383 + 1256));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v384 = OUTLINED_FUNCTION_308();
      v385(v384);
    }

    FigCFDictionaryGetBooleanIfPresent();
    if (!v1289)
    {
      *(i + 1096) = 1;
      goto LABEL_712;
    }

    if (itemfig_assureBasicsReadyForInspection(a1))
    {
      goto LABEL_712;
    }

    CMBaseObject = FigFormatReaderGetFigBaseObject(*(i + 1008));
    v386 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v386)
    {
      v387 = OUTLINED_FUNCTION_308();
      v388(v387);
      CMBaseObject = *cf;
      if (*cf)
      {
        v386 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v386)
        {
          goto LABEL_711;
        }

        v386(CMBaseObject, @"mdta", @"com.apple.quicktime.aime-data", 0, OctaviaSubtitleRenderPipeline, value, 0);
        if (*value)
        {
          FigCFDictionaryGetInt64IfPresent();
          OctaviaSubtitleRenderPipeline = i + 1112;
          FigCFDictionaryGetInt64IfPresent();
          if ((*(i + 1104) & 0x8000000000000000) != 0 || *OctaviaSubtitleRenderPipeline < 1)
          {
            goto LABEL_712;
          }

          LOBYTE(v386) = 1;
          goto LABEL_711;
        }
      }

      LOBYTE(v386) = 0;
    }

LABEL_711:
    *(i + 1097) = v386;
    *(i + 1096) = 1;
  }

LABEL_712:
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (*value)
  {
    CFRelease(*value);
  }

  if (formatDescriptionOut[0].start.value)
  {
    CFRelease(formatDescriptionOut[0].start.value);
  }

  formatDescriptionOut[0].start.value = 0;
  itemfig_createRenderTriplesForMultichannelVideoTargets();
  if (v389)
  {
    v21 = v389;
    goto LABEL_1433;
  }

  ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
  if (v1304)
  {
    CFRelease(v1304);
  }

  if (formatDescriptionOut[0].start.value)
  {
    CFRelease(formatDescriptionOut[0].start.value);
  }

  *&v1304 = ConcatenationOfTwoArrays;
LABEL_724:
  CMBaseObjectGetDerivedStorage();
  i = 0;
  OUTLINED_FUNCTION_80_0();
  if (!theSet)
  {
LABEL_746:
    itemfig_resetRenderTriple(formatDescriptionOut);
    *(&v1303 + 1) = i;
    goto LABEL_747;
  }

  CMBaseObject = v391;
  theSet = *MEMORY[0x1E695E480];
  v392 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &_MergedGlobals);
  if (v392)
  {
    i = v392;
    if (CFArrayGetCount(*(CMBaseObject + 648)) >= 1)
    {
      OUTLINED_FUNCTION_402_0();
      v1268 = v393;
      DerivedStorage = v1247;
      *&v1272 = CMBaseObject;
      while (1)
      {
        v394 = CFArrayGetValueAtIndex(*(CMBaseObject + 648), a6);
        v395 = *(v394 + 21);
        if (v395)
        {
          v396 = CFArrayGetCount(v395);
          if (v396 >= 1)
          {
            break;
          }
        }

LABEL_744:
        if (++a6 == OctaviaClosedCaptionsRenderPipeline)
        {
          a1 = v1224;
          v349 = HIDWORD(v1219);
          goto LABEL_746;
        }
      }

      v397 = v396;
      p_duration = 0;
      while (1)
      {
        OctaviaSubtitleRenderPipeline = CFArrayGetValueAtIndex(*(v394 + 21), p_duration);
        v398 = *(OctaviaSubtitleRenderPipeline + 28);
        LODWORD(formatDescriptionOut[0].start.value) = *v394;
        LODWORD(formatDescriptionOut[0].start.epoch) = v398;
        v399 = *(OctaviaSubtitleRenderPipeline + 48);
        if (v399)
        {
          CFRelease(v399);
          *(OctaviaSubtitleRenderPipeline + 48) = 0;
        }

        OUTLINED_FUNCTION_95_0(MEMORY[0x1E6960C70]);
        v406 = OUTLINED_FUNCTION_420_0(v400, v401, cf, v402, v403, v404, &formatDescriptionOut[0].duration.timescale, v405, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1190, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224);
        v411 = fp_createCommonRenderPipelineOptionsForTrack(v406, v407, v408, v409, 0, 0, v410);
        if (v411)
        {
          break;
        }

        itemfig_reuseExistingRenderPipeline(*(CMBaseObject + 456), formatDescriptionOut);
        v412 = formatDescriptionOut[0].duration.value;
        if (formatDescriptionOut[0].duration.value)
        {
          goto LABEL_742;
        }

        OctaviaClosedCaptionsRenderPipeline = FigCFNumberCreateSInt32();
        if (FigCFDictionaryGetValue())
        {
          v413 = OUTLINED_FUNCTION_312();
          v415 = CFDictionaryCreateMutable(v413, v414, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          FigCFDictionarySetValue();
        }

        else
        {
          v415 = 0;
        }

        RenderTriplesForVideoComposition = FigRenderPipelineCreateForBufferQueue(theSet, *(OctaviaSubtitleRenderPipeline + 32), v415, &formatDescriptionOut[0].duration);
        if (OctaviaClosedCaptionsRenderPipeline)
        {
          CFRelease(OctaviaClosedCaptionsRenderPipeline);
        }

        DerivedStorage = v1247;
        if (RenderTriplesForVideoComposition)
        {
          goto LABEL_1177;
        }

        v412 = formatDescriptionOut[0].duration.value;
        OctaviaClosedCaptionsRenderPipeline = v1268;
        CMBaseObject = v1272;
        if (formatDescriptionOut[0].duration.value)
        {
LABEL_742:
          v412 = CFRetain(v412);
        }

        *(OctaviaSubtitleRenderPipeline + 48) = v412;
        OUTLINED_FUNCTION_353_0();
        itemfig_resetRenderTriple(formatDescriptionOut);
        if (v397 == ++p_duration)
        {
          goto LABEL_744;
        }
      }

      RenderTriplesForVideoComposition = v411;
LABEL_1177:
      v21 = RenderTriplesForVideoComposition;
      itemfig_resetRenderTriple(formatDescriptionOut);
      OUTLINED_FUNCTION_67_0();
      CMBaseObject = 0;
      OctaviaSubtitleRenderPipeline = 0;
      OUTLINED_FUNCTION_189_0();
      *(&v1303 + 1) = i;
      i = 0;
      goto LABEL_1178;
    }

    goto LABEL_746;
  }

  OUTLINED_FUNCTION_39_0();
  i = FigSignalErrorAtGM();
  itemfig_resetRenderTriple(formatDescriptionOut);
  *(&v1303 + 1) = 0;
  if (i)
  {
    v21 = i;
LABEL_1433:
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_189_0();
    goto LABEL_749;
  }

LABEL_747:
  if (!v349)
  {
    DerivedStorage = v1247;
    v416 = *(v1247 + 648);
    if (v416)
    {
      a6 = CFArrayGetCount(v416);
      LODWORD(v1272) = a6 > 0;
      if (a6 < 1)
      {
        LODWORD(v1272) = 0;
      }

      else
      {
        i = 0;
        do
        {
          v417 = CFArrayGetValueAtIndex(*(DerivedStorage + 81), i);
          OctaviaSubtitleRenderPipeline = v417;
          v418 = v417[2];
          if (v418)
          {
            v419 = *(v417 + 1);
            v420 = v419 == 1986618469 || v419 == 1635088502;
            if (!v420 || (FigStopForwardingMediaServicesProcessDeathNotification(), (v418 = *(OctaviaSubtitleRenderPipeline + 16)) != 0))
            {
              CFRelease(v418);
              *(OctaviaSubtitleRenderPipeline + 16) = 0;
            }
          }

          v421 = *(OctaviaSubtitleRenderPipeline + 248);
          if (v421)
          {
            CFRelease(v421);
            *(OctaviaSubtitleRenderPipeline + 248) = 0;
          }

          v422 = *(OctaviaSubtitleRenderPipeline + 264);
          if (v422)
          {
            CFRelease(v422);
            *(OctaviaSubtitleRenderPipeline + 264) = 0;
          }

          v423 = *(OctaviaSubtitleRenderPipeline + 168);
          if (v423)
          {
            v424 = CFArrayGetCount(v423);
            if (v424 >= 1)
            {
              v425 = v424;
              for (jj = 0; jj != v425; ++jj)
              {
                RenderTriplesForVideoComposition = CFArrayGetValueAtIndex(*(OctaviaSubtitleRenderPipeline + 168), jj);
                v427 = *(RenderTriplesForVideoComposition + 48);
                if (v427)
                {
                  CFRelease(v427);
                  *(RenderTriplesForVideoComposition + 48) = 0;
                }
              }
            }
          }

          ++i;
          DerivedStorage = v1247;
        }

        while (i != a6);
      }
    }

    else
    {
      LODWORD(v1272) = 0;
      a6 = 0;
    }

    OUTLINED_FUNCTION_164_0();
    CMBaseObject = v1298;
    do
    {
      v428 = *(v1298 + OctaviaSubtitleRenderPipeline);
      if (v428)
      {
        v428 = CFArrayGetCount(v428);
      }

      i += v428;
      OctaviaSubtitleRenderPipeline += 8;
    }

    while (OctaviaSubtitleRenderPipeline != 112);
    OctaviaSubtitleRenderPipeline = 0x100004052888210;
    OctaviaClosedCaptionsRenderPipeline = malloc_type_calloc(i, 4uLL, 0x100004052888210uLL);
    if (!OctaviaClosedCaptionsRenderPipeline)
    {
      OUTLINED_FUNCTION_39_0();
      v21 = FigSignalErrorAtGM();
      v229 = OUTLINED_FUNCTION_16_0();
      p_duration = 0;
      goto LABEL_1179;
    }

    CMBaseObject = 0x2004093837F09;
    p_duration = malloc_type_calloc(i, 8uLL, 0x2004093837F09uLL);
    if (!p_duration)
    {
      OUTLINED_FUNCTION_39_0();
      v21 = FigSignalErrorAtGM();
      v229 = OUTLINED_FUNCTION_16_0();
      goto LABEL_1179;
    }

    OctaviaSubtitleRenderPipeline = malloc_type_calloc(i, 4uLL, 0x100004052888210uLL);
    if (!OctaviaSubtitleRenderPipeline)
    {
      OUTLINED_FUNCTION_39_0();
      v21 = FigSignalErrorAtGM();
      v229 = OUTLINED_FUNCTION_23_0();
      CMBaseObject = 0;
      goto LABEL_1179;
    }

    CMBaseObject = malloc_type_calloc(i, 8uLL, 0x2004093837F09uLL);
    if (!CMBaseObject || (OUTLINED_FUNCTION_185_0(), (v1269 = malloc_type_calloc(i, 8uLL, v429)) == 0))
    {
      OUTLINED_FUNCTION_39_0();
      v21 = FigSignalErrorAtGM();
      v229 = OUTLINED_FUNCTION_23_0();
      goto LABEL_1179;
    }

    v1231 = OctaviaSubtitleRenderPipeline;
    allocatora = CMBaseObject;
    v1259 = p_duration;
    v430 = 0;
    formatDescriptionOut[0].start.value = 0;
    alloca = *MEMORY[0x1E695E480];
    v21 = 88;
    v1238[0] = OctaviaClosedCaptionsRenderPipeline;
    do
    {
      if (v1298[v430])
      {
        v431 = CFArrayGetCount(v1298[v430]);
      }

      else
      {
        v431 = 0;
      }

      if (v430 <= 6 && ((1 << v430) & 0x58) != 0 && v431 >= 1)
      {
        v432 = 0;
        do
        {
          while (1)
          {
            v433 = OUTLINED_FUNCTION_618();
            v435 = *(CFArrayGetValueAtIndex(v433, v434) + 3);
            if (v435)
            {
              v436 = FigRenderPipelineGetFigBaseObject(v435);
              v437 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v437)
              {
                break;
              }
            }

            if (++v432 >= v431)
            {
              goto LABEL_803;
            }
          }

          v438 = v437(v436, @"HDRCrossTalker", alloca, formatDescriptionOut);
          if (formatDescriptionOut[0].start.value)
          {
            v439 = v438 == 0;
          }

          else
          {
            v439 = 0;
          }

          ++v432;
        }

        while (!v439 && v432 < v431);
      }

LABEL_803:
      OctaviaClosedCaptionsRenderPipeline = v1238[0];
      if (v430 > 0xC)
      {
        break;
      }

      ++v430;
    }

    while (!formatDescriptionOut[0].start.value);
    v441 = v1247;
    if (formatDescriptionOut[0].start.value || (FigCrossTalkerCreate(alloca, formatDescriptionOut), formatDescriptionOut[0].start.value))
    {
      v442 = 0;
      v21 = 88;
      do
      {
        if (v1298[v442])
        {
          v443 = CFArrayGetCount(v1298[v442]);
        }

        else
        {
          v443 = 0;
        }

        if (v442 <= 6 && ((1 << v442) & 0x58) != 0 && v443 >= 1)
        {
          do
          {
            v444 = OUTLINED_FUNCTION_618();
            v446 = *(CFArrayGetValueAtIndex(v444, v445) + 3);
            if (v446)
            {
              v447 = formatDescriptionOut[0].start.value;
              v448 = FigRenderPipelineGetFigBaseObject(v446);
              v449 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v449)
              {
                v449(v448, @"HDRCrossTalker", v447);
              }
            }

            OUTLINED_FUNCTION_314_0();
          }

          while (!v50);
        }

        ++v442;
        v441 = v1247;
        OctaviaClosedCaptionsRenderPipeline = v1238[0];
      }

      while (v442 != 14);
      if (formatDescriptionOut[0].start.value)
      {
        CFRelease(formatDescriptionOut[0].start.value);
      }
    }

    v450 = 0;
    v451 = 0;
    theArraya = 0;
    p_duration = v1259;
    v452 = v1269;
    do
    {
      v453 = v1298[v450];
      if (v453)
      {
        theSeta = CFArrayGetCount(v1298[v450]);
        if (theSeta >= 1)
        {
          for (kk = 0; kk != theSeta; ++kk)
          {
            v455 = CFArrayGetValueAtIndex(v453, kk);
            *(OctaviaClosedCaptionsRenderPipeline + 4 * v451) = *v455;
            *(p_duration + 8 * v451) = v455[3];
            *(v452 + v451) = v455[4];
            if (v1272)
            {
              v21 = v455;
              v456 = 0;
              while (1)
              {
                v457 = CFArrayGetValueAtIndex(v441[81], v456);
                if (*v457 == *v21)
                {
                  break;
                }

                if (a6 == ++v456)
                {
                  goto LABEL_830;
                }
              }

              v458 = v457;
              if (v450 == 12 || *(v457 + 1) != 1835365473)
              {
                v1231[theArraya] = *v457;
                allocatora[theArraya++] = *(v21 + 24);
              }

              v452 = v1269;
              switch(v450)
              {
                case 0xB:
                  v461 = v457[21];
                  if (v461)
                  {
                    v462 = CFArrayGetCount(v461);
                    if (v462 >= 1)
                    {
                      OctaviaClosedCaptionsRenderPipeline = v462;
                      for (mm = 0; mm != OctaviaClosedCaptionsRenderPipeline; ++mm)
                      {
                        v464 = CFArrayGetValueAtIndex(v458[21], mm);
                        if (*(v464 + 7) == *(v21 + 16))
                        {
                          v441 = v464;
                          if (!v464[6])
                          {
                            v465 = *(v21 + 24);
                            if (v465)
                            {
                              v465 = CFRetain(v465);
                            }

                            v441[6] = v465;
                          }
                        }
                      }

                      OUTLINED_FUNCTION_251_0();
LABEL_830:
                      p_duration = v1259;
                      v452 = v1269;
                      goto LABEL_867;
                    }

                    OctaviaClosedCaptionsRenderPipeline = v1238[0];
                  }

                  break;
                case 0xA:
                  if (!v457[33])
                  {
                    v460 = *(v21 + 24);
                    if (v460)
                    {
                      v460 = CFRetain(v460);
                    }

                    v458[33] = v460;
                  }

                  break;
                case 9:
                  if (!v457[31])
                  {
                    v459 = *(v21 + 24);
                    if (v459)
                    {
                      v459 = CFRetain(v459);
                    }

                    v458[31] = v459;
                  }

                  break;
                default:
                  if (!v457[2])
                  {
                    v466 = *(v21 + 24);
                    if (v466)
                    {
                      v467 = CFRetain(v466);
                      v458[2] = v467;
                      if (v467)
                      {
                        OUTLINED_FUNCTION_33();
                        if (v50 || v468 == 1635088502)
                        {
                          FigStartForwardingMediaServicesProcessDeathNotification();
                        }
                      }
                    }

                    else
                    {
                      v458[2] = 0;
                    }
                  }

                  break;
              }

              p_duration = v1259;
            }

LABEL_867:
            ++v451;
          }
        }
      }

      ++v450;
    }

    while (v450 != 14);
    IsMemberOfClass = CFSetCreateMutable(alloca, 0, MEMORY[0x1E695E9F8]);
    theSet = IsMemberOfClass;
    a1 = v1224;
    LODWORD(v478) = v1215;
    if (v451 >= 1)
    {
      v479 = p_duration;
      v480 = v451;
      do
      {
        v471 = *v479;
        if (*v479)
        {
          CFSetAddValue(theSet, v471);
        }

        ++v479;
        --v480;
      }

      while (v480);
    }

    if (*(v1215 + 176))
    {
      IsMemberOfClass = v441[16];
      if (IsMemberOfClass)
      {
        CMByteStreamGetCMBaseObject();
        FigCRABSGetClassID();
        OUTLINED_FUNCTION_201_0();
        IsMemberOfClass = CMBaseObjectIsMemberOfClass();
        if (IsMemberOfClass)
        {
          SInt32 = FigCFNumberCreateSInt32();
          v482 = CMByteStreamGetCMBaseObject();
          VTable = CMBaseObjectGetVTable();
          v484 = *(VTable + 8);
          IsMemberOfClass = VTable + 8;
          v485 = *(v484 + 56);
          if (v485)
          {
            IsMemberOfClass = v485(v482, *MEMORY[0x1E6960E18], SInt32);
          }

          if (SInt32)
          {
            CFRelease(SInt32);
          }
        }
      }
    }

    v486 = OUTLINED_FUNCTION_305_0(IsMemberOfClass, v471, v472, v473, v474, v475, v476, v477, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1175[0], v1175[1], v1185, v1247 + 352);
    DerivedStorage = "itemfig_rebuildRenderPipelinesAndBossGuts";
    if (v486)
    {
      i = v1269;
      v487 = FigPlaybackBossSetTrackList(v486, v451, OctaviaClosedCaptionsRenderPipeline, p_duration, v1269);
      a6 = 0;
      if (v487)
      {
        v21 = v487;
        RenderTriplesForVideoComposition = 0;
        v229 = 0;
        DerivedStorage = v1247;
        OctaviaSubtitleRenderPipeline = v1231;
        CMBaseObject = allocatora;
        goto LABEL_1179;
      }

      v495 = 0;
      v1176 = 0;
LABEL_1018:
      if (*(v1247 + 284))
      {
        v646 = OUTLINED_FUNCTION_305_0(v487, v488, v489, v490, v491, v492, v493, v494, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1176, v1181, v1186, v1191);
        FigPlaybackBossSetReversalLimits(v646, 10, 3);
      }

      *&v1272 = v495;
      v647 = CMBaseObjectGetDerivedStorage();
      v648 = CMBaseObjectGetDerivedStorage();
      v649 = *(v648 + 844);
      v650 = *(v648 + 848);
      v651 = 1.0;
      v652 = fmaxf(v649, 1.0);
      if (!*(v648 + 841))
      {
        v652 = 1.0;
      }

      v653 = fminf(v650, 1.0);
      if (*(v648 + 842))
      {
        v651 = v653;
      }

      if (*(v648 + 960))
      {
        v654 = 1;
      }

      else
      {
        v654 = *(v648 + 841);
      }

      if (*(v648 + 960))
      {
        v655 = 1;
      }

      else
      {
        v655 = *(v648 + 842);
      }

      if (*(v648 + 960))
      {
        v649 = v652;
        v650 = v651;
      }

      FigPlaybackBossSetAudibleRateRange(*(v647 + 352), v654, v655, v649, v650);
      v656 = CMBaseObjectGetDerivedStorage();
      if (CFArrayGetCount(*(v656 + 648)) < 1)
      {
        v657 = 0;
      }

      else
      {
        v657 = 0;
        LODWORD(v478) = 0;
        while (1)
        {
          v658 = CFArrayGetValueAtIndex(*(v656 + 648), 0);
          if (*(v658 + 1) == 1936684398 && *(v658 + 8))
          {
            v659 = *(v658 + 14);
            if (!v659)
            {
              v659 = *(v656 + 1512);
            }

            v660 = v657 ? v657 : v659;
            v661 = @"LowQualityZeroLatency" == v659 || @"LowQualityZeroLatency" == v657;
            v657 = v661 ? @"LowQualityZeroLatency" : v660;
            if (v657 == @"LowQualityZeroLatency")
            {
              break;
            }
          }

          OUTLINED_FUNCTION_314_0();
          if (v50)
          {
            goto LABEL_1053;
          }
        }

        v657 = @"LowQualityZeroLatency";
      }

LABEL_1053:
      if (v657 == @"TimeDomain" || v657 == @"Spectral" || v657 == @"Varispeed")
      {
        FigPlaybackBossSetRateSnapping(*(v656 + 352), 0, 0.03125, 32.0);
        CMBaseObject = allocatora;
      }

      else
      {
        v664 = *(v656 + 352);
        CMBaseObject = allocatora;
        if (v657 != @"LowQualityZeroLatency")
        {
          FigPlaybackBossSetRateSnapping(v664, 0, 0.03125, 32.0);
          OctaviaClosedCaptionsRenderPipeline = theArraya;
          if (v657)
          {
            OUTLINED_FUNCTION_213_0();
            v665 = OUTLINED_FUNCTION_209_0();
            v666 = os_log_type_enabled(v665, v1289);
            if (OUTLINED_FUNCTION_77_0(v666))
            {
              *cf = 136315138;
              *&cf[4] = "itemfig_setRateSnappingOnBoss";
              OUTLINED_FUNCTION_52_0();
              OUTLINED_FUNCTION_44_0();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_420();
            CMBaseObject = allocatora;
          }

LABEL_1069:
          FigPlaybackBossSetContinuePlayingDuringPrerollForSeek(*(v1247 + 352), *(v1247 + 287));
          FigPlaybackBossSetContinuePlayingDuringPrerollForRateChange(*(v1247 + 352), *(v1247 + 288));
          if (*(v1247 + 290))
          {
            FigPlaybackBossSetIFrameOnlySpeedThreshold(*(v1247 + 352), *(v1247 + 292));
          }

          FigPlaybackBossSetUseIFrameOnlyPlaybackForHighRateScaledEdits(*(v1247 + 352), *(v1247 + 289));
          *&formatDescriptionOut[0].start.value = *(v1247 + 296);
          OUTLINED_FUNCTION_364_0(*(v1247 + 312));
          FigPlaybackBossSetMinimumIntervalForIFrameOnlyPlayback(v667, v668);
          FigPlaybackBossSetThoroughlyRefreshClosedCaptionsWhenSeeking(*(v1247 + 352), *(v1247 + 320));
          v669 = *(v1247 + 360);
          *(v1247 + 360) = theSet;
          if (theSet)
          {
            CFRetain(theSet);
          }

          if (v669)
          {
            CFRelease(v669);
          }

          v670 = 0;
          v671 = v1247 + 368;
          do
          {
            v672 = *(v671 + v670 * 8);
            *(v671 + v670 * 8) = v1298[v670];
            v1298[v670++] = v672;
          }

          while (v670 != 14);
          if (OctaviaClosedCaptionsRenderPipeline >= 1)
          {
            if (*(v1247 + 128))
            {
              FigSimpleMutexLock();
              v673 = (v1247 + 600);
              v674 = *(v1247 + 600);
              if (!v674 || !FigPlayabilityMonitorCanReuse(v674, *(v1247 + 1008), v1231, OctaviaClosedCaptionsRenderPipeline, *(v1247 + 128)) || (v675 = FigPlayabilityMonitorSetRenderPipelines(*v673, OctaviaClosedCaptionsRenderPipeline, CMBaseObject), !v675) || (v683 = OUTLINED_FUNCTION_305_0(v675, v676, v677, v678, v679, v680, v681, v682, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1176, v1181, v1186, v1191), FigPlaybackBossGetTimebase(v683), v684 = OUTLINED_FUNCTION_201_0(), !FigPlayabilityMonitorSetPlaybackTimebase(v684, v685)))
              {
                itemfig_unregisterAndDestroyPlayabilityMonitorNotification();
              }

              if (*v673)
              {
                v21 = 0;
              }

              else
              {
                LODWORD(v478) = v1247;
                v688 = *(v1247 + 1008);
                v689 = *(v1247 + 128);
                Timebase = FigPlaybackBossGetTimebase(*(v1247 + 352));
                v691 = v689;
                CMBaseObject = allocatora;
                v21 = FigPlayabilityMonitorCreate(v688, v1231, allocatora, OctaviaClosedCaptionsRenderPipeline, v691, Timebase, *(v1247 + 1392), v673);
              }

              if (dword_1EAF16A10)
              {
                OUTLINED_FUNCTION_213_0();
                v692 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                OctaviaClosedCaptionsRenderPipeline = *value;
                os_log_type_enabled(v692, v1289);
                OUTLINED_FUNCTION_40();
                if (v478)
                {
                  if (a1)
                  {
                    v693 = (CMBaseObjectGetDerivedStorage() + 2096);
                  }

                  else
                  {
                    v693 = "";
                  }

                  *cf = 136316162;
                  *&cf[4] = "itemfig_rebuildRenderPipelinesAndBossGuts";
                  *&cf[12] = 2048;
                  *&cf[14] = a1;
                  *&cf[22] = 2082;
                  *&cf[24] = v693;
                  *&cf[32] = 2048;
                  OUTLINED_FUNCTION_301_0();
                  *v1291 = 1024;
                  *&v1291[2] = v21;
                  OUTLINED_FUNCTION_52_0();
                  OUTLINED_FUNCTION_44_0();
                  _os_log_send_and_compose_impl();
                  OctaviaClosedCaptionsRenderPipeline = *value;
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_414();
                CMBaseObject = allocatora;
              }

              FigSimpleMutexUnlock();
              if (v21)
              {
                OUTLINED_FUNCTION_213_0();
                v1014 = OUTLINED_FUNCTION_209_0();
                OUTLINED_FUNCTION_243_0(v1014, v1015, v1016, v1017, v1018, v1019, v1020, v1021, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1176, v1181, v1186, v1191, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v1231, allocatora, v1238[0], v1238[1], v1243, v1247, alloca, theArraya, v1259, v1269, v1272, *(&v1272 + 1), theSet, v1281, v1282, *v1283, *type, v1285, valuePtr, v1287, v1288, v1289);
                OUTLINED_FUNCTION_189();
                if (v50)
                {
                  v1023 = v1022;
                }

                else
                {
                  v1023 = v478;
                }

                if (v1023)
                {
                  if (v1229)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  OUTLINED_FUNCTION_32_0();
                  *&cf[14] = v1229;
                  OUTLINED_FUNCTION_55_0();
                  *(v1058 + 255) = v21;
                  OUTLINED_FUNCTION_52_0();
                  OUTLINED_FUNCTION_44_0();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_16();
                OUTLINED_FUNCTION_524();
                a6 = 0;
                a1 = v1229;
LABEL_1569:
                OUTLINED_FUNCTION_251_0();
                p_duration = v1259;
                goto LABEL_1570;
              }

              itemfig_registerPlayabilityMonitorNotification(a1);
            }

            else
            {
              CMNotificationCenterGetDefaultLocalCenter();
              OUTLINED_FUNCTION_197();
              itemfig_LikelyToKeepUp(v686, v687);
            }
          }

          v694 = (v1247 + 1912);
          v695 = *(v1247 + 1912);
          if (v695)
          {
            FigSyncMomentSourceDestroy(v695);
            *v694 = 0;
          }

          a6 = v1247 + 1904;
          v696 = *(v1247 + 1904);
          if (v696)
          {
            FigOutOfBandTrackControllerInvalidate(v696);
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_168_0();
            FigNotificationCenterRemoveWeakListener();
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_167_0();
            FigNotificationCenterRemoveWeakListener();
            if (*a6)
            {
              CFRelease(*a6);
              *a6 = 0;
            }
          }

          v697 = *(v1247 + 1896);
          if (!v697)
          {
            goto LABEL_1147;
          }

          if (*(v1215 + 130))
          {
            OctaviaClosedCaptionsRenderPipeline = *(v1215 + 131) != 0;
            if (*(v1215 + 193))
            {
              goto LABEL_1109;
            }
          }

          else
          {
            OctaviaClosedCaptionsRenderPipeline = 0;
            if (*(v1215 + 193))
            {
              goto LABEL_1109;
            }
          }

          if (!OctaviaClosedCaptionsRenderPipeline)
          {
            goto LABEL_1147;
          }

LABEL_1109:
          v698 = CFDictionaryGetValue(v697, @"MediaSelectionOptionsURL");
          if (v698)
          {
            v699 = v698;
            if (CFStringFind(v698, @"://", 0).location != -1)
            {
              v700 = CFURLCreateWithString(alloca, v699, 0);
              if (v700)
              {
                v701 = v700;
                *value = 0;
                v702 = itemfig_buildOutOfBandTrackControllerOptions(a1, value);
                if (!*value)
                {
                  v703 = v702;
                  LODWORD(v1289) = 0;
                  LOBYTE(v1288) = 0;
                  v735 = OUTLINED_FUNCTION_347_0();
                  OUTLINED_FUNCTION_240_0(v735, v736, v737, v738, v739, v740, v741, v742, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1176, v1181, v1186, v1191, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v1231, allocatora, v1238[0], v1238[1], v1243, v1247, alloca, theArraya, v1259, v1269, v1272, *(&v1272 + 1), theSet, v1281, v1282, *v1283, *type, v1285, valuePtr, v1287, v1288, SHIDWORD(v1288), v1289);
                  OUTLINED_FUNCTION_46();
                  if (!OctaviaClosedCaptionsRenderPipeline)
                  {
                    goto LABEL_1144;
                  }

                  if (!a1)
                  {
                    goto LABEL_1143;
                  }

                  goto LABEL_1142;
                }

                v703 = FigOutOfBandTrackControllerCreate(alloca, v701, *value, a6);
                if (*value)
                {
                  CFRelease(*value);
                }

                if (!*a6)
                {
                  LODWORD(v1289) = 0;
                  LOBYTE(v1288) = 0;
                  v743 = OUTLINED_FUNCTION_347_0();
                  OUTLINED_FUNCTION_240_0(v743, v744, v745, v746, v747, v748, v749, v750, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1176, v1181, v1186, v1191, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v1231, allocatora, v1238[0], v1238[1], v1243, v1247, alloca, theArraya, v1259, v1269, v1272, *(&v1272 + 1), theSet, v1281, v1282, *v1283, *type, v1285, valuePtr, v1287, v1288, SHIDWORD(v1288), v1289);
                  OUTLINED_FUNCTION_46();
                  if (!OctaviaClosedCaptionsRenderPipeline)
                  {
                    goto LABEL_1144;
                  }

                  if (!a1)
                  {
                    goto LABEL_1143;
                  }

                  goto LABEL_1142;
                }

                CMNotificationCenterGetDefaultLocalCenter();
                OUTLINED_FUNCTION_167_0();
                OUTLINED_FUNCTION_186();
                FigNotificationCenterAddWeakListener();
                CMNotificationCenterGetDefaultLocalCenter();
                OUTLINED_FUNCTION_168_0();
                OUTLINED_FUNCTION_186();
                FigNotificationCenterAddWeakListener();
                OUTLINED_FUNCTION_29();
                if (v50)
                {
                  *&formatDescriptionOut[0].start.value = *(v1247 + 24);
                  OUTLINED_FUNCTION_364_0(*(v1247 + 40));
                  v704 = FigOutOfBandTrackControllerSetCurrentTime(v705, v706);
                }

                v707 = *(v1247 + 1880);
                if (v707)
                {
                  FigOutOfBandTrackControllerSetProperty(*a6, @"TextMarkupArray", v707);
                }

                if (!OctaviaClosedCaptionsRenderPipeline)
                {
LABEL_1137:
                  v713 = FigOutOfBandTrackControllerPrepare(*a6, v704);
                  if (!v713)
                  {
                    v714 = FigPlaybackBossGetTimebase(*(v1247 + 352));
                    v713 = FigSyncMomentSourceCreateWithDispatchQueue(itemfig_synchronizeOOBSController, a1, v714, *(v1247 + 104), v694);
                    if (!v713)
                    {
                      goto LABEL_1145;
                    }
                  }

                  v703 = v713;
                  LODWORD(v1289) = 0;
                  LOBYTE(v1288) = 0;
                  v715 = OUTLINED_FUNCTION_347_0();
                  OUTLINED_FUNCTION_240_0(v715, v716, v717, v718, v719, v720, v721, v722, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1176, v1181, v1186, v1191, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v1231, allocatora, v1238[0], v1238[1], v1243, v1247, alloca, theArraya, v1259, v1269, v1272, *(&v1272 + 1), theSet, v1281, v1282, *v1283, *type, v1285, valuePtr, v1287, v1288, SHIDWORD(v1288), v1289);
                  OUTLINED_FUNCTION_46();
                  if (!OctaviaClosedCaptionsRenderPipeline)
                  {
LABEL_1144:
                    OUTLINED_FUNCTION_16();
                    OUTLINED_FUNCTION_238_0();
LABEL_1145:
                    CFRelease(v701);
LABEL_1146:
                    CMBaseObject = allocatora;
LABEL_1147:
                    v21 = itemfig_setMuted(a1, *(v1215 + 814));
                    playerfig_updateCaptionOrSubtitleHintOnVideoPipeline(v1207, a1);
                    if (*(v1215 + 52) == 4 && *(v1215 + 48) != 0.0)
                    {
                      itemfig_ReportAudioPlaybackThroughFigLog(a1);
                    }

                    playerfig_updateResourceUsageOnGlobalResourceArbiter(v1207, a1);
                    a6 = 0;
                    OUTLINED_FUNCTION_251_0();
                    p_duration = v1259;
                    OctaviaSubtitleRenderPipeline = v1231;
                    goto LABEL_1151;
                  }

                  if (!a1)
                  {
LABEL_1143:
                    *cf = 136315906;
                    *&cf[4] = "itemfig_rebuildRenderPipelinesAndBossGuts";
                    OUTLINED_FUNCTION_17_0();
                    OUTLINED_FUNCTION_146_0();
                    *(v723 + 255) = v703;
                    OUTLINED_FUNCTION_52_0();
                    OUTLINED_FUNCTION_65();
                    _os_log_send_and_compose_impl();
                    goto LABEL_1144;
                  }

LABEL_1142:
                  CMBaseObjectGetDerivedStorage();
                  goto LABEL_1143;
                }

                LODWORD(formatDescriptionOut[0].start.value) = 0;
                *cf = 0;
                v708 = CFDictionaryCreateMutable(alloca, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v708)
                {
                  v709 = v708;
                  v710 = *MEMORY[0x1E695E4D0];
                  if (*(v1215 + 130))
                  {
                    v711 = *MEMORY[0x1E695E4D0];
                  }

                  else
                  {
                    v711 = *MEMORY[0x1E695E4C0];
                  }

                  CFDictionarySetValue(v708, @"Visuals", v711);
                  FigSimpleMutexLock();
                  if (*(v1215 + 130))
                  {
                    CFDictionarySetValue(v709, @"NeroTransport", *(v1215 + 168));
                  }

                  FigSimpleMutexUnlock();
                  FigOutOfBandTrackControllerSetProperty(*a6, @"UsingNeroVideo", v710);
                  itemfig_GetDimensions(a1, formatDescriptionOut, cf);
                  v1313.width = *&formatDescriptionOut[0].start.value;
                  v1313.height = *cf;
                  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v1313);
                  if (DictionaryRepresentation)
                  {
                    FigOutOfBandTrackControllerSetProperty(*a6, @"NeroVideoDimensions", DictionaryRepresentation);
                  }

                  OctaviaClosedCaptionsRenderPipeline = CGSizeCreateDictionaryRepresentation(*(v1215 + 136));
                  if (OctaviaClosedCaptionsRenderPipeline)
                  {
                    FigOutOfBandTrackControllerSetProperty(*a6, @"NeroDisplaySize", OctaviaClosedCaptionsRenderPipeline);
                  }

                  FigOutOfBandTrackControllerSetProperty(*a6, @"NeroVideoGravity", *(v1215 + 152));
                  if (DictionaryRepresentation)
                  {
                    CFRelease(DictionaryRepresentation);
                  }

                  if (OctaviaClosedCaptionsRenderPipeline)
                  {
                    CFRelease(OctaviaClosedCaptionsRenderPipeline);
                  }

                  CFRelease(v709);
                  goto LABEL_1137;
                }

                OUTLINED_FUNCTION_39_0();
                FigSignalErrorAtGM();
                OUTLINED_FUNCTION_141_0();
                goto LABEL_1569;
              }
            }

            OUTLINED_FUNCTION_213_0();
            v724 = OUTLINED_FUNCTION_209_0();
            OctaviaClosedCaptionsRenderPipeline = *value;
            os_log_type_enabled(v724, v1289);
            OUTLINED_FUNCTION_40();
            if (&__block_descriptor_96_e8_32r_e5_v8__0lr32l8)
            {
              if (a1)
              {
                CMBaseObjectGetDerivedStorage();
              }

              *cf = 136315907;
              *&cf[4] = "itemfig_rebuildRenderPipelinesAndBossGuts";
              OUTLINED_FUNCTION_215_0();
              *&cf[32] = 2113;
              OUTLINED_FUNCTION_301_0();
              OUTLINED_FUNCTION_52_0();
              OUTLINED_FUNCTION_44_0();
              _os_log_send_and_compose_impl();
              OctaviaClosedCaptionsRenderPipeline = *value;
            }
          }

          else
          {
            OUTLINED_FUNCTION_213_0();
            v725 = OUTLINED_FUNCTION_209_0();
            OUTLINED_FUNCTION_243_0(v725, v726, v727, v728, v729, v730, v731, v732, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1176, v1181, v1186, v1191, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v1231, allocatora, v1238[0], v1238[1], v1243, v1247, alloca, theArraya, v1259, v1269, v1272, *(&v1272 + 1), theSet, v1281, v1282, *v1283, *type, v1285, valuePtr, v1287, v1288, v1289);
            OUTLINED_FUNCTION_189();
            if (v50)
            {
              v734 = v733;
            }

            else
            {
              v734 = &__block_descriptor_96_e8_32r_e5_v8__0lr32l8;
            }

            if (v734)
            {
              if (a1)
              {
                CMBaseObjectGetDerivedStorage();
              }

              *cf = 136315650;
              *&cf[4] = "itemfig_rebuildRenderPipelinesAndBossGuts";
              OUTLINED_FUNCTION_17_0();
              OUTLINED_FUNCTION_52_0();
              OUTLINED_FUNCTION_44_0();
              _os_log_send_and_compose_impl();
            }
          }

          OUTLINED_FUNCTION_16();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_1146;
        }

        FigPlaybackBossSetRateSnapping(v664, 1, 0.0, 0.0);
      }

      OctaviaClosedCaptionsRenderPipeline = theArraya;
      goto LABEL_1069;
    }

    v496 = *(v1215 + 78) != 0;
    v497 = CMBaseObjectGetDerivedStorage();
    formatDescriptionOut[0].start.value = 0;
    v498 = *(v497 + 128);
    if (theSet && v498)
    {
      *cf = 0;
      CFSetApplyFunction(theSet, fp_interrogateRenderPipeline, cf);
      if (cf[0])
      {
        goto LABEL_894;
      }

      v499 = (*cf >> 1) & 1;
    }

    else
    {
      if (!v498)
      {
        goto LABEL_894;
      }

      LOBYTE(v499) = 0;
    }

    *cf = 0;
    CMByteStreamGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v500 = OUTLINED_FUNCTION_270();
      v501(v500);
      v502 = *cf;
      v503 = *MEMORY[0x1E695E4D0];
      if (*cf)
      {
        CFRelease(*cf);
      }

      if (v503 == v502)
      {
        goto LABEL_894;
      }

LABEL_898:
      CMByteStreamGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v504 = OUTLINED_FUNCTION_270();
        if (!v505(v504))
        {
          if (formatDescriptionOut[0].start.value)
          {
            if (v503 == formatDescriptionOut[0].start.value)
            {
              CMByteStreamGetCMBaseObject();
              FigCachedFileByteStreamGetClassID();
              OUTLINED_FUNCTION_201_0();
              v764 = CMBaseObjectIsMemberOfClass();
              if (v764)
              {
                v765 = v499;
              }

              else
              {
                v765 = 1;
              }

              if (v765)
              {
                v766 = v764;
                CFRelease(formatDescriptionOut[0].start.value);
                if (!v766)
                {
                  goto LABEL_904;
                }

                goto LABEL_903;
              }

              v823 = CMBaseObjectGetDerivedStorage();
              if (CFArrayGetCount(*(v823 + 648)) < 1)
              {
LABEL_1288:
                playerfig_setReadCacheEnabled();
                CFRelease(formatDescriptionOut[0].start.value);
                goto LABEL_904;
              }

              while (1)
              {
                CFArrayGetValueAtIndex(*(v823 + 648), 0);
                OUTLINED_FUNCTION_303_0();
                if (v50 && !*(v824 + 72))
                {
                  break;
                }

                OUTLINED_FUNCTION_314_0();
                if (v50)
                {
                  goto LABEL_1288;
                }
              }
            }

            CFRelease(formatDescriptionOut[0].start.value);
          }
        }
      }

LABEL_903:
      v496 |= 8u;
      goto LABEL_904;
    }

    v503 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      goto LABEL_898;
    }

LABEL_894:
    playerfig_setReadCacheEnabled();
LABEL_904:
    v1176 = CFDictionaryCreateMutable(alloca, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v506 = v1247;
    OUTLINED_FUNCTION_29();
    if (v50)
    {
      OUTLINED_FUNCTION_312_0();
      *cf = *MEMORY[0x1E6960CC0];
      v507 = *(MEMORY[0x1E6960CC0] + 16);
      *&cf[16] = v507;
      if ((OUTLINED_FUNCTION_439_0(v508, v509, v510, v511, v512, v513, v514, v515, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1176, v1181, v1186, v1191, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v1231, allocatora, v1238[0], v1238[1], v1243, v1247, alloca, theArraya, v1259, v1269, *cf, *&cf[8], theSet, v1281, v1282, *v1283, *type, v1285, valuePtr, v1287, v1288, v1289, *cf) & 0x80000000) == 0)
      {
        OUTLINED_FUNCTION_29();
        if (v50)
        {
          OUTLINED_FUNCTION_229_0(v506 + 260, v1102, v1108, v1115, v1121, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1176, v1181, v1186, v1191, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v1231, allocatora, v1238[0], v1238[1], v1243, v1247, alloca, theArraya, v1259, v1269, v1272);
          *&cf[16] = v507;
          if (OUTLINED_FUNCTION_439_0(v516, v517, v518, v519, v520, v521, v522, v523, v1103, v1109, v1116, v1122, v1127, v1131, keya, v1139, v1143, v1147, v1151, v1155, v1159, v1163, v1167, v1171, v1177, v1182, v1187, v1192, v1196, v1200, v1204, v1208, contexta, v1216, v1220, v1225, v1232, allocatorb, v1239, v1241, v1244, v1248, allocb, theArrayb, v1260, v1270, v1274, v1277, theSet, v1281, v1282, *v1283, *type, v1285, valuePtr, v1287, v1288, v1289, *cf) >= 1)
          {
            OUTLINED_FUNCTION_304_0();
            FigCFDictionarySetCMTimeRange();
          }
        }
      }
    }

    v524 = v1215;
    if (*(v506 + 2096))
    {
      v525 = CFStringCreateWithCString(alloca, (v506 + 2096), 0x600u);
      if (v525)
      {
        v526 = v525;
        CFDictionarySetValue(v1176, @"Boss_ItemIdentifier", v525);
        CFRelease(v526);
      }
    }

    v527 = *(v506 + 1008);
    v528 = *(v506 + 1016);
    if (v1203)
    {
      v529 = *(v506 + 328);
    }

    else
    {
      v529 = 1;
    }

    a6 = v1191;
    v1110 = v496;
    OctaviaClosedCaptionsRenderPipeline = v1238[0];
    v530 = FigPlaybackBossCreate(alloca, v527, v451, v1238[0], p_duration, v1269, v528, v529, *(v1215 + 88), v1110, v1176, v1191);
    if (v530)
    {
      v21 = v530;
      OUTLINED_FUNCTION_213_0();
      v1004 = OUTLINED_FUNCTION_209_0();
      OUTLINED_FUNCTION_243_0(v1004, v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1176, v1181, v1186, v1191, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v1231, allocatora, v1238[0], v1238[1], v1243, v1247, alloca, theArraya, v1259, v1269, v1272, *(&v1272 + 1), theSet, v1281, v1282, *v1283, *type, v1285, valuePtr, v1287, v1288, v1289);
      OUTLINED_FUNCTION_189();
      if (v50)
      {
        v1013 = v1012;
      }

      else
      {
        v1013 = v524;
      }

      if (v1013)
      {
        if (v1228)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_32_0();
        *&cf[14] = v1228;
        OUTLINED_FUNCTION_55_0();
        *(v1057 + 255) = v21;
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_44_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_524();
      a6 = 0;
      RenderTriplesForVideoComposition = 0;
      a1 = v1228;
      OUTLINED_FUNCTION_251_0();
      p_duration = v1262;
    }

    else
    {
      CMBaseObjectGetDerivedStorage();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_186();
      FigNotificationCenterAddWeakListeners();
      CMNotificationCenterGetDefaultLocalCenter();
      FigPlaybackBossGetTimebase(*v1191);
      OUTLINED_FUNCTION_186();
      FigNotificationCenterAddWeakListener();
      FigSimpleMutexLock();
      v531 = *(v1215 + 472);
      if (v531)
      {
        a6 = CFRetain(v531);
        FigSimpleMutexUnlock();
        OctaviaSubtitleRenderPipeline = v1231;
        if (a6)
        {
          v532 = CFNumberCreate(alloca, kCFNumberSInt32Type, (v1215 + 480));
          v540 = OUTLINED_FUNCTION_305_0(v532, v533, v534, v535, v536, v537, v538, v539, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1176, v1181, v1186, v1191);
          v21 = FigPlaybackBossSetClientPID(v540, v532);
          if (v532)
          {
            CFRelease(v532);
          }

          if (v21)
          {
            RenderTriplesForVideoComposition = 0;
            DerivedStorage = v1247;
LABEL_924:
            CMBaseObject = allocatora;
            i = v1269;
LABEL_1152:
            v229 = v1176;
            goto LABEL_1179;
          }

          CFRelease(a6);
        }
      }

      else
      {
        FigSimpleMutexUnlock();
      }

      itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(a1, 0);
      if (!*(v1247 + 824))
      {
        *&v1272 = 0;
        v478 = v1215;
        goto LABEL_947;
      }

      v549 = OUTLINED_FUNCTION_305_0(v541, v542, v543, v544, v545, v546, v547, v548, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1176, v1181, v1186, v1191);
      FigPlaybackBossGetTimebase(v549);
      v550 = OUTLINED_FUNCTION_298();
      v478 = v1215;
      if (FigVideoCompositionProcessorSetProperty(v550, v551, v552))
      {
        OUTLINED_FUNCTION_141_0();
        RenderTriplesForVideoComposition = 0;
      }

      else
      {
        OctaviaClosedCaptionsRenderPipeline = v1247;
        if ((*(v1247 + 248) & 0x1D) == 1)
        {
          OUTLINED_FUNCTION_312_0();
          OUTLINED_FUNCTION_155_0(MEMORY[0x1E6960CC0]);
          if ((OUTLINED_FUNCTION_439_0(v553, v554, v555, v556, v557, v558, v559, v560, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1176, v1181, v1186, v1191, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v1231, allocatora, v1238[0], v1238[1], v1243, v1247, alloca, theArraya, v1259, v1269, v1272, *(&v1272 + 1), theSet, v1281, v1282, *v1283, *type, v1285, valuePtr, v1287, v1288, v1289, *cf) & 0x80000000) == 0)
          {
            OUTLINED_FUNCTION_29();
            if (v50)
            {
              OUTLINED_FUNCTION_229_0(OctaviaClosedCaptionsRenderPipeline + 260, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170, v1176, v1181, v1186, v1191, v1195, v1199, v1203, v1207, context, v1215, v1219, v1224, v1231, allocatora, v1238[0], v1238[1], v1243, v1247, alloca, theArraya, v1259, v1269, v1272);
              *&cf[16] = @"VideoCompositionProcessorProperty_Timebase";
              if (OUTLINED_FUNCTION_439_0(v561, v562, v563, v564, v565, v566, v567, v568, v1104, v1111, v1117, v1123, v1128, v1132, keyb, v1140, v1144, v1148, v1152, v1156, v1160, v1164, v1168, v1172, v1178, v1183, v1188, v1193, v1197, v1201, v1205, v1209, contextb, v1217, v1221, v1226, v1233, allocatorc, v1240, v1242, v1245, v1249, allocc, theArrayc, v1261, v1271, v1275, v1278, theSet, v1281, v1282, *v1283, *type, v1285, valuePtr, v1287, v1288, v1289, *cf) >= 1)
              {
                OUTLINED_FUNCTION_304_0();
                *&v1272 = CMTimeRangeCopyAsDictionary(formatDescriptionOut, alloca);
                if (FigVideoCompositionProcessorSetProperty(*(OctaviaClosedCaptionsRenderPipeline + 824), @"VideoCompositionProcessorProperty_LoopTimeRange", v1272))
                {
                  OUTLINED_FUNCTION_141_0();
                  OUTLINED_FUNCTION_251_0();
LABEL_1570:
                  OctaviaSubtitleRenderPipeline = v1231;
                  CMBaseObject = allocatora;
LABEL_1151:
                  i = v1269;
                  RenderTriplesForVideoComposition = v1272;
                  goto LABEL_1152;
                }

                goto LABEL_943;
              }
            }
          }
        }

        v569 = FigVideoCompositionProcessorSetProperty(*(OctaviaClosedCaptionsRenderPipeline + 824), @"VideoCompositionProcessorProperty_LoopTimeRange", 0);
        a6 = 0;
        if (!v569)
        {
          *&v1272 = 0;
          v478 = v1215;
LABEL_943:
          OctaviaClosedCaptionsRenderPipeline = v1238[0];
          if (FigPlaybackBossSetVideoCompositionProcessor(*(v1247 + 352), *(v1247 + 824)) || FigPlaybackBossSetSeekingWaitsForVideoCompositionRendering(*(v1247 + 352), *(v1247 + 545)))
          {
            OUTLINED_FUNCTION_141_0();
            DerivedStorage = v1247;
            goto LABEL_1570;
          }

LABEL_947:
          v570 = v1247;
          OUTLINED_FUNCTION_29();
          if (v50)
          {
            if (*(v1247 + 128))
            {
              CMByteStreamGetCMBaseObject();
              FigCRABSGetClassID();
              OUTLINED_FUNCTION_201_0();
              if (CMBaseObjectIsMemberOfClass())
              {
                *cf = *(v1247 + 24);
                *&cf[16] = *(v1247 + 40);
                *value = *MEMORY[0x1E6960CC0];
                *&value[16] = *(MEMORY[0x1E6960CC0] + 16);
                CMTimeRangeMake(formatDescriptionOut, cf, value);
                itemfig_HintStreamForTimeRange(a1, &formatDescriptionOut[0].start.value);
              }
            }

            v571 = (*(v1247 + 96) & 0xF) - 1;
            if (v571 >= 5)
            {
              if (*(v478 + 48) >= 0.0)
              {
                v572 = 1;
              }

              else
              {
                v572 = 2;
              }
            }

            else
            {
              v572 = dword_196E727A8[v571];
            }

            if (dword_1EAF16A10 >= 2)
            {
              OUTLINED_FUNCTION_213_0();
              v573 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v574 = *value;
              os_log_type_enabled(v573, v1289);
              OUTLINED_FUNCTION_425();
              if (v50)
              {
                v576 = v575;
              }

              else
              {
                v576 = v574;
              }

              if (v576)
              {
                if (v1207)
                {
                  v577 = (CMBaseObjectGetDerivedStorage() + 972);
                }

                else
                {
                  v577 = "";
                }

                if (a1)
                {
                  v634 = (CMBaseObjectGetDerivedStorage() + 2096);
                }

                else
                {
                  v634 = "";
                }

                v21 = cf;
                *&formatDescriptionOut[0].start.value = *(v1247 + 24);
                formatDescriptionOut[0].start.epoch = *(v1247 + 40);
                Seconds = CMTimeGetSeconds(&formatDescriptionOut[0].start);
                *&formatDescriptionOut[0].start.value = *(v1247 + 48);
                formatDescriptionOut[0].start.epoch = *(v1247 + 64);
                v636 = CMTimeGetSeconds(&formatDescriptionOut[0].start);
                *&formatDescriptionOut[0].start.value = *(v1247 + 72);
                formatDescriptionOut[0].start.epoch = *(v1247 + 88);
                *&v637 = CMTimeGetSeconds(&formatDescriptionOut[0].start);
                *cf = 136317186;
                DerivedStorage = "itemfig_rebuildRenderPipelinesAndBossGuts";
                *&cf[4] = "itemfig_rebuildRenderPipelinesAndBossGuts";
                *&cf[12] = 2048;
                *&cf[14] = v1207;
                *&cf[22] = 2082;
                *&cf[24] = v577;
                *&cf[32] = 2048;
                *&cf[34] = a1;
                *v1291 = 2082;
                *&v1291[2] = v634;
                v1292 = 2048;
                v1293 = Seconds;
                v1294 = 1024;
                *v1295 = v572;
                *&v1295[4] = 2048;
                *&v1295[6] = v636;
                v1296 = 2048;
                v1297 = v637;
                OUTLINED_FUNCTION_52_0();
                OUTLINED_FUNCTION_38();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_635();
              v478 = v1215;
            }

            v638 = *(v1247 + 352);
            v639 = *(v1247 + 512);
            v640 = *(v1247 + 524);
            *&formatDescriptionOut[0].start.value = *(v1247 + 24);
            formatDescriptionOut[0].start.epoch = *(v1247 + 40);
            *cf = *(v1247 + 48);
            *&cf[16] = *(v1247 + 64);
            *value = *(v1247 + 72);
            *&value[16] = *(v1247 + 88);
            FigPlaybackBossSetTimeWithRange(v638, &formatDescriptionOut[0].start, v572, cf, value, v639, v640);
            if (*(v1247 + 1745))
            {
              v641 = 0.0;
              if (*(v478 + 52) == 4)
              {
                v641 = *(v478 + 48);
              }

              itemfig_updateAccessLogEntry(v641);
            }

            itemfig_reportingAgentReportPlayStartMovieTime();
            v570 = v1247;
          }

          itemfig_setEndTimeOnBoss();
          *&formatDescriptionOut[0].start.value = *(v570 + 164);
          OUTLINED_FUNCTION_364_0(*(v570 + 180));
          FigPlaybackBossSetReverseEndTime(v642, v643);
          FigPlaybackBossSetStopAtEnd(*(v570 + 352), *(v478 + 816) == 1);
          *&formatDescriptionOut[0].start.value = *(v570 + 188);
          OUTLINED_FUNCTION_364_0(*(v570 + 204));
          v487 = FigPlaybackBossSetAdvanceTimeForOverlappedPlayback(v644, v645);
          v495 = v1272;
          goto LABEL_1018;
        }

        v21 = v569;
        RenderTriplesForVideoComposition = 0;
      }

      OUTLINED_FUNCTION_251_0();
    }

    OctaviaSubtitleRenderPipeline = v1231;
    goto LABEL_924;
  }

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_189_0();
  v21 = 0;
LABEL_749:
  DerivedStorage = v1247;
LABEL_1179:
  if (!DerivedStorage[1745])
  {
    if (!v229)
    {
      goto LABEL_1182;
    }

    goto LABEL_1181;
  }

  v1276 = RenderTriplesForVideoComposition;
  v762 = v229;
  itemfig_getFrameDropCountFromAllVideoPipelines(a1, DerivedStorage + 215);
  v229 = v762;
  RenderTriplesForVideoComposition = v1276;
  if (v229)
  {
LABEL_1181:
    CFRelease(v229);
  }

LABEL_1182:
  free(OctaviaClosedCaptionsRenderPipeline);
  free(p_duration);
  free(OctaviaSubtitleRenderPipeline);
  free(CMBaseObject);
  free(i);
  if (theSet)
  {
    CFRelease(theSet);
  }

  if (RenderTriplesForVideoComposition)
  {
    CFRelease(RenderTriplesForVideoComposition);
  }

  for (nn = 0; nn != 14; ++nn)
  {
    v752 = v1298[nn];
    if (v752)
    {
      CFRelease(v752);
    }
  }

  if (v21)
  {
    itemfig_unregisterAndDestroyPlayabilityMonitorNotification();
    playeritemfig_releaseRenderPipelines(v1207, a1, v1199, v757, v758, v759, v760, v761, v1101, v1107, v1114, v1120, v1126, v1130, key, v1138, v1142, v1146, v1150, v1154, v1158, v1162, v1166, v1170);
  }

  FigDeferredTransactionCommit(v1281, 0);
  if (v1281)
  {
    CFRelease(v1281);
  }

  objc_autoreleasePoolPop(context);
  if (!HIDWORD(v1219) && HIDWORD(v1203) != *(DerivedStorage + 2065))
  {
    v753 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v754 = v753;
    v755 = MEMORY[0x1E695E4D0];
    if (!DerivedStorage[2065])
    {
      v755 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(v753, @"HasEnabledAudio", *v755);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (v754)
    {
      CFRelease(v754);
    }
  }

  if (a6)
  {
    CFRelease(a6);
  }

  return v21;
}