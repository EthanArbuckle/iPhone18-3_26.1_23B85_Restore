uint64_t segPumpPublishMetricEvent(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294954656;
  }

  OUTLINED_FUNCTION_187();
  v5 = *(v4 + 9200);
  if (!v5)
  {
    if (*(v3 + 9216))
    {
      Mutable = *(v3 + 9208);
      if (!Mutable)
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
        *(v3 + 9208) = Mutable;
        if (!Mutable)
        {
          return 4294954510;
        }
      }

      CFArrayAppendValue(Mutable, v2);
    }

    return 0;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, 0, v2);
}

uint64_t segPumpGetInterfaceTypeEnum(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if ((!a2 || !*(a2 + 16)) && (v3 = *(a1 + 16 * *(a1 + 8600) + 392), !*(*(v3 + 696) + 32)) && !*(v3 + 424) || (FigGetAllocatorForMedia(), OUTLINED_FUNCTION_200_1(), !*(*(CMBaseObjectGetVTable() + 8) + 48)) || ((v4 = OUTLINED_FUNCTION_515(), !v5(v4)) ? (InterfaceType = FigNetworkInterfaceGetInterfaceTypeFromCFNStats(0)) : (InterfaceType = 0), !InterfaceType))
  {
    InterfaceType = FigNetworkInterfaceReporterGetInterfaceType(*(a1 + 9312));
    if (!InterfaceType)
    {
      if (*(a1 + 8632))
      {
        return FigNetworkPathInformationGetInterfaceType();
      }

      return 0;
    }
  }

  return InterfaceType;
}

void segPumpUpdateAlternateSelectionBossNetworkErrorFilter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14, CFTypeRef cf, __int128 a16, int a17, __int16 a18, __int16 a19, uint64_t a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  OUTLINED_FUNCTION_458();
  a50 = v52;
  a51 = v55;
  a39 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!v53[1216])
  {
    goto LABEL_31;
  }

  v56 = v54;
  v57 = v53;
  if (v54)
  {
    v58 = kFigAlternateFilterName_NetworkPermanentError;
    if (v53[1039])
    {
      v59 = (v53 + 1039);
      v60 = 890;
      goto LABEL_7;
    }

LABEL_12:
    v63 = 0;
    v64 = *v58;
    goto LABEL_13;
  }

  v58 = kFigAlternateFilterName_NetworkTemporaryError;
  if (!v53[1040])
  {
    goto LABEL_12;
  }

  v59 = (v53 + 1040);
  v60 = 878;
LABEL_7:
  AllocatorForMedia = FigGetAllocatorForMedia();
  Copy = CFArrayCreateCopy(AllocatorForMedia, *v59);
  v63 = Copy;
  v64 = *v58;
  if (!Copy)
  {
LABEL_13:
    v66 = 1;
LABEL_14:
    FigAlternateSelectionBossRemoveFilter(v57[1216], v64);
LABEL_15:
    OUTLINED_FUNCTION_407_0();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_46();
    if (v51)
    {
      if (v57[1118])
      {
        v68 = v57[1118];
      }

      else
      {
        v68 = &stru_1F0B1AFB8;
      }

      if (v56)
      {
        v69 = "permanent";
      }

      else
      {
        v69 = "temporary";
      }

      if (v66)
      {
        Count = 0;
      }

      else
      {
        Count = CFArrayGetCount(v63);
      }

      LODWORD(a16) = 136315906;
      *(&a16 + 4) = "segPumpUpdateAlternateSelectionBossNetworkErrorFilter";
      WORD6(a16) = 2114;
      *(&a16 + 14) = v68;
      a19 = 2080;
      a20 = v69;
      LOWORD(a21) = 2048;
      *(&a21 + 2) = Count;
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_448();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_238_0();
    if (!v63)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (!CFArrayGetCount(Copy))
  {
    v66 = 0;
    goto LABEL_14;
  }

  v65 = FigGetAllocatorForMedia();
  if (!FigAlternateDenyListFilterCreate(v65, v63, v64, v60, 0, &cf) && !FigAlternateSelectionBossAddFilter(v57[1216], cf))
  {
    v66 = 0;
    goto LABEL_15;
  }

LABEL_28:
  CFRelease(v63);
LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_31:
  OUTLINED_FUNCTION_457();
}

uint64_t MoveAlternateFromPenaltyBox()
{
  OUTLINED_FUNCTION_369();
  *(v3 + 32) = 0;
  if (*(v4 + 9728))
  {
    v5 = *(v0 + 8320);
    if (v5)
    {
      Count = CFArrayGetCount(v5);
    }

    else
    {
      Count = 0;
    }

    while (Count-- >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v0 + 8320), Count);
      if (CFEqual(ValueAtIndex, *(v1 + 8)))
      {
        CFArrayRemoveValueAtIndex(*(v0 + 8320), Count);
        break;
      }
    }
  }

  v9 = *(v0 + 8296);
  if (v9 == v1)
  {
    v10 = (v0 + 8296);
  }

  else
  {
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9 != v1);
  }

  v11 = *v9;
  *v10 = v11;
  if (!v11)
  {
    *(v0 + 8304) = v10;
  }

  *v1 = 0;
  **(v0 + 8288) = v1;
  *(v0 + 8288) = v1;
  OUTLINED_FUNCTION_10_1();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  OUTLINED_FUNCTION_311(os_log_and_send_and_compose_flags_and_os_log_type, v13, v14, v15, v16, v17, v18, v19, v21, v22, v23, v24, SBYTE2(v24), BYTE3(v24), SHIDWORD(v24));
  OUTLINED_FUNCTION_40();
  if (v2)
  {
    FigAlternateGetPlaylistAlternateURL(*(v1 + 8));
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_38();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_612();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_414();
}

void segPumpDispatchAsyncAlternateSelectionApplyFilter(uint64_t a1)
{
  v2 = *(a1 + 9728);
  if (v2)
  {
    v3 = CFRetain(v2);
    v4 = *(a1 + 9736);

    dispatch_async_f(v4, v3, segPumpDispatchAsyncAlternateSelectionBossApplyFilterFunc);
  }
}

void MoveAllAlternatesWithSameMasterStreamWithStreamAlternate()
{
  OUTLINED_FUNCTION_629();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  if (*(v7 + 392 + 16 * *v5) == v5)
  {
    v8 = 8328;
  }

  else
  {
    if (*(v7 + 392 + 16 * *v5 + 8) != v5)
    {
      goto LABEL_28;
    }

    v8 = 7880;
  }

  v9 = *(v7 + v8);
  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = *(v9 + 8);
  if (v10)
  {
    v11 = CFRetain(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(DerivedStorage + 8280);
  if (v12)
  {
    v13 = 0;
    while (1)
    {
      v14 = v12;
      v12 = *v12;
      if (segPumpAlternateURLsAndPathwaysAreEqual(v11, *(v14 + 8)))
      {
        v15 = MoveAlternateFromListWithNoNotification(DerivedStorage, (DerivedStorage + 8280), v14, v3, v1);
        v13 = v15;
        if (v15)
        {
          if (v15 != -12880)
          {
            goto LABEL_30;
          }
        }
      }

      if (!v12)
      {
        if (v3)
        {
          goto LABEL_19;
        }

        goto LABEL_24;
      }
    }
  }

  v13 = 0;
  if (v3)
  {
LABEL_19:
    v16 = *(DerivedStorage + 8296);
    while (v16)
    {
      v17 = v16;
      v16 = *v16;
      if (segPumpAlternateURLsAndPathwaysAreEqual(v11, *(v17 + 8)))
      {
        v18 = MoveAlternateFromListWithNoNotification(DerivedStorage, (DerivedStorage + 8296), v17, 1, v1);
        v13 = 0;
        if (v18)
        {
          if (v18 != -12880)
          {
            goto LABEL_30;
          }
        }
      }
    }
  }

LABEL_24:
  segPumpInformCurrentAlternateNoLongerValid(DerivedStorage);
  if (!*(DerivedStorage + 8280))
  {
    OUTLINED_FUNCTION_323_1();
    OUTLINED_FUNCTION_613();
    OUTLINED_FUNCTION_214_1(v19, v20, v21, -12880, v22, v23, v24, v25, v34, SHIDWORD(v34));
    goto LABEL_26;
  }

  if (!v13)
  {
    goto LABEL_26;
  }

LABEL_30:
  OUTLINED_FUNCTION_323_1();
  OUTLINED_FUNCTION_613();
  OUTLINED_FUNCTION_214_1(v26, v27, v28, v29, v30, v31, v32, v33, v34, SHIDWORD(v34));
LABEL_26:
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_28:
  OUTLINED_FUNCTION_320();
}

uint64_t segPumpAlternateGroupIDsAndPathwaysAreEqual(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    segPumGetGroupIDString(a1, *a3);
    segPumGetGroupIDString(a2, *a3);
    result = FigCFEqual();
    if (result)
    {
      FigAlternateGetPathwayID(a1);
      v7 = OUTLINED_FUNCTION_199();
      FigAlternateGetPathwayID(v7);
      OUTLINED_FUNCTION_399();
      return FigCFEqual() != 0;
    }
  }

  return result;
}

uint64_t segPumpAlternateURLsAndPathwaysAreEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    FigAlternateGetPlaylistAlternateURL(a1);
    FigAlternateGetPlaylistAlternateURL(a2);
    v5 = OUTLINED_FUNCTION_171_1();
    result = FigCFHTTPCompareURLs(v5, v6);
    if (result)
    {
      FigAlternateGetPathwayID(a1);
      v7 = OUTLINED_FUNCTION_199();
      FigAlternateGetPathwayID(v7);
      OUTLINED_FUNCTION_399();
      return FigCFEqual() != 0;
    }
  }

  return result;
}

uint64_t segPumpIsAlternateLastValidAlternate(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a3 || !*(a1 + 8280))
  {
    return 0;
  }

  cf = 0;
  theArray = 0;
  if (*(a1 + 9752))
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_127_1();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v7 = OUTLINED_FUNCTION_187_1();
      if (!v8(v7))
      {
        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_127_1();
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v9 = OUTLINED_FUNCTION_187_1();
          v10(v9);
        }
      }
    }
  }

  if (*(a1 + 8280) == a3 && *(a1 + 8288) == a3)
  {
    return 1;
  }

  if (a4)
  {
    PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(*(a3 + 8));
    if (PlaylistAlternateURL)
    {
      v12 = CFURLCopyHostName(PlaylistAlternateURL);
      if (v12)
      {
        v13 = v12;
        v14 = *(a1 + 8280);
        if (v14)
        {
          while (1)
          {
            v15 = FigAlternateGetPlaylistAlternateURL(v14[1]);
            v16 = CFURLCopyHostName(v15);
            if (v16)
            {
              v17 = v16;
              v18 = OUTLINED_FUNCTION_284();
              v20 = CFEqual(v18, v19);
              CFRelease(v17);
              if (!v20)
              {
                break;
              }
            }

            v14 = *v14;
            if (!v14)
            {
              goto LABEL_17;
            }
          }

          CFRelease(v13);
          goto LABEL_22;
        }

LABEL_17:
        CFRelease(v13);
      }
    }

    return 1;
  }

LABEL_22:
  cf = 0;
  theArray = 0;
  v33 = 0;
  v34 = 0;
  if (!*(a1 + 8328))
  {
    goto LABEL_46;
  }

  if (!*(a1 + 9728))
  {
    OUTLINED_FUNCTION_376();
    v32 = FigSignalErrorAtGM();
    v29 = 0;
    goto LABEL_51;
  }

  v23 = *(a1 + 9768);
  AllocatorForMedia = FigGetAllocatorForMedia();
  v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v25 || v25(v23, @"FAFProperty_AlternateList", AllocatorForMedia, &cf))
  {
    v29 = 0;
    goto LABEL_37;
  }

  if (!cf || CFArrayGetCount(cf) < 1 || (v26 = OUTLINED_FUNCTION_249_1(), FigAlternateGetRenditionInfoForMediaType(v26, v27, *(a1 + 8576), *(a1 + 8584), *(a1 + 8592), 1, 0, &theArray, 0), !theArray))
  {
LABEL_46:
    v21 = 0;
    v29 = 0;
    goto LABEL_38;
  }

  Mutable = CFArrayCreateMutable(*(a1 + 56), 0, MEMORY[0x1E695E9C0]);
  v29 = Mutable;
  if (!Mutable)
  {
    OUTLINED_FUNCTION_376();
LABEL_50:
    v32 = FigSignalErrorAtGM();
LABEL_51:
    if (!v32)
    {
      goto LABEL_52;
    }

LABEL_37:
    v21 = 0;
    goto LABEL_38;
  }

  CFArrayAppendValue(Mutable, theArray);
  if (FigAlternateURLDependencyDenyListFilterCreate(*(a1 + 56), v29, *(a1 + 8336), 1, &v33))
  {
    goto LABEL_37;
  }

  if (!v33)
  {
    OUTLINED_FUNCTION_376();
    goto LABEL_50;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    goto LABEL_37;
  }

  v30 = OUTLINED_FUNCTION_177();
  if (v31(v30))
  {
    goto LABEL_37;
  }

  if (!v34)
  {
LABEL_52:
    v21 = 1;
    goto LABEL_38;
  }

  v21 = CFArrayGetCount(v34) < 1;
LABEL_38:
  if (v33)
  {
    CFRelease(v33);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  return v21;
}

void segPumpRetryTimerCallback()
{
  OUTLINED_FUNCTION_187();
  FigRetainProxyRetain();
  if (!OUTLINED_FUNCTION_154_0())
  {
    v1 = 0;
    v2 = 1;
    do
    {
      v3 = 0;
      v4 = v2;
      v5 = 16 * v1 + 392;
      while (1)
      {
        v6 = *(v5 + v3);
        if (*(v6 + 392) == v0)
        {
          break;
        }

        v3 += 8;
        if (v3 == 24)
        {
          goto LABEL_8;
        }
      }

      *(v6 + 400) = 0;
      segPumpRestartStreamReads(0);
LABEL_8:
      v2 = 0;
      v1 = 1;
    }

    while ((v4 & 1) != 0);
  }

  segPumpUnlockAndSendAllPendingNotifications();
  FigRetainProxyRelease();
}

uint64_t segPumpReadOrScheduleIndexFileRead()
{
  OUTLINED_FUNCTION_187();
  v3 = *(v2 + 56);
  if (!v3 || (result = FigStreamPlaylistParserHTTPServerMayMutatePlaylist(v3), result))
  {
    if (!*(v1 + 8) || *(v0 + 1185))
    {
      return 0;
    }

    v5 = *(v0 + 480);
    if (v5)
    {
      Code = CFErrorGetCode(v5);
      if (Code == -16839 || Code == -1005 || Code == -1009)
      {
        *(v0 + 1184) = 1;
      }
    }

    if (*(v0 + 859) || *(v0 + 424) || *(v0 + 870) || *(v0 + 400))
    {
      return 0;
    }

    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v8 = OUTLINED_FUNCTION_177();
    segPumpGetIndexFileRefreshTimestamp(v8, v9, UpTimeNanoseconds, v10);
    if (UpTimeNanoseconds <= UpTimeNanoseconds + 10000000)
    {
      v15 = OUTLINED_FUNCTION_177();
      result = segPumpSendIndexFileRequest(v15);
      if (*(v1 + 336))
      {
        v14 = UpTimeNanoseconds + (*(v1 + 16) * 1000000000.0);
        goto LABEL_21;
      }

      *(v0 + 1088) = UpTimeNanoseconds;
      v16 = *(v0 + 440);
      if (v16 >= 1)
      {
        v12 = *(v0 + 448);
        if (v12 > v16)
        {
          v13 = UpTimeNanoseconds - v16;
          goto LABEL_20;
        }
      }
    }

    else
    {
      *(v0 + 400) = 1;
      result = FigHTTPCreateTimer(*v1, segPumpRetryTimerCallback, *(v1 + 64), (v0 + 392), 0 / 1000000000.0);
      *(v0 + 1088) = UpTimeNanoseconds;
      v11 = *(v0 + 440);
      if (v11 >= 1)
      {
        v12 = *(v0 + 448);
        if (v12 > v11)
        {
          v13 = UpTimeNanoseconds - v11;
LABEL_20:
          v14 = v13 + v12;
LABEL_21:
          *(v0 + 1088) = v14;
        }
      }
    }
  }

  return result;
}

