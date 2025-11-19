uint64_t playerairplay_isLocalPlaybackCapableRouteSelected()
{
  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetBooleanIfPresent();
  return 1;
}

void playerairplay_postIsBufferedAirPlayActiveDidChangeNotification()
{
  CMBaseObjectGetDerivedStorage();
  if (CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]))
  {
    playerairplay_postIsBufferedAirPlayActiveDidChangeNotification_cold_1();
  }

  else
  {
    playerairplay_postIsBufferedAirPlayActiveDidChangeNotification_cold_2();
  }
}

void playerairplay_checkStartStopAirPlay(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetBooleanIfPresent();
  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetBooleanIfPresent();
  if (*(DerivedStorage + 457) && !playerairplay_isAirPlayVideoAllowed())
  {
    *(DerivedStorage + 457) = 0;
    playerairplay_notifyIfIsAirPlayVideoActiveChanged(a1, a2);
  }

  playerairplay_checkStartStopAirPlay_cold_1(a1);
}

void __playerairplay_switchFromLocalToBufferedAirPlay_block_invoke(uint64_t a1)
{
  playerairplay_setFigAudioSessionInfoOnBAO(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

BOOL pap_isDeviceUnlocked()
{
  if (gFigPlayerAirPlayDeviceLockedStateNotifyTokenIsValid_0 != 1)
  {
    return 1;
  }

  usleep(0x124F8u);
  return SBSGetScreenLockStatus() == 0;
}

uint64_t playerairplay_switchFromLocalToAirPlayVideo(void *a1)
{
  v150 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v142 = 0;
  cf = 0;
  v140 = 0;
  values = 0;
  if (qword_1ED4CAC70 != -1)
  {
    playerairplay_switchFromLocalToAirPlayVideo_cold_1();
  }

  if (*DerivedStorage)
  {
    goto LABEL_66;
  }

  v3 = qword_1ED4CAC68;
  if (!playerairplay_isAirPlayVideoAllowed())
  {
    if (dword_1EAF172E8)
    {
      LODWORD(v137[0]) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_66;
  }

  if (*(DerivedStorage + 56) == 0.0)
  {
    CMBaseObjectGetDerivedStorage();
    if (!*(CMBaseObjectGetDerivedStorage() + 360) || (v4 = pap_copyInterstitialPlayer()) == 0 || (v5 = v4, v6 = *(CMBaseObjectGetDerivedStorage() + 56), CFRelease(v5), v6 == 0.0))
    {
      if (!playerairplay_isPrimaryForNativeInterstitialsInAPVPlayback())
      {
        if (dword_1EAF172E8)
        {
          LODWORD(v137[0]) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (!*(DerivedStorage + 457))
        {
          IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive();
          *(DerivedStorage + 457) = 1;
          playerairplay_notifyIfIsAirPlayVideoActiveChanged(a1, IsAirplayVideoActive);
        }

LABEL_66:
        v43 = 0;
        v44 = 0;
        v45 = 0;
LABEL_191:
        *(DerivedStorage + 50) = 0;
        goto LABEL_192;
      }
    }
  }

  v8 = playerairplay_getIsAirplayVideoActive();
  *(DerivedStorage + 457) = 0;
  playerairplay_notifyIfIsAirPlayVideoActiveChanged(a1, v8);
  *(DerivedStorage + 50) = 1;
  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(DerivedStorage + 40), &v142, 0);
  if (playerairplay_getPreloadAssetPropertiesArray_once != -1)
  {
    playerairplay_switchFromLocalToAirPlayVideo_cold_2();
  }

  v9 = playerairplay_getPreloadAssetPropertiesArray_sPreloadAssetPropertiesArray;
  playerairplay_copyPlayQueueAirPlayItemFromSubPlayer();
  v10 = cf;
  if (!cf)
  {
    v42 = v142;
    if (v142)
    {
      v42 = CFRetain(v142);
    }

    LODWORD(v18) = 0;
    cf = v42;
    if (v42)
    {
LABEL_28:
      FigSimpleMutexLock();
      v19 = *(DerivedStorage + 472);
      v151.length = CFArrayGetCount(v19);
      v151.location = 0;
      CFArrayApplyFunction(v19, v151, playerairplay_removeStartupTasksFromSubPlayerApply, a1);
      FigSimpleMutexUnlock();
      v20 = *MEMORY[0x1E695E480];
      FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 20, &v140);
      v21 = *(DerivedStorage + 8);
      v22 = v140;
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v23)
      {
        v23(v21, v22, 0.0);
      }

      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(time, HostTimeClock);
      *(DerivedStorage + 308) = *time;
      *(DerivedStorage + 324) = *&time[16];
      v25 = CMBaseObjectGetDerivedStorage();
      v26 = v25;
      v27 = &dword_1EAF17000;
      if (!*(v25 + 8))
      {
LABEL_147:
        if (v10)
        {
          v87 = *(DerivedStorage + 8);
          v88 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (v88)
          {
            v88(v87, 0);
          }
        }

        if (v27[186])
        {
          LODWORD(v137[0]) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v89 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v90 = v137[0];
          if (os_log_type_enabled(v89, type[0]))
          {
            v91 = v90;
          }

          else
          {
            v91 = v90 & 0xFFFFFFFE;
          }

          if (v91)
          {
            if (a1)
            {
              v92 = (CMBaseObjectGetDerivedStorage() + 459);
            }

            else
            {
              v92 = "";
            }

            v93 = CMBaseObjectGetDerivedStorage();
            DescriptionForAirPlayState = pap_getDescriptionForAirPlayState(*(v93 + 216));
            *time2 = 136316162;
            *&time2[4] = "playerairplay_switchFromLocalToAirPlayVideo";
            *&time2[12] = 2048;
            *&time2[14] = a1;
            *&time2[22] = 2082;
            *&time2[24] = v92;
            *v145 = 2082;
            *&v145[2] = DescriptionForAirPlayState;
            *&v145[10] = 2082;
            *&v145[12] = "StoppedLocalPlayback";
            LODWORD(v117) = 52;
            v116 = time2;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        pap_setAirPlayState(a1, 12);
        v101 = cf;
        if (cf)
        {
          if (*(v26 + 704))
          {
            playerairplay_startAirPlayWithItem(a1, cf, v95, v96, v97, v98, v99, v100, v116, v117, v118, v119, v120[0], v120[1], HIBYTE(v120[1]), *&v120[2], v121, v122, *v124, v124[2], v124[3], *&v124[4], v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, *type, v137[0], v137[1], v138, v139, v140, values, v142, cf, *time2, *&time2[8], *&time2[16], *&time2[24], *v145, *&v145[8], *&v145[16], *&v145[24], v146, v147, *time, *&time[8], *&time[16], *&time[24]);
          }

          else
          {
            *(v26 + 704) = 1;
            *(v26 + 712) = 1;
            if (v27[186])
            {
              LODWORD(v137[0]) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v102 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v103 = v137[0];
              if (os_log_type_enabled(v102, type[0]))
              {
                v104 = v103;
              }

              else
              {
                v104 = v103 & 0xFFFFFFFE;
              }

              if (v104)
              {
                v123 = v3;
                v105 = cf;
                if (a1)
                {
                  v106 = (CMBaseObjectGetDerivedStorage() + 459);
                }

                else
                {
                  v106 = "";
                }

                if (cf)
                {
                  v107 = (CMBaseObjectGetDerivedStorage() + 820);
                }

                else
                {
                  v107 = "";
                }

                *time2 = 136316162;
                *&time2[4] = "playerairplay_switchFromLocalToAirPlayVideo";
                *&time2[12] = 2048;
                *&time2[14] = a1;
                *&time2[22] = 2048;
                *&time2[24] = v105;
                *v145 = 2082;
                *&v145[2] = v106;
                *&v145[10] = 2082;
                *&v145[12] = v107;
                _os_log_send_and_compose_impl();
                v3 = v123;
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v101 = cf;
            }

            itemairplay_startAssetTypeLoadAsync(v101);
          }

          if (*(DerivedStorage + 241))
          {
            itemairplay_resetTimeToPausePlayback(a1);
          }

          v45 = 1;
        }

        else
        {
          v45 = 0;
        }

        *(DerivedStorage + 50) = 0;
        v108 = MEMORY[0x1E695E9D8];
        v109 = MEMORY[0x1E695E9E8];
        values = CFDictionaryCreate(v20, &kFigPlayerExternalProtectionStatusKey_Video, &kFigPlayerExternalProtectionStatus_Protected, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v44 = CFDictionaryCreate(v20, &kFigPlayerParameter_CurrentExternalProtectionStatus, &values, 1, v108, v109);
        playerairplay_postPlayerNotification();
        if (v3 && pap_isLocalFileURL(*(v26 + 88), 0))
        {
          v43 = CFURLCopyPathExtension(*(v26 + 88));
          CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
          v18 = CTGreenTeaOsLogHandle;
          if (!CTGreenTeaOsLogHandle)
          {
LABEL_185:
            if (cf)
            {
              v110 = v45;
            }

            else
            {
              v110 = 0;
            }

            playerairplay_inferPlaybackStateFromAirPlayPlayer(a1, v110);
            if (v18)
            {
              v111 = *(DerivedStorage + 8);
              v112 = *(*(CMBaseObjectGetVTable() + 16) + 24);
              if (v112)
              {
                v112(v111, 0);
              }
            }

            goto LABEL_191;
          }

          if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
          {
            *time = 138412290;
            *&time[4] = v43;
            _os_log_impl(&dword_1962D5000, v18, OS_LOG_TYPE_INFO, "Transmitting some media data (%@)", time, 0xCu);
          }
        }

        else
        {
          v43 = 0;
        }

        LODWORD(v18) = 0;
        goto LABEL_185;
      }

      *(&v122 + 1) = v3;
      v28 = MEMORY[0x1E6960C70];
      *v124 = *MEMORY[0x1E6960C70];
      *(v25 + 200) = *MEMORY[0x1E6960C70];
      v29 = *(v28 + 16);
      *(v25 + 216) = v29;
      *(v25 + 252) = *v124;
      *(v25 + 268) = v29;
      itemairplay_updateDateTimePivot(v25);
      *time = *v124;
      *&time[16] = v29;
      v30 = *(v26 + 8);
      v31 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v31 && !v31(v30, time))
      {
        v32.n128_u64[1] = *&time[8];
        *(v26 + 228) = *time;
        *(v26 + 244) = *&time[16];
      }

      v33 = (v26 + 192);
      if (*(v26 + 192))
      {
        Seconds = NAN;
        goto LABEL_51;
      }

      v34 = *(v26 + 8);
      v35 = CFGetAllocator(cf);
      FigBaseObject = FigPlaybackItemGetFigBaseObject(v34);
      v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v37 || v37(FigBaseObject, @"currentDate", v35, v26 + 192))
      {
        if (*v33)
        {
          CFRelease(*v33);
          *v33 = 0;
        }

        goto LABEL_60;
      }

      v38 = CMBaseObjectGetDerivedStorage();
      v137[0] = 0;
      if (v38)
      {
        v39 = FigPlaybackItemGetFigBaseObject(*(v38 + 8));
        v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v40)
        {
          if (!v40(v39, @"currentDateAndTime", v20, v137))
          {
            FigDateTimeMakeFromDictionary(v137[0], time);
            v32.n128_u64[1] = *&time[8];
            *time2 = *time;
            *&time2[16] = *&time[16];
            if (v149)
            {
              *time = *time2;
              *&time[16] = *&time2[16];
              Seconds = CMTimeGetSeconds(time);
LABEL_42:
              if (v137[0])
              {
                CFRelease(v137[0]);
              }

              if (!*v33)
              {
LABEL_60:
                v53 = *(v26 + 8);
                v54 = CFGetAllocator(cf);
                v55 = FigPlaybackItemGetFigBaseObject(v53);
                v56 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v56 && !v56(v55, @"estimatedCurrentDate", v54, v26 + 192) && *v33)
                {
                  *(v26 + 224) = 1;
                }

                goto LABEL_76;
              }

LABEL_51:
              *(v26 + 224) = 0;
              if ((*(v26 + 132) & 1) == 0)
              {
                goto LABEL_76;
              }

              v32.n128_u64[0] = 0;
              v46 = Seconds;
              v47 = MEMORY[0x19A8CCD90](v32);
              *time = *(v26 + 120);
              *&time[16] = *(v26 + 136);
              v48 = CMTimeGetSeconds(time);
              v49 = CFDateCreate(v20, v47 + v48 - v46);
              if (dword_1EAF172E8)
              {
                LODWORD(v137[0]) = 0;
                type[0] = OS_LOG_TYPE_DEFAULT;
                v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v51 = v137[0];
                *&v122 = v50;
                HIDWORD(v121) = 0;
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                {
                  v52 = v51;
                }

                else
                {
                  v52 = v51 & 0xFFFFFFFE;
                }

                if (v52)
                {
                  if (a1)
                  {
                    v58 = (CMBaseObjectGetDerivedStorage() + 459);
                  }

                  else
                  {
                    v58 = "";
                  }

                  *v120 = v58;
                  v119 = *v33;
                  *time = *(v26 + 120);
                  *&time[16] = *(v26 + 136);
                  v59 = CMTimeGetSeconds(time);
                  *time2 = 136316418;
                  *&time2[4] = "playerairplay_switchFromLocalToAirPlayVideo";
                  *&time2[12] = 2048;
                  *&time2[14] = a1;
                  *&time2[22] = 2082;
                  *&time2[24] = *v120;
                  *v145 = 2112;
                  *&v145[2] = v119;
                  *&v145[10] = 2112;
                  *&v145[12] = v49;
                  *&v145[20] = 2048;
                  *&v145[22] = v59;
                  LODWORD(v117) = 62;
                  v116 = time2;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v60 = *v33;
              *v33 = v49;
              if (v49)
              {
                CFRetain(v49);
                if (!v60)
                {
LABEL_74:
                  if (v49)
                  {
LABEL_75:
                    CFRelease(v49);
                  }

LABEL_76:
                  if (*(v26 + 132))
                  {
                    *time = *(v26 + 120);
                    *&time[16] = *(v26 + 136);
                    itemairplay_setRememberedTimeAndDefaultFlag(cf, time);
                    *(v26 + 120) = *v124;
                    *(v26 + 136) = v29;
                    v64 = 1;
                    *(v26 + 144) = 0;
                    v3 = *(&v122 + 1);
                  }

                  else
                  {
                    *v137 = *v124;
                    v138 = v29;
                    v61 = *(v26 + 8);
                    v62 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                    if (v62)
                    {
                      v3 = *(&v122 + 1);
                      v63 = v62(v61, v137);
                    }

                    else
                    {
                      v63 = -12782;
                      v3 = *(&v122 + 1);
                    }

                    *time = *v137;
                    *&time[16] = v138;
                    itemairplay_setRememberedTimeAndDefaultFlag(cf, time);
                    *time = *v137;
                    *&time[16] = v138;
                    *time2 = *MEMORY[0x1E6960CC0];
                    *&time2[16] = *(MEMORY[0x1E6960CC0] + 16);
                    if (!CMTimeCompare(time, time2))
                    {
                      *type = 0;
                      v65 = FigPlaybackItemGetFigBaseObject(*(v26 + 8));
                      v66 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                      if (v66)
                      {
                        v66(v65, @"IsReadyForPlayback", v20, type);
                      }

                      if (!FigGetBooleanFromCFTypeWithDefault())
                      {
                        if (dword_1EAF172E8)
                        {
                          HIDWORD(v135) = 0;
                          BYTE3(v135) = 0;
                          v67 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                          os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);
                          fig_log_call_emit_and_clean_up_after_send_and_compose();
                          v3 = *(&v122 + 1);
                        }

                        itemairplay_setRememberedTimeAndDefaultFlag(cf, MEMORY[0x1E6960C70]);
                      }

                      if (*type)
                      {
                        CFRelease(*type);
                      }
                    }

                    v64 = v63 == 0;
                  }

                  v68 = *(v26 + 160);
                  *(DerivedStorage + 348) = *(v26 + 176);
                  *(DerivedStorage + 332) = v68;
                  FigSimpleMutexLock();
                  v69 = *(v26 + 576);
                  if (v69)
                  {
                    CFRelease(v69);
                    *(v26 + 576) = 0;
                  }

                  v70 = FigPlaybackItemGetFigBaseObject(*(v26 + 8));
                  v71 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v71)
                  {
                    v71(v70, @"TransientTimebaseForCoordinatedPlaybackSynchronization", v20, v26 + 576);
                  }

                  FigSimpleMutexUnlock();
                  if (v64)
                  {
                    *(v26 + 200) = *(v26 + 160);
                    *(v26 + 216) = *(v26 + 176);
                    v27 = &dword_1EAF17000;
                  }

                  else
                  {
                    v27 = &dword_1EAF17000;
                    if (dword_1EAF172E8)
                    {
                      LODWORD(v137[0]) = 0;
                      type[0] = OS_LOG_TYPE_DEFAULT;
                      v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v73 = v137[0];
                      if (os_log_type_enabled(v72, type[0]))
                      {
                        v74 = v73;
                      }

                      else
                      {
                        v74 = v73 & 0xFFFFFFFE;
                      }

                      if (v74)
                      {
                        v75 = cf;
                        if (a1)
                        {
                          v76 = (CMBaseObjectGetDerivedStorage() + 459);
                        }

                        else
                        {
                          v76 = "";
                        }

                        if (cf)
                        {
                          v77 = (CMBaseObjectGetDerivedStorage() + 820);
                        }

                        else
                        {
                          v77 = "";
                        }

                        *time2 = 136316162;
                        *&time2[4] = "playerairplay_switchFromLocalToAirPlayVideo";
                        *&time2[12] = 2048;
                        *&time2[14] = a1;
                        *&time2[22] = 2048;
                        *&time2[24] = v75;
                        *v145 = 2082;
                        *&v145[2] = v76;
                        *&v145[10] = 2082;
                        *&v145[12] = v77;
                        LODWORD(v117) = 52;
                        v116 = time2;
                        _os_log_send_and_compose_impl();
                        v3 = *(&v122 + 1);
                      }

                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                      v27 = &dword_1EAF17000;
                    }

                    itemairplay_setRememberedTimeAndDefaultFlag(cf, MEMORY[0x1E6960C70]);
                  }

                  *time = 0;
                  *time2 = 0;
                  v137[0] = 0;
                  v78 = FigPlaybackItemGetFigBaseObject(*(v26 + 8));
                  v79 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v79)
                  {
                    v79(v78, @"SelectedMediaArray", v20, time);
                  }

                  v80 = FigPlaybackItemGetFigBaseObject(*(v26 + 8));
                  v81 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v81)
                  {
                    v81(v80, @"MediaPresentationLanguages", v20, time2);
                  }

                  v82 = FigPlaybackItemGetFigBaseObject(*(v26 + 8));
                  v83 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v83)
                  {
                    v83(v82, @"kFigPlaybackItemProperty_MediaPresentationCharacteristics", v20, v137);
                  }

                  if (cf)
                  {
                    CFRetain(cf);
                  }

                  if (a1)
                  {
                    CFRetain(a1);
                  }

                  if (*time)
                  {
                    CFRetain(*time);
                  }

                  if (*time2)
                  {
                    CFRetain(*time2);
                  }

                  if (v137[0])
                  {
                    CFRetain(v137[0]);
                    v84 = v137[0];
                  }

                  else
                  {
                    v84 = 0;
                  }

                  v85 = *(DerivedStorage + 104);
                  *(&v125 + 1) = MEMORY[0x1E69E9820];
                  *&v126 = 3221225472;
                  *(&v126 + 1) = __playerairplay_switchFromLocalToAirPlayVideo_block_invoke;
                  v127 = &__block_descriptor_88_e5_v8__0l;
                  v128 = v26;
                  v129 = DerivedStorage;
                  v130 = cf;
                  v131 = *time2;
                  v132 = v84;
                  v133 = *time;
                  v134 = a1;
                  dispatch_async(v85, &v125 + 8);
                  if (*time)
                  {
                    CFRelease(*time);
                  }

                  if (*time2)
                  {
                    CFRelease(*time2);
                  }

                  if (v137[0])
                  {
                    CFRelease(v137[0]);
                  }

                  v86 = MEMORY[0x1E695E4D0];
                  if (*(v26 + 792) >= 1)
                  {
                    FigSimpleMutexLock();
                    CFDictionarySetValue(*(v26 + 336), *MEMORY[0x1E6961E90], *v86);
                    FigSimpleMutexUnlock();
                  }

                  if (*(v26 + 776))
                  {
                    FigSimpleMutexLock();
                    CFDictionarySetValue(*(v26 + 336), *MEMORY[0x1E6961E80], *(v26 + 776));
                    FigSimpleMutexUnlock();
                  }

                  if (*(v26 + 752))
                  {
                    FigSimpleMutexLock();
                    CFDictionarySetValue(*(v26 + 336), *MEMORY[0x1E6961E50], *(v26 + 752));
                    FigSimpleMutexUnlock();
                  }

                  if (*(DerivedStorage + 456))
                  {
                    FigSimpleMutexLock();
                    CFDictionarySetValue(*(v26 + 336), *MEMORY[0x1E6961E68], *v86);
                    FigSimpleMutexUnlock();
                  }

                  if (*(DerivedStorage + 384))
                  {
                    FigSimpleMutexLock();
                    CFDictionarySetValue(*(v26 + 336), *MEMORY[0x1E6961E58], *(DerivedStorage + 384));
                    FigSimpleMutexUnlock();
                  }

                  goto LABEL_147;
                }
              }

              else if (!v60)
              {
                goto LABEL_74;
              }

              CFRelease(v60);
              if (!v49)
              {
                goto LABEL_76;
              }

              goto LABEL_75;
            }
          }
        }
      }

      else
      {
        playerairplay_switchFromLocalToAirPlayVideo_cold_3();
      }

      Seconds = NAN;
      goto LABEL_42;
    }

LABEL_49:
    v43 = 0;
    v44 = 0;
    v45 = 0;
    goto LABEL_185;
  }

  v11 = CMBaseObjectGetDerivedStorage();
  v12 = *(v11 + 8);
  if (!v12)
  {
LABEL_27:
    LODWORD(v18) = 1;
    if (cf)
    {
      goto LABEL_28;
    }

    goto LABEL_49;
  }

  CFRetain(*(v11 + 8));
  while (1)
  {
    *time = 0;
    *time2 = 0;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v13)
    {
      v13(v12, time);
    }

    v14 = *time;
    if (!*time)
    {
      break;
    }

    v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v15)
    {
      v15(v14, v9, 0, 0);
    }

    v16 = *(DerivedStorage + 8);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v17)
    {
      v17(v16, v12, time2);
    }

    if (*time)
    {
      CFRelease(*time);
    }

    CFRelease(v12);
    v12 = *time2;
    if (!*time2)
    {
      goto LABEL_27;
    }
  }

  *(DerivedStorage + 50) = 0;
  CFRelease(v12);
  v43 = 0;
  v44 = 0;
  v45 = 0;
