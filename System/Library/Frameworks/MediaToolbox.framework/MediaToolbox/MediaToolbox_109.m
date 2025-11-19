BOOL fivp_filterFn(int a1, const __CFData *a2)
{
  v3 = OUTLINED_FUNCTION_7_23(a1, a2);
  v4 = v3;
  v5 = *(v3 + 1);
  if (v5 == 0xFFFFFFFFLL)
  {
    v5 = *(v3 + 2);
  }

  v6 = *v3;
  if (!*v4)
  {
    return 1;
  }

  v7 = !CFArrayGetCount(v6) || v5 == 0xFFFFFFFFLL;
  return v7 || FigAlternateIsAudioOnly(v2) || fiv_getAlternatePlayableAtPreferenceForChannelCapability(v2, *v4, *(v4 + 3)) == v5;
}

const __CFArray *fivp_firstPassFn(int a1, const __CFData *a2)
{
  v3 = OUTLINED_FUNCTION_25_11(a1, a2);
  result = *v3;
  if (*v3)
  {
    result = CFArrayGetCount(result);
    if (result)
    {
      result = FigAlternateIsAudioOnly(v2);
      if (!result)
      {
        AlternatePlayableAtPreferenceForChannelCapability = fiv_getAlternatePlayableAtPreferenceForChannelCapability(v2, *v3, *(v3 + 3));
        result = FigAlternateIsIFrameOnly(v2);
        if (result)
        {
          v8 = *(v3 + 2);
          v7 = (v3 + 16);
          v6 = v8;
        }

        else
        {
          v9 = *(v3 + 1);
          v7 = (v3 + 8);
          v6 = v9;
        }

        if (AlternatePlayableAtPreferenceForChannelCapability < v6)
        {
          *v7 = AlternatePlayableAtPreferenceForChannelCapability;
        }
      }
    }
  }

  return result;
}

uint64_t FigSimpleAlternateFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateHDCPLazyEPMFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigAlternateAOCPFilterCreate_cold_1(const __CFAllocator *a1, void *a2, const void *a3, _DWORD *a4)
{
  *a4 = FigSignalErrorAtGM();
  CFAllocatorDeallocate(a1, a2);
  CFRelease(a3);
}

uint64_t FigAlternateAOCPFilterCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateProtectedHDCPLevelUpperLimitFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSupportedVideoRangeFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateAllowedCPCFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigAlternatePathwayPreferenceFilterCreate_cold_1(const __CFAllocator *a1, void *a2, const void *a3, _DWORD *a4)
{
  *a4 = FigSignalErrorAtGM();
  CFAllocatorDeallocate(a1, a2);
  CFRelease(a3);
}

uint64_t FigAlternatePathwayPreferenceFilterCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateAllowListWithStableRenditionIDFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fsaf_createWithBytes_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fsaf_createWithBytes_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fsaf_createWithNoContext_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateURLDependencyDenyListFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSupportedAudioFormatFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternatePreferVideoCodecsWithHardwareDecodeFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternatePreferredVideoFormatFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternatePreferredVideoFormatFilterCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateNeroSupportedVideoFormatFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternatePreferBestFormatForVideoRangeFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternatePreferBestFormatForVideoRangeFilterCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateDisplaySizeFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternatePreferredVideoRangeFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateVideoFormatFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFramerateBucketCapFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternatePreferredAudioFormatFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateEligibleLosslessAudioFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateEligibleLosslessAudioFilterCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateImmersiveAudioPreferenceFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateMaximumSampleRatePreferenceFilter_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateMultichannelAudioFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateResolutionCapFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateResolutionFloorFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateResolutionLowerLimitFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateResolutionUpperLimitFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateResolutionClosestHeightFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateMinimumRequiredPresentationSizeFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFrameRateCapFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateVideoRangeAndFrameRateBucketFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateNormalizedPeakBitRateCapFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figAlternatePeakBitRateCapFilterCreateWithNameAndPriority_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSkipBitrateRangeFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateNextHighestPeakBitRateFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateMeasuredBitrateCapFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateMinimumRequiredBitrateFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateMinimumRequiredBitrateForHEVCFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateHighestRankingScoreFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFrameRateSwitchCapFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternatePlaybackScoreAndBitRateFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateStartupScoreFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternatePassthroughFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternatePassthroughFilterCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternatePassthroughFilterCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternatePassthroughFilterCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternatePassthroughFilterCreate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateHighestAtmosBitrateFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternatePreferExclusiveAudioPassthroughFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateVideoLayoutPinningFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSuppressDoVi5StereoFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateSuppressDoVi20MonoFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateMediaValidationForStereoVideoFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateAmbisonicOrderFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateMinimumRequiredPixelCountFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateAggressiveWalkBackFilterCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fsaf_apply_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fsaf_apply_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fsaf_apply_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t faf_mergeFilterCopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t faf_mergeFilterCopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t faf_mergeFilterCopyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t faf_HDCPAlternateFilterApply_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t faf_HDCPAlternateFilterApply_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL faf_HDCPAlternateFilterApply_cold_3(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t faf_mediaSelectionAudibleAlternateFilterApply_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t faf_mediaSelectionAudibleAlternateFilterApply_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t faf_passthroughFilterCopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t faf_passthroughFilterCopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t faf_passthroughFilterCopyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t faf_passthroughFilterApply_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dqr_HandleRemoteMessagesFromServer()
{
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    return 4294951138;
  }

  return result;
}

uint64_t dqr_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 32);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 32) = 0;
  }

  v2 = *(DerivedStorage + 40);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 40) = 0;
  }

  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 48) = 0;
  }

  v4 = *(DerivedStorage + 144);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 144) = 0;
  }

  v5 = *(DerivedStorage + 152);
  if (v5)
  {
    FigSyncMomentSourceDestroy(v5);
    *(DerivedStorage + 152) = 0;
  }

  v6 = *(DerivedStorage + 160);
  if (v6)
  {
    dispatch_release(v6);
    *(DerivedStorage + 160) = 0;
  }

  v7 = *(DerivedStorage + 136);
  if (v7)
  {
    dispatch_release(v7);
    *(DerivedStorage + 136) = 0;
  }

  v8 = *(DerivedStorage + 128);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 128) = 0;
  }

  v9 = *(DerivedStorage + 168);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 168) = 0;
  }

  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  if (*DerivedStorage)
  {
    FigXPCRemoteClientDisassociateObject();
    if (*(DerivedStorage + 176) || (OUTLINED_FUNCTION_1_48(), !FigXPCCreateBasicMessage()) && (OUTLINED_FUNCTION_2_50(), !FigXPCRemoteClientSendSyncMessage()))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      if (*DerivedStorage)
      {
        CFRelease(*DerivedStorage);
        *DerivedStorage = 0;
      }
    }
  }

  return FigXPCRelease();
}

void dqr_SyncServerTimebaseToMoment(uint64_t a1, void *__s1)
{
  v18 = 0;
  v17 = 0;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  __s2 = 120;
  v4 = memcmp(__s1, &__s2, 0x78uLL);
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v5)
  {
    v6 = v5;
    if (*(CMBaseObjectGetDerivedStorage() + 176))
    {
      FigSignalErrorAtGM();
    }

    else
    {
      if (*(a1 + 8))
      {
        *(__s1 + 1) |= 4u;
        *(a1 + 8) = 0;
      }

      if (FigXPCCreateBasicMessage())
      {
        goto LABEL_17;
      }

      if (v4)
      {
        if (FigXPCMessageSetCFBoolean())
        {
          goto LABEL_17;
        }

        blockBufferOut = 0;
        v7 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 0x78uLL, *MEMORY[0x1E695E480], 0, 0, 0x78uLL, 1u, &blockBufferOut);
        if (!v7)
        {
          v7 = CMBlockBufferReplaceDataBytes(__s1, blockBufferOut, 0, 0x78uLL);
          if (!v7)
          {
            v7 = FigXPCMessageSetBlockBuffer();
          }
        }

        v8 = v7;
        if (blockBufferOut)
        {
          CFRelease(blockBufferOut);
        }

        if (v8)
        {
          goto LABEL_17;
        }
      }

      else if (FigXPCMessageSetCFBoolean())
      {
        goto LABEL_17;
      }

      FigXPCRemoteClientSendSyncMessage();
    }

LABEL_17:
    FigXPCRemoteClientKillServerOnTimeout();
    CFRelease(v6);
    if (v18)
    {
      CFRelease(v18);
    }
  }
}

uint64_t dqr_EnqueueSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    goto LABEL_12;
  }

  if (!CMSampleBufferGetDataBuffer(a2))
  {
    v5 = 0;
    goto LABEL_9;
  }

  if (*(DerivedStorage + 176))
  {
LABEL_12:
    OUTLINED_FUNCTION_303();
    v4 = FigSignalErrorAtGM();
LABEL_13:
    v5 = v4;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_48();
  v4 = FigXPCCreateBasicMessage();
  if (v4)
  {
    goto LABEL_13;
  }

  v4 = FigXPCMessageAddCMSampleBuffer();
  if (v4)
  {
    goto LABEL_13;
  }

  FigSimpleMutexLock();
  OUTLINED_FUNCTION_2_50();
  v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (!v5)
  {
    v6 = CMBaseObjectGetDerivedStorage();
    *(v6 + 56) = FigXPCMessageGetInt32();
  }

  FigSimpleMutexUnlock();
LABEL_9:
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t dqr_RemoveLowWaterTrigger()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 120) || *(DerivedStorage + 176))
  {
    OUTLINED_FUNCTION_303();
    v3 = FigSignalErrorAtGM();
  }

  else
  {
    *(DerivedStorage + 120) = 0;
    v1 = *(DerivedStorage + 128);
    if (v1)
    {
      CFRelease(v1);
      *(DerivedStorage + 128) = 0;
    }

    v2 = *(DerivedStorage + 136);
    if (v2)
    {
      dispatch_release(v2);
      *(DerivedStorage + 136) = 0;
    }

    OUTLINED_FUNCTION_1_48();
    v3 = FigXPCCreateBasicMessage();
    if (!v3)
    {
      OUTLINED_FUNCTION_2_50();
      v3 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  v4 = v3;
  FigSimpleMutexUnlock();
  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t dqr_Flush()
{
  if (*(CMBaseObjectGetDerivedStorage() + 176))
  {
    OUTLINED_FUNCTION_303();
    v0 = FigSignalErrorAtGM();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_1_48();
  v0 = FigXPCCreateBasicMessage();
  if (v0)
  {
LABEL_8:
    v1 = v0;
    goto LABEL_6;
  }

  FigSimpleMutexLock();
  OUTLINED_FUNCTION_2_50();
  v1 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (!v1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 56) = FigXPCMessageGetInt32();
  }

  FigSimpleMutexUnlock();
LABEL_6:
  FigXPCRemoteClientKillServerOnTimeout();
  return v1;
}

uint64_t FigDataQueueRemoteSetupRemoteXPCClientIfNecessary_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataQueueRemoteSetupRemoteXPCClientIfNecessary_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataQueueRemoteSetupRemoteXPCClientIfNecessary_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataQueueRemoteCreateWithObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataQueueRemoteCreateWithObjectID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataQueueRemoteCreateWithObjectID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataQueueRemoteCreateWithObjectID_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataQueueRemoteCreateWithObjectID_cold_5(uint64_t a1, int a2, _DWORD *a3)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  FigSimpleMutexUnlock();
  result = FigSignalErrorAtGM();
  *a3 = result;
  return result;
}

uint64_t FigDataQueueRemoteGetObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataQueueRemoteGetObjectID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dqr_copyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dqr_setProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL dqr_setProperty_cold_2(uint64_t a1, const void **a2)
{
  v3 = FigSignalErrorAtGM();
  dqr_DestroyTimebaseSyncState(a2);
  return v3 == 0;
}

uint64_t dqr_setProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dqr_InstallLowWaterTrigger_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dqr_InstallLowWaterTrigger_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dqr_InstallLowWaterTrigger_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dqr_InstallLowWaterTrigger_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoTargetCreateWithVideoReceiver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  cf1 = 0;
  if (a4 && a2)
  {
    result = videoTarget_getInstanceTypeFromCreationOptions(a3, &cf1);
    if (!result)
    {
      if (CFEqual(cf1, @"Remote"))
      {
        v5 = OUTLINED_FUNCTION_1_49();
        return FigVideoTargetCreateRemoteWithVideoReceiver(v5, v6, v7, v8);
      }

      else
      {
        v9 = OUTLINED_FUNCTION_1_49();
        return FigVideoTargetCreateLocalWithVideoReceiver(v9, v10, v11, v12);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigVideoTargetCreateWithVideoReceiverEndpointID(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  cf1 = 0;
  if (a4 && a2)
  {
    result = videoTarget_getInstanceTypeFromCreationOptions(a3, &cf1);
    if (!result)
    {
      v7 = CFEqual(cf1, @"Remote");
      v8 = *MEMORY[0x1E695E480];
      if (v7)
      {
        return FigVideoTargetCreateRemoteWithVideoReceiverEndpointID(v8, a2, 0, a4);
      }

      else
      {
        return FigVideoTargetCreateLocalWithVideoReceiverEndpointID(v8, a2, 0, a4);
      }
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigVideoTargetCreateSharingVideoReceiverFromVideoTarget(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  cf = 0;
  v20 = 0;
  cf2 = 0;
  cf1 = 0;
  if (!a4 || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    RemoteSharingVideoReceiverFromRemoteVideoTarget = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  CMBaseObject = FigVideoTargetGetCMBaseObject(a2);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    goto LABEL_15;
  }

  RemoteSharingVideoReceiverFromRemoteVideoTarget = v9(CMBaseObject, @"InstanceType", a1, &cf2);
  if (RemoteSharingVideoReceiverFromRemoteVideoTarget)
  {
LABEL_11:
    v13 = RemoteSharingVideoReceiverFromRemoteVideoTarget;
    goto LABEL_16;
  }

  FigCFDictionaryGetValueIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  if (v20)
  {
    v11 = @"Local";
    cf1 = @"Local";
  }

  else
  {
    v11 = cf1;
    if (!cf1)
    {
      v12 = cf2;
      cf1 = cf2;
      goto LABEL_9;
    }
  }

  CFEqual(v11, cf2);
  v12 = cf1;
LABEL_9:
  if (CFEqual(v12, @"Remote"))
  {
    RemoteSharingVideoReceiverFromRemoteVideoTarget = FigVideoTargetCreateRemoteSharingVideoReceiverFromRemoteVideoTarget(a1, a2, a3, a4);
    goto LABEL_11;
  }

  v14 = FigVideoTargetGetCMBaseObject(a2);
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    v16 = *MEMORY[0x1E695E480];
    RemoteSharingVideoReceiverFromRemoteVideoTarget = v15(v14, @"VideoReceiver", *MEMORY[0x1E695E480], &cf);
    if (!RemoteSharingVideoReceiverFromRemoteVideoTarget)
    {
      RemoteSharingVideoReceiverFromRemoteVideoTarget = FigVideoTargetCreateLocalWithVideoReceiver(v16, cf, 0, a4);
    }

    goto LABEL_11;
  }

LABEL_15:
  v13 = 4294954514;
LABEL_16:
  if (cf2)
  {
    CFRelease(cf2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t videoTarget_getInstanceTypeFromCreationOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCaptionWriterForDocument_AddCaption(const void *a1, uint64_t a2, __int128 *a3)
{
  v136 = *a3;
  v139 = a3[1];
  v142 = a3[2];
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v145 = 0;
  v5 = CFGetAllocator(a1);
  *&time.start.value = v136;
  time.start.epoch = v139;
  v6 = CMTimeCopyAsDictionary(&time.start, v5);
  OUTLINED_FUNCTION_4_42(v6, v7, v8, v9, v10, v11, v12, v13, v109, v111, v113, v115, v118, v121, v124, v127, a2, theArray, v136, *(&v136 + 1), v139, *(&v139 + 1), v142);
  CMTimeRangeGetEnd(&context, &time);
  v14 = CFGetAllocator(a1);
  v15 = CMTimeCopyAsDictionary(&context, v14);
  v16 = FigVTTDocumentWriterCreateAndAddNode(*DerivedStorage, 3, 1, &v145);
  if (v16 || (v16 = FigVTTNodeSetAttribute(v145, @"starttime", v6), v16) || (v16 = FigVTTNodeSetAttribute(v145, @"endtime", v15), v16))
  {
    value_low = v16;
    goto LABEL_202;
  }

  v17 = CFGetAllocator(a1);
  context.value = 0;
  v160 = 0;
  v161[0] = 0;
  FigCaptionDataGetCMBaseObject();
  v125 = v15;
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_78;
  }

  v18 = OUTLINED_FUNCTION_5_38();
  v20 = v19(v18);
  if (v20)
  {
    goto LABEL_231;
  }

  if (v160)
  {
    v21 = CFGetTypeID(v160);
    if (v21 != FigCaptionRegionGetTypeID())
    {
      goto LABEL_230;
    }
  }

  FigCaptionDataGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v22 = OUTLINED_FUNCTION_5_38();
    value_low = v23(v22);
  }

  else
  {
    value_low = 4294954514;
  }

  if (context.value)
  {
    v25 = CFGetTypeID(context.value);
    if (v25 != FigCaptionDynamicStyleGetTypeID())
    {
      goto LABEL_230;
    }

    if (context.value)
    {
      InitialValue = FigCaptionDynamicStyleGetInitialValue();
      v161[0] = InitialValue;
      if (InitialValue)
      {
        InitialValue = CFRetain(InitialValue);
      }

      v161[0] = InitialValue;
    }
  }

  if (value_low)
  {
LABEL_232:
    v29 = 0;
    goto LABEL_79;
  }

  v27 = v161[0];
  if (v161[0] && (v27 = CFEqual(v161[0], *MEMORY[0x1E6961550]), !v27))
  {
    v27 = CFEqual(v161[0], *MEMORY[0x1E6961570]);
    if (v27)
    {
      v28 = kFigVTT_AttributeValue_cue_textAlign_start;
    }

    else
    {
      v27 = CFEqual(v161[0], *MEMORY[0x1E6961558]);
      if (v27)
      {
        v28 = kFigVTT_AttributeValue_cue_textAlign_end;
      }

      else
      {
        v27 = CFEqual(v161[0], *MEMORY[0x1E6961560]);
        if (v27)
        {
          v28 = kFigVTT_AttributeValue_cue_textAlign_left;
        }

        else
        {
          v27 = CFEqual(v161[0], *MEMORY[0x1E6961568]);
          if (!v27)
          {
            v29 = 0;
            goto LABEL_33;
          }

          v28 = kFigVTT_AttributeValue_cue_textAlign_right;
        }
      }
    }
  }

  else
  {
    v28 = kFigVTT_AttributeValue_cue_textAlign_center;
  }

  v29 = *v28;
  if (!*v28)
  {
LABEL_33:
    v31 = 1;
    goto LABEL_34;
  }

  v30 = OUTLINED_FUNCTION_3_40(v27, @"align");
  if (v30)
  {
    goto LABEL_64;
  }

  v31 = 0;
LABEL_34:
  if (v161[0])
  {
    CFRelease(v161[0]);
    v161[0] = 0;
  }

  if ((v31 & 1) == 0)
  {
    CFRelease(v29);
  }

  if (!v160)
  {
    goto LABEL_49;
  }

  FigCaptionRegionGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_78;
  }

  v32 = OUTLINED_FUNCTION_5_38();
  v20 = v33(v32);
  if (v20)
  {
    goto LABEL_231;
  }

  if (!v161[0])
  {
    goto LABEL_54;
  }

  v34 = CFGetTypeID(v161[0]);
  if (v34 != FigCaptionDynamicStyleGetTypeID())
  {
    goto LABEL_230;
  }

  if (!v161[0])
  {
    goto LABEL_54;
  }

  FigCaptionDynamicStyleGetInitialValue();
  FigGeometryPointMakeFromDictionary();
  value = time.duration.value;
  if ((*&time.start.timescale & 0x1FFFFFFFFLL) == 0x125202020)
  {
    v29 = FigGeometryDimensionCopyAsDictionary();
    v30 = OUTLINED_FUNCTION_3_40(v29, @"position");
    if (!v30)
    {
      if (v29)
      {
        CFRelease(v29);
      }

      goto LABEL_48;
    }

LABEL_64:
    value_low = v30;
    goto LABEL_79;
  }

LABEL_48:
  if ((value & 0x100000000) != 0)
  {
    if (value == 1818848869 || value == 622862368)
    {
      v29 = FigGeometryDimensionCopyAsDictionary();
      v107 = OUTLINED_FUNCTION_3_40(v29, @"line");
      if (v107)
      {
        value_low = v107;
        goto LABEL_235;
      }
    }

    else
    {
      v29 = 0;
    }

    goto LABEL_50;
  }

LABEL_49:
  v29 = 0;
LABEL_50:
  if (v161[0])
  {
    CFRelease(v161[0]);
    v161[0] = 0;
  }

  if (v29)
  {
    CFRelease(v29);
  }

LABEL_54:
  FigGeometryDimensionMake();
  if (v160)
  {
    CMBaseObject = FigCaptionRegionGetCMBaseObject();
    v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v37)
    {
      goto LABEL_78;
    }

    v20 = v37(CMBaseObject, *MEMORY[0x1E69613B0], v17, v161);
    if (!v20)
    {
      if (!v161[0])
      {
        goto LABEL_70;
      }

      v38 = CFGetTypeID(v161[0]);
      if (v38 == FigCaptionDynamicStyleGetTypeID())
      {
        if (!v161[0])
        {
          goto LABEL_70;
        }

        v39 = FigCaptionDynamicStyleGetInitialValue();
        if (v39)
        {
          v40 = CFGetTypeID(v39);
          if (v40 == CFDictionaryGetTypeID())
          {
            FigGeometryDimensionMakeFromDictionary();
            v41 = FigGeometryDimensionCopyAsDictionary();
            v29 = v41;
            v15 = v125;
            if (v41)
            {
              v30 = OUTLINED_FUNCTION_3_40(v41, @"size");
              if (v30)
              {
                goto LABEL_64;
              }
            }

            goto LABEL_66;
          }
        }

        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_0_38();
        value_low = FigSignalErrorAtGM();
        v29 = 0;
LABEL_235:
        v15 = v125;
        goto LABEL_79;
      }

LABEL_230:
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_0_38();
      v20 = FigSignalErrorAtGM();
    }

LABEL_231:
    value_low = v20;
    goto LABEL_232;
  }

  v29 = 0;
LABEL_66:
  if (v161[0])
  {
    CFRelease(v161[0]);
    v161[0] = 0;
  }

  if (v29)
  {
    CFRelease(v29);
  }

LABEL_70:
  if (!v160)
  {
    goto LABEL_226;
  }

  FigCaptionRegionGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
LABEL_78:
    v29 = 0;
    value_low = 4294954514;
    goto LABEL_79;
  }

  v42 = OUTLINED_FUNCTION_5_38();
  v20 = v43(v42);
  if (v20)
  {
    goto LABEL_231;
  }

  if (!v161[0])
  {
    v29 = 0;
    goto LABEL_228;
  }

  v44 = FigCaptionDynamicStyleGetInitialValue();
  if (!v44)
  {
    goto LABEL_230;
  }

  v45 = v44;
  v46 = CFGetTypeID(v44);
  if (v46 != CFStringGetTypeID())
  {
    goto LABEL_230;
  }

  v47 = CFEqual(v161[0], *MEMORY[0x1E69613D8]);
  if (v47)
  {
LABEL_77:
    v48 = kFigVTT_AttributeValue_cue_writingMode_TopToBottom;
    goto LABEL_220;
  }

  v47 = CFEqual(v45, *MEMORY[0x1E69613F0]);
  if (v47)
  {
    v48 = kFigVTT_AttributeValue_cue_writingMode_RightToLeft;
  }

  else
  {
    v47 = CFEqual(v45, *MEMORY[0x1E69613E8]);
    if (!v47)
    {
      v47 = CFEqual(v45, *MEMORY[0x1E69613E0]);
      if (!v47)
      {
LABEL_226:
        v29 = 0;
        v108 = v161[0];
        if (v161[0])
        {
LABEL_227:
          CFRelease(v108);
          value_low = 0;
          v161[0] = 0;
          goto LABEL_79;
        }

LABEL_228:
        value_low = 0;
        goto LABEL_79;
      }

      goto LABEL_77;
    }

    v48 = kFigVTT_AttributeValue_cue_writingMode_LeftToRight;
  }

LABEL_220:
  v29 = *v48;
  if (!*v48)
  {
    goto LABEL_226;
  }

  value_low = OUTLINED_FUNCTION_3_40(v47, @"writingMode");
  if (!value_low)
  {
    v108 = v161[0];
    if (v161[0])
    {
      goto LABEL_227;
    }
  }

LABEL_79:
  if (v160)
  {
    CFRelease(v160);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v161[0])
  {
    CFRelease(v161[0]);
  }

  if (context.value)
  {
    CFRelease(context.value);
  }

  if (!value_low)
  {
    v49 = v145;
    v149 = 0;
    v150 = 0;
    v148 = 0;
    cf = 0;
    v128 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (!Mutable || (v51 = CFGetAllocator(a1), (v52 = CFArrayCreateMutable(v51, 0, MEMORY[0x1E695E9C0])) == 0))
    {
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_2_35();
      value_low = FigSignalErrorAtGM();
LABEL_194:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v150)
      {
        CFRelease(v150);
      }

      if (v148)
      {
        CFRelease(v148);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_202;
    }

    v53 = v52;
    v54 = CFGetAllocator(a1);
    OUTLINED_FUNCTION_4_42(v54, v55, v56, v57, v58, v59, v60, v61, v110, v112, v114, v116, v119, v122, v125, v128, v131, theArraya, v137, v138, v140, v141, v143);
    v63 = FigCaptionStyleSegmentGeneratorCreate(v62, v132, &time.start.value, &v150);
    v120 = Mutable;
    v123 = v6;
    theArrayb = v53;
    if (v63)
    {
      goto LABEL_190;
    }

    v63 = FigCaptionStyleSegmentGeneratorPerform(v150);
    if (v63)
    {
      goto LABEL_190;
    }

    v117 = v49;
    SegmentCount = FigCaptionStyleSegmentGeneratorGetSegmentCount(v150);
    if (SegmentCount >= 1)
    {
      v65 = SegmentCount;
      v66 = 0;
      v67 = MEMORY[0x1E695E9D8];
      v68 = MEMORY[0x1E695E9E8];
      while (1)
      {
        SegmentAtIndex = FigCaptionStyleSegmentGeneratorGetSegmentAtIndex(v150, v66);
        if (v148)
        {
          CFRelease(v148);
          v148 = 0;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v63 = FigCaptionStyleSegmentCopyText(SegmentAtIndex, &v148);
        if (v63)
        {
          goto LABEL_190;
        }

        v63 = FigCaptionStyleSegmentCopyAttributes(SegmentAtIndex, &cf);
        if (v63)
        {
          goto LABEL_190;
        }

        if (v149)
        {
          CFRelease(v149);
          v149 = 0;
        }

        v70 = CFGetAllocator(a1);
        v63 = FigVTTSpanCreate(v70, &v149);
        if (v63)
        {
          goto LABEL_190;
        }

        v63 = FigVTTNodeSetValue(v149, v148);
        if (v63)
        {
          goto LABEL_190;
        }

        v71 = cf;
        v72 = v149;
        MEMORY[0x19A8D3660](&fcwvtt_getCaptionStylePropertyToVTTAttributesMapping_once, fcwvtt_initCaptionStylePropertyToVTTAttributesMapping);
        v73 = sCaptionStylePropertyToVTTAttributesMapping;
        v74 = CFGetAllocator(a1);
        v75 = CFDictionaryCreateMutable(v74, 0, v67, v68);
        if (v75)
        {
          v76 = v75;
          time.start.epoch = v72;
          time.duration.value = 0;
          time.start.value = v73;
          *&time.start.timescale = v75;
          CFDictionaryApplyFunction(v71, fcwvtt_mapOneCaptionStylePropertyToAttribute, &time);
          value_low = LODWORD(time.duration.value);
          if (!LODWORD(time.duration.value))
          {
            context.value = v72;
            *&context.timescale = 0;
            CFDictionaryApplyFunction(v76, fcwvtt_copyOneAttributeToNode, &context);
            value_low = context.timescale;
          }

          CFRelease(v76);
          if (value_low)
          {
            goto LABEL_191;
          }
        }

        else
        {
          OUTLINED_FUNCTION_49_0();
          OUTLINED_FUNCTION_2_35();
          value_low = FigSignalErrorAtGM();
          if (value_low)
          {
            goto LABEL_191;
          }
        }

        v77 = v149;
        FigBytePumpGetFigBaseObject(a1);
        v78 = CMBaseObjectGetDerivedStorage();
        time.start.value = 0;
        v79 = (v78 + 8);
        if (!*(v78 + 8))
        {
          v80 = CFGetAllocator(a1);
          v81 = FigAttributePartitionGeneratorCreate(v80, v79);
          if (v81)
          {
            goto LABEL_122;
          }

          v82 = CFGetAllocator(a1);
          v83 = CFArrayCreateMutable(v82, 0, MEMORY[0x1E695E9C0]);
          *(v78 + 16) = v83;
          if (!v83)
          {
            break;
          }
        }

        v81 = FigVTTNodeCopyAttributes(v77, &time);
        if (v81)
        {
          goto LABEL_122;
        }

        value_low = FigAttributePartitionGeneratorAddElement(*v79, v77, time.start.value);
        if (!value_low)
        {
          CFArrayAppendValue(*(v78 + 16), v77);
        }

LABEL_114:
        if (time.start.value)
        {
          CFRelease(time.start.value);
        }

        if (value_low)
        {
          goto LABEL_191;
        }

        CFArrayAppendValue(theArrayb, v149);
        if (v65 == ++v66)
        {
          goto LABEL_123;
        }
      }

      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_2_35();
      v81 = FigSignalErrorAtGM();
LABEL_122:
      value_low = v81;
      goto LABEL_114;
    }

LABEL_123:
    time.start.value = 0;
    *&time.start.timescale = 0;
    context.value = 0;
    v84 = CFGetAllocator(a1);
    v160 = 0;
    v161[0] = 0;
    v158 = 0;
    v159 = 0;
    v156 = 0;
    v157 = 0;
    v85 = FigCaptionDataGetCMBaseObject();
    v86 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v86)
    {
      v87 = v86(v85, *MEMORY[0x1E6961268], v129, &v156);
      if (v87)
      {
LABEL_171:
        value_low = v87;
LABEL_174:
        if (v161[0])
        {
          CFRelease(v161[0]);
        }

        if (v160)
        {
          CFRelease(v160);
        }

        if (v159)
        {
          CFRelease(v159);
        }

        if (v158)
        {
          CFRelease(v158);
        }

        if (v157)
        {
          CFRelease(v157);
        }

        if (context.value)
        {
          CFRelease(context.value);
        }

        if (v156)
        {
          CFRelease(v156);
        }

        if (value_low)
        {
          goto LABEL_191;
        }

        v63 = FigVTTNodeSetChildNodeArray(v117, theArrayb);
LABEL_190:
        value_low = v63;
LABEL_191:
        CFRelease(theArrayb);
        if (v149)
        {
          CFRelease(v149);
        }

        v6 = v123;
        v15 = v126;
        Mutable = v120;
        goto LABEL_194;
      }

      v88 = *MEMORY[0x1E69614E0];
      if (!FigCFArrayContainsValue() || ((v89 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0 ? (v90 = &stru_1F0B1AFB8) : (v90 = v89(v132)), (Length = CFStringGetLength(v90)) == 0))
      {
LABEL_173:
        value_low = 0;
        goto LABEL_174;
      }

      v92 = Length;
      v93 = 0;
      while (1)
      {
        if (context.value)
        {
          CFRelease(context.value);
          context.value = 0;
        }

        v94 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v94)
        {
          break;
        }

        v87 = v94(v132, v93, v88, v129, &context, &time);
        if (v87)
        {
          goto LABEL_171;
        }

        if (context.value)
        {
          v154 = -1;
          v155 = -1;
          v152 = 0;
          v153 = 0;
          v151 = 0;
          if (v161[0])
          {
            CFRelease(v161[0]);
            v161[0] = 0;
          }

          if (v160)
          {
            CFRelease(v160);
            v160 = 0;
          }

          if (v159)
          {
            CFRelease(v159);
            v159 = 0;
          }

          if (v158)
          {
            CFRelease(v158);
            v158 = 0;
          }

          if (v157)
          {
            CFRelease(v157);
            v157 = 0;
          }

          v87 = fcwtt_mapOffsetToSpanAndSpanOffset(v132, time.start.value, theArrayb, &v155, &v153, &v151 + 1);
          if (v87)
          {
            goto LABEL_171;
          }

          if (v153 >= 1)
          {
            v87 = fcwtt_splitSpanNode(theArrayb, v155, v153);
            if (v87)
            {
              goto LABEL_171;
            }
          }

          v87 = fcwtt_mapOffsetToSpanAndSpanOffset(v132, *&time.start.timescale + time.start.value, theArrayb, &v154, &v152, &v151);
          if (v87)
          {
            goto LABEL_171;
          }

          if (v152 >= 1)
          {
            v87 = fcwtt_splitSpanNode(theArrayb, v154, v152);
            if (v87)
            {
              goto LABEL_171;
            }
          }

          v87 = FigVTTSpanCreate(v84, v161);
          if (v87)
          {
            goto LABEL_171;
          }

          v87 = FigVTTNodeSetProperty(v161[0], @"WebVTTSpanNode_MarkupElement", @"RubyStart");
          if (v87)
          {
            goto LABEL_171;
          }

          v87 = FigVTTSpanCreate(v84, &v160);
          if (v87)
          {
            goto LABEL_171;
          }

          v87 = FigVTTNodeSetProperty(v160, @"WebVTTSpanNode_MarkupElement", @"RubyEnd");
          if (v87)
          {
            goto LABEL_171;
          }

          v87 = FigVTTSpanCreate(v84, &v159);
          if (v87)
          {
            goto LABEL_171;
          }

          v87 = FigVTTNodeSetProperty(v159, @"WebVTTSpanNode_MarkupElement", @"RubyTextStart");
          if (v87)
          {
            goto LABEL_171;
          }

          v87 = FigVTTSpanCreate(v84, &v157);
          if (v87)
          {
            goto LABEL_171;
          }

          v87 = FigVTTNodeSetProperty(v157, @"WebVTTSpanNode_MarkupElement", @"RubyTextEnd");
          if (v87)
          {
            goto LABEL_171;
          }

          v87 = FigVTTSpanCreate(v84, &v158);
          if (v87)
          {
            goto LABEL_171;
          }

          v87 = FigVTTNodeSetProperty(v158, @"WebVTTSpanNode_MarkupElement", @"RubyText");
          if (v87)
          {
            goto LABEL_171;
          }

          v95 = context.value;
          v96 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          v97 = v96 ? v96(v95) : &stru_1F0B1AFB8;
          v87 = FigVTTNodeSetValue(v158, v97);
          if (v87)
          {
            goto LABEL_171;
          }

          CFArrayInsertValueAtIndex(theArrayb, v155, v161[0]);
          if (v151)
          {
            Count = CFArrayGetCount(theArrayb);
          }

          OUTLINED_FUNCTION_6_33(Count, v99, v160);
          OUTLINED_FUNCTION_6_33(v100, v101, v157);
          OUTLINED_FUNCTION_6_33(v102, v103, v158);
          OUTLINED_FUNCTION_6_33(v104, v105, v159);
        }

        v93 = *&time.start.timescale + time.start.value;
        if (*&time.start.timescale + time.start.value == v92)
        {
          goto LABEL_173;
        }
      }
    }

    value_low = 4294954514;
    goto LABEL_174;
  }

LABEL_202:
  if (v145)
  {
    CFRelease(v145);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return value_low;
}

uint64_t figVTTCaptionWriterForDocument_Finish(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigBytePumpGetFigBaseObject(a1);
  v3 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  theDict = 0;
  v13 = 0;
  v14 = 0;
  v11 = a1;
  v12 = 0;
  v4 = *(v3 + 8);
  if (!v4)
  {
    v6 = 0;
    goto LABEL_18;
  }

  v5 = FigAttributePartitionGeneratorPerformPartitioning(v4, &theDict);
  if (!v5)
  {
    CFDictionaryApplyFunction(theDict, fcwvtt_addOnePartitionAsStyleNode, &v11);
    v6 = v14;
    if (v14)
    {
      goto LABEL_16;
    }

    if (!v12 || (v5 = FigVTTNodeSetChildNodeArray(v12, v13), !v5))
    {
      v7 = 0;
      while (1)
      {
        Count = *(v3 + 16);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (v7 >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 16), v7);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v5 = FigAttributePartitionGeneratorCopyPartitionReferences(*(v3 + 8), ValueAtIndex, &cf);
        if (!v5)
        {
          v5 = FigVTTNodeSetProperty(ValueAtIndex, @"WebVTTSpanNode_StyleReferences", cf);
          ++v7;
          if (!v5)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v6 = 0;
      goto LABEL_16;
    }
  }

LABEL_14:
  v6 = v5;
LABEL_16:
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_18:
  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (!v6)
  {
    return FigVTTDocumentWriterFlush(*DerivedStorage);
  }

  return v6;
}

const void *fcwvtt_mapOneCaptionStylePropertyToAttribute(const void *key, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 24))
  {
    key = CFDictionaryGetValue(*a3, key);
    if (key)
    {
      key = (key)(a2, *(a3 + 8));
      if (key)
      {
        *(a3 + 24) = key;
      }
    }
  }

  return key;
}

uint64_t fcwvtt_copyOneAttributeToNode(uint64_t cf, const void *a2, uint64_t a3)
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

uint64_t fcwtt_mapOffsetToSpanAndSpanOffset(uint64_t a1, CFIndex a2, const __CFArray *a3, CFIndex *a4, CFIndex *a5, BOOL *a6)
{
  cf = 0;
  v28 = 0;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v12)
  {
    v13 = v12(a1);
    if (!v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = -1;
LABEL_33:
      if (a4)
      {
        *a4 = v16;
      }

      if (a5)
      {
        *a5 = v14;
      }

      v25 = 0;
      if (a6)
      {
        *a6 = v15;
      }

      goto LABEL_39;
    }
  }

  else
  {
    v13 = &stru_1F0B1AFB8;
  }

  Length = CFStringGetLength(v13);
  if ((a2 & 0x8000000000000000) == 0 && Length >= a2)
  {
    v16 = 0;
    v18 = 0;
    if (!a3)
    {
      goto LABEL_9;
    }

LABEL_8:
    for (i = CFArrayGetCount(a3); v16 < i; i = 0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v16);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v21 = CFGetAllocator(ValueAtIndex);
      v22 = FigVTTNodeCopyProperty(ValueAtIndex, @"WebVTTSpanNode_MarkupElement", v21, &cf);
      if (v22)
      {
        goto LABEL_45;
      }

      if (!cf || !CFEqual(cf, @"RubyStart") && !CFEqual(cf, @"RubyEnd") && !CFEqual(cf, @"RubyTextStart") && !CFEqual(cf, @"RubyTextEnd") && !CFEqual(cf, @"RubyText"))
      {
        if (v28)
        {
          CFRelease(v28);
          v28 = 0;
        }

        v22 = FigVTTNodeCopyValue(ValueAtIndex, &v28);
        if (v22)
        {
          goto LABEL_45;
        }

        if (v28)
        {
          v23 = CFStringGetLength(v28);
          v14 = a2 - v18;
          v24 = a2 < v18;
          v18 += v23;
          v24 = v24 || v18 <= a2;
          if (!v24)
          {
            goto LABEL_32;
          }
        }
      }

      ++v16;
      if (a3)
      {
        goto LABEL_8;
      }

LABEL_9:
      ;
    }

    v14 = 0;
    v16 = -1;
LABEL_32:
    v15 = v16 == -1;
    goto LABEL_33;
  }

  v22 = FigSignalErrorAtGM();
LABEL_45:
  v25 = v22;
LABEL_39:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return v25;
}

uint64_t fcwtt_splitSpanNode(const __CFArray *a1, CFIndex a2, CFIndex a3)
{
  cf = 0;
  value = 0;
  theString = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  CopyWithValueRange = FigVTTNodeCopyValue(ValueAtIndex, &theString);
  if (CopyWithValueRange)
  {
    goto LABEL_14;
  }

  Length = CFStringGetLength(theString);
  v9 = Length - a3;
  if (Length <= a3)
  {
    v10 = 0;
    goto LABEL_7;
  }

  CopyWithValueRange = FigVTTSpanCreateCopyWithValueRange(ValueAtIndex, 0, a3, &value);
  if (CopyWithValueRange)
  {
LABEL_14:
    v10 = CopyWithValueRange;
  }

  else
  {
    v10 = FigVTTSpanCreateCopyWithValueRange(ValueAtIndex, a3, v9, &cf);
    if (!v10)
    {
      CFArrayRemoveValueAtIndex(a1, a2);
      CFArrayInsertValueAtIndex(a1, a2, value);
      CFArrayInsertValueAtIndex(a1, a2 + 1, cf);
    }
  }

LABEL_7:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theString)
  {
    CFRelease(theString);
  }

  return v10;
}

void fcwvtt_addOnePartitionAsStyleNode(const void *a1, const __CFDictionary *a2, uint64_t a3)
{
  value = 0;
  FigBytePumpGetFigBaseObject(*a3);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(a3 + 24))
  {
    goto LABEL_8;
  }

  if (*(a3 + 8))
  {
LABEL_5:
    v11 = CFGetAllocator(*a3);
    v8 = FigVTTStyleCreate(v11, a1, &value);
    if (!v8)
    {
      v12[0] = *(a3 + 8);
      v12[1] = value;
      v13 = 0;
      CFDictionaryApplyFunction(a2, fcwvtt_applyOneAttributeToStyleNode, v12);
      v8 = v13;
      if (!v13)
      {
        CFArrayAppendValue(*(a3 + 16), value);
        goto LABEL_8;
      }
    }

    goto LABEL_12;
  }

  v7 = DerivedStorage;
  v8 = FigVTTDocumentWriterCreateAndAddNode(*DerivedStorage, 2, 7, a3 + 8);
  if (!v8)
  {
    v9 = CFGetAllocator(*v7);
    Mutable = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
    *(a3 + 16) = Mutable;
    if (!Mutable)
    {
      OUTLINED_FUNCTION_2_35();
      v8 = FigSignalErrorAtGM();
      if (!v8)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    goto LABEL_5;
  }

LABEL_12:
  *(a3 + 24) = v8;
LABEL_8:
  if (value)
  {
    CFRelease(value);
  }
}

const void *fcwvtt_applyOneAttributeToStyleNode(const void *result, const void *a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    result = FigVTTNodeSetAttribute(*(a3 + 8), result, a2);
    if (result)
    {
      *(a3 + 16) = result;
    }
  }

  return result;
}

