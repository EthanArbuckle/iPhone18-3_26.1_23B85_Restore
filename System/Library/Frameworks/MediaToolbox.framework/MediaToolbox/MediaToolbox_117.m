uint64_t fbaprp_baoPrerollDurationChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a5)
  {
    goto LABEL_16;
  }

  v7 = CFGetTypeID(a5);
  if (v7 != CFDictionaryGetTypeID())
  {
    goto LABEL_16;
  }

  CMTimeMakeFromDictionary(&v21, a5);
  value = v21.value;
  flags = v21.flags;
  timescale = v21.timescale;
  if ((v21.flags & 1) == 0)
  {
    goto LABEL_16;
  }

  if (*DerivedStorage)
  {
    return FigSimpleMutexUnlock();
  }

  epoch = v21.epoch;
  fbaprp_cleanFreedSampleBufferConsumers();
  v10 = CMBaseObjectGetDerivedStorage();
  v11 = *MEMORY[0x1E695E480];
  v21.value = value;
  v21.timescale = timescale;
  v21.flags = flags;
  v21.epoch = epoch;
  v12 = CMTimeCopyAsDictionary(&v21, v11);
  if (!v12)
  {
LABEL_16:
    FigSignalErrorAtGM();
    return FigSimpleMutexUnlock();
  }

  v13 = v12;
  if (CFArrayGetCount(*(v10 + 88)) < 1)
  {
LABEL_12:
    *(v10 + 336) = value;
    *(v10 + 344) = timescale;
    *(v10 + 348) = flags;
    *(v10 + 352) = epoch;
    goto LABEL_14;
  }

  v14 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(*(v10 + 88), v14);
    v15 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v15)
    {
      break;
    }

LABEL_11:
    if (++v14 >= CFArrayGetCount(*(v10 + 88)))
    {
      goto LABEL_12;
    }
  }

  v16 = v15;
  FigBaseObject = FigSampleBufferConsumerGetFigBaseObject(v15);
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v18)
  {
    v19 = v18(FigBaseObject, @"PrerollDuration", v13);
    CFRelease(v16);
    if (v19)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  CFRelease(v16);
LABEL_14:
  CFRelease(v13);
  return FigSimpleMutexUnlock();
}

void fbaprp_notificationsFromBAOProxy(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const void *a5)
{
  v84 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v74 = 0;
  v75 = 0;
  cf = 0;
  if (!CFEqual(a3, @"PlayResourceReleased"))
  {
    if (CFEqual(a3, @"flushWithinSampleRangeFailed"))
    {
      if (dword_1EAF17188)
      {
        OUTLINED_FUNCTION_3_63();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_22_20(os_log_and_send_and_compose_flags_and_os_log_type, v12, v13, v14, v15, v16, v17, v18, v70, v71, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
        OUTLINED_FUNCTION_7_22();
        if (!a3)
        {
          goto LABEL_41;
        }

        if (!a2)
        {
LABEL_40:
          v76 = 136315650;
          OUTLINED_FUNCTION_0_66();
          OUTLINED_FUNCTION_65();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_54_10();
LABEL_41:
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_524();
          goto LABEL_42;
        }

LABEL_9:
        CMBaseObjectGetDerivedStorage();
        goto LABEL_40;
      }

      goto LABEL_42;
    }

    if (FigCFEqual())
    {
      ValueIfPresent = FigCFDictionaryGetValueIfPresent();
      v37 = FigCFDictionaryGetValueIfPresent();
      if (ValueIfPresent && v37)
      {
        UInt64 = FigCFNumberGetUInt64();
        FigSimpleMutexLock();
        if (*DerivedStorage)
        {
          goto LABEL_4;
        }

        v39 = *(DerivedStorage + 400);
        FigSimpleMutexUnlock();
        if (v39 != UInt64)
        {
          return;
        }

        if (!FigGetCFPreferenceNumberWithDefault())
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (Mutable)
          {
            v66 = Mutable;
            FigSimpleMutexLock();
            v67 = fbaprp_copyTimeAdjustedToContinuousOrSongTimeline(a2, 1, v74, &cf);
            FigSimpleMutexUnlock();
            if (!v67)
            {
              FigCFDictionarySetValue();
              if (dword_1EAF17188)
              {
                v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);
                OUTLINED_FUNCTION_40();
                if (v5)
                {
                  if (a2)
                  {
                    v69 = (CMBaseObjectGetDerivedStorage() + 424);
                  }

                  else
                  {
                    v69 = "";
                  }

                  v76 = 136315906;
                  v77 = "fbaprp_notificationsFromBAOProxy";
                  v78 = 2048;
                  v79 = a2;
                  v80 = 2082;
                  v81 = v69;
                  v82 = 2112;
                  v83 = v66;
                  OUTLINED_FUNCTION_65();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_414();
              }

              fbaprp_postNotification(a2, @"WarehousePleaseRetransmitFromTime", v66);
            }

            CFRelease(v66);
            if (cf)
            {
              CFRelease(cf);
            }
          }

          return;
        }

        if (dword_1EAF17188)
        {
          OUTLINED_FUNCTION_3_63();
          v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_22_20(v40, v41, v42, v43, v44, v45, v46, v47, v70, v71, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
          OUTLINED_FUNCTION_7_22();
          if (!v39)
          {
            goto LABEL_41;
          }

          if (!a2)
          {
            goto LABEL_40;
          }

          goto LABEL_9;
        }

LABEL_42:
        v64 = kFigRenderPipelineNotification_PrerollLost;
LABEL_43:
        fbaprp_postNotification(a2, *v64, 0);
        return;
      }

      OUTLINED_FUNCTION_3_63();
      v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_22_20(v56, v57, v58, v59, v60, v61, v62, v63, v70, v71, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      OUTLINED_FUNCTION_7_22();
      if (!ValueIfPresent)
      {
        goto LABEL_39;
      }

      if (!a2)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (!FigCFEqual())
      {

        fbaprp_postNotification(a2, a3, a5);
        return;
      }

      if (!FigGetCFPreferenceNumberWithDefault() || !dword_1EAF17188)
      {
        return;
      }

      OUTLINED_FUNCTION_3_63();
      v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_22_20(v48, v49, v50, v51, v52, v53, v54, v55, v70, v71, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      OUTLINED_FUNCTION_7_22();
      if (!a3)
      {
        goto LABEL_39;
      }

      if (!a2)
      {
LABEL_54:
        v76 = 136315650;
        OUTLINED_FUNCTION_0_66();
        OUTLINED_FUNCTION_65();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_54_10();
        goto LABEL_39;
      }
    }

LABEL_35:
    CMBaseObjectGetDerivedStorage();
    goto LABEL_54;
  }

  if (!FigCFDictionaryGetValueIfPresent())
  {
    OUTLINED_FUNCTION_3_63();
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_22_20(v19, v20, v21, v22, v23, v24, v25, v26, v70, v71, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    OUTLINED_FUNCTION_7_22();
    if (a3)
    {
      if (!a2)
      {
        goto LABEL_54;
      }

      goto LABEL_35;
    }

LABEL_39:
    OUTLINED_FUNCTION_20_16();
    OUTLINED_FUNCTION_524();
    return;
  }

  v10 = FigCFNumberGetUInt64();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
LABEL_4:
    FigSimpleMutexUnlock();
    return;
  }

  v27 = *(DerivedStorage + 400);
  FigSimpleMutexUnlock();
  if (v27 == v10)
  {
    if (dword_1EAF17188)
    {
      OUTLINED_FUNCTION_3_63();
      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_22_20(v28, v29, v30, v31, v32, v33, v34, v35, v70, v71, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      OUTLINED_FUNCTION_7_22();
      if (v27)
      {
        if (a2)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v76 = 136315650;
        OUTLINED_FUNCTION_0_66();
        OUTLINED_FUNCTION_65();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_54_10();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524();
    }

    v64 = kFigRenderPipelineNotification_PlayResourceReleased;
    goto LABEL_43;
  }
}

uint64_t FigBufferedAirPlayAudioRenderPipelineCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineCreate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineCreate_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineCreate_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineCreate_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineCreate_cold_11(const __CFString *a1, char *a2)
{
  OUTLINED_FUNCTION_28_16();
  CFStringAppendFormat(v4, 0, @".%u");
  return CFStringGetCString(a1, a2, 20, 0x8000100u);
}

CFStringRef FigBufferedAirPlayAudioRenderPipelineCreate_cold_12(uint64_t a1, uint64_t a2, CFStringRef *a3)
{
  OUTLINED_FUNCTION_28_16();
  snprintf(v4, 0x13uLL, "BuffRP-%u", v8);
  v5 = OUTLINED_FUNCTION_266();
  result = CFStringCreateWithCString(v5, v6, 0x8000100u);
  *a3 = result;
  return result;
}

uint64_t fbaprp_copyOutputFormatDataFromContentFormatDescription_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbaprp_copyOutputFormatDataFromContentFormatDescription_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbaprp_copyOutputFormatDataFromContentFormatDescription_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbaprp_setWaterLevelsForRenderPipelineOutput_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineCopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineSetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineSetProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbaprp_startAudioChainGuts_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbaprp_copyEndPresentationTimeForDecodedSamples_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbaprp_createBufferedAirPlaySampleBufferConsumer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbaprp_createBufferedAirPlaySampleBufferConsumer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbaprp_createBufferedAirPlaySampleBufferConsumer_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineSetRateAndAnchorTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineStartAndUseTimebaseAtTransition_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineStartAndUseTimebaseAtTransition_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineStartAndUseTimebaseAtTransition_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineStartAndUseTimebaseAtTransition_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineStartAndUseTimebaseAtTransition_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineSynchronizeToTimebase_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineReset_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineFinishSettingRate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineFinishSettingRate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbaprp_setupBufferedAirPlayMediaProcessor_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbaprp_setupBufferedAirPlayMediaProcessor_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbaprp_setupBufferedAirPlayMediaProcessor_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbaprp_restoreAudioChainToStartOutputTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbaprp_transitionRosterRemoveRecordsStartingFromTransitionID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbaprp_copySbufBeforeFlushTimeForBufferQueueResetCallback_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbaprp_copySbufBeforeFlushTimeForBufferQueueResetCallback_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayOfflineMixerFactoryReleaseMixer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayOfflineMixerFactoryReleaseMixer_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayOfflineMixerFactoryReleaseMixer_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigReportingModeratorCreateForCRABS(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_1_12();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_1_12();
  fig_note_initialize_category_with_default_work_cf();
  if (!a4)
  {
    return 4294949785;
  }

  FigReportingModeratorGetClassID();
  v6 = CMDerivedObjectCreate();
  if (!v6)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 8) = 0;
    *(DerivedStorage + 96) = FigGetUpTimeNanoseconds();
    *(DerivedStorage + 104) = 0;
    *DerivedStorage = FigGetUpTimeNanoseconds();
    if (a2)
    {
      v8 = CFRetain(a2);
    }

    else
    {
      v8 = 0;
    }

    v6 = 0;
    *(DerivedStorage + 80) = v8;
    *(DerivedStorage + 88) = 0x1F0B645F8;
    *a4 = 0;
  }

  return v6;
}

void playerReportingModeratorFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = *(DerivedStorage + 80);
    if (v1)
    {

      CFRelease(v1);
    }
  }
}

uint64_t playerModeratorProcessEventAndCopyKeyArray(uint64_t a1, int a2, uint64_t *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294949785;
  if (!a3 || !DerivedStorage)
  {
    return result;
  }

  if (a2 == 110)
  {
    return 4294949783;
  }

  v9 = 0;
  v85[0] = 0;
  if (a2 != 306)
  {
LABEL_8:
    v84 = a4;
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v13 = UpTimeNanoseconds;
    v14 = *(DerivedStorage + 8);
    if (*DerivedStorage)
    {
      v15 = (UpTimeNanoseconds - *DerivedStorage) / 0xF4240uLL;
      switch(v14)
      {
        case 0:
          v16 = 0x1F0B65998;
          goto LABEL_15;
        case 1:
          v16 = 0x1F0B65978;
          goto LABEL_15;
        case 2:
          v17 = *(DerivedStorage + 16) * v15 / 0x64;
          fprm_addToSessionStatsCountValue(DerivedStorage, 0x1F0B658D8, v15);
          v16 = 0x1F0B658F8;
          v18 = DerivedStorage;
          v15 = v17;
          goto LABEL_16;
        case 3:
          v16 = 0x1F0B65958;
LABEL_15:
          v18 = DerivedStorage;
LABEL_16:
          fprm_addToSessionStatsCountValue(v18, v16, v15);
          break;
        default:
          break;
      }
    }

    *DerivedStorage = v13;
    switch(a2)
    {
      case 303:
        *(DerivedStorage + 32) = v13;
        v14 = 3;
        break;
      case 304:
        break;
      case 305:
        if (*(*(OUTLINED_FUNCTION_7_42() + 16) + 64))
        {
          v24 = OUTLINED_FUNCTION_5_58();
          v25(v24);
        }

        if (!*(DerivedStorage + 104))
        {
          *(DerivedStorage + 104) = 1;
          v26 = *(DerivedStorage + 80);
          v27 = *(DerivedStorage + 96);
          v28 = *(*(CMBaseObjectGetVTable() + 16) + 88);
          if (v28)
          {
            v28(v26, 0x1F0B645F8, 0x1F0B3F938, (v13 - v27) / 0xF4240uLL);
          }
        }

        break;
      case 306:
        if (v9)
        {
          *(DerivedStorage + 16) = v9;
          *(DerivedStorage + 24) = v13;
          v14 = 2;
        }

        else
        {
          v14 = 1;
        }

        break;
      case 307:
        fprm_setSessionEndReasonIfFatalError(DerivedStorage, @"playerStats", 0, 0x1F0B65A58, 0x1F0B65A98, 0x1F0B65A78);
        v21 = *(DerivedStorage + 80);
        v22 = *(DerivedStorage + 88);
        v23 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v23)
        {
          v23(v21, v22, 0x1F0B65A38, 1);
        }

        break;
      default:
        if (a2 == 402)
        {
          fprm_setSessionEndReasonIfFatalError(DerivedStorage, 0x1F0B64598, 0x1F0B3F818, 0x1F0B3F798, 0x1F0B3F7D8, 0x1F0B3F7B8);
          if (*(*(OUTLINED_FUNCTION_7_42() + 16) + 64))
          {
            v29 = OUTLINED_FUNCTION_5_58();
            v30(v29);
          }

          *(DerivedStorage + 48) = v13;
        }

        else if (a2 == 502)
        {
          fprm_setSessionEndReasonIfFatalError(DerivedStorage, 0x1F0B645B8, 0x1F0B3F8B8, 0x1F0B3F858, 0x1F0B3F898, 0x1F0B3F878);
          if (*(*(OUTLINED_FUNCTION_7_42() + 16) + 64))
          {
            v19 = OUTLINED_FUNCTION_5_58();
            v20(v19);
          }

          *(DerivedStorage + 56) = v13;
        }

        break;
    }

    *(DerivedStorage + 8) = v14;
    v31 = v85[0];
    FigGetUpTimeNanoseconds();
    v32 = a2 != 306 || v31 == 0;
    v33 = !v32;
    if (a2 == 303 || v33)
    {
      if (*(DerivedStorage + 24) && *(*(OUTLINED_FUNCTION_7_42() + 16) + 88))
      {
        v34 = OUTLINED_FUNCTION_3_64();
        v35(v34);
      }

      if (*(DerivedStorage + 32) && *(*(OUTLINED_FUNCTION_7_42() + 16) + 88))
      {
        v36 = OUTLINED_FUNCTION_3_64();
        v37(v36);
      }
    }

    if (*(DerivedStorage + 56) && *(*(OUTLINED_FUNCTION_7_42() + 16) + 88))
    {
      v38 = OUTLINED_FUNCTION_3_64();
      v39(v38);
    }

    if (*(DerivedStorage + 48) && *(*(OUTLINED_FUNCTION_7_42() + 16) + 88))
    {
      v40 = OUTLINED_FUNCTION_3_64();
      v41(v40);
    }

    if (a2 == 901 || a2 == 101)
    {
      v90 = 0;
      v91 = 0;
      v88 = 0;
      v89 = 0;
      v87 = 0;
      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        v42 = OUTLINED_FUNCTION_765();
        v43(v42);
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        v44 = OUTLINED_FUNCTION_765();
        v45(v44);
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        v46 = OUTLINED_FUNCTION_765();
        v47(v46);
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        v48 = OUTLINED_FUNCTION_765();
        v49(v48);
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        v50 = OUTLINED_FUNCTION_765();
        v51(v50);
      }

      v86 = 0;
      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v52 = OUTLINED_FUNCTION_765();
        v53(v52);
      }

      if (v86)
      {
        if (*(*(OUTLINED_FUNCTION_8_31() + 16) + 40))
        {
          v54 = OUTLINED_FUNCTION_0_88();
          v55(v54);
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 88))
        {
          v56 = OUTLINED_FUNCTION_292();
          v57(v56);
        }
      }

      if (v89)
      {
        if (*(*(OUTLINED_FUNCTION_8_31() + 16) + 48))
        {
          v58 = OUTLINED_FUNCTION_0_88();
          if (!v59(v58) && v92 && *(*(CMBaseObjectGetVTable() + 16) + 88))
          {
            v60 = OUTLINED_FUNCTION_292();
            v61(v60);
          }
        }
      }

      if (v88)
      {
        if (*(*(OUTLINED_FUNCTION_8_31() + 16) + 40))
        {
          v62 = OUTLINED_FUNCTION_0_88();
          v63(v62);
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 88))
        {
          v64 = OUTLINED_FUNCTION_292();
          v65(v64);
        }
      }

      if (v87)
      {
        if (*(*(OUTLINED_FUNCTION_8_31() + 16) + 40))
        {
          v66 = OUTLINED_FUNCTION_0_88();
          v67(v66);
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 88))
        {
          v68 = OUTLINED_FUNCTION_292();
          v69(v68);
        }
      }

      if (v90)
      {
        v92 = 0;
        memset(&v85[1], 0, 24);
        if (*(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          v70 = OUTLINED_FUNCTION_0_88();
          v71(v70);
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          v72 = OUTLINED_FUNCTION_765();
          v73(v72);
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          v74 = OUTLINED_FUNCTION_765();
          v75(v74);
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          v76 = OUTLINED_FUNCTION_765();
          v77(v76);
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 88))
        {
          v78 = OUTLINED_FUNCTION_292();
          v79(v78);
        }
      }
    }

    MEMORY[0x19A8D3660](&fprm_copyEventKeyArray_sCreateStaticKeyArrayFromEventKeysOnce, fprm_createStaticKeyArrayFromEventKeys);
    if (!v32 & v80)
    {
      v81 = &qword_1ED4CAB78;
      if (a2 != 101)
      {
        switch(a2)
        {
          case 401:
            v81 = &qword_1ED4CABA0;
            break;
          case 402:
            v81 = &qword_1ED4CABA8;
            break;
          case 502:
            v81 = &qword_1ED4CABB0;
            break;
          case 800:
            v81 = &qword_1ED4CABC8;
            break;
          case 801:
            v81 = &qword_1ED4CABD0;
            break;
          case 802:
            v81 = &qword_1ED4CABD8;
            break;
          case 900:
            v81 = &qword_1ED4CABC0;
            break;
          case 901:
            break;
          default:
            v82 = 0;
LABEL_130:
            result = 0;
            *a3 = v82;
            if (a2 != 101 && v84)
            {
              if (_MergedGlobals_60)
              {
                v83 = CFRetain(_MergedGlobals_60);
              }

              else
              {
                v83 = 0;
              }

              result = 0;
              *v84 = v83;
            }

            return result;
        }
      }
    }

    else
    {
      switch(a2)
      {
        case 303:
          v81 = &qword_1ED4CAB98;
          break;
        case 304:
          v81 = &qword_1ED4CAB88;
          break;
        case 305:
          v81 = &qword_1ED4CAB90;
          break;
        case 306:
          v81 = &qword_1ED4CAB80;
          break;
        case 307:
          v81 = &qword_1ED4CABB8;
          break;
        default:
          JUMPOUT(0);
      }
    }

    v82 = *v81;
    if (*v81)
    {
      CFRetain(*v81);
    }

    goto LABEL_130;
  }

  v10 = *(DerivedStorage + 80);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v11)
  {
    return 4294954514;
  }

  result = v11(v10, 1, 0x1F0B5A678, v85);
  if (!result)
  {
    v9 = v85[0];
    goto LABEL_8;
  }

  return result;
}

uint64_t fprm_setCFTypeFromKeyInStats(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        v7 = result;
        v8 = *(result + 80);
        VTable = CMBaseObjectGetVTable();
        v10 = *(VTable + 16);
        result = VTable + 16;
        v11 = *(v10 + 152);
        if (v11)
        {
          result = v11(v8, a2, a3, &v18);
          if (!result)
          {
            v12 = *(v7 + 80);
            v13 = *(v7 + 88);
            v14 = v18;
            v15 = CMBaseObjectGetVTable();
            v16 = *(v15 + 16);
            result = v15 + 16;
            v17 = *(v16 + 80);
            if (v17)
            {
              return v17(v12, v13, a4, v14);
            }
          }
        }
      }
    }
  }

  return result;
}

