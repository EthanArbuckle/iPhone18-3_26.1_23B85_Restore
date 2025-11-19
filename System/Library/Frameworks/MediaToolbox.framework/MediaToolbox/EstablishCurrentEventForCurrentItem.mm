@interface EstablishCurrentEventForCurrentItem
@end

@implementation EstablishCurrentEventForCurrentItem

void __fpic_EstablishCurrentEventForCurrentItem_block_invoke()
{
  OUTLINED_FUNCTION_182();
  v429 = v0;
  v2 = v1;
  v520 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 160);
  if (v6 && !*(DerivedStorage + 1143))
  {
    *v505 = *MEMORY[0x1E6960CC0];
    *&v506 = *(MEMORY[0x1E6960CC0] + 16);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v7)
    {
      v7(v6, v505);
    }

    v8 = CMBaseObjectGetDerivedStorage();
    if (*(v8 + 1142) && !*(v8 + 1141))
    {
      *(v5 + 1143) = 1;
    }

    else
    {
      v9 = *(v5 + 160);
      *lhs = *v505;
      *&lhs[16] = v506;
      *rhs = *&kMomentsAreCloseThreshold.value;
      *&rhs[16] = 0;
      CMTimeAdd(time, lhs, rhs);
      v10 = fpic_BufferIncludesTime(v9, time, MEMORY[0x1E6960CC0]);
      *(v5 + 1143) = v10;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    v339 = CMBaseObjectGetDerivedStorage();
    Count = CFArrayGetCount(*(v339 + 200));
    if (*(v339 + 1143))
    {
      v341 = Count;
      v469 = (v339 + 604);
      if ((*(v339 + 616) & 1) == 0)
      {
        v342 = *(v339 + 160);
        v343 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v343)
        {
          v343(v342, v469);
        }
      }

      if (v341 >= 1)
      {
        v344 = 0;
        LODWORD(v461) = 0;
        do
        {
          CFArrayGetValueAtIndex(*(v339 + 200), v344);
          v345 = OUTLINED_FUNCTION_104_0();
          v347 = v346(v345);
          v348 = FigPlayerInterstitialEventIsPreRoll(v347);
          if (v348)
          {
            OUTLINED_FUNCTION_144_1(v348, v349, v350, v351, v352, v353, v354, v355, v367, v374, v381, v388, v394, v401, v408, v415, v422, v429, v436, v443, v450, v461, v469);
            FigPlayerInterstitialEventSetStartTime(v347, time);
            OUTLINED_FUNCTION_104_0();
            fpic_EnsureEventHasResolvedProperties();
            LODWORD(v461) = 1;
          }

          ++v344;
        }

        while (v341 != v344);
        if (v461 && dword_1EAF178D0)
        {
          *rhs = 0;
          v515[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v515[0]);
          OUTLINED_FUNCTION_28();
          if (v341)
          {
            OUTLINED_FUNCTION_144_1(v357, v358, v359, v360, v361, v362, v363, v364, v367, v374, v381, v388, v394, v401, v408, v415, v422, v429, v436, v443, v450, v461, v469);
            CMTimeGetSeconds(time);
            *lhs = 136315650;
            *&lhs[4] = "fpic_SetStartTimesForPrerollEvents";
            OUTLINED_FUNCTION_121_2();
            *&lhs[22] = v365;
            *&lhs[24] = v366;
            OUTLINED_FUNCTION_23_43();
            OUTLINED_FUNCTION_65();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417();
        }
      }
    }

    fpic_SortEventsInAddOrder();
    fpic_UpdatePlaybackItemEventList();
    fpic_PostNotification(v3, @"fpiResolvePropertiesChange", 0);
  }

