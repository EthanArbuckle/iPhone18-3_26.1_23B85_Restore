uint64_t ProduceStreamingAssetProperty(void *a1, uint64_t a2, const void *a3, CFMutableArrayRef *a4)
{
  v88 = 0;
  v8 = _os_feature_enabled_impl();
  v9 = MEMORY[0x1E695E480];
  v10 = MEMORY[0x1E695E4D0];
  if (v8)
  {
    time.value = 0;
    v91 = 0;
    cf.value = 0;
    LOBYTE(v90) = 0;
    v89 = 0;
    v11 = *(a2 + 512);
    v86 = a4;
    if (v11)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_4;
    }

    HTTPRequestOptions = EnsureStorageSessionCreated(a1, a2);
    if (HTTPRequestOptions)
    {
      goto LABEL_141;
    }

    HTTPRequestOptions = CreateHTTPRequestOptions(a2, &time);
    if (HTTPRequestOptions)
    {
      goto LABEL_141;
    }

    if (*(a2 + 16) != -1)
    {
      OUTLINED_FUNCTION_5_112();
      dispatch_once_f(v69, a2, v70);
    }

    CustomMediaSelectionSchemeFromJSON = *(a2 + 504);
    if (CustomMediaSelectionSchemeFromJSON)
    {
      goto LABEL_142;
    }

    HTTPRequestOptions = InternalURLAssetEnsureContentKeyBossIsCreatedAndUpToDate(a2);
    if (HTTPRequestOptions || (HTTPRequestOptions = EnsureStreamingNetworkURL(a1, a2), HTTPRequestOptions))
    {
LABEL_141:
      CustomMediaSelectionSchemeFromJSON = HTTPRequestOptions;
    }

    else
    {
      FigSimpleMutexLock();
      v26 = EnsureStreamingCache(a2, 1);
      if (!v26)
      {
        v27 = *(a2 + 408);
        if (v27)
        {
          v13 = CFRetain(v27);
        }

        else
        {
          v13 = 0;
        }

        FigSimpleMutexUnlock();
        v28 = *(a2 + 88);
        if (v28)
        {
          v29 = FigCFHTTPCreateCommonHTTPHeadersFromAssetCreationOptions(*v9, v28, *(a2 + 336), &cf);
          if (v29)
          {
            CustomMediaSelectionSchemeFromJSON = v29;
            v14 = 0;
            goto LABEL_61;
          }

          FigCFDictionaryGetBooleanIfPresent();
          if ((*(a2 + 81) & 2) != 0)
          {
            v31 = 1;
          }

          else
          {
            IsItOKToLogURLs = FigIsItOKToLogURLs();
            v31 = 9;
            if (!IsItOKToLogURLs)
            {
              v31 = 1;
            }
          }

          v38 = v31;
          ArrayValue = FigCFDictionaryGetArrayValue();
          if (ArrayValue && (v40 = ArrayValue, CFArrayGetCount(ArrayValue) >= 1))
          {
            v41 = CreateSanitizedOutOfBandAlternateTracksArray(v40, &v91);
            v12 = v91;
            if (v41)
            {
              CustomMediaSelectionSchemeFromJSON = v41;
              v14 = 0;
              if (!v91)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            }

            v37 = v38;
          }

          else
          {
            v37 = v38;
            v12 = 0;
          }

          BooleanValue = FigCFDictionaryGetBooleanValue();
          Value = FigCFDictionaryGetValue();
          StringValue = FigCFDictionaryGetStringValue();
          v36 = *v10;
          v42 = v36 == FigCFDictionaryGetValue();
          if (v36 == FigCFDictionaryGetValue())
          {
            v43 = ((v42 & 1) << 7) | 0x800;
          }

          else
          {
            v43 = v42 << 7;
          }

          if (v36 == FigCFDictionaryGetValue())
          {
            v43 |= 0x1000u;
          }

          v35 = time.value;
          FigCFDictionaryGetBooleanIfPresent();
          v33 = v43 | 0x10000;
        }

        else
        {
          v12 = 0;
          Value = 0;
          StringValue = 0;
          v33 = 0;
          BooleanValue = *MEMORY[0x1E695E4C0];
          v34 = v10;
          v35 = time.value;
          v36 = *v34;
          v37 = 1;
        }

        v44 = (a2 + 512);
        AllocatorForMedia = FigGetAllocatorForMedia();
        v46 = FigStreamingAssetPropertyLoaderCreate(AllocatorForMedia, *(a2 + 440), *(a2 + 536), v35, cf.value, v33, v37, *(a2 + 496), v13, *(a2 + 416), v12, Value, StringValue, BooleanValue == v36, (a2 + 512));
        if (v46)
        {
          CustomMediaSelectionSchemeFromJSON = v46;
          v14 = 0;
          v9 = MEMORY[0x1E695E480];
          v10 = MEMORY[0x1E695E4D0];
          if (!v12)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v11 = *v44;
          v10 = MEMORY[0x1E695E4D0];
          if (*v44)
          {
            v9 = MEMORY[0x1E695E480];
LABEL_4:
            v14 = CFRetain(v11);
            CustomMediaSelectionSchemeFromJSON = 0;
            if (!v12)
            {
              goto LABEL_61;
            }

            goto LABEL_60;
          }

          v14 = 0;
          CustomMediaSelectionSchemeFromJSON = 0;
          v9 = MEMORY[0x1E695E480];
          if (!v12)
          {
LABEL_61:
            if (time.value)
            {
              CFRelease(time.value);
            }

            if (cf.value)
            {
              CFRelease(cf.value);
            }

            if (v13)
            {
              CFRelease(v13);
            }

            if (CustomMediaSelectionSchemeFromJSON)
            {
              goto LABEL_111;
            }

            if (CFEqual(a3, @"assetProperty_CompatibleWithAirPlayVideo"))
            {
              DictionaryRepresentation = CFRetain(*v10);
LABEL_110:
              CustomMediaSelectionSchemeFromJSON = 0;
              *v86 = DictionaryRepresentation;
              goto LABEL_111;
            }

            OUTLINED_FUNCTION_33_26();
            if (!v48)
            {
              v49 = FigGetAllocatorForMedia();
              v50 = FigStreamingAssetLoaderCopyProperty(v14, a3, v49, v86);
              if (*(a2 + 112))
              {
                CustomMediaSelectionSchemeFromJSON = 4294954511;
LABEL_111:
                if (v14)
                {
                  CFRelease(v14);
                }

                goto LABEL_113;
              }

              CustomMediaSelectionSchemeFromJSON = v50;
              if (v50 == -12783)
              {
                v51 = 0;
              }

              else
              {
                v51 = v50;
              }

              if (v51 == -12646)
              {
                *(a2 + 380) = 1;
              }

              else if (v51)
              {
                goto LABEL_111;
              }

              if (CFEqual(a3, @"CustomMediaSelectionScheme"))
              {
                v52 = *v86;
                if (*v86)
                {
                  if (CFArrayGetCount(*v86) <= 0)
                  {
                    CFRelease(v52);
                  }

                  else
                  {
                    CustomMediaSelectionSchemeFromJSON = FigAssetCreateCustomMediaSelectionSchemeFromJSON(v52, v86);
                    CFRelease(v52);
                    if (CustomMediaSelectionSchemeFromJSON)
                    {
                      goto LABEL_111;
                    }
                  }
                }
              }

              OUTLINED_FUNCTION_33_26();
              if (!v48)
              {
LABEL_118:
                CustomMediaSelectionSchemeFromJSON = 0;
                goto LABEL_111;
              }
            }

            if (CFEqual(a3, @"Duration"))
            {
              OUTLINED_FUNCTION_9_47(MEMORY[0x1E6960C68]);
            }

            else
            {
              if (CFEqual(a3, @"assetProperty_MaximumVideoResolution"))
              {
                DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*MEMORY[0x1E695F060]);
                goto LABEL_110;
              }

              if (!CFEqual(a3, @"MinimumTimeOffsetFromLive"))
              {
                goto LABEL_118;
              }

              CMTimeMake(&time, 5, 1);
              v62 = *v9;
            }

            DictionaryRepresentation = CMTimeCopyAsDictionary(&time, v62);
            goto LABEL_110;
          }
        }

LABEL_60:
        CFRelease(v12);
        goto LABEL_61;
      }

      CustomMediaSelectionSchemeFromJSON = v26;
      FigSimpleMutexUnlock();
    }

LABEL_142:
    v14 = 0;
    v13 = 0;
    goto LABEL_61;
  }

  v75 = a1;
  v16 = CFEqual(a3, @"MediaSelectionArray");
  v84 = CFEqual(a3, @"Duration");
  v80 = CFEqual(a3, @"assetProperty_HLSAlternates");
  v82 = CFEqual(a3, @"Chapters");
  v79 = CFEqual(a3, @"LocalizedMSODisplayNames");
  v78 = CFEqual(a3, @"CustomMediaSelectionScheme");
  v81 = CFEqual(a3, @"assetProperty_HLSMetadata");
  v76 = CFEqual(a3, @"assetProperty_HLSSessionKeys");
  v77 = CFEqual(a3, @"assetProperty_AvailableMetadataFormats");
  v17 = CFEqual(a3, @"assetProperty_OriginalNetworkContentURL");
  v18 = CFEqual(a3, @"assetProperty_ProtectedStatus");
  v19 = CFEqual(a3, @"assetProperty_MaximumVideoResolution");
  v20 = CFEqual(a3, @"assetProperty_AvailableVideoDynamicRanges");
  v21 = CFEqual(a3, @"assetProperty_NominalVideoFrameRate");
  v22 = CFEqual(a3, @"MinimumTimeOffsetFromLive");
  v23 = v22;
  *a4 = 0;
  if (!v16 && !v84 && !v82 && !v79 && !v78 && !v81 && !v77 && !v17 && !v18 && !v19 && !v20 && !v21 && !v22 && !v80 && !v76)
  {
    v24 = a4;
    CustomMediaSelectionSchemeFromJSON = 0;
    if (CFEqual(a3, @"assetProperty_CompatibleWithAirPlayVideo"))
    {
      *v24 = CFRetain(*MEMORY[0x1E695E4D0]);
    }

    else
    {
      *v24 = 0;
    }

    goto LABEL_113;
  }

  v87 = a4;
  v53 = EnsureBytePump();
  if (v53)
  {
    goto LABEL_148;
  }

  if (!v84 && !v80 && !v82 && !v81 && !v18 && !v23)
  {
    goto LABEL_99;
  }

  v91 = 0;
  if (*(a2 + 380) != 2)
  {
    goto LABEL_99;
  }

  v90 = 0;
  *(a2 + 380) = 3;
  if (!*(*(CMBaseObjectGetVTable() + 16) + 32))
  {
    CustomMediaSelectionSchemeFromJSON = 4294954514;
    goto LABEL_113;
  }

  time = **&MEMORY[0x1E6960C70];
  cf = time;
  OUTLINED_FUNCTION_16_46();
  CustomMediaSelectionSchemeFromJSON = v58(v54, v55, v56, v57);
  if (!CustomMediaSelectionSchemeFromJSON)
  {
    OUTLINED_FUNCTION_12_58();
    v59 = FigThreadRegisterAbortAction();
    CustomMediaSelectionSchemeFromJSON = v59;
    if (!v59 || v59 == -17561)
    {
      dispatch_semaphore_wait(*(a2 + 368), 0xFFFFFFFFFFFFFFFFLL);
    }

    FigThreadUnregisterAbortAction();
    RemoveBytePumpListenersAndDoBarrier(a2);
    v60 = *(a2 + 368);
    if (v60)
    {
      dispatch_release(v60);
      *(a2 + 368) = 0;
    }

    if (!CustomMediaSelectionSchemeFromJSON)
    {
LABEL_99:
      OUTLINED_FUNCTION_33_26();
      if (!v48)
      {
        if (v61 == 5)
        {
          CustomMediaSelectionSchemeFromJSON = *(a2 + 392);
          goto LABEL_113;
        }

        v66 = *(a2 + 384);
        if (!v66)
        {
          CustomMediaSelectionSchemeFromJSON = 4294954513;
          goto LABEL_113;
        }

        if (v16)
        {
          FigBaseObject = FigBytePumpGetFigBaseObject(v66);
          v68 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v68 && !v68(FigBaseObject, 0x1F0B1EE98, *MEMORY[0x1E695E480], &v88) && v88)
          {
            v65 = CFDictionaryGetValue(v88, @"FBPAIK_MediaSelectionArray");
            if (!*v87)
            {
              if (v65)
              {
                v65 = CFRetain(v65);
              }

              goto LABEL_133;
            }

LABEL_179:
            CustomMediaSelectionSchemeFromJSON = 0;
            goto LABEL_113;
          }

LABEL_174:
          OUTLINED_FUNCTION_24_29();
          if (v48)
          {
            CustomMediaSelectionSchemeFromJSON = 0;
          }

          else
          {
            CustomMediaSelectionSchemeFromJSON = v74;
          }

          goto LABEL_113;
        }

        if (v80)
        {
          v53 = StreamingAssetCopyHLSAlternates(v66, v87);
          goto LABEL_148;
        }

        if (v19)
        {
          v53 = StreamingAssetCopyMaximumVideoResolution(v66, v87);
          goto LABEL_148;
        }

        if (v20)
        {
          v53 = StreamingAssetCopyAvailableVideoDynamicRanges(v66, v87);
          goto LABEL_148;
        }

        if (v21)
        {
          v53 = FigBytePumpCopyProperty(v66, 0x1F0B1F858, *MEMORY[0x1E695E480], v87);
          goto LABEL_148;
        }

        if (v17)
        {
          v53 = EnsureStreamingNetworkURL(v75, a2);
          goto LABEL_148;
        }

        if (v84)
        {
          v71 = kFigBytePumpProperty_Duration;
LABEL_171:
          if (!*v71)
          {
            goto LABEL_179;
          }

          FigBytePumpGetFigBaseObject(v66);
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v72 = OUTLINED_FUNCTION_177();
            v73(v72);
          }

          goto LABEL_174;
        }

        if (v82)
        {
          v71 = kFigBytePumpSyncProperty_Chapters;
          goto LABEL_171;
        }

        if (v79)
        {
          v71 = kFigBytePumpSyncProperty_LocalizedMediaSelectionOptionDisplayNames;
          goto LABEL_171;
        }

        if (v78)
        {
          v53 = StreamingAssetProduceCustomMediaSelectionScheme();
          goto LABEL_148;
        }

        if (v81)
        {
          v71 = kFigBytePumpSyncProperty_Metadata;
          goto LABEL_171;
        }

        if (v77)
        {
          v71 = kFigBytePumpSyncProperty_AvailableMetadataFormats;
          goto LABEL_171;
        }

        if (v18)
        {
          v71 = kFigBytePumpProperty_HasEncryptedContent;
          goto LABEL_171;
        }

        if (v23)
        {
          v71 = kFigBytePumpProperty_PrebufferReservation;
          goto LABEL_171;
        }

        if (!v76)
        {
          goto LABEL_179;
        }

        v53 = StreamingAssetCopySessionKeys(v66, v87);
LABEL_148:
        CustomMediaSelectionSchemeFromJSON = v53;
        goto LABEL_113;
      }

      if (v84)
      {
        OUTLINED_FUNCTION_9_47(MEMORY[0x1E6960C68]);
      }

      else
      {
        if (v19)
        {
          v65 = CGSizeCreateDictionaryRepresentation(*MEMORY[0x1E695F060]);
          goto LABEL_133;
        }

        if (!v23)
        {
          goto LABEL_179;
        }

        CMTimeMake(&time, 5, 1);
        v64 = *MEMORY[0x1E695E480];
      }

      v65 = CMTimeCopyAsDictionary(&time, v64);
LABEL_133:
      CustomMediaSelectionSchemeFromJSON = 0;
      *v87 = v65;
    }
  }

LABEL_113:
  if (v88)
  {
    CFRelease(v88);
  }

  return CustomMediaSelectionSchemeFromJSON;
}

uint64_t ProduceFormatReaderAssetProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_471();
  v8 = CFEqual(v7, @"assetProperty_Tracks");
  v9 = MEMORY[0x1E695E480];
  if (v8)
  {
    v10 = OUTLINED_FUNCTION_104_0();
    v12 = EnsureTracksArrayCreated(v10, v11);
    if (!v12 && *(v5 + 464))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_10_61();
      *(v5 + 468) = 1;
    }

    v13 = *(v5 + 272);
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    goto LABEL_15;
  }

  if (CFEqual(v4, @"assetProperty_FormatReader"))
  {
    v14 = OUTLINED_FUNCTION_104_0();
    IsSelfContainedProperty = EnsureFormatReaderCreated(v14, v15);
    if (!IsSelfContainedProperty)
    {
      v13 = *(v5 + 240);
      if (!v13)
      {
LABEL_11:
        v12 = 0;
LABEL_15:
        *a4 = v13;
        goto LABEL_16;
      }

LABEL_10:
      v13 = CFRetain(v13);
      goto LABEL_11;
    }

    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_MatchingContainerLabelType"))
  {
    v17 = OUTLINED_FUNCTION_104_0();
    v12 = EnsureFormatReaderCreated(v17, v18);
    if (v12)
    {
      goto LABEL_16;
    }

    v13 = CFNumberCreate(*v9, kCFNumberSInt32Type, (v5 + 256));
    goto LABEL_15;
  }

  if (CFEqual(v4, @"assetProperty_MatchingContainerLabel"))
  {
    v23 = OUTLINED_FUNCTION_104_0();
    IsSelfContainedProperty = EnsureFormatReaderCreated(v23, v24);
    if (!IsSelfContainedProperty)
    {
      v13 = *(v5 + 248);
      if (!v13)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_70;
  }

  if (CFEqual(v4, @"Duration"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceDurationProperty();
LABEL_70:
    v12 = IsSelfContainedProperty;
    goto LABEL_16;
  }

  if (CFEqual(v4, @"Lyrics"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceLyricsProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"PreferredRate"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProducePreferredRateProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"PreferredVolume"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProducePreferredVolumeProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"PreferredTransform"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProducePreferredTransformProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_TrackReferences"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceTrackReferencesProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_AlternateTrackGroups"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceAlternateTrackGroupsProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_ProvidesPreciseDurationAndTiming"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProducePreciseDurationAndTimingProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_AvailableMetadataFormats"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceAvailableMetadataFormatsProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_FormatSpecificMetadataFormat"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceFormatSpecificMetadataFormatProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_CommonMetadata"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceCommonMetadataProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_QuickTimeUserData") || CFEqual(v4, @"assetProperty_ISOUserData") || CFEqual(v4, @"assetProperty_QuickTimeMetadata") || CFEqual(v4, @"assetProperty_iTunesMetadata") || CFEqual(v4, @"assetProperty_ID3Metadata") || CFEqual(v4, @"assetProperty_ID3MetadataBC") || CFEqual(v4, @"assetProperty_VorbisCommentMetadata"))
  {
    goto LABEL_69;
  }

  if (CFEqual(v4, @"assetProperty_HLSMetadata") || CFEqual(v4, @"assetProperty_HLSAlternates") || CFEqual(v4, @"assetProperty_HLSSessionKeys") || CFEqual(v4, @"assetProperty_AVCHDMetadata"))
  {
    goto LABEL_57;
  }

  if (CFEqual(v4, @"assetProperty_FormatSpecificMetadata"))
  {
LABEL_69:
    v25 = OUTLINED_FUNCTION_104_0();
    ProduceMetadataPropertyFromMetadataReader(v25, v26, v27);
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_ChapterGroupInfo"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceChapterGroupInfoProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"CreationDate"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceCreationDateProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_InitialSamples"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceInitialSamplesProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_CPEProtector"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceCPEProtectorProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_ProtectedStatus"))
  {
    v28 = OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceProtectedStatusProperty(v28, v29, v30);
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_SHA1Digest"))
  {
    v31 = OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceSHA1DigestProperty(v31, v32, v33);
    goto LABEL_70;
  }

  if (CFEqual(v4, @"MediaSelectionArray"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceMediaSelectionArrayProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"iTunesGaplessInfo"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceiTunesGaplessInfoProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"iTunesSoundCheckVolumeNormalization"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceiTunesSoundCheckVolumeNormalizationProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_CouldContainFragments"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceCouldContainFragmentsProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_ContainsFragments"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceContainsFragmentsProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_MovieExtendsDuration"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceMovieExtendsDurationProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_CameraRollValidation"))
  {
    v45 = OUTLINED_FUNCTION_14_40();
    ProduceAssetCameraRollValidationProperty(v45, v46, v47);
    goto LABEL_97;
  }

  if (CFEqual(v4, @"assetProperty_MediaPlaybackValidation"))
  {
    v48 = OUTLINED_FUNCTION_14_40();
    ProduceAssetMediaPlaybackValidationProperty(v48, v49, v50);
    goto LABEL_97;
  }

  if (CFEqual(v4, @"assetProperty_CompatibleWithPhotosTranscodingService"))
  {
    v51 = OUTLINED_FUNCTION_14_40();
    ProduceAssetCompatibleWithPhotosTranscodingServiceProperty(v51, v52, v53);
    goto LABEL_97;
  }

  if (CFEqual(v4, @"Chapters"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceChaptersProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"LocalizedMSODisplayNames") || CFEqual(v4, @"CustomMediaSelectionScheme"))
  {
    v40 = OUTLINED_FUNCTION_104_0();
    IsSelfContainedProperty = ProduceFigStdAssetOptionalProperty(v40, v41, v4, a4);
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_MovieProxy"))
  {
    v54 = OUTLINED_FUNCTION_14_40();
    ProduceMovieProxyProperty(v54, v55, v56);
    goto LABEL_70;
  }

  if (CFEqual(v4, @"AssetIsSelfContained"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceAssetIsSelfContainedProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"NaturalTimeScale"))
  {
    v57 = OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceAssetNaturalTimeScaleProperty(v57, v58, v59);
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_CompatibleWithAirPlayVideo"))
  {
    v34 = OUTLINED_FUNCTION_14_40();
    ProduceAssetCompatibleWithAirPlayVideoProperty(v34, v35, v36);
LABEL_97:
    v12 = 0;
    goto LABEL_16;
  }

  if (CFEqual(v4, @"AssetAnalysisMessages"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceAssetAnalysisMessagesProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"IsAssetAnalysisActive"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceIsAssetAnalysisActiveProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_MaximumVideoResolution"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceMaximumVideoResolutionProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_AvailableVideoDynamicRanges"))
  {
    v37 = OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceAvailableVideoDynamicRangesProperty(v37, v38, v39);
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_NominalVideoFrameRate"))
  {
    v42 = OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceNominalVideoFrameRateProperty(v42, v43, v44);
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_moovAtomSize"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProducemoovAtomSizeProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_OriginalNetworkContentURL"))
  {
    goto LABEL_57;
  }

  if (CFEqual(v4, @"assetProperty_FirstFragmentSequenceNumber"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceFirstFragmentSequenceNumberProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"assetProperty_FragmentCount"))
  {
    OUTLINED_FUNCTION_14_40();
    IsSelfContainedProperty = ProduceFragmentCountProperty();
    goto LABEL_70;
  }

  if (CFEqual(v4, @"MinimumTimeOffsetFromLive"))
  {
LABEL_57:
    v12 = 0;
    *a4 = 0;
    goto LABEL_16;
  }

  v12 = -12172;
LABEL_16:
  if (v12 >> 1 == 2147477256 || v12 == -12787)
  {
    v20 = 0;
  }

  else
  {
    v20 = v12;
  }

  if (!v20 && *(v5 + 464))
  {
    if (!*(v5 + 456))
    {
      if (_MergedGlobals_118 != -1)
      {
        OUTLINED_FUNCTION_14_53(&_MergedGlobals_118);
      }

      *(v5 + 456) = CFDictionaryCreateMutable(*v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_10_61();
    }

    Value = CFDictionaryGetValue(qword_1ED4CB8B0, v4);
    if (Value)
    {
      CFDictionaryAddValue(*(v5 + 456), v4, Value);
    }
  }

  return v20;
}

void URLAssetDoneDownloadingGuts(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  valuePtr = 0;
  v17 = 0;
  cf = 0;
  if (!*(a1 + 112) && *(a1 + 160) == a2 && FigAtomicCompareAndSwap32())
  {
    CMByteStreamGetCMBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      goto LABEL_11;
    }

    v5 = OUTLINED_FUNCTION_17_41();
    valuePtr = v6(v5);
    if (valuePtr)
    {
      goto LABEL_12;
    }

    CMBaseObject = CMByteStreamGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v8)
    {
LABEL_11:
      valuePtr = -12782;
      goto LABEL_12;
    }

    valuePtr = v8(CMBaseObject, *MEMORY[0x1E695FF70], 0, &cf);
    if (valuePtr)
    {
      goto LABEL_12;
    }

    if (CFEqual(cf, v17))
    {
      v16 = 0;
      GetContentProtectionOptions(a1, &v16, 0, 0);
      if (v16)
      {
        CFRetain(a1);
        dispatch_group_async_f(*(a1 + 296), *(a1 + 304), a1, PerformMD5Check);
      }

      else
      {
        v14 = CMByteStreamGetCMBaseObject();
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v15)
        {
          v15(v14, *MEMORY[0x1E6960DD0], *MEMORY[0x1E695E4D0]);
        }

        ReviseDownloadToDestinationResultProperty(a1, 0);
        CFRetain(a1);
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_0_176();
        FigDeferNotificationToDispatchQueue();
      }
    }

    else
    {
      v9 = -16091;
      valuePtr = -16091;
      if (a3)
      {
        CFDictionaryGetTypeID();
        if (CMBaseObject != OUTLINED_FUNCTION_68_6())
        {
          goto LABEL_23;
        }

        Value = CFDictionaryGetValue(a3, @"CRABS_StatusCode");
        if (!Value)
        {
          goto LABEL_23;
        }

        v11 = Value;
        CFNumberGetTypeID();
        if (CMBaseObject != OUTLINED_FUNCTION_68_6())
        {
          goto LABEL_23;
        }

        LODWORD(v16) = 0;
        CFNumberGetValue(v11, kCFNumberIntType, &v16);
        v9 = v16;
        if (v16 == -12542)
        {
          goto LABEL_12;
        }

        if (v16)
        {
          valuePtr = v16;
        }

        else
        {
LABEL_23:
          v9 = -16091;
        }
      }

      ReviseDownloadToDestinationResultProperty(a1, v9);
      v12 = *MEMORY[0x1E695E480];
      v16 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
      v13 = CFDictionaryCreate(v12, kFigAssetPayloadKey_Result, &v16, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFRetain(a1);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_0_176();
      FigDeferNotificationToDispatchQueue();
      if (v13)
      {
        CFRelease(v13);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }
}

void PerformMD5Check(void *cf)
{
  valuePtr = 0;
  theDict = 0;
  v9 = 0;
  values[1] = 0;
  if (!*(cf + 112) && !*(cf + 195))
  {
    GetContentProtectionOptions(cf, &v9, 0, 0);
    valuePtr = SetupBytestreamFactoryParameters();
    if (!valuePtr)
    {
      v2 = EncryptedFileMD5Check(v9, cf[20], 0, 0);
      valuePtr = v2;
      *(cf + 195) = 1;
      ReviseDownloadToDestinationResultProperty(cf, v2);
      if (v2)
      {
        v3 = *MEMORY[0x1E695E480];
        values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
        v4 = CFDictionaryCreate(v3, kFigAssetPayloadKey_Result, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFRetain(cf);
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_0_176();
        FigDeferNotificationToDispatchQueue();
        if (v4)
        {
          CFRelease(v4);
        }

        if (values[0])
        {
          CFRelease(values[0]);
        }
      }

      else
      {
        CMBaseObject = CMByteStreamGetCMBaseObject();
        v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v6)
        {
          v6(CMBaseObject, *MEMORY[0x1E6960DD0], *MEMORY[0x1E695E4D0]);
        }

        CFRetain(cf);
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_0_176();
        FigDeferNotificationToDispatchQueue();
      }
    }

    if (theDict)
    {
      CFRelease(theDict);
      theDict = 0;
    }
  }

  CFRelease(cf);
}

uint64_t SetupBytestreamFactoryParameters()
{
  OUTLINED_FUNCTION_38_19();
  *v2 = 0;
  v2[1] = 0;
  if (*(v3 + 16) != -1)
  {
    OUTLINED_FUNCTION_5_112();
    dispatch_once_f(v32, v1, v33);
  }

  v4 = *(v1 + 504);
  if (!v4)
  {
    v5 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      fig_log_get_emitter();
      v4 = FigSignalErrorAtGM();
      goto LABEL_71;
    }

    v7 = Mutable;
    v8 = *(v1 + 80);
    if (v8)
    {
      *v0 |= 2u;
    }

    if ((v8 & 0x200) != 0)
    {
      *v0 |= 0x1000u;
    }

    v9 = *(v1 + 88);
    if (!v9)
    {
      v15 = 0;
      goto LABEL_51;
    }

    if (CFDictionaryGetValue(v9, @"assetOption_PrepareForIncrementalFragments"))
    {
      *v0 |= 0x800u;
    }

    v10 = *MEMORY[0x1E695E4D0];
    if (v10 == CFDictionaryGetValue(*(v1 + 88), @"assetOption_UseAWDL"))
    {
      CFDictionarySetValue(v7, @"factoryOption_UseAWDL", v10);
    }

    URLValue = FigCFDictionaryGetURLValue();
    if (URLValue)
    {
      CFDictionarySetValue(v7, @"factoryOption_DownloadDestinationURL", URLValue);
    }

    FigCFDictionaryGetURLValue();
    FigCFDictionaryGetBooleanIfPresent();
    if (CFDictionaryGetValueIfPresent(*(v1 + 88), @"assetOption_NetworkCacheUsePathAsKey", &value) && value == v10)
    {
      *v0 |= 8u;
    }

    if (CFDictionaryGetValueIfPresent(*(v1 + 88), @"assetOption_NetworkCacheUseURLWithoutQueryStringAsKey", &value) && value == v10)
    {
      *v0 |= 0x20u;
    }

    v12 = CFDictionaryGetValue(*(v1 + 88), @"assetOption_NetworkCacheBacking");
    if (v12)
    {
      v13 = v12;
      if (CFEqual(v12, @"assetOption_DiskBacking"))
      {
        v14 = kFigByteStreamFactoryBackingOption_Disk;
LABEL_30:
        CFDictionarySetValue(v7, @"factoryOption_Backing", *v14);
        goto LABEL_31;
      }

      if (CFEqual(v13, @"assetOption_NonPurgeableMemoryBacking"))
      {
        v16 = CFDictionaryGetValue(*(v1 + 88), @"assetOption_NetworkCacheNonPurgeableMemoryLimit");
        if (v16)
        {
          CFDictionarySetValue(v7, @"factoryOption_NonPurgeableMemoryLimit", v16);
        }

        v14 = &kFigByteStreamFactoryBackingOption_NonPurgeableMemory;
        goto LABEL_30;
      }
    }

LABEL_31:
    BooleanValue = FigCFDictionaryGetBooleanValue();
    if (BooleanValue)
    {
      CFDictionarySetValue(v7, @"factoryOption_NoPersistentCache", BooleanValue);
    }

    NumberValue = FigCFDictionaryGetNumberValue();
    if (NumberValue)
    {
      CFDictionarySetValue(v7, @"factoryOption_MaxSizeAllowedForCellularAccess", NumberValue);
    }

    v19 = CFDictionaryGetValue(*(v1 + 88), @"assetOption_ParentNetworkActivityToken");
    v15 = FigNWActivityCreateFromToken(v19);
    if (v15)
    {
      CFDictionarySetValue(v7, @"factoryOption_ParentNetworkActivity", v15);
    }

    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    DictionaryValue = FigCFDictionaryGetDictionaryValue();
    if (DictionaryValue)
    {
      CFDictionarySetValue(v7, @"factoryOption_AlternativeConfigurationOptions", DictionaryValue);
    }

    v21 = FigCFDictionaryGetDictionaryValue();
    if (v21)
    {
      CFDictionarySetValue(v7, @"factoryOption_ByteRangeInFile", v21);
    }

    v22 = FigCFDictionaryGetBooleanValue();
    value = v22;
    if (v22 && v22 == v10)
    {
      *v0 |= 0x400u;
    }

    v23 = FigCFDictionaryGetBooleanValue();
    value = v23;
    if (v23)
    {
      CFDictionarySetValue(v7, @"factoryOption_DisableNetworkLargeDownload", v23);
    }

    v24 = FigCFDictionaryGetBooleanValue();
    value = v24;
    if (v24)
    {
      CFDictionarySetValue(v7, @"factoryOption_DisableNetworkProbeRequest", v24);
    }

    v25 = FigCFDictionaryGetBooleanValue();
    if (v25)
    {
      CFDictionarySetValue(v7, @"factoryOption_RequiresCustomURLLoading", v25);
    }

    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
LABEL_51:
    if (*(v1 + 584))
    {
      FigCFDictionarySetValue();
    }

    v26 = *(v1 + 496);
    if (v26)
    {
      CFDictionarySetValue(v7, @"factoryOption_CustomURLLoader", v26);
    }

    HTTPRequestOptions = CreateHTTPRequestOptions(v1, &v34);
    if (HTTPRequestOptions)
    {
      v4 = HTTPRequestOptions;
    }

    else
    {
      if (v34)
      {
        CFDictionarySetValue(v7, @"factoryOption_HTTPRequestOptions", v34);
      }

      v28 = *(v1 + 80);
      if ((v28 & 0x38) != 0)
      {
        v29 = 30;
      }

      else
      {
        v29 = 2;
      }

      *v0 |= FigByteStreamFactoryTranslateReferenceSecurityOptions(v29 & (v28 >> 1));
      v30 = FigCFHTTPCreateCommonHTTPHeadersFromAssetCreationOptions(v5, *(v1 + 88), *(v1 + 336), &cf);
      v4 = v30;
      if (v30 || !cf)
      {
        if (v30)
        {
          goto LABEL_69;
        }
      }

      else
      {
        CFDictionarySetValue(v7, @"factoryOption_HTTPHeaders", cf);
      }

      if (CFDictionaryGetCount(v7) >= 1)
      {
        v4 = 0;
        *(v0 + 8) = v7;
        if (!v15)
        {
          goto LABEL_71;
        }

LABEL_70:
        CFRelease(v15);
        goto LABEL_71;
      }

      v4 = 0;
    }

LABEL_69:
    CFRelease(v7);
    if (!v15)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_71:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  return v4;
}

void ReviseTracksArrayProperty(uint64_t a1)
{
  cf = 0;
  count = 0;
  v2 = MEMORY[0x19A8D0E00](a1 + 472);
  if (v2)
  {
    v40 = v2;
    LockTrackMacroPropertyState();
    v3 = *(a1 + 240);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v4 || v4(v3, &count))
    {
      v15 = 0;
      Mutable = 0;
      v22 = 0;
      v9 = 0;
      v23 = v40;
      goto LABEL_48;
    }

    if (!count)
    {
      v9 = 0;
      theArray = 0;
      Mutable = 0;
      v23 = v40;
      goto LABEL_45;
    }

    v5 = *MEMORY[0x1E695E480];
    v6 = MEMORY[0x1E695E9C0];
    theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    Mutable = CFArrayCreateMutable(v5, 0, v6);
    v8 = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
    v9 = v8;
    if (v8)
    {
      if (count >= 1)
      {
        v10 = 0;
        v11 = v8;
        do
        {
          v12 = *(a1 + 240);
          v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (!v13)
          {
            break;
          }

          if (v13(v12, v10, 0, 0, v11))
          {
            break;
          }

          ++v10;
          v11 += 4;
        }

        while (count > v10);
      }

      MutableCopy = FigCFArrayCreateMutableCopy();
      v15 = MutableCopy;
      if (MutableCopy)
      {
        v16 = CFArrayGetCount(MutableCopy);
        if (v16 >= 1)
        {
          v17 = 0;
          do
          {
            LODWORD(value) = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(v15, v17);
            v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (!v19 || v19(ValueAtIndex, &value, 0) || (v20 = count, count < 1))
            {
LABEL_16:
              CFArrayAppendValue(Mutable, ValueAtIndex);
              CFArrayRemoveValueAtIndex(v15, v17);
              --v16;
            }

            else
            {
              v21 = v9;
              while (*v21 != value)
              {
                ++v21;
                if (!--v20)
                {
                  goto LABEL_16;
                }
              }

              *v21 = 0;
              ++v17;
            }
          }

          while (v17 < v16);
        }

        v38 = Mutable;
        v24 = count;
        if (count >= 1)
        {
          v25 = 0;
          v41 = v9;
          do
          {
            v26 = v9[v25];
            if (v26)
            {
              value = 0;
              v27 = *(a1 + 240);
              v28 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v28)
              {
                v28(v27, v26, &cf, 0);
              }

              if (cf)
              {
                if (EnsureTrackWorkQueueCreated(a1))
                {
                  v22 = theArray;
                  v23 = v40;
                  Mutable = v38;
                  goto LABEL_48;
                }

                v29 = CFGetAllocator(a1);
                v30 = *(a1 + 240);
                v31 = cf;
                v32 = *(a1 + 160);
                v33 = *(a1 + 280);
                v34 = *(a1 + 80);
                v35 = *(a1 + 464);
                TrackMacroPropertyDefinitions = GetTrackMacroPropertyDefinitions(*(a1 + 608));
                URLAssetCreateAssetTrack(v29, v30, v31, v32, (a1 + 592), v33, BYTE1(v34) & 1, v35, TrackMacroPropertyDefinitions, *(a1 + 616), (*(a1 + 80) & 0x200) != 0, &value);
                if (value)
                {
                  CFArrayAppendValue(theArray, value);
                  CFArrayAppendValue(v15, value);
                  if (value)
                  {
                    CFRelease(value);
                    value = 0;
                  }
                }

                v9 = v41;
                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }
              }

              v24 = count;
            }

            ++v25;
          }

          while (v24 > v25);
        }

        if (CFArrayGetCount(v15))
        {
          v37 = *(a1 + 272);
          *(a1 + 272) = v15;
          CFRetain(v15);
          v23 = v40;
          Mutable = v38;
          if (!v37)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

        CFRelease(v15);
        v23 = v40;
        Mutable = v38;
LABEL_45:
        v15 = 0;
        v37 = *(a1 + 272);
        *(a1 + 272) = 0;
        if (!v37)
        {
LABEL_47:
          v22 = theArray;
          ReviseTrackMacroPropertyStateTracks(*(a1 + 608), v15, theArray, Mutable);
          ReviseProperty(v23, @"assetProperty_Tracks", v15);
          goto LABEL_48;
        }

LABEL_46:
        CFRelease(v37);
        goto LABEL_47;
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
      v15 = 0;
    }

    v22 = theArray;
    v23 = v40;
LABEL_48:
    UnlockTrackMacroPropertyState();
    if (cf)
    {
      CFRelease(cf);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    CFRelease(v23);
  }

  else
  {
    v9 = 0;
  }

  free(v9);
  CFRelease(a1);
}

uint64_t EnsureBytePump()
{
  OUTLINED_FUNCTION_38_19();
  Options = EnsureContentStreamCreated(v2, v3);
  if (Options)
  {
    goto LABEL_48;
  }

  if (!*(v0 + 192))
  {
    fig_log_get_emitter();
    v5 = FigSignalErrorAtGM();
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

  Options = EnsureStorageSessionCreated(v1, v0);
  if (Options)
  {
    goto LABEL_48;
  }

  if (*(v0 + 380))
  {
    v5 = 0;
    goto LABEL_6;
  }

  *(v0 + 368) = dispatch_semaphore_create(0);
  *(v0 + 432) = FigReentrantMutexCreate();
  Options = CreateBytePumpCreateOptions(v1, v0, 1, &cf);
  if (Options)
  {
    goto LABEL_48;
  }

  Options = FigCFHTTPCreateCommonHTTPHeadersFromAssetCreationOptions(*MEMORY[0x1E695E480], *(v0 + 88), *(v0 + 336), &v23);
  if (Options)
  {
    goto LABEL_48;
  }

  CreateSegmentBytePump(v1, v0, v23, cf, (v0 + 384));
  if (Options)
  {
    goto LABEL_48;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_160();
  Options = OUTLINED_FUNCTION_3_17();
  if (Options)
  {
    goto LABEL_48;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_160();
  Options = OUTLINED_FUNCTION_3_17();
  if (Options)
  {
    goto LABEL_48;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_160();
  Options = OUTLINED_FUNCTION_3_17();
  if (Options)
  {
    goto LABEL_48;
  }

  Options = FigStartForwardingMediaServicesProcessDeathNotification();
  if (Options)
  {
    goto LABEL_48;
  }

  *(v0 + 377) = 1;
  if (*(v0 + 379))
  {
    FigBaseObject = FigBytePumpGetFigBaseObject(*(v0 + 384));
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v14)
    {
      v14(FigBaseObject, 0x1F0B1F398, *MEMORY[0x1E695E4D0]);
    }
  }

  v15 = *(v0 + 384);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v16)
  {
    v5 = 4294954514;
    goto LABEL_42;
  }

  Options = v16(v15);
  if (Options)
  {
LABEL_48:
    v5 = Options;
LABEL_42:
    *(v0 + 392) = v5;
    *(v0 + 380) = 5;
    v18 = *(v0 + 384);
    if (v18)
    {
      v19 = FigBytePumpGetFigBaseObject(v18);
      v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v20)
      {
        v20(v19, 0x1F0B1F098, 0);
      }
    }

    v21 = *(v0 + 40);
    if (v21 && !FigAssetDownloadCoordinatorRelinquishAccessToURL(v21))
    {
      *(v0 + 40) = 0;
    }

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_12_58();
  v17 = FigThreadRegisterAbortAction();
  v5 = v17;
  if (!v17 || v17 == -17561)
  {
    dispatch_semaphore_wait(*(v0 + 368), 0xFFFFFFFFFFFFFFFFLL);
  }

  FigThreadUnregisterAbortAction();
  if (*(v0 + 380) == 5)
  {
    v5 = *(v0 + 392);
  }

  if (v5)
  {
    goto LABEL_42;
  }

LABEL_6:
  if (*(v0 + 378))
  {
    RemoveBytePumpListenersAndDoBarrier(v0);
    v7 = *(v0 + 380);
    if (v7 == 1)
    {
      v8 = FigBytePumpGetFigBaseObject(*(v0 + 384));
      if (v8)
      {
        v9 = v8;
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v10)
        {
          v10(v9);
        }
      }

      v11 = *(v0 + 384);
      if (v11)
      {
        CFRelease(v11);
        *(v0 + 384) = 0;
      }

      v7 = *(v0 + 380);
    }

    if (v7 == 4)
    {
      v12 = *(v0 + 368);
      if (v12)
      {
        dispatch_release(v12);
        *(v0 + 368) = 0;
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return v5;
}

uint64_t CreateBytePumpCreateOptions(void *a1, uint64_t a2, int a3, __CFDictionary **a4)
{
  value = 0;
  v45 = 0;
  theArray = 0;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    v35 = FigSignalErrorAtGM();
    goto LABEL_65;
  }

  v10 = Mutable;
  v11 = MEMORY[0x1E695E4D0];
  if (*(a2 + 88))
  {
    cf = 0;
    BooleanValue = FigCFDictionaryGetBooleanValue();
    if (BooleanValue)
    {
      CFDictionarySetValue(v10, @"FBPCreateOption_InheritURIQueryComponentFromReferencingURI", BooleanValue);
    }

    DictionaryValue = FigCFDictionaryGetDictionaryValue();
    if (DictionaryValue)
    {
      CFDictionarySetValue(v10, @"FBPCreateOption_AlternativeConfigurationOptions", DictionaryValue);
    }

    ArrayValue = FigCFDictionaryGetArrayValue();
    if (ArrayValue)
    {
      v15 = ArrayValue;
      if (CFArrayGetCount(ArrayValue) >= 1)
      {
        SanitizedOutOfBandAlternateTracksArray = CreateSanitizedOutOfBandAlternateTracksArray(v15, &value);
        if (SanitizedOutOfBandAlternateTracksArray)
        {
          v35 = SanitizedOutOfBandAlternateTracksArray;
          v22 = 0;
          goto LABEL_61;
        }

        CFDictionarySetValue(v10, @"FBPCreateOption_OutOfBandAlternateTracks", value);
      }
    }

    v17 = FigCFDictionaryGetDictionaryValue();
    if (v17)
    {
      v18 = v17;
      v19 = CFDictionaryGetValue(v17, @"assetOption_iTunesStoreContentRentalID");
      if (v19)
      {
        CFDictionarySetValue(v10, @"FBPCreateOption_iTunesRentalID", v19);
      }

      v20 = CFDictionaryGetValue(v18, @"assetOption_iTunesStoreContentDSID");
      if (v20)
      {
        CFDictionarySetValue(v10, @"FBPCreateOption_iTunesAccountID", v20);
      }
    }

    if (FigCFDictionaryGetInt64IfPresent())
    {
      CFDictionarySetValue(v10, @"FBPCreateOption_DisallowCellularAccess", *v11);
    }

    v21 = CFDictionaryGetValue(*(a2 + 88), @"assetOption_ParentNetworkActivityToken");
    v22 = FigNWActivityCreateFromToken(v21);
    if (v22)
    {
      CFDictionarySetValue(v10, @"FBPCreateOption_ParentNetworkActivity", v22);
    }

    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    HTTPRequestOptions = InternalURLAssetEnsureDownloadTokenEstablished(a2);
    if (HTTPRequestOptions)
    {
      goto LABEL_76;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    v22 = 0;
  }

  HTTPRequestOptions = EnsureStreamingNetworkURL(a1, a2);
  if (!HTTPRequestOptions)
  {
    FigSimpleMutexLock();
    v24 = EnsureStreamingCache(a2, a3);
    if (v24)
    {
      v35 = v24;
      FigSimpleMutexUnlock();
      goto LABEL_61;
    }

    v25 = *(a2 + 408);
    if (v25)
    {
      v26 = &kFigBytePumpCreateOption_StreamingCache;
      if (*(a2 + 416))
      {
        v26 = &kFigBytePumpCreateOption_PlaylistCache;
      }

      CFDictionarySetValue(v10, *v26, v25);
    }

    FigSimpleMutexUnlock();
    HTTPRequestOptions = CreateHTTPRequestOptions(a2, &v45);
    if (!HTTPRequestOptions)
    {
      if (v45)
      {
        CFDictionarySetValue(v10, @"FBPCreateOption_HTTPRequestOptions", v45);
      }

      v27 = *(a2 + 512);
      if (!v27)
      {
LABEL_37:
        v28 = *(a2 + 384);
        if (v28)
        {
          v41 = 0;
          cf = 0;
          FigBaseObject = FigBytePumpGetFigBaseObject(v28);
          v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v30 && !v30(FigBaseObject, 0x1F0B1F478, v8, &cf))
          {
            CFDictionarySetValue(v10, @"FBPCreateOption_CPECryptors", cf);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          v31 = FigBytePumpGetFigBaseObject(*(a2 + 384));
          v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v32)
          {
            v33 = v32(v31, 0x1F0B1F2D8, v8, &v41);
            v34 = v41;
            if (!v33)
            {
              CFDictionarySetValue(v10, @"FBPCreateOption_StoreBagSessionConfiguration", v41);
              v34 = v41;
            }

            if (v34)
            {
              CFRelease(v34);
            }
          }
        }

        HTTPRequestOptions = InternalURLAssetEnsureContentKeySessionCreated(a2);
        if (!HTTPRequestOptions)
        {
          CFDictionarySetValue(v10, @"FBPCreateOption_DefaultContentKeySession", *(a2 + 520));
          HTTPRequestOptions = InternalURLAssetEnsureContentKeyBossIsCreatedAndUpToDate(a2);
          if (!HTTPRequestOptions)
          {
            CFDictionarySetValue(v10, @"FBPCreateOption_ContentKeyBoss", *(a2 + 528));
            if ((*(a2 + 81) & 2) != 0)
            {
              CFDictionarySetValue(v10, @"FBPCreateOption_DoNotLogURLs", *v11);
            }

            if (*(a2 + 16) != -1)
            {
              OUTLINED_FUNCTION_5_112();
              dispatch_once_f(v39, a2, v40);
            }

            v35 = *(a2 + 504);
            if (!v35)
            {
              CFDictionarySetValue(v10, @"FBPCreateOption_CustomURLLoader", *(a2 + 496));
              if (!CFDictionaryGetCount(v10))
              {
                CFRelease(v10);
                v10 = 0;
              }

              if (*(a2 + 469))
              {
                v36 = v11;
              }

              else
              {
                v36 = MEMORY[0x1E695E4C0];
              }

              CFDictionarySetValue(v10, @"FBPCreateOption_ABRHistoryRecordingEnabled", *v36);
              v35 = 0;
              *a4 = v10;
              v10 = 0;
            }

            goto LABEL_61;
          }
        }

        goto LABEL_76;
      }

      HTTPRequestOptions = FigStreamingAssetPropertyLoaderCopyAndClearMetricEvents(v27, &theArray);
      if (!HTTPRequestOptions)
      {
        if (theArray && CFArrayGetCount(theArray))
        {
          CFDictionarySetValue(v10, @"FBPCreateOption_MetricEvents", theArray);
        }

        goto LABEL_37;
      }
    }
  }

LABEL_76:
  v35 = HTTPRequestOptions;
LABEL_61:
  if (v22)
  {
    CFRelease(v22);
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_65:
  if (value)
  {
    CFRelease(value);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v35)
  {
    v37 = *(a2 + 40);
    if (v37)
    {
      if (!FigAssetDownloadCoordinatorRelinquishAccessToURL(v37))
      {
        *(a2 + 40) = 0;
      }
    }
  }

  return v35;
}

void CreateSegmentBytePump(void *a1, uint64_t a2, const void *a3, const __CFDictionary *a4, CFTypeRef *a5)
{
  v12 = 0;
  cf = 0;
  if (a5 && !EnsureStreamingNetworkURL(a1, a2))
  {
    if (FigBytePumpCreateForHTTPChunk(*MEMORY[0x1E695E480], *(a2 + 440), a3, a4, 0, BytePumpCallback, 0, &cf))
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else if (cf)
    {
      FigCFDictionaryGetBooleanIfPresent();
      if (v12)
      {
        FigBaseObject = FigBytePumpGetFigBaseObject(cf);
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v10)
        {
          v10(FigBaseObject, 0x1F0B1F758, *MEMORY[0x1E695E4D0]);
        }
      }

      *a5 = cf;
    }
  }

  OUTLINED_FUNCTION_652();
}

uint64_t BytePumpNotificationHandler(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  FigSimpleMutexLock();
  if (*(a2 + 380) == 5 || *(a2 + 378))
  {
    return FigSimpleMutexUnlock();
  }

  if (CFEqual(a3, @"FBPAL_AlternateListChanged"))
  {
    v8 = *(a2 + 380);
    if (!v8)
    {
      *(a2 + 380) = 2;
      FigSimpleMutexLock();
      if (!*(a2 + 408))
      {
        FigBaseObject = FigBytePumpGetFigBaseObject(*(a2 + 384));
        v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v17)
        {
          v17(FigBaseObject, 0x1F0B1F0B8, *MEMORY[0x1E695E480], a2 + 408);
        }

        *(a2 + 416) = *(a2 + 408) != 0;
      }

      FigSimpleMutexUnlock();
      goto LABEL_32;
    }

    if (v8 != 3 || *(a2 + 376))
    {
      return FigSimpleMutexUnlock();
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      OUTLINED_FUNCTION_16_46();
      Code = v13(v9, v10, v11, v12);
    }

    else
    {
      Code = -12782;
    }

    v19 = 0;
  }

  else
  {
    if (CFEqual(a3, @"FBP_DurationChanged"))
    {
      v15 = 4;
LABEL_31:
      *(a2 + 380) = v15;
      *(a2 + 378) = 1;
LABEL_32:
      dispatch_semaphore_signal(*(a2 + 368));
      return FigSimpleMutexUnlock();
    }

    if (!CFEqual(a3, @"FBP_FatalErrorOccurred"))
    {
      return FigSimpleMutexUnlock();
    }

    if (!a5 || (Value = CFDictionaryGetValue(a5, @"FBPFEN_Error")) == 0)
    {
      *(a2 + 392) = -12645;
      v20 = *(a2 + 400);
      *(a2 + 400) = 0;
LABEL_27:
      if (v20)
      {
        CFRelease(v20);
      }

      v15 = 5;
      goto LABEL_31;
    }

    v19 = Value;
    Code = CFErrorGetCode(Value);
  }

  if (Code == -12646)
  {
    v15 = 1;
    goto LABEL_31;
  }

  if (Code)
  {
    *(a2 + 392) = Code;
    v20 = *(a2 + 400);
    *(a2 + 400) = v19;
    if (v19)
    {
      CFRetain(v19);
    }

    goto LABEL_27;
  }

  return FigSimpleMutexUnlock();
}

void BytePumpAbortAction(uint64_t a1)
{
  values = 0;
  ErrorForOSStatus = FigCreateErrorForOSStatus(4294954511, &values);
  v4 = 0;
  if (values)
  {
    v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigBytePumpFatalErrorNotificationValue_Error, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    ErrorForOSStatus = values;
    if (values)
    {
      CFRelease(values);
    }
  }

  BytePumpNotificationHandler(ErrorForOSStatus, a1, @"FBP_FatalErrorOccurred", v3, v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void URLAssetDoneDownloadingDispatchFunc(uint64_t *a1)
{
  URLAssetDoneDownloadingGuts(a1, a1[20], 0);

  CFRelease(a1);
}

uint64_t ProduceTimeRangeAssetTrackProperty(uint64_t a1, CFDictionaryRef *a2)
{
  v7 = *MEMORY[0x1E6960CC0];
  *&v11.value = *MEMORY[0x1E6960CC0];
  v3 = *(MEMORY[0x1E6960CC0] + 16);
  v11.epoch = v3;
  TrackDuration = FigGaplessInfoGetTrackDuration(*(a1 + 16), *(a1 + 24), *(a1 + 64) == 0, &v11);
  if (!TrackDuration)
  {
    memset(&v10, 0, sizeof(v10));
    *&start.start.value = v7;
    start.start.epoch = v3;
    duration = v11;
    CMTimeRangeMake(&v10, &start.start, &duration);
    v5 = *MEMORY[0x1E695E480];
    start = v10;
    *a2 = CMTimeRangeCopyAsDictionary(&start, v5);
  }

  return TrackDuration;
}

uint64_t ProduceMediaPresentationTimeRangeAssetTrackProperty()
{
  v2 = *(*(OUTLINED_FUNCTION_18_41() + 16) + 32);
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = v2(v1, &v39);
  if (v3)
  {
    goto LABEL_25;
  }

  if (!*(*(OUTLINED_FUNCTION_42_22() + 16) + 8))
  {
LABEL_17:
    v26 = 4294954514;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_25_31();
  OUTLINED_FUNCTION_197();
  v3 = v4();
  if (v3)
  {
LABEL_25:
    v26 = v3;
    goto LABEL_18;
  }

  v5 = v38;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6)
  {
    goto LABEL_17;
  }

  v3 = v6(v38, &v35);
  if (v3)
  {
    goto LABEL_25;
  }

  if (!*(*(OUTLINED_FUNCTION_42_22() + 16) + 8))
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_25_31();
  OUTLINED_FUNCTION_197();
  v3 = v7();
  if (v3)
  {
    goto LABEL_25;
  }

  v8 = *(*(OUTLINED_FUNCTION_41_23() + 16) + 40);
  if (!v8)
  {
    goto LABEL_17;
  }

  v3 = v8(v5, &v33);
  if (v3)
  {
    goto LABEL_25;
  }

  v9 = *(*(OUTLINED_FUNCTION_41_23() + 16) + 56);
  if (!v9)
  {
    goto LABEL_17;
  }

  v3 = v9(v5, &v32);
  if (v3)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_31_27();
  if (v10)
  {
    v30 = v33;
    v31 = v34;
    v29 = v32;
    OUTLINED_FUNCTION_8_70();
    v14 = CMTimeAdd(v13, v11, v12);
    OUTLINED_FUNCTION_803(v14, v15, v16, v17, v18, v19, v20, v21, v22, v28.start.value);
  }

  v30 = v35;
  v31 = v36;
  v29 = v33;
  OUTLINED_FUNCTION_8_70();
  CMTimeRangeFromTimeToTime(v25, v23, v24);
  v26 = 0;
  *v0 = CMTimeRangeCopyAsDictionary(&v28, *MEMORY[0x1E695E480]);
LABEL_18:
  if (v38)
  {
    CFRelease(v38);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return v26;
}

uint64_t ProduceMediaDecodeTimeRangeAssetTrackProperty()
{
  v2 = *(*(OUTLINED_FUNCTION_18_41() + 16) + 32);
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = v2(v1, &v39);
  if (v3)
  {
    goto LABEL_25;
  }

  v4 = *(*(OUTLINED_FUNCTION_42_22() + 16) + 24);
  if (!v4)
  {
LABEL_17:
    v26 = 4294954514;
    goto LABEL_18;
  }

  v3 = v4(v1, &v38);
  if (v3)
  {
LABEL_25:
    v26 = v3;
    goto LABEL_18;
  }

  v5 = v38;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v6)
  {
    goto LABEL_17;
  }

  v3 = v6(v5, &v35);
  if (v3)
  {
    goto LABEL_25;
  }

  v7 = *(*(OUTLINED_FUNCTION_42_22() + 16) + 32);
  if (!v7)
  {
    goto LABEL_17;
  }

  v3 = v7(v5, &v37);
  if (v3)
  {
    goto LABEL_25;
  }

  v8 = *(*(OUTLINED_FUNCTION_41_23() + 16) + 48);
  if (!v8)
  {
    goto LABEL_17;
  }

  v3 = v8(v5, &v33);
  if (v3)
  {
    goto LABEL_25;
  }

  v9 = *(*(OUTLINED_FUNCTION_41_23() + 16) + 56);
  if (!v9)
  {
    goto LABEL_17;
  }

  v3 = v9(v5, &v32);
  if (v3)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_31_27();
  if (v10)
  {
    v30 = v33;
    v31 = v34;
    v29 = v32;
    OUTLINED_FUNCTION_8_70();
    v14 = CMTimeAdd(v13, v11, v12);
    OUTLINED_FUNCTION_803(v14, v15, v16, v17, v18, v19, v20, v21, v22, v28.start.value);
  }

  v30 = v35;
  v31 = v36;
  v29 = v33;
  OUTLINED_FUNCTION_8_70();
  CMTimeRangeFromTimeToTime(v25, v23, v24);
  v26 = 0;
  *v0 = CMTimeRangeCopyAsDictionary(&v28, *MEMORY[0x1E695E480]);
LABEL_18:
  if (v38)
  {
    CFRelease(v38);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return v26;
}

uint64_t ProduceAssetTrackNonDroppableFrameRateProperty(uint64_t a1, CFNumberRef *a2)
{
  OUTLINED_FUNCTION_9_47(MEMORY[0x1E6960CC0]);
  v37 = 0;
  v38 = 0;
  memset(&v36, 0, sizeof(v36));
  CMTimeMake(&v36, 2, 1);
  valuePtr = 0.0;
  if (!a2 || (v4 = *(a1 + 16)) == 0 || !*(a1 + 24))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
LABEL_36:
    v11 = FigSignalErrorAtGM();
    goto LABEL_37;
  }

  cf.value = 0;
  v5 = *MEMORY[0x1E695E480];
  FigBaseObject = FigFormatReaderGetFigBaseObject(v4);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(FigBaseObject, @"Identifier", v5, &cf);
  }

  v8 = FigCFEqual();
  if (cf.value)
  {
    CFRelease(cf.value);
  }

  if (!v8)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    goto LABEL_36;
  }

  v9 = *(a1 + 24);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = v10(v9, &v38);
  if (v11)
  {
    goto LABEL_37;
  }

  v12 = v38;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v13)
  {
LABEL_28:
    v28 = 4294954514;
    goto LABEL_29;
  }

  v11 = v13(v12, &v37);
  if (!v11)
  {
    v14 = 0;
    v15 = 1;
    while (1)
    {
      v16 = v14;
      v17 = v15;
      memset(&cf, 0, sizeof(cf));
      v33 = 0;
      v32 = 0;
      if (!*(*(CMBaseObjectGetVTable() + 16) + 64))
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_16_46();
      v11 = v18();
      if (v11)
      {
        break;
      }

      v19 = v33;
      if (v33)
      {
        ++v14;
      }

      v20 = v37;
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v21)
      {
        goto LABEL_28;
      }

      v11 = v21(v20, &cf);
      if (v11)
      {
        break;
      }

      lhs = v39;
      v30 = cf;
      CMTimeAdd(&v39, &lhs, &v30);
      v22 = v37;
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (!v23)
      {
        goto LABEL_28;
      }

      v11 = v23(v22, 1, &v32);
      if (v11)
      {
        break;
      }

      if (v32 == 1)
      {
        OUTLINED_FUNCTION_35_22();
        lhs = v36;
        v24 = CMTimeCompare(&cf, &lhs);
        v15 = v17 + 1;
        if (v24 < 0)
        {
          continue;
        }
      }

      if (v19)
      {
        v25 = v16 + 1;
      }

      else
      {
        v25 = v16;
      }

      v26 = (v17 - v25);
      OUTLINED_FUNCTION_35_22();
      v27 = v26 / CMTimeGetSeconds(&cf);
      valuePtr = v27;
      v28 = 0;
      *a2 = CFNumberCreate(v5, kCFNumberFloat32Type, &valuePtr);
      goto LABEL_29;
    }
  }

LABEL_37:
  v28 = v11;
LABEL_29:
  if (v38)
  {
    CFRelease(v38);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  return v28;
}

uint64_t ProduceFormatSpecificMetadataAssetTrackProperty()
{
  OUTLINED_FUNCTION_39_20();
  FigTrackReaderGetFigBaseObject(v1);
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    return 0;
  }

  v2 = *MEMORY[0x1E695E480];
  v3 = OUTLINED_FUNCTION_26_23();
  v4(v3);
  if (!cf)
  {
    return 0;
  }

  v5 = FigMetadataCopyAllMetadataItems(v2, cf, v0);
  CFRelease(cf);
  return v5;
}

uint64_t ProduceFormatSpecificMetadataFormatAssetTrackProperty()
{
  OUTLINED_FUNCTION_39_20();
  FigTrackReaderGetFigBaseObject(v1);
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    return 0;
  }

  v2 = *MEMORY[0x1E695E480];
  v3 = OUTLINED_FUNCTION_17_41();
  v4(v3);
  if (!cf)
  {
    return 0;
  }

  FigBaseObject = FigMetadataReaderGetFigBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = v6(FigBaseObject, @"format", v2, v0);
  }

  else
  {
    v7 = 4294954514;
  }

  CFRelease(cf);
  return v7;
}

CFIndex ProduceAvailableMetadataFormatsAssetTrackProperty()
{
  OUTLINED_FUNCTION_39_20();
  FigTrackReaderGetFigBaseObject(v1);
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = OUTLINED_FUNCTION_26_23();
    v5 = v4(v3);
    if (v5)
    {
      Count = v5;
    }

    else
    {
      if (!theArray)
      {
        Mutable = 0;
        Count = 0;
        goto LABEL_18;
      }

      Count = CFArrayGetCount(theArray);
      if (Count)
      {
        Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            CFArrayGetValueAtIndex(theArray, i);
            value = 0;
            FigBaseObject = FigMetadataReaderGetFigBaseObject();
            v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v10 && !v10(FigBaseObject, @"format", v2, &value))
            {
              CFArrayAppendValue(Mutable, value);
              CFRelease(value);
            }
          }
        }

        Count = 0;
        if (CFArrayGetCount(Mutable) || !Mutable)
        {
          goto LABEL_16;
        }

        CFRelease(Mutable);
        Count = 0;
      }
    }

    Mutable = 0;
  }

  else
  {
    Mutable = 0;
    Count = 4294954514;
  }

LABEL_16:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_18:
  *v0 = Mutable;
  return Count;
}

uint64_t ProduceLoudnessInfoTrackProperty(uint64_t a1, CFDictionaryRef *a2)
{
  v20 = 0;
  value = 0;
  theDict = 0;
  v4 = *(a1 + 24);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    v14 = 4294954514;
    goto LABEL_20;
  }

  v6 = v5(v4, 0, &v20);
  if (v6)
  {
    goto LABEL_26;
  }

  if (v20 != 1936684398)
  {
    v14 = 0;
    *a2 = 0;
    goto LABEL_20;
  }

  v7 = *MEMORY[0x1E695E480];
  FigBaseObject = FigTrackReaderGetFigBaseObject(*(a1 + 24));
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(FigBaseObject, @"LoudnessInfo", v7, &theDict);
  }

  if (!theDict || !CFDictionaryGetValue(theDict, @"sound check info"))
  {
    v10 = FigFormatReaderGetFigBaseObject(*(a1 + 16));
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(v10, @"SoundCheckInfo", v7, &value);
    }
  }

  FigFormatReaderGetFigBaseObject(*(a1 + 16));
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v12 = OUTLINED_FUNCTION_188();
    v13(v12);
  }

  if (FigCFDictionaryGetCount() <= 0)
  {
    v14 = 0;
    *a2 = theDict;
    theDict = 0;
    goto LABEL_20;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    fig_log_get_emitter();
    v6 = FigSignalErrorAtGM();
LABEL_26:
    v14 = v6;
    goto LABEL_20;
  }

  v16 = MutableCopy;
  if (FigCFDictionaryGetCount() >= 1)
  {
    CFDictionarySetValue(v16, @"sound check info", value);
  }

  v14 = 0;
  *a2 = v16;
