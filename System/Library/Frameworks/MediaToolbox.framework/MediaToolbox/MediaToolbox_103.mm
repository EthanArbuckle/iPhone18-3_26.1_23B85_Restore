const __CFData *FigMediaPlaylistUtilityGetBitrateCurveDataPointCount(const __CFData *result)
{
  if (result)
  {
    return (CFDataGetLength(result) >> 3);
  }

  return result;
}

CFDataRef FigMediaPlaylistUtilityGetBitrateCurveDataPoints(CFDataRef theData)
{
  if (theData)
  {
    return CFDataGetBytePtr(theData);
  }

  return theData;
}

uint64_t FigMediaPlaylistUtilityDetermineSegmentToSwitchTo_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaPlaylistUtilitySetFigAlternateBitrateCurve_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerAsyncCreateWithOptions(uint64_t a1, const void *a2, const __CFDictionary *a3, void *a4)
{
  cf = 0;
  v18 = 0;
  value = 0;
  if (!a4 || (*a4 = 0, !a2))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    Common = FigSignalErrorAtGM();
LABEL_19:
    v11 = Common;
    goto LABEL_15;
  }

  Common = playerasync_createCommon();
  if (Common)
  {
    goto LABEL_19;
  }

  v8 = v18;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 16) = CFRetain(a2);
  CMNotificationCenterGetDefaultLocalCenter();
  Common = FigNotificationCenterAddWeakListener();
  if (Common)
  {
    goto LABEL_19;
  }

  *(DerivedStorage + 5) = 1;
  Common = fpa_checkSubPlayerHealth(a2);
  if (Common)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    CFDictionaryGetValueIfPresent(a3, @"InterstitialPrimaryPlayerName", &value);
    v10 = value != 0;
  }

  else
  {
    v10 = 0;
  }

  *(DerivedStorage + 144) = v10;
  v11 = FigDispatchQueueHolderCreateWithDispatchQueue();
  v12 = cf;
  if (!v11)
  {
    FigBaseObject = FigPlayerGetFigBaseObject(a2);
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v14)
    {
      v14(FigBaseObject, @"AsynchronousControlQueueHolder", v12);
    }

    *a4 = v8;
    v18 = 0;
    v12 = cf;
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_15:
  if (v18)
  {
    CFRelease(v18);
  }

  return v11;
}

uint64_t itemasync_SetProperties(const void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  cf = 0;
  v17 = 0;
  v15 = 0;
  v14 = 0;
  if (*CMBaseObjectGetDerivedStorage() || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v12 = FigSignalErrorAtGM();
    v11 = 0;
    v6 = 0;
    goto LABEL_13;
  }

  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v6 || *CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v7 = FigSignalErrorAtGM();
    goto LABEL_22;
  }

  v7 = FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification(a1, a2, 0, itemasync_handleSetProperty, &v15, &cf, &v14);
  if (v7)
  {
LABEL_22:
    v12 = v7;
    v11 = 0;
    goto LABEL_13;
  }

  if (v15)
  {
LABEL_12:
    v11 = 0;
    v12 = 0;
    goto LABEL_13;
  }

  v8 = playerasync_createCommand(v6, 27, a1, &v17);
  if (!v8)
  {
    v9 = cf;
    if (cf)
    {
      v9 = CFRetain(cf);
    }

    v10 = v17;
    v17[4] = v9;
    v10[5] = 0;
    playerasync_runAsynchronousCommand(v6, v10);
    if (a3)
    {
      v11 = 0;
      v12 = 0;
      *a3 = v14;
      v14 = 0;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v12 = v8;
  v11 = v17;
LABEL_13:
  fpa_releaseCommand(v11);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v12;
}

uint64_t playerasync_BeginInterruption(const void *a1)
{
  v7 = 0;
  v1 = playerasync_createCommand(a1, 20, 0, &v7);
  v2 = v7;
  if (v1)
  {
    v5 = v1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_298();
    playerasync_runSynchronousCommand(v3, v4);
    v5 = *(v2 + 28);
  }

  fpa_releaseCommand(v2);
  return v5;
}

uint64_t playerasync_SetConnectionActive(const void *a1, char a2)
{
  v9 = 0;
  v3 = playerasync_createCommand(a1, 22, 0, &v9);
  v4 = v9;
  if (v3)
  {
    v7 = v3;
  }

  else
  {
    *(v9 + 32) = a2;
    v5 = OUTLINED_FUNCTION_298();
    playerasync_runSynchronousCommand(v5, v6);
    v7 = *(v4 + 28);
  }

  fpa_releaseCommand(v4);
  return v7;
}

uint64_t playerasync_createCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_createCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_createCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_createCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_createCommon_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_createCommon_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_createCommon_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_createCommon_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_createCommon_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_createCommon_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigPlayerAsyncCreateWithEngineTopologyAndOptions_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

uint64_t playerasync_createCommand_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_runSynchronousCommand_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *(a1 + 28) = result;
  return result;
}

uint64_t FigPlayerAsyncDispatchToPlayerQueue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_runImmediateCommand_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *(a1 + 28) = result;
  return result;
}

uint64_t playerasync_runOneCommand_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_28();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t playerasync_runOneCommand_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_28();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

void playerasync_postPlayerStatusChanged_cold_1()
{
  OUTLINED_FUNCTION_5_16();
  if (!FigCFDictionarySetInt32())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_6_14();
  }

  CFRelease(v0);
}

uint64_t playerasync_postPlayerStatusChanged_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t playerasync_runCopyPropertyCommand_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_28();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t playerasync_runCopyPlayQueueItemCommand_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_28();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t playerasync_createSubItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_createSubItem_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_28();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

void itemasync_postItemStatusChanged_cold_1()
{
  OUTLINED_FUNCTION_5_16();
  if (!FigCFDictionarySetInt32())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_6_14();
  }

  CFRelease(v0);
}

uint64_t itemasync_postItemStatusChanged_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t playerasync_handleSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_handleSetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_handleSetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_handleSetProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_handleSetProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemasync_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemasync_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemasync_CopyProperty_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

uint64_t itemasync_handleSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemasync_handleSetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemasync_handleSetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemasync_handleSetProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemasync_GetDimensions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemasync_GetDimensions_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

uint64_t itemasync_GetDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemasync_GetDuration_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

uint64_t itemasync_SetCurrentTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemasync_SetCurrentTime_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

uint64_t itemasync_GetCurrentTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemasync_GetCurrentTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemasync_CopyTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemasync_CopyTrackProperty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

uint64_t itemasync_MakeReadyForInspection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemasync_MakeReadyForInspection_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

uint64_t itemasync_CopyCommonMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemasync_CopyCommonMetadata_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

uint64_t itemasync_CopyChapterImageData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemasync_CopyChapterImageData_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

uint64_t itemasync_GetNextThumbnailTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemasync_GetNextThumbnailTime_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

uint64_t itemasync_SetCurrentTimeWithRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemasync_SetCurrentTimeWithRange_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

uint64_t itemasync_SetTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemasync_SetTrackProperty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

uint64_t itemasync_CopyFormatReader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemasync_CopyFormatReader_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

uint64_t itemasync_SeekToDateWithID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemasync_SeekToDateWithID_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

uint64_t itemasync_SetCurrentTimeWithRangeAndID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemasync_SetCurrentTimeWithRangeAndID_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

uint64_t itemasync_CopyAsset_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemasync_CopyAsset_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

uint64_t itemasync_ExtractAndRetainNextSampleBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemasync_ExtractAndRetainNextSampleBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

uint64_t itemasync_SetCurrentTimeWithOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemasync_SetCurrentTimeWithOptions_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  v1 = OUTLINED_FUNCTION_4_21(v0);

  fpa_releaseCommand(v1);
}

void itemasync_postSeekWasCanceled_cold_1()
{
  OUTLINED_FUNCTION_5_16();
  if (!FigCFDictionarySetInt32())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_6_14();
  }

  CFRelease(v0);
}

uint64_t itemasync_postSeekWasCanceled_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t playerasync_AddToPlayQueue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_RemoveFromPlayQueue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_CopyPlayQueueItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void playerasync_SetRate_cold_1(void *a1, uint64_t *a2, _DWORD *a3, float a4)
{
  playerasync_cancelQueuedCommandsMatching(a1, 9u, 0);
  Command = playerasync_createCommand(a1, 9, 0, a2);
  *a3 = Command;
  v9 = *a2;
  if (!Command)
  {
    *(v9 + 32) = a4;
    playerasync_runAsynchronousCommand(a1, v9);
    v9 = 0;
  }

  fpa_releaseCommand(v9);
}

uint64_t playerasync_CreatePlaybackItemFromAsset_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_CreatePlaybackItemFromAsset_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t playerasync_SetProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_SetProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_AddExternalStartupTask_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_AddExternalStartupTask_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_RemoveExternalStartupTask_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerasync_RemoveExternalStartupTask_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void playerasync_SilentMute_cold_1(uint64_t a1, uint64_t a2, char a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_180_1();
  Command = playerasync_createCommand(v8, 24, 0, v4);
  v10 = *v4;
  if (!Command)
  {
    *(v10 + 32) = a3;
    playerasync_runImmediateCommand(v5, v10, 0);
    Command = *(v10 + 28);
  }

  *a4 = Command;

  fpa_releaseCommand(v10);
}

uint64_t playerasync_runSynchronousCommandOnQueue_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *(a1 + 28) = result;
  return result;
}

void playerasync_runAsynchronousCommandOnQueue_cold_1()
{
  OUTLINED_FUNCTION_5_16();
  if (!FigCFDictionarySetInt32())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_6_14();
  }

  CFRelease(v0);
}

uint64_t playerasync_runAsynchronousCommandOnQueue_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

void FigAirPlayCryptorUtilHandleStreamingKeyResponse(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v5 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (a2)
      {
        CFRetain(a2);
      }

      if (a1)
      {
        CFRetain(a1);
      }

      v6 = *(v5 + 18);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __FigAirPlayCryptorUtilHandleStreamingKeyResponse_block_invoke;
      block[3] = &__block_descriptor_tmp_14;
      block[4] = v5;
      block[5] = a2;
      block[6] = a1;
      dispatch_async(v6, block);
    }
  }
}

void __FigAirPlayCryptorUtilHandleStreamingKeyResponse_block_invoke(void *a1)
{
  if (!*a1[4])
  {
    FigSimpleMutexLock();
    v2 = a1[4];
    if (*(v2 + 112))
    {
      v3 = *(v2 + 104);
      v4 = a1[5];
      *(v2 + 104) = v4;
      if (v4)
      {
        CFRetain(v4);
      }

      if (v3)
      {
        CFRelease(v3);
      }

      dispatch_semaphore_signal(*(a1[4] + 112));
      v5 = a1[4];
      v6 = *(v5 + 112);
      if (v6)
      {
        dispatch_release(v6);
        v5 = a1[4];
      }

      *(v5 + 112) = 0;
    }

    FigSimpleMutexUnlock();
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
}

uint64_t airplayCryptor_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v7 = 4294954516;
    goto LABEL_10;
  }

  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    goto LABEL_3;
  }

  if (CFEqual(a2, *MEMORY[0x1E6961138]))
  {
    v8 = MEMORY[0x1E695E4D0];
    if (*(DerivedStorage + 40) != 1)
    {
      v8 = MEMORY[0x1E695E4C0];
    }

    v9 = *v8;
    if (!*v8)
    {
      goto LABEL_9;
    }

LABEL_8:
    v9 = CFRetain(v9);
LABEL_9:
    v7 = 0;
    *a4 = v9;
    goto LABEL_10;
  }

  if (CFEqual(a2, *MEMORY[0x1E6960D00]))
  {
    v9 = *(DerivedStorage + 64);
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, *MEMORY[0x1E6960D10]))
  {
    v9 = *(DerivedStorage + 48);
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v7 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t airplayCryptor_SetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294954516;
  }

  v6 = DerivedStorage;
  FigSimpleMutexLock();
  if (*v6)
  {
    v7 = 4294954511;
    goto LABEL_26;
  }

  if (CFEqual(a2, *MEMORY[0x1E6961138]))
  {
    v7 = 0;
    *(v6 + 40) = CFBooleanGetValue(a3);
    goto LABEL_26;
  }

  if (!CFEqual(a2, *MEMORY[0x1E69610F0]))
  {
    if (CFEqual(a2, @"AirPlayReceiverCapabilities"))
    {
      v7 = *(v6 + 96);
      *(v6 + 96) = a3;
      if (!a3)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (CFEqual(a2, *MEMORY[0x1E6962AC0]))
    {
      v7 = *(v6 + 88);
      *(v6 + 88) = a3;
      if (!a3)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x1E6962B00]))
      {
        v7 = 4294954512;
        goto LABEL_26;
      }

      v7 = *(v6 + 80);
      *(v6 + 80) = a3;
      if (!a3)
      {
LABEL_16:
        if (v7)
        {
          CFRelease(v7);
          v7 = 0;
        }

        goto LABEL_26;
      }
    }

LABEL_15:
    CFRetain(a3);
    goto LABEL_16;
  }

  v8 = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v9 = v8;
    v10 = *(v8 + 56);
    *(v8 + 56) = a3;
    CFRetain(a3);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], *(v9 + 56), 0, 0, 0);
    v12 = v11;
    if (v11 && (v13 = CFGetTypeID(v11), v13 == CFDictionaryGetTypeID()))
    {
      Value = CFDictionaryGetValue(v12, *MEMORY[0x1E6962AF8]);
      if (Value && (v15 = Value, v16 = CFGetTypeID(Value), v16 == CFDataGetTypeID()))
      {
        v17 = *(v9 + 48);
        *(v9 + 48) = v15;
        CFRetain(v15);
        if (v17)
        {
          CFRelease(v17);
        }

        v7 = 0;
        *(v9 + 40) = 1;
      }

      else
      {
        v7 = FigSignalErrorAtGM();
      }
    }

    else
    {
      v7 = FigSignalErrorAtGM();
      if (!v12)
      {
        goto LABEL_26;
      }
    }

    CFRelease(v12);
  }

  else
  {
    v7 = 4294954516;
  }

LABEL_26:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t airplayCryptor_StartKeyExchangeForAirPlay(uint64_t a1, UInt8 **a2, CFDataRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  *bytes = 0u;
  *length = 0u;
  v6 = 4294955146;
  if (a3)
  {
    if (a2)
    {
      v7 = DerivedStorage;
      if (DerivedStorage)
      {
        FigSimpleMutexLock();
        v8 = *(v7 + 96);
        if (v8)
        {
          LODWORD(v15) = CFDataGetLength(v8);
          length[1] = CFDataGetBytePtr(*(v7 + 96));
        }

        hYNpsn7dXgySzQR(bytes);
        if (v9)
        {
          v6 = v9;
        }

        else
        {
          v10 = CFDataCreate(*MEMORY[0x1E695E480], bytes[1], LODWORD(length[0]));
          if (v10)
          {
            v6 = 0;
            v11 = bytes[0];
            *(v7 + 32) = bytes[0];
            *a2 = v11;
            *a3 = v10;
          }

          else
          {
            v6 = 4294955145;
          }
        }

        FigSimpleMutexUnlock();
      }
    }
  }

  return v6;
}

uint64_t airplayCryptor_CreateKeyResponseForAirPlay(uint64_t a1, uint64_t a2, const __CFData *a3, CFDataRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  *length = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = 4294955146;
  v24 = 0;
  if (!a3)
  {
    goto LABEL_23;
  }

  if (!a2)
  {
    goto LABEL_23;
  }

  if (!a4)
  {
    goto LABEL_23;
  }

  v10 = DerivedStorage;
  if (!DerivedStorage)
  {
    goto LABEL_23;
  }

  if (!DerivedStorage[9] || !DerivedStorage[10] || !DerivedStorage[11])
  {
    OUTLINED_FUNCTION_243();
    v9 = FigSignalErrorAtGM();
    v8 = 0;
    goto LABEL_23;
  }

  FigSimpleMutexLock();
  *(&v26 + 1) = v10[4];
  *&v27 = CFDataGetBytePtr(a3);
  if (!v27 || (DWORD2(v27) = CFDataGetLength(a3)) == 0)
  {
    v8 = 0;
    v9 = 4294955136;
    goto LABEL_22;
  }

  *&v28 = CFDataGetBytePtr(v10[6]);
  DWORD2(v28) = CFDataGetLength(v10[6]);
  *(&v25 + 1) = CFDataGetBytePtr(v10[9]);
  LODWORD(v26) = CFDataGetLength(v10[9]);
  v11 = v10[10];
  if (!v11 || (Count = CFArrayGetCount(v11), (v13 = Count) == 0))
  {
    OUTLINED_FUNCTION_243();
    v9 = FigSignalErrorAtGM();
    v8 = 0;
    goto LABEL_22;
  }

  v8 = malloc_type_calloc(Count, 4uLL, 0x100004052888210uLL);
  v14 = 0;
  v15 = v8;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v10[10], v14);
    if (!ValueAtIndex || (v17 = ValueAtIndex, v18 = CFGetTypeID(ValueAtIndex), v18 != CFNumberGetTypeID()) || !CFNumberGetValue(v17, kCFNumberSInt32Type, v15))
    {
      OUTLINED_FUNCTION_243();
      v21 = FigSignalErrorAtGM();
LABEL_25:
      v9 = v21;
      goto LABEL_22;
    }

    ++v14;
    v15 += 4;
  }

  while (v13 != v14);
  BytePtr = CFDataGetBytePtr(v10[11]);
  v20 = CFDataGetLength(v10[11]);
  v21 = V2qUlL4PZ5VKVXDsUHg5z(BytePtr, v20, v8, v13, &v24);
  if (v21)
  {
    goto LABEL_25;
  }

  *&v25 = v24;
  tgrNklBQEZq9N92(&v25);
  if (v21)
  {
    goto LABEL_25;
  }

  v22 = CFDataCreate(*MEMORY[0x1E695E480], length[0], LODWORD(length[1]));
  if (v22)
  {
    v9 = 0;
    *a4 = v22;
  }

  else
  {
    v9 = 4294955145;
  }

LABEL_22:
  FigSimpleMutexUnlock();
LABEL_23:
  free(v8);
  return v9;
}

uint64_t FigCPECryptorCreateAirPlay_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCPECryptorCreateAirPlay_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCPECryptorCreateAirPlay_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCPECryptorCreateAirPlay_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCPECryptorCreateAirPlay_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCPECryptorCreateAirPlay_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t airplayCryptor_CreateKeyRequest_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t airplayCryptor_CreateKeyRequest_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void airplayCryptor_CreateKeyRequest_cold_3(const void *a1, _DWORD *a2)
{
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t airplayCryptor_CreateKeyRequest_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t airplayCryptor_CreateKeyRequest_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t airplayCryptor_CreateKeyRequest_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t airplayCryptor_CreateKeyRequest_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t airplayCryptor_CreateKeyRequest_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t airplayCryptor_CreateKeyRequest_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t airplayCryptor_SetKeyRequestResponse_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t audioRendererCentral_setFigAudioSession(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  cf = 0;
  v4 = *MEMORY[0x1E695E480];
  SInt32 = FigCFNumberCreateSInt32();
  if (!a2)
  {
    goto LABEL_22;
  }

  v6 = *(CMBaseObjectGetVTable() + 16);
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = *(v6 + 56);
  if (!v7)
  {
LABEL_28:
    v19 = 4294948071;
    goto LABEL_23;
  }

  v8 = v7(a2, *MEMORY[0x1E69AFDC8], SInt32);
  if (v8)
  {
LABEL_33:
    v19 = v8;
    goto LABEL_23;
  }

  audioRendererCentral_removeAudioSessionListeners();
  if (!audioRendererCentral_maybeSetAudioSessionStateToNotPlaying())
  {
    v9 = CMBaseObjectGetDerivedStorage();
    if (*(v9 + 81) == 1)
    {
      if (*(v9 + 64))
      {
        *(v9 + 81) = 0;
      }
    }
  }

  v10 = *(DerivedStorage + 64);
  *(DerivedStorage + 64) = a2;
  CFRetain(a2);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(CMBaseObjectGetVTable() + 16);
  if (!v11)
  {
LABEL_22:
    v19 = 4294948075;
    goto LABEL_23;
  }

  v12 = *(v11 + 16);
  if (!v12)
  {
    goto LABEL_28;
  }

  v8 = v12(a2, @"FAS_AudioSessionID", v4, &v23);
  if (v8)
  {
    goto LABEL_33;
  }

  *(DerivedStorage + 48) = FigCFNumberGetSInt32();
  v13 = *DerivedStorage;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v14)
  {
    v14(v13, @"FigAudioSession", a2);
  }

  audioRendererCentral_updateBufferedAirPlayAudioInUseFromSubRenderer();
  audioRendererCentral_updateRoutingContextFromAudioSession();
  if (*(CMBaseObjectGetDerivedStorage() + 64))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_8_10();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_7_9();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_13_6();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_6_15();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_13_6();
  }

  v15 = *(DerivedStorage + 64);
  if (v15 && (v16 = *(CMBaseObjectGetVTable() + 16)) != 0 && (v17 = *(v16 + 8)) != 0)
  {
    v17(v15, @"FAS_IsActive", v4, &cf);
    v18 = cf;
  }

  else
  {
    v18 = 0;
  }

  v21 = *DerivedStorage;
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v22)
  {
    v22(v21, @"IsActiveAudioSessionApp", v18);
  }

  v19 = 0;
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  return v19;
}

void audioRendererCentral_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (*DerivedStorage)
    {
      CFRelease(*DerivedStorage);
      *DerivedStorage = 0;
    }
  }

  audioRendererCentral_removeAudioSessionListeners();
  if (!audioRendererCentral_maybeSetAudioSessionStateToNotPlaying())
  {
    v1 = CMBaseObjectGetDerivedStorage();
    if (*(v1 + 81) == 1)
    {
      if (*(v1 + 64))
      {
        *(v1 + 81) = 0;
      }
    }
  }

  v2 = *(DerivedStorage + 64);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 64) = 0;
  }

  v3 = *(DerivedStorage + 56);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 56) = 0;
  }

  v4 = *(DerivedStorage + 88);
  if (v4)
  {

    *(DerivedStorage + 88) = 0;
  }

  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    dispatch_release(v5);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t audioRendererCentral_removeAudioSessionListeners()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 64))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_8_10();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_7_9();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_6_15();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

void audioRendererCentral_interruptionNotificationListener(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5 && *(DerivedStorage + 64) == a4 && FigCFDictionaryGetInt32IfPresent())
  {
    if (dword_1EAF16C90)
    {
      v10 = OUTLINED_FUNCTION_2_27();
      OUTLINED_FUNCTION_9_8(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, SWORD2(v19), SBYTE6(v19), HIBYTE(v19), v20);
      OUTLINED_FUNCTION_40();
      if (v5)
      {
        if (a2)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_0_31();
        OUTLINED_FUNCTION_4_22();
      }

      OUTLINED_FUNCTION_1_29();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    audioRendererCentral_postNotification(a2, @"Interrupted");
  }
}

void audioRendererCentral_commonFigAudioSessionPropertyDidChangeNotificationListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(CMBaseObjectGetDerivedStorage() + 64) == a4)
  {

    audioRendererCentral_updateRoutingContextFromAudioSession();
  }
}