LABEL_192:
  if (cf)
  {
    CFRelease(cf);
  }

  if (values)
  {
    CFRelease(values);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v140)
  {
    CFRelease(v140);
  }

  if (v142)
  {
    CFRelease(v142);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  return v45;
}

uint64_t playerairplay_removeStartupTasksFromSubPlayerApply(uint64_t a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 8);
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 136);
  if (v6)
  {

    return v6(v2, a1);
  }

  return result;
}

void itemairplay_updateDateTimePivot(uint64_t a1)
{
  v9 = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    FigBaseObject = FigPlaybackItemGetFigBaseObject(v2);
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      if (!v4(FigBaseObject, @"currentDateAndTime", *MEMORY[0x1E695E480], &v9))
      {
        v8 = 0;
        v6 = 0u;
        v7 = 0u;
        FigDateTimeMakeFromDictionary(v9, &v6);
        if (v8 && BYTE1(v8))
        {
          v5 = v7;
          *(a1 + 288) = v6;
          *(a1 + 304) = v5;
          *(a1 + 320) = v8;
        }

        if (v9)
        {
          CFRelease(v9);
        }
      }
    }
  }
}

void itemairplay_resetTimeToPausePlayback(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = v3;
  if (v3 && !*(DerivedStorage + 241))
  {
    v5 = MEMORY[0x1E6960C70];
    *(v3 + 512) = *MEMORY[0x1E6960C70];
    *(v3 + 528) = *(v5 + 16);
    StopAndReleaseTimer((v3 + 328));
  }

  if (*(DerivedStorage + 64))
  {
    *(DerivedStorage + 64) = 0;
    v6 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v6)
    {
      if (v6 != 10)
      {
        v7 = *(DerivedStorage + 56);
        if (v7 != 0.0)
        {
          memset(&v12, 0, sizeof(v12));
          if (v4)
          {
            CMTimebaseGetTime(&v12, *(v4 + 568));
            v7 = *(DerivedStorage + 56);
          }

          else
          {
            v12 = **&MEMORY[0x1E6960CC0];
          }

          CFRetain(a1);
          v8 = *(DerivedStorage + 112);
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __itemairplay_resetTimeToPausePlayback_block_invoke;
          v9[3] = &__block_descriptor_76_e5_v8__0l;
          v10 = v7;
          v9[4] = DerivedStorage;
          v9[5] = a1;
          v11 = v12;
          dispatch_async(v8, v9);
        }
      }
    }
  }
}

CFArrayRef __playerairplay_getPreloadAssetPropertiesArray_block_invoke()
{
  values[4] = *MEMORY[0x1E69E9840];
  values[0] = @"Duration";
  values[1] = @"MediaSelectionArray";
  values[2] = @"assetProperty_OriginalNetworkContentURL";
  values[3] = @"assetProperty_ProtectedStatus";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 4, MEMORY[0x1E695E9C0]);
  playerairplay_getPreloadAssetPropertiesArray_sPreloadAssetPropertiesArray = result;
  return result;
}

void playerairplay_updateSubPlayerPlayQueue()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v71 = 0;
  v72 = -1;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v1 = DerivedStorage[1];
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v2)
  {
    v2(v1, 0);
  }

  v3 = playqueue_createPlayQueueSnapshot(DerivedStorage[5], &v72);
  v4 = v3;
  if (v72 == -1 || (ValueAtIndex = CFArrayGetValueAtIndex(v3, v72)) == 0)
  {
    v6 = 0;
    if (!v4)
    {
      goto LABEL_60;
    }

    goto LABEL_8;
  }

  v6 = CFRetain(ValueAtIndex);
  if (v4)
  {
LABEL_8:
    Count = CFArrayGetCount(v4);
    if (Count < 1)
    {
      goto LABEL_60;
    }

    v8 = 0;
    allocator = *MEMORY[0x1E695E480];
    v56 = *MEMORY[0x1E695E4C0];
    v57 = *MEMORY[0x1E695E4D0];
    while (1)
    {
      v9 = CFArrayGetValueAtIndex(v4, v8);
      v10 = CMBaseObjectGetDerivedStorage();
      FigReadWriteLockLockForRead();
      if (!*(v10 + 72))
      {
        if (*(v10 + 700))
        {
          break;
        }
      }

LABEL_11:
      FigReadWriteLockUnlockForRead();
      if (Count == ++v8)
      {
        goto LABEL_60;
      }
    }

    if (v9 == v6)
    {
      v11 = *(v10 + 816);
      *(v10 + 152) = v11;
      *(v10 + 816) = FPSupport_IncrementSeekID(v11);
    }

    v12 = *(v10 + 192);
    if (!v12)
    {
LABEL_29:
      if (*(v10 + 152))
      {
        Mutable = CFDictionaryCreateMutable(allocator, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetInt32();
        v23 = *(v10 + 8);
        v59 = *(v10 + 160);
        v24 = *(*(CMBaseObjectGetVTable() + 16) + 176);
        if (!v24 || (v73[0] = v59, v24(v23, v73, Mutable)))
        {
          *(v10 + 152) = 0;
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      else
      {
        v25 = *(v10 + 8);
        v26 = *(v10 + 188);
        v59 = *(v10 + 160);
        v27 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v27)
        {
          v73[0] = v59;
          v27(v25, v73, v26);
        }
      }

LABEL_37:
      v28 = *(v10 + 8);
      v73[0] = *(v10 + 488);
      itemairplay_setItemPropertyAsTime(v28, @"TimeToPauseBuffering", v73);
      v29 = *(v10 + 8);
      v73[0] = *(v10 + 512);
      itemairplay_setItemPropertyAsTime(v29, @"TimeToPausePlayback", v73);
      if (*(v10 + 158))
      {
        v30 = v57;
      }

      else
      {
        v30 = v56;
      }

      FigBaseObject = FigPlaybackItemGetFigBaseObject(*(v10 + 8));
      v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v32)
      {
        v32(FigBaseObject, @"SnapTimeToPausePlayback", v30);
      }

      v33 = *(v10 + 776);
      v34 = FigPlaybackItemGetFigBaseObject(*(v10 + 8));
      v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v35)
      {
        v35(v34, @"interstitialEvents", v33);
      }

      v36 = *(v10 + 752);
      v37 = FigPlaybackItemGetFigBaseObject(*(v10 + 8));
      v38 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v38)
      {
        v38(v37, @"currentInterstitialEvent", v36);
      }

      v39 = DerivedStorage[13];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __playerairplay_updateSubPlayerPlayQueue_block_invoke;
      block[3] = &unk_1E748B850;
      block[7] = v10;
      block[8] = v9;
      block[4] = &v64;
      block[5] = &v60;
      block[6] = &v68;
      dispatch_sync(v39, block);
      v40 = v69[3];
      if (v40)
      {
        v41 = FigPlaybackItemGetFigBaseObject(*(v10 + 8));
        v42 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v42)
        {
          v42(v41, @"SelectedMediaArray", v40);
        }
      }

      else
      {
        v43 = v65[3];
        if (v43 || v61[3])
        {
          v44 = FigPlaybackItemGetFigBaseObject(*(v10 + 8));
          v45 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v45)
          {
            v45(v44, @"MediaPresentationLanguages", v43);
          }

          v46 = v61[3];
          v47 = FigPlaybackItemGetFigBaseObject(*(v10 + 8));
          v48 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v48)
          {
            v48(v47, @"kFigPlaybackItemProperty_MediaPresentationCharacteristics", v46);
          }
        }
      }

      v49 = DerivedStorage[1];
      v50 = *(v10 + 8);
      v51 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v51)
      {
        v51(v49, v50, 0);
      }

      goto LABEL_11;
    }

    if (*(v10 + 224))
    {
      v13 = FigPlaybackItemGetFigBaseObject(*(v10 + 8));
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v14)
      {
        goto LABEL_25;
      }

      v15 = @"estimatedCurrentDate";
    }

    else
    {
      v17 = *(v10 + 152);
      v18 = *(v10 + 8);
      if (v17)
      {
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 128);
        if (!v19)
        {
          goto LABEL_25;
        }

        v16 = v19(v18, v12, v17);
        goto LABEL_24;
      }

      v13 = FigPlaybackItemGetFigBaseObject(*(v10 + 8));
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v14)
      {
        goto LABEL_25;
      }

      v15 = @"currentDate";
    }

    v16 = v14(v13, v15, v12);
LABEL_24:
    if (!v16)
    {
      v20 = 0;
LABEL_26:
      v21 = *(v10 + 192);
      if (v21)
      {
        CFRelease(v21);
        *(v10 + 192) = 0;
      }

      if (!v20)
      {
        goto LABEL_37;
      }

      goto LABEL_29;
    }

LABEL_25:
    *(v10 + 152) = 0;
    v20 = 1;
    goto LABEL_26;
  }

LABEL_60:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v52 = v69[3];
  if (v52)
  {
    CFRelease(v52);
  }

  v53 = v65[3];
  if (v53)
  {
    CFRelease(v53);
  }

  v54 = v61[3];
  if (v54)
  {
    CFRelease(v54);
  }

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
}

void sub_19662A258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 216), 8);
  _Block_object_dispose((v36 - 184), 8);
  _Unwind_Resume(a1);
}

uint64_t playerairplay_forwardStartupTasksToSubPlayerApply(uint64_t a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 8);
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 128);
  if (v6)
  {

    return v6(v2, a1);
  }

  return result;
}

void __playerairplay_switchFromAirPlayVideoToLocal_block_invoke(uint64_t a1)
{
  playerairplay_switchFromAirPlayVideoToLocal(*(a1 + 32), 0);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t itemairplay_releaseCPEProtector()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (!*(DerivedStorage + 72))
  {
    v1 = *(DerivedStorage + 432);
    if (v1)
    {
      CFRelease(v1);
      *(DerivedStorage + 432) = 0;
    }

    v2 = *(DerivedStorage + 632);
    if (v2)
    {
      v3 = *(CMBaseObjectGetVTable() + 16);
      if (*v3)
      {
        v4 = v3[12];
        if (v4)
        {
          v4(v2);
        }
      }

      v5 = *(DerivedStorage + 632);
      if (v5)
      {
        CFRelease(v5);
        *(DerivedStorage + 632) = 0;
      }
    }

    *(DerivedStorage + 703) = 0;
  }

  return FigReadWriteLockUnlockForRead();
}

void itemairplay_setItemPropertyAsTime(uint64_t a1, uint64_t a2, CMTime *a3)
{
  v5 = *MEMORY[0x1E695E480];
  v9 = *a3;
  v6 = CMTimeCopyAsDictionary(&v9, v5);
  FigBaseObject = FigPlaybackItemGetFigBaseObject(a1);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v8)
  {
    v8(FigBaseObject, a2, v6);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t __playerairplay_updateSubPlayerPlayQueue_block_invoke(uint64_t result)
{
  if (*(*(result + 56) + 352))
  {
    return __playerairplay_updateSubPlayerPlayQueue_block_invoke_cold_1(result, result + 56);
  }

  return result;
}

void __playerairplay_airplayRouteDeselectedCallback_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    __playerairplay_airplayRouteDeselectedCallback_block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }
}

void __playerairplay_playbackWillBeInterruptedNotificationCallback_block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  if (!**(a1 + 32))
  {
    v2 = (a1 + 40);
    if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) <= 2)
    {
      __playerairplay_playbackWillBeInterruptedNotificationCallback_block_invoke_cold_1(v1, v2);
    }
  }
}

void __playerairplay_playbackWillBeInterruptedNotificationCallback_block_invoke_2(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    __playerairplay_playbackWillBeInterruptedNotificationCallback_block_invoke_2_cold_1();
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }
}

void __playerairplay_primaryAppChangedCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2 && v2[408] != *(a1 + 56))
  {
    IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive();
    v4 = *(a1 + 40);
    *(*(a1 + 32) + 408) = *(a1 + 56);
    playerairplay_checkStartStopAirPlay(v4, IsAirplayVideoActive);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {

    CFRelease(v6);
  }
}

