@interface InitiateSeekIntoEvent
@end

@implementation InitiateSeekIntoEvent

void __fpic_InitiateSeekIntoEvent_block_invoke_217(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(CMBaseObjectGetDerivedStorage() + 896))
  {
    v2 = fpic_UnwrapEvent();
    v3 = *(a1 + 56);
    if (*(v3 + 1028) || (v4 = *(*(a1 + 32) + 8), v5 = *(v4 + 48), v9[0] = *(v4 + 32), v9[1] = v5, v10 = *(v4 + 64), v6 = *(v3 + 240), v11[0] = *(v3 + 224), v11[1] = v6, v12 = *(v3 + 256), !fpic_MomentsAreCloseWithTolerance(v9, v11, &kMomentsAreCloseThreshold)))
    {
      if (fpic_isEventResolvableOnPrimaryTimeline())
      {
        v7 = FigPlayerInterstitialEventCopyIdentifier(v2);
        if (dword_1EAF178D0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        fpic_ForceCancelInitiatedSeek();
        if (v7)
        {
          CFRelease(v7);
        }
      }
    }
  }
}

void __fpic_InitiateSeekIntoEvent_block_invoke()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v175 = *MEMORY[0x1E69E9840];
  v2 = fpic_UnwrapEvent();
  v3 = FigPlayerInterstitialEventCopyIdentifier(v2);
  CMBaseObjectGetDerivedStorage();
  FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
  CMBaseObjectGetDerivedStorage();
  v5 = FigCFArrayGetFirstIndexOfValue();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v162 = 0u;
  v163 = 0u;
  v164 = 0;
  fpic_GetEventStartMoment(v2, &v162);
  if (v164)
  {
    if (BYTE1(v164))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v20 = BYTE1(v164);
  if (BYTE1(v164))
  {
    v21 = *(DerivedStorage + 320);
    v172 = *(DerivedStorage + 304);
    v173 = v21;
    v174 = *(DerivedStorage + 336);
    TimeWithDateAndMoment = FigCreateTimeWithDateAndMoment(&v172, rhs, *(&v163 + 1));
  }

  else
  {
    OUTLINED_FUNCTION_392(MEMORY[0x1E6960C70]);
  }

  v162 = *rhs;
  *&v163 = *&rhs[16];
  LOBYTE(v164) = 1;
  if (!v20)
  {
LABEL_3:
    OUTLINED_FUNCTION_73_9(TimeWithDateAndMoment, v8, v9, v10, v11, v12, v13, v14, v140, v141, v142, v144, v145, v146, v147, v148, *(&v148 + 1), v153, cf, v158, v159.value, *&v159.timescale, v159.epoch, type, *(&type + 1), v161, v162);
    v15 = *(DerivedStorage + 320);
    v172 = *(DerivedStorage + 304);
    v173 = v15;
    v174 = *(DerivedStorage + 336);
    fpic_MakeMomentFromTime(rhs, &v172, &v162);
  }

LABEL_4:
  OUTLINED_FUNCTION_81_5();
  v16 = v163;
  *(v17 + 32) = v162;
  *(v17 + 48) = v16;
  *(v17 + 64) = v164;
  if (v5 == -1)
  {
    if (dword_1EAF178D0)
    {
      *lhs = 0;
      LOBYTE(type) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v19 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_115_1(v19))
      {
        *rhs = 136315394;
        *&rhs[4] = "fpic_InitiateSeekIntoEvent_block_invoke";
        OUTLINED_FUNCTION_6_107();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
    }

    OUTLINED_FUNCTION_243();
    v22 = FigSignalErrorAtGM();
    Copy = 0;
    OUTLINED_FUNCTION_30_8(v22, *(v1 + 40));
    goto LABEL_12;
  }

  cfa = fpic_GetCurrentlyPlayingEvent();
  HIDWORD(v153) = fpic_isEventInSameGroupAsAnotherEvent(*(v1 + 56), *(v1 + 64), cfa, 1);
  type = 0uLL;
  v161 = 0;
  v24 = CMBaseObjectGetDerivedStorage();
  v172 = *(v24 + 432);
  *&v173 = *(v24 + 448);
  OUTLINED_FUNCTION_177_2(v24);
  v25 = OUTLINED_FUNCTION_96_6();
  CMTimeAdd(v27, v25, v26);
  fpic_FinishInitiatedSeek();
  *(CMBaseObjectGetDerivedStorage() + 900) = 0;
  v28 = *(v1 + 72);
  v29 = *(v1 + 104);
  *(v28 + 912) = *(v1 + 88);
  *(v28 + 928) = v29;
  *(*(v1 + 72) + 904) = CFArrayGetValueAtIndex(*(*(v1 + 72) + 200), v5);
  v30 = *(v1 + 72);
  v31 = *(v1 + 128);
  *(v30 + 976) = *(v1 + 112);
  *(v30 + 992) = v31;
  v32 = *(v1 + 72);
  v33 = *(v1 + 136);
  *(v32 + 1016) = *(v1 + 152);
  *(v32 + 1000) = v33;
  v34 = *(v1 + 72);
  *(v34 + 1024) = *(v1 + 160);
  *(v34 + 1028) = 1;
  if (dword_1EAF178D0)
  {
    *lhs = 0;
    LOBYTE(v159.value) = 0;
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v36 = *lhs;
    os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_202();
    if (v38)
    {
      v39 = v37;
    }

    else
    {
      v39 = v36;
    }

    if (v39)
    {
      v40 = *(v1 + 56);
      v41 = *(v1 + 72);
      v172 = *(v41 + 912);
      v42 = OUTLINED_FUNCTION_137_2(*(v41 + 928));
      v43 = *(v1 + 72);
      v172 = *(v43 + 976);
      v44 = OUTLINED_FUNCTION_137_2(*(v43 + 992));
      v45 = *(v1 + 72);
      v172 = *(v45 + 1000);
      v46 = OUTLINED_FUNCTION_137_2(*(v45 + 1016));
      v47 = *(v1 + 164);
      v48 = *(*(v1 + 72) + 1024);
      *rhs = 136316930;
      *&rhs[4] = "fpic_InitiateSeekIntoEvent_block_invoke";
      *&rhs[12] = 2048;
      *&rhs[14] = v40;
      *&rhs[22] = 2112;
      *&rhs[24] = v3;
      *&rhs[32] = 2048;
      *&rhs[34] = v42;
      *&rhs[42] = 2048;
      *&rhs[44] = v44;
      *&rhs[52] = 2048;
      *&rhs[54] = v46;
      *&rhs[62] = 1024;
      LODWORD(v167) = v47;
      WORD2(v167) = 1024;
      *(&v167 + 6) = v48;
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v34 = *(v1 + 72);
  }

  v49 = *(v34 + 904);
  v50 = MEMORY[0x1E695E480];
  if (cfa == v49)
  {
    v172 = 0uLL;
    *&v173 = 0;
    fpic_GetCurrentlyPlayingEventPlayoutDuration();
    FigPlayerInterstitialEventGetFirstItemStartOffset(v2, rhs);
    *lhs = v172;
    *&lhs[16] = v173;
    CMTimeAdd(&v172, lhs, rhs);
    *lhs = *(v1 + 88);
    *&lhs[16] = *(v1 + 104);
    *&v159.value = v172;
    v159.epoch = v173;
    CMTimeSubtract(rhs, lhs, &v159);
    *lhs = *MEMORY[0x1E6960CC0];
    *&lhs[16] = *(MEMORY[0x1E6960CC0] + 16);
    v93 = CMTimeCompare(rhs, lhs);
    v52 = v93 >= 0;
    if (!cfa)
    {
      v51 = 0;
      HIDWORD(v158) = 0;
      v53 = &dword_1EAF17000;
      if (FirstIndexOfValue == -1)
      {
        goto LABEL_82;
      }

      goto LABEL_76;
    }

    v93 = OUTLINED_FUNCTION_83_9(v93, v94, v95, v96, v97, v98, v99, v100, v140, v141, v142, v144, v145, v146, v147, v148, v153, cfa, v158, v159.value, *&v159.timescale, v159.epoch, type, v161, v162, *(&v162 + 1), v163, *(&v163 + 1), v164, v165, *rhs, *&rhs[16]);
    if ((v93 & 0x80000000) == 0)
    {
      HIDWORD(v158) = 0;
      v53 = &dword_1EAF17000;
      if (FirstIndexOfValue == -1)
      {
        goto LABEL_82;
      }

      v51 = 1;
      goto LABEL_76;
    }

LABEL_71:
    fpic_StopInterstitialPlayerAtCurrentItem();
    if (FirstIndexOfValue == -1)
    {
      HIDWORD(v158) = 1;
      v53 = &dword_1EAF17000;
      goto LABEL_82;
    }

    v51 = 1;
    HIDWORD(v158) = 1;
    v38 = cfa == v49;
    v53 = &dword_1EAF17000;
    if (!v38)
    {
      goto LABEL_30;
    }

LABEL_76:
    v101 = v51;
    if ((OUTLINED_FUNCTION_83_9(v93, v94, v95, v96, v97, v98, v99, v100, v140, v141, v142, v144, v145, v146, v147, v148, v153, cfa, v158, v159.value, *&v159.timescale, v159.epoch, type, v161, v162, *(&v162 + 1), v163, *(&v163 + 1), v164, v165, *rhs, *&rhs[16]) & 0x80000000) == 0)
    {
      v51 = v101;
      goto LABEL_30;
    }

    if (v53[564])
    {
      v102 = OUTLINED_FUNCTION_51_20();
      v103 = os_log_type_enabled(v102, v159.value);
      if (OUTLINED_FUNCTION_109_0(v103))
      {
        *rhs = 136315394;
        *&rhs[4] = "fpic_InitiateSeekIntoEvent_block_invoke";
        OUTLINED_FUNCTION_6_107();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524();
    }

    fpic_removeAllCurrentEventsAfterEvent(*(v1 + 56), *(*(*(v1 + 48) + 8) + 24), 0, SHIDWORD(v158), 1);
    OUTLINED_FUNCTION_62_14();
    *(v138 + 24) = 0;
    OUTLINED_FUNCTION_50_14();
    if (v139)
    {
      goto LABEL_130;
    }

    fpic_AllowIntendedEventToSeekIntoToBeBeRescheduled(*(v1 + 56));
    Copy = 0;
    *(*(v1 + 72) + 1029) = 1;
LABEL_125:
    v53 = &dword_1EAF17000;
    goto LABEL_54;
  }

  if (cfa)
  {
    v52 = 0;
    goto LABEL_71;
  }

  v51 = 0;
  v52 = 0;
  HIDWORD(v158) = 0;
  v53 = &dword_1EAF17000;
  if (FirstIndexOfValue != -1)
  {
LABEL_30:
    if (FirstIndexOfValue < 1)
    {
      Copy = 0;
LABEL_54:
      OUTLINED_FUNCTION_59_14();
      v72 = OUTLINED_FUNCTION_96_6();
      if (!fpic_MomentsAreCloseWithTolerance(v72, v73, v74) || (fpic_CurrentItemMoment(*(*(v1 + 72) + 160), lhs), OUTLINED_FUNCTION_81_5(), v76 = *(v75 + 48), *rhs = *(v75 + 32), *&rhs[16] = v76, *&rhs[32] = *(v75 + 64), v172 = *lhs, v173 = *&lhs[16], v174 = v171, v77 = OUTLINED_FUNCTION_96_6(), !(fpic_MomentsAreCloseWithTolerance(v77, v78, v79) | BYTE4(v153))))
      {
        v169 = 0;
        v167 = 0u;
        v168 = 0u;
        memset(rhs, 0, sizeof(rhs));
        v80 = *(v1 + 72);
        v81 = *(*(v1 + 32) + 8);
        v82 = *(v81 + 32);
        v83 = *(v81 + 48);
        *(v80 + 968) = *(v81 + 64);
        *(v80 + 936) = v82;
        *(v80 + 952) = v83;
        if (v53[564])
        {
          LODWORD(v159.value) = 0;
          HIBYTE(v165) = 0;
          v84 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          value = v159.value;
          os_log_type_enabled(v84, HIBYTE(v165));
          OUTLINED_FUNCTION_134();
          if (v38)
          {
            v87 = v86;
          }

          else
          {
            v87 = value;
          }

          if (v87)
          {
            v88 = *(v1 + 56);
            v89 = *(v1 + 72);
            v90 = *(v89 + 952);
            v172 = *(v89 + 936);
            v173 = v90;
            v174 = *(v89 + 968);
            v91 = OUTLINED_FUNCTION_96_6();
            fpic_getMomentDesc(v91, v92);
            *lhs = 136315650;
            *&lhs[4] = "fpic_InitiateSeekIntoEvent_block_invoke";
            *&lhs[12] = 2048;
            *&lhs[14] = v88;
            *&lhs[22] = 2080;
            *&lhs[24] = rhs;
            OUTLINED_FUNCTION_82_1();
            OUTLINED_FUNCTION_38();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_238_0();
        }
      }

      if (!v52)
      {
        fpic_GatePrimaryBufferingAtCurrentEvent(*(v1 + 56), 0);
      }

      fpic_GatePrimaryPlaybackAtCurrentEvent(*(v1 + 56), *(v1 + 80));
      *(*(v1 + 72) + 896) = *(v1 + 164);
      goto LABEL_12;
    }

    v151 = v51;
    if (v53[564])
    {
      v54 = OUTLINED_FUNCTION_51_20();
      v55 = os_log_type_enabled(v54, v159.value);
      if (OUTLINED_FUNCTION_115_1(v55))
      {
        *rhs = 136315394;
        *&rhs[4] = "fpic_InitiateSeekIntoEvent_block_invoke";
        OUTLINED_FUNCTION_6_107();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
    }

    v56 = *(v1 + 56);
    v57 = *(*(v1 + 48) + 8);
    v58 = CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    if (FigCFArrayGetFirstIndexOfValue() == -1)
    {
      v70 = 0;
      v53 = &dword_1EAF17000;
    }

    else
    {
      v59 = v57[3];
      if (v59 && (v60 = CFGetTypeID(v59), v60 == CFArrayGetTypeID()))
      {
        Mutable = v57[3];
      }

      else
      {
        Mutable = CFArrayCreateMutable(*v50, 0, MEMORY[0x1E695E9C0]);
      }

      v149 = v57;
      v53 = &dword_1EAF17000;
      if (Mutable)
      {
        v62 = fpic_UnwrapEvent();
        cfb = FigPlayerInterstitialEventCopyIdentifier(v62);
        if (FigCFArrayGetFirstValue() != *(v58 + 904))
        {
          do
          {
            OUTLINED_FUNCTION_183_2();
            v63 = fpic_UnwrapEvent();
            v64 = FigPlayerInterstitialEventCopyIdentifier(v63);
            if (dword_1EAF178D0)
            {
              v65 = OUTLINED_FUNCTION_51_20();
              v66 = os_log_type_enabled(v65, v159.value);
              if (OUTLINED_FUNCTION_124_0(v66))
              {
                *rhs = 136315906;
                OUTLINED_FUNCTION_132_1();
                *&rhs[14] = v56;
                *&rhs[22] = 2112;
                *&rhs[24] = v64;
                *&rhs[32] = 2112;
                *&rhs[34] = cfb;
                OUTLINED_FUNCTION_87();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v53 = &dword_1EAF17000;
            }

            v67 = OUTLINED_FUNCTION_183_2();
            fpic_RemoveEvent(v67, v68, Mutable, 0, SHIDWORD(v158), 1);
            FirstValue = FigCFArrayGetFirstValue();
            if (v64)
            {
              CFRelease(v64);
            }
          }

          while (FirstValue != *(v58 + 904));
        }

        v149[3] = Mutable;
        v70 = cfb;
        if (cfb)
        {
          CFRelease(cfb);
          v70 = 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_243();
        v70 = FigSignalErrorAtGM();
      }
    }

    OUTLINED_FUNCTION_30_8(v70, *(v1 + 40));
    OUTLINED_FUNCTION_50_14();
    if (!v71)
    {
      Copy = 0;
      v52 = v151;
      goto LABEL_54;
    }

LABEL_130:
    Copy = 0;
    goto LABEL_12;
  }

LABEL_82:
  v104 = *v50;
  Copy = CFArrayCreateCopy(*v50, *(*(v1 + 72) + 656));
  if (v53[564])
  {
    *lhs = 0;
    LOBYTE(v159.value) = 0;
    v105 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v106 = *lhs;
    os_log_type_enabled(v105, v159.value);
    OUTLINED_FUNCTION_101_0();
    if (v38)
    {
      v108 = v107;
    }

    else
    {
      v108 = v106;
    }

    if (v108)
    {
      *rhs = 136315394;
      *&rhs[4] = "fpic_InitiateSeekIntoEvent_block_invoke";
      OUTLINED_FUNCTION_6_107();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449();
  }

  fpic_removeAllCurrentEventsAfterEvent(*(v1 + 56), *(*(*(v1 + 48) + 8) + 24), 0, SHIDWORD(v158), 1);
  OUTLINED_FUNCTION_62_14();
  *(v109 + 24) = 0;
  OUTLINED_FUNCTION_50_14();
  if (!v110)
  {
    OUTLINED_FUNCTION_59_14();
    v111 = OUTLINED_FUNCTION_96_6();
    if (fpic_MomentGreaterThan(v111, v112))
    {
      fpic_RescheduleEvents(*(v1 + 56), Copy);
    }

    v113 = *(v1 + 56);
    v114 = *(*(v1 + 48) + 8);
    v115 = CMBaseObjectGetDerivedStorage();
    *lhs = 0;
    if (!*(v115 + 904))
    {
      v133 = 0;
LABEL_123:
      OUTLINED_FUNCTION_62_14();
      *(v136 + 24) = v133;
      OUTLINED_FUNCTION_50_14();
      if (v137)
      {
        goto LABEL_12;
      }

      fpic_AllowIntendedEventToSeekIntoToBeBeRescheduled(*(v1 + 56));
      *(*(v1 + 72) + 1029) = 1;
      goto LABEL_125;
    }

    v116 = v115;
    v117 = *(v114 + 24);
    if (v117 && (v118 = CFGetTypeID(v117), v118 == CFArrayGetTypeID()))
    {
      v119 = *(v114 + 24);
    }

    else
    {
      v119 = CFArrayCreateMutable(v104, 0, MEMORY[0x1E695E9C0]);
    }

    cfc = v119;
    if (v119)
    {
      v120 = fpic_UnwrapEvent();
      v152 = FigPlayerInterstitialEventCopyIdentifier(v120);
      v121 = fpic_copyEventsScheduledAtSameMomentAsEvent(v113, v120, lhs);
      if (v121)
      {
LABEL_133:
        v133 = v121;
        v134 = cfc;
        goto LABEL_117;
      }

      for (i = 0; ; ++i)
      {
        Count = *lhs;
        if (*lhs)
        {
          Count = CFArrayGetCount(*lhs);
        }

        if (i >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*lhs, i);
        CMBaseObjectGetDerivedStorage();
        v125 = FigCFArrayGetFirstIndexOfValue();
        if (*(v116 + 904) == ValueAtIndex)
        {
          break;
        }

        v126 = v125;
        if (!CFSetContainsValue(*(v116 + 688), ValueAtIndex))
        {
          OUTLINED_FUNCTION_214_2();
          v127 = fpic_UnwrapEvent();
          v150 = FigPlayerInterstitialEventCopyIdentifier(v127);
          if (dword_1EAF178D0)
          {
            LODWORD(v159.value) = 0;
            HIBYTE(v165) = 0;
            v143 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v128 = os_log_type_enabled(v143, HIBYTE(v165));
            if (OUTLINED_FUNCTION_109_0(v128))
            {
              *rhs = 136315906;
              OUTLINED_FUNCTION_132_1();
              *&rhs[14] = v113;
              *&rhs[22] = 2112;
              *&rhs[24] = v150;
              *&rhs[32] = 2112;
              *&rhs[34] = v152;
              OUTLINED_FUNCTION_87();
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_524();
          }

          if (v126 == -1)
          {
            CFSetSetValue(*(v116 + 688), ValueAtIndex);
            v131 = OUTLINED_FUNCTION_214_2();
            v121 = fpic_RecordPastCurrentEventDuration(v131, v132);
            if (v121)
            {
              goto LABEL_133;
            }
          }

          else
          {
            v129 = OUTLINED_FUNCTION_214_2();
            fpic_RemoveEvent(v129, v130, cfc, 0, SHIDWORD(v158), 0);
          }

          if (v150)
          {
            CFRelease(v150);
          }
        }
      }

      v133 = 0;
      *(v114 + 24) = cfc;
    }

    else
    {
      OUTLINED_FUNCTION_243();
      v133 = FigSignalErrorAtGM();
      v152 = 0;
    }

    v134 = 0;
LABEL_117:
    if (*lhs)
    {
      v135 = v134;
      CFRelease(*lhs);
      v134 = v135;
    }

    if (v134)
    {
      CFRelease(v134);
    }

    if (v152)
    {
      CFRelease(v152);
    }

    goto LABEL_123;
  }

LABEL_12:
  if (v3)
  {
    CFRelease(v3);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  OUTLINED_FUNCTION_191();
}

@end