uint64_t FigVTTCaptionWriterCreateForDocument_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVTTCaptionWriterCreateForDocument_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigByteFlumeCreateWithHTTP(uint64_t a1, const __CFURL *a2, const void *a3, const void *a4, const void *a5, NSObject *a6, int a7, const __CFDictionary *a8, void *a9)
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  number = 0;
  v113 = 0;
  v111 = 0;
  if (FigNote_AllowInternalDefaultLogs())
  {
    FigNote_AllowInternalDefaultLogs();
  }

  OUTLINED_FUNCTION_33_9();
  fig_note_initialize_category_with_default_work_cf();
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_33_9();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2 || !a9)
  {
    OUTLINED_FUNCTION_49_0();
LABEL_138:
    v27 = FigSignalErrorAtGM();
LABEL_139:
    v78 = v27;
    goto LABEL_140;
  }

  v14 = MEMORY[0x1E695E480];
  if (!a4)
  {
    goto LABEL_20;
  }

  v15 = FigCFHTTPCreateURLString(a2);
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a4) || (Value = CFDictionaryGetValue(a4, @"Version")) == 0 || (v18 = Value, v19 = CFNumberGetTypeID(), v19 != CFGetTypeID(v18)) || (LODWORD(valuePtr[0]) = 0, !CFNumberGetValue(v18, kCFNumberSInt32Type, valuePtr)) || LODWORD(valuePtr[0]) != 1 || (v20 = CFDictionaryGetValue(a4, @"URL")) == 0)
  {
LABEL_97:
    a4 = 0;
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (!a7)
  {
    if (CFStringCompare(v20, v15, 0))
    {
      goto LABEL_97;
    }

    goto LABEL_16;
  }

  v21 = CFURLCreateWithString(*v14, v20, 0);
  if (v21)
  {
    v22 = v21;
    v23 = FigCFURLCreateCacheKey();
    CFRelease(v22);
  }

  else
  {
    v23 = 0;
  }

  v79 = OUTLINED_FUNCTION_184();
  v81 = CFURLCreateWithString(v79, v80, 0);
  if (!v81)
  {
    v83 = 0;
LABEL_93:
    if (v23)
    {
      CFRelease(v23);
    }

    if (v83)
    {
      CFRelease(v83);
    }

    goto LABEL_97;
  }

  v82 = v81;
  v83 = FigCFURLCreateCacheKey();
  CFRelease(v82);
  if (!v23 || !v83)
  {
    goto LABEL_93;
  }

  v84 = CFStringCompare(v23, v83, 0);
  CFRelease(v23);
  CFRelease(v83);
  if (v84)
  {
    goto LABEL_97;
  }

LABEL_16:
  v24 = CFDictionaryGetValue(a4, @"Size");
  if (!v24)
  {
    goto LABEL_97;
  }

  v25 = v24;
  v26 = CFNumberGetTypeID();
  if (v26 != CFGetTypeID(v25))
  {
    goto LABEL_97;
  }

  if (v15)
  {
LABEL_19:
    CFRelease(v15);
  }

LABEL_20:
  FigByteFlumeGetClassID();
  v27 = CMDerivedObjectCreate();
  if (v27)
  {
    goto LABEL_139;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigNetworkUrgencyMonitorCreate(a1, (DerivedStorage + 624));
  v27 = FigByteFlumeBaseInitialize(a1, DerivedStorage);
  if (v27)
  {
    goto LABEL_139;
  }

  v29 = MEMORY[0x1E695E4D0];
  if (a8)
  {
    v30 = CFDictionaryGetValue(a8, @"FBFCreateOption_MaxSizeAllowedForCellularAccess");
    if (v30)
    {
      v31 = v30;
      v32 = CFGetTypeID(v30);
      if (v32 == CFNumberGetTypeID())
      {
        *(DerivedStorage + 152) = CFNumberGetValue(v31, kCFNumberSInt64Type, (DerivedStorage + 160));
      }
    }

    CFDictionaryGetValue(a8, @"FBFCreateOption_DisallowsExpensiveNetworkAccess");
    OUTLINED_FUNCTION_32_8();
    *(DerivedStorage + 153) = v33;
    CFDictionaryGetValue(a8, @"FBFCreateOption_DisallowsConstrainedNetworkAccess");
    OUTLINED_FUNCTION_32_8();
    *(DerivedStorage + 154) = v34;
    CFDictionaryGetValue(a8, @"FBFCreateOption_UseAWDL");
    OUTLINED_FUNCTION_32_8();
    *(DerivedStorage + 532) = v35;
    CFDictionaryGetValue(a8, @"FBFCreateOption_DisableLargeDownload");
    OUTLINED_FUNCTION_32_8();
    *(DerivedStorage + 248) = v36;
    v37 = CFDictionaryGetValue(a8, @"FBFCreateOption_HTTPRequestOptions");
    if (v37)
    {
      v37 = CFRetain(v37);
    }

    *(DerivedStorage + 568) = v37;
    v107 = CFDictionaryGetValue(a8, @"FBFCreateOption_AlternativeConfigurationOptions");
    CFDictionaryGetValue(a8, @"FBFCreateOption_AlwaysFollowRedirects");
    OUTLINED_FUNCTION_32_8();
    *(DerivedStorage + 184) = v38;
    v39 = CFDictionaryGetValue(a8, @"FBFCreateOption_ParentNetworkActivity");
    if (v39)
    {
      v39 = CFRetain(v39);
    }

    *(DerivedStorage + 640) = v39;
    FigCFDictionaryGetBooleanIfPresent();
    *(DerivedStorage + 533) = 0;
    *(DerivedStorage + 616) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v40 = CFDictionaryGetValue(a8, @"FBFCreateOption_StoreBagConfiguration");
    *(DerivedStorage + 632) = FigRCLGetNumberWithDefault(v40, @"enableHTTP3Connection") != 0;
    *(DerivedStorage + 633) = FigRCLGetNumberWithDefault(v40, @"enableL4S") != 0;
  }

  else
  {
    v107 = 0;
  }

  v41 = *(DerivedStorage + 568);
  if (v41)
  {
    v42 = CFDictionaryGetValue(v41, @"FHRP_InterfaceName");
    if (v42)
    {
      v42 = CFRetain(v42);
    }

    *(DerivedStorage + 536) = v42;
    v43 = CFDictionaryGetValue(*(DerivedStorage + 568), @"FHRP_StorageSession");
    if (v43)
    {
      v43 = CFRetain(v43);
    }

    *(DerivedStorage + 232) = v43;
    v44 = CFDictionaryGetValue(*(DerivedStorage + 568), @"FHRP_ClientAuditToken");
    if (v44)
    {
      v44 = CFRetain(v44);
    }

    *(DerivedStorage + 544) = v44;
    v45 = CFDictionaryGetValue(*(DerivedStorage + 568), @"FHRP_ClientBundleIdentifier");
    if (v45)
    {
      v45 = CFRetain(v45);
    }

    *(DerivedStorage + 552) = v45;
    *(DerivedStorage + 560) = FigCFHTTPCopyClientProcessName(*(DerivedStorage + 544));
  }

  v46 = FigHTTPSchedulerRetain(a6);
  v47 = *(DerivedStorage + 240);
  *(DerivedStorage + 48) = v46;
  if (v47)
  {
    Mutable = 0;
    goto LABEL_44;
  }

  if (*(DerivedStorage + 232))
  {
    v52 = *v14;
    goto LABEL_112;
  }

  if (*(DerivedStorage + 568))
  {
    LOBYTE(valuePtr[0]) = 0;
    Mutable = CFDictionaryCreateMutable(*v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      goto LABEL_141;
    }

    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionaryGetBooleanIfPresent();
    *(DerivedStorage + 633) = LOBYTE(valuePtr[0]) == 0;
    if (*(DerivedStorage + 532))
    {
      CFDictionarySetValue(Mutable, @"FUSS_UseAWDL", *v29);
    }

    if (*(DerivedStorage + 533))
    {
      CFDictionarySetValue(Mutable, @"FUSS_EnableMultiPath", *v29);
    }

    v78 = FigURLStorageSessionCreate(Mutable, (DerivedStorage + 232));
    CFRelease(Mutable);
    if (v78)
    {
LABEL_140:
      Mutable = 0;
      goto LABEL_125;
    }
  }

  else
  {
    v78 = FigURLStorageSessionCreate(0, (DerivedStorage + 232));
    if (v78)
    {
      goto LABEL_140;
    }
  }

  v52 = *v14;
  if (*(DerivedStorage + 568))
  {
    v85 = OUTLINED_FUNCTION_265();
    MutableCopy = CFDictionaryCreateMutableCopy(v85, v86, v87);
    CFRelease(*(DerivedStorage + 568));
  }

  else
  {
    v89 = OUTLINED_FUNCTION_265();
    MutableCopy = CFDictionaryCreateMutable(v89, v90, v91, v92);
  }

  CFDictionarySetValue(MutableCopy, @"FHRP_StorageSession", *(DerivedStorage + 232));
  *(DerivedStorage + 568) = MutableCopy;
  if (!*(DerivedStorage + 232))
  {
    OUTLINED_FUNCTION_49_0();
    goto LABEL_138;
  }

LABEL_112:
  v93 = OUTLINED_FUNCTION_265();
  v97 = CFDictionaryCreateMutable(v93, v94, v95, v96);
  Mutable = v97;
  if (!v97)
  {
LABEL_141:
    OUTLINED_FUNCTION_49_0();
    goto LABEL_142;
  }

  if (*(DerivedStorage + 533))
  {
    v98 = v29;
  }

  else
  {
    v98 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(v97, @"FHRSP_EnableMultiPath", *v98);
  v99 = *(DerivedStorage + 232);
  v100 = *(DerivedStorage + 48);
  v101 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v101)
  {
    v78 = 4294954514;
    goto LABEL_125;
  }

  v50 = v101(v99, v100, Mutable, DerivedStorage + 240);
  if (v50)
  {
    goto LABEL_143;
  }

  v102 = *(DerivedStorage + 240);
  v103 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v103 && !v103(v102, 0x1F0B5F658, v52, &number) && number)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, &v111);
  }

  if (v111)
  {
    v104 = 3;
  }

  else
  {
    if (*(DerivedStorage + 616) < 3)
    {
      goto LABEL_44;
    }

    v104 = 2;
  }

  *(DerivedStorage + 616) = v104;
LABEL_44:
  *(DerivedStorage + 528) = a7;
  *(DerivedStorage + 72) = 0;
  if (a4)
  {
    v49 = CFDictionaryGetValue(a4, @"FileName");
    if (v49)
    {
      *(DerivedStorage + 208) = CFRetain(v49);
    }

    *(DerivedStorage + 272) = CFRetain(a4);
  }

  v50 = FigByteRateHistoryCreate((DerivedStorage + 344));
  if (v50)
  {
    goto LABEL_143;
  }

  v50 = FigByteRateHistoryAllocSampleArray(*(DerivedStorage + 344), 64);
  if (v50)
  {
    goto LABEL_143;
  }

  if (a3)
  {
    v51 = CFRetain(a3);
  }

  else
  {
    v51 = FigCFHTTPCreateUserAgent();
  }

  *(DerivedStorage + 200) = v51;
  *(DerivedStorage + 168) = CFRetain(a2);
  *(DerivedStorage + 192) = FigCFHTTPCreateURLString(a2);
  v53 = a5;
  if (a5)
  {
    v53 = CFRetain(a5);
  }

  *(DerivedStorage + 56) = 0;
  *(DerivedStorage + 224) = v53;
  *(DerivedStorage + 64) = DerivedStorage + 56;
  *(DerivedStorage + 464) = 60000000000;
  if (FigHTTPCreateTimer(*DerivedStorage, fbf_NetworkMonitorTimerProc, *(DerivedStorage + 48), (DerivedStorage + 456), 8073216000.0))
  {
    OUTLINED_FUNCTION_49_0();
LABEL_142:
    v50 = FigSignalErrorAtGM();
LABEL_143:
    v78 = v50;
    goto LABEL_125;
  }

  valuePtr[0] = 0x4014000000000000;
  v54 = CFNumberCreate(*v14, kCFNumberDoubleType, valuePtr);
  v55 = OUTLINED_FUNCTION_249();
  v59 = CFDictionaryCreateMutable(v55, v56, v57, v58);
  v106 = v113;
  v60 = OUTLINED_FUNCTION_249();
  v63 = CFStringCreateWithFormat(v60, v61, v62, v106);
  CFDictionarySetValue(v59, *MEMORY[0x1E69628C8], v63);
  CFDictionarySetValue(v59, *MEMORY[0x1E69601E0], v54);
  *(DerivedStorage + 368) = CMMemoryPoolCreate(v59);
  if (v63)
  {
    CFRelease(v63);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  *(DerivedStorage + 592) = FigNetworkInterfaceReporterCreate();
  FigByteFlumeCreateReportingAgent(DerivedStorage, v107, *(DerivedStorage + 224), *(DerivedStorage + 560), *(DerivedStorage + 552), 0, 0);
  if (*(DerivedStorage + 32) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v64 = OUTLINED_FUNCTION_45_5();
    v65(v64);
  }

  if (*(DerivedStorage + 32))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v66 = OUTLINED_FUNCTION_45_5();
      v67(v66);
    }

    if (*(DerivedStorage + 32) && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      OUTLINED_FUNCTION_408_0();
      v68();
    }
  }

  OUTLINED_FUNCTION_408_0();
  FigNetworkInterfaceReporterSamplePhysicalStatistics(v69, v70, v71, v72, v73);
  if (FigGetCFPreferenceNumberWithDefault() == 1)
  {
    *(DerivedStorage + 184) = 1;
  }

  v74 = nw_activity_create();
  *(DerivedStorage + 600) = v74;
  if (v74)
  {
    if (!*(DerivedStorage + 640) || (nw_activity_set_parent_activity(), *(DerivedStorage + 600)))
    {
      nw_activity_activate();
    }
  }

  if (dword_1EAF16F58)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v76 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_109_0(v76))
    {
      v114 = 136315906;
      v115 = "FigByteFlumeCreateWithHTTP";
      v116 = 2048;
      v117 = DerivedStorage;
      v118 = 2048;
      v119 = v113;
      v120 = 2048;
      v121 = a2;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524();
  }

  v77 = v113;
  if (v113)
  {
    v77 = CFRetain(v113);
  }

  v78 = 0;
  *a9 = v77;
LABEL_125:
  if (v113)
  {
    CFRelease(v113);
  }

  if (number)
  {
    CFRelease(number);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v78;
}