LABEL_20:
  if (value)
  {
    CFRelease(value);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return v14;
}

uint64_t AddChapterTrackInfoToArray(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  value = 0;
  cf = 0;
  v24 = 0;
  v25 = 0;
  valuePtr = a2;
  if (a2 <= 0 || !a3 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v19 = FigSignalErrorAtGM();
    v17 = 0;
    v9 = 0;
    goto LABEL_17;
  }

  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v12 = FigSignalErrorAtGM();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_43_19(Mutable, @"chapterGroupKey_Type");
  v10 = *(a1 + 240);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = v11(v10, a2, &cf, 0);
  if (v12)
  {
LABEL_39:
    v19 = v12;
    v17 = 0;
    goto LABEL_17;
  }

  FigBaseObject = FigTrackReaderGetFigBaseObject(cf);
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
LABEL_16:
    v17 = 0;
    v19 = 4294954514;
    goto LABEL_17;
  }

  v12 = v14(FigBaseObject, @"TrackLanguageCode", v7, &value);
  if (v12)
  {
    goto LABEL_39;
  }

  CFDictionarySetValue(v9, @"chapterGroupKey_Language", value);
  v15 = FigTrackReaderGetFigBaseObject(cf);
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16)
  {
    v16(v15, @"ExtendedLanguageTagString", v7, &v25);
    if (v25)
    {
      CFDictionarySetValue(v9, @"chapterGroupKey_ExtendedLanguage", v25);
    }
  }

  v17 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
  if (v17)
  {
    CFDictionarySetValue(v9, @"chapterGroupKey_TrackID", v17);
  }

  if (CFEqual(a3, @"title"))
  {
    MutableChapterTitleTimesArrayForTrack = FCSupport_CreateMutableChapterTitleTimesArrayForTrack(*(a1 + 240), a2, 0, &v24);
  }

  else if (CFEqual(a3, @"artwork"))
  {
    MutableChapterTitleTimesArrayForTrack = FCSupport_CreateMutableChapterImageTimesArrayForTrack(*(a1 + 240), a2, &v24);
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    MutableChapterTitleTimesArrayForTrack = FigSignalErrorAtGM();
  }

  v19 = MutableChapterTitleTimesArrayForTrack;
  if (!MutableChapterTitleTimesArrayForTrack)
  {
    if (v24)
    {
      CFDictionarySetValue(v9, @"chapterGroupKey_PerChapterInfo", v24);
    }

    v21 = OUTLINED_FUNCTION_177();
    CFArrayAppendValue(v21, v22);
    v19 = 0;
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v19;
}

uint64_t StreamingAssetCopyHLSAlternates(uint64_t a1, void *a2)
{
  theDict = 0;
  v17 = 0;
  cf = 0;
  FigBaseObject = FigBytePumpGetFigBaseObject(a1);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4 && (v5 = *MEMORY[0x1E695E480], !v4(FigBaseObject, 0x1F0B1EE98, *MEMORY[0x1E695E480], &theDict)) && theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"FBPAIK_FigAlternateArray");
    v7 = FigAlternateContinuousFramesOnlyFilterCreate(v5, &cf);
    if (v7)
    {
      goto LABEL_23;
    }

    v8 = cf;
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v9)
    {
      v10 = 4294954514;
      goto LABEL_12;
    }

    v7 = v9(v8, Value, &v17);
    if (v7)
    {
LABEL_23:
      v10 = v7;
    }

    else if (*a2)
    {
      v10 = 0;
    }

    else
    {
      v14 = v17;
      if (v17)
      {
        v14 = CFRetain(v17);
      }

      v10 = 0;
      *a2 = v14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_29();
    if (v12)
    {
      v10 = 0;
    }

    else
    {
      v10 = v11;
    }
  }

LABEL_12:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v10;
}

uint64_t StreamingAssetProduceCustomMediaSelectionScheme()
{
  OUTLINED_FUNCTION_39_20();
  FigBytePumpGetFigBaseObject(v1);
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v2 = OUTLINED_FUNCTION_26_23();
    v3(v2);
    OUTLINED_FUNCTION_24_29();
    if (v5)
    {
      CustomMediaSelectionSchemeFromJSON = 0;
    }

    else
    {
      CustomMediaSelectionSchemeFromJSON = v4;
      if (!v4)
      {
        CustomMediaSelectionSchemeFromJSON = FigAssetCreateCustomMediaSelectionSchemeFromJSON(cf, v0);
      }
    }
  }

  else
  {
    CustomMediaSelectionSchemeFromJSON = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return CustomMediaSelectionSchemeFromJSON;
}

uint64_t ProduceDurationProperty()
{
  OUTLINED_FUNCTION_471();
  result = EnsureFormatReaderCreated(v1, v2);
  if (!result)
  {
    if (*(v0 + 464))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_10_61();
      *(v0 + 465) = 1;
    }

    v4 = OUTLINED_FUNCTION_177();

    return ObtainDurationPropertyValue(v4, v5);
  }

  return result;
}

uint64_t ProduceLyricsProperty()
{
  OUTLINED_FUNCTION_375_0();
  v3 = EnsureFormatReaderCreated(v1, v2);
  if (!v3)
  {
    FigFormatReaderGetFigBaseObject(*(v0 + 240));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v4 = OUTLINED_FUNCTION_21_34();
      v5(v4);
    }
  }

  return v3;
}

uint64_t ProducePreferredRateProperty()
{
  OUTLINED_FUNCTION_471();
  result = EnsureFormatReaderCreated(v2, v3);
  if (!result)
  {
    FigBaseObject = FigFormatReaderGetFigBaseObject(*(v1 + 240));
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v7 = *MEMORY[0x1E695E480];

      return v6(FigBaseObject, @"PreferredRate", v7, v0);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t ProducePreferredVolumeProperty()
{
  OUTLINED_FUNCTION_471();
  result = EnsureFormatReaderCreated(v2, v3);
  if (!result)
  {
    FigBaseObject = FigFormatReaderGetFigBaseObject(*(v1 + 240));
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v7 = *MEMORY[0x1E695E480];

      return v6(FigBaseObject, @"PreferredVolume", v7, v0);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t ProducePreferredTransformProperty()
{
  OUTLINED_FUNCTION_471();
  result = EnsureFormatReaderCreated(v2, v3);
  if (!result)
  {
    FigBaseObject = FigFormatReaderGetFigBaseObject(*(v1 + 240));
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v7 = *MEMORY[0x1E695E480];

      return v6(FigBaseObject, @"MovieMatrix", v7, v0);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t ProduceTrackReferencesProperty()
{
  OUTLINED_FUNCTION_471();
  result = EnsureFormatReaderCreated(v2, v3);
  if (result)
  {
    v5 = 0;
  }

  else
  {
    FigFormatReaderGetFigBaseObject(*(v1 + 240));
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_26_23();
      result = v7(v6);
      v5 = 0;
    }

    else
    {
      result = 4294954514;
    }
  }

  *v0 = v5;
  return result;
}

uint64_t ProduceAlternateTrackGroupsProperty()
{
  OUTLINED_FUNCTION_471();
  result = EnsureFormatReaderCreated(v2, v3);
  if (result)
  {
    v5 = 0;
  }

  else
  {
    FigFormatReaderGetFigBaseObject(*(v1 + 240));
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_26_23();
      result = v7(v6);
      v5 = 0;
    }

    else
    {
      result = 4294954514;
    }
  }

  *v0 = v5;
  return result;
}

uint64_t ProducePreciseDurationAndTimingProperty()
{
  OUTLINED_FUNCTION_471();
  result = EnsureFormatReaderCreated(v2, v3);
  if (result)
  {
    v5 = 0;
  }

  else
  {
    FigFormatReaderGetFigBaseObject(*(v1 + 240));
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_26_23();
      result = v7(v6);
      v5 = 0;
      if (!result)
      {
        v5 = CFRetain(*MEMORY[0x1E695E4C0]);
        result = 0;
      }
    }

    else
    {
      result = 4294954514;
    }
  }

  *v0 = v5;
  return result;
}

uint64_t ProduceAvailableMetadataFormatsProperty()
{
  OUTLINED_FUNCTION_375_0();
  theArray = 0;
  v4 = EnsureFormatReaderCreated(v2, v3);
  if (!v4)
  {
    FigFormatReaderGetFigBaseObject(*(v1 + 240));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v5 = OUTLINED_FUNCTION_17_41();
      v6(v5);
    }
  }

  *v0 = 0;
  return v4;
}

uint64_t ProduceFormatSpecificMetadataFormatProperty()
{
  OUTLINED_FUNCTION_375_0();
  v3 = EnsureFormatReaderCreated(v1, v2);
  if (v3)
  {
    return v3;
  }

  FigFormatReaderGetFigBaseObject(*(v0 + 240));
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v4 = OUTLINED_FUNCTION_17_41();
    v5(v4);
  }

  return 0;
}

uint64_t ProduceCommonMetadataProperty()
{
  OUTLINED_FUNCTION_471();
  result = EnsureFormatReaderCreated(v2, v3);
  if (!result)
  {
    v5 = *(v1 + 240);
    v6 = *MEMORY[0x1E695E480];

    return FigMetadataCopyMovieCommonMetadata(v5, v6, v0);
  }

  return result;
}

void ProduceMetadataPropertyFromMetadataReader(void *a1, uint64_t a2, uint64_t a3)
{
  if (!EnsureFormatReaderCreated(a1, a2))
  {
    FigFormatReaderGetFigBaseObject(*(a2 + 240));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v5 = *MEMORY[0x1E695E480];
      v6 = OUTLINED_FUNCTION_26_23();
      v7(v6, a3, v5);
    }
  }

  OUTLINED_FUNCTION_652();
}