uint64_t segPumpDeliverNextMediaForSingleStream(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_400();
  v51 = 0;
  v52 = 0;
  HIWORD(v50) = 0;
  BYTE5(v50) = 0;
  FigRetainProxyRetain();
  v6 = a3[7];
  if (!v6)
  {
    goto LABEL_17;
  }

  MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v6);
  if (!MediaSegmentSpecifiers || CFArrayGetCount(MediaSegmentSpecifiers) < 1 || *(a3 + 866) || (a3[20] & 0xFFFFFFFE) != 4 || *(a3 + 1152))
  {
    goto LABEL_17;
  }

  if (*(v4 + 8896))
  {
    if (!*(v4 + 8952) && !*(v4 + 8897) && (*(a3 + 857) || *(a3 + 862)))
    {
      v14 = *(a3 + 15);
      if (v14 >= 0.0)
      {
        v15 = *(v4 + 8920);
        if (v15 == 0.0)
        {
          v15 = *(v4 + 8880);
        }

        v16 = dbl_196E72890[v15 >= 0.0];
        CMTimeMakeWithSeconds(&v49, v14, 1000);
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        CMTimeMakeWithSeconds(&v48, v16 + *(a3 + 15), 1000);
        Frame = segPumpStepNextFrame(v3, &v49.value, UpTimeNanoseconds, &v48.value, 1, 0, v15);
        goto LABEL_11;
      }

LABEL_17:
      v11 = 0;
      goto LABEL_18;
    }

    v8 = OUTLINED_FUNCTION_266();
    Frame = segPumpTryIFrameFetch(v8, v9);
LABEL_11:
    v11 = Frame;
    goto LABEL_18;
  }

  v12 = a3[32];
  if (v12)
  {
    if (a3[33])
    {
      v12 = a3[33];
    }

    v52 = v12;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_70_1();
    segPumpDetermineMediaSegmentToDeliver(v18, v19, v20, v21, v22);
    if (Frame)
    {
      goto LABEL_11;
    }

    v23 = OUTLINED_FUNCTION_178();
    if (!segPumpStreamShouldYieldToTrialSwitch(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_178();
      segPumpStreamReadAheadPermitsNextRead(v25, v26, v27);
    }
  }

  v28 = OUTLINED_FUNCTION_70_1();
  segPumpStreamDoDeliveryFollowUp(v28, v29, v30, v31, v32, v33, v34, v35, v46, cf, v48.value, v48.timescale, v48.flags, SBYTE2(v48.flags), SHIBYTE(v48.flags), v48.epoch, v49.value, *&v49.timescale, v49.epoch, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
  v11 = v36;
  if (!v36 && BYTE6(v50))
  {
    v37 = *a3;
    for (i = 392; i != 440; i += 16)
    {
      if (v37)
      {
        v39 = *(v4 + i);
        if (v39[2])
        {
          if (!*(v39[87] + 8))
          {
            v49.value = 0;
            v48.value = 0;
            if (v39[32])
            {
              if (v39[33])
              {
                v40 = v39[33];
              }

              else
              {
                v40 = v39[32];
              }

              if (v40)
              {
                OUTLINED_FUNCTION_70_1();
                segPumpTrySpeculativeRead();
                if (Frame)
                {
                  goto LABEL_11;
                }
              }
            }

            else
            {
              v41 = OUTLINED_FUNCTION_70_1();
              segPumpDetermineMediaSegmentToDeliver(v41, v42, v43, v44, v45);
              if (Frame)
              {
                goto LABEL_11;
              }
            }
          }
        }
      }

      v11 = 0;
      --v37;
    }
  }

LABEL_18:
  FigRetainProxyRelease();
  return v11;
}

void segPumpGetCryptKeyCommonData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_653();
  a16 = v19;
  a17 = v21;
  if (v22 | v23)
  {
    v24 = v20;
    if (v20)
    {
      OUTLINED_FUNCTION_471();
      v25 = CMGetAttachment(v24, @"SegPumpCryptKeyPrivateData", 0);
      if (!v25)
      {
        FigGetAllocatorForMedia();
        a9 = xmmword_1E7476BF0;
        if (_MergedGlobals_13 != -1)
        {
          dispatch_once_f(&_MergedGlobals_13, &a9, segPumpRegisterClassUtil);
        }

        Instance = _CFRuntimeCreateInstance();
        if (!Instance)
        {
          OUTLINED_FUNCTION_239();
          FigSignalErrorAtGM();
LABEL_13:
          OUTLINED_FUNCTION_652();
          return;
        }

        v25 = Instance;
        CMSetAttachment(v24, @"SegPumpCryptKeyPrivateData", Instance, 0);
        CFRelease(v25);
      }

      if (v18)
      {
        *v18 = v25;
      }

      if (v17)
      {
        v27 = v25[2];
        if (v27)
        {
          *v17 = v27;
        }
      }

      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_652();

  FigSignalErrorAtGM();
}

uint64_t segPumpSendCryptKeyRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v320 = *MEMORY[0x1E69E9840];
  v293 = 0;
  v294 = 0;
  if (!*(a2 + 331))
  {
    return 0;
  }

  v9 = a4;
  v12 = a2 + 0x2000;
  v13 = &unk_1EAF16000;
  v292 = a3;
  if (*(a2 + 9672))
  {
    v303 = 0;
    *v304 = 0;
    v298 = 0;
    cf = 1;
    v300 = segPumpKeyRequestDidSucceed;
    v301 = &segPumpKeyRequestDidFail;
    v302 = segPumpKeyRequestDidUpdateContentKeyBossToNewBoss;
    v296 = 0;
    *v297 = 0;
    if (!*(a2 + 152))
    {
      v16 = *(a2 + 64);
      *(a2 + 152) = v16;
      dispatch_retain(v16);
    }

    segPumpGetCryptKeyCommonData(v9, v297, &v296, a4, a5, a6, a7, a8, v232, v241, v247, v253, v258, v263, v268, v273, v278);
    if (!v17)
    {
      if (*(v296 + 153) || !*(v12 + 1480))
      {
        CFDataWithBlockBuffer = 0;
        goto LABEL_197;
      }

      IsLowValueFairPlayStreamingKey = segPumpCryptKeyIsLowValueFairPlayStreamingKey(v9);
      if (FigContentKeySpecifierGetIdentifier(v9))
      {
        v26 = *(a2 + 9720);
        segPumpEnsureCMCDHeaderVendor(a2, v19, v20, v21, v22, v23, v24, v25, v234, v238, v243, v249, v255, v260, v265, v270, v275, v280);
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v28 = Mutable;
          FigCFDictionarySetValue();
          v289 = v28;
          if (FigContentKeySpecifierGetKeySystem(v9) == 1 && *(v12 + 16))
          {
            if (FigContentKeySpecifierGetEncryptionMethod(v9) == 1)
            {
              FigGetAllocatorForMedia();
              OUTLINED_FUNCTION_382_1();
              v288 = v9;
              v30 = FigContentKeyRequestParamsCreate(v29, v9, IsLowValueFairPlayStreamingKey, 1, 0, 0, v26, 0, v235, v239, v244, v250);
              if (v30)
              {
                goto LABEL_239;
              }

              v31 = *(a2 + 9680);
              v32 = v303;
              *v286 = *(a2 + 240);
              v33 = *(a2 + 216);
              v34 = *a2;
              v35 = *(a2 + 152);
              v36 = *(*(CMBaseObjectGetVTable() + 16) + 8);
              if (!v36)
              {
                goto LABEL_188;
              }

              v235 = v35;
              v239 = &v298;
              v30 = v36(v31, v32, 1, 0, *v286, v33, &cf, v34);
              if (v30)
              {
LABEL_239:
                CFDataWithBlockBuffer = v30;
                goto LABEL_189;
              }

              *(v296 + 40) = v298;
              v9 = v288;
              if (dword_1EAF16A30)
              {
                HIDWORD(v295) = 0;
                BYTE3(v295) = 0;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v38 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                if (OUTLINED_FUNCTION_77_0(v38))
                {
                  OUTLINED_FUNCTION_197_1();
                  *v305 = 136316162;
                  *&v305[4] = "segPumpProcessContentKeyRequest";
                  v306 = 2114;
                  OUTLINED_FUNCTION_5_1();
                  v307 = v182;
                  OUTLINED_FUNCTION_169_1();
                  *(v183 + 44) = v184;
                  OUTLINED_FUNCTION_117();
                  OUTLINED_FUNCTION_19_1();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_109();
                LODWORD(v13) = 1;
                OUTLINED_FUNCTION_38_0();
              }

              else
              {
                LODWORD(v13) = 1;
              }

              v28 = v289;
            }

            else
            {
              LODWORD(v13) = 0;
            }

            if (*(v12 + 16))
            {
              LODWORD(CFDataWithBlockBuffer) = 1;
              LODWORD(v13) = 1;
            }

            else
            {
              LODWORD(CFDataWithBlockBuffer) = 0;
            }
          }

          else
          {
            OUTLINED_FUNCTION_386_0();
          }

          FigGetAllocatorForMedia();
          OUTLINED_FUNCTION_382_1();
          v186 = FigContentKeyRequestParamsCreate(v185, v9, IsLowValueFairPlayStreamingKey, v13, CFDataWithBlockBuffer, 0, v26, 0, v235, v239, v244, v250);
          if (v186)
          {
            CFDataWithBlockBuffer = v186;
LABEL_195:
            CFRelease(v28);
            if (*v304)
            {
              CFRelease(*v304);
            }

LABEL_197:
            v147 = v303;
            if (v303)
            {
              goto LABEL_198;
            }

            return CFDataWithBlockBuffer;
          }

          if (*(*(CMBaseObjectGetVTable() + 16) + 8))
          {
            v187 = OUTLINED_FUNCTION_292();
            v30 = v188(v187);
            if (!v30)
            {
              if (dword_1EAF16A30)
              {
                HIDWORD(v295) = 0;
                BYTE3(v295) = 0;
                v189 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v190 = os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT);
                if (OUTLINED_FUNCTION_77_0(v190))
                {
                  OUTLINED_FUNCTION_197_1();
                  *v305 = 136316162;
                  *&v305[4] = "segPumpProcessContentKeyRequest";
                  v306 = 2114;
                  OUTLINED_FUNCTION_5_1();
                  v307 = v191;
                  OUTLINED_FUNCTION_169_1();
                  *(v192 + 44) = v193;
                  OUTLINED_FUNCTION_117();
                  OUTLINED_FUNCTION_19_1();
                  OUTLINED_FUNCTION_190_0();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_420();
              }

              v194 = v296;
              *(v296 + 32) = v298;
              *(v194 + 153) = 1;
              *(*v297 + 56) = FigGetUpTimeNanoseconds();
              v195 = *(a2 + 9232);
              if (v195)
              {
                v196 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                v28 = v289;
                if (v196)
                {
                  v196(v195, @"playerStats", 0x1F0B66C98, 1, 0);
                }

                CFDataWithBlockBuffer = 0;
                goto LABEL_195;
              }

              CFDataWithBlockBuffer = 0;
              goto LABEL_189;
            }

            goto LABEL_239;
          }

LABEL_188:
          CFDataWithBlockBuffer = 4294954514;
LABEL_189:
          v28 = v289;
          goto LABEL_195;
        }
      }

      OUTLINED_FUNCTION_374();
      v17 = FigSignalErrorAtGM();
    }

    CFDataWithBlockBuffer = v17;
    goto LABEL_197;
  }

  v287 = a1;
  segPumpGetCryptKeyCommonData(a4, &v294, &v293, a4, a5, a6, a7, a8, v232, v241, v247, v253, v258, v263, v268, v273, v278);
  if (v14)
  {
    return v14;
  }

  if (*(v293 + 153))
  {
    OUTLINED_FUNCTION_374();
    return FigSignalErrorAtGM();
  }

  if (FigContentKeySpecifierGetIdentifier(v9))
  {
    FigGetAllocatorForMedia();
    v39 = OUTLINED_FUNCTION_200_1();
    FigContentKeySpecifierGetIdentifier(v39);
    v40 = OUTLINED_FUNCTION_171_1();
    v15 = CFURLCreateWithString(v40, v41, 0);
  }

  else
  {
    v15 = 0;
  }

  v42 = v293;
  *(v293 + 160) = 0;
  *(v42 + 153) = 1;
  v43 = *(a2 + 9232);
  if (v43)
  {
    v44 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v44)
    {
      v44(v43, @"playerStats", 0x1F0B66C98, 1, 0);
    }
  }

  *(v294 + 56) = FigGetUpTimeNanoseconds();
  if (*(a3 + 248) == v9)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    *(a3 + 576) = UpTimeNanoseconds;
    if (!*(a3 + 608))
    {
      *(a3 + 568) = UpTimeNanoseconds;
    }

    v290 = *(a3 + 560);
    *(a3 + 560) = 0;
    *(a3 + 632) = 0;
    v51 = *(a3 + 544);
    if (v51)
    {
      CFRelease(v51);
      *(a3 + 544) = 0;
    }

    if (v15)
    {
      v52 = CFRetain(v15);
    }

    else
    {
      v52 = 0;
    }

    *(a3 + 544) = v52;
  }

  else
  {
    v290 = 0;
  }

  cf = 0;
  v303 = 0;
  *v304 = 0;
  segPumpGetCryptKeyCommonData(v9, &cf, v304, v45, v46, v47, v48, v49, v233, v242, v248, v254, v259, v264, v269, v274, v279);
  if (v53)
  {
    goto LABEL_106;
  }

  if (FigContentKeySpecifierGetKeySystem(v9) == 1 && !*(*v304 + 72))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v60 = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v61 = v60;
    if (!v60)
    {
      OUTLINED_FUNCTION_374();
      CFDataWithBlockBuffer = FigSignalErrorAtGM();
      goto LABEL_73;
    }

    CFDictionarySetValue(v60, *MEMORY[0x1E6960F50], @"com.apple.pkd");
    Identifier = FigContentKeySpecifierGetIdentifier(v9);
    CFDictionarySetValue(v61, *MEMORY[0x1E6960F28], Identifier);
    FigCFDictionarySetInt32();
    EncryptionMethod = FigContentKeySpecifierGetEncryptionMethod(v9);
    v64 = kFigCPEProtectorCryptorCreationOptionDecryptFormatType_Pastis;
    if (EncryptionMethod == 2)
    {
      v64 = kFigCPEProtectorCryptorCreationOptionDecryptFormatType_MSE;
    }

    CFDictionarySetValue(v61, *MEMORY[0x1E6960F40], *v64);
    SupportedProtocolVersions = FigContentKeySpecifierGetSupportedProtocolVersions(v9);
    if (*(v12 + 16) && !*a3 && FigContentKeySpecifierGetEncryptionMethod(v9) != 3 && FigContentKeySpecifierGetEncryptionMethod(v9) != 2 && !*(*v304 + 112))
    {
      v213 = *(a2 + 9664);
      v214 = FigGetAllocatorForMedia();
      v155 = FigContentKeySessionCopyCryptor(v213, v214, v61, *v304 + 112);
      if (v155)
      {
        goto LABEL_241;
      }

      v215 = *(a2 + 264);
      if (v215)
      {
        v155 = CMBaseObjectSetProperty(*(*v304 + 112), *MEMORY[0x1E69610C0], v215);
        if (v155)
        {
          goto LABEL_241;
        }
      }

      if (SupportedProtocolVersions)
      {
        v155 = CMBaseObjectSetProperty(*(*v304 + 112), *MEMORY[0x1E6961108], SupportedProtocolVersions);
        if (v155)
        {
          goto LABEL_241;
        }
      }

      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_186();
      if (FigNotificationCenterAddWeakListener())
      {
        OUTLINED_FUNCTION_285_1();
        if (!v148)
        {
          goto LABEL_71;
        }
      }

      v219 = *a2;
      v220 = *v304;
      *(*v304 + 120) = *a2;
      segPumpPrepareCryptorForKeyLoading(v220[14], v219, 0, (v220 + 18), (v220 + 17), v216, v217, v218, v236, SDWORD2(v236), SWORD6(v236), SBYTE14(v236), HIBYTE(v236), v245, v251, v256, v261, v266, v271, v276, v281);
      if (v155)
      {
        goto LABEL_241;
      }

      if (dword_1EAF16A30)
      {
        OUTLINED_FUNCTION_301_1();
        v284 = OUTLINED_FUNCTION_216_1();
        v221 = os_log_type_enabled(v284, v297[0]);
        if (OUTLINED_FUNCTION_77_0(v221))
        {
          OUTLINED_FUNCTION_197_1();
          OUTLINED_FUNCTION_371_0();
          v306 = 2114;
          OUTLINED_FUNCTION_5_1();
          v307 = v222;
          OUTLINED_FUNCTION_169_1();
          *(v223 + 44) = v224;
          v311 = v225;
          *(v223 + 54) = v226;
          v313 = 1024;
          v314 = v227;
          OUTLINED_FUNCTION_117();
          OUTLINED_FUNCTION_19_1();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_328_0();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_420();
      }
    }

    v65 = *(a2 + 9640);
    if (v65)
    {
      CFDictionarySetValue(v61, *MEMORY[0x1E6960F70], v65);
    }

    v66 = *(a2 + 9648);
    if (v66)
    {
      CFDictionarySetValue(v61, *MEMORY[0x1E6960F68], v66);
    }

    if (segPumpCryptKeyIsLowValueFairPlayStreamingKey(v9))
    {
      CFDictionarySetValue(v61, *MEMORY[0x1E6960F60], *MEMORY[0x1E695E4D0]);
    }

    if (FigContentKeySpecifierGetEncryptionMethod(v9) != 3 && *(v12 + 16) && !*v292)
    {
      CFDictionarySetValue(v61, *MEMORY[0x1E6960F38], @"DestinationNero");
    }

    FigGetAllocatorForMedia();
    if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      CFDataWithBlockBuffer = 4294954514;
LABEL_71:
      CFRelease(v61);
      goto LABEL_72;
    }

    v67 = OUTLINED_FUNCTION_267_0();
    v69 = v68(v67);
    if (v69)
    {
      CFDataWithBlockBuffer = v69;
      goto LABEL_71;
    }

    v70 = *(*v304 + 72);
    CFDataWithBlockBuffer = FigGetAllocatorForMedia();
    v77 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v77)
    {
      v77(v70, *MEMORY[0x1E69610E0], CFDataWithBlockBuffer, &v303);
      v78 = v303;
    }

    else
    {
      v78 = 0;
    }

    segPumpRTCReportingUpdateCryptorErrorKeys(a2, v78, v71, v72, v73, v74, v75, v76, v236, *(&v236 + 1), v245, v251, v256, v261, v266, v271, v276, v281);
    if (v303)
    {
      CFRelease(v303);
      v303 = 0;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_186();
    if (FigNotificationCenterAddWeakListener())
    {
      OUTLINED_FUNCTION_285_1();
      if (!v148)
      {
        goto LABEL_71;
      }
    }

    *(*v304 + 80) = *a2;
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_186();
    if (FigNotificationCenterAddWeakListener())
    {
      OUTLINED_FUNCTION_285_1();
      if (!v148)
      {
        goto LABEL_71;
      }
    }

    v152 = *(a2 + 264);
    if (v152)
    {
      v153 = *(*v304 + 72);
      v154 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v154)
      {
LABEL_162:
        CFDataWithBlockBuffer = 4294954514;
        goto LABEL_71;
      }

      v155 = v154(v153, *MEMORY[0x1E69610C0], v152);
      if (v155)
      {
LABEL_241:
        CFDataWithBlockBuffer = v155;
        goto LABEL_71;
      }
    }

    if (!SupportedProtocolVersions)
    {
LABEL_158:
      segPumpPrepareCryptorForKeyLoading(*(*v304 + 72), *(*v304 + 80), 0, *v304 + 104, *v304 + 96, v149, v150, v151, v236, SDWORD2(v236), SWORD6(v236), SBYTE14(v236), HIBYTE(v236), v245, v251, v256, v261, v266, v271, v276, v281);
      CFDataWithBlockBuffer = v158;
      if (!v158 && dword_1EAF16A30)
      {
        OUTLINED_FUNCTION_301_1();
        v159 = OUTLINED_FUNCTION_216_1();
        v160 = os_log_type_enabled(v159, v297[0]);
        if (OUTLINED_FUNCTION_77_0(v160))
        {
          OUTLINED_FUNCTION_197_1();
          OUTLINED_FUNCTION_306_0();
          OUTLINED_FUNCTION_371_0();
          v306 = 2114;
          OUTLINED_FUNCTION_5_1();
          v307 = v161;
          OUTLINED_FUNCTION_169_1();
          *(v162 + 44) = v163;
          v311 = v164;
          *(v162 + 54) = v165;
          v313 = 1024;
          v314 = v166;
          OUTLINED_FUNCTION_117();
          OUTLINED_FUNCTION_19_1();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_328_0();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_420();
        CFDataWithBlockBuffer = 0;
      }

      goto LABEL_71;
    }

    v156 = *(*v304 + 72);
    v157 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v157)
    {
      v155 = v157(v156, *MEMORY[0x1E6961108], SupportedProtocolVersions);
      if (!v155)
      {
        goto LABEL_158;
      }

      goto LABEL_241;
    }

    goto LABEL_162;
  }

  if (FigContentKeySpecifierGetKeySystem(v9) == 1)
  {
    v57 = *v304;
    v58 = *(*v304 + 72);
    if (v58)
    {
      if (*(*v304 + 96))
      {
        if (segPumpGetDecryptorState(v58) == 2)
        {
          goto LABEL_176;
        }

        v57 = *v304;
        v58 = *(*v304 + 72);
      }

      segPumpPrepareCryptorForKeyLoading(v58, v57[10], 1, (v57 + 13), (v57 + 12), v54, v55, v56, v236, SDWORD2(v236), SWORD6(v236), SBYTE14(v236), HIBYTE(v236), v245, v251, v256, v261, v266, v271, v276, v281);
      if (!v53)
      {
        v170 = *v304;
        if (!*(*v304 + 96))
        {
          goto LABEL_203;
        }

        if (dword_1EAF16A30)
        {
          OUTLINED_FUNCTION_301_1();
          v171 = OUTLINED_FUNCTION_216_1();
          v179 = OUTLINED_FUNCTION_241_1(v171, v172, v173, v174, v175, v176, v177, v178, v236, *(&v236 + 1), v245, v251, v256, v261, v266, v271, v276, v281, v283, v284, SupportedProtocolVersions, v287, v290, v292, v293, v294, v295, v296, v297[0], *&v297[4], v298);
          if (OUTLINED_FUNCTION_77_0(v179))
          {
            OUTLINED_FUNCTION_197_1();
            OUTLINED_FUNCTION_306_0();
            OUTLINED_FUNCTION_371_0();
            v306 = 2114;
            OUTLINED_FUNCTION_5_1();
            v307 = v198;
            v308 = v199;
            v309 = v198;
            v310 = v200;
            v311 = 1024;
            v312 = v201;
            OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_19_1();
            OUTLINED_FUNCTION_282();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_328_0();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_420();
          v170 = *v304;
        }

        v202 = v170[14];
        if (!v202)
        {
LABEL_203:
          v61 = 1;
          goto LABEL_74;
        }

        v61 = 1;
        segPumpPrepareCryptorForKeyLoading(v202, v170[15], 1, (v170 + 18), (v170 + 17), v167, v168, v169, v236, SDWORD2(v236), SWORD6(v236), SBYTE14(v236), HIBYTE(v236), v245, v251, v256, v261, v266, v271, v276, v281);
        CFDataWithBlockBuffer = v203;
        if (!v203 && dword_1EAF16A30)
        {
          OUTLINED_FUNCTION_301_1();
          v204 = OUTLINED_FUNCTION_216_1();
          v212 = OUTLINED_FUNCTION_241_1(v204, v205, v206, v207, v208, v209, v210, v211, v236, *(&v236 + 1), v245, v251, v256, v261, v266, v271, v276, v281, v283, v284, SupportedProtocolVersions, v287, v290, v292, v293, v294, v295, v296, v297[0], *&v297[4], v298);
          if (OUTLINED_FUNCTION_77_0(v212))
          {
            OUTLINED_FUNCTION_197_1();
            OUTLINED_FUNCTION_306_0();
            OUTLINED_FUNCTION_371_0();
            v306 = 2114;
            OUTLINED_FUNCTION_5_1();
            v307 = v228;
            v308 = v229;
            v309 = v228;
            v310 = v230;
            v311 = 1024;
            v312 = v231;
            OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_19_1();
            OUTLINED_FUNCTION_282();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_328_0();
          }

          OUTLINED_FUNCTION_109();
          v61 = 1;
          OUTLINED_FUNCTION_38_0();
          goto LABEL_74;
        }

        goto LABEL_73;
      }

LABEL_106:
      CFDataWithBlockBuffer = v53;
      goto LABEL_107;
    }
  }

  if (!v9 || FigContentKeySpecifierGetKeySystem(v9) != 2)
  {
    OUTLINED_FUNCTION_374();
    CFDataWithBlockBuffer = FigSignalErrorAtGM();
LABEL_72:
    v61 = 0;
    goto LABEL_73;
  }

  v53 = segPumpEnsureAndSetupBasicAESProtector(a2);
  if (v53)
  {
    goto LABEL_106;
  }

  if (*(cf + 5))
  {
    if (dword_1EAF16A30)
    {
      goto LABEL_117;
    }

LABEL_176:
    v61 = 0;
    goto LABEL_74;
  }

  v129 = v9;
  v130 = *(a2 + 248);
  v131 = FigGetAllocatorForMedia();
  v132 = cf;
  v133 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v133)
  {
    CFDataWithBlockBuffer = 4294954514;
    goto LABEL_107;
  }

  CFDataWithBlockBuffer = v133(v130, v131, 1, 0, v132 + 40);
  v61 = 0;
  if (CFDataWithBlockBuffer)
  {
    v9 = v129;
  }

  else
  {
    v9 = v129;
    if (dword_1EAF16A30)
    {
LABEL_117:
      OUTLINED_FUNCTION_301_1();
      v134 = OUTLINED_FUNCTION_216_1();
      v142 = OUTLINED_FUNCTION_241_1(v134, v135, v136, v137, v138, v139, v140, v141, v236, *(&v236 + 1), v245, v251, v256, v261, v266, v271, v276, v281, v283, v284, SupportedProtocolVersions, v287, v290, v292, v293, v294, v295, v296, v297[0], *&v297[4], v298);
      if (OUTLINED_FUNCTION_77_0(v142))
      {
        OUTLINED_FUNCTION_197_1();
        OUTLINED_FUNCTION_306_0();
        *v305 = 136315906;
        *&v305[4] = "segPumpSetupCryptorForCryptKey";
        v306 = 2114;
        OUTLINED_FUNCTION_5_1();
        v307 = v180;
        v308 = v181;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_19_1();
        OUTLINED_FUNCTION_282();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_328_0();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_420();
      goto LABEL_176;
    }
  }

LABEL_73:
  if (CFDataWithBlockBuffer)
  {
LABEL_107:
    v98 = 0;
LABEL_108:
    v119 = v290;
    goto LABEL_133;
  }

LABEL_74:
  v79 = v61 == 0;
  if (v61)
  {
    *(v293 + 152) = 0;
  }

  if (!*(a2 + 296))
  {
    goto LABEL_90;
  }

  *&v315[0] = 0;
  *v305 = 0;
  cf = 0;
  v80 = OUTLINED_FUNCTION_265();
  segPumpGetCryptKeyCommonData(v80, v81, v82, v83, v84, v85, v86, v87, v236, v245, v251, v256, v261, v266, v271, v276, v281);
  if (v88)
  {
    goto LABEL_233;
  }

  v95 = FigContentKeySpecifierGetIdentifier(v9);
  if (!v95)
  {
    OUTLINED_FUNCTION_374();
    v88 = FigSignalErrorAtGM();
    goto LABEL_233;
  }

  v88 = FigStreamingCacheCopyCryptKey(*(a2 + 296), v95, v305);
  if (v88)
  {
LABEL_233:
    CFDataWithBlockBuffer = v88;
    v98 = 0;
    goto LABEL_86;
  }

  if (!*v305)
  {
    goto LABEL_90;
  }

  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_496();
  CFDataWithBlockBuffer = FigCreateCFDataWithBlockBuffer();
  v96 = cf;
  if (CFDataWithBlockBuffer)
  {
    v98 = 0;
    if (!cf)
    {
      goto LABEL_86;
    }

LABEL_84:
    CFRelease(v96);
    goto LABEL_86;
  }

  v97 = *&v315[0];
  *(*&v315[0] + 152) = 1;
  *(v97 + 154) = 1;
  if (!v96)
  {
    v98 = 0;
    CFDataWithBlockBuffer = 0;
    goto LABEL_86;
  }

  v98 = CFRetain(v96);
  v96 = cf;
  if (cf)
  {
    goto LABEL_84;
  }

LABEL_86:
  v99 = *v305;
  if (*v305)
  {
    CFRelease(*v305);
  }

  if (CFDataWithBlockBuffer)
  {
    goto LABEL_108;
  }

  if (v98)
  {
    OUTLINED_FUNCTION_185_1(v99, v89, v90, v91, *(v293 + 88), v92, v93, v94, v236, *(&v236 + 1), v245, v251, v256, v261, v266, v271, v276, v281, v283, v284, SupportedProtocolVersions, v287);
    segPumpCryptSetKey();
    v119 = v290;
    if (v112)
    {
LABEL_131:
      CFDataWithBlockBuffer = v112;
      goto LABEL_133;
    }

    if (!*(v293 + 112))
    {
      CFDataWithBlockBuffer = 0;
      if (v61)
      {
        goto LABEL_133;
      }

      goto LABEL_130;
    }

    OUTLINED_FUNCTION_185_1(v112, v113, v114, v115, *(v293 + 128), v116, v117, v118, v237, v240, v246, v252, v257, v262, v267, v272, v277, v282, v283, v284, SupportedProtocolVersions, v287);
    segPumpCryptSetKey();
    CFDataWithBlockBuffer = v112;
    if ((v61 & 1) != 0 || v112)
    {
      goto LABEL_133;
    }

LABEL_130:
    v146 = OUTLINED_FUNCTION_185_1(v112, v113, v114, v115, v293, v116, v117, v118, v237, v240, v246, v252, v257, v262, v267, v272, v277, v282, v283, v284, SupportedProtocolVersions, v287);
    v112 = segPumpContinueIfCryptKeyResponseWasAlreadySet(v146);
    goto LABEL_131;
  }

LABEL_90:
  v100 = OUTLINED_FUNCTION_627();
  if (segPumpShouldRequestURLAsHTTPURL(v100, v101))
  {
    if (v9 && FigContentKeySpecifierGetKeySystem(v9) == 2)
    {
      v120 = *(a2 + 56);
      v121 = *(v292 + 552);
      v122 = *(a2 + 216);
      v123 = *(a2 + 240);
      v124 = *a2;
      memset(v315, 0, sizeof(v315));
      v317 = 0u;
      v318 = 0u;
      v316 = 0x800000000;
      v319 = 0;
      v119 = v290;
      segPumpCreateHTTPRequest(a2, v120, v292, v121, v290, v15, v122, v123, 0, 0x10000000CLL, v315, 0, 0, segPumpCryptMemoryRequestCallback, segPumpCryptFileReadCallback, v124, 0, v292 + 544, v283, v284, SupportedProtocolVersions, v287, v290, v292, HIDWORD(v292), v293, v294, v295, v296, *v297, v298, cf, v300);
      CFDataWithBlockBuffer = v112;
      if (dword_1EAF16A30)
      {
        LODWORD(cf) = 0;
        v304[0] = OS_LOG_TYPE_DEFAULT;
        v125 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v126 = os_log_type_enabled(v125, v304[0]);
        if (OUTLINED_FUNCTION_77_0(v126))
        {
          OUTLINED_FUNCTION_197_1();
          OUTLINED_FUNCTION_306_0();
          *v305 = 136316162;
          *&v305[4] = "segPumpSendCryptKeyRequest";
          v306 = 2114;
          OUTLINED_FUNCTION_5_1();
          v307 = v127;
          v308 = v128;
          v309 = 1024;
          LODWORD(v310) = CFDataWithBlockBuffer;
          OUTLINED_FUNCTION_117();
          OUTLINED_FUNCTION_19_1();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        v112 = OUTLINED_FUNCTION_420();
        v119 = v291;
      }

      goto LABEL_122;
    }

    OUTLINED_FUNCTION_214_1(a2, v292, (v292 + 544), -12885, @"CoreMediaErrorDomain", @"Cannot fetch wrapped key via http", v102, v103, 3, 3);
    OUTLINED_FUNCTION_374();
    v53 = FigSignalErrorAtGM();
    goto LABEL_106;
  }

  *&v315[0] = 0;
  v104 = OUTLINED_FUNCTION_265();
  segPumpGetCryptKeyCommonData(v104, v105, v106, v107, v108, v109, v110, v111, v236, v245, v251, v256, v261, v266, v271, v276, v281);
  v119 = v290;
  if (v112)
  {
LABEL_111:
    CFDataWithBlockBuffer = 0;
    goto LABEL_122;
  }

  if (*(*&v315[0] + 72))
  {
    if (!*(*&v315[0] + 96))
    {
      if (!*(*&v315[0] + 112))
      {
        goto LABEL_111;
      }

LABEL_110:
      if (!*(*&v315[0] + 136))
      {
        goto LABEL_111;
      }
    }
  }

  else if (*(*&v315[0] + 112))
  {
    goto LABEL_110;
  }

  v112 = segPumpRequestCustomURLForCryptKey(a2, v292, v9, v61);
  CFDataWithBlockBuffer = v112;
  if (v112)
  {
    v98 = 0;
    goto LABEL_133;
  }

  v79 = 1;
LABEL_122:
  v98 = 0;
  if (!v79)
  {
    if (v61)
    {
      goto LABEL_133;
    }

    goto LABEL_130;
  }

  if (!CFDataWithBlockBuffer)
  {
    v143 = *(a2 + 8);
    v144 = 2 * v143;
    if ((2 * v143) <= 3)
    {
      v144 = 3;
    }

    v145 = v144;
    if (!v143)
    {
      v145 = 20.0;
    }

    v112 = FigHTTPCreateTimer(*a2, &segPumpCryptKeyTimeoutHandler, *(a2 + 64), (v292 + 640), v145);
    v98 = 0;
  }

  if ((v61 & 1) == 0)
  {
    goto LABEL_130;
  }

LABEL_133:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v98)
  {
    CFRelease(v98);
  }

  if (v119)
  {
    v147 = v119;
LABEL_198:
    CFRelease(v147);
  }

  return CFDataWithBlockBuffer;
}

uint64_t segPumpSendIndexFileRequest(uint64_t a1, uint64_t a2, int a3)
{
  v117 = *MEMORY[0x1E69E9840];
  v6 = (a1 + 0x2000);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v102 = 0;
  v103 = -1;
  if (v6[676] && *(a2 + 160) == 1)
  {
    *(a2 + 160) = 2;
    *(a2 + 168) = 0u;
    *(a2 + 184) = 0u;
    *(a2 + 200) = 0;
  }

  v8 = *(a2 + 280);
  if (v8)
  {
    v99 = *(a2 + 272);
    *(a2 + 272) = 0;
    *(a2 + 280) = 0;
  }

  else
  {
    v99 = 0;
  }

  v100 = v6;
  if (v6[23])
  {
    v9 = 519;
  }

  else
  {
    v9 = 7;
  }

  v10 = *(a2 + 416);
  v11 = *(a2 + 424);
  v12 = *(a2 + 520);
  if (v12)
  {
    CFRelease(v12);
    *(a2 + 520) = 0;
  }

  *(a2 + 496) = 0;
  *(a2 + 416) = 0;
  *(a2 + 424) = 0;
  if (!a3)
  {
    *(a2 + 538) = 0;
  }

  if (*(a1 + 328))
  {
    v13 = *(a1 + 8328);
    if (v13)
    {
      PathwayID = FigAlternateGetPathwayID(*(v13 + 8));
    }

    else
    {
      PathwayID = @".";
    }

    v15 = FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(*(a1 + 320), (a2 + 8));
    if (v15)
    {
      v47 = v15;
      Mutable = 0;
      goto LABEL_140;
    }

    segPumpStreamUpdateIndexFile(a2, *(a2 + 8), *(a2 + 8), *(a2 + 24), *(a2 + 32), PathwayID);
  }

  if (*(a2 + 876) && UpTimeNanoseconds - *(a2 + 1064) > 1000000000 * (3 * *(a1 + 8)))
  {
    *(a2 + 876) = 0;
  }

  *(a2 + 440) = UpTimeNanoseconds;
  if (!*(a2 + 472))
  {
    *(a2 + 432) = UpTimeNanoseconds;
  }

  *(a2 + 1056) = UpTimeNanoseconds;
  *(a2 + 867) = 0;
  *(a2 + 360) = -1;
  *(a2 + 368) = -1;
  v16 = *(a2 + 56);
  if (!v16)
  {
    goto LABEL_144;
  }

  if (*(a2 + 160) == 3)
  {
    FigStreamPlaylistPredictMediaSequenceAndPartForAdvance(v16, &v103, &v102, *(a2 + 192));
    v17 = v103;
    goto LABEL_28;
  }

  MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v16);
  if (!MediaSegmentSpecifiers || CFArrayGetCount(MediaSegmentSpecifiers) < 1 || !*(a1 + 336) || (*(a2 + 160) & 0xFFFFFFFE) != 4)
  {
LABEL_144:
    if (!*(a1 + 336))
    {
      goto LABEL_56;
    }

    if (!*(a2 + 862))
    {
      goto LABEL_56;
    }

    if (!*(a2 + 864))
    {
      goto LABEL_56;
    }

    v27 = a1 + 392;
    if (!*(*(a1 + 392 + 16 * *a2) + 56))
    {
      goto LABEL_56;
    }

    v95 = *(*(a1 + 392 + 16 * *a2) + 56);
    v96 = a1 + 392;
    v98 = v11;
    v28 = 0;
    v29 = *(a2 + 16);
    HIDWORD(v97) = v9;
    do
    {
      Count = OUTLINED_FUNCTION_432_1();
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (v28 >= Count)
      {
        ValueAtIndex = 0;
        v94 = -1;
        v36 = 1;
        v38 = 1;
        MediaSequence = -1;
        goto LABEL_95;
      }

      v31 = OUTLINED_FUNCTION_432_1();
      ValueAtIndex = CFArrayGetValueAtIndex(v31, v28);
      URL = FigRenditionReportSpecifierGetURL(ValueAtIndex);
      ++v28;
    }

    while (!segPumpRenditionReportURLsAreEqual(v29, URL));
    LastMediaSequenceNumber = FigRenditionReportSpecifierGetLastMediaSequenceNumber(ValueAtIndex);
    LastPart = FigRenditionReportSpecifierGetLastPart(ValueAtIndex);
    v94 = LastPart;
    v36 = LastPart == -1;
    MediaSequence = LastMediaSequenceNumber;
    v39 = LastMediaSequenceNumber == -1;
    v38 = LastMediaSequenceNumber == -1;
    v39 = v39 || LastPart == -1;
    if (!v39)
    {
      v11 = v98;
      goto LABEL_103;
    }

LABEL_95:
    FigMediaPlaylistGetMediaSegmentSpecifiers(v95);
    LastValue = FigCFArrayGetLastValue();
    if (LastValue)
    {
      v58 = LastValue;
      if (v38)
      {
        MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(LastValue);
      }

      v11 = v98;
      if (v36)
      {
        PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(v58);
        if (PartialSegments)
        {
          v60 = CFArrayGetCount(PartialSegments) - 1;
        }

        else
        {
          v60 = -1;
        }

        v27 = a1 + 392;
        if (MediaSequence < 0)
        {
LABEL_129:
          Mutable = 0;
          v9 = HIDWORD(v97);
          goto LABEL_130;
        }

LABEL_104:
        AllocatorForMedia = FigGetAllocatorForMedia();
        Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
        CFArrayAppendValue(Mutable, @"_HLS_msn=");
        FigCFArrayAppendInt64();
        if ((v60 & 0x8000000000000000) == 0)
        {
          CFArrayAppendValue(Mutable, @"_HLS_part=");
          FigCFArrayAppendInt64();
        }

        v9 = HIDWORD(v97);
        if (!ValueAtIndex && Mutable)
        {
          if (!*(a1 + 337))
          {
            v9 = HIDWORD(v97) | 0x400;
            goto LABEL_57;
          }

          *(a1 + 339) = 1;
          v83 = segPumpSetupBlockingReload(a1, *(v27 + 16 * *a2), v62, v63, v64, v65, v66, v67, v84, v85, v86, SWORD2(v86), SBYTE6(v86), HIBYTE(v86), v87, SHIDWORD(v87), v88, v89, v90, v91, v92, v93, v94, SHIDWORD(v94), v95, SHIDWORD(v95), v96, SBYTE4(v96), v97, v98, v99, v100, v101, v102, v103, v104, *(&v104 + 1), v105, v106, *v107, *&v107[8], *&v107[16], v108, v109, *(&v109 + 1), v110, *(&v110 + 1), v111, *(&v111 + 1), v112, *(&v112 + 1), v113, v114, *(&v114 + 1), v115, *(&v115 + 1), v116);
          if (!v83)
          {
LABEL_57:
            if (*(a2 + 876))
            {
              if (Mutable || (v40 = FigGetAllocatorForMedia(), (Mutable = CFArrayCreateMutable(v40, 0, MEMORY[0x1E695E9C0])) != 0))
              {
                v41 = *(a2 + 56);
                v42 = @"YES";
                if (v41 && FigMediaPlaylistCanSkipDATERANGES(v41))
                {
                  v42 = @"v2";
                }

                CFArrayAppendValue(Mutable, @"_HLS_skip=");
                CFArrayAppendValue(Mutable, v42);
              }
            }

            if (*(a1 + 232))
            {
              if (!v100[28] && !*(a2 + 56) && !*a2)
              {
                if (Mutable || (v43 = FigGetAllocatorForMedia(), (Mutable = CFArrayCreateMutable(v43, 0, MEMORY[0x1E695E9C0])) != 0))
                {
                  CFArrayAppendValue(Mutable, @"_HLS_primary_id=");
                  CFArrayAppendValue(Mutable, *(a1 + 232));
                }
              }
            }

            if (!*(a2 + 858) && segPumpShouldRequestURLAsHTTPURL(a1, *(a2 + 16)))
            {
              if (!v100[448])
              {
                v100[448] = 1;
                AttemptNetworkMonitorSetup(a1, *(a2 + 16));
              }

              if (*(a2 + 56) || *a2)
              {
                v68 = 11;
              }

              else
              {
                v68 = 10;
              }

              v69 = *(a1 + 56);
              if (v8)
              {
                v70 = v8;
              }

              else
              {
                v70 = v11;
              }

              v71 = *(a2 + 16);
              v72 = *(a1 + 216);
              v73 = *(a1 + 240);
              v74 = *a1;
              v112 = 0u;
              v110 = 0u;
              v111 = 0u;
              v109 = 0u;
              v113 = 0x100000000;
              v114 = 0u;
              v115 = 0u;
              v116 = 0;
              v53 = v99;
              segPumpCreateHTTPRequest(a1, v69, a2, v99, v70, v71, v72, v73, Mutable, __SPAIR64__(v9, v68), &v109, 0, 0, 0, segPumpIndexFileReadCallback, v74, 0, a2 + 408, v94, v95, v96, v97, v98, v99, HIDWORD(v99), v100, v101, v102, v103, v104, *(&v104 + 1), v105, v106);
              v47 = v75;
              if (!dword_1EAF16A30)
              {
LABEL_78:
                if (*(a2 + 866) || !v100[26] && *(a1 + 8280))
                {
                  v54 = OUTLINED_FUNCTION_489();
                  segPumpScheduleIndexFileLongDownloadTimer(v54, v55);
                }

                *(a2 + 1184) = 0;
                *(a2 + 400) = 0;
                FigHTTPStopAndReleaseTimer((a2 + 392));
                if (v53)
                {
                  goto LABEL_82;
                }

                goto LABEL_83;
              }

              v76 = OUTLINED_FUNCTION_348_1();
              v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);
              if (OUTLINED_FUNCTION_71_0(v77))
              {
                LODWORD(v104) = 136316162;
                *(&v104 + 4) = "segPumpSendIndexFileRequest";
                WORD6(v104) = 2114;
                OUTLINED_FUNCTION_68_0();
                v106 = v78;
                *v107 = v79;
                *&v107[2] = v80;
                *&v107[10] = v81;
                *&v107[12] = v82;
                OUTLINED_FUNCTION_47_0();
                OUTLINED_FUNCTION_38();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_449();
            }

            else
            {
              v44 = OUTLINED_FUNCTION_489();
              v47 = segPumpPostIndexFileRequest(v44, v45, Mutable, v46);
              if (dword_1EAF16A30)
              {
                v48 = OUTLINED_FUNCTION_348_1();
                v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
                if (OUTLINED_FUNCTION_77_0(v49))
                {
                  LODWORD(v104) = 136315906;
                  *(&v104 + 4) = "segPumpSendIndexFileRequest";
                  WORD6(v104) = 2114;
                  OUTLINED_FUNCTION_68_0();
                  v106 = v50;
                  *v107 = v51;
                  *&v107[2] = v52;
                  OUTLINED_FUNCTION_47_0();
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_420();
              }
            }

            v53 = v99;
            goto LABEL_78;
          }

          goto LABEL_139;
        }

        if (Mutable)
        {
          v9 = HIDWORD(v97) | 0x400;
        }

LABEL_130:
        if (ValueAtIndex && *(a1 + 337) && *(a2 + 160) != 4)
        {
          *(a2 + 160) = 4;
        }

        goto LABEL_57;
      }
    }

    else
    {
      v11 = v98;
    }

    v27 = a1 + 392;
LABEL_103:
    v60 = v94;
    if (MediaSequence < 0)
    {
      goto LABEL_129;
    }

    goto LABEL_104;
  }

  FigMediaPlaylistGetMediaSegmentSpecifiers(*(a2 + 56));
  v23 = FigCFArrayGetLastValue();
  IsFragment = FigMediaSegmentSpecifierIsFragment(v23);
  v25 = FigMediaSegmentSpecifierGetMediaSequence(v23);
  v17 = v25;
  if (IsFragment)
  {
    v103 = v25;
    v26 = FigMediaSegmentSpecifierGetPartialSegments(v23);
    if (v26)
    {
      v26 = CFArrayGetCount(v26);
    }

    v102 = v26;
  }

  else
  {
    v17 = v25 + 1;
    v103 = v25 + 1;
    if (*(a1 + 16) == 0.0)
    {
      v102 = -1;
    }
  }

  FigMediaSegmentSpecifierGetPartialSegments(v23);
LABEL_28:
  v9 |= 0x400u;
  if (v17 < 0)
  {
LABEL_56:
    Mutable = 0;
    goto LABEL_57;
  }

  v18 = FigGetAllocatorForMedia();
  v19 = CFArrayCreateMutable(v18, 0, MEMORY[0x1E695E9C0]);
  Mutable = v19;
  if (v19)
  {
    CFArrayAppendValue(v19, @"_HLS_msn=");
    FigCFArrayAppendInt64();
    if ((v102 & 0x8000000000000000) == 0)
    {
      CFArrayAppendValue(Mutable, @"_HLS_part=");
      FigCFArrayAppendInt64();
    }

    if ((v103 & 0x8000000000000000) == 0)
    {
      v21 = v102;
      *(a2 + 360) = v103;
      *(a2 + 368) = v21;
    }

    goto LABEL_57;
  }

  v83 = FigSignalErrorAtGM();
LABEL_139:
  v47 = v83;
LABEL_140:
  v53 = v99;
  if (v99)
  {
LABEL_82:
    CFRelease(v53);
  }

LABEL_83:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v47;
}

