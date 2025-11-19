uint64_t fpfsi_setCAImageQueueFlagsForTrack(uint64_t a1)
{
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 664);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
  }

  else
  {
    Count = 0;
  }

  FigStreamTrackGetCAImageQueueFlagsForTrack(a1, &v11 + 1, &v11);
  if (Count >= 1 && v11)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 664), i);
      CAImageQueueSetFlags();
    }
  }

  v6 = *(a1 + 104);
  if (!v6)
  {
    return 0;
  }

  v8 = v11;
  v7 = HIDWORD(v11);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v9)
  {
    return v9(v6, v7, v8);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t fpfs_RenderWithEndSignal(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = *(a1 + 112);
  if (*(v3 + 64))
  {
    fpfs_RenderWithEndSignal_cold_1(&v13);
    return v13;
  }

  CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    cf = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (cf)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v8 = CFDictionaryCreate(AllocatorForMedia, &kFigPlaybackItemParameter_RenderPipelineToStart, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v8)
      {
        goto LABEL_7;
      }
    }

LABEL_10:
    *(v3 + 64) = 0;
    return 4294954434;
  }

  v11 = FigGetAllocatorForMedia();
  v8 = CFDictionaryCreate(v11, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_7:
  v9 = *MEMORY[0x1E695E4D0];
  CMSetAttachment(a2, *MEMORY[0x1E6960490], *MEMORY[0x1E695E4D0], 1u);
  CMSetAttachment(a2, *MEMORY[0x1E6960500], v8, 1u);
  *(v3 + 64) = v8;
  CMSetAttachment(a2, *MEMORY[0x1E6962E00], v9, 1u);
  if (CMBufferQueueIsEmpty(*(a1 + 88)))
  {
    return fpfs_RenderBuffer(a1, a2);
  }

  else
  {
    return CMBufferQueueEnqueue(*(a1 + 88), a2);
  }
}

void fpfs_RemoveDoNotDisplay(opaqueCMSampleBuffer *a1)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (ValueAtIndex)
    {
      v3 = *MEMORY[0x1E6960410];

      CFDictionaryRemoveValue(ValueAtIndex, v3);
    }
  }
}

const void *fpfs_StealBuffer(const void *buf, CMBufferQueueRef queue)
{
  if (queue)
  {
    return CMBufferQueueEnqueue(queue, buf);
  }

  return buf;
}

void fpfs_UpdateDimensions(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *DerivedStorage;
  v6 = CMBaseObjectGetDerivedStorage();
  v28 = *MEMORY[0x1E695F060];
  if (!a2 && *(DerivedStorage + 840) == 0.0)
  {
    return;
  }

  RenderingNonGapTrackofType = fpfs_FirstRenderingNonGapTrackofType(a1, 1986618469);
  if (!RenderingNonGapTrackofType)
  {
    for (RenderingNonGapTrackofType = *(DerivedStorage + 1024); RenderingNonGapTrackofType; RenderingNonGapTrackofType = *(RenderingNonGapTrackofType + 24))
    {
      if (*(RenderingNonGapTrackofType + 48) == 1986618469 && !*(RenderingNonGapTrackofType + 472) && *(RenderingNonGapTrackofType + 56))
      {
        break;
      }
    }
  }

  v8 = *(DerivedStorage + 1680);
  if (v8 && FigAlternateIsAudioOnly(v8))
  {
LABEL_28:
    if (!RenderingNonGapTrackofType)
    {
      goto LABEL_29;
    }

LABEL_30:
    PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(*(RenderingNonGapTrackofType + 56), *(DerivedStorage + 844), *(DerivedStorage + 845));
    width = PresentationDimensions.width;
    height = PresentationDimensions.height;
    v28 = PresentationDimensions;
    v14 = *(DerivedStorage + 3368);
    v15 = *(RenderingNonGapTrackofType + 72);
    *(DerivedStorage + 3368) = v15;
    if (v15)
    {
      CFRetain(v15);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    goto LABEL_34;
  }

  if (RenderingNonGapTrackofType)
  {
    goto LABEL_30;
  }

  v9 = *(DerivedStorage + 1040);
  if (v9)
  {
    RenderingNonGapTrackofType = 0;
    do
    {
      if (*(v9 + 48) == 1986618469 && !*(v9 + 472) && *(v9 + 56))
      {
        RenderingNonGapTrackofType = v9;
      }

      v9 = *(v9 + 24);
    }

    while (v9);
    if (RenderingNonGapTrackofType)
    {
      goto LABEL_30;
    }
  }

  v10 = *(DerivedStorage + 1056);
  if (v10)
  {
    RenderingNonGapTrackofType = 0;
    do
    {
      if (*(v10 + 48) == 1986618469 && !*(v10 + 472) && *(v10 + 56))
      {
        RenderingNonGapTrackofType = v10;
      }

      v10 = *(v10 + 24);
    }

    while (v10);
    goto LABEL_28;
  }

LABEL_29:
  height = v28.height;
  width = v28.width;
LABEL_34:
  v16 = height;
  *(DerivedStorage + 800) = v16;
  v17 = width;
  *(DerivedStorage + 796) = v17;
  fpfs_ReadjustDimensions();
  v24 = *(DerivedStorage + 1872);
  if (v24)
  {
    FigLegibleOutputManagerSetVideoDisplaySize(v24, v28.width, v28.height);
  }

  if (*(v6 + 462))
  {
    v25 = *(DerivedStorage + 816);
    v26 = *(DerivedStorage + 808);
    if (v25 && *(v25 + 32))
    {
      fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(*(v6 + 464), *(v6 + 472), v25, *(v6 + 480), a1);
    }

    if (v26 && *(v26 + 32))
    {
      fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(*(v6 + 464), *(v6 + 472), v26, *(v6 + 480), a1);
    }
  }

  if (!*(DerivedStorage + 530))
  {
    NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v5, a1, v18, v19, v20, v21, v22, v23, @"CurrentDimensions", @"VideoSlotArray");
    fpfs_EnqueueNotification(v5, @"DimensionsChanged", a1, NotificationPayloadForProperties);
    if (NotificationPayloadForProperties)
    {
      CFRelease(NotificationPayloadForProperties);
    }
  }
}

uint64_t GetCurrentManifold(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 < 3)
  {
    return *(a1 + 16 * a2 + 8 * a3 + 976);
  }

  FigSignalErrorAtGM();
  return -1;
}

uint64_t fpfs_SetAlternateWithContext(uint64_t a1, const void *a2, const void *a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8, unsigned int a9)
{
  v155 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = DerivedStorage;
  v132 = *(DerivedStorage + 1072);
  cf = 0;
  v138 = 0;
  v127 = *MEMORY[0x1E6960C70];
  *&v136.value = *MEMORY[0x1E6960C70];
  v126 = *(MEMORY[0x1E6960C70] + 16);
  v136.epoch = v126;
  v17 = MEMORY[0x1E695FF58];
  if (!*(DerivedStorage + 912))
  {
    value_low = 0;
    value = 0;
    goto LABEL_72;
  }

  if (*(DerivedStorage + 1680))
  {
    if (*(DerivedStorage + 1576) && (*(DerivedStorage + 332) & 1) != 0)
    {
      v154 = *(DerivedStorage + 320);
      lhs = *(DerivedStorage + 1160);
      CMTimeAdd(&v136, &v154, &lhs);
    }

    else
    {
      fpfs_GetNextTimeToPlayIfEstablished(a2, &lhs);
      rhs = *(v16 + 1160);
      CMTimeAdd(&v154, &lhs, &rhs);
      v136 = v154;
    }
  }

  v129 = a8;
  fpfsi_SetSwitchReasonCode(v16, a9);
  if (*(v16 + 2820) != *(v16 + 2816))
  {
    *(v16 + 2312) = 1;
    fpfsi_RTCReportingReportVariantSwitchComplete(a2, 1u);
  }

  v130 = a4;
  v18 = (a4 >> 2) & 1;
  v19 = *(v16 + 1736);
  if (v19)
  {
    if (!CFEqual(a3, v19))
    {
      v20 = *(v16 + 1736);
      if (v20)
      {
        CFRelease(v20);
        *(v16 + 1736) = 0;
      }
    }
  }

  v21 = *(v16 + 1744);
  if (v21 && v21 != a3)
  {
    fpfsi_RTCReportingReportTrialSwitchData(a2, 1);
    v22 = *(v16 + 1744);
    if (v22)
    {
      CFRelease(v22);
      *(v16 + 1744) = 0;
    }

    v23 = *(v16 + 96);
    if (v23)
    {
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v24)
      {
        v24(v23, @"AfmfpbProperty_TrialAlternate", 0);
      }
    }
  }

  if ((v18 & 1) == 0)
  {
    v25 = *(v16 + 1680);
    if (v25)
    {
      if (v25 != a3)
      {
        fpfs_CreateAccessLogEntryWithUnlock(a2, &cf);
      }
    }
  }

  IsIFrameOnly = FigAlternateIsIFrameOnly(a3);
  v131 = v18;
  if (fpfs_IsClosedCaptioningSelected())
  {
    fpfs_SetAlternateWithContext_cold_1();
    value = v154.value;
    if (IsIFrameOnly)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v27 = *(v16 + 1768);
    if (v27)
    {
      value = CFRetain(v27);
      if (!IsIFrameOnly)
      {
        goto LABEL_31;
      }

LABEL_29:
      IsAudioOnly = 0;
      goto LABEL_32;
    }

    value = 0;
    if (IsIFrameOnly)
    {
      goto LABEL_29;
    }
  }

LABEL_31:
  IsAudioOnly = FigAlternateIsAudioOnly(a3);
LABEL_32:
  v134 = value;
  if (*v17 == 1)
  {
    FigAlternateGetPeakBitRate(a3);
    if (!FigAlternateGetAverageBitRate(a3))
    {
      FigAlternateGetPeakBitRate(a3);
    }

    kdebug_trace();
  }

  v135 = a1;
  if (*(a5 + 12))
  {
    v154 = *a5;
    v29 = v17;
    v30 = CMBaseObjectGetDerivedStorage();
    FigStreamAlternateSubstreamURLsMatchBetweenVariants(*(v30 + 1680), a3, *(v30 + 1768), 1);
    FigStreamAlternateSubstreamURLsMatchBetweenVariants(*(v30 + 1680), a3, *(v30 + 1768), 2);
    v31 = *(v30 + 1680);
    v32 = *(v30 + 1768);
    v17 = v29;
    FigStreamAlternateSubstreamURLsMatchBetweenVariants(v31, a3, v32, 4);
    fpfs_GetItemBufferedDuration(a2);
    lhs = v154;
    v139 = *a5;
    CMTimeSubtract(&rhs, &lhs, &v139);
    CMTimeAbsoluteValue(&lhs, &rhs);
    CMTimeMake(&rhs, 50, 1000);
    CMTimeCompare(&lhs, &rhs);
  }

  v33 = *(v16 + 504);
  if (v33)
  {
    CFRelease(v33);
    *(v16 + 504) = 0;
  }

  v34 = *(v16 + 912);
  rhs = v136;
  v139 = *a5;
  v35 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v35)
  {
    goto LABEL_70;
  }

  v154 = rhs;
  lhs = v139;
  v36 = v35(v34, a3, value, v129, IsAudioOnly, v130, &v154, &lhs, a6, &v138 + 4, &v138, v16 + 12 * v131 + 928);
  if (v36)
  {
    goto LABEL_215;
  }

  v37 = *(v16 + 120);
  if (v37)
  {
    v38 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v38)
    {
      goto LABEL_70;
    }

    v36 = v38(v37, @"AlternateFilterMonitorProperty_SelectedAlternate", a3);
    if (v36)
    {
      goto LABEL_215;
    }

    v39 = *(v16 + 120);
    v40 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v40)
    {
      goto LABEL_70;
    }

    v36 = v40(v39, @"AlternateFilterMonitorProperty_SelectedMediaArray", value);
    if (v36)
    {
      goto LABEL_215;
    }
  }

  if (a3 && FigAlternateGetLastKnownValueForIsFullyCached())
  {
    FigBytePumpGetFigBaseObject(*(v16 + 912));
    v42 = v41;
    v43 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v43)
    {
      v36 = v43(v42, 0x1F0B1F8B8, *MEMORY[0x1E695E4C0]);
      if (!v36)
      {
        goto LABEL_51;
      }

LABEL_215:
      value_low = v36;
      goto LABEL_71;
    }

LABEL_70:
    value_low = 4294954514;
    goto LABEL_71;
  }

LABEL_51:
  if ((v130 >> 3))
  {
    v44 = *(v16 + 1744);
    if (v44)
    {
      CFRelease(v44);
      *(v16 + 1744) = 0;
    }

    HIDWORD(v138) = *(v16 + 1752) | *(v16 + 1072);
  }

  if ((v131 & 1) == 0 && cf)
  {
    fpfs_CommitAccessLogEntry(a2, cf);
  }

  if (a7)
  {
    *a7 = v138;
  }

  if (!*(v16 + 1680))
  {
    v45 = *(v16 + 96);
    if (v45)
    {
      *&v154.value = *MEMORY[0x1E695F060];
      FigAlternatePlaybackBitrateMonitorGetMaxResolutionAndBitrate(*&v154.value, *&v154.timescale, v45, &v154.value, (v16 + 2900), 0);
    }

    fpfs_DetermineRanksOfVariant(v16, a3, (v16 + 1728), (v16 + 1732));
    *(v16 + 2824) = *(v16 + 1728);
    *(v16 + 2852) = *(v16 + 1732);
    *(v16 + 2860) = FigAlternateGetVideoQualityIndex(a3);
    *(v16 + 2828) = *(v16 + 1728);
    *(v16 + 2856) = *(v16 + 1732);
    *(v16 + 2864) = FigAlternateGetVideoQualityIndex(a3);
    *(v16 + 2884) = *(v16 + 1728);
    *(v16 + 2888) = FigAlternateGetAverageBitRate(a3);
    fpfsi_RTCReportingUpdateInitialVariantRank();
  }

  if (!v131)
  {
    if (!FigCFEqual())
    {
      fpfsi_metricEventPublishVariantChangeOrVariantChangeStartEvent(a2, a3, *(v16 + 1680), 0, 0);
    }

    fpfs_ReportVariantSwitchStart(a2, a3, a9, 0, (v130 >> 3) & 1);
    v46 = HIDWORD(v138);
    v47 = CMBaseObjectGetDerivedStorage();
    v48 = v47;
    if ((v46 & 3) > 1)
    {
      if ((v46 & 3) == 3)
      {
        v49 = 0;
        v50 = 2;
      }

      else
      {
        v50 = 1;
        v49 = 1;
      }
    }

    else
    {
      if ((v46 & 3) == 0)
      {
LABEL_93:
        if ((v46 & 4) != 0)
        {
          if (!fpfs_IsClosedCaptioningSelected())
          {
            v57 = v17;
            v58 = *(v48 + 1768);
            CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
            MediaTypeInMediaArray = fpfs_FindMediaTypeInMediaArray(v58, CFStringForOSTypeValue, 0);
            if (MediaTypeInMediaArray)
            {
              CFDictionaryGetValue(MediaTypeInMediaArray, @"MediaSelectionOptionsDisplaysNonForcedSubtitles");
            }

            v17 = v57;
          }

          ++*(v48 + 1080);
        }

        v61 = v17;
        fpfsi_setNonForcedSubtitlesEnabled();
        v62 = *(v48 + 96);
        if (v62)
        {
          v63 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v63)
          {
            v63(v62, @"AfmfpbProperty_CurrentAlternate", a3);
          }
        }

        v64 = *(v48 + 2872);
        v65 = *(v48 + 1680);
        *(v48 + 2872) = v65;
        if (v65)
        {
          CFRetain(v65);
        }

        if (v64)
        {
          CFRelease(v64);
        }

        v66 = *(v48 + 1680);
        *(v48 + 1680) = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v66)
        {
          CFRelease(v66);
        }

        fpfsi_CheckInterstitialVideoLayoutCompatibility();
        v73 = *(v48 + 1704);
        if (*(v48 + 1680) == v73 && v73)
        {
          CFRelease(v73);
          *(v48 + 1704) = 0;
        }

        NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(*v48, a2, v67, v68, v69, v70, v71, v72, @"SupportsFrameStepping", @"CanPlayFastForward");
        fpfs_EnqueueNotification(*v48, @"AlternateStreamChanged", a2, NotificationPayloadForProperties);
        if (NotificationPayloadForProperties)
        {
          CFRelease(NotificationPayloadForProperties);
        }

        *(v48 + 1072) = v46;
        v75 = *(v48 + 553);
        v76 = (v48 + 475);
        v77 = 472;
        v17 = v61;
        while (1)
        {
          v78 = *(v76 - 3);
          if (v75)
          {
            if (!*(v76 - 3))
            {
              goto LABEL_125;
            }

            if (!*(v48 + 1744))
            {
              goto LABEL_123;
            }

            v78 = *v76;
          }

          if (v78)
          {
LABEL_123:
            if (((v46 >> (v77 + 40)) & 1) == 0)
            {
              ++*(v48 + 1080);
            }
          }

LABEL_125:
          ++v77;
          ++v76;
          if (v77 == 475)
          {
            goto LABEL_126;
          }
        }
      }

      v49 = 0;
      v50 = 1;
    }

    *(v47 + 1080) = v50;
    *(v47 + 1088) = v49;
    goto LABEL_93;
  }

  v54 = *(v16 + 1744);
  *(v16 + 1744) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  *(v16 + 1752) = v138;
  fpfs_ReportVariantSwitchStart(a2, a3, a9, 1u, 0);
  v55 = *(v16 + 96);
  if (v55)
  {
    v56 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v56)
    {
      v56(v55, @"AfmfpbProperty_TrialAlternate", a3);
    }
  }

LABEL_126:
  v79 = CMBaseObjectGetDerivedStorage();
  rhs.value = 0;
  v80 = *(v79 + 1680);
  if (v80 && !FigAlternateIsIFrameOnly(v80) && !FigAlternateSelectionBossHasFilter(*(v79 + 40), @"VideoLayoutPinning"))
  {
    VideoLayoutTags = FigAlternateGetVideoLayoutTags(*(v79 + 1680));
    VideoLayoutLoggingStringFromCollectionArray = FigAlternateCreateVideoLayoutLoggingStringFromCollectionArray(VideoLayoutTags);
    if (VideoLayoutLoggingStringFromCollectionArray)
    {
      CFRelease(VideoLayoutLoggingStringFromCollectionArray);
    }

    updated = fpfsi_UpdateResourceSpecifierOnResourceArbiter(a2);
    if (updated)
    {
      value_low = updated;
    }

    else
    {
      if (fpfs_SetAlternateWithContext_cold_2(VideoLayoutTags, &rhs, (v79 + 40), &v154))
      {
        goto LABEL_129;
      }

      value_low = LODWORD(v154.value);
    }

LABEL_71:
    *(v16 + 2308) = 0;
    goto LABEL_72;
  }