uint64_t ProduceChapterGroupInfoProperty()
{
  OUTLINED_FUNCTION_375_0();
  v4 = EnsureChapterGroupInfoCreated(v2, v3);
  if (!v4)
  {
    v5 = *(v1 + 328);
    if (v5)
    {
      Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v5);
    }

    else
    {
      Copy = 0;
    }

    *v0 = Copy;
  }

  return v4;
}

uint64_t ProduceCreationDateProperty()
{
  OUTLINED_FUNCTION_471();
  result = EnsureFormatReaderCreated(v2, v3);
  if (result)
  {
    v5 = 0;
  }

  else
  {
    FigFormatReaderGetFigBaseObject(*(v1 + 240));
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_26_23();
      result = v7(v6);
      v5 = 0;
    }

    else
    {
      result = 4294954514;
    }
  }

  *v0 = v5;
  return result;
}

uint64_t ProduceInitialSamplesProperty()
{
  OUTLINED_FUNCTION_471();
  v125 = *MEMORY[0x1E69E9840];
  v104 = 0;
  v2 = MEMORY[0x1E6960CC0];
  value = *MEMORY[0x1E6960CC0];
  timescale = *(MEMORY[0x1E6960CC0] + 8);
  v5 = EnsureFormatReaderCreated(v3, v4);
  if (v5)
  {
    goto LABEL_70;
  }

  v6 = *(v1 + 240);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v7)
  {
    v96 = MEMORY[0x1E695E4C0];
    v11 = 4294954514;
    goto LABEL_67;
  }

  v5 = v7(v6, &v104);
  if (v5)
  {
LABEL_70:
    v11 = v5;
LABEL_65:
    v96 = MEMORY[0x1E695E4C0];
    goto LABEL_67;
  }

  v8 = *(v2 + 12);
  v9 = *(v2 + 16);
  if (*(v1 + 88))
  {
    DictionaryValue = FigCFDictionaryGetDictionaryValue();
    if (DictionaryValue)
    {
      CMTimeMakeFromDictionary(v112, DictionaryValue);
      fromRange.start.value = *v112;
      fromRange.start.timescale = *&v112[8];
      if ((v112[12] & 0x1D) == 1)
      {
        v9 = *&v112[16];
        value = fromRange.start.value;
        timescale = fromRange.start.timescale;
        v8 = *&v112[12];
      }
    }
  }

  if (v104 < 1)
  {
    goto LABEL_66;
  }

  LODWORD(v11) = 0;
  v12 = 0;
  v13 = *MEMORY[0x1E695E480];
  v99 = @"EditCursorService";
  do
  {
    v120 = 0;
    v121.value = value;
    v121.timescale = timescale;
    v121.flags = v8;
    v121.epoch = v9;
    v118 = 0;
    v119 = 0;
    v117 = 0;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    memset(v112, 0, sizeof(v112));
    v110 = 0;
    v111 = 0;
    cf = 0;
    if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
LABEL_39:
      v23 = -12782;
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_197();
    LODWORD(v15) = v14();
    if (v15)
    {
      goto LABEL_62;
    }

    v16 = v120;
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v17)
    {
      goto LABEL_39;
    }

    LODWORD(v15) = v17(v16, &v119);
    if (v15)
    {
LABEL_62:
      v23 = v15;
      goto LABEL_40;
    }

    FigBaseObject = FigTrackReaderGetFigBaseObject(v120);
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v19)
    {
      v19(FigBaseObject, @"SecondaryEditCursorService", v13, &v118);
    }

    v20 = v118;
    if (v118)
    {
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v21)
      {
        goto LABEL_39;
      }

      fromRange.start = v121;
      v22 = v21(v20, &fromRange, &v117);
      if (v22 == -12521)
      {
        goto LABEL_35;
      }

      v23 = v22;
      if (v22)
      {
        goto LABEL_40;
      }

      v24 = WalkEditCursorToNonEmptyEdit(v117);
      if (v24 == -12520)
      {
        goto LABEL_35;
      }

      v23 = v24;
      if (v24)
      {
        goto LABEL_40;
      }

      v25 = v117;
      v26 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v26)
      {
        goto LABEL_39;
      }

      v15 = v26(v25, v112);
      if (v15)
      {
        goto LABEL_62;
      }

      *&toRange.duration.timescale = OUTLINED_FUNCTION_19_39(v15, v27, v28, v29, v30, v31, v32, v33, v99, v104, v105.value, *&v105.timescale, v105.epoch, v106, toRange.start.value, *&toRange.start.timescale, toRange.start.epoch, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, v108.value, *&v108.timescale, v121.epoch, cf, v110, v111, *v112, *&v112[8], *&v112[16], *&v112[24], v113, *(&v113 + 1), v114, v115, v116);
      *&v108.value = v34;
      CMTimeMapTimeFromRangeToRange(&v121, &v108, &fromRange, &toRange);
      v35 = OUTLINED_FUNCTION_22_33(v121.epoch, v100, v104, v105.value, *&v105.timescale, v105.epoch, v106, toRange.start.value, *&toRange.start.timescale, toRange.start.epoch, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, v121.value, *&v121.timescale, v108.epoch);
      OUTLINED_FUNCTION_37_25(v35, v36, v37, v38, v39, v40, v41, v42, v101, v104, v105.value, *&v105.timescale, v105.epoch, v106, v43, toRange.start.value);
    }

    v44 = FigTrackReaderGetFigBaseObject(v120);
    v45 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v45)
    {
      v45(v44, v99, v13, &v111);
      v46 = v111;
      if (v111)
      {
        v47 = OUTLINED_FUNCTION_29_27();
        v57 = *(v47 + 16);
        v56 = v47 + 16;
        if (!*(v57 + 8))
        {
          goto LABEL_39;
        }

        v58 = OUTLINED_FUNCTION_27_28(v56, v48, v49, v50, v51, v52, v53, v54, v99, v104, v105.value, *&v105.timescale, v105.epoch, v106, v55, toRange.start.value);
        v60 = v59(v46, v58);
        if (v60 != -12521)
        {
          v23 = v60;
          if (v60)
          {
            goto LABEL_40;
          }

          v61 = WalkEditCursorToNonEmptyEdit(v110);
          if (v61 != -12520)
          {
            v23 = v61;
            if (v61)
            {
              goto LABEL_40;
            }

            v62 = v110;
            v63 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (!v63)
            {
              goto LABEL_39;
            }

            v15 = v63(v62, v112);
            if (v15)
            {
              goto LABEL_62;
            }

            *&toRange.duration.timescale = OUTLINED_FUNCTION_19_39(v15, v64, v65, v66, v67, v68, v69, v70, v99, v104, v121.value, *&v121.timescale, v121.epoch, v106, toRange.start.value, *&toRange.start.timescale, toRange.start.epoch, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, v108.value, *&v108.timescale, v108.epoch, cf, v110, v111, *v112, *&v112[8], *&v112[16], *&v112[24], v113, *(&v113 + 1), v114, v115, v116);
            CMTimeMapTimeFromRangeToRange(&v108, &v105, &fromRange, &toRange);
            v121 = v108;
            v71 = OUTLINED_FUNCTION_22_33(v108.epoch, v102, v104, v105.value, *&v105.timescale, v105.epoch, v106, toRange.start.value, *&toRange.start.timescale, toRange.start.epoch, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, v108.value, *&v108.timescale, v108.epoch);
            OUTLINED_FUNCTION_37_25(v71, v72, v73, v74, v75, v76, v77, v78, v103, v104, v105.value, *&v105.timescale, v105.epoch, v106, v79, toRange.start.value);
          }
        }
      }
    }

LABEL_35:
    v80 = v119;
    v81 = OUTLINED_FUNCTION_29_27();
    v91 = *(v81 + 16);
    v90 = v81 + 16;
    if (!*(v91 + 16))
    {
      goto LABEL_39;
    }

    v92 = OUTLINED_FUNCTION_27_28(v90, v82, v83, v84, v85, v86, v87, v88, v99, v104, v105.value, *&v105.timescale, v105.epoch, v106, v89, toRange.start.value);
    v94 = v93(v80, v92);
    if (v94 == -12842)
    {
      v23 = 0;
    }

    else
    {
      v23 = v94;
    }

LABEL_40:
    if (v120)
    {
      CFRelease(v120);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v119)
    {
      CFRelease(v119);
    }

    if (v110)
    {
      CFRelease(v110);
    }

    if (v111)
    {
      CFRelease(v111);
    }

    if (v117)
    {
      CFRelease(v117);
    }

    if (v118)
    {
      CFRelease(v118);
    }

    if (v23)
    {
      v95 = v11 == 0;
    }

    else
    {
      v95 = 0;
    }

    if (v95)
    {
      v11 = v23;
    }

    else
    {
      v11 = v11;
    }

    ++v12;
  }

  while (v12 < v104);
  if (v11)
  {
    goto LABEL_65;
  }

LABEL_66:
  v11 = 0;
  v96 = MEMORY[0x1E695E4D0];
LABEL_67:
  v97 = *v96;
  if (*v96)
  {
    v97 = CFRetain(v97);
  }

  *v0 = v97;
  return v11;
}

uint64_t ProduceCPEProtectorProperty()
{
  OUTLINED_FUNCTION_471();
  v26[2] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v4 = EnsureFormatReaderCreated(v2, v3);
  if (v4)
  {
    v17 = v4;
    v7 = 0;
    goto LABEL_19;
  }

  GetContentProtectionOptions(v1, &v22, &v21, &v20);
  v5 = v21;
  v6 = v22;
  if (v20 || v22 || v21)
  {
    keys = 0;
    v26[0] = 0;
    v26[1] = 0;
    values = 0;
    v24[0] = 0;
    v24[1] = 0;
    if (v20)
    {
      p_values = v24;
      p_keys = v26;
      keys = @"StorageURL";
      values = v20;
      v10 = 1;
      if (!v22)
      {
LABEL_9:
        if (v5)
        {
          v26[v10 - 1] = 0x1F0B52958;
          v24[v10++ - 1] = v5;
        }

        v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, v10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 0;
      p_keys = &keys;
      p_values = &values;
      if (!v22)
      {
        goto LABEL_9;
      }
    }

    *p_keys = @"AE50A074-4909-4EBC-8ADF-C8DDD5F591AA";
    *p_values = v6;
    ++v10;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_12:
  v11 = OUTLINED_FUNCTION_188();
  v15 = FigCPEProtectorCreateForFormatReader(v11, v12, v13, v14);
  if (v15)
  {
    v16 = v15 == -12165;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = 0;
    if (*(v1 + 344))
    {
      *(v1 + 352) = 257;
    }
  }

  else
  {
    v17 = v15;
  }

LABEL_19:
  v18 = *(v1 + 344);
  if (v18)
  {
    v18 = CFRetain(v18);
  }

  *v0 = v18;
  if (v7)
  {
    CFRelease(v7);
  }

  return v17;
}

uint64_t ProduceMediaSelectionArrayProperty()
{
  OUTLINED_FUNCTION_471();
  v10 = 0;
  cf = 0;
  v4 = EnsureFormatReaderCreated(v2, v3);
  if (v4)
  {
    v8 = v4;
    goto LABEL_10;
  }

  if (!*(v1 + 88) || (ArrayValue = FigCFDictionaryGetArrayValue()) == 0)
  {
    v7 = 0;
    goto LABEL_7;
  }

  SanitizedOutOfBandAlternateTracksArray = CreateSanitizedOutOfBandAlternateTracksArray(ArrayValue, &cf);
  v7 = cf;
  if (!SanitizedOutOfBandAlternateTracksArray)
  {
LABEL_7:
    SanitizedOutOfBandAlternateTracksArray = FigCreateMediaSelectionArrayFromFormatReaderProperties(*(v1 + 240), 1, v7, &v10);
  }

  v8 = SanitizedOutOfBandAlternateTracksArray;
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_10:
  *v0 = v10;
  return v8;
}

uint64_t ProduceiTunesGaplessInfoProperty()
{
  OUTLINED_FUNCTION_375_0();
  v3 = EnsureFormatReaderCreated(v1, v2);
  if (!v3)
  {
    FigFormatReaderGetFigBaseObject(*(v0 + 240));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v4 = OUTLINED_FUNCTION_21_34();
      v5(v4);
    }
  }

  return v3;
}

uint64_t ProduceiTunesSoundCheckVolumeNormalizationProperty()
{
  OUTLINED_FUNCTION_375_0();
  v3 = EnsureFormatReaderCreated(v1, v2);
  if (!v3)
  {
    FigFormatReaderGetFigBaseObject(*(v0 + 240));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v4 = OUTLINED_FUNCTION_21_34();
      v5(v4);
    }
  }

  return v3;
}

uint64_t ProduceCouldContainFragmentsProperty()
{
  OUTLINED_FUNCTION_471();
  v3 = EnsureFormatReaderCreated(v1, v2);
  if (!v3)
  {
    if (*(v0 + 464))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_10_61();
      *(v0 + 466) = 1;
    }

    v4 = OUTLINED_FUNCTION_177();
    ObtainCouldContainFragmentsPropertyValue(v4, v5);
  }

  return v3;
}

uint64_t ProduceContainsFragmentsProperty()
{
  OUTLINED_FUNCTION_471();
  v3 = EnsureFormatReaderCreated(v1, v2);
  if (!v3)
  {
    if (*(v0 + 464))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_10_61();
      *(v0 + 467) = 1;
    }

    v4 = OUTLINED_FUNCTION_177();
    ObtainContainsFragmentsPropertyValue(v4, v5);
  }

  return v3;
}

uint64_t ProduceMovieExtendsDurationProperty()
{
  OUTLINED_FUNCTION_375_0();
  v3 = EnsureFormatReaderCreated(v1, v2);
  if (!v3)
  {
    FigFormatReaderGetFigBaseObject(*(v0 + 240));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v4 = OUTLINED_FUNCTION_21_34();
      v5(v4);
    }
  }

  return v3;
}

CFNumberRef ProduceAssetCameraRollValidationProperty(uint64_t a1, uint64_t a2, CFNumberRef *a3)
{
  ProduceAssetValidationResult(a1, a2, @"validationCriteria_CameraRoll", 0);
  valuePtr = v4;
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  *a3 = result;
  return result;
}

CFNumberRef ProduceAssetMediaPlaybackValidationProperty(uint64_t a1, uint64_t a2, CFNumberRef *a3)
{
  ProduceAssetValidationResult(a1, a2, @"validationCriteria_MediaPlayback", 0);
  valuePtr = v4;
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  *a3 = result;
  return result;
}

void ProduceAssetCompatibleWithPhotosTranscodingServiceProperty(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  ProduceAssetIsSelfContainedProperty();
  v6 = *MEMORY[0x1E695E4D0];
  OUTLINED_FUNCTION_171();
  if (FigCFEqual() == 1)
  {
    ProduceAssetValidationResult(a1, a2, @"validationCriteria_PhotosTranscodingService", 0);
    v8 = v7 != 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = *MEMORY[0x1E695E4C0];
  }

  else
  {
    v9 = v6;
  }

  *a3 = CFRetain(v9);
  OUTLINED_FUNCTION_652();
}

uint64_t ProduceChaptersProperty()
{
  OUTLINED_FUNCTION_375_0();
  v3 = EnsureFormatReaderCreated(v1, v2);
  if (!v3)
  {
    FigFormatReaderGetFigBaseObject(*(v0 + 240));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v4 = OUTLINED_FUNCTION_21_34();
      v5(v4);
    }
  }

  return v3;
}

uint64_t ProduceFigStdAssetOptionalProperty(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = EnsureFormatReaderCreated(a1, a2);
  if (!v6)
  {
    *a4 = 0;
    FigFormatReaderGetFigBaseObject(*(a2 + 240));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v7 = OUTLINED_FUNCTION_104_0();
      v8(v7);
    }
  }

  return v6;
}

void ProduceMovieProxyProperty(void *a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (EnsureFormatReaderCreated(a1, a2))
  {
    goto LABEL_11;
  }

  if (*(a2 + 160))
  {
    v5 = *MEMORY[0x1E695E480];
    FigBaseObject = FigFormatReaderGetFigBaseObject(*(a2 + 240));
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(FigBaseObject, @"Identifier", v5, &cf);
    }

    if (FigCFEqual())
    {
      MovieProxyDataCreateForByteStream(v5, *(a2 + 160), a3);
      goto LABEL_9;
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
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_11:
  OUTLINED_FUNCTION_652();
}

uint64_t ProduceAssetIsSelfContainedProperty()
{
  OUTLINED_FUNCTION_375_0();
  v4 = EnsureFormatReaderCreated(v2, v3);
  if (!v4)
  {
    FigFormatReaderGetFigBaseObject(*(v1 + 240));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v5 = OUTLINED_FUNCTION_17_41();
      v6(v5);
    }

    v7 = *MEMORY[0x1E695E4C0];
    if (*MEMORY[0x1E695E4C0])
    {
      v7 = *MEMORY[0x1E695E4D0];
    }

    if (v7)
    {
      v7 = CFRetain(v7);
    }

    *v0 = v7;
  }

  return v4;
}

uint64_t ProduceAssetNaturalTimeScaleProperty(void *a1, uint64_t a2, void *a3)
{
  v5 = EnsureFormatReaderCreated(a1, a2);
  if (!v5)
  {
    FigFormatReaderGetFigBaseObject(*(a2 + 240));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v6 = OUTLINED_FUNCTION_17_41();
      v7(v6);
    }

    *a3 = 0;
  }

  return v5;
}

uint64_t ProduceAssetAnalysisMessagesProperty()
{
  OUTLINED_FUNCTION_375_0();
  v3 = EnsureFormatReaderCreated(v1, v2);
  if (!v3)
  {
    FigFormatReaderGetFigBaseObject(*(v0 + 240));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v4 = OUTLINED_FUNCTION_21_34();
      v5(v4);
    }
  }

  return v3;
}

uint64_t ProduceIsAssetAnalysisActiveProperty()
{
  OUTLINED_FUNCTION_375_0();
  v3 = EnsureFormatReaderCreated(v1, v2);
  if (!v3)
  {
    FigFormatReaderGetFigBaseObject(*(v0 + 240));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v4 = OUTLINED_FUNCTION_21_34();
      v5(v4);
    }
  }

  return v3;
}

uint64_t ProduceMaximumVideoResolutionProperty()
{
  OUTLINED_FUNCTION_471();
  v23 = 0;
  result = EnsureFormatReaderCreated(v2, v3);
  if (!result)
  {
    v5 = *(v1 + 240);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v6)
    {
      result = v6(v5, &v23);
      if (result)
      {
        return result;
      }

      if (v23 >= 1)
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = *MEMORY[0x1E695E480];
        v11 = 0.0;
        v12 = MEMORY[0x1E695F060];
        do
        {
          cf = 0;
          if (*(*(CMBaseObjectGetVTable() + 16) + 48))
          {
            OUTLINED_FUNCTION_197();
            if (!v13())
            {
              dict = 0;
              v20 = *v12;
              FigBaseObject = FigTrackReaderGetFigBaseObject(cf);
              v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v15 && !v15(FigBaseObject, @"CleanApertureDimensions", v10, &dict) || (v16 = FigTrackReaderGetFigBaseObject(cf), (v17 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && !v17(v16, @"TrackDimensions", v10, &dict))
              {
                if (CGSizeMakeWithDictionaryRepresentation(dict, &v20))
                {
                  v18 = v20.width * v20.height;
                  if (v20.width * v20.height > v11)
                  {
                    v19 = dict;
                    if (dict)
                    {
                      CFRetain(dict);
                    }

                    if (v8)
                    {
                      CFRelease(v8);
                    }

                    v9 = 1;
                    v11 = v18;
                    v8 = v19;
                  }
                }
              }

              if (dict)
              {
                CFRelease(dict);
              }
            }
          }

          if (cf)
          {
            CFRelease(cf);
          }

          ++v7;
        }

        while (v7 < v23);
        if (v9)
        {
          result = 0;
          *v0 = v8;
          return result;
        }

        if (v8)
        {
          CFRelease(v8);
        }
      }

      return 4294954513;
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t ProducemoovAtomSizeProperty()
{
  OUTLINED_FUNCTION_375_0();
  v4 = EnsureFormatReaderCreated(v2, v3);
  if (!v4)
  {
    FigFormatReaderGetFigBaseObject(*(v1 + 240));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v5 = OUTLINED_FUNCTION_17_41();
      v6(v5);
    }

    *v0 = 0;
  }

  return v4;
}

uint64_t ProduceFirstFragmentSequenceNumberProperty()
{
  OUTLINED_FUNCTION_375_0();
  v4 = EnsureFormatReaderCreated(v2, v3);
  if (!v4)
  {
    FigFormatReaderGetFigBaseObject(*(v1 + 240));
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_17_41();
      v7(v6);
      v5 = 0;
    }

    *v0 = v5;
  }

  return v4;
}

uint64_t ProduceFragmentCountProperty()
{
  OUTLINED_FUNCTION_375_0();
  v4 = EnsureFormatReaderCreated(v2, v3);
  if (!v4)
  {
    FigFormatReaderGetFigBaseObject(*(v1 + 240));
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_17_41();
      v7(v6);
      v5 = 0;
    }

    *v0 = v5;
  }

  return v4;
}

uint64_t WalkEditCursorToNonEmptyEdit(uint64_t a1)
{
  memset(v5, 0, sizeof(v5));
  while (1)
  {
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v2)
    {
      return 4294954514;
    }

    result = v2(a1, v5);
    if (result)
    {
      return result;
    }

    if (BYTE12(v5[0]))
    {
      break;
    }

    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v4)
    {
      return 4294954514;
    }

    result = v4(a1, 1);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

BOOL EnsureStorageSessionCreated_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t EnsureStorageSessionCreated_cold_2(uint64_t a1)
{
  if (*(a1 + 88))
  {
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
  }

  return FigCFDictionarySetValue();
}

uint64_t InternalURLAssetEnsureContentKeySessionCreated_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t InternalURLAssetEnsureContentKeySessionCreated_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t InternalURLAssetEnsureContentKeyBossIsCreatedAndUpToDate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t InternalURLAssetTransferBytePumpAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetCreateCustomMediaSelectionSchemeFromJSON_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetCreateCustomMediaSelectionSchemeFromJSON_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t convertCustomMediaSelectionSchemeMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t convertCustomMediaSelectionSchemeMetadata_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ProduceAssetTrackValidationResult_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t InternalURLAssetCopyChapterData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t InternalURLAssetFetchChapterDataAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL PerformMultiTrackBatchLoad_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM() == 0;
}

uint64_t RequestMultiTrackBatches_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