void __playerairplay_audioModeChangedCallback_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    __playerairplay_audioModeChangedCallback_block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __playerairplay_airplayRouteChangedPausePlaybackCallback_block_invoke(uint64_t a1)
{
  cf[22] = *MEMORY[0x1E69E9840];
  if (!**(a1 + 32) && *(CMBaseObjectGetDerivedStorage() + 296))
  {
    cf[0] = 0;
    if (dword_1EAF172E8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 19, cf);
    v4 = *(*(a1 + 32) + 8);
    v5 = cf[0];
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (v6)
    {
      v6(v4, v5, 0.0);
    }

    playerairplay_updatePlayerRateToMatch(*(a1 + 40), cf[0], 0.0);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t __playerairplay_cleanUpScrubLayerAndContext_block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  if (v3)
  {
    [v3 setContents:0];
    [*(*(a1 + 32) + 152) removeFromSuperlayer];
    v2 = *(a1 + 32);
    v4 = *(v2 + 152);
    if (v4)
    {
      CFRelease(v4);
      v2 = *(a1 + 32);
      *(v2 + 152) = 0;
    }
  }

  v5 = *(v2 + 144);
  if (v5)
  {
    CFRelease(v5);
    *(*(a1 + 32) + 144) = 0;
  }

  v6 = MEMORY[0x1E6979518];

  return [v6 commit];
}

BOOL playerairplay_isInterstitialsWithIntegratedTimelineAllowed()
{
  if (*(CMBaseObjectGetDerivedStorage() + 242) && (DerivedStorage = CMBaseObjectGetDerivedStorage(), *(DerivedStorage + 240)))
  {
    return *(DerivedStorage + 241) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t playerairplay_copyPropertyAndWaitTillCompleteOrTimesOut(const void *a1, const void *a2, const void *a3, int64_t a4, void *a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__6;
  v32 = __Block_byref_object_dispose__6;
  v33 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  if (*DerivedStorage)
  {
    v22 = 0;
    v23 = 4294954511;
  }

  else
  {
    if (*(DerivedStorage + 280))
    {
      v12 = dispatch_semaphore_create(0);
      v29[5] = v12;
      if (v12)
      {
        Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 40);
        v39[3] = Mutable;
        if (Mutable)
        {
          CFDataSetLength(Mutable, 40);
          MutableBytePtr = CFDataGetMutableBytePtr(v39[3]);
          v35[3] = MutableBytePtr;
          if (MutableBytePtr)
          {
            if (a1)
            {
              CFRetain(a1);
            }

            if (a2)
            {
              CFRetain(a2);
            }

            if (a3)
            {
              CFRetain(a3);
            }

            v15 = v39[3];
            if (v15)
            {
              CFRetain(v15);
            }

            v16 = v29[5];
            if (v16)
            {
              dispatch_retain(v16);
            }

            v17 = *(v11 + 112);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __playerairplay_copyPropertyAndWaitTillCompleteOrTimesOut_block_invoke;
            block[3] = &unk_1E748B878;
            block[8] = a1;
            block[9] = a2;
            block[4] = &v34;
            block[5] = &v28;
            block[6] = &v38;
            block[7] = v11;
            block[10] = a3;
            dispatch_async(v17, block);
            v18 = v29[5];
            v19 = dispatch_time(0, a4);
            if (!dispatch_semaphore_wait(v18, v19))
            {
              v21 = v35[3];
              v22 = *(v21 + 16);
              v23 = *(v21 + 32);
              *(v21 + 16) = 0;
              goto LABEL_21;
            }

            if (dword_1EAF172E8)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }
    }

    v23 = 0;
    v22 = 0;
  }

LABEL_21:
  v24 = v29[5];
  if (v24)
  {
    dispatch_release(v24);
  }

  v25 = v39[3];
  if (v25)
  {
    CFRelease(v25);
  }

  if (a5)
  {
    *a5 = v22;
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  return v23;
}

void sub_19662AEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void pap_playbackSessionGetProxiedPropertyCompletion(int a1, const void *a2, int a3, CFMutableDataRef theData)
{
  MutableBytePtr = CFDataGetMutableBytePtr(theData);
  if (MutableBytePtr)
  {
    v8 = MutableBytePtr;
    if (a2)
    {
      v9 = CFRetain(a2);
    }

    else
    {
      v9 = 0;
    }

    *(v8 + 2) = v9;
    *(v8 + 8) = a3;
    global_queue = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __pap_playbackSessionGetProxiedPropertyCompletion_block_invoke;
    v11[3] = &__block_descriptor_48_e5_v8__0l;
    v11[4] = v8;
    v11[5] = theData;
    dispatch_async(global_queue, v11);
  }
}

void __pap_playbackSessionGetProxiedPropertyCompletion_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = dispatch_semaphore_signal(v3);
    v2 = *(a1 + 32);
    if (!v4)
    {
      v5 = *(v2 + 16);
      if (v5)
      {
        CFRelease(v5);
        *(*(a1 + 32) + 16) = 0;
        v2 = *(a1 + 32);
      }
    }
  }

  if (*v2)
  {
    CFRelease(*v2);
    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 24);
  if (v6)
  {
    CFRelease(v6);
    v2 = *(a1 + 32);
  }

  v7 = *(v2 + 8);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(a1 + 40);

  CFRelease(v8);
}

uint64_t playerairplay_handleSetProperty(const void *a1, uint64_t a2, const void *a3, const __CFBoolean *a4, _BYTE *a5, void *a6, void *a7)
{
  v121 = *MEMORY[0x1E69E9840];
  v117 = 0;
  v118 = &v117;
  v119 = 0x2020000000;
  v120 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    goto LABEL_2;
  }

  if (CFEqual(a3, @"AllowsAirPlayVideo"))
  {
    if (a4)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(a4))
      {
        Value = CFBooleanGetValue(a4);
        if (dword_1EAF172E8)
        {
          v116 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (Value == *(DerivedStorage + 48))
        {
          goto LABEL_52;
        }

        IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive();
        *(DerivedStorage + 48) = Value;
        if (a1)
        {
          CFRetain(a1);
        }

        v27 = *(DerivedStorage + 112);
        v113[0] = MEMORY[0x1E69E9820];
        v113[1] = 3221225472;
        v113[2] = __playerairplay_handleSetProperty_block_invoke;
        v113[3] = &__block_descriptor_49_e5_v8__0l;
        v113[4] = DerivedStorage;
        v113[5] = a1;
        v114 = IsAirplayVideoActive;
        v28 = v113;
        goto LABEL_51;
      }
    }

    goto LABEL_14;
  }

  if (FigCFEqual())
  {
    if (a4)
    {
      v17 = CFGetTypeID(a4);
      if (v17 == CFBooleanGetTypeID())
      {
        v18 = CFBooleanGetValue(a4);
        if (dword_1EAF172E8)
        {
          v116 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v18 == *(DerivedStorage + 49))
        {
          goto LABEL_52;
        }

        v40 = playerairplay_getIsAirplayVideoActive();
        *(DerivedStorage + 49) = v18;
        if (a1)
        {
          CFRetain(a1);
        }

        v27 = *(DerivedStorage + 112);
        v111[0] = MEMORY[0x1E69E9820];
        v111[1] = 3221225472;
        v111[2] = __playerairplay_handleSetProperty_block_invoke_176;
        v111[3] = &__block_descriptor_49_e5_v8__0l;
        v111[4] = DerivedStorage;
        v111[5] = a1;
        v112 = v40;
        v28 = v111;
LABEL_51:
        dispatch_async(v27, v28);
LABEL_52:
        v20 = 1;
        goto LABEL_53;
      }
    }

LABEL_14:
    v20 = 0;
    *(v118 + 6) = FigSignalErrorAtGM();
    goto LABEL_53;
  }

  if (CFEqual(a3, @"ParticipatingInCoordinatedPlayback"))
  {
    if (a4)
    {
      v21 = CFBooleanGetTypeID();
      if (v21 == CFGetTypeID(a4))
      {
        v22 = CFBooleanGetValue(a4);
        if (dword_1EAF172E8)
        {
          v116 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v22 == *(DerivedStorage + 456))
        {
          goto LABEL_46;
        }

        v36 = playerairplay_getIsAirplayVideoActive();
        v37 = v36;
        *(DerivedStorage + 456) = v22;
        playerairplay_notifyIfIsAirPlayVideoActiveChanged(a1, v36);
        if (a1)
        {
          CFRetain(a1);
        }

        v38 = *(DerivedStorage + 112);
        v109[0] = MEMORY[0x1E69E9820];
        v109[1] = 3221225472;
        v109[2] = __playerairplay_handleSetProperty_block_invoke_177;
        v109[3] = &__block_descriptor_49_e5_v8__0l;
        v109[4] = DerivedStorage;
        v109[5] = a1;
        v110 = v37;
        v39 = v109;
        goto LABEL_45;
      }
    }

LABEL_2:
    *(v118 + 6) = FigSignalErrorAtGM();
    goto LABEL_62;
  }

  if (CFEqual(a3, @"PickerContextUUID"))
  {
    if (!a4 || (v24 = CFGetTypeID(a4), v24 == CFStringGetTypeID()))
    {
      FigBytePumpGetFigBaseObject(*(DerivedStorage + 208));
      CMBaseObjectSetProperty(v25, 0x1F0B25938, a4);
    }

    goto LABEL_46;
  }

  if (CFEqual(a3, @"ActionAtEnd"))
  {
    if (!a4)
    {
      goto LABEL_38;
    }

    v29 = CFGetTypeID(a4);
    if (v29 != CFStringGetTypeID())
    {
      goto LABEL_38;
    }

    v30 = *(DerivedStorage + 128);
    *(DerivedStorage + 128) = a4;
    CFRetain(a4);
    if (v30)
    {
      CFRelease(v30);
    }

    if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) > 2)
    {
      goto LABEL_38;
    }

    if (a1)
    {
      CFRetain(a1);
    }

    v31 = *(DerivedStorage + 112);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __playerairplay_handleSetProperty_block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    v32 = block;
    goto LABEL_37;
  }

  if (CFEqual(a3, @"UsesAirPlayVideoWhileAirPlayScreenIsActive"))
  {
    if (!a4)
    {
      goto LABEL_14;
    }

    v48 = CFBooleanGetTypeID();
    if (v48 != CFGetTypeID(a4))
    {
      goto LABEL_14;
    }

    v49 = playerairplay_getIsAirplayVideoActive();
    v50 = CFBooleanGetValue(a4);
    if (dword_1EAF172E8)
    {
      v116 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v50 == *(DerivedStorage + 52))
    {
LABEL_46:
      v20 = 0;
      goto LABEL_53;
    }

    *(DerivedStorage + 52) = v50;
    if (a1)
    {
      CFRetain(a1);
    }

    v38 = *(DerivedStorage + 112);
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 3221225472;
    v106[2] = __playerairplay_handleSetProperty_block_invoke_178;
    v106[3] = &__block_descriptor_49_e5_v8__0l;
    v106[4] = DerivedStorage;
    v106[5] = a1;
    v107 = v49;
    v39 = v106;
LABEL_45:
    dispatch_async(v38, v39);
    goto LABEL_46;
  }

  if (CFEqual(a3, @"ClientInBackground"))
  {
    if (!a4)
    {
      goto LABEL_14;
    }

    v53 = CFBooleanGetTypeID();
    if (v53 != CFGetTypeID(a4))
    {
      goto LABEL_14;
    }

    v54 = playerairplay_getIsAirplayVideoActive();
    v55 = CFBooleanGetValue(a4);
    doesCurrentRouteUseScreen = pap_doesCurrentRouteUseScreen();
    *(DerivedStorage + 200) = v55;
    if (v55)
    {
      v57 = doesCurrentRouteUseScreen;
      v58 = CMBaseObjectGetDerivedStorage();
      if (*(v58 + 48))
      {
        if (*(v58 + 49) && *(DerivedStorage + 52) && v57 && pap_isDeviceUnlocked())
        {
          if (a1)
          {
            CFRetain(a1);
          }

          v59 = *(DerivedStorage + 112);
          v105[0] = MEMORY[0x1E69E9820];
          v105[1] = 3221225472;
          v105[2] = __playerairplay_handleSetProperty_block_invoke_2_179;
          v105[3] = &__block_descriptor_48_e5_v8__0l;
          v105[4] = DerivedStorage;
          v105[5] = a1;
          dispatch_async(v59, v105);
        }
      }
    }

    if (a1)
    {
      CFRetain(a1);
    }

    v60 = *(DerivedStorage + 112);
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __playerairplay_handleSetProperty_block_invoke_3;
    v103[3] = &__block_descriptor_49_e5_v8__0l;
    v103[4] = DerivedStorage;
    v103[5] = a1;
    v104 = v54;
    dispatch_async(v60, v103);
    v20 = 0;
    v61 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v61 && v61 != 10)
    {
      if (!playqueue_getNumItemsInMediaControlPlaylist(*(DerivedStorage + 40)))
      {
        goto LABEL_46;
      }

      if (a1)
      {
        CFRetain(a1);
      }

      v38 = *(DerivedStorage + 112);
      v102[0] = MEMORY[0x1E69E9820];
      v102[1] = 3221225472;
      v102[2] = __playerairplay_handleSetProperty_block_invoke_4;
      v102[3] = &__block_descriptor_48_e5_v8__0l;
      v102[4] = DerivedStorage;
      v102[5] = a1;
      v39 = v102;
      goto LABEL_45;
    }

    goto LABEL_53;
  }

  if (CFEqual(a3, @"DisplayTimedMetadata"))
  {
    if (a4)
    {
      v62 = CFBooleanGetTypeID();
      if (v62 == CFGetTypeID(a4))
      {
        v33 = 0;
        *(DerivedStorage + 136) = CFBooleanGetValue(a4);
LABEL_152:
        v34 = 1;
        goto LABEL_39;
      }
    }

LABEL_151:
    v33 = 0;
    goto LABEL_152;
  }

  if (CFEqual(a3, @"UseAirPlayVideoAudioOnlyMode"))
  {
    if (a4)
    {
      v63 = CFBooleanGetTypeID();
      if (v63 == CFGetTypeID(a4))
      {
        *(DerivedStorage + 51) = CFBooleanGetValue(a4);
        goto LABEL_52;
      }
    }

LABEL_113:
    *(v118 + 6) = FigSignalErrorAtGM();
    goto LABEL_52;
  }

  if (CFEqual(a3, @"EnableBufferedAirPlayLocalPlayback") || CFEqual(a3, @"BufferedAirPlayLocalPlaybackVolume"))
  {
    goto LABEL_113;
  }

  if (CFEqual(a3, @"PlayerMuted"))
  {
    if (a4)
    {
      v64 = CFGetTypeID(a4);
      if (v64 == CFBooleanGetTypeID())
      {
        v65 = CFBooleanGetValue(a4);
        v66 = v65;
        if (v65 != *(DerivedStorage + 137))
        {
          *(DerivedStorage + 137) = v65;
          v67 = *(CMBaseObjectGetDerivedStorage() + 216);
          if (v67)
          {
            if (v67 != 10)
            {
              if (a1)
              {
                CFRetain(a1);
              }

              v68 = *(DerivedStorage + 112);
              v101[0] = MEMORY[0x1E69E9820];
              v101[1] = 3221225472;
              v101[2] = __playerairplay_handleSetProperty_block_invoke_5;
              v101[3] = &__block_descriptor_40_e5_v8__0l;
              v101[4] = a1;
              dispatch_async(v68, v101);
            }
          }
        }

        if (a1)
        {
          CFRetain(a1);
        }

        v69 = *(DerivedStorage + 112);
        v99[0] = MEMORY[0x1E69E9820];
        v99[1] = 3221225472;
        v99[2] = __playerairplay_handleSetProperty_block_invoke_6;
        v99[3] = &unk_1E748B8A0;
        v99[4] = &v117;
        v99[5] = a1;
        v100 = v66;
        v70 = v99;
LABEL_150:
        dispatch_async(v69, v70);
        goto LABEL_151;
      }
    }

    goto LABEL_133;
  }

  if (CFEqual(a3, @"AppliesMediaSelectionCriteriaAutomatically"))
  {
    if (a4)
    {
      v71 = CFGetTypeID(a4);
      if (v71 == CFBooleanGetTypeID())
      {
        if (a1)
        {
          CFRetain(a1);
        }

        CFRetain(a4);
        v69 = *(DerivedStorage + 104);
        v98[0] = MEMORY[0x1E69E9820];
        v98[1] = 3221225472;
        v98[2] = __playerairplay_handleSetProperty_block_invoke_7;
        v98[3] = &__block_descriptor_56_e5_v8__0l;
        v98[4] = DerivedStorage;
        v98[5] = a1;
        v98[6] = a4;
        v70 = v98;
        goto LABEL_150;
      }
    }

LABEL_133:
    v33 = 0;
    v34 = 0;
    *(v118 + 6) = FigSignalErrorAtGM();
    goto LABEL_39;
  }

  if (CFEqual(a3, @"MediaSelectionCriteria"))
  {
    if (!a4 || (v72 = CFGetTypeID(a4), v72 == CFDictionaryGetTypeID()))
    {
      if (a1)
      {
        CFRetain(a1);
      }

      if (a4)
      {
        CFRetain(a4);
      }

      v69 = *(DerivedStorage + 104);
      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v97[2] = __playerairplay_handleSetProperty_block_invoke_8;
      v97[3] = &unk_1E748B8C8;
      v97[6] = a1;
      v97[7] = a4;
      v97[4] = &v117;
      v97[5] = DerivedStorage;
      v70 = v97;
      goto LABEL_150;
    }

    goto LABEL_133;
  }

  if (CFEqual(a3, @"LegibleFallbackMediaSelectionCriteria"))
  {
    if (!a4 || (v73 = CFGetTypeID(a4), v73 == CFDictionaryGetTypeID()))
    {
      if (a1)
      {
        CFRetain(a1);
      }

      if (a4)
      {
        CFRetain(a4);
      }

      v69 = *(DerivedStorage + 104);
      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 3221225472;
      v96[2] = __playerairplay_handleSetProperty_block_invoke_9;
      v96[3] = &__block_descriptor_56_e5_v8__0l;
      v96[4] = DerivedStorage;
      v96[5] = a1;
      v96[6] = a4;
      v70 = v96;
      goto LABEL_150;
    }

    goto LABEL_133;
  }

  if (CFEqual(a3, @"AllowsLegibleFallbackMediaSelectionCriteriaForAllAudibleMediaSelections"))
  {
    if (!a4)
    {
      goto LABEL_38;
    }

    v74 = CFGetTypeID(a4);
    if (v74 != CFBooleanGetTypeID())
    {
      goto LABEL_38;
    }

    if (a1)
    {
      CFRetain(a1);
    }

    CFRetain(a4);
    v69 = *(DerivedStorage + 104);
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __playerairplay_handleSetProperty_block_invoke_10;
    v95[3] = &__block_descriptor_56_e5_v8__0l;
    v95[4] = DerivedStorage;
    v95[5] = a1;
    v95[6] = a4;
    v70 = v95;
    goto LABEL_150;
  }

  if (CFEqual(a3, @"AutomaticallyWaitsToMinimizeStalling"))
  {
    if (!a4)
    {
      goto LABEL_38;
    }

    v75 = CFGetTypeID(a4);
    if (v75 != CFBooleanGetTypeID())
    {
      goto LABEL_38;
    }

    v76 = CFBooleanGetValue(a4);
    if (v76 == *(DerivedStorage + 80))
    {
      goto LABEL_38;
    }

    v33 = 0;
    v34 = 0;
    *(DerivedStorage + 80) = v76;
LABEL_39:
    *a5 = 0;
    if (a3)
    {
      v35 = CFRetain(a3);
    }

    else
    {
      v35 = 0;
    }

    *a6 = v35;
    if (a4)
    {
      v52 = CFRetain(a4);
    }

    else
    {
      v52 = 0;
    }

    *a7 = v52;
    if (!v34)
    {
      goto LABEL_58;
    }

    goto LABEL_54;
  }

  if (CFEqual(a3, @"FigAudioSession"))
  {
    FigBytePumpGetFigBaseObject(*(DerivedStorage + 208));
    CMBaseObjectSetProperty(v77, 0x1F0B22118, a4);
    if (a4)
    {
      playerairplay_updateAirPlayVideoIsActiveProperty();
    }

    if (a1)
    {
      CFRetain(a1);
    }

    if (a4)
    {
      CFRetain(a4);
    }

    v31 = *(DerivedStorage + 112);
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __playerairplay_handleSetProperty_block_invoke_11;
    v94[3] = &__block_descriptor_56_e5_v8__0l;
    v94[4] = a4;
    v94[5] = DerivedStorage;
    v94[6] = a1;
    v32 = v94;
LABEL_37:
    dispatch_async(v31, v32);
LABEL_38:
    v33 = 0;
    v34 = 0;
    goto LABEL_39;
  }

  if (CFEqual(a3, @"AudioModeIsMoviePlayback"))
  {
    if (!a4)
    {
      goto LABEL_38;
    }

    v78 = CFGetTypeID(a4);
    if (v78 != CFBooleanGetTypeID())
    {
      goto LABEL_38;
    }

    if (a1)
    {
      CFRetain(a1);
    }

    CFRetain(a4);
    v31 = *(DerivedStorage + 112);
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __playerairplay_handleSetProperty_block_invoke_12;
    v93[3] = &__block_descriptor_56_e5_v8__0l;
    v93[4] = DerivedStorage;
    v93[5] = a1;
    v93[6] = a4;
    v32 = v93;
    goto LABEL_37;
  }

  if (CFEqual(a3, @"InterstitialAirPlayPlayer"))
  {
    if (a1)
    {
      CFRetain(a1);
    }

    if (a4)
    {
      CFRetain(a4);
    }

    v38 = *(DerivedStorage + 112);
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __playerairplay_handleSetProperty_block_invoke_13;
    v92[3] = &__block_descriptor_56_e5_v8__0l;
    v92[4] = DerivedStorage;
    v92[5] = a4;
    v92[6] = a1;
    v39 = v92;
    goto LABEL_45;
  }

  if (!CFEqual(a3, @"ItemsToPrebuffer"))
  {
    if (CFEqual(a3, @"CurrentInterstitialEventSkippableState"))
    {
      if (!a4)
      {
        goto LABEL_46;
      }

      v83 = CFGetTypeID(a4);
      if (v83 != CFDictionaryGetTypeID())
      {
        goto LABEL_46;
      }

      v84 = *(DerivedStorage + 384);
      *(DerivedStorage + 384) = a4;
      CFRetain(a4);
      if (v84)
      {
        CFRelease(v84);
      }

      if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) > 2)
      {
        goto LABEL_46;
      }

      if (a1)
      {
        CFRetain(a1);
      }

      v38 = *(DerivedStorage + 112);
      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 3221225472;
      v91[2] = __playerairplay_handleSetProperty_block_invoke_14;
      v91[3] = &__block_descriptor_48_e5_v8__0l;
      v91[4] = a1;
      v91[5] = DerivedStorage;
      v39 = v91;
      goto LABEL_45;
    }

    if (!CFEqual(a3, @"ExternalPlaybackInterstitialSchedulingStrategy"))
    {
      goto LABEL_38;
    }

    if (!a4)
    {
      goto LABEL_46;
    }

    v86 = CFGetTypeID(a4);
    if (v86 != CFNumberGetTypeID())
    {
      goto LABEL_46;
    }

    v20 = 0;
    *(DerivedStorage + 240) = FigCFNumberGetSInt32() != 1;
LABEL_53:
    v33 = 0;
    *a5 = 1;
    if (!v20)
    {
      goto LABEL_58;
    }

LABEL_54:
    v41 = pap_copyInterstitialPlayer();
    v42 = v41;
    if (v41)
    {
      FigBaseObject = FigPlayerGetFigBaseObject(v41);
      v44 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v44)
      {
        v44(FigBaseObject, a3, a4);
      }

      CFRelease(v42);
    }

LABEL_58:
    v45 = 0;
    if (!v33)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (!a4)
  {
    v82 = 0;
    Mutable = 0;
    v85 = *(DerivedStorage + 32);
    *(DerivedStorage + 32) = 0;
LABEL_212:
    if (v85)
    {
      CFRelease(v85);
    }

    v34 = 0;
    a4 = v82;
    v33 = Mutable;
    goto LABEL_39;
  }

  v79 = CFGetTypeID(a4);
  if (v79 != CFArrayGetTypeID())
  {
    goto LABEL_2;
  }

  capacity = CFArrayGetCount(a4);
  if (capacity < 1)
  {
    Mutable = 0;
    v82 = a4;
LABEL_211:
    v85 = *(DerivedStorage + 32);
    *(DerivedStorage + 32) = a4;
    CFRetain(a4);
    goto LABEL_212;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    goto LABEL_2;
  }

  idx = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a4, idx);
    if (!ValueAtIndex || (v81 = CFGetTypeID(ValueAtIndex), v81 != FigPlaybackItemGetTypeID()) || CMBaseObjectGetVTable() != &kFigPlaybackItemAirPlayVTable_1)
    {
      v87 = FigSignalErrorAtGM();
      v45 = 0;
      goto LABEL_223;
    }

    CMBaseObjectGetDerivedStorage();
    v45 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v45 != a1)
    {
      break;
    }

    FigCFArrayAppendValue();
    if (a1)
    {
      CFRelease(v45);
    }

    if (capacity == ++idx)
    {
      v82 = Mutable;
      goto LABEL_211;
    }
  }

  v87 = FigSignalErrorAtGM();
LABEL_223:
  *(v118 + 6) = v87;
  v33 = Mutable;
LABEL_59:
  CFRelease(v33);
LABEL_60:
  if (v45)
  {
    CFRelease(v45);
  }

LABEL_62:
  v46 = *(v118 + 6);
  _Block_object_dispose(&v117, 8);
  return v46;
}