void AttemptNetworkMonitorSetup(uint64_t a1)
{
  if (!*(a1 + 8624))
  {
    OUTLINED_FUNCTION_261();
    if (FigCFHTTPIsHTTPBasedURL(v3))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v6 = Mutable;
        FigCFDictionarySetValueFromKeyInDict();
        v7 = v1[1133];
        if (v7)
        {
          CFDictionarySetValue(v6, @"kFigNetworkPathEvaluatorCreateOption_InterfaceName", v7);
        }

        v8 = v1[1134];
        if (v8)
        {
          CFDictionarySetValue(v6, @"kFigNetworkPathEvaluatorCreateOption_ClientAuditToken", v8);
        }

        OUTLINED_FUNCTION_206_0();
        if (!FigNetworkPathEvaluatorCreate())
        {
          v9 = v1[1079];
          if (v9)
          {
            CFRelease(v9);
            v1[1079] = 0;
          }

          v10 = v1[1078];
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v11)
          {
            v12 = v11(v10);
          }

          else
          {
            v12 = 0;
          }

          v1[1079] = v12;
          segPumpUpdateNetworkCostHasHighSpeedHighPower(v1);
          v13 = v1[1077];
          v1[1077] = v2;
          if (v2)
          {
            CFRetain(v2);
          }

          if (v13)
          {
            CFRelease(v13);
          }

          if (FigNetworkPathInformationIsHostLocal())
          {
            v14 = v1[1078];
            if (v14)
            {
              CFRelease(v14);
              v1[1078] = 0;
            }
          }
        }

        CFRelease(v6);
      }

      else
      {
        OUTLINED_FUNCTION_243();

        FigSignalErrorAtGM();
      }
    }
  }
}

void segPumpIndexFileReadCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_308_1();
  v13 = v12;
  v15 = v14;
  v108[16] = *MEMORY[0x1E69E9840];
  v94 = 0;
  cf = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  FigRetainProxyRetain();
  if (!segPumpLockAndCopyPumpFromRetainProxy())
  {
    if ((v16 = *(v94 + 392), OUTLINED_FUNCTION_327_1(), v18) && (OUTLINED_FUNCTION_326_1(), v18) || (v16 = *(v17 + 408), OUTLINED_FUNCTION_327_1(), v18) && (OUTLINED_FUNCTION_326_1(), v18) || (v16 = *(v19 + 424), OUTLINED_FUNCTION_327_1(), v18) && (OUTLINED_FUNCTION_326_1(), v18) || (v16 = *(v20 + 400), OUTLINED_FUNCTION_327_1(), v18) && (OUTLINED_FUNCTION_326_1(), v18) || (v16 = *(v21 + 416), OUTLINED_FUNCTION_327_1(), v18) && (OUTLINED_FUNCTION_326_1(), v18) || (v16 = *(v22 + 432), *(v16 + 424) == v15) && *(v16 + 488) == v13)
    {
      if (v15)
      {
        *(v16 + 867) = 0;
        if (!*(v16 + 456))
        {
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          v24 = UpTimeNanoseconds - *(v16 + 432);
          *(v16 + 456) = UpTimeNanoseconds;
          *(v16 + 464) = v24;
        }

        AllocatorForMedia = FigGetAllocatorForMedia();
        v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v26)
        {
          v26(v15, @"FHRP_CFNetworkTimingData", AllocatorForMedia, &v91);
        }

        if (a8)
        {
          FigCreateErrorForOSStatus(a8, &v92);
          segPumpPublishPlaylistRequestEvent(v94, *(v16 + 408), v16, v91, v15, v92, 0, 0);
          OUTLINED_FUNCTION_494();
          segPumpHandleIndexFileNetworkError();
          goto LABEL_44;
        }

        if (v9)
        {
          v108[0] = 0;
          v38 = FigGetAllocatorForMedia();
          v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v39)
          {
            v27 = v39(v15, @"FHRP_HTTPFinalURL", v38, v108);
            segPumpRTCReportingUpdatePreLTKUStats_HeadersAvailable();
            if (!v27)
            {
              segPumpStreamUpdateIndexFileURLWithResponse(v94, v16, v108[0]);
            }
          }

          else
          {
            segPumpRTCReportingUpdatePreLTKUStats_HeadersAvailable();
            v27 = 4294954514;
          }

          if (v91)
          {
            InterfaceTypeFromCFNStats = FigNetworkInterfaceGetInterfaceTypeFromCFNStats(v91);
            v41 = v94;
            *(v94 + 8644) = InterfaceTypeFromCFNStats;
            segPumpUpdateNetworkCostHasHighSpeedHighPower(v41);
          }

          if (v108[0])
          {
            CFRelease(v108[0]);
          }
        }

        else
        {
          v27 = 0;
        }

        if (v10)
        {
          if (!*(v16 + 520) && (FigGetAllocatorForMedia(), OUTLINED_FUNCTION_296(), Empty = CMBlockBufferCreateEmpty(v28, v29, v30, (v16 + 520)), Empty) || (OUTLINED_FUNCTION_310(), Empty = CMBlockBufferAppendBufferReference(v32, v33, v34, v35, v36), Empty))
          {
            v27 = Empty;
          }

          else
          {
            v27 = segPumpVerifyM3UPlaylist(v94, v16);
            if (!v27)
            {
              goto LABEL_32;
            }

            if (dword_1EAF16A30)
            {
              LODWORD(v99) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              OUTLINED_FUNCTION_251_1();
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v84 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
              if (OUTLINED_FUNCTION_109_0(v84))
              {
                if (v94)
                {
                  OUTLINED_FUNCTION_202_1();
                }

                v100 = 136315650;
                v101 = "segPumpIndexFileReadCallback";
                OUTLINED_FUNCTION_4_1();
                OUTLINED_FUNCTION_38();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_524();
            }
          }

LABEL_136:
          segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(v8, v27);
          goto LABEL_34;
        }

LABEL_32:
        if ((v9 & 2) == 0)
        {
          goto LABEL_33;
        }

        if (!*(v94 + 48) && (segPumpIsProtocolUsedByRequest(v15) || segPumpIsProtocolUsedByRequest(v15)))
        {
          v42 = *(v16 + 416);
          if (v42)
          {
            v43 = v94;
            if (!*(v94 + 48))
            {
              *(v94 + 48) = 1;
              v44 = *(v43 + 40);
              *(v43 + 40) = v42;
              CFRetain(v42);
              if (v44)
              {
                CFRelease(v44);
              }
            }
          }
        }

        FigHTTPStopAndReleaseTimer((v16 + 504));
        v45 = FigGetUpTimeNanoseconds();
        FigGetAllocatorForMedia();
        if (*(*(OUTLINED_FUNCTION_356_1() + 8) + 48))
        {
          v46 = OUTLINED_FUNCTION_406();
          v47(v46);
        }

        FigNetworkInterfaceReporterSamplePhysicalStatistics(*(v94 + 9312), v15, *(v94 + 9232), 0x1F0B64538, 0);
        segPumpCheckAndUpdateLowLatencyServerCompliance();
        v37 = segPumpSetWiFiStatsOnNetworkPredictor(v94, v16 + 408);
        if (!v37)
        {
          v48 = *(v16 + 280);
          if (v48)
          {
            CFRelease(v48);
            *(v16 + 280) = 0;
          }

          v49 = *(v16 + 272);
          if (v49)
          {
            CFRelease(v49);
            *(v16 + 272) = 0;
          }

          v50 = *(v16 + 424);
          if (*(v16 + 537))
          {
            if (v50)
            {
              CFRelease(v50);
              *(v16 + 424) = 0;
            }

            v51 = *(v16 + 416);
            if (v51)
            {
              CFRelease(v51);
            }

            *(v16 + 537) = 0;
          }

          else
          {
            *(v16 + 272) = *(v16 + 416);
            *(v16 + 280) = v50;
          }

          *(v16 + 496) = 0;
          *(v16 + 416) = 0;
          *(v16 + 424) = 0;
          *(v16 + 448) = v45;
          *(v16 + 472) = 0;
          v52 = *(v16 + 480);
          if (v52)
          {
            CFRelease(v52);
            *(v16 + 480) = 0;
          }

          if (*(v16 + 280))
          {
            if (*(*(CMBaseObjectGetVTable() + 16) + 24))
            {
              v53 = OUTLINED_FUNCTION_173_0();
              if (!v54(v53))
              {
                v55 = *(v16 + 1080);
                if (v55)
                {
                  v56 = v55 / 2;
                }

                else
                {
                  v56 = 0;
                }

                *(v16 + 1072) = v56;
                *(v16 + 1080) = 0;
              }
            }
          }

          segPumpParseIndexFile();
          if (!v37)
          {
            if (FigRetainProxyIsInvalidated())
            {
              goto LABEL_34;
            }

            v57 = v94;
            v108[0] = 0;
            if (*(*(CMBaseObjectGetVTable() + 16) + 40))
            {
              OUTLINED_FUNCTION_279_1();
              OUTLINED_FUNCTION_26_1();
              v58();
              if (v108[0] >= 1)
              {
                if (*(v57 + 9232))
                {
                  if (*(*(CMBaseObjectGetVTable() + 16) + 32))
                  {
                    v59 = OUTLINED_FUNCTION_502();
                    v60(v59);
                  }

                  if (*(v57 + 9232))
                  {
                    OUTLINED_FUNCTION_319_1();
                    if (*(*(CMBaseObjectGetVTable() + 16) + 32))
                    {
                      v61 = OUTLINED_FUNCTION_502();
                      v62(v61);
                    }

                    if (*(v57 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 56))
                    {
                      v63 = OUTLINED_FUNCTION_502();
                      v64(v63);
                    }
                  }
                }
              }
            }

            if (*(v94 + 337) && *v16 == *(v94 + 8600))
            {
              segPumpResumeRoundTripMonitoring(v94);
            }

            v65 = *(v16 + 56);
            if (!v65 || (MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v65)) == 0 || CFArrayGetCount(MediaSegmentSpecifiers) < 1 || FigMediaPlaylistHasEndTag(*(v16 + 56)) || !*(v94 + 8280) || !*(v16 + 875) || !segPumpIsIndexFileResponseOutOfDate(v94, v16, v93) || (OUTLINED_FUNCTION_494(), segPumpHandleIndexFileNetworkError(), !v37))
            {
              v67 = v94;
              if (*(v94 + 337))
              {
                OUTLINED_FUNCTION_286_1();
                if (v18)
                {
                  if (!*(v67 + 346))
                  {
                    v68 = 0;
                    *type = 0.0;
                    v99 = 0.0;
                    v69 = *(v67 + 392);
                    if (v69)
                    {
                      v70 = *(v67 + 408);
                      if (v70)
                      {
                        OUTLINED_FUNCTION_292_1();
                        if (!v71 || (v72 = *(v69 + 56)) == 0 || FigMediaPlaylistGetDateStampCount(v72) < 1 || (OUTLINED_FUNCTION_292_1(), !v73) || (v74 = *(v70 + 56)) == 0 || FigMediaPlaylistGetDateStampCount(v74) < 1 || segPumpPlaylistGetImputedLiveEdgeDate(v69, &v99) || segPumpPlaylistGetImputedLiveEdgeDate(v70, type) || v99 == 0.0 || *type == 0.0 || (v75 = vabdd_f64(v99, *type), v75 <= *(v67 + 16) + *(v67 + 16)))
                        {
                          v68 = 0;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_175_0();
                          v76 = OUTLINED_FUNCTION_284();
                          OUTLINED_FUNCTION_214_1(v76, v77, v78, -15621, v79, v80, v81, v82, v90, SHIDWORD(v90));
                          if (dword_1EAF16A30)
                          {
                            v97 = 0;
                            v96 = OS_LOG_TYPE_DEFAULT;
                            OUTLINED_FUNCTION_407_0();
                            v85 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                            v86 = os_log_type_enabled(v85, v96);
                            if (OUTLINED_FUNCTION_16_1(v86))
                            {
                              OUTLINED_FUNCTION_393_1();
                              if (!v18)
                              {
                                v87 = v88;
                              }

                              v89 = *(v67 + 16);
                              v100 = 136315906;
                              v101 = "segPumpAreLiveEdgesOutOfSync";
                              v102 = 2114;
                              v103 = v87;
                              v104 = 2048;
                              v105 = v75;
                              v106 = 2048;
                              v107 = v89;
                              OUTLINED_FUNCTION_145();
                              OUTLINED_FUNCTION_23();
                              _os_log_send_and_compose_impl();
                            }

                            OUTLINED_FUNCTION_109();
                            v68 = 1;
                            OUTLINED_FUNCTION_88_0();
                          }

                          else
                          {
                            v68 = 1;
                          }
                        }
                      }
                    }

                    v67 = v94;
                    *(v94 + 346) = v68;
                  }
                }
              }

              segPumpPublishPlaylistRequestEvent(v67, *(v16 + 408), v16, v91, v15, v92, 0, 0);
              v27 = 0;
LABEL_33:
              if (!v27)
              {
                goto LABEL_34;
              }

              goto LABEL_136;
            }
          }
        }

LABEL_44:
        v27 = v37;
        goto LABEL_33;
      }
    }
  }

LABEL_34:
  segPumpUnlockAndSendAllPendingNotifications();
  FigRetainProxyRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  if (v91)
  {
    CFRelease(v91);
  }
}

BOOL segPumpRenditionReportURLsAreEqual(const __CFURL *a1, uint64_t a2)
{
  v3 = 0;
  if (!a1 || !a2)
  {
    return v3;
  }

  CFURLCopyAbsoluteURL(a1);
  v4 = OUTLINED_FUNCTION_199();
  v5 = CFURLCopyAbsoluteURL(v4);
  v6 = v5;
  if (v2 && v5)
  {
    v7 = CFURLCopyPath(v2);
    v8 = CFURLCopyPath(v6);
    OUTLINED_FUNCTION_178();
    if (FigCFEqual())
    {
      v9 = OUTLINED_FUNCTION_177();
      v11 = FigCFHTTPDoURLHostsAndPortsMatch(v9, v10) != 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v8 = 0;
    v7 = 0;
    v3 = 0;
    v12 = 0;
    v13 = 0;
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  CFRelease(v2);
  v3 = v11;
  v12 = v8;
  v13 = v7;
LABEL_9:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v3;
}

BOOL segPumpPlaylistIsCompliantWithBlockingReloadPolicy()
{
  OUTLINED_FUNCTION_187();
  if (FigMediaPlaylistDoesServerSupportsBlockingReload(*(v2 + 56)))
  {
    if (FigMediaPlaylistHasEndTag(*(v1 + 56)))
    {
      v3 = -15413;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = -15411;
  }

  *v0 = v3;
  return OUTLINED_FUNCTION_412_1(v3);
}

void segPumpCanContinueWithLowLatencyMode()
{
  OUTLINED_FUNCTION_629();
  v3 = v2;
  OUTLINED_FUNCTION_400();
  if (!*(v4 + 340) && *(v0 + 341) == 1)
  {
    OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_613();
    OUTLINED_FUNCTION_214_1(v27, v28, v29, -15410, v30, v31, v32, v33, v46, SHIDWORD(v46));
    *(v0 + 340) = 1;
  }

  if (!*(v0 + 338))
  {
    v5 = -15410;
    goto LABEL_8;
  }

  if (*(v1 + 160) == 6)
  {
    v5 = -15417;
    goto LABEL_8;
  }

  if (!segPumpPlaylistIsCompliantWithBlockingReloadPolicy())
  {
    goto LABEL_42;
  }

  if (FigMediaPlaylistGetDateStampCount(*(v1 + 56)) < 1)
  {
    v5 = -15412;
    goto LABEL_8;
  }

  FigMediaPlaylistGetMediaSegmentSpecifiers(*(v1 + 56));
  LastValue = FigCFArrayGetLastValue();
  PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(LastValue);
  MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v1 + 56));
  if (!MediaSegmentSpecifiers)
  {
LABEL_32:
    v5 = -15620;
    goto LABEL_8;
  }

  Count = CFArrayGetCount(MediaSegmentSpecifiers);
  v5 = -15620;
  if (Count && PartialSegments)
  {
    if (CFArrayGetCount(PartialSegments) && FigMediaPlaylistGetPartTargetDuration(*(v1 + 56)) > 0.0)
    {
      if (!FigMediaPlaylistHasEndTag(*(v1 + 56)) && !segPumpStreamHasPreloadHint(v1))
      {
        v5 = -15415;
        goto LABEL_8;
      }

      if (!*(v0 + 345))
      {
        v10 = *(v0 + 8280);
        AllocatorForMedia = FigGetAllocatorForMedia();
        Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v10)
        {
          v13 = MEMORY[0x1E695E9C0];
          do
          {
            PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(v10[1]);
            v15 = CFURLCopyHostName(PlaylistAlternateURL);
            if (v15)
            {
              v16 = v15;
              v17 = OUTLINED_FUNCTION_182_1();
              if (CFDictionaryGetValueIfPresent(v17, v18, v19))
              {
                CFArrayAppendValue(0, v10[1]);
              }

              else
              {
                v20 = FigGetAllocatorForMedia();
                theArray = CFArrayCreateMutable(v20, 0, v13);
                CFArrayAppendValue(theArray, v10[1]);
                v21 = OUTLINED_FUNCTION_182_1();
                CFDictionaryAddValue(v21, v22, v23);
                CFRelease(theArray);
              }

              CFRelease(v16);
            }

            v10 = *v10;
          }

          while (v10);
        }

        v24 = FigCFDictionaryCopyArrayOfValues();
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        v25 = *(v1 + 48);
        if (v25)
        {
          FigMultivariantPlaylistGetVideoGroups(v25);
          AudioGroups = FigMultivariantPlaylistGetAudioGroups(*(v1 + 48));
          FigMultivariantPlaylistGetSubtitleGroups(*(v1 + 48));
        }

        else
        {
          AudioGroups = 0;
        }

        v34 = OUTLINED_FUNCTION_502();
        *(v0 + 343) = FigAlternateAreAllAlternatesOnSameHost(v34, v35, AudioGroups, v36);
        HaveMatchingAlternates = FigAlternateDoAllHostsHaveMatchingAlternates(v24);
        *(v0 + 344) = HaveMatchingAlternates;
        if (v24)
        {
          CFRelease(v24);
          HaveMatchingAlternates = *(v0 + 344);
        }

        if (!HaveMatchingAlternates)
        {
          OUTLINED_FUNCTION_114_1();
          OUTLINED_FUNCTION_613();
          OUTLINED_FUNCTION_214_1(v39, v40, v41, -15410, v42, v43, v44, v45, v46, SHIDWORD(v46));
        }

        *(v0 + 345) = 1;
      }

      if (!*(v0 + 343))
      {
        v5 = -15414;
        goto LABEL_8;
      }

LABEL_42:
      OUTLINED_FUNCTION_412_1(*(v0 + 339));
      if (v38)
      {
        v5 = 0;
      }

      else
      {
        v5 = -15418;
      }

      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_8:
  *v3 = v5;
  OUTLINED_FUNCTION_345_1();
}

void segPumpSetPartTargetDuration(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  v4 = *(a1 + 16);
  if (*(a1 + 337))
  {
    if (FigMediaPlaylistGetPartTargetDuration(a2) <= 0.0)
    {
      return;
    }

    PartTargetDuration = v4;
    if (v4 <= FigMediaPlaylistGetPartTargetDuration(a2))
    {
      PartTargetDuration = FigMediaPlaylistGetPartTargetDuration(a2);
    }
  }

  else
  {
    PartTargetDuration = 0.0;
  }

  *v3 = PartTargetDuration;
  if (vabdd_f64(v4, PartTargetDuration) >= 2.22044605e-16 && dword_1EAF16A30 != 0)
  {
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_251_1();
    v8 = OUTLINED_FUNCTION_126();
    v16 = OUTLINED_FUNCTION_116_0(v8, v9, v10, v11, v12, v13, v14, v15, v25, v26, v27, v28, SBYTE2(v28), BYTE3(v28), SHIDWORD(v28));
    if (OUTLINED_FUNCTION_109_0(v16))
    {
      OUTLINED_FUNCTION_264_0();
      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_329_0();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524();
  }

  v17 = vabdd_f64(PartTargetDuration, v4);
  if (*(a1 + 9760))
  {
    v18 = v17 < 2.22044605e-16;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v19 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, v3);
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v20 = OUTLINED_FUNCTION_308();
      v21(v20);
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  v22 = *(a1 + 9232);
  if (v22)
  {
    v23 = *(a1 + 16);
    v24 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v24)
    {
      v24(v22, 0x1F0B64538, 0x1F0B43218, (v23 * 1000.0), 0);
    }
  }
}

void segPumpSetActiveHoldBack()
{
  OUTLINED_FUNCTION_369();
  v3 = *(v2 + 8168);
  if (*(v2 + 337))
  {
    v4 = v3 <= FigMediaPlaylistGetPartHoldBackDuration(v1);
    PartHoldBackDuration = v3;
    if (v4)
    {
      PartHoldBackDuration = FigMediaPlaylistGetPartHoldBackDuration(v1);
    }
  }

  else if (FigMediaPlaylistHasHoldBackDuration(v1))
  {
    v4 = v3 <= FigMediaPlaylistGetHoldBackDuration(v1);
    PartHoldBackDuration = v3;
    if (v4)
    {
      PartHoldBackDuration = FigMediaPlaylistGetHoldBackDuration(v1);
    }
  }

  else
  {
    PartHoldBackDuration = 0.0;
  }

  if (PartHoldBackDuration >= 0.0)
  {
    v6 = PartHoldBackDuration;
  }

  else
  {
    v6 = 0.0;
  }

  if (v3 != v6 && v6 > *(v0 + 8184))
  {
    *(v0 + 8184) = v6;
    v7 = OUTLINED_FUNCTION_270();
    segPumpReadyNotification(v7, v8, v9);
  }

  *(v0 + 8168) = v6;
  if (vabdd_f64(v3, v6) >= 2.22044605e-16 && dword_1EAF16A30 != 0)
  {
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_362_1();
    v11 = OUTLINED_FUNCTION_126();
    v19 = OUTLINED_FUNCTION_180_0(v11, v12, v13, v14, v15, v16, v17, v18, v22, v23, v24, v25, SBYTE2(v25), BYTE3(v25), SHIDWORD(v25));
    if (OUTLINED_FUNCTION_124_0(v19))
    {
      OUTLINED_FUNCTION_264_0();
      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_345_0();
  }

  v20 = *(v0 + 9232);
  if (v20)
  {
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v21)
    {
      v21(v20, 0x1F0B64538, 0x1F0B43238, (v6 * 1000.0), 0);
    }
  }
}

void segPumpPublishPlaylistRequestEvent(uint64_t a1, const void *a2, void *a3, uint64_t a4, uint64_t a5, const void *a6, char a7, char a8)
{
  v30 = 0;
  OUTLINED_FUNCTION_381_1();
  cf = 0;
  v25 = 0.0;
  if (v16)
  {
    v8 = v16;
    FigCFDictionaryGetDoubleIfPresent();
    FigCFDictionaryGetDoubleIfPresent();
    FigCFDictionaryGetDoubleIfPresent();
    FigCFDictionaryGetDoubleIfPresent();
  }

  if (a5)
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_230_1();
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v17(a5, @"FHRP_CFNetworkTransactionMetrics", v8, &cf);
    }

    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_230_1();
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v18)
    {
      v18(a5, 0x1F0B5D218, v8, &v29);
    }

    FigCFDictionaryGetInt64IfPresent();
    FigCFDictionaryGetInt64IfPresent();
  }

  v19 = (*(a1 + 16 * *(a1 + 8600) + 392) + 680);
  while (1)
  {
    v19 = *v19;
    if (!v19)
    {
      break;
    }

    v20 = v19[22];
    if (v20)
    {
      goto LABEL_14;
    }
  }

  v20 = 0;
LABEL_14:
  v21 = FigCFHTTPCreateAddressString(v20);
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (*a3 > 2uLL)
  {
    v23 = 0;
  }

  else
  {
    v23 = dword_196E7291C[*a3];
  }

  FigMetricHLSPlaylistRequestEventCreate(AllocatorForMedia, a2, v21, 0, 0, a8, a6, cf, v28, v27, v26, v25, v23, a7, &v30);
  segPumpPublishMetricEvent(a1, v30);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v30)
  {
    CFRelease(v30);
  }
}