LABEL_8:
  if (!*(v5 + 1143))
  {
    goto LABEL_225;
  }

  v496 = 0;
  *v494 = 0u;
  *v495 = 0u;
  fpic_GetEffectiveCurrentItemMoment(*(*(v2 + 56) + 160), v494);
  WORD2(v490) = 0;
  LODWORD(v490) = 0;
  *v491 = OUTLINED_FUNCTION_150_3(MEMORY[0x1E6960C70]);
  v462 = *(v11 + 16);
  v492 = v462;
  *rhs = v494[0];
  v12 = HIDWORD(v494[1]);
  *&rhs[8] = v494[1];
  v13 = v495[0];
  v14 = *&v495[1];
  v15 = v496;
  v16 = v494;
  *type = *(&v496 + 2);
  v17 = *(v2 + 72);
  *&type[4] = HIWORD(v496);
  *v515 = v17;
  v18 = *(v2 + 84);
  *&v515[8] = *(v2 + 80);
  v19 = BYTE1(v496);
  if ((v18 & 1) != 0 && v496 && (v20 = *(v2 + 88), *time = *v494, *&time[16] = v495[0], *lhs = *(v2 + 72), *&lhs[8] = *(v2 + 80), *&lhs[12] = v18, *&lhs[16] = v20, v21 = OUTLINED_FUNCTION_55_18(), v23 = CMTimeCompare(v21, v22), v23 >= 1) && (OUTLINED_FUNCTION_54_19(v23, v24, v25, v26, v27, v28, v29, v30, v367, v374, v381, v388, v394, v401, v408, v415, v422, v429, v436, v443, v450, v462, v469, v476, v481[0], v481[1], v482, *(&v482 + 1), v483, v484, *type, *&type[8], v486[0], v486[1], v487, v488, v489, v490, v491[0], v491[1], v492, v493, v494[0], v494[1], v495[0], v495[1], v496, v497, v498, v499, theArray[0], theArray[1], v501, v502, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v504, *(&v504 + 1), *v505, v505[2], v505[3]), *lhs = kMaxNotificationDelay, *&lhs[16] = 0, v31 = OUTLINED_FUNCTION_55_18(), v33 = CMTimeCompare(v31, v32), (v33 & 0x80000000) != 0))
  {
    memset(time, 0, 24);
    OUTLINED_FUNCTION_54_19(v33, v34, v35, v36, v37, v38, v39, v40, v367, v374, v381, v388, v394, v401, v408, v415, v422, v429, v436, v443, v450, v462, v469, v476, v481[0], v481[1], v482, *(&v482 + 1), v483, v484, *type, *&type[8], v486[0], v486[1], v487, v488, v489, v490, v491[0], v491[1], v492, v493, v494[0], v494[1], v495[0], v495[1], v496, v497, v498, v499, theArray[0], theArray[1], v501, v502, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v504, *(&v504 + 1), *v505, v505[2], v505[3]);
    *rhs = *v515;
    *&rhs[8] = *&v515[8];
    if (v19)
    {
      *lhs = *time;
      *&lhs[16] = *&time[16];
      v14 = v14 - CMTimeGetSeconds(lhs);
    }
  }

  else
  {
    v18 = v12;
    v20 = v13;
  }

  v494[0] = *rhs;
  *(&v496 + 2) = *type;
  HIWORD(v496) = *&type[4];
  v494[1] = __PAIR64__(v18, *&rhs[8]);
  v495[0] = v20;
  *&v495[1] = v14;
  LOBYTE(v496) = v15;
  BYTE1(v496) = v19;
  *theArray = *v494;
  v501 = v20;
  LODWORD(v489) = *type;
  WORD2(v489) = *&type[4];
  v41 = CMBaseObjectGetDerivedStorage();
  *&v507 = 0;
  *v505 = 0u;
  v506 = 0u;
  if ((*(v41 + 1076) & 1) == 0)
  {
    goto LABEL_33;
  }

  v42 = v41;
  if (*(CMBaseObjectGetDerivedStorage() + 1088))
  {
    goto LABEL_33;
  }

  v43 = v42 + 1064;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_75_9();
  if (!v45)
  {
    OUTLINED_FUNCTION_14_59();
    if (v47)
    {
      v44 = v46;
    }
  }

  *v515 = *v44;
  *&v516 = *(v44 + 16);
  v48 = *(v44 + 24);
  v49 = *(v44 + 32);
  v50 = *(v44 + 33);
  *(&v504 + 2) = *(v44 + 34);
  WORD3(v504) = *(v44 + 38);
  *type = *v43;
  v486[0] = *(v43 + 16);
  *lhs = *theArray;
  *&lhs[16] = v501;
  *&lhs[24] = v14;
  lhs[32] = v15;
  lhs[33] = v19;
  *&lhs[34] = v489;
  *&lhs[38] = WORD2(v489);
  fpic_MakeMomentFromTime(type, lhs, time);
  v51 = *&time[24];
  LODWORD(v52) = v519;
  v53 = BYTE1(v519);
  OUTLINED_FUNCTION_141_2(v54, v55, v56, v57, v58, v59, v60, v61, v367, v374, v381, v388, v394, v401, v408, v415, v422, v429, v436, v443, v450, v462, v469, v476, v481[0], v481[1], v482, *(&v482 + 1), v483, v484, *time, *&time[8], *&time[16], v486[1], v487, v488, v489, v490, v491[0], v491[1], v492, v493, v494[0], v494[1], v495[0], v495[1], v496, v497, v498, *(&v519 + 2));
  HIWORD(v519) = v62;
  *&rhs[16] = v516;
  *rhs = *v515;
  *&rhs[24] = v48;
  LOBYTE(v504) = v49;
  BYTE1(v504) = v50;
  TimeWithDateAndMoment = fpic_MomentGreaterThan(time, rhs);
  if (TimeWithDateAndMoment)
  {
    if (v49)
    {
      *lhs = *v515;
      v72 = v516;
    }

    else
    {
      if (v50)
      {
        OUTLINED_FUNCTION_68_12(TimeWithDateAndMoment, v64, v65, v66, v67, v68, v69, v70, v368, v375, v382, v389, v395, v402, v409, v416, v423, v430, v437, v444, v451, v463, *v470, *&v470[2], v481[0], v481[1], v482, *(&v482 + 1), v483, v484, v71, *type);
        OUTLINED_FUNCTION_141_2(v73, v74, v75, v76, v77, v78, v79, v80, v369, v376, v383, v390, v396, v403, v410, v417, v424, v431, v438, v445, v452, v464, v471, v477, v481[0], v481[1], v482, *(&v482 + 1), v483, v484, *type, *&type[8], v486[0], v486[1], v487, v488, v489, v490, v491[0], v491[1], v492, v493, v494[0], v494[1], v495[0], v495[1], v496, v497, v498, v499);
        HIWORD(v519) = WORD2(v499);
        TimeWithDateAndMoment = FigCreateTimeWithDateAndMoment(time, lhs, v48);
        goto LABEL_26;
      }

      *lhs = *v470;
      v72 = v463;
    }

    *&lhs[16] = v72;
LABEL_26:
    v71 = *lhs;
    *type = *lhs;
    v486[0] = *&lhs[16];
    goto LABEL_27;
  }

  v50 = v53;
  v48 = v51;