LABEL_129:
  value_low = 0;
  v81 = v138;
  *(v16 + 2844) = v138;
  if ((v131 & 1) == 0 && (v81 & 7) != 0)
  {
    v82 = 0;
    while (1)
    {
      v83 = 1 << v82;
      if ((v138 & (1 << v82)) != 0)
      {
        break;
      }

LABEL_206:
      if (++v82 == 3)
      {
        value_low = 0;
        value = v134;
        v17 = MEMORY[0x1E695FF58];
        goto LABEL_72;
      }
    }

    v84 = v83 & v132;
    if ((v83 & v132) != 0)
    {
      if ((HIDWORD(v138) & v83) != 0)
      {
        if (!dword_1EAF169F0)
        {
          goto LABEL_165;
        }

        LODWORD(v139.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v86 = v139.value;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v87 = v86;
        }

        else
        {
          v87 = v86 & 0xFFFFFFFE;
        }

        if (!v87)
        {
LABEL_164:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_165:
          *(v16 + 472 + v82) = 0;
          v100 = CMBaseObjectGetDerivedStorage();
          if (*(v100 + 471))
          {
            *(v100 + 471) = 0;
          }

          goto LABEL_179;
        }

        if (v135)
        {
          v88 = (CMBaseObjectGetDerivedStorage() + 888);
          if (a2)
          {
LABEL_142:
            v89 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_163:
            LODWORD(lhs.value) = 136316418;
            *(&lhs.value + 4) = "fpfs_SetAlternateWithContext";
            LOWORD(lhs.flags) = 2048;
            *(&lhs.flags + 2) = v135;
            HIWORD(lhs.epoch) = 2082;
            v143 = v88;
            v144 = 2048;
            v145 = a2;
            v146 = 2082;
            v147 = v89;
            v148 = 1024;
            v149 = v82;
            _os_log_send_and_compose_impl();
            goto LABEL_164;
          }
        }

        else
        {
          v88 = "";
          if (a2)
          {
            goto LABEL_142;
          }
        }

        v89 = "";
        goto LABEL_163;
      }

      if (!dword_1EAF169F0)
      {
        goto LABEL_179;
      }

      LODWORD(v139.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v95 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v96 = v139.value;
      if (os_log_type_enabled(v95, type))
      {
        v97 = v96;
      }

      else
      {
        v97 = v96 & 0xFFFFFFFE;
      }

      if (!v97)
      {
LABEL_178:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_179;
      }

      if (v135)
      {
        v98 = (CMBaseObjectGetDerivedStorage() + 888);
        if (a2)
        {
LABEL_158:
          v99 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_177:
          LODWORD(lhs.value) = 136316418;
          *(&lhs.value + 4) = "fpfs_SetAlternateWithContext";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = v135;
          HIWORD(lhs.epoch) = 2082;
          v143 = v98;
          v144 = 2048;
          v145 = a2;
          v146 = 2082;
          v147 = v99;
          v148 = 1024;
          v149 = v82;
          _os_log_send_and_compose_impl();
          goto LABEL_178;
        }
      }

      else
      {
        v98 = "";
        if (a2)
        {
          goto LABEL_158;
        }
      }

      v99 = "";
      goto LABEL_177;
    }

    if (!dword_1EAF169F0)
    {
LABEL_171:
      v101 = v16 + 248 + 24 * v82;
      *v101 = v127;
      *(v101 + 16) = v126;
      v102 = CMBaseObjectGetDerivedStorage();
      if (*(v102 + 471))
      {
        *(v102 + 471) = 0;
      }

      *(v16 + 1104 + 8 * v82) = *(v16 + 1104 + 8 * *(v16 + 1088));
LABEL_179:
      if (*(v16 + 976 + 16 * v82))
      {
        fpfs_WeakStreamEnd(v16, v82, 0);
        StoreCurrentManifold(v16, v82, 0, 0);
      }

      if (!v84)
      {
        goto LABEL_206;
      }

      fpfs_DeleteStrandedTracksUponSwitch(a2, v82, 0);
      v103 = CMBaseObjectGetDerivedStorage();
      v104 = *(v103 + 1024);
      if (!v104)
      {
        goto LABEL_206;
      }

      v105 = v103;
      v106 = v103 + 8 * v82;
      v107 = (v106 + 1104);
      v108 = *(v106 + 1104);
      v109 = (v106 + 1128);
      v110 = (v103 + 16 * v82 + 984);
      v111 = v108;
      do
      {
        if (*(v104 + 196) == v82)
        {
          v112 = *(v104 + 64);
          v113 = v112 == *v110;
          if (v112 == *v110)
          {
            v114 = v109;
          }

          else
          {
            v114 = v107;
          }

          if (!v113)
          {
            v111 = *(v104 + 80);
          }

          *v114 = *(v104 + 80);
        }

        v104 = *(v104 + 24);
      }

      while (v104);
      if (v111 == v108 || !dword_1EAF169F0)
      {
        goto LABEL_206;
      }

      LODWORD(v139.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v115 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v116 = v139.value;
      if (os_log_type_enabled(v115, type))
      {
        v117 = v116;
      }

      else
      {
        v117 = v116 & 0xFFFFFFFE;
      }

      if (!v117)
      {
        goto LABEL_205;
      }

      v118 = *v105;
      if (v118)
      {
        v119 = (CMBaseObjectGetDerivedStorage() + 888);
        if (a2)
        {
LABEL_200:
          v120 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_204:
          v121 = *v107;
          LODWORD(lhs.value) = 136316930;
          *(&lhs.value + 4) = "fpfsi_UpdateCurrentDiscontinuityDomainBasedOnTracklist";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = v118;
          HIWORD(lhs.epoch) = 2082;
          v143 = v119;
          v144 = 2048;
          v145 = a2;
          v146 = 2082;
          v147 = v120;
          v148 = 1024;
          v149 = v82;
          v150 = 2048;
          v151 = v108;
          v152 = 2048;
          v153 = v121;
          _os_log_send_and_compose_impl();
LABEL_205:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_206;
        }
      }

      else
      {
        v119 = "";
        if (a2)
        {
          goto LABEL_200;
        }
      }

      v120 = "";
      goto LABEL_204;
    }

    LODWORD(v139.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v90 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v91 = v139.value;
    if (os_log_type_enabled(v90, type))
    {
      v92 = v91;
    }

    else
    {
      v92 = v91 & 0xFFFFFFFE;
    }

    if (!v92)
    {
LABEL_170:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_171;
    }

    if (v135)
    {
      v93 = (CMBaseObjectGetDerivedStorage() + 888);
      if (a2)
      {
LABEL_150:
        v94 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_169:
        LODWORD(lhs.value) = 136316418;
        *(&lhs.value + 4) = "fpfs_SetAlternateWithContext";
        LOWORD(lhs.flags) = 2048;
        *(&lhs.flags + 2) = v135;
        HIWORD(lhs.epoch) = 2082;
        v143 = v93;
        v144 = 2048;
        v145 = a2;
        v146 = 2082;
        v147 = v94;
        v148 = 1024;
        v149 = v82;
        _os_log_send_and_compose_impl();
        goto LABEL_170;
      }
    }

    else
    {
      v93 = "";
      if (a2)
      {
        goto LABEL_150;
      }
    }

    v94 = "";
    goto LABEL_169;
  }

LABEL_72:
  isExternalVideoOutput = fpfs_isExternalVideoOutput();
  if (value_low == -16835 && isExternalVideoOutput)
  {
    value_low = FigSignalErrorAtGM();
  }

  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (*v17 == 1)
  {
    kdebug_trace();
  }

  return value_low;
}

void StoreCurrentManifold(uint64_t a1, unsigned int a2, unsigned int a3, const void *a4)
{
  cf = 0;
  if (a2 >= 3)
  {
    StoreCurrentManifold_cold_1();
    return;
  }

  if (fpfsi_CopyPlayerAndItemFromItemRetainProxy(*(a1 + 16), 0, &cf))
  {
    v10 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_13;
  }

  v8 = (a1 + 16 * a2 + 8 * a3 + 976);
  if (*v8)
  {
    FigStopForwardingMediaServicesProcessDeathNotification();
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  *v8 = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v10 = cf;
  if (a4)
  {
    FigStartForwardingMediaServicesProcessDeathNotification();
  }

  if (v10)
  {
LABEL_13:

    CFRelease(v10);
  }
}

void fpfs_DeleteStrandedTracksUponSwitch(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 1024);
  if (v6)
  {
    v7 = DerivedStorage;
    do
    {
      if (!*(v7 + 1024))
      {
        break;
      }

      v8 = *(v6 + 24);
      if (v8)
      {
        v9 = *(v8 + 32);
      }

      else
      {
        v9 = -1;
      }

      if (fpfs_LooksLikeStrandedTrack(a1, a2, 0, v6))
      {
        if (v6 == a3)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        fpfs_DeleteTrack(a1, v6);
      }

      if ((v9 & 0x8000000000000000) == 0)
      {
        if (!*(v7 + 1024))
        {
          return;
        }

        v8 = *(v7 + 1024);
        while (*(v8 + 32) != v9)
        {
          v8 = *(v8 + 24);
          if (!v8)
          {
            v8 = *(v7 + 1024);
            break;
          }
        }
      }

      v6 = v8;
    }

    while (v8);
  }
}

void fpfs_CompleteTrialSync(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(a2 + 48);
  if (v4 == 1936684398)
  {
    v6 = DerivedStorage;
    memset(&v9, 0, sizeof(v9));
    fpfs_GetTime(DerivedStorage, &v8);
    v7 = **&MEMORY[0x1E6960C70];
    if (fpfs_CheckAudioSync(v6, a2, 0, &v8, &v7, 1, &v9))
    {
      v8 = v9;
      fpfs_FinishAudioSyncAndStart();
    }
  }

  else if (v4 == 1986618469)
  {
    fpfs_CheckVideoSyncQueue();
    if (v5)
    {

      fpfs_FinishVideoSync();
    }
  }
}

void fpfs_ResolveAllWaitingTracks(const __CFArray *a1)
{
  v288 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 1024);
  if (!v3)
  {
    return;
  }

  v4 = DerivedStorage;
  v5 = 0x7FFFFFFFLL;
  v216 = *MEMORY[0x1E6960C80];
  v215 = *(MEMORY[0x1E6960C80] + 8);
  v221 = *(MEMORY[0x1E6960C80] + 12);
  v6 = *(MEMORY[0x1E6960C80] + 16);
  v223 = *MEMORY[0x1E6960C70];
  v222 = *(MEMORY[0x1E6960C70] + 8);
  v231 = *(MEMORY[0x1E6960C70] + 12);
  v254 = *(MEMORY[0x1E6960C70] + 16);
  v259 = v6;
  while (1)
  {
    if (*(v3 + 168) == 3)
    {
      v7 = *(v3 + 80);
      if (v5 > v7)
      {
        break;
      }
    }

    v3 = *(v3 + 24);
LABEL_6:
    if (!v3)
    {
      return;
    }
  }

  v210 = v4;
  v265 = 0;
  v8 = fpfs_AreTracksReadyToPlay(a1, v7, &v265);
  v5 = *(v3 + 80);
  v9 = v5;
  if (v8)
  {
    goto LABEL_9;
  }

  if (v265)
  {
    v4 = v210;
    goto LABEL_6;
  }

  v4 = v210;
  if (!*(v210 + 471))
  {
    goto LABEL_6;
  }

  v92 = *(v3 + 80);
  v93 = CMBaseObjectGetDerivedStorage();
  if (fpfs_getNext(v93, 0) != a1)
  {
    v5 = v92;
    goto LABEL_6;
  }

  v9 = *(v3 + 80);
  v5 = v92;
LABEL_9:
  v204 = v5;
  v10 = CMBaseObjectGetDerivedStorage();
  v263 = *v10;
  v232 = CMBaseObjectGetDerivedStorage();
  memset(&v271, 0, sizeof(v271));
  v261 = *MEMORY[0x1E6960C80];
  *&v270.value = *MEMORY[0x1E6960C80];
  v270.epoch = v6;
  v268 = 0uLL;
  v269 = 0;
  fpfs_GetTime(v10, &v268);
  v256 = v268.n128_u32[3];
  v257 = v268.n128_u32[2];
  v255 = v269;
  v258 = v268.n128_u64[0];
  if (*(v10 + 332))
  {
    v11 = *(CMBaseObjectGetDerivedStorage() + 1024);
    for (i = 0x7FFFFFFFFFFFFFFFLL; v11; v11 = *(v11 + 24))
    {
      if (*(v11 + 168) == 6)
      {
        v13 = *(v11 + 48);
        v14 = v13 == 1986618469 || v13 == 1936684398;
        if (v14 && *(v11 + 80) < i)
        {
          i = *(v11 + 80);
        }
      }
    }

    v211 = i >= v9;
  }

  else
  {
    v211 = 0;
  }

  v267 = 0;
  v266 = 0;
  v272 = 0;
  v264 = (v10 + 1024);
  v260 = v10;
  if (fpfsi_IterateMutableTrackList((v10 + 1024), &v272, &v266))
  {
    while (2)
    {
      v15 = v272;
      if (*(v272 + 80) == v9 && (~*(v272 + 156) & 0x11) == 0)
      {
        fpfs_FindTrackStartTime(v10, v9, &time);
        *(v15 + 208) = time;
        v16 = *(v10 + 1024);
        if (v16)
        {
          while (*(v16 + 80) != v9 || *(v16 + 472) || (*(v16 + 156) & 0x1D) != 1)
          {
            v16 = *(v16 + 24);
            if (!v16)
            {
              goto LABEL_32;
            }
          }

          *&time.value = *(v16 + 144);
          v17 = *(v16 + 160);
        }

        else
        {
LABEL_32:
          *&time.value = *MEMORY[0x1E6960C70];
          v17 = v254;
        }

        time.epoch = v17;
        *(v15 + 144) = *&time.value;
        *(v15 + 160) = v17;
        v18 = MEMORY[0x1E6960CC0];
        *(v15 + 232) = *MEMORY[0x1E6960CC0];
        *(v15 + 248) = *(v18 + 16);
        if (*(v15 + 196) == 2 && ((*(v15 + 220) & 1) == 0 || (*(v15 + 156) & 1) == 0))
        {
          Head = CMBufferQueueGetHead(*(v15 + 88));
          fpfs_SetTrackStartTimeAndTimeOffset(v15, Head, 0);
        }

        CMBufferQueueCallForEachBuffer(*(v15 + 88), fpfs_AdjustTime, v15);
        if (dword_1EAF169F0)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(v286) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          value = rhs.value;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v286))
          {
            v22 = value;
          }

          else
          {
            v22 = value & 0xFFFFFFFE;
          }

          if (v22)
          {
            if (v263)
            {
              v23 = (CMBaseObjectGetDerivedStorage() + 888);
              if (a1)
              {
                goto LABEL_44;
              }

LABEL_47:
              v24 = "";
            }

            else
            {
              v23 = "";
              if (!a1)
              {
                goto LABEL_47;
              }

LABEL_44:
              v24 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            v25 = *(v15 + 32);
            time = *(v15 + 144);
            Seconds = CMTimeGetSeconds(&time);
            time = *(v15 + 208);
            v27 = CMTimeGetSeconds(&time);
            LODWORD(time2.value) = 136316930;
            *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = v263;
            HIWORD(time2.epoch) = 2082;
            v276 = v23;
            v277 = 2048;
            v278 = a1;
            v279 = 2082;
            v280 = v24;
            v281 = 1024;
            LODWORD(v282[0]) = v25;
            WORD2(v282[0]) = 2048;
            *(v282 + 6) = Seconds;
            HIWORD(v282[1]) = 2048;
            *&v282[2] = v27;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v10 = v260;
        }

        if (*(v15 + 198))
        {
          fpfs_StopFeedingTrack(v15, 0, 1);
        }
      }

      if (!fpfsi_IterateMutableTrackList(v264, &v272, &v266))
      {
        break;
      }

      continue;
    }
  }

  if (*(v10 + 2472) && (*(v10 + 2436) & 1) != 0)
  {
    *(v10 + 1488) = *(v10 + 2440);
    *(v10 + 1472) = *(v10 + 2424);
    v211 = 1;
  }

  v242 = a1;
  v28 = CMBaseObjectGetDerivedStorage();
  v286 = v216;
  v287 = v215;
  v284 = v223;
  v29 = v221;
  timescale = v222;
  epoch = v254;
  flags = v231;
  v32 = v259;
  v249 = v28;
  v33 = *(v28 + 1024);
  if (v33)
  {
    v29 = v221;
    v32 = v259;
    flags = v231;
    epoch = v254;
    do
    {
      if (*(v33 + 80) == v9 - 1 && (*(v33 + 244) & 1) != 0 && (time.value = v286, time.timescale = v287, time.flags = v29, time.epoch = v32, time2 = *(v33 + 232), CMTimeCompare(&time, &time2) < 0))
      {
        v286 = *(v33 + 232);
        v29 = *(v33 + 244);
        v287 = *(v33 + 240);
        v32 = *(v33 + 248);
        if ((flags & 1) == 0)
        {
LABEL_64:
          if (*(v33 + 80) == v9 && *(v33 + 48) == 1986618469)
          {
            v34 = CMBufferQueueGetHead(*(v33 + 88));
            if (v34)
            {
              CMSampleBufferGetOutputPresentationTimeStamp(&time, v34);
              v284 = time.value;
              flags = time.flags;
              timescale = time.timescale;
              epoch = time.epoch;
            }

            else
            {
              v284 = v223;
              timescale = v222;
              epoch = v254;
              flags = v231;
            }
          }
        }
      }

      else if ((flags & 1) == 0)
      {
        goto LABEL_64;
      }

      v33 = *(v33 + 24);
    }

    while (v33);
  }

  v35 = v259;
  if ((v29 & 0x1D) == 1)
  {
    v36 = v249[128];
    if (v36)
    {
      v243 = epoch;
      do
      {
        if (*(v36 + 80) == v9 && (*(v36 + 220) & 1) != 0)
        {
          time.value = v286;
          time.timescale = v287;
          time.flags = v29;
          time.epoch = v32;
          time2 = *(v36 + 208);
          if (CMTimeCompare(&time, &time2) >= 1)
          {
            if (dword_1EAF169F0)
            {
              LODWORD(rhs.value) = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v38 = rhs.value;
              if (os_log_type_enabled(v37, type))
              {
                v39 = v38;
              }

              else
              {
                v39 = v38 & 0xFFFFFFFE;
              }

              if (v39)
              {
                v40 = *v249;
                if (*v249)
                {
                  v41 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v41 = "";
                }

                v236 = v41;
                if (v242)
                {
                  v42 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v42 = "";
                }

                v233 = v42;
                v43 = *(v36 + 32);
                time = *(v36 + 208);
                v44 = CMTimeGetSeconds(&time);
                time.value = v286;
                time.timescale = v287;
                time.flags = v29;
                time.epoch = v32;
                v45 = CMTimeGetSeconds(&time);
                LODWORD(time2.value) = 136316930;
                *(&time2.value + 4) = "fpfs_RealignTrackStartTime";
                LOWORD(time2.flags) = 2048;
                *(&time2.flags + 2) = v40;
                HIWORD(time2.epoch) = 2082;
                v276 = v236;
                v277 = 2048;
                v278 = v242;
                v279 = 2082;
                v280 = v233;
                v281 = 1024;
                LODWORD(v282[0]) = v43;
                WORD2(v282[0]) = 2048;
                *(v282 + 6) = v44;
                HIWORD(v282[1]) = 2048;
                *&v282[2] = v45;
                _os_log_send_and_compose_impl();
                v35 = v259;
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              epoch = v243;
            }

            *(v36 + 208) = v286;
            *(v36 + 216) = v287;
            *(v36 + 220) = v29;
            *(v36 + 224) = v32;
          }
        }

        v36 = *(v36 + 24);
      }

      while (v36);
    }

    if ((flags & 0x1D) == 1)
    {
      time.value = v284;
      time.timescale = timescale;
      time.flags = flags;
      time.epoch = epoch;
      time2.value = v286;
      time2.timescale = v287;
      time2.flags = v29;
      time2.epoch = v32;
      if (CMTimeCompare(&time, &time2) < 0)
      {
        time2.value = v286;
        time2.timescale = v287;
        time2.flags = v29;
        time2.epoch = v32;
        rhs.value = v284;
        rhs.timescale = timescale;
        rhs.flags = flags;
        rhs.epoch = epoch;
        CMTimeSubtract(&time, &time2, &rhs);
        fpfs_TimeShiftDiscontinuityDomain(v249, v9, &time);
      }
    }
  }

  v46 = *v264;
  v272 = v46;
  if (v46)
  {
    v239 = 1;
    v234 = v221;
    v237 = v35;
    v246 = v221;
    v47 = v35;
    v230 = v216;
    v48 = v215;
    v49 = v215;
    v244 = v216;
    v50 = v261;
    do
    {
      if (*(v46 + 80) == v9 && *(v46 + 56))
      {
        v51 = *(v46 + 48);
        if (v51 == 1986618469 || v51 == 1936684398)
        {
          if (dword_1EAF169F0)
          {
            v53 = v48;
            v54 = v47;
            LODWORD(rhs.value) = 0;
            LOBYTE(v286) = 0;
            v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v56 = rhs.value;
            if (os_log_type_enabled(v55, v286))
            {
              v57 = v56;
            }

            else
            {
              v57 = v56 & 0xFFFFFFFE;
            }

            if (v57)
            {
              if (v263)
              {
                v58 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v58 = "";
              }

              if (v242)
              {
                v59 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v59 = "";
              }

              v60 = "audio";
              if (*(v46 + 48) == 1986618469)
              {
                v60 = "video";
              }

              v61 = *(v46 + 32);
              LODWORD(time2.value) = 136316674;
              *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v263;
              HIWORD(time2.epoch) = 2082;
              v276 = v58;
              v277 = 2048;
              v278 = v242;
              v279 = 2082;
              v280 = v59;
              v281 = 2082;
              v282[0] = v60;
              LOWORD(v282[1]) = 2048;
              *(&v282[1] + 2) = v61;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v35 = v259;
            v47 = v54;
            v48 = v53;
          }

          v62 = CMBufferQueueGetHead(*(v46 + 88));
          if (v62)
          {
            CMSampleBufferGetOutputPresentationTimeStamp(&time, v62);
            v228 = time.value;
            v63 = time.timescale;
            v225 = time.flags;
            v224 = time.epoch;
            v64 = *(v46 + 48);
            if (v64 == 1986618469)
            {
              time.value = v230;
              time.timescale = v49;
              time.flags = v246;
              time.epoch = v47;
              *&time2.value = v261;
              time2.epoch = v35;
              if (!CMTimeCompare(&time, &time2))
              {
                v49 = v63;
                v230 = v228;
                v47 = v224;
                v246 = v225;
              }

              v64 = *(v46 + 48);
            }

            if (v64 == 1936684398)
            {
              time.value = v244;
              time.timescale = v48;
              time.flags = v234;
              time.epoch = v237;
              *&time2.value = v261;
              time2.epoch = v35;
              if (!CMTimeCompare(&time, &time2))
              {
                v48 = v63;
                v244 = v228;
                v237 = v224;
                v234 = v225;
              }
            }

            if (dword_1EAF169F0)
            {
              v250 = v49;
              v212 = v48;
              v217 = v47;
              LODWORD(rhs.value) = 0;
              LOBYTE(v286) = 0;
              v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v66 = rhs.value;
              if (os_log_type_enabled(v65, v286))
              {
                v67 = v66;
              }

              else
              {
                v67 = v66 & 0xFFFFFFFE;
              }

              if (v67)
              {
                v68 = *v260;
                if (*v260)
                {
                  v69 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v69 = "";
                }

                v207 = v69;
                if (v242)
                {
                  v205 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v205 = "";
                }

                v70 = *(v46 + 32);
                time.value = v228;
                time.timescale = v63;
                time.flags = v225;
                time.epoch = v224;
                v71 = CMTimeGetSeconds(&time);
                time = *(v46 + 232);
                v72 = CMTimeGetSeconds(&time);
                LODWORD(time2.value) = 136317442;
                *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
                LOWORD(time2.flags) = 2048;
                *(&time2.flags + 2) = v68;
                HIWORD(time2.epoch) = 2082;
                v276 = v207;
                v277 = 2048;
                v278 = v242;
                v279 = 2082;
                v280 = v205;
                v281 = 2048;
                v282[0] = v70;
                LOWORD(v282[1]) = 2048;
                *(&v282[1] + 2) = v228;
                WORD1(v282[2]) = 1024;
                HIDWORD(v282[2]) = v63;
                LOWORD(v282[3]) = 2048;
                *(&v282[3] + 2) = v71;
                WORD1(v282[4]) = 2048;
                *(&v282[4] + 4) = v72;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v35 = v259;
              v47 = v217;
              v48 = v212;
              v49 = v250;
            }

            time = v270;
            time2 = *(v46 + 232);
            if (CMTimeCompare(&time, &time2) < 0)
            {
              v270 = *(v46 + 232);
            }

            v73 = v239;
            if (!*(v46 + 198))
            {
              v73 = 0;
            }

            v239 = v73;
          }

          v50 = v261;
        }
      }

      if ((*(v46 + 220) & 0x1D) == 1 && *(v46 + 80) == v9)
      {
        v258 = *(v46 + 208);
        v257 = *(v46 + 216);
        v256 = *(v46 + 220);
        v255 = *(v46 + 224);
      }

      v46 = *(v46 + 24);
    }

    while (v46);
    v272 = 0;
    v226 = v239 == 0;
    v74 = v237;
    v75 = v234;
    v76 = v230;
    v77 = v244;
  }

  else
  {
    v226 = 0;
    LODWORD(v48) = v215;
    v77 = v216;
    v49 = v215;
    v76 = v216;
    v47 = v35;
    v75 = v221;
    v246 = v221;
    v74 = v35;
    v50 = v261;
  }

  v245 = v77;
  time.value = v77;
  time.timescale = v48;
  time.flags = v75;
  v235 = v75;
  v238 = v74;
  time.epoch = v74;
  *&time2.value = v50;
  time2.epoch = v35;
  if (CMTimeCompare(&time, &time2))
  {
    time.value = v76;
    time.timescale = v49;
    time.flags = v246;
    time.epoch = v47;
    *&time2.value = v261;
    time2.epoch = v35;
    if (CMTimeCompare(&time, &time2))
    {
      time.value = v76;
      time.timescale = v49;
      time.flags = v246;
      time.epoch = v47;
      v78 = v47;
      v79 = v245;
      time2.value = v245;
      v80 = v235;
      time2.timescale = v48;
      time2.flags = v235;
      v251 = v49;
      v81 = v238;
      time2.epoch = v238;
      v82 = CMTimeCompare(&time, &time2);
      if (v82 <= 0)
      {
        v83 = v251;
      }

      else
      {
        v83 = v48;
      }

      if (v82 <= 0)
      {
        v84 = v76;
      }

      else
      {
        v84 = v245;
      }

      if (v82 <= 0)
      {
        v85 = v238;
      }

      else
      {
        v85 = v78;
      }

      if (v82 <= 0)
      {
        v86 = v235;
      }

      else
      {
        v86 = v246;
      }

      if (v82 <= 0)
      {
        v81 = v78;
      }

      v238 = v81;
      if (v82 <= 0)
      {
        v80 = v246;
      }

      v235 = v80;
      if (v82 > 0)
      {
        LODWORD(v48) = v251;
        v79 = v76;
      }

      v245 = v79;
      v49 = v83;
      v76 = v84;
      v47 = v85;
      v246 = v86;
    }

    else
    {
      v49 = v48;
      v76 = v245;
      v47 = v238;
      v246 = v235;
    }
  }

  else
  {
    v238 = v47;
    v235 = v246;
    LODWORD(v48) = v49;
    v245 = v76;
  }

  time.value = v258;
  time.timescale = v257;
  time.flags = v256;
  time.epoch = v255;
  *&time2.value = v268;
  time2.epoch = v269;
  if (CMTimeCompare(&time, &time2) >= 0 || v211)
  {
    v229 = 1;
  }

  else
  {
    if (dword_1EAF169F0)
    {
      v87 = v48;
      v218 = v47;
      LODWORD(rhs.value) = 0;
      LOBYTE(v286) = 0;
      v88 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v89 = rhs.value;
      if (os_log_type_enabled(v88, v286))
      {
        v90 = v89;
      }

      else
      {
        v90 = v89 & 0xFFFFFFFE;
      }

      if (v90)
      {
        if (v263)
        {
          v91 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v91 = "";
        }

        if (v242)
        {
          v94 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v94 = "";
        }

        *&time.value = v268;
        time.epoch = v269;
        v95 = CMTimeGetSeconds(&time);
        time.value = v258;
        time.timescale = v257;
        time.flags = v256;
        time.epoch = v255;
        v96 = CMTimeGetSeconds(&time);
        LODWORD(time2.value) = 136316674;
        *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v263;
        HIWORD(time2.epoch) = 2082;
        v276 = v91;
        v277 = 2048;
        v278 = v242;
        v279 = 2082;
        v280 = v94;
        v281 = 2048;
        *v282 = v95;
        LOWORD(v282[1]) = 2048;
        *(&v282[1] + 2) = v96;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v47 = v218;
      LODWORD(v48) = v87;
    }

    v97 = v260;
    v98 = *(v260 + 840);
    v229 = v98 == 0.0;
    if (v98 != 0.0)
    {
      fpfs_setUnlikelyToKeepUpAndRanDry(v242);
      fpfs_SetRateWithFadeInternal(*v260, MEMORY[0x1E6960C70], 0.0);
      v97 = v260;
    }

    fpfs_GetTime(v97, &time);
    v258 = time.value;
    v257 = time.timescale;
    v256 = time.flags;
    v255 = time.epoch;
  }

  v99 = v261;
  v240 = v246 & 0x1D;
  if (v240 == 1)
  {
    v252 = v49;
    time.value = v245;
    time.timescale = v48;
    time.flags = v246;
    time.epoch = v47;
    v100 = v258;
    time2.value = v258;
    v101 = v48;
    LODWORD(v48) = v257;
    time2.timescale = v257;
    time2.flags = v256;
    v102 = v255;
    time2.epoch = v255;
    v103 = CMTimeCompare(&time, &time2);
    if (v103 < 0)
    {
      v104 = v256;
    }

    else
    {
      v102 = v47;
      v104 = v246;
    }

    if (v103 >= 0)
    {
      LODWORD(v48) = v101;
      v100 = v245;
    }

    v6 = v259;
    v105 = v260;
    v255 = v102;
    v47 = v102;
    v256 = v104;
    v106 = v104;
    v257 = v48;
    v258 = v100;
    v245 = v100;
    if (*(v260 + 1484))
    {
      v107 = (v260 + 1472);
      time.value = v258;
      v106 = v104;
      time.timescale = v48;
      time.flags = v104;
      time.epoch = v255;
      time2 = *(v260 + 1472);
      if (CMTimeCompare(&time, &time2) < 1)
      {
        time.value = v258;
        time.timescale = v48;
        time.flags = v104;
        time.epoch = v255;
        *&time2.value = *v107;
        time2.epoch = *(v260 + 1488);
        v112 = CMTimeCompare(&time, &time2);
        v47 = v255;
        v245 = v258;
        v105 = v260;
        if (v112 <= 0)
        {
          *&time.value = *v107;
          time.epoch = *(v260 + 1488);
          time2 = v270;
          v113 = CMTimeCompare(&time, &time2);
          v47 = v259;
          v106 = v221;
          LODWORD(v48) = v215;
          v245 = v216;
          v105 = v260;
          if (v113 >= 1)
          {
            v47 = v255;
            v106 = v104;
            LODWORD(v48) = v257;
            v245 = v258;
            if (*(v260 + 471))
            {
              return;
            }
          }
        }
      }

      else
      {
        v105 = v260;
        if (dword_1EAF169F0)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(v286) = 0;
          v108 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v109 = rhs.value;
          if (os_log_type_enabled(v108, v286))
          {
            v110 = v109;
          }

          else
          {
            v110 = v109 & 0xFFFFFFFE;
          }

          if (v110)
          {
            if (v263)
            {
              v111 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v111 = "";
            }

            v247 = v111;
            if (v242)
            {
              v114 = v242;
              v115 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v114 = 0;
              v115 = "";
            }

            time.value = v258;
            time.timescale = v257;
            time.flags = v104;
            time.epoch = v255;
            v116 = CMTimeGetSeconds(&time);
            *&time.value = *v107;
            time.epoch = *(v260 + 1488);
            v117 = CMTimeGetSeconds(&time);
            LODWORD(time2.value) = 136316674;
            *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = v263;
            HIWORD(time2.epoch) = 2082;
            v276 = v247;
            v277 = 2048;
            v278 = v114;
            v279 = 2082;
            v280 = v115;
            v281 = 2048;
            *v282 = v116;
            LOWORD(v282[1]) = 2048;
            *(&v282[1] + 2) = v117;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v6 = v259;
          v105 = v260;
        }

        *v107 = *MEMORY[0x1E6960C70];
        *(v260 + 1488) = v254;
        v47 = v255;
        v106 = v104;
        LODWORD(v48) = v257;
        v245 = v258;
      }
    }

    v246 = v106;
    v99 = v261;
    if (*(v105 + 1484))
    {
      v49 = v252;
    }

    else
    {
      v118 = *v264;
      v272 = v118;
      v49 = v252;
      if (v118)
      {
        do
        {
          if (*(v118 + 80) == v9 && *(v118 + 56) && *(v118 + 48) == 1986618469)
          {
            CMBufferQueueCallForEachBuffer(*(v118 + 88), fpfs_RemoveDoNotDisplayFromBuffer, 0);
            v99 = v261;
          }

          v118 = *(v118 + 24);
        }

        while (v118);
        v272 = 0;
      }
    }
  }

  else
  {
    v6 = v259;
  }

  if ((v246 & 0x1D) == 1)
  {
    *&v271.value = v99;
    v119 = *v264;
    v271.epoch = v6;
    v272 = v119;
    v120 = 0;
    if (v119)
    {
      do
      {
        v121 = *(v119 + 80);
        if (v121 < v9 || v121 == v9 && *(v119 + 472)) && (*(v119 + 244))
        {
          time = v271;
          time2 = *(v119 + 232);
          if (CMTimeCompare(&time, &time2) < 0)
          {
            v271 = *(v119 + 232);
            v120 = v119;
          }
        }

        v119 = *(v119 + 24);
      }

      while (v119);
      v272 = 0;
    }

    time.value = v245;
    time.timescale = v48;
    time.flags = v246;
    time.epoch = v47;
    time2.value = v76;
    time2.timescale = v49;
    time2.flags = v235;
    time2.epoch = v238;
    if (CMTimeCompare(&time, &time2) <= 0)
    {
      if (v120)
      {
        goto LABEL_287;
      }

      time.value = v245;
      time.timescale = v48;
      time.flags = v246;
      time.epoch = v47;
      *&time2.value = v268;
      time2.epoch = v269;
      if (CMTimeCompare(&time, &time2) < 1 || v211)
      {
        goto LABEL_287;
      }
    }

    else
    {
      if (v120)
      {
        time = v271;
        time2.value = v245;
        time2.timescale = v48;
        time2.flags = v246;
        time2.epoch = v47;
        if (CMTimeCompare(&time, &time2) < 0)
        {
          if (dword_1EAF169F0)
          {
            v213 = v48;
            v219 = v47;
            LODWORD(v286) = 0;
            LOBYTE(v284) = 0;
            v122 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v123 = v286;
            if (os_log_type_enabled(v122, v284))
            {
              v124 = v123;
            }

            else
            {
              v124 = v123 & 0xFFFFFFFE;
            }

            if (v124)
            {
              if (v263)
              {
                v125 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v125 = "";
              }

              v208 = v125;
              v132 = v245;
              if (v242)
              {
                v206 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v206 = "";
                v132 = v245;
              }

              v209 = *(v120 + 32);
              time.value = v132;
              time.timescale = v213;
              time.flags = v246;
              time.epoch = v219;
              v133 = CMTimeGetSeconds(&time);
              time2.value = v132;
              time2.timescale = v213;
              time2.flags = v246;
              time2.epoch = v219;
              rhs.value = v76;
              rhs.timescale = v49;
              rhs.flags = v235;
              rhs.epoch = v238;
              CMTimeSubtract(&time, &time2, &rhs);
              v134 = CMTimeGetSeconds(&time);
              LODWORD(time2.value) = 136316930;
              *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v263;
              HIWORD(time2.epoch) = 2082;
              v276 = v208;
              v277 = 2048;
              v278 = v242;
              v279 = 2082;
              v280 = v206;
              v281 = 2048;
              v282[0] = v209;
              LOWORD(v282[1]) = 2048;
              *(&v282[1] + 2) = v133;
              WORD1(v282[2]) = 2048;
              *(&v282[2] + 4) = v134;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v6 = v259;
            v47 = v219;
            LODWORD(v48) = v213;
          }

          *(v120 + 256) = v245;
          *(v120 + 264) = v48;
          *(v120 + 268) = v246;
          *(v120 + 272) = v47;
        }

        goto LABEL_287;
      }

      if (v211)
      {
        goto LABEL_287;
      }
    }

    if (dword_1EAF169F0)
    {
      v214 = v48;
      v220 = v47;
      LODWORD(v286) = 0;
      LOBYTE(v284) = 0;
      v126 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v127 = v286;
      if (os_log_type_enabled(v126, v284))
      {
        v128 = v127;
      }

      else
      {
        v128 = v127 & 0xFFFFFFFE;
      }

      if (v128)
      {
        if (v263)
        {
          v241 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v241 = "";
        }

        if (v242)
        {
          v227 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v227 = "";
        }

        *&time.value = v268;
        time.epoch = v269;
        v129 = CMTimeGetSeconds(&time);
        time.value = v245;
        time.timescale = v214;
        time.flags = v246;
        time.epoch = v220;
        v130 = CMTimeGetSeconds(&time);
        time2.value = v245;
        time2.timescale = v214;
        time2.flags = v246;
        time2.epoch = v220;
        rhs.value = v76;
        rhs.timescale = v49;
        rhs.flags = v235;
        rhs.epoch = v238;
        CMTimeSubtract(&time, &time2, &rhs);
        v131 = CMTimeGetSeconds(&time);
        LODWORD(time2.value) = 136316930;
        *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v263;
        HIWORD(time2.epoch) = 2082;
        v276 = v241;
        v277 = 2048;
        v278 = v242;
        v279 = 2082;
        v280 = v227;
        v281 = 2048;
        *v282 = v129;
        LOWORD(v282[1]) = 2048;
        *(&v282[1] + 2) = v130;
        WORD1(v282[2]) = 2048;
        *(&v282[2] + 4) = v131;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v47 = v220;
      LODWORD(v48) = v214;
    }

    time.value = v245;
    time.timescale = v48;
    time.flags = v246;
    time.epoch = v47;
    fpfs_JumpToTime(v242, &time, 1);
    goto LABEL_292;
  }

LABEL_287:
  v135 = v211;
  if (v240 != 1)
  {
    v135 = 0;
  }

  if (!v135)
  {
LABEL_292:
    v136 = 0;
    goto LABEL_293;
  }

  if (*(v260 + 1576))
  {
LABEL_291:
    v136 = 1;
LABEL_293:
    v137 = v254;
    goto LABEL_294;
  }

  v156 = (v260 + 1472);
  if (*(v260 + 1484))
  {
    v164 = *(v260 + 1472);
    v165 = *(v260 + 1480);
    v166 = *(v260 + 1484);
    v255 = *(v260 + 1488);
    v158 = v226;
  }

  else
  {
    v157 = *(v260 + 1680);
    if (v157 && FigAlternateIsIFrameOnly(v157))
    {
      v158 = v226;
      v159 = v260;
    }

    else
    {
      v159 = v260;
      if (*(v260 + 356))
      {
        v167 = (v260 + 344);
        time.value = v258;
        time.timescale = v257;
        time.flags = v256;
        time.epoch = v255;
        time2 = *(v260 + 344);
        if (CMTimeCompare(&time, &time2) < 0)
        {
          if ((v246 & 0x1D) != 1 || (time = *(v260 + 320), time2.value = v245, time2.timescale = v48, time2.flags = v246, time2.epoch = v47, (CMTimeCompare(&time, &time2) & 0x80000000) == 0))
          {
            if (dword_1EAF169F0)
            {
              LODWORD(rhs.value) = 0;
              LOBYTE(v286) = 0;
              v190 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v191 = rhs.value;
              if (os_log_type_enabled(v190, v286))
              {
                v192 = v191;
              }

              else
              {
                v192 = v191 & 0xFFFFFFFE;
              }

              if (v192)
              {
                v193 = "";
                if (v263)
                {
                  v193 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                v194 = "";
                if (v242)
                {
                  v194 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                *&time.value = *v167;
                time.epoch = *(v260 + 360);
                v195 = CMTimeGetSeconds(&time);
                time = *(v260 + 368);
                v196 = CMTimeGetSeconds(&time);
                time.value = v258;
                time.timescale = v257;
                time.flags = v256;
                time.epoch = v255;
                v197 = CMTimeGetSeconds(&time);
                *&time.value = *v167;
                time.epoch = *(v260 + 360);
                v198 = CMTimeGetSeconds(&time);
                LODWORD(time2.value) = 136317186;
                *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
                LOWORD(time2.flags) = 2048;
                *(&time2.flags + 2) = v263;
                HIWORD(time2.epoch) = 2082;
                v276 = v193;
                v277 = 2048;
                v278 = v242;
                v279 = 2082;
                v280 = v194;
                v281 = 2048;
                *v282 = v195;
                LOWORD(v282[1]) = 2048;
                *(&v282[1] + 2) = v196;
                WORD1(v282[2]) = 2048;
                *(&v282[2] + 4) = v197;
                WORD2(v282[3]) = 2048;
                *(&v282[3] + 6) = v198;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v6 = v259;
            }

            v258 = *(v260 + 344);
            v257 = *(v260 + 352);
            v256 = *(v260 + 356);
            v255 = *(v260 + 360);
            *v156 = *v167;
            *(v260 + 1488) = *(v260 + 360);
            if (!fpfs_AreTracksReadyToPlay(v242, v9, 0))
            {
              a1 = v242;
              v4 = v210;
              if (!dword_1EAF169F0)
              {
                goto LABEL_416;
              }

              LODWORD(rhs.value) = 0;
              LOBYTE(v286) = 0;
              v199 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v200 = rhs.value;
              if (os_log_type_enabled(v199, v286))
              {
                v201 = v200;
              }

              else
              {
                v201 = v200 & 0xFFFFFFFE;
              }

              if (v201)
              {
                if (v263)
                {
                  v202 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v202 = "";
                }

                if (v242)
                {
                  v203 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v203 = "";
                }

                LODWORD(time2.value) = 136316162;
                *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
                LOWORD(time2.flags) = 2048;
                *(&time2.flags + 2) = v263;
                HIWORD(time2.epoch) = 2082;
                v276 = v202;
                v277 = 2048;
                v278 = v242;
                v279 = 2082;
                v280 = v203;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_462:
              a1 = v242;
              v4 = v210;
              v6 = v259;
              goto LABEL_416;
            }
          }
        }

        v159 = v260;
      }

      v158 = v226;
    }

    v164 = v258;
    *(v159 + 1472) = v258;
    v165 = v257;
    *(v159 + 1480) = v257;
    v166 = v256;
    *(v159 + 1484) = v256;
    *(v159 + 1488) = v255;
  }

  v258 = v164;
  v257 = v165;
  v256 = v166;
  if (!v158)
  {
    time.value = v164;
    time.timescale = v165;
    time.flags = v166;
    time.epoch = v255;
    time2 = v270;
    if ((CMTimeCompare(&time, &time2) & 0x80000000) == 0)
    {
      if (dword_1EAF169F0)
      {
        LODWORD(rhs.value) = 0;
        LOBYTE(v286) = 0;
        v168 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v169 = rhs.value;
        if (os_log_type_enabled(v168, v286))
        {
          v170 = v169;
        }

        else
        {
          v170 = v169 & 0xFFFFFFFE;
        }

        if (v170)
        {
          if (v263)
          {
            v171 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v171 = "";
          }

          if (v242)
          {
            v185 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v185 = "";
          }

          time = v270;
          v186 = CMTimeGetSeconds(&time);
          LODWORD(time2.value) = 136316418;
          *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = v263;
          HIWORD(time2.epoch) = 2082;
          v276 = v171;
          v277 = 2048;
          v278 = v242;
          v279 = 2082;
          v280 = v185;
          v281 = 2048;
          *v282 = v186;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      time = v270;
      fpfs_SetTime(v242, &time);
      goto LABEL_291;
    }
  }

  time.value = v164;
  time.timescale = v165;
  time.flags = v166;
  time.epoch = v255;
  *&time2.value = v268;
  time2.epoch = v269;
  if (CMTimeCompare(&time, &time2) > 0)
  {
    v136 = 1;
    v262 = v255;
    v138 = v166;
    v253 = v165;
    v248 = v164;
    goto LABEL_295;
  }

  if (dword_1EAF169F0)
  {
    LODWORD(rhs.value) = 0;
    LOBYTE(v286) = 0;
    v172 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v173 = rhs.value;
    if (os_log_type_enabled(v172, v286))
    {
      v174 = v173;
    }

    else
    {
      v174 = v173 & 0xFFFFFFFE;
    }

    if (v174)
    {
      if (v263)
      {
        v175 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v175 = "";
      }

      if (v242)
      {
        v187 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v187 = "";
      }

      if (*(v260 + 1484))
      {
        v188 = "preciseSeekTime";
      }

      else
      {
        v188 = "seek time";
      }

      time.value = v258;
      time.timescale = v165;
      time.flags = v166;
      time.epoch = v255;
      v189 = CMTimeGetSeconds(&time);
      LODWORD(time2.value) = 136316674;
      *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = v263;
      HIWORD(time2.epoch) = 2082;
      v276 = v175;
      v277 = 2048;
      v278 = v242;
      v279 = 2082;
      v280 = v187;
      v281 = 2082;
      v282[0] = v188;
      LOWORD(v282[1]) = 2048;
      *(&v282[1] + 2) = v189;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v164 = v258;
  }

  time.value = v164;
  time.timescale = v165;
  time.flags = v166;
  time.epoch = v255;
  fpfs_SetTime(v242, &time);
  v136 = 1;
  *v156 = *MEMORY[0x1E6960C70];
  v137 = v254;
  *(v260 + 1488) = v254;
LABEL_294:
  v262 = v137;
  v138 = v231;
  v253 = v222;
  v248 = v223;
LABEL_295:
  v272 = 0;
  if (!fpfsi_IterateMutableTrackList(v264, &v272, &v266))
  {
    goto LABEL_462;
  }

  v139 = 0;
  v140 = 0;
  v141 = 0;
  do
  {
    v142 = v272;
    if (*(v272 + 80) != v9)
    {
      continue;
    }

    if (!*(v272 + 56))
    {
LABEL_311:
      if ((*(v142 + 168) & 0xFFFFFFFE) == 2)
      {
        if (*(v142 + 48) == 1986618469 && !*(v142 + 200))
        {
          v146 = v142;
          v147 = 5;
        }

        else
        {
          v146 = v142;
          v147 = 4;
        }

        fpfs_ChangeTrackState(v146, v147);
      }

      continue;
    }

    v143 = *(v272 + 48);
    if (v143 == 1936684398)
    {
      if (!fpfs_CanRenderAudio())
      {
        goto LABEL_311;
      }
    }

    else if (v143 == 1986618469)
    {
      if (!fpfs_CanRenderVideo(v232, *(v272 + 16)))
      {
        goto LABEL_311;
      }

      v144 = *v264;
      if (*v264 != v142)
      {
        v145 = 0;
        do
        {
          while (*(v144 + 48) == 1986618469 && (*(v144 + 168) | 4) == 5)
          {
            v144 = *(v144 + 24);
            v145 = 1;
            if (v144 == v142)
            {
              goto LABEL_311;
            }
          }

          v144 = *(v144 + 24);
        }

        while (v144 != v142);
        if (v145)
        {
          goto LABEL_311;
        }
      }
    }

    if (*(CMBaseObjectGetDerivedStorage() + 504) && (_os_feature_enabled_impl() & 1) != 0 || *(v142 + 112))
    {
      goto LABEL_324;
    }

    if (*(v142 + 48) == 1936684398)
    {
      fpfsi_ClearCachedAudioRenderChains(v242);
LABEL_324:
      v148 = v255;
      v149 = v256;
      v150 = v257;
      v151 = v258;
      if (*(v142 + 48) == 1936684398)
      {
        goto LABEL_327;
      }
    }

    v148 = v255;
    v149 = v256;
    v150 = v257;
    v151 = v258;
    if (*(v260 + 2460))
    {
      time2.value = v258;
      time2.timescale = v257;
      time2.flags = v256;
      time2.epoch = v255;
      rhs = *(v260 + 2448);
      CMTimeSubtract(&time, &time2, &rhs);
      v151 = time.value;
      v150 = time.timescale;
      v149 = time.flags;
      v148 = time.epoch;
    }

LABEL_327:
    time.value = v151;
    time.timescale = v150;
    time.flags = v149;
    time.epoch = v148;
    *&time2.value = *MEMORY[0x1E6960C70];
    time2.epoch = v254;
    fpfs_StartTrackPlaying();
    if (v152 != -16042)
    {
      if (v152)
      {
        return;
      }

      v153 = *(v142 + 48);
      if (v153 != 1986618469 || v139)
      {
        if (v140)
        {
          v154 = 0;
        }

        else
        {
          v154 = v153 == 1936684398;
        }

        if (v154)
        {
          v140 = v142;
        }

        v141 = 1;
      }

      else
      {
        v141 = 1;
        v139 = v142;
      }
    }
  }

  while (fpfsi_IterateMutableTrackList(v264, &v272, &v266));
  if (!v141)
  {
    goto LABEL_462;
  }

  a1 = v242;
  v6 = v259;
  if (!fpfs_setTimebaseStarter(v242, v140, v139))
  {
    v4 = v210;
    if (*(v260 + 1576))
    {
      goto LABEL_416;
    }

    if (!v136)
    {
      goto LABEL_411;
    }

    if (v138)
    {
      v155 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (v155)
      {
        while (*(v155 + 48) != 1986618469 || !*(v155 + 112))
        {
          v155 = *(v155 + 24);
          if (!v155)
          {
            goto LABEL_387;
          }
        }

        if (*(v155 + 120))
        {
          if (dword_1EAF169F0)
          {
            LODWORD(rhs.value) = 0;
            LOBYTE(v286) = 0;
            v160 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v161 = rhs.value;
            if (os_log_type_enabled(v160, v286))
            {
              v162 = v161;
            }

            else
            {
              v162 = v161 & 0xFFFFFFFE;
            }

            if (v162)
            {
              if (v263)
              {
                v163 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v163 = "";
              }

              if (v242)
              {
                v179 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v179 = "";
              }

              time.value = v258;
              time.timescale = v257;
              time.flags = v256;
              time.epoch = v255;
              v180 = CMTimeGetSeconds(&time);
              LODWORD(time2.value) = 136316418;
              *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v263;
              HIWORD(time2.epoch) = 2082;
              v276 = v163;
              v277 = 2048;
              v278 = v242;
              v279 = 2082;
              v280 = v179;
              v281 = 2048;
              *v282 = v180;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v6 = v259;
          }

LABEL_411:
          fpfs_UpdateDimensions(v242, 1);
          if ((*(v260 + 620) & 1) == 0)
          {
            fpfs_GetTime(v260, &time);
            *(v260 + 608) = time;
          }

          if (!v229)
          {
            fpfs_CheckPrebufferedLevels(&time, v242, 1, -1, 0);
          }

          *(v260 + 2424) = *MEMORY[0x1E6960C70];
          *(v260 + 2440) = v254;
          goto LABEL_416;
        }
      }

LABEL_387:
      if (dword_1EAF169F0)
      {
        LODWORD(rhs.value) = 0;
        LOBYTE(v286) = 0;
        v176 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v177 = rhs.value;
        if (os_log_type_enabled(v176, v286))
        {
          v178 = v177;
        }

        else
        {
          v178 = v177 & 0xFFFFFFFE;
        }

        if (v178)
        {
          v181 = "";
          if (v263)
          {
            v181 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          v182 = "";
          if (v242)
          {
            v182 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          time.value = v248;
          time.timescale = v253;
          time.flags = v138;
          time.epoch = v262;
          v183 = CMTimeGetSeconds(&time);
          LODWORD(time2.value) = 136316418;
          *(&time2.value + 4) = "fpfs_ResolveStartTimeAndEnqueueBuffers";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = v263;
          HIWORD(time2.epoch) = 2082;
          v276 = v181;
          v277 = 2048;
          v278 = v242;
          v279 = 2082;
          v280 = v182;
          v281 = 2048;
          *v282 = v183;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v6 = v259;
      }

      time.value = v248;
      time.timescale = v253;
      time.flags = v138;
      time.epoch = v262;
      fpfs_SetTime(v242, &time);
    }

    time.value = v258;
    time.timescale = v257;
    time.flags = v256;
    time.epoch = v255;
    fpfs_SeekDidComplete();
    *(v260 + 2216) = 0;
    if (!v184)
    {
      if (!v267)
      {
        goto LABEL_411;
      }

      if (!FigSignalErrorAtGM())
      {
LABEL_416:
        v3 = *(v4 + 1024);
        v5 = v204;
        goto LABEL_6;
      }
    }
  }
}

double fpfs_GetNextTimeToPlayIfEstablished@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0uLL;
  v9 = 0;
  if (fpfsi_GetDuration(a1, &v8) || (BYTE12(v8) & 0x11) != 0x11 || *(DerivedStorage + 592) || (*(DerivedStorage + 332) & 1) != 0)
  {
    return fpfs_GetNextTimeToPlay(DerivedStorage, 0, a2);
  }

  v5 = MEMORY[0x1E6960C70];
  v6 = *MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  *(a2 + 16) = *(v5 + 16);
  return *&v6;
}

void fpfsi_SetSwitchReasonCode(uint64_t a1, unsigned int a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!*(a1 + 2308))
  {
    *(a1 + 2308) = a2;
  }

  if (a2 <= 0x10 && ((1 << a2) & 0x1800C) != 0)
  {
    *(a1 + 2016) = CFAbsoluteTimeGetCurrent();
  }
}

void fpfsi_RTCReportingReportVariantSwitchComplete(uint64_t a1, unsigned int a2)
{
  v80 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fpfsi_RTCReportingUpdateCurrentAlternateInfo();
  if (a2 || *(DerivedStorage + 2816) >= 1)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    *(DerivedStorage + 2688) = UpTimeNanoseconds;
    v5 = *(DerivedStorage + 2656);
    time = *(DerivedStorage + 2728);
    Seconds = CMTimeGetSeconds(&time);
    time = *(DerivedStorage + 2704);
    v7 = CMTimeGetSeconds(&time);
    v8 = DerivedStorage + 2776;
    time = *(DerivedStorage + 2776);
    v9 = CMTimeGetSeconds(&time);
    time = *(DerivedStorage + 2752);
    v10 = CMTimeGetSeconds(&time);
    v11 = *(DerivedStorage + 2680);
    fpfs_GetTime(DerivedStorage, &time);
    v12 = CMTimeGetSeconds(&time);
    v13 = *(DerivedStorage + 2868);
    v14 = @"Up";
    if (v13 == 2)
    {
      v77 = @"Up";
    }

    else
    {
      v15 = @"Down";
      if (v13 != 3 && v13 != 15 && *(DerivedStorage + 2824) <= *(DerivedStorage + 2828))
      {
        v15 = @"Up";
      }

      v77 = v15;
      v14 = @"None";
      switch(v13)
      {
        case 0:
          break;
        case 1:
          v14 = @"Seek";
          break;
        case 3:
          v14 = @"DownBW";
          break;
        case 4:
          v14 = @"DownStall";
          break;
        case 5:
          v14 = @"Deactivate";
          break;
        case 6:
          v14 = @"Stop";
          break;
        case 7:
          v14 = @"AltChanged";
          break;
        case 8:
          v14 = @"IFrameOnly";
          break;
        case 9:
          v14 = @"MediaSel";
          break;
        case 10:
          v14 = @"StopWhileStall";
          break;
        case 11:
          v14 = @"StopBeforeStart";
          break;
        case 12:
          v14 = @"SeekInCache";
          break;
        case 13:
          v14 = @"AltHadGapErr";
          break;
        case 14:
          v14 = @"Relabel";
          break;
        case 15:
          v14 = @"LLDown";
          break;
        case 16:
          v14 = @"VideoFrmtChg";
          break;
        default:
          v14 = @"Unknown";
          break;
      }
    }

    v78 = UpTimeNanoseconds - v5;
    v16 = v9 - v10;
    v17 = v11 - v12;
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v8 = DerivedStorage + 2776;
    }

    if (*(DerivedStorage + 2848))
    {
      v19 = @"Aud";
    }

    else
    {
      v19 = 0;
    }

    v20 = @"AuVd";
    if (!*(DerivedStorage + 2848))
    {
      v20 = @"Vid";
    }

    if (*(DerivedStorage + 2849))
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v22 = *(DerivedStorage + 2568);
    if (v22)
    {
      v23 = *(DerivedStorage + 2828);
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v24)
      {
        v24(v22, @"playerStats", 0x1F0B424D8, v23, 0);
      }
    }

    v25 = *(DerivedStorage + 2568);
    if (v25)
    {
      v26 = *(DerivedStorage + 2824);
      v27 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v27)
      {
        v27(v25, @"playerStats", 0x1F0B424B8, v26, 0);
      }
    }

    v28 = *(DerivedStorage + 2568);
    if (v28)
    {
      v29 = *(DerivedStorage + 2852);
      v30 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v30)
      {
        v30(v28, @"playerStats", 0x1F0B42B38, v29, 0);
      }
    }

    v31 = *(DerivedStorage + 2568);
    if (v31)
    {
      v32 = *(DerivedStorage + 2856);
      v33 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v33)
      {
        v33(v31, @"playerStats", 0x1F0B42B58, v32, 0);
      }
    }

    v34 = *(DerivedStorage + 2568);
    if (v34)
    {
      v35 = *(DerivedStorage + 2860);
      v36 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v36)
      {
        v36(v34, @"playerStats", 0x1F0B424F8, v35, 0);
      }
    }

    v37 = *(DerivedStorage + 2568);
    if (v37)
    {
      v38 = *(DerivedStorage + 2864);
      v39 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v39)
      {
        v39(v37, @"playerStats", 0x1F0B42518, v38, 0);
      }
    }

    v40 = *(DerivedStorage + 2568);
    if (v40)
    {
      v41 = *(DerivedStorage + 2664);
      v42 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v42)
      {
        v42(v40, @"playerStats", 0x1F0B425D8, (v41 * 1000.0), 0);
      }
    }

    v43 = *(DerivedStorage + 2568);
    if (v43)
    {
      v44 = *(DerivedStorage + 2672);
      v45 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v45)
      {
        v45(v43, @"playerStats", 0x1F0B425F8, (v44 * 1000.0), 0);
      }
    }

    v46 = *(DerivedStorage + 2568);
    if (v46)
    {
      v47 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v47)
      {
        v47(v46, @"playerStats", 0x1F0B42618, (v17 * 1000.0), 0);
      }

      v48 = *(DerivedStorage + 2568);
      if (v48)
      {
        v49 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v49)
        {
          v49(v48, @"playerStats", 0x1F0B42538, v78 / 0xF4240, 0);
        }

        v50 = *(DerivedStorage + 2568);
        if (v50)
        {
          v51 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v51)
          {
            v51(v50, @"playerStats", 0x1F0B42478, v77, 0);
          }

          v52 = *(DerivedStorage + 2568);
          if (v52)
          {
            v53 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v53)
            {
              v53(v52, @"playerStats", 0x1F0B425B8, v14, 0);
            }

            v54 = *(DerivedStorage + 2568);
            if (v54)
            {
              v55 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v55)
              {
                v55(v54, @"playerStats", 0x1F0B42498, a2, 0);
              }

              v56 = *(DerivedStorage + 2568);
              if (v56)
              {
                v57 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                if (v57)
                {
                  v57(v56, @"playerStats", 0x1F0B28B58, v21, 0);
                }

                v58 = *(DerivedStorage + 2568);
                if (v58)
                {
                  v59 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                  if (v59)
                  {
                    v59(v58, @"playerStats", 0x1F0B42698, ((Seconds - v7) * 1000.0), 0);
                  }

                  v60 = *(DerivedStorage + 2568);
                  if (v60)
                  {
                    v61 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                    if (v61)
                    {
                      v61(v60, @"playerStats", 0x1F0B426B8, (v16 * 1000.0), 0);
                    }

                    v62 = *(DerivedStorage + 2568);
                    if (v62)
                    {
                      v63 = *(DerivedStorage + 2800);
                      v64 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                      if (v64)
                      {
                        v64(v62, @"playerStats", 0x1F0B426D8, (v63 * 1000.0), 0);
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

    v65 = *(DerivedStorage + 2568);
    if (v65)
    {
      v66 = *(DerivedStorage + 2840);
      v67 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v67)
      {
        v67(v65, @"playerStats", 0x1F0B42458, v66, 0);
      }
    }

    v68 = *(DerivedStorage + 2568);
    if (v68)
    {
      v69 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v69)
      {
        v69(v68, @"playerStats", 109, 0, 0);
      }
    }

    if (a2)
    {
      v70 = *(DerivedStorage + 2824);
      if (v70 >= 1)
      {
        *(DerivedStorage + 1728) = v70;
        *(DerivedStorage + 1732) = *(DerivedStorage + 2852);
      }
    }

    *(DerivedStorage + 2800) = 0;
    *(DerivedStorage + 2656) = 0u;
    *(DerivedStorage + 2672) = 0u;
    *(DerivedStorage + 2688) = 0;
    v71 = MEMORY[0x1E6960C70];
    v72 = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 2704) = *MEMORY[0x1E6960C70];
    v73 = *(v71 + 16);
    *(DerivedStorage + 2720) = v73;
    v74 = MEMORY[0x1E6960C80];
    v75 = *MEMORY[0x1E6960C80];
    *(DerivedStorage + 2728) = *MEMORY[0x1E6960C80];
    v76 = *(v74 + 16);
    *(DerivedStorage + 2744) = v76;
    *(DerivedStorage + 2768) = v73;
    *(DerivedStorage + 2752) = v72;
    *v8 = v75;
    *(v8 + 16) = v76;
    *(DerivedStorage + 2828) = -1;
    *(DerivedStorage + 2856) = -1;
    *(DerivedStorage + 2832) = 0;
    *(DerivedStorage + 2840) = 0;
    *(DerivedStorage + 2844) = 0;
    *(DerivedStorage + 2848) = 0;
    *(DerivedStorage + 2808) = 0;
    *(DerivedStorage + 2824) = *(DerivedStorage + 1728);
    *(DerivedStorage + 2820) = *(DerivedStorage + 2816);
    *(DerivedStorage + 2852) = *(DerivedStorage + 1732);
    if (!a2)
    {
      *(DerivedStorage + 2860) = FigAlternateGetVideoQualityIndex(*(DerivedStorage + 1680));
    }
  }
}

void fpfs_CommitAccessLogEntry(const void *a1, __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return;
  }

  v5 = DerivedStorage;
  if (fpfs_PlayingVideoOnly())
  {
    return;
  }

  v6 = *(v5 + 1680);
  if (v6)
  {
    Resolution = FigAlternateGetResolution(v6);
    if (v8 > 0.0 && Resolution > 0.0)
    {
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
    }

    CodecString = FigAlternateGetCodecString(*(v5 + 1680));
    if (CodecString)
    {
      CFDictionarySetValue(a2, @"c-codec-names", CodecString);
    }

    VideoRangeString = FigAlternateGetVideoRangeString(*(v5 + 1680));
    if (VideoRangeString)
    {
      CFDictionarySetValue(a2, @"c-video-range", VideoRangeString);
    }
  }

  Count = CFArrayGetCount(*(v5 + 1920));
  CFArrayAppendValue(*(v5 + 1920), a2);
  if (!Count)
  {
    fpfsi_UpdateAccessLogStartupPerformanceMetrics();
  }

  if (!*(v5 + 2144))
  {
    fpfs_EnqueueNotification(*v5, @"NewAccessLogEntry", a1, 0);
  }

  if (*(v5 + 840) == 0.0)
  {
    Seconds = 0.0;
    v13 = 1952;
  }

  else
  {
    *(v5 + 1952) = CFAbsoluteTimeGetCurrent();
    fpfs_GetTime(v5, &lhs);
    v18 = *(v5 + 1160);
    CMTimeAdd(&time, &lhs, &v18);
    Seconds = CMTimeGetSeconds(&time);
    v13 = 1944;
  }

  *(v5 + v13) = Seconds;
  v14 = *(v5 + 1024);
  if (!v14)
  {
    *(v5 + 1936) = *(v5 + 1952);
    *(v5 + 2112) = 0;
    *(v5 + 2144) = 0;
    *(v5 + 1960) = 0u;
LABEL_38:
    fpfs_MarkAccessLogEntryComplete();
    return;
  }

  mChannelsPerFrame = 0;
  v16 = 0;
  do
  {
    if ((*(v14 + 440) & 0x8000000000000000) != 0 && *(v5 + 1088) == *(v14 + 196))
    {
      *(v14 + 440) = Count;
      if (*(v14 + 168) == 6)
      {
        if ((*(v5 + 2648) & 0x8000000000000000) != 0)
        {
          *(v5 + 2648) = Count;
        }

        v16 = 1;
      }
    }

    if (*(v14 + 48) == 1936684398)
    {
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(v14 + 56));
      if (StreamBasicDescription)
      {
        if ((*(v14 + 168) == 6 || *(v14 + 440) == Count) && StreamBasicDescription->mChannelsPerFrame > mChannelsPerFrame)
        {
          mChannelsPerFrame = StreamBasicDescription->mChannelsPerFrame;
        }
      }
    }

    v14 = *(v14 + 24);
  }

  while (v14);
  if (mChannelsPerFrame)
  {
    FigCFDictionarySetInt32();
  }

  *(v5 + 1936) = *(v5 + 1952);
  *(v5 + 2112) = 0;
  *(v5 + 2144) = 0;
  *(v5 + 1960) = 0u;
  if (!v16)
  {
    goto LABEL_38;
  }
}

uint64_t fpfs_DetermineRanksOfVariant(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  if (!a2)
  {
    result = 0;
LABEL_6:
    AlternateRank = -1;
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  result = *(a1 + 96);
  if (!result)
  {
    goto LABEL_6;
  }

  AlternateRank = FigAlternatePlaybackBitrateMonitorGetAlternateRank(result, a2);
  result = FigAlternateGetVariantBitrateRank(a2, *(a1 + 2900));
  if (a3)
  {
LABEL_7:
    *a3 = AlternateRank;
  }

LABEL_8:
  if (a4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t fpfs_WeakStreamEnd(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  if (a2 < 3)
  {
    v4 = *(result + 16 * a2 + 8 * a3 + 976);
    if (!v4)
    {
      return result;
    }
  }

  else
  {
    FigSignalErrorAtGM();
    v4 = -1;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v5(v4);
  }

  result = *(v3 + 1024);
  if (result)
  {
    do
    {
      v6 = *(result + 24);
      if (*(result + 64) == v4)
      {
        result = fpfs_StopFeedingTrack(result, 0, 1);
      }

      if (!v6)
      {
        break;
      }

      result = v6;
    }

    while (*(v3 + 1024));
  }

  return result;
}

uint64_t fpfs_isExternalVideoOutput()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 728);
  if (!v1)
  {
    IsExternalDisplay = 0;
    goto LABEL_12;
  }

  if (CFArrayGetCount(v1) < 1)
  {
    IsExternalDisplay = 0;
LABEL_12:
    v6 = FPSupport_CopyMainDisplayCAName();
    if (v6)
    {
      v7 = v6;
      IsExternalDisplay = FPSupport_IsExternalDisplay(v6);
      CFRelease(v7);
    }

    goto LABEL_14;
  }

  v2 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 728), v2);
    if (FPSupport_IsExternalDisplay(ValueAtIndex))
    {
      break;
    }

    v4 = *(DerivedStorage + 728);
    if (v4)
    {
      if (CFArrayGetCount(v4) > ++v2)
      {
        continue;
      }
    }

    IsExternalDisplay = 0;
    goto LABEL_11;
  }

  IsExternalDisplay = 1;
LABEL_11:
  if (!ValueAtIndex)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (!IsExternalDisplay)
  {
    return *(CMBaseObjectGetDerivedStorage() + 462);
  }

  return IsExternalDisplay;
}

BOOL fpfsi_isLiveStreaming(uint64_t a1)
{
  v3 = 0uLL;
  v4 = 0;
  Duration = fpfsi_GetDuration(a1, &v3);
  return (Duration | ~HIDWORD(v3) & 0x11) == 0;
}

uint64_t fpfsi_GetDuration(uint64_t a1, __int128 *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    v5 = *DerivedStorage;
    dictionaryRepresentation = 0;
    v6 = MEMORY[0x1E6960C68];
    *a2 = *MEMORY[0x1E6960C68];
    *(a2 + 2) = *(v6 + 16);
    v7 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    ++*(v7 + 8);
    if (FigRetainProxyIsInvalidated() && (v8 = FigSignalErrorAtGM(), v8))
    {
      v9 = v8;
    }

    else
    {
      v10 = v4[114];
      if (v10)
      {
        v11 = v4 + 163;
        if (*(v4 + 1316))
        {
          v17 = *v11;
          *(a2 + 2) = v4[165];
          *a2 = v17;
        }

        else
        {
          AllocatorForMedia = FigGetAllocatorForMedia();
          FigBaseObject = FigBytePumpGetFigBaseObject(v10);
          v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v14)
          {
            v15 = v14(FigBaseObject, @"FBP_Duration", AllocatorForMedia, &dictionaryRepresentation);
            if (v15)
            {
              v9 = v15;
              if ((v15 & 0xFFFFFFFD) != 0xFFFFCE10)
              {
                goto LABEL_30;
              }
            }

            else
            {
              CMTimeMakeFromDictionary(&time1, dictionaryRepresentation);
              *a2 = *&time1.value;
              v18 = dictionaryRepresentation;
              *(a2 + 2) = time1.epoch;
              CFRelease(v18);
            }
          }

          v19 = *a2;
          v4[165] = *(a2 + 2);
          *v11 = v19;
        }

        if ((*(a2 + 3) & 0x1D) == 1)
        {
          v26 = *MEMORY[0x1E6960CC0];
          v20 = *(MEMORY[0x1E6960CC0] + 12);
          v27 = *(MEMORY[0x1E6960CC0] + 8);
          v21 = *(MEMORY[0x1E6960CC0] + 16);
          for (i = v4[128]; i; i = *(i + 24))
          {
            if (!*(i + 200) && *(i + 168) == 6 && (*(i + 244) & 1) != 0)
            {
              time1.timescale = v27;
              time1.flags = v20;
              time1.epoch = v21;
              v23 = *(i + 232);
              time1.value = v26;
              if (CMTimeCompare(&time1, &v23) < 0)
              {
                v26 = *(i + 232);
                v20 = *(i + 244);
                v27 = *(i + 240);
                v21 = *(i + 248);
              }
            }
          }

          if ((v20 & 0x1D) == 1)
          {
            time1.timescale = v27;
            time1.flags = v20;
            time1.epoch = v21;
            v23 = *a2;
            time1.value = v26;
            if (CMTimeCompare(&time1, &v23) >= 1)
            {
              *a2 = v26;
              *(a2 + 2) = v27;
              *(a2 + 3) = v20;
              *(a2 + 2) = v21;
              *v11 = *a2;
              v11[2] = v21;
            }
          }
        }

        v9 = 0;
        goto LABEL_30;
      }

      v9 = 4294954513;
    }

LABEL_30:
    fpfs_UnlockAndPostNotificationsWithCaller(v5);
    return v9;
  }

  return FigSignalErrorAtGM();
}

uint64_t fpfs_PlayingVideoOnly()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 840) == 0.0)
  {
    result = *(DerivedStorage + 1680);
    if (result)
    {
      return FigAlternateIsIFrameOnly(result) != 0;
    }
  }

  else
  {
    v2 = *(v1 + 108);
    return v2 > 2.0 || v2 < 0.0 || *(DerivedStorage + 2992);
  }

  return result;
}