CFArrayRef fprm_createStaticKeyArrayFromEventKeys()
{
  v30 = *MEMORY[0x1E69E9840];
  memcpy(v29, off_1E74897E0, sizeof(v29));
  v0 = OUTLINED_FUNCTION_4_9();
  result = CFArrayCreate(v0, v1, 166, 0);
  qword_1ED4CAB78 = result;
  if (result)
  {
    memcpy(v29, off_1E7489D10, 0x1D0uLL);
    v3 = OUTLINED_FUNCTION_4_9();
    result = CFArrayCreate(v3, v4, 58, 0);
    qword_1ED4CAB80 = result;
    if (result)
    {
      memcpy(v29, off_1E7489EE0, 0x1E8uLL);
      v5 = OUTLINED_FUNCTION_4_9();
      result = CFArrayCreate(v5, v6, 61, 0);
      qword_1ED4CAB88 = result;
      if (result)
      {
        memcpy(v29, off_1E748A0C8, 0x240uLL);
        v7 = OUTLINED_FUNCTION_4_9();
        result = CFArrayCreate(v7, v8, 72, 0);
        qword_1ED4CAB90 = result;
        if (result)
        {
          memcpy(v29, off_1E748A308, 0x260uLL);
          v9 = OUTLINED_FUNCTION_4_9();
          result = CFArrayCreate(v9, v10, 76, 0);
          qword_1ED4CAB98 = result;
          if (result)
          {
            memcpy(v29, off_1E748A568, 0x1E8uLL);
            v11 = OUTLINED_FUNCTION_4_9();
            result = CFArrayCreate(v11, v12, 61, 0);
            qword_1ED4CABA0 = result;
            if (result)
            {
              memcpy(v29, off_1E748A750, 0x270uLL);
              v13 = OUTLINED_FUNCTION_4_9();
              result = CFArrayCreate(v13, v14, 78, 0);
              qword_1ED4CABA8 = result;
              if (result)
              {
                memcpy(v29, off_1E748A9C0, 0x260uLL);
                v15 = OUTLINED_FUNCTION_4_9();
                result = CFArrayCreate(v15, v16, 76, 0);
                qword_1ED4CABB0 = result;
                if (result)
                {
                  memcpy(v29, off_1E748AC20, 0x2A0uLL);
                  v17 = OUTLINED_FUNCTION_4_9();
                  result = CFArrayCreate(v17, v18, 84, 0);
                  qword_1ED4CABB8 = result;
                  if (result)
                  {
                    v29[0] = xmmword_1E748AEC0;
                    v29[1] = *&off_1E748AED0;
                    v29[2] = xmmword_1E748AEE0;
                    v29[3] = *&off_1E748AEF0;
                    v19 = OUTLINED_FUNCTION_4_9();
                    result = CFArrayCreate(v19, v20, 8, 0);
                    qword_1ED4CABC0 = result;
                    if (result)
                    {
                      v29[0] = xmmword_1E748AF00;
                      *&v29[1] = 0;
                      v21 = OUTLINED_FUNCTION_4_9();
                      result = CFArrayCreate(v21, v22, 3, 0);
                      qword_1ED4CABC8 = result;
                      if (result)
                      {
                        v29[0] = xmmword_1E748AF18;
                        v29[1] = *&off_1E748AF28;
                        v29[2] = xmmword_1E748AF38;
                        v23 = OUTLINED_FUNCTION_4_9();
                        result = CFArrayCreate(v23, v24, 6, 0);
                        qword_1ED4CABD0 = result;
                        if (result)
                        {
                          v29[0] = xmmword_1E748AF48;
                          v25 = OUTLINED_FUNCTION_4_9();
                          result = CFArrayCreate(v25, v26, 2, 0);
                          qword_1ED4CABD8 = result;
                          if (result)
                          {
                            memcpy(v29, off_1E748AF58, 0x88uLL);
                            v27 = OUTLINED_FUNCTION_4_9();
                            result = CFArrayCreate(v27, v28, 17, 0);
                            _MergedGlobals_60 = result;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t CheckPesHeaderLength(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, BOOL *a6, int a7, int a8)
{
  *a6 = 0;
  *a5 = 0;
  if (a4 < 8)
  {
    return 0;
  }

  v25 = v8;
  v26 = v9;
  destination = 0;
  if (a3)
  {
    v15 = *(a3 + 6);
    destination = v15;
  }

  else
  {
    result = OUTLINED_FUNCTION_2_82(result, a2 + 6, 0, a4, a5, a6, a7, a8, v22, *v23, *&v23[4], v23[6], destination);
    if (result)
    {
      return result;
    }

    v15 = destination;
  }

  if ((v15 & 0xC0) != 0x80)
  {
    v17 = 7;
    do
    {
      if (6 - a4 + v17 == 7)
      {
        return 0;
      }

      if (a3)
      {
        destination = *(a3 + 6 + v17 - 7);
      }

      else
      {
        result = OUTLINED_FUNCTION_2_82(result, a2 + v17 - 1, a3, a4, a5, a6, a7, a8, v22, *v23, *&v23[4], v23[6], destination);
        if (result)
        {
          return result;
        }
      }

      if (v17 == 24)
      {
        goto LABEL_35;
      }

      v18 = destination;
      ++v17;
    }

    while (destination == 255);
    if ((destination & 0xC0) == 0x40)
    {
      if (v17 >= a4)
      {
        return 0;
      }

      if (a3)
      {
        v18 = *(a3 + v17);
        destination = *(a3 + v17);
      }

      else
      {
        result = OUTLINED_FUNCTION_2_82(result, a2 + v17, a3, a4, a5, a6, a7, a8, v22, *v23, *&v23[4], v23[6], destination);
        if (result)
        {
          return result;
        }

        v18 = destination;
      }
    }

    else
    {
      v17 -= 2;
    }

    if ((v18 & 0xF0) == 0x20)
    {
      v20 = 5;
    }

    else if ((v18 & 0xF0) == 0x30)
    {
      v20 = 10;
    }

    else
    {
      if (v18 != 15)
      {
LABEL_35:
        fig_log_get_emitter();
        return FigSignalErrorAtGM();
      }

      v20 = 1;
    }

    result = 0;
    v21 = v17 + v20;
    *a6 = v21 < a4;
    *a5 = v21;
    return result;
  }

  if (a4 == 8)
  {
    return 0;
  }

  if (a3)
  {
    p_destination = (a3 + 8);
    goto LABEL_23;
  }

  p_destination = &destination;
  result = OUTLINED_FUNCTION_2_82(result, a2 + 8, a3, a4, a5, a6, a7, a8, v22, *v23, *&v23[4], v23[6], destination);
  if (!result)
  {
LABEL_23:
    v19 = *p_destination + 9;
    *a5 = v19;
    if (v19 < a4)
    {
      result = 0;
      *a6 = 1;
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t ReadPTSorDTSWithVerify(unsigned __int8 *a1, unint64_t *a2, int a3)
{
  v3 = *a1;
  if ((v3 & 0xFFFFFFF1) != a3)
  {
    return 0;
  }

  v4 = a1[2];
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4];
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  *a2 = (v5 >> 1) | (((v4 << 7) & 0x7F00 | ((a1[1] | (((v3 >> 1) & 7) << 8)) << 15) | a1[3]) << 7);
  return 1;
}

uint64_t PesPacketListSaveChunk(void *a1, CMBlockBufferRef targetBBuf, size_t offsetToData, const void *a4, size_t dataLength, uint64_t a6)
{
  if (*(a6 + 24))
  {
    v12 = malloc_type_calloc(1uLL, 0x30uLL, 0x1020040586F8431uLL);
    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = v12;
    v14 = (a1 + 1);
    if (*a1)
    {
      v15 = *v14;
    }

    else
    {
      v15 = a1 + 1;
      v14 = a1;
    }

    *v15 = v12;
    *v14 = v12;
    v17 = *(a6 + 16);
    *(v12 + 1) = *a6;
    *(v12 + 2) = v17;
  }

  else
  {
    v13 = a1[1];
    if (!v13)
    {
      return 0;
    }
  }

  v19 = v13[1];
  v18 = (v13 + 1);
  result = v19;
  if (!v19)
  {
    result = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 4u, 0, v18);
    if (result)
    {
      return result;
    }

    result = *v18;
    if (!*v18)
    {
      return result;
    }
  }

  if (targetBBuf)
  {

    return CMBlockBufferAppendBufferReference(result, targetBBuf, offsetToData, dataLength, 0);
  }

  v20 = *MEMORY[0x1E695E488];
  v21 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E488], dataLength, 560154730, 0);
  if (v21)
  {
    v22 = v21;
    memcpy(v21, a4, dataLength);
    v23 = *v18;

    return CMBlockBufferAppendMemoryBlock(v23, v22, dataLength, v20, 0, 0, dataLength, 0);
  }

LABEL_21:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FrameQueueEntryMakeRetainable(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!*(a2 + 145))
  {
    v3 = malloc_type_calloc(1uLL, 0x98uLL, 0x10B0040949082C0uLL);
    if (v3)
    {
      v4 = v3;
      v3[8] = 0;
      v3[9] = v3 + 8;
      FrameQueueMove(v3, v2);
      *(v4 + 145) = 1;
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t PesAddBlockBufferToFrameMemory(uint64_t a1, CMBlockBufferRef theBuffer, size_t offset, size_t a4, size_t a5, void *a6, char *a7)
{
  *a6 = 0;
  if (!a4)
  {
    return 0;
  }

  v10 = a4;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  v16 = 0;
  while (1)
  {
    result = CMBlockBufferGetDataPointer(theBuffer, offset, &lengthAtOffsetOut, 0, &dataPointerOut);
    if (result)
    {
      break;
    }

    v15 = v10 >= lengthAtOffsetOut ? lengthAtOffsetOut : v10;
    result = PesAddMemoryToFrameMemory(a1, dataPointerOut, v15, a5, &v16, a7);
    if (result)
    {
      break;
    }

    *a6 += v16;
    offset += v15;
    v10 -= v15;
    if (!v10)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PesAddBlockBufferToFrameBlockBuffer(uint64_t a1, CMBlockBufferRef theBuffer, size_t offset, size_t dataLength, size_t a5, size_t *a6, BOOL *a7)
{
  if (!theBuffer || (v7 = dataLength) == 0)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  if (*(a1 + 608))
  {
    v25 = OUTLINED_FUNCTION_1_85();

    return PesAddBlockBufferToFrameMemory(v25, v26, v27, v28, v29, v30, v31);
  }

  if (*(a1 + 116) && !*(a1 + 512))
  {
    if (dataLength < a5)
    {
      goto LABEL_26;
    }

    v32 = 0;
    lengthAtOffsetOut = 0;
    if (CMBlockBufferGetDataPointer(theBuffer, offset, &lengthAtOffsetOut, 0, &v32))
    {
      return 4294954593;
    }

    if (lengthAtOffsetOut < v7 || *(a1 + 117) && (v32 & 3) != 0 || *(a1 + 118) && (v32 & 0xF) != 0)
    {
LABEL_26:
      v18 = OUTLINED_FUNCTION_1_85();
      return PesAddBlockBufferToFrameMemory(v18, v19, v20, v21, v22, v23, v24);
    }
  }

  if (*(a1 + 656))
  {
    v14 = *(a1 + 624);
    if (v14)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(a1 + 656) = 1;
    *(a1 + 624) = a5;
    *(a1 + 616) = 0;
    v14 = a5;
    if (a5)
    {
LABEL_8:
      if (v14 - *(a1 + 616) < v7)
      {
        v7 = v14 - *(a1 + 616);
      }
    }
  }

  v15 = *(a1 + 512);
  if (v15)
  {
    if (v14 != a5)
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }
  }

  else
  {
    result = CMBlockBufferCreateEmpty(*(*(a1 + 8) + 40), *(a1 + 652), 0, (a1 + 512));
    if (result)
    {
      return result;
    }

    v15 = *(a1 + 512);
  }

  result = CMBlockBufferAppendBufferReference(v15, theBuffer, offset, v7, 0);
  ++*(a1 + 648);
  *a6 = v7;
  v17 = *(a1 + 616) + v7;
  *(a1 + 616) = v17;
  *a7 = a5 - 1 < v17;
  return result;
}

void *PesFrameHeaderFinalizeFrame(void *result, int a2)
{
  if (result)
  {
    v2 = result;
    v3 = result[68];
    if (v3)
    {
      *(result[71] + 8 * v3 - 8) = result[77] - *(result[70] + 8 * v3 - 8);
      if (a2)
      {
        v4 = result[68];
        if (v4)
        {
          for (i = 0; i < v4; ++i)
          {
            v6 = bswap32(*(v2[71] + 8 * i) - 4);
            sourceBytes = v6;
            v7 = v2[76];
            if (v7)
            {
              *(v7 + *(v2[70] + 8 * i)) = v6;
            }

            else
            {
              result = CMBlockBufferReplaceDataBytes(&sourceBytes, v2[64], *(v2[70] + 8 * i), 4uLL);
              if (result)
              {
                return result;
              }

              v4 = v2[68];
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(uint64_t a1, uint64_t a2)
{
  memset(&v47, 0, sizeof(v47));
  if (*(a2 + 48) && *(a2 + 49))
  {
    *(a2 + 80) |= 0x1000u;
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 100);
  if (v5 == 1)
  {
    if (*(a1 + 658))
    {
      v7 = *(a1 + 776);
      v6 = *(a1 + 680) + 90000 * v7 / *(a1 + 768);
    }

    else
    {
      v7 = 0;
      *(a1 + 658) = 1;
      v6 = *(a2 + 24);
      *(a1 + 680) = v6;
    }

    v16 = *(a2 + 128);
    *(a1 + 772) = v16;
    *(a1 + 776) = v7 + v16;
    *(a1 + 688) = v6;
    goto LABEL_41;
  }

  if (!v5)
  {
    *(a1 + 658) = 1;
    if (!*(a2 + 49))
    {
      v47 = **&MEMORY[0x1E6960C70];
LABEL_42:
      v32 = *(a1 + 84);
      if (v32)
      {
        v33 = **(a1 + 8);
        v34 = *(a1 + 60);
        v35 = *(a1 + 104);
        v36 = *(a2 + 56);
        v37 = *(a2 + 80);
        v38 = *(a2 + 40);
        v46 = v47;
        v45 = v47;
        v39 = v32(v33, v34, v35, v36, &v46, &v45, v37, v38, 0, 0, 0, 0);
      }

      else
      {
        v39 = 0;
      }

      FrameQueueEntryDestroy(a2);
      return v39;
    }

    v6 = *(a2 + 24);
LABEL_41:
    CMTimeMake(&v47, v6, 90000);
    goto LABEL_42;
  }

  v8 = *(a2 + 49);
  *(a2 + 50) = v8;
  v9 = *(a2 + 24);
  *(a2 + 32) = v9;
  if (*(a1 + 728))
  {
    Retainable = FrameQueueEntryMakeRetainable(a1, a2);
    Retainable[2] = a1;
    *Retainable = 0;
    v20 = *(a1 + 736);
    Retainable[1] = v20;
    v21 = OUTLINED_FUNCTION_3_65(Retainable, v20);
    if (v22 < 0x10)
    {
      return 0;
    }

    *&v46.value = 0uLL;
    v23 = *(a1 + 8);
    v24 = *(a1 + 728);
    if (*(v23 + 448))
    {
      if (v24)
      {
        v25 = *(a1 + 712);
        v26 = *(a1 + 688) + (90000 * *(a1 + 772)) / *(a1 + 768);
        v27 = *(v24 + 24);
        v28 = v25;
        if ((v27 & 0x100000000) == 0)
        {
          v28 = *(a1 + 712);
          if ((*(a1 + 672) & 0x100000000) != 0)
          {
            v28 = v25 + 0x200000000;
            *(a1 + 712) = v25 + 0x200000000;
          }
        }

        v29 = v28 + v27 + *(*a1 + 64);
        if (v29 > *(v23 + 160) + v26)
        {
          *(a1 + 712) = v25;
          fig_log_get_emitter();
          return FigSignalErrorAtGM();
        }

        if (v29 < v26)
        {
          *(a1 + 712) = v25;
LABEL_63:
          v44 = v24;
          do
          {
            *(v44 + 49) = 0;
            v44 = *v44;
          }

          while (v44);
          *(v24 + 8) = &v46;
          v46.value = v24;
          *&v46.timescale = v21;
          *(a1 + 728) = 0;
          *(a1 + 736) = a1 + 728;
          return FigMPEG2ParseFromQueue(&v46);
        }

        *(v24 + 146) = 1;
        v46.value = 0;
        *&v46.timescale = &v46;
        FigMPEG2MoveAdjustmentQueue(a1, &v46);
        return FigMPEG2ParseFromQueue(&v46);
      }
    }

    else if (v24)
    {
      goto LABEL_63;
    }

    *&v46.timescale = &v46;
    return FigMPEG2ParseFromQueue(&v46);
  }

  if (!v8)
  {
    v15 = *(a1 + 776);
    v6 = *(a1 + 680) + 90000 * v15 / *(a1 + 768);
    goto LABEL_40;
  }

  v10 = *(a1 + 712);
  if (!*(a1 + 658))
  {
    v18 = *(*a1 + 64);
    if ((v9 & 0x100000000) != 0 && !v18)
    {
      v18 = 0;
      if (0x200000000 - v9 < *(v4 + 160))
      {
        v10 -= 0x200000000;
        *(a1 + 712) = v10;
      }
    }

    v15 = 0;
    *(a1 + 664) = v9;
    v6 = v18 + v9 + v10;
    *(a1 + 672) = v9;
    *(a1 + 680) = v6;
    *(a1 + 760) = v9;
    *(a1 + 658) = 1;
    goto LABEL_40;
  }

  v11 = *(a1 + 712);
  if ((v9 & 0x100000000) == 0)
  {
    v11 = *(a1 + 712);
    if ((*(a1 + 672) & 0x100000000) != 0)
    {
      v11 = v10 + 0x200000000;
      *(a1 + 712) = v10 + 0x200000000;
    }
  }

  v12 = v11 + v9;
  v13 = *a1;
  v14 = v12 + *(*a1 + 64);
  if (v14 >= *(a1 + 680) || !*(v4 + 448))
  {
    if (!*(a2 + 146))
    {
      v17 = v14 - (*(a1 + 688) + (90000 * *(a1 + 772)) / *(a1 + 768));
      if (v17)
      {
        v41 = *(v4 + 160);
        if (v17 < -2 || v17 > v41)
        {
          goto LABEL_18;
        }

        if ((v17 - 3) < 0xFFFFFFFFFFFFFFFBLL)
        {
          v6 = OUTLINED_FUNCTION_4_67(v14, v9);
          *(a2 + 80) |= 1u;
          goto LABEL_40;
        }
      }
    }

    v6 = OUTLINED_FUNCTION_4_67(v14, v9);
    goto LABEL_40;
  }

LABEL_18:
  *(a1 + 712) = v10;
  *(a2 + 80) |= 1u;
  if (*(v13 + 72) < 2u)
  {
    v15 = 0;
    *(a1 + 712) = 0;
    v6 = *(a1 + 688) + (90000 * *(a1 + 772)) / *(a1 + 768);
    *(v13 + 64) = v6 - v9;
    *(a1 + 688) = v6;
    *(a1 + 680) = v6;
    *(a1 + 664) = v9;
    *(a1 + 672) = v9;
LABEL_40:
    *(a1 + 688) = v6;
    ++*(a1 + 752);
    v31 = *(a2 + 128);
    *(a1 + 772) = v31;
    *(a1 + 776) = v15 + v31;
    goto LABEL_41;
  }

  v30 = AddAudioFrameToAdjustmentQueue(a1, a2);
  if (v30)
  {
    return v30;
  }

  v43 = *a1;

  return ProgramCheckPesForTimestampChanges(v43);
}

uint64_t AddAudioFrameToAdjustmentQueue(uint64_t a1, uint64_t a2)
{
  Retainable = FrameQueueEntryMakeRetainable(a1, a2);
  Retainable[2] = a1;
  v4 = *(a1 + 736);
  *Retainable = 0;
  Retainable[1] = v4;
  OUTLINED_FUNCTION_3_65(Retainable, v4);
  return 0;
}

uint64_t ProgramCheckPesForTimestampChanges(uint64_t a1)
{
  if (*(a1 + 72) < 2u)
  {
    return 0;
  }

  v26 = v1;
  v27 = v2;
  v24 = 0;
  v25 = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a1 + 24);
    do
    {
      if (*(v7 + 80))
      {
        if (!*(v7 + 728))
        {
          return 0;
        }

        v8 = GetMinimumPTSFromAdjustmentQueue(v7) & 0x180000000;
        v6 |= v8 == 0x180000000;
        v5 |= v8 == 0;
      }

      v7 = *(v7 + 16);
    }

    while (v7);
    if (v6)
    {
      v9 = v5 != 0;
    }

    else
    {
      v9 = 0;
    }

    v10 = 0;
    v11 = 1;
    v12 = v4;
    do
    {
      if (*(v12 + 80))
      {
        v13 = *(v12 + 768);
        if (v13)
        {
          v14 = *(v12 + 688) + 90000 * *(v12 + 772) / v13;
        }

        else
        {
          v14 = *(v12 + 704);
        }

        MinimumPTSFromAdjustmentQueue = GetMinimumPTSFromAdjustmentQueue(v12);
        v16 = (MinimumPTSFromAdjustmentQueue & 0x100000000) == 0;
        if (v9 && v16)
        {
          v17 = 0x200000000;
        }

        else
        {
          v17 = 0;
        }

        if (v9 && v16)
        {
          v18 = MinimumPTSFromAdjustmentQueue + 0x200000000;
        }

        else
        {
          v18 = MinimumPTSFromAdjustmentQueue;
        }

        *(v12 + 712) = v17;
        if (v11)
        {
          v11 = 0;
          v10 = v14 - v18;
        }

        else
        {
          v19 = v18 + v10;
          v20 = v14 - v18;
          if (v19 < v14)
          {
            v10 = v20;
          }
        }
      }

      else
      {
        *(v12 + 712) = 0;
      }

      v12 = *(v12 + 16);
    }

    while (v12);
    *(a1 + 64) = v10;
    v24 = 0;
    v25 = &v24;
    v21 = &v24;
    do
    {
      v22 = *(v4 + 728);
      if (v22)
      {
        *(v22 + 80) |= 1u;
        *v21 = v22;
        *(*(v4 + 728) + 8) = v25;
        v21 = *(v4 + 736);
        v25 = v21;
        *(v4 + 728) = 0;
        *(v4 + 736) = v4 + 728;
      }

      *(v4 + 744) = 0;
      *(v4 + 658) = 0;
      *(v4 + 776) = 0;
      *(v4 + 800) = 0;
      v4 = *(v4 + 16);
    }

    while (v4);
  }

  else
  {
    *(a1 + 64) = 0;
    v25 = &v24;
  }

  return FigMPEG2ParseFromQueue(&v24);
}

uint64_t AddPes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ReadTimestampFromPesHeader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ReadTimestampFromPesHeader_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ReadTimestampFromPesHeader_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ReadTimestampFromPesHeader_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ReadTimestampFromPesHeader_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ReadTimestampFromPesHeader_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProcessPesData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProcessPesData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProcessPesData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void PesAddMemoryToFrameMemory_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a2 = FigSignalErrorAtGM();

  PesCleanAfterFrameEmit(a1);
}

uint64_t PesAddMemoryToFrameBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PesAddMemoryToFrameBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PesAddMemoryToFrameBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyDoneWithFrame(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  returnedPointerOut = 0;
  v10 = 0;
  result = CMBlockBufferAccessDataBytes(*(a2 + 56), 0, 0xAuLL, temporaryBlock, &returnedPointerOut);
  if (result)
  {
    return result;
  }

  v5 = *(a1 + 48);
  if (DolbyGetFormatID(returnedPointerOut) != 1633889587)
  {
    result = DDPlusGetSyncFrameInfo(returnedPointerOut, &v10 + 1, &v10);
    if (result)
    {
      return result;
    }

    if ((v10 & 0xFD00u) != 0 || v10)
    {
      result = *(v5 + 384);
      if (!result)
      {
        return result;
      }

      OUTLINED_FUNCTION_0_89(result);
      return 0;
    }

    AudioBlockCountForSyncFrame = DDPlusGetAudioBlockCountForSyncFrame(returnedPointerOut);
    if (!*(v5 + 384))
    {
      goto LABEL_26;
    }

    v7 = *(v5 + 480);
    if (*(a2 + 48))
    {
      if (v7 < 6)
      {
        FrameQueueEntryClean(v5 + 328);
        *(v5 + 480) = 0;
        v8 = *(v5 + 384);
        if (!v8)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }

    else if (v7 < 6)
    {
      v9 = 1;
      goto LABEL_23;
    }

    *(v5 + 480) = 0;
    result = FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(a1, v5 + 328);
    if (result)
    {
      return result;
    }

    FrameQueueEntryClean(v5 + 328);
    v9 = 0;
LABEL_23:
    v8 = *(v5 + 384);
    if (!v8)
    {
      if (!v9)
      {
LABEL_27:
        FrameQueueMove(v5 + 328, a2);
        goto LABEL_28;
      }

LABEL_26:
      if (!*(a2 + 48))
      {
        return 0;
      }

      goto LABEL_27;
    }

LABEL_24:
    OUTLINED_FUNCTION_0_89(v8);
LABEL_28:
    result = 0;
    *(v5 + 480) += AudioBlockCountForSyncFrame;
    return result;
  }

  if (!*(v5 + 384))
  {
    return FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(a1, a1 + 456);
  }

  *(v5 + 480) = 0;
  result = FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(a1, v5 + 328);
  if (!result)
  {
    FrameQueueEntryClean(v5 + 328);
    return FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(a1, a1 + 456);
  }

  return result;
}

uint64_t FigSampleBufferConsumerCreateForSampleBufferConsumer(const char *a1, void *a2)
{
  if (!a2)
  {
    return 4294954535;
  }

  v4 = *MEMORY[0x1E695E480];
  FigSampleBufferConsumerGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    return v5;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigReentrantMutexCreate();
  *DerivedStorage = v7;
  if (!v7)
  {
    return 4294954536;
  }

  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v5 = CMBufferQueueCreate(v4, 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 16));
  if (v5)
  {
    return v5;
  }

  Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 8) = Mutable;
  if (!Mutable)
  {
    return 4294954536;
  }

  v10 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 24) = v10;
  if (!v10)
  {
    return 4294954536;
  }

  v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 48) = v11;
  if (!v11)
  {
    return 4294954536;
  }

  v12 = MEMORY[0x1E6960C70];
  v13 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 64) = *MEMORY[0x1E6960C70];
  v14 = *(v12 + 16);
  *(DerivedStorage + 80) = v14;
  *(DerivedStorage + 88) = v13;
  *(DerivedStorage + 104) = v14;
  v15 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 32) = v15;
  if (!v15)
  {
    return 4294954536;
  }

  if (a1)
  {
    v16 = a1;
  }

  else
  {
    v16 = "-";
  }

  v17 = 0;
  *(DerivedStorage + 112) = CFStringCreateWithCString(v4, v16, 0x8000100u);
  *a2 = 0;
  return v17;
}

uint64_t sbcsbc_setProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      if (!a3)
      {
        v19 = MEMORY[0x1E6960C70];
        *(DerivedStorage + 64) = *MEMORY[0x1E6960C70];
        epoch = *(v19 + 16);
        goto LABEL_22;
      }

      v15 = CFGetTypeID(a3);
      if (v15 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(&v25, a3);
        a3 = 0;
        *(DerivedStorage + 64) = *&v25.value;
        epoch = v25.epoch;
LABEL_22:
        *(DerivedStorage + 80) = epoch;
        goto LABEL_33;
      }

LABEL_34:
      a3 = 4294954516;
      goto LABEL_33;
    }

    if (!FigCFEqual())
    {
      if (a3)
      {
        v20 = a3;
      }

      else
      {
        v20 = @"sbcsbc_ItWasNull";
      }

      CFDictionarySetValue(*(DerivedStorage + 24), a2, v20);
      v21 = *(DerivedStorage + 40);
      if (!v21)
      {
        goto LABEL_12;
      }

      v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v22)
      {
        v14 = v22(v21, a2, a3);
        goto LABEL_29;
      }

LABEL_30:
      a3 = 4294954514;
      goto LABEL_33;
    }

    if (a3)
    {
      v17 = CFGetTypeID(a3);
      if (v17 != CFDictionaryGetTypeID())
      {
        goto LABEL_34;
      }

      CMTimeMakeFromDictionary(&v25, a3);
      a3 = 0;
      *(DerivedStorage + 88) = *&v25.value;
      v18 = v25.epoch;
    }

    else
    {
      v23 = MEMORY[0x1E6960C70];
      *(DerivedStorage + 88) = *MEMORY[0x1E6960C70];
      v18 = *(v23 + 16);
    }

    *(DerivedStorage + 104) = v18;
    goto LABEL_33;
  }

  if (a3)
  {
    v6 = CFGetTypeID(a3);
    if (v6 != FigSampleBufferConsumerGetTypeID())
    {
      goto LABEL_34;
    }
  }

  sbcsbc_detachFromDownstreamConsumer();
  v7 = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v8 = v7;
    *(v7 + 40) = a3;
    CFRetain(a3);
    if (!*(v8 + 120))
    {
LABEL_11:
      CFDictionaryApplyFunction(*(v8 + 24), sbcsbc_applyPendingPropertiesDictionaryApplier, *(v8 + 40));
      FigCFArrayApplyFunction();
      CFArrayRemoveAllValues(*(v8 + 8));
      CMBufferQueueReset(*(v8 + 16));
LABEL_12:
      a3 = 0;
      goto LABEL_33;
    }

    v9 = *(v8 + 40);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v10 && v10(v9))
    {
      sbcsbc_downstreamTriggerCallback();
    }

    v12 = *(v8 + 40);
    v11 = *(v8 + 48);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v13)
    {
      v14 = v13(v12, sbcsbc_downstreamTriggerCallback, v11, v8 + 56);
      if (!v14)
      {
        goto LABEL_11;
      }

LABEL_29:
      a3 = v14;
      goto LABEL_33;
    }

    goto LABEL_30;
  }

LABEL_33:
  FigSimpleMutexUnlock();
  return a3;
}

void sbcsbc_detachFromDownstreamConsumer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 40);
  if (v1)
  {
    v2 = DerivedStorage;
    v3 = *(DerivedStorage + 56);
    if (!v3)
    {
      goto LABEL_6;
    }

    v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v4)
    {
      v4(v1, v3);
    }

    *(v2 + 56) = 0;
    v1 = *(v2 + 40);
    if (v1)
    {
LABEL_6:
      CFRelease(v1);
      *(v2 + 40) = 0;
    }
  }
}

void sbcsbc_downstreamTriggerCallback()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    v2 = *(CMBaseObjectGetDerivedStorage() + 32);

    dispatch_async_f(v2, v1, sbcsbc_downstreamTriggerCallbackAsync);
  }
}

uint64_t sbcsbc_InstallLowWaterTrigger_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbcsbc_InstallLowWaterTrigger_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbcsbc_RemoveLowWaterTrigger_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void dwpm_markAlternateAndMediaSelectionCompleteDispatch()
{
  v4 = OUTLINED_FUNCTION_0_90();
  Seconds = CMTimeGetSeconds(&v12);
  if (*(v4 + 111))
  {
    goto LABEL_14;
  }

  if (v3 < 1 || *(v4 + 108))
  {
    goto LABEL_7;
  }

  v6 = Seconds;
  DownloadProgressItemForAlternateAndSelectedMediaArray = dwpm_findDownloadProgressItemForAlternateAndSelectedMediaArray();
  if (!DownloadProgressItemForAlternateAndSelectedMediaArray)
  {
LABEL_14:
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
    goto LABEL_7;
  }

  v8 = DownloadProgressItemForAlternateAndSelectedMediaArray[4];
  DownloadProgressItemForAlternateAndSelectedMediaArray[4].i64[1] = v3;
  DownloadProgressItemForAlternateAndSelectedMediaArray[5].i64[0] = v6;
  *(v4 + 56) = vaddq_s64(vsubq_s64(vdupq_n_s64(v3), v8), *(v4 + 56));
  DownloadProgressItemForAlternateAndSelectedMediaArray[5].i8[8] = 1;
  v9 = FigMediaSelectionArrayCopyDescription(*(v4 + 8), v2);
  dwpm_sendProgressNotification(v1);
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_7:
  if (*v0)
  {
    CFRelease(*v0);
  }

  v10 = *(v0 + 16);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(v0 + 24);
  if (v11)
  {
    CFRelease(v11);
  }

  free(v0);
}

void dwpm_upadateMediaDownloadedTimeAndBytesDispatch()
{
  v4 = OUTLINED_FUNCTION_0_90();
  Seconds = CMTimeGetSeconds(&v21);
  if (*(v4 + 108))
  {
    goto LABEL_18;
  }

  if (*(v4 + 111))
  {
    goto LABEL_25;
  }

  v6 = Seconds;
  if (v3 < 1 || v6 < 1)
  {
    goto LABEL_18;
  }

  DownloadProgressItemForAlternateAndSelectedMediaArray = dwpm_findDownloadProgressItemForAlternateAndSelectedMediaArray();
  if (!DownloadProgressItemForAlternateAndSelectedMediaArray)
  {
LABEL_25:
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
    goto LABEL_18;
  }

  DownloadProgressItemForAlternateAndSelectedMediaArray[10] = v6;
  *(v4 + 64) += v3 - DownloadProgressItemForAlternateAndSelectedMediaArray[9];
  DownloadProgressItemForAlternateAndSelectedMediaArray[9] = v3;
  v9 = FigMediaSelectionArrayCopyDescription(*(v4 + 8), v2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigGetUpTimeNanoseconds() - *(DerivedStorage + 88) >= 5000000000)
  {
    *(DerivedStorage + 88) = FigGetUpTimeNanoseconds();
    for (i = *(DerivedStorage + 72); i; i = *i)
    {
      v12 = CMBaseObjectGetDerivedStorage();
      if (!*(i + 88))
      {
        v13 = i[10];
        if (v13 >= 300 && !*(i + 56))
        {
          v14 = v12;
          v15 = i[8];
          v16 = (i[9] / v13);
          v21 = *(i + 4);
          v17 = CMTimeGetSeconds(&v21) * v16;
          i[8] = v17;
          *(v14 + 56) += v17 - v15;
          v18 = FigMediaSelectionArrayCopyDescription(*(v14 + 8), i[3]);
          if (v18)
          {
            CFRelease(v18);
          }
        }
      }
    }
  }

  dwpm_sendProgressNotification(v1);
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_18:
  if (*v0)
  {
    CFRelease(*v0);
  }

  v19 = *(v0 + 16);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(v0 + 24);
  if (v20)
  {
    CFRelease(v20);
  }

  free(v0);
}

void dwpm_updateExpectedMediaBytesToDownloadDispatch(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 96);
  v4 = *(a1 + 128);
  v11 = *(a1 + 104);
  v12 = *(a1 + 120);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 111))
  {
    goto LABEL_17;
  }

  if (v3 < 1)
  {
    goto LABEL_8;
  }

  v6 = DerivedStorage;
  DownloadProgressItemForAlternateAndSelectedMediaArray = dwpm_findDownloadProgressItemForAlternateAndSelectedMediaArray();
  if (!DownloadProgressItemForAlternateAndSelectedMediaArray)
  {
LABEL_17:
    FigSignalErrorAtGM();
  }

  else
  {
    *(v6 + 56) += v3;
    DownloadProgressItemForAlternateAndSelectedMediaArray[8] += v3;
    *(DownloadProgressItemForAlternateAndSelectedMediaArray + 2) = v11;
    DownloadProgressItemForAlternateAndSelectedMediaArray[6] = v12;
    if (*(DownloadProgressItemForAlternateAndSelectedMediaArray + 56))
    {
      *(DownloadProgressItemForAlternateAndSelectedMediaArray + 56) = v4;
    }

    v8 = FigMediaSelectionArrayCopyDescription(*(v6 + 8), v2);
    if (v8)
    {
      CFRelease(v8);
    }
  }

LABEL_8:
  if (*a1)
  {
    CFRelease(*a1);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    CFRelease(v10);
  }

  free(a1);
}

void dwpm_sendProgressNotification(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (*(DerivedStorage + 108) && !*(DerivedStorage + 109) || UpTimeNanoseconds - *(DerivedStorage + 96) >= 1000000000)
  {
    *(DerivedStorage + 96) = FigGetUpTimeNanoseconds();
    if (!*(DerivedStorage + 109))
    {
      v4 = (*(DerivedStorage + 64) / *(DerivedStorage + 56)) * 100.0;
      if (v4 > *(DerivedStorage + 104))
      {
        *(DerivedStorage + 104) = v4;
        if (v4 <= 95.0 || *(DerivedStorage + 108) != 0)
        {
          v6 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v6)
          {
            v7 = v6;
            v8 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E00407336ED58uLL);
            if (v8)
            {
              v9 = v8;
              if (a1)
              {
                v10 = CFRetain(a1);
              }

              else
              {
                v10 = 0;
              }

              *v9 = v10;
              v11 = *(DerivedStorage + 56);
              v12 = *(DerivedStorage + 64);
              v9[11] = v7;
              v9[12] = v11;
              v9[7] = v12;
              if (*(DerivedStorage + 108))
              {
                *(DerivedStorage + 109) = 1;
              }

              v13 = *(DerivedStorage + 48);

              dispatch_async_f(v13, v9, dworch_sendProgressNotificationOnCallbackQueue);
            }

            else if (FigSignalErrorAtGM())
            {

              CFRelease(v7);
            }
          }
        }
      }
    }
  }
}