void __playerairplay_handleSetProperty_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    playerairplay_checkStartStopAirPlay(*(a1 + 40), *(a1 + 48));
    playerairplay_syncUpSubPlayerRateIfNeeded();
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void playerairplay_syncUpSubPlayerRateIfNeeded()
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v1 == 10 || v1 == 0)
  {
    v11 = 0.0;
    if (*(DerivedStorage + 56) != 0.0)
    {
      v3 = *(DerivedStorage + 8);
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v4)
      {
        if (!v4(v3, &v11) && *(DerivedStorage + 56) != v11)
        {
          cf = 0;
          if (dword_1EAF172E8)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 19, &cf);
          v6 = *(DerivedStorage + 8);
          v7 = *(DerivedStorage + 56);
          v8 = cf;
          v9 = *(*(CMBaseObjectGetVTable() + 16) + 104);
          if (v9)
          {
            v9(v6, v8, v7);
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

void __playerairplay_handleSetProperty_block_invoke_176(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    playerairplay_checkStartStopAirPlay(*(a1 + 40), *(a1 + 48));
    playerairplay_syncUpSubPlayerRateIfNeeded();
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __playerairplay_handleSetProperty_block_invoke_177(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2)
  {
    StopAndReleaseTimer((v2 + 496));
    v4 = (a1 + 40);
    playerairplay_checkStartStopAirPlay(*(a1 + 40), *(a1 + 48));
    if (playerairplay_getIsAirplayVideoActive())
    {
      __playerairplay_handleSetProperty_block_invoke_177_cold_1();
    }

    playerairplay_updateShareAndAirPlayEchoMitigation(*v4);
    v5 = *v4;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) <= 2)
    {
      __playerairplay_handleSetProperty_block_invoke_177_cold_2(DerivedStorage, v5);
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __playerairplay_handleSetProperty_block_invoke_2(uint64_t a1)
{
  playerairplay_setActionAtEndOnAirPlayController();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __playerairplay_handleSetProperty_block_invoke_178(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    playerairplay_checkStartStopAirPlay(*(a1 + 40), *(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __playerairplay_handleSetProperty_block_invoke_2_179(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    __playerairplay_handleSetProperty_block_invoke_2_179_cold_1();
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }
}

void __playerairplay_handleSetProperty_block_invoke_3(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    playerairplay_checkStartStopAirPlay(*(a1 + 40), *(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __playerairplay_handleSetProperty_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2)
  {
    v4 = *(v2 + 40);
    FigSimpleMutexLock();
    Count = CFArrayGetCount(*v4);
    if (Count < 1)
    {
LABEL_12:
      ValueAtIndex = 0;
    }

    else
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*v4, v7);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (!DerivedStorage[72] && DerivedStorage[701] && DerivedStorage[707] != 2)
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_12;
        }
      }
    }

    FigSimpleMutexUnlock();
    v10 = CMBaseObjectGetDerivedStorage();
    if (ValueAtIndex)
    {
      v11 = *(v10 + 216);
      if (v11 && v11 != 10)
      {
        itemairplay_controlPlaybackActivityTimer(ValueAtIndex, 2);
      }
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __playerairplay_handleSetProperty_block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    __playerairplay_handleSetProperty_block_invoke_5_cold_1(DerivedStorage, v2);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

void playerairplay_updateAndApplySelectedMediaArrayOnMediaControl(const void *a1)
{
  v4 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v3 = DerivedStorage, *DerivedStorage))
  {
    playerairplay_updateAndApplySelectedMediaArrayOnMediaControl_cold_2();
  }

  else if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) <= 2)
  {
    playerairplay_updateAndApplySelectedMediaArrayOnMediaControl_cold_1(v3, &v4, a1);
  }
}

void __playerairplay_handleSetProperty_block_invoke_11(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32) != *(*(a1 + 40) + 392))
  {
    __playerairplay_handleSetProperty_block_invoke_11_cold_1(a1, a1 + 40, (a1 + 32));
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *v2;
  if (*v2)
  {

    CFRelease(v4);
  }
}

void __playerairplay_handleSetProperty_block_invoke_12(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    __playerairplay_handleSetProperty_block_invoke_12_cold_1(a1);
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __playerairplay_handleSetProperty_block_invoke_13(void *a1)
{
  if (!*a1[4])
  {
    v2 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v3 = v2;
    v4 = a1[4];
    v5 = *(v4 + 360);
    *(v4 + 360) = v2;
    if (v2)
    {
      CFRetain(v2);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[6];
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t itemairplay_Invalidate(const void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  v5 = CMBaseObjectGetDerivedStorage();
  if (v4)
  {
    if (dword_1EAF172E8)
    {
      v6 = CMBaseObjectGetDerivedStorage();
      if (dword_1EAF172E8)
      {
        v7 = *(v6 + 216);
        if (v7 && v7 != 10)
        {
          v22 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    v10 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v10)
    {
      v11 = v10 == 10;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
      v13 = (v5 + 40);
    }

    else
    {
      v13 = (v5 + 40);
      if (playqueue_getIndexOfAirPlayItem(*(v5 + 40), a1) == -1)
      {
        goto LABEL_21;
      }

      if (*(v3 + 701))
      {
        v14 = CFRetain(*(v3 + 80));
        CFRetain(v4);
        v15 = *(v5 + 112);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __itemairplay_Invalidate_block_invoke;
        block[3] = &__block_descriptor_56_e5_v8__0l;
        block[4] = v5;
        block[5] = v4;
        block[6] = v14;
        dispatch_async(v15, block);
      }

      v12 = 1;
    }

    playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(*v13, a1, 1, v12);
  }

LABEL_21:
  *(v3 + 72) = 1;
  FigReadWriteLockLockForWrite();
  FigReadWriteLockUnlockForWrite();
  *(v3 + 696) = -1;
  if (v5)
  {
    FigSimpleMutexLock();
    CFDictionaryRemoveValue(*(v5 + 16), *(v3 + 8));
    FigSimpleMutexUnlock();
  }

  if (*(v3 + 16))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (*(v3 + 808))
  {
    itemairplay_Invalidate_cold_1(a1, (v3 + 808));
  }

  if (*(v3 + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    FigBaseObject = FigPlaybackItemGetFigBaseObject(*(v3 + 8));
    if (FigBaseObject)
    {
      v17 = FigBaseObject;
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v18)
      {
        v18(v17);
      }
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t itemairplay_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemairplay_Invalidate(a1);
  v3 = *(DerivedStorage + 648);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 648) = 0;
  }

  v4 = *(DerivedStorage + 656);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 656) = 0;
  }

  FigSimpleMutexDestroy();
  v5 = *(DerivedStorage + 680);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 680) = 0;
  }

  v6 = *(DerivedStorage + 744);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 744) = 0;
  }

  v7 = *(DerivedStorage + 16);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 16) = 0;
  }

  v8 = *(DerivedStorage + 8);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v9 = *(DerivedStorage + 32);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 32) = 0;
  }

  v10 = *(DerivedStorage + 40);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 40) = 0;
  }

  itemairplay_doCleanupAtEndOfPlayback();
  itemairplay_cleanupItemForAirPlay(a1, 0);
  v11 = *(DerivedStorage + 720);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 720) = 0;
  }

  v12 = *(DerivedStorage + 24);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 24) = 0;
  }

  v13 = *(DerivedStorage + 88);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 88) = 0;
  }

  v14 = *(DerivedStorage + 112);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 112) = 0;
  }

  if (*(DerivedStorage + 96))
  {
    MEMORY[0x19A8CDA00]();
    v15 = *(DerivedStorage + 96);
    if (v15)
    {
      CFRelease(v15);
      *(DerivedStorage + 96) = 0;
    }
  }

  v16 = *(DerivedStorage + 80);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 80) = 0;
  }

  v17 = *(DerivedStorage + 336);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 336) = 0;
  }

  if (*(DerivedStorage + 344))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 344) = 0;
  }

  v18 = *(DerivedStorage + 352);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 352) = 0;
  }

  v19 = *(DerivedStorage + 360);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 360) = 0;
  }

  v20 = *(DerivedStorage + 432);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 432) = 0;
  }

  v21 = *(DerivedStorage + 752);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 752) = 0;
  }

  v22 = *(DerivedStorage + 760);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 760) = 0;
  }

  v23 = *(DerivedStorage + 768);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 768) = 0;
  }

  v24 = *(DerivedStorage + 776);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 776) = 0;
  }

  v25 = *(DerivedStorage + 368);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 368) = 0;
  }

  v26 = *(DerivedStorage + 376);
  if (v26)
  {
    CFRelease(v26);
    *(DerivedStorage + 376) = 0;
  }

  v27 = *(DerivedStorage + 608);
  if (v27)
  {
    CFRelease(v27);
    *(DerivedStorage + 608) = 0;
  }

  v28 = *(DerivedStorage + 616);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 616) = 0;
  }

  v29 = *(DerivedStorage + 192);
  if (v29)
  {
    CFRelease(v29);
    *(DerivedStorage + 192) = 0;
  }

  v30 = *(DerivedStorage + 800);
  if (v30)
  {
    CFRelease(v30);
    *(DerivedStorage + 800) = 0;
  }

  v31 = *(DerivedStorage + 48);
  if (v31)
  {
    CFRelease(v31);
    *(DerivedStorage + 48) = 0;
  }

  v32 = *(DerivedStorage + 576);
  if (v32)
  {
    CFRelease(v32);
    *(DerivedStorage + 576) = 0;
  }

  FigSimpleMutexDestroy();
  v33 = *(DerivedStorage + 808);
  if (v33)
  {
    CFRelease(v33);
    *(DerivedStorage + 808) = 0;
  }

  if (*(DerivedStorage + 64))
  {
    FigReadWriteLockDestroy();
    *(DerivedStorage + 64) = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

uint64_t itemairplay_CopyProperty(CFTypeRef a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v52 = 0;
  if (!a1 || (v9 = DerivedStorage, *(DerivedStorage + 72)) || !a4)
  {
    v10 = FigSignalErrorAtGM();
    v11 = 0;
    goto LABEL_4;
  }

  v11 = FigCFWeakReferenceHolderCopyReferencedObject();
  v13 = CMBaseObjectGetDerivedStorage();
  if (!v13 || (v14 = v13, *v13))
  {
    v15 = FigSignalErrorAtGM();
LABEL_13:
    v10 = v15;
    goto LABEL_4;
  }

  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v13 + 40), 0, &v52);
  if (FigCFEqual())
  {
    v16 = *(v9 + 80);
    if (!v16)
    {
LABEL_18:
      v10 = 0;
      *a4 = v16;
      goto LABEL_4;
    }

LABEL_17:
    v16 = CFRetain(v16);
    goto LABEL_18;
  }

  if (FigCFEqual())
  {
    v17 = *(v14 + 112);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __itemairplay_CopyProperty_block_invoke;
    v51[3] = &__block_descriptor_48_e5_v8__0l;
    v51[4] = a4;
    v51[5] = a1;
    v18 = v51;
LABEL_23:
    dispatch_sync(v17, v18);
LABEL_24:
    v10 = 0;
    goto LABEL_4;
  }

  if (FigCFEqual())
  {
    v17 = *(v14 + 112);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __itemairplay_CopyProperty_block_invoke_2;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = a4;
    block[5] = a1;
    v18 = block;
    goto LABEL_23;
  }

  v19 = @"AccessLog";
  if (CFEqual(a2, @"AccessLog") || (v19 = @"ErrorLog", CFEqual(a2, @"ErrorLog")))
  {
    if (v52 == a1 && *(CMBaseObjectGetDerivedStorage() + 216) == 16)
    {
      v15 = itemairplay_copyLogs(v11, a1, v19, a4);
      goto LABEL_13;
    }

    goto LABEL_35;
  }

  v20 = CFEqual(a2, @"Timebase");
  v21 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v20)
  {
    if ((v21 - 14) <= 2)
    {
      v17 = *(v14 + 112);
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __itemairplay_CopyProperty_block_invoke_3;
      v49[3] = &__block_descriptor_48_e5_v8__0l;
      v49[4] = v9;
      v49[5] = a4;
      v18 = v49;
      goto LABEL_23;
    }

LABEL_35:
    FigBaseObject = FigPlaybackItemGetFigBaseObject(*(v9 + 8));
    v15 = CMBaseObjectCopyProperty(FigBaseObject, a2, a3, a4);
    goto LABEL_13;
  }

  if (!v21 || v21 == 10)
  {
    goto LABEL_35;
  }

  if (CFEqual(a2, @"BufferState"))
  {
    v23 = &kFigPlaybackItemBufferState_Filling;
    v24 = *(v9 + 602);
    v25 = &kFigPlaybackItemBufferState_Full;
    goto LABEL_40;
  }

  if (CFEqual(a2, @"WillKeepUpPrediction"))
  {
    v23 = &kFigPlaybackItemWillKeepUpPrediction_UnlikelyToKeepUp;
    v24 = *(v9 + 603);
    v25 = &kFigPlaybackItemWillKeepUpPrediction_LikelyToKeepUp;
LABEL_40:
    if (v24)
    {
      v23 = v25;
    }

    goto LABEL_42;
  }

  if (CFEqual(a2, @"SeekableTimeIntervals"))
  {
    time.value = 0;
    *&time.timescale = &time;
    time.epoch = 0x2020000000;
    v48 = 0;
    v26 = *(v14 + 112);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __itemairplay_CopyProperty_block_invoke_4;
    v46[3] = &unk_1E7482510;
    v46[4] = &time;
    v46[5] = v9;
    dispatch_sync(v26, v46);
    v27 = *(*&time.timescale + 24);
    if (v27)
    {
      v10 = itemairplay_convertTimeRangesToTimeIntervals(a3, v27, 0, a4);
      v28 = *(*&time.timescale + 24);
      if (v28)
      {
        CFRelease(v28);
      }

      goto LABEL_97;
    }

    goto LABEL_96;
  }

  if (CFEqual(a2, @"PlayableTimeIntervals"))
  {
    time.value = 0;
    *&time.timescale = &time;
    time.epoch = 0x2020000000;
    v48 = 0;
    v29 = *(v14 + 112);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __itemairplay_CopyProperty_block_invoke_5;
    v45[3] = &unk_1E748B8C8;
    v45[6] = v14;
    v45[7] = v9;
    v45[4] = &time;
    v45[5] = v11;
    dispatch_sync(v29, v45);
    if (*(v14 + 241))
    {
      v30 = *(*&time.timescale + 24);
      if ((!v30 || CFArrayGetCount(v30) <= 0) && *(CMBaseObjectGetDerivedStorage() + 368) && *(v9 + 831))
      {
        v31 = *(*&time.timescale + 24);
        if (v31)
        {
          CFRelease(v31);
        }

        *(*&time.timescale + 24) = itemairplay_copyLoadedTimeRanges();
      }
    }

    v32 = *(*&time.timescale + 24);
    if (v32)
    {
      v10 = itemairplay_convertTimeRangesToTimeIntervals(a3, v32, 1, a4);
    }

    else
    {
      v10 = 0;
      *a4 = CFArrayCreateMutable(a3, 1, MEMORY[0x1E695E9C0]);
    }

    v33 = *(*&time.timescale + 24);
    if (v33)
    {
      CFRelease(v33);
    }

    goto LABEL_97;
  }

  if (CFEqual(a2, @"currentDate"))
  {
    v16 = *(v9 + 192);
    if (v16 && !*(v9 + 224))
    {
      goto LABEL_17;
    }

    goto LABEL_68;
  }

  if (CFEqual(a2, @"estimatedCurrentDate"))
  {
    v16 = *(v9 + 192);
    if (v16 && *(v9 + 224))
    {
      goto LABEL_17;
    }

LABEL_68:
    v10 = 4294954513;
    goto LABEL_4;
  }

  if (CFEqual(a2, @"currentDateAndTime"))
  {
    v15 = itemairplay_copyCurrentDateAndTime(a1, a4);
    goto LABEL_13;
  }

  if (CFEqual(a2, @"EndTime"))
  {
    if ((*(v9 + 452) & 0x1D) == 1)
    {
      v34 = (v9 + 440);
      v35 = *(v9 + 456);
LABEL_74:
      time.epoch = v35;
      *&time.value = *v34;
LABEL_79:
      v16 = CMTimeCopyAsDictionary(&time, a3);
      goto LABEL_18;
    }

    goto LABEL_86;
  }

  if (CFEqual(a2, @"ReverseEndTime"))
  {
    if ((*(v9 + 476) & 0x1D) != 1)
    {
      goto LABEL_86;
    }

    *&time.value = *(v9 + 464);
    v36 = *(v9 + 480);
LABEL_78:
    time.epoch = v36;
    goto LABEL_79;
  }

  if (CFEqual(a2, @"TimeToPauseBuffering"))
  {
    if ((*(v9 + 500) & 0x1D) == 1)
    {
      v34 = (v9 + 488);
      v35 = *(v9 + 504);
      goto LABEL_74;
    }

LABEL_86:
    v16 = 0;
    goto LABEL_18;
  }

  if (CFEqual(a2, @"TimeToPausePlayback"))
  {
    if ((*(v9 + 524) & 0x1D) != 1)
    {
      goto LABEL_86;
    }

    *&time.value = *(v9 + 512);
    v36 = *(v9 + 528);
    goto LABEL_78;
  }

  if (CFEqual(a2, @"SelectedMediaArray"))
  {
    if (v52 == a1 && *(CMBaseObjectGetDerivedStorage() + 216) == 16)
    {
      time.value = 0;
      *&time.timescale = &time;
      time.epoch = 0x2020000000;
      v48 = 0;
      v37 = *(v14 + 104);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __itemairplay_CopyProperty_block_invoke_6;
      v44[3] = &unk_1E7482510;
      v44[4] = &time;
      v44[5] = v9;
      dispatch_sync(v37, v44);
      *a4 = *(*&time.timescale + 24);
      _Block_object_dispose(&time, 8);
      goto LABEL_24;
    }

    goto LABEL_35;
  }

  if (CFEqual(a2, @"TaggedRangeMetadataArray"))
  {
    v38 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (!v38 || v38 == 10)
    {
      goto LABEL_35;
    }

    time.value = 0;
    *&time.timescale = &time;
    time.epoch = 0x2020000000;
    v48 = 0;
    v39 = *(v14 + 112);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __itemairplay_CopyProperty_block_invoke_7;
    v43[3] = &unk_1E7482510;
    v43[4] = &time;
    v43[5] = v9;
    dispatch_sync(v39, v43);
    v40 = *(*&time.timescale + 24);
    if (v40)
    {
      v10 = 0;
      *a4 = v40;
LABEL_97:
      _Block_object_dispose(&time, 8);
      goto LABEL_4;
    }

LABEL_96:
    v10 = 4294954513;
    goto LABEL_97;
  }

  if (!CFEqual(a2, @"CountOfTaggedRangeMetadataArrayListeners"))
  {
    if (CFEqual(a2, @"IsCoordinatedPlaybackSupported"))
    {
      isAPVSupportedForCoordinatedPlayback = playerairplay_isAPVSupportedForCoordinatedPlayback();
      v23 = MEMORY[0x1E695E4D0];
      if (!isAPVSupportedForCoordinatedPlayback)
      {
        v23 = MEMORY[0x1E695E4C0];
      }
    }

    else
    {
      if (!CFEqual(a2, @"IsReadyForPlayback"))
      {
        goto LABEL_35;
      }

      v23 = MEMORY[0x1E695E4D0];
      if (!*(v9 + 705))
      {
        v23 = MEMORY[0x1E695E4C0];
      }
    }

LABEL_42:
    v16 = *v23;
    goto LABEL_17;
  }

  v41 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (!v41 || v41 == 10)
  {
    goto LABEL_35;
  }

  v16 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, (v9 + 792));
  if (v16)
  {
    goto LABEL_18;
  }

  v10 = 4294954510;
LABEL_4:
  if (v52)
  {
    CFRelease(v52);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v10;
}

uint64_t itemairplay_MakeReadyForInspection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_MakeReadyForInspection_cold_1(&v9);
    return v9;
  }

  else
  {
    v6 = *(DerivedStorage + 8);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v7)
    {

      return v7(v6, a2, a3);
    }

    else
    {
      return 4294954514;
    }
  }
}

void __itemairplay_reflectSubItemNotification_block_invoke(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 296))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    playerairplay_switchFromBufferedAirPlayToLocal(*(a1 + 32));
    *(*(a1 + 56) + 247) = 0;
  }
}

void playerairplay_setBAOConnectionActiveIfNeeded(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 296) && *(DerivedStorage + 1) && !*(DerivedStorage + 304))
  {
    if (a1)
    {
      CFRetain(a1);
    }

    v3 = *(DerivedStorage + 112);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __playerairplay_setBAOConnectionActiveIfNeeded_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = a1;
    v4[5] = DerivedStorage;
    dispatch_async(v3, v4);
  }
}

void playerairplay_updateRoutingRegistry(uint64_t a1)
{
  cf[27] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BOOLean = 0;
  cf[0] = 0;
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 68);
  v4 = *(DerivedStorage + 65);
  FigSimpleMutexUnlock();
  playerairplay_CopyPlayQueueItem(a1, 0, cf);
  if (cf[0] && (FigBaseObject = FigPlaybackItemGetFigBaseObject(cf[0]), (v6 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && (v6(FigBaseObject, @"HasEnabledAudio", *MEMORY[0x1E695E480], &BOOLean), BOOLean))
  {
    Value = CFBooleanGetValue(BOOLean);
  }

  else
  {
    Value = 0;
  }

  if (dword_1EAF172E8 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v3 == 0.0 || cf[0] == 0 || Value == 0)
  {
    if (!v4)
    {
      FigBytePumpGetFigBaseObject(*(DerivedStorage + 208));
      v15 = v11;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v12)
      {
        v13 = MEMORY[0x1E695E4C0];
LABEL_21:
        v12(v15, 0x1F0B34DD8, *v13);
      }
    }
  }

  else
  {
    FigBytePumpGetFigBaseObject(*(DerivedStorage + 208));
    v15 = v14;
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v12)
    {
      v13 = MEMORY[0x1E695E4D0];
      goto LABEL_21;
    }
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }
}

void __playerairplay_setBAOConnectionActiveIfNeeded_block_invoke(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 296))
  {
    v2 = *(a1 + 40);
    if (*(v2 + 1))
    {
      if (!*(v2 + 304))
      {
        v4 = playerairplay_copyPredictedFormatDescriptionForBAO();
        v5 = *(*(a1 + 40) + 296);
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v6)
        {
          v6(v5, 1, 1, v4);
        }

        *(*(a1 + 40) + 304) = 1;
        if (v4)
        {
          CFRelease(v4);
        }
      }
    }
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t playerairplay_CopyPlayQueueItem(uint64_t a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v6 = 0;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (*DerivedStorage || v6 && *(v6 + 72) || !a3)
  {
    goto LABEL_5;
  }

  v9 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v9 && v9 != 10)
  {
    v10 = *(DerivedStorage + 40);
    FigSimpleMutexLock();
    v11 = *(v10 + 16);
    FigSimpleMutexUnlock();
    if (v11)
    {
      if (a2)
      {
        v12 = *(DerivedStorage + 40);
        v13 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        IndexOfAirPlayItemInternal = playqueue_getIndexOfAirPlayItemInternal(v12, a2);
        if (IndexOfAirPlayItemInternal == -1 || !*(v13 + 700))
        {
          FigSignalErrorAtGM();
        }

        else if (IndexOfAirPlayItemInternal + 1 < CFArrayGetCount(*v12))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*v12, IndexOfAirPlayItemInternal + 1);
          v16 = ValueAtIndex;
          if (ValueAtIndex)
          {
            CFRetain(ValueAtIndex);
          }

          goto LABEL_25;
        }

        v16 = 0;
LABEL_25:
        FigSimpleMutexUnlock();
        v7 = 0;
        v20[3] = v16;
        goto LABEL_28;
      }

      v17 = *(DerivedStorage + 112);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __playerairplay_CopyPlayQueueItem_block_invoke;
      v18[3] = &unk_1E7482510;
      v18[4] = &v19;
      v18[5] = DerivedStorage;
      dispatch_sync(v17, v18);
    }

    v7 = 0;
    goto LABEL_28;
  }

  if (*(DerivedStorage + 8))
  {
    v7 = playerairplay_copyPlayQueueAirPlayItemFromSubPlayer();
LABEL_28:
    *a3 = v20[3];
    goto LABEL_6;
  }

LABEL_5:
  v7 = FigSignalErrorAtGM();
LABEL_6:
  _Block_object_dispose(&v19, 8);
  return v7;
}

void sub_19662F240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t itemairplay_copyLogs(const void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v22, 0, sizeof(v22));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v22, HostTimeClock);
  if (FigCFEqual())
  {
    memset(&v21, 0, sizeof(v21));
    lhs = v22;
    v19 = *(DerivedStorage + 384);
    CMTimeSubtract(&v21, &lhs, &v19);
    lhs = v21;
    *&v19.value = gLogRequestInterval;
    v19.epoch = 0;
    if ((CMTimeCompare(&lhs, &v19) & 0x80000000) == 0)
    {
      v8 = playerairplay_copyPropertyAndWaitTillCompleteOrTimesOut(a1, *MEMORY[0x1E6961EB0], 0, 500000000, &v23);
      if (!v8)
      {
        v9 = *(DerivedStorage + 368);
        v10 = v23;
        *(DerivedStorage + 368) = v23;
        if (v10)
        {
          CFRetain(v10);
        }

        if (v9)
        {
          CFRelease(v9);
        }

        v11 = CMClockGetHostTimeClock();
        CMClockGetTime(&lhs, v11);
        *(DerivedStorage + 384) = lhs;
        goto LABEL_20;
      }

LABEL_30:
      v17 = v8;
      goto LABEL_25;
    }

    v15 = *(DerivedStorage + 368);
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!FigCFEqual())
  {
    goto LABEL_20;
  }

  memset(&v21, 0, sizeof(v21));
  lhs = v22;
  v19 = *(DerivedStorage + 408);
  CMTimeSubtract(&v21, &lhs, &v19);
  lhs = v21;
  *&v19.value = gLogRequestInterval;
  v19.epoch = 0;
  if ((CMTimeCompare(&lhs, &v19) & 0x80000000) == 0)
  {
    v8 = playerairplay_copyPropertyAndWaitTillCompleteOrTimesOut(a1, *MEMORY[0x1E6961EB8], 0, 500000000, &v23);
    if (!v8)
    {
      v12 = *(DerivedStorage + 376);
      v13 = v23;
      *(DerivedStorage + 376) = v23;
      if (v13)
      {
        CFRetain(v13);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      v14 = CMClockGetHostTimeClock();
      CMClockGetTime(&lhs, v14);
      *(DerivedStorage + 408) = lhs;
      goto LABEL_20;
    }

    goto LABEL_30;
  }

  v15 = *(DerivedStorage + 376);
  if (v15)
  {
LABEL_18:
    v15 = CFRetain(v15);
  }

LABEL_19:
  v23 = v15;
LABEL_20:
  if (v23)
  {
    v16 = CFGetTypeID(v23);
    if (v16 == CFArrayGetTypeID() && CFArrayGetCount(v23) >= 1)
    {
      v17 = 0;
      *a4 = v23;
      return v17;
    }
  }

  v17 = 0;
  *a4 = 0;
LABEL_25:
  if (v23)
  {
    CFRelease(v23);
  }

  return v17;
}

uint64_t itemairplay_copyLoadedTimeRanges()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  v3 = 0;
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  playerairplay_copyPropertyAndWaitTillCompleteOrTimesOut(v0, *MEMORY[0x1E6961E98], Mutable, 500000000, &v3);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v0)
  {
    CFRelease(v0);
  }

  return v3;
}

uint64_t itemairplay_handleSetProperty(const void *a1, uint64_t a2, const void *a3, const __CFDictionary *a4, _BYTE *a5, void *a6, void *a7)
{
  if (!a1)
  {
    itemairplay_handleSetProperty_cold_14(&valuePtr);
    return LODWORD(valuePtr.value);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_handleSetProperty_cold_1();
    return 0;
  }

  v14 = DerivedStorage;
  v62 = a5;
  v15 = FigCFWeakReferenceHolderCopyReferencedObject();
  v16 = CMBaseObjectGetDerivedStorage();
  if (!v16 || (v17 = v16, *v16))
  {
    itemairplay_handleSetProperty_cold_9();
    goto LABEL_78;
  }

  if (CFEqual(a3, @"EndTime"))
  {
    v18 = (v14 + 440);
    if (!a4)
    {
      v21 = 0;
      v23 = MEMORY[0x1E6960C70];
      *v18 = *MEMORY[0x1E6960C70];
      *(v14 + 456) = *(v23 + 16);
      goto LABEL_24;
    }

    CMTimeMakeFromDictionary(&valuePtr, a4);
    *v18 = *&valuePtr.value;
    *(v14 + 456) = valuePtr.epoch;
    v19 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v19)
    {
      v20 = v19 == 10;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      itemairplay_handleSetProperty_cold_2();
    }

    goto LABEL_12;
  }

  if (CFEqual(a3, @"ReverseEndTime"))
  {
    if (!a4)
    {
      v21 = 0;
      v26 = MEMORY[0x1E6960C70];
      *(v14 + 464) = *MEMORY[0x1E6960C70];
      *(v14 + 480) = *(v26 + 16);
      goto LABEL_24;
    }

    CMTimeMakeFromDictionary(&valuePtr, a4);
    *(v14 + 464) = valuePtr;
    v21 = 0;
    v22 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v22 && v22 != 10)
    {
      itemairplay_handleSetProperty_cold_3();
LABEL_12:
      v21 = 0;
    }