uint64_t CMBaseObjectSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(a1, a2, a3);
  }

  return result;
}

uint64_t fpfsi_copyPlayableTimeL3(uint64_t a1, CFTypeRef *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  v4 = *(MEMORY[0x1E6960C98] + 16);
  v5 = *(MEMORY[0x1E6960C98] + 32);
  v49 = *MEMORY[0x1E6960C98];
  v50 = v4;
  v51 = v5;
  v57 = *MEMORY[0x1E6960C98];
  v58 = *(MEMORY[0x1E6960C98] + 8);
  v42 = DerivedStorage;
  v6 = *(DerivedStorage + 1680);
  if (v6)
  {
    v7 = FigAlternateIsIFrameOnly(v6) == 0;
  }

  else
  {
    v7 = 1;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fpfsi_copyPlayableTimeL3_cold_2(&time1);
    goto LABEL_56;
  }

  fpfsi_TotalTimeRangeInBuffer();
  value = time1.start.value;
  flags = time1.start.flags;
  timescale = time1.start.timescale;
  v43 = *&time1.start.epoch;
  v45 = *&time1.duration.timescale;
  epoch = time1.duration.epoch;
  v12 = *(v42 + 912);
  if (v12 != 0 && v7)
  {
    v13 = FigGetAllocatorForMedia();
    FigBaseObject = FigBytePumpGetFigBaseObject(v12);
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v15(FigBaseObject, 0x1F0B1F2B8, v13, &theArray);
    }
  }

  fpfsi_getPumpAvailableTimeRange(v42, &v49);
  if ((flags & 1) == 0)
  {
    goto LABEL_9;
  }

  v16 = v45;
  if ((v45 & 0x100000000) == 0)
  {
    goto LABEL_10;
  }

  v17 = v43;
  if (epoch || (*(&v43 + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  if (BYTE12(v49))
  {
    epoch = 0;
    if ((BYTE4(v51) & 1) == 0 || *(&v51 + 1) || (*(&v50 + 1) & 0x8000000000000000) != 0)
    {
      goto LABEL_11;
    }

    time1.start.value = value;
    time1.start.timescale = timescale;
    time1.start.flags = flags;
    time1.start.epoch = v43;
    *&lhs.start.value = v49;
    lhs.start.epoch = v50;
    if ((CMTimeCompare(&time1.start, &lhs.start) & 0x80000000) == 0)
    {
      epoch = 0;
LABEL_9:
      v16 = v45;
LABEL_10:
      v17 = v43;
      goto LABEL_11;
    }

    time1.start.value = value;
    time1.start.timescale = timescale;
    time1.start.flags = flags;
    *&time1.start.epoch = v43;
    *&time1.duration.timescale = v45;
    time1.duration.epoch = 0;
    CMTimeRangeGetEnd(&lhs.start, &time1);
    *&v48.start.value = v49;
    v48.start.epoch = v50;
    CMTimeRangeFromTimeToTime(&time1, &v48.start, &lhs.start);
    value = time1.start.value;
    flags = time1.start.flags;
    timescale = time1.start.timescale;
    v17 = *&time1.start.epoch;
    v16 = *&time1.duration.timescale;
    epoch = time1.duration.epoch;
  }

  else
  {
    epoch = 0;
  }

LABEL_11:
  lhs.start.value = value;
  lhs.start.timescale = timescale;
  lhs.start.flags = flags;
  *&lhs.start.epoch = v17;
  *&lhs.duration.timescale = v16;
  lhs.duration.epoch = epoch;
  FPSTimelineConverterL2TimeRangeToL3();
  v57 = time1.start.value;
  v18 = time1.start.flags;
  v58 = time1.start.timescale;
  v19 = time1.start.epoch;
  v20 = time1.duration.value;
  v46 = time1.duration.flags;
  v41 = time1.duration.timescale;
  v44 = time1.duration.epoch;
  if (theArray)
  {
    memset(&v48, 0, sizeof(v48));
    if (CFArrayGetCount(theArray) > 0)
    {
      v39 = v19;
      v40 = v20;
      v36 = a2;
      v21 = 0;
      idx = 0;
      v38 = 0;
      do
      {
        v22 = Mutable;
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
        CMTimeRangeMakeFromDictionary(&v48, ValueAtIndex);
        *&lhs.start.value = *&v48.start.value;
        lhs.start.epoch = v48.start.epoch;
        *&rhs.start.value = *(v42 + 1160);
        rhs.start.epoch = *(v42 + 1176);
        CMTimeSubtract(&time1.start, &lhs.start, &rhs.start);
        v48.start.epoch = time1.start.epoch;
        *&v48.start.value = *&time1.start.value;
        *&lhs.start.value = *&time1.start.value;
        *&lhs.start.epoch = *&v48.start.epoch;
        *&lhs.duration.timescale = *&v48.duration.timescale;
        FPSTimelineConverterL2TimeRangeToL3();
        v55 = time1.start.value;
        v24 = time1.start.flags;
        v56 = time1.start.timescale;
        v25 = time1.start.epoch;
        v26 = time1.duration.value;
        v28 = time1.duration.timescale;
        v27 = time1.duration.flags;
        v29 = time1.duration.epoch;
        if ((v18 & 1) != 0 && (v46 & 1) != 0 && !v44)
        {
          if (v40 < 0 || (time1.start.value = v55, lhs.start.value = v57, time1.start.timescale = v56, lhs.start.timescale = v58, lhs.start.flags = v18, lhs.start.epoch = v39, lhs.duration.value = v40, lhs.duration.timescale = v41, lhs.duration.flags = v46, lhs.duration.epoch = 0, CMTimeRangeGetIntersection(&rhs, &time1, &lhs), (rhs.start.flags & 1) != 0) && (rhs.duration.flags & 1) != 0 && !rhs.duration.epoch && (rhs.duration.value & 0x8000000000000000) == 0 && (time1.start = rhs.duration, *&lhs.start.value = *MEMORY[0x1E6960CC0], lhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16), !CMTimeCompare(&time1.start, &lhs.start)))
          {
            v44 = 0;
          }

          else
          {
            time1.start.value = v55;
            lhs.start.value = v57;
            time1.start.timescale = v56;
            time1.start.flags = v24;
            time1.start.epoch = v25;
            time1.duration.value = v26;
            time1.duration.timescale = v28;
            time1.duration.flags = v27;
            time1.duration.epoch = v29;
            lhs.start.timescale = v58;
            lhs.start.flags = v18;
            lhs.start.epoch = v39;
            lhs.duration.value = v40;
            lhs.duration.timescale = v41;
            lhs.duration.flags = v46;
            lhs.duration.epoch = 0;
            CMTimeRangeGetUnion(&rhs, &time1, &lhs);
            v18 = rhs.start.flags;
            v58 = rhs.start.timescale;
            v57 = rhs.start.value;
            v25 = rhs.start.epoch;
            v26 = rhs.duration.value;
            v41 = rhs.duration.timescale;
            v46 = rhs.duration.flags;
            v29 = rhs.duration.epoch;
            v55 = rhs.start.value;
            v56 = rhs.start.timescale;
            if (v38)
            {
              CFArrayRemoveValueAtIndex(v22, idx);
            }

            idx = CFArrayGetCount(v22);
            v38 = 1;
            v44 = v29;
            v27 = v46;
            v28 = v41;
            v39 = v25;
            v40 = v26;
            v24 = v18;
          }
        }

        time1.start.value = v55;
        time1.start.timescale = v56;
        time1.start.flags = v24;
        time1.start.epoch = v25;
        time1.duration.value = v26;
        time1.duration.timescale = v28;
        time1.duration.flags = v27;
        time1.duration.epoch = v29;
        v30 = fpfsi_CreatePlayableTimeEntryFromTimeRange(&time1);
        if (!v30)
        {
          value_low = FigSignalErrorAtGM();
          Mutable = v22;
          goto LABEL_38;
        }

        v31 = v30;
        Mutable = v22;
        CFArrayAppendValue(v22, v30);
        CFRelease(v31);
        ++v21;
      }

      while (v21 < CFArrayGetCount(theArray));
      a2 = v36;
      v19 = v39;
      v20 = v40;
      if (v38)
      {
        goto LABEL_37;
      }
    }
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_37;
  }

  if ((v46 & 1) == 0)
  {
    goto LABEL_37;
  }

  if (v44)
  {
    goto LABEL_37;
  }

  if (v20 < 0)
  {
    goto LABEL_37;
  }

  time1.start.value = v20;
  time1.start.timescale = v41;
  time1.start.flags = v46;
  time1.start.epoch = 0;
  *&lhs.start.value = *MEMORY[0x1E6960CC0];
  lhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  if (!CMTimeCompare(&time1.start, &lhs.start))
  {
    goto LABEL_37;
  }

  time1.start.value = v57;
  time1.start.timescale = v58;
  time1.start.flags = v18;
  time1.start.epoch = v19;
  time1.duration.value = v20;
  time1.duration.timescale = v41;
  time1.duration.flags = v46;
  time1.duration.epoch = 0;
  v32 = fpfsi_CreatePlayableTimeEntryFromTimeRange(&time1);
  if (v32)
  {
    v33 = v32;
    CFArrayAppendValue(Mutable, v32);
    CFRelease(v33);
LABEL_37:
    value_low = 0;
    *a2 = CFRetain(Mutable);
    goto LABEL_38;
  }

  fpfsi_copyPlayableTimeL3_cold_1(&time1);
LABEL_56:
  value_low = LODWORD(time1.start.value);
LABEL_38:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return value_low;
}

CFMutableDictionaryRef fpfsi_CreatePlayableTimeEntryFromTimeRange(_OWORD *a1)
{
  v1 = a1[1];
  v7 = *a1;
  v8 = *(a1 + 2);
  memset(&v6, 0, sizeof(v6));
  v2 = a1[2];
  *&range.start.value = *a1;
  *&range.start.epoch = v1;
  *&range.duration.timescale = v2;
  CMTimeRangeGetEnd(&v6, &range);
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    *&range.start.value = v7;
    range.start.epoch = v8;
    FigCFDictionarySetCMTime();
    range.start = v6;
    FigCFDictionarySetCMTime();
    *&range.start.value = v7;
    range.start.epoch = v8;
    CMTimeGetSeconds(&range.start);
    FigCFDictionarySetDouble();
    range.start = v6;
    CMTimeGetSeconds(&range.start);
    FigCFDictionarySetDouble();
  }

  else
  {
    fpfsi_CreatePlayableTimeEntryFromTimeRange_cold_1();
  }

  return Mutable;
}