uint64_t *audioRendererCentral_isActiveDidChangeNotificationListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    v8 = result;
    if (result[8] == a4)
    {
      result = CFDictionaryGetValue(a5, *MEMORY[0x1E69AFA78]);
      if (result)
      {
        v9 = result;
        v10 = CFGetTypeID(result);
        result = CFBooleanGetTypeID();
        if (v10 == result)
        {
          v11 = *v8;
          VTable = CMBaseObjectGetVTable();
          v13 = *(VTable + 8);
          result = (VTable + 8);
          v14 = *(v13 + 56);
          if (v14)
          {

            return v14(v11, @"IsActiveAudioSessionApp", v9);
          }
        }
      }
    }
  }

  return result;
}

uint64_t audioRendererCentral_applicationStateDidChangeNotificationListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 64) == a4)
  {
    result = FigCFDictionaryGetInt32IfPresent();
    if (dword_1EAF16C90)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_40();
      if (v4)
      {
        if (a2)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_4_22();
      }

      OUTLINED_FUNCTION_1_29();
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

void audioRendererCentral_updateRoutingContextFromAudioSession()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  v27 = 0;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v2 = MEMORY[0x1E69B0370];
  if (!CFPreferenceNumberWithDefault)
  {
    if (!DerivedStorage[8])
    {
      goto LABEL_37;
    }

    valuePtr = 8;
    v3 = *(CMBaseObjectGetDerivedStorage() + 64);
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v6 = Mutable;
    cf = 0;
    v28 = 0;
    if (v3 && Mutable)
    {
      CFArrayAppendValue(Mutable, *MEMORY[0x1E69AFCC0]);
      CFArrayAppendValue(v6, *MEMORY[0x1E69B0020]);
      CFArrayAppendValue(v6, *MEMORY[0x1E69AFF80]);
      CFArrayAppendValue(v6, *MEMORY[0x1E69B02C0]);
      CFArrayAppendValue(v6, *v2);
      v7 = *(CMBaseObjectGetVTable() + 16);
      if (v7)
      {
        v8 = *(v7 + 112);
        if (v8)
        {
          v8(v3, v6, &cf, 0);
        }
      }

      FigCFDictionaryGetValue();
      Value = FigCFDictionaryGetValue();
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      }

      FigCFDictionaryGetValue();
      v10 = FigCFDictionaryGetValue();
      FigCFDictionaryGetBooleanIfPresent();
      v11 = 0;
      if ((valuePtr == 32 || valuePtr == 16) && v10 == 0)
      {
LABEL_29:
        CFRelease(v6);
        if (cf)
        {
          CFRelease(cf);
        }

        if (!v11)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

      if (FigCFEqual() || FigCFEqual() && !v10 || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
      {
        v11 = 0;
        goto LABEL_29;
      }
    }

    else if (!Mutable)
    {
LABEL_32:
      v14 = DerivedStorage[8];
      if (v14)
      {
        v15 = *(CMBaseObjectGetVTable() + 16);
        if (v15)
        {
          v16 = *(v15 + 8);
          if (v16)
          {
            v16(v14, @"FAS_RoutingContext", v4, &v27);
          }
        }
      }

      goto LABEL_37;
    }

    v11 = 1;
    goto LABEL_29;
  }

  if (FigServer_IsAirplayd() || FigServer_IsMediaplaybackd())
  {
    if (FigRoutingContextRemoteCopySystemMusicContext())
    {
      goto LABEL_43;
    }
  }

  else if (FigRoutingContextCopySystemMusicContext())
  {
    goto LABEL_43;
  }

LABEL_37:
  v17 = DerivedStorage[8];
  if (!v17 || (v18 = *(CMBaseObjectGetVTable() + 16)) == 0 || (v19 = *(v18 + 48)) == 0 || v19(v17, *v2, 0, &v26) || (v23 = *DerivedStorage, v24 = v26, (v25 = *(*(CMBaseObjectGetVTable() + 8) + 56)) != 0) && !v25(v23, @"RemoteDeviceID", v24))
  {
    v20 = *DerivedStorage;
    v21 = v27;
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v22)
    {
      v22(v20, @"RoutingContext", v21);
    }
  }

LABEL_43:
  if (v26)
  {
    CFRelease(v26);
  }

  if (v27)
  {
    CFRelease(v27);
  }
}

uint64_t audioRendererCentral_maybeSetAudioSessionStateToNotPlaying()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 80) != 1)
  {
    return 0;
  }

  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 64);
  if (!v2)
  {
    return 0;
  }

  v3 = *(CMBaseObjectGetVTable() + 16);
  if (!v3)
  {
    return 4294948075;
  }

  v4 = *(v3 + 56);
  if (!v4)
  {
    return 4294948071;
  }

  result = v4(v2, *MEMORY[0x1E69B00C0], *MEMORY[0x1E695E4C0]);
  if (!result)
  {
    *(v1 + 80) = 0;
  }

  return result;
}

uint64_t audioRendererCentral_EnqueueSampleBuffer(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *DerivedStorage;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6)
  {
    return 4294954514;
  }

  result = v6(v5, a2);
  if (!result)
  {
    v8 = DerivedStorage[7];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __audioRendererCentral_EnqueueSampleBuffer_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_sync(v8, block);
    return 0;
  }

  return result;
}

uint64_t audioRendererCentral_AttachToSynchronizer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    goto LABEL_8;
  }

  timebase = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = v7(a2, &timebase);
  v9 = timebase;
  if (!v8)
  {
    Rate = CMTimebaseGetRate(timebase);
    v8 = audioRendererCentral_ProcessRateChange(a1, 1, Rate);
    v9 = timebase;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (!v8)
  {
LABEL_8:
    v11 = *DerivedStorage;
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v12)
    {
      v13 = v12(v11, a2, a3);
      v8 = v13;
      if (!a2 && !v13)
      {
        return audioRendererCentral_ProcessRateChange(a1, 0, 0.0);
      }

      return v8;
    }

    return 4294954514;
  }

  return v8;
}

uint64_t FigSampleBufferAudioRendererCentralCreateWithOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferAudioRendererCentralCreateWithOptions_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferConsumerSbufInspectorCreate(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const char *a5, void *a6)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_0_32();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_0_32();
  fig_note_initialize_category_with_default_work_cf();
  v10 = 4294954535;
  if (a3)
  {
    if (a2)
    {
      if (a6)
      {
        FigSampleBufferConsumerGetClassID();
        v10 = CMDerivedObjectCreate();
        if (!v10)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          v12 = CFRetain(a2);
          v13 = MEMORY[0x1E695E480];
          *DerivedStorage = v12;
          v14 = *v13;
          if (a5)
          {
            v15 = a5;
          }

          else
          {
            v15 = "-";
          }

          v16 = CFStringCreateWithCString(v14, v15, 0x8000100u);
          DerivedStorage[4] = v16;
          if (v16)
          {
            Mutable = CFArrayCreateMutable(v14, 0, MEMORY[0x1E695E9C0]);
            DerivedStorage[3] = Mutable;
            if (Mutable)
            {
              v10 = 0;
              DerivedStorage[1] = a3;
              DerivedStorage[2] = a4;
              *a6 = 0;
            }

            else
            {
              return 4294954536;
            }
          }

          else
          {
            return 4294954536;
          }
        }
      }
    }
  }

  return v10;
}