void AssessMonitoredAssetPropertyChange_cold_1(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (FigCFEqual())
  {
    v5 = *(v4 + 328);
    if (v5)
    {
      CFRelease(v5);
      *(v4 + 328) = 0;
    }

    *(v4 + 316) = 0;
  }

  v6 = OUTLINED_FUNCTION_26_23();
  if (!ProduceFormatReaderAssetProperty(v6, v4, a3))
  {
    v7 = OUTLINED_FUNCTION_177();
    ReviseProperty(v7, v8, v9);
  }
}

uint64_t EnsureTrackWorkQueueCreated_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t EnsureContentStreamCreated_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t EnsureContentStreamCreated_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t EnsureContentStreamCreated_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t EnsureContentStreamCreated_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t EnsureContentStreamCreated_cold_5()
{
  OUTLINED_FUNCTION_471();
  *v1 = CFRetain(*(v2 + 72));
  v3 = v1 + 3;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 8);
  result = VTable + 8;
  v8 = *(v7 + 48);
  if (v8)
  {
    result = v8(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], v3);
  }

  *v0 = 0;
  return result;
}

void EnsureContentStreamCreated_cold_6()
{
  OUTLINED_FUNCTION_471();
  v3 = v2;
  theSet = 0;
  FigCopySetOfStreamingSupportedMIMETypes(*MEMORY[0x1E695E480], &theSet);
  if (theSet)
  {
    if (CFSetContainsValue(theSet, v3))
    {
      IsShoutcastAudio = FigMediaValidatorMIMETypeIsShoutcastAudio(v3);
      v5 = 1;
    }

    else
    {
      v5 = 0;
      IsShoutcastAudio = 0;
    }

    if (theSet)
    {
      CFRelease(theSet);
    }
  }

  else
  {
    IsShoutcastAudio = 0;
    v5 = 0;
  }

  *v1 = IsShoutcastAudio;
  *v0 = v5;
}

uint64_t CreateSanitizedOutOfBandAlternateTracksArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t EnsureStreamingNetworkURL_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t convertCustomMediaSelectionSchemeGroupMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t convertCustomMediaSelectionSchemeGroupMetadata_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t convertCustomMediaSelectionSchemeSelectorsMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t convertCustomMediaSelectionSchemeSelectorsMetadata_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t convertCustomMediaSelectionSchemeSelectorMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t convertCustomMediaSelectionSchemeSelectorMetadata_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t convertCustomMediaSelectionSchemeSelectorMetadata_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t createDictionaryWithDictionaryStringKeysAndStringValues_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t createDictionaryWithDictionaryStringKeysAndStringValues_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t convertCustomMediaSelectionSchemeSettingsMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t convertCustomMediaSelectionSchemeSettingsMetadata_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t convertCustomMediaSelectionSchemeSettingMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t EnsureTracksArrayCreated_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t EnsureFormatReaderCreated_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t EnsureChapterGroupInfoCreated_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t StreamingAssetCopyMaximumVideoResolution_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t StreamingAssetCopyMaximumVideoResolution_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t StreamingAssetCopyAvailableVideoDynamicRanges_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t StreamingAssetCopyAvailableVideoDynamicRanges_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t StreamingAssetCopyAvailableVideoDynamicRanges_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProduceAssetCompatibleWithAirPlayVideoProperty_cold_1()
{
  ProduceAssetIsSelfContainedProperty();
  if (FigCFEqual())
  {
    v0 = 1;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_177();
    ProduceAssetValidationResult(v2, v3, v4, 0);
    if (v5)
    {
      v0 = -1;
    }

    else
    {
      v0 = 0;
    }
  }

  return v0 & 1;
}

uint64_t ProduceAvailableVideoDynamicRangesProperty_cold_1()
{
  OUTLINED_FUNCTION_471();
  result = CFArrayGetCount(v1);
  if (result >= 1)
  {
    v3 = result + 1;
    do
    {
      result = CFArrayGetValueAtIndex(*v0, v3 - 2);
      if (result)
      {
        CMVideoFormatDescriptionGetVideoDynamicRange();
        result = FigCFArrayAppendInt32();
      }

      --v3;
    }

    while (v3 > 1);
  }

  return result;
}

uint64_t ProduceAvailableVideoDynamicRangesProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProduceAvailableVideoDynamicRangesProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProduceAvailableVideoDynamicRangesProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProduceNominalVideoFrameRateProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProduceNominalVideoFrameRateProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProduceNominalVideoFrameRateProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferAudioRendererCreateRemoteWithOptions(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v4 = 4294950916;
    goto LABEL_13;
  }

  valueCallBacks.version = 0;
  valueCallBacks.retain = &valueCallBacks;
  valueCallBacks.release = 0x2000000000;
  LODWORD(valueCallBacks.copyDescription) = 0;
  *__str = MEMORY[0x1E69E9820];
  v18 = 0x40000000;
  v19 = __audioRendererRemote_ensureClientEstablished_block_invoke;
  v20 = &unk_1E7494208;
  p_valueCallBacks = &valueCallBacks;
  if (qword_1ED4CB8E0 != -1)
  {
    dispatch_once(&qword_1ED4CB8E0, __str);
  }

  v4 = *(valueCallBacks.retain + 6);
  _Block_object_dispose(&valueCallBacks, 8);
  if (!v4)
  {
    cf = 0;
    memset(&valueCallBacks, 0, sizeof(valueCallBacks));
    FigSampleBufferAudioRendererGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      DerivedStorage[4] = 1;
      valueCallBacks.version = 0;
      valueCallBacks.retain = audioRendererRemote_cloneCompletionCallbackEntry;
      valueCallBacks.release = audioRendererRemote_freeCompletionCallbackEntry;
      valueCallBacks.copyDescription = 0;
      valueCallBacks.equal = 0;
      v7 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, &valueCallBacks);
      DerivedStorage[3] = v7;
      if (v7)
      {
        snprintf(__str, 0x80uLL, "com.apple.coremedia.audiorendererremote.completioncallbacks[%p]", cf);
        v8 = dispatch_queue_create(__str, 0);
        DerivedStorage[2] = v8;
        if (v8)
        {
          v9 = FigSimpleMutexCreate();
          DerivedStorage[5] = v9;
          if (v9)
          {
            v10 = cf;
            v11 = FigXPCCreateBasicMessage();
            if (v11 || (v11 = FigXPCMessageSetCFDictionary(), v11))
            {
              v4 = v11;
            }

            else
            {
              v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
              if (!v4)
              {
                uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
                *(CMBaseObjectGetDerivedStorage() + 8) = uint64;
                FigXPCRemoteClientAssociateObject();
                *a3 = v10;
                goto LABEL_13;
              }
            }

            if (!v10)
            {
              goto LABEL_13;
            }

            v14 = v10;
LABEL_21:
            CFRelease(v14);
            goto LABEL_13;
          }
        }
      }

      v4 = 4294950914;
    }

    v14 = cf;
    if (!cf)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_13:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t audioRendererRemote_handleClientMessage()
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

uint64_t audioRendererRemote_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  FigSimpleMutexDestroy();
  v2 = *(DerivedStorage + 56);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 56) = 0;
  }

  v3 = *(DerivedStorage + 64);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 64) = 0;
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 16) = 0;
  }

  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 24) = 0;
  }

  if (v1)
  {
    FigXPCRemoteClientDisassociateObject();
    if (!*DerivedStorage && !FigXPCCreateBasicMessage())
    {
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t audioRendererRemote_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  ObjectID = audioRendererRemote_getObjectID(a1, &v8);
  if (!ObjectID)
  {
    ObjectID = FigXPCSendStdCopyPropertyMessage();
  }

  v6 = ObjectID;
  if (a4)
  {
    *a4 = 0;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

uint64_t audioRendererRemote_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  if (FigCFEqual())
  {
    value = 0;
    v12 = 0;
    xdict = 0;
    ObjectID = audioRendererRemote_getObjectID(a1, &v12);
    if (ObjectID || a3 && (ObjectID = MTAudioProcessingTapXPCRemoteGetObjectID(a3, &value), ObjectID))
    {
      v6 = ObjectID;
    }

    else
    {
      v6 = FigXPCCreateBasicMessage();
      if (!v6)
      {
        xpc_dictionary_set_uint64(xdict, "audioProcessingTapID", value);
        v6 = FigXPCRemoteClientSendSyncMessage();
      }
    }

    FigXPCRelease();
    FigXPCRemoteClientKillServerOnTimeout();
  }

  else
  {
    v7 = audioRendererRemote_getObjectID(a1, &v9);
    if (!v7)
    {
      v7 = FigXPCSendStdSetPropertyMessage();
    }

    v6 = v7;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

BOOL audioRendererRemote_QueueIsAboveHighWaterLevel(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v4 = 0;
  v2 = audioRendererRemote_getObjectID(a1, &v4) || FigXPCCreateBasicMessage() || FigXPCRemoteClientSendSyncMessageCreatingReply() || xpc_dictionary_get_BOOL(0, "isAboveHighWaterResponse");
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

const void *audioRendererRemote_EnqueueSampleBuffer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v13 = 0;
  cf = 0;
  ObjectID = audioRendererRemote_getObjectID(a1, &v15);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    v7 = ObjectID;
  }

  else
  {
    FigSimpleMutexLock();
    v4 = DerivedStorage[7];
    v14 = DerivedStorage[6];
    if (v4)
    {
      v4 = CFRetain(v4);
    }

    v13 = v4;
    v5 = DerivedStorage[8];
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    cf = v5;
    SerializedAtomDataForSampleBuffer = FigRemote_CreateSerializedAtomDataForSampleBuffer();
    if (SerializedAtomDataForSampleBuffer || (SerializedAtomDataForSampleBuffer = FigXPCMessageSetAndConsumeVMData(), SerializedAtomDataForSampleBuffer) || (SerializedAtomDataForSampleBuffer = FigXPCRemoteClientSendSyncMessage(), SerializedAtomDataForSampleBuffer))
    {
      v7 = SerializedAtomDataForSampleBuffer;
      DerivedStorage[6] = 0;
      v8 = DerivedStorage[7];
      if (v8)
      {
        CFRelease(v8);
        DerivedStorage[7] = 0;
      }

      v9 = DerivedStorage[8];
      if (v9)
      {
        CFRelease(v9);
        DerivedStorage[8] = 0;
      }
    }

    else
    {
      v10 = DerivedStorage[7];
      DerivedStorage[6] = (v14 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      DerivedStorage[7] = v13;
      if (v13)
      {
        CFRetain(v13);
      }

      if (v10)
      {
        CFRelease(v10);
      }

      v7 = DerivedStorage[8];
      DerivedStorage[8] = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v7)
      {
        CFRelease(v7);
        v7 = 0;
      }
    }

    FigSimpleMutexUnlock();
  }

  FigXPCRelease();
  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v7;
}

uint64_t audioRendererRemote_Flush(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v6 = 0;
  ObjectID = audioRendererRemote_getObjectID(a1, &v6);
  if (ObjectID)
  {
    v4 = ObjectID;
  }

  else
  {
    v3 = FigXPCCreateBasicMessage();
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t audioRendererRemote_FlushFromMediaTime(const void *a1, __int128 *a2, void (*a3)(void, void), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  v18 = 0;
  ObjectID = audioRendererRemote_getObjectID(a1, &v18);
  if (ObjectID)
  {
    v15 = ObjectID;
  }

  else
  {
    v9 = FigXPCCreateBasicMessage();
    if (v9 || (block = *a2, v21 = *(a2 + 2), v9 = FigXPCMessageSetCMTime(), v9))
    {
      v15 = v9;
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v11 = DerivedStorage;
      v33 = 0;
      v34 = &v33;
      v35 = 0x2000000000;
      v36 = 0;
      v29 = 0;
      v30 = &v29;
      v31 = 0x2000000000;
      v32 = 0;
      if (a3)
      {
        v12 = *(DerivedStorage + 16);
        *&block = MEMORY[0x1E69E9820];
        *(&block + 1) = 0x40000000;
        v21 = __audioRendererRemote_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke;
        v22 = &unk_1E7494258;
        v23 = &v33;
        v24 = a1;
        v25 = v11;
        v26 = a1;
        v27 = a3;
        v28 = a4;
        dispatch_sync(v12, &block);
        xpc_dictionary_set_uint64(0, "completionID", v34[3]);
        v13 = a4;
      }

      else
      {
        a1 = 0;
        v13 = 0;
      }

      v14 = FigXPCRemoteClientSendSyncMessage();
      v15 = v14;
      if (a3 && v14)
      {
        v16 = *(v11 + 16);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 0x40000000;
        v19[2] = __audioRendererRemote_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke_2;
        v19[3] = &unk_1E7494280;
        v19[6] = v11;
        v19[7] = a1;
        v19[8] = a3;
        v19[9] = v13;
        v19[4] = &v33;
        v19[5] = &v29;
        dispatch_sync(v16, v19);
      }

      if (*(v30 + 24))
      {
        if (a3)
        {
          a3(v15, a4);
        }

        if (a1)
        {
          CFRelease(a1);
        }
      }

      FigXPCRemoteClientKillServerOnTimeout();
      _Block_object_dispose(&v29, 8);
      _Block_object_dispose(&v33, 8);
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v15;
}

uint64_t audioRendererRemote_getObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t audioRendererRemote_getObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferAudioRendererCreateRemoteWithOptionsAndRetry_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void vq_Finalize(const void *a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v4 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  if (OUTLINED_FUNCTION_109_0(v4))
  {
    OUTLINED_FUNCTION_38();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_0_9();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  vq_Invalidate(a1);
  cf[0] = 0;
  v5 = CMBaseObjectGetDerivedStorage();
  if (!FigDeferredTransactionCreate(*MEMORY[0x1E695E480], cf))
  {
    FPSupport_AppendDeferredTransactionChangeToRelease(cf[0], v5[5]);
    v5[5] = 0;
    FPSupport_AppendDeferredTransactionChangeToClearContentsAndRemoveFromSuperLayer(cf[0], v5[3]);

    v5[3] = 0;
    FPSupport_AppendDeferredTransactionChangeToClearContentsAndRemoveFromSuperLayer(cf[0], v5[2]);

    v5[2] = 0;
    FPSupport_AppendDeferredTransactionChangeToRelease(cf[0], v5[8]);
    v5[8] = 0;
    FPSupport_AppendDeferredTransactionChangeToRelease(cf[0], v5[6]);
    v5[6] = 0;
    v6 = FigOSTransactionCreate();
    FPSupport_AppendDeferredTransactionChangeToReleaseOSTransaction(cf[0], v6);
    FigDeferredTransactionCommit(cf[0], 0);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  FigSimpleMutexDestroy();
  DerivedStorage[53] = 0;
  if (DerivedStorage[30])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[30] = 0;
  }

  if (DerivedStorage[79])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[79] = 0;
  }

  v7 = DerivedStorage[67];
  if (v7)
  {
    dispatch_release(v7);
    DerivedStorage[67] = 0;
  }

  v8 = DerivedStorage[49];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[49] = 0;
  }

  v9 = DerivedStorage[82];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[82] = 0;
  }

  v10 = DerivedStorage[68];
  if (v10)
  {
    dispatch_release(v10);
    DerivedStorage[68] = 0;
  }

  v11 = DerivedStorage[45];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[45] = 0;
  }

  v12 = DerivedStorage[46];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[46] = 0;
  }

  v13 = DerivedStorage[47];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[47] = 0;
  }

  v14 = DerivedStorage[48];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[48] = 0;
  }

  v15 = DerivedStorage[51];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[51] = 0;
  }

  v16 = DerivedStorage[71];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[71] = 0;
  }

  v17 = DerivedStorage[1];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[1] = 0;
  }

  v18 = DerivedStorage[7];
  if (v18)
  {
    CFRelease(v18);
    DerivedStorage[7] = 0;
  }

  v19 = DerivedStorage[33];
  if (v19)
  {
    CFRelease(v19);
    DerivedStorage[33] = 0;
  }

  v20 = DerivedStorage[34];
  if (v20)
  {
    CFRelease(v20);
    DerivedStorage[34] = 0;
  }

  v21 = DerivedStorage[35];
  if (v21)
  {
    CFRelease(v21);
    DerivedStorage[35] = 0;
  }

  v22 = DerivedStorage[36];
  if (v22)
  {
    CFRelease(v22);
    DerivedStorage[36] = 0;
  }

  v23 = DerivedStorage[37];
  if (v23)
  {
    CFRelease(v23);
    DerivedStorage[37] = 0;
  }

  FigSimpleMutexDestroy();
  v24 = DerivedStorage[39];
  if (v24)
  {
    CFRelease(v24);
    DerivedStorage[39] = 0;
  }

  DerivedStorage[38] = 0;
  v25 = DerivedStorage[42];
  if (v25)
  {
    CFRelease(v25);
    DerivedStorage[42] = 0;
  }

  v26 = DerivedStorage[74];
  if (v26)
  {
    dispatch_release(v26);
    DerivedStorage[74] = 0;
  }

  v27 = DerivedStorage[76];
  if (v27)
  {
    CFRelease(v27);
    DerivedStorage[76] = 0;
  }
}

