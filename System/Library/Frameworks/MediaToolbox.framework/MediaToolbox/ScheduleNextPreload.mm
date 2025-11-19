@interface ScheduleNextPreload
@end

@implementation ScheduleNextPreload

void __fpic_ScheduleNextPreload_block_invoke(void *a1)
{
  v2 = a1;
  v243 = *MEMORY[0x1E69E9840];
  v3 = *(a1[5] + 704);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      LODWORD(v192) = 0;
      HIDWORD(v172) = *(MEMORY[0x1E6960C70] + 12);
      v206 = *(MEMORY[0x1E6960C70] + 16);
      v182 = v2;
      v187 = Count;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v2[5] + 704), v6);
        FigPlayerInterstitialPreloadCopyTargetID(ValueAtIndex);
        OUTLINED_FUNCTION_251();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v9 = CFDictionaryContainsKey(*(DerivedStorage + 712), v1);
        if (v1)
        {
          CFRelease(v1);
        }

        if (v9)
        {
          goto LABEL_60;
        }

        v10 = v2[6];
        v11 = FigPlayerInterstitialPreloadCopyTargetID(ValueAtIndex);
        started = FigPlayerInterstitialPreloadCopyEffectiveStartDate(ValueAtIndex);
        v13 = FigPlayerInterstitialPreloadCopyEffectiveEndDate(ValueAtIndex);
        cf = started;
        v14 = MEMORY[0x19A8CCD90](started);
        TriggerOffset = FigPlayerInterstitialPreloadGetTriggerOffset(ValueAtIndex);
        v216 = v13;
        v16 = MEMORY[0x19A8CCD90](v13) + 0.5;
        v17 = CMBaseObjectGetDerivedStorage();
        v197 = *MEMORY[0x1E6960C70];
        *&v227.value = *MEMORY[0x1E6960C70];
        v228 = 0.0;
        v229 = 0;
        v227.epoch = v206;
        v222 = ValueAtIndex;
        if (!*(v17 + 160))
        {
          goto LABEL_13;
        }

        v18 = v17;
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_2_166();
        if (v19)
        {
          v61 = FigCFWeakReferenceHolderCopyReferencedObject();
          memset(&v237, 0, sizeof(v237));
          fpic_GetCurrentlyPlayingEventPlayoutDuration();
          memset(&v235, 0, sizeof(v235));
          *lhs = v237;
          rhs = *(v18 + 456);
          v62 = CMTimeAdd(&v235, lhs, &rhs);
          v63 = *(v18 + 360);
          *lhs = *(v18 + 344);
          *&lhs[16] = v63;
          v240 = *(v18 + 376);
          OUTLINED_FUNCTION_342(v62, v64, v65, v66, v67, v68, v69, v70, v167, v172, v177, v182, v187, v192, v197, *(&v197 + 1), v206, started, v216, v222, v227.value, *&v227.timescale, v227.epoch, *&v228, v229, v230, v231.value, *&v231.timescale, v231.epoch, v232, rhs.value, *&rhs.timescale, rhs.epoch, v234, *&v235.value);
          fpic_AddTimeToMoment(lhs, &rhs, &v227);
          if (v61)
          {
            CFRelease(v61);
          }
        }

        else
        {
          fpic_CurrentItemMoment(*(v18 + 160), &v227);
        }

        if (BYTE1(v229))
        {
          v20 = v14 + TriggerOffset + -0.5 > v228;
          if (v228 > v16)
          {
            v20 = 1;
          }
        }

        else
        {
LABEL_13:
          v20 = 1;
        }

        HIDWORD(v192) = v20;
        v21 = CMBaseObjectGetDerivedStorage();
        v22 = FigCFWeakReferenceHolderCopyReferencedObject();
        v23 = CFArrayGetCount(*(v21 + 656));
        if (v23 < 1)
        {
          v30 = 1;
          if (v22)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v24 = v23;
          v25 = 1;
          do
          {
            v26 = CFArrayGetValueAtIndex(*(v21 + 656), v25 - 1);
            v27 = (*(v21 + 88))(v10, v22, v26);
            v28 = FigPlayerInterstitialEventCopyIdentifier(v27);
            v29 = FigCFEqual();
            if (v28)
            {
              CFRelease(v28);
            }

            v30 = v29 == 0;
            if (v25 >= v24)
            {
              break;
            }

            ++v25;
          }

          while (!v29);
          if (v22)
          {
LABEL_21:
            CFRelease(v22);
          }
        }

        v2 = v182;
        v5 = v187;
        if (v30)
        {
          v31 = BYTE1(v229) != 0;
          LODWORD(v32) = HIDWORD(v192);
        }

        else
        {
          v31 = 0;
          BYTE1(v229) = 0;
          LODWORD(v32) = 1;
        }

        v1 = v228 <= v16 && v31;
        if (v11)
        {
          CFRelease(v11);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v216)
        {
          CFRelease(v216);
        }

        if ((v32 & 1) == 0)
        {
          v59 = fpic_IssuePreloadRequest(*(v182 + 48), v222);
          OUTLINED_FUNCTION_30_8(v59, *(v182 + 32));
          OUTLINED_FUNCTION_50_14();
          if (v60)
          {
            return;
          }

          goto LABEL_60;
        }

        if (v192)
        {
          v33 = 0;
        }

        else
        {
          v33 = v1;
        }

        if (v33 != 1)
        {
          goto LABEL_60;
        }

        v34 = *(v182 + 48);
        v35 = CMBaseObjectGetDerivedStorage();
        value = *MEMORY[0x1E6960C70];
        timescale = *(MEMORY[0x1E6960C70] + 8);
        v36 = FigPlayerInterstitialPreloadCopyEffectiveStartDate(v222);
        v37 = MEMORY[0x19A8CCD90]();
        v38.n128_f64[0] = FigPlayerInterstitialPreloadGetTriggerOffset(v222);
        HIWORD(v240) = 0;
        v39 = v37 + v38.n128_f64[0];
        *(&v240 + 2) = 0;
        OUTLINED_FUNCTION_227_1(v40, v41, v42, v43, v44, v45, v46, v47, v167, v172, v177, v182, v187, v192, v38, v197);
        v48 = CMBaseObjectGetDerivedStorage();
        v238 = 0;
        memset(&v237, 0, sizeof(v237));
        *&lhs[24] = v39;
        LOWORD(v240) = 256;
        if (!fpic_FindEventStraddlingPrimaryMoment(v34, lhs, &v238, &v237))
        {
          v50 = *(v48 + 160);
          if (v50)
          {
            v51 = CFRetain(v50);
          }

          else
          {
            v51 = 0;
          }

          v52 = *(v48 + 320);
          *lhs = *(v48 + 304);
          *&lhs[16] = v52;
          v240 = *(v48 + 336);
          FigCreateTimeWithDateAndMoment(lhs, &v227, v39);
          v1 = 0;
          value = v227.value;
          LODWORD(v32) = v227.flags;
          timescale = v227.timescale;
          epoch = v227.epoch;
          goto LABEL_48;
        }

        CMBaseObjectGetDerivedStorage();
        FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
        if (FirstIndexOfValue == -1)
        {
          v1 = 0;
          goto LABEL_56;
        }

        v71 = FirstIndexOfValue;
        epoch = FigCFWeakReferenceHolderCopyReferencedObject();
        v72 = OUTLINED_FUNCTION_415_0();
        PerEventTrackingCount = fpic_GetPerEventTrackingCount(v72, v73);
        v235 = **&MEMORY[0x1E6960CC0];
        rhs = v235;
        if (epoch)
        {
          v32 = PerEventTrackingCount;
          if (!v71)
          {
            v75 = CMBaseObjectGetDerivedStorage();
            *lhs = *(v75 + 432);
            *&lhs[16] = *(v75 + 448);
            v227 = *(v75 + 480);
            v76 = CMTimeAdd(&v235, lhs, &v227);
            OUTLINED_FUNCTION_342(v76, v77, v78, v79, v80, v81, v82, v83, v167, v172, v177, v182, v187, v192, v197, *(&v197 + 1), v206, cf, v216, v222, v227.value, *&v227.timescale, v227.epoch, *&v228, v229, v230, v231.value, *&v231.timescale, v231.epoch, v232, rhs.value, *&rhs.timescale, rhs.epoch, v234, *&v235.value);
          }

          v217 = epoch;
          if (v32 < 1)
          {
LABEL_74:
            v51 = 0;
            v1 = 4294954622;
          }

          else
          {
            v84 = 0;
            while (1)
            {
              memset(lhs, 0, 24);
              fpic_GetEventItemDurationOnEventTimeline(v34, epoch, v238, v84, lhs);
              *&v227.timescale = *&rhs.timescale;
              v227.epoch = rhs.epoch;
              v231 = *lhs;
              v93 = OUTLINED_FUNCTION_176_2(v85, v86, v87, v88, v89, v90, v91, v92, v167, v172, v177, v182, v187, v192, v197, *(&v197 + 1), v206, cf, v217, v222, rhs.value);
              v96 = CMTimeAdd(v95, v93, v94);
              *&v227.timescale = *&v235.timescale;
              v227.epoch = v235.epoch;
              v231 = v237;
              v104 = OUTLINED_FUNCTION_176_2(v96, v97, v98, v99, v100, v101, v102, v103, v168, v173, v178, v183, v188, v193, v198, v202, v207, cfa, v218, v223, v235.value);
              v106 = CMTimeCompare(v104, v105);
              if (v106 <= 0)
              {
                OUTLINED_FUNCTION_205_1(v106, v107, v108, v109, v110, v111, v112, v113, v167, v172, v177, v182, v187, v192, v197, *(&v197 + 1), v206, cf, v217, v222, v227.value, *&v227.timescale, v227.epoch, *&v228, v229, v230, v231.value, *&v231.timescale, v231.epoch, v232, rhs.value, *&rhs.timescale, rhs.epoch, v234, v235.value, *&v235.timescale, v235.epoch, v236, *&v237.value);
                v231 = rhs;
                v122 = OUTLINED_FUNCTION_176_2(v114, v115, v116, v117, v118, v119, v120, v121, v169, v174, v179, v184, v189, v194, v199, v203, v208, cfb, v219, v224, v227.value);
                if (CMTimeCompare(v122, v123) < 0)
                {
                  break;
                }
              }

              v235 = rhs;
              if (v32 == ++v84)
              {
                goto LABEL_74;
              }
            }

            v136 = OUTLINED_FUNCTION_415_0();
            PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(v136, v137, v84, @"PlaybackItem");
            CMBaseObjectGetDerivedStorage();
            v51 = 0;
            v1 = 4294954622;
            if (PerAssetPerEventTrackedObject)
            {
              OUTLINED_FUNCTION_178_3();
              if (PerAssetPerEventTrackedObject != @"DummyItem")
              {
                v140 = (*(v139 + 80))(v34, v217, PerAssetPerEventTrackedObject);
                if (v140)
                {
                  v51 = CFRetain(v140);
                  OUTLINED_FUNCTION_205_1(v51, v141, v142, v143, v144, v145, v146, v147, v167, v172, v177, v182, v187, v192, v197, *(&v197 + 1), v206, cf, v217, v222, v227.value, *&v227.timescale, v227.epoch, *&v228, v229, v230, v231.value, *&v231.timescale, v231.epoch, v232, rhs.value, *&rhs.timescale, rhs.epoch, v234, v235.value, *&v235.timescale, v235.epoch, v236, *&v237.value);
                  OUTLINED_FUNCTION_224_0(v148, v149, v150, v151, v152, v153, v154, v155, v170, v175, v180, v185, v190, v195, v200, v204, v209, cfc, v220, v225, v227.value, *&v227.timescale, v227.epoch, *&v228, v229, v230, v231.value, *&v231.timescale, v231.epoch, v232, rhs.value, *&rhs.timescale, rhs.epoch, v234, *&v235.value);
                  v164 = OUTLINED_FUNCTION_176_2(v156, v157, v158, v159, v160, v161, v162, v163, v171, v176, v181, v186, v191, v196, v201, v205, v210, cfd, v221, v226, v227.value);
                  CMTimeSubtract(v166, v164, v165);
                  v1 = 0;
                  value = *lhs;
                  LODWORD(v32) = *&lhs[12];
                  timescale = *&lhs[8];
                  epoch = *&lhs[16];
                }

                else
                {
                  v51 = 0;
                  OUTLINED_FUNCTION_178_3();
                }

                v2 = v182;
              }

              goto LABEL_76;
            }
          }

          OUTLINED_FUNCTION_178_3();
LABEL_76:
          CFRelease(v217);
          goto LABEL_77;
        }

        OUTLINED_FUNCTION_120();
        v1 = FigSignalErrorAtGM();
        v51 = 0;
        OUTLINED_FUNCTION_178_3();