uint64_t sbcins_SendSampleBuffer(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigEndpointStreamAudioEngineSbufTracerDebugPrint(a2);
  v4 = CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v6 = Mutable;
    if (CFArrayGetCount(*(v4 + 24)) >= 1)
    {
      FigCFArrayApplyBlock();
      FigCFArrayRemoveAllValues();
      FigCFArrayAppendArray();
    }

    CFRelease(v6);
  }

  v7 = (*(DerivedStorage + 8))(a2, *(DerivedStorage + 16));
  if (v7 == 3)
  {
    return 0;
  }

  if (v7 == 2)
  {
    CFArrayAppendValue(*(DerivedStorage + 24), a2);
    return 0;
  }

  if (v7 == 1 && (v8 = *DerivedStorage, (v9 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0))
  {
    return v9(v8, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigContentKeyBossCreateRemoteWithObjectID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    OUTLINED_FUNCTION_471();
    v5 = ckbremote_ensureClientEstablished();
    if (!v5)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      FigContentKeyBossGetClassID();
      v7 = CMDerivedObjectCreate();
      v15 = OUTLINED_FUNCTION_10_11(v7, v8, v9, v10, v11, v12, v13, v14, v18, 0);
      if (AllocatorForMedia)
      {
        if (!v15)
        {
          return AllocatorForMedia;
        }
      }

      else
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        DerivedStorage[2] = FigSimpleMutexCreate();
        *DerivedStorage = v4;
        AllocatorForMedia = FigXPCRemoteClientAssociateObject();
        if (!AllocatorForMedia)
        {
          *v3 = v19;
          return AllocatorForMedia;
        }

        if (!v19)
        {
          return AllocatorForMedia;
        }

        v15 = v19;
      }

      CFRelease(v15);
      return AllocatorForMedia;
    }

    return v5;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigContentKeyBossCreateRemote(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  RemoteWithObjectID = ckbremote_ensureClientEstablished();
  if (!RemoteWithObjectID)
  {
    RemoteWithObjectID = FigXPCCreateBasicMessage();
    if (!RemoteWithObjectID)
    {
      v2 = 0;
      v12 = dyld_program_sdk_at_least();
      xpc_dictionary_set_BOOL(0, ".isClientSDKVersion2025AndLater", v12);
      RemoteWithObjectID = OUTLINED_FUNCTION_9_9();
      if (!RemoteWithObjectID)
      {
        uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
        if (uint64)
        {
          RemoteWithObjectID = FigContentKeyBossCreateRemoteWithObjectID(uint64, uint64, a2);
          goto LABEL_7;
        }

LABEL_8:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        RemoteWithObjectID = FigSignalErrorAtGM();
      }
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_10_11(RemoteWithObjectID, v5, v6, v7, v8, v9, v10, v11, 0, 0);
  FigXPCRelease();
  FigXPCRelease();
  return v2;
}

uint64_t ckbremote_handleServerMessage()
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

uint64_t ckbremote_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigXPCRemoteClientDisassociateObject();
  if (!*(DerivedStorage + 8) && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  FigSimpleMutexDestroy();
  FigXPCRelease();
  v1 = *(DerivedStorage + 88);
  if (v1)
  {
    dispatch_release(v1);
  }

  v2 = *(DerivedStorage + 80);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 144);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(DerivedStorage + 136);
  if (v4)
  {
    CFRelease(v4);
  }

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t ckbremote_processRequestEntry(uint64_t a1, uint64_t a2, int64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, int64_t *a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_20();
  v15 = FigXPCCreateBasicMessage();
  if (v15 || (v15 = FigContentKeyBossClientServerXPC_SerializeKeyRequestParams(xdict, a2), v15))
  {
    v16 = v15;
  }

  else
  {
    xpc_dictionary_set_int64(xdict, ".groupID", a3);
    xpc_dictionary_set_BOOL(xdict, ".reuseExistingKeyFromAnyGroup", a4 != 0);
    FigSimpleMutexLock();
    if (*(DerivedStorage + 96))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }

    else
    {
      if (a7)
      {
        *(DerivedStorage + 96) = 1;
        __copy_assignment_8_8_t0w8_pa0_16609_8_pa0_37959_16_pa0_51628_24((DerivedStorage + 104), a7);
      }

      if (!*(DerivedStorage + 136))
      {
        *(DerivedStorage + 136) = FigCFWeakReferenceHolderCreateWithReferencedObject();
      }

      if (!*(DerivedStorage + 144))
      {
        *(DerivedStorage + 144) = FigXPCRetain();
      }
    }

    FigSimpleMutexUnlock();
    if (a7)
    {
      if (a7[1])
      {
        xpc_dictionary_set_BOOL(xdict, ".installDidSucceed", 1);
      }

      if (a7[2])
      {
        xpc_dictionary_set_BOOL(xdict, ".installDidFail", 1);
      }

      if (a7[3])
      {
        xpc_dictionary_set_BOOL(xdict, ".installDidUpdateContentKeyBossToNewBoss", 1);
      }
    }

    v16 = OUTLINED_FUNCTION_9_9();
    if (!v16)
    {
      *a10 = xpc_dictionary_get_int64(v18, ".requestID");
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v16;
}

uint64_t ckb_createRequestDataEntry(uint64_t a1, int64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_20();
  v5 = FigXPCCreateBasicMessage();
  if (v5 || (xpc_dictionary_set_int64(xdict, ".requestID", a2), v5 = FigContentKeyBossClientServerXPC_SerializeKeyRequestDataParams(xdict, a3), v5))
  {
    v6 = v5;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_9_9();
    if (!v6)
    {
      FigXPCMessageCopyCFData();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v6;
}

uint64_t ckb_createPersistableKeyDataEntry(uint64_t a1, int64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_20();
  v3 = FigXPCCreateBasicMessage();
  if (v3 || (xpc_dictionary_set_int64(xdict, ".requestID", a2), v3 = FigXPCMessageSetCFData(), v3))
  {
    v4 = v3;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_9_9();
    if (!v4)
    {
      FigXPCMessageCopyCFData();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v4;
}

uint64_t ckb_processResponseEntry()
{
  OUTLINED_FUNCTION_471();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_23();
  v3 = FigXPCCreateBasicMessage();
  if (!v3)
  {
    xpc_dictionary_set_int64(xdict, ".requestID", v1);
    v3 = FigContentKeyBossClientServerXPC_SerializeKeyResponseSpecifier(xdict, v0);
    if (!v3)
    {
      v3 = FigXPCRemoteClientSendAsyncMessage();
    }
  }

  OUTLINED_FUNCTION_10_11(v3, v4, v5, v6, v7, v8, v9, v10, v12, xdict);
  FigXPCRelease();
  return v2;
}

uint64_t ckb_processResponseErrorEntry()
{
  OUTLINED_FUNCTION_471();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_23();
  v2 = FigXPCCreateBasicMessage();
  if (!v2)
  {
    xpc_dictionary_set_int64(xdict, ".requestID", v0);
    v2 = FigXPCMessageSetCFError();
    if (!v2)
    {
      v2 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  OUTLINED_FUNCTION_10_11(v2, v3, v4, v5, v6, v7, v8, v9, v11, xdict);
  FigXPCRelease();
  return v1;
}

uint64_t ckb_renewEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigXPCCreateBasicMessage();
  if (v9 || (v9 = FigContentKeyBossClientServerXPC_SerializeKeySpecifier(0, a2), v9))
  {
    v11 = v9;
  }

  else
  {
    FigSimpleMutexLock();
    if (*(DerivedStorage + 96))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }

    FigSimpleMutexUnlock();
    v10 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    v11 = v10;
    if (a6)
    {
      if (!v10)
      {
        v11 = FigXPCMessageCopyCFArray();
        if (!v11)
        {
          *a6 = 0;
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v11;
}

uint64_t ckb_setRequestHandlingCallbacksEntry(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_23();
  v4 = FigXPCCreateBasicMessage();
  if (v4)
  {
    goto LABEL_25;
  }

  FigSimpleMutexLock();
  v5 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v5)
  {
    fig_log_get_emitter();
    v4 = FigSignalErrorAtGM();
LABEL_25:
    v9 = v4;
    goto LABEL_23;
  }

  v6 = v5;
  v7 = DerivedStorage[10];
  DerivedStorage[10] = v5;
  CFRetain(v5);
  if (v7)
  {
    CFRelease(v7);
  }

  if (a2)
  {
    __copy_assignment_8_8_t0w8_pa0_18803_8_pa0_11926_16_pa0_32929_24_pa0_16857_32_pa0_23185_40_pa0_3293_48(DerivedStorage + 3, a2);
  }

  v8 = DerivedStorage[11];
  if (v8)
  {
    DerivedStorage[11] = 0;
    xpc_release(v8);
  }

  DerivedStorage[11] = FigXPCRetain();
  FigSimpleMutexUnlock();
  if (a2)
  {
    if (a2[1])
    {
      xpc_dictionary_set_BOOL(xdict, ".installDidProvideKR", 1);
    }

    if (a2[2])
    {
      xpc_dictionary_set_BOOL(xdict, ".installDidProvideRKR", 1);
    }

    if (a2[3])
    {
      xpc_dictionary_set_BOOL(xdict, ".installDidUPK", 1);
    }

    if (a2[4])
    {
      xpc_dictionary_set_BOOL(xdict, ".installDidSucceed", 1);
    }

    if (a2[5])
    {
      xpc_dictionary_set_BOOL(xdict, ".installDidFail", 1);
    }

    if (a2[6])
    {
      xpc_dictionary_set_BOOL(xdict, ".installDidExternalProtectionStatusChange", 1);
    }
  }

  v9 = FigXPCRemoteClientSendSyncMessage();
  CFRelease(v6);
LABEL_23:
  FigXPCRelease();
  return v9;
}

uint64_t ckb_createGroupEntry(uint64_t a1, int64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_20();
  v3 = FigXPCCreateBasicMessage();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_9_9();
    if (!v4)
    {
      *a2 = xpc_dictionary_get_int64(xdict, ".groupID");
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v4;
}

uint64_t ckb_destroyGroupEntry(uint64_t a1, int64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_23();
  if (!FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_int64(xdict, ".groupID", a2);
    FigXPCRemoteClientSendSyncMessage();
  }

  OUTLINED_FUNCTION_14_8();
  return v2;
}

uint64_t ckb_associateRequestWithGroupEntry()
{
  OUTLINED_FUNCTION_471();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_23();
  v3 = FigXPCCreateBasicMessage();
  if (!v3)
  {
    xpc_dictionary_set_int64(xdict, ".requestID", v1);
    xpc_dictionary_set_int64(xdict, ".groupID", v0);
    v3 = FigXPCRemoteClientSendSyncMessage();
  }

  OUTLINED_FUNCTION_10_11(v3, v4, v5, v6, v7, v8, v9, v10, v12, xdict);
  FigXPCRelease();
  return v2;
}

uint64_t ckb_setClientManagedBossEntry(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_12_8();
  if (!FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_uint64(xdict, ".clientManagedBossObjectID", *a2);
    FigXPCRemoteClientSendSyncMessage();
  }

  OUTLINED_FUNCTION_14_8();
  return DerivedStorage;
}

uint64_t ckb_createSecureTokenDataEntry(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_20();
  v3 = FigXPCCreateBasicMessage();
  if (v3 || (v3 = FigContentKeyBossClientServerXPC_SerializeSecureTokenRequestSpecifier(v6, a2), v3))
  {
    v4 = v3;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_9_9();
    if (!v4)
    {
      FigXPCMessageCopyCFData();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v4;
}

uint64_t ckb_getExternalProtectionStatusEntry(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v5 = FigSignalErrorAtGM();
LABEL_9:
    v6 = v5;
    goto LABEL_7;
  }

  v5 = FigXPCCreateBasicMessage();
  if (v5)
  {
    goto LABEL_9;
  }

  v5 = FigContentKeyBossClientServerXPC_SerializeKeySpecifier(0, a2);
  if (v5)
  {
    goto LABEL_9;
  }

  v6 = OUTLINED_FUNCTION_9_9();
  if (!v6)
  {
    *a3 = xpc_dictionary_get_uint64(0, ".externalProtectionStatus");
  }

LABEL_7:
  FigXPCRelease();
  FigXPCRelease();
  return v6;
}

uint64_t ckb_revokeEntry(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v3 = FigXPCCreateBasicMessage();
    if (v3 || (v3 = FigContentKeyBossClientServerXPC_SerializeKeySpecifier(0, a2), v3))
    {
      v4 = v3;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    v4 = FigSignalErrorAtGM();
  }

  FigXPCRelease();
  return v4;
}

uint64_t ckb_getLoggingIdentifierEntry(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (!FigXPCCreateBasicMessage() && !OUTLINED_FUNCTION_9_9())
    {
      FigXPCMessageCopyCFString();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_14_8();
  FigXPCRelease();
  return v2;
}

uint64_t ckb_mergeBossFromAssetIntoClientManagedBossEntry(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    FigUserCrashWithMessage();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  FigUserCrashWithMessage();
LABEL_3:
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_12_8();
  if (!FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_uint64(xdict, ".clientManagedBossObjectID", *a2);
    FigXPCRemoteClientSendSyncMessage();
  }

  OUTLINED_FUNCTION_14_8();
  return DerivedStorage;
}

uint64_t ckbremote_copyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckbremote_copyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckbremote_setProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckbremote_setProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigGaplessAudioEditCursorCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigGaplessAudioEditCursorCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigGaplessAudioEditCursorCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigGaplessAudioEditCursorCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigGaplessAudioEditCursorCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigGaplessAudioEditCursorCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t gaec_Copy_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t gaec_Copy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigMediaServerStart_cold_1(int a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_1962D5000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed to register startup work with watchdog. err = %d", v1, 8u);
}

uint64_t ckb_destroyGroupWithMutex(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (_os_feature_enabled_impl() && *(CMBaseObjectGetDerivedStorage() + 192))
  {
    OUTLINED_FUNCTION_140_0();
    v7 = ckb_replaceBossStorageAndCopyUpdatedBossWhenBossStaleWithBossMutex(a1, v5, v6);
    if (v7)
    {
      v12 = v7;
      v8 = 0;
      goto LABEL_22;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  if (!CFDictionaryGetValue(*(DerivedStorage + 104), a2))
  {
    OUTLINED_FUNCTION_239();
    v12 = FigSignalErrorAtGM();
LABEL_22:
    v9 = 0;
    goto LABEL_12;
  }

  v9 = ckbutil_keyGroupID_copyLoggingDescription(a2);
  if (dword_1EAF16CF0)
  {
    OUTLINED_FUNCTION_147();
    v10 = OUTLINED_FUNCTION_126();
    v11 = os_log_type_enabled(v10, type);
    if (OUTLINED_FUNCTION_16_1(v11))
    {
      OUTLINED_FUNCTION_44_4();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_36();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_507();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  CFDictionaryRemoveValue(*(DerivedStorage + 104), a2);
  v12 = 0;
LABEL_12:
  v13 = _os_feature_enabled_impl();
  if (v8 && v13 && v12 && a1)
  {
    CFRelease(a1);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v12;
}

uint64_t ckb_processRequest(char *a1, uint64_t a2, char *a3, int a4, uint64_t a5, uint64_t a6, void *a7, const void *a8, NSObject *a9, void *a10)
{
  v161 = a5;
  v164 = a6;
  v167 = a8;
  LODWORD(v172) = a4;
  v13 = a1;
  v14 = a10;
  v204 = *MEMORY[0x1E69E9840];
  v188 = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v186 = 0;
  v187 = DerivedStorage;
  v184 = 0;
  v185 = 0;
  v182 = 0;
  v183 = 0;
  cf = 0;
  FigSimpleMutexLock();
  v16 = &unk_1EAF16000;
  v17 = &unk_1EAF16000;
  v175 = a3;
  if (dword_1EAF16CF0)
  {
    OUTLINED_FUNCTION_201_1();
    v18 = OUTLINED_FUNCTION_49_2();
    if (os_log_type_enabled(v18, BYTE3(type)))
    {
      v19 = HIDWORD(type);
    }

    else
    {
      v19 = HIDWORD(type) & 0xFFFFFFFE;
    }

    if (v19)
    {
      v20 = *(DerivedStorage + 184);
      *v189 = 136315650;
      *&v189[4] = "ckb_processRequest";
      *&v189[12] = 2114;
      *&v189[14] = v20;
      *&v189[22] = 2082;
      v190 = "ckb_processRequest";
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_45_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2 || !a10)
  {
    OUTLINED_FUNCTION_26_5();
    started = FigSignalErrorAtGM();
    v124 = 0;
    goto LABEL_102;
  }

  v171 = a10;
  if (_os_feature_enabled_impl())
  {
    if (*(a2 + 65))
    {
      v201 = 0;
      v199 = 0u;
      v200 = 0u;
      v198 = 0u;
      __copy_assignment_8_8_t0w8_pa0_18803_8_pa0_11926_16_pa0_32929_24_pa0_16857_32_pa0_23185_40_pa0_3293_48(&v198, (DerivedStorage + 32));
      if (!v200)
      {
        FigUserCrashWithMessage();
      }

      if (!*(&v200 + 1))
      {
        FigUserCrashWithMessage();
      }
    }

    else
    {
      if (!a7)
      {
        FigUserCrashWithMessage();
      }

      if (!a7[1])
      {
        FigUserCrashWithMessage();
      }

      if (!a7[2])
      {
        FigUserCrashWithMessage();
      }

      if (!a7[3])
      {
        FigUserCrashWithMessage();
      }
    }
  }

  ckbutil_contentKeySpecifier_copyLoggingArguments(*(a2 + 16), &v183, &v182, &cf);
  if (_os_feature_enabled_impl() && *(CMBaseObjectGetDerivedStorage() + 192))
  {
    v21 = ckb_replaceBossStorageAndCopyUpdatedBossWhenBossStaleWithBossMutex(v13, &v188, &v187);
    if (v21)
    {
      started = v21;
      v124 = 1;
      v14 = a10;
      goto LABEL_102;
    }

    v170 = 0x100000001;
    v22 = v188;
  }

  else
  {
    v170 = 0;
    v22 = v13;
    v13 = 0;
  }

  if ((a3 - 6) >= 0xFFFFFFFFFFFFFFFBLL)
  {
    GroupWithBossMutex = ckb_ensureAndGetGroupWithBossMutex(v22, a3);
    if (GroupWithBossMutex)
    {
LABEL_129:
      started = GroupWithBossMutex;
      goto LABEL_116;
    }
  }

  v24 = *(a2 + 16);
  v25 = CMBaseObjectGetDerivedStorage();
  *&v198 = 0;
  v26 = *(v25 + 104);
  if (v172)
  {
    v27 = FigCFDictionaryCopyArrayOfValues();
    Count = CFArrayGetCount(v27);
    if (Count < 1)
    {
      started = 0;
      if (v27)
      {
LABEL_49:
        CFRelease(v27);
      }

LABEL_50:
      if (started)
      {
        goto LABEL_116;
      }

      goto LABEL_51;
    }

    v17 = Count;
    v16 = a2;
    a2 = a7;
    a7 = v13;
    v13 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v27, v13);
      RequestByKeySpecifier = ckg_getRequestByKeySpecifier(ValueAtIndex, v24, &v198);
      if (RequestByKeySpecifier)
      {
        started = RequestByKeySpecifier;
        goto LABEL_39;
      }

      if (v198)
      {
        break;
      }

      if (v17 == ++v13)
      {
        started = 0;
LABEL_39:
        OUTLINED_FUNCTION_90_2();
        goto LABEL_48;
      }
    }

    OUTLINED_FUNCTION_90_2();
LABEL_47:
    started = 0;
    v184 = Count;
    v186 = ValueAtIndex;
LABEL_48:
    a3 = v175;
    if (v27)
    {
      goto LABEL_49;
    }

    goto LABEL_50;
  }

  Value = CFDictionaryGetValue(v26, a3);
  if (Value)
  {
    ValueAtIndex = Value;
    Count = CFDictionaryGetValue(Value[7], v24);
    *&v198 = Count;
    if (Count)
    {
      v27 = 0;
      goto LABEL_47;
    }

    a3 = v175;
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
    Count = FigSignalErrorAtGM();
    started = Count;
    if (Count)
    {
      goto LABEL_116;
    }
  }

LABEL_51:
  v40 = a9;
  if (v184)
  {
    if (*(v184 + 56) < 4u)
    {
      if (v16[828])
      {
        OUTLINED_FUNCTION_201_1();
        v41 = OUTLINED_FUNCTION_49_2();
        OUTLINED_FUNCTION_126_2(v41, v42, v43, v44, v45, v46, v47, v48, v149, v152, v155, v158, v161, v164, v167, v170, a10, a7, a2, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
        OUTLINED_FUNCTION_28();
        if (v17)
        {
          v49 = *(v187 + 184);
          v50 = *(v184 + 248);
          FigContentKeySpecifierGetIdentifier(*(v184 + 16));
          CMBaseObjectGetDerivedStorage();
          *v189 = 136317186;
          OUTLINED_FUNCTION_84_1();
          *&v189[14] = v49;
          *&v189[22] = 2082;
          v190 = "MATCHES";
          LOWORD(v191) = v51;
          *(&v191 + 2) = v50;
          OUTLINED_FUNCTION_9_10();
          OUTLINED_FUNCTION_44_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        Count = OUTLINED_FUNCTION_417();
        a2 = v175;
      }

      if (!*(a2 + 65))
      {
        OUTLINED_FUNCTION_68_2(Count, v29, v30, v31, v32, v33, v34, v35, v149, v152, v155, v158, v161, v164, v167, v170, v171, v172, v175, type, cf, v182, v183, v184);
      }

      _os_feature_enabled_impl();
      OUTLINED_FUNCTION_82_3();
      v14 = v171;
      if (v67)
      {
        OUTLINED_FUNCTION_93_2();
        ckb_sendRedirectCallbackOnRequestWithBossMutex(v13, v167, v68, a9, v69);
      }

      started = 0;
      goto LABEL_101;
    }

    OUTLINED_FUNCTION_26_5();
    GroupWithBossMutex = FigSignalErrorAtGM();
    goto LABEL_129;
  }

  v52 = v188;
  GroupWithBossMutex = ckb_getExistingKeyIfAnyWithBossMutex(v188, *(a2 + 16), a3, v172, &v185, &v186);
  if (GroupWithBossMutex)
  {
    goto LABEL_129;
  }

  if (!v185)
  {
    goto LABEL_90;
  }

  v155 = v13;
  *&v198 = 0;
  v53 = *(v185 + 72);
  AllocatorForMedia = FigGetAllocatorForMedia();
  VTable = CMBaseObjectGetVTable();
  v62 = *(VTable + 8);
  v61 = VTable + 8;
  v63 = *(v62 + 48);
  v64 = MEMORY[0x1E695E4D0];
  if (v63)
  {
    v61 = v63(v53, *MEMORY[0x1E69610D0], AllocatorForMedia, &v198);
    v65 = v198;
    v66 = *v64;
    if (v198)
    {
      CFRelease(v198);
    }
  }

  else
  {
    v65 = 0;
    v66 = *MEMORY[0x1E695E4D0];
  }

  a3 = v175;
  v67 = v65 == v66;
  v13 = v155;
  v16 = &unk_1EAF16000;
  if (v67)
  {
LABEL_72:
    if (dword_1EAF16CF0)
    {
      OUTLINED_FUNCTION_201_1();
      v71 = OUTLINED_FUNCTION_49_2();
      if (os_log_type_enabled(v71, BYTE3(type)))
      {
        v72 = HIDWORD(type);
      }

      else
      {
        v72 = HIDWORD(type) & 0xFFFFFFFE;
      }

      if (v72)
      {
        v73 = *(v187 + 184);
        v172 = a9;
        v74 = *(v185 + 96);
        FigContentKeySpecifierGetIdentifier(*(a2 + 16));
        CMBaseObjectGetDerivedStorage();
        v13 = v155;
        *v189 = 136317186;
        OUTLINED_FUNCTION_84_1();
        *&v189[14] = v73;
        *&v189[22] = 2082;
        v190 = "MATCHES";
        LOWORD(v191) = v75;
        *(&v191 + 2) = v74;
        v40 = a9;
        OUTLINED_FUNCTION_9_10();
        OUTLINED_FUNCTION_44_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a3 = v175;
    }

    v86 = v185;
    if (!v185)
    {
      OUTLINED_FUNCTION_26_5();
      FigSignalErrorAtGM();
      v16 = &unk_1EAF16000;
      goto LABEL_90;
    }

    ck_removeListenersOnCryptor(v185);
    v94 = *(v86 + 72);
    if (v94)
    {
      v95 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v95)
      {
        v95(v94);
      }

      v96 = *(v86 + 72);
      if (v96)
      {
        CFRelease(v96);
        *(v86 + 72) = 0;
      }
    }

    *(v86 + 32) = 0;
    v97 = ck_ensureCryptor(v86, v87, v88, v89, v90, v91, v92, v93, v149, v152, v155, v158, SBYTE2(v158), BYTE3(v158), SHIDWORD(v158), v161, v164, v167, SHIDWORD(v167), v170, SWORD1(v170), SHIDWORD(v170), a10, v172, v175, SWORD1(v175), SWORD2(v175), type, cf, SBYTE4(cf), v182, v183, v184, v185, v186, v187, v188, *v189, *&v189[8], *&v189[16], v190, v191, *(&v191 + 1), v192, v193, v194, v195, v196, v197, v198, *(&v198 + 1), v199, *(&v199 + 1), v200, *(&v200 + 1), v201, v202, v203);
    v16 = &unk_1EAF16000;
    a3 = v175;
    if (!v97)
    {
LABEL_90:
      v98 = v187;
      v186 = CFDictionaryGetValue(*(v187 + 104), a3);
      GroupWithBossMutex = OUTLINED_FUNCTION_100_2(v186, v99, v186, v100, v101, *(v98 + 136), v102, v103, v149, v152, v155, v158, v161, v164, v167, v170, v171, v172, v175, type, cf);
      if (!GroupWithBossMutex)
      {
        if (v16[828])
        {
          OUTLINED_FUNCTION_201_1();
          v111 = OUTLINED_FUNCTION_49_2();
          v119 = OUTLINED_FUNCTION_127_2(v111, v112, v113, v114, v115, v116, v117, v118, v151, v154, v157, v160, v163, v166, v169, v170, v171, v174, v177, v180, SBYTE2(v180), BYTE3(v180), SHIDWORD(v180));
          if (OUTLINED_FUNCTION_16_1(v119))
          {
            v120 = *(v98 + 184);
            v121 = *(v184 + 248);
            *v189 = 136315650;
            *&v189[4] = "ckb_processRequest";
            *&v189[12] = 2114;
            *&v189[14] = v120;
            *&v189[22] = 2114;
            v190 = v121;
            OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_44_0();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          GroupWithBossMutex = OUTLINED_FUNCTION_238_0();
        }

        if (!*(a2 + 65))
        {
          OUTLINED_FUNCTION_68_2(GroupWithBossMutex, v104, v105, v106, v107, v108, v109, v110, v151, v154, v157, v160, v163, v166, v169, v170, v171, v174, v177, v180, cf, v182, v183, v184);
        }

        _os_feature_enabled_impl();
        OUTLINED_FUNCTION_82_3();
        v14 = v171;
        if (v67)
        {
          OUTLINED_FUNCTION_93_2();
          ckb_sendRedirectCallbackOnRequestWithBossMutex(v13, v169, v122, v40, v123);
        }

        started = ckb_startRequestWithMutexWithBossMutex(v52, v186, v184);
        goto LABEL_101;
      }

      goto LABEL_129;
    }

    started = v97;
    ckg_removeContentKey(v186, *(a2 + 16));
LABEL_116:
    v14 = v171;
LABEL_101:
    v124 = HIDWORD(v170);
    goto LABEL_102;
  }

  v70 = *(v185 + 32);
  if (v70 != 2)
  {
    if (v70 != 3)
    {
      goto LABEL_90;
    }

    goto LABEL_72;
  }

  v76 = v187;
  GroupWithBossMutex = OUTLINED_FUNCTION_100_2(v61, v56, v186, v57, v58, *(v187 + 136), v59, v60, v149, v152, v155, v158, v161, v164, v167, v170, a10, v172, v175, type, cf);
  if (GroupWithBossMutex)
  {
    goto LABEL_129;
  }

  if (dword_1EAF16CF0)
  {
    OUTLINED_FUNCTION_201_1();
    v77 = OUTLINED_FUNCTION_49_2();
    v85 = OUTLINED_FUNCTION_127_2(v77, v78, v79, v80, v81, v82, v83, v84, v150, v153, v156, v159, v162, v165, v168, v170, v171, v173, v176, v179, SBYTE2(v179), BYTE3(v179), SHIDWORD(v179));
    if (OUTLINED_FUNCTION_16_1(v85))
    {
      v126 = *(v76 + 184);
      v127 = *(v184 + 248);
      *v189 = 136315650;
      *&v189[4] = "ckb_processRequest";
      *&v189[12] = 2114;
      *&v189[14] = v126;
      *&v189[22] = 2114;
      v190 = v127;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_44_0();
      _os_log_send_and_compose_impl();
      LODWORD(v17) = HIDWORD(v179);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
    if (dword_1EAF16CF0)
    {
      OUTLINED_FUNCTION_201_1();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_126_2(os_log_and_send_and_compose_flags_and_os_log_type, v129, v130, v131, v132, v133, v134, v135, v150, v153, v156, v159, v162, v165, v168, v170, v171, a7, a2, v179, SBYTE2(v179), BYTE3(v179), SHIDWORD(v179));
      OUTLINED_FUNCTION_28();
      if (v17)
      {
        v136 = *(v184 + 248);
        v137 = *(v185 + 96);
        FigContentKeySpecifierGetIdentifier(*(v184 + 16));
        *v189 = 136317186;
        OUTLINED_FUNCTION_84_1();
        *&v189[14] = v136;
        *&v189[22] = 2082;
        v190 = "MATCHES";
        LOWORD(v191) = v138;
        *(&v191 + 2) = v137;
        OUTLINED_FUNCTION_9_10();
        OUTLINED_FUNCTION_44_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_417();
      a2 = v176;
    }
  }

  FigCFDictionarySetBoolean();
  GroupWithBossMutex = ckg_ensureContentKeyForRequest(v186, v184, v52, *(v76 + 152));
  if (GroupWithBossMutex)
  {
    goto LABEL_129;
  }

  v14 = v171;
  v146 = v156;
  v124 = HIDWORD(v170);
  if (!*(a2 + 65))
  {
    OUTLINED_FUNCTION_68_2(GroupWithBossMutex, v139, v140, v141, v142, v143, v144, v145, v150, v153, v156, v159, v162, v165, v168, v170, v171, v173, v176, v179, cf, v182, v183, v184);
  }

  _os_feature_enabled_impl();
  OUTLINED_FUNCTION_82_3();
  if (v67)
  {
    OUTLINED_FUNCTION_93_2();
    ckb_sendRedirectCallbackOnRequestWithBossMutex(v146, v168, v147, a9, v148);
  }

  ckb_transitionRequestToTerminalStateWithOSStatusWithBossMutex(v52, v186, v184, 0);
  started = 0;
LABEL_102:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v124 && v188)
  {
    CFRelease(v188);
  }

  if (v14 && v184)
  {
    *v14 = *(v184 + 32);
  }

  FigSimpleMutexUnlock();
  return started;
}

uint64_t ckb_createPersistableKeyData(uint64_t a1, const void *a2, uint64_t a3, const void **a4)
{
  v69 = *MEMORY[0x1E69E9840];
  v52 = 0;
  v53 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (dword_1EAF16CF0)
  {
    v9 = OUTLINED_FUNCTION_86_1();
    v17 = OUTLINED_FUNCTION_117_2(v9, v10, v11, v12, v13, v14, v15, v16, v50, v51, v52, v53, v54, v55, cf);
    if (OUTLINED_FUNCTION_71_0(v17))
    {
      v57 = 136315650;
      v58 = "ckb_createPersistableKeyData";
      OUTLINED_FUNCTION_47_2();
      v62 = v18;
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_129_2();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449();
  }

  if (!a3 || !a4)
  {
    OUTLINED_FUNCTION_52_3();
LABEL_54:
    v19 = FigSignalErrorAtGM();
    goto LABEL_55;
  }

  v19 = ckb_copyGroupAndRequestFromIDWithBossMutex(a1, a2, &v52, &v53);
  if (v19)
  {
LABEL_55:
    v35 = v19;
    goto LABEL_33;
  }

  if (FigContentKeySpecifierGetKeySystem(*(v53 + 2)) != 1 || *(v53 + 14) != 1)
  {
    OUTLINED_FUNCTION_52_3();
    goto LABEL_54;
  }

  v19 = ckg_ensureContentKeyForRequest(v52, v53, a1, *(DerivedStorage + 152));
  if (v19)
  {
    goto LABEL_55;
  }

  v20 = v53;
  if (!v53)
  {
    FigUserCrashWithMessage();
  }

  v21 = v20[8];
  cf = 0;
  if (!v21)
  {
    OUTLINED_FUNCTION_52_3();
    v24 = FigSignalErrorAtGM();
    if (!v24)
    {
      v31 = 0;
      goto LABEL_22;
    }

    goto LABEL_57;
  }

  v22 = v21[9];
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v23)
  {
    v24 = v23(v22, *MEMORY[0x1E6961138], *MEMORY[0x1E695E4D0]);
    if (v24)
    {
      goto LABEL_57;
    }

    v25 = v21[9];
    v26 = *(CMBaseObjectGetVTable() + 16);
    if (*v26 < 4uLL)
    {
      goto LABEL_25;
    }

    v27 = v26[12];
    if (!v27)
    {
      goto LABEL_25;
    }

    v24 = v27(v25, a3, 0);
    if (v24)
    {
LABEL_57:
      v35 = v24;
      goto LABEL_26;
    }

    v28 = v21[9];
    v29 = CFGetAllocator(v21);
    v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v30)
    {
      v24 = v30(v28, *MEMORY[0x1E69610F0], v29, &cf);
      if (!v24)
      {
        v31 = cf;
        cf = 0;
LABEL_22:
        if (dword_1EAF16CF0)
        {
          OUTLINED_FUNCTION_97_3();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v33 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, HIBYTE(v54));
          if (OUTLINED_FUNCTION_71_0(v33))
          {
            v57 = 136315906;
            OUTLINED_FUNCTION_44_4();
            v61 = 2048;
            v62 = v34;
            v63 = 2048;
            v64 = v31;
            OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_23();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_449();
        }

        v35 = 0;
        goto LABEL_29;
      }

      goto LABEL_57;
    }
  }

LABEL_25:
  v35 = 4294954514;
LABEL_26:
  OUTLINED_FUNCTION_97_3();
  v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v37 = os_log_type_enabled(v36, HIBYTE(v54));
  if (OUTLINED_FUNCTION_71_0(v37))
  {
    v57 = 136315906;
    OUTLINED_FUNCTION_44_4();
    v61 = 2048;
    v62 = v38;
    v63 = 1024;
    LODWORD(v64) = v35;
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_45_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_449();
  v31 = 0;
LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v35)
  {
    *(v53 + 14) = 2;
    *a4 = v31;
LABEL_33:
    v31 = 0;
  }

  if (dword_1EAF16CF0)
  {
    v39 = OUTLINED_FUNCTION_86_1();
    v47 = OUTLINED_FUNCTION_117_2(v39, v40, v41, v42, v43, v44, v45, v46, v50, v51, v52, v53, v54, v55, cf);
    if (OUTLINED_FUNCTION_71_0(v47))
    {
      if (a4)
      {
        v48 = *a4;
      }

      else
      {
        v48 = 0;
      }

      v57 = 136316418;
      v58 = "ckb_createPersistableKeyData";
      v59 = 2048;
      v60 = a1;
      v61 = 2114;
      v62 = v53;
      v63 = 2048;
      v64 = v48;
      v65 = 2048;
      v66 = a3;
      v67 = 1024;
      v68 = v35;
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_129_2();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449();
  }

  FigSimpleMutexUnlock();
  if (v31)
  {
    CFRelease(v31);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  return v35;
}

void ckb_processResponse(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14, CFTypeRef cf, int a16, uint64_t a17, __int16 a18, uint64_t a19, uint64_t a20, __int16 a21, uint64_t a22, int a23, __int16 a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  OUTLINED_FUNCTION_458();
  v56 = v55;
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_63_1();
  if (v57)
  {
    v58 = OUTLINED_FUNCTION_54_3();
    v59 = os_log_type_enabled(v58, type);
    if (OUTLINED_FUNCTION_28_1(v59))
    {
      OUTLINED_FUNCTION_50_1();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_45_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417();
  }

  if (v56)
  {
    v60 = OUTLINED_FUNCTION_184();
    if (!ckb_copyGroupAndRequestFromIDWithBossMutex(v60, v61, 0, v62))
    {
      if (*(v54 + 3312))
      {
        v63 = OUTLINED_FUNCTION_54_3();
        v64 = os_log_type_enabled(v63, type);
        if (OUTLINED_FUNCTION_16_1(v64))
        {
          OUTLINED_FUNCTION_6_17();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0();
      }

      v65 = OUTLINED_FUNCTION_184();
      ckb_processResponseInternalWithBossMutex(v65, v66, v56);
    }
  }

  else
  {
    FigSignalErrorAtGM();
  }

  FigSimpleMutexUnlock();
  OUTLINED_FUNCTION_457();
}

uint64_t ckb_processResponseError(uint64_t a1, const void *a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v37 = 0;
  cf = 0;
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_63_1();
  if (v7)
  {
    OUTLINED_FUNCTION_4_24();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v16 = OUTLINED_FUNCTION_441_1(os_log_and_send_and_compose_flags_and_os_log_type, v9, v10, v11, v12, v13, v14, v15, v33, v34, v35, v36, SBYTE2(v36), BYTE3(v36), SHIDWORD(v36));
    if (OUTLINED_FUNCTION_28_1(v16))
    {
      v39 = 136315650;
      v40 = "ckb_processResponseError";
      OUTLINED_FUNCTION_47_2();
      v42 = v17;
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_45_0();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_408();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417();
  }

  if (!a3)
  {
    OUTLINED_FUNCTION_28_6();
LABEL_20:
    v18 = FigSignalErrorAtGM();
    goto LABEL_21;
  }

  v18 = ckb_copyGroupAndRequestFromIDWithBossMutex(a1, a2, &v37, &cf);
  if (v18)
  {
LABEL_21:
    v31 = v18;
    goto LABEL_13;
  }

  v19 = cf;
  if (*(cf + 14) >= 3u)
  {
    OUTLINED_FUNCTION_28_6();
    goto LABEL_20;
  }

  if (*(v3 + 3312))
  {
    OUTLINED_FUNCTION_4_24();
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v28 = OUTLINED_FUNCTION_19_4(v20, v21, v22, v23, v24, v25, v26, v27, v33, v34, v35, v36, SBYTE2(v36), BYTE3(v36), SHIDWORD(v36));
    if (OUTLINED_FUNCTION_115_1(v28))
    {
      v39 = 136316162;
      OUTLINED_FUNCTION_44_4();
      v41 = v29;
      v42 = v30;
      v43 = v29;
      v44 = @"Callbacks to AVContentKeySession";
      v45 = 2112;
      v46 = a3;
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_36();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_612();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
    v19 = cf;
  }

  ckb_transitionRequestToTerminalStateWithBossMutex(a1, v37, v19, a3);
  v31 = 0;
LABEL_13:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  return v31;
}

uint64_t ckb_renew(const void *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, __CFArray **a6)
{
  v80[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v60 = 0;
  v61 = 0;
  cf = 0;
  v59 = 0;
  FigSimpleMutexLock();
  if (dword_1EAF16CF0)
  {
    v8 = OUTLINED_FUNCTION_53_2();
    v9 = os_log_type_enabled(v8, type);
    if (OUTLINED_FUNCTION_124_0(v9))
    {
      v10 = *(DerivedStorage + 184);
      v62 = 136315650;
      v63 = "ckb_renew";
      v64 = 2114;
      v65 = v10;
      v66 = 2082;
      v67 = "ckb_renew";
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_128_0();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_345_0();
  }

  ckbutil_contentKeySpecifier_copyLoggingArguments(a2, &v60, &v59, &cf);
  CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_25_4();
    v18 = FigSignalErrorAtGM();
    v19 = 0;
    goto LABEL_17;
  }

  v13 = Mutable;
  v14 = FigCFDictionaryCopyArrayOfValues();
  if (CFArrayGetCount(v14) >= 1)
  {
    v15 = 0;
    while (1)
    {
      v80[0] = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v14, v15);
      ContentKey = ckg_getContentKey(ValueAtIndex, a2, v80);
      if (ContentKey)
      {
        break;
      }

      if (v80[0])
      {
        FigCFDictionarySetValue();
      }

      if (++v15 >= CFArrayGetCount(v14))
      {
        v18 = 0;
        v19 = v13;
        v13 = 0;
        goto LABEL_13;
      }
    }

    v18 = ContentKey;
    v19 = 0;
LABEL_13:
    if (!v14)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v18 = 0;
  v19 = v13;
  v13 = 0;
  if (v14)
  {
LABEL_14:
    CFRelease(v14);
  }

LABEL_15:
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_17:
  v20 = a4;
  if (v18)
  {
LABEL_70:
    UInt64 = 0;
    v22 = 0;
LABEL_72:
    v52 = 0;
    goto LABEL_51;
  }

  if (CFDictionaryGetCount(v19) <= 0)
  {
    OUTLINED_FUNCTION_25_4();
    v18 = FigSignalErrorAtGM();
    goto LABEL_70;
  }

  v21 = FigGetAllocatorForMedia();
  v22 = CFArrayCreateMutable(v21, 0, MEMORY[0x1E695E9C0]);
  if (!v22 || (v23 = FigCFDictionaryCopyArrayOfKeys()) == 0)
  {
    OUTLINED_FUNCTION_25_4();
    v18 = FigSignalErrorAtGM();
    UInt64 = 0;
    goto LABEL_72;
  }

  theArray = v22;
  theDict = v19;
  v52 = v23;
  if (CFArrayGetCount(v23) >= 1)
  {
    v24 = 0;
    v49 = a1;
    do
    {
      v25 = OUTLINED_FUNCTION_184();
      v27 = CFArrayGetValueAtIndex(v25, v26);
      Value = CFDictionaryGetValue(theDict, v27);
      if (Value[8] == 2)
      {
        v29 = Value;
        Value[8] = 1;
        if (dword_1EAF16CF0)
        {
          v54 = v27;
          v30 = OUTLINED_FUNCTION_53_2();
          if (os_log_type_enabled(v30, type))
          {
            v31 = v57;
          }

          else
          {
            v31 = v57 & 0xFFFFFFFE;
          }

          if (v31)
          {
            v32 = *(DerivedStorage + 184);
            v33 = DerivedStorage;
            v34 = *(v29 + 12);
            Identifier = FigContentKeySpecifierGetIdentifier(a2);
            v36 = CMBaseObjectGetDerivedStorage();
            v37 = @"[]";
            if (*(v36 + 152))
            {
              v37 = Identifier;
            }

            v62 = 136317186;
            v63 = "ckb_renew";
            v64 = 2114;
            v65 = v32;
            v66 = 2082;
            v67 = "MATCHES";
            v68 = 2114;
            v69 = v34;
            DerivedStorage = v33;
            v70 = 2048;
            v20 = a4;
            v71 = a3;
            v72 = 2112;
            v73 = v37;
            v74 = 2112;
            v75 = v60;
            v76 = 2112;
            v77 = v59;
            v78 = 2112;
            v79 = cf;
            OUTLINED_FUNCTION_59();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_104_2();
          OUTLINED_FUNCTION_64_3();
          a1 = v49;
          v27 = v54;
        }

        NewRequestWithBossMutex = ckb_registerAndGetNewRequestWithBossMutex(a1, *(v29 + 3), v27, v20, a5, *(DerivedStorage + 136), 1, &v61);
        if (NewRequestWithBossMutex)
        {
          v18 = NewRequestWithBossMutex;
          UInt64 = 0;
          goto LABEL_50;
        }

        FigGetAllocatorForMedia();
        UInt64 = FigCFNumberCreateUInt64();
        if (!UInt64)
        {
          OUTLINED_FUNCTION_25_4();
          started = FigSignalErrorAtGM();
LABEL_67:
          v18 = started;
LABEL_50:
          v19 = theDict;
          v22 = theArray;
          goto LABEL_51;
        }

        if (dword_1EAF16CF0)
        {
          v40 = OUTLINED_FUNCTION_53_2();
          if (os_log_type_enabled(v40, type))
          {
            v41 = v57;
          }

          else
          {
            v41 = v57 & 0xFFFFFFFE;
          }

          if (v41)
          {
            v42 = *(DerivedStorage + 184);
            v43 = *(v61 + 31);
            v62 = 136315650;
            v63 = "ckb_renew";
            v64 = 2114;
            v65 = v42;
            v66 = 2114;
            v67 = v43;
            OUTLINED_FUNCTION_59();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_104_2();
          OUTLINED_FUNCTION_64_3();
        }

        started = ckb_startRequestWithMutexWithBossMutex(a1, v27, v61);
        if (started)
        {
          goto LABEL_67;
        }

        CFArrayAppendValue(theArray, UInt64);
        v61 = 0;
        CFRelease(UInt64);
      }

      ++v24;
    }

    while (v24 < CFArrayGetCount(v52));
  }

  if (!a6)
  {
    UInt64 = 0;
    v18 = 0;
    goto LABEL_50;
  }

  UInt64 = 0;
  v18 = 0;
  *a6 = theArray;
  v22 = 0;
  v19 = theDict;
LABEL_51:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (UInt64)
  {
    CFRelease(UInt64);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  return v18;
}

uint64_t ckb_destroyGroup(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (dword_1EAF16CF0)
  {
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_104_2();
    v4 = OUTLINED_FUNCTION_126();
    v12 = OUTLINED_FUNCTION_19_4(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16, v17, v18, SBYTE2(v18), BYTE3(v18), SHIDWORD(v18));
    if (OUTLINED_FUNCTION_115_1(v12))
    {
      OUTLINED_FUNCTION_50_1();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_36();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_612();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  v13 = ckb_destroyGroupWithMutex(a1, a2);
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t ckb_copyAuthorizationToken(const void *a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v25 = 0;
  cf = a1;
  v24 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = DerivedStorage;
  FigSimpleMutexLock();
  if (dword_1EAF16CF0)
  {
    OUTLINED_FUNCTION_4_24();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
    if (OUTLINED_FUNCTION_28_1(v8))
    {
      v9 = *(DerivedStorage + 184);
      v27 = 136315650;
      v28 = "ckb_copyAuthorizationToken";
      v29 = 2114;
      v30 = v9;
      v31 = 2082;
      v32 = "ckb_copyAuthorizationToken";
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_408();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417();
  }

  if (!a2 || !a3)
  {
    OUTLINED_FUNCTION_62_1();
    v10 = FigSignalErrorAtGM();
    goto LABEL_30;
  }

  if (_os_feature_enabled_impl() && *(CMBaseObjectGetDerivedStorage() + 192))
  {
    v10 = ckb_replaceBossStorageAndCopyUpdatedBossWhenBossStaleWithBossMutex(a1, &cf, &v23);
    if (!v10)
    {
      v11 = 1;
      goto LABEL_12;
    }

LABEL_30:
    v19 = v10;
    v11 = 0;
    goto LABEL_22;
  }

  v11 = 0;
LABEL_12:
  v12 = OUTLINED_FUNCTION_184();
  ExistingKeyIfAnyWithBossMutex = ckb_getExistingKeyIfAnyWithBossMutex(v12, v13, 3, 1, v14, v15);
  if (ExistingKeyIfAnyWithBossMutex)
  {
LABEL_32:
    v19 = ExistingKeyIfAnyWithBossMutex;
    goto LABEL_22;
  }

  if (!v24)
  {
    v19 = 0;
    *a3 = 0;
    goto LABEL_22;
  }

  if (*(v24 + 32) != 2 || !*(v24 + 24) || (v17 = *(v24 + 16)) == 0 || FigContentKeySpecifierGetKeySystem(v17) != 3)
  {
    OUTLINED_FUNCTION_62_1();
    ExistingKeyIfAnyWithBossMutex = FigSignalErrorAtGM();
    goto LABEL_32;
  }

  v18 = *(v24 + 56);
  if (v18)
  {
    v18 = CFRetain(v18);
  }

  v19 = 0;
  *a3 = v18;
LABEL_22:
  v20 = _os_feature_enabled_impl();
  if (v11 && v20 && v19 && cf)
  {
    CFRelease(cf);
  }

  FigSimpleMutexUnlock();
  return v19;
}

uint64_t ckb_copyActiveBossIfCurrentBossIsStale(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a2 = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 192))
  {
    if (!*(DerivedStorage + 160))
    {
      FigUserCrashWithMessage();
    }

    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = 0;
      *a2 = v4;
    }

    else
    {
      v5 = FigSignalErrorAtGM();
    }
  }

  else
  {
    v5 = 0;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t ckr_addStatusCallbacks(uint64_t result, void *a2, uint64_t a3, NSObject *a4)
{
  if (!result)
  {
    goto LABEL_11;
  }

  if (!a2 || !a3 || !a4)
  {
    return result;
  }

  v6 = result;
  v7 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E00406EC85580uLL);
  if (v7)
  {
    v8 = v7;
    dispatch_retain(a4);
    v8[7] = a4;
    __copy_assignment_8_8_t0w8_pa0_16609_8_pa0_37959_16_pa0_51628_24(v8 + 3, a2);
    result = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v8[2] = result;
    v9 = *(v6 + 224);
    *v8 = 0;
    v8[1] = v9;
    *v9 = v8;
    *(v6 + 224) = v8;
    if (dword_1EAF16CF0)
    {
      OUTLINED_FUNCTION_147();
      v10 = OUTLINED_FUNCTION_126();
      v18 = OUTLINED_FUNCTION_116_0(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, v22, SBYTE2(v22), BYTE3(v22), SHIDWORD(v22));
      if (OUTLINED_FUNCTION_109_0(v18))
      {
        OUTLINED_FUNCTION_53_0();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_456();
        OUTLINED_FUNCTION_329_0();
      }

      OUTLINED_FUNCTION_7();
      return OUTLINED_FUNCTION_524();
    }
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t ckg_removeContentKey(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v5 = *(a1 + 40);
    Identifier = FigContentKeySpecifierGetIdentifier(a2);
    Value = CFDictionaryGetValue(v5, Identifier);
    if (Value)
    {
      v8 = Value;
      v18 = 0;
      v19 = 0;
      cf = 0;
      v9 = ckbutil_keyGroupID_copyLoggingDescription(*(a1 + 16));
      OUTLINED_FUNCTION_140_0();
      ckbutil_contentKeySpecifier_copyLoggingArguments(a2, v10, v11, &cf);
      if (dword_1EAF16CF0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_28();
        if (v2)
        {
          v13 = FigContentKeySpecifierGetIdentifier(a2);
          v20 = 136316930;
          v21 = "ckg_removeContentKey";
          v22 = 2114;
          v23 = a1;
          v24 = 2114;
          v25 = v8;
          v26 = 2112;
          v27 = v13;
          v28 = 2112;
          v29 = v19;
          v30 = 2112;
          v31 = v18;
          v32 = 2112;
          v33 = cf;
          v34 = 2112;
          v35 = v9;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417();
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      v14 = *(a1 + 40);
      v15 = FigContentKeySpecifierGetIdentifier(a2);
      CFDictionaryRemoveValue(v14, v15);
    }

    return 0;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t ckg_ensureContentKeyForRequest(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v149 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_12_9();
    v16 = FigSignalErrorAtGM();
LABEL_96:
    v8 = 0;
    goto LABEL_65;
  }

  if (a2[8])
  {
    v16 = 0;
    goto LABEL_96;
  }

  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  ContentKey = ckg_getContentKey(a1, a2[2], &cf);
  if (ContentKey)
  {
LABEL_134:
    v16 = ContentKey;
    goto LABEL_65;
  }

  if (!cf || (CFRetain(cf), (v10 = cf) == 0))
  {
    *v117 = a3;
    v119 = a4;
    v120 = v8;
    if (*(a1 + 32))
    {
      goto LABEL_13;
    }

    v11 = a2[3];
    v12 = *(a1 + 64);
    v13 = *(v11 + 28);
    if (FigContentKeySpecifierGetKeySystem(*(v11 + 16)) != 1 && FigContentKeySpecifierGetKeySystem(*(v11 + 16)) != 2)
    {
      goto LABEL_13;
    }

    v14 = FigCFWeakReferenceHolderCopyReferencedObject();
    v15 = v14;
    if (*(a1 + 32))
    {
      v16 = 0;
      if (!v14)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      v16 = FigSignalErrorAtGM();
      if (!v15)
      {
LABEL_12:
        if (v16)
        {
          goto LABEL_93;
        }

LABEL_13:
        CFGetAllocator(a1);
        v18 = a2[2];
        v17 = a2[3];
        if (v17)
        {
          v19 = *(a1 + 32);
          v20 = *(a1 + 72);
          context = xmmword_1E747EF20;
          if (_MergedGlobals_28 != -1)
          {
            dispatch_once_f(&_MergedGlobals_28, &context, ckbutil_registerClass);
          }

          Instance = _CFRuntimeCreateInstance();
          if (!Instance || (!v18 ? (v22 = 0) : (v22 = CFRetain(v18)), (*(Instance + 16) = v22, *(Instance + 24) = CFRetain(v17), !v19) ? (v31 = 0) : (v31 = CFRetain(v19)), (*(Instance + 64) = v31, !v20) ? (v32 = 0) : (v32 = CFRetain(v20)), *(Instance + 48) = v32, v33 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(Instance + 88) = v33) == 0))
          {
            OUTLINED_FUNCTION_12_9();
LABEL_38:
            v16 = FigSignalErrorAtGM();
            if (v16)
            {
              goto LABEL_39;
            }

            goto LABEL_99;
          }

          v34 = *MEMORY[0x1E695E480];
          v35 = ck_createLoggingIdentifier_sNextLoggingIdentifier++;
          v115 = v35;
          v36 = CFStringCreateWithFormat(v34, 0, @"%s/%llu");
          if (!v36)
          {
            FigUserCrashWithMessage();
            *(Instance + 96) = 0;
            *(Instance + 104) = v119;
            OUTLINED_FUNCTION_12_9();
            goto LABEL_38;
          }

          *(Instance + 96) = v36;
          *(Instance + 104) = v119;
          v94 = ck_ensureCryptor(Instance, v37, v38, v39, v40, v41, v42, v43, "CK", v115, v116, v117[0], v117[1], HIBYTE(v117[1]), *&v117[2], v118, v120, v121, v122, cf, SWORD1(cf), SHIDWORD(cf), v124, v127, *v128, *&v128[2], *&v128[4], v129, v130, v131[0], *&v131[4], *&v131[12], *v132, *&v132[8], *&v132[16], *&v132[24], *&v132[32], v133, *v134, *&v134[8], *&v134[16], *&v134[24], v135, v136, *(&v136 + 1), context, *(&context + 1), v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148);
          if (!v94)
          {
            cf = Instance;
            v95 = Instance;
            Instance = 0;
            goto LABEL_100;
          }

          v16 = v94;
        }

        else
        {
          OUTLINED_FUNCTION_12_9();
          v16 = FigSignalErrorAtGM();
          Instance = 0;
          if (!v16)
          {
LABEL_99:
            v95 = cf;
LABEL_100:
            v96 = v95[3];
            v97 = *(v96 + 32);
            if (v97)
            {
              if (v97 == 2)
              {
                v98 = @"On an AirPlay receiver";
              }

              else if (v97 == 1)
              {
                v98 = @"On the Lightning-to-HDMI display adapter";
              }

              else
              {
                FigUserCrashWithMessage();
                FigUserCrashWithMessage();
                v98 = 0;
                v96 = v95[3];
              }
            }

            else
            {
              v98 = @"On-Device";
            }

            v99 = *(v96 + 28);
            if (v99 >= 3)
            {
              FigUserCrashWithMessage();
              FigUserCrashWithMessage();
              v100 = 0;
            }

            else
            {
              v100 = off_1E747EF30[v99];
            }

            *v128 = 0;
            v129 = 0;
            v127 = 0;
            OUTLINED_FUNCTION_77_2();
            ckbutil_contentKeySpecifier_copyLoggingArguments(v101, v102, v103, v104);
            if (dword_1EAF16CF0)
            {
              v126 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v106 = v126;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v107 = v106;
              }

              else
              {
                v107 = v106 & 0xFFFFFFFE;
              }

              if (v107)
              {
                v108 = v95[12];
                Identifier = FigContentKeySpecifierGetIdentifier(v95[2]);
                v110 = @"[]";
                if (*(v95 + 104))
                {
                  v110 = Identifier;
                }

                v111 = v95[3];
                if (v111[24])
                {
                  v112 = "YES";
                }

                else
                {
                  v112 = "NO";
                }

                if (v111[64])
                {
                  v113 = "YES";
                }

                else
                {
                  v113 = "NO";
                }

                if (v111[65])
                {
                  v114 = "YES";
                }

                else
                {
                  v114 = "NO";
                }

                v130 = 136317954;
                *v131 = "ck_logKeyCreation";
                *&v131[8] = 2114;
                *&v131[10] = v108;
                *&v131[18] = 2048;
                *v132 = v95;
                *&v132[8] = 2112;
                *&v132[10] = v110;
                *&v132[18] = 2112;
                *&v132[20] = v129;
                *&v132[28] = 2112;
                *&v132[30] = *v128;
                *&v132[38] = 2112;
                v133 = v127;
                *v134 = 2080;
                *&v134[2] = v112;
                *&v134[10] = 2080;
                *&v134[12] = v113;
                *&v134[20] = 2080;
                *&v134[22] = v114;
                *&v134[30] = 2112;
                v135 = v98;
                LOWORD(v136) = 2112;
                *(&v136 + 2) = v100;
                OUTLINED_FUNCTION_62();
                OUTLINED_FUNCTION_23();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (v127)
            {
              CFRelease(v127);
            }

            v16 = 0;
            if (Instance)
            {
              goto LABEL_44;
            }

            goto LABEL_45;
          }
        }

LABEL_39:
        *v128 = 0;
        v129 = 0;
        v127 = 0;
        OUTLINED_FUNCTION_77_2();
        ckbutil_contentKeySpecifier_copyLoggingArguments(v18, v44, v45, v46);
        OUTLINED_FUNCTION_94_1();
        v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v48 = os_log_type_enabled(v47, type);
        v49 = OUTLINED_FUNCTION_16_1(v48);
        v50 = v127;
        if (v49)
        {
          OUTLINED_FUNCTION_48_3();
          v130 = v51;
          *&v131[10] = @"[No Key]";
          *&v131[18] = 1024;
          *v132 = v16;
          *&v132[4] = 2112;
          *&v132[6] = v52;
          *&v132[14] = 2112;
          *&v132[16] = v53;
          *&v132[24] = 2112;
          *&v132[26] = v50;
          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_44_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_238_0();
        if (v50)
        {
          CFRelease(v50);
        }

        if (Instance)
        {
LABEL_44:
          CFRelease(Instance);
        }

LABEL_45:
        if (!v16)
        {
          v54 = a2[2];
          v55 = cf;
          v56 = FigContentKeySpecifierGetIdentifier(v54);
          if (v55)
          {
            v57 = v56;
            ckg_removeContentKey(a1, v54);
            v58 = *(a1 + 40);
            v59 = FigContentKeySpecifierGetIdentifier(v54);
            CFDictionarySetValue(v58, v59, v55);
            *v128 = 0;
            v129 = 0;
            v127 = 0;
            v60 = ckbutil_keyGroupID_copyLoggingDescription(*(a1 + 16));
            OUTLINED_FUNCTION_77_2();
            ckbutil_contentKeySpecifier_copyLoggingArguments(v54, v61, v62, v63);
            if (dword_1EAF16CF0)
            {
              OUTLINED_FUNCTION_94_1();
              v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v65 = os_log_type_enabled(v64, type);
              if (OUTLINED_FUNCTION_28_1(v65))
              {
                v130 = 136317186;
                *v131 = "ckg_setContentKey";
                *&v131[8] = 2114;
                OUTLINED_FUNCTION_36_3();
                *v132 = "PARENTS";
                *&v132[8] = v66;
                *&v132[10] = v67;
                OUTLINED_FUNCTION_109_1();
                *&v132[20] = v57;
                *&v132[28] = v68;
                *&v132[30] = v69;
                *&v132[38] = v68;
                v133 = v70;
                *v134 = v68;
                *&v134[2] = v71;
                *&v134[10] = v68;
                *&v134[12] = v60;
                OUTLINED_FUNCTION_62();
                OUTLINED_FUNCTION_44_0();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_417();
            }

            if (v60)
            {
              CFRelease(v60);
            }

            v8 = v120;
            if (v127)
            {
              CFRelease(v127);
            }
          }

          else
          {
            OUTLINED_FUNCTION_12_9();
            ContentKey = FigSignalErrorAtGM();
            v8 = v120;
            if (ContentKey)
            {
              goto LABEL_134;
            }
          }

          v10 = cf;
          goto LABEL_56;
        }

LABEL_93:
        v8 = v120;
        goto LABEL_65;
      }

LABEL_11:
      CFRelease(v15);
      goto LABEL_12;
    }

    v25 = Mutable;
    v26 = *MEMORY[0x1E695E4C0];
    v27 = *MEMORY[0x1E695E4D0];
    if (v13 == 1)
    {
      v28 = *MEMORY[0x1E695E4C0];
    }

    else
    {
      v28 = *MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(Mutable, @"ExternalProtectionMonitorPerCryptor", v28);
    if (v12)
    {
      v29 = v27;
    }

    else
    {
      v29 = v26;
    }

    CFDictionarySetValue(v25, @"RequiresReencryptionContext", v29);
    if (FigContentKeySpecifierGetKeySystem(*(v11 + 16)) == 1)
    {
      v30 = kFigCPEProtectionScheme_PKD;
    }

    else
    {
      if (FigContentKeySpecifierGetKeySystem(*(v11 + 16)) != 2)
      {
        v80 = FigSignalErrorAtGM();
        goto LABEL_84;
      }

      v30 = kFigCPEProtectionScheme_BasicAES;
    }

    v78 = *v30;
    v79 = CFGetAllocator(a1);
    v80 = FigCPEProtectorCreateForScheme(v79, v78, v25, a1 + 32);
    if (!v80)
    {
      if (*(v11 + 28) != 1)
      {
        goto LABEL_77;
      }

      v81 = *(v11 + 40);
      if (!v81)
      {
        goto LABEL_77;
      }

      v82 = *(a1 + 32);
      v83 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v83)
      {
        v16 = 4294954514;
        goto LABEL_91;
      }

      v80 = v83(v82, @"NeroTransport", v81);
      if (!v80)
      {
LABEL_77:
        KeySystem = FigContentKeySpecifierGetKeySystem(*(v11 + 16));
        LoggingDescription = ckbutil_keySystem_getLoggingDescription(KeySystem);
        v16 = ckbutil_keyGroupID_copyLoggingDescription(*(a1 + 16));
        if (dword_1EAF16CF0)
        {
          v116 = LoggingDescription;
          LODWORD(v129) = 0;
          v128[0] = OS_LOG_TYPE_DEFAULT;
          v86 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v87 = v129;
          if (os_log_type_enabled(v86, v128[0]))
          {
            v88 = v87;
          }

          else
          {
            v88 = v87 & 0xFFFFFFFE;
          }

          if (v88)
          {
            v130 = 136317186;
            *v131 = "ckg_ensureProtector";
            *&v131[8] = 2114;
            OUTLINED_FUNCTION_36_3();
            *v132 = "PARENTS";
            *&v132[8] = v89;
            *&v132[10] = v90;
            OUTLINED_FUNCTION_109_1();
            *&v132[20] = LoggingDescription;
            *&v132[28] = 2080;
            *&v132[30] = v91;
            *&v132[38] = 2080;
            v133 = v92;
            *v134 = v93;
            *&v134[2] = v25;
            *&v134[10] = v93;
            *&v134[12] = v16;
            OUTLINED_FUNCTION_62();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v16)
        {
          CFRelease(v16);
          v16 = 0;
        }

LABEL_91:
        CFRelease(v25);
        if (!v15)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

LABEL_84:
    v16 = v80;
    goto LABEL_91;
  }

LABEL_56:
  if (a2[8])
  {
    OUTLINED_FUNCTION_12_9();
    ContentKey = FigSignalErrorAtGM();
    goto LABEL_134;
  }

  if (v10)
  {
    v72 = CFRetain(v10);
  }

  else
  {
    v72 = 0;
  }

  a2[8] = v72;
  if (dword_1EAF16CF0)
  {
    LODWORD(v129) = 0;
    v128[0] = OS_LOG_TYPE_DEFAULT;
    v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v74 = os_log_type_enabled(v73, v128[0]);
    if (OUTLINED_FUNCTION_109_0(v74))
    {
      v130 = 136315906;
      *v131 = "ckr_setContentKey";
      *&v131[8] = 2114;
      OUTLINED_FUNCTION_36_3();
      *v132 = "MATCHES";
      *&v132[8] = v75;
      *&v132[10] = v76;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_44_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524();
  }

  v16 = 0;
LABEL_65:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v16;
}

uint64_t ck_removeListenersOnCryptor(uint64_t result)
{
  if (*(result + 72))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_56_3();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_55_4();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

void ckr_cancelAndReleaseRequestTimer(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 208);
    v1 = (a1 + 208);
    if (v2)
    {
      ckbutil_cancelAndReleaseTimer(v1);
      if (dword_1EAF16CF0)
      {
        OUTLINED_FUNCTION_147();
        v3 = OUTLINED_FUNCTION_126();
        v11 = OUTLINED_FUNCTION_180_0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14, v15, SBYTE2(v15), BYTE3(v15), SHIDWORD(v15));
        if (OUTLINED_FUNCTION_124_0(v11))
        {
          OUTLINED_FUNCTION_2_28();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_128_0();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_345_0();
      }
    }
  }
}

void ck_finalize(void *a1)
{
  ck_cancelAndReleaseRenewalTimer(a1);
  ck_removeListenersOnCryptor(a1);
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
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

  v6 = a1[8];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[9];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[11];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[12];
  if (v10)
  {

    CFRelease(v10);
  }
}

void ck_cancelAndReleaseRenewalTimer(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    v1 = (a1 + 80);
    if (v2)
    {
      ckbutil_cancelAndReleaseTimer(v1);
      if (dword_1EAF16CF0)
      {
        OUTLINED_FUNCTION_147();
        v3 = OUTLINED_FUNCTION_126();
        v11 = OUTLINED_FUNCTION_180_0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14, v15, SBYTE2(v15), BYTE3(v15), SHIDWORD(v15));
        if (OUTLINED_FUNCTION_124_0(v11))
        {
          OUTLINED_FUNCTION_2_28();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_128_0();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_345_0();
      }
    }
  }
}

uint64_t ckb_sendStatusCallbacksToAllClientsForRequestWithBossMutex(uint64_t a1, uint64_t a2)
{
  v87[16] = *MEMORY[0x1E69E9840];
  if (*(a2 + 258))
  {
    FigUserCrashWithMessage();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = &unk_1EAF16000;
  if (a1)
  {
    v6 = DerivedStorage;
    if (!DerivedStorage[3])
    {
LABEL_20:
      FigGetAllocatorForMedia();
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      v24 = *(a2 + 216);
      if (!v24)
      {
LABEL_44:
        v28 = 0;
        v19 = 0;
        if (!MutableCopy)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      v25 = 1;
      *&v23 = 136316162;
      *v75 = v23;
      *&v23 = 136316418;
      *v72 = v23;
      v26 = &unk_1EAF16000;
      while (1)
      {
        v27 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (!v27)
        {
          goto LABEL_43;
        }

        v28 = v27;
        if (!v25)
        {
          FigCFDictionarySetBoolean();
        }

        v29 = *(a2 + 176);
        if (v29)
        {
          IsKeyCallbacksExistSentinel = ckbutil_errorIsKeyCallbacksExistSentinel(v29);
          v31 = v26[828];
          if (!IsKeyCallbacksExistSentinel)
          {
            if (v31)
            {
              v79[0] = 0;
              BYTE4(v78) = 0;
              v50 = v5;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v52 = v79[0];
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
              {
                v53 = v52;
              }

              else
              {
                v53 = v52 & 0xFFFFFFFE;
              }

              if (v53)
              {
                v54 = *(a2 + 248);
                CFErrorGetCode(*(a2 + 176));
                *v83 = v72[0];
                *&v83[4] = "ckb_sendStatusCallbackForRequestWithBossMutex";
                *&v83[12] = 2114;
                *&v83[14] = v54;
                *&v83[22] = 2082;
                OUTLINED_FUNCTION_42_3();
                *&v86[2] = v55;
                *&v86[4] = v56;
                *&v86[12] = 2112;
                *&v86[14] = v28;
                OUTLINED_FUNCTION_62();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl();
              }

              v5 = v50;
              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_238_0();
              v26 = &unk_1EAF16000;
            }

            goto LABEL_41;
          }

          if (v31)
          {
            OUTLINED_FUNCTION_45_4();
            v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v40 = OUTLINED_FUNCTION_123_2(v32, v33, v34, v35, v36, v37, v38, v39, v69, v70, v72[0], v72[1], v75[0], v75[1], v77, v78, BYTE4(v78), v79[0]);
            if (OUTLINED_FUNCTION_16_1(v40))
            {
LABEL_32:
              *v83 = v75[0];
              OUTLINED_FUNCTION_48_3();
              OUTLINED_FUNCTION_36_3();
              OUTLINED_FUNCTION_42_3();
              OUTLINED_FUNCTION_109_1();
              *&v86[4] = v28;
              OUTLINED_FUNCTION_62();
              OUTLINED_FUNCTION_20_3();
              _os_log_send_and_compose_impl();
            }

LABEL_39:
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_238_0();
          }
        }

        else if (v26[828])
        {
          OUTLINED_FUNCTION_45_4();
          v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v49 = OUTLINED_FUNCTION_123_2(v41, v42, v43, v44, v45, v46, v47, v48, v69, v70, v72[0], v72[1], v75[0], v75[1], v77, v78, BYTE4(v78), v79[0]);
          if (OUTLINED_FUNCTION_16_1(v49))
          {
            goto LABEL_32;
          }

          goto LABEL_39;
        }

LABEL_41:
        v57 = __copy_assignment_8_8_t0w8_pa0_16609_8_pa0_37959_16_pa0_51628_24(v87, v24 + 3);
        v64 = OUTLINED_FUNCTION_98_0(v57, v58, v59, v24[7], v60, v61, v62, v63, v69, v70, v72[0], v72[1], v75[0], v75[1], v77, v78, *v79, v80, v81, v82, *v83, *&v83[8], *&v83[16], v84, v85, *v86, *&v86[8], *&v86[16], v87[0]);
        if (v64)
        {
          v19 = v64;
          OUTLINED_FUNCTION_45_4();
          v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v67 = os_log_type_enabled(v66, BYTE4(v78));
          if (OUTLINED_FUNCTION_115_1(v67))
          {
            *v83 = 136315906;
            OUTLINED_FUNCTION_43_3();
            *&v83[22] = 2048;
            v84 = v28;
            LOWORD(v85) = 1024;
            *(&v85 + 2) = v19;
            OUTLINED_FUNCTION_62();
            OUTLINED_FUNCTION_20_3();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_414();
          if (!MutableCopy)
          {
LABEL_46:
            if (v28)
            {
              CFRelease(v28);
            }

            if (!v19)
            {
LABEL_49:
              *(a2 + 258) = 1;
            }

            return v19;
          }

LABEL_45:
          CFRelease(MutableCopy);
          goto LABEL_46;
        }

        CFRelease(v28);
        v25 = 0;
LABEL_43:
        v24 = *v24;
        if (!v24)
        {
          goto LABEL_44;
        }
      }
    }

    *v79 = 1;
    v80 = DerivedStorage[8];
    v81 = DerivedStorage[9];
    v82 = 0;
    v7 = FigCFWeakReferenceHolderCopyReferencedObject();
    FigGetAllocatorForMedia();
    v8 = FigCFDictionaryCreateMutableCopy();
    if (v7)
    {
      if (dword_1EAF16CF0)
      {
        OUTLINED_FUNCTION_92_2();
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v10 = os_log_type_enabled(v9, BYTE3(v78));
        if (OUTLINED_FUNCTION_28_1(v10))
        {
          *v83 = 136316162;
          *&v83[4] = "ckb_sendApplicationStatusCallbackForRequestWithBossMutex";
          *&v83[12] = 2114;
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_42_3();
          *&v86[2] = 2080;
          *&v86[4] = v11;
          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_20_3();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417();
      }

      v12 = __copy_assignment_8_8_t0w8_pa0_16609_8_pa0_37959_16_pa0_51628_24(v87, v79);
      v19 = OUTLINED_FUNCTION_98_0(v12, v13, v14, v6[11], v15, v16, v17, v18, v69, v70, v71, v73, v74, v76, v77, v78, *v79, v80, v81, v82, *v83, *&v83[8], *&v83[16], v84, v85, *v86, *&v86[8], *&v86[16], v87[0]);
      if (v19)
      {
        OUTLINED_FUNCTION_92_2();
        v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v21 = os_log_type_enabled(v20, BYTE3(v78));
        if (OUTLINED_FUNCTION_16_1(v21))
        {
          *v83 = 136315906;
          OUTLINED_FUNCTION_43_3();
          *&v83[22] = 2048;
          v84 = v7;
          LOWORD(v85) = 1024;
          *(&v85 + 2) = v19;
          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_238_0();
        if (v8)
        {
          goto LABEL_16;
        }

LABEL_17:
        if (v7)
        {
          CFRelease(v7);
        }

        if (v19)
        {
          return v19;
        }

        goto LABEL_20;
      }

      CFRelease(v7);
      v7 = 0;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    else
    {
      OUTLINED_FUNCTION_37_3();
      v19 = FigSignalErrorAtGM();
      if (!v8)
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    CFRelease(v8);
    goto LABEL_17;
  }

  v68 = FigSignalErrorAtGM();
  if (v68)
  {
    return v68;
  }

  v19 = FigSignalErrorAtGM();
  if (!v19)
  {
    goto LABEL_49;
  }

  return v19;
}

void ckb_completeProcessingRequestWithBossMutex(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  v6 = a3[25];
  if (v6 || (v6 = a3[23]) != 0 || (v6 = a3[24]) != 0)
  {
    v7 = CFRetain(v6);
    cf = v7;
  }

  else
  {
    FigCreateErrorForOSStatus(4294948138, &cf);
    v7 = cf;
  }

  ckb_transitionRequestToTerminalStateWithBossMutex(a1, a2, a3, v7);
  if (cf)
  {
    CFRelease(cf);
  }
}

void ckb_httpReadCallback(uint64_t a1, int a2, uint64_t a3, OpaqueCMBlockBuffer *a4, size_t a5, size_t a6, char a7, int a8)
{
  v73[16] = *MEMORY[0x1E69E9840];
  v62 = 0;
  if (ckb_copyBossFromRetainProxy(a3, &v62))
  {
    goto LABEL_61;
  }

  v61 = v8;
  if (!CMBaseObjectGetDerivedStorage())
  {
    FigUserCrashWithMessage();
  }

  FigSimpleMutexLock();
  v15 = v62;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v66 = 0;
  v67 = 0;
  HIDWORD(v65) = 0;
  v64 = 0;
  Value = CFDictionaryGetValue(*(DerivedStorage + 128), a2);
  if (!Value)
  {
    goto LABEL_66;
  }

  v18 = ckb_copyGroupAndRequestFromIDWithBossMutex(v15, Value, &v67, &v66);
  if (v18)
  {
    goto LABEL_9;
  }

  v18 = ckg_ensureContentKeyForRequest(v67, v66, v15, *(DerivedStorage + 152));
  if (v18)
  {
    goto LABEL_9;
  }

  if (a8)
  {
    v18 = FigCFHTTPCopyErrorCodeAndCommentForHTTPStatusCode(a8, &v65 + 1, &v64);
LABEL_9:
    v19 = v18;
    goto LABEL_37;
  }

  if (!a4)
  {
    if ((a7 & 2) == 0)
    {
LABEL_36:
      v19 = 0;
      goto LABEL_37;
    }

    goto LABEL_18;
  }

  v20 = *(v66 + 14);
  if (!v20)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v18 = OUTLINED_FUNCTION_121_0(AllocatorForMedia, v22, v23, v24, v25, v26, v27, v28, v59, v60, v8, v62, type, v64, v65, v66);
    if (v18)
    {
      goto LABEL_9;
    }

    v20 = *(v66 + 14);
  }

  appended = CMBlockBufferAppendBufferReference(v20, a4, a5, a6, 0);
  v19 = appended;
  if ((a7 & 2) != 0 && !appended)
  {
LABEL_18:
    if (*(v66 + 14))
    {
      FigCFDictionarySetValue();
      v30 = v66;
      v31 = *(v66 + 12);
      if (v31)
      {
        CFRelease(v31);
        v30 = v66;
        *(v66 + 12) = 0;
      }

      v30[26] = 0;
      CFDictionaryRemoveValue(*(DerivedStorage + 128), 0);
      if (dword_1EAF16CF0)
      {
        LODWORD(cf) = 0;
        HIBYTE(type) = 0;
        v32 = OUTLINED_FUNCTION_102_1();
        v40 = OUTLINED_FUNCTION_124_2(v32, v33, v34, v35, v36, v37, v38, v39, v59, v60, v61, v62, type, SWORD2(type), SBYTE6(type), HIBYTE(type), v64, v65, v66, v67, cf);
        if (OUTLINED_FUNCTION_115_1(v40))
        {
          OUTLINED_FUNCTION_75_2();
          LODWORD(blockBufferOut) = 136315906;
          OUTLINED_FUNCTION_3_21();
          v70 = @"HTTP";
          OUTLINED_FUNCTION_146();
          OUTLINED_FUNCTION_36();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414();
      }

      v41 = v66;
      v73[0] = 0;
      cf = 0;
      blockBufferOut = 0;
      if (v66)
      {
        v42 = CFGetAllocator(v15);
        v43 = *(v41 + 14);
        v44 = FigGetAllocatorForMedia();
        DataLength = CMBlockBufferGetDataLength(*(v41 + 14));
        if (!CMBlockBufferCreateContiguous(v42, v43, v44, 0, 0, DataLength, 0, &blockBufferOut))
        {
          CFGetAllocator(v15);
          CMBlockBufferGetDataLength(blockBufferOut);
          if (!FigCreateCFDataWithBlockBufferNoCopy())
          {
            v46 = CFGetAllocator(v15);
            if (!FigContentKeyResponseParamsCreate(v46, 1, 0, 0, cf, v73))
            {
              ckb_processResponseInternalWithBossMutex(v15, *(v41 + 4), v73[0]);
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_49_0();
        FigSignalErrorAtGM();
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v73[0])
      {
        CFRelease(v73[0]);
      }

      if (blockBufferOut)
      {
        CFRelease(blockBufferOut);
      }

      goto LABEL_36;
    }

LABEL_66:
    OUTLINED_FUNCTION_49_0();
    v18 = FigSignalErrorAtGM();
    goto LABEL_9;
  }

LABEL_37:
  if (!v66)
  {
    goto LABEL_49;
  }

  if (!HIDWORD(v65))
  {
    if (v19 && dword_1EAF16CF0)
    {
      LODWORD(cf) = 0;
      HIBYTE(type) = 0;
      v57 = OUTLINED_FUNCTION_102_1();
      v58 = os_log_type_enabled(v57, HIBYTE(type));
      if (OUTLINED_FUNCTION_16_1(v58))
      {
        OUTLINED_FUNCTION_75_2();
        LODWORD(blockBufferOut) = 136316162;
        OUTLINED_FUNCTION_3_21();
        v70 = @"HTTP";
        v71 = 1024;
        LODWORD(v72) = v19;
        OUTLINED_FUNCTION_146();
        OUTLINED_FUNCTION_36();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0();
      if (!v15)
      {
        goto LABEL_54;
      }

      goto LABEL_50;
    }

LABEL_49:
    if (v15)
    {
      goto LABEL_50;
    }

    goto LABEL_54;
  }

  if (dword_1EAF16CF0)
  {
    LODWORD(cf) = 0;
    HIBYTE(type) = 0;
    v47 = OUTLINED_FUNCTION_102_1();
    v55 = OUTLINED_FUNCTION_124_2(v47, v48, v49, v50, v51, v52, v53, v54, v59, v60, v61, v62, type, SWORD2(type), SBYTE6(type), HIBYTE(type), v64, v65, v66, v67, cf);
    if (OUTLINED_FUNCTION_115_1(v55))
    {
      OUTLINED_FUNCTION_75_2();
      LODWORD(blockBufferOut) = 136316162;
      OUTLINED_FUNCTION_66_2();
      v70 = @"HTTP";
      OUTLINED_FUNCTION_110_1();
      v72 = v56;
      OUTLINED_FUNCTION_146();
      OUTLINED_FUNCTION_36();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
    v19 = HIDWORD(v65);
    goto LABEL_49;
  }

  v19 = HIDWORD(v65);
  if (v15)
  {
LABEL_50:
    if (v19)
    {
      if (v66)
      {
        v73[0] = 0;
        FigCreateErrorForOSStatus(v19, v73);
        ckb_processErrorForRequestWithBossMutex(v15, v67, v66, v73[0]);
        if (v73[0])
        {
          CFRelease(v73[0]);
        }
      }
    }
  }

LABEL_54:
  if (v64)
  {
    CFRelease(v64);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  FigSimpleMutexUnlock();
LABEL_61:
  if (v62)
  {
    CFRelease(v62);
  }
}

uint64_t ckb_processResponseInternalWithBossMutex(uint64_t a1, const void *a2, uint64_t a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    FigUserCrashWithMessage();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  FigUserCrashWithMessage();
LABEL_3:
  cf[0] = 0;
  if (!a1)
  {
    FigUserCrashWithMessage();
  }

  v6 = OUTLINED_FUNCTION_76_3();
  v9 = ckb_copyGroupAndRequestFromIDWithBossMutex(v6, v7, 0, v8);
  if (v9)
  {
    KeySystem = 0;
  }

  else
  {
    KeySystem = FigContentKeySpecifierGetKeySystem(*(cf[0] + 2));
  }

  if (!v9)
  {
    if (KeySystem != 1)
    {
      if (KeySystem != 3)
      {
        if (KeySystem != 2)
        {
          v122 = KeySystem;
          FigUserCrashWithMessage();
          v9 = 0;
          goto LABEL_114;
        }

        OUTLINED_FUNCTION_99_1();
        if (a1)
        {
          if (a3)
          {
LABEL_13:
            v11 = OUTLINED_FUNCTION_76_3();
            v15 = ckb_copyGroupAndRequestFromIDWithBossMutex(v11, v12, v13, v14);
            if (v15)
            {
              goto LABEL_26;
            }

            v15 = OUTLINED_FUNCTION_118_1(v15, v16, v17, v18, v19, v20, v21, v22, v122, v123, v124, v125, v126, v127, *type, v129, *v130, *&v130[8], *&v130[16], v131, *v132, *&v132[8], *&v132[16], *&v132[24], *&v132[32], *&v132[40], *&v132[48], v133, cf[0]);
            if (v15)
            {
              goto LABEL_26;
            }

            if (!cf[0])
            {
              FigUserCrashWithMessage();
            }

            v23 = *(cf[0] + 8);
            if (!v23)
            {
              FigUserCrashWithMessage();
            }

            if (FigContentKeySpecifierGetKeySystem(*(v23 + 16)) != 2)
            {
              FigUserCrashWithMessage();
            }

            v24 = *(v23 + 72);
            v25 = *(a3 + 40);
            v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v26)
            {
              v15 = v26(v24, *MEMORY[0x1E69610D8], v25);
              if (v15)
              {
LABEL_26:
                v9 = v15;
                goto LABEL_65;
              }

              v9 = *(a3 + 32);
              if (!v9)
              {
                goto LABEL_65;
              }

              v27 = *(v23 + 72);
              v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v28)
              {
                v15 = v28(v27, *MEMORY[0x1E69610C8], v9);
                goto LABEL_26;
              }
            }

            v9 = 4294954514;
LABEL_65:
            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            v43 = *v130;
            if (*v130)
            {
LABEL_68:
              CFRelease(v43);
            }

LABEL_114:
            v125 = 0;
            v126 = 0;
            if (a1)
            {
              if (a3)
              {
                goto LABEL_116;
              }
            }

            else
            {
              FigUserCrashWithMessage();
              if (a3)
              {
                goto LABEL_116;
              }
            }

            FigUserCrashWithMessage();
LABEL_116:
            v60 = ckb_copyGroupAndRequestFromIDWithBossMutex(a1, a2, &v126, &v125);
            if (v60)
            {
              v9 = v60;
            }

            else
            {
              Current = CFAbsoluteTimeGetCurrent();
              v69 = v125;
              *(v125 + 30) = Current;
              v70 = v69[8];
              if (!v9)
              {
                if (!v70)
                {
                  FigUserCrashWithMessage();
                }

                v71 = *(v70 + 40);
                started = *(a3 + 24);
                *(v70 + 40) = started;
                if (started)
                {
                  started = CFRetain(started);
                }

                if (v71)
                {
                  CFRelease(v71);
                }

                if (*(*(v70 + 24) + 28) == 2)
                {
                  goto LABEL_149;
                }

                v73 = v125;
                v74 = malloc_type_calloc(1uLL, 0x20uLL, 0x60040FFD3A10EuLL);
                if (!v74)
                {
                  OUTLINED_FUNCTION_51_3();
                  started = FigSignalErrorAtGM();
                  goto LABEL_149;
                }

                v75 = v74;
                *v74 = FigCFWeakReferenceHolderCreateWithReferencedObject();
                v75[1] = FigCFWeakReferenceHolderCreateWithReferencedObject();
                v76 = v73[17];
                if (v76)
                {
                  v76 = CFRetain(v76);
                }

                v75[2] = v76;
                v77 = v73[20];
                if (v77)
                {
                  v77 = CFRetain(v77);
                }

                v75[3] = v77;
                GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
                if (GlobalNetworkBufferingQueue)
                {
                  if (!*(v70 + 40))
                  {
LABEL_148:
                    ckb_renewalTimerFinalizer(v75);
                    goto LABEL_149;
                  }

                  v79 = GlobalNetworkBufferingQueue;
                  ck_cancelAndReleaseRenewalTimer(v70);
                  v80 = MEMORY[0x19A8CCD90](*(v70 + 40));
                  v81 = v80 - CFAbsoluteTimeGetCurrent();
                  if (v81 > 0.0)
                  {
                    started = ckbutil_createAndStartTimer(v81, v75, ckb_renewalTimerEventHandler, ckb_renewalTimerFinalizer, v79, (v70 + 80));
                    if (started)
                    {
LABEL_134:
                      v82 = started;
                      OUTLINED_FUNCTION_46_2();
                      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v84 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
                      if (OUTLINED_FUNCTION_71_0(v84))
                      {
                        v85 = *(v70 + 96);
                        *v130 = 136315650;
                        *&v130[4] = "ck_startRenewalTimer";
                        *&v130[12] = 2114;
                        *&v130[14] = v85;
                        *&v130[22] = 1024;
                        LODWORD(v131) = v82;
                        OUTLINED_FUNCTION_100();
                        OUTLINED_FUNCTION_20_3();
                        OUTLINED_FUNCTION_129_2();
                      }

                      OUTLINED_FUNCTION_16();
                      OUTLINED_FUNCTION_449();
                      goto LABEL_148;
                    }

                    v86 = 0;
                    goto LABEL_139;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_51_3();
                  started = FigSignalErrorAtGM();
                  if (started)
                  {
                    goto LABEL_134;
                  }

                  v81 = 0.0;
                }

                v86 = 1;
LABEL_139:
                if (dword_1EAF16CF0)
                {
                  OUTLINED_FUNCTION_46_2();
                  v87 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v88 = os_log_type_enabled(v87, type[0]);
                  if (OUTLINED_FUNCTION_28_1(v88))
                  {
                    v89 = *(v70 + 96);
                    v90 = *(v70 + 40);
                    *v130 = 136315906;
                    *&v130[4] = "ck_startRenewalTimer";
                    *&v130[12] = 2114;
                    *&v130[14] = v89;
                    *&v130[22] = 2112;
                    v131 = v90;
                    *v132 = 2048;
                    *&v132[2] = v81;
                    OUTLINED_FUNCTION_100();
                    OUTLINED_FUNCTION_36();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_7();
                  started = fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                if (v86)
                {
                  goto LABEL_148;
                }

LABEL_149:
                OUTLINED_FUNCTION_120_1(started, v61, v62, v63, v64, v65, v66, v67, v122, v123, v124, v125, v126, v127, *type, v129);
                v91 = FigContentKeySpecifierGetKeySystem(*(v70 + 16));
                LoggingDescription = ckbutil_keySystem_getLoggingDescription(v91);
                if (dword_1EAF16CF0)
                {
                  v93 = LoggingDescription;
                  OUTLINED_FUNCTION_89_2();
                  v94 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v95 = os_log_type_enabled(v94, BYTE3(v127));
                  if (OUTLINED_FUNCTION_28_1(v95))
                  {
                    *v130 = 136316930;
                    *&v130[4] = "ck_logProcessResponse";
                    *&v130[12] = 2114;
                    OUTLINED_FUNCTION_80_2();
                    v131 = v96;
                    *v132 = v97;
                    *&v132[2] = v98;
                    *&v132[10] = 2112;
                    *&v132[12] = v93;
                    *&v132[20] = 2112;
                    *&v132[22] = v99;
                    *&v132[30] = 2080;
                    *&v132[32] = v100;
                    *&v132[40] = 2112;
                    *&v132[42] = v101;
                    OUTLINED_FUNCTION_100();
                    OUTLINED_FUNCTION_36();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_417();
                }

                v102 = *type;
                if (!*type)
                {
                  goto LABEL_155;
                }

                goto LABEL_154;
              }

              if (v70)
              {
                v104 = FigContentKeySpecifierGetKeySystem(*(v70 + 16));
                v105 = ckbutil_keySystem_getLoggingDescription(v104);
                OUTLINED_FUNCTION_120_1(v105, v106, v107, v108, v109, v110, v111, v112, v122, v123, v124, v125, v126, v127, *type, v129);
                OUTLINED_FUNCTION_89_2();
                v113 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v114 = os_log_type_enabled(v113, BYTE3(v127));
                v115 = OUTLINED_FUNCTION_71_0(v114);
                v116 = *type;
                if (v115)
                {
                  *v130 = 136316930;
                  *&v130[4] = "ck_logProcessResponseFailed";
                  *&v130[12] = 2114;
                  OUTLINED_FUNCTION_80_2();
                  v131 = v117;
                  *v132 = 1024;
                  *&v132[2] = v9;
                  *&v132[6] = 2112;
                  *&v132[8] = v105;
                  *&v132[16] = 2112;
                  *&v132[18] = v118;
                  *&v132[26] = 2080;
                  *&v132[28] = v119;
                  *&v132[36] = 2112;
                  *&v132[38] = v116;
                  OUTLINED_FUNCTION_100();
                  OUTLINED_FUNCTION_20_3();
                  OUTLINED_FUNCTION_129_2();
                }

                OUTLINED_FUNCTION_16();
                OUTLINED_FUNCTION_449();
                if (!v116)
                {
                  goto LABEL_155;
                }

                v102 = v116;
LABEL_154:
                CFRelease(v102);
LABEL_155:
                ckb_transitionRequestToTerminalStateWithOSStatusWithBossMutex(a1, v126, v125, v9);
LABEL_156:
                if (v125)
                {
                  CFRelease(v125);
                }

                if (v126)
                {
                  CFRelease(v126);
                }

                return v9;
              }
            }

            OUTLINED_FUNCTION_46_2();
            v120 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v121 = os_log_type_enabled(v120, type[0]);
            if (OUTLINED_FUNCTION_124_0(v121))
            {
              *v130 = 136315650;
              *&v130[4] = "ckb_completeResponseProcessingWithBossMutex";
              *&v130[12] = 2114;
              OUTLINED_FUNCTION_80_2();
              v131 = a2;
              OUTLINED_FUNCTION_100();
              OUTLINED_FUNCTION_44_0();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_345_0();
            goto LABEL_156;
          }
        }

        else
        {
          FigUserCrashWithMessage();
          if (a3)
          {
            goto LABEL_13;
          }
        }

        FigUserCrashWithMessage();
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_99_1();
      if (a1)
      {
        if (a3)
        {
LABEL_31:
          v29 = OUTLINED_FUNCTION_76_3();
          v33 = ckb_copyGroupAndRequestFromIDWithBossMutex(v29, v30, v31, v32);
          if (v33 || (v33 = OUTLINED_FUNCTION_118_1(v33, v34, v35, v36, v37, v38, v39, v40, v122, v123, v124, v125, v126, v127, *type, v129, *v130, *&v130[8], *&v130[16], v131, *v132, *&v132[8], *&v132[16], *&v132[24], *&v132[32], *&v132[40], *&v132[48], v133, cf[0]), v33))
          {
            v9 = v33;
          }

          else
          {
            if (!cf[0])
            {
              FigUserCrashWithMessage();
            }

            v41 = *(cf[0] + 8);
            if (!v41)
            {
              FigUserCrashWithMessage();
            }

            if (FigContentKeySpecifierGetKeySystem(*(v41 + 16)) != 3)
            {
              FigUserCrashWithMessage();
            }

            v9 = *(v41 + 56);
            v42 = *(a3 + 40);
            *(v41 + 56) = v42;
            if (v42)
            {
              CFRetain(v42);
            }

            if (v9)
            {
              CFRelease(v9);
              v9 = 0;
            }
          }

          if (*v130)
          {
            CFRelease(*v130);
          }

          v43 = cf[0];
          if (cf[0])
          {
            goto LABEL_68;
          }

          goto LABEL_114;
        }
      }

      else
      {
        FigUserCrashWithMessage();
        if (a3)
        {
          goto LABEL_31;
        }
      }

      FigUserCrashWithMessage();
      goto LABEL_31;
    }

    CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      if (a3)
      {
        goto LABEL_49;
      }
    }

    else
    {
      FigUserCrashWithMessage();
      if (a3)
      {
        goto LABEL_49;
      }
    }

    FigUserCrashWithMessage();
LABEL_49:
    v44 = OUTLINED_FUNCTION_99_1();
    if (a1)
    {
      if (a3)
      {
LABEL_51:
        v45 = ckb_copyGroupAndRequestFromIDWithBossMutex(a1, a2, cf, v130);
        if (v45)
        {
          goto LABEL_175;
        }

        v45 = ckg_ensureContentKeyForRequest(cf[0], *v130, a1, *(v44 + 152));
        if (v45)
        {
          goto LABEL_175;
        }

        v46 = *v130;
        if (!*v130)
        {
          FigUserCrashWithMessage();
        }

        v47 = *(v46 + 64);
        if (v47)
        {
          if (a3)
          {
LABEL_57:
            Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (Mutable)
            {
              if (FigContentKeySpecifierGetKeySystem(v47[2]) == 1 && *(v47[3] + 28) == 2)
              {
                FigCFDictionarySetValue();
              }

              goto LABEL_61;
            }

            v45 = FigSignalErrorAtGM();
            if (!v45)
            {
LABEL_61:
              v49 = v47[9];
              if (v49)
              {
                v50 = CFRetain(v49);
              }

              else
              {
                v50 = 0;
              }

              v51 = *(a3 + 40);
              if (v51)
              {
                v52 = CFRetain(v51);
              }

              else
              {
                v52 = 0;
              }

              v53 = *(a3 + 16);
              if (v53 != 1)
              {
                if (v53 == 2)
                {
                  v54 = 0;
                  v9 = 0;
                  goto LABEL_89;
                }

                v122 = *(a3 + 16);
                FigUserCrashWithMessage();
              }

              v9 = 0;
LABEL_88:
              v54 = 1;
LABEL_89:
              if (*v130)
              {
                CFRelease(*v130);
              }

              if (cf[0])
              {
                CFRelease(cf[0]);
              }

              if (v9)
              {
                goto LABEL_108;
              }

              FigSimpleMutexUnlock();
              if (v50)
              {
                if (Mutable)
                {
                  goto LABEL_96;
                }
              }

              else
              {
                FigUserCrashWithMessage();
                if (Mutable)
                {
LABEL_96:
                  if (v52)
                  {
                    goto LABEL_97;
                  }

LABEL_144:
                  FigUserCrashWithMessage();
LABEL_97:
                  if (v54)
                  {
                    v55 = *(CMBaseObjectGetVTable() + 16);
                    if (*v55 >= 4uLL)
                    {
                      v56 = v55[12];
                      if (v56)
                      {
                        v57 = v56(v50, v52, Mutable);
LABEL_105:
                        v9 = v57;
LABEL_107:
                        FigSimpleMutexLock();
LABEL_108:
                        if (v52)
                        {
                          CFRelease(v52);
                        }

                        if (Mutable)
                        {
                          CFRelease(Mutable);
                        }

                        if (v50)
                        {
                          CFRelease(v50);
                        }

                        goto LABEL_114;
                      }
                    }
                  }

                  else
                  {
                    v58 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v58)
                    {
                      v57 = v58(v50, *MEMORY[0x1E6961138], *MEMORY[0x1E695E4D0]);
                      if (v57)
                      {
                        goto LABEL_105;
                      }

                      v59 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (v59)
                      {
                        v57 = v59(v50, *MEMORY[0x1E69610F0], v52);
                        goto LABEL_105;
                      }
                    }
                  }

                  v9 = 4294954514;
                  goto LABEL_107;
                }
              }

              FigUserCrashWithMessage();
              if (v52)
              {
                goto LABEL_97;
              }

              goto LABEL_144;
            }

LABEL_175:
            v9 = v45;
            v50 = 0;
            Mutable = 0;
            v52 = 0;
            goto LABEL_88;
          }
        }

        else
        {
          FigUserCrashWithMessage();
          if (a3)
          {
            goto LABEL_57;
          }
        }

        FigUserCrashWithMessage();
        goto LABEL_57;
      }
    }

    else
    {
      FigUserCrashWithMessage();
      if (a3)
      {
        goto LABEL_51;
      }
    }

    FigUserCrashWithMessage();
    goto LABEL_51;
  }

  return v9;
}

void ckb_renewalTimerEventHandler(uint64_t a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      if (dword_1EAF16CF0)
      {
        OUTLINED_FUNCTION_147();
        OUTLINED_FUNCTION_104_2();
        v6 = OUTLINED_FUNCTION_126();
        v14 = OUTLINED_FUNCTION_19_4(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18, SBYTE2(v18), BYTE3(v18), SHIDWORD(v18));
        if (OUTLINED_FUNCTION_115_1(v14))
        {
          OUTLINED_FUNCTION_2_28();
          OUTLINED_FUNCTION_36();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_612();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414();
      }

      ckb_renew(v3, v5[2], 0, *(a1 + 16), *(a1 + 24), 0);
      CFRelease(v3);
      CFRelease(v5);
    }

    else
    {

      CFRelease(v3);
    }
  }
}

void ckb_requestTimerEventHandler()
{
  v21 = *MEMORY[0x1E69E9840];
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    CMBaseObjectGetDerivedStorage();
    if (FigSimpleMutexLock())
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM();

      CFRelease(v1);
    }

    else
    {
      v2 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v2)
      {
        v3 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v3)
        {
          if (dword_1EAF16CF0)
          {
            OUTLINED_FUNCTION_147();
            v4 = OUTLINED_FUNCTION_23_4();
            v12 = OUTLINED_FUNCTION_34_5(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, cf, v16, v17, v18, v19);
            if (OUTLINED_FUNCTION_16_1(v12))
            {
              v20 = 136315394;
              OUTLINED_FUNCTION_2_28();
              OUTLINED_FUNCTION_23();
              _os_log_send_and_compose_impl();
              OUTLINED_FUNCTION_507();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_238_0();
          }

          cf = 0;
          FigCreateErrorForOSStatus(4294948144, &cf);
          ckb_processErrorForRequestWithBossMutex(v1, v2, v3, cf);
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      else
      {
        v3 = 0;
      }

      FigSimpleMutexUnlock();
      CFRelease(v1);
      if (v2)
      {
        CFRelease(v2);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }
  }
}

void ckb_customURLReadCallback(uint64_t a1, const void *a2, uint64_t a3, OpaqueCMBlockBuffer *a4, char a5, unint64_t a6)
{
  v77[16] = *MEMORY[0x1E69E9840];
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  v68 = 0;
  if (ckb_copyBossFromRetainProxy(a1, &v72))
  {
    return;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(DerivedStorage + 120), a2);
  if (!Value)
  {
    OUTLINED_FUNCTION_239();
    goto LABEL_49;
  }

  HTTPStatusCode = ckb_copyGroupAndRequestFromIDWithBossMutex(v72, Value, &v70, &v71);
  if (HTTPStatusCode)
  {
    goto LABEL_50;
  }

  v77[0] = 0;
  cf[0] = 0;
  HTTPStatusCode = FigCustomURLResponseInfoGetHTTPStatusCode();
  if (HTTPStatusCode)
  {
    if (HTTPStatusCode != -17360)
    {
      goto LABEL_50;
    }
  }

  HTTPStatusCode = FigCFHTTPCreateCFErrorFromHTTPStatusCode(v77[0], cf);
  if (HTTPStatusCode)
  {
    goto LABEL_50;
  }

  if (a6 | cf[0])
  {
    if (a6)
    {
      v13 = a6;
    }

    else
    {
      v13 = cf[0];
    }

    v14 = CFRetain(v13);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v14)
    {
      goto LABEL_46;
    }
  }

  if (!a4)
  {
    if ((a5 & 1) == 0)
    {
LABEL_45:
      v14 = 0;
LABEL_46:
      HTTPStatusCode = 0;
      goto LABEL_51;
    }

LABEL_22:
    if (*(v71 + 14))
    {
      HTTPStatusCode = FigCustomURLResponseInfoCopyContentRenewalDate();
      if (!HTTPStatusCode || HTTPStatusCode == -17360)
      {
        HTTPStatusCode = FigCustomURLResponseInfoCopyUniversalTypeIdentifier();
        if (!HTTPStatusCode || HTTPStatusCode == -17360)
        {
          CFDictionaryRemoveValue(*(DerivedStorage + 120), a2);
          if (dword_1EAF16CF0)
          {
            LODWORD(v73) = 0;
            BYTE4(v67) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v26 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            if (OUTLINED_FUNCTION_109_0(v26))
            {
              OUTLINED_FUNCTION_60_3();
              LODWORD(cf[0]) = 136315906;
              OUTLINED_FUNCTION_3_21();
              v75 = @"CustomURL";
              OUTLINED_FUNCTION_146();
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_524();
          }

          v28 = v71;
          v27 = v72;
          v77[0] = 0;
          v73 = 0;
          cf[0] = 0;
          if (v71)
          {
            v29 = CFGetAllocator(v72);
            v30 = *(v28 + 14);
            AllocatorForMedia = FigGetAllocatorForMedia();
            DataLength = CMBlockBufferGetDataLength(*(v28 + 14));
            if (!CMBlockBufferCreateContiguous(v29, v30, AllocatorForMedia, 0, 0, DataLength, 0, cf))
            {
              CFGetAllocator(v27);
              CMBlockBufferGetDataLength(cf[0]);
              if (!FigCreateCFDataWithBlockBufferNoCopy())
              {
                v33 = CFGetAllocator(v27);
                v34 = FigCFEqual() ? 2 : 1;
                if (!FigContentKeyResponseParamsCreate(v33, v34, v68, 0, v73, v77))
                {
                  ckb_processResponseInternalWithBossMutex(v27, *(v28 + 4), v77[0]);
                }
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_239();
            FigSignalErrorAtGM();
          }

          if (v73)
          {
            CFRelease(v73);
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          if (v77[0])
          {
            CFRelease(v77[0]);
          }

          goto LABEL_45;
        }
      }

LABEL_50:
      v14 = 0;
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_239();
LABEL_49:
    HTTPStatusCode = FigSignalErrorAtGM();
    goto LABEL_50;
  }

  v15 = *(v71 + 14);
  if (!v15)
  {
    v16 = FigGetAllocatorForMedia();
    HTTPStatusCode = OUTLINED_FUNCTION_121_0(v16, v17, v18, v19, v20, v21, v22, v23, v64, v65, v66, v67, 0, 0, v70, v71);
    if (HTTPStatusCode)
    {
      goto LABEL_50;
    }

    v15 = *(v71 + 14);
  }

  v24 = CMBlockBufferGetDataLength(a4);
  HTTPStatusCode = CMBlockBufferAppendBufferReference(v15, a4, 0, v24, 0);
  v14 = 0;
  if ((a5 & 1) != 0 && !HTTPStatusCode)
  {
    goto LABEL_22;
  }

LABEL_51:
  if (!v72 || !v71)
  {
    goto LABEL_74;
  }

  v73 = 0;
  if (!v14)
  {
    if (!HTTPStatusCode)
    {
      goto LABEL_74;
    }

    FigCreateErrorForOSStatus(HTTPStatusCode, &v73);
    if (dword_1EAF16CF0)
    {
      v44 = OUTLINED_FUNCTION_5_19();
      v52 = OUTLINED_FUNCTION_116_0(v44, v45, v46, v47, v48, v49, v50, v51, v64, v65, v66, v67, SBYTE2(v67), BYTE3(v67), SHIDWORD(v67));
      if (OUTLINED_FUNCTION_109_0(v52))
      {
        OUTLINED_FUNCTION_60_3();
        LODWORD(cf[0]) = 136316162;
        OUTLINED_FUNCTION_66_2();
        v75 = @"CustomURL";
        OUTLINED_FUNCTION_110_1();
        v76 = v53;
        OUTLINED_FUNCTION_146();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_456();
        OUTLINED_FUNCTION_329_0();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524();
    }

    v63 = v73;
    if (!v73)
    {
      goto LABEL_74;
    }

    goto LABEL_72;
  }

  if (!ckbutil_errorIsKeyCallbacksExistSentinel(v14) || *(v71 + 257))
  {
    if (!dword_1EAF16CF0)
    {
      goto LABEL_68;
    }

    v35 = OUTLINED_FUNCTION_5_19();
    v43 = OUTLINED_FUNCTION_116_0(v35, v36, v37, v38, v39, v40, v41, v42, v64, v65, v66, v67, SBYTE2(v67), BYTE3(v67), SHIDWORD(v67));
    if (!OUTLINED_FUNCTION_109_0(v43))
    {
      goto LABEL_67;
    }

    OUTLINED_FUNCTION_60_3();
    LODWORD(cf[0]) = 136316162;
    OUTLINED_FUNCTION_3_21();
    v75 = @"CustomURL";
    OUTLINED_FUNCTION_110_1();
    v76 = v14;
    OUTLINED_FUNCTION_146();
    goto LABEL_66;
  }

  if (!dword_1EAF16CF0)
  {
    goto LABEL_68;
  }

  v54 = OUTLINED_FUNCTION_5_19();
  v62 = OUTLINED_FUNCTION_116_0(v54, v55, v56, v57, v58, v59, v60, v61, v64, v65, v66, v67, SBYTE2(v67), BYTE3(v67), SHIDWORD(v67));
  if (OUTLINED_FUNCTION_109_0(v62))
  {
    OUTLINED_FUNCTION_60_3();
    LODWORD(cf[0]) = 136315906;
    OUTLINED_FUNCTION_3_21();
    v75 = @"CustomURL";
    OUTLINED_FUNCTION_146();
LABEL_66:
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_456();
    OUTLINED_FUNCTION_329_0();
  }

LABEL_67:
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_524();
LABEL_68:
  v63 = CFRetain(v14);
  v73 = v63;
  if (v63)
  {
LABEL_72:
    ckb_processErrorForRequestWithBossMutex(v72, v70, v71, v63);
    if (v73)
    {
      CFRelease(v73);
    }
  }

LABEL_74:
  FigSimpleMutexUnlock();
  if (v69)
  {
    CFRelease(v69);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v72)
  {
    CFRelease(v72);
  }
}

uint64_t FigContentKeyRequestParamsCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeyRequestParamsCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeyRequestDataParamsCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeyRequestDataParamsCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeyResponseParamsCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeyResponseParamsCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeySecureTokenRequestParamsCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeySecureTokenRequestParamsCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeyBossCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeyBossCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeyBossCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeyBossCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeyBossCreate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeyBossCreate_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_replaceBossStorageAndCopyUpdatedBossWhenBossStaleWithBossMutex_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_createRequestData_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_createRequestData_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_createRequestData_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_createRequestData_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_createRequestData_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_createRequestData_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_createRequestData_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_setRequestHandlingCallbacks_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_setRequestHandlingCallbacks_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_getLoggingIdentifier_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_getLoggingIdentifier_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_getExistingKeyIfAnyWithBossMutex_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_getExistingKeyIfAnyWithBossMutex_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_getExistingKeyIfAnyWithBossMutex_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_registerAndGetNewRequestWithBossMutex_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_registerAndGetNewRequestWithBossMutex_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_startRequestWithMutexWithBossMutex_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_startRequestWithMutexWithBossMutex_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckg_getRequestByKeySpecifier_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckg_getRequestByKeySpecifier_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_sendStatusCallbackDispatchWithBossMutex_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_sendStatusCallbackDispatchWithBossMutex_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckg_getContentKey_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckg_getContentKey_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckg_getContentKey_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void ck_persistentKeyUpdatedCallback_cold_1(CFTypeRef *a1, CFTypeRef *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  if (FigSignalErrorAtGM())
  {
    if (*a1)
    {
      CFRelease(*a1);
    }

    if (*a2)
    {
      CFRelease(*a2);
    }

    if (*a3)
    {
      CFRelease(*a3);
    }

    if (*a4)
    {
      CFRelease(*a4);
    }

    free(a1);
  }
}

void ck_externalProtectionStateChangedCallback_cold_1(CFTypeRef *a1, CFTypeRef *a2, CFTypeRef *a3)
{
  if (FigSignalErrorAtGM())
  {
    if (*a1)
    {
      CFRelease(*a1);
    }

    if (*a2)
    {
      CFRelease(*a2);
    }

    if (*a3)
    {
      CFRelease(*a3);
    }

    free(a1);
  }
}

uint64_t ckg_setRequest_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckg_setRequest_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckg_setRequest_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckg_setRequest_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckg_removeRequest_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckg_removeRequest_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void ckb_processRequestViaNextHandlerWithBossMutex_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v6 = a1[25];
  if (v6 || (v6 = a1[23]) != 0 || (v6 = a1[24]) != 0)
  {
    v7 = CFRetain(v6);
    cf = v7;
  }

  else
  {
    FigCreateErrorForOSStatus(4294948138, &cf);
    v7 = cf;
  }

  ckb_transitionRequestToTerminalStateWithBossMutex(a2, a3, a1, v7);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t ckb_canRequestBeSatisfiedViaHTTPWithBossMutex_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_canRequestBeSatisfiedViaHTTPWithBossMutex_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_sendKeyRequestViaHTTPWithBossMutex_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_sendKeyRequestViaHTTPWithBossMutex_cold_2(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t ckb_copyBossFromRetainProxy_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_copyBossFromRetainProxy_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckb_copyBossFromRetainProxy_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL ckb_copyGroupAndRequestFromIDWithBossMutex_cold_1(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t ckb_copyGroupAndRequestFromIDWithBossMutex_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckbutil_createAndStartTimer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ckbutil_createAndStartTimer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVirtualDisplaySourceMovieCreate_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_34();
}

uint64_t FigVirtualDisplaySourceMovieCreate_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_34();
}

uint64_t FigVirtualDisplaySourceMovieCreate_cold_3()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_34();
}

uint64_t mov_finalize_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_34();
}

uint64_t mov_finalize_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_34();
}

uint64_t FigXPCPlaybackCoordinatorClientHandleMessage(const void *a1, uint64_t a2)
{
  if (FigXPCPlaybackCoordinatorServerHandlesMessagesForObject(a1) && a2)
  {
    if (!a1)
    {
      return 0;
    }

    v4 = CFGetTypeID(a1);
    if (v4 != FigPlaybackCoordinatorGetTypeID())
    {
      return 0;
    }

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

  else
  {
    OUTLINED_FUNCTION_376();

    return FigSignalErrorAtGM();
  }
}

uint64_t remoteXPCPlaybackCoordinator_BeginSuspension(uint64_t a1, const void *a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || !a2)
  {
    goto LABEL_9;
  }

  v5 = DerivedStorage;
  OUTLINED_FUNCTION_2_29();
  v6 = FigXPCCreateBasicMessage();
  if (v6)
  {
    goto LABEL_10;
  }

  v6 = FigXPCMessageSetTimelineCoordinatorSuspension();
  if (v6)
  {
    goto LABEL_10;
  }

  v6 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v6)
  {
    goto LABEL_10;
  }

  int64 = xpc_dictionary_get_int64(0, "SuspensionID");
  if (!int64)
  {
LABEL_9:
    OUTLINED_FUNCTION_376();
    v6 = FigSignalErrorAtGM();
LABEL_10:
    v8 = v6;
    goto LABEL_8;
  }

  CFDictionarySetValue(*(v5 + 56), a2, int64);
  v8 = 0;
LABEL_8:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t remoteXPCPlaybackCoordinator_EndSuspensionProposingNewTime(uint64_t a1, const void *a2)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1 && a2 && (v5 = DerivedStorage, (Value = CFDictionaryGetValue(*(DerivedStorage + 56), a2)) != 0))
  {
    v7 = Value;
    CFDictionaryRemoveValue(*(v5 + 56), a2);
    v8 = FigXPCCreateBasicMessage();
    if (!v8)
    {
      FigXPCMessageSetCMTime();
      xpc_dictionary_set_int64(0, "SuspensionID", v7);
      v8 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  else
  {
    v8 = FigSignalErrorAtGM();
  }

  v9 = v8;
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  return v9;
}

uint64_t remoteXPCPlaybackCoordinator_EndSuspensionWithReason()
{
  OUTLINED_FUNCTION_7_11();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_20();
  if (v1 && v0)
  {
    OUTLINED_FUNCTION_2_29();
    if (!FigXPCCreateBasicMessage())
    {
      FigXPCMessageSetCFString();
      OUTLINED_FUNCTION_4_25();
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_6_18();
  FigXPCRelease();
  return v2;
}

uint64_t remoteXPCPlaybackCoordinator_SetWeakMediumAndCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || !a2 || !a3)
  {
    v8 = FigSignalErrorAtGM();
LABEL_11:
    v10 = v8;
    goto LABEL_9;
  }

  v7 = DerivedStorage;
  OUTLINED_FUNCTION_2_29();
  v8 = FigXPCCreateBasicMessage();
  if (v8)
  {
    goto LABEL_11;
  }

  v8 = FigXPCRemoteClientSendSyncMessage();
  if (v8)
  {
    goto LABEL_11;
  }

  __copy_assignment_8_8_t0w16_pa0_12868_16_pa0_63777_24_pa0_904_32(v7 + 16, a3);
  v9 = *(v7 + 8);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = 0;
  *(v7 + 8) = FigCFWeakReferenceHolderCreateWithReferencedObject();
LABEL_9:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  return v10;
}

uint64_t remoteXPCPlaybackCoordinator_HandleAssignmentOfUUIDToLocalParticipantByMedium()
{
  OUTLINED_FUNCTION_7_11();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_20();
  if (v0)
  {
    OUTLINED_FUNCTION_2_29();
    if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFObject())
    {
      OUTLINED_FUNCTION_4_25();
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_6_18();
  FigXPCRelease();
  return v1;
}

uint64_t remoteXPCPlaybackCoordinator_CopyParticipantSnapshotForUUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  if (a1 && a2 && a3)
  {
    OUTLINED_FUNCTION_2_29();
    v6 = FigXPCCreateBasicMessage();
    if (!v6)
    {
      v6 = FigXPCMessageSetCFObject();
      if (!v6)
      {
        v6 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!v6)
        {
          v6 = FigXPCMessageCopyTimelineCoordinatorParticipantSnapshot();
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    v6 = FigSignalErrorAtGM();
  }

  v7 = v6;
  OUTLINED_FUNCTION_6_18();
  FigXPCRelease();
  FigXPCRelease();
  return v7;
}

uint64_t remoteXPCPlaybackCoordinator_CopyParticipantSnapshots()
{
  OUTLINED_FUNCTION_7_11();
  CMBaseObjectGetDerivedStorage();
  if (v1 && v0)
  {
    OUTLINED_FUNCTION_2_29();
    if (!FigXPCCreateBasicMessage())
    {
      OUTLINED_FUNCTION_4_25();
      if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        FigXPCMessageCopyTimelineCoordinatorParticipantSnapshots();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_6_18();
  FigXPCRelease();
  FigXPCRelease();
  return v2;
}

uint64_t remoteXPCPlaybackCoordinator_HandleRemovalOfParticipantStateFromMedium()
{
  OUTLINED_FUNCTION_7_11();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_20();
  if (v1 && v0)
  {
    OUTLINED_FUNCTION_2_29();
    if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFObject())
    {
      OUTLINED_FUNCTION_4_25();
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_6_18();
  FigXPCRelease();
  return v2;
}

uint64_t remoteXPCPlaybackCoordinator_GetExpectedTimeAtHostTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  if (a1 && a3 && (*(a2 + 12) & 0x1D) == 1)
  {
    CMTime = FigXPCCreateBasicMessage();
    if (!CMTime)
    {
      CMTime = FigXPCMessageSetCMTime();
      if (!CMTime)
      {
        CMTime = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!CMTime)
        {
          CMTime = FigXPCMessageGetCMTime();
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    CMTime = FigSignalErrorAtGM();
  }

  v7 = CMTime;
  OUTLINED_FUNCTION_6_18();
  FigXPCRelease();
  FigXPCRelease();
  return v7;
}

uint64_t remoteXPCPlaybackCoordinator_HandleUpdatedTimelineStateFromMedium()
{
  OUTLINED_FUNCTION_7_11();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_20();
  if (v1 && v0)
  {
    OUTLINED_FUNCTION_2_29();
    if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFDictionary())
    {
      OUTLINED_FUNCTION_4_25();
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_6_18();
  FigXPCRelease();
  return v2;
}

uint64_t remoteXPCPlaybackCoordinator_HandleReplacementOfAllParticipantStatesFromMedium()
{
  OUTLINED_FUNCTION_7_11();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_20();
  if (v1 && v0)
  {
    OUTLINED_FUNCTION_2_29();
    if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFArray())
    {
      OUTLINED_FUNCTION_4_25();
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_6_18();
  FigXPCRelease();
  return v2;
}

uint64_t remoteXPCPlaybackCoordinator_HandleUpdatedParticipantStateFromMedium()
{
  OUTLINED_FUNCTION_7_11();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_20();
  if (v1 && v0)
  {
    OUTLINED_FUNCTION_2_29();
    if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFDictionary())
    {
      OUTLINED_FUNCTION_4_25();
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_6_18();
  FigXPCRelease();
  return v2;
}

uint64_t remoteXPCPlaybackCoordinator_DisconnectFromMedium(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_29();
  v1 = FigXPCCreateBasicMessage();
  if (!v1)
  {
    v1 = FigXPCRemoteClientSendSyncMessage();
  }

  v2 = v1;
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  return v2;
}

uint64_t remoteXPCPlaybackCoordinator_ResetGroupTimelineExpectationsForIdentifier()
{
  OUTLINED_FUNCTION_7_11();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_20();
  if (v0)
  {
    OUTLINED_FUNCTION_2_29();
    if (!FigXPCCreateBasicMessage())
    {
      FigXPCMessageSetCFString();
      OUTLINED_FUNCTION_4_25();
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_6_18();
  FigXPCRelease();
  return v1;
}

void remoteXPCPlaybackCoordinator_asyncReloadCompletion(void *a1)
{
  v2 = *a1;
  FigPlaybackCoordinatorGetCMBaseObject(*a1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_29();
  if (!FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_int64(0, "FetchID", a1[1]);
    FigXPCRemoteClientSendSyncMessage();
  }

  FigXPCRemoteClientKillServerOnTimeout();
  if (v2)
  {
    CFRelease(v2);
  }

  FigXPCRelease();
  free(a1);
}

uint64_t FigPlaybackCoordinatorRemoteRetainCopiedPlaybackCoordinator_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlaybackCoordinatorRemoteRetainCopiedPlaybackCoordinator_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXPCPlaybackCoordinatorClientStartAsSubclient_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXPCPlaybackCoordinatorClientStartAsSubclient_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlaybackCoordinator_CopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCPlaybackCoordinator_SetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

CFMutableDictionaryRef CreateGaplessInfoDictionary(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 347))
  {
    Enhanced_NoCorrection = FigGaplessInfoCreateEnhanced_NoCorrection(*(a1 + 264), *(a1 + 360), *(a1 + 364), *(a1 + 352));
  }

  else
  {
    Enhanced_NoCorrection = 0;
  }

  FigSimpleMutexUnlock();
  return Enhanced_NoCorrection;
}

uint64_t EnsureMetadataReaderCreated_0(uint64_t a1, const __CFAllocator *a2)
{
  v33 = 0;
  outPropertyData = 0;
  v32 = 0;
  FigSimpleMutexLock();
  if (*(a1 + 336))
  {
    v5 = 0;
    goto LABEL_30;
  }

  v4 = *(a1 + 328);
  if (v4 != -1)
  {
LABEL_3:
    if ((v4 & 0x8000000000000000) == 0)
    {
      FigMetadataReaderCreateForID3(a2, *(a1 + 16), v4, (a1 + 336));
      if (*(a1 + 336))
      {
        v5 = 0;
        *(a1 + 344) = 1;
        *(a1 + 346) = 0;
        goto LABEL_30;
      }

LABEL_8:
      ioPropertyDataSize = 8;
      AudioFileStreamGetProperty(*(a1 + 48), 0x61617274u, &ioPropertyDataSize, &outPropertyData);
      v6 = outPropertyData;
      LODWORD(size) = 0;
      cf = 0;
      v7 = OUTLINED_FUNCTION_9_11();
      if (!AudioFileStreamGetPropertyInfo(v7, v8, v9, 0) && size)
      {
        v10 = malloc_type_calloc(1uLL, size, 0x10E0040CAA52137uLL);
        if (v10)
        {
          v11 = OUTLINED_FUNCTION_9_11();
          if (!AudioFileStreamGetProperty(v11, v12, v13, v10))
          {
            FigMetadataReaderCreateWithVorbisCommentFields(a2, v10, v6, &cf);
            v14 = cf;
LABEL_13:
            *(a1 + 336) = v14;
            FigReleaseAudioFileMetadataItems(v10);
            free(v10);
            if (*(a1 + 336))
            {
              v5 = 0;
              *(a1 + 346) = 1;
              *(a1 + 344) = 0;
              goto LABEL_30;
            }

            v15 = outPropertyData;
            cf = 0;
            __s1 = 8;
            size = 0;
            if (AudioFileStreamGetProperty(*(a1 + 48), 0x696E666Fu, &__s1, &cf))
            {
              goto LABEL_50;
            }

            v16 = 0;
            v17 = cf;
            if (__s1 != 8 || !cf)
            {
              goto LABEL_21;
            }

            v18 = CFGetTypeID(cf);
            if (v18 != CFDictionaryGetTypeID() || CFDictionaryGetCount(cf) < 1)
            {
LABEL_50:
              v16 = 0;
            }

            else
            {
              FigMetadataReaderCreateWithAudioFileProperties(a2, cf, v15, &size);
              v16 = size;
            }

            v17 = cf;
LABEL_21:
            *(a1 + 336) = v16;
            if (v17)
            {
              CFRelease(v17);
              v16 = *(a1 + 336);
            }

            if (v16)
            {
              *(a1 + 344) = 0;
              *(a1 + 346) = 0;
            }

            goto LABEL_25;
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_5();
          FigSignalErrorAtGM();
        }

        v14 = 0;
        goto LABEL_13;
      }

      v14 = 0;
      v10 = 0;
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 345))
  {
    cf = 0;
    __s1 = 0;
    size = 0;
    *(a1 + 345) = 1;
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v22 = *MEMORY[0x1E695E480];
      v23 = v21(CMBaseObject, *MEMORY[0x1E695FF80], *MEMORY[0x1E695E480], &v33);
      if (!v23)
      {
        if (!CFBooleanGetValue(v33))
        {
          goto LABEL_25;
        }

        v24 = CMByteStreamGetCMBaseObject();
        v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v25)
        {
          v26 = v25(v24, *MEMORY[0x1E695FF78], v22, &v32);
          if (v26)
          {
            v5 = v26;
          }

          else
          {
            CFNumberGetValue(v32, kCFNumberSInt64Type, &cf);
            v27 = cf - 128;
            if (cf < 128)
            {
              goto LABEL_25;
            }

            v28 = *(a1 + 16);
            v29 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v29)
            {
              v30 = v29(v28, 3, v27, &__s1, &size);
              if (!v30)
              {
                if (!memcmp(&__s1, "TAG", 3uLL))
                {
                  v4 = cf - 128;
                  *(a1 + 328) = cf - 128;
                }

                else
                {
                  v4 = *(a1 + 328);
                }

                goto LABEL_3;
              }

              v5 = v30;
            }

            else
            {
              v5 = 4294954514;
            }
          }
        }

        else
        {
          v5 = 4294954514;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
LABEL_48:
        FigSignalErrorAtGM();
        goto LABEL_26;
      }

      v5 = v23;
    }

    else
    {
      v5 = 4294954514;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    goto LABEL_48;
  }

LABEL_7:
  if (!*(a1 + 336))
  {
    goto LABEL_8;
  }

LABEL_25:
  v5 = 0;
LABEL_26:
  if (v33)
  {
    CFRelease(v33);
  }

  if (v32)
  {
    CFRelease(v32);
  }

LABEL_30:
  FigSimpleMutexUnlock();
  if (outPropertyData)
  {
    CFRelease(outPropertyData);
  }

  return v5;
}

uint64_t GetAudioFileStreamPacketTableInfo(uint64_t result)
{
  if (!*(result + 347))
  {
    v1 = result;
    FigSimpleMutexLock();
    ioPropertyDataSize = 16;
    if (!AudioFileStreamGetProperty(*(v1 + 48), 0x706E666Fu, &ioPropertyDataSize, (v1 + 352)) && *(v1 + 352) >= 1)
    {
      *(v1 + 347) = 1;
      if ((*(v1 + 360) & 0x80000000) != 0)
      {
        *(v1 + 360) = 0;
      }

      if ((*(v1 + 364) & 0x80000000) != 0)
      {
        *(v1 + 364) = 0;
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t PushBytesThroughParser(uint64_t a1)
{
  v21 = 0;
  v1 = *(a1 + 88);
  if (v1 >= *(a1 + 24))
  {
    return 4294954423;
  }

  v20 = 0;
  v3 = *(a1 + 16);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4 || v4(v3, v1, &v20) || !v20)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 88);
    if (v7 - v8 >= 1024)
    {
      v5 = 1024;
    }

    else
    {
      v5 = v7 - v8;
    }

    if (v7 != v8)
    {
      goto LABEL_17;
    }

    return 4294954423;
  }

  if (v20 >= *(a1 + 72))
  {
    v5 = *(a1 + 72);
  }

  else
  {
    v5 = v20;
  }

  v6 = *(a1 + 324);
  if (v6 && *(a1 + 88) + v5 > *(a1 + 24) - *(a1 + 248) * v6)
  {
    v5 = v20;
  }

LABEL_17:
  if (v5 < 0)
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  v10 = *(a1 + 16);
  v11 = *(a1 + 88);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v12)
  {
    return 4294954514;
  }

  v13 = v12(v10, v5, v11, a1 + 96, &v21);
  if (v13)
  {
    return v13;
  }

  v14 = 0;
  *(a1 + 104) = 0;
  do
  {
    CMBlockBufferGetDataPointer(*(a1 + 96), v14, (a1 + 112), 0, (a1 + 120));
    v15 = AudioFileStreamParseBytes(*(a1 + 48), *(a1 + 112), *(a1 + 120), 0);
    if (v15)
    {
      v9 = v15;
      fig_log_get_emitter();
      FigSignalErrorAtGM();
      return v9;
    }

    v14 = *(a1 + 104) + *(a1 + 112);
    *(a1 + 104) = v14;
  }

  while (v14 < v21);
  v16 = *(a1 + 88) + v21;
  *(a1 + 88) = v16;
  if (v16 == *(a1 + 24))
  {
    AudioFileStreamParseBytes(*(a1 + 48), 0, 0, 0);
  }

  v17 = *(a1 + 324);
  if (v17 && *(a1 + 88) == *(a1 + 24))
  {
    *(a1 + 200) = *(a1 + 152) - v17;
    *(a1 + 192) = 1;
  }

  v18 = *(a1 + 96);
  if (v18)
  {
    CFRelease(v18);
  }

  v9 = 0;
  *(a1 + 96) = 0;
  return v9;
}

uint64_t FigAudioFileStreamCursorService_createCursorAtPresentationTimeStamp(uint64_t a1, uint64_t a2, void *a3, BOOL *a4, BOOL *a5)
{
  v8 = *CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v9 = createFigAudioPacketAccessor(v8, &v15);
  if (v9)
  {
    return v9;
  }

  v10 = v15;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_315();
  v12 = moveToSampleAtPTS(v11, &v14, a4, a5);
  if (v12)
  {
    CFRelease(v10);
  }

  else
  {
    *a3 = v10;
  }

  return v12;
}

uint64_t FigAudioFileStreamCursorService_createCursorAtFirstSampleInDecodeOrder(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v4 = createFigAudioPacketAccessor(v3, &v7);
  if (!v4)
  {
    v5 = v7;
    *(CMBaseObjectGetDerivedStorage() + 8) = 0;
    *a2 = v5;
  }

  return v4;
}

uint64_t FigAudioFileStreamCursorService_createCursorAtLastSampleInDecodeOrder(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v4 = createFigAudioPacketAccessor(v3, &v9);
  if (v4)
  {
    return v4;
  }

  v5 = v9;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AudioFileStreamPacketAndFrameCount = GetAudioFileStreamPacketAndFrameCount(v3);
  if (AudioFileStreamPacketAndFrameCount)
  {
    CFRelease(v5);
  }

  else
  {
    *(DerivedStorage + 8) = v3[36] - 1;
    *a2 = v5;
  }

  return AudioFileStreamPacketAndFrameCount;
}

uint64_t moveToSampleAtPTS(uint64_t *a1, CMTime *a2, BOOL *a3, BOOL *a4)
{
  time1 = *a2;
  v32 = **&MEMORY[0x1E6960CC0];
  v8 = CMTimeCompare(&time1, &v32);
  if (v8 < 0)
  {
    value = 0;
    v10 = 0;
    v12 = *a1;
    v16 = *(*a1 + 228);
    if (v16)
    {
LABEL_18:
      v14 = value / v16;
      goto LABEL_19;
    }
  }

  else
  {
    v9 = a2->flags & 0x1D;
    v10 = v9 != 1;
    if (v9 == 1)
    {
      memset(&time1, 0, sizeof(time1));
      OUTLINED_FUNCTION_315();
      CMTimeConvertScale(&time1, &v32, v20, kCMTimeRoundingMethod_RoundTowardZero);
      value = time1.value;
      v12 = *a1;
    }

    else
    {
      AudioFileStreamPacketAndFrameCount = GetAudioFileStreamPacketAndFrameCount(*a1);
      if (AudioFileStreamPacketAndFrameCount)
      {
        return AudioFileStreamPacketAndFrameCount;
      }

      v12 = *a1;
      v13 = *(*a1 + 288);
      if (v13 >= 2)
      {
        v14 = v13 - 1;
        v10 = 1;
        goto LABEL_20;
      }

      value = *(v12 + 296);
    }

    v16 = *(v12 + 228);
    if (value > 0x7FFFFFFFFFFEA06ELL)
    {
      if (v16)
      {
        v31 = *(v12 + 228);
      }

      else
      {
        v31 = 1;
      }

      v14 = 0x7FFFFFFFFFFEA06FLL / v31;
      goto LABEL_20;
    }

    if (v16)
    {
      goto LABEL_18;
    }
  }

  *&time1.timescale = 0;
  time1.epoch = 0;
  time1.value = value;
  LODWORD(v32.value) = 24;
  Property = AudioFileStreamGetProperty(*(v12 + 48), 0x6672706Bu, &v32, &time1);
  if (Property)
  {
    v29 = Property;
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    return v29;
  }

  v14 = *&time1.timescale;
  v18 = *(v12 + 432);
  if (v18 >= *&time1.timescale)
  {
    v19 = *&time1.timescale;
  }

  else
  {
    v19 = *(v12 + 432);
  }

  if (v18 >= 1)
  {
    v14 = v19;
  }

LABEL_19:
  if ((v14 & 0x8000000000000000) != 0)
  {
    return 4294954456;
  }

LABEL_20:
  a1[1] = v14;
  if (a3)
  {
    v22 = v8 < 0 || a2->value < 0;
    *a3 = v22;
  }

  if (!a4)
  {
    return 0;
  }

  v23 = *a1;
  v24 = a1[1];
  LODWORD(v25) = *(*a1 + 228);
  if (v25 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v25;
  }

  if ((0x7FFFFFFFFFFEA06FLL / v25) <= v24 || ((v26 = *(v23 + 432), v26 >= 1) ? (v27 = v26 <= v24) : (v27 = 0), v27))
  {
    v28 = 0;
  }

  else if (*(v23 + 272))
  {
    v28 = *(v23 + 288) > v24;
  }

  else
  {
    time1.value = 0;
    LODWORD(v32.value) = 24;
    *&time1.timescale = v24;
    time1.epoch = 0;
    v28 = AudioFileStreamGetProperty(*(v23 + 48), 0x706B6672u, &v32, &time1) == 0;
  }

  v29 = 0;
  *a4 = v10 || !v28;
  return v29;
}

uint64_t figAudioFileStreamCursor_getSampleDependencyInfo(uint64_t a1, BOOL *a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  v18 = 0;
  *v16 = 0u;
  *cf = 0u;
  v14 = 0u;
  *v15 = 0u;
  v7 = DerivedStorage[1];
  v8 = *(v6 + 432);
  v9 = 4294954456;
  if (v8 < 1 || v8 > v7)
  {
    SetupPacketRequest(v7, 1, &v14, *(v6 + 224) == 0, *(v6 + 400));
    FigSimpleMutexLock();
    v11 = ObtainRequestedPackets(v6, &v14);
    FigSimpleMutexUnlock();
    v9 = v11 == -12873 ? 4294954456 : v11;
    if (!v9)
    {
      v12 = v16[0];
      if (v16[0])
      {
        *a2 = *v16[0] != 0;
        LODWORD(v12) = v12[1];
      }

      else
      {
        *a2 = 1;
      }

      v9 = 0;
      *a3 = v12;
    }
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  cf[0] = 0;
  free(v15[1]);
  v15[1] = 0;
  free(v16[0]);
  return v9;
}

void *SetupPacketRequest(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *(a3 + 64) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 48) = 0u;
  result = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 3u, 0, (a3 + 48));
  if (!result)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = 0;
    *(a3 + 40) = a2;
    if (a4)
    {
      result = OUTLINED_FUNCTION_13_7(16 * a2);
      *(a3 + 24) = result;
    }

    if (a5)
    {
      result = OUTLINED_FUNCTION_4_26(8 * a2);
      *(a3 + 32) = result;
    }

    *(a3 + 56) = 0;
  }

  return result;
}

uint64_t ObtainRequestedPackets(uint64_t a1, void *a2)
{
  v21 = 0;
  v20 = 0;
  v19 = 0;
  result = FillPacketRequestFromCache(a1 + 136, a2, *(a1 + 224), &v19 + 1, &v19);
  if (result)
  {
    return result;
  }

  if (v19)
  {
    return 0;
  }

LABEL_3:
  v5 = a2[2];
  if (v5 >= a2[1])
  {
    return 0;
  }

  v6 = *a2 + v5;
  v7 = *(a1 + 432);
  if (v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(a1 + 432);
  }

  if (v7 >= 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v16 = OUTLINED_FUNCTION_6_19();
    AudioFileStreamSeek(v16, 0, v17, v18);
    v15 = 0;
    v13 = *(a1 + 304);
    v14 = *(a1 + 160);
    if (!v14)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v9 != *(a1 + 80))
  {
    v10 = OUTLINED_FUNCTION_6_19();
    result = AudioFileStreamSeek(v10, v9, v11, v12);
    if (result)
    {
      return result;
    }

    v13 = v21 + *(a1 + 304);
    v9 = v9;
    v14 = *(a1 + 160);
    v15 = v9;
    if (!v14)
    {
LABEL_17:
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      *(a1 + 136) = xmmword_196E732D0;
      *(a1 + 192) = 0;
      *(a1 + 80) = v15;
      *(a1 + 88) = v13;
      goto LABEL_18;
    }

LABEL_16:
    CFRelease(v14);
    v15 = v9;
    goto LABEL_17;
  }

LABEL_18:
  while (1)
  {
    result = PushBytesThroughParser(a1);
    if (result)
    {
      break;
    }

    result = FillPacketRequestFromCache(a1 + 136, a2, *(a1 + 224), &v19 + 1, &v19);
    if (result)
    {
      break;
    }

    if (HIBYTE(v19))
    {
      if (v19)
      {
        return 0;
      }

      goto LABEL_3;
    }
  }

  if (result == -12873)
  {
    if (a2[2])
    {
      result = 0;
    }

    else
    {
      result = 4294954423;
    }

    *(a1 + 432) = *(a1 + 80);
  }

  return result;
}

uint64_t FigAudioFileStreamCursor_getPresentationTimeStamp(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v4 = MapPacketNumberToFrameNumber(*DerivedStorage, DerivedStorage[1], &value);
  if (!v4)
  {
    CMTimeMake(&v6, value, *(*DerivedStorage + 252));
    *a2 = v6;
  }

  return v4;
}

uint64_t FigAudioFileStreamCursor_getDuration()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *DerivedStorage;
  v44 = 0;
  *v42 = 0u;
  *cf = 0u;
  v40 = 0u;
  *v41 = 0u;
  if (*(v2 + 228))
  {
    v3 = *(v2 + 252);
    v4 = *(v2 + 228);
LABEL_19:
    v16 = CMTimeMake(&v39, v4, v3);
    OUTLINED_FUNCTION_5_21(v16, v17, v18, v19, v20, v21, v22, v23, v38, v24, v39.value);
    return v0;
  }

  v5 = DerivedStorage[1];
  v6 = *(v2 + 432);
  if (v6 >= 1 && v6 <= v5)
  {
    return 4294954456;
  }

  v8 = *(v2 + 152);
  if (v8)
  {
    v9 = *(v2 + 136);
    if (v5 < v9 || v5 >= v9 + v8)
    {
      if (v8 < 1)
      {
        v3 = *(v2 + 252);
        v4 = 1;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = (*(v2 + 168) + 8);
        while (1)
        {
          v15 = *v13;
          v13 += 4;
          v14 = v15;
          if ((v12 ^ 0x7FFFFFFFFFFFFFFFLL) < v15)
          {
            break;
          }

          v12 += v14;
          if (v8 == ++v11)
          {
            v11 = *(v2 + 152);
            break;
          }
        }

        v3 = *(v2 + 252);
        v4 = v12 / v11;
      }

      goto LABEL_19;
    }
  }

  OUTLINED_FUNCTION_12_10();
  SetupPacketRequest(v26, 1, &v40, v27, v28);
  FigSimpleMutexLock();
  LODWORD(v0) = ObtainRequestedPackets(v2, &v40);
  FigSimpleMutexUnlock();
  if (v0 == -12873)
  {
    v0 = 4294954456;
  }

  else
  {
    v0 = v0;
  }

  if (!v0)
  {
    if (v41[1])
    {
      v29 = CMTimeMake(&v39, *(v41[1] + 2), *(v2 + 252));
      OUTLINED_FUNCTION_5_21(v29, v30, v31, v32, v33, v34, v35, v36, v38, v37, v39.value);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      v0 = FigSignalErrorAtGM();
    }
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  cf[0] = 0;
  free(v41[1]);
  v41[1] = 0;
  free(v42[0]);
  return v0;
}

uint64_t FigAudioFileStreamCursor_getDependencyInfo(uint64_t a1, BOOL *a2, _BYTE *a3, _DWORD *a4, _BYTE *a5)
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
  if (!*(v10 + 400))
  {
    return 0;
  }

  v15 = 0;
  v14 = 0;
  result = figAudioFileStreamCursor_getSampleDependencyInfo(a1, &v15, &v14);
  if (!result)
  {
    v13 = v15 && v14 == 0;
    *a2 = v13;
  }

  return result;
}

uint64_t FigAudioFileStreamCursor_createSampleBuffer(uint64_t a1, uint64_t a2, CMSampleBufferRef *a3)
{
  v87 = *MEMORY[0x1E69E9840];
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
  memset(&v81, 0, sizeof(v81));
  v79 = 0;
  *v77 = 0u;
  *dataBuffer = 0u;
  v75 = 0u;
  *v76 = 0u;
  v9 = FigAudioFileStreamCursor_getPresentationTimeStamp(a1, &v81);
  if (v9)
  {
    return v9;
  }

  if (!v7 || *(v7 + 8) >= DerivedStorage[1])
  {
    OUTLINED_FUNCTION_12_10();
    SetupPacketRequest(v10, v11, &v75, v12, v13);
    FigSimpleMutexLock();
    v14 = ObtainRequestedPackets(v8, &v75);
    FigSimpleMutexUnlock();
    if (v14 == -12873)
    {
      v15 = 4294954456;
    }

    else
    {
      v15 = v14;
    }

    if (!v15)
    {
      v16 = *MEMORY[0x1E695E480];
      v17 = *(v8 + 264);
      presentationTimeStamp = v81;
      v18 = CMAudioSampleBufferCreateWithPacketDescriptions(v16, dataBuffer[0], 1u, 0, 0, v17, v76[0], &presentationTimeStamp, v76[1], &sbuf);
      if (v18)
      {
        v15 = v18;
        if (sbuf)
        {
          CFRelease(sbuf);
        }
      }

      else
      {
        if (LOBYTE(dataBuffer[1]))
        {
          v19 = sbuf;
          v20 = *(v8 + 228) * *(v8 + 324);
          memset(&presentationTimeStamp, 0, sizeof(presentationTimeStamp));
          OUTLINED_FUNCTION_8_12(v20);
          keys.value = *MEMORY[0x1E6962E70];
          values.value = CFNumberCreate(v16, kCFNumberCFIndexType, &v79);
          *&keys.timescale = *MEMORY[0x1E6962E68];
          OUTLINED_FUNCTION_3_23();
          *&values.timescale = CMTimeCopyAsDictionary(&time, v16);
          v21 = CFDictionaryCreate(v16, &keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CMSetAttachment(v19, *MEMORY[0x1E6962DE8], v21, 0);
          if (values.value)
          {
            CFRelease(values.value);
          }

          if (*&values.timescale)
          {
            CFRelease(*&values.timescale);
          }

          if (v21)
          {
            CFRelease(v21);
          }
        }

        v22 = MEMORY[0x1E6960CC0];
        if (*(v8 + 368) && !*(v8 + 347))
        {
          memset(&presentationTimeStamp, 0, sizeof(presentationTimeStamp));
          OUTLINED_FUNCTION_8_12(*(v8 + 372));
          memset(&time, 0, sizeof(time));
          v23 = CMSampleBufferGetPresentationTimeStamp(&time, sbuf);
          keys = presentationTimeStamp;
          OUTLINED_FUNCTION_11_11(v23, v24, v25, v26, v27, v28, v29, v30, packetDescriptions, v66, v68, v71, rhs.value, *&rhs.timescale, rhs.epoch, v74, v75, *(&v75 + 1), v76[0], v76[1], v77[0], v77[1], dataBuffer[0], dataBuffer[1], v79, v80, v81.value, *&v81.timescale, v81.epoch, sbuf, *&presentationTimeStamp.value, time.value);
          if (CMTimeCompare(&keys, &values) >= 1)
          {
            memset(&keys, 0, sizeof(keys));
            v31 = OUTLINED_FUNCTION_2_30();
            CMTimeSubtract(v33, v31, v32);
            values = keys;
            v34 = CMTimeCopyAsDictionary(&values, v16);
            CMSetAttachment(sbuf, *MEMORY[0x1E6960560], v34, 1u);
            if (v34)
            {
              CFRelease(v34);
            }
          }

          keys = time;
          values = presentationTimeStamp;
          v35 = CMTimeCompare(&keys, &values);
          v44 = sbuf;
          if (v35 < 1)
          {
            keys = *v22;
          }

          else
          {
            OUTLINED_FUNCTION_11_11(v35, v36, v37, v38, v39, v40, v41, v42, packetDescriptionsa, v67, v69, v72, rhs.value, *&rhs.timescale, rhs.epoch, v74, v75, *(&v75 + 1), v76[0], v76[1], v77[0], v77[1], dataBuffer[0], dataBuffer[1], v79, v80, v81.value, *&v81.timescale, v81.epoch, sbuf, v43, time.value);
            rhs = presentationTimeStamp;
            CMTimeSubtract(&keys, &values, &rhs);
          }

          CMSampleBufferSetOutputPresentationTimeStamp(v44, &keys);
        }

        if (*(v8 + 376))
        {
          if (!*(v8 + 347))
          {
            v45 = DerivedStorage[1];
            v46 = v76[0];
            v47 = *(v8 + 384);
            if (v76[0] + v45 > v47)
            {
              v70 = *&v22->value;
              *&presentationTimeStamp.value = *&v22->value;
              epoch = v22->epoch;
              presentationTimeStamp.epoch = epoch;
              v49 = v47 - v45;
              if (v47 >= v45)
              {
                if (v49 < v76[0])
                {
                  v50 = *(v8 + 228);
                  if (!v50 && v76[1])
                  {
                    v50 = *(v76[1] + 4 * v49 + 2);
                  }

                  v51 = *(v8 + 392);
                  if (v50 > v51)
                  {
                    OUTLINED_FUNCTION_8_12(v50 - v51);
                    v46 = v76[0];
                  }

                  v52 = v49 + 1;
                  if (v52 < v46)
                  {
                    v53 = 16 * v47 - 16 * v45 + 24;
                    do
                    {
                      v54 = *(v8 + 228);
                      if (!v54 && v76[1])
                      {
                        v54 = *(v76[1] + v53);
                      }

                      memset(&time, 0, sizeof(time));
                      CMTimeMake(&time, v54, *(v8 + 208));
                      v55 = OUTLINED_FUNCTION_2_30();
                      CMTimeAdd(v57, v55, v56);
                      presentationTimeStamp = keys;
                      ++v52;
                      v53 += 16;
                    }

                    while (v52 < v76[0]);
                  }
                }
              }

              else
              {
                CMSampleBufferGetDuration(&presentationTimeStamp, sbuf);
              }

              OUTLINED_FUNCTION_3_23();
              *&keys.value = v70;
              keys.epoch = epoch;
              if (CMTimeCompare(&time, &keys) >= 1)
              {
                OUTLINED_FUNCTION_3_23();
                v58 = CMTimeCopyAsDictionary(&time, v16);
                CMSetAttachment(sbuf, *MEMORY[0x1E6960558], v58, 1u);
                if (v58)
                {
                  CFRelease(v58);
                }
              }
            }
          }
        }

        if (*(v8 + 400) && v76[0] >= 1)
        {
          v59 = 0;
          do
          {
            SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
            if (SampleAttachmentsArray)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, v59);
              if (ValueAtIndex)
              {
                v62 = ValueAtIndex;
                presentationTimeStamp.value = 0;
                FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary();
                if (presentationTimeStamp.value)
                {
                  CFDictionaryApplyFunction(presentationTimeStamp.value, appendAttributesToDictionary, v62);
                  CFRelease(presentationTimeStamp.value);
                }
              }
            }

            ++v59;
          }

          while (v59 < v76[0]);
        }

        v15 = 0;
        *a3 = sbuf;
        sbuf = 0;
      }
    }

    if (dataBuffer[0])
    {
      CFRelease(dataBuffer[0]);
    }

    dataBuffer[0] = 0;
    free(v76[1]);
    v76[1] = 0;
    free(v77[0]);
    return v15;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigAudioFileStreamCursor_stepByDecodeTime(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v13, 0, sizeof(v13));
  memset(&v12, 0, sizeof(v12));
  v5 = *DerivedStorage;
  v4 = DerivedStorage[1];
  LODWORD(v6) = *(*DerivedStorage + 228);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v6;
  }

  if (v4 >= (0x7FFFFFFFFFFEA06FLL / v6))
  {
    return 4294954456;
  }

  v7 = DerivedStorage;
  v11 = 0;
  value.value = 0;
  result = MapPacketNumberToFrameNumber(v5, v4, &value.value);
  if (!result)
  {
    CMTimeMake(&v13, value.value, *(v5 + 252));
    value = v13;
    v9 = *a2;
    CMTimeAdd(&v12, &value, &v9);
    value = v12;
    result = moveToSampleAtPTS(v7, &value, &v11 + 1, &v11);
    if (!result)
    {
      if (HIBYTE(v11) | v11)
      {
        return 4294954456;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t FigAudioFileStreamCursor_stepInDecodeOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage[1];
  LODWORD(v7) = *(*DerivedStorage + 228);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v7;
  }

  if (v6 >= (0x7FFFFFFFFFFEA06FLL / v7))
  {
    v8 = 4294954456;
    v9 = DerivedStorage[1];
  }

  else
  {
    v8 = 0;
    v9 = v6 + a2;
    if (a2 <= 0)
    {
      v9 = (v6 + a2) & ~((v6 + a2) >> 63);
    }
  }

  DerivedStorage[1] = v9;
  if (a3)
  {
    *a3 = v9 - v6;
  }

  return v8;
}

void AudioFileStream_FigPacketsProc(uint64_t a1, unsigned int a2, unsigned int a3, unint64_t a4, void *a5)
{
  v9 = 0;
  v10 = a3;
  if (!a5 || !*(a1 + 400))
  {
    goto LABEL_12;
  }

  v12 = OUTLINED_FUNCTION_4_26(8 * a3);
  v9 = v12;
  if (!v12)
  {
LABEL_10:
    v15 = a2;
    outPropertyData = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v13 = 0;
  v14 = v12 + 1;
  while (1)
  {
    ioPropertyDataSize = 16;
    outPropertyData = (v13 + *(a1 + 80));
    v41 = 0;
    if (AudioFileStreamGetProperty(*(a1 + 48), 0x706B6470u, &ioPropertyDataSize, &outPropertyData))
    {
      break;
    }

    *(v14 - 4) = v41 != 0;
    *v14 = HIDWORD(v41);
    v14 += 2;
    if (v10 == ++v13)
    {
      goto LABEL_12;
    }
  }

  free(v9);
  v9 = 0;
LABEL_12:
  v15 = a2;
  outPropertyData = 0;
  if (a5)
  {
LABEL_13:
    DataLength = CMBlockBufferGetDataLength(*(a1 + 160));
    v17 = *a5;
    v18 = *(a1 + 168);
    if (v18)
    {
      v19 = (a1 + 152);
      v20 = *(a1 + 152);
      v21 = *(a1 + 184);
      if (v21 - v20 >= v10)
      {
        v27 = &v18[16 * v20];
        if (!v9)
        {
          v30 = 0;
          if (!v10)
          {
LABEL_37:
            v29 = 0;
            *v19 = v20 + v10;
            v28 = a5[2 * v10 - 2] - v17 + HIDWORD(a5[2 * v10 - 1]);
            goto LABEL_38;
          }

LABEL_32:
          v31 = a5;
          v32 = v9;
          v33 = v10;
          do
          {
            *v27 = *v31;
            *v27 += DataLength - v17;
            if (v9)
            {
              *v30 = *v32;
            }

            ++v32;
            v30 += 8;
            ++v31;
            v27 += 16;
            --v33;
          }

          while (v33);
          v20 = *v19;
          goto LABEL_37;
        }

        v25 = *(a1 + 176);
LABEL_27:
        v30 = &v25[8 * v20];
        if (!v10)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

      v22 = 64;
      if (v10 > 0x40)
      {
        v22 = v10;
      }

      v23 = v21 + v22;
      v24 = malloc_type_realloc(v18, 16 * (v21 + v22), 0x1000040451B5BE8uLL);
      *(a1 + 184) = v23;
      *(a1 + 168) = v24;
      if (v9)
      {
        v25 = malloc_type_realloc(*(a1 + 176), 8 * v23, 0x10000404A09149AuLL);
LABEL_23:
        *(a1 + 176) = v25;
        v19 = (a1 + 152);
        v20 = *(a1 + 152);
        v27 = (*(a1 + 168) + 16 * v20);
        goto LABEL_27;
      }
    }

    else
    {
      v26 = 128;
      if (v10 > 0x80)
      {
        v26 = v10;
      }

      *(a1 + 184) = v26;
      *(a1 + 152) = 0;
      v24 = OUTLINED_FUNCTION_13_7(16 * v26);
      *(a1 + 168) = v24;
      if (v9)
      {
        v25 = OUTLINED_FUNCTION_4_26(8 * *(a1 + 184));
        goto LABEL_23;
      }
    }

    v30 = 0;
    v19 = (a1 + 152);
    v20 = *(a1 + 152);
    v27 = &v24[16 * v20];
    if (!v10)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v17 = 0;
  v28 = v10 * *(a1 + 224);
  *(a1 + 152) += v10;
  v29 = 1;
LABEL_38:
  v34 = *(a1 + 120);
  if (v34 > a4 || v34 + *(a1 + 112) <= a4)
  {
    if ((v17 & 0x8000000000000000) == 0)
    {
      v36 = *MEMORY[0x1E695E480];
      if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, v15 - v17, *MEMORY[0x1E695E480], 0, 0, v15 - v17, 1u, &outPropertyData))
      {
        goto LABEL_60;
      }

      CMBlockBufferReplaceDataBytes((a4 + v17), outPropertyData, 0, v15 - v17);
      v35 = 0;
      goto LABEL_47;
    }

LABEL_61:
    fig_log_get_emitter();
    if (!FigSignalErrorAtGM())
    {
      goto LABEL_60;
    }

    goto LABEL_62;
  }

  v35 = v17 + a4 - v34 + *(a1 + 104);
  if (v35 < 0 || (v28 & 0x8000000000000000) != 0)
  {
    goto LABEL_61;
  }

  v36 = *MEMORY[0x1E695E480];
  if (CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], *(a1 + 96), v35, v28, 0, &outPropertyData))
  {
    goto LABEL_60;
  }

LABEL_47:
  if (*(a1 + 160))
  {
    goto LABEL_50;
  }

  if (!CMBlockBufferCreateEmpty(v36, 8u, 0, (a1 + 160)))
  {
    *(a1 + 136) = *(a1 + 80);
LABEL_50:
    if (*(a1 + 144) == -1)
    {
      if (v29)
      {
        v37 = *(a1 + 304) + *(a1 + 136) * *(a1 + 224);
      }

      else
      {
        v38 = *(a1 + 120);
        if (v38 > a4 || v38 + *(a1 + 112) <= a4)
        {
          goto LABEL_57;
        }

        v37 = *(a1 + 88) + v35 - *(*(a1 + 168) + 16 * (*(a1 + 80) - *(a1 + 136)));
      }

      *(a1 + 144) = v37;
    }

LABEL_57:
    CMBlockBufferAppendBufferReference(*(a1 + 160), outPropertyData, 0, 0, 0);
    if (outPropertyData)
    {
      CFRelease(outPropertyData);
    }

    *(a1 + 80) += v10;
    goto LABEL_60;
  }

LABEL_62:
  if (outPropertyData)
  {
    CFRelease(outPropertyData);
  }

LABEL_60:
  free(v9);
}