LABEL_24:
    *v62 = 0;
    if (a3)
    {
      v27 = CFRetain(a3);
    }

    else
    {
      v27 = 0;
    }

    *a6 = v27;
    if (a4)
    {
      v28 = CFRetain(a4);
    }

    else
    {
      v28 = 0;
    }

    *a7 = v28;
    goto LABEL_31;
  }

  if (CFEqual(a3, @"currentDate"))
  {
    v21 = 0;
    v24 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (!v24 || v24 == 10)
    {
      goto LABEL_24;
    }

    v25 = itemairplay_SeekToDateWithID(a1, a4, 0);
    goto LABEL_40;
  }

  if (CFEqual(a3, @"estimatedCurrentDate"))
  {
    v21 = 0;
    v30 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (!v30 || v30 == 10)
    {
      goto LABEL_24;
    }

    if (*(CMBaseObjectGetDerivedStorage() + 216) == 16 && *(v14 + 701))
    {
      goto LABEL_39;
    }

    itemairplay_handleSetProperty_cold_13(v14, a4);
LABEL_76:
    v21 = 0;
    goto LABEL_41;
  }

  if (CFEqual(a3, @"SelectedMediaArray"))
  {
    if (!a4)
    {
      goto LABEL_12;
    }

    v32 = CFGetTypeID(a4);
    if (v32 != CFArrayGetTypeID())
    {
      goto LABEL_12;
    }

    if (v15)
    {
      CFRetain(v15);
    }

    CFRetain(a1);
    CFRetain(a4);
    v33 = *(v17 + 13);
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __itemairplay_handleSetProperty_block_invoke;
    v71[3] = &__block_descriptor_72_e5_v8__0l;
    v71[4] = v14;
    v71[5] = v17;
    v71[6] = a4;
    v71[7] = v15;
    v71[8] = a1;
    v34 = v71;
    goto LABEL_65;
  }

  if (CFEqual(a3, @"MediaPresentationLanguages"))
  {
    if (!a4 || (v35 = CFGetTypeID(a4), v35 == CFDictionaryGetTypeID()))
    {
      if (v15)
      {
        CFRetain(v15);
      }

      CFRetain(a1);
      if (a4)
      {
        CFRetain(a4);
      }

      v33 = *(v17 + 13);
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __itemairplay_handleSetProperty_block_invoke_2;
      v70[3] = &__block_descriptor_72_e5_v8__0l;
      v70[4] = v14;
      v70[5] = v17;
      v70[6] = a4;
      v70[7] = v15;
      v70[8] = a1;
      v34 = v70;
LABEL_65:
      dispatch_async(v33, v34);
      goto LABEL_12;
    }

    goto LABEL_79;
  }

  if (CFEqual(a3, @"kFigPlaybackItemProperty_MediaPresentationCharacteristics"))
  {
    if (!a4 || (v36 = CFGetTypeID(a4), v36 == CFDictionaryGetTypeID()))
    {
      if (v15)
      {
        CFRetain(v15);
      }

      CFRetain(a1);
      if (a4)
      {
        CFRetain(a4);
      }

      v33 = *(v17 + 13);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __itemairplay_handleSetProperty_block_invoke_3;
      block[3] = &__block_descriptor_72_e5_v8__0l;
      block[4] = v14;
      block[5] = v17;
      block[6] = a4;
      block[7] = v15;
      block[8] = a1;
      v34 = block;
      goto LABEL_65;
    }

LABEL_79:
    v21 = FigSignalErrorAtGM();
    goto LABEL_24;
  }

  if (CFEqual(a3, @"MediaCharacteristicsForPreferredCustomMediaSelectionSchemes"))
  {
    if (!a4 || (v37 = CFGetTypeID(a4), v37 == CFArrayGetTypeID()))
    {
      if (v15)
      {
        CFRetain(v15);
      }

      CFRetain(a1);
      if (a4)
      {
        CFRetain(a4);
      }

      v38 = *(v17 + 13);
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __itemairplay_handleSetProperty_block_invoke_4;
      v68[3] = &__block_descriptor_72_e5_v8__0l;
      v68[4] = a4;
      v68[5] = v14;
      v68[6] = v17;
      v68[7] = v15;
      v68[8] = a1;
      dispatch_async(v38, v68);
      goto LABEL_76;
    }

LABEL_39:
    v25 = FigSignalErrorAtGM();
LABEL_40:
    v21 = v25;
    goto LABEL_41;
  }

  if (CFEqual(a3, @"Restrictions"))
  {
    if (a4)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(a4))
      {
        valuePtr.value = 0;
        CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
        if (*(v14 + 688) != valuePtr.value)
        {
          *(v14 + 688) = valuePtr.value;
          v40 = *(CMBaseObjectGetDerivedStorage() + 216);
          if (v40)
          {
            if (v40 != 10)
            {
              itemairplay_handleSetProperty_cold_4();
            }
          }
        }

        goto LABEL_76;
      }
    }

    goto LABEL_39;
  }

  if (CFEqual(a3, @"AutomaticallyLoadedAssetProperties"))
  {
    itemairplay_handleSetProperty_cold_11();
    goto LABEL_12;
  }

  if (CFEqual(a3, @"AutomaticallyLoadedAssetTrackProperties"))
  {
    itemairplay_handleSetProperty_cold_12();
    goto LABEL_12;
  }

  if (CFEqual(a3, @"TextMarkupArray"))
  {
    v41 = *(v14 + 744);
    *(v14 + 744) = a4;
    if (a4)
    {
      CFRetain(a4);
    }

    if (v41)
    {
      CFRelease(v41);
    }

    if (!a4)
    {
      goto LABEL_12;
    }

    v21 = 0;
    v42 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v42 && v42 != 10)
    {
      itemairplay_handleSetProperty_cold_5();
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  if (!CFEqual(a3, @"CountOfTaggedRangeMetadataArrayListeners"))
  {
    if (CFEqual(a3, @"TimeToPauseBuffering"))
    {
      CMTimeMakeFromDictionary(&valuePtr, a4);
      *(v14 + 488) = valuePtr;
      v21 = 0;
      v48 = *(CMBaseObjectGetDerivedStorage() + 216);
      if (!v48 || v48 == 10)
      {
        goto LABEL_24;
      }

      if (v17[241] == 1)
      {
        v49 = *MEMORY[0x1E695E480];
        valuePtr = *(v14 + 488);
        v50 = CMTimeCopyAsDictionary(&valuePtr, v49);
        FigSimpleMutexLock();
        CFDictionarySetValue(*(v14 + 336), *MEMORY[0x1E6961EE8], v50);
        FigSimpleMutexUnlock();
        if (v50)
        {
          CFRelease(v50);
        }
      }

      else
      {
        itemairplay_NotifyReachedTimeToPauseBufferingIfFF();
      }

LABEL_154:
      playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v15);
      goto LABEL_12;
    }

    if (CFEqual(a3, @"TimeToPausePlayback"))
    {
      memset(&valuePtr, 0, sizeof(valuePtr));
      CMTimeMakeFromDictionary(&valuePtr, a4);
      v51 = *(CMBaseObjectGetDerivedStorage() + 216);
      if (!v51 || v51 == 10)
      {
        *(v14 + 512) = valuePtr;
        goto LABEL_12;
      }

      v59 = *(v17 + 14);
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __itemairplay_handleSetProperty_block_invoke_6;
      v63[3] = &__block_descriptor_88_e5_v8__0l;
      v64 = valuePtr;
      v63[4] = v14;
      v63[5] = v17;
      v63[6] = a1;
      v63[7] = v15;
      dispatch_sync(v59, v63);
      FigSimpleMutexLock();
      FigCFDictionarySetCMTime();
      FigSimpleMutexUnlock();
      goto LABEL_154;
    }

    if (CFEqual(a3, @"SnapTimeToPausePlayback"))
    {
      *(v14 + 158) = FigCFEqual();
      v21 = 0;
      v55 = *(CMBaseObjectGetDerivedStorage() + 216);
      if (v55 && v55 != 10)
      {
        itemairplay_handleSetProperty_cold_6();
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    if (CFEqual(a3, @"interstitialLiveHorizon"))
    {
      CMTimeMakeFromDictionary(&valuePtr, a4);
      *(v14 + 536) = valuePtr;
      *(v14 + 560) = FigGetUpTimeNanoseconds();
      v21 = 0;
      v56 = *(CMBaseObjectGetDerivedStorage() + 216);
      if (v56)
      {
        v31 = v62;
        if (v56 != 10)
        {
          itemairplay_handleSetProperty_cold_7();
          v21 = 0;
        }

        goto LABEL_42;
      }

LABEL_41:
      v31 = v62;
LABEL_42:
      *v31 = 1;
      goto LABEL_31;
    }

    if (!CFEqual(a3, @"currentInterstitialEvent") && !CFEqual(a3, @"interstitialEvents") && !CFEqual(a3, @"timeToSwapPlayback"))
    {
      if (CFEqual(a3, @"TransientTimebaseForCoordinatedPlaybackSynchronization"))
      {
        FigSimpleMutexLock();
        v60 = *(v14 + 576);
        *(v14 + 576) = a4;
        if (a4)
        {
          CFRetain(a4);
        }

        if (v60)
        {
          CFRelease(v60);
        }

        FigSimpleMutexUnlock();
      }

      goto LABEL_12;
    }

    if (CFEqual(a3, @"currentInterstitialEvent"))
    {
      if (itemairplay_handleSetProperty_cold_10(v14, a4, &valuePtr))
      {
        goto LABEL_148;
      }

      value = valuePtr.value;
    }

    else
    {
      if (!CFEqual(a3, @"interstitialEvents"))
      {
        goto LABEL_148;
      }

      value = *(v14 + 776);
      *(v14 + 776) = a4;
      if (a4)
      {
        CFRetain(a4);
      }

      if (!value)
      {
        goto LABEL_148;
      }
    }

    CFRelease(value);
LABEL_148:
    if (!a4)
    {
      goto LABEL_12;
    }

    v21 = 0;
    v58 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v58 && v58 != 10)
    {
      itemairplay_handleSetProperty_cold_8(v14, a3, a4, v15);
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  if (a4)
  {
    v43 = CFGetTypeID(a4);
    if (v43 == CFNumberGetTypeID())
    {
      v44 = (v14 + 792);
      v61 = *(v14 + 792);
      CFNumberGetValue(a4, kCFNumberCFIndexType, (v14 + 792));
      v21 = 0;
      v45 = *(CMBaseObjectGetDerivedStorage() + 216);
      if (!v45 || v45 == 10)
      {
        goto LABEL_24;
      }

      if (v61)
      {
        v46 = *v44;
        if (v61 >= 1 && !v46)
        {
          goto LABEL_110;
        }
      }

      else
      {
        v46 = *v44;
        if (*v44 > 0)
        {
LABEL_110:
          FigSimpleMutexLock();
          v47 = MEMORY[0x1E695E4D0];
          if (v61 >= *(v14 + 792))
          {
            v47 = MEMORY[0x1E695E4C0];
          }

          CFDictionarySetValue(*(v14 + 336), *MEMORY[0x1E6961E90], *v47);
          FigSimpleMutexUnlock();
          playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v15);
          v46 = *(v14 + 792);
        }
      }

      if (v61 < v46)
      {
        valuePtr.value = 0;
        *&valuePtr.timescale = &valuePtr;
        valuePtr.epoch = 0x2020000000;
        v67 = 0;
        v52 = *(v17 + 14);
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __itemairplay_handleSetProperty_block_invoke_5;
        v65[3] = &unk_1E7482510;
        v65[4] = &valuePtr;
        v65[5] = v14;
        dispatch_sync(v52, v65);
        v53 = *(*&valuePtr.timescale + 24);
        if (v53)
        {
          itemairplay_postTaggedRangeMetadataChangedNotificationIfNeeded(a1, v53);
          v54 = *(*&valuePtr.timescale + 24);
          if (v54)
          {
            CFRelease(v54);
          }
        }

        _Block_object_dispose(&valuePtr, 8);
      }

      goto LABEL_12;
    }
  }

LABEL_78:
  v21 = 0;
LABEL_31:
  if (v15)
  {
    CFRelease(v15);
  }

  return v21;
}

uint64_t itemairplay_SeekToDateWithID(uint64_t a1, void *a2, uint64_t a3)
{
  keys[2] = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    itemairplay_SeekToDateWithID_cold_4(keys);
    return LODWORD(keys[0]);
  }

  v6 = DerivedStorage;
  if (*(DerivedStorage + 72))
  {
    itemairplay_SeekToDateWithID_cold_1(keys);
    return LODWORD(keys[0]);
  }

  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = CMBaseObjectGetDerivedStorage();
  if (!v8 || *v8)
  {
    itemairplay_SeekToDateWithID_cold_3(keys);
    v13 = LODWORD(keys[0]);
    if (!v7)
    {
      return v13;
    }

    goto LABEL_25;
  }

  v9 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v9)
  {
    v10 = v9 == 10;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v12)
    {
      v13 = v12(v11, a2, a3);
      if (!v7)
      {
        return v13;
      }
    }

    else
    {
      v13 = 4294954514;
      if (!v7)
      {
        return v13;
      }
    }

    goto LABEL_25;
  }

  if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) <= 2)
  {
    keys[0] = @"Date";
    keys[1] = @"SeekID";
    values = a2;
    v14 = *MEMORY[0x1E695E480];
    cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    v15 = CFDictionaryCreate(v14, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v15)
    {
      itemairplay_SeekToDateWithID_cold_2();
    }

    v13 = 0;
    if (!v7)
    {
      return v13;
    }

LABEL_25:
    CFRelease(v7);
    return v13;
  }

  v16 = *(v6 + 192);
  *(v6 + 192) = a2;
  CFRetain(a2);
  if (v16)
  {
    CFRelease(v16);
  }

  v13 = 0;
  *(v6 + 224) = 0;
  if (v7)
  {
    goto LABEL_25;
  }

  return v13;
}

CFTypeRef __itemairplay_handleSetProperty_block_invoke_5(uint64_t a1)
{
  result = *(*(a1 + 40) + 800);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __itemairplay_handleSetProperty_block_invoke_6(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  lhs = *(a1 + 64);
  rhs = *(v2 + 512);
  CMTimeSubtract(&time, &lhs, &rhs);
  CMTimeAbsoluteValue(&lhs, &time);
  CMTimeMake(&time, 10, 1000);
  if ((CMTimeCompare(&lhs, &time) & 0x80000000) == 0)
  {
    v3 = *(a1 + 32) + 512;
    if ((*(a1 + 76) & 1) == 0)
    {
      v4 = MEMORY[0x1E6960C70];
      *v3 = *MEMORY[0x1E6960C70];
      *(v3 + 16) = *(v4 + 16);
      itemairplay_resetTimeToPausePlayback(*(a1 + 56));
      return;
    }

    v5 = *(a1 + 64);
    *(*(a1 + 32) + 528) = *(a1 + 80);
    *v3 = v5;
    if (!*(*(a1 + 40) + 241))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 32);
      rhs = *(v7 + 512);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v9 = FigCFWeakReferenceHolderCopyReferencedObject();
      v10 = CMBaseObjectGetDerivedStorage();
      v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, *(v10 + 112));
      if (v11)
      {
        v12 = v11;
        v13 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        dispatch_set_context(v12, v13);
        dispatch_source_set_timer(v12, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
        dispatch_source_set_event_handler_f(v12, pap_emulateTimeToPausePlaybackTimerProc);
        dispatch_source_set_cancel_handler_f(v12, 0);
        dispatch_set_finalizer_f(v12, FigCFRelease_5);
        dispatch_resume(v12);
        if (!CMTimebaseAddTimerDispatchSource(*(DerivedStorage + 568), v12))
        {
          v14 = *(DerivedStorage + 568);
          lhs = rhs;
          if (!CMTimebaseSetTimerDispatchSourceNextFireTime(v14, v12, &lhs, 1u))
          {
            if (dword_1EAF172E8)
            {
              v22 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v16 = v22;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v17 = v16;
              }

              else
              {
                v17 = v16 & 0xFFFFFFFE;
              }

              if (v17)
              {
                lhs = rhs;
                Seconds = CMTimeGetSeconds(&lhs);
                CMTimebaseGetTime(&lhs, *(DerivedStorage + 568));
                v19 = CMTimeGetSeconds(&lhs);
                LODWORD(time.value) = 136315906;
                *(&time.value + 4) = "pap_createAndPrimeAirPlayTimer";
                LOWORD(time.flags) = 2048;
                *(&time.flags + 2) = v6;
                HIWORD(time.epoch) = 2048;
                v24 = Seconds;
                v25 = 2048;
                v26 = v19;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *(v7 + 328) = v12;
            if (!v9)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }

        CFRelease(v12);
        if (!v9)
        {
LABEL_19:
          if (!*(*(a1 + 40) + 241) && pap_hasAirPlayReachedTimeToPausePlayback())
          {
            pap_handleAirPlayReachedTimeToPausePlayback(*(a1 + 56), *(a1 + 48));
          }

          return;
        }
      }

      else
      {
        FigSignalErrorAtGM();
        if (!v9)
        {
          goto LABEL_19;
        }
      }

LABEL_18:
      CFRelease(v9);
      goto LABEL_19;
    }
  }
}

void pap_emulateTimeToPausePlaybackTimerProc()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    CMBaseObjectGetDerivedStorage();
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      if (pap_hasAirPlayReachedTimeToPausePlayback())
      {
        pap_handleAirPlayReachedTimeToPausePlayback(v3, v1);
      }

      CFRelease(v1);
    }

    else
    {
      v3 = v1;
    }

    CFRelease(v3);
  }
}

uint64_t itemairplay_GetDimensions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_GetDimensions_cold_1(&v13);
    return v13;
  }

  v6 = DerivedStorage;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = CMBaseObjectGetDerivedStorage();
  if (!v8 || *v8)
  {
    itemairplay_GetDimensions_cold_2(&v14);
    v11 = v14;
    if (!v7)
    {
      return v11;
    }

    goto LABEL_8;
  }

  v9 = *(v6 + 8);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v10)
  {
    v11 = v10(v9, a2, a3);
    if (!v7)
    {
      return v11;
    }

    goto LABEL_8;
  }

  v11 = 4294954514;
  if (v7)
  {
LABEL_8:
    CFRelease(v7);
  }

  return v11;
}

uint64_t itemairplay_GetDuration(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = **&MEMORY[0x1E6960C70];
  if (*(DerivedStorage + 72))
  {
    itemairplay_GetDuration_cold_1(&v20);
    v5 = 0;
    goto LABEL_41;
  }

  v4 = DerivedStorage;
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = CMBaseObjectGetDerivedStorage();
  if (!v6 || *v6)
  {
    itemairplay_GetDuration_cold_2(&v20);
LABEL_41:
    value_low = LODWORD(v20.value);
    goto LABEL_24;
  }

  v7 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v7)
  {
    v8 = v7 == 10;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if ((*(v4 + 240) & 1) == 0)
    {
      value_low = 0;
      goto LABEL_18;
    }

LABEL_17:
    value_low = 0;
    v23 = *(v4 + 228);
    goto LABEL_18;
  }

  v9 = *(v4 + 8);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v10)
  {
    value_low = v10(v9, &v23);
    if (!value_low)
    {
      *(v4 + 228) = v23;
      goto LABEL_18;
    }
  }

  else
  {
    value_low = 4294954514;
  }

  if (*(v4 + 240))
  {
    goto LABEL_17;
  }

LABEL_18:
  if ((v23.flags & 1) == 0)
  {
    v12 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v12 && v12 != 10)
    {
      v15 = *(v4 + 16);
      if (v15)
      {
        v22 = 0;
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v16)
        {
          v16(v15, @"Duration", &v22);
          if (v22)
          {
            dictionaryRepresentation = 0;
            CMBaseObject = FigAssetGetCMBaseObject(*(v4 + 16));
            v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v18)
            {
              value_low = v18(CMBaseObject, @"Duration", *MEMORY[0x1E695E480], &dictionaryRepresentation);
              v19 = dictionaryRepresentation;
              if (!value_low && dictionaryRepresentation)
              {
                CMTimeMakeFromDictionary(&v20, dictionaryRepresentation);
                v23 = v20;
                v19 = dictionaryRepresentation;
              }

              if (v19)
              {
                CFRelease(v19);
              }
            }

            else
            {
              value_low = 4294954514;
            }
          }
        }
      }
    }
  }

LABEL_24:
  if (!value_low)
  {
    *a2 = v23;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return value_low;
}

uint64_t itemairplay_SetCurrentTime(const void *a1, CMTime *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_SetCurrentTime_cold_1(&v18);
    return LODWORD(v18.value);
  }

  v7 = DerivedStorage;
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  v9 = CMBaseObjectGetDerivedStorage();
  if (!v9 || *v9)
  {
    itemairplay_SetCurrentTime_cold_2(&v18);
    value_low = LODWORD(v18.value);
    if (!v8)
    {
      return value_low;
    }

    goto LABEL_14;
  }

  v17 = *a2;
  itemairplay_filterSetCurrentTime(&v17, &v18);
  *a2 = v18;
  v10 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v10)
  {
    v11 = v10 == 10;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = *(v7 + 8);
    v17 = *a2;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v13)
    {
      value_low = 4294954514;
      if (!v8)
      {
        return value_low;
      }

      goto LABEL_14;
    }

    v18 = v17;
    v15 = v13(v12, &v18, a3);
  }

  else
  {
    v18 = *a2;
    v15 = itemairplay_airplaySetCurrentTime(a1, &v18, a3, 0, 0);
  }

  value_low = v15;
  if (v8)
  {
LABEL_14:
    CFRelease(v8);
  }

  return value_low;
}

uint64_t itemairplay_CopyTrackProperty(CFTypeRef a1, uint64_t a2, const void *a3, uint64_t a4, CFTypeRef *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 72) || !a5)
  {
    v11 = FigSignalErrorAtGM();
    v12 = 0;
    goto LABEL_4;
  }

  v14 = DerivedStorage;
  v12 = FigCFWeakReferenceHolderCopyReferencedObject();
  v15 = CMBaseObjectGetDerivedStorage();
  if (!v15 || *v15)
  {
    itemairplay_CopyTrackProperty_cold_1(v32);
    v11 = v32[0];
    goto LABEL_4;
  }

  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v15 + 40), 0, &cf);
  v16 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v16)
  {
    v17 = v16 == 10;
  }

  else
  {
    v17 = 1;
  }

  if (v17 || (v20 = CFEqual(a3, @"Enabled"), v20 ? (v21 = cf == a1) : (v21 = 0), !v21 || *(CMBaseObjectGetDerivedStorage() + 216) != 16))
  {
    v18 = *(v14 + 8);
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v19)
    {
      v11 = v19(v18, a2, a3, a4, a5);
    }

    else
    {
      v11 = 4294954514;
    }

    goto LABEL_4;
  }

  v30 = 0;
  valuePtr = 0;
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  FigCFDictionarySetInt32();
  playerairplay_copyPropertyAndWaitTillCompleteOrTimesOut(v12, *MEMORY[0x1E6961E70], Mutable, 100000000, &v30);
  if (!v30)
  {
    goto LABEL_33;
  }

  v23 = CFGetTypeID(v30);
  if (v23 == CFNumberGetTypeID())
  {
    CFNumberGetValue(v30, kCFNumberSInt32Type, &valuePtr);
    if (valuePtr)
    {
      v24 = MEMORY[0x1E695E4D0];
LABEL_34:
      v27 = *v24;
      goto LABEL_35;
    }

LABEL_33:
    v24 = MEMORY[0x1E695E4C0];
    goto LABEL_34;
  }

  if (!v30)
  {
    goto LABEL_33;
  }

  v25 = CFGetTypeID(v30);
  TypeID = CFBooleanGetTypeID();
  v27 = v30;
  if (v25 != TypeID)
  {
    if (v30)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_33;
  }