uint64_t fbf_NetworkMonitorTimerProc()
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v1 = DerivedStorage;
    if (*(DerivedStorage + 448))
    {
      fbf_CancelReconnect(DerivedStorage);
      v2 = *(v1 + 480);
      v3 = *(v1 + 320);
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      if (v2 == v3)
      {
        v5 = *(v1 + 472);
        v6 = v5 <= UpTimeNanoseconds;
        v7 = v5 - UpTimeNanoseconds;
        if (!v6)
        {
LABEL_23:
          FigHTTPRescheduleTimer(v7 / 1000000000.0, *(v1 + 48), *(v1 + 456));
          return FigRetainProxyUnlockMutex();
        }

        if (*(v1 + 17) || ((*(v1 + 17) = 1, OUTLINED_FUNCTION_29_9(), !v42) ? (v42 = v41 == 1) : (v42 = 0), !v42 ? (v43 = v41 == 2) : (v43 = 1), !v43 ? (v44 = 0) : (v44 = 1), FigNetworkInterfaceReporterSamplePhysicalStatistics(*(v1 + 592), 0, v39, v40, v44), fbf_ReleaseAndCreateLastError(v1, -12661, @"CoreMediaErrorDomain", @"Host unavailable - inactivity detected"), fbf_ReportingAgentReportErrorEvent(v1, @"CoreMediaErrorDomain", @"Host unavailable - inactivity detected", 2u, -12661), FigByteFlumePostHostUnavailableNotification(v1), FigRetainProxyRetainOwner(), FigCFHTTPStopAllReads(v1, -12935), FigRetainProxyReleaseOwner(), !FigRetainProxyIsInvalidated()))
        {
          if (*(v1 + 18) != 1 && !*(v1 + 392))
          {
            if (*(v1 + 512))
            {
              if (dword_1EAF16F58)
              {
                v8 = OUTLINED_FUNCTION_11_19();
                v16 = OUTLINED_FUNCTION_116_0(v8, v9, v10, v11, v12, v13, v14, v15, v48, v49, v50, v51, SBYTE2(v51), BYTE3(v51), SHIDWORD(v51));
                if (OUTLINED_FUNCTION_109_0(v16))
                {
                  OUTLINED_FUNCTION_2_6();
                  OUTLINED_FUNCTION_6_34();
                  OUTLINED_FUNCTION_108();
                  OUTLINED_FUNCTION_456();
                  OUTLINED_FUNCTION_329_0();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_524();
              }
            }

            else
            {
              if (dword_1EAF16F58)
              {
                v30 = OUTLINED_FUNCTION_11_19();
                v38 = OUTLINED_FUNCTION_116_0(v30, v31, v32, v33, v34, v35, v36, v37, v48, v49, v50, v51, SBYTE2(v51), BYTE3(v51), SHIDWORD(v51));
                if (OUTLINED_FUNCTION_109_0(v38))
                {
                  OUTLINED_FUNCTION_2_6();
                  OUTLINED_FUNCTION_6_34();
                  OUTLINED_FUNCTION_108();
                  OUTLINED_FUNCTION_456();
                  OUTLINED_FUNCTION_329_0();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_524();
              }

              *(v1 + 512) = FigGetUpTimeNanoseconds();
            }

            goto LABEL_44;
          }
        }
      }

      else
      {
        v26 = *(v1 + 464);
        v27 = *(v1 + 320) - UpTimeNanoseconds;
        if (*(v1 + 17) == 1)
        {
          *(v1 + 17) = 0;
          if (FigByteFlumePostHostAvailableNotification(v1))
          {
            fbf_ReportingAgentResetErrorStats(v1);
          }
        }

        *(v1 + 496) = 0;
        fbf_SetInactivityMonitorTimer(v1, v27 + v26);
      }
    }

    else
    {
      if (!*(DerivedStorage + 392))
      {
        if (*(DerivedStorage + 488))
        {
          v28 = FigGetUpTimeNanoseconds();
          v29 = *(v1 + 520);
          v6 = v29 <= v28;
          v7 = v29 - v28;
          if (v6)
          {
            fbf_CancelReconnect(v1);
            ++*(v1 + 496);
            *(v1 + 512) = 0;
            fbf_postConnectionToHostLostNotification(v1);
            return FigRetainProxyUnlockMutex();
          }

          goto LABEL_23;
        }

LABEL_44:
        v45 = OUTLINED_FUNCTION_265();
        fbf_ResumeRetryAttempt(v45, v46);
        return FigRetainProxyUnlockMutex();
      }

      if (dword_1EAF16F58)
      {
        v17 = OUTLINED_FUNCTION_11_19();
        v25 = OUTLINED_FUNCTION_116_0(v17, v18, v19, v20, v21, v22, v23, v24, v48, v49, v50, v51, SBYTE2(v51), BYTE3(v51), SHIDWORD(v51));
        if (OUTLINED_FUNCTION_109_0(v25))
        {
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_6_34();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_456();
          OUTLINED_FUNCTION_329_0();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_524();
      }

      FigHTTPRescheduleTimer(8073216000.0, *(v1 + 48), *(v1 + 456));
      fbf_CancelReconnect(v1);
    }
  }

  return FigRetainProxyUnlockMutex();
}

uint64_t FigCFHTTPResetURLAndRead(uint64_t a1, const void *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, void *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    v21 = 4294954511;
  }

  else
  {
    if (a2)
    {
      v23 = a8;
      v19 = *(v9 + 176);
      *(v9 + 176) = a2;
      CFRetain(a2);
      if (v19)
      {
        CFRelease(v19);
      }

      *(v9 + 378) = 1;
      v20 = FigCFHTTPReadWithAdditionalHeaders(a1, a3, a4, a5, 0, a6, a7, v23, a9);
    }

    else
    {
      v20 = FigSignalErrorAtGM();
    }

    v21 = v20;
  }

  FigRetainProxyUnlockMutex();
  return v21;
}

uint64_t FigByteFlumeSetAdditionalOpenRequestHeaders(uint64_t a1, const void *a2)
{
  FigByteFlumeGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    v6 = 4294954511;
  }

  else
  {
    v5 = *(v2 + 112);
    *(v2 + 112) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = 0;
  }

  FigRetainProxyUnlockMutex();
  return v6;
}

uint64_t fbf_ReleaseAndRetainLastErrorFromCFError(uint64_t result, CFTypeRef cf)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 24) = 0;
    }

    *(v3 + 328) = 0;
    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    *(v3 + 24) = v5;
    result = FigGetUpTimeNanoseconds();
    *(v3 + 328) = result;
  }

  return result;
}

uint64_t fbf_ReportingAgentResetErrorStats(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 32))
    {
      VTable = CMBaseObjectGetVTable();
      v3 = *(VTable + 16);
      result = VTable + 16;
      if (*(v3 + 48))
      {
        v4 = OUTLINED_FUNCTION_235();
        result = v5(v4);
      }

      if (*(v1 + 32))
      {
        v6 = CMBaseObjectGetVTable();
        v7 = *(v6 + 16);
        result = v6 + 16;
        if (*(v7 + 56))
        {
          OUTLINED_FUNCTION_235();
          OUTLINED_FUNCTION_408_0();
          result = v8();
        }

        if (*(v1 + 32))
        {
          v9 = CMBaseObjectGetVTable();
          v10 = *(v9 + 16);
          result = v9 + 16;
          if (*(v10 + 48))
          {
            v11 = OUTLINED_FUNCTION_235();
            result = v12(v11);
          }

          if (*(v1 + 32))
          {
            v13 = CMBaseObjectGetVTable();
            v14 = *(v13 + 16);
            result = v13 + 16;
            if (*(v14 + 56))
            {
              OUTLINED_FUNCTION_408_0();

              return v15();
            }
          }
        }
      }
    }
  }

  return result;
}

void fbf_ReportingAgentReportErrorEvent(uint64_t a1, CFErrorDomain Domain, CFStringRef a3, unsigned int a4, CFIndex Code)
{
  if (a1 && *(a1 + 32))
  {
    v10 = *(a1 + 24);
    cf = 0;
    if (*(a1 + 648))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      if (!FigMetricErrorEventCreate(AllocatorForMedia, a4 == 2, v10, &cf) && *(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v12 = OUTLINED_FUNCTION_249();
        v13(v12);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    v14 = *(a1 + 24);
    if (v14)
    {
      Code = CFErrorGetCode(v14);
      Domain = CFErrorGetDomain(*(a1 + 24));
      v15 = CFErrorCopyDescription(*(a1 + 24));
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a1 + 32);
    if (v15)
    {
      a3 = v15;
    }

    if (v16)
    {
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v17)
      {
        v17(v16, 0x1F0B645B8, 0x1F0B3F878, a3, 0);
      }
    }

    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v19)
      {
        v19(v18, 0x1F0B645B8, 0x1F0B3F858, Code, 0);
      }

      v20 = *(a1 + 32);
      if (v20)
      {
        v21 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v21)
        {
          v21(v20, 0x1F0B645B8, 0x1F0B3F898, Domain, 0);
        }

        v22 = *(a1 + 32);
        if (v22)
        {
          v23 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v23)
          {
            v23(v22, 0x1F0B645B8, 0x1F0B3F8B8, a4, 0);
          }

          v24 = *(a1 + 32);
          if (v24)
          {
            v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v25)
            {
              v25(v24, 0x1F0B645B8, 502, 0, 0);
            }
          }
        }
      }
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }
}

uint64_t fbf_CreateAccessLog(uint64_t a1, const __CFAllocator *a2, __CFDictionary **a3)
{
  valuePtr = 0.0;
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    v51 = 4294954511;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v7 = Mutable;
      CFDictionaryAddValue(Mutable, @"s-playback-type", @"FILE");
      v8 = *(a1 + 560);
      if (v8)
      {
        CFDictionarySetValue(v7, @"c-client-name", v8);
      }

      v9 = *(a1 + 136);
      v10 = MEMORY[0x1E695E480];
      if (v9)
      {
        v11 = FigCFHTTPCreateAddressString(v9);
        if (v11)
        {
          v12 = v11;
          v13 = OUTLINED_FUNCTION_444();
          CFDictionaryAddValue(v13, v14, v15);
          CFRelease(v12);
        }

        v16 = *v10;
        v17 = CFNumberCreate(*v10, kCFNumberCFIndexType, (a1 + 144));
        if (v17)
        {
          v18 = v17;
          OUTLINED_FUNCTION_36_6(v17, @"s-ip-changes");
          CFRelease(v18);
        }
      }

      else
      {
        v16 = *MEMORY[0x1E695E480];
      }

      valuePtr = *(a1 + 312) / 1000000000.0;
      v19 = CFNumberCreate(v16, kCFNumberDoubleType, &valuePtr);
      if (v19)
      {
        v21 = v19;
        OUTLINED_FUNCTION_36_6(v19, @"c-transfer-duration");
        CFRelease(v21);
      }

      v22 = OUTLINED_FUNCTION_39_7(v19, v20, (a1 + 288));
      if (v22)
      {
        v24 = v22;
        OUTLINED_FUNCTION_36_6(v22, @"bytes");
        CFRelease(v24);
      }

      if (*(a1 + 296) >= 1)
      {
        v22 = OUTLINED_FUNCTION_39_7(v22, v23, (a1 + 296));
        if (v22)
        {
          v25 = v22;
          OUTLINED_FUNCTION_36_6(v22, @"bytes-cellular");
          CFRelease(v25);
        }

        if (*(a1 + 304) >= 1)
        {
          v22 = OUTLINED_FUNCTION_39_7(v22, v23, (a1 + 304));
          if (v22)
          {
            v26 = v22;
            OUTLINED_FUNCTION_36_6(v22, @"bytes-cellular-fallback");
            CFRelease(v26);
          }
        }
      }

      v27 = OUTLINED_FUNCTION_39_7(v22, v23, (a1 + 352));
      if (v27)
      {
        v29 = v27;
        OUTLINED_FUNCTION_36_6(v27, @"sc-count");
        CFRelease(v29);
      }

      v30 = OUTLINED_FUNCTION_39_7(v27, v28, (a1 + 360));
      if (v30)
      {
        v31 = v30;
        v32 = OUTLINED_FUNCTION_444();
        CFDictionaryAddValue(v32, v33, v34);
        CFRelease(v31);
      }

      v35 = *(a1 + 176);
      if (!v35)
      {
        v35 = *(a1 + 168);
      }

      v36 = FigCFHTTPCreateURLString(v35);
      if (v36)
      {
        v37 = v36;
        v38 = OUTLINED_FUNCTION_444();
        CFDictionaryAddValue(v38, v39, v40);
        CFRelease(v37);
      }

      v41 = *(a1 + 224);
      if (v41)
      {
        Value = CFDictionaryGetValue(v41, @"X-Playback-Session-Id");
        if (Value)
        {
          CFDictionaryAddValue(v7, @"cs-guid", Value);
        }
      }

      if (*(a1 + 576) > 0.0)
      {
        FigCFDictionarySetDouble();
      }

      if (*(a1 + 584) > 0.0)
      {
        FigCFDictionarySetDouble();
      }

      if (*(a1 + 336) >= 1)
      {
        FigCFDictionarySetInt32();
      }

      v43 = FigNetworkInterfaceReporterCopyPhysicalStatistics(*(a1 + 592));
      if (v43)
      {
        v50 = v43;
        FigAccessLogUpdateWithPhysicalStatistcs(v7, v43, v44, v45, v46, v47, v48, v49);
        CFRelease(v50);
      }

      v51 = 0;
      *a3 = v7;
    }

    else
    {
      v51 = 4294954510;
    }
  }

  FigRetainProxyUnlockMutex();
  return v51;
}

const void *FigCFHTTPMatchesIdentifier(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  FigByteFlumeGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 216);
  v7 = *(DerivedStorage + 192);
  v8 = *(DerivedStorage + 528);
  v9 = *(DerivedStorage + 264);

  return FigCFHTTPMatchCacheHeaders(cf, v6, v7, v8, v9);
}

uint64_t fbf_ReleaseAndCreateLastError(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    v8 = *(result + 24);
    if (v8)
    {
      CFRelease(v8);
      v7[3] = 0;
    }

    v7[41] = 0;
    v7[3] = FigCreateCFError(a3, a2, a4, 0, 0, v7[21], 0);
    result = FigGetUpTimeNanoseconds();
    v7[41] = result;
  }

  return result;
}

void fbf_ConfigurePathEvaluator(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 400))
  {
    OptionsFromHTTPRequestOptions = FigByteFlumeCreateNetworkPathEvaluatorCreateOptionsFromHTTPRequestOptions(*(a1 + 568));
    v5 = *(a1 + 176);
    if (!v5)
    {
      v5 = *(a1 + 168);
    }

    if (!FigNetworkPathEvaluatorCreate(*MEMORY[0x1E695E480], v5, OptionsFromHTTPRequestOptions, *(a1 + 48), a2, fbf_UpdatePathEvaluation, a1 + 400))
    {
      v6 = *(a1 + 408);
      if (v6)
      {
        CFRelease(v6);
        *(a1 + 408) = 0;
      }

      v7 = *(a1 + 400);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v8)
      {
        v9 = v8(v7);
      }

      else
      {
        v9 = 0;
      }

      *(a1 + 408) = v9;
      *(a1 + 416) = 0;
      if (dword_1EAF16F58)
      {
        v10 = OUTLINED_FUNCTION_11_19();
        v18 = OUTLINED_FUNCTION_116_0(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, v22, SBYTE2(v22), BYTE3(v22), SHIDWORD(v22));
        if (OUTLINED_FUNCTION_109_0(v18))
        {
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_456();
          OUTLINED_FUNCTION_329_0();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_524();
      }
    }

    if (OptionsFromHTTPRequestOptions)
    {
      CFRelease(OptionsFromHTTPRequestOptions);
    }
  }
}

void fbf_ReportingAgentSetCDNHeaders(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 32))
      {
        v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v4)
        {
          v4(a2, @"FHRP_HTTPResponseHeaders", *MEMORY[0x1E695E480], &cf);
          if (cf)
          {
            fbf_ReportingAgentSetHTTPHeaderField(a1, cf, @"Via", 0x1F0B66578);
            fbf_ReportingAgentSetHTTPHeaderField(a1, cf, @"CDN-Server", 0x1F0B66878);
            if (cf)
            {
              CFRelease(cf);
            }
          }
        }
      }
    }
  }
}

void fbf_ReleaseAndSetLastErrorFromHTTPRequest(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  if (a1 && a2 && a4)
  {
    *a4 = 0;
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v6 = OUTLINED_FUNCTION_444();
      v7(v6);
    }

    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v8 = OUTLINED_FUNCTION_444();
      v9(v8);
    }

    fbf_ReleaseAndCreateLastError(a1, a3, @"CoreMediaErrorDomain", 0);
  }
}

uint64_t fbf_UpdateAndReportMultiPathActivity(uint64_t result, int a2)
{
  v2 = *(result + 616);
  switch(v2)
  {
    case 5:
      if (!a2)
      {
        return result;
      }

      break;
    case 4:
      if (a2)
      {
        return result;
      }

      break;
    case 3:
      if (a2)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_11;
    default:
      return result;
  }

  v3 = 6;
LABEL_11:
  *(result + 616) = v3;
  v4 = *(result + 32);
  if (v4)
  {
    VTable = CMBaseObjectGetVTable();
    v6 = *(VTable + 16);
    result = VTable + 16;
    v7 = *(v6 + 56);
    if (v7)
    {

      return v7(v4, 0x1F0B645B8, 0x1F0B66678, v3, 0);
    }
  }

  return result;
}

uint64_t fbf_ParseResponseHeadersAndSetLastError(uint64_t a1, uint64_t a2, int a3)
{
  v54 = 0;
  v55 = 0;
  valuePtr = 0;
  v52 = 0;
  v5 = *(a2 + 256);
  if (!v5 || !*(a2 + 176))
  {
    OUTLINED_FUNCTION_303();
    v16 = FigSignalErrorAtGM();
    v17 = @"no response or URL";
    v18 = a2;
    v19 = -12931;
    goto LABEL_29;
  }

  ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(v5);
  if (ResponseStatusCode == 200)
  {
LABEL_6:
    if (a3)
    {
      if (!FigCFHTTPGetContentRangeFromHTTPResponse(*(a2 + 256), &v55, &v54, &valuePtr, &v52) || !v52 || v55 || v54 != 1)
      {
        OUTLINED_FUNCTION_303();
        v16 = FigSignalErrorAtGM();
        v17 = @"HTTP response has bad Content-Range";
LABEL_12:
        v18 = a2;
        v19 = v16;
LABEL_29:
        fbf_ReleaseAndCreateLastError(v18, v19, @"CoreMediaErrorDomain", v17);
        return v16;
      }

      goto LABEL_32;
    }

    v22 = FigCFHTTPIsDataURL(*(a2 + 168));
    if (v22)
    {
      number = 0;
      AllocatorForMedia = FigGetAllocatorForMedia();
      v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v31)
      {
        v32 = v31(a1, @"FHRP_PayloadLength", AllocatorForMedia, &number);
        v33 = number;
        if (!v32)
        {
          CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
          v33 = number;
        }

        if (v33)
        {
          CFRelease(v33);
        }
      }

      v52 = 1;
      goto LABEL_32;
    }

    if (OUTLINED_FUNCTION_35_7(v22, v23, v24, v25, v26, v27, v28, v29, v47, number, v49, v50, v51, v52, valuePtr))
    {
      if (v52)
      {
LABEL_32:
        v34 = valuePtr;
        *(a2 + 216) = valuePtr;
        v35 = *(a2 + 264);
        if (v35)
        {
          *(a2 + 264) = 0;
          CFRelease(v35);
          v34 = *(a2 + 216);
        }

        v36 = *(a2 + 192);
        v37 = *(a2 + 256);
        v38 = (a2 + 264);
        v39 = 0;
LABEL_40:
        v41 = FigCFHTTPCreateCacheHeaders(v36, v34, v37, v39, v38);
        if (v41)
        {
          v16 = v41;
          v17 = @"Unable to create Cache Headers";
          v18 = a2;
          v19 = -12936;
          goto LABEL_29;
        }

        v16 = *(a2 + 32);
        if (!v16)
        {
          return v16;
        }

        v42 = *(a2 + 216);
        v43 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v43)
        {
          v43(v16, 0x1F0B645B8, 0x1F0B3F218, (round(v42 / 1000.0) * 1000.0), 0);
        }

        return 0;
      }
    }

    else
    {
      v45 = FigCFHTTPGetContentLengthFromHTTPResponse(*(a2 + 256), &valuePtr);
      v52 = v45;
      if (v45)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_303();
    v16 = FigSignalErrorAtGM();
    v17 = @"HTTP response has bad Content-Length";
    goto LABEL_12;
  }

  v15 = ResponseStatusCode;
  if (ResponseStatusCode == 304)
  {
    if (OUTLINED_FUNCTION_35_7(304, v8, v9, v10, v11, v12, v13, v14, v47, number, v49, v50, v51, v52, valuePtr) && v52)
    {
      *(a2 + 216) = valuePtr;
    }

    v20 = *(a2 + 272);
    if (v20)
    {
      Value = CFDictionaryGetValue(v20, @"Size");
      if (!Value)
      {
LABEL_20:
        fbf_ReleaseAndCreateLastError(a2, -12936, @"CoreMediaErrorDomain", @"Unable to get Cache Headers");
        return 0;
      }

      CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
      if (v52)
      {
        if (valuePtr != *(a2 + 216))
        {
          goto LABEL_20;
        }
      }

      else
      {
        *(a2 + 216) = valuePtr;
      }

      *(a2 + 280) = 1;
    }

    v40 = *(a2 + 264);
    if (v40)
    {
      *(a2 + 264) = 0;
      CFRelease(v40);
    }

    v36 = *(a2 + 192);
    v34 = *(a2 + 216);
    v37 = *(a2 + 256);
    v39 = *(a2 + 272);
    v38 = (a2 + 264);
    goto LABEL_40;
  }

  if (ResponseStatusCode == 206)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_303();
  v16 = FigSignalErrorAtGM();
  v46 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"HTTP response code: %ld", v15);
  fbf_ReleaseAndCreateLastError(a2, v15, @"CoreMediaErrorDomain", v46);
  if (v46)
  {
    CFRelease(v46);
  }

  return v16;
}

uint64_t fbf_UpdatePathEvaluation(uint64_t result, const void *a2)
{
  if (result)
  {
    FigRetainProxyRetain();
    FigRetainProxyLockMutex();
    if (FigRetainProxyIsInvalidated())
    {
LABEL_80:
      FigRetainProxyUnlockMutex();
      return FigRetainProxyRelease();
    }

    FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = *(DerivedStorage + 388);
    IsCellular = FigNetworkInterfaceIsCellular(v4);
    HIDWORD(v93) = FigNetworkPathInformationGetInterfaceType();
    DoesUseCellular = FigNetworkPathInformationDoesUseCellular();
    if (dword_1EAF16F58)
    {
      HIDWORD(type) = 0;
      BYTE3(type) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!*(DerivedStorage + 448))
    {
      FigHTTPRescheduleTimer(8073216000.0, *(DerivedStorage + 48), *(DerivedStorage + 456));
    }

    fbf_CancelReconnect(DerivedStorage);
    if (*(DerivedStorage + 152))
    {
      v8 = *(DerivedStorage + 160);
      if (v8)
      {
        v9 = *(DerivedStorage + 216) <= v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 1;
    }

    IsHostReachable = FigNetworkPathInformationIsHostReachable(a2, v9);
    v11 = *(DerivedStorage + 392);
    if (!IsHostReachable)
    {
      if (!*(DerivedStorage + 392))
      {
        if (dword_1EAF16F58)
        {
          v34 = OUTLINED_FUNCTION_5_39();
          v42 = OUTLINED_FUNCTION_19_4(v34, v35, v36, v37, v38, v39, v40, v41, v91, v92, v93, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
          if (OUTLINED_FUNCTION_115_1(v42))
          {
            OUTLINED_FUNCTION_2_51();
            OUTLINED_FUNCTION_14_17();
            OUTLINED_FUNCTION_448();
            OUTLINED_FUNCTION_612();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_414();
        }

        *(DerivedStorage + 392) = 1;
        *(DerivedStorage + 424) = FigGetUpTimeNanoseconds();
        if (!*(DerivedStorage + 17))
        {
          FigByteFlumePostHostUnavailableNotification(DerivedStorage);
        }

        goto LABEL_76;
      }

      if (dword_1EAF16F58)
      {
        v15 = OUTLINED_FUNCTION_5_39();
        v23 = OUTLINED_FUNCTION_19_4(v15, v16, v17, v18, v19, v20, v21, v22, v91, v92, v93, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
        if (OUTLINED_FUNCTION_115_1(v23))
        {
          goto LABEL_53;
        }

        goto LABEL_61;
      }

LABEL_76:
      v90 = *(DerivedStorage + 408);
      *(DerivedStorage + 408) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v90)
      {
        CFRelease(v90);
      }

      goto LABEL_80;
    }

    if (*(DerivedStorage + 392))
    {
      v12 = FigGetUpTimeNanoseconds() - *(DerivedStorage + 424);
      if (dword_1EAF16F58)
      {
        v13 = OUTLINED_FUNCTION_5_39();
        if (os_log_type_enabled(v13, BYTE3(type)))
        {
          v14 = HIDWORD(type);
        }

        else
        {
          v14 = HIDWORD(type) & 0xFFFFFFFE;
        }

        if (v14)
        {
          OUTLINED_FUNCTION_4_43();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_14_17();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(DerivedStorage + 392) = 0;
      *(DerivedStorage + 440) += v12;
      *(DerivedStorage + 520) += v12;
      goto LABEL_50;
    }

    if (*(DerivedStorage + 533) && (*(DerivedStorage + 616) - 5) >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (!dword_1EAF16F58)
      {
        goto LABEL_50;
      }

      v43 = OUTLINED_FUNCTION_5_39();
      v51 = OUTLINED_FUNCTION_441_1(v43, v44, v45, v46, v47, v48, v49, v50, v91, v92, v93, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      if (!OUTLINED_FUNCTION_28_1(v51))
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (!*(DerivedStorage + 384) || *(DerivedStorage + 385))
      {
        v24 = *(DerivedStorage + 56);
        if (!v24)
        {
LABEL_32:
          if (*(DerivedStorage + 16) == 1)
          {
            if (!IsCellular || DoesUseCellular)
            {
              if (v4 && v4 != HIDWORD(v93))
              {
                v88 = OUTLINED_FUNCTION_235();
                fbf_checkAndPostHostAvailableOnBetterInterfaceNotificationIfNeeded(v88, v89);
              }
            }

            else
            {
              if (dword_1EAF16F58)
              {
                v25 = OUTLINED_FUNCTION_5_39();
                v33 = OUTLINED_FUNCTION_441_1(v25, v26, v27, v28, v29, v30, v31, v32, v91, v92, v93, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
                if (OUTLINED_FUNCTION_28_1(v33))
                {
                  OUTLINED_FUNCTION_4_43();
                  OUTLINED_FUNCTION_39();
                  OUTLINED_FUNCTION_13_13();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_417();
              }

              fbf_postHostAvailableOnBetterInterfaceNotification(DerivedStorage);
            }
          }

LABEL_50:
          if (*(DerivedStorage + 18) != 1)
          {
            if (*(DerivedStorage + 17) == 1)
            {
              if (!FigNetworkInterfaceIsProxied(SHIDWORD(v93)))
              {
                if (dword_1EAF16F58)
                {
                  v79 = OUTLINED_FUNCTION_5_39();
                  v87 = OUTLINED_FUNCTION_19_4(v79, v80, v81, v82, v83, v84, v85, v86, v91, v92, v93, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
                  if (OUTLINED_FUNCTION_115_1(v87))
                  {
                    OUTLINED_FUNCTION_2_51();
                    OUTLINED_FUNCTION_14_17();
                    OUTLINED_FUNCTION_448();
                    OUTLINED_FUNCTION_612();
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_414();
                }

                fbf_ResumeRetryAttempt(DerivedStorage, 1000000000);
                goto LABEL_76;
              }

              if (dword_1EAF16F58)
              {
                v70 = OUTLINED_FUNCTION_5_39();
                v78 = OUTLINED_FUNCTION_19_4(v70, v71, v72, v73, v74, v75, v76, v77, v91, v92, v93, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
                if (OUTLINED_FUNCTION_115_1(v78))
                {
                  OUTLINED_FUNCTION_2_51();
                  OUTLINED_FUNCTION_14_17();
                  OUTLINED_FUNCTION_448();
                  OUTLINED_FUNCTION_612();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_414();
              }
            }

            else if (!v11)
            {
              goto LABEL_76;
            }

            if (FigByteFlumePostHostAvailableNotification(DerivedStorage))
            {
              fbf_ReportingAgentResetErrorStats(DerivedStorage);
            }

            goto LABEL_76;
          }

          if (dword_1EAF16F58)
          {
            v61 = OUTLINED_FUNCTION_5_39();
            v69 = OUTLINED_FUNCTION_19_4(v61, v62, v63, v64, v65, v66, v67, v68, v91, v92, v93, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
            if (OUTLINED_FUNCTION_115_1(v69))
            {
LABEL_53:
              OUTLINED_FUNCTION_2_51();
              OUTLINED_FUNCTION_14_17();
              OUTLINED_FUNCTION_448();
              OUTLINED_FUNCTION_612();
            }

LABEL_61:
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_414();
            goto LABEL_76;
          }

          goto LABEL_76;
        }

        while (!*(v24 + 24) || *(v24 + 104))
        {
          v24 = *(v24 + 128);
          if (!v24)
          {
            goto LABEL_32;
          }
        }
      }

      if (!dword_1EAF16F58)
      {
        goto LABEL_50;
      }

      v52 = OUTLINED_FUNCTION_5_39();
      v60 = OUTLINED_FUNCTION_441_1(v52, v53, v54, v55, v56, v57, v58, v59, v91, v92, v93, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      if (!OUTLINED_FUNCTION_28_1(v60))
      {
LABEL_49:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417();
        goto LABEL_50;
      }
    }

    OUTLINED_FUNCTION_4_43();
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_13_13();
    goto LABEL_49;
  }

  return result;
}

uint64_t __fbf_checkAndPostHostAvailableOnBetterInterfaceNotificationIfNeeded_block_invoke()
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (FigByteFlumePostHostAvailableOnBetterInterfaceNotification(DerivedStorage))
    {
      fbf_ReportingAgentResetErrorStats(DerivedStorage);
    }
  }

  FigRetainProxyUnlockMutex();

  return FigRetainProxyRelease();
}

void fbf_ReportingAgentSetServerAddress(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 32))
    {
      v2 = *(a1 + 136);
      if (v2)
      {
        v3 = FigCFHTTPCreateAddressString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = *(a1 + 32);
          if (v5)
          {
            v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v6)
            {
              v6(v5, 0x1F0B645B8, 0x1F0B65718, v4, 0);
            }
          }

          CFRelease(v4);
        }
      }
    }
  }
}

void fbf_ReportingAgentSetHTTPHeaderField(uint64_t a1, CFHTTPMessageRef message, CFStringRef headerField, uint64_t a4)
{
  if (message)
  {
    if (headerField)
    {
      v6 = CFHTTPMessageCopyHeaderFieldValue(message, headerField);
      if (v6)
      {
        v7 = v6;
        v8 = *(a1 + 32);
        if (v8)
        {
          v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v9)
          {
            v9(v8, 0x1F0B645B8, a4, v7, 0);
          }
        }

        CFRelease(v7);
      }
    }
  }
}

uint64_t fbf_CreateHTTPRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 128);
  if (*(a1 + 378))
  {
    v7 = *(a2 + 80);
    v8 = *(a1 + 176);
    *(a2 + 80) = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  if (!v6)
  {
    if (*(a1 + 184) && (v13 = *(a1 + 176)) != 0)
    {
      v14 = *(a2 + 80);
      *(a2 + 80) = v13;
      CFRetain(v13);
      if (v14)
      {
        CFRelease(v14);
      }
    }

    else if (!*(a2 + 80))
    {
      v25 = *(a1 + 168);
      *(a2 + 80) = v25;
      if (v25)
      {
        CFRetain(v25);
      }
    }
  }

  FigCFDictionaryGetIntIfPresent();
  OptionsAndSetNWActivity = fbf_CopyHttpRequestCreateOptionsAndSetNWActivity(a1, 0);
  v10 = *(a1 + 240);
  v11 = *(a1 + 128);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 200);
  }

  v16 = *(a2 + 80);
  v15 = *(a2 + 88);
  v17 = *(a2 + 36);
  v18 = *a1;
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v19)
  {
    v20 = *MEMORY[0x1E695E480];
    memset(v28, 0, 112);
    v21 = v19(v10, v20, v11, v16, v12, v15, OptionsAndSetNWActivity, v17, v28, a3, a4, 0, FigCFHTTPReadResponse, v18, a2 + 24, a2 + 32);
    if (!v21)
    {
      FigNetworkUrgencyMonitorAddHTTPRequest(*(a1 + 624));
    }
  }

  else
  {
    v21 = 4294954514;
  }

  v22 = *(a1 + 128);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 128) = 0;
  }

  if (OptionsAndSetNWActivity)
  {
    CFRelease(OptionsAndSetNWActivity);
  }

  if (dword_1EAF16F58)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v21;
}