void segPumpHandleIndexFileNetworkError()
{
  OUTLINED_FUNCTION_218_1();
  v73 = v0;
  v74 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v67 = v8;
  v10 = v9;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  ++*(v10 + 472);
  if (FigStreamingNetworkErrorCreateErrorFromHTTPRequestIfAvailable(*(v10 + 424), v7, v5, v3, &cf))
  {
    goto LABEL_91;
  }

  v12 = *(v10 + 480);
  v13 = cf;
  *(v10 + 480) = cf;
  if (v13)
  {
    CFRetain(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v14 = cf;
  v15 = *(v10 + 424);
  v69 = 0;
  *v70 = 0;
  if (*v10)
  {
    v16 = 1;
  }

  else
  {
    v16 = *(*(DerivedStorage + 392) + 56) != 0;
  }

  CFErrorGetCode(cf);
  v17 = OUTLINED_FUNCTION_127_1();
  CFErrorGetDomain(v17);
  v18 = CFErrorCopyUserInfo(v14);
  if (!*(*(DerivedStorage + 392 + 16 * *v10) + 16))
  {
    OUTLINED_FUNCTION_398_0();
    v30 = 0;
    goto LABEL_56;
  }

  if (!v67 && *(v10 + 538))
  {
    v19 = 0;
    *v70 = 0;
    goto LABEL_16;
  }

  if (v7 >> 1 == 2147477204)
  {
    v19 = 0;
    v20 = 7;
LABEL_15:
    *v70 = v20;
    v69 = 2;
    goto LABEL_16;
  }

  switch(v7)
  {
    case 0xFFFFBB1F:
      v19 = 0;
      v69 = 3;
      *v70 = 3;
      goto LABEL_16;
    case 0xFFFFBE39:
      v19 = 0;
      v20 = 3;
      goto LABEL_15;
    case 0xFFFFC2FA:
    case 0xFFFFC3C7:
LABEL_39:
      v19 = 0;
      *v70 = 8;
      goto LABEL_40;
    case 0xFFFFC3C8:
      v19 = 0;
      if (*(v10 + 384) >= 2u)
      {
        v59 = 6;
      }

      else
      {
        v59 = 3;
      }

      v69 = 1;
      *v70 = v59;
LABEL_16:
      v21 = OUTLINED_FUNCTION_177();
      segPumpModifyErrorActionIfCurrentAlternateIsLastValidAlternate(v21, v22, v23, v24);
      if (!*(v10 + 384) && *(v10 + 875) && *v70 == 3 && v7 == -12888)
      {
        *v70 = 0;
      }

LABEL_40:
      if (v16)
      {
        v7 = *v70;
        if (*(v10 + 868))
        {
          goto LABEL_47;
        }
      }

      else
      {
        v7 = *v70;
      }

      if (v7 == 3)
      {
        if (*(DerivedStorage + 392 + 16 * *v10) == v10)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }

LABEL_47:
      if (*(DerivedStorage + 8360) || (v7 - 9) < 0xFFFFFFFFFFFFFFFELL)
      {
        if (v7 != 3)
        {
          goto LABEL_54;
        }
      }

      else
      {
        *v70 = 3;
      }

LABEL_51:
      if (*(DerivedStorage + 8361))
      {
        v7 = 3;
        goto LABEL_54;
      }

LABEL_53:
      v7 = 6;
      *v70 = 6;
LABEL_54:
      v29 = 0;
      v30 = 0;
      if (!v19)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    case 0xFFFFCDAB:
    case 0xFFFFCE9E:
    case 0xFFFFCE9A:
      goto LABEL_39;
  }

  OUTLINED_FUNCTION_140_0();
  CommonActionForNetworkError = segPumpGetCommonActionForNetworkError();
  if (CommonActionForNetworkError)
  {
    v30 = CommonActionForNetworkError;
LABEL_114:
    OUTLINED_FUNCTION_398_0();
    goto LABEL_56;
  }

  v19 = 0;
  v61 = *v70;
  if (v15 || *v70 != 1)
  {
    goto LABEL_109;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v63 = CFErrorCreate(AllocatorForMedia, @"CoreMediaErrorDomain", -12938, v18);
  if (v63)
  {
    v19 = v63;
    v71 = 0;
    v72[0] = 0;
    RecommendedAction = FigStreamingNetworkErrorGetRecommendedAction(v63, v72, &v71);
    if (RecommendedAction)
    {
      v29 = RecommendedAction;
      OUTLINED_FUNCTION_398_0();
LABEL_55:
      CFRelease(v19);
      v30 = v29;
      goto LABEL_56;
    }

    v61 = v72[0];
    if (v72[0] == 2)
    {
      v61 = 7;
    }

    *v70 = v61;
LABEL_109:
    if (v61 == 8)
    {
      goto LABEL_40;
    }

    goto LABEL_16;
  }

  v30 = FigSignalErrorAtGM();
  if (v30)
  {
    goto LABEL_114;
  }

  v7 = *v70;
LABEL_56:
  if (v18)
  {
    CFRelease(v18);
  }

  if (!v30)
  {
    if (*(DerivedStorage + 336) && *v10 == *(DerivedStorage + 8600))
    {
      segPumpSendPlaylistUpdateNotification(DerivedStorage);
    }

    if (!*(v10 + 538) || v7)
    {
      if (v7 == 1)
      {
        segPumpResetConnectionByPreservingConnectionStats(DerivedStorage, v10 + 408);
        v31 = OUTLINED_FUNCTION_177();
        if (!segPumpPostIndexFileRequest(v31, v32, 0, 0))
        {
          v33 = OUTLINED_FUNCTION_177();
          segPumpAppendErrorLogEntryWithCFError(v33, v34, v35, v36, 1, 3);
        }

        goto LABEL_91;
      }
    }

    else if (v67)
    {
      v7 = 6;
    }

    else
    {
      OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_156_0();
      segPumpCopyIndexFileFromCache();
      v38 = *(v10 + 520);
      if (!v37 && v38)
      {
        OUTLINED_FUNCTION_408_0();
        OUTLINED_FUNCTION_186();
        segPumpParseIndexFile();
      }

      if (v37 == 0 && v38 != 0)
      {
        v7 = 0;
      }

      else
      {
        v7 = 6;
      }
    }

    Code = CFErrorGetCode(cf);
    v40 = CFErrorGetCode(cf);
    if (Code == -17633 && v7 == 3)
    {
      OUTLINED_FUNCTION_114_1();
      v50 = OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_214_1(v50, v51, v52, v53, v54, v55, v56, v57, v65, SHIDWORD(v65));
LABEL_89:
      v58 = OUTLINED_FUNCTION_177();
      segPumpSendIndexFileRequest(v58);
      goto LABEL_91;
    }

    if (v40 == -15416)
    {
      if (v7 == 3)
      {
        v42 = 3;
      }

      else
      {
        v42 = 1;
      }

      v66 = v42;
      OUTLINED_FUNCTION_613();
      OUTLINED_FUNCTION_214_1(v43, v44, v45, -15410, v46, v47, v48, v49, 1, v66);
      if (v7 != 6)
      {
        if (v7 != 3)
        {
          goto LABEL_91;
        }

        goto LABEL_89;
      }

      segPumpSendEndCallbackForAllActiveStreams();
    }

    else
    {
      segPumpHandleCommonNetworkError();
    }
  }

LABEL_91:
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_209_1();
}

uint64_t segPumpRTCReportingUpdatePreLTKUStats_HeadersAvailable()
{
  OUTLINED_FUNCTION_369();
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 16);
  result = VTable + 16;
  if (*(v4 + 40))
  {
    v5 = OUTLINED_FUNCTION_279_1();
    result = v6(v1, &v51, &v50, &v49, 0, &v48, 0, &v47, v5);
    if (v51 >= 1)
    {
      if (*(v0 + 9232))
      {
        v7 = OUTLINED_FUNCTION_355_1();
        v8 = *(v7 + 16);
        result = v7 + 16;
        if (*(v8 + 32))
        {
          v9 = OUTLINED_FUNCTION_171();
          result = v10(v9);
        }

        if (*(v0 + 9232))
        {
          v11 = CMBaseObjectGetVTable();
          v12 = *(v11 + 16);
          result = v11 + 16;
          if (*(v12 + 32))
          {
            v13 = OUTLINED_FUNCTION_171();
            result = v14(v13);
          }
        }
      }
    }
  }

  if (v50 >= 1 && *(v0 + 9232))
  {
    v15 = OUTLINED_FUNCTION_355_1();
    v16 = *(v15 + 16);
    result = v15 + 16;
    if (*(v16 + 32))
    {
      v17 = OUTLINED_FUNCTION_171();
      result = v18(v17);
    }

    if (*(v0 + 9232))
    {
      v19 = CMBaseObjectGetVTable();
      v20 = *(v19 + 16);
      result = v19 + 16;
      if (*(v20 + 32))
      {
        v21 = OUTLINED_FUNCTION_171();
        result = v22(v21);
      }
    }
  }

  if (v49 >= 1 && *(v0 + 9232))
  {
    v23 = OUTLINED_FUNCTION_355_1();
    v24 = *(v23 + 16);
    result = v23 + 16;
    if (*(v24 + 32))
    {
      v25 = OUTLINED_FUNCTION_171();
      result = v26(v25);
    }

    if (*(v0 + 9232))
    {
      v27 = CMBaseObjectGetVTable();
      v28 = *(v27 + 16);
      result = v27 + 16;
      if (*(v28 + 32))
      {
        v29 = OUTLINED_FUNCTION_171();
        result = v30(v29);
      }
    }
  }

  if (v48 >= 1 && *(v0 + 9232))
  {
    v31 = OUTLINED_FUNCTION_355_1();
    v32 = *(v31 + 16);
    result = v31 + 16;
    if (*(v32 + 32))
    {
      v33 = OUTLINED_FUNCTION_171();
      result = v34(v33);
    }

    if (*(v0 + 9232))
    {
      v35 = CMBaseObjectGetVTable();
      v36 = *(v35 + 16);
      result = v35 + 16;
      if (*(v36 + 32))
      {
        v37 = OUTLINED_FUNCTION_171();
        result = v38(v37);
      }
    }
  }

  if (v47 >= 1 && *(v0 + 9232))
  {
    v39 = OUTLINED_FUNCTION_355_1();
    v40 = *(v39 + 16);
    result = v39 + 16;
    if (*(v40 + 32))
    {
      v41 = OUTLINED_FUNCTION_171();
      result = v42(v41);
    }

    if (*(v0 + 9232))
    {
      v43 = CMBaseObjectGetVTable();
      v44 = *(v43 + 16);
      result = v43 + 16;
      if (*(v44 + 32))
      {
        v45 = OUTLINED_FUNCTION_298();
        return v46(v45);
      }
    }
  }

  return result;
}

void segPumpCheckAndUpdateLowLatencyServerCompliance()
{
  OUTLINED_FUNCTION_369();
  if (*(v3 + 8) && *(v0 + 16) <= 0.0)
  {
    return;
  }

  if (v1)
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_200_1();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v4 = OUTLINED_FUNCTION_515();
      if (!v5(v4))
      {
        if (dword_1EAF16A30)
        {
          OUTLINED_FUNCTION_362_1();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v7 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          if (OUTLINED_FUNCTION_124_0(v7))
          {
            OUTLINED_FUNCTION_253_1();
            OUTLINED_FUNCTION_53_0();
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_65();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_345_0();
        }

        *(v0 + 338) = 1;
        return;
      }
    }

    if (segPumpIsProtocolUsedByRequest(v1))
    {
      *(v0 + 338) = 1;
LABEL_16:
      if (!*(v0 + 340) && FigNetworkInterfaceReporterECNRefused(*(v0 + 9312)) && FigNetworkInterfaceReporterGetInterfaceType(*(v0 + 9312)))
      {
        *(v0 + 341) = 1;
      }

      if (!FigNetworkInterfaceReporterDoesSupportSACK(*(v0 + 9312)))
      {
        FigNetworkInterfaceReporterGetInterfaceType(*(v0 + 9312));
      }

      return;
    }

    if (!segPumpIsProtocolUsedByRequest(v1) || !*(v0 + 338))
    {
      *(v0 + 338) = 0;
      return;
    }

    v11 = segPumpCheckPriorityHeaderLowLatencyServerCompliance();
    *(v0 + 338) = v11;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v2 && (Value = CFDictionaryGetValue(v2, *MEMORY[0x1E69615E8])) != 0)
    {
      v9 = Value;
      v10 = 1;
      if (CFStringCompare(Value, @"h2", 1uLL))
      {
        v10 = CFStringCompare(v9, @"h3", 1uLL) == kCFCompareEqualTo;
      }
    }

    else
    {
      v10 = 1;
    }

    *(v0 + 338) = v10;
  }
}

void segPumpParseIndexFile()
{
  OUTLINED_FUNCTION_193();
  v655 = v2;
  v657 = v1;
  v4 = v3;
  LODWORD(v651) = v5;
  v7 = v6;
  v9 = v8;
  v10 = v0;
  v12 = v11;
  v687 = *MEMORY[0x1E69E9840];
  v13 = v11 + 0x2000;
  HIDWORD(v678.info) = 0;
  v14 = (v0 + 48);
  StartOffset = !*(v0 + 48) && !*(v0 + 56) && *v0 == 0;
  v677 = 0;
  v678.isa = 0;
  v675 = 0;
  valuePtr = 0;
  *(v0 + 860) = 1;
  v16 = OUTLINED_FUNCTION_266();
  segPumpStreamUpdateIndexExpectedArrival(v16, v17);
  v18 = "segPumpParseIndexFile";
  v668 = v14;
  v669 = v13;
  if (CMBlockBufferGetDataLength(*(v10 + 520)) <= 1)
  {
    OUTLINED_FUNCTION_126_1();
    OUTLINED_FUNCTION_129_1();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v27 = OUTLINED_FUNCTION_444_1(os_log_and_send_and_compose_flags_and_os_log_type, v20, v21, v22, v23, v24, v25, v26, v612, v617, v621, v625, v629, v632, v635, v637, message, v642, v647, v651, v653, v655, v657, v659, v662, v665, v14, v13, v670, v673[0], v673[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
    if (OUTLINED_FUNCTION_109_0(v27))
    {
      if (v12)
      {
        OUTLINED_FUNCTION_164_1();
      }

      LODWORD(v678.data) = 136315650;
      *(&v678.data + 4) = "segPumpParseIndexFile";
      WORD2(v678.length) = 2114;
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_117();
      OUTLINED_FUNCTION_11_1();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_524();
    if (!*(v10 + 820))
    {
      OUTLINED_FUNCTION_114_1();
      v128 = OUTLINED_FUNCTION_266();
      OUTLINED_FUNCTION_214_1(v128, v129, v130, -12887, v131, v132, v133, v134, v613, SHIDWORD(v613));
    }

    HasEndTag = *(v10 + 520);
    if (HasEndTag)
    {
      CFRelease(HasEndTag);
      *(v10 + 520) = 0;
    }

    v38 = *(v10 + 820) + 1;
    *(v10 + 820) = v38;
    if (v38 >= 3)
    {
      OUTLINED_FUNCTION_126_1();
      OUTLINED_FUNCTION_129_1();
      v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v47 = OUTLINED_FUNCTION_444_1(v39, v40, v41, v42, v43, v44, v45, v46, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657, v660, v663, v665, v668, v669, v671, v673[0], v673[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
      if (OUTLINED_FUNCTION_109_0(v47))
      {
        if (v12)
        {
          OUTLINED_FUNCTION_164_1();
        }

        LODWORD(v678.data) = 136315906;
        *(&v678.data + 4) = "segPumpParseIndexFile";
        WORD2(v678.length) = 2114;
        OUTLINED_FUNCTION_5_1();
        *v681 = 1024;
        *&v681[2] = v48;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_11_1();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_418_1();
      OUTLINED_FUNCTION_16();
      v75 = OUTLINED_FUNCTION_524();
      if (*(v12 + 8328))
      {
        v139 = OUTLINED_FUNCTION_57_0(v75, v76, v77, v78, @"CoreMediaErrorDomain", @"More than 2 empty playlists in a row.", v79, v80, v614, v619, v623, v627, v631, v634, v636, v638, messageb, v644, v649, v652, v654, v656, v658);
        segPumpHandleIndexFileNetworkError(v139);
      }

      else
      {
        OUTLINED_FUNCTION_44_1();
        FigSignalErrorAtGM();
      }

      LOBYTE(v18) = 0;
      v664 = 0;
      v49 = 0;
      goto LABEL_680;
    }

    v49 = 0;
    v664 = 0;
    v50 = 0;
    LODWORD(v18) = 0;
    v51 = 0;
    LODWORD(v671) = 0;
LABEL_558:
    if ((v678.info & 0x300000000) != 0)
    {
      goto LABEL_559;
    }

    HasEndTag = *(v10 + 56);
    if (!HasEndTag)
    {
      goto LABEL_559;
    }

    HasEndTag = FigMediaPlaylistHasEndTag(HasEndTag);
    if (HasEndTag)
    {
      goto LABEL_559;
    }

    if (*(v10 + 866))
    {
      v51 = 1;
    }

    ++*(v10 + 384);
    if (dword_1EAF16A30)
    {
      HIDWORD(v651) = v18;
      StartOffset = v49;
      OUTLINED_FUNCTION_126_1();
      v510 = OUTLINED_FUNCTION_123_1();
      v518 = OUTLINED_FUNCTION_51_1(v510, v511, v512, v513, v514, v515, v516, v517, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657, v660, v664, v665, v668, v669, v671, v673[0], v673[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
      if (OUTLINED_FUNCTION_16_1(v518))
      {
        if (v12)
        {
          OUTLINED_FUNCTION_164_1();
        }

        OUTLINED_FUNCTION_174_1();
        LODWORD(v678.data) = 136316162;
        *(&v678.data + 4) = v519;
        WORD2(v678.length) = 2114;
        OUTLINED_FUNCTION_5_1();
        *v681 = v520;
        *&v681[2] = v521;
        *&v681[10] = 1024;
        *&v681[12] = v522;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_11_1();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_204_1();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0();
      LODWORD(v18) = HIDWORD(v651);
    }

    HasEndTag = *(v10 + 56);
    if (!HasEndTag)
    {
      goto LABEL_559;
    }

    if (*(v12 + 336))
    {
      goto LABEL_559;
    }

    if (*(v10 + 1056) - *(v10 + 1064) < 1500000000 * *(v12 + 8))
    {
      goto LABEL_559;
    }

    HasEndTag = FigMediaPlaylistHasEndTag(HasEndTag);
    if (HasEndTag)
    {
      goto LABEL_559;
    }

    v585 = OUTLINED_FUNCTION_57_0(HasEndTag, v30, v31, v32, @"CoreMediaErrorDomain", @"Playlist File unchanged for longer than 1.5 * target duration", v35, v36, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657);
    HasEndTag = segPumpHandleIndexFileNetworkError(v585);
    if (!HasEndTag)
    {
      goto LABEL_559;
    }

    v14 = v668;
    goto LABEL_616;
  }

  *(v10 + 820) = 0;
  v28 = *(v12 + 8856);
  v643 = v4;
  LODWORD(v665) = v7;
  if (v28)
  {
    Count = CFArrayGetCount(v28);
  }

  else
  {
    Count = 0;
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (FigCFHTTPCopyQueryParamsAsDict(*(v10 + 16), &v675))
  {
    goto LABEL_666;
  }

  v660 = Count;
  messagea = v9;
  OUTLINED_FUNCTION_319_1();
  v53 = (v10 + 56);
  v624 = *(v12 + 8344);
  v628 = v675;
  v615 = v54;
  v620 = *(v12 + 8568);
  v671 = v54;
  OUTLINED_FUNCTION_135_1();
  v63 = FigStreamPlaylistParse(v55, v56, v57, v58, v59, v60, v61, v62, v615, v620, v624, v628, v14, (v10 + 56));
  if (v63)
  {
LABEL_24:
    v64 = 0;
    goto LABEL_25;
  }

  if (!*v53)
  {
    v64 = 0;
    goto LABEL_53;
  }

  v65 = *(v12 + 9760);
  if (v65)
  {
    v66 = 0;
    v67 = 0;
    v68 = v12 + 392;
    do
    {
      if (*(*v68 + 16))
      {
        v69 = *(*v68 + 56);
        if (!v69)
        {
          break;
        }

        MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v69);
        if (!MediaSegmentSpecifiers || CFArrayGetCount(MediaSegmentSpecifiers) < 1)
        {
          break;
        }
      }

      v66 = v67 > 1;
      v68 += 16;
      ++v67;
    }

    while (v67 != 3);
    if (v66)
    {
      v18 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v18 = MEMORY[0x1E695E4C0];
    }

    v71 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v71)
    {
      goto LABEL_164;
    }

    v71(v65, @"AfmfpbProperty_AllActiveStreamHadMediaFiles", *v18);
    v14 = v668;
    OUTLINED_FUNCTION_319_1();
    if (v72)
    {
      goto LABEL_666;
    }
  }

  if (!*(v12 + 8328))
  {
    goto LABEL_24;
  }

  v73 = *v10 == 1 || *v10 == *(v12 + 8600);
  if (!v73)
  {
    goto LABEL_24;
  }

  if (FigMediaPlaylistGetPlaylistType(*v53) == 2)
  {
    v74 = OUTLINED_FUNCTION_249_1();
    v64 = FigMediaPlaylistUtilitySetFigAlternateBitrateCurve(v74, *(v10 + 56), *v10);
  }

  else
  {
    v64 = 0;
  }

  v140 = *(v12 + 9760);
  if (v140)
  {
    if (*v10 == *(v12 + 8600))
    {
      v141 = kFigAlternateMonitorForPlaybackBitrateProperty_MainStreamPlaylist;
    }

    else
    {
      v141 = kFigAlternateMonitorForPlaybackBitrateProperty_AudioStreamPlaylist;
    }

    v142 = *(v10 + 56);
    v143 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v143)
    {
      goto LABEL_164;
    }

    if (!v143(v140, *v141, v142))
    {
      v144 = *(v12 + 9760);
      if (segPumpConnectedInterfaceIsWWAN(v12))
      {
        v145 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v145 = MEMORY[0x1E695E4C0];
      }

      v146 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      v14 = v668;
      if (v146)
      {
        v147 = v146(v144, @"AfmfpbProperty_ConnectedInterfaceIsWWAN", *v145);
        v18 = 0;
        if (!v147)
        {
          v64 = 0;
          OUTLINED_FUNCTION_319_1();
          goto LABEL_25;
        }

        goto LABEL_667;
      }

LABEL_164:
      LOBYTE(v18) = 0;
      v664 = 0;
      v49 = 0;
LABEL_165:
      v4 = v643;
      goto LABEL_680;
    }

LABEL_666:
    LOBYTE(v18) = 0;
LABEL_667:
    v664 = 0;
    v49 = 0;
    goto LABEL_165;
  }

LABEL_25:
  if (*v53)
  {
    v677 = FigMediaPlaylistGetMessagingDelayTime(*v53) / v18;
  }

LABEL_53:
  valuePtr = (FigGetUpTimeNanoseconds() - UpTimeNanoseconds) / v18;
  if (!v669[1088])
  {
    v669[1088] = 1;
    if (*(v12 + 9232))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_193_0();
        OUTLINED_FUNCTION_333();
        v112();
      }

      if (*(v12 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_193_0();
        OUTLINED_FUNCTION_333();
        v113();
      }
    }
  }

  v81 = *MEMORY[0x1E695E480];
  v648 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  v87 = CFNumberCreate(v81, kCFNumberSInt64Type, &v677);
  if (*(v12 + 9232))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 120))
    {
      v88 = OUTLINED_FUNCTION_193_0();
      v89(v88);
    }

    if (*(v12 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 120))
    {
      v90 = OUTLINED_FUNCTION_193_0();
      v91(v90);
    }
  }

  v664 = v87;
  if (StartOffset && *v53 && FigMediaPlaylistGetXPCClientObject(*v53))
  {
    FigMediaPlaylistGetXPCClientObject(*v53);
    LOBYTE(v18) = 0;
    if (FigStartForwardingMediaServicesProcessDeathNotification())
    {
      v4 = v643;
      goto LABEL_669;
    }

    v64 = 0;
  }

  if (*v671)
  {
    v92 = CFArrayGetCount(*v671);
  }

  else
  {
    v92 = 0;
  }

  v93 = BYTE4(v678.info);
  HIDWORD(v651) = BYTE4(v678.info) & 1;
  if (!v63)
  {
    if (*v53)
    {
      if ((v678.info & 0x100000000) == 0)
      {
        v94 = OUTLINED_FUNCTION_266();
        v64 = segPumpSetupBlockingReload(v94, v95, v96, v97, v98, v99, v100, v101, v613, v618, v622, SWORD2(v622), SBYTE6(v622), HIBYTE(v622), v626, SHIDWORD(v626), v630, v633, v635, v637, messagea, v643, v648, SHIDWORD(v648), v651, 0, v653, SBYTE4(v653), v655, v657, v660, v87, v665, v668, v669, v671, *v673, type, v675, valuePtr, v677, v678.isa, v678.info, v678.data, v678.length, v679, v680, *v681, *&v681[8], *&v681[16], v682, v683.value, *&v683.timescale, v683.epoch, v684, v685, v686);
        if (v64)
        {
          goto LABEL_222;
        }
      }
    }
  }

  if (!*(v12 + 337))
  {
    v102 = OUTLINED_FUNCTION_266();
    segPumpStreamCancelPreloadReadAndResetData(v102, v103);
    v104 = OUTLINED_FUNCTION_266();
    segPumpStreamCancelPreloadMapReadAndResetData(v104, v105);
  }

  if (v63)
  {
    v111 = (v93 & 1) == 0;
LABEL_95:
    HIDWORD(v637) = v111;
    goto LABEL_96;
  }

  if (*v53 && FigMediaPlaylistHasSkipDeltaBoundary(*v53))
  {
    *(v10 + 876) = 1;
  }

  if ((v93 & 1) == 0)
  {
    if (*v53)
    {
      if (FigMediaPlaylistGetPlaylistType(*v53) == 2 && FigMediaPlaylistGetPlaylistActiveDurationSecs(*v53) < 300.0)
      {
        v106 = *(v12 + 96);
        v107 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v107)
        {
          goto LABEL_222;
        }

        v108 = 0x1F0B63558;
        v109 = *MEMORY[0x1E695E4C0];
        v110 = v106;
        goto LABEL_490;
      }

      if (FigMediaPlaylistGetPlaylistType(*v53) != 2)
      {
        v135 = *(v12 + 96);
        v136 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v136)
        {
          goto LABEL_222;
        }

        v137 = *MEMORY[0x1E695E4C0];
        if (v136(v135, 0x1F0B63558, *MEMORY[0x1E695E4C0]))
        {
          goto LABEL_222;
        }

        v138 = *(v12 + 96);
        v107 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v107)
        {
          goto LABEL_222;
        }

        v108 = 0x1F0B63578;
        v110 = v138;
        v109 = v137;
LABEL_490:
        v64 = v107(v110, v108, v109);
        if (v64)
        {
          goto LABEL_222;
        }

        goto LABEL_94;
      }
    }

    v64 = 0;
LABEL_94:
    v111 = 1;
    goto LABEL_95;
  }

  HIDWORD(v637) = 0;
LABEL_96:
  if (StartOffset)
  {
    v114 = *(v12 + 9232);
    if (v114)
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_165_1();
        v115(v114);
      }
    }
  }

  v116 = *(v10 + 1080);
  if (v116 > *(v12 + 9256))
  {
    *(v12 + 9256) = v116;
    v117 = *(v12 + 9232);
    if (v117)
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_165_1();
        v118(v117);
      }
    }
  }

  if (v63)
  {
    v14 = v668;
    goto LABEL_182;
  }

  v14 = v668;
  if (*v53 || *v668)
  {
    if (messagea && v665)
    {
      v119 = FigCFHTTPCreateURLString(*(v10 + 16));
      DataLength = CMBlockBufferGetDataLength(*(v10 + 520));
      v64 = FigCFHTTPCreateCacheHeaders(v119, DataLength, messagea, 0, &v678);
      if (v119)
      {
        CFRelease(v119);
      }

      if (v64)
      {
        goto LABEL_222;
      }
    }

    if ((v637 & 0x100000000) != 0)
    {
      v121 = *(v12 + 296);
      if (!v121)
      {
        if (!*v53)
        {
          goto LABEL_167;
        }

        if (!FigMediaPlaylistHasEndTag(*v53))
        {
          goto LABEL_167;
        }

        v122 = segPumpStreamHasMediaFiles(v10);
        if (!v665 || !v122)
        {
          goto LABEL_167;
        }

LABEL_127:
        if (segPumpEnsurePlaylistCache(v12))
        {
          goto LABEL_222;
        }

        if (HIDWORD(v651))
        {
          v64 = FigStreamingCacheSetMasterPlaylist(*(v12 + 304), *(v10 + 520), v678.isa);
          if (v64)
          {
            LOBYTE(v18) = 1;
            v4 = v643;
            v49 = v648;
            goto LABEL_679;
          }
        }

        else if (!*(v10 + 64) && (OUTLINED_FUNCTION_515(), segPumpCreateCacheForStream()) || (v64 = segPumpSetPlaylistForStreamCache(*(v12 + 304), v10, *(v10 + 520), v678.isa)) != 0)
        {
          v4 = v643;
          v49 = v648;
LABEL_294:
          v285 = OUTLINED_FUNCTION_266();
          segPumpSetupCommonCryptKeyData(v285);
          LOBYTE(v18) = 0;
          goto LABEL_680;
        }

        goto LABEL_167;
      }
    }

    else
    {
      if (*v668)
      {
        v123 = *(v12 + 8344);
        PlaylistVariables = FigMultivariantPlaylistGetPlaylistVariables(*v668);
        *(v12 + 8344) = PlaylistVariables;
        if (PlaylistVariables)
        {
          CFRetain(PlaylistVariables);
        }

        if (v123)
        {
          CFRelease(v123);
        }
      }

      v121 = *(v12 + 296);
      if (!v121)
      {
        if (!v665)
        {
          goto LABEL_167;
        }

        goto LABEL_127;
      }
    }

    v125 = (v12 + 296);
    v126 = StartOffset ^ 1;
    if (!v665)
    {
      v126 = 1;
    }

    if ((v126 & 1) == 0)
    {
      v64 = FigStreamingCacheSetMasterPlaylist(v121, *(v10 + 520), v678.isa);
      if (v64)
      {
        goto LABEL_222;
      }
    }

    if (!*v53)
    {
      goto LABEL_167;
    }

    if (!FigMediaPlaylistHasEndTag(*v53))
    {
      goto LABEL_167;
    }

    if (!*v53)
    {
      goto LABEL_167;
    }

    v127 = FigMediaPlaylistGetMediaSegmentSpecifiers(*v53);
    if (!v127 || CFArrayGetCount(v127) < 1 || !*v125)
    {
      goto LABEL_167;
    }

    if (v669[704])
    {
      if (!v669[20] || *(v12 + 392) != v10)
      {
LABEL_167:
        OUTLINED_FUNCTION_277_0();
        if (v73)
        {
          if (*v53)
          {
            v148 = FigMediaPlaylistGetMediaSegmentSpecifiers(*v53);
            if (v148)
            {
              if (CFArrayGetCount(v148) >= 1)
              {
                FigMediaPlaylistGetMediaSegmentSpecifiers(*v53);
                FirstValue = FigCFArrayGetFirstValue();
                StartOffset = FirstValue;
                if (*(v12 + 8608))
                {
                  v150 = *(v10 + 24);
                  v666 = *(v10 + 16);
                  MediaFilePrivateData = segPumpGetMediaFilePrivateData(FirstValue);
                  segPumpEnsureMediaSegmentURLs(StartOffset, v666, v150);
                  if (MediaFilePrivateData[3])
                  {
                    v667 = *(v12 + 8608);
                    v152 = *(v10 + 16);
                    v653 = *(v10 + 24);
                    v153 = segPumpGetMediaFilePrivateData(StartOffset);
                    segPumpEnsureMediaSegmentURLs(StartOffset, v152, v653);
                    if (!FigCFHTTPURLHostEqual(v667, v153[3]))
                    {
                      FigReportingAgentStatsAddToCountValue(*(v12 + 9232));
                    }
                  }

                  v665 = *(v12 + 8608);
                }

                else
                {
                  v665 = 0;
                }

                v155 = *(v10 + 16);
                v154 = *(v10 + 24);
                v156 = segPumpGetMediaFilePrivateData(StartOffset);
                segPumpEnsureMediaSegmentURLs(StartOffset, v155, v154);
                v157 = v156[3];
                *(v12 + 8608) = v157;
                if (v157)
                {
                  CFRetain(v157);
                }

                v14 = v668;
                if (v665)
                {
                  CFRelease(v665);
                }
              }
            }
          }
        }

        goto LABEL_182;
      }
    }

    else if (!v669[21])
    {
      goto LABEL_167;
    }

    if (segPumpEnsureDiskBackedCacheForStreamPossiblyEndingStream() || *(v10 + 1152))
    {
      goto LABEL_222;
    }

    if (v665 && *(v10 + 64))
    {
      v64 = segPumpSetPlaylistForStreamCache(*v125, v10, *(v10 + 520), v678.isa);
      if (v64)
      {
        goto LABEL_222;
      }
    }

    else
    {
      v64 = 0;
    }

    goto LABEL_167;
  }