LABEL_27:
  OUTLINED_FUNCTION_68_12(TimeWithDateAndMoment, v64, v65, v66, v67, v68, v69, v70, v368, v375, v382, v389, v395, v402, v409, v416, v423, v430, v437, v444, v451, v463, *v470, *&v470[2], v481[0], v481[1], v482, *(&v482 + 1), v483, v484, v71, *type);
  *&time[24] = v48;
  LOBYTE(v519) = v52;
  BYTE1(v519) = v50;
  *(&v519 + 2) = v499;
  HIWORD(v519) = WORD2(v499);
  fpic_AddTimeToMoment(time, &kJumpForwardTolerance, v505);
  if ((!v15 || !v52) && (!v19 || !v50) || (OUTLINED_FUNCTION_60_15(v81, v82, v83, v84, v85, v86, v87, v88, v367, v374, v381, v388, v394, v401, v408, v415, v422, v429, v436, v443, v453, v462, v469, v476, v481[0], v481[1], v482, *(&v482 + 1), v483, v484, *type, *&type[8], v486[0], v486[1], v487, v488, v489, SWORD2(v489), v490, v491[0], v491[1], v492, v493, v494[0], v494[1], v495[0], v495[1], v496, v497, v498, v499, v89, theArray[0]), *lhs = *type, *&lhs[16] = v486[0], *&lhs[24] = v48, lhs[32] = v52, lhs[33] = v50, *&lhs[34] = v499, *&lhs[38] = WORD2(v499), v90 = OUTLINED_FUNCTION_55_18(), !(v92 = fpic_MomentGreaterThan(v90, v91))) || (v101 = OUTLINED_FUNCTION_60_15(v92, v93, v94, v95, v96, v97, v98, v99, v367, v374, v381, v388, v394, v401, v408, v415, v422, v429, v436, v443, v454, v462, v469, v476, v481[0], v481[1], v482, *(&v482 + 1), v483, v484, *type, *&type[8], v486[0], v486[1], v487, v488, v489, SWORD2(v489), v490, v491[0], v491[1], v492, v493, v494[0], v494[1], v495[0], v495[1], v496, v497, v498, v499, v100, theArray[0]), OUTLINED_FUNCTION_181_2(v102, v103, v104, v105, v106, v107, v108, v109, v370, v377, v384, v391, v397, v404, v411, v418, v425, v432, v439, v446, v455, v465, v472, v478, v481[0], v481[1], v482, *(&v482 + 1), v483, v484, *type, *&type[8], v486[0], v486[1], v487, v488, v489, v490, v491[0], v491[1], v492, v493, v494[0], v494[1], v495[0], v495[1], v496, v497, v498, v499, theArray[0], theArray[1], v501, v502, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v504, *(&v504 + 1), v101, *v505, v506), v110 = OUTLINED_FUNCTION_55_18(), v112 = fpic_MomentGreaterThan(v110, v111), v112))
  {
LABEL_33:
    LOBYTE(v50) = v19;
    LOBYTE(v52) = v15;
    v48 = v14;
    goto LABEL_34;
  }

  if (dword_1EAF178D0 >= 3)
  {
    *rhs = 0;
    HIBYTE(v498) = 0;
    v138 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v138, HIBYTE(v498));
    OUTLINED_FUNCTION_7_22();
    if (v15)
    {
      *time = *theArray;
      v139.n128_f64[0] = OUTLINED_FUNCTION_165_2(v501);
      v140 = v139.n128_u64[0];
      OUTLINED_FUNCTION_68_12(v141, v142, v143, v144, v145, v146, v147, v148, v367, v374, v381, v388, v394, v401, v408, v415, v422, v429, v436, v443, v456, v462, v469, v476, v481[0], v481[1], v482, *(&v482 + 1), v483, v484, v139, *type);
      Seconds = CMTimeGetSeconds(time);
      *lhs = 136316162;
      *&lhs[4] = "fpic_ClampItemMomentToGateMoment";
      *&lhs[12] = 2048;
      *&lhs[14] = v140;
      *&lhs[22] = 2048;
      *&lhs[24] = v14;
      *&lhs[32] = 2048;
      *&lhs[34] = Seconds;
      *&lhs[42] = 2048;
      *&lhs[44] = v48;
      OUTLINED_FUNCTION_23_43();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    v112 = OUTLINED_FUNCTION_524();
  }

  OUTLINED_FUNCTION_67_13(v112, v113, v114, v115, v116, v117, v118, v119, v367, v374, v381, v388, v394, v401, v408, v415, v422, v429, v436, v443, v456, v462, v469, v476, v481[0], v481[1], v482, *(&v482 + 1), v483, v484, *type);
  LODWORD(v489) = v499;
  WORD2(v489) = WORD2(v499);