uint64_t FigReportingAgentStatsAddToCountValue_1(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = VTable + 16;
    v8 = *(v7 + 32);
    if (v8)
    {

      return v8(v5, a2, a3, 1);
    }
  }

  return result;
}

uint64_t FigCFHTTPGoInactiveIfUnreachable(uint64_t result, uint64_t *a2)
{
  *a2 = 0;
  if (!*(result + 392))
  {
    v2 = result;
    if (*(result + 400))
    {
      v3 = *(result + 408);
      if (v3 && (!*(v2 + 152) ? (v6 = 1) : (v5 = *(v2 + 160)) == 0 ? (v6 = 0) : (v6 = *(v2 + 216) <= v5), result = FigNetworkPathInformationIsHostReachable(v3, v6), result))
      {
        if (*(v2 + 496) || !*(v2 + 416))
        {
          result = FigGetUpTimeNanoseconds();
          v7 = *(v2 + 320) + 30000000000;
          v8 = v7 <= result;
          v9 = v7 - result;
          if (v8)
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 1000000000;
        }

        *a2 = v9;
        if (dword_1EAF16F58)
        {
          v10 = OUTLINED_FUNCTION_11_19();
          v18 = OUTLINED_FUNCTION_116_0(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, v22, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
          if (OUTLINED_FUNCTION_109_0(v18))
          {
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_108();
            OUTLINED_FUNCTION_456();
            OUTLINED_FUNCTION_329_0();
          }

          OUTLINED_FUNCTION_7();
          result = OUTLINED_FUNCTION_524();
        }
      }

      else
      {
        if (dword_1EAF16F58)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *(v2 + 392) = 1;
        *(v2 + 424) = FigGetUpTimeNanoseconds();
        FigHTTPRescheduleTimer(8073216000.0, *(v2 + 48), *(v2 + 456));
        fbf_CancelReconnect(v2);
        fbf_ReportingAgentReportErrorEvent(v2, @"CoreMediaErrorDomain", @"Host unavailable", 2u, -12661);
        result = FigByteFlumePostHostUnavailableNotification(v2);
      }

      *(v2 + 416) = 0;
    }
  }

  return result;
}

uint64_t FigCFHTTPReadWithAdditionalHeaders_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCFHTTPReadWithAdditionalHeaders_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCFHTTPReadWithAdditionalHeaders_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbf_TryReconnect_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbf_TryReconnect_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbf_TryReconnect_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbf_TryReconnect_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbf_TryReconnect_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbf_TryReconnect_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbf_TryReconnect_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCFHTTPCopyBandwidthInfo_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCFHTTPCancel_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigCFHTTPCopyIdentifier_cold_1(uint64_t a1, const void *a2, _DWORD *a3)
{
  *a3 = FigSignalErrorAtGM();

  CFRelease(a2);
}

uint64_t FigCFHTTPCopyIdentifier_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCFHTTPCopyIdentifier_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCFHTTPCopyIdentifier_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCFHTTPOpen_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCFHTTPOpen_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerStartupTaskCopyRequiredParameters_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_51();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerStartupTaskCreateWithCallbacks_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerStartupTaskCreateWithCallbacks_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_51();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerStartupTaskCreateWithCallbacks_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerStartupTaskCreateWithCallbacks_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_51();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerStartupTaskCreateWithCallbacks_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_51();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerStartupTaskCreateWithCallbacks_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_51();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCachedFileByteStreamCreateFromByteStream(const void *a1, uint64_t a2, CFAllocatorRef Default, CFTypeRef *a4)
{
  v17 = 0;
  v18 = 0;
  if (!a1 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    CacheAddOpenByteStream = FigSignalErrorAtGM();
    goto LABEL_16;
  }

  CacheAddOpenByteStream = FigReadCacheAddOpenByteStream(1, a1);
  if (CacheAddOpenByteStream)
  {
LABEL_16:
    v9 = CacheAddOpenByteStream;
    CacheNewRequestCompletion = 0;
    goto LABEL_14;
  }

  CacheNewRequestCompletion = FigReadCacheNewRequestCompletion();
  if (CacheNewRequestCompletion)
  {
    FigReadCacheCopyContainerForByteStream(a1, CacheNewRequestCompletion, &v17);
    if (v17)
    {
      number = 0;
      MEMORY[0x19A8D3660](&FigCachedFileByteStreamGetClassID_sRegisterFigCachedFileByteStreamClassOnce, RegisterFigCachedFileByteStreamClass);
      v9 = CMDerivedObjectCreate();
      if (!v9)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (!Default)
        {
          Default = CFAllocatorGetDefault();
        }

        *DerivedStorage = Default;
        *DerivedStorage = CFRetain(Default);
        *(DerivedStorage + 32) = CacheNewRequestCompletion;
        v11 = CFRetain(a1);
        v12 = v17;
        *(DerivedStorage + 16) = 0;
        *(DerivedStorage + 24) = v12;
        *(DerivedStorage + 8) = v11;
        *(DerivedStorage + 112) = FigSimpleMutexCreate();
        *(DerivedStorage + 120) = 0;
        FigByteStreamStatsSetupWorker();
        CMBaseObject = CMByteStreamGetCMBaseObject();
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v14 && !v14(CMBaseObject, *MEMORY[0x1E695FF78], *MEMORY[0x1E695E480], &number))
        {
          CFNumberGetValue(number, kCFNumberSInt64Type, (DerivedStorage + 40));
          CFRelease(number);
        }

        CacheNewRequestCompletion = 0;
        *a4 = v18;
        v18 = 0;
      }
    }

    else
    {
      v9 = 0;
      *a4 = CFRetain(a1);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v9 = FigSignalErrorAtGM();
  }

LABEL_14:
  FigReadCacheDisposeRequestCompletion(CacheNewRequestCompletion);
  return v9;
}

uint64_t FigCachedFileByteStreamCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCachedFileByteStreamCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCachedFileByteStreamSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCachedFileByteStreamRead_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCachedFileByteStreamRead_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCachedFileByteStreamGetAvailableLengthAtOffset_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCachedFileByteStreamReadAndCreateBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCachedFileByteStreamReadAndCreateBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigReadCacheAddOpenByteStream(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v3 = a1;
    if (gFigReadCache && *gFigReadCache || (result = OUTLINED_FUNCTION_2_52(a1), !result))
    {
      v5 = OUTLINED_FUNCTION_1_52();
      v5[4] = v3 & 1 | 6;
      *(v5 + 3) = CFRetain(a2);
      IssueFigReadCacheRequest(v5);
      return 0;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigReadCacheAddOneFileAndCopyContainer(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  if (!gFigReadCache || !*gFigReadCache)
  {
    v8 = OUTLINED_FUNCTION_2_52(a1);
    if (v8)
    {
      return v8;
    }
  }

  v9 = malloc_type_calloc(1uLL, 0x40uLL, 0x1062040E84F1957uLL);
  v10 = v9;
  if (v7)
  {
    v11 = 10;
  }

  else
  {
    v11 = 9;
  }

  v9[4] = v11;
  *(v9 + 3) = CFRetain(a2);
  *(v10 + 4) = 0;
  *(v10 + 40) = 0;
  *(v10 + 6) = a3;
  FigSimpleMutexLock();
  IssueFigReadCacheRequest(v10);
  FigSemaphoreWaitRelative();
  FigSimpleMutexUnlock();
  v12 = *(v10 + 7);
  if (!v12)
  {
    goto LABEL_14;
  }

  if (!*(v12 + 88))
  {
    if (FigCanTriggerTapToRadar())
    {
      RadarDescriptionString = FigTapToRadarCreateRadarDescriptionString();
      FigTriggerTapToRadar();
      if (RadarDescriptionString)
      {
        CFRelease(RadarDescriptionString);
      }
    }

    v15 = malloc_type_calloc(1uLL, 0x40uLL, 0x1062040E84F1957uLL);
    v15[4] = 4;
    *(v15 + 3) = v12;
    IssueFigReadCacheRequest(v15);
LABEL_14:
    v13 = 4294955044;
    goto LABEL_15;
  }

  v13 = 0;
  *a4 = v12;
LABEL_15:
  v16 = *(v10 + 3);
  if (v16)
  {
    CFRelease(v16);
  }

  free(v10);
  return v13;
}

uint64_t HandleAddOneFileAndCopyContainer(uint64_t a1, char a2)
{
  v7 = 0;
  cf = 0;
  memset(v6, 0, sizeof(v6));
  v4 = *(a1 + 24);
  if (!FigFileGetFileInfo())
  {
    if (FindFileInCacheAndCopyContainer(*(a1 + 24), v6, &cf))
    {
      *(a1 + 56) = cf;
      cf = 0;
    }

    else
    {
      CreateAndLoadNewContainerInCacheAndReturnContainer(v4, 0, v6, a2, &cf);
      if (cf)
      {
        *(a1 + 56) = CFRetain(cf);
        cf = 0;
        ++*(gFigReadCache + 160);
      }
    }
  }

  return FigSemaphoreSignal();
}

uint64_t FindFileInCacheAndCopyContainer(CFTypeRef cf2, uint64_t a2, CFTypeRef *a3)
{
  v3 = *(gFigReadCache + 120);
  if (!v3)
  {
    return 0;
  }

  while (!CFEqual(*(v3 + 40), cf2) || !FigFileInfoEqual())
  {
    v3 = *(v3 + 136);
    if (!v3)
    {
      return 0;
    }
  }

  if (AssureContainerFileIsOpen(v3))
  {
    return 0;
  }

  LoadContainerInCache(v3);
  if (a3)
  {
    *a3 = CFRetain(v3);
    ++*(gFigReadCache + 160);
  }

  return 1;
}

uint64_t FigReadCacheContainerShowInterestInCaching_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigReadCacheContainerShowDisinterestInCaching_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AssureContainerFileIsOpen_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL CreateAndLoadNewContainerInCacheAndReturnContainer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM() == 0;
}

BOOL CreateAndLoadNewContainerInCacheAndReturnContainer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM() == 0;
}

uint64_t FigXMLReadMemory(OpaqueCMBlockBuffer *a1, const __CFURL *BytesFromCFString, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  blockBufferOut = 0;
  totalLengthOut = 0;
  if (figXMLEnsureLibraryIsInitialized())
  {
    goto LABEL_19;
  }

  if (BytesFromCFString)
  {
    if (!CFURLGetString(BytesFromCFString) || (FigGetAllocatorForMedia(), OUTLINED_FUNCTION_6_35(), (BytesFromCFString = FigCreateBytesFromCFString()) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM();
LABEL_19:
      Memory = 0;
      goto LABEL_12;
    }
  }

  if (!CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut))
  {
    if (lengthAtOffsetOut >= totalLengthOut || (AllocatorForMedia = FigGetAllocatorForMedia(), v8 = FigGetAllocatorForMedia(), !CMBlockBufferCreateContiguous(AllocatorForMedia, a1, v8, 0, 0, 0, 1u, &blockBufferOut)) && !CMBlockBufferGetDataPointer(blockBufferOut, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut))
    {
      v9 = OUTLINED_FUNCTION_9_21();
      if (v9)
      {
        Memory = s_ps_xmlReadMemory(dataPointerOut, totalLengthOut, BytesFromCFString, v9, a4);
        if (!BytesFromCFString)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM();
    }
  }

  Memory = 0;
  if (BytesFromCFString)
  {
LABEL_11:
    v11 = FigGetAllocatorForMedia();
    CFAllocatorDeallocate(v11, BytesFromCFString);
  }

LABEL_12:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  free(v16);
  return Memory;
}

uint64_t FigXMLFreeDoc(uint64_t a1)
{
  IsInitialized = figXMLEnsureLibraryIsInitialized();
  if (!IsInitialized)
  {
    _MergedGlobals_41(a1);
  }

  return IsInitialized;
}

uint64_t FigXMLReadFromByteStream(uint64_t a1)
{
  blockBufferOut = 0;
  v37 = 0;
  valuePtr = 0;
  number = 0;
  dataLength = 0;
  v29 = 0;
  if (figXMLEnsureLibraryIsInitialized())
  {
    goto LABEL_15;
  }

  if (a1)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v4)
    {
      goto LABEL_15;
    }

    if (v4(CMBaseObject, *MEMORY[0x1E695FF78], AllocatorForMedia, &number))
    {
      goto LABEL_15;
    }

    CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
    v5 = valuePtr;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v6)
    {
      goto LABEL_15;
    }

    if (v6(a1, v5, 0, &v37, &dataLength))
    {
      goto LABEL_15;
    }

    if (OUTLINED_FUNCTION_10_20(v37, v7, v8, v9, v10, v11, v12, v13, v27, 0, 0, 0, 0))
    {
      goto LABEL_15;
    }

    if (lengthAtOffsetOut < v31)
    {
      v14 = FigGetAllocatorForMedia();
      v15 = v37;
      v16 = FigGetAllocatorForMedia();
      if (CMBlockBufferCreateContiguous(v14, v15, v16, 0, 0, dataLength, 1u, &blockBufferOut) || OUTLINED_FUNCTION_10_20(blockBufferOut, v17, v18, v19, v20, v21, v22, v23, v28, v29, lengthAtOffsetOut, v31, dataPointerOut))
      {
        goto LABEL_15;
      }
    }

    v24 = OUTLINED_FUNCTION_9_21();
    if (v24)
    {
      Memory = s_ps_xmlReadMemory(dataPointerOut, v31, 0, v24, 0);
      goto LABEL_16;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
  }

  FigSignalErrorAtGM();
LABEL_15:
  Memory = 0;
LABEL_16:
  if (v37)
  {
    CFRelease(v37);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (number)
  {
    CFRelease(number);
  }

  free(v29);
  return Memory;
}

uint64_t FigXMLReadFileFromURL()
{
  if (figXMLEnsureLibraryIsInitialized())
  {
    return 0;
  }

  FigGetAllocatorForMedia();
  if (CMByteStreamCreateForFileURL())
  {
    return 0;
  }

  else
  {
    return FigXMLReadFromByteStream(0);
  }
}

uint64_t FigXMLWriteFileDirectlyFromBlockBufferAtURL(OpaqueCMBlockBuffer *a1, const __CFURL *a2)
{
  if (figXMLEnsureLibraryIsInitialized())
  {
    return 0xFFFFFFFFLL;
  }

  if (a1)
  {
    if (a2)
    {
      PathComponent = CFURLCopyLastPathComponent(a2);
      if (PathComponent)
      {
        v5 = PathComponent;
        AllocatorForMedia = FigGetAllocatorForMedia();
        v7 = CFURLCreateCopyDeletingLastPathComponent(AllocatorForMedia, a2);
        if (v7)
        {
          v8 = v7;
          v9 = FigXMLReadMemory(a1, a2, @"UTF-8", 0);
          if (!v9)
          {
            goto LABEL_19;
          }

          v10 = v9;
          v11 = ps_writeXMLDocToFileAtomically(v8, v5, v9);
          if (!figXMLEnsureLibraryIsInitialized())
          {
            _MergedGlobals_41(v10);
          }

          if (v11)
          {
LABEL_19:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_20_0();
            v12 = FigSignalErrorAtGM();
          }

          else
          {
            v12 = 0;
          }

          CFRelease(v5);
          v13 = v8;
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_20_0();
          v12 = FigSignalErrorAtGM();
          v13 = v5;
        }

        CFRelease(v13);
        return v12;
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();

  return FigSignalErrorAtGM();
}

uint64_t FigXMLNodeCreateWithDoc(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  if (figXMLEnsureLibraryIsInitialized())
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v5 = *(a2 + 24);
    if (v5)
    {
      while (1)
      {
        v6 = figXMLNode_processNode(v5, &cf);
        if (v6)
        {
          break;
        }

        v5 = v5[6];
        if (!v5)
        {
          v7 = cf;
          goto LABEL_8;
        }
      }

      v8 = v6;
      v7 = cf;
      goto LABEL_11;
    }

    v7 = 0;
LABEL_8:
    v8 = 0;
    if (!a3)
    {
LABEL_11:
      if (v7)
      {
        CFRelease(v7);
      }

      return v8;
    }

    *a3 = v7;
    return v8;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();

  return FigSignalErrorAtGM();
}

uint64_t figXMLNode_processNode(void *a1, CFTypeRef *a2)
{
  v35 = 0;
  theString = 0;
  if (figXMLEnsureLibraryIsInitialized())
  {
    OUTLINED_FUNCTION_5_40();
    v17 = 0;
    v2 = 0xFFFFFFFFLL;
    goto LABEL_54;
  }

  if (a1[2])
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_6_35();
    v11 = CFStringCreateWithCString(v8, v9, v10);
    if (v11)
    {
      v12 = v11;
      AllocatorForMedia = FigGetAllocatorForMedia();
      v14 = FigXMLNodeCreateNode(AllocatorForMedia, v12, &v35);
      if (v14)
      {
        v2 = v14;
        OUTLINED_FUNCTION_5_40();
        v17 = 0;
      }

      else
      {
        v15 = a1[9];
        if (v15 && (v16 = a1[5]) != 0 && *(v16 + 8) == 9)
        {
          v17 = *(v15 + 16);
          if (v17)
          {
            FigGetAllocatorForMedia();
            OUTLINED_FUNCTION_6_35();
            v17 = CFStringCreateWithCString(v18, v19, v20);
            if (!v17)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_6_3();
              FigSignalErrorAtGM();
              goto LABEL_72;
            }

            if (FigXMLNodeAttributeSetCFString(v35, @"xmlns", v17) || FigXMLNodeAttributeSetCFString(v35, @"xmlns:xsi", @"http://www.w3.org/2001/XMLSchema-instance"))
            {
LABEL_72:
              OUTLINED_FUNCTION_417_0();
LABEL_73:
              v5 = 0;
              data = 0;
              goto LABEL_50;
            }
          }
        }

        else
        {
          v17 = 0;
        }

        v21 = a1[11];
        if (v21)
        {
          MutableCopy = &off_1ED4CA000;
          while (1)
          {
            v2 = *(v21 + 16);
            FigGetAllocatorForMedia();
            OUTLINED_FUNCTION_6_35();
            data = CFStringCreateWithCString(v22, v23, v24);
            if (!data)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_6_3();
              FigSignalErrorAtGM();
              OUTLINED_FUNCTION_417_0();
              v5 = 0;
              goto LABEL_50;
            }

            v25 = off_1ED4CA840(a1, v2);
            if (v25)
            {
              v2 = v25;
              FigGetAllocatorForMedia();
              OUTLINED_FUNCTION_6_35();
              v5 = CFStringCreateWithCString(v26, v27, v28);
              off_1ED4CA838(v2);
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_6_3();
              FigSignalErrorAtGM();
              v5 = 0;
            }

            if (FigXMLNodeAttributeSetCFString(v35, data, v5))
            {
              break;
            }

            CFRelease(data);
            if (v5)
            {
              CFRelease(v5);
            }

            v21 = *(v21 + 48);
            if (!v21)
            {
              goto LABEL_25;
            }
          }

          OUTLINED_FUNCTION_417_0();
          goto LABEL_50;
        }

LABEL_25:
        data = a1[3];
        if (data)
        {
          do
          {
            info = data->info;
            if (data->length)
            {
              v30 = 0;
            }

            else
            {
              v30 = info == 3;
            }

            if (v30)
            {
              if (ps_xmlNodeCopyContentAsCFString(data, &theString))
              {
                goto LABEL_72;
              }

              v31 = FigGetAllocatorForMedia();
              MutableCopy = CFStringCreateMutableCopy(v31, 0, theString);
              CFStringTrimWhitespace(MutableCopy);
              if (CFStringCompare(&stru_1F0B1AFB8, MutableCopy, 0))
              {
                v32 = FigXMLNodeContentSetCFString(v35, theString);
                if (v32)
                {
                  v2 = v32;
                  goto LABEL_73;
                }
              }

              if (MutableCopy)
              {
                CFRelease(MutableCopy);
              }

              if (theString)
              {
                CFRelease(theString);
                theString = 0;
              }
            }

            else if (info == 1)
            {
              if (figXMLNode_processNode(data, &cf) || figXMLNodeAddChild(v35, cf))
              {
                goto LABEL_72;
              }

              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }
            }

            data = data[1].data;
          }

          while (data);
          if (a2)
          {
            goto LABEL_48;
          }

          OUTLINED_FUNCTION_5_40();
          v2 = 0;
          goto LABEL_50;
        }

        if (ps_xmlNodeCopyContentAsCFString(a1, &theString))
        {
          goto LABEL_72;
        }

        FigXMLNodeContentSetCFString(v35, theString);
        OUTLINED_FUNCTION_417_0();
        if (!a2 || v2)
        {
          v5 = MutableCopy;
          data = MutableCopy;
        }

        else
        {
LABEL_48:
          OUTLINED_FUNCTION_5_40();
          v2 = 0;
          *a2 = v35;
          v35 = 0;
        }
      }

LABEL_50:
      CFRelease(v12);
      if (v35)
      {
        CFRelease(v35);
      }

      goto LABEL_52;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_6_3();
  v2 = FigSignalErrorAtGM();
  v17 = 0;
  data = 0;
  v5 = 0;
  MutableCopy = 0;
LABEL_52:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_54:
  if (theString)
  {
    CFRelease(theString);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (data)
  {
    CFRelease(data);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v2;
}

uint64_t FigXMLNodeCreateDocFromNode(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  IsInitialized = figXMLEnsureLibraryIsInitialized();
  if (!IsInitialized)
  {
    v6 = off_1ED4CA818("1.0");
    v7 = figXMLNode_convertNodeToLibXMLNode(a2);
    off_1ED4CA820(v6, v7);
    if (a3)
    {
      *a3 = v6;
    }
  }

  return IsInitialized;
}

uint64_t figXMLNode_convertNodeToLibXMLNode(uint64_t a1)
{
  if (figXMLEnsureLibraryIsInitialized())
  {
    v12 = 0;
    Mutable = 0;
    v3 = 0;
    goto LABEL_18;
  }

  v2 = OUTLINED_FUNCTION_9_21();
  v3 = off_1ED4CA848(0, v2);
  if (*(a1 + 24))
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_6_35();
    BytesFromCFString = FigCreateBytesFromCFString();
    if (BytesFromCFString)
    {
      v5 = BytesFromCFString;
      v6 = off_1ED4CA860(*(v3 + 64), BytesFromCFString);
      if (v6)
      {
        v7 = v6;
        off_1ED4CA858(v3, v6);
        off_1ED4CA838(v7);
        v8 = 0;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        v8 = FigSignalErrorAtGM();
      }

      AllocatorForMedia = FigGetAllocatorForMedia();
      CFAllocatorDeallocate(AllocatorForMedia, v5);
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      if (!FigSignalErrorAtGM())
      {
        goto LABEL_7;
      }
    }

    v12 = 0;
    Mutable = 0;
    goto LABEL_18;
  }

LABEL_7:
  v10 = *(a1 + 32);
  if (v10)
  {
    Count = CFDictionaryGetCount(v10);
    v12 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(*(a1 + 32), v12, 0);
    v13 = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      FigSignalErrorAtGM();
      goto LABEL_18;
    }

    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        CFArrayAppendValue(Mutable, v12[i]);
      }

      OUTLINED_FUNCTION_3_42();
      v16 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v16);
        CFDictionaryGetValue(*(a1 + 32), ValueAtIndex);
        v18 = OUTLINED_FUNCTION_9_21();
        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_6_35();
        v19 = FigCreateBytesFromCFString();
        if (v19)
        {
          v20 = v19;
          off_1ED4CA850(v3, v18, v19);
          v21 = FigGetAllocatorForMedia();
          CFAllocatorDeallocate(v21, v20);
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_5();
          if (FigSignalErrorAtGM())
          {
            goto LABEL_18;
          }
        }

        if (Count == ++v16)
        {
          goto LABEL_23;
        }
      }
    }

    OUTLINED_FUNCTION_3_42();
  }

  else
  {
    v12 = 0;
    Mutable = 0;
  }

LABEL_23:
  for (j = 0; ; ++j)
  {
    v24 = *(a1 + 40);
    if (v24)
    {
      v24 = CFArrayGetCount(v24);
    }

    if (j >= v24)
    {
      break;
    }

    v25 = CFArrayGetValueAtIndex(*(a1 + 40), j);
    v26 = figXMLNode_convertNodeToLibXMLNode(v25);
    off_1ED4CA830(v3, v26);
  }