BOOL fpfsi_HasRequiredSubstreamsToIndicateBuffering()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 1024);
  if (v1)
  {
    v2 = 0;
    do
    {
      if (*(v1 + 244))
      {
        v3 = *(v1 + 48);
        v4 = v3 == 1935832172 || v3 == 1986618469;
        if (v4 || v3 == 1936684398)
        {
          v2 |= 1 << *(v1 + 196);
        }
      }

      v1 = *(v1 + 24);
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  v6 = *(DerivedStorage + 472);
  if (*(DerivedStorage + 553))
  {
    if (!*(DerivedStorage + 472))
    {
      goto LABEL_22;
    }

    if (!*(DerivedStorage + 1744))
    {
      v2 |= 1u;
      if (!*(DerivedStorage + 473))
      {
        return (*(DerivedStorage + 1072) & ~v2 & 3) == 0;
      }

LABEL_24:
      if (!*(DerivedStorage + 1744))
      {
LABEL_27:
        v2 |= 2u;
        return (*(DerivedStorage + 1072) & ~v2 & 3) == 0;
      }

      v7 = *(DerivedStorage + 476);
      goto LABEL_26;
    }

    v6 = *(DerivedStorage + 475);
  }

  if (v6)
  {
    v2 |= 1u;
  }

LABEL_22:
  v7 = *(DerivedStorage + 473);
  if (*(DerivedStorage + 553))
  {
    if (!*(DerivedStorage + 473))
    {
      return (*(DerivedStorage + 1072) & ~v2 & 3) == 0;
    }

    goto LABEL_24;
  }

LABEL_26:
  if (v7)
  {
    goto LABEL_27;
  }

  return (*(DerivedStorage + 1072) & ~v2 & 3) == 0;
}

opaqueCMBufferQueue *fpfsi_TotalTimeRangeInBufferForTrackList(opaqueCMBufferQueue *result, uint64_t a2, uint64_t a3)
{
  for (i = *result; i; i = *(i + 24))
  {
    if (!*(i + 200) || *(i + 48) == 1986618469)
    {
      result = *(i + 96);
      if (result)
      {
        memset(&start, 0, sizeof(start));
        CMBufferQueueGetMinPresentationTimeStamp(&start, result);
        memset(&v16, 0, sizeof(v16));
        result = CMBufferQueueGetDuration(&v16, *(i + 96));
        for (j = 0; j != 5; ++j)
        {
          if (*&kCommonTypes[4 * j] == *(i + 48))
          {
            break;
          }
        }

        *(a3 + j) = 1;
        if ((start.flags & 0x1D) == 1 && (v16.flags & 0x1D) == 1)
        {
          memset(&v15, 0, sizeof(v15));
          time1.start = start;
          *&time2.start.value = *(i + 232);
          time2.start.epoch = *(i + 248);
          if (CMTimeCompare(&time1.start, &time2.start) >= 1)
          {
            time2.start = start;
            v12.start = v16;
            CMTimeSubtract(&time1.start, &time2.start, &v12.start);
            start = time1.start;
          }

          if (*(i + 200))
          {
            CMBufferQueueGetEndPresentationTimeStamp(&time2.start, *(i + 96));
            v12.start = start;
            CMTimeRangeFromTimeToTime(&time1, &v12.start, &time2.start);
            v15 = time1;
          }

          else
          {
            time1.start = start;
            time2.start = v16;
            CMTimeRangeMake(&v15, &time1.start, &time2.start);
          }

          result = CMBaseObjectGetDerivedStorage();
          v7 = a2 + 48 * j;
          if ((*(v7 + 12) & 1) == 0 || (*(v7 + 36) & 1) == 0 || *(v7 + 40) || (*(v7 + 24) & 0x8000000000000000) != 0)
          {
            v8 = *&v15.start.epoch;
            *v7 = *&v15.start.value;
            *(v7 + 16) = v8;
            v9 = *&v15.duration.timescale;
          }

          else
          {
            v10 = *(v7 + 16);
            *&time2.start.value = *v7;
            *&time2.start.epoch = v10;
            *&time2.duration.timescale = *(v7 + 32);
            v12 = v15;
            result = CMTimeRangeGetUnion(&time1, &time2, &v12);
            v11 = *&time1.start.epoch;
            *v7 = *&time1.start.value;
            *(v7 + 16) = v11;
            v9 = *&time1.duration.timescale;
          }

          *(v7 + 32) = v9;
        }
      }
    }
  }

  return result;
}

uint64_t FigManifoldFlush(uint64_t a1)
{
  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 16);
  result = VTable + 16;
  v5 = *(v4 + 40);
  if (v5)
  {

    return v5(a1);
  }

  return result;
}

uint64_t fpfs_LooksLikeStrandedTrack(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(a4 + 196);
  if (v8 == a2)
  {
    goto LABEL_14;
  }

  v9 = 0;
  v10 = *(a4 + 48);
  if (v10 <= 1935832171)
  {
    v12 = v10 == 1668047728 || v10 == 1835365473;
    v11 = 1;
    if (!v12)
    {
      return v9;
    }

LABEL_13:
    if (1 << a2 != v11)
    {
      return 0;
    }

LABEL_14:
    v13 = *(a4 + 168);
    if (v13 != 6)
    {
      v14 = *(a4 + 64);
      if (v14 != *(DerivedStorage + 976 + 16 * v8) && v14 != *(DerivedStorage + 976 + 16 * v8 + 8))
      {
        return 1;
      }

      if ((a3 >> v8))
      {
        return 1;
      }
    }

    return 0;
  }

  if (v10 == 1935832172)
  {
    v11 = 4;
    goto LABEL_13;
  }

  v11 = 1;
  if (v10 == 1986618469)
  {
    goto LABEL_13;
  }

  if (v10 == 1936684398)
  {
    v11 = 2;
    goto LABEL_13;
  }

  return v9;
}

uint64_t fpfs_FormatsAreCompatible(uint64_t a1, const opaqueCMFormatDescription *a2, const opaqueCMFormatDescription *a3)
{
  CMBaseObjectGetDerivedStorage();
  MediaType = CMFormatDescriptionGetMediaType(a2);
  if (MediaType != CMFormatDescriptionGetMediaType(a3))
  {
    return 0;
  }

  if (MediaType == 1986618469)
  {
    result = FPSupport_CanFormatsShareVideoRenderPipeline(a2, a3);
    if (!result)
    {
      return result;
    }

LABEL_15:
    MediaSubType = CMFormatDescriptionGetMediaSubType(a2);
    return MediaSubType == CMFormatDescriptionGetMediaSubType(a3);
  }

  if (MediaType == 1936684398)
  {
    v7 = fpfs_passthroughFormatForAudioFormat(a2);
    v8 = fpfs_passthroughFormatForAudioFormat(a3);
    if (v7 != v8)
    {
      v13 = v8;
      if (v7)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (v7 == 1633889587 && *(DerivedStorage + 536) && *(DerivedStorage + 569))
        {
          return 0;
        }
      }

      if ((fpfs_FormatsAreCompatible_cold_1(v13) & 1) == 0)
      {
        return 0;
      }
    }

    v9 = CMFormatDescriptionGetMediaSubType(a2);
    v10 = 1;
    if (v9 > 1885692722)
    {
      if (v9 <= 1902469938)
      {
        if (v9 != 1885692723)
        {
          v11 = 1902324531;
LABEL_32:
          if (v9 == v11)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }

LABEL_34:
        sizeOut = 0;
        FormatList = CMAudioFormatDescriptionGetFormatList(a2, &sizeOut);
        v10 = 0;
        if (FormatList && sizeOut >= 0x30)
        {
          mFormatID = FormatList->mASBD.mFormatID;
          v10 = 1;
          if (mFormatID <= 1885547314)
          {
            if (mFormatID == 1667574579)
            {
              goto LABEL_44;
            }

            v18 = 1700997939;
LABEL_42:
            if (mFormatID == v18)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          }

          if (mFormatID != 1885547315 && mFormatID != 1902324531)
          {
            v18 = 2053319475;
            goto LABEL_42;
          }
        }

LABEL_44:
        v19 = CMFormatDescriptionGetMediaSubType(a3);
        v20 = 1;
        if (v19 > 1885692722)
        {
          if (v19 <= 1902469938)
          {
            if (v19 != 1885692723)
            {
              v21 = 1902324531;
LABEL_59:
              if (v19 != v21)
              {
                goto LABEL_70;
              }

              return v10 == v20 || !*(CMBaseObjectGetDerivedStorage() + 568);
            }

            goto LABEL_61;
          }

          if (v19 == 2053464883)
          {
LABEL_61:
            sizeOut = 0;
            v23 = CMAudioFormatDescriptionGetFormatList(a3, &sizeOut);
            v20 = 0;
            if (!v23 || sizeOut < 0x30)
            {
              return v10 == v20 || !*(CMBaseObjectGetDerivedStorage() + 568);
            }

            v24 = v23->mASBD.mFormatID;
            v20 = 1;
            if (v24 <= 1885547314)
            {
              if (v24 == 1667574579)
              {
                return v10 == v20 || !*(CMBaseObjectGetDerivedStorage() + 568);
              }

              v25 = 1700997939;
            }

            else
            {
              if (v24 == 1885547315 || v24 == 1902324531)
              {
                return v10 == v20 || !*(CMBaseObjectGetDerivedStorage() + 568);
              }

              v25 = 2053319475;
            }

            if (v24 == v25)
            {
              return v10 == v20 || !*(CMBaseObjectGetDerivedStorage() + 568);
            }

LABEL_70:
            v20 = 0;
            return v10 == v20 || !*(CMBaseObjectGetDerivedStorage() + 568);
          }

          if (v19 == 2053319475)
          {
            return v10 == v20 || !*(CMBaseObjectGetDerivedStorage() + 568);
          }

          v22 = 1902469939;
        }

        else
        {
          if (v19 > 1700997938)
          {
            if (v19 == 1700997939)
            {
              return v10 == v20 || !*(CMBaseObjectGetDerivedStorage() + 568);
            }

            if (v19 != 1700998451)
            {
              v21 = 1885547315;
              goto LABEL_59;
            }

            goto LABEL_61;
          }

          if (v19 == 1667574579)
          {
            return v10 == v20 || !*(CMBaseObjectGetDerivedStorage() + 568);
          }

          v22 = 1667575091;
        }

        if (v19 != v22)
        {
          goto LABEL_70;
        }

        goto LABEL_61;
      }

      if (v9 == 2053464883)
      {
        goto LABEL_34;
      }

      if (v9 == 2053319475)
      {
        goto LABEL_44;
      }

      v15 = 1902469939;
    }

    else
    {
      if (v9 > 1700997938)
      {
        if (v9 == 1700997939)
        {
          goto LABEL_44;
        }

        if (v9 != 1700998451)
        {
          v11 = 1885547315;
          goto LABEL_32;
        }

        goto LABEL_34;
      }

      if (v9 == 1667574579)
      {
        goto LABEL_44;
      }

      v15 = 1667575091;
    }

    if (v9 != v15)
    {
LABEL_43:
      v10 = 0;
      goto LABEL_44;
    }

    goto LABEL_34;
  }

  if (MediaType != 1835365473)
  {
    goto LABEL_15;
  }

  return FigStreamTrackCanMetadataFormatsSync(a2, a3);
}

void fpfsi_ClearCachedVideoRenderChains(const __CFArray *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 832);
  if (v3)
  {
    fpfs_releaseRenderChain(a1, v3);
  }

  *(DerivedStorage + 832) = 0;
}

uint64_t fpfsi_PlaybackHasBufferedBeyondForwardEndTime()
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v1 = *(result + 1352);
    v2 = *(result + 1368);
    FPSTimelineConverterL3TimeToL2(&v1, &v3);
    return fpfsi_PlaybackHasBufferedBeyondTime() != 0;
  }

  return result;
}

uint64_t fpfsi_IterateMutableTrackList(uint64_t *a1, void *a2, uint64_t *a3)
{
  if (!*a2)
  {
    v3 = *a1;
LABEL_10:
    *a2 = v3;
    v4 = v3;
    if (v3)
    {
      goto LABEL_14;
    }

    result = 0;
LABEL_12:
    v6 = -1;
    goto LABEL_18;
  }

  if (*a3 < 0 || (v3 = *a1) == 0)
  {
    result = 0;
    *a2 = 0;
    goto LABEL_12;
  }

  v4 = *a1;
  while (*(v4 + 32) != *a3)
  {
    v4 = *(v4 + 24);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  *a2 = v4;
LABEL_14:
  v7 = *(v4 + 24);
  if (v7)
  {
    v6 = *(v7 + 32);
  }

  else
  {
    v6 = -1;
  }

  result = 1;
LABEL_18:
  *a3 = v6;
  return result;
}

uint64_t fpfs_FindTrackStartTime@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 1024);
  if (v3)
  {
    while (*(v3 + 80) != a2 || (*(v3 + 156) & 0x1D) != 1 || (*(v3 + 220) & 1) == 0)
    {
      v3 = *(v3 + 24);
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    *a3 = *(v3 + 208);
    v5 = *(v3 + 224);
  }

  else
  {
LABEL_6:
    v4 = MEMORY[0x1E6960C70];
    *a3 = *MEMORY[0x1E6960C70];
    v5 = *(v4 + 16);
  }

  *(a3 + 16) = v5;
  return result;
}

