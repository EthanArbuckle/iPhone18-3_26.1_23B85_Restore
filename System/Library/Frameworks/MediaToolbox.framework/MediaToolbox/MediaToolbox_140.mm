void fpic_StopInterstitialPlayerAtCurrentItem()
{
  OUTLINED_FUNCTION_180_1();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_77_10(MEMORY[0x1E6960C70]);
  v0 = OUTLINED_FUNCTION_171();
  fpic_CopyNextItemFromInterstitialPlayer(v0, v1, v2);
}

uint64_t fpic_recordSeekIDAndShowInterstitialLayer(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  OUTLINED_FUNCTION_108_3();
  result = CMBaseObjectGetDerivedStorage();
  if (v5)
  {
    *(result + 1216) = a3;
    if (a5)
    {
      v11 = OUTLINED_FUNCTION_151_2();

      return fpic_flipInterstitialAndPrimaryVisibility(v6, a4, v5, v11);
    }
  }

  return result;
}

void fpic_AllowIntendedEventToSeekIntoToBeBeRescheduled(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  theArray = 0;
  v3 = *(DerivedStorage + 904);
  if (v3)
  {
    if (CFSetContainsValue(*(DerivedStorage + 688), v3))
    {
      v4 = fpic_UnwrapEvent();
      fpic_copyEventsScheduledAtSameMomentAsEvent(a1, v4, &theArray);
      LastValue = FigCFArrayGetLastValue();
      fpic_copyAbuttingEventsForEvent(a1, LastValue, &cf);
      for (i = FigCFArrayGetFirstIndexOfValue(); ; ++i)
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

        CFArrayGetValueAtIndex(theArray, i);
        fpic_ForgetPastEvent();
      }

      for (j = 0; ; ++j)
      {
        v9 = cf;
        if (cf)
        {
          v9 = CFArrayGetCount(cf);
        }

        if (j >= v9)
        {
          break;
        }

        CFArrayGetValueAtIndex(cf, j);
        fpic_ForgetPastEvent();
      }

      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void fpic_PruneCurrentEvents(uint64_t a1, uint64_t a2, char a3)
{
  CMBaseObjectGetDerivedStorage();
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v6)
  {
    v7 = v6;
    OUTLINED_FUNCTION_0_52();
    v9[1] = 3221225472;
    v9[2] = __fpic_PruneCurrentEvents_block_invoke;
    v9[3] = &__block_descriptor_57_e5_v8__0l;
    v9[4] = a1;
    v9[5] = v7;
    v9[6] = a2;
    v10 = a3;
    dispatch_sync(v8, v9);
    CFRelease(v7);
  }
}

void fpic_coordinationIdentifierChanged(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 160) == a2)
  {
    v5 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpic_coordinationIdentifierChanged_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = a2;
    block[6] = a1;
    dispatch_sync(v5, block);
  }
}

void fpic_ReportInterstitialPlaybackDeadTime(uint64_t a1, OpaqueCMTimebase *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = OUTLINED_FUNCTION_235();
  v8 = v7(v6);
  if (*(DerivedStorage + 160) && v8)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    OUTLINED_FUNCTION_235();
    v10 = fpic_CopyCurrentInterstitialItemTimebase();
    Rate = CMTimebaseGetRate(*(DerivedStorage + 1224));
    if (v10)
    {
      v12 = CMTimebaseGetRate(v10) > 0.0;
    }

    else
    {
      v12 = 0;
    }

    if (*(DerivedStorage + 1224) == a2 && Rate > 0.0 && (v13 = *(DerivedStorage + 1184)) != 0)
    {
      v14 = (DerivedStorage + 1184);
    }

    else
    {
      if (a2)
      {
        v15 = v10 == a2;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      if ((v16 & v12) != 1 || (v13 = *(DerivedStorage + 1176)) == 0)
      {
LABEL_24:
        if (v10)
        {
          CFRelease(v10);
        }

        goto LABEL_4;
      }

      v14 = (DerivedStorage + 1176);
    }

    v17 = *(DerivedStorage + 1192) + (UpTimeNanoseconds - v13) / 0xF4240uLL;
    *(DerivedStorage + 1192) = v17;
    fpic_setItemPropertyInt32(*(DerivedStorage + 160), @"interstitialPlaybackDeadTime", v17);
    *v14 = 0;
    goto LABEL_24;
  }

LABEL_4:

  CFRelease(v5);
}

