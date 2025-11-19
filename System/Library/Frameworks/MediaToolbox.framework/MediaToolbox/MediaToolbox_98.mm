uint64_t segPumpStreamReadAheadPermitsNextRead(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8896))
  {
    return 1;
  }

  if (*(a1 + 8393))
  {
    return 1;
  }

  v4 = *(a2 + 768);
  if (!*v4)
  {
    return 1;
  }

  if (a3)
  {
    v5 = *(a2 + 776);
    if (v5 >= 1)
    {
      while (!*v4 || *(*v4 + 8) != a3)
      {
        v4 += 8;
        if (!--v5)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return 0;
}

uint64_t segPumpCheckCachedVariantsAndRequestSwitch(uint64_t a1, uint64_t a2, const void *a3, NSObject *os_log_and_send_and_compose_flags_and_os_log_type)
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_411_1();
  v10 = *(v9 + 9760);
  v11 = *(v9 + 9728);
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (v11)
  {
    v51 = CFRetain(v11);
  }

  else
  {
    v51 = 0;
  }

  v53 = 0;
  if (!*(a1 + 8424) || (OUTLINED_FUNCTION_299_0(), !v12) || *(a2 + 256))
  {
    OUTLINED_FUNCTION_260_1();
    v18 = 0;
LABEL_80:
    LongestContiguousMediaStreamInCacheAtTime = 0;
LABEL_81:
    v41 = v51;
    if (!v51)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  if (a3)
  {
    v15 = *(segPumpGetMediaFilePrivateData(a3) + 4);
  }

  else
  {
    v15 = 0.0;
  }

  v57 = v15;
  v16 = v15;
  if (!*(a2 + 872))
  {
    LODWORD(v14) = *(a1 + 8);
    v16 = v15 - v14;
    v57 = v16;
  }

  if (v16 < 0.0)
  {
    v57 = 0.0;
    v16 = 0.0;
  }

  v50 = v13;
  v17 = *(a1 + 8416);
  if (v17)
  {
    valuePtr[0] = 0.0;
    CFNumberGetValue(v17, kCFNumberDoubleType, valuePtr);
    if (valuePtr[0] <= v57)
    {
      v16 = v57;
    }

    else
    {
      v16 = valuePtr[0];
    }

    v57 = v16;
  }

  v18 = 0;
  v19 = 0;
  v4 = 0;
  while (1)
  {
    valuePtr[0] = 0.0;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    LongestContiguousMediaStreamInCacheAtTime = FigStreamingCacheGetLongestContiguousMediaStreamInCacheAtTime(*(a1 + 296), *a2, &v54, &v56, &cf, valuePtr, v16);
    if (LongestContiguousMediaStreamInCacheAtTime)
    {
      goto LABEL_102;
    }

    v21 = v57;
    v22 = valuePtr[0];
    if (v18)
    {
      v23 = 1;
    }

    else
    {
      v4 = v54;
      if (v56)
      {
        v18 = CFRetain(v56);
        v23 = 0;
      }

      else
      {
        v23 = 0;
        v18 = 0;
      }
    }

    *(a2 + 405) = v23;
    LODWORD(v24) = os_log_and_send_and_compose_flags_and_os_log_type == 0;
    if (!os_log_and_send_and_compose_flags_and_os_log_type)
    {
      LODWORD(v24) = 1;
      if (v56)
      {
        AlternateEntryFromURLForCacheLookup = segPumpGetAlternateEntryFromURLForCacheLookup(a1, v56, cf);
        if (!AlternateEntryFromURLForCacheLookup)
        {
          goto LABEL_102;
        }

        v24 = *(a1 + 8328);
        if (v24)
        {
          LODWORD(v24) = *(AlternateEntryFromURLForCacheLookup + 6) < *(v24 + 24);
        }
      }
    }

    v26 = v16 - v21 + v22;
    v27 = v54;
    if (v54 == v19 || !v56 || v24)
    {
      break;
    }

    v28 = v26 + v57;
    if (!*(a2 + 872))
    {
      v28 = v28 - (*(a1 + 8) >> 1);
    }

    if (v28 <= v16)
    {
      goto LABEL_102;
    }

    CFRelease(v56);
    v56 = 0;
    v16 = v28;
    v19 = v27;
    if (v26 > 60.0)
    {
      goto LABEL_51;
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  v18 = 0;
  v28 = v16;
LABEL_51:
  if (v28 + v26 <= v15 + 1.0)
  {
    segPumpClearSuggestedAlternate(a1, 1);
  }

  if (!v18 || v4 == *(a2 + 64))
  {
    OUTLINED_FUNCTION_260_1();
    goto LABEL_80;
  }

  if (dword_1EAF16A30)
  {
    OUTLINED_FUNCTION_297_1();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v4 = type;
    v29 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
    if (OUTLINED_FUNCTION_16_1(v29))
    {
      OUTLINED_FUNCTION_392_1();
      v58 = 136316418;
      v59 = "segPumpCheckCachedVariantsAndRequestSwitch";
      v60 = 2114;
      OUTLINED_FUNCTION_37_0();
      v61 = v30;
      v62 = v31;
      v63 = v32;
      v64 = v33;
      v65 = v32;
      v66 = v26;
      OUTLINED_FUNCTION_146();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  v34 = OUTLINED_FUNCTION_171();
  LongestContiguousMediaStreamInCacheAtTime = segPumpGetAlternateEntryFromURLForCacheLookup(v34, v35, v36);
  if (!LongestContiguousMediaStreamInCacheAtTime)
  {
    goto LABEL_102;
  }

  v37 = *(a1 + 8416);
  if (v37)
  {
    CFRelease(v37);
    *(a1 + 8416) = 0;
  }

  v38 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &v57);
  *(a1 + 8416) = v38;
  if (!v38)
  {
    OUTLINED_FUNCTION_260_1();
LABEL_104:
    LongestContiguousMediaStreamInCacheAtTime = 4294954655;
    goto LABEL_81;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = *(a1 + 8408);
  v39 = *(LongestContiguousMediaStreamInCacheAtTime + 8);
  *(a1 + 8408) = v39;
  if (v39)
  {
    CFRetain(v39);
  }

  if (os_log_and_send_and_compose_flags_and_os_log_type)
  {
    CFRelease(os_log_and_send_and_compose_flags_and_os_log_type);
  }

  if (v50)
  {
    v40 = FigAlternateSkipEqualOrLowerBitratesFilterCreate(*(a1 + 56), *(a1 + 8408), @"PartialCache", 630, &v53);
    if (!v40)
    {
      v40 = FigAlternateSelectionBossAddFilter(*(a1 + 9728), v53);
      if (!v40)
      {
        v41 = v51;
        LongestContiguousMediaStreamInCacheAtTime = FigAlternateSelectionBossApplyFilters(v51);
        OUTLINED_FUNCTION_260_1();
        if (v51)
        {
          goto LABEL_82;
        }

        goto LABEL_83;
      }
    }

    LongestContiguousMediaStreamInCacheAtTime = v40;
LABEL_102:
    OUTLINED_FUNCTION_260_1();
    goto LABEL_81;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  os_log_and_send_and_compose_flags_and_os_log_type = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!os_log_and_send_and_compose_flags_and_os_log_type)
  {
    v4 = 0;
    goto LABEL_104;
  }

  v43 = *(a1 + 8416);
  if (v43)
  {
    v4 = CFRetain(v43);
  }

  else
  {
    v4 = 0;
  }

  CFDictionaryAddValue(os_log_and_send_and_compose_flags_and_os_log_type, @"FBP_AlternateValue", *(LongestContiguousMediaStreamInCacheAtTime + 8));
  v44 = OUTLINED_FUNCTION_406();
  CFDictionaryAddValue(v44, v45, v46);
  segPumpReadyNotification(a1, @"FBP_SuggestedAlternate", os_log_and_send_and_compose_flags_and_os_log_type);
  if (FigRetainProxyGetLockCount() < 2)
  {
    segPumpUnlockAndSendAllPendingNotifications();
    FigRetainProxyLockMutex();
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_297_1();
  v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v48 = os_log_type_enabled(v47, type);
  if (OUTLINED_FUNCTION_71_0(v48))
  {
    OUTLINED_FUNCTION_392_1();
    v58 = 136315650;
    v59 = "segPumpCheckCachedVariantsAndRequestSwitch";
    v60 = 2114;
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_51_0();
    _os_log_send_and_compose_impl();
  }

  v41 = v51;
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_449();
  LongestContiguousMediaStreamInCacheAtTime = 4294954651;
  if (v51)
  {
LABEL_82:
    CFRelease(v41);
  }

LABEL_83:
  if (v53)
  {
    CFRelease(v53);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (os_log_and_send_and_compose_flags_and_os_log_type)
  {
    CFRelease(os_log_and_send_and_compose_flags_and_os_log_type);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return LongestContiguousMediaStreamInCacheAtTime;
}

void segPumpStreamDoDeliveryFollowUp(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, CFTypeRef cf2, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_298_0();
  v33 = v32;
  if (!*(v34 + 1152))
  {
    OUTLINED_FUNCTION_113_1();
    if ((v35 || !*(*(v29 + 696) + 8)) && (!*(v29 + 869) || !*(v30 + 8211)))
    {
      OUTLINED_FUNCTION_64_0();
      segPumpTrySpeculativeRead();
      if (v36)
      {
        goto LABEL_88;
      }

      OUTLINED_FUNCTION_171();
      segPumpReadOrScheduleIndexFileRead();
    }

    if (!*(v29 + 256))
    {
      goto LABEL_99;
    }

    v37 = *(v29 + 264) ? *(v29 + 264) : *(v29 + 256);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v39 = DerivedStorage;
    v40 = *(v29 + 696);
    v31 = v40 ? *(v40 + 32) : 0;
    if (!segPumpShouldDoSegmentReadAheads(DerivedStorage))
    {
      goto LABEL_99;
    }

    OUTLINED_FUNCTION_317_0();
    if (v42 != v43)
    {
      v44 = 0;
      if (v37)
      {
        while (1)
        {
LABEL_32:
          if (v44 >= *(v29 + 776))
          {
            goto LABEL_74;
          }

          v48 = *(v39 + 337) ? 1 : *(v39 + 8396);
          if (v44 >= v48)
          {
            goto LABEL_74;
          }

          NextSegment = FigMediaSegmentSpecifierGetNextSegment(v37);
          if (!NextSegment)
          {
            if (!FigMediaSegmentSpecifierIsFragment(v37))
            {
              goto LABEL_74;
            }

            v50 = *(v29 + 56);
            if (!v50)
            {
              goto LABEL_74;
            }

            FigMediaPlaylistGetMediaSegmentSpecifiers(v50);
            LastValue = FigCFArrayGetLastValue();
            if (!LastValue)
            {
              goto LABEL_74;
            }

            PreviousSegment = LastValue;
            while (1)
            {
              FigMediaSegmentSpecifierGetPartialSegments(PreviousSegment);
              if (v37 == FigCFArrayGetLastValue())
              {
                break;
              }

              PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(PreviousSegment);
              if (!PreviousSegment)
              {
                goto LABEL_74;
              }
            }

            NextSegment = FigMediaSegmentSpecifierGetNextSegment(PreviousSegment);
            if (!NextSegment)
            {
              goto LABEL_74;
            }
          }

          FirstValue = NextSegment;
          FigMediaSegmentSpecifierGetPartialSegments(NextSegment);
          v108 = v33;
          if (FigCFArrayGetFirstValue() && FigMediaSegmentSpecifierIsFragment(FirstValue))
          {
            FigMediaSegmentSpecifierGetPartialSegments(FirstValue);
            FirstValue = FigCFArrayGetFirstValue();
          }

          MediaFilePrivateData = segPumpGetMediaFilePrivateData(FirstValue);
          if (MediaFilePrivateData[13])
          {
            goto LABEL_73;
          }

          v55 = MediaFilePrivateData;
          if (FigMediaSegmentSpecifierGetMapSegmentSpecifier(FirstValue))
          {
            FigMediaSegmentSpecifierGetMapSegmentSpecifier(FirstValue);
            v56 = OUTLINED_FUNCTION_262_1();
            if (!segPumpIsMapEntryCached(v56, v57, v58, v59))
            {
              goto LABEL_73;
            }
          }

          if (FirstValue && FigMediaSegmentSpecifierGetType(FirstValue) == 1)
          {
            goto LABEL_73;
          }

          if (*(v39 + 330))
          {
            if (FigMediaSegmentSpecifierGetContentKeySpecifier(FirstValue))
            {
              ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(FirstValue);
              if (segPumpDoesCryptKeyRequireFetch(ContentKeySpecifier))
              {
                goto LABEL_73;
              }
            }
          }

          if (FigMediaSegmentSpecifierIsMarkedAsGap(v37) || FigMediaSegmentSpecifierIsMarkedAsGap(FirstValue))
          {
            break;
          }

          OUTLINED_FUNCTION_262_1();
          segPumpSeeIfMediaFileIsInCache();
          if (v61)
          {
            goto LABEL_73;
          }

          v63 = *(v29 + 16);
          v62 = *(v29 + 24);
          v64 = segPumpGetMediaFilePrivateData(FirstValue);
          segPumpEnsureMediaSegmentURLs(FirstValue, v63, v62);
          if (!v64[2])
          {
            OUTLINED_FUNCTION_40_0();
            FigSignalErrorAtGM();
            goto LABEL_73;
          }

          v65 = *(v29 + 16);
          v66 = *(v29 + 24);
          v67 = segPumpGetMediaFilePrivateData(FirstValue);
          segPumpEnsureMediaSegmentURLs(FirstValue, v65, v66);
          if (!segPumpShouldRequestURLAsHTTPURL(v39, v67[2]))
          {
            goto LABEL_73;
          }

          for (i = *(v29 + 680); i; i = *i)
          {
            v69 = OUTLINED_FUNCTION_341_1();
            if (segPumpMediaConnectionIncludesMedia(v69, v70, FirstValue))
            {
              goto LABEL_73;
            }
          }

          v71 = OUTLINED_FUNCTION_262_1();
          if (segPumpCopyAndCreateNetworkURLFromPumpCache(v71, v72, v73))
          {
            goto LABEL_73;
          }

          if (!FigCFHTTPCompareURLs(*(v29 + 24), 0))
          {
            v84 = 0;
            v33 = v108;
            goto LABEL_77;
          }

          v55[6] = 0;
          v55[7] = 0;
          v55[13] = 0;
          OUTLINED_FUNCTION_104_0();
          OUTLINED_FUNCTION_135_1();
          if (segPumpReadMediaFile(v74, v75, v76, v77, v78, v79, v31, v80))
          {
            goto LABEL_73;
          }

          v81 = *(*(v29 + 768) + 8 * v44);
          v33 = v108;
          if (v81)
          {
            v82 = *(v81 + 32);
            if (v82)
            {
              v31 = v82;
            }

            ++v44;
            v37 = FirstValue;
            if (FirstValue)
            {
              continue;
            }
          }

          goto LABEL_74;
        }

        FigMediaSegmentSpecifierIsMarkedAsGap(v37);
        v105 = OUTLINED_FUNCTION_104_0();
        segPumpHandleMediaFileNetworkError(v105, v106, 0, v107, 4294951877, 0);
LABEL_73:
        v33 = v108;
      }
    }

    else
    {
      v44 = 0;
      while (1)
      {
        v45 = *(v39 + 337) ? 1 : *(v39 + 8396);
        if (v44 >= v45)
        {
          break;
        }

        v46 = *(*(v29 + 768) + 8 * v44);
        if (!v46)
        {
          break;
        }

        if (*(v46 + 32))
        {
          v31 = *(v46 + 32);
        }

        v47 = *(v46 + 8);
        if (v47)
        {
          v37 = v47;
        }

        if (v41 == ++v44)
        {
          v44 = v41;
          break;
        }
      }

      if (v37)
      {
        goto LABEL_32;
      }
    }

LABEL_74:
    OUTLINED_FUNCTION_322_1();
    v84 = v83;
LABEL_77:
    if ((v84 & 1) == 0)
    {
LABEL_99:
      OUTLINED_FUNCTION_104_0();
      if (segPumpStreamSchedulePreloadHintRead() != -15626)
      {
        v85 = CMBaseObjectGetDerivedStorage();
        if (segPumpStreamHasPreloadMapHint(v29))
        {
          if (segPumpShouldDoSegmentReadAheads(v85))
          {
            v86 = OUTLINED_FUNCTION_262_1();
            if (segPumpStreamGetFuturePreloadCount(v86, v87))
            {
              if (!segPumpMediaConnectionIsActive(*(v29 + 800)))
              {
                PreloadMapHint = FigMediaPlaylistGetPreloadMapHint(*(v29 + 56));
                v89 = *(v29 + 16);
                v90 = *(v29 + 24);
                segPumpGetMediaFilePrivateData(PreloadMapHint);
                v91 = OUTLINED_FUNCTION_127_1();
                segPumpEnsureMediaSegmentURLs(v91, v89, v90);
                if (!*(v31 + 16))
                {
                  OUTLINED_FUNCTION_40_0();
                  MediaFile = FigSignalErrorAtGM();
LABEL_86:
                  if (MediaFile == -15626)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_87;
                }

                v92 = *(v29 + 16);
                v93 = *(v29 + 24);
                segPumpGetMediaFilePrivateData(PreloadMapHint);
                v94 = OUTLINED_FUNCTION_127_1();
                segPumpEnsureMediaSegmentURLs(v94, v92, v93);
                if (segPumpStreamGetMapNumber(v29) < 0)
                {
                  *(segPumpGetMediaFilePrivateData(PreloadMapHint) + 6) = 0;
                  *(segPumpGetMediaFilePrivateData(PreloadMapHint) + 7) = 0;
                  OUTLINED_FUNCTION_104_0();
                  OUTLINED_FUNCTION_186();
                  MediaFile = segPumpReadMediaFile(v95, v96, v97, v98, v99, v100, v101, v102);
                  goto LABEL_86;
                }
              }
            }
          }
        }

LABEL_87:
        v104 = OUTLINED_FUNCTION_64_0();
        segPumpReadNextCryptKeyForStream(v104);
      }
    }
  }

LABEL_88:
  if (v33)
  {
    *v33 = 0;
  }

  OUTLINED_FUNCTION_297_0();
}

void segPumpDeliverEnd()
{
  OUTLINED_FUNCTION_369();
  OUTLINED_FUNCTION_140_0();
  DataCallback = segPumpLockAndCopyPumpFromRetainProxy();
  if (DataCallback)
  {
    goto LABEL_6;
  }

  if (*(v1 + 857))
  {
    *(v1 + 857) = 0;
  }

  OUTLINED_FUNCTION_307_1();
  DataCallback = segPumpMakeDataCallback(v3, v1, v4, 0, v5, v6, MEMORY[0x1E6960C70], 0, v7, v8, v9, v10);
  *(v1 + 1152) = 1;
  if (DataCallback)
  {
LABEL_6:
    segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(v0, DataCallback);
  }

  segPumpUnlockAndSendAllPendingNotifications();
}

void segPumpSetCurrentTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int *a29)
{
  OUTLINED_FUNCTION_813();
  v30 = v29;
  v192 = v32;
  v193 = v31;
  v34 = v33;
  v36 = v35;
  v196 = v37;
  v39 = v38;
  v41 = v40;
  v213 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  flags = v39->flags;
  v44 = segPumpAPILockAndEnsureAPIStatus(v41, 1);
  if (v44)
  {
    goto LABEL_199;
  }

  if (v39->value < 0)
  {
    OUTLINED_FUNCTION_374();
    v44 = FigSignalErrorAtGM();
LABEL_199:
    v166 = v44;
    goto LABEL_187;
  }

  MinTime = segPumpGetMinTime(DerivedStorage);
  MaxTime = segPumpGetMaxTime(DerivedStorage);
  v47 = OUTLINED_FUNCTION_249();
  v194 = segPumpGetMinimumPrebufferReservation(v47, v48) + *(DerivedStorage + 8176);
  *v201 = flags & 5;
  if (*v201 == 5 && !*(DerivedStorage + 8218))
  {
    LODWORD(rhs.value) = 0;
    segPumpCanContinueWithoutGap(DerivedStorage, &rhs);
    if (LODWORD(rhs.value) == 7 && (*(v196 + 12) & 1) != 0)
    {
      OUTLINED_FUNCTION_105(v196);
      if (CMTimeGetSeconds(&time) >= MaxTime - v194)
      {
        v166 = 4294950458;
        goto LABEL_187;
      }
    }
  }

  if (v34)
  {
    v49 = *(DerivedStorage + 392);
    if (!*(v49 + 872))
    {
      time = *v30;
      Seconds = CMTimeGetSeconds(&time);
      CMTimeMakeWithSeconds(&rhs, Seconds * 1.5, 1000);
      lhs = *v39;
      CMTimeSubtract(&time, &lhs, &rhs);
      *v39 = time;
      v49 = *(DerivedStorage + 392);
    }

    v51 = *(v49 + 56);
    v52 = v196;
    if (v51 && (MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v51)) != 0 && CFArrayGetCount(MediaSegmentSpecifiers) >= 1)
    {
      v54 = 0;
      *(DerivedStorage + 8897) = 0;
      *(DerivedStorage + 8952) = 0;
    }

    else
    {
      v54 = 0;
    }

    HIDWORD(v189) = 1;
  }

  else
  {
    if ((*(v193 + 12) & 0x1D) == 1 && (*(v192 + 12) & 0x1D) == 1 && ((OUTLINED_FUNCTION_105(v193), *cf = *MEMORY[0x1E6960CC0], *&rhs.value = *MEMORY[0x1E6960CC0], v55 = *(MEMORY[0x1E6960CC0] + 16), rhs.epoch = v55, CMTimeCompare(&time, &rhs)) || (OUTLINED_FUNCTION_105(v192), *&rhs.value = *cf, rhs.epoch = v55, CMTimeCompare(&time, &rhs))))
    {
      HIDWORD(v189) = 0;
      v54 = 1;
    }

    else
    {
      v54 = 0;
      HIDWORD(v189) = 1;
    }

    v52 = v196;
  }

  v195 = v41;
  if (*(v52 + 12))
  {
    OUTLINED_FUNCTION_416_1();
    rhs = *v52;
    v56 = CMTimeCompare(&time, &rhs) > 0;
  }

  else
  {
    v56 = 0;
  }

  OUTLINED_FUNCTION_416_1();
  v57 = CMTimeGetSeconds(&time);
  time = *v52;
  v58 = CMTimeGetSeconds(&time);
  if (dword_1EAF16A30)
  {
    LODWORD(lhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v60 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_115_1(v60))
    {
      OUTLINED_FUNCTION_337_1();
      if (v79)
      {
        v61 = &stru_1F0B1AFB8;
      }

      LODWORD(rhs.value) = 136316162;
      *(&rhs.value + 4) = "segPumpSetCurrentTime";
      LOWORD(rhs.flags) = 2114;
      *(&rhs.flags + 2) = v61;
      HIWORD(rhs.epoch) = 2048;
      v205 = v57;
      v206 = 2048;
      v207 = v58;
      v208 = 1024;
      LODWORD(v209) = v56;
      LODWORD(v181) = 48;
      p_rhs = &rhs;
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  v198 = a29;
  if (*(DerivedStorage + 8218))
  {
    if (v57 > MaxTime && (v62 = *(*(DerivedStorage + 392) + 56)) != 0 && (v63 = FigMediaPlaylistGetMediaSegmentSpecifiers(v62)) != 0 && CFArrayGetCount(v63) >= 1 || v57 == MaxTime)
    {
      v57 = MaxTime + -0.001;
    }
  }

  v64 = 0;
  v65 = DerivedStorage + 392;
  v66 = 1;
  do
  {
    v67 = v66;
    v68 = *(v65 + 16 * v64);
    v69 = *(v68 + 56);
    if (v69)
    {
      v70 = FigMediaPlaylistGetMediaSegmentSpecifiers(v69);
      if (v70)
      {
        if (CFArrayGetCount(v70) >= 1)
        {
          if (*(DerivedStorage + 8218))
          {
            if (v56)
            {
              v71 = *(v68 + 56);
              if (v71)
              {
                FigMediaPlaylistGetMediaSegmentSpecifiers(v71);
                LastValue = FigCFArrayGetLastValue();
                if (!LastValue || MaxTime - FigMediaSegmentSpecifierGetTimeInSeconds(LastValue) <= v58)
                {
LABEL_186:
                  OUTLINED_FUNCTION_374();
                  v166 = FigSignalErrorAtGM();
                  goto LABEL_187;
                }
              }
            }
          }

          if (v57 < MinTime)
          {
            v57 = MinTime;
          }
        }
      }
    }

    v66 = 0;
    v64 = 1;
  }

  while ((v67 & 1) != 0);
  v73 = v57 <= v58 || (*(v196 + 12) & 1) == 0;
  v74 = v57 >= MinTime && v57 <= MaxTime;
  for (i = 392; i != 440; i += 16)
  {
    v76 = *(DerivedStorage + i);
    if (*(v76 + 16))
    {
      v77 = *(v76 + 56);
      if (v77)
      {
        v78 = FigMediaPlaylistGetMediaSegmentSpecifiers(v77);
        if (v78)
        {
          if (CFArrayGetCount(v78) >= 1)
          {
            OUTLINED_FUNCTION_269_0();
            v79 = !v79 && *(DerivedStorage + 8218) == 0;
            v80 = !v79;
            if (!v80 && !v74)
            {
              goto LABEL_186;
            }
          }
        }
      }
    }
  }

  *(DerivedStorage + 8864) = v36;
  segPumpClearSuggestedAlternate(DerivedStorage, 1);
  v81 = *(DerivedStorage + 296);
  if (v81)
  {
    FigStreamingCacheHintPlaybackTime(v81, v57);
  }

  segPumpClearStatistics(DerivedStorage);
  for (j = 0; j != 3; ++j)
  {
    OUTLINED_FUNCTION_317_0();
    if (v148 == v83)
    {
      do
      {
        OUTLINED_FUNCTION_167_1();
        segPumpStreamCancelReadAheadAndResetDataAtIndex(v84, v85, v86);
        OUTLINED_FUNCTION_283_1();
      }

      while (v148 != v83);
    }
  }

  for (k = 392; k != 440; k += 16)
  {
    segPumpStreamCancelPreloadReadAndResetData(DerivedStorage, *(DerivedStorage + k));
  }

  for (m = 392; m != 440; m += 16)
  {
    segPumpStreamCancelPreloadMapReadAndResetData(DerivedStorage, *(DerivedStorage + m));
  }

  v89 = 0;
  cf[0] = 0;
  if (MaxTime - v194 >= 0.0)
  {
    v90 = MaxTime - v194;
  }

  else
  {
    v90 = 0.0;
  }

  OUTLINED_FUNCTION_269_0();
  v92 = v54 | v73;
  if (v79)
  {
    v92 = 1;
  }

  HIDWORD(v197) = v92;
  v93 = 1000000000.0;
  *&v91 = 136315906;
  *v187 = v91;
  *&v91 = 136316162;
  *v190 = v91;
  v94 = -1000000000.0;
  *&v91 = 136316418;
  *v186 = v91;
  v95 = &unk_1EAF16000;
  do
  {
    v96 = *(v65 + 16 * v89);
    ++*(v96 + 880);
    OUTLINED_FUNCTION_246_0();
    OUTLINED_FUNCTION_265_0();
    segPumpCancelMediaFileReadAndResetData(v97, v98, v99, v100);
    v101 = OUTLINED_FUNCTION_246_0();
    segPumpSetStreamDiscontinuityDomain(v101, v102, 0);
    if (!*(*(v65 + 16 * v89) + 16))
    {
      goto LABEL_167;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    v103 = *(v96 + 56);
    if (!v103)
    {
      goto LABEL_111;
    }

    v104 = FigMediaPlaylistGetMediaSegmentSpecifiers(v103);
    if (!v104 || CFArrayGetCount(v104) < 1)
    {
      goto LABEL_111;
    }

    v105 = 0;
    v106 = 1;
    if (!*(DerivedStorage + 8218))
    {
      v107 = v57;
      if (v57 <= v90)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_269_0();
      if (!v79 && v95[652])
      {
        v108 = OUTLINED_FUNCTION_74_1();
        v116 = OUTLINED_FUNCTION_242_1(v108, v109, v110, v111, v112, v113, v114, v115, p_rhs, v181, v182, v183, v184, v185, v186[0], v186[1], v187[0], v187[1], v188, v189, v190[0], v190[1], v191, v192, v193, *&v194, v195, v196, v197, v198, cf[0], cf[1], v200, *v201, *&v201[4], v201[6], type, lhs.value);
        if (OUTLINED_FUNCTION_16_1(v116))
        {
          OUTLINED_FUNCTION_337_1();
          LODWORD(rhs.value) = v186[0];
          *(&rhs.value + 4) = "segPumpSetCurrentTime";
          LOWORD(rhs.flags) = 2114;
          OUTLINED_FUNCTION_124_1();
          v207 = v57;
          v208 = v117;
          v209 = MaxTime;
          v210 = v117;
          v211 = v194;
          OUTLINED_FUNCTION_97_1();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_160_1();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0();
      }

      v118 = *(v96 + 1056) + 1000000000 * *(DerivedStorage + 8);
      if (FigGetUpTimeNanoseconds() >= v118 || *(v96 + 1184))
      {
        OUTLINED_FUNCTION_269_0();
        if (v79)
        {
          v106 = 0;
          v105 = 0;
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          v105 = CFDateCreate(*(DerivedStorage + 56), v57 + Current + (UpTimeNanoseconds - *(v96 + 1064)) / v94 - *(v96 + 96) - *(v96 + 88));
          v106 = 0;
        }

        goto LABEL_112;
      }

      OUTLINED_FUNCTION_269_0();
      if (v79)
      {
        if (v95[652])
        {
          v121 = OUTLINED_FUNCTION_74_1();
          v129 = OUTLINED_FUNCTION_242_1(v121, v122, v123, v124, v125, v126, v127, v128, p_rhs, v181, v182, v183, v184, v185, v186[0], v186[1], v187[0], v187[1], v188, v189, v190[0], v190[1], v191, v192, v193, *&v194, v195, v196, v197, v198, cf[0], cf[1], v200, *v201, *&v201[4], v201[6], type, lhs.value);
          if (OUTLINED_FUNCTION_16_1(v129))
          {
            OUTLINED_FUNCTION_337_1();
            LODWORD(rhs.value) = v190[0];
            *(&rhs.value + 4) = "segPumpSetCurrentTime";
            LOWORD(rhs.flags) = 2114;
            OUTLINED_FUNCTION_124_1();
            v207 = v57;
            v208 = v130;
            v209 = v90;
            OUTLINED_FUNCTION_97_1();
            OUTLINED_FUNCTION_108();
            OUTLINED_FUNCTION_160_1();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_109();
          v106 = 1;
          OUTLINED_FUNCTION_88_0();
          v105 = 0;
        }

        else
        {
          v105 = 0;
          v106 = 1;
        }

        v107 = v90;
        goto LABEL_113;
      }

LABEL_111:
      v105 = 0;
      v106 = 1;
    }

LABEL_112:
    v107 = v57;
LABEL_113:
    *(v96 + 857) = 1;
    if (v198 && !*(DerivedStorage + 8896))
    {
      v131 = *(v96 + 72) + 1;
      *(v96 + 72) = v131;
      v198[v89] = v131;
    }

    *(v96 + 861) = 0;
    *(v96 + 401) = 256;
    OUTLINED_FUNCTION_269_0();
    cf[0] = v105;
    if (v79 && *(v96 + 866))
    {
      if (v95[652])
      {
        v132 = OUTLINED_FUNCTION_74_1();
        value = lhs.value;
        os_log_type_enabled(v132, type);
        OUTLINED_FUNCTION_101_0();
        if (v79)
        {
          v135 = v134;
        }

        else
        {
          v135 = value;
        }

        if (v135)
        {
          OUTLINED_FUNCTION_337_1();
          if (v79)
          {
            v137 = &stru_1F0B1AFB8;
          }

          else
          {
            v137 = v136;
          }

          v138 = *v96;
          v139 = (FigGetUpTimeNanoseconds() - *(v96 + 1064));
          LODWORD(rhs.value) = v187[0];
          *(&rhs.value + 4) = "segPumpSetCurrentTime";
          LOWORD(rhs.flags) = 2114;
          *(&rhs.flags + 2) = v137;
          HIWORD(rhs.epoch) = 2048;
          v205 = v138;
          v206 = 2048;
          v207 = v139 / v93;
          OUTLINED_FUNCTION_95_1();
          p_rhs = &rhs;
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_160_1();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_449();
        v95 = &unk_1EAF16000;
      }

      goto LABEL_159;
    }

    if (!v106 || *(v96 + 1185))
    {
      if (v105)
      {
        v160 = CFRetain(v105);
      }

      else
      {
        v160 = 0;
      }

      *(v96 + 240) = v160;
      *(v96 + 866) = 1;
      segPumpResetConnection(DerivedStorage, v96 + 408);
      *(v96 + 859) = 0;
      v161 = OUTLINED_FUNCTION_246_0();
      segPumpStreamUpdateIndexExpectedArrival(v161, v162);
      segPumpResetAllMediaFilePrivateDataForStream(v96);
      v163 = OUTLINED_FUNCTION_246_0();
      Frame = segPumpSendIndexFileRequest(v163, v164, 0);
      goto LABEL_158;
    }

    v140 = *(v96 + 56);
    if (!v140 || (v141 = FigMediaPlaylistGetMediaSegmentSpecifiers(v140)) == 0 || CFArrayGetCount(v141) <= 0)
    {
      *(v96 + 120) = v107 - *(v96 + 88);
      *(v96 + 128) = 0xBFF0000000000000;
      *(v96 + 920) = 0;
      v149 = *(v96 + 232);
      if (v149)
      {
        CFRelease(v149);
        *(v96 + 232) = 0;
      }

      if (v95[652])
      {
        v150 = OUTLINED_FUNCTION_74_1();
        v158 = OUTLINED_FUNCTION_242_1(v150, v151, v152, v153, v154, v155, v156, v157, p_rhs, v181, v182, v183, v184, v185, v186[0], v186[1], v187[0], v187[1], v188, v189, v190[0], v190[1], v191, v192, v193, *&v194, v195, v196, v197, v198, v105, cf[1], v200, *v201, *&v201[4], v201[6], type, lhs.value);
        if (OUTLINED_FUNCTION_16_1(v158))
        {
          OUTLINED_FUNCTION_337_1();
          LODWORD(rhs.value) = v190[0];
          *(&rhs.value + 4) = "segPumpSetCurrentTime";
          LOWORD(rhs.flags) = 2114;
          OUTLINED_FUNCTION_124_1();
          v207 = v159;
          v208 = 1024;
          LODWORD(v209) = v89;
          OUTLINED_FUNCTION_97_1();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_160_1();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0();
      }

      goto LABEL_159;
    }

    *(v96 + 120) = 0xBFF0000000000000;
    v142 = *(v96 + 56);
    segPumpResetAllMediaFilePrivateDataForStream(v96);
    v143 = 0;
    v144 = *(v96 + 88);
    while (1)
    {
      Count = FigMediaPlaylistGetMediaSegmentSpecifiers(v142);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (v143 >= Count)
      {
        goto LABEL_162;
      }

      v146 = FigMediaPlaylistGetMediaSegmentSpecifiers(v142);
      ValueAtIndex = CFArrayGetValueAtIndex(v146, v143);
      if (!*(segPumpGetMediaFilePrivateData(ValueAtIndex) + 96))
      {
        break;
      }

LABEL_146:
      ++v143;
    }

    if (v144 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex) <= v107 || (v197 & 0x100000000) == 0 && (*v96 == *(DerivedStorage + 8600) ? (v148 = v144 < v58) : (v148 = 0), v148))
    {
      segPumpSetDeliveryStatusForMediaFileAndParts(ValueAtIndex, 1);
      v144 = v144 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
      goto LABEL_146;
    }

    if ((v189 & 0x100000000) != 0)
    {
LABEL_162:
      v95 = &unk_1EAF16000;
      goto LABEL_163;
    }

    *&v185 = v94;
    v169 = v93;
    OUTLINED_FUNCTION_105(v193);
    v170 = CMTimeGetSeconds(&time);
    v95 = &unk_1EAF16000;
    if (FigMediaSegmentSpecifierGetNextSegment(ValueAtIndex))
    {
      *&v184 = v90;
      *&v183 = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
      OUTLINED_FUNCTION_105(v192);
      v171 = CMTimeGetSeconds(&time);
      v172 = v144 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
      if (v144 < v170 || v171 < v172)
      {
        v148 = v171 < v172;
        v90 = *&v184;
        v93 = v169;
        if (!v148)
        {
LABEL_181:
          segPumpSetDeliveryStatusForMediaFileAndParts(ValueAtIndex, 1);
          v144 = v144 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
        }
      }

      else
      {
        v90 = *&v184;
        v93 = v169;
        if (v107 - v144 > v144 + *&v183 - v107)
        {
          goto LABEL_181;
        }
      }
    }

    else
    {
      v93 = v169;
    }

    v94 = *&v185;
LABEL_163:
    *(v96 + 104) = v144;
    if (*(DerivedStorage + 8896))
    {
      v174 = v94;
      v175 = v93;
      v176 = *(DerivedStorage + 8880);
      v177 = FigGetUpTimeNanoseconds();
      CMTimeMakeWithSeconds(&time, v107, 1000);
      rhs = *v196;
      v178 = v176;
      v93 = v175;
      v94 = v174;
      Frame = segPumpStepNextFrame(v195, &rhs.value, v177, &time.value, 1, v198, v178);
LABEL_158:
      v166 = Frame;
      if (Frame)
      {
        *(v96 + 857) = 0;
LABEL_190:
        v41 = v195;
        goto LABEL_191;
      }

LABEL_159:
      v167 = *(DerivedStorage + 8896);
      *(v96 + 1185) = 0;
      if (!v167)
      {
        goto LABEL_165;
      }

      goto LABEL_167;
    }

    *(v96 + 1185) = 0;
LABEL_165:
    v168 = *(v96 + 288);
    if (v168)
    {
      CFRelease(v168);
      *(v96 + 288) = 0;
      *(v96 + 320) = -1;
    }

LABEL_167:
    ++v89;
  }

  while (v89 != 3);
  if (*(DerivedStorage + 8896))
  {
    v166 = 0;
    goto LABEL_190;
  }

  v41 = v195;
  OUTLINED_FUNCTION_395_0();
  segPumpDeliverNextMediaForAllStreams();
  v166 = v179;
LABEL_191:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_187:
  segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v41, v166);
  OUTLINED_FUNCTION_812();
}

void segPumpDeliverNextMediaForAllStreams()
{
  OUTLINED_FUNCTION_369();
  v59 = *MEMORY[0x1E69E9840];
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  HIWORD(v49) = 0;
  if (v2[8896])
  {
    v3 = *(v1 + 392);
    if (!*(v3 + 866) && (*(v3 + 160) & 0xFFFFFFFE) == 4 && !*(v3 + 1152))
    {
      if (v2[8952] || v2[8897] || !*(v3 + 857) && !*(v3 + 862))
      {
        v4 = OUTLINED_FUNCTION_298();

        segPumpTryIFrameFetch(v4, v5);
      }

      else
      {
        v38 = *(v3 + 120);
        if (v38 >= 0.0)
        {
          v39 = *(v1 + 8920);
          if (v39 == 0.0)
          {
            v39 = *(v1 + 8880);
          }

          v40 = dbl_196E72890[v39 >= 0.0];
          CMTimeMakeWithSeconds((&v48.value + 4), v38, 1000);
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          CMTimeMakeWithSeconds((v43 + 4), v40 + *(v3 + 120), 1000);
          segPumpStepNextFrame(v0, (&v48.value + 4), UpTimeNanoseconds, (v43 + 4), 1, 0, v39);
        }
      }
    }
  }

  else
  {
    v6 = &v53;
    v7 = &v56;
    v8 = &v50;
    for (i = 392; i != 440; i += 16)
    {
      v10 = *(v1 + i);
      v11 = v10[7];
      if (v11)
      {
        MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v11);
        if (MediaSegmentSpecifiers)
        {
          if (CFArrayGetCount(MediaSegmentSpecifiers) >= 1)
          {
            *v8 = v10[10];
            if (v10[32])
            {
              *v7 = 0;
            }

            else
            {
              v13 = OUTLINED_FUNCTION_298();
              if (segPumpDetermineMediaSegmentToDeliver(v13, v14, v10, v7, v6))
              {
                return;
              }
            }
          }
        }
      }

      ++v6;
      ++v7;
      ++v8;
    }

    v15 = *(v1 + 8600);
    v16 = *(&v56 + v15);
    if (!v16 || !*(v1 + 296) || !segPumpCheckCachedVariantsAndRequestSwitch(v1, *(v1 + 392 + 16 * v15), v16, 1) && !FigRetainProxyIsInvalidated())
    {
      v17 = &v56;
      v18 = &v53;
      v19 = &v50;
      for (j = 392; j != 440; j += 16)
      {
        v21 = *(v1 + j);
        v22 = *(v21 + 56);
        if (v22)
        {
          v23 = FigMediaPlaylistGetMediaSegmentSpecifiers(v22);
          if (v23)
          {
            if (CFArrayGetCount(v23) >= 1 && (*(v21 + 160) & 0xFFFFFFFE) == 4 && !*(v21 + 866) && *(v21 + 80) == *v19)
            {
              v24 = OUTLINED_FUNCTION_266();
              if (!segPumpStreamShouldYieldToTrialSwitch(v24, v25))
              {
                v26 = OUTLINED_FUNCTION_266();
                if (segPumpStreamReadAheadPermitsNextRead(v26, v27, v28))
                {
                  if (!*(v21 + 1152))
                  {
                    HIBYTE(v49) = 0;
                    v29 = *v17;
                    if (*v17)
                    {
                      v37 = OUTLINED_FUNCTION_69_0();
                      if (segPumpFetchOrDispatchMediaSegment(v37))
                      {
                        return;
                      }
                    }

                    else
                    {
                      v29 = *(v21 + 256);
                      *v17 = v29;
                    }

                    if (!BYTE6(v49))
                    {
                      v30 = OUTLINED_FUNCTION_69_0();
                      segPumpStreamDoDeliveryFollowUp(v30, v31, v32, v33, v29, 0, v34, v35, v42, v43[0], v43[1], v44, v45, v46, v47, v48.value, *&v48.timescale, v48.epoch, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
                      if (v36)
                      {
                        break;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ++v17;
        ++v18;
        ++v19;
      }
    }
  }
}

void segPumpTrySpeculativeRead()
{
  OUTLINED_FUNCTION_428_1();
  v1 = v0;
  NextSegment = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v4 + 80);
  FigRetainProxyRetain();
  *v1 = 0;
  if (NextSegment && *(v7 + 296) && !*(v5 + 405) && !*(v5 + 256))
  {
    v9 = *(v5 + 880);
    while (1)
    {
      if (!*(segPumpGetMediaFilePrivateData(NextSegment) + 99))
      {
        if (*(*(v5 + 696) + 8) == NextSegment)
        {
          v14 = NextSegment;
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_118_0();
        if (segPumpCanAddSegmentToCache(v10, v11, v12, v13))
        {
          break;
        }
      }

      NextSegment = FigMediaSegmentSpecifierGetNextSegment(NextSegment);
      if (!NextSegment)
      {
        goto LABEL_10;
      }
    }

    v14 = *(*(v5 + 696) + 8);
LABEL_13:
    if (NextSegment != v14)
    {
      OUTLINED_FUNCTION_118_0();
      if (!segPumpCheckCachedVariantsAndRequestSwitch(v15, v16, v17, 0) && !FigRetainProxyIsInvalidated() && *(v5 + 80) == v8 && v9 == *(v5 + 880))
      {
        PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(NextSegment);
        if (PreviousSegment)
        {
          v19 = *(segPumpGetMediaFilePrivateData(PreviousSegment) + 4);
        }

        else
        {
          v19 = 0;
        }

        *(v5 + 104) = v19;
        MediaFilePrivateData = segPumpGetMediaFilePrivateData(NextSegment);
        v21 = 0;
        v22 = v7 + 392;
        while (1)
        {
          if (v21 != *v5)
          {
            if (*(*v22 + 16))
            {
              v23 = *(*v22 + 104);
              v24 = MediaFilePrivateData[4];
              if (v23 < v24 - (3 * FigMediaPlaylistGetTargetDuration(*(v5 + 56))))
              {
                break;
              }
            }
          }

          ++v21;
          v22 += 16;
          if (v21 == 3)
          {
            if (*(*(v5 + 696) + 8))
            {
              v25 = *(v5 + 256);
              OUTLINED_FUNCTION_265_0();
              segPumpCancelMediaFileReadAndResetData(v26, v27, v28, v29);
              v30 = *(v5 + 256);
              *(v5 + 256) = v25;
              if (v25)
              {
                CFRetain(v25);
              }

              if (v30)
              {
                CFRelease(v30);
              }
            }

            v31 = OUTLINED_FUNCTION_373();
            if (!segPumpReadMediaFile(v31, v32, NextSegment, 0, 0, 1, 0, 0))
            {
              *v1 = 1;
            }

            break;
          }
        }
      }
    }
  }

LABEL_10:
  FigRetainProxyRelease();
  OUTLINED_FUNCTION_439_1();
}

void segPumpCryptMemoryRequestCallback(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, void *a6)
{
  OUTLINED_FUNCTION_179_1();
  if (!segPumpLockAndCopyPumpFromRetainProxy())
  {
    StreamFromCryptHTTPRequest = segPumpGetStreamFromCryptHTTPRequest(v21, a2, a3);
    if (StreamFromCryptHTTPRequest)
    {
      if (*(StreamFromCryptHTTPRequest + 248))
      {
        v11 = *(StreamFromCryptHTTPRequest + 656);
        if (v11)
        {
          goto LABEL_7;
        }

        blockBufferOut = (StreamFromCryptHTTPRequest + 656);
        v13 = 2 * FigContentKeySpecifierGetCryptKeySize(*(StreamFromCryptHTTPRequest + 248));
        FigGetAllocatorForMedia();
        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_249();
        OUTLINED_FUNCTION_156_0();
        if (!CMBlockBufferCreateWithMemoryBlock(v14, v15, v16, v17, v18, v19, v13, 1u, blockBufferOut))
        {
          v11 = *blockBufferOut;
          if (!*blockBufferOut)
          {
            v20 = 0;
            goto LABEL_8;
          }

LABEL_7:
          v20 = CFRetain(v11);
LABEL_8:
          *a5 = v20;
          *a6 = 0;
        }
      }
    }
  }

  FigRetainProxyUnlockMutex();
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_860();
}

void segPumpPublishContentKeyRequestEvent(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  OUTLINED_FUNCTION_370_1();
  v10 = v9;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0.0;
  v32 = 0.0;
  OUTLINED_FUNCTION_411_1();
  if (v11)
  {
    Value = FigCFDictionaryGetValue();
    BooleanValue = FigCFDictionaryGetBooleanValue();
    a5 = FigCFDictionaryGetBooleanValue();
    if (Value)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(Value, @"FHRP_HTTPFinalURL", AllocatorForMedia, &v35);
      }

      v16 = FigGetAllocatorForMedia();
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v17)
      {
        v17(Value, @"FHRP_RemoteIPAddress", v16, theData);
      }

      if (theData[0])
      {
        BytePtr = CFDataGetBytePtr(theData[0]);
        Length = CFDataGetLength(theData[0]);
        v20 = FigCFHTTPCreateAddressStringFromSockaddr(BytePtr, Length);
      }

      else
      {
        v20 = 0;
      }

      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_203_0();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v21 = OUTLINED_FUNCTION_259_0();
        v22(v21);
      }

      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_203_0();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v23 = OUTLINED_FUNCTION_259_0();
        v24(v23);
      }

      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_203_0();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v25 = OUTLINED_FUNCTION_259_0();
        v26(v25);
      }

      FigCFDictionaryGetInt64IfPresent();
      FigCFDictionaryGetInt64IfPresent();
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    BooleanValue = 0;
  }

  v27 = FigGetAllocatorForMedia();
  if (*v6 > 2uLL)
  {
    v28 = 0;
  }

  else
  {
    v28 = dword_196E7291C[*v6];
  }

  if (!FigMetricContentKeyRequestEventCreate(v27, v35, v20, 0, 0, BooleanValue == *MEMORY[0x1E695E4D0], a4, cf, v32, v31, *&theData[2], *&theData[1], v28, a5 == *MEMORY[0x1E695E4D0], v5, &v36))
  {
    segPumpPublishMetricEvent(v10, v36);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (theData[0])
  {
    CFRelease(theData[0]);
  }

  if (v36)
  {
    CFRelease(v36);
  }
}

uint64_t segPumpSetNetworkReadsContributeToNetworkHistory(uint64_t result, int a2)
{
  if (*(result + 8216) != a2)
  {
    *(result + 8216) = a2;
    v3 = *(result + 9224);
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v4)
      {
        v4(v3);
      }
    }

    return segPumpSetupNetworkHistory();
  }

  return result;
}

void segPumpSetMediaSegmentCache()
{
  OUTLINED_FUNCTION_158_1();
  v33 = v2;
  v34 = v3;
  OUTLINED_FUNCTION_370_1();
  v31 = 0;
  cf[0] = 0;
  v5 = *(v4 + 296);
  v6 = v5;
  if (v5)
  {
    if (v0)
    {
LABEL_3:
      v7 = CFRetain(v0);
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(v1 + 304);
    if (v0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  *(v1 + 296) = v7;
  if (v5)
  {
    if (segPumpRemoveStreamingCacheListeners(*v1))
    {
      goto LABEL_41;
    }

    if (!*(v1 + 296))
    {
      goto LABEL_8;
    }

LABEL_50:
    if (segPumpAddStreamingCacheListeners(*v1))
    {
      goto LABEL_41;
    }

    if (v6)
    {
      OUTLINED_FUNCTION_140_0();
      if (FigStreamingCacheCopyMasterPlaylist(v6, v27, v28))
      {
        goto LABEL_41;
      }

      if (cf[0])
      {
        if (FigStreamingCacheSetMasterPlaylist(*(v1 + 296), cf[0], v31))
        {
          goto LABEL_41;
        }

        if (v31)
        {
          CFRelease(v31);
          v31 = 0;
        }

        CFRelease(cf[0]);
        cf[0] = 0;
      }
    }

    goto LABEL_8;
  }

  if (v7)
  {
    goto LABEL_50;
  }

LABEL_8:
  for (i = 392; i != 440; i += 16)
  {
    v9 = *(v1 + i);
    if (!*(v1 + 296) || (v10 = *(v9 + 56)) == 0 || (MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v10)) == 0 || CFArrayGetCount(MediaSegmentSpecifiers) < 1 || !*(v1 + 296))
    {
LABEL_17:
      *(v9 + 64) = 0;
LABEL_18:
      CMTimeMakeWithSeconds(&v30, fmax(*(v9 + 120), 0.0), 1000);
      v12 = OUTLINED_FUNCTION_182_1();
      segPumpCalculateStreamDurationAndBytesCached(v12, v13, v14);
      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (v31)
      {
        CFRelease(v31);
        v31 = 0;
      }

      continue;
    }

    if (*(v1 + 8896))
    {
      if (!*(v1 + 8212) || *(v1 + 392) != v9)
      {
        goto LABEL_17;
      }
    }

    else if (!*(v1 + 8213))
    {
      goto LABEL_17;
    }

    if (*(v9 + 64) && v6 && FigStreamingCacheMediaStreamCopyPlaylist(v6, *(v9 + 64), cf, &v31))
    {
      goto LABEL_41;
    }

    CacheForStream = segPumpCreateCacheForStream();
    if (CacheForStream != -15642)
    {
      if (CacheForStream || cf[0] && segPumpSetPlaylistForStreamCache(*(v1 + 296), v9, cf[0], v31))
      {
        goto LABEL_41;
      }

      goto LABEL_18;
    }
  }

  if (*(v1 + 8227))
  {
    segPumpMarkCurrentAlternatePersistentInCache(v1, 1, v15, v16, v17, v18, v19, v20, v29, v30.value, SWORD2(v30.value), SBYTE6(v30.value), SHIBYTE(v30.value), *&v30.timescale, v30.epoch, v31, cf[0], cf[1], cf[2], cf[3], cf[4], cf[5], cf[6]);
  }

  if (*(v1 + 9752))
  {
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v22 = OUTLINED_FUNCTION_188();
      v24 = v23(v22);
      if (v5)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    v24 = 0;
    if (v5)
    {
LABEL_38:
      if (v5 != v0 && !v24)
      {
        v25 = OUTLINED_FUNCTION_298();
        FigStreamingCacheClearExclusiveWriter(v25, v26);
      }
    }
  }

LABEL_41:
  if (v31)
  {
    CFRelease(v31);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  OUTLINED_FUNCTION_156_1();
}

uint64_t segPumpReadNextCryptKeyForAllStreams()
{
  OUTLINED_FUNCTION_187();
  while (1)
  {
    if (*(*(v0 + 392) + 16))
    {
      v2 = OUTLINED_FUNCTION_177();
      result = segPumpReadNextCryptKeyForStream(v2);
      if (result)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_383_0();
    if (v1)
    {
      return 0;
    }
  }

  return result;
}

void segPumpMarkCurrentAlternatePersistentInCache(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(a1 + 8227) = a2;
  if (*(a1 + 296))
  {
    OUTLINED_FUNCTION_845();
    a22 = v23;
    a23 = v24;
    v26 = v25;
    v28 = v27;
    v29 = 0;
    v30 = v27 + 392;
    v31 = *MEMORY[0x1E695E4D0];
    v32 = *MEMORY[0x1E695E4C0];
    while (1)
    {
      v33 = *(v30 + v29);
      if (*(v33 + 16))
      {
        v34 = *(v33 + 64);
        if (v34)
        {
          if (v26)
          {
            v35 = *(v28 + 296);
            v36 = v31;
          }

          else
          {
            a13 = 0;
            if (FigStreamingCacheMediaStreamIsComplete(*(v28 + 296), v34, &a13))
            {
              goto LABEL_14;
            }

            if (a13)
            {
              goto LABEL_11;
            }

            v35 = *(v28 + 296);
            v34 = *(v33 + 64);
            v36 = v32;
          }

          if (FigStreamingCacheMediaStreamSetPersistent(v35, v34, v36))
          {
            goto LABEL_14;
          }
        }
      }

LABEL_11:
      v29 += 16;
      if (v29 == 48)
      {
LABEL_14:
        OUTLINED_FUNCTION_843();
        return;
      }
    }
  }
}

void segPumpSetShouldStoreCryptKeysInCache(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  if (*(v18 + 329) != v19)
  {
    v20 = v18;
    *(v18 + 329) = v19;
    if (v19)
    {
      for (i = 0; ; ++i)
      {
        Count = *(v20 + 7888);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (i >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(v20 + 7888), i);
        if (!ValueAtIndex[154] && *(ValueAtIndex + 9))
        {
          FigGetAllocatorForMedia();
          if (*(*(OUTLINED_FUNCTION_356_1() + 8) + 48))
          {
            v24 = OUTLINED_FUNCTION_373();
            v25(v24);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_652();
}

uint64_t segPumpSetRequiresCryptKeysForMediaDelivery(uint64_t a1, int a2)
{
  if (*(a1 + 330) == a2)
  {
    return 0;
  }

  if (!*(a1 + 8868))
  {
    *(a1 + 330) = a2;
    return 0;
  }

  return FigSignalErrorAtGM();
}

uint64_t segPumpRTCReportingUpdatePumpClientName(uint64_t result)
{
  if (*(result + 9656))
  {
    if (*(result + 9232))
    {
      VTable = CMBaseObjectGetVTable();
      v2 = *(VTable + 16);
      result = VTable + 16;
      if (*(v2 + 48))
      {
        OUTLINED_FUNCTION_606();

        return v3();
      }
    }
  }

  return result;
}

void segPumpSetNetworkHistory()
{
  OUTLINED_FUNCTION_629();
  v2 = v0 + 0x2000;
  if (!*(v0 + 8868))
  {
    v3 = v0;
    v4 = *(v0 + 88);
    *(v0 + 88) = v1;
    if (v1)
    {
      CFRetain(v1);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v6 = (v3 + 96);
    v5 = *(v3 + 96);
    if (v5)
    {
      CFRelease(v5);
      *v6 = 0;
    }

    v7 = *(v3 + 9224);
    if (v7)
    {
      CFRelease(v7);
      *(v3 + 9224) = 0;
    }

    if (segPumpSetHTTPRequestOptionsValue(v3, @"FHRP_NetworkHistory", *(v3 + 88)))
    {
      goto LABEL_31;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v10 = Mutable;
      FigCFDictionarySetValue();
      v11 = FigGetAllocatorForMedia();
      if (!FigNetworkPredictionArbiterCreate(v11, *(v3 + 88), v10, (v3 + 96)))
      {
        Value = FigCFDictionaryGetValue();
        if (!Value || (v13 = CFRetain(Value)) == 0)
        {
          v13 = FigCFHTTPCopyClientBundleIdentifier(*(v3 + 9072));
        }

        v14 = *v6;
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v15)
        {
          v15(v14, 0x1F0B63598, v13);
        }

        v16 = *(v3 + 96);
        v17 = *(v3 + 9232);
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v18)
        {
          v18(v16, 0x1F0B635F8, v17);
        }

        if (*(v2 + 1593))
        {
          if (*(v3 + 88) && (v19 = FigGetAllocatorForMedia(), (v20 = CFStringCreateWithFormat(v19, 0, @"%@", *(v3 + 8944))) != 0))
          {
            v21 = v20;
            v22 = *(v3 + 9224);
            if (v22)
            {
              CFRelease(v22);
              *(v3 + 9224) = 0;
            }

            FigBandwidthPeriodicReporterCreate(*(v3 + 56), 1000000000 * *(v3 + 144), v21, *v3, &segPumpEnsureBandwidthPeriodicReporterIfEnabled_bandwidthPeriodicReportingCallbacks, *(v3 + 88), (v3 + 9224));
            CFRelease(v21);
          }

          else
          {
            OUTLINED_FUNCTION_239();
            FigSignalErrorAtGM();
          }
        }

        v23 = *(v3 + 9776);
        if (v23)
        {
          FigCMCDHeaderVendorSetNetworkHistory(v23, *(v3 + 88));
        }

        if (v13)
        {
          CFRelease(v13);
        }
      }

      CFRelease(v10);
LABEL_31:
      OUTLINED_FUNCTION_320();
      return;
    }
  }

  OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_320();

  FigSignalErrorAtGM();
}

uint64_t segPumpSetMaxPipelinedConnections(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (v3 >= 256)
  {
    v4 = 256;
  }

  else
  {
    v4 = v3;
  }

  v5 = (a1 + 400);
  v6 = 3;
  while (1)
  {
    result = segPumpStreamSetReadAheadConnectionCountMax(*(v5 - 1), v4);
    if (result)
    {
      break;
    }

    result = segPumpStreamSetReadAheadConnectionCountMax(*v5, v4);
    if (result)
    {
      break;
    }

    v5 += 2;
    if (!--v6)
    {
      result = 0;
      *(a1 + 8396) = v4;
      return result;
    }
  }

  return result;
}

uint64_t segPumpSetRTCReportingAgent(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_369();
  if (!*(v4 + 9232))
  {
    v2[1154] = v3;
    CFRetain(v3);
    goto LABEL_18;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    return 4294954514;
  }

  v5 = OUTLINED_FUNCTION_266();
  result = v6(v5);
  if (result)
  {
    return result;
  }

  if (!v2[1154])
  {
    return 4294955296;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    return 4294954514;
  }

  v8 = OUTLINED_FUNCTION_266();
  result = v9(v8);
  if (result)
  {
    return result;
  }

  if (!v2[1154])
  {
    return 4294955296;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    return 4294954514;
  }

  v10 = OUTLINED_FUNCTION_266();
  result = v11(v10);
  if (result)
  {
    return result;
  }

  if (!v2[1154])
  {
    return 4294955296;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    return 4294954514;
  }

  v12 = OUTLINED_FUNCTION_266();
  result = v13(v12);
  if (result)
  {
    return result;
  }

  v14 = v2[1154];
  v2[1154] = v3;
  CFRetain(v3);
  if (v14)
  {
    CFRelease(v14);
  }

LABEL_18:
  v15 = v2[1153];
  if (!v15 || (result = FigBandwidthPeriodicReporterSetReportingAgent(v15, v3), !result))
  {
    if (v2[12] && *(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v16 = OUTLINED_FUNCTION_308();
      v17(v16);
    }

    result = v2[1165];
    if (result)
    {
      v18 = FigRCLCopyConfigurationGroupName(result);
      v19 = v2[1154];
      if (v19)
      {
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v20)
        {
          v20(v19, 0x1F0B64538, 0x1F0B1C5B8, v18, 0);
        }
      }

      if (v18)
      {
        CFRelease(v18);
      }

      return 0;
    }
  }

  return result;
}

void segPumpResetContentKeyState(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, __int128 a14, uint64_t a15, __int16 a16, char a17, os_log_type_t type, int a19, int a20, uint64_t a21, int a22, __int16 a23, __int16 a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  OUTLINED_FUNCTION_415();
  v56 = v55;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v68 = v56;
  v58 = OUTLINED_FUNCTION_198();
  v67 = segPumpAPILockAndEnsureAPIStatus(v58, v59);
  if (!v67)
  {
    for (i = 392; i != 440; i += 16)
    {
      segPumpCancelCryptReadAndResetData(DerivedStorage);
    }

    for (j = 0; ; ++j)
    {
      Count = *(DerivedStorage + 7888);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (j >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 7888), j);
      if (ValueAtIndex[6] == 1)
      {
        v64 = ValueAtIndex;
        if (dword_1EAF16A30)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v66 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          if (OUTLINED_FUNCTION_288_1(v66))
          {
            OUTLINED_FUNCTION_76_1();
            OUTLINED_FUNCTION_333_0();
            OUTLINED_FUNCTION_359_1();
            OUTLINED_FUNCTION_82_1();
            OUTLINED_FUNCTION_361_1();
            OUTLINED_FUNCTION_108();
            OUTLINED_FUNCTION_282();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_9_1();
          OUTLINED_FUNCTION_454();
        }

        *(v64 + 88) = 0;
        *(v64 + 104) = 0;
        *(v64 + 96) = 0;
        *(v64 + 128) = 0;
        *(v64 + 136) = 0;
        *(v64 + 32) = 0;
        *(v64 + 40) = 0;
        *(v64 + 144) = 0;
        *(v64 + 151) = 0;
        CryptKeyReleaseAndClearVideoDecryptor(v64);
        CryptKeyReleaseAndClearAudioDecryptor(v64);
      }
    }
  }

  segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v68, v67);
  OUTLINED_FUNCTION_355();
}

uint64_t segPumpAddStreamingCacheListeners(uint64_t result)
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
    OUTLINED_FUNCTION_186();
    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

void segPumpBandwidthReportingPerformPredictionCallback()
{
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_369();
  v109 = *MEMORY[0x1E69E9840];
  v94 = 0;
  cf = 0;
  FigGetUpTimeNanoseconds();
  OUTLINED_FUNCTION_112_0();
  if (segPumpLockAndCopyPumpFromRetainProxy())
  {
    segPumpUnlockAndSendAllPendingNotifications();
  }

  else
  {
    segPumpMakeNetworkPredictionInput(v94, v96);
    v0 = *&v96[8];
    v1 = v100;
    v2 = v101;
    memcpy(__dst, v102, sizeof(__dst));
    v106 = v103;
    v107 = v104;
    v108 = v105;
    v3 = *(v94 + 8328);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        if (!FigAlternateGetAverageBitRate(v4))
        {
          FigAlternateGetPeakBitRate(*(*(v94 + 8328) + 8));
        }
      }
    }

    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {
      *v96 = 0;
      *&v96[8] = v0;
      OUTLINED_FUNCTION_7_0();
      v100 = v1;
      v101 = v2;
      OUTLINED_FUNCTION_130_1(v96, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, __dst[0]);
      v6 = OUTLINED_FUNCTION_0_1();
      if (!v5(v6))
      {
        OUTLINED_FUNCTION_344_1();
        OUTLINED_FUNCTION_192_1();
        OUTLINED_FUNCTION_194_0();
      }
    }

    v7 = *(*(OUTLINED_FUNCTION_138_0() + 16) + 8);
    if (v7)
    {
      *v96 = 1;
      *&v96[8] = v0;
      OUTLINED_FUNCTION_7_0();
      v100 = v1;
      v101 = v2;
      OUTLINED_FUNCTION_130_1(v96, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, __dst[0]);
      v8 = OUTLINED_FUNCTION_0_1();
      if (!v7(v8))
      {
        OUTLINED_FUNCTION_344_1();
        OUTLINED_FUNCTION_192_1();
        OUTLINED_FUNCTION_194_0();
      }
    }

    v9 = *(*(OUTLINED_FUNCTION_138_0() + 16) + 8);
    if (v9)
    {
      *v96 = 2;
      *&v96[8] = v0;
      OUTLINED_FUNCTION_7_0();
      v100 = v1;
      v101 = v2;
      OUTLINED_FUNCTION_130_1(v96, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, __dst[0]);
      v10 = OUTLINED_FUNCTION_0_1();
      if (!v9(v10))
      {
        OUTLINED_FUNCTION_344_1();
        OUTLINED_FUNCTION_192_1();
        OUTLINED_FUNCTION_194_0();
      }
    }

    v11 = *(*(OUTLINED_FUNCTION_138_0() + 16) + 8);
    if (v11)
    {
      *v96 = 4;
      *&v96[8] = v0;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_30_1(v12, v13, v14, v15, v16, v17, v18, v19, xmmword_196E72850, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v94, cf, v96[0], *&v96[8], v97, v98, v99, v20, v100);
      v21 = OUTLINED_FUNCTION_0_1();
      if (!v11(v21))
      {
        OUTLINED_FUNCTION_344_1();
        OUTLINED_FUNCTION_192_1();
        OUTLINED_FUNCTION_194_0();
      }
    }

    v22 = *(*(OUTLINED_FUNCTION_138_0() + 16) + 8);
    if (v22)
    {
      *v96 = 3;
      *&v96[8] = v0;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_30_1(v23, v24, v25, v26, v27, v28, v29, v30, xmmword_196E72850, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v94, cf, v96[0], *&v96[8], v97, v98, v99, v31, v100);
      v32 = OUTLINED_FUNCTION_0_1();
      if (!v22(v32))
      {
        OUTLINED_FUNCTION_344_1();
        OUTLINED_FUNCTION_192_1();
        OUTLINED_FUNCTION_194_0();
        FigCFDictionarySetInt64();
        FigCFDictionarySetInt64();
        FigCFDictionarySetInt64();
      }
    }

    v33 = *(*(OUTLINED_FUNCTION_138_0() + 16) + 8);
    if (v33)
    {
      *v96 = 5;
      *&v96[8] = v0;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_30_1(v34, v35, v36, v37, v38, v39, v40, v41, xmmword_196E72850, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v94, cf, v96[0], *&v96[8], v97, v98, v99, v42, v100);
      v43 = OUTLINED_FUNCTION_0_1();
      if (!v33(v43))
      {
        OUTLINED_FUNCTION_344_1();
        OUTLINED_FUNCTION_192_1();
        OUTLINED_FUNCTION_194_0();
      }
    }

    v44 = *(*(OUTLINED_FUNCTION_138_0() + 16) + 8);
    if (v44)
    {
      *v96 = xmmword_196E728A0;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_30_1(v45, v46, v47, v48, v49, v50, v51, v52, xmmword_196E72850, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v94, cf, v96[0], *&v96[8], v97, v98, v99, v53, v100);
      v54 = OUTLINED_FUNCTION_0_1();
      if (!v44(v54))
      {
        OUTLINED_FUNCTION_344_1();
      }
    }

    v55 = *(*(OUTLINED_FUNCTION_138_0() + 16) + 8);
    if (v55)
    {
      *v96 = xmmword_196E728A0;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_30_1(v56, v57, v58, v59, v60, v61, v62, v63, xmmword_196E72850, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v94, cf, v96[0], *&v96[8], v97, v98, v99, v64, v100);
      v65 = OUTLINED_FUNCTION_0_1();
      if (!v55(v65))
      {
        FigCFDictionarySetDouble();
      }
    }

    v66 = *(*(OUTLINED_FUNCTION_138_0() + 16) + 8);
    if (v66)
    {
      *v96 = xmmword_196E728B0;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_30_1(v67, v68, v69, v70, v71, v72, v73, v74, xmmword_196E72850, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v94, cf, v96[0], *&v96[8], v97, v98, v99, v75, v100);
      v76 = OUTLINED_FUNCTION_0_1();
      if (!v66(v76))
      {
        FigCFDictionarySetDouble();
      }
    }

    FigNetworkInterfaceReporterGetPredictedWirelessThroughput();
    SInt64 = FigCFNumberCreateSInt64();
    v78 = OUTLINED_FUNCTION_515();
    CFDictionarySetValue(v78, v79, v80);
    segPumpUnlockAndSendAllPendingNotifications();
    if (SInt64)
    {
      CFRelease(SInt64);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_191();
}

uint64_t segPumpStreamSetReadAheadConnectionCountMax(uint64_t a1, uint64_t a2)
{
  if (a2 > 0)
  {
    OUTLINED_FUNCTION_187();
    v5 = *(v4 + 776);
    if (v5 >= v6)
    {
      return 0;
    }

    v7 = *(v3 + 768);
    v8 = malloc_type_calloc(v2, 8uLL, 0x2004093837F09uLL);
    if (v8)
    {
      v9 = v8;
      memcpy(v8, v7, 8 * v5);
      *(v3 + 768) = v9;
      *(v3 + 776) = v2;
      free(v7);
      return 0;
    }
  }

  OUTLINED_FUNCTION_239();

  return FigSignalErrorAtGM();
}

uint64_t segPumpClientNeedsMore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  a9 = 0;
  a10 = 0;
  v23 = OUTLINED_FUNCTION_198();
  if (!segPumpAPILockAndEnsureAPIStatus(v23, v24))
  {
    v25 = *(DerivedStorage + 392 + 16 * v21);
    v26 = OUTLINED_FUNCTION_298();
    if (!segPumpStreamNeedsMore(v26, v27, v25))
    {
      if (segPumpGetDeliveredTimeStamp(*(DerivedStorage + 392 + 16 * v21 + 8), &a10))
      {
        if (segPumpGetDeliveredTimeStamp(v25, &a9))
        {
          OUTLINED_FUNCTION_291_1();
          if (!(v33 ^ v34 | v32))
          {
            v35 = OUTLINED_FUNCTION_69_0();
            segPumpStreamNeedsMore(v35, v36, v37);
          }
        }
      }

      segPumpUpdateBufferingDoneState(DerivedStorage);
    }
  }

  OUTLINED_FUNCTION_652();

  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v28, v29);
}

void segPumpSetCurrentAlternate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_193();
  v510 = v27;
  v29 = v28;
  v545 = v30;
  v32 = v31;
  HIDWORD(v544) = v33;
  v549 = v34;
  v36 = v35;
  v38 = v37;
  v531 = a25;
  v569 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LODWORD(v513) = segPumpStreamBitRateRequiredForStream(DerivedStorage, *(DerivedStorage + 392));
  v556 = 0;
  OUTLINED_FUNCTION_400_1();
  LODWORD(v546) = v32;
  LODWORD(v41) = v40 & (v32 >> 2);
  v42 = segPumpAPILockAndEnsureAPIStatus(v38, 1);
  if (v42)
  {
    goto LABEL_516;
  }

  if (!*(DerivedStorage + 8280))
  {
    OUTLINED_FUNCTION_45_1();
    v42 = FigSignalErrorAtGM();
LABEL_516:
    v55 = v42;
    OUTLINED_FUNCTION_176_0();
    goto LABEL_453;
  }

  if (*(*(DerivedStorage + 392) + 856))
  {
    OUTLINED_FUNCTION_178_1(MEMORY[0x1E6960C70], *MEMORY[0x1E6960C70]);
  }

  v536 = v38;
  if ((v32 & 8) == 0 || !*(DerivedStorage + 7880) || !FigCFEqual())
  {
    if (*(DerivedStorage + 7880))
    {
      for (i = 400; i != 448; i += 16)
      {
        v44 = *(DerivedStorage + i);
        if (*(v44 + 16))
        {
          OUTLINED_FUNCTION_266();
          v43 = segPumpStopConcurrentStream();
          *(v44 + 944) = -1;
        }
      }

      *(DerivedStorage + 7880) = 0;
    }

    v523 = v29;
    v541 = DerivedStorage + 392;
    v38 = DerivedStorage + 8280;
    HIDWORD(v542) = v41;
    if ((v41 & 1) == 0)
    {
      *(*(DerivedStorage + 392) + 136) = -1;
      *(*(DerivedStorage + 408) + 136) = -1;
      *(*(DerivedStorage + 424) + 136) = -1;
      if ((v546 & 0x20) != 0)
      {
        if (*(DerivedStorage + 8432))
        {
          v45 = 0;
          v41 = DerivedStorage + 8440;
          v43.n128_u64[0] = 136316162;
          *v551 = v43;
          v46 = (DerivedStorage + 392);
          do
          {
            v47 = *v46;
            v48 = **v46;
            v49 = v41 + 40 * v48;
            if (*(v49 + 24))
            {
              *(v47 + 17) = *v49;
              v47[19] = *(v41 + 40 * v48 + 16);
              if (dword_1EAF16A30)
              {
                OUTLINED_FUNCTION_145_0();
                OUTLINED_FUNCTION_150_1();
                i = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v50 = os_log_type_enabled(i, type[0]);
                if (OUTLINED_FUNCTION_16_1(v50))
                {
                  OUTLINED_FUNCTION_76_1();
                  LODWORD(cf.value) = v551[0];
                  OUTLINED_FUNCTION_248_1();
                  HIWORD(cf.epoch) = 1024;
                  *v559 = v45;
                  *&v559[4] = 2048;
                  *&v559[6] = v51;
                  *&v559[14] = 2048;
                  *&v559[16] = v52;
                  OUTLINED_FUNCTION_23_1();
                  OUTLINED_FUNCTION_24_1();
                  OUTLINED_FUNCTION_190_0();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_238_0();
              }
            }

            ++v45;
            v46 += 2;
          }

          while (v45 != 3);
        }
      }
    }

    if (v36)
    {
      v53 = DerivedStorage + 8296;
      v54 = DerivedStorage + 392;
      while (1)
      {
        v53 = *v53;
        if (!v53)
        {
          break;
        }

        if (CFEqual(*(v53 + 8), v36))
        {
          OUTLINED_FUNCTION_45_1();
          v55 = FigSignalErrorAtGM();
          OUTLINED_FUNCTION_176_0();
LABEL_29:
          OUTLINED_FUNCTION_303_1();
          goto LABEL_453;
        }
      }

      LODWORD(v41) = HIDWORD(v542);
      do
      {
        v38 = *v38;
        if (!v38)
        {
          goto LABEL_99;
        }
      }

      while (!CFEqual(*(v38 + 8), v36));
      v56 = *(v38 + 8);
LABEL_92:
      if (!v56 || (LODWORD(v499) = FigAlternateGetPeakBitRate(v56), v499 <= 0))
      {
LABEL_99:
        OUTLINED_FUNCTION_45_1();
        v119 = FigSignalErrorAtGM();
LABEL_100:
        v55 = v119;
        LODWORD(key) = 0;
        v551[0] = 0;
LABEL_101:
        v543 = 0;
        i = 0;
LABEL_102:
        v38 = v536;
        goto LABEL_453;
      }

      if (*(DerivedStorage + 8408) && !FigCFEqual())
      {
        if (dword_1EAF16A30)
        {
          OUTLINED_FUNCTION_145_0();
          OUTLINED_FUNCTION_150_1();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v118 = OUTLINED_FUNCTION_245_1(os_log_and_send_and_compose_flags_and_os_log_type, v111, v112, v113, v114, v115, v116, v117, v456, v459, v464, v465, v469, v473, v476, v480, v484, v488, v491, v495, v499, v502, v506, v510, v513, v516, v520, v523, v526, v531, v532, v534, v536, key, v538, v541, v542, v543, v544, v545, v546, v549, v550[0], v550[1], v551[0], v551[1], v552, v553, rhs.value, *&rhs.timescale, rhs.epoch, v555, v556, type[0]);
          if (OUTLINED_FUNCTION_124_0(v118))
          {
            OUTLINED_FUNCTION_76_1();
            LODWORD(cf.value) = 136315394;
            OUTLINED_FUNCTION_225_1();
            OUTLINED_FUNCTION_2_1();
            OUTLINED_FUNCTION_44_0();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_345_0();
        }

        segPumpClearSuggestedAlternate(DerivedStorage, 0);
      }

      HDCPLevel = FigAlternateGetHDCPLevel(v56);
      if (HDCPLevel == -2)
      {
        v121 = -1;
      }

      else
      {
        v121 = HDCPLevel;
      }

      HIDWORD(v477) = v121;
      LODWORD(v550[0]) = FigAlternateIsIFrameOnly(v56);
      PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(v56);
      if (PlaylistAlternateURL)
      {
        v556 = CFRetain(PlaylistAlternateURL);
        if (v556)
        {
          if (*(DerivedStorage + 328))
          {
            v119 = FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(*(DerivedStorage + 320), &v556);
            if (v119)
            {
              goto LABEL_100;
            }
          }
        }
      }

      else
      {
        v556 = 0;
      }

      i = v556;
      if (HIDWORD(v544))
      {
        v123 = v549;
        if (v556)
        {
          CFRetain(v556);
        }

        URLForCacheLookup = FigAlternateGetURLForCacheLookup(v56);
        StableStreamIdentifier = FigAlternateGetStableStreamIdentifier(v56);
        v517 = 0;
        v543 = i;
        i = 0;
      }

      else
      {
        v123 = v549;
        if (v556)
        {
          CFRetain(v556);
        }

        *(&StableStreamIdentifier + 1) = FigAlternateGetURLForCacheLookup(v56);
        v517 = FigAlternateGetStableStreamIdentifier(v56);
        URLForCacheLookup = 0;
        *&StableStreamIdentifier = 0;
        v543 = 0;
      }

      v124 = *(DerivedStorage + 8576);
      if (v124)
      {
        CFRelease(v124);
        *(DerivedStorage + 8576) = 0;
      }

      v125 = *(DerivedStorage + 8584);
      if (v125)
      {
        CFRelease(v125);
        *(DerivedStorage + 8584) = 0;
      }

      v126 = *(DerivedStorage + 8592);
      if (v126)
      {
        CFRelease(v126);
        *(DerivedStorage + 8592) = 0;
      }

      if (v123)
      {
        Count = CFArrayGetCount(v123);
        if (Count >= 1)
        {
          v128 = Count;
          v539 = i;
          v551[0] = 0;
          v492 = 0;
          v496 = 0;
          v129 = 0;
          v130 = 0;
          LODWORD(v41) = 1986618469;
          key = @"MediaSelectionOptionsPersistentID";
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v123, v130);
            if (!CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType"))
            {
              goto LABEL_191;
            }

            v568[0] = 0;
            cf.value = 0;
            rhs.value = 0;
            *type = 0;
            if (!FigCFStringGetOSTypeValue())
            {
              goto LABEL_358;
            }

            v132 = *type == 1986618469 || LODWORD(v550[0]) == 0;
            if (!v132 || *type == 1668047728)
            {
              goto LABEL_191;
            }

            Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
            v135 = Value;
            if (Value)
            {
              v136 = CFGetTypeID(Value);
              if (v136 == CFNumberGetTypeID())
              {
                v129 = 1;
              }

              else
              {
                v135 = 0;
              }
            }

            switch(*type)
            {
              case 0x76696465:
                v137 = *(DerivedStorage + 8576);
                *(DerivedStorage + 8576) = v135;
                if (v135)
                {
                  goto LABEL_147;
                }

                break;
              case 0x736F756E:
                if (HIDWORD(v544) && !v135)
                {
LABEL_358:
                  OUTLINED_FUNCTION_45_1();
                  v138 = FigSignalErrorAtGM();
LABEL_359:
                  v55 = v138;
                  LODWORD(key) = 0;
                  OUTLINED_FUNCTION_303_1();
                  i = v539;
                  goto LABEL_453;
                }

                v137 = *(DerivedStorage + 8584);
                *(DerivedStorage + 8584) = v135;
                if (v135)
                {
LABEL_147:
                  CFRetain(v135);
                }

                break;
              case 0x7362746C:
                v137 = *(DerivedStorage + 8592);
                *(DerivedStorage + 8592) = v135;
                if (v135)
                {
                  goto LABEL_147;
                }

                break;
              default:
                goto LABEL_358;
            }

            if (v137)
            {
              CFRelease(v137);
            }

            FigAlternateGetRenditionInfoForMediaType(v56, *type, *(DerivedStorage + 8576), *(DerivedStorage + 8584), *(DerivedStorage + 8592), 0, &rhs, v568, &cf);
            if (v568[0])
            {
              CFRetain(v568[0]);
              if (v568[0])
              {
                if (*(DerivedStorage + 328))
                {
                  v138 = FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(*(DerivedStorage + 320), v568);
                  if (v138)
                  {
                    goto LABEL_359;
                  }
                }
              }
            }

            if (*type == 1986618469)
            {
              v123 = v549;
              if (!v135)
              {
                if (v539)
                {
                  CFRelease(v539);
                }

                v517 = 0;
                v539 = 0;
                goto LABEL_187;
              }

              if (HIDWORD(v544))
              {
                goto LABEL_187;
              }

              v141 = v568[0];
              if (v568[0])
              {
                CFRetain(v568[0]);
                if (v539)
                {
                  CFRelease(v539);
                }

                *(&StableStreamIdentifier + 1) = cf.value;
                v517 = rhs.value;
                v139 = v551[0];
                v539 = v141;
                goto LABEL_180;
              }
            }

            else
            {
              v123 = v549;
              if (*type != 1936684398)
              {
                if (*type == 1935832172)
                {
                  v139 = v568[0];
                  if (v568[0])
                  {
                    CFRetain(v568[0]);
                  }

                  if (v551[0])
                  {
                    CFRelease(v551[0]);
                  }

                  v492 = cf.value;
                  v496 = rhs.value;
                  goto LABEL_188;
                }

                goto LABEL_187;
              }

              if (!v135)
              {
                if (v543)
                {
                  CFRelease(v543);
                }

                URLForCacheLookup = 0;
                *&StableStreamIdentifier = 0;
                v543 = 0;
LABEL_187:
                v139 = v551[0];
                goto LABEL_188;
              }

              v140 = v568[0];
              if (v568[0])
              {
                CFRetain(v568[0]);
                if (v543)
                {
                  CFRelease(v543);
                }

                URLForCacheLookup = cf.value;
                *&StableStreamIdentifier = rhs.value;
                v139 = v551[0];
                v543 = v140;
                goto LABEL_180;
              }
            }

            v139 = v551[0];
LABEL_180:
            v123 = v549;
LABEL_188:
            if (v568[0])
            {
              CFRelease(v568[0]);
            }

            v551[0] = v139;
LABEL_191:
            if (v128 == ++v130)
            {
              v142 = v129 != 0;
              LODWORD(v41) = HIDWORD(v542);
              i = v539;
              v54 = v541;
              goto LABEL_194;
            }
          }
        }
      }

      v142 = 0;
      v492 = 0;
      v496 = 0;
      v551[0] = 0;
LABEL_194:
      if (!(v543 | i))
      {
        OUTLINED_FUNCTION_45_1();
        v55 = FigSignalErrorAtGM();
        LODWORD(key) = 0;
        goto LABEL_101;
      }

      HIDWORD(v503) = v142;
      if (i)
      {
        v143 = 3;
      }

      else
      {
        v143 = 2;
      }

      if (i)
      {
        v144 = 1;
      }

      else
      {
        v144 = v543 == 0;
      }

      v145 = HIDWORD(v544);
      if (!v144)
      {
        v145 = 1;
      }

      LODWORD(v477) = v145;
      if (!v543)
      {
        v143 = i != 0;
      }

      if (v551[0])
      {
        v146 = v143 | 4;
      }

      else
      {
        v146 = v143;
      }

      *&v470 = a24;
      *a24 = v146;
      v147 = *(DerivedStorage + 9232);
      if (v147)
      {
        v148 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v148)
        {
          v148(v147, 0x1F0B64538, 0x1F0B66AF8, v146, 0);
        }
      }

      v149 = *(DerivedStorage + 8328);
      if (v149)
      {
        CFEqual(*(v149 + 8), v56);
        OUTLINED_FUNCTION_786();
      }

      else
      {
        v150 = 1;
      }

      HIDWORD(v544) = v150;
      v151 = *(*v54 + 8);
      if (i | v151)
      {
        v152 = FigCFHTTPCompareURLs(i, v151) == 0;
      }

      else
      {
        v152 = 0;
      }

      v153 = *(*(DerivedStorage + 408) + 8);
      if (v543 | v153)
      {
        v154 = FigCFHTTPCompareURLs(v543, v153) == 0;
      }

      else
      {
        v154 = 0;
      }

      v155 = *(*(DerivedStorage + 424) + 8);
      if (v551[0] | v155)
      {
        v158 = FigCFHTTPCompareURLs(v551[0], v155);
        v159 = v152 | 2;
        if (!v154)
        {
          v159 = v152;
        }

        v156 = v158 == 0;
        if (v158)
        {
          v157 = v159;
        }

        else
        {
          v157 = v159 | 4;
        }
      }

      else
      {
        v156 = 0;
        if (v154)
        {
          v157 = v152 | 2;
        }

        else
        {
          v157 = v152;
        }
      }

      v466 = @"bytePumpStats";
      v160 = *(DerivedStorage + 8328);
      HIDWORD(v470) = v156;
      HIDWORD(v520) = v154;
      if (v160)
      {
        FigAlternateGetVideoGroupIDString(*(v160 + 8));
        FigAlternateGetVideoGroupIDString(*(v38 + 8));
        OUTLINED_FUNCTION_171_1();
        FigCFEqual();
        OUTLINED_FUNCTION_786();
        LODWORD(v503) = v161;
        v162 = *(DerivedStorage + 8328);
        if (v162)
        {
          FigAlternateGetAudioGroupIDString(*(v162 + 8));
          FigAlternateGetAudioGroupIDString(*(v38 + 8));
          OUTLINED_FUNCTION_171_1();
          LODWORD(v41) = FigCFEqual() == 0;
          v163 = *(DerivedStorage + 8328);
          if (v163)
          {
            FigAlternateGetSubtitleGroupIDString(*(v163 + 8));
            FigAlternateGetSubtitleGroupIDString(*(v38 + 8));
            OUTLINED_FUNCTION_171_1();
            HIDWORD(v499) = FigCFEqual() == 0;
            if (*(DerivedStorage + 8328) && *(DerivedStorage + 296))
            {
              v164 = FigAlternateGetLastKnownValueForIsFullyCached() == 0;
              goto LABEL_239;
            }
          }

          else
          {
            HIDWORD(v499) = 1;
          }

LABEL_238:
          v164 = 1;
LABEL_239:
          if (*(DerivedStorage + 296))
          {
            IsFullyCached = FigAlternateGetLastKnownValueForIsFullyCached();
          }

          else
          {
            IsFullyCached = 0;
          }

          LODWORD(key) = v157;
          DWORD2(v470) = (v546 >> 4) & 1;
          v535 = (DerivedStorage + 0x2000);
          *(DerivedStorage + 8400) = (v546 & 0x10) != 0;
          if ((v545->n128_u64[0] & 0x8000000000000000) != 0)
          {
            OUTLINED_FUNCTION_178_1(MEMORY[0x1E6960CC0], *MEMORY[0x1E6960CC0]);
          }

          v166 = a23;
          HIDWORD(v526) = v546 & 1;
          v507 = DerivedStorage + 408;
          v540 = i;
          v533 = a23;
          HIDWORD(v513) = v152;
          if (dword_1EAF16A30)
          {
            OUTLINED_FUNCTION_145_0();
            OUTLINED_FUNCTION_150_1();
            v167 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v167, type[0]);
            OUTLINED_FUNCTION_46();
            if (a23)
            {
              OUTLINED_FUNCTION_76_1();
              if (v108)
              {
                v177 = &stru_1F0B1AFB8;
              }

              else
              {
                v177 = v176;
              }

              *v568 = OUTLINED_FUNCTION_364_1(v168, v169, v170, v171, v172, v173, v174, v175, v456, v459, v464, 0x1F0B64538, a24, *(&v470 + 1), v477, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v492, v496, v499, v503, v507, v510, v513, v517, v520, v523, v526, v531, a23, v535, v536, key, i, v541, v542, v543, v544, v545);
              v568[2] = *(v178 + 16);
              Seconds = CMTimeGetSeconds(v568);
              *v568 = *v523;
              v152 = HIDWORD(v513);
              CMTimeGetSeconds(v568);
              LODWORD(cf.value) = 136317186;
              OUTLINED_FUNCTION_225_1();
              LOWORD(cf.flags) = 2114;
              if (HIDWORD(v542))
              {
                v182 = "true";
              }

              else
              {
                v182 = v180;
              }

              *(&cf.flags + 2) = v177;
              HIWORD(cf.epoch) = 1024;
              if (LODWORD(v550[0]))
              {
                v183 = "true";
              }

              else
              {
                v183 = v180;
              }

              *v559 = v499;
              if (IsFullyCached)
              {
                v180 = "true";
              }

              *&v559[4] = 2048;
              *&v559[6] = Seconds;
              *&v559[14] = 2048;
              *&v559[16] = v181;
              v560 = 1024;
              v561 = v546 & 1;
              v562 = 2082;
              v563 = v182;
              v564 = 2082;
              v565 = v183;
              v566 = 2082;
              v567 = v180;
              OUTLINED_FUNCTION_23_1();
              OUTLINED_FUNCTION_108();
              OUTLINED_FUNCTION_448();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_238_0();
            i = v540;
            v166 = v533;
          }

          v184 = BYTE4(v544) | v152;
          if (((HIDWORD(v544) | v152 | HIDWORD(v520)) & 1) == 0)
          {
            LODWORD(v510) = 0;
            v548 = 0;
            OUTLINED_FUNCTION_303_1();
            v186 = v541;
LABEL_406:
            if (*(DerivedStorage + 288) != HIDWORD(v477))
            {
              v356 = *(DerivedStorage + 272);
              if (v356)
              {
                CFRelease(v356);
                *(DerivedStorage + 272) = 0;
              }

              v357 = *(DerivedStorage + 280);
              if (v357)
              {
                CFRelease(v357);
                *(DerivedStorage + 280) = 0;
              }

              *(DerivedStorage + 288) = HIDWORD(v477);
            }

            if (HIDWORD(v470))
            {
              if (v166)
              {
                v390 = v523;
                if (v166[2].flags)
                {
                  v390 = v166 + 2;
                }
              }

              else
              {
                v390 = v523;
              }

              *v568 = *v390;
              if (v551[0])
              {
                MediaSegmentSpecifiers = *(*(DerivedStorage + 424) + 56);
                if (MediaSegmentSpecifiers && (MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(MediaSegmentSpecifiers)) != 0 && (MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers), MediaSegmentSpecifiers > 0))
                {
                  v400 = 0;
                }

                else
                {
                  v400 = *(v186 + 16 * *(DerivedStorage + 8600));
                }

                *&cf.value = OUTLINED_FUNCTION_364_1(MediaSegmentSpecifiers, v205, *(DerivedStorage + 424), v400, v208, v209, v210, v211, v456, v459, v464, v466, v470, *(&v470 + 1), v477, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v492, v496, v499, v503, v507, v510, v513, v517, v520, v523, v526, v531, v533, v535, v536, key, v540, v541, v542, v543, v544, v545);
                cf.epoch = *(v401 + 16);
                OUTLINED_FUNCTION_363_1(v568);
                v402 = OUTLINED_FUNCTION_163_1();
                v55 = segPumpSetAlternateForStream(v402, v403, v404, v405, v551[0], v492, v496, SHIDWORD(v526), 1, &cf, &rhs);
              }

              else
              {
                OUTLINED_FUNCTION_191_1();
                v391 = OUTLINED_FUNCTION_177();
                v55 = segPumpStopStream(v391, v392, 0);
                OUTLINED_FUNCTION_26_1();
                segPumpStreamUpdateIndexFile(v393, v394, v395, v396, v397, v398);
              }

              if (v55)
              {
                goto LABEL_443;
              }
            }

            if (DWORD2(v470))
            {
              v358 = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              HIBYTE(v553) = 0;
              v38 = 392;
              LODWORD(v41) = 1;
              *&v212 = 136316162;
              *v550 = v212;
              while (1)
              {
                v359 = *(DerivedStorage + v38);
                v360 = *(v359 + 64);
                if (v360)
                {
                  FigStreamingCacheMediaStreamIsComplete(*(DerivedStorage + 296), v360, type);
                  FigStreamingCacheMediaStreamIsWritableToDisk(*(DerivedStorage + 296), *(v359 + 64), &v553 + 7);
                  if (type[0] || !HIBYTE(v553))
                  {
                    *v470 &= ~(1 << v358);
                    if (dword_1EAF16A30)
                    {
                      LODWORD(rhs.value) = 0;
                      BYTE6(v553) = 0;
                      v361 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v362 = os_log_type_enabled(v361, OS_LOG_TYPE_DEFAULT);
                      if (OUTLINED_FUNCTION_16_1(v362))
                      {
                        OUTLINED_FUNCTION_76_1();
                        LODWORD(cf.value) = v550[0];
                        OUTLINED_FUNCTION_248_1();
                        HIWORD(cf.epoch) = 2048;
                        *v559 = v363;
                        *&v559[8] = 1024;
                        *&v559[10] = v358;
                        *&v559[14] = 2080;
                        *&v559[16] = v364;
                        OUTLINED_FUNCTION_23_1();
                        OUTLINED_FUNCTION_24_1();
                        OUTLINED_FUNCTION_190_0();
                        _os_log_send_and_compose_impl();
                      }

                      OUTLINED_FUNCTION_9_1();
                      OUTLINED_FUNCTION_238_0();
                    }

                    v365 = OUTLINED_FUNCTION_517();
                    v367 = segPumpStopStream(v365, v366, 0);
                    if (v367)
                    {
                      v55 = v367;
                      OUTLINED_FUNCTION_303_1();
LABEL_442:
                      i = v540;
LABEL_443:
                      v374 = v548;
                      if (!v548)
                      {
LABEL_453:
                        if (a26)
                        {
                          v387 = 0;
                          v388 = DerivedStorage + 400;
                          v106 = v531;
                          do
                          {
                            if (!v41 || (v389 = *v388, !*(*v388 + 16)))
                            {
                              v389 = *(v388 - 8);
                            }

                            *(a26 + v387) = *(v389 + 72);
                            v387 += 4;
                            v388 += 16;
                          }

                          while (v387 != 12);
                        }

                        else
                        {
                          v106 = v531;
                        }

                        v105 = v543;
                        v104 = v551[0];
                        goto LABEL_462;
                      }

                      goto LABEL_450;
                    }

                    v368 = *(v359 + 16);
                    if (v368)
                    {
                      CFRelease(v368);
                      *(v359 + 16) = 0;
                    }
                  }
                }

                ++v358;
                v38 += 16;
                if (v358 == 3)
                {
                  OUTLINED_FUNCTION_303_1();
                  v186 = v541;
                  break;
                }
              }
            }

            if (!*(DerivedStorage + 9760))
            {
              v55 = 0;
              goto LABEL_442;
            }

            for (j = 0; j != 3; ++j)
            {
              if (*(*v186 + 16))
              {
                v370 = *(*v186 + 56);
                if (!v370)
                {
                  break;
                }

                v371 = FigMediaPlaylistGetMediaSegmentSpecifiers(v370);
                if (!v371 || CFArrayGetCount(v371) < 1)
                {
                  break;
                }
              }

              v186 += 16;
            }

            v372 = *MEMORY[0x1E695E4D0];
            v373 = *MEMORY[0x1E695E4C0];
            v374 = v548;
            if (*(*(CMBaseObjectGetVTable() + 8) + 56))
            {
              v375 = OUTLINED_FUNCTION_198_0();
              v377 = v376(v375);
              if (!v377)
              {
                v378 = *(DerivedStorage + 9760);
                if (*(DerivedStorage + 8600) || !*(*v507 + 16))
                {
                  v372 = v373;
                }

                v379 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                i = v540;
                if (v379)
                {
                  v55 = v379(v378, @"AfmfpbProperty_HasUnmuxedVideo", v372);
                  if (!v548)
                  {
                    goto LABEL_453;
                  }
                }

                else
                {
                  v55 = 4294954514;
                  if (!v548)
                  {
                    goto LABEL_453;
                  }
                }

                goto LABEL_450;
              }

              v55 = v377;
            }

            else
            {
              v55 = 4294954514;
            }

            i = v540;
            if (!v548)
            {
              goto LABEL_453;
            }

LABEL_450:
            valid = MoveAlternateFromValidList(v38, v374, v510, 0);
            if (!valid)
            {
              segPumpUpdateAlternateSelectionBossNetworkErrorFilter(DerivedStorage, v510, v381, v382, v383, v384, v385, v386, v456, v459, v464, SBYTE2(v464), BYTE3(v464), SHIDWORD(v464), v466, v470, v477, SWORD2(v477), SHIWORD(v477), URLForCacheLookup, StableStreamIdentifier, v492, v496, v499, v503, v507, v510, v513, v517, v520, v523, v526, v531, v533, v535, v536, key, v540, v541, v542, v543, v544, v545, v548, v549, v550[0], v550[1], v551[0], v551[1], v552, v553);
            }

            v55 = valid;
            goto LABEL_453;
          }

          if (IsFullyCached)
          {
            v185 = 1;
          }

          else
          {
            v185 = v164;
          }

          if (((v185 | HIDWORD(v544) ^ 1 | v503 | v41 | HIDWORD(v499) | HIDWORD(v503)) & 1) == 0 || (v186 = v541, (v185 & 1) == 0) && (LODWORD(v550[0]) != 0) | v503 & 1)
          {
            v55 = 4294950461;
            goto LABEL_29;
          }

          if (v546)
          {
            goto LABEL_271;
          }

          v187 = 0;
          v188 = 0;
          v189 = 392;
          do
          {
            v190 = *(DerivedStorage + v189);
            if (*(v190 + 16) && *(v190 + 96) == 0.0)
            {
              break;
            }

            v187 = v188 > 1;
            v189 += 16;
            ++v188;
          }

          while (v188 != 3);
          if (v187)
          {
LABEL_271:
            LODWORD(v41) = HIDWORD(v542);
            if ((v526 & 0x100000000) == 0)
            {
              v568[0] = 0;
              OUTLINED_FUNCTION_278_0();
              if (*(v191 + 1185))
              {
                OUTLINED_FUNCTION_45_1();
                v242 = FigSignalErrorAtGM();
LABEL_529:
                v55 = v242;
                goto LABEL_102;
              }

              OUTLINED_FUNCTION_265_0();
              segPumpGetSafeNetworkBandwidth(v192, v193, v194, v195);
              HIDWORD(v526) = v499 <= v513;
            }
          }

          else if (dword_1EAF16A30)
          {
            OUTLINED_FUNCTION_145_0();
            OUTLINED_FUNCTION_150_1();
            v196 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v204 = OUTLINED_FUNCTION_235_0(v196, v197, v198, v199, v200, v201, v202, v203, v456, v459, v464, v466, v470, *(&v470 + 1), v477, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v492, v496, v499, v503, v507, v510, v513, v517, v520, v523, v526, v531, v533, v535, v536, key, v540, v541, v542, v543, v544, v545, v546, v549, v550[0], v550[1], v551[0], v551[1], v552, v553, rhs.value, *&rhs.timescale, rhs.epoch, v555, v556, type[0]);
            if (OUTLINED_FUNCTION_109_0(v204))
            {
              if (DerivedStorage)
              {
                OUTLINED_FUNCTION_164_1();
              }

              LODWORD(v41) = HIDWORD(v542);
              LODWORD(cf.value) = 136315394;
              OUTLINED_FUNCTION_225_1();
              OUTLINED_FUNCTION_2_1();
              OUTLINED_FUNCTION_38();
              _os_log_send_and_compose_impl();
            }

            else
            {
              LODWORD(v41) = HIDWORD(v542);
            }

            OUTLINED_FUNCTION_21_1();
            HIDWORD(v526) = 1;
            OUTLINED_FUNCTION_42_1();
            i = v540;
          }

          else
          {
            HIDWORD(v526) = 1;
            LODWORD(v41) = HIDWORD(v542);
          }

          OUTLINED_FUNCTION_400_1();
          if ((v213 & HIDWORD(v544)) != 1)
          {
            goto LABEL_295;
          }

          if (!v535[168])
          {
            goto LABEL_295;
          }

          OUTLINED_FUNCTION_278_0();
          if (*(v214 + 860))
          {
            goto LABEL_295;
          }

          FigGetUpTimeNanoseconds();
          OUTLINED_FUNCTION_278_0();
          v217 = *(DerivedStorage + 8);
          v218 = 1000000000 * v217;
          v219 = v217 > 0xA;
          v220 = 10000000000;
          if (v219)
          {
            v220 = v218;
          }

          if (v215 - *(v216 + 432) > v220)
          {
            v547 = *(DerivedStorage + 8328);
            if (*(v216 + 472))
            {
              OUTLINED_FUNCTION_145_0();
              OUTLINED_FUNCTION_150_1();
              v221 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              OUTLINED_FUNCTION_436_1(v221, v222, v223, v224, v225, v226, v227, v228, v456, v459, v464, v466, v470, *(&v470 + 1), v477, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v492, v496, v499, v503, v507, v510, v513, v517, v520, v523, v526, v531, v533, v535, v536, key, v540, v541, v542, v543, v544, v545, v547, v549, v550[0], v550[1], v551[0], v551[1], v552, v553, rhs.value, *&rhs.timescale, rhs.epoch, v555, v556, type[0]);
              OUTLINED_FUNCTION_40();
              if (i)
              {
                OUTLINED_FUNCTION_76_1();
                if (v108)
                {
                  v230 = &stru_1F0B1AFB8;
                }

                else
                {
                  v230 = v229;
                }

                FigAlternateGetPlaylistAlternateURL(*(v548 + 8));
                LODWORD(cf.value) = 136315650;
                OUTLINED_FUNCTION_34_1();
                *(&cf.flags + 2) = v230;
                HIWORD(cf.epoch) = v231;
                *v559 = v232;
                OUTLINED_FUNCTION_23_1();
                OUTLINED_FUNCTION_38();
                _os_log_send_and_compose_impl();
              }

              i = v540;
              OUTLINED_FUNCTION_21_1();
              LODWORD(v510) = 1;
              OUTLINED_FUNCTION_108_1();
            }

            else
            {
              OUTLINED_FUNCTION_145_0();
              OUTLINED_FUNCTION_150_1();
              v318 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              OUTLINED_FUNCTION_436_1(v318, v319, v320, v321, v322, v323, v324, v325, v456, v459, v464, v466, v470, *(&v470 + 1), v477, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v492, v496, v499, v503, v507, v510, v513, v517, v520, v523, v526, v531, v533, v535, v536, key, v540, v541, v542, v543, v544, v545, v547, v549, v550[0], v550[1], v551[0], v551[1], v552, v553, rhs.value, *&rhs.timescale, rhs.epoch, v555, v556, type[0]);
              OUTLINED_FUNCTION_40();
              if (i)
              {
                OUTLINED_FUNCTION_76_1();
                if (v108)
                {
                  v327 = &stru_1F0B1AFB8;
                }

                else
                {
                  v327 = v326;
                }

                FigAlternateGetPlaylistAlternateURL(*(v548 + 8));
                LODWORD(cf.value) = 136315650;
                OUTLINED_FUNCTION_34_1();
                *(&cf.flags + 2) = v327;
                HIWORD(cf.epoch) = v328;
                *v559 = v329;
                OUTLINED_FUNCTION_23_1();
                OUTLINED_FUNCTION_38();
                _os_log_send_and_compose_impl();
              }

              i = v540;
              OUTLINED_FUNCTION_16();
              OUTLINED_FUNCTION_414();
              LODWORD(v510) = 0;
            }

            v166 = v533;
            if ((v41 & 1) == 0)
            {
              goto LABEL_379;
            }
          }

          else
          {
LABEL_295:
            LODWORD(v510) = 0;
            v548 = 0;
            if ((v41 & 1) == 0)
            {
LABEL_379:
              for (k = 0; k != 3; ++k)
              {
                v341 = *(v186 + 16 * k);
                if (*(v341 + 776) >= 1)
                {
                  v342 = 0;
                  do
                  {
                    v343 = OUTLINED_FUNCTION_266();
                    segPumpStreamCancelReadAheadAndResetDataAtIndex(v343, v344, 0);
                    ++v342;
                  }

                  while (v342 < *(v341 + 776));
                }
              }

              for (m = 392; m != 440; m += 16)
              {
                segPumpStreamCancelPreloadReadAndResetData(DerivedStorage, *(DerivedStorage + m));
              }

              for (n = 392; n != 440; n += 16)
              {
                segPumpStreamCancelPreloadMapReadAndResetData(DerivedStorage, *(DerivedStorage + n));
              }

              if (*(DerivedStorage + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 8))
              {
                OUTLINED_FUNCTION_305();
                v347();
              }

              v348 = *(DerivedStorage + 8432);
              if (v348)
              {
                CFRelease(v348);
                *(DerivedStorage + 8432) = 0;
              }

              v535[272] = 0;
              v535[312] = 0;
              v535[352] = 0;
              v349 = *(DerivedStorage + 8328);
              if (v349 && !v548 && !LODWORD(v550[0]) && !*(DerivedStorage + 184) && v499 > v513)
              {
                *(DerivedStorage + 8432) = CFRetain(*(v349 + 8));
              }

LABEL_297:
              v233 = *(DerivedStorage + 8336);
              TargetDuration = v549;
              *(DerivedStorage + 8336) = v549;
              if (v549)
              {
                TargetDuration = CFRetain(v549);
              }

              if (v233)
              {
                CFRelease(v233);
              }

              v235 = *(DerivedStorage + 9744);
              if (v235)
              {
                VTable = CMBaseObjectGetVTable();
                v237 = *(VTable + 8);
                TargetDuration = (VTable + 8);
                v238 = *(v237 + 56);
                if (v238)
                {
                  TargetDuration = v238(v235, @"AlternateFilterMonitorProperty_SelectedMedia", v549);
                }
              }

              if (LODWORD(v550[0]))
              {
                LODWORD(key) = (i != 0) & BYTE4(v513);
                if ((v184 & 1) == 0)
                {
                  v55 = 0;
                  v38 = v536;
                  goto LABEL_443;
                }

                if (!*(*v507 + 16) || (v239 = OUTLINED_FUNCTION_273_1(), v242 = segPumpStopStream(v239, v240, v241), !v242))
                {
                  v243 = v523;
                  if (!*(*(DerivedStorage + 424) + 16) || (v244 = OUTLINED_FUNCTION_273_1(), v242 = segPumpStopStream(v244, v245, v246), !v242))
                  {
                    segPumpClearStatistics(DerivedStorage);
                    segPumpUpdateCurrentAlternate(DerivedStorage, v38);
                    v535[704] = 1;
                    if ((v544 & 0x100000000) == 0)
                    {
                      v535[705] = 1;
                    }

                    *(*(DerivedStorage + 392) + 896) = *(*(DerivedStorage + 392) + 1064);
                    OUTLINED_FUNCTION_26_1();
                    segPumpStreamUpdateIndexFile(v247, v248, v249, v250, v251, @".");
                    OUTLINED_FUNCTION_26_1();
                    segPumpStreamUpdateIndexFile(v252, v253, v254, v255, v256, @".");
                    v263 = *(*(DerivedStorage + 392) + 56);
                    v38 = v536;
                    if (v263)
                    {
                      v263 = FigMediaPlaylistGetMediaSegmentSpecifiers(v263);
                      if (v263)
                      {
                        v263 = CFArrayGetCount(v263);
                        if (v263 >= 1)
                        {
                          v535[705] = 0;
                          v535[760] = 0;
                        }
                      }
                    }

                    v264 = OUTLINED_FUNCTION_364_1(v263, v257, *(DerivedStorage + 392), v258, v259, v260, v261, v262, v456, v459, v464, v466, v470, *(&v470 + 1), v477, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v492, v496, v499, v503, v507, v510, v513, v517, v520, v523, v526, v531, v533, v535, v536, key, v540, v541, v542, v543, v544, v545);
                    OUTLINED_FUNCTION_178_1(v265, v264);
                    cf = *v243;
                    v460 = v266;
                    v267 = OUTLINED_FUNCTION_163_1();
                    v55 = OUTLINED_FUNCTION_446_0(v267, v268, v269, 0, v270, v271, v272, v273, 1, v460, &cf, v467, v471, v474, v478, v482, v486, v489, v493, v497, v500, v504, v508, v511, v514, v518, v521, v524, v527, v529);
                    ++*(*(DerivedStorage + 408) + 72);
                    ++*(*(DerivedStorage + 424) + 72);
                    goto LABEL_453;
                  }
                }

                goto LABEL_529;
              }

              if (v535[704])
              {
                v535[704] = 0;
              }

              if (v166)
              {
                if (v545->n128_u32[3])
                {
                  LODWORD(v212) = key;
                  v274 = vcnt_s8(*&v212);
                  v274.i16[0] = vaddlv_u8(v274);
                  if (v274.i32[0] >= 2u)
                  {
                    for (ii = 0; ii != 3; ++ii)
                    {
                      if ((key >> ii))
                      {
                        v276 = &v166[ii];
                        if (*(v276 + 12))
                        {
                          v277 = *(v186 + 16 * ii);
                          *v568 = *v545->n128_u8;
                          OUTLINED_FUNCTION_363_1(v276);
                          CMTimeAdd(&cf, v568, &rhs);
                          *v568 = cf;
                          *&v212 = CMTimeGetSeconds(v568);
                          TargetDuration = *(v277 + 56);
                          if (TargetDuration)
                          {
                            v278 = *&v212;
                            for (jj = 0; ; ++jj)
                            {
                              TargetDuration = FigMediaPlaylistGetMediaSegmentSpecifiers(TargetDuration);
                              if (TargetDuration)
                              {
                                TargetDuration = CFArrayGetCount(TargetDuration);
                              }

                              if (jj >= TargetDuration)
                              {
                                goto LABEL_333;
                              }

                              v280 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v277 + 56));
                              v281 = CFArrayGetValueAtIndex(v280, jj);
                              if (FigMediaSegmentSpecifierIsDiscontinuity(v281))
                              {
                                if (FigMediaSegmentSpecifierGetDiscontinuityDomain(v281) == *(v277 + 304))
                                {
                                  break;
                                }
                              }

                              TargetDuration = *(v277 + 56);
                            }

                            v282 = vabdd_f64(v278, *(segPumpGetMediaFilePrivateData(v281) + 4));
                            TargetDuration = FigMediaPlaylistGetTargetDuration(*(v277 + 56));
                            v166 = v533;
                            if (v282 < (TargetDuration >> 1))
                            {
                              v166 = 0;
                              break;
                            }
                          }

                          else
                          {
LABEL_333:
                            v166 = v533;
                          }
                        }
                      }
                    }
                  }
                }
              }

              if ((v41 & 1) == 0)
              {
                segPumpClearStatistics(DerivedStorage);
                TargetDuration = segPumpUpdateCurrentAlternate(DerivedStorage, v38);
                *(DerivedStorage + 8600) = v477 != 0;
              }

              v283 = *v507;
              v284 = *(*v507 + 16);
              if (v477)
              {
                v38 = v536;
                if (dword_1EAF16A30)
                {
                  OUTLINED_FUNCTION_145_0();
                  OUTLINED_FUNCTION_150_1();
                  v285 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v293 = OUTLINED_FUNCTION_245_1(v285, v286, v287, v288, v289, v290, v291, v292, v456, v459, v464, v466, v470, *(&v470 + 1), v477, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v492, v496, v499, v503, v507, v510, v513, v517, v520, v523, v526, v531, v533, v535, v536, key, v540, v541, v542, v543, v544, v545, v548, v549, v550[0], v550[1], v551[0], v551[1], v552, v553, rhs.value, *&rhs.timescale, rhs.epoch, v555, v556, type[0]);
                  if (OUTLINED_FUNCTION_124_0(v293))
                  {
                    OUTLINED_FUNCTION_76_1();
                    LODWORD(cf.value) = 136315394;
                    OUTLINED_FUNCTION_225_1();
                    OUTLINED_FUNCTION_2_1();
                    OUTLINED_FUNCTION_44_0();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_7();
                  TargetDuration = OUTLINED_FUNCTION_345_0();
                }

                if (HIDWORD(v520))
                {
                  v330 = 408;
                  v331 = 392;
                  if (v284)
                  {
                    v331 = 408;
                  }

                  if (v41)
                  {
                    v330 = 416;
                  }

                  OUTLINED_FUNCTION_208_0(TargetDuration, v205, *(DerivedStorage + v330), *(DerivedStorage + v331), v208, v209, v210, v211, v456, v459, v464, v466, v470, *(&v470 + 1), v477, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v492, v496, v499, v503, v507, v510, v513, v517, v520, v523, v526, v531, v533, v535, v536, key, v540, v541, v542, v543, v544, v545);
                  cf = *v523;
                  v461 = v332;
                  v457 = v333;
                  v334 = OUTLINED_FUNCTION_163_1();
                  v339 = segPumpSetAlternateForStream(v334, v335, v336, v337, v543, URLForCacheLookup, StableStreamIdentifier, v338, v457, v461, &cf);
                  if (v339)
                  {
                    v55 = v339;
                    goto LABEL_442;
                  }
                }

                i = v540;
                if (v41)
                {
                  goto LABEL_405;
                }

                ++*(*(DerivedStorage + 392) + 72);
                v300 = OUTLINED_FUNCTION_273_1();
                TargetDuration = segPumpStopStream(v300, v301, v302);
                if (!TargetDuration)
                {
                  OUTLINED_FUNCTION_26_1();
                  segPumpStreamUpdateIndexFile(v303, v304, v305, v306, v307, v308);
LABEL_405:
                  v535[35] = 0;
                  goto LABEL_406;
                }

LABEL_533:
                v55 = TargetDuration;
                goto LABEL_443;
              }

              v294 = *v186;
              v295 = *(*v186 + 16);
              v38 = v536;
              if (!HIDWORD(v520))
              {
                goto LABEL_351;
              }

              v296 = v523;
              if (v166)
              {
                v296 = v166 + 1;
                if ((v166[1].flags & 1) == 0)
                {
                  v296 = v523;
                }
              }

              v212 = *&v296->value;
              rhs = *v296;
              if (v284)
              {
                v297 = v283;
              }

              else
              {
                v297 = v294;
              }

              v298 = BYTE4(v513);
              if (v543)
              {
                OUTLINED_FUNCTION_208_0(TargetDuration, v205, v206, v207, v208, v209, v210, v211, v456, v459, v464, v466, v470, *(&v470 + 1), v477, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v492, v496, v499, v503, v507, v510, v513, v517, v520, v523, v526, v531, v533, v535, v536, key, v540, v541, v542, v543, v544, v545);
                cf = rhs;
                v462 = v409;
                v458 = v410;
                OUTLINED_FUNCTION_100_0();
                TargetDuration = segPumpSetAlternateForStream(v411, v412, v413, v297, v543, URLForCacheLookup, StableStreamIdentifier, v414, v458, v462, &cf);
                i = v540;
                if (TargetDuration)
                {
                  goto LABEL_533;
                }

                if (dword_1EAF16A30)
                {
                  OUTLINED_FUNCTION_367_1();
                  v415 = OUTLINED_FUNCTION_268_0();
                  v423 = OUTLINED_FUNCTION_236_0(v415, v416, v417, v418, v419, v420, v421, v422, v456, v459, v464, v466, v470, *(&v470 + 1), v477, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v492, v496, v499, v503, v507, v510, v513, v517, v520, v523, v526, v531, v533, v535, v536, key, v540, v541, v542, v543, v544, v545, v548, v549, v550[0], v550[1], v551[0], v551[1], v552, v553, SWORD2(v553), SBYTE6(v553), HIBYTE(v553), rhs.value, *&rhs.timescale, rhs.epoch, v555, v556, *type);
                  if (OUTLINED_FUNCTION_109_0(v423))
                  {
                    OUTLINED_FUNCTION_76_1();
                    LODWORD(cf.value) = 136315906;
                    OUTLINED_FUNCTION_35_1();
                    HIWORD(cf.epoch) = 1024;
                    *v559 = v424;
                    *&v559[4] = 1024;
                    *&v559[6] = v41;
                    OUTLINED_FUNCTION_23_1();
                    OUTLINED_FUNCTION_38();
                    _os_log_send_and_compose_impl();
                    OUTLINED_FUNCTION_402_1();
                  }

                  OUTLINED_FUNCTION_21_1();
                  v299 = 1;
                  TargetDuration = OUTLINED_FUNCTION_42_1();
                  v55 = 0;
                  goto LABEL_352;
                }

                v55 = 0;
                v299 = 1;
              }

              else
              {
                if (v41)
                {
LABEL_351:
                  v55 = 0;
                  v299 = 1;
LABEL_352:
                  i = v540;
                  goto LABEL_402;
                }

                i = v540;
                if ((v513 & 0x100000000) != 0)
                {
                  if (dword_1EAF16A30)
                  {
                    OUTLINED_FUNCTION_367_1();
                    v309 = OUTLINED_FUNCTION_268_0();
                    v317 = OUTLINED_FUNCTION_236_0(v309, v310, v311, v312, v313, v314, v315, v316, v456, v459, v464, v466, v470, *(&v470 + 1), v477, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v492, v496, v499, v503, v507, v510, v513, v517, v520, v523, v526, v531, v533, v535, v536, key, v540, v541, v542, 0, v544, v545, v548, v549, v295, v550[1], v551[0], v551[1], v552, v553, SWORD2(v553), SBYTE6(v553), HIBYTE(v553), rhs.value, *&rhs.timescale, rhs.epoch, v555, v556, *type);
                    if (OUTLINED_FUNCTION_109_0(v317))
                    {
                      OUTLINED_FUNCTION_76_1();
                      LODWORD(cf.value) = 136315394;
                      OUTLINED_FUNCTION_225_1();
                      OUTLINED_FUNCTION_2_1();
                      OUTLINED_FUNCTION_38();
                      _os_log_send_and_compose_impl();
                      OUTLINED_FUNCTION_402_1();
                    }

                    OUTLINED_FUNCTION_7();
                    OUTLINED_FUNCTION_524();
                    i = v540;
                    v295 = v550[0];
                  }

                  v55 = 0;
                  OUTLINED_FUNCTION_191_1();
                }

                else
                {
                  if (dword_1EAF16A30)
                  {
                    OUTLINED_FUNCTION_367_1();
                    v451 = OUTLINED_FUNCTION_268_0();
                    v452 = os_log_type_enabled(v451, HIBYTE(v553));
                    if (OUTLINED_FUNCTION_109_0(v452))
                    {
                      OUTLINED_FUNCTION_76_1();
                      LODWORD(cf.value) = 136315650;
                      OUTLINED_FUNCTION_35_1();
                      HIWORD(cf.epoch) = 2048;
                      *v559 = v453;
                      OUTLINED_FUNCTION_23_1();
                      OUTLINED_FUNCTION_44_0();
                      _os_log_send_and_compose_impl();
                      OUTLINED_FUNCTION_402_1();
                    }

                    OUTLINED_FUNCTION_7();
                    OUTLINED_FUNCTION_524();
                    i = v540;
                  }

                  ++*(v283 + 72);
                  v454 = OUTLINED_FUNCTION_266();
                  v55 = segPumpStopStream(v454, v455, 0);
                }

                v299 = v298 ^ 1;
                OUTLINED_FUNCTION_26_1();
                segPumpStreamUpdateIndexFile(v350, v351, v352, v353, v354, v355);
              }

LABEL_402:
              if (HIDWORD(v513))
              {
                if (!v166 || (v406 = v166, (v166->flags & 1) == 0))
                {
                  v406 = v523;
                }

                v407 = *&v406->value;
                rhs.epoch = v406->epoch;
                *&rhs.value = v407;
                if (HIDWORD(v526))
                {
                  v408 = v535[28] == 0;
                }

                else
                {
                  v408 = 1;
                }

                v425 = v541;
                if (!v295)
                {
                  v425 = v507;
                }

                v426 = *v425;
                if (dword_1EAF16A30)
                {
                  OUTLINED_FUNCTION_367_1();
                  v427 = OUTLINED_FUNCTION_268_0();
                  v435 = OUTLINED_FUNCTION_236_0(v427, v428, v429, v430, v431, v432, v433, v434, v456, v459, v464, v466, v470, *(&v470 + 1), v477, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v492, v496, v499, v503, v507, v510, v513, v517, v520, v523, v526, v531, v533, v535, v536, key, v540, v541, v542, v543, v544, v545, v548, v549, v550[0], v550[1], v551[0], v551[1], v552, v553, SWORD2(v553), SBYTE6(v553), HIBYTE(v553), rhs.value, *&rhs.timescale, rhs.epoch, v555, v556, *type);
                  if (OUTLINED_FUNCTION_109_0(v435))
                  {
                    OUTLINED_FUNCTION_76_1();
                    LODWORD(cf.value) = 136315906;
                    OUTLINED_FUNCTION_35_1();
                    HIWORD(cf.epoch) = 1024;
                    *v559 = v436;
                    *&v559[4] = 1024;
                    *&v559[6] = v41;
                    OUTLINED_FUNCTION_23_1();
                    OUTLINED_FUNCTION_38();
                    _os_log_send_and_compose_impl();
                    OUTLINED_FUNCTION_402_1();
                  }

                  OUTLINED_FUNCTION_7();
                  TargetDuration = OUTLINED_FUNCTION_524();
                  i = v540;
                }

                v437 = 392;
                if (v41)
                {
                  v437 = 400;
                }

                v438 = OUTLINED_FUNCTION_364_1(TargetDuration, v205, *(DerivedStorage + v437), v207, v208, v209, v210, v211, v456, v459, v464, v466, v470, *(&v470 + 1), v477, URLForCacheLookup, StableStreamIdentifier, *(&StableStreamIdentifier + 1), v492, v496, v499, v503, v507, v510, v513, v517, v520, v523, v526, v531, v533, v535, v536, key, v540, v541, v542, v543, v544, v545);
                OUTLINED_FUNCTION_178_1(v439, v438);
                cf = rhs;
                v463 = v440;
                v441 = OUTLINED_FUNCTION_163_1();
                v55 = OUTLINED_FUNCTION_446_0(v441, v442, v443, v426, v444, v445, v446, v447, v408, v463, &cf, v468, v472, v475, v479, v483, v487, v490, v494, v498, v501, v505, v509, v512, v515, v519, v522, v525, v528, v530);
                if (v55)
                {
                  goto LABEL_443;
                }

                v535[28] = 1;
                if (v299)
                {
                  goto LABEL_404;
                }
              }

              else if (v299)
              {
                goto LABEL_404;
              }

              v448 = OUTLINED_FUNCTION_273_1();
              v55 = segPumpStopStream(v448, v449, v450);
LABEL_404:
              v186 = v541;
              if (v55)
              {
                goto LABEL_443;
              }

              goto LABEL_405;
            }
          }

          *(DerivedStorage + 7880) = v38;
          goto LABEL_297;
        }

        HIDWORD(v499) = 1;
      }

      else
      {
        HIDWORD(v499) = 1;
        LODWORD(v503) = 1;
      }

      LODWORD(v41) = 1;
      goto LABEL_238;
    }

    v54 = DerivedStorage + 392;
    if (*(DerivedStorage + 8328))
    {
      OUTLINED_FUNCTION_176_0();
      v55 = 0;
      goto LABEL_29;
    }

    v57 = *(DerivedStorage + 296);
    LODWORD(v41) = HIDWORD(v542);
    if (!v57)
    {
      goto LABEL_44;
    }

    v568[0] = 0;
    *type = 0;
    cf.value = 0;
    rhs.value = 0;
    LongestContiguousMediaStreamInCacheAtTime = FigStreamingCacheGetLongestContiguousMediaStreamInCacheAtTime(v57, 0, &rhs.value, v568, &cf, type, 0.0);
    v59 = v568[0];
    if (LongestContiguousMediaStreamInCacheAtTime)
    {
      AlternateEntryFromURLForCacheLookup = 0;
      if (v568[0])
      {
LABEL_39:
        CFRelease(v59);
      }
    }

    else
    {
      if (v568[0])
      {
        AlternateEntryFromURLForCacheLookup = segPumpGetAlternateEntryFromURLForCacheLookup(DerivedStorage, v568[0], cf.value);
        v59 = v568[0];
        if (!v568[0])
        {
          goto LABEL_41;
        }

        goto LABEL_39;
      }

      AlternateEntryFromURLForCacheLookup = 0;
    }

LABEL_41:
    if (cf.value)
    {
      CFRelease(cf.value);
    }

    if (AlternateEntryFromURLForCacheLookup)
    {
LABEL_85:
      v56 = AlternateEntryFromURLForCacheLookup[1];
      HasAudio = FigAlternateHasAudio(v56);
      if (FigAlternateHasVideo(AlternateEntryFromURLForCacheLookup[1]))
      {
        v108 = 1;
      }

      else
      {
        v108 = HasAudio == 0;
      }

      v109 = !v108;
      HIDWORD(v544) = v109;
      v38 = AlternateEntryFromURLForCacheLookup;
      goto LABEL_92;
    }

LABEL_44:
    AlternateEntryFromURLForCacheLookup = *v38;
    if (*v38)
    {
      do
      {
        if (!FigAlternateIsIFrameOnly(AlternateEntryFromURLForCacheLookup[1]) && FigAlternateHasValidCodecs(AlternateEntryFromURLForCacheLookup[1]))
        {
          goto LABEL_85;
        }

        AlternateEntryFromURLForCacheLookup = *AlternateEntryFromURLForCacheLookup;
      }

      while (AlternateEntryFromURLForCacheLookup);
    }

    AlternateEntryFromURLForCacheLookup = (DerivedStorage + 8280);
    while (1)
    {
      AlternateEntryFromURLForCacheLookup = *AlternateEntryFromURLForCacheLookup;
      if (!AlternateEntryFromURLForCacheLookup)
      {
        break;
      }

      if (FigAlternateHasValidCodecs(AlternateEntryFromURLForCacheLookup[1]))
      {
        OUTLINED_FUNCTION_145_0();
        OUTLINED_FUNCTION_150_1();
        v61 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v69 = OUTLINED_FUNCTION_235_0(v61, v62, v63, v64, v65, v66, v67, v68, v456, v459, v464, v465, v469, v473, v476, v480, v484, v488, v491, v495, v499, v502, v506, v510, v513, v516, v520, v523, v526, a25, v532, v534, v536, key, v538, v541, v542, v543, v544, v545, v546, v549, v550[0], v550[1], v551[0], v551[1], v552, v553, rhs.value, *&rhs.timescale, rhs.epoch, v555, v556, type[0]);
        if (OUTLINED_FUNCTION_109_0(v69))
        {
          if (DerivedStorage)
          {
            OUTLINED_FUNCTION_164_1();
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }
    }

    AlternateEntryFromURLForCacheLookup = (DerivedStorage + 8280);
    do
    {
      AlternateEntryFromURLForCacheLookup = *AlternateEntryFromURLForCacheLookup;
      if (!AlternateEntryFromURLForCacheLookup)
      {
        OUTLINED_FUNCTION_145_0();
        OUTLINED_FUNCTION_150_1();
        v79 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v87 = OUTLINED_FUNCTION_245_1(v79, v80, v81, v82, v83, v84, v85, v86, v456, v459, v464, v465, v469, v473, v476, v480, v484, v488, v491, v495, v499, v502, v506, v510, v513, v516, v520, v523, v526, a25, v532, v534, v536, key, v538, v541, v542, v543, v544, v545, v546, v549, v550[0], v550[1], v551[0], v551[1], v552, v553, rhs.value, *&rhs.timescale, rhs.epoch, v555, v556, type[0]);
        if (OUTLINED_FUNCTION_124_0(v87))
        {
          if (DerivedStorage)
          {
            OUTLINED_FUNCTION_164_1();
          }

          LODWORD(cf.value) = 136315394;
          *(&cf.value + 4) = "segPumpGetFirstMatchingAlternateEntry";
          OUTLINED_FUNCTION_2_1();
          OUTLINED_FUNCTION_44_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_345_0();
        AlternateEntryFromURLForCacheLookup = *v38;
        goto LABEL_85;
      }
    }

    while (FigAlternateIsIFrameOnly(AlternateEntryFromURLForCacheLookup[1]));
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_150_1();
    v70 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v78 = OUTLINED_FUNCTION_235_0(v70, v71, v72, v73, v74, v75, v76, v77, v456, v459, v464, v465, v469, v473, v476, v480, v484, v488, v491, v495, v499, v502, v506, v510, v513, v516, v520, v523, v526, a25, v532, v534, v536, key, v538, v541, v542, v543, v544, v545, v546, v549, v550[0], v550[1], v551[0], v551[1], v552, v553, rhs.value, *&rhs.timescale, rhs.epoch, v555, v556, type[0]);
    if (OUTLINED_FUNCTION_109_0(v78))
    {
      if (DerivedStorage)
      {
        OUTLINED_FUNCTION_164_1();
      }

LABEL_61:
      LODWORD(cf.value) = 136315394;
      *(&cf.value + 4) = "segPumpGetFirstMatchingAlternateEntry";
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
    }

LABEL_62:
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_524();
    goto LABEL_85;
  }

  for (kk = 0; kk != 48; kk += 16)
  {
    v89 = *(DerivedStorage + kk + 400);
    if (*(v89 + 1208))
    {
      nw_activity_complete_with_reason();
      v90 = *(v89 + 1208);
      if (v90)
      {
        CFRelease(v90);
        *(v89 + 1208) = 0;
      }
    }

    if (*(v89 + 16))
    {
      v91 = DerivedStorage + kk;
      segPumpStopConcurrentStream();
      *(v89 + 864) = 256;
      v92 = *(DerivedStorage + kk + 392);
      v93 = *(DerivedStorage + kk + 400);
      *(v91 + 392) = v93;
      *(v91 + 400) = v92;
      if (!*(v93 + 1192))
      {
        v94 = *(v92 + 1192);
        if (v94)
        {
          *(v93 + 1192) = v94;
          *(*(v91 + 400) + 1192) = 0;
        }
      }

      if (*(v89 + 256) && !*(*(v89 + 696) + 8))
      {
        if (dword_1EAF16A30)
        {
          OUTLINED_FUNCTION_145_0();
          OUTLINED_FUNCTION_150_1();
          v95 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v96 = os_log_type_enabled(v95, type[0]);
          if (OUTLINED_FUNCTION_28_1(v96))
          {
            OUTLINED_FUNCTION_76_1();
            LODWORD(cf.value) = 136315906;
            OUTLINED_FUNCTION_35_1();
            HIWORD(cf.epoch) = 2048;
            *v559 = v97;
            *&v559[8] = 2048;
            *&v559[10] = v536;
            OUTLINED_FUNCTION_23_1();
            OUTLINED_FUNCTION_24_1();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_9_1();
          OUTLINED_FUNCTION_417();
        }

        OUTLINED_FUNCTION_166_0();
        OUTLINED_FUNCTION_320_1();
        segPumpStreamProceedAfterMediaAndKeyArrival(v98, v99, v100, v101, v102, v103);
      }
    }
  }

  segPumpClearStatistics(DerivedStorage);
  segPumpUpdateCurrentAlternate(DerivedStorage, *(DerivedStorage + 7880));
  LODWORD(key) = 0;
  v104 = 0;
  v105 = 0;
  i = 0;
  v55 = 0;
  *(DerivedStorage + 8600) = *(*(DerivedStorage + 392) + 16) == 0;
  *(DerivedStorage + 7880) = 0;
  v38 = v536;
  v106 = a25;
LABEL_462:
  if (v106)
  {
    *v106 = key;
  }

  if (v104)
  {
    CFRelease(v104);
  }

  if (v105)
  {
    CFRelease(v105);
  }

  if (i)
  {
    CFRelease(i);
  }

  if (v556)
  {
    CFRelease(v556);
  }

  segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v38, v55);
  OUTLINED_FUNCTION_191();
}

uint64_t segPumpGetTimeRangeForDate(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *a4)
{
  OUTLINED_FUNCTION_113_1();
  CMBaseObjectGetDerivedStorage();
  v6 = OUTLINED_FUNCTION_188();

  return segPumpGetTimeRangeForDateWithSegmentOffset(v6, v7, v8, v4, a4, 0);
}

uint64_t segPumpGetEstimatedDateForTime(const void *a1, uint64_t *a2, CFDateRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = OUTLINED_FUNCTION_198();
  v9 = segPumpAPILockAndEnsureAPIStatus(v7, v8);
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v10 = *(*(DerivedStorage + 392 + 16 * *(DerivedStorage + 8600)) + 56);
    if (v10 && (MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v10)) != 0 && CFArrayGetCount(MediaSegmentSpecifiers) >= 1 && !*(DerivedStorage + 8218))
    {
      Current = CFAbsoluteTimeGetCurrent();
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v16 = *(DerivedStorage + 392 + 16 * *(DerivedStorage + 8600));
      v17 = Current + (UpTimeNanoseconds - *(v16 + 1064)) / -1000000000.0 - *(v16 + 96) - *(v16 + 88);
      v18 = OUTLINED_FUNCTION_351_0(a2[2], *a2, a2[1], v20);
      v19 = CFDateCreate(*(DerivedStorage + 56), v18 + v17);
      v12 = 0;
      *a3 = v19;
    }

    else
    {
      v12 = 4294954513;
    }
  }

  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v12);
}

void segPumpLikelyToKeepUp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _BYTE *a29)
{
  OUTLINED_FUNCTION_813();
  v30 = v29;
  v175 = v31;
  v176 = v32;
  v172 = v33;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v194 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v183 = 0.0;
  v184 = 0.0;
  v43 = DerivedStorage + 0x2000;
  v181 = 0.0;
  v182 = 0.0;
  v180 = 0.0;
  v44 = 0.0;
  HIDWORD(v174) = segPumpAPILockAndEnsureAPIStatus(v41, 0);
  if (HIDWORD(v174))
  {
    goto LABEL_169;
  }

  if (*(DerivedStorage + 8896))
  {
    v108 = 1;
    goto LABEL_171;
  }

  *time = *v39;
  *&time[16] = *(v39 + 16);
  Seconds = CMTimeGetSeconds(time);
  v193 = 0;
  v191 = 0u;
  v192 = 0u;
  v190 = 0u;
  memset(time, 0, sizeof(time));
  segPumpMakeNetworkPrediction(DerivedStorage, time);
  if (v46)
  {
LABEL_169:
    v108 = 0;
LABEL_171:
    v61 = INFINITY;
    goto LABEL_172;
  }

  v173 = v30;
  v47 = DerivedStorage + 392;
  v48 = *time;
  segPumpGetRequiredBandwidthForCurrentStreamingAlternate(DerivedStorage);
  StartupRequirements = segPumpGetStartupRequirements(DerivedStorage, *(DerivedStorage + 8), &v181, &v180, &v184, &v183, &v182, v49);
  if (*(DerivedStorage + 337))
  {
    v59 = &v182;
  }

  else
  {
    v59 = &v184;
  }

  v60 = 0.0;
  if (*v59 > 0.0)
  {
    v60 = Seconds / *v59;
  }

  v44 = fmaxf(v60, 0.0);
  if (*(DerivedStorage + 8218))
  {
    v61 = INFINITY;
  }

  else
  {
    v171 = v41;
    v76 = 0;
    v77 = 0;
    v78 = 1;
    v61 = INFINITY;
    *&v58 = 136316418;
    v169 = v58;
    do
    {
      v79 = v78;
      v80 = *(v47 + 16 * v76);
      if (*(v80 + 16))
      {
        if ((v35 >> v76) & 1) != 0 && (*(v37 + 12))
        {
          v81 = *(v80 + 88);
          v82 = *(v80 + 96);
          if (OUTLINED_FUNCTION_72_1(StartupRequirements, v51, v52, v53, v54, v55, v56, v57, v165, v166, v167, v168, v169, *(&v169 + 1), v170, v171, v172, v173, v174, v175, v176, v177, v179, *&v180, *&v181, *&v182, *&v183, *&v184, *v185, *&v185[8], *&v185[16], *v186, *&v186[8], *&v186[16], *&v186[24], *&v186[32], *&v187, v188, *time) > v81 && !*(DerivedStorage + 337))
          {
            v83 = v81 + v82;
            LiveBoundary = segPumpGetLiveBoundary(DerivedStorage, *(v80 + 56));
            v93 = v83 - OUTLINED_FUNCTION_72_1(v85, v86, v87, v88, v89, v90, v91, v92, v165, v166, v167, v168, v169, *(&v169 + 1), v170, v171, v172, v173, v174, v175, v176, v177, v179, *&v180, *&v181, *&v182, *&v183, *&v184, *v185, *&v185[8], *&v185[16], *v186, *&v186[8], *&v186[16], *&v186[24], *&v186[32], *&v187, v188, *time);
            if (LiveBoundary >= v93)
            {
              if (*(DerivedStorage + 8160) >= 2)
              {
                if (*(DerivedStorage + 8))
                {
                  v94 = v93 / (LiveBoundary + 0.01);
                  if (v61 >= v94)
                  {
                    v61 = v93 / (LiveBoundary + 0.01);
                  }
                }
              }

              if (dword_1EAF16A30 < 2)
              {
                v77 = 1;
              }

              else
              {
                OUTLINED_FUNCTION_399_0();
                v168 = OUTLINED_FUNCTION_263_1();
                HIDWORD(v167) = BYTE3(v179);
                if (os_log_type_enabled(v168, BYTE3(v179)))
                {
                  v95 = HIDWORD(v179);
                }

                else
                {
                  v95 = HIDWORD(v179) & 0xFFFFFFFE;
                }

                if (v95)
                {
                  OUTLINED_FUNCTION_205_0();
                  if (v105)
                  {
                    v106 = &stru_1F0B1AFB8;
                  }

                  else
                  {
                    v106 = v104;
                  }

                  v107 = OUTLINED_FUNCTION_72_1(v96, v97, v98, v99, v100, v101, v102, v103, v165, v166, v167, v168, v169, *(&v169 + 1), v170, v171, v172, v173, v174, v175, v176, v177, v179, *&v180, *&v181, *&v182, *&v183, *&v184, *v185, *&v185[8], *&v185[16], *v186, *&v186[8], *&v186[16], *&v186[24], *&v186[32], *&v187, v188, *time);
                  *v185 = v169;
                  *&v185[4] = "segPumpLikelyToKeepUp";
                  *&v185[12] = 2114;
                  *&v185[14] = v106;
                  *&v185[22] = 1024;
                  *v186 = v76;
                  *&v186[4] = 2048;
                  *&v186[6] = v107;
                  *&v186[14] = 2048;
                  *&v186[16] = v93;
                  *&v186[24] = 2048;
                  *&v186[26] = v83;
                  OUTLINED_FUNCTION_47_0();
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_109();
                v77 = 1;
                StartupRequirements = OUTLINED_FUNCTION_42_1();
              }
            }
          }
        }
      }

      v78 = 0;
      v76 = 1;
    }

    while ((v79 & 1) != 0);
    if (v77)
    {
      v108 = 0;
      v41 = v171;
LABEL_70:
      v109 = v176;
      goto LABEL_109;
    }

    v41 = v171;
  }

  v62 = *(DerivedStorage + 8240);
  if (v62 != 0.0 && Seconds >= v62)
  {
LABEL_32:
    if (*(DerivedStorage + 337))
    {
      v70 = Seconds < v182;
    }

    else
    {
      v70 = 1;
    }

    v178 = DerivedStorage + 0x2000;
    if (!v70 && (*(DerivedStorage + 8) < 0x10u || v181 <= v48))
    {
      v72 = 5;
LABEL_72:
      v75 = 0;
      *(DerivedStorage + 8848) = v72;
LABEL_73:
      v74 = 1;
      goto LABEL_86;
    }

    v73 = v184;
    if (Seconds >= v184)
    {
      v72 = 2;
      goto LABEL_72;
    }

    if (Seconds >= v183)
    {
      if (v180 <= v48)
      {
        *(DerivedStorage + 8848) = 3;
        if (*(DerivedStorage + 8896) || *(DerivedStorage + 8600))
        {
          v75 = 0;
          goto LABEL_73;
        }

        v75 = 0;
        v74 = 1;
        if ((v35 & 1) == 0 || *(*v47 + 752) < 2)
        {
          goto LABEL_86;
        }

        v110 = Seconds;
        if (v172)
        {
          *time = *v172;
          *&time[16] = *(v172 + 16);
          v110 = CMTimeGetSeconds(time);
          v73 = v184;
        }

        if (v110 >= v73 || (v111 = *v47, (v112 = *(*v47 + 696)) == 0) || (StartupRequirements = v111[32]) == 0 || StartupRequirements != *(v112 + 8) || (TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(StartupRequirements), v111[94] < 1))
        {
          v75 = 0;
          goto LABEL_86;
        }

        v161 = v111 + 87;
        v162 = v110 / TimeInSeconds;
        v75 = 0;
        while (1)
        {
          v163 = *v161;
          if (*v161)
          {
            v164 = *(v163 + 256);
            if (!v164 || *(v163 + 224) / v164 < v162)
            {
              break;
            }
          }

          OUTLINED_FUNCTION_309_1();
          if (v105)
          {
            goto LABEL_86;
          }
        }
      }

      v74 = 0;
      v75 = 1;
LABEL_86:
      if (dword_1EAF16A30 >= 2)
      {
        OUTLINED_FUNCTION_399_0();
        v113 = OUTLINED_FUNCTION_263_1();
        os_log_type_enabled(v113, BYTE3(v179));
        OUTLINED_FUNCTION_233();
        if (v105)
        {
          v115 = v114;
        }

        else
        {
          v115 = HIDWORD(v179);
        }

        if (v115)
        {
          if (DerivedStorage)
          {
            OUTLINED_FUNCTION_393_1();
          }

          *v185 = 136316930;
          *&v185[4] = "segPumpLikelyToKeepUp";
          *&v185[12] = 2114;
          OUTLINED_FUNCTION_68_0();
          *v186 = Seconds;
          *&v186[8] = v116;
          *&v186[10] = v117;
          *&v186[18] = v116;
          *&v186[20] = v118;
          *&v186[28] = v116;
          *&v186[30] = v119;
          *&v186[38] = v116;
          v187 = v121 / v120;
          LOWORD(v188) = 1024;
          *(&v188 + 2) = v74;
          OUTLINED_FUNCTION_47_0();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        StartupRequirements = OUTLINED_FUNCTION_467();
      }

      if (!*(DerivedStorage + 8218))
      {
        v122 = v41;
        for (i = 392; i != 440; i += 16)
        {
          v124 = *(DerivedStorage + i);
          if (*(v124 + 16))
          {
            v125 = *(v124 + 88);
            v126 = *(v124 + 96);
            v127 = OUTLINED_FUNCTION_72_1(StartupRequirements, v51, v52, v53, v54, v55, v56, v57, v165, v166, v167, v168, v169, *(&v169 + 1), v170, v171, v172, v173, v174, v175, v176, v178, v179, *&v180, *&v181, *&v182, *&v183, *&v184, *v185, *&v185[8], *&v185[16], *v186, *&v186[8], *&v186[16], *&v186[24], *&v186[32], *&v187, v188, *time);
            v128 = segPumpGetLiveBoundary(DerivedStorage, *(v124 + 56));
            v129 = *(DerivedStorage + 16);
            if (v129 <= 0.0)
            {
              LODWORD(v129) = *(DerivedStorage + 8);
              v129 = *&v129;
            }

            if (v75 & 1) == 0 && (*(v37 + 12))
            {
              v130 = v125 + v126 - v127;
              if (v130 <= v128 - v129 && *(v124 + 868) == 1)
              {
                AllocatorForMedia = FigGetAllocatorForMedia();
                v166 = *(DerivedStorage + 8);
                v132 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"Warning: restarting %fs from end of live playlist; target duration %ds - stall danger", *&v130);
                v133 = OUTLINED_FUNCTION_313_1();
                segPumpAppendErrorLogEntry(v133, v134, v135, -16832, @"CoreMediaErrorDomain", v132, 0, 1, 0, 3);
                if (v132)
                {
                  CFRelease(v132);
                }
              }
            }
          }
        }

        v41 = v122;
      }

      v108 = v74;
      v109 = v176;
      v43 = v178;
      goto LABEL_109;
    }

    v108 = 0;
    v30 = v173;
LABEL_172:
    v109 = v176;
    if (v176)
    {
      goto LABEL_114;
    }

    goto LABEL_115;
  }

  v64 = 0;
  v65 = 1;
  while (1)
  {
    v66 = v65;
    v67 = *(v47 + 16 * v64);
    if (!*(v67 + 16) || ((v35 >> v64) & 1) == 0)
    {
      goto LABEL_26;
    }

    if (!*(DerivedStorage + 337))
    {
      break;
    }

    if (*(v67 + 867) || *(v67 + 874) || *(DerivedStorage + 7880) && ((v69 = *(v47 + 16 * v64 + 8), *(v69 + 867)) || *(v69 + 874)))
    {
      v68 = OUTLINED_FUNCTION_72_1(StartupRequirements, v51, v52, v53, v54, v55, v56, v57, v165, v166, v167, v168, v169, *(&v169 + 1), v170, v171, v172, v173, v174, v175, v176, v177, v179, *&v180, *&v181, *&v182, *&v183, *&v184, *v185, *&v185[8], *&v185[16], *v186, *&v186[8], *&v186[16], *&v186[24], *&v186[32], *&v187, v188, *time);
      if (!*(DerivedStorage + 8218) && *(v67 + 96) + *(v67 + 88) - (3 * *(DerivedStorage + 8)) <= v68)
      {
        *(DerivedStorage + 8848) = 5;
        if (dword_1EAF16A30 < 2)
        {
          v108 = 0;
          goto LABEL_70;
        }

        OUTLINED_FUNCTION_399_0();
        v154 = OUTLINED_FUNCTION_263_1();
        os_log_type_enabled(v154, BYTE3(v179));
        OUTLINED_FUNCTION_233();
        if (v105)
        {
          v156 = v155;
        }

        else
        {
          v156 = HIDWORD(v179);
        }

        if (v156)
        {
          OUTLINED_FUNCTION_205_0();
          *v185 = 136316162;
          OUTLINED_FUNCTION_63_0();
          *&v186[8] = v157;
          *&v186[10] = Seconds;
          *&v186[18] = 1024;
          *&v186[20] = v64;
          OUTLINED_FUNCTION_47_0();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_282();
          _os_log_send_and_compose_impl();
        }

        goto LABEL_167;
      }
    }

LABEL_26:
    v65 = 0;
    v64 = 1;
    if ((v66 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (!*(v67 + 874))
  {
    goto LABEL_26;
  }

  *(DerivedStorage + 8848) = 1;
  v152 = *(DerivedStorage + 8240);
  if (v152 == 0.0)
  {
    v153 = 0.0;
  }

  else
  {
    v153 = Seconds / v152;
  }

  v109 = v176;
  if (v153 > 0.0)
  {
    v44 = v153;
  }

  if (dword_1EAF16A30 >= 2)
  {
    OUTLINED_FUNCTION_399_0();
    v158 = OUTLINED_FUNCTION_263_1();
    v159 = os_log_type_enabled(v158, BYTE3(v179));
    if (OUTLINED_FUNCTION_77_0(v159))
    {
      OUTLINED_FUNCTION_205_0();
      *v185 = 136315906;
      *&v185[4] = "segPumpLikelyToKeepUp";
      *&v185[12] = 2114;
      OUTLINED_FUNCTION_68_0();
      *v186 = Seconds;
      *&v186[8] = 1024;
      *&v186[10] = v64;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

LABEL_167:
    v109 = v176;
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v108 = 0;
LABEL_109:
  v136 = *(DerivedStorage + 8848);
  if (v136)
  {
    v137 = *(DerivedStorage + 9232);
    if (v137)
    {
      v138 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v138)
      {
        v138(v137, 0x1F0B64538, 0x1F0B42438, v136, 0);
      }
    }
  }

  v30 = v173;
  if (v109)
  {
LABEL_114:
    segPumpGetLiveEdge(DerivedStorage, v35, 0, time);
    v139 = *&time[16];
    v140 = v190;
    *v109 = *time;
    v109[1] = v139;
    v109[2] = v140;
  }

LABEL_115:
  if (*(DerivedStorage + 337))
  {
    if (v61 >= v44)
    {
      v141 = v44;
    }

    else
    {
      v141 = v61;
    }

    goto LABEL_119;
  }

  if (!v108)
  {
    if (v61 >= v44)
    {
      v151 = v44;
    }

    else
    {
      v151 = v61;
    }

    if (v151 > 0.99)
    {
      v151 = 0.99;
    }

    v141 = fmaxf(v151, 0.0);
    goto LABEL_119;
  }

  v141 = 1.0;
  if (!*(DerivedStorage + 330) || *(v43 + 1642))
  {
    goto LABEL_119;
  }

  v144 = 0;
  v145 = 0;
  v146 = 1;
  *(v43 + 1642) = 1;
  do
  {
    v147 = v146;
    v148 = *(DerivedStorage + 392 + 16 * v145);
    if (*(v148 + 16) && ((v35 >> v145) & 1) != 0)
    {
      v144 += *(v148 + 1232);
    }

    v146 = 0;
    v145 = 1;
  }

  while ((v147 & 1) != 0);
  v149 = *(DerivedStorage + 9232);
  if (!v149)
  {
LABEL_119:
    v142 = v175;
    v143 = HIDWORD(v174);
    goto LABEL_120;
  }

  v150 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  v142 = v175;
  v143 = HIDWORD(v174);
  if (v150)
  {
    v150(v149, 0x1F0B64538, 0x1F0B678B8, v144, 0);
  }

LABEL_120:
  if (v142)
  {
    *v142 = v141;
  }

  if (v30)
  {
    *v30 = *(DerivedStorage + 8848);
  }

  if (a29)
  {
    *a29 = v108;
  }

  segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v41, v143);
  OUTLINED_FUNCTION_812();
}

uint64_t segPumpOpen(const void *a1, uint64_t a2, const void *a3, const void *a4, int a5, _DWORD *a6, char *a7)
{
  v103 = a7;
  cf = a3;
  v130 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v102 = FigRetainProxyRetain();
  v128 = *a2;
  v13 = *(a2 + 12);
  timescale = *(a2 + 8);
  v117 = *(a2 + 16);
  v14 = segPumpAPILockAndEnsureAPIStatus(a1, 0);
  if (v14)
  {
    v69 = v14;
    goto LABEL_112;
  }

  v15 = (DerivedStorage + 0x2000);
  v106 = a4;
  v109 = (DerivedStorage + 0x2000);
  if (dword_1EAF16A30)
  {
    LODWORD(v113) = a5;
    if (v13)
    {
      v27 = OUTLINED_FUNCTION_73_1();
      os_log_type_enabled(v27, type);
      OUTLINED_FUNCTION_101_0();
      if (_ZF)
      {
        value = v28;
      }

      else
      {
        value = lhs.value;
      }

      if (value)
      {
        OUTLINED_FUNCTION_254_0();
        v31 = a1;
        if (_ZF)
        {
          v32 = &stru_1F0B1AFB8;
        }

        else
        {
          v32 = v30;
        }

        OUTLINED_FUNCTION_18_1();
        Seconds = CMTimeGetSeconds(&time[0].start);
        v34 = *(DerivedStorage + 224);
        if (!*(DerivedStorage + 347))
        {
          v34 = @"[]";
        }

        LODWORD(rhs.value) = 136315906;
        *(&rhs.value + 4) = "segPumpOpen";
        LOWORD(rhs.flags) = 2114;
        *(&rhs.flags + 2) = v32;
        a1 = v31;
        HIWORD(rhs.epoch) = 2048;
        v124 = Seconds;
        v125 = 2114;
        v126 = v34;
        OUTLINED_FUNCTION_95_1();
        OUTLINED_FUNCTION_387_1();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_404_1();
      }

      v15 = (DerivedStorage + 0x2000);
      OUTLINED_FUNCTION_384_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_449();
      a5 = v113;
      goto LABEL_26;
    }

    if (*&cf == 0.0)
    {
      if (!a4)
      {
        v46 = OUTLINED_FUNCTION_73_1();
        v54 = OUTLINED_FUNCTION_243_1(v46, v47, v48, v49, v50, v51, v52, v53, v95, v96, v97, v98, v100, v101, v102, v103, v104, 0, v107, v109, 0, v111, v113, v115, v116, v117, lhs.value, *&lhs.timescale, lhs.epoch, v119, v120, v121, type);
        if (!OUTLINED_FUNCTION_71_0(v54))
        {
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_254_0();
        OUTLINED_FUNCTION_184_0();
        LODWORD(rhs.value) = 136315650;
        OUTLINED_FUNCTION_117_1();
        v124 = v55;
        OUTLINED_FUNCTION_82_1();
        OUTLINED_FUNCTION_387_1();
        goto LABEL_7;
      }

      v35 = OUTLINED_FUNCTION_73_1();
      v43 = OUTLINED_FUNCTION_243_1(v35, v36, v37, v38, v39, v40, v41, v42, v95, v96, v97, v98, v100, v101, v102, v103, v104, a4, v107, v109, 0, v111, v113, v115, v116, v117, lhs.value, *&lhs.timescale, lhs.epoch, v119, v120, v121, type);
      if (OUTLINED_FUNCTION_71_0(v43))
      {
        OUTLINED_FUNCTION_254_0();
        OUTLINED_FUNCTION_184_0();
        LODWORD(rhs.value) = 136315906;
        OUTLINED_FUNCTION_117_1();
        a4 = v106;
        v124 = *&v106;
        v125 = v44;
        v126 = v45;
        OUTLINED_FUNCTION_95_1();
        OUTLINED_FUNCTION_387_1();
        OUTLINED_FUNCTION_65();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_404_1();
LABEL_25:
        v15 = v109;
        a5 = v113;
        OUTLINED_FUNCTION_384_1();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_449();
LABEL_26:
        OUTLINED_FUNCTION_29();
        if (_ZF && dword_1EAF16A30)
        {
          LODWORD(lhs.value) = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_101_0();
          if (_ZF)
          {
            v57 = v56;
          }

          else
          {
            v57 = 0;
          }

          if (v57)
          {
            OUTLINED_FUNCTION_254_0();
            if (_ZF)
            {
              v59 = &stru_1F0B1AFB8;
            }

            else
            {
              v59 = v58;
            }

            OUTLINED_FUNCTION_390_1();
            CMTimeRangeGetEnd(&rhs, time);
            v60 = CMTimeGetSeconds(&rhs);
            LODWORD(rhs.value) = 136315650;
            *(&rhs.value + 4) = "segPumpOpen";
            LOWORD(rhs.flags) = 2114;
            *(&rhs.flags + 2) = v59;
            v15 = v109;
            HIWORD(rhs.epoch) = 2048;
            v124 = v60;
            OUTLINED_FUNCTION_82_1();
            a4 = v106;
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_404_1();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_449();
          a5 = v113;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v16 = OUTLINED_FUNCTION_73_1();
      v24 = OUTLINED_FUNCTION_243_1(v16, v17, v18, v19, v20, v21, v22, v23, v95, v96, v97, v98, v100, v101, v102, v103, v104, a4, v107, v109, cf, v111, v113, v115, v116, v117, lhs.value, *&lhs.timescale, lhs.epoch, v119, v120, v121, type);
      if (OUTLINED_FUNCTION_71_0(v24))
      {
        OUTLINED_FUNCTION_254_0();
        OUTLINED_FUNCTION_184_0();
        LODWORD(rhs.value) = 136315906;
        OUTLINED_FUNCTION_117_1();
        v124 = *&cf;
        v125 = v25;
        v126 = v26;
        OUTLINED_FUNCTION_95_1();
        OUTLINED_FUNCTION_387_1();
LABEL_7:
        OUTLINED_FUNCTION_65();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_404_1();
      }
    }

LABEL_24:
    a4 = v106;
    goto LABEL_25;
  }

LABEL_38:
  if (!*(DerivedStorage + 9200))
  {
    v15[1024] = 0;
    v61 = *(DerivedStorage + 9208);
    if (v61)
    {
      CFRelease(v61);
      *(DerivedStorage + 9208) = 0;
    }
  }

  if (a5 && !*(*(DerivedStorage + 392) + 872))
  {
    v62 = *(DerivedStorage + 8);
    v63 = v62;
    if (!v62)
    {
      v63 = 10.0;
    }

    CMTimeMakeWithSeconds(&rhs, v63, 1000);
    lhs.value = v128;
    lhs.timescale = timescale;
    lhs.flags = v13;
    lhs.epoch = v117;
    CMTimeSubtract(&time[0].start, &lhs, &rhs);
    v128 = time[0].start.value;
    LOBYTE(v13) = time[0].start.flags;
    timescale = time[0].start.timescale;
  }

  v64 = *(DerivedStorage + 296);
  if (!v64)
  {
    v67 = v15 + 676;
    v15[676] = 1;
    goto LABEL_54;
  }

  v65 = 0.0;
  if ((v13 & 0x1D) == 1)
  {
    OUTLINED_FUNCTION_18_1();
    if (CMTimeGetSeconds(&time[0].start) >= 0.0)
    {
      OUTLINED_FUNCTION_18_1();
      v65 = CMTimeGetSeconds(&time[0].start);
    }
  }

  FigStreamingCacheHintPlaybackTime(v64, v65);
  v66 = *(DerivedStorage + 296);
  v67 = v15 + 676;
  v15[676] = 1;
  if (!v66 || (v68 = segPumpAddStreamingCacheListeners(*DerivedStorage), !v68))
  {
LABEL_54:
    v108 = 0;
    v70 = 392;
    __asm { FMOV            V0.2D, #-1.0 }

    *v114 = _Q0;
    v105 = 1;
    do
    {
      v75 = *(DerivedStorage + v70);
      OUTLINED_FUNCTION_18_1();
      segPumpCalculateStreamDurationAndBytesCached(DerivedStorage, v75, time);
      if (*v67 && *(v75 + 160) == 1)
      {
        *(v75 + 160) = 2;
        *(v75 + 168) = 0u;
        *(v75 + 184) = 0u;
        *(v75 + 200) = 0;
      }

      if (!*(v75 + 232))
      {
        v76 = cf;
        if (*&cf != 0.0)
        {
          v76 = CFRetain(cf);
        }

        *(v75 + 232) = v76;
      }

      *a6 = *(v75 + 72);
      if (a4)
      {
        v77 = CFRetain(a4);
      }

      else
      {
        v77 = 0;
      }

      *(v75 + 240) = v77;
      *(v75 + 120) = *v114;
      *(v75 + 304) = 0;
      *(v75 + 328) = 0;
      if ((v13 & 0x1D) == 1)
      {
        OUTLINED_FUNCTION_18_1();
        *(v75 + 120) = CMTimeGetSeconds(&time[0].start);
      }

      else if ((v13 & 5) == 5)
      {
        *(v75 + 112) = 1;
      }

      OUTLINED_FUNCTION_29();
      if (_ZF)
      {
        OUTLINED_FUNCTION_390_1();
        CMTimeRangeGetEnd(&rhs, time);
        *(v75 + 208) = rhs;
      }

      v78 = *(v75 + 56);
      if (v78)
      {
        MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v78);
        if (MediaSegmentSpecifiers)
        {
          if (CFArrayGetCount(MediaSegmentSpecifiers) >= 1)
          {
            if (v109[26] || (v81 = a1, v82 = *(v75 + 1056) + 1000000000 * *(DerivedStorage + 8), v83 = FigGetUpTimeNanoseconds() < v82, a1 = v81, a4 = v106, v83) && !*(v75 + 1184))
            {
              segPumpSetStartingOffset(a1, DerivedStorage, v75);
              if (*v75 == *(DerivedStorage + 8600) && !v109[29])
              {
                v80 = *(v75 + 56);
                if (v80)
                {
                  if (FigMediaPlaylistGetDateStampCount(v80) >= 1 && *(DerivedStorage + 168))
                  {
                    v99 = *(v75 + 880);
                    v108 = segPumpSendDateMapping(a1, DerivedStorage, v75);
                    if (v108 == -15626)
                    {
                      v69 = 4294951670;
                      goto LABEL_111;
                    }

                    if (FigRetainProxyIsInvalidated())
                    {
                      v69 = v108;
                      goto LABEL_112;
                    }

                    if (v99 != *(v75 + 880))
                    {
                      goto LABEL_110;
                    }
                  }
                }
              }
            }

            else
            {
              v105 = 0;
              *(v75 + 866) = 1;
            }
          }
        }
      }

      *(v75 + 869) = 0;
      if (*(*(DerivedStorage + v70) + 16))
      {
        if (*v75 == *(DerivedStorage + 8600))
        {
          v84 = *(v75 + 56);
          if (v84)
          {
            if (FigMediaPlaylistGetDateEntryArray(v84))
            {
              segPumpReadyNotification(DerivedStorage, @"FBP_TaggedRangeMetadataChanged", 0);
            }
          }
        }

        v68 = segPumpReadOrScheduleIndexFileRead();
        if (v68)
        {
          goto LABEL_52;
        }

        v108 = 0;
      }

      v70 += 16;
      ++a6;
    }

    while (v70 != 440);
    for (i = 0; i != 48; i += 16)
    {
      v87 = *(DerivedStorage + i + 392);
      v86 = *(DerivedStorage + i + 400);
      *(v87 + 136) = -1;
      *(v87 + 144) = -1;
      *(v86 + 136) = -1;
      *(v86 + 144) = -1;
    }

    v88 = v108;
    if (v105)
    {
      segPumpDeliverNextMediaForAllStreams();
    }

    v108 = v88;
    if (v103 && !v88)
    {
      v89 = *(*(DerivedStorage + 392 + 16 * *(DerivedStorage + 8600)) + 56);
      if (v89 && (v90 = FigMediaPlaylistGetMediaSegmentSpecifiers(v89)) != 0 && CFArrayGetCount(v90) >= 1 && !v109[26] && !v109[677])
      {
        _ZF = (*(a2 + 12) & 1) == 0 && cf == 0;
        v91 = _ZF && a4 == 0;
      }

      else
      {
        v91 = 0;
      }

      v69 = 0;
      *v103 = v91;
      goto LABEL_112;
    }

LABEL_110:
    v69 = v108;
    if (!v108)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

LABEL_52:
  v69 = v68;
LABEL_111:
  *v67 = 0;
LABEL_112:
  FigRetainProxyRelease();
  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v69);
}

uint64_t segPumpSetCallback()
{
  OUTLINED_FUNCTION_358_1();
  v3 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = OUTLINED_FUNCTION_198();
  v7 = segPumpAPILockAndEnsureAPIStatus(v5, v6);
  if (!v7)
  {
    *(DerivedStorage + 160) = v1;
    *(DerivedStorage + 168) = v0;
    *(DerivedStorage + 176) = FigRetainProxyRetain();
    FigRetainProxyRelease();
    v8 = *(DerivedStorage + 8600);
    v9 = *(DerivedStorage + 16 * v8 + 392);
    if (*v9 != v8 || *(DerivedStorage + 8221) || (v12 = v9[7]) == 0 || FigMediaPlaylistGetDateStampCount(v12) < 1 || !*(DerivedStorage + 168))
    {
      v10 = 0;
      goto LABEL_5;
    }

    v13 = OUTLINED_FUNCTION_69_0();
    v7 = segPumpSendDateMapping(v13, v14, v15);
  }

  v10 = v7;
LABEL_5:

  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v3, v10);
}

uint64_t segPumpSetDeliveryRate(const void *a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = OUTLINED_FUNCTION_198();
  v7 = segPumpAPILockAndEnsureAPIStatus(v5, v6);
  if (!v7)
  {
    if (*(DerivedStorage + 8896))
    {
      if (*(DerivedStorage + 8880) != a2)
      {
        if (*(DerivedStorage + 9000))
        {
          FigGetUpTimeNanoseconds();
          OUTLINED_FUNCTION_312_1();
          *(DerivedStorage + 8880) = a2;
          if (!v8)
          {
LABEL_9:
            v9 = fabsf(a2);
            *(DerivedStorage + 8888) = v9;
            if (v9 >= 1.0)
            {
              v10 = 0;
              goto LABEL_14;
            }
          }

LABEL_13:
          v10 = 0;
          *(DerivedStorage + 8888) = 0x3FF0000000000000;
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_312_1();
      }

      *(DerivedStorage + 8880) = a2;
      goto LABEL_13;
    }

    if (a2 >= 0.0)
    {
      *(DerivedStorage + 8880) = a2;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_239();
    v7 = FigSignalErrorAtGM();
  }

  v10 = v7;
LABEL_14:

  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v10);
}

void segPumpRetrieveAnIFrame()
{
  OUTLINED_FUNCTION_158_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = *(DerivedStorage + 392);
  v14 = OUTLINED_FUNCTION_198();
  NextIFrame = segPumpAPILockAndEnsureAPIStatus(v14, v15);
  if (!NextIFrame)
  {
    if ((*(v9 + 12) & 1) == 0)
    {
      goto LABEL_34;
    }

    if (!v7)
    {
      goto LABEL_34;
    }

    if (!*(DerivedStorage + 8896))
    {
      goto LABEL_34;
    }

    if (*(DerivedStorage + 8897))
    {
      goto LABEL_34;
    }

    if (*(DerivedStorage + 8952))
    {
      goto LABEL_34;
    }

    v17 = *(DerivedStorage + 392);
    if (*(v17 + 857))
    {
      goto LABEL_34;
    }

    v18 = *(v17 + 56);
    if (v18)
    {
      PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(v18);
      v17 = *(DerivedStorage + 392);
    }

    else
    {
      PlaylistActiveDurationSecs = *(DerivedStorage + 352);
    }

    v20 = *(v17 + 88);
    v21 = v20;
    if ((*(v5 + 12) & 9) == 1)
    {
      v21 = OUTLINED_FUNCTION_351_0(*(v5 + 16), *v5, *(v5 + 8), v35);
    }

    v22 = PlaylistActiveDurationSecs + v20;
    v23 = v22;
    if ((*(v3 + 12) & 5) == 1)
    {
      v23 = OUTLINED_FUNCTION_351_0(*(v3 + 16), *v3, *(v3 + 8), v35);
    }

    v24 = *(DerivedStorage + 392);
    if (v21 < *(v24 + 88))
    {
      v21 = *(v24 + 88);
    }

    if (v23 <= v22)
    {
      v25 = v23;
    }

    else
    {
      v25 = v22;
    }

    v26 = *(v9 + 12);
    v27 = v21;
    if ((~v26 & 9) != 0)
    {
      v27 = v25;
      if ((~v26 & 5) != 0)
      {
        v27 = OUTLINED_FUNCTION_351_0(*(v9 + 16), *v9, *(v9 + 8), v35);
      }
    }

    if (v27 < v21 || v27 > v25)
    {
LABEL_34:
      OUTLINED_FUNCTION_239();
      NextIFrame = FigSignalErrorAtGM();
    }

    else
    {
      v29 = *(v13 + 72) + 1;
      *(v13 + 72) = v29;
      *v1 = v29;
      *(DerivedStorage + 8960) = v7;
      *(DerivedStorage + 8968) = v27;
      *(DerivedStorage + 8976) = v21;
      *(DerivedStorage + 8984) = v25;
      *(DerivedStorage + 8904) = v22 - v21;
      *(DerivedStorage + 8912) = v22 - v25;
      v30 = *(*(DerivedStorage + 392) + 56);
      if (!v30 || (MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v30)) == 0 || CFArrayGetCount(MediaSegmentSpecifiers) <= 0)
      {
        v34 = 0;
        *(DerivedStorage + 8952) = 1;
        goto LABEL_33;
      }

      v32 = OUTLINED_FUNCTION_298();
      NextIFrame = segPumpRetrieveNextIFrame(v32, v33);
    }
  }

  v34 = NextIFrame;
LABEL_33:
  segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v11, v34);
  OUTLINED_FUNCTION_156_1();
}

uint64_t segPumpResetCachedMemory(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = OUTLINED_FUNCTION_198();
  v5 = segPumpAPILockAndEnsureAPIStatus(v3, v4);
  if (!v5)
  {
    v6 = *(DerivedStorage + 8136);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 8136) = 0;
    }
  }

  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v5);
}

uint64_t segPumpResetDownloadStatistics(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = OUTLINED_FUNCTION_198();
  v5 = segPumpAPILockAndEnsureAPIStatus(v3, v4);
  if (!v5)
  {
    segPumpClearStatistics(DerivedStorage);
  }

  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v5);
}

void segPumpTimeRequiredToSwitchToAlternate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  OUTLINED_FUNCTION_629();
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_261();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = DerivedStorage[1041] != 0;
  v17 = OUTLINED_FUNCTION_198();
  v19 = segPumpAPILockAndEnsureAPIStatus(v17, v18);
  if (v19)
  {
    goto LABEL_17;
  }

  if (!v14)
  {
    OUTLINED_FUNCTION_243();
    v19 = FigSignalErrorAtGM();
LABEL_17:
    v25 = v19;
LABEL_13:
    if (!a9)
    {
      goto LABEL_15;
    }

LABEL_14:
    *a9 = 0x7FF8000000000000;
    goto LABEL_15;
  }

  if ((v16 & (v12 >> 2)) == 0)
  {
    v25 = 0;
    goto LABEL_13;
  }

  segPumpGetCurrentRTT(DerivedStorage);
  if (v10 && v10 != v14)
  {
    v20 = DerivedStorage[985];
    if (v20)
    {
      PeakBitRate = FigAlternateGetPeakBitRate(*(v20 + 8));
      if (PeakBitRate > FigAlternateGetPeakBitRate(v10))
      {
        v10 = *(DerivedStorage[985] + 8);
      }
    }

    segPumpGetEstIndependentInterval(DerivedStorage);
    FigAlternateGetPeakBitRate(v14);
    FigAlternateGetPeakBitRate(v10);
    v22 = OUTLINED_FUNCTION_273_1();
    segPumpGetSafeNetworkBandwidth(v22, v23, v24, 0);
  }

  v25 = 0;
  if (a9)
  {
    goto LABEL_14;
  }

LABEL_15:
  segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v9, v25);
  OUTLINED_FUNCTION_345_1();
}

uint64_t segPumpGetLocalBitrateFraction(uint64_t a1, uint64_t a2, double *a3, CMTime *a4)
{
  OUTLINED_FUNCTION_261();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  start = **&MEMORY[0x1E6960C70];
  v9 = OUTLINED_FUNCTION_198();
  v11 = segPumpAPILockAndEnsureAPIStatus(v9, v10);
  if (v11)
  {
    goto LABEL_6;
  }

  if ((*(v5 + 12) & 1) == 0 || (*(v5 + 36) & 1) == 0 || *(v5 + 40) || (*(v5 + 24) & 0x8000000000000000) != 0 || !a3)
  {
    OUTLINED_FUNCTION_429();
    v11 = FigSignalErrorAtGM();
LABEL_6:
    v12 = v11;
    return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v4, v12);
  }

  if (*(DerivedStorage + 9088) > 0.0 && (*(DerivedStorage + 9108) & 1) != 0 && (*(DerivedStorage + 9132) & 1) != 0 && !*(DerivedStorage + 9136) && (*(DerivedStorage + 9120) & 0x8000000000000000) == 0 && (v27 = *(DerivedStorage + 9112), *&v30.start.value = *(DerivedStorage + 9096), *&v30.start.epoch = v27, *&v30.duration.timescale = *(DerivedStorage + 9128), OUTLINED_FUNCTION_177_1(), CMTimeRangeContainsTimeRange(&v30, &rhs)))
  {
    v25 = *(DerivedStorage + 9088);
  }

  else
  {
    v14 = *(MEMORY[0x1E6960C98] + 32);
    *&v30.start.epoch = *(MEMORY[0x1E6960C98] + 16);
    *&v30.duration.timescale = v14;
    *&v30.start.value = *MEMORY[0x1E6960C98];
    v15 = 0.0;
    LocalBitrateForSubStream = 0.0;
    if (*(*(DerivedStorage + 408) + 16))
    {
      OUTLINED_FUNCTION_177_1();
      LocalBitrateForSubStream = segPumpGetLocalBitrateForSubStream(DerivedStorage, 1, &rhs, &start, &v30);
    }

    if (*(*(DerivedStorage + 392) + 16))
    {
      OUTLINED_FUNCTION_177_1();
      v17 = OUTLINED_FUNCTION_249();
      v15 = segPumpGetLocalBitrateForSubStream(v17, v18, v19, v20, v21);
    }

    v22 = LocalBitrateForSubStream + v15;
    v23 = v15 < 0.0 || v22 <= 2.22044605e-16;
    if (v23 || LocalBitrateForSubStream < 0.0 || (v24 = *(DerivedStorage + 8328)) == 0)
    {
      v25 = *(DerivedStorage + 9088);
      if (v25 <= 0.0)
      {
        v25 = 1.0;
      }
    }

    else
    {
      v25 = v22 / FigAlternateGetPeakBitRate(*(v24 + 8));
      if (v25 < 0.33)
      {
        v25 = 0.33;
      }

      if (v25 > 1.0)
      {
        v25 = 1.0;
      }

      if (!*(DerivedStorage + 8896))
      {
        *(DerivedStorage + 9088) = v25;
        v26 = *&v30.start.epoch;
        *(DerivedStorage + 9096) = *&v30.start.value;
        *(DerivedStorage + 9112) = v26;
        *(DerivedStorage + 9128) = *&v30.duration.timescale;
      }
    }
  }

  *a3 = v25;
  if (a4)
  {
    if ((start.flags & 1) == 0)
    {
      LODWORD(v25) = *(DerivedStorage + 8);
      CMTimeMakeWithSeconds(&rhs.start, *&v25 + 0.5, 1000);
      v28 = *v5;
      CMTimeAdd(&v30.start, &v28, &rhs.start);
      start = v30.start;
    }

    v12 = 0;
    *a4 = start;
  }

  else
  {
    v12 = 0;
  }

  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v4, v12);
}

uint64_t segPumpSnapToTime(const void *a1, CMTime *a2, uint64_t a3, CMTime *a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = OUTLINED_FUNCTION_198();
  v13 = segPumpAPILockAndEnsureAPIStatus(v11, v12);
  if (v13)
  {
    goto LABEL_103;
  }

  flags = a2->flags;
  if ((flags & 1) == 0 || !a4 || !a5)
  {
    OUTLINED_FUNCTION_429();
    v13 = FigSignalErrorAtGM();
LABEL_103:
    v34 = v13;
    return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v34);
  }

  if (a3 == 4)
  {
    v92 = *a2;
    v22 = *(DerivedStorage + 16 * *(DerivedStorage + 8600) + 392);
    *time = *&a2->value;
    *&time[16] = a2->epoch;
    Seconds = CMTimeGetSeconds(time);
    if (v22)
    {
      v24 = Seconds;
      if (!*(DerivedStorage + 8328) || !*(DerivedStorage + 296) || !FigAlternateGetLastKnownValueForIsFullyCached())
      {
        v98 = 0;
        v96 = 0u;
        v97 = 0u;
        v95 = 0u;
        memset(time, 0, sizeof(time));
        segPumpMakeNetworkPrediction(DerivedStorage, time);
        if (!v25)
        {
          v26 = *(DerivedStorage + 8880);
          if (v26 > 0.0 && v26 <= 2.0)
          {
            v28 = *time;
            v29 = _os_feature_enabled_impl();
            v30 = *(v22 + 56);
            if (v29)
            {
              if (v30)
              {
                *time = 0;
                v93.value = 0;
                v91.value = 0;
                time1.value = 0;
                time2.value = 0;
                segPumpGetRequiredBandwidthForCurrentStreamingAlternate(DerivedStorage);
                v32 = v31;
                segPumpGetStartupRequirements(DerivedStorage, *(DerivedStorage + 8), time, &v93.value, &v91.value, &time1.value, &time2.value, v31);
                if (*&v93.value >= v28)
                {
                  if (*(DerivedStorage + 337))
                  {
                    p_time2 = &time2;
                  }

                  else
                  {
                    p_time2 = &v91;
                  }

                  v33 = *&p_time2->value;
                }

                else
                {
                  v33 = *&time1.value;
                }

                v55 = 0;
                for (i = v24 + v32 * v33 / v28 * *(DerivedStorage + 8880); ; i = v62)
                {
                  MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v22 + 56));
                  if (MediaSegmentSpecifiers)
                  {
                    MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
                  }

                  if (v55 >= MediaSegmentSpecifiers)
                  {
                    break;
                  }

                  v58 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v22 + 56));
                  ValueAtIndex = CFArrayGetValueAtIndex(v58, v55);
                  MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex);
                  v61 = MediaFilePrivateData[4];
                  v62 = v61 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
                  v63 = MediaFilePrivateData[4];
                  if (v63 <= i && i < v62)
                  {
                    v65 = i + v32 * (i - v63) / v28 * *(DerivedStorage + 8880);
                    if (v65 < v62)
                    {
                      CMTimeMakeWithSeconds(&v92, v65, 1000000);
                      break;
                    }
                  }

                  else
                  {
                    v62 = i;
                  }

                  ++v55;
                }
              }
            }

            else if (v30)
            {
              for (j = 0; ; ++j)
              {
                Count = FigMediaPlaylistGetMediaSegmentSpecifiers(v30);
                if (Count)
                {
                  Count = CFArrayGetCount(Count);
                }

                if (j >= Count)
                {
                  break;
                }

                v45 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v22 + 56));
                v46 = CFArrayGetValueAtIndex(v45, j);
                v47 = *(segPumpGetMediaFilePrivateData(v46) + 4);
                if (v47 <= v24)
                {
                  v48 = OUTLINED_FUNCTION_127_1();
                  if (v24 <= v47 + FigMediaSegmentSpecifierGetTimeInSeconds(v48))
                  {
                    LODWORD(v49) = *(DerivedStorage + 8);
                    v66 = (v24 - *(a3 + 32)) / v49;
                    segPumpGetRequiredBandwidthForCurrentStreamingAlternate(DerivedStorage);
                    if ((v66 + 1.0) * (v67 * *(DerivedStorage + 8880)) >= v28)
                    {
                      NextSegment = FigMediaSegmentSpecifierGetNextSegment(v46);
                      if (NextSegment)
                      {
                        v69 = segPumpGetMediaFilePrivateData(NextSegment);
                        CMTimeMakeWithSeconds(time, v69[4] + 0.000001, 1000000);
                        OUTLINED_FUNCTION_374_0();
                      }
                    }

                    break;
                  }
                }

                v30 = *(v22 + 56);
              }
            }
          }
        }
      }
    }

    if (!*(DerivedStorage + 8600))
    {
      v72 = *(*(DerivedStorage + 408) + 56);
      if (v72)
      {
        v73 = FigMediaPlaylistGetMediaSegmentSpecifiers(v72);
        if (v73)
        {
          if (CFArrayGetCount(v73) >= 1)
          {
            v93 = v92;
            *time = v92;
            v74 = CMTimeGetSeconds(time);
            v75 = *(DerivedStorage + 392);
            if (!*(v75 + 16))
            {
              v75 = 0;
            }

            v76 = *(DerivedStorage + 408);
            if (*(v76 + 16) && v75)
            {
              v77 = *(v75 + 336);
              if (v77)
              {
                while (1)
                {
                  v78 = v77[3];
                  if (v78 <= v74 && v78 + v77[5] > v74)
                  {
                    break;
                  }

                  v77 = *v77;
                  if (!v77)
                  {
                    goto LABEL_81;
                  }
                }

                v79 = *(v77 + 4);
              }

              else
              {
LABEL_81:
                v79 = -1;
              }

              v80 = *(v76 + 336);
              if (v80)
              {
                while (1)
                {
                  v81 = v80[3];
                  if (v81 <= v74 && v81 + v80[5] > v74)
                  {
                    break;
                  }

                  v80 = *v80;
                  if (!v80)
                  {
                    goto LABEL_87;
                  }
                }

                v82 = *(v80 + 4);
              }

              else
              {
LABEL_87:
                v82 = -1;
              }

              if (v79 <= v82)
              {
                if (v82 > v79)
                {
                  v83 = (v75 + 336);
                  while (1)
                  {
                    v83 = *v83;
                    if (!v83)
                    {
                      break;
                    }

                    if (*(v83 + 4) == v82)
                    {
LABEL_98:
                      v84 = v83[3];
                      if (v84 == -1.0)
                      {
                        break;
                      }

                      CMTimeMakeWithSeconds(time, v84, 1000);
                      goto LABEL_100;
                    }
                  }
                }
              }

              else
              {
                v83 = (v76 + 336);
                while (1)
                {
                  v83 = *v83;
                  if (!v83)
                  {
                    break;
                  }

                  if (*(v83 + 4) == v79)
                  {
                    goto LABEL_98;
                  }
                }
              }
            }

            *time = v93;
LABEL_100:
            OUTLINED_FUNCTION_374_0();
          }
        }
      }
    }

    v34 = 0;
    *a4 = v92;
    goto LABEL_68;
  }

  if (a3 != 3)
  {
    v34 = 0;
    v35 = *&a2->value;
    a4->epoch = a2->epoch;
    *&a4->value = v35;
LABEL_68:
    v70 = MEMORY[0x1E6960C70];
    *a5 = *MEMORY[0x1E6960C70];
    *(a5 + 16) = *(v70 + 16);
    return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v34);
  }

  memset(&v87, 0, sizeof(v87));
  if ((flags & 4) != 0)
  {
    MaxTime = segPumpGetMaxTime(DerivedStorage);
    v37 = OUTLINED_FUNCTION_173_0();
    MinimumPrebufferReservation = segPumpGetMinimumPrebufferReservation(v37, v38);
    CMTimeMakeWithSeconds(&v87, MaxTime - (MinimumPrebufferReservation + *(DerivedStorage + 8176)), 1000);
  }

  else
  {
    v87 = *a2;
  }

  v86 = v87;
  *time = *MEMORY[0x1E6960C70];
  v40 = *time;
  v41 = *(MEMORY[0x1E6960C70] + 16);
  *&time[16] = v41;
  *&v93.value = *time;
  v93.epoch = v41;
  memset(&v92, 0, sizeof(v92));
  v42 = *(DerivedStorage + 392);
  if (*(v42 + 16))
  {
    v85 = *time;
    v91 = v87;
    segPumpStreamSnapToSegmentBoundary(v42, &v91, &v93, &v92);
    v40 = v85;
  }

  else
  {
    *&v92.value = *time;
    v92.epoch = v41;
  }

  memset(&v91, 0, sizeof(v91));
  v50 = *(DerivedStorage + 408);
  if (v50[2])
  {
    OUTLINED_FUNCTION_375_1(v50, v14, v15, v16, v17, v18, v19, v20, v85, *(&v85 + 1), *&v86.value);
    v50 = segPumpStreamSnapToSegmentBoundary(v51, &time1, time, &v91);
  }

  else
  {
    *&v91.value = v40;
    v91.epoch = v41;
  }

  if (v92.flags & 1) != 0 || (v91.flags)
  {
    time1 = v92;
    time2 = v91;
    v50 = CMTimeMinimum(&v86, &time1, &time2);
    if (v93.flags)
    {
      if (time[12])
      {
        time2 = v93;
        v88 = *time;
        v50 = CMTimeMaximum(&time1, &time2, &v88);
        *a5 = *&time1.value;
        epoch = time1.epoch;
      }

      else
      {
        *a5 = *&v93.value;
        epoch = v93.epoch;
      }
    }

    else
    {
      *a5 = *time;
      epoch = *&time[16];
    }

    *(a5 + 16) = epoch;
  }

  *&a4->value = OUTLINED_FUNCTION_375_1(v50, 0, v15, v16, v17, v18, v19, v20, v85, *(&v85 + 1), *&v86.value);
  a4->epoch = v53;
  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v34);
}

uint64_t segPumpGetDeliveredTimeStamp(uint64_t a1, double *a2)
{
  *a2 = 0.0;
  result = *(a1 + 56);
  if (result)
  {
    FigMediaPlaylistGetMediaSegmentSpecifiers(result);
    result = FigCFArrayGetLastValue();
    if (result)
    {
      v4 = result;
      while (1)
      {
        MediaFilePrivateData = segPumpGetMediaFilePrivateData(v4);
        if (*(MediaFilePrivateData + 73))
        {
          break;
        }

        result = FigMediaSegmentSpecifierGetPreviousSegment(v4);
        v4 = result;
        if (!result)
        {
          return result;
        }
      }

      v6 = *(MediaFilePrivateData + 4);
      *a2 = v6 + FigMediaSegmentSpecifierGetTimeInSeconds(v4);
      return 1;
    }
  }

  return result;
}

__n128 segPumpStopConcurrentStream()
{
  OUTLINED_FUNCTION_187();
  if (*(v1 + 776) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = OUTLINED_FUNCTION_177();
      segPumpStreamCancelReadAheadAndResetDataAtIndex(v3, v4, 0);
      ++v2;
    }

    while (v2 < *(v0 + 776));
  }

  v5 = OUTLINED_FUNCTION_177();
  segPumpStreamCancelPreloadReadAndResetData(v5, v6);
  v7 = OUTLINED_FUNCTION_177();
  segPumpStreamCancelPreloadMapReadAndResetData(v7, v8);
  v9 = OUTLINED_FUNCTION_177();
  segPumpStopStream(v9, v10, 0);
  segPumpStreamDisposeStorage(v0);
  *(v0 + 866) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v0 + 120) = _Q0;
  OUTLINED_FUNCTION_191_1();
  return result;
}