uint64_t fpfs_SetTrackStartTimeAndTimeOffset(uint64_t a1, opaqueCMSampleBuffer *a2, int a3)
{
  v146 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v117 = CMBaseObjectGetDerivedStorage();
  v129 = **&MEMORY[0x1E6960CC0];
  v119 = *&v129.value;
  v128 = v129;
  epoch = v129.epoch;
  if (!a2)
  {
    fpfs_SetTrackStartTimeAndTimeOffset_cold_1(&time);
    return LODWORD(time.value);
  }

  v120 = a3;
  CMSampleBufferGetPresentationTimeStamp(&v129, a2);
  fpfs_GetTimeOffsetIntoSegment(a2, &v128);
  v8 = *(DerivedStorage + 1024);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v12 = (a1 + 80);
    v11 = *(a1 + 80);
    v13 = *(DerivedStorage + 1024);
    do
    {
      v14 = *(v13 + 80);
      if (v14 <= v11)
      {
        v15 = *(v13 + 168);
        if (v9 <= v14)
        {
          v16 = v13;
        }

        else
        {
          v16 = v10;
        }

        if (v9 > v14)
        {
          v14 = v9;
        }

        v17 = v15 == 6 || v15 == 1;
        if (v17)
        {
          v10 = v16;
        }

        if (v17)
        {
          v9 = v14;
        }
      }

      v13 = *(v13 + 24);
    }

    while (v13);
    v18 = (a1 + 144);
    while (*(v8 + 80) != v11 || *(v8 + 472) || (*(v8 + 156) & 0x1D) != 1)
    {
      v8 = *(v8 + 24);
      if (!v8)
      {
        goto LABEL_27;
      }
    }

    *&time.value = *(v8 + 144);
    v19 = *(v8 + 160);
  }

  else
  {
    v10 = 0;
    v18 = (a1 + 144);
    v12 = (a1 + 80);
LABEL_27:
    *&time.value = *MEMORY[0x1E6960C70];
    v19 = *(MEMORY[0x1E6960C70] + 16);
  }

  time.epoch = v19;
  v20 = *&time.value;
  *(v18 + 2) = v19;
  *v18 = v20;
  v21 = &unk_1EAF16000;
  if (dword_1EAF169F0)
  {
    v121 = v18;
    LODWORD(time2.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = time2.value;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v24 = value;
    }

    else
    {
      v24 = value & 0xFFFFFFFE;
    }

    if (v24)
    {
      v113 = DerivedStorage;
      v25 = *DerivedStorage;
      if (*DerivedStorage)
      {
        v26 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v26 = "";
      }

      v111 = v26;
      if (v6)
      {
        v27 = v6;
        v28 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v27 = 0;
        v28 = "";
      }

      if (v10)
      {
        v29 = *(v10 + 32);
      }

      else
      {
        v29 = -1;
      }

      v30 = *v121;
      time.epoch = *(v121 + 2);
      *&time.value = v30;
      Seconds = CMTimeGetSeconds(&time);
      LODWORD(rhs.value) = 136316674;
      *(&rhs.value + 4) = "fpfs_SetTrackStartTimeAndTimeOffset";
      LOWORD(rhs.flags) = 2048;
      *(&rhs.flags + 2) = v25;
      HIWORD(rhs.epoch) = 2082;
      v132 = v111;
      v133 = 2048;
      v134 = v27;
      v135 = 2082;
      v136 = v28;
      v137 = 1024;
      *v138 = v29;
      *&v138[4] = 2048;
      *&v138[6] = Seconds;
      _os_log_send_and_compose_impl();
      DerivedStorage = v113;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v18 = v121;
    v21 = &unk_1EAF16000;
  }

  if ((*(a1 + 156) & 0x1D) == 1)
  {
    fpfs_FindTrackStartTime(DerivedStorage, *(a1 + 80), &time);
    *(a1 + 208) = time;
    v32 = *(a1 + 48);
    if (v32 == 1986618469 || v32 == 1936684398)
    {
      v33 = *(a1 + 196);
      if (*(a1 + 64) == *(DerivedStorage + 16 * v33 + 976))
      {
        memset(&type, 0, sizeof(type));
        v34 = DerivedStorage + 24 * v33;
        v35 = *(v34 + 1184);
        time.epoch = *(v34 + 1200);
        *&time.value = v35;
        rhs = *(DerivedStorage + 1160);
        CMTimeSubtract(&type, &time, &rhs);
        rhs = type;
        time2 = v128;
        CMTimeAdd(&time, &rhs, &time2);
        type = time;
        memset(&v126, 0, sizeof(v126));
        rhs = v129;
        time2 = *(a1 + 412);
        CMTimeSubtract(&time, &rhs, &time2);
        v36 = *v18;
        rhs.epoch = *(v18 + 2);
        *&rhs.value = v36;
        CMTimeAdd(&v126, &time, &rhs);
        memset(&time2, 0, sizeof(time2));
        time = type;
        rhs = v126;
        CMTimeSubtract(&time2, &time, &rhs);
        time = time2;
        *&rhs.value = v119;
        rhs.epoch = epoch;
        if (CMTimeCompare(&time, &rhs))
        {
          v37 = *(DerivedStorage + 1024);
          if (v37)
          {
            while (1)
            {
              if (*(v37 + 80) == *v12)
              {
                if ((*(v37 + 168) & 0xFFFFFFFC) == 4)
                {
                  break;
                }

                if (v37 == a1)
                {
                  v38 = *(a1 + 48);
                }

                else
                {
                  v38 = *(a1 + 48);
                  if (*(v37 + 48) == v38)
                  {
                    break;
                  }
                }

                if (v38 == 1936684398 && *(v37 + 48) == 1986618469)
                {
                  break;
                }
              }

              v37 = *(v37 + 24);
              if (!v37)
              {
                goto LABEL_60;
              }
            }
          }

          else
          {
LABEL_60:
            if (dword_1EAF169F0)
            {
              v112 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v21 = &unk_1EAF16000;
            }

            v39 = *v12;
            time = time2;
            fpfs_TimeShiftDiscontinuityDomain(DerivedStorage, v39, &time);
          }
        }
      }
    }

    if (v10 && *(v10 + 80) == *v12)
    {
      fpfs_ChangeTrackState(a1, 4);
    }
  }

  if ((*(a1 + 156) & 0x1D) == 1)
  {
    return 0;
  }

  if (*(a1 + 200) && *(a1 + 48) == 1986618469)
  {
    if ((*(DerivedStorage + 1184 + 24 * *(a1 + 196) + 12) & 1) == 0)
    {
      goto LABEL_109;
    }

    v40 = DerivedStorage + 1184 + 24 * *(a1 + 196);
    v41 = *v40;
    rhs.epoch = *(v40 + 16);
    *&rhs.value = v41;
    time2 = *(DerivedStorage + 1160);
    CMTimeSubtract(&time, &rhs, &time2);
    *(a1 + 208) = time;
    if (!v10)
    {
      goto LABEL_109;
    }

    if ((*(v10 + 244) & 1) == 0)
    {
      goto LABEL_78;
    }

    v42 = *(v117 + 108);
    if (v42 >= 0.0)
    {
      time = *(a1 + 208);
      rhs = *(v10 + 232);
      if (CMTimeCompare(&time, &rhs) > 0)
      {
LABEL_78:
        v43 = *(a1 + 208);
        *(v10 + 248) = *(a1 + 224);
        *(v10 + 232) = v43;
        if (*(a1 + 128))
        {
          time2 = **&MEMORY[0x1E6960C70];
          fpfs_scheduleForwardEndTimeForTrack();
          if (dword_1EAF169F0)
          {
            LODWORD(type.value) = 0;
            LOBYTE(v126.value) = 0;
            v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v45 = type.value;
            if (os_log_type_enabled(v44, v126.value))
            {
              v46 = v45;
            }

            else
            {
              v46 = v45 & 0xFFFFFFFE;
            }

            if (v46)
            {
              v114 = DerivedStorage;
              v47 = *DerivedStorage;
              if (*DerivedStorage)
              {
                v48 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v48 = "";
              }

              v124 = v18;
              v93 = *(a1 + 16);
              if (v93)
              {
                v94 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v94 = "";
              }

              v95 = *(a1 + 32);
              time = time2;
              v96 = CMTimeGetSeconds(&time);
              LODWORD(rhs.value) = 136316674;
              *(&rhs.value + 4) = "fpfs_SetTrackStartTimeAndTimeOffset";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v47;
              HIWORD(rhs.epoch) = 2082;
              v132 = v48;
              v133 = 2048;
              v134 = v93;
              v135 = 2082;
              v136 = v94;
              v137 = 1024;
              *v138 = v95;
              *&v138[4] = 2048;
              *&v138[6] = v96;
              _os_log_send_and_compose_impl();
              DerivedStorage = v114;
              v18 = v124;
              v21 = &unk_1EAF16000;
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        goto LABEL_109;
      }

      v42 = *(v117 + 108);
    }

    if (v42 >= 0.0)
    {
      goto LABEL_109;
    }

    time = *(a1 + 208);
    rhs = *(v10 + 232);
    if ((CMTimeCompare(&time, &rhs) & 0x80000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_78;
  }

  v49 = *(DerivedStorage + 1024);
  if (v10)
  {
    goto LABEL_87;
  }

  if (v49)
  {
    v52 = 0;
    v53 = *(DerivedStorage + 1024);
    do
    {
      if (*(v53 + 80) < *v12 && *(v53 + 168) == 3)
      {
        v52 = v53;
      }

      v53 = *(v53 + 24);
    }

    while (v53);
    if (v52)
    {
LABEL_87:
      for (time = **&MEMORY[0x1E6960C80]; v49; v49 = *(v49 + 24))
      {
        v50 = *(v49 + 80);
        if (v50 < *v12 || v50 == *v12 && *(v49 + 472)) && (*(v49 + 244))
        {
          rhs = time;
          time2 = *(v49 + 232);
          if (CMTimeCompare(&rhs, &time2) < 0)
          {
            time = *(v49 + 232);
            *(a1 + 201) = 1;
          }
        }
      }

      *(a1 + 208) = time;
    }
  }

  if ((*(a1 + 220) & 0x1D) != 1)
  {
    v51 = *(a1 + 196);
    if (*(DerivedStorage + 1184 + 24 * *(a1 + 196) + 12))
    {
      memset(&time, 0, sizeof(time));
      v54 = DerivedStorage + 1184 + 24 * v51;
      v55 = *v54;
      rhs.epoch = *(v54 + 16);
      *&rhs.value = v55;
      time2 = *(DerivedStorage + 1160);
      CMTimeSubtract(&time, &rhs, &time2);
      time2 = time;
      type = v128;
      CMTimeAdd(&rhs, &time2, &type);
      time = rhs;
      time2 = rhs;
      *&type.value = v119;
      type.epoch = epoch;
      CMTimeMaximum(&rhs, &time2, &type);
      *(a1 + 208) = rhs;
      if (*(a1 + 196) != 2)
      {
        time2 = *(a1 + 208);
        type = v129;
        CMTimeSubtract(&rhs, &time2, &type);
        v56 = *&rhs.value;
        *(v18 + 2) = rhs.epoch;
        *v18 = v56;
      }
    }

    else
    {
      fpfs_GetTime(DerivedStorage, &time);
      *(a1 + 208) = time;
    }
  }

LABEL_109:
  v57 = DerivedStorage + 24 * *(a1 + 196);
  if (*(v57 + 260))
  {
    v58 = *(v57 + 248);
    *(v18 + 2) = *(v57 + 264);
    *v18 = v58;
    if (v21[636])
    {
      LODWORD(time2.value) = 0;
      LOBYTE(type.value) = 0;
      v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v60 = time2.value;
      if (os_log_type_enabled(v59, type.value))
      {
        v61 = v60;
      }

      else
      {
        v61 = v60 & 0xFFFFFFFE;
      }

      if (v61)
      {
        v115 = DerivedStorage;
        v62 = *DerivedStorage;
        if (*DerivedStorage)
        {
          v63 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v63 = "";
        }

        v122 = v63;
        v64 = *(a1 + 16);
        if (v64)
        {
          v65 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v65 = "";
        }

        v66 = *(a1 + 32);
        v67 = *v18;
        time.epoch = *(v18 + 2);
        *&time.value = v67;
        v68 = CMTimeGetSeconds(&time);
        LODWORD(rhs.value) = 136316674;
        *(&rhs.value + 4) = "fpfs_SetTrackStartTimeAndTimeOffset";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = v62;
        HIWORD(rhs.epoch) = 2082;
        v132 = v122;
        v133 = 2048;
        v134 = v64;
        v135 = 2082;
        v136 = v65;
        v137 = 1024;
        *v138 = v66;
        *&v138[4] = 2048;
        *&v138[6] = v68;
        _os_log_send_and_compose_impl();
        DerivedStorage = v115;
        v21 = &unk_1EAF16000;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v69 = v18;
  if (v120)
  {
    if ((*(a1 + 156) & 1) != 0 || *(a1 + 196) != 2)
    {
      goto LABEL_143;
    }

    if (v21[636])
    {
      LODWORD(time2.value) = 0;
      LOBYTE(type.value) = 0;
      v70 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v71 = time2.value;
      if (os_log_type_enabled(v70, type.value))
      {
        v72 = v71;
      }

      else
      {
        v72 = v71 & 0xFFFFFFFE;
      }

      if (v72)
      {
        v123 = v18;
        v73 = DerivedStorage;
        v74 = *DerivedStorage;
        if (*DerivedStorage)
        {
          v75 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v75 = "";
        }

        v76 = *(a1 + 16);
        if (v76)
        {
          v77 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v77 = "";
        }

        v78 = *(a1 + 32);
        LODWORD(rhs.value) = 136316418;
        *(&rhs.value + 4) = "fpfs_SetTrackStartTimeAndTimeOffset";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = v74;
        HIWORD(rhs.epoch) = 2082;
        v132 = v75;
        v133 = 2048;
        v134 = v76;
        v135 = 2082;
        v136 = v77;
        v137 = 1024;
        *v138 = v78;
        _os_log_send_and_compose_impl();
        DerivedStorage = v73;
        v18 = v123;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v79 = MEMORY[0x1E6960C68];
    *v18 = *MEMORY[0x1E6960C68];
    *(v18 + 2) = *(v79 + 16);
    v69 = (a1 + 208);
  }

  v80 = MEMORY[0x1E6960C70];
  *v69 = *MEMORY[0x1E6960C70];
  *(v69 + 2) = *(v80 + 16);
LABEL_143:
  if (*(a1 + 156))
  {
    return 0;
  }

  rhs = *(a1 + 208);
  time2 = v129;
  CMTimeSubtract(&time, &rhs, &time2);
  v81 = *&time.value;
  *(v18 + 2) = time.epoch;
  *v18 = v81;
  v82 = v21[636];
  if (*(a1 + 156))
  {
    if (v82)
    {
      LODWORD(time2.value) = 0;
      LOBYTE(type.value) = 0;
      v83 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v84 = time2.value;
      if (os_log_type_enabled(v83, type.value))
      {
        v85 = v84;
      }

      else
      {
        v85 = v84 & 0xFFFFFFFE;
      }

      if (v85)
      {
        v86 = *DerivedStorage;
        if (v86)
        {
          v87 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v87 = "";
        }

        v88 = *(a1 + 16);
        if (v88)
        {
          v89 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v89 = "";
        }

        v90 = *v18;
        time.epoch = *(v18 + 2);
        *&time.value = v90;
        v91 = CMTimeGetSeconds(&time);
        LODWORD(rhs.value) = 136316418;
        *(&rhs.value + 4) = "fpfs_SetTrackStartTimeAndTimeOffset";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = v86;
        HIWORD(rhs.epoch) = 2082;
        v132 = v87;
        v133 = 2048;
        v134 = v88;
        v135 = 2082;
        v136 = v89;
        v137 = 2048;
        *v138 = v91;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  if (v82)
  {
    LODWORD(time2.value) = 0;
    LOBYTE(type.value) = 0;
    v97 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v98 = time2.value;
    if (os_log_type_enabled(v97, type.value))
    {
      v99 = v98;
    }

    else
    {
      v99 = v98 & 0xFFFFFFFE;
    }

    if (v99)
    {
      v116 = DerivedStorage;
      v100 = *DerivedStorage;
      if (*DerivedStorage)
      {
        v101 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v101 = "";
      }

      v125 = v101;
      v102 = *(a1 + 16);
      if (v102)
      {
        v103 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v103 = "";
      }

      v104 = *(a1 + 32);
      time = *(a1 + 208);
      v105 = CMTimeGetSeconds(&time);
      time = v129;
      v106 = CMTimeGetSeconds(&time);
      v107 = *(a1 + 80);
      v108 = v116 + 24 * *(a1 + 196);
      v109 = *(v108 + 1184);
      time.epoch = *(v108 + 1200);
      *&time.value = v109;
      v110 = CMTimeGetSeconds(&time);
      LODWORD(rhs.value) = 136317442;
      *(&rhs.value + 4) = "fpfs_SetTrackStartTimeAndTimeOffset";
      LOWORD(rhs.flags) = 2048;
      *(&rhs.flags + 2) = v100;
      HIWORD(rhs.epoch) = 2082;
      v132 = v125;
      v133 = 2048;
      v134 = v102;
      v135 = 2082;
      v136 = v103;
      v137 = 1024;
      *v138 = v104;
      *&v138[4] = 2048;
      *&v138[6] = v105;
      v139 = 2048;
      v140 = v106;
      v141 = 1024;
      v142 = v107;
      v143 = 2048;
      v144 = v110;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 4294954433;
}

double fpfs_setUnlikelyToKeepUpAndRanDry(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fpfs_setPlaythroughPredictionAndNotify(a1, 2);
  fpfsi_setPlaybackMonitorOkayToAttemptSwitchUp(DerivedStorage, 0);

  return fpfs_setRanDry(a1);
}

uint64_t fpfs_setTimebaseStarter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && *(a2 + 112) && !fpfs_LastRenderingTrackofType(a1, *(a2 + 48), a2))
  {
    v7 = *(a2 + 112);
  }

  else
  {
    if (!a3 || !*(a3 + 112) || fpfs_LastRenderingTrackofType(a1, *(a3 + 48), a3) || !*(*(CMBaseObjectGetVTable() + 16) + 8))
    {
      return 0;
    }

    v7 = *(a3 + 112);
  }

  FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v7 + 32));
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = *MEMORY[0x1E695E4D0];

  return v9(FigBaseObject, @"IsTimebaseStarter", v10);
}

CMTime *fpfs_GetTimeOffsetIntoSegment@<X0>(void *a1@<X0>, CMTime *a2@<X8>)
{
  v4 = MEMORY[0x1E6960CC0];
  *&a2->value = *MEMORY[0x1E6960CC0];
  a2->epoch = *(v4 + 16);
  result = CMGetAttachment(a1, *MEMORY[0x1E6962E18], 0);
  if (result)
  {
    memset(&v8, 0, sizeof(v8));
    CMTimeMakeFromDictionary(&v8, result);
    CMSampleBufferGetPresentationTimeStamp(&lhs, a1);
    v6 = v8;
    return CMTimeSubtract(a2, &lhs, &v6);
  }

  return result;
}

uint64_t fpfs_TimeShiftDiscontinuityDomain(uint64_t result, uint64_t a2, CMTime *a3)
{
  v86 = *MEMORY[0x1E69E9840];
  v41 = result;
  v3 = *(result + 1024);
  if (v3)
  {
    v4 = a3;
    v5 = a2;
    v6 = result + 248;
    v43 = result + 248;
    do
    {
      if (*(v3 + 80) == v5)
      {
        v7 = *(v3 + 168);
        if (v7 > 3 || v7 == 1)
        {
          if (dword_1EAF169F0)
          {
            LODWORD(v45.value) = 0;
            LOBYTE(v44.value) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = v45.value;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v44.value))
            {
              v21 = value;
            }

            else
            {
              v21 = value & 0xFFFFFFFE;
            }

            if (v21)
            {
              v22 = *v41;
              if (*v41)
              {
                v23 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v23 = "";
              }

              v32 = *(v3 + 16);
              if (v32)
              {
                v33 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v33 = "";
              }

              v34 = *(v3 + 32);
              v35 = *(v3 + 168);
              LODWORD(rhs.value) = 136316674;
              *(&rhs.value + 4) = "fpfs_TimeShiftDiscontinuityDomain";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v22;
              HIWORD(rhs.epoch) = 2082;
              v73 = v23;
              v74 = 2048;
              v75 = v32;
              v76 = 2082;
              v77 = v33;
              v78 = 1024;
              v79 = v34;
              v80 = 1024;
              v81 = v35;
              _os_log_send_and_compose_impl();
              v4 = a3;
            }

            result = fig_log_call_emit_and_clean_up_after_send_and_compose();
            v5 = a2;
            goto LABEL_41;
          }
        }

        else
        {
          Head = CMBufferQueueGetHead(*(v3 + 88));
          v10 = *(v3 + 144);
          v11 = *(v3 + 152);
          v84 = *(v3 + 156);
          v85 = *(v3 + 164);
          memset(&v45, 0, sizeof(v45));
          lhs.value = v10;
          lhs.timescale = v11;
          *&lhs.flags = *(v3 + 156);
          HIDWORD(lhs.epoch) = *(v3 + 164);
          rhs = *v4;
          CMTimeAdd(&v45, &lhs, &rhs);
          lhs = *(v6 + 24 * *(v3 + 196));
          rhs = v45;
          result = CMTimeCompare(&lhs, &rhs);
          if (result)
          {
            *(v6 + 24 * *(v3 + 196)) = v45;
          }

          *(v3 + 144) = v45;
          if (!Head)
          {
            if (dword_1EAF169F0)
            {
              LODWORD(v44.value) = 0;
              LOBYTE(v82) = 0;
              v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v15 = v44.value;
              if (os_log_type_enabled(v14, v82))
              {
                v16 = v15;
              }

              else
              {
                v16 = v15 & 0xFFFFFFFE;
              }

              if (v16)
              {
                v17 = *v41;
                if (*v41)
                {
                  v18 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v18 = "";
                }

                v39 = v18;
                v24 = *(v3 + 16);
                if (v24)
                {
                  v25 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v25 = "";
                }

                v38 = v25;
                v26 = *(v3 + 32);
                timescale = a3->timescale;
                lhs = *a3;
                v36 = lhs.value;
                Seconds = CMTimeGetSeconds(&lhs);
                lhs.value = v10;
                lhs.timescale = v11;
                *&lhs.flags = v84;
                HIDWORD(lhs.epoch) = v85;
                v28 = CMTimeGetSeconds(&lhs);
                v29 = v45.value;
                v30 = v45.timescale;
                lhs = v45;
                v31 = CMTimeGetSeconds(&lhs);
                LODWORD(lhs.value) = 136318722;
                *(&lhs.value + 4) = "fpfs_TimeShiftDiscontinuityDomain";
                LOWORD(lhs.flags) = 2048;
                *(&lhs.flags + 2) = v17;
                HIWORD(lhs.epoch) = 2082;
                v47 = v39;
                v48 = 2048;
                v49 = v24;
                v50 = 2082;
                v51 = v38;
                v52 = 1024;
                v53 = v26;
                v54 = 2048;
                v55 = v36;
                v56 = 1024;
                v57 = timescale;
                v58 = 2048;
                v59 = Seconds;
                v60 = 2048;
                v61 = v10;
                v62 = 1024;
                v63 = v11;
                v64 = 2048;
                v65 = v28;
                v66 = 2048;
                v67 = v29;
                v68 = 1024;
                v69 = v30;
                v70 = 2048;
                v71 = v31;
                _os_log_send_and_compose_impl();
                v5 = a2;
              }

              result = fig_log_call_emit_and_clean_up_after_send_and_compose();
              v4 = a3;
              v6 = v43;
            }

            goto LABEL_42;
          }

          memset(&v44, 0, sizeof(v44));
          CMSampleBufferGetOutputPresentationTimeStamp(&v44, Head);
          v12 = MEMORY[0x1E6960CC0];
          *(v3 + 232) = *MEMORY[0x1E6960CC0];
          *(v3 + 248) = *(v12 + 16);
          CMBufferQueueCallForEachBuffer(*(v3 + 88), fpfs_AdjustTime, v3);
          result = CMSampleBufferGetOutputPresentationTimeStamp(&lhs, Head);
          v82 = *&lhs.flags;
          epoch_high = HIDWORD(lhs.epoch);
          if (dword_1EAF169F0)
          {
            v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
            result = fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_41:
            v6 = v43;
          }
        }
      }

LABEL_42:
      v3 = *(v3 + 24);
    }

    while (v3);
  }

  return result;
}

uint64_t fpfs_setPlaythroughPredictionAndNotify(const void *a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v5 = *(result + 524);
  if (v5 != a2)
  {
    *(result + 524) = a2;
    if (a2 == 1 || v5 == 1)
    {

      return fpfs_EnqueuePlaythroughPredictionNotification(a1);
    }
  }

  return result;
}

void fpfsi_setPlaybackMonitorOkayToAttemptSwitchUp(uint64_t a1, int a2)
{
  v3 = *(a1 + 524);
  v4 = v3 == 1;
  cf = 0;
  v5 = *(a1 + 96);
  if (!v5 || (a2 != 5 ? (v6 = a2 == 2) : (v6 = 1), v6 ? (v7 = v3 == 1) : (v7 = 0), !v7 ? (v8 = MEMORY[0x1E695E4C0]) : (v8 = MEMORY[0x1E695E4D0]), (v9 = *(*(CMBaseObjectGetVTable() + 8) + 56)) != 0 && !v9(v5, @"AfmfpbProperty_OkayToAttemptSwitchUp", *v8)))
  {
    v10 = *(a1 + 912);
    if (v10)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      FigBaseObject = FigBytePumpGetFigBaseObject(v10);
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        v13(FigBaseObject, 0x1F0B1F818, AllocatorForMedia, &cf);
        if (cf)
        {
          FigCMCDHeaderVendorSetIsLikelyToKeepUp(cf, v4);
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }
    }
  }
}

uint64_t fpfs_EnqueuePlaythroughPredictionNotification(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 524) == 1)
  {
    v3 = &kFigPlaybackItemNotification_StreamLikelyToKeepUp;
  }

  else
  {
    v3 = &kFigPlaybackItemNotification_StreamUnlikelyToKeepUp;
  }

  v4 = *v3;
  v5 = *DerivedStorage;

  return fpfs_EnqueueNotification(v5, v4, a1, 0);
}

double fpfsi_PrepareToStartWhenLikelyToKeepUp(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LODWORD(result) = *(CMBaseObjectGetDerivedStorage() + 108);
  if (*&result != 0.0)
  {
    LODWORD(result) = *(DerivedStorage + 840);
    if (*&result == 0.0)
    {
      if (*(DerivedStorage + 465))
      {
        *&v13.value = *MEMORY[0x1E6960C70];
        v6 = *(MEMORY[0x1E6960C70] + 16);
        v13.epoch = v6;
        v8 = *&v13.value;
        *&v14.value = *&v13.value;
        v14.epoch = v6;
        v7 = MEMORY[0x1E6960CC0];
        fpfs_CheckCanKeepUp(a1, MEMORY[0x1E6960CC0], MEMORY[0x1E6960C70], *(DerivedStorage + 1072), 0, 0, &v13, 0);
        if ((v13.flags & 1) != 0 && (v14.flags & 1) != 0 && !v14.epoch && (v14.value & 0x8000000000000000) == 0)
        {
          *&v12.value = v8;
          v12.epoch = v6;
          if ((~a2->flags & 5) != 0)
          {
            lhs = v13;
            rhs = v14;
            CMTimeAdd(&v11, &lhs, &rhs);
            lhs = *a2;
            CMTimeSubtract(&v12, &v11, &lhs);
          }

          else
          {
            v12 = *v7;
          }

          *(DerivedStorage + 424) = v12.epoch;
          result = *&v12.value;
          *(DerivedStorage + 408) = *&v12.value;
        }
      }
    }
  }

  return result;
}

void fpfs_PullNextItem(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v3 = *(DerivedStorage + 24);

  dispatch_async_f(v3, a1, fpfs_PullNextCallback);
}

void fpfs_PullNextCallback(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v3 + 8);
  if (*(DerivedStorage + 52))
  {
    goto LABEL_4;
  }

  v35 = 0;
  v4 = CMBaseObjectGetDerivedStorage();
  v34 = 0;
  GlobalSingleton = FigPlayerResourceArbiterGetGlobalSingleton(&v34);
  if (!GlobalSingleton)
  {
    if (*(v4 + 80))
    {
      goto LABEL_4;
    }

    if (!*(v4 + 32) || CFArrayGetCount(*(v4 + 72)) < 1)
    {
      Mutable = 0;
      goto LABEL_8;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 72), 0);
    v11 = CMBaseObjectGetDerivedStorage();
    *(v4 + 80) = CFRetain(ValueAtIndex);
    v12 = *(v11 + 2568);
    if (v12)
    {
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v13)
      {
        v13(v12, 0);
      }
    }

    Current = CFAbsoluteTimeGetCurrent();
    v15 = *(v11 + 2568);
    if (v15)
    {
      v16 = Current;
      v17 = *(v11 + 2040);
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v18)
      {
        v18(v15, @"playerStats", 0x1F0B66558, ((v16 - v17) * 1000.0), 0);
      }
    }

    v19 = (v11 + 2568);
    if (*(v11 + 2072) && !*(v11 + 2096))
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v21 = *(v11 + 2568);
      if (!v21)
      {
LABEL_31:
        CFArrayRemoveValueAtIndex(*(v4 + 72), 0);
        fpfs_EnqueueNotification(a1, @"ItemBecameCurrent", ValueAtIndex, 0);
        fpfs_updateClosedCaptionsDisplay();
        if (*(v11 + 2472))
        {
          *(v11 + 2472) = 0;
        }

        else if (!fpfsi_MakeReadyForInspection(ValueAtIndex, 0, &v35) && v35)
        {
          fpfsi_NowReadyForInspection();
        }

        if (*(v4 + 108) != 0.0)
        {
          fpfs_notifyExternalStartupTasksOfEvents();
        }

        if (*(v4 + 462))
        {
          fpfsi_ResumeAllWaitingVideoTracks(ValueAtIndex);
        }

        fpfs_ResolveAllWaitingTracks(ValueAtIndex);
        fpfs_CheckPrebufferedLevels(v33, ValueAtIndex, 1, -1, 0);
        fpfs_EnqueueCurrentItemDidChangeNotification();
        if (!*(v11 + 470))
        {
          *(v11 + 470) = 1;
          fpfs_EnqueueNotification(a1, @"TimebaseChanged", ValueAtIndex, 0);
        }

        fpfsi_checkCoordinatedPlaybackCapability(ValueAtIndex);
        v28 = *(CMBaseObjectGetDerivedStorage() + 1024);
        if (v28)
        {
          while (*(v28 + 48) != 1986618469 || !*(v28 + 112))
          {
            v28 = *(v28 + 24);
            if (!v28)
            {
              goto LABEL_46;
            }
          }

          v29 = ValueAtIndex;
          v30 = 0;
          v31 = 0;
        }

        else
        {
LABEL_46:
          fpfs_disassociatePlayerVideoLayer(a1, 0);
          fpfs_releaseTransitionImageQueuesAndSlots();
          v29 = ValueAtIndex;
          v30 = 2;
          v31 = 1;
        }

        fpfsi_scheduleFVTTransitionsForItem(v29, v30, v31);
        AllocatorForMedia = FigGetAllocatorForMedia();
        Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetInt32();
        fpfs_SetRateWithOptionsGuts();
        if (v9)
        {
          goto LABEL_15;
        }

        fpfs_PullNextCallback_cold_1();
LABEL_8:
        if (*(v4 + 80))
        {
          v7 = 0;
          if (!Mutable)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        FigPlayerResourceArbiterAssignReportingAgentForConsumer(v34, *(v4 + 928), 0);
        v9 = FigPlayerResourceArbiterSetSpecifierForConsumer(v34, 0, *(v4 + 928));
LABEL_15:
        v7 = v9;
        if (!Mutable)
        {
LABEL_11:
          if (!v7)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }

LABEL_10:
        CFRelease(Mutable);
        goto LABEL_11;
      }

      v22 = UpTimeNanoseconds;
      v23 = *(v11 + 2072);
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v24)
      {
        v24(v21, 0x1F0B64678, 0x1F0B67618, (v22 - v23) / 0xF4240uLL, 1);
      }
    }

    v25 = *v19;
    if (*v19)
    {
      v26 = *(v4 + 160);
      v27 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v27)
      {
        v27(v25, @"playerStats", 0x1F0B65898, v26, 0);
      }
    }

    goto LABEL_31;
  }

  v7 = GlobalSingleton;
LABEL_12:
  v8 = *(DerivedStorage + 80);
  if (v8)
  {
    fpfs_StopPlayingItemWithOSStatus(DerivedStorage, v8, v7);
  }

LABEL_4:
  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  CFRelease(a1);
}