LABEL_182:
  v158 = *(v10 + 520);
  if (v158)
  {
    CFRelease(v158);
    *(v10 + 520) = 0;
  }

  if (v63)
  {
    goto LABEL_200;
  }

  if (!*v10)
  {
    v159 = *v53;
    if (!*v53)
    {
LABEL_227:
      if (*v14)
      {
        v215 = 0;
        v216 = 1;
        if (v64)
        {
          goto LABEL_222;
        }

        goto LABEL_231;
      }

      OUTLINED_FUNCTION_44_1();
      FigSignalErrorAtGM();
LABEL_222:
      v4 = v643;
LABEL_223:
      v49 = v648;
      goto LABEL_292;
    }

    for (i = 0; ; ++i)
    {
      ContentKeySpecifiers = FigMediaPlaylistGetContentKeySpecifiers(v159);
      if (ContentKeySpecifiers)
      {
        ContentKeySpecifiers = CFArrayGetCount(ContentKeySpecifiers);
      }

      if (i >= ContentKeySpecifiers)
      {
        goto LABEL_226;
      }

      v162 = FigMediaPlaylistGetContentKeySpecifiers(*v53);
      ValueAtIndex = CFArrayGetValueAtIndex(v162, i);
      if (FigContentKeySpecifierGetKeySystem(ValueAtIndex) == 1 && (FigContentKeySpecifierGetEncryptionMethod(ValueAtIndex) == 2 || FigContentKeySpecifierGetEncryptionMethod(ValueAtIndex) == 1))
      {
        break;
      }

      v159 = *v53;
    }

    v164 = *(v12 + 8328);
    if (v164)
    {
      v165 = *(v164 + 8);
      if (v165)
      {
        FigAlternateSetIsFairPlayStreamingVideoAlternate(v165, 1);
        v166 = OUTLINED_FUNCTION_249_1();
        if (!FigAlternateHasValidCodecs(v166) || (v167 = OUTLINED_FUNCTION_249_1(), !FigAlternateWillPlayIfFairplayProtected(v167)))
        {
          OUTLINED_FUNCTION_44_1();
          v158 = FigSignalErrorAtGM();
          v63 = v158;
LABEL_200:
          if ((v63 & 0xFFFFFFFB) == 0xFFFFCE9A)
          {
            v49 = v648;
            if (v63 != -12646)
            {
              v168 = OUTLINED_FUNCTION_266();
              OUTLINED_FUNCTION_214_1(v168, v169, v170, v171, v172, v173, v174, v175, 1, 2);
            }

            if (*(v12 + 8280))
            {
              OUTLINED_FUNCTION_126_1();
              OUTLINED_FUNCTION_129_1();
              v185 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v186 = os_log_type_enabled(v185, HIBYTE(type));
              if (OUTLINED_FUNCTION_28_1(v186))
              {
                OUTLINED_FUNCTION_76_1();
                OUTLINED_FUNCTION_174_1();
                LODWORD(v678.data) = 136315906;
                *(&v678.data + 4) = "segPumpParseIndexFile";
                WORD2(v678.length) = 2114;
                OUTLINED_FUNCTION_5_1();
                *v681 = v197;
                *&v681[2] = v198;
                OUTLINED_FUNCTION_117();
                OUTLINED_FUNCTION_11_1();
                _os_log_send_and_compose_impl();
              }

              LODWORD(v18) = HIDWORD(v651);
              OUTLINED_FUNCTION_16();
              v199 = OUTLINED_FUNCTION_417();
              v205 = OUTLINED_FUNCTION_57_0(v199, v200, v201, v202, @"CoreMediaErrorDomain", @"playlist parse error.", v203, v204, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657);
              segPumpHandleIndexFileNetworkError(v205);
              v4 = v645;
              v14 = v668;
              goto LABEL_293;
            }

            v4 = v643;
LABEL_292:
            LODWORD(v18) = HIDWORD(v651);
            goto LABEL_293;
          }

          if (v63 == -17633)
          {
            if (*(v10 + 876))
            {
              *(v10 + 876) = 0;
              v206 = OUTLINED_FUNCTION_57_0(v158, v82, v83, v84, @"CoreMediaErrorDomain", @"Could not apply Playlist delta", v85, v86, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657);
              segPumpHandleIndexFileNetworkError(v206);
            }

            else
            {
              OUTLINED_FUNCTION_360_1();
              v187 = OUTLINED_FUNCTION_266();
              OUTLINED_FUNCTION_214_1(v187, v188, v189, -17633, v190, v191, v192, v193, v613, SHIDWORD(v613));
              segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(*v12, 4294949663);
            }

            goto LABEL_222;
          }

          if (v63 == -12885)
          {
            if (dword_1EAF16A30)
            {
              OUTLINED_FUNCTION_126_1();
              v176 = OUTLINED_FUNCTION_123_1();
              v184 = OUTLINED_FUNCTION_51_1(v176, v177, v178, v179, v180, v181, v182, v183, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657, v660, v664, v665, v668, v669, v671, v673[0], v673[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
              if (OUTLINED_FUNCTION_16_1(v184))
              {
                OUTLINED_FUNCTION_76_1();
                OUTLINED_FUNCTION_174_1();
                LODWORD(v678.data) = 136315906;
                *(&v678.data + 4) = "segPumpParseIndexFile";
                WORD2(v678.length) = 2114;
                OUTLINED_FUNCTION_5_1();
                *v681 = v363;
                *&v681[2] = v364;
                OUTLINED_FUNCTION_117();
                OUTLINED_FUNCTION_11_1();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_204_1();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_238_0();
            }

            OUTLINED_FUNCTION_277_0();
            v4 = v643;
            if (v73)
            {
              LODWORD(v18) = HIDWORD(v651);
              if (*(v10 + 866) && (v365 = *v53) != 0)
              {
                PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(v365);
                *(v10 + 96) = PlaylistActiveDurationSecs;
                *(v12 + 352) = PlaylistActiveDurationSecs;
                v51 = 1;
              }

              else
              {
                v51 = 0;
              }

              v49 = v648;
            }

            else
            {
              v51 = 0;
              v49 = v648;
              LODWORD(v18) = HIDWORD(v651);
            }

            v425 = OUTLINED_FUNCTION_57_0(v365, v366, v367, v368, @"CoreMediaErrorDomain", @"unsupported crypt format.", v369, v370, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657);
            HasEndTag = segPumpHandleIndexFileNetworkError(v425);
            LODWORD(v671) = 0;
            v50 = 1;
            goto LABEL_558;
          }

          if (v63)
          {
            if (*v671 && v660 < v92)
            {
              v194 = CFArrayGetValueAtIndex(*v671, v92 - 1);
              if (v194)
              {
                v195 = v194;
                AllocatorForMedia = FigGetAllocatorForMedia();
                FigErrorLogSetSeverity(AllocatorForMedia, v195, 1);
              }
            }

            else
            {
              OUTLINED_FUNCTION_360_1();
              v207 = OUTLINED_FUNCTION_266();
              OUTLINED_FUNCTION_214_1(v207, v208, v209, v210, v211, v212, v213, v214, v613, SHIDWORD(v613));
            }

            goto LABEL_222;
          }
        }
      }
    }
  }

LABEL_226:
  v215 = *v53;
  if (!*v53)
  {
    goto LABEL_227;
  }

  v216 = 0;
  if (v64)
  {
    goto LABEL_222;
  }

LABEL_231:
  if (v669[704])
  {
    if ((v216 & 1) != 0 || (v228 = FigMediaPlaylistGetMediaSegmentSpecifiers(v215)) == 0 || CFArrayGetCount(v228) <= 0)
    {
      OUTLINED_FUNCTION_126_1();
      OUTLINED_FUNCTION_129_1();
      v229 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v237 = OUTLINED_FUNCTION_51_1(v229, v230, v231, v232, v233, v234, v235, v236, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657, v660, v664, v665, v668, v669, v671, v673[0], v673[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
      if (OUTLINED_FUNCTION_16_1(v237))
      {
        OUTLINED_FUNCTION_76_1();
        LODWORD(v678.data) = 136315650;
        *(&v678.data + 4) = "segPumpParseIndexFile";
        WORD2(v678.length) = 2114;
        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_11_1();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_204_1();
      }

      v4 = v646;
      v49 = *v650;
      OUTLINED_FUNCTION_418_1();
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_238_0();
      OUTLINED_FUNCTION_360_1();
      v278 = OUTLINED_FUNCTION_266();
      OUTLINED_FUNCTION_214_1(v278, v279, v280, -12642, v281, v282, v283, v284, v616, SHIDWORD(v616));
      OUTLINED_FUNCTION_44_1();
      FigSignalErrorAtGM();
      goto LABEL_292;
    }
  }

  if (*(v10 + 861))
  {
    if (*(v10 + 864))
    {
      v217 = *(v12 + 16 * *(v12 + 8600) + 392);
      if (*(v217 + 56))
      {
        v683.value = 0;
        v678.data = 0;
        NextMediaFileWithDate = segPumpGetNextMediaFileWithDate(*v53, &v683.value);
        v219 = segPumpGetNextMediaFileWithDate(*(v217 + 56), &v678.data);
        if (NextMediaFileWithDate)
        {
          v220 = v219;
          if (v219)
          {
            DateStamp = FigMediaSegmentSpecifierGetDateStamp(NextMediaFileWithDate);
            v222 = MEMORY[0x19A8CCD90](DateStamp);
            v223 = FigMediaSegmentSpecifierGetDateStamp(v220);
            v224 = MEMORY[0x19A8CCD90](v223);
            *(v10 + 88) = *(v217 + 88) + v222 - *&v683.value - (v224 - *&v678.data);
            *(v10 + 928) = 0;
          }
        }
      }
    }
  }

  v225 = FigGetUpTimeNanoseconds();
  if (!*v53)
  {
    LODWORD(v653) = 0;
    LODWORD(v671) = 0;
    v226 = (v10 + 88);
    v227 = *(v10 + 88);
LABEL_251:
    OUTLINED_FUNCTION_415_1();
    v665 = v241;
    goto LABEL_252;
  }

  if (FigMediaPlaylistGetPlaylistActiveDurationSecs(*v53) == 0.0)
  {
    v238 = 0;
  }

  else
  {
    v238 = 1000000000;
  }

  v226 = (v10 + 88);
  v227 = *(v10 + 88);
  v239 = *(v10 + 56);
  if (!v239 || (FigMediaPlaylistGetMediaSegmentSpecifiers(v239), (v240 = FigCFArrayGetFirstValue()) == 0))
  {
    LODWORD(v653) = 0;
    LODWORD(v671) = 0;
    goto LABEL_251;
  }

  v92 = v240;
  v661 = (v10 + 88);
  LODWORD(v671) = 0;
  LODWORD(v637) = 0;
  v653 = (v238 + v225);
  OUTLINED_FUNCTION_415_1();
  v665 = v337;
  do
  {
    NextSegment = FigMediaSegmentSpecifierGetNextSegment(v92);
    segPumpGetMediaFilePrivateData(v92);
    v339 = OUTLINED_FUNCTION_230_1();
    if (FigMediaSegmentSpecifierAreFragmentsExpired(v339))
    {
      PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(v92);
      v341 = 0;
      if (!PartialSegments)
      {
LABEL_366:
        v347 = 0;
        goto LABEL_367;
      }

      while (1)
      {
        v347 = CFArrayGetCount(PartialSegments);
LABEL_367:
        if (v341 >= v347)
        {
          break;
        }

        v342 = OUTLINED_FUNCTION_770();
        StartOffset = CFArrayGetValueAtIndex(v342, v343);
        v344 = *(v10 + 680);
        if (v344)
        {
          while (1)
          {
            v345 = OUTLINED_FUNCTION_178();
            if (segPumpMediaConnectionIncludesMedia(v345, v346, StartOffset))
            {
              break;
            }

            v344 = *v344;
            if (!v344)
            {
              goto LABEL_362;
            }
          }
        }

        else
        {
LABEL_362:
          if (*(v10 + 264) != StartOffset)
          {
            FigMediaPlaylistRemovePartSegmentSpecifier(*v53, v92, StartOffset);
            --v341;
          }
        }

        ++v341;
        if (!PartialSegments)
        {
          goto LABEL_366;
        }
      }
    }

    if (FigMediaSegmentSpecifierIsReadInCurrent(v92))
    {
      if (!FigMediaPlaylistHasEndTag(*v53))
      {
        if (*(v14 + 96))
        {
          *v661 = *v661 - FigMediaSegmentSpecifierGetTimeInSeconds(v92);
          *(v14 + 96) = 0;
        }

        v14[11] = v653;
        OUTLINED_FUNCTION_415_1();
        if (v665 == v348)
        {
          Current = CFAbsoluteTimeGetCurrent();
          v665 = (Current + FigMediaPlaylistGetPlaylistActiveDurationSecs(*v53));
        }

        LODWORD(v671) = 1;
      }

      FigMediaSegmentSpecifierGetPartialSegments(v92);
      if (FigCFArrayGetLastValue())
      {
        LastValue = FigCFArrayGetLastValue();
        if (*(segPumpGetMediaFilePrivateData(LastValue) + 73))
        {
          if (FigMediaSegmentSpecifierGetURLString(v92) && !FigMediaSegmentSpecifierIsFragment(v92) && !*(v14 + 73))
          {
            v351 = OUTLINED_FUNCTION_266();
            segPumpMarkMediaFileAsDelivered(v351, v352, v92);
          }
        }
      }

      goto LABEL_411;
    }

    if (!*(v14 + 96))
    {
      *v661 = FigMediaSegmentSpecifierGetTimeInSeconds(v92) + *v661;
    }

    v353 = *(v10 + 680);
    if (v353)
    {
LABEL_384:
      while (2)
      {
        if (segPumpMediaConnectionIncludesMedia(v10, v353, v92))
        {
          goto LABEL_405;
        }

        v354 = FigMediaSegmentSpecifierGetPartialSegments(v92);
        StartOffset = 0;
        while (1)
        {
          v355 = v354 ? CFArrayGetCount(v354) : 0;
          if (StartOffset >= v355)
          {
            break;
          }

          v356 = CFArrayGetValueAtIndex(v354, StartOffset++);
          if (segPumpMediaConnectionIncludesMedia(v10, v353, v356))
          {
            v353 = *v353;
            if (v353)
            {
              goto LABEL_384;
            }

            goto LABEL_405;
          }
        }

        v353 = *v353;
        if (v353)
        {
          continue;
        }

        break;
      }
    }

    if (*(v10 + 256) != v92 && *(v10 + 264) != v92)
    {
      if (!v669[704])
      {
        v357 = v637;
        if (!*(v14 + 73))
        {
          v357 = 1;
        }

        LODWORD(v637) = v357;
      }

      for (j = *(v10 + 680); j; j = *j)
      {
        if (j[1] == v92)
        {
          v359 = OUTLINED_FUNCTION_177();
          segPumpResetMediaConnection(v359, v360, 1);
        }
      }

      FigMediaPlaylistRemoveMediaSegmentSpecifier(*(v10 + 56), v92);
      *(v10 + 76) = 1;
      goto LABEL_409;
    }

LABEL_405:
    *(v14 + 96) = 1;
    if (FigMediaSegmentSpecifierGetMapSegmentSpecifier(v92))
    {
      MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(v92);
      FigMediaSegmentSpecifierSetIsReadInCurrent(MapSegmentSpecifier, 1);
    }

    if (FigMediaSegmentSpecifierGetContentKeySpecifier(v92))
    {
      ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(v92);
      FigContentKeySpecifierSetIsReadInCurrent(ContentKeySpecifier, 1);
    }

LABEL_409:
    if (FigMediaPlaylistGetPlaylistType(*v53) == 1)
    {
      OUTLINED_FUNCTION_44_1();
      FigSignalErrorAtGM();
      OUTLINED_FUNCTION_360_1();
      v373 = OUTLINED_FUNCTION_266();
      OUTLINED_FUNCTION_214_1(v373, v374, v375, v376, v377, v378, v379, v380, v613, SHIDWORD(v613));
      v4 = v643;
      v14 = v668;
      goto LABEL_223;
    }

    LODWORD(v671) = 1;
LABEL_411:
    v92 = NextSegment;
  }

  while (NextSegment);
  LODWORD(v653) = v637 != 0;
  v14 = v668;
  v226 = (v10 + 88);
LABEL_252:
  segPumpPlaylistRecalculatePumpTimeOffsets(*v53, *v226);
  if ((v637 & 0x100000000) != 0)
  {
    v242 = OUTLINED_FUNCTION_266();
    v243 = segPumpSetupCommonCryptKeyData(v242);
  }

  else
  {
    v243 = segPumpSetupCommonCryptKeyDataForSessionKeys(v12, *v14);
  }

  v660 = v226;
  if (v243)
  {
    goto LABEL_672;
  }

  if (*v53)
  {
    FigMediaPlaylistGetMapSegmentSpecifiers(*v53);
    v244 = FigCFArrayGetFirstValue();
    if (v244)
    {
      v245 = v244;
      do
      {
        FigMediaSegmentSpecifierGetNextSegment(v245);
        v246 = OUTLINED_FUNCTION_127_1();
        if (!FigMediaSegmentSpecifierIsReadInCurrent(v246))
        {
          v247 = *(v10 + 696);
          if (!v247 || (v248 = *(v247 + 8)) == 0 || FigMediaSegmentSpecifierGetType(v248) != 1)
          {
            v683.value = 0;
            v678.data = 0;
            *(segPumpGetMediaFilePrivateData(v245) + 98) = 0;
            if (!segPumpCreateCacheNameFromSegment(v10, v245, &v678.data, &v683))
            {
              if (*(v12 + 296))
              {
                value = v683.value;
                StartOffset = FigMediaSegmentSpecifierGetStartOffset(v245);
                FigMediaSegmentSpecifierGetMediaSequence(v245);
                v250 = OUTLINED_FUNCTION_627();
                v251 = value;
                v14 = v668;
                FigStreamingCacheRemoveMediaMap(v250, v252, v251, StartOffset, v253);
              }

              v254 = FigMediaSegmentSpecifierGetStartOffset(v245);
              FigMediaSegmentSpecifierGetBytesToRead(v245);
              v255 = OUTLINED_FUNCTION_177();
              if (segPumpFindSavedEntry(v255, v256, v254, v257))
              {
                v258 = OUTLINED_FUNCTION_399();
                segPumpFreeSavedEntry(v258, v259);
              }
            }

            if (v678.data)
            {
              CFRelease(v678.data);
            }

            if (v683.value)
            {
              CFRelease(v683.value);
            }

            FigMediaPlaylistRemoveMapSegmentSpecifier(*v53, v245);
          }
        }

        v245 = v92;
      }

      while (v92);
    }
  }

  if (!*(v12 + 296))
  {
    goto LABEL_309;
  }

  if (!*v53)
  {
    goto LABEL_309;
  }

  v260 = FigMediaPlaylistGetMediaSegmentSpecifiers(*v53);
  if (!v260)
  {
    goto LABEL_309;
  }

  if (CFArrayGetCount(v260) < 1)
  {
    goto LABEL_309;
  }

  if (!FigMediaPlaylistHasEndTag(*v53))
  {
    goto LABEL_309;
  }

  FigMediaPlaylistGetMediaSegmentSpecifiers(*v53);
  v261 = FigCFArrayGetFirstValue();
  if (*(segPumpGetMediaFilePrivateData(v261) + 16))
  {
    goto LABEL_309;
  }

  v262 = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(v262, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_44_1();
    v288 = FigSignalErrorAtGM();
    Copy = 0;
    if (!v288)
    {
      goto LABEL_297;
    }

    goto LABEL_306;
  }

  v264 = Mutable;
  v265 = 0;
  v266 = MEMORY[0x1E695E9C0];
  while (2)
  {
    v267 = FigMediaPlaylistGetMediaSegmentSpecifiers(*v53);
    if (v267)
    {
      v267 = CFArrayGetCount(v267);
    }

    if (v265 >= v267)
    {
      v286 = FigGetAllocatorForMedia();
      Copy = CFDictionaryCreateCopy(v286, v264);
      v288 = 0;
      goto LABEL_296;
    }

    v268 = FigMediaPlaylistGetMediaSegmentSpecifiers(*v53);
    v269 = CFArrayGetValueAtIndex(v268, v265);
    StartOffset = segPumpGetMediaFilePrivateData(v269);
    URLString = FigMediaSegmentSpecifierGetURLString(v269);
    v271 = FigMediaSegmentSpecifierGetStartOffset(v269);
    v272 = FigGetAllocatorForMedia();
    v613 = URLString;
    v618 = v271;
    v273 = CFStringCreateWithFormat(v272, 0, @"%@-%lld");
    if (!v273)
    {
      OUTLINED_FUNCTION_44_1();
      v288 = FigSignalErrorAtGM();
      goto LABEL_671;
    }

    v274 = v273;
    if (CFDictionaryGetValue(v264, v273))
    {
LABEL_289:
      FigCFArrayAppendDouble();
      CFRelease(v274);
      ++v265;
      continue;
    }

    break;
  }

  v275 = FigGetAllocatorForMedia();
  v276 = CFArrayCreateMutable(v275, 0, v266);
  if (v276)
  {
    v277 = v276;
    CFDictionarySetValue(v264, v274, v276);
    CFRelease(v277);
    goto LABEL_289;
  }

  OUTLINED_FUNCTION_44_1();
  v288 = FigSignalErrorAtGM();
  CFRelease(v274);
LABEL_671:
  Copy = 0;
LABEL_296:
  CFRelease(v264);
  if (!v288)
  {
LABEL_297:
    for (k = 0; ; ++k)
    {
      v290 = FigMediaPlaylistGetMediaSegmentSpecifiers(*v53);
      if (v290)
      {
        v290 = CFArrayGetCount(v290);
      }

      if (k >= v290)
      {
        v288 = 0;
        goto LABEL_306;
      }

      v291 = FigMediaPlaylistGetMediaSegmentSpecifiers(*v53);
      v292 = CFArrayGetValueAtIndex(v291, k);
      v293 = segPumpGetMediaFilePrivateData(v292);
      StartOffset = FigMediaSegmentSpecifierGetURLString(v292);
      v294 = FigMediaSegmentSpecifierGetStartOffset(v292);
      v295 = FigGetAllocatorForMedia();
      v613 = StartOffset;
      v618 = v294;
      v296 = CFStringCreateWithFormat(v295, 0, @"%@-%lld");
      if (!v296)
      {
        break;
      }

      StartOffset = v296;
      v297 = CFDictionaryGetValue(Copy, v296);
      if (v297)
      {
        v297 = CFRetain(v297);
      }

      v293[16] = v297;
      CFRelease(StartOffset);
    }

    OUTLINED_FUNCTION_44_1();
    v288 = FigSignalErrorAtGM();
  }

LABEL_306:
  v14 = v668;
  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v288)
  {
LABEL_672:
    v4 = v643;
LABEL_653:
    v49 = v648;
    LOBYTE(v18) = BYTE4(v651);
    goto LABEL_680;
  }

LABEL_309:
  v4 = v643;
  if (!v669[19] || (OUTLINED_FUNCTION_335_0(), (v298 & v653) != 1))
  {
    v299 = *v10;
    LODWORD(v18) = HIDWORD(v651);
LABEL_315:
    if (!v299 && v669[705])
    {
      OUTLINED_FUNCTION_336_0(v669, COERCE__INT64(*v660 - v227));
    }

    OUTLINED_FUNCTION_415_1();
    if (v665 != v300)
    {
      segPumpSetMediaFileExpireTimer(v12, v665);
    }

    if (!v669[676] && !v669[677] && *v53 && FigMediaPlaylistHasStartTime(*v53))
    {
      v669[677] = 1;
      v669[678] = FigMediaPlaylistIsStartTimePrecise(*v53);
      *(v12 + 8872) = FigMediaPlaylistGetStartTimeValue(*v53);
    }

    if ((v678.info & 0x100000000) != 0)
    {
      Alternates = FigMultivariantPlaylistGetAlternates(*v14);
      if (Alternates)
      {
        v302 = CFArrayGetCount(Alternates);
        v303 = v302 < 1;
        if (v302 >= 1)
        {
          v304 = v302;
          v305 = 0;
          while (1)
          {
            v306 = FigMultivariantPlaylistGetAlternates(*v14);
            CFArrayGetValueAtIndex(v306, v305);
            v307 = OUTLINED_FUNCTION_399();
            if (segPumpAddFigAlternate(v307, v308))
            {
              break;
            }

            if (v304 == ++v305)
            {
              v4 = v643;
              LODWORD(v18) = HIDWORD(v651);
              goto LABEL_330;
            }
          }

          v4 = v643;
          goto LABEL_653;
        }
      }

      v303 = 1;
LABEL_330:
      if (FigMultivariantPlaylistGetMediaSelectionArray(*v14))
      {
        v309 = *(v12 + 8560);
        MediaSelectionArray = FigMultivariantPlaylistGetMediaSelectionArray(*v14);
        *(v12 + 8560) = MediaSelectionArray;
        if (MediaSelectionArray)
        {
          CFRetain(MediaSelectionArray);
        }

        if (v309)
        {
          CFRelease(v309);
        }
      }

      HasIndependentSegments = FigMultivariantPlaylistHasIndependentSegments(*v14);
      v669[32] = HasIndependentSegments;
      *(*(v12 + 392) + 872) = HasIndependentSegments;
      *(*(v12 + 408) + 872) = HasIndependentSegments;
      *(*(v12 + 424) + 872) = HasIndependentSegments;
      if (!v303 && (v319 = OUTLINED_FUNCTION_340_1(), segPumpReadyNotification(v319, v320, v321), HasIndependentSegments = segPumpInitAlternateSelectionBoss(v12), HasIndependentSegments) || v669[18] && (v372 = OUTLINED_FUNCTION_92_1(HasIndependentSegments, v312, v313, v314, v315, v316, v317, v318, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657), segPumpReadNextCryptKeyForStream(v372)))
      {
LABEL_669:
        v49 = v648;
        goto LABEL_680;
      }
    }

    else
    {
      if (*(v10 + 866))
      {
        if (*v10 == 1 || *v10 == *(v12 + 8600))
        {
          segPumpSetTargetDurationAndType(v12, *(v10 + 56));
          OUTLINED_FUNCTION_88_1();
          if (v73)
          {
            OUTLINED_FUNCTION_266();
            segPumpRTCReportingRespondToFirstIndexFileWithMedia();
          }
        }
      }

      segPumpSetPartTargetDuration(v12, *v53);
      segPumpSetActiveHoldBack();
    }

    if (!*v53)
    {
      goto LABEL_451;
    }

    if (FigMediaPlaylistHasEndTag(*v53) && (*(v10 + 360) & 0x8000000000000000) == 0)
    {
      *(v10 + 360) = -1;
      *(v10 + 368) = -1;
    }

    v322 = *(v10 + 56);
    if (!v322)
    {
      goto LABEL_451;
    }

    v323 = FigMediaPlaylistGetMediaSegmentSpecifiers(v322);
    if (!v323)
    {
      goto LABEL_451;
    }

    v324 = CFArrayGetCount(v323);
    if (v324 < 1 || (*(v10 + 160) - 4) < 3)
    {
      goto LABEL_451;
    }

    if (!*(v12 + 337))
    {
      *(v10 + 160) = 5;
      goto LABEL_451;
    }

    IntValue = 0.0;
    if (!messagea)
    {
      v334 = 0;
      v336 = 0;
      goto LABEL_438;
    }

    StartOffset = v4;
    v333 = CFHTTPMessageCopyHeaderFieldValue(messagea, @"Age");
    v324 = CFHTTPMessageCopyHeaderFieldValue(messagea, @"ms-in-cache");
    v334 = v324 != 0;
    if (v324)
    {
      v335 = v324;
      IntValue = CFStringGetIntValue(v324) / 1000.0;
      if (v333)
      {
        CFRelease(v333);
        v336 = 1;
      }

      else
      {
        v336 = 0;
      }
    }

    else
    {
      if (!v333)
      {
        v334 = 0;
        v336 = 0;
        v4 = StartOffset;
LABEL_438:
        v381 = *(v10 + 160);
        if (v381)
        {
          if (v381 != 2)
          {
            goto LABEL_442;
          }

          if (((v334 | v336) & 1) == 0)
          {
LABEL_441:
            *(v10 + 160) = 4;
            v382 = OUTLINED_FUNCTION_92_1(v324, v325, v326, v327, v328, v329, v330, v331, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657);
            segPumpSetStartingOffset(v382, v383, v384);
            v381 = *(v10 + 160);
LABEL_442:
            LODWORD(v18) = HIDWORD(v651);
            if (v381 == 3)
            {
              goto LABEL_443;
            }

LABEL_451:
            if ((v678.info & 0x200000000) == 0)
            {
              v51 = 0;
              goto LABEL_534;
            }

            if (*(v10 + 352) >= 1)
            {
              v396 = OUTLINED_FUNCTION_266();
              if (segPumpCalculateDiscoDomainOffset(v396, v397, v398))
              {
                goto LABEL_669;
              }

              if (dword_1EAF16A30)
              {
                OUTLINED_FUNCTION_126_1();
                v399 = OUTLINED_FUNCTION_123_1();
                v407 = OUTLINED_FUNCTION_51_1(v399, v400, v401, v402, v403, v404, v405, v406, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657, v660, v664, v665, v668, v669, v671, v673[0], v673[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
                if (OUTLINED_FUNCTION_16_1(v407))
                {
                  OUTLINED_FUNCTION_76_1();
                  LODWORD(v678.data) = 136315906;
                  *(&v678.data + 4) = "segPumpParseIndexFile";
                  WORD2(v678.length) = 2114;
                  OUTLINED_FUNCTION_5_1();
                  *v681 = 1024;
                  *&v681[2] = v408;
                  OUTLINED_FUNCTION_117();
                  OUTLINED_FUNCTION_11_1();
                  _os_log_send_and_compose_impl();
                  OUTLINED_FUNCTION_204_1();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_238_0();
                LODWORD(v18) = HIDWORD(v651);
              }

              segPumpFreeDiscoQueue((v10 + 336));
              *(v10 + 352) = 0;
            }

            v409 = *(v10 + 56);
            StartOffset = &off_196E72000;
            if (*v10 == *(v12 + 8600) && (segPumpSetTargetDurationAndType(v12, v409), v409 = *v53, (*(v12 + 376) & 0x8000000000000000) != 0))
            {
              v410 = v4;
              *(v12 + 376) = *(v10 + 448);
              *(v12 + 376) = (*(v12 + 376) + FigMediaPlaylistGetPlaylistActiveDurationSecs(v409) * -1000000000.0);
              *(v12 + 384) = 0;
              v409 = *(v10 + 56);
            }

            else
            {
              v410 = v4;
            }

            segPumpSetPartTargetDuration(v12, v409);
            segPumpSetActiveHoldBack();
            if (!v669[32])
            {
              v411 = 1;
              do
              {
                v412 = *(v12 + 392);
                v413 = *(v412 + 56);
                if (v413)
                {
                  v414 = FigMediaPlaylistHasIndependentSegments(v413);
                  *(v412 + 872) = v414;
                  if (!v414)
                  {
                    v411 = 0;
                  }
                }

                OUTLINED_FUNCTION_408_1();
              }

              while (!v73);
              LODWORD(v18) = HIDWORD(v651);
              if (v411)
              {
                v669[32] = 1;
              }
            }

            if (FigMediaPlaylistHasEndTag(*v53))
            {
              if (!v669[26])
              {
                v669[26] = 1;
                if (!*(v10 + 866))
                {
                  v669[27] = 1;
                  if (dword_1EAF16A30)
                  {
                    OUTLINED_FUNCTION_126_1();
                    v415 = OUTLINED_FUNCTION_123_1();
                    v423 = OUTLINED_FUNCTION_51_1(v415, v416, v417, v418, v419, v420, v421, v422, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657, v660, v664, v665, v668, v669, v671, v673[0], v673[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
                    if (OUTLINED_FUNCTION_16_1(v423))
                    {
                      OUTLINED_FUNCTION_76_1();
                      LODWORD(v678.data) = 136315394;
                      OUTLINED_FUNCTION_54_1();
                      OUTLINED_FUNCTION_117();
                      OUTLINED_FUNCTION_11_1();
                      _os_log_send_and_compose_impl();
                      OUTLINED_FUNCTION_204_1();
                    }

                    OUTLINED_FUNCTION_7();
                    OUTLINED_FUNCTION_238_0();
                    LODWORD(v18) = HIDWORD(v651);
                  }
                }
              }
            }

            *(v10 + 1064) = *(v10 + 448);
            *(v10 + 384) = 0;
            if (*(v12 + 336))
            {
              OUTLINED_FUNCTION_88_1();
              if (v73)
              {
                *v673 = 0.0;
                v426 = segPumpGetNextMediaFileWithDate(*v53, v673);
                if (v426)
                {
                  v427 = FigMediaSegmentSpecifierGetDateStamp(v426);
                  v428 = MEMORY[0x19A8CCD90](v427);
                  v429 = FigMediaPlaylistGetPlaylistActiveDurationSecs(*v53);
                  CMTimeMake(&v683, ((v428 + v429 - *v673) * 1000000000.0), 1000000000);
                  HostTimeClock = CMClockGetHostTimeClock();
                  CMClockGetTime(&v678.data, HostTimeClock);
                  segPumpSendPlaylistUpdateNotification(v12);
                }
              }
            }

            v431 = *(v10 + 96);
            v4 = v410;
            if (v431 == FigMediaPlaylistGetPlaylistActiveDurationSecs(*(v10 + 56)))
            {
              goto LABEL_507;
            }

            *(v10 + 96) = FigMediaPlaylistGetPlaylistActiveDurationSecs(*(v10 + 56));
            OUTLINED_FUNCTION_277_0();
            if (!v73)
            {
              goto LABEL_507;
            }

            v441 = *(v12 + 352);
            if (v441 == v439)
            {
              goto LABEL_507;
            }

            if (v439 > v441 || (LODWORD(v440) = *(v12 + 8), v439 <= v441 - v440))
            {
              if (dword_1EAF16A30)
              {
                OUTLINED_FUNCTION_126_1();
                v573 = OUTLINED_FUNCTION_123_1();
                v581 = OUTLINED_FUNCTION_51_1(v573, v574, v575, v576, v577, v578, v579, v580, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657, v660, v664, v665, v668, v669, v671, v673[0], v673[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
                if (OUTLINED_FUNCTION_16_1(v581))
                {
                  OUTLINED_FUNCTION_76_1();
                  LODWORD(v678.data) = 136316162;
                  *(&v678.data + 4) = "segPumpParseIndexFile";
                  WORD2(v678.length) = 2114;
                  OUTLINED_FUNCTION_5_1();
                  *v681 = v582;
                  *&v681[2] = v583;
                  *&v681[10] = v582;
                  *&v681[12] = v584;
                  OUTLINED_FUNCTION_117();
                  OUTLINED_FUNCTION_11_1();
                  _os_log_send_and_compose_impl();
                  OUTLINED_FUNCTION_204_1();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_238_0();
                v439 = *(v10 + 96);
                LODWORD(v18) = HIDWORD(v651);
              }

              *(v12 + 352) = v439;
              v51 = 1;
              LODWORD(v671) = 1;
              goto LABEL_508;
            }

            if (!dword_1EAF16A30)
            {
LABEL_507:
              v51 = 0;
            }

            else
            {
              OUTLINED_FUNCTION_126_1();
              v442 = OUTLINED_FUNCTION_123_1();
              v450 = OUTLINED_FUNCTION_51_1(v442, v443, v444, v445, v446, v447, v448, v449, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657, v660, v664, v665, v668, v669, v671, v673[0], v673[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
              if (OUTLINED_FUNCTION_16_1(v450))
              {
                OUTLINED_FUNCTION_76_1();
                LODWORD(v678.data) = 136316162;
                *(&v678.data + 4) = "segPumpParseIndexFile";
                WORD2(v678.length) = 2114;
                OUTLINED_FUNCTION_5_1();
                *v681 = v451;
                *&v681[2] = v452;
                *&v681[10] = v451;
                *&v681[12] = v453;
                OUTLINED_FUNCTION_117();
                OUTLINED_FUNCTION_11_1();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_204_1();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_238_0();
              v51 = 0;
              LODWORD(v18) = HIDWORD(v651);
            }

LABEL_508:
            v454 = *(v12 + 296);
            if (v454)
            {
              v455 = 0;
              v456 = 0.0;
              v457 = INFINITY;
              do
              {
                v458 = *(v12 + 392 + v455);
                if (*(v458 + 16))
                {
                  v459 = *(v458 + 88);
                  if (v457 > v459)
                  {
                    v457 = *(v458 + 88);
                  }

                  v460 = v459 + *(v458 + 96);
                  if (v456 < v460)
                  {
                    v456 = v460;
                  }
                }

                v455 += 16;
              }

              while (v455 != 48);
              v454 = FigStreamingCacheSetCacheTimeRange(v454, v457, v456);
            }

            if (*(v10 + 866) && v669[676])
            {
              v461 = OUTLINED_FUNCTION_92_1(v454, v432, v433, v434, v435, v436, v437, v438, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657);
              segPumpSetStartingOffset(v461, v462, v463);
            }

            OUTLINED_FUNCTION_88_1();
            if (v73)
            {
              if (*(v12 + 384))
              {
                *(v12 + 384) = 0;
                if (!v669[26] && !*(v12 + 24))
                {
                  v465 = *v660;
                  if (*v660 > 0.0)
                  {
                    v464 = *(v10 + 448) + (v465 + *(v10 + 96)) * -1000000000.0;
                    v466 = v464;
                    v467 = *(v12 + 376);
                    v468 = *(v12 + 8);
                    v469 = v467 + 1000000000 * v468;
                    v470 = v467 - 1000000000 * v468;
                    if (v469 < v464 || v470 > v466)
                    {
                      v464 = (v466 - v467) / 1000000000.0;
                      *v660 = v465 + v464;
                    }
                  }
                }
              }
            }

            if (!*(v10 + 875))
            {
              LODWORD(v464) = *(v12 + 8);
              if (*v660 > *&v464 * 3.0)
              {
                v594 = OUTLINED_FUNCTION_266();
                if (!segPumpIsIndexFileResponseOutOfDate(v594, v595, messagea))
                {
                  *(v10 + 875) = 1;
                }
              }
            }

LABEL_534:
            if ((*(v10 + 360) & 0x8000000000000000) == 0)
            {
              if (*v53)
              {
                v472 = FigMediaPlaylistGetMediaSegmentSpecifiers(*v53);
                if (v472)
                {
                  if (CFArrayGetCount(v472) >= 1 && (*(v10 + 360) & 0x8000000000000000) == 0)
                  {
                    FigMediaPlaylistGetMediaSegmentSpecifiers(*v53);
                    v473 = FigCFArrayGetLastValue();
                    MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(v473);
                    v475 = FigMediaSegmentSpecifierGetPartialSegments(v473);
                    if (v475)
                    {
                      v475 = CFArrayGetCount(v475);
                    }

                    v481 = *(v10 + 360);
                    if (MediaSequence < v481 || MediaSequence == v481 && v475 <= *(v10 + 368))
                    {
                      v596 = OUTLINED_FUNCTION_57_0(v475, v476, v477, v478, @"CoreMediaErrorDomain", @"Blocking Playlist Reload failed", v479, v480, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657);
                      HasEndTag = segPumpHandleIndexFileNetworkError(v596);
                      goto LABEL_557;
                    }
                  }
                }
              }

              *(v10 + 360) = -1;
              *(v10 + 368) = -1;
            }

            if (*(v10 + 792))
            {
              if (segPumpStreamHasPreloadHint(v10))
              {
                FigMediaPlaylistGetPreloadHint(*(v10 + 56));
                v589 = OUTLINED_FUNCTION_171_1();
                v586 = segPumpStreamHasPreloadConnectionForSegment(v589, v590, 0) == 0;
              }

              else
              {
                v586 = 1;
              }

              if (segPumpRealizePreload(v657, v10))
              {
                goto LABEL_669;
              }

              OUTLINED_FUNCTION_400_1();
              if ((v591 & v586) == 1)
              {
                v592 = OUTLINED_FUNCTION_266();
                segPumpStreamCancelPreloadReadAndResetData(v592, v593);
              }
            }

            if (*(v10 + 800))
            {
              if (segPumpStreamHasPreloadMapHint(v10))
              {
                FigMediaPlaylistGetPreloadMapHint(*(v10 + 56));
                v587 = OUTLINED_FUNCTION_171_1();
                v482 = segPumpStreamHasPreloadConnectionForMap(v587, v588) == 0;
              }

              else
              {
                v482 = 1;
              }

              v483 = OUTLINED_FUNCTION_266();
              if (segPumpRealizeMapPreload(v483, v484))
              {
                goto LABEL_669;
              }

              OUTLINED_FUNCTION_400_1();
              if ((v485 & v482) == 1)
              {
                v486 = OUTLINED_FUNCTION_266();
                segPumpStreamCancelPreloadMapReadAndResetData(v486, v487);
              }
            }

            if (*v53)
            {
              RenditionReportSpecifiers = FigMediaPlaylistGetRenditionReportSpecifiers(*v53);
              if (RenditionReportSpecifiers)
              {
                if (CFArrayGetCount(RenditionReportSpecifiers) >= 1)
                {
                  FigMediaPlaylistGetRenditionReportSpecifiers(*v53);
                  v489 = OUTLINED_FUNCTION_399();
                  segPumpReconcileGapRenditionReports(v489, v490);
                }
              }
            }

            HasEndTag = segPumpSetEstimatedGOPInterval(v12);
            if (HasEndTag)
            {
              goto LABEL_669;
            }

LABEL_557:
            v50 = 0;
            v49 = v648;
            goto LABEL_558;
          }
        }

        else
        {
          if ((v334 | v336) == 1 && !v669[676])
          {
            *(v10 + 160) = 1;
            LODWORD(v18) = HIDWORD(v651);
            goto LABEL_451;
          }

          *(v10 + 160) = 2;
          *(v10 + 168) = 0u;
          *(v10 + 184) = 0u;
          *(v10 + 200) = 0;
          if (!(v334 | v336))
          {
            goto LABEL_441;
          }
        }

        *(v10 + 176) = FigGetUpTimeNanoseconds();
        *(v10 + 184) = IntValue;
        if (!v334 && FigMediaPlaylistGetPartTargetDuration(*v53) < 1.0)
        {
          *(v10 + 184) = *(v10 + 184) + 1.0;
        }

        *(v10 + 168) = segPumpPlaylistGetEndDate(*(v10 + 56));
        LODWORD(v18) = HIDWORD(v651);
        if (*(v10 + 160) != 3)
        {
          *(v10 + 160) = 3;
        }

LABEL_443:
        if (*(v10 + 200) > 5)
        {
          *(v10 + 160) = 6;
          v597 = OUTLINED_FUNCTION_266();
          v605 = segPumpSetupBlockingReload(v597, v598, v599, v600, v601, v602, v603, v604, v613, v618, v622, SWORD2(v622), SBYTE6(v622), HIBYTE(v622), v626, SHIDWORD(v626), v630, v633, v635, v637, messagea, v643, v648, SHIDWORD(v648), v651, SHIDWORD(v651), v653, SBYTE4(v653), v655, v657, v660, v664, v665, v668, v669, v671, *v673, type, v675, valuePtr, v677, v678.isa, v678.info, v678.data, v678.length, v679, v680, *v681, *&v681[8], *&v681[16], v682, v683.value, *&v683.timescale, v683.epoch, v684, v685, v686);
          if (v605)
          {
            v610 = OUTLINED_FUNCTION_57_0(v605, v606, v607, v605, @"CoreMediaErrorDomain", @"tuneIn failed", v608, v609, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657);
            if (segPumpHandleIndexFileNetworkError(v610))
            {
              goto LABEL_669;
            }
          }
        }

        else if (IntValue < floor(FigMediaPlaylistGetPartTargetDuration(*v53)) || (v611 = *(v10 + 184) - (segPumpPlaylistGetEndDate(*(v10 + 56)) - *(v10 + 168)), *(v10 + 192) = v611, v611 <= FigMediaPlaylistGetPartTargetDuration(*(v10 + 56))))
        {
          if (*(v10 + 160) != 4)
          {
            *(v10 + 160) = 4;
          }

          v393 = OUTLINED_FUNCTION_92_1(v385, v386, v387, v388, v389, v390, v391, v392, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657);
          segPumpSetStartingOffset(v393, v394, v395);
        }

        else
        {
          ++*(v10 + 200);
          *(v10 + 192) = *(v10 + 192) + (FigGetUpTimeNanoseconds() - *(v10 + 176)) / 1000000000.0;
        }

        goto LABEL_451;
      }

      IntValue = CFStringGetIntValue(v333);
      v336 = 1;
      v335 = v333;
    }

    v4 = StartOffset;
    CFRelease(v335);
    goto LABEL_438;
  }

  OUTLINED_FUNCTION_88_1();
  LODWORD(v18) = HIDWORD(v651);
  if (!v73)
  {
    goto LABEL_315;
  }

  segPumpStopPlaylistReadsAndResetAllData(v12);
  v50 = 0;
  v51 = 0;
  v49 = v648;
LABEL_559:
  if (!*(v10 + 868))
  {
    HasEndTag = *(v10 + 56);
    if (HasEndTag)
    {
      HasEndTag = FigMediaPlaylistGetMediaSegmentSpecifiers(HasEndTag);
      if (HasEndTag)
      {
        HasEndTag = CFArrayGetCount(HasEndTag);
        if (HasEndTag >= 1)
        {
          *(v10 + 868) = 1;
        }
      }
    }
  }

  if (v51)
  {
    v491 = OUTLINED_FUNCTION_340_1();
    segPumpReadyNotification(v491, v492, v493);
  }

  if (v671)
  {
    v494 = OUTLINED_FUNCTION_340_1();
    segPumpReadyNotification(v494, v495, v496);
  }

  v14 = v668;
  if ((v678.info & 0x800000000) != 0)
  {
    OUTLINED_FUNCTION_88_1();
    if (v73)
    {
      v497 = OUTLINED_FUNCTION_340_1();
      segPumpReadyNotification(v497, v498, v499);
    }
  }

  if (*(v10 + 866) || (OUTLINED_FUNCTION_266(), HasEndTag = segPumpReadOrScheduleIndexFileRead(), !HasEndTag))
  {
    if (v669[676])
    {
      v565 = OUTLINED_FUNCTION_92_1(HasEndTag, v30, v31, v32, v33, v34, v35, v36, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657);
      MediaForSingleStream = segPumpDeliverNextMediaForSingleStream(v565);
      if (MediaForSingleStream != -12644)
      {
        if (MediaForSingleStream == -12642)
        {
          v572 = OUTLINED_FUNCTION_57_0(MediaForSingleStream, v567, v568, v569, @"CoreMediaErrorDomain", @"No matching mediaFile found from playlist", v570, v571, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657);
          if (segPumpHandleIndexFileNetworkError(v572))
          {
            goto LABEL_616;
          }
        }

        else if (MediaForSingleStream == -15626)
        {
          goto LABEL_616;
        }
      }
    }

    OUTLINED_FUNCTION_88_1();
    if (!v73 || v669[29] || (v532 = *(v10 + 56)) == 0 || (DateStampCount = FigMediaPlaylistGetDateStampCount(v532), DateStampCount < 1) || !*(v12 + 168) || (v541 = *(v10 + 880), v542 = OUTLINED_FUNCTION_92_1(DateStampCount, v534, v535, v536, v537, v538, v539, v540, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657), !segPumpSendDateMapping(v542, v543, v544)) && v541 == *(v10 + 880))
    {
      segPumpUpdateNetworkCostHasEndTag(v12);
      v500 = *(v10 + 56);
      if (v500)
      {
        if (FigMediaPlaylistGetPlaylistType(*(v10 + 56)) == 2)
        {
          if (!dword_1EAF16A30)
          {
            goto LABEL_616;
          }

          OUTLINED_FUNCTION_36_1();
          v501 = OUTLINED_FUNCTION_123_1();
          v509 = OUTLINED_FUNCTION_51_1(v501, v502, v503, v504, v505, v506, v507, v508, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657, v660, v664, v665, v668, v669, v671, v673[0], v673[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
          if (OUTLINED_FUNCTION_16_1(v509))
          {
            OUTLINED_FUNCTION_76_1();
            LODWORD(v678.data) = 136315650;
            OUTLINED_FUNCTION_54_1();
            HIWORD(v679) = 2080;
            v680 = "VOD";
            OUTLINED_FUNCTION_117();
            goto LABEL_614;
          }

LABEL_615:
          v4 = v49;
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_238_0();
          v49 = StartOffset;
          LODWORD(v18) = v50;
          v50 = v672;
          goto LABEL_616;
        }

        if (FigMediaPlaylistGetPlaylistType(v500) == 1)
        {
          if (!dword_1EAF16A30)
          {
            goto LABEL_616;
          }

          OUTLINED_FUNCTION_36_1();
          v523 = OUTLINED_FUNCTION_123_1();
          v531 = OUTLINED_FUNCTION_51_1(v523, v524, v525, v526, v527, v528, v529, v530, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657, v660, v664, v665, v668, v669, v671, v673[0], v673[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
          if (!OUTLINED_FUNCTION_16_1(v531))
          {
            goto LABEL_615;
          }

          OUTLINED_FUNCTION_76_1();
          LODWORD(v678.data) = 136315650;
          OUTLINED_FUNCTION_54_1();
          HIWORD(v679) = 2080;
          v680 = "Event";
          OUTLINED_FUNCTION_117();
          goto LABEL_614;
        }

        PlaylistType = FigMediaPlaylistGetPlaylistType(v500);
        if (!PlaylistType && *(v10 + 76))
        {
          if (!dword_1EAF16A30)
          {
            goto LABEL_616;
          }

          OUTLINED_FUNCTION_36_1();
          v546 = OUTLINED_FUNCTION_123_1();
          v554 = OUTLINED_FUNCTION_51_1(v546, v547, v548, v549, v550, v551, v552, v553, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657, v660, v664, v665, v668, v669, v671, v673[0], v673[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
          if (!OUTLINED_FUNCTION_16_1(v554))
          {
            goto LABEL_615;
          }

          OUTLINED_FUNCTION_76_1();
          LODWORD(v678.data) = 136315650;
          OUTLINED_FUNCTION_54_1();
          HIWORD(v679) = 2080;
          v680 = "Live";
          OUTLINED_FUNCTION_117();
          goto LABEL_614;
        }

        if (*(v10 + 76))
        {
          v555 = PlaylistType == 0;
        }

        else
        {
          v555 = 1;
        }

        if (v555 && dword_1EAF16A30)
        {
          OUTLINED_FUNCTION_36_1();
          v556 = OUTLINED_FUNCTION_123_1();
          v564 = OUTLINED_FUNCTION_51_1(v556, v557, v558, v559, v560, v561, v562, v563, v613, v618, v622, v626, v630, v633, v635, v637, messagea, v643, v648, v651, v653, v655, v657, v660, v664, v665, v668, v669, v671, v673[0], v673[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
          if (!OUTLINED_FUNCTION_16_1(v564))
          {
            goto LABEL_615;
          }

          OUTLINED_FUNCTION_76_1();
          LODWORD(v678.data) = 136315394;
          OUTLINED_FUNCTION_54_1();
          OUTLINED_FUNCTION_117();
LABEL_614:
          OUTLINED_FUNCTION_11_1();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_204_1();
          goto LABEL_615;
        }
      }
    }
  }

LABEL_616:
  if (v50)
  {
LABEL_293:
    if (!v18)
    {
      goto LABEL_294;
    }

LABEL_679:
    segPumpSetupCommonCryptKeyDataForSessionKeys(v12, *v14);
  }

LABEL_680:
  if (v4)
  {
    *v4 = v18;
  }

  if (v678.isa)
  {
    CFRelease(v678.isa);
  }

  if (v664)
  {
    CFRelease(v664);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v675)
  {
    CFRelease(v675);
  }

  OUTLINED_FUNCTION_191();
}

uint64_t segPumpResumeRoundTripMonitoring(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 <= 0.0)
  {
    LODWORD(v2) = *(a1 + 8);
    v2 = *&v2;
  }

  v3 = v2 * 0.5 * 1000000000.0;
  if (v3 <= 1100000000)
  {
    v4 = 1100000000;
  }

  else
  {
    v4 = v3;
  }

  result = FigGetUpTimeNanoseconds();
  v6 = *(a1 + 16 * *(a1 + 8600) + 392);
  if (!*(v6 + 1185))
  {
    v7 = result;
    v8 = *(a1 + 8784);
    if (v8 > *(a1 + 8792))
    {
      v9 = v8 + v4;
      if (v8 + v4 <= result + 5000000)
      {
        v10 = result + 5000000;
      }

      else
      {
        v10 = v8 + v4;
      }

      if (v8 + v4 >= result + 5000000)
      {
        v11 = v8 + v4;
      }

      else
      {
        v11 = v9 + 1;
      }

      v12 = (v10 - v11) / v4;
      if (v9 < result + 5000000)
      {
        ++v12;
      }

      v13 = v8 + v4 + v4 * v12;
      goto LABEL_24;
    }

    if (result - v8 <= v4)
    {
LABEL_23:
      v13 = v7 + v4 + 5000000;
LABEL_24:
      if (v13 >= 1 && !*(a1 + 8800))
      {
        v17 = *a1;
        v18 = *(a1 + 64);

        return FigHTTPCreateTimer(v17, RoundTripMonitorTimeoutTimer, v18, (a1 + 8800), (v13 - v7) / 1000000000.0);
      }

      return result;
    }

    v14 = 0;
    v15 = (a1 + 400);
    do
    {
      result = segPumpStreamHasActiveMediaRequest(*(v15 - 1));
      if (result)
      {
        goto LABEL_23;
      }

      v16 = *v15;
      v15 += 2;
      result = segPumpStreamHasActiveMediaRequest(v16);
      if (v14 > 1)
      {
        break;
      }

      ++v14;
    }

    while (!result);
    if (result)
    {
      goto LABEL_23;
    }

    if (!*(a1 + 335))
    {
      result = *(a1 + 40);
      if (result)
      {
        result = FigHTTPRequestSessionSendPingWithPongHandler(result, *(a1 + 56), *(a1 + 240), *(a1 + 64), *a1);
        if (result)
        {
          return result;
        }
      }

LABEL_33:
      *(a1 + 8784) = v7;
      return result;
    }

    if (segPumpStreamHasPreloadHint(v6))
    {
      PreloadHint = FigMediaPlaylistGetPreloadHint(*(v6 + 56));
      v20 = *(v6 + 24);
      MediaFilePrivateData = segPumpGetMediaFilePrivateData(PreloadHint);
      v22 = OUTLINED_FUNCTION_292();
      segPumpEnsureMediaSegmentURLs(v22, v23, v20);
      if (MediaFilePrivateData[2])
      {
        v24 = FigMediaPlaylistGetPreloadHint(*(v6 + 56));
        v25 = *(v6 + 24);
        segPumpGetMediaFilePrivateData(v24);
        v26 = OUTLINED_FUNCTION_284();
        segPumpEnsureMediaSegmentURLs(v26, v27, v25);
      }
    }

    LOBYTE(v33) = 0;
    OUTLINED_FUNCTION_627();
    OUTLINED_FUNCTION_39_1();
    result = segPumpCustomURLLoaderGetURLGuts(v28, v29, v30, v31, v32, 1, 0, 0, v33, 0, 0, a1 + 8808, v34, v35, v36, v37, v38, v39, v40, v41);
    if (!result)
    {
      goto LABEL_33;
    }
  }

  return result;
}

void segPumpCopyIndexFileFromCache()
{
  OUTLINED_FUNCTION_218_1();
  v41 = v0;
  v42 = v6;
  v8 = v7;
  v9 = v5;
  v10 = v4;
  v37 = 0;
  v38[0] = 0;
  v35 = 0;
  cf2 = 0;
  v11 = *(v1 + 296);
  v34 = 0;
  if (!v4)
  {
    OUTLINED_FUNCTION_183_1();
    goto LABEL_48;
  }

  v12 = v3;
  v13 = v2;
  v14 = v1;
  *v4 = 0;
  if (v5)
  {
    *v5 = 0;
  }

  URLString = 0;
  cf = 0;
  v15 = *(v1 + 304);
  if (!v15)
  {
LABEL_18:
    if (v11)
    {
      if (v37)
      {
        CFRelease(v37);
        v37 = 0;
      }

      if (cf2)
      {
        CFRelease(cf2);
        cf2 = 0;
      }

      if (v12)
      {
        if (FigStreamingCacheCopyMasterPlaylist(*(v14 + 296), v38, &v37) || FigStreamingCacheCopyStreamNetworkURL(*(v14 + 296), &cf2))
        {
          goto LABEL_56;
        }
      }

      else if (!*(v14 + 8896) || *(v14 + 8212))
      {
        v26 = *(v13 + 64);
        if (v26)
        {
          goto LABEL_70;
        }

        CacheForStream = segPumpCreateCacheForStream();
        if (*(v14 + 8400) && CacheForStream)
        {
          goto LABEL_56;
        }

        v26 = *(v13 + 64);
        if (v26)
        {
LABEL_70:
          if (FigStreamingCacheMediaStreamCopyPlaylist(*(v14 + 296), v26, v38, &v37) || FigStreamingCacheMediaStreamCopyNetworkURL(*(v14 + 296), *(v13 + 64), &v35))
          {
            goto LABEL_56;
          }

          AllocatorForMedia = FigGetAllocatorForMedia();
          cf2 = CFURLCreateWithString(AllocatorForMedia, v35, 0);
          if (!cf2)
          {
            OUTLINED_FUNCTION_183_1();
            goto LABEL_48;
          }

          if (FigStreamingCacheMediaStreamIsComplete(*(v14 + 296), *(v13 + 64), &v34))
          {
            goto LABEL_56;
          }
        }
      }
    }

LABEL_34:
    v28 = FigCFHTTPCompareURLs(*(v13 + 24), cf2);
    if (!(v28 | v34))
    {
      goto LABEL_56;
    }

    if (!v37 || !FigCFHTTPCompareURLs(*(v13 + 24), cf2))
    {
LABEL_49:
      Value = 0;
      goto LABEL_50;
    }

    Value = CFDictionaryGetValue(v37, @"URL");
    if (!Value)
    {
LABEL_50:
      *v10 = v38[0];
      v38[0] = 0;
      if (v9)
      {
        *v9 = v37;
        v37 = 0;
      }

      if (v8)
      {
        *v8 = cf2;
        cf2 = 0;
      }

      if (Value)
      {
        CFRelease(Value);
      }

      goto LABEL_56;
    }

    v30 = FigGetAllocatorForMedia();
    v31 = CFURLCreateWithString(v30, Value, 0);
    if (v31)
    {
      Value = v31;
      if (!FigCFHTTPCompareURLs(*(v13 + 16), v31))
      {
        v32 = *(v13 + 16);
        *(v13 + 16) = Value;
        CFRetain(Value);
        if (v32)
        {
          CFRelease(v32);
        }
      }

      goto LABEL_50;
    }

    OUTLINED_FUNCTION_183_1();
LABEL_48:
    if (FigSignalErrorAtGM())
    {
      goto LABEL_56;
    }

    goto LABEL_49;
  }

  if (v3)
  {
    v16 = FigStreamingCacheCopyMasterPlaylist(v15, v38, &v37);
    if (!v16)
    {
      v16 = FigStreamingCacheCopyStreamNetworkURL(*(v14 + 304), &cf2);
    }

    v17 = v16;
  }

  else
  {
    v38[1] = 0;
    MediaStream = segPumpCreateURLAndString(*(v2 + 24), 0, &cf);
    if (MediaStream || (OUTLINED_FUNCTION_135_1(), (MediaStream = FigStreamingCacheCreateMediaStream(v19, v20, v21, v22, v23, v24, v25)) != 0))
    {
      v17 = MediaStream;
    }

    else
    {
      v17 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (URLString)
  {
    CFRelease(URLString);
  }

  if (!v17)
  {
    if (v38[0])
    {
      goto LABEL_34;
    }

    goto LABEL_18;
  }

LABEL_56:
  if (v38[0])
  {
    CFRelease(v38[0]);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (cf2)
  {
    CFRelease(cf2);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  OUTLINED_FUNCTION_209_1();
}

uint64_t segPumpCreateCacheForStream()
{
  OUTLINED_FUNCTION_257_0();
  v3 = v2;
  OUTLINED_FUNCTION_152_1();
  URLAndString = segPumpCreateURLAndString(v4, v5, v6);
  if (URLAndString)
  {
    return URLAndString;
  }

  v8 = 0;
  v9 = *(v3 + 8328);
  v10 = *v1;
  if (v9 && !v10)
  {
    v8 = *(v9 + 28);
  }

  v1[8] = 0;
  v11 = v1 + 8;
  URLAndString = FigStreamingCacheCreateMediaStream(v0, v10, 0, *(v11 - 4), v8, v10 == 2, v11);
  if (URLAndString)
  {
    return URLAndString;
  }

  if (*(v3 + 296) == v0 && *(v3 + 8227))
  {
    return FigStreamingCacheMediaStreamSetPersistent(v0, *v11, *MEMORY[0x1E695E4D0]);
  }

  return 0;
}

uint64_t segPumpIsProtocolUsedByRequest(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_187();
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_200_1();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v1 = OUTLINED_FUNCTION_515();
      v2(v1);
    }
  }

  return 0;
}

uint64_t segPumpCheckPriorityHeaderLowLatencyServerCompliance()
{
  cf = 0;
  v3 = 0;
  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_200_1();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v0 = OUTLINED_FUNCTION_515();
    v1(v0);
  }

  return 0;
}

uint64_t segPumpEnsureDiskBackedCacheForStreamPossiblyEndingStream()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*(DerivedStorage + 296))
  {
    return 0;
  }

  v2 = DerivedStorage + 0x2000;
  if (*(DerivedStorage + 8896))
  {
    if (!*(DerivedStorage + 8212) || *(DerivedStorage + 392) != v0)
    {
      return 0;
    }
  }

  else if (!*(DerivedStorage + 8213))
  {
    return 0;
  }

  if (*(v0 + 64))
  {
    return 0;
  }

  result = segPumpCreateCacheForStream();
  if (!*(v2 + 208))
  {
    return 0;
  }

  if (result == -15642)
  {
    FigCreateErrorForOSStatus(4294951654, &cf);
    v4 = OUTLINED_FUNCTION_177();
    segPumpSendEndCallbackForActiveStream(v4, v5, v6);
    result = cf;
    if (cf)
    {
      CFRelease(cf);
      return 0;
    }
  }

  return result;
}

uint64_t segPumpSetPlaylistForStreamCache(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  if (a1)
  {
    v5 = *(a2 + 64);
    if (v5)
    {
      v7 = FigStreamingCacheMediaStreamSetPlaylist(a1, v5, a3, a4);
      if (v7)
      {
        return v7;
      }

      v8 = FigCFHTTPCreateURLString(*(a2 + 24));
      if (v8)
      {
        v9 = v8;
        v10 = FigStreamingCacheMediaStreamSetNetworkURL(a1, *(a2 + 64), v8);
        if (!v10)
        {
          *(a2 + 538) = 0;
        }

        CFRelease(v9);
        return v10;
      }
    }
  }

  OUTLINED_FUNCTION_303();

  return FigSignalErrorAtGM();
}

uint64_t segPumpEnsurePlaylistCache(uint64_t a1)
{
  if (*(a1 + 304))
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*(a1 + 56), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, @"FSC_Backing", @"FSC_MemoryBacking");
    v4 = FigStreamingCacheCreate(*(a1 + 56), *(a1 + 320), v3, (a1 + 304));
    CFRelease(v3);
    return v4;
  }

  else
  {
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM();
  }
}

void segPumpMarkMediaFileAsDelivered(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return;
  }

  OUTLINED_FUNCTION_369();
  segPumpSetDeliveryStatusForMediaFileAndParts(v6, 1);
  if (FigMediaSegmentSpecifierGetType(a3) != 1 && !FigMediaSegmentSpecifierIsFragment(a3))
  {
    v4[47] = FigMediaSegmentSpecifierGetMediaSequence(a3);
  }

  OUTLINED_FUNCTION_388_0();
  if (v7)
  {
    v10 = v4[32];
    if (v10)
    {
      if (!FigMediaSegmentSpecifierIsFragment(v10))
      {
        PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(v4[32]);
        v12 = 0;
        while (1)
        {
          v13 = PartialSegments ? CFArrayGetCount(PartialSegments) : 0;
          if (v12 >= v13)
          {
            break;
          }

          v14 = OUTLINED_FUNCTION_284();
          ValueAtIndex = CFArrayGetValueAtIndex(v14, v15);
          ++v12;
          if (!*(segPumpGetMediaFilePrivateData(ValueAtIndex) + 73))
          {
            if (ValueAtIndex)
            {
              goto LABEL_6;
            }

            break;
          }
        }

        *(segPumpGetMediaFilePrivateData(v4[32]) + 73) = 1;
        v4[47] = FigMediaSegmentSpecifierGetMediaSequence(v4[32]);
      }
    }
  }

LABEL_6:
  v8 = v4[32];
  if (v8 == a3 || (OUTLINED_FUNCTION_388_0(), v7))
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v8)
  {
LABEL_11:
    CFRelease(v8);
    v4[32] = 0;
LABEL_12:
    v9 = v4[33];
    if (v9)
    {
      CFRelease(v9);
      v4[33] = 0;
    }
  }

  segPumpUpdateBufferingDoneState(v3);
}

uint64_t segPumpPlaylistRecalculatePumpTimeOffsets(uint64_t result, double a2)
{
  if (result)
  {
    v3 = result;
    v4 = 0;
    v5 = 0.0;
    while (1)
    {
      MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v3);
      if (MediaSegmentSpecifiers)
      {
        MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
      }

      if (v4 >= MediaSegmentSpecifiers)
      {
        break;
      }

      v7 = FigMediaPlaylistGetMediaSegmentSpecifiers(v3);
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v4);
      MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex);
      if (!*(MediaFilePrivateData + 96))
      {
        MediaFilePrivateData[4] = a2;
        PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(ValueAtIndex);
        v11 = 0;
        v5 = 0.0;
        if (PartialSegments)
        {
LABEL_8:
          Count = CFArrayGetCount(PartialSegments);
          goto LABEL_10;
        }

        while (1)
        {
          Count = 0;
LABEL_10:
          if (v11 >= Count)
          {
            break;
          }

          v13 = OUTLINED_FUNCTION_284();
          v15 = CFArrayGetValueAtIndex(v13, v14);
          *(segPumpGetMediaFilePrivateData(v15) + 4) = a2 + v5;
          v5 = v5 + FigMediaSegmentSpecifierGetTimeInSeconds(v15);
          ++v11;
          if (PartialSegments)
          {
            goto LABEL_8;
          }
        }

        a2 = a2 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
      }

      ++v4;
    }

    result = FigMediaPlaylistGetPreloadHint(v3);
    if (result)
    {
      PreloadHint = FigMediaPlaylistGetPreloadHint(v3);
      result = FigMediaSegmentSpecifierIsReadInCurrent(PreloadHint);
      if (result)
      {
        FigMediaPlaylistGetMediaSegmentSpecifiers(v3);
        if (FigCFArrayGetLastValue())
        {
          FigMediaPlaylistGetMediaSegmentSpecifiers(v3);
          LastValue = FigCFArrayGetLastValue();
          a2 = a2 - FigMediaSegmentSpecifierGetTimeInSeconds(LastValue);
        }

        v18 = FigMediaPlaylistGetPreloadHint(v3);
        result = segPumpGetMediaFilePrivateData(v18);
        *(result + 32) = v5 + a2;
      }
    }
  }

  return result;
}

void segPumpStopPlaylistReadsAndResetAllData(uint64_t a1)
{
  if (dword_1EAF16A30)
  {
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_362_1();
    v2 = OUTLINED_FUNCTION_126();
    v10 = OUTLINED_FUNCTION_180_0(v2, v3, v4, v5, v6, v7, v8, v9, v18, v19, v20, v21, SBYTE2(v21), BYTE3(v21), SHIDWORD(v21));
    if (OUTLINED_FUNCTION_124_0(v10))
    {
      if (a1)
      {
        OUTLINED_FUNCTION_253_1();
      }

      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_345_0();
  }

  *(a1 + 384) = 1;
  *(a1 + 8221) = 0;
  v11 = *(a1 + 296);
  if (v11)
  {
    FigStreamingCacheSetCacheTimeRange(v11, 0.0, 0.0);
  }

  do
  {
    segPumpStopStream(a1, *(a1 + 392), 0);
    *(*(a1 + 392) + 1185) = 1;
    OUTLINED_FUNCTION_383_0();
  }

  while (!v12);
  for (i = 392; i != 440; i += 16)
  {
    v14 = *(a1 + i);
    if ((*(v14 + 160) - 2) <= 2)
    {
      *(v14 + 160) = 1;
    }
  }

  v15 = OUTLINED_FUNCTION_270();
  segPumpReadyNotification(v15, v16, v17);
}

void segPumpRTCReportingRespondToFirstIndexFileWithMedia()
{
  OUTLINED_FUNCTION_369();
  if (!*(v2 + 9240))
  {
    if (*v1 == 1)
    {
      HasEndTag = FigMediaPlaylistHasEndTag(v1[7]);
      v8 = @"AOD";
      v9 = @"ALIVE";
    }

    else
    {
      if (*v1)
      {
        goto LABEL_2;
      }

      HasEndTag = FigMediaPlaylistHasEndTag(v1[7]);
      v8 = @"VOD";
      v9 = @"LIVE";
    }

    if (HasEndTag)
    {
      v12 = v8;
    }

    else
    {
      v12 = v9;
    }

    *(v0 + 9240) = v12;
    v13 = *(v0 + 9232);
    if (v13)
    {
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v14)
      {
        v14(v13, 0x1F0B64538, 0x1F0B655F8, v12, 0);
      }
    }
  }

LABEL_2:
  v3 = *(v0 + 8);
  v4 = *(v0 + 9232);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v5)
    {
      v5(v4, 0x1F0B64538, 0x1F0B653B8, 1000 * v3, 0);
    }

    v4 = *(v0 + 9232);
  }

  if (v4 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_310();
    v6();
  }

  if (FigMediaPlaylistHasEndTag(v1[7]))
  {
    if (!*v1)
    {
      FigMediaPlaylistGetPlaylistActiveDurationSecs(v1[7]);
      if (*(v0 + 9232))
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v10 = OUTLINED_FUNCTION_198_0();

          v11(v10);
        }
      }
    }
  }
}

BOOL segPumpIsIndexFileResponseOutOfDate(uint64_t a1, uint64_t a2, __CFHTTPMessage *a3)
{
  v3 = 0;
  if (a3)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      if (FigMediaPlaylistHasEndTag(*(a2 + 56)))
      {
        return 0;
      }

      v6 = FigCFHTTPCopyDateFromHTTPResponse(a3);
      if (!v6)
      {
        return 0;
      }

      else
      {
        v7 = v6;
        ModifiedDateFromHTTPResponse = FigCFHTTPCopyLastModifiedDateFromHTTPResponse(a3);
        if (ModifiedDateFromHTTPResponse)
        {
          v9 = ModifiedDateFromHTTPResponse;
          v10 = OUTLINED_FUNCTION_198_0();
          v3 = CFDateGetTimeIntervalSinceDate(v10, v11) > v4 * 3.0;
          CFRelease(v9);
        }

        else
        {
          v3 = 0;
        }

        CFRelease(v7);
      }
    }
  }

  return v3;
}

uint64_t segPumpStreamHasPreloadConnectionForSegment(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_187();
  result = FigMediaSegmentSpecifierGetURLString(v6);
  if (!result)
  {
    return result;
  }

  if (!*(v4 + 792))
  {
    return 0;
  }

  v8 = *(v4 + 24);
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(v3);
  v10 = OUTLINED_FUNCTION_627();
  segPumpEnsureMediaSegmentURLs(v10, v11, v8);
  if (!MediaFilePrivateData[2])
  {
    return 0;
  }

  v12 = *(v4 + 24);
  segPumpGetMediaFilePrivateData(v3);
  v13 = OUTLINED_FUNCTION_627();
  segPumpEnsureMediaSegmentURLs(v13, v14, v12);
  result = FigCFEqual();
  if (a3 && result)
  {
    v15 = *(v4 + 792);

    return segPumpMediaConnectionRangeIncludesMedia(v15, v3);
  }

  return result;
}

uint64_t segPumpRealizePreload(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (segPumpShouldDoSegmentReadAheads(DerivedStorage))
  {
    FigMediaPlaylistGetMediaSegmentSpecifiers(*(a2 + 56));
    for (i = FigCFArrayGetLastValue(); ; i = FigMediaSegmentSpecifierGetPreviousSegment(v5))
    {
      v5 = i;
      if (!i)
      {
LABEL_15:
        ValueAtIndex = 0;
        goto LABEL_16;
      }

      if (*(segPumpGetMediaFilePrivateData(i) + 73))
      {
        break;
      }

      for (j = 0; ; ++j)
      {
        PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(v5);
        if (PartialSegments)
        {
          PartialSegments = CFArrayGetCount(PartialSegments);
        }

        if (j >= PartialSegments)
        {
          break;
        }

        v8 = FigMediaSegmentSpecifierGetPartialSegments(v5);
        ValueAtIndex = CFArrayGetValueAtIndex(v8, j);
        if (!*(segPumpGetMediaFilePrivateData(ValueAtIndex) + 73))
        {
          v10 = OUTLINED_FUNCTION_415_0();
          if (segPumpStreamHasPreloadConnectionForSegment(v10, v11, 1))
          {
            if (ValueAtIndex)
            {
              goto LABEL_16;
            }

            break;
          }
        }
      }

      v12 = OUTLINED_FUNCTION_627();
      if (segPumpStreamHasPreloadConnectionForSegment(v12, v13, 1))
      {
        goto LABEL_15;
      }
    }

    ValueAtIndex = 0;
    v5 = 0;
LABEL_16:
    if (ValueAtIndex)
    {
      v5 = ValueAtIndex;
    }

    if (v5)
    {
      if (FigMediaSegmentSpecifierIsMarkedAsGap(v5))
      {
        v25 = OUTLINED_FUNCTION_235();
        result = segPumpHandleMediaFileNetworkError(v25, v26, 0, v5, 4294951877, 0);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = segPumpMediaConnectionRangeIncludesMedia(*(a2 + 792), v5);
        if (!result)
        {
          return result;
        }

        v15 = OUTLINED_FUNCTION_273_1();
        segPumpSetMediaConnectionIsDormant(v15, v16, v17);
        *(*(a2 + 792) + 40) = FigGetUpTimeNanoseconds();
        if (*(a2 + 776) >= 1)
        {
          v18 = 0;
          v19 = 0;
          while (1)
          {
            v20 = *(*(a2 + 768) + 8 * v19);
            if (!v20)
            {
              break;
            }

            v21 = *(v20 + 8);
            if (v21)
            {
              if (FigMediaSegmentSpecifierGetType(v21) == 1)
              {
                ++v18;
              }
            }

            if (++v19 >= *(a2 + 776))
            {
              return 0;
            }
          }

          v22 = *(DerivedStorage + 337) ? 1 : *(DerivedStorage + 8396);
          if (v19 - v18 < v22)
          {
            v23 = *(a2 + 792);
            v24 = *(v23 + 8);
            *(v23 + 8) = v5;
            CFRetain(v5);
            if (v24)
            {
              CFRelease(v24);
            }

            result = 0;
            *(*(a2 + 768) + 8 * v19) = *(a2 + 792);
            *(a2 + 792) = 0;
            return result;
          }
        }
      }
    }

    return 0;
  }

  OUTLINED_FUNCTION_243();

  return FigSignalErrorAtGM();
}

uint64_t segPumpStreamHasPreloadConnectionForMap(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!*(a1 + 800))
  {
    return 0;
  }

  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a2);
  v4 = OUTLINED_FUNCTION_70_1();
  segPumpEnsureMediaSegmentURLs(v4, v5, v6);
  if (!MediaFilePrivateData[2])
  {
    return 0;
  }

  segPumpGetMediaFilePrivateData(a2);
  v7 = OUTLINED_FUNCTION_70_1();
  segPumpEnsureMediaSegmentURLs(v7, v8, v9);

  return FigCFEqual();
}

void segPumpDecryptorNativeCryptorInvalidatedCallback(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  v19 = v18;
  FigRetainProxyRetain();
  if (!OUTLINED_FUNCTION_154_0())
  {
    FigRetainProxyRetain();
    CMNotificationCenterGetDefaultLocalCenter();
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_496();
    v20 = FigDeferNotificationToDispatchQueue();
    if (v20)
    {
      v21 = v20;
      FigRetainProxyRelease();
      segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(v19, v21);
    }
  }

  segPumpUnlockAndSendAllPendingNotifications();
  FigRetainProxyRelease();
  OUTLINED_FUNCTION_652();
}

uint64_t segPumpDecryptorReceivedKeyResponseCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = 0;
  cf = 0;
  FigRetainProxyRetain();
  OUTLINED_FUNCTION_140_0();
  if (!segPumpLockAndCopyPumpFromRetainProxy())
  {
    if (dword_1EAF16A30)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_251_1();
      v5 = OUTLINED_FUNCTION_126();
      v13 = OUTLINED_FUNCTION_116_0(v5, v6, v7, v8, v9, v10, v11, v12, v30, *(&v30 + 1), v31, v32, SBYTE2(v32), BYTE3(v32), SHIDWORD(v32));
      if (OUTLINED_FUNCTION_109_0(v13))
      {
        LODWORD(v35) = 136315650;
        OUTLINED_FUNCTION_181_0();
        OUTLINED_FUNCTION_168_1();
        v38 = a4;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_329_0();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524();
    }

    v14 = 392;
    while (1)
    {
      if (*(*(v33 + v14) + 248))
      {
        v15 = OUTLINED_FUNCTION_173_0();
        segPumpGetCryptKeyCommonData(v15, v16, v17, v18, v19, v20, v21, v22, v30, v31, v32, v33, cf, v35, v36, v37, v38);
        if (v23)
        {
          goto LABEL_14;
        }

        if (MEMORY[0x48] == a4 || MEMORY[0x70] == a4)
        {
          break;
        }
      }

      v14 += 16;
      if (v14 == 440)
      {
        goto LABEL_14;
      }
    }

    OUTLINED_FUNCTION_255_1();
    segPumpContinueIfCryptKeyResponseWasAlreadySet(v24, v25, v26, v27, v28);
  }

LABEL_14:
  segPumpUnlockAndSendAllPendingNotifications();
  if (cf)
  {
    CFRelease(cf);
  }

  return FigRetainProxyRelease();
}

void segPumpCryptKeyRenewalCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_570();
  OUTLINED_FUNCTION_198_1();
  if (!segPumpLockAndCopyPumpFromRetainProxy())
  {
    for (i = 0; i != 3; ++i)
    {
      v6 = *(v22 + 16 * i + 392);
      if (*(v6 + 56))
      {
        v7 = 0;
        while (1)
        {
          ContentKeySpecifiers = FigMediaPlaylistGetContentKeySpecifiers(*(v6 + 56));
          if (ContentKeySpecifiers)
          {
            ContentKeySpecifiers = CFArrayGetCount(ContentKeySpecifiers);
          }

          if (v7 >= ContentKeySpecifiers)
          {
            break;
          }

          v9 = FigMediaPlaylistGetContentKeySpecifiers(*(v6 + 56));
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v7);
          OUTLINED_FUNCTION_152_1();
          segPumpGetCryptKeyCommonData(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22, cf, v24, v25, v26, v27, v28, v29);
          if (v19)
          {
            goto LABEL_17;
          }

          ++v7;
          if (*(*(&v21 + 1) + 72) == a4)
          {
            if (!ValueAtIndex)
            {
              break;
            }

            if (*(&v21 + 1))
            {
              v20 = *(v6 + 248);
              *(v6 + 248) = ValueAtIndex;
              CFRetain(ValueAtIndex);
              if (v20)
              {
                CFRelease(v20);
              }

              *(*(&v21 + 1) + 153) = 0;
              segPumpSendCryptKeyRequest(cf, v22, v6);
            }

            goto LABEL_17;
          }
        }
      }
    }
  }

LABEL_17:
  segPumpUnlockAndSendAllPendingNotifications();
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_860();
}

void segPumpDeferredDecryptorNativeCryptorInvalidatedCallback(int a1, int a2, int a3, uint64_t a4, CFDictionaryRef theDict)
{
  valuePtr = 0;
  if (theDict && (Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6961038])) != 0)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    v7 = valuePtr;
  }

  else
  {
    v7 = 0;
  }

  segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(a4, v7);
}