LABEL_34:
  *v494 = *theArray;
  v495[0] = v501;
  *(&v496 + 2) = v489;
  HIWORD(v496) = WORD2(v489);
  *&v495[1] = v48;
  LOBYTE(v496) = v52;
  BYTE1(v496) = v50;
  v120 = *(v2 + 40);
  v457 = *(v2 + 48);
  v121 = *(*(v2 + 32) + 8);
  *&v504 = v496;
  *rhs = *theArray;
  *&rhs[16] = *v495;
  v122 = CMBaseObjectGetDerivedStorage();
  v123 = *(v122 + 320);
  *time = *(v122 + 304);
  *&time[16] = v123;
  OUTLINED_FUNCTION_139_2(*(v122 + 336), v367, v374, v381, v388, v394, v401, v408, v415, v422, v429, v436, v443, v457, v462, v469, v476, v481[0], v481[1], v482, *(&v482 + 1), v483, v484, *type, *&type[8], v486[0], v486[1], v487, v488, v489, v490, v491[0], v491[1], v492, v493, v494[0], v494[1], v495[0], v495[1], v496, v497, v498, v499, theArray[0], theArray[1], v501, v502, *rhs, *&rhs[16], v504);
  v124 = OUTLINED_FUNCTION_55_18();
  if (!fpic_MomentGreaterThan(v124, v125) || *(CMBaseObjectGetDerivedStorage() + 900))
  {
    goto LABEL_87;
  }

  memset(v515, 0, sizeof(v515));
  *&v516 = 0;
  v126 = *(v122 + 320);
  *time = *(v122 + 304);
  *&time[16] = v126;
  OUTLINED_FUNCTION_139_2(*(v122 + 336), v371, v378, v385, *(&v385 + 1), v398, v405, v412, v419, FirstIndexOfValue, v433, v440, v447, v458, v466, *v473, *&v473[2], v481[0], v481[1], v482, *(&v482 + 1), v483, v484, *type, *&type[8], v486[0], v486[1], v487, v488, v489, v490, v491[0], v491[1], v492, v493, v494[0], v494[1], v495[0], v495[1], v496, v497, v498, v499, theArray[0], theArray[1], v501, v502, *rhs, *&rhs[16], v504);
  v127 = OUTLINED_FUNCTION_55_18();
  fpic_SubtractMomentFromMoment(v127, v128, v129);
  OUTLINED_FUNCTION_185_2();
  *lhs = kJumpForwardTolerance;
  *&lhs[16] = 0;
  v130 = OUTLINED_FUNCTION_55_18();
  v52 = "fpic_CheckTimeJumpedBackward";
  if (CMTimeCompare(v130, v131) >= 1 && !*(CMBaseObjectGetDerivedStorage() + 888))
  {
    v398 = v121;
    v447 = CFArrayGetCount(*(v122 + 208));
    if (v447 < 1)
    {
LABEL_84:
      *(v122 + 1145) = 0;
      goto LABEL_87;
    }

    v151 = 0;
    v440 = v122 + 88;
    *&v150 = 136316674;
    v385 = v150;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v122 + 208), v151);
      v52 = (*(v122 + 88))(v120, v458, ValueAtIndex);
      *&v507 = 0;
      *v505 = 0u;
      v506 = 0u;
      fpic_EventDateTimeMoment(v52, v505);
      memset(type, 0, sizeof(type));
      v486[0] = 0;
      fpic_PredictEventGroupDurationOnPrimary(v120, ValueAtIndex, v458, 1, 0, type);
      *time = *rhs;
      *&time[16] = *&rhs[16];
      v519 = v504;
      OUTLINED_FUNCTION_181_2(v153, v154, v155, v156, v157, v158, v159, v160, v371, v378, v385, *(&v385 + 1), v398, v405, v412, v419, FirstIndexOfValue, v433, v440, v447, v458, v466, *v473, *&v473[2], v481[0], v481[1], v482, *(&v482 + 1), v483, v484, *type, *&type[8], v486[0], v486[1], v487, v488, v489, v490, v491[0], v491[1], v492, v493, v494[0], v494[1], v495[0], v495[1], v496, v497, v498, v499, theArray[0], theArray[1], v501, v502, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v504, *(&v504 + 1), *rhs, *v505, v506);
      OUTLINED_FUNCTION_67_13(v161, v162, v163, v164, v165, v166, v167, v168, v372, v379, v386, v392, v399, v406, v413, v420, v427, v434, v441, v448, v459, v467, v474, v479, v481[0], v481[1], v482, *(&v482 + 1), v483, v484, *type);
      v169 = OUTLINED_FUNCTION_55_18();
      LODWORD(v121) = !fpic_MomentCanBeCurrent(v169, v170, theArray) && FigPlayerInterstitialEventIsPostRoll(v52) == 0;
      v171 = CFSetContainsValue(*(v122 + 688), ValueAtIndex);
      CurrentlyPlayingEvent = fpic_GetCurrentlyPlayingEvent();
      v16 = FigPlayerInterstitialEventCopyIdentifier(v52);
      if ((v121 & 1) == 0 && (v171 || ValueAtIndex == CurrentlyPlayingEvent))
      {
        if (FigPlayerInterstitialEventCueOnce(v52))
        {
          *time = 0;
          FigCFDictionaryGetInt32IfPresent();
          LODWORD(v121) = *time > 0;
        }

        else
        {
          LODWORD(v121) = 0;
        }

        if (*(CMBaseObjectGetDerivedStorage() + 896) && fpic_isEventInSameGroupAsAnotherEvent(v120, ValueAtIndex, *(v122 + 904), 0))
        {
          CMBaseObjectGetDerivedStorage();
          FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
          CMBaseObjectGetDerivedStorage();
          v180 = FigCFArrayGetFirstIndexOfValue();
          v173 = FirstIndexOfValue < v180;
          v174 = FirstIndexOfValue >= v180;
        }

        else
        {
          v173 = 0;
          v174 = 1;
        }

        if (dword_1EAF178D0)
        {
          HIDWORD(v419) = v173;
          LODWORD(FirstIndexOfValue) = v174;
          LODWORD(theArray[0]) = 0;
          LOBYTE(v499) = 0;
          v175 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v176 = theArray[0];
          v412 = v175;
          HIDWORD(v405) = v499;
          if (os_log_type_enabled(v175, v499))
          {
            v177 = v176;
          }

          else
          {
            v177 = v176 & 0xFFFFFFFE;
          }

          if (v177)
          {
            *time = *(v122 + 304);
            *&time[16] = *(v122 + 320);
            v48 = CMTimeGetSeconds(time);
            *time = *rhs;
            v178 = OUTLINED_FUNCTION_165_2(*&rhs[16]);
            *lhs = v385;
            *&lhs[4] = "fpic_CheckTimeJumpedBackward";
            v179 = "";
            if (v121 | HIDWORD(v419))
            {
              v179 = " do not";
            }

            *&lhs[12] = 2048;
            *&lhs[14] = v120;
            *&lhs[22] = 2048;
            *&lhs[24] = v48;
            *&lhs[32] = 2048;
            *&lhs[34] = v178;
            *&lhs[42] = 1024;
            *&lhs[44] = v121;
            *&lhs[48] = 2080;
            *&lhs[50] = v179;
            *&lhs[58] = 2112;
            *&lhs[60] = v52;
            OUTLINED_FUNCTION_23_43();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_414();
          v174 = FirstIndexOfValue;
        }

        if (!v121 || ValueAtIndex == CurrentlyPlayingEvent)
        {
          fpic_ResetCurrentEventList(v120, v458, (v398 + 24));
          if (((v121 | !v174) & 1) == 0)
          {
            break;
          }
        }
      }

      if (v16)
      {
        goto LABEL_77;
      }

LABEL_78:
      if (v447 == ++v151)
      {
        goto LABEL_84;
      }
    }

    fpic_ForgetPastEvent();
    if (!v16)
    {
      goto LABEL_78;
    }