void dwpm_invalidateGutsOnQueue()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 111))
  {
    v1 = DerivedStorage;
    *(DerivedStorage + 111) = 1;
    if (dword_1EAF171E8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = v1[1];
    if (v3)
    {
      CFRelease(v3);
      v1[1] = 0;
    }

    v4 = v1[2];
    if (v4)
    {
      CFRelease(v4);
      v1[2] = 0;
    }

    v5 = v1[4];
    if (v5)
    {
      CFRelease(v5);
      v1[4] = 0;
    }

    v6 = v1[6];
    if (v6)
    {
      dispatch_release(v6);
      v1[6] = 0;
    }

    v7 = v1[9];
    if (v7)
    {
      v8 = v1 + 10;
      do
      {
        v10 = *v7;
        v9 = v7[1];
        v11 = (*v7 + 8);
        if (!*v7)
        {
          v11 = v8;
        }

        *v11 = v9;
        *v9 = v10;
        v12 = v7[2];
        if (v12)
        {
          CFRelease(v12);
        }

        v13 = v7[3];
        if (v13)
        {
          CFRelease(v13);
        }

        free(v7);
        v7 = v10;
      }

      while (v10);
    }
  }
}

uint64_t dwpm_registerAlternateAndMediaSelectionsDispatch_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL dwpm_registerAlternateAndMediaSelectionsDispatch_cold_2(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t dwpm_registerAlternateAndMediaSelectionsDispatch_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dwpm_registerAlternateAndMediaSelectionsDispatch_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadProgressMonitorCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadProgressMonitorCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadProgressMonitorCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadProgressMonitorCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dwpm_copyPropertyDispatch_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dwpm_copyPropertyDispatch_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVTTSpanCreateCopyWithValueRange(const void *a1, CFIndex a2, CFIndex a3, CFTypeRef *a4)
{
  v25 = 0;
  v26 = 0;
  theString = 0;
  cf = 0;
  v22 = 0;
  if (!a1 || (v8 = CFGetTypeID(a1), v8 != FigVTTNodeGetTypeID()))
  {
    OUTLINED_FUNCTION_429();
    OUTLINED_FUNCTION_1_37();
LABEL_27:
    NodeType = FigSignalErrorAtGM();
    goto LABEL_28;
  }

  NodeType = FigVTTNodeGetNodeType(a1, &v22);
  if (NodeType)
  {
LABEL_28:
    v14 = NodeType;
    goto LABEL_29;
  }

  if (v22 != 5)
  {
    OUTLINED_FUNCTION_429();
    OUTLINED_FUNCTION_1_37();
    goto LABEL_27;
  }

  if (!a4)
  {
    OUTLINED_FUNCTION_429();
    OUTLINED_FUNCTION_1_19();
    goto LABEL_27;
  }

  v10 = CFGetAllocator(a1);
  NodeType = FigVTTSpanCreate(v10, &v26);
  if (NodeType)
  {
    goto LABEL_28;
  }

  NodeType = FigVTTNodeCopyValue(a1, &theString);
  if (NodeType)
  {
    goto LABEL_28;
  }

  if (theString)
  {
    Length = CFStringGetLength(theString);
    if ((a2 & 0x8000000000000000) == 0 && a2 + a3 <= Length)
    {
      v27.location = a2;
      v27.length = a3;
      v12 = CFStringCreateWithSubstring(v10, theString, v27);
      v13 = FigVTTNodeSetValue(v26, v12);
      if (v13)
      {
        goto LABEL_36;
      }

      goto LABEL_14;
    }

    OUTLINED_FUNCTION_429();
    goto LABEL_27;
  }

  v12 = 0;
LABEL_14:
  v13 = FigVTTNodeCopyAttributes(a1, &v25);
  if (!v13)
  {
    context = v26;
    v21 = 0;
    CFDictionaryApplyFunction(v25, figSpan_copyOneAttributeToNode, &context);
    v14 = v21;
    if (v21)
    {
LABEL_24:
      if (!v12)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    v15 = 0;
    v16 = 1;
    while (1)
    {
      v17 = v16;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v18 = off_1E748B030[v15];
      v13 = FigVTTNodeCopyProperty(a1, v18, v10, &cf);
      if (v13)
      {
        break;
      }

      if (cf)
      {
        v13 = FigVTTNodeSetProperty(v26, v18, cf);
        if (v13)
        {
          break;
        }
      }

      v16 = 0;
      v15 = 1;
      if ((v17 & 1) == 0)
      {
        v14 = 0;
        *a4 = v26;
        v26 = 0;
        goto LABEL_24;
      }
    }
  }

LABEL_36:
  v14 = v13;
  if (v12)
  {
LABEL_25:
    CFRelease(v12);
  }

LABEL_29:
  if (theString)
  {
    CFRelease(theString);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return v14;
}

uint64_t figSpan_copyOneAttributeToNode(uint64_t cf, const void *a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    v4 = cf;
    if (cf && (v6 = CFGetTypeID(cf), v6 == CFStringGetTypeID()))
    {
      cf = FigVTTNodeSetAttribute(*a3, v4, a2);
      if (!cf)
      {
        return cf;
      }
    }

    else
    {
      cf = 4294949406;
    }

    *(a3 + 8) = cf;
  }

  return cf;
}

uint64_t FigVTTSpanCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTSpan_CopyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTSpan_CopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTSpan_SetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTSpan_GetNodeType_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTSpan_copyNodeDocumentSerialization_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTSpan_copyNodeDocumentSerialization_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t favd_UpdateImageQueuesToMatchOutputsArray(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  v95 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v80 = a2;
  if (dword_1EAF17228)
  {
    LODWORD(theArray) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v6 = OUTLINED_FUNCTION_14_29();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v7 = MEMORY[0x1E695E480];
  v79 = a3;
  if (!a2 || !a3 || !CFArrayGetCount(a3))
  {
    goto LABEL_39;
  }

  v8 = FigCFDictionaryCopyArrayOfKeys();
  if (!favd_areOutputsEqual(v8, a3))
  {
    if (dword_1EAF17228)
    {
      v23 = OUTLINED_FUNCTION_14_29();
      v31 = OUTLINED_FUNCTION_17_24(v23, v24, v25, v26, v27, v28, v29, v30, v68, v69, v70, v71, v72, v73, v74, allocator, DerivedStorage, a3, a2, v81, v82, OS_LOG_TYPE_DEFAULT, 0);
      if (OUTLINED_FUNCTION_124_0(v31))
      {
        v87 = 136315650;
        v88 = "favd_reuseImageQueuesFromPreviousDestination";
        v89 = 2112;
        v90 = v8;
        v91 = 2112;
        *v92 = a3;
        OUTLINED_FUNCTION_145();
        OUTLINED_FUNCTION_2_83();
        OUTLINED_FUNCTION_12_32();
        _os_log_send_and_compose_impl();
      }

      goto LABEL_34;
    }

LABEL_35:
    v9 = 0;
    goto LABEL_36;
  }

  if (!FigCFEqual())
  {
    if (dword_1EAF17228)
    {
      v32 = OUTLINED_FUNCTION_14_29();
      v40 = OUTLINED_FUNCTION_17_24(v32, v33, v34, v35, v36, v37, v38, v39, v68, v69, v70, v71, v72, v73, v74, allocator, DerivedStorage, a3, a2, v81, v82, OS_LOG_TYPE_DEFAULT, 0);
      if (OUTLINED_FUNCTION_124_0(v40))
      {
        v87 = 136315138;
        v88 = "favd_reuseImageQueuesFromPreviousDestination";
        OUTLINED_FUNCTION_145();
        OUTLINED_FUNCTION_2_83();
        OUTLINED_FUNCTION_12_32();
        _os_log_send_and_compose_impl();
      }

LABEL_34:
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  favd_cleanupOldOutputs(a1);
  v9 = 0;
  v10 = 0;
  allocatora = *v7;
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_9:
  for (i = CFArrayGetCount(v8); v10 < i; i = 0)
  {
    v12 = v8;
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v10);
    v14 = CMBaseObjectGetDerivedStorage();
    v15 = CMBaseObjectGetDerivedStorage();
    Value = CFDictionaryGetValue(*(v15 + 72), ValueAtIndex);
    theArray = 0;
    MutableCopy = CFArrayCreateMutableCopy(allocatora, 0, Value);
    if (MutableCopy)
    {
      v18 = MutableCopy;
      v19 = favd_copyImageQueuesForOutput(v80, ValueAtIndex, &theArray);
      if (v19)
      {
        v9 = v19;
      }

      else
      {
        for (j = 0; ; ++j)
        {
          Count = theArray;
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
          }

          if (j >= Count)
          {
            break;
          }

          CFArrayGetValueAtIndex(theArray, j);
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
        }

        CFDictionarySetValue(*(v14 + 72), ValueAtIndex, v18);
        if (dword_1EAF17228)
        {
          *type = 0;
          HIBYTE(v82) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v9 = 0;
      }

      CFRelease(v18);
      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    else
    {
      v9 = 4294948255;
    }

    v8 = v12;
    ++v10;
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_10:
    ;
  }

LABEL_36:
  if (v8)
  {
    CFRelease(v8);
  }

  a3 = v79;
  v7 = MEMORY[0x1E695E480];
  if (!v9)
  {
LABEL_39:
    v41 = 0;
    allocatorb = *v7;
    v42 = DerivedStorage;
    if (!a3)
    {
      goto LABEL_41;
    }

LABEL_40:
    for (k = CFArrayGetCount(a3); ; k = 0)
    {
      if (v41 >= k)
      {
        favd_cleanupOldOutputs(a1);
        v66 = CMBaseObjectGetDerivedStorage();
        CFDictionaryApplyFunction(*(v66 + 72), favd_reconnectVisualContextToTimebaseApplierFn, *(v66 + 80));
        v9 = 0;
        break;
      }

      v44 = CFArrayGetValueAtIndex(a3, v41);
      v45 = *(v42 + 72);
      if (!CFDictionaryGetValue(v45, v44))
      {
        callBacks = *byte_1F0AE6D90;
        v46 = CFArrayCreateMutable(allocatorb, 0, &callBacks);
        if (!v46)
        {
          v9 = 4294948255;
          break;
        }

        v47 = v46;
        CFDictionarySetValue(v45, v44, v46);
        CFRelease(v47);
      }

      v48 = CFGetTypeID(v44);
      if (v48 == FigVideoTargetGetTypeID())
      {
        v49 = CMBaseObjectGetDerivedStorage();
        v50 = CFDictionaryGetValue(*(v49 + 72), v44);
        theArray = 0;
        v85 = 0;
        v86 = 0;
        v51 = *(v49 + 64);
        if (!v51 || (v52 = CFArrayGetCount(v51)) == 0)
        {
          v52 = 1;
        }

        if (v50)
        {
          v53 = CFArrayGetCount(v50);
          v54 = CFArrayGetCount(v50);
          v55 = v54;
          if (v53 >= v52)
          {
            if (v54 > v52)
            {
              OUTLINED_FUNCTION_4_68();
              v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              if (os_log_type_enabled(v63, HIBYTE(v82)))
              {
                v64 = *type;
              }

              else
              {
                v64 = *type & 0xFFFFFFFE;
              }

              if (v64)
              {
                CFArrayGetCount(v50);
                v87 = 136315906;
                OUTLINED_FUNCTION_8_32();
                v90 = a1;
                v91 = 1024;
                *v92 = v65;
                *&v92[4] = 1024;
                *&v92[6] = v52;
                OUTLINED_FUNCTION_145();
                OUTLINED_FUNCTION_108();
                OUTLINED_FUNCTION_12_32();
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          else if (v54 < v52)
          {
            while (1)
            {
              v56 = favd_populateVideoDestination(a1, v44, v55, &theArray);
              if (v56)
              {
                break;
              }

              if (dword_1EAF17228)
              {
                OUTLINED_FUNCTION_4_68();
                v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                if (os_log_type_enabled(v57, HIBYTE(v82)))
                {
                  v58 = *type;
                }

                else
                {
                  v58 = *type & 0xFFFFFFFE;
                }

                if (v58)
                {
                  v87 = 136315906;
                  v88 = "favd_updateFVTDestinationsArrayToMatchLayers";
                  v89 = 2048;
                  v90 = a1;
                  v91 = 2112;
                  *v92 = v86;
                  *&v92[8] = 2112;
                  v93 = v44;
                  OUTLINED_FUNCTION_145();
                  OUTLINED_FUNCTION_2_83();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              CFArrayAppendValue(v50, &theArray);
              favd_cleanupVideoDestination(&theArray);
              if (v52 == ++v55)
              {
                goto LABEL_78;
              }
            }

LABEL_82:
            v9 = v56;
            break;
          }

LABEL_78:
          v42 = DerivedStorage;
        }

        else
        {
          v56 = FigSignalErrorAtGM();
          v42 = DerivedStorage;
          if (v56)
          {
            goto LABEL_82;
          }
        }
      }

      else
      {
        v59 = CFDictionaryGetValue(*(v42 + 72), v44);
        v60 = v59;
        theArray = 0;
        v85 = 0;
        v86 = 0;
        if (!v59 || !CFArrayGetCount(v59))
        {
          v56 = favd_populateVideoDestination(a1, v44, 0, &theArray);
          if (v56)
          {
            goto LABEL_82;
          }

          CFArrayAppendValue(v60, &theArray);
          if (dword_1EAF17228)
          {
            OUTLINED_FUNCTION_4_68();
            v61 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v62 = os_log_type_enabled(v61, HIBYTE(v82));
            if (OUTLINED_FUNCTION_124_0(v62))
            {
              v87 = 136315906;
              v88 = "favd_UpdateImageQueuesToMatchOutputsArray";
              v89 = 2048;
              v90 = a1;
              v91 = 2112;
              *v92 = v86;
              *&v92[8] = 2112;
              v93 = v44;
              OUTLINED_FUNCTION_145();
              OUTLINED_FUNCTION_2_83();
              OUTLINED_FUNCTION_12_32();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v42 = DerivedStorage;
          }

          favd_cleanupVideoDestination(&theArray);
        }
      }

      ++v41;
      a3 = v79;
      if (v79)
      {
        goto LABEL_40;
      }

LABEL_41:
      ;
    }
  }

  FigSimpleMutexUnlock();
  return v9;
}

void favd_handleTimebaseEffectiveRateChanged(uint64_t a1, uint64_t a2)
{
  theArray[22] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMTimebaseGetRate(*(DerivedStorage + 80));
  theArray[0] = 0;
  FigSimpleMutexLock();
  if (!favd_copyAllImageQueuesAndOptions(a2, theArray, 0))
  {
    if (dword_1EAF17228)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = 0;
    do
    {
      Count = theArray[0];
      if (theArray[0])
      {
        Count = CFArrayGetCount(theArray[0]);
      }

      if (v5 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], v5++);
    }

    while (!favd_setupImageQueue(ValueAtIndex, *(DerivedStorage + 80)));
  }

  FigSimpleMutexUnlock();
  if (theArray[0])
  {
    CFRelease(theArray[0]);
  }
}

uint64_t favddq_UpdateDataQueuesToMatchOutputsArray(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  value = 0;
  v41 = **&MEMORY[0x1E6960C70];
  v40 = v41;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FPSupport_getDataQueueWaterLevels(&v41, &v40);
  FigSimpleMutexLock();
  v6 = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v8 = v7;
      if (CFArrayGetCount(a3))
      {
        v9 = FigCFDictionaryCopyArrayOfKeys();
        if (favd_areOutputsEqual(v9, a3))
        {
          if (CMFormatDescriptionEqual(*(v6 + 24), *(v8 + 24)))
          {
            v10 = 0;
            if (!v9)
            {
              goto LABEL_8;
            }

LABEL_7:
            for (i = CFArrayGetCount(v9); v10 < i; i = 0)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
              v13 = CFDictionaryGetValue(*(v8 + 32), ValueAtIndex);
              CFDictionarySetValue(*(v6 + 32), ValueAtIndex, v13);
              ++v10;
              if (v9)
              {
                goto LABEL_7;
              }

LABEL_8:
              ;
            }

            goto LABEL_25;
          }

          if (!dword_1EAF17228)
          {
LABEL_25:
            if (v9)
            {
              CFRelease(v9);
            }

            goto LABEL_27;
          }

          v16 = OUTLINED_FUNCTION_11_35();
          if (os_log_type_enabled(v16, type))
          {
            v17 = v38;
          }

          else
          {
            v17 = v38 & 0xFFFFFFFE;
          }

          if (v17)
          {
            v18 = *(v6 + 24);
            v19 = *(v8 + 24);
            LODWORD(v43.value) = 136315650;
            *(&v43.value + 4) = "favddq_reuseDataQueuesFromPreviousDestination";
            LOWORD(v43.flags) = 2112;
            *(&v43.flags + 2) = v18;
            HIWORD(v43.epoch) = 2112;
            v44 = v19;
            OUTLINED_FUNCTION_16_25();
            OUTLINED_FUNCTION_2_83();
            _os_log_send_and_compose_impl();
          }
        }

        else
        {
          if (!dword_1EAF17228)
          {
            goto LABEL_25;
          }

          v14 = OUTLINED_FUNCTION_11_35();
          if (os_log_type_enabled(v14, type))
          {
            v15 = v38;
          }

          else
          {
            v15 = v38 & 0xFFFFFFFE;
          }

          if (v15)
          {
            LODWORD(v43.value) = 136315650;
            *(&v43.value + 4) = "favddq_reuseDataQueuesFromPreviousDestination";
            LOWORD(v43.flags) = 2112;
            *(&v43.flags + 2) = v9;
            HIWORD(v43.epoch) = 2112;
            v44 = a3;
            OUTLINED_FUNCTION_16_25();
            OUTLINED_FUNCTION_2_83();
            _os_log_send_and_compose_impl();
          }
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_25;
      }
    }
  }

LABEL_27:
  v20 = 0;
  if (!a3)
  {
    goto LABEL_29;
  }

LABEL_28:
  for (j = CFArrayGetCount(a3); v20 < j; j = 0)
  {
    v22 = CFArrayGetValueAtIndex(a3, v20);
    v23 = CFGetTypeID(v22);
    if (v23 == FigVideoTargetGetTypeID())
    {
      CMFormatDescriptionGetMediaSubType(*(DerivedStorage + 24));
      if (FPSupport_fvtSupportsMetadataTrack(v22))
      {
        value = CFDictionaryGetValue(*(DerivedStorage + 32), v22);
        if (value)
        {
          goto LABEL_40;
        }

        v39 = v40;
        typea = v41;
        v24 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v24)
        {
          goto LABEL_51;
        }

        v45 = v39;
        v43 = typea;
        v25 = v24(v22, 0, &v45, &v43, &value);
        if (v25)
        {
          goto LABEL_55;
        }

        v26 = *(DerivedStorage + 8);
        CMBaseObject = FigDataQueueGetCMBaseObject(value);
        v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v28)
        {
LABEL_51:
          v34 = 4294954514;
          goto LABEL_52;
        }

        v25 = v28(CMBaseObject, @"ControlTimebase", v26);
        if (v25)
        {
LABEL_55:
          v34 = v25;
          goto LABEL_52;
        }

        CFDictionarySetValue(*(DerivedStorage + 32), v22, value);
        if (value)
        {
          CFRelease(value);
LABEL_40:
          value = 0;
        }
      }
    }

    ++v20;
    if (a3)
    {
      goto LABEL_28;
    }

LABEL_29:
    ;
  }

  v29 = CMBaseObjectGetDerivedStorage();
  v30 = FigCFDictionaryCopyArrayOfKeys();
  if (v30)
  {
    v31 = v30;
    if (CFArrayGetCount(v30) >= 1)
    {
      v32 = 0;
      do
      {
        v33 = CFArrayGetValueAtIndex(v31, v32);
        if (!FigCFArrayContainsValue())
        {
          CFDictionaryRemoveValue(*(v29 + 32), v33);
        }

        ++v32;
      }

      while (v32 < CFArrayGetCount(v31));
    }

    CFRelease(v31);
  }

  v34 = 0;
LABEL_52:
  if (value)
  {
    CFRelease(value);
  }

  FigSimpleMutexUnlock();
  return v34;
}

uint64_t favd_copyImageQueuesFromDestination(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  OUTLINED_FUNCTION_15_28();
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294948255;
  }

  v8 = Mutable;
  if (!a3)
  {
    v9 = 0;
LABEL_6:
    v11 = 0;
    if (!v4)
    {
      goto LABEL_8;
    }

LABEL_7:
    for (i = CFArrayGetCount(v4); v11 < i; i = 0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v11);
      CFArrayAppendValue(v8, *ValueAtIndex);
      if (v9)
      {
        v14 = ValueAtIndex[1];
        if (v14)
        {
          CFArrayAppendValue(v9, v14);
        }
      }

      ++v11;
      if (v4)
      {
        goto LABEL_7;
      }

LABEL_8:
      ;
    }

    if (v3)
    {
      *v3 = v8;
      v8 = 0;
    }

    if (a3)
    {
      *a3 = v9;
      v9 = 0;
    }

    v10 = 0;
    v15 = 0;
    if (!v8)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v9 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  if (v9)
  {
    goto LABEL_6;
  }

  v10 = 4294948255;
LABEL_20:
  CFRelease(v8);
  v15 = v10;
LABEL_21:
  if (v9)
  {
    CFRelease(v9);
  }

  return v15;
}

void favd_handleFirstFrameEnqueued(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    CFDictionarySetValue(Mutable, @"OriginatingFigImageQueue", a4);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();

    CFRelease(v6);
  }
}

void favd_handleDisplaySizeChanged(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = MEMORY[0x1E695F060];
  v9 = *MEMORY[0x1E695F060];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    CFDictionarySetValue(Mutable, @"OriginatingFigImageQueue", a4);
    FigCFDictionaryGetCGSizeIfPresent();
    if (*&v9 != *v5 || *(&v9 + 1) != v5[1])
    {
      FigCFDictionarySetCGSize();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v7);
  }
}

uint64_t favd_copyAllImageQueuesAndOptions(uint64_t a1, __CFArray **a2, __CFArray **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = FigCFDictionaryCopyArrayOfValues();
  if (!v6)
  {
    return 4294948255;
  }

  v7 = v6;
  Count = CFArrayGetCount(v6);
  v9 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v11 = Mutable;
    v12 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
    if (v12)
    {
      if (Count >= 1)
      {
        v13 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v13);
          v21 = 0;
          theArray = 0;
          v15 = favd_copyImageQueuesFromDestination(ValueAtIndex, &theArray, &v21);
          if (v15)
          {
            goto LABEL_36;
          }

          v16 = theArray;
          v23.length = CFArrayGetCount(theArray);
          v23.location = 0;
          CFArrayAppendArray(v11, v16, v23);
          v17 = v21;
          if (v21)
          {
            v24.length = CFArrayGetCount(v21);
            v24.location = 0;
            CFArrayAppendArray(v12, v17, v24);
          }

          if (theArray)
          {
            CFRelease(theArray);
          }

          if (v21)
          {
            CFRelease(v21);
          }
        }

        while (Count != ++v13);
      }

      if (*(DerivedStorage + 64))
      {
        v18 = CFArrayGetCount(v11);
        if (v18 != CFArrayGetCount(v12))
        {
          goto LABEL_35;
        }
      }

      else if (CFArrayGetCount(v12))
      {
LABEL_35:
        v15 = FigSignalErrorAtGM();
LABEL_36:
        v19 = v15;
        goto LABEL_27;
      }

      if (a2)
      {
        *a2 = v11;
        v11 = 0;
      }

      if (a3)
      {
        v19 = 0;
        if (!CFArrayGetCount(v12))
        {
          *a3 = 0;
          if (!v11)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

        *a3 = v12;
        v12 = 0;
        if (!v11)
        {
LABEL_28:
          if (v12)
          {
            CFRelease(v12);
          }

          goto LABEL_30;
        }
      }

      else
      {
        v19 = 0;
        if (!v11)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v19 = 4294948255;
    }

LABEL_27:
    CFRelease(v11);
    goto LABEL_28;
  }

  v19 = 4294948255;
LABEL_30:
  CFRelease(v7);
  return v19;
}

uint64_t favd_UpdateDataChannelConfigForVideoTarget(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = &dword_1EAF17000;
  if (dword_1EAF17228)
  {
    v5 = OUTLINED_FUNCTION_6_55();
    if (os_log_type_enabled(v5, type))
    {
      v6 = v32;
    }

    else
    {
      v6 = v32 & 0xFFFFFFFE;
    }

    if (v6)
    {
      OUTLINED_FUNCTION_8_32();
      OUTLINED_FUNCTION_145();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2 || !a4)
  {
    OUTLINED_FUNCTION_7_43();
    v9 = FigSignalErrorAtGM();
LABEL_46:
    v12 = 0;
    goto LABEL_39;
  }

  v7 = *MEMORY[0x1E695E480];
  if (*(DerivedStorage + 88))
  {
    MutableCopy = FigTagCollectionCreateMutableCopy();
  }

  else
  {
    MutableCopy = FigTagCollectionCreateMutable();
  }

  v9 = MutableCopy;
  if (MutableCopy)
  {
    goto LABEL_46;
  }

  *&values[0].category = 0;
  v10 = CMBaseObjectGetDerivedStorage();
  MutableFromFormatDescription = MTSidebandVideoPropertiesCreateMutableFromFormatDescription(v7, *(v10 + 48), values);
  if (MutableFromFormatDescription)
  {
    v9 = MutableFromFormatDescription;
    v12 = 0;
  }

  else
  {
    v12 = CFArrayCreate(v7, values, 1, MEMORY[0x1E695E9C0]);
    if (v12)
    {
      v9 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_7_43();
      v9 = FigSignalErrorAtGM();
    }
  }

  if (*&values[0].category)
  {
    CFRelease(*&values[0].category);
  }

  if (!v9)
  {
    v13 = *(CMBaseObjectGetDerivedStorage() + 64);
    if (v13 && CFArrayGetCount(v13))
    {
      *&values[0].category = 0;
      values[0].value = 0;
      CMTagCollectionGetCountOfCategory(0, kCMTagCategory_StereoView);
      FigTagCollectionGetTagsWithCategory();
      CMTagCollectionRemoveTag(0, values[0]);
    }

    Value = CFDictionaryGetValue(*(DerivedStorage + 72), a2);
    if (Value)
    {
      v15 = Value;
      if (CFArrayGetCount(Value) < 1)
      {
LABEL_38:
        v9 = 0;
      }

      else
      {
        v16 = 0;
        v27 = v12;
        while (1)
        {
          v17 = v15;
          ValueAtIndex = CFArrayGetValueAtIndex(v15, v16);
          v19 = ValueAtIndex[2];
          v20 = FigTagCollectionCreateMutableCopy();
          if (v20)
          {
            v9 = v20;
            goto LABEL_39;
          }

          if (v19)
          {
            values[0] = 0uLL;
            FigTagCollectionGetTagsWithCategory();
            v9 = 4294948254;
            goto LABEL_39;
          }

          *&v35.category = FigTagMakeWithSInt64Value();
          OUTLINED_FUNCTION_13_24(v35);
          VideoLayoutLoggingStringFromCollection = FigAlternateCreateVideoLayoutLoggingStringFromCollection(0);
          if (v4[138])
          {
            v22 = OUTLINED_FUNCTION_6_55();
            os_log_type_enabled(v22, type);
            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v12 = v27;
          }

          if (VideoLayoutLoggingStringFromCollection)
          {
            CFRelease(VideoLayoutLoggingStringFromCollection);
          }

          v23 = *ValueAtIndex;
          if (*ValueAtIndex)
          {
            if (v4[138])
            {
              v24 = OUTLINED_FUNCTION_6_55();
              os_log_type_enabled(v24, type);
              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v23 = *ValueAtIndex;
              v4 = &dword_1EAF17000;
            }

            v25 = FigDataChannelConfigurationAddFigImageQueueWithSidebandVideoProperties(a4, v23, 0, *(DerivedStorage + 96), v12);
            if (v25)
            {
              break;
            }
          }

          ++v16;
          v15 = v17;
          if (v16 >= CFArrayGetCount(v17))
          {
            goto LABEL_38;
          }
        }

        v9 = v25;
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_43();
      v9 = FigSignalErrorAtGM();
    }
  }

LABEL_39:
  FigSimpleMutexUnlock();
  if (v12)
  {
    CFRelease(v12);
  }

  return v9;
}

uint64_t favd_createDataChannelConfigID(uint64_t a1, CFStringRef *a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_19_25();
  if (a2)
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"C/%s.%d", v2 + 8, *(v2 + 40));
    if (v4)
    {
      v5 = 0;
      ++*(v2 + 40);
      *a2 = v4;
    }

    else
    {
      v5 = 4294948255;
    }
  }

  else
  {
    v5 = 4294948256;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t favd_CopyFigImageQueueForCAImageQueue(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_15_28();
  CMBaseObjectGetDerivedStorage();
  theArray = 0;
  FigSimpleMutexLock();
  if (!v3 || !a3)
  {
    OUTLINED_FUNCTION_239();
    goto LABEL_12;
  }

  v6 = favd_copyImageQueuesForOutput(v4, v3, &theArray);
  if (v6)
  {
LABEL_13:
    v8 = v6;
    goto LABEL_14;
  }

  if (!theArray || !CFArrayGetCount(theArray) || !theArray || CFArrayGetCount(theArray) != 1)
  {
    OUTLINED_FUNCTION_239();
LABEL_12:
    v6 = FigSignalErrorAtGM();
    goto LABEL_13;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (ValueAtIndex)
  {
    ValueAtIndex = CFRetain(ValueAtIndex);
  }

  v8 = 0;
  *a3 = ValueAtIndex;
LABEL_14:
  FigSimpleMutexUnlock();
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v8;
}

uint64_t favd_CopyFigImageQueueForVisualContext(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_15_28();
  theArray = 0;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_19_25();
  if (!v3 || !a3)
  {
    OUTLINED_FUNCTION_239();
    goto LABEL_12;
  }

  v6 = favd_copyImageQueuesForOutput(v4, v3, &theArray);
  if (v6)
  {
LABEL_13:
    v8 = v6;
    goto LABEL_14;
  }

  if (!theArray || !CFArrayGetCount(theArray) || !theArray || CFArrayGetCount(theArray) != 1)
  {
    OUTLINED_FUNCTION_239();
LABEL_12:
    v6 = FigSignalErrorAtGM();
    goto LABEL_13;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (ValueAtIndex)
  {
    ValueAtIndex = CFRetain(ValueAtIndex);
  }

  v8 = 0;
  *a3 = ValueAtIndex;
LABEL_14:
  FigSimpleMutexUnlock();
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v8;
}

uint64_t favd_flushFramesFollowingCurrentFrame(uint64_t a1)
{
  theArray[21] = *MEMORY[0x1E69E9840];
  theArray[0] = 0;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_19_25();
  v2 = favd_copyAllImageQueuesAndOptions(a1, theArray, 0);
  if (v2)
  {
    v9 = v2;
  }

  else
  {
    v3 = 0;
    while (1)
    {
      Count = theArray[0];
      if (theArray[0])
      {
        Count = CFArrayGetCount(theArray[0]);
      }

      if (v3 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], v3);
      if (dword_1EAF17228)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v7 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (!v7)
      {
        v9 = 4294954514;
        goto LABEL_13;
      }

      v8 = v7(ValueAtIndex);
      ++v3;
      if (v8)
      {
        v9 = v8;
        goto LABEL_13;
      }
    }

    v9 = 0;
  }

LABEL_13:
  FigSimpleMutexUnlock();
  if (theArray[0])
  {
    CFRelease(theArray[0]);
  }

  return v9;
}

uint64_t favd_setCAImageQueueFlagsForDestination(uint64_t a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 108) | a3;
  *(DerivedStorage + 104) |= a2;
  *(DerivedStorage + 108) = v7;
  v8 = favd_copyAllImageQueuesAndOptions(a1, &theArray, 0);
  if (!v8)
  {
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
      favd_setCAImageQueueFlags(ValueAtIndex);
    }
  }

  FigSimpleMutexUnlock();
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v8;
}

void favd_isAnyOutputReadyToRenderApplierFn(int a1, CFArrayRef theArray, _BYTE *a3)
{
  if (!*a3)
  {
    v5 = 0;
    v6 = *MEMORY[0x1E695E4C0];
    v7 = *MEMORY[0x1E695E480];
    v8 = *MEMORY[0x1E695E4D0];
    if (!theArray)
    {
      goto LABEL_4;
    }

LABEL_3:
    for (i = CFArrayGetCount(theArray); v5 < i; i = 0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
      cf = v6;
      FigBaseObject = FigImageQueueGetFigBaseObject(*ValueAtIndex);
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(FigBaseObject, @"FigImageQueueProperty_FirstImageEnqueued", v7, &cf);
      }

      if (cf != v8)
      {
        return;
      }

      if (v8)
      {
        CFRelease(cf);
      }

      ++v5;
      if (theArray)
      {
        goto LABEL_3;
      }

LABEL_4:
      ;
    }

    *a3 = 1;
  }
}

uint64_t favd_areOutputsEqual(CFArrayRef theArray, const __CFArray *a2)
{
  if (!theArray)
  {
    Count = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  Count = CFArrayGetCount(theArray);
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = CFArrayGetCount(a2);
LABEL_6:
  if (theArray == a2)
  {
    return 1;
  }

  if (Count != v5)
  {
    return 0;
  }

  if (Count < 1)
  {
    return 1;
  }

  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
    v9.location = 0;
    v9.length = Count;
    result = CFArrayContainsValue(a2, v9, ValueAtIndex);
    if (!result)
    {
      break;
    }

    if (Count == ++v6)
    {
      return 1;
    }
  }

  return result;
}

uint64_t favd_setupImageQueue(uint64_t a1, CMTimebaseRef timebase)
{
  Rate = CMTimebaseGetRate(timebase);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  result = v4(a1, Rate != 0.0);
  if (result)
  {
    return result;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  v7.n128_f32[0] = Rate;

  return v6(a1, v7);
}

uint64_t favddq_UpdateDataChannelConfigForVideoTarget(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  OUTLINED_FUNCTION_15_28();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!v4 || !a4)
  {
    Mutable = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  Mutable = FigTagCollectionCreateMutable();
  if (Mutable)
  {
LABEL_19:
    v14 = Mutable;
    goto LABEL_16;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  v9 = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (!v9)
  {
    v14 = FigSignalErrorAtGM();
    goto LABEL_13;
  }

  v10 = v9;
  CFArrayAppendValue(v9, *(DerivedStorage + 24));
  Value = CFDictionaryGetValue(*(DerivedStorage + 32), v4);
  if (Value)
  {
    v12 = Value;
    *&v18.category = FigTagMakeWithSInt64Value();
    v13 = OUTLINED_FUNCTION_13_24(v18);
    if (v13 || (v13 = CMTagCollectionAddTag(0, *MEMORY[0x1E6963148]), v13))
    {
      v14 = v13;
      goto LABEL_12;
    }

    v14 = FigDataChannelConfigurationAddFigDataQueue(a4, v12, 0, 0, v10);
    if (v14 || !dword_1EAF17228)
    {
      goto LABEL_12;
    }

    v15 = OUTLINED_FUNCTION_18_23();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = 0;
LABEL_12:
  CFRelease(v10);
LABEL_13:
  if (!v14 && dword_1EAF17228)
  {
    v16 = OUTLINED_FUNCTION_18_23();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v14 = 0;
  }

LABEL_16:
  FigSimpleMutexUnlock();
  return v14;
}

uint64_t favddq_createDataChannelConfigID(uint64_t a1, CFStringRef *a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_19_25();
  if (a2)
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s.%d", v2 + 40, *(v2 + 16));
    if (v4)
    {
      v5 = 0;
      ++*(v2 + 16);
      *a2 = v4;
    }

    else
    {
      v5 = 4294948255;
    }
  }

  else
  {
    v5 = 4294948256;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t FigAggregateVideoDestinationCreate_cold_1(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigAggregateVideoDestinationForDataQueueCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAggregateVideoDestinationForDataQueueCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAggregateVideoDestinationForDataQueueCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAggregateVideoDestinationForDataQueueCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t favd_copyImageQueuesForOutput_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t favd_CopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t favd_CopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t favd_SetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t favd_SetProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t favd_ImageQueueArraySetPropertyForOutputs_cold_1(uint64_t a1, _DWORD *a2)
{
  *a2 = FigSignalErrorAtGM();

  return FigSimpleMutexUnlock();
}

uint64_t favd_CopyFigImageQueueArrayAndOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t favd_populateVideoDestination_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t favd_populateVideoDestination_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t favd_populateVideoDestination_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t favd_populateVideoDestination_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t favd_populateVideoDestination_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t favddq_CopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t favddq_CopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t favddq_CopyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t serverXPCFigCaptionGroupConverter_replyingMessageHandler()
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

uint64_t serverXPCFigCaptionGroupConverter_Callback(uint64_t a1, uint64_t a2, xpc_connection_t *a3)
{
  v4 = FigXPCCreateBasicMessage();
  if (!v4)
  {
    v4 = FigXPCServerLookupAndRetainAssociatedObject();
    if (!v4)
    {
      fig_log_get_emitter();
      v4 = FigSignalErrorAtGM();
    }
  }

  v5 = v4;
  xpc_connection_send_message(*a3, 0);
  FigXPCRelease();
  return v5;
}

uint64_t FigSteeringManifestCreateInProcess(CFAllocatorRef blockAllocator, OpaqueCMBlockBuffer *a2, const __CFURL *a3, int a4, char a5, __CFArray *a6, const __CFDictionary **a7)
{
  v107 = a6;
  cf = 0;
  blockBufferOut = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  v108 = 0;
  BYTE1(v108) = a4;
  LOBYTE(v108) = a5;
  DataPointer = CMBlockBufferCreateContiguous(blockAllocator, a2, blockAllocator, 0, 0, 0, 0, &blockBufferOut);
  if (DataPointer)
  {
    goto LABEL_108;
  }

  DataPointer = CMBlockBufferGetDataPointer(blockBufferOut, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    goto LABEL_108;
  }

  if (!dataPointerOut || !lengthAtOffsetOut)
  {
    OUTLINED_FUNCTION_0_91();
    DataPointer = FigSignalErrorAtGM();
LABEL_108:
    v40 = DataPointer;
    v12 = 0;
LABEL_110:
    MutableCopy = 0;
LABEL_111:
    v21 = 0;
    v18 = 0;
    goto LABEL_92;
  }

  v12 = CFDataCreate(blockAllocator, dataPointerOut, lengthAtOffsetOut);
  if (!v12)
  {
    OUTLINED_FUNCTION_0_91();
    v40 = FigSignalErrorAtGM();
    goto LABEL_110;
  }

  v13 = FigJSONObjectCreateWithData();
  if (v13)
  {
    v91 = @"failed to parse manifest JSON format";
LABEL_114:
    v92 = &v107;
    v93 = 4294951543;
LABEL_116:
    _SteeringLogError(v13, v93, v92, v91);
    MutableCopy = 0;
    v21 = 0;
    v18 = 0;
    v40 = 4294951544;
    goto LABEL_92;
  }

  v13 = cf;
  if (!cf)
  {
    v91 = @"manifest JSON parser returned NULL";
    goto LABEL_114;
  }

  v14 = CFGetTypeID(cf);
  if (v14 != CFDictionaryGetTypeID())
  {
    OUTLINED_FUNCTION_1_87();
    goto LABEL_116;
  }

  Count = CFDictionaryGetCount(cf);
  MutableCopy = CFDictionaryCreateMutableCopy(blockAllocator, Count, cf);
  if (!MutableCopy)
  {
    OUTLINED_FUNCTION_0_91();
    v40 = FigSignalErrorAtGM();
    goto LABEL_111;
  }

  Value = CFDictionaryGetValue(cf, @"RELOAD-URI");
  v18 = Value;
  if (Value)
  {
    v19 = CFGetTypeID(Value);
    if (v19 == CFStringGetTypeID())
    {
      v18 = CFURLCreateWithString(blockAllocator, v18, a3);
      if (!v18)
      {
        OUTLINED_FUNCTION_0_91();
        v40 = FigSignalErrorAtGM();
        goto LABEL_91;
      }

      CFDictionarySetValue(MutableCopy, @"RELOAD-URI", v18);
    }

    else
    {
      v18 = 0;
    }
  }

  Copy = CFDictionaryCreateCopy(blockAllocator, MutableCopy);
  v21 = Copy;
  if (!Copy)
  {
    OUTLINED_FUNCTION_0_91();
    v40 = FigSignalErrorAtGM();
    goto LABEL_92;
  }

  v103 = a4;
  valuePtr = 0;
  v22 = CFDictionaryGetValue(Copy, @"VERSION");
  v105 = a7;
  v106 = MutableCopy;
  v104 = v18;
  if (!v22)
  {
    v94 = @"Steering Manifest: missing VERSION";
LABEL_124:
    v95 = &v107;
    v96 = 4294951541;
LABEL_137:
    _SteeringLogError(v22, v96, v95, v94);
    v40 = 4294951544;
    goto LABEL_86;
  }

  v23 = v22;
  v24 = CFGetTypeID(v22);
  if (v24 != CFNumberGetTypeID() || CFNumberIsFloatType(v23) || (CFNumberGetValue(v23, kCFNumberCFIndexType, &valuePtr), valuePtr != 1))
  {
LABEL_136:
    OUTLINED_FUNCTION_1_87();
    goto LABEL_137;
  }

  v22 = CFDictionaryGetValue(v21, @"TTL");
  if (!v22)
  {
    v94 = @"Steering Manifest: missing TTL";
    goto LABEL_124;
  }

  v25 = CFGetTypeID(v22);
  if (v25 != CFNumberGetTypeID())
  {
    goto LABEL_136;
  }

  v26 = CFDictionaryGetValue(v21, @"RELOAD-URI");
  if (v26)
  {
    v27 = CFGetTypeID(v26);
    if (v27 != CFURLGetTypeID())
    {
      goto LABEL_136;
    }
  }

  v28 = CFDictionaryGetValue(v21, @"UNIVERSAL");
  if (v28)
  {
    v29 = CFGetTypeID(v28);
    if (v29 != CFBooleanGetTypeID())
    {
      goto LABEL_136;
    }
  }

  v30 = CFDictionaryGetValue(v21, @"PATHWAY-PRIORITY");
  v31 = MEMORY[0x1E695E480];
  if (!v30)
  {
    _SteeringLogError(0, 4294951541, &v107, @"Steering Manifest: missing PATHWAY-PRIORITY");
LABEL_129:
    v40 = 4294951544;
    goto LABEL_44;
  }

  v32 = v30;
  v33 = CFGetTypeID(v30);
  if (v33 != CFArrayGetTypeID())
  {
    OUTLINED_FUNCTION_1_87();
    _SteeringLogError(v97, v98, v99, v100);
    goto LABEL_129;
  }

  Mutable = CFSetCreateMutable(*v31, 0, MEMORY[0x1E695E9F8]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_0_91();
    v40 = FigSignalErrorAtGM();
    if (v40)
    {
      goto LABEL_44;
    }

LABEL_45:
    v51 = CFDictionaryGetValue(v21, @"PATHWAY-CLONES");
    if (!v51)
    {
      v40 = 0;
      v85 = v105;
      MutableCopy = v106;
      v18 = v104;
      goto LABEL_90;
    }

    v52 = v51;
    v53 = *v31;
    v54 = CFSetCreateMutable(*v31, 0, MEMORY[0x1E695E9F8]);
    if (!v54)
    {
      OUTLINED_FUNCTION_0_91();
      v40 = FigSignalErrorAtGM();
      goto LABEL_86;
    }

    v55 = v54;
    v102 = v12;
    v56 = CFSetCreateMutable(v53, 0, MEMORY[0x1E695E9F8]);
    if (!v56)
    {
      OUTLINED_FUNCTION_0_91();
      v40 = FigSignalErrorAtGM();
      CFRelease(v55);
      goto LABEL_86;
    }

    v57 = v56;
    v101 = v21;
    v58 = CFGetTypeID(v52);
    if (v58 != CFArrayGetTypeID())
    {
LABEL_106:
      OUTLINED_FUNCTION_1_87();
      _SteeringLogError(v87, v88, v89, v90);
      v40 = 4294951544;
LABEL_85:
      CFRelease(v55);
      CFRelease(v57);
      v21 = v101;
      v12 = v102;
      goto LABEL_86;
    }

    v59 = CFArrayGetCount(v52);
    if (v59 < 1)
    {
      v40 = 0;
      goto LABEL_85;
    }

    v60 = v59;
    v61 = 0;
    v40 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v52, v61);
      if (!ValueAtIndex)
      {
        OUTLINED_FUNCTION_0_91();
        v40 = FigSignalErrorAtGM();
        goto LABEL_85;
      }

      v63 = ValueAtIndex;
      v64 = CFGetTypeID(ValueAtIndex);
      if (v64 != CFDictionaryGetTypeID())
      {
        goto LABEL_106;
      }

      v65 = CFDictionaryGetValue(v63, @"BASE-ID");
      if (v65)
      {
        v66 = v65;
        v67 = CFGetTypeID(v65);
        if (v67 != CFStringGetTypeID())
        {
          goto LABEL_106;
        }

        CFSetAddValue(v55, v66);
      }

      else
      {
        OUTLINED_FUNCTION_0_91();
        v40 = FigSignalErrorAtGM();
        if (!BYTE1(v108))
        {
          goto LABEL_85;
        }
      }

      v68 = CFDictionaryGetValue(v63, @"ID");
      if (v68)
      {
        break;
      }

      OUTLINED_FUNCTION_0_91();
      v40 = FigSignalErrorAtGM();
      if (!BYTE1(v108))
      {
        goto LABEL_85;
      }

LABEL_63:
      v71 = CFDictionaryGetValue(v63, @"URI-REPLACEMENT");
      if (!v71)
      {
        OUTLINED_FUNCTION_0_91();
        v40 = FigSignalErrorAtGM();
LABEL_77:
        if (!BYTE1(v108))
        {
          goto LABEL_85;
        }

        goto LABEL_78;
      }

      v72 = v71;
      v73 = CFGetTypeID(v71);
      if (v73 != CFDictionaryGetTypeID())
      {
        goto LABEL_106;
      }

      v74 = CFDictionaryGetValue(v72, @"HOST");
      if (v74)
      {
        v75 = CFGetTypeID(v74);
        if (v75 != CFStringGetTypeID())
        {
          goto LABEL_106;
        }
      }

      v76 = CFDictionaryGetValue(v72, @"PARAMS");
      if (v76)
      {
        v40 = validateStringToStringDictionary(v76, "Pathway Clone PARAMS", &v107);
        if (v40)
        {
          if (!BYTE1(v108))
          {
            goto LABEL_85;
          }
        }
      }

      v77 = CFDictionaryGetValue(v72, @"PER-VARIANT-URIS");
      if (v77)
      {
        v40 = validateStringToStringDictionary(v77, "Pathway Clone PER-VARIANT-URIS", &v107);
        if (v40)
        {
          if (!BYTE1(v108))
          {
            goto LABEL_85;
          }
        }
      }

      v78 = CFDictionaryGetValue(v72, @"PER-RENDITION-URIS");
      if (v78)
      {
        v40 = validateStringToStringDictionary(v78, "Pathway Clone PER-RENDITION-URIS", &v107);
        if (v40)
        {
          goto LABEL_77;
        }
      }

LABEL_78:
      if (v60 == ++v61)
      {
        goto LABEL_85;
      }
    }

    v69 = v68;
    v70 = CFGetTypeID(v68);
    if (v70 != CFStringGetTypeID())
    {
      goto LABEL_106;
    }

    if (CFSetContainsValue(v57, v69))
    {
      OUTLINED_FUNCTION_1_87();
      _SteeringLogError(v79, v80, v81, @"Steering Manifest: duplicated IDs in Pathway Clone", v101);
    }

    else
    {
      if (!CFSetContainsValue(v55, v69))
      {
LABEL_61:
        CFSetAddValue(v57, v69);
        goto LABEL_63;
      }

      OUTLINED_FUNCTION_1_87();
      _SteeringLogError(v82, v83, v84, @"Steering Manifest: Pathway Clone ID defined after use", v101);
    }

    v40 = 4294951544;
    if (!BYTE1(v108))
    {
      goto LABEL_85;
    }

    goto LABEL_61;
  }

  v35 = Mutable;
  v36 = v21;
  v37 = CFArrayGetCount(v32);
  if (v37 < 1)
  {
    _SteeringLogError(v37, 4294951541, &v107, @"Steering Manifest: PATHWAY-PRIORITY MUST contain at least one Pathway ID");
    goto LABEL_42;
  }

  v38 = v37;
  v39 = 0;
  v40 = 0;
  while (1)
  {
    v41 = CFArrayGetValueAtIndex(v32, v39);
    if (!v41)
    {
      OUTLINED_FUNCTION_0_91();
      v40 = FigSignalErrorAtGM();
      goto LABEL_43;
    }

    v42 = v41;
    v43 = CFGetTypeID(v41);
    if (v43 != CFStringGetTypeID() || CFStringGetLength(v42) <= 0)
    {
      break;
    }

    if (CFSetContainsValue(v35, v42))
    {
      OUTLINED_FUNCTION_1_87();
      _SteeringLogError(v44, v45, v46, @"Steering Manifest: duplicated Pathway IDs in PATHWAY-PRIORITY");
      v40 = 4294951544;
LABEL_36:
      if (!BYTE1(v108))
      {
        goto LABEL_43;
      }

      goto LABEL_37;
    }

    CFSetAddValue(v35, v42);
    if (v40)
    {
      goto LABEL_36;
    }

LABEL_37:
    if (v38 == ++v39)
    {
      goto LABEL_43;
    }
  }

  OUTLINED_FUNCTION_1_87();
  _SteeringLogError(v47, v48, v49, v50);
LABEL_42:
  v40 = 4294951544;
LABEL_43:
  CFRelease(v35);
  v21 = v36;
  v31 = MEMORY[0x1E695E480];
  if (!v40)
  {
    goto LABEL_45;
  }

LABEL_44:
  if (BYTE1(v108))
  {
    goto LABEL_45;
  }

LABEL_86:
  v18 = v104;
  v85 = v105;
  if (v103)
  {
    MutableCopy = v106;
    goto LABEL_90;
  }

  MutableCopy = v106;
  if (!v40)
  {
LABEL_90:
    *v85 = v21;
LABEL_91:
    v21 = 0;
  }

LABEL_92:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v40;
}

void _SteeringLogError(uint64_t a1, uint64_t a2, CFMutableArrayRef *a3, CFStringRef format, ...)
{
  va_start(va, format);
  v5 = *MEMORY[0x1E695E480];
  if (format)
  {
    v6 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], 0, format, va);
  }

  else
  {
    v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], "Format Error", 0x8000100u);
  }

  v7 = v6;
  FigSignalErrorAtGM();
  if (*a3)
  {
    Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v9 = Mutable;
      Current = CFAbsoluteTimeGetCurrent();
      v11 = CFDateCreate(v5, Current);
      if (v11)
      {
        v12 = v11;
        CFDictionarySetValue(v9, @"date", v11);
        CFRelease(v12);
      }

      CFDictionarySetValue(v9, @"domain", @"CoreMediaErrorDomain");
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if (v7)
      {
        CFDictionarySetValue(v9, @"comment", v7);
      }

      if (*a3)
      {
        CFArrayAppendValue(*a3, v9);
      }

      CFRelease(v9);
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void validateStringToStringDictionary_callback(const void *a1, const void *a2, uint64_t a3)
{
  if (!**a3)
  {
    v5 = CFGetTypeID(a1);
    TypeID = CFStringGetTypeID();
    if (v5 == TypeID)
    {
      v7 = CFGetTypeID(a2);
      v8 = CFStringGetTypeID();
      if (v7 == v8)
      {
        return;
      }

      _SteeringLogError(v8, 4294951542, *(a3 + 16), @"%s: invalid dictionary value data type", *(a3 + 8));
    }

    else
    {
      _SteeringLogError(TypeID, 4294951542, *(a3 + 16), @"%s: invalid dictionary key data type", *(a3 + 8));
    }

    **a3 = -15752;
  }
}

uint64_t fcgcfs_webvtt_addSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v173 = *MEMORY[0x1E69E9840];
  v161 = 0;
  v162 = 0;
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *&v160.start.value = *MEMORY[0x1E6960C98];
  *&v160.start.epoch = v4;
  *&v160.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_13;
  }

  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    value_low = FigSignalErrorAtGM();
    goto LABEL_246;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  v7 = FormatDescription;
  if (!FormatDescription)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_7_44();
    goto LABEL_247;
  }

  if (CMFormatDescriptionGetMediaType(FormatDescription) != 1952807028 && CMFormatDescriptionGetMediaType(v7) != 1935832172 || ((MediaSubType = CMFormatDescriptionGetMediaSubType(v7), MediaSubType != 1937142900) ? (v9 = MediaSubType == 2004251764) : (v9 = 1), !v9 ? (v10 = MediaSubType == 2021028980) : (v10 = 1), !v10 || !*DerivedStorage || !*(DerivedStorage + 8)))
  {
LABEL_13:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
LABEL_245:
    OUTLINED_FUNCTION_7_44();
LABEL_246:
    v7 = 0;
LABEL_247:
    Mutable = 0;
    goto LABEL_248;
  }

  if (!CMSampleBufferGetNumSamples(a2))
  {
    goto LABEL_261;
  }

  memset(&v159, 0, sizeof(v159));
  CMSampleBufferGetOutputPresentationTimeStamp(&v159, a2);
  memset(&v158, 0, sizeof(v158));
  CMSampleBufferGetOutputDuration(&v158, a2);
  if (WebVTTCreateAttributedStringArrayFromSampleBuffer(*(DerivedStorage + 16), a2, *(DerivedStorage + 24), &v161))
  {
    goto LABEL_245;
  }

  a2 = MEMORY[0x1E695E480];
  if (!v161)
  {
    cf.start = v158;
    effectiveRange = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&cf.start, &effectiveRange))
    {
      Empty = FigCaptionGroupCreateEmpty();
      a2 = 0;
      if (Empty)
      {
        value_low = Empty;
        v7 = 0;
        Mutable = 0;
        goto LABEL_248;
      }

      v7 = 0;
      Mutable = 0;
LABEL_243:
      cf.start = v159;
      effectiveRange = v158;
      CMTimeRangeMake(&v160, &cf.start, &effectiveRange);
LABEL_244:
      value_low = 0;
      goto LABEL_248;
    }