uint64_t fpfsi_MakeReadyForInspection(uint64_t a1, const __CFArray *a2, _BYTE *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  v7 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v7 + 8);
  if (FigRetainProxyIsInvalidated())
  {
    fpfsi_MakeReadyForInspection_cold_1(v22);
    goto LABEL_28;
  }

  v8 = *(DerivedStorage + 460);
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v8)
  {
    goto LABEL_5;
  }

  if (a2)
  {
    if (*(DerivedStorage + 2248))
    {
      Count = CFArrayGetCount(a2);
      if (Count >= 1)
      {
        v13 = Count;
        for (i = 0; i != v13; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
          v24.length = CFArrayGetCount(*(DerivedStorage + 2248));
          v24.location = 0;
          if (CFArrayGetFirstIndexOfValue(*(DerivedStorage + 2248), v24, ValueAtIndex) < 0)
          {
            CFArrayAppendValue(*(DerivedStorage + 2248), ValueAtIndex);
          }
        }
      }

      goto LABEL_18;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    MutableCopy = CFArrayCreateMutableCopy(AllocatorForMedia, 0, a2);
    *(DerivedStorage + 2248) = MutableCopy;
    if (MutableCopy)
    {
      goto LABEL_18;
    }

    fpfsi_MakeReadyForInspection_cold_2(v22);
LABEL_28:
    v10 = v22[0];
    goto LABEL_8;
  }

LABEL_18:
  v18 = *(DerivedStorage + 456);
  if (v18 == 2)
  {
    v10 = 0;
LABEL_24:
    *(DerivedStorage + 456) = 1;
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  FigRetainProxyRetain();
  v19 = *(DerivedStorage + 32);
  v20 = *(DerivedStorage + 16);
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v21)
  {
    v10 = v21(v19, fpfs_PumpTransferCallback, v20);
    if (!v10)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v10 = 4294954514;
  }

  FigRetainProxyRelease();
LABEL_6:
  if (a3)
  {
    *a3 = v8;
  }

LABEL_8:
  fpfs_UnlockAndPostNotificationsWithCaller(v6);
  return v10;
}

void fpfsi_ResumeAllWaitingVideoTracks(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 1024);
  if (v3)
  {
    v4 = DerivedStorage;
    do
    {
      v5 = *(v3 + 24);
      if (*(v3 + 48) == 1986618469 && *(v3 + 168) == 5)
      {
        v6 = CMBaseObjectGetDerivedStorage();
        v7 = CMBaseObjectGetDerivedStorage();
        v11 = 0uLL;
        v12 = 0;
        fpfs_GetTime(v7, &v11);
        refcon = 0;
        if (fpfs_CanRenderVideo(v6, a1))
        {
          if (*(v3 + 48) == 1986618469 && *(v3 + 168) == 5)
          {
            if (*(v6 + 108) >= 0.0 && *(v3 + 198) && (*(v3 + 244) & 1) != 0 && (*&time1.value = v11, time1.epoch = v12, v8 = *(v3 + 232), CMTimeCompare(&time1, &v8) >= 1))
            {
              fpfs_DeleteTrack(a1, v3);
            }

            else
            {
              *&v8.value = v11;
              v8.epoch = v12;
              fpfsi_PrepareTrackForReplay(v3, &v8.value, &time1);
              CMBufferQueueCallForEachBuffer(*(v3 + 88), fpfs_GetFirstNonMarkerSBuf, &refcon);
              if (refcon && fpfs_IsVideoSync(refcon))
              {
                fpfsi_ResumeAllWaitingVideoTracks_cold_1(v3, &refcon);
              }
            }
          }
        }
      }

      if (!v5)
      {
        break;
      }

      v3 = v5;
    }

    while (*(v4 + 1024));
  }
}

uint64_t fpfs_disassociatePlayerVideoLayer(uint64_t a1, char a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = *(result + 392);
  if (v4)
  {
    v5 = *(result + 880);

    return FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(v5, v4, a2);
  }

  return result;
}

void fpfs_releaseTransitionImageQueuesAndSlots()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 432);
  if (v1)
  {
    FPSupport_DeleteCASlotsInArray(v1);
    v2 = *(DerivedStorage + 432);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 432) = 0;
    }
  }

  v3 = *(DerivedStorage + 424);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 424) = 0;
  }
}

void fpfs_SetRateWithOptionsGuts()
{
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetInt32IfPresent();
  fpfs_SetRateWithOptionsAndAnchorTime();
}

void fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  Next = fpfs_getNext(v3, a1);
  v5 = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  cf = 0;
  if (!Next)
  {
    return;
  }

  v6 = v5;
  if (!fpfsi_PumpHasEndedOrBufferedBeyondEndTime())
  {
    return;
  }

  v29 = 0;
  if (FigAssetDownloadCoordinatorCopyDestinationURLForAsset(*(DerivedStorage + 32), &cf) || FigAssetDownloadCoordinatorCopyDestinationURLForAsset(*(v6 + 32), &v30))
  {
    goto LABEL_118;
  }

  if (cf && FigCFEqual())
  {
    fpfsi_InvalidatePumpForItem(a1);
  }

  if (!fpfsi_MakeReadyForInspection(Next, 0, &v29) && v29)
  {
    fpfsi_NowReadyForInspection();
    fpfs_PerformInitialResolveOfAllWaitingTracks(Next);
  }

  v7 = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  fpfsi_gatherInterestingGaplessInfoForItem(a1, &v32);
  v9 = v33;
  if (!v33)
  {
    goto LABEL_118;
  }

  if (!CMAudioFormatDescriptionGetRichestDecodableFormat(*(v33 + 56)))
  {
    fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd_cold_6();
    goto LABEL_118;
  }

  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(*(v9 + 56));
  if (!RichestDecodableFormat)
  {
    if (!fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd_cold_1())
    {
      goto LABEL_118;
    }

    goto LABEL_97;
  }

  mFormatID = RichestDecodableFormat->mASBD.mFormatID;
  if (mFormatID > 1902207794)
  {
    if (mFormatID > 1902667125)
    {
      if (mFormatID > 2053202738)
      {
        if (mFormatID <= 2053319474)
        {
          if ((mFormatID - 2053202739) > 0x3D || ((1 << (mFormatID - 51)) & 0x2020000000000001) == 0)
          {
            v12 = 30307;
LABEL_90:
            v14 = v12 | 0x7A610000;
            goto LABEL_95;
          }

          goto LABEL_96;
        }

        if (mFormatID <= 2053923170)
        {
          if (mFormatID != 2053319475)
          {
            v14 = 2053464883;
            goto LABEL_95;
          }

          goto LABEL_96;
        }

        if (mFormatID == 2054517601)
        {
          goto LABEL_96;
        }

        v14 = 2053923171;
LABEL_95:
        if (mFormatID != v14)
        {
          goto LABEL_97;
        }

        goto LABEL_96;
      }

      if (mFormatID <= 1902998903)
      {
        if (mFormatID != 1902667126 && mFormatID != 1902671459)
        {
          v14 = 1902928227;
          goto LABEL_95;
        }
      }

      else if (mFormatID > 1903587384)
      {
        if (mFormatID != 1903587385)
        {
          v12 = 24931;
          goto LABEL_90;
        }
      }

      else if (mFormatID != 1902998904)
      {
        v14 = 1903522657;
        goto LABEL_95;
      }

LABEL_96:
      FPSupport_GetPlaintextAudioFormatForEncryptedFormatID(RichestDecodableFormat->mASBD.mFormatID);
      goto LABEL_97;
    }

    if (mFormatID > 1902324530)
    {
      if (mFormatID <= 1902405732)
      {
        if (mFormatID == 1902324531 || mFormatID == 1902403958)
        {
          goto LABEL_96;
        }

        v16 = 26673;
      }

      else
      {
        if (mFormatID > 1902469938)
        {
          if (mFormatID == 1902469939)
          {
            goto LABEL_96;
          }

          v14 = 1902537827;
          goto LABEL_95;
        }

        if (mFormatID == 1902405733)
        {
          goto LABEL_96;
        }

        v16 = 28024;
      }

      v14 = v16 | 0x71640000;
      goto LABEL_95;
    }

    if ((mFormatID - 1902207795) <= 0x3D && ((1 << (mFormatID - 51)) & 0x2020000000000001) != 0 || (mFormatID - 1902212657) <= 0x34 && ((1 << (mFormatID - 49)) & 0x14000000000001) != 0)
    {
      goto LABEL_96;
    }

    v15 = 28771;
LABEL_87:
    v14 = v15 | 0x71610000;
    goto LABEL_95;
  }

  if (mFormatID <= 1685220712)
  {
    if (mFormatID <= 1667524656)
    {
      if (mFormatID <= 1667326823)
      {
        if (mFormatID == 1633771875 || mFormatID == 1667312947)
        {
          goto LABEL_96;
        }

        v13 = 24931;
      }

      else if (mFormatID > 1667330146)
      {
        if (mFormatID == 1667330147)
        {
          goto LABEL_96;
        }

        v13 = 30307;
      }

      else
      {
        if (mFormatID == 1667326824)
        {
          goto LABEL_96;
        }

        v13 = 25456;
      }

      v14 = v13 | 0x63610000;
      goto LABEL_95;
    }

    if (mFormatID <= 1667656802)
    {
      if (mFormatID != 1667524657 && mFormatID != 1667574579)
      {
        v14 = 1667575091;
        goto LABEL_95;
      }
    }

    else if (mFormatID > 1668047202)
    {
      if (mFormatID != 1668047203)
      {
        v14 = 1668641633;
        goto LABEL_95;
      }
    }

    else if (mFormatID != 1667656803)
    {
      v14 = 1667790435;
      goto LABEL_95;
    }

    goto LABEL_96;
  }

  if (mFormatID <= 1885430578)
  {
    if (mFormatID <= 1701733237)
    {
      if (mFormatID != 1685220713 && mFormatID != 1700886115)
      {
        v14 = 1701733217;
        goto LABEL_95;
      }
    }

    else if (mFormatID > 1882599479)
    {
      if (mFormatID != 1882599480)
      {
        v14 = 1885430115;
        goto LABEL_95;
      }
    }

    else if (mFormatID != 1701733238)
    {
      v14 = 1869117027;
      goto LABEL_95;
    }

    goto LABEL_96;
  }

  if (mFormatID > 1885547314)
  {
    if (mFormatID <= 1886745440)
    {
      if (mFormatID != 1885547315)
      {
        v14 = 1885692723;
        goto LABEL_95;
      }

      goto LABEL_96;
    }

    if (mFormatID == 1886745441)
    {
      goto LABEL_96;
    }

    v15 = 24931;
    goto LABEL_87;
  }

  if ((mFormatID - 1885430579) <= 0x3D && ((1 << (mFormatID - 51)) & 0x2020000000000001) != 0)
  {
    goto LABEL_96;
  }

LABEL_97:
  CurrentAudioPersistentIDFromMediaOption = fpfsi_GetCurrentAudioPersistentIDFromMediaOption();
  AudioBitDepth = FigAlternateGetAudioBitDepth(*(v7 + 1680), CurrentAudioPersistentIDFromMediaOption);
  AudioSampleRate = FigAlternateGetAudioSampleRate(*(v7 + 1680), CurrentAudioPersistentIDFromMediaOption);
  UInt32 = FigCFNumberCreateUInt32();
  if (UInt32)
  {
    v21 = UInt32;
    v22 = FigCFNumberCreateUInt32();
    if (v22)
    {
      v23 = v22;
      if (AudioBitDepth < 1)
      {
        SInt32 = 0;
      }

      else
      {
        SInt32 = FigCFNumberCreateSInt32();
        if (!SInt32)
        {
          fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd_cold_4();
          Float64 = 0;
LABEL_114:
          CFRelease(v21);
          CFRelease(v23);
          if (SInt32)
          {
            CFRelease(SInt32);
          }

          if (Float64)
          {
            CFRelease(Float64);
          }

          goto LABEL_118;
        }
      }

      if (AudioSampleRate < 1)
      {
        Float64 = 0;
      }

      else
      {
        Float64 = FigCFNumberCreateFloat64();
        if (!Float64)
        {
          fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd_cold_3();
          goto LABEL_114;
        }
      }

      v26 = *(v8 + 2480);
      if (v26)
      {
        CFRelease(v26);
        *(v8 + 2480) = 0;
      }

      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(v8 + 2480) = Mutable;
      if (Mutable)
      {
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        if (SInt32)
        {
          FigCFDictionarySetValue();
        }

        if (Float64)
        {
          FigCFDictionarySetValue();
        }
      }

      else
      {
        fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd_cold_2();
      }

      goto LABEL_114;
    }

    fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd_cold_5(v21);
  }

  else
  {
    FigSignalErrorAtGM();
  }

LABEL_118:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }
}

void fpfsi_StopGearSwitchReleaseAndCleanPlaybackMonitor(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v3)
    {
      v3(v1, @"AfmfpbProperty_SwitchesQualityGearAutomatically", *MEMORY[0x1E695E4C0]);
    }

    v4 = *(a1 + 96);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 96) = 0;
    }
  }
}

void fpfsi_setupCMCDHeaderVendor()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 912);
  if (v1)
  {
    v2 = DerivedStorage;
    cf = 0;
    AllocatorForMedia = FigGetAllocatorForMedia();
    FigBaseObject = FigBytePumpGetFigBaseObject(v1);
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v5(FigBaseObject, 0x1F0B1F818, AllocatorForMedia, &cf);
      if (cf)
      {
        FigCMCDHeaderVendorSetIsLikelyToKeepUp(cf, *(v2 + 524) == 1);
        FigCMCDHeaderVendorSetTimelineConverter(cf, *(v2 + 3376));
        FigCMCDHeaderVendorSetTimebase(cf, *(v2 + 576));
        CFRelease(cf);
      }
    }
  }
}

void fpfsi_NotReadyForInspection(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v6 = DerivedStorage[114];
  if (v6)
  {
    cf = 0;
    AllocatorForMedia = FigGetAllocatorForMedia();
    FigBaseObject = FigBytePumpGetFigBaseObject(v6);
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(FigBaseObject, 0x1F0B1EFD8, AllocatorForMedia, &cf);
    }

    if (!FigRetainProxyIsInvalidated())
    {
      v10 = DerivedStorage[241];
      v11 = cf;
      DerivedStorage[241] = cf;
      if (v11)
      {
        CFRetain(v11);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  fpfs_StopPlayingItem(v5, a1, a2);
  v12 = DerivedStorage[281];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[281] = 0;
  }

  CFRelease(a1);
}

void *__copy_constructor_8_8_pa0_38126_0_pa0_35993_8_pa0_4849_16(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  return result;
}

uint64_t fpfsi_setHasDiscoveredVideoAndNotify(uint64_t a1, const void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 795))
  {
    v5 = result;
    result = fpfs_EnqueueNotification(a1, @"HasDiscoveredVideo", a2, 0);
    *(v5 + 795) = 1;
  }

  return result;
}

CFTypeRef fpfsi_SetupAlternateSelectionBossWithPreferPlaybackFromCache()
{
  v5 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  fpfsi_CopyCacheRefFromPump();
  v1 = *(DerivedStorage + 40);
  if (!v1)
  {
    return 0;
  }

  if (*(DerivedStorage + 3200))
  {
    return v5;
  }

  return FigAlternateSelectionBossRemoveFilter(v1, @"OfflinePlayable");
}

uint64_t fpfsi_ConfigureAlternateSelectionBossForPlayRate(uint64_t a1, float a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = a2 < 0.0 || a2 > 2.0;
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return fpfsi_CreateAndAddScanningModeFilterToBoss(a1, v4);
}

uint64_t fpfsi_ConfigurePlaybackMonitorForBandwidthCap(uint64_t a1, int a2)
{
  v5 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 2408) = a2;
  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  fpfsi_ConfigurePlaybackMonitorForBandwidthCap_cold_1(&v5, DerivedStorage, &v6);
  return v6;
}

CFStringRef fpfs_GrabPlayer4kPlaybackBaton(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 864);
  if (!result)
  {
    result = FPSupport_Acquire4kVideoDisplayAssertion(a1);
    *(DerivedStorage + 864) = result;
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return *(DerivedStorage + 864);
    }
  }

  return result;
}

uint64_t fpfsi_addHDResolutionCap()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v1 = FigAlternateResolutionCapFilterCreate(*MEMORY[0x1E695E480], @"ResolutionCapFor4kBaton", 700, &cf, 1920.0, 1080.0);
  if (!v1)
  {
    v1 = FigAlternateSelectionBossAddFilter(*(DerivedStorage + 40), cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

uint64_t fpfsi_ConfigureAlternateSelectionBossForNeroSupportedVideoFormat(uint64_t a1, int a2)
{
  cf = 0;
  if (a2)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v4 = FigAlternateNeroSupportedVideoFormatFilterCreate(AllocatorForMedia, &cf);
    v5 = cf;
    if (v4)
    {
      v6 = v4;
      if (!cf)
      {
        return v6;
      }
    }

    else
    {
      v6 = FigAlternateSelectionBossAddFilter(*(a1 + 40), cf);
      v5 = cf;
      if (!cf)
      {
        return v6;
      }
    }

    CFRelease(v5);
    return v6;
  }

  v8 = *(a1 + 40);

  return FigAlternateSelectionBossRemoveFilter(v8, @"NeroSupportedVideoFormat");
}

uint64_t fpfsi_GetAtmosDecodePolicy(uint64_t a1, _BYTE *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!*a2)
  {
    *a2 = fpfsi_getAudioRouteSpatializationCapabilities(a1) & 1;
  }

  if (!a2[1])
  {
    a2[1] = fpfs_bufferedAirPlayActiveAndSupportsAtmos();
  }

  if (!a2[2])
  {
    a2[2] = *(CMBaseObjectGetDerivedStorage() + 568);
  }

  if (a2[3])
  {
    v4 = 1;
  }

  else
  {
    v9 = 0;
    v5 = *(CMBaseObjectGetDerivedStorage() + 536);
    if (v5)
    {
      if (FPSupport_GetAudioSessionOutputChannelCount(v5, &v9))
      {
        v6 = 0;
      }

      else
      {
        v6 = v9 == 16;
      }

      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    a2[3] = v4;
  }

  if (*a2 || a2[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = (a2[2] != 0) | v4;
  }

  return v7 & 1;
}

BOOL fpfs_bufferedAirPlayActiveAndSupportsAtmos()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 504);
  if (!v0)
  {
    return 0;
  }

  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  CMBaseObject = FigBufferedAirPlayOutputGetCMBaseObject(v0);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return *MEMORY[0x1E695E4D0] == 0;
  }

  v3(CMBaseObject, @"AtmosIsSupported", AllocatorForMedia, &cf);
  v4 = cf == *MEMORY[0x1E695E4D0];
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t fpfsi_setAndPerformResourceConservation(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 96))
  {
    SInt32 = FigCFNumberCreateSInt32();
    v6 = *(DerivedStorage + 96);
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(v6, @"AfmfpbProperty_ResourceConservationLevelWhenPaused", SInt32);
    }

    fpfsi_performCurrentResourceConservationAction(a1, v3);
    if (SInt32)
    {
      CFRelease(SInt32);
    }
  }

  else
  {
    fpfsi_performCurrentResourceConservationAction(a1, v3);
  }

  return 0;
}

BOOL fpfs_audioOnlyValidAlternateList(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (!v1)
  {
    return 0;
  }

  v4 = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(v1, @"AfmfpbProperty_HasAudioOnlyAlternates", *MEMORY[0x1E695E480], &v4);
    v2 = v4;
  }

  return v2 == *MEMORY[0x1E695E4D0];
}

CFNumberRef fpfsi_GetCurrentDisplayVideoRangeFromMonitor()
{
  number = 0;
  valuePtr = 0;
  v0 = *(CMBaseObjectGetDerivedStorage() + 80);
  if (!v0)
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  v2(v0, @"AlternateFilterMonitorProperty_CurrentDisplayVideoRange", AllocatorForMedia, &number);
  result = number;
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
    CFRelease(number);
    return valuePtr;
  }

  return result;
}

__CFString *fpfs_getVideoRangeStringFromFPSupportVideoRange(int a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v1 = kFigAlternateVideoRangeString_HDR10;
        return *v1;
      case 4:
        v1 = kFigAlternateVideoRangeString_DoVi;
        return *v1;
      case 5:
        return @"Internal (HDR OK)";
    }

    goto LABEL_11;
  }

  if (!a1)
  {
LABEL_14:
    v1 = kFigAlternateVideoRangeString_Unknown;
    return *v1;
  }

  if (a1 == 1)
  {
    v1 = kFigAlternateVideoRangeString_SDR;
    return *v1;
  }

  if (a1 != 2)
  {
LABEL_11:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_14;
  }

  v1 = kFigAlternateVideoRangeString_HLG;
  return *v1;
}

CFStringRef fpfs_GrabPlayerHDRPlaybackBaton()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 856);
  if (!result)
  {
    result = FPSupport_AcquireHDRVideoDisplayAssertion(*(DerivedStorage + 920));
    *(DerivedStorage + 856) = result;
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return *(DerivedStorage + 856);
    }
  }

  return result;
}

uint64_t fpfsi_SwitchBetweenHDRAndSDR(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    if (a2)
    {
      SInt32 = FigCFNumberCreateSInt32();
      v5 = *(DerivedStorage + 64);
    }

    else
    {
      SInt32 = 0;
    }

    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v5 = v7(v5, @"AlternateFilterMonitorProperty_PreferredVideoRange", SInt32);
      if (!SInt32)
      {
LABEL_14:
        if (!v5)
        {
          FigAlternateSelectionBossApplyFilters(*(DerivedStorage + 40));
        }

        return v5;
      }
    }

    else
    {
      v5 = 4294954514;
      if (!SInt32)
      {
        goto LABEL_14;
      }
    }

    CFRelease(SInt32);
    goto LABEL_14;
  }

  return v5;
}

uint64_t GetSwitchOptions(uint64_t a1, int a2)
{
  v2 = (a2 != 0) | (2 * (*(a1 + 840) == 0.0));
  if (*(a1 + 553))
  {
    v4 = *(a1 + 1680);
    if (v4)
    {
      if ((v5 = *(a1 + 96)) != 0 && FigAlternatePlaybackBitrateMonitorIsAlternateStillValid(v5, v4) || FigCFArrayContainsValue())
      {
        v6 = *(a1 + 1024);
        if (v6)
        {
          while (*(v6 + 168) != 6)
          {
            v6 = *(v6 + 24);
            if (!v6)
            {
              return v2;
            }
          }

          return v2 | 4;
        }
      }
    }
  }

  return v2;
}

uint64_t fpfs_ReleasePlayerHDRPlaybackBaton()
{
  result = CMBaseObjectGetDerivedStorage();
  v1 = *(result + 856);
  if (v1)
  {
    v2 = result;
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v1 = *(v2 + 856);
    }

    result = FPSupport_ReleaseHDRVideoDisplayAssertion(*(v2 + 920), v1);
    *(v2 + 856) = 0;
  }

  return result;
}

uint64_t fpfs_ReleasePlayer4kPlaybackBaton(const void *a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = *(result + 864);
  if (v3)
  {
    v4 = result;
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v3 = *(v4 + 864);
    }

    result = FPSupport_Release4kVideoDisplayAssertion(a1, v3);
    *(v4 + 864) = 0;
  }

  return result;
}

uint64_t fpfs_isAlternateValid(uint64_t a1, uint64_t a2)
{
  result = *(CMBaseObjectGetDerivedStorage() + 96);
  if (result)
  {

    return FigAlternatePlaybackBitrateMonitorIsAlternateStillValid(result, a2);
  }

  return result;
}

uint64_t fpfsi_EmancipateItemFromMultichannelInhibitionsAndApplyFilters()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  *(DerivedStorage + 3106) = 0;
  if (*(DerivedStorage + 3112))
  {
    fpfsi_ReleaseAndClearMultichannelTimer(DerivedStorage);
  }

  result = *(v1 + 40);
  if (result)
  {
    FigAlternateSelectionBossRemoveFilter(result, @"MultichannelAudio");
    v3 = *(v1 + 40);

    return FigAlternateSelectionBossApplyFilters(v3);
  }

  return result;
}

void fpfsi_ReleaseAndClearMultichannelTimer(uint64_t a1)
{
  v2 = *(a1 + 3112);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 3112));
  }

  *(a1 + 3112) = 0;
}