void vq_SetProperty(const void *a1, const void *a2, void *a3)
{
  v139 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
LABEL_2:
    OUTLINED_FUNCTION_0_177();
    OUTLINED_FUNCTION_2_161();

    FigSignalErrorAtGM();
    return;
  }

  v8 = DerivedStorage;
  if (CFEqual(a2, @"VideoQueue_DisplayLayer"))
  {
    if (!*(v8 + 24))
    {
      vq_setupVideoLayer();
    }

    *(v8 + 354) = 0;
    v9 = CMBaseObjectGetDerivedStorage();
    v10 = objc_autoreleasePoolPush();
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    v11 = *(v9 + 24);
    if (v11)
    {
      [v11 removeFromSuperlayer];
    }

    v12 = *(v9 + 40);
    if (v12)
    {

      *(v9 + 40) = 0;
    }

    if (a3)
    {
      *(v9 + 40) = a3;
      v13 = a3;
      [*(v9 + 40) setMasksToBounds:1];
      [*(v9 + 40) addSublayer:*(v9 + 24)];
    }

    [MEMORY[0x1E6979518] commit];
    objc_autoreleasePoolPop(v10);
    if (dword_1EAF17790)
    {
      v14 = OUTLINED_FUNCTION_6_100();
      v22 = OUTLINED_FUNCTION_12_59(v14, v15, v16, v17, v18, v19, v20, v21, v107, v108, v109, v110, v111, v112, v113, block, v115, v116, v117, v118, v119, v120, v121, type, v123);
      if (OUTLINED_FUNCTION_109_0(v22))
      {
        v23 = *(v9 + 40);
        v25 = *(v9 + 16);
        v24 = *(v9 + 24);
        v26 = *(v9 + 640);
        v124 = 136316674;
        v125 = "vq_updateClientVideoLayer";
        v126 = 2048;
        v127 = a1;
        v128 = 2082;
        v129 = v9 + 856;
        v130 = 2114;
        v131 = v23;
        v132 = 2048;
        v133 = v24;
        v134 = 2048;
        v135 = v25;
        v136 = 1024;
        v137 = v26;
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_0_9();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vq_setSynchronizedLayers();
    goto LABEL_28;
  }

  if (CFEqual(a2, @"VideoQueue_DisplayBounds"))
  {
    memset(&rect, 0, sizeof(rect));
    if (CGRectMakeWithDictionaryRepresentation(a3, &rect))
    {
      x = rect.origin.x;
      y = rect.origin.y;
      width = rect.size.width;
      height = rect.size.height;
      v31 = CMBaseObjectGetDerivedStorage();
      v140.origin.x = OUTLINED_FUNCTION_5_35();
      if (!CGRectEqualToRect(v140, v143))
      {
        v32 = objc_autoreleasePoolPush();
        *(v31 + 200) = x;
        *(v31 + 208) = y;
        *(v31 + 216) = width;
        *(v31 + 224) = height;
        [MEMORY[0x1E6979518] begin];
        if (!pthread_main_np())
        {
          [OUTLINED_FUNCTION_9_63() activateBackground:?];
        }

        [OUTLINED_FUNCTION_9_63() setDisableActions:?];
        v33 = *(v31 + 40);
        v34 = *(v31 + 24);
        if (v33)
        {
          [v33 bounds];
        }

        v141.origin.x = OUTLINED_FUNCTION_5_35();
        MidX = CGRectGetMidX(v141);
        v142.origin.x = OUTLINED_FUNCTION_5_35();
        [v34 setPosition:{MidX, CGRectGetMidY(v142)}];
        [*(v31 + 24) setBounds:{*(v31 + 200), *(v31 + 208), *(v31 + 216), *(v31 + 224)}];
        [*(v31 + 24) setMasksToBounds:1];
        [*(v31 + 16) setBounds:{*(v31 + 200), *(v31 + 208), *(v31 + 216), *(v31 + 224)}];
        [MEMORY[0x1E6979518] commit];
        objc_autoreleasePoolPop(v32);
      }
    }

    else
    {
      FigSignalErrorAtGM();
    }

    goto LABEL_28;
  }

  if (CFEqual(a2, @"VideoQueue_MakeCAContextForRemoteHost"))
  {
    if (!*(v8 + 24))
    {
      vq_setupVideoLayer();
    }

    *(v8 + 354) = 0;
    v35 = CMBaseObjectGetDerivedStorage();
    v36 = objc_autoreleasePoolPush();
    if (!*(v35 + 64))
    {
      if (*(v35 + 680))
      {
        v37 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v37 = *MEMORY[0x1E695E4C0];
      }

      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"FigVideoQueue_CAContext", *MEMORY[0x1E69796A0], *MEMORY[0x1E695E4D0], *MEMORY[0x1E69796C0], v37, *MEMORY[0x1E69796D0], 0}];
      v39 = [MEMORY[0x1E6979550] contextWithOptions:v38];
      *(v35 + 64) = v39;
      if (!v39)
      {
        FigSignalErrorAtGM();
LABEL_41:
        objc_autoreleasePoolPop(v36);
        if (dword_1EAF17790)
        {
          v123 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_0_9();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_28;
      }

      CFRetain(v39);
    }

    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [OUTLINED_FUNCTION_9_63() activateBackground:?];
    }

    [OUTLINED_FUNCTION_9_63() setDisableActions:?];
    [*(v35 + 64) setLayer:*(v35 + 24)];
    [MEMORY[0x1E6979518] commit];
    goto LABEL_41;
  }

  if (CFEqual(a2, @"ClientPID"))
  {
    v41 = *(v8 + 664);
    *(v8 + 664) = a3;
    if (!a3)
    {
LABEL_52:
      if (v41 != 0.0)
      {
        v43 = v41;
LABEL_205:
        CFRelease(*&v43);
      }

LABEL_28:
      OUTLINED_FUNCTION_2_161();
      return;
    }

    goto LABEL_51;
  }

  if (CFEqual(a2, @"ClientBundleIdentifier"))
  {
    v41 = *(v8 + 672);
    *(v8 + 672) = a3;
    if (!a3)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  if (CFEqual(a2, @"VideoQueue_EnablePerFrameStats"))
  {
    if (a3)
    {
      CFGetTypeID(a3);
      CFBooleanGetTypeID();
    }

    goto LABEL_28;
  }

  if (CFEqual(a2, @"PreventsCapture"))
  {
    if (!a3)
    {
      goto LABEL_2;
    }

    v44 = CFGetTypeID(a3);
    if (v44 != CFBooleanGetTypeID())
    {
      goto LABEL_2;
    }

    *(v8 + 353) = CFBooleanGetValue(a3);
    *(v8 + 354) = 0;
    vq_updateImageQueueProtection();
    goto LABEL_28;
  }

  if (CFEqual(a2, @"VideoQueue_DecoderUsage"))
  {
    v45 = *(v8 + 408);
    *(v8 + 408) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v45)
    {
      CFRelease(v45);
    }

    v46 = *(v8 + 376);
    if (v46)
    {
      v47 = *(v8 + 408);
      FigBaseObject = FigRenderPipelineGetFigBaseObject(v46);
      CMBaseObjectSetProperty(FigBaseObject, @"VideoDecoderUsage", v47);
    }

    goto LABEL_28;
  }

  if (CFEqual(a2, @"VideoQueue_ControlTimebase"))
  {
    if (*(v8 + 560))
    {
      goto LABEL_2;
    }

    if (a3)
    {
      TypeID = CMTimebaseGetTypeID();
      if (TypeID != CFGetTypeID(a3))
      {
        goto LABEL_2;
      }

      vq_removeTimebaseListeners();
      v51 = *(v8 + 568);
      *(v8 + 568) = a3;
      CFRetain(a3);
    }

    else
    {
      vq_removeTimebaseListeners();
      v51 = *(v8 + 568);
      *(v8 + 568) = 0;
    }

    if (v51)
    {
      CFRelease(v51);
    }

    if (dword_1EAF17790)
    {
      v58 = OUTLINED_FUNCTION_6_100();
      v66 = OUTLINED_FUNCTION_12_59(v58, v59, v60, v61, v62, v63, v64, v65, v107, v108, v109, v110, v111, v112, v113, block, v115, v116, v117, v118, v119, v120, v121, type, v123);
      if (OUTLINED_FUNCTION_109_0(v66))
      {
        v67 = *(v8 + 568);
        v68 = *(v8 + 640);
        v124 = 136315906;
        v125 = "vq_SetProperty";
        v126 = 2048;
        v127 = a1;
        v128 = 2048;
        v129 = v67;
        v130 = 1024;
        LODWORD(v131) = v68;
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_0_9();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vq_addTimebaseListeners();
    vq_updateForCurrentTimebaseRate(a1);
    goto LABEL_28;
  }

  if (CFEqual(a2, @"ForceFullPowerDecode"))
  {
    if (a3)
    {
      v49 = CFGetTypeID(a3);
      if (v49 == CFBooleanGetTypeID())
      {
        *(v8 + 416) = CFBooleanGetValue(a3);
      }

      else
      {
        FigSignalErrorAtGM();
      }
    }

    else
    {
      *(v8 + 416) = 0;
    }

    v69 = *(v8 + 376);
    if (v69)
    {
      v70 = MEMORY[0x1E695E4D0];
      if (!*(v8 + 416))
      {
        v70 = MEMORY[0x1E695E4C0];
      }

      v71 = *v70;
      v72 = FigRenderPipelineGetFigBaseObject(v69);
      CMBaseObjectSetProperty(v72, @"ForceFullPowerDecode", v71);
    }

    goto LABEL_28;
  }

  if (!CFEqual(a2, @"PreventDisplaySleepDuringVideoPlayback"))
  {
    if (CFEqual(a2, @"PreventAutomaticBackgroundingDuringVideoPlayback"))
    {
      if (!a3)
      {
        goto LABEL_2;
      }

      v73 = CFGetTypeID(a3);
      if (v73 != CFBooleanGetTypeID())
      {
        goto LABEL_2;
      }

      Value = CFBooleanGetValue(a3);
      if (*(v8 + 600) != Value)
      {
        *(v8 + 600) = Value;
        vq_updateVideoPlaybackAssertion(a1);
      }

      goto LABEL_28;
    }

    if (CFEqual(a2, @"UpcomingOutputPTSRangeChanged"))
    {
      if (!a3)
      {
        goto LABEL_2;
      }

      v75 = CFGetTypeID(a3);
      if (v75 != CFDictionaryGetTypeID())
      {
        goto LABEL_2;
      }

      if (*(v8 + 384))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_2_161();

        CMNotificationCenterPostNotification();
        return;
      }

      FigSimpleMutexLock();
      v78 = *(v8 + 624);
      *(v8 + 624) = a3;
      CFRetain(a3);
      if (v78)
      {
        CFRelease(v78);
      }

LABEL_128:
      FigSimpleMutexUnlock();
      goto LABEL_28;
    }

    if (CFEqual(a2, @"InhibitCATransactionCommitTime"))
    {
      if (a3)
      {
        v77 = CFGetTypeID(a3);
        if (v77 != CFBooleanGetTypeID())
        {
          goto LABEL_2;
        }

        *(v8 + 237) = CFBooleanGetValue(a3);
      }

      else
      {
        *(v8 + 237) = 0;
      }

      goto LABEL_28;
    }

    if (CFEqual(a2, @"VisualContextArray"))
    {
      if (*(v8 + 560))
      {
        goto LABEL_2;
      }

      if (!a3)
      {
        v41 = *(v8 + 264);
        *(v8 + 264) = 0;
        goto LABEL_52;
      }

      v79 = CFArrayGetTypeID();
      if (v79 != CFGetTypeID(a3))
      {
        goto LABEL_2;
      }

      v41 = *(v8 + 264);
      *(v8 + 264) = a3;
      goto LABEL_51;
    }

    if (CFEqual(a2, @"VisualContextArrayOptions"))
    {
      if (*(v8 + 560))
      {
        goto LABEL_2;
      }

      if (!a3)
      {
        v41 = *(v8 + 272);
        *(v8 + 272) = 0;
        goto LABEL_52;
      }

      v80 = CFArrayGetTypeID();
      if (v80 != CFGetTypeID(a3))
      {
        goto LABEL_2;
      }

      v41 = *(v8 + 272);
      *(v8 + 272) = a3;
LABEL_51:
      CFRetain(a3);
      goto LABEL_52;
    }

    if (CFEqual(a2, @"VideoTargetArray"))
    {
      if (*(v8 + 560))
      {
        goto LABEL_2;
      }

      if (a3)
      {
        v87 = CFArrayGetTypeID();
        if (v87 != CFGetTypeID(a3))
        {
          goto LABEL_2;
        }
      }

      FigSimpleMutexLock();
      v88 = *(v8 + 288);
      if (v88)
      {
        Count = CFArrayGetCount(v88);
        v90 = *(v8 + 288);
      }

      else
      {
        v90 = 0;
        Count = 0;
      }

      *(v8 + 288) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v90)
      {
        CFRelease(v90);
      }

      *(v8 + 354) = 0;
      v91 = *(v8 + 288);
      if (v91)
      {
        v92 = CFArrayGetCount(v91);
      }

      else
      {
        v92 = 0;
      }

      CFArrayRemoveAllValues(*(v8 + 296));
      v93 = 0;
      v94 = *MEMORY[0x1E695E480];
      while (1)
      {
        v95 = *(v8 + 288);
        if (v95)
        {
          v95 = CFArrayGetCount(v95);
        }

        if (v93 >= v95)
        {
          break;
        }

        rect.origin.x = 0.0;
        VideoTargetInfoCreate(v94, &rect);
        CFArrayAppendValue(*(v8 + 296), *&rect.origin.x);
        CFRelease(*&rect.origin.x);
        ++v93;
      }

      FigSimpleMutexUnlock();
      if (v92 == Count)
      {
        goto LABEL_28;
      }

      v84 = a1;
      v85 = 2;
      v83 = 0;
      v86 = v92;
    }

    else
    {
      if (!CFEqual(a2, @"ShouldWaitForVideoTarget"))
      {
        if (CFEqual(a2, @"AllowAlternateVideoDecoderSelection"))
        {
          *(v8 + 648) = *MEMORY[0x1E695E4D0] == a3;
          goto LABEL_28;
        }

        if (CFEqual(a2, @"ToneMapToStandardDynamicRange"))
        {
          if (!a3)
          {
            goto LABEL_2;
          }

          v96 = CFGetTypeID(a3);
          if (v96 != CFBooleanGetTypeID())
          {
            goto LABEL_2;
          }

          v97 = CFBooleanGetValue(a3);
          *(v8 + 236) = v97;
          [*(v8 + 16) setToneMapToStandardDynamicRange:v97 != 0];
          goto LABEL_28;
        }

        if (CFEqual(a2, @"EnableFlushCAToRemoveImage"))
        {
          *(v8 + 649) = *MEMORY[0x1E695E4C0] != a3;
          goto LABEL_28;
        }

        if (CFEqual(a2, @"DisplayList"))
        {
          v98 = *(v8 + 544);
          block = MEMORY[0x1E69E9820];
          v115 = 3221225472;
          v116 = __vq_SetProperty_block_invoke;
          v117 = &__block_descriptor_48_e5_v8__0l;
          v118 = v8;
          v119 = a3;
          dispatch_sync(v98, &block);
          goto LABEL_28;
        }

        if (CFEqual(a2, @"DisallowVideoLayerDisplayCompositing"))
        {
          v99 = *MEMORY[0x1E695E4D0] == a3;
          if (*(v8 + 238) == v99)
          {
            goto LABEL_28;
          }

          *(v8 + 238) = v99;
          if (!*(v8 + 16))
          {
            goto LABEL_28;
          }

          rect.origin.x = 0.0;
          if (FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &rect))
          {
            goto LABEL_28;
          }

          FBLSupportAppendDeferredTransactionChangeToSetAllowsDisplayCompositing(*&rect.origin.x, *(v8 + 16), *(v8 + 238) == 0, "vq_SetProperty");
        }

        else
        {
          if (CFEqual(a2, @"CompensateForDisplayLatency"))
          {
            v100 = *MEMORY[0x1E695E4C0] != a3;
            *(v8 + 239) = v100;
            FigSimpleMutexLock();
            v101 = *(v8 + 248);
            if (v101)
            {
              FigLayerSynchronizerSetCompensateForDisplayLatency(v101, v100);
            }

            goto LABEL_128;
          }

          if (CFEqual(a2, @"PreferredCADynamicRange"))
          {
            if (!a3)
            {
              goto LABEL_2;
            }

            v102 = CFGetTypeID(a3);
            if (v102 != CFStringGetTypeID())
            {
              goto LABEL_2;
            }

            if (*(v8 + 16))
            {
              rect.origin.x = 0.0;
              if (!FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &rect))
              {
                FBLSupportAppendDeferredTransactionChangeToSetPreferredCADynamicRange(*&rect.origin.x, *(v8 + 16), a3, "vq_SetProperty");
                FigDeferredTransactionCommit(*&rect.origin.x, 1);
                v43 = rect.origin.x;
                if (*&rect.origin.x)
                {
                  goto LABEL_205;
                }
              }
            }

            goto LABEL_28;
          }

          if (!CFEqual(a2, @"VideoLayerGeometryFlipped"))
          {
            if (CFEqual(a2, @"ClientIsSecureCaptureExtension"))
            {
              *(v8 + 680) = *MEMORY[0x1E695E4D0] == a3;
            }

            else if (CFEqual(a2, @"ResponsibleProcessID"))
            {
              if (!a3)
              {
                goto LABEL_2;
              }

              v104 = CFGetTypeID(a3);
              if (v104 != CFNumberGetTypeID())
              {
                goto LABEL_2;
              }

              SInt32 = FigCFNumberGetSInt32();
              if (SInt32 <= 0)
              {
                goto LABEL_2;
              }

              v106 = *(v8 + 644);
              *(v8 + 644) = SInt32;
              if (*(v8 + 376) && v106 != SInt32)
              {
                vq_setAllImageQueuesResponsibleProcessID(a1);
              }
            }

            goto LABEL_28;
          }

          if (!a3)
          {
            goto LABEL_2;
          }

          v103 = CFGetTypeID(a3);
          if (v103 != CFBooleanGetTypeID())
          {
            goto LABEL_2;
          }

          if (!*(v8 + 16))
          {
            goto LABEL_28;
          }

          rect.origin.x = 0.0;
          if (FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &rect))
          {
            goto LABEL_28;
          }

          FBLSupportAppendDeferredTransactionChangeToSetGeometryFlipped(*&rect.origin.x, *(v8 + 16), *MEMORY[0x1E695E4D0] == a3, "vq_SetProperty");
        }

        FigDeferredTransactionCommit(*&rect.origin.x, 0);
        v43 = rect.origin.x;
        if (!*&rect.origin.x)
        {
          goto LABEL_28;
        }

        goto LABEL_205;
      }

      if (!a3)
      {
        goto LABEL_2;
      }

      v81 = CFGetTypeID(a3);
      if (v81 != CFBooleanGetTypeID())
      {
        goto LABEL_2;
      }

      v82 = CFBooleanGetValue(a3);
      if (*(v8 + 328) == v82)
      {
        goto LABEL_28;
      }

      v83 = v82;
      v84 = a1;
      v85 = 1;
      v86 = 0;
    }

    vq_handleWaitForVideoTargetConditionChange(v84, v85, v83, v86);
    goto LABEL_28;
  }

  if (!a3)
  {
    goto LABEL_2;
  }

  v52 = CFGetTypeID(a3);
  if (v52 != CFBooleanGetTypeID())
  {
    goto LABEL_2;
  }

  *(v8 + 417) = 1;
  *(v8 + 418) = CFBooleanGetValue(a3);
  v53 = *(v8 + 376);
  if (!v53)
  {
    goto LABEL_28;
  }

  FigRenderPipelineGetFigBaseObject(v53);
  OUTLINED_FUNCTION_2_161();

  CMBaseObjectSetProperty(v54, v55, v56);
}

void vq_reportResourceUsageStatsToGlobalResourceArbiter()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v2 = 0;
  if (!FigPlayerResourceArbiterGetGlobalSingleton(&v2) && !FigPlayerResourceArbiterPlayerSpecifierCreate(&cf) && !FigPlayerResourceArbiterPlayerSpecifierSetResolutionFloor(cf, *(DerivedStorage + 728), *(DerivedStorage + 736)) && !FigPlayerResourceArbiterPlayerSpecifierSetResolutionCeiling(cf, *(DerivedStorage + 728), *(DerivedStorage + 736)) && !FigPlayerResourceArbiterPlayerSpecifierSetIsFullyActive(cf, *(DerivedStorage + 844)) && !FigPlayerResourceArbiterPlayerSpecifierSetIsMVStereo(cf, *(DerivedStorage + 705)) && !FigPlayerResourceArbiterPlayerSpecifierSetDesiredRate(cf, *(DerivedStorage + 848)) && ((*(DerivedStorage + 760) & 1) == 0 || !FigPlayerResourceArbiterPlayerSpecifierSetFrameRateCeiling(cf, *(DerivedStorage + 744)) && !FigPlayerResourceArbiterPlayerSpecifierSetFrameRateFloor(cf, *(DerivedStorage + 744))))
  {
    FigPlayerResourceArbiterSetSpecifierForConsumer(v2, cf, *(DerivedStorage + 720));
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigVideoQueue_CopyCurrentlyDisplayedPixelBufferFromCAImageQueue(uint64_t a1, const __CFAllocator *a2, CVPixelBufferRef *a3)
{
  pixelBufferOut = 0;
  if (!a3)
  {
    FigSignalErrorAtGM();
    return 0;
  }

  *a3 = 0;
  v5 = CAImageQueueCopyDisplayedIOSurface();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (IOSurfaceGetProtectionOptions())
  {
    v7 = 0;
  }

  else
  {
    v7 = CVPixelBufferCreateWithIOSurface(a2, v6, 0, &pixelBufferOut);
    if (v7)
    {
      if (pixelBufferOut)
      {
        CFRelease(pixelBufferOut);
      }
    }

    else
    {
      *a3 = pixelBufferOut;
      pixelBufferOut = 0;
    }
  }

  CFRelease(v6);
  return v7;
}

uint64_t vq_setAllImageQueuesResponsibleProcessID(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  FigSimpleMutexLock();
  v3 = vq_setImageQueueResponsibleProcessID(a1, *(DerivedStorage + 56));
  if (!v3)
  {
    for (i = 0; ; ++i)
    {
      Count = *(DerivedStorage + 288);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 296), i);
      if (CFArrayGetCount(ValueAtIndex[3]) >= 1)
      {
        v7 = 0;
        do
        {
          VideoTargetInfoCopyFigImageQueueAtIndex(ValueAtIndex, v7, &v10);
          v8 = v10;
          vq_setImageQueueResponsibleProcessID(a1, v10);
          if (v8)
          {
            CFRelease(v8);
            v10 = 0;
          }

          ++v7;
        }

        while (v7 < CFArrayGetCount(ValueAtIndex[3]));
      }
    }
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t vq_createFigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo(uint64_t a1, uint64_t a2, uint64_t a3, CMTagValue a4, int64_t a5, __CFArray *a6, __CFArray *a7, uint64_t a8, uint64_t a9, CMTagValue a10, uint64_t a11, CMTagValue a12)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  value = 0;
  if (!a2 || !a6 || !a7 || !a8)
  {
    OUTLINED_FUNCTION_723();
    v22 = FigSignalErrorAtGM();
    goto LABEL_26;
  }

  v20 = DerivedStorage;
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v21)
  {
    goto LABEL_12;
  }

  v22 = v21(a2, 0, &value);
  if (v22)
  {
    goto LABEL_26;
  }

  v23 = *(v20 + 568);
  if (v23)
  {
    FigBaseObject = FigImageQueueGetFigBaseObject(value);
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v25)
    {
      v22 = v25(FigBaseObject, @"FigImageQueueProperty_Timebase", v23);
      if (!v22)
      {
        goto LABEL_10;
      }

LABEL_26:
      v28 = v22;
      goto LABEL_13;
    }

LABEL_12:
    v28 = 4294954514;
    goto LABEL_13;
  }

LABEL_10:
  CFArrayAppendValue(a6, value);
  if (a5 < 0)
  {
    CFArrayAppendValue(a7, *MEMORY[0x1E695E738]);
    Mutable = 0;
    v26 = *MEMORY[0x1E695E480];
  }

  else
  {
    v26 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    CFArrayAppendValue(a7, Mutable);
  }

  v28 = CMTagCollectionCreateMutable(v26, 0, &cf);
  if (!v28)
  {
    CMTagCollectionAddTag(cf, *MEMORY[0x1E6960640]);
    *&v34.category = a3;
    v34.value = a4;
    CMTagCollectionAddTag(cf, v34);
    if ((a5 & 0x8000000000000000) == 0)
    {
      v30 = cf;
      v35 = CMTagMakeWithSInt64Value(kCMTagCategory_VideoLayerID, a5);
      CMTagCollectionAddTag(v30, v35);
    }

    *&v36.category = a9;
    v36.value = a10;
    CMTagCollectionAddTag(cf, v36);
    *&v37.category = a11;
    v37.value = a12;
    CMTagCollectionAddTag(cf, v37);
    FPSupport_AddDefaultVideoTagsToChannelDescriptionForMissingCategories(cf);
    v31 = cf;
    CFArrayAppendValue(*(a8 + 24), value);
    CFArrayAppendValue(*(a8 + 32), v31);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_13:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v28;
}

CFStringRef FigVideoQueueCreateLocalWithOptions_cold_3(const void *a1, CFStringRef *a2)
{
  v4 = getpid();
  v5 = FigAtomicIncrement32();
  v6 = CFGetAllocator(a1);
  result = CFStringCreateWithFormat(v6, 0, @"com.apple.coremedia.videoqueue.resourcearbiter.consumername.%s.%d-%d", "", v4, v5);
  *a2 = result;
  return result;
}

uint64_t FigVideoQueueCreateLocalWithOptions_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoQueueCreateLocalWithOptions_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoQueueCreateLocalWithOptions_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoQueueCreateLocalWithOptions_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoQueueCreateLocalWithOptions_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoQueueCreateLocalWithOptions_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoQueueCreateLocalWithOptions_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoQueueCreateLocalWithOptions_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoQueueCreateLocalWithOptions_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoQueueCreateLocalWithOptions_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void VideoTargetInfoCreate_cold_2(uint64_t a1, const void *a2)
{
  FigSignalErrorAtGM();

  CFRelease(a2);
}

