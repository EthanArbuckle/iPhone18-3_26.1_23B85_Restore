@interface EnsurePrimaryWillResumePlaying
@end

@implementation EnsurePrimaryWillResumePlaying

void __fpic_EnsurePrimaryWillResumePlaying_block_invoke(uint64_t a1)
{
  v123 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_166();
  if (!v4 || *(CMBaseObjectGetDerivedStorage() + 896) || *(CMBaseObjectGetDerivedStorage() + 900) || CFArrayGetCount(*(*(a1 + 48) + 656)) && fpic_DoesNextMomentBelongToCurrentDepartureMoment())
  {
    if ((*(*(a1 + 48) + 1076) & 1) != 0 && !*(CMBaseObjectGetDerivedStorage() + 1088))
    {
      OUTLINED_FUNCTION_210_1();
      v5 = fpic_TimeToGatePrimaryPlaybackAtCurrentEvent(0, 0, &v116);
      *&time.value = *(*(a1 + 48) + 1064);
      OUTLINED_FUNCTION_16_48(v5, v6, v7, v8, v9, v10, v11, v12, v92, v100, v108, v116);
      v20 = OUTLINED_FUNCTION_33_20(v13, v14, &kMomentsAreCloseThreshold, v15, v16, v17, v18, v19, v93, v101, v109, v116, *(&v116 + 1), v117, v118, v119, *(&v119 + 1), v120, v121, *(&v121 + 1), time.value);
      if (!faqrp_timeDifferenceIsWithinTolerance(v20, v21, v22))
      {
        if (dword_1EAF178D0)
        {
          OUTLINED_FUNCTION_197_2();
          v23 = OUTLINED_FUNCTION_97_9();
          OUTLINED_FUNCTION_22_20(v23, v24, v25, v26, v27, v28, v29, v30, v94, v102, v110, SBYTE2(v110), BYTE3(v110), SHIDWORD(v110));
          OUTLINED_FUNCTION_7_22();
          if (v1)
          {
            v31 = *(a1 + 40);
            OUTLINED_FUNCTION_135_3(*(*(a1 + 48) + 1080), v95, v103, v111, v116, *(&v116 + 1), v117, v118, v119, *(&v119 + 1), v120, v121, *(&v121 + 1), *(*(a1 + 48) + 1064), *(*(a1 + 48) + 1072), time.epoch);
            OUTLINED_FUNCTION_52_18(v32, v33, v34, v124, v35, v36, v37, v96, v104, v112, v116, v117, v118, v119, *(&v119 + 1), v120, v121, *(&v121 + 1), *&time.value, time.epoch);
            LODWORD(v118) = 136315906;
            OUTLINED_FUNCTION_28_29();
            *(&v119 + 6) = v31;
            HIWORD(v119) = v38;
            v120 = v2;
            LOWORD(v121) = v38;
            *(&v121 + 2) = v39;
            OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_65();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_524();
        }

        fpic_UngatePrimaryPlayback(*(a1 + 40));
      }
    }
  }

  else
  {
    v40 = *(a1 + 48);
    if (!*(v40 + 1184) && CMTimebaseGetRate(*(v40 + 1224)) == 0.0)
    {
      *(*(a1 + 48) + 1184) = FigGetUpTimeNanoseconds();
    }

    if (!*(CMBaseObjectGetDerivedStorage() + 888))
    {
      if (dword_1EAF178D0)
      {
        LODWORD(v116) = 0;
        BYTE4(v108) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7_22();
        if (v1)
        {
          v43 = *(a1 + 40);
          v42 = *(a1 + 48);
          v44 = *(v42 + 160);
          OUTLINED_FUNCTION_169(v42 + 556);
          CMTimeGetSeconds(&time);
          LODWORD(v118) = 136315906;
          OUTLINED_FUNCTION_28_29();
          *(&v119 + 6) = v43;
          HIWORD(v119) = v45;
          v120 = v44;
          LOWORD(v121) = v45;
          *(&v121 + 2) = v46;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_65();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_524();
      }

      v47 = fpic_TransitionPlayback(*(a1 + 40), *(a1 + 56), 1, *(a1 + 64));
      OUTLINED_FUNCTION_12_7(v47);
      OUTLINED_FUNCTION_2_4();
      if (!*(v48 + 24))
      {
        if (*(CMBaseObjectGetDerivedStorage() + 160))
        {
          OUTLINED_FUNCTION_251();
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          if (*(DerivedStorage + 1142))
          {
            if (!*(DerivedStorage + 1141) && (*(a1 + 568) & 1) != 0)
            {
              OUTLINED_FUNCTION_210_1();
              fpic_GetItemEndTime();
              if (dword_1EAF178D0)
              {
                OUTLINED_FUNCTION_197_2();
                v58 = OUTLINED_FUNCTION_97_9();
                OUTLINED_FUNCTION_22_20(v58, v59, v60, v61, v62, v63, v64, v65, v92, v100, v108, SBYTE2(v108), BYTE3(v108), SHIDWORD(v108));
                OUTLINED_FUNCTION_7_22();
                if (v1)
                {
                  OUTLINED_FUNCTION_135_3(*(a1 + 572), v92, v100, v108, v116, *(&v116 + 1), v117, v118, v119, *(&v119 + 1), v120, v121, *(&v121 + 1), *(a1 + 556), *(a1 + 564), time.epoch);
                  OUTLINED_FUNCTION_52_18(v66, v67, v68, v125, v69, v70, v71, v97, v105, v113, v116, v117, v118, v119, *(&v119 + 1), v120, v121, *(&v121 + 1), *&time.value, time.epoch);
                  LODWORD(v118) = 136315650;
                  OUTLINED_FUNCTION_28_29();
                  *(&v119 + 6) = v2;
                  HIWORD(v119) = v72;
                  v120 = v73;
                  OUTLINED_FUNCTION_32();
                  OUTLINED_FUNCTION_65();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                v50 = OUTLINED_FUNCTION_524();
              }

              *&time.value = *(a1 + 556);
              OUTLINED_FUNCTION_16_48(v50, v51, v52, v53, v54, v55, v56, v57, v92, v100, v108, v116);
              v82 = OUTLINED_FUNCTION_33_20(v74, v75, v76, v77, v78, v79, v80, v81, v98, v106, v114, v116, *(&v116 + 1), v117, v118, v119, *(&v119 + 1), v120, v121, *(&v121 + 1), time.value);
              if (CMTimeCompare(v82, v83) >= 1)
              {
                OUTLINED_FUNCTION_169(MEMORY[0x1E6960C70]);
                FigCFCopyPropertyAsTime();
                OUTLINED_FUNCTION_219_1(MEMORY[0x1E6960CC0]);
                *(&v119 + 1) = *(v84 + 16);
                FigCFSetPropertyToTime();
                OUTLINED_FUNCTION_192_2(*(a1 + 160), v85, v86, v87, v88, v89, v90, v91, v99, v107, v115, v116, *(&v116 + 1), v117, v118, v119, *(&v119 + 1), v120, v121, *(&v121 + 1), *&time.value);
                FigCFSetPropertyToTime();
              }
            }
          }
        }
      }
    }
  }
}

@end