LABEL_261:
    a2 = 0;
    v7 = 0;
    Mutable = 0;
    goto LABEL_244;
  }

  v134 = DerivedStorage;
  v11 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_7_44();
    v7 = 0;
    goto LABEL_248;
  }

  v7 = CFDataCreateMutable(v11, 0);
  if (!v7 || (v151 = CFDataCreateMutable(v11, 0)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_7_44();
    goto LABEL_248;
  }

  theData = v7;
  Count = CFArrayGetCount(v161);
  if (!Count)
  {
    goto LABEL_238;
  }

  v13 = 0;
  key = *MEMORY[0x1E69607B0];
  v145 = *MEMORY[0x1E69607A0];
  v140 = *MEMORY[0x1E6960790];
  v126 = *MEMORY[0x1E6960788];
  v118 = *MEMORY[0x1E6960798];
  v139 = *MEMORY[0x1E6961278];
  v144 = *MEMORY[0x1E69607C0];
  v138 = *MEMORY[0x1E6961208];
  theString2 = *MEMORY[0x1E6960B78];
  v154 = *MEMORY[0x1E6960B70];
  v135 = *MEMORY[0x1E6961258];
  v136 = *MEMORY[0x1E6961368];
  v137 = *MEMORY[0x1E6961338];
  v142 = *MEMORY[0x1E6960998];
  v132 = *MEMORY[0x1E69609A0];
  v133 = *MEMORY[0x1E69613B8];
  v130 = *MEMORY[0x1E6960838];
  v131 = *MEMORY[0x1E6960978];
  v125 = *MEMORY[0x1E6960A08];
  v122 = *MEMORY[0x1E6960A00];
  v128 = *MEMORY[0x1E69608D8];
  v129 = *MEMORY[0x1E69608E0];
  v127 = *MEMORY[0x1E6960830];
  v124 = *MEMORY[0x1E69609F0];
  v121 = *MEMORY[0x1E69609E8];
  v117 = *MEMORY[0x1E69609E0];
  v116 = *MEMORY[0x1E6961328];
  v120 = *MEMORY[0x1E6961390];
  v119 = *MEMORY[0x1E69612D8];
  v115 = *MEMORY[0x1E69613B0];
  v123 = *MEMORY[0x1E6961240];
  v14 = *MEMORY[0x1E6960930];
  v156 = *MEMORY[0x1E6960938];
  v153 = *MEMORY[0x1E6961248];
  v152 = *MEMORY[0x1E6960948];
  v147 = *MEMORY[0x1E6961250];
  v141 = *MEMORY[0x1E69614E0];
  theArray = Mutable;
  do
  {
    v155 = v13;
    ValueAtIndex = CFArrayGetValueAtIndex(v161, v13);
    v163.length = 0;
    v164 = 0;
    v163.location = 0;
    Length = CFAttributedStringGetLength(ValueAtIndex);
    if (!ValueAtIndex)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_92();
      v18 = FigSignalErrorAtGM();
LABEL_222:
      value_low = v18;
LABEL_40:
      if (v164)
      {
        CFRelease(v164);
      }

      Mutable = theArray;
      if (!value_low)
      {
        v27 = 0;
        goto LABEL_213;
      }

      DerivedStorage = v134;
      v7 = theData;
      goto LABEL_260;
    }

    v17 = Length;
    if (Length < 1)
    {
      value_low = 0;
      goto LABEL_40;
    }

    v18 = FigCaptionDataCreateMutable();
    if (v18)
    {
      goto LABEL_222;
    }

    v19 = v164;
    String = CFAttributedStringGetString(ValueAtIndex);
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v21)
    {
      value_low = 4294954514;
      goto LABEL_40;
    }

    v18 = v21(v19, String);
    if (v18)
    {
      goto LABEL_222;
    }

    CMBaseObject = v164;
    effectiveRange.value = 0;
    *&cf.start.timescale = 0;
    cf.start.value = 0;
    if (!v164)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_92();
      v24 = FigSignalErrorAtGM();
      goto LABEL_38;
    }

    v23 = OUTLINED_FUNCTION_8_33();
    CFDictionaryGetValue(v23, key);
    if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
    {
      FigCFEqual();
    }

    v24 = FigCaptionDynamicStyleCreate();
    if (v24)
    {
      goto LABEL_38;
    }

    value = effectiveRange.value;
    CMBaseObject = FigCaptionDataGetCMBaseObject();
    v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v26)
    {
      v24 = v26(CMBaseObject, v139, value);
LABEL_38:
      value_low = v24;
      goto LABEL_45;
    }

    value_low = 4294954514;