uint64_t vq_setImageQueueResponsibleProcessID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vq_EnqueueFrame_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vq_EnqueueFrame_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vq_EnqueueFrame_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vq_EnqueueFrame_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vq_EnqueueFrame_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vq_EnqueueFrame_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vq_EnqueueFrame_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vq_EnqueueFrame_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vq_EnqueueFrame_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vq_EnqueueFrame_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vq_EnqueueFrame_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vq_EnqueueFrame_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vq_EnqueueFrame_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vq_EnqueueFrame_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vq_EnqueueFrame_cold_15(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vq_EnqueueFrame_cold_16(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vq_EnqueueH264FrameWithTimingInfoBaggage_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void vq_Flush_cold_1()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = OUTLINED_FUNCTION_10_62(DerivedStorage);
  OUTLINED_FUNCTION_5_113(v1);
  *v2 = *MEMORY[0x1E695F060];
  vq_reportResourceUsageStatsToGlobalResourceArbiter();
}

uint64_t vq_EnqueueFrameWithFormatDescriptionAndTimingInfoBaggage_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vq_EnqueueFrameWithFormatDescriptionAndTimingInfoBaggage_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

__n128 vq_sourceSampleBufferQueue_becameEmpty_cold_1(uint64_t a1, __n128 *a2, __n128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = OUTLINED_FUNCTION_10_62(DerivedStorage);
  OUTLINED_FUNCTION_5_113(v6);
  *v7 = *MEMORY[0x1E695F060];
  vq_reportResourceUsageStatsToGlobalResourceArbiter();
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t vq_updateSidebandVideoPropertiesLookupIDForFormatDescription_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void vq_containsStereoVideoTaggedBufferGroup_cold_1(__CFArray *a1)
{
  if (!FigTagCollectionCreateMutable())
  {
    CMTagCollectionAddTag(0, *MEMORY[0x1E6960640]);
    CMTagCollectionAddTag(0, *MEMORY[0x1E6960688]);
    FPSupport_AddDefaultVideoTagsToChannelDescriptionForMissingCategories(0);
    CFArrayAppendValue(a1, 0);
  }
}

void sr_checkTokenLevelAndHandleIfNecessary()
{
  context = 0;
  state64 = 0;
  v4 = 0;
  v3 = 0;
  if (_MergedGlobals_8 != -1)
  {
    notify_get_state(_MergedGlobals_8, &state64);
    v0 = state64 / 0xA;
    state64 = v0;
    if (qword_1ED4CA2B0 != v0)
    {
      qword_1ED4CA2B0 = v0;
      if (qword_1EAF1A268)
      {
        CFDictionaryApplyFunction(qword_1EAF1A268, sr_findPolicyForLevel, &context);
        if (!context)
        {
          return;
        }

        CFDictionaryGetValue(qword_1EAF1A268, context);
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigSimpleMutexLock();
        if (!memcmp(&qword_1EAF1A270, &v3, 0xCuLL))
        {
          FigSimpleMutexUnlock();
        }

        else
        {
          qword_1EAF1A270 = v3;
          dword_1EAF1A278 = v4;
          FigSimpleMutexUnlock();
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          LocalCenter = CFNotificationCenterGetLocalCenter();
          CFNotificationCenterPostNotification(LocalCenter, @"StreamingRestrictions_RestrictionsChanged", 0, Mutable, 1u);
          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }
      }
    }

    if (context)
    {
      CFRelease(context);
    }
  }
}

uint64_t aigXPCServer_setAudioSessionBehaviour(uint64_t a1, _OWORD *a2)
{
  cf = 0;
  if (in_audio_mx_server_process())
  {
    UsingPrimaryAVAudioSessionSiblingForAuditToken = CMSessionCreate();
    if (!UsingPrimaryAVAudioSessionSiblingForAuditToken)
    {
      UsingPrimaryAVAudioSessionSiblingForAuditToken = FigAudioSessionCreateWithCMSession(*MEMORY[0x1E695E480], cf, (a1 + 16));
      if (!UsingPrimaryAVAudioSessionSiblingForAuditToken)
      {
        v5 = *(a1 + 16);
        if (v5)
        {
          v6 = *(CMBaseObjectGetVTable() + 16);
          if (v6)
          {
            v7 = *(v6 + 56);
            if (v7)
            {
              v7(v5, *MEMORY[0x1E69AFD90], @"FigAssetImageGeneratorServer");
            }
          }

          v8 = *(a1 + 16);
          if (v8)
          {
            v9 = *(CMBaseObjectGetVTable() + 16);
            if (v9)
            {
              v10 = *(v9 + 56);
              if (v10)
              {
                v10(v8, *MEMORY[0x1E69AFCC0], *MEMORY[0x1E69AF648]);
              }
            }
          }
        }

LABEL_13:
        if (!*(a1 + 24))
        {
LABEL_20:
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
          FigStartForwardingMediaServicesProcessDeathNotification();
          v16 = 0;
          goto LABEL_21;
        }

        SInt32 = FigCFNumberCreateSInt32();
        FigBaseObject = FigAssetImageGeneratorGetFigBaseObject(*(a1 + 8));
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v15)
        {
          v16 = v15(FigBaseObject, @"ClientPID", SInt32);
          if (!SInt32)
          {
LABEL_19:
            if (v16)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }
        }

        else
        {
          v16 = 4294954514;
          if (!SInt32)
          {
            goto LABEL_19;
          }
        }

        CFRelease(SInt32);
        goto LABEL_19;
      }
    }
  }

  else
  {
    v11 = *MEMORY[0x1E695E480];
    v12 = a2[1];
    v18[0] = *a2;
    v18[1] = v12;
    UsingPrimaryAVAudioSessionSiblingForAuditToken = FigAudioSessionCreateUsingPrimaryAVAudioSessionSiblingForAuditToken(v11, v18, @"FigAssetImageGenerator", (a1 + 16));
    if (!UsingPrimaryAVAudioSessionSiblingForAuditToken)
    {
      goto LABEL_13;
    }
  }

  v16 = UsingPrimaryAVAudioSessionSiblingForAuditToken;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t HandleAssetImageGeneratorMessage(uint64_t a1, void *a2, void *a3)
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 0;
  v29 = 0;
  v27 = 0;
  cf = 0;
  OpCode = FigXPCMessageGetOpCode();
  *(v31 + 6) = OpCode;
  if (OpCode)
  {
    goto LABEL_32;
  }

  if (v29 == 1668441441)
  {
    v39 = 0;
    v40 = 0;
    v37 = 0;
    v38 = 0;
    memset(&v36, 0, sizeof(v36));
    v35 = 0;
    xpc_connection_get_audit_token();
    token = v36;
    ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken();
    uint64 = xpc_dictionary_get_uint64(a2, "Asset");
    v8 = FigXPCMessageCopyCFDictionary();
    if (v8 || (v8 = FigXPCAssetServerCopyAssetForID(uint64, &v40)) != 0)
    {
      v18 = v8;
      v12 = 0;
    }

    else
    {
      v9 = CreateServedAIGState(&v38);
      if (v9)
      {
        v18 = v9;
        v15 = 0;
        v12 = v38;
LABEL_18:
        DisposeServedAIGState(v12);
        if (v35)
        {
          CFRelease(v35);
        }

        if (v40)
        {
          CFRelease(v40);
        }

        if (v39)
        {
          CFRelease(v39);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        *(v31 + 6) = v18;
        goto LABEL_32;
      }

      v10 = *MEMORY[0x1E695E480];
      v11 = FigSurrogateAssetImageGeneratorCreateFromAsset(*MEMORY[0x1E695E480], v40, v35, &v39);
      v12 = v38;
      if (!v11)
      {
        v11 = FigSandboxAssertionCreateForPID();
        if (!v11)
        {
          v13 = FigOSTransactionCreate();
          *(v12 + 48) = v13;
          if (v13)
          {
            v14 = v39;
            *(v12 + 8) = v39;
            if (v14)
            {
              CFRetain(v14);
            }

            *(v12 + 24) = ClientPIDFromAuditToken;
            token = v36;
            v11 = aigXPCServer_setAudioSessionBehaviour(v12, &token);
            if (!v11)
            {
              token = v36;
              v15 = SecTaskCreateWithAuditToken(v10, &token);
              if (v15)
              {
                if (VTIsSecTaskEntitledForVP9Decode())
                {
                  FigBaseObject = FigAssetImageGeneratorGetFigBaseObject(v39);
                  v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v17)
                  {
                    v17(FigBaseObject, @"AllowAlternateDecoderSelection", *MEMORY[0x1E695E4D0]);
                  }
                }
              }

              v18 = FigXPCServerAssociateObjectWithConnection();
              if (!v18)
              {
                v19 = v37;
                *(v12 + 32) = v37;
                xpc_dictionary_set_uint64(a3, *MEMORY[0x1E69615A0], v19);
                v12 = 0;
              }

              goto LABEL_18;
            }
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_2_10();
            v11 = FigSignalErrorAtGM();
          }
        }
      }

      v18 = v11;
    }

    v15 = 0;
    goto LABEL_18;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  v20 = FigXPCServerLookupAndRetainAssociatedObject();
  *(v31 + 6) = v20;
  if (!v20)
  {
    if (cf && (v21 = CFGetTypeID(cf), v21 == FigAssetImageGeneratorGetTypeID()) && (v22 = *(v27 + 40)) != 0)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 0x40000000;
      v25[2] = __HandleAssetImageGeneratorMessage_block_invoke;
      v25[3] = &unk_1E7494568;
      v26 = v29;
      v25[4] = &v30;
      v25[5] = cf;
      v25[6] = a2;
      v25[7] = a3;
      dispatch_sync(v22, v25);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      *(v31 + 6) = FigSignalErrorAtGM();
    }
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  v23 = *(v31 + 6);
  _Block_object_dispose(&v30, 8);
  return v23;
}

uint64_t HandleAssetImageGeneratorNoReplyMessage(uint64_t a1, void *a2)
{
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    result = FigXPCServerLookupAndRetainAssociatedObject();
    if (!result)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t serverXPCAIG_AddCGImageToMessage(CGImage *a1, void *a2)
{
  v12 = 0;
  v11 = 0;
  v9 = 0;
  v10 = 0;
  v3 = FigRemote_CreateSerializedDataForCGImage(a1, &v12, &v11, &v9, &v10, &v9 + 1);
  if (v3)
  {
    goto LABEL_13;
  }

  if (v9)
  {
    FigMachPortReleaseSendRight_();
  }

  Property = CGImageGetProperty();
  if (Property)
  {
    XPCObject = IOSurfaceCreateXPCObject(Property);
    if (!XPCObject)
    {
      fig_log_get_emitter();
      v3 = FigSignalErrorAtGM();
      goto LABEL_13;
    }

    v6 = XPCObject;
    xpc_dictionary_set_value(a2, "IOSurface", XPCObject);
    xpc_release(v6);
  }

  if (v12)
  {
    if (v11)
    {
      v3 = FigXPCMessageSetAndConsumeVMData();
      if (v3)
      {
        goto LABEL_13;
      }
    }
  }

  v7 = 0;
  if (v10 && HIDWORD(v9))
  {
    v3 = FigXPCMessageSetAndConsumeVMData();
LABEL_13:
    v7 = v3;
  }

  FigXPCRelease();
  return v7;
}

uint64_t CreateServedAIGState_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t __HandleAssetImageGeneratorMessage_block_invoke_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoQueueRemoteCallbackServer_NotificationIsPending()
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v0 = weakReferenceTable_CopyPointerFromKey();
  if (v0)
  {
    v1 = v0;
    v13 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v3 = DerivedStorage;
      if (*(DerivedStorage + 20))
      {
        v4 = *MEMORY[0x1E695E480];
        v5 = MEMORY[0x1E69E9A60];
        do
        {
          v12 = 0;
          v11 = 0;
          v14 = 0;
          if (!FigVideoQueueRemoteClient_GetNextPendingNotification(*(v3 + 20), &v14, &v13, cStr, &v12, &v11))
          {
            v6 = v12;
            v7 = v11;
            v8 = CMBaseObjectGetDerivedStorage();
            cf = 0;
            if (!*v8)
            {
              v9 = CFStringCreateWithCString(v4, cStr, 0);
              if (v9 && (!v6 || !v7 || !MEMORY[0x19A8D2B00](v6, v7, v4, &cf)))
              {
                CMNotificationCenterGetDefaultLocalCenter();
                CMNotificationCenterPostNotification();
              }

              if (cf)
              {
                CFRelease(cf);
              }

              if (v9)
              {
                CFRelease(v9);
              }
            }

            MEMORY[0x19A8D6C70](*v5, v12, v11);
          }
        }

        while (v14);
      }
    }

    CFRelease(v1);
  }

  return 0;
}

uint64_t FigVideoQueueCreateRemoteWithOptions(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  theString = 0;
  cf = 0;
  v24 = 0;
  MEMORY[0x19A8D3660](&unk_1ED4CA2C8, videoQueueRemote_oneTimeInitializationWork);
  if (!_MergedGlobals_24)
  {
    goto LABEL_29;
  }

  v5 = *MEMORY[0x1E695E480];
  FigVideoQueueGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v9 = v6;
    goto LABEL_22;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 96) = 0;
  *(DerivedStorage + 208) = 0;
  MEMORY[0x19A8D3660](&_MergedGlobals_9, weakReferenceTable_OneTimeInitialization);
  if (qword_1EAF1A290)
  {
    Key = FigCFWeakReferenceTableAddValueAndGetKey();
  }

  else
  {
    Key = FigSignalErrorAtGM();
  }

  v9 = Key;
  if (!Key)
  {
    *(DerivedStorage + 224) = 0;
    if (FigCFDictionaryGetStringIfPresent())
    {
      CFStringGetCString(theString, (DerivedStorage + 224), 16, 0x600u);
    }

    if (!FigCFDictionaryGetCount() || (v10 = MEMORY[0x19A8D2A70](a2, v5, &v24), !v10))
    {
      v10 = FigRPCCreateServerConnectionForObject();
      if (!v10)
      {
        v10 = FigRPCGetServerConnectionInfo();
        if (!v10)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterAddListener();
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterAddListener();
          *(DerivedStorage + 104) = 1;
          v11 = FigSimpleMutexCreate();
          *(DerivedStorage + 160) = v11;
          if (v11)
          {
            memset(__str, 0, sizeof(__str));
            snprintf(__str, 0x50uLL, "com.apple.coremedia.vqr.timebasesync.%p", cf);
            v12 = dispatch_queue_create(__str, 0);
            *(DerivedStorage + 200) = v12;
            if (v12)
            {
              v13 = dispatch_queue_create("com.apple.coremedia.vqr.visualContextSyncQueue", 0);
              *(DerivedStorage + 112) = v13;
              if (v13)
              {
                v14 = dispatch_queue_create("com.apple.coremedia.vqr.videoTargetSyncQueue", 0);
                *(DerivedStorage + 128) = v14;
                if (v14)
                {
                  v15 = objc_autoreleasePoolPush();
                  v16 = [FigDisplayMirroringChangeObserver alloc];
                  *(DerivedStorage + 216) = [(FigDisplayMirroringChangeObserver *)v16 initWithCallback:videoQueueRemote_handleDisplayMirroringChanged context:cf];
                  objc_autoreleasePoolPop(v15);
                  MainBundle = CFBundleGetMainBundle();
                  Identifier = CFBundleGetIdentifier(MainBundle);
                  if (Identifier)
                  {
                    v19 = Identifier;
                    CMBaseObject = FigVideoQueueGetCMBaseObject(cf);
                    v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v21)
                    {
                      v21(CMBaseObject, @"ClientBundleIdentifier", v19);
                    }
                  }

                  if (dword_1EAF177B0)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  v9 = 0;
                  *a3 = cf;
                  cf = 0;
                  goto LABEL_22;
                }
              }
            }

LABEL_29:
            v9 = 4294955215;
            goto LABEL_22;
          }

          v10 = FigSignalErrorAtGM();
        }
      }
    }

    v9 = v10;
  }

LABEL_22:
  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v9;
}

void videoQueueRemote_removeHostLayer(uint64_t a1, CFTypeRef a2)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    v5 = DerivedStorage;
    if (!a2)
    {
      v6 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf);
      a2 = cf;
      if (v6)
      {
        goto LABEL_9;
      }

      v4 = *(v5 + 40);
    }

    FPSupport_AppendDeferredTransactionChangeToClearContentsAndRemoveFromSuperLayer(a2, v4);
    v7 = *(v5 + 40);
    if (v7)
    {
      CFRelease(v7);
      *(v5 + 40) = 0;
    }

    if (cf)
    {
      FigDeferredTransactionCommit(cf, 0);
      a2 = cf;
LABEL_9:
      if (a2)
      {
        CFRelease(a2);
      }
    }
  }
}

void videoQueueRemote_syncServerTimebaseToMoment(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v4 = weakReferenceTable_CopyPointerFromKey();
  if (v4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = DerivedStorage;
    if (!*(DerivedStorage + 16) && !*DerivedStorage)
    {
      if (*(a1 + 8))
      {
        *(a2 + 4) |= 4u;
        *(a1 + 8) = 0;
      }

      if (*a2 == 120)
      {
        v7 = *(a2 + 4);
        v8 = *(a2 + 8);
        v9 = *(a2 + 64);
        v10 = *(DerivedStorage + 20);
        v11 = *(v6 + 184) != 0;
        LODWORD(v13[0]) = 120;
        DWORD1(v13[0]) = v7;
        *(&v13[0] + 1) = v8;
        v13[1] = *(a2 + 16);
        v14 = *(a2 + 32);
        v15 = *(a2 + 40);
        v16 = *(a2 + 56);
        v17 = v9;
        v18 = *(a2 + 72);
        v19 = *(a2 + 88);
        v21 = *(a2 + 112);
        v20 = *(a2 + 96);
        FigVideoQueueRemoteClient_SyncTimebaseToMoment(v10, v11, v13, &v12);
      }
    }
  }

  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void videoQueueRemote_SynchronizeLayerToMoment(uint64_t a1, uint64_t a2)
{
  v3 = weakReferenceTable_CopyPointerFromKey();
  if (v3)
  {
    v4 = v3;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*DerivedStorage)
    {
      v6 = DerivedStorage;
      FigSimpleMutexLock();
      v7 = *(v6 + 21);
      if (v7)
      {
        v8 = CFRetain(v7);
        FigSimpleMutexUnlock();
        if (v8)
        {
          FigLayerSynchronizerSynchronizeToMoment(v8, a2, 0);
          CFRelease(v8);
        }
      }

      else
      {
        FigSimpleMutexUnlock();
      }
    }

    CFRelease(v4);
  }
}

uint64_t videoQueueRemote_updateVisualContextArrayAndCopyIDArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoQueueRemote_updateVisualContextArrayAndCopyIDArray_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoQueueRemote_updateVideoTargetArrayAndCopyIDArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoQueueRemote_updateVideoTargetArrayAndCopyIDArray_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoQueueRemote_EnqueueFrame_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCAsset_CreateInternal(const __CFAllocator *a1, const void *a2, uint64_t a3, const __CFData *a4, OpaqueCMBlockBuffer *a5, int a6, uint64_t a7, uint64_t a8, const __CFDictionary *a9, void *a10)
{
  value[128] = *MEMORY[0x1E69E9840];
  cf = 0;
  valuePtr = a8;
  v72 = 0;
  xdict = 0;
  blockBufferOut = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  token = 0;
  DataPointer = remoteXPCAsset_CreateAssetObject(a1, &cf);
  if (DataPointer)
  {
    goto LABEL_127;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v17 = CFGetTypeID(a2);
    if (v17 == CFURLGetTypeID())
    {
      DataPointer = FigXPCCreateBasicMessage();
      if (DataPointer)
      {
        goto LABEL_127;
      }

      DataPointer = FigXPCMessageSetCFURL();
      if (DataPointer)
      {
        goto LABEL_127;
      }

LABEL_26:
      v26 = a9;
      if (!a9)
      {
        v31 = MEMORY[0x19A8D50B0]();
        URLValue = 0;
        if (!v31)
        {
          v33 = 0;
          v28 = 0;
          v35 = 0;
          v30 = 0;
          goto LABEL_54;
        }

        v30 = v31;
        v32 = 0;
        v33 = 0;
        v28 = 0;
LABEL_31:
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (!MutableCopy)
        {
LABEL_106:
          CFRelease(v30);
          goto LABEL_107;
        }

        v35 = MutableCopy;
LABEL_53:
        CFDictionarySetValue(v35, @"assetOption_ApplicationTransportSecurityContext", v30);
        goto LABEL_54;
      }

      FigCFDictionaryGetURLValue();
      URLValue = FigCFDictionaryGetURLValue();
      FigCFDictionaryGetDictionaryValue();
      v28 = FigCFDictionaryGetURLValue();
      FigCFDictionaryGetBooleanIfPresent();
      DataValue = FigCFDictionaryGetDataValue();
      if (DataValue)
      {
        v30 = CFRetain(DataValue);
      }

      else
      {
        v30 = 0;
      }

      FigCFDictionaryGetBooleanIfPresent();
      StringValue = FigCFDictionaryGetStringValue();
      if (StringValue)
      {
        CFStringGetCString(StringValue, (DerivedStorage + 56), 10, 0x600u);
      }

      v33 = DerivedStorage;
      v37 = CFDictionaryGetValue(a9, @"assetOption_CustomURLLoader");
      if (v37)
      {
        v38 = v37;
        value[0] = 0;
        v39 = FigCFDictionaryCreateMutableCopy();
        if (!v39)
        {
          v32 = 0;
          goto LABEL_105;
        }

        v35 = v39;
        CFDictionaryRemoveValue(v39, @"assetOption_CustomURLLoader");
        v32 = MEMORY[0x19A8D1560](v38, value);
        if (!v32 && value[0])
        {
          xpc_dictionary_set_uint64(xdict, "CustomURLLoader", value[0]);
        }

        _os_feature_enabled_impl();
        OUTLINED_FUNCTION_6_101();
        if ((v40 & 1) == 0)
        {
          if (v30)
          {
            goto LABEL_54;
          }

          goto LABEL_51;
        }
      }

      else
      {
        if (!_os_feature_enabled_impl())
        {
          v32 = 0;
          v35 = 0;
          OUTLINED_FUNCTION_6_101();
          if (v30)
          {
            goto LABEL_54;
          }

          goto LABEL_51;
        }

        v35 = FigCFDictionaryCreateMutableCopy();
        v32 = 0;
        OUTLINED_FUNCTION_6_101();
        if (!v41)
        {
          goto LABEL_105;
        }
      }

      FigCFDictionarySetBoolean();
      if (task_create_identity_token(*MEMORY[0x1E69E9A60], &token))
      {
        goto LABEL_104;
      }

      xpc_dictionary_set_mach_send();
      if (v30)
      {
LABEL_54:
        if (v35)
        {
          v26 = v35;
        }

        v42 = FigXPCMessageSetCFDictionary();
        if (v42)
        {
          goto LABEL_122;
        }

        xpc_dictionary_set_uint64(xdict, "AssetCreationFlags", valuePtr);
        if (!a2)
        {
LABEL_73:
          if (v28)
          {
            remoteXPCAsset_sandboxRegisterURLdAddToXPCMessageAndCopyRegistration(0, v28, 0, xdict, 0x196EE97DALL, &v68);
          }

          if (URLValue)
          {
            remoteXPCAsset_sandboxRegisterURLdAddToXPCMessageAndCopyRegistration(1, URLValue, 0, xdict, 0x196EE9807, &v67);
          }

          else if (!v70)
          {
            value[0] = 0;
            v43 = FigDiskCacheRepositoryCopyDefaultTmpDirURL(value);
            if (!v43)
            {
              FigSandboxRegisterDirectoryURLWithProcess();
              v43 = value[0];
              if (value[0])
              {
                CFRelease(value[0]);
              }
            }
          }

          if (v33)
          {
            remoteXPCAsset_sandboxRegisterURLdAddToXPCMessageAndCopyRegistration(1, v33, 0, xdict, 0x196EE982DLL, &v66);
          }

          if (FigAssetAllowsSandboxedParsingOptIn(v43))
          {
            FigCFDictionaryGetBooleanIfPresent();
          }

          v52 = xdict;
          v53 = dyld_program_sdk_at_least();
          xpc_dictionary_set_BOOL(v52, "ClientSDKVersion2025AndLater", v53);
          v42 = FigXPCRemoteClientSendSyncMessageCreatingReply();
          if (!v42)
          {
            uint64 = xpc_dictionary_get_uint64(v72, *MEMORY[0x1E69615A0]);
            v55 = cf;
            v42 = remoteXPCAsset_CompleteAssetObjectSetup(cf, uint64);
            if (!v42)
            {
              v56 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
              remoteXPCAsset_SetCachedAssetPropertyValue(v55, @"assetProperty_CreationOptionsDictionary", v26);
              v57 = cf;
              remoteXPCAsset_SetCachedAssetPropertyValue(cf, @"assetProperty_CreationFlags", v56);
              if (v56)
              {
                CFRelease(v56);
              }

              v32 = 0;
              if (!a2 || v65)
              {
LABEL_103:
                remoteXPCAsset_storeSandboxRegistration(v57, v69);
                remoteXPCAsset_storeSandboxRegistration(v57, v68);
                remoteXPCAsset_storeSandboxRegistration(v57, v67);
                remoteXPCAsset_storeSandboxRegistration(v57, v66);
                *a10 = v57;
                cf = 0;
                if (!v35)
                {
                  goto LABEL_105;
                }

                goto LABEL_104;
              }

              value[0] = 0;
              bytes = 0;
              *theData = 0;
              if (!v26 || !CFDictionaryContainsKey(v26, @"assetOption_AdditionalHTTPCookies"))
              {
                ObjectID = FigRemote_SerializeCookiesForURL(a2, theData);
                if (ObjectID)
                {
LABEL_124:
                  v32 = ObjectID;
LABEL_100:
                  FigXPCRelease();
                  if (*theData)
                  {
                    CFRelease(*theData);
                  }

                  v57 = cf;
                  goto LABEL_103;
                }

                if (*theData)
                {
                  ObjectID = remoteXPCAsset_GetObjectID(v57, &bytes);
                  if (!ObjectID)
                  {
                    v32 = FigXPCCreateBasicMessage();
                    v59 = value[0];
                    if (!v32)
                    {
                      FigXPCMessageSetCFURL();
                      v60 = value[0];
                      BytePtr = CFDataGetBytePtr(*theData);
                      Length = CFDataGetLength(*theData);
                      xpc_dictionary_set_data(v60, "CookieData", BytePtr, Length);
                      v32 = FigXPCRemoteClientSendSyncMessage();
                      v59 = value[0];
                    }

                    if (v59)
                    {
                      value[0] = 0;
                      xpc_release(v59);
                    }

                    goto LABEL_100;
                  }

                  goto LABEL_124;
                }
              }

              v32 = 0;
              goto LABEL_100;
            }
          }

LABEL_122:
          v32 = v42;
          if (!v35)
          {
LABEL_105:
            if (!v30)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          }

LABEL_104:
          CFRelease(v35);
          goto LABEL_105;
        }

        bzero(value, 0x400uLL);
        if (FigCFURLIsLocalResource())
        {
          v44 = 1;
          if (!CFURLGetFileSystemRepresentation(a2, 1u, value, 1024))
          {
LABEL_72:
            remoteXPCAsset_sandboxRegisterURLdAddToXPCMessageAndCopyRegistration(0, a2, v44, xdict, 0x196EE97BALL, &v69);
            goto LABEL_73;
          }

          v45 = CFURLCopyPathExtension(a2);
          if (v45)
          {
            v46 = v45;
            v44 = 1;
            if (CFStringCompare(v45, @"movpkg", 1uLL) == kCFCompareEqualTo)
            {
              if (access(value, 2))
              {
                v77 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v48 = v77;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                {
                  v49 = v48;
                }

                else
                {
                  v49 = v48 & 0xFFFFFFFE;
                }

                if (v49)
                {
                  v50 = __error();
                  v51 = strerror(*v50);
                  *theData = 136315651;
                  *&theData[4] = "remoteXPCAsset_shouldGrantWriteAccessToURL";
                  v79 = 2113;
                  v80 = a2;
                  v81 = 2080;
                  v82 = v51;
                  _os_log_send_and_compose_impl();
                }

                v44 = 1;
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              else
              {
                v44 = 0;
              }
            }

            CFRelease(v46);
            goto LABEL_72;
          }
        }

        v44 = 1;
        goto LABEL_72;
      }

LABEL_51:
      v30 = MEMORY[0x19A8D50B0]();
      if (!v30)
      {
        goto LABEL_54;
      }

      if (v35)
      {
        goto LABEL_53;
      }

      goto LABEL_31;
    }

    goto LABEL_126;
  }

  if (a3)
  {
    value[0] = 0;
    DataPointer = FigFormatReaderXPCRemoteGetObjectID(a3, value);
    if (DataPointer)
    {
      goto LABEL_127;
    }

    DataPointer = FigXPCCreateBasicMessage();
    if (DataPointer)
    {
      goto LABEL_127;
    }

    xpc_dictionary_set_uint64(xdict, "FormatReader", value[0]);
    goto LABEL_26;
  }

  if (a4)
  {
    if (CFDataGetLength(a4))
    {
      DataPointer = FigXPCCreateBasicMessage();
      if (DataPointer)
      {
        goto LABEL_127;
      }

      DataPointer = FigXPCMessageSetCFData();
      if (DataPointer)
      {
        goto LABEL_127;
      }

      goto LABEL_26;
    }

    goto LABEL_126;
  }

  if (a5)
  {
    value[0] = 0;
    bytes = 0;
    if (!CMBlockBufferGetDataLength(a5))
    {
LABEL_126:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();
      DataPointer = FigSignalErrorAtGM();
      goto LABEL_127;
    }

    DataPointer = FigXPCCreateBasicMessage();
    if (!DataPointer)
    {
      OUTLINED_FUNCTION_613();
      if (CMBlockBufferIsRangeContiguous(v18, v19, v20))
      {
        blockBufferOut = a5;
        CFRetain(a5);
LABEL_24:
        OUTLINED_FUNCTION_613();
        DataPointer = CMBlockBufferGetDataPointer(v21, v22, v23, v24, v25);
        if (DataPointer)
        {
          goto LABEL_127;
        }

        xpc_dictionary_set_data(xdict, "BlockBufferData", bytes, value[0]);
        xpc_dictionary_set_int64(xdict, "FormatIdentifierType", a6);
        DataPointer = FigXPCMessageSetCFObject();
        if (DataPointer)
        {
          goto LABEL_127;
        }

        goto LABEL_26;
      }

      DataPointer = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], a5, *MEMORY[0x1E695E480], 0, 0, 0, 0, &blockBufferOut);
      if (!DataPointer)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    DataPointer = FigSignalErrorAtGM();
    if (!DataPointer)
    {
      goto LABEL_26;
    }
  }

LABEL_127:
  v32 = DataPointer;
LABEL_107:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v69)
  {
    CFRelease(v69);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (token - 1 <= 0xFFFFFFFD)
  {
    OUTLINED_FUNCTION_613();
    FigMachPortReleaseSendRight_();
  }

  return v32;
}