uint64_t __fpic_checkForSnappedTimeToPauseBuffering_block_invoke(uint64_t result)
{
  v3 = *(result + 32);
  if (*(v3 + 160))
  {
    if (*(v3 + 1052))
    {
      OUTLINED_FUNCTION_158_3(result);
      result = CMBaseObjectGetDerivedStorage();
      if (!*(result + 1088) && !*(*(v1 + 32) + 1146))
      {
        OUTLINED_FUNCTION_210_1();
        result = FigCFCopyPropertyAsTime();
        if (!result && (BYTE12(v74) & 1) != 0)
        {
          v110 = *(*(v1 + 32) + 1040);
          OUTLINED_FUNCTION_16_48(result, v4, v5, v6, v7, v8, v9, v10, v53, v60, v67, v74);
          v18 = OUTLINED_FUNCTION_33_20(v11, v12, &kMomentsAreCloseThreshold, v13, v14, v15, v16, v17, v54, v61, v68, v75, v80, v82, v86, v90, v94, v98, v102, v106, v110);
          result = faqrp_timeDifferenceIsWithinTolerance(v18, v19, v20);
          if (!result)
          {
            v111 = *(*(v1 + 32) + 628);
            OUTLINED_FUNCTION_16_48(result, v21, v22, v23, v24, v25, v26, v27, v55, v62, v69, v76);
            v36 = OUTLINED_FUNCTION_33_20(v28, v29, v30, v31, v32, v33, v34, v35, v56, v63, v70, v77, v81, v83, v87, v91, v95, v99, v103, v107, v111);
            result = CMTimeCompare(v36, v37);
            if (result)
            {
              if (dword_1EAF178D0)
              {
                OUTLINED_FUNCTION_197_2();
                v38 = OUTLINED_FUNCTION_97_9();
                OUTLINED_FUNCTION_22_20(v38, v39, v40, v41, v42, v43, v44, v45, v57, v64, v71, SBYTE2(v71), BYTE3(v71), SHIDWORD(v71));
                OUTLINED_FUNCTION_7_22();
                if (v2)
                {
                  OUTLINED_FUNCTION_135_3(*(*(v1 + 32) + 1056), v58, v65, v72, v78, *(&v78 + 1), v84, v88, v92, v96, v100, v104, v108, *(*(v1 + 32) + 1040), *(*(v1 + 32) + 1048), v113);
                  OUTLINED_FUNCTION_52_18(v46, v47, v48, v115, v49, v50, v51, v59, v66, v73, v79, v85, v89, v93, v97, v101, v105, v109, v112, v114);
                  OUTLINED_FUNCTION_28_29();
                  OUTLINED_FUNCTION_32();
                  OUTLINED_FUNCTION_65();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                result = OUTLINED_FUNCTION_524();
              }

              v52 = *(v1 + 32) + 628;
              *v52 = v78;
              *(v52 + 16) = v84;
            }
          }
        }
      }
    }
  }

  return result;
}

void __fpic_checkForSnapOut_block_invoke()
{
  OUTLINED_FUNCTION_649();
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 32);
  if (*(v2 + 160))
  {
    v3 = v1;
    if (*(v2 + 256) || *(v2 + 257))
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_2_166();
      if (!v4 && !*(CMBaseObjectGetDerivedStorage() + 1088) && !*(*(v3 + 32) + 1146))
      {
        v32 = 0uLL;
        v33 = 0;
        if (!FigCFCopyPropertyAsTime() && (BYTE12(v32) & 1) != 0)
        {
          v29 = 0u;
          v30 = 0u;
          v5 = *(v3 + 32);
          v45 = v32;
          v6 = *(v5 + 240);
          v40 = *(v5 + 224);
          v31 = 0;
          *&v46 = v33;
          OUTLINED_FUNCTION_119_3(v5, v6);
          fpic_MakeMomentFromTime(&v45, &v40, &v29);
          v7 = *(v3 + 32);
          if ((!v31 || !*(v7 + 256)) && (!BYTE1(v31) || !*(v7 + 257)))
          {
            fpic_CurrentItemMoment(*(v7 + 160), &v40);
            v45 = v32;
            *&v46 = v33;
            fpic_MakeMomentFromTime(&v45, &v40, &v29);
            v7 = *(v3 + 32);
          }

          v8 = *(v7 + 240);
          v40 = *(v7 + 224);
          OUTLINED_FUNCTION_119_3(v7, v8);
          if (!fpic_MomentsAreCloseWithTolerance(&v29, &v40, &kMomentsAreCloseThreshold))
          {
            v9 = *(v3 + 32);
            v40 = v29;
            v41 = v30;
            v42 = v31;
            v10 = *(v9 + 280);
            v45 = *(v9 + 264);
            v46 = v10;
            *&v47 = *(v9 + 296);
            if (!fpic_MomentsAreCloseWithTolerance(&v40, &v45, &kMomentsAreCloseThreshold))
            {
              v51 = 0;
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              v44 = 0;
              memset(v43, 0, sizeof(v43));
              if (dword_1EAF178D0)
              {
                v11 = OUTLINED_FUNCTION_18_43();
                OUTLINED_FUNCTION_86_2(v11, v12, v13, v14, v15, v16, v17, v18, v25, v26, v27, v28, SBYTE2(v28), BYTE3(v28), SHIDWORD(v28));
                OUTLINED_FUNCTION_7_22();
                if (v0)
                {
                  v19 = *(v3 + 32);
                  v20 = *(v3 + 40);
                  v21 = *(v19 + 240);
                  v40 = *(v19 + 224);
                  OUTLINED_FUNCTION_119_3(v19, v21);
                  fpic_getMomentDesc(&v40, &v45);
                  v40 = v29;
                  v41 = v30;
                  v42 = v31;
                  fpic_getMomentDesc(&v40, v43);
                  v34 = 136315906;
                  OUTLINED_FUNCTION_120_2();
                  v35 = v20;
                  v36 = 2080;
                  v37 = &v45;
                  v38 = 2080;
                  v39 = v43;
                  OUTLINED_FUNCTION_95_1();
                  OUTLINED_FUNCTION_65();
                  _os_log_send_and_compose_impl();
                  OUTLINED_FUNCTION_329_0();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_524();
              }

              v22 = *(v3 + 32);
              *(v22 + 296) = v31;
              v23 = v30;
              *(v22 + 264) = v29;
              *(v22 + 280) = v23;
              v24 = *(v3 + 32);
              *(v24 + 1080) = v33;
              *(v24 + 1064) = v32;
              fpic_EnsureCurrentEventsHaveResolvedProperties(*(v3 + 40));
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_651();
}

void fpic_scheduleInterstitialAudioTransition(uint64_t a1, __int128 *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  OUTLINED_FUNCTION_27_16();
  FirstCurrentItem = fpic_GetFirstCurrentItem();
  OUTLINED_FUNCTION_27_16();
  v9 = fpic_CopyCurrentInterstitialItemTimebase();
  v10 = v9;
  if (a3)
  {
    v11 = *(DerivedStorage + 1224);
    v12 = 1092;
  }

  else
  {
    v12 = 1116;
    v11 = v9;
  }

  v63 = *(DerivedStorage + v12);
  if (*(a2 + 12))
  {
    if (v11)
    {
      if (*(DerivedStorage + 160))
      {
        if (FirstCurrentItem)
        {
          time1 = v63;
          OUTLINED_FUNCTION_189_1();
          if (CMTimeCompare(&time1, &time2))
          {
            v13 = CMBaseObjectGetDerivedStorage();
            time2.value = 0;
            PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(a1, &time2);
            v15 = PrimaryPlayerAndCopyWrapper;
            if (a3)
            {
              v50 = OUTLINED_FUNCTION_27_16();
              v17 = v51(v50);
              OUTLINED_FUNCTION_27_16();
              v16 = fpic_GetFirstCurrentItem();
            }

            else
            {
              v16 = *(v13 + 160);
              v17 = PrimaryPlayerAndCopyWrapper;
            }

            if (*(CMBaseObjectGetDerivedStorage() + 1256))
            {
              goto LABEL_12;
            }

            v52 = v15;
            time1.value = *MEMORY[0x1E695E4C0];
            value = time1.value;
            v53 = *MEMORY[0x1E695E480];
            FigBaseObject = FigPlayerGetFigBaseObject(v17);
            v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            v25 = value;
            if (v24)
            {
              v24(FigBaseObject, @"IsBufferedAirPlayActive", v53, &time1);
              v25 = time1.value;
            }

            v26 = *MEMORY[0x1E695E4D0];
            if (v25 == *MEMORY[0x1E695E4D0])
            {
              goto LABEL_12;
            }

            time1.value = value;
            v27 = value;
            if (v16)
            {
              v28 = FigPlaybackItemGetFigBaseObject(v16);
              v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              v27 = value;
              if (v29)
              {
                v29(v28, @"HasEnabledAudio", v53, &time1);
                v27 = time1.value;
              }
            }

            if (v27 != v26)
            {
LABEL_12:
              v18 = 1;
            }

            else
            {
              time1.value = value;
              v30 = FigPlayerGetFigBaseObject(v52);
              v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v31)
              {
                v31(v30, @"IsNeroPlaybackActive", v53, &time1);
                value = time1.value;
              }

              v18 = value == v26;
            }

            if (time2.value)
            {
              CFRelease(time2.value);
            }

            if (!v18)
            {
              cf = 0;
              if (a3)
              {
                v19 = OUTLINED_FUNCTION_27_16();
                v21 = v20(v19);
              }

              else
              {
                v21 = fpic_GetPrimaryPlayerAndCopyWrapper(a1, &cf);
              }

              v32 = v21;
              Rate = CMTimebaseGetRate(v11);
              memset(&time1, 0, sizeof(time1));
              CMTimebaseGetTime(&time1, v11);
              OUTLINED_FUNCTION_189_1();
              lhs = time1;
              if (CMTimeCompare(&time2, &lhs) >= 1 && Rate > 0.0)
              {
                OUTLINED_FUNCTION_228_1();
                lhs = *a2;
                rhs = time1;
                CMTimeSubtract(&time2, &lhs, &rhs);
                memset(&lhs, 0, sizeof(lhs));
                rhs = time2;
                CMTimeMultiplyByFloat64(&lhs, &rhs, 1.0 / Rate);
                memset(&rhs, 0, sizeof(rhs));
                HostTimeClock = CMClockGetHostTimeClock();
                Time = CMClockGetTime(&rhs, HostTimeClock);
                OUTLINED_FUNCTION_192_2(Time, v36, v37, v38, v39, v40, v41, v42, v52, v53, v54.value, *&v54.timescale, v54.epoch, v55, v56.value, *&v56.timescale, v56.epoch, 0, 0, 0, *&rhs.value);
                v54 = lhs;
                CMTimeAdd(&v57, &v56, &v54);
                v54.value = 0;
                if (a3)
                {
                  v43 = 42;
                }

                else
                {
                  v43 = 43;
                }

                FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], v43, &v54);
                v56 = v57;
                FigCFDictionarySetCMTime();
                FigCFDictionarySetInt32();
                v44 = v54.value;
                v45 = *(*(CMBaseObjectGetVTable() + 16) + 104);
                if (v45)
                {
                  v46 = Rate;
                  if (!v45(v32, v44, v46))
                  {
                    v47 = 1092;
                    if (!a3)
                    {
                      v47 = 1116;
                    }

                    v48 = *a2;
                    v49 = DerivedStorage + v47;
                    *(v49 + 16) = *(a2 + 2);
                    *v49 = v48;
                  }
                }

                if (v54.value)
                {
                  CFRelease(v54.value);
                }
              }

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

  if (v10)
  {
    CFRelease(v10);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void fpic_updateCurrentResumptionTimeIfPlayingPostroll()
{
  OUTLINED_FUNCTION_172_2();
  v27 = v2;
  v28 = v3;
  v5 = v4;
  v26 = *MEMORY[0x1E69E9840];
  if (*(CMBaseObjectGetDerivedStorage() + 1146))
  {
    OUTLINED_FUNCTION_251();
    if (fpic_GetCurrentlyPlayingEvent())
    {
      if (*(v0 + 568))
      {
        OUTLINED_FUNCTION_180_3();
        time2 = *(v0 + 384);
        if (CMTimeCompare(&time1, &time2) >= 1)
        {
          if (dword_1EAF178D0)
          {
            v6 = OUTLINED_FUNCTION_19_42();
            OUTLINED_FUNCTION_167_3(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19, v20, SBYTE2(v20), BYTE3(v20), SHIDWORD(v20));
            OUTLINED_FUNCTION_40();
            if (v1)
            {
              OUTLINED_FUNCTION_180_3();
              Seconds = CMTimeGetSeconds(&time1);
              time1 = *(v0 + 384);
              CMTimeGetSeconds(&time1);
              LODWORD(time2.value) = 136315906;
              OUTLINED_FUNCTION_2_6();
              *(&time2.flags + 2) = v5;
              HIWORD(time2.epoch) = v15;
              v22 = Seconds;
              v23 = v15;
              v24 = v16;
              OUTLINED_FUNCTION_39();
              OUTLINED_FUNCTION_38();
              _os_log_send_and_compose_impl();
              OUTLINED_FUNCTION_612();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_414();
          }

          *(v0 + 556) = *(v0 + 384);
          *(v0 + 572) = *(v0 + 400);
        }
      }
    }
  }

  OUTLINED_FUNCTION_171_2();
}

void __fpic_mediaAccessibilityChanged_block_invoke()
{
  OUTLINED_FUNCTION_649();
  if (!*(*(v0 + 40) + 1160))
  {
    goto LABEL_23;
  }

  v1 = v0;
  FigCFDictionaryCreateMutableCopy();
  OUTLINED_FUNCTION_2_4();
  *(v3 + 24) = v2;
  OUTLINED_FUNCTION_2_4();
  v5 = *(v4 + 24);
  if (!v5)
  {
LABEL_24:
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_651();

    FigSignalErrorAtGM();
    return;
  }

  if (*(v1 + 48) == 2 || (CFDictionaryRemoveValue(v5, @"public.legible"), OUTLINED_FUNCTION_2_4(), fpic_setCoordinationMediaSelectionCriteria(v7, *(v6 + 24)), *(v1 + 48) != 1))
  {
LABEL_23:
    OUTLINED_FUNCTION_651();
    return;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  Count = CFArrayGetCount(*(DerivedStorage + 656));
  if (!v9)
  {
    goto LABEL_24;
  }

  v11 = Count;
  if (!fpic_applyAutomaticLegibleMediaSelectionForItem(*(DerivedStorage + 160)) && v11 >= 1)
  {
    v12 = 0;
    while (1)
    {
      v13 = OUTLINED_FUNCTION_618();
      PerEventTrackingCount = fpic_GetPerEventTrackingCount(v13, v14);
      if (PerEventTrackingCount >= 1)
      {
        break;
      }

LABEL_19:
      if (++v12 == v11)
      {
        goto LABEL_20;
      }
    }

    v16 = PerEventTrackingCount;
    v17 = 0;
    while (1)
    {
      v18 = OUTLINED_FUNCTION_618();
      PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(v18, v19, v17, @"PlaybackItem");
      CMBaseObjectGetDerivedStorage();
      if (!PerAssetPerEventTrackedObject || PerAssetPerEventTrackedObject == @"DummyItem")
      {
        v24 = 0;
      }

      else
      {
        v22 = OUTLINED_FUNCTION_198_0();
        v24 = v23(v22);
      }

      if (fpic_applyAutomaticLegibleMediaSelectionForItem(v24))
      {
        break;
      }

      if (v16 == ++v17)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_651();

  CFRelease(v25);
}

uint64_t fpic_applyAutomaticLegibleMediaSelectionForItem(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *MEMORY[0x1E695E480];
  v3 = OUTLINED_FUNCTION_265();
  Mutable = CFDictionaryCreateMutable(v3, v4, v5, v6);
  values = Mutable;
  if (Mutable)
  {
    v8 = Mutable;
    FigGetCFStringForOSTypeValue();
    v9 = OUTLINED_FUNCTION_284();
    CFDictionarySetValue(v9, v10, v11);
    CFDictionarySetValue(v8, @"AutomaticSelection", *MEMORY[0x1E695E4D0]);
    v12 = CFArrayCreate(v2, &values, 1, MEMORY[0x1E695E9C0]);
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_239();
      v13 = FigSignalErrorAtGM();
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();
    v13 = FigSignalErrorAtGM();
    v12 = 0;
  }

  if (values)
  {
    CFRelease(values);
  }

  if (v13)
  {
    goto LABEL_10;
  }

  FigPlaybackItemGetFigBaseObject(a1);
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v14 = OUTLINED_FUNCTION_236();
    v13 = v15(v14);
LABEL_10:
    if (!v12)
    {
      return v13;
    }

    goto LABEL_13;
  }

  v13 = 4294954514;
  if (v12)
  {
LABEL_13:
    CFRelease(v12);
  }

  return v13;
}

void __fpic_checkScheduledTransition_block_invoke(uint64_t a1)
{
  v148 = *MEMORY[0x1E69E9840];
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  v3 = fpic_CopyCurrentInterstitialItemTimebase();
  Rate = CMTimebaseGetRate(*(a1 + 48));
  memset(&v141, 0, sizeof(v141));
  v5 = CMTimebaseGetTime(&v141, *(a1 + 48));
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  if (v13 == *(v14 + 1224) && (*(a1 + 56) || Rate == 0.0))
  {
    v138 = 0uLL;
    v139 = 0;
    if (*(v14 + 1076))
    {
      v139 = *(v14 + 1080);
      v138 = *(v14 + 1064);
    }

    else
    {
      v5 = fpic_TimeToGatePrimaryPlaybackAtCurrentEvent(0, 0, &v138);
    }

    OUTLINED_FUNCTION_3_136(v5, v6, v7, v8, v9, v10, v11, v12, v95, v102, v109, v117, v124, v131, v138);
    v62 = OUTLINED_FUNCTION_187_2(v54, v55, v56, v57, v58, v59, v60, v61, v99, v106, v113, v121, v128, v135, v138, *(&v138 + 1), v139, v140, v141.value, *&v141.timescale, v141.epoch, v142, *v143, *&v143[8], *&v143[16], v144, *v145, *&v145[8], *&v145[16], v146, time.value);
    v64 = CMTimeCompare(v62, v63);
    if ((v64 & 0x80000000) != 0)
    {
      OUTLINED_FUNCTION_3_136(v64, v65, v66, v67, v68, v69, v70, v71, v100, v107, v114, v122, v129, v136, v138);
      v79 = OUTLINED_FUNCTION_187_2(v72, v73, &kMomentsAreCloseThreshold, v74, v75, v76, v77, v78, v101, v108, v115, v123, v130, v137, v138, *(&v138 + 1), v139, v140, v141.value, *&v141.timescale, v141.epoch, v142, *v143, *&v143[8], *&v143[16], v144, *v145, *&v145[8], *&v145[16], v146, time.value);
      if (!faqrp_timeDifferenceIsWithinTolerance(v79, v80, v81))
      {
        v82 = *(a1 + 40);
        v83 = *(a1 + 56);
        v116 = v141;
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (*(DerivedStorage + 1232))
        {
          v85 = DerivedStorage;
          if (FigGetUpTimeNanoseconds() < *(DerivedStorage + 1232))
          {
            if (dword_1EAF178D0)
            {
              HIDWORD(v142) = 0;
              BYTE3(v142) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v87 = HIDWORD(v142);
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v142));
              OUTLINED_FUNCTION_101_0();
              if (v89)
              {
                v90 = v88;
              }

              else
              {
                v90 = v87;
              }

              if (v90)
              {
                if (v83)
                {
                  v91 = "jump";
                }

                else
                {
                  v91 = "rate change";
                }

                time = v116;
                Seconds = CMTimeGetSeconds(&time);
                *v143 = 136316162;
                *&v143[4] = "fpic_cancelScheduledInterstitialFlip";
                *&v143[12] = 2048;
                *&v143[14] = v82;
                *&v143[22] = 2080;
                v144 = v91;
                *v145 = 2048;
                *&v145[2] = Rate;
                *&v145[10] = 2048;
                *&v145[12] = Seconds;
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_449();
            }

            CMBaseObjectGetDerivedStorage();
            OUTLINED_FUNCTION_2_166();
            v93 = OUTLINED_FUNCTION_151_2();
            fpic_flipInterstitialAndPrimaryVisibility(v82, v94, v2, v93);
          }

          *(v85 + 1232) = 0;
        }

        v52 = *(a1 + 40);
        v53 = 1;
        goto LABEL_32;
      }
    }
  }

  else if (v13 == v3 && (*(a1 + 56) || Rate == 0.0))
  {
    v138 = 0uLL;
    v139 = 0;
    if (fpic_GetLastCurrentItem())
    {
      fpic_GetItemEndTime();
    }

    else
    {
      OUTLINED_FUNCTION_219_1(MEMORY[0x1E6960C80]);
      v139 = *(v23 + 16);
    }

    OUTLINED_FUNCTION_3_136(v15, v16, v17, v18, v19, v20, v21, v22, v95, v102, v109, v117, v124, v131, v138);
    v32 = OUTLINED_FUNCTION_187_2(v24, v25, v26, v27, v28, v29, v30, v31, v96, v103, v110, v118, v125, v132, v138, *(&v138 + 1), v139, v140, v141.value, *&v141.timescale, v141.epoch, v142, *v143, *&v143[8], *&v143[16], v144, *v145, *&v145[8], *&v145[16], v146, time.value);
    v34 = CMTimeCompare(v32, v33);
    if ((v34 & 0x80000000) != 0)
    {
      OUTLINED_FUNCTION_3_136(v34, v35, v36, v37, v38, v39, v40, v41, v97, v104, v111, v119, v126, v133, v138);
      v49 = OUTLINED_FUNCTION_187_2(v42, v43, &kMomentsAreCloseThreshold, v44, v45, v46, v47, v48, v98, v105, v112, v120, v127, v134, v138, *(&v138 + 1), v139, v140, v141.value, *&v141.timescale, v141.epoch, v142, *v143, *&v143[8], *&v143[16], v144, *v145, *&v145[8], *&v145[16], v146, time.value);
      if (!faqrp_timeDifferenceIsWithinTolerance(v49, v50, v51))
      {
        v52 = *(a1 + 40);
        v53 = 0;
LABEL_32:
        fpic_cancelScheduledAudioTransition(v52, v53, v2);
      }
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t fpirc_CreateWrappedEvent()
{
  OUTLINED_FUNCTION_187();
  CMBaseObjectGetDerivedStorage();
  result = FigCFWeakReferenceHolderCopyReferencedObject();
  if (result)
  {
    v1 = result;
    v2 = OUTLINED_FUNCTION_36_25();
    v3(v2);
    CFRelease(v1);
    return 0;
  }

  return result;
}

uint64_t fpirc_UnwrapEvent()
{
  OUTLINED_FUNCTION_187();
  CMBaseObjectGetDerivedStorage();
  result = FigCFWeakReferenceHolderCopyReferencedObject();
  if (result)
  {
    v1 = result;
    v2 = OUTLINED_FUNCTION_36_25();
    v4 = v3(v2);
    CFRelease(v1);
    return v4;
  }

  return result;
}

uint64_t fpirc_CancelCurrentEventPlaybackWithReason(uint64_t a1)
{
  v1 = fpirc_CopyCurrentEvent(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (FigCFEqual())
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      OUTLINED_FUNCTION_239();
      v5 = FigSignalErrorAtGM();
      goto LABEL_6;
    }

    v4 = Mutable;
    FigCFDictionarySetValue();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v4);
  }

  v5 = 0;
LABEL_6:
  CFRelease(v2);
  return v5;
}

uint64_t FigPlayerInterstitialCoordinatorCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialCoordinatorCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialCoordinatorCreate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialCoordinatorCreate_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialCoordinatorCreate_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialCoordinatorCreate_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialCoordinatorCreate_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialCoordinatorCreate_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialCoordinatorCreate_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialCoordinatorCreate_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialCoordinatorCreate_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialRemoteCoordinatorCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialRemoteCoordinatorCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialRemoteCoordinatorCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialRemoteCoordinatorCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialRemoteCoordinatorCreate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialRemoteCoordinatorCreate_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialRemoteCoordinatorCreate_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialRemoteCoordinatorCreate_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialRemoteCoordinatorCreate_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialRemoteCoordinatorCreate_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerInterstitialRemoteCoordinatorSetCurrentEvent_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpic_copyEventsScheduledAtSameMomentAsEvent_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpic_copyEventsScheduledAtSameMomentAsEvent_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpic_collectEventsAtNextMoment_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpic_collectPostrollEvents_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpic_ReadAssetListForEvent_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpic_ReadAssetListForEvent_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpic_CopyNextItemFromInterstitialPlayer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpic_RecordPastCurrentEventDuration_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpic_copyPrimaryPlayer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __fpic_customURLIssuePreloadCallback_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_108_3();
  if (!fpic_copyRedirectURLFromCustomURLResponse(*(v2 + 32), v3))
  {
    return 1;
  }

  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v1 + 5);
  context = v4;
  key = 0;
  CFDictionaryApplyFunction(*(v1[6] + 712), fpic_FindPreloadApplier, &context);
  if (key)
  {
    Value = CFDictionaryGetValue(*(v1[6] + 712), key);
    attachmentModeOut = 0;
    v7 = CMGetAttachment(Value, @"Preload_PreloadRef", &attachmentModeOut);
    fpic_IssuePreloadRequest(v1[7], v7, *v0);
  }

  if (*v0)
  {
    CFRelease(*v0);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t fpic_SetRemoteEvents_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpic_SetRemoteEvents_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL fpic_setEventsInAddOrderForPlayerItem_cold_1(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

void fpic_EnsureCurrentEventsHaveResolvedProperties_cold_1(uint64_t a1, uint64_t a2)
{
  fpic_UpdatePlaybackItemEventList();

  fpic_PostNotification(a2, @"fpiResolvePropertiesChange", 0);
}

uint64_t FigPKDCPEProtectorCreate(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 4294955146;
  }

  MEMORY[0x19A8D3660](&FigPKDCPEProtectorGetClassID_sRegisterFigPKDCPEProtectorTypeOnce, RegisterFigPKDCPEProtectorType);
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    return v6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294955145;
  }

  v8 = DerivedStorage;
  if (a2)
  {
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
  }

  v9 = FigReadWriteLockCreate();
  *v8 = v9;
  if (!v9)
  {
    return 4294955145;
  }

  FigDispatchOnceInitWithinObject();
  FigDispatchOnceInitWithinObject();
  FigDispatchOnceInitWithinObject();
  v10 = FigReentrantMutexCreate();
  *(v8 + 16) = v10;
  if (!v10)
  {
    return 4294955145;
  }

  Mutable = CFSetCreateMutable(a1, 0, 0);
  *(v8 + 24) = Mutable;
  if (!Mutable)
  {
    return 4294955145;
  }

  if (!*(v8 + 96))
  {
    v6 = FigCPEExternalProtectionMonitorCreateForMethods(a1, 4u, 0, 0, (v8 + 88));
    if (v6)
    {
      return v6;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v6 = FigNotificationCenterAddWeakListener();
    if (v6)
    {
      return v6;
    }
  }

  v12 = 0;
  *a3 = 0;
  return v12;
}

uint64_t FigPKDCPEProtectorCopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFDataRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (a2 && a4)
  {
    if (CFEqual(a2, @"ExternalProtectionRequiredForPlayback"))
    {
      if (!*(DerivedStorage + 96))
      {
        if (FigCPEExternalProtectionMonitorGetMethods(*(DerivedStorage + 88)))
        {
          v9 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v9 = MEMORY[0x1E695E4C0];
        }

        if (!*v9)
        {
          v13 = 0;
          goto LABEL_20;
        }

        v12 = CFRetain(*v9);
LABEL_18:
        v13 = v12;
LABEL_20:
        result = 0;
LABEL_21:
        *a4 = v13;
        return result;
      }

      return 4294954509;
    }

    if (CFEqual(a2, @"ExternalProtectionMethodsRequiredForPlayback"))
    {
      if (!*(DerivedStorage + 96))
      {
        Methods = FigCPEExternalProtectionMonitorGetMethods(*(DerivedStorage + 88));
        v11 = Methods & 1;
        if ((Methods & 2) != 0)
        {
          v11 = 2;
        }

        valuePtr = v11;
        v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        goto LABEL_18;
      }

      return 4294954509;
    }

    if (CFEqual(a2, @"DisplayList"))
    {
      if (*(DerivedStorage + 96))
      {
        return 4294954509;
      }

      v14 = *(DerivedStorage + 88);

      return FigCPEExternalProtectionMonitorCopyProperty(v14, @"DisplayList", a3, a4);
    }

    else
    {
      if (CFEqual(a2, @"ApplicationAuthorizationChallengeProvider"))
      {
        result = 0;
        v13 = @"ApplicationAuthorizationChallengeProviderNone";
        goto LABEL_21;
      }

      if (CFEqual(a2, @"SessionID"))
      {
        v15 = *(DerivedStorage + 80);

        return PKDKeyManagerCopySessionID(v15, a4);
      }

      else
      {
        return 4294954512;
      }
    }
  }

  return result;
}

uint64_t FigPKDCPEProtectorSetProperty(uint64_t a1, const void *a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  v6 = DerivedStorage;
  if (CFEqual(a2, @"DisplayList"))
  {
    if (*(v6 + 96))
    {
      return 4294954509;
    }

    else
    {
      LODWORD(result) = FigCPEExternalProtectionMonitorSetProperty(*(v6 + 88), @"DisplayList", a3);
      if (result == -12152)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }
  }

  else if (CFEqual(a2, @"NeroTransport"))
  {
    v8 = *(v6 + 72);
    *(v6 + 72) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    return 0;
  }

  else
  {
    return 4294954512;
  }
}

uint64_t FigPKDCPEProtectorGetAggregateExternalProtectionStatus(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (a2 && DerivedStorage)
  {
    if (*(DerivedStorage + 96))
    {
      return 4294954509;
    }

    else
    {
      Status = FigCPEExternalProtectionMonitorGetStatus(*(DerivedStorage + 88));
      result = 0;
      *a2 = Status;
    }
  }

  return result;
}

uint64_t FigPKDCPEProtectorCreateCryptor(const void *a1, const __CFAllocator *a2, unsigned int a3, const __CFDictionary *a4, CFTypeRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 9))
  {
    return 4294954511;
  }

  if (!a5)
  {
    v16 = 0;
    v28 = 4294955146;
    goto LABEL_21;
  }

  if (a3 > 3)
  {
    v16 = 0;
    goto LABEL_52;
  }

  if (!a4)
  {
    v16 = 0;
    goto LABEL_20;
  }

  v11 = DerivedStorage;
  Value = CFDictionaryGetValue(a4, @"AuditToken");
  if (Value && (v13 = Value, v14 = CFGetTypeID(Value), v14 == CFDataGetTypeID()))
  {
    Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v16 = Mutable;
    if (!Mutable)
    {
      v28 = 4294955145;
LABEL_21:
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_46;
    }

    CFDictionarySetValue(Mutable, @"AuditToken", v13);
  }

  else
  {
    v16 = 0;
  }

  v17 = CFDictionaryGetValue(a4, @"Destination");
  v18 = CFDictionaryGetValue(a4, @"FormatType");
  v19 = CFDictionaryGetValue(a4, @"SecureStopManager");
  if (!v18)
  {
LABEL_20:
    v28 = 4294955141;
    goto LABEL_21;
  }

  v20 = v19;
  if (v17 && !CFEqual(v17, @"DestinationLocal"))
  {
    if (CFEqual(v17, @"DestinationNero"))
    {
      if (CFEqual(v18, @"FormatTypePastis"))
      {
        if (*(v11 + 32) != -1)
        {
          dispatch_once_f((v11 + 32), v11, InitMovieIDForPastis);
        }

        if (*(v11 + 56) != -1)
        {
          dispatch_once_f((v11 + 56), v11, InitOctaviaMovieIDForPastis);
        }

        v27 = FigCPEOctaviaPKDCryptorCreate(a1, *(v11 + 64), *(v11 + 88), a4, a2, *(v11 + 72), &cf);
        goto LABEL_41;
      }

      if (CFEqual(v18, @"FormatTypeMSE"))
      {
        v29 = *(v11 + 32);
        context = v11 + 80;
        v32 = v16;
        if (v29 != -1)
        {
          dispatch_once_f((v11 + 32), &context, InitKeyManagerForMSE);
        }

        if (*(v11 + 56) != -1)
        {
          dispatch_once_f((v11 + 56), v11, InitOctaviaMovieIDForMSE);
        }

        v27 = FigCPEOctaviaPKDCryptorCreateForMSE(a1, *(v11 + 64), *(v11 + 80), *(v11 + 88), a4, a2, *(v11 + 72), &cf);
        goto LABEL_41;
      }

      goto LABEL_20;
    }

    if (CFEqual(v17, @"DestinationAirPlayReceiver"))
    {
      v26 = *(v11 + 48);
      v24 = *(v11 + 88);
      v25 = a1;
      v23 = 0;
      goto LABEL_18;
    }

LABEL_52:
    v28 = 4294955136;
    goto LABEL_21;
  }

  v21 = *(v11 + 40);
  context = v11 + 80;
  v32 = v16;
  if (v21 == -1)
  {
    if (!v20)
    {
      goto LABEL_16;
    }
  }

  else
  {
    dispatch_once_f((v11 + 40), &context, InitKeyManagerForPastis);
    if (!v20)
    {
      goto LABEL_16;
    }
  }

  v22 = KeyManagerSetSecureStopManager(*(v11 + 80), v20);
  if (v22)
  {
LABEL_53:
    v28 = v22;
    goto LABEL_21;
  }

LABEL_16:
  if (CFEqual(v18, @"FormatTypePastis"))
  {
    v23 = *(v11 + 80);
    v24 = *(v11 + 88);
    v25 = a1;
    v26 = 0;
LABEL_18:
    v27 = FigPKDCPECryptorCreate(v25, v26, v23, v24, a2, a4, &cf);
    goto LABEL_41;
  }

  if (!CFEqual(v18, @"FormatTypeMSE"))
  {
    v28 = 4294955141;
    goto LABEL_42;
  }

  v27 = FigPKDMSECPECryptorCreate(a1, *(v11 + 80), *(v11 + 88), a2, a4, &cf);
LABEL_41:
  v28 = v27;
LABEL_42:
  if (v28)
  {
    goto LABEL_21;
  }

  CFSetAddValue(*(v11 + 24), cf);
  if (!*(v11 + 96))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v22 = FigNotificationCenterAddWeakListener();
    if (v22)
    {
      goto LABEL_53;
    }
  }

  v28 = 0;
  *a5 = cf;
  cf = 0;
LABEL_46:
  if (v16)
  {
    CFRelease(v16);
  }

  return v28;
}

void __FigInstallVirtualDisplay_block_invoke()
{
  __dst[9] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E4D0];
  value = *MEMORY[0x1E695E4D0];
  MaxCount = FigVirtualFramebufferGetMaxCount();
  if (MaxCount)
  {
    v2 = MaxCount;
    ModelSpecificPropertyList = FigCreateModelSpecificPropertyList();
    v4 = ModelSpecificPropertyList;
    if (ModelSpecificPropertyList)
    {
      if (CFDictionaryGetValueIfPresent(ModelSpecificPropertyList, @"StartWirelessDisplayServer", &value))
      {
        if (value != v0)
        {
LABEL_17:
          CFRelease(v4);
          return;
        }
      }

      else
      {
        value = v0;
      }
    }

    memset(__dst, 0, 64);
    if (v2 >= 9)
    {
      v9 = OUTLINED_FUNCTION_1_175();
      if (os_log_type_enabled(v9, type))
      {
        v10 = v12;
      }

      else
      {
        v10 = v12 & 0xFFFFFFFE;
      }

      if (v10)
      {
        OUTLINED_FUNCTION_2_167();
        v14 = 405;
        OUTLINED_FUNCTION_3_137();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_0_188();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (FigVirtualFramebufferGetFramebufs(__dst, 8uLL))
    {
      v5 = IOMobileFramebufferInstallVirtualDisplays();
      if (v5)
      {
        v6 = v5;
        v7 = OUTLINED_FUNCTION_1_175();
        if (os_log_type_enabled(v7, type))
        {
          v8 = v12;
        }

        else
        {
          v8 = v12 & 0xFFFFFFFE;
        }

        if (v8)
        {
          OUTLINED_FUNCTION_2_167();
          v14 = v6;
          OUTLINED_FUNCTION_3_137();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_0_188();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    if (v4)
    {
      goto LABEL_17;
    }
  }
}

uint64_t FigMetricItemPlaybackSummaryEventDeserializeAndCopy(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E6960C70];
  v23 = *(MEMORY[0x1E6960C70] + 16);
  v20 = 0;
  cf = 0;
  v19 = 0;
  if (a1 && a2)
  {
    int64 = xpc_dictionary_get_int64(a1, "RecoverableErrorCount");
    v5 = xpc_dictionary_get_int64(a1, "StallCount");
    v6 = xpc_dictionary_get_int64(a1, "VariantSwitchCount");
    v7 = xpc_dictionary_get_int64(a1, "PlaybackDuration");
    v8 = xpc_dictionary_get_int64(a1, "MediaResourceRequestCount");
    v9 = xpc_dictionary_get_double(a1, "TimeSpentRecoveringFromStall");
    v10 = xpc_dictionary_get_double(a1, "TimeSpentInInitialStartup");
    v11 = xpc_dictionary_get_int64(a1, "TimeWeightedAverageBitrate");
    v12 = xpc_dictionary_get_int64(a1, "TimeWeightedPeakBitrate");
    CMTime = FigXPCMessageGetCMTime();
    if (!CMTime)
    {
      CMTime = FigXPCMessageCopyCFDate();
      if (!CMTime)
      {
        CMTime = FigXPCMessageCopyCFString();
        if (!CMTime)
        {
          if (!xpc_dictionary_get_value(a1, "ErrorEvent") || (CMTime = FigMetricEventDeserializeEventAndCopy(), !CMTime))
          {
            AllocatorForMedia = FigGetAllocatorForMedia();
            v17 = v22;
            v18 = v23;
            CMTime = FigMetricItemPlaybackSummaryEventCreate(AllocatorForMedia, &v17, cf, v20, v19, int64, v5, v6, v9, v10, v7, v8, v11, v12, a2);
          }
        }
      }
    }
  }

  else
  {
    CMTime = FigSignalErrorAtGM();
  }

  v15 = CMTime;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v15;
}

uint64_t mes_serialize(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v4)
    {
      v5 = v4(a1);
    }

    else
    {
      v5 = -12782;
    }

    xpc_dictionary_set_int64(a2, "EventID", v5);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v6)
    {
      v6(&v37, a1);
    }

    else
    {
      v37 = *MEMORY[0x1E6960C70];
      v38 = *(MEMORY[0x1E6960C70] + 16);
    }

    v7 = FigXPCMessageSetCMTime();
    if (v7)
    {
      return v7;
    }

    v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v8)
    {
      v8(a1);
    }

    v7 = FigXPCMessageSetCFDate();
    if (v7)
    {
      return v7;
    }

    v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v9)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = 0;
    }

    v11 = FigXPCMessageSetCFString();
    if (v11)
    {
      v35 = v11;
      empty = 0;
    }

    else
    {
      v12 = *(*(CMBaseObjectGetVTable() + 72) + 16);
      if (v12)
      {
        v13 = v12(a1);
      }

      else
      {
        v13 = 0;
      }

      xpc_dictionary_set_int64(a2, "RecoverableErrorCount", v13);
      v14 = *(*(CMBaseObjectGetVTable() + 72) + 24);
      if (v14)
      {
        v15 = v14(a1);
      }

      else
      {
        v15 = 0;
      }

      xpc_dictionary_set_int64(a2, "StallCount", v15);
      v16 = *(*(CMBaseObjectGetVTable() + 72) + 32);
      if (v16)
      {
        v17 = v16(a1);
      }

      else
      {
        v17 = 0;
      }

      xpc_dictionary_set_int64(a2, "VariantSwitchCount", v17);
      v18 = *(*(CMBaseObjectGetVTable() + 72) + 40);
      if (v18)
      {
        v19 = v18(a1);
      }

      else
      {
        v19 = 0;
      }

      xpc_dictionary_set_int64(a2, "PlaybackDuration", v19);
      v20 = *(*(CMBaseObjectGetVTable() + 72) + 48);
      if (v20)
      {
        v21 = v20(a1);
      }

      else
      {
        v21 = 0;
      }

      xpc_dictionary_set_int64(a2, "MediaResourceRequestCount", v21);
      v22 = *(*(CMBaseObjectGetVTable() + 72) + 56);
      v23 = 0.0;
      v24.n128_u64[0] = 0;
      if (v22)
      {
        v24.n128_f64[0] = v22(a1, v24);
      }

      xpc_dictionary_set_double(a2, "TimeSpentRecoveringFromStall", v24.n128_f64[0]);
      v25 = *(*(CMBaseObjectGetVTable() + 72) + 64);
      if (v25)
      {
        v23 = v25(a1);
      }

      xpc_dictionary_set_double(a2, "TimeSpentInInitialStartup", v23);
      v26 = *(*(CMBaseObjectGetVTable() + 72) + 72);
      if (v26)
      {
        v27 = v26(a1);
      }

      else
      {
        v27 = 0;
      }

      xpc_dictionary_set_int64(a2, "TimeWeightedAverageBitrate", v27);
      v28 = *(*(CMBaseObjectGetVTable() + 72) + 80);
      if (v28)
      {
        v29 = v28(a1);
      }

      else
      {
        v29 = 0;
      }

      xpc_dictionary_set_int64(a2, "TimeWeightedPeakBitrate", v29);
      empty = xpc_dictionary_create_empty();
      v31 = *(*(CMBaseObjectGetVTable() + 72) + 8);
      if (v31 && (v32 = v31(a1)) != 0)
      {
        v33 = v32;
        v34 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (v34)
        {
          v35 = v34(v33, empty);
          if (!v35)
          {
            xpc_dictionary_set_value(a2, "ErrorEvent", empty);
          }
        }

        else
        {
          v35 = 4294954514;
        }
      }

      else
      {
        v35 = 0;
      }
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (empty)
    {
      CFRelease(empty);
    }

    return v35;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t FigMetricItemPlaybackSummaryEventCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mes_setSessionID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mes_setMediaTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigIcyMetadataHasKey(uint64_t a1, uint64_t a2, __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = a3;
  if (!DerivedStorage || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM();
    return 0;
  }

  v6 = DerivedStorage;
  if (FigIcyMetadataMapKeyToIcyKeyspace(a2, a3, &v8))
  {
    return 0;
  }

  result = *(v6 + 8);
  if (result)
  {
    return FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent() != 0;
  }

  return result;
}

uint64_t FigIcyMetadataCopyItemWithKeyAndIndex(uint64_t a1, const void *a2, __CFString *a3, CFIndex a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  theDict = 0;
  if (!(a6 | a7))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v14 = DerivedStorage;
  result = FigIcyMetadataMapKeyToIcyKeyspace(a2, a3, &v26);
  if (result)
  {
    return result;
  }

  v16 = v26;
  if (FigIcyMetadataGetItemCount(a1, a2, v26) <= a4)
  {
    return 4294954689;
  }

  v18 = 0;
  cf = 0;
  if (!v16)
  {
    FigIcyMetadataCopyKeyAtIndex(a1, @"icy", a4, v17, &cf);
    v18 = cf;
    v26 = cf;
  }

  if (*(v14 + 8))
  {
    v19 = FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent() == 0;
    v18 = cf;
    if (!cf)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v19 = 1;
  if (v18)
  {
LABEL_8:
    CFRelease(v18);
  }

LABEL_9:
  if (theDict)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    return 4294954689;
  }

  if (a7)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }

    v22 = MutableCopy;
    CFDictionaryRemoveValue(MutableCopy, @"value");
    *a7 = v22;
  }

  if (!a6)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"value");
  if (Value)
  {
    v24 = CFRetain(Value);
  }

  else
  {
    v24 = 0;
  }

  result = 0;
  *a6 = v24;
  return result;
}

uint64_t FigIcyMetadataCopyValue_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigIcyMetadataGetKeyCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigIcyMetadataGetKeyCount_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigIcyMetadataCopyKeyAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigIcyMetadataCopyKeyAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigIcyMetadataCopyKeyAtIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void fiqcfo_MemoryPressureHandler()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v0)
  {
    dispatch_sync_f(*(DerivedStorage + 40), v0, fiqcfo_MemoryPressureHandlerNoLock);

    CFRelease(v0);
  }
}

uint64_t fiqcfo_MemoryPressureHandlerNoLock(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    *(result + 112) = dispatch_source_get_data(*(result + 104));

    return fiqcfo_UpdateCacheIsEnabledNoLock();
  }

  return result;
}

uint64_t FigImageQueueCreateForCacheAndFanOutWithOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueCreateForCacheAndFanOutWithOptions_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueCreateForCacheAndFanOutWithOptions_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueCreateForCacheAndFanOutWithOptions_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueCreateForCacheAndFanOutWithOptions_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueCreateForCacheAndFanOutWithOptions_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueCreateForCacheAndFanOutWithOptions_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueCreateForCacheAndFanOutWithOptions_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueCreateForCacheAndFanOutWithOptions_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueCreateForCacheAndFanOutWithOptions_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fiqcfo_setProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fiqcfo_setProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fiqcfo_setProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fiqcfo_setProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererCALayerOutputNodeCreate(void *a1)
{
  if (a1)
  {
    *a1 = 0;
    v7 = 0;
    MEMORY[0x19A8D3660](&FigCaptionRendererCALayerOutputNodeGetClassID_sRegisterFigCaptionRendererCALayerOutputNodeBaseTypeOnce, RegisterFigCaptionRendererCALayerOutputNodeBaseType);
    result = CMDerivedObjectCreate();
    if (!result)
    {
      v3 = v7;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v6 = 0;
      FigCaptionRendererOutputNodeCreate(v7, &v6);
      *DerivedStorage = v6;
      CFRetain(v3);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __FigCaptionRendererCALayerOutputNodeCreate_block_invoke;
      v5[3] = &__block_descriptor_48_e5_v8__0l;
      v5[4] = DerivedStorage;
      v5[5] = v3;
      dispatch_async(MEMORY[0x1E69E96A0], v5);
      result = 0;
      *a1 = 0;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigSampleBufferConsumerForDataQueueCreate(const void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 4294951506;
  if (a1 && a4)
  {
    OUTLINED_FUNCTION_0_189();
    fig_note_initialize_category_with_default_work_cf();
    OUTLINED_FUNCTION_0_189();
    fig_note_initialize_category_with_default_work_cf();
    FigSampleBufferConsumerGetClassID();
    v7 = CMDerivedObjectCreate();
    if (!v7)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v9 = FigReentrantMutexCreate();
      DerivedStorage[1] = v9;
      if (!v9)
      {
        return 4294951505;
      }

      *DerivedStorage = CFRetain(a1);
      BooleanValue = FigCFDictionaryGetBooleanValue();
      if (!BooleanValue || !CFBooleanGetValue(BooleanValue) || (v11 = FigDispatchQueueCreateWithPriority(), (DerivedStorage[6] = v11) != 0))
      {
        v4 = 0;
        *a4 = 0;
        return v4;
      }

      return FigSignalErrorAtGM();
    }

    return v7;
  }

  return v4;
}

uint64_t sbcdq_InstallLowWaterTrigger(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 16) || !a2)
  {
    v13 = FigSignalErrorAtGM();
  }

  else
  {
    *(DerivedStorage + 16) = a2;
    *(DerivedStorage + 24) = a3;
    if (a4)
    {
      *a4 = DerivedStorage + 16;
    }

    v8 = *(DerivedStorage + 32);
    if (!v8)
    {
      v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (!v9)
      {
        v13 = 4294954536;
        goto LABEL_12;
      }

      v8 = v9;
      *(DerivedStorage + 32) = v9;
    }

    v10 = *DerivedStorage;
    v11 = *(DerivedStorage + 48);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v12)
    {
      v13 = v12(v10, sbcdq_LowWaterTriggerCallbackAsync, v8, v11);
      if (!v13)
      {
        *(DerivedStorage + 40) = 1;
      }
    }

    else
    {
      v13 = 4294954514;
    }
  }

LABEL_12:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t sbcdq_RemoveLowWaterTrigger(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = (DerivedStorage + 16);
  if (a2 && v4 != a2)
  {
    v7 = FigSignalErrorAtGM();
  }

  else
  {
    *v4 = 0;
    *(DerivedStorage + 24) = 0;
    v5 = *DerivedStorage;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v6)
    {
      v7 = v6(v5);
      if (!v7)
      {
        *(DerivedStorage + 40) = 0;
      }
    }

    else
    {
      v7 = 4294954514;
    }
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t remoteGlobalRoutingRegistry_unRegisterClient(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v7 = 4294949576;
  if (!a1 || !a2)
  {
    goto LABEL_7;
  }

  if (!*DerivedStorage)
  {
    v7 = 4294951137;
    goto LABEL_7;
  }

  v8 = FigXPCCreateBasicMessage();
  if (v8)
  {
    v7 = v8;
    goto LABEL_7;
  }

  CFStringGetCString(a3, buffer, 64, 0x600u);
  xpc_dictionary_set_string(0, "RoutingContextUUID", buffer);
  xpc_dictionary_set_uint64(0, "ClientID", a2);
  xpc_dictionary_set_uint64(0, "RemoteClientID", a1);
  v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v7)
  {
LABEL_7:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v7;
}

void digestSubtitleSampleDo_1(uint64_t *a1)
{
  v320 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  theDict = 0;
  v307 = 0;
  cf = 0;
  if (FigSubtitleSampleCreateFromPropertyListAndInsertInfoForRenderer(v4, &theDict, &v307, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)))
  {
    goto LABEL_11;
  }

  if (!theDict || !CFDictionaryGetCount(theDict))
  {
    v225 = v3;
LABEL_207:
    outputCueAsFigCaptionRendererCaption_0(v225, 5, 0, 0);
    goto LABEL_11;
  }

  cueHighlightFocusIndexStart = 0;
  if (CFDictionaryContainsKey(theDict, @"SubtitleTextHighlightArray"))
  {
    v5 = CFDictionaryGetValue(theDict, @"SubtitleTextHighlightArray");
    v6 = v5;
    if (v5)
    {
      v7 = CFGetTypeID(v5);
      if (v7 == CFArrayGetTypeID())
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
        CFDictionaryGetValue(ValueAtIndex, @"CMTextHighlightAttributeKey_StringToHighlight");
      }

      else
      {
        v6 = 0;
      }
    }

    (*(v3 + 32))(v6, *(v3 + 40));
    goto LABEL_11;
  }

  valuePtr = 0;
  v304 = -1;
  FigCFDictionaryGetInt32IfPresent();
  v295 = v3;
  v261 = v4;
  v242 = v1;
  v9 = CFDictionaryGetValue(theDict, @"SubtitleFormat");
  CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr == 1937142900 || valuePtr == 2004251764 || valuePtr == 2021028980)
  {
    HIDWORD(v251) = 4;
    v233 = 1;
  }

  else
  {
    v233 = 0;
    HIDWORD(v251) = 3;
  }

  value = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(theDict, @"SubtitleSerializedCaptionGroup", &value);
  v13 = MEMORY[0x1E6960A90];
  v14 = &kFigPlaybackItemProperty_IsAuthorizationRequired;
  if (ValueIfPresent)
  {
    if (FigCaptionSerializerCreateCaptionGroupFromCFData())
    {
      goto LABEL_11;
    }

    v15 = cf;
    if (cf)
    {
      v16 = theDict;
      v316 = 0;
      v17 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v19 = Mutable;
        v318 = 0;
        *&v319 = 0;
        CMTimeMake(&v318, 0, 0);
        memset(v317, 0, 24);
        CMTimeMake(v317, 0, 0);
        v20 = CFDictionaryGetValue(v16, @"SubtitleTimeRange");
        v21 = v16;
        if (v20)
        {
          v22 = v20;
          v23 = CFArrayGetValueAtIndex(v20, 0);
          v24 = CFArrayGetValueAtIndex(v22, 1);
          memset(&v315, 0, sizeof(v315));
          CMTimeMakeFromDictionary(&v315, v23);
          memset(&v314, 0, sizeof(v314));
          CMTimeMakeFromDictionary(&v314, v24);
          v318 = *&v315.value;
          *&v319 = v315.epoch;
          *v317 = v314;
        }

        SliceCount = FigCaptionGroupGetSliceCount();
        v26 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v26 && (v27 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
        {
          v28 = v27;
          v240 = v21;
          if (SliceCount >= 1)
          {
            v29 = 0;
            key = *MEMORY[0x1E6960A90];
            v292 = *MEMORY[0x1E6961368];
            v290 = *MEMORY[0x1E6960AF0];
            v280 = *MEMORY[0x1E6960800];
            v278 = *MEMORY[0x1E69607E8];
            v276 = *MEMORY[0x1E69607F0];
            v274 = *MEMORY[0x1E69607F8];
            v272 = *MEMORY[0x1E69607D8];
            v270 = *MEMORY[0x1E69607E0];
            attrName = *MEMORY[0x1E6960998];
            v260 = *MEMORY[0x1E6960C38];
            v258 = *MEMORY[0x1E69609A0];
            v256 = *MEMORY[0x1E6960978];
            name = *MEMORY[0x1E6960838];
            v237 = *MEMORY[0x1E69609F8];
            v239 = *MEMORY[0x1E6960A00];
            v254 = *MEMORY[0x1E6960A08];
            v245 = *MEMORY[0x1E69608D8];
            v243 = *MEMORY[0x1E69608E0];
            v247 = *MEMORY[0x1E6960830];
            v236 = *MEMORY[0x1E69609E0];
            v238 = *MEMORY[0x1E69609E8];
            v252 = *MEMORY[0x1E69609F0];
            v286 = v15;
            v288 = v19;
            v282 = v27;
            v284 = v17;
            v262 = SliceCount;
            v264 = v26;
            LODWORD(v266) = v233;
            while (1)
            {
              CaptionData = FigCaptionGroupGetCaptionData();
              if (CaptionData)
              {
                break;
              }

LABEL_92:
              if (SliceCount == ++v29)
              {
                goto LABEL_93;
              }
            }

            v31 = CaptionData;
            if (v316)
            {
              CFRelease(v316);
              v316 = 0;
            }

            memset(&v315, 0, sizeof(v315));
            FigCaptionGroupGetDurationBeforeSlice();
            memset(&v314, 0, sizeof(v314));
            FigCaptionGroupGetDurationAfterSlice();
            effectiveRange = v318;
            v313 = v319;
            v311 = *v317;
            v310 = v315;
            v309 = v314;
            FigCaptionDataToMarkupBasedAttributedString(v17, v31, &effectiveRange, &v311, &v310, &v309, &v316, v26, v28);
            if (!v233 || (aStr = v316, (v32 = CFDictionaryGetValue(v26, key)) == 0) || (v33 = CFDictionaryGetValue(v32, v292)) == 0 || (v34 = CFDictionaryGetValue(v33, v290)) == 0)
            {
LABEL_91:
              CFArrayAppendValue(v19, v316);
              goto LABEL_92;
            }

            v35 = v34;
            v36 = CFDictionaryGetValue(v34, v280);
            v37 = CFDictionaryGetValue(v35, v278);
            v38 = CFDictionaryGetValue(v35, v276);
            v39 = CFDictionaryGetValue(v35, v274);
            v40 = CFDictionaryGetValue(v35, v272);
            v41 = CFDictionaryGetValue(v35, v270);
            OUTLINED_FUNCTION_7_93();
            v43 = v42;
            OUTLINED_FUNCTION_7_93();
            v296 = v44;
            *&v45 = COERCE_DOUBLE(OUTLINED_FUNCTION_7_93());
            v297 = v46;
            v47 = *&v45;
            OUTLINED_FUNCTION_7_93();
            OUTLINED_FUNCTION_9_69();
            OUTLINED_FUNCTION_7_93();
            OUTLINED_FUNCTION_8_78();
            effectiveRange.location = 0;
            effectiveRange.length = 0;
            if (CFAttributedStringGetAttribute(aStr, 0, attrName, &effectiveRange))
            {
              if (v37)
              {
                FigTextMarkupDimensionMakeFromSimplifiedDictionary();
                v43 = v48;
              }

              if (v38)
              {
                FigTextMarkupDimensionMakeFromSimplifiedDictionary();
                OUTLINED_FUNCTION_9_69();
              }

              v233 = v266;
              if (v39)
              {
                FigTextMarkupDimensionMakeFromSimplifiedDictionary();
                v296 = v49;
              }

              if (v40)
              {
                FigTextMarkupDimensionMakeFromSimplifiedDictionary();
                OUTLINED_FUNCTION_8_78();
              }

              v19 = v288;
              if (v41)
              {
                *&v50 = COERCE_DOUBLE(FigTextMarkupDimensionMakeFromSimplifiedDictionary());
                v297 = v51;
                v47 = *&v50;
              }

              v17 = v284;
              if (FigCFEqual())
              {
                FigGeometryDimensionMakeMirrored();
                OUTLINED_FUNCTION_9_69();
                FigGeometryDimensionMakeMirrored();
                OUTLINED_FUNCTION_8_78();
              }

              SliceCount = v262;
              v26 = v264;
            }

            else
            {
              if (v36)
              {
                FigTextMarkupDimensionMakeFromSimplifiedDictionary();
                v43 = v52;
              }

              v233 = v266;
              SliceCount = v262;
              if (v38)
              {
                FigTextMarkupDimensionMakeFromSimplifiedDictionary();
                v296 = v53;
              }

              if (v39)
              {
                FigTextMarkupDimensionMakeFromSimplifiedDictionary();
                OUTLINED_FUNCTION_9_69();
              }

              if (v40)
              {
                *&v54 = COERCE_DOUBLE(FigTextMarkupDimensionMakeFromSimplifiedDictionary());
                v297 = v55;
                v47 = *&v54;
              }

              v19 = v288;
              if (v41)
              {
                FigTextMarkupDimensionMakeFromSimplifiedDictionary();
                OUTLINED_FUNCTION_8_78();
              }

              v17 = v284;
              v26 = v264;
            }

            OUTLINED_FUNCTION_6_108();
            if (v56 == v43)
            {
              Float32 = FigCFNumberCreateFloat32();
              v65 = OUTLINED_FUNCTION_5_120(Float32, v58, v59, v60, v61, v62, v63, v64, v234, v235, v236, v237, v238, v239, v240, v242, v243, v245, v247, name, v251, v252, v254, v256, v258, v260, v261, v262, v264, v266, attrName, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, key, v295, v296, v297, v299, aStr);
              CFAttributedStringSetAttribute(v65, v321, v258, Float32);
              if (Float32)
              {
                CFRelease(Float32);
              }
            }

            OUTLINED_FUNCTION_6_108();
            if (v66 == v296)
            {
              v67 = FigCFNumberCreateFloat32();
              v75 = OUTLINED_FUNCTION_5_120(v67, v68, v69, v70, v71, v72, v73, v74, v234, v235, v236, v237, v238, v239, v240, v242, v243, v245, v247, name, v251, v252, v254, v256, v258, v260, v261, v262, v264, v266, attrName, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, key, v295, v296, v297, v299, aStr);
              CFAttributedStringSetAttribute(v75, v322, v256, v67);
              if (v67)
              {
                CFRelease(v67);
              }
            }

            OUTLINED_FUNCTION_6_108();
            if (v83 == v297)
            {
              v84 = v254;
              if (v47 == 0.0 || (v84 = v239, v47 == 50.0) || (v85 = OUTLINED_FUNCTION_10_69(), v84 = v237, v47 == v85))
              {
                v86 = OUTLINED_FUNCTION_5_120(v76, v77, v78, v79, v84, v80, v81, v82, v234, v235, v236, v237, v238, v239, v240, v242, v243, v245, v247, name, v251, v252, v254, v256, v258, v260, v261, v262, v264, v266, attrName, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, key, v295, v296, v297, v299, aStr);
                CFAttributedStringSetAttribute(v86, v323, name, v87);
              }
            }

            v28 = v282;
            if (v35 == 1818848869)
            {
              v89 = FigCFNumberCreateFloat32();
              v97 = OUTLINED_FUNCTION_5_120(v89, v100, v101, v102, v103, v104, v105, v106, v234, v235, v236, v237, v238, v239, v240, v242, v243, v245, v247, name, v251, v252, v254, v256, v258, v260, v261, v262, v264, v266, attrName, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, key, v295, v296, v297, v299, aStr);
              v99 = v245;
            }

            else
            {
              OUTLINED_FUNCTION_6_108();
              if (v35 != v88)
              {
LABEL_86:
                OUTLINED_FUNCTION_6_108();
                if (v114 == v299)
                {
                  v115 = v252;
                  if (v2 == 0.0 || (v115 = v238, v2 == 50.0) || (v116 = OUTLINED_FUNCTION_10_69(), v115 = v236, v2 == v116))
                  {
                    v117 = OUTLINED_FUNCTION_5_120(v107, v108, v109, v110, v115, v111, v112, v113, v234, v235, v236, v237, v238, v239, v240, v242, v243, v245, v247, name, v251, v252, v254, v256, v258, v260, v261, v262, v264, v266, attrName, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, key, v295, v296, v297, v299, aStr);
                    CFAttributedStringSetAttribute(v117, v324, v247, v118);
                  }
                }

                goto LABEL_91;
              }

              v89 = FigCFNumberCreateFloat32();
              v97 = OUTLINED_FUNCTION_5_120(v89, v90, v91, v92, v93, v94, v95, v96, v234, v235, v236, v237, v238, v239, v240, v242, v243, v245, v247, name, v251, v252, v254, v256, v258, v260, v261, v262, v264, v266, attrName, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, key, v295, v296, v297, v299, aStr);
              v99 = v243;
            }

            CFAttributedStringSetAttribute(v97, v98, v99, v89);
            if (v89)
            {
              CFRelease(v89);
            }

            goto LABEL_86;
          }

LABEL_93:
          v14 = &kFigPlaybackItemProperty_IsAuthorizationRequired;
          CFDictionarySetValue(v240, @"SubtitleContent", v19);
          if (!v26)
          {
            goto LABEL_95;
          }
        }

        else
        {
          v28 = 0;
          v14 = &kFigPlaybackItemProperty_IsAuthorizationRequired;
          if (!v26)
          {
            goto LABEL_95;
          }
        }

        CFRelease(v26);
LABEL_95:
        if (v28)
        {
          CFRelease(v28);
        }

        v13 = MEMORY[0x1E6960A90];
        if (v316)
        {
          CFRelease(v316);
        }

        CFRelease(v19);
      }
    }
  }

  v119 = CFDictionaryGetValue(theDict, @"SubtitleContentMetadata");
  if (v119)
  {
    v120 = CFDictionaryGetValue(v119, *v13);
    if (v120)
    {
      v121 = v120;
      Count = CFDictionaryGetCount(v120);
      if (Count >= 1)
      {
        v123 = Count;
        v124 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
        v125 = malloc_type_calloc(v123, 8uLL, 0xC0040B8AA526DuLL);
        CFDictionaryGetKeysAndValues(v121, v124, v125);
        v126 = 0;
        v127 = *MEMORY[0x1E6960AF0];
        v128 = *MEMORY[0x1E6960900];
        v300 = *MEMORY[0x1E695E4D0];
        v293 = *MEMORY[0x1E6960840];
        v291 = *MEMORY[0x1E6960848];
        v289 = *MEMORY[0x1E69608E8];
        v259 = *MEMORY[0x1E6960AC8];
        v257 = *MEMORY[0x1E6960AC0];
        v255 = *MEMORY[0x1E6960AD8];
        v253 = *MEMORY[0x1E6960AD0];
        v287 = *MEMORY[0x1E6960820];
        v285 = *MEMORY[0x1E69609B0];
        v283 = *MEMORY[0x1E6960808];
        v281 = *MEMORY[0x1E69609A8];
        v279 = *MEMORY[0x1E6960960];
        aStra = *MEMORY[0x1E69607C0];
        namea = *MEMORY[0x1E695F1C0];
        v246 = *MEMORY[0x1E69608D0];
        v277 = *MEMORY[0x1E6960910];
        v275 = *MEMORY[0x1E6960800];
        v273 = *MEMORY[0x1E69607E8];
        v271 = *MEMORY[0x1E69607F0];
        attrNamea = *MEMORY[0x1E69607F8];
        v263 = *MEMORY[0x1E6960B18];
        v265 = *MEMORY[0x1E6960B00];
        v248 = *MEMORY[0x1E6960B08];
        while (1)
        {
          v129 = v125[v126];
          if (!v129)
          {
            goto LABEL_203;
          }

          v130 = CFGetTypeID(v129);
          if (v130 != CFDictionaryGetTypeID())
          {
            goto LABEL_203;
          }

          v131 = v124[v126];
          if (!v131)
          {
            goto LABEL_203;
          }

          v132 = CFGetTypeID(v131);
          if (v132 != CFStringGetTypeID())
          {
            goto LABEL_203;
          }

          v133 = v124[v126];
          v134 = v125[v126];
          if (!CFDictionaryGetValue(v134, v127))
          {
            v172 = v14;
            v318.location = 0;
            FigCaptionRendererStackLayoutRegionCreate(&v318);
            *v317 = 0;
            LODWORD(v310.value) = 0;
            v315.value = 0;
            v314.value = 0;
            effectiveRange.location = 0;
            v311.value = 0;
            location = v318.location;
            FigCaptionRendererRegionProtocolGetProtocolID();
            ProtocolVTable = CMBaseObjectGetProtocolVTable();
            if (ProtocolVTable)
            {
              v175 = *(ProtocolVTable + 16);
              if (v175)
              {
                v176 = *(v175 + 8);
                if (v176)
                {
                  v176(location, v133);
                }
              }
            }

            v14 = v172;
            if (FigCFDictionaryGetCGFloatIfPresent())
            {
              v177 = v318.location;
              v178 = *v317;
              FigCaptionRendererRegionProtocolGetProtocolID();
              v179 = CMBaseObjectGetProtocolVTable();
              if (v179)
              {
                v180 = *(v179 + 16);
                if (v180)
                {
                  v181 = *(v180 + 24);
                  if (v181)
                  {
                    v181(v177, v178);
                  }
                }
              }

              v182 = CFDictionaryGetValue(v134, v265);
              if (v182)
              {
                CFNumberGetValue(v182, kCFNumberIntType, &v310);
                v183 = v318.location;
                value_low = LODWORD(v310.value);
                FigCaptionRendererRegionProtocolGetProtocolID();
                v185 = CMBaseObjectGetProtocolVTable();
                if (v185)
                {
                  v186 = *(v185 + 16);
                  if (v186)
                  {
                    v187 = *(v186 + 40);
                    if (v187)
                    {
                      v187(v183, value_low);
                    }
                  }
                }

                v14 = v172;
                if (CFDictionaryGetValue(v134, v263) && FigCFDictionaryGetCGFloatIfPresent() && FigCFDictionaryGetCGFloatIfPresent())
                {
                  v188 = v318.location;
                  v189 = *&v315.value;
                  v190 = *&v314.value;
                  FigCaptionRendererRegionProtocolGetProtocolID();
                  v191 = CMBaseObjectGetProtocolVTable();
                  if (v191)
                  {
                    v192 = *(v191 + 16);
                    if (v192)
                    {
                      v193 = *(v192 + 72);
                      if (v193)
                      {
                        v193(v188, v189, 100.0 - v190);
                      }
                    }
                  }

                  if (CFDictionaryGetValue(v134, v248) && FigCFDictionaryGetCGFloatIfPresent() && FigCFDictionaryGetCGFloatIfPresent())
                  {
                    v194 = v318.location;
                    v195 = *&effectiveRange.location;
                    v196 = *&v311.value;
                    FigCaptionRendererRegionProtocolGetProtocolID();
                    v197 = CMBaseObjectGetProtocolVTable();
                    if (v197)
                    {
                      v198 = *(v197 + 16);
                      if (v198)
                      {
                        v199 = *(v198 + 56);
                        if (v199)
                        {
                          v199(v194, v195, v196);
                        }
                      }
                    }

                    (*(v295 + 24))(v318.location, *(v295 + 40));
                  }
                }
              }
            }

            v200 = v318.location;
            if (!v318.location)
            {
              goto LABEL_203;
            }

LABEL_202:
            CFRelease(v200);
            goto LABEL_203;
          }

          v315.value = 0;
          v135 = CFDictionaryGetValue(v134, v127);
          v136 = CFDictionaryGetValue(v135, v128);
          if (!v136 || v136 != v300)
          {
            break;
          }

LABEL_201:
          v200 = v315.value;
          if (v315.value)
          {
            goto LABEL_202;
          }

LABEL_203:
          if (++v126 == v123)
          {
            free(v124);
            free(v125);
            goto LABEL_208;
          }
        }

        if (FigCaptionRendererTTMLRegionCreate(&v315))
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM();
          goto LABEL_201;
        }

        v137 = v315.value;
        FigCaptionRendererRegionProtocolGetProtocolID();
        v138 = CMBaseObjectGetProtocolVTable();
        if (v138)
        {
          v139 = *(v138 + 16);
          if (v139)
          {
            v140 = *(v139 + 8);
            if (v140)
            {
              v140(v137, v133);
            }
          }
        }

        if (CFDictionaryGetValue(v135, v293))
        {
          v141 = OUTLINED_FUNCTION_4_135();
          FigCaptionRendererTTMLRegionSetDisplayAlignment(v141, v142);
        }

        v298 = v128;
        v267 = v127;
        if (CFDictionaryGetValue(v135, v291))
        {
          FigTextMarkupAspectRatioMakeFromSimplifiedDictionary();
          v143 = OUTLINED_FUNCTION_4_135();
          FigCaptionRendererTTMLRegionSetDisplayAspectRatio(v143, v144);
        }

        v145 = CFDictionaryGetValue(v135, v289);
        if (v145)
        {
          v146 = v145;
          CFDictionaryGetValue(v145, v259);
          v244 = FigTextMarkupDimensionMakeFromSimplifiedDictionary();
          v241 = v147;
          CFDictionaryGetValue(v146, v257);
          FigTextMarkupDimensionMakeFromSimplifiedDictionary();
          CFDictionaryGetValue(v146, v255);
          v148 = FigTextMarkupDimensionMakeFromSimplifiedDictionary();
          v150 = v149;
          CFDictionaryGetValue(v146, v253);
          FigTextMarkupDimensionMakeFromSimplifiedDictionary();
          OUTLINED_FUNCTION_3_138();
          v151 = v315.value;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v152 = CMBaseObjectGetProtocolVTable();
          if (v152)
          {
            v153 = *(v152 + 16);
            if (v153)
            {
              v154 = *(v153 + 144);
              if (v154)
              {
                v154(v151, v148, v150, v146, v133, v244, v241);
              }
            }
          }
        }

        if (CFDictionaryGetValue(v135, v287))
        {
          v155 = OUTLINED_FUNCTION_4_135();
          FigCaptionRendererTTMLRegionSetClipOverflow(v155, v156);
        }

        v157 = CFDictionaryGetValue(v135, v285);
        if (v157)
        {
          v318.location = 0;
          CFNumberGetValue(v157, kCFNumberCGFloatType, &v318);
          v158 = v315.value;
          v159 = *&v318.location;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v160 = CMBaseObjectGetProtocolVTable();
          if (v160)
          {
            v161 = *(v160 + 16);
            if (v161)
            {
              v162 = *(v161 + 256);
              if (v162)
              {
                v162(v158, v159);
              }
            }
          }
        }

        if (CFDictionaryGetValue(v135, v283))
        {
          v163 = *(MEMORY[0x1E6962830] + 16);
          v318 = *MEMORY[0x1E6962830];
          v319 = v163;
          FigTextMarkupSizeMakeFromSimplifiedDictionary();
          *v317 = v318;
          *&v317[16] = v319;
          FigCaptionRendererTTMLRegionSetCellResolution(v315.value, v317);
        }

        v14 = &kFigPlaybackItemProperty_IsAuthorizationRequired;
        v127 = v267;
        v128 = v298;
        if (CFDictionaryGetValue(v135, v281))
        {
          v164 = OUTLINED_FUNCTION_4_135();
          FigCaptionRendererTTMLRegionSetWritingMode(v164, v165);
        }

        if (CFDictionaryGetValue(v135, v279))
        {
          v166 = OUTLINED_FUNCTION_4_135();
          FigCaptionRendererTTMLRegionSetShowBackground(v166, v167);
        }

        if (!v135 || !aStra || !CFDictionaryContainsKey(v135, aStra))
        {
          goto LABEL_190;
        }

        v168 = CFDictionaryGetValue(v135, aStra);
        v169 = CFGetTypeID(v168);
        if (v169 == CGColorGetTypeID())
        {
          v170 = CGColorRetain(v168);
          if (v170)
          {
            v171 = v170;
            v128 = v298;
LABEL_181:
            v207 = CFDictionaryGetValue(v135, v246);
            if (v207)
            {
              *v317 = 0x3FF0000000000000;
              CFNumberGetValue(v207, kCFNumberCGFloatType, v317);
              v208 = CGColorSpaceCreateWithName(namea);
              Components = CGColorGetComponents(v171);
              for (i = 0; i != 3; ++i)
              {
                *(&v318.location + i * 8) = Components[i];
              }

              *(&v319 + 1) = *v317;
              if (v208)
              {
                CFRelease(v171);
                v171 = CGColorCreate(v208, &v318.location);
                CGColorSpaceRelease(v208);
              }

              FigCaptionRendererTTMLRegionSetColor(v315.value, v171);
              if (!v171)
              {
                goto LABEL_190;
              }
            }

            else
            {
              FigCaptionRendererTTMLRegionSetColor(v315.value, v171);
            }

            CFRelease(v171);
LABEL_190:
            if (CFDictionaryGetValue(v135, v277))
            {
              v211 = OUTLINED_FUNCTION_4_135();
              FigCaptionRendererTTMLRegionSetInvisible(v211, v212);
            }

            OUTLINED_FUNCTION_10_69();
            OUTLINED_FUNCTION_40_4();
            OUTLINED_FUNCTION_3_138();
            if (CFDictionaryGetValue(v135, v275))
            {
              FigTextMarkupDimensionMakeFromSimplifiedDictionary();
              OUTLINED_FUNCTION_3_138();
            }

            v213 = OUTLINED_FUNCTION_2_168();
            FigCaptionRendererTTMLRegionSetWidth(v213, v214, v215);
            OUTLINED_FUNCTION_10_69();
            OUTLINED_FUNCTION_40_4();
            OUTLINED_FUNCTION_3_138();
            if (CFDictionaryGetValue(v135, v273))
            {
              FigTextMarkupDimensionMakeFromSimplifiedDictionary();
              OUTLINED_FUNCTION_3_138();
            }

            v216 = OUTLINED_FUNCTION_2_168();
            FigCaptionRendererTTMLRegionSetHeight(v216, v217, v218);
            OUTLINED_FUNCTION_40_4();
            OUTLINED_FUNCTION_3_138();
            if (CFDictionaryGetValue(v135, v271))
            {
              FigTextMarkupDimensionMakeFromSimplifiedDictionary();
              OUTLINED_FUNCTION_3_138();
            }

            v219 = OUTLINED_FUNCTION_2_168();
            FigCaptionRendererTTMLRegionSetPositionX(v219, v220, v221);
            OUTLINED_FUNCTION_40_4();
            OUTLINED_FUNCTION_3_138();
            if (CFDictionaryGetValue(v135, attrNamea))
            {
              FigTextMarkupDimensionMakeFromSimplifiedDictionary();
              OUTLINED_FUNCTION_3_138();
            }

            v222 = OUTLINED_FUNCTION_2_168();
            FigCaptionRendererTTMLRegionSetPositionY(v222, v223, v224);
            (*(v295 + 24))(v315.value, *(v295 + 40));
            goto LABEL_201;
          }
        }

        else
        {
          v201 = CFGetTypeID(v168);
          if (v201 == CFArrayGetTypeID())
          {
            for (j = 0; j != 4; ++j)
            {
              v203 = CFArrayGetValueAtIndex(v168, j);
              *v317 = 0;
              v204 = CFGetTypeID(v203);
              if (v204 != CFNumberGetTypeID())
              {
                break;
              }

              CFNumberGetValue(v203, kCFNumberCGFloatType, v317);
              *(&v318.location + ((j - 1) & 3)) = *v317;
            }
          }
        }

        v205 = CGColorSpaceCreateWithName(namea);
        v14 = &kFigPlaybackItemProperty_IsAuthorizationRequired;
        v128 = v298;
        if (!v205)
        {
          goto LABEL_190;
        }

        v206 = v205;
        v171 = CGColorCreate(v205, &v318.location);
        CGColorSpaceRelease(v206);
        if (!v171)
        {
          goto LABEL_190;
        }

        goto LABEL_181;
      }
    }
  }

LABEL_208:
  v226 = CFDictionaryGetValue(theDict, v14[443]);
  v4 = v261;
  if (!v226)
  {
    goto LABEL_11;
  }

  v227 = v226;
  v228 = CFArrayGetCount(v226);
  if (!v228)
  {
    v225 = v295;
    goto LABEL_207;
  }

  v229 = v228;
  if (v228 >= 1)
  {
    for (k = 0; k != v229; ++k)
    {
      v231 = CFArrayGetValueAtIndex(v227, k);
      if (v231)
      {
        v232 = v231;
        if (CFAttributedStringGetLength(v231))
        {
          outputCueAsFigCaptionRendererCaption_0(v295, HIDWORD(v251), v232, theDict);
        }
      }
    }
  }

LABEL_11:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void outputCueAsFigCaptionRendererCaption_0(uint64_t a1, uint64_t a2, uint64_t a3, CFDictionaryRef theDict)
{
  v4 = theDict;
  cf[0] = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"SubtitleTimeRange");
    v9 = CFDictionaryGetValue(v4, @"kFigSubtitleRenderer_TextBox");
    v10 = CFDictionaryGetValue(v4, @"SubtitleExtendedLanguageTag");
    v4 = CFDictionaryGetValue(v4, @"kFigSubtitleRenderer_ObeySubtitleFormatting");
  }

  else
  {
    v10 = 0;
    v9 = 0;
    Value = 0;
  }

  cf[1] = 0;
  cf[2] = 0;
  if (a3)
  {
    v11 = OUTLINED_FUNCTION_0_190();
    Attribute = CFAttributedStringGetAttribute(v11, v12, v13, v14);
    if (Attribute && Attribute == *MEMORY[0x1E695E4D0])
    {
      goto LABEL_15;
    }
  }

  FigCaptionRendererCaptionCreate(cf);
  v17 = cf[0];
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v20 = *(ProtocolVTable + 16);
    ProtocolVTable += 16;
    v19 = v20;
    if (v20)
    {
      v21 = *(v19 + 40);
      if (v21)
      {
        ProtocolVTable = v21(v17, a2);
      }
    }
  }

  if (a2 == 5)
  {
    (*(a1 + 16))(cf[0], *(a1 + 40));
LABEL_15:
    Mutable = 0;
    goto LABEL_69;
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  if (Value)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
    v24 = CFArrayGetValueAtIndex(Value, 1);
    memset(&v111, 0, sizeof(v111));
    CMTimeMakeFromDictionary(&v111, ValueAtIndex);
    memset(&v110, 0, sizeof(v110));
    CMTimeMakeFromDictionary(&v110, v24);
    v109 = v111;
    CMTimeGetSeconds(&v109);
    v109 = v110;
    CMTimeGetSeconds(&v109);
  }

  v25 = cf[0];
  FigBaseObject = FigBytePumpGetFigBaseObject(ProtocolVTable);
  v28 = v27;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  v29 = CMBaseObjectGetProtocolVTable();
  if (v29)
  {
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = *(v30 + 16);
      if (v31)
      {
        v31(v25, FigBaseObject, v28);
      }
    }
  }

  v32 = cf[0];
  FigCaptionRendererCaptionProtocolGetProtocolID();
  v33 = CMBaseObjectGetProtocolVTable();
  if (v33)
  {
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = *(v34 + 56);
      if (v35)
      {
        v35(v32, v10);
      }
    }
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v36 = cf[0];
  FigCaptionRendererCaptionProtocolGetProtocolID();
  v37 = CMBaseObjectGetProtocolVTable();
  if (v37)
  {
    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = *(v38 + 8);
      if (v39)
      {
        v39(v36, Mutable);
      }
    }
  }

  v40 = OUTLINED_FUNCTION_0_190();
  v44 = CFAttributedStringGetAttribute(v40, v41, v42, v43);
  if (v44 || (v45 = OUTLINED_FUNCTION_0_190(), v49 = CFAttributedStringGetAttribute(v45, v46, v47, v48), a2 == 7) && (v44 = v49) != 0)
  {
    CFDictionarySetValue(Mutable, @"region", v44);
  }

  if (v9)
  {
    CFDictionarySetValue(Mutable, @"textbox", v9);
  }

  if (v4)
  {
    CFDictionarySetValue(Mutable, @"obeysubtitleformat", v4);
  }

  v50 = *MEMORY[0x1E69607B0];
  v51 = OUTLINED_FUNCTION_0_190();
  v54 = CFAttributedStringGetAttribute(v51, v52, v50, v53);
  if (v54)
  {
    CFDictionarySetValue(Mutable, v50, v54);
  }

  if (a2 == 7)
  {
    v95 = OUTLINED_FUNCTION_0_190();
    v99 = CFAttributedStringGetAttribute(v95, v96, v97, v98);
    if (v99)
    {
      v100 = v99;
      v101 = cf[0];
      FigCaptionRendererCaptionProtocolGetProtocolID();
      v102 = CMBaseObjectGetProtocolVTable();
      if (v102)
      {
        v103 = *(v102 + 16);
        if (v103)
        {
          v104 = *(v103 + 88);
          if (v104)
          {
            v104(v101, v100);
          }
        }
      }
    }
  }

  else if (a2 == 4)
  {
    v55 = *MEMORY[0x1E6960998];
    v56 = OUTLINED_FUNCTION_0_190();
    v59 = CFAttributedStringGetAttribute(v56, v57, v55, v58);
    if (v59)
    {
      OUTLINED_FUNCTION_1_10(v59);
    }

    v60 = *MEMORY[0x1E6960978];
    v61 = OUTLINED_FUNCTION_0_190();
    v64 = CFAttributedStringGetAttribute(v61, v62, v60, v63);
    if (v64)
    {
      OUTLINED_FUNCTION_1_10(v64);
    }

    v65 = *MEMORY[0x1E69608E0];
    v66 = OUTLINED_FUNCTION_0_190();
    v69 = CFAttributedStringGetAttribute(v66, v67, v65, v68);
    if (v69)
    {
      OUTLINED_FUNCTION_1_10(v69);
    }

    v70 = *MEMORY[0x1E69608D8];
    v71 = OUTLINED_FUNCTION_0_190();
    v74 = CFAttributedStringGetAttribute(v71, v72, v70, v73);
    if (v74)
    {
      OUTLINED_FUNCTION_1_10(v74);
    }

    v75 = *MEMORY[0x1E6960830];
    v76 = OUTLINED_FUNCTION_0_190();
    v79 = CFAttributedStringGetAttribute(v76, v77, v75, v78);
    if (v79)
    {
      OUTLINED_FUNCTION_1_10(v79);
    }

    v80 = *MEMORY[0x1E6960838];
    v81 = OUTLINED_FUNCTION_0_190();
    v84 = CFAttributedStringGetAttribute(v81, v82, v80, v83);
    if (v84)
    {
      OUTLINED_FUNCTION_1_10(v84);
    }

    v85 = *MEMORY[0x1E69609A0];
    v86 = OUTLINED_FUNCTION_0_190();
    v89 = CFAttributedStringGetAttribute(v86, v87, v85, v88);
    if (v89)
    {
      OUTLINED_FUNCTION_1_10(v89);
    }

    v90 = *MEMORY[0x1E6960968];
    v91 = OUTLINED_FUNCTION_0_190();
    v94 = CFAttributedStringGetAttribute(v91, v92, v90, v93);
    if (v94)
    {
      OUTLINED_FUNCTION_1_10(v94);
    }
  }

  v105 = cf[0];
  FigCaptionRendererCaptionProtocolGetProtocolID();
  v106 = CMBaseObjectGetProtocolVTable();
  if (v106)
  {
    v107 = *(v106 + 16);
    if (v107)
    {
      v108 = *(v107 + 24);
      if (v108)
      {
        v108(v105, a3);
      }
    }
  }

  (*(a1 + 16))(cf[0], *(a1 + 40));
