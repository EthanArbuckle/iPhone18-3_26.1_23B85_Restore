@interface NotifyServiceCurrentEvent
@end

@implementation NotifyServiceCurrentEvent

void __fpic_NotifyServiceCurrentEvent_block_invoke()
{
  OUTLINED_FUNCTION_193();
  v80 = v0;
  v2 = v1;
  v108 = *MEMORY[0x1E69E9840];
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  CFRelease(*(v2 + 32));
  OUTLINED_FUNCTION_150_3(MEMORY[0x1E6960C70]);
  v89 = *(v4 + 16);
  if (dword_1EAF178D0 >= 3)
  {
    LODWORD(v95.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_115_1(v6))
    {
      v7 = *(v2 + 40);
      v8 = *(v2 + 48);
      v9 = *(v2 + 56);
      LODWORD(valuePtr.value) = 136316162;
      *(&valuePtr.value + 4) = "fpic_NotifyServiceCurrentEvent_block_invoke";
      LOWORD(valuePtr.flags) = 2048;
      *(&valuePtr.flags + 2) = v3;
      HIWORD(valuePtr.epoch) = 2112;
      v97 = v7;
      v98 = 2048;
      v99 = v8;
      v100 = 2112;
      v101 = v9;
      LODWORD(v78) = 52;
      p_valuePtr = &valuePtr;
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_448();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  if (v3)
  {
    v10 = CFEqual(*(v2 + 40), @"ItemStoppedBeingCurrent");
    v11 = MEMORY[0x1E6960CD0];
    if (v10)
    {
      v19 = OUTLINED_FUNCTION_92_7();
    }

    else
    {
      if (!CFEqual(*(v2 + 40), @"ItemBecameCurrent"))
      {
        if (CFEqual(*(v2 + 40), @"ReadyForPlayback"))
        {
          v81 = *(v2 + 48);
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          v13 = FigCFWeakReferenceHolderCopyReferencedObject();
          v14 = *DerivedStorage;
          *&v102 = MEMORY[0x1E69E9820];
          *(&v102 + 1) = 3221225472;
          *&v103 = __fpic_ReportStartupTimeIncludingInterstitial_block_invoke;
          *(&v103 + 1) = &__block_descriptor_72_e5_v8__0l;
          v104 = DerivedStorage;
          v105 = v3;
          v106 = v13;
          v107 = v81;
          dispatch_sync(v14, &v102);
          if (!v13)
          {
            goto LABEL_21;
          }

          goto LABEL_10;
        }

        if (CFEqual(*(v2 + 40), @"FailedToBecomeReadyForInspection") || CFEqual(*(v2 + 40), @"FailedToBecomeReadyForPlayback"))
        {
          *&v102 = 0;
          LODWORD(valuePtr.value) = 0;
          if (FigCFDictionaryGetValueIfPresent())
          {
            CFNumberGetValue(v102, kCFNumberSInt32Type, &valuePtr);
          }

          v15 = OUTLINED_FUNCTION_92_7();
          v18 = 0;
          goto LABEL_16;
        }

        if (!CFEqual(*(v2 + 40), @"FailedToPlayToEnd"))
        {
          if (CFEqual(*(v2 + 40), @"RateDidChange"))
          {
            v55 = OUTLINED_FUNCTION_203_1();
            fpic_NoticeRateChange(v55, v56);
          }

          else if (CFEqual(*(v2 + 40), @"IsAirPlayVideoActiveDidChange"))
          {
            v57 = OUTLINED_FUNCTION_92_7();
            fpic_HandleAirPlayVideoActiveDidChange(v57, v58);
          }

          else if (CFEqual(*(v2 + 40), @"ExternalPlaybackInitiatedCancelInterstitialEvent"))
          {
            v59 = OUTLINED_FUNCTION_203_1();
            fpic_HandleExternalPlaybackInitiatedCancelInterstitialEvent(v59, v60);
          }

          else if (CFEqual(*(v2 + 40), @"SelectedMediaOptionsDidChange"))
          {
            v61 = OUTLINED_FUNCTION_203_1();
            fpic_mediaSelectionsChanged(v61, v62);
          }

          else if (CFEqual(*(v2 + 40), @"CoordinationIdentifierChanged"))
          {
            v66 = OUTLINED_FUNCTION_92_7();
            fpic_coordinationIdentifierChanged(v66, v67);
          }

          else
          {
            if (CFEqual(*(v2 + 40), @"ReadyForInspection"))
            {
              v15 = OUTLINED_FUNCTION_92_7();
              v18 = 1;
              v17 = 0;
LABEL_16:
              fpic_eventItemReadyStateChange(v15, v16, v18, v17);
              goto LABEL_21;
            }

            if (CFEqual(*(v2 + 40), @"ReachedTimeToPauseBuffering") || CFEqual(*(v2 + 40), @"AlmostReachedTimeToPausePlayback") || CFEqual(*(v2 + 40), @"ReachedTimeToPausePlayback") || CFEqual(*(v2 + 40), @"SnappedTimeToPausePlayback"))
            {
              if (CFEqual(*(v2 + 40), @"ReachedTimeToPauseBuffering"))
              {
                fpic_checkForSnappedTimeToPauseBuffering(v3);
              }

              fpic_checkForSnapOut(v3);
              if (CFEqual(*(v2 + 40), @"AlmostReachedTimeToPausePlayback"))
              {
                Value = CFDictionaryGetValue(*(v2 + 56), @"FigTime");
                CMTimeMakeFromDictionary(&v102, Value);
                fpic_schedulePrimaryToInterstitialTransition(v3, &v102);
              }

              if (CFEqual(*(v2 + 40), @"ReachedTimeToPausePlayback"))
              {
                v64 = *(v2 + 64);
                if (*(v64 + 160))
                {
                  if (*(v64 + 1076))
                  {
                    v65 = CFDictionaryGetValue(*(v2 + 56), @"FigTime");
                    v102 = 0uLL;
                    *&v103 = 0;
                    CMTimeMakeFromDictionary(&v102, v65);
                    *&valuePtr.value = v102;
                    valuePtr.epoch = v103;
                    fpic_CheckIfPlayheadHasReachedPrimaryPlaybackGate(v3, &valuePtr);
                  }
                }
              }

              goto LABEL_21;
            }

            if (CFEqual(*(v2 + 40), @"SeekDidComplete") || CFEqual(*(v2 + 40), @"SeekWasCanceled"))
            {
              fpic_HandleSeekDidFinishNotification(v3, *(v2 + 40), *(v2 + 56), &v88);
            }

            else
            {
              if (CFEqual(*(v2 + 40), @"DidPlayToTheEnd"))
              {
                v68 = *(v2 + 64);
                v69 = *(v68 + 160);
                if (*(v2 + 48) == v69 && !*(v68 + 1145))
                {
                  *(v68 + 1145) = 1;
                  if (*(v68 + 1146))
                  {
                    if (*(v68 + 256) || *(v68 + 257))
                    {
                      fpic_CurrentItemMoment(v69, &v102);
                      v70 = v103;
                      *(v68 + 224) = v102;
                      *(v68 + 240) = v70;
                      *(v68 + 256) = v104;
                      v71 = **(v2 + 64);
                      block = MEMORY[0x1E69E9820];
                      v84 = 3221225472;
                      v85 = __fpic_NotifyServiceCurrentEvent_block_invoke_223;
                      v86 = &__block_descriptor_40_e5_v8__0l;
                      v87 = v3;
                      dispatch_sync(v71, &block);
                    }
                  }
                }

                goto LABEL_21;
              }

              if (CFEqual(*(v2 + 40), @"EndTimeChanged"))
              {
                v72 = OUTLINED_FUNCTION_203_1();
                fpic_HandleEndTimeChangedNotification(v72, v73);
              }

              else if (CFEqual(*(v2 + 40), *v11))
              {
                v75 = OUTLINED_FUNCTION_92_7();
                fpic_ReportInterstitialPlaybackDeadTime(v75, v76);
              }

              else
              {
                if (!CFEqual(*(v2 + 40), @"PlayableRangeChanged"))
                {
                  if (CFEqual(*(v2 + 40), @"FigMediaAccessibilityNotification_MediaAccessibilityChanged"))
                  {
                    fpic_mediaAccessibilityChanged(v3);
                  }

                  goto LABEL_21;
                }

                v13 = FigCFWeakReferenceHolderCopyReferencedObject();
                v74 = FigCFDictionaryGetValue();
                fpic_updateEventLoadedTimeIntervals(v3, v13, *(v2 + 48), v74);
                if (v13)
                {
LABEL_10:
                  CFRelease(v13);
                }
              }
            }
          }

LABEL_21:
          v22 = CFEqual(*(v2 + 40), *v11);
          v23 = MEMORY[0x1E6960CE8];
          if (v22 || CFEqual(*(v2 + 40), *MEMORY[0x1E6960CE8]))
          {
            v24 = *(v2 + 48);
            if (v24 == *(*(v2 + 64) + 1224))
            {
              FigCFDictionaryGetCMTimeIfPresent();
              *v82 = v88;
              *&v82[16] = v89;
              memset(&v95, 0, sizeof(v95));
              v25 = CMTimebaseCopySource(v24);
              if (v25)
              {
                v26 = v25;
                v102 = 0uLL;
                *&v103 = 0;
                memset(&valuePtr, 0, sizeof(valuePtr));
                v27 = OUTLINED_FUNCTION_284();
                CMSyncGetRelativeRateAndAnchorTime(v27, v28, 0, v29, v30);
                CMSyncGetTime(&v95, v26);
                if (CMTimebaseGetRate(v24) > 0.0)
                {
                  OUTLINED_FUNCTION_224_0(v31, v32, v33, v34, v35, v36, v37, v38, p_valuePtr, v78, v79, v80, v81, *(&v81 + 1), *v82, *&v82[8], *&v82[16], block, v84, v85, v86, v87, v88, *(&v88 + 1), v89, v90, time2.value, *&time2.timescale, time2.epoch, v92, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v94, *&v95.value);
                  if (CMTimeCompare(&type, &time2) >= 1)
                  {
                    *v82 = v102;
                    *&v82[16] = v103;
                  }
                }

                CFRelease(v26);
              }

              v88 = *v82;
              v89 = *&v82[16];
              v95 = *v82;
              v39 = CMBaseObjectGetDerivedStorage();
              if ((*(v39 + 1076) & 1) != 0 && (*(v39 + 968) || *(v39 + 969)))
              {
                v40 = v39 + 1064;
                v102 = *(v39 + 1064);
                *&v103 = *(v39 + 1080);
                valuePtr = v95;
                if (!faqrp_timeDifferenceIsWithinTolerance(&v102, &valuePtr, &kMomentsAreCloseThreshold) && !*(CMBaseObjectGetDerivedStorage() + 888))
                {
                  v41 = FigCFWeakReferenceHolderCopyReferencedObject();
                  if (v41)
                  {
                    v42 = v41;
                    if (dword_1EAF178D0)
                    {
                      LODWORD(type.value) = 0;
                      LOBYTE(time2.value) = 0;
                      v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      os_log_type_enabled(v43, time2.value);
                      OUTLINED_FUNCTION_28();
                      if (&dword_1EAF17000)
                      {
                        v102 = *v40;
                        v44 = OUTLINED_FUNCTION_137_2(*(v40 + 16));
                        v102 = *&v95.value;
                        OUTLINED_FUNCTION_137_2(v95.epoch);
                        LODWORD(valuePtr.value) = 136315906;
                        OUTLINED_FUNCTION_211_0("fpic_ensurePrimaryPlaybackGateForTimeJumpDuringIntendedSeek");
                        LOWORD(valuePtr.flags) = v45;
                        *(v46 + 14) = v3;
                        HIWORD(valuePtr.epoch) = v45;
                        v97 = v44;
                        v98 = v45;
                        *(v46 + 34) = v47;
                        OUTLINED_FUNCTION_95_1();
                        OUTLINED_FUNCTION_38();
                        _os_log_send_and_compose_impl();
                      }

                      OUTLINED_FUNCTION_7();
                      OUTLINED_FUNCTION_417();
                      v23 = MEMORY[0x1E6960CE8];
                    }

                    v48 = OUTLINED_FUNCTION_618();
                    fpic_GatePrimaryPlaybackAtCurrentEvent(v48, v49);
                    CFRelease(v42);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_120();
                    FigSignalErrorAtGM();
                  }
                }
              }
            }

            v50 = CFEqual(*(v2 + 40), *v23);
            v51 = CMBaseObjectGetDerivedStorage();
            v52 = *v51;
            *&v102 = MEMORY[0x1E69E9820];
            *(&v102 + 1) = 3221225472;
            *&v103 = __fpic_checkScheduledTransition_block_invoke;
            *(&v103 + 1) = &__block_descriptor_57_e5_v8__0l;
            v104 = v51;
            v105 = v3;
            v106 = v24;
            LOBYTE(v107) = v50;
            dispatch_sync(v52, &v102);
          }

          v102 = v88;
          *&v103 = v89;
          fpic_ServiceCurrentEvent(v3, &v102);
          CFRelease(v3);
          goto LABEL_42;
        }

        v19 = OUTLINED_FUNCTION_92_7();
        v21 = 1;
LABEL_20:
        fpic_PruneCurrentEvents(v19, v20, v21);
        goto LABEL_21;
      }

      v19 = OUTLINED_FUNCTION_265();
    }

    v21 = 0;
    goto LABEL_20;
  }

LABEL_42:
  CFRelease(*(v2 + 40));
  v53 = *(v2 + 56);
  if (v53)
  {
    CFRelease(v53);
  }

  v54 = *(v2 + 48);
  if (v54)
  {
    CFRelease(v54);
  }

  OUTLINED_FUNCTION_191();
}

@end