LABEL_18:
  free(v12);
  free(0);
  free(0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

uint64_t FigXMLNodeCreateFromBlockBuffer(uint64_t a1, OpaqueCMBlockBuffer *a2, void *a3)
{
  v4 = FigXMLReadMemory(a2, 0, @"UTF-8", 0);
  if (v4)
  {
    v5 = v4;
    v6 = FigXMLNodeCreateWithDoc(v4, v4, a3);
    if (!figXMLEnsureLibraryIsInitialized())
    {
      _MergedGlobals_41(v5);
    }

    return v6;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigXMLNodeCreateFromURL(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (_os_feature_enabled_impl())
  {

    return FigXMLServiceReadAndCopyParsedXML(a2, a3);
  }

  else
  {
    v6 = FigXMLReadFileFromURL();
    v7 = FigXMLNodeCreateWithDoc(v6, v6, a3);
    if (v6 && !figXMLEnsureLibraryIsInitialized())
    {
      _MergedGlobals_41(v6);
    }

    return v7;
  }
}

uint64_t FigXMLNodeGetAttributeAsInt64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __errstrp = 0;
  if (!a1 || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v6 = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  if (!FigCFDictionaryGetValue())
  {
    goto LABEL_8;
  }

  v4 = OUTLINED_FUNCTION_9_21();
  v5 = strtonum(v4, 0, 0x7FFFFFFFFFFFFFFFLL, &__errstrp);
  if (!__errstrp)
  {
    if (a3)
    {
      v6 = 0;
      *a3 = v5;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = 4294950371;
LABEL_9:
  free(0);
  return v6;
}

uint64_t FigXMLNodeGetAttributeAsDouble(uint64_t a1, uint64_t a2, double *a3)
{
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    DoubleValue = CFStringGetDoubleValue(Value);
    if (a3)
    {
      *a3 = DoubleValue;
    }
  }

  return 0;
}

uint64_t FigXMLNodeRemoveAndClearChild(uint64_t a1, const void **a2)
{
  if (a1 && *a2)
  {
    v4 = *(a1 + 40);
    v7.length = CFArrayGetCount(v4);
    v7.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v7, *a2);
    if ((FirstIndexOfValue & 0x8000000000000000) == 0)
    {
      CFArrayRemoveValueAtIndex(*(a1 + 40), FirstIndexOfValue);
    }

    *a2 = 0;
  }

  return 0;
}

uint64_t FigXMLNodeWriteToFilePath(uint64_t a1, const __CFURL *a2)
{
  v14 = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (FigXMLNodeCreateDocFromNode(AllocatorForMedia, a1, &v14))
  {
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    PathComponent = CFURLCopyLastPathComponent(a2);
    if (PathComponent)
    {
      v6 = PathComponent;
      v7 = FigGetAllocatorForMedia();
      v8 = CFURLCreateCopyDeletingLastPathComponent(v7, a2);
      if (v8)
      {
        v9 = v8;
        v10 = ps_writeXMLDocToFileAtomically(v8, v6, v14);
        CFRelease(v6);
        v11 = v9;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        v10 = FigSignalErrorAtGM();
        v11 = v6;
      }

      CFRelease(v11);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      v10 = FigSignalErrorAtGM();
    }
  }

  v12 = v14;
  if (v14 && !figXMLEnsureLibraryIsInitialized())
  {
    _MergedGlobals_41(v12);
  }

  return v10;
}

__CFString *xmlNode_copyDesc(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFStringCreateMutable(AllocatorForMedia, 0);
  if (Mutable)
  {
    v6 = *(a1 + 16);
    v40 = *(a1 + 24);
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (v7)
    {
      Count = CFArrayGetCount(v7);
    }

    else
    {
      Count = 0;
    }

    if (a2 < 1)
    {
      v12 = 0;
      if (v6)
      {
LABEL_11:
        v14 = OUTLINED_FUNCTION_312();
        CFStringAppendFormat(v14, v15, v16, a1, v6);
      }
    }

    else
    {
      v10 = FigGetAllocatorForMedia();
      v11 = CFStringCreateMutable(v10, 0);
      if (!v11)
      {
        return Mutable;
      }

      v12 = v11;
      v13 = a2;
      do
      {
        CFStringAppend(v12, @"\t");
        --v13;
      }

      while (v13);
      CFStringAppend(Mutable, v12);
      if (v6)
      {
        goto LABEL_11;
      }
    }

    if (v8)
    {
      v17 = FigCFDictionaryCopyArrayOfKeys();
      v18 = 0;
      if (!v17)
      {
        goto LABEL_15;
      }

LABEL_14:
      for (i = CFArrayGetCount(v17); v18 < i; i = 0)
      {
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        Value = FigCFDictionaryGetValue();
        v21 = OUTLINED_FUNCTION_312();
        CFStringAppendFormat(v21, v22, @" %@=%@", ValueAtIndex, Value);
        ++v18;
        if (v17)
        {
          goto LABEL_14;
        }

LABEL_15:
        ;
      }
    }

    else
    {
      v17 = 0;
    }

    CFStringAppend(Mutable, @">");
    if (v40)
    {
      v23 = OUTLINED_FUNCTION_312();
      CFStringAppendFormat(v23, v24, v25, v40);
    }

    if (Count && (CFStringAppend(Mutable, @"\n"), Count >= 1))
    {
      v26 = v6;
      for (j = 0; j != Count; ++j)
      {
        v28 = CFArrayGetValueAtIndex(*(a1 + 40), j);
        v29 = a2;
        v30 = xmlNode_copyDesc(v28, (a2 + 1));
        v31 = OUTLINED_FUNCTION_312();
        CFStringAppendFormat(v31, v32, @"%@", v30);
        if (v30)
        {
          CFRelease(v30);
        }

        a2 = v29;
      }

      v33 = 1;
      v6 = v26;
      if (!v26)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v33 = 0;
      if (!v6)
      {
LABEL_39:
        if (v12)
        {
          CFRelease(v12);
        }

        if (v17)
        {
          CFRelease(v17);
        }

        return Mutable;
      }
    }

    v34 = v33 ^ 1;
    if (!v12)
    {
      v34 = 1;
    }

    if ((v34 & 1) == 0)
    {
      CFStringAppend(Mutable, v12);
    }

    v35 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v35, v36, v37, v6);
    goto LABEL_39;
  }

  return Mutable;
}

uint64_t ps_writeXMLDocToFileAtomically_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t ps_writeXMLDocToFileAtomically_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t ps_writeXMLDocToFileAtomically_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ps_writeXMLDocToFileAtomically_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ps_writeXMLDocToFileAtomically_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ps_writeXMLDocToFileAtomically_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ps_writeXMLDocToFileAtomically_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ps_writeXMLDocToFileAtomically_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ps_writeXMLDocToFileAtomically_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ps_writeXMLDocToFileAtomically_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigXMLNodeWriteXMLFileFromBlockBufferAtURL_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t FigXMLNodeWriteXMLFileFromBlockBufferAtURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeCreateNode_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figXMLNodeCreateNode_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeCreateChildNode_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figXMLNodeAddChild_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figXMLNodeAddChild_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figXMLNodeAddChild_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeContentSetCFString_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeContentSetCFString_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeContentSetInt64_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeContentSetInt64_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeGetContentAsInt64_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeCopyContentAsCFString_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeSetAttributes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeAttributeSetCFString_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeAttributeSetCFString_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeAttributeSetCFString_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeAttributeSetCFString_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeAttributeSetInt64_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeAttributeSetInt64_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeAttributeSetInt64_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeAttributeSetDouble_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeAttributeSetDouble_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXMLNodeAttributeSetDouble_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ps_xmlNodeCopyContentAsCFString_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ps_xmlNodeCopyContentAsCFString_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL ps_xmlNodeCopyContentAsCFString_cold_3(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a2 = FigSignalErrorAtGM();
  return a1 == 0;
}

void cea608dec_rendererCallback(uint64_t a1, const __CFDictionary *a2, CMTime *a3, const void *a4)
{
  if (a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 16))
    {
      v8 = DerivedStorage;
      v9 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v9)
      {
        v10 = v9;
        v11 = *(v8 + 16);
        v12 = *&a3->value;
        epoch = a3->epoch;
        v11(a1, a2, &v12, v9);
        CFRelease(v10);
      }
    }
  }
}

uint64_t FigCEA608PushSample(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v125 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = (DerivedStorage + 32);
  if (*(DerivedStorage + 32))
  {
    destination = **&MEMORY[0x1E6960C88];
    v6 = FigCEA608RenderToTime(a1, &destination, 0);
    if (v6)
    {
      return v6;
    }
  }

  if (!a2)
  {
    return 0;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  v9 = MediaSubType;
  if (MediaSubType == 1635017571 || MediaSubType == 1664495672 || MediaSubType == 1664561208 || MediaSubType == 1882599480)
  {
    v18 = 0;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_58();
    v18 = FigSignalErrorAtGM();
  }

  Decryptor = FigSampleBufferGetDecryptor();
  if (Decryptor)
  {
    v14 = Decryptor;
    if (Decryptor != *(DerivedStorage + 80))
    {
      v15 = CFGetTypeID(Decryptor);
      TypeID = FigCPECryptorGetTypeID();
      v17 = *(DerivedStorage + 80);
      if (v15 == TypeID)
      {
        *(DerivedStorage + 80) = v14;
        CFRetain(v14);
        if (v17)
        {
          CFRelease(v17);
        }
      }

      else if (v17)
      {
        CFRelease(*(DerivedStorage + 80));
        *(DerivedStorage + 80) = 0;
      }
    }
  }

  if (v9 == 1882599480 && !*(DerivedStorage + 80))
  {
    return 4294955138;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a2);
  if (DataBuffer)
  {
    v20 = CFRetain(DataBuffer);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(DerivedStorage + 80);
  v22 = MEMORY[0x1E695E480];
  if (v21)
  {
    DataLength = CMBlockBufferGetDataLength(v20);
    blockBufferOut = 0;
    destination.value = 0;
    IsRangeContiguous = CMBlockBufferIsRangeContiguous(v20, 0, DataLength);
    v25 = v20;
    v118 = DerivedStorage;
    v26 = a2;
    if (IsRangeContiguous)
    {
      if (v25)
      {
        v27 = (DerivedStorage + 32);
        v28 = v25;
        v29 = CFRetain(v25);
      }

      else
      {
        v28 = 0;
        v27 = v5;
        v29 = 0;
      }

      blockBufferOut = v29;
      v30 = v22;
      v31 = *v22;
    }

    else
    {
      v27 = (DerivedStorage + 32);
      v30 = v22;
      v31 = *v22;
      v28 = v25;
      v32 = CMBlockBufferCreateContiguous(v31, v25, v31, 0, 0, 0, 0, &blockBufferOut);
      if (v32)
      {
        v18 = v32;
        v20 = v28;
        if (!v28)
        {
          return v18;
        }

        goto LABEL_189;
      }
    }

    v33 = CMBlockBufferCreateWithMemoryBlock(v31, 0, DataLength, v31, 0, 0, DataLength, 1u, &destination);
    if (v33)
    {
      v18 = v33;
      v38 = 0;
      v22 = v30;
      v5 = v27;
      a2 = v26;
      v20 = v28;
      goto LABEL_43;
    }

    v34 = blockBufferOut;
    value = destination.value;
    v36 = *(CMBaseObjectGetVTable() + 16);
    v22 = v30;
    if (*v36 < 4uLL)
    {
      v18 = 4294954514;
      v5 = v27;
    }

    else
    {
      v37 = v36[4];
      v5 = v27;
      if (v37)
      {
        a2 = v26;
        v18 = v37(v21, v34, value);
        v20 = v28;
        if (!v18)
        {
          v38 = destination.value;
          destination.value = 0;
LABEL_43:
          DerivedStorage = v118;
LABEL_50:
          if (blockBufferOut)
          {
            CFRelease(blockBufferOut);
          }

          if (v18)
          {
            goto LABEL_186;
          }

          if (v20)
          {
            CFRelease(v20);
          }

          v18 = 0;
          v20 = v38;
          goto LABEL_56;
        }

LABEL_47:
        DerivedStorage = v118;
        if (destination.value)
        {
          CFRelease(destination.value);
        }

        v38 = 0;
        goto LABEL_50;
      }

      v18 = 4294954514;
    }

    a2 = v26;
    v20 = v28;
    goto LABEL_47;
  }

LABEL_56:
  if (v20)
  {
    switch(v9)
    {
      case 0x70363038u:
      case 0x63363038u:
        v46 = CMBlockBufferGetDataLength(v20);
        v47 = 0;
        if ((*(DerivedStorage + 120) - 3) >= 2)
        {
          v48 = 1667522932;
        }

        else
        {
          v48 = 1667527730;
        }

        v49 = bswap32(v48);
        *(DerivedStorage + 32) = 0;
        while (1)
        {
          v50 = v47 + 8;
          if (v47 + 8 > v46)
          {
            v18 = 0;
            goto LABEL_175;
          }

          Contiguous = CMBlockBufferCopyDataBytes(v20, v47, 8uLL, &destination);
          if (Contiguous)
          {
            goto LABEL_75;
          }

          v52 = bswap32(destination.value);
          if (v52 <= 7)
          {
            break;
          }

          v47 += v52;
          if (v47 > v46)
          {
            break;
          }

          if (HIDWORD(destination.value) == v49)
          {
            Contiguous = CMBlockBufferCreateContiguous(*v22, v20, *v22, 0, v50, v52 - 8, 0, v5);
            goto LABEL_75;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_58();
        Contiguous = FigSignalErrorAtGM();
        break;
      case 0x63373038u:
        v53 = CMBlockBufferGetDataLength(v20);
        targetBBuf = 0;
        blockBufferOut = 0;
        v120 = 0;
        theBuffer = 0;
        v119 = 0;
        *v5 = 0;
        if (CMBlockBufferIsRangeContiguous(v20, 0, v53))
        {
          blockBufferOut = CFRetain(v20);
LABEL_110:
          OUTLINED_FUNCTION_613();
          DataPointer = CMBlockBufferGetDataPointer(v77, v78, v79, 0, v80);
          if (DataPointer || (blockAllocator = *v22, DataPointer = CMBlockBufferCreateEmpty(*v22, 0, 0, &theBuffer), DataPointer))
          {
            v18 = DataPointer;
            goto LABEL_173;
          }

          if (v53 >= 9)
          {
            v82 = targetBBuf;
            while (1)
            {
              v83 = bswap32(*v82);
              v84 = v53 - v83;
              if (v53 < v83)
              {
                break;
              }

              v85 = v83 - 8;
              v86 = v82[1] == 1885627235 && v85 >= 0xC;
              if (v86)
              {
                v87 = (v82 + 2);
                while (*v87 == 150)
                {
                  if (v87[1] != 105)
                  {
                    break;
                  }

                  v88 = v87[2];
                  v86 = v85 >= v88;
                  v85 -= v88;
                  if (!v86)
                  {
                    break;
                  }

                  v89 = v87[3] >> 4;
                  if (v89 != *(DerivedStorage + 116))
                  {
                    switch(v89)
                    {
                      case 1:
                        p_destination = &destination;
                        v91 = 1001;
                        v92 = 24000;
                        break;
                      case 2:
                        v91 = OUTLINED_FUNCTION_3_43();
                        v92 = 24;
                        break;
                      case 3:
                        v91 = OUTLINED_FUNCTION_3_43();
                        v92 = 25;
                        break;
                      case 4:
                        p_destination = &destination;
                        v91 = 1001;
                        v92 = 30000;
                        break;
                      case 5:
                        v91 = OUTLINED_FUNCTION_3_43();
                        v92 = 30;
                        break;
                      case 6:
                        v91 = OUTLINED_FUNCTION_3_43();
                        v92 = 50;
                        break;
                      case 7:
                        p_destination = &destination;
                        v91 = 1001;
                        v92 = 60000;
                        break;
                      case 8:
                        v91 = OUTLINED_FUNCTION_3_43();
                        v92 = 60;
                        break;
                      default:
                        goto LABEL_156;
                    }

                    CMTimeMake(p_destination, v91, v92);
                    *(DerivedStorage + 92) = destination;
                    *(DerivedStorage + 116) = v89;
                  }

                  v93 = 7;
                  if ((v87[4] & 0x80u) != 0)
                  {
                    v93 = 12;
                  }

                  if ((v87[4] & 0x40) != 0)
                  {
                    v94 = &v87[v93];
                    if (*v94 != 114)
                    {
                      goto LABEL_156;
                    }

                    v95 = 3 * (v94[1] & 0x1F) + 2;
                    if (v95 > v88 || &v94[v95] > targetBBuf + v53)
                    {
                      goto LABEL_156;
                    }

                    v97 = createBBufFromCCData((v94 + 2), v94[1] & 0x1F, *(DerivedStorage + 120), &v120);
                    if (v97)
                    {
                      goto LABEL_157;
                    }

                    if (v120)
                    {
                      appended = CMBlockBufferAppendBufferReference(theBuffer, v120, 0, 0, 0);
                      if (appended)
                      {
                        goto LABEL_196;
                      }

                      if (v120)
                      {
                        CFRelease(v120);
                        v120 = 0;
                      }
                    }
                  }

                  v87 += v88;
                  if (v85 <= 0xB)
                  {
                    v82 = targetBBuf;
                    v84 = v53 - v83;
                    goto LABEL_151;
                  }
                }

                break;
              }

LABEL_151:
              v82 = (v82 + v83);
              targetBBuf = v82;
              v53 = v84;
              if (v84 <= 8)
              {
                goto LABEL_152;
              }
            }

LABEL_156:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_58();
            v97 = FigSignalErrorAtGM();
LABEL_157:
            v18 = v97;
            goto LABEL_171;
          }

LABEL_152:
          if (CMBlockBufferIsEmpty(theBuffer))
          {
            v18 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_613();
            if (CMBlockBufferIsRangeContiguous(v99, v100, v101))
            {
              if (theBuffer)
              {
                v107 = CFRetain(theBuffer);
              }

              else
              {
                v107 = 0;
              }

              goto LABEL_168;
            }

            appended = OUTLINED_FUNCTION_2_53(blockAllocator, theBuffer, v102, v103, v104, v105, v106, &v119);
            if (!appended)
            {
              v107 = v119;
LABEL_168:
              v18 = 0;
              *v5 = v107;
              v119 = 0;
              goto LABEL_169;
            }

LABEL_196:
            v18 = appended;
          }

LABEL_169:
          if (v120)
          {
            CFRelease(v120);
          }

LABEL_171:
          v108 = theBuffer;
          if (theBuffer)
          {
LABEL_172:
            CFRelease(v108);
          }

LABEL_173:
          if (blockBufferOut)
          {
            CFRelease(blockBufferOut);
          }

          goto LABEL_175;
        }

        Contiguous = OUTLINED_FUNCTION_2_53(*v22, v20, v54, v55, v56, v57, v58, &blockBufferOut);
        if (!Contiguous)
        {
          goto LABEL_110;
        }

        break;
      case 0x61746363u:
        blockBufferOut = 0;
        destination.value = 0;
        theBuffer = 0;
        targetBBuf = 0;
        v40 = CMBlockBufferGetDataLength(v20);
        *v5 = 0;
        if (CMBlockBufferIsRangeContiguous(v20, 0, v40))
        {
          blockBufferOut = CFRetain(v20);
        }

        else
        {
          v59 = OUTLINED_FUNCTION_2_53(*v22, v20, v41, v42, v43, v44, v45, &blockBufferOut);
          if (v59)
          {
            goto LABEL_200;
          }
        }

        OUTLINED_FUNCTION_613();
        v59 = CMBlockBufferGetDataPointer(v60, v61, v62, 0, v63);
        if (!v59)
        {
          if (v40 >= 8)
          {
            v64 = 0;
            v65 = destination.value;
            while (1)
            {
              if (*v65 != 71 || v65[1] != 65 || v65[2] != 57 || v65[3] != 52 || v65[4] != 3)
              {
                destination.value = ++v65;
                --v40;
                goto LABEL_94;
              }

              destination.value = (v65 + 5);
              v66 = 3 * (v65[5] & 0x1F) + 2;
              v86 = v40 - 5 >= v66;
              v40 = v40 - 5 - v66;
              if (!v86)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_58();
                v116 = FigSignalErrorAtGM();
LABEL_202:
                v18 = v116;
                goto LABEL_163;
              }

              if ((v65[5] & 0x40) != 0)
              {
                v116 = createBBufFromCCData((v65 + 7), v65[5] & 0x1F, *(DerivedStorage + 120), &targetBBuf);
                if (v116)
                {
                  goto LABEL_202;
                }

                v67 = targetBBuf;
                if (targetBBuf)
                {
                  if (!v64)
                  {
                    targetBBuf = 0;
                    goto LABEL_92;
                  }

                  v116 = CMBlockBufferAppendBufferReference(v64, targetBBuf, 0, 0, 0);
                  if (v116)
                  {
                    goto LABEL_202;
                  }

                  if (targetBBuf)
                  {
                    CFRelease(targetBBuf);
                    targetBBuf = 0;
                  }
                }
              }

              v67 = v64;
LABEL_92:
              v65 = (destination.value + v66);
              destination.value += v66;
              v64 = v67;
LABEL_94:
              if (v40 <= 7)
              {
                if (v64 && !CMBlockBufferIsEmpty(v64))
                {
                  OUTLINED_FUNCTION_613();
                  if (CMBlockBufferIsRangeContiguous(v68, v69, v70))
                  {
                    v76 = CFRetain(v64);
LABEL_162:
                    v18 = 0;
                    *v5 = v76;
                    theBuffer = 0;
                    goto LABEL_163;
                  }

                  v116 = OUTLINED_FUNCTION_2_53(*v22, v64, v71, v72, v73, v74, v75, &theBuffer);
                  if (!v116)
                  {
                    v76 = theBuffer;
                    goto LABEL_162;
                  }

                  goto LABEL_202;
                }

                v18 = 0;
LABEL_163:
                if (targetBBuf)
                {
                  CFRelease(targetBBuf);
                }

                if (v64)
                {
                  v108 = v64;
                  goto LABEL_172;
                }

                goto LABEL_173;
              }
            }
          }

          v18 = 0;
LABEL_104:
          v64 = 0;
          goto LABEL_163;
        }

LABEL_200:
        v18 = v59;
        goto LABEL_104;
      default:
LABEL_175:
        if (!v18)
        {
          if (!*v5)
          {
            v18 = 0;
LABEL_189:
            CFRelease(v20);
            return v18;
          }

          *(DerivedStorage + 40) = 0;
          CMSampleBufferGetOutputPresentationTimeStamp(&destination, a2);
          *(DerivedStorage + 48) = destination;
          SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a2, 0);
          LOBYTE(destination.value) = 0;
          if (SampleAttachmentsArray && (v110 = SampleAttachmentsArray, CFArrayGetCount(SampleAttachmentsArray) >= 1))
          {
            CFArrayGetValueAtIndex(v110, 0);
            FigCFDictionaryGetBooleanIfPresent();
            v111 = destination.value;
          }

          else
          {
            v111 = 0;
          }

          *(DerivedStorage + 72) = v111;
          v112 = CMSampleBufferGetSampleAttachmentsArray(a2, 0);
          LOBYTE(destination.value) = 0;
          if (v112 && (v113 = v112, CFArrayGetCount(v112) >= 1))
          {
            CFArrayGetValueAtIndex(v113, 0);
            FigCFDictionaryGetBooleanIfPresent();
            v114 = destination.value;
          }

          else
          {
            v114 = 0;
          }

          v18 = 0;
          *(DerivedStorage + 73) = v114;
        }

LABEL_186:
        if (!v20)
        {
          return v18;
        }

        goto LABEL_189;
    }

LABEL_75:
    v18 = Contiguous;
    goto LABEL_175;
  }

  return v18;
}

uint64_t createBBufFromCCData(uint64_t a1, uint64_t a2, int a3, CMBlockBufferRef *a4)
{
  v6 = a2;
  v8 = *MEMORY[0x1E695E488];
  v9 = 2 * a2;
  v10 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E488], 2 * a2, 0x100004077774924, 0);
  if (!v10)
  {
    return 12;
  }

  v11 = v10;
  if (v6 < 1)
  {
    goto LABEL_14;
  }

  v12 = 0;
  v13 = (a1 + 2);
  do
  {
    v14 = *(v13 - 2);
    if (v14 >= 0xFC)
    {
      v15 = v14 & 3;
      v16 = v15 > 1;
      v17 = ((a3 - 3) < 2) ^ (v15 != 1);
      if (!v16 && v17 != 0)
      {
        v19 = &v10[v12];
        *v19 = *(v13 - 1);
        v19[1] = *v13;
        v12 += 2;
      }
    }

    v13 += 3;
    --v6;
  }

  while (v6);
  if (v12 < 1)
  {
LABEL_14:
    v20 = 0;
  }

  else
  {
    v20 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], v10, v9, v8, 0, 0, v12, 0, a4);
    if (!v20)
    {
      return v20;
    }
  }

  CFAllocatorDeallocate(v8, v11);
  return v20;
}

uint64_t FigCEA608CaptionDecoderCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608CaptionDecoderCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608CaptionDecoderCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608CaptionDecoderCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608CaptionDecoderCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608CaptionDecoderCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608CaptionDecoderCreate_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DecoderCopyProperty(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DecoderSetProperty(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t currentTimeFromBytePositionFrameRateAndStartTime()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigDiskCacheRepositoryCopyDefaultTmpDirURL(CFTypeRef *a1)
{
  if (a1)
  {
    *a1 = 0;
    v2 = FigCFURLCreateFromSystemTemporaryDirectory();
    if (v2)
    {
      v3 = v2;
      *a1 = CFRetain(v2);
      CFRelease(v3);
      return 0;
    }

    else
    {
      return 4294954669;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t fdcr_UpdateCacheSize()
{
  v1 = -1;
  result = FigCFURLGetFileStats();
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t FigDiskCacheRepositoryCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDiskCacheRepositoryCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDiskCacheRepositoryCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDiskCacheRepositoryCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDiskCacheRepositoryCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDiskCacheRepositoryCreate_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fdcr_WriteRepositoryPlist_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDiskCacheRepositoryExists_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t fdcr_CheckInResource_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fdcr_CopySortedCacheFileListCheckedIn_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fdcr_CopySortedCacheFileListCheckedIn_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDiskCacheRepositoryCopyCheckedInIDs_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL FigDiskCacheRepositoryCopyProperty_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v4 = FigSignalErrorAtGM();
  *a3 = v4;
  FigFileForkClose();
  return v4 == 0;
}

uint64_t FigDiskCacheRepositoryMakeRoom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fdcr_GetDirectoryStats_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fdcr_CleanCacheFileList_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fdcr_RemoveFilePathInListFromArray_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t fdcr_RemoveFilePathInListFromArray_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t fdcr_RemoveFilePathInListFromArray_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t fdcr_IsResourceInUse_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXPCCPEProtectorServerAssociateCopiedNeighborCPEProtector(_xpc_connection_s *a1)
{
  v1 = OUTLINED_FUNCTION_4_44(a1);
  v2 = CreateServedCPEProtectorState(v1, &v6);
  v3 = v6;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_0_59();
    OUTLINED_FUNCTION_1_54();
    v4 = FigXPCServerAssociateCopiedObjectWithNeighborProcess();
    if (!v4)
    {
      v3 = 0;
    }
  }

  DisposeServedCPEProtectorState(v3);
  return v4;
}

uint64_t HandleCPEProtectorMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  cf[0] = 0;
  v4 = FigXPCServerLookupAndRetainAssociatedObject();
  if (!v4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v4 = FigSignalErrorAtGM();
  }

  v6 = v4;
  if (!v4)
  {
    return 4294951138;
  }

  return v6;
}

uint64_t CreateServedCPEProtectorState_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreateServedCPEProtectorState_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverForBufferDeliveryCommonCreateFigImageQueue(const void *a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v15 = 0;
  if (!a1 || !a3)
  {
    CAXPCImageQueue = FigSignalErrorAtGM();
    goto LABEL_20;
  }

  CAXPCImageQueue = FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue(a1, a2, &cf);
  if (CAXPCImageQueue)
  {
LABEL_20:
    v12 = CAXPCImageQueue;
    Mutable = 0;
    goto LABEL_12;
  }

  v6 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v9 = FigSignalErrorAtGM();
LABEL_22:
    v12 = v9;
    goto LABEL_12;
  }

  FigCFDictionarySetValue();
  if (FigCFDictionaryGetStringIfPresent())
  {
    FigCFDictionarySetValue();
  }

  v8 = CFGetAllocator(a1);
  v9 = FigImageQueueCreateForCoreAnimationWithOptions(v8, cf, Mutable, &v15);
  if (v9)
  {
    goto LABEL_22;
  }

  FigBaseObject = FigImageQueueGetFigBaseObject(v15);
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v11)
  {
    v12 = v11(FigBaseObject, @"EnableImageQueueTiming", *MEMORY[0x1E695E4D0]);
    if (!v12)
    {
      *a3 = v15;
      v15 = 0;
    }
  }

  else
  {
    v12 = 4294954514;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v12;
}

uint64_t videoReceiver_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFMutableDictionaryRef *a4)
{
  v5 = a3;
  v37 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 5)
  {
    v27 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_37();
    if (&_MergedGlobals_89)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v28 = 136315906;
      OUTLINED_FUNCTION_545();
      v29 = a1;
      v30 = 2082;
      v31 = v10;
      v32 = 2112;
      v33 = a2;
      OUTLINED_FUNCTION_145();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449();
    v5 = a3;
  }

  if (!a2 || !a4)
  {
    goto LABEL_40;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"XPCEndpointID"))
  {
    if (CFEqual(a2, @"ConnectionHelper"))
    {
      v14 = *(DerivedStorage + 8);
      if (!v14)
      {
LABEL_17:
        v13 = 0;
        *a4 = v14;
        return v13;
      }

LABEL_16:
      v14 = CFRetain(v14);
      goto LABEL_17;
    }

    if (CFEqual(a2, @"RefreshRate"))
    {
      Mutable = CFDictionaryCreateMutable(v5, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v34 = *(DerivedStorage + 156);
      v35 = *(DerivedStorage + 172);
      FigCFDictionarySetCMTime();
      v34 = *(DerivedStorage + 180);
      v35 = *(DerivedStorage + 196);
      FigCFDictionarySetCMTime();
      v34 = *(DerivedStorage + 204);
      v35 = *(DerivedStorage + 220);
      FigCFDictionarySetCMTime();
LABEL_20:
      v13 = 0;
      *a4 = Mutable;
      return v13;
    }

    if (CFEqual(a2, @"DesiredPixelCount"))
    {
      v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (DerivedStorage + 152));
      goto LABEL_17;
    }

    if (CFEqual(a2, @"LoggingIdentifier"))
    {
      v14 = CFStringCreateWithCString(v5, (DerivedStorage + 228), 0x600u);
      if (!v14)
      {
        return 4294951726;
      }

      goto LABEL_17;
    }

    if (CFEqual(a2, @"PlaybackStartupPreventionAssertionInfo"))
    {
      v17 = CFDictionaryCreateMutable(v5, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v17)
      {
        Mutable = v17;
        FigCFDictionarySetBoolean();
        if (*(DerivedStorage + 456))
        {
          v18 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v18)
          {
            v19 = v18;
            FigCFDictionarySetBoolean();
            FigCFDictionarySetValue();
            CFRelease(v19);
          }
        }

        goto LABEL_20;
      }

LABEL_40:
      OUTLINED_FUNCTION_43_8();
      return FigSignalErrorAtGM();
    }

    if (CFEqual(a2, @"ImageQueueReceivers"))
    {
      *&v34 = 0;
      *(&v34 + 1) = &v34;
      v35 = 0x2000000000;
      v36 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
      if (*(*(&v34 + 1) + 24))
      {
        v20 = *(DerivedStorage + 144);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 0x40000000;
        v25[2] = __videoReceiver_CopyProperty_block_invoke;
        v25[3] = &unk_1E7483578;
        v25[4] = &v34;
        v25[5] = DerivedStorage;
        v21 = v25;
LABEL_38:
        dispatch_sync(v20, v21);
        v13 = 0;
        *a4 = *(*(&v34 + 1) + 24);
LABEL_39:
        _Block_object_dispose(&v34, 8);
        return v13;
      }
    }

    else
    {
      if (!CFEqual(a2, @"DataQueues"))
      {
        if (CFEqual(a2, @"ClientPreferredDataChannelGroups"))
        {
          FigSimpleMutexLock();
          v22 = *(DerivedStorage + 288);
          if (v22)
          {
            v22 = CFRetain(v22);
          }

          *a4 = v22;
        }

        else
        {
          if (!CFEqual(a2, @"ClientDataChannelSettings"))
          {
            if (!CFEqual(a2, @"RequiresCPUToReadVideo"))
            {
              return 4294954509;
            }

            v14 = *MEMORY[0x1E695E4D0];
            goto LABEL_16;
          }

          FigSimpleMutexLock();
          v23 = *(DerivedStorage + 312);
          if (v23)
          {
            v23 = CFRetain(v23);
          }

          *a4 = v23;
        }

        FigSimpleMutexUnlock();
        return 0;
      }

      *&v34 = 0;
      *(&v34 + 1) = &v34;
      v35 = 0x2000000000;
      v36 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
      if (*(*(&v34 + 1) + 24))
      {
        v20 = *(DerivedStorage + 144);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __videoReceiver_CopyProperty_block_invoke_2;
        block[3] = &unk_1E74835A0;
        block[4] = &v34;
        block[5] = DerivedStorage;
        v21 = block;
        goto LABEL_38;
      }
    }

    v13 = 4294951726;
    goto LABEL_39;
  }

  *&v34 = 0;
  v12 = FigVideoReceiverCommonCreateEndpointID(a1, &v34);
  if (v12)
  {
    return v12;
  }

  if (!v34)
  {
    return 4294951720;
  }

  v13 = 0;
  *a4 = v34;
  return v13;
}