LABEL_77:
    CFRelease(v16);
    goto LABEL_78;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 888) && dword_1EAF178D0)
  {
    v505[0] = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v132 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v133 = v505[0];
    LODWORD(v121) = type[0];
    os_log_type_enabled(v132, type[0]);
    OUTLINED_FUNCTION_134();
    if (v47)
    {
      v135 = v134;
    }

    else
    {
      v135 = v133;
    }

    if (v135)
    {
      *time = *rhs;
      v136 = OUTLINED_FUNCTION_165_2(*&rhs[16]);
      v137 = *(v122 + 888);
      *lhs = 136315906;
      *&lhs[4] = "fpic_CheckTimeJumpedBackward";
      *&lhs[12] = 2048;
      *&lhs[14] = v120;
      *&lhs[22] = 2048;
      *&lhs[24] = v136;
      *&lhs[32] = 1024;
      *&lhs[34] = v137;
      OUTLINED_FUNCTION_23_43();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  v181 = *&rhs[16];
  *(v122 + 304) = *rhs;
  *(v122 + 320) = v181;
  *(v122 + 336) = v504;
LABEL_87:
  v182 = *(v2 + 40);
  v183 = *(*(v2 + 32) + 8);
  *type = *v494;
  *v486 = *v495;
  v487 = v496;
  v184 = CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 1144))
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_75_9();
    if (!v186)
    {
      OUTLINED_FUNCTION_14_59();
      if (v47)
      {
        v185 = v187;
      }
    }

    v188 = *(v185 + 16);
    *v515 = *v185;
    v516 = v188;
    v517 = *(v185 + 32);
    if (!*(v184 + 1146) && !*(CMBaseObjectGetDerivedStorage() + 900))
    {
      v189 = CMBaseObjectGetDerivedStorage();
      if (!*(v189 + 888))
      {
        OUTLINED_FUNCTION_229_2(v189, v190, v191, v192, v193, v194, v195, v196, v371, v378, v385, *(&v385 + 1), v398, v405, v412, v419, FirstIndexOfValue, v433, v440, v447, v458, v466, *v473, *&v473[2], v481[0], v481[1], v482, *(&v482 + 1), v483, v484, v197, *type, v486[0]);
        *lhs = *v515;
        *&lhs[16] = v516;
        *&lhs[32] = v517;
        v211 = OUTLINED_FUNCTION_55_18();
        if (fpic_MomentGreaterThan(v211, v212))
        {
          if (!*(v184 + 376) && !*(v184 + 377) || (*time = *type, *&time[16] = *v486, v519 = v487, v213 = *(v184 + 360), *lhs = *(v184 + 344), *&lhs[16] = v213, *&lhs[32] = *(v184 + 376), v214 = OUTLINED_FUNCTION_55_18(), !fpic_MomentsAreCloseWithTolerance(v214, v215, v216)))
          {
            v217 = OUTLINED_FUNCTION_171();
            fpic_ResetCurrentEventList(v217, v218, v219);
            v514 = 0;
            v513 = 0u;
            memset(lhs, 0, sizeof(lhs));
            v511 = 0;
            v509 = 0u;
            v510 = 0u;
            v507 = 0u;
            v508 = 0u;
            *v505 = 0u;
            v506 = 0u;
            if (dword_1EAF178D0)
            {
              LODWORD(theArray[0]) = 0;
              LOBYTE(v499) = 0;
              v220 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v220, v499);
              OUTLINED_FUNCTION_40();
              if (v121)
              {
                *time = *v515;
                *&time[16] = v516;
                v519 = v517;
                v221 = OUTLINED_FUNCTION_55_18();
                MomentDesc = fpic_getMomentDesc(v221, v222);
                OUTLINED_FUNCTION_229_2(MomentDesc, v224, v225, v226, v227, v228, v229, v230, v371, v378, v385, *(&v385 + 1), v398, v405, v412, v419, FirstIndexOfValue, v433, v440, v447, v458, v466, *v473, *&v473[2], v481[0], v481[1], v482, *(&v482 + 1), v483, v484, v231, *type, v486[0]);
                v52 = v505;
                fpic_getMomentDesc(time, v505);
                v232 = *(v183 + 24);
                if (v232)
                {
                  LODWORD(v232) = CFArrayGetCount(v232);
                }

                *rhs = 136316162;
                *&rhs[4] = "fpic_CheckTimeJumpedForward";
                *&rhs[12] = 2048;
                *&rhs[14] = v182;
                *&rhs[22] = 2080;
                *&rhs[24] = lhs;
                LOWORD(v504) = 2080;
                *(&v504 + 2) = v505;
                WORD5(v504) = 1024;
                HIDWORD(v504) = v232;
                LODWORD(v378) = 48;
                v371 = rhs;
                OUTLINED_FUNCTION_65();
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

  if (!*(CMBaseObjectGetDerivedStorage() + 900))
  {
    v198 = *(v2 + 56);
    v199 = *v495;
    *(v198 + 304) = *v494;
    *(v198 + 320) = v199;
    *(v198 + 336) = v496;
  }

  v200 = *(v2 + 40);
  v201 = CMBaseObjectGetDerivedStorage();
  if (!*(v201 + 1028) || (v202 = v201, !fpic_isEventResolvableOnPrimaryTimeline()))
  {
    OUTLINED_FUNCTION_147_1();
    goto LABEL_159;
  }

  if (*(v202 + 1029))
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_2_166();
    if (v203)
    {
      if (dword_1EAF178D0)
      {
        OUTLINED_FUNCTION_175_1();
        v204 = OUTLINED_FUNCTION_103_4();
        v205 = v505[0];
        os_log_type_enabled(v204, rhs[0]);
        OUTLINED_FUNCTION_134();
        if (v47)
        {
          v207 = v206;
        }

        else
        {
          v207 = v205;
        }

        if (v207)
        {
          v208 = CMBaseObjectGetDerivedStorage();
          if (*(v208 + 376))
          {
            OUTLINED_FUNCTION_231_0();
            *&lhs[16] = v209;
            *lhs = *v210;
          }

          else if (*(v208 + 377))
          {
            v233 = *(v208 + 368);
            v234 = *(v208 + 320);
            *time = *(v208 + 304);
            *&time[16] = v234;
            v519 = *(v208 + 336);
            FigCreateTimeWithDateAndMoment(time, lhs, v233);
          }

          else
          {
            *lhs = *v473;
            *&lhs[16] = v466;
          }

          CMTimeGetSeconds(lhs);
          *lhs = 136315650;
          *&lhs[4] = "fpic_establishIntendedEventToSeekInto";
          OUTLINED_FUNCTION_121_2();
          *&lhs[22] = v235;
          *&lhs[24] = v236;
          OUTLINED_FUNCTION_82_1();
          v371 = lhs;
          OUTLINED_FUNCTION_65();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0();
      }

      *(v202 + 376) = 0;
      *(v202 + 1029) = 0;
    }
  }

  v182 = fpic_UnwrapEvent();
  v237 = FigPlayerInterstitialEventCopyIdentifier(v182);
  v238 = CMBaseObjectGetDerivedStorage();
  theArray[0] = 0;
  *v505 = *v473;
  *&v506 = v466;
  *rhs = *MEMORY[0x1E6960CC0];
  *&rhs[16] = *(MEMORY[0x1E6960CC0] + 16);
  if (!*(v238 + 904))
  {
    goto LABEL_150;
  }

  v239 = v238;
  v240 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v240)
  {
    v241 = v240;
    v242 = fpic_UnwrapEvent();
    v243 = fpic_copyEventsScheduledAtSameMomentAsEvent(v200, v242, theArray);
    if (v243)
    {
      LODWORD(v52) = v243;
    }

    else
    {
      v447 = v237;
      v458 = v182;
      for (i = 0; ; ++i)
      {
        v245 = theArray[0];
        if (theArray[0])
        {
          v245 = CFArrayGetCount(theArray[0]);
        }

        if (i >= v245)
        {
          break;
        }

        v16 = CFArrayGetValueAtIndex(theArray[0], i);
        OUTLINED_FUNCTION_313_1();
        v246 = fpic_UnwrapEvent();
        *time = *v473;
        *&time[16] = v466;
        if (*(v239 + 904) == v16)
        {
          break;
        }

        memset(lhs, 0, 24);
        FigPlayerInterstitialEventGetResumptionOffset(v246, lhs);
        if (CFDictionaryContainsKey(*(v239 + 672), v16))
        {
          Value = CFDictionaryGetValue(*(v239 + 672), v16);
          CMTimeMakeFromDictionary(time, Value);
        }

        else
        {
          OUTLINED_FUNCTION_313_1();
          fpic_GetEventDuration(v249);
          OUTLINED_FUNCTION_185_2();
        }

        if ((lhs[12] & 0x11) == 1)
        {
          v248 = lhs;
        }

        else
        {
          v248 = time;
        }

        *type = *v248;
        v486[0] = *(v248 + 2);
        *v515 = *time;
        *&v516 = *&time[16];
        fpic_AccumulateDuration(rhs, v515);
        fpic_AccumulateDuration(v505, type);
      }

      v250 = v239 + 408;
      *(v239 + 424) = v506;
      *(v239 + 408) = *v505;
      v251 = v239 + 456;
      *(v239 + 472) = *&rhs[16];
      *(v239 + 456) = *rhs;
      if (dword_1EAF178D0)
      {
        *v515 = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v252 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v253 = *v515;
        os_log_type_enabled(v252, type[0]);
        OUTLINED_FUNCTION_202();
        if (v47)
        {
          LODWORD(v16) = v254;
        }

        else
        {
          LODWORD(v16) = v253;
        }

        if (v16)
        {
          *time = *v250;
          v48 = OUTLINED_FUNCTION_165_2(*(v250 + 16));
          *time = *v251;
          OUTLINED_FUNCTION_165_2(*(v251 + 16));
          *lhs = 136315906;
          OUTLINED_FUNCTION_211_0("fpic_recalculatePlayedOutResumptionOffsetUpToIntendedEventToSeekInto");
          *&lhs[12] = v255;
          *(v256 + 14) = v200;
          *&lhs[22] = v255;
          *&lhs[24] = v48;
          *&lhs[32] = v255;
          *(v256 + 34) = v257;
          OUTLINED_FUNCTION_23_43();
          OUTLINED_FUNCTION_65();
          _os_log_send_and_compose_impl();
        }

        v237 = v447;
        v182 = v458;
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        LODWORD(v52) = 0;
      }

      else
      {
        LODWORD(v52) = 0;
        v237 = v447;
        v182 = v458;
      }
    }

    CFRelease(v241);
    if (theArray[0])
    {
      CFRelease(theArray[0]);
    }

    if (!v52)
    {
LABEL_150:
      OUTLINED_FUNCTION_184();
      fpic_GetEventStartMoment(v258, v259);
      OUTLINED_FUNCTION_44_23();
      LODWORD(v16) = v519;
      LOBYTE(v52) = BYTE1(v519);
      LODWORD(v490) = *(&v519 + 2);
      WORD2(v490) = HIWORD(v519);
      *(v202 + 1028) = 0;
      if (dword_1EAF178D0)
      {
        OUTLINED_FUNCTION_175_1();
        v260 = OUTLINED_FUNCTION_103_4();
        v261 = v505[0];
        os_log_type_enabled(v260, rhs[0]);
        OUTLINED_FUNCTION_134();
        if (v47)
        {
          v263 = v262;
        }

        else
        {
          v263 = v261;
        }

        if (v263)
        {
          *lhs = 136315650;
          *&lhs[4] = "fpic_establishIntendedEventToSeekInto";
          OUTLINED_FUNCTION_121_2();
          *&lhs[22] = 2112;
          *&lhs[24] = v237;
          OUTLINED_FUNCTION_23_43();
          OUTLINED_FUNCTION_65();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0();
      }

      if (v237)
      {
        goto LABEL_158;
      }

      goto LABEL_159;
    }
  }

  else
  {
    OUTLINED_FUNCTION_120();
    LODWORD(v52) = FigSignalErrorAtGM();
    if (!v52)
    {
      goto LABEL_150;
    }
  }

  OUTLINED_FUNCTION_147_1();
  if (v237)
  {
LABEL_158:
    CFRelease(v237);
  }

LABEL_159:
  if (CFArrayGetCount(*(*(v2 + 56) + 656)))
  {
    goto LABEL_225;
  }

  if (fpic_ShouldIgnoreInterstitialsDueToExternalPlaybackStrategy(*(v2 + 40)))
  {
    goto LABEL_225;
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_166();
  if (v264 || *(CMBaseObjectGetDerivedStorage() + 896) && (!v182 || *(*(v2 + 56) + 1028)))
  {
    goto LABEL_225;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 900))
  {
    goto LABEL_225;
  }

  v265 = *(v2 + 64);
  *time = 0;
  if (v265)
  {
    v266 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v266)
    {
      if (!v266(v265, time) && *time < 0.0 && !*(CMBaseObjectGetDerivedStorage() + 896))
      {
        goto LABEL_225;
      }
    }
  }

  v267 = *(v2 + 56);
  v268 = *(v267 + 240);
  *v481 = *(v267 + 224);
  v482 = v268;
  v483 = *(v267 + 256);
  v269 = *(v267 + 208);
  if (v269)
  {
    v270 = CFArrayGetCount(v269);
    if (v182)
    {
      v271 = v182;
      if (v16)
      {
        goto LABEL_179;
      }

LABEL_177:
      if (!v496 || !BYTE1(v496))
      {
        goto LABEL_204;
      }

      goto LABEL_179;
    }

    v289 = v270;
    if (v270 < 1)
    {
      goto LABEL_203;
    }

    v290 = 0;
    v291 = 0;
    v271 = 0;
    v458 = 0;
    do
    {
      v292 = CFArrayGetValueAtIndex(*(*(v2 + 56) + 208), v290);
      v293 = (*(*(v2 + 56) + 88))(*(v2 + 40), *(v2 + 48), v292);
      v294 = (*(*(v2 + 56) + 96))(*(v2 + 40), *(v2 + 48), v292);
      v295 = *(v2 + 56);
      if (*(v295 + 160) == v294 && !CFSetContainsValue(*(v295 + 688), v292))
      {
        v519 = 0;
        memset(time, 0, sizeof(time));
        fpic_EventDateTimeMoment(v293, time);
        if (FigPlayerInterstitialEventIsPostRoll(v293))
        {
          if (!v291)
          {
            v291 = v293;
          }
        }

        else
        {
          v296 = v519;
          if (v519 && v496 || BYTE1(v519) && BYTE1(v496))
          {
            LODWORD(v447) = BYTE1(v519);
            memset(rhs, 0, 24);
            fpic_PredictEventGroupDurationOnPrimary(*(v2 + 40), v292, *(v2 + 48), 0, 0, rhs);
            *lhs = *v494;
            *&lhs[16] = *v495;
            *&lhs[32] = v496;
            OUTLINED_FUNCTION_200_2();
            *v515 = *rhs;
            *&v516 = *&rhs[16];
            if (fpic_MomentCanBeCurrent(lhs, v505, v515))
            {
              *lhs = *v491;
              *&lhs[16] = v492;
              *&lhs[24] = v48;
              lhs[32] = v16;
              lhs[33] = v52;
              *&lhs[34] = v490;
              *&lhs[38] = WORD2(v490);
              OUTLINED_FUNCTION_200_2();
              if (fpic_MomentGreaterThan(lhs, v505))
              {
                OUTLINED_FUNCTION_44_23();
                LODWORD(v490) = *(&v519 + 2);
                WORD2(v490) = HIWORD(v519);
                v271 = v293;
                LOBYTE(v52) = v447;
                LODWORD(v16) = v296;
              }
            }

            else
            {
              CFSetSetValue(*(*(v2 + 56) + 688), v292);
            }
          }

          v182 = 0;
        }
      }

      ++v290;
    }

    while (v289 != v290);
    if (!v271 && v291)
    {
      fpic_GetEarliestStartForPostroll(time);
      OUTLINED_FUNCTION_44_23();
      LOBYTE(v16) = v519;
      LOBYTE(v52) = BYTE1(v519);
      LODWORD(v490) = *(&v519 + 2);
      v271 = v291;
      WORD2(v490) = HIWORD(v519);
      if (v519)
      {
        goto LABEL_179;
      }

      goto LABEL_177;
    }

    if (!v271)
    {
LABEL_203:
      v297 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_43_21(v297, v298, v299, v300, v301, v302, v303, v304, v371, v378, v385, *(&v385 + 1), v398, v405, v412, v419, FirstIndexOfValue, v433, v440, v447, v458, v466, v305);
      goto LABEL_204;
    }
  }

  else
  {
    v271 = v182;
    if (!v182)
    {
      goto LABEL_203;
    }
  }

  if (!v16)
  {
    goto LABEL_177;
  }

LABEL_179:
  SnapOptions = FigPlayerInterstitialEventGetSnapOptions(v271);
  v273 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_43_21(v273, v274, v275, v276, v277, v278, v279, v280, v371, v378, v385, *(&v385 + 1), v398, v405, v412, v419, FirstIndexOfValue, v433, v440, v447, v458, v466, v281);
  v282 = *(v2 + 56);
  *(v282 + 224) = *v491;
  *(v282 + 240) = v492;
  *(v282 + 248) = v48;
  *(v282 + 256) = v16;
  *(v282 + 257) = v52;
  *(v282 + 258) = v490;
  *(v282 + 262) = WORD2(v490);
  v283 = *(v2 + 56);
  v284 = MEMORY[0x1E6960CC0];
  v285 = *MEMORY[0x1E6960CC0];
  *(v283 + 432) = *MEMORY[0x1E6960CC0];
  v286 = *(v284 + 16);
  *(v283 + 448) = v286;
  v287 = *(v2 + 56);
  *(v287 + 496) = v286;
  *(v287 + 480) = v285;
  v288 = *(v2 + 56);
  *(v288 + 504) = v285;
  *(v288 + 520) = v286;
  fpic_GatePrimaryBufferingAtCurrentEvent(*(v2 + 40), SnapOptions & 1);
LABEL_204:
  v306 = *(v2 + 56);
  if (!v182)
  {
    *(v306 + 408) = *v473;
    *(v306 + 424) = v466;
    v307 = *(v2 + 56);
    *(v307 + 472) = v466;
    *(v307 + 456) = *v473;
    v306 = *(v2 + 56);
  }

  OUTLINED_FUNCTION_208_1(v306);
  if (!fpic_MomentsAreCloseWithTolerance(v481, time, &kMomentsAreCloseThreshold))
  {
    OUTLINED_FUNCTION_208_1(*(v2 + 56));
    v308 = fpic_CreateMomentDesc(time);
    *time = *v494;
    *&time[16] = *v495;
    v519 = v496;
    v309 = fpic_CreateMomentDesc(time);
    if (dword_1EAF178D0)
    {
      OUTLINED_FUNCTION_175_1();
      v310 = OUTLINED_FUNCTION_103_4();
      v318 = OUTLINED_FUNCTION_258_2(v310, v311, v312, v313, v314, v315, v316, v317, v371, v378, v385, *(&v385 + 1), v398, v405, v412, v419, FirstIndexOfValue, v433, v440, v447, v458, v466, *v473, *&v473[2], v481[0], v481[1], v482, *(&v482 + 1), v483, v484, *type, *&type[8], v486[0], v486[1], v487, v488, v489, v490, v491[0], v491[1], v492, v493, v494[0], v494[1], v495[0], v495[1], v496, v497, v498, v499, theArray[0], theArray[1], v501, v502, rhs[0], *&rhs[8], *&rhs[16], *&rhs[24], v504, *(&v504 + 1), v505[0]);
      if (OUTLINED_FUNCTION_115_1(v318))
      {
        v319 = *(v2 + 40);
        *lhs = 136315906;
        *&lhs[4] = "fpic_EstablishCurrentEventForCurrentItem_block_invoke";
        *&lhs[12] = 2048;
        *&lhs[14] = v319;
        *&lhs[22] = 2112;
        *&lhs[24] = v309;
        *&lhs[32] = 2112;
        *&lhs[34] = v308;
        OUTLINED_FUNCTION_23_43();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_448();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
      if (dword_1EAF178D0 >= 2)
      {
        OUTLINED_FUNCTION_175_1();
        v320 = OUTLINED_FUNCTION_103_4();
        v328 = OUTLINED_FUNCTION_258_2(v320, v321, v322, v323, v324, v325, v326, v327, v373, v380, v387, v393, v400, v407, v414, v421, v428, v435, v442, v449, v460, v468, v475, v480, v481[0], v481[1], v482, *(&v482 + 1), v483, v484, *type, *&type[8], v486[0], v486[1], v487, v488, v489, v490, v491[0], v491[1], v492, v493, v494[0], v494[1], v495[0], v495[1], v496, v497, v498, v499, theArray[0], theArray[1], v501, v502, rhs[0], *&rhs[8], *&rhs[16], *&rhs[24], v504, *(&v504 + 1), v505[0]);
        if (OUTLINED_FUNCTION_115_1(v328))
        {
          *lhs = 136315138;
          *&lhs[4] = "fpic_EstablishCurrentEventForCurrentItem_block_invoke";
          OUTLINED_FUNCTION_23_43();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_448();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414();
      }
    }

    v329 = *(v2 + 56);
    v330 = *(v329 + 240);
    *v505 = *(v329 + 224);
    v506 = v330;
    *&v507 = *(v329 + 256);
    CMBaseObjectGetDerivedStorage();
    v331 = FigCFDictionaryCopyArrayOfKeys();
    if (v331)
    {
      v332 = v331;
      if (CFArrayGetCount(v331) >= 1)
      {
        v333 = 0;
        do
        {
          OUTLINED_FUNCTION_624();
          v334 = FigCFArrayGetValueAtIndex();
          v335 = fpic_UnwrapEvent();
          fpic_EventDateTimeMoment(v335, lhs);
          *time = *v505;
          *&time[16] = v506;
          v519 = v507;
          v336 = OUTLINED_FUNCTION_55_18();
          if (!fpic_MomentsAreCloseWithTolerance(v336, v337, &kMomentsAreCloseThreshold))
          {
            v338 = CMBaseObjectGetDerivedStorage();
            CFDictionaryRemoveValue(*(v338 + 672), v334);
          }

          ++v333;
        }

        while (v333 < CFArrayGetCount(v332));
      }

      CFRelease(v332);
    }

    if (v308)
    {
      CFRelease(v308);
    }

    if (v309)
    {
      CFRelease(v309);
    }
  }

LABEL_225:
  OUTLINED_FUNCTION_181();
}

@end