LABEL_45:
    if (effectiveRange.value)
    {
      CFRelease(effectiveRange.value);
    }

    if (value_low)
    {
      goto LABEL_40;
    }

    v171 = 0;
    *&cf.start.timescale = 0;
    cf.start.value = 0;
    if (v164)
    {
      v28 = OUTLINED_FUNCTION_8_33();
      CMBaseObject = CFDictionaryGetValue(v28, v144);
      if (CMBaseObject)
      {
        v29 = 0;
        effectiveRange.value = 0;
        *&effectiveRange.timescale = 0;
        p_effectiveRange = &effectiveRange;
        do
        {
          FigCFArrayGetFloatAtIndex();
          ++v29;
          p_effectiveRange = (p_effectiveRange + 4);
        }

        while (v29 != 4);
        FigCreateCGColorSRGB();
        v31 = OUTLINED_FUNCTION_4_69();
        if (v31)
        {
          goto LABEL_55;
        }

        v32 = v171;
        v33 = FigCaptionDataGetCMBaseObject();
        v34 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v34)
        {
          v31 = v34(v33, v138, v32);
LABEL_55:
          value_low = v31;
          goto LABEL_57;
        }

        value_low = 4294954514;
      }

      else
      {
        value_low = 0;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_92();
      FigSignalErrorAtGM();
      OUTLINED_FUNCTION_7_44();
    }