uint64_t videoReceiver_copyImageForTime(const void *a1, __int128 *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2000000000;
  v54 = 0;
  v49 = 0;
  theArray = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2000000000;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3000000000;
  v44 = *MEMORY[0x1E6960C70];
  v45 = *(MEMORY[0x1E6960C70] + 16);
  v40 = 0;
  if (!a1 || (v9 = CFGetTypeID(a1), v9 != FigVideoReceiverGetTypeID()) || (*(a2 + 12) & 1) == 0 || !a4)
  {
    *(v52 + 6) = FigSignalErrorAtGM();
    goto LABEL_35;
  }

  FigCFDictionaryGetBooleanIfPresent();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBE90 >= 3)
  {
    v39 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v11 = OUTLINED_FUNCTION_76_5();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_37();
    if (&_MergedGlobals_89)
    {
      v12 = CMBaseObjectGetDerivedStorage() + 228;
      time = *a2;
      Seconds = CMTimeGetSeconds(&time);
      CMTimebaseGetTime(&time, *(DerivedStorage + 56));
      v14 = CMTimeGetSeconds(&time);
      v55 = 136316418;
      v56 = "videoReceiver_copyImageForTime";
      v57 = 2048;
      v58 = a1;
      v59 = 2082;
      v60 = v12;
      v61 = 2048;
      v62 = Seconds;
      v63 = 2048;
      v64 = v14;
      v65 = 2082;
      v66 = "";
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_200();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449();
  }

  v15 = *(DerivedStorage + 144);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __videoReceiver_copyImageForTime_block_invoke;
  block[3] = &__block_descriptor_tmp_42;
  v36 = *a2;
  v37 = *(a2 + 2);
  block[4] = DerivedStorage;
  block[5] = a1;
  dispatch_sync(v15, block);
  v16 = videoReceiver_copyOutputQueuesIfReady(a1, &v40 + 1, 0, &theArray, 0, 0, 0, 0);
  v17 = v52;
  *(v52 + 6) = v16;
  if (!v16)
  {
    if (*(DerivedStorage + 80))
    {
      if (!HIBYTE(v40))
      {
LABEL_33:
        v25 = -15575;
        goto LABEL_34;
      }

      if (theArray)
      {
        if (CFArrayGetCount(theArray))
        {
          if (HIBYTE(v40))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
            v19 = *(DerivedStorage + 144);
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 0x40000000;
            v31[2] = __videoReceiver_copyImageForTime_block_invoke_2;
            v31[3] = &unk_1E7483668;
            v32 = *a2;
            v33 = *(a2 + 2);
            v34 = v40;
            v31[8] = ValueAtIndex;
            v31[9] = DerivedStorage;
            v31[4] = &v51;
            v31[5] = &v46;
            v31[6] = &v41;
            v31[7] = a1;
            dispatch_sync(v19, v31);
            if (!*(v52 + 6))
            {
              if (dword_1ED4CBE90 >= 3)
              {
                v39 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v20 = OUTLINED_FUNCTION_76_5();
                v21 = v39;
                if (os_log_type_enabled(v20, type))
                {
                  v22 = v21;
                }

                else
                {
                  v22 = v21 & 0xFFFFFFFE;
                }

                if (v22)
                {
                  v23 = CMBaseObjectGetDerivedStorage() + 228;
                  time = v42[1];
                  v24 = CMTimeGetSeconds(&time);
                  v55 = 136316162;
                  v56 = "videoReceiver_copyImageForTime";
                  v57 = 2048;
                  v58 = a1;
                  v59 = 2082;
                  v60 = v23;
                  v61 = 2048;
                  v62 = v24;
                  v63 = 2048;
                  v64 = *&ValueAtIndex;
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              if (a5)
              {
                epoch = v42[1].epoch;
                *a5 = *&v42[1].value;
                *(a5 + 16) = epoch;
              }

              v27 = v47;
              *a4 = v47[3];
              v27[3] = 0;
            }

            goto LABEL_35;
          }

          v17 = v52;
          goto LABEL_33;
        }

        v17 = v52;
      }

      v25 = -15930;
    }

    else
    {
      v25 = -15579;
    }

LABEL_34:
    *(v17 + 6) = v25;
  }

LABEL_35:
  if (theArray)
  {
    CFRelease(theArray);
  }

  v28 = v47[3];
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(v52 + 6);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v51, 8);
  return v29;
}

uint64_t videoReceiver_specifyPreferredDataChannelGroupsWithID(CFTypeRef cf, const __CFArray *a2, int a3)
{
  value[16] = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_233();
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      if (cf)
      {
        v10 = (CMBaseObjectGetDerivedStorage() + 228);
      }

      else
      {
        v10 = "";
      }

      *cfa = 136316162;
      *&cfa[4] = "videoReceiver_specifyPreferredDataChannelGroupsWithID";
      v35 = 2048;
      v36 = cf;
      v37 = 2082;
      v38 = v10;
      v39 = 1024;
      v40 = a3;
      v41 = 2114;
      v42 = a2;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_467();
  }

  if (!cf)
  {
    return FigSignalErrorAtGM();
  }

  v12 = CFGetTypeID(cf);
  if (v12 != FigVideoReceiverGetTypeID())
  {
    return FigSignalErrorAtGM();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (v14 = *MEMORY[0x1E695E480], v15 = CFArrayGetCount(a2), (Mutable = CFArrayCreateMutable(v14, v15, MEMORY[0x1E695E9C0])) != 0))
  {
    v17 = Mutable;
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v19 = Count;
      v33 = a3;
      v20 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v20);
        value[0] = 0;
        *cfa = 0;
        if (ValueAtIndex)
        {
          v22 = ValueAtIndex;
          ModifiedDataChannelTagCollectionWithDefaultTags = FigDataChannelGroupCreate(v14, value);
          if (!ModifiedDataChannelTagCollectionWithDefaultTags)
          {
            if (FigDataChannelGroupGetCountOfDataChannels(v22) < 1)
            {
LABEL_28:
              v11 = 0;
              v26 = value[0];
              value[0] = 0;
              goto LABEL_29;
            }

            v24 = 0;
            while (1)
            {
              DataChannelByIndex = FigDataChannelGroupGetDataChannelByIndex(v22, v24);
              ModifiedDataChannelTagCollectionWithDefaultTags = vr_createModifiedDataChannelTagCollectionWithDefaultTags(DataChannelByIndex, cfa);
              if (ModifiedDataChannelTagCollectionWithDefaultTags)
              {
                break;
              }

              ModifiedDataChannelTagCollectionWithDefaultTags = FigDataChannelGroupAddDataChannel(value[0], *cfa);
              if (ModifiedDataChannelTagCollectionWithDefaultTags)
              {
                break;
              }

              if (*cfa)
              {
                CFRelease(*cfa);
                *cfa = 0;
              }

              if (++v24 >= FigDataChannelGroupGetCountOfDataChannels(v22))
              {
                goto LABEL_28;
              }
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_120();
          ModifiedDataChannelTagCollectionWithDefaultTags = FigSignalErrorAtGM();
        }

        v11 = ModifiedDataChannelTagCollectionWithDefaultTags;
        if (value[0])
        {
          CFRelease(value[0]);
        }

        v26 = 0;
LABEL_29:
        if (*cfa)
        {
          CFRelease(*cfa);
        }

        if (v11)
        {
          CFRelease(v17);
          if (v26)
          {
            v31 = v26;
LABEL_54:
            CFRelease(v31);
          }

          return v11;
        }

        CFArrayAppendValue(v17, v26);
        if (v26)
        {
          CFRelease(v26);
        }

        if (++v20 == v19)
        {
          a3 = v33;
          break;
        }
      }
    }
  }

  else
  {
    v11 = FigSignalErrorAtGM();
    if (v11)
    {
      return v11;
    }

    v17 = 0;
  }

  FigSimpleMutexLock();
  v27 = *(DerivedStorage + 288);
  *(DerivedStorage + 288) = v17;
  if (v17)
  {
    CFRetain(v17);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  *(DerivedStorage + 296) = a3;
  FigSimpleMutexUnlock();
  v28 = *MEMORY[0x1E695E480];
  v29 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!a2)
  {
LABEL_48:
    if (a3)
    {
      FigCFDictionarySetInt32();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    v11 = 0;
    if (v17)
    {
      goto LABEL_51;
    }

    goto LABEL_52;
  }

  value[0] = 0;
  v30 = FigDataChannelGroupsArrayCopyAsDictionary(a2, v28, value);
  if (!v30)
  {
    CFDictionarySetValue(v29, @"PreferredDataChannelGroups", value[0]);
    if (value[0])
    {
      CFRelease(value[0]);
    }

    goto LABEL_48;
  }

  v11 = v30;
  if (v17)
  {
LABEL_51:
    CFRelease(v17);
  }

LABEL_52:
  if (v29)
  {
    v31 = v29;
    goto LABEL_54;
  }

  return v11;
}

void videoReceiver_announceRemovalOfConfiguration(const void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v3, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v5 = Mutable;
      if (FigDataChannelConfigurationGetActivationID(a2))
      {
        FigCFDictionarySetInt32();
        videoReceiver_dispatchAsyncPostNotification();
      }

      else
      {
        FigSignalErrorAtGM();
      }

      CFRelease(v5);
    }

    else
    {

      FigSignalErrorAtGM();
    }
  }
}