LABEL_69:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t FigCaptionRendererNotificationInputCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererNotificationInputCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void speedramptimer_eventHandler()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v0)
  {
    return;
  }

  v1 = v0;
  FigSimpleMutexLock();
  if ((*(v1 + 124) & 0x1D) != 1)
  {
    goto LABEL_10;
  }

  CMTimebaseGetTime(&v12, *(v1 + 32));
  v11 = v12;
  v15 = *(v1 + 112);
  v2 = *(v1 + 124);
  v16 = *(v1 + 120);
  v3 = *(v1 + 128);
  Rate = CMTimebaseGetRate(*(v1 + 32));
  if ((v2 & 0x1D) != 1 || ((v5 = Rate, Rate < 0.0) || (time1.value = v15, time1.timescale = v16, time1.flags = v2, time1.epoch = v3, time2 = v11, CMTimeCompare(&time1, &time2) > 0)) && (v5 >= 0.0 || (time1 = v11, time2.value = v15, time2.timescale = v16, time2.flags = v2, time2.epoch = v3, CMTimeCompare(&time1, &time2) > 0)))
  {
    if (*(v1 + 64) || (v6 = *(v1 + 32), v7 = *(v1 + 40), time1 = *(v1 + 112), CMTimebaseSetTimerDispatchSourceNextFireTime(v6, v7, &time1, *(v1 + 160))))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  *(v1 + 136) = v12;
  v8 = *(v1 + 72);
  v10 = *(v1 + 24);
  if (v10)
  {
    v9 = CFRetain(v10);
    goto LABEL_12;
  }

LABEL_11:
  v9 = 0;
LABEL_12:
  FigSimpleMutexUnlock();
  CFRelease(v1);
  if (v8)
  {
    v8(v9);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void speedramptimer_cancelHandler()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v0)
  {
    return;
  }

  v1 = v0;
  FigSimpleMutexLock();
  if (*(v1 + 65))
  {
    v2 = 0;
  }

  else
  {
    *(v1 + 65) = 1;
    v2 = *(v1 + 80);
    v4 = *(v1 + 24);
    if (v4)
    {
      v3 = CFRetain(v4);
      goto LABEL_7;
    }
  }

  v3 = 0;
LABEL_7:
  FigSimpleMutexUnlock();
  CFRelease(v1);
  if (v2)
  {
    v2(v3);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t FigSpeedRampTimerScheduleForL2Time_cold_1(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a2 = v3;
  return FigSignalErrorAtGM();
}

uint64_t FigSpeedRampTimerScheduleToFireImmediately_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSpeedRampTimerScheduleToFireImmediately_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigSpeedRampTimerCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigSpeedRampTimerCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSpeedRampTimerCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSpeedRampTimerCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSpeedRampTimerCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSpeedRampTimerCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSpeedRampTimerCreate_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSpeedRampTimerCreate_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTSampleBufferCopyClosedCaptionSEIBlockBuffer(opaqueCMSampleBuffer *a1, CMBlockBufferRef *a2)
{
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  v30 = 0;
  UnitTypesForCodecType = ccu_getUnitTypesForCodecType(MediaSubType);
  if (FormatDescription && a1 && a2 && (v7 = UnitTypesForCodecType, UnitTypesForCodecType) && (DataBuffer = CMSampleBufferGetDataBuffer(a1)) != 0)
  {
    v9 = DataBuffer;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    CMBlockBufferGetDataLength(DataBuffer);
    result = UnitIteratorInit(FormatDescription);
    v31 = result;
    if (result)
    {
      return result;
    }

    if ((*(&v29 + 1))(&v26, &v31))
    {
      v17 = BYTE1(v7);
      v18 = BYTE2(v7);
      while (v26 != v17 && v26 != v18)
      {
LABEL_13:
        if (!(*(&v29 + 1))(&v26, &v31))
        {
          v20 = v30;
          goto LABEL_25;
        }
      }

      v21 = 0;
      v22 = v27;
      v23 = 0;
      v24 = *(&v27 + 1) + v27;
      v25 = v29;
      while (SEIIteratorNextMessage(&v21, &v31, v11, v12, v13, v14, v15, v16))
      {
        if (SEIIteratorIsT35ATSC1Data(&v21, &v31))
        {
          result = ccu_createOrAppendFromBuffer(&v30, v9, v22 + 3, v23 - 3);
          v31 = result;
          if (result)
          {
            goto LABEL_23;
          }
        }

        else
        {
          result = v31;
          if (v31)
          {
            goto LABEL_23;
          }
        }
      }

      result = v31;
      if (!v31)
      {
        goto LABEL_13;
      }

LABEL_23:
      v20 = v30;
    }

    else
    {
      v20 = 0;
LABEL_25:
      result = v31;
      if (!v31)
      {
        *a2 = v20;
        return result;
      }
    }

    if (v20)
    {
      CFRelease(v20);
      return v31;
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

uint64_t UnitIteratorInit(const opaqueCMFormatDescription *a1)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (!Extensions || (Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E69600A0])) == 0 || (v5 = Value, v6 = CFGetTypeID(Value), v6 != CFDictionaryGetTypeID()))
  {
LABEL_73:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();

    return FigSignalErrorAtGM();
  }

  v7 = @"avcC";
  v8 = 1635148593;
  if (MediaSubType != 1635148593 && MediaSubType != 1635148595 && MediaSubType != 1667331683)
  {
    switch(MediaSubType)
    {
      case 0x63646831u:
      case 0x63687663u:
      case 0x646D7578u:
        goto LABEL_61;
      case 0x64726D69u:
        goto LABEL_62;
      case 0x64766831u:
      case 0x64766865u:
        goto LABEL_61;
      case 0x65617663u:
      case 0x66747663u:
        goto LABEL_62;
    }

    v15 = MediaSubType == 1718908520 || MediaSubType == 1718908528;
    v16 = v15 || MediaSubType == 1751479857;
    v17 = v16 || MediaSubType == 1752589105;
    v18 = v17 || MediaSubType == 1836415073;
    if (v18 || MediaSubType == 1869117027)
    {
LABEL_61:
      v8 = 1752589105;
      v7 = @"hvcC";
      goto LABEL_62;
    }

    if (MediaSubType != 1902212707 && MediaSubType != 1902212709)
    {
      if (MediaSubType != 1902405681 && MediaSubType != 1902405733 && MediaSubType != 1902407032 && MediaSubType != 1902667126 && MediaSubType != 1902671459)
      {
        if (MediaSubType == 2053207651)
        {
          goto LABEL_62;
        }

        if (MediaSubType != 1902998904)
        {
          goto LABEL_73;
        }
      }

      goto LABEL_61;
    }
  }

LABEL_62:
  v25 = CFDictionaryGetValue(v5, v7);
  if (!v25)
  {
    goto LABEL_73;
  }

  ValueAtIndex = v25;
  v27 = CFGetTypeID(v25);
  if (v27 == CFArrayGetTypeID() && CFArrayGetCount(ValueAtIndex) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    if (!ValueAtIndex)
    {
      goto LABEL_73;
    }
  }

  if (v8 == 1635148593)
  {
    CFDataGetBytePtr(ValueAtIndex);
    CFDataGetLength(ValueAtIndex);
    FigH264Bridge_GetNALUnitHeaderLengthFromAVCC();
  }

  else
  {
    FigHEVCBridge_GetNALUnitHeaderLengthFromHVCC();
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();
  return FigSignalErrorAtGM();
}

uint64_t SEIIteratorNextMessage(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v32 = a2;
  v8 = a1;
  v36 = *MEMORY[0x1E69E9840];
  HIBYTE(destination) = 0;
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[1];
  v12 = v9 + v11;
  if (v9)
  {
    v13 = 2;
    if (v11)
    {
      v13 = 3;
    }

    v14 = v13 + v9;
    if ((v13 + v9) >= 4)
    {
      v25 = v11 != 0;
      v15 = v11 - 1;
      if (v25)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      do
      {
        if (v12 + 3 >= v8[3])
        {
          break;
        }

        returnedPointerOut = 0;
        if (v14 >= 0x100)
        {
          v17 = 256;
        }

        else
        {
          v17 = v14;
        }

        LODWORD(a1) = CMBlockBufferAccessDataBytes(v8[4], v16, v17, temporaryBlock, &returnedPointerOut);
        if (a1)
        {
          goto LABEL_46;
        }

        v18 = 0;
        v19 = returnedPointerOut;
        v20 = v17 - 1;
        v21 = 2;
        do
        {
          a1 = memchr(&v19[v21], 3, v17 + ~v21);
          if (!a1)
          {
            break;
          }

          if (!*(a1 - 2) && !*(a1 - 1) && *(a1 + 1) < 4u)
          {
            ++v18;
          }

          v21 = a1 - v19 + 3;
        }

        while (v21 < v20);
        v22 = v17 - 3;
        if (v19[v20] != 3)
        {
          v22 = v17;
        }

        v23 = v19[v20] ? v22 : v17 - 2;
        v16 += v23;
        v14 = v18 + v14 - v23;
        v12 += v18;
      }

      while (v14 > 3);
    }
  }

  if (v12 + 3 >= v10)
  {
    LODWORD(a1) = 0;
  }

  else
  {
    v24 = 0;
    while (1)
    {
      LODWORD(a1) = OUTLINED_FUNCTION_6_109(a1, a2, a3, a4, a5, a6, a7, a8, v31, v32, destination, SWORD2(destination), SBYTE6(destination), SHIBYTE(destination));
      if (a1)
      {
        break;
      }

      v24 += HIBYTE(destination);
      v25 = HIBYTE(destination) != 255 || ++v12 >= v10;
      if (v25)
      {
        v26 = 0;
        while (1)
        {
          LODWORD(a1) = OUTLINED_FUNCTION_6_109(0, a2, a3, a4, a5, a6, a7, a8, v31, v32, destination, SWORD2(destination), SBYTE6(destination), SHIBYTE(destination));
          if (a1)
          {
            goto LABEL_46;
          }

          v26 += HIBYTE(destination);
          ++v12;
          if (HIBYTE(destination) != 255 || v12 >= v10)
          {
            v28 = v32;
            LODWORD(a1) = 0;
            if (v26 + v12 <= v10)
            {
              *v8 = v24;
              v29 = 1;
              v8[1] = v12;
              v8[2] = v26;
            }

            else
            {
              v29 = 0;
            }

            goto LABEL_44;
          }
        }
      }
    }
  }

LABEL_46:
  v29 = 0;
  v28 = v32;
LABEL_44:
  *v28 = a1;
  return v29;
}

BOOL SEIIteratorIsT35ATSC1Data(uint64_t a1, OSStatus *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (*a1 != 4 || *(a1 + 16) < 0xAuLL)
  {
    v3 = 0;
    goto LABEL_7;
  }

  v6[0] = 0;
  v3 = CMBlockBufferCopyDataBytes(*(a1 + 32), *(a1 + 8), 8uLL, v6);
  if (v3)
  {
LABEL_7:
    v4 = 0;
    goto LABEL_5;
  }

  v4 = v6[0] == 0x3343941473100B5;
LABEL_5:
  *a2 = v3;
  return v4;
}

uint64_t ccu_createOrAppendFromBuffer(CMBlockBufferRef *a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1)
  {
    if (a4)
    {
      OUTLINED_FUNCTION_2_150();

      return CMBlockBufferAppendBufferReference(v6, v7, v8, v9, v10);
    }

    return 0;
  }

  v12 = CFGetAllocator(cf);
  if (a4)
  {
    OUTLINED_FUNCTION_2_150();

    return CMBlockBufferCreateWithBufferReference(v13, v14, v15, v16, v17, a1);
  }

  else
  {

    return CMBlockBufferCreateEmpty(v12, 0, 0, a1);
  }
}

uint64_t MTSampleBufferCreateCopyIncorporatingClosedCaptionSEI(opaqueCMSampleBuffer *a1, OpaqueCMBlockBuffer *a2, void *a3)
{
  v43 = 0u;
  *v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  UnitTypesForCodecType = ccu_getUnitTypesForCodecType(MediaSubType);
  theBuffer = 0;
  cf = 0;
  if (a1 && FormatDescription && a3 && (v10 = UnitTypesForCodecType, CMSampleBufferGetNumSamples(a1) == 1) && (HIDWORD(v33) = v10, v10) && (DataBuffer = CMSampleBufferGetDataBuffer(a1)) != 0)
  {
    v31 = v3;
    DataLength = CMBlockBufferGetDataLength(DataBuffer);
    if (a2)
    {
      v13 = CMBlockBufferGetDataLength(a2) > 7;
    }

    else
    {
      v13 = 0;
    }

    v45[0] = UnitIteratorInit(FormatDescription);
    if (!v45[0])
    {
      HIDWORD(v32) = MediaSubType;
      v14 = 0;
      v15 = 0;
      v16 = HIBYTE(v10);
      LODWORD(v33) = BYTE1(v10);
      v17 = BYTE2(v10);
      while (1)
      {
        v18 = (v44[1])(&v41, v45);
        if (!v18)
        {
          break;
        }

        if (v16 > v41)
        {
          if (HIDWORD(v33) == v41)
          {
            v14 = v43;
          }

          else if (v33 == v41 || v17 == v41)
          {
            v34 = 0;
            v35 = v42;
            v36 = 0;
            v37 = *(&v42 + 1) + v42;
            v38 = v44[0];
            while (SEIIteratorNextMessage(&v34, v45, v20, v21, v22, v23, v24, v25))
            {
              IsT35ATSC1Data = SEIIteratorIsT35ATSC1Data(&v34, v45);
              if (IsT35ATSC1Data)
              {
                v45[0] = OUTLINED_FUNCTION_3_139(IsT35ATSC1Data, v28, v20, *(&v41 + 1) - v15, v22, v23, v24, v25, v31, v32, v33, v34, v35, v36, v37, v38, theBuffer);
                if (v45[0])
                {
                  goto LABEL_46;
                }

                if (!v14)
                {
                  v14 = v43;
                }

                if (v13)
                {
                  v45[0] = ccu_appendCaptionBuffer(SHIDWORD(v32), theBuffer, a2, v14);
                  if (v45[0])
                  {
                    goto LABEL_46;
                  }
                }

                v13 = 0;
                v15 = *(&v42 + 1) + v42;
              }
            }

            if (v45[0])
            {
              goto LABEL_46;
            }
          }

          else
          {
            if (v13)
            {
              v45[0] = OUTLINED_FUNCTION_3_139(v18, v19, v20, *(&v41 + 1) - v15, v22, v23, v24, v25, v31, v32, v33, v34, v35, v36, v37, v38, theBuffer);
              if (v45[0])
              {
                goto LABEL_46;
              }

              if (!v14)
              {
                v14 = v43;
              }

              v45[0] = ccu_appendCaptionBuffer(SHIDWORD(v32), theBuffer, a2, v14);
              if (v45[0])
              {
                goto LABEL_46;
              }

              v15 = *(&v41 + 1);
            }

            v13 = 0;
            if (v33 == v17)
            {
              if (v45[0])
              {
                goto LABEL_46;
              }

              goto LABEL_41;
            }
          }
        }
      }

      if (v45[0])
      {
        goto LABEL_46;
      }

      if (v13)
      {
        fig_log_get_emitter();
        goto LABEL_57;
      }

LABEL_41:
      v29 = theBuffer;
      if (!theBuffer)
      {
        CFRetain(a1);
        *a3 = a1;
        goto LABEL_46;
      }

      if (DataLength > v15)
      {
        v45[0] = OUTLINED_FUNCTION_3_139(theBuffer, v19, v20, DataLength - v15, v22, v23, v24, v25, v31, v32, v33, v34, v35, v36, v37, v38, theBuffer);
        if (v45[0])
        {
          goto LABEL_46;
        }

        v29 = theBuffer;
      }

      v34 = CMBlockBufferGetDataLength(v29);
      CFGetAllocator(a1);
      v45[0] = FigSampleBufferCreateCopyWithNewSizesAndDataBuffer();
      if (!v45[0])
      {
        *a3 = cf;
        cf = 0;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
LABEL_57:
    v45[0] = FigSignalErrorAtGM();
  }

LABEL_46:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v45[0];
}

uint64_t ui_iteratorHEVC(void *a1, _DWORD *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = a1[3] + a1[2];
  if ((v10 + 6) > a1[5])
  {
    v11 = 0;
    goto LABEL_12;
  }

  v11 = OUTLINED_FUNCTION_4_136(a1, a2, a3, a4, a5, a6, a7, a8, v18, 0);
  if (v11)
  {
    goto LABEL_12;
  }

  v12 = bswap32(destination);
  *destinationa = v12;
  v13 = *(v8 + 40);
  v14 = v13 >= v12;
  v15 = v13 - v12;
  if (!v14 || v10 + 4 > v15 || v12 <= 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v11 = FigSignalErrorAtGM();
    goto LABEL_12;
  }

  v11 = CMBlockBufferCopyDataBytes(*(v8 + 48), v10 + 4, 2uLL, (v8 + 32));
  if (v11)
  {
LABEL_12:
    v16 = 0;
    goto LABEL_9;
  }

  *v8 = (*(v8 + 32) >> 1) & 0x3F;
  *(v8 + 8) = v10;
  *(v8 + 16) = v10 + 6;
  *(v8 + 24) = *destinationa - 2;
  v16 = 1;
LABEL_9:
  *a2 = v11;
  return v16;
}

uint64_t ui_iteratorAVC(void *a1, _DWORD *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = a1[3] + a1[2];
  if ((v10 + 5) > a1[5])
  {
    v11 = 0;
    goto LABEL_11;
  }

  v11 = OUTLINED_FUNCTION_4_136(a1, a2, a3, a4, a5, a6, a7, a8, v16, 0);
  if (v11)
  {
    goto LABEL_11;
  }

  v12 = destination;
  *destinationa = bswap32(destination);
  v13 = *(v8 + 40);
  if (v13 < *destinationa || v10 + 4 > v13 - *destinationa || !v12)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v11 = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  v11 = CMBlockBufferCopyDataBytes(*(v8 + 48), v10 + 4, 1uLL, (v8 + 32));
  if (v11)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_8;
  }

  *v8 = *(v8 + 32) & 0x1F;
  *(v8 + 8) = v10;
  *(v8 + 16) = v10 + 5;
  *(v8 + 24) = *destinationa - 1;
  v14 = 1;
LABEL_8:
  *a2 = v11;
  return v14;
}

uint64_t figVideoReceiverServer_handleRemoteMessage(uint64_t a1, void *a2)
{
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    OUTLINED_FUNCTION_3_140();
    if (v4)
    {
      return FigXPCServerDisassociateObjectWithConnection();
    }

    else
    {
      result = FigXPCServerLookupAndRetainAssociatedObject();
      if (!result)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
        return FigSignalErrorAtGM();
      }
    }
  }

  return result;
}

uint64_t figVideoReceiverServer_handleRemoteNoReplyMessage(uint64_t a1, void *a2)
{
  if (!a2)
  {
LABEL_9:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    return FigSignalErrorAtGM();
  }

  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OUTLINED_FUNCTION_3_140();
  if (!v4)
  {
    OpCode = FigXPCServerLookupAndRetainAssociatedObject();
    if (OpCode)
    {
      return OpCode;
    }

    goto LABEL_9;
  }

  FigXPCServerDisassociateObjectWithConnection();
  return 0;
}

uint64_t videoReceiverServer_createImageQueue(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "ImageQueueID");
  if (!uint64)
  {
    goto LABEL_9;
  }

  v5 = uint64;
  v6 = FigXPCMessageCopyCFDictionary();
  if (v6)
  {
    return v6;
  }

  value = xpc_dictionary_get_value(xdict, "ImageQueueMessage");
  if (!value)
  {
LABEL_9:
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  v8 = value;
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 16);
  if (!v9)
  {
    return 4294954514;
  }

  return v9(a1, v5, 0, v8);
}