LABEL_57:
    if (v171)
    {
      CFRelease(v171);
    }

    if (CMBaseObject)
    {
      CFRelease(CMBaseObject);
    }

    if (value_low)
    {
      goto LABEL_40;
    }

    v35 = v164;
    v171 = 0;
    effectiveRange.value = 0;
    *&cf.start.timescale = 0;
    cf.start.value = 0;
    OUTLINED_FUNCTION_5_60();
    FigGeometryDimensionMake();
    if (!v35)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_92();
      v40 = FigSignalErrorAtGM();
      goto LABEL_73;
    }

    v36 = OUTLINED_FUNCTION_8_33();
    v37 = CFDictionaryGetValue(v36, *MEMORY[0x1E6960950]);
    if (v37)
    {
      v38 = CFDictionaryGetValue(v37, *MEMORY[0x1E6960B90]);
      if (v38)
      {
        v39 = v38;
        if (CFStringCompare(v38, theString2, 0))
        {
          if (CFStringCompare(v39, v154, 0) && CFStringCompare(v39, *MEMORY[0x1E6960B88], 0))
          {
            CFStringCompare(v39, *MEMORY[0x1E6960B80], 0);
          }
        }
      }

      v40 = FigCaptionRubyReserveCreate();
      if (v40)
      {
        goto LABEL_73;
      }

      v40 = FigCaptionDynamicStyleCreate();
      if (v40)
      {
        goto LABEL_73;
      }

      v41 = effectiveRange.value;
      v42 = FigCaptionDataGetCMBaseObject();
      v43 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v43)
      {
        v40 = v43(v42, v135, v41);
LABEL_73:
        value_low = v40;
        goto LABEL_75;
      }

      value_low = 4294954514;
    }

    else
    {
      value_low = 0;
    }

LABEL_75:
    if (effectiveRange.value)
    {
      CFRelease(effectiveRange.value);
    }

    if (v171)
    {
      CFRelease(v171);
    }

    if (value_low)
    {
      goto LABEL_40;
    }

    v165 = 0;
    v166 = 0;
    if (!v164)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_92();
      v44 = FigSignalErrorAtGM();
      goto LABEL_170;
    }

    v44 = FigCaptionRegionCreateMutable();
    if (!v44)
    {
      v45 = FigCaptionRegionGetCMBaseObject();
      v46 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v46)
      {
        goto LABEL_171;
      }

      v44 = v46(v45, v137, v136);
      if (!v44)
      {
        effectiveRange.value = 0;
        *&effectiveRange.timescale = 0;
        Attributes = CFAttributedStringGetAttributes(ValueAtIndex, 0, &effectiveRange);
        CFDictionaryGetValue(Attributes, v142);
        if (!FigCFEqual())
        {
          FigCFEqual();
        }

        v44 = FigCaptionDynamicStyleCreate();
        if (!v44)
        {
          v48 = v165;
          v49 = FigCaptionRegionGetCMBaseObject();
          v50 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v50)
          {
            goto LABEL_171;
          }

          v44 = v50(v49, v133, v48);
          if (!v44)
          {
            v169 = 50.0;
            valuePtr = 100.0;
            v168 = 100.0;
            v167 = 0;
            if (!v166)
            {
              goto LABEL_230;
            }

            v51 = CFDictionaryGetValue(Attributes, v132);
            if (v51)
            {
              CFNumberGetValue(v51, kCFNumberCGFloatType, &valuePtr);
              if (valuePtr < 0.0)
              {
                goto LABEL_230;
              }
            }

            v52 = CFDictionaryGetValue(Attributes, v131);
            v53 = CFDictionaryGetValue(Attributes, key);
            v54 = CFDictionaryGetValue(Attributes, v130);
            v55 = v54;
            if (v52)
            {
              CFNumberGetValue(v52, kCFNumberCGFloatType, &v169);
              if (v169 >= 0.0)
              {
                goto LABEL_94;
              }

LABEL_230:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_92();
              FigSignalErrorAtGM();
LABEL_168:
              v87 = v166;
              v88 = FigCaptionDataGetCMBaseObject();
              v89 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (!v89)
              {
LABEL_171:
                value_low = 4294954514;
                goto LABEL_172;
              }

              v44 = v89(v88, v123, v87);
              goto LABEL_170;
            }

            if (v53)
            {
              if (CFStringCompare(v53, v126, 0))
              {
                if (CFStringCompare(v53, v140, 0))
                {
                  if (CFStringCompare(v53, v118, 0) == kCFCompareEqualTo)
                  {
                    v169 = 100.0;
                  }
                }

                else
                {
                  v169 = 50.0;
                }
              }

              else
              {
                v169 = 0.0;
              }

LABEL_94:
              if (v55)
              {
LABEL_95:
                if (CFStringCompare(v55, v125, 0))
                {
                  v56 = CFStringCompare(v55, v122, 0);
                  v57 = MEMORY[0x1E69609F8];
                  if (v56)
                  {
                    goto LABEL_97;
                  }
                }
              }

              else if (v53)
              {
                if (CFStringCompare(v53, v126, 0))
                {
                  if (CFStringCompare(v53, v140, 0))
                  {
                    if (CFStringCompare(v53, v118, 0))
                    {
                      v58 = CFStringCompare(v53, v145, 0);
                      v57 = MEMORY[0x1E6960780];
                      v55 = v53;
                      if (v58)
                      {
LABEL_97:
                        CFStringCompare(v55, *v57, 0);
                      }
                    }
                  }
                }
              }
            }

            else if (v54)
            {
              goto LABEL_95;
            }

            v59 = CFDictionaryGetValue(Attributes, v129);
            v60 = CFDictionaryGetValue(Attributes, v128);
            v61 = CFDictionaryGetValue(Attributes, v127);
            if (v59)
            {
              CFNumberGetValue(v59, kCFNumberCGFloatType, &v168);
              if (v168 < 0.0)
              {
                goto LABEL_230;
              }

LABEL_113:
              v62 = 1;
            }

            else
            {
              if (!v60)
              {
                goto LABEL_113;
              }

              CFNumberGetValue(v60, kCFNumberIntType, &v167);
              v62 = 0;
            }

            if (v61 && CFStringCompare(v61, v124, 0) && CFStringCompare(v61, v121, 0))
            {
              CFStringCompare(v61, v117, 0);
            }

            OUTLINED_FUNCTION_5_60();
            FigGeometryDimensionMake();
            OUTLINED_FUNCTION_5_60();
            FigGeometryDimensionMake();
            OUTLINED_FUNCTION_5_60();
            FigGeometryDimensionMake();
            if (v62)
            {
              OUTLINED_FUNCTION_5_60();
              goto LABEL_123;
            }

            if (v167 < 0)
            {
              FigGeometryDimensionMakeReversed();
            }

            else
            {
LABEL_123:
              FigGeometryDimensionMake();
            }

            OUTLINED_FUNCTION_5_60();
            FigGeometryDimensionMake();
            v64 = v63;
            if (CFDictionaryGetValue(Attributes, v142))
            {
              if (FigCFEqual())
              {
                FigGeometryDimensionMakeMirrored();
                FigGeometryDimensionMakeMirrored();
              }

              if (OUTLINED_FUNCTION_11_36())
              {
                if (OUTLINED_FUNCTION_9_35())
                {
                  v72 = 0;
                }

                else
                {
                  v69 = cf.start.value;
                  v70 = FigCaptionRegionGetCMBaseObject();
                  v71 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v71)
                  {
                    v72 = v71(v70, v116, v69) == 0;
                  }

                  else
                  {
                    v72 = 0;
                  }
                }

                if (cf.start.value)
                {
                  CFRelease(cf.start.value);
                }

                CFRelease(v64);
                if (!v72)
                {
                  goto LABEL_168;
                }
              }

              OUTLINED_FUNCTION_10_34();
              FigGeometryPointMake();
              if (FigGeometryPointCopyAsDictionary())
              {
                v73 = OUTLINED_FUNCTION_4_69();
                v74 = v171;
                if (v73)
                {
                  v77 = 0;
                  if (v171)
                  {
                    goto LABEL_145;
                  }
                }

                else
                {
                  v75 = FigCaptionRegionGetCMBaseObject();
                  v76 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v76)
                  {
                    v77 = v76(v75, v120, v74) == 0;
                  }

                  else
                  {
                    v77 = 0;
                  }

                  v74 = v171;
                  if (v171)
                  {
LABEL_145:
                    CFRelease(v74);
                  }
                }

                CFRelease(v64);
                if (!v77)
                {
                  goto LABEL_168;
                }
              }

LABEL_160:
              OUTLINED_FUNCTION_10_34();
              FigGeometryPointMake();
              if (FigGeometryPointCopyAsDictionary())
              {
                v83 = OUTLINED_FUNCTION_4_69();
                v84 = v171;
                if (!v83)
                {
                  v85 = FigCaptionRegionGetCMBaseObject();
                  v86 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v86)
                  {
                    v86(v85, v119, v84);
                  }

                  v84 = v171;
                }

                if (v84)
                {
                  CFRelease(v84);
                }

                CFRelease(v64);
              }

              goto LABEL_168;
            }

            if (OUTLINED_FUNCTION_11_36())
            {
              v68 = !OUTLINED_FUNCTION_9_35() && (v65 = cf.start.value, v66 = FigCaptionRegionGetCMBaseObject(), (v67 = *(*(CMBaseObjectGetVTable() + 8) + 56)) != 0) && v67(v66, v115, v65) == 0;
              if (cf.start.value)
              {
                CFRelease(cf.start.value);
              }

              CFRelease(v64);
              if (!v68)
              {
                goto LABEL_168;
              }
            }

            OUTLINED_FUNCTION_10_34();
            FigGeometryPointMake();
            if (!FigGeometryPointCopyAsDictionary())
            {
              goto LABEL_160;
            }

            v78 = OUTLINED_FUNCTION_4_69();
            v79 = v171;
            if (v78)
            {
              v82 = 0;
              if (v171)
              {
                goto LABEL_158;
              }
            }

            else
            {
              v80 = FigCaptionRegionGetCMBaseObject();
              v81 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v81)
              {
                v82 = v81(v80, v120, v79) == 0;
              }

              else
              {
                v82 = 0;
              }

              v79 = v171;
              if (v171)
              {
LABEL_158:
                CFRelease(v79);
              }
            }

            CFRelease(v64);
            if (!v82)
            {
              goto LABEL_168;
            }

            goto LABEL_160;
          }
        }
      }
    }

LABEL_170:
    value_low = v44;
LABEL_172:
    if (v165)
    {
      CFRelease(v165);
    }

    if (v166)
    {
      CFRelease(v166);
    }

    if (value_low)
    {
      goto LABEL_40;
    }

    v90 = 0;
    v163.location = 0;
    v163.length = 0;
    do
    {
      v91 = CFAttributedStringGetAttributes(ValueAtIndex, v90, &v163);
      if (FigCFDictionaryGetCount() < 1)
      {
        goto LABEL_209;
      }

      *&cf.start.value = v163;
      *&cf.start.epoch = v164;
      CFDictionaryApplyFunction(v91, fcgcfs_webvtt_attribute_applier, &cf);
      value_low = LODWORD(cf.duration.value);
      if (LODWORD(cf.duration.value))
      {
        goto LABEL_40;
      }

      v93 = v163.length;
      v92 = v164;
      location = v163.location;
      valuePtr = 0.0;
      v171 = 0;
      if (!v164)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_92();
        v95 = FigSignalErrorAtGM();
        goto LABEL_202;
      }

      if (CFDictionaryContainsKey(v91, v14))
      {
        v95 = FigCaptionDataCreateMutable();
        if (v95)
        {
          goto LABEL_202;
        }

        v96 = CFDictionaryGetValue(v91, v14);
        v97 = v171;
        v98 = CFAttributedStringGetString(v96);
        v99 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v99)
        {
          v95 = v99(v97, v98);
          if (v95)
          {
            goto LABEL_202;
          }

          effectiveRange.value = 0;
          *&effectiveRange.timescale = 0;
          v100 = CFAttributedStringGetAttributes(v96, 0, &effectiveRange);
          CFDictionaryGetValue(v100, v156);
          if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
          {
            FigCFEqual();
          }

          v95 = FigCaptionDynamicStyleCreate();
          if (v95)
          {
            goto LABEL_202;
          }

          v101 = valuePtr;
          v102 = FigCaptionDataGetCMBaseObject();
          v103 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v103)
          {
            v95 = v103(v102, v153, *&v101);
            if (v95)
            {
              goto LABEL_202;
            }

            CFDictionaryGetValue(v100, v152);
            if (!FigCFEqual())
            {
              FigCFEqual();
            }

            if (valuePtr != 0.0)
            {
              CFRelease(*&valuePtr);
              valuePtr = 0.0;
            }

            v95 = FigCaptionDynamicStyleCreate();
            if (v95)
            {
              goto LABEL_202;
            }

            v104 = valuePtr;
            v105 = FigCaptionDataGetCMBaseObject();
            v106 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v106)
            {
              v95 = v106(v105, v147, *&v104);
              if (v95)
              {
                goto LABEL_202;
              }

              v107 = v171;
              v108 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (v108)
              {
                v95 = v108(v92, v141, v107, location, v93);
LABEL_202:
                value_low = v95;
                goto LABEL_204;
              }
            }
          }
        }

        value_low = 4294954514;
      }

      else
      {
        value_low = 0;
      }

LABEL_204:
      if (valuePtr != 0.0)
      {
        CFRelease(*&valuePtr);
      }

      if (v171)
      {
        CFRelease(v171);
      }

      if (value_low)
      {
        goto LABEL_40;
      }

LABEL_209:
      v90 = v163.length + v163.location;
    }

    while (v163.length + v163.location < v17);
    v27 = v164;
    Mutable = theArray;
LABEL_213:
    CFArrayAppendValue(Mutable, v27);
    v109 = MEMORY[0x1E6960CC0];
    CFDataAppendBytes(theData, MEMORY[0x1E6960CC0], 24);
    CFDataAppendBytes(v151, v109, 24);
    if (v27)
    {
      CFRelease(v27);
    }

    v13 = v155 + 1;
  }

  while (v155 + 1 != Count);
LABEL_238:
  v7 = theData;
  CFDataGetMutableBytePtr(theData);
  CFDataGetMutableBytePtr(v151);
  v110 = FigCaptionGroupCreate();
  if (!v110)
  {
    DerivedStorage = v134;
    a2 = v151;
    goto LABEL_243;
  }

  value_low = v110;
  DerivedStorage = v134;
LABEL_260:
  a2 = v151;
LABEL_248:
  v113 = *DerivedStorage;
  v112 = *(DerivedStorage + 8);
  cf = v160;
  v113(v162, &cf, v112);
  if (a2)
  {
    CFRelease(a2);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v161)
  {
    CFRelease(v161);
  }

  if (v162)
  {
    CFRelease(v162);
  }

  return value_low;
}

void fcgcfs_webvtt_attribute_applier(uint64_t a1, const __CFString *a2, uint64_t *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  cf = 0;
  v49 = 0;
  if (*(a3 + 6))
  {
    goto LABEL_26;
  }

  v5 = FigCFEqual();
  v6 = MEMORY[0x1E695E480];
  if (v5)
  {
    v7 = 0;
    v8 = *MEMORY[0x1E69614E8];
    valuePtr = 0uLL;
    p_valuePtr = &valuePtr;
    while (1)
    {
      FloatAtIndex = FigCFArrayGetFloatAtIndex();
      if (!FloatAtIndex)
      {
        goto LABEL_20;
      }

      ++v7;
      p_valuePtr = (p_valuePtr + 4);
      if (v7 == 4)
      {
        v11 = OUTLINED_FUNCTION_6_56();
        cf = v11;
        if (v11)
        {
          v12 = CFGetTypeID(v11);
          if (v12 == CGColorGetTypeID())
          {
            goto LABEL_15;
          }
        }

        goto LABEL_8;
      }
    }
  }

  if (FigCFEqual())
  {
    v13 = 0;
    v8 = *MEMORY[0x1E6961458];
    valuePtr = 0uLL;
    v14 = &valuePtr;
    while (1)
    {
      FloatAtIndex = FigCFArrayGetFloatAtIndex();
      if (!FloatAtIndex)
      {
        goto LABEL_20;
      }

      ++v13;
      v14 = (v14 + 4);
      if (v13 == 4)
      {
        v15 = OUTLINED_FUNCTION_6_56();
        cf = v15;
        if (!v15)
        {
          goto LABEL_8;
        }

        v16 = CFGetTypeID(v15);
        if (v16 != CGColorGetTypeID())
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }
    }
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      if (!a2)
      {
        goto LABEL_119;
      }

      v25 = CFGetTypeID(a2);
      if (v25 != CFBooleanGetTypeID())
      {
        goto LABEL_119;
      }

      v8 = *MEMORY[0x1E6961480];
      Value = CFBooleanGetValue(a2);
      v27 = MEMORY[0x1E6961488];
      v28 = MEMORY[0x1E6961490];
      goto LABEL_43;
    }

    if (FigCFEqual())
    {
      if (!a2)
      {
        goto LABEL_119;
      }

      v29 = CFGetTypeID(a2);
      if (v29 != CFBooleanGetTypeID())
      {
        goto LABEL_119;
      }

      v8 = *MEMORY[0x1E69614A0];
      Value = CFBooleanGetValue(a2);
      v27 = MEMORY[0x1E69614A8];
      v28 = MEMORY[0x1E69614B0];
LABEL_43:
      if (!Value)
      {
        v27 = v28;
      }

      v17 = *v27;
      cf = *v27;
LABEL_16:
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

    if (FigCFEqual())
    {
      *&valuePtr = 0;
      if (!a2)
      {
        goto LABEL_119;
      }

      v30 = CFGetTypeID(a2);
      if (v30 != CFNumberGetTypeID())
      {
        goto LABEL_119;
      }

      v8 = *MEMORY[0x1E6961478];
      CFNumberGetValue(a2, kCFNumberCGFloatType, &valuePtr);
      v31 = FigCaptionGeometryCopyCellBasedSizeAsDictionary();
      goto LABEL_59;
    }

    if (FigCFEqual())
    {
      LODWORD(v45) = 0;
      if (!a2)
      {
        goto LABEL_119;
      }

      v32 = CFGetTypeID(a2);
      if (v32 != CFNumberGetTypeID())
      {
        goto LABEL_119;
      }

      v8 = *MEMORY[0x1E6961478];
      CFNumberGetValue(a2, kCFNumberIntType, &v45);
      OUTLINED_FUNCTION_5_60();
      goto LABEL_58;
    }

    if (FigCFEqual())
    {
      v45 = 0;
      if (!a2)
      {
        goto LABEL_119;
      }

      v33 = CFGetTypeID(a2);
      if (v33 != CFNumberGetTypeID())
      {
        goto LABEL_119;
      }

      v8 = *MEMORY[0x1E6961478];
      CFNumberGetValue(a2, kCFNumberCGFloatType, &v45);
LABEL_58:
      FigGeometryDimensionMake();
      valuePtr = 0u;
      v51 = 0u;
      FigGeometrySizeMake();
      v46 = valuePtr;
      v47 = v51;
      v31 = FigGeometrySizeCopyAsDictionary();
LABEL_59:
      v17 = v31;
      cf = v31;
      goto LABEL_16;
    }

    if (FigCFEqual())
    {
      if (!a2)
      {
        goto LABEL_119;
      }

      v34 = CFGetTypeID(a2);
      if (v34 != CFStringGetTypeID() || !fcgcfs_webvtt_getGenericFontFamilyNameFromGenericWebVTTFontName(a2))
      {
        goto LABEL_119;
      }

      FloatAtIndex = FigCaptionFontFamilyNameListCreateMutable();
      if (FloatAtIndex)
      {
        goto LABEL_23;
      }

      FloatAtIndex = FigCaptionFontFamilyNameListAppend();
      if (FloatAtIndex)
      {
        goto LABEL_23;
      }

      v35 = MEMORY[0x1E6961470];
    }

    else
    {
      if (FigCFEqual())
      {
        if (a2)
        {
          v36 = CFGetTypeID(a2);
          if (v36 == CFStringGetTypeID())
          {
            FloatAtIndex = FigCaptionFontFamilyNameListCreateMutable();
            if (FloatAtIndex)
            {
              goto LABEL_23;
            }

            FloatAtIndex = FigCaptionFontFamilyNameListAppend();
            goto LABEL_20;
          }
        }

        goto LABEL_119;
      }

      if (FigCFEqual())
      {
        *&valuePtr = 0;
        if (!a2)
        {
          goto LABEL_119;
        }

        v37 = CFGetTypeID(a2);
        if (v37 != CFNumberGetTypeID())
        {
          goto LABEL_119;
        }

        v8 = *MEMORY[0x1E6961540];
        CFNumberGetValue(a2, kCFNumberCGFloatType, &valuePtr);
        OUTLINED_FUNCTION_5_60();
        FigGeometryDimensionMake();
        v31 = FigGeometryDimensionCopyAsDictionary();
        goto LABEL_59;
      }

      if (FigCFEqual())
      {
        if (a2)
        {
          v38 = CFGetTypeID(a2);
          if (v38 == CFStringGetTypeID())
          {
            cf = CFStringCreateCopy(*v6, a2);
            if (cf)
            {
              v24 = MEMORY[0x1E6961468];
              goto LABEL_34;
            }
          }
        }

        goto LABEL_119;
      }

      if (FigCFEqual())
      {
        LODWORD(valuePtr) = 1;
        if (!a2)
        {
          goto LABEL_119;
        }

        v39 = CFGetTypeID(a2);
        if (v39 != CFNumberGetTypeID())
        {
          goto LABEL_119;
        }

        v8 = *MEMORY[0x1E69614F0];
        CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr);
        switch(valuePtr)
        {
          case -1:
            v40 = MEMORY[0x1E69614F8];
            goto LABEL_104;
          case 1:
            v40 = MEMORY[0x1E6961510];
            goto LABEL_104;
          case 2:
            v40 = MEMORY[0x1E6961520];
            goto LABEL_104;
          case 3:
            v40 = MEMORY[0x1E6961518];
            goto LABEL_104;
          case 4:
            v40 = MEMORY[0x1E6961500];
LABEL_104:
            cf = CFRetain(*v40);
            break;
          default:
            goto LABEL_15;
        }

        goto LABEL_15;
      }

      if (!FigCFEqual())
      {
        v8 = 0;
        goto LABEL_15;
      }

      v41 = CFDictionaryGetValue(a2, *MEMORY[0x1E6960BE8]);
      v42 = CFDictionaryGetValue(a2, *MEMORY[0x1E6960BC8]);
      v43 = CFDictionaryGetValue(a2, *MEMORY[0x1E6960BA8]);
      v44 = CFDictionaryGetValue(a2, *MEMORY[0x1E6960BE0]);
      if (v41 && CFStringCompare(v41, *MEMORY[0x1E6960BF0], 0) && CFStringCompare(v41, *MEMORY[0x1E6960C00], 0))
      {
        CFStringCompare(v41, *MEMORY[0x1E6960BF8], 0);
      }

      if (v42 && CFStringCompare(v42, *MEMORY[0x1E6960BD0], 0))
      {
        CFStringCompare(v42, *MEMORY[0x1E6960BD8], 0);
      }

      if (v43 && CFStringCompare(v43, *MEMORY[0x1E6960BB0], 0) && CFStringCompare(v43, *MEMORY[0x1E6960BB8], 0))
      {
        CFStringCompare(v43, *MEMORY[0x1E6960BC0], 0);
      }

      if (v44 && CFStringCompare(v44, *MEMORY[0x1E6960B70], 0))
      {
        CFStringCompare(v44, *MEMORY[0x1E6960B88], 0);
      }

      FloatAtIndex = FigCaptionTextEmphasisCreate();
      if (FloatAtIndex)
      {
        goto LABEL_23;
      }

      v35 = MEMORY[0x1E6961528];
    }

    v8 = *v35;
LABEL_15:
    v17 = cf;
    goto LABEL_16;
  }

  if (!a2 || (v23 = CFGetTypeID(a2), v23 != CFBooleanGetTypeID()))
  {
LABEL_119:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    goto LABEL_120;
  }

  LODWORD(valuePtr) = CFBooleanGetValue(a2) != 0;
  cf = CFNumberCreate(*v6, kCFNumberSInt32Type, &valuePtr);
  if (!cf)
  {
LABEL_8:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
LABEL_120:
    FloatAtIndex = FigSignalErrorAtGM();
    goto LABEL_20;
  }

  v24 = MEMORY[0x1E6961460];