LABEL_35:
  *a5 = CFRetain(v27);
  if (v30)
  {
    CFRelease(v30);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v11 = 0;
LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v11;
}

uint64_t itemairplay_CopyCommonMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_CopyCommonMetadata_cold_1(&v15);
    return v15;
  }

  v8 = DerivedStorage;
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  v10 = CMBaseObjectGetDerivedStorage();
  if (!v10 || *v10)
  {
    itemairplay_CopyCommonMetadata_cold_2(&v16);
    v13 = v16;
    if (!v9)
    {
      return v13;
    }

    goto LABEL_8;
  }

  v11 = *(v8 + 8);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v12)
  {
    v13 = v12(v11, a2, a3, a4);
    if (!v9)
    {
      return v13;
    }

    goto LABEL_8;
  }

  v13 = 4294954514;
  if (v9)
  {
LABEL_8:
    CFRelease(v9);
  }

  return v13;
}

uint64_t itemairplay_CopyChapterImageData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_CopyChapterImageData_cold_1(&v15);
    return v15;
  }

  v8 = DerivedStorage;
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  v10 = CMBaseObjectGetDerivedStorage();
  if (!v10 || *v10)
  {
    itemairplay_CopyChapterImageData_cold_2(&v16);
    v13 = v16;
    if (!v9)
    {
      return v13;
    }

    goto LABEL_8;
  }

  v11 = *(v8 + 8);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v12)
  {
    v13 = v12(v11, a2, a3, a4);
    if (!v9)
    {
      return v13;
    }

    goto LABEL_8;
  }

  v13 = 4294954514;
  if (v9)
  {
LABEL_8:
    CFRelease(v9);
  }

  return v13;
}

uint64_t itemairplay_GetNextThumbnailTime(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_GetNextThumbnailTime_cold_1(&v17);
    return v17;
  }

  v8 = DerivedStorage;
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  v10 = CMBaseObjectGetDerivedStorage();
  if (!v10 || *v10)
  {
    itemairplay_GetNextThumbnailTime_cold_2(&v17);
    v13 = v17;
    if (!v9)
    {
      return v13;
    }

    goto LABEL_8;
  }

  v11 = *(v8 + 8);
  v15 = *a2;
  v16 = *(a2 + 2);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v12)
  {
    v17 = v15;
    v18 = v16;
    v13 = v12(v11, &v17, a3, a4);
    if (!v9)
    {
      return v13;
    }

    goto LABEL_8;
  }

  v13 = 4294954514;
  if (v9)
  {
LABEL_8:
    CFRelease(v9);
  }

  return v13;
}

uint64_t itemairplay_SetCurrentTimeWithRange(const void *a1, CMTime *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_SetCurrentTimeWithRange_cold_1(&v28);
    return LODWORD(v28.value);
  }

  v11 = DerivedStorage;
  v12 = FigCFWeakReferenceHolderCopyReferencedObject();
  v13 = CMBaseObjectGetDerivedStorage();
  if (!v13 || *v13)
  {
    itemairplay_SetCurrentTimeWithRange_cold_2(&v28);
    value_low = LODWORD(v28.value);
    if (!v12)
    {
      return value_low;
    }

    goto LABEL_17;
  }

  v27 = *a2;
  itemairplay_filterSetCurrentTime(&v27, &v28);
  *a2 = v28;
  v14 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v14)
  {
    v15 = v14 == 10;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = *(v11 + 8);
    *&v24.value = *&a2->value;
    v24.epoch = a2->epoch;
    *&v23.value = *a4;
    v23.epoch = *(a4 + 16);
    v21 = *a5;
    v22 = *(a5 + 2);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (v17)
    {
      v28 = v24;
      v27 = v23;
      v25 = v21;
      v26 = v22;
      value_low = v17(v16, &v28, a3, &v27, &v25);
      if (!v12)
      {
        return value_low;
      }
    }

    else
    {
      value_low = 4294954514;
      if (!v12)
      {
        return value_low;
      }
    }

    goto LABEL_17;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v28 = *a4;
  FigCFDictionarySetCMTime();
  v28 = *a5;
  FigCFDictionarySetCMTime();
  v28 = *a2;
  value_low = itemairplay_airplaySetCurrentTime(a1, &v28, a3, 0, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
LABEL_17:
    CFRelease(v12);
  }

  return value_low;
}

uint64_t itemairplay_SetTrackProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {

    return FigSignalErrorAtGM();
  }

  v9 = DerivedStorage;
  v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  v11 = CMBaseObjectGetDerivedStorage();
  if (!v11 || *v11)
  {
    itemairplay_SetTrackProperty_cold_2(&v27);
    v16 = v27;
    goto LABEL_15;
  }

  v12 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v12)
  {
    v13 = v12 == 10;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || (v17 = CFEqual(a3, @"Enabled"), !a4 || !v17 || (v18 = CFGetTypeID(a4), v18 != CFBooleanGetTypeID()) || (*(CMBaseObjectGetDerivedStorage() + 216) - 14) > 2))
  {
    v14 = *(v9 + 8);
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v15)
    {
      v16 = v15(v14, a2, a3, a4);
    }

    else
    {
      v16 = 4294954514;
    }

    goto LABEL_15;
  }

  FigSimpleMutexLock();
  v19 = *MEMORY[0x1E6961E70];
  Value = CFDictionaryGetValue(*(v9 + 336), *MEMORY[0x1E6961E70]);
  if (Value)
  {
    v23 = Value;
    CFRetain(Value);
    v21 = *MEMORY[0x1E695E480];
  }

  else
  {
    v21 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
LABEL_30:
      itemairplay_SetTrackProperty_cold_1();
      v16 = v26;
      goto LABEL_15;
    }

    v23 = Mutable;
    CFDictionarySetValue(*(v9 + 336), v19, Mutable);
  }

  v24 = CFStringCreateWithFormat(v21, 0, @"%d", a2);
  if (!v24)
  {
    CFRelease(v23);
    goto LABEL_30;
  }

  v25 = v24;
  CFDictionarySetValue(v23, v24, a4);
  FigSimpleMutexUnlock();
  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v10);
  CFRelease(v25);
  CFRelease(v23);
  v16 = 0;
LABEL_15:
  if (v10)
  {
    CFRelease(v10);
  }

  return v16;
}

uint64_t itemairplay_CopyFormatReader(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 72))
  {
    v5 = DerivedStorage;
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
    v7 = CMBaseObjectGetDerivedStorage();
    if (!v7 || *v7)
    {
      itemairplay_CopyFormatReader_cold_1(&v11);
      v10 = v11;
      if (!v6)
      {
        return v10;
      }
    }

    else
    {
      v8 = *(v5 + 8);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 120);
      if (v9)
      {
        v10 = v9(v8, a2);
        if (!v6)
        {
          return v10;
        }
      }

      else
      {
        v10 = 4294954514;
        if (!v6)
        {
          return v10;
        }
      }
    }

    CFRelease(v6);
    return v10;
  }

  return FigSignalErrorAtGM();
}

uint64_t itemairplay_SetCurrentTimeWithRangeAndID(const void *a1, CMTime *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_SetCurrentTimeWithRangeAndID_cold_1(&v30);
    return LODWORD(v30.value);
  }

  v13 = DerivedStorage;
  v14 = FigCFWeakReferenceHolderCopyReferencedObject();
  v15 = CMBaseObjectGetDerivedStorage();
  if (!v15 || *v15)
  {
    itemairplay_SetCurrentTimeWithRangeAndID_cold_2(&v30);
    value_low = LODWORD(v30.value);
    if (!v14)
    {
      return value_low;
    }

    goto LABEL_17;
  }

  v29 = *a2;
  itemairplay_filterSetCurrentTime(&v29, &v30);
  *a2 = v30;
  v16 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v16)
  {
    v17 = v16 == 10;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = *(v13 + 8);
    *&v26.value = *&a2->value;
    v26.epoch = a2->epoch;
    *&v25.value = *a4;
    v25.epoch = *(a4 + 16);
    v23 = *a5;
    v24 = *(a5 + 2);
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v19)
    {
      v30 = v26;
      v29 = v25;
      v27 = v23;
      v28 = v24;
      value_low = v19(v18, &v30, a3, &v29, &v27, a6);
      if (!v14)
      {
        return value_low;
      }
    }

    else
    {
      value_low = 4294954514;
      if (!v14)
      {
        return value_low;
      }
    }

    goto LABEL_17;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v30 = *a4;
  FigCFDictionarySetCMTime();
  v30 = *a5;
  FigCFDictionarySetCMTime();
  v30 = *a2;
  value_low = itemairplay_airplaySetCurrentTime(a1, &v30, a3, 1, a6);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v14)
  {
LABEL_17:
    CFRelease(v14);
  }

  return value_low;
}

uint64_t itemairplay_CopyAsset(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 72))
  {
    v5 = DerivedStorage;
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
    v7 = CMBaseObjectGetDerivedStorage();
    if (!v7 || *v7)
    {
      itemairplay_CopyAsset_cold_1(&v10);
      v9 = v10;
      if (!v6)
      {
        return v9;
      }
    }

    else
    {
      v8 = *(v5 + 16);
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      v9 = 0;
      *a2 = v8;
      if (!v6)
      {
        return v9;
      }
    }

    CFRelease(v6);
    return v9;
  }

  return FigSignalErrorAtGM();
}

uint64_t itemairplay_ExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 72))
  {
    v9 = DerivedStorage;
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    v11 = CMBaseObjectGetDerivedStorage();
    if (!v11 || *v11)
    {
      itemairplay_ExtractAndRetainNextSampleBuffer_cold_1(&v18);
      v16 = v18;
      if (!v10)
      {
        return v16;
      }
    }

    else
    {
      v12 = *(CMBaseObjectGetDerivedStorage() + 216);
      if (v12)
      {
        v13 = v12 == 10;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        v14 = *(v9 + 8);
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 168);
        if (!v15)
        {
          v16 = 4294954514;
          if (!v10)
          {
            return v16;
          }

          goto LABEL_17;
        }

        v17 = v15(v14, a2, a3, a4);
      }

      else
      {
        v17 = FigSignalErrorAtGM();
      }

      v16 = v17;
      if (!v10)
      {
        return v16;
      }
    }

LABEL_17:
    CFRelease(v10);
    return v16;
  }

  return FigSignalErrorAtGM();
}

uint64_t itemairplay_SetCurrentTimeWithOptions(const void *a1, CMTime *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    itemairplay_SetCurrentTimeWithOptions_cold_1(&time1);
    return LODWORD(time1.value);
  }

  v7 = DerivedStorage;
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  v9 = CMBaseObjectGetDerivedStorage();
  if (!v9 || *v9)
  {
    itemairplay_SetCurrentTimeWithOptions_cold_2(&time1);
    value_low = LODWORD(time1.value);
  }

  else
  {
    time2 = *a2;
    itemairplay_filterSetCurrentTime(&time2, &time1);
    *a2 = time1;
    v10 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v10)
    {
      v11 = v10 == 10;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = *(v7 + 8);
      time2 = *a2;
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 176);
      if (!v13)
      {
        value_low = 4294954514;
        goto LABEL_13;
      }

      time1 = time2;
      v15 = v13(v12, &time1, a3);
    }

    else
    {
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      time1 = *a2;
      v15 = itemairplay_airplaySetCurrentTime(a1, &time1, 0, 0, 0);
    }

    value_low = v15;
  }

LABEL_13:
  if (v8)
  {
    CFRelease(v8);
  }

  return value_low;
}

__n128 itemairplay_filterSetCurrentTime@<Q0>(CMTime *a1@<X1>, uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 548))
  {
    memset(&v8, 0, sizeof(v8));
    itemairplay_getCurrentInterstitialLiveHorizon(DerivedStorage, &v8);
    time1 = *a1;
    v6 = v8;
    if (CMTimeCompare(&time1, &v6) >= 1)
    {
      *a1 = v8;
    }
  }

  result = *&a1->value;
  *a2 = *&a1->value;
  *(a2 + 16) = a1->epoch;
  return result;
}

uint64_t playerairplay_AddToPlayQueue(const void *a1, const void *a2, const void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v8 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v8 = 0;
  }

  if (dword_1EAF172E8)
  {
    CMBaseObjectGetDerivedStorage();
  }

  if (*DerivedStorage || *(v7 + 72) || v8 && *(v8 + 72))
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    FigAtomicIncrement32();
    *(v7 + 708) = 0;
    v10 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (!v10 || v10 == 10 || *(DerivedStorage + 216) == 11 && *(DerivedStorage + 56) == 0.0 && !playerairplay_isPrimaryForNativeInterstitialsInAPVPlayback())
    {

      return playerairplay_addItemToSubPlayerPlayQueue(a1, a2, a3);
    }

    else
    {
      if (dword_1EAF172E8)
      {
        v11 = CMBaseObjectGetDerivedStorage();
        if (dword_1EAF172E8)
        {
          v12 = *(v11 + 216);
          if (v12)
          {
            if (v12 != 10)
            {
              v17 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }

      if (*(DerivedStorage + 50))
      {
        if (a1)
        {
          CFRetain(a1);
        }

        if (a2)
        {
          CFRetain(a2);
        }

        if (a3)
        {
          CFRetain(a3);
        }

        v14 = *(DerivedStorage + 112);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __playerairplay_AddToPlayQueue_block_invoke;
        block[3] = &__block_descriptor_64_e5_v8__0l;
        block[4] = DerivedStorage;
        block[5] = a1;
        block[6] = a2;
        block[7] = a3;
        dispatch_async(v14, block);
        return 0;
      }

      else
      {
        return playerairplay_addItemToLocalPlayQueue(a1, a2, a3);
      }
    }
  }
}

uint64_t playerairplay_RemoveFromPlayQueue(const void *a1, const void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v5 = 0;
  }

  if (dword_1EAF172E8)
  {
    CMBaseObjectGetDerivedStorage();
  }

  if (*DerivedStorage)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    if (*(v5 + 72))
    {
LABEL_7:

      return FigSignalErrorAtGM();
    }

    FigAtomicIncrement32();
  }

  v7 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v7 && v7 != 10)
  {
    if (dword_1EAF172E8)
    {
      v8 = CMBaseObjectGetDerivedStorage();
      if (dword_1EAF172E8)
      {
        v9 = *(v8 + 216);
        if (v9)
        {
          if (v9 != 10)
          {
            v14 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }
    }

    if (*(DerivedStorage + 50))
    {
      if (a1)
      {
        CFRetain(a1);
      }

      if (a2)
      {
        CFRetain(a2);
      }

      v11 = *(DerivedStorage + 112);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __playerairplay_RemoveFromPlayQueue_block_invoke;
      block[3] = &__block_descriptor_56_e5_v8__0l;
      block[4] = DerivedStorage;
      block[5] = a1;
      block[6] = a2;
      dispatch_async(v11, block);
    }

    else
    {
      playerairplay_removeItemFromLocalPlayQueue(a1, a2);
      playerairplay_removeItemFromSubPlayerPlayQueue(a1, a2);
    }

    return 0;
  }

  else
  {

    return playerairplay_removeItemFromSubPlayerPlayQueue(a1, a2);
  }
}

uint64_t playerairplay_GetRate(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
LABEL_2:

    return FigSignalErrorAtGM();
  }

  v5 = DerivedStorage;
  v6 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v6)
  {
    v7 = v6 == 10;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = *(v5 + 1);
    if (!v8)
    {
      goto LABEL_2;
    }

    v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v9)
    {

      return v9(v8, a2);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    result = 0;
    if (a2)
    {
      *a2 = *(v5 + 14);
    }
  }

  return result;
}

uint64_t playerairplay_SetRateWithFade(uint64_t a1, float a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetCMTime();
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v5)
  {
    v6 = v5(a1, Mutable, a2);
    if (!Mutable)
    {
      return v6;
    }

    goto LABEL_5;
  }

  v6 = 4294954514;
  if (Mutable)
  {
LABEL_5:
    CFRelease(Mutable);
  }

  return v6;
}

uint64_t playerairplay_StartPreroll(float a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
LABEL_2:

    return FigSignalErrorAtGM();
  }

  v7 = DerivedStorage;
  v8 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v8 != 10 && v8 != 0)
  {
    return 4294954514;
  }

  v10 = *(v7 + 1);
  if (!v10)
  {
    goto LABEL_2;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v11)
  {
    return 4294954514;
  }

  v12.n128_f32[0] = a1;

  return v11(v10, a3, v12);
}

uint64_t playerairplay_StepByCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
LABEL_2:

    return FigSignalErrorAtGM();
  }

  v5 = DerivedStorage;
  v6 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v6 != 10 && v6 != 0)
  {
    return 4294954514;
  }

  v8 = *(v5 + 1);
  if (!v8)
  {
    goto LABEL_2;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v9)
  {
    return 4294954514;
  }

  return v9(v8, a2);
}

uint64_t playerairplay_SetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, float a5)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  v6 = *a3;
  v7 = *(a3 + 2);
  return playerairplay_setRateCommon(a1, 0, 1, &v8, &v6, a4, a5);
}

uint64_t playerairplay_SetRateWithOptions(uint64_t a1, uint64_t a2, float a3)
{
  v6 = FigCFCopyCompactDescription();
  v7 = playerairplay_setRateCommon(a1, a2, 0, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], 0, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t playerairplay_ReevaluateRouteConfiguration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = FigCFCopyCompactDescription();
  if (*DerivedStorage)
  {
    goto LABEL_15;
  }

  v6 = *(DerivedStorage + 208);
  if (v6 && *(DerivedStorage + 112))
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v7)
    {
      v7(v6);
    }

    v8 = *(DerivedStorage + 112);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __playerairplay_ReevaluateRouteConfiguration_block_invoke;
    v13[3] = &unk_1E7482510;
    v13[4] = &v14;
    v13[5] = a1;
    dispatch_sync(v8, v13);
  }

  if (*(v15 + 24))
  {
    v9 = 0;
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v10 = *(DerivedStorage + 8);
  if (!v10)
  {
LABEL_15:
    v11 = FigSignalErrorAtGM();
  }

  else
  {
    v11 = FigPlayerReevaluateRouteConfigurationForReason(v10, a2, @" -> AirPlay sub-player");
  }

  v9 = v11;
  if (v5)
  {
LABEL_13:
    CFRelease(v5);
  }

LABEL_14:
  _Block_object_dispose(&v14, 8);
  return v9;
}

void sub_196633A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t playerairplay_AddExternalStartupTask(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    playerairplay_AddExternalStartupTask_cold_1(&v9);
    return v9;
  }

  else
  {
    if (a2)
    {
      v4 = DerivedStorage;
      FigSimpleMutexLock();
      v5 = *(v4 + 59);
      v11.length = CFArrayGetCount(v5);
      v11.location = 0;
      if (CFArrayGetFirstIndexOfValue(v5, v11, a2) == -1)
      {
        CFArrayAppendValue(*(v4 + 59), a2);
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
      }

      FigSimpleMutexUnlock();
    }

    v6 = *(CMBaseObjectGetDerivedStorage() + 8);
    if (v6)
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 128);
      if (v7)
      {

        return v7(v6, a2);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {

      return FigSignalErrorAtGM();
    }
  }
}

uint64_t playerairplay_RemoveExternalStartupTask(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    playerairplay_RemoveExternalStartupTask_cold_1(&v11);
    return v11;
  }

  else
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    v5 = *(v4 + 59);
    v13.length = CFArrayGetCount(v5);
    v13.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v13, a2);
    if (FirstIndexOfValue != -1)
    {
      v7 = FirstIndexOfValue;
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CFArrayRemoveValueAtIndex(*(v4 + 59), v7);
    }

    FigSimpleMutexUnlock();
    v8 = *(v4 + 1);
    if (v8)
    {
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 136);
      if (v9)
      {

        return v9(v8, a2);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {

      return FigSignalErrorAtGM();
    }
  }
}

uint64_t playerairplay_CopyDisplayedCVPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    playerairplay_CopyDisplayedCVPixelBuffer_cold_1(&v9);
    return v9;
  }

  else
  {
    v6 = *(DerivedStorage + 8);
    if (v6)
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 152);
      if (v7)
      {

        return v7(v6, a2, a3);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {

      return FigSignalErrorAtGM();
    }
  }
}