uint64_t segPumpSetAlternateForStream(uint64_t a1, int a2, int a3, int a4, const void *a5, const void *a6, const void *a7, int a8, char a9, uint64_t a10, _OWORD *a11)
{
  v227 = a1;
  LODWORD(v232) = a8;
  OUTLINED_FUNCTION_471();
  v257 = *MEMORY[0x1E69E9840];
  *&v236 = 0.0;
  if (!*v17)
  {
    *(v12 + 8760) = 0;
  }

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v11;
  }

  v19 = 944;
  if (*(v11 + 944) == -1)
  {
    v19 = 304;
  }

  *(v11 + 944) = *(v18 + v19);
  v20 = *(v18 + 56);
  if (v20)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v20);
    if (MediaSegmentSpecifiers)
    {
      if (CFArrayGetCount(MediaSegmentSpecifiers) >= 1 && !FigMediaPlaylistHasDiscontinuitySequence(*(v18 + 56)) && !FigMediaPlaylistGetPlaylistType(*(v18 + 56)))
      {
        FigMediaPlaylistGetMediaSegmentSpecifiers(*(v18 + 56));
        LastValue = FigCFArrayGetLastValue();
        if (FigMediaSegmentSpecifierGetDiscontinuityDomain(LastValue) >= 1)
        {
          segPumpCreateDiscoInfoList();
          if (DataCallbackWithOSStatus)
          {
            return DataCallbackWithOSStatus;
          }

          for (i = *(v11 + 336); i; i = *i)
          {
            AllocatorForMedia = FigGetAllocatorForMedia();
            v222 = CFDateCreate(AllocatorForMedia, i[2]);
            if (v222)
            {
              CFRelease(v222);
            }
          }
        }
      }
    }
  }

  v229 = a5;
  v230 = a6;
  v24 = a10;
  v23 = a11;
  *(v11 + 863) = 0;
  v25 = *v11;
  v228 = a11;
  cf = a7;
  if (*(v12 + 8432))
  {
    v26 = v12 + 40 * v25 + 8440;
    v27 = *(v11 + 56);
    if (v27)
    {
      for (j = 0; ; ++j)
      {
        Count = FigMediaPlaylistGetMediaSegmentSpecifiers(v27);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (j >= Count)
        {
          break;
        }

        v30 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v11 + 56));
        ValueAtIndex = CFArrayGetValueAtIndex(v30, j);
        MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex);
        MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(ValueAtIndex);
        if (!*(MediaFilePrivateData + 73))
        {
          v36 = MediaSequence;
          v34 = a10;
          if (*(MediaFilePrivateData + 74))
          {
            v35 = MediaFilePrivateData[7];
          }

          else
          {
            v35 = 0;
          }

          PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(ValueAtIndex);
          v37 = -1;
          do
          {
            if (PartialSegments)
            {
              v85 = CFArrayGetCount(PartialSegments);
            }

            else
            {
              v85 = 0;
            }

            if (v37 + 1 >= v85)
            {
              break;
            }

            v86 = CFArrayGetValueAtIndex(PartialSegments, ++v37);
          }

          while (*(segPumpGetMediaFilePrivateData(v86) + 73));
          if (ValueAtIndex)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        v27 = *(v11 + 56);
      }
    }

    v34 = a10;
    v35 = 0;