LABEL_34:
  v8 = *v24;
LABEL_17:
  FloatAtIndex = FigCaptionDynamicStyleCreate();
  if (FloatAtIndex)
  {
LABEL_23:
    *(a3 + 6) = FloatAtIndex;
    goto LABEL_24;
  }

  v18 = a3[1];
  v19 = a3[2];
  v20 = v49;
  v21 = *a3;
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v22)
  {
    FloatAtIndex = -12782;
    goto LABEL_23;
  }

  FloatAtIndex = v22(v19, v8, v20, v21, v18);
LABEL_20:
  if (FloatAtIndex)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_26:
  if (v49)
  {
    CFRelease(v49);
  }
}

uint64_t FigWebVTTCaptionGroupConverterFromSampleBufferCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigWebVTTCaptionGroupConverterFromSampleBufferCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigWebVTTCaptionGroupConverterFromSampleBufferCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigWebVTTCaptionGroupConverterFromSampleBufferCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcgcfs_webvtt_copyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcgcfs_webvtt_copyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcgcfs_webvtt_copyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcgcfs_webvtt_setProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcgcfs_webvtt_setProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcgcfs_webvtt_setProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVirtualDisplaySourceConduitCreate_cold_1()
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

uint64_t FigVirtualDisplaySourceConduitCreate_cold_2()
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

uint64_t FigVirtualDisplaySourceConduitCreate_cold_3()
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

uint64_t FigVirtualDisplaySourceConduitCreate_cold_4()
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

uint64_t __FigVirtualDisplaySourceConduitCreate_block_invoke_cold_1()
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

void optimizeRegionStyleAttributesAux(uint64_t a1, uint64_t a2)
{
  Attribute = FigTTMLDocumentWriterElementGetAttribute(a1, @"http://www.w3.org/XML/1998/namespace id");
  *a2 = Attribute;
  if (Attribute)
  {
    v5 = CFGetTypeID(Attribute);
    if (v5 == CFStringGetTypeID() && !FigTTMLDocumentWriterElementGetAttribute(a1, *(a2 + 8)))
    {
      CFDictionaryRemoveAllValues(*(a2 + 24));
      OUTLINED_FUNCTION_0_93(*(a2 + 16));
      v7[0] = *MEMORY[0x1E695E738];
      v6 = v7[0];
      v7[1] = 0;
      CFDictionaryApplyFunction(*(a2 + 24), findMostCommonStyleValue_0, v7);
      if (v7[0] != v6)
      {
        FigTTMLDocumentWriterElementSetAttribute(a1, *(a2 + 8), v7[0]);
        *(a2 + 32) = v7[0];
        OUTLINED_FUNCTION_0_93(*(a2 + 16));
      }
    }
  }
}

uint64_t accumulateAttributeValueCount(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterElementGetAttribute(a1, @"region");
  if (FigCFEqual() && FigTTMLDocumentWriterElementGetElementType(a1) == 4)
  {
    Attribute = FigTTMLDocumentWriterElementGetAttribute(a1, *(a2 + 8));
    v5 = *(a2 + 24);
    if (Attribute)
    {
      v6 = CFDictionaryGetValue(v5, Attribute) + 1;
      v5 = *(a2 + 24);
      v7 = Attribute;
    }

    else
    {
      v7 = *MEMORY[0x1E695E738];
      v6 = 0x7FFFFFFFLL;
    }

    CFDictionarySetValue(v5, v7, v6);
  }

  return 0;
}

uint64_t removeUnnecesaryAttribute(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterElementGetAttribute(a1, @"region");
  if (FigCFEqual())
  {
    FigTTMLDocumentWriterElementGetAttribute(a1, *(a2 + 8));
    if (FigCFEqual())
    {
      FigTTMLDocumentWriterElementRemoveAttribute(a1, *(a2 + 8));
    }
  }

  return 0;
}

uint64_t FigTTMLDocumentWriterCreateRegionStyleOptimizer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterCreateRegionStyleOptimizer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAttributePartitionGeneratorPerformPartitioning(uint64_t a1, CFMutableDictionaryRef *a2)
{
  if (a1)
  {
    *(a1 + 32) = 1;
    FigCFArrayApplyFunction();
    context[1] = 0;
    v10 = 0;
    context[0] = a1;
    CFDictionaryApplyFunction(*(a1 + 64), fapg_eachUniquenesEntry, context);
    v4 = v10;
    if (!v10)
    {
      FigCFArrayApplyFunction();
      v5 = CFGetAllocator(a1);
      Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v7 = Mutable;
        FigCFArrayApplyFunction();
        v4 = 0;
        *a2 = v7;
      }

      else
      {
        OUTLINED_FUNCTION_239();
        OUTLINED_FUNCTION_0_27();
        return FigSignalErrorAtGM();
      }
    }

    return v4;
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_0_94();

    return FigSignalErrorAtGM();
  }
}