uint64_t fpfs_ScheduleRecoverySwitch(uint64_t a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  matched = FigStreamAlternateSubstreamURLsMatchBetweenVariants(*(DerivedStorage + 1680), a2, *(DerivedStorage + 1768), 1);
  v8 = FigStreamAlternateSubstreamURLsMatchBetweenVariants(*(DerivedStorage + 1680), a2, *(DerivedStorage + 1768), 2);
  if (matched)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  if (v8)
  {
    v10 = matched == 0;
  }

  else
  {
    v10 = v9;
  }

  if (!FigAlternateIsIFrameOnly(a2))
  {
    result = fpfs_isAlternateValid(a1, a2);
    if (!result)
    {
      return result;
    }
  }

  v12 = *(DerivedStorage + 1024);
  if (!v12)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  do
  {
    *(v12 + 203) = 0;
    if (*(v12 + 168) == 6 && !*(v12 + 200))
    {
      v15 = *(v12 + 48);
      if (v15 == 1936684398)
      {
        v16 = v12;
      }

      else
      {
        v16 = v14;
      }

      if (v15 == 1986618469)
      {
        v13 = v12;
      }

      else
      {
        v14 = v16;
      }
    }

    v12 = *(v12 + 24);
  }

  while (v12);
  if (v13)
  {
    if (FigCFEqual() && ((1 << *(v13 + 196)) & v10) != 0)
    {
      if (*(v13 + 205))
      {
        v17 = 0;
      }

      else
      {
        v17 = 1 << *(v13 + 196);
      }

      if (*(v13 + 205))
      {
        v18 = 0;
      }

      else
      {
        v18 = v13;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v19 = v13;
  }

  else
  {
    v19 = 0;
    v17 = 0;
    v18 = 0;
  }

  v28 = v10;
  if (!v14)
  {
    v22 = 0;
    v21 = 0;
    if (!v13)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (FigCFEqual() && (v20 = 1 << *(v14 + 196), (v20 & v10) != 0))
  {
    if (*(v14 + 205))
    {
      v20 = 0;
    }

    v17 |= v20;
    if (*(v14 + 205))
    {
      v21 = 0;
    }

    else
    {
      v21 = v14;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = v14;
  if (v13)
  {
LABEL_45:
    if (!v18)
    {
      v17 &= ~(1 << *(v19 + 196));
    }
  }

LABEL_47:
  if (v14 && !v21)
  {
    v17 &= ~(1 << *(v22 + 196));
  }

  v23 = &unk_1EAF16000;
  if (v18)
  {
    v24 = v18;
    if ((v17 >> *(v18 + 196)))
    {
      v24 = v18;
      if (dword_1EAF169F0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v24 = v18;
        v23 = &unk_1EAF16000;
        if (!v21)
        {
          goto LABEL_60;
        }

LABEL_56:
        v26 = v21;
        if ((v17 >> *(v21 + 196)))
        {
          v26 = v21;
          if (v23[636])
          {
            v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v26 = v21;
          }
        }

        goto LABEL_61;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  if (v21)
  {
    goto LABEL_56;
  }

LABEL_60:
  v26 = 0;
LABEL_61:
  result = 0;
  if (v17 && v17 == v28)
  {
    if (!a3 && v18)
    {
      *(v24 + 203) = 1;
    }

    result = 1;
    if (!a3)
    {
      if (v21)
      {
        *(v26 + 203) = 1;
      }
    }
  }

  return result;
}

void fpfsi_TearDownIFramePrefetcher()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 2504))
  {
    v1 = DerivedStorage;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = *(v1 + 2504);
    if (v3)
    {
      CFRelease(v3);
      *(v1 + 2504) = 0;
    }
  }
}

void fpfsi_EnqueueReachedTimeToPausePlaybackNotification(const void *a1)
{
  v2 = *CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = Mutable;
    FigCFDictionarySetCMTime();
    fpfs_EnqueueNotification(v2, @"ReachedTimeToPausePlayback", a1, v5);
    CFRelease(v5);
  }

  else
  {
    fpfsi_EnqueueReachedTimeToPausePlaybackNotification_cold_1();
  }
}

void fpfs_ResetAudioHardwareFormat(const void *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  if (DerivedStorage[67] && !DerivedStorage[63])
  {
    if (!DerivedStorage[68] || (v11 = *MEMORY[0x1E69AF7F8], FigCFEqual()))
    {
      Mutable = 0;
    }

    else
    {
      v12 = v7[67];
      if (v12)
      {
        v13 = *(CMBaseObjectGetVTable() + 16);
        if (v13)
        {
          v14 = *(v13 + 56);
          if (v14)
          {
            v14(v12, *MEMORY[0x1E69B01E8], v11);
          }
        }
      }

      if (dword_1EAF169F0)
      {
        HIDWORD(valuePtr) = 0;
        BYTE3(valuePtr) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetValue();
      fpfs_PostNotificationWhenUnlocked(a1, @"AudioHardwareFormatChanged", a1, Mutable);
    }

    if (dword_1EAF169F0)
    {
      HIDWORD(valuePtr) = 0;
      BYTE3(valuePtr) = 0;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fpfs_setPreferredNumberOfAudioOutputChannels(a1, 0, 0, 0, v3, v4, v5, v6, v18, v19, v20, valuePtr, SHIDWORD(valuePtr), v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, vars0, vars8);
  }

  else
  {
    Mutable = 0;
  }

  v9 = v7[68];
  if (v9)
  {
    CFRelease(v9);
    v7[68] = 0;
  }

  v10 = v7[69];
  if (v10)
  {
    CFRelease(v10);
    v7[69] = 0;
  }

  *(v7 + 560) = 0;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t fpfsi_removeLayerSync()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[87];
  if (v2)
  {
    FigSyncMomentSourceDestroy(v2);
    DerivedStorage[87] = 0;
  }

  result = DerivedStorage[85];
  if (result)
  {
    FigSimpleMutexLock();
    v4 = DerivedStorage[86];
    if (v4)
    {
      FigLayerSynchronizerSetConfigurationWithDeferredTransaction(v4, 0, *(v1 + 880));
      v5 = DerivedStorage[86];
      if (v5)
      {
        CFRelease(v5);
        DerivedStorage[86] = 0;
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t fpfs_commitTransaction(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 880) == a2)
  {
    *(DerivedStorage + 880) = 0;
  }

  return FigDeferredTransactionCommit(a2, 0);
}

uint64_t fpfs_cleanupAllImageQueues(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v6 = (DerivedStorage + 664);
  v7 = *(DerivedStorage + 664);
  v8 = *(DerivedStorage + 672);
  if (!a2 || *(v5 + 408) < 1)
  {
    if (!v8)
    {
LABEL_13:
      if (!*v6)
      {
        goto LABEL_16;
      }

      CFRelease(*v6);
      goto LABEL_15;
    }

LABEL_11:
    FPSupport_DeleteCASlotsInArray(v8);
    v9 = *(DerivedStorage + 672);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 672) = 0;
    }

    goto LABEL_13;
  }

  if (v8 && CFArrayGetCount(v8) >= 1)
  {
    if (!*(DerivedStorage + 744) && !*(v5 + 424))
    {
      *(v5 + 424) = *v6;
      *(DerivedStorage + 672) = 0;
LABEL_15:
      *v6 = 0;
      goto LABEL_16;
    }

    v8 = *(DerivedStorage + 672);
    goto LABEL_11;
  }

LABEL_16:
  result = fpfsi_updateOutputsForAllAggregateVideoDestinations();
  if (v7)
  {
    v11 = *DerivedStorage;

    return fpfs_EnqueueNotificationWithoutLocking(v11, @"DidRemoveImageQueue", a1, 0);
  }

  return result;
}

uint64_t fpfs_HaveHDRItem()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 80) && fpfsi_isPlayingHDR())
  {
    return 1;
  }

  for (i = 0; ; ++i)
  {
    Count = *(DerivedStorage + 72);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(DerivedStorage + 72), i);
    if (fpfsi_isPlayingHDR())
    {
      return 1;
    }
  }

  return 0;
}

CFIndex fpfs_PostRemovedFromPlayQueueNotifications(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 468))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v6 = CFDictionaryCreate(AllocatorForMedia, &kFigPlaybackItemParameter_AsRequested, MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    fpfs_EnqueueNotification(a1, @"ItemWasRemovedFromPlayQueue", a2, v6);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    fpfs_EnqueueNotification(a1, @"ItemWasRemovedFromPlayQueue", a2, 0);
  }

  *(DerivedStorage + 468) = 0;

  return fpfs_PostPlayQueueNotificationIfHungry(a1);
}

void fpfsi_setPlaybackRateMonitorPendingSeekTime(uint64_t a1, CMTime *a2)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  v6 = *a2;
  v5 = CMTimeCopyAsDictionary(&v6, AllocatorForMedia);
  if (v5)
  {
    fpfsi_setPlaybackRateMonitorPendingSeekTime_cold_1(a1, v5);
  }

  else
  {
    fpfsi_setPlaybackRateMonitorPendingSeekTime_cold_2();
  }
}

void fpfsi_cleanupNetworkCostMonitor()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  if (v1)
  {
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(DerivedStorage + 2272);
  if (v3)
  {
    v4 = *(DerivedStorage + 16);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {
      v5(v3, v4, 0, v2);
    }

    SInt32 = FigCFNumberCreateSInt32();
    if (SInt32)
    {
      v7 = *(DerivedStorage + 2272);
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v8)
      {
        v8(v7, 0x1F0B5F778, SInt32);
      }
    }

    v9 = *(DerivedStorage + 2272);
    v10 = *MEMORY[0x1E695E4C0];
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v11)
    {
      v11(v9, 0x1F0B5F758, v10);
    }

    v12 = *(DerivedStorage + 2272);
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v13)
    {
      v13(v12, 0x1F0B5F798, v10);
    }

    if (SInt32)
    {
      CFRelease(SInt32);
    }

    v14 = *(DerivedStorage + 2272);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 2272) = 0;
    }
  }
}

void fpfsi_pumpNotificationHandler(uint64_t a1, const void *a2, const void *a3)
{
  v7[24] = *MEMORY[0x1E69E9840];
  cf = 0;
  v7[0] = 0;
  if (fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, v7, &cf))
  {
    FigRetainProxyRelease();
  }

  else
  {
    CMBaseObjectGetDerivedStorage();
    if (CFEqual(a3, @"FBPAL_SeekableTimeRangeChanged") || CFEqual(a3, @"FBP_SuggestedAlternate") || CFEqual(a3, @"FBP_DurationChanged") || CFEqual(a3, @"FBP_TaggedRangeMetadataChanged") || CFEqual(a3, @"FBP_PrefersConcurrentSwitchChanged") || CFEqual(a3, @"FBP_PlaylistUpdateNotification") || CFEqual(a3, @"FBP_NewErrorLogEntry") || CFEqual(a3, @"FBP_RecommendedPrebufferReservationChanged"))
    {
      if (a2)
      {
        CFRetain(a2);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigGetAllocatorForMedia();
      FigDeferNotificationToDispatchQueue();
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v7[0])
    {
      CFRelease(v7[0]);
    }
  }
}

uint64_t fpfs_StopPlaybackByStalledTrack(uint64_t a1, unsigned int a2)
{
  v138 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  v7 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(v7 + 160))
  {
    fpfs_StopPlaybackByStalledTrack_cold_1(v6);
  }

  else
  {
    fpfs_stopPlaybackForInternalReason();
  }

  v8 = *(DerivedStorage + 504);
  if (v8)
  {
    if (FigCFErrorIsEqualToOSStatus(v8, @"CoreMediaErrorDomain", -12465))
    {
      v10 = 4294954433;
LABEL_15:
      fpfs_StopPlayingItem();
      goto LABEL_11;
    }

    v9 = CMBaseObjectGetDerivedStorage();
    memset(&v101, 0, sizeof(v101));
    memset(&v137, 0, sizeof(v137));
    if (*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      fpfs_GetItemBufferedDuration(v4);
      if (*(v9 + 504))
      {
        time1 = v101;
        *&time2.value = kGaplessTransitionDeadlineInterval;
        time2.epoch = 0;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          fpfs_GetTime(v9, &time1);
          *&time2.value = kGaplessTransitionDeadlineInterval;
          time2.epoch = 0;
          CMTimeAdd(&v137, &time1, &time2);
          v12 = *(v9 + 2992) != 0;
          time1 = v137;
          time2 = **&MEMORY[0x1E6960C80];
          v97 = *MEMORY[0x1E6960C88];
          v98 = *(MEMORY[0x1E6960C88] + 16);
          v10 = fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts(v4, &time1, 0, &time2, &v97, 0, 0, 0, 1, v12, 1, 1, 0, 0);
          if (v10)
          {
            goto LABEL_15;
          }
        }
      }
    }
  }

  if (!*(a1 + 200))
  {
    ++*(DerivedStorage + 2112);
    *(DerivedStorage + 464) = 0;
    *(DerivedStorage + 2024) = CFAbsoluteTimeGetCurrent();
    fpfs_setUnlikelyToKeepUpAndRanDry(v4);
    fpfs_EnqueueNotification(v6, @"PlaybackStalled", v4, 0);
    v13 = CMBaseObjectGetDerivedStorage();
    v101.value = 0;
    value = @"unknown";
    v137.value = 0x1F0B3D678;
    v15 = *(v13 + 912);
    if (v15)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      FigBytePumpGetFigBaseObject(v15);
      v18 = v17;
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v19)
      {
        v19(v18, 0x1F0B1F318, AllocatorForMedia, &v101);
        if (v101.value)
        {
          v20 = CFGetTypeID(v101.value);
          if (v20 == CFDictionaryGetTypeID())
          {
            CFDictionaryGetValueIfPresent(v101.value, @"cs-iftype", &v137);
            value = v137.value;
          }
        }
      }
    }

    FPSupport_ReportStallToSymptomLog(0, value, *(v13 + 400));
    if (v101.value)
    {
      CFRelease(v101.value);
    }

    v21 = CMBaseObjectGetDerivedStorage();
    v22 = *(v21 + 2568);
    if (v22)
    {
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v23)
      {
        v23(v22, @"playerStats", 0x1F0B66B38, a2, 0);
      }

      v24 = *(v21 + 2568);
      if (v24)
      {
        v25 = *(a1 + 196);
        v26 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v26)
        {
          v26(v24, @"playerStats", 0x1F0B66B18, v25, 0);
        }
      }

      v27 = *(v21 + 2568);
      if (v27)
      {
        v28 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v28)
        {
          v28(v27, @"playerStats", 0x1F0B650D8, 1);
        }
      }
    }

    v94 = v21;
    v89 = a2;
    v92 = v7;
    v93 = DerivedStorage;
    v29 = CMBaseObjectGetDerivedStorage();
    v101.value = 0;
    fpfsi_RTCReportingUpdateItemStats(v4);
    fpfsi_RTCReportingUpdateCurrentAlternateInfo();
    v30 = 0;
    v31 = (v29 + 2568);
    v90 = v29;
    v32 = v29 + 3024;
    v33 = &stru_1F0B1AFB8;
    do
    {
      if (((1 << v30) & 4) != 0)
      {
        v34 = 0x1F0B66C78;
      }

      else
      {
        v34 = v33;
      }

      if (((1 << v30) & 2) != 0)
      {
        v35 = 0x1F0B66C58;
      }

      else
      {
        v35 = v34;
      }

      if (v30)
      {
        v33 = v35;
      }

      else
      {
        v33 = @"TimeSinceVideoSubStream";
      }

      v36 = *v31;
      Current = CFAbsoluteTimeGetCurrent();
      if (v36)
      {
        v38 = Current;
        v39 = *(v32 + 8 * v30);
        v40 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v40)
        {
          v40(v36, @"playerStats", v33, ((v38 - v39) * 1000.0), 0);
        }
      }

      ++v30;
    }

    while (v30 != 3);
    v41 = *(v90 + 912);
    if (v41)
    {
      fpfs_StopPlaybackByStalledTrack_cold_2(v41, v31, &v101.value);
    }

    v42 = v94;
    if (v101.value)
    {
      CFRelease(v101.value);
    }

    v43 = *(v94 + 2568);
    v44 = a1;
    v45 = *(a1 + 168) == 1;
    if (v43)
    {
      v46 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v46)
      {
        v46(v43, @"playerStats", 0x1F0B426F8, v45, 0);
      }
    }

    v47 = *(v94 + 1024);
    if (v47)
    {
      AudioOutputChannelCount = 0;
      do
      {
        if (*(v47 + 80) == *(a1 + 80) && *(v47 + 168) == 6 && *(v47 + 48) == 1936684398 && AudioOutputChannelCount <= fpfs_GetAudioOutputChannelCount(*(v47 + 56), 0, 0))
        {
          AudioOutputChannelCount = fpfs_GetAudioOutputChannelCount(*(v47 + 56), 0, 0);
        }

        v47 = *(v47 + 24);
      }

      while (v47);
    }

    else
    {
      AudioOutputChannelCount = 0;
    }

    v49 = *(v94 + 2568);
    if (!v49)
    {
      goto LABEL_119;
    }

    v50 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v50)
    {
      v50(v49, @"playerStats", 0x1F0B65318, AudioOutputChannelCount, 0);
    }

    v51 = *(v94 + 2568);
    if (v51)
    {
      v52 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v52)
      {
        v53 = v52(v51, @"playerStats", 103, 0, 0);
      }

      else
      {
        v53 = -12782;
      }
    }

    else
    {
LABEL_119:
      v53 = -12000;
    }

    if (dword_1EAF169F0)
    {
      LODWORD(time1.value) = 0;
      LOBYTE(time2.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v55 = time1.value;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, time2.value))
      {
        v56 = v55;
      }

      else
      {
        v56 = v55 & 0xFFFFFFFE;
      }

      if (v56)
      {
        v57 = *v94;
        if (*v94)
        {
          v58 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v58 = "";
        }

        v91 = v58;
        v95 = v53;
        if (v4)
        {
          v59 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v59 = "";
        }

        v88 = v59;
        if (*(v94 + 332))
        {
          v60 = "Yes";
        }

        else
        {
          v60 = "No";
        }

        v87 = v60;
        fpfs_GetTime(v94, &v101);
        Seconds = CMTimeGetSeconds(&v101);
        v101 = *(v94 + 320);
        v62 = CMTimeGetSeconds(&v101);
        if (*(a1 + 168) == 1)
        {
          v63 = "Yes";
        }

        else
        {
          v63 = "No";
        }

        v85 = v63;
        v86 = *(v94 + 1728);
        if (FigAlternateIsAudioOnly(*(v94 + 1680)))
        {
          v64 = "Yes";
        }

        else
        {
          v64 = "No";
        }

        v80 = v64;
        v81 = *(v94 + 2824);
        v82 = *(v94 + 2828);
        v83 = *(v94 + 2836);
        v84 = *(v94 + 2868);
        if (*(v94 + 2688))
        {
          v65 = FigGetUpTimeNanoseconds() - *(v94 + 2688);
        }

        else
        {
          v65 = 0;
        }

        v66 = -1.0;
        if (*(v94 + 1608))
        {
          v101 = *(v94 + 1616);
          v67 = CMTimeGetSeconds(&v101);
          if (*(v94 + 1608))
          {
            v101 = *(v94 + 1640);
            v66 = CMTimeGetSeconds(&v101);
          }
        }

        else
        {
          v67 = -1.0;
        }

        LODWORD(v101.value) = 136320002;
        *(&v101.value + 4) = "fpfsi_RTCReportingReportStall";
        LOWORD(v101.flags) = 2048;
        *(&v101.flags + 2) = v57;
        HIWORD(v101.epoch) = 2082;
        v102 = v91;
        v103 = 2048;
        v104 = v4;
        v105 = 2082;
        v106 = v88;
        v107 = 1024;
        v108 = v95;
        v109 = 1024;
        v110 = v89;
        v111 = 2080;
        v112 = v87;
        v113 = 2048;
        v114 = Seconds;
        v115 = 2048;
        v116 = v62;
        v117 = 2080;
        v118 = v85;
        v119 = 1024;
        v120 = v86;
        v121 = 2080;
        v122 = v80;
        v123 = 1024;
        v124 = v81;
        v125 = 1024;
        v126 = v82;
        v127 = 1024;
        v128 = v83;
        v129 = 1024;
        v130 = v84;
        v131 = 2048;
        v132 = v65;
        v133 = 2048;
        v134 = v67;
        v135 = 2048;
        v136 = v66;
        _os_log_send_and_compose_impl();
        v44 = a1;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v42 = v94;
    }

    if (*(v42 + 96))
    {
      FigAlternatePlaybackBitrateMonitorReportStall();
    }

    v68 = *(v93 + 912);
    if (v68)
    {
      v101.value = 0;
      v69 = FigGetAllocatorForMedia();
      FigBytePumpGetFigBaseObject(v68);
      v71 = v70;
      v72 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v72)
      {
        v72(v71, 0x1F0B1F818, v69, &v101);
        if (v101.value)
        {
          fpfs_GetOptionsDictionaryForSelectedMediaType(v93);
          v77 = FigCFDictionaryGetValue();
          v78 = *(v44 + 48);
          switch(v78)
          {
            case 1935832172:
              v79 = 6;
              break;
            case 1936684398:
              v79 = 2;
              break;
            case 1986618469:
              v79 = v77 ? 3 : 4;
              break;
            default:
              v79 = 0;
              break;
          }

          FigCMCDHeaderVendorSetBufferDidStarve(v101.value, v79);
          if (v101.value)
          {
            CFRelease(v101.value);
            v101.value = 0;
          }
        }
      }
    }

    v73 = FigGetAllocatorForMedia();
    FigMetricItemStallEventCreate(v73, *(v93 + 1680), &cf, *(v93 + 840), *(v92 + 108));
    v74 = *(v93 + 3400);
    v75 = cf;
    v76 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v76)
    {
      v76(v74, 0, v75);
    }
  }

  v10 = 0;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

void fpfsi_RemoveDateEntry(uint64_t a1, void *a2)
{
  v4 = a2[2];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = (a1 + 1600);
  if (*a2)
  {
    v7 = (*a2 + 8);
  }

  *v7 = v6;
  *v6 = v5;

  free(a2);
}

uint64_t fpfs_HandleScanningBoundaryTimerEnd(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(v3 + 688);
  v5 = *(v3 + 80);
  Count = CFArrayGetCount(*(v3 + 72));
  if (v5)
  {
    v7 = Count + 1;
  }

  else
  {
    v7 = Count;
  }

  if (FigPlaybackGetEffectiveActionAtEnd(v4, v7) == 2)
  {
    return fpfs_HandleScanningBoundaryTimerEnd_cold_1(DerivedStorage);
  }

  return fpfs_StopPlayingItem(v3, a1, 0);
}

uint64_t fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts(const __CFArray *a1, CMTime *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, int a8, char a9, char a10, char a11, char a12, char *a13, char a14)
{
  v204 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = *DerivedStorage;
  v172 = CMBaseObjectGetDerivedStorage();
  v181 = 0uLL;
  v182 = 0;
  v163 = *(DerivedStorage + 332);
  LODWORD(v156) = *(DerivedStorage + 530);
  HIDWORD(v168) = (a3 >> 6) & 1;
  v179 = *MEMORY[0x1E6960C70];
  v22 = *(MEMORY[0x1E6960C70] + 16);
  v180 = v22;
  v170 = v179;
  *&v178.value = v179;
  v178.epoch = v22;
  v200 = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v176 = 0;
  cf = 0;
  CFRetain(a1);
  v23 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v23 + 8);
  if (FigRetainProxyIsInvalidated())
  {
    fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts_cold_1(&time1);
    goto LABEL_341;
  }

  flags = a2->flags;
  if ((~flags & 0x11) == 0)
  {
    fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts_cold_6(&time1);
    goto LABEL_341;
  }

  if ((flags & 1) == 0)
  {
    fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts_cold_5(&time1);
    goto LABEL_341;
  }

  if (*(a4 + 12))
  {
    time1 = *a4;
    *&time1_16[0] = *(a4 + 16);
    time2 = *a2;
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts_cold_2(&time1);
      goto LABEL_341;
    }
  }

  if (*(a5 + 12))
  {
    time1 = *&a2->value;
    *&time1_16[0] = a2->epoch;
    time2 = *a5;
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts_cold_3(&time1);
      goto LABEL_341;
    }
  }

  if (!a6 && a11)
  {
    a6 = *(DerivedStorage + 3208);
    *(DerivedStorage + 3208) = FPSupport_IncrementSeekID(*(DerivedStorage + 3208));
  }

  HIDWORD(v168) = HIDWORD(v168) && (*(DerivedStorage + 1436) & 1) != 0 && fpfsi_isAssociatedInterstitialEventActive() != 0;
  v25 = *(DerivedStorage + 2232);
  *(DerivedStorage + 2232) = a7;
  if (a7)
  {
    CFRetain(a7);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  v26 = a3 & 0xF;
  v27 = *(DerivedStorage + 2220);
  if (v27 && v27 != a6)
  {
    fpfs_SeekDidFail();
  }

  fpfsi_GetDuration(a1, &v179);
  v165 = a6;
  if (!*(v172 + 32))
  {
    goto LABEL_43;
  }

  v28 = *(DerivedStorage + 912);
  if (!v28 || !*(DerivedStorage + 462))
  {
    goto LABEL_43;
  }

  *&time2.value = v170;
  time2.epoch = v22;
  *&theArray.value = v170;
  theArray.epoch = v22;
  if ((~a2->flags & 5) == 0 && (v179.n128_u8[12] & 0x1D) != 1)
  {
    lhs = *a2;
    v29 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v29)
    {
      time1 = *&lhs.value;
      *&time1_16[0] = lhs.epoch;
      if (!v29(v28, &time1, 3, &time2, &theArray) && (time2.flags & 1) != 0)
      {
        v118 = *&time2.value;
        *&a2->value = *&time2.value;
        epoch = time2.epoch;
        a2->epoch = time2.epoch;
        *a4 = v118;
        *(a4 + 16) = epoch;
        v32 = a5;
        *a5 = v118;
        *(a5 + 16) = epoch;
        goto LABEL_308;
      }
    }
  }

  if (v26 == 7)
  {
    lhs = *a2;
    *&rhs.value = kInBufferSeekTimeRequired;
    rhs.epoch = 0;
    CMTimeAdd(&time1, &lhs, &rhs);
    if (fpfsi_TimeInTotalTimeRangeInBuffer() || (v33 = *(DerivedStorage + 912), lhs = *a2, (v34 = *(*(CMBaseObjectGetVTable() + 16) + 144)) == 0) || (time1 = *&lhs.value, *&time1_16[0] = lhs.epoch, v34(v33, &time1, 4, &time2, &theArray)))
    {
      v26 = 7;
      goto LABEL_43;
    }

    v32 = a5;
    if ((time2.flags & 1) == 0)
    {
      v26 = 7;
      goto LABEL_309;
    }

    *a2 = time2;
LABEL_308:
    v26 = 5;
    goto LABEL_309;
  }

  if (v26 != 6)
  {
LABEL_43:
    v35 = -1;
    v32 = a5;
    goto LABEL_44;
  }

  v30 = *(DerivedStorage + 912);
  lhs = *a2;
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v31 || (time1 = *&lhs.value, *&time1_16[0] = lhs.epoch, v31(v30, &time1, 3, &time2, &theArray)))
  {
    v26 = 6;
    goto LABEL_43;
  }

  v32 = a5;
  if ((time2.flags & 1) == 0)
  {
    v26 = 6;
LABEL_309:
    v35 = -1;
    goto LABEL_44;
  }

  memset(time1_16, 0, sizeof(time1_16));
  time1 = 0u;
  fpfsi_TotalTimeRangeInBuffer();
  v116 = *(DerivedStorage + 1680);
  if (v116 && FigAlternateIsIFrameOnly(v116))
  {
    p_theArray = &theArray;
  }

  else
  {
    p_theArray = &time2;
  }

  *&a2->value = *&p_theArray->value;
  a2->epoch = p_theArray->epoch;
  if ((time1.n128_u8[12] & 1) != 0 && (BYTE4(time1_16[1]) & 1) != 0 && !*(&time1_16[1] + 1) && (*(&time1_16[0] + 1) & 0x8000000000000000) == 0 && (*(DerivedStorage + 392) & 0xF) == 6)
  {
    lhs = *p_theArray;
    *&rhs.value = time1;
    rhs.epoch = *&time1_16[0];
    if (CMTimeCompare(&lhs, &rhs) < 0)
    {
      lhs = theArray;
      *&rhs.value = time1;
      rhs.epoch = *&time1_16[0];
      if ((CMTimeCompare(&lhs, &rhs) & 0x80000000) == 0)
      {
        *&a2->value = time1;
        a2->epoch = *&time1_16[0];
      }
    }
  }

  v26 = 5;
  v35 = 6;
LABEL_44:
  time1 = *&a2->value;
  *&time1_16[0] = a2->epoch;
  fpfsi_setLastSeekTimeSet(DerivedStorage, &time1);
  v36 = (DerivedStorage + 344);
  if (v26 == 5)
  {
    if (*(a4 + 12))
    {
      v37 = a4;
    }

    else
    {
      v37 = a2;
    }

    v38 = *v37;
    *(DerivedStorage + 360) = *(v37 + 16);
    *v36 = v38;
    v39 = DerivedStorage + 368;
    if ((*(v32 + 12) & 1) == 0)
    {
      v40 = *&a2->value;
      v41 = a2->epoch;
      goto LABEL_52;
    }
  }

  else
  {
    v42 = *a4;
    *(DerivedStorage + 360) = *(a4 + 16);
    *v36 = v42;
    v39 = DerivedStorage + 368;
  }

  v40 = *v32;
  v41 = *(v32 + 16);
