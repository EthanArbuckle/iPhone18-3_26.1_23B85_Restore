uint64_t FigAlternatePlaybackBitrateMonitorGetAlternateRank(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  IsAlternateStillValid = FigAlternatePlaybackBitrateMonitorIsAlternateStillValid(a1, a2);
  v6 = 0;
  if (IsAlternateStillValid && DerivedStorage)
  {
    PeakBitRate = FigAlternateGetPeakBitRate(a2);
    FigSimpleMutexLock();
    if (fampb_copyAlternateListSortedByQuality((DerivedStorage + 264), *MEMORY[0x1E695E480], 0, &theArray) || !theArray || CFArrayGetCount(theArray) < 1)
    {
      v6 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        Count = theArray;
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
        }

        if (v10 >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
        v14 = FigAlternateGetPeakBitRate(ValueAtIndex);
        v15 = v14 != v9;
        if (v14 != v9)
        {
          ++v11;
        }

        if (v14 <= PeakBitRate)
        {
          v15 = 0;
        }

        v8 += v15;
        ++v10;
        v9 = v14;
      }

      v6 = 100;
      if (v11 >= 2)
      {
        v6 = (100 - 100 * v8 / (v11 - 1));
      }
    }

    FigSimpleMutexUnlock();
    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  return v6;
}

uint64_t fampb_copyAlternateListSortedByQuality(uint64_t *a1, const __CFAllocator *a2, int a3, const __CFArray **a4)
{
  theArray = 0;
  if (!a4)
  {
    return 0;
  }

  valid = fampb_copyValidAlternateList(*a1, &theArray);
  if (valid)
  {
LABEL_17:
    v11 = valid;
    goto LABEL_13;
  }

  if (!theArray)
  {
    return 0;
  }

  if (CFArrayGetCount(theArray) >= 1)
  {
    MutableCopy = CFArrayCreateMutableCopy(a2, 0, theArray);
    if (MutableCopy)
    {
      v9 = MutableCopy;
      if (a3)
      {
        v10 = fampb_AlternatePeakBitrateComparator;
      }

      else if (FigAlternatesCarryRankingScore(MutableCopy))
      {
        v10 = fampb_AlternateRankingScoreComparator;
      }

      else
      {
        v10 = fampb_AlternatePeakBitrateComparator;
      }

      v14.length = CFArrayGetCount(v9);
      v14.location = 0;
      CFArraySortValues(v9, v14, v10, 0);
      v11 = 0;
      *a4 = v9;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_243();
    valid = FigSignalErrorAtGM();
    goto LABEL_17;
  }

  v11 = 0;
LABEL_13:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v11;
}

uint64_t FigAlternatePlaybackBitrateMonitorGetMaxResolutionAndBitrate(double a1, double a2, uint64_t a3, double *a4, int *a5, _DWORD *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valid = 0;
  theArray = 0;
  if (a4)
  {
    v13 = DerivedStorage;
    if (DerivedStorage)
    {
      if (a5)
      {
        FigSimpleMutexLock();
        valid = fampb_copyValidAlternateList(*(v13 + 264), &theArray);
        if (!valid && theArray && CFArrayGetCount(theArray) >= 1)
        {
          v14 = 0;
          v15 = 0;
          NormalizedPeakBitrate = 0;
          v17 = a2 * a1;
          v18 = 0.0;
          v19 = 0.0;
          while (1)
          {
            Count = theArray;
            if (theArray)
            {
              Count = CFArrayGetCount(theArray);
            }

            if (v15 >= Count)
            {
              break;
            }

            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
            Resolution = FigAlternateGetResolution(ValueAtIndex);
            if (v23 > 0.0 && Resolution > 0.0 && Resolution * v23 > v17)
            {
              v14 = ValueAtIndex;
              v18 = Resolution;
              v19 = v23;
              v17 = Resolution * v23;
            }

            if (NormalizedPeakBitrate <= FigAlternateGetNormalizedPeakBitrate(ValueAtIndex))
            {
              NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(ValueAtIndex);
            }

            ++v15;
          }

          *a4 = v18;
          a4[1] = v19;
          *a5 = NormalizedPeakBitrate;
          if (a6 && v14)
          {
            *a6 = FigAlternateGetVideoQualityIndex(v14);
          }
        }

        FigSimpleMutexUnlock();
        if (theArray)
        {
          CFRelease(theArray);
        }
      }
    }
  }

  return valid;
}

const void *FigAlternatePlaybackBitrateMonitorRejectSwitch(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v17 = 0;
  v15 = 0;
  FigSimpleMutexLock();
  if (*(CMBaseObjectGetDerivedStorage() + 112))
  {
    v18 = 0;
    v19 = 0;
    fampb_createRecordABREventEntryForNowAndInsertQ(a1, &v19);
    v5 = v19;
    if (v19)
    {
      if (a2)
      {
        v6 = CFRetain(a2);
        v5 = v19;
      }

      else
      {
        v6 = 0;
      }

      v5[2] = v6;
      *(v5 + 2) = 14;
      if (!fampb_createRecordingDecisionAlternateEntryAndInsertQ(a1, &v18))
      {
        v7 = v18;
        if (v18)
        {
          *v18 = *v19;
          v7[1] = 0;
        }
      }
    }
  }

  v8 = *(DerivedStorage + 64);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v9)
  {
    v9(v8);
  }

  if (!FigCFEqual())
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    if (!FigAlternateFilterTreeCreate(AllocatorForMedia, &v17) && !FigAlternateFilterTreeInsertLeaf(v17, *(DerivedStorage + 264), 500))
    {
      v11 = CFGetAllocator(a1);
      if (!FigAlternateSingleAlternateFilterCreate(v11, a2, 1, @"RejectedSwitch", 490, &cf) && !FigAlternateFilterTreeInsertLeaf(v17, cf, 500))
      {
        v12 = *(DerivedStorage + 72);
        if (!v12 || !FigAlternateFilterTreeSetFallbackBranch(v17, v12))
        {
          FigAlternateFilterTreeCreateFilter(v17, @"RejectedSwitchFilterTree", 600, &v15);
        }
      }
    }
  }

  FigSimpleMutexUnlock();
  v13 = fampb_notifyFilterChangeAndRecordStallRiskListUnlocked(a1, v15, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v13;
}

uint64_t FigAlternatePlaybackBitrateMonitorTryToSwitchUp(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = 0;
  FigSimpleMutexLock();
  *(DerivedStorage + 392) = 0;
  v3 = FigNetworkHistoryObserverTestCondition();
  fampb_attemptToSwitch(a1, v3, &v5);
  FigSimpleMutexUnlock();
  if (!v5)
  {
    return 0;
  }

  dispatch_sync_f(*(DerivedStorage + 32), 0, fampb_noop);
  return v5;
}

uint64_t FigAlternatePlaybackBitrateMonitorCopySerializedRecordData(const void *a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  bzero(v16, 0x800uLL);
  *a3 = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 113))
  {
    v15 = 4294949563;
    goto LABEL_9;
  }

  if (!*(DerivedStorage + 112))
  {
    v15 = 0;
    goto LABEL_9;
  }

  v6 = *(DerivedStorage + 148);
  if (v6 != fampb_recordDataGetTotalBitrateCurvePointCount(DerivedStorage))
  {
    OUTLINED_FUNCTION_3_12();
    v13 = FigSignalErrorAtGM();
LABEL_13:
    v15 = v13;
    goto LABEL_9;
  }

  time.value = 0;
  v7 = CMBaseObjectGetDerivedStorage();
  if (*(v7 + 112))
  {
    v8 = v7;
    v9 = CFGetAllocator(a1);
    if (!fampb_createRecordABREventEntry(v9, &time.value))
    {
      value = time.value;
      v11 = time.value;
      *(time.value + 40) = 0;
      v12 = *(v8 + 192);
      *(value + 48) = v12;
      *v12 = value;
      *(v8 + 192) = v11 + 40;
      ++*(v8 + 176);
      *value = FigGetUpTimeNanoseconds();
      *(value + 8) = 22;
    }
  }

  v13 = FigNetworkHistoryCopySerializedRecordData();
  if (v13)
  {
    goto LABEL_13;
  }

  v15 = 0;
LABEL_9:
  FigSimpleMutexUnlock();
  return v15;
}