uint64_t videoReceiverServer_addConfiguration(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E6960C70];
  v25 = *(MEMORY[0x1E6960C70] + 16);
  cf = 0;
  v28[0] = 0;
  v22[0] = 0;
  v26 = 0;
  if (a3)
  {
    v6 = FigXPCMessageCopyCFDictionary();
    if (v6)
    {
      goto LABEL_44;
    }

    v6 = FigDataChannelConfigurationCreateFromDictionary(*MEMORY[0x1E695E480], v28[0], v22);
    if (v6)
    {
      goto LABEL_44;
    }

    ChannelCount = FigDataChannelConfigurationGetChannelCount(v22[0]);
    if (ChannelCount >= 1)
    {
      v8 = ChannelCount;
      for (i = 0; v8 != i; ++i)
      {
        if (FigDataChannelConfigurationGetOutputQueueTypeAtIndex(v22[0], i) == 2)
        {
          FigDataQueueObjectIDAtIndex = FigDataChannelConfigurationGetFigDataQueueObjectIDAtIndex();
          if (!FigDataQueueObjectIDAtIndex)
          {
            goto LABEL_42;
          }

          v6 = FigDataQueueServer_CopyDataQueueForID(a1, FigDataQueueObjectIDAtIndex, &cf);
          if (v6)
          {
            goto LABEL_44;
          }

          v6 = FigDataChannelConfigurationSetFigDataQueueAtIndex(v22[0], i);
          if (v6)
          {
            goto LABEL_44;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }
        }
      }
    }

    ResourceCount = FigDataChannelConfigurationGetResourceCount(v22[0]);
    if (ResourceCount < 1)
    {
LABEL_23:
      v15 = 0;
      v16 = v22[0];
      v22[0] = 0;
      goto LABEL_24;
    }

    v12 = ResourceCount;
    v13 = 0;
    while (FigDataChannelConfigurationGetFigDataChannelResourceObjectIDAtIndex())
    {
      v6 = FigXPCServerLookupAndRetainAssociatedObject();
      if (v6)
      {
        goto LABEL_44;
      }

      if (!v26)
      {
        break;
      }

      v14 = CFGetTypeID(v26);
      if (v14 != FigDataChannelResourceGetTypeID())
      {
        break;
      }

      v6 = FigDataChannelConfigurationSetFigDataChannelResourceAtIndex(v22[0], v13, v26);
      if (v6)
      {
        goto LABEL_44;
      }

      if (v26)
      {
        CFRelease(v26);
        v26 = 0;
      }

      if (v12 == ++v13)
      {
        goto LABEL_23;
      }
    }

LABEL_42:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
  }

  v6 = FigSignalErrorAtGM();