LABEL_52:
  *(v39 + 16) = v41;
  *v39 = v40;
  if (v35 == -1)
  {
    v43 = a3;
  }

  else
  {
    v43 = v35;
  }

  *(DerivedStorage + 392) = v43;
  *(DerivedStorage + 3184) = FigGetUpTimeNanoseconds();
  v164 = v21;
  v167 = v22;
  v44 = v165;
  if ((a3 & 0x20) == 0 && a12)
  {
    v161 = a8;
    v45 = v26;
    fpfsi_clearCoordinatedPlaybackSynchronizationTimebase();
    fpfs_PlayQueueCallForEachItem(v21, fpfs_clearCoordinatedPlaybackSynchronizationTimebaseForPlayQueueItemsApply, a1);
    theArray = *a2;
    LODWORD(lhs.value) = 0;
    v46 = CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    if (*(v46 + 80) == a1)
    {
      fpfs_getPlaybackState(v21, &lhs, 0);
      if (LODWORD(lhs.value) != 6)
      {
        v47 = *(v46 + 108);
        if (v47 <= 2.0 && v47 >= 0.0)
        {
          time1 = *&theArray.value;
          *&time1_16[0] = theArray.epoch;
          fpfs_notifyExternalStartupTasksOfEvents();
          if (!fpfs_areAllExternalStartupTasksCompleted())
          {
            if (dword_1EAF169F0)
            {
              LODWORD(rhs.value) = 0;
              LOBYTE(type.value) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              value = rhs.value;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
              {
                v108 = value;
              }

              else
              {
                v108 = value & 0xFFFFFFFE;
              }

              if (v108)
              {
                if (v164)
                {
                  v109 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v109 = "";
                }

                time1 = *&theArray.value;
                *&time1_16[0] = theArray.epoch;
                Seconds = CMTimeGetSeconds(&time1);
                Description = FigPlayerPlaybackStateGetDescription(*(v46 + 164));
                LODWORD(time2.value) = 136316418;
                *(&time2.value + 4) = "fpfs_triggerStartupTasksForSeekIfNecessary";
                LOWORD(time2.flags) = 2048;
                *(&time2.flags + 2) = v164;
                HIWORD(time2.epoch) = 2082;
                v184 = v109;
                v185 = 2048;
                v186 = Seconds;
                v187 = 1024;
                *v188 = v165;
                *&v188[4] = 2080;
                *&v188[6] = Description;
                LODWORD(v153) = 58;
                _os_log_send_and_compose_impl();
                v22 = v167;
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v21 = v164;
              v44 = v165;
              v32 = a5;
            }
          }
        }
      }
    }

    v26 = v45;
    a8 = v161;
  }

  if ((*(a4 + 12) & 0x1D) == 1)
  {
    time1 = *a4;
    *&time1_16[0] = *(a4 + 16);
    time2 = *v32;
    if (!CMTimeCompare(&time1, &time2))
    {
      v26 = 5;
    }
  }

  *(DerivedStorage + 2220) = v44;
  *(DerivedStorage + 2240) = a8;
  *(DerivedStorage + 1472) = v170;
  *(DerivedStorage + 1488) = v22;
  time1 = *&a2->value;
  *&time1_16[0] = a2->epoch;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1, &time2) || (*(DerivedStorage + 236) & 1) != 0)
  {
    if (*(DerivedStorage + 593))
    {
      v48 = FPSupport_SeekIDGetSource(v44);
      if (v44)
      {
        if (v48 != 1)
        {
          *(DerivedStorage + 593) = 0;
        }
      }
    }

    fpfs_GetTime(DerivedStorage, &v181);
    v49 = *(DerivedStorage + 1680);
    if (!v49)
    {
      v51 = 0;
      v52 = ((a3 >> 9) & 1) == 0;
      goto LABEL_108;
    }

    IsIFrameOnly = FigAlternateIsIFrameOnly(v49);
    v51 = IsIFrameOnly != 0;
    v52 = ((a3 >> 9) & 1) == 0;
    if (((a3 >> 9) & 1) != 0 || v26 != 5)
    {
      goto LABEL_103;
    }

    v22 = v167;
    if (!IsIFrameOnly)
    {
      goto LABEL_108;
    }

    v53 = CMBaseObjectGetDerivedStorage();
    theArray.value = 0;
    v54 = CMBaseObjectGetDerivedStorage();
    if (!*(v54 + 40))
    {
LABEL_90:
      LODWORD(theArray.value) = 0;
      LOBYTE(lhs.value) = 0;
      v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v60 = theArray.value;
      if (os_log_type_enabled(v59, lhs.value))
      {
        v61 = v60;
      }

      else
      {
        v61 = v60 & 0xFFFFFFFE;
      }

      if (!v61)
      {
        v22 = v167;
LABEL_107:
        v52 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v26 = 0;
        v21 = v164;
        v51 = v51;
LABEL_108:
        if ((v179.n128_u8[12] & 0x1D) == 1)
        {
          time1 = v179;
          *&time1_16[0] = v180;
          CMTimeMultiplyByFloat64(&v178, &time1, 0.95);
          time1 = v181;
          *&time1_16[0] = v182;
          time2 = v178;
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            LOBYTE(v67) = 0;
          }

          else
          {
            time1 = *&a2->value;
            *&time1_16[0] = a2->epoch;
            time2 = v178;
            v67 = CMTimeCompare(&time1, &time2) >> 31;
          }

          *(DerivedStorage + 3080) |= v67;
        }

        v158 = (DerivedStorage + 1472);
        if (v26 != 5 && v26)
        {
          goto LABEL_122;
        }

        time1 = *&a2->value;
        *&time1_16[0] = a2->epoch;
        *&time2.value = v181;
        time2.epoch = v182;
        if (!(CMTimeCompare(&time1, &time2) | a3 & 0x100 | v163 & 1))
        {
          time1 = *&a2->value;
          *&time1_16[0] = a2->epoch;
          v102 = 1;
          fpfs_SeekDidComplete();
          if (!*(DerivedStorage + 462))
          {
            v103 = *&a2->value;
            if (v26 == 5)
            {
              *(DerivedStorage + 1488) = a2->epoch;
              *v158 = v103;
            }

            else
            {
              *(DerivedStorage + 240) = a2->epoch;
              *(DerivedStorage + 224) = v103;
            }
          }

          goto LABEL_257;
        }

        if (v26 != 5 || (a2->flags & 0x1D) != 1)
        {
LABEL_122:
          HIDWORD(v156) = 0;
          goto LABEL_123;
        }

        v68 = !v52;
        if (!v51)
        {
          v68 = 1;
        }

        if (v68)
        {
          v69 = *&a2->value;
          *(DerivedStorage + 1488) = a2->epoch;
          *v158 = v69;
          HIDWORD(v156) = 1;
LABEL_123:
          time1 = *&a2->value;
          *&time1_16[0] = a2->epoch;
          *&theArray.value = v181;
          theArray.epoch = v182;
          CMTimeSubtract(&time2, &time1, &theArray);
          CMTimeAbsoluteValue(&time1, &time2);
          *&theArray.value = kSeekToCurrentFudge;
          theArray.epoch = 0;
          CMTimeMultiply(&time2, &theArray, 2);
          v70 = CMTimeCompare(&time1, &time2);
          if ((a3 & 0x80) == 0 && v70 >= 1)
          {
            time1 = v170;
            *&time1_16[0] = v22;
            fpfsi_applyTimeToPauseBuffering(a1, &time1, 0);
          }

          if ((a3 & 0x10) != 0)
          {
            time1 = v181;
            *&time1_16[0] = v182;
            if (fpfsi_atOrAfterTimeToPausePlayback(DerivedStorage))
            {
              time1 = *&a2->value;
              *&time1_16[0] = a2->epoch;
              time2 = *(DerivedStorage + 1424);
              if (CMTimeCompare(&time1, &time2) < 0)
              {
                time1 = *&a2->value;
                *&time1_16[0] = a2->epoch;
                fpfsi_applyTimeToPausePlayback(a1, &time1, 0, 0, 0);
              }
            }
          }

          if (*(v172 + 32) && *MEMORY[0x1E695FF58] == 1)
          {
            kdebug_trace();
          }

          HIDWORD(v155) = v26;
          if (fpfs_getNext(v172, 0) == a1)
          {
            if (a14)
            {
              *(v172 + 112) = v170;
              *(v172 + 128) = v22;
              *(v172 + 136) = v170;
              *(v172 + 152) = v22;
              AllocatorForMedia = FigGetAllocatorForMedia();
              FigMetricItemSeekEventCreate(AllocatorForMedia, *(DerivedStorage + 1680), &v176, 0.0, *(DerivedStorage + 840));
              v72 = *(DerivedStorage + 3400);
              v73 = v176;
              v74 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (v74)
              {
                v74(v72, 0, v73);
              }
            }

            fpfs_enqueuePrerollWasCancelledNotificationIfNeeded(a1);
          }

          if (dword_1EAF169F0)
          {
            v162 = v51;
            LODWORD(theArray.value) = 0;
            LOBYTE(lhs.value) = 0;
            v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v76 = theArray.value;
            if (os_log_type_enabled(v75, lhs.value))
            {
              v77 = v76;
            }

            else
            {
              v77 = v76 & 0xFFFFFFFE;
            }

            if (v77)
            {
              if (v21)
              {
                v78 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v78 = "";
              }

              v79 = "";
              if (a1)
              {
                v80 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v80 = "";
              }

              time1 = *&a2->value;
              *&time1_16[0] = a2->epoch;
              v81 = CMTimeGetSeconds(&time1);
              time1 = v181;
              *&time1_16[0] = v182;
              v82 = CMTimeGetSeconds(&time1);
              time1 = *(DerivedStorage + 1160);
              *&time1_16[0] = *(DerivedStorage + 1176);
              v83 = CMTimeGetSeconds(&time1);
              if (*(DerivedStorage + 1484))
              {
                v79 = "- preciseSeek is ";
              }

              time1 = *v158;
              *&time1_16[0] = *(DerivedStorage + 1488);
              v84 = CMTimeGetSeconds(&time1);
              v85 = *(DerivedStorage + 2220);
              LODWORD(time2.value) = 136317698;
              *(&time2.value + 4) = "fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v164;
              HIWORD(time2.epoch) = 2082;
              v184 = v78;
              v185 = 2048;
              v186 = *&a1;
              v187 = 2082;
              *v188 = v80;
              *&v188[8] = 2048;
              *&v188[10] = v81;
              v189 = 2048;
              v190 = v82;
              v191 = 2048;
              v192 = v83;
              v193 = 2082;
              v194 = v79;
              v21 = v164;
              v195 = 2048;
              v196 = v84;
              v197 = 1024;
              v198 = v85;
              LODWORD(v153) = 108;
              _os_log_send_and_compose_impl();
              v22 = v167;
              v44 = v165;
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v51 = v162;
          }

          if (!a10)
          {
            v86 = *(DerivedStorage + 2992);
            if (v86)
            {
              v87 = *(DerivedStorage + 2912);
              if (v87)
              {
                do
                {
                  v88 = *v87;
                  v89 = v87[1];
                  v90 = (*v87 + 8);
                  if (!*v87)
                  {
                    v90 = (DerivedStorage + 2920);
                  }

                  *v90 = v89;
                  *v89 = v88;
                  --*(DerivedStorage + 2984);
                  free(v87);
                  v87 = *(DerivedStorage + 2912);
                }

                while (v87);
                v86 = *(DerivedStorage + 2992);
                v22 = v167;
              }

              time1 = *&a2->value;
              *&time1_16[0] = a2->epoch;
              CMTimebaseSetTime(v86, &time1);
              v91 = 0;
              *(DerivedStorage + 608) = v170;
              *(DerivedStorage + 624) = v22;
              goto LABEL_260;
            }
          }

          v92 = *(MEMORY[0x1E6960C70] + 12);
          if ((v51 & 1) == 0 && fpfsi_EnterIFrameModeForSeekWithNonzeroToleranceIfPossible(v21, a1))
          {
            if (fpfsi_handleIFrameOnlyRateTransition(a1, 0, 1, *(DerivedStorage + 1664), 1, 1.0))
            {
              HIDWORD(v160) = 1;
              v51 = 0;
              goto LABEL_193;
            }

            if (!dword_1EAF169F0)
            {
              HIDWORD(v160) = 0;
              v51 = 1;
LABEL_193:
              v104 = a2->flags;
              if ((~v104 & 5) == 0)
              {
                time1 = v181;
                *&time1_16[0] = v182;
                if (fpfsi_TimeInTotalTimeRangeInBuffer())
                {
                  memset(time1_16, 0, sizeof(time1_16));
                  time1 = 0u;
                  fpfsi_getPumpAvailableTimeRange(DerivedStorage, &time1);
                  if (!v122)
                  {
                    v22 = v167;
                    v102 = 0;
                    if (time1.n128_u8[12])
                    {
                      v105 = 1;
                      if ((BYTE4(time1_16[1]) & 1) != 0 && !*(&time1_16[1] + 1) && (*(&time1_16[0] + 1) & 0x8000000000000000) == 0)
                      {
                        memset(&time2, 0, sizeof(time2));
                        fpfs_GetTime(DerivedStorage, &time2);
                        memset(&theArray, 0, sizeof(theArray));
                        *&rhs.value = time1;
                        rhs.epoch = *&time1_16[0];
                        type = *(time1_16 + 8);
                        CMTimeAdd(&lhs, &rhs, &type);
                        rhs = *(DerivedStorage + 1160);
                        CMTimeAdd(&theArray, &lhs, &rhs);
                        lhs = time2;
                        rhs = theArray;
                        if (CMTimeCompare(&lhs, &rhs) < 0)
                        {
                          v102 = 0;
                          v200 = theArray.value;
                          v92 = theArray.flags;
                          timescale = theArray.timescale;
                          v105 = 1;
                          v123 = theArray.epoch;
                          v22 = v167;
                        }

                        else
                        {
                          lhs = time2;
                          v102 = 1;
                          fpfs_SeekDidComplete();
                          if (v152)
                          {
                            v91 = v152;
                            v102 = 0;
                            v21 = v164;
                            v22 = v167;
LABEL_348:
                            if (!v91)
                            {
                              goto LABEL_257;
                            }

                            goto LABEL_342;
                          }

                          v105 = 0;
                          v22 = v167;
                          v123 = v167;
                          v44 = v165;
                        }

LABEL_236:
                        v124 = *(DerivedStorage + 524);
                        if ((v51 & 1) == 0 && v105)
                        {
                          *(DerivedStorage + 524) = 0;
                        }

                        v125 = 0;
                        v126 = *(v172 + 32);
                        if (v105 && (v51 & 1) == 0 && a9 && v126)
                        {
                          lhs.value = a2->value;
                          lhs.timescale = a2->timescale;
                          v130 = *(DerivedStorage + 1484);
                          if (v130)
                          {
                            lhs.value = *v158;
                            lhs.timescale = *(DerivedStorage + 1480);
                            v123 = *(DerivedStorage + 1488);
                            v92 = v130;
                          }

                          else
                          {
                            v131 = a2->flags;
                            v132 = a2->epoch;
                            if ((~v131 & 5) != 0 || (v92 & 1) == 0)
                            {
                              if (HIDWORD(v155) == 7)
                              {
                                time2.value = a2->value;
                                time2.timescale = a2->timescale;
                                time2.flags = v131;
                                time2.epoch = v132;
                                *&theArray.value = kInBufferSeekTimeRequired;
                                theArray.epoch = 0;
                                CMTimeAdd(&time1, &time2, &theArray);
                                lhs.value = time1.n128_u64[0];
                                v92 = time1.n128_u32[3];
                                lhs.timescale = time1.n128_i32[2];
                                v123 = *&time1_16[0];
                              }

                              else
                              {
                                v92 = a2->flags;
                                v123 = a2->epoch;
                              }
                            }

                            else
                            {
                              lhs.value = v200;
                              lhs.timescale = timescale;
                            }
                          }

                          time1.n128_u64[0] = lhs.value;
                          time1.n128_u64[1] = __PAIR64__(v92, lhs.timescale);
                          *&time1_16[0] = v123;
                          fpfsi_TryToSeekWithinBuffer();
                          if (v133)
                          {
                            v105 = 0;
                            *(DerivedStorage + 530) = 0;
                            v125 = 1;
                            v102 = 1;
                          }

                          else
                          {
                            v125 = 0;
                            v105 = 1;
                          }

                          if (!*(v172 + 32))
                          {
                            goto LABEL_247;
                          }
                        }

                        else if (!v126)
                        {
                          goto LABEL_247;
                        }

                        if (!*(DerivedStorage + 912) || !v105 || !*(DerivedStorage + 462))
                        {
                          goto LABEL_247;
                        }

                        *(DerivedStorage + 530) = 0;
                        fpfs_CancelTrialSwitch(a1);
                        fpfs_CreateAccessLogEntryWithUnlock(a1, &cf);
                        v134 = BYTE4(v160) ^ 1;
                        if (!v51)
                        {
                          v134 = 1;
                        }

                        if (v134)
                        {
                          CMTimeMakeWithSeconds(&time1, *(DerivedStorage + 1528), 1000);
                          time2 = *a2;
                          *&theArray.value = v181;
                          theArray.epoch = v182;
                          lhs = *a4;
                          rhs = *a5;
                          v135 = &theArray;
                          p_lhs = &lhs;
                          p_rhs = &rhs;
                          v137 = a1;
                          v138 = v44;
                          v139 = v51;
                          v140 = HIDWORD(v156);
                        }

                        else
                        {
                          CMTimeMakeWithSeconds(&time1, *(DerivedStorage + 1528), 1000);
                          time2 = *a2;
                          v135 = MEMORY[0x1E6960C68];
                          p_lhs = MEMORY[0x1E6960C70];
                          v137 = a1;
                          v138 = v44;
                          v139 = v51;
                          v140 = HIDWORD(v156);
                          p_rhs = MEMORY[0x1E6960C70];
                        }

                        fpfs_IssueSeekToPump(v137, &time2, v135, v138, v139, v140, p_lhs, p_rhs, &time1, v153, v154, v155, v156, v158, v160, a1, v164, v165, a5, v167, v168, a4, v170, *(&v170 + 1), v171);
                        v91 = v142;
                        v22 = v167;
                        if (v142 == -16838)
                        {
                          fpfs_GetTime(DerivedStorage, &time1);
                          v21 = v164;
                          fpfs_SeekDidComplete();
                          goto LABEL_257;
                        }

                        if (!v142)
                        {
                          v143 = 0;
                          v144 = 928;
                          do
                          {
                            if (*(DerivedStorage + v144) > *(DerivedStorage + v144 + 24))
                            {
                              if (!v51 || v143)
                              {
                                if ((v51 & 1) == 0)
                                {
                                  fpfs_ClearAllCachedRenderChains(a1);
                                }

                                fpfs_PrepareForSeek(a1, (1 << v143), 1);
                              }

                              else
                              {
                                time1 = *&a2->value;
                                *&time1_16[0] = a2->epoch;
                                fpfs_PrepareToReuseLastIFrameTrack();
                                if (v145)
                                {
                                  v91 = v145;
                                  goto LABEL_347;
                                }
                              }

                              *(DerivedStorage + v143 + 472) = 0;
                            }

                            ++v143;
                            v144 += 4;
                          }

                          while (v143 != 3);
                          if (cf)
                          {
                            fpfs_CommitAccessLogEntry(a1, cf);
                            if (*(DerivedStorage + 464))
                            {
                              *(DerivedStorage + 2144) = 1;
                            }
                          }

                          *(DerivedStorage + 3048) = v170;
                          v22 = v167;
                          *(DerivedStorage + 3064) = v167;
                          *(DerivedStorage + 2880) = 0;
                          v146 = *(DerivedStorage + 1728);
                          *(DerivedStorage + 2884) = v146;
                          *(DerivedStorage + 2656) = 0u;
                          *(DerivedStorage + 2672) = 0u;
                          *(DerivedStorage + 2688) = 0;
                          *(DerivedStorage + 2704) = v170;
                          *(DerivedStorage + 2720) = v167;
                          v147 = MEMORY[0x1E6960C80];
                          v148 = *(MEMORY[0x1E6960C80] + 16);
                          *(DerivedStorage + 2744) = v148;
                          v149 = *v147;
                          *(DerivedStorage + 2728) = *v147;
                          *(DerivedStorage + 2752) = v170;
                          *(DerivedStorage + 2768) = v167;
                          *(DerivedStorage + 2776) = v149;
                          *(DerivedStorage + 2792) = v148;
                          *(DerivedStorage + 2828) = -1;
                          *(DerivedStorage + 2856) = -1;
                          *(DerivedStorage + 2832) = 0;
                          *(DerivedStorage + 2840) = 0;
                          *(DerivedStorage + 2844) = 0;
                          *(DerivedStorage + 2848) = 0;
                          *(DerivedStorage + 2800) = 0u;
                          *(DerivedStorage + 2896) = 0;
                          *(DerivedStorage + 2820) = *(DerivedStorage + 2816);
                          *(DerivedStorage + 2824) = v146;
                          *(DerivedStorage + 2852) = *(DerivedStorage + 1732);
                          *(DerivedStorage + 2860) = FigAlternateGetVideoQualityIndex(*(DerivedStorage + 1680));
                          fpfsi_RTCReportingUpdateInitialVariantRank();
                          if (v51)
                          {
                            v102 = 1;
                          }

                          else
                          {
                            CMBaseObjectGetDerivedStorage();
                            v102 = 1;
                            if (!*(DerivedStorage + 2308))
                            {
                              *(DerivedStorage + 2308) = 1;
                            }
                          }

LABEL_247:
                          v127 = *&a2->value;
                          *(DerivedStorage + 240) = a2->epoch;
                          *(DerivedStorage + 224) = v127;
                          if (*(DerivedStorage + 524) != 1)
                          {
                            fpfs_setRanDry(a1);
                            fpfs_EnqueuePlaythroughPredictionNotification(a1);
                          }

                          *(DerivedStorage + 2368) = 0;
                          time1 = *(DerivedStorage + 320);
                          *&time1_16[0] = *(DerivedStorage + 336);
                          fpfsi_setPlaybackRateMonitorPendingSeekTime(DerivedStorage, &time1);
                          if ((a2->flags & 0x1D) == 1 && (!*(DerivedStorage + 462) || !*(v172 + 32)))
                          {
                            time1 = 0uLL;
                            *&time1_16[0] = 0;
                            time2 = *a2;
                            FPSTimelineConverterL2TimeToL3(&time2, &time1);
                            v128 = *(DerivedStorage + 576);
                            *&time2.value = time1;
                            time2.epoch = *&time1_16[0];
                            CMTimebaseSetTime(v128, &time2);
                            if (!*(v172 + 32))
                            {
                              fpfs_EnqueueNotification(v164, @"TimeJumped", a1, 0);
                              time2 = *a2;
                              v22 = v167;
                              fpfs_SeekDidComplete();
                              v102 = 1;
                              if (!a13)
                              {
                                goto LABEL_256;
                              }

                              goto LABEL_255;
                            }

                            fpfsi_updateMaxPlayThroughTime();
                          }

                          if (!a13)
                          {
LABEL_256:
                            v21 = v164;
                            goto LABEL_257;
                          }

LABEL_255:
                          *a13 = v125;
                          goto LABEL_256;
                        }

LABEL_347:
                        *(DerivedStorage + 524) = v124;
                        fpfsi_setLastSeekTimeSet(DerivedStorage, MEMORY[0x1E6960C70]);
                        *v159 = v170;
                        v22 = v167;
                        *(v159 + 16) = v167;
                        *(DerivedStorage + 530) = v157;
                        v21 = v164;
                        goto LABEL_348;
                      }

LABEL_235:
                      v123 = v22;
                      goto LABEL_236;
                    }

LABEL_196:
                    v105 = 1;
                    goto LABEL_235;
                  }

LABEL_234:
                  v102 = 0;
                  v105 = 1;
                  v22 = v167;
                  goto LABEL_235;
                }

                v104 = a2->flags;
              }

              if ((~v104 & 5) == 0)
              {
                v102 = 0;
                v181 = v170;
                v22 = v167;
                v182 = v167;
                goto LABEL_196;
              }

              goto LABEL_234;
            }

            LODWORD(v155) = v92;
            LODWORD(theArray.value) = 0;
            LOBYTE(lhs.value) = 0;
            v98 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v99 = theArray.value;
            if (os_log_type_enabled(v98, lhs.value))
            {
              v100 = v99;
            }

            else
            {
              v100 = v99 & 0xFFFFFFFE;
            }

            if (v100)
            {
              if (v164)
              {
                v101 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v101 = "";
              }

              if (a1)
              {
                v110 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v110 = "";
              }

              LODWORD(time2.value) = 136316162;
              *(&time2.value + 4) = "fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v164;
              HIWORD(time2.epoch) = 2082;
              v184 = v101;
              v185 = 2048;
              v186 = *&a1;
              v187 = 2082;
              *v188 = v110;
              LODWORD(v153) = 52;
              _os_log_send_and_compose_impl();
            }

            v51 = 1;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            HIDWORD(v160) = 0;
LABEL_192:
            v44 = v165;
            v92 = v155;
            goto LABEL_193;
          }

          if (!fpfsi_EnterIFrameModeForSeekWithNonzeroToleranceIfPossible(v21, a1) || *(DerivedStorage + 1680) || !dword_1EAF169F0)
          {
            HIDWORD(v160) = 1;
            goto LABEL_193;
          }

          LODWORD(v155) = v92;
          LODWORD(theArray.value) = 0;
          LOBYTE(lhs.value) = 0;
          v93 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v94 = theArray.value;
          if (os_log_type_enabled(v93, lhs.value))
          {
            v95 = v94;
          }

          else
          {
            v95 = v94 & 0xFFFFFFFE;
          }

          if (!v95)
          {
LABEL_191:
            HIDWORD(v160) = 1;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            goto LABEL_192;
          }

          if (v164)
          {
            v96 = (CMBaseObjectGetDerivedStorage() + 888);
            if (a1)
            {
LABEL_169:
              v97 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_190:
              LODWORD(time2.value) = 136316162;
              *(&time2.value + 4) = "fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v164;
              HIWORD(time2.epoch) = 2082;
              v184 = v96;
              v185 = 2048;
              v186 = *&a1;
              v187 = 2082;
              *v188 = v97;
              LODWORD(v153) = 52;
              _os_log_send_and_compose_impl();
              goto LABEL_191;
            }
          }

          else
          {
            v96 = "";
            if (a1)
            {
              goto LABEL_169;
            }
          }

          v97 = "";
          goto LABEL_190;
        }

        fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts_cold_4(&time1);
LABEL_341:
        v102 = 0;
        v91 = time1.n128_u32[0];
        if (!time1.n128_u32[0])
        {
          goto LABEL_257;
        }

LABEL_342:
        if (v91 != -16836 || (v151 = *(v172 + 108), v151 <= 2.0) && v151 >= 0.0)
        {
          fpfs_SeekDidFail();
          goto LABEL_260;
        }

        fpfs_StopPlayingItem();
        goto LABEL_257;
      }

      v62 = *DerivedStorage;
      if (*DerivedStorage)
      {
        v63 = (CMBaseObjectGetDerivedStorage() + 888);
        if (a1)
        {
LABEL_96:
          v64 = a1;
          v65 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_106:
          time1 = *&a2->value;
          *&time1_16[0] = a2->epoch;
          v66 = CMTimeGetSeconds(&time1);
          LODWORD(time2.value) = 136316418;
          *(&time2.value + 4) = "fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = v62;
          HIWORD(time2.epoch) = 2082;
          v184 = v63;
          v185 = 2048;
          v186 = *&v64;
          v187 = 2082;
          *v188 = v65;
          *&v188[8] = 2048;
          *&v188[10] = v66;
          LODWORD(v153) = 62;
          _os_log_send_and_compose_impl();
          a1 = v64;
          v22 = v167;
          v44 = v165;
          goto LABEL_107;
        }
      }

      else
      {
        v63 = "";
        if (a1)
        {
          goto LABEL_96;
        }
      }

      v64 = a1;
      v65 = "";
      goto LABEL_106;
    }

    if (!*(v54 + 48) || !*(v54 + 49) || fpfsi_CreateAndAddScanningModeFilterToBoss(a1, 0) || *(v53 + 2904) && FigAlternateSelectionBossSetProperty(*(v53 + 40), @"Paused", *MEMORY[0x1E695E4C0]))
    {
      goto LABEL_86;
    }

    if (FigAlternateSelectionBossApplyFilters(*(v53 + 40)))
    {
      goto LABEL_86;
    }

    v55 = *(v53 + 40);
    v56 = FigGetAllocatorForMedia();
    if (FigAlternateSelectionBossCopyProperty(v55, @"FilteredAlternateList", v56, &theArray))
    {
      goto LABEL_86;
    }

    if (!theArray.value)
    {
      goto LABEL_90;
    }

    if (CFArrayGetCount(theArray.value) < 1 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray.value, 0), FigAlternateIsIFrameOnly(ValueAtIndex)))
    {
LABEL_86:
      v58 = 1;
    }

    else
    {
      fpfsi_UpdateValidAlternateListAndSuggestAnAlternate();
      if (v111)
      {
        v58 = 1;
      }

      else
      {
        if (dword_1EAF169F0)
        {
          LODWORD(lhs.value) = 0;
          LOBYTE(rhs.value) = 0;
          v112 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v113 = lhs.value;
          if (os_log_type_enabled(v112, rhs.value))
          {
            v114 = v113;
          }

          else
          {
            v114 = v113 & 0xFFFFFFFE;
          }

          if (v114)
          {
            if (v164)
            {
              v115 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v115 = "";
            }

            if (a1)
            {
              v150 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v150 = "";
            }

            LODWORD(time2.value) = 136316162;
            *(&time2.value + 4) = "fpfsi_LeaveIFrameModeIfPossible";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = v164;
            HIWORD(time2.epoch) = 2082;
            v184 = v115;
            v185 = 2048;
            v186 = *&a1;
            v187 = 2082;
            *v188 = v150;
            LODWORD(v153) = 52;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v58 = 0;
          v44 = v165;
          goto LABEL_87;
        }

        v58 = 0;
      }

      v44 = v165;
    }

LABEL_87:
    if (theArray.value)
    {
      CFRelease(theArray.value);
    }

    if (v58)
    {
      goto LABEL_90;
    }

    v52 = 1;
    if (fpfsi_handleIFrameOnlyRateTransition(a1, 1, 0, *(DerivedStorage + 1664), 1, 0.0))
    {
      v51 = v51;
    }

    else
    {
      v51 = 0;
    }

    v26 = 5;
    v21 = v164;
LABEL_103:
    v22 = v167;
    goto LABEL_108;
  }

  fpfs_GetTime(DerivedStorage, &time1);
  fpfs_SeekDidComplete();
  *(DerivedStorage + 2216) = 0;
  v102 = 1;
LABEL_257:
  v91 = 0;
  *(DerivedStorage + 608) = v170;
  *(DerivedStorage + 624) = v22;
  if (v102 && HIDWORD(v168))
  {
    time1 = *(DerivedStorage + 1424);
    *&time1_16[0] = *(DerivedStorage + 1440);
    fpfsi_ClampVideoToTime();
    v91 = 0;
  }

LABEL_260:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v176)
  {
    CFRelease(v176);
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v21);
  CFRelease(a1);
  return v91;
}