@interface EnsureNextEventWillPlay
@end

@implementation EnsureNextEventWillPlay

void __fpic_EnsureNextEventWillPlay_block_invoke()
{
  OUTLINED_FUNCTION_182();
  v1 = v0;
  v250 = *MEMORY[0x1E69E9840];
  v2 = v0[5];
  if (*(v2 + 1146))
  {
    v3 = *(v2 + 1145) != 0;
  }

  else
  {
    v3 = 1;
  }

  if (*(v2 + 160))
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_75_9();
    if (!v5)
    {
      OUTLINED_FUNCTION_14_59();
      if (v7)
      {
        v4 = v6;
      }
    }

    v8 = v4[1];
    v223 = *v4;
    v224 = v8;
    v9 = *(v4 + 32);
    v10 = *(v4 + 33);
    LODWORD(v222) = *(v4 + 34);
    WORD2(v222) = *(v4 + 19);
    if (v9 | v10)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(DerivedStorage + 1142))
      {
        if (*(DerivedStorage + 1141))
        {
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_2_166();
          if (!v12)
          {
            v221 = 0;
            v219 = 0u;
            v220 = 0u;
            *v244 = v223;
            v245 = v224;
            v246 = v9;
            v247 = v10;
            v248 = v222;
            v249 = WORD2(v222);
            fpic_SubtractTimeFromMoment(v244, &kLiveInterstitialAdvanceInterval, &v219);
            v13 = v1[6];
            v14 = CMBaseObjectGetDerivedStorage();
            OUTLINED_FUNCTION_71_10(v14, v15, v16, v17, v18, v19, v20, v21, v181, v187, v193, v200, v207, v213, v219);
            v29 = OUTLINED_FUNCTION_143_0(v22, v23, &kMomentsAreCloseThreshold, v24, v25, v26, v27, v28, v182, v188, v194, v201, v208, v214, v219, *(&v219 + 1), v220, *(&v220 + 1), v221, v222, v223, *(&v223 + 1), v224, *(&v224 + 1), cf, v226, time2.value, *&time2.timescale, time2.epoch, v228, rhs.value, *&rhs.timescale, rhs.epoch, v230, v231, *(&v231 + 1), v232, v233, *(&v233 + 1), v234, v235.value, *&v235.timescale, v235.epoch, type, *(&type + 1), v237, *v238, *&v238[8], *&v238[16], v239, v14[105], v14[106], v14[107], v14[108], *(v22 + 872), *&lhs[40], *&lhs[48], *&lhs[56], v241, *(&v241 + 1), v242, *(&v242 + 1), v243);
            if (!fpic_MomentsAreCloseWithTolerance(v29, v30, v31))
            {
              LODWORD(v243) = 0;
              v241 = 0u;
              v242 = 0u;
              memset(lhs, 0, sizeof(lhs));
              v49 = CMBaseObjectGetDerivedStorage();
              StopAndReleaseTimer((v49 + 816));
              *(v49 + 872) = 0;
              OUTLINED_FUNCTION_71_10(v50, v51, v52, v53, v54, v55, v56, v57, v181, v187, v193, v200, v207, v213, v219);
              OUTLINED_FUNCTION_266();
              fpic_CreateAndPrimeItemTimer();
              if (!v58)
              {
                v59 = v220;
                *(v14 + 105) = v219;
                *(v14 + 107) = v59;
                v14[109] = v221;
                if (dword_1EAF178D0)
                {
                  LODWORD(type) = 0;
                  LOBYTE(v235.value) = 0;
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v235.value);
                  OUTLINED_FUNCTION_40();
                  if (&dword_1EAF17000)
                  {
                    OUTLINED_FUNCTION_71_10(v61, v62, v63, v64, v65, v66, v67, v68, v181, v187, v193, v200, v207, v213, v219);
                    v77 = OUTLINED_FUNCTION_143_0(v69, v70, v71, v72, v73, v74, v75, v76, v183, v189, v195, v202, v209, v215, v219, *(&v219 + 1), v220, *(&v220 + 1), v221, v222, v223, *(&v223 + 1), v224, *(&v224 + 1), cf, v226, time2.value, *&time2.timescale, time2.epoch, v228, rhs.value, *&rhs.timescale, rhs.epoch, v230, v231, *(&v231 + 1), v232, v233, *(&v233 + 1), v234, v235.value, *&v235.timescale, v235.epoch, type, *(&type + 1), v237, *v238, *&v238[8], *&v238[16], v239, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], *&lhs[32], *&lhs[40], *&lhs[48], *&lhs[56], v241, *(&v241 + 1), v242, *(&v242 + 1), v243);
                    fpic_getMomentDesc(v77, v78);
                    *v238 = 136315650;
                    *&v238[4] = "fpic_PrimeLiveBufferTimer";
                    *&v238[12] = 2048;
                    *&v238[14] = v13;
                    *&v238[22] = 2080;
                    v239 = lhs;
                    OUTLINED_FUNCTION_82_1();
                    v181 = v238;
                    OUTLINED_FUNCTION_38();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_414();
                }
              }
            }
          }
        }
      }

      v32 = *(CMBaseObjectGetDerivedStorage() + 1144);
      v33 = v1[5];
      if ((v32 || *(v33 + 1145) && *(v33 + 1146)) && fpic_GetPerAssetPerEventTrackedObject(v33, 0, 0, @"PlaybackItem") != 0 && v3)
      {
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_2_166();
        if (!v34 && !*(CMBaseObjectGetDerivedStorage() + 896))
        {
          v35 = fpic_TransitionPlayback(v1[6], v1[7], 0, v1[8]);
          OUTLINED_FUNCTION_12_7(v35);
          OUTLINED_FUNCTION_2_4();
          if (*(v36 + 24))
          {
            goto LABEL_19;
          }

          v37 = OUTLINED_FUNCTION_196_2();
          fpic_SignalCurrentEvent(v37, v38);
        }
      }

      if (fpic_GetCurrentlyPlayingEvent())
      {
        OUTLINED_FUNCTION_29();
        if (!v7 && !*(CMBaseObjectGetDerivedStorage() + 896))
        {
          v39 = (*(v1[5] + 72))(v1[6], v1[8], *(v1[5] + 48));
          if (!v39)
          {
LABEL_84:
            OUTLINED_FUNCTION_196_2();
            fpic_PruneCurrentEventsToQueue();
            goto LABEL_19;
          }

          v40 = v39;
          v41 = v1[6];
          v42 = CMBaseObjectGetDerivedStorage();
          cf = 0;
          fpic_CopyNextItem(v40, &cf);
          v43 = cf;
          if ((*(v42 + 540) & 0x1D) == 1 || !cf)
          {
            if (!cf)
            {
LABEL_67:
              OUTLINED_FUNCTION_29();
              if (v7)
              {
                v105 = CMBaseObjectGetDerivedStorage();
                if (CFArrayGetCount(*(v105 + 656)))
                {
                  if (CFArrayGetValueAtIndex(*(v105 + 656), 0))
                  {
                    v106 = OUTLINED_FUNCTION_284();
                    v108 = v107(v106);
                    v109 = FigPlayerInterstitialEventCopyIdentifier(v108);
                    LODWORD(v244[0]) = 0;
                    FigCFDictionaryGetInt32IfPresent();
                    FigCFDictionarySetInt32();
                    if (v109)
                    {
                      CFRelease(v109);
                    }
                  }
                }

                v110 = OUTLINED_FUNCTION_196_2();
                fpic_SetInterstitialActionAtEnd(v110, v111, @"StopAtEndOfQueue");
                fpic_UnpauseInterstitialPlayer(v1[6], v40, v1[8]);
                Count = CFArrayGetCount(*(v1[5] + 656));
                if (Count >= 1)
                {
                  v112 = 0;
                  v203 = *MEMORY[0x1E695E480];
                  do
                  {
                    PerEventTrackingCount = fpic_GetPerEventTrackingCount(v1[5], v112);
                    if (PerEventTrackingCount >= 1)
                    {
                      v114 = PerEventTrackingCount;
                      for (i = 0; i != v114; ++i)
                      {
                        PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(v1[5], v112, i, @"PlaybackItem");
                        v117 = fpic_UnwrapPlaybackItem(v1[6], PerAssetPerEventTrackedObject, v1[8]);
                        if (v117)
                        {
                          v244[0] = 0;
                          FigBaseObject = FigPlaybackItemGetFigBaseObject(v117);
                          v119 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                          if (v119)
                          {
                            v119(FigBaseObject, @"Timebase", v203, v244);
                          }

                          v120 = OUTLINED_FUNCTION_284();
                          fpic_UnregisterInterstitialItemNotifications(v120, v121, v122);
                          CMNotificationCenterGetDefaultLocalCenter();
                          FigNotificationCenterAddWeakListener();
                          if (v244[0])
                          {
                            CMNotificationCenterGetDefaultLocalCenter();
                            FigNotificationCenterAddWeakListener();
                            CMNotificationCenterGetDefaultLocalCenter();
                            OUTLINED_FUNCTION_766();
                            FigNotificationCenterAddWeakListener();
                            CFRelease(v244[0]);
                          }
                        }
                      }
                    }

                    ++v112;
                  }

                  while (v112 != Count);
                }
              }

              goto LABEL_84;
            }
          }

          else
          {
            OUTLINED_FUNCTION_284();
            if (v43 == fpic_GetFirstCurrentItem())
            {
              v44 = (v42 + 528);
              v45 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (v45)
              {
                v45(v43, v42 + 528);
              }

              if (dword_1EAF178D0)
              {
                *v238 = 0;
                LOBYTE(type) = 0;
                OUTLINED_FUNCTION_186_1();
                v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v47 = *v238;
                v213 = v46;
                LODWORD(v207) = type;
                if (os_log_type_enabled(v46, type))
                {
                  v48 = v47;
                }

                else
                {
                  v48 = v47 & 0xFFFFFFFE;
                }

                if (v48)
                {
                  *v244 = *v44;
                  OUTLINED_FUNCTION_104_4();
                  CMTimeGetSeconds(v87);
                  *lhs = 136315650;
                  OUTLINED_FUNCTION_182_3("fpic_StartRecordingActiveInterstitialItemPlayoutTime");
                  *&lhs[22] = 2048;
                  *&lhs[24] = v88;
                  OUTLINED_FUNCTION_82_1();
                  v181 = lhs;
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_524();
              }

              v89 = CMBaseObjectGetDerivedStorage();
              if (*(v89 + 1142) && *(v89 + 1141))
              {
                v90 = CMBaseObjectGetDerivedStorage();
                v237 = 0;
                memset(v238, 0, sizeof(v238));
                type = 0uLL;
                OUTLINED_FUNCTION_186_1();
                fpic_GetSeekableRange(v91, 0, v92, v93);
                memset(&v235, 0, sizeof(v235));
                v94 = CMBaseObjectGetDerivedStorage();
                if (*(v94 + 376))
                {
                  OUTLINED_FUNCTION_231_0();
                  v235.epoch = v123;
                  *&v235.value = *v124;
                }

                else if (*(v94 + 377))
                {
                  v125 = OUTLINED_FUNCTION_149_2(v94);
                  v94 = FigCreateTimeWithDateAndMoment(v244, &v235, v125);
                }

                else
                {
                  v235 = **&MEMORY[0x1E6960C70];
                }

                *v244 = type;
                *&v245 = v237;
                v126 = OUTLINED_FUNCTION_143_0(v94, v95, v96, v97, v98, v99, v100, v101, v181, v187, v193, v200, v207, v213, v219, *(&v219 + 1), v220, *(&v220 + 1), v221, v222, v223, *(&v223 + 1), v224, *(&v224 + 1), cf, v226, time2.value, *&time2.timescale, time2.epoch, v228, rhs.value, *&rhs.timescale, rhs.epoch, v230, v231, *(&v231 + 1), v232, 0, 0, 0, v235.value, *&v235.timescale, v235.epoch, type, *(&type + 1), v237, *v238, *&v238[8], *&v238[16], v239, v235.value, *&v235.timescale, v235.epoch, *&lhs[24], *&lhs[32], *&lhs[40], *&lhs[48], *&lhs[56], v241, *(&v241 + 1), v242, *(&v242 + 1), v243);
                v129 = CMTimeSubtract(v128, v126, v127);
                v232 = 0;
                v231 = 0uLL;
                *v244 = *(v90 + 408);
                *&v245 = *(v90 + 424);
                v137 = OUTLINED_FUNCTION_143_0(v129, v130, v131, v132, v133, v134, v135, v136, v184, v190, v197, v204, v210, v216, v219, *(&v219 + 1), v220, *(&v220 + 1), v221, v222, v223, *(&v223 + 1), v224, *(&v224 + 1), cf, v226, time2.value, *&time2.timescale, time2.epoch, v228, rhs.value, *&rhs.timescale, rhs.epoch, v230, 0, 0, 0, v233, *(&v233 + 1), v234, v235.value, *&v235.timescale, v235.epoch, type, *(&type + 1), v237, *v238, *&v238[8], *&v238[16], v239, *(v90 + 432), *(v90 + 440), *(v90 + 448), *&lhs[24], *&lhs[32], *&lhs[40], *&lhs[48], *&lhs[56], v241, *(&v241 + 1), v242, *(&v242 + 1), v243);
                CMTimeAdd(v139, v137, v138);
                *lhs = v231;
                *&lhs[16] = v232;
                rhs = *(v90 + 480);
                v140 = CMTimeAdd(v244, lhs, &rhs);
                v231 = *v244;
                v232 = v245;
                *v244 = v233;
                *&v245 = v234;
                v148 = OUTLINED_FUNCTION_143_0(v140, v141, v142, v143, v144, v145, v146, v147, v185, v191, v198, v205, v211, v217, v219, *(&v219 + 1), v220, *(&v220 + 1), v221, v222, v223, *(&v223 + 1), v224, *(&v224 + 1), cf, v226, time2.value, *&time2.timescale, time2.epoch, v228, 0, 0, 0, v230, v231, *(&v231 + 1), v232, v233, *(&v233 + 1), v234, v235.value, *&v235.timescale, v235.epoch, type, *(&type + 1), v237, *v238, *&v238[8], *&v238[16], v239, v231, *(&v231 + 1), v232, *&lhs[24], *&lhs[32], *&lhs[40], *&lhs[48], *&lhs[56], v241, *(&v241 + 1), v242, *(&v242 + 1), v243);
                v151 = CMTimeSubtract(v150, v148, v149);
                OUTLINED_FUNCTION_67_13(v151, v152, v153, v154, v155, v156, v157, v158, v186, v192, v199, v206, v212, v218, v219, *(&v219 + 1), v220, *(&v220 + 1), v221, v222, v223, *(&v223 + 1), v224, *(&v224 + 1), cf, v226, time2.value, *&time2.timescale, time2.epoch, v228, *&rhs.value);
                time2 = **&MEMORY[0x1E6960CC0];
                CMTimeMaximum(v244, lhs, &time2);
                *&rhs.value = *v244;
                rhs.epoch = v245;
                if (dword_1EAF178D0 >= 2)
                {
                  LODWORD(time2.value) = 0;
                  HIBYTE(v226) = 0;
                  v159 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  value = time2.value;
                  os_log_type_enabled(v159, HIBYTE(v226));
                  OUTLINED_FUNCTION_125();
                  if (v7)
                  {
                    v162 = v161;
                  }

                  else
                  {
                    v162 = value;
                  }

                  if (v162)
                  {
                    *v244 = *v238;
                    OUTLINED_FUNCTION_104_4();
                    Seconds = CMTimeGetSeconds(v163);
                    *v244 = type;
                    OUTLINED_FUNCTION_104_4();
                    v166 = CMTimeGetSeconds(v165);
                    v167 = CMBaseObjectGetDerivedStorage();
                    if (*(v167 + 376))
                    {
                      OUTLINED_FUNCTION_231_0();
                      *&lhs[16] = v168;
                      *lhs = *v169;
                    }

                    else if (*(v167 + 377))
                    {
                      v170 = OUTLINED_FUNCTION_149_2(v167);
                      FigCreateTimeWithDateAndMoment(v244, lhs, v170);
                    }

                    else
                    {
                      *lhs = *MEMORY[0x1E6960C70];
                      *&lhs[16] = *(MEMORY[0x1E6960C70] + 16);
                    }

                    v171 = CMTimeGetSeconds(lhs);
                    *v244 = v231;
                    OUTLINED_FUNCTION_104_4();
                    v173 = CMTimeGetSeconds(v172);
                    *v244 = *&rhs.value;
                    OUTLINED_FUNCTION_104_4();
                    v175 = CMTimeGetSeconds(v174);
                    *lhs = 136316418;
                    *&lhs[4] = "fpic_SetLiveHorizonOnInterstitialItem";
                    *&lhs[12] = 2048;
                    *&lhs[14] = Seconds;
                    *&lhs[22] = 2048;
                    *&lhs[24] = v166;
                    *&lhs[32] = 2048;
                    *&lhs[34] = v171;
                    *&lhs[42] = 2048;
                    *&lhs[44] = v173;
                    *&lhs[52] = 2048;
                    *&lhs[54] = v175;
                    OUTLINED_FUNCTION_23();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_417();
                }

                *v244 = *&rhs.value;
                OUTLINED_FUNCTION_104_4();
                v178 = CMTimeCopyAsDictionary(v176, v177);
                v179 = FigPlaybackItemGetFigBaseObject(v43);
                v180 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v180)
                {
                  v180(v179, @"interstitialLiveHorizon", v178);
                }

                if (v178)
                {
                  CFRelease(v178);
                }
              }

              goto LABEL_66;
            }

            if (*(CMBaseObjectGetDerivedStorage() + 1032) != v43)
            {
              *v238 = 0;
              LOBYTE(type) = 0;
              OUTLINED_FUNCTION_186_1();
              v83 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v84 = *v238;
              os_log_type_enabled(v83, type);
              OUTLINED_FUNCTION_125();
              if (v7)
              {
                v86 = v85;
              }

              else
              {
                v86 = v84;
              }

              if (v86)
              {
                OUTLINED_FUNCTION_284();
                fpic_GetFirstCurrentItem();
                *lhs = 136315650;
                OUTLINED_FUNCTION_182_3("fpic_StartRecordingActiveInterstitialItemPlayoutTime");
                *&lhs[22] = v102;
                *&lhs[24] = v103;
                OUTLINED_FUNCTION_82_1();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl();
              }

              goto LABEL_65;
            }

            if (dword_1EAF178D0)
            {
              *v238 = 0;
              LOBYTE(type) = 0;
              OUTLINED_FUNCTION_186_1();
              v79 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v80 = *v238;
              os_log_type_enabled(v79, type);
              OUTLINED_FUNCTION_125();
              if (v7)
              {
                v82 = v81;
              }

              else
              {
                v82 = v80;
              }

              if (v82)
              {
                v104 = *(v42 + 1032);
                *lhs = 136315650;
                *&lhs[4] = "fpic_StartRecordingActiveInterstitialItemPlayoutTime";
                *&lhs[12] = 2048;
                *&lhs[14] = v41;
                *&lhs[22] = 2048;
                *&lhs[24] = v104;
                OUTLINED_FUNCTION_82_1();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl();
              }

LABEL_65:
              OUTLINED_FUNCTION_109();
              OUTLINED_FUNCTION_417();
            }
          }

LABEL_66:
          CFRelease(v43);
          goto LABEL_67;
        }
      }
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_181();
}

@end