LABEL_77:
        v5 = v187;
        if (v1 == -12674)
        {
          goto LABEL_53;
        }

LABEL_48:
        if (!v1 && (v32 & 1) != 0)
        {
          v54 = (v35 + 720);
          *lhs = value;
          *&lhs[8] = __PAIR64__(v32, timescale);
          *&lhs[16] = epoch;
          v55 = OUTLINED_FUNCTION_415_0();
          if (!fpic_isTimelineTimerScheduledForItemTime(v55, v56, v57))
          {
            StopAndReleaseTimer((v35 + 752));
            *(v35 + 744) = 0;
            *v54 = v197;
            *(v35 + 736) = v206;
          }

          if (!*(v35 + 752))
          {
            v124 = FigPlayerInterstitialPreloadCopyTargetID(v222);
            v125 = FigPlayerInterstitialPreloadCopyEffectiveEndDate(v222);
            OUTLINED_FUNCTION_227_1(v125, v126, v127, v128, v129, v130, v131, v132, v167, v172, v177, v182, v187, v192, v133, v197);
            v134 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v134)
            {
              v134(v51, lhs);
            }

            v227.value = value;
            v227.timescale = timescale;
            v227.flags = v32;
            v227.epoch = epoch;
            fpic_scheduleTimelineTimer(v34, v54, v51, &v227);
            v1 = v135;
            if (v124)
            {
              CFRelease(v124);
            }

            if (v125)
            {
              CFRelease(v125);
            }

            v5 = v187;
            if (!v51)
            {
              goto LABEL_56;
            }

LABEL_55:
            CFRelease(v51);
            goto LABEL_56;
          }

LABEL_53:
          v1 = 0;
        }

        if (v51)
        {
          goto LABEL_55;
        }

LABEL_56:
        if (v36)
        {
          CFRelease(v36);
        }

        *(*(v2[4] + 8) + 24) = v1;
        OUTLINED_FUNCTION_50_14();
        if (v58)
        {
          return;
        }

        LODWORD(v192) = 1;
LABEL_60:
        ++v6;
      }

      while (v6 != v5);
    }
  }
}

@end