uint64_t FigAssetRemoteCreateWithMovieProxyData(uint64_t a1, const __CFData *a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  if (!a2 || !a5)
  {
    fig_log_get_emitter();
    Internal = FigSignalErrorAtGM();
    goto LABEL_7;
  }

  if (qword_1ED4CB900 != -1)
  {
    dispatch_once(&qword_1ED4CB900, &__block_literal_global_98);
  }

  v9 = _MergedGlobals_120;
  if (!_MergedGlobals_120)
  {
    OUTLINED_FUNCTION_613();
    Internal = remoteXPCAsset_CreateInternal(v10, v11, v12, a2, 0, -1, 0, a3, a4, a5);
LABEL_7:
    v9 = Internal;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v9;
}

uint64_t FigAssetRemoteCreateWithBlockBuffer(int a1, CMBlockBufferRef theBuffer, int a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, void *a7)
{
  if (!theBuffer || a3 == -1 || !a4 || !a7 || !CMBlockBufferGetDataLength(theBuffer))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    Internal = FigSignalErrorAtGM();
    goto LABEL_10;
  }

  if (qword_1ED4CB900 != -1)
  {
    dispatch_once(&qword_1ED4CB900, &__block_literal_global_98);
  }

  v13 = _MergedGlobals_120;
  if (!_MergedGlobals_120)
  {
    OUTLINED_FUNCTION_613();
    Internal = remoteXPCAsset_CreateInternal(v14, v15, v16, 0, theBuffer, a3, a4, a5, a6, a7);
LABEL_10:
    v13 = Internal;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v13;
}

uint64_t FigAssetRemoteCreateForServerObject(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = 0;
  v6 = 0;
  v7 = 0;
  if (qword_1ED4CB900 != -1)
  {
    dispatch_once(&qword_1ED4CB900, &__block_literal_global_98);
  }

  result = _MergedGlobals_120;
  if (!_MergedGlobals_120)
  {
    result = (*(a2 + 16))(a2, 0, 0, &v8, &v7, &v6);
    if (!result)
    {
      return FigAssetXPCRemoteCreateWithObjectID(v7, a3);
    }
  }

  return result;
}

uint64_t FigAssetXPCRemoteCreateWithObjectID(uint64_t a1, uint64_t *a2)
{
  if (a1 && a2)
  {
    if (qword_1ED4CB900 != -1)
    {
      dispatch_once(&qword_1ED4CB900, &__block_literal_global_98);
    }

    result = _MergedGlobals_120;
    if (!_MergedGlobals_120)
    {
      result = remoteXPCAsset_CreateAssetObject(*MEMORY[0x1E695E480], a2);
      if (!result)
      {
        v5 = *a2;

        return remoteXPCAsset_CompleteAssetObjectSetup(v5, a1);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t remoteXPCAsset_CreateAssetObject(const __CFAllocator *a1, void *a2)
{
  FigAssetGetClassID();
  v4 = CMDerivedObjectCreate();
  if (!v4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigRemotePropertyCacheSetup(a1, (DerivedStorage + 8), "remoteFigAsset_cache");
    *(DerivedStorage + 56) = 0;
  }

  *a2 = 0;
  return v4;
}

uint64_t remoteXPCAsset_CompleteAssetObjectSetup(uint64_t a1, uint64_t a2)
{
  *CMBaseObjectGetDerivedStorage() = a2;
  result = FigXPCRemoteClientAssociateObject();
  if (!result)
  {

    return FigStartMonitoringMediaServicesProcessDeath();
  }

  return result;
}

uint64_t FigAssetXPCRemoteRetainCopiedAsset(uint64_t a1, void *a2)
{
  v25 = 0;
  if (a1 && a2)
  {
    if (qword_1ED4CB900 != -1)
    {
      dispatch_once(&qword_1ED4CB900, &__block_literal_global_98);
    }

    v4 = _MergedGlobals_120;
    if (_MergedGlobals_120)
    {
      return v4;
    }

    v5 = FigXPCRemoteClientRetainCopiedObject();
    v13 = OUTLINED_FUNCTION_10_11(v5, v6, v7, v8, v9, v10, v11, v12, v24, v25);
    if (v13)
    {
      FigAssetXPCRemoteGetObjectID(v13, &v24);
    }

    else
    {
      v15 = FigAssetXPCRemoteCreateWithObjectID(a1, &v25);
      if (v15)
      {
        v23 = OUTLINED_FUNCTION_10_11(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25);
        if (v23)
        {
          CFRelease(v23);
        }

        return v4;
      }
    }

    v4 = 0;
    *a2 = v25;
    return v4;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_5();

  return FigSignalErrorAtGM();
}

uint64_t remoteXPCAsset_ConvertMetadataBinaryPListDataToArray()
{
  v0 = FigXPCMessageCopyCFData();
  if (v0)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t remoteXPCAssetTrack_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigXPCRemoteClientDisassociateObject();
  if (!*(DerivedStorage + 48) && !*(DerivedStorage + 49) && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  FigRemotePropertyCacheTeardown(DerivedStorage + 16);
  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t remoteXPCAssetTrack_CopyPropertyAndBlockageWarning(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4, void *a5)
{
  *v20 = 0;
  xdict = 0;
  cf = 0;
  v19 = 0;
  if (!a2 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_17;
  }

  *a4 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 0;
  v10 = *(DerivedStorage + 16);
  block = MEMORY[0x1E69E9820];
  v23 = 0x40000000;
  v24 = __remoteXPCAssetTrack_CopyCachedAssetTrackPropertyValue_block_invoke;
  v25 = &unk_1E7494608;
  v28 = a2;
  p_cf = &cf;
  v26 = &v30;
  v27 = DerivedStorage;
  dispatch_sync(v10, &block);
  v11 = *(v31 + 24);
  _Block_object_dispose(&v30, 8);
  if (v11)
  {
    goto LABEL_11;
  }

  ObjectID = remoteXPCAssetTrack_GetObjectID(a1, &v19);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (ObjectID = FigXPCMessageSetCFString(), ObjectID) || (xpc_dictionary_set_BOOL(xdict, "RequestBlockageWarning", 1), ObjectID = ASSETTRACK_CLIENT_SYNCHRONOUSLY_COPYING_A_PROPERTY(), ObjectID) || (ObjectID = remoteXPCAssetTrack_DeserializeAndCreateAssetTrackPropertyValueFromXPCDictionary(v20[0], a2, &cf), ObjectID) || (ObjectID = FigXPCMessageCopyCFString(), ObjectID))
  {
LABEL_17:
    v16 = ObjectID;
    goto LABEL_13;
  }

  v13 = cf;
  v14 = CMBaseObjectGetDerivedStorage();
  v15 = *(v14 + 16);
  block = MEMORY[0x1E69E9820];
  v23 = 0x40000000;
  v24 = __remoteXPCAssetTrack_SetCachedAssetTrackPropertyValue_block_invoke;
  v25 = &__block_descriptor_tmp_21_1;
  v26 = v14;
  v27 = a2;
  v28 = v13;
  dispatch_sync(v15, &block);
LABEL_11:
  *a4 = cf;
  cf = 0;
  v16 = 0;
  if (a5)
  {
    *a5 = 0;
  }

LABEL_13:
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v16;
}

void remoteXPCAssetTrack_GetStatusOfValueForProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t xdict, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_5_114();
  if (v26 && (v27 = v23) != 0)
  {
    v28 = v25;
    v29 = v24;
    if (!remoteXPCAssetTrack_GetObjectID(v22, &a10))
    {
      OUTLINED_FUNCTION_12_20();
      if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFString() && !OUTLINED_FUNCTION_8_71())
      {
        *v27 = xpc_dictionary_get_uint64(xdict, "LoadStatus");
        if (v29)
        {
          *v29 = xpc_dictionary_get_int64(xdict, "LoadingError");
        }

        if (v28)
        {
          FigXPCMessageCopyCFError();
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  OUTLINED_FUNCTION_860();
}

void remoteXPCAssetTrack_LoadValuesAsyncForProperties(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t xdict, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_5_114();
  if (v24 && (OUTLINED_FUNCTION_9_64(), v26 = v25, CFArrayGetCount(v27)))
  {
    if (!remoteXPCAssetTrack_GetObjectID(v26, &a10))
    {
      OUTLINED_FUNCTION_12_20();
      if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFArray())
      {
        xpc_dictionary_set_BOOL(xdict, "isBatch", v20 != 0);
        if (!OUTLINED_FUNCTION_8_71())
        {
          if (v21)
          {
            *v21 = xpc_dictionary_get_BOOL(a11, "AlreadyLoaded");
          }

          if (v20)
          {
            *v20 = xpc_dictionary_get_uint64(a11, "BatchID");
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  OUTLINED_FUNCTION_860();
}

uint64_t remoteXPCAssetTrack_LoadValueAsyncForProperty(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  if (!a2)
  {
    v3 = v4;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM();
LABEL_10:
    OUTLINED_FUNCTION_16_15();
    goto LABEL_8;
  }

  if (remoteXPCAssetTrack_GetObjectID(a1, &v17))
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_20();
  if (FigXPCCreateBasicMessage() || FigXPCMessageSetCFString())
  {
    goto LABEL_10;
  }

  v6 = OUTLINED_FUNCTION_6_78();
  v14 = OUTLINED_FUNCTION_21_13(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, v18);
  if (a3 && !v3)
  {
    *a3 = xpc_dictionary_get_BOOL(v14, "AlreadyLoaded");
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_13_45();
  return v3;
}

uint64_t remoteXPCAssetTrack_ValidateAsync(uint64_t a1, CFTypeRef cf1, uint64_t a3, int64_t *a4, _DWORD *a5)
{
  xdict = 0;
  v15 = 0;
  v13 = 0;
  if (!cf1 || !a4)
  {
    goto LABEL_18;
  }

  if (CFEqual(cf1, @"validationCriteria_Custom"))
  {
    if (!a3)
    {
LABEL_18:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      ObjectID = FigSignalErrorAtGM();
LABEL_19:
      v11 = ObjectID;
      goto LABEL_17;
    }
  }

  else if (!CFEqual(cf1, @"validationCriteria_CameraRoll") && !CFEqual(cf1, @"validationCriteria_MediaPlayback") && !CFEqual(cf1, @"validationCriteria_MediaDecoding"))
  {
    goto LABEL_18;
  }

  ObjectID = remoteXPCAssetTrack_GetObjectID(a1, &v13);
  if (ObjectID)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_12_20();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_19;
  }

  ObjectID = FigXPCMessageSetCFString();
  if (ObjectID)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    ObjectID = FigXPCMessageSetCFDictionary();
    if (ObjectID)
    {
      goto LABEL_19;
    }
  }

  v11 = OUTLINED_FUNCTION_6_78();
  if (!v11)
  {
    *a4 = xpc_dictionary_get_int64(xdict, "ValidationStatus");
    v11 = 0;
    if (a5)
    {
      *a5 = xpc_dictionary_get_int64(xdict, "ValidationResult");
    }
  }

LABEL_17:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v11;
}

uint64_t remoteXPCAsset_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigStopMonitoringMediaServicesProcessDeath();
  FigXPCRemoteClientDisassociateObject();
  if (!*(DerivedStorage + 40) && !*(DerivedStorage + 66) && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  v1 = *(DerivedStorage + 48);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 48) = 0;
  }

  FigRemotePropertyCacheTeardown(DerivedStorage + 8);
  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t remoteXPCAsset_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v5 = 0;
    if (!remoteXPCAsset_GetObjectID(a1, &v5))
    {
      FigXPCSendStdSetPropertyMessage();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_16_15();
  FigXPCRelease();
  OUTLINED_FUNCTION_13_45();
  return v3;
}

uint64_t remoteXPCAsset_CopyPropertyAndBlockageWarning(uint64_t a1, CFTypeRef cf1, uint64_t a3, CFTypeRef *a4, void *a5)
{
  cf = 0;
  if (!cf1 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_21;
  }

  *a4 = 0;
  if (CFEqual(cf1, @"assetProperty_ContentByteStream") || CFEqual(cf1, @"assetProperty_ByteStreamProvider"))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    ObjectID = FigSignalErrorAtGM();
    if (ObjectID)
    {
      goto LABEL_21;
    }
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v11 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __remoteXPCAsset_CopyCachedAssetPropertyValue_block_invoke;
  block[3] = &unk_1E74946D0;
  block[6] = cf1;
  block[7] = &cf;
  block[4] = &v17;
  block[5] = DerivedStorage;
  dispatch_sync(v11, block);
  v12 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  if (!v12)
  {
    block[0] = 0;
    ObjectID = remoteXPCAsset_GetObjectID(a1, block);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigXPCMessageSetCFString();
        if (!ObjectID)
        {
          xpc_dictionary_set_BOOL(0, "RequestBlockageWarning", 1);
          ObjectID = ASSETTRACK_CLIENT_SYNCHRONOUSLY_COPYING_A_PROPERTY();
          if (!ObjectID)
          {
            ObjectID = remoteXPCAsset_DeserializeAndCreateAssetPropertyValueFromXPCDictionary(a1, 0, cf1, &cf);
            if (!ObjectID)
            {
              ObjectID = FigXPCMessageCopyCFString();
              if (!ObjectID)
              {
                remoteXPCAsset_SetCachedAssetPropertyValue(a1, cf1, cf);
                goto LABEL_14;
              }
            }
          }
        }
      }
    }

LABEL_21:
    v13 = ObjectID;
    goto LABEL_17;
  }

LABEL_14:
  *a4 = cf;
  if (a5)
  {
    *a5 = 0;
  }

  v13 = 0;
  cf = 0;
LABEL_17:
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v13;
}

uint64_t remoteXPCAsset_GetStatusOfValueForProperty(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  v22 = 0;
  v23 = 0;
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_15;
  }

  v11 = DerivedStorage;
  ObjectID = remoteXPCAsset_GetObjectID(a1, &v21);
  if (ObjectID)
  {
    goto LABEL_15;
  }

  v13 = *(v11 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __remoteXPCAsset_GetStatusOfValueForProperty_block_invoke;
  block[3] = &unk_1E74946F8;
  block[6] = a2;
  block[7] = a3;
  block[8] = a4;
  block[9] = a5;
  block[4] = &v17;
  block[5] = v11;
  dispatch_sync(v13, block);
  if (*(v18 + 24))
  {
    goto LABEL_5;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID || (ObjectID = FigXPCMessageSetCFString(), ObjectID))
  {
LABEL_15:
    v14 = ObjectID;
    goto LABEL_13;
  }

  v14 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v14)
  {
    goto LABEL_13;
  }

  *a3 = xpc_dictionary_get_uint64(v22, "LoadStatus");
  if (a4)
  {
    *a4 = xpc_dictionary_get_int64(v22, "LoadingError");
  }

  if (a5)
  {
    FigXPCMessageCopyCFError();
    v14 = 0;
    goto LABEL_13;
  }

LABEL_5:
  v14 = 0;
LABEL_13:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  _Block_object_dispose(&v17, 8);
  return v14;
}

void remoteXPCAsset_LoadValuesAsyncForProperties(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t xdict, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_5_114();
  if (v24 && (OUTLINED_FUNCTION_9_64(), v26 = v25, CFArrayGetCount(v27)))
  {
    if (!remoteXPCAsset_GetObjectID(v26, &a10))
    {
      OUTLINED_FUNCTION_12_20();
      if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFArray())
      {
        xpc_dictionary_set_BOOL(xdict, "isBatch", v20 != 0);
        if (!OUTLINED_FUNCTION_8_71())
        {
          if (v21)
          {
            *v21 = xpc_dictionary_get_BOOL(a11, "AlreadyLoaded");
          }

          if (v20)
          {
            *v20 = xpc_dictionary_get_uint64(a11, "BatchID");
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  OUTLINED_FUNCTION_860();
}

uint64_t remoteXPCAsset_LoadValueAsyncForProperty(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  if (!a2)
  {
    v3 = v4;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM();
LABEL_10:
    OUTLINED_FUNCTION_16_15();
    goto LABEL_8;
  }

  if (remoteXPCAsset_GetObjectID(a1, &v17))
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_20();
  if (FigXPCCreateBasicMessage() || FigXPCMessageSetCFString())
  {
    goto LABEL_10;
  }

  v6 = OUTLINED_FUNCTION_6_78();
  v14 = OUTLINED_FUNCTION_21_13(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, v18);
  if (a3 && !v3)
  {
    *a3 = xpc_dictionary_get_BOOL(v14, "AlreadyLoaded");
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_13_45();
  return v3;
}

void remoteXPCAsset_ValidateAsync(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t xdict, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_5_114();
  if (v26 && (v27 = v24) != 0)
  {
    v28 = v25;
    v29 = v23;
    if (!remoteXPCAsset_GetObjectID(v22, &a10))
    {
      OUTLINED_FUNCTION_12_20();
      if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFString() && (!v29 || !FigXPCMessageSetCFDictionary()) && !OUTLINED_FUNCTION_8_71())
      {
        *v27 = xpc_dictionary_get_int64(xdict, "ValidationStatus");
        if (v28)
        {
          *v28 = xpc_dictionary_get_int64(xdict, "ValidationResult");
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  OUTLINED_FUNCTION_860();
}

uint64_t remoteXPCAsset_FetchChapterDataAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = 0;
  xdict = 0;
  if (!a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_64();
  ObjectID = remoteXPCAsset_GetObjectID(v8, &v28);
  if (ObjectID)
  {
LABEL_7:
    v6 = ObjectID;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_26_14();
  v10 = FigXPCCreateBasicMessage();
  v18 = OUTLINED_FUNCTION_10_11(v10, v11, v12, v13, v14, v15, v16, v17, v28, xdict);
  if (!v6)
  {
    xpc_dictionary_set_int64(v18, "ChapterGroupIndex", v7);
    xpc_dictionary_set_int64(xdict, "ChapterIndex", v5);
    xpc_dictionary_set_int64(xdict, "ChapterCount", v4);
    v19 = FigXPCRemoteClientSendAsyncMessage();
    OUTLINED_FUNCTION_10_11(v19, v20, v21, v22, v23, v24, v25, v26, v28, xdict);
  }

LABEL_5:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

uint64_t remoteXPCAsset_LoadValuesAsyncForTrackProperties(uint64_t a1, const __CFArray *a2, CFArrayRef theArray, BOOL *a4, _DWORD *a5)
{
  v22 = 0;
  xdict = 0;
  v21 = 0;
  if (theArray)
  {
    if (!CFArrayGetCount(theArray) || a2 && !CFArrayGetCount(a2))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      ObjectID = FigSignalErrorAtGM();
      goto LABEL_28;
    }

    ObjectID = remoteXPCAsset_GetObjectID(a1, &v21);
    if (ObjectID)
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_12_20();
    ObjectID = FigXPCCreateBasicMessage();
    if (ObjectID)
    {
      goto LABEL_28;
    }

    ObjectID = FigXPCMessageSetCFArray();
    if (ObjectID)
    {
      goto LABEL_28;
    }

    xpc_dictionary_set_BOOL(xdict, "isBatch", a5 != 0);
    if (!a2)
    {
LABEL_17:
      ObjectID = OUTLINED_FUNCTION_6_78();
      if (!ObjectID)
      {
        if (a5)
        {
          *a5 = xpc_dictionary_get_uint64(v22, "BatchID");
        }

        v18 = 0;
        if (a4)
        {
          *a4 = xpc_dictionary_get_BOOL(v22, "AlreadyLoaded");
        }

        goto LABEL_22;
      }

LABEL_28:
      v18 = ObjectID;
      goto LABEL_22;
    }

    v10 = xpc_array_create(0, 0);
    if (v10)
    {
      Count = CFArrayGetCount(a2);
      if (Count >= 1)
      {
        v12 = Count;
        v13 = 0;
        while (1)
        {
          value = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v13);
          if (!ValueAtIndex)
          {
            break;
          }

          v15 = ValueAtIndex;
          v16 = CFGetTypeID(ValueAtIndex);
          if (v16 != FigAssetTrackGetTypeID())
          {
            break;
          }

          v17 = remoteXPCAssetTrack_GetObjectID(v15, &value);
          if (v17)
          {
            goto LABEL_25;
          }

          xpc_array_set_uint64(v10, 0xFFFFFFFFFFFFFFFFLL, value);
          if (v12 == ++v13)
          {
            goto LABEL_16;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        goto LABEL_24;
      }

LABEL_16:
      xpc_dictionary_set_value(xdict, "Tracks", v10);
      xpc_release(v10);
      goto LABEL_17;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
  }

LABEL_24:
  v17 = FigSignalErrorAtGM();
LABEL_25:
  v18 = v17;
LABEL_22:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v18;
}

uint64_t remoteXPCAsset_DefineMacroProperty()
{
  OUTLINED_FUNCTION_10_63();
  if (!v2 || !v1 || (v3 = v0, !CFArrayGetCount(v1)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_12;
  }

  ObjectID = remoteXPCAsset_GetObjectID(v3, &v8);
  if (ObjectID)
  {
LABEL_12:
    v6 = ObjectID;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_26_14();
  v5 = FigXPCCreateBasicMessage();
  if (v5 || (v5 = FigXPCMessageSetCFString(), v5) || (v5 = FigXPCMessageSetCFArray(), v5))
  {
    v6 = v5;
  }

  else
  {
    v6 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_9:
  FigXPCRelease();
  OUTLINED_FUNCTION_13_45();
  return v6;
}

uint64_t remoteXPCAsset_DefineTrackMacroProperty()
{
  OUTLINED_FUNCTION_10_63();
  if (!v2 || !v1 || (v3 = v0, !CFArrayGetCount(v1)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_12;
  }

  ObjectID = remoteXPCAsset_GetObjectID(v3, &v8);
  if (ObjectID)
  {
LABEL_12:
    v6 = ObjectID;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_26_14();
  v5 = FigXPCCreateBasicMessage();
  if (v5 || (v5 = FigXPCMessageSetCFString(), v5) || (v5 = FigXPCMessageSetCFArray(), v5))
  {
    v6 = v5;
  }

  else
  {
    v6 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_9:
  FigXPCRelease();
  OUTLINED_FUNCTION_13_45();
  return v6;
}

uint64_t remoteXPCAsset_DefineCrossTrackMacroProperty()
{
  OUTLINED_FUNCTION_10_63();
  if (!v2 || !v1 || (v3 = v0, !CFArrayGetCount(v1)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_12;
  }

  ObjectID = remoteXPCAsset_GetObjectID(v3, &v8);
  if (ObjectID)
  {
LABEL_12:
    v6 = ObjectID;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_26_14();
  v5 = FigXPCCreateBasicMessage();
  if (v5 || (v5 = FigXPCMessageSetCFString(), v5) || (v5 = FigXPCMessageSetCFArray(), v5))
  {
    v6 = v5;
  }

  else
  {
    v6 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_9:
  FigXPCRelease();
  OUTLINED_FUNCTION_13_45();
  return v6;
}

uint64_t FigAssetRemoteCreateWithURLAndRetry_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetRemoteCreateWithFormatReader_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigAssetRemoteCopyAssetWithDownloadToken_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetXPCRemoteGetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetXPCRemoteGetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetXPCRemoteGetObjectID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetXPCRemoteGetObjectID_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCAsset_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCAsset_GetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCAssetClient_NotificationFilter_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t remoteXPCAssetClient_NotificationFilter_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t remoteXPCAsset_DeserializeAndCreateHLSSessionKeysFromXPCDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCAsset_DeserializeAndCreateTracksArrayFromXPCDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCAsset_DeserializeAndCreateTracksArrayFromXPCDictionary_cold_2(uint64_t a1, __CFArray *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();
  v5 = FigSignalErrorAtGM();
  *a3 = v5;
  if (v5)
  {
    return 1;
  }

  CFArrayAppendValue(a2, 0);
  return 0;
}