void __videoReceiver_copyOutputQueuesIfReady_block_invoke(void *a1)
{
  v1 = a1;
  v297 = *MEMORY[0x1E69E9840];
  HIWORD(v275) = 0;
  v2 = a1[12];
  v3 = *(v2 + 72);
  if (v3)
  {
    *(*(v1[4] + 8) + 24) = CFRetain(v3);
    OUTLINED_FUNCTION_36_7();
    if (v7)
    {
      v8 = (*(v1[10] + 8) + 24);
    }

    else
    {
      v8 = 0;
    }

    v10 = OUTLINED_FUNCTION_41_7(v4, v5, v8, v6, v140, v143, v146, v149, v153, v157, v161, v165, v169, v173, v176, v180, key, v188, v191, v194, v197, v200, v203, v207, v211, v215, theArray, value, cf, v231, v235, v239, v242, v246, v250, v254, v257, v260, v263, v267, allocator, v275, SWORD2(v275), 0, 0);
    OUTLINED_FUNCTION_30_8(v10, v1[5]);
    if (*(*(v1[5] + 8) + 24))
    {
      return;
    }

    v11 = v1[12];
    v9 = *(v11 + 80);
    if (!v9 || HIBYTE(v275) || BYTE6(v275))
    {
      if (dword_1ED4CBE90 >= 2)
      {
        LODWORD(v278.value) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v11 = v1[12];
      }

      v26 = v1[13];
      v27 = *(v11 + 72);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v282 = 0;
      theString = 0;
      v280 = 0;
      v281 = 0;
      v279 = 0;
      memset(&v278, 0, sizeof(v278));
      v36 = *(DerivedStorage + 80);
      if (v36)
      {
        LODWORD(v36) = FigDataChannelConfigurationCopyLoggingIdentifier(v36, &theString);
      }

      if (v27)
      {
        LODWORD(v36) = FigDataChannelConfigurationCopyLoggingIdentifier(v27, &v282);
      }

      v37 = MEMORY[0x1E695FF58];
      if (*MEMORY[0x1E695FF58] == 1)
      {
        v38 = theString;
        *__src = 0;
        if (theString)
        {
          if (CFStringGetLength(theString) <= 8)
          {
            v39.length = CFStringGetLength(v38);
          }

          else
          {
            v39.length = 8;
          }

          LODWORD(v36) = OUTLINED_FUNCTION_5_41(v38, v39, v40, v41, v42, __src, v43, 0);
        }

        v44 = OUTLINED_FUNCTION_59_3(v36, v28, v29, v30, v31, v32, v33, v34, v140, v143, v146, v149, v153, v157, v161, v165, v169, v173, v176, v180, key, v188, v191, v194, v197, v200, v203, v207, v211, v215, theArray, value, cf, v231, v235, v239, v242, v246, v250, v254, v257, v260, v263, v267, allocator, v275, v278.value, *&v278.timescale, v278.epoch, v279, v280, v281, v282, theString, tagCollection, v285, v286, v287, *v288, *type, __src[0]);
        v52 = v282;
        *__src = 0;
        if (v282)
        {
          if (CFStringGetLength(v282) <= 8)
          {
            v53.length = CFStringGetLength(v52);
          }

          else
          {
            v53.length = 8;
          }

          v44 = OUTLINED_FUNCTION_5_41(v52, v53, v54, v55, v56, __src, v57, 0);
        }

        OUTLINED_FUNCTION_59_3(v44, v45, v46, v47, v48, v49, v50, v51, v141, v144, v147, v150, v154, v158, v162, v166, v170, v174, v177, v181, keya, v189, v192, v195, v198, v201, v204, v208, v212, v216, theArraya, valuea, cfa, v232, v236, v240, v243, v247, v251, v255, v258, v261, v264, v268, allocatora, v276, v278.value, *&v278.timescale, v278.epoch, v279, v280, v281, v282, theString, tagCollection, v285, v286, v287, *v288, *type, __src[0]);
        v58 = kdebug_trace();
        if (*v37 == 1)
        {
          v66 = v282;
          *__src = 0;
          if (v282)
          {
            if (CFStringGetLength(v282) <= 8)
            {
              v67.length = CFStringGetLength(v66);
            }

            else
            {
              v67.length = 8;
            }

            v58 = OUTLINED_FUNCTION_5_41(v66, v67, v68, v69, v70, __src, v71, 0);
          }

          OUTLINED_FUNCTION_59_3(v58, v59, v60, v61, v62, v63, v64, v65, v142, v145, v148, v151, v155, v159, v163, v167, v171, v175, v178, v182, keyb, v190, v193, v196, v199, v202, v205, v209, v213, v217, theArrayb, valueb, cfb, v233, v237, v241, v244, v248, v252, v256, v259, v262, v265, v269, allocatorb, v275, v278.value, *&v278.timescale, v278.epoch, v279, v280, v281, v282, theString, tagCollection, v285, v286, v287, *v288, *type, __src[0]);
          kdebug_trace();
        }
      }

      if (dword_1ED4CBE90)
      {
        *type = 0;
        v288[0] = OS_LOG_TYPE_DEFAULT;
        v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v72, v288[0]);
        OUTLINED_FUNCTION_7_22();
        if (v37)
        {
          if (v26)
          {
            CMBaseObjectGetDerivedStorage();
          }

          *__src = 136316162;
          OUTLINED_FUNCTION_54_7();
          *(v73 + 14) = v26;
          OUTLINED_FUNCTION_42_8(v74);
          v291 = v75;
          *(v76 + 44) = v27;
          OUTLINED_FUNCTION_4_41();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_524();
      }

      videoReceiver_RemoveAndReleaseConfiguration(v26, *(DerivedStorage + 80));
      *(DerivedStorage + 80) = v27;
      if (v27)
      {
        CFRetain(v27);
      }

      CFDictionaryRemoveAllValues(*(DerivedStorage + 24));
      CFDictionaryRemoveAllValues(*(DerivedStorage + 32));
      if (!FigDataChannelConfigurationGetChannelCount(v27) && !FigDataChannelConfigurationGetResourceCount(v27))
      {
        v77 = MEMORY[0x1E6960C70];
        *(DerivedStorage + 360) = *MEMORY[0x1E6960C70];
        *(DerivedStorage + 376) = *(v77 + 16);
        v78 = *(DerivedStorage + 384);
        if (v78)
        {
          CFRelease(v78);
          *(DerivedStorage + 384) = 0;
        }

        v79 = *(DerivedStorage + 392);
        if (v79)
        {
          CFRelease(v79);
          *(DerivedStorage + 392) = 0;
        }

        v80 = *(DerivedStorage + 400);
        if (v80)
        {
          CFRelease(v80);
          *(DerivedStorage + 400) = 0;
        }

        *(DerivedStorage + 408) = 0;
      }

      if (!fvr_copyDescriptionSettingsAndResourcesFromConfiguration(v27, &v281, &v280, 0) && !FigDataChannelConfigurationCopyPlaybackItemUniqueInstanceIdentifier(v27, &v279))
      {
        v81 = CFGetAllocator(v26);
        Mutable = CFDictionaryCreateMutable(v81, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigDataChannelConfigurationGetActivationID(v27);
        FigCFDictionarySetUInt32();
        v168 = Mutable;
        videoReceiver_dispatchAsyncPostNotification();
        v83 = v279;
        v84 = v280;
        v85 = v281;
        ModificationID = FigDataChannelConfigurationGetModificationID(v27);
        CMTimebaseGetTime(&v278, *(DerivedStorage + 56));
        FigSimpleMutexLock();
        v87 = *(DerivedStorage + 448);
        if (v87)
        {
          v88 = *(v87 + 16);
          *&v292.category = v83;
          v292.value = v85;
          v293 = v84;
          v294 = v278;
          v295 = ModificationID;
          v296 = 0;
          v88(v87, v26, &v292);
        }

        v172 = v1;
        FigSimpleMutexUnlock();
        v285 = 0;
        v286 = 0;
        tagCollection = 0;
        v89 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        v90 = *(v89 + 312);
        if (v90)
        {
          v91 = CFRetain(v90);
        }

        else
        {
          v91 = 0;
        }

        v164 = v89;
        FigSimpleMutexUnlock();
        ChannelCount = FigDataChannelConfigurationGetChannelCount(v27);
        cfc = v26;
        if (ChannelCount < 1)
        {
          v277 = 0;
        }

        else
        {
          LOBYTE(v92) = 0;
          LOBYTE(v93) = 0;
          v94 = 0;
          v95 = *MEMORY[0x1E6960690];
          v96 = *(MEMORY[0x1E6960690] + 8);
          v97 = *MEMORY[0x1E69606A0];
          v98 = *(MEMORY[0x1E69606A0] + 8);
          do
          {
            ChannelDescriptionTagsAtIndex = FigDataChannelConfigurationGetChannelDescriptionTagsAtIndex(v27, v94);
            v100 = ChannelDescriptionTagsAtIndex;
            if (v92)
            {
              v92 = 1;
            }

            else
            {
              *&v298.category = v95;
              v298.value = v96;
              v92 = CMTagCollectionContainsTag(ChannelDescriptionTagsAtIndex, v298) != 0;
            }

            if (v93)
            {
              v93 = 1;
            }

            else
            {
              *&v299.category = v97;
              v299.value = v98;
              v93 = CMTagCollectionContainsTag(v100, v299) != 0;
            }

            ++v94;
          }

          while (ChannelCount != v94);
          v277 = v92 && v93;
          v26 = cfc;
        }

        v101 = CFGetAllocator(v26);
        v102 = CFArrayCreateMutable(v101, 0, MEMORY[0x1E695E9C0]);
        if (v102 && (v103 = CFGetAllocator(v26), (v104 = CFArrayCreateMutable(v103, 0, MEMORY[0x1E695E9C0])) != 0))
        {
          v218 = v104;
          theArrayc = v102;
          if (ChannelCount < 1)
          {
LABEL_157:
            v137 = *(v164 + 464);
            v102 = theArrayc;
            *(v164 + 464) = theArrayc;
            CFRetain(theArrayc);
            if (v137)
            {
              CFRelease(v137);
            }

            v138 = *(v164 + 472);
            v136 = v218;
            *(v164 + 472) = v218;
            CFRetain(v218);
            v135 = v168;
            if (v138)
            {
              CFRelease(v138);
            }
          }

          else
          {
            v105 = 0;
            v249 = *(MEMORY[0x1E6960688] + 8);
            v253 = *MEMORY[0x1E6960688];
            v234 = *(MEMORY[0x1E6960690] + 8);
            v238 = *MEMORY[0x1E6960690];
            v206 = *(MEMORY[0x1E69606A0] + 8);
            v210 = *MEMORY[0x1E69606A0];
            allocatorc = *MEMORY[0x1E695E480];
            v156 = *MEMORY[0x1E6965F50];
            v160 = *MEMORY[0x1E6965DB8];
            v152 = *MEMORY[0x1E6965FD0];
            keyc = *MEMORY[0x1E6965D88];
            v179 = *MEMORY[0x1E6965F30];
            v183 = *MEMORY[0x1E6965F98];
            while (1)
            {
              v245 = FigDataChannelConfigurationGetChannelDescriptionTagsAtIndex(v27, v105);
              if (vr_createModifiedDataChannelTagCollectionWithDefaultTags(v245, &tagCollection))
              {
                break;
              }

              v270 = v105;
              v106 = 0;
              if (v91)
              {
LABEL_94:
                Count = CFArrayGetCount(v91);
                goto LABEL_96;
              }

              while (1)
              {
                Count = 0;
LABEL_96:
                if (v106 >= Count)
                {
                  break;
                }

                ValueAtIndex = CFArrayGetValueAtIndex(v91, v106);
                v109 = CFDictionaryGetValue(ValueAtIndex, @"ChannelDescription");
                v110 = CFDictionaryGetValue(ValueAtIndex, @"ChannelSpecificSettings");
                v111 = FigCFDictionaryGetValue();
                if (v109 && v111)
                {
                  if (CMTagCollectionContainsTagsOfCollection(tagCollection, v109))
                  {
                    goto LABEL_121;
                  }

                  if (v277)
                  {
                    v112 = tagCollection;
                    v292 = *MEMORY[0x1E6960630];
                    *__src = v292;
                    *v288 = 0;
                    *type = 0;
                    v287 = 0;
                    v113 = 1;
                    OUTLINED_FUNCTION_379_0();
                    CMTagCollectionGetTagsWithCategory(v114, v115, v116, 1, v117);
                    if (v287 >= 1)
                    {
                      v113 = 1;
                      OUTLINED_FUNCTION_379_0();
                      CMTagCollectionGetTagsWithCategory(v118, v119, v120, 1, v121);
                      if (v287 >= 1)
                      {
                        v113 = !CMTagEqualToTag(v292, *__src) && ((v300.value = v249, *&v300.category = v253, !CMTagEqualToTag(*__src, v300)) || (v301.value = v234, *&v301.category = v238, !CMTagEqualToTag(v292, v301)) && (v302.value = v206, *&v302.category = v210, !CMTagEqualToTag(v292, v302))) || CMTagCollectionCreateMutableCopy(v112, allocatorc, type) || (OUTLINED_FUNCTION_379_0(), CMTagCollectionRemoveAllTagsOfCategory(v122, v123)) || CMTagCollectionCreateMutableCopy(v109, allocatorc, v288) || (OUTLINED_FUNCTION_379_0(), CMTagCollectionRemoveAllTagsOfCategory(v124, v125)) || CMTagCollectionContainsTagsOfCollection(*type, *v288) == 0;
                      }
                    }

                    if (*type)
                    {
                      CFRelease(*type);
                    }

                    if (*v288)
                    {
                      CFRelease(*v288);
                    }

                    if (!v113)
                    {
LABEL_121:
                      CFGetAllocator(cfc);
                      if (VTPixelBufferConformerCreateWithAttributes())
                      {
                        goto LABEL_156;
                      }

                      if (!v110)
                      {
                        goto LABEL_148;
                      }

                      v126 = CFGetAllocator(cfc);
                      if (FigDataChannelConfigurationCopySidebandVideoPropertiesAtIndex(v27, v126, v270, &v286))
                      {
                        goto LABEL_156;
                      }

                      v127 = v286;
                      LOBYTE(v292.category) = 0;
                      FigCFDictionaryGetValue();
                      valuec = FigCFDictionaryGetValue();
                      v214 = FigCFDictionaryGetValue();
                      v128 = FigCFDictionaryGetValue();
                      if (FigCFDictionaryGetBooleanIfPresent() && !LOBYTE(v292.category))
                      {
                        v129 = 0;
                        while (1)
                        {
                          v130 = v127 ? CFArrayGetCount(v127) : 0;
                          if (v129 >= v130)
                          {
                            break;
                          }

                          v131 = CFArrayGetValueAtIndex(v127, v129);
                          MTSidebandVideoPropertiesGetValueForKey(v131, @"ColorPrimaries");
                          MTSidebandVideoPropertiesGetValueForKey(v131, @"TransferFunction");
                          MTSidebandVideoPropertiesGetValueForKey(v131, @"YCbCrMatrix");
                          ++v129;
                          if (FigVideoFormatDescriptionColorPropertiesRequireWideColor())
                          {
                            v132 = v156;
                            valuec = v160;
                            v128 = v152;
                            goto LABEL_134;
                          }
                        }
                      }

                      v132 = v214;
LABEL_134:
                      v133 = CFDictionaryCreateMutable(allocatorc, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                      if (v133)
                      {
                        v134 = v133;
                        if (valuec)
                        {
                          CFDictionarySetValue(v133, keyc, valuec);
                        }

                        if (v132)
                        {
                          CFDictionarySetValue(v134, v183, v132);
                        }

                        if (v128)
                        {
                          CFDictionarySetValue(v134, v179, v128);
                        }

                        if (CFDictionaryGetCount(v134) <= 0)
                        {
                          CFRelease(v134);
                          goto LABEL_143;
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_120();
                        if (FigSignalErrorAtGM())
                        {
                          goto LABEL_156;
                        }

LABEL_143:
                        v134 = 0;
                      }

                      if (v286)
                      {
                        CFRelease(v286);
                        v286 = 0;
                      }

                      if (v134)
                      {
                        VTPixelBufferConformerSetColorProperties();
                        CFArrayAppendValue(theArrayc, v245);
                        CFArrayAppendValue(v218, v285);
                        CFRelease(v134);
                      }

                      else
                      {
LABEL_148:
                        CFArrayAppendValue(theArrayc, v245);
                        CFArrayAppendValue(v218, v285);
                      }

                      if (v285)
                      {
                        CFRelease(v285);
                        v285 = 0;
                      }

                      break;
                    }
                  }
                }

                ++v106;
                if (v91)
                {
                  goto LABEL_94;
                }
              }

              if (tagCollection)
              {
                CFRelease(tagCollection);
                tagCollection = 0;
              }

              v105 = v270 + 1;
              if (v270 + 1 == ChannelCount)
              {
                goto LABEL_157;
              }
            }

LABEL_156:
            v135 = v168;
            v136 = v218;
            v102 = theArrayc;
          }
        }

        else
        {
          OUTLINED_FUNCTION_120();
          FigSignalErrorAtGM();
          v136 = 0;
          v135 = v168;
        }

        if (tagCollection)
        {
          CFRelease(tagCollection);
        }

        if (v285)
        {
          CFRelease(v285);
        }

        if (v102)
        {
          CFRelease(v102);
        }

        if (v136)
        {
          CFRelease(v136);
        }

        if (v91)
        {
          CFRelease(v91);
        }

        if (v286)
        {
          CFRelease(v286);
        }

        v1 = v172;
        if (v135)
        {
          CFRelease(v135);
        }
      }

      if (v279)
      {
        CFRelease(v279);
      }

      if (v281)
      {
        CFRelease(v281);
      }

      if (v280)
      {
        CFRelease(v280);
      }

      if (theString)
      {
        CFRelease(theString);
      }

      if (v282)
      {
        CFRelease(v282);
      }

      v139 = *(v1[12] + 72);
      if (v139)
      {
        CFRelease(v139);
        *(v1[12] + 72) = 0;
      }

      goto LABEL_187;
    }
  }

  else
  {
    v9 = *(v2 + 80);
    if (!v9)
    {
      return;
    }
  }

  v12 = *(v1[4] + 8);
  v13 = *(v12 + 24);
  *(v12 + 24) = v9;
  CFRetain(v9);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = OUTLINED_FUNCTION_20_8(v1[6]);
  if (v14)
  {
    CFRelease(v14);
    OUTLINED_FUNCTION_57_4(v1[6]);
  }

  v15 = OUTLINED_FUNCTION_20_8(v1[7]);
  if (v15)
  {
    CFRelease(v15);
    OUTLINED_FUNCTION_57_4(v1[7]);
  }

  v16 = OUTLINED_FUNCTION_20_8(v1[8]);
  if (v16)
  {
    CFRelease(v16);
    OUTLINED_FUNCTION_57_4(v1[8]);
  }

  v17 = OUTLINED_FUNCTION_20_8(v1[9]);
  if (v17)
  {
    CFRelease(v17);
    OUTLINED_FUNCTION_57_4(v1[9]);
  }

  v18 = OUTLINED_FUNCTION_20_8(v1[10]);
  if (v18)
  {
    CFRelease(v18);
    OUTLINED_FUNCTION_57_4(v1[10]);
  }

  OUTLINED_FUNCTION_36_7();
  if (v22)
  {
    v23 = (*(v1[10] + 8) + 24);
  }

  else
  {
    v23 = 0;
  }

  v25 = OUTLINED_FUNCTION_41_7(v19, v20, v23, v21, v140, v143, v146, v149, v153, v157, v161, v165, v169, v173, v176, v180, key, v188, v191, v194, v197, v200, v203, v207, v211, v215, theArray, value, cf, v231, v235, v239, v242, v246, v250, v254, v257, v260, v263, v267, allocator, v275, SWORD2(v275), SBYTE6(v275), SHIBYTE(v275));
  OUTLINED_FUNCTION_30_8(v25, v1[5]);
  if (!*(*(v1[5] + 8) + 24))
  {
LABEL_187:
    if (HIBYTE(v275) | BYTE6(v275))
    {
      *(*(v1[11] + 8) + 24) = 1;
    }
  }
}

uint64_t videoReceiver_addDataChannelConfiguration(const void *a1, uint64_t a2, int a3, __int128 *a4)
{
  v145 = *MEMORY[0x1E69E9840];
  v123 = 0;
  v124 = &v123;
  v125 = 0x2000000000;
  LODWORD(v126) = 0;
  v121 = 0;
  v122 = 0;
  cf = 0;
  v120 = 0;
  if (!a1)
  {
    goto LABEL_2;
  }

  v8 = CFGetTypeID(a1);
  if (v8 != FigVideoReceiverGetTypeID() || !a2)
  {
    goto LABEL_2;
  }

  if (a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (dword_1ED4CBE90)
    {
      v10 = OUTLINED_FUNCTION_50_4();
      OUTLINED_FUNCTION_75_3(v10, v11, v12, v13, v14, v15, v16, v17, v81, v83, v85, theString, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, *(&v99 + 1), v100, v101, block, v103, v104, v105, v106, v107, v108, v109, v110, *(&v110 + 1), v111, v112, v113, v114, v115, v116, v117, v118, cf, v120, v121, v122, v123, v124, v125, v126, v127, BYTE4(v127), v128);
      OUTLINED_FUNCTION_37();
      if (&_MergedGlobals_89)
      {
        CMBaseObjectGetDerivedStorage();
        CMTimebaseGetTime(&time, *(DerivedStorage + 56));
        CMTimeGetSeconds(&time);
        *__src = 136316162;
        *&__src[4] = "videoReceiver_addDataChannelConfiguration";
        v133 = 2048;
        v134 = a1;
        OUTLINED_FUNCTION_68_4();
        *(v18 + 34) = v19;
        v136 = 2114;
        *(v18 + 44) = a2;
        OUTLINED_FUNCTION_52_0();
LABEL_13:
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_200();
        _os_log_send_and_compose_impl();
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ((*(a4 + 12) & 1) == 0)
  {
LABEL_2:
    OUTLINED_FUNCTION_44_8();
    *(v124 + 6) = FigSignalErrorAtGM();
    goto LABEL_58;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBE90)
  {
    v20 = OUTLINED_FUNCTION_50_4();
    OUTLINED_FUNCTION_75_3(v20, v21, v22, v23, v24, v25, v26, v27, v81, v83, v85, theString, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, *(&v99 + 1), v100, v101, block, v103, v104, v105, v106, v107, v108, v109, v110, *(&v110 + 1), v111, v112, v113, v114, v115, v116, v117, v118, cf, v120, v121, v122, v123, v124, v125, v126, v127, BYTE4(v127), v128);
    OUTLINED_FUNCTION_37();
    if (&_MergedGlobals_89)
    {
      CMBaseObjectGetDerivedStorage();
      CMTimebaseGetTime(&time, *(DerivedStorage + 56));
      Seconds = CMTimeGetSeconds(&time);
      time = *a4;
      CMTimeGetSeconds(&time);
      *__src = 136316418;
      *&__src[4] = "videoReceiver_addDataChannelConfiguration";
      v133 = 2048;
      v134 = a1;
      OUTLINED_FUNCTION_68_4();
      v135 = Seconds;
      v136 = 2114;
      v137 = a2;
      v138 = v29;
      v139 = v30;
      OUTLINED_FUNCTION_52_0();
      goto LABEL_13;
    }

LABEL_14:
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449();
  }

LABEL_15:
  v128 = 0;
  v129 = &v128;
  v130 = 0x2000000000;
  v131 = 0;
  CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBE90 >= 2)
  {
    v85 = DerivedStorage;
    v31 = a4;
    v32 = a3;
    v33 = OUTLINED_FUNCTION_52_6();
    v34 = HIDWORD(v127);
    if (os_log_type_enabled(v33, BYTE3(v127)))
    {
      v35 = v34;
    }

    else
    {
      v35 = v34 & 0xFFFFFFFE;
    }

    if (v35)
    {
      CMBaseObjectGetDerivedStorage();
      *__src = 136315906;
      OUTLINED_FUNCTION_23_14();
      *(v36 + 34) = a2;
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a3 = v32;
    a4 = v31;
    DerivedStorage = v85;
  }

  OUTLINED_FUNCTION_22_12();
  *&time.timescale = 0x40000000;
  time.epoch = __videoReceiver_EnsureDataChannelConfigurationIsValid_block_invoke;
  v141 = &unk_1E74837F0;
  v143 = a2;
  v144 = a1;
  v142 = &v128;
  dispatch_sync(v37, &time);
  OUTLINED_FUNCTION_78_3(v38, v39, v40, v41, v42, v43, v44, v45, v81, v83, v85, theString, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, *(&v99 + 1), v100, v101, block, v103, v104, v105, v106, v107, v108, v109, v110, *(&v110 + 1), v111, v112, v113, v114, v115, v116, v117, v118, cf, v120, v121, v122, v123, v124, v125, v126, v127, v128);
  *(v124 + 6) = &v128;
  if (!&v128)
  {
    v46 = CFGetAllocator(a1);
    Copy = FigDataChannelConfigurationCreateCopy(v46, a2, &cf);
    *(v124 + 6) = Copy;
    if (!Copy)
    {
      v48 = cf;
      v128 = 0;
      v129 = &v128;
      v130 = 0x2000000000;
      v131 = 0;
      CMBaseObjectGetDerivedStorage();
      if (dword_1ED4CBE90 >= 2)
      {
        v49 = OUTLINED_FUNCTION_52_6();
        os_log_type_enabled(v49, BYTE3(v127));
        OUTLINED_FUNCTION_37();
        if (&_MergedGlobals_89)
        {
          CMBaseObjectGetDerivedStorage();
          *__src = 136315906;
          OUTLINED_FUNCTION_23_14();
          *(v50 + 34) = v48;
          OUTLINED_FUNCTION_52_0();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_200();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_449();
      }

      OUTLINED_FUNCTION_22_12();
      *&time.timescale = 0x40000000;
      time.epoch = __videoReceiver_AddImageQueueReceiverToConfiguration_block_invoke;
      v141 = &unk_1E7483818;
      v143 = v48;
      v144 = a1;
      v142 = &v128;
      dispatch_sync(v51, &time);
      OUTLINED_FUNCTION_78_3(v52, v53, v54, v55, v56, v57, v58, v59, v82, v84, v86, theString, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, *(&v99 + 1), v100, v101, block, v103, v104, v105, v106, v107, v108, v109, v110, *(&v110 + 1), v111, v112, v113, v114, v115, v116, v117, v118, cf, v120, v121, v122, v123, v124, v125, v126, v127, v128);
      *(v124 + 6) = v48;
      if (!v48)
      {
        v60 = *(DerivedStorage + 144);
        if (a3)
        {
          p_block = &v112;
          v112 = MEMORY[0x1E69E9820];
          v113 = 0x40000000;
          v114 = __videoReceiver_addDataChannelConfiguration_block_invoke;
          v115 = &__block_descriptor_tmp_67;
          v116 = cf;
          v117 = DerivedStorage;
          v62 = &v118;
        }

        else
        {
          p_block = &block;
          block = MEMORY[0x1E69E9820];
          v103 = 0x40000000;
          v104 = __videoReceiver_addDataChannelConfiguration_block_invoke_68;
          v105 = &unk_1E74837A8;
          v106 = &v123;
          v107 = DerivedStorage;
          v108 = cf;
          v110 = *a4;
          v111 = *(a4 + 2);
          v62 = &v109;
        }

        *v62 = a1;
        dispatch_sync(v60, p_block);
        v63 = fvr_copyDescriptionSettingsAndResourcesFromConfiguration(cf, &v122, &v121, &v120);
        *(v124 + 6) = v63;
        if (!v63)
        {
          CFRetain(a1);
          ModificationID = FigDataChannelConfigurationGetModificationID(cf);
          if (cf)
          {
            CFRetain(cf);
          }

          if (v122)
          {
            CFRetain(v122);
          }

          if (v121)
          {
            CFRetain(v121);
          }

          if (v120)
          {
            CFRetain(v120);
            v65 = v120;
          }

          else
          {
            v65 = 0;
          }

          v66 = *(DerivedStorage + 264);
          v89 = MEMORY[0x1E69E9820];
          v90 = 0x40000000;
          v91 = __videoReceiver_addDataChannelConfiguration_block_invoke_70;
          v92 = &__block_descriptor_tmp_71;
          v93 = DerivedStorage;
          v94 = a1;
          v99 = *a4;
          v100 = *(a4 + 2);
          LODWORD(v101) = ModificationID;
          v95 = cf;
          v96 = v122;
          v97 = v121;
          v98 = v65;
          dispatch_async(v66, &v89);
          theString = 0;
          v88 = 0;
          FigDataChannelConfigurationCopyPlayerItemLoggingIdentifier(cf, &v88);
          FigDataChannelConfigurationCopyLoggingIdentifier(cf, &theString);
          if (*MEMORY[0x1E695FF58] == 1)
          {
            v67 = theString;
            *__src = 0;
            if (theString)
            {
              if (CFStringGetLength(theString) <= 8)
              {
                v68.length = CFStringGetLength(v67);
              }

              else
              {
                v68.length = 8;
              }

              OUTLINED_FUNCTION_5_41(v67, v68, v69, v70, v71, __src, v72, 0);
            }

            strncpy(&time, __src, 8uLL);
            v73 = v88;
            *__src = 0;
            if (v88)
            {
              if (CFStringGetLength(v88) <= 8)
              {
                v74.length = CFStringGetLength(v73);
              }

              else
              {
                v74.length = 8;
              }

              OUTLINED_FUNCTION_5_41(v73, v74, v75, v76, v77, __src, v78, 0);
            }

            strncpy(&time, __src, 8uLL);
            kdebug_trace();
          }

          if (v88)
          {
            CFRelease(v88);
          }

          if (theString)
          {
            CFRelease(theString);
          }
        }
      }
    }
  }

LABEL_58:
  if (v122)
  {
    CFRelease(v122);
  }

  if (v121)
  {
    CFRelease(v121);
  }

  if (v120)
  {
    CFRelease(v120);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v79 = *(v124 + 6);
  _Block_object_dispose(&v123, 8);
  return v79;
}

uint64_t __videoReceiver_addDataChannelConfiguration_block_invoke_68(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = **&MEMORY[0x1E6960C70];
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 40) + 48);
  time = *(a1 + 64);
  v5 = FigVideoReceiverConfigurationSchedulerAddConfigurationWithActivationTime(v4, v3, &time.value);
  result = OUTLINED_FUNCTION_0_5(v5);
  if (!v7)
  {
    result = FigVideoReceiverConfigurationSchedulerFindEarliestTimeToActivate(*(*(a1 + 40) + 48), &v12);
    *(*(a1 + 40) + 116) = v12;
    if (dword_1ED4CBE90 >= 2)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7_22();
      if (v1)
      {
        v9 = *(a1 + 56);
        if (v9)
        {
          v10 = (CMBaseObjectGetDerivedStorage() + 228);
        }

        else
        {
          v10 = "";
        }

        time = v12;
        Seconds = CMTimeGetSeconds(&time);
        v13 = 136315906;
        v14 = "videoReceiver_addDataChannelConfiguration_block_invoke";
        v15 = 2048;
        v16 = v9;
        v17 = 2082;
        v18 = v10;
        v19 = 2048;
        v20 = Seconds;
        OUTLINED_FUNCTION_4_41();
      }

      OUTLINED_FUNCTION_7();
      return OUTLINED_FUNCTION_524();
    }
  }

  return result;
}

uint64_t videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForHostTimeInternal(const void *a1, uint64_t a2, uint64_t a3, CFIndex value_low, uint64_t a5, const __CFArray *a6, uint64_t *a7)
{
  v486 = a7;
  v633 = *MEMORY[0x1E69E9840];
  p_epoch = *MEMORY[0x1E6960C70];
  v600 = *MEMORY[0x1E6960C70];
  LODWORD(v494) = *(MEMORY[0x1E6960C70] + 8);
  LODWORD(v601) = v494;
  HIBYTE(v596) = 0;
  *v594 = 0u;
  memset(theArray, 0, sizeof(theArray));
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = OUTLINED_FUNCTION_60_6();
  rhs.value = 0;
  theString.value = 0;
  v14 = *(v13 + 80);
  if (v14)
  {
    FigDataChannelConfigurationCopyPlayerLoggingIdentifier(v14, &rhs);
    FigDataChannelConfigurationCopyLoggingIdentifier(*(v13 + 80), &theString);
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    value = theString.value;
    __src.start.value = 0;
    if (theString.value)
    {
      if (CFStringGetLength(theString.value) <= 8)
      {
        v16.length = CFStringGetLength(value);
      }

      else
      {
        v16.length = 8;
      }

      OUTLINED_FUNCTION_5_41(value, v16, v17, v18, v19, &__src, v20, 0);
    }

    strncpy(&__dst, &__src, 8uLL);
    v13 = __dst.start.value;
    v21 = rhs.value;
    __src.start.value = 0;
    if (rhs.value)
    {
      if (CFStringGetLength(rhs.value) <= 8)
      {
        v22.length = CFStringGetLength(v21);
      }

      else
      {
        v22.length = 8;
      }

      OUTLINED_FUNCTION_5_41(v21, v22, v23, v24, v25, &__src, v26, 0);
    }

    strncpy(&__dst, &__src, 8uLL);
    OUTLINED_FUNCTION_38_7(time.epoch, v364, v372, v380, v388, v396[0], v396[1], v411, v419, v428, v436, v444, v452, v460, v468, v477, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage, v533, v541, v549, v558[0], v558[1], v573, cf, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, time.value, *&time.timescale, __dst.start.epoch);
    kdebug_trace();
  }

  if (rhs.value)
  {
    CFRelease(rhs.value);
  }

  v469 = value_low;
  v478 = a5;
  LODWORD(p_time) = *(MEMORY[0x1E6960C70] + 12);
  v550 = *(MEMORY[0x1E6960C70] + 16);
  if (theString.value)
  {
    CFRelease(theString.value);
  }

  OUTLINED_FUNCTION_60_6();
  OUTLINED_FUNCTION_18_10();
  *&__dst.start.timescale = 0x40000000;
  __dst.start.epoch = __videoReceiver_updateActiveConfigurationForHostTimeIfNecessary_block_invoke;
  __dst.duration.value = &__block_descriptor_tmp_90;
  *v603 = *&time.value;
  epoch = time.epoch;
  *&__dst.duration.timescale = v28;
  __dst.duration.epoch = a1;
  dispatch_sync(v29, &__dst);
  flags = theArray;
  if (a6)
  {
    v31 = &v594[1];
  }

  else
  {
    v31 = 0;
  }

  v32 = videoReceiver_copyOutputQueuesIfReady(a1, &v596 + 7, theArray, &theArray[1], &theArray[2], &theArray[3], v594, v31);
  if (v32)
  {
    goto LABEL_329;
  }

  cf = a1;
  v13 = &_MergedGlobals_89;
  value_low = "videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForHostTimeInternal";
  if (!theArray[0])
  {
    v41 = OUTLINED_FUNCTION_73_2(v32, v33, v34, v35, v36, v37, v38, v39, v364, v372, v380, v388, v396[0], v396[1], v411, v419, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage);
    flags = 0;
    v42 = 4294951717;
    if (fvr_isAllowedToLog(v41, 3) && dword_1ED4CBE90)
    {
      a3 = a2;
      OUTLINED_FUNCTION_33_10();
      v43 = OUTLINED_FUNCTION_17_10();
      OUTLINED_FUNCTION_37_7(v43);
      OUTLINED_FUNCTION_7_22();
      if (a2)
      {
        if (a1)
        {
          v44 = CMBaseObjectGetDerivedStorage();
          flags = (v44 + 228);
        }

        else
        {
          flags = "";
        }

        OUTLINED_FUNCTION_32_9(v44, v45, v46, v47, v48, v49, v50, v51, v364, v372, v380, v388, v396[0], v396[1], v411, v419, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage, v533, v541, v550, v558[0], v558[1], v573, a1, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, *&__dst.start.value, __dst.start.epoch);
        OUTLINED_FUNCTION_64_6();
        OUTLINED_FUNCTION_40_6(v105, 4.8155e-34);
        OUTLINED_FUNCTION_25_12();
        *(v106 + 14) = a1;
        OUTLINED_FUNCTION_1_55(v107, v108);
        OUTLINED_FUNCTION_2_54();
        value_low = LODWORD(__src.start.value);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524();
      OUTLINED_FUNCTION_8_19();
      v42 = 4294951717;
      goto LABEL_278;
    }

LABEL_52:
    OUTLINED_FUNCTION_55_6();
    goto LABEL_278;
  }

  if (theArray[1])
  {
    Count = CFArrayGetCount(theArray[1]);
  }

  else
  {
    Count = 0;
  }

  v52 = theArray[3];
  if (theArray[3])
  {
    v52 = CFArrayGetCount(theArray[3]);
    v13 = v52;
  }

  else
  {
    v13 = 0;
  }

  if (HIBYTE(v596) && Count == -v13)
  {
    v53 = OUTLINED_FUNCTION_73_2(v52, v33, v34, v35, v36, v37, v38, v39, v364, v372, v380, v388, v396[0], v396[1], v411, v419, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage);
    flags = 0;
    v42 = 4294951366;
    if (fvr_isAllowedToLog(v53, 4) && dword_1ED4CBE90)
    {
      a3 = a2;
      OUTLINED_FUNCTION_33_10();
      v54 = OUTLINED_FUNCTION_17_10();
      OUTLINED_FUNCTION_37_7(v54);
      OUTLINED_FUNCTION_7_22();
      if (a2)
      {
        if (a1)
        {
          v55 = CMBaseObjectGetDerivedStorage();
          flags = (v55 + 228);
        }

        else
        {
          flags = "";
        }

        OUTLINED_FUNCTION_32_9(v55, v56, v57, v58, v59, v60, v61, v62, v364, v372, v380, v388, v396[0], v396[1], v411, v419, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage, v533, v541, v550, v558[0], v558[1], v573, a1, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, *&__dst.start.value, __dst.start.epoch);
        OUTLINED_FUNCTION_64_6();
        OUTLINED_FUNCTION_40_6(v109, 4.8155e-34);
        *(v110 + 4) = "videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForHostTimeInternal";
        OUTLINED_FUNCTION_34_10();
        *(v111 + 14) = a1;
        OUTLINED_FUNCTION_1_55(v112, v113);
        OUTLINED_FUNCTION_2_54();
        value_low = LODWORD(__src.start.value);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524();
      OUTLINED_FUNCTION_8_19();
      v42 = 4294951366;
      goto LABEL_278;
    }

    goto LABEL_52;
  }

  if (!HIBYTE(v596))
  {
    v69 = OUTLINED_FUNCTION_73_2(v52, v33, v34, v35, v36, v37, v38, v39, v364, v372, v380, v388, v396[0], v396[1], v411, v419, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage);
    flags = 0;
    v42 = 4294951719;
    if (fvr_isAllowedToLog(v69, 5) && dword_1ED4CBE90)
    {
      a3 = a2;
      OUTLINED_FUNCTION_33_10();
      v70 = OUTLINED_FUNCTION_17_10();
      OUTLINED_FUNCTION_37_7(v70);
      OUTLINED_FUNCTION_7_22();
      if (a2)
      {
        if (a1)
        {
          v71 = CMBaseObjectGetDerivedStorage();
          flags = (v71 + 228);
        }

        else
        {
          flags = "";
        }

        OUTLINED_FUNCTION_32_9(v71, v72, v73, v74, v75, v76, v77, v78, v364, v372, v380, v388, v396[0], v396[1], v411, v419, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage, v533, v541, v550, v558[0], v558[1], v573, a1, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, *&__dst.start.value, __dst.start.epoch);
        OUTLINED_FUNCTION_64_6();
        OUTLINED_FUNCTION_40_6(v124, 4.8155e-34);
        *(v125 + 4) = "videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForHostTimeInternal";
        OUTLINED_FUNCTION_34_10();
        *(v126 + 14) = a1;
        OUTLINED_FUNCTION_1_55(v127, v128);
        OUTLINED_FUNCTION_2_54();
        value_low = LODWORD(__src.start.value);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524();
      OUTLINED_FUNCTION_8_19();
      v42 = 4294951719;
      goto LABEL_278;
    }

    goto LABEL_52;
  }

  v63 = theArray[2];
  if (theArray[2])
  {
    v63 = CFArrayGetCount(theArray[2]);
  }

  if (Count != v63)
  {
    goto LABEL_328;
  }

  v64 = v594[0];
  if (v594[0])
  {
    v64 = CFArrayGetCount(v594[0]);
  }

  if (v13 != v64)
  {
LABEL_328:
    OUTLINED_FUNCTION_9_22();
    v32 = FigSignalErrorAtGM();
LABEL_329:
    v42 = v32;
    OUTLINED_FUNCTION_8_19();
    goto LABEL_278;
  }

  HIDWORD(v452) = p_time;
  v65 = theArray[0];
  *v558 = *&theArray[1];
  v66 = theArray[3];
  *v599 = *v594;
  *v590 = *a2;
  v436 = a2;
  v591 = *(a2 + 16);
  *lhs = *a3;
  *&lhs[12] = *(a3 + 12);
  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x2000000000;
  LODWORD(v619) = 0;
  v67 = CMBaseObjectGetDerivedStorage();
  __src.start.value = 0;
  *&__src.start.timescale = &__src;
  *&__src.start.epoch = 0x2000000000uLL;
  rhs.value = 0;
  *&rhs.timescale = &rhs;
  rhs.epoch = 0x2000000000;
  v632 = 0;
  theString.value = 0;
  *&theString.timescale = &theString;
  theString.epoch = 0x2000000000;
  v598 = 0;
  duration.value = 0;
  *&duration.timescale = &duration;
  duration.epoch = 0x2000000000;
  v617 = 0;
  if (!v558[0])
  {
    v68 = 0;
    if (v66)
    {
      goto LABEL_51;
    }

LABEL_60:
    value_low = 0;
    goto LABEL_61;
  }

  v68 = CFArrayGetCount(v558[0]);
  if (!v66)
  {
    goto LABEL_60;
  }

LABEL_51:
  value_low = CFArrayGetCount(v66);
LABEL_61:
  v79 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v79, v68, MEMORY[0x1E695E9C0]);
  *(*&__src.start.timescale + 24) = Mutable;
  v428 = a6;
  if (Mutable && (v81 = CFGetAllocator(a1), v82 = CFArrayCreateMutable(v81, v68, MEMORY[0x1E695E9C0]), (*(*&rhs.timescale + 24) = v82) != 0) && (v83 = CFGetAllocator(a1), v84 = CFArrayCreateMutable(v83, value_low, MEMORY[0x1E695E9C0]), (*(*&theString.timescale + 24) = v84) != 0) && (v85 = CFGetAllocator(a1), v86 = CFArrayCreateMutable(v85, value_low, MEMORY[0x1E695E9C0]), (*(*&duration.timescale + 24) = v86) != 0))
  {
    OUTLINED_FUNCTION_19_13();
    __dst.start.epoch = __videoReceiver_copyBuffersFromSamplingSourceForHostTime_block_invoke;
    __dst.duration.value = &unk_1E7483990;
    v607 = *v558;
    v606 = v65;
    v608 = v66;
    *v609 = *v599;
    v613 = *v590;
    *(v615 + 12) = *&lhs[12];
    v615[0] = *lhs;
    v610 = a1;
    v611 = v67;
    *&__dst.duration.timescale = &time;
    __dst.duration.epoch = &__src;
    v603[0] = &duration;
    v603[1] = &rhs;
    v614 = v591;
    v612 = value_low;
    epoch = &theString;
    v605 = v68;
    dispatch_sync(v87, &__dst);
    if (*(*&time.timescale + 24))
    {
      OUTLINED_FUNCTION_71_2();
    }

    else
    {
      v67 = *(*&__src.start.timescale + 24);
      *(*&__src.start.timescale + 24) = 0;
      value_low = *(*&rhs.timescale + 24);
      *(*&rhs.timescale + 24) = 0;
      a6 = *(*&theString.timescale + 24);
      *(*&theString.timescale + 24) = 0;
      v444 = *(*&duration.timescale + 24);
      *(*&duration.timescale + 24) = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_22();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_71_2();
    *(*&time.timescale + 24) = v363;
  }

  p_time = HIDWORD(v452);
  v88 = *(*&duration.timescale + 24);
  if (v88)
  {
    CFRelease(v88);
  }

  v89 = *(*&__src.start.timescale + 24);
  if (v89)
  {
    CFRelease(v89);
  }

  v90 = *(*&rhs.timescale + 24);
  if (v90)
  {
    CFRelease(v90);
  }

  v558[0] = v67;
  v91 = *(*&theString.timescale + 24);
  if (v91)
  {
    CFRelease(v91);
  }

  v42 = *(*&time.timescale + 24);
  _Block_object_dispose(&duration, 8);
  _Block_object_dispose(&theString, 8);
  _Block_object_dispose(&rhs, 8);
  _Block_object_dispose(&__src, 8);
  _Block_object_dispose(&time, 8);
  v533 = a6;
  v541 = value_low;
  if (v42)
  {
    a3 = DerivedStorage;
    v13 = 0;
    if (!fvr_isAllowedToLog(DerivedStorage + 520, 6))
    {
      a3 = 0;
      flags = v444;
      goto LABEL_278;
    }

    flags = v444;
    if (!dword_1ED4CBE90)
    {
      a3 = 0;
      goto LABEL_278;
    }

    OUTLINED_FUNCTION_33_10();
    v92 = OUTLINED_FUNCTION_17_10();
    OUTLINED_FUNCTION_24_10(v92);
    OUTLINED_FUNCTION_27_11();
    if (v68)
    {
      if (a1)
      {
        v93 = CMBaseObjectGetDerivedStorage();
        v101 = (v93 + 228);
      }

      else
      {
        v101 = "";
      }

      v118 = OUTLINED_FUNCTION_21_10(v93, v94, v95, v96, v97, v98, v99, v100, v364, v372, v380, v388, v396[0], v396[1], v411, v419, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage, a6, value_low, v550, v67, v558[1], v573, a1, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, *&__dst.start.value, __dst.start.epoch);
      OUTLINED_FUNCTION_40_6(v118, 4.8156e-34);
      OUTLINED_FUNCTION_25_12();
      *(v119 + 14) = a1;
      HIWORD(time.epoch) = 2082;
      v619 = v101;
      v620 = 1024;
      *(v119 + 34) = v42;
      v622 = v120;
      *v623 = v121;
      *&v623[8] = 2080;
      *(v119 + 50) = v122;
      *&v623[18] = 1024;
      *&v623[20] = v123;
      OUTLINED_FUNCTION_4_45();
      OUTLINED_FUNCTION_2_54();
      OUTLINED_FUNCTION_66_4();
      goto LABEL_105;
    }

    goto LABEL_106;
  }

  if (!*(a3 + 1))
  {
    goto LABEL_181;
  }

  *v590 = *v436;
  v591 = *(v436 + 16);
  v102 = *(a3 + 2);
  v599[0] = *(a3 + 3);
  *(v599 + 5) = *(a3 + 8);
  value_low = *(a3 + 16);
  v420 = *(a3 + 20);
  if (v67)
  {
    v103 = CFArrayGetCount(v67);
    if (a6)
    {
LABEL_84:
      v104 = CFArrayGetCount(a6);
      goto LABEL_99;
    }
  }

  else
  {
    v103 = 0;
    if (a6)
    {
      goto LABEL_84;
    }
  }

  v104 = 0;
LABEL_99:
  v396[0] = v104;
  v629 = p_epoch;
  timescale = v494;
  v114 = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBE90 >= 3)
  {
    OUTLINED_FUNCTION_33_10();
    v116 = OUTLINED_FUNCTION_17_10();
    os_log_type_enabled(v116, rhs.value);
    OUTLINED_FUNCTION_46();
    if (HIDWORD(v452))
    {
      if (a1)
      {
        v117 = (CMBaseObjectGetDerivedStorage() + 228);
      }

      else
      {
        v117 = "";
      }

      v129 = OUTLINED_FUNCTION_38_7(v591, v364, v372, v380, v388, v396[0], v396[1], v411, v420, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage, a6, v541, v550, v67, v558[1], v573, a1, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, v590[0], v590[1], __dst.start.epoch);
      v130 = " with data queue sampling at video PTS";
      LODWORD(time.value) = 136316674;
      *(&time.value + 4) = "videoReceiver_areBuffersSynchronized";
      LOWORD(time.flags) = 2048;
      if (!v102)
      {
        v130 = ".";
      }

      *(&time.flags + 2) = a1;
      HIWORD(time.epoch) = 2082;
      v619 = v117;
      v620 = 1024;
      v621 = v103;
      v622 = 1024;
      *v623 = v396[0];
      *&v623[4] = 2048;
      *&v623[6] = v129;
      *&v623[14] = 2080;
      *&v623[16] = v130;
      OUTLINED_FUNCTION_4_45();
      OUTLINED_FUNCTION_10_21();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    p_time = HIDWORD(v452);
    a6 = v533;
  }

  v388 = v114;
  a3 = p_time;
  if (v103 >= 1)
  {
    v68 = 0;
    *v510 = *MEMORY[0x1E6960C70];
    a3 = p_time;
    v131 = v550;
    while (1)
    {
      *&theString.value = *v510;
      theString.epoch = v550;
      FigCFArrayGetCMTimeAtIndex();
      flags = theString.flags;
      if ((theString.flags & 1) == 0)
      {
        break;
      }

      if (a3)
      {
        duration.value = theString.value;
        duration.timescale = theString.timescale;
        v132 = theString.epoch;
        v133 = (theString.flags & 0x1F) == 3 || (a3 & 0x1F) == 3;
        if (!v133 || (memset(&__dst, 0, 24), __src.start = theString, rhs.value = v629, rhs.timescale = timescale, rhs.flags = a3, rhs.epoch = v131, CMTimeSubtract(&time, &__src.start, &rhs), CMTimeAbsoluteValue(&__dst.start, &time), CMTimeMake(&time, 1, 1000000000), *&__src.start.value = *&__dst.start.value, __src.start.epoch = __dst.start.epoch, CMTimeCompare(&__src.start, &time) > 0))
        {
          __dst.start.value = duration.value;
          __dst.start.timescale = duration.timescale;
          __dst.start.flags = flags;
          __dst.start.epoch = v132;
          OUTLINED_FUNCTION_35_8();
          if (CMTimeCompare(v134, v135))
          {
            fvr_isAllowedToLog(v388 + 560, 8);
            v136 = cf;
            OUTLINED_FUNCTION_67_5();
            if (v192 && dword_1ED4CBE90)
            {
              OUTLINED_FUNCTION_33_10();
              v201 = OUTLINED_FUNCTION_17_10();
              os_log_type_enabled(v201, rhs.value);
              OUTLINED_FUNCTION_46();
              if (p_time)
              {
                flags = "";
                if (cf)
                {
                  v202 = CMBaseObjectGetDerivedStorage();
                  value_low = v202 + 228;
                }

                else
                {
                  value_low = "";
                }

                OUTLINED_FUNCTION_31_8(v202, v203, v204, v205, v206, v207, v208, v209, v364, v372, v380, v388, v396[0], v396[1], v411, v420, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage, v533, v541, v550, v558[0], v558[1], v573, cf, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, *&theString.value);
                Seconds = CMTimeGetSeconds(&__dst.start);
                v306 = OUTLINED_FUNCTION_11_20(v298, v299, v300, v301, v302, v303, v304, v305, v369, v377, v385, v393, v401, v408, v416, v425, v433, v441, v449, v457, v465, v474, v483, v491, v499, v507, v515, v522, v530, v538, v546, v555, v563, v570, v578, cff, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, __dst.start.value, __dst.start.timescale, __dst.start.flags);
                OUTLINED_FUNCTION_40_6(v306, 4.8158e-34);
                OUTLINED_FUNCTION_25_12();
                *(v307 + 14) = v136;
                OUTLINED_FUNCTION_53_5();
                *(v308 + 34) = v68;
                v622 = v309;
                *v623 = Seconds;
                *&v623[8] = v309;
                *(v308 + 50) = v310;
                *&v623[18] = 2080;
                *(v308 + 60) = v311;
                v624 = v312;
                *(v308 + 70) = v313;
                OUTLINED_FUNCTION_4_45();
                OUTLINED_FUNCTION_10_21();
                _os_log_send_and_compose_impl();
LABEL_270:
                OUTLINED_FUNCTION_67_5();
              }

LABEL_271:
              OUTLINED_FUNCTION_7();
              v192 = fig_log_call_emit_and_clean_up_after_send_and_compose();
              LODWORD(p_time) = HIDWORD(v452);
            }

LABEL_272:
            v314 = OUTLINED_FUNCTION_73_2(v192, v193, v194, v195, v196, v197, v198, v199, v364, v372, v380, v388, v396[0], v396[1], v411, v420, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage);
            v13 = 0;
            v42 = 4294951365;
            if (!fvr_isAllowedToLog(v314, 7) || !dword_1ED4CBE90)
            {
              a3 = 0;
              a6 = v533;
              goto LABEL_278;
            }

            OUTLINED_FUNCTION_33_10();
            v315 = OUTLINED_FUNCTION_17_10();
            OUTLINED_FUNCTION_24_10(v315);
            OUTLINED_FUNCTION_27_11();
            if (v68)
            {
              if (v136)
              {
                v316 = CMBaseObjectGetDerivedStorage();
              }

              OUTLINED_FUNCTION_21_10(v316, v317, v318, v319, v320, v321, v322, v323, v364, v372, v380, v388, v396[0], v396[1], v411, v419, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage, v533, v541, v550, v558[0], v558[1], v573, cf, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, *&__dst.start.value, __dst.start.epoch);
              OUTLINED_FUNCTION_64_6();
              OUTLINED_FUNCTION_40_6(v359, 4.8155e-34);
              OUTLINED_FUNCTION_25_12();
              *(v360 + 14) = v136;
              OUTLINED_FUNCTION_1_55(v361, v362);
              OUTLINED_FUNCTION_2_54();
              OUTLINED_FUNCTION_66_4();
LABEL_105:
              flags = v444;
              a6 = v533;
              value_low = v541;
            }

            else
            {
              a6 = v533;
            }

LABEL_106:
            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v13 = 0;
            OUTLINED_FUNCTION_62_3();
            goto LABEL_278;
          }
        }
      }

      else
      {
        v629 = theString.value;
        timescale = theString.timescale;
        v131 = theString.epoch;
        a3 = theString.flags;
      }

      v68 = (v68 + 1);
      if (v103 == v68)
      {
        goto LABEL_129;
      }
    }

LABEL_327:
    value_low = v541;
    goto LABEL_181;
  }

LABEL_129:
  v68 = v396[0];
  v136 = cf;
  if (v396[0] >= 1)
  {
    v137 = 0;
    flags = (v599 + 1);
    *&v115 = 136316162;
    *v510 = v115;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a6, v137);
      memset(&rhs, 0, sizeof(rhs));
      CMSampleBufferGetOutputPresentationTimeStamp(&rhs, ValueAtIndex);
      if ((rhs.flags & 1) == 0)
      {
        goto LABEL_327;
      }

      memset(&theString, 0, sizeof(theString));
      OutputDuration = CMSampleBufferGetOutputDuration(&theString, ValueAtIndex);
      OUTLINED_FUNCTION_31_8(OutputDuration, v140, v141, v142, v143, v144, v145, v146, v364, v372, v380, v388, v396[0], v396[1], v411, v420, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage, v533, v541, v550, v558[0], v558[1], v573, cf, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, *&theString.value);
      time = **&MEMORY[0x1E6960CC0];
      v155 = OUTLINED_FUNCTION_39_8(v147, v148, v149, v150, v151, v152, v153, v154, v365, v373, v381, v389, v397, v404, v412, v421, v429, v437, v445, v453, v461, v470, v479, v487, v495, v503, v511, v518, v526, v534, v542, v551, v559, v566, v574, cfb, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, __dst.start.value);
      if (CMTimeCompare(v155, v156) <= 0)
      {
        CMTimeMake(&__dst.start, 1, 10000);
        theString = __dst.start;
        if (dword_1ED4CBE90 < 7)
        {
          goto LABEL_156;
        }

        LODWORD(__src.start.value) = 0;
        LOBYTE(duration.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v170 = OUTLINED_FUNCTION_77_4(os_log_and_send_and_compose_flags_and_os_log_type);
        if (v170)
        {
          v178 = v136;
        }

        else
        {
          v178 = v136 & 0xFFFFFFFE;
        }

        if (v178)
        {
          v179 = cf;
          if (cf)
          {
            v170 = CMBaseObjectGetDerivedStorage();
            v180 = (v170 + 228);
          }

          else
          {
            v180 = "";
          }

          OUTLINED_FUNCTION_11_20(v170, v171, v172, v173, v174, v175, v176, v177, v364, v372, v380, v388, v396[0], v396[1], v411, v420, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage, v533, v541, v550, v558[0], v558[1], v573, cf, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, __dst.start.value, __dst.start.timescale, __dst.start.flags);
          LODWORD(time.value) = v510[0];
          OUTLINED_FUNCTION_48_6(&time);
          *(v185 + 14) = v179;
          OUTLINED_FUNCTION_56_6();
          v619 = v180;
          v620 = 1024;
          *(v186 + 34) = v137;
          v622 = v187;
          *v623 = v188;
          OUTLINED_FUNCTION_4_45();
          OUTLINED_FUNCTION_10_21();
          _os_log_send_and_compose_impl();
          v68 = v396[0];
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        if (theString.flags)
        {
          goto LABEL_156;
        }

        LODWORD(__src.start.value) = 0;
        LOBYTE(duration.value) = 0;
        v157 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v158 = OUTLINED_FUNCTION_77_4(v157);
        if (v158)
        {
          v166 = v136;
        }

        else
        {
          v166 = v136 & 0xFFFFFFFE;
        }

        if (v166)
        {
          if (cf)
          {
            v158 = CMBaseObjectGetDerivedStorage();
            v167 = cf;
            v168 = (v158 + 228);
          }

          else
          {
            v167 = 0;
            v168 = "";
          }

          OUTLINED_FUNCTION_11_20(v158, v159, v160, v161, v162, v163, v164, v165, v364, v372, v380, v388, v396[0], v396[1], v411, v420, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage, v533, v541, v550, v558[0], v558[1], v573, cf, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, __dst.start.value, __dst.start.timescale, __dst.start.flags);
          LODWORD(time.value) = v510[0];
          OUTLINED_FUNCTION_48_6(&time);
          *(v181 + 14) = v167;
          OUTLINED_FUNCTION_56_6();
          v619 = v168;
          v620 = 1024;
          *(v182 + 34) = v137;
          v622 = v183;
          *v623 = v184;
          OUTLINED_FUNCTION_4_45();
          OUTLINED_FUNCTION_10_21();
          _os_log_send_and_compose_impl();
          v68 = v396[0];
        }

        OUTLINED_FUNCTION_16();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        theString = **&MEMORY[0x1E6960C88];
      }

      v136 = cf;
      LODWORD(p_time) = HIDWORD(v452);
      a6 = v533;
LABEL_156:
      memset(&__src, 0, sizeof(__src));
      if (value_low)
      {
        memset(&__dst, 0, 24);
        OUTLINED_FUNCTION_58_1();
        duration.value = *(v599 + 1);
        duration.timescale = *(&v599[1] + 1);
        duration.flags = value_low;
        duration.epoch = v420;
        CMTimeSubtract(&__dst.start, &time, &duration);
        memset(&time, 0, sizeof(time));
        *lhs = *(v599 + 1);
        *&lhs[8] = *(&v599[1] + 1);
        *&lhs[12] = value_low;
        *&lhs[16] = v420;
        CMTimeMultiply(&duration, lhs, 2);
        *lhs = theString;
        CMTimeAdd(&time, lhs, &duration);
        duration = __dst.start;
        *lhs = time;
        CMTimeRangeMake(&__src, &duration, lhs);
      }

      else
      {
        OUTLINED_FUNCTION_58_1();
        duration = theString;
        CMTimeRangeMake(&__dst, &time, &duration);
        __src = __dst;
      }

      __dst = __src;
      OUTLINED_FUNCTION_35_8();
      if (!CMTimeRangeContainsTime(v189, v190))
      {
        fvr_isAllowedToLog(v388 + 560, 9);
        OUTLINED_FUNCTION_67_5();
        if (v192 && dword_1ED4CBE90)
        {
          LODWORD(duration.value) = 0;
          lhs[0] = 0;
          v200 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          LODWORD(v68) = lhs[0];
          os_log_type_enabled(v200, lhs[0]);
          OUTLINED_FUNCTION_46();
          if (p_time)
          {
            flags = "";
            if (v136)
            {
              value_low = CMBaseObjectGetDerivedStorage() + 228;
            }

            else
            {
              value_low = "";
            }

            v274 = OUTLINED_FUNCTION_38_7(rhs.epoch, v364, v372, v380, v388, v396[0], v396[1], v411, v420, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage, v533, v541, v550, v558[0], v558[1], v573, cf, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, rhs.value, *&rhs.timescale, __dst.start.epoch);
            OUTLINED_FUNCTION_31_8(v275, v276, v277, v278, v279, v280, v281, v282, v367, v375, v383, v391, v399, v406, v414, v423, v431, v439, v447, v455, v463, v472, v481, v489, v497, v505, v513, v520, v528, v536, v544, v553, v561, v568, v576, cfd, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, *&theString.value);
            v283 = CMTimeGetSeconds(&__dst.start);
            OUTLINED_FUNCTION_11_20(v284, v285, v286, v287, v288, v289, v290, v291, v368, v376, v384, v392, v400, v407, v415, v424, v432, v440, v448, v456, v464, v473, v482, v490, v498, v506, v514, v521, v529, v537, v545, v554, v562, v569, v577, cfe, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, __dst.start.value, __dst.start.timescale, __dst.start.flags);
            LODWORD(time.value) = 136317186;
            *(&time.value + 4) = "videoReceiver_areBuffersSynchronized";
            OUTLINED_FUNCTION_34_10();
            *(&time.flags + 2) = v136;
            OUTLINED_FUNCTION_53_5();
            v621 = v137;
            v622 = v292;
            *v623 = v274;
            *&v623[8] = v292;
            *&v623[10] = v283;
            *&v623[18] = v292;
            *&v623[20] = v293;
            v624 = 2080;
            v625 = v294;
            v626 = v295;
            v627 = v296;
            OUTLINED_FUNCTION_4_45();
            OUTLINED_FUNCTION_10_21();
            _os_log_send_and_compose_impl();
            goto LABEL_270;
          }

          goto LABEL_271;
        }

        goto LABEL_272;
      }

      ++v137;
    }

    while (v68 != v137);
  }

  value_low = v541;
  if (*(v388 + 560) && fvr_isAllowedToLog(v388 + 560, 0) && dword_1ED4CBE90)
  {
    OUTLINED_FUNCTION_33_10();
    v191 = OUTLINED_FUNCTION_17_10();
    OUTLINED_FUNCTION_24_10(v191);
    OUTLINED_FUNCTION_27_11();
    if (v68)
    {
      if (cf)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(time.value) = 136315906;
      *(&time.value + 4) = "videoReceiver_areBuffersSynchronized";
      OUTLINED_FUNCTION_34_10();
      *(v210 + 14) = cf;
      OUTLINED_FUNCTION_56_6();
      v619 = v211;
      v620 = 1024;
      *(v213 + 34) = v212;
      OUTLINED_FUNCTION_4_45();
      OUTLINED_FUNCTION_2_54();
      OUTLINED_FUNCTION_66_4();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LODWORD(p_time) = HIDWORD(v452);
  }

LABEL_181:
  v510[0] = theArray[2];
  v419 = v594[0];
  rhs.value = p_epoch;
  rhs.timescale = v494;
  *lhs = 0;
  v214 = cf;
  v215 = CFGetAllocator(cf);
  v216 = CFArrayCreateMutable(v215, 0, MEMORY[0x1E695E9C0]);
  if (!v216)
  {
    OUTLINED_FUNCTION_9_22();
    v42 = FigSignalErrorAtGM();
    a3 = 0;
    flags = v444;
    if (!v42)
    {
      goto LABEL_243;
    }

    goto LABEL_333;
  }

  v217 = v216;
  v218 = CFGetAllocator(cf);
  v219 = CFArrayCreateMutable(v218, 0, MEMORY[0x1E695E9C0]);
  v221 = v558[0];
  if (!v219)
  {
    OUTLINED_FUNCTION_9_22();
    v42 = FigSignalErrorAtGM();
    OUTLINED_FUNCTION_62_3();
    flags = v444;
    goto LABEL_240;
  }

  v222 = v219;
  v68 = 0;
  a3 = 0;
  p_epoch = &__dst.start.epoch;
  p_time = &time;
  *&v220 = 136316162;
  *v396 = v220;
  v494 = v550;
  flags = HIDWORD(v452);
  if (!v558[0])
  {
    goto LABEL_185;
  }

LABEL_184:
  for (i = CFArrayGetCount(v221); ; i = 0)
  {
    if (v68 >= i)
    {
      v252 = 0;
      value_low = 29;
      if (a6)
      {
        goto LABEL_233;
      }

LABEL_234:
      for (j = 0; ; j = CFArrayGetCount(a6))
      {
        if (v252 >= j)
        {
          v255 = CFGetAllocator(cf);
          v42 = MEMORY[0x19A8CF050](v255, v217, v222, lhs);
          if (v42)
          {
            OUTLINED_FUNCTION_62_3();
          }

          else
          {
            a3 = *lhs;
            *lhs = 0;
            v600 = rhs.value;
            LODWORD(v601) = rhs.timescale;
            v550 = v494;
            LODWORD(p_time) = flags;
          }

          OUTLINED_FUNCTION_67_5();
          goto LABEL_239;
        }

        v68 = CFArrayGetValueAtIndex(a6, v252);
        p_time = CFArrayGetValueAtIndex(v419, v252);
        memset(&__dst, 0, 24);
        CMSampleBufferGetPresentationTimeStamp(&__dst.start, v68);
        if (!a3)
        {
          v253 = __dst.start.flags;
          if ((__dst.start.flags & 0x1D) == 1)
          {
            if (flags)
            {
              time = __dst.start;
              __src.start.value = rhs.value;
              __src.start.timescale = rhs.timescale;
              __src.start.flags = flags;
              __src.start.epoch = v494;
              if ((CMTimeCompare(&time, &__src.start) & 0x80000000) == 0)
              {
                goto LABEL_232;
              }

              v253 = __dst.start.flags;
            }

            rhs.value = __dst.start.value;
            rhs.timescale = __dst.start.timescale;
            v494 = __dst.start.epoch;
            flags = v253;
          }
        }

LABEL_232:
        CFArrayAppendValue(v222, v68);
        CFArrayAppendValue(v217, p_time);
        ++v252;
        if (!a6)
        {
          goto LABEL_234;
        }

LABEL_233:
        ;
      }
    }

    *&__src.start.value = *MEMORY[0x1E6960C70];
    __src.start.epoch = v550;
    CMTimeAtIndex = FigCFArrayGetCMTimeAtIndex();
    if ((__src.start.flags & 0x1D) != 1)
    {
      goto LABEL_191;
    }

    if ((flags & 1) == 0)
    {
      goto LABEL_189;
    }

    *&__dst.start.timescale = *&__src.start.timescale;
    __dst.start.epoch = __src.start.epoch;
    time.value = rhs.value;
    time.timescale = rhs.timescale;
    time.flags = flags;
    time.epoch = v494;
    v232 = OUTLINED_FUNCTION_39_8(CMTimeAtIndex, v225, v226, v227, v228, v229, v230, v231, v364, v372, v380, v388, v396[0], v396[1], v411, v419, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage, v533, v541, v550, v558[0], v558[1], v573, cf, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, __src.start.value);
    if (CMTimeCompare(v232, v233) < 0)
    {
      if (dword_1ED4CBE90 >= 3)
      {
        LODWORD(theString.value) = 0;
        LOBYTE(duration.value) = 0;
        v242 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v243 = theString.value;
        if (os_log_type_enabled(v242, duration.value))
        {
          v244 = v243;
        }

        else
        {
          v244 = v243 & 0xFFFFFFFE;
        }

        if (v244)
        {
          v245 = cf;
          if (cf)
          {
            v246 = (CMBaseObjectGetDerivedStorage() + 228);
          }

          else
          {
            v246 = "";
          }

          v247 = OUTLINED_FUNCTION_38_7(v494, v364, v372, v380, v388, v396[0], v396[1], v411, v419, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage, v533, v541, v550, v558[0], v558[1], v573, cf, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, rhs.value, __SPAIR64__(flags, rhs.timescale), __dst.start.epoch);
          OUTLINED_FUNCTION_38_7(__src.start.epoch, v366, v374, v382, v390, v398, v405, v413, v422, v430, v438, v446, v454, v462, v471, v480, v488, v496, v504, v512, v519, v527, v535, v543, v552, v560, v567, v575, cfc, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, __src.start.value, *&__src.start.timescale, __dst.start.epoch);
          LODWORD(time.value) = v396[0];
          OUTLINED_FUNCTION_48_6(&time);
          *(v248 + 14) = v245;
          OUTLINED_FUNCTION_56_6();
          v619 = v246;
          v620 = v249;
          *(v250 + 34) = v247;
          *&v623[2] = v249;
          *(v250 + 44) = v251;
          LODWORD(v372) = 52;
          v364 = &time;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v221 = v558[0];
      }

LABEL_189:
      rhs.value = __src.start.value;
      flags = __src.start.flags;
      rhs.timescale = __src.start.timescale;
      a3 = 1;
      v494 = __src.start.epoch;
    }

LABEL_191:
    v234 = CFArrayGetValueAtIndex(v510[0], v68);
    v235 = CFArrayGetValueAtIndex(v221, v68);
    time.value = 0;
    *&time.timescale = &time;
    time.epoch = 0x2000000000;
    v619 = 0;
    theString.value = 0;
    duration.value = 0;
    v236 = CMBaseObjectGetDerivedStorage();
    if (!v235)
    {
      OUTLINED_FUNCTION_9_22();
      v42 = FigSignalErrorAtGM();
LABEL_222:
      value_low = v541;
      goto LABEL_198;
    }

    v237 = v236;
    v238 = vr_createModifiedDataChannelTagCollectionWithDefaultTags(v234, &duration);
    if (v238)
    {
      v42 = v238;
      v235 = 0;
      goto LABEL_222;
    }

    OUTLINED_FUNCTION_19_13();
    __dst.start.epoch = __videoReceiver_createConformedPixelBufferWithClientSpecifiedAttributes_block_invoke;
    __dst.duration.value = &unk_1E74839B8;
    __dst.duration.epoch = v237;
    v603[0] = duration.value;
    *&__dst.duration.timescale = &time;
    dispatch_sync(v239, &__dst);
    if (!*(*&time.timescale + 24))
    {
      v235 = CFRetain(v235);
      value_low = v541;
      goto LABEL_197;
    }

    v240 = VTPixelBufferConformerCopyConformedPixelBuffer();
    value_low = v541;
    if (!v240)
    {
      v235 = theString.value;
LABEL_197:
      v42 = 0;
      theString.value = 0;
      goto LABEL_198;
    }

    v42 = v240;
    v235 = 0;
LABEL_198:
    v241 = *(*&time.timescale + 24);
    if (v241)
    {
      CFRelease(v241);
    }

    if (duration.value)
    {
      CFRelease(duration.value);
    }

    if (theString.value)
    {
      CFRelease(theString.value);
    }

    _Block_object_dispose(&time, 8);
    if (v42)
    {
      break;
    }

    CFArrayAppendValue(v222, v235);
    CFArrayAppendValue(v217, v234);
    if (v235)
    {
      CFRelease(v235);
    }

    v68 = (v68 + 1);
    a6 = v533;
    v221 = v558[0];
    if (v558[0])
    {
      goto LABEL_184;
    }

LABEL_185:
    ;
  }

  if (v235)
  {
    CFRelease(v235);
  }

  OUTLINED_FUNCTION_62_3();
  flags = v444;
  a6 = v533;
LABEL_239:
  CFRelease(v222);
LABEL_240:
  CFRelease(v217);
  v214 = cf;
  if (*lhs)
  {
    CFRelease(*lhs);
  }

  if (v42)
  {
LABEL_333:
    v13 = 0;
    goto LABEL_278;
  }

LABEL_243:
  if (!v486)
  {
    goto LABEL_249;
  }

  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x2000000000;
  LODWORD(v619) = 0;
  __src.start.value = 0;
  *&__src.start.timescale = &__src;
  *&__src.start.epoch = 0x2000000000uLL;
  rhs.value = 0;
  *&rhs.timescale = &rhs;
  rhs.epoch = 0x2000000000;
  v632 = 0;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_18_10();
  *&__dst.start.timescale = 0x40000000;
  __dst.start.epoch = __videoReceiver_createUpdatedSamplingEventIdentifierForPresentationTime_block_invoke;
  __dst.duration.value = &unk_1E74839E0;
  *&v607 = __PAIR64__(p_time, v601);
  *(&v607 + 1) = v550;
  *&__dst.duration.timescale = &rhs;
  __dst.duration.epoch = &__src;
  v603[0] = &time;
  v603[1] = v256;
  flags = v444;
  epoch = v214;
  v605 = v444;
  v606 = v600;
  dispatch_sync(v257, &__dst);
  v13 = *(*&__src.start.timescale + 24);
  *(*&__src.start.timescale + 24) = 0;
  v258 = *(*&rhs.timescale + 24);
  if (v258)
  {
    CFRelease(v258);
    v259 = *(*&__src.start.timescale + 24);
    if (v259)
    {
      CFRelease(v259);
    }
  }

  v42 = *(*&time.timescale + 24);
  _Block_object_dispose(&rhs, 8);
  _Block_object_dispose(&__src, 8);
  _Block_object_dispose(&time, 8);
  if (!v42)
  {
    *v486 = v13;
LABEL_249:
    if (v469)
    {
      *v469 = a3;
      a3 = 0;
    }

    if (v478)
    {
      *v478 = v600;
      *(v478 + 8) = v601;
      *(v478 + 12) = p_time;
      *(v478 + 16) = v550;
    }

    if (v428)
    {
      *v428 = v594[1];
      v594[1] = 0;
    }

    if (*(DerivedStorage + 520))
    {
      v42 = 0;
      v13 = 0;
      if (fvr_isAllowedToLog(DerivedStorage + 520, 0) && dword_1ED4CBE90)
      {
        OUTLINED_FUNCTION_33_10();
        v260 = OUTLINED_FUNCTION_17_10();
        OUTLINED_FUNCTION_24_10(v260);
        OUTLINED_FUNCTION_27_11();
        if (v68)
        {
          if (v214)
          {
            v261 = CMBaseObjectGetDerivedStorage();
            v269 = (v261 + 228);
          }

          else
          {
            v269 = "";
          }

          OUTLINED_FUNCTION_21_10(v261, v262, v263, v264, v265, v266, v267, v268, v364, v372, v380, v388, v396[0], v396[1], v411, v419, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage, v533, v541, v550, v558[0], v558[1], v573, cf, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, *&__dst.start.value, __dst.start.epoch);
          LODWORD(time.value) = 136316162;
          *(&time.value + 4) = "videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForHostTimeInternal";
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = v214;
          OUTLINED_FUNCTION_56_6();
          v619 = v269;
          v620 = v270;
          *(v271 + 34) = v272;
          *&v623[2] = 1024;
          *&v623[4] = v273;
          OUTLINED_FUNCTION_4_45();
          OUTLINED_FUNCTION_2_54();
          OUTLINED_FUNCTION_66_4();
          flags = v444;
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v13 = 0;
        v42 = 0;
        value_low = v541;
      }
    }

    else
    {
      v13 = 0;
      v42 = 0;
    }
  }

LABEL_278:
  v324 = CMBaseObjectGetDerivedStorage();
  __src.start.value = 0;
  rhs.value = 0;
  if (!v42)
  {
    v332 = v324;
    v333 = *(v324 + 80);
    if (v333)
    {
      FigDataChannelConfigurationCopyPlayerLoggingIdentifier(v333, &__src);
      v333 = FigDataChannelConfigurationCopyLoggingIdentifier(*(v332 + 80), &rhs);
    }

    if (*MEMORY[0x1E695FF58] == 1)
    {
      v334 = rhs.value;
      time.value = 0;
      if (rhs.value)
      {
        if (CFStringGetLength(rhs.value) <= 8)
        {
          v335.length = CFStringGetLength(v334);
        }

        else
        {
          v335.length = 8;
        }

        v333 = OUTLINED_FUNCTION_5_41(v334, v335, v336, v337, v338, &time, v339, 0);
      }

      v340 = OUTLINED_FUNCTION_39_8(v333, v325, v326, v327, v328, v329, v330, v331, v364, v372, v380, v388, v396[0], v396[1], v411, v419, v428, v436, v444, v452, v460, v469, v478, v486, v494, p_epoch, v510[0], v510[1], DerivedStorage, v533, v541, v550, v558[0], v558[1], v573, cf, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, __dst.start.value);
      v342 = strncpy(v340, v341, 8uLL);
      v350 = __src.start.value;
      time.value = 0;
      if (__src.start.value)
      {
        if (CFStringGetLength(__src.start.value) <= 8)
        {
          v351.length = CFStringGetLength(v350);
        }

        else
        {
          v351.length = 8;
        }

        v342 = OUTLINED_FUNCTION_5_41(v350, v351, v352, v353, v354, &time, v355, 0);
      }

      v356 = OUTLINED_FUNCTION_39_8(v342, v343, v344, v345, v346, v347, v348, v349, v370, v378, v386, v394, v402, v409, v417, v426, v434, v442, v450, v458, v466, v475, v484, v492, v500, v508, v516, v523, v531, v539, v547, v556, v564, v571, v579, cfa, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, __dst.start.value);
      strncpy(v356, v357, 8uLL);
      OUTLINED_FUNCTION_38_7(v557, v371, v379, v387, v395, v403, v410, v418, v427, v435, v443, v451, v459, v467, v476, v485, v493, v501, v509, v517, v524, v532, v540, v548, v557, v565, v572, v580, cfg, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v590[0], v590[1], v591, v592, theArray[0], theArray[1], theArray[2], theArray[3], v594[0], v594[1], v595, v596, theString.value, *&theString.timescale, theString.epoch, v598, v599[0], v599[1], v600, v601, v600, __SPAIR64__(p_time, v601), __dst.start.epoch);
      kdebug_trace();
    }

    if (__src.start.value)
    {
      CFRelease(__src.start.value);
    }

    if (rhs.value)
    {
      CFRelease(rhs.value);
    }
  }

  if (theArray[0])
  {
    CFRelease(theArray[0]);
  }

  if (theArray[1])
  {
    CFRelease(theArray[1]);
  }

  if (theArray[2])
  {
    CFRelease(theArray[2]);
  }

  if (theArray[3])
  {
    CFRelease(theArray[3]);
  }

  if (v594[0])
  {
    CFRelease(v594[0]);
  }

  if (v594[1])
  {
    CFRelease(v594[1]);
  }

  if (value_low)
  {
    CFRelease(value_low);
  }

  if (v558[0])
  {
    CFRelease(v558[0]);
  }

  if (a6)
  {
    CFRelease(a6);
  }

  if (flags)
  {
    CFRelease(flags);
  }

  if (a3)
  {
    CFRelease(a3);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v42;
}