LABEL_44:
  v15 = v6;
  v16 = 0;
LABEL_24:
  if (v28[0])
  {
    CFRelease(v28[0]);
  }

  if (v22[0])
  {
    CFRelease(v22[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v15)
  {
LABEL_46:
    if (!v16)
    {
      return v15;
    }

    goto LABEL_40;
  }

  if (!v16 || (v17 = CFGetTypeID(v16), v17 != FigDataChannelConfigurationGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v15 = FigSignalErrorAtGM();
    goto LABEL_46;
  }

  v18 = xpc_dictionary_get_BOOL(a3, "Immediate");
  CMTime = FigXPCMessageGetCMTime();
  if (!CMTime)
  {
    *v22 = v24;
    v23 = v25;
    v20 = *(*(CMBaseObjectGetVTable() + 24) + 8);
    if (!v20)
    {
      v15 = 4294954514;
      goto LABEL_40;
    }

    *v28 = *v22;
    v29 = v23;
    CMTime = v20(a2, v16, v18, v28);
  }

  v15 = CMTime;
LABEL_40:
  CFRelease(v16);
  return v15;
}

uint64_t FigVideoReceiverConnectionHelperCopyBootstrapEndpoint_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConnectionHelperCopyBootstrapEndpoint_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConnectionHelperCopyBootstrapEndpoint_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConnectionHelperCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a1 = FigSignalErrorAtGM();
  return FigSimpleMutexUnlock();
}

uint64_t __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __connectionHelper_handleNewBootstrapConnection_block_invoke_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverServer_releaseImageQueue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverServer_setImageQueueMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverServer_setImageQueueMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverRemoteDisassociateAndDisposeObjectID()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    if (*(DerivedStorage + 8))
    {
      FigXPCRemoteClientDisassociateObject();
      if (!*(v1 + 24))
      {
        v2 = FigXPCCreateBasicMessage();
        if (v2)
        {
          v3 = v2;
          goto LABEL_9;
        }

        if (*(CMBaseObjectGetDerivedStorage() + 25))
        {
          OUTLINED_FUNCTION_266();
          FigXPCRemoteClientSendAsyncMessage();
        }

        else
        {
          OUTLINED_FUNCTION_266();
          FigXPCRemoteClientSendSyncMessage();
        }
      }
    }
  }

  v3 = 0;
LABEL_9:
  FigXPCRelease();
  return v3;
}