LABEL_23:
    v36 = *(v11 + 376) + 1;
    v37 = -1;
LABEL_24:
    if (FigCFEqual() && *(v26 + 32) && v36 == *v26)
    {
      v38 = *(v26 + 16);
      if (v35 > v38)
      {
        v38 = v35;
      }

      *(v26 + 16) = v38;
    }

    else
    {
      *(v26 + 16) = v35;
    }

    v24 = v34;
    if ((v36 & 0x8000000000000000) == 0)
    {
      *v26 = v36;
    }

    v39 = *(v26 + 32);
    v40 = *(v12 + 8432);
    *(v26 + 32) = v40;
    if (v40)
    {
      CFRetain(v40);
    }

    if (v39)
    {
      CFRelease(v39);
    }

    *(v26 + 8) = v37;
    *(v26 + 24) = 1;
    v25 = *v11;
    v23 = a11;
  }

  v41 = v12 + 392;
  v42 = *(v12 + 392 + 16 * v25 + 8);
  *(v11 + 864) = v42 == v11;
  if (!v232 && (*(v23 + 12) & 1) != 0 || v42 == v11)
  {
    if ((*(v24 + 12) & 1) != 0 && (v53 = *(v18 + 56)) != 0 && (v54 = FigMediaPlaylistGetMediaSegmentSpecifiers(v53), v23 = a11, v54) && (v55 = CFArrayGetCount(v54), v23 = a11, v55 >= 1))
    {
      if (*(v11 + 864))
      {
        if (*(a11 + 12))
        {
          v57 = 1;
        }

        else
        {
          v56 = MEMORY[0x1E6960CC0];
          *a11 = *MEMORY[0x1E6960CC0];
          *(a11 + 2) = *(v56 + 16);
          OUTLINED_FUNCTION_335_0();
        }

        if (v232 && v57)
        {
          v148 = OUTLINED_FUNCTION_341_1();
          segPumpStreamCancelPreloadReadAndResetData(v148, v149);
        }
      }

      OUTLINED_FUNCTION_417_1();
      valuePtr = *v150;
      OUTLINED_FUNCTION_378_1();
      v152 = v151;
      CMTimeAdd(v155, v153, v154);
      v156 = CMTimeGetSeconds(&time) - *(v18 + 88);
      v157 = (v11 + 920);
      DataCallbackWithOSStatus = segPumpGetLastDiscAndDateForTimeReadInPlaylist(*(v18 + 56), &v236, (v11 + 920), v156);
      if (DataCallbackWithOSStatus)
      {
        return DataCallbackWithOSStatus;
      }

      OUTLINED_FUNCTION_417_1();
      valuePtr = *v152;
      OUTLINED_FUNCTION_378_1();
      CMTimeAdd(v160, v158, v159);
      v161 = CMTimeGetSeconds(&time) - *(v18 + 88);
      v162 = *&v236;
      v163 = *v157;
      if (v161 >= *&v236)
      {
        v162 = v156;
        v23 = a11;
      }

      else
      {
        if (v163 != 0.0)
        {
          v163 = v161 - *&v236 + v163;
          *v157 = v163;
        }

        v23 = a11;
      }

      v164 = *(v18 + 96) - v162;
      *(v11 + 904) = v164;
      *(v11 + 912) = v162;
      *(v11 + 928) = v162 + *(v11 + 88);
      if (v163 != 0.0)
      {
        segPumpGetLastKnownContinuousDateInPlaylist(*(v11 + 56), (v11 + 936), v163);
        v23 = a11;
        v164 = *(v11 + 904);
      }

      if (v164 < 0.0)
      {
        *(v11 + 904) = 0;
      }
    }

    else
    {
      v58 = *(v18 + 120);
      if (v58 > 0.0)
      {
        *(v11 + 120) = v58;
      }
    }

    *(v11 + 896) = *(v18 + 1064);
    time = *v23;
    v59 = CMTimeGetSeconds(&time) * 1000000000.0;
    *(v11 + 888) = (v59 + FigGetUpTimeNanoseconds());
    *(v11 + 861) = 1;
    if (dword_1EAF16A30)
    {
      OUTLINED_FUNCTION_153_0();
      v60 = OUTLINED_FUNCTION_107_0();
      v68 = OUTLINED_FUNCTION_433_1(v60, v61, v62, v63, v64, v65, v66, v67, v223, *(&v223 + 1), v224, v225, v226, v227, a11, v229, v230, cf, v232, type, BYTE4(type), valuePtr);
      if (OUTLINED_FUNCTION_71_0(v68))
      {
        OUTLINED_FUNCTION_76_1();
        OUTLINED_FUNCTION_318_1();
        *&v238[8] = 2114;
        OUTLINED_FUNCTION_6_1();
        *v240 = 1024;
        OUTLINED_FUNCTION_300_0();
        OUTLINED_FUNCTION_145();
LABEL_57:
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl();
      }

LABEL_99:
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_449();
    }
  }

  else
  {
    if (*(v11 + 1185))
    {
      if (dword_1EAF16A30)
      {
        OUTLINED_FUNCTION_153_0();
        v43 = OUTLINED_FUNCTION_107_0();
        v51 = OUTLINED_FUNCTION_161_1(v43, v44, v45, v46, v47, v48, v49, v50, v223, *(&v223 + 1), v224, v225, v226, v227, a11, v229, v230, cf, v232, type, BYTE4(type), valuePtr);
        if (OUTLINED_FUNCTION_28_1(v51))
        {
          OUTLINED_FUNCTION_76_1();
          v237 = 136315906;
          *v238 = "segPumpSetAlternateForStream";
          *&v238[8] = 2114;
          OUTLINED_FUNCTION_6_1();
          *v240 = 1024;
          *&v240[2] = v52;
          OUTLINED_FUNCTION_145();
          OUTLINED_FUNCTION_38();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417();
      }

      goto LABEL_100;
    }

    if (*(v12 + 8408))
    {
      if (*(v12 + 8328))
      {
        v69 = FigCFEqual();
        if (!v232)
        {
          if (v69)
          {
            OUTLINED_FUNCTION_419_1();
            CFNumberGetValue(*(v12 + 8416), kCFNumberDoubleType, &valuePtr);
            *(v11 + 120) = *&valuePtr - *(v11 + 88);
            if (!dword_1EAF16A30)
            {
              goto LABEL_100;
            }

            OUTLINED_FUNCTION_201_1();
            v70 = OUTLINED_FUNCTION_141_1();
            v71 = os_log_type_enabled(v70, BYTE3(type));
            if (OUTLINED_FUNCTION_28_1(v71))
            {
              OUTLINED_FUNCTION_76_1();
              OUTLINED_FUNCTION_318_1();
              *&v238[8] = 2114;
              OUTLINED_FUNCTION_6_1();
              *v240 = 1024;
              OUTLINED_FUNCTION_300_0();
              *&v240[26] = v72;
              *&v240[28] = v73;
              OUTLINED_FUNCTION_145();
              OUTLINED_FUNCTION_38();
              _os_log_send_and_compose_impl();
            }

LABEL_215:
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_417();
            goto LABEL_100;
          }
        }
      }
    }

    if (*(v18 + 401) || (v87 = *(v18 + 696)) != 0 && (v88 = *(v87 + 8)) != 0 && FigMediaSegmentSpecifierGetType(v88) == 1) && (*(v24 + 12))
    {
      OUTLINED_FUNCTION_419_1();
      OUTLINED_FUNCTION_196_1();
      Seconds = CMTimeGetSeconds(&time);
      v75 = Seconds - *(v18 + 88);
      v76 = *(a11 + 3);
      if (v76)
      {
        OUTLINED_FUNCTION_305_1();
        v78 = v77;
        Seconds = CMTimeGetSeconds(v79);
        v75 = v75 + Seconds;
        v76 = *(v78 + 12);
      }

      v80 = &off_196E72000;
      if ((v76 & 1) == 0 && *v11 && !*v18)
      {
        v169 = 0.0;
LABEL_190:
        segPumpGetLastDiscAndDateForTimeReadInPlaylist(*(v18 + 56), &v236, &valuePtr, v75);
        v170 = *(v11 + 88);
        if (v75 <= v169)
        {
          v171 = *&v236;
          v174 = *&v236 + v170;
          *(v11 + 120) = *&v236;
          *(v11 + 928) = v174;
        }

        else
        {
          v171 = v75 - v169;
          v172 = v75 - v169 + v170;
          v173 = *&v236;
          *(v11 + 120) = v75 - v169;
          *(v11 + 928) = v172;
          if (v75 - v169 < v173)
          {
            *(v11 + 120) = v173;
            v171 = v173;
          }
        }

        if (*&valuePtr != 0.0)
        {
          v175 = *&valuePtr + v171 - v75;
          *(v11 + 920) = v175;
          segPumpGetLastKnownContinuousDateInPlaylist(*(v18 + 56), (v11 + 936), v175);
        }

        v232 = v24;
        v176 = dword_1EAF16A30;
        if (dword_1EAF16A30)
        {
          OUTLINED_FUNCTION_201_1();
          v177 = OUTLINED_FUNCTION_141_1();
          v185 = OUTLINED_FUNCTION_435_1(v177, v178, v179, v180, v181, v182, v183, v184, v223, *(&v223 + 1), v224, v225, v226, v227, a11, v229, v230, cf, v24, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
          if (OUTLINED_FUNCTION_71_0(v185))
          {
            OUTLINED_FUNCTION_76_1();
            v237 = 136316674;
            *v238 = "segPumpSetAlternateForStream";
            *&v238[8] = 2114;
            OUTLINED_FUNCTION_6_1();
            *v240 = v186;
            *&v240[2] = v75;
            *&v240[10] = v186;
            *&v240[12] = v187;
            *&v240[20] = v186;
            *&v240[22] = v169;
            *&v240[30] = v186;
            *&v240[32] = v188;
            OUTLINED_FUNCTION_145();
            OUTLINED_FUNCTION_38();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_449();
          v176 = dword_1EAF16A30;
          if (dword_1EAF16A30 >= 2)
          {
            OUTLINED_FUNCTION_201_1();
            v189 = OUTLINED_FUNCTION_141_1();
            if (os_log_type_enabled(v189, BYTE3(type)))
            {
              v190 = HIDWORD(type);
            }

            else
            {
              v190 = HIDWORD(type) & 0xFFFFFFFE;
            }

            if (v190)
            {
              OUTLINED_FUNCTION_76_1();
              if (v192)
              {
                v193 = &stru_1F0B1AFB8;
              }

              else
              {
                v193 = v191;
              }

              v194 = *v11;
              time = *v232;
              v195 = CMTimeGetSeconds(&time);
              v237 = 136316162;
              *v238 = "segPumpSetAlternateForStream";
              *&v238[8] = 2114;
              *&v238[10] = v193;
              *&v238[18] = 2048;
              v239 = v194;
              *v240 = 2048;
              *&v240[2] = v195;
              *&v240[10] = 2048;
              *&v240[12] = v236;
              OUTLINED_FUNCTION_145();
              OUTLINED_FUNCTION_38();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_454();
            v176 = dword_1EAF16A30;
            v80 = &off_196E72000;
          }
        }

        *(v11 + 128) = *(v18 + 1064) / v80[154] - (*(v18 + 96) - *(v11 + 120));
        if (v176)
        {
          OUTLINED_FUNCTION_201_1();
          v209 = OUTLINED_FUNCTION_141_1();
          v217 = OUTLINED_FUNCTION_435_1(v209, v210, v211, v212, v213, v214, v215, v216, v223, *(&v223 + 1), v224, v225, v226, v227, v228, v229, v230, cf, v232, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
          if (OUTLINED_FUNCTION_71_0(v217))
          {
            OUTLINED_FUNCTION_76_1();
            OUTLINED_FUNCTION_318_1();
            *&v238[8] = 2114;
            OUTLINED_FUNCTION_6_1();
            OUTLINED_FUNCTION_228_0();
            OUTLINED_FUNCTION_366_1();
            *&v240[30] = v218;
            *&v240[32] = v219;
            OUTLINED_FUNCTION_145();
            OUTLINED_FUNCTION_38();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_449();
        }

        goto LABEL_100;
      }

      v81 = *(v11 + 56);
      if (v81)
      {
        v82 = FigMediaPlaylistGetMediaSegmentSpecifiers(v81);
        if (v82)
        {
          v83 = CFArrayGetCount(v82);
        }

        else
        {
          v83 = 0;
        }

        v165 = *(v11 + 56);
        if (v165)
        {
          v166 = FigMediaPlaylistGetDateStampCount(v165) > 0;
LABEL_179:
          if (*(v12 + 8224) && *(v12 + 24) == 2 || v166)
          {
            v168 = FigRCLGetNumberWithDefault(*(v12 + 9320), @"allowEpsilonHLSSegmentOverlap");
            v167 = 1.0;
            if (v168 && v83 >= 1)
            {
              v167 = vcvtd_n_f64_u64(v83, 0x34uLL);
            }
          }

          else
          {
            LODWORD(Seconds) = *(v12 + 8);
            v167 = *&Seconds;
          }

          if (*(v11 + 872))
          {
            v169 = v167;
          }

          else
          {
            v169 = v167 + 1.0;
          }

          v80 = &off_196E72000;
          goto LABEL_190;
        }
      }

      else
      {
        v83 = 0;
      }

      v166 = 0;
      goto LABEL_179;
    }

    v89 = *(v18 + 120);
    if (v89 > 0.0)
    {
      *(v11 + 120) = v89;
      if (!dword_1EAF16A30)
      {
        goto LABEL_100;
      }

      OUTLINED_FUNCTION_153_0();
      v90 = OUTLINED_FUNCTION_107_0();
      v98 = OUTLINED_FUNCTION_161_1(v90, v91, v92, v93, v94, v95, v96, v97, v223, *(&v223 + 1), v224, v225, v226, v227, a11, v229, v230, cf, v232, type, BYTE4(type), valuePtr);
      if (!OUTLINED_FUNCTION_28_1(v98))
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_76_1();
      OUTLINED_FUNCTION_373_1();
      v237 = 136315906;
      *v238 = "segPumpSetAlternateForStream";
      *&v238[8] = 2114;
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_228_0();
      OUTLINED_FUNCTION_145();
LABEL_94:
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
      goto LABEL_215;
    }

    if (*(v18 + 861))
    {
      *(v11 + 120) = *(v18 + 96) - *(v18 + 904);
      if (!dword_1EAF16A30)
      {
        goto LABEL_100;
      }

      OUTLINED_FUNCTION_153_0();
      v99 = OUTLINED_FUNCTION_107_0();
      v107 = OUTLINED_FUNCTION_433_1(v99, v100, v101, v102, v103, v104, v105, v106, v223, *(&v223 + 1), v224, v225, v226, v227, a11, v229, v230, cf, v232, type, BYTE4(type), valuePtr);
      if (OUTLINED_FUNCTION_71_0(v107))
      {
        OUTLINED_FUNCTION_76_1();
        OUTLINED_FUNCTION_373_1();
        OUTLINED_FUNCTION_318_1();
        *&v238[8] = 2114;
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_228_0();
        OUTLINED_FUNCTION_366_1();
        OUTLINED_FUNCTION_145();
        goto LABEL_57;
      }

      goto LABEL_99;
    }

    if ((*(v24 + 12) & 1) == 0)
    {
      *(v11 + 866) = 1;
      if (!dword_1EAF16A30)
      {
        goto LABEL_100;
      }

      OUTLINED_FUNCTION_153_0();
      v138 = OUTLINED_FUNCTION_107_0();
      v146 = OUTLINED_FUNCTION_161_1(v138, v139, v140, v141, v142, v143, v144, v145, v223, *(&v223 + 1), v224, v225, v226, v227, a11, v229, v230, cf, v232, type, BYTE4(type), valuePtr);
      if (!OUTLINED_FUNCTION_28_1(v146))
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_76_1();
      OUTLINED_FUNCTION_318_1();
      OUTLINED_FUNCTION_4_1();
      goto LABEL_94;
    }

    OUTLINED_FUNCTION_196_1();
    v196 = CMTimeGetSeconds(&time);
    LODWORD(v197) = *(v12 + 8);
    v198 = v196 - v197 + -1.0;
    *(v11 + 120) = v198;
    if (*(a11 + 12))
    {
      OUTLINED_FUNCTION_305_1();
      v198 = CMTimeGetSeconds(v199) + *(v11 + 120);
      *(v11 + 120) = v198;
    }

    if (v198 < 0.0)
    {
      *(v11 + 120) = 0;
    }

    if (dword_1EAF16A30)
    {
      OUTLINED_FUNCTION_153_0();
      v200 = OUTLINED_FUNCTION_107_0();
      v208 = OUTLINED_FUNCTION_161_1(v200, v201, v202, v203, v204, v205, v206, v207, v223, *(&v223 + 1), v224, v225, v226, v227, a11, v229, v230, cf, v232, type, BYTE4(type), valuePtr);
      if (!OUTLINED_FUNCTION_28_1(v208))
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_76_1();
      OUTLINED_FUNCTION_373_1();
      v237 = 136315906;
      *v238 = "segPumpSetAlternateForStream";
      *&v238[8] = 2114;
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_228_0();
      OUTLINED_FUNCTION_145();
      goto LABEL_94;
    }
  }

LABEL_100:
  if (*(v11 + 857))
  {
    if (*(v12 + 8600) == *v11)
    {
      v108 = *(v12 + 8864);
      *(v12 + 8864) = 0;
    }

    else
    {
      v108 = 0;
    }

    *(v11 + 857) = 0;
    DataCallbackWithOSStatus = segPumpMakeDataCallbackWithOSStatus(v227, v11, *(v12 + 176), 0, 8u, *(v11 + 304), MEMORY[0x1E6960C70], 0, v108, 0, 0, 0);
    if (DataCallbackWithOSStatus)
    {
      return DataCallbackWithOSStatus;
    }
  }

  OUTLINED_FUNCTION_191_1();
  ++*(v11 + 80);
  *(v11 + 858) = 0;
  *(v11 + 401) = 0;
  *(v11 + 874) = 0;
  *(v11 + 876) = 0;
  *(v11 + 1096) = 0u;
  if (!*(v12 + 8896))
  {
    *(v11 + 402) = 1;
  }

  *(v11 + 64) = 0;
  *(v11 + 312) = 0;
  ++*(v11 + 1176);
  v110 = *(v12 + 8328);
  if (v110)
  {
    PathwayID = FigAlternateGetPathwayID(*(v110 + 8));
  }

  else
  {
    PathwayID = @".";
  }

  segPumpStreamUpdateIndexFile(v11, v229, v229, v230, cf, PathwayID);
  time.value = 0;
  v117 = *(v11 + 248);
  if (!v117)
  {
LABEL_132:
    v125 = OUTLINED_FUNCTION_177();
    DataCallbackWithOSStatus = segPumpStopStream(v125, v126, v127);
    if (DataCallbackWithOSStatus)
    {
      return DataCallbackWithOSStatus;
    }

    if (!*(v11 + 1200))
    {
      v132 = nw_activity_create();
      *(v11 + 1200) = v132;
      if (!v132 || !*(*(v41 + 16 * *v11) + 1192))
      {
        goto LABEL_230;
      }

      nw_activity_set_parent_activity();
      if (*(v11 + 1200))
      {
        nw_activity_activate();
      }

      if (*(v41 + 16 * *v11 + 8) != v11)
      {
        goto LABEL_143;
      }

      v133 = nw_activity_create();
      *(v11 + 1208) = v133;
      if (v133)
      {
        if (!*(v11 + 1200) || (nw_activity_set_parent_activity(), *(v11 + 1208)))
        {
          nw_activity_activate();
        }
      }

      else
      {
LABEL_230:
        OUTLINED_FUNCTION_43_1();
        FigSignalErrorAtGM();
      }
    }

LABEL_143:
    *(v11 + 862) = 1;
    if (*(v12 + 8600) == *v11 && !*(v11 + 864))
    {
      *(v12 + 8221) = 0;
      *(v12 + 384) = 1;
    }

    *(v12 + 8222) = 0;
    *(v11 + 64) = 0;
    if (*(v11 + 1185))
    {
      goto LABEL_147;
    }

    segPumpRequestIndexForStream(v227, v12, v11, 0, v128, v129, v130, v131, v223, *(&v223 + 1), v224, v225, SBYTE2(v225), BYTE3(v225), SHIDWORD(v225), v226, v227, SWORD2(v227), SBYTE6(v227), SHIBYTE(v227), v228, v229, v230, cf, v232, type, valuePtr, *(&valuePtr + 1), v235, v236, v237, *&v238[4], *&v238[12], v239, *v240, *&v240[8], *&v240[16], *&v240[24], *&v240[32], v241, time.value, *&time.timescale, time.epoch, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261);
    if (!DataCallbackWithOSStatus)
    {
      if (!*(v12 + 8328))
      {
        OUTLINED_FUNCTION_43_1();
        v124 = FigSignalErrorAtGM();
        goto LABEL_148;
      }

LABEL_147:
      v124 = 0;
LABEL_148:
      OUTLINED_FUNCTION_196_1();
      v134 = OUTLINED_FUNCTION_177();
      segPumpCalculateStreamDurationAndBytesCached(v134, v135, v136);
      return v124;
    }

    return DataCallbackWithOSStatus;
  }

  if (!*(v12 + 8868))
  {
    if (FigContentKeySpecifierGetIsPrefetchKey(v117))
    {
      goto LABEL_128;
    }

    v117 = *(v11 + 248);
  }

  segPumpGetCryptKeyCommonData(v117, 0, &time, v112, v113, v114, v115, v116, v223, v224, v225, v226, v227, v228, v229, v230, cf);
  if (v118)
  {
    goto LABEL_127;
  }

  if (FigContentKeySpecifierGetKeySystem(*(v11 + 248)) != 1)
  {
    goto LABEL_128;
  }

  value = time.value;
  if (!*(time.value + 96) || !*(time.value + 72))
  {
    goto LABEL_122;
  }

  v120 = *(CMBaseObjectGetVTable() + 16);
  if (*v120 >= 6uLL && v120[20])
  {
    OUTLINED_FUNCTION_197();
    v118 = v121();
    if (!v118)
    {
      value = time.value;
LABEL_122:
      if (!*(value + 136))
      {
        v124 = 0;
LABEL_159:
        CryptKeyReleaseAndClearVideoDecryptor(value);
        CryptKeyReleaseAndClearAudioDecryptor(value);
        v147 = OUTLINED_FUNCTION_177();
        segPumpCancelCryptReadAndResetData(v147);
        if (v124)
        {
          return v124;
        }

        goto LABEL_132;
      }

      if (*(value + 112))
      {
        v122 = *(CMBaseObjectGetVTable() + 16);
        if (*v122 >= 6uLL && v122[20])
        {
          OUTLINED_FUNCTION_197();
          v118 = v123();
          goto LABEL_127;
        }

        goto LABEL_129;
      }

LABEL_128:
      v124 = 0;
      goto LABEL_130;
    }

LABEL_127:
    v124 = v118;
    goto LABEL_130;
  }

LABEL_129:
  v124 = 4294954514;
LABEL_130:
  value = time.value;
  if (time.value)
  {
    goto LABEL_159;
  }

  if (!v124)
  {
    goto LABEL_132;
  }

  return v124;
}

void segPumpRequestIndexForStream(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15, CFTypeRef a16, int a17, __int16 a18, char a19, char a20, CFTypeRef a21, CFTypeRef a22, const __CFDictionary *a23, CFTypeRef cf, int a25, uint64_t a26, __int16 a27, uint64_t a28, __int16 a29, uint64_t a30, __int16 a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_416();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_411_1();
  *(v65 + 538) = 0;
  if (!v66)
  {
    if (*(v62 + 296))
    {
      OUTLINED_FUNCTION_171();
      if (segPumpEnsureDiskBackedCacheForStreamPossiblyEndingStream() || *(v63 + 1152))
      {
        goto LABEL_28;
      }
    }
  }

  OUTLINED_FUNCTION_298();
  segPumpCopyIndexFileFromCache();
  if (v67)
  {
    goto LABEL_28;
  }

  v68 = *(v62 + 312);
  if (!v68)
  {
LABEL_38:
    v89 = !*(v62 + 8624) || (v88 = *(v62 + 8632)) == 0 || FigNetworkPathInformationIsHostReachable(v88, 1) != 0;
    v90 = cf;
    if (v89 && cf)
    {
      if (!a23)
      {
        goto LABEL_48;
      }

      v91 = *MEMORY[0x1E695E4D0];
      Value = CFDictionaryGetValue(a23, @"must-validate");
      v90 = cf;
      if (v91 == Value)
      {
        CFRelease(cf);
        cf = 0;
        v71 = 0;
        *(v63 + 538) = 1;
        goto LABEL_16;
      }
    }

    if (!v90)
    {
LABEL_14:
      v71 = 0;
      goto LABEL_16;
    }

LABEL_48:
    if (dword_1EAF16A30)
    {
      OUTLINED_FUNCTION_10_1();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v94 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
      if (OUTLINED_FUNCTION_115_1(v94))
      {
        OUTLINED_FUNCTION_253_1();
        OUTLINED_FUNCTION_37_0();
        OUTLINED_FUNCTION_146();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_448();
        OUTLINED_FUNCTION_612();
      }

      OUTLINED_FUNCTION_109();
      v71 = 1;
      OUTLINED_FUNCTION_108_1();
    }

    else
    {
      v71 = 1;
    }

    goto LABEL_16;
  }

  if (cf)
  {
    CFRelease(v68);
    *(v62 + 312) = 0;
    goto LABEL_38;
  }

  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_496();
  if (FigCreateBlockBufferWithCFDataNoCopy())
  {
    goto LABEL_28;
  }

  if (dword_1EAF16A30)
  {
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_407_0();
    v69 = OUTLINED_FUNCTION_126();
    os_log_type_enabled(v69, type);
    OUTLINED_FUNCTION_46();
    if (v64)
    {
      CFDataGetLength(*(v62 + 312));
      OUTLINED_FUNCTION_146();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_448();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  v70 = *(v62 + 312);
  if (!v70)
  {
    goto LABEL_14;
  }

  CFRelease(v70);
  v71 = 0;
  *(v62 + 312) = 0;
LABEL_16:
  if (cf)
  {
    *(v63 + 1056) = FigGetUpTimeNanoseconds();
    if (*(v63 + 424))
    {
      FigGetAllocatorForMedia();
      if (*(*(OUTLINED_FUNCTION_356_1() + 8) + 48))
      {
        v74 = OUTLINED_FUNCTION_406();
        v75(v74);
      }

      FigGetAllocatorForMedia();
      if (*(*(OUTLINED_FUNCTION_356_1() + 8) + 48))
      {
        v76 = OUTLINED_FUNCTION_406();
        v77(v76);
      }
    }

    v78 = *(v63 + 520);
    *(v63 + 520) = cf;
    CFRetain(cf);
    if (v78)
    {
      CFRelease(v78);
    }

    OUTLINED_FUNCTION_235();
    OUTLINED_FUNCTION_408_0();
    segPumpParseIndexFile();
    v80 = v79;
    v81 = OUTLINED_FUNCTION_236();
    segPumpPublishPlaylistRequestEvent(v81, v82, v83, v84, v85, v86, v87, v71);
    if (v80)
    {
      segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(*v62, v80);
    }
  }

  else
  {
    v72 = OUTLINED_FUNCTION_298();
    segPumpSendIndexFileRequest(v72, v73, 1);
  }

LABEL_28:
  if (a21)
  {
    CFRelease(a21);
  }

  if (a23)
  {
    CFRelease(a23);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a22)
  {
    CFRelease(a22);
  }

  OUTLINED_FUNCTION_372();
}

void segPumpSetupInitialCryptorApplierFunction()
{
  OUTLINED_FUNCTION_845();
  v4 = v3;
  v5 = *v3;
  LODWORD(v6) = *(v3 + 8);
  if (!v6)
  {
    v7 = v2;
    v8 = v1;
    TypeID = CFStringGetTypeID();
    if (TypeID != CFGetTypeID(v8))
    {
      goto LABEL_15;
    }

    v10 = CFDictionaryGetTypeID();
    if (v10 != CFGetTypeID(v7))
    {
      goto LABEL_15;
    }

    Value = CFDictionaryGetValue(v7, @"FPBCPECryptorsKey_Video");
    v12 = CFDictionaryGetValue(v7, @"FPBCPECryptorsKey_Audio");
    if (!Value)
    {
      LODWORD(v6) = 0;
      goto LABEL_14;
    }

    v6 = v12;
    FigCPECryptorGetTypeID();
    v13 = OUTLINED_FUNCTION_230_1();
    if (v0 != CFGetTypeID(v13) || !FigCFDictionaryGetInt32IfPresent() || !FigCFDictionaryGetInt32IfPresent() || (CryptKeyCommonData = segPumpCreateCryptKeyCommonData(v5)) == 0)
    {
LABEL_15:
      OUTLINED_FUNCTION_303();
      LODWORD(v6) = FigSignalErrorAtGM();
      goto LABEL_14;
    }

    v15 = CryptKeyCommonData;
    CryptKeyCommonData[2] = CFRetain(v8);
    *(v15 + 6) = 0;
    *(v15 + 7) = 0;
    *(v15 + 155) = 1;
    v15[9] = CFRetain(Value);
    *(v15 + 152) = 1;
    if (v6)
    {
      v16 = FigCPECryptorGetTypeID();
      if (v16 == CFGetTypeID(v6))
      {
        v17 = CFRetain(v6);
        LODWORD(v6) = 0;
        v15[14] = v17;
      }

      else
      {
        OUTLINED_FUNCTION_303();
        LODWORD(v6) = FigSignalErrorAtGM();
      }
    }

    CFRelease(v15);
  }

LABEL_14:
  *(v4 + 8) = v6;
  OUTLINED_FUNCTION_843();
}

uint64_t FigBytePumpCreateForHTTPChunk_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

const __CFDictionary *FigBytePumpCreateForHTTPChunk_cold_2()
{
  OUTLINED_FUNCTION_257_0();
  result = CFRetain(v2);
  *(v0 + 240) = result;
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"FHRP_InterfaceName");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(v0 + 9064) = Value;
    v5 = CFDictionaryGetValue(*(v0 + 240), @"FHRP_ClientAuditToken");
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    *(v0 + 9072) = v5;
    *(v0 + 9080) = FigCFHTTPCopyClientProcessName(v5);
    v6 = CFDictionaryGetValue(*(v0 + 240), @"FHRP_StorageSession");
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    *(v0 + 32) = v6;
    result = FigCFDictionaryGetBooleanIfPresent();
    *(v0 + 9833) = *v1 == 0;
  }

  return result;
}

uint64_t FigBytePumpCreateForHTTPChunk_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetHTTPRequestOptionsValue_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpCopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpCopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpCopyProperty_cold_3()
{
  OUTLINED_FUNCTION_471();
  valuePtr = FigAlternateGetPeakBitRate(*(v2 + 8));
  if (valuePtr)
  {
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    result = 0;
    *v1 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_239();
    result = FigSignalErrorAtGM();
  }

  *v0 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_15(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_16(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_17(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_18(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_19(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_20(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_21(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetProperty_cold_22()
{
  OUTLINED_FUNCTION_369();
  result = FigCFEqual();
  if (!result)
  {
    v3 = v0[33];
    v0[33] = v1;
    CFRetain(v1);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = v0[34];
    if (v4)
    {
      CFRelease(v4);
      v0[34] = 0;
    }

    v5 = v0[35];
    if (v5)
    {
      CFRelease(v5);
      v0[35] = 0;
    }

    return segPumpEnsureAndSetupBasicAESProtector(v0);
  }

  return result;
}

void segPumpSetProperty_cold_23(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E695E4D0] == a1;
  *(a2 + 8211) = v2;
  while (!v2)
  {
    v4 = *(a2 + 392);
    if (*(v4 + 16))
    {
      if (*(v4 + 1185))
      {
        OUTLINED_FUNCTION_298();
        segPumpReadOrScheduleIndexFileRead();
        *(v4 + 1185) = 0;
      }
    }

    OUTLINED_FUNCTION_383_0();
  }
}

uint64_t segPumpSetProperty_cold_24(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 9656);
  *(a1 + 9656) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return segPumpRTCReportingUpdatePumpClientName(a1);
}

void segPumpSetProperty_cold_25(uint64_t a1)
{
  if (*(a1 + 8616))
  {
    v3 = *(a1 + 8624);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 8624) = 0;
    }

    AttemptNetworkMonitorSetup(a1);
  }
}

NSObject *segPumpSetProperty_cold_26()
{
  OUTLINED_FUNCTION_369();
  FigHTTPSchedulerRelease(*(v2 + 64));
  *(v0 + 64) = FigHTTPSchedulerRetain(v1);
  FigHTTPSchedulerRelease(*(v0 + 72));
  result = FigHTTPSchedulerRetain(v1);
  *(v0 + 72) = result;
  if (*(v0 + 9728))
  {
    result = *(v0 + 9736);
    if (result)
    {
      FigHTTPSchedulerRelease(result);
      result = FigHTTPSchedulerRetain(v1);
      *(v0 + 9736) = result;
    }
  }

  return result;
}

double segPumpSetProperty_cold_27(const __CFDictionary *a1, uint64_t a2)
{
  memset(&v6, 0, sizeof(v6));
  CMTimeMakeFromDictionary(&v6, a1);
  OUTLINED_FUNCTION_29();
  if (v4)
  {
    time = v6;
    Seconds = CMTimeGetSeconds(&time);
    return segPumpSetExtraHoldbackFromClient(a2, Seconds);
  }

  return result;
}

const __CFNumber *segPumpSetProperty_cold_28(const __CFNumber *result, uint64_t a2)
{
  *(a2 + 8362) = result != 0;
  if (result)
  {
    return CFNumberGetValue(result, kCFNumberSInt64Type, (a2 + 8368));
  }

  return result;
}

uint64_t segPumpSentEndCallbackForAnyStream_cold_1()
{
  v0 = OUTLINED_FUNCTION_90_0(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("segPumpSentEndCallbackForAnyStream");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t segPumpSentEndCallbackForAnyStreamHandleTTR_cold_1()
{
  v0 = OUTLINED_FUNCTION_90_0(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("segPumpSentEndCallbackForAnyStreamHandleTTR");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t segPumpSentEndCallbackForAnyStreamHandleTTR_cold_2()
{
  v0 = OUTLINED_FUNCTION_90_0(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_21_0("segPumpSentEndCallbackForAnyStreamHandleTTR");
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t segPumpCreateCPECryptorsSessionCryptKeysDict_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpCreateCPECryptorsSessionCryptKeysDict_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpCreateCPECryptorsSessionCryptKeysDict_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpCopyAlternatesInPenaltyBox_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpCopyAlternatesInPenaltyBox_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpCopySessionKeys_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpCreateFigAlternatesArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpCreateFigAlternatesArray_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpCreateURLAndString_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpCreateURLWithQueryParams_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpCreateURLWithQueryParams_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpCreateURLWithQueryParams_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpAmendHTTPRequestFlags_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void segPumpCopyHTTPRequestCreationsOptionsAndSetNWActivityAndStuff_cold_1(_BYTE *a1)
{
  FigSignalErrorAtGM();
  OUTLINED_FUNCTION_786();
  *a1 = v2;
}

void segPumpCopyParentNWActivity_cold_1()
{
  OUTLINED_FUNCTION_187();
  *v0 = FigSignalErrorAtGM();

  CFRelease(v1);
}

uint64_t segPumpCopyParentNWActivity_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpCopyParentNWActivity_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpCopyParentNWActivity_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void segPumpSetWiFiStatsOnNetworkPredictor_cold_1()
{
  OUTLINED_FUNCTION_187();
  cf = 0;
  v2 = FigNetworkWirelessReportingInterfaceCopyWifiStats(&cf);
  *v0 = v2;
  if (!v2)
  {
    StringValue = FigCFDictionaryGetStringValue();
    if (StringValue)
    {
      v4 = CFRetain(StringValue);
    }

    else
    {
      v4 = 0;
    }

    if (FigCFDictionaryGetNumberValue() && *(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v5 = OUTLINED_FUNCTION_188();
      v6(v5);
    }

    if (v4)
    {
      v7 = *v1;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v8)
      {
        v8(v7, 0x1F0B63618, v4);
      }

      CFRelease(v4);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t segPumpSetWiFiStatsOnNetworkPredictor_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpMoveAlternatesMatchingHostAndPathwayToPenaltyBox_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpMoveAlternatesMatchingHostAndPathwayToPenaltyBox_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpMoveAlternatesMatchingHostAndPathwayToPenaltyBox_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void segPumpMoveStreamAlternateToPenaltyBox_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_323_1();
  OUTLINED_FUNCTION_613();
  OUTLINED_FUNCTION_214_1(v2, v3, v4, -12880, v5, v6, v7, v8, v9, SHIDWORD(v9));
  StopAllActiveStreams(a1);
}

void MoveAlternateFromValidList_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_323_1();
  OUTLINED_FUNCTION_613();
  OUTLINED_FUNCTION_214_1(v3, v4, v5, v6, v7, v8, v9, v10, v11, SHIDWORD(v11));

  StopAllActiveStreams(a2);
}

uint64_t segPumpRestartStreamReads_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void segPumpHandleLowLatencySetupError_cold_1()
{
  OUTLINED_FUNCTION_67_1();
  v2 = OUTLINED_FUNCTION_48_0(v0, v1);
  OUTLINED_FUNCTION_214_1(v2, v3, v4, -15418, v5, v6, v7, v8, v9, SHIDWORD(v9));
}

void segPumpHandleLowLatencySetupError_cold_2()
{
  OUTLINED_FUNCTION_67_1();
  v2 = OUTLINED_FUNCTION_48_0(v0, v1);
  OUTLINED_FUNCTION_214_1(v2, v3, v4, -15417, v5, v6, v7, v8, v9, SHIDWORD(v9));
}

void segPumpHandleLowLatencySetupError_cold_3()
{
  OUTLINED_FUNCTION_67_1();
  v2 = OUTLINED_FUNCTION_48_0(v0, v1);
  OUTLINED_FUNCTION_214_1(v2, v3, v4, -15414, v5, v6, v7, v8, v9, SHIDWORD(v9));
}

void segPumpHandleLowLatencySetupError_cold_4()
{
  OUTLINED_FUNCTION_67_1();
  v2 = OUTLINED_FUNCTION_48_0(v0, v1);
  OUTLINED_FUNCTION_214_1(v2, v3, v4, -15415, v5, v6, v7, v8, v9, SHIDWORD(v9));
}

void segPumpHandleLowLatencySetupError_cold_5()
{
  OUTLINED_FUNCTION_67_1();
  v2 = OUTLINED_FUNCTION_48_0(v0, v1);
  OUTLINED_FUNCTION_214_1(v2, v3, v4, -15412, v5, v6, v7, v8, v9, SHIDWORD(v9));
}

void segPumpHandleLowLatencySetupError_cold_6()
{
  OUTLINED_FUNCTION_67_1();
  v2 = OUTLINED_FUNCTION_48_0(v0, v1);
  OUTLINED_FUNCTION_214_1(v2, v3, v4, -15411, v5, v6, v7, v8, v9, SHIDWORD(v9));
}

void segPumpHandleLowLatencySetupError_cold_7()
{
  OUTLINED_FUNCTION_67_1();
  v2 = OUTLINED_FUNCTION_48_0(v0, v1);
  OUTLINED_FUNCTION_214_1(v2, v3, v4, -15410, v5, v6, v7, v8, v9, SHIDWORD(v9));
}

void segPumpAddFigAlternate_cold_1()
{
  OUTLINED_FUNCTION_187();
  *v0 = FigSignalErrorAtGM();

  AlternateEntryFree(v1);
}

uint64_t segPumpAddFigAlternate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpInitAlternateSelectionBoss_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL segPumpCalculateDiscoDomainOffset_cold_1()
{
  OUTLINED_FUNCTION_471();
  v2 = FigSignalErrorAtGM();
  *v0 = v2;
  segPumpFreeDiscoQueue(v1);
  return v2 == 0;
}

void segPumpSetStartingOffset_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_114_1();
  OUTLINED_FUNCTION_214_1(v3, a1, (v2 + 408), -16831, v4, @"START-TIME is too close to live", v5, v6, v7, SHIDWORD(v7));
  *(a1 + 112) = 1;
}

uint64_t segPumpRealizeMapPreload_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetEstimatedGOPInterval_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

double segPumpStreamProceedAfterMediaAndKeyArrival_cold_1()
{
  OUTLINED_FUNCTION_216_0();
  v3 = v2;
  segPumpMarkMediaFileAsDelivered(v2, v4, v5);
  if (FigMediaSegmentSpecifierGetType(v0) != 1)
  {
    ++*(v3 + 8664);
    if (segPumpConnectedInterfaceIsWWAN(v3))
    {
      ++*(v3 + 8672);
    }

    *(v3 + 8744) = FigMediaSegmentSpecifierGetTimeInSeconds(v0) + *(v3 + 8744);
    *(v3 + 8752) = *(segPumpGetMediaFilePrivateData(v0) + 10) + *(v3 + 8752);
    *(v1 + 1120) = vaddq_s64(*(v1 + 1120), vdupq_n_s64(1uLL));
    result = FigMediaSegmentSpecifierGetTimeInSeconds(v0) + *(v1 + 1136);
    *(v1 + 1136) = result;
    if (*(v1 + 816))
    {
      ++*(v1 + 1144);
    }

    if (*v1 == 1)
    {
      v7 = 8840;
    }

    else
    {
      if (*v1)
      {
        return result;
      }

      v7 = 8832;
    }

    result = FigMediaSegmentSpecifierGetTimeInSeconds(v0) + *(v3 + v7);
    *(v3 + v7) = result;
  }

  return result;
}

uint64_t segPumpMediaFileHandleCryptData_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void segPumpRTCReportingUpdateMediaTimerStats_cold_1()
{
  OUTLINED_FUNCTION_216_0();
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, v2);
  if (*v1)
  {
    if (*v1 != 1 || !*(v0 + 9232) || !*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      goto LABEL_9;
    }
  }

  else if (!*(v0 + 9232) || !*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_606();
  v4();
LABEL_9:
  if (v3)
  {
    CFRelease(v3);
  }
}

void segPumpGetMediaDataMemoryPool_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, CMMemoryPoolRef *a4)
{
  OUTLINED_FUNCTION_180_1();
  CFDictionarySetValue(v8, *MEMORY[0x1E69628C8], v4);
  FigCFDictionarySetDouble();
  if (*(a3 + 9304))
  {
    FigCFDictionarySetValue();
  }

  *a4 = CMMemoryPoolCreate(v5);

  CFRelease(v4);
}

void segPumpRTCReportingLogAndUpdateStats_cold_1(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  if (*(a1 + 9232))
  {
    OUTLINED_FUNCTION_216_0();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_606();
      v5();
    }
  }

  CFRelease(cf);
}

void segPumpAddMediaSegmentNoResponseErrorIfNecessary_cold_1()
{
  OUTLINED_FUNCTION_257_0();
  v2 = *(v1 + 8);
  if (v2)
  {
    FigMediaSegmentSpecifierGetTimeInSeconds(v2);
  }

  FigGetAllocatorForMedia();
  v3 = *(v0 + 696);
  if (v3)
  {
    v5 = *(v3 + 8);
    v4 = "media file";
    if (v5 && FigMediaSegmentSpecifierGetType(v5) == 1)
    {
      v4 = "map";
    }
  }

  else
  {
    v4 = "media file";
  }

  v6 = OUTLINED_FUNCTION_173_0();
  v9 = CFStringCreateWithFormat(v6, v7, v8);
  OUTLINED_FUNCTION_175_0();
  v10 = OUTLINED_FUNCTION_177();
  segPumpAppendErrorLogEntry(v10, v11, v12, -12889, v13, v9, 0, 1, v4, SHIDWORD(v4));

  CFRelease(v9);
}

uint64_t segPumpSaveCryptKeyToCache_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSaveCryptKeyToCache_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpCreateMapMediaBBuf_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpRetrieveNextIFrame_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpPlaylistGetImputedLiveEdgeDate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpGetLastDiscAndDateForTimeReadInPlaylist_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetAlternatesInPenaltyBox_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetAlternatesInPenaltyBox_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetAlternatesInPenaltyBox_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t segPumpSetMetricEventTimeline_cold_1(const __CFArray *a1, CFArrayRef *a2, uint64_t a3, int *a4)
{
  if (CFArrayGetCount(a1) < 1)
  {
LABEL_6:
    v9 = 0;
  }

  else
  {
    v6 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(*a2, v6);
      if (!*(*(OUTLINED_FUNCTION_356_1() + 16) + 40))
      {
        break;
      }

      v7 = OUTLINED_FUNCTION_249();
      v9 = v8(v7);
      if (v9)
      {
        goto LABEL_8;
      }

      if (++v6 >= CFArrayGetCount(*a2))
      {
        goto LABEL_6;
      }
    }

    v9 = -12782;
  }

LABEL_8:
  *a4 = v9;

  return FigCFArrayRemoveAllValues();
}

void segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey_cold_1()
{
  OUTLINED_FUNCTION_187();
  FigSignalErrorAtGM();
  CFRelease(v1);

  CFRelease(v0);
}

uint64_t figTTMLDocumentWriterForiTT_StartElement(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = 0;
  switch(a2)
  {
    case 2:
      if (*(DerivedStorage + 16))
      {
        goto LABEL_15;
      }

      started = FigTTMLDocumentWriterStartElement(a1, 8);
      if (!started)
      {
        started = FigTTMLDocumentWriterEndElement(a1);
        if (!started)
        {
          goto LABEL_15;
        }
      }

      return started;
    case 3:
      FigTTMLDocumentWriterGetCMBaseObject(a1);
      v16 = CMBaseObjectGetDerivedStorage();
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v18 = Mutable;
        CFDictionaryAddValue(Mutable, @"style", @"normal");
        CFDictionaryAddValue(v18, @"region", @"bottom");
        v29.value = 0;
        *&v29.timescale = FigTTMLDocumentWriterStateGetAttributes(*(v16 + 8));
        v29.epoch = a1;
        OUTLINED_FUNCTION_0_2();
        v19 = OUTLINED_FUNCTION_1_1();
        CFDictionaryApplyFunction(v19, v20, v21);
        CFRelease(v18);
LABEL_15:
        v6 = 0;
        goto LABEL_26;
      }

      value_low = FigSignalErrorAtGM();
      if (!value_low)
      {
        goto LABEL_15;
      }

      return value_low;
    case 8:
      FigTTMLDocumentWriterGetCMBaseObject(a1);
      v8 = CMBaseObjectGetDerivedStorage();
      v9 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v9)
      {
        v10 = v9;
        CFDictionaryAddValue(v9, @"xmlns:xsi", @"http://www.w3.org/2001/XMLSchema-instance");
        CFDictionaryAddValue(v10, @"xmlns:tt", @"http://www.w3.org/ns/ttml");
        CFDictionaryAddValue(v10, @"http://www.w3.org/ns/ttml#parameter timeBase", @"smpte");
        v11 = FigCFDictionarySetInt32();
        if (v11 || (CMTimeMake(&v29, 999, 1000), OUTLINED_FUNCTION_1_1(), v11 = FigCFDictionarySetCMTime(), v11))
        {
          value_low = v11;
        }

        else
        {
          CFDictionaryAddValue(v10, @"http://www.w3.org/ns/ttml#parameter dropMode", @"nonDrop");
          v29.value = 0;
          *&v29.timescale = FigTTMLDocumentWriterStateGetAttributes(*(v8 + 8));
          v29.epoch = a1;
          OUTLINED_FUNCTION_0_2();
          v12 = OUTLINED_FUNCTION_1_1();
          CFDictionaryApplyFunction(v12, v13, v14);
          value_low = LODWORD(v29.value);
        }

        CFRelease(v10);
        if (value_low)
        {
          return value_low;
        }
      }

      else
      {
        value_low = FigSignalErrorAtGM();
        if (value_low)
        {
          return value_low;
        }
      }

      started = FigTTMLDocumentWriterStartElement(*v5, a2);
      if (started)
      {
        return started;
      }

      *(v5 + 16) = 1;
      return FigTTMLDocumentWriterStateStartElement(*(v5 + 8), a2);
    case 9:
      if (*(DerivedStorage + 17))
      {
        goto LABEL_25;
      }

      started = FigTTMLDocumentWriterStartElement(a1, 12);
      if (started)
      {
        return started;
      }

      v22 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v22)
      {
        v23 = v22;
        v24 = FigTTMLDocumentWriterStartElement(a1, 13);
        if (!v24)
        {
          CFDictionaryAddValue(v23, @"http://www.w3.org/XML/1998/namespace id", @"normal");
          CFDictionaryAddValue(v23, @"http://www.w3.org/ns/ttml#styling fontFamily", @"sansSerif");
          CFDictionaryAddValue(v23, @"http://www.w3.org/ns/ttml#styling fontWeight", @"normal");
          CFDictionaryAddValue(v23, @"http://www.w3.org/ns/ttml#styling fontStyle", @"normal");
          CFDictionaryAddValue(v23, @"http://www.w3.org/ns/ttml#styling color", @"white");
          CFDictionaryAddValue(v23, @"http://www.w3.org/ns/ttml#styling fontSize", @"100%");
          v29.value = 0;
          *&v29.timescale = 0;
          v29.epoch = a1;
          OUTLINED_FUNCTION_0_2();
          v25 = OUTLINED_FUNCTION_1_1();
          CFDictionaryApplyFunction(v25, v26, v27);
          v24 = FigTTMLDocumentWriterEndElement(a1);
        }

        value_low = v24;
        CFRelease(v23);
        if (!value_low)
        {
LABEL_24:
          started = FigTTMLDocumentWriterEndElement(a1);
          if (started)
          {
            return started;
          }

LABEL_25:
          v6 = 1;
LABEL_26:
          started = FigTTMLDocumentWriterStartElement(*v5, a2);
          if (started)
          {
            return started;
          }

          if (a2 == 12)
          {
            *(v5 + 17) = 1;
            if ((v6 & 1) == 0)
            {
              return FigTTMLDocumentWriterStateStartElement(*(v5 + 8), a2);
            }
          }

          else if (!v6)
          {
            return FigTTMLDocumentWriterStateStartElement(*(v5 + 8), a2);
          }

          *(v5 + 18) = 1;
          return FigTTMLDocumentWriterStateStartElement(*(v5 + 8), a2);
        }
      }

      else
      {
        value_low = FigSignalErrorAtGM();
        if (!value_low)
        {
          goto LABEL_24;
        }
      }

      return value_low;
    default:
      goto LABEL_26;
  }
}

uint64_t figTTMLDocumentWriterForiTT_EndElement(uint64_t a1)
{
  context[7] = *MEMORY[0x1E69E9840];
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigTTMLDocumentWriterStateGetCurrentElementType(*(DerivedStorage + 8)) != 8 || *(DerivedStorage + 18))
  {
    goto LABEL_26;
  }

  v17 = DerivedStorage;
  started = FigTTMLDocumentWriterStartElement(a1, 9);
  if (!started)
  {
    v4 = 0;
    context[3] = @"top";
    context[4] = @"bottom";
    context[5] = @"right";
    context[6] = @"left";
    allocator = *MEMORY[0x1E695E480];
    while (1)
    {
      Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!Mutable)
      {
        v15 = FigSignalErrorAtGM();
        goto LABEL_21;
      }

      v6 = Mutable;
      v7 = FigTTMLDocumentWriterStartElement(a1, 10);
      if (v7)
      {
        goto LABEL_19;
      }

      if (FigCFEqual())
      {
        v8 = @"top";
        v9 = @"0% 0%";
        v10 = @"100% 15%";
        v11 = kFigTTML_AttributeValue_tts_textAlign_center;
        v12 = kFigTTML_AttributeKey_tts_displayAlign;
        v13 = kFigTTML_AttributeValue_tts_displayAlign_before;
      }

      else if (FigCFEqual())
      {
        v8 = @"bottom";
        v9 = @"0% 85%";
        v10 = @"100% 15%";
        v11 = kFigTTML_AttributeValue_tts_textAlign_center;
        v12 = kFigTTML_AttributeKey_tts_displayAlign;
        v13 = kFigTTML_AttributeValue_tts_displayAlign_after;
      }

      else
      {
        if (FigCFEqual())
        {
          v8 = @"right";
          v9 = @"85% 0%";
        }

        else
        {
          if (!FigCFEqual())
          {
            goto LABEL_17;
          }

          v8 = @"left";
          v9 = @"15% 0%";
        }

        v10 = @"15% 100%";
        v11 = kFigTTML_AttributeValue_tts_textAlign_start;
        v12 = kFigTTML_AttributeKey_tts_writingMode;
        v13 = kFigTTML_AttributeValue_tts_writingMode_TopToBottomAndRightToLeft;
      }

      CFDictionaryAddValue(v6, @"http://www.w3.org/XML/1998/namespace id", v8);
      CFDictionaryAddValue(v6, @"http://www.w3.org/ns/ttml#styling origin", v9);
      CFDictionaryAddValue(v6, @"http://www.w3.org/ns/ttml#styling extent", v10);
      CFDictionaryAddValue(v6, @"http://www.w3.org/ns/ttml#styling textAlign", *v11);
      CFDictionaryAddValue(v6, *v12, *v13);
LABEL_17:
      context[0] = 0;
      context[1] = 0;
      context[2] = a1;
      OUTLINED_FUNCTION_0_2();
      CFDictionaryApplyFunction(v6, v14, context);
      v15 = LODWORD(context[0]);
      if (!LODWORD(context[0]))
      {
        v7 = FigTTMLDocumentWriterEndElement(a1);
LABEL_19:
        v15 = v7;
      }

      CFRelease(v6);
LABEL_21:
      if (v15)
      {
        return v15;
      }

      v4 += 8;
      if (v4 == 32)
      {
        started = FigTTMLDocumentWriterEndElement(a1);
        DerivedStorage = v17;
        if (!started)
        {
LABEL_26:
          started = FigTTMLDocumentWriterEndElement(*DerivedStorage);
          if (!started)
          {
            return FigTTMLDocumentWriterStateEndElement(*(DerivedStorage + 8));
          }
        }

        return started;
      }
    }
  }

  return started;
}