uint64_t playerairplay_addItemToLocalPlayQueue(const void *a1, const void *a2, const void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive();
  dispatch_source_set_timer(*(DerivedStorage + 120), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  v8 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v9 = *(v8 + 16);
  FigSimpleMutexUnlock();
  v10 = *(DerivedStorage + 40);
  v11 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a3 || !*(v10 + 16))
  {
    if (!*(v11 + 700))
    {
      if (!*(v11 + 701))
      {
        CFArrayAppendValue(*v10, a2);
      }

      goto LABEL_11;
    }

    goto LABEL_8;
  }

  IndexOfAirPlayItemInternal = playqueue_getIndexOfAirPlayItemInternal(v10, a3);
  if (IndexOfAirPlayItemInternal == -1)
  {
    v13 = 4294954516;
    goto LABEL_14;
  }

  if (*(v11 + 700))
  {
LABEL_8:
    v13 = 0;
LABEL_14:
    FigSimpleMutexUnlock();
    goto LABEL_17;
  }

  if (!*(v11 + 701))
  {
    CFArrayInsertValueAtIndex(*v10, IndexOfAirPlayItemInternal + 1, a2);
  }

LABEL_11:
  ++*(v10 + 16);
  *(v11 + 700) = 1;
  *(v11 + 705) = 0;
  *(v11 + 831) = 0;
  v13 = playqueue_copyPlayQueueSummary(v10);
  if (dword_1EAF172E8)
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
  if (v13)
  {
    CFRelease(v13);
    v13 = 0;
  }

LABEL_17:
  v15 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v16 = *(v15 + 16);
  FigSimpleMutexUnlock();
  if (!v13 && !v9 && v16 == 1)
  {
    playerairplay_addItemToLocalPlayQueue_cold_1();
    if (!a1)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (!v13)
  {
    if (!a1)
    {
LABEL_23:
      v17 = *(DerivedStorage + 112);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __playerairplay_addItemToLocalPlayQueue_block_invoke;
      block[3] = &__block_descriptor_57_e5_v8__0l;
      block[4] = DerivedStorage;
      block[5] = a1;
      v20 = IsAirplayVideoActive;
      block[6] = a2;
      dispatch_async(v17, block);
      return v13;
    }

LABEL_22:
    CFRetain(a1);
    goto LABEL_23;
  }

  return v13;
}

uint64_t playerairplay_addItemToSubPlayerPlayQueue(const void *a1, const void *a2, const void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v8 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v8 = 0;
  }

  cf = 0;
  v40 = 0.0;
  if (!*(DerivedStorage + 8))
  {
    playerairplay_addItemToSubPlayerPlayQueue_cold_1(v48);
    v9 = v48[0];
    goto LABEL_57;
  }

  v9 = 4294954516;
  if (a2 && v7)
  {
    v10 = CMBaseObjectGetDerivedStorage();
    if (*(v10 + 48) && *(v10 + 49) && *(DerivedStorage + 52))
    {
      v11 = CMBaseObjectGetDerivedStorage();
      v12 = *(v11 + 40);
      FigSimpleMutexLock();
      v13 = *(v12 + 16);
      FigSimpleMutexUnlock();
      v14 = 1;
      if (*(v11 + 56) != 0.0 && !v13 && pap_doesCurrentRouteUseScreen() && !*(DerivedStorage + 200))
      {
        v15 = *(DerivedStorage + 8);
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v16)
        {
          v16(v15, &v40);
        }

        FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 19, &cf);
        v17 = *(DerivedStorage + 8);
        v18 = cf;
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (v19)
        {
          v19(v17, v18, 0.0);
        }

        v14 = 0;
      }
    }

    else
    {
      v14 = 1;
    }

    v20 = *(DerivedStorage + 8);
    if (v8)
    {
      v8 = *(v8 + 8);
    }

    v21 = *(v7 + 8);
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v22)
    {
      v9 = 4294954514;
      goto LABEL_57;
    }

    v23 = v22(v20, v21, v8);
    if (v23)
    {
      v9 = v23;
      goto LABEL_57;
    }

    v24 = *(DerivedStorage + 40);
    v25 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (a3 && *(v24 + 16))
    {
      IndexOfAirPlayItemInternal = playqueue_getIndexOfAirPlayItemInternal(v24, a3);
      if (IndexOfAirPlayItemInternal == -1)
      {
        v9 = 4294954516;
LABEL_34:
        FigSimpleMutexUnlock();
        if (v14)
        {
          goto LABEL_57;
        }

        goto LABEL_35;
      }

      if (!*(v25 + 700) && !*(v25 + 701))
      {
        CFArrayInsertValueAtIndex(*v24, IndexOfAirPlayItemInternal + 1, a2);
        goto LABEL_41;
      }
    }

    else if (!*(v25 + 700) && !*(v25 + 701))
    {
      CFArrayAppendValue(*v24, a2);
LABEL_41:
      ++*(v24 + 16);
      *(v25 + 700) = 1;
      *(v25 + 705) = 0;
      *(v25 + 831) = 0;
      v31 = playqueue_copyPlayQueueSummary(v24);
      v32 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v32)
      {
        v33 = v32;
        if (dword_1EAF172E8)
        {
          v34 = CMBaseObjectGetDerivedStorage();
          if (dword_1EAF172E8)
          {
            v35 = *(v34 + 216);
            if (v35)
            {
              if (v35 != 10)
              {
                v43 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v37 = v43;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                {
                  v38 = v37;
                }

                else
                {
                  v38 = v37 & 0xFFFFFFFE;
                }

                if (v38)
                {
                  v44 = 136315394;
                  v45 = "playqueue_addItemToSubPlayerPlayQueue";
                  v46 = 2114;
                  v47 = v31;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }
          }
        }

        CFRelease(v33);
      }

      FigSimpleMutexUnlock();
      if (v31)
      {
        CFRelease(v31);
      }

      v9 = 0;
      if (v14)
      {
        goto LABEL_57;
      }

LABEL_35:
      if (v9)
      {
        v27 = *(DerivedStorage + 8);
        v28 = v40;
        v29 = cf;
        v30 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (v30)
        {
          v30(v27, v29, v28);
        }
      }

      else
      {
        playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(a1);
      }

      goto LABEL_57;
    }

    v9 = 0;
    goto LABEL_34;
  }

LABEL_57:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

void __playerairplay_addItemToLocalPlayQueue_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    v2 = *(CMBaseObjectGetDerivedStorage() + 216) - 14;
    v3 = *(a1 + 40);
    if (v2 < 3)
    {
      playerairplay_checkAndUpdatePlayQueueItems(v3);
    }

    else
    {
      playerairplay_checkStartStopAirPlay(v3, *(a1 + 56));
      v4 = *(CMBaseObjectGetDerivedStorage() + 216);
      v5 = v4 > 0xF;
      v6 = (1 << v4) & 0xD000;
      if (v5 || v6 == 0)
      {
        if (dword_1EAF172E8)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        pap_setAirPlayState(*(a1 + 40), 12);
      }
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    CFRelease(v9);
  }
}

void playerairplay_removeItemFromLocalPlayQueue(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = objc_autoreleasePoolPush();
  v6 = *(DerivedStorage + 216);
  if (a2)
  {
    if (playqueue_getIndexOfAirPlayItem(*(DerivedStorage + 40), a2) != -1)
    {
      playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(*(DerivedStorage + 40), a2, 1, 0);
    }

    if (!*(DerivedStorage + 51))
    {
      if (a1)
      {
        CFRetain(a1);
      }

      v11 = *(DerivedStorage + 112);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __playerairplay_removeItemFromLocalPlayQueue_block_invoke;
      v19[3] = &__block_descriptor_48_e5_v8__0l;
      v19[4] = DerivedStorage;
      v19[5] = a1;
      dispatch_async(v11, v19);
    }

    playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(a1);
    v17 = *MEMORY[0x1E6960C70];
    v18 = *(MEMORY[0x1E6960C70] + 16);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v12)
    {
      v12(a2, &v17);
    }

    v15 = v17;
    v16 = v18;
    itemairplay_setRememberedTimeAndDefaultFlag(a2, &v15);
    if (a1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (a1)
    {
      CFRetain(a1);
    }

    v7 = *(DerivedStorage + 112);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __playerairplay_removeItemFromLocalPlayQueue_block_invoke_2;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = a1;
    dispatch_async(v7, block);
    if (a1)
    {
LABEL_5:
      CFRetain(a1);
    }
  }

  v8 = *(DerivedStorage + 112);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __playerairplay_removeItemFromLocalPlayQueue_block_invoke_3;
  v13[3] = &__block_descriptor_48_e5_v8__0l;
  v13[4] = DerivedStorage;
  v13[5] = a1;
  dispatch_async(v8, v13);
  if (v6 == 16 && *(DerivedStorage + 216) == 11)
  {
    if (*(DerivedStorage + 152))
    {
      pap_clearLayerContents(a1);
    }

    if (*(DerivedStorage + 52))
    {
      v9 = *(DerivedStorage + 208);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v10)
      {
        v10(v9);
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t playerairplay_removeItemFromSubPlayerPlayQueue(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (a2)
  {
    v5 = CMBaseObjectGetDerivedStorage();
    v6 = *(v4 + 8);
    if (v6)
    {
      if (v5)
      {
        v7 = *(v5 + 8);
        goto LABEL_7;
      }

LABEL_6:
      v7 = 0;
LABEL_7:
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v8)
      {
        return 4294954514;
      }

      result = v8(v6, v7);
      if (!result)
      {
        v10 = *(v4 + 40);
        if (a2)
        {
          playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(v10, a2, 1, 0);
        }

        else
        {
          playqueue_clearPlayQueue(v10);
        }

        return 0;
      }

      return result;
    }
  }

  else
  {
    v6 = *(DerivedStorage + 8);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  return FigSignalErrorAtGM();
}

void __playerairplay_removeItemFromLocalPlayQueue_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    playerairplay_checkIfAirPlayVideoSessionNeedsToStop(*(a1 + 40));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __playerairplay_removeItemFromLocalPlayQueue_block_invoke_2(uint64_t a1)
{
  cf = 0;
  v5 = 0;
  v2 = *(a1 + 32);
  if (!*v2)
  {
    playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v2 + 40), &cf, &v5);
    playerairplay_savePlaybackInfoAndStopAPV(*(a1 + 40));
    playqueue_clearPlayQueue(*(*(a1 + 32) + 40));
    if (cf)
    {
      CFRelease(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t playerairplay_setRateCommon(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v55 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v34 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive();
  if (*DerivedStorage)
  {
    goto LABEL_2;
  }

  v17 = IsAirplayVideoActive;
  FigCFDictionaryGetInt32IfPresent();
  v18 = *(DerivedStorage + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerairplay_setRateCommon_block_invoke;
  block[3] = &unk_1E748B8F0;
  block[8] = a1;
  block[9] = DerivedStorage;
  v26 = a7;
  block[10] = a2;
  v27 = *a4;
  v28 = *(a4 + 16);
  v29 = *a5;
  v30 = *(a5 + 16);
  v32 = a3;
  v31 = v34;
  block[4] = &v47;
  block[5] = &v43;
  v33 = v17;
  block[6] = &v39;
  block[7] = &v35;
  dispatch_sync(v18, block);
  if (*(v48 + 24))
  {
    goto LABEL_4;
  }

  v20 = *(DerivedStorage + 8);
  if (!v20)
  {
LABEL_2:
    v16 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  if (*(v44 + 24))
  {
LABEL_4:
    v16 = 0;
  }

  else
  {
    if (!*(v40 + 24) && a7 != 0.0 && !*(v36 + 24))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetFloat();
      FigCFDictionarySetInt32();
      playerairplay_postPlayerNotification();
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_2;
    }

    if (a3)
    {
      v53 = *a4;
      v54 = *(a4 + 16);
      v51 = *a5;
      v52 = *(a5 + 16);
      v21 = FigPlayerSetRateAndAnchorTime(v20, &v53, &v51, a6, a7);
    }

    else if (a2)
    {
      v21 = FigPlayerSetRateWithOptions(v20, a2, a7);
    }

    else
    {
      v21 = FigPlayerSetRate(v20, a7);
    }

    v16 = v21;
    if (!v21)
    {
      if (dword_1EAF172E8)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v16 = 0;
      *(DerivedStorage + 56) = a7;
    }
  }

  if (dword_1EAF172E8 >= 2)
  {
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 65) = 0;
  *(DerivedStorage + 68) = 0;
  if (!v16)
  {
    if (a7 == 0.0 && v34 == 18)
    {
      *(DerivedStorage + 65) = 1;
    }

    *(DerivedStorage + 68) = a7;
  }

  FigSimpleMutexUnlock();
  playerairplay_updateRoutingRegistry(a1);
LABEL_19:
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  return v16;
}

void sub_196635620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

uint64_t __playerairplay_setRateCommon_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v2)
  {
    v3 = v2 == 10;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  *(*(*(a1 + 32) + 8) + 24) = v4;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    if (dword_1EAF172E8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = *(a1 + 88);
    if (v7 != 0.0)
    {
      v8 = *(a1 + 72);
      if (*(v8 + 56) == 0.0)
      {
        *(v8 + 488) = 0;
      }
    }

    if (v7 > 1.0 && !*(*(a1 + 72) + 241))
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = 1.0;
      if (!*(DerivedStorage + 368))
      {
        v7 = *(a1 + 88);
      }
    }

    *(*(a1 + 72) + 56) = v7;
    playerairplay_postPlayerRateDidChangeNotification(*(a1 + 64), *(a1 + 80));
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    if (dword_1EAF172E8)
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = *(a1 + 72);
    v12 = *(v11 + 216);
    if (v12 > 0x11 || ((1 << v12) & 0x21800) == 0 || *(v11 + 56) == 0.0)
    {
      if (*(CMBaseObjectGetDerivedStorage() + 216) == 16)
      {
        v15 = *(a1 + 64);
        v16 = *(a1 + 144);
        v17 = *(a1 + 80);
        time = *(a1 + 92);
        v18 = *(a1 + 116);
        v19 = *(a1 + 132);
        playerairplay_setRateAirPlay(v15, v16, &time.value, &v18, v17);
      }
    }

    else
    {
      if (!pap_doesCurrentRouteUseScreen() || (v13 = CMBaseObjectGetDerivedStorage(), *(v13 + 48)) && *(v13 + 49) && (v14 = *(a1 + 72), *(v14 + 52)) && !*(v14 + 200))
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }

      playerairplay_checkStartStopAirPlay(*(a1 + 64), *(a1 + 145));
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = playerairplay_isLocalPlaybackCapableRouteSelected();
  result = CMBaseObjectGetDerivedStorage();
  *(*(*(a1 + 56) + 8) + 24) = *(result + 296) != 0;
  return result;
}

CFTypeRef airplayitem_copyProxiedPropertyCallback()
{
  cf[22] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && (v1 = FigCFWeakReferenceHolderCopyReferencedObject(), v2 = CMBaseObjectGetDerivedStorage(), v1))
  {
    if (!*v2)
    {
      FigReadWriteLockLockForRead();
      if (!*(DerivedStorage + 72) && (*(CMBaseObjectGetDerivedStorage() + 216) - 14) <= 2)
      {
        CMBaseObjectGetDerivedStorage();
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetValue();
        if (!playerairplay_copyPropertyAndWaitTillCompleteOrTimesOut(v1, *MEMORY[0x1E6961EC8], Mutable, 500000000, cf) && !*(DerivedStorage + 72))
        {
          if (cf[0])
          {
            v5 = CFGetTypeID(cf[0]);
            if (v5 != CFArrayGetTypeID())
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }
    }

    FigReadWriteLockUnlockForRead();
    CFRelease(v1);
    return cf[0];
  }

  else
  {
    FigReadWriteLockUnlockForRead();
    return 0;
  }
}

uint64_t playerairplay_SetConnectionActive(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive();
  if (!*DerivedStorage)
  {
    v7 = IsAirplayVideoActive;
    v8 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v8)
    {
      v9 = v8 == 10;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = *(DerivedStorage + 8);
      if (!v10)
      {
        goto LABEL_2;
      }

      v11 = *(CMBaseObjectGetVTable() + 24);
      if (v11 && (v12 = *(v11 + 24)) != 0)
      {
        v13 = v12(v10, a2);
        if (!v13)
        {
          *(DerivedStorage + 1) = a2;
        }
      }

      else
      {
        v13 = 4294954514;
      }

      v14 = *(DerivedStorage + 112);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __playerairplay_SetConnectionActive_block_invoke_3;
      block[3] = &__block_descriptor_49_e5_v8__0l;
      v18 = a2;
      block[4] = DerivedStorage;
      block[5] = a1;
      dispatch_sync(v14, block);
      return v13;
    }

    *(DerivedStorage + 1) = a2;
    if (a2)
    {
      if (*(DerivedStorage + 216) == 11)
      {
        v15 = *(DerivedStorage + 112);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __playerairplay_SetConnectionActive_block_invoke;
        v20[3] = &__block_descriptor_41_e5_v8__0l;
        v20[4] = a1;
        v21 = v7;
        v16 = v20;
LABEL_25:
        dispatch_sync(v15, v16);
      }
    }

    else if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) <= 2)
    {
      if (a1)
      {
        CFRetain(a1);
      }

      v15 = *(DerivedStorage + 112);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __playerairplay_SetConnectionActive_block_invoke_2;
      v19[3] = &__block_descriptor_48_e5_v8__0l;
      v19[4] = DerivedStorage;
      v19[5] = a1;
      v16 = v19;
      goto LABEL_25;
    }

    return 0;
  }

LABEL_2:

  return FigSignalErrorAtGM();
}

uint64_t playerairplay_DuckVolume(float a1, float a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v8 != 10 && v8 != 0)
  {
    return 0;
  }

  v10 = *(DerivedStorage + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = *(CMBaseObjectGetVTable() + 32);
  if (!v11)
  {
    return 4294954514;
  }

  v14 = *(v11 + 8);
  if (!v14)
  {
    return 4294954514;
  }

  v12.n128_f32[0] = a1;
  v13.n128_f32[0] = a2;

  return v14(v10, a4, v12, v13);
}

uint64_t playerairplay_SilentMute(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v4 != 10 && v4 != 0)
  {
    return 0;
  }

  v6 = *(DerivedStorage + 8);
  if (!v6)
  {
    return 0;
  }

  v7 = *(CMBaseObjectGetVTable() + 32);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v6, a2);
}

void __playerairplay_hijackedByOtherPlayer_block_invoke(uint64_t a1)
{
  cf[24] = *MEMORY[0x1E69E9840];
  if (!**(a1 + 32) && (*(CMBaseObjectGetDerivedStorage() + 216) - 14) <= 2)
  {
    cf[0] = 0;
    if (dword_1EAF172E8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 27, cf);
    playerairplay_updatePlayerRateToMatch(*(a1 + 40), cf[0], 0.0);
    playerairplay_switchFromAirPlayVideoToLocal(*(a1 + 40), 0);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }
}

void playerairplay_playQueueWorkQueueFinalizer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void __playerairplay_initializeVolumeFadeOutNotification_block_invoke(uint64_t a1, int a2)
{
  v8 = 0;
  dispatch_get_context(*(a1 + 32));
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    notify_get_state(a2, &v8);
    v5 = v8;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    memset(&v9, 0, sizeof(v9));
    CMTimeMake(&v9, v5, 1000);
    if (!*DerivedStorage)
    {
      v7 = *(DerivedStorage + 296);
      if (v7)
      {
        __playerairplay_initializeVolumeFadeOutNotification_block_invoke_cold_1(&v9.value, v7);
      }
    }

    CFRelease(v4);
  }
}

uint64_t OUTLINED_FUNCTION_19_27()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_31_15()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_32_14(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_33_15(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, os_log_type_t type, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_39_13()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_42_11()
{

  return FigSimpleMutexLock();
}

void OUTLINED_FUNCTION_57_6(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  pap_playbackSessionSetProxiedProperty(a2, a1, *v5, 0);
}

uint64_t OUTLINED_FUNCTION_60_8()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_61_9()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void *OUTLINED_FUNCTION_62_8()
{

  return malloc_type_calloc(1uLL, 0x40uLL, 0x10600403C78B70CuLL);
}

BOOL OUTLINED_FUNCTION_75_5(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

const void *OUTLINED_FUNCTION_88_5()
{
  v3 = *v1;

  return CFDictionaryGetValue(v0, v3);
}

uint64_t OUTLINED_FUNCTION_89_3()
{

  return FigNotificationCenterRemoveWeakListener();
}

uint64_t OUTLINED_FUNCTION_91_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, CMTime *time2, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, __int128 time2a, CMTime *time1, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t time1a, uint64_t time1_8)
{
  time1_16 = a17;
  time2a = *(v64 + 160);
  time1 = *(v64 + 176);

  return CMTimeCompare(&time1a, &time2a);
}

CMTime *OUTLINED_FUNCTION_92_3@<X0>(uint64_t a1@<X8>, CMTime *rhs, CMTime *a3, CMTime *lhs, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 rhsa, uint64_t rhs_16, uint64_t a12, __int128 a13, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int128 a26, uint64_t a27)
{
  lhs_16 = a1;
  rhsa = a26;
  rhs_16 = a27;

  return CMTimeSubtract(&a12, &lhsa, &rhsa);
}

uint64_t OUTLINED_FUNCTION_94_2()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

const void *OUTLINED_FUNCTION_109_2()
{
  v3 = *v1;

  return CFDictionaryGetValue(v0, v3);
}

uint64_t OUTLINED_FUNCTION_113_2(uint64_t a1)
{

  return pap_copyItemFromUUIDOrCurrentInMediaControlPlaylist(v1, a1);
}

uint64_t OUTLINED_FUNCTION_116_2()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_119_2()
{

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

uint64_t OUTLINED_FUNCTION_134_1()
{

  return FigNotificationCenterAddWeakListener();
}

uint64_t OUTLINED_FUNCTION_135_2()
{

  return CMBaseObjectGetDerivedStorage();
}

CMTime *OUTLINED_FUNCTION_136_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *rhs, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CMTime *lhs, uint64_t a15, __n128 rhsa, uint64_t rhs_16, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CMTime *lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  rhsa = a9;
  rhs_16 = 0;

  return CMTimeSubtract(&a35, &lhsa, &rhsa);
}

uint64_t OUTLINED_FUNCTION_137_1()
{

  return FigReadWriteLockUnlockForRead();
}

void OUTLINED_FUNCTION_138_1()
{

  itemairplay_postItemNotification();
}

const void *OUTLINED_FUNCTION_176_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v40 = *v38;

  return CFDictionaryGetValue(v37, v40);
}

const void *OUTLINED_FUNCTION_178_2(uint64_t a1)
{
  v4 = *(v1 + 40);

  return playqueue_copyItemForUUID(v4, a1);
}

uint64_t OUTLINED_FUNCTION_180_2()
{

  return FigReadWriteLockLockForRead();
}

const void *OUTLINED_FUNCTION_181_1()
{
  v3 = *v1;

  return CFDictionaryGetValue(v0, v3);
}

const void *OUTLINED_FUNCTION_182_2()
{
  v3 = *v1;

  return CFDictionaryGetValue(v0, v3);
}

uint64_t FigPlayerCoordinatorCreateWithOptions(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  theString = 0;
  cf = 0;
  v14 = 0;
  if (!a4)
  {
    FigPlayerCoordinatorCreateWithOptions_cold_2(&v17);
    return v17;
  }

  if (!a2)
  {
    FigPlayerCoordinatorCreateWithOptions_cold_1(&v17);
    return v17;
  }

  FigPlayerGetClassID();
  v7 = CMDerivedObjectCreate();
  v8 = cf;
  if (!v7)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = 0;
    if (FigCFDictionaryGetStringIfPresent())
    {
      CFStringGetCString(theString, (DerivedStorage + 57), 10, 0x8000100u);
    }

    if (a3)
    {
      CFDictionaryGetValueIfPresent(a3, @"InterstitialPrimaryPlayerName", &v14);
      v10 = v14 != 0;
    }

    else
    {
      v10 = 0;
    }

    *(DerivedStorage + 40) = v10;
    *(DerivedStorage + 48) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(DerivedStorage + 56) = 0;
    Value = FigCFDictionaryGetValue();
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(DerivedStorage + 24) = Value;
    v12 = FigCFWeakReferenceTableCreate();
    if (v12)
    {
      v7 = v12;
      v8 = cf;
    }

    else
    {
      *(DerivedStorage + 8) = CFRetain(a2);
      CMNotificationCenterGetDefaultLocalCenter();
      v7 = FigNotificationCenterAddWeakListener();
      v8 = cf;
      if (!v7)
      {
        *a4 = cf;
        return v7;
      }
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

uint64_t playercoordinator_reflectSubPlayerNotification()
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return playercoordinator_reflectSubPlayerNotification_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void playercoordinator_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigBaseObject = FigPlayerGetFigBaseObject(a1);
  if (FigBaseObject)
  {
    v4 = FigBaseObject;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v5)
    {
      v5(v4);
    }
  }

  if (DerivedStorage[4])
  {
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v6)
    {
      v7 = v6;
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 120);
      if (v8)
      {
        v8(v7);
      }

      CFRelease(v7);
    }
  }

  v9 = DerivedStorage[1];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[1] = 0;
  }

  v10 = DerivedStorage[2];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[2] = 0;
  }

  v11 = DerivedStorage[4];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[4] = 0;
  }

  v12 = DerivedStorage[3];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[3] = 0;
  }

  v13 = DerivedStorage[9];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[9] = 0;
  }

  v14 = DerivedStorage[6];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[6] = 0;
  }
}