uint64_t segPumpStreamUnchainMediaConnIfChaining(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = v3[7];
  if (result)
  {
    result = FigMediaPlaylistGetPreloadHint(result);
    if (result)
    {
      if (v3[87] != a3)
      {
        return 0;
      }

      result = segPumpMediaConnectionIsActive(a3);
      if (result)
      {
        v7 = a3[34];
        v8 = v7 ? CMBlockBufferGetDataLength(v7) : 0;
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        v10 = a3[27] - v8;
        a3[36] = UpTimeNanoseconds;
        a3[37] = v10;
        if (v3[99])
        {
          return 0;
        }

        v11 = a3[31];
        if (v10 >= v11 && v11 > 0)
        {
          return 0;
        }

        v3[87] = 0;
        v13 = v3[85];
        v14 = v13;
        while (1)
        {
          v14 = *v14;
          if (!v14)
          {
            v14 = v3[85];
          }

          if (!segPumpMediaConnectionIsActive(v14))
          {
            break;
          }

          if (v14 == v13)
          {
            v14 = v13;
            break;
          }
        }

        v3[87] = v14;
        v3[99] = a3;
        v15 = OUTLINED_FUNCTION_177();
        result = segPumpRealizePreload(v15, v16);
        if (!result)
        {
          if (v3[99])
          {
            if (segPumpStreamHasPreloadHint(v3) && (FigMediaPlaylistGetPreloadHint(v3[7]), v17 = OUTLINED_FUNCTION_201_0(), segPumpStreamHasPreloadConnectionForSegment(v17, v18, 0)))
            {
              v21 = *(v3[99] + 8);
              PreloadHint = FigMediaPlaylistGetPreloadHint(v3[7]);
              *(v3[99] + 8) = PreloadHint;
              if (PreloadHint)
              {
                CFRetain(PreloadHint);
              }

              if (v21)
              {
                CFRelease(v21);
              }

              segPumpSetMediaConnectionIsDormant(DerivedStorage, v3[99], 1);
            }

            else
            {
              v19 = OUTLINED_FUNCTION_235();
              segPumpStreamCancelPreloadReadAndResetData(v19, v20);
            }
          }

          OUTLINED_FUNCTION_177();
          result = segPumpStreamSchedulePreloadHintRead();
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t segPumpHandleCryptFailure()
{
  OUTLINED_FUNCTION_207();
  v3 = *(*(v2 + 696) + 8);
  if (v3 && (MediaFilePrivateData = segPumpGetMediaFilePrivateData(v3)) != 0)
  {
    v7 = MediaFilePrivateData;
    MediaFilePrivateData[99] = 1;
    v4 = *(v0 + 696);
    v5 = *(v4 + 8);
    if (*(v0 + 256) == v5 || *(v0 + 264) == v5)
    {
      v7[73] = 1;
    }

    v7[97] = 1;
  }

  else
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
    v4 = *(v0 + 696);
    v5 = *(v4 + 8);
  }

  *(v0 + 403) = 1;
  if (v5)
  {
    CFRelease(v5);
    *(*(v0 + 696) + 8) = 0;
    v4 = *(v0 + 696);
  }

  segPumpStreamDontReuseHTTPRequest(v1, v4);
  v8 = OUTLINED_FUNCTION_171();

  return segPumpDeliverNextMediaForSingleStream(v8);
}

uint64_t segPumpHandleMediaFileNetworkError(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t *a6)
{
  v74 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a3)
  {
    OUTLINED_FUNCTION_296_1();
    if (!v37 || v21)
    {
LABEL_39:
      ErrorForOSStatus = FigCreateErrorForOSStatus(a5, &cf);
      if (ErrorForOSStatus)
      {
        goto LABEL_40;
      }

LABEL_12:
      if (!a3)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

LABEL_11:
    ErrorForOSStatus = FigStreamingNetworkErrorCreateErrorFromHTTPRequestIfAvailable(0, -1005, *MEMORY[0x1E695AD78], 0, &cf);
    if (ErrorForOSStatus)
    {
      goto LABEL_40;
    }

    goto LABEL_12;
  }

  ++*(a3 + 64);
  OUTLINED_FUNCTION_296_1();
  if (v37 && !v14)
  {
    goto LABEL_11;
  }

  if (!v13)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_496();
  ErrorForOSStatus = FigStreamingNetworkErrorCreateErrorFromHTTPRequestIfAvailable(v15, v16, v17, v18, v19);
  if (ErrorForOSStatus)
  {
LABEL_40:
    v38 = ErrorForOSStatus;
    v36 = 0;
    if (!a6)
    {
      goto LABEL_92;
    }

LABEL_91:
    *a6 = v36;
    goto LABEL_92;
  }

LABEL_13:
  v22 = *(a3 + 72);
  v23 = cf;
  *(a3 + 72) = cf;
  if (v23)
  {
    CFRetain(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

LABEL_17:
  v24 = *(a2 + 296);
  v25 = cf;
  *(a2 + 296) = cf;
  if (v25)
  {
    CFRetain(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  v26 = cf;
  *v73 = 0;
  *v68 = 0;
  CFErrorGetCode(cf);
  v27 = OUTLINED_FUNCTION_203_0();
  CFErrorGetDomain(v27);
  v28 = CFErrorCopyUserInfo(v26);
  OUTLINED_FUNCTION_292_1();
  if (!v29)
  {
    v36 = 0;
    goto LABEL_75;
  }

  *v68 = 32;
  if (*(DerivedStorage + 8896))
  {
LABEL_23:
    v30 = 5;
LABEL_24:
    *v73 = v30;
    goto LABEL_28;
  }

  if (FigMediaSegmentSpecifierIsMarkedAsGap(a4))
  {
    *v73 = 7;
    v31 = 48;
    goto LABEL_27;
  }

  if (FigCFEqual())
  {
    if ((v6 + 12939) < 2)
    {
      goto LABEL_52;
    }

    switch(v6)
    {
      case -15628:
        *v73 = 7;
        v31 = 96;
        goto LABEL_27;
      case -12889:
        v30 = 7;
        goto LABEL_24;
      case -12465:
        v30 = 8;
        goto LABEL_24;
      case -12668:
LABEL_52:
        v39 = 0;
        v40 = *(DerivedStorage + 8600);
        while (!v40 || !*(*(DerivedStorage + 392 + v39) + 16))
        {
          v39 += 16;
          --v40;
          if (v39 == 48)
          {
            if (!*(DerivedStorage + 8280))
            {
              goto LABEL_23;
            }

            goto LABEL_57;
          }
        }

        break;
    }
  }

LABEL_57:
  CommonActionForNetworkError = segPumpGetCommonActionForNetworkError();
  if (!CommonActionForNetworkError)
  {
    if (*v73 != 1)
    {
LABEL_28:
      v32 = OUTLINED_FUNCTION_104_0();
      segPumpModifyErrorActionIfCurrentAlternateIsLastValidAlternate(v32, v33, v34, v35);
      v36 = *v73;
      if (*(DerivedStorage + 8360))
      {
        v37 = *v73 == 6 || *v73 == 3;
        if (!v37)
        {
LABEL_62:
          v42 = *(a2 + 256);
          if (v42)
          {
            MediaFilePrivateData = segPumpGetMediaFilePrivateData(v42);
            LOBYTE(v66) = 0;
            FigStreamingCacheMediaSegmentIsComplete(*(DerivedStorage + 296), *(a2 + 64), MediaFilePrivateData[13], &v66);
            if (*v73 == 3)
            {
              if (*(DerivedStorage + 296))
              {
                if (!*(a2 + 405))
                {
                  v44 = *(a2 + 680);
                  if (v44)
                  {
                    while (1)
                    {
                      v45 = OUTLINED_FUNCTION_341_1();
                      if (segPumpMediaConnectionIncludesMedia(v45, v46, a4))
                      {
                        break;
                      }

                      v44 = *v44;
                      if (!v44)
                      {
                        goto LABEL_74;
                      }
                    }

                    if (*(v44 + 209) && v66 && !FigCFEqual())
                    {
                      *v73 = 0;
                    }
                  }
                }
              }
            }

LABEL_74:
            v36 = *v73;
          }

LABEL_75:
          v38 = 0;
          if (!v28)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }

        if ((v68[0] & 0x10) != 0)
        {
          v36 = 9;
LABEL_61:
          *v73 = v36;
          goto LABEL_62;
        }
      }

      else if ((*v73 - 9) >= 0xFFFFFFFFFFFFFFFELL)
      {
        if ((v68[0] & 0x40) != 0)
        {
          goto LABEL_62;
        }

        *v73 = 3;
LABEL_44:
        if (*v65)
        {
          v36 = 3;
          goto LABEL_62;
        }

        v36 = 6;
        goto LABEL_61;
      }

      if (*v73 != 3)
      {
        goto LABEL_62;
      }

      goto LABEL_44;
    }

    *v73 = 7;
    v31 = *v68 | 1;
LABEL_27:
    *v68 = v31;
    goto LABEL_28;
  }

  v38 = CommonActionForNetworkError;
  v36 = 0;
  if (v28)
  {
LABEL_76:
    CFRelease(v28);
  }

LABEL_77:
  if (v38)
  {
    goto LABEL_97;
  }

  switch(v36)
  {
    case 9:
      if (FigMediaSegmentSpecifierIsMarkedAsGap(a4))
      {
        if (dword_1EAF16A30)
        {
          v66 = 0;
          OUTLINED_FUNCTION_418_1();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v48 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          if (OUTLINED_FUNCTION_16_1(v48))
          {
            if (DerivedStorage)
            {
              OUTLINED_FUNCTION_393_1();
            }

            *v68 = 136315906;
            OUTLINED_FUNCTION_359_1();
            v69 = 2048;
            v70 = v49;
            v71 = 2048;
            v72 = a4;
            OUTLINED_FUNCTION_95_1();
            OUTLINED_FUNCTION_361_1();
            OUTLINED_FUNCTION_23();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_238_0();
        }

        v38 = 0;
        v36 = 9;
        if (a6)
        {
          goto LABEL_91;
        }

        goto LABEL_92;
      }

      v50 = OUTLINED_FUNCTION_104_0();
      segPumpAppendErrorLogEntryWithCFError(v50, v51, a3, v52, 2, 3);
      v38 = 0;
      v36 = 9;
      break;
    case 3:
      v62 = OUTLINED_FUNCTION_104_0();
      segPumpCancelMediaFileReadAndResetData(v62, v63, 0, 1);
      break;
    case 5:
      FigMediaSegmentSpecifierGetMediaSequence(a4);
      v53 = OUTLINED_FUNCTION_104_0();
      segPumpDispatchAsyncMediaDelivery(v53, v54, v55, -1, v56, v57);
      v58 = OUTLINED_FUNCTION_104_0();
      segPumpAppendErrorLogEntryWithCFError(v58, v59, a3, v60, 2, 3);
      v38 = 0;
      break;
    default:
      segPumpHandleCommonNetworkError();
      v38 = v64;
      break;
  }

LABEL_97:
  if (a6)
  {
    goto LABEL_91;
  }

LABEL_92:
  if (cf)
  {
    CFRelease(cf);
  }

  return v38;
}

void segPumpCheckAndMarkStreamCacheComplete(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  theArray = 0;
  cf = *MEMORY[0x1E695E4C0];
  if (*(a1 + 296))
  {
    if (*(a2 + 64))
    {
      v5 = *(a2 + 56);
      if (v5)
      {
        MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v5);
        if (MediaSegmentSpecifiers)
        {
          if (CFArrayGetCount(MediaSegmentSpecifiers) >= 1)
          {
            FigMediaPlaylistGetMediaSegmentSpecifiers(*(a2 + 56));
            FirstValue = FigCFArrayGetFirstValue();
            segPumpGetMediaFilePrivateData(FirstValue);
            FigMediaPlaylistGetMediaSegmentSpecifiers(*(a2 + 56));
            if (FigCFArrayGetLastValue() == a3 && !FigStreamingCacheMediaStreamCopyPersistent(*(a1 + 296), *(a2 + 64), &cf))
            {
              v9 = cf;
              if (cf != *MEMORY[0x1E695E4D0])
              {
                goto LABEL_20;
              }

              if (!FigStreamingCacheMediaStreamCopyCachedTimeRanges(*(a1 + 296), *(a2 + 64), &theArray) && CFArrayGetCount(theArray) == 1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
                CMTimeRangeMakeFromDictionary(&v12, ValueAtIndex);
                value = v12.start.value;
                timescale = v12.start.timescale;
                if ((v12.start.flags & 1) == 0 || (v12.duration.flags & 1) == 0 || v12.duration.epoch || v12.duration.value < 0)
                {
                  OUTLINED_FUNCTION_239();
                  FigSignalErrorAtGM();
                }

                else
                {
                  v12.start.value = value;
                  v12.start.timescale = timescale;
                  CMTimeGetSeconds(&v12.start);
                  OUTLINED_FUNCTION_291_1();
                  if (v11)
                  {
                    FigStreamingCacheMediaStreamMarkComplete(*(a1 + 296), *(a2 + 64));
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v9 = cf;
LABEL_20:
  if (v9)
  {
    CFRelease(v9);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

void segPumpSendMediaCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23)
{
  OUTLINED_FUNCTION_193();
  HIDWORD(v276) = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v263 = v34;
  v36 = v35;
  v38 = v37;
  v39 = a23;
  v291 = *MEMORY[0x1E69E9840];
  memset(&v287, 0, sizeof(v287));
  v285 = 0;
  blockBufferOut = 0;
  v284 = 0uLL;
  v40 = FigRetainProxyRetain();
  HIDWORD(v283) = 0;
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(v31);
  v42 = MediaFilePrivateData;
  v270 = MediaFilePrivateData[8];
  v272 = MediaFilePrivateData[6];
  v43 = v270 - v272;
  if (v270 > v272)
  {
    if (v25 < v43)
    {
      v44 = 0;
      v45 = MediaFilePrivateData[7] + v25;
      MediaFilePrivateData[6] = v272 + v25;
      MediaFilePrivateData[7] = v45;
      goto LABEL_259;
    }

    v46 = MediaFilePrivateData[7] + v43;
    MediaFilePrivateData[6] = v270;
    MediaFilePrivateData[7] = v46;
    v25 -= v43;
    if (!v25)
    {
      v44 = 0;
      goto LABEL_259;
    }

    v27 += v43;
  }

  v265 = v38;
  if (FigMediaSegmentSpecifierGetBytesToRead(v31) < 1)
  {
    goto LABEL_16;
  }

  if (!FigMediaSegmentSpecifierGetContentKeySpecifier(v31))
  {
    goto LABEL_16;
  }

  ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(v31);
  if (FigContentKeySpecifierGetEncryptionMethod(ContentKeySpecifier) != 3)
  {
    goto LABEL_16;
  }

  if (!v31 || FigMediaSegmentSpecifierGetType(v31) != 1)
  {
    v50 = v42[8] + FigMediaSegmentSpecifierGetBytesToRead(v31);
    v51 = v42[6];
    v52 = v51 + v25;
    v53 = v50 - v51;
    if (v52 > v50)
    {
      v25 = v53;
    }

LABEL_16:
    dataLength = v25;
    goto LABEL_17;
  }

  dataLength = v25;
  v48 = *(v33 + 832);
  if (v48)
  {
    v49 = CMBlockBufferGetDataLength(v48);
  }

  else
  {
    v49 = 0;
  }

  if (v49 + dataLength > FigMediaSegmentSpecifierGetBytesToRead(v31))
  {
    dataLength = FigMediaSegmentSpecifierGetBytesToRead(v31) - v49;
  }

LABEL_17:
  if (v29 && dataLength)
  {
    if (CMBlockBufferCreateWithBufferReference(*(v36 + 56), v29, v27, dataLength, 0, &blockBufferOut))
    {
      goto LABEL_219;
    }
  }

  else
  {
    OUTLINED_FUNCTION_296();
    if (CMBlockBufferCreateEmpty(v54, v55, v56, v57))
    {
      goto LABEL_219;
    }
  }

  v58 = MEMORY[0x1E695E480];
  if ((a23 & 0x800) != 0)
  {
    v290[0] = COERCE_CFTYPEREF(FigMediaSegmentSpecifierGetTimeInSeconds(v31));
    v59 = CFNumberCreate(*v58, kCFNumberDoubleType, v290);
    if (!v59)
    {
      OUTLINED_FUNCTION_120();
      goto LABEL_218;
    }

    v60 = v59;
    CMSetAttachment(blockBufferOut, @"FBPAKey_ApproximateDuration", v59, 1u);
    CFRelease(v60);
  }

  if (*(v42 + 74))
  {
    goto LABEL_26;
  }

  if (v31 && FigMediaSegmentSpecifierGetType(v31) == 1)
  {
LABEL_44:
    LODWORD(v261) = 0;
    OUTLINED_FUNCTION_335_0();
    v39 = v64 | a23;
    goto LABEL_27;
  }

  if (blockBufferOut)
  {
    if (!FigMediaSegmentSpecifierIsMarkedAsGap(v31))
    {
      v63 = *(v33 + 288);
      if (v63 != FigMediaSegmentSpecifierGetMapSegmentSpecifier(v31) || *(v33 + 320) != *(v33 + 304) || *(v33 + 403))
      {
        if (FigMediaSegmentSpecifierGetMapSegmentSpecifier(v31))
        {
          FigMediaSegmentSpecifierGetMapSegmentSpecifier(v31);
          OUTLINED_FUNCTION_104_0();
          if (segPumpCreateMapMediaBBuf())
          {
            goto LABEL_219;
          }
        }

        goto LABEL_44;
      }
    }

    if (blockBufferOut && *(v36 + 8896) && *(v33 + 862))
    {
      v39 = (FigMediaSegmentSpecifierGetMapSegmentSpecifier(v31) == 0) | a23;
    }
  }

LABEL_26:
  LODWORD(v261) = 1;
LABEL_27:
  if (!FigMediaSegmentSpecifierGetContentKeySpecifier(v31))
  {
    goto LABEL_28;
  }

  v65 = FigMediaSegmentSpecifierGetContentKeySpecifier(v31);
  *v281 = 0;
  *v282 = 0;
  segPumpGetCryptKeyCommonData(v65, v282, v281, v66, v67, v68, v69, v70, v225, v232, v236, v238, v240, v242, v244, v246, v248);
  if (v71)
  {
    goto LABEL_219;
  }

  if (FigContentKeySpecifierGetKeySystem(v65) == 2 && FigContentKeySpecifierGetEncryptionMethod(v65) == 1 && (!v31 || FigMediaSegmentSpecifierGetType(v31) != 1))
  {
    v75 = *v282;
    if (*(*v282 + 40))
    {
      FigMediaSegmentSpecifierGetIV(v31);
      OUTLINED_FUNCTION_201_0();
      if (FigCFEqual())
      {
        goto LABEL_65;
      }

      v75 = *v282;
      v187 = *(*v282 + 40);
      if (v187)
      {
        CFRelease(v187);
        v75 = *v282;
        *(*v282 + 40) = 0;
      }
    }

    v188 = *(v75 + 32);
    IV = FigMediaSegmentSpecifierGetIV(v31);
    *(*v282 + 32) = IV;
    if (IV)
    {
      CFRetain(IV);
    }

    if (v188)
    {
      CFRelease(v188);
    }

    if (segPumpEnsureAndSetupBasicAESProtector(v36))
    {
      goto LABEL_219;
    }

    v190 = *(v36 + 248);
    cfa = FigGetAllocatorForMedia();
    v256 = *v282;
    v191 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (!v191 || v191(v190, cfa, 1, 0, v256 + 40))
    {
      goto LABEL_219;
    }

    if (dword_1EAF16A30)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v200 = OUTLINED_FUNCTION_438_1(os_log_and_send_and_compose_flags_and_os_log_type, v193, v194, v195, v196, v197, v198, v199, v226, v229, v233, v236, v238, v240, v242, v244, v246, v249, v256, v257, v259, v261, v263, v38, cfa, v270, v272, dataLength, v276, v278, OS_LOG_TYPE_DEFAULT, 0);
      if (OUTLINED_FUNCTION_186_0(v200))
      {
        OUTLINED_FUNCTION_205_0();
        if (v76)
        {
          v201 = &stru_1F0B1AFB8;
        }

        LODWORD(valuePtr.value) = 136315906;
        *(&valuePtr.value + 4) = "segPumpSendMediaCallback";
        LOWORD(valuePtr.flags) = 2114;
        *(&valuePtr.flags + 2) = v201;
        OUTLINED_FUNCTION_247_1();
        OUTLINED_FUNCTION_95_1();
        OUTLINED_FUNCTION_24_1();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_635();
    }

    if (!*(*(OUTLINED_FUNCTION_350_0() + 8) + 56))
    {
      goto LABEL_219;
    }

    v223 = OUTLINED_FUNCTION_338_1();
    if (v224(v223) || !*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      goto LABEL_219;
    }

    goto LABEL_56;
  }

  if (FigContentKeySpecifierGetKeySystem(v65) != 2 || FigContentKeySpecifierGetEncryptionMethod(v65) != 2 || v31 && FigMediaSegmentSpecifierGetType(v31) == 1)
  {
    goto LABEL_65;
  }

  if (!*(*v282 + 40))
  {
    if (segPumpEnsureAndSetupBasicAESProtector(v36))
    {
      goto LABEL_219;
    }

    if (*(v36 + 8208) && !*v33)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      cfb = CFDictionaryCreate(AllocatorForMedia, kFigCPEProtectorCryptorCreationOption_DecryptDestination, kFigCPEProtectorCryptorCreationOptionDecryptDestination_Nero, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      cfb = 0;
    }

    FigGetAllocatorForMedia();
    v203 = OUTLINED_FUNCTION_338_1();
    Cryptor = FigCPEProtectorCreateCryptor(v203, v204, v205, v206);
    if (cfb)
    {
      CFRelease(cfb);
    }

    if (Cryptor)
    {
      goto LABEL_219;
    }

    if (dword_1EAF16A30)
    {
      v208 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v216 = OUTLINED_FUNCTION_438_1(v208, v209, v210, v211, v212, v213, v214, v215, v226, v229, v233, v236, v238, v240, v242, v244, v246, v249, v252, v257, v259, v261, v263, v38, cfb, v270, v272, dataLength, v276, v278, OS_LOG_TYPE_DEFAULT, 0);
      if (OUTLINED_FUNCTION_186_0(v216))
      {
        OUTLINED_FUNCTION_205_0();
        if (v76)
        {
          v217 = &stru_1F0B1AFB8;
        }

        LODWORD(valuePtr.value) = 136316162;
        *(&valuePtr.value + 4) = "segPumpSendMediaCallback";
        LOWORD(valuePtr.flags) = 2114;
        *(&valuePtr.flags + 2) = v217;
        OUTLINED_FUNCTION_247_1();
        *(v221 + 42) = 2112;
        *(v221 + 44) = v222;
        OUTLINED_FUNCTION_188_1();
        OUTLINED_FUNCTION_24_1();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_635();
    }
  }

  if (!*(*(OUTLINED_FUNCTION_350_0() + 8) + 56))
  {
LABEL_219:
    v44 = 0;
    goto LABEL_259;
  }

LABEL_56:
  v72 = OUTLINED_FUNCTION_338_1();
  if (v73(v72))
  {
    goto LABEL_219;
  }

  v74 = *(v36 + 264);
  if (v74)
  {
    if (CMBaseObjectSetProperty(*(*v282 + 40), *MEMORY[0x1E69610C0], v74))
    {
      goto LABEL_219;
    }
  }

LABEL_65:
  if (FigContentKeySpecifierGetEncryptionMethod(v65) != 3)
  {
    v62 = *(*v282 + 40);
    if (!v62)
    {
      v62 = *(*v281 + 72);
    }

    v61 = *(*v281 + 112);
    if (!v31)
    {
      goto LABEL_69;
    }

    goto LABEL_29;
  }

LABEL_28:
  v61 = 0;
  v62 = 0;
  if (!v31)
  {
    goto LABEL_69;
  }

LABEL_29:
  if (FigMediaSegmentSpecifierGetType(v31) == 1)
  {
    cf = 0;
LABEL_77:
    v78 = dataLength;
LABEL_82:
    if (blockBufferOut && v62 && *(v36 + 330))
    {
      CMSetAttachment(blockBufferOut, @"FBPAKey_Decryptor", v62, 1u);
    }

LABEL_86:
    if (blockBufferOut && v61 && *(v36 + 330))
    {
      CMSetAttachment(blockBufferOut, @"FBPAKey_AudioDecryptor", v61, 1u);
    }

    v79 = OUTLINED_FUNCTION_618();
    IsLastMediaFileDelivering = segPumpIsLastMediaFileDelivering(v79, v80);
    if ((v276 & 0x100000000) != 0)
    {
      v82 = v36 + 0x2000;
      if (IsLastMediaFileDelivering && *(v36 + 8880) >= 0.0)
      {
        v39 |= 2u;
        v83 = OUTLINED_FUNCTION_104_0();
        segPumpCheckAndMarkStreamCacheComplete(v83, v84, v85);
      }
    }

    else
    {
      v82 = v36 + 0x2000;
    }

    if (*(v33 + 864))
    {
      v86 = v39 | 0x1000;
    }

    else
    {
      v86 = v39;
    }

    if (*(v33 + 865))
    {
      v39 = v86 | 0x2000;
    }

    else
    {
      v39 = v86;
    }

    if (*(v33 + 862))
    {
      *(v33 + 862) = 0;
      if (!*(v33 + 857))
      {
        v39 |= 4u;
      }
    }

    if (*(v33 + 863))
    {
      *(v33 + 863) = 0;
      v39 |= 0x200u;
    }

    if (*(v33 + 403))
    {
      v39 |= 1u;
      *(v33 + 403) = 0;
    }

    if (v31 && *(v33 + 856) && !FigMediaSegmentSpecifierGetType(v31))
    {
      *(v33 + 856) = 0;
      v39 |= 0x4000u;
    }

    if (*(v82 + 704))
    {
      if (v270 > v272 || !*(v42 + 74))
      {
        v39 |= 0x10u;
      }

      if (v31)
      {
        v87 = FigMediaSegmentSpecifierGetType(v31) != 0;
      }

      else
      {
        v87 = 1;
      }

      if ((v276 & 0x100000000) == 0)
      {
        v87 = 1;
      }

      if (!v87)
      {
        v39 |= 0x20u;
      }
    }

    if (!*(v42 + 74))
    {
      v39 |= 0x100u;
    }

    if (v31 && (v39 & 0x20) != 0 && !FigMediaSegmentSpecifierGetType(v31))
    {
      FigGetUpTimeNanoseconds();
      *(v36 + 9008) = 0u;
    }

    if ((v276 & 0x100000000) != 0)
    {
      v88 = *(v33 + 56);
      if (v88)
      {
        FigMediaPlaylistGetMediaSegmentSpecifiers(v88);
        if (FigCFArrayGetLastValue() == v31)
        {
          v39 |= 0xC0u;
        }

        else
        {
          v39 |= 0x40u;
        }
      }

      else
      {
        v39 |= 0x40u;
      }

      v82 = v36 + 0x2000;
    }

    *v253 = *MEMORY[0x1E6960C70];
    *&v287.value = *MEMORY[0x1E6960C70];
    v250 = *(MEMORY[0x1E6960C70] + 16);
    v287.epoch = v250;
    if (*(v42 + 74))
    {
      LODWORD(v272) = 0;
      DateStamp = 0;
      goto LABEL_220;
    }

    dataLength = v78;
    if (v270 <= v272)
    {
      if (*(v82 + 704))
      {
        if (!v31)
        {
          v90 = 0;
          goto LABEL_155;
        }
      }

      else
      {
        if (!v31 || *(v36 + 8218))
        {
          goto LABEL_153;
        }

        if (!FigMediaSegmentSpecifierGetType(v31))
        {
          v90 = 1;
          goto LABEL_155;
        }

        if (!*(v36 + 8896))
        {
LABEL_153:
          v93 = *(v36 + 8218);
          v90 = v93 == 1;
          if (!v31 || v93 == 1)
          {
LABEL_155:
            *(v42 + 74) = 1;
            if (v261)
            {
LABEL_164:
              if (*(v33 + 857) && (*(v33 + 857) = 0, v39 |= 8u, *(v36 + 8600) == *v33))
              {
                LODWORD(v272) = *(v36 + 8864);
                *(v36 + 8864) = 0;
              }

              else
              {
                LODWORD(v272) = 0;
              }

              DateStamp = FigMediaSegmentSpecifierGetDateStamp(v31);
              if (v90)
              {
                CFAbsoluteTimeGetCurrent();
                if (DateStamp)
                {
                  MEMORY[0x19A8CCD90](DateStamp);
                }

                else
                {
                  FigMediaSegmentSpecifierGetImputedDate(v31);
                }

                CMTimeMakeWithSeconds(&v287, *(v42 + 4), 90000);
                *v281 = 0;
                *v282 = 0;
                *v280 = 0;
                segPumpGetCryptorInfoFromBBuf(blockBufferOut, @"FBPAKey_Decryptor", v282, &v280[4]);
                segPumpGetCryptorInfoFromBBuf(blockBufferOut, @"FBPAKey_AudioDecryptor", v281, v280);
                if (*(v36 + 296))
                {
                  v96 = 1;
                  if (*(v36 + 8212))
                  {
                    if (*(v36 + 8213))
                    {
                      v96 = 1;
                    }

                    else
                    {
                      v96 = 2;
                    }
                  }
                }

                else
                {
                  v96 = 1;
                }

                if (v96 <= dword_1EAF16A30)
                {
                  v270 = DateStamp;
                  v246 = v40;
                  HIDWORD(v278) = 0;
                  BYTE3(v278) = 0;
                  v261 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(v261, OS_LOG_TYPE_DEFAULT);
                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_414();
                }
              }

LABEL_220:
              if (*(v33 + 404))
              {
                v42[6] += v78;
              }

              if (!v31 || FigMediaSegmentSpecifierGetType(v31) != 1)
              {
                goto LABEL_257;
              }

              v246 = v40;
              if (blockBufferOut)
              {
                v119 = CMBlockBufferGetDataLength(blockBufferOut);
                v120 = DateStamp;
                if (FigMediaSegmentSpecifierGetBytesToRead(v31) >= 1)
                {
                  v121 = *(v33 + 832);
                  v122 = v121 ? CMBlockBufferGetDataLength(v121) : 0;
                  v78 = dataLength;
                  if (v122 + v119 > FigMediaSegmentSpecifierGetBytesToRead(v31))
                  {
                    v119 = FigMediaSegmentSpecifierGetBytesToRead(v31) - v122;
                  }
                }

                if (v119)
                {
                  v290[0] = 0;
                  segPumpGetMediaDataMemoryPool(v36);
                  if (FigMemoryPoolCreateContiguousBlockBuffer())
                  {
                    goto LABEL_258;
                  }

                  if (*(v33 + 832))
                  {
                    OUTLINED_FUNCTION_39_1();
                    appended = CMBlockBufferAppendBufferReference(v123, v124, v125, v126, v127);
                    CFRelease(v290[0]);
                    if (appended)
                    {
                      goto LABEL_258;
                    }
                  }

                  else
                  {
                    *(v33 + 832) = v290[0];
                  }
                }

                v39 |= 0x8000u;
                DateStamp = v120;
              }

              if ((v276 & 0x100000000) == 0)
              {
LABEL_257:
                if (*(v33 + 871))
                {
                  goto LABEL_258;
                }

                v284 = *v253;
                v285 = v250;
                ++*(v36 + 184);
                *v290 = v287;
                v148 = OUTLINED_FUNCTION_163_1();
                DataCallbackWithOSStatus = segPumpMakeDataCallbackWithOSStatus(v148, v149, v150, v151, v39, v152, v153, DateStamp, v272, 0, &v284, &v283 + 1);
                --*(v36 + 184);
                IsInvalidated = FigRetainProxyIsInvalidated();
                if (DataCallbackWithOSStatus != -15626 && !IsInvalidated)
                {
                  if (DataCallbackWithOSStatus)
                  {
                    goto LABEL_258;
                  }

                  v156 = BYTE4(v283);
                  if (*(v33 + 404) && (v283 & 0x100000000) == 0)
                  {
                    v42[7] += v78;
                  }

                  if ((v156 & 2) == 0)
                  {
                    if (!v31)
                    {
                      goto LABEL_281;
                    }

                    goto LABEL_280;
                  }

                  if ((v39 & 0x40) == 0)
                  {
LABEL_277:
                    if (!v31)
                    {
                      goto LABEL_281;
                    }

LABEL_280:
                    if (FigMediaSegmentSpecifierGetType(v31) == 1)
                    {
LABEL_285:
                      if (*(v36 + 296))
                      {
                        OUTLINED_FUNCTION_286_1();
                        if (v76)
                        {
                          if (BYTE12(v284))
                          {
                            OUTLINED_FUNCTION_397_1(v167, v168, v169, v170, v171, v172, v173, v174, v227, v230, v234, v236, v238, v240, v242, v244, v246, v250, *v253, *&v253[2], v259, v261, v263, v265, cf, v270, v272, dataLength, v276, v278, *v280, *v281, *v282, v283, v175, v284);
                            valuePtr = **&MEMORY[0x1E6960CC0];
                            v176 = CMTimeCompare(v290, &valuePtr);
                            if ((v176 & 0x80000000) == 0)
                            {
                              v185 = *(v36 + 296);
                              OUTLINED_FUNCTION_397_1(v176, v177, v178, v179, v180, v181, v182, v183, v228, v231, v235, v237, v239, v241, v243, v245, v247, v251, v255, v258, v260, v262, v264, v266, cf, v271, v273, dataLengtha, v277, v279, *v280, *v281, *v282, v283, v184, v284);
                              Seconds = CMTimeGetSeconds(v290);
                              FigStreamingCacheHintPlaybackTime(v185, Seconds);
                            }
                          }
                        }
                      }

                      goto LABEL_258;
                    }

LABEL_281:
                    v165 = *(v33 + 232);
                    if (v165)
                    {
                      CFRelease(v165);
                      *(v33 + 232) = 0;
                    }

                    v166 = *(v33 + 240);
                    if (v166)
                    {
                      CFRelease(v166);
                      *(v33 + 240) = 0;
                    }

                    goto LABEL_285;
                  }

                  HIDWORD(v283) = 0;
                  v39 = v39 & 0x1000 | 0x10000;
                  *v290 = v287;
                  v157 = OUTLINED_FUNCTION_163_1();
                  v163 = segPumpMakeDataCallbackWithOSStatus(v157, v158, v159, 0, v39, v160, v161, v162, 0, 0, &v284, &v283 + 1);
                  v164 = FigRetainProxyIsInvalidated();
                  if (v163 != -15626 && !v164)
                  {
                    if (v163)
                    {
                      v282[0] = 0;
                      v281[0] = OS_LOG_TYPE_DEFAULT;
                      v218 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v219 = os_log_type_enabled(v218, v281[0]);
                      if (OUTLINED_FUNCTION_16_1(v219))
                      {
                        OUTLINED_FUNCTION_205_0();
                        LODWORD(valuePtr.value) = 136315650;
                        OUTLINED_FUNCTION_406_1();
                        *(&valuePtr.flags + 2) = v220;
                        HIWORD(valuePtr.epoch) = 1024;
                        LODWORD(v289) = v163;
                        OUTLINED_FUNCTION_188_1();
                        OUTLINED_FUNCTION_24_1();
                        OUTLINED_FUNCTION_190_0();
                        _os_log_send_and_compose_impl();
                      }

                      OUTLINED_FUNCTION_16();
                      OUTLINED_FUNCTION_238_0();
                      goto LABEL_258;
                    }

                    goto LABEL_277;
                  }
                }

                v44 = cf;
                goto LABEL_261;
              }

              v270 = DateStamp;
              v129 = *(v33 + 832);
              v290[0] = 0;
              valuePtr.value = 0;
              v130 = OUTLINED_FUNCTION_618();
              CacheNameFromSegment = segPumpCreateCacheNameFromSegment(v130, v131, v132, v133);
              if (CacheNameFromSegment)
              {
                goto LABEL_334;
              }

              if (!*(v36 + 296) || (v135 = v290[0], v136 = FigMediaSegmentSpecifierGetStartOffset(v31), FigMediaSegmentSpecifierGetMediaSequence(v31), v137 = OUTLINED_FUNCTION_415_0(), FigStreamingCacheAddMediaMap(v137, v138, v135, v136, v139, v129)))
              {
                value = valuePtr.value;
                StartOffset = FigMediaSegmentSpecifierGetStartOffset(v31);
                v142 = FigMediaSegmentSpecifierGetBytesToRead(v31);
                if (v129)
                {
                  v143 = v142;
                  if (CMBlockBufferGetDataLength(v129))
                  {
                    if (!segPumpFindSavedEntry(v36, value, StartOffset, v143))
                    {
                      v144 = malloc_type_calloc(1uLL, 0x58uLL, 0x1070040389C493CuLL);
                      if (v144)
                      {
                        v145 = v144;
                        v144[1] = CFRetain(value);
                        v145[9] = 0;
                        *(v145 + 80) = 0;
                        v145[8] = CMBlockBufferGetDataLength(v129);
                        v145[3] = StartOffset;
                        v145[4] = v143;
                        v145[5] = 0;
                        if (!v145[6])
                        {
                          v145[2] = CFRetain(v129);
                        }

                        *v145 = 0;
                        **(v36 + 368) = v145;
                        *(v36 + 368) = v145;
                        goto LABEL_249;
                      }

                      OUTLINED_FUNCTION_120();
                      CacheNameFromSegment = FigSignalErrorAtGM();
                      if (CacheNameFromSegment)
                      {
LABEL_334:
                        v146 = CacheNameFromSegment;
LABEL_250:
                        v78 = dataLength;
                        DateStamp = v270;
                        if (valuePtr.value)
                        {
                          CFRelease(valuePtr.value);
                        }

                        if (v290[0])
                        {
                          CFRelease(v290[0]);
                        }

                        v147 = *(v33 + 832);
                        if (v147)
                        {
                          CFRelease(v147);
                          *(v33 + 832) = 0;
                        }

                        if (v146)
                        {
                          goto LABEL_258;
                        }

                        goto LABEL_257;
                      }
                    }
                  }
                }
              }

LABEL_249:
              v146 = 0;
              *(segPumpGetMediaFilePrivateData(v31) + 98) = 1;
              goto LABEL_250;
            }

            v94 = *(v33 + 288);
            if (v94)
            {
              CFRelease(v94);
              *(v33 + 288) = 0;
            }

            if (v31 && FigMediaSegmentSpecifierGetType(v31) == 1)
            {
              *(v33 + 288) = v31;
              MapSegmentSpecifier = v31;
            }

            else
            {
              MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(v31);
              *(v33 + 288) = MapSegmentSpecifier;
              if (!MapSegmentSpecifier)
              {
LABEL_163:
                *(v33 + 320) = *(v33 + 304);
                goto LABEL_164;
              }
            }

            CFRetain(MapSegmentSpecifier);
            goto LABEL_163;
          }
        }
      }
    }

    else
    {
      v90 = 0;
      if (!v31 || !*(v82 + 704))
      {
        goto LABEL_155;
      }
    }

    v90 = FigMediaSegmentSpecifierGetType(v31) == 0;
    goto LABEL_155;
  }

LABEL_69:
  cf = 0;
  OUTLINED_FUNCTION_286_1();
  if (!v76 || v62)
  {
    goto LABEL_77;
  }

  v77 = *(v36 + 264);
  if (!v77 && (*(v36 + 288) & 0x80000000) != 0)
  {
    cf = 0;
    v78 = dataLength;
    goto LABEL_86;
  }

  if (*(v36 + 272))
  {
    if (v61)
    {
      cf = 0;
LABEL_80:
      v78 = dataLength;
LABEL_81:
      v62 = *(v36 + 272);
      goto LABEL_82;
    }

    if (*(v36 + 280))
    {
      cf = 0;
      v61 = *(v36 + 280);
      goto LABEL_80;
    }
  }

  v290[0] = 0;
  valuePtr.value = 0;
  v91 = *(v36 + 288);
  if (v91 == 1)
  {
    v92 = 2;
  }

  else
  {
    v92 = 0;
    if (v91)
    {
      goto LABEL_184;
    }

    v92 = 1;
  }

  valuePtr.value = v92;
LABEL_184:
  if (v77)
  {
    CFNumberGetValue(v77, kCFNumberSInt64Type, v290);
    v92 = valuePtr.value;
    v97 = v290[0];
  }

  else
  {
    v97 = 0;
  }

  if (v92 <= v97)
  {
    v99 = *(v36 + 264);
    if (!v99)
    {
LABEL_217:
      OUTLINED_FUNCTION_120();
LABEL_218:
      FigSignalErrorAtGM();
      goto LABEL_219;
    }

    v98 = CFRetain(v99);
  }

  else
  {
    v98 = CFNumberCreate(*v58, kCFNumberSInt64Type, &valuePtr);
  }

  cf = v98;
  if (!v98)
  {
    goto LABEL_217;
  }

  if (segPumpEnsureAndSetupBasicAESProtector(v36))
  {
    goto LABEL_258;
  }

  if (*(v36 + 8208) && !*v33)
  {
    v101 = FigGetAllocatorForMedia();
    v100 = CFDictionaryCreate(v101, kFigCPEProtectorCryptorCreationOption_DecryptDestination, kFigCPEProtectorCryptorCreationOptionDecryptDestination_Nero, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v100 = 0;
  }

  if (*(v36 + 272))
  {
    v102 = 0;
    if (!v100)
    {
      goto LABEL_200;
    }

    goto LABEL_199;
  }

  v117 = *(v36 + 248);
  v118 = FigGetAllocatorForMedia();
  v102 = FigCPEProtectorCreateCryptor(v117, v118, v100, v36 + 272);
  if (v100)
  {
LABEL_199:
    CFRelease(v100);
  }

LABEL_200:
  if (!v102)
  {
    v103 = *(v36 + 272);
    if (!*(v36 + 8208))
    {
      v104 = OUTLINED_FUNCTION_338_1();
      if (CMBaseObjectSetProperty(v104, v105, v106))
      {
        goto LABEL_258;
      }

      v103 = *(v36 + 272);
    }

    v107 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v107)
    {
      goto LABEL_258;
    }

    v108 = *MEMORY[0x1E695E4D0];
    v254 = *MEMORY[0x1E6961118];
    if (v107(v103))
    {
      goto LABEL_258;
    }

    if (!*(v36 + 280))
    {
      FigGetAllocatorForMedia();
      v109 = OUTLINED_FUNCTION_270();
      if (FigCPEProtectorCreateCryptor(v109, v110, v111, v112))
      {
        goto LABEL_258;
      }
    }

    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      goto LABEL_258;
    }

    v113 = OUTLINED_FUNCTION_338_1();
    if (v114(v113))
    {
      goto LABEL_258;
    }

    v115 = *(v36 + 280);
    v116 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v116 || v116(v115, v254, v108))
    {
      goto LABEL_258;
    }

    v78 = dataLength;
    if (!v61)
    {
      v61 = *(v36 + 280);
    }

    goto LABEL_81;
  }

LABEL_258:
  v44 = cf;
LABEL_259:
  if ((v39 & 2) != 0)
  {
    *(v33 + 871) = 1;
    *(v33 + 1152) = 1;
  }

LABEL_261:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  FigRetainProxyRelease();
  OUTLINED_FUNCTION_191();
}