void fapg_applyElementPassOne(void *a1, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    v4 = *a2;
    if (a1)
    {
      v5 = a1[3];
      if (v5)
      {
        v6 = CFRetain(v5);
        if (v6)
        {
          v7 = v6;
          CFGetAllocator(a1);
          MutableCopy = FigCFDictionaryCreateMutableCopy();
          if (MutableCopy)
          {
            v9 = MutableCopy;
            v10 = a1[4];
            a1[4] = MutableCopy;
            CFRetain(MutableCopy);
            if (v10)
            {
              CFRelease(v10);
            }

            CFRelease(v9);
          }

          else
          {
            OUTLINED_FUNCTION_239();
            OUTLINED_FUNCTION_0_94();
            v11 = FigSignalErrorAtGM();
            if (v11)
            {
              goto LABEL_29;
            }
          }

LABEL_11:
          v12 = CFGetAllocator(v4);
          Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          context[1] = Mutable;
          v19 = 0;
          context[0] = v4;
          CFDictionaryApplyFunction(v7, fapg_buildUniquenessMapApplierFunction, context);
          v11 = v19;
          if (!v19)
          {
            if (a1)
            {
              if (Mutable)
              {
                CFGetAllocator(a1);
                v14 = FigCFDictionaryCreateMutableCopy();
                if (v14)
                {
                  v15 = v14;
                  v16 = a1[5];
                  a1[5] = v14;
                  CFRetain(v14);
                  if (v16)
                  {
                    CFRelease(v16);
                  }

                  CFRelease(v15);
                  goto LABEL_18;
                }
              }
            }

            OUTLINED_FUNCTION_239();
            OUTLINED_FUNCTION_0_94();
            v11 = FigSignalErrorAtGM();
            if (!v11)
            {
LABEL_31:
              if (!Mutable)
              {
LABEL_19:
                if (v7)
                {
                  CFRelease(v7);
                }

                return;
              }

LABEL_18:
              CFRelease(Mutable);
              goto LABEL_19;
            }

LABEL_30:
            *(a2 + 8) = v11;
            goto LABEL_31;
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

LABEL_29:
          Mutable = 0;
          goto LABEL_30;
        }
      }

      OUTLINED_FUNCTION_239();
      OUTLINED_FUNCTION_0_94();
    }

    else
    {
      OUTLINED_FUNCTION_0_94();
      v17 = FigSignalErrorAtGM();
      if (v17)
      {
        v11 = v17;
        Mutable = 0;
        v7 = 0;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_0_94();
    }

    v11 = FigSignalErrorAtGM();
    v7 = 0;
    if (v11)
    {
      goto LABEL_29;
    }

    goto LABEL_11;
  }
}

void fapg_applyElementPassTwo(void *a1, uint64_t *a2)
{
  if (*(a2 + 2))
  {
    return;
  }

  v4 = *a2;
  if (a1)
  {
    v5 = a1[4];
    if (v5)
    {
      v6 = CFRetain(v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = a1[5];
    if (v7)
    {
      v8 = CFRetain(v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_94();
    v12 = FigSignalErrorAtGM();
    if (v12)
    {
      v11 = 0;
      v8 = 0;
      v6 = 0;
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_0_94();
    v12 = FigSignalErrorAtGM();
    v8 = 0;
    v6 = 0;
    v11 = 0;
    if (v12)
    {
      goto LABEL_25;
    }
  }

  v9 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
  v11 = Mutable;
  if (!Mutable)
  {
    OUTLINED_FUNCTION_111();
    goto LABEL_24;
  }

  context[1] = Mutable;
  v15 = 0;
  context[0] = v4;
  CFDictionaryApplyFunction(v8, fapg_updateEachReference, context);
  v12 = v15;
  if (v15)
  {
LABEL_25:
    *(a2 + 2) = v12;
LABEL_26:
    if (!v11)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!a1)
  {
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_0_94();
LABEL_24:
    v12 = FigSignalErrorAtGM();
    if (!v12)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v13 = a1[6];
  a1[6] = v11;
  CFRetain(v11);
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_14:
  CFRelease(v11);
LABEL_15:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void fapg_buildPartitionCollection(void *cf, uint64_t a2)
{
  if (*(a2 + 16))
  {
    return;
  }

  if (cf && (v4 = CFGetTypeID(cf), OUTLINED_FUNCTION_1_88(), v4 == sFigAttributePartitionID))
  {
    v5 = cf[2];
    if (v5)
    {
      v6 = CFRetain(v5);
      v7 = v6;
      if (v6)
      {
        v8 = CFGetTypeID(v6);
        if (v8 == CFStringGetTypeID())
        {
          v9 = cf[3];
          if (v9)
          {
            v10 = CFRetain(v9);
            CFDictionarySetValue(*(a2 + 8), v7, v10);
            if (v10)
            {
              CFRelease(v10);
            }
          }

          else
          {
            CFDictionarySetValue(*(a2 + 8), v7, 0);
          }

LABEL_16:

          CFRelease(v7);
          return;
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  OUTLINED_FUNCTION_239();
  v11 = FigSignalErrorAtGM();
  if (v11)
  {
    *(a2 + 16) = v11;
  }

  if (v7)
  {
    goto LABEL_16;
  }
}

void fapg_buildUniquenessMapApplierFunction(CFTypeRef cf, const void *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    return;
  }

  if (!cf || (v6 = *a3, v7 = CFGetTypeID(cf), v7 != CFStringGetTypeID()))
  {
    OUTLINED_FUNCTION_0_94();
    v23 = FigSignalErrorAtGM();
    UInt64 = 0;
    if (!v23)
    {
      goto LABEL_23;
    }

LABEL_30:
    *(a3 + 16) = v23;
    if (!UInt64)
    {
      return;
    }

    goto LABEL_24;
  }

  v9 = v6[7];
  v8 = v6[8];
  Value = CFDictionaryGetValue(v9, cf);
  if (Value)
  {
    Mutable = Value;
    CFRetain(Value);
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      v13 = Count;
      v14 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v14);
        if (ValueAtIndex)
        {
          v16 = ValueAtIndex;
          CFDictionaryGetValue(ValueAtIndex, @"value");
          if (FigCFEqual())
          {
            break;
          }
        }

        if (v13 == ++v14)
        {
          goto LABEL_12;
        }
      }

      v24 = CFDictionaryGetValue(v16, @"uniqueID");
      if (v24)
      {
        UInt64 = v24;
        CFRetain(v24);
        v19 = 0;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v17 = CFGetAllocator(v6);
    Mutable = CFArrayCreateMutable(v17, 0, MEMORY[0x1E695E9C0]);
    CFDictionarySetValue(v9, cf, Mutable);
  }

LABEL_12:
  v18 = CFGetAllocator(v6);
  v19 = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v6)
  {
    ++v6[6];
    UInt64 = FigCFNumberCreateUInt64();
LABEL_14:
    CFDictionarySetValue(v19, @"value", a2);
    CFDictionarySetValue(v19, @"uniqueID", UInt64);
    CFArrayAppendValue(Mutable, v19);
LABEL_15:
    if (!CFDictionaryContainsKey(v8, UInt64))
    {
      v21 = CFGetAllocator(v6);
      v22 = CFDictionaryCreateMutable(v21, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(v22, cf, a2);
      CFDictionarySetValue(v8, UInt64, v22);
      if (v22)
      {
        CFRelease(v22);
      }
    }

    v23 = 0;
    if (v19)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  OUTLINED_FUNCTION_0_94();
  v25 = FigSignalErrorAtGM();
  UInt64 = 0;
  if (!v25)
  {
    goto LABEL_14;
  }

  v23 = v25;
  if (v19)
  {
LABEL_19:
    CFRelease(v19);
  }

LABEL_20:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v23)
  {
    goto LABEL_30;
  }

LABEL_23:
  CFDictionarySetValue(*(a3 + 8), cf, UInt64);
  if (!UInt64)
  {
    return;
  }

LABEL_24:

  CFRelease(UInt64);
}

void fapg_eachUniquenesEntry(const void *a1, const __CFDictionary *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    return;
  }

  v6 = *a3;
  CFGetAllocator(*a3);
  OUTLINED_FUNCTION_1_88();
  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (Instance)
  {
    Instance[3] = 0;
    if (a2)
    {
      v9 = CFGetAllocator(Instance);
      MutableCopy = CFDictionaryCreateMutableCopy(v9, 0, a2);
      v11 = MutableCopy;
      v12 = v8[3];
      v8[3] = MutableCopy;
      if (MutableCopy)
      {
        CFRetain(MutableCopy);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_27();
    v17 = FigSignalErrorAtGM();
    if (v17 || (OUTLINED_FUNCTION_0_94(), (v17 = FigSignalErrorAtGM()) != 0))
    {
LABEL_25:
      *(a3 + 16) = v17;
      goto LABEL_16;
    }
  }

  v13 = CFGetAllocator(v6);
  v14 = CFStringCreateWithFormat(v13, 0, @"style_%ld", *(a3 + 8) + 1);
  if (v14)
  {
    v15 = v14;
    if (v8)
    {
      v16 = v8[2];
      v8[2] = v14;
      CFRetain(v14);
      if (v16)
      {
        CFRelease(v16);
      }
    }

    else
    {
      OUTLINED_FUNCTION_111();
      OUTLINED_FUNCTION_0_94();
      v18 = FigSignalErrorAtGM();
      if (v18)
      {
        *(a3 + 16) = v18;
        goto LABEL_15;
      }
    }

    CFDictionarySetValue(v6[9], a1, v15);
    CFArrayAppendValue(v6[5], v8);
    ++*(a3 + 8);
LABEL_15:
    CFRelease(v15);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_111();
  v17 = FigSignalErrorAtGM();
  if (v17)
  {
    goto LABEL_25;
  }

LABEL_16:
  if (v8)
  {

    CFRelease(v8);
  }
}

void fapg_updateEachReference(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    Value = CFDictionaryGetValue(*(*a3 + 72), a2);
    if (Value)
    {
      v5 = Value;
      v6 = *(a3 + 8);

      CFArrayAppendValue(v6, v5);
    }
  }
}

uint64_t FigAttributePartitionGeneratorAddElement_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigAttributePartitionGeneratorAddElement_cold_2(const void *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0_27();
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t FigAttributePartitionGeneratorAddElement_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAttributePartitionGeneratorAddElement_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAttributePartitionGeneratorAddElement_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAttributePartitionGeneratorCopyPartitionReferences_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAttributePartitionGeneratorCopyPartitionReferences_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAttributePartitionGeneratorCopyPartitionReferences_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAttributePartitionGeneratorCopyPartitionReferences_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAttributePartitionGeneratorCopyPartitionReferences_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigAttributePartitionGeneratorCreate_cold_1(const void *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0_27();
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t FigAttributePartitionGeneratorCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAttributePartitionGeneratorCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAttributePartitionGeneratorCreate_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t lockLockFile(uint64_t a1)
{
  if (*(a1 + 120))
  {
    goto LABEL_6;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v3 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(a1 + 24), @"StreamInfoRoot.xml", 0);
  v4 = FigFileForkOpenMainByCFURL();
  if (v4 != -17913)
  {
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v4 = FigSignalErrorAtGM();
  if (v3)
  {
LABEL_4:
    CFRelease(v3);
  }

LABEL_5:
  if (v4)
  {
    return v4;
  }

LABEL_6:
  v5 = FigFileLock();
  if (v5 == -12206)
  {
    v4 = 4294950362;
  }

  else
  {
    v4 = v5;
  }

  if (v4 != -17913)
  {
    return v4;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t HLSPersistentStreamInfo_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (CMBaseObjectGetDerivedStorage())
  {
    v6 = OUTLINED_FUNCTION_5_61();
    if (v6)
    {
      return v6;
    }

    if (!a2)
    {
      goto LABEL_90;
    }

    if (*(v3 + 8))
    {
      goto LABEL_90;
    }

    OUTLINED_FUNCTION_2_85();
    if (!v7)
    {
      goto LABEL_90;
    }

    if (CFEqual(@"StreamInfoCompleteState", a2))
    {
      if (a3)
      {
        v8 = CFGetTypeID(a3);
        if (v8 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(a3);
          v10 = *(v3 + 80);
          FigXMLNodeGetTag(v10);
          v11 = FigCFEqual();
          if (!v10 || !v11)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_20_0();
            v19 = FigSignalErrorAtGM();
            goto LABEL_30;
          }

          Child = FigXMLNodeGetChild(v10, @"Complete");
          if (Child)
          {
            v13 = CFRetain(Child);
            cf = v13;
            if (v13)
            {
LABEL_23:
              if (Value == 1)
              {
                v17 = @"YES";
              }

              else
              {
                v17 = @"NO";
              }

              v18 = FigXMLNodeContentSetCFString(v13, v17);
              goto LABEL_27;
            }
          }

          else
          {
            cf = 0;
          }

          AllocatorForMedia = FigGetAllocatorForMedia();
          FigXMLNodeCreateChildNode(AllocatorForMedia, v10, @"Complete", &cf);
          v13 = cf;
          goto LABEL_23;
        }
      }
    }

    else
    {
      if (CFEqual(@"StreamInfoMediaPlaylistNetworkURL", a2))
      {
        if (a3)
        {
          v14 = CFGetTypeID(a3);
          if (v14 == CFStringGetTypeID())
          {
            v15 = xmlSetMediaPlaylist(*(v3 + 80), a3, @"NetworkURL");
            if (v15)
            {
              goto LABEL_91;
            }

            goto LABEL_31;
          }
        }

        goto LABEL_90;
      }

      if (CFEqual(@"StreamInfoMediaTypeList", a2))
      {
        if (a3)
        {
          v20 = CFGetTypeID(a3);
          if (v20 == CFArrayGetTypeID())
          {
            v37 = 0;
            cf = 0;
            v21 = *(v3 + 80);
            FigXMLNodeGetTag(v21);
            v22 = FigCFEqual();
            if (v21 && v22)
            {
              cf = FigXMLNodeGetChild(v21, @"MediaTypeList");
              if (cf)
              {
                FigXMLNodeRemoveAndClearChild(v21, &cf);
              }

              v23 = FigGetAllocatorForMedia();
              v18 = FigXMLNodeCreateChildNode(v23, v21, @"MediaTypeList", &cf);
              if (!v18)
              {
                Count = CFArrayGetCount(a3);
                if (Count < 1)
                {
LABEL_47:
                  v19 = 0;
                }

                else
                {
                  v25 = Count + 1;
                  while (1)
                  {
                    FigCFArrayGetInt32AtIndex();
                    CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
                    v27 = FigGetAllocatorForMedia();
                    v28 = FigXMLNodeCreateChildNode(v27, cf, @"MediaType", &v37);
                    if (v28)
                    {
                      break;
                    }

                    v28 = FigXMLNodeAttributeSetCFString(v37, @"type", CFStringForOSTypeValue);
                    if (v28)
                    {
                      break;
                    }

                    if (v37)
                    {
                      CFRelease(v37);
                      v37 = 0;
                    }

                    if (--v25 <= 1)
                    {
                      goto LABEL_47;
                    }
                  }

                  v19 = v28;
                  if (v37)
                  {
                    CFRelease(v37);
                  }
                }

                goto LABEL_28;
              }
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_20_0();
              v18 = FigSignalErrorAtGM();
            }

LABEL_27:
            v19 = v18;
LABEL_28:
            if (cf)
            {
              CFRelease(cf);
            }

LABEL_30:
            if (v19)
            {
LABEL_92:
              FigReadWriteLockUnlockForWrite();
              return v19;
            }

LABEL_31:
            v19 = 0;
            OUTLINED_FUNCTION_6_57();
            goto LABEL_92;
          }
        }
      }

      else
      {
        if (!CFEqual(@"StreamInfoStreamType", a2))
        {
          if (CFEqual(@"StreamInfoPeakBandwidth", a2))
          {
            if (!a3)
            {
              goto LABEL_90;
            }

            v31 = CFGetTypeID(a3);
            if (v31 != CFNumberGetTypeID())
            {
              goto LABEL_90;
            }

            v32 = @"PeakBandwidth";
          }

          else
          {
            if (!CFEqual(@"StreamInfoAverageBandwidth", a2))
            {
              if (CFEqual(@"StreamInfoEvictionPolicy", a2))
              {
                if (a3)
                {
                  v34 = CFGetTypeID(a3);
                  if (v34 == CFStringGetTypeID())
                  {
                    v15 = xmlSetEvictionPolicy(v3, a3);
                    if (v15)
                    {
                      goto LABEL_91;
                    }

                    goto LABEL_31;
                  }
                }
              }

              else
              {
                if (!CFEqual(@"StreamInfoUniqueIdentifier", a2))
                {
                  goto LABEL_31;
                }

                if (a3)
                {
                  v35 = CFGetTypeID(a3);
                  if (v35 == CFStringGetTypeID())
                  {
                    v15 = xmlSetUniqueIdentifier(v3, a3);
                    if (v15)
                    {
                      goto LABEL_91;
                    }

                    goto LABEL_31;
                  }
                }
              }

              goto LABEL_90;
            }

            if (!a3)
            {
              goto LABEL_90;
            }

            v33 = CFGetTypeID(a3);
            if (v33 != CFNumberGetTypeID())
            {
              goto LABEL_90;
            }

            v32 = @"AverageBandwidth";
          }

          v15 = xmlSetStreamBandwidth(v3, a3, v32);
          if (v15)
          {
            goto LABEL_91;
          }

          goto LABEL_31;
        }

        if (a3)
        {
          v29 = CFGetTypeID(a3);
          if (v29 == CFStringGetTypeID())
          {
            if (CFEqual(a3, @"StreamInfoMainStream"))
            {
              v30 = @"Main";
            }

            else
            {
              if (!CFEqual(a3, @"StreamInfoSupplementalStream"))
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_20_0();
                FigSignalErrorAtGM();
                goto LABEL_31;
              }

              v30 = @"Supplemental";
            }

            v15 = xmlSetStreamType(v3, v30);
            if (v15)
            {
              goto LABEL_91;
            }

            goto LABEL_31;
          }
        }
      }
    }

LABEL_90:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v15 = FigSignalErrorAtGM();
LABEL_91:
    v19 = v15;
    goto LABEL_92;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();

  return FigSignalErrorAtGM();
}

uint64_t streamInfo_Invalidate(uint64_t a1)
{
  v2 = FigReadWriteLockLockForWrite();
  if (!v2)
  {
    if (!*(a1 + 8))
    {
      *(a1 + 8) = 1;
      if (*(a1 + 120))
      {
        v3 = FigFileUnlock();
        FigFileForkClose();
        *(a1 + 120) = 0;
        if (v3 == -17913)
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM();
        }
      }

      v4 = *(a1 + 48);
      if (v4)
      {
        CFRelease(v4);
        *(a1 + 48) = 0;
      }

      v5 = *(a1 + 56);
      if (v5)
      {
        CFRelease(v5);
        *(a1 + 56) = 0;
      }

      v6 = *(a1 + 40);
      if (v6)
      {
        CFRelease(v6);
        *(a1 + 40) = 0;
      }

      v7 = *(a1 + 24);
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 24) = 0;
      }

      v8 = *(a1 + 64);
      if (v8)
      {
        CFRelease(v8);
        *(a1 + 64) = 0;
      }

      v9 = *(a1 + 96);
      if (v9)
      {
        CFRelease(v9);
        *(a1 + 96) = 0;
      }

      v10 = *(a1 + 16);
      if (v10)
      {
        CFRelease(v10);
        *(a1 + 16) = 0;
      }

      v11 = *(a1 + 104);
      if (v11)
      {
        CFRelease(v11);
        *(a1 + 104) = 0;
      }

      v12 = *(a1 + 200);
      if (v12)
      {
        CFRelease(v12);
        *(a1 + 200) = 0;
      }

      v13 = *(a1 + 88);
      if (v13)
      {
        CFRelease(v13);
        *(a1 + 88) = 0;
      }

      v14 = *(a1 + 80);
      if (v14)
      {
        CFRelease(v14);
        *(a1 + 80) = 0;
      }
    }

    FigReadWriteLockUnlockForWrite();
  }

  return v2;
}

CFNumberRef xmlCopyStreamBandwidth(uint64_t a1, const __CFString *a2)
{
  valuePtr = 0;
  v3 = *(a1 + 80);
  FigXMLNodeGetTag(v3);
  v4 = FigCFEqual();
  if (!v3 || !v4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM();
    return 0;
  }

  Child = FigXMLNodeGetChild(v3, a2);
  if (Child)
  {
    v6 = Child;
    if (FigXMLNodeGetCountOfChildren(Child))
    {
      ChildAtIndex = FigXMLNodeGetChildAtIndex(v6, 0);
      if (FigXMLNodeGetContentAsInt64(ChildAtIndex, &valuePtr))
      {
        return 0;
      }
    }
  }

  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
}

uint64_t xmlSetUniqueIdentifier(uint64_t a1, const void *a2)
{
  cf = 0;
  v3 = *(a1 + 80);
  FigXMLNodeGetTag(v3);
  v4 = FigCFEqual();
  if (v3 && v4)
  {
    cf = FigXMLNodeGetChild(v3, @"UniqueIdentifier");
    if (cf)
    {
      FigXMLNodeRemoveAndClearChild(v3, &cf);
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v6 = FigXMLNodeCreateChildNode(AllocatorForMedia, v3, @"UniqueIdentifier", &cf);
    if (!v6)
    {
      Child = FigXMLNodeGetChild(v3, @"UniqueIdentifier");
      v6 = FigXMLNodeContentSetCFString(Child, a2);
    }
  }

  else
  {
    fig_log_get_emitter();
    v6 = FigSignalErrorAtGM();
  }

  v8 = v6;
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t xmlSetMediaPlaylist(uint64_t a1, const void *a2, const __CFString *a3)
{
  v16 = 0;
  FigXMLNodeGetTag(a1);
  v6 = FigCFEqual();
  if (!a1 || !v6)
  {
    fig_log_get_emitter();
    v10 = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  Child = FigXMLNodeGetChild(a1, @"MediaPlaylist");
  if (Child)
  {
    v8 = CFRetain(Child);
    v16 = v8;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v10 = FigXMLNodeCreateChildNode(AllocatorForMedia, a1, @"MediaPlaylist", &v16);
  if (v10)
  {
LABEL_11:
    v12 = v10;
    goto LABEL_16;
  }

  v8 = v16;
LABEL_9:
  v11 = FigXMLNodeGetChild(v8, a3);
  if (v11)
  {
    v10 = FigXMLNodeContentSetCFString(v11, a2);
    goto LABEL_11;
  }

  v13 = v16;
  cf = 0;
  v14 = FigGetAllocatorForMedia();
  v12 = FigXMLNodeCreateChildNode(v14, v13, a3, &cf);
  if (!v12)
  {
    FigXMLNodeContentSetCFString(cf, a2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_16:
  if (v16)
  {
    CFRelease(v16);
  }

  return v12;
}

uint64_t HLSPersistentStreamInfo_setMediaPlaylist(uint64_t a1, uint64_t a2, const __CFString *a3, OpaqueCMBlockBuffer *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigCFEqual();
  v9 = FigCFEqual();
  if (!DerivedStorage || !a2)
  {
    goto LABEL_38;
  }

  if (!a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    a2 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  if (a3 && (v10 = v9, v8 | v9))
  {
    v11 = FigReadWriteLockLockForWrite();
    if (!v11)
    {
      if (*(DerivedStorage + 8) || (OUTLINED_FUNCTION_2_85(), !v12))
      {
LABEL_40:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        v13 = FigSignalErrorAtGM();
        goto LABEL_41;
      }

      if (FigFileCreateTempFileAtURL())
      {
        OUTLINED_FUNCTION_4_70();
        if (!v12)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      a2 = 0;
      FigGetAllocatorForMedia();
      if (FigByteStreamCreateFromOpenFile())
      {
        OUTLINED_FUNCTION_4_70();
        if (!v12)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      CMBlockBufferGetDataLength(a4);
      v13 = CMByteStreamWriteBlockBuffer();
      if (v13)
      {
LABEL_41:
        a2 = v13;
LABEL_42:
        a4 = 0;
        goto LABEL_18;
      }

      FigFileForkClose();
      AllocatorForMedia = FigGetAllocatorForMedia();
      a4 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(DerivedStorage + 24), a3, 0);
      if (a4)
      {
        if (!FigFileRename())
        {
          if (v10)
          {
            v16 = *(DerivedStorage + 80);
            v17 = @"PathToLocalCopy";
          }

          else
          {
            if (!v8)
            {
LABEL_17:
              a2 = 0;
              OUTLINED_FUNCTION_6_57();
LABEL_18:
              FigReadWriteLockUnlockForWrite();
              goto LABEL_19;
            }

            v16 = *(DerivedStorage + 80);
            v17 = @"PathToOffline";
          }

          v18 = xmlSetMediaPlaylist(v16, a3, v17);
          if (!v18)
          {
            goto LABEL_17;
          }

LABEL_44:
          a2 = v18;
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_4_70();
        if (!v12)
        {
          goto LABEL_18;
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      v18 = FigSignalErrorAtGM();
      goto LABEL_44;
    }
  }

  else
  {
LABEL_38:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v11 = FigSignalErrorAtGM();
  }

  a2 = v11;
  a4 = 0;
LABEL_19:
  FigFileForkClose();
  if (a4)
  {
    CFRelease(a4);
  }

  return a2;
}

uint64_t HLSPersistentStreamInfo_writeMediaSegment(double a1, double a2, uint64_t a3, OpaqueCMBlockBuffer *a4, const void *a5, uint64_t a6, uint64_t a7, CFTypeRef *a8)
{
  if (CMBaseObjectGetDerivedStorage())
  {
    v16 = OUTLINED_FUNCTION_5_61();
    if (v16)
    {
      return v16;
    }

    if (!*(v8 + 8) && (OUTLINED_FUNCTION_2_85(), v17))
    {
      v18 = writeMediaSegment(v8, a4, a5, a6, a7, 1, a8, a1, a2);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      v18 = FigSignalErrorAtGM();
    }

    v19 = v18;
    FigReadWriteLockUnlockForWrite();
    return v19;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }
}

uint64_t HLSPersistentStreamInfo_writeMediaInitializationSegment(uint64_t a1, OpaqueCMBlockBuffer *a2, const void *a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  if (CMBaseObjectGetDerivedStorage())
  {
    v12 = OUTLINED_FUNCTION_5_61();
    if (v12)
    {
      return v12;
    }

    OUTLINED_FUNCTION_2_85();
    if (!v13 || *(v6 + 8))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      v14 = FigSignalErrorAtGM();
    }

    else
    {
      v14 = writeMediaSegment(v6, a2, a3, a4, a5, 0, a6, 0.0, 0.0);
    }

    v15 = v14;
    FigReadWriteLockUnlockForWrite();
    return v15;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }
}

uint64_t HLSPersistentStreamInfo_removeMediaInitializationSegment(uint64_t a1, const void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (CMBaseObjectGetDerivedStorage())
  {
    v4 = OUTLINED_FUNCTION_5_61();
    if (v4)
    {
      return v4;
    }

    if (a2 && !*(v2 + 8) && (Value = CFDictionaryGetValue(*(v2 + 64), a2)) != 0 && (v6 = CFDictionaryGetValue(Value, @"PATH")) != 0)
    {
      v7 = v6;
      AllocatorForMedia = FigGetAllocatorForMedia();
      v9 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(v2 + 24), v7, 0);
      CFURLGetFileSystemRepresentation(v9, 0, buffer, 1023);
      CFDictionaryRemoveValue(*(v2 + 64), a2);
      v10 = xmlSetMediaInitializationSegmentArray(*(v2 + 80), *(v2 + 64));
      if (!v10)
      {
        OUTLINED_FUNCTION_6_57();
        v10 = commitStreamInfo(v2);
        if (!v10)
        {
          v10 = removefile(buffer, 0, 0);
        }
      }

      v11 = v10;
      FigReadWriteLockUnlockForWrite();
      if (v9)
      {
        CFRelease(v9);
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      v11 = FigSignalErrorAtGM();
      FigReadWriteLockUnlockForWrite();
    }

    return v11;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t HLSPersistentStreamInfo_removeMediaSegment(uint64_t a1, const void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (CMBaseObjectGetDerivedStorage())
  {
    v4 = OUTLINED_FUNCTION_5_61();
    if (v4)
    {
      return v4;
    }

    OUTLINED_FUNCTION_2_85();
    if (v5)
    {
      if (!*(v2 + 8))
      {
        if (a2)
        {
          Value = CFDictionaryGetValue(*(v2 + 48), a2);
          if (Value)
          {
            v7 = CFDictionaryGetValue(Value, @"PATH");
            if (v7)
            {
              v8 = v7;
              AllocatorForMedia = FigGetAllocatorForMedia();
              v10 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(v2 + 24), v8, 0);
              CFURLGetFileSystemRepresentation(v10, 0, buffer, 1023);
              CFDictionaryRemoveValue(*(v2 + 48), a2);
              v11 = *(v2 + 56);
              v32.length = CFArrayGetCount(v11);
              v32.location = 0;
              FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v11, v32, a2);
              CFArrayRemoveValueAtIndex(*(v2 + 56), FirstIndexOfValue);
              v13 = *(v2 + 80);
              v14 = *(v2 + 48);
              v15 = *(v2 + 56);
              cf = xmlGetMediaSegments(v13);
              if (cf)
              {
                FigXMLNodeRemoveAndClearChild(v13, &cf);
              }

              v16 = FigGetAllocatorForMedia();
              FigXMLNodeGetTag(v13);
              if (FigCFEqual())
              {
                v17 = v13;
              }

              else
              {
                v17 = 0;
              }

              v18 = FigXMLNodeCreateChildNode(v16, v17, @"MediaSegments", &cf);
              if (!v18)
              {
                if (!v15 || (Count = CFArrayGetCount(v15), Count < 1))
                {
LABEL_21:
                  v24 = 0;
LABEL_22:
                  if (cf)
                  {
                    CFRelease(cf);
                  }

                  if (!v24)
                  {
                    OUTLINED_FUNCTION_6_57();
                    v25 = commitStreamInfo(v2);
                    if (!v25)
                    {
                      v25 = FigCFURLGetFileStats();
                      if (!v25)
                      {
                        v25 = removefile(buffer, 0, 0);
                        if (!v25)
                        {
                          v26 = *(v2 + 192);
                          *(v2 + 192) = v26;
                          v25 = xmlSetMediaBytesStored(*(v2 + 80), v26);
                        }
                      }
                    }

                    v24 = v25;
                  }

                  FigReadWriteLockUnlockForWrite();
                  if (v10)
                  {
                    CFRelease(v10);
                  }

                  return v24;
                }

                v20 = Count;
                v21 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v15, v21);
                  v23 = CFDictionaryGetValue(v14, ValueAtIndex);
                  if (!v23)
                  {
                    break;
                  }

                  v18 = addNodeToMediaSegmentList(v23, cf);
                  if (v18)
                  {
                    goto LABEL_34;
                  }

                  if (v20 == ++v21)
                  {
                    goto LABEL_21;
                  }
                }

                fig_log_get_emitter();
                OUTLINED_FUNCTION_20_0();
                v18 = FigSignalErrorAtGM();
              }

LABEL_34:
              v24 = v18;
              goto LABEL_22;
            }
          }
        }
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v24 = FigSignalErrorAtGM();
    FigReadWriteLockUnlockForWrite();
    return v24;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t HLSPersistentStreamInfo_upgradeForWriting()
{
  if (CMBaseObjectGetDerivedStorage())
  {
    v1 = OUTLINED_FUNCTION_5_61();
    if (v1)
    {
      return v1;
    }

    if (*(v0 + 8))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      v2 = FigSignalErrorAtGM();
    }

    else if (*(v0 + 112))
    {
      v2 = 0;
    }

    else
    {
      v2 = lockLockFile(v0);
      if (!v2)
      {
        *(v0 + 112) = 1;
      }
    }

    FigReadWriteLockUnlockForWrite();
    return v2;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }
}

uint64_t HLSPersistentStreamInfo_downgradeForReading()
{
  if (CMBaseObjectGetDerivedStorage())
  {
    v1 = OUTLINED_FUNCTION_5_61();
    if (v1)
    {
      return v1;
    }

    if (*(v0 + 8))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      v3 = FigSignalErrorAtGM();
    }

    else
    {
      OUTLINED_FUNCTION_2_85();
      if (!v2)
      {
        v5 = 0;
LABEL_8:
        FigReadWriteLockUnlockForWrite();
        return v5;
      }

      *(v0 + 112) = 0;
      v3 = lockLockFile(v0);
    }

    v5 = v3;
    goto LABEL_8;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();

  return FigSignalErrorAtGM();
}

uint64_t HLSPersistentStreamInfo_commitStreamInfo()
{
  if (CMBaseObjectGetDerivedStorage())
  {
    v1 = OUTLINED_FUNCTION_5_61();
    if (v1)
    {
      return v1;
    }

    if (*(v0 + 72) == 1)
    {
      OUTLINED_FUNCTION_2_85();
      if (!v2 || *(v0 + 8))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        v3 = FigSignalErrorAtGM();
      }

      else
      {
        v3 = commitStreamInfo(v0);
      }

      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    FigReadWriteLockUnlockForWrite();
    return v4;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }
}

uint64_t xmlSetMediaInitializationSegmentArray(uint64_t a1, const __CFDictionary *a2)
{
  MediaInitializationSegments = xmlGetMediaInitializationSegments(a1);
  context = MediaInitializationSegments;
  FigXMLNodeGetTag(a1);
  v5 = FigCFEqual();
  if (!a1 || !v5)
  {
    fig_log_get_emitter();
    ChildNode = FigSignalErrorAtGM();
    if (!MediaInitializationSegments)
    {
      return ChildNode;
    }

    goto LABEL_8;
  }

  if (MediaInitializationSegments)
  {
    FigXMLNodeRemoveAndClearChild(a1, &context);
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  ChildNode = FigXMLNodeCreateChildNode(AllocatorForMedia, a1, @"MediaInitializationSegments", &context);
  MediaInitializationSegments = context;
  if (!ChildNode)
  {
    CFDictionaryApplyFunction(a2, applierAddNodeToMediaInitializationSegmentList, context);
    MediaInitializationSegments = context;
  }

  if (MediaInitializationSegments)
  {
LABEL_8:
    CFRelease(MediaInitializationSegments);
  }

  return ChildNode;
}

uint64_t addNodeToMediaSegmentList(const __CFDictionary *a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0.0;
  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = FigXMLNodeCreateChildNode(AllocatorForMedia, a2, @"SEG", &cf);
  if (!v5)
  {
    Value = CFDictionaryGetValue(a1, @"URL");
    if (!Value || (v5 = FigXMLNodeAttributeSetCFString(cf, @"URL", Value), !v5))
    {
      v7 = CFDictionaryGetValue(a1, @"PATH");
      if (!v7 || (v5 = FigXMLNodeAttributeSetCFString(cf, @"PATH", v7), !v5))
      {
        if (!FigCFDictionaryGetInt64IfPresent() || (v5 = FigXMLNodeAttributeSetInt64(cf, @"SeqNum", v11), !v5))
        {
          OUTLINED_FUNCTION_298();
          FigCFDictionaryGetDoubleIfPresent();
          v5 = FigXMLNodeAttributeSetDouble(cf, @"Tim", v12);
          if (!v5)
          {
            OUTLINED_FUNCTION_298();
            FigCFDictionaryGetDoubleIfPresent();
            v5 = FigXMLNodeAttributeSetDouble(cf, @"Dur", v12);
            if (!v5)
            {
              OUTLINED_FUNCTION_298();
              FigCFDictionaryGetInt64IfPresent();
              v5 = FigXMLNodeAttributeSetInt64(cf, @"Off", v11);
              if (!v5)
              {
                OUTLINED_FUNCTION_298();
                FigCFDictionaryGetInt64IfPresent();
                v5 = FigXMLNodeAttributeSetInt64(cf, @"Len", v11);
              }
            }
          }
        }
      }
    }
  }

  v8 = v5;
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

void applierAddNodeToMediaInitializationSegmentList(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  cf = 0;
  v9 = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (!FigXMLNodeCreateChildNode(AllocatorForMedia, a3, @"ISEG", &cf))
  {
    Value = CFDictionaryGetValue(a2, @"URL");
    if (!Value || !FigXMLNodeAttributeSetCFString(cf, @"URL", Value))
    {
      v7 = CFDictionaryGetValue(a2, @"PATH");
      if ((!v7 || !FigXMLNodeAttributeSetCFString(cf, @"PATH", v7)) && (!FigCFDictionaryGetInt64IfPresent() || !FigXMLNodeAttributeSetInt64(cf, @"SeqNum", v9)))
      {
        OUTLINED_FUNCTION_298();
        FigCFDictionaryGetInt64IfPresent();
        if (!FigXMLNodeAttributeSetInt64(cf, @"Off", v9))
        {
          OUTLINED_FUNCTION_298();
          FigCFDictionaryGetInt64IfPresent();
          FigXMLNodeAttributeSetInt64(cf, @"Len", v9);
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t copyMediaSegment(uint64_t a1, CFDictionaryRef theDict, void *key, CMBlockBufferRef *a4)
{
  v4 = 0;
  dataPointerOut = 0;
  cf = 0;
  totalLengthOut = 0;
  theBuffer = 0;
  lengthAtOffsetOut = 0;
  if (!key || !a4)
  {
    goto LABEL_27;
  }

  if (*(a1 + 8))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v4 = FigSignalErrorAtGM();
    goto LABEL_27;
  }

  Value = CFDictionaryGetValue(theDict, key);
  v8 = Value;
  if (!Value)
  {
    v24 = 0;
    goto LABEL_24;
  }

  v26 = 0;
  v27 = 0;
  v9 = CFDictionaryGetValue(Value, @"PATH");
  if (!v9)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v4 = FigSignalErrorAtGM();
    v8 = 0;
    goto LABEL_25;
  }

  v10 = v9;
  FigCFDictionaryGetInt64IfPresent();
  AllocatorForMedia = FigGetAllocatorForMedia();
  v8 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(a1 + 24), v10, 0);
  if (!v8)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
LABEL_41:
    BlockBuffer = FigSignalErrorAtGM();
    goto LABEL_42;
  }

  FigGetAllocatorForMedia();
  BlockBuffer = CMByteStreamCreateForFileURL();
  if (BlockBuffer)
  {
LABEL_42:
    v4 = BlockBuffer;
    goto LABEL_25;
  }

  if (*(a1 + 200))
  {
    goto LABEL_15;
  }

  v13 = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v4 = FigSignalErrorAtGM();
    if (v4)
    {
      goto LABEL_25;
    }

LABEL_15:
    BlockBuffer = FigMemoryPoolCreateBlockBuffer();
    if (BlockBuffer)
    {
      goto LABEL_42;
    }

    BlockBuffer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
    if (BlockBuffer)
    {
      goto LABEL_42;
    }

    if (lengthAtOffsetOut == totalLengthOut)
    {
      v21 = dataPointerOut;
      v22 = cf;
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v23)
      {
        v4 = 4294954514;
        goto LABEL_25;
      }

      BlockBuffer = v23(v22, v27, 0, v21, &v26);
      if (BlockBuffer)
      {
        goto LABEL_42;
      }

      if (v27 == v26)
      {
        v24 = theBuffer;
LABEL_24:
        v4 = 0;
        *a4 = v24;
        theBuffer = 0;
        goto LABEL_25;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
    }

    goto LABEL_41;
  }

  v15 = Mutable;
  v16 = FigGetAllocatorForMedia();
  v17 = CFStringCreateWithFormat(v16, 0, @"[FigHLSPersistentInfoStore %p]", a1);
  if (v17)
  {
    v18 = v17;
    CFDictionarySetValue(v15, *MEMORY[0x1E69628C8], v17);
    v19 = CMMemoryPoolCreate(v15);
    *(a1 + 200) = v19;
    if (v19)
    {
      v4 = 0;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      v4 = FigSignalErrorAtGM();
    }

    CFRelease(v15);
    v20 = v18;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v4 = FigSignalErrorAtGM();
    v20 = v15;
  }

  CFRelease(v20);
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_25:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v4;
}