uint64_t fampb_setProperty(const void *a1, const void *a2, const void *a3)
{
  v177 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(a2, @"AfmfpbProperty_Timebase"))
  {
    if (a3)
    {
      CMTimebaseGetTypeID();
      if (a2 == OUTLINED_FUNCTION_27_18())
      {
        v7 = *(DerivedStorage + 592);
        if (v7 == a3)
        {
          goto LABEL_44;
        }

        if (v7)
        {
          fampb_removeTimebaseListeners();
          v8 = *(DerivedStorage + 592);
          *(DerivedStorage + 592) = a3;
          CFRetain(a3);
          if (v8)
          {
            CFRelease(v8);
          }
        }

        else
        {
          *(DerivedStorage + 592) = a3;
          CFRetain(a3);
        }

        if (*(DerivedStorage + 592))
        {
          CMBaseObjectGetDerivedStorage();
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
          Time = CMTimebaseGetTime(&v174, *(DerivedStorage + 592));
          value = v174.value;
          flags = v174.flags;
          timescale = v174.timescale;
          if ((v174.flags & 0x1D) == 1)
          {
            epoch = v174.epoch;
            if ((*(DerivedStorage + 228) & 0x1D) != 1 || (OUTLINED_FUNCTION_37_17(), v38 = OUTLINED_FUNCTION_281(v30, v31, v32, v33, v34, v35, v36, v37, v170.value, *&v170.timescale, v170.epoch, valuePtr, *(DerivedStorage + 216), *(DerivedStorage + 224), *(DerivedStorage + 232), v173, v174.value), Time = CMTimeCompare(v38, v39), (Time & 0x80000000) != 0))
            {
              *(DerivedStorage + 216) = value;
              *(DerivedStorage + 224) = timescale;
              *(DerivedStorage + 228) = flags;
              *(DerivedStorage + 232) = epoch;
            }

            if ((*(DerivedStorage + 252) & 0x1D) != 1 || (OUTLINED_FUNCTION_37_17(), v48 = OUTLINED_FUNCTION_281(v40, v41, v42, v43, v44, v45, v46, v47, v170.value, *&v170.timescale, v170.epoch, valuePtr, *(DerivedStorage + 240), *(DerivedStorage + 248), *(DerivedStorage + 256), v173, v174.value), Time = CMTimeCompare(v48, v49), Time >= 1))
            {
              *(DerivedStorage + 240) = value;
              *(DerivedStorage + 248) = timescale;
              *(DerivedStorage + 252) = flags;
              *(DerivedStorage + 256) = epoch;
            }

            OUTLINED_FUNCTION_12_40(Time, v17, v18, v19, v20, v21, v22, v23, v170.value, *&v170.timescale, v170.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v173, v174.value);
            v50 = v174.value;
            if (v174.value)
            {
              *(v174.value + 16) = value;
              *(v50 + 24) = timescale;
              *(v50 + 28) = flags;
              *(v50 + 32) = epoch;
              *(v50 + 8) = 1;
            }
          }
        }

        fampb_setupDryTimer(a1);
        if (!*(DerivedStorage + 272))
        {
          goto LABEL_44;
        }

        v27 = *(DerivedStorage + 764) != 0;
        goto LABEL_57;
      }
    }

    goto LABEL_8;
  }

  if (FigCFEqual())
  {
    v11 = *(DerivedStorage + 336);
    *(DerivedStorage + 336) = a3;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!CFEqual(a2, @"AfmfpbProperty_CurrentAlternate"))
  {
    if (CFEqual(a2, @"AfmfpbProperty_TrialAlternate"))
    {
      if (a3)
      {
        v14 = CFGetTypeID(a3);
        if (v14 != FigAlternateGetTypeID())
        {
          goto LABEL_8;
        }
      }

      if (FigCFEqual())
      {
        goto LABEL_44;
      }

      v15 = *(DerivedStorage + 280);
      *(DerivedStorage + 280) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v15)
      {
        CFRelease(v15);
      }

LABEL_39:
      v9 = fampb_setBandwidthConditions(a1);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"AfmfpbProperty_StartsOnFirstEligibleVariant"))
    {
      if (a3)
      {
        CFBooleanGetTypeID();
        if (a2 == OUTLINED_FUNCTION_27_18())
        {
          v73 = CFBooleanGetValue(a3);
          fampb_setStartsOnFirstEligibleVariant(a1, v73);
          goto LABEL_44;
        }
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"AfmfpbProperty_PrefersConcurrentSwitch"))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      CFBooleanGetTypeID();
      if (a2 != OUTLINED_FUNCTION_27_18())
      {
        goto LABEL_8;
      }

      v26 = *(DerivedStorage + 344);
      if (v26 == CFBooleanGetValue(a3))
      {
        goto LABEL_44;
      }

      *(DerivedStorage + 344) = CFBooleanGetValue(a3);
      goto LABEL_39;
    }

    if (CFEqual(a2, @"AfmfpbProperty_BandwidthCap"))
    {
      if (a3)
      {
        CFNumberGetTypeID();
        if (a2 == OUTLINED_FUNCTION_27_18())
        {
          v51 = CFNumberGetValue(a3, kCFNumberSInt32Type, (DerivedStorage + 416));
          v59 = *(DerivedStorage + 416);
          if (!v59)
          {
            v59 = 0x7FFFFFFF;
            *(DerivedStorage + 416) = 0x7FFFFFFF;
          }

          if (!*(DerivedStorage + 272))
          {
            goto LABEL_44;
          }

          OUTLINED_FUNCTION_12_40(v51, v52, v53, v54, v55, v56, v57, v58, v170.value, *&v170.timescale, v170.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v173, v174.value);
          v60 = v174.value;
          if (v174.value)
          {
            *(v174.value + 16) = v59;
            *(v60 + 8) = 16;
          }

          v61 = *(DerivedStorage + 416);
          v27 = v61 >= FigAlternateGetPeakBitRate(*(DerivedStorage + 272));
LABEL_57:
          v28 = a1;
LABEL_58:
          v9 = fampb_configurePlaybackFilterForUpdatedProperties(v28, v27);
          goto LABEL_9;
        }
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"AfmfpbProperty_OkayToAttemptSwitchUp"))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      CFBooleanGetTypeID();
      if (a2 != OUTLINED_FUNCTION_27_18())
      {
        goto LABEL_8;
      }

      v62 = CFBooleanGetValue(a3);
      if (*(DerivedStorage + 764) == v62)
      {
        goto LABEL_44;
      }

      v70 = v62;
      *(DerivedStorage + 764) = v62;
      OUTLINED_FUNCTION_12_40(v62, v63, v64, v65, v66, v67, v68, v69, v170.value, *&v170.timescale, v170.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v173, v174.value);
      v71 = v174.value;
      if (!v174.value)
      {
        goto LABEL_44;
      }

      *(v174.value + 16) = v70;
      v72 = 8;
      goto LABEL_84;
    }

    if (CFEqual(a2, @"AfmfpbProperty_SwitchMinDuration"))
    {
      if (a3)
      {
        CFNumberGetTypeID();
        if (a2 == OUTLINED_FUNCTION_27_18())
        {
          valuePtr = 0;
          CFNumberGetValue(a3, kCFNumberDoubleType, &valuePtr);
          CMTimeMakeWithSeconds(&v174, *&valuePtr, 1000);
          time1 = *(DerivedStorage + 364);
          v170 = v174;
          if (CMTimeCompare(&time1, &v170))
          {
            *(DerivedStorage + 364) = v174;
            v93 = valuePtr;
            time1.value = 0;
            fampb_createRecordABREventEntryForNowAndInsertQ(a1, &time1);
            v94 = time1.value;
            if (time1.value)
            {
              *(time1.value + 16) = v93;
              *(v94 + 8) = 5;
            }
          }

          fampb_setupDryTimer(a1);
          goto LABEL_44;
        }
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"AfmfpbProperty_QualityGear"))
    {
      if (a3)
      {
        CFNumberGetTypeID();
        if (a2 == OUTLINED_FUNCTION_27_18())
        {
          CFNumberGetValue(a3, kCFNumberSInt32Type, (DerivedStorage + 760));
          *(DerivedStorage + 767) = 0;
          v28 = a1;
          v27 = 0;
          goto LABEL_58;
        }
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"AfmfpbProperty_PlayerRate"))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      v74 = CFGetTypeID(a3);
      if (v74 != CFNumberGetTypeID())
      {
        goto LABEL_8;
      }

      LODWORD(time1.value) = 0;
      v75 = CFNumberGetValue(a3, kCFNumberFloat32Type, &time1);
      v83 = time1.value;
      if (*(DerivedStorage + 420) == *&time1.value)
      {
        goto LABEL_44;
      }

      *(DerivedStorage + 420) = time1.value;
      OUTLINED_FUNCTION_12_40(v75, v76, v77, v78, v79, v80, v81, v82, v170.value, *&v170.timescale, v170.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v173, v174.value);
      v71 = v174.value;
      if (!v174.value)
      {
        goto LABEL_44;
      }

      *(v174.value + 16) = v83;
      v72 = 6;
      goto LABEL_84;
    }

    if (CFEqual(a2, @"AfmfpbProperty_RTT"))
    {
      if (!a3)
      {
        v10 = 0;
        *(DerivedStorage + 1256) = 0;
        goto LABEL_45;
      }

      CFNumberGetTypeID();
      if (a2 != OUTLINED_FUNCTION_27_18())
      {
        goto LABEL_8;
      }

      time1.value = 0;
      CFNumberGetValue(a3, kCFNumberSInt64Type, &time1);
      updated = fampb_updateSmoothRTT(a1, time1.value);
      v114 = time1.value;
      OUTLINED_FUNCTION_12_40(updated, v115, v116, v117, v118, v119, v120, v121, v170.value, *&v170.timescale, v170.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v173, v174.value);
      v71 = v174.value;
      if (!v174.value)
      {
        goto LABEL_44;
      }

      *(v174.value + 16) = v114;
      v72 = 17;
      goto LABEL_84;
    }

    if (CFEqual(a2, @"AfmfpbProperty_BytesRequiredForNetworkPrediction"))
    {
      if (*(DerivedStorage + 344))
      {
        goto LABEL_44;
      }

      if (!a3)
      {
        v10 = 0;
        *(DerivedStorage + 832) = 0;
        goto LABEL_45;
      }

      CFNumberGetTypeID();
      if (a2 != OUTLINED_FUNCTION_27_18())
      {
        goto LABEL_8;
      }

      SInt64 = FigCFNumberGetSInt64();
      if (*(DerivedStorage + 832) == SInt64)
      {
        goto LABEL_44;
      }

      v92 = SInt64;
      *(DerivedStorage + 832) = SInt64;
      OUTLINED_FUNCTION_12_40(SInt64, v85, v86, v87, v88, v89, v90, v91, v170.value, *&v170.timescale, v170.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v173, v174.value);
      v71 = v174.value;
      if (!v174.value)
      {
        goto LABEL_44;
      }

      *(v174.value + 16) = v92;
      v72 = 18;
LABEL_84:
      *(v71 + 8) = v72;
      goto LABEL_44;
    }

    if (CFEqual(a2, @"AfmfpbProperty_EstimatedGOPInterval"))
    {
      if (a3)
      {
        v95 = CFGetTypeID(a3);
        TypeID = CFNumberGetTypeID();
        if (v95 == TypeID)
        {
          OUTLINED_FUNCTION_53_12(TypeID, v97, v98, v99, v100, v101, v102, v103, v170.value, *&v170.timescale, v170.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v173, v174.value);
          v10 = 0;
          *(DerivedStorage + 440) = v174.value;
          goto LABEL_45;
        }
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"AfmfpbProperty_PartTargetDuration"))
    {
      if (a3)
      {
        v104 = CFGetTypeID(a3);
        v105 = CFNumberGetTypeID();
        if (v104 == v105)
        {
          OUTLINED_FUNCTION_53_12(v105, v106, v107, v108, v109, v110, v111, v112, v170.value, *&v170.timescale, v170.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v173, v174.value);
          v10 = 0;
          *(DerivedStorage + 448) = v174.value;
          goto LABEL_45;
        }
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"AfmfpbProperty_SwitchesQualityGearAutomatically"))
    {
      if (a3)
      {
        v122 = CFBooleanGetTypeID();
        if (v122 == CFGetTypeID(a3))
        {
          v10 = 0;
          *(DerivedStorage + 767) = CFBooleanGetValue(a3);
          goto LABEL_45;
        }
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"AfmfpbProperty_TransitionAttributes"))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      v123 = CFGetTypeID(a3);
      if (v123 != CFDictionaryGetTypeID())
      {
        goto LABEL_8;
      }

      v11 = *(DerivedStorage + 304);
      *(DerivedStorage + 304) = a3;
      goto LABEL_12;
    }

    if (CFEqual(a2, @"AfmfpbProperty_AudibleMediaSelectionOptionPersistentID"))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      v124 = CFGetTypeID(a3);
      if (v124 != CFNumberGetTypeID())
      {
        goto LABEL_8;
      }

      v11 = *(DerivedStorage + 296);
      *(DerivedStorage + 296) = a3;
      goto LABEL_12;
    }

    if (CFEqual(a2, @"AfmfpbProperty_PredictedBitrate"))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      v125 = CFGetTypeID(a3);
      if (v125 != CFNumberGetTypeID())
      {
        goto LABEL_8;
      }

      v126 = FigCFNumberGetSInt64();
      if (v126 == *(DerivedStorage + 400))
      {
        goto LABEL_44;
      }

      v134 = v126;
      *(DerivedStorage + 400) = v126;
      OUTLINED_FUNCTION_12_40(v126, v127, v128, v129, v130, v131, v132, v133, v170.value, *&v170.timescale, v170.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v173, v174.value);
      v71 = v174.value;
      if (!v174.value)
      {
        goto LABEL_44;
      }

      *(v174.value + 16) = v134;
      v72 = 19;
      goto LABEL_84;
    }

    if (CFEqual(a2, @"AfmfpbProperty_PendingSeekTime"))
    {
      if (a3)
      {
        v135 = CFGetTypeID(a3);
        if (v135 != CFDictionaryGetTypeID())
        {
          goto LABEL_8;
        }
      }

      CMTimeMakeFromDictionary(&v174, a3);
      *(DerivedStorage + 728) = v174;
      if ((*(DerivedStorage + 740) & 0x1D) == 1)
      {
        if ((*(DerivedStorage + 252) & 0x1D) != 1 || (OUTLINED_FUNCTION_40_14(), v155 = OUTLINED_FUNCTION_281(v147, v148, v149, v150, v151, v152, v153, v154, v170.value, *&v170.timescale, v170.epoch, valuePtr, *(DerivedStorage + 240), *(DerivedStorage + 248), *(DerivedStorage + 256), v173, v174.value), CMTimeCompare(v155, v156) >= 1))
        {
          *(DerivedStorage + 240) = *(DerivedStorage + 728);
          *(DerivedStorage + 256) = *(DerivedStorage + 744);
        }
      }

      OUTLINED_FUNCTION_40_14();
      time1.value = 0;
      fampb_createRecordABREventEntryForNowAndInsertQ(a1, &time1);
      v71 = time1.value;
      if (!time1.value)
      {
        goto LABEL_44;
      }

      *(time1.value + 16) = *&v174.value;
      *(v71 + 32) = v174.epoch;
      v72 = 3;
      goto LABEL_84;
    }

    if (CFEqual(a2, @"AfmfpbProperty_RecoveryAlternate"))
    {
      if (a3)
      {
        FigAlternateGetTypeID();
        if (a2 != OUTLINED_FUNCTION_27_18())
        {
          goto LABEL_8;
        }

        v159 = (DerivedStorage + 288);
        v160 = *(DerivedStorage + 288);
        *(DerivedStorage + 288) = a3;
        CFRetain(a3);
      }

      else
      {
        v159 = (DerivedStorage + 288);
        v160 = *(DerivedStorage + 288);
        *(DerivedStorage + 288) = 0;
      }

      if (v160)
      {
        CFRelease(v160);
      }

      fampb_recordRecoveryAlternate(a1, *v159);
      goto LABEL_44;
    }

    if (CFEqual(a2, @"AfmfpbProperty_IsBufferFull"))
    {
      v143 = *MEMORY[0x1E695E4D0];
      v144 = *MEMORY[0x1E695E4D0] == a3;
      if (*(DerivedStorage + 765) == v144)
      {
        goto LABEL_44;
      }

      *(DerivedStorage + 765) = v144;
      if (v143 == a3)
      {
        UpTimeNanoseconds = 0;
        v146 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_28_18();
        if (v165 ^ v166 | v164)
        {
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          v146 = *(DerivedStorage + 765);
        }

        else
        {
          v146 = 0;
          UpTimeNanoseconds = ((*(DerivedStorage + 472) - v163) * 1000000000.0);
        }
      }

      *(DerivedStorage + 696) = UpTimeNanoseconds;
      OUTLINED_FUNCTION_12_40(UpTimeNanoseconds, v136, v137, v138, v139, v140, v141, v142, v170.value, *&v170.timescale, v170.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v173, v174.value);
      v71 = v174.value;
      if (!v174.value)
      {
        goto LABEL_44;
      }

      *(v174.value + 16) = v146;
      v72 = 10;
      goto LABEL_84;
    }

    if (CFEqual(a2, @"AfmfpbProperty_ResourceConservationLevelWhenPaused"))
    {
      if (a3)
      {
        v157 = CFGetTypeID(a3);
        if (v157 == CFNumberGetTypeID())
        {
          v10 = 0;
          *(DerivedStorage + 768) = FigCFNumberGetSInt32();
          goto LABEL_45;
        }
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"AfmfpbProperty_MainPlaylistExpectedUpdateTime"))
    {
      v158 = FigCFNumberGetSInt64();
      *(DerivedStorage + 456) = v158;
      if (v158 >= 1 && FigGetUpTimeNanoseconds() > *(DerivedStorage + 456))
      {
        fampb_configurePlaybackFilterForUpdatedProperties(a1, 0);
      }

      goto LABEL_44;
    }

    if (CFEqual(a2, @"AfmfpbProperty_DisableTrialSwitchUpTimer"))
    {
      v10 = 0;
      OUTLINED_FUNCTION_52_12();
      *(DerivedStorage + 348) = v161;
      goto LABEL_45;
    }

    if (CFEqual(a2, @"AfmfpbProperty_HasUnmuxedVideo"))
    {
      v10 = 0;
      OUTLINED_FUNCTION_52_12();
      *(DerivedStorage + 350) = v162;
      goto LABEL_45;
    }

    if (CFEqual(a2, @"AfmfpbProperty_AllActiveStreamHadMediaFiles"))
    {
      v10 = 0;
      OUTLINED_FUNCTION_52_12();
      *(DerivedStorage + 349) = v167;
      goto LABEL_45;
    }

    if (CFEqual(a2, @"AfmfpbProperty_MainStreamDiscontinuityDomain"))
    {
      v10 = 0;
      *(DerivedStorage + 320) = FigCFNumberGetCFIndex();
      goto LABEL_45;
    }

    if (CFEqual(a2, @"AfmfpbProperty_MainStreamDiscoDomainOffset"))
    {
      v10 = 0;
      *(DerivedStorage + 328) = FigCFNumberGetCFIndex();
      goto LABEL_45;
    }

    if (CFEqual(a2, @"AfmfpbProperty_MainStreamPlaylist"))
    {
      *(DerivedStorage + 148) = fampb_recordDataGetTotalBitrateCurvePointCount(DerivedStorage);
      v11 = *(DerivedStorage + 312);
      *(DerivedStorage + 312) = a3;
      if (a3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (CFEqual(a2, @"AfmfpbProperty_AudioStreamPlaylist"))
      {
        v10 = 0;
        *(DerivedStorage + 148) = fampb_recordDataGetTotalBitrateCurvePointCount(DerivedStorage);
        goto LABEL_45;
      }

      if (CFEqual(a2, @"AfmfpbProperty_ConnectedInterfaceIsWWAN"))
      {
        v10 = 0;
        OUTLINED_FUNCTION_52_12();
        *(DerivedStorage + 517) = v168;
        goto LABEL_45;
      }

      if (FigCFEqual())
      {
        v11 = *(DerivedStorage + 80);
        *(DerivedStorage + 80) = a3;
        if (a3)
        {
          goto LABEL_12;
        }
      }

      else if (FigCFEqual())
      {
        v11 = *(DerivedStorage + 88);
        *(DerivedStorage + 88) = a3;
        if (a3)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (!FigCFEqual())
        {
          if (CFEqual(a2, @"AfmfpbProperty_ResourceArbiterConsumerID"))
          {
            UInt64 = FigCFNumberGetUInt64();
            if (UInt64)
            {
              if (!*(DerivedStorage + 520))
              {
                *(DerivedStorage + 520) = UInt64;
                fampb_setupResourceArbiter();
                goto LABEL_44;
              }
            }
          }

          goto LABEL_8;
        }

        v11 = *(DerivedStorage + 96);
        *(DerivedStorage + 96) = a3;
        if (a3)
        {
LABEL_12:
          CFRetain(a3);
        }
      }
    }

LABEL_13:
    if (v11)
    {
      CFRelease(v11);
    }

    goto LABEL_44;
  }

  if (a3)
  {
    FigAlternateGetTypeID();
    if (a2 == OUTLINED_FUNCTION_27_18())
    {
      if (!FigCFEqual())
      {
        v12 = *(DerivedStorage + 280);
        if (v12)
        {
          CFRelease(v12);
          *(DerivedStorage + 280) = 0;
        }

        v13 = *(DerivedStorage + 272);
        *(DerivedStorage + 272) = a3;
        CFRetain(a3);
        if (v13)
        {
          CFRelease(v13);
        }

        if (FigAlternateIsIFrameOnly(*(DerivedStorage + 272)) || FigAlternateIsAudioOnly(*(DerivedStorage + 272)))
        {
          *(DerivedStorage + 432) = 0x3FF0000000000000;
        }

        if (*(DerivedStorage + 464))
        {
          *(DerivedStorage + 464) = 0;
        }

        fampb_recordCurrentAlternate(a1, *(DerivedStorage + 272), *(DerivedStorage + 104));
        v9 = fampb_updateNetworkSpecifierOnArbiter();
        if (v9)
        {
          goto LABEL_9;
        }

        goto LABEL_39;
      }

LABEL_44:
      v10 = 0;
      goto LABEL_45;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_243();
  v9 = FigSignalErrorAtGM();
LABEL_9:
  v10 = v9;
LABEL_45:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t fampb_setBandwidthConditions(uint64_t a1)
{
  v73 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  if (!*(DerivedStorage + 272))
  {
    return 0;
  }

  v4 = DerivedStorage;
  valid = fampb_copyValidAlternateList(*(DerivedStorage + 264), &theArray);
  if (valid)
  {
    v15 = valid;
    goto LABEL_65;
  }

  if (!theArray)
  {
    return 0;
  }

  v47 = v1;
  if (CFArrayGetCount(theArray) < 1)
  {
LABEL_64:
    v15 = 0;
    goto LABEL_65;
  }

  ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(*(v4 + 272));
  PeakBitRate = FigAlternateGetPeakBitRate(*(v4 + 272));
  LODWORD(v48) = (*(v4 + 432) * PeakBitRate);
  HIDWORD(v48) = PeakBitRate;
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = v8;
  if (*(v8 + 344))
  {
    v22 = *(v8 + 272);
    if (*(v8 + 345))
    {
      RequiredBWForLowLatencyAlternate = fampb_getRequiredBWForLowLatencyAlternate(v8 + 264, v22);
      if (RequiredBWForLowLatencyAlternate > 0)
      {
        goto LABEL_8;
      }

LABEL_27:
      if (dword_1EAF17490)
      {
        v26 = OUTLINED_FUNCTION_6_76();
        if (os_log_type_enabled(v26, type))
        {
          v27 = v50;
        }

        else
        {
          v27 = v50 & 0xFFFFFFFE;
        }

        if (v27)
        {
          if (theArray)
          {
            CFArrayGetCount(theArray);
          }

          valuePtr[0] = 136316162;
          OUTLINED_FUNCTION_18_26("fampb_setBandwidthConditions");
          v57 = ExpectedAverageBitrate;
          OUTLINED_FUNCTION_23_28(v28, v29);
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (*(v4 + 1232))
      {
        FigNetworkHistoryObserverRemoveCondition();
        *(v4 + 1232) = 0;
      }

      goto LABEL_38;
    }

    v23 = fampb_copyLowerSwitchCandidate((v8 + 264), v22, 1);
    if (!v23)
    {
      goto LABEL_27;
    }

    v24 = v23;
    v25 = FigAlternateGetExpectedAverageBitrate(v23);
    v10 = v25 + FigAlternateGetExpectedAverageBitrate(*(v9 + 272)) * 1.1;
    CFRelease(v24);
  }

  else
  {
    v10 = *(v8 + 432) * (FigAlternateGetPeakBitRate(*(v8 + 272)) - 1);
  }

  RequiredBWForLowLatencyAlternate = v10;
  if (v10 == -1)
  {
    goto LABEL_27;
  }

LABEL_8:
  OUTLINED_FUNCTION_13_34(RequiredBWForLowLatencyAlternate);
  if (v12)
  {
    v53 = *(v4 + 1000);
    memcpy(__dst, (v4 + 1024), sizeof(__dst));
    v13 = *(v4 + 1168);
    OUTLINED_FUNCTION_44_14(v4 + 1176);
    v14 = *(v4 + 1240);
  }

  else
  {
    v53 = *(v4 + 776);
    v14 = *(v4 + 792);
    memcpy(__dst, (v4 + 800), sizeof(__dst));
    v13 = *(v4 + 944);
    OUTLINED_FUNCTION_44_14(v4 + 952);
  }

  v16 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, valuePtr);
  if (v16)
  {
    v17 = v16;
    if (*(v4 + 1232))
    {
      FigNetworkHistoryObserverRemoveCondition();
      *(v4 + 1232) = 0;
    }

    v61 = v17;
    v62 = 6;
    v63 = v53;
    v64 = v14;
    memcpy(v65, __dst, sizeof(v65));
    v66 = v13 | 0x18;
    v67 = v58;
    v68 = v59;
    v69 = v60;
    v15 = FigNetworkHistoryObserverAddCondition();
    CFRelease(v17);
    if (v15)
    {
      goto LABEL_65;
    }
  }

  else
  {
    OUTLINED_FUNCTION_41_14();
    v15 = FigSignalErrorAtGM();
    if (v15)
    {
      goto LABEL_65;
    }
  }

  if (dword_1EAF17490)
  {
    v18 = OUTLINED_FUNCTION_6_76();
    if (os_log_type_enabled(v18, type))
    {
      v19 = v50;
    }

    else
    {
      v19 = v50 & 0xFFFFFFFE;
    }

    if (v19)
    {
      v20 = *(v4 + 336);
      valuePtr[0] = 136316930;
      OUTLINED_FUNCTION_20_21(v20);
      v57 = RequiredBWForLowLatencyAlternate;
      OUTLINED_FUNCTION_10_43(v21, v45, v46, v1, v48, SHIDWORD(v48));
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_38:
  v30 = fampb_minimumBandwidthRequiredToSwitchUp(a1, theArray);
  if (v30 == -1)
  {
    if (dword_1EAF17490)
    {
      v34 = OUTLINED_FUNCTION_6_76();
      if (os_log_type_enabled(v34, type))
      {
        v35 = v50;
      }

      else
      {
        v35 = v50 & 0xFFFFFFFE;
      }

      if (v35)
      {
        if (theArray)
        {
          CFArrayGetCount(theArray);
        }

        valuePtr[0] = 136316162;
        OUTLINED_FUNCTION_18_26("fampb_setBandwidthConditions");
        v57 = ExpectedAverageBitrate;
        OUTLINED_FUNCTION_23_28(v36, v37);
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(v4 + 1224))
    {
      FigNetworkHistoryObserverRemoveCondition();
      v15 = 0;
      *(v4 + 1224) = 0;
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  HIDWORD(v46) = v30;
  OUTLINED_FUNCTION_13_34(v30);
  if (v31)
  {
    v55 = *(v4 + 1000);
    memcpy(__src, (v4 + 1024), sizeof(__src));
    v32 = *(v4 + 1168);
    OUTLINED_FUNCTION_42_13(v4 + 1176);
    v33 = *(v4 + 1240);
  }

  else
  {
    v55 = *(v4 + 776);
    v33 = *(v4 + 792);
    memcpy(__src, (v4 + 800), sizeof(__src));
    v32 = *(v4 + 944);
    OUTLINED_FUNCTION_42_13(v4 + 952);
  }

  v38 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, valuePtr);
  if (v38)
  {
    v39 = v38;
    if (*(v4 + 1224))
    {
      FigNetworkHistoryObserverRemoveCondition();
      *(v4 + 1224) = 0;
    }

    v61 = v39;
    v62 = 5;
    v63 = v55;
    v64 = v33;
    memcpy(v65, __src, sizeof(v65));
    v66 = v32 | 0x18;
    v67 = v70;
    v68 = v71;
    v69 = v72;
    v15 = FigNetworkHistoryObserverAddCondition();
    CFRelease(v39);
    if (v15)
    {
      goto LABEL_65;
    }

    goto LABEL_54;
  }

  OUTLINED_FUNCTION_41_14();
  v15 = FigSignalErrorAtGM();
  if (!v15)
  {
LABEL_54:
    if (!dword_1EAF17490)
    {
      goto LABEL_65;
    }

    v40 = OUTLINED_FUNCTION_6_76();
    if (os_log_type_enabled(v40, type))
    {
      v41 = v50;
    }

    else
    {
      v41 = v50 & 0xFFFFFFFE;
    }

    if (v41)
    {
      v42 = *(v4 + 336);
      valuePtr[0] = 136316930;
      OUTLINED_FUNCTION_20_21(v42);
      v57 = HIDWORD(v46);
      OUTLINED_FUNCTION_10_43(v43, v45, v46, v47, v48, SHIDWORD(v48));
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_64;
  }

LABEL_65:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v15;
}

void fampb_TimebaseTimerListener()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    fampb_UpdateLocalBitrate();

    CFRelease(v1);
  }
}

uint64_t fampb_createRecordABREventEntryForNowAndInsertQ(const void *a1, uint64_t **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  if (!*(DerivedStorage + 112))
  {
    return 0;
  }

  if (a2)
  {
    v5 = DerivedStorage;
    MonitorDataSize = fampb_serializedRecordDataGetMonitorDataSize();
    if (*(v5 + 116) < FigNetworkHistoryGetSerializedRecordByteDataSize() + MonitorDataSize)
    {
      fampb_submitNetworkHistory();
      fampb_releaseRecordingData(a1);
      RecordABREventEntry = 0;
      *(v5 + 113) = 1;
    }

    else
    {
      v7 = CFGetAllocator(a1);
      RecordABREventEntry = fampb_createRecordABREventEntry(v7, &v13);
      v9 = v13;
      if (RecordABREventEntry)
      {
        if (v13)
        {
          v12 = CFGetAllocator(a1);
          CFAllocatorDeallocate(v12, v9);
        }
      }

      else
      {
        v13[5] = 0;
        v10 = *(v5 + 192);
        v9[6] = v10;
        *v10 = v9;
        *(v5 + 192) = v9 + 5;
        ++*(v5 + 176);
        *v9 = FigGetUpTimeNanoseconds();
        *a2 = v9;
      }
    }

    return RecordABREventEntry;
  }

  OUTLINED_FUNCTION_243();

  return FigSignalErrorAtGM();
}

uint64_t fampb_getRequiredBWForLowLatencyAlternate(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 80))
  {
    return 0;
  }

  if (*(a1 + 81))
  {
    v4 = fampb_copyLowerSwitchCandidate(a1, a2, 0);
    if (v4)
    {
      v5 = v4;
      ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(a2);
      v7 = FigAlternateGetPeakBitRate(v5) + ExpectedAverageBitrate;
      CFRelease(v5);
      return v7;
    }

    return 0;
  }

  return FigAlternateGetExpectedAverageBitrate(a2);
}

BOOL fampb_updateGroupBandwidthWeightOnPredictor()
{
  v12 = 0.0;
  v10 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = 0.0;
  if (FigPlayerResourceArbiterGetGlobalSingleton(&v10) || (v2 = *(DerivedStorage + 48), AllocatorForMedia = FigGetAllocatorForMedia(), (v4 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v4(v2, 0x1F0B63678, AllocatorForMedia, &cf))
  {
    Float32 = 0;
  }

  else
  {
    FigCFNumberGetFloat32();
    v1 = v5;
    FigPlayerResourceArbiterGetNetworkBudgetForConsumer(v10, *(DerivedStorage + 520), &v12);
    FigGetAllocatorForMedia();
    Float32 = FigCFNumberCreateFloat32();
    if (Float32)
    {
      v7 = *(DerivedStorage + 48);
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v8)
      {
        v8(v7, 0x1F0B63678, Float32);
      }
    }

    else
    {
      FigSignalErrorAtGM();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Float32)
  {
    CFRelease(Float32);
  }

  return v12 > v1;
}

double fampb_highestValidDeclaredSampleRate(uint64_t a1)
{
  theArray = 0;
  if (fampb_copyValidAlternateList(*(a1 + 264), &theArray))
  {
    MaxAudioSampleRate = 0.0;
  }

  else
  {
    v1 = 0;
    MaxAudioSampleRate = 0.0;
    while (1)
    {
      Count = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      if (v1 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v1);
      if (FigAlternateGetMaxAudioSampleRate(ValueAtIndex) > MaxAudioSampleRate)
      {
        v5 = CFArrayGetValueAtIndex(theArray, v1);
        MaxAudioSampleRate = FigAlternateGetMaxAudioSampleRate(v5);
      }

      ++v1;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return MaxAudioSampleRate;
}

uint64_t fampb_configurePlaybackFilterForUpdatedProperties(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = 0;
  v9 = 0;
  if (*(DerivedStorage + 767))
  {
    v6 = DerivedStorage;
    if (fampb_getPredictionBandwidth(DerivedStorage, &v9, (DerivedStorage + 408)))
    {
      return 0;
    }

    if (*(v6 + 272))
    {
      v7 = &v9;
    }

    else
    {
      v7 = (v6 + 400);
    }

    v5 = *v7;
    v9 = *v7;
  }

  return fampb_configurePlaybackFilterAsync(a1, v5, a2);
}

uint64_t fampb_recordCurrentAlternate(const void *a1, const void *a2, const void *a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 112))
  {
    v11 = 0;
    v12 = 0;
    result = fampb_createRecordABREventEntryForNowAndInsertQ(a1, &v12);
    v7 = v12;
    if (v12)
    {
      if (a2)
      {
        v8 = CFRetain(a2);
        v7 = v12;
      }

      else
      {
        v8 = 0;
      }

      v7[2] = v8;
      *(v7 + 2) = 13;
      result = fampb_createRecordingDecisionAlternateEntryAndInsertQ(a1, &v11);
      if (!result)
      {
        v9 = v11;
        if (v11)
        {
          *v11 = *v12;
          if (a2)
          {
            v10 = CFRetain(a2);
            v9 = v11;
          }

          else
          {
            v10 = 0;
          }

          v9[1] = v10;
          if (a3)
          {
            result = CFRetain(a3);
            v9 = v11;
          }

          else
          {
            result = 0;
          }

          v9[2] = result;
        }
      }
    }
  }

  return result;
}

uint64_t fampb_updateNetworkSpecifierOnArbiter()
{
  v20 = 0;
  v21 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  GlobalSingleton = FigPlayerResourceArbiterGetGlobalSingleton(&v20);
  if (GlobalSingleton)
  {
    goto LABEL_19;
  }

  GlobalSingleton = FigPlayerResourceArbiterNetworkSpecifierCreate(&cf);
  if (GlobalSingleton)
  {
    goto LABEL_19;
  }

  v2 = DerivedStorage[34];
  if (v2)
  {
    v3 = cf;
    PeakBitRate = FigAlternateGetPeakBitRate(v2);
    FigPlayerResourceArbiterNetworkSpecifierSetCurrentBitrate(v3, PeakBitRate);
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  GlobalSingleton = fampb_copyAlternateListSortedByQuality(DerivedStorage + 33, AllocatorForMedia, 1, &v21);
  if (GlobalSingleton)
  {
LABEL_19:
    v17 = GlobalSingleton;
  }

  else
  {
    LastValue = FigCFArrayGetLastValue();
    FirstValue = FigCFArrayGetFirstValue();
    FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
    if (LastValue)
    {
      v9 = cf;
      v10 = FigAlternateGetPeakBitRate(LastValue);
      FigPlayerResourceArbiterNetworkSpecifierSetHighestBitrate(v9, v10);
    }

    if (FirstValue)
    {
      v11 = cf;
      v12 = FigAlternateGetPeakBitRate(FirstValue);
      FigPlayerResourceArbiterNetworkSpecifierSetLowestBitrate(v11, v12);
    }

    if (FirstIndexOfValue < 1)
    {
      v16 = cf;
      v15 = 0;
    }

    else
    {
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      v14 = cf;
      v15 = FigAlternateGetPeakBitRate(ValueAtIndex);
      v16 = v14;
    }

    FigPlayerResourceArbiterNetworkSpecifierSetPriorBitrate(v16, v15);
    FigPlayerResourceArbiterSetNetworkSpecifierForConsumer(v20, cf, DerivedStorage[65]);
    v17 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v17;
}

uint64_t fampb_setStartsOnFirstEligibleVariant(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 346) = a2 == 0;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 346) = CFPreferenceNumberWithDefault;
  OUTLINED_FUNCTION_30_11();
  result = fampb_createRecordABREventEntryForNowAndInsertQ(a1, v6);
  if (v8)
  {
    *(v8 + 16) = CFPreferenceNumberWithDefault;
    *(v8 + 8) = 11;
  }

  return result;
}

uint64_t fampb_recordRecoveryAlternate(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_30_11();
  result = fampb_createRecordABREventEntryForNowAndInsertQ(v3, v4);
  v6 = v7;
  if (v7)
  {
    if (a2)
    {
      result = CFRetain(a2);
      v6 = v7;
    }

    else
    {
      result = 0;
    }

    *(v6 + 16) = result;
    *(v6 + 8) = 15;
  }

  return result;
}

void fampb_setupResourceArbiter()
{
  v9 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigPlayerResourceArbiterGetGlobalSingleton(&v9))
  {
    v1 = FigRCLCopyCFType(*(DerivedStorage + 752), @"enableNetworkArbitration");
    v2 = v1;
    if (v1)
    {
      v3 = v9;
      v4 = *(DerivedStorage + 520);
      Value = CFBooleanGetValue(v1);
      FigPlayerResourceArbiterSetSupportsNetworkArbitration(v3, v4, 1, Value);
    }

    if (!FigPlayerResourceArbiterSetStorebagForConsumer(v9, *(DerivedStorage + 520), *(DerivedStorage + 752)) && !FigPlayerResourceArbiterCopyNetworkHistoryForConsumer(v9, *(DerivedStorage + 520), &cf))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      v6 = *(DerivedStorage + 48);
      v7 = cf;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v8)
      {
        v8(v6, 0x1F0B63658, v7);
      }

      if (!fampb_updateNetworkSpecifierOnArbiter())
      {
        fampb_updateGroupBandwidthWeightOnPredictor();
      }
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t fampb_configurePlaybackFilterAsync(const void *a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context = 0;
  v7 = fampb_createPlaybackFilterConfigurationRec(a1, a2, a3, &context);
  if (!v7)
  {
    dispatch_async_f(*(DerivedStorage + 32), context, fampb_configurePlaybackFilterUnlocked);
  }

  return v7;
}

uint64_t fampb_createRecordingDecisionAlternateEntryAndInsertQ(const void *a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 112))
  {
    return 0;
  }

  if (a2)
  {
    v5 = DerivedStorage;
    v6 = CFGetAllocator(a1);
    v7 = MEMORY[0x19A8CC720](v6, 40, 0x10E0040ED536471, 0);
    v8 = v7;
    if (v7)
    {
      *(v7 + 32) = 0;
      *v7 = 0u;
      *(v7 + 16) = 0u;
LABEL_5:
      result = 0;
      *(v8 + 24) = 0;
      v10 = *(v5 + 168);
      *(v8 + 32) = v10;
      *v10 = v8;
      *(v5 + 168) = v8 + 24;
      ++*(v5 + 152);
      *a2 = v8;
      return result;
    }

    OUTLINED_FUNCTION_243();
    result = FigSignalErrorAtGM();
    if (!result)
    {
      goto LABEL_5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM();
  }

  return result;
}

void fampb_recordAddNewAlternates(const void *a1, CFArrayRef *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v7.length = CFArrayGetCount(*a2);
    v7.location = 0;
    if (!CFArrayContainsValue(v2, v7, a1))
    {
      v5 = *a2;

      CFArrayAppendValue(v5, a1);
    }
  }
}

void fampb_switchLowTimerProcUnlocked()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    MainSegmentBytesInTransitUnlocked = fampb_getMainSegmentBytesInTransitUnlocked();
    FigSimpleMutexLock();
    *(DerivedStorage + 392) = MainSegmentBytesInTransitUnlocked;
    TimeClampedAboveAnchorTime = CMBaseObjectGetDerivedStorage();
    v12 = TimeClampedAboveAnchorTime;
    if ((*(TimeClampedAboveAnchorTime + 572) & 1) == 0)
    {
      goto LABEL_20;
    }

    v47 = 0uLL;
    v48 = 0;
    if (*(TimeClampedAboveAnchorTime + 740))
    {
      v48 = *(TimeClampedAboveAnchorTime + 744);
      v47 = *(TimeClampedAboveAnchorTime + 728);
    }

    else
    {
      TimeClampedAboveAnchorTime = CMTimebaseGetTimeClampedAboveAnchorTime();
    }

    v13 = (v12 + 560);
    v14 = *(v12 + 420);
    if (v14 >= 0.0)
    {
      v15 = OUTLINED_FUNCTION_14_37(TimeClampedAboveAnchorTime, v5, v6, v7, v8, v9, v10, v11, v43, *(&v43 + 1), v44, time2.value, *&time2.timescale, time2.epoch, v47, v48);
      CMTimeAdd(v17, v15, v16);
      OUTLINED_FUNCTION_8_44();
      TimeClampedAboveAnchorTime = CMTimeCompare(&time1, &time2);
      if (TimeClampedAboveAnchorTime >= 1)
      {
        OUTLINED_FUNCTION_8_44();
        CMTimebaseSetTimerDispatchSourceNextFireTime(v18, v19, &time1, 1u);
        if (*(v12 + 740))
        {
          OUTLINED_FUNCTION_33_17();
        }

        else
        {
          v20 = CMTimebaseGetTimeClampedAboveAnchorTime();
        }

        if (OUTLINED_FUNCTION_32_16(v20, v21, v22, v23, v24, v25, v26, v27, v43, *(&v43 + 1), v44, time2.value, *&time2.timescale, time2.epoch, v47, *(&v47 + 1), v48, v49, v50, v51) > 0)
        {
LABEL_17:
          *(v12 + 536) = *v13;
          *(v12 + 552) = *(v12 + 576);
          v41 = MEMORY[0x1E6960C70];
          *v13 = *MEMORY[0x1E6960C70];
          *(v12 + 576) = *(v41 + 16);
LABEL_26:
          FigSimpleMutexUnlock();
          CFRelease(v1);
          return;
        }

LABEL_20:
        v42 = MEMORY[0x1E6960C70];
        *(v12 + 536) = *MEMORY[0x1E6960C70];
        *(v12 + 552) = *(v42 + 16);
        if (*(DerivedStorage + 272))
        {
          if (*(DerivedStorage + 740))
          {
            v43 = *(DerivedStorage + 728);
          }

          else
          {
            CMTimebaseGetTimeClampedAboveAnchorTime();
          }

          if (BYTE12(v43))
          {
            fampb_attemptToSwitch(v1, 0, 0);
          }
        }

        goto LABEL_26;
      }

      v14 = *(v12 + 420);
    }

    if (v14 < 0.0)
    {
      v28 = OUTLINED_FUNCTION_14_37(TimeClampedAboveAnchorTime, v5, v6, v7, v8, v9, v10, v11, v43, *(&v43 + 1), v44, time2.value, *&time2.timescale, time2.epoch, v47, v48);
      CMTimeSubtract(v30, v28, v29);
      OUTLINED_FUNCTION_8_44();
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        OUTLINED_FUNCTION_8_44();
        CMTimebaseSetTimerDispatchSourceNextFireTime(v31, v32, &time1, 1u);
        if (*(v12 + 740))
        {
          OUTLINED_FUNCTION_33_17();
        }

        else
        {
          v33 = CMTimebaseGetTimeClampedAboveAnchorTime();
        }

        if (OUTLINED_FUNCTION_32_16(v33, v34, v35, v36, v37, v38, v39, v40, v43, *(&v43 + 1), v45, time2.value, *&time2.timescale, time2.epoch, v47, *(&v47 + 1), v48, v49, v50, v51) < 0)
        {
          goto LABEL_17;
        }
      }
    }

    goto LABEL_20;
  }
}

uint64_t fampb_shouldSwitchUpConcurrently(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *a4)
{
  cf = *a4;
  if (fampb_proportionOfFullBufferForConcurrentSwitching(a1, &cf) < 0.5 || *(a1 + 16))
  {
    return 0;
  }

  if (!*(a1 + 81))
  {
    goto LABEL_4;
  }

  cf.value = 0;
  if (fampb_copyAlternateListSortedByQuality(a1, *MEMORY[0x1E695E480], 0, &cf))
  {
    goto LABEL_26;
  }

  if (!cf.value)
  {
LABEL_4:
    v8 = 0;
    goto LABEL_5;
  }

  Count = CFArrayGetCount(cf.value);
  if (Count < 2)
  {
LABEL_26:
    v8 = 0;
  }

  else
  {
    v24 = Count;
    v25 = 1;
    while (CFArrayGetValueAtIndex(cf.value, v25 - 1) != *(a1 + 8))
    {
      if (v24 == ++v25)
      {
        goto LABEL_26;
      }
    }

    ValueAtIndex = CFArrayGetValueAtIndex(cf.value, v25);
    v8 = CFRetain(ValueAtIndex);
  }

  if (cf.value)
  {
    CFRelease(cf.value);
  }

LABEL_5:
  ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(*(a1 + 8));
  if (!*(a1 + 81))
  {
    if (a2 - ExpectedAverageBitrate <= ExpectedAverageBitrate)
    {
      goto LABEL_19;
    }

LABEL_17:
    v17 = (a1 + 200);
    if (*(a1 + 200))
    {
      v18 = 1;
      goto LABEL_22;
    }

LABEL_39:
    OUTLINED_FUNCTION_28_18();
    if (v29 ^ v30 | v28)
    {
      v18 = 1;
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    }

    else
    {
      UpTimeNanoseconds = ((*(a1 + 208) - v27) * 1000000000.0);
      v18 = 1;
    }

    goto LABEL_21;
  }

  if (!v8)
  {
    goto LABEL_19;
  }

  v10 = OUTLINED_FUNCTION_298();
  if (fampb_getRequiredBWForLowLatencyAlternate(v10, v11) * 1.1 >= a2)
  {
    goto LABEL_19;
  }

  if (!*(a1 + 81))
  {
    goto LABEL_17;
  }

  if (*(a1 + 192) < 1 || FigGetUpTimeNanoseconds() <= *(a1 + 192))
  {
    v12 = OUTLINED_FUNCTION_298();
    v14 = fampb_copyLowerSwitchCandidate(v12, v13, 1);
    cf = *a4;
    v15 = fampb_concurrentSwitchDownSafetyFactor(a1, v14, v8, &cf, a3, a2, 0, 0);
    if (v14)
    {
      CFRelease(v14);
    }

    v17 = (a1 + 200);
    v16 = *(a1 + 200);
    if (v15 < 1.1)
    {
      v18 = 0;
      if (!v16)
      {
LABEL_23:
        CFRelease(v8);
        return v18;
      }

      UpTimeNanoseconds = 0;
      goto LABEL_21;
    }

    if (v16)
    {
      v18 = 1;
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_19:
  v18 = 0;
  v21 = *(a1 + 200);
  v20 = (a1 + 200);
  if (!v21)
  {
    goto LABEL_22;
  }

  UpTimeNanoseconds = 0;
  v17 = v20;
LABEL_21:
  *v17 = UpTimeNanoseconds;
LABEL_22:
  if (v8)
  {
    goto LABEL_23;
  }

  return v18;
}

float fampb_concurrentSwitchDownSafetyFactor(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *a4, uint64_t a5, uint64_t a6, CMTime *a7, CMTime *a8)
{
  lhs = *a4;
  *&v25.value = kStallThreshold;
  v25.epoch = 0;
  CMTimeSubtract(&time, &lhs, &v25);
  Seconds = CMTimeGetSeconds(&time);
  lhs = **&MEMORY[0x1E6960C70];
  v16 = *(a1 + 184);
  if (v16 <= 0.0)
  {
    time = *(a1 + 100);
    v16 = CMTimeGetSeconds(&time) * 0.5;
  }

  v17 = *(a1 + 176);
  v18 = 0.0;
  v19 = NAN;
  if (v17 > 0.0 && a3 != a2 && a3 && a6)
  {
    v20 = v16 + v17;
    PeakBitRate = FigAlternateGetPeakBitRate(a2);
    v22 = *(a1 + 128);
    if (v22 <= 0)
    {
      v23 = 0;
    }

    else
    {
      v23 = 8 * v22;
    }

    v19 = a5 / 1000000000.0 + a5 / 1000000000.0 + (v23 + (v20 * PeakBitRate)) / a6;
    CMTimeMakeWithSeconds(&lhs, fmax(v16 + Seconds - v19, 0.0), 1000000);
    time = lhs;
    v18 = fampb_proportionOfFullBufferForConcurrentSwitching(a1, &time);
  }

  if (a7)
  {
    CMTimeMakeWithSeconds(&time, v19, 1000000);
    *a7 = time;
  }

  if (a8)
  {
    *a8 = lhs;
  }

  return v18;
}

uint64_t fampb_shouldSwitchDownConcurrently(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1E6960C70];
  v6 = *MEMORY[0x1E6960C70];
  *a5 = *MEMORY[0x1E6960C70];
  v7 = *(v5 + 16);
  *(a5 + 16) = v7;
  if (!*(a1 + 80) || *(a1 + 160) == 0.0)
  {
    goto LABEL_3;
  }

  v39 = v6;
  *&v40.value = *a4;
  v40.epoch = *(a4 + 16);
  v15 = *(a1 + 8);
  v14 = *(a1 + 16);
  if (v14)
  {
    PeakBitRate = FigAlternateGetPeakBitRate(v14);
    v20 = FigAlternateGetPeakBitRate(*(a1 + 8));
    v16 = PeakBitRate > v20;
    v17 = PeakBitRate <= v20;
    v18 = v16;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 1;
  }

  if (*(a1 + 81) && (v16 || v17))
  {
    v15 = *(a1 + 16);
  }

  if (fampb_getRequiredBWForLowLatencyAlternate(a1, v15) >= a2)
  {
    if (!*(a1 + 81) || *(a1 + 128) < 1)
    {
      goto LABEL_30;
    }

    v23 = FigAlternateGetPeakBitRate(v15) > a2 || v16;
    v21 = v17 | v23;
    v22 = (v17 | v23) ^ 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
  }

  if ((v18 & v22) != 1 || (v43 = v40, fampb_proportionOfFullBufferForConcurrentSwitching(a1, &v43) >= 1.0))
  {
    if (((v18 ^ 1 | v21) & 1) == 0)
    {
      if (*(a1 + 192) < 1)
      {
        goto LABEL_3;
      }

      if (FigGetUpTimeNanoseconds() <= *(a1 + 192))
      {
        goto LABEL_3;
      }

      if (!*(a1 + 81))
      {
        goto LABEL_3;
      }

      v24 = fampb_copyLowerSwitchCandidate(a1, *(a1 + 8), 0);
      if (!v24)
      {
        goto LABEL_3;
      }

      v25 = v24;
      *&v43.value = v39;
      v43.epoch = v7;
      v26 = *(a1 + 8);
      v42 = v40;
      v27 = fampb_concurrentSwitchDownSafetyFactor(a1, v24, v26, &v42, a3, a2, 0, &v43);
      v28 = v27 <= 1.0;
      if (v27 > 1.0)
      {
        v41 = v43;
        fampb_nextTimeToCheckConcurrentSwitchDown(&v41, &v42, v27, 1.0);
        *a5 = v42;
      }

      CFRelease(v25);
      v21 = v28;
    }

    if (v21)
    {
      goto LABEL_30;
    }

LABEL_3:
    v9 = 1;
    return v9 ^ 1u;
  }

LABEL_30:
  if (*(a1 + 16))
  {
    if (fampb_trialSwitchDownInProgress(a1))
    {
      v9 = *(a1 + 81) == 0;
    }

    else
    {
      OUTLINED_FUNCTION_36_16();
      v9 = OUTLINED_FUNCTION_54_13(0.25, v29, v30, v31, v32, v33);
      if (v9)
      {
        v9 = FigAlternateGetPeakBitRate(*(a1 + 16)) < a2;
      }
    }
  }

  else if (*(a1 + 81))
  {
    v9 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_36_16();
    v9 = OUTLINED_FUNCTION_54_13(0.75, v34, v35, v36, v37, v38);
  }

  return v9 ^ 1u;
}

uint64_t fampb_canSwitchDownConcurrentlyWithoutStall(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *a7)
{
  v13 = *(a1 + 81);
  v14 = fampb_copyLowerSwitchCandidate(a1, a6, *(a1 + 81) == 0);
  if (v14)
  {
    v15 = v14;
    OUTLINED_FUNCTION_35_12();
    canSwitchDownConcurrentlyToAlternateWithoutStall = fampb_canSwitchDownConcurrentlyToAlternateWithoutStall(v16, a1, v17, a4, a5, a6, a7, a2);
    v19 = canSwitchDownConcurrentlyToAlternateWithoutStall;
    if (v13)
    {
      v20 = canSwitchDownConcurrentlyToAlternateWithoutStall == 0;
    }

    else
    {
      v20 = 0;
    }

    v21 = !v20;
    if (v20)
    {
      v30 = a5;
      while (1)
      {
        v24 = fampb_copyLowerSwitchCandidate(a1, v15, 0);
        v22 = v24;
        if (!v24)
        {
          break;
        }

        CFRetain(v24);
        CFRelease(v15);
        CFRelease(v22);
        OUTLINED_FUNCTION_35_12();
        v26 = fampb_canSwitchDownConcurrentlyToAlternateWithoutStall(v22, a1, v25, a4, v30, a6, a7, a2);
        v19 = v26;
        if (v13)
        {
          v27 = v26 == 0;
        }

        else
        {
          v27 = 0;
        }

        v21 = !v27;
        v15 = v22;
        if (!v27)
        {
          goto LABEL_21;
        }
      }

      CFRelease(v15);
    }

    else
    {
      v22 = v15;
    }

LABEL_21:
    v23 = v21 ^ 1;
    if (a7)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v22 = 0;
    v23 = 1;
    v19 = 1;
    if (a7)
    {
LABEL_22:
      v28 = MEMORY[0x1E6960C70];
      *&a7->value = *MEMORY[0x1E6960C70];
      a7->epoch = *(v28 + 16);
    }
  }

  if ((v23 & 1) == 0)
  {
    CFRelease(v22);
  }

  return v19;
}

uint64_t fampb_rejectSwitchDueToStallRisk(uint64_t a1, uint64_t a2, CMTime *a3, CMTime *a4, double a5)
{
  v19 = 0u;
  v18 = 0u;
  v6 = *(a1 + 48);
  if (!v6)
  {
    return 0;
  }

  *(&v18 + 4) = *(a1 + 224);
  *&v19 = *(a1 + 240);
  v7 = *(a1 + 160);
  v17 = *(a1 + 156);
  v15 = *(a1 + 56);
  v13 = *(a1 + 8);
  BYTE12(v19) = *(a1 + 252);
  *(&v19 + 13) = *(a1 + 253);
  BYTE1(v18) = *(a1 + 85);
  v8 = *(a1 + 232);
  v14 = *(a1 + 72);
  v16 = *(a1 + 144);
  v9 = *(a1 + 248);
  HIDWORD(v18) = v8;
  DWORD2(v19) = v9;
  LOBYTE(v18) = v7 != 0.0;
  v12 = *a3;
  v11 = *a4;
  return FigAlternateRejectSwitchDueToStallRisk(&v13, v6, a2, &v12, &v11, a5);
}

uint64_t FigAlternatePlaybackBitrateMonitorReportStall_cold_1(uint64_t a1)
{
  v1 = *(a1 + 200) + 1;
  *(a1 + 200) = v1;
  OUTLINED_FUNCTION_30_11();
  result = fampb_createRecordABREventEntryForNowAndInsertQ(v3, v2);
  if (v5)
  {
    *(v5 + 16) = v1;
    *(v5 + 8) = 23;
  }

  return result;
}

uint64_t FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fampb_copyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fampb_UpdateLocalBitrate_cold_1(double *a1, const void *a2, double a3)
{
  *a1 = a3;
  OUTLINED_FUNCTION_30_11();
  fampb_createRecordABREventEntryForNowAndInsertQ(a2, v5);
  if (v7)
  {
    *(v7 + 16) = a3;
    *(v7 + 8) = 4;
  }

  return fampb_setBandwidthConditions(a2);
}

uint64_t fampb_createRecordABREventEntry_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fampb_copyFilterForCurrentState_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fampb_serializeRecordedAlternateListToBitMap_cold_1(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t MTAudioProcessingTapRemoteGetServerObjectToken(uint64_t a1, void *a2)
{
  v4 = 0;
  result = MTAudioProcessingTapXPCRemoteGetObjectID(a1, &v4);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

OSStatus MTAudioProcessingTapCreate(CFAllocatorRef allocator, const MTAudioProcessingTapCallbacks *callbacks, MTAudioProcessingTapCreationFlags flags, MTAudioProcessingTapRef *tapOut)
{
  if (callbacks->version || !callbacks->process || (flags & 3) == 0 || (flags & 3) == 3)
  {
    goto LABEL_14;
  }

  MTAudioProcessingTapGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
LABEL_15:
    v15 = v7;
    goto LABEL_13;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(&callbacks->init + 4);
  v9 = *(&callbacks->prepare + 4);
  process_high = HIDWORD(callbacks->process);
  *(DerivedStorage + 32) = *&callbacks->version;
  *(DerivedStorage + 48) = v10;
  *(DerivedStorage + 80) = process_high;
  *(DerivedStorage + 64) = v9;
  *(DerivedStorage + 112) = flags;
  *(DerivedStorage + 128) = 0;
  v12 = *(DerivedStorage + 44);
  if (v12)
  {
    v12(0, *(DerivedStorage + 36), DerivedStorage + 120);
  }

  *(DerivedStorage + 16) = FigSimpleMutexCreate();
  *(DerivedStorage + 24) = 0;
  v13 = aptapR_EnsureClientEstablished(*(DerivedStorage + 112));
  *(DerivedStorage + 136) = v13;
  if (!v13)
  {
LABEL_14:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v7 = FigSignalErrorAtGM();
    goto LABEL_15;
  }

  v7 = OUTLINED_FUNCTION_3_97();
  if (v7)
  {
    goto LABEL_15;
  }

  xpc_dictionary_set_uint64(0, "Flags", flags);
  v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v7)
  {
    goto LABEL_15;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
  v15 = OUTLINED_FUNCTION_2_118(uint64);
  if (!v15)
  {
    *tapOut = 0;
  }

LABEL_13:
  FigXPCRelease();
  FigXPCRelease();
  return v15;
}

uint64_t aptapR_GetSourceAudio(uint64_t a1, uint64_t a2, UInt32 a3, AudioBufferList *a4, AudioQueueProcessingTapFlags *a5, _OWORD *a6, void *a7)
{
  outFlags = 0;
  outNumberFrames = 0;
  if ((*(CMBaseObjectGetDerivedStorage() + 112) & 4) != 0)
  {
    return 4294954516;
  }

  if (*(a2 + 96))
  {
    result = ATSubmixTapGetSourceAudio();
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = AudioQueueProcessingTapGetSourceAudio(*(a2 + 8), a3, *(a2 + 104), &outFlags, &outNumberFrames, a4);
    if (result)
    {
      return result;
    }
  }

  if (a5)
  {
    *a5 = outFlags;
  }

  if (a7)
  {
    *a7 = outNumberFrames;
  }

  if (!a6)
  {
    return 0;
  }

  aptapR_GetMediaTimeRange(a2, v15);
  result = 0;
  v14 = v15[1];
  *a6 = v15[0];
  a6[1] = v14;
  a6[2] = v15[2];
  return result;
}

uint64_t MTMultitrackAudioProcessingTapCreate(uint64_t a1, void *a2, unsigned int a3, void *a4)
{
  if (*a2 >= 2uLL)
  {
    goto LABEL_16;
  }

  if (*a2)
  {
    if (!a2[9])
    {
      goto LABEL_16;
    }
  }

  else if (!a2[6])
  {
    goto LABEL_16;
  }

  if ((a3 & 3) == 0 || (a3 & 3) == 3)
  {
    goto LABEL_16;
  }

  MTAudioProcessingTapGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
LABEL_17:
    v12 = v7;
    goto LABEL_14;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memcpy((DerivedStorage + 32), a2, 0x50uLL);
  *(DerivedStorage + 112) = a3;
  *(DerivedStorage + 128) = 1;
  v9 = *(DerivedStorage + 48);
  if (v9)
  {
    v9(0, *(DerivedStorage + 40), DerivedStorage + 120);
  }

  *(DerivedStorage + 16) = FigSimpleMutexCreate();
  *(DerivedStorage + 24) = 0;
  v10 = aptapR_EnsureClientEstablished(*(DerivedStorage + 112));
  *(DerivedStorage + 136) = v10;
  if (!v10)
  {
LABEL_16:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v7 = FigSignalErrorAtGM();
    goto LABEL_17;
  }

  v7 = OUTLINED_FUNCTION_3_97();
  if (v7)
  {
    goto LABEL_17;
  }

  xpc_dictionary_set_uint64(0, "Flags", a3 | 0x100000000);
  v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v7)
  {
    goto LABEL_17;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
  v12 = OUTLINED_FUNCTION_2_118(uint64);
  if (!v12)
  {
    *a4 = 0;
  }

LABEL_14:
  FigXPCRelease();
  FigXPCRelease();
  return v12;
}

uint64_t aptapR_BaseClass_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 1;
  FigXPCRemoteClientDisassociateObject();
  if (!*(DerivedStorage + 1) && (FigXPCCreateBasicMessage() || FigXPCRemoteClientSendSyncMessage()))
  {
    return FigXPCRelease();
  }

  for (i = *(DerivedStorage + 24); i; i = *i)
  {
    aptapR_UnprepareTapIfPrepared(a1, i);
  }

  if (*(DerivedStorage + 128))
  {
    v4 = *(DerivedStorage + 56);
    if (!v4)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v4 = *(DerivedStorage + 52);
  if (v4)
  {
LABEL_10:
    v4(a1);
  }

LABEL_16:
  while (1)
  {
    v6 = *(DerivedStorage + 24);
    if (!v6)
    {
      break;
    }

    v5 = *(v6 + 1);
    *(DerivedStorage + 24) = *v6;
    if (v5)
    {
      if (*(v6 + 96))
      {
        ATSubmixTapDispose();
      }

      else
      {
        AudioQueueProcessingTapDispose(v5);
      }
    }

    free(v6);
  }

  if (*(DerivedStorage + 16))
  {
    FigSimpleMutexDestroy();
  }

  return FigXPCRelease();
}

uint64_t MTAudioProcessingTapXPCRemoteGetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTAudioProcessingTapXPCRemoteGetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTAudioProcessingTapGetSourceAudio_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTAudioProcessingTapGetSourceAudio_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTAudioProcessingTapGetMediaTimeRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTAudioProcessingTapGetMediaTimeRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTAudioProcessingTapGetTrackSourceAudio_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTAudioProcessingTapGetTrackSourceAudio_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTAudioProcessingTapGetTrackSourceAudio_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTAudioProcessingTapGetStreamSourceAudio_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTAudioProcessingTapGetStreamSourceAudio_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTAudioProcessingTapGetStreamSourceAudio_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTAudioProcessingTapGetTrackMediaTimeRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTAudioProcessingTapGetTrackMediaTimeRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTAudioProcessingTapGetTrackMediaTimeRange_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTAudioProcessingTapGetStreamMediaTimeRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTAudioProcessingTapGetStreamMediaTimeRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTAudioProcessingTapGetStreamMediaTimeRange_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaProcessorCreateForMakingDataReady(uint64_t a1, const void *a2, const void *a3, NSObject *a4, uint64_t a5, uint64_t *a6)
{
  v17 = 0;
  v18 = 0;
  cf = 0;
  v11 = FigSampleBufferProcessorCreateForMakingDataReady(a1, &v18);
  if (v11 || (v11 = FigSampleBufferProviderCreateForBufferQueue(*MEMORY[0x1E695E480], a2, &v17), v11))
  {
    v14 = v11;
  }

  else
  {
    v12 = FigActivitySchedulerCreateForExistingDispatchQueue(a1, a4, &cf);
    v13 = cf;
    if (!v12)
    {
      v14 = FigMediaProcessorCreate(a1, v18, v17, a3, cf, a6);
      v13 = cf;
      if (!cf)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v14 = v12;
    if (cf)
    {
LABEL_5:
      CFRelease(v13);
    }
  }

LABEL_6:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v14;
}

uint64_t FigPathwayCloningApplyURIReplacement(const __CFURL *a1, int a2, const void *a3, uint64_t a4, CFTypeRef *a5)
{
  if (!a5)
  {
    goto LABEL_56;
  }

  v5 = a5;
  v6 = a1;
  *a5 = 0;
  if (!a1)
  {
    return 0;
  }

  v8 = MEMORY[0x1E695E480];
  if (!a3)
  {
    goto LABEL_11;
  }

  if (!a2)
  {
    URIReplacementPerVariantURIs = FigPathwayCloneGetURIReplacementPerVariantURIs();
    if (URIReplacementPerVariantURIs)
    {
      goto LABEL_8;
    }

LABEL_11:
    URIReplacementHost = FigPathwayCloneGetURIReplacementHost();
    if (!URIReplacementHost)
    {
      v11 = 0;
      goto LABEL_17;
    }

    cf = 0;
    v13 = FigCFHTTPCreateURLWithHostReplacement(v6, URIReplacementHost, &cf);
    if (!v13)
    {
      v11 = cf;
      if (cf)
      {
        CFRetain(cf);
        if (cf)
        {
          CFRelease(cf);
        }
      }

LABEL_17:
      URIReplacementParams = FigPathwayCloneGetURIReplacementParams();
      if (!URIReplacementParams)
      {
        goto LABEL_46;
      }

      v15 = URIReplacementParams;
      v33 = v5;
      if (v11)
      {
        v16 = v11;
      }

      else
      {
        v16 = v6;
      }

      v17 = CFRetain(v16);
      Count = CFDictionaryGetCount(v15);
      v32 = v6;
      v34 = v11;
      if (Count < 1)
      {
        Mutable = 0;
        v24 = 0;
        v20 = 0;
        v30 = 0;
      }

      else
      {
        v19 = Count;
        v20 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
        CFDictionaryGetKeysAndValues(v15, v20, 0);
        v21 = *v8;
        Mutable = CFArrayCreateMutable(*v8, 0, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          for (i = 0; i != v19; ++i)
          {
            CFArrayAppendValue(Mutable, v20[i]);
          }

          v37.location = 0;
          v37.length = v19;
          CFArraySortValues(Mutable, v37, MEMORY[0x1E695D7F0], 0);
          v24 = 0;
          for (j = 0; j != v19; ++j)
          {
            cf = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(Mutable, j);
            Value = CFDictionaryGetValue(v15, ValueAtIndex);
            if (v24)
            {
              CFRelease(v24);
            }

            v24 = CFStringCreateWithFormat(v21, 0, @"%@=", ValueAtIndex);
            if (!v24)
            {
              OUTLINED_FUNCTION_0_137();
              Param = FigSignalErrorAtGM();
LABEL_53:
              v30 = Param;
              goto LABEL_54;
            }

            Param = FigCFHTTPCreateURLWithQueryParam(v17, v24, Value, &cf);
            if (Param)
            {
              goto LABEL_53;
            }

            v29 = cf;
            if (cf)
            {
              CFRetain(cf);
            }

            if (v17)
            {
              CFRelease(v17);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            v17 = v29;
          }

          if (v29)
          {
            v34 = CFRetain(v29);
            free(v20);
            v30 = 0;
            v5 = v33;
            goto LABEL_39;
          }

          free(v20);
          v30 = 0;
          v34 = 0;
          v5 = v33;
LABEL_41:
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          v6 = v32;
          if (v24)
          {
            CFRelease(v24);
          }

          v11 = v34;
          if (v30)
          {
            goto LABEL_49;
          }

LABEL_46:
          if (!v11)
          {
LABEL_48:
            v30 = 0;
            *v5 = CFRetain(v6);
LABEL_49:
            if (v11)
            {
              CFRelease(v11);
            }

            return v30;
          }

LABEL_47:
          v6 = v11;
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_0_137();
        v30 = FigSignalErrorAtGM();
        v24 = 0;
      }

LABEL_54:
      v5 = v33;
      free(v20);
      v29 = v17;
      if (v17)
      {
LABEL_39:
        CFRelease(v29);
      }

      goto LABEL_41;
    }

    return v13;
  }

  URIReplacementPerVariantURIs = FigPathwayCloneGetURIReplacementPerRenditionURIs();
  if (!URIReplacementPerVariantURIs)
  {
    goto LABEL_11;
  }

LABEL_8:
  v10 = CFDictionaryGetValue(URIReplacementPerVariantURIs, a3);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = CFURLCreateWithString(*v8, v10, 0);
  if (v11)
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_0_137();
LABEL_56:

  return FigSignalErrorAtGM();
}

uint64_t FigSteeringCloneAlternateWithPathwayClone(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3, void *a4)
{
  v25 = 0;
  v26 = 0;
  ID = FigPathwayCloneGetID();
  v23 = 0;
  v24 = 0;
  cf = 0;
  PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(a2);
  StableStreamIdentifier = FigAlternateGetStableStreamIdentifier(a2);
  v11 = FigPathwayCloningApplyURIReplacement(PlaylistAlternateURL, 0, StableStreamIdentifier, a1, &v25);
  if (v11 || (AudioGroupIDString = FigAlternateGetAudioGroupIDString(a2), v11 = figSteeringCreateIndependentMediaGroupLocatorMap(a2, 1936684398, AudioGroupIDString, a3, @"FACCP_AudioGroups", a1, &v24), v11) || (VideoGroupIDString = FigAlternateGetVideoGroupIDString(a2), v11 = figSteeringCreateIndependentMediaGroupLocatorMap(a2, 1986618469, VideoGroupIDString, a3, @"FACCP_VideoGroups", a1, &v23), v11) || (SubtitleGroupIDString = FigAlternateGetSubtitleGroupIDString(a2), v11 = figSteeringCreateIndependentMediaGroupLocatorMap(a2, 1935832172, SubtitleGroupIDString, a3, @"FACCP_SubtitleGroups", a1, &cf), v11))
  {
    v18 = v11;
  }

  else
  {
    v15 = v25;
    UniqueAlternateIndex = FigStreamingPlaylistMakeUniqueAlternateIndex();
    v17 = FigAlternateCopy(a2, 0, v15, v15, 0, 0, 0, 0, 0, 0, 0, 0, ID, 1, UniqueAlternateIndex, v24, v23, cf, 0, &v26);
    v18 = v17;
    v19 = v26;
    if (v26)
    {
      if (!v17)
      {
        StartupScore = FigAlternateGetStartupScore(a2);
        v18 = FigAlternateSetStartupScore(v19, StartupScore);
        if (!v18)
        {
          *a4 = v26;
          v26 = 0;
        }
      }
    }
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return v18;
}

uint64_t figSteeringCreateIndependentMediaGroupLocatorMap(uint64_t a1, int a2, const void *a3, CFMutableDictionaryRef *a4, void *a5, uint64_t a6, void *a7)
{
  cf = 0;
  result = FigAlternateGetMediaGroupLocatorMap(a1, a2);
  if (result)
  {
    v13 = result;
    result = FigAlternateCreationContextCopyMediaGroupLocatorMapForMediaGroupID(a4, a5, a3, &cf);
    v17 = result;
    v14 = cf;
    if (!result)
    {
      if (cf)
      {
LABEL_4:
        result = 0;
        *a7 = v14;
        return result;
      }

      cf = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!cf)
      {
        OUTLINED_FUNCTION_0_137();
        result = FigSignalErrorAtGM();
        v17 = result;
        v14 = cf;
        if (!cf)
        {
          return result;
        }

LABEL_9:
        CFRelease(v14);
        return v17;
      }

      context[0] = &v17;
      context[1] = a6;
      context[2] = &cf;
      CFDictionaryApplyFunction(v13, figSteeringClonePathwayMediaGroup, context);
      result = FigAlternateCreationContextSetMediaGroupLocatorMapForMediaGroupID(a4, a5, a3, cf);
      v17 = result;
      v14 = cf;
      if (!result)
      {
        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_9;
    }
  }

  return result;
}

BOOL FigPathwayValidateStableVariantAndRenditionIDs_cold_1(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0_137();
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  return v3 == 0;
}

uint64_t FigPathwayValidateStableVariantAndRenditionIDs_cold_2(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0_137();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

void FigPathwayValidateStableVariantAndRenditionIDs_cold_3(void *a1, _DWORD *a2)
{
  *a2 = FigSignalErrorAtGM();

  free(a1);
}

uint64_t FigPathwayValidateStableVariantAndRenditionIDs_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPathwayValidateStableVariantAndRenditionIDs_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_137();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSteering_addRenditionIDsFromMediaGroupLocatorMapToSet_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_137();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSteering_addRenditionIDsFromMediaGroupLocatorMapToSet_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSteeringClonePathwayMediaGroup_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_137();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererSRTRegionCreate(void *a1)
{
  if (a1)
  {
    v14 = 0;
    MEMORY[0x19A8D3660](&FigCaptionRendererSRTRegionGetClassID_sRegisterFigCaptionRendererSRTRegionBaseTypeOnce, RegisterFigCaptionRendererSRTRegionBaseType);
    result = CMDerivedObjectCreate();
    if (!result)
    {
      v3 = v14;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 56) = 0;
      *(DerivedStorage + 64) = 0;
      v13 = 0;
      FigCaptionRendererNodeCreate(&v13);
      v5 = v13;
      *DerivedStorage = v13;
      FigCaptionRendererNodeProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v7 = *(ProtocolVTable + 16);
        if (v7)
        {
          v8 = *(v7 + 216);
          if (v8)
          {
            v8(v5, 1);
          }
        }
      }

      v9 = *DerivedStorage;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v10 = CMBaseObjectGetProtocolVTable();
      if (v10)
      {
        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = *(v11 + 232);
          if (v12)
          {
            v12(v9, 1);
          }
        }
      }

      result = 0;
      *a1 = v3;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_HasChildNode_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Layout_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Layout_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Layout_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Layout_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigMetricItemRateChangeEventDeserializeAndCopy(void *a1, void *a2)
{
  v41 = *MEMORY[0x1E6960C70];
  v42 = *(MEMORY[0x1E6960C70] + 16);
  v39 = 0;
  cf = 0;
  v38 = 0;
  if (!a1 || !a2)
  {
    CMTime = FigSignalErrorAtGM();
LABEL_12:
    v36 = CMTime;
    goto LABEL_13;
  }

  int64 = xpc_dictionary_get_int64(a1, "EventID");
  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFDate();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFString();
  if (CMTime)
  {
    goto LABEL_12;
  }

  value = xpc_dictionary_get_value(a1, "Variant");
  CMTime = FigAlternateCreateWithXPCObject(value, 0, &v38);
  if (CMTime)
  {
    goto LABEL_12;
  }

  xpc_dictionary_get_double(a1, "Rate");
  xpc_dictionary_get_double(a1, "PreviousRate");
  switch(int64)
  {
    case 9:
      FigGetAllocatorForMedia();
      v7 = OUTLINED_FUNCTION_0_138();
      CMTime = FigMetricItemStallEventCreateInternal(v8, v9, v10, v11, v12, a2, v7, v13);
      goto LABEL_12;
    case 10:
      FigGetAllocatorForMedia();
      v29 = OUTLINED_FUNCTION_0_138();
      CMTime = FigMetricItemRateChangeEventCreateInternal(v30, v31, v32, v33, v34, a2, v29, v35);
      goto LABEL_12;
    case 11:
      FigGetAllocatorForMedia();
      v14 = OUTLINED_FUNCTION_0_138();
      CMTime = FigMetricItemSeekEventCreateInternal(v15, v16, v17, v18, v19, a2, v14, v20);
      goto LABEL_12;
    case 12:
      v21 = xpc_dictionary_get_BOOL(a1, "DidSeekInBuffer");
      FigGetAllocatorForMedia();
      v22 = OUTLINED_FUNCTION_0_138();
      CMTime = FigMetricItemSeekDidCompleteEventCreateInternal(v23, v24, v25, v26, v27, v21, a2, v22, v28);
      goto LABEL_12;
    default:
      v36 = 0;
      break;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  return v36;
}

uint64_t meirc_serialize(uint64_t a1, void *a2)
{
  value = 0;
  if (!a1 || !a2)
  {
    v8 = FigSignalErrorAtGM();
LABEL_37:
    v15 = v8;
    goto LABEL_35;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v4)
  {
    v5 = v4(a1);
  }

  else
  {
    v5 = -12782;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 48) + 8);
  if (v6)
  {
    v7 = v6(a1);
  }

  else
  {
    v7 = 0;
  }

  v8 = FigAlternateCopyAsXPCObject(v7, &value);
  if (v8)
  {
    goto LABEL_37;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  v10 = v9 ? v9(a1) : -12782;
  xpc_dictionary_set_int64(a2, "EventID", v10);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v11)
  {
    v11(&v23, a1);
  }

  else
  {
    v23 = *MEMORY[0x1E6960C70];
    v24 = *(MEMORY[0x1E6960C70] + 16);
  }

  v8 = FigXPCMessageSetCMTime();
  if (v8)
  {
    goto LABEL_37;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v12)
  {
    v12(a1);
  }

  v8 = FigXPCMessageSetCFDate();
  if (v8)
  {
    goto LABEL_37;
  }

  v13 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v13)
  {
    v14 = v13(a1);
  }

  else
  {
    v14 = 0;
  }

  v15 = FigXPCMessageSetCFString();
  if (!v15)
  {
    xpc_dictionary_set_int64(a2, "EventID", v5);
    v16 = *(*(CMBaseObjectGetVTable() + 48) + 16);
    v17 = 0.0;
    v18.n128_u64[0] = 0;
    if (v16)
    {
      v18.n128_f64[0] = v16(a1, v18);
    }

    xpc_dictionary_set_double(a2, "Rate", v18.n128_f64[0]);
    v19 = *(*(CMBaseObjectGetVTable() + 48) + 24);
    if (v19)
    {
      v17 = v19(a1);
    }

    xpc_dictionary_set_double(a2, "PreviousRate", v17);
    xpc_dictionary_set_value(a2, "Variant", value);
    if (v5 == 12)
    {
      v20 = *(*(CMBaseObjectGetVTable() + 48) + 32);
      if (v20)
      {
        v21 = v20(a1) != 0;
      }

      else
      {
        v21 = 0;
      }

      xpc_dictionary_set_BOOL(a2, "DidSeekInBuffer", v21);
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_35:
  FigXPCRelease();
  return v15;
}

uint64_t FigMetricItemRateChangeEventCreateInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetricItemStallEventCreateInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetricItemSeekEventCreateInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetricItemSeekDidCompleteEventCreateInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t meirc_setSessionID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t meirc_setMediaTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerCreateQueuedWithAsset(const __CFAllocator *a1, const void *a2, const __CFURL *a3, const __CFDictionary *a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  v21 = 0;
  cf = 0;
  FigKTraceInit();
  FigCFDictionaryGetBooleanIfPresent();
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
LABEL_27:
    v14 = FigSignalErrorAtGM();
    goto LABEL_28;
  }

  CMBaseObject = FigAssetGetCMBaseObject(a2);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    v19 = 4294954514;
    goto LABEL_16;
  }

  v14 = v13(CMBaseObject, @"assetProperty_CreationURL", *MEMORY[0x1E695E480], &v21);
  if (v14)
  {
    goto LABEL_28;
  }

  if (v21 && !FigCFURLIsLocalResource() || !a3 || !remakerFamily_CFURLSchemeIsFile(a3) || !a6)
  {
    goto LABEL_26;
  }

  FigRemakerGetClassID();
  v14 = CMDerivedObjectCreate();
  if (v14)
  {
LABEL_28:
    v19 = v14;
    goto LABEL_16;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 32) = 12301;
  v16 = FigReentrantMutexCreate();
  *(DerivedStorage + 8) = v16;
  if (!v16)
  {
LABEL_26:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    goto LABEL_27;
  }

  v17 = CFGetAllocator(cf);
  Mutable = CFArrayCreateMutable(v17, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 24) = Mutable;
  if (!Mutable)
  {
    v19 = 4294955196;
    goto LABEL_16;
  }

  v14 = FigRemakerCreateWithAsset(a1, a2, a3, a4, a5, (DerivedStorage + 16));
  if (v14)
  {
    goto LABEL_28;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v19 = CMNotificationCenterAddListener();
  if (!v19)
  {
    *a6 = cf;
    cf = 0;
  }

LABEL_16:
  if (v21)
  {
    CFRelease(v21);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

uint64_t queuedRemaker_AddAudioTrack(__CFDictionary *a1, int a2, UInt8 *a3, CFIndex a4, UInt8 *a5, const void *a6, uint64_t a7, uint64_t a8)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_83();
  if (v9)
  {
    FigSimpleMutexLock();
  }

  if (!*v8 && a2 && a3)
  {
    v18 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    a1 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Common_TrackType", @"TrackType_AudioTrack");
      FigCFDictionarySetInt32();
      queuedRemaker_dictionarySetData(a1, @"Audio_DestinationASBD", a3, 40);
      valuePtr = a4;
      v20 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
      CFDictionarySetValue(a1, @"Audio_DestinationChannelLayoutSize", v20);
      CFRelease(v20);
      if (a4 && a5)
      {
        queuedRemaker_dictionarySetData(a1, @"Audio_DestinationChannelLayout", a5, a4);
      }

      if (a6)
      {
        CFDictionarySetValue(a1, @"Audio_AudioOptions", a6);
      }

      if (a7)
      {
        v21 = OUTLINED_FUNCTION_39_9();
        CFDictionarySetValue(v21, v22, v23);
      }

      FigCFDictionarySetInt32();
      v24 = *(v8 + 32);
      if (a8)
      {
        *a8 = v24;
      }

      v25 = OUTLINED_FUNCTION_3_98(v24);
      CFArrayAppendValue(v25, a1);
      a8 = 0;
    }

    else
    {
      a8 = 4294955196;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_3();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_18_17();
  }

  if (v9)
  {
    FigSimpleMutexUnlock();
  }

  if (a1)
  {
    CFRelease(a1);
  }

  return a8;
}

uint64_t queuedRemaker_AddVideoTrack(const void *a1, int a2, int a3, int a4, uint64_t a5, int a6, const void *a7, uint64_t a8, void *value, uint64_t a10, uint64_t a11, int *a12)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = *(DerivedStorage + 8);
  if (v18)
  {
    FigSimpleMutexLock();
  }

  v30 = v18;
  if (*DerivedStorage || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_3();
    v28 = FigSignalErrorAtGM();
    v21 = 0;
  }

  else
  {
    v19 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v21 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Common_TrackType", @"TrackType_VideoTrack");
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if (a5)
      {
        v22 = OUTLINED_FUNCTION_796();
        CFDictionarySetValue(v22, v23, v24);
      }

      v25 = FigCFDictionarySetInt32();
      if (a7)
      {
        CFDictionarySetValue(v21, @"Video_VideoEncoderSpecification", a7);
      }

      if (a8)
      {
        OUTLINED_FUNCTION_8_45(v25, @"Video_VideoDecompressionProperties");
      }

      if (value)
      {
        CFDictionarySetValue(v21, @"Video_VideoCompressionProperties", value);
      }

      if (a10)
      {
        OUTLINED_FUNCTION_8_45(v25, @"Video_VideoProcessingOptions");
      }

      FigCFDictionarySetCMTime();
      FigCFDictionarySetInt32();
      v26 = *(DerivedStorage + 32);
      if (a12)
      {
        *a12 = v26;
      }

      v27 = OUTLINED_FUNCTION_3_98(v26);
      CFArrayAppendValue(v27, v21);
      v28 = 0;
      if (v30)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    v28 = 4294955196;
  }

  if (v30)
  {
LABEL_19:
    FigSimpleMutexUnlock();
  }

LABEL_20:
  if (v21)
  {
    CFRelease(v21);
  }

  return v28;
}

uint64_t queuedRemaker_AddPassthroughTrack(const void *a1, int a2, uint64_t a3)
{
  v6 = v5;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_83();
  if (v4)
  {
    FigSimpleMutexLock();
  }

  if (*v3 || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v10 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Common_TrackType", @"TrackType_Passthrough");
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      v12 = *(v3 + 32);
      if (a3)
      {
        *a3 = v12;
      }

      v13 = OUTLINED_FUNCTION_3_98(v12);
      CFArrayAppendValue(v13, v6);
      a3 = 0;
    }

    else
    {
      a3 = 4294955196;
    }
  }

  if (v4)
  {
    FigSimpleMutexUnlock();
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return a3;
}

uint64_t queuedRemaker_AddAudioTrackWithPreset(const void *a1, int a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v8 = v7;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_83();
  if (v6)
  {
    FigSimpleMutexLock();
  }

  if (*v5 || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v14 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Common_TrackType", @"TrackType_AudioTrackWithPreset");
      FigCFDictionarySetInt32();
      if (a3)
      {
        CFDictionaryAddValue(v8, @"Audio_AudioPresetName", a3);
      }

      if (a4)
      {
        v16 = OUTLINED_FUNCTION_39_9();
        CFDictionaryAddValue(v16, v17, v18);
      }

      FigCFDictionarySetInt32();
      v19 = *(v5 + 32);
      if (a5)
      {
        *a5 = v19;
      }

      v20 = OUTLINED_FUNCTION_3_98(v19);
      CFArrayAppendValue(v20, v8);
      a5 = 0;
    }

    else
    {
      a5 = 4294955196;
    }
  }

  if (v6)
  {
    FigSimpleMutexUnlock();
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return a5;
}

uint64_t queuedRemaker_AddAudioMixdownTrackWithPreset(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v8 = v7;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_83();
  if (v6)
  {
    FigSimpleMutexLock();
  }

  if (*v5 || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v14 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Common_TrackType", @"TrackType_AudioMixdownTrackWithPreset");
      CFDictionaryAddValue(v8, @"Audio_SourceAudioTrackArray", a2);
      if (a3)
      {
        CFDictionaryAddValue(v8, @"Audio_AudioPresetName", a3);
      }

      if (a4)
      {
        v16 = OUTLINED_FUNCTION_39_9();
        CFDictionaryAddValue(v16, v17, v18);
      }

      FigCFDictionarySetInt32();
      v19 = *(v5 + 32);
      if (a5)
      {
        *a5 = v19;
      }

      v20 = OUTLINED_FUNCTION_3_98(v19);
      CFArrayAppendValue(v20, v8);
      a5 = 0;
    }

    else
    {
      a5 = 4294955196;
    }
  }

  if (v6)
  {
    FigSimpleMutexUnlock();
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return a5;
}

uint64_t queuedRemaker_AddVideoCompositionTrack(const void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, const void *a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, const void *a17, uint64_t a18, uint64_t a19, const void *a20, uint64_t a21, const void *a22, int *a23)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_83();
  if (v24)
  {
    FigSimpleMutexLock();
  }

  v46 = v24;
  if (*v23 || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_3();
    v44 = FigSignalErrorAtGM();
    v32 = 0;
  }

  else
  {
    v30 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v30, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v32 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Common_TrackType", @"TrackType_VideoCompositionTrack");
      CFDictionarySetValue(v32, @"Video_SourceVideoTrackArray", a2);
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      OUTLINED_FUNCTION_796();
      v33 = FigCFDictionarySetValue();
      if (a6)
      {
        CFDictionarySetValue(v32, @"Video_VideoCompositor", a6);
      }

      if (a7)
      {
        CFDictionarySetValue(v32, @"Video_VideoCompositionInstructionArray", a7);
      }

      if (a8)
      {
        OUTLINED_FUNCTION_8_45(v33, @"Video_AnimationRootLayer");
      }

      v34 = FigCFDictionarySetInt32();
      if (a10)
      {
        CFDictionarySetValue(v32, @"Video_AnimationVideoLayers", a10);
      }

      if (a11)
      {
        OUTLINED_FUNCTION_8_45(v34, @"Video_AnimationVideoTrackIDs");
      }

      if (a12)
      {
        v35 = OUTLINED_FUNCTION_796();
        CFDictionarySetValue(v35, v36, v37);
      }

      FigCFDictionarySetCMTime();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if (a17)
      {
        CFDictionarySetValue(v32, @"Video_VideoScalingProperties", a17);
      }

      v38 = FigCFDictionarySetInt32();
      if (a19)
      {
        v39 = OUTLINED_FUNCTION_796();
        CFDictionarySetValue(v39, v40, v41);
      }

      if (a20)
      {
        CFDictionarySetValue(v32, @"Video_VideoCompressionProperties", a20);
      }

      if (a21)
      {
        OUTLINED_FUNCTION_8_45(v38, @"Video_VideoProcessingOptions");
      }

      if (a22)
      {
        CFDictionarySetValue(v32, @"Video_VideoCompositionProcessorProperties", a22);
      }

      FigCFDictionarySetInt32();
      v42 = *(v23 + 32);
      if (a23)
      {
        *a23 = v42;
      }

      v43 = OUTLINED_FUNCTION_3_98(v42);
      CFArrayAppendValue(v43, v32);
      v44 = 0;
      if (v46)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    v44 = 4294955196;
  }

  if (v46)
  {
LABEL_31:
    FigSimpleMutexUnlock();
  }

LABEL_32:
  if (v32)
  {
    CFRelease(v32);
  }

  return v44;
}

uint64_t queuedRemaker_AddPassthroughTrackWithOptions()
{
  v7 = v6;
  OUTLINED_FUNCTION_10_44();
  OUTLINED_FUNCTION_5_83();
  if (v1)
  {
    FigSimpleMutexLock();
  }

  if (*v0 || !v4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v8 = CFGetAllocator(v5);
    Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v7 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Common_TrackType", @"TrackType_Passthrough");
      FigCFDictionarySetInt32();
      if (v3)
      {
        v10 = OUTLINED_FUNCTION_39_9();
        CFDictionarySetValue(v10, v11, v12);
      }

      FigCFDictionarySetInt32();
      v13 = *(v0 + 32);
      if (v2)
      {
        *v2 = v13;
      }

      v14 = OUTLINED_FUNCTION_3_98(v13);
      CFArrayAppendValue(v14, v7);
      v2 = 0;
    }

    else
    {
      v2 = 4294955196;
    }
  }

  if (v1)
  {
    FigSimpleMutexUnlock();
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v2;
}

uint64_t queuedRemaker_AddTemporaMetadataTrackWithOptions()
{
  v7 = v6;
  OUTLINED_FUNCTION_10_44();
  OUTLINED_FUNCTION_5_83();
  if (v1)
  {
    FigSimpleMutexLock();
  }

  if (*v0 || !v4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v8 = CFGetAllocator(v5);
    Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v7 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Common_TrackType", @"TrackType_TemporalMetadata");
      FigCFDictionarySetInt32();
      if (v3)
      {
        v10 = OUTLINED_FUNCTION_39_9();
        CFDictionarySetValue(v10, v11, v12);
      }

      FigCFDictionarySetInt32();
      v13 = *(v0 + 32);
      if (v2)
      {
        *v2 = v13;
      }

      v14 = OUTLINED_FUNCTION_3_98(v13);
      CFArrayAppendValue(v14, v7);
      v2 = 0;
    }

    else
    {
      v2 = 4294955196;
    }
  }

  if (v1)
  {
    FigSimpleMutexUnlock();
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v2;
}

uint64_t FigRemakerCreateQueuedBaseWithURLs_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerCreateQueuedBaseWithURLs_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerCreateQueuedWithURLs_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_CopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_SetFormatWriterProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_SetFormatWriterTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_SetFormatWriterTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_SetFormatWriterTrackProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_SetFormatWriterTrackProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_SetFormatWriterTrackProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_SetTimeRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_SetTimeRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_SetTimeRange_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_StartOutput_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_StartOutput_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_EstimateMaxSegmentDurationForFileSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_GetDefaultSourceAudioTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_GetDefaultSourceVideoTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_CanPerformFastFrameRateConversion_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_CopyTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_CopyTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t queuedRemaker_CopyTrackProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLExtensionsConsumeChildNode(uint64_t a1, CFTypeRef *a2, void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  value = 0;
  cf = 0;
  v7 = FigTTMLGetLibXMLAccess();
  if (!v7)
  {
    v8 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  if ((*(v7 + 72))(a1) == 1)
  {
    v8 = FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(a1, &v13, &cf);
    if (v8)
    {
      goto LABEL_19;
    }

    if (FigCFEqual() && FigCFEqual())
    {
      v9 = CFGetAllocator(*a2);
      v8 = FigTTMLExtensionCreate(v9, a1, a2, &value);
      if (!v8)
      {
        CFArrayAppendValue(*(DerivedStorage + 136), value);
        goto LABEL_9;
      }

LABEL_19:
      v10 = v8;
      goto LABEL_11;
    }
  }

  v8 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  if (v8)
  {
    goto LABEL_19;
  }

LABEL_9:
  v10 = 0;
  if (a3)
  {
    *a3 = value;
    value = 0;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v10;
}

uint64_t FigTTMLExtensionsCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLExtensionsCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLExtensions_GetNodeType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigWebVTTFormatReaderCreateFromStream(const void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    FigFormatReaderGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      return v5;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (_MergedGlobals_89 != -1)
    {
      dispatch_once_f(&_MergedGlobals_89, 0, RegisterWebVTTInfoType);
    }

    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      v20 = FigSignalErrorAtGM();
      goto LABEL_18;
    }

    v8 = Instance;
    v9 = FigSimpleMutexCreate();
    *(v8 + 16) = v9;
    if (v9)
    {
      *(v8 + 24) = CFRetain(a1);
      *(v8 + 32) = 1000;
      CMTimeMake(&v29, 0, 1000);
      *(v8 + 120) = *&v29.value;
      v10 = MEMORY[0x1E6960CC0];
      *(v8 + 136) = v29.epoch;
      v28 = *v10;
      *(v8 + 148) = *v10;
      v11 = *(v10 + 2);
      *(v8 + 164) = v11;
      v12 = *(v8 + 32);
      v13 = malloc_type_calloc(1uLL, 0x38uLL, 0x1060040BA3AC965uLL);
      if (v13 && ((v14 = *MEMORY[0x1E695E480]) == 0 ? (v15 = 0) : (v15 = CFRetain(*MEMORY[0x1E695E480])), *v13 = v15, Mutable = CFArrayCreateMutable(v14, 0, MEMORY[0x1E695E9C0]), (*(v13 + 6) = Mutable) != 0))
      {
        *(v13 + 2) = v12;
        *(v13 + 12) = v28;
        *(v13 + 28) = v11;
        *(v13 + 5) = 0;
        *(v8 + 40) = v13;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_10();
        v27 = FigSignalErrorAtGM();
        if (v27)
        {
          v20 = v27;
          TimelineCache_Destroy(v13);
LABEL_38:
          CFRelease(v8);
LABEL_18:
          if (!v20)
          {
            v22 = *DerivedStorage;
            v29.value = 0;
            FigTrackReaderGetClassID();
            v23 = CMDerivedObjectCreate();
            if (v23)
            {
              return v23;
            }

            else
            {
              v24 = CMBaseObjectGetDerivedStorage();
              if (v22)
              {
                v25 = CFRetain(v22);
              }

              else
              {
                v25 = 0;
              }

              v20 = 0;
              *v24 = v25;
              *(DerivedStorage + 8) = v29.value;
              *a3 = 0;
            }
          }

          return v20;
        }
      }

      CMBaseObject = CMByteStreamGetCMBaseObject();
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v18)
      {
        v18(CMBaseObject, 0x1F0B330B8, *MEMORY[0x1E695E4D0]);
      }

      v19 = WebVTTParserCreate(v8, wvtt_headerCallback, wvtt_sampleCallback, 1, (v8 + 96));
      if (v19)
      {
LABEL_37:
        v20 = v19;
        goto LABEL_38;
      }

      WebVTTParserSetSampleBufferMediaType(*(v8 + 96), 1952807028);
      v20 = WebVTTParserSetSourceLabel(*(v8 + 96), "webvtt_fr-", 1, "-0");
      v21 = FigSimpleMutexCreate();
      *(v8 + 104) = v21;
      if (v21)
      {
        *DerivedStorage = v8;
        goto LABEL_18;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
    }

    v19 = FigSignalErrorAtGM();
    goto LABEL_37;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();

  return FigSignalErrorAtGM();
}

uint64_t WebVTTCursorService_createCursorAtPresentationTimeStamp(uint64_t a1, __int128 *a2, void *a3, _BYTE *a4, char *a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();
  v17 = 0;
  FigSimpleMutexLock();
  v10 = createWebVTTAccessor(v9, &v17);
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v11 = v17;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v15 = *a2;
    v16 = *(a2 + 2);
    v13 = wvtt_moveToSampleAtPTS(DerivedStorage, &v15, a4, a5);
    if (v13)
    {
      if (v11)
      {
        CFRelease(v11);
      }
    }

    else
    {
      *a3 = v11;
    }
  }

  FigSimpleMutexUnlock();
  return v13;
}

uint64_t WebVTTCursorService_createCursorNearPresentationTimeStamp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5, char *a6)
{
  v7 = *a2;
  v8 = *(a2 + 16);
  return WebVTTCursorService_createCursorAtPresentationTimeStamp(a1, &v7, a4, a5, a6);
}

uint64_t WebVTTCursorService_createCursorAtFirstSampleInDecodeOrder(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v7 = 0;
  FigSimpleMutexLock();
  v4 = createWebVTTAccessor(v3, &v7);
  if (!v4)
  {
    v5 = v7;
    *(CMBaseObjectGetDerivedStorage() + 8) = 0;
    *a2 = v5;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t WebVTTCursorService_createCursorAtLastSampleInDecodeOrder(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v9 = 0;
  FigSimpleMutexLock();
  v4 = createWebVTTAccessor(v3, &v9);
  if (!v4)
  {
    v5 = v9;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(v3 + 88))
    {
      v7 = *(v3 + 80);
    }

    else
    {
      v7 = *(*(v3 + 40) + 40);
      *(v3 + 80) = v7;
      *(v3 + 88) = 1;
    }

    *(DerivedStorage + 8) = v7 - 1;
    *a2 = v5;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t WebVTTCursor_getPresentationTimeStamp(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  FigSimpleMutexLock();
  v5 = DerivedStorage[1];
  memset(&v8, 0, sizeof(v8));
  v6 = TimelineCache_MapSampleNumToSampleTime(*(v4 + 40), v5, &v8);
  if (!v6)
  {
    *a2 = v8;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t WebVTTCursor_getDuration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  v12 = 0uLL;
  epoch = 0;
  FigSimpleMutexLock();
  v5 = DerivedStorage[1];
  if (v5 < 0 || (v6 = *(v4 + 40), *(v6 + 40) <= v5) || (ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 48), v5)) == 0)
  {
    fig_log_get_emitter();
    SampleTimingInfo = FigSignalErrorAtGM();
    if (!SampleTimingInfo)
    {
      goto LABEL_6;
    }

LABEL_9:
    v9 = SampleTimingInfo;
    goto LABEL_7;
  }

  memset(&timingInfoOut, 0, sizeof(timingInfoOut));
  SampleTimingInfo = CMSampleBufferGetSampleTimingInfo(ValueAtIndex, 0, &timingInfoOut);
  if (SampleTimingInfo)
  {
    goto LABEL_9;
  }

  v12 = *&timingInfoOut.duration.value;
  epoch = timingInfoOut.duration.epoch;
LABEL_6:
  *&timingInfoOut.duration.value = v12;
  timingInfoOut.duration.epoch = epoch;
  v11 = **&MEMORY[0x1E6960CC0];
  CMTimeCompare(&timingInfoOut.duration, &v11);
  v9 = 0;
  *a2 = v12;
  *(a2 + 16) = epoch;
LABEL_7:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t WebVTTCursor_createSampleBuffer(uint64_t a1, uint64_t a2, CMSampleBufferRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    a2 = CMBaseObjectGetDerivedStorage();
  }

  v6 = *DerivedStorage;
  sbuf = 0;
  FigSimpleMutexLock();
  v7 = DerivedStorage[1];
  if (a2)
  {
    v8 = *(a2 + 8);
    if (v8 < v7)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
LABEL_10:
      SampleBufferContainingSample = FigSignalErrorAtGM();
      goto LABEL_14;
    }

    v9 = v8 > v7;
  }

  else
  {
    v9 = 0;
  }

  SampleBufferContainingSample = TimelineCache_MapSampleNumToSampleTime(*(v6 + 40), v7, &v14);
  if (!SampleBufferContainingSample)
  {
    if (v9)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
    }

    else
    {
      SampleBufferContainingSample = TimelineCache_GetSampleBufferContainingSample(*(v6 + 40), v7, &sbuf);
      if (SampleBufferContainingSample)
      {
        goto LABEL_14;
      }

      if (sbuf)
      {
        SampleBufferContainingSample = CMSampleBufferCreateCopy(*MEMORY[0x1E695E480], sbuf, a3);
        goto LABEL_14;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
    }

    goto LABEL_10;
  }

LABEL_14:
  v11 = SampleBufferContainingSample;
  FigSimpleMutexUnlock();
  return v11;
}

char *wvtt_sampleCallback(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  sbuf = 0;
  memset(&v23, 0, sizeof(v23));
  v3 = *(a1 + 96);
  time1 = *(a1 + 120);
  v4 = WebVTTCreateSampleBufferFromSample(v3, a2, &time1, &sbuf);
  if (!v4)
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v23, sbuf);
    CMSampleBufferGetOutputDuration(&time1, sbuf);
    flags = time1.flags;
    timescale = time1.timescale;
    epoch = time1.epoch;
    value = time1.value;
    v21 = *MEMORY[0x1E6960CC0];
    *&time2.value = *MEMORY[0x1E6960CC0];
    v7 = *(MEMORY[0x1E6960CC0] + 16);
    time2.epoch = v7;
    v8 = CMTimeCompare(&time1, &time2);
    if (v8)
    {
      if (!*(a1 + 144))
      {
        *(a1 + 144) = 1;
        OUTLINED_FUNCTION_2_119(v8, v9, v10, v11, v12, v13, v14, v15, v21, *(&v21 + 1), v22, v16, v23.value);
        *&time2.value = v21;
        time2.epoch = v7;
        v8 = CMTimeCompare(&time1, &time2);
      }

      OUTLINED_FUNCTION_2_119(v8, v9, v10, v11, v12, v13, v14, v15, v21, *(&v21 + 1), v22, v16, v23.value);
      time2 = *(a1 + 148);
      CMTimeCompare(&time1, &time2);
      time2 = v23;
      rhs.value = value;
      rhs.timescale = timescale;
      rhs.flags = flags;
      rhs.epoch = epoch;
      CMTimeAdd(&time1, &time2, &rhs);
      *(a1 + 148) = time1;
      ++*(a1 + 72);
      *(a1 + 80) += CMSampleBufferGetNumSamples(sbuf);
      v17 = *(a1 + 40);
      if (v17)
      {
        v18 = sbuf;
        CFArrayAppendValue(*(v17 + 48), sbuf);
        ++*(v17 + 40);
        CMSampleBufferGetPresentationTimeStamp(&time2, v18);
        CMSampleBufferGetDuration(&rhs, v18);
        CMTimeAdd(&time1, &time2, &rhs);
        v19 = time1.epoch;
        *(v17 + 12) = *&time1.value;
        *(v17 + 28) = v19;
      }
    }
  }

  if (sbuf)
  {
    CFRelease(sbuf);
  }

  return v4;
}

uint64_t WebVTTFormatReaderCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t WebVTTFormatReaderCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t EnsureWebVTTFileIsParsed_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t EnsureWebVTTFileIsParsed_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t WebVTTTrackReaderCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t WebVTTTrackReaderCopySampleCursorService_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t createWebVTTAccessor_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t createWebVTTAccessor_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t WebVTTCursor_copyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t WebVTTCursor_copyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TimelineCache_MapSampleNumToSampleTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TimelineCache_MapSampleNumToSampleTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t WebVTTCursor_copy_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t WebVTTCursor_copyFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL TimelineCache_GetSampleBufferContainingSample_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v4 = FigSignalErrorAtGM();
  *a2 = v4;
  if (a1)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

uint64_t figUpdateFontSizeForDRMFallbackTextLayer(void *a1)
{
  result = [a1 bounds];
  if (v3 > 0.0)
  {
    result = [a1 bounds];
    if (v4 > 0.0)
    {
      result = [a1 preferredFrameSize];
      if (v5 > 0.0)
      {
        result = [a1 preferredFrameSize];
        if (v6 > 0.0)
        {
          result = [a1 bounds];
          if (v7 > 0.0)
          {
            result = [a1 bounds];
            if (v8 > 0.0)
            {
              result = [a1 preferredFrameSize];
              if (v9 > 0.0)
              {
                result = [a1 preferredFrameSize];
                if (v10 > 0.0)
                {
                  [a1 fontSize];
                  v12 = v11;
                  [a1 bounds];
                  v14 = v13;
                  [a1 preferredFrameSize];
                  v16 = v14 / v15;
                  [a1 bounds];
                  v18 = v17;
                  [a1 preferredFrameSize];
                  v20 = v18 / v19;
                  [a1 bounds];
                  v22 = v21;
                  v24 = v23;
                  result = [a1 preferredFrameSize];
                  v27 = v16 >= v20 ? v24 / v26 : v22 / v25;
                  v28 = floor(v12 * (v27 * 0.8));
                  v29 = v28 >= 2.0 ? v28 : 2.0;
                  if (v29 > v12 + 1.0 || v29 < v12)
                  {
                    [MEMORY[0x1E6979518] begin];
                    [MEMORY[0x1E6979518] setDisableActions:1];
                    [a1 setFontSize:v29];
                    v31 = MEMORY[0x1E6979518];

                    return [v31 commit];
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

void __FigVirtualDisplayProcessorCreate_block_invoke_4(uint64_t a1)
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (*(v1 + 736) || *(v1 + 737))
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v4 = (UpTimeNanoseconds - *(v1 + 680)) / 1000000000.0;
    if (v4 > 0.0)
    {
      v5 = UpTimeNanoseconds;
      v31 = v2;
      v6 = MEMORY[0x1E695E480];
      if (*(v1 + 737))
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      }

      else
      {
        Mutable = 0;
      }

      if (*(v1 + 736))
      {
        v8 = CFStringCreateMutable(*v6, 0);
      }

      else
      {
        v8 = 0;
      }

      v9 = 0;
      v10 = 0;
      v11 = v1 + 688;
      do
      {
        v12 = v10;
        add_explicit = atomic_fetch_add_explicit((v11 + 4 * v9), 0, memory_order_relaxed);
        atomic_fetch_add_explicit((v11 + 4 * v9), -add_explicit, memory_order_relaxed);
        v14 = (add_explicit / v4 + 0.5);
        if (v9 <= 6 && *(v1 + 737))
        {
          FigCFArrayAppendInt32();
        }

        if (*(v1 + 736))
        {
          v29 = kStatsCounterShortNames[v9];
          v30 = v14;
          CFStringAppendFormat(v8, 0, @" %s %2d |");
        }

        if (v9 == 7)
        {
          v10 = v14;
        }

        else
        {
          v10 = v12;
        }

        ++v9;
      }

      while (v9 != 9);
      if (*(v1 + 736) && dword_1EAF17550)
      {
        OUTLINED_FUNCTION_147();
        OUTLINED_FUNCTION_44_15();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v23 = OUTLINED_FUNCTION_19_4(os_log_and_send_and_compose_flags_and_os_log_type, v16, v17, v18, v19, v20, v21, v22, v29, v30, v31, v32, SBYTE2(v32), BYTE3(v32), SHIDWORD(v32));
        if (OUTLINED_FUNCTION_115_1(v23))
        {
          OUTLINED_FUNCTION_24_19();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_36();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414();
      }

      if (*(v1 + 737))
      {
        valuePtr[0] = v12 * 8.0;
        v24 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, valuePtr);
        CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject(*(v1 + 64));
        v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v26)
        {
          v26(CMBaseObject, @"bitrate", v24);
        }

        v27 = FigVirtualDisplaySinkGetCMBaseObject(*(v1 + 64));
        v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v28)
        {
          v28(v27, @"fps", Mutable);
        }
      }

      else
      {
        v24 = 0;
      }

      *(v1 + 680) = v5;
      if (v8)
      {
        CFRelease(v8);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v24)
      {
        CFRelease(v24);
      }
    }
  }
}

uint64_t prefsGetH264EncoderUsageIfValid(uint64_t result, _DWORD *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFStringGetTypeID())
    {
      if (CFStringGetCString(v3, buffer, 32, 0x8000100u))
      {
        for (i = 0; i != 6; ++i)
        {
          if (!strcasecmp(buffer, prefsGetH264EncoderUsageIfValid_names[i]))
          {
            *a2 = prefsGetH264EncoderUsageIfValid_values[i];
            return 1;
          }
        }

        OUTLINED_FUNCTION_147();
        OUTLINED_FUNCTION_44_15();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v14 = OUTLINED_FUNCTION_180_0(os_log_and_send_and_compose_flags_and_os_log_type, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
        if (OUTLINED_FUNCTION_124_0(v14))
        {
          OUTLINED_FUNCTION_43_13();
          OUTLINED_FUNCTION_76_7();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_6_77();
          _os_log_send_and_compose_impl();
        }
      }

      else
      {
        OUTLINED_FUNCTION_147();
        OUTLINED_FUNCTION_44_15();
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v16 = os_log_type_enabled(v15, BYTE3(type));
        if (OUTLINED_FUNCTION_77_0(v16))
        {
          OUTLINED_FUNCTION_43_13();
          OUTLINED_FUNCTION_23_29();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_44_0();
          _os_log_send_and_compose_impl();
        }
      }

      OUTLINED_FUNCTION_16();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  return result;
}

uint64_t fvdp_applyProtectionOptions(uint64_t a1, CFDictionaryRef theDict)
{
  result = CFDictionaryGetValue(theDict, @"protectionOptions");
  if (!result)
  {
    goto LABEL_16;
  }

  v4 = result;
  v5 = CFGetTypeID(result);
  result = CFDictionaryGetTypeID();
  if (v5 != result)
  {
    goto LABEL_16;
  }

  FigCFDictionaryGetInt64IfPresent();
  result = FVDUtilsSupportedProtectionFlags(0);
  v38 = result;
  if (!result)
  {
    goto LABEL_16;
  }

  if (*(a1 + 312) != 1852796517)
  {
    if (FVDUtilsEncryptedEncodeSupported())
    {
      Value = CFDictionaryGetValue(v4, @"encoderEncryptionData");
      if (Value)
      {
        *(a1 + 312) = 1718908528;
        CFDictionarySetValue(*(a1 + 496), *MEMORY[0x1E6983610], Value);
        CFDictionaryGetValue(v4, @"encoderEncryptionKeyID");
        FigCFDictionarySetValue();
        result = v38;
        goto LABEL_8;
      }

      v26 = OUTLINED_FUNCTION_75_6();
      v34 = OUTLINED_FUNCTION_107_2(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      if (!OUTLINED_FUNCTION_115_1(v34))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v17 = OUTLINED_FUNCTION_75_6();
      v25 = OUTLINED_FUNCTION_107_2(v17, v18, v19, v20, v21, v22, v23, v24, v35, v36, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      if (!OUTLINED_FUNCTION_115_1(v25))
      {
LABEL_15:
        OUTLINED_FUNCTION_16();
        result = fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_16:
        v16 = 0;
        goto LABEL_17;
      }
    }

    OUTLINED_FUNCTION_26_22();
    OUTLINED_FUNCTION_23_29();
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_6_77();
    _os_log_send_and_compose_impl();
    goto LABEL_15;
  }

LABEL_8:
  v39 = result | 1;
  OUTLINED_FUNCTION_86_4();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v15 = OUTLINED_FUNCTION_106_1(os_log_and_send_and_compose_flags_and_os_log_type, v8, v9, v10, v11, v12, v13, v14, v35, v36, type, SBYTE2(type), OS_LOG_TYPE_DEFAULT, 0);
  if (OUTLINED_FUNCTION_124_0(v15))
  {
    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_6_77();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_7();
  result = OUTLINED_FUNCTION_345_0();
  v16 = v39;
LABEL_17:
  *(a1 + 392) = v16;
  return result;
}

void prefsGetOSTypeIfPresent(const __CFString *a1, int *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = FigVirtualDisplayPrefsCopyValue(a1);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      if (!CFStringGetCString(v5, buffer, 8, 0x8000100u) || strlen(buffer) != 4)
      {
        OUTLINED_FUNCTION_147();
        OUTLINED_FUNCTION_44_15();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v25 = OUTLINED_FUNCTION_180_0(os_log_and_send_and_compose_flags_and_os_log_type, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, v29, SBYTE2(v29), BYTE3(v29), SHIDWORD(v29));
        if (OUTLINED_FUNCTION_124_0(v25))
        {
          OUTLINED_FUNCTION_43_13();
          OUTLINED_FUNCTION_23_29();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_6_77();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_16();
        goto LABEL_9;
      }

      v7 = (buffer[1] << 16) | (buffer[0] << 24) | (buffer[2] << 8) | buffer[3];
      *a2 = v7;
      if (v3 != v7)
      {
        OUTLINED_FUNCTION_147();
        OUTLINED_FUNCTION_44_15();
        v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v16 = OUTLINED_FUNCTION_19_4(v8, v9, v10, v11, v12, v13, v14, v15, v26, v27, v28, v29, SBYTE2(v29), BYTE3(v29), SHIDWORD(v29));
        if (OUTLINED_FUNCTION_115_1(v16))
        {
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_36();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
LABEL_9:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    CFRelease(v5);
  }
}

void __fvdp_submitPixelBuffer_block_invoke(uint64_t a1)
{
  v323 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  *(v2 + 209) = *(a1 + 48);
  v3 = *(a1 + 40);
  pixelBufferOut = 0;
  if (*(v2 + 24) == 2)
  {
    v4 = &dword_1EAF17000;
    if (!*v3)
    {
      if (*(v2 + 736) || *(v2 + 737))
      {
        OUTLINED_FUNCTION_100_4((v2 + 720));
      }

LABEL_116:
      frameDataDestroy(*(v2 + 56));
      *(v2 + 56) = v3;
      if (*(v2 + 24) == 2)
      {
        v157 = *(v2 + 416);
        v158 = *(v2 + 16);
        if (*(v3 + 168))
        {
          OUTLINED_FUNCTION_2_120();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v198 = OUTLINED_FUNCTION_73_5(os_log_and_send_and_compose_flags_and_os_log_type, v191, v192, v193, v194, v195, v196, v197, v272, v273, v274, v275, v276, v277, v278, v279, *&width, v281, v282, *&v283, v284, v285, *&v286, *&y, v288, *&v290, pixelBufferOut, v293, *&v294, *&v295.f64[0], *&v295.f64[1], v296[0], *&v297, v298, *&v299, v300, *&v301, v302[0]);
          if (OUTLINED_FUNCTION_109_0(v198))
          {
            OUTLINED_FUNCTION_20_22();
            *(v199 + 14) = "fvdp_encodeSubmittedFrame";
            OUTLINED_FUNCTION_50_8();
            LODWORD(v312) = 3887;
            OUTLINED_FUNCTION_188_1();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_83_4();
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_524();
        }

        v159 = *(v3 + 160);
        if (v159 <= *(v2 + 440) + *(v2 + 424))
        {
          OUTLINED_FUNCTION_2_120();
          v200 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v201 = os_log_type_enabled(v200, v296[0]);
          if (OUTLINED_FUNCTION_77_0(v201))
          {
            OUTLINED_FUNCTION_20_22();
            *(v202 + 14) = "fvdp_encodeSubmittedFrame";
            OUTLINED_FUNCTION_50_8();
            LODWORD(v312) = 3890;
            OUTLINED_FUNCTION_188_1();
            OUTLINED_FUNCTION_44_0();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_420();
          goto LABEL_145;
        }

        if (v159 > v157 - 5000000 + *(v2 + 432))
        {
          *(v2 + 424) = v159;
          v160 = *(v2 + 416);
          *(v2 + 448) = v160;
          v161 = 2 * v160;
          if (v161 <= 0x2FAF080)
          {
            v162 = 50000000;
          }

          else
          {
            v162 = v161;
          }

          v163 = dispatch_time(0, v162);
          if (!fvdp_shouldDropFrame(v2))
          {
            if (*(v2 + 384))
            {
              if (*(v2 + 385))
              {
                v164 = *(v2 + 56);
                if (*v164)
                {
                  IOSurface = CVPixelBufferGetIOSurface(*v164);
                  if (IOSurface)
                  {
                    v166 = IOSurfaceCopyValue(IOSurface, *MEMORY[0x1E696CF30]);
                    if (v166)
                    {
                      v167 = v166;
                      CVBufferSetAttachment(*v164, *MEMORY[0x1E6965E90], v166, kCVAttachmentMode_ShouldPropagate);
                      CFRelease(v167);
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_2_120();
                    v215 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v223 = OUTLINED_FUNCTION_51_13(v215, v216, v217, v218, v219, v220, v221, v222, v272, v273, v274, v275, v276, v277, v278, v279, *&width, v281, v282, *&v283, v284, v285, *&v286, *&y, v288, *&v290, pixelBufferOut, v293, *&v294, *&v295.f64[0], *&v295.f64[1], v296[0], *&v297, v298, *&v299, v300, *&v301, v302[0]);
                    if (OUTLINED_FUNCTION_115_1(v223))
                    {
                      OUTLINED_FUNCTION_49_9();
                      *(v257 + 4) = v256;
                      v309 = 2080;
                      *(v257 + 14) = "fvdp_propagateHDRAttachments";
                      OUTLINED_FUNCTION_50_8();
                      LODWORD(v312) = 3863;
                      OUTLINED_FUNCTION_188_1();
                      OUTLINED_FUNCTION_36();
                      _os_log_send_and_compose_impl();
                      OUTLINED_FUNCTION_92_4();
                    }

                    OUTLINED_FUNCTION_16();
                    OUTLINED_FUNCTION_414();
                  }
                }
              }
            }

            if (dword_1EAF17550 >= 2)
            {
              OUTLINED_FUNCTION_2_120();
              v168 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v169 = v302[0];
              os_log_type_enabled(v168, v296[0]);
              OUTLINED_FUNCTION_134();
              if (v35)
              {
                v171 = v170;
              }

              else
              {
                v171 = v169;
              }

              if (v171)
              {
                if (v158)
                {
                  v172 = v158;
                }

                else
                {
                  v172 = &stru_1F0B1AFB8;
                }

                v173 = *(v3 + 160);
                FigGetUpTimeNanoseconds();
                OUTLINED_FUNCTION_49_9();
                *(v174 + 4) = v172;
                v309 = 2080;
                *(v174 + 14) = "fvdp_encodeSubmittedFrame";
                v311 = 2048;
                v312 = v173;
                v313 = 2048;
                *(v174 + 34) = v175;
                OUTLINED_FUNCTION_188_1();
                OUTLINED_FUNCTION_36();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_238_0();
            }

            ++*(v3 + 168);
            v176 = fvdp_sendFrameToEncoder(v2, 0);
            if (v176)
            {
              v203 = v176;
              OUTLINED_FUNCTION_2_120();
              v204 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v212 = OUTLINED_FUNCTION_51_13(v204, v205, v206, v207, v208, v209, v210, v211, v272, v273, v274, v275, v276, v277, v278, v279, *&width, v281, v282, *&v283, v284, v285, *&v286, *&y, v288, *&v290, pixelBufferOut, v293, *&v294, *&v295.f64[0], *&v295.f64[1], v296[0], *&v297, v298, *&v299, v300, *&v301, v302[0]);
              if (OUTLINED_FUNCTION_115_1(v212))
              {
                OUTLINED_FUNCTION_9_44();
                *(v213 + 14) = "fvdp_encodeSubmittedFrame";
                OUTLINED_FUNCTION_50_8();
                OUTLINED_FUNCTION_74_7();
                *(v214 + 30) = v203;
                OUTLINED_FUNCTION_188_1();
                OUTLINED_FUNCTION_36();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_92_4();
              }

              OUTLINED_FUNCTION_16();
              OUTLINED_FUNCTION_414();
              if (!v163)
              {
                goto LABEL_145;
              }

              goto LABEL_143;
            }

            *(v2 + 432) = *(v2 + 424);
          }

          if (v163)
          {
LABEL_143:
            if (*(v2 + 464) >= 1)
            {
              dispatch_source_set_timer(*(v2 + 456), v163, *(v2 + 448), 0xF4240uLL);
            }
          }
        }
      }

LABEL_145:
      v3 = 0;
      goto LABEL_146;
    }

    v284 = v1;
    v281 = *(v2 + 16);
    PixelFormatType = CVPixelBufferGetPixelFormatType(*v3);
    OUTLINED_FUNCTION_99_2();
    if (v35 && PixelFormatType != *(v2 + 636))
    {
      OUTLINED_FUNCTION_2_120();
      v258 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v259 = os_log_type_enabled(v258, v296[0]);
      if (OUTLINED_FUNCTION_124_0(v259))
      {
        OUTLINED_FUNCTION_61_11();
        OUTLINED_FUNCTION_20_22();
        *(v260 + 14) = "fvdp_consumeFrame";
        OUTLINED_FUNCTION_50_8();
        LODWORD(v312) = 3987;
        OUTLINED_FUNCTION_188_1();
        OUTLINED_FUNCTION_6_77();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_16();
      goto LABEL_173;
    }

    *&v6 = CVPixelBufferGetWidth(*v3);
    Height = CVPixelBufferGetHeight(*v3);
    v8 = *(v3 + 16);
    v10 = *(v3 + 24);
    v9 = *(v3 + 32);
    v11 = *(v3 + 40);
    v12 = *(v3 + 48);
    v14 = *(v3 + 56);
    v13 = *(v3 + 64);
    v15 = *(v3 + 136);
    v16 = *(v2 + 120);
    v282 = *(v2 + 16);
    v17 = *(v2 + 160);
    v18 = *(v2 + 136);
    v289 = *&v6;
    v291 = *(v3 + 8);
    v300 = v6;
    v301 = Height;
    *v296 = v291;
    v297 = v8;
    *&v298 = v10;
    v299 = v9;
    v19 = *&v11;
    v293 = v11;
    v294 = v12;
    v20 = v12;
    v295.f64[0] = v14;
    v295.f64[1] = v13;
    OUTLINED_FUNCTION_99_2();
    v286 = v26;
    HIDWORD(v285) = PixelFormatType;
    if (v35 && !*(v2 + 209))
    {
      *&v277 = v25;
      v278 = v24;
      v279 = v23;
      v283 = v9;
      *v302 = 0;
      v303 = 0;
      v29 = v289;
      v30 = v27;
      v304.f64[0] = v289;
      v304.f64[1] = v27;
      if ((v15 & 4) != 0)
      {
        width = v10;
        v31 = v8;
        v30 = v289;
        if (v289 / v27 >= v27 / v289)
        {
          v32 = v27 / v289;
        }

        else
        {
          v32 = v289 / v27;
        }

        v29 = v27;
        if (v32 < 1.0)
        {
          v29 = (((v32 * v27) + 1) & 0xFFFFFFFE);
          OUTLINED_FUNCTION_95_2();
          if (dword_1EAF17550 >= 3)
          {
            v33 = v28;
            *v306 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v4 = &dword_1EAF17000;
            v26 = v286;
            v28 = v33;
          }
        }

        v304.f64[0] = v29;
        v304.f64[1] = v289;
        v8 = v31;
        v10 = width;
      }

      v22.f64[0] = v29;
      FigDisplayModes_DetermineSenderSurfaceDimensionsFromDisplayModeAndCurrentSenderDisplaySize(v17, &v304, v26, v16, v22, v30, v28);
      v26 = v286;
      v14 = v304.f64[0];
      v19 = (v286 - v304.f64[0]) * 0.5;
      *&v293 = v19;
      v294 = (v16 - v304.f64[1]) * 0.5;
      v20 = v294;
      v295 = v304;
      v21 = v304.f64[1];
      v9 = v283;
      v25 = *&v277;
    }

    y = v16;
    v35 = v25 == v26 && v18 == v16;
    if (v35)
    {
      v40 = v291;
      v42 = v21;
    }

    else
    {
      OUTLINED_FUNCTION_99_2();
      v40 = v291;
      v42 = v41;
      if (v35)
      {
        if (!*(v2 + 209))
        {
          goto LABEL_41;
        }

        v43 = 0;
        v44 = (v2 + 176);
      }

      else
      {
        v43 = (v15 << 29 >> 31) & 0x5A;
        v44 = (v2 + 176);
        v283 = v39;
        *&v278 = v37;
        *&v279 = v36;
        FigDisplayModes_ConvertSquarePixelSizeToNonSquarePixelSize(v43, &v300, v289, v39, v36, v37, v38, y, *(v2 + 176));
        if (dword_1EAF17550 >= 2)
        {
          v302[0] = 0;
          v306[0] = OS_LOG_TYPE_DEFAULT;
          *&v45 = COERCE_DOUBLE(fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type());
          v46 = v302[0];
          if (os_log_type_enabled(v45, v306[0]))
          {
            v47 = v46;
          }

          else
          {
            v47 = v46 & 0xFFFFFFFE;
          }

          if (v47)
          {
            OUTLINED_FUNCTION_96_2();
            *&v49 = COERCE_DOUBLE(&stru_1F0B1AFB8);
            if (!v35)
            {
              v49 = v48;
            }

            v277 = v49;
            width = *&v45;
            v50 = &unk_1ED4CB038 + 64 * (atomic_fetch_add_explicit(&_MergedGlobals_90, 1u, memory_order_relaxed) & 0xF);
            v51 = OUTLINED_FUNCTION_71_5();
            snprintf(v51, v52, v53, *&v289, *&v283);
            v54 = v300;
            v55 = v301;
            v56 = &unk_1ED4CB038 + 64 * (atomic_fetch_add_explicit(&_MergedGlobals_90, 1u, memory_order_relaxed) & 0xF);
            snprintf(v56, 0x40uLL, "{%g, %g}", *&v54, v55);
            OUTLINED_FUNCTION_49_9();
            *(v57 + 4) = *&v277;
            v309 = 2080;
            *(v57 + 14) = "fvdp_calculateOutputGeometry";
            v311 = 2080;
            v312 = v50;
            v313 = 2080;
            *(v57 + 34) = v56;
            OUTLINED_FUNCTION_188_1();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v4 = &dword_1EAF17000;
        }

        v37 = *&v278;
        v36 = *&v279;
      }

      v58 = v19;
      v59 = v20;
      v60 = v36;
      v61 = v37;
      FigDisplayModes_ConvertSquarePixelRectToNonSquarePixelRect(0, &v293, v58, v59, v14, v42, v36, v37, v286, y, *v44);
      FigDisplayModes_ConvertSquarePixelRectToNonSquarePixelRect(v43, v296, v291, v8, v10, v9, v60, v61, v286, y, *v44);
      v40 = *v296;
      v8 = v297;
      v10 = *&v298;
      v9 = v299;
      v19 = *&v293;
      v20 = v294;
      v42 = v295.f64[1];
      v14 = v295.f64[0];
    }

LABEL_41:
    *&v324.size.width = v300;
    v324.size.height = v301;
    v324.origin.x = 0.0;
    v324.origin.y = 0.0;
    *&v288 = v301;
    v290 = *&v300;
    v326.origin.x = v40;
    v326.origin.y = v8;
    v326.size.width = v10;
    v326.size.height = v9;
    if (!CGRectContainsRect(v324, v326))
    {
      OUTLINED_FUNCTION_2_120();
      v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v63 = v302[0];
      if (os_log_type_enabled(v62, v296[0]))
      {
        v64 = v63;
      }

      else
      {
        v64 = v63 & 0xFFFFFFFE;
      }

      if (v64)
      {
        OUTLINED_FUNCTION_96_2();
        *&v66 = COERCE_DOUBLE(&stru_1F0B1AFB8);
        if (!v35)
        {
          v66 = v65;
        }

        v283 = *&v66;
        v67 = &unk_1ED4CB038 + 64 * (atomic_fetch_add_explicit(&_MergedGlobals_90, 1u, memory_order_relaxed) & 0xF);
        snprintf(v67, 0x40uLL, "{{%g, %g}, {%g, %g}}", v40, v8, v10, v9);
        v68 = &unk_1ED4CB038 + 64 * (atomic_fetch_add_explicit(&_MergedGlobals_90, 1u, memory_order_relaxed) & 0xF);
        v9 = *&v288;
        v10 = v290;
        v69 = OUTLINED_FUNCTION_71_5();
        snprintf(v69, v70, "{{%g, %g}, {%g, %g}}", 0.0, 0.0, v290, *&v288);
        v307 = 138413058;
        v308 = v283;
        v309 = 2080;
        v310 = "fvdp_updateGeometryForFrame";
        v311 = 2080;
        v312 = v67;
        v313 = 2080;
        v314 = v68;
        v4 = &dword_1EAF17000;
        OUTLINED_FUNCTION_188_1();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_61_5();
      }

      else
      {
        v9 = *&v288;
        v10 = v290;
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_417();
      v40 = 0.0;
      v8 = 0.0;
    }

    v325.origin.x = 0.0;
    v325.origin.y = 0.0;
    v325.size.width = v286;
    v325.size.height = y;
    v327.origin.x = v19;
    v327.origin.y = v20;
    v327.size.width = v14;
    v327.size.height = v42;
    CGRectContainsRect(v325, v327);
    if (!v4[340])
    {
LABEL_70:
      if (*(v2 + 504) != 38)
      {
        *(v3 + 8) = v40;
        *(v3 + 16) = v8;
        *(v3 + 24) = v10;
        *(v3 + 32) = v9;
      }

      *(v3 + 40) = v19;
      *(v3 + 48) = v20;
      *(v3 + 56) = v14;
      *(v3 + 64) = v42;
      *(v2 + 248) = v40;
      *(v2 + 256) = v8;
      *(v2 + 264) = v10;
      *(v2 + 272) = v9;
      *(v2 + 280) = v19;
      *(v2 + 288) = v20;
      *(v2 + 296) = v14;
      *(v2 + 304) = v42;
      if (*(v2 + 232) != v290 || *(v2 + 240) != *&v288)
      {
        OUTLINED_FUNCTION_99_2();
        if (v35)
        {
          v116 = FigSignalErrorAtGM();
          if (v116)
          {
            v179 = v116;
            goto LABEL_164;
          }

          goto LABEL_79;
        }

        fvdp_teardownCompressionSession(v2);
        *(v2 + 232) = v290;
        *(v2 + 240) = *&v288;
      }

      if (!*(v2 + 336))
      {
        v177 = *(v3 + 144);
        if (v177)
        {
          CFRelease(v177);
          *(v3 + 144) = 0;
        }
      }

      v178 = fvdp_ensureEncoderAndPools(v2);
      if (v178)
      {
        v179 = v178;
        v302[0] = 0;
        v296[0] = OS_LOG_TYPE_DEFAULT;
        v180 = OUTLINED_FUNCTION_27_19();
        v188 = OUTLINED_FUNCTION_69_4(v180, v181, v182, v183, v184, v185, v186, v187, v272, v273, v274, v275, v276, v277, v278, v279, *&width, v281, v282, *&v283, v1, v285, *&v286, *&y, v288, *&v290, pixelBufferOut, v293, *&v294, *&v295.f64[0], *&v295.f64[1], v296[0], *&v297, v298, *&v299, v300, *&v301, v302[0]);
        if (OUTLINED_FUNCTION_109_0(v188))
        {
          OUTLINED_FUNCTION_96_2();
          OUTLINED_FUNCTION_9_44();
          OUTLINED_FUNCTION_41_15("fvdp_updateGeometryForFrame");
          OUTLINED_FUNCTION_74_7();
          *(v189 + 30) = v179;
          OUTLINED_FUNCTION_188_1();
          OUTLINED_FUNCTION_6_77();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_83_4();
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_524();
LABEL_164:
        OUTLINED_FUNCTION_2_120();
        v224 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v232 = OUTLINED_FUNCTION_69_4(v224, v225, v226, v227, v228, v229, v230, v231, v272, v273, v274, v275, v276, v277, v278, v279, *&width, v281, v282, *&v283, v284, v285, *&v286, *&y, v288, *&v290, pixelBufferOut, v293, *&v294, *&v295.f64[0], *&v295.f64[1], v296[0], *&v297, v298, *&v299, v300, *&v301, v302[0]);
        if (OUTLINED_FUNCTION_109_0(v232))
        {
          OUTLINED_FUNCTION_61_11();
          OUTLINED_FUNCTION_9_44();
          OUTLINED_FUNCTION_41_15("fvdp_consumeFrame");
          OUTLINED_FUNCTION_74_7();
          *(v233 + 30) = v179;
          OUTLINED_FUNCTION_188_1();
LABEL_168:
          OUTLINED_FUNCTION_6_77();
LABEL_171:
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_83_4();
          goto LABEL_172;
        }

        goto LABEL_172;
      }

LABEL_79:
      if (*(v2 + 744) || *(v2 + 745))
      {
        *(v3 + 104) = mach_absolute_time();
      }

      v117 = MEMORY[0x1E695FF58];
      if (*(v2 + 746) && *MEMORY[0x1E695FF58] == 1)
      {
        OUTLINED_FUNCTION_52_13();
      }

      if (PixelFormatType != *(v2 + 316) || *(v2 + 652))
      {
        v118 = *MEMORY[0x1E695E480];
        v119 = CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(*MEMORY[0x1E695E480], *(v2 + 320), *(*(v2 + 640) + 24), &pixelBufferOut);
        if (v119)
        {
          v234 = v119;
          OUTLINED_FUNCTION_2_120();
          v235 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v243 = OUTLINED_FUNCTION_69_4(v235, v236, v237, v238, v239, v240, v241, v242, v272, v273, v274, v275, v276, v277, v278, v279, *&width, v281, v282, *&v283, v1, v285, *&v286, *&y, v288, *&v290, pixelBufferOut, v293, *&v294, *&v295.f64[0], *&v295.f64[1], v296[0], *&v297, v298, *&v299, v300, *&v301, v302[0]);
          if (OUTLINED_FUNCTION_109_0(v243))
          {
            OUTLINED_FUNCTION_61_11();
            OUTLINED_FUNCTION_9_44();
            OUTLINED_FUNCTION_41_15("fvdp_consumeFrame");
            OUTLINED_FUNCTION_74_7();
            *(v244 + 30) = v234;
            OUTLINED_FUNCTION_188_1();
            goto LABEL_168;
          }

LABEL_172:
          OUTLINED_FUNCTION_16();
LABEL_173:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_146;
        }

        cvPixelBufferSetColorAttachments(pixelBufferOut, *(v2 + 376), *(v2 + 368));
        if (!*(v2 + 328))
        {
          if (*(v2 + 384))
          {
            OUTLINED_FUNCTION_2_120();
            v120 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v128 = OUTLINED_FUNCTION_51_13(v120, v121, v122, v123, v124, v125, v126, v127, v272, v273, v274, v275, v276, v277, v278, v279, *&width, v281, v282, *&v283, v1, v285, *&v286, *&y, v288, *&v290, pixelBufferOut, v293, *&v294, *&v295.f64[0], *&v295.f64[1], v296[0], *&v297, v298, *&v299, v300, *&v301, v302[0]);
            if (OUTLINED_FUNCTION_115_1(v128))
            {
              OUTLINED_FUNCTION_61_11();
              *&v130 = COERCE_DOUBLE(&stru_1F0B1AFB8);
              if (!v35)
              {
                v130 = v129;
              }

              v131 = *(v2 + 652);
              v307 = 138412802;
              v308 = *&v130;
              if (v131)
              {
                v132 = "forced";
              }

              else
              {
                v132 = "pixel format mismatch";
              }

              v309 = 2080;
              v310 = "fvdp_consumeFrame";
              v311 = 2080;
              v312 = v132;
              OUTLINED_FUNCTION_188_1();
              OUTLINED_FUNCTION_36();
              _os_log_send_and_compose_impl();
              OUTLINED_FUNCTION_92_4();
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_414();
          }

          OUTLINED_FUNCTION_2_120();
          v133 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v141 = OUTLINED_FUNCTION_51_13(v133, v134, v135, v136, v137, v138, v139, v140, v272, v273, v274, v275, v276, v277, v278, v279, *&width, v281, v282, *&v283, v284, v285, *&v286, *&y, v288, *&v290, pixelBufferOut, v293, *&v294, *&v295.f64[0], *&v295.f64[1], v296[0], *&v297, v298, *&v299, v300, *&v301, v302[0]);
          if (OUTLINED_FUNCTION_115_1(v141))
          {
            OUTLINED_FUNCTION_61_11();
            OUTLINED_FUNCTION_20_22();
            *(v142 + 14) = "fvdp_consumeFrame";
            OUTLINED_FUNCTION_188_1();
            OUTLINED_FUNCTION_36();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_92_4();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_414();
          v143 = VTPixelTransferSessionCreate(v118, (v2 + 328));
          if (v143)
          {
            v261 = v143;
            v302[0] = 0;
            v296[0] = OS_LOG_TYPE_DEFAULT;
            v262 = OUTLINED_FUNCTION_27_19();
            v270 = OUTLINED_FUNCTION_73_5(v262, v263, v264, v265, v266, v267, v268, v269, v272, v273, v274, v275, v276, v277, v278, v279, *&width, v281, v282, *&v283, v284, v285, *&v286, *&y, v288, *&v290, pixelBufferOut, v293, *&v294, *&v295.f64[0], *&v295.f64[1], v296[0], *&v297, v298, *&v299, v300, *&v301, v302[0]);
            if (OUTLINED_FUNCTION_109_0(v270))
            {
              OUTLINED_FUNCTION_61_11();
              OUTLINED_FUNCTION_9_44();
              OUTLINED_FUNCTION_41_15("fvdp_consumeFrame");
              OUTLINED_FUNCTION_74_7();
              *(v271 + 30) = v261;
              OUTLINED_FUNCTION_188_1();
              OUTLINED_FUNCTION_65();
              _os_log_send_and_compose_impl();
              OUTLINED_FUNCTION_83_4();
            }

            goto LABEL_172;
          }
        }

        if (v4[340] >= 3)
        {
          OUTLINED_FUNCTION_2_120();
          v144 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v152 = OUTLINED_FUNCTION_73_5(v144, v145, v146, v147, v148, v149, v150, v151, v272, v273, v274, v275, v276, v277, v278, v279, *&width, v281, v282, *&v283, v284, v285, *&v286, *&y, v288, *&v290, pixelBufferOut, v293, *&v294, *&v295.f64[0], *&v295.f64[1], v296[0], *&v297, v298, *&v299, v300, *&v301, v302[0]);
          if (OUTLINED_FUNCTION_109_0(v152))
          {
            OUTLINED_FUNCTION_61_11();
            OUTLINED_FUNCTION_20_22();
            *(v153 + 14) = "fvdp_consumeFrame";
            OUTLINED_FUNCTION_188_1();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_83_4();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_524();
        }

        v154 = VTPixelTransferSessionTransferImage(*(v2 + 328), *v3, pixelBufferOut);
        if (v154)
        {
          v245 = v154;
          OUTLINED_FUNCTION_2_120();
          v246 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v254 = OUTLINED_FUNCTION_73_5(v246, v247, v248, v249, v250, v251, v252, v253, v272, v273, v274, v275, v276, v277, v278, v279, *&width, v281, v282, *&v283, v284, v285, *&v286, *&y, v288, *&v290, pixelBufferOut, v293, *&v294, *&v295.f64[0], *&v295.f64[1], v296[0], *&v297, v298, *&v299, v300, *&v301, v302[0]);
          if (OUTLINED_FUNCTION_109_0(v254))
          {
            OUTLINED_FUNCTION_61_11();
            OUTLINED_FUNCTION_9_44();
            OUTLINED_FUNCTION_41_15("fvdp_consumeFrame");
            OUTLINED_FUNCTION_74_7();
            *(v255 + 30) = v245;
            OUTLINED_FUNCTION_188_1();
            OUTLINED_FUNCTION_65();
            goto LABEL_171;
          }

          goto LABEL_172;
        }

        v155 = *v3;
        v156 = pixelBufferOut;
        *v3 = pixelBufferOut;
        if (v156)
        {
          CFRetain(v156);
        }

        if (v155)
        {
          CFRelease(v155);
        }
      }

      if (*(v2 + 744) || *(v2 + 745))
      {
        *(v3 + 112) = mach_absolute_time();
      }

      if (*(v2 + 746) && *v117 == 1)
      {
        kdebug_trace();
      }

      goto LABEL_116;
    }

    v328.size.width = v10;
    v71 = v20;
    v20 = v19;
    v328.size.height = v9;
    v72 = v14;
    v328.origin.x = v40;
    v73 = *(v2 + 232);
    v74 = *(v2 + 240);
    v328.origin.y = v8;
    x = v328.origin.x;
    y = v328.origin.y;
    width = v328.size.width;
    v283 = v328.size.height;
    v76 = CGRectEqualToRect(*(v2 + 248), v328);
    if (v73 == v290 && v74 == *&v288)
    {
      v84 = v42;
      if (v76)
      {
        v85 = !OUTLINED_FUNCTION_64_9(*&v288, v77, v78, v79, v80, v81, v82, v42);
        goto LABEL_60;
      }
    }

    else
    {
      v84 = v42;
      if (!v76)
      {
        v85 = OUTLINED_FUNCTION_64_9(*&v288, v77, v78, v79, v80, v81, v82, v42);
LABEL_60:
        v40 = x;
LABEL_62:
        v8 = y;
        v10 = width;
        v14 = v72;
        v9 = v283;
        if (v85 && v4[340])
        {
          v302[0] = 0;
          v296[0] = OS_LOG_TYPE_DEFAULT;
          *&v86 = COERCE_DOUBLE(fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type());
          v87 = v302[0];
          v88 = v296[0];
          if (os_log_type_enabled(v86, v296[0]))
          {
            v89 = v87;
          }

          else
          {
            v89 = v87 & 0xFFFFFFFE;
          }

          if (v89)
          {
            OUTLINED_FUNCTION_96_2();
            OUTLINED_FUNCTION_72_6();
            v277 = &unk_1ED4CB038 + 64 * v90;
            v278 = v91;
            v286 = *&v86;
            LODWORD(v279) = v92;
            snprintf(v277, 0x40uLL, "{{%g, %g}, {%g, %g}}", v93, v94, v95, v96);
            OUTLINED_FUNCTION_72_6();
            v98 = &unk_1ED4CB038 + 64 * v97;
            v99 = OUTLINED_FUNCTION_71_5();
            snprintf(v99, v100, "{{%g, %g}, {%g, %g}}", v40, y, width, v283);
            OUTLINED_FUNCTION_72_6();
            v102 = &unk_1ED4CB038 + 64 * v101;
            snprintf(v102, 0x40uLL, "{{%g, %g}, {%g, %g}}", v103, v104, v105, v106);
            OUTLINED_FUNCTION_72_6();
            HIDWORD(v276) = v88;
            v108 = &unk_1ED4CB038 + 64 * v107;
            snprintf(v108, 0x40uLL, "{{%g, %g}, {%g, %g}}", v19, v20, v14, v42);
            OUTLINED_FUNCTION_72_6();
            v110 = &unk_1ED4CB038 + 64 * v109;
            snprintf(v110, 0x40uLL, "{%g, %g}", v111, v112);
            OUTLINED_FUNCTION_72_6();
            v114 = &unk_1ED4CB038 + 64 * v113;
            snprintf(v114, 0x40uLL, "{%g, %g}", v290, *&v288);
            v307 = 138414082;
            v308 = *&v278;
            v309 = 2080;
            v310 = "fvdp_updateGeometryForFrame";
            v311 = 2080;
            v312 = v277;
            v313 = 2080;
            v314 = v98;
            v4 = &dword_1EAF17000;
            v315 = 2080;
            v316 = v102;
            v317 = 2080;
            v318 = v108;
            v319 = 2080;
            v320 = v110;
            v321 = 2080;
            v322 = v114;
            OUTLINED_FUNCTION_188_1();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417();
          PixelFormatType = HIDWORD(v285);
        }

        goto LABEL_70;
      }
    }

    v42 = v84;
    v85 = 1;
    v40 = x;
    v20 = v71;
    goto LABEL_62;
  }

LABEL_146:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  frameDataDestroy(v3);
}

uint64_t fvdp_ensureEncoderAndPools(uint64_t a1)
{
  v260 = *MEMORY[0x1E69E9840];
  if (*(a1 + 336))
  {
    return 0;
  }

  v2 = (a1 + 336);
  if (*(a1 + 24) != 2)
  {
    Mutable = 0;
    v42 = 0;
    v45 = 0;
    v77 = 4294955224;
LABEL_196:
    v202 = *(a1 + 320);
    if (v202)
    {
      CFRelease(v202);
      *(a1 + 320) = 0;
    }

    if (*v2)
    {
      CFRelease(*v2);
      *v2 = 0;
    }

    goto LABEL_171;
  }

  if (*(a1 + 312) != 1852796517)
  {
    OUTLINED_FUNCTION_1_122();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v27 = OUTLINED_FUNCTION_68_8(os_log_and_send_and_compose_flags_and_os_log_type, v20, v21, v22, v23, v24, v25, v26, v221, v224, v227, v230, v233, v238, *v242, v242[4], cf);
    if (OUTLINED_FUNCTION_124_0(v27))
    {
      OUTLINED_FUNCTION_94_3();
      OUTLINED_FUNCTION_84_2();
      v246 = 138414082;
      v247 = v28;
      v248 = 2080;
      v249 = "fvdp_ensureEncoderAndPools";
      v250 = 1024;
      *v251 = v29;
      *&v251[4] = 1024;
      *&v251[6] = v30;
      v252 = 1024;
      v253 = v31;
      v254 = 1024;
      v255 = v32;
      v256 = 1024;
      v257 = v33;
      v258 = 1024;
      v259 = v34;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_6_77();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_345_0();
    v35 = MEMORY[0x1E695E9D8];
    v36 = MEMORY[0x1E695E9E8];
    v37 = OUTLINED_FUNCTION_249();
    Mutable = CFDictionaryCreateMutable(v37, v38, v35, v36);
    v40 = OUTLINED_FUNCTION_249();
    v42 = CFDictionaryCreateMutable(v40, v41, v35, v36);
    v43 = OUTLINED_FUNCTION_249();
    v45 = CFDictionaryCreateMutable(v43, v44, v35, v36);
    FigCFDictionarySetInt32();
    CFDictionarySetValue(Mutable, *MEMORY[0x1E6984260], @"None");
    v46 = MEMORY[0x1E695E4D0];
    if (!*(a1 + 386))
    {
      v46 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(v42, *MEMORY[0x1E69838D0], *v46);
    v47 = *(a1 + 312);
    v48 = v47 == 1869117027 || v47 == 1718908528;
    if (v48)
    {
      v49 = OUTLINED_FUNCTION_249();
      v53 = CFDictionaryCreateMutable(v49, v50, v51, v52);
      FigCFDictionarySetInt64();
      CFDictionarySetValue(v45, *MEMORY[0x1E69660D8], v53);
      CFRelease(v53);
    }

    v226 = v42;
    v229 = v2;
    v223 = a1;
    v54 = VTCompressionSessionCreateWithOptions();
    if (v54)
    {
      v77 = v54;
      OUTLINED_FUNCTION_1_122();
      v191 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v199 = OUTLINED_FUNCTION_101_2(v191, v192, v193, v194, v195, v196, v197, v198, a1, v42, v2, v232, v235, v240, *v244, v244[4], cf);
      if (OUTLINED_FUNCTION_28_1(v199))
      {
        OUTLINED_FUNCTION_8_46();
        OUTLINED_FUNCTION_36_17();
        OUTLINED_FUNCTION_5_84();
        OUTLINED_FUNCTION_21_22();
        OUTLINED_FUNCTION_27_10();
      }

LABEL_194:
      OUTLINED_FUNCTION_16();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_196;
    }

    VTSessionSetProperties(*(a1 + 336), *(a1 + 496));
    v55 = *(a1 + 376);
    if (v55)
    {
      v56 = v55[1];
      if (v56)
      {
        VTSessionSetProperty(*(a1 + 336), *MEMORY[0x1E69835B0], v56);
        v55 = *(a1 + 376);
      }

      v57 = v55[3];
      if (v57)
      {
        VTSessionSetProperty(*(a1 + 336), *MEMORY[0x1E6983878], v57);
        v55 = *(a1 + 376);
      }

      v58 = v55[2];
      if (v58)
      {
        VTSessionSetProperty(*v2, *MEMORY[0x1E69838B8], v58);
      }
    }

    OUTLINED_FUNCTION_58_6();
    if (!(!v48 & v59) && (OUTLINED_FUNCTION_98_1(), !v64) || ((OUTLINED_FUNCTION_57_7(), !v48) ? (v61 = v60 == 1752589105) : (v61 = 1), !v61 ? (v62 = v60 == 1869117027) : (v62 = 1), !v62 ? (v63 = v60 == 1836415073) : (v63 = 1), v63))
    {
      vtSessionSetPropertyInt32(*(a1 + 336), *MEMORY[0x1E6983880], *(a1 + 504));
    }

    v65 = *(a1 + 508);
    if (v65 >= 1)
    {
      if (dword_1EAF17550)
      {
        OUTLINED_FUNCTION_1_122();
        v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v74 = OUTLINED_FUNCTION_40_15(v66, v67, v68, v69, v70, v71, v72, v73, a1, v42, v2, v232, v235, v240, *v244, v244[4], cf);
        if (OUTLINED_FUNCTION_16_1(v74))
        {
          OUTLINED_FUNCTION_8_46();
          OUTLINED_FUNCTION_36_17();
          *v251 = v75;
          OUTLINED_FUNCTION_100();
          OUTLINED_FUNCTION_21_22();
          OUTLINED_FUNCTION_61_5();
        }

        OUTLINED_FUNCTION_86_4();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0();
        v65 = *(a1 + 508);
      }

      vtSessionSetPropertyInt32(*v2, *MEMORY[0x1E6983720], v65);
    }

    v87 = *(a1 + 512);
    if (v87 >= 1)
    {
      if (dword_1EAF17550)
      {
        OUTLINED_FUNCTION_1_122();
        v88 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v96 = OUTLINED_FUNCTION_40_15(v88, v89, v90, v91, v92, v93, v94, v95, v223, v226, v229, v232, v235, v240, *v244, v244[4], cf);
        if (OUTLINED_FUNCTION_16_1(v96))
        {
          OUTLINED_FUNCTION_8_46();
          OUTLINED_FUNCTION_36_17();
          *v251 = v97;
          OUTLINED_FUNCTION_100();
          OUTLINED_FUNCTION_21_22();
          OUTLINED_FUNCTION_61_5();
        }

        OUTLINED_FUNCTION_86_4();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0();
        v87 = *(a1 + 512);
      }

      vtSessionSetPropertyInt32(*v2, *MEMORY[0x1E6983818], v87);
    }

    v241 = *(a1 + 16);
    v98 = *(a1 + 316);
    switch(v98)
    {
      case 875704934:
        OUTLINED_FUNCTION_57_7();
        if (v48 || v99 == 1718908515)
        {
          v101 = MEMORY[0x1E6983EC8];
          goto LABEL_154;
        }

        goto LABEL_124;
      case 875836518:
LABEL_65:
        OUTLINED_FUNCTION_57_7();
        if (v48 || v99 == 1718908515)
        {
          v101 = MEMORY[0x1E6983ED0];
          goto LABEL_154;
        }

LABEL_124:
        if (v99 != 1718908520 && v99 != 1718908528 && v99 != 1752589105 && v99 != 1869117027 && v99 != 1836415073)
        {
          goto LABEL_160;
        }

        v101 = MEMORY[0x1E6983F90];
LABEL_154:
        v136 = *v101;
        if (*v101)
        {
          if (dword_1EAF17550)
          {
            OUTLINED_FUNCTION_1_122();
            v137 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v145 = OUTLINED_FUNCTION_101_2(v137, v138, v139, v140, v141, v142, v143, v144, v223, v226, v229, v232, v45, v241, *v244, v244[4], cf);
            if (OUTLINED_FUNCTION_28_1(v145))
            {
              OUTLINED_FUNCTION_93_3();
              OUTLINED_FUNCTION_8_46();
              v249 = "fvdp_setEncoderProfileLevel";
              v250 = 2112;
              *v251 = v136;
              OUTLINED_FUNCTION_100();
              OUTLINED_FUNCTION_21_22();
              OUTLINED_FUNCTION_27_10();
            }

            OUTLINED_FUNCTION_86_4();
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_417();
            v45 = v237;
          }

          VTSessionSetProperty(*v2, *MEMORY[0x1E69837D0], v136);
        }

        goto LABEL_160;
      case 1983013176:
        OUTLINED_FUNCTION_39_16();
        if (v48 || v131 == 1718908528 || v131 == 1752589105 || v131 == 1836415073 || v131 == 1869117027)
        {
          goto LABEL_153;
        }

        OUTLINED_FUNCTION_1_122();
        v181 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v189 = OUTLINED_FUNCTION_40_15(v181, v182, v183, v184, v185, v186, v187, v188, v223, v226, v229, v232, v235, v241, *v244, v244[4], cf);
        if (!OUTLINED_FUNCTION_16_1(v189))
        {
          goto LABEL_187;
        }

        break;
      case 2019963956:
LABEL_87:
        OUTLINED_FUNCTION_39_16();
        if (v48 || v107 == 1718908528 || v107 == 1752589105 || v107 == 1869117027 || v107 == 1836415073)
        {
          if (!vtSessionSetPropertyInt32(*v2, @"OutputBitDepth", 10))
          {
            v101 = MEMORY[0x1E6983F88];
            goto LABEL_154;
          }

          OUTLINED_FUNCTION_1_122();
          v212 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v220 = OUTLINED_FUNCTION_65_8(v212, v213, v214, v215, v216, v217, v218, v219, v223, v226, v229, v232, v45, v241, *v244, v244[4], cf);
          if (OUTLINED_FUNCTION_115_1(v220))
          {
            OUTLINED_FUNCTION_93_3();
            OUTLINED_FUNCTION_8_46();
            OUTLINED_FUNCTION_36_17();
            OUTLINED_FUNCTION_5_84();
            OUTLINED_FUNCTION_36();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_97_5();
          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_89_4();
          v101 = MEMORY[0x1E6983F88];
          goto LABEL_207;
        }

        OUTLINED_FUNCTION_1_122();
        v161 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v169 = OUTLINED_FUNCTION_40_15(v161, v162, v163, v164, v165, v166, v167, v168, v223, v226, v229, v232, v235, v241, *v244, v244[4], cf);
        if (!OUTLINED_FUNCTION_16_1(v169))
        {
          goto LABEL_187;
        }

        break;
      default:
        if (v98 != 2016436536)
        {
          if (v98 == 2016567608)
          {
            goto LABEL_103;
          }

          if (v98 != 2016686640)
          {
            if (v98 != 2016698680)
            {
              if (v98 != 2019963442)
              {
                if (v98 == 1983144248)
                {
                  goto LABEL_65;
                }

LABEL_160:
                fvdp_encoderControlApply(a1, 1);
                v146 = *(a1 + 320);
                PixelBufferPool = VTCompressionSessionGetPixelBufferPool(*(a1 + 336));
                *(a1 + 320) = PixelBufferPool;
                if (PixelBufferPool)
                {
                  CFRetain(PixelBufferPool);
                }

                if (v146)
                {
                  CFRelease(v146);
                }

                goto LABEL_164;
              }

LABEL_103:
              OUTLINED_FUNCTION_39_16();
              if (!v48 && v112 != 1718908528 && v112 != 1752589105 && v112 != 1869117027 && v112 != 1836415073)
              {
                OUTLINED_FUNCTION_1_122();
                v171 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v179 = OUTLINED_FUNCTION_40_15(v171, v172, v173, v174, v175, v176, v177, v178, v223, v226, v229, v232, v235, v241, *v244, v244[4], cf);
                if (!OUTLINED_FUNCTION_16_1(v179))
                {
                  goto LABEL_187;
                }

                break;
              }

              if (vtSessionSetPropertyInt32(*v2, @"OutputBitDepth", 10))
              {
                OUTLINED_FUNCTION_1_122();
                v117 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v125 = OUTLINED_FUNCTION_65_8(v117, v118, v119, v120, v121, v122, v123, v124, v223, v226, v229, v232, v45, v241, *v244, v244[4], cf);
                if (OUTLINED_FUNCTION_115_1(v125))
                {
                  OUTLINED_FUNCTION_93_3();
                  OUTLINED_FUNCTION_8_46();
                  OUTLINED_FUNCTION_36_17();
                  OUTLINED_FUNCTION_5_84();
                  OUTLINED_FUNCTION_36();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_97_5();
                OUTLINED_FUNCTION_16();
                OUTLINED_FUNCTION_89_4();
                v101 = MEMORY[0x1E6983F80];
LABEL_207:
                v45 = v236;
                goto LABEL_154;
              }

LABEL_153:
              v101 = MEMORY[0x1E6983F80];
              goto LABEL_154;
            }

            goto LABEL_87;
          }
        }

        OUTLINED_FUNCTION_39_16();
        if (v48 || v102 == 1718908528 || v102 == 1752589105 || v102 == 1869117027 || v102 == 1836415073)
        {
          if (!vtSessionSetPropertyInt32(*v2, @"OutputBitDepth", 10))
          {
            v101 = MEMORY[0x1E6983F78];
            goto LABEL_154;
          }

          OUTLINED_FUNCTION_1_122();
          v203 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v211 = OUTLINED_FUNCTION_65_8(v203, v204, v205, v206, v207, v208, v209, v210, v223, v226, v229, v232, v45, v241, *v244, v244[4], cf);
          if (OUTLINED_FUNCTION_115_1(v211))
          {
            OUTLINED_FUNCTION_93_3();
            OUTLINED_FUNCTION_8_46();
            OUTLINED_FUNCTION_36_17();
            OUTLINED_FUNCTION_5_84();
            OUTLINED_FUNCTION_36();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_97_5();
          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_89_4();
          v101 = MEMORY[0x1E6983F78];
          goto LABEL_207;
        }

        OUTLINED_FUNCTION_1_122();
        v151 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v159 = OUTLINED_FUNCTION_40_15(v151, v152, v153, v154, v155, v156, v157, v158, v223, v226, v229, v232, v235, v241, *v244, v244[4], cf);
        if (!OUTLINED_FUNCTION_16_1(v159))
        {
          goto LABEL_187;
        }

        break;
    }

    OUTLINED_FUNCTION_53_13();
    OUTLINED_FUNCTION_4_98();
    OUTLINED_FUNCTION_21_22();
    OUTLINED_FUNCTION_61_5();
LABEL_187:
    OUTLINED_FUNCTION_86_4();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_238_0();
    goto LABEL_160;
  }

  if (*(a1 + 320))
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_122();
  v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v11 = OUTLINED_FUNCTION_68_8(v3, v4, v5, v6, v7, v8, v9, v10, v221, v224, v227, v230, v233, v238, *v242, v242[4], cf);
  if (OUTLINED_FUNCTION_124_0(v11))
  {
    OUTLINED_FUNCTION_94_3();
    OUTLINED_FUNCTION_84_2();
    v246 = 138414082;
    v247 = v12;
    v248 = 2080;
    v249 = "fvdp_ensureEncoderAndPools";
    v250 = 1024;
    *v251 = v13;
    *&v251[4] = 1024;
    *&v251[6] = v14;
    v252 = 1024;
    v253 = v15;
    v254 = 1024;
    v255 = v16;
    v256 = 1024;
    v257 = v17;
    v258 = 1024;
    v259 = v18;
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_6_77();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_345_0();
  v76 = fvdp_createPixelBufferPool(*(a1 + 316), *(a1 + 392), (a1 + 320));
  v45 = 0;
  v42 = 0;
  Mutable = 0;
  if (v76)
  {
    v77 = v76;
    OUTLINED_FUNCTION_1_122();
    v78 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v86 = OUTLINED_FUNCTION_68_8(v78, v79, v80, v81, v82, v83, v84, v85, v222, v225, v228, v231, v234, v239, *v243, v243[4], cf);
    if (OUTLINED_FUNCTION_124_0(v86))
    {
      OUTLINED_FUNCTION_8_46();
      v249 = "fvdp_ensureEncoderAndPools";
      v250 = 1024;
      OUTLINED_FUNCTION_5_84();
      OUTLINED_FUNCTION_6_77();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_345_0();
    Mutable = 0;
    v42 = 0;
    v45 = 0;
    goto LABEL_196;
  }

LABEL_164:
  if (*(a1 + 632) == 1)
  {
    v148 = *(a1 + 636);
    if (v148 == *(a1 + 316))
    {
      writebackCacheInitWithPool(*(a1 + 640), *(a1 + 320), *(a1 + 376), *(a1 + 368));
      goto LABEL_170;
    }

    cf = 0;
    v149 = fvdp_createPixelBufferPool(v148, *(a1 + 392), &cf);
    if (!v149)
    {
      writebackCacheInitWithPool(*(a1 + 640), cf, *(a1 + 376), *(a1 + 368));
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_170;
    }

    v77 = v149;
    v200 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v201 = os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_28_1(v201))
    {
      OUTLINED_FUNCTION_8_46();
      OUTLINED_FUNCTION_36_17();
      OUTLINED_FUNCTION_5_84();
      OUTLINED_FUNCTION_21_22();
      OUTLINED_FUNCTION_27_10();
    }

    goto LABEL_194;
  }

LABEL_170:
  v77 = 0;
LABEL_171:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  return v77;
}

void fvdp_sendEncodedFrame(uint64_t a1, char *a2, int a3, char a4, CMSampleBufferRef sbuf)
{
  if ((a4 & 2) != 0)
  {
    if (*(a1 + 736))
    {
      v9 = 1;
      atomic_fetch_add_explicit((a1 + 696), 1u, memory_order_relaxed);
      if (!a2[172])
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (!*(a1 + 737))
      {
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_100_4((a1 + 696));
      v9 = a2[172] != 0;
      if (!a2[172])
      {
        goto LABEL_69;
      }
    }

    atomic_fetch_add_explicit((a1 + 704), v9, memory_order_relaxed);
    goto LABEL_69;
  }

  if (a3)
  {
    OUTLINED_FUNCTION_29_18();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(type));
    if (OUTLINED_FUNCTION_109_0(v8))
    {
      OUTLINED_FUNCTION_24_19();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_65();
LABEL_67:
      _os_log_send_and_compose_impl();
      goto LABEL_68;
    }

    goto LABEL_68;
  }

  TotalSampleSize = CMSampleBufferGetTotalSampleSize(sbuf);
  if (dword_1EAF17550 >= 2)
  {
    OUTLINED_FUNCTION_29_18();
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v12 = os_log_type_enabled(v11, BYTE3(type));
    if (OUTLINED_FUNCTION_16_1(v12))
    {
      OUTLINED_FUNCTION_24_19();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_61_5();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  if (*(a1 + 24) == 2)
  {
    if (*(a1 + 744) || *(a1 + 745))
    {
      *(a2 + 16) = mach_absolute_time();
    }

    if (*(a1 + 746) && *MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_52_13();
    }

    if (*(a1 + 744) || *(a1 + 745))
    {
      if (qword_1ED4CB028 != -1)
      {
        dispatch_once(&qword_1ED4CB028, &__block_literal_global_450);
      }

      if (a2[172])
      {
        v13 = *(a2 + 15);
        *(a2 + 12) = v13;
        *(a2 + 13) = v13;
        *(a2 + 14) = v13;
      }

      v14 = MEMORY[0x1E695E480];
      if (*(a1 + 744))
      {
        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        for (i = 0; i != 40; i += 8)
        {
          v64 = FigHostTimeToNanoseconds() / 1000000.0;
          v17 = OUTLINED_FUNCTION_249();
          CFStringAppendFormat(v17, v18, @" %6.1f");
        }

        OUTLINED_FUNCTION_100_4(&dword_1ED4CB024);
        v20 = (v19 + 1) % 0x3Cu;
        v21 = dword_1EAF17550;
        if (v20 == 1 && dword_1EAF17550 != 0)
        {
          OUTLINED_FUNCTION_147();
          OUTLINED_FUNCTION_44_15();
          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v31 = OUTLINED_FUNCTION_441_1(v23, v24, v25, v26, v27, v28, v29, v30, *&v64, v65, TotalSampleSize, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
          if (OUTLINED_FUNCTION_28_1(v31))
          {
            OUTLINED_FUNCTION_24_19();
            OUTLINED_FUNCTION_76_7();
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_108();
            OUTLINED_FUNCTION_27_10();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417();
          v21 = dword_1EAF17550;
        }

        if (v21)
        {
          OUTLINED_FUNCTION_29_18();
          v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v40 = OUTLINED_FUNCTION_441_1(v32, v33, v34, v35, v36, v37, v38, v39, *&v64, v65, TotalSampleSize, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
          if (OUTLINED_FUNCTION_28_1(v40))
          {
            OUTLINED_FUNCTION_43_13();
            OUTLINED_FUNCTION_76_7();
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_108();
            OUTLINED_FUNCTION_27_10();
          }

          OUTLINED_FUNCTION_97_5();
          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v14 = MEMORY[0x1E695E480];
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      if (*(a1 + 745))
      {
        v41 = *v14;
        v42 = CFArrayCreateMutable(v41, 0, MEMORY[0x1E695E9C0]);
        for (j = 0; j != 40; j += 8)
        {
          FigCFArrayAppendInt64();
        }

        CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject(*(a1 + 64));
        v45 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v45)
        {
          v45(CMBaseObject, @"timestamps", v42);
        }

        v46 = CFNumberCreate(v41, kCFNumberSInt64Type, a2 + 72);
        v47 = FigVirtualDisplaySinkGetCMBaseObject(*(a1 + 64));
        v48 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v48)
        {
          v48(v47, @"submitSurfaceTimestamp", v46);
        }

        if (v42)
        {
          CFRelease(v42);
        }

        if (v46)
        {
          CFRelease(v46);
        }
      }
    }

    v49 = *(a1 + 664);
    if (v49)
    {
      tapWriteSampleBuffer(v49, sbuf);
    }

    v50 = *(a2 + 19);
    if (v50)
    {
      CMSetAttachment(sbuf, @"FVDFrameUserData", v50, 1u);
    }

    v51 = *(a1 + 64);
    v52 = *(a2 + 34);
    v53 = *(a2 + 1);
    v54 = *(a2 + 2);
    v55 = *(a2 + 3);
    v56 = *(a2 + 4);
    v57 = *(a2 + 5);
    v58 = *(a2 + 6);
    v60 = *(a2 + 7);
    v59 = *(a2 + 8);
    v61 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v61 || v61(v51, sbuf, v52, v53, v54, v55, v56, v57, v58, v60, v59))
    {
      OUTLINED_FUNCTION_29_18();
      v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v63 = os_log_type_enabled(v62, BYTE3(type));
      if (OUTLINED_FUNCTION_109_0(v63))
      {
        OUTLINED_FUNCTION_26_22();
        OUTLINED_FUNCTION_23_29();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_6_77();
        goto LABEL_67;
      }

LABEL_68:
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_524();
      goto LABEL_69;
    }

    if (*(a1 + 736) || *(a1 + 737))
    {
      if (TotalSampleSize)
      {
        atomic_fetch_add_explicit((a1 + 716), TotalSampleSize, memory_order_relaxed);
      }
    }
  }

LABEL_69:
  frameDataDestroy(a2);
}

void tapWriteSampleBuffer(uint64_t *a1, CMSampleBufferRef sbuf)
{
  v82 = *MEMORY[0x1E69E9840];
  if (!sbuf)
  {
    return;
  }

  blockBufferOut = 0;
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  if (!DataBuffer)
  {
    v8 = CFRetain(sbuf);
    v7 = 0;
    goto LABEL_8;
  }

  v5 = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], DataBuffer, *MEMORY[0x1E695E480], 0, 0, 0, 2u, &blockBufferOut);
  if (v5)
  {
    v7 = v5;
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_44_15();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v47 = OUTLINED_FUNCTION_116_0(os_log_and_send_and_compose_flags_and_os_log_type, v40, v41, v42, v43, v44, v45, v46, v66, v68, v70, v72, SBYTE2(v72), BYTE3(v72), SHIDWORD(v72));
    if (OUTLINED_FUNCTION_109_0(v47))
    {
      goto LABEL_29;
    }
  }

  else
  {
    CopyWithNoData = FigSampleBufferCreateCopyWithNoData();
    if (!CopyWithNoData)
    {
      v7 = CMSampleBufferSetDataBuffer(0, blockBufferOut);
      if (!v7)
      {
        v8 = 0;
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_44_15();
      v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v65 = OUTLINED_FUNCTION_116_0(v57, v58, v59, v60, v61, v62, v63, v64, v66, v68, v70, v72, SBYTE2(v72), BYTE3(v72), SHIDWORD(v72));
      if (!OUTLINED_FUNCTION_109_0(v65))
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v7 = CopyWithNoData;
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_44_15();
    v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v56 = OUTLINED_FUNCTION_116_0(v48, v49, v50, v51, v52, v53, v54, v55, v66, v68, v70, v72, SBYTE2(v72), BYTE3(v72), SHIDWORD(v72));
    if (OUTLINED_FUNCTION_109_0(v56))
    {
LABEL_29:
      OUTLINED_FUNCTION_32_17();
      OUTLINED_FUNCTION_42_14();
      OUTLINED_FUNCTION_7_61();
      OUTLINED_FUNCTION_14_17();
      _os_log_send_and_compose_impl();
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_524();
  v8 = 0;
LABEL_8:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (!v7)
  {
    v9 = *a1;
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v10)
    {
      v11 = v10(v9, v8, 0, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
      if (!v11)
      {
        if (!v8)
        {
          return;
        }

        goto LABEL_14;
      }

      v7 = v11;
    }

    else
    {
      v7 = -12782;
    }

    v12 = OUTLINED_FUNCTION_46_11();
    v20 = OUTLINED_FUNCTION_66_8(v12, v13, v14, v15, v16, v17, v18, v19, v66, v68, v70, v72, OS_LOG_TYPE_DEFAULT, 0, blockBufferOut);
    if (!OUTLINED_FUNCTION_115_1(v20))
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v21 = OUTLINED_FUNCTION_46_11();
  v29 = OUTLINED_FUNCTION_66_8(v21, v22, v23, v24, v25, v26, v27, v28, v66, v68, v70, v72, OS_LOG_TYPE_DEFAULT, 0, blockBufferOut);
  if (OUTLINED_FUNCTION_115_1(v29))
  {
LABEL_18:
    OUTLINED_FUNCTION_32_17();
    v80 = "tapWriteSampleBuffer";
    OUTLINED_FUNCTION_54_14();
    OUTLINED_FUNCTION_7_61();
    OUTLINED_FUNCTION_36();
    _os_log_send_and_compose_impl();
  }

LABEL_20:
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_414();
  v30 = OUTLINED_FUNCTION_46_11();
  v38 = OUTLINED_FUNCTION_66_8(v30, v31, v32, v33, v34, v35, v36, v37, v67, v69, v71, v73, cf, cf_4, blockBufferOut);
  if (OUTLINED_FUNCTION_115_1(v38))
  {
    v77 = 138413058;
    v78 = &stru_1F0B1AFB8;
    v79 = 2080;
    v80 = "tapWriteSampleBuffer";
    OUTLINED_FUNCTION_87_1();
    v81 = v7;
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_36();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_414();
  if (v8)
  {
LABEL_14:
    CFRelease(v8);
  }
}

uint64_t fvdp_sendFrameToEncoder(uint64_t a1, int a2)
{
  v91 = *MEMORY[0x1E69E9840];
  target = 0;
  v4 = *(a1 + 56);
  v5 = *(a1 + 16);
  if (*(a1 + 736) || *(a1 + 737))
  {
    OUTLINED_FUNCTION_100_4((a1 + 692));
    if (a2)
    {
      atomic_fetch_add_explicit((a1 + 700), v6, memory_order_relaxed);
    }
  }

  if (!*v4)
  {
    if (dword_1EAF17550)
    {
      OUTLINED_FUNCTION_28_19();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v19 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
      if (OUTLINED_FUNCTION_124_0(v19))
      {
        OUTLINED_FUNCTION_31_16();
        *(&duration.flags + 2) = "fvdp_sendFrameToEncoder";
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_6_77();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_345_0();
    }

    v44 = *(a1 + 336);
    if (v44)
    {
      completeUntilPresentationTimeStamp = **&MEMORY[0x1E6960C70];
      VTCompressionSessionCompleteFrames(v44, &completeUntilPresentationTimeStamp);
    }

    v45 = *(a1 + 64);
    v46 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v46)
    {
      v46(v45, @"clearScreen", *MEMORY[0x1E695E4D0], 0);
    }

    goto LABEL_64;
  }

  if (!*(a1 + 336) && *(a1 + 312) != 1852796517)
  {
LABEL_64:
    v13 = 0;
    Mutable = 0;
    v47 = 0;
    goto LABEL_89;
  }

  *(a1 + 48) = 0;
  v7 = *(a1 + 40);
  v8 = dispatch_time(0, *(a1 + 32));
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v9 = *(a1 + 656);
  if (v9)
  {
    v10 = *v4;
    v11 = *(a1 + 424);
    cf = 0;
    if (v10)
    {
      SampleBufferWithPixelBuffer = fvdp_createSampleBufferWithPixelBuffer(v10, v11, (v9 + 16), &cf);
      if (SampleBufferWithPixelBuffer)
      {
        v67 = SampleBufferWithPixelBuffer;
        v80 = OUTLINED_FUNCTION_79_6();
        if (os_log_type_enabled(v80, HIBYTE(v82)))
        {
          v68 = *type;
        }

        else
        {
          v68 = *type & 0xFFFFFFFE;
        }

        if (v68)
        {
          LODWORD(duration.value) = 138413058;
          *(&duration.value + 4) = &stru_1F0B1AFB8;
          LOWORD(duration.flags) = 2080;
          *(&duration.flags + 2) = "tapWritePixelBuffer";
          OUTLINED_FUNCTION_54_14();
          v86 = 1652;
          v87 = v69;
          v88 = v67;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_14_17();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_16();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v76 = OUTLINED_FUNCTION_79_6();
        LODWORD(v80) = HIBYTE(v82);
        v77 = os_log_type_enabled(v76, HIBYTE(v82));
        if (OUTLINED_FUNCTION_28_1(v77))
        {
          LODWORD(duration.value) = 138413058;
          *(&duration.value + 4) = &stru_1F0B1AFB8;
          LOWORD(duration.flags) = 2080;
          *(&duration.flags + 2) = "tapWritePixelBuffer";
          OUTLINED_FUNCTION_87_1();
          v89 = v67;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_14_17();
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        tapWriteSampleBuffer(v9, cf);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  v13 = malloc_type_malloc(0xB0uLL, 0x10E00401916B1CBuLL);
  memcpy(v13, v4, 0xB0uLL);
  if (*v13)
  {
    CFRetain(*v13);
  }

  v14 = v13[18];
  if (v14)
  {
    CFRetain(v14);
  }

  v15 = v13[19];
  if (v15)
  {
    CFRetain(v15);
  }

  v16 = *(a1 + 424);
  v13[20] = v16;
  *(v13 + 172) = a2;
  if (*(a1 + 312) == 1852796517)
  {
    if (*(a1 + 336))
    {
      OUTLINED_FUNCTION_28_19();
      v70 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v71 = os_log_type_enabled(v70, type[0]);
      if (OUTLINED_FUNCTION_124_0(v71))
      {
        if (v5)
        {
          v72 = v5;
        }

        else
        {
          v72 = &stru_1F0B1AFB8;
        }

        LODWORD(duration.value) = 138412802;
        *(&duration.value + 4) = v72;
        LOWORD(duration.flags) = 2080;
        *(&duration.flags + 2) = "fvdp_sendFrameToEncoder";
        OUTLINED_FUNCTION_54_14();
        v86 = 3803;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_44_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_345_0();
      Mutable = 0;
      v47 = 4294955226;
    }

    else
    {
      v17 = fvdp_createSampleBufferWithPixelBuffer(*v4, v16, (a1 + 344), &target);
      if (!v17)
      {
        if (*(a1 + 312) == 1852796517 && *(v13 + 172))
        {
          CMSetAttachment(target, *MEMORY[0x1E6983C38], *MEMORY[0x1E695E4D0], 1u);
        }

        if (*(a1 + 744) || *(a1 + 745))
        {
          v13[15] = mach_absolute_time();
        }

        if (*(a1 + 746) && *MEMORY[0x1E695FF58] == 1)
        {
          OUTLINED_FUNCTION_52_13();
        }

        fvdp_sendEncodedFrame(a1, v13, 0, 0, target);
        goto LABEL_64;
      }

      v47 = v17;
      OUTLINED_FUNCTION_28_19();
      v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v74 = os_log_type_enabled(v73, type[0]);
      if (OUTLINED_FUNCTION_109_0(v74))
      {
        OUTLINED_FUNCTION_31_16();
        OUTLINED_FUNCTION_42_14();
        v86 = 3806;
        v87 = v75;
        v88 = v47;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_44_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_524();
      Mutable = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_58_6();
    if ((!v26 & v20 || (OUTLINED_FUNCTION_98_1(), v26)) && ((OUTLINED_FUNCTION_57_7(), !v26) ? (v22 = v21 == 1752589105) : (v22 = 1), !v22 ? (v23 = v21 == 1869117027) : (v23 = 1), !v23 ? (v24 = v21 == 1836415073) : (v24 = 1), !v24))
    {
      Mutable = 0;
    }

    else
    {
      Mutable = 0;
      v27 = *(a1 + 504);
      if (v27 <= 0x26 && ((1 << v27) & 0x6000100000) != 0)
      {
        v28 = OUTLINED_FUNCTION_249();
        Mutable = CFDictionaryCreateMutable(v28, v29, v30, v31);
        FigCFDictionarySetDouble();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        v32 = *(a1 + 616);
        if (v32)
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x1E6983AB8], v32);
          v33 = *(a1 + 616);
          if (v33)
          {
            CFRelease(v33);
            *(a1 + 616) = 0;
          }
        }

        FigCFDictionarySetInt32();
        v34 = MEMORY[0x1E695E4D0];
        if (*(a1 + 595))
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x1E6983BD8], *MEMORY[0x1E695E4D0]);
          if (dword_1EAF17550)
          {
            v35 = OUTLINED_FUNCTION_63_8();
            v43 = OUTLINED_FUNCTION_102_2(v35, v36, v37, v38, v39, v40, v41, v42, v78, v79, v80, target, v82, type[0], cf);
            if (OUTLINED_FUNCTION_28_1(v43))
            {
              OUTLINED_FUNCTION_31_16();
              *(&duration.flags + 2) = "fvdp_encoderControlCreateFrameProperties";
              OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_14_17();
              OUTLINED_FUNCTION_27_10();
            }

            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v34 = MEMORY[0x1E695E4D0];
          }

          *(a1 + 595) = 0;
        }

        else if (*(a1 + 596))
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x1E6983BE8], *MEMORY[0x1E695E4D0]);
          if (dword_1EAF17550)
          {
            v48 = OUTLINED_FUNCTION_63_8();
            v56 = OUTLINED_FUNCTION_102_2(v48, v49, v50, v51, v52, v53, v54, v55, v78, v79, v80, target, v82, type[0], cf);
            if (OUTLINED_FUNCTION_28_1(v56))
            {
              OUTLINED_FUNCTION_31_16();
              *(&duration.flags + 2) = "fvdp_encoderControlCreateFrameProperties";
              OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_14_17();
              OUTLINED_FUNCTION_27_10();
            }

            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v34 = MEMORY[0x1E695E4D0];
          }

          *(a1 + 596) = 0;
        }

        if (*(v13 + 172))
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x1E6983C38], *v34);
        }

        if (*(a1 + 504) == 38)
        {
          v57 = OUTLINED_FUNCTION_249();
          v61 = CFDictionaryCreateMutable(v57, v58, v59, v60);
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          CFDictionarySetValue(Mutable, *MEMORY[0x1E6983C88], v61);
          if (v61)
          {
            CFRelease(v61);
          }
        }
      }
    }

    fvdp_encoderControlApply(a1, 0);
    if (*(a1 + 744) || *(a1 + 745))
    {
      v13[15] = mach_absolute_time();
    }

    if (*(a1 + 746) && *MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_52_13();
    }

    v62 = *(a1 + 336);
    v63 = *v4;
    CMTimeMake(&completeUntilPresentationTimeStamp, *(a1 + 424), 1000000000);
    duration = **&MEMORY[0x1E6960C70];
    v47 = VTCompressionSessionEncodeFrame(v62, v63, &completeUntilPresentationTimeStamp, &duration, Mutable, v13, 0);
    if (v47)
    {
      OUTLINED_FUNCTION_28_19();
      v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v65 = os_log_type_enabled(v64, type[0]);
      if (OUTLINED_FUNCTION_109_0(v65))
      {
        OUTLINED_FUNCTION_31_16();
        OUTLINED_FUNCTION_42_14();
        v86 = v47;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_44_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_524();
    }

    v13 = 0;
  }

LABEL_89:
  if (target)
  {
    CFRelease(target);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  frameDataDestroy(v13);
  return v47;
}

uint64_t fvdp_ensureWritebackPixelBuffer(uint64_t result, unsigned int a2, int a3, double a4, float64_t a5)
{
  v117 = *MEMORY[0x1E69E9840];
  if (*(result + 24) != 2)
  {
    return result;
  }

  LODWORD(v5) = a3;
  v9 = result;
  v105 = *(result + 16);
  *(result + 209) = a3;
  v10 = *(result + 640);
  v11 = MEMORY[0x1E695F060];
  v12 = *MEMORY[0x1E695F060];
  v13 = *(MEMORY[0x1E695F060] + 8);
  if (v10)
  {
    FigSimpleMutexLock();
    v14 = a4 == *(v10 + 56) && a5 == *(v10 + 64);
    v15 = v13;
    v16 = v12;
    if (v14)
    {
      v15 = v13;
      v16 = v12;
      if (*(v10 + 88) == a2)
      {
        v15 = v13;
        v16 = v12;
        if (*(v10 + 92) == v5)
        {
          v16 = *(v10 + 72);
          v15 = *(v10 + 80);
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    v90 = OUTLINED_FUNCTION_47_12();
    v91 = os_log_type_enabled(v90, v107[0]);
    if (OUTLINED_FUNCTION_115_1(v91))
    {
      OUTLINED_FUNCTION_60_10();
      v111 = v96;
      v112 = "writebackCacheGetFrameSize";
      OUTLINED_FUNCTION_85_3();
      v113 = 1536;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_36();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_414();
    v15 = v13;
    v16 = v12;
  }

  v17 = v16 == v12 && v15 == v13;
  v18 = &dword_1EAF17000;
  v19 = &dword_196E78000;
  if (v17)
  {
    pixelBufferOut[0] = *&a4;
    pixelBufferOut[1] = *&a5;
    v15 = *(v9 + 128);
    v20 = *(v9 + 136);
    v21 = *(v9 + 16);
    if (*(v9 + 209))
    {
      if (a4 > v15 || a5 > v20)
      {
        v103 = *(v9 + 16);
        HIDWORD(v104) = a2;
        v25 = OUTLINED_FUNCTION_37_18();
        os_log_type_enabled(v25, type[4]);
        OUTLINED_FUNCTION_134();
        if (v14)
        {
          v27 = v26;
        }

        else
        {
          v27 = *v107;
        }

        if (v27)
        {
          v31 = v103;
          if (!v103)
          {
            v31 = &stru_1F0B1AFB8;
          }

          v102 = v31;
          snprintf(&byte_1ED4CB038[64 * (atomic_fetch_add_explicit(_MergedGlobals_90, 1u, memory_order_relaxed) & 0xF)], 0x40uLL, "{%g, %g}", a4, a5);
          v32 = &byte_1ED4CB038[64 * (atomic_fetch_add_explicit(_MergedGlobals_90, 1u, memory_order_relaxed) & 0xF)];
          v33 = OUTLINED_FUNCTION_71_5();
          snprintf(v33, v34, "{%g, %g}", v15, v20);
          v109 = 138413058;
          OUTLINED_FUNCTION_59_9();
          OUTLINED_FUNCTION_78_4();
          HIWORD(v115) = v35;
          v116 = v32;
          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_36();
          _os_log_send_and_compose_impl();
        }

        v18 = &dword_1EAF17000;
        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_238_0();
        v15 = a5;
        v16 = a4;
        v19 = &dword_196E78000;
        v21 = v103;
        goto LABEL_51;
      }
    }

    else
    {
      if (!CFEqual(*(v9 + 72), @"FileWriter") || *(v9 + 80))
      {
        v23 = a4 > a5;
        if (v15 > v20)
        {
          v23 = a4 < a5;
        }
      }

      else
      {
        v23 = a2 % 0xB4 == 90;
      }

      if (v23)
      {
        v28 = v15;
      }

      else
      {
        v28 = v20;
      }

      if (v23)
      {
        v29 = v20;
      }

      else
      {
        v29 = v15;
      }

      if (*(v9 + 210))
      {
        v16 = ((v29 + 1) & 0xFFFFFFFE);
        OUTLINED_FUNCTION_95_2();
        pixelBufferOut[0] = *&v16;
        pixelBufferOut[1] = *&v15;
        goto LABEL_51;
      }

      v22.f64[0] = a4;
      FigDisplayModes_DetermineSenderSurfaceDimensionsFromDisplayModeAndCurrentSenderDisplaySize(*(v9 + 160), pixelBufferOut, v29, v28, v22, a5, 0.0);
      v16 = *pixelBufferOut;
      v15 = *&pixelBufferOut[1];
      if (a4 >= *pixelBufferOut || a5 >= *&pixelBufferOut[1])
      {
LABEL_51:
        v36 = *(v9 + 112);
        v37 = *(v9 + 120);
        if (*(v9 + 128) != v36 || *(v9 + 136) != v37)
        {
          *v107 = *v11;
          FigDisplayModes_ConvertSquarePixelSizeToNonSquarePixelSize(a2, v107, v16, v15, *(v9 + 144), *(v9 + 152), v36, v37, *(v9 + 176));
          if (v18[340] >= 3)
          {
            HIDWORD(v104) = a2;
            type[4] = 0;
            type[3] = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_134();
            if (v14)
            {
              v41 = v40;
            }

            else
            {
              v41 = 0;
            }

            if (v41)
            {
              if (v21)
              {
                v42 = v21;
              }

              else
              {
                v42 = &stru_1F0B1AFB8;
              }

              v103 = v42;
              snprintf(&byte_1ED4CB038[64 * (atomic_fetch_add_explicit(_MergedGlobals_90, 1u, memory_order_relaxed) & 0xF)], 0x40uLL, "{%g, %g}", *pixelBufferOut, *&pixelBufferOut[1]);
              v43 = *v107;
              v44 = *&v107[8];
              v45 = &byte_1ED4CB038[64 * (atomic_fetch_add_explicit(_MergedGlobals_90, 1u, memory_order_relaxed) & 0xF)];
              v98 = v43;
              v100 = v44;
              v46 = OUTLINED_FUNCTION_71_5();
              snprintf(v46, v47, "{%g, %g}", *&v98, v100);
              v109 = 138413058;
              OUTLINED_FUNCTION_59_9();
              OUTLINED_FUNCTION_78_4();
              HIWORD(v115) = v48;
              v116 = v45;
              OUTLINED_FUNCTION_62();
              OUTLINED_FUNCTION_36();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_238_0();
            v19 = &dword_196E78000;
            v18 = &dword_1EAF17000;
          }

          *pixelBufferOut = *v107;
          v15 = *&v107[8];
          v16 = *v107;
        }

        goto LABEL_66;
      }

      pixelBufferOut[0] = *&a4;
      pixelBufferOut[1] = *&a5;
    }

    v15 = a5;
    v16 = a4;
    goto LABEL_51;
  }

LABEL_66:
  if (v18[340])
  {
    HIDWORD(v104) = a2;
    v49 = v5;
    v5 = v19;
    LODWORD(pixelBufferOut[0]) = 0;
    v107[0] = OS_LOG_TYPE_DEFAULT;
    v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v51 = pixelBufferOut[0];
    os_log_type_enabled(v50, v107[0]);
    OUTLINED_FUNCTION_134();
    if (v14)
    {
      v53 = v52;
    }

    else
    {
      v53 = v51;
    }

    if (v53)
    {
      if (v105)
      {
        v54 = v105;
      }

      else
      {
        v54 = &stru_1F0B1AFB8;
      }

      snprintf(&_MergedGlobals_90[16 * (atomic_fetch_add_explicit(_MergedGlobals_90, 1u, memory_order_relaxed) & 0xF) + 6], 0x40uLL, "{%g, %g}", v16, v15);
      v109 = 138412802;
      v110 = v54;
      v111 = 2080;
      OUTLINED_FUNCTION_78_4();
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_36();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
    v19 = v5;
    LOBYTE(v5) = v49;
  }

  v55 = *(v9 + 216) == v16 && *(v9 + 224) == v15;
  if (!v55 || (*(v9 + 232) == v16 ? (v56 = *(v9 + 240) == v15) : (v56 = 0), !v56))
  {
    fvdp_shutdownEncoderAndPools(v9);
    *(v9 + 216) = v16;
    *(v9 + 224) = v15;
    *(v9 + 232) = v16;
    *(v9 + 240) = v15;
  }

  v57 = fvdp_ensureEncoderAndPools(v9);
  if (v57)
  {
    v92 = v57;
    v93 = OUTLINED_FUNCTION_47_12();
    v94 = os_log_type_enabled(v93, v107[0]);
    if (OUTLINED_FUNCTION_77_0(v94))
    {
      v109 = *(v19 + 108);
      OUTLINED_FUNCTION_59_9();
      v112 = "fvdp_ensureWritebackPixelBuffer";
      OUTLINED_FUNCTION_85_3();
      v113 = 4071;
      v114 = v95;
      v115 = v92;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_44_0();
      _os_log_send_and_compose_impl();
    }

    goto LABEL_102;
  }

  v58 = *(v9 + 640);
  pixelBufferOut[0] = 0;
  if (!v58 || (v59 = *(v58 + 8)) == 0)
  {
    v87 = OUTLINED_FUNCTION_37_18();
    v88 = os_log_type_enabled(v87, type[4]);
    if (OUTLINED_FUNCTION_77_0(v88))
    {
      OUTLINED_FUNCTION_60_10();
      v111 = v89;
      v112 = "writebackCacheAllocateBuffer";
      OUTLINED_FUNCTION_85_3();
      v113 = 1510;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_44_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_420();
    v61 = -12070;
    goto LABEL_100;
  }

  PixelBufferWithAuxAttributes = CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(*MEMORY[0x1E695E480], v59, *(v58 + 24), pixelBufferOut);
  v61 = PixelBufferWithAuxAttributes;
  if (PixelBufferWithAuxAttributes == -6689)
  {
    v62 = OUTLINED_FUNCTION_37_18();
    v70 = OUTLINED_FUNCTION_108_2(v62, v63, v64, v65, v66, v67, v68, v69, v97, v99, v101, v102, v103, v104, v105, *type, type[4], *v107);
    if (OUTLINED_FUNCTION_124_0(v70))
    {
      OUTLINED_FUNCTION_60_10();
      v111 = v71;
      v112 = "writebackCacheAllocateBuffer";
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_44_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_345_0();
    goto LABEL_97;
  }

  if (PixelBufferWithAuxAttributes)
  {
LABEL_97:
    v73 = OUTLINED_FUNCTION_37_18();
    v81 = OUTLINED_FUNCTION_108_2(v73, v74, v75, v76, v77, v78, v79, v80, v97, v99, v101, v102, v103, v104, v105, *type, type[4], *v107);
    if (OUTLINED_FUNCTION_124_0(v81))
    {
      OUTLINED_FUNCTION_60_10();
      v111 = v82;
      v112 = "writebackCacheAllocateBuffer";
      OUTLINED_FUNCTION_85_3();
      v113 = 1515;
      v114 = v83;
      v115 = v61;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_44_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_345_0();
LABEL_100:
    v84 = OUTLINED_FUNCTION_47_12();
    v85 = os_log_type_enabled(v84, v107[0]);
    if (OUTLINED_FUNCTION_124_0(v85))
    {
      v109 = *(v19 + 108);
      OUTLINED_FUNCTION_59_9();
      v112 = "fvdp_ensureWritebackPixelBuffer";
      OUTLINED_FUNCTION_85_3();
      v113 = 4074;
      v114 = v86;
      v115 = v61;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_44_0();
      _os_log_send_and_compose_impl();
    }

LABEL_102:
    OUTLINED_FUNCTION_16();
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  cvPixelBufferSetColorAttachments(pixelBufferOut[0], *(v58 + 48), *(v58 + 40));
  FigSimpleMutexLock();
  v72 = *(v58 + 32);
  if (v72)
  {
    CFRelease(v72);
  }

  *(v58 + 32) = pixelBufferOut[0];
  *(v58 + 56) = a4;
  *(v58 + 64) = a5;
  *(v58 + 72) = v16;
  *(v58 + 80) = v15;
  *(v58 + 88) = a2;
  *(v58 + 92) = v5;
  return FigSimpleMutexUnlock();
}

void __fvdp_encoderControlTimerFired_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    if (*(v2 + 24) == 2)
    {
      if (!*(v2 + 593) && FigCFDictionaryGetInt32IfPresent())
      {
        fvdp_encoderControlSetBitrate(v2, 0);
      }

      if (!*(v2 + 594) && FigCFDictionaryGetInt32IfPresent())
      {
        fvdp_encoderControlSetFramerate(v2, 0);
      }

      OUTLINED_FUNCTION_58_6();
      v5 = (1 << v4) & 0x2021;
      if (!v7 & v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = v5 == 0;
      }

      if (!v7 || v3 == 1635148593 || v3 == 1752589105 || v3 == 1869117027 || v3 == 1836415073)
      {
        FigCFDictionaryGetDoubleIfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
      }
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v20 = OUTLINED_FUNCTION_106_1(os_log_and_send_and_compose_flags_and_os_log_type, v13, v14, v15, v16, v17, v18, v19, v21, v22, *v23, v23[2], OS_LOG_TYPE_DEFAULT, 0);
    if (OUTLINED_FUNCTION_124_0(v20))
    {
      OUTLINED_FUNCTION_26_22();
      OUTLINED_FUNCTION_23_29();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_6_77();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_345_0();
  }

  CFRelease(*(a1 + 40));
}

uint64_t __fvdp_start_block_invoke_cold_10()
{
  v0 = OUTLINED_FUNCTION_38_14(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    v14 = 138412802;
    v15 = &stru_1F0B1AFB8;
    OUTLINED_FUNCTION_56_12(&v14);
    OUTLINED_FUNCTION_55_13();
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t fvdp_createSampleBufferWithPixelBuffer_cold_1()
{
  v0 = OUTLINED_FUNCTION_38_14(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    v14 = 138412802;
    v15 = &stru_1F0B1AFB8;
    OUTLINED_FUNCTION_56_12(&v14);
    OUTLINED_FUNCTION_55_13();
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t writebackCacheCopyBuffer_cold_1()
{
  v0 = OUTLINED_FUNCTION_38_14(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    v14 = 138412802;
    v15 = &stru_1F0B1AFB8;
    OUTLINED_FUNCTION_56_12(&v14);
    OUTLINED_FUNCTION_55_13();
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_420();
}

uint64_t figTTMLDocumentWriterWritingDirectionSpanBuilder_SetAttribute(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = FigTTMLDocumentWriterSetAttribute(*DerivedStorage, a2, a3);
  if (!v6)
  {
    if (FigCFEqual())
    {
      CMTimeMakeFromDictionary(&v9, a3);
      v7 = *&v9.value;
      *(DerivedStorage + 24) = v9.epoch;
      *(DerivedStorage + 8) = v7;
    }

    else if (FigCFEqual())
    {
      CMTimeMakeFromDictionary(&v9, a3);
      *(DerivedStorage + 32) = v9;
    }
  }

  return v6;
}

uint64_t writeNestedSpan(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  started = FigTTMLDocumentWriterStartElement(*DerivedStorage, 5);
  if (started)
  {
    return started;
  }

  OUTLINED_FUNCTION_1_123();
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v4 = CMBaseObjectGetDerivedStorage();
  KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount();
  if (KeyFrameCount <= 0)
  {
    goto LABEL_23;
  }

  v6 = KeyFrameCount;
  v7 = 0;
  v8 = 0;
  Mutable = 0;
  v10 = *MEMORY[0x1E695E480];
  while (1)
  {
    v20 = 0.0;
    v21 = 0;
    v11 = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
    if (v11)
    {
      break;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigTTMLDocumentWriterMapPropertyToAttribute_WritingDirection(v21, Mutable);
    if (v7)
    {
      v12 = v20;
      time = v18;
      Seconds = CMTimeGetSeconds(&time);
      if (v8)
      {
        CFRelease(v8);
      }

      CMTimeMake(&time, (v12 * Seconds * 1000.0), 1000);
      v8 = CMTimeCopyAsDictionary(&time, v10);
      CFDictionarySetValue(Mutable, @"begin", v8);
      v11 = FigTTMLDocumentWriterStartElement(*v4, 1);
      if (v11)
      {
        break;
      }

      OUTLINED_FUNCTION_0_139();
      v11 = FigTTMLDocumentWriterEndElement(*v4);
      if (v11)
      {
        break;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_139();
    }

    if (v6 == ++v7)
    {
      v14 = 0;
      goto LABEL_18;
    }
  }

  v14 = v11;
LABEL_18:
  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v14)
  {
LABEL_23:
    v15 = FigCaptionDataCopySubrange();
    if (!v15)
    {
      v16 = OUTLINED_FUNCTION_1_123();
      v15 = processPropertyAtDepthLevel(a1, v16);
      if (!v15)
      {
        return FigTTMLDocumentWriterEndElement(*DerivedStorage);
      }
    }

    return v15;
  }

  return v14;
}

uint64_t FigTTMLDocumentWriterCreateWritingDirectionSpanBuilder_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterCreateWritingDirectionSpanBuilder_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferConsumerXPCRemoteRetainCopiedSampleBufferConsumer(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  if (a1 && a2)
  {
    v4 = FigSampleBufferConsumerRemoteXPC_ensureClientEstablished();
    if (v4)
    {
      return v4;
    }

    v5 = FigXPCRemoteClientRetainCopiedObject();
    v6 = cf;
    if (v5 || (v5 = remoteXPCSampleBufferConsumer_CreateInternal(a1, &cf), v6 = cf, v5))
    {
      if (v6)
      {
        CFRelease(v6);
      }
    }

    else
    {
      v5 = 0;
      *a2 = cf;
    }

    return v5;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }
}

uint64_t remoteXPCSampleBufferConsumerClient_HandleServerMessage()
{
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    return 4294951138;
  }

  return result;
}

uint64_t FigSampleBufferConsumerRemoteXPC_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigXPCRemoteClientDisassociateObject();
  if (*DerivedStorage || !FigXPCCreateBasicMessage() && !FigXPCRemoteClientSendSyncMessage())
  {
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

    FigSimpleMutexDestroy();
    v4 = *(DerivedStorage + 24);
    if (v4)
    {
      dispatch_release(v4);
      *(DerivedStorage + 24) = 0;
    }
  }

  return FigXPCRelease();
}

uint64_t FigSampleBufferConsumerRemoteXPC_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v8 = 0;
  cf = 0;
  ObjectID = remoteXPCSampleBufferConsumer_GetObjectID(a1, &v8);
  if (ObjectID)
  {
    v6 = ObjectID;
  }

  else
  {
    v6 = FigXPCSendStdCopyPropertyMessage();
    if (v6)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *a4 = cf;
      cf = 0;
    }
  }

  FigXPCRelease();
  return v6;
}

uint64_t FigSampleBufferConsumerRemoteXPC_SetProperty(uint64_t a1)
{
  v4 = 0;
  ObjectID = remoteXPCSampleBufferConsumer_GetObjectID(a1, &v4);
  if (!ObjectID)
  {
    ObjectID = FigXPCSendStdSetPropertyMessage();
  }

  v2 = ObjectID;
  FigXPCRelease();
  return v2;
}

uint64_t FigSampleBufferConsumerRemoteXPC_SendSampleBuffer(uint64_t a1)
{
  memset(v5, 0, sizeof(v5));
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ObjectID = remoteXPCSampleBufferConsumer_GetObjectID(a1, v5);
  if (!ObjectID)
  {
    OUTLINED_FUNCTION_12_20();
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      ObjectID = FigXPCRemoteClientGetServerPID();
      if (!ObjectID)
      {
        ObjectID = FigXPCMessageAddCMSampleBufferForPID();
        if (!ObjectID)
        {
          ObjectID = OUTLINED_FUNCTION_6_78();
          if (!ObjectID)
          {
            ObjectID = FigMemoryOriginUpdateRecipientStateFromXPCMessage();
          }
        }
      }
    }
  }

  v3 = ObjectID;
  FigSimpleMutexUnlock();
  FigXPCRelease();
  FigXPCRelease();
  return v3;
}

BOOL FigSampleBufferConsumerRemoteXPC_IsQueueAtOrAboveHighWater(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = !OUTLINED_FUNCTION_2_121(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11, xdict, v14) && (OUTLINED_FUNCTION_12_20(), !FigXPCCreateBasicMessage()) && !OUTLINED_FUNCTION_6_78() && xpc_dictionary_get_BOOL(xdicta, "IsQueueAtOrAboveHighWater");
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

BOOL FigSampleBufferConsumerRemoteXPC_IsQueueBelowLowWater(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = !OUTLINED_FUNCTION_2_121(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11, xdict, v14) && (OUTLINED_FUNCTION_12_20(), !FigXPCCreateBasicMessage()) && !OUTLINED_FUNCTION_6_78() && xpc_dictionary_get_BOOL(xdicta, "IsQueueBelowLowWater");
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t FigSampleBufferConsumerRemoteXPC_InstallLowWaterTrigger(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v12[0] = 0;
  v12[1] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 56) || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    ObjectID = FigSignalErrorAtGM();
  }

  else
  {
    ObjectID = remoteXPCSampleBufferConsumer_GetObjectID(a1, v12);
    if (!ObjectID)
    {
      *(DerivedStorage + 56) = a2;
      *(DerivedStorage + 64) = a3;
      *a4 = a1;
      OUTLINED_FUNCTION_26_14();
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigXPCRemoteClientSendSyncMessage();
      }
    }
  }

  v10 = ObjectID;
  FigSimpleMutexUnlock();
  FigXPCRelease();
  return v10;
}

uint64_t FigSampleBufferConsumerRemoteXPC_RemoveLowWaterTrigger(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a1 != a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    ObjectID = FigSignalErrorAtGM();
LABEL_8:
    v6 = ObjectID;
    goto LABEL_6;
  }

  ObjectID = remoteXPCSampleBufferConsumer_GetObjectID(a1, v8);
  if (ObjectID)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_26_14();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_8;
  }

  v6 = FigXPCRemoteClientSendSyncMessage();
  if (!v6)
  {
    *(DerivedStorage + 56) = 0;
    *(DerivedStorage + 64) = 0;
  }

LABEL_6:
  FigSimpleMutexUnlock();
  FigXPCRelease();
  return v6;
}

uint64_t FigSampleBufferConsumerRemoteXPC_GetPendingSampleBufferCount(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (OUTLINED_FUNCTION_2_121(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11, v12, xdict) || (OUTLINED_FUNCTION_12_20(), FigXPCCreateBasicMessage()) || FigXPCRemoteClientSendSyncMessageCreatingReply())
  {
    uint64 = 0;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(xdicta, "GetPendingSampleBufferCount");
  }

  FigXPCRelease();
  return uint64;
}

uint64_t FigSampleBufferConsumerRemoteXPC_SetAttachmentOnPendingSampleBuffersInPTSRange(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  ObjectID = remoteXPCSampleBufferConsumer_GetObjectID(a1, v5);
  if (ObjectID)
  {
    v3 = ObjectID;
  }

  else
  {
    v2 = FigXPCCreateBasicMessage();
    if (v2 || (v2 = FigXPCMessageSetCFString(), v2) || (v2 = FigXPCMessageSetCFObject(), v2) || (v2 = FigXPCMessageSetCMTime(), v2) || (v2 = FigXPCMessageSetCMTime(), v2))
    {
      v3 = v2;
    }

    else
    {
      v3 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  return v3;
}

uint64_t FigSampleBufferConsumerRemoteXPC_PostNotification(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v41 = 0;
  v42 = 0;
  ObjectID = remoteXPCSampleBufferConsumer_GetObjectID(a1, &v41);
  if (ObjectID)
  {
    v4 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_26_14();
    v7 = FigXPCCreateBasicMessage();
    OUTLINED_FUNCTION_10_11(v7, v8, v9, v10, v11, v12, v13, v14, v41, v42);
    if (!v4)
    {
      v15 = FigXPCMessageSetCFString();
      OUTLINED_FUNCTION_10_11(v15, v16, v17, v18, v19, v20, v21, v22, v41, v42);
      v23 = FigXPCMessageSetCFDictionary();
      v31 = OUTLINED_FUNCTION_10_11(v23, v24, v25, v26, v27, v28, v29, v30, v41, v42);
      xpc_dictionary_set_uint64(v31, "NotificationDeliveryFlags", a4);
      v32 = FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_10_11(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42);
    }
  }

  FigXPCRelease();
  return v4;
}

uint64_t FigSampleBufferConsumerRemoteXPC_Flush(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  ObjectID = remoteXPCSampleBufferConsumer_GetObjectID(a1, v5);
  if (ObjectID)
  {
    v3 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_26_14();
    v2 = FigXPCCreateBasicMessage();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  return v3;
}

BOOL FigSampleBufferConsumerRemoteXPC_IsQueueBelowPrerollLevel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = !OUTLINED_FUNCTION_2_121(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11, xdict, v14) && (OUTLINED_FUNCTION_12_20(), !FigXPCCreateBasicMessage()) && !OUTLINED_FUNCTION_6_78() && xpc_dictionary_get_BOOL(xdicta, "IsQueueBelowPrerollLevel");
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t remoteXPCSampleBufferConsumer_CreateInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCSampleBufferConsumer_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t neroidRemote_Invalidate()
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *v1 = 1;
    FigXPCRemoteClientDisassociateObject();
    if (v1[1] || !FigXPCCreateBasicMessage() && !FigXPCRemoteClientSendSyncMessage())
    {
      v3 = objc_autoreleasePoolPush();
      neroidRemote_removeHostLayer();
      if (*(v1 + 2))
      {
        [MEMORY[0x1E6979518] begin];
        if (!pthread_main_np())
        {
          [MEMORY[0x1E6979518] activateBackground:1];
        }

        [MEMORY[0x1E6979518] setDisableActions:{1, v6, v7}];
        v4 = *(v1 + 2);
        if (v4)
        {

          *(v1 + 2) = 0;
        }

        [MEMORY[0x1E6979518] commit];
      }

      objc_autoreleasePoolPop(v3);
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return 0;
}

uint64_t FigNeroidCreateRemote_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t neroidRemote_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t neroidRemote_getObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t neroidRemote_getObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleAudioProcessingTapMessage(uint64_t a1, void *a2)
{
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    result = FigXPCServerLookupAndRetainAssociatedObject();
    if (!result)
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t aptapS_Class_EnsureSubmixTapCreated(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = (DerivedStorage + 24);
  v5 = (DerivedStorage + 24);
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    if (*(v5 + 1) == a2)
    {
      goto LABEL_11;
    }
  }

  v5 = (DerivedStorage + 24);
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    if (FigAtomicCompareAndSwapPtr())
    {
      v5[4] = 0;
      *(v5 + 3) = 0;
      FigMemoryBarrier();
      goto LABEL_11;
    }
  }

  v6 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A004014C4CBAFuLL);
  if (!v6)
  {
    return 4294954510;
  }

  v5 = v6;
  v6[4] = 0;
  *(v6 + 3) = 0;
  *v6 = *v4;
  *(v6 + 1) = a2;
  FigMemoryBarrier();
  *v4 = v5;
LABEL_11:
  if (*(v5 + 3))
  {
    CFDictionaryFromPointer = MTAudioProcessingTapCreateCFDictionaryFromPointer(@"SubmixID", *(v5 + 1));
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (CFDictionaryFromPointer)
    {
      CFRelease(CFDictionaryFromPointer);
    }

    return 0;
  }

  else
  {
    CMBaseObjectGetDerivedStorage();
    v8 = ATSubmixTapNew_CMServer();
    if (!v8)
    {
      CFDictionaryFromThreePointers = MTAudioProcessingTapCreateCFDictionaryFromThreePointers(@"SubmixTapServerPointer", 0, @"SubmixDestinationTapServerPointer", 0, @"SubmixID", *(v5 + 1));
      v5[4] = 0;
      *(v5 + 3) = 0;
      *(v5 + 2) = 0u;
      *(v5 + 3) = 0u;
      *(v5 + 8) = 0;
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (CFDictionaryFromThreePointers)
      {
        CFRelease(CFDictionaryFromThreePointers);
      }
    }

    if (!v8)
    {
      v5[4] = 0;
    }
  }

  return v8;
}

uint64_t aptapS_Class_AddAQToSubmixTap(uint64_t a1, uint64_t a2)
{
  v3 = CMBaseObjectGetDerivedStorage() + 24;
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    if (*(v3 + 8) == a2)
    {
      result = ATAssignToSubmixTap();
      if (!result)
      {
        ++*(v3 + 16);
      }

      return result;
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t MTAudioProcessingTapXPCServerCopyTapForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionCreateMutable(uint64_t a1, void *a2)
{
  if (a2)
  {
    FigCaptionGetClassID();
    result = CMDerivedObjectCreate();
    if (!result)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v5 = MEMORY[0x1E6960C98];
      v6 = *(MEMORY[0x1E6960C98] + 16);
      *DerivedStorage = *MEMORY[0x1E6960C98];
      DerivedStorage[1] = v6;
      DerivedStorage[2] = *(v5 + 32);
      result = FigCaptionDataCreateMutable();
      if (!result)
      {
        *a2 = 0;
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

uint64_t figCaptionCopyProperty_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t figCaptionCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}