void __FigVideoReceiverCreateRemoteAsync_block_invoke(uint64_t a1, _DWORD *a2)
{
  v5 = 0;
  if (*a2)
  {
    v3 = 0;
  }

  else
  {
    videoReceiverCreateRemoteCommon(*(a1 + 40), *(a1 + 48), a2, &v5);
    v3 = v5;
  }

  (*(*(a1 + 32) + 16))();
  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

int64_t vr_handleConnectionEstablishedResponseCommon(void *a1, uint64_t a2)
{
  BOOLean = 0;
  cf = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  int64 = xpc_dictionary_get_int64(a1, *MEMORY[0x1E6961590]);
  if (int64)
  {
    goto LABEL_14;
  }

  uint64 = xpc_dictionary_get_uint64(a1, *MEMORY[0x1E69615A0]);
  if (!xpc_dictionary_get_value(a1, kFigVideoReceiverEndpoint) || MEMORY[0x19A8D7060]() != MEMORY[0x1E69E9E90] || (v6 = xpc_dictionary_get_uint64(a1, kFigVideoReceiverServerPID)) == 0 || (v7 = v6, (UInt32 = FigXPCMessageGetUInt32()) == 0))
  {
    OUTLINED_FUNCTION_39_4();
    v10 = FigSignalErrorAtGM();
LABEL_28:
    int64 = v10;
    goto LABEL_14;
  }

  v9 = UInt32;
  v10 = FigXPCMessageCopyCFString();
  if (v10)
  {
    goto LABEL_28;
  }

  v10 = FigXPCMessageCopyCFBoolean();
  if (v10)
  {
    goto LABEL_28;
  }

  v10 = FigXPCMessageCopyCFDictionary();
  if (v10)
  {
    goto LABEL_28;
  }

  v10 = FigDataChannelGroupsArrayCreateFromDictionary(*MEMORY[0x1E695E480], v18, &v17);
  if (v10)
  {
    goto LABEL_28;
  }

  v10 = FigXPCMessageCopyCFArray();
  if (v10)
  {
    goto LABEL_28;
  }

  v10 = FigVideoReceiverDataChannelSettingsCopyDeserialized(v16, &v15);
  if (v10)
  {
    goto LABEL_28;
  }

  int64 = FigXPCMessageCopyCFDictionary();
  if (!int64)
  {
    *(a2 + 8) = FigXPCRetain();
    *(a2 + 24) = v7;
    *(a2 + 32) = uint64;
    *(a2 + 40) = v9;
    v11 = cf;
    cf = 0;
    *(a2 + 80) = 0;
    v12 = v17;
    v17 = 0;
    v13 = v15;
    *(a2 + 48) = v12;
    *(a2 + 56) = v13;
    *(a2 + 64) = v11;
    *(a2 + 72) = 0;
    v15 = 0;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return int64;
}

uint64_t videoReceiverRemote_handleImageQueueSlotEvent()
{
  v24 = 0;
  OUTLINED_FUNCTION_3_141();
  ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(v1, v2, v3);
  if (ClientAndObjectID)
  {
    v0 = ClientAndObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_23_39();
    v5 = FigXPCCreateBasicMessage();
    OUTLINED_FUNCTION_5_122(v5, v6, v7, v8, v9, v10, v11, v12, v22, 0, 0, 0);
    if (!v0)
    {
      FigXPCMessageSetUInt32();
      FigXPCMessageSetCFString();
      FigXPCMessageSetCFDictionary();
      v13 = FigXPCRemoteClientSendAsyncMessage();
      OUTLINED_FUNCTION_5_122(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24, v25, v26);
    }
  }

  FigXPCRelease();
  if (v24)
  {
    OUTLINED_FUNCTION_22_13();
  }

  return v0;
}

uint64_t videoReceiverRemote_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CVPixelBufferRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  v24 = 0;
  if (!a2 || !a4)
  {
    goto LABEL_40;
  }

  v9 = DerivedStorage;
  *a4 = 0;
  if (!CFEqual(a2, @"LastSampledCVPixelBuffer"))
  {
    if (CFEqual(a2, @"LoggingIdentifier"))
    {
      SInt32 = CFStringCreateWithCString(a3, (v9 + 160), 0x600u);
      goto LABEL_16;
    }

    if (CFEqual(a2, @"RequiresCPUToReadVideo"))
    {
      v18 = MEMORY[0x1E695E4D0];
      if (!*(v9 + 26))
      {
        v18 = MEMORY[0x1E695E4C0];
      }

      SInt32 = CFRetain(*v18);
      goto LABEL_16;
    }

    if (CFEqual(a2, @"RefreshRate"))
    {
      FigSimpleMutexLock();
      v19 = *(v9 + 80);
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (CFEqual(a2, @"DesiredPixelCount"))
      {
        FigSimpleMutexLock();
        v19 = *(v9 + 88);
        if (!v19)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      if (CFEqual(a2, @"PlaybackStartupPreventionAssertionInfo"))
      {
        Mutable = CFDictionaryCreateMutable(a3, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v21 = Mutable;
          FigSimpleMutexLock();
          FigCFDictionarySetBoolean();
          FigCFDictionarySetValue();
          FigSimpleMutexUnlock();
          ClientAndObjectID = 0;
          *a4 = v21;
          return ClientAndObjectID;
        }

        goto LABEL_40;
      }

      if (CFEqual(a2, @"ClientPreferredDataChannelGroups"))
      {
        FigSimpleMutexLock();
        v19 = *(v9 + 96);
        if (!v19)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      if (!CFEqual(a2, @"ClientDataChannelSettings"))
      {
        if (!CFEqual(a2, @"ResponsibleProcessID"))
        {
          if (!*(v9 + 25))
          {
            ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(a1, &v23, &v24);
            v22 = v23;
            if (!ClientAndObjectID)
            {
              ClientAndObjectID = FigXPCSendStdCopyPropertyMessage();
              v22 = v23;
            }

            if (v22)
            {
              FigXPCRemoteClientKillServerOnTimeout();
            }

            return ClientAndObjectID;
          }

          goto LABEL_40;
        }

        SInt32 = FigCFNumberCreateSInt32();
LABEL_16:
        ClientAndObjectID = 0;
        *a4 = SInt32;
        return ClientAndObjectID;
      }

      FigSimpleMutexLock();
      v19 = *(v9 + 104);
      if (v19)
      {
LABEL_20:
        v19 = CFRetain(v19);
      }
    }

LABEL_21:
    *a4 = v19;
    goto LABEL_10;
  }

  v10 = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v11 = v10;
    FigSimpleMutexLock();
    v12 = *(v11 + 40);
    if (v12)
    {
      v13 = CFRetain(v12);
      FigSimpleMutexUnlock();
      if (v13)
      {
        SampledPixelBufferFromConfiguration = FigVideoReceiverCommonCopyLastSampledPixelBufferFromConfiguration(v13, a3, a4);
        CFRelease(v13);
        return SampledPixelBufferFromConfiguration;
      }

      return 0;
    }

LABEL_10:
    FigSimpleMutexUnlock();
    return 0;
  }

LABEL_40:
  OUTLINED_FUNCTION_243();

  return FigSignalErrorAtGM();
}

uint64_t videoReceiverForCALayerRemote_InformRendererThatContentsChanged()
{
  OUTLINED_FUNCTION_3_141();
  ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(v0, v1, v2);
  if (ClientAndObjectID)
  {
    v5 = ClientAndObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_23_39();
    v4 = FigXPCCreateBasicMessage();
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = FigXPCRemoteClientSendAsyncMessage();
    }
  }

  FigXPCRelease();
  return v5;
}

uint64_t videoReceiverForCALayerRemote_UpdateDurationWithDeferredTransaction(uint64_t a1)
{
  v6[1] = 0;
  v5 = 0;
  v6[0] = 0;
  if (!a1)
  {
    ClientAndObjectID = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(a1, &v5, v6);
  if (ClientAndObjectID)
  {
LABEL_9:
    v3 = ClientAndObjectID;
    goto LABEL_6;
  }

  v2 = FigXPCCreateBasicMessage();
  if (v2 || (v2 = FigXPCMessageSetCMTime(), v2))
  {
    v3 = v2;
  }

  else
  {
    v3 = FigXPCRemoteClientSendAsyncMessage();
  }

LABEL_6:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t videoReceiverForBufferDeliveryRemote_CreateImageQueueReceiver(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 && a4)
  {
    OUTLINED_FUNCTION_3_141();
    ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(v7, v8, v9);
    if (!ClientAndObjectID)
    {
      OUTLINED_FUNCTION_23_39();
      ClientAndObjectID = FigXPCCreateBasicMessage();
      if (!ClientAndObjectID)
      {
        xpc_dictionary_set_uint64(0, "ImageQueueID", a2);
        ClientAndObjectID = FigXPCMessageSetCFDictionary();
        if (!ClientAndObjectID)
        {
          xpc_dictionary_set_value(0, "ImageQueueMessage", a4);
          if (*(OUTLINED_FUNCTION_4_137() + 25))
          {
            OUTLINED_FUNCTION_266();
            ClientAndObjectID = FigXPCRemoteClientSendAsyncMessage();
          }

          else
          {
            OUTLINED_FUNCTION_266();
            ClientAndObjectID = FigXPCRemoteClientSendSyncMessage();
          }
        }
      }
    }
  }

  else
  {
    ClientAndObjectID = FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_5_122(ClientAndObjectID, v11, v12, v13, v14, v15, v16, v17, v19, 0, 0, 0);
  FigXPCRelease();
  if (v20)
  {
    OUTLINED_FUNCTION_22_13();
  }

  return v4;
}

uint64_t videoReceiverForBufferDeliveryRemote_ReleaseImageQueueReceiver(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_3_141();
    ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(v3, v4, v5);
    if (!ClientAndObjectID)
    {
      OUTLINED_FUNCTION_23_39();
      ClientAndObjectID = FigXPCCreateBasicMessage();
      if (!ClientAndObjectID)
      {
        xpc_dictionary_set_uint64(0, "ImageQueueID", a2);
        if (*(OUTLINED_FUNCTION_4_137() + 25))
        {
          OUTLINED_FUNCTION_266();
          ClientAndObjectID = FigXPCRemoteClientSendAsyncMessage();
        }

        else
        {
          OUTLINED_FUNCTION_266();
          ClientAndObjectID = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }
  }

  else
  {
    ClientAndObjectID = FigSignalErrorAtGM();
  }

  v7 = ClientAndObjectID;
  FigXPCRelease();
  return v7;
}

uint64_t videoReceiverForBufferDeliveryRemote_SetImageQueueMessage(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 && a3)
  {
    CAXPCImageQueueCommandForMessage();
    OUTLINED_FUNCTION_3_141();
    ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(a1, v7, v8);
    if (!ClientAndObjectID)
    {
      OUTLINED_FUNCTION_23_39();
      ClientAndObjectID = FigXPCCreateBasicMessage();
      if (!ClientAndObjectID)
      {
        xpc_dictionary_set_uint64(0, "ImageQueueID", a2);
        xpc_dictionary_set_value(0, "ImageQueueMessage", a3);
        if (*(OUTLINED_FUNCTION_4_137() + 25))
        {
          OUTLINED_FUNCTION_266();
          ClientAndObjectID = FigXPCRemoteClientSendAsyncMessage();
        }

        else
        {
          OUTLINED_FUNCTION_266();
          ClientAndObjectID = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }
  }

  else
  {
    ClientAndObjectID = FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_5_122(ClientAndObjectID, v10, v11, v12, v13, v14, v15, v16, v18, 0, 0, 0);
  FigXPCRelease();
  if (v19)
  {
    OUTLINED_FUNCTION_22_13();
  }

  return v3;
}

uint64_t videoReceiverForBufferDeliveryRemote_CreateDataQueue(const void *a1, uint64_t a2, uint64_t a3, CMTime *a4, CFTypeRef *a5)
{
  v21 = 0;
  v19 = 0;
  xdict = 0;
  v18 = 0;
  v17 = 0;
  if (a5)
  {
    ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(a1, &v19, &v18);
    if (!ClientAndObjectID)
    {
      ClientAndObjectID = FigXPCRemoteClientGetServerPID();
      if (!ClientAndObjectID)
      {
        v10 = CFGetAllocator(a1);
        ClientAndObjectID = FigDataQueueRemoteSetupRemoteXPCClientIfNecessary(v10, v17, videoReceiverRemote_startDataQueueServerAndCreateEndpoint, a1);
        if (!ClientAndObjectID)
        {
          ClientAndObjectID = FigXPCCreateBasicMessage();
          if (!ClientAndObjectID)
          {
            ClientAndObjectID = FigXPCMessageSetCFDictionary();
            if (!ClientAndObjectID)
            {
              OUTLINED_FUNCTION_21_23();
              ClientAndObjectID = FigXPCMessageSetCMTime();
              if (!ClientAndObjectID)
              {
                v16 = *a4;
                ClientAndObjectID = FigXPCMessageSetCMTime();
                if (!ClientAndObjectID)
                {
                  ClientAndObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
                  if (!ClientAndObjectID)
                  {
                    uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
                    CFGetAllocator(a1);
                    OUTLINED_FUNCTION_21_23();
                    v15 = *a4;
                    ClientAndObjectID = FigDataQueueRemoteCreateWithObjectID(v17, uint64, v12, a2, &v16, &v15, a5);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    ClientAndObjectID = FigSignalErrorAtGM();
  }

  v13 = ClientAndObjectID;
  FigXPCRelease();
  FigXPCRelease();
  if (v19)
  {
    FigXPCRemoteClientKillServerOnTimeout();
  }

  return v13;
}

uint64_t videoReceiverForBufferDeliveryRemote_CreateDataChannelResource(uint64_t a1, uint64_t a2, const void *a3, CFTypeRef *a4)
{
  xdict = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    ClientAndObjectID = FigSignalErrorAtGM();
LABEL_20:
    v11 = ClientAndObjectID;
    a3 = 0;
    goto LABEL_12;
  }

  ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(a1, &v15, &v14);
  if (ClientAndObjectID)
  {
    goto LABEL_20;
  }

  ClientAndObjectID = FigXPCCreateBasicMessage();
  if (ClientAndObjectID)
  {
    goto LABEL_20;
  }

  ClientAndObjectID = FigXPCMessageSetCFDictionary();
  if (ClientAndObjectID)
  {
    goto LABEL_20;
  }

  if (a3)
  {
    a3 = MEMORY[0x19A8D3280](a3, *MEMORY[0x1E695E480]);
    if (a3)
    {
      v9 = FigXPCMessageSetCFDictionary();
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = FigSignalErrorAtGM();
    }

LABEL_22:
    v11 = v9;
    goto LABEL_12;
  }

LABEL_8:
  v9 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v9)
  {
    goto LABEL_22;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v9 = FigDataChannelResourceRemoteCreate(0, a2, uint64, a1, &cf);
  if (v9)
  {
    goto LABEL_22;
  }

  v11 = FigXPCRemoteClientAssociateObject();
  if (!v11)
  {
    FigCFArrayAppendInt64();
    *a4 = cf;
    cf = 0;
  }

LABEL_12:
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  if (a3)
  {
    CFRelease(a3);
  }

  if (v15)
  {
    FigXPCRemoteClientKillServerOnTimeout();
  }

  return v11;
}

uint64_t videoReceiverForBufferDeliveryRemote_ProvideDataChannelResourcePayload(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  xdict = 0;
  CMBaseObjectGetDerivedStorage();
  v8 = 0;
  ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(a1, &v9, &v8);
  if (ClientAndObjectID)
  {
    v6 = ClientAndObjectID;
  }

  else
  {
    v5 = FigXPCCreateBasicMessage();
    if (v5 || (xpc_dictionary_set_uint64(xdict, "DataChannelResourceID", a2), v5 = FigXPCMessageSetBlockBufferUsingMemoryOrigin(), v5))
    {
      v6 = v5;
    }

    else
    {
      v6 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  if (v9)
  {
    OUTLINED_FUNCTION_6_18();
  }

  return v6;
}

uint64_t videoReceiverForBufferDeliveryRemote_SetDataChannelResourcePayloadState(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  xdict = 0;
  v6 = 0;
  ClientAndObjectID = videoReceiverRemote_GetClientAndObjectID(a1, &v7, &v6);
  if (ClientAndObjectID)
  {
    v4 = ClientAndObjectID;
  }

  else
  {
    v4 = FigXPCCreateBasicMessage();
    if (!v4)
    {
      xpc_dictionary_set_uint64(xdict, "DataChannelResourceID", a2);
      FigXPCMessageSetInt32();
      v4 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  if (v7)
  {
    OUTLINED_FUNCTION_6_18();
  }

  return v4;
}

uint64_t videoReceiverForBufferDeliveryRemote_GetDataChannelResourceProcessingState(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_8_79(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14, v16, xdict);
  if (v10 || (v10 = FigXPCCreateBasicMessage(), v10))
  {
    v11 = v10;
  }

  else
  {
    xpc_dictionary_set_uint64(xdicta, "DataChannelResourceID", a2);
    v11 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (!v11)
    {
      *a3 = xpc_dictionary_get_int64(v17, "DataChannelResourceProcessingState");
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v15)
  {
    OUTLINED_FUNCTION_6_18();
  }

  return v11;
}

uint64_t videoReceiverRemote_startDataQueueServerAndCreateEndpoint(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_8_79(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, xdict, v17);
  if (!v9)
  {
    v9 = FigXPCCreateBasicMessage();
    if (!v9)
    {
      v9 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v9)
      {
        if (xpc_dictionary_get_value(xdicta, "Endpoint") && MEMORY[0x19A8D7060]() == MEMORY[0x1E69E9E90])
        {
          v10 = 0;
          *a2 = FigXPCRetain();
          goto LABEL_7;
        }

        v9 = FigSignalErrorAtGM();
      }
    }
  }

  v10 = v9;
LABEL_7:
  FigXPCRelease();
  FigXPCRelease();
  if (v14)
  {
    OUTLINED_FUNCTION_22_13();
  }

  return v10;
}

uint64_t FigVideoReceiverCreateRemote_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCreateRemote_cold_3(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t videoReceiverCreateRemoteCommon_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverCreateRemoteCommon_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverCreateRemoteCommon_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverCreateRemoteCommon_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverCreateRemoteCommon_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverCreateRemoteCommon_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverCreateRemoteCommon_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverCreateRemoteCommon_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCreateRemoteAsync_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCreateRemoteAsync_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCreateRemoteAsync_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCreateRemoteAsync_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteVideoReceiver_createXPCRemoteClientOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteConnectionEstablisher_establishConnectionAsync_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteConnectionEstablisher_establishConnectionAsync_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteVideoReceiver_NotificationFilter_cold_3(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 96);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 96) = *a2;
  *a2 = 0;
  return FigSimpleMutexUnlock();
}

uint64_t remoteVideoReceiver_NotificationFilter_cold_5(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 104);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 104) = *a2;
  *a2 = 0;
  return FigSimpleMutexUnlock();
}

uint64_t videoReceiverRemote_copyAllActiveAndPendingConfigurationImageQueues_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverRemote_GetClientAndObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverRemote_GetClientAndObjectID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverRemote_GetClientAndObjectID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverRemote_SetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverRemote_SetProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverRemote_SetProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverRemote_SetProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverRemote_AddDataChannelConfiguration_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverRemote_AddDataChannelConfiguration_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverRemote_AddDataChannelConfiguration_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverRemote_AddDataChannelConfiguration_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverRemote_AddDataChannelConfiguration_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverRemote_AddDataChannelConfiguration_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverRemote_AddDataChannelConfiguration_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverForCALayerRemote_GetInstanceType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverForCALayerRemote_GetInstanceType_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverForBufferDeliveryRemote_GetInstanceType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverForBufferDeliveryRemote_GetInstanceType_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLDocumentWriterForIMSC_StartElement(void *a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CurrentElementType = FigTTMLDocumentWriterStateGetCurrentElementType(DerivedStorage[1]);
  started = FigTTMLDocumentWriterStateStartTagClosed(DerivedStorage[1]);
  if (CurrentElementType)
  {
    if (CurrentElementType == 7 && started == 0)
    {
      FigTTMLDocumentWriterGetCMBaseObject(a1);
      v8 = CMBaseObjectGetDerivedStorage();
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter profile", @"http://www.w3.org/ns/ttml/profile/imsc1/text");
      CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#parameter timeBase", @"media");
      *(v8 + 24) = 0;
      CFDictionaryApplyFunction(Mutable, writeAttributesIfNotWrittenYet, a1);
      v10 = *(v8 + 24);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v10)
      {
        return v10;
      }
    }

    FigTTMLDocumentWriterStateCloseStartTag(DerivedStorage[1]);
  }

  v11 = FigTTMLDocumentWriterStartElement(*DerivedStorage, a2);
  if (v11)
  {
    return v11;
  }

  v12 = DerivedStorage[1];

  return FigTTMLDocumentWriterStateStartElement(v12, a2);
}

uint64_t figTTMLDocumentWriterForIMSC_EndElement(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigTTMLDocumentWriterEndElement(*DerivedStorage);
  if (!result)
  {
    v3 = DerivedStorage[1];

    return FigTTMLDocumentWriterStateEndElement(v3);
  }

  return result;
}

uint64_t figTTMLDocumentWriterForIMSC_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigTTMLDocumentWriterStateCloseStartTag(DerivedStorage[1]);
  if (!result)
  {
    v5 = *DerivedStorage;

    return FigTTMLDocumentWriterAddCaptionData(v5, a2);
  }

  return result;
}

uint64_t figTTMLDocumentWriterForIMSC_SetAttribute(uint64_t a1, const __CFString *a2, const void *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MEMORY[0x19A8D3660](&getAttributeValidatorDict_sOnce_0, initAttributeValidatorDict_0);
  v7 = sAttributeValidatorDict_0;
  if (CFDictionaryContainsKey(sAttributeValidatorDict_0, a2))
  {
    Value = CFDictionaryGetValue(v7, a2);
    if (Value)
    {
      result = Value(a1, a3);
      if (!result)
      {
        return result;
      }
    }
  }

  else
  {
    result = CFStringHasPrefix(a2, @"xmlns:");
    if (!result)
    {
      return result;
    }
  }

  result = FigTTMLDocumentWriterSetAttribute(*DerivedStorage, a2, a3);
  if (!result)
  {
    v10 = DerivedStorage[1];

    return FigTTMLDocumentWriterStateSetAttribute(v10, a2, a3);
  }

  return result;
}

uint64_t writeAttributesIfNotWrittenYet(const void *a1, uint64_t a2, uint64_t a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a3);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigTTMLDocumentWriterStateGetAttributes(*(DerivedStorage + 8));
  if (!*(DerivedStorage + 24))
  {
    result = CFDictionaryContainsKey(result, a1);
    if (!result)
    {
      result = FigTTMLDocumentWriterSetAttribute(a3, a1, a2);
      if (result)
      {
        *(DerivedStorage + 24) = result;
      }
    }
  }

  return result;
}

uint64_t FigTTMLDocumentWriterCreateForIMSC_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterCreateForIMSC_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t EC_GetEncryptionScheme(uint64_t a1, _DWORD *a2)
{
  result = 4294951916;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 16);
    }
  }

  return result;
}

void *EC_HasWidevineInfo(uint64_t a1)
{
  result = ec_GetEncryptionRange(a1, *(a1 + 40));
  if (result)
  {
    return OUTLINED_FUNCTION_5_123(result[9]);
  }

  return result;
}

void *EC_HasPlayReadyInfo(uint64_t a1)
{
  result = ec_GetEncryptionRange(a1, *(a1 + 40));
  if (result)
  {
    return OUTLINED_FUNCTION_5_123(result[8]);
  }

  return result;
}

void *EC_HasLegacyConfigInfo(void *result)
{
  if (result)
  {
    result = ec_GetEncryptionRange(result, result[5]);
    if (result)
    {
      return OUTLINED_FUNCTION_5_123(result[6]);
    }
  }

  return result;
}

void *EC_GetLegacyConfigKeyIdentifier(void *result)
{
  if (result)
  {
    result = ec_GetEncryptionRange(result, result[5]);
    if (result)
    {
      v1 = result[6];
      if (v1)
      {
        return *v1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const void *ec_GetEncryptionRange(uint64_t a1, CFIndex a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  if (!v3 || CFArrayGetCount(v3) <= a2)
  {
    return 0;
  }

  v5 = *(a1 + 32);

  return CFArrayGetValueAtIndex(v5, a2);
}

void *EC_GetPlayReadyKeyIdentifierForRange(void *result, CFIndex a2)
{
  if (result)
  {
    result = ec_GetEncryptionRange(result, a2);
    if (result)
    {
      v2 = result[8];
      if (v2)
      {
        return *v2;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void *EC_GetPlayReadyKeyIdentifier(uint64_t a1)
{
  result = ec_GetEncryptionRange(a1, *(a1 + 40));
  if (result)
  {
    v2 = result[8];
    if (v2)
    {
      return *v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *EC_ShouldWritePlayReadyPSSHAtom(void *result)
{
  if (result)
  {
    result = ec_GetEncryptionRange(result, result[5]);
    if (result)
    {
      v1 = result[8];
      if (v1)
      {
        return *(v1 + 16);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void *EC_GetWidevineKeyIdentifierForRange(void *result, CFIndex a2)
{
  if (result)
  {
    result = ec_GetEncryptionRange(result, a2);
    if (result)
    {
      v2 = result[9];
      if (v2)
      {
        return *v2;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void *EC_GetWidevineKeyIdentifier(uint64_t a1)
{
  result = ec_GetEncryptionRange(a1, *(a1 + 40));
  if (result)
  {
    v2 = result[9];
    if (v2)
    {
      return *v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *EC_ShouldWriteWidevinePSSHAtom(void *result)
{
  if (result)
  {
    result = ec_GetEncryptionRange(result, result[5]);
    if (result)
    {
      v1 = result[9];
      if (v1)
      {
        return *(v1 + 16);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t EncryptionConfigCreateFromDictionary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  cf = 0;
  v3 = 4294951916;
  if (a1 && a3)
  {
    v4 = FigJSONObjectCreateWithData();
    if (!v4)
    {
      v5 = CFGetTypeID(cf);
      if (v5 == CFDictionaryGetTypeID())
      {
        LODWORD(v9) = 0;
        FigCFDictionaryGetInt32IfPresent();
        OUTLINED_FUNCTION_303();
      }

      else
      {
        OUTLINED_FUNCTION_303();
        OUTLINED_FUNCTION_3_142();
      }

      v4 = FigSignalErrorAtGM();
    }

    v3 = v4;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v3;
}

uint64_t ec_AddEncryptionRangeFromDictionary(uint64_t a1, const void *a2)
{
  cf = 0;
  value = 0;
  v2 = 4294951916;
  if (!a1 || !a2)
  {
    goto LABEL_54;
  }

  ProtectionSystemInfo = ec_EncryptionRangeCreate(&value);
  if (ProtectionSystemInfo)
  {
    goto LABEL_63;
  }

  FigCFDictionaryGetBooleanIfPresent();
  ProtectionSystemInfo = ec_CreateHexDataFromDictionaryEntry(a2, @"initialization-vector", &cf);
  if (ProtectionSystemInfo)
  {
    goto LABEL_63;
  }

  if (cf)
  {
    v6 = CFRetain(cf);
    *(value + 3) = v6;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  FigCFDictionaryGetBooleanIfPresent();
  ProtectionSystemInfo = ec_CreateHexDataFromDictionaryEntry(a2, @"key", &cf);
  if (ProtectionSystemInfo)
  {
    goto LABEL_63;
  }

  if (cf)
  {
    v7 = CFRetain(cf);
    *(value + 5) = v7;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  v8 = value;
  v38 = 0;
  ProtectionSystemInfo = ec_GetProtectionSystemInfo(a2, @"fairplay", &v38);
  if (ProtectionSystemInfo)
  {
    goto LABEL_63;
  }

  if (v38)
  {
    v9 = OUTLINED_FUNCTION_2_169();
    if (v9)
    {
      v10 = v9;
      v11 = FigCFDictionaryGetValue();
      if (v11)
      {
        v11 = CFRetain(v11);
      }

      *v10 = v11;
      v8[7] = v10;
    }

    else
    {
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_4_138();
      ProtectionSystemInfo = FigSignalErrorAtGM();
      if (ProtectionSystemInfo)
      {
        goto LABEL_63;
      }
    }
  }

  v12 = value;
  v37 = 0;
  v38 = 0;
  ProtectionSystemInfo = ec_GetProtectionSystemInfo(a2, @"playready", &v38);
  if (ProtectionSystemInfo)
  {
LABEL_63:
    v2 = ProtectionSystemInfo;
    goto LABEL_54;
  }

  if (v38)
  {
    v13 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040285832E9uLL);
    if (v13)
    {
      v14 = v13;
      HexDataFromDictionaryEntry = ec_CreateHexDataFromDictionaryEntry(v38, @"key-identifier", v13);
      if (!HexDataFromDictionaryEntry)
      {
        if (*v14 && CFDataGetLength(*v14) == 16)
        {
          v16 = FigCFDictionaryGetValue();
          if (v16)
          {
            v17 = v16;
            if (CFStringGetLength(v16) < 1 || (Length = CFStringGetLength(v17), CFStringGetCharacterAtIndex(v17, Length - 1) == 59))
            {
              MutableCopy = CFRetain(v17);
            }

            else
            {
              MutableCopy = CFStringCreateMutableCopy(0, 0, v17);
              CFStringAppend(MutableCopy, @";");
            }

            v14[1] = MutableCopy;
          }

          if (!FigCFDictionaryGetValueIfPresent())
          {
            v21 = 1;
            goto LABEL_33;
          }

          v20 = CFGetTypeID(v37);
          if (v20 == CFBooleanGetTypeID())
          {
            v21 = CFBooleanGetValue(v37) == 0;
LABEL_33:
            *(v14 + 16) = v21;
            v12[8] = v14;
            goto LABEL_34;
          }

          OUTLINED_FUNCTION_303();
          OUTLINED_FUNCTION_3_142();
        }

        else
        {
          OUTLINED_FUNCTION_303();
          OUTLINED_FUNCTION_9_70();
        }

        HexDataFromDictionaryEntry = FigSignalErrorAtGM();
      }

      v2 = HexDataFromDictionaryEntry;
      free(v14);
    }

    else
    {
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_4_138();
      v2 = FigSignalErrorAtGM();
    }

    if (v2)
    {
      goto LABEL_54;
    }
  }

LABEL_34:
  v22 = value;
  v37 = 0;
  v38 = 0;
  ProtectionSystemInfo = ec_GetProtectionSystemInfo(a2, @"widevine", &v38);
  if (ProtectionSystemInfo)
  {
    goto LABEL_63;
  }

  if (!v38)
  {
    goto LABEL_50;
  }

  v23 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040285832E9uLL);
  if (!v23)
  {
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_4_138();
    v2 = FigSignalErrorAtGM();
    goto LABEL_82;
  }

  v24 = v23;
  v25 = ec_CreateHexDataFromDictionaryEntry(v38, @"key-identifier", v23);
  if (v25)
  {
LABEL_81:
    v2 = v25;
    free(v24);
LABEL_82:
    if (v2)
    {
      goto LABEL_54;
    }

    goto LABEL_50;
  }

  if (!*v24 || CFDataGetLength(*v24) != 16)
  {
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_9_70();
LABEL_80:
    v25 = FigSignalErrorAtGM();
    goto LABEL_81;
  }

  v26 = FigCFDictionaryGetValue();
  if (v26)
  {
    v27 = v26;
    if (CFStringGetLength(v26) < 1 || (v28 = CFStringGetLength(v27), CFStringGetCharacterAtIndex(v27, v28 - 1) == 59))
    {
      v29 = CFRetain(v27);
    }

    else
    {
      v29 = CFStringCreateMutableCopy(0, 0, v27);
      CFStringAppend(v29, @";");
    }

    v24[1] = v29;
  }

  if (!FigCFDictionaryGetValueIfPresent())
  {
    v31 = 1;
    goto LABEL_49;
  }

  v30 = CFGetTypeID(v37);
  if (v30 != CFBooleanGetTypeID())
  {
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_3_142();
    goto LABEL_80;
  }

  v31 = CFBooleanGetValue(v37) == 0;
LABEL_49:
  *(v24 + 16) = v31;
  v22[9] = v24;
LABEL_50:
  FigCFDictionaryGetInt64IfPresent();
  CFArrayAppendValue(*(a1 + 32), value);
  v32 = OUTLINED_FUNCTION_7_94();
  if (v32)
  {
    if (v32[8])
    {
      v34 = OUTLINED_FUNCTION_7_94();
      if (v34)
      {
        if (v34[9])
        {
          OUTLINED_FUNCTION_7_94();
          OUTLINED_FUNCTION_7_94();
          if (!FigCFEqual())
          {
            OUTLINED_FUNCTION_303();
            OUTLINED_FUNCTION_9_70();
            ProtectionSystemInfo = FigSignalErrorAtGM();
            goto LABEL_63;
          }
        }
      }
    }
  }

  v2 = 0;
  if (CFArrayGetCount(*(a1 + 32)) == 1)
  {
    *(a1 + 40) = 0;
  }

LABEL_54:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

uint64_t ec_EncryptionRangeCreate(uint64_t *a1)
{
  if (!a1)
  {
    return 4294951916;
  }

  if (_MergedGlobals_127 != -1)
  {
    dispatch_once_f(&_MergedGlobals_127, 0, RegisterEncryptionRangeType);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v3 = Instance;
    result = 0;
    *(v3 + 16) = 1;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0u;
    *(v3 + 56) = 0u;
    *(v3 + 72) = 0u;
    *a1 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_303();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t ec_CreateHexDataFromDictionaryEntry(const void *a1, uint64_t a2, void *a3)
{
  result = 4294951916;
  if (a1 && a3)
  {
    if (ec_CFDictionaryGetStringIfPresent(a1))
    {
      v6 = 0;
      return 4294951916;
    }

    else
    {
      result = 0;
      *a3 = 0;
    }
  }

  return result;
}

uint64_t ec_GetProtectionSystemInfo(uint64_t a1, uint64_t a2, void *a3)
{
  result = 4294951916;
  if (a1 && a2 && a3)
  {
    if (FigCFDictionaryGetValueIfPresent() && (v6 = CFGetTypeID(0), v6 == CFDictionaryGetTypeID()) && (!FigCFDictionaryGetValueIfPresent() || (v7 = CFGetTypeID(0), v7 == CFDictionaryGetTypeID())))
    {
      result = 0;
      *a3 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_3_142();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t EncryptionConfigCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigManifoldFactoryCreateManifold(int a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8, CFArrayRef theArray, uint64_t a10, uint64_t a11, void *a12)
{
  if (!a10)
  {
    goto LABEL_26;
  }

  if (a10)
  {
    v15 = OUTLINED_FUNCTION_0_192();
    v17 = v16;
    Manifold = manifoldFactory_createManifold(v15, v18, v19, v20, v21, v22, a7, 1, v51, v52);
    a12 = v17;
    v14 = 4294951252;
    if (Manifold != -16044)
    {
LABEL_20:
      v14 = Manifold;
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
  }

  if ((a10 & 2) != 0)
  {
    v53 = a12;
    if (manifoldFactory_isManifoldAllowable(@"com.apple.coremedia.formatreader.webvtt", theArray))
    {
      v26 = OUTLINED_FUNCTION_0_192();
      v31 = manifoldFactory_createManifold(v26, v27, v28, v29, v30, a6, a7, 2, v51, v52);
      if (v31 != -16044)
      {
        goto LABEL_27;
      }

      v24 = 1;
      v14 = 4294951252;
    }

    else
    {
      v24 = 0;
    }

    a12 = v53;
    if ((a10 & 4) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v24 = 0;
    if ((a10 & 4) == 0)
    {
      goto LABEL_7;
    }
  }

  v53 = a12;
  isManifoldAllowable = manifoldFactory_isManifoldAllowable(@"com.apple.coremedia.formatreader.mpeg", theArray);
  a12 = v53;
  if (isManifoldAllowable)
  {
    v46 = OUTLINED_FUNCTION_0_192();
    v31 = manifoldFactory_createManifold(v46, v47, v48, v49, v50, a6, a7, 4, v51, v52);
    if (v31 != -16044)
    {
      goto LABEL_27;
    }

    v24 = 1;
    v14 = 4294951252;
    a12 = v53;
  }

LABEL_7:
  if ((a10 & 8) != 0)
  {
    v53 = a12;
    v32 = manifoldFactory_isManifoldAllowable(@"com.apple.coremedia.formatreader.quicktime-iso", theArray);
    a12 = v53;
    if (v32)
    {
      v33 = OUTLINED_FUNCTION_0_192();
      v31 = manifoldFactory_createManifold(v33, v34, v35, v36, v37, a6, a7, 8, v51, v52);
      if (v31 == -16044)
      {
        v24 = 1;
        v14 = 4294951252;
        a12 = v53;
        goto LABEL_8;
      }

LABEL_27:
      v14 = v31;
      a12 = v53;
      goto LABEL_10;
    }
  }

LABEL_8:
  if ((a10 & 0x10) != 0)
  {
    v38 = a12;
    v39 = manifoldFactory_isManifoldAllowable(@"com.apple.coremedia.formatreader.audiofilestream", theArray);
    a12 = v38;
    if (v39)
    {
      v40 = OUTLINED_FUNCTION_0_192();
      Manifold = manifoldFactory_createManifold(v40, v41, v42, v43, v44, a6, a7, 16, v51, v52);
LABEL_19:
      a12 = v38;
      goto LABEL_20;
    }
  }

  if (!v24)
  {
LABEL_26:
    v38 = a12;
    Manifold = FigSignalErrorAtGM();
    goto LABEL_19;
  }

LABEL_10:
  *a12 = 0;
  return v14;
}

uint64_t manifoldFactory_isManifoldAllowable(const void *a1, CFArrayRef theArray)
{
  if (!theArray || CFArrayGetCount(theArray) < 1)
  {
    return 1;
  }

  v4 = FigCopyUTITypesForFormatReaderIdentifier(a1);
  if (CFArrayGetCount(theArray) < 1)
  {
LABEL_7:
    v6 = 0;
    if (!v4)
    {
      return v6;
    }

    goto LABEL_11;
  }

  v5 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(theArray, v5);
    if (FigCFArrayContainsValue())
    {
      break;
    }

    if (++v5 >= CFArrayGetCount(theArray))
    {
      goto LABEL_7;
    }
  }

  v6 = 1;
  if (v4)
  {
LABEL_11:
    CFRelease(v4);
  }

  return v6;
}

uint64_t activityOnDispatchQueue_sharedCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigActivitySchedulerCreateForExistingDispatchQueue_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingNetworkErrorGetActionForIndexFileNetworkError(__CFError *a1, char a2, uint64_t *a3, void *a4)
{
  Code = CFErrorGetCode(a1);
  v9 = CFErrorCopyUserInfo(a1);
  v15 = 0;
  v16 = 0;
  cf = 0;
  if (Code == -16839)
  {
    v10 = 3;
    v15 = 2;
    v16 = 3;
    goto LABEL_11;
  }

  if (Code == -17633)
  {
    v10 = 3;
    v15 = 3;
    v16 = 3;
    goto LABEL_11;
  }

  RecommendedAction = FigStreamingNetworkErrorGetRecommendedAction(a1, &v16, &v15);
  if (RecommendedAction)
  {
LABEL_25:
    v12 = RecommendedAction;
    goto LABEL_20;
  }

  v10 = v16;
  if ((a2 & 2) != 0 && v16 == 1)
  {
    RecommendedAction = FigCFHTTPCreateCFErrorFromHTTPStatusCode(404, &cf);
    if (!RecommendedAction)
    {
      RecommendedAction = FigStreamingNetworkErrorGetRecommendedAction(cf, &v16, 0);
      if (!RecommendedAction)
      {
        v10 = v16;
        goto LABEL_11;
      }
    }

    goto LABEL_25;
  }

LABEL_11:
  if ((a2 & 4) != 0 && v10 == 3 || (a2 & 1) == 0 && v10 == 3)
  {
    v10 = 2;
    v16 = 2;
  }

  if (a3)
  {
    *a3 = v10;
  }

  v12 = 0;
  if (a4)
  {
    *a4 = v15;
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v12;
}

uint64_t FigStreamingNetworkErrorGetActionForSessionDataNetworkError(__CFError *a1, char a2, uint64_t *a3, void *a4)
{
  v12 = 0;
  v13 = 0;
  cf = 0;
  RecommendedAction = FigStreamingNetworkErrorGetRecommendedAction(a1, &v13, &v12);
  if (RecommendedAction)
  {
    goto LABEL_19;
  }

  v8 = v13;
  if ((a2 & 2) == 0 || v13 != 1)
  {
    goto LABEL_7;
  }

  RecommendedAction = FigCFHTTPCreateCFErrorFromHTTPStatusCode(404, &cf);
  if (RecommendedAction || (RecommendedAction = FigStreamingNetworkErrorGetRecommendedAction(cf, &v13, 0), RecommendedAction))
  {
LABEL_19:
    v9 = RecommendedAction;
    goto LABEL_16;
  }

  v8 = v13;
LABEL_7:
  if ((v8 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    if ((a2 & 1) == 0 && v8 == 3)
    {
      v8 = 2;
      v13 = 2;
    }
  }

  else
  {
    v8 = 0;
    v13 = 0;
  }

  if (a3)
  {
    *a3 = v8;
  }

  v9 = 0;
  if (a4)
  {
    *a4 = v12;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t FigStreamingNetworkErrorCreateErrorFromHTTPRequestIfAvailable_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingNetworkErrorGetRecommendedAction_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCGLObjectCacheGetObjectForSurfaceAndPlane_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ovcgloc_getObjectForSurfaceOrAttributes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ovcgloc_getObjectForSurfaceOrAttributes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCGLObjectCacheGetObjectForAttributesAndPlane_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCGLObjectCacheGetObjectForAttributesAndPlane_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCGLObjectCacheGetObjectForAttributesAndPlane_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCGLObjectCacheCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCGLObjectCacheCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCGLObjectCacheCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCGLObjectCacheCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCGLObjectCacheCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCGLObjectCacheFlushObjectsForSurface_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCGLObjectCacheFlushObjectsForSurface_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionDataToMarkupBasedAttributedString(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CMTime *a4, uint64_t Copy, uint64_t a6, __CFAttributedString **a7, const __CFDictionary *a8, const __CFDictionary *a9)
{
  v437 = 0;
  v16 = *(MEMORY[0x1E6960CA8] + 16);
  *&v436.start.value = *MEMORY[0x1E6960CA8];
  *&v436.start.epoch = v16;
  *&v436.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
  v435 = **&MEMORY[0x1E6960CC0];
  v434 = v435;
  *&start.start.value = *a3;
  start.start.epoch = *(a3 + 16);
  duration = *a4;
  CMTimeRangeMake(&v436, &start.start, &duration);
  *&start.start.value = *&v436.start.value;
  start.start.epoch = v436.start.epoch;
  duration = *Copy;
  CMTimeSubtract(&v435, &start.start, &duration);
  start = v436;
  CMTimeRangeGetEnd(&duration, &start);
  *&start.start.value = *a6;
  start.start.epoch = *(a6 + 16);
  CMTimeAdd(&v434, &duration, &start.start);
  duration = v435;
  end = v434;
  CMTimeRangeFromTimeToTime(&start, &duration, &end);
  alloc = a1;
  Mutable = CFAttributedStringCreateMutable(a1, 0);
  if (!Mutable)
  {
    goto LABEL_583;
  }

  v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v18)
  {
    v19 = v18(a2);
  }

  else
  {
    v19 = &stru_1F0B1AFB8;
  }

  v442.location = 0;
  v442.length = 0;
  CFAttributedStringReplaceString(Mutable, v442, v19);
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v21)
  {
    v46 = 4294954514;
    goto LABEL_571;
  }

  v400 = a8;
  v410 = a7;
  v22 = v21(CMBaseObject, *MEMORY[0x1E6961240], alloc, &v437);
  if (v22)
  {
    goto LABEL_584;
  }

  duration.value = 0;
  OUTLINED_FUNCTION_2_170();
  Value = CFDictionaryGetValue(sCAPRPCaptionPropertyInfoDictionary, @"caption");
  aStr = Mutable;
  Length = CFAttributedStringGetLength(Mutable);
  OUTLINED_FUNCTION_7_95();
  v25 = 0;
  v26 = 0;
  v27 = *MEMORY[0x1E6961208];
  cf = *MEMORY[0x1E69607C0];
  v28 = *MEMORY[0x1E6961278];
  v428 = *MEMORY[0x1E69607B0];
  cf2 = *MEMORY[0x1E6961570];
  v417 = *MEMORY[0x1E69607A0];
  v414 = *MEMORY[0x1E6961558];
  v407 = *MEMORY[0x1E6960780];
  v401 = *MEMORY[0x1E6961550];
  v392 = *MEMORY[0x1E6960790];
  v386 = *MEMORY[0x1E6961560];
  v381 = *MEMORY[0x1E6960788];
  v369 = *MEMORY[0x1E6961568];
  v363 = *MEMORY[0x1E6960798];
  v421 = *MEMORY[0x1E6961228];
  range = *MEMORY[0x1E69608B8];
  v411 = *MEMORY[0x1E6961230];
  v404 = *MEMORY[0x1E69608C0];
  v395 = *MEMORY[0x1E6961220];
  v389 = *MEMORY[0x1E6960828];
  v383 = *MEMORY[0x1E6961238];
  v378 = *MEMORY[0x1E69608C8];
  v375 = *MEMORY[0x1E69611F8];
  v372 = *MEMORY[0x1E6960AB8];
  v360 = *MEMORY[0x1E69611E8];
  v357 = *MEMORY[0x1E6960AA8];
  v354 = *MEMORY[0x1E69611F0];
  v351 = *MEMORY[0x1E6960AB0];
  v348 = *MEMORY[0x1E69611E0];
  v345 = *MEMORY[0x1E6960AA0];
  v366 = *MEMORY[0x1E6961258];
  if (!Value)
  {
    goto LABEL_9;
  }

LABEL_8:
  for (i = CFArrayGetCount(Value); v25 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Value, v25);
    if (duration.value)
    {
      CFRelease(duration.value);
      duration.value = 0;
    }

    if (Copy)
    {
      CFRelease(Copy);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    Copy = FigCaptionDataGetCMBaseObject();
    v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v31)
    {
      OUTLINED_FUNCTION_7_95();
      v26 = 4294954514;
      goto LABEL_21;
    }

    v32 = v31(Copy, ValueAtIndex, alloc, &duration);
    if (v32)
    {
      v26 = v32;
      OUTLINED_FUNCTION_7_95();
      goto LABEL_21;
    }

    Copy = duration.value;
    if (!duration.value)
    {
      v9 = 0;
LABEL_87:
      v26 = 0;
      goto LABEL_21;
    }

    start.start.value = 0;
    if (!ValueAtIndex)
    {
LABEL_68:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_193();
      v26 = FigSignalErrorAtGM();
      OUTLINED_FUNCTION_7_95();
      goto LABEL_81;
    }

    if (CFEqual(ValueAtIndex, v27))
    {
      ValueAtIndex = CFRetain(cf);
      ColorRGBAFromColorStyleDynamicProperty = fcctx_createColorRGBAFromColorStyleDynamicProperty(Copy, &start.start.value);
      if (ColorRGBAFromColorStyleDynamicProperty)
      {
        goto LABEL_27;
      }

      goto LABEL_72;
    }

    if (CFEqual(ValueAtIndex, v28))
    {
      InitialValue = FigCaptionDynamicStyleGetInitialValue();
      Copy = InitialValue;
      if (!InitialValue)
      {
        goto LABEL_44;
      }

      ValueAtIndex = CFGetTypeID(InitialValue);
      if (ValueAtIndex != CFStringGetTypeID())
      {
        OUTLINED_FUNCTION_7_95();
        v26 = 0xFFFFFFFFLL;
        goto LABEL_81;
      }

      CFRetain(v428);
      v35 = OUTLINED_FUNCTION_798();
      if (CFEqual(v35, cf2))
      {
        v36 = v417;
      }

      else if (CFEqual(Copy, v414))
      {
        v36 = v407;
      }

      else
      {
        if (!CFEqual(Copy, v401))
        {
          if (CFEqual(Copy, v386))
          {
            v36 = v381;
            goto LABEL_71;
          }

          if (CFEqual(Copy, v369))
          {
            v36 = v363;
            goto LABEL_71;
          }
        }

        v36 = v392;
      }

LABEL_71:
      start.start.value = CFRetain(v36);
      goto LABEL_72;
    }

    if (CFEqual(ValueAtIndex, v421))
    {
      Copy = FigCaptionDynamicStyleGetInitialValue();
      if (!Copy)
      {
        goto LABEL_44;
      }

      v37 = range;
LABEL_42:
      CFRetain(v37);
      OUTLINED_FUNCTION_798();
      FigGeometryDimensionMakeFromDictionary();
      v38 = FigTextMarkupDimensionCopyAsSimplifiedDictionary();
      if (v38)
      {
        v39 = v38;
        start.start.value = CFRetain(v38);
        CFRelease(v39);
      }

      else
      {
        start.start.value = 0;
      }

      goto LABEL_72;
    }

    if (CFEqual(ValueAtIndex, v411))
    {
      Copy = FigCaptionDynamicStyleGetInitialValue();
      if (!Copy)
      {
LABEL_44:
        ValueAtIndex = 0;
        goto LABEL_75;
      }

      v37 = v404;
      goto LABEL_42;
    }

    if (CFEqual(ValueAtIndex, v395))
    {
      v40 = FigCaptionDynamicStyleGetInitialValue();
      ValueAtIndex = CFRetain(v389);
      if (v40)
      {
        v36 = v40;
        goto LABEL_71;
      }
    }

    else
    {
      if (!CFEqual(ValueAtIndex, v383))
      {
        if (!CFEqual(ValueAtIndex, v366))
        {
          ValueAtIndex = 0;
LABEL_74:
          Copy = 0;
          goto LABEL_75;
        }

        v43 = FigCaptionDynamicStyleGetInitialValue();
        if (!v43)
        {
          goto LABEL_68;
        }

        Copy = v43;
        v44 = CFGetTypeID(v43);
        if (v44 != FigCaptionRubyReserveGetTypeID())
        {
          goto LABEL_68;
        }

        ValueAtIndex = CFRetain(*MEMORY[0x1E6960950]);
        ColorRGBAFromColorStyleDynamicProperty = FigTextMarkupCreateTextMarkupFromRubyReserve();
        if (ColorRGBAFromColorStyleDynamicProperty)
        {
LABEL_27:
          v26 = ColorRGBAFromColorStyleDynamicProperty;
          OUTLINED_FUNCTION_7_95();
          goto LABEL_79;
        }

        goto LABEL_72;
      }

      v41 = FigCaptionDynamicStyleGetInitialValue();
      CFRetain(v378);
      v42 = OUTLINED_FUNCTION_798();
      if (CFEqual(v42, v375))
      {
        v36 = v372;
        goto LABEL_71;
      }

      if (CFEqual(v41, v360))
      {
        v36 = v357;
        goto LABEL_71;
      }

      if (CFEqual(v41, v354))
      {
        v36 = v351;
        goto LABEL_71;
      }

      if (CFEqual(v41, v348))
      {
        v36 = v345;
        goto LABEL_71;
      }
    }

LABEL_72:
    if (!ValueAtIndex)
    {
      goto LABEL_74;
    }

    Copy = CFRetain(ValueAtIndex);
LABEL_75:
    if (start.start.value)
    {
      v9 = CFRetain(start.start.value);
    }

    else
    {
      v9 = 0;
    }

    v26 = 0;
LABEL_79:
    if (ValueAtIndex)
    {
      CFRelease(ValueAtIndex);
    }

LABEL_81:
    if (start.start.value)
    {
      CFRelease(start.start.value);
    }

    if (!v26 && Copy && v9)
    {
      v45 = OUTLINED_FUNCTION_10_70();
      v443.length = Length;
      CFAttributedStringSetAttribute(v45, v443, Copy, v9);
      goto LABEL_87;
    }

LABEL_21:
    v25 = (v25 + 1);
    if (Value)
    {
      goto LABEL_8;
    }

LABEL_9:
    ;
  }

  if (duration.value)
  {
    CFRelease(duration.value);
    duration.value = 0;
  }

  Mutable = aStr;
  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v26)
  {
    goto LABEL_583;
  }

  v438 = 0;
  v439 = 0;
  v47 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  v48 = v47 ? v47(a2) : &stru_1F0B1AFB8;
  v49 = CFStringGetLength(v48);
  v50 = FigCaptionDataGetCMBaseObject();
  v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v51)
  {
    v52 = v51(v50, *MEMORY[0x1E6961268], alloc, &v439);
    if (v52)
    {
      v53 = v52;
      OUTLINED_FUNCTION_1_176();
    }

    else
    {
      Count = CFArrayGetCount(v439);
      if (Count)
      {
        v53 = 0;
        v54 = 0;
        v25 = 0;
        Copy = 0;
        v429 = *MEMORY[0x1E69614E8];
        cf2a = *MEMORY[0x1E6960878];
        v418 = *MEMORY[0x1E6961458];
        v415 = *MEMORY[0x1E6960810];
        v412 = *MEMORY[0x1E69614A0];
        v405 = *MEMORY[0x1E69607D0];
        v402 = *MEMORY[0x1E69614B0];
        v408 = *MEMORY[0x1E695E4C0];
        v390 = *MEMORY[0x1E69614A8];
        v393 = *MEMORY[0x1E695E4D0];
        v396 = *MEMORY[0x1E6961460];
        v387 = *MEMORY[0x1E6960990];
        v376 = *MEMORY[0x1E6961480];
        v373 = *MEMORY[0x1E69608A8];
        v370 = *MEMORY[0x1E6961490];
        v358 = *MEMORY[0x1E6961488];
        v346 = *MEMORY[0x1E6961498];
        v361 = *MEMORY[0x1E6961470];
        v329 = *MEMORY[0x1E6960880];
        v367 = *MEMORY[0x1E6961190];
        v364 = *MEMORY[0x1E6960A38];
        v355 = *MEMORY[0x1E69611D0];
        v352 = *MEMORY[0x1E6960A78];
        v341 = *MEMORY[0x1E69611C8];
        v339 = *MEMORY[0x1E6960A70];
        v333 = *MEMORY[0x1E69611A0];
        v331 = *MEMORY[0x1E6960A48];
        v321 = *MEMORY[0x1E69611C0];
        v319 = *MEMORY[0x1E6960A68];
        v315 = *MEMORY[0x1E69611B8];
        v313 = *MEMORY[0x1E6960A60];
        v305 = *MEMORY[0x1E69611B0];
        v303 = *MEMORY[0x1E6960A58];
        v293 = *MEMORY[0x1E69611A8];
        v291 = *MEMORY[0x1E6960A50];
        v283 = *MEMORY[0x1E6961180];
        v281 = *MEMORY[0x1E6960A28];
        v275 = *MEMORY[0x1E6961188];
        v273 = *MEMORY[0x1E6960A30];
        v267 = *MEMORY[0x1E6961198];
        v266 = *MEMORY[0x1E6960A40];
        v256 = *MEMORY[0x1E69611D8];
        v255 = *MEMORY[0x1E6960A80];
        v327 = *MEMORY[0x1E6960858];
        v384 = *MEMORY[0x1E695E480];
        v379 = *MEMORY[0x1E6961178];
        v343 = *MEMORY[0x1E6960860];
        v349 = *MEMORY[0x1E6961478];
        v337 = *MEMORY[0x1E6960868];
        v335 = *MEMORY[0x1E69614D0];
        v325 = *MEMORY[0x1E69614B8];
        v323 = *MEMORY[0x1E6960870];
        v317 = *MEMORY[0x1E69614F0];
        v311 = *MEMORY[0x1E6961508];
        v301 = *MEMORY[0x1E69614F8];
        v299 = *MEMORY[0x1E6960890];
        v289 = *MEMORY[0x1E6961510];
        v279 = *MEMORY[0x1E6961520];
        v271 = *MEMORY[0x1E6961518];
        v265 = *MEMORY[0x1E6961500];
        v309 = *MEMORY[0x1E69614C0];
        v307 = *MEMORY[0x1E6960888];
        v297 = *MEMORY[0x1E69614C8];
        v295 = *MEMORY[0x1E69608A0];
        v287 = *MEMORY[0x1E69614D8];
        v285 = *MEMORY[0x1E69608F0];
        v277 = *MEMORY[0x1E6961530];
        v268 = *MEMORY[0x1E6960818];
        v269 = *MEMORY[0x1E6961468];
        v263 = *MEMORY[0x1E6961248];
        v264 = *MEMORY[0x1E69614E0];
        v253 = *MEMORY[0x1E6960B38];
        v262 = *MEMORY[0x1E6960B68];
        v250 = *MEMORY[0x1E6960B58];
        v248 = *MEMORY[0x1E6960B40];
        v245 = *MEMORY[0x1E6960B48];
        key = *MEMORY[0x1E6960938];
        v260 = *MEMORY[0x1E6961250];
        v252 = *MEMORY[0x1E6960B78];
        v258 = *MEMORY[0x1E6960958];
        v259 = *MEMORY[0x1E6960948];
        v257 = *MEMORY[0x1E6960930];
        v254 = *MEMORY[0x1E6961528];
        v251 = *MEMORY[0x1E6961538];
        v249 = *MEMORY[0x1E6961548];
        v246 = *MEMORY[0x1E6961540];
        v247 = *MEMORY[0x1E6960898];
        v244 = *MEMORY[0x1E6960988];
        while (1)
        {
          v55 = CFArrayGetValueAtIndex(v439, v54);
          if (v49)
          {
            break;
          }

LABEL_333:
          if (++v54 == Count)
          {
            goto LABEL_336;
          }
        }

        v56 = v55;
        v57 = 0;
        while (2)
        {
          *&end.timescale = 0;
          end.value = 0;
          if (v438)
          {
            CFRelease(v438);
            v438 = 0;
          }

          if (Copy)
          {
            CFRelease(Copy);
          }

          if (v25)
          {
            CFRelease(v25);
          }

          v58 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v58)
          {
            OUTLINED_FUNCTION_1_176();
            v53 = -12782;
            goto LABEL_117;
          }

          v59 = v58(a2, v57, v56, alloc, &v438, &end);
          if (v59)
          {
            v53 = v59;
            OUTLINED_FUNCTION_1_176();
            goto LABEL_117;
          }

          v60 = v438;
          if (!v438)
          {
            goto LABEL_216;
          }

          Copy = end.value;
          v440 = 0;
          if (!v56)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_193();
            v53 = FigSignalErrorAtGM();
            OUTLINED_FUNCTION_1_176();
            goto LABEL_252;
          }

          if (CFEqual(v56, v429))
          {
            v61 = cf2a;
            goto LABEL_125;
          }

          if (CFEqual(v56, v418))
          {
            v61 = v415;
LABEL_125:
            v26 = CFRetain(v61);
            v62 = fcctx_createColorRGBAFromColorStyleDynamicProperty(v60, &v440);
            Copy = 0;
            if (!v62)
            {
              UInt32 = 0;
              goto LABEL_127;
            }

            v53 = v62;
            v25 = 0;
            UInt32 = 0;
            if (!v26)
            {
LABEL_248:
              if (v440)
              {
                CFRelease(v440);
                v440 = 0;
              }

              if (UInt32)
              {
                CFRelease(UInt32);
              }

LABEL_252:
              if (v53)
              {
                goto LABEL_336;
              }

              if (Copy && v25)
              {
                v444.location = end.value;
                v444.length = *&end.timescale;
                CFAttributedStringSetAttribute(aStr, v444, Copy, v25);
              }

LABEL_256:
              v53 = 0;
              v57 += *&end.timescale;
LABEL_117:
              if (v57 == v49)
              {
                goto LABEL_333;
              }

              continue;
            }

LABEL_247:
            CFRelease(v26);
            goto LABEL_248;
          }

          break;
        }

        if (CFEqual(v56, v412))
        {
          v64 = FigCaptionDynamicStyleGetInitialValue();
          if (v64)
          {
            v65 = v64;
            Copy = CFGetTypeID(v64);
            if (Copy == CFStringGetTypeID())
            {
              CFRetain(v405);
              v66 = OUTLINED_FUNCTION_11_68();
              if (!CFEqual(v66, v402) && CFEqual(v65, v390))
              {
                goto LABEL_144;
              }

LABEL_133:
              v67 = v408;
              goto LABEL_145;
            }
          }

LABEL_320:
          OUTLINED_FUNCTION_1_176();
          UInt32 = 0;
          v53 = -1;
          goto LABEL_248;
        }

        if (CFEqual(v56, v396))
        {
          LODWORD(start.start.value) = 0;
          v68 = FigCaptionDynamicStyleGetInitialValue();
          if (!v68)
          {
            goto LABEL_320;
          }

          Copy = CFGetTypeID(v68);
          if (Copy != CFNumberGetTypeID())
          {
            goto LABEL_320;
          }

          v26 = CFRetain(v387);
          v69 = OUTLINED_FUNCTION_12_65();
          CFNumberGetValue(v69, kCFNumberSInt32Type, v70);
          v71 = start.start.value;
          if (!LODWORD(start.start.value))
          {
            goto LABEL_141;
          }

          if (start.start.value)
          {
            v440 = CFRetain(v393);
            v71 = start.start.value;
          }

          if ((v71 & 6) != 0)
          {
LABEL_141:
            v440 = CFRetain(v408);
          }

LABEL_142:
          UInt32 = 0;
LABEL_127:
          if (v26)
          {
            Copy = CFRetain(v26);
            goto LABEL_243;
          }

LABEL_242:
          Copy = 0;
LABEL_243:
          if (v440)
          {
            v25 = CFRetain(v440);
          }

          else
          {
            v25 = 0;
          }

          v53 = 0;
          if (!v26)
          {
            goto LABEL_248;
          }

          goto LABEL_247;
        }

        if (CFEqual(v56, v376))
        {
          v73 = FigCaptionDynamicStyleGetInitialValue();
          if (!v73)
          {
            goto LABEL_320;
          }

          v74 = v73;
          Copy = CFGetTypeID(v73);
          if (Copy != CFStringGetTypeID())
          {
            goto LABEL_320;
          }

          CFRetain(v373);
          v75 = OUTLINED_FUNCTION_11_68();
          if (CFEqual(v75, v370))
          {
            goto LABEL_133;
          }

          if (!CFEqual(v74, v358))
          {
            CFEqual(v74, v346);
          }

LABEL_144:
          v67 = v393;
LABEL_145:
          SInt8 = CFRetain(v67);
          goto LABEL_146;
        }

        if (CFEqual(v56, v361))
        {
          v76 = FigCaptionDynamicStyleGetInitialValue();
          if (!v76)
          {
            goto LABEL_320;
          }

          Copy = CFGetTypeID(v76);
          if (Copy != FigCaptionFontFamilyNameListGetTypeID())
          {
            goto LABEL_320;
          }

          v77 = FigCaptionFontFamilyNameListGetCount();
          Copy = v77;
          if (!v77)
          {
            v26 = 0;
            UInt32 = 0;
            goto LABEL_243;
          }

          if (v77 == 1)
          {
            LODWORD(duration.value) = 0;
            start.start.value = 0;
            if (!FigCaptionFontFamilyNameListCopyFamilyKindAndNameAtIndex())
            {
              if (LODWORD(duration.value))
              {
                if (LODWORD(duration.value) == 1)
                {
                  v26 = CFRetain(v327);
                  goto LABEL_162;
                }

                v26 = 0;
LABEL_323:
                v101 = start.start.value;
                if (!start.start.value)
                {
                  goto LABEL_142;
                }

LABEL_324:
                CFRelease(v101);
                goto LABEL_142;
              }

              v26 = CFRetain(v329);
              if (CFEqual(start.start.value, v367))
              {
                v78 = v364;
              }

              else if (CFEqual(start.start.value, v355))
              {
                v78 = v352;
              }

              else if (CFEqual(start.start.value, v341))
              {
                v78 = v339;
              }

              else if (CFEqual(start.start.value, v333))
              {
                v78 = v331;
              }

              else if (CFEqual(start.start.value, v321))
              {
                v78 = v319;
              }

              else if (CFEqual(start.start.value, v315))
              {
                v78 = v313;
              }

              else if (CFEqual(start.start.value, v305))
              {
                v78 = v303;
              }

              else if (CFEqual(start.start.value, v293))
              {
                v78 = v291;
              }

              else if (CFEqual(start.start.value, v283))
              {
                v78 = v281;
              }

              else if (CFEqual(start.start.value, v275))
              {
                v78 = v273;
              }

              else if (CFEqual(start.start.value, v267))
              {
                v78 = v266;
              }

              else if (CFEqual(start.start.value, v256))
              {
                v78 = v255;
              }

              else
              {
                v78 = v393;
              }

LABEL_322:
              v440 = CFRetain(v78);
              goto LABEL_323;
            }

LABEL_227:
            OUTLINED_FUNCTION_1_176();
LABEL_228:
            v53 = 0;
LABEL_229:
            UInt32 = 0;
            goto LABEL_248;
          }

          v83 = OUTLINED_FUNCTION_6_111();
          v25 = CFArrayCreateMutable(v83, v84, MEMORY[0x1E695E9C0]);
          if (!v25)
          {
            Copy = 0;
            goto LABEL_228;
          }

          if (Copy < 1)
          {
LABEL_193:
            v26 = CFRetain(v343);
            UInt32 = 0;
            v440 = v25;
            goto LABEL_127;
          }

          v85 = 0;
          while (2)
          {
            LODWORD(duration.value) = 0;
            start.start.value = 0;
            v86 = CFDictionaryCreateMutable(v384, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!v86)
            {
              goto LABEL_227;
            }

            v26 = v86;
            FigCaptionFontFamilyNameListCopyFamilyKindAndNameAtIndex();
            if (LODWORD(duration.value))
            {
              if (LODWORD(duration.value) == 1)
              {
                FigCFDictionarySetInt32();
                v87 = start.start.value;
                goto LABEL_189;
              }
            }

            else
            {
              FigCFDictionarySetInt32();
              v88 = CFEqual(start.start.value, v367);
              v87 = v364;
              if (!v88)
              {
                v89 = CFEqual(start.start.value, v355);
                v87 = v352;
                if (!v89)
                {
                  v90 = CFEqual(start.start.value, v341);
                  v87 = v339;
                  if (!v90)
                  {
                    v91 = CFEqual(start.start.value, v333);
                    v87 = v331;
                    if (!v91)
                    {
                      v92 = CFEqual(start.start.value, v321);
                      v87 = v319;
                      if (!v92)
                      {
                        v93 = CFEqual(start.start.value, v315);
                        v87 = v313;
                        if (!v93)
                        {
                          v94 = CFEqual(start.start.value, v305);
                          v87 = v303;
                          if (!v94)
                          {
                            v95 = CFEqual(start.start.value, v293);
                            v87 = v291;
                            if (!v95)
                            {
                              v96 = CFEqual(start.start.value, v283);
                              v87 = v281;
                              if (!v96)
                              {
                                v97 = CFEqual(start.start.value, v275);
                                v87 = v273;
                                if (!v97)
                                {
                                  v98 = CFEqual(start.start.value, v267);
                                  v87 = v266;
                                  if (!v98)
                                  {
                                    if (CFEqual(start.start.value, v256))
                                    {
                                      v87 = v255;
                                    }

                                    else
                                    {
                                      v87 = v393;
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

LABEL_189:
              CFDictionaryAddValue(v26, v379, v87);
            }

            CFArrayAppendValue(v25, v26);
            CFRelease(v26);
            if (start.start.value)
            {
              CFRelease(start.start.value);
            }

            if (Copy == ++v85)
            {
              goto LABEL_193;
            }

            continue;
          }
        }

        if (CFEqual(v56, v349))
        {
          if (FigCaptionDynamicStyleGetInitialValue())
          {
            v79 = *(MEMORY[0x1E6962830] + 16);
            *&start.start.value = *MEMORY[0x1E6962830];
            *&start.start.epoch = v79;
            v26 = CFRetain(v337);
            FigGeometrySizeMakeFromDictionary();
            OUTLINED_FUNCTION_14_60();
            v80 = FigTextMarkupSizeCopyAsSimplifiedDictionary();
            if (v80)
            {
              v81 = v80;
              v82 = CFRetain(v80);
              CFRelease(v81);
            }

            else
            {
              v82 = 0;
            }

            UInt32 = 0;
            v440 = v82;
            goto LABEL_127;
          }

          goto LABEL_241;
        }

        if (CFEqual(v56, v335))
        {
          if (FigCaptionDynamicStyleGetInitialValue())
          {
            CFRetain(range);
            OUTLINED_FUNCTION_11_68();
            FigGeometryDimensionMakeFromDictionary();
            v99 = FigTextMarkupDimensionCopyAsSimplifiedDictionary();
            if (!v99)
            {
              UInt32 = 0;
              v440 = 0;
              goto LABEL_127;
            }

            goto LABEL_197;
          }

          goto LABEL_241;
        }

        if (CFEqual(v56, v325))
        {
          v102 = FigCaptionDynamicStyleGetInitialValue();
          v103 = v323;
LABEL_208:
          v26 = CFRetain(v103);
          if (!v102)
          {
            goto LABEL_142;
          }

LABEL_209:
          v67 = v102;
          goto LABEL_145;
        }

        if (CFEqual(v56, v317))
        {
          v104 = FigCaptionDynamicStyleGetInitialValue();
          if (!v104)
          {
            goto LABEL_241;
          }

          v105 = v104;
          if (!CFEqual(v104, v311))
          {
            if (CFEqual(v105, v301) || CFEqual(v105, v289) || CFEqual(v105, v279) || CFEqual(v105, v271) || CFEqual(v105, v265))
            {
              CFRetain(v299);
              OUTLINED_FUNCTION_8_80();
              SInt8 = FigCFNumberCreateSInt8();
LABEL_146:
              UInt32 = 0;
              v440 = SInt8;
              goto LABEL_127;
            }

            goto LABEL_241;
          }

LABEL_216:
          v25 = 0;
          Copy = 0;
          goto LABEL_256;
        }

        if (CFEqual(v56, v309))
        {
          v102 = FigCaptionDynamicStyleGetInitialValue();
          v103 = v307;
          goto LABEL_208;
        }

        if (CFEqual(v56, v297))
        {
          v102 = FigCaptionDynamicStyleGetInitialValue();
          v103 = v295;
          goto LABEL_208;
        }

        if (CFEqual(v56, v287))
        {
          v102 = FigCaptionDynamicStyleGetInitialValue();
          v103 = v285;
          goto LABEL_208;
        }

        if (CFEqual(v56, v277))
        {
          goto LABEL_241;
        }

        if (CFEqual(v56, v269))
        {
          v102 = FigCaptionDynamicStyleGetInitialValue();
          v103 = v268;
          goto LABEL_208;
        }

        if (CFEqual(v56, v264))
        {
          FigCaptionDataGetCaptionText(v60);
          v106 = OUTLINED_FUNCTION_8_80();
          v25 = CFDictionaryCreateMutable(v106, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v25)
          {
            start.start.value = 0;
            v107 = FigCaptionDataGetCMBaseObject();
            CMBaseObjectCopyProperty_0(v107, v263, v384, &start);
            FigCaptionDynamicStyleGetInitialValue();
            if (start.start.value)
            {
              CFRelease(start.start.value);
              start.start.value = 0;
            }

            v108 = FigCFEqual();
            v109 = v262;
            if (!v108)
            {
              v110 = FigCFEqual();
              v109 = v253;
              if (!v110)
              {
                v111 = FigCFEqual();
                v109 = v250;
                if (!v111)
                {
                  v112 = FigCFEqual();
                  v109 = v248;
                  if (!v112)
                  {
                    v113 = FigCFEqual();
                    v109 = v245;
                    if (!v113)
                    {
                      v114 = FigCFEqual();
                      v109 = v253;
                      if (v114)
                      {
                        v109 = *MEMORY[0x1E6960B50];
                      }
                    }
                  }
                }
              }
            }

            CFDictionarySetValue(v25, key, v109);
            v115 = FigCaptionDataGetCMBaseObject();
            CMBaseObjectCopyProperty_0(v115, v260, v384, &start);
            FigCaptionDynamicStyleGetInitialValue();
            if (start.start.value)
            {
              CFRelease(start.start.value);
              start.start.value = 0;
            }

            v116 = FigCFEqual();
            v117 = MEMORY[0x1E6960B70];
            if (v116 || (v118 = FigCFEqual(), v117 = MEMORY[0x1E6960B88], v119 = v252, v118))
            {
              v119 = *v117;
            }

            CFDictionarySetValue(v25, v259, v119);
            UInt32 = FigCFNumberCreateUInt32();
            if (UInt32)
            {
              CFDictionarySetValue(v25, v258, UInt32);
              v120 = CFAttributedStringCreate(v384, v26, v25);
              if (v120)
              {
                v121 = v120;
                CFRelease(v25);
                CFRetain(v257);
                v122 = OUTLINED_FUNCTION_11_68();
                v440 = CFRetain(v122);
                CFRelease(v121);
                goto LABEL_127;
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_193();
              v53 = FigSignalErrorAtGM();
            }

            else
            {
              v53 = 0;
            }

            OUTLINED_FUNCTION_1_176();
            goto LABEL_248;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_193();
          v53 = FigSignalErrorAtGM();
          Copy = 0;
          goto LABEL_229;
        }

        if (CFEqual(v56, v254))
        {
          v123 = FigCaptionDynamicStyleGetInitialValue();
          start.start.value = 0;
          v26 = CFRetain(*MEMORY[0x1E6960970]);
          if (!v123)
          {
            goto LABEL_142;
          }

          Copy = CFGetTypeID(v123);
          if (Copy != FigCaptionTextEmphasisGetTypeID())
          {
            goto LABEL_142;
          }

          OUTLINED_FUNCTION_12_65();
          TextMarkupFromTextEmphasis = FigTextMarkupCreateTextMarkupFromTextEmphasis();
          if (TextMarkupFromTextEmphasis)
          {
            goto LABEL_300;
          }
        }

        else
        {
          if (!CFEqual(v56, v251))
          {
            if (!CFEqual(v56, v249))
            {
              if (CFEqual(v56, v246))
              {
                v131 = FigCaptionDynamicStyleGetInitialValue();
                if (!v131)
                {
                  goto LABEL_320;
                }

                Copy = CFGetTypeID(v131);
                if (Copy != CFDictionaryGetTypeID())
                {
                  goto LABEL_320;
                }

                start.start.value = FigGeometryDimensionMakeFromDictionary();
                *&start.start.timescale = v132;
                if ((v132 & 0x1FFFFFFFFLL) != 0x125202020)
                {
                  v26 = 0;
                  goto LABEL_142;
                }

                v26 = CFRetain(v244);
                v99 = CFNumberCreate(v384, kCFNumberCGFloatType, &start);
                if (!v99)
                {
                  v440 = 0;
                  goto LABEL_142;
                }

LABEL_197:
                v100 = v99;
                v440 = CFRetain(v99);
                v101 = v100;
                goto LABEL_324;
              }

LABEL_241:
              v26 = 0;
              UInt32 = 0;
              goto LABEL_242;
            }

            v102 = FigCaptionDynamicStyleGetInitialValue();
            v26 = CFRetain(v247);
            if (!v102)
            {
              goto LABEL_142;
            }

            v126 = CFGetTypeID(v102);
            if (v126 != CFArrayGetTypeID())
            {
              goto LABEL_142;
            }

            if (CFArrayGetCount(v102) >= 1)
            {
              v127 = 0;
              v128 = 0;
              do
              {
                LODWORD(start.start.value) = 0;
                OUTLINED_FUNCTION_12_65();
                if (FigCFArrayGetInt32AtIndex())
                {
                  if (!v127)
                  {
                    v129 = OUTLINED_FUNCTION_6_111();
                    v127 = CFArrayCreateMutable(v129, v130, MEMORY[0x1E695E9C0]);
                  }

                  FigCFArrayAppendInt32();
                }

                ++v128;
              }

              while (v128 < CFArrayGetCount(v102));
            }

            goto LABEL_209;
          }

          v125 = FigCaptionDynamicStyleGetInitialValue();
          start.start.value = 0;
          v26 = CFRetain(*MEMORY[0x1E6960980]);
          if (!v125)
          {
            goto LABEL_142;
          }

          Copy = CFGetTypeID(v125);
          if (Copy != FigCaptionTextShadowGetTypeID())
          {
            goto LABEL_142;
          }

          OUTLINED_FUNCTION_12_65();
          TextMarkupFromTextEmphasis = FigTextMarkupCreateTextMarkupFromTextShadowList();
          if (TextMarkupFromTextEmphasis)
          {
LABEL_300:
            v53 = TextMarkupFromTextEmphasis;
            OUTLINED_FUNCTION_1_176();
            UInt32 = 0;
            if (!v26)
            {
              goto LABEL_248;
            }

            goto LABEL_247;
          }
        }

LABEL_162:
        v78 = start.start.value;
        goto LABEL_322;
      }

      OUTLINED_FUNCTION_1_176();
      v53 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_176();
    v53 = -12782;
  }

LABEL_336:
  if (v438)
  {
    CFRelease(v438);
    v438 = 0;
  }

  v133 = cf;
  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v439)
  {
    CFRelease(v439);
  }

  Mutable = aStr;
  if (v53)
  {
    goto LABEL_583;
  }

  v134 = v437;
  v439 = 0;
  v440 = 0;
  v135 = CFAttributedStringGetLength(aStr);
  if (!v134)
  {
    OUTLINED_FUNCTION_4_139();
    v146 = 0;
    v144 = 0;
    goto LABEL_558;
  }

  v136 = v135;
  OUTLINED_FUNCTION_2_170();
  v137 = CFDictionaryGetValue(sCAPRPCaptionPropertyInfoDictionary, @"region");
  v138 = v137;
  v139 = MEMORY[0x1E69607B8];
  Copy = MEMORY[0x1E6961338];
  rangea = v136;
  if (v137)
  {
    v140 = CFArrayGetCount(v137);
    v430 = *Copy;
    if (v140 < 1)
    {
      v419 = 0;
      v144 = 0;
    }

    else
    {
      v141 = FigCaptionRegionGetCMBaseObject();
      v142 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v142)
      {
        v143 = v142(v141, v430, alloc, &v439);
        if (v143)
        {
          v144 = v143;
          v145 = 1;
          goto LABEL_354;
        }

        v147 = a9;
        if (CFStringGetLength(v439))
        {
          v144 = 0;
          v145 = CFStringCompare(v439, *MEMORY[0x1E6961368], 0) != kCFCompareEqualTo;
        }

        else
        {
          if (v439)
          {
            CFRelease(v439);
            v144 = 0;
            v439 = 0;
          }

          else
          {
            v144 = 0;
          }

          v145 = 1;
        }
      }

      else
      {
        v145 = 1;
        v144 = -12782;
LABEL_354:
        v147 = a9;
      }

      Copy = CFDictionaryGetValue(v147, v134);
      if (Copy)
      {
        v148 = v145;
      }

      else
      {
        v148 = 0;
      }

      if (v148)
      {
        goto LABEL_368;
      }

      if (v439)
      {
        v149 = CFRetain(v439);
        v150 = a9;
      }

      else
      {
        v150 = a9;
        v243 = CFDictionaryGetCount(a9);
        v151 = OUTLINED_FUNCTION_6_111();
        v149 = CFStringCreateWithFormat(v151, v152, v153, v243);
      }

      CFDictionarySetValue(v150, v134, v149);
      if (v149)
      {
        CFRelease(v149);
      }

      v133 = cf;
      if (Copy || (Copy = CFDictionaryGetValue(a9, v134)) != 0)
      {
LABEL_368:
        v419 = v148;
        v154 = OUTLINED_FUNCTION_10_70();
        v445.length = v136;
        CFAttributedStringSetAttribute(v154, v445, v155, Copy);
      }

      else
      {
        v419 = 0;
      }
    }
  }

  else
  {
    v419 = 0;
    v144 = 0;
    v430 = *MEMORY[0x1E6961338];
  }

  OUTLINED_FUNCTION_4_139();
  v156 = 0;
  v146 = 0;
  cf2b = *MEMORY[0x1E69612E8];
  v423 = *MEMORY[0x1E69613B8];
  v413 = *MEMORY[0x1E69613D8];
  v406 = *MEMORY[0x1E6960C10];
  v397 = *MEMORY[0x1E69613E0];
  v391 = *MEMORY[0x1E6960C18];
  v382 = *MEMORY[0x1E69613F0];
  v374 = *MEMORY[0x1E6960C28];
  v377 = *MEMORY[0x1E6960998];
  v371 = *MEMORY[0x1E6960C38];
  v368 = *MEMORY[0x1E69613E8];
  v362 = *MEMORY[0x1E6960C20];
  v359 = *MEMORY[0x1E6960C30];
  v403 = *MEMORY[0x1E69609A8];
  v409 = *MEMORY[0x1E6961390];
  v388 = *MEMORY[0x1E69607F0];
  v385 = *MEMORY[0x1E69607F8];
  v394 = *MEMORY[0x1E69612C8];
  v380 = *MEMORY[0x1E69613B0];
  v353 = *MEMORY[0x1E6960800];
  v365 = *MEMORY[0x1E6961328];
  v347 = *MEMORY[0x1E69607E8];
  v356 = *MEMORY[0x1E69612D8];
  v338 = *MEMORY[0x1E69607D8];
  v336 = *MEMORY[0x1E69607E0];
  v350 = *MEMORY[0x1E69612F0];
  v342 = *MEMORY[0x1E6960808];
  v344 = *MEMORY[0x1E6961300];
  v340 = *MEMORY[0x1E6961308];
  v334 = *MEMORY[0x1E6961298];
  v328 = *MEMORY[0x1E6961290];
  v324 = *MEMORY[0x1E69612A0];
  v330 = *MEMORY[0x1E6960840];
  v332 = *MEMORY[0x1E6961320];
  v322 = *MEMORY[0x1E69608F8];
  v326 = *MEMORY[0x1E6961330];
  v320 = *MEMORY[0x1E6960900];
  v416 = *v139;
  v318 = *MEMORY[0x1E6961370];
  v314 = *MEMORY[0x1E6960910];
  v316 = *MEMORY[0x1E69612F8];
  v310 = *MEMORY[0x1E6960820];
  v312 = *MEMORY[0x1E6961310];
  v306 = *MEMORY[0x1E6960848];
  v308 = *MEMORY[0x1E69613A0];
  v304 = *MEMORY[0x1E69613C8];
  v300 = *MEMORY[0x1E6960960];
  v302 = *MEMORY[0x1E6961380];
  v298 = *MEMORY[0x1E69608D0];
  v296 = *MEMORY[0x1E6961388];
  v294 = *MEMORY[0x1E69612B0];
  v292 = *MEMORY[0x1E6960AC8];
  v290 = *MEMORY[0x1E69612A8];
  v288 = *MEMORY[0x1E6960AC0];
  v286 = *MEMORY[0x1E69612C0];
  v284 = *MEMORY[0x1E6960AD8];
  v282 = *MEMORY[0x1E69612B8];
  v280 = *MEMORY[0x1E6960AD0];
  v278 = *MEMORY[0x1E69608E8];
  v276 = *MEMORY[0x1E69613C0];
  v274 = *MEMORY[0x1E69609B0];
  v272 = *MEMORY[0x1E6961378];
  v270 = *MEMORY[0x1E69613A8];
  if (!v138)
  {
    goto LABEL_371;
  }

  while (2)
  {
    v157 = CFArrayGetCount(v138);
LABEL_372:
    if (v156 < v157)
    {
      v158 = CFArrayGetValueAtIndex(v138, v156);
      if (v440)
      {
        CFRelease(v440);
        v440 = 0;
      }

      if (Copy)
      {
        CFRelease(Copy);
      }

      if (v26)
      {
        CFRelease(v26);
      }

      Copy = FigCaptionRegionGetCMBaseObject();
      v159 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v159)
      {
        OUTLINED_FUNCTION_4_139();
        v144 = -12782;
        goto LABEL_383;
      }

      v160 = v159(Copy, v158, alloc, &v440);
      if (v160)
      {
        v144 = v160;
        OUTLINED_FUNCTION_4_139();
LABEL_383:
        ++v156;
        if (v138)
        {
          continue;
        }

LABEL_371:
        v157 = 0;
        goto LABEL_372;
      }

      if (!CFEqual(v158, v430) || CFStringGetLength(v440))
      {
        Copy = v440;
        if (v440)
        {
          goto LABEL_388;
        }

LABEL_395:
        v26 = 0;
        v144 = 0;
        goto LABEL_383;
      }

      if (v440)
      {
        CFRelease(v440);
        v440 = 0;
      }

      v165 = CFDictionaryGetValue(a9, v134);
      Copy = CFStringCreateCopy(alloc, v165);
      v440 = Copy;
      if (!Copy)
      {
        goto LABEL_395;
      }

LABEL_388:
      end.value = 0;
      if (!v158)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_193();
        FigSignalErrorAtGM();
        OUTLINED_FUNCTION_3_143();
        v163 = 0;
        goto LABEL_460;
      }

      v161 = OUTLINED_FUNCTION_6_111();
      v163 = CFDictionaryCreateMutable(v161, v162, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (CFEqual(v158, cf2b))
      {
        v164 = CFRetain(v133);
        if (!fcctx_createColorRGBAFromColorStyleDynamicProperty(Copy, &end.value))
        {
          CFDictionaryAddValue(v163, v133, end.value);
LABEL_446:
          if (!FigCFDictionaryGetCount() && v163)
          {
            CFRelease(v163);
            v163 = 0;
          }

          if (v164)
          {
            Copy = CFRetain(v164);
          }

          else
          {
            Copy = 0;
          }

          if (end.value)
          {
            v26 = CFRetain(end.value);
            if (v163)
            {
              goto LABEL_454;
            }

LABEL_456:
            v133 = 0;
          }

          else
          {
            v26 = 0;
            if (!v163)
            {
              goto LABEL_456;
            }

LABEL_454:
            v133 = CFRetain(v163);
          }

          v144 = 0;
LABEL_458:
          if (v164)
          {
            CFRelease(v164);
          }

LABEL_460:
          if (end.value)
          {
            CFRelease(end.value);
            end.value = 0;
          }

          if (v163)
          {
            CFRelease(v163);
          }

          if (!v144)
          {
            *&start.start.timescale = 0;
            start.start.value = 0;
            v188 = OUTLINED_FUNCTION_10_70();
            Attributes = CFAttributedStringGetAttributes(v188, v189, v190);
            if (Copy)
            {
              if (v26 && !CFDictionaryContainsKey(Attributes, Copy))
              {
                v192 = OUTLINED_FUNCTION_10_70();
                v446.length = rangea;
                CFAttributedStringSetAttribute(v192, v446, Copy, v26);
              }
            }
          }

          if (v133)
          {
            if (!v146)
            {
              v186 = OUTLINED_FUNCTION_6_111();
              v146 = CFDictionaryCreateMutable(v186, v187, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            }

            start.start.value = v146;
            CFDictionaryApplyFunction(v133, addOneKeyAndValueApplyFunction, &start);
            CFRelease(v133);
          }

          v133 = cf;
          goto LABEL_383;
        }

LABEL_416:
        OUTLINED_FUNCTION_3_143();
        goto LABEL_458;
      }

      if (CFEqual(v158, v423))
      {
        v166 = FigCaptionDynamicStyleGetInitialValue();
        if (!v166)
        {
          goto LABEL_445;
        }

        Copy = v166;
        v167 = CFGetTypeID(v166);
        if (v167 == CFStringGetTypeID())
        {
          if (CFEqual(Copy, v413))
          {
            v168 = v406;
LABEL_410:
            v172 = CFRetain(v168);
            v164 = 0;
            if (!v172)
            {
              goto LABEL_446;
            }

LABEL_411:
            CFDictionaryAddValue(v163, v403, v172);
            CFRelease(v172);
            goto LABEL_446;
          }

          if (CFEqual(Copy, v397))
          {
            v168 = v391;
            goto LABEL_410;
          }

          if (CFEqual(Copy, v382))
          {
            v172 = CFRetain(v374);
            v164 = CFRetain(v377);
            v175 = v371;
            goto LABEL_426;
          }

          if (CFEqual(Copy, v368))
          {
            v172 = CFRetain(v362);
            v164 = CFRetain(v377);
            v175 = v359;
LABEL_426:
            end.value = CFRetain(v175);
            if (!v172)
            {
              goto LABEL_446;
            }

            goto LABEL_411;
          }

LABEL_445:
          v164 = 0;
          goto LABEL_446;
        }

LABEL_489:
        v133 = 0;
        OUTLINED_FUNCTION_4_139();
        v144 = -1;
        goto LABEL_460;
      }

      if (CFEqual(v158, v409))
      {
        if (!FigCaptionDynamicStyleGetInitialValue())
        {
          goto LABEL_445;
        }

        memset(&start, 0, 32);
        FigGeometryPointMakeFromDictionary();
        OUTLINED_FUNCTION_14_60();
        Copy = FigGeometryPointCopyDescription();
        if ((start.start.flags & 1) != 0 || (start.duration.value & 0x100000000) != 0)
        {
          OUTLINED_FUNCTION_15_53();
          v169 = OUTLINED_FUNCTION_16_49();
          if (v169)
          {
            CFDictionaryAddValue(v163, v388, v158);
            v170 = v163;
            v171 = v385;
            goto LABEL_407;
          }

          goto LABEL_440;
        }

        goto LABEL_443;
      }

      if (CFEqual(v158, v394))
      {
        v173 = FigCaptionDynamicStyleGetInitialValue();
        if (!v173 || (Copy = v173, v174 = CFGetTypeID(v173), v174 != FigCaptionPositionGetTypeID()))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_193();
          FigSignalErrorAtGM();
          OUTLINED_FUNCTION_3_143();
          goto LABEL_460;
        }

        v164 = CFRetain(*MEMORY[0x1E69607A8]);
        if (!FigTextMarkupCreateTextMarkupFromAbstractPosition())
        {
          goto LABEL_446;
        }

        goto LABEL_416;
      }

      if (CFEqual(v158, v380))
      {
        if (!FigCaptionDynamicStyleGetInitialValue())
        {
          goto LABEL_445;
        }

        v176 = FigGeometryDimensionMakeFromDictionary();
        Copy = OUTLINED_FUNCTION_9_71(v176, v177);
        if ((v133 & 0x100000000) == 0)
        {
          goto LABEL_443;
        }

        v178 = FigTextMarkupDimensionCopyAsSimplifiedDictionary();
        if (!v178)
        {
          goto LABEL_443;
        }

        v179 = v178;
        v180 = v163;
        v181 = v353;
LABEL_433:
        CFDictionaryAddValue(v180, v181, v179);
        v185 = v179;
LABEL_442:
        CFRelease(v185);
        goto LABEL_443;
      }

      if (CFEqual(v158, v365))
      {
        if (!FigCaptionDynamicStyleGetInitialValue())
        {
          goto LABEL_445;
        }

        v182 = FigGeometryDimensionMakeFromDictionary();
        Copy = OUTLINED_FUNCTION_9_71(v182, v183);
        if ((v133 & 0x100000000) == 0)
        {
          goto LABEL_443;
        }

        v184 = FigTextMarkupDimensionCopyAsSimplifiedDictionary();
        if (!v184)
        {
          goto LABEL_443;
        }

        v179 = v184;
        v180 = v163;
        v181 = v347;
        goto LABEL_433;
      }

      if (CFEqual(v158, v356))
      {
        if (!FigCaptionDynamicStyleGetInitialValue())
        {
          goto LABEL_445;
        }

        memset(&start, 0, 32);
        FigGeometryPointMakeFromDictionary();
        OUTLINED_FUNCTION_14_60();
        Copy = FigGeometryPointCopyDescription();
        if ((start.start.flags & 1) != 0 && (start.duration.value & 0x100000000) != 0)
        {
          OUTLINED_FUNCTION_15_53();
          v169 = OUTLINED_FUNCTION_16_49();
          if (v169)
          {
            CFDictionaryAddValue(v163, v338, v158);
            v170 = v163;
            v171 = v336;
LABEL_407:
            CFDictionaryAddValue(v170, v171, v169);
          }

LABEL_440:
          CFRelease(v158);
          if (v169)
          {
            v185 = v169;
            goto LABEL_442;
          }
        }

LABEL_443:
        if (!Copy)
        {
          goto LABEL_445;
        }

LABEL_444:
        CFRelease(Copy);
        goto LABEL_445;
      }

      if (CFEqual(v158, v350))
      {
        v193 = CFGetTypeID(Copy);
        if (v193 != CFDictionaryGetTypeID())
        {
          goto LABEL_445;
        }

        v194 = *(MEMORY[0x1E6962830] + 16);
        *&start.start.value = *MEMORY[0x1E6962830];
        *&start.start.epoch = v194;
        FigGeometrySizeMakeFromDictionary();
        OUTLINED_FUNCTION_14_60();
        if (!FigTextMarkupSizeCopyAsSimplifiedDictionary())
        {
          goto LABEL_445;
        }

        v195 = OUTLINED_FUNCTION_413();
        v196 = v342;
        goto LABEL_478;
      }

      if (CFEqual(v158, v344))
      {
        goto LABEL_445;
      }

      if (CFEqual(v158, v340))
      {
        v197 = FigCaptionDynamicStyleGetInitialValue();
        if (!v197)
        {
          goto LABEL_445;
        }

        Copy = v197;
        v198 = CFGetTypeID(v197);
        if (v198 != CFStringGetTypeID())
        {
          goto LABEL_489;
        }

        v199 = CFEqual(Copy, v334);
        v200 = MEMORY[0x1E6960A18];
        if (!v199)
        {
          v201 = CFEqual(Copy, v328);
          v200 = MEMORY[0x1E6960A10];
          if (!v201)
          {
            CFEqual(Copy, v324);
            v200 = MEMORY[0x1E6960A20];
          }
        }

        if (!CFRetain(*v200))
        {
          goto LABEL_445;
        }

        v195 = OUTLINED_FUNCTION_413();
        v196 = v330;
        goto LABEL_478;
      }

      if (CFEqual(v158, v332))
      {
        v202 = FigCaptionDynamicStyleGetInitialValue();
        if (!v202)
        {
          goto LABEL_445;
        }

        Copy = v202;
        v203 = CFGetTypeID(v202);
        if (v203 != CFBooleanGetTypeID() || !CFRetain(Copy))
        {
          goto LABEL_445;
        }

        v195 = OUTLINED_FUNCTION_413();
        v196 = v322;
        goto LABEL_478;
      }

      if (CFEqual(v158, v326))
      {
        v204 = FigCaptionDynamicStyleGetInitialValue();
        if (!v204 || !CFRetain(v204))
        {
          goto LABEL_445;
        }

        v195 = OUTLINED_FUNCTION_413();
        v196 = v320;
        goto LABEL_478;
      }

      if (CFEqual(v158, v430))
      {
        v205 = v163;
        v206 = v416;
LABEL_502:
        CFDictionaryAddValue(v205, v206, Copy);
        goto LABEL_445;
      }

      if (CFEqual(v158, v318))
      {
        v207 = FigCaptionDynamicStyleGetInitialValue();
        if (!v207 || !CFRetain(v207))
        {
          goto LABEL_445;
        }

        v195 = OUTLINED_FUNCTION_413();
        v196 = v314;
      }

      else if (CFEqual(v158, v316))
      {
        v208 = FigCaptionDynamicStyleGetInitialValue();
        if (!v208 || !CFRetain(v208))
        {
          goto LABEL_445;
        }

        v195 = OUTLINED_FUNCTION_413();
        v196 = v310;
      }

      else if (CFEqual(v158, v312))
      {
        v209 = CFGetTypeID(Copy);
        if (v209 != CFDictionaryGetTypeID())
        {
          goto LABEL_445;
        }

        FigGeometryAspectRatioMakeFromDictionary();
        if (!FigTextMarkupAspectRatioCopyAsSimplifiedDictionary())
        {
          goto LABEL_445;
        }

        v195 = OUTLINED_FUNCTION_413();
        v196 = v306;
      }

      else if (CFEqual(v158, v308))
      {
        v210 = FigCaptionDynamicStyleGetInitialValue();
        if (!v210)
        {
          goto LABEL_445;
        }

        Copy = v210;
        v211 = CFEqual(v210, v304);
        v212 = MEMORY[0x1E6960B98];
        if (!v211)
        {
          v213 = CFEqual(Copy, v300);
          v212 = MEMORY[0x1E6960BA0];
          if (!v213)
          {
            goto LABEL_445;
          }
        }

        if (!CFRetain(*v212))
        {
          goto LABEL_445;
        }

        v195 = OUTLINED_FUNCTION_413();
        v196 = v300;
      }

      else
      {
        if (CFEqual(v158, v302))
        {
          v214 = FigCaptionDynamicStyleGetInitialValue();
          if (!v214)
          {
            goto LABEL_445;
          }

          Copy = v214;
          v215 = CFGetTypeID(v214);
          if (v215 != CFNumberGetTypeID())
          {
            goto LABEL_445;
          }

          v205 = v163;
          v206 = v298;
          goto LABEL_502;
        }

        if (CFEqual(v158, v296))
        {
          v164 = FigCaptionDynamicStyleGetInitialValue();
          if (!v164)
          {
            goto LABEL_446;
          }

          Copy = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionaryGetValue(v164, v294);
          FigGeometryDimensionMakeFromDictionary();
          v216 = FigTextMarkupDimensionCopyAsSimplifiedDictionary();
          CFDictionaryAddValue(Copy, v292, v216);
          if (v216)
          {
            CFRelease(v216);
          }

          CFDictionaryGetValue(v164, v290);
          FigGeometryDimensionMakeFromDictionary();
          v217 = FigTextMarkupDimensionCopyAsSimplifiedDictionary();
          CFDictionaryAddValue(Copy, v288, v217);
          if (v217)
          {
            CFRelease(v217);
          }

          CFDictionaryGetValue(v164, v286);
          FigGeometryDimensionMakeFromDictionary();
          v218 = FigTextMarkupDimensionCopyAsSimplifiedDictionary();
          CFDictionaryAddValue(Copy, v284, v218);
          if (v218)
          {
            CFRelease(v218);
          }

          CFDictionaryGetValue(v164, v282);
          FigGeometryDimensionMakeFromDictionary();
          FigTextMarkupDimensionCopyAsSimplifiedDictionary();
          v219 = OUTLINED_FUNCTION_798();
          CFDictionaryAddValue(v219, v280, v164);
          CFRelease(v164);
          if (!Copy)
          {
            goto LABEL_445;
          }

          v195 = v163;
          v196 = v278;
        }

        else
        {
          if (CFEqual(v158, v276))
          {
            v220 = FigCaptionDynamicStyleGetInitialValue();
            if (!v220)
            {
              goto LABEL_445;
            }

            Copy = v220;
            v221 = CFGetTypeID(v220);
            if (v221 != CFNumberGetTypeID())
            {
              goto LABEL_445;
            }

            v205 = v163;
            v206 = v274;
            goto LABEL_502;
          }

          if (CFEqual(v158, v272))
          {
            v222 = FigCaptionDynamicStyleGetInitialValue();
            if (!v222)
            {
              goto LABEL_445;
            }

            Copy = v222;
            v223 = CFGetTypeID(v222);
            if (v223 != CFNumberGetTypeID())
            {
              goto LABEL_445;
            }

            v206 = *MEMORY[0x1E6960918];
            v205 = v163;
            goto LABEL_502;
          }

          if (!CFEqual(v158, v270))
          {
            goto LABEL_445;
          }

          v224 = FigCaptionDynamicStyleGetInitialValue();
          if (!v224)
          {
            goto LABEL_445;
          }

          v225 = CFGetTypeID(v224);
          if (v225 != CFDictionaryGetTypeID())
          {
            goto LABEL_445;
          }

          FigGeometryDimensionMakeFromDictionary();
          v226 = FigTextMarkupDimensionCopyAsSimplifiedDictionary();
          if (!v226)
          {
            goto LABEL_445;
          }

          Copy = v226;
          v196 = *MEMORY[0x1E6960920];
          v195 = v163;
        }
      }

LABEL_478:
      CFDictionaryAddValue(v195, v196, Copy);
      goto LABEL_444;
    }

    break;
  }

  v227 = v419;
  if (!v146)
  {
    v227 = 1;
  }

  if ((v227 & 1) == 0)
  {
    v228 = CFDictionaryGetValue(v146, v416);
    v229 = *MEMORY[0x1E6960A90];
    v230 = CFDictionaryGetValue(v400, *MEMORY[0x1E6960A90]);
    if (!v230)
    {
      v231 = OUTLINED_FUNCTION_6_111();
      v235 = CFDictionaryCreateMutable(v231, v232, v233, v234);
      if (v235)
      {
        v236 = v235;
        CFDictionaryAddValue(v400, v229, v235);
        CFRelease(v236);
      }

      v230 = CFDictionaryGetValue(v400, v229);
    }

    v237 = OUTLINED_FUNCTION_6_111();
    v241 = CFDictionaryCreateMutable(v237, v238, v239, v240);
    CFDictionaryAddValue(v241, *MEMORY[0x1E6960AF8], v228);
    CFDictionaryAddValue(v241, *MEMORY[0x1E6960AF0], v146);
    CFDictionarySetValue(v230, v228, v241);
    if (v241)
    {
      CFRelease(v241);
    }
  }

  Mutable = aStr;
LABEL_558:
  if (v440)
  {
    CFRelease(v440);
    v440 = 0;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v146)
  {
    CFRelease(v146);
  }

  if (v439)
  {
    CFRelease(v439);
  }

  if (v144)
  {
LABEL_583:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_193();
    v22 = FigSignalErrorAtGM();
LABEL_584:
    v46 = v22;
    goto LABEL_571;
  }

  v46 = 0;
  if (v410)
  {
    *v410 = Mutable;
    Mutable = 0;
  }

LABEL_571:
  if (v437)
  {
    CFRelease(v437);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v46;
}