uint64_t playercoordinator_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    playercoordinator_CopyProperty_cold_3(&v23);
    return v23;
  }

  v9 = DerivedStorage;
  if (*DerivedStorage)
  {
    playercoordinator_CopyProperty_cold_1(&v23);
    return v23;
  }

  if (!*(DerivedStorage + 8))
  {
    playercoordinator_CopyProperty_cold_2(&v23);
    return v23;
  }

  if (FigCFEqual())
  {
    v10 = *(v9 + 24);
    if (!v10)
    {
LABEL_22:
      v17 = 0;
      *a4 = v10;
      return v17;
    }

LABEL_6:
    v10 = CFRetain(v10);
    goto LABEL_22;
  }

  if (FigCFEqual())
  {
    v23 = 0;
    if (!*(v9 + 32) || (v10 = FigCFWeakReferenceHolderCopyReferencedObject(), (v23 = v10) == 0))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v12 = Mutable;
      v13 = *MEMORY[0x1E695E4D0];
      v14 = *MEMORY[0x1E695E4C0];
      if (*(v9 + 40))
      {
        v15 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v15 = *MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(Mutable, @"IsInterstitialPlaybackCoordinator", v15);
      CFDictionarySetValue(v12, @"InitialLamportTimestamps", *(v9 + 48));
      if (*(v9 + 56))
      {
        v16 = v13;
      }

      else
      {
        v16 = v14;
      }

      CFDictionarySetValue(v12, @"ShouldOverrideGroupState", v16);
      v17 = FigPlaybackCoordinatorCreate();
      if (v12)
      {
        CFRelease(v12);
      }

      if (v17)
      {
        return v17;
      }

      v18 = *(v9 + 32);
      if (v18)
      {
        CFRelease(v18);
      }

      *(v9 + 32) = FigCFWeakReferenceHolderCreateWithReferencedObject();
      v10 = v23;
    }

    goto LABEL_22;
  }

  if (FigCFEqual())
  {
    v10 = *(v9 + 72);
    if (!v10)
    {
      goto LABEL_22;
    }

    goto LABEL_6;
  }

  if (CFEqual(a2, @"Topology"))
  {
    v20 = *(v9 + 8);

    return FPSupport_CreatePlayerTopology(a3, @"Coordinator", v20, a4);
  }

  else
  {
    FigBaseObject = FigPlayerGetFigBaseObject(*(v9 + 8));
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v22)
    {
      return 4294954514;
    }

    return v22(FigBaseObject, a2, a3, a4);
  }
}

uint64_t playercoordinator_SetProperty(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_SetProperty_cold_1(&v7);
      return v7;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {

        return FPSupport_HandlePlayerSetPropertyAndForwardToSubPlayer(a1, v5, a2);
      }

      else
      {
        playercoordinator_SetProperty_cold_2(&v8);
        return v8;
      }
    }
  }

  else
  {
    playercoordinator_SetProperty_cold_3(&v9);
    return v9;
  }
}

uint64_t playercoordinator_invalidateItemsApply(uint64_t a1, uint64_t a2)
{
  result = FigPlaybackItemGetFigBaseObject(a2);
  if (result)
  {
    v3 = result;
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 8);
    result = VTable + 8;
    v6 = *(v5 + 24);
    if (v6)
    {

      return v6(v3);
    }
  }

  return result;
}

uint64_t playercoordinator_handleSetProperty(const void *a1, uint64_t a2, const void *a3, CFMutableArrayRef a4, _BYTE *a5, void *a6, void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v14 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = a4;
    if (a4)
    {
      CFRetain(a4);
    }

    if (!v14)
    {
      goto LABEL_6;
    }

LABEL_5:
    CFRelease(v14);
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      if (!a4)
      {
        goto LABEL_6;
      }

      v29 = CFGetTypeID(a4);
      if (v29 != CFDictionaryGetTypeID())
      {
        goto LABEL_6;
      }

      v14 = *(DerivedStorage + 48);
      *(DerivedStorage + 48) = a4;
      CFRetain(a4);
      if (!v14)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v31 = FigCFEqual();
    v15 = 0;
    if (!a4 || !v31)
    {
      goto LABEL_7;
    }

    v32 = CFGetTypeID(a4);
    if (v32 != CFBooleanGetTypeID())
    {
      goto LABEL_6;
    }

    v15 = 0;
    *(DerivedStorage + 56) = CFBooleanGetValue(a4);
    goto LABEL_7;
  }

  if (!a4)
  {
    v15 = 0;
    v30 = *(DerivedStorage + 72);
    *(DerivedStorage + 72) = 0;
    if (v30)
    {
LABEL_41:
      CFRelease(v30);
    }

LABEL_7:
    *a5 = 0;
    if (a3)
    {
      v16 = CFRetain(a3);
    }

    else
    {
      v16 = 0;
    }

    *a6 = v16;
    if (a4)
    {
      v26 = CFRetain(a4);
    }

    else
    {
      v26 = 0;
    }

    v24 = 0;
    v27 = 0;
    *a7 = v26;
    if (v15)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v34 = a5;
  v17 = CFGetTypeID(a4);
  if (v17 != CFArrayGetTypeID())
  {
    playercoordinator_handleSetProperty_cold_1(&v35);
    return v35;
  }

  Count = CFArrayGetCount(a4);
  if (Count < 1)
  {
    v25 = 0;
    v15 = a4;
LABEL_40:
    v30 = *(DerivedStorage + 72);
    *(DerivedStorage + 72) = a4;
    CFRetain(a4);
    a4 = v15;
    v15 = v25;
    a5 = v34;
    if (v30)
    {
      goto LABEL_41;
    }

    goto LABEL_7;
  }

  v19 = Count;
  v33 = a6;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    playercoordinator_handleSetProperty_cold_5(&v35);
    return v35;
  }

  v15 = Mutable;
  v21 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a4, v21);
    if (!ValueAtIndex || (v23 = CFGetTypeID(ValueAtIndex), v23 != FigPlaybackItemGetTypeID()))
    {
      playercoordinator_handleSetProperty_cold_4(&v35);
LABEL_48:
      v24 = 0;
      goto LABEL_50;
    }

    if (CMBaseObjectGetVTable() != &kFigPlaybackItemCoordinatorVTable)
    {
      playercoordinator_handleSetProperty_cold_2(&v35);
      goto LABEL_48;
    }

    CMBaseObjectGetDerivedStorage();
    v24 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v24 != a1)
    {
      break;
    }

    FigCFArrayAppendValue();
    if (a1)
    {
      CFRelease(v24);
    }

    if (v19 == ++v21)
    {
      v25 = v15;
      a6 = v33;
      goto LABEL_40;
    }
  }

  playercoordinator_handleSetProperty_cold_3(&v35);
LABEL_50:
  v27 = v35;
LABEL_28:
  CFRelease(v15);
LABEL_29:
  if (v24)
  {
    CFRelease(v24);
  }

  return v27;
}

uint64_t itemcoordinator_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 8))
  {
    v5 = 0;
    if (!v1)
    {
      return v5;
    }

    goto LABEL_11;
  }

  if (v1)
  {
    FigCFWeakReferenceTableRemoveValue();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  FigBaseObject = FigPlaybackItemGetFigBaseObject(*(DerivedStorage + 8));
  if (!FigBaseObject)
  {
    v5 = 4294954516;
    if (!v1)
    {
      return v5;
    }

    goto LABEL_11;
  }

  v3 = FigBaseObject;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (v4)
  {
    v5 = v4(v3);
    if (!v1)
    {
      return v5;
    }

    goto LABEL_11;
  }

  v5 = 4294954514;
  if (v1)
  {
LABEL_11:
    CFRelease(v1);
  }

  return v5;
}

void itemcoordinator_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigBaseObject = FigPlaybackItemGetFigBaseObject(a1);
  if (FigBaseObject)
  {
    v4 = FigBaseObject;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v5)
    {
      v5(v4);
    }
  }

  v6 = DerivedStorage[3];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[3] = 0;
  }

  v7 = DerivedStorage[4];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[4] = 0;
  }

  v8 = DerivedStorage[2];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[2] = 0;
  }

  v9 = DerivedStorage[1];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[1] = 0;
  }
}

uint64_t itemcoordinator_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v9 = DerivedStorage;
    if (*DerivedStorage)
    {
      itemcoordinator_CopyProperty_cold_1(&v15);
      return v15;
    }

    else if (*(DerivedStorage + 8))
    {
      if (CFEqual(a2, @"InterstitialTimeRanges"))
      {
        v10 = v9[3];
        if (v10)
        {
LABEL_6:
          v11 = CFRetain(v10);
LABEL_10:
          result = 0;
          *a4 = v11;
          return result;
        }

LABEL_9:
        v11 = 0;
        goto LABEL_10;
      }

      if (CFEqual(a2, @"IntegratedTimelineTimeOffsets"))
      {
        v10 = v9[4];
        if (v10)
        {
          goto LABEL_6;
        }

        goto LABEL_9;
      }

      FigBaseObject = FigPlaybackItemGetFigBaseObject(v9[1]);
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v14)
      {

        return v14(FigBaseObject, a2, a3, a4);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcoordinator_CopyProperty_cold_2(&v16);
      return v16;
    }
  }

  else
  {
    itemcoordinator_CopyProperty_cold_3(&v17);
    return v17;
  }
}

uint64_t itemcoordinator_SetProperty(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_SetProperty_cold_1(&v7);
      return v7;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {

        return FPSupport_HandlePlaybackItemSetPropertyAndForwardToSubItem(a1, v5, a2);
      }

      else
      {
        itemcoordinator_SetProperty_cold_2(&v8);
        return v8;
      }
    }
  }

  else
  {
    itemcoordinator_SetProperty_cold_3(&v9);
    return v9;
  }
}

uint64_t itemcoordinator_reflectSubItemNotification()
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return itemcoordinator_reflectSubItemNotification_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

const void *itemcoordinator_handleSetProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4, char *a5, void *a6, void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a3, @"InterstitialTimeRanges"))
  {
    if (!CFEqual(a3, @"IntegratedTimelineTimeOffsets"))
    {
      v17 = 0;
      v14 = 0;
      goto LABEL_21;
    }

    if (a4)
    {
      v15 = CFGetTypeID(a4);
      if (v15 != CFArrayGetTypeID())
      {
        goto LABEL_19;
      }

      v16 = *(DerivedStorage + 32);
      *(DerivedStorage + 32) = a4;
      CFRetain(a4);
      if (!v16)
      {
LABEL_17:
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        goto LABEL_18;
      }
    }

    else
    {
      v16 = *(DerivedStorage + 32);
      *(DerivedStorage + 32) = 0;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    CFRelease(v16);
    goto LABEL_17;
  }

  if (a4)
  {
    v13 = CFGetTypeID(a4);
    if (v13 == CFArrayGetTypeID())
    {
      v14 = *(DerivedStorage + 24);
      *(DerivedStorage + 24) = a4;
      CFRetain(a4);
      if (!v14)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

LABEL_19:
    v14 = FigSignalErrorAtGM();
    goto LABEL_20;
  }

  v14 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = 0;
  if (v14)
  {
LABEL_12:
    CFRelease(v14);
LABEL_18:
    v14 = 0;
  }

LABEL_20:
  v17 = 1;
LABEL_21:
  *a5 = v17;
  if (a3)
  {
    v18 = CFRetain(a3);
  }

  else
  {
    v18 = 0;
  }

  *a6 = v18;
  if (a4)
  {
    v19 = CFRetain(a4);
  }

  else
  {
    v19 = 0;
  }

  *a7 = v19;
  return v14;
}

uint64_t itemcoordinator_GetDimensions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_GetDimensions_cold_1(&v10);
      return v10;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v8)
        {

          return v8(v7, a2, a3);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_GetDimensions_cold_2(&v11);
        return v11;
      }
    }
  }

  else
  {
    itemcoordinator_GetDimensions_cold_3(&v12);
    return v12;
  }
}

uint64_t itemcoordinator_GetDuration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_GetDuration_cold_1(&v8);
      return v8;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v6)
        {

          return v6(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_GetDuration_cold_2(&v9);
        return v9;
      }
    }
  }

  else
  {
    itemcoordinator_GetDuration_cold_3(&v10);
    return v10;
  }
}

uint64_t itemcoordinator_SetCurrentTime(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    itemcoordinator_SetCurrentTime_cold_3(&v12);
    return v12;
  }

  if (*DerivedStorage)
  {
    itemcoordinator_SetCurrentTime_cold_1(&v12);
    return v12;
  }

  v7 = *(DerivedStorage + 8);
  if (!v7)
  {
    itemcoordinator_SetCurrentTime_cold_2(&v12);
    return v12;
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    return 4294954514;
  }

  v12 = v10;
  v13 = v11;
  return v8(v7, &v12, a3);
}

uint64_t itemcoordinator_GetCurrentTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_GetCurrentTime_cold_1(&v8);
      return v8;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v6)
        {

          return v6(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_GetCurrentTime_cold_2(&v9);
        return v9;
      }
    }
  }

  else
  {
    itemcoordinator_GetCurrentTime_cold_3(&v10);
    return v10;
  }
}

uint64_t itemcoordinator_CopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_CopyTrackProperty_cold_1(&v14);
      return v14;
    }

    else
    {
      v11 = *(DerivedStorage + 8);
      if (v11)
      {
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v12)
        {

          return v12(v11, a2, a3, a4, a5);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_CopyTrackProperty_cold_2(&v15);
        return v15;
      }
    }
  }

  else
  {
    itemcoordinator_CopyTrackProperty_cold_3(&v16);
    return v16;
  }
}

uint64_t itemcoordinator_MakeReadyForInspection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_MakeReadyForInspection_cold_1(&v10);
      return v10;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v8)
        {

          return v8(v7, a2, a3);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_MakeReadyForInspection_cold_2(&v11);
        return v11;
      }
    }
  }

  else
  {
    itemcoordinator_MakeReadyForInspection_cold_3(&v12);
    return v12;
  }
}

uint64_t itemcoordinator_CopyCommonMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_CopyCommonMetadata_cold_1(&v12);
      return v12;
    }

    else
    {
      v9 = *(DerivedStorage + 8);
      if (v9)
      {
        v10 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v10)
        {

          return v10(v9, a2, a3, a4);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_CopyCommonMetadata_cold_2(&v13);
        return v13;
      }
    }
  }

  else
  {
    itemcoordinator_CopyCommonMetadata_cold_3(&v14);
    return v14;
  }
}

uint64_t itemcoordinator_CopyChapterImageData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_CopyChapterImageData_cold_1(&v12);
      return v12;
    }

    else
    {
      v9 = *(DerivedStorage + 8);
      if (v9)
      {
        v10 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v10)
        {

          return v10(v9, a2, a3, a4);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_CopyChapterImageData_cold_2(&v13);
        return v13;
      }
    }
  }

  else
  {
    itemcoordinator_CopyChapterImageData_cold_3(&v14);
    return v14;
  }
}

uint64_t itemcoordinator_GetNextThumbnailTime(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    itemcoordinator_GetNextThumbnailTime_cold_3(&v14);
    return v14;
  }

  if (*DerivedStorage)
  {
    itemcoordinator_GetNextThumbnailTime_cold_1(&v14);
    return v14;
  }

  v9 = *(DerivedStorage + 8);
  if (!v9)
  {
    itemcoordinator_GetNextThumbnailTime_cold_2(&v14);
    return v14;
  }

  v12 = *a2;
  v13 = *(a2 + 2);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v10)
  {
    return 4294954514;
  }

  v14 = v12;
  v15 = v13;
  return v10(v9, &v14, a3, a4);
}

uint64_t itemcoordinator_SetCurrentTimeWithRange(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    itemcoordinator_SetCurrentTimeWithRange_cold_3(&v24);
    return v24;
  }

  if (*DerivedStorage)
  {
    itemcoordinator_SetCurrentTimeWithRange_cold_1(&v24);
    return v24;
  }

  v11 = *(DerivedStorage + 8);
  if (!v11)
  {
    itemcoordinator_SetCurrentTimeWithRange_cold_2(&v24);
    return v24;
  }

  v18 = *a2;
  v19 = *(a2 + 2);
  v16 = *a4;
  v17 = *(a4 + 2);
  v14 = *a5;
  v15 = *(a5 + 2);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v12)
  {
    return 4294954514;
  }

  v24 = v18;
  v25 = v19;
  v22 = v16;
  v23 = v17;
  v20 = v14;
  v21 = v15;
  return v12(v11, &v24, a3, &v22, &v20);
}

uint64_t itemcoordinator_SetTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_SetTrackProperty_cold_1(&v12);
      return v12;
    }

    else
    {
      v9 = *(DerivedStorage + 8);
      if (v9)
      {
        v10 = *(*(CMBaseObjectGetVTable() + 16) + 112);
        if (v10)
        {

          return v10(v9, a2, a3, a4);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_SetTrackProperty_cold_2(&v13);
        return v13;
      }
    }
  }

  else
  {
    itemcoordinator_SetTrackProperty_cold_3(&v14);
    return v14;
  }
}

uint64_t itemcoordinator_CopyFormatReader(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_CopyFormatReader_cold_1(&v8);
      return v8;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 120);
        if (v6)
        {

          return v6(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_CopyFormatReader_cold_2(&v9);
        return v9;
      }
    }
  }

  else
  {
    itemcoordinator_CopyFormatReader_cold_3(&v10);
    return v10;
  }
}

uint64_t itemcoordinator_SeekToDateWithID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_SeekToDateWithID_cold_1(&v10);
      return v10;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 128);
        if (v8)
        {

          return v8(v7, a2, a3);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_SeekToDateWithID_cold_2(&v11);
        return v11;
      }
    }
  }

  else
  {
    itemcoordinator_SeekToDateWithID_cold_3(&v12);
    return v12;
  }
}

uint64_t itemcoordinator_SetCurrentTimeWithRangeAndID(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    itemcoordinator_SetCurrentTimeWithRangeAndID_cold_3(&v26);
    return v26;
  }

  if (*DerivedStorage)
  {
    itemcoordinator_SetCurrentTimeWithRangeAndID_cold_1(&v26);
    return v26;
  }

  v13 = *(DerivedStorage + 8);
  if (!v13)
  {
    itemcoordinator_SetCurrentTimeWithRangeAndID_cold_2(&v26);
    return v26;
  }

  v20 = *a2;
  v21 = *(a2 + 2);
  v18 = *a4;
  v19 = *(a4 + 2);
  v16 = *a5;
  v17 = *(a5 + 2);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v14)
  {
    return 4294954514;
  }

  v26 = v20;
  v27 = v21;
  v24 = v18;
  v25 = v19;
  v22 = v16;
  v23 = v17;
  return v14(v13, &v26, a3, &v24, &v22, a6);
}

uint64_t itemcoordinator_CopyAsset(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_CopyAsset_cold_1(&v8);
      return v8;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 152);
        if (v6)
        {

          return v6(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_CopyAsset_cold_2(&v9);
        return v9;
      }
    }
  }

  else
  {
    itemcoordinator_CopyAsset_cold_3(&v10);
    return v10;
  }
}

uint64_t itemcoordinator_SetProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_SetProperties_cold_1(&v9);
      return v9;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {

        return FPSupport_HandlePlaybackItemSetPropertiesAndForwardToSubItem(a1, v7, 0, itemcoordinator_handleSetProperty, a2, a3);
      }

      else
      {
        itemcoordinator_SetProperties_cold_2(&v10);
        return v10;
      }
    }
  }

  else
  {
    itemcoordinator_SetProperties_cold_3(&v11);
    return v11;
  }
}

uint64_t itemcoordinator_ExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      itemcoordinator_ExtractAndRetainNextSampleBuffer_cold_1(&v12);
      return v12;
    }

    else
    {
      v9 = *(DerivedStorage + 8);
      if (v9)
      {
        v10 = *(*(CMBaseObjectGetVTable() + 16) + 168);
        if (v10)
        {

          return v10(v9, a2, a3, a4);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        itemcoordinator_ExtractAndRetainNextSampleBuffer_cold_2(&v13);
        return v13;
      }
    }
  }

  else
  {
    itemcoordinator_ExtractAndRetainNextSampleBuffer_cold_3(&v14);
    return v14;
  }
}

uint64_t itemcoordinator_SetCurrentTimeWithOptions(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    itemcoordinator_SetCurrentTimeWithOptions_cold_3(&v12);
    return v12;
  }

  if (*DerivedStorage)
  {
    itemcoordinator_SetCurrentTimeWithOptions_cold_1(&v12);
    return v12;
  }

  v7 = *(DerivedStorage + 8);
  if (!v7)
  {
    itemcoordinator_SetCurrentTimeWithOptions_cold_2(&v12);
    return v12;
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v8)
  {
    return 4294954514;
  }

  v12 = v10;
  v13 = v11;
  return v8(v7, &v12, a3);
}

uint64_t playercoordinator_AddToPlayQueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_AddToPlayQueue_cold_1(&v11);
      return v11;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {
        v8 = *(v6 + 8);
        if (a3)
        {
          a3 = *(CMBaseObjectGetDerivedStorage() + 8);
          v7 = *(DerivedStorage + 8);
        }

        v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v9)
        {

          return v9(v7, v8, a3);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_AddToPlayQueue_cold_2(&v12);
        return v12;
      }
    }
  }

  else
  {
    playercoordinator_AddToPlayQueue_cold_3(&v13);
    return v13;
  }
}