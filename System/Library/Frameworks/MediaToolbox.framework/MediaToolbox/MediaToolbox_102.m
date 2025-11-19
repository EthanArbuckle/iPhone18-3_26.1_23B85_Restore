__n128 faq_clearSeamHandlingState(__n128 *a1)
{
  if (a1)
  {
    v2 = a1[7].n128_u64[1];
    if (v2)
    {
      CFRelease(v2);
      a1[7].n128_u64[1] = 0;
    }

    v3 = a1[10].n128_u64[0];
    if (v3)
    {
      CFRelease(v3);
      a1[10].n128_u64[0] = 0;
    }

    v4 = MEMORY[0x1E6960CC0];
    a1[7].n128_u64[0] = 0;
    result = *v4;
    a1[8] = *v4;
    a1[9].n128_u64[0] = v4[1].n128_u64[0];
    a1[9].n128_u64[1] = 0;
  }

  return result;
}

uint64_t subaq_prepareForStart(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_56_2();
    if (v5)
    {
      return 0;
    }

    v6 = v4;
    v7 = v3;
    v8 = v2;
    if (!*(v2 + 648) && !*(v2 + 664))
    {
      goto LABEL_5;
    }

    result = subaq_setTapTimelineInfo(v1, v2, 0);
    if (!result)
    {
      *(v8 + 657) = 1;
LABEL_5:
      result = 0;
      *(v1 + 581) = v7;
      *(v1 + 582) = v6;
    }
  }

  return result;
}

uint64_t subaq_startAudioQueueIfReady(uint64_t a1)
{
  v125 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_67_2();
  if (v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = *(v1 + 48);
  v6 = *(v2 + 648);
  if (v6 || *(v2 + 664))
  {
    if (*(v1 + 753) && *(v2 + 657) && *(v1 + 752) && (v6 && *(v2 + 656) || *(v2 + 664) && *(v2 + 658)))
    {
      *(v2 + 657) = 0;
      goto LABEL_13;
    }

    return 0;
  }

LABEL_13:
  v112 = 0u;
  memset(v111, 0, sizeof(v111));
  memset(&v110, 0, sizeof(v110));
  faqTimelineWrangler_getAQTimePauseOffset(v1 + 424, &v110);
  v7 = *(v1 + 48);
  if (*(v1 + 581))
  {
    if ((v7 & 2) == 0 && !*(v4 + 49))
    {
      *&time[0].start.value = *MEMORY[0x1E6960CC0];
      OUTLINED_FUNCTION_30_4(*(MEMORY[0x1E6960CC0] + 16), v85, v90, v95, v100, v105, *&v110.value, v110.epoch);
      v15 = CMTimeCompare(&time[0].start, time2);
      if (v15)
      {
        v23 = *(v1 + 592);
        v24 = OUTLINED_FUNCTION_29_4(v15, v16, v17, v18, v19, v20, v21, v22, v86, v91, v96, v101, v106, *&v110.value, v110.epoch);
        v25 = v23 - CMClockConvertHostTimeToSystemUnits(v24);
        *(&v111[0] + 1) = v25;
        DWORD2(v112) = 2;
        if (dword_1EAF16C30)
        {
          v102 = OUTLINED_FUNCTION_33_4();
          os_log_type_enabled(v102, type.value);
          OUTLINED_FUNCTION_46();
          if (&unk_1EAF16000)
          {
            CMClockMakeHostTimeFromSystemUnits(&time[0].start, v25);
            Seconds = CMTimeGetSeconds(&time[0].start);
            CMClockMakeHostTimeFromSystemUnits(&time[0].start, *(v1 + 592));
            v27 = CMTimeGetSeconds(&time[0].start);
            v36 = OUTLINED_FUNCTION_29_4(v28, v29, v30, v31, v32, v33, v34, v35, v87, v92, v97, v102, v107, *&v110.value, v110.epoch);
            CMTimeGetSeconds(v36);
            *time2 = 136316930;
            OUTLINED_FUNCTION_18_4("subaq_startAudioQueueIfReady");
            *&v117[2] = v1 + 800;
            *&v117[10] = v37;
            *&v117[12] = v25;
            v118 = v37;
            v119 = Seconds;
            v120 = v37;
            v121 = v27;
            v122 = v37;
            v123 = v38;
            OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

LABEL_35:
          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_36;
        }

        goto LABEL_36;
      }
    }

    v8 = (v1 + 584);
    if (dword_1EAF16C30)
    {
      v9 = OUTLINED_FUNCTION_33_4();
      os_log_type_enabled(v9, type.value);
      OUTLINED_FUNCTION_46();
      if (&unk_1EAF16000)
      {
        v10 = *(v1 + 592);
        CMClockMakeHostTimeFromSystemUnits(&time[0].start, v10);
        CMTimeGetSeconds(&time[0].start);
        *time2 = 136316418;
        OUTLINED_FUNCTION_18_4("subaq_startAudioQueueIfReady");
        *&v117[2] = v1 + 800;
        *&v117[10] = v11;
        *&v117[12] = v10;
        v118 = v11;
        v119 = v12;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_36();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if ((v7 & 2) == 0 && !*(v4 + 49))
    {
      *&time[0].start.value = *MEMORY[0x1E6960CC0];
      OUTLINED_FUNCTION_30_4(*(MEMORY[0x1E6960CC0] + 16), v85, v90, v95, v100, v105, *&v110.value, v110.epoch);
      if (CMTimeCompare(&time[0].start, time2))
      {
        memset(&v115, 0, sizeof(v115));
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&v115, HostTimeClock);
        memset(&type, 0, sizeof(type));
        CMTimeMake(&time[0].start, 1, 10);
        *time2 = v115;
        CMTimeAdd(&type, time2, &time[0].start);
        memset(&rhs, 0, sizeof(rhs));
        *&time[0].start.value = *&type.value;
        OUTLINED_FUNCTION_30_4(type.epoch, v88, v93, v98, v103, v108, *&v110.value, v110.epoch);
        CMTimeSubtract(&rhs, &time[0].start, time2);
        time[0].start = rhs;
        v40 = CMClockConvertHostTimeToSystemUnits(&time[0].start);
        *(&v111[0] + 1) = v40;
        DWORD2(v112) = 2;
        if (dword_1EAF16C30)
        {
          v41 = v40;
          HIDWORD(v109) = 0;
          BYTE3(v109) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_46();
          if (&unk_1EAF16000)
          {
            CMClockMakeHostTimeFromSystemUnits(&time[0].start, v41);
            v42 = CMTimeGetSeconds(&time[0].start);
            time[0].start = v115;
            v43 = CMTimeGetSeconds(&time[0].start);
            v52 = OUTLINED_FUNCTION_29_4(v44, v45, v46, v47, v48, v49, v50, v51, v89, v94, v99, os_log_and_send_and_compose_flags_and_os_log_type, v109, *&v110.value, v110.epoch);
            CMTimeGetSeconds(v52);
            *time2 = 136316930;
            OUTLINED_FUNCTION_18_4("subaq_startAudioQueueIfReady");
            *&v117[2] = v1 + 800;
            *&v117[10] = v53;
            *&v117[12] = v41;
            v118 = v53;
            v119 = v42;
            v120 = v53;
            v121 = v43;
            v122 = v53;
            v123 = v54;
            OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          goto LABEL_35;
        }

LABEL_36:
        v8 = v111;
        goto LABEL_37;
      }
    }

    if (dword_1EAF16C30)
    {
      v13 = OUTLINED_FUNCTION_33_4();
      v14 = os_log_type_enabled(v13, type.value);
      if (OUTLINED_FUNCTION_109_0(v14))
      {
        *time2 = 136315906;
        *&time2[4] = "subaq_startAudioQueueIfReady";
        *&time2[12] = 2048;
        *&time2[14] = v1;
        *&time2[22] = 2048;
        *&time2[24] = v4;
        *v117 = 2082;
        *&v117[2] = v1 + 800;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_18_3();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524();
    }

    v8 = 0;
  }

LABEL_37:
  OUTLINED_FUNCTION_97_2();
  if (v57)
  {
    v58 = v55;
  }

  else
  {
    v58 = v56;
  }

  if (*(v1 + 236))
  {
    v59 = *(v1 + 232);
    if (v59 != 0.0)
    {
      v55 = v59;
    }
  }

  *time2 = *MEMORY[0x1E6960C70];
  *&time2[16] = *(MEMORY[0x1E6960C70] + 16);
  v115 = *time2;
  v60 = *(MEMORY[0x1E6960C98] + 16);
  *&time[0].start.value = *MEMORY[0x1E6960C98];
  *&time[0].start.epoch = v60;
  *&time[0].duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  if (*(v1 + 492) & 1) != 0 && (*(v4 + 444) & 1) != 0 && (*(v4 + 468))
  {
    type = *(v1 + 480);
    v61 = v58 / v55;
    faqTimelineWrangler_convertAQTimeToMediaTime(v1 + 424, &type, time2, v58 / v55);
    type = *(v4 + 432);
    rhs = *(v4 + 456);
    CMTimeAdd(&v115, &type, &rhs);
    rhs = v115;
    faqTimelineWrangler_convertAQTimeToMediaTime(v1 + 424, &rhs, &type, v61);
    v115 = type;
    v62 = *&type.value;
    type = *time2;
    *&rhs.value = v62;
    rhs.epoch = v115.epoch;
    CMTimeRangeFromTimeToTime(time, &type, &rhs);
  }

  if ((time[0].start.flags & 1) != 0 && (time[0].duration.flags & 1) != 0 && !time[0].duration.epoch && (time[0].duration.value & 0x8000000000000000) == 0)
  {
    *time2 = *&time[0].start.value;
    *&time2[16] = *&time[0].start.epoch;
    *v117 = *&time[0].duration.timescale;
    v77 = OUTLINED_FUNCTION_298();
    subaq_scheduleAudioProcessingUnitForMediaTimeRange(v77, v78, v79, v80, 0, 1u, 0);
    *time2 = *&time[0].start.value;
    *&time2[16] = *&time[0].start.epoch;
    *v117 = *&time[0].duration.timescale;
    v81 = OUTLINED_FUNCTION_298();
    subaq_scheduleAudioProcessingUnitForMediaTimeRange(v81, v82, v83, v84, 1, 1u, 0);
    if (!v8)
    {
      goto LABEL_54;
    }
  }

  else if (!v8)
  {
    goto LABEL_54;
  }

  if (!*(v4 + 609))
  {
    v63 = OUTLINED_FUNCTION_298();
    subaq_audioQueuePrime(v63, v64, v65, 0);
  }

LABEL_54:
  if ((v5 & 2) != 0)
  {
    v68 = FigAudioQueueTimingShimStartWithPerfCallback(*(v4 + 40), v8, *(v1 + 582), 0, 0);
    if (v68)
    {
      return v68;
    }

    goto LABEL_63;
  }

  v66 = *(v4 + 24);
  if (v66)
  {
    CFRetain(v66);
    v67 = *(v4 + 24);
  }

  else
  {
    v67 = 0;
  }

  started = FigAudioQueueTimingShimStartAsyncWithPerfCallback(*(v4 + 40), v8, *(v1 + 582), subaq_audioQueueStartupCompleted, v67, 0, 0);
  if (!started)
  {
LABEL_63:
    *(v4 + 49) = 1;
    if ((*(v1 + 48) & 2) != 0)
    {
      if (*(v1 + 16) || (Count = CFArrayGetCount(*(v1 + 176)), Count < 1))
      {
LABEL_69:
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_75_1();
      }

      else
      {
        v72 = Count;
        v73 = 0;
        while (1)
        {
          v74 = OUTLINED_FUNCTION_71_1();
          if (!*(CFArrayGetValueAtIndex(v74, v75) + 49))
          {
            break;
          }

          if (v72 == ++v73)
          {
            goto LABEL_69;
          }
        }
      }
    }

    return 0;
  }

  v68 = started;
  v70 = *(v4 + 24);
  if (v70)
  {
    CFRelease(v70);
  }

  return v68;
}

void subaq_getCurrentQueueTime(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  v9 = 0u;
  v3 = MEMORY[0x1E6960CC0];
  memset(v8, 0, sizeof(v8));
  *&a2->value = *MEMORY[0x1E6960CC0];
  a2->epoch = *(v3 + 16);
  v4 = *(a1 + 40);
  if (v4)
  {
    DWORD2(v9) = 1;
    FigAudioQueueTimingShimGetCurrentTime(v4, 0, 0, v8, 0, 0);
    if (!v5 && (BYTE8(v9) & 1) != 0)
    {
      v6 = OUTLINED_FUNCTION_88_2(*v8);
      CMTimeMake(a2, v6, v7);
    }
  }
}

double faq_reset(uint64_t a1, double result)
{
  v94 = *MEMORY[0x1E69E9840];
  v78 = 4;
  Property = 0;
  v77 = 1;
  if (!*(a1 + 16))
  {
    Count = CFArrayGetCount(*(a1 + 176));
    if (Count >= 2)
    {
      v5 = Count + 1;
      do
      {
        CFArrayRemoveValueAtIndex(*(a1 + 176), v5 - 2);
        --v5;
      }

      while (v5 > 2);
    }

    if (*(a1 + 16))
    {
      ValueAtIndex = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
    }

    Property = FigAudioQueueTimingShimGetProperty(*(ValueAtIndex + 5), 0x6171726Eu, &v77, &v78);
    if (Property)
    {
      OUTLINED_FUNCTION_10_7();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v15 = OUTLINED_FUNCTION_101_1(os_log_and_send_and_compose_flags_and_os_log_type, v8, v9, v10, v11, v12, v13, v14, v69, v70, v71, v73, v74, v75, SWORD2(v75), SBYTE6(v75), HIBYTE(v75), v76);
      if (OUTLINED_FUNCTION_109_0(v15))
      {
        v80 = 136315906;
        v81 = "faq_reset";
        v82 = 1024;
        *v83 = Property;
        *&v83[4] = 1040;
        *&v83[6] = 4;
        *v84 = 2080;
        *&v84[2] = &Property;
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_18_3();
        v2 = v76;
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_524();
    }

    if (dword_1EAF16C30)
    {
      OUTLINED_FUNCTION_10_7();
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v24 = OUTLINED_FUNCTION_101_1(v16, v17, v18, v19, v20, v21, v22, v23, v69, v70, v71, v73, v74, v75, SWORD2(v75), SBYTE6(v75), HIBYTE(v75), v76);
      if (OUTLINED_FUNCTION_109_0(v24))
      {
        OUTLINED_FUNCTION_22_5();
        *&v84[8] = 2082;
        v85 = v25;
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_18_3();
        v2 = v76;
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524();
    }

    if (*(a1 + 784))
    {
      v26 = OUTLINED_FUNCTION_298();
      Property = faq_disconnectFromOfflineMixer(v26, v27);
      if (Property)
      {
        OUTLINED_FUNCTION_10_7();
        v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_61_3(v28, v29, v30, v31, v32, v33, v34, v35, v69, v70, v71, v73, v74, v75, SWORD2(v75), SBYTE6(v75), HIBYTE(v75), v76);
        OUTLINED_FUNCTION_40();
        if (v2)
        {
          FigAudioQueueTimingShimGetAudioQueue(*(ValueAtIndex + 5));
          OUTLINED_FUNCTION_22_5();
          *&v84[8] = v36;
          v85 = v37;
          v86 = 2082;
          v87 = v38;
          OUTLINED_FUNCTION_100();
          OUTLINED_FUNCTION_18_3();
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_414();
      }
    }

    FigAudioQueueTimingShimReset(*(ValueAtIndex + 5));
    if (*(a1 + 784))
    {
      v39 = OUTLINED_FUNCTION_298();
      Property = faq_connectToOfflineMixer(v39, v40);
      if (Property)
      {
        OUTLINED_FUNCTION_10_7();
        v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_61_3(v41, v42, v43, v44, v45, v46, v47, v48, v69, v70, v71, v73, v74, v75, SWORD2(v75), SBYTE6(v75), HIBYTE(v75), v76);
        OUTLINED_FUNCTION_40();
        if (v2)
        {
          FigAudioQueueTimingShimGetAudioQueue(*(ValueAtIndex + 5));
          OUTLINED_FUNCTION_22_5();
          *&v84[8] = v49;
          v85 = v50;
          v86 = 2082;
          v87 = v51;
          OUTLINED_FUNCTION_100();
          OUTLINED_FUNCTION_18_3();
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_414();
      }
    }

    v52 = 1.0;
    if (*(a1 + 236) && *(a1 + 232) != 0.0)
    {
      v52 = *(a1 + 232);
    }

    Property = FigAudioQueueTimingShimSetParameter(*(ValueAtIndex + 5), 2u, v52);
    if (Property)
    {
      OUTLINED_FUNCTION_10_7();
      v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_61_3(v53, v54, v55, v56, v57, v58, v59, v60, v69, v70, v71, v73, v74, v75, SWORD2(v75), SBYTE6(v75), HIBYTE(v75), v76);
      OUTLINED_FUNCTION_40();
      if (v2)
      {
        AudioQueue = FigAudioQueueTimingShimGetAudioQueue(*(ValueAtIndex + 5));
        v80 = 136316930;
        v81 = "faq_reset";
        v82 = 2048;
        *v83 = a1;
        *&v83[8] = 2048;
        *v84 = ValueAtIndex;
        *&v84[8] = 2048;
        v85 = AudioQueue;
        v86 = 2082;
        v87 = a1 + 800;
        v88 = 1024;
        v89 = Property;
        v90 = 1040;
        v91 = 4;
        v92 = 2080;
        p_Property = &Property;
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_18_3();
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_414();
    }

    v62 = OUTLINED_FUNCTION_298();
    subaq_restoreParameters(v62, v63);
    if (v77 && (*(a1 + 48) & 2) == 0)
    {
      FigAudioQueueTimingShimPause(*(ValueAtIndex + 5));
      *(a1 + 580) = 1;
      if (*(a1 + 73) || *(a1 + 576))
      {
        *(a1 + 652) = 1;
      }

      else
      {
        *(a1 + 652) = 0;
        *(a1 + 305) = 0;
      }
    }

    *(ValueAtIndex + 145) = subaq_getCurrentPlayRate2ParameterValue(ValueAtIndex);
    v64 = MEMORY[0x1E6960C70];
    if (*(a1 + 579))
    {
      *(a1 + 579) = 0;
      *(a1 + 305) = 0;
      *(a1 + 652) = 0;
      v65 = *v64;
      *(a1 + 528) = *v64;
      v66 = *(v64 + 2);
      *(a1 + 544) = v66;
      *(a1 + 480) = v65;
      *(a1 + 496) = v66;
      *(ValueAtIndex + 484) = v65;
      *(ValueAtIndex + 500) = v66;
    }

    *(a1 + 785) = 0;
    v72 = *v64;
    *(ValueAtIndex + 408) = *v64;
    v67 = *(v64 + 2);
    *(ValueAtIndex + 53) = v67;
    *(ValueAtIndex + 27) = v72;
    *(ValueAtIndex + 56) = v67;
    *(ValueAtIndex + 456) = v72;
    *(ValueAtIndex + 59) = v67;
    *(ValueAtIndex + 676) = v72;
    *(ValueAtIndex + 692) = v67;
    FigSimpleMutexLock();
    *(ValueAtIndex + 508) = v72;
    *(ValueAtIndex + 524) = v67;
    FigSimpleMutexUnlock();
    *(a1 + 578) = 1;
    *(a1 + 196) = 0;
    *(a1 + 356) = 0;
    v68 = MEMORY[0x1E6960CC0];
    *(a1 + 360) = *MEMORY[0x1E6960CC0];
    *(a1 + 376) = *(v68 + 16);
    *&result = faq_clearSeamHandlingState(a1).n128_u64[0];
  }

  return result;
}

void subaq_getAudioQueueLatencyFigTime()
{
  v35 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960CC0]);
  if (v4)
  {
    OUTLINED_FUNCTION_56_2();
    if (!v5)
    {
      OUTLINED_FUNCTION_471();
      if (*(v2 + 654))
      {
        if (dword_1EAF16C30)
        {
          OUTLINED_FUNCTION_2_24();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v14 = OUTLINED_FUNCTION_19_4(os_log_and_send_and_compose_flags_and_os_log_type, v7, v8, v9, v10, v11, v12, v13, v19, v20, v21, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
          if (OUTLINED_FUNCTION_115_1(v14))
          {
            v24 = 136315906;
            v25 = "subaq_getAudioQueueLatencyFigTime";
            v26 = 2048;
            v27 = v2;
            v28 = 2048;
            v29 = v1;
            v30 = 2082;
            v31 = v2 + 800;
            OUTLINED_FUNCTION_100();
            OUTLINED_FUNCTION_36();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_612();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_414();
        }

        v17 = MEMORY[0x1E6960CC0];
      }

      else
      {
        if (FigAudioQueueTimingShimGetAudioQueueLatency(*(v1 + 40), *(v1 + 624), *(v2 + 768), &v23))
        {
          return;
        }

        if (dword_1EAF16C30)
        {
          OUTLINED_FUNCTION_147();
          v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v15, BYTE3(type));
          OUTLINED_FUNCTION_46();
          if (v3)
          {
            time = v23;
            Seconds = CMTimeGetSeconds(&time);
            v24 = 136316162;
            v25 = "subaq_getAudioQueueLatencyFigTime";
            v26 = 2048;
            v27 = v2;
            v28 = 2048;
            v29 = v1;
            v30 = 2082;
            v31 = v2 + 800;
            v32 = 2048;
            v33 = Seconds;
            OUTLINED_FUNCTION_100();
            OUTLINED_FUNCTION_36();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v17 = &v23;
      }

      v18 = *&v17->value;
      *(v0 + 16) = v17->epoch;
      *v0 = v18;
    }
  }
}

uint64_t subaq_getEQPreset(uint64_t result)
{
  if (result && !*(result + 16) && (*(result + 48) & 4) == 0)
  {
    OUTLINED_FUNCTION_471();
    OUTLINED_FUNCTION_80_1();
    result = FigAudioQueueTimingShimGetProperty(v2, v3, v4, v5);
    if (!result)
    {
      *v1 = -1;
    }
  }

  return result;
}

uint64_t faq_setAudioCurves(uint64_t a1, unint64_t a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v46 = a2 == 0;
  if (a2 > 1)
  {
    return 4294954356;
  }

  CFGetAllocator(a1);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    return 4294954355;
  }

  v5 = MutableCopy;
  theArray.start.value = 0;
  v50.value = 0;
  FigCFDictionaryGetValueIfPresent();
  FigCFDictionaryGetValueIfPresent();
  *&context = 0;
  *(&context + 1) = a1;
  *&cf[0] = a2;
  memset(cf + 8, 0, 32);
  FigCFDictionaryGetValueIfPresent();
  FigCFDictionaryGetValueIfPresent();
  if (FigCFDictionaryGetCount() < 1 || (CFDictionaryApplyFunction(*(&cf[1] + 1), &faq_checkOldFAPUCurvesExistOnCurvesApplier, &context), v6 = context, !context))
  {
    Count = FigCFDictionaryGetCount();
    if (Count < 1)
    {
      v6 = 0;
    }

    else
    {
      v8 = Count;
      v9 = CFGetAllocator(a1);
      *(&cf[0] + 1) = CFDictionaryCreateMutable(v9, v8, MEMORY[0x1E695E9D8], &faq_fapuCurveInspectionResultsDictValueCallbacks);
      if (*(&cf[0] + 1) && (v10 = CFGetAllocator(a1), (*&cf[1] = CFDictionaryCreateMutable(v10, v8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0))
      {
        CFDictionaryApplyFunction(*&cf[2], faq_convertAudioProcessingUnitCurvesToPackedCurvesAndCopyInspectionResultsApplier, &context);
        v6 = context;
        if (!context)
        {
          CFDictionarySetValue(v5, @"AudioCurves_ProcessingUnits", *&cf[1]);
          v11 = *(&cf[0] + 1);
          *(&cf[0] + 1) = 0;
          goto LABEL_14;
        }
      }

      else
      {
        OUTLINED_FUNCTION_111();
        v6 = FigSignalErrorAtGM();
      }
    }
  }

  if (*(&cf[0] + 1))
  {
    CFRelease(*(&cf[0] + 1));
  }

  v11 = 0;
LABEL_14:
  v45 = a1 + 656;
  v47 = a2;
  if (*&cf[1])
  {
    CFRelease(*&cf[1]);
  }

  if (v6)
  {
    LODWORD(v50.value) = 0;
    LOBYTE(start.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v39 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_28_1(v39))
    {
      LODWORD(theArray.start.value) = 136315906;
      *(&theArray.start.value + 4) = "faq_setAudioCurves";
      LOWORD(theArray.start.flags) = 2048;
      *(&theArray.start.flags + 2) = a1;
      HIWORD(theArray.start.epoch) = 2082;
      theArray.duration.value = a1 + 800;
      LOWORD(theArray.duration.timescale) = 1024;
      *(&theArray.duration.timescale + 2) = a2;
      OUTLINED_FUNCTION_36();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_417();
    if (!v11)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v44 = FigCFDictionaryGetCount();
    if (v44 >= 1)
    {
      FigSimpleMutexLock();
      if (!*(a1 + 16))
      {
        v12 = CFArrayGetCount(*(a1 + 176));
        if (v12 >= 1)
        {
          v13 = v12;
          v14 = 0;
          v43 = a1 + 528;
          do
          {
            if (*(a1 + 16))
            {
              ValueAtIndex = 0;
            }

            else
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), v14);
            }

            memset(&theArray, 0, sizeof(theArray));
            if (ValueAtIndex[496])
            {
              OUTLINED_FUNCTION_97_2();
              if (v21)
              {
                v22 = v19;
              }

              else
              {
                v22 = v20;
              }

              if (*(a1 + 236))
              {
                v23 = *(a1 + 232);
                v21 = v23 == 0.0;
                v19 = v23;
                if (v21)
                {
                  v19 = 1.0;
                }
              }

              v24 = ValueAtIndex + 484;
              if (v22 / v19 >= 0.0)
              {
                context = *v43;
                *&cf[0] = *(v43 + 16);
                *&v50.value = *v24;
                v50.epoch = *(ValueAtIndex + 500);
                CMTimeRangeFromTimeToTime(&theArray, &context, &v50);
              }

              else
              {
                v50 = *v43;
                *&start.value = *v24;
                start.epoch = *(ValueAtIndex + 500);
                CMTimeRangeFromTimeToTime(&context, &start, &v50);
                *&theArray.start.value = context;
                *&theArray.start.epoch = cf[0];
                *&theArray.duration.timescale = cf[1];
              }

              v25 = OUTLINED_FUNCTION_57_2();
              subaq_scheduleVolumeCurvesForMediaTimeRange(v25, v26, v5, v27, v46, 1);
              subaq_scheduleCinematicForMediaTimeRange(a1, ValueAtIndex, v5, v28, v29, v30, v31, v32, v40, v41, v42, v43, SBYTE2(v43), BYTE3(v43), HIDWORD(v43));
              v33 = OUTLINED_FUNCTION_57_2();
              subaq_scheduleAudioProcessingUnitForMediaTimeRange(v33, v34, v5, v35, v47, 1u, v11);
            }

            else
            {
              LODWORD(start.value) = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              value = start.value;
              if (os_log_type_enabled(v16, type))
              {
                v18 = value;
              }

              else
              {
                v18 = value & 0xFFFFFFFE;
              }

              if (v18)
              {
                LODWORD(v50.value) = 136315906;
                *(&v50.value + 4) = "faq_setAudioCurves";
                LOWORD(v50.flags) = 2048;
                *(&v50.flags + 2) = a1;
                HIWORD(v50.epoch) = 2048;
                v51 = ValueAtIndex;
                v52 = 2082;
                v53 = a1 + 800;
                OUTLINED_FUNCTION_90_1();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            ++v14;
          }

          while (v13 != v14);
        }
      }
    }

    v36 = *(v45 + 8 * v47);
    *(v45 + 8 * v47) = v5;
    CFRetain(v5);
    if (v36)
    {
      CFRelease(v36);
    }

    if (v44 >= 1)
    {
      FigSimpleMutexUnlock();
    }

    v6 = 0;
    if (!v11)
    {
      goto LABEL_49;
    }
  }

  CFRelease(v11);
LABEL_49:
  CFRelease(v5);
  return v6;
}

CFIndex faq_updateRate2Enable(CFIndex result)
{
  if (*(result + 680))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(result + 788) != 0.0;
  }

  v7 = v1;
  if (!*(result + 16))
  {
    result = CFArrayGetCount(*(result + 176));
    if (result >= 1)
    {
      v2 = result;
      for (i = 0; i != v2; ++i)
      {
        v4 = OUTLINED_FUNCTION_71_1();
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
        result = FigAudioQueueTimingShimSetProperty(ValueAtIndex[5], 0x71737232u, &v7, 4u);
      }
    }
  }

  return result;
}

uint64_t faq_connectToOfflineMixer(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 702) || !*(a1 + 720))
  {
    return 0;
  }

  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    OUTLINED_FUNCTION_239();
    v2 = FigSignalErrorAtGM();
    if (v2)
    {
      return v2;
    }

    goto LABEL_6;
  }

  v6 = v5;
  FigAudioQueueTimingShimGetAudioQueue(*(a2 + 40));
  v2 = FigAudioQueueOfflineMixerConnectAudioQueue(v6, a1);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  FigAudioQueueOfflineMixerGetOutputASBD(v6, v8);
  *(a1 + 648) = *v8;
  CFRelease(v6);
  if (!v2)
  {
LABEL_6:
    *(a2 + 702) = 1;
  }

  return v2;
}

uint64_t faq_setPropertyOnAllSubAudioQueues(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_471();
  v6 = v5;
  if (CFArrayGetCount(*(v5 + 176)) < 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_417_0();
  while (1)
  {
    v7 = *(v6 + 16) ? 0 : CFArrayGetValueAtIndex(*(v6 + 176), v4);
    result = subaq_setProperty(v6, v7, v2, v1);
    if (result)
    {
      break;
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t faq_addAudioProcessingTapListeners(uint64_t a1)
{
  if (!*(a1 + 744))
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_51_2();
  result = FigNotificationCenterAddWeakListener();
  if (!result)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_51_2();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_51_2();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

const void *faq_GetLastSubAudioQueue(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_67_2();
  if (v2)
  {
    return 0;
  }

  Count = CFArrayGetCount(*(v1 + 176));
  if (*(v1 + 16))
  {
    return 0;
  }

  v4 = Count - 1;
  v5 = *(v1 + 176);

  return CFArrayGetValueAtIndex(v5, v4);
}

void faq_sourceDataBecameReady()
{
  if (FigCFWeakReferenceHolderCopyReferencedObject())
  {
    OUTLINED_FUNCTION_67_2();
    if (!v1)
    {
      FigSemaphoreSignal();
    }

    CFRelease(v0);
  }
}

void faq_sourceEndOfDataReached()
{
  if (FigCFWeakReferenceHolderCopyReferencedObject())
  {
    OUTLINED_FUNCTION_67_2();
    if (!v1)
    {
      CFRetain(v0);
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_async_f(global_queue, v0, faq_deferredAudioQueueEndOfDataReached);
      FigSemaphoreSignal();
    }

    CFRelease(v0);
  }
}

uint64_t faq_inhibitOutputUntil(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  FigSimpleMutexLock();
  if (!*(a2 + 16))
  {
    v8 = *(a2 + 104);
    if (v8)
    {
      CFRelease(v8);
      *(a2 + 104) = 0;
    }

    if (a5)
    {
      Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6960580]);
      if (Value)
      {
        *(a2 + 104) = Value;
        CFRetain(Value);
      }
    }

    faq_reset(a2, v7);
  }

  return FigSimpleMutexUnlock();
}

uint64_t subaq_setupForDecode(uint64_t a1, CMFormatDescriptionRef desc)
{
  ptr = 0;
  v9 = 0;
  v7 = 0;
  CMFormatDescriptionGetMediaSubType(desc);
  if (!MEMORY[0x19A8D0E00](a1 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_67_2();
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    if (v2[34])
    {
      FigAudioFormatDescriptionGetBestDecodableFormatAndChannelLayoutForRenderingPreferences();
    }

    else
    {
      CMAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout();
    }

    OUTLINED_FUNCTION_239();
    v6 = FigSignalErrorAtGM();
  }

  CFRelease(v2);
  return v6;
}

void subaq_deferredPerformStartupSync(const void *a1)
{
  if (FigCFWeakReferenceHolderCopyReferencedObject())
  {
    OUTLINED_FUNCTION_76_2();
    if (v4)
    {
      OUTLINED_FUNCTION_56_2();
      if (!v5)
      {
        v6 = OUTLINED_FUNCTION_171();
        subaq_performStartupSync(v6);
      }

      CFRelease(v1);
    }

    else
    {
      v2 = v1;
    }

    CFRelease(v2);
  }

  CFRelease(a1);
}

void fsaq_Finalize(uint64_t a1)
{
  v2 = MEMORY[0x19A8D0E00](a1 + 16);
  FigReadWriteLockLockForWrite();
  CFSetRemoveValue(qword_1ED4CA550, a1);
  FigReadWriteLockUnlockForWrite();
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_298();
    faq_disconnectFromOfflineMixer(v3, v4);
  }

  v5 = *(a1 + 736);
  if (v5)
  {
    dispatch_source_cancel(v5);
    if (*(a1 + 744))
    {
      v6 = *(a1 + 728);
      if (v6 != dispatch_get_current_queue())
      {
        dispatch_sync_f(v6, 0, subaq_noop);
      }
    }

    dispatch_release(*(a1 + 736));
    *(a1 + 736) = 0;
    v7 = *(a1 + 24);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  v8 = *(a1 + 728);
  if (v8)
  {
    dispatch_release(v8);
    *(a1 + 728) = 0;
  }

  v9 = *(a1 + 768);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 768) = 0;
  }

  v10 = *(a1 + 776);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 776) = 0;
  }

  if (*(a1 + 40))
  {
    v11 = *(a1 + 32);
    FigCFWeakReferenceTableRemoveValue();
    v12 = OUTLINED_FUNCTION_5_13();
    v14 = v13;
    FigAudioQueueTimingShimRemovePropertyListener(v12, 0x71637665u, v13, v11);
    FigAudioQueueTimingShimRemovePropertyListener(*(a1 + 40), 0x61747072u, v14, v11);
    OUTLINED_FUNCTION_37_2();
    FigAudioQueueTimingShimRemovePropertyListener(v15, 0x6171726Eu, v16, v11);
    if (!v2)
    {
      goto LABEL_20;
    }

    *(v2 + 384) = 0;
    *(v2 + 400) = 0;
    v17 = *(v2 + 408);
    if (v17)
    {
      CFRelease(v17);
      *(v2 + 408) = 0;
    }

    if (*(v2 + 72))
    {
LABEL_20:
      OUTLINED_FUNCTION_0_25();
      FigAudioQueueTimingShimRemovePropertyListener(v18, 0x666C7368u, v19, v11);
    }

    v20 = OUTLINED_FUNCTION_5_13();
    v22 = v21;
    FigAudioQueueTimingShimRemovePropertyListener(v20, 0x71646C73u, v21, v11);
    FigAudioQueueTimingShimRemovePropertyListener(*(a1 + 40), 0x6864666Du, v22, v11);
    if (!v2 || (*(v2 + 49) & 2) == 0)
    {
      v23 = OUTLINED_FUNCTION_5_13();
      v25 = v24;
      FigAudioQueueTimingShimRemovePropertyListener(v23, 0x72746F72u, v24, v11);
      FigAudioQueueTimingShimRemovePropertyListener(*(a1 + 40), 0x69737470u, v25, v11);
    }

    FigReadWriteLockLockForWrite();
    FigReadWriteLockUnlockForWrite();
    FigAudioQueueTimingShimStop(*(a1 + 40), 1u);
    v26 = 0;
    v27 = a1 + 344;
    do
    {
      v28 = *(v27 + v26);
      if (v28)
      {
        FigAudioQueueTimingShimFreeBuffer(*(a1 + 40), v28);
        *(v27 + v26) = 0;
      }

      v26 += 8;
    }

    while (v26 != 64);
    v29 = (a1 + 160);
    v30 = 8;
    do
    {
      if (*v29)
      {
        v31 = *(v29 - 2);
        if (v31)
        {
          CFRelease(v31);
          *(v29 - 2) = 0;
        }

        v32 = *(v29 - 1);
        if (v32)
        {
          CFRelease(v32);
          *(v29 - 1) = 0;
        }

        *v29 = 0;
      }

      v29 += 24;
      --v30;
    }

    while (v30);
    if (*(a1 + 648))
    {
      v33 = (a1 + 648);
      if (*(*(CMBaseObjectGetVTable() + 16) + 24))
      {
        v34 = OUTLINED_FUNCTION_184();
        v35(v34);
      }

      v36 = *(a1 + 640);
      if (v36)
      {
        CFRelease(v36);
        *(a1 + 640) = 0;
      }
    }

    else
    {
      if (!*(a1 + 664))
      {
        goto LABEL_49;
      }

      FigAudioQueueTimingShimGetAudioQueue(*(a1 + 40));
      OUTLINED_FUNCTION_411();
      if (*(*(CMBaseObjectGetVTable() + 16) + 72))
      {
        v37 = OUTLINED_FUNCTION_184();
        v38(v37);
      }

      v33 = (a1 + 640);
      v39 = *(a1 + 664);
      if (v39)
      {
        CFRelease(v39);
        *(a1 + 664) = 0;
      }

      if (!*v33)
      {
        goto LABEL_49;
      }

      CFRelease(*v33);
    }

    *v33 = 0;
LABEL_49:
    if (dword_1EAF16C30)
    {
      OUTLINED_FUNCTION_25_3();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v48 = OUTLINED_FUNCTION_116_0(os_log_and_send_and_compose_flags_and_os_log_type, v41, v42, v43, v44, v45, v46, v47, v54, v55, v56, v57, SBYTE2(v57), BYTE3(v57), SHIDWORD(v57));
      if (OUTLINED_FUNCTION_109_0(v48))
      {
        OUTLINED_FUNCTION_91_1();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_9_6();
        OUTLINED_FUNCTION_456();
        OUTLINED_FUNCTION_329_0();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524();
    }

    FigAudioQueueTimingShimDispose(*(a1 + 40), 1u);
    *(a1 + 40) = 0;
    CFRelease(*(a1 + 24));
  }

  v49 = *(a1 + 624);
  if (v49)
  {
    CFRelease(v49);
    *(a1 + 624) = 0;
  }

  if (*(a1 + 136))
  {
    FigSimpleMutexDestroy();
    *(a1 + 136) = 0;
  }

  if (*(a1 + 336))
  {
    FigSimpleMutexDestroy();
    *(a1 + 336) = 0;
  }

  if (*(a1 + 584))
  {
    FigSimpleMutexDestroy();
    *(a1 + 584) = 0;
  }

  if (*(a1 + 704))
  {
    FigReadWriteLockDestroy();
    *(a1 + 704) = 0;
  }

  v50 = *(a1 + 56);
  if (v50)
  {
    CFRelease(v50);
    *(a1 + 56) = 0;
  }

  if (*(a1 + 72))
  {
    v51 = CFGetAllocator(a1);
    CFAllocatorDeallocate(v51, *(a1 + 64));
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  if (*(a1 + 96))
  {
    v52 = CFGetAllocator(a1);
    CFAllocatorDeallocate(v52, *(a1 + 80));
    *(a1 + 80) = 0;
    *(a1 + 96) = 0;
  }

  FigCFWeakReferenceStore();
  v53 = *(a1 + 24);
  if (v53)
  {
    CFRelease(v53);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void subaq_deferringAQPropertyListenerHandler(uint64_t a1, uint64_t a2, int a3)
{
  v5 = FigCFWeakReferenceTableCopyValue();
  if (v5)
  {
    v6 = v5;
    if (MEMORY[0x19A8D0E00](v5 + 16))
    {
      OUTLINED_FUNCTION_77_1();
      if (!v7 && subaq_lockListenerBarrierForValidSubAQ(v6))
      {
        v8 = OUTLINED_FUNCTION_74_2();
        if (v8)
        {
          v9 = v8;
          *v8 = CFRetain(v3);
          v9[1] = CFRetain(v6);
          *(v9 + 4) = a3;
          dispatch_async_f(v3[5], v9, subaq_deferredAQPropertyListenerHandler);
        }

        FigReadWriteLockUnlockForRead();
      }

      CFRelease(v3);
    }

    CFRelease(v6);
  }
}

void subaq_startSubAudioQueue(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_77_1();
    if (!v3)
    {
      *(v2 + 594) = 1;
      *(v2 + 600) = 0;
      faq_enqueueSourceData(v1, 0);
      if (((*(v1 + 48) & 2) != 0 || (*(v1 + 640) & 2) != 0) && (v4 = OUTLINED_FUNCTION_177(), faq_isSubAudioQueueInList(v4)))
      {
        v5 = OUTLINED_FUNCTION_177();
        if (!subaq_prepareForStart(v5))
        {
          v6 = OUTLINED_FUNCTION_177();

          subaq_startAudioQueueIfReady(v6);
        }
      }

      else
      {
        OUTLINED_FUNCTION_239();

        FigSignalErrorAtGM();
      }
    }
  }
}

void faq_wakeupOfflineMixer(uint64_t a1)
{
  if (*(a1 + 720))
  {
    v1 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v1)
    {
      v2 = v1;
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_75_1();

      CFRelease(v2);
    }
  }
}

uint64_t faq_isSubAudioQueueInList(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_77_1();
    if (v3)
    {
      return 0;
    }

    v4 = v2;
    Count = CFArrayGetCount(*(v1 + 176));
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        v8 = *(v1 + 16) ? 0 : CFArrayGetValueAtIndex(*(v1 + 176), v7);
        if (v8 == v4)
        {
          break;
        }

        if (v6 == ++v7)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

void subaq_startListener(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_77_1();
      if (!v4)
      {
        CFRetain(*(a2 + 24));
        v5 = *(v2 + 32);
        v6 = *(a2 + 24);

        dispatch_async_f(v5, v6, subaq_startListenerInternal);
      }
    }
  }
}

void subaq_startListenerInternal(const void *a1)
{
  if (FigCFWeakReferenceHolderCopyReferencedObject())
  {
    OUTLINED_FUNCTION_76_2();
    if (v4)
    {
      OUTLINED_FUNCTION_104_1();
      if (*(v2 + 16))
      {
        goto LABEL_20;
      }

      *(v1 + 745) = 1;
      v5 = *(v1 + 748);
      if (v5 > 0.0)
      {
        FigAudioQueueTimingShimSetParameter(*(v1 + 40), 4u, v5);
        FigAudioQueueTimingShimSetParameter(*(v1 + 40), 1u, *(v1 + 752));
        *(v1 + 748) = 0;
        *(v2 + 200) = *(v1 + 752);
        *(v2 + 204) = 1;
      }

      v6 = *(v1 + 756);
      if (v6 > 0.0)
      {
        FigAudioQueueTimingShimSetParameter(*(v1 + 40), 6u, v6);
        FigAudioQueueTimingShimSetParameter(*(v1 + 40), 5u, *(v1 + 760));
        *(v1 + 756) = 0;
        *(v2 + 208) = *(v1 + 760);
        *(v2 + 212) = 1;
      }

      if ((*(v2 + 48) & 2) != 0)
      {
LABEL_20:
        FigSimpleMutexUnlock();
      }

      else
      {
        FigSimpleMutexUnlock();
        if (*(v1 + 608))
        {
          OUTLINED_FUNCTION_106(MEMORY[0x1E6960CC0]);
          OUTLINED_FUNCTION_171();
          subaq_getAudioQueueLatencyFigTime();
          *v15 = *&v15[32];
          Seconds = CMTimeGetSeconds(v15);
          v8 = 1.0;
          if (*(v2 + 236))
          {
            v9 = *(v2 + 232);
            v10 = v9 == 0.0;
            v8 = v9;
            if (v10)
            {
              v8 = 1.0;
            }
          }

          if (Seconds * v8 <= 1.0)
          {
            v14 = OUTLINED_FUNCTION_171();
            subaq_performStartupSync(v14);
          }

          else
          {
            v11 = Seconds + -1.0 / v8;
            CFRetain(*(v1 + 24));
            *(v1 + 744) = 1;
            dispatch_time(0, (v11 * 1000000000.0));
            v12 = OUTLINED_FUNCTION_577();
            dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
          }
        }

        *(v1 + 48) = 1;
        *(v1 + 50) = 1;
        CFRetain(*(v1 + 24));
        dispatch_async_f(*(v2 + 32), *(v1 + 24), subaq_stopAudioQueueIfObsolete);
      }

      CFRelease(v2);
    }

    CFRelease(v1);
  }

  CFRelease(a1);
}

void subaq_performStartupSync(uint64_t a1)
{
  v222 = *MEMORY[0x1E69E9840];
  *v203 = 0u;
  *v204 = 0u;
  *v201 = 0u;
  v202 = 0u;
  v199 = **&MEMORY[0x1E6960C70];
  v197 = v199;
  if (a1)
  {
    OUTLINED_FUNCTION_67_2();
    if (!v6)
    {
      if (*(v1 + 576))
      {
        v7 = v3;
        v181 = v4;
        *v183 = v5;
        v8 = FigAudioQueueTimingShimWaitForStartup(*(v3 + 40));
        HIDWORD(v206) = v8;
        if (v8 == -12948)
        {
          OUTLINED_FUNCTION_4_18();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v17 = OUTLINED_FUNCTION_40_2(os_log_and_send_and_compose_flags_and_os_log_type, v10, v11, v12, v13, v14, v15, v16, v169, v170, v171, v172, v176, v181, v183[0], v183[1], v184, v187, v189, v191, *(&v191 + 1), v192, hostTime[0], hostTime[1], v194, *(&v194 + 1), v195[0], v195[1], v196, *(&v196 + 1), v197.value, *&v197.timescale, v197.epoch, v198, v199.value, *&v199.timescale, v199.epoch, v200, v201[0], v201[1], v202, *(&v202 + 1), v203[0], v203[1], v204[0], v204[1], v205, v206, v207, v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, v210.value, *&v210.timescale, v210.epoch, v211.value, *&v211.timescale, v211.epoch, v212.value);
          if (OUTLINED_FUNCTION_109_0(v17))
          {
            OUTLINED_FUNCTION_87_0();
            OUTLINED_FUNCTION_17_6();
            OUTLINED_FUNCTION_18_3();
            OUTLINED_FUNCTION_82_2();
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_524();
          v8 = HIDWORD(v206);
        }

        if (v8)
        {
          OUTLINED_FUNCTION_4_18();
          v153 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_60_2(v153, v154, v155, v156, v157, v158, v159, v160, v169, v170, v171, v172, v176, v181, v183[0], v183[1], v184, v187, v189, v191, *(&v191 + 1), v192, hostTime[0], hostTime[1], v194, *(&v194 + 1), v195[0], v195[1], v196, *(&v196 + 1), v197.value, *&v197.timescale, v197.epoch, v198, v199.value, *&v199.timescale, v199.epoch, v200, v201[0], v201[1], v202, *(&v202 + 1), v203[0], v203[1], v204[0], v204[1], v205, v206, v207, v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, v210.value, *&v210.timescale, v210.epoch, v211.value, *&v211.timescale, v211.epoch, v212.value);
          OUTLINED_FUNCTION_40();
          if (v2)
          {
            v182 = *(v7 + 40);
            if (v206 < 0)
            {
              v161 = OUTLINED_FUNCTION_105_1();
            }

            else
            {
              v161 = OUTLINED_FUNCTION_44_3();
            }

            if (v161)
            {
              v162 = HIBYTE(HIDWORD(v206));
            }

            else
            {
              v162 = 46;
            }

            v180 = v162;
            if (BYTE6(v206) > 0x7Fu)
            {
              v163 = OUTLINED_FUNCTION_105_1();
            }

            else
            {
              v163 = OUTLINED_FUNCTION_44_3();
            }

            if (v163)
            {
              v164 = BYTE6(v206);
            }

            else
            {
              v164 = 46;
            }

            v175 = v164;
            if (BYTE5(v206) > 0x7Fu)
            {
              v165 = OUTLINED_FUNCTION_105_1();
            }

            else
            {
              v165 = OUTLINED_FUNCTION_44_3();
            }

            if (v165)
            {
              v166 = BYTE5(v206);
            }

            else
            {
              v166 = 46;
            }

            if (BYTE4(v206) > 0x7Fu)
            {
              v167 = OUTLINED_FUNCTION_105_1();
            }

            else
            {
              v167 = OUTLINED_FUNCTION_44_3();
            }

            if (v167)
            {
              v168 = BYTE4(v206);
            }

            else
            {
              v168 = 46;
            }

            LODWORD(lhs.value) = 136317442;
            *(&lhs.value + 4) = "subaq_performStartupSync";
            LOWORD(lhs.flags) = 2048;
            *(&lhs.flags + 2) = v1;
            HIWORD(lhs.epoch) = 2048;
            v215 = v7;
            v216 = 2048;
            v217 = v182;
            v218 = 2082;
            *v219 = v1 + 800;
            *&v219[8] = 1024;
            *&v219[10] = HIDWORD(v206);
            *&v219[14] = 1024;
            *&v219[16] = v180;
            *&v219[20] = 1024;
            *&v219[22] = v175;
            *&v219[26] = 1024;
            *&v219[28] = v166;
            *&v219[32] = 1024;
            *&v219[34] = v168;
            OUTLINED_FUNCTION_17_6();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_414();
        }

        else
        {
          LODWORD(v204[1]) = 3;
          *hostTime = 0u;
          v194 = 0u;
          *v195 = 0u;
          v196 = 0u;
          FigAudioQueueTimingShimGetCurrentTime(*(v7 + 40), 0, 1, v201, 0, hostTime);
          HIDWORD(v206) = v18;
          v19 = MEMORY[0x1E6960CC0];
          if (v18)
          {
            LODWORD(v204[1]) = 0;
            OUTLINED_FUNCTION_4_18();
            v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v28 = OUTLINED_FUNCTION_40_2(v20, v21, v22, v23, v24, v25, v26, v27, v169, v170, v171, v172, v176, v181, v183[0], v183[1], v184, v187, v189, v191, *(&v191 + 1), v192, hostTime[0], hostTime[1], v194, *(&v194 + 1), v195[0], v195[1], v196, *(&v196 + 1), v197.value, *&v197.timescale, v197.epoch, v198, v199.value, *&v199.timescale, v199.epoch, v200, v201[0], v201[1], v202, *(&v202 + 1), v203[0], v203[1], v204[0], v204[1], v205, v206, v207, v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, v210.value, *&v210.timescale, v210.epoch, v211.value, *&v211.timescale, v211.epoch, v212.value);
            if (OUTLINED_FUNCTION_109_0(v28))
            {
              OUTLINED_FUNCTION_87_0();
              LOWORD(lhs.flags) = 2048;
              *(&lhs.flags + 2) = v1;
              HIWORD(lhs.epoch) = 2048;
              v215 = v7;
              v216 = 2082;
              v217 = v29;
              v218 = 1024;
              *v219 = v30;
              *&v219[4] = 1040;
              *&v219[6] = 4;
              *&v219[10] = 2080;
              *&v219[12] = &v206 + 4;
              OUTLINED_FUNCTION_17_6();
              OUTLINED_FUNCTION_18_3();
              OUTLINED_FUNCTION_82_2();
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_524();
            if (HIDWORD(v206))
            {
              goto LABEL_14;
            }
          }

          if ((v204[1] & 1) == 0)
          {
LABEL_14:
            OUTLINED_FUNCTION_4_18();
            v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v39 = OUTLINED_FUNCTION_40_2(v31, v32, v33, v34, v35, v36, v37, v38, v169, v170, v171, v172, v176, v181, v183[0], v183[1], v184, v187, v189, v191, *(&v191 + 1), v192, hostTime[0], hostTime[1], v194, *(&v194 + 1), v195[0], v195[1], v196, *(&v196 + 1), v197.value, *&v197.timescale, v197.epoch, v198, v199.value, *&v199.timescale, v199.epoch, v200, v201[0], v201[1], v202, *(&v202 + 1), v203[0], v203[1], v204[0], v204[1], v205, v206, v207, v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, v210.value, *&v210.timescale, v210.epoch, v211.value, *&v211.timescale, v211.epoch, v212.value);
            if (OUTLINED_FUNCTION_109_0(v39))
            {
              OUTLINED_FUNCTION_87_0();
              LOWORD(lhs.flags) = 2048;
              *(&lhs.flags + 2) = v1;
              HIWORD(lhs.epoch) = 2048;
              OUTLINED_FUNCTION_28_5();
              v217 = v40;
              OUTLINED_FUNCTION_17_6();
              OUTLINED_FUNCTION_18_3();
              OUTLINED_FUNCTION_82_2();
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_524();
            v199 = *v19;
          }

          else
          {
            v41 = OUTLINED_FUNCTION_88_2(*v201);
            CMTimeMake(&v199, v41, v42);
          }

          if (!HIDWORD(v206) && (v204[1] & 2) != 0)
          {
            v85 = FigHostTimeToNanoseconds();
            CMTimeMake(&v197, v85, 1000000000);
          }

          else
          {
            OUTLINED_FUNCTION_4_18();
            v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v51 = OUTLINED_FUNCTION_40_2(v43, v44, v45, v46, v47, v48, v49, v50, v169, v170, v171, v172, v176, v181, v183[0], v183[1], v184, v187, v189, v191, *(&v191 + 1), v192, hostTime[0], hostTime[1], v194, *(&v194 + 1), v195[0], v195[1], v196, *(&v196 + 1), v197.value, *&v197.timescale, v197.epoch, v198, v199.value, *&v199.timescale, v199.epoch, v200, v201[0], v201[1], v202, *(&v202 + 1), v203[0], v203[1], v204[0], v204[1], v205, v206, v207, v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, v210.value, *&v210.timescale, v210.epoch, v211.value, *&v211.timescale, v211.epoch, v212.value);
            if (OUTLINED_FUNCTION_109_0(v51))
            {
              OUTLINED_FUNCTION_87_0();
              LOWORD(lhs.flags) = 2048;
              *(&lhs.flags + 2) = v1;
              HIWORD(lhs.epoch) = 2048;
              OUTLINED_FUNCTION_28_5();
              v217 = v52;
              OUTLINED_FUNCTION_17_6();
              OUTLINED_FUNCTION_18_3();
              OUTLINED_FUNCTION_82_2();
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_524();
            HostTimeClock = CMClockGetHostTimeClock();
            CMClockGetTime(&time, HostTimeClock);
            v197 = time;
          }

          if (dword_1EAF16C30)
          {
            OUTLINED_FUNCTION_4_18();
            v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            OUTLINED_FUNCTION_60_2(v54, v55, v56, v57, v58, v59, v60, v61, v169, v170, v171, v172, v176, v181, v183[0], v183[1], v184, v187, v189, v191, *(&v191 + 1), v192, hostTime[0], hostTime[1], v194, *(&v194 + 1), v195[0], v195[1], v196, *(&v196 + 1), v197.value, *&v197.timescale, v197.epoch, v198, v199.value, *&v199.timescale, v199.epoch, v200, v201[0], v201[1], v202, *(&v202 + 1), v203[0], v203[1], v204[0], v204[1], v205, v206, v207, v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, v210.value, *&v210.timescale, v210.epoch, v211.value, *&v211.timescale, v211.epoch, v212.value);
            OUTLINED_FUNCTION_40();
            if (v2)
            {
              v62 = DWORD2(v196);
              v63 = *hostTime;
              v64 = **(v7 + 64);
              v65 = *hostTime / v64;
              LODWORD(v177) = v64;
              v66 = hostTime[1];
              CMClockMakeHostTimeFromSystemUnits(&time, hostTime[1]);
              CMTimeGetSeconds(&time);
              LODWORD(lhs.value) = 136317442;
              OUTLINED_FUNCTION_83_1("subaq_performStartupSync");
              HIWORD(lhs.epoch) = v67;
              OUTLINED_FUNCTION_28_5();
              v217 = v1 + 800;
              v218 = 1024;
              *v219 = v62;
              *&v219[4] = v68;
              *&v219[6] = v63;
              *&v219[14] = v68;
              *&v219[16] = v65;
              *&v219[24] = 1024;
              *&v219[26] = v177;
              *&v219[30] = v68;
              *&v219[32] = v66;
              *v220 = v68;
              *&v220[2] = v69;
              OUTLINED_FUNCTION_17_6();
              OUTLINED_FUNCTION_18_3();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_414();
            if (dword_1EAF16C30)
            {
              OUTLINED_FUNCTION_4_18();
              v70 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              OUTLINED_FUNCTION_60_2(v70, v71, v72, v73, v74, v75, v76, v77, v169, v170, v171, v173, v177, v181, v183[0], v183[1], v185, v188, v190, v191, *(&v191 + 1), v192, hostTime[0], hostTime[1], v194, *(&v194 + 1), v195[0], v195[1], v196, *(&v196 + 1), v197.value, *&v197.timescale, v197.epoch, v198, v199.value, *&v199.timescale, v199.epoch, v200, v201[0], v201[1], v202, *(&v202 + 1), v203[0], v203[1], v204[0], v204[1], v205, v206, v207, v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, v210.value, *&v210.timescale, v210.epoch, v211.value, *&v211.timescale, v211.epoch, v212.value);
              OUTLINED_FUNCTION_40();
              if (v2)
              {
                v78 = v204[1];
                v178 = *v201;
                v79 = **(v7 + 64);
                v80 = *v201 / v79;
                v81 = v79;
                v82 = v201[1];
                CMClockMakeHostTimeFromSystemUnits(&time, v201[1]);
                CMTimeGetSeconds(&time);
                LODWORD(lhs.value) = 136317442;
                *(&lhs.value + 4) = "subaq_performStartupSync";
                LOWORD(lhs.flags) = 2048;
                *(&lhs.flags + 2) = v1;
                HIWORD(lhs.epoch) = 2048;
                OUTLINED_FUNCTION_28_5();
                v217 = v1 + 800;
                v218 = 1024;
                *v219 = v78;
                *&v219[4] = v83;
                *&v219[6] = v178;
                *&v219[14] = v83;
                *&v219[16] = v80;
                *&v219[24] = 1024;
                *&v219[26] = v81;
                *&v219[30] = v83;
                *&v219[32] = v82;
                *v220 = v83;
                *&v220[2] = v84;
                OUTLINED_FUNCTION_17_6();
                OUTLINED_FUNCTION_18_3();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_414();
            }
          }

          if ((*(v1 + 640) & 2) == 0)
          {
            memset(&v212, 0, sizeof(v212));
            lhs = v199;
            v211 = v197;
            rhs = *(v1 + 432);
            CMTimeSubtract(&time, &lhs, &rhs);
            lhs = v211;
            rhs = time;
            CMTimeSubtract(&v212, &lhs, &rhs);
            *&time.value = *&v212.value;
            OUTLINED_FUNCTION_34_4(v212.epoch);
            *(v1 + 592) = CMClockConvertHostTimeToSystemUnits(v86);
            *(v1 + 640) = 2;
          }

          FigSimpleMutexLock();
          v87 = *(v1 + 384);
          v88 = *(v1 + 392);
          v89 = *(v1 + 400);
          v90 = *(v1 + 408);
          *(v1 + 384) = 0u;
          *(v1 + 400) = 0u;
          FigSimpleMutexUnlock();
          if (v87 | v89)
          {
            v94 = v1 + 424;
            if (*(v1 + 236))
            {
              v100 = *(v1 + 232);
              v174 = (v1 + 416);
              v101 = *(v1 + 416);
              v96 = 1.0;
              if (v101 == 0.0)
              {
                v97 = 1.0;
              }

              else
              {
                v97 = v101;
              }

              v99 = v181;
              if (v100 != 0.0)
              {
                v96 = v100;
              }

              v98 = *v183;
            }

            else
            {
              v174 = (v1 + 416);
              v95 = *(v1 + 416);
              v96 = 1.0;
              if (v95 == 0.0)
              {
                v97 = 1.0;
              }

              else
              {
                v97 = v95;
              }

              v98 = *v183;
              v99 = v181;
            }

            v186 = v199;
            v191 = 0uLL;
            *&rhs.value = v98;
            rhs.epoch = v99;
            memset(&v212, 0, sizeof(v212));
            memset(&v211, 0, sizeof(v211));
            memset(&v210, 0, sizeof(v210));
            memset(&v209, 0, sizeof(v209));
            memset(&v208, 0, sizeof(v208));
            v192 = 0;
            OUTLINED_FUNCTION_298();
            subaq_getAudioQueueLatencyFigTime();
            v183[0] = v90;
            v179 = v1 + 424;
            if ((rhs.flags & 1) == 0)
            {
              OUTLINED_FUNCTION_72_2();
              v102 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v103 = os_log_type_enabled(v102, BYTE3(v207));
              if (OUTLINED_FUNCTION_28_1(v103))
              {
                LODWORD(lhs.value) = 136315138;
                *(&lhs.value + 4) = "faqTimelineWrangler_getMediaTimeInStartupSync";
                OUTLINED_FUNCTION_17_6();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_16();
              OUTLINED_FUNCTION_417();
              rhs = **&MEMORY[0x1E6960CC0];
              v94 = v1 + 424;
            }

            time = rhs;
            v104 = v97 / v96;
            CMTimeMultiplyByFloat64(&v212, &time, v96);
            time = v186;
            lhs = v212;
            CMTimeSubtract(&v211, &time, &lhs);
            time = v211;
            lhs = *(v1 + 432);
            CMTimeSubtract(&v210, &time, &lhs);
            faqTimelineWrangler_getAQTimePauseOffset(v94, &time);
            lhs = v210;
            CMTimeAdd(&v209, &lhs, &time);
            time = v209;
            lhs = *(v1 + 456);
            CMTimeAdd(&v208, &time, &lhs);
            if (dword_1EAF16C30)
            {
              OUTLINED_FUNCTION_72_2();
              v105 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v106 = HIDWORD(v207);
              v181 = v105;
              if (os_log_type_enabled(v105, BYTE3(v207)))
              {
                v107 = v106;
              }

              else
              {
                v107 = v106 & 0xFFFFFFFE;
              }

              if (v107)
              {
                v108 = *(v1 + 424);
                if (v108)
                {
                  v109 = (v108 + 800);
                }

                else
                {
                  v109 = "";
                }

                *&time.value = *&v212.value;
                OUTLINED_FUNCTION_34_4(v212.epoch);
                Seconds = CMTimeGetSeconds(v110);
                *&time.value = *&v211.value;
                OUTLINED_FUNCTION_34_4(v211.epoch);
                v113 = CMTimeGetSeconds(v112);
                *&time.value = *&v210.value;
                OUTLINED_FUNCTION_34_4(v210.epoch);
                v115 = CMTimeGetSeconds(v114);
                *&time.value = *&v209.value;
                OUTLINED_FUNCTION_34_4(v209.epoch);
                v117 = CMTimeGetSeconds(v116);
                *&time.value = *&v208.value;
                OUTLINED_FUNCTION_34_4(v208.epoch);
                CMTimeGetSeconds(v118);
                LODWORD(lhs.value) = 136317186;
                OUTLINED_FUNCTION_83_1("faqTimelineWrangler_getMediaTimeInStartupSync");
                HIWORD(lhs.epoch) = 2082;
                v215 = v109;
                v216 = v119;
                v217 = v1 + 424;
                v218 = v119;
                *v219 = Seconds;
                *&v219[8] = v119;
                *&v219[10] = v113;
                *&v219[18] = v119;
                *&v219[20] = v115;
                *&v219[28] = v119;
                *&v219[30] = v117;
                *&v219[38] = v119;
                *v220 = v120;
                OUTLINED_FUNCTION_17_6();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v90 = v183[0];
              v94 = v1 + 424;
            }

            time = v208;
            v121 = faqTimelineWrangler_convertAQTimeToMediaTime(v94, &time, &v191, v104);
            if (dword_1EAF16C30)
            {
              OUTLINED_FUNCTION_4_18();
              v129 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              value = rhs.value;
              if (os_log_type_enabled(v129, v212.value))
              {
                v131 = value;
              }

              else
              {
                v131 = value & 0xFFFFFFFE;
              }

              if (v131)
              {
                v181 = v129;
                *&time.value = *&v199.value;
                OUTLINED_FUNCTION_34_4(v199.epoch);
                v133 = CMTimeGetSeconds(v132);
                *&time.value = v191;
                OUTLINED_FUNCTION_34_4(v192);
                v135 = CMTimeGetSeconds(v134);
                *&time.value = *&v197.value;
                OUTLINED_FUNCTION_34_4(v197.epoch);
                CMTimeGetSeconds(v136);
                LODWORD(lhs.value) = 136316674;
                *(&lhs.value + 4) = "subaq_performStartupSync";
                LOWORD(lhs.flags) = 2048;
                *(&lhs.flags + 2) = v1;
                HIWORD(lhs.epoch) = 2048;
                OUTLINED_FUNCTION_28_5();
                v217 = v1 + 800;
                v218 = v137;
                *v219 = v133;
                *&v219[8] = v137;
                *&v219[10] = v135;
                *&v219[18] = v137;
                *&v219[20] = v138;
                OUTLINED_FUNCTION_17_6();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              v121 = OUTLINED_FUNCTION_417();
              v90 = v183[0];
            }

            if (*MEMORY[0x1E695FF58] == 1)
            {
              *&time.value = *&v199.value;
              OUTLINED_FUNCTION_34_4(v199.epoch);
              CMTimeGetSeconds(v139);
              *&time.value = v191;
              OUTLINED_FUNCTION_34_4(v192);
              CMTimeGetSeconds(v140);
              *&time.value = *&v197.value;
              OUTLINED_FUNCTION_34_4(v197.epoch);
              CMTimeGetSeconds(v141);
              v121 = kdebug_trace();
            }

            if (v87)
            {
              v142 = OUTLINED_FUNCTION_11_7(v121, v122, v123, v124, v125, v126, v127, v128, v169, v170, v171, v174, v179, v181, v183[0], v183[1], v186.value, *&v186.timescale, v186.epoch, v191, v192);
              (v87)(v88, 0, v142);
            }

            else if (v89)
            {
              if (v90)
              {
                v143 = FigCFWeakReferenceHolderCopyReferencedObject();
                if (v143)
                {
                  v151 = OUTLINED_FUNCTION_11_7(v143, v144, v145, v146, v147, v148, v149, v150, v169, v170, v171, v174, v179, v181, v183[0], v183[1], v186.value, *&v186.timescale, v186.epoch, v191, v192);
                  (v89)(v151);
                }

                FigDeferCFRelease();
                CFRelease(v90);
              }

              else
              {
                v152 = OUTLINED_FUNCTION_11_7(v121, v122, v123, v124, v125, v126, v127, v128, v169, v170, v171, v174, v179, v181, v183[0], v183[1], v186.value, *&v186.timescale, v186.epoch, v191, v192);
                (v89)(0, 0, v152);
                FigDeferCFRelease();
              }
            }
          }

          FigSimpleMutexLock();
          *(v7 + 48) = 1;
          if (*(v1 + 576))
          {
            *(v1 + 576) = 0;
            *(v1 + 73) = 1;
          }

          v91 = *(v1 + 577);
          if (*(v1 + 577))
          {
            *(v1 + 577) = 0;
          }

          FigSimpleMutexUnlock();
          FigSemaphoreSignal();
          v92 = *(v7 + 24);
          if (v92)
          {
            CFRetain(v92);
            v93 = *(v7 + 24);
          }

          else
          {
            v93 = 0;
          }

          dispatch_async_f(*(v1 + 32), v93, faq_startObsoleteAudioQueues);
          if (v91)
          {
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_75_1();
          }
        }
      }
    }
  }
}

void subaq_stopAudioQueueIfObsolete(const void *a1)
{
  if (FigCFWeakReferenceHolderCopyReferencedObject())
  {
    OUTLINED_FUNCTION_76_2();
    if (v4)
    {
      OUTLINED_FUNCTION_104_1();
      if (!v2[16] && (v5 = OUTLINED_FUNCTION_171(), faq_isSubAudioQueueObsolete(v5, v6)))
      {
        v7 = OUTLINED_FUNCTION_171();
        subaq_stopAudioQueue(v7, v8, 0);
        FigSimpleMutexUnlock();
        faq_wakeupOfflineMixer(v2);
      }

      else
      {
        FigSimpleMutexUnlock();
      }

      CFRelease(v2);
    }

    CFRelease(v1);
  }

  CFRelease(a1);
}

void faq_startObsoleteAudioQueues(const void *a1)
{
  if (FigCFWeakReferenceHolderCopyReferencedObject())
  {
    OUTLINED_FUNCTION_76_2();
    if (v6)
    {
      OUTLINED_FUNCTION_104_1();
      if (!*(v2 + 16) && CFArrayGetCount(*(v2 + 176)) >= 1)
      {
        OUTLINED_FUNCTION_417_0();
        do
        {
          if (*(v2 + 16))
          {
            ValueAtIndex = 0;
          }

          else
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 176), v4);
          }

          if (ValueAtIndex != v1 && !ValueAtIndex[701])
          {
            subaq_startSubAudioQueue(v2);
          }

          ++v4;
        }

        while (v3 != v4);
      }

      FigSimpleMutexUnlock();
      CFRelease(v1);
    }

    else
    {
      v2 = v1;
    }

    CFRelease(v2);
  }

  CFRelease(a1);
}

BOOL faq_isSubAudioQueueObsolete(CFArrayRef *ValueAtIndex, CFArrayRef *a2)
{
  if (ValueAtIndex)
  {
    if (*(ValueAtIndex + 16))
    {
      ValueAtIndex = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex[22], 0);
    }
  }

  if (ValueAtIndex == a2)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_177();
  return faq_isSubAudioQueueInList(v4) != 0;
}

void subaq_stopListenerInternal(const void *a1)
{
  if (FigCFWeakReferenceHolderCopyReferencedObject())
  {
    OUTLINED_FUNCTION_76_2();
    if (v4)
    {
      OUTLINED_FUNCTION_104_1();
      if (!v2[16])
      {
        v1[745] = 0;
        v5 = OUTLINED_FUNCTION_171();
        subaq_removeIfObsolete(v5, v6);
      }

      FigSimpleMutexUnlock();
      CFRelease(v2);
    }

    CFRelease(v1);
  }

  CFRelease(a1);
}

uint64_t subaq_removeIfObsolete(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  if (!*(a1 + 16))
  {
    v4 = OUTLINED_FUNCTION_298();
    if (faq_isSubAudioQueueObsolete(v4, v5))
    {
      if (a2)
      {
        if (!*(a1 + 16))
        {
          Count = CFArrayGetCount(*(a1 + 176));
          if (Count >= 1)
          {
            v7 = Count;
            v8 = 0;
            while (1)
            {
              if (*(a1 + 16))
              {
                ValueAtIndex = 0;
              }

              else
              {
                v9 = OUTLINED_FUNCTION_71_1();
                ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
              }

              if (ValueAtIndex == a2)
              {
                break;
              }

              if (v7 == ++v8)
              {
                goto LABEL_15;
              }
            }

            if (!*(a1 + 16))
            {
              v12 = OUTLINED_FUNCTION_71_1();
              CFArrayRemoveValueAtIndex(v12, v13);
            }
          }
        }
      }
    }
  }

LABEL_15:

  return FigSimpleMutexUnlock();
}

void subaq_outputBufferBecameReady(uint64_t a1, uint64_t a2, AudioQueueBuffer *a3)
{
  if (a3)
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v5)
    {
      v6 = v5;
      if (MEMORY[0x19A8D0E00](v5 + 16))
      {
        OUTLINED_FUNCTION_56_2();
        if (!v7)
        {
          mUserData = a3->mUserData;
          if (mUserData)
          {
            if (*(mUserData + 8))
            {
              CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterPostNotification();
              v9 = *(mUserData + 8);
              if (v9)
              {
                CFRelease(v9);
                *(mUserData + 8) = 0;
              }
            }

            v10 = *mUserData;
            if (*mUserData)
            {
              memset(&v16, 0, sizeof(v16));
              CMSampleBufferGetOutputDuration(&v16, v10);
              FigSimpleMutexLock();
              CMSampleBufferGetOutputPresentationTimeStamp(&lhs, *mUserData);
              rhs = v16;
              CMTimeAdd(&time, &lhs, &rhs);
              *(v6 + 508) = time;
              FigSimpleMutexUnlock();
              FigAtomicAdd32();
              v11 = *(v6 + 100);
              time = v16;
              CMTimeConvertScale(&v12, &time, v11, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
              FigAtomicAdd32();
              if (*mUserData)
              {
                CFRelease(*mUserData);
                *mUserData = 0;
              }
            }

            if (*(mUserData + 17))
            {
              subaq_returnAQBufferInfoPtr(v6, mUserData);
              FigAudioQueueTimingShimFreeBuffer(*(v6 + 40), a3);
            }

            else
            {
              a3->mAudioDataByteSize = 0;
              FigMemoryBarrier();
              a3->mUserData = 0;
              subaq_returnAQBufferInfoPtr(v6, mUserData);
            }

            FigSemaphoreSignal();
          }
        }

        CFRelease(v3);
      }

      CFRelease(v6);
    }
  }
}

uint64_t subaq_buildAudioProcssingUnits(uint64_t a1, __CFDictionary **a2)
{
  v3 = *(a1 + 688);
  if (!v3)
  {
    return 0;
  }

  Count = CFArrayGetCount(v3);
  v6 = Count;
  if ((Count & 1) == 0)
  {
    if (Count >= 1)
    {
      v7 = 0;
      v8 = *MEMORY[0x1E695E480];
      v9 = MEMORY[0x1E695E9D8];
      v10 = MEMORY[0x1E695E9E8];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 688), v7);
        v12 = v7 + 1;
        CFArrayGetValueAtIndex(*(a1 + 688), v7 + 1);
        if (FigCFDictionaryGetValueIfPresent())
        {
          if (FigCFDictionaryGetValueIfPresent())
          {
            CFDictionaryApplyFunction(0, subaq_audioProcessingUnitSetPropertyApplier, 0);
          }
        }

        else
        {
          if (*(a1 + 16) || CFArrayGetCount(*(a1 + 176)) < 1 || (*(a1 + 16) ? (v13 = 0) : (v13 = CFArrayGetValueAtIndex(*(a1 + 176), 0)), v13 == a2 || !FigCFDictionaryGetValueIfPresent()))
          {
            v21 = OUTLINED_FUNCTION_93_1();
            Copy = FigAudioProcessingUnitCreateWithOptions(v21, v22, v23, v24);
            if (Copy)
            {
              return Copy;
            }
          }

          else
          {
            v14 = OUTLINED_FUNCTION_93_1();
            Copy = FigAudioProcessingUnitCreateCopy(v14, v15, v16, v17, v18, v19);
            if (Copy)
            {
              return Copy;
            }
          }

          Mutable = a2[96];
          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(v8, 0, v9, v10);
            a2[96] = Mutable;
            if (!Mutable)
            {
              return FigSignalErrorAtGM();
            }
          }

          CFDictionarySetValue(Mutable, ValueAtIndex, 0);
        }

        v7 += 2;
        if (v12 + 1 >= v6)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  return FigSignalErrorAtGM();
}

uint64_t subaq_setCPECryptorPropertyOnAudioQueue(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_56_2();
  if (v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = *(v2 + 40);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v1 + 56);
  if (!v6)
  {
    return 0;
  }

  v24 = 1668310371;
  v25 = v6;
  v7 = FigAudioQueueTimingShimSetProperty(v5, 0x61637064u, &v24, 0xCu);
  v26[0] = v7;
  if (dword_1EAF16C30)
  {
    OUTLINED_FUNCTION_2_24();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v16 = OUTLINED_FUNCTION_19_4(os_log_and_send_and_compose_flags_and_os_log_type, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22, v23, SBYTE2(v23), BYTE3(v23), SHIDWORD(v23));
    if (OUTLINED_FUNCTION_115_1(v16))
    {
      v17 = *(v4 + 40);
      v18 = *(v1 + 56);
      v26[1] = 136317186;
      v27 = "subaq_setCPECryptorPropertyOnAudioQueue";
      v28 = 2048;
      v29 = v1;
      v30 = 2048;
      v31 = v4;
      v32 = 2082;
      v33 = v1 + 800;
      v34 = 2048;
      v35 = v17;
      v36 = 2112;
      v37 = v18;
      v38 = 1024;
      v39 = v7;
      v40 = 1040;
      v41 = 4;
      v42 = 2080;
      v43 = v26;
      OUTLINED_FUNCTION_36();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_612();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
    return v26[0];
  }

  return v7;
}

uint64_t subaq_setSweepFilterEnable(uint64_t result, uint64_t a2, int a3)
{
  v9 = a3 != 0;
  if (result)
  {
    OUTLINED_FUNCTION_77_1();
    if (v6)
    {
      return 0;
    }

    v7 = v5;
    result = FigAudioQueueTimingShimSetProperty(*(v4 + 40), 0x656E7366u, &v9, 4u);
    if (v7 && !result)
    {
      if (*(v3 + 704))
      {
        v8 = OUTLINED_FUNCTION_177();
        return subaq_setSweepFilterConfig(v8);
      }

      return 0;
    }
  }

  return result;
}

uint64_t subaq_ensureCinematicAudioEnabled(uint64_t result, uint64_t a2, int a3)
{
  if (!a3 && *(a2 + 784) && !*(a2 + 785))
  {
    v4 = result;
    v5 = 1;
    result = FigAudioQueueTimingShimSetProperty(*(a2 + 40), 0x715F6361u, &v5, 4u);
    if (!result)
    {
      *(v4 + 792) = 1;
      *(a2 + 785) = 1;
    }
  }

  return result;
}

uint64_t subaq_setSweepFilterConfig(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_77_1();
    if (v2)
    {
      return 0;
    }

    else
    {
      result = *(v1 + 704);
      if (result)
      {
        result = FigCFDictionaryGetFloat32IfPresent();
        if (!result)
        {
          result = FigCFDictionaryGetFloat32IfPresent();
          if (!result)
          {
            result = FigCFDictionaryGetFloat32IfPresent();
            if (!result)
            {
              v3 = OUTLINED_FUNCTION_41_2();
              return FigAudioQueueTimingShimSetProperty(v3, 0x73666367u, v4, 0xCu);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t faq_wakeupToDiscard(uint64_t a1)
{
  FigSimpleMutexLock();
  if (!*(a1 + 16) && (*(a1 + 73) || *(a1 + 576)))
  {
    os_retain(*(a1 + 776));
    voucher_adopt();
    FigSemaphoreSignal();
    v2 = voucher_adopt();
    os_release(v2);
  }

  return FigSimpleMutexUnlock();
}

uint64_t faq_initializeTapCompleted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  FigSimpleMutexLock();
  if (!*(a2 + 16))
  {
    PointerFromCFDictionary = MTAudioProcessingTapGetPointerFromCFDictionary(@"AQTapPointer", a5);
    MTAudioProcessingTapGetPointerFromCFDictionary(@"SubmixID", a5);
    if (PointerFromCFDictionary && *(a2 + 752))
    {
      OUTLINED_FUNCTION_25_3();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v16 = OUTLINED_FUNCTION_116_0(os_log_and_send_and_compose_flags_and_os_log_type, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25, v26, SBYTE2(v26), BYTE3(v26), SHIDWORD(v26));
      if (OUTLINED_FUNCTION_109_0(v16))
      {
        OUTLINED_FUNCTION_52_2();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_9_6();
        OUTLINED_FUNCTION_456();
        OUTLINED_FUNCTION_329_0();
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_524();
    }

    *(a2 + 752) = 1;
    if (!*(a2 + 16))
    {
      Count = CFArrayGetCount(*(a2 + 176));
      if (Count >= 1)
      {
        v18 = Count;
        for (i = 0; i != v18; ++i)
        {
          if (!*(a2 + 16))
          {
            v20 = OUTLINED_FUNCTION_71_1();
            CFArrayGetValueAtIndex(v20, v21);
          }

          subaq_startAudioQueueIfReady(a2);
        }
      }
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t faq_createSubmixTapCompleted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  FigSimpleMutexLock();
  if (!*(a2 + 16))
  {
    PointerFromCFDictionary = MTAudioProcessingTapGetPointerFromCFDictionary(@"SubmixID", a5);
    if (PointerFromCFDictionary)
    {
      if (!*(a2 + 16))
      {
        v8 = PointerFromCFDictionary;
        Count = CFArrayGetCount(*(a2 + 176));
        if (Count >= 1)
        {
          v10 = Count;
          v11 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 176), v11);
            if (ValueAtIndex[83] == v8)
            {
              break;
            }

            if (v10 == ++v11)
            {
              return FigSimpleMutexUnlock();
            }
          }

          v14 = ValueAtIndex;
          if (*(ValueAtIndex + 658))
          {
            OUTLINED_FUNCTION_25_3();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v25 = OUTLINED_FUNCTION_116_0(os_log_and_send_and_compose_flags_and_os_log_type, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, SBYTE2(v30), BYTE3(v30), SHIDWORD(v30));
            if (OUTLINED_FUNCTION_109_0(v25))
            {
              OUTLINED_FUNCTION_91_1();
              OUTLINED_FUNCTION_39();
              OUTLINED_FUNCTION_9_6();
              OUTLINED_FUNCTION_456();
              OUTLINED_FUNCTION_329_0();
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_524();
          }

          else
          {
            FigAudioQueueTimingShimGetAudioQueue(ValueAtIndex[5]);
            OUTLINED_FUNCTION_411();
            if (*(*(CMBaseObjectGetVTable() + 16) + 64))
            {
              v15 = OUTLINED_FUNCTION_184();
              v16(v15);
            }

            *(v14 + 658) = 1;
          }

          v26 = OUTLINED_FUNCTION_298();
          subaq_startAudioQueueIfReady(v26);
        }
      }
    }
  }

  return FigSimpleMutexUnlock();
}

void faq_scheduledWakeupRetainedToDiscard(_DWORD *a1)
{
  a1[19] = 0;
  faq_wakeupToDiscard(a1);

  CFRelease(a1);
}

uint64_t subaq_flushAudioQueue(uint64_t result, uint64_t a2)
{
  if (!*(result + 16))
  {
    v3 = result;
    result = subaq_doesAudioQueueHaveBuffersToFlush(a2);
    if (result && !*(v3 + 160))
    {
      result = FigAudioQueueTimingShimFlush(*(a2 + 40));
      if (!result)
      {
        lhs = *(a2 + 432);
        v4 = *(a2 + 456);
        result = CMTimeAdd(&v6, &lhs, &v4);
        *(a2 + 676) = v6;
        ++*(a2 + 672);
      }
    }

    *(a2 + 592) = 1;
  }

  return result;
}

CMTime *subaq_convertAQTimeToMediaTime@<X0>(CMTime *result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  *(a2 + 16) = *(v2 + 16);
  if (!LOBYTE(result->epoch))
  {
    OUTLINED_FUNCTION_97_2();
    v4 = OUTLINED_FUNCTION_55_3(v3);
    return faqTimelineWrangler_convertAQTimeToMediaTime(v4, v5, v6, v7);
  }

  return result;
}

CMTime *subaq_convertMediaTimeToAQTime@<X0>(CMTime *result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  *(a2 + 16) = *(v2 + 16);
  if (!LOBYTE(result->epoch))
  {
    OUTLINED_FUNCTION_97_2();
    v4 = OUTLINED_FUNCTION_55_3(v3);
    return faqTimelineWrangler_convertMediaTimeToAQTime(v4, v5, v6, v7);
  }

  return result;
}

uint64_t subaq_schedulePlayRate2ValueForTime(uint64_t a1, uint64_t a2, CMTime *a3, double a4)
{
  v16 = 21;
  v4 = a4;
  v15 = v4;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  if (!*(a2 + 40) || *(a1 + 16))
  {
    return 0;
  }

  v6 = *(a2 + 100);
  v8 = *a3;
  CMTimeConvertScale(&v9, &v8, v6, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  value = v9.value;
  LODWORD(v14) = 1;
  return FigAudioQueueTimingShimScheduleParameters(*(a2 + 40), &value, 1u, &v16, &v15);
}

void subaq_audioQueueStartupCompleted(const void *a1, int a2)
{
  if (FigCFWeakReferenceHolderCopyReferencedObject())
  {
    OUTLINED_FUNCTION_76_2();
    if (v6)
    {
      OUTLINED_FUNCTION_56_2();
      if (!v7)
      {
        if (subaq_lockListenerBarrierForValidSubAQ(v2))
        {
          v8 = OUTLINED_FUNCTION_74_2();
          *v8 = CFRetain(v3);
          v8[1] = CFRetain(v2);
          *(v8 + 4) = a2;
          dispatch_async_f(v3[4], v8, subaq_deferredAudioQueueStartupCompleted);
        }

        else
        {
          OUTLINED_FUNCTION_2_24();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v18 = OUTLINED_FUNCTION_19_4(os_log_and_send_and_compose_flags_and_os_log_type, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, v22, SBYTE2(v22), BYTE3(v22), SHIDWORD(v22));
          if (OUTLINED_FUNCTION_115_1(v18))
          {
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_36();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_612();
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_414();
        }
      }

      CFRelease(v2);
      v9 = v3;
    }

    else
    {
      v9 = v2;
    }

    CFRelease(v9);
  }

  CFRelease(a1);
}

uint64_t subaq_setProperty(uint64_t a1, uint64_t a2, CFTypeRef cf1, const __CFString *a4)
{
  deviceUID = a4;
  if (!a2)
  {
    return 4294954356;
  }

  if (!a1 || *(a1 + 16))
  {
    return 0;
  }

  if (!*(a2 + 40))
  {
    return 4294954356;
  }

  if (CFEqual(cf1, @"EQPreset"))
  {
    if (a4)
    {
      CFNumberGetTypeID();
      v8 = OUTLINED_FUNCTION_411();
      if (cf1 == CFGetTypeID(v8))
      {
        valuePtr = 0;
        CFNumberGetValue(a4, kCFNumberIntType, &valuePtr);
        if (!*(a1 + 16))
        {
          v9 = valuePtr;
          LODWORD(cf) = 0;
          v99 = 4;
          v100 = 0;
          if ((*(a1 + 48) & 4) == 0)
          {
            if (valuePtr == -1)
            {
              v10 = 0;
            }

            else
            {
              v10 = 1;
              LODWORD(cf) = 1;
            }

            OUTLINED_FUNCTION_80_1();
            Property = FigAudioQueueTimingShimGetProperty(v23, v24, v25, v26);
            if (!Property)
            {
              if (v10 == v100 || (OUTLINED_FUNCTION_80_1(), AQTap = FigAudioQueueTimingShimSetProperty(v27, v28, v29, v30), !AQTap) && cf)
              {
                AQTap = FigAudioQueueTimingShimSetParameter(*(a2 + 40), 7u, v9);
                if (AQTap)
                {
                  if (cf != v100)
                  {
                    OUTLINED_FUNCTION_80_1();
                    FigAudioQueueTimingShimSetProperty(v31, v32, v33, v34);
                  }
                }
              }

              return AQTap;
            }

            return Property;
          }
        }

        return 0;
      }
    }

    goto LABEL_17;
  }

  if (CFEqual(cf1, @"ClientName"))
  {
    if (a4)
    {
      CFStringGetTypeID();
      v11 = OUTLINED_FUNCTION_54_2();
      if (a1 == CFGetTypeID(v11))
      {
        v12 = OUTLINED_FUNCTION_65_3();
        v14 = 1668639076;
LABEL_29:
        v21 = 8;
        return FigAudioQueueTimingShimSetProperty(v12, v14, p_cf, v21);
      }
    }

    goto LABEL_17;
  }

  if (CFEqual(cf1, @"DeviceUID"))
  {
    if (!a4 || (CFStringGetTypeID(), v16 = OUTLINED_FUNCTION_54_2(), a1 == CFGetTypeID(v16)))
    {
      v17 = OUTLINED_FUNCTION_65_3();
      AQTap = FigAudioQueueTimingShimSetProperty(v17, 0x61716364u, v18, 8u);
      if (!AQTap)
      {
        CMAudioDeviceClockSetAudioDeviceUID(*(a2 + 624), deviceUID);
      }

      return AQTap;
    }

    goto LABEL_17;
  }

  if (CFEqual(cf1, @"ClockDevice"))
  {
    if (!a4 || (CFStringGetTypeID(), v20 = OUTLINED_FUNCTION_54_2(), a1 == CFGetTypeID(v20)))
    {
      v12 = OUTLINED_FUNCTION_65_3();
      v14 = 1902340964;
      goto LABEL_29;
    }

LABEL_17:
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM();
  }

  if (CFEqual(cf1, @"TimePitchAlgorithm"))
  {
    if (!a4)
    {
      goto LABEL_17;
    }

    CFStringGetTypeID();
    v35 = OUTLINED_FUNCTION_411();
    if (cf1 != CFGetTypeID(v35))
    {
      goto LABEL_17;
    }

    if (CFEqual(a4, @"TimeDomain"))
    {
      v36 = 1953064047;
      goto LABEL_73;
    }

    if (CFEqual(a4, @"Spectral"))
    {
      v36 = 1936745827;
      goto LABEL_73;
    }

    if (CFEqual(a4, @"Varispeed"))
    {
      v36 = 1987276900;
      goto LABEL_73;
    }

    if (CFEqual(a4, @"LowQualityZeroLatency"))
    {
      v36 = 1819376236;
LABEL_73:
      LODWORD(cf) = v36;
      if (*(a1 + 352) != v36)
      {
        v45 = OUTLINED_FUNCTION_41_2();
        v47 = FigAudioQueueTimingShimSetProperty(v45, 0x71747061u, v46, 4u);
        if (v47 == -66630)
        {
          AQTap = 0;
        }

        else
        {
          AQTap = v47;
        }

        v48 = cf;
        *(a1 + 352) = cf;
        v49 = faq_scaledEditRateSupportValidator_one32nd_to_32;
        if (v48 != 1987276900 && v48 != 1936745827 && v48 != 1953064047)
        {
          if (v48 == 1819376236)
          {
            v49 = faq_scaledEditRateSupportValidator_lowQualityZeroLatency;
          }

          else
          {
            v49 = faq_scaledEditRateSupportValidator_noScaleAllowed;
          }
        }

        *(a1 + 672) = v49;
        return AQTap;
      }

      return 0;
    }

    goto LABEL_99;
  }

  if (CFEqual(cf1, @"MATOriginalSourceFormat"))
  {
    if (a4)
    {
      CFNumberGetTypeID();
      v37 = OUTLINED_FUNCTION_54_2();
      if (a1 == CFGetTypeID(v37))
      {
        v38 = OUTLINED_FUNCTION_31_4();
        CFNumberGetValue(v38, kCFNumberIntType, v39);
        v40 = OUTLINED_FUNCTION_65_3();
        FigAudioQueueTimingShimSetProperty(v40, 0x6D6F7366u, v41, 4u);
        return 0;
      }
    }

    goto LABEL_17;
  }

  if (CFEqual(cf1, @"STSLabel"))
  {
    v12 = OUTLINED_FUNCTION_65_3();
    v14 = 1937011564;
    goto LABEL_29;
  }

  if (CFEqual(cf1, @"MXSession"))
  {
    if (!faq_shouldSetMXSessionOnAudioQueues())
    {
      return 0;
    }

    v42 = *(a2 + 624);
    if (v42)
    {
      CFRelease(v42);
      *(a2 + 624) = 0;
    }

    v43 = OUTLINED_FUNCTION_177();
    subaq_ensureClock(v43);
    v12 = OUTLINED_FUNCTION_65_3();
    v14 = 1668118643;
    goto LABEL_29;
  }

  if (CFEqual(cf1, @"TimePitchBypass"))
  {
    if ((*(a1 + 49) & 0x40) != 0)
    {
      goto LABEL_17;
    }

    if (!a4)
    {
      goto LABEL_17;
    }

    CFBooleanGetTypeID();
    v44 = OUTLINED_FUNCTION_54_2();
    if (a1 != CFGetTypeID(v44))
    {
      goto LABEL_17;
    }

    LODWORD(cf) = *MEMORY[0x1E695E4D0] == a4;
    v12 = *(a2 + 40);
    v14 = 1903456354;
    goto LABEL_69;
  }

  if (CFEqual(cf1, @"EnableTimePitch"))
  {
    if ((*(a1 + 49) & 0x40) != 0)
    {
      goto LABEL_17;
    }

    if (!a4)
    {
      goto LABEL_17;
    }

    CFBooleanGetTypeID();
    v52 = OUTLINED_FUNCTION_411();
    if (cf1 != CFGetTypeID(v52))
    {
      goto LABEL_17;
    }

    v53 = *MEMORY[0x1E695E4D0];
    LODWORD(cf) = *MEMORY[0x1E695E4D0] == a4;
    Property = FigAudioQueueTimingShimSetProperty(*(a2 + 40), 0x715F7470u, &cf, 4u);
    if (Property)
    {
      return Property;
    }

    if (deviceUID == v53)
    {
      v100 = *(a1 + 352);
      v12 = *(a2 + 40);
      p_cf = &v100;
      v14 = 1903456353;
      goto LABEL_70;
    }

    return 0;
  }

  if (CFEqual(cf1, @"TrackID"))
  {
    if (a4)
    {
      v54 = CFGetTypeID(a4);
      if (v54 == CFNumberGetTypeID())
      {
        CFNumberGetValue(a4, kCFNumberSInt32Type, (a2 + 636));
      }
    }

    return 0;
  }

  if (CFEqual(cf1, @"AudioProcessingTap"))
  {
    if (*(a2 + 48))
    {
      goto LABEL_17;
    }

    FigAudioQueueTimingShimStop(*(a2 + 40), 1u);
    if (*(a2 + 664))
    {
      v58 = (a2 + 640);
      FigAudioQueueTimingShimGetAudioQueue(*(a2 + 40));
      v59 = OUTLINED_FUNCTION_184();
      MTAudioProcessingTapRemoveAQFromSubmixTap(v59, v60, v61);
      v62 = *(a2 + 664);
      if (v62)
      {
        CFRelease(v62);
        *(a2 + 664) = 0;
      }

      if (!*v58)
      {
LABEL_130:
        *(a2 + 656) = 0;
        *(a2 + 658) = 0;
        v66 = *(a1 + 744);
        if (v66)
        {
          v67 = CFRetain(v66);
          *(a2 + 640) = v67;
          v68 = *(a1 + 760);
          if (v68)
          {
            v69 = *(a2 + 664);
            *(a2 + 664) = v68;
            CFRetain(v68);
            if (v69)
            {
              CFRelease(v69);
            }

            AQTap = MTAudioProcessingTapEnsureSubmixTapCreated(*(a2 + 640), *(a1 + 760));
            if (!AQTap)
            {
              return AQTap;
            }

            v70 = *(a2 + 664);
            *(a2 + 664) = 0;
            if (v70)
            {
              CFRelease(v70);
            }
          }

          else
          {
            v72 = *(a2 + 636);
            v73 = *(a1 + 796);
            AudioQueue = FigAudioQueueTimingShimGetAudioQueue(*(a2 + 40));
            AQTap = MTAudioProcessingTapCreateAQTap(v67, v72, v73, AudioQueue, a2 + 648);
            if (!AQTap)
            {
              return AQTap;
            }
          }

          v71 = *(a2 + 640);
          if (v71)
          {
            CFRelease(v71);
            *(a2 + 640) = 0;
          }

          return AQTap;
        }

        return 0;
      }

      CFRelease(*v58);
    }

    else
    {
      v64 = *(a2 + 648);
      if (!v64)
      {
        goto LABEL_130;
      }

      v58 = (a2 + 648);
      MTAudioProcessingTapDisposeAQTap(*(a2 + 640), v64);
      v65 = *(a2 + 640);
      if (v65)
      {
        CFRelease(v65);
        *(a2 + 640) = 0;
      }
    }

    *v58 = 0;
    goto LABEL_130;
  }

  if (CFEqual(cf1, @"CinematicAudioParameters"))
  {
    if (!a4)
    {
      return 0;
    }

    v55 = CFGetTypeID(a4);
    if (v55 != CFDataGetTypeID())
    {
      return 0;
    }

    v56 = OUTLINED_FUNCTION_177();

    return subaq_setCinematicAudioBulkParameters(v56, v57, a4);
  }

  if (CFEqual(cf1, @"LoudnessInfo"))
  {
    if (a4)
    {
      CFDictionaryGetTypeID();
      v63 = OUTLINED_FUNCTION_54_2();
      if (a1 == CFGetTypeID(v63))
      {
        cf = CFRetain(a4);
        goto LABEL_146;
      }
    }

    else
    {
      cf = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (cf)
      {
LABEL_146:
        v77 = OUTLINED_FUNCTION_41_2();
        AQTap = FigAudioQueueTimingShimSetProperty(v77, 0x716C646Eu, v78, 8u);
        if (cf)
        {
          CFRelease(cf);
        }

        return AQTap;
      }
    }

LABEL_99:
    OUTLINED_FUNCTION_239();
    return FigSignalErrorAtGM();
  }

  if (CFEqual(cf1, @"AudioDynamicRangeCompression"))
  {
    LODWORD(cf) = -1;
    v100 = 4;
    v75 = OUTLINED_FUNCTION_41_2();
    Property = FigAudioQueueTimingShimGetProperty(v75, 0x7164796Eu, v76, &v100);
    if (Property)
    {
      return Property;
    }

    if (FigCFEqual())
    {
      LODWORD(cf) = 1;
      v12 = OUTLINED_FUNCTION_41_2();
      v14 = 1902410094;
      goto LABEL_70;
    }

    if (!FigCFEqual())
    {
      OUTLINED_FUNCTION_239();
      return FigSignalErrorAtGM();
    }

    return 0;
  }

  if (CFEqual(cf1, @"AdjustTargetLevel"))
  {
    v79 = OUTLINED_FUNCTION_31_4();
    CFNumberGetValue(v79, kCFNumberFloat32Type, v80);
    v12 = *(a2 + 40);
    v14 = 1584952428;
LABEL_69:
    p_cf = &cf;
LABEL_70:
    v21 = 4;
    return FigAudioQueueTimingShimSetProperty(v12, v14, p_cf, v21);
  }

  if (CFEqual(cf1, @"AdjustCompressionProfile"))
  {
    v81 = OUTLINED_FUNCTION_31_4();
    CFNumberGetValue(v81, kCFNumberSInt32Type, v82);
    v12 = OUTLINED_FUNCTION_41_2();
    v14 = 1584948336;
    goto LABEL_70;
  }

  if (CFEqual(cf1, @"SweepFilterConfiguration"))
  {
    if (!a4)
    {
      goto LABEL_17;
    }

    v83 = CFGetTypeID(a4);
    if (v83 != CFDictionaryGetTypeID())
    {
      goto LABEL_17;
    }

    v84 = *(a1 + 704);
    *(a1 + 704) = a4;
    CFRetain(a4);
    if (v84)
    {
      CFRelease(v84);
    }

    if (!*(a1 + 696))
    {
      return 0;
    }

    v85 = OUTLINED_FUNCTION_177();

    return subaq_setSweepFilterConfig(v85);
  }

  else
  {
    if (!CFEqual(cf1, @"EnableSweepFilter"))
    {
      if (CFEqual(cf1, @"CodecProgramTargetLevel"))
      {
        v87 = OUTLINED_FUNCTION_31_4();
        CFNumberGetValue(v87, kCFNumberFloat32Type, v88);
        v12 = OUTLINED_FUNCTION_41_2();
        v14 = 1886418028;
        goto LABEL_70;
      }

      if (CFEqual(cf1, @"BestAvailableContentType"))
      {
        v89 = OUTLINED_FUNCTION_31_4();
        CFNumberGetValue(v89, kCFNumberSInt32Type, v90);
        v12 = OUTLINED_FUNCTION_41_2();
        v14 = 1650549620;
        goto LABEL_70;
      }

      if (!CFEqual(cf1, @"SceneCompositionPreset"))
      {
        if (!CFEqual(cf1, @"IgnoreAudioDeviceLatencyInStartupSync"))
        {
          return 4294954353;
        }

        if (a4)
        {
          v95 = CFGetTypeID(a4);
          if (v95 == CFBooleanGetTypeID())
          {
            AQTap = 0;
            *(a1 + 654) = *MEMORY[0x1E695E4D0] == a4;
            return AQTap;
          }
        }

        goto LABEL_17;
      }

      LODWORD(cf) = 0;
      if (a4)
      {
        v91 = CFGetTypeID(a4);
        if (v91 == CFNumberGetTypeID())
        {
          CFNumberGetValue(a4, kCFNumberSInt32Type, &cf);
          v12 = OUTLINED_FUNCTION_41_2();
          v14 = 1584620400;
          goto LABEL_70;
        }
      }

      goto LABEL_99;
    }

    if (!a4)
    {
      goto LABEL_17;
    }

    v86 = CFGetTypeID(a4);
    if (v86 != CFBooleanGetTypeID())
    {
      goto LABEL_17;
    }

    *(a1 + 696) = CFBooleanGetValue(a4);
    v92 = OUTLINED_FUNCTION_177();

    return subaq_setSweepFilterEnable(v92, v93, v94);
  }
}

uint64_t subaq_setCinematicAudioBulkParameters(uint64_t a1, uint64_t a2, const __CFData *a3)
{
  subaq_ensureCinematicAudioEnabled(a1, a2, 0);
  v6 = *(a2 + 40);
  CFDataGetBytePtr(a3);
  v7 = OUTLINED_FUNCTION_411();
  Length = CFDataGetLength(v7);
  v9 = FigAudioQueueTimingShimSetProperty(v6, 0x715F636Du, v3, Length);
  if (v9 == -66684)
  {
    CFDataGetLength(a3);
    CFDataGetBytePtr(a3);
    v10 = FigAtomStreamInitWithMemoryBlock();
    if (!v10)
    {
      FigAtomStreamGetCurrentAtomTypeAndDataLength();
      OUTLINED_FUNCTION_303();
      v10 = FigSignalErrorAtGM();
    }

    v9 = v10;
    free(0);
  }

  return v9;
}

uint64_t parseCinematicAudioHeaderAtom()
{
  OUTLINED_FUNCTION_147();
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    OUTLINED_FUNCTION_303();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t parseCinematicAudioParametersAtom()
{
  OUTLINED_FUNCTION_147();
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    OUTLINED_FUNCTION_303();
    return FigSignalErrorAtGM();
  }

  return result;
}

void subaq_scheduleVolumeCurvesForMediaTimeRange(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, _OWORD *a4, int a5, int a6)
{
  HIDWORD(v196) = a5;
  v239 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  if (!theDict)
  {
    return;
  }

  v6 = a1;
  if (*(a1 + 16))
  {
    return;
  }

  Value = CFDictionaryGetValue(theDict, @"AudioCurve_Volume");
  if (!Value)
  {
    return;
  }

  v11 = Value;
  v12 = a4[1];
  *&v220.start.value = *a4;
  *&v220.start.epoch = v12;
  *&v220.duration.timescale = a4[2];
  memset(&v227, 0, sizeof(v227));
  Count = CFArrayGetCount(Value);
  v14 = MEMORY[0x1E6960C70];
  v215 = a2;
  if (Count != 3 * (Count / 3))
  {
    OUTLINED_FUNCTION_40_0();
    if (FigSignalErrorAtGM())
    {
      return;
    }

    goto LABEL_120;
  }

  v15 = Count;
  if (!Count)
  {
    Mutable = CFRetain(v11);
    goto LABEL_54;
  }

  v191 = v6;
  LODWORD(v201) = a6;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  range = v220;
  CMTimeRangeGetEnd(&v227, &range);
  v234.value = *v14;
  v234.timescale = *(v14 + 2);
  v17 = CFArrayGetCount(v11);
  if (v17 < 4)
  {
    v23 = 0;
  }

  else
  {
    v18 = v17;
    v19 = 0;
    v20 = 0;
    v21 = (v17 - 1) / 3uLL;
    while (1)
    {
      memset(&range, 0, 24);
      v22 = (v19 + v21) / 2;
      v23 = 3 * v22;
      CMTimeAtIndex = FigCFArrayGetCMTimeAtIndex();
      if (!CMTimeAtIndex)
      {
        break;
      }

      time1 = range.start;
      OUTLINED_FUNCTION_15_6(CMTimeAtIndex, v25, v26, v27, v28, v29, v30, v31, v182, v187, v191, v196, v201, v207, v211, v215, *&v220.start.value);
      v32 = CMTimeCompare(&time1, &time2);
      if ((v32 & 0x80000000) != 0)
      {
        v19 = v22 + 1;
        v20 = 3 * v22;
      }

      else
      {
        time1 = range.start;
        OUTLINED_FUNCTION_15_6(v32, v33, v34, v35, v36, v37, v38, v39, v182, v187, v191, v196, v201, v207, v211, v215, *&v220.start.value);
        if (CMTimeCompare(&time1, &time2) <= 0)
        {
          memset(&time1, 0, sizeof(time1));
          if (v18 <= v23 + 3)
          {
LABEL_24:
            v20 = v23;
          }

          else
          {
            v20 = 3 * v22;
            while (1)
            {
              v40 = FigCFArrayGetCMTimeAtIndex();
              if (!v40)
              {
                break;
              }

              OUTLINED_FUNCTION_15_6(v40, v41, v42, v43, v44, v45, v46, v47, v182, v187, v191, v196, v201, v207, v211, v215, *&v220.start.value);
              v229 = time1;
              if (CMTimeCompare(&time2, &v229) < 0)
              {
                v23 = v20;
                goto LABEL_24;
              }

              memset(&time1, 0, sizeof(time1));
              v23 = v20 + 3;
              v48 = v20 + 6;
              v20 += 3;
              if (v18 <= v48)
              {
                goto LABEL_24;
              }
            }
          }

          break;
        }

        v21 = v22 - 1;
        v23 = v20;
      }

      if (v21 < v19)
      {
        goto LABEL_26;
      }
    }

    v23 = v20;
  }

LABEL_26:
  v49 = (v23 + 2);
  if (v23 + 2 >= v15)
  {
    goto LABEL_49;
  }

  v50 = 0;
  v51 = *(MEMORY[0x1E6960C70] + 12);
  v52 = @"Linear";
  v53 = NAN;
  while (1)
  {
    v54 = v52;
    memset(&time1, 0, sizeof(time1));
    time.value = 0;
    if (!FigCFArrayGetCMTimeAtIndex() || !FigCFArrayGetDoubleAtIndex() || (ValueAtIndex = CFArrayGetValueAtIndex(v11, v49)) == 0 || (v52 = ValueAtIndex, v49 = CFGetTypeID(ValueAtIndex), v49 != CFStringGetTypeID()))
    {
      OUTLINED_FUNCTION_40_0();
      v181 = FigSignalErrorAtGM();
      a6 = v201;
      v6 = v191;
      v14 = MEMORY[0x1E6960C70];
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v181)
      {
        return;
      }

LABEL_120:
      Mutable = 0;
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_15_6(v56, v57, v58, v59, v60, v61, v62, v63, v182, v187, v191, v196, v201, v207, v211, v215, *&v220.start.value);
    v64 = CMTimeCompare(&range.start, &time2);
    if ((v64 & 0x80000000) != 0)
    {
      break;
    }

    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_15_6(v72, v73, v74, v75, v76, v77, v78, v79, v182, v187, v191, v196, v201, v207, v211, v215, *&v220.start.value);
    v80 = CMTimeCompare(&range.start, &time2);
    if (v80)
    {
      if (v50 && (v201 || v53 != *&time.value))
      {
        v88 = OUTLINED_FUNCTION_38_1(v80, v81, v82, v83, v84, v85, v86, v87, v182, v187, v191, v196, v201, v207, v211, v215, v220.start.value, *&v220.start.timescale, v220.start.epoch, v220.duration.value, *&v220.duration.timescale, v220.duration.epoch, time.value, *&time.timescale, time.epoch, v222, range.start.value, *&range.start.timescale, range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, v224, *(&v224 + 1), *&v225, *&v226, v227.value, *&v227.timescale, v227.epoch, v228, *&v229.value, v229.epoch, v230, time2.value, time2.timescale, time2.flags, time2.epoch);
        OUTLINED_FUNCTION_15_6(v88, v89, v90, v91, v92, v93, v94, v95, v183, v188, v192, v197, v202, v208, v212, v216, *&v220.start.value);
        faq_getLinearlyInterpolatedVolumeAtTimeInRange(&range.start, &time2, v53, v96);
        OUTLINED_FUNCTION_761(v97, v98, v99, v100, v101, v102, v103, v104, v184, v189, v193, v198, v203, v209, v213, v217, *&v220.start.value);
        FigCFArrayAppendCMTime();
        FigCFArrayAppendDouble();
        CFArrayAppendValue(Mutable, v54);
      }

      *&v105 = OUTLINED_FUNCTION_48_2().n128_u64[0];
      OUTLINED_FUNCTION_64_2(v105, v106, v107, v108, v109, v110, v111, v112, *&v182, *&v187, *&v191, *&v196, *&v201, *&v207, *&v211, *&v215, *&v220.start.value, *&v220.start.timescale, *&v220.start.epoch, *&v220.duration.value, *&v220.duration.timescale, *&v220.duration.epoch, *&time.value, *&time.timescale, *&time.epoch, *&v222, *&range.start.value, *&range.start.timescale, *&range.start.epoch, *&range.duration.value, *&range.duration.timescale, *&range.duration.epoch, *&v224, *(&v224 + 1), v225, v226, *&v227.value);
      v115 = CMTimeCompare(v113, v114);
      if (v115 >= 1)
      {
        if ((v51 & 1) != 0 && v53 != *&time.value)
        {
          OUTLINED_FUNCTION_38_1(v115, v116, v117, v118, v119, v120, v121, v122, v182, v187, v191, v196, v201, v207, v211, v215, v220.start.value, *&v220.start.timescale, v220.start.epoch, v220.duration.value, *&v220.duration.timescale, v220.duration.epoch, time.value, *&time.timescale, time.epoch, v222, range.start.value, *&range.start.timescale, range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, v224, *(&v224 + 1), *&v225, *&v226, v227.value, *&v227.timescale, v227.epoch, v228, *&v229.value, v229.epoch, v230, time2.value, time2.timescale, time2.flags, time2.epoch);
          OUTLINED_FUNCTION_64_2(v128, *&time.value, v129, v130, v131, v132, v133, v134, v185, v190, v194, v199, v204, v210, v214, v218, *&v220.start.value, *&v220.start.timescale, *&v220.start.epoch, *&v220.duration.value, *&v220.duration.timescale, *&v220.duration.epoch, *&time.value, *&time.timescale, *&time.epoch, *&v222, *&range.start.value, *&range.start.timescale, *&range.start.epoch, *&range.duration.value, *&range.duration.timescale, *&range.duration.epoch, *&v224, *(&v224 + 1), v225, v226, *&v227.value);
          faq_getLinearlyInterpolatedVolumeAtTimeInRange(v135, v136, v53, v137);
          range.start = v227;
          FigCFArrayAppendCMTime();
          FigCFArrayAppendDouble();
          goto LABEL_48;
        }

        goto LABEL_49;
      }
    }

    CFArrayGetValueAtIndex(v11, v23);
    v123 = OUTLINED_FUNCTION_577();
    CFArrayAppendValue(v123, v124);
    CFArrayGetValueAtIndex(v11, v23 + 1);
    v125 = OUTLINED_FUNCTION_577();
    CFArrayAppendValue(v125, v126);
    CFArrayAppendValue(Mutable, v52);
    v50 = 0;
    v127 = v23 + 3;
LABEL_42:
    v234.value = time1.value;
    LOBYTE(v51) = time1.flags;
    v234.timescale = time1.timescale;
    v53 = *&time.value;
    v49 = (v23 + 5);
    v23 = v127;
    if (v49 >= v15)
    {
      goto LABEL_49;
    }
  }

  v127 = v23 + 3;
  v50 = 1;
  if (!v201 || v127 != v15)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_761(v64, v65, v66, v67, v68, v69, v70, v71, v182, v187, v191, v196, v201, v207, v211, v215, *&v220.start.value);
  FigCFArrayAppendCMTime();
  CFArrayGetValueAtIndex(v11, v23 + 1);
  v138 = OUTLINED_FUNCTION_577();
  CFArrayAppendValue(v138, v139);
LABEL_48:
  CFArrayAppendValue(Mutable, v52);
LABEL_49:
  a6 = v201;
  if (v201)
  {
    v140 = CFArrayGetCount(Mutable);
    v14 = MEMORY[0x1E6960C70];
    if (v140 >= 4)
    {
      CFArrayGetValueAtIndex(Mutable, 0);
      v141 = OUTLINED_FUNCTION_54_2();
      v142 = CFArrayGetValueAtIndex(v141, 1);
      v143 = CFArrayGetValueAtIndex(Mutable, 2);
      CFArrayInsertValueAtIndex(Mutable, 0, v49);
      CFArrayInsertValueAtIndex(Mutable, 1, v142);
      CFArrayInsertValueAtIndex(Mutable, 2, v143);
    }

    v6 = v191;
  }

  else
  {
    v6 = v191;
    v14 = MEMORY[0x1E6960C70];
  }

LABEL_54:
  v233 = -1.0;
  v144 = *MEMORY[0x1E6960CC0];
  *&v220.start.value = *MEMORY[0x1E6960CC0];
  v145 = *(MEMORY[0x1E6960CC0] + 16);
  v220.start.epoch = v145;
  if (!Mutable || *(v6 + 16))
  {
LABEL_113:
    if (Mutable)
    {
      goto LABEL_114;
    }
  }

  else
  {
    v205 = v144;
    v146 = CFArrayGetCount(Mutable);
    if (v146 >= 1)
    {
      v153 = v146;
      if (v146 == 3 * (v146 / 3uLL))
      {
        v154 = 1.0;
        if ((*(v6 + 48) & 2) != 0)
        {
          goto LABEL_67;
        }

        OUTLINED_FUNCTION_97_2();
        if (v166)
        {
          v157 = v155;
        }

        else
        {
          v157 = v156;
        }

        if (*(v6 + 236))
        {
          v158 = *(v6 + 232);
          v166 = v158 == 0.0;
          v155 = v158;
          if (v166)
          {
            v155 = 1.0;
          }
        }

        v159 = v157 / v155;
        if (v159 != 0.0)
        {
          v154 = v159;
LABEL_67:
          if (*(v215 + 48))
          {
            v160 = v215;
            subaq_getCurrentQueueTime(v215, &v220.start);
          }

          else
          {
            *&v220.start.value = v205;
            v220.start.epoch = v145;
            v160 = v215;
          }

          OUTLINED_FUNCTION_761(v146, *(v160 + 100), v147, v148, v149, v150, v151, v152, v182, v187, v191, v196, v205, *(&v205 + 1), v211, v215, *&v220.start.value);
          CMTimeConvertScale(&time1, &range.start, v161, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          v195 = time1.value;
          *&range.start.value = *(v6 + 528);
          range.start.epoch = *(v6 + 544);
          CMTimeConvertScale(&time2, &range.start, *(v160 + 100), kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          v162 = time2.value;
          v163 = *(v160 + 100);
          *&range.start.value = *(v6 + 456);
          range.start.epoch = *(v6 + 472);
          CMTimeConvertScale(&v229, &range.start, v163, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          v164 = 0;
          v165 = v229.value;
          if (a6)
          {
            v166 = 1;
          }

          else
          {
            v166 = v153 == 3;
          }

          v167 = v166;
          v186 = v167;
          v206 = *v14;
          v168 = *(v14 + 2);
          v169 = v153;
          while (2)
          {
            *&v227.value = v206;
            v227.epoch = v168;
            v225 = 0.0;
            v226 = 0.0;
            v224 = 0u;
            memset(&range, 0, sizeof(range));
            v238 = 0.0;
            v237 = 0;
            v236 = 18;
            v235 = 0xB0000000CLL;
            if (!v200)
            {
              v235 = 0x1A0000001BLL;
              v236 = 28;
            }

            if (v154 <= 0.0)
            {
              v170 = v219;
              if (!FigCFArrayGetCMTimeAtIndex() || !FigCFArrayGetDoubleAtIndex())
              {
                goto LABEL_113;
              }

              v171 = v169 - 1;
            }

            else
            {
              v170 = v219;
              if (!FigCFArrayGetCMTimeAtIndex() || !FigCFArrayGetDoubleAtIndex())
              {
                goto LABEL_113;
              }

              v171 = v164 + 2;
            }

            v172 = CFArrayGetValueAtIndex(Mutable, v171);
            if (!v172)
            {
              goto LABEL_113;
            }

            v173 = CFEqual(v172, @"EqualPower") ? 1.0 : 0.0;
            v238 = v173;
            if (FigAudioQueueTimingShimSetParameter(*(v170 + 40), v236, v173))
            {
              goto LABEL_113;
            }

            v174 = *(v170 + 100);
            time = v227;
            CMTimeConvertScale(&v234, &time, v174, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
            v175 = v233;
            if (v165 + (v234.value - v162) * v154 >= 0.0)
            {
              v176 = v165 + (v234.value - v162) * v154;
            }

            else
            {
              v176 = 0.0;
            }

            v226 = v176;
            if (v176 <= v233)
            {
              subaq_incrementSampleTime(v170, &v226, v233);
              if (v180)
              {
                goto LABEL_113;
              }

              v176 = v226;
            }

            v177 = v225;
            *(&v237 + 1) = v177;
            if (v164)
            {
              if (a6 || v176 >= v195)
              {
                v178 = (v176 - v175) / *(v170 + 100);
                *&v237 = v178;
                *&range.start.value = v175;
LABEL_105:
                DWORD2(v224) = 1;
                if (FigAudioQueueTimingShimScheduleParameters(*(v170 + 40), &range.start.value, 3u, &v235, &v237))
                {
                  goto LABEL_113;
                }

                goto LABEL_106;
              }
            }

            else if (v186)
            {
              LODWORD(v237) = 0;
              if (a6 || v176 >= v195)
              {
                if (!a6 || *(v170 + 48) || *(v170 + 632))
                {
                  *&range.start.value = v176;
                  goto LABEL_105;
                }

                *&range.start.value = v195;
                DWORD2(v224) = 0;
                FigAudioQueueTimingShimScheduleParameters(*(v170 + 40), &range.start.value, 1u, &v235 + 1, &v237 + 1);
LABEL_106:
                *(v170 + 632) = 1;
              }
            }

            subaq_incrementSampleTime(v170, &v233, v176);
            if (v179)
            {
              goto LABEL_113;
            }

            v164 += 3;
            v169 -= 3;
            if (v164 >= v153)
            {
              goto LABEL_113;
            }

            continue;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_40_0();
        FigSignalErrorAtGM();
      }
    }

LABEL_114:
    CFRelease(Mutable);
  }
}

void subaq_scheduleCinematicForMediaTimeRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, unsigned int a15)
{
  OUTLINED_FUNCTION_458();
  if (!v15)
  {
    goto LABEL_11;
  }

  v18 = v17;
  if (!v17)
  {
    goto LABEL_11;
  }

  v19 = v15;
  if (*(v15 + 16))
  {
    goto LABEL_11;
  }

  v20 = v16;
  Value = CFDictionaryGetValue(v17, @"AudioCurves_AmbienceLevel");
  v22 = CFDictionaryGetValue(v18, @"AudioCurves_DialogLevel");
  v23 = CFDictionaryGetValue(v18, @"AudioCurves_DialogMixBias");
  v24 = CFDictionaryGetValue(v18, @"AudioCurves_DialogLoudness");
  v25 = CFDictionaryGetValue(v18, @"AudioCurves_AmbienceLoudness");
  v26 = CFDictionaryGetValue(v18, @"AudioCurves_RecordingLoudness");
  v27 = CFDictionaryGetValue(v18, @"AudioCurves_RenderingStyle");
  v28 = v27;
  if (!Value && !v23 && !v22 && !v24 && !v25 && !v26 && !v27)
  {
    goto LABEL_11;
  }

  subaq_ensureCinematicAudioEnabled(v19, v20, 0);
  if (!*(v19 + 792))
  {
    OUTLINED_FUNCTION_147();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v40 = a15;
    }

    else
    {
      v40 = a15 & 0xFFFFFFFE;
    }

    if (v40)
    {
      OUTLINED_FUNCTION_52_2();
      OUTLINED_FUNCTION_45_3();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_9_6();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_11;
  }

  if (Value && (CFArrayGetValueAtIndex(Value, 1), FigCFNumberGetFloat32(), FigAudioQueueTimingShimSetParameter(*(v20 + 40), 0x20u, v29)) || v22 && (CFArrayGetValueAtIndex(v22, 1), FigCFNumberGetFloat32(), FigAudioQueueTimingShimSetParameter(*(v20 + 40), 0x1Fu, v30)) || v23 && (CFArrayGetValueAtIndex(v23, 1), FigCFNumberGetFloat32(), FigAudioQueueTimingShimSetParameter(*(v20 + 40), 0x1Eu, v31)) || v24 && (CFArrayGetValueAtIndex(v24, 1), FigCFNumberGetFloat32(), FigAudioQueueTimingShimSetParameter(*(v20 + 40), 0x21u, v32)) || v25 && (CFArrayGetValueAtIndex(v25, 1), FigCFNumberGetFloat32(), FigAudioQueueTimingShimSetParameter(*(v20 + 40), 0x22u, v33)) || v26 && (CFArrayGetValueAtIndex(v26, 1), FigCFNumberGetFloat32(), FigAudioQueueTimingShimSetParameter(*(v20 + 40), 0x23u, v34)) || !v28)
  {
LABEL_11:
    OUTLINED_FUNCTION_457();
    return;
  }

  CFArrayGetValueAtIndex(v28, 1);
  FigCFNumberGetFloat32();
  OUTLINED_FUNCTION_457();

  FigAudioQueueTimingShimSetParameter(v35, v36, v37);
}

void subaq_scheduleAudioProcessingUnitForMediaTimeRange(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, unsigned __int8 a6, uint64_t a7)
{
  *&v29.value = *MEMORY[0x1E6960C70];
  v7 = a4[1];
  v21 = *a4;
  v31 = 0;
  v30 = 0;
  v29.epoch = *(MEMORY[0x1E6960C70] + 16);
  context[0] = &v31;
  context[1] = a1;
  context[2] = a2;
  v22 = v7;
  v23 = a4[2];
  v24 = 1065353216;
  memset(&v25, 0, sizeof(v25));
  v27 = a5;
  v26 = a6;
  BYTE2(v26) = 0;
  v28 = a7;
  if (*(a1 + 16))
  {
    return;
  }

  v11 = 1.0;
  if ((*(a1 + 48) & 2) != 0)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_97_2();
  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  if (*(a1 + 236))
  {
    v16 = *(a1 + 232);
    v14 = v16 == 0.0;
    v12 = v16;
    if (v14)
    {
      v12 = 1.0;
    }
  }

  v11 = v15 / v12;
  v24 = LODWORD(v11);
  if (v11 != 0.0)
  {
    if (v11 <= 0.0)
    {
      FigSignalErrorAtGM();
      return;
    }

LABEL_11:
    if (FigCFDictionaryGetValueIfPresent())
    {
      if (*(a2 + 48))
      {
        subaq_getCurrentQueueTime(a2, &v29);
        range.start = v29;
        faqTimelineWrangler_convertAQTimeToMediaTime(a1 + 424, &range.start, &v25, v11);
      }

      else
      {
        v25 = *(a1 + 528);
      }

      v17 = a4[1];
      *&range.start.value = *a4;
      *&range.start.epoch = v17;
      *&range.duration.timescale = a4[2];
      v18 = v25;
      BYTE1(v26) = CMTimeRangeContainsTime(&range, &v18);
      CFDictionaryApplyFunction(v30, subaq_fapuCurveApplier, context);
    }
  }
}

double subaq_incrementSampleTime(uint64_t a1, void *a2, double a3)
{
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v7 = a3;
  v11 = 1;
  DWORD2(v6) = 1;
  if (!FigAudioQueueTimingShimGetIncrementedSampleTime(*(a1 + 40), &v7, v5))
  {
    result = *v5;
    *a2 = *&v5[0];
  }

  return result;
}

void subaq_fapuCurveApplier(const void *a1, void *a2, uint64_t a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 8);
  Snapshot = **a3;
  v54 = 0;
  v55 = 0;
  v7 = *(a3 + 101);
  v8 = *(a3 + 100);
  v9 = *(a3 + 16);
  v52 = *MEMORY[0x1E6960C70];
  v53 = *(MEMORY[0x1E6960C70] + 16);
  value = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  if (Snapshot)
  {
    goto LABEL_31;
  }

  if (*(a3 + 104) == 1 && FigCFDictionaryGetValueIfPresent() && CFDictionaryContainsKey(0, a1))
  {
    OUTLINED_FUNCTION_2_24();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v44 = v46;
    }

    else
    {
      v44 = v46 & 0xFFFFFFFE;
    }

    if (v44)
    {
      LODWORD(v56.value) = 136315906;
      *(&v56.value + 4) = "subaq_fapuCurveApplier";
      LOWORD(v56.flags) = 2048;
      *(&v56.flags + 2) = v5;
      HIWORD(v56.epoch) = 2048;
      v57 = v9;
      v58 = 2114;
      v59 = a1;
      OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_36();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    Snapshot = 0;
  }

  else
  {
    if (FigCFDictionaryGetValueIfPresent())
    {
      if (*(v9 + 776) || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(v9 + 776) = Mutable) != 0))
      {
        if (FigCFDictionaryGetValueIfPresent() && *v49)
        {
          v12 = *(CMBaseObjectGetVTable() + 16);
          if (!*(v12 + 8))
          {
            goto LABEL_30;
          }

          Snapshot = (*(v12 + 24))(v55);
          if (Snapshot)
          {
            goto LABEL_31;
          }

          CFDictionaryRemoveValue(*(v9 + 776), a1);
          v8 = 1;
          v7 = 1;
        }

        if (FigCFDictionaryGetValueIfPresent())
        {
          OUTLINED_FUNCTION_85_1();
          Snapshot = FigAudioProcessingUnitPackedCurveIteratorSeekTo(v13, &range, v14, v15, v16, v17, v18, v19);
          if (Snapshot)
          {
            goto LABEL_31;
          }

          v24 = v51;
          if (v8)
          {
            goto LABEL_16;
          }
        }

        else
        {
          CFGetAllocator(v5);
          OUTLINED_FUNCTION_85_1();
          Snapshot = FigAudioProcessingUnitPackedCurveIteratorCreate(v31, a2, &range.start.value, &value);
          if (Snapshot)
          {
            goto LABEL_31;
          }

          CFDictionarySetValue(*(v9 + 776), a1, value);
          v24 = value;
          v51 = value;
          if (v8)
          {
LABEL_16:
            Snapshot = FigAudioProcessingUnitPackedCurveIteratorGetSnapshot(v24, &v48, &v47, &v54);
            if (Snapshot)
            {
              goto LABEL_31;
            }

            v25 = *(a3 + 72);
            *&range.start.value = *(a3 + 24);
            range.start.epoch = *(a3 + 40);
            faqTimelineWrangler_convertMediaTimeToAQTime(v5 + 424, &range.start, &v52, v25);
            v27 = v54;
            v26 = v55;
            v29 = v47;
            v28 = v48;
            v30 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v30)
            {
              *&range.start.value = v52;
              range.start.epoch = v53;
              Snapshot = v30(v26, &range, v28, v29, v27);
              if (Snapshot)
              {
                goto LABEL_31;
              }

              v24 = v51;
              if (!v7)
              {
                goto LABEL_29;
              }

LABEL_24:
              *&range.start.value = *(a3 + 76);
              range.start.epoch = *(a3 + 92);
              Snapshot = subaq_fapuIterateAndScheduleParameters(v55, v24, &range.start, a3, v20, v21, v22, v23);
              if (Snapshot)
              {
                goto LABEL_31;
              }

              Snapshot = FigAudioProcessingUnitPackedCurveIteratorGetSnapshot(v51, &v48, &v47, &v54);
              if (Snapshot)
              {
                goto LABEL_31;
              }

              v33 = v54;
              v32 = v55;
              v35 = v47;
              v34 = v48;
              v36 = *(CMBaseObjectGetVTable() + 16);
              if (*(v36 + 8))
              {
                Snapshot = (*(v36 + 16))(v32, v34, v35, v33);
                if (Snapshot)
                {
                  goto LABEL_31;
                }

                v24 = v51;
                goto LABEL_29;
              }
            }

LABEL_30:
            Snapshot = -12782;
            goto LABEL_31;
          }
        }

        if (!v7)
        {
LABEL_29:
          v37 = v55;
          v38 = *(a3 + 40);
          *&range.start.value = *(a3 + 24);
          *&range.start.epoch = v38;
          *&range.duration.timescale = *(a3 + 56);
          CMTimeRangeGetEnd(&v56, &range);
          Snapshot = subaq_fapuIterateAndScheduleParameters(v37, v24, &v56, a3, v39, v40, v41, v42);
          goto LABEL_31;
        }

        goto LABEL_24;
      }
    }

    OUTLINED_FUNCTION_111();
    Snapshot = FigSignalErrorAtGM();
  }

LABEL_31:
  **a3 = Snapshot;
  if (value)
  {
    CFRelease(value);
  }
}

uint64_t subaq_setTapTimelineInfo(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if (!*(result + 16) && (*(a2 + 648) || *(a2 + 664)))
    {
      v24 = *(result + 528);
      v6 = *(a2 + 100);
      time = *(result + 528);
      CMTimeConvertScale(&v23, &time, v6, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v7 = 1.0;
      v8 = 1.0;
      if ((*(v3 + 48) & 2) == 0)
      {
        v8 = *(v3 + 416);
      }

      value = v23.value;
      v10 = v3 + 456;
      v11 = *(a2 + 100);
      time = *(v3 + 456);
      CMTimeConvertScale(&v22, &time, v11, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      if (*(v3 + 236) && *(v3 + 232) != 0.0)
      {
        v7 = *(v3 + 232);
      }

      v12 = *(a2 + 648);
      if (v12)
      {
        v13 = v22.value;
        v14 = *(a2 + 640);
        AudioQueue = FigAudioQueueTimingShimGetAudioQueue(*(a2 + 40));
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v16)
        {
          result = v16(v14, v12, AudioQueue, value, v13, v8, v7);
          goto LABEL_16;
        }
      }

      else
      {
        v17 = *(a2 + 664);
        if (v17)
        {
          v18 = *(a2 + 640);
          v20 = *v10;
          v21 = *(v10 + 16);
          v19 = *(*(CMBaseObjectGetVTable() + 16) + 80);
          if (v19)
          {
            time = v24;
            v25 = v20;
            v26 = v21;
            result = v19(v18, v17, &time, &v25, a3, v8, v7);
LABEL_16:
            if (result != -12782)
            {
              return result;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void faq_convertAudioProcessingUnitCurvesToPackedCurvesAndCopyInspectionResultsApplier(const void *a1, const __CFArray *a2, uint64_t a3)
{
  if (!*a3)
  {
    v6 = CFGetAllocator(*(a3 + 8));
    v7 = FigAudioProcessingUnitPackedCurveCreate(v6, a2);
    *a3 = v7;
    if (!v7)
    {
      v8 = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
      if (v8)
      {
        v9 = v8;
        OUTLINED_FUNCTION_41_2();
        FigCFDictionaryGetValueIfPresent();
        if (!FigCFEqual())
        {
          *v9 = 1;
        }

        CFDictionarySetValue(*(a3 + 32), a1, 0);
        CFDictionarySetValue(*(a3 + 24), a1, v9);
      }

      else
      {
        OUTLINED_FUNCTION_239();
        *a3 = FigSignalErrorAtGM();
      }
    }
  }
}

void faq_Finalize(uint64_t a1)
{
  FigAudioQueueInvalidate(a1);
  if (*(a1 + 24))
  {
    FigSimpleMutexDestroy();
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 32) = 0;
  }

  if (*(a1 + 296))
  {
    FigSemaphoreDestroy();
    *(a1 + 296) = 0;
  }

  MediaSampleTimingGeneratorDisposeMediaSampleTimingInfoArray(*(a1 + 168));
  *(a1 + 168) = 0;
  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 408);
  if (v5)
  {

    CFRelease(v5);
  }
}

__CFString *faq_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v20 = CFGetRetainCount(a1);
  v4 = OUTLINED_FUNCTION_265();
  CFStringAppendFormat(v4, v5, v6, a1, v20);
  if (a1)
  {
    if (!*(a1 + 16))
    {
      Count = CFArrayGetCount(*(a1 + 176));
      if (Count)
      {
        v8 = Count;
        v9 = OUTLINED_FUNCTION_265();
        CFStringAppendFormat(v9, v10, v11);
        if (v8 >= 1)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*(a1 + 16))
            {
              ValueAtIndex = 0;
            }

            else
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), i);
            }

            v14 = OUTLINED_FUNCTION_265();
            CFStringAppendFormat(v14, v15, @"  ");
            subaq_appendDebugDesc(Mutable, ValueAtIndex);
          }
        }
      }
    }
  }

  v16 = OUTLINED_FUNCTION_265();
  CFStringAppendFormat(v16, v17, v18);
  return Mutable;
}

uint64_t FigAudioQueueCreateWithOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueCreateWithOptions_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueCreateWithOptions_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueCreateWithOptions_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueCreateWithOptions_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueCreateWithOptions_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueCreateWithOptions_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueCreateWithOptions_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueCreateWithOptions_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueCreateWithOptions_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueRequestTransitionCallback_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueRequestTransitionCallback_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueRequestTransitionCallback_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueRequestTransitionCallback_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueRequestTransitionCallback_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueSetPropertiesToUpdateAtTransition_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueuePrime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueuePrime_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueuePrime_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueuePrime_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueuePrime_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figAudioQueueStartCommon_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figAudioQueueStartCommon_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figAudioQueueStartCommon_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figAudioQueueStartCommon_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figAudioQueueStartCommon_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figAudioQueueStartCommon_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figAudioQueueStartCommon_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figAudioQueueStartCommon_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueStartOffline_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueStartOffline_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueStartOffline_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueuePause_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueuePause_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t faq_stopAllAudioQueues_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t faq_stopAllAudioQueues_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueCopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueCopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueCopyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueSetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueSetProperty_cold_2(uint64_t a1, CFArrayRef *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_417_0();
  do
  {
    if (*v4)
    {
      ValueAtIndex = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a2, v5);
    }

    result = faq_disconnectFromOfflineMixer(a3, ValueAtIndex);
    ++v5;
  }

  while (a4 != v5);
  return result;
}

uint64_t FigAudioQueueSetProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueSetProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueSetProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueGetParameter_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueGetParameter_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueGetParameter_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueGetParameter_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueGetParameter_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueSetParameter_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueSetParameter_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueSetParameter_cold_3(uint64_t a1)
{
  FigAudioQueuePause(a1);
  FigSimpleMutexLock();
  faq_reset(a1, v2);

  return FigSimpleMutexUnlock();
}

uint64_t FigAudioQueueRestoreParameters_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueRestoreParameters_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueRestoreParameters_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueRestoreParameters_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueCopyPerformanceDictionary_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueCopyPerformanceDictionary_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueCopyPerformanceDictionary_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueCopyPerformanceDictionary_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

double subaq_deferredAudioQueueStartupCompleted_cold_1(uint64_t a1)
{
  v1 = MEMORY[0x1E6960C70];
  v2 = *MEMORY[0x1E6960C70];
  *(a1 + 528) = *MEMORY[0x1E6960C70];
  v3 = *(v1 + 16);
  *(a1 + 544) = v3;
  *(a1 + 480) = v2;
  *(a1 + 496) = v3;
  return faq_reset(a1, *&v2);
}

uint64_t subaq_applyOneCachedProperty_cold_1()
{
  OUTLINED_FUNCTION_471();
  v3 = *v2;
  v4 = v2[1];
  if (FigCFEqual())
  {
    v5 = 0;
  }

  else
  {
    v5 = v1;
  }

  return subaq_setProperty(v3, v4, v0, v5);
}

void vmc2TimebaseRateChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3, OpaqueCMTimebase *a4)
{
  if (a2)
  {
    FigSimpleMutexLock();
    if (*(a2 + 16) || *(a2 + 584) != a4)
    {

      FigSimpleMutexUnlock();
    }

    else
    {
      CMTimebaseGetTime(&time, a4);
      CMTimeGetSeconds(&time);
      Rate = CMTimebaseGetRate(a4);
      FigSimpleMutexUnlock();
      if (Rate == 0.0)
      {
        *(a2 + 1192) = mach_absolute_time();
        vmc2GMFigLogDumpStats(a2);
      }
    }
  }
}

uint64_t vmc2InvokeOutputCallback_InstallOccupancyChangedCallback(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  if (*(a1 + 249))
  {
    v2 = *(a1 + 176);
    if (v2)
    {
      v3 = v2(*(a1 + 152), a1, vmc2OutputOccupancyChanged, a1 + 240);
      if (!v3)
      {
        *(a1 + 248) = 1;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    fig_log_get_emitter();
    v3 = FigSignalErrorAtGM();
  }

  FigReadWriteLockUnlockForRead();
  return v3;
}

void vmcCreateTaggedBufferGroupSubstitutingImageBufferInTaggedBufferGroup(const void *a1, OpaqueCMTaggedBufferGroup *a2, CFTypeRef *a3)
{
  cf = 0;
  v6 = *MEMORY[0x1E695E480];
  v7 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v9 = CFArrayCreateMutable(v6, 0, v7);
  v10 = v9;
  if (Mutable && v9)
  {
    Count = CMTaggedBufferGroupGetCount(a2);
    if (Count < 1)
    {
LABEL_7:
      if (!MEMORY[0x19A8D33F0](v6, Mutable, v10, &cf))
      {
        *a3 = cf;
        cf = 0;
      }

      goto LABEL_9;
    }

    v12 = Count;
    v13 = 0;
    while (1)
    {
      TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(a2, v13);
      if (!TagCollectionAtIndex)
      {
        break;
      }

      CFArrayAppendValue(Mutable, TagCollectionAtIndex);
      CFArrayAppendValue(v10, a1);
      if (v12 == ++v13)
      {
        goto LABEL_7;
      }
    }
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM();
  if (Mutable)
  {
LABEL_9:
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void vmc2WhileHoldingSessionVTMutexUpdateTroubleMonitor(unsigned __int8 *a1)
{
  v2 = *a1;
  if (!*(*a1 + 16))
  {
    v3 = a1[8];
    FigSimpleMutexLock();
    v4 = v2[592];
    if (vmc2GetWaterLevelState(v2))
    {
      v5 = v2[440] != 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = vmc2GetWaterLevelState(v2) == 2 && v2[440] == 0;
    vmc2UpdateTroubleMonitor2(v2, v4, v5, v6, v3);
    FigSimpleMutexUnlock();
  }

  CFRelease(v2);

  free(a1);
}

uint64_t VMC2Invalidate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t VMC2CreateWithQueues2_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VMC2CreateWithQueues2_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t vmc2DecodeUntilHighWaterMet_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t vmc2DecodeUntilHighWaterMet_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vmc2DecodeUntilHighWaterMet_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t vmc2RecalculateUpcomingImageTimes_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t vmc2InvokeOutputCallback_FlushOutput_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t vmc2OutputFrameInternal_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *(*a1 + 24) = result;
  return result;
}

uint64_t vmc2OutputFrameInternal_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t vmc2OutputFrameInternal_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

BOOL vmc2OutputFrameInternal_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t vmc2CreateImageEnhancementFilter_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t vmc2CreateImageEnhancementFilter_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t vmc2CreateImageEnhancementFilter_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t vmc2InvokeOutputCallback_OutputImage_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t vmc2CopyFrameBaggageForPTS_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *(*a1 + 24) = result;
  return result;
}

uint64_t vmc2CopyFrameBaggageForPTS_cold_2(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *(*a1 + 24) = result;
  return result;
}

uint64_t vmc2GetWaterLevelState_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t vmcCreateAttachmentsDictionaryForSourceFrameInfo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t vmcCreateAttachmentsDictionaryForSourceFrameInfo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigVisualContextCreateBasic_cold_2(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *(a1 + 152) = 0;
  return result;
}

uint64_t FigVisualContextCreateBasic_cold_3(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a3 = result;
  return result;
}

uint64_t lvcCreateCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t lvcCreateCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t lvcCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaparserdUtilities_EnsureProcessLaunched()
{
  if ((_MergedGlobals_24 & 1) == 0)
  {
    if (qword_1ED4CA570 != -1)
    {
      dispatch_once(&qword_1ED4CA570, &__block_literal_global_9);
    }

    dispatch_async_f(qword_1ED4CA578, 0, figMediaParserdUtilities_KickStartProcess);
  }

  return 0;
}

uint64_t figMediaParserdUtilities_KickStartProcess()
{
  if (qword_1ED4CA580 != -1)
  {
    dispatch_once(&qword_1ED4CA580, &__block_literal_global_4);
  }

  if (!dword_1ED4CA56C && !FigXPCCreateBasicMessage() && !FigXPCRemoteClientSendAsyncMessage())
  {
    _MergedGlobals_24 = 1;
  }

  return FigXPCRelease();
}

uint64_t FBLSupportAppendDeferredTransactionChangeToSetContentsScaleForFigCALayer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FBLSupportAppendDeferredTransactionChangeToSetAllowsDisplayCompositing_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FBLSupportAppendDeferredTransactionChangeToSetPreferredCADynamicRange_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FBLSupportAppendDeferredTransactionChangeToSetGeometryFlipped_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCImageQueueGauge_Finalize()
{
  CMBaseObjectGetDerivedStorage();
  FigXPCRemoteClientDisassociateObject();
  if (!FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t FigImageQueueGaugeXPCRemoteGetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueGaugeXPCRemoteGetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueGaugeXPCRemoteRetainCopiedImageQueueGauge_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueGaugeXPCRemoteRetainCopiedImageQueueGauge_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueGaugeXPCRemoteStartAsSubClient_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueGaugeXPCRemoteStartAsSubClient_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigReportingModeratorCreateForHLS(uint64_t a1, const void *a2, const __CFDictionary *a3, void *a4)
{
  OUTLINED_FUNCTION_8_8();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_8_8();
  fig_note_initialize_category_with_default_work_cf();
  if (!a4)
  {
    return 4294949785;
  }

  FigReportingModeratorGetClassID();
  v7 = CMDerivedObjectCreate();
  if (!v7)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 8) = 0;
    *DerivedStorage = FigGetUpTimeNanoseconds();
    if (a2)
    {
      v9 = CFRetain(a2);
    }

    else
    {
      v9 = 0;
    }

    *(DerivedStorage + 168) = v9;
    *(DerivedStorage + 176) = 0x1F0B645F8;
    *(DerivedStorage + 64) = -1;
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, @"FRM_BundleName");
    }

    else
    {
      Value = 0;
    }

    FigUserExperienceScorerCreate(Value, (DerivedStorage + 216));
    v7 = 0;
    *a4 = 0;
  }

  return v7;
}

void streamReportingModeratorFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    v2 = *(DerivedStorage + 208);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = v1[12];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = v1[11];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = v1[21];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = v1[27];
    if (v6)
    {

      CFRelease(v6);
    }
  }
}

uint64_t streamReportingModeratorSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294949785;
  }

  v6 = DerivedStorage;
  result = CFEqual(a2, @"Timebase");
  if (!result)
  {
    return result;
  }

  if (!a3)
  {
    return 4294949785;
  }

  v8 = CFGetTypeID(a3);
  if (v8 != CMTimebaseGetTypeID())
  {
    return 4294949785;
  }

  v9 = *(v6 + 208);
  *(v6 + 208) = a3;
  CFRetain(a3);
  if (v9)
  {
    CFRelease(v9);
  }

  return 0;
}

uint64_t streamModeratorProcessEventAndCopyKeyArray(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  v157 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294949785;
  if (!a3 || !DerivedStorage)
  {
    return result;
  }

  v149 = 0;
  HIDWORD(v148) = 0;
  v147 = a3;
  switch(a2)
  {
    case 106:
      result = fsrm_getInt32FromAggregatedSessionStats(*(DerivedStorage + 168), 0x1F0B5A678, &v148 + 1);
      if (result)
      {
        return result;
      }

      goto LABEL_34;
    case 101:
LABEL_34:
      fsrm_updateProcessMemoryAndCPUSession(DerivedStorage);
      break;
    case 105:
      v10 = *(DerivedStorage + 168);
      v11 = qword_1ED4CA5B8;
      goto LABEL_31;
    case 115:
      v10 = *(DerivedStorage + 168);
      v11 = qword_1ED4CA5C0;
LABEL_31:
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 200);
      if (v22)
      {
        v22(v10, 0x1F0B64678, v11);
      }

      break;
    case 1001:
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - *(DerivedStorage + 184) >= 30.0)
      {
        bzero(buffer, 0x1D0uLL);
        v13 = getpid();
        if (!proc_pid_rusage(v13, 6, buffer))
        {
          v14 = v156;
          if (qword_1ED4CA5C8 != -1)
          {
            dispatch_once(&qword_1ED4CA5C8, &__block_literal_global_10);
          }

          v15 = *&mach_absolute_time_to_s_tmscale * v14 / 1000000000.0;
          v16 = *(DerivedStorage + 192);
          if (v16 == 0.0 || (*(DerivedStorage + 184) != 0.0 ? (v17 = v15 < v16) : (v17 = 1), v17))
          {
            *(DerivedStorage + 184) = Current;
            *(DerivedStorage + 192) = v15;
          }

          else if (*(*(CMBaseObjectGetVTable() + 16) + 72))
          {
            v137 = OUTLINED_FUNCTION_292();
            v138(v137);
          }

          if (*(*(CMBaseObjectGetVTable() + 16) + 72))
          {
            v18 = OUTLINED_FUNCTION_292();
            v19(v18);
          }

          *(DerivedStorage + 184) = Current;
          *(DerivedStorage + 192) = v15;
        }
      }

      break;
    case 2001:
    case 2002:
      if (*(*(CMBaseObjectGetVTable() + 16) + 96))
      {
        v20 = OUTLINED_FUNCTION_292();
        v21(v20);
      }

      break;
    case 3001:
      fsrm_updateExpensiveNetworkStats(DerivedStorage);
      break;
    default:
      v9 = 0;
      goto LABEL_36;
  }

  v9 = HIDWORD(v148);
LABEL_36:
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v24 = UpTimeNanoseconds;
  v25 = *(DerivedStorage + 8);
  if (*DerivedStorage)
  {
    v26 = (UpTimeNanoseconds - *DerivedStorage) / 0xF4240uLL;
    switch(v25)
    {
      case 0:
        v27 = 0x1F0B65998;
        goto LABEL_45;
      case 1:
        v27 = 0x1F0B65978;
        goto LABEL_45;
      case 2:
        LODWORD(v28) = *(DerivedStorage + 12);
        if (v28 >= 0)
        {
          v28 = v28;
        }

        else
        {
          v28 = -v28;
        }

        v29 = v26 * v28 / 0x64;
        fsrm_addToSessionStatsCountValue(DerivedStorage, 0x1F0B658D8, v26);
        fsrm_addToSessionStatsCountValue(DerivedStorage, 0x1F0B658F8, v29);
        v30.i64[0] = v29;
        v30.i64[1] = v26;
        v31 = vaddq_s64(*(DerivedStorage + 120), v30);
        *(DerivedStorage + 104) = vaddq_s64(*(DerivedStorage + 104), v30);
        *(DerivedStorage + 120) = v31;
        break;
      case 3:
        fsrm_addToSessionStatsCountValue(DerivedStorage, 0x1F0B65958, v26);
        v27 = 0x1F0B434F8;
LABEL_45:
        fsrm_addToSessionStatsCountValue(DerivedStorage, v27, v26);
        break;
      default:
        break;
    }
  }

  *DerivedStorage = v24;
  v32 = a2 - 101;
  v145 = a4;
  switch(a2)
  {
    case 'e':
      if (*(*(CMBaseObjectGetVTable() + 16) + 88))
      {
        v33 = OUTLINED_FUNCTION_396();
        v34(v33);
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 88))
      {
        v35 = OUTLINED_FUNCTION_396();
        v36(v35);
      }

      *(DerivedStorage + 104) = 0;
      *(DerivedStorage + 112) = 0;
      goto LABEL_113;
    case 'f':
    case 'h':
    case 'l':
      goto LABEL_113;
    case 'g':
      *(DerivedStorage + 32) = v24;
      v25 = 3;
      goto LABEL_113;
    case 'i':
      if (*(*(OUTLINED_FUNCTION_10_8() + 16) + 64))
      {
        v39 = OUTLINED_FUNCTION_396();
        v40(v39);
      }

      if (!*(DerivedStorage + 88) && !*(DerivedStorage + 96))
      {
        fsrm_copyPlayerIndicatedBitrate(*(DerivedStorage + 168), DerivedStorage);
      }

      if (*(DerivedStorage + 64) != -1)
      {
        goto LABEL_62;
      }

      LODWORD(buffer[0]) = 0;
      if (!fsrm_getInt32FromAggregatedSessionStats(*(DerivedStorage + 168), 0x1F0B422D8, buffer))
      {
        *(DerivedStorage + 64) = buffer[0];
LABEL_62:
        if (*(DerivedStorage + 68) == -1)
        {
          LODWORD(buffer[0]) = 0;
          if (!fsrm_getInt32FromAggregatedSessionStats(*(DerivedStorage + 168), 0x1F0B42B78, buffer))
          {
            *(DerivedStorage + 68) = buffer[0];
          }
        }
      }

LABEL_113:
      v82 = 0;
      *(DerivedStorage + 8) = v25;
      goto LABEL_114;
    case 'j':
      if (v9)
      {
        *(DerivedStorage + 12) = v9;
        v25 = 2;
        v43 = 16;
      }

      else
      {
        v25 = 1;
        v43 = 40;
      }

      *(DerivedStorage + v43) = v24;
      if (*(*(CMBaseObjectGetVTable() + 16) + 88))
      {
        v78 = OUTLINED_FUNCTION_396();
        v79(v78);
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 88))
      {
        v80 = OUTLINED_FUNCTION_396();
        v81(v80);
      }

      *(DerivedStorage + 120) = 0;
      *(DerivedStorage + 128) = 0;
      goto LABEL_113;
    case 'k':
      fsrm_setSessionEndReasonIfFatalError(DerivedStorage, *(DerivedStorage + 176), 0, 0x1F0B65A58, 0x1F0B65A98, 0x1F0B65A78);
      if (*(*(OUTLINED_FUNCTION_10_8() + 16) + 64))
      {
        v41 = OUTLINED_FUNCTION_396();
        v42(v41);
      }

      goto LABEL_113;
    case 'm':
      buffer[0] = 0;
      v44 = *(DerivedStorage + 168);
      v45 = *(DerivedStorage + 176);
      v46 = *(DerivedStorage + 88);
      v47 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v47)
      {
        v47(v44, v45, 0x1F0B423F8, v46);
      }

      v48 = *(DerivedStorage + 168);
      v49 = *(DerivedStorage + 176);
      v50 = *(DerivedStorage + 96);
      v51 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v51)
      {
        v51(v48, v49, 0x1F0B42418, v50);
      }

      v52 = *(*(OUTLINED_FUNCTION_12_6() + 16) + 144);
      if (v52 && !v52(v50, 0, 0x1F0B42498, buffer))
      {
        v53 = buffer[0];
        *(DerivedStorage + 80) = buffer[0];
        if (!v53)
        {
          goto LABEL_80;
        }

        if (*(*(OUTLINED_FUNCTION_18_5() + 16) + 64))
        {
          v54 = OUTLINED_FUNCTION_784();
          v55(v54);
        }

        if (!buffer[0])
        {
LABEL_80:
          fsrm_copyPlayerIndicatedBitrate(*(DerivedStorage + 168), DerivedStorage);
          if (*(*(OUTLINED_FUNCTION_18_5() + 16) + 64))
          {
            v56 = OUTLINED_FUNCTION_784();
            v57(v56);
          }

          fsrm_calculatePlayTimeAndUpdateTimeWeightedStats(DerivedStorage, DerivedStorage);
        }
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 88))
      {
        v58 = OUTLINED_FUNCTION_784();
        v59(v58);
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 88))
      {
        v60 = OUTLINED_FUNCTION_784();
        v61(v60);
      }

      *(DerivedStorage + 104) = 0;
      *(DerivedStorage + 112) = 0;
      *(DerivedStorage + 24) = v24;
      goto LABEL_113;
    case 'n':
      result = fsrm_calculatePlayTimeAndUpdateTimeWeightedStats(DerivedStorage, DerivedStorage);
      *(DerivedStorage + 8) = v25;
      if (result)
      {
        return result;
      }

      buffer[0] = 0;
      *&v152 = 0;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!Mutable)
      {
        return 4294949786;
      }

      v131 = Mutable;
      if (*(*(CMBaseObjectGetVTable() + 16) + 8))
      {
        v132 = OUTLINED_FUNCTION_396();
        v133(v132);
      }

      FigCFDictionaryGetInt64IfPresent();
      FigCFDictionaryGetInt64IfPresent();
      v134 = buffer[0];
      v135 = v152;
      CFRelease(v131);
      if (v134 <= 0 && v135 < 1)
      {
        return 4294949783;
      }

      v82 = 1;
LABEL_114:
      FigGetUpTimeNanoseconds();
      *buffer = *MEMORY[0x1E6960C70];
      v156 = *(MEMORY[0x1E6960C70] + 16);
      if (*(DerivedStorage + 208))
      {
        v83 = fsrm_copyEventKeyArray(a2);
        if (v83)
        {
          v84 = v83;
          if (FigCFArrayContainsValue())
          {
            TimeClampedAboveAnchorTime = CMTimebaseGetTimeClampedAboveAnchorTime();
            v86 = *(DerivedStorage + 168);
            v94 = OUTLINED_FUNCTION_11_8(TimeClampedAboveAnchorTime, v87, v88, v89, v90, v91, v92, v93, v139, v141, v143, v145, v147, v148, v149, v150, v151, v152, v153, v154, *buffer, v156);
            VTable = CMBaseObjectGetVTable();
            v104 = *(VTable + 16);
            v103 = VTable + 16;
            v105 = *(v104 + 88);
            if (v105)
            {
              v103 = v105(v86, @"playerStats", 0x1F0B43538, v94);
            }

            v106 = *(DerivedStorage + 168);
            v107 = OUTLINED_FUNCTION_11_8(v103, v96, v97, v98, v99, v100, v101, v102, v140, v142, v144, v146, v147, v148, v149, v150, v151, v152, v153, v154, *buffer, v156);
            v108 = *(*(CMBaseObjectGetVTable() + 16) + 88);
            if (v108)
            {
              v108(v106, @"playerStats", 0x1F0B43558, (v107 * 1000.0));
            }
          }

          CFRelease(v84);
        }
      }

      if ((a2 & 0xFFFFFFFB) == 0x69)
      {
        LODWORD(buffer[0]) = 0;
        if (!fsrm_getInt32FromAggregatedSessionStats(*(DerivedStorage + 168), 0x1F0B42B78, buffer))
        {
          FigUserExperienceSetCurrentRank(*(DerivedStorage + 216), buffer[0]);
        }

LABEL_127:
        v109 = 0;
        if (a2 != 106 || !HIDWORD(v148))
        {
LABEL_135:
          if ((a2 | 2) != 0x67 && (a2 != 106 || !HIDWORD(v148)))
          {
            goto LABEL_142;
          }

          v112 = 0;
LABEL_137:
          if (*(DerivedStorage + 40))
          {
            if (*(*(OUTLINED_FUNCTION_10_8() + 16) + 88))
            {
              v113 = OUTLINED_FUNCTION_1_25();
              v114(v113);
            }

            *(DerivedStorage + 40) = 0;
          }

          if (v112)
          {
LABEL_144:
            v115 = *(DerivedStorage + 168);
            v116 = *(*(CMBaseObjectGetVTable() + 16) + 152);
            if (v116)
            {
              v116(v115, 0, 0x1F0B42478, &v149);
            }

            if (*(*(OUTLINED_FUNCTION_18_5() + 16) + 80))
            {
              v117 = OUTLINED_FUNCTION_784();
              v118(v117);
            }

            goto LABEL_148;
          }

LABEL_142:
          if (a2 != 106 || !HIDWORD(v148))
          {
            goto LABEL_148;
          }

          goto LABEL_144;
        }

LABEL_131:
        if (*(DerivedStorage + 32))
        {
          if (*(*(OUTLINED_FUNCTION_10_8() + 16) + 88))
          {
            v110 = OUTLINED_FUNCTION_1_25();
            v111(v110);
          }

          *(DerivedStorage + 32) = 0;
        }

        goto LABEL_135;
      }

      if (a2 == 101)
      {
        FigUserExperienceReportSessionEnd(*(DerivedStorage + 216));
        FigUserExperienceCalculateScore(*(DerivedStorage + 216));
        v109 = 1;
        goto LABEL_131;
      }

      if (a2 == 103)
      {
        LODWORD(buffer[0]) = 0;
        FigUserExperienceReportStall(*(DerivedStorage + 216));
        if (!fsrm_getInt32FromAggregatedSessionStats(*(DerivedStorage + 168), 0x1F0B42B78, buffer))
        {
          FigUserExperienceSetCurrentRank(*(DerivedStorage + 216), buffer[0]);
        }

        if (*(DerivedStorage + 24) && *(*(OUTLINED_FUNCTION_10_8() + 16) + 88))
        {
          v122 = OUTLINED_FUNCTION_1_25();
          v123(v122);
        }

        if (*(DerivedStorage + 16))
        {
          if (*(*(OUTLINED_FUNCTION_10_8() + 16) + 88))
          {
            v124 = OUTLINED_FUNCTION_1_25();
            v125(v124);
          }

          *(DerivedStorage + 16) = 0;
        }

        v126 = *(DerivedStorage + 168);
        v127 = *(*(CMBaseObjectGetVTable() + 16) + 144);
        if (v127)
        {
          v127(v126, 0, 0x1F0B66AB8, &v147 + 8);
          v109 = BYTE8(v147);
          if (!*(&v147 + 1))
          {
LABEL_183:
            v112 = 1;
            goto LABEL_137;
          }

          if (*(*(OUTLINED_FUNCTION_10_8() + 16) + 88))
          {
            v128 = OUTLINED_FUNCTION_1_25();
            v129(v128);
          }
        }

        v109 = 0;
        goto LABEL_183;
      }

      if (a2 != 111)
      {
        if (a2 == 106)
        {
          LODWORD(buffer[0]) = 0;
          LODWORD(v152) = 0;
          if (!fsrm_getInt32FromAggregatedSessionStats(*(DerivedStorage + 168), 0x1F0B5A678, buffer) && !fsrm_getInt32FromAggregatedSessionStats(*(DerivedStorage + 168), 0x1F0B42B78, &v152))
          {
            FigUserExperienceReportRateChange(*(DerivedStorage + 216), v152, buffer[0]);
          }
        }

        goto LABEL_127;
      }

      LODWORD(buffer[0]) = 0;
      LODWORD(v152) = 0;
      if (!fsrm_getInt32FromAggregatedSessionStats(*(DerivedStorage + 168), 0x1F0B42B98, buffer) && !fsrm_getInt32FromAggregatedSessionStats(*(DerivedStorage + 168), 0x1F0B429F8, &v152))
      {
        FigUserExperienceReportVariantCompleted(*(DerivedStorage + 216), buffer[0], v152);
      }

      v109 = 0;
LABEL_148:
      if (!*(*(OUTLINED_FUNCTION_10_8() + 16) + 88))
      {
        return 4294954514;
      }

      v119 = OUTLINED_FUNCTION_396();
      result = v120(v119);
      if (!result)
      {
        if ((v82 | v109))
        {
          fsrm_reportAggregatedTimeWeightedStats(DerivedStorage);
        }

        *v147 = fsrm_copyEventKeyArray(a2);
        if (v145 && (v32 > 0xC || ((1 << v32) & 0x1801) == 0))
        {
          if (_MergedGlobals_25)
          {
            v121 = CFRetain(_MergedGlobals_25);
          }

          else
          {
            v121 = 0;
          }

          result = 0;
          *v145 = v121;
        }

        else
        {
          return 0;
        }
      }

      return result;
    case 'o':
      buffer[0] = 0;
      v151 = 0;
      *&v152 = 0;
      v150 = 0;
      v62 = *(DerivedStorage + 168);
      if (*(*(CMBaseObjectGetVTable() + 16) + 144))
      {
        v63 = OUTLINED_FUNCTION_783();
        if (!v64(v63))
        {
          if (*(*(OUTLINED_FUNCTION_12_6() + 16) + 144))
          {
            v65 = OUTLINED_FUNCTION_783();
            if (!v66(v65) && *(DerivedStorage + 144) * *(DerivedStorage + 136) < v152 * buffer[0])
            {
              v67 = *(*(OUTLINED_FUNCTION_12_6() + 16) + 48);
              if (v67)
              {
                if (!v67(v62, 1, 0x1F0B658F8, &v151))
                {
                  if (*(*(OUTLINED_FUNCTION_12_6() + 16) + 144))
                  {
                    v68 = OUTLINED_FUNCTION_783();
                    if (!v69(v68))
                    {
                      v70 = v152;
                      *(DerivedStorage + 136) = buffer[0];
                      *(DerivedStorage + 144) = v70;
                      v62 = *(DerivedStorage + 168);
                      v71 = v150;
                      v141 = v151;
                      v143 = *(DerivedStorage + 176);
                      v72 = *(*(CMBaseObjectGetVTable() + 16) + 88);
                      if (v72)
                      {
                        v72(v62, v143, 0x1F0B43158, v141 - v71);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      buffer[0] = 0;
      *&v152 = 0;
      v73 = *(*(OUTLINED_FUNCTION_12_6() + 16) + 48);
      if (v73)
      {
        if (!v73(v62, 1, 0x1F0B658F8, buffer))
        {
          if (*(*(OUTLINED_FUNCTION_12_6() + 16) + 144))
          {
            v74 = OUTLINED_FUNCTION_783();
            if (!v75(v74))
            {
              if (*(*(CMBaseObjectGetVTable() + 16) + 88))
              {
                v76 = OUTLINED_FUNCTION_396();
                v77(v76);
              }
            }
          }
        }
      }

      goto LABEL_113;
    default:
      if (a2 == 202)
      {
        fsrm_setSessionEndReasonIfFatalError(DerivedStorage, *(DerivedStorage + 176), 0x1F0B65858, 0x1F0B657D8, 0x1F0B65818, 0x1F0B657F8);
        if (*(*(OUTLINED_FUNCTION_18_5() + 16) + 64))
        {
          v37 = OUTLINED_FUNCTION_784();
          v38(v37);
        }

        *(DerivedStorage + 72) = v24;
      }

      goto LABEL_113;
  }
}

uint64_t streamModeratorResetStatsForEvent(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294949785;
  }

  v5 = DerivedStorage;
  result = 0;
  switch(a2)
  {
    case 'g':
      v7 = *(v5 + 168);
      v8 = *(v5 + 176);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v9)
      {
        v9(v7, v8, 0x1F0B66438);
      }

      v10 = *(v5 + 168);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 128);
      if (v11)
      {
        v11(v10, 0x1F0B66438);
      }

      if (!*(*(CMBaseObjectGetVTable() + 16) + 176))
      {
        return 0;
      }

      v12 = OUTLINED_FUNCTION_298();
      goto LABEL_36;
    case 'j':
      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v21 = OUTLINED_FUNCTION_266();
        v22(v21);
      }

      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v23 = OUTLINED_FUNCTION_266();
        v24(v23);
      }

      v25 = *(v5 + 168);
      v26 = *(v5 + 176);
      v27 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v27)
      {
        v27(v25, v26, 0x1F0B66458);
      }

      v28 = *(v5 + 168);
      v29 = *(v5 + 176);
      v30 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v30)
      {
        v30(v28, v29, 0x1F0B66478);
      }

      v31 = *(*(OUTLINED_FUNCTION_14_6() + 16) + 128);
      if (v31)
      {
        v31(v28, 0x1F0B66458);
      }

      v32 = *(*(OUTLINED_FUNCTION_14_6() + 16) + 128);
      if (v32)
      {
        v32(v28, 0x1F0B66478);
      }

      v33 = *(*(OUTLINED_FUNCTION_14_6() + 16) + 176);
      if (v33)
      {
        v33(v28, 0x1F0B66458);
      }

      v34 = *(v5 + 168);
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 176);
      if (v14)
      {
        v12 = v34;
        v13 = 0x1F0B66478;
LABEL_36:
        v14(v12, v13);
      }

      return 0;
    case 'm':
      goto LABEL_39;
    case 'n':
      if (*(*(CMBaseObjectGetVTable() + 16) + 136))
      {
        v35 = OUTLINED_FUNCTION_266();
        v36(v35);
      }

LABEL_39:
      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v37 = OUTLINED_FUNCTION_266();
        v38(v37);
      }

      v40 = *(v5 + 168);
      v39 = *(v5 + 176);
      v41 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (!v41)
      {
        return 0;
      }

      v42 = 0x1F0B658D8;
      break;
    case 'o':
      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v43 = OUTLINED_FUNCTION_266();
        v44(v43);
      }

      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v45 = OUTLINED_FUNCTION_266();
        v46(v45);
      }

      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v47 = OUTLINED_FUNCTION_266();
        v48(v47);
      }

      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v49 = OUTLINED_FUNCTION_266();
        v50(v49);
      }

      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v51 = OUTLINED_FUNCTION_266();
        v52(v51);
      }

      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v53 = OUTLINED_FUNCTION_266();
        v54(v53);
      }

      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v55 = OUTLINED_FUNCTION_266();
        v56(v55);
      }

      if (*(*(OUTLINED_FUNCTION_9_7() + 16) + 104))
      {
        v57 = OUTLINED_FUNCTION_266();
        v58(v57);
      }

      v40 = *(v5 + 168);
      v39 = *(v5 + 176);
      v41 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (!v41)
      {
        return 0;
      }

      v42 = 0x1F0B434F8;
      break;
    case 'p':
      if (CFArrayGetCount(qword_1ED4CA5A8) >= 1)
      {
        v15 = 0;
        do
        {
          v16 = *CFArrayGetValueAtIndex(qword_1ED4CA5A8, v15);
          v17 = *(*(OUTLINED_FUNCTION_14_6() + 16) + 112);
          if (v17)
          {
            v17(v2, v16);
          }

          ++v15;
        }

        while (v15 < CFArrayGetCount(qword_1ED4CA5A8));
      }

      if (CFArrayGetCount(qword_1ED4CA5B0) >= 1)
      {
        v18 = 0;
        do
        {
          v19 = *CFArrayGetValueAtIndex(qword_1ED4CA5B0, v18);
          v20 = *(*(OUTLINED_FUNCTION_14_6() + 16) + 112);
          if (v20)
          {
            v20(v2, v19);
          }

          ++v18;
        }

        while (v18 < CFArrayGetCount(qword_1ED4CA5B0));
      }

      return 0;
    default:
      return result;
  }

  v41(v40, v39, v42);
  return 0;
}

uint64_t streamModeratorPostProcessPayloadForEvent(int a1, int a2, CFDictionaryRef theDict)
{
  if (a2 != 112 || !theDict || CFDictionaryGetCount(theDict) < 1)
  {
    return 0;
  }

  ArrayNameFromKey = fsrm_createArrayNameFromKey(@"SST");
  v5 = fsrm_createArrayNameFromKey(@"AudSST");
  Value = CFDictionaryGetValue(theDict, ArrayNameFromKey);
  v7 = Value;
  if (Value && CFArrayGetCount(Value) >= 1)
  {
    v8 = 0;
    do
    {
      if (FigCFArrayGetInt64AtIndex())
      {
        break;
      }

      ++v8;
    }

    while (v8 < CFArrayGetCount(v7));
  }

  v9 = OUTLINED_FUNCTION_298();
  v11 = CFDictionaryGetValue(v9, v10);
  v12 = v11;
  if (v11)
  {
    if (CFArrayGetCount(v11) < 1)
    {
      goto LABEL_15;
    }

    v13 = 0;
    do
    {
      OUTLINED_FUNCTION_292();
      if (FigCFArrayGetInt64AtIndex())
      {
        break;
      }

      ++v13;
    }

    while (v13 < CFArrayGetCount(v12));
  }

  if (v7 | v12)
  {
LABEL_15:
    FigCFDictionarySetInt64();
    fsrm_replaceTimestampWithDelta(theDict, ArrayNameFromKey);
    v14 = OUTLINED_FUNCTION_298();
    fsrm_replaceTimestampWithDelta(v14, v15);
  }

  if (ArrayNameFromKey)
  {
    CFRelease(ArrayNameFromKey);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], theDict);
  if (Copy)
  {
    v17 = Copy;
    CFDictionaryApplyFunction(Copy, fsrm_stringifyArrayFunc, theDict);
    CFRelease(v17);
  }

  return 0;
}

uint64_t streamModeratorGetFollowupEventForEvent(uint64_t a1, int a2, _DWORD *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 && a4)
  {
    *a3 = 0;
    *a4 = 0;
    if ((a2 - 2001) <= 1)
    {
      v8 = DerivedStorage;
      MaxArrayCount = fsrm_getMaxArrayCount(*(DerivedStorage + 168), qword_1ED4CA5A8);
      if (fsrm_getMaxArrayCount(*(v8 + 168), qword_1ED4CA5B0) + MaxArrayCount <= 49)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if (a2 == 103)
    {
LABEL_7:
      *a3 = 112;
      *a4 = 0;
    }
  }

  return 0;
}

uint64_t fsrm_getInt32FromAggregatedSessionStats(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 4294949785;
  if (a1 && a3)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 40))
    {
      v6 = OUTLINED_FUNCTION_16_6();
      result = v7(v6);
      if (!result)
      {
        *a3 = 0;
      }
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t fsrm_updateExpensiveNetworkStats(uint64_t a1)
{
  result = FigGetUpTimeNanoseconds();
  v15 = 0;
  if (a1)
  {
    v3 = result;
    v4 = *(a1 + 152);
    if (v4)
    {
      v5 = (result - v4) / 0xF4240uLL;
      if (*(a1 + 160))
      {
        v6 = &kFigReportingEventKey_TimeWeightedIndicatedBitsExpensive;
      }

      else
      {
        v6 = &kFigReportingEventKey_TimeWeightedIndicatedBitsInexpensive;
      }

      if (*(a1 + 160))
      {
        v7 = &kFigReportingEventKey_TimeWeightedIndicatedAverageBitsExpensive;
      }

      else
      {
        v7 = &kFigReportingEventKey_TimeWeightedIndicatedAverageBitsInexpensive;
      }

      if (*(a1 + 160))
      {
        v8 = &kFigReportingEventKey_TimeWeightedVariantRankInPlayTimeExpensive;
      }

      else
      {
        v8 = &kFigReportingEventKey_TimeWeightedVariantRankInPlayTimeInexpensive;
      }

      if (*(a1 + 160))
      {
        v9 = &kFigReportingEventKey_TimeWeightedVariantBitrateRankInPlayTimeExpensive;
      }

      else
      {
        v9 = &kFigReportingEventKey_TimeWeightedVariantBitrateRankInPlayTimeInexpensive;
      }

      if (*(a1 + 160))
      {
        v10 = &kFigReportingEventKey_ExpensivePlayTimeWC;
      }

      else
      {
        v10 = &kFigReportingEventKey_InexpensivePlayTimeWC;
      }

      fsrm_addToSessionStatsCountValue(a1, *v6, v5 * *(a1 + 56));
      fsrm_addToSessionStatsCountValue(a1, *v7, v5 * *(a1 + 60));
      fsrm_addToSessionStatsCountValue(a1, *v8, v5 * *(a1 + 64));
      fsrm_addToSessionStatsCountValue(a1, *v9, v5 * *(a1 + 68));
      fsrm_addToSessionStatsCountValue(a1, *v10, v5);
    }

    *(a1 + 152) = v3;
    v11 = *(a1 + 168);
    VTable = CMBaseObjectGetVTable();
    v13 = *(VTable + 16);
    result = VTable + 16;
    v14 = *(v13 + 144);
    if (v14)
    {
      result = v14(v11, 0, 0x1F0B66238, &v15);
      LOBYTE(v14) = v15;
    }

    *(a1 + 160) = v14;
  }

  return result;
}

uint64_t fsrm_reportAggregatedTimeWeightedStats(uint64_t a1)
{
  fsrm_updateExpensiveNetworkStats(a1);
  if (*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v1 = OUTLINED_FUNCTION_198_0();
    v2(v1);
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v3 = OUTLINED_FUNCTION_198_0();
    v4(v3);
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v5 = OUTLINED_FUNCTION_198_0();
    v6(v5);
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v7 = OUTLINED_FUNCTION_198_0();
    v8(v7);
  }

  VTable = CMBaseObjectGetVTable();
  v11 = *(VTable + 16);
  result = VTable + 16;
  if (*(v11 + 48))
  {
    v12 = OUTLINED_FUNCTION_198_0();
    return v13(v12);
  }

  return result;
}

uint64_t fsrm_calculatePlayTimeAndUpdateTimeWeightedStats(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  v25 = 0;
  valuePtr = 0;
  number = 0;
  v21 = 0;
  v4 = *(a1 + 168);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (!v5 || v5(v4, 0, 0x1F0B658D8, &v25))
  {
    v25 = 1;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v6 = OUTLINED_FUNCTION_16_6();
    v7(v6);
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v8 = OUTLINED_FUNCTION_16_6();
    Int32FromAggregatedSessionStats = v9(v8);
    if (!Int32FromAggregatedSessionStats)
    {
      if (!v24 || (CFNumberGetValue(v24, kCFNumberSInt32Type, &valuePtr + 4), !HIDWORD(valuePtr)))
      {
LABEL_23:
        v19 = 0;
        goto LABEL_25;
      }

      Int32FromAggregatedSessionStats = fsrm_getInt32FromAggregatedSessionStats(*(a1 + 168), 0x1F0B422D8, &v21 + 1);
      if (!Int32FromAggregatedSessionStats)
      {
        Int32FromAggregatedSessionStats = fsrm_getInt32FromAggregatedSessionStats(*(a1 + 168), 0x1F0B42B78, &v21);
        if (!Int32FromAggregatedSessionStats)
        {
          fsrm_updateExpensiveNetworkStats(a1);
          v11 = v25;
          v13 = valuePtr;
          v12 = HIDWORD(valuePtr);
          v15 = v21;
          v14 = HIDWORD(v21);
          v26 = 0;
          if (a2 && v25 >= 1)
          {
            v16 = *(a2 + 88);
            if (v16)
            {
              CFNumberGetValue(v16, kCFNumberSInt32Type, &v26 + 4);
            }

            v17 = *(a2 + 96);
            if (v17)
            {
              CFNumberGetValue(v17, kCFNumberSInt32Type, &v26);
            }

            v18 = *(a2 + 56);
            if (!v18)
            {
              *(a2 + 56) = v12;
              v18 = v12;
            }

            if (!*(a2 + 60))
            {
              *(a2 + 60) = v13;
            }

            OUTLINED_FUNCTION_13_5(0x1F0B66138, v18);
            OUTLINED_FUNCTION_13_5(0x1F0B66158, *(a2 + 60));
            OUTLINED_FUNCTION_13_5(0x1F0B66178, *(a2 + 64));
            OUTLINED_FUNCTION_13_5(0x1F0B66218, *(a2 + 68));
            OUTLINED_FUNCTION_13_5(0x1F0B66198, SHIDWORD(v26));
            OUTLINED_FUNCTION_13_5(0x1F0B661B8, v26);
            fsrm_addToSessionStatsCountValue(a1, 0x1F0B661F8, v11);
            *(a2 + 48) = v11;
            *(a2 + 56) = v12;
            *(a2 + 60) = v13;
            *(a2 + 64) = v14;
            *(a2 + 68) = v15;
          }

          goto LABEL_23;
        }
      }
    }

    v19 = Int32FromAggregatedSessionStats;
  }

  else
  {
    v19 = 4294954514;
  }

LABEL_25:
  if (number)
  {
    CFRelease(number);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v19;
}

uint64_t fsrm_copyPlayerIndicatedBitrate(uint64_t a1, uint64_t a2)
{
  result = fsrm_copyCFTypeValueFromAggregatedStats(a1, 0x1F0B42678, a2 + 88);
  if (!result)
  {

    return fsrm_copyCFTypeValueFromAggregatedStats(a1, 0x1F0B42658, a2 + 96);
  }

  return result;
}

uint64_t fsrm_copyCFTypeValueFromAggregatedStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294949785;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    return 4294954514;
  }

  v3 = OUTLINED_FUNCTION_16_6();
  v5 = v4(v3);
  if (v5)
  {
    return v5;
  }

  else
  {
    return 4294949781;
  }
}

uint64_t fsrm_setTimeWeightedValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = 0;
  VTable = CMBaseObjectGetVTable();
  v14 = *(VTable + 16);
  result = VTable + 16;
  v15 = *(v14 + 48);
  if (v15)
  {
    result = v15(a1, a3, a4, &v20);
    if (!result)
    {
      if (a6)
      {
        v16 = v20;
        if (v20)
        {
          v17 = CMBaseObjectGetVTable();
          v18 = *(v17 + 16);
          result = v17 + 16;
          v19 = *(v18 + 88);
          if (v19)
          {
            return v19(a1, a2, a5, v16 / a6);
          }
        }
      }
    }
  }

  return result;
}

void *fsrm_createStaticDataStructuresFromEventKeys()
{
  v52 = *MEMORY[0x1E69E9840];
  memcpy(v51, &off_1E7479C38, sizeof(v51));
  v0 = OUTLINED_FUNCTION_4_9();
  result = CFArrayCreate(v0, v1, 398, 0);
  qword_1ED4CA5D8 = result;
  if (result)
  {
    memcpy(v51, off_1E747A8A8, 0x650uLL);
    v3 = OUTLINED_FUNCTION_4_9();
    result = CFArrayCreate(v3, v4, 202, 0);
    qword_1ED4CA5E8 = result;
    if (result)
    {
      memcpy(v51, off_1E747AEF8, 0x300uLL);
      v5 = OUTLINED_FUNCTION_4_9();
      result = CFArrayCreate(v5, v6, 96, 0);
      qword_1ED4CA5F8 = result;
      if (result)
      {
        memcpy(v51, off_1E747B1F8, 0x430uLL);
        v7 = OUTLINED_FUNCTION_4_9();
        result = CFArrayCreate(v7, v8, 134, 0);
        qword_1ED4CA5E0 = result;
        if (result)
        {
          memcpy(v51, off_1E747B628, 0x1E0uLL);
          v9 = OUTLINED_FUNCTION_4_9();
          result = CFArrayCreate(v9, v10, 60, 0);
          qword_1ED4CA5F0 = result;
          if (result)
          {
            memcpy(v51, &off_1E747B808, 0x678uLL);
            v11 = OUTLINED_FUNCTION_4_9();
            result = CFArrayCreate(v11, v12, 207, 0);
            qword_1ED4CA608 = result;
            if (result)
            {
              memcpy(v51, off_1E747BE80, 0x4E0uLL);
              v13 = OUTLINED_FUNCTION_4_9();
              result = CFArrayCreate(v13, v14, 156, 0);
              qword_1ED4CA600 = result;
              if (result)
              {
                memcpy(v51, off_1E747C360, 0x3A8uLL);
                v15 = OUTLINED_FUNCTION_4_9();
                result = CFArrayCreate(v15, v16, 117, 0);
                qword_1ED4CA610 = result;
                if (result)
                {
                  memcpy(v51, off_1E747C708, 0x430uLL);
                  v17 = OUTLINED_FUNCTION_4_9();
                  result = CFArrayCreate(v17, v18, 134, 0);
                  qword_1ED4CA618 = result;
                  if (result)
                  {
                    memcpy(v51, &off_1E747CB38, 0x48uLL);
                    v19 = OUTLINED_FUNCTION_4_9();
                    result = CFArrayCreate(v19, v20, 9, 0);
                    qword_1ED4CA630 = result;
                    if (result)
                    {
                      v51[0] = xmmword_1E747CB80;
                      *&v51[1] = 0;
                      v21 = OUTLINED_FUNCTION_4_9();
                      result = CFArrayCreate(v21, v22, 3, 0);
                      qword_1ED4CA640 = result;
                      if (result)
                      {
                        v51[0] = xmmword_1E747CB98;
                        v51[1] = *&off_1E747CBA8;
                        v51[2] = xmmword_1E747CBB8;
                        v23 = OUTLINED_FUNCTION_4_9();
                        result = CFArrayCreate(v23, v24, 6, 0);
                        qword_1ED4CA648 = result;
                        if (result)
                        {
                          v51[0] = xmmword_1E747CBC8;
                          v25 = OUTLINED_FUNCTION_4_9();
                          result = CFArrayCreate(v25, v26, 2, 0);
                          qword_1ED4CA650 = result;
                          if (result)
                          {
                            memcpy(v51, off_1E747CBD8, 0x3B8uLL);
                            v27 = OUTLINED_FUNCTION_4_9();
                            result = CFArrayCreate(v27, v28, 119, 0);
                            qword_1ED4CA620 = result;
                            if (result)
                            {
                              memcpy(v51, off_1E747CF90, 0x2B0uLL);
                              v29 = OUTLINED_FUNCTION_4_9();
                              result = CFArrayCreate(v29, v30, 86, 0);
                              qword_1ED4CA628 = result;
                              if (result)
                              {
                                memcpy(v51, off_1E747D240, 0xC8uLL);
                                v31 = OUTLINED_FUNCTION_4_9();
                                result = CFArrayCreate(v31, v32, 25, 0);
                                _MergedGlobals_25 = result;
                                if (result)
                                {
                                  memcpy(v51, off_1E747D308, 0x3A0uLL);
                                  v33 = OUTLINED_FUNCTION_4_9();
                                  result = CFArrayCreate(v33, v34, 116, 0);
                                  qword_1ED4CA678 = result;
                                  if (result)
                                  {
                                    v51[0] = xmmword_1E747D6A8;
                                    v35 = OUTLINED_FUNCTION_4_9();
                                    result = CFArrayCreate(v35, v36, 2, 0);
                                    qword_1ED4CA5D0 = result;
                                    if (result)
                                    {
                                      memcpy(v51, off_1E747D6B8, 0x358uLL);
                                      v37 = OUTLINED_FUNCTION_4_9();
                                      result = CFArrayCreate(v37, v38, 107, 0);
                                      qword_1ED4CA638 = result;
                                      if (result)
                                      {
                                        memcpy(v51, off_1E747DA10, 0x230uLL);
                                        v39 = OUTLINED_FUNCTION_4_9();
                                        result = CFArrayCreate(v39, v40, 70, 0);
                                        qword_1ED4CA658 = result;
                                        if (result)
                                        {
                                          memcpy(v51, off_1E747DC40, 0x370uLL);
                                          v41 = OUTLINED_FUNCTION_4_9();
                                          result = CFArrayCreate(v41, v42, 110, 0);
                                          qword_1ED4CA668 = result;
                                          if (result)
                                          {
                                            memcpy(v51, &off_1E747DFB0, 0x2D0uLL);
                                            v43 = OUTLINED_FUNCTION_4_9();
                                            result = CFArrayCreate(v43, v44, 90, 0);
                                            qword_1ED4CA670 = result;
                                            if (result)
                                            {
                                              memcpy(v51, off_1E747E280, 0x218uLL);
                                              v45 = OUTLINED_FUNCTION_4_9();
                                              result = CFArrayCreate(v45, v46, 67, 0);
                                              qword_1ED4CA5A8 = result;
                                              if (result)
                                              {
                                                memcpy(v51, off_1E747E498, 0x168uLL);
                                                v47 = OUTLINED_FUNCTION_4_9();
                                                result = CFArrayCreate(v47, v48, 45, 0);
                                                qword_1ED4CA5B0 = result;
                                                if (result)
                                                {
                                                  memcpy(v51, off_1E747E600, 0x238uLL);
                                                  v49 = OUTLINED_FUNCTION_4_9();
                                                  result = CFArrayCreate(v49, v50, 71, 0);
                                                  qword_1ED4CA660 = result;
                                                  if (result)
                                                  {
                                                    result = fsrm_createStaticKeySetFromEventKeys(off_1E747E838, 0x27uLL);
                                                    qword_1ED4CA5B8 = result;
                                                    if (result)
                                                    {
                                                      result = fsrm_createStaticKeySetFromEventKeys(off_1E747E970, 0xAuLL);
                                                      qword_1ED4CA5C0 = result;
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
    }
  }

  return result;
}

const void **fsrm_createStaticKeySetFromEventKeys(const void ***a1, size_t count)
{
  v2 = count;
  v4 = count;
  result = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
  if (result)
  {
    v6 = result;
    if (v2 >= 1)
    {
      v7 = v4;
      v8 = result;
      do
      {
        v9 = *a1++;
        *v8++ = *v9;
        --v7;
      }

      while (v7);
    }

    v10 = CFSetCreate(*MEMORY[0x1E695E480], result, v4, MEMORY[0x1E695E9F8]);
    free(v6);
    return v10;
  }

  return result;
}

__CFString *fsrm_createArrayNameFromKey(CFStringRef theString)
{
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
  v2 = MutableCopy;
  if (MutableCopy)
  {
    CFStringAppend(MutableCopy, @"_Array");
  }

  return v2;
}

void fsrm_replaceTimestampWithDelta(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v5 = Value;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v7 = Mutable;
      if (CFArrayGetCount(v5) >= 1)
      {
        v8 = 0;
        do
        {
          if (FigCFArrayGetInt64AtIndex())
          {
            FigCFArrayAppendInt64();
          }

          else
          {
            CFArrayAppendValue(v7, @"-");
          }

          ++v8;
        }

        while (v8 < CFArrayGetCount(v5));
      }

      OUTLINED_FUNCTION_266();
      FigCFDictionarySetValue();
      CFRelease(v7);
    }
  }

  CFDictionaryRemoveValue(a1, a2);
}

void fsrm_stringifyArrayFunc(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  if (a3)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      if (Mutable)
      {
        v6 = Mutable;
        if (CFArrayGetCount(a2) >= 1)
        {
          v7 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
            if (ValueAtIndex && (v9 = ValueAtIndex, v10 = CFNumberGetTypeID(), v10 == CFGetTypeID(v9)))
            {
              valuePtr = 0;
              CFNumberGetValue(v9, kCFNumberSInt64Type, &valuePtr);
              CFStringAppendFormat(v6, 0, @"%lld", valuePtr);
            }

            else
            {
              CFStringAppend(v6, @"-");
            }

            if (++v7 < CFArrayGetCount(a2))
            {
              CFStringAppend(v6, @",");
            }
          }

          while (v7 < CFArrayGetCount(a2));
        }

        v11 = OUTLINED_FUNCTION_298();
        CFDictionarySetValue(v11, v12, v6);
        CFRelease(v6);
      }
    }
  }
}

uint64_t HandleMutableCompositionMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  v7 = 0;
  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OUTLINED_FUNCTION_283();
  v4 = LookupMutableCompositionByObjectIDForConnection();
  if (v4)
  {
    return v4;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t HandleMutableCompositionCreateMutableCopyMessage(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_8_9();
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v7 = v6(*MEMORY[0x1E695E480], v4, cf);
    if (v7)
    {
      v10 = v7;
LABEL_6:
      v9 = 0;
      goto LABEL_8;
    }

    v8 = CreateServedMutableCompositionState(v3, &v12);
    v9 = v12;
    if (!v8)
    {
      OUTLINED_FUNCTION_7_8();
      v10 = FigXPCServerAssociateObjectWithConnection();
      if (v10)
      {
        goto LABEL_8;
      }

      xpc_dictionary_set_uint64(a3, *MEMORY[0x1E69615A0], cf[1]);
      goto LABEL_6;
    }

    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 4294954514;
  }

LABEL_8:
  DisposeServedMutableCompositionState(v9);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v10;
}

uint64_t HandleMutableCompositionCopyFormatReaderMessage(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_8_9();
  xpc_dictionary_get_BOOL(v6, "MakeImmutableSnapshot");
  v7 = FigXPCMessageCopyCFDictionary();
  if (v7)
  {
    goto LABEL_12;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    v10 = 4294954514;
    goto LABEL_7;
  }

  v8 = OUTLINED_FUNCTION_11_9();
  v7 = v9(v8);
  if (v7)
  {
LABEL_12:
    v10 = v7;
  }

  else
  {
    v10 = FigXPCFormatReaderServerAssociateCopiedNeighborFormatReader(v4, v13);
    if (!v10)
    {
      xpc_dictionary_set_uint64(a4, "FormatReader", value);
    }
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v10;
}

uint64_t HandleMutableCompositionCopyAssetMessage(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_8_9();
  xpc_dictionary_get_BOOL(v6, "MakeImmutableSnapshot");
  v7 = FigXPCMessageCopyCFDictionary();
  if (v7)
  {
    goto LABEL_12;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 208))
  {
    v10 = 4294954514;
    goto LABEL_7;
  }

  v8 = OUTLINED_FUNCTION_11_9();
  v7 = v9(v8);
  if (v7)
  {
LABEL_12:
    v10 = v7;
  }

  else
  {
    v10 = FigXPCAssetServerAssociateCopiedNeighborAsset(v4);
    if (!v10)
    {
      xpc_dictionary_set_uint64(a4, "Asset", value);
    }
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v10;
}

uint64_t HandleMutableCompositionGetTrackCompatibleWithAssetTrackMessage(uint64_t a1, int a2, xpc_object_t xdict, void *a4)
{
  LODWORD(value) = 0;
  int64 = xpc_dictionary_get_int64(xdict, "AssetTrackID");
  v7 = FigXPCMessageCopyCFURL();
  if (v7)
  {
    return v7;
  }

  OUTLINED_FUNCTION_10_9();
  v7 = mutableCompositionServer_checkSourceURLAccess();
  if (v7)
  {
    return v7;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    return 4294954514;
  }

  v9 = v8(a1, 0, int64, &value);
  if (!v9)
  {
    xpc_dictionary_set_int64(a4, "TrackID", value);
  }

  return v9;
}

uint64_t HandleMutableCompositionAddTrackMessage(uint64_t a1, xpc_object_t xdict, void *a3)
{
  LODWORD(value) = 0;
  int64 = xpc_dictionary_get_int64(xdict, "TrackID");
  uint64 = xpc_dictionary_get_uint64(xdict, "MediaType");
  v8 = FigXPCMessageCopyCFDictionary();
  if (v8)
  {
    return v8;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = v9(a1, uint64, 0, int64, &value);
  if (!v10)
  {
    xpc_dictionary_set_int64(a3, "TrackID", value);
  }

  return v10;
}

uint64_t HandleMutableCompositionCopyTrackEditListMessage(uint64_t a1, xpc_object_t xdict, void *a3)
{
  theData = 0;
  count = 0;
  int64 = xpc_dictionary_get_int64(xdict, "TrackID");
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = v6(a1, int64, &count, 0, 0);
  if (v7)
  {
    return v7;
  }

  v8 = malloc_type_calloc(count, 0x6CuLL, 0x1060040CB727B4DuLL);
  if (!v8)
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  v9 = v8;
  v10 = count;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v11)
  {
    v12 = v11(a1, int64, 0, v10, v9);
    if (v12 || (v12 = FigRemote_CreateEditArrayData(count, v9, *MEMORY[0x1E695E480], &theData), v12))
    {
      v15 = v12;
    }

    else
    {
      if (theData)
      {
        BytePtr = CFDataGetBytePtr(theData);
        Length = CFDataGetLength(theData);
        xpc_dictionary_set_data(a3, "EditListData", BytePtr, Length);
      }

      xpc_dictionary_set_int64(a3, "EditCount", count);
      v15 = 0;
    }
  }

  else
  {
    v15 = 4294954514;
  }

  v16 = count;
  if (count >= 1)
  {
    v17 = 0;
    v18 = v9 + 12;
    do
    {
      if (*v18)
      {
        CFRelease(*v18);
        v16 = count;
      }

      ++v17;
      v18 = (v18 + 108);
    }

    while (v16 > v17);
  }

  free(v9);
  if (theData)
  {
    CFRelease(theData);
  }

  return v15;
}

uint64_t HandleMutableCompositionAddFormatReaderForURLMessage(int a1, int a2, xpc_object_t xdict)
{
  cf = 0;
  v10 = 0;
  uint64 = xpc_dictionary_get_uint64(xdict, "FormatReader");
  v4 = FigXPCFormatReaderServerCopyFormatReaderForID(uint64, &cf);
  if (v4)
  {
    goto LABEL_6;
  }

  v4 = FigXPCMessageCopyCFURL();
  if (v4)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_10_9();
  v4 = mutableCompositionServer_checkSourceURLAccess();
  if (v4)
  {
    goto LABEL_6;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 64))
  {
    v5 = OUTLINED_FUNCTION_298();
    v4 = v6(v5);
LABEL_6:
    v7 = v4;
    goto LABEL_8;
  }

  v7 = 4294954514;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v7;
}

uint64_t HandleMutableCompositionCopyTrackPropertyMessage(int a1, xpc_object_t xdict)
{
  xpc_dictionary_get_int64(xdict, "TrackID");
  result = FigXPCMessageCopyCFString();
  if (!result)
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t HandleMutableCompositionSetTrackPropertyMessage(int a1, xpc_object_t xdict)
{
  xpc_dictionary_get_int64(xdict, "TrackID");
  result = FigXPCMessageCopyCFString();
  if (!result)
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t HandleMutableCompositionInsertAssetSegmentIntoTrackMessage(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  v21 = 0;
  v19 = *MEMORY[0x1E6960CC0];
  v20 = *(MEMORY[0x1E6960CC0] + 16);
  v17 = v19;
  v18 = v20;
  v15 = v19;
  v16 = v20;
  int64 = xpc_dictionary_get_int64(xdict, "DestTrackID");
  v7 = xpc_dictionary_get_int64(xdict, "AssetTrackID");
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v8 = FigXPCMessageCopyCFURL();
  if (v8)
  {
    goto LABEL_5;
  }

  v9 = *(a2 + 32);
  v13 = *(a2 + 16);
  v14 = v9;
  v8 = mutableCompositionServer_checkSourceURLAccess();
  if (v8)
  {
    goto LABEL_5;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v10)
  {
    v13 = v19;
    *&v14 = v20;
    v24 = v17;
    v25 = v18;
    v22 = v15;
    v23 = v16;
    v8 = v10(a1, int64, v21, v7, &v13, &v24, &v22);
LABEL_5:
    v11 = v8;
    goto LABEL_7;
  }

  v11 = 4294954514;
LABEL_7:
  if (v21)
  {
    CFRelease(v21);
  }

  return v11;
}

uint64_t HandleMutableCompositionInsertAssetSegmentMessage()
{
  OUTLINED_FUNCTION_4_20(MEMORY[0x1E6960CC0]);
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v0 = FigXPCMessageCopyCFURL();
  if (!v0)
  {
    if (!*(*(OUTLINED_FUNCTION_1_26() + 16) + 96))
    {
      return 4294954514;
    }

    v1 = OUTLINED_FUNCTION_298();
    return v2(v1);
  }

  return v0;
}

uint64_t HandleMutableCompositionInsertSegmentArrayIntoTrackMessage()
{
  FigXPCMessageGetCMTime();
  FigXPCMessageCopyCFArray();
  return 4294954516;
}

uint64_t HandleMutableCompositionAddAssetForURLMessage(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0;
  cf = 0;
  FigXPCMessageCopyCFURL();
  uint64 = xpc_dictionary_get_uint64(a3, "Asset");
  v5 = FigXPCAssetServerCopyAssetForID(uint64, &v10);
  if (v5)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_10_9();
  v5 = mutableCompositionServer_checkSourceURLAccess();
  if (v5)
  {
    goto LABEL_5;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 176))
  {
    v6 = OUTLINED_FUNCTION_298();
    v5 = v7(v6);
LABEL_5:
    v8 = v5;
    goto LABEL_7;
  }

  v8 = 4294954514;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v8;
}

uint64_t HandleMutableCompositionGetTrackCompatibleWithMutableCompositionTrackMessage(int a1, uint64_t a2, xpc_object_t xdict, void *a4)
{
  memset(value, 0, sizeof(value));
  int64 = xpc_dictionary_get_int64(xdict, "AssetTrackID");
  xpc_dictionary_get_uint64(xdict, "SourceCompositionID");
  v8 = LookupMutableCompositionByObjectIDForConnection();
  if (v8)
  {
    return v8;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 200);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = v9(a2, 0, int64, value);
  if (!v10)
  {
    xpc_dictionary_set_int64(a4, "TrackID", value[0]);
  }

  return v10;
}

uint64_t HandleMutableCompositionInsertMutableCompositionSegmentIntoTrackMessage(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_4_20(MEMORY[0x1E6960CC0]);
  int64 = xpc_dictionary_get_int64(v5, "AssetTrackID");
  v7 = xpc_dictionary_get_int64(a3, "DestTrackID");
  xpc_dictionary_get_uint64(a3, "SourceCompositionID");
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v8 = LookupMutableCompositionByObjectIDForConnection();
  if (!v8)
  {
    v9 = *(*(OUTLINED_FUNCTION_1_26() + 16) + 184);
    if (!v9)
    {
      return 4294954514;
    }

    v22 = v16;
    v23 = v17;
    v20 = v14;
    v21 = v15;
    v18 = v12;
    v19 = v13;
    return v9(a2, v7, 0, int64, &v22, &v20, &v18);
  }

  return v8;
}

uint64_t HandleMutableCompositionInsertMutableCompositionSegmentMessage()
{
  OUTLINED_FUNCTION_4_20(MEMORY[0x1E6960CC0]);
  xpc_dictionary_get_uint64(v0, "SourceCompositionID");
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v1 = LookupMutableCompositionByObjectIDForConnection();
  if (!v1)
  {
    if (!*(*(OUTLINED_FUNCTION_1_26() + 16) + 192))
    {
      return 4294954514;
    }

    v2 = OUTLINED_FUNCTION_298();
    return v3(v2);
  }

  return v1;
}

uint64_t CreateServedMutableCompositionState(uint64_t a1, void *a2)
{
  v3 = malloc_type_calloc(1uLL, 0x38uLL, 0x1020040B683858BuLL);
  if (!v3)
  {
    goto LABEL_6;
  }

  xpc_connection_get_audit_token();
  FigServer_GetClientPIDFromAuditToken();
  v4 = FigSandboxAssertionCreateForPID();
  if (v4)
  {
LABEL_7:
    v8 = v4;
    goto LABEL_5;
  }

  v3[1] = 0u;
  v3[2] = 0u;
  OUTLINED_FUNCTION_10_9();
  *(v3 + 1) = SecTaskCreateWithAuditToken(v5, v6);
  v7 = FigOSTransactionCreate();
  *(v3 + 6) = v7;
  if (!v7)
  {
LABEL_6:
    fig_log_get_emitter();
    v4 = FigSignalErrorAtGM();
    goto LABEL_7;
  }

  v8 = 0;
  *a2 = v3;
  v3 = 0;
LABEL_5:
  DisposeServedMutableCompositionState(v3);
  return v8;
}

uint64_t LookupMutableCompositionByObjectIDForConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleMutableCompositionSetTrackEditListMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleMutableCompositionSetTrackEditListMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleMutableCompositionSetTrackEditListMessage_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mutableCompositionServer_checkSourceURLAccess_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

const __CFArray *FigVCPGetTimedSampleAtTimeFromOrderedArray(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v3 = Count;
      v4 = 0;
      v22 = *MEMORY[0x1E6960C70];
      v21 = *MEMORY[0x1E6960C80];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
        *&v26 = v22;
        if (ValueAtIndex)
        {
          v26 = *(ValueAtIndex + 16);
        }

        else
        {
          ValueAtIndex = FigSignalErrorAtGM();
        }

        v27 = v26;
        v13 = OUTLINED_FUNCTION_1_27(ValueAtIndex, v6, v7, v8, v9, v10, v11, v12, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, v25, v21);
        if (v13 <= 0 && OUTLINED_FUNCTION_1_27(v13, v14, v15, v16, v17, v18, v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, v25, v27) >= 1)
        {
          break;
        }

        ++v4;
      }

      while (v3 != v4);
      return FigCFArrayGetValueAtIndex();
    }
  }

  return result;
}

uint64_t vcp_timedSample_createCommon_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vcp_timedSample_createCommon_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVCPTimedSampleGetPixelBuffer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVCPTimedSampleGetPixelBuffer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVCPTimedSampleGetSampleBuffer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVCPTimedSampleGetSampleBuffer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVCPTimedSampleGetTaggedBufferGroup_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVCPTimedSampleGetTaggedBufferGroup_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t manifoldServer_replyingMessageHandler(_xpc_connection_s *a1, void *a2, void *a3)
{
  v82 = 0;
  v80 = 0;
  v81 = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    goto LABEL_37;
  }

  OpCode = manifoldServer_copyManifoldAndCompanion(a1, a2, &v81, &v80);
  if (OpCode)
  {
    goto LABEL_37;
  }

  switch(v82)
  {
    case 1920300146:
      v43 = v80;
      v47 = v81;
      v48 = *(CMBaseObjectGetVTable() + 16);
      if (*v48 < 2uLL)
      {
        goto LABEL_68;
      }

      v49 = v48[7];
      if (!v49)
      {
        goto LABEL_68;
      }

      v46 = v49(v47);
      goto LABEL_65;
    case 779314548:
      OpCode = FigXPCHandleStdSetPropertyMessage();
      goto LABEL_37;
    case 1668310628:
      v50 = v81;
      cf = 0;
      Int32 = FigXPCMessageGetInt32();
      v52 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v52)
      {
        v53 = v52(v50, Int32, &cf);
        if (v53)
        {
          v19 = v53;
        }

        else
        {
          v19 = FigXPCMessageSetFormatDescription();
          if (!v19)
          {
            v54 = OUTLINED_FUNCTION_198_0();
            manifoldServer_copyPendingCallbacksIntoReply(v54, v55);
          }
        }
      }

      else
      {
        v19 = 4294954514;
      }

LABEL_4:
      v7 = cf;
      if (!cf)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
  }

  if (v82 != 1668575856)
  {
    if (v82 != 1718383464)
    {
      if (v82 == 1768121972)
      {
        v36 = v80;
        v37 = v81;
        cf = 0;
        v84 = 0;
        v85 = 0;
        v38 = FigXPCMessageGetInt32();
        if (xpc_dictionary_get_BOOL(a2, "installFormatDescriptionOrDecryptorChangedCallback"))
        {
          cf = manifoldServer_formatDescriptionOrDecryptorChangedCallback;
        }

        if (xpc_dictionary_get_BOOL(a2, "installPushSampleBufferCallback"))
        {
          v84 = manifoldServer_pushSampleBufferCallback;
        }

        if (xpc_dictionary_get_BOOL(a2, "installTrackEndedCallback"))
        {
          OUTLINED_FUNCTION_3_19();
          v85 = v39;
        }

        v40 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v40)
        {
          v24 = v40(v37, v38, &cf, v36);
          goto LABEL_58;
        }

LABEL_68:
        v19 = 4294954514;
        goto LABEL_6;
      }

      if (v82 != 1768186228)
      {
        if (v82 != 1768846945)
        {
          if (v82 != 1853056356)
          {
            if (v82 != 778268793)
            {
              v19 = 4294951138;
              goto LABEL_6;
            }

            v9 = v81;
            cf = 0;
            v88 = 0;
            blockBufferOut = 0;
            value = 0;
            v10 = FigXPCMessageCopyCFString();
            if (!v10)
            {
              v11 = cf;
              if (cf)
              {
                AllocatorForMedia = FigGetAllocatorForMedia();
                v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (!v13)
                {
                  goto LABEL_73;
                }

                v10 = v13(v9, v11, AllocatorForMedia, &blockBufferOut);
                if (!v10)
                {
                  if (FigCFEqual())
                  {
                    if (blockBufferOut)
                    {
                      v14 = CFGetTypeID(blockBufferOut);
                      if (v14 == FigAssetGetTypeID())
                      {
                        v15 = blockBufferOut;
                        v16 = FigGetAllocatorForMedia();
                        CMBaseObject = FigAssetGetCMBaseObject(v15);
                        v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                        if (v18)
                        {
                          v10 = v18(CMBaseObject, @"assetProperty_FormatReader", v16, &v88);
                          if (!v10)
                          {
                            if (!v88)
                            {
                              v19 = 0;
                              goto LABEL_138;
                            }

                            v19 = FigXPCFormatReaderServerAssociateCopiedNeighborFormatReader(a1, v88);
                            if (!v19)
                            {
                              xpc_dictionary_set_uint64(a3, "formatReader", value);
                            }

                            goto LABEL_136;
                          }

                          goto LABEL_143;
                        }

LABEL_73:
                        v19 = 4294954514;
                        goto LABEL_136;
                      }
                    }

LABEL_135:
                    v19 = 0;
                    goto LABEL_136;
                  }

                  if (FigCFEqual())
                  {
                    if (blockBufferOut)
                    {
                      v79 = CFGetTypeID(blockBufferOut);
                      if (v79 == CMBlockBufferGetTypeID())
                      {
                        FigXPCMessageSetBlockBuffer();
                      }
                    }

                    goto LABEL_135;
                  }

                  v10 = FigXPCMessageSetCFObject();
                }
              }

              else
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_1_11();
                v10 = FigSignalErrorAtGM();
              }
            }

LABEL_143:
            v19 = v10;
LABEL_136:
            if (v88)
            {
              CFRelease(v88);
            }

            goto LABEL_138;
          }

          v21 = v81;
          OSStatus = FigXPCMessageGetOSStatus();
          v23 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v23)
          {
            v24 = v23(v21, OSStatus);
LABEL_58:
            v19 = v24;
            if (v24)
            {
              goto LABEL_6;
            }

            v41 = OUTLINED_FUNCTION_198_0();
LABEL_67:
            manifoldServer_copyPendingCallbacksIntoReply(v41, v42);
            goto LABEL_6;
          }

          goto LABEL_68;
        }

        FigBaseObject = FigManifoldGetFigBaseObject(v81);
        if (!FigBaseObject)
        {
          v19 = 4294954516;
          goto LABEL_6;
        }

        v26 = FigBaseObject;
        v27 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (!v27)
        {
          goto LABEL_68;
        }

        OpCode = v27(v26);
LABEL_37:
        v19 = OpCode;
        goto LABEL_6;
      }

      if (v80)
      {
        CFArrayRemoveAllValues(*(v80 + 11));
        v20 = v80;
      }

      else
      {
        v20 = 0;
      }

      v56 = v81;
      cf = 0;
      v88 = 0;
      blockBufferOut = 0;
      v86 = 0;
      value = 0;
      int64 = xpc_dictionary_get_int64(a2, "dataStartReference");
      uint64 = xpc_dictionary_get_uint64(a2, "injectFlags");
      if (xpc_dictionary_get_value(a2, "emptyData"))
      {
        v59 = FigGetAllocatorForMedia();
        Empty = CMBlockBufferCreateEmpty(v59, 0, 0, &cf);
      }

      else
      {
        if (!xpc_dictionary_get_value(a2, "data"))
        {
          goto LABEL_82;
        }

        FigGetAllocatorForMedia();
        Empty = FigXPCMessageCopyBlockBufferUsingMemoryRecipient();
      }

      v19 = Empty;
      if (Empty)
      {
LABEL_123:
        if (value)
        {
          CFRelease(value);
        }

        if (v86)
        {
          CFRelease(v86);
        }

        if (blockBufferOut)
        {
          CFRelease(blockBufferOut);
        }

        if (v88)
        {
          CFRelease(v88);
        }

        goto LABEL_4;
      }

LABEL_82:
      if (xpc_dictionary_get_BOOL(a2, "UseAESCryptor"))
      {
        if (xpc_dictionary_get_BOOL(a2, "UseExistingAESCryptor"))
        {
          v61 = v20[14];
          if (v61)
          {
            v61 = CFRetain(v61);
          }

          blockBufferOut = v61;
LABEL_103:
          if (!v61)
          {
            goto LABEL_112;
          }

          updated = FigXPCMessageCopyCFData();
          if (!updated)
          {
            updated = FigXPCMessageCopyCFData();
            if (!updated)
            {
              v69 = value;
              if (!value)
              {
                goto LABEL_109;
              }

              v70 = blockBufferOut;
              v71 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (!v71)
              {
                goto LABEL_122;
              }

              updated = v71(v70, *MEMORY[0x1E69610D8], v69);
              if (!updated)
              {
LABEL_109:
                v72 = v86;
                if (!v86)
                {
                  goto LABEL_112;
                }

                v73 = blockBufferOut;
                v74 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (!v74)
                {
                  goto LABEL_122;
                }

                updated = v74(v73, *MEMORY[0x1E69610C8], v72);
                if (!updated)
                {
                  goto LABEL_112;
                }
              }
            }
          }

          goto LABEL_121;
        }

        v63 = v20[13];
        if (!v63)
        {
          v64 = FigGetAllocatorForMedia();
          updated = FigCPEProtectorCreateForScheme(v64, @"com.apple.basicAES", 0, (v20 + 13));
          if (updated)
          {
            goto LABEL_121;
          }

          v63 = v20[13];
        }

        v65 = FigGetAllocatorForMedia();
        v66 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (!v66)
        {
          goto LABEL_122;
        }

        updated = v66(v63, v65, 1, 0, &blockBufferOut);
        if (!updated)
        {
          v67 = v20[14];
          v68 = blockBufferOut;
          v20[14] = blockBufferOut;
          if (v68)
          {
            CFRetain(v68);
          }

          if (v67)
          {
            CFRelease(v67);
          }

          v61 = blockBufferOut;
          goto LABEL_103;
        }
      }

      else if (!xpc_dictionary_get_uint64(a2, "cryptorObjectID") || (FigGetAllocatorForMedia(), updated = FigCPECryptorRemoteRetainCopiedCryptor(), !updated))
      {
        if (!xpc_dictionary_get_uint64(a2, "audioCryptorObjectID") || (FigGetAllocatorForMedia(), updated = FigCPECryptorRemoteRetainCopiedCryptor(), !updated))
        {
LABEL_112:
          if (blockBufferOut)
          {
            CMSetAttachment(cf, @"FMFD_BufferDecryptor", blockBufferOut, 1u);
            if (v88)
            {
              CMSetAttachment(cf, @"FMFD_BufferAudioDecryptor", v88, 1u);
            }
          }

          if (xpc_dictionary_get_BOOL(a2, "timedMetadata"))
          {
            CMSetAttachment(cf, @"FBPAKey_TimedData", @"FBPA_TimedData_ICY", 1u);
          }

          updated = FigMemoryOriginUpdateRecipientStateFromXPCMessage();
          if (updated)
          {
            goto LABEL_121;
          }

          v75 = cf;
          v76 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v76)
          {
            updated = v76(v56, int64, uint64, v75);
            if (!updated)
            {
              v77 = OUTLINED_FUNCTION_198_0();
              manifoldServer_copyPendingCallbacksIntoReply(v77, v78);
              updated = FigMemoryRecipientAppendRecipientStateUpdateToXPCMessage();
            }

            goto LABEL_121;
          }

LABEL_122:
          v19 = 4294954514;
          goto LABEL_123;
        }
      }

LABEL_121:
      v19 = updated;
      goto LABEL_123;
    }

    v43 = v80;
    v44 = v81;
    v45 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v45)
    {
      goto LABEL_68;
    }

    v46 = v45(v44);
LABEL_65:
    v19 = v46;
    if (v46)
    {
      goto LABEL_6;
    }

    v41 = a3;
    v42 = v43;
    goto LABEL_67;
  }

  v28 = v81;
  cf = 0;
  blockBufferOut = 0;
  v29 = FigXPCMessageCopyCFString();
  if (v29)
  {
LABEL_145:
    v19 = v29;
    goto LABEL_138;
  }

  if (!cf)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    v29 = FigSignalErrorAtGM();
    goto LABEL_145;
  }

  v30 = FigXPCMessageGetInt32();
  v31 = cf;
  v32 = FigGetAllocatorForMedia();
  v33 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v33)
  {
    v19 = 4294954514;
    goto LABEL_138;
  }

  v29 = v33(v28, v30, v31, v32, &blockBufferOut);
  if (v29)
  {
    goto LABEL_145;
  }

  v19 = FigXPCMessageSetCFObject();
  if (!v19)
  {
    v34 = OUTLINED_FUNCTION_198_0();
    manifoldServer_copyPendingCallbacksIntoReply(v34, v35);
  }

LABEL_138:
  if (cf)
  {
    CFRelease(cf);
  }

  v7 = blockBufferOut;
  if (blockBufferOut)
  {
LABEL_5:
    CFRelease(v7);
  }

LABEL_6:
  if (v80)
  {
    CFRelease(v80);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  return v19;
}

uint64_t manifoldServer_noReplyMessageHandler(int a1, void *a2)
{
  v13 = 0;
  cf = 0;
  v12 = 0;
  OpCode = manifoldServer_copyManifoldAndCompanion(a1, a2, &v12, &cf);
  if (OpCode || (OpCode = FigXPCMessageGetOpCode(), OpCode))
  {
    v5 = OpCode;
  }

  else if (v13 == 1684632432)
  {
    v14 = 0;
    v15 = 0;
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    v7 = manifoldServer_copyManifoldAndCompanion(a1, a2, &v15, &v14);
    if (!v7)
    {
      FigBaseObject = FigManifoldGetFigBaseObject(v15);
      if (FigBaseObject)
      {
        v9 = FigBaseObject;
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v10)
        {
          v10(v9);
        }
      }

      OUTLINED_FUNCTION_198_0();
      v7 = FigXPCServerDisassociateObjectWithConnection();
    }

    v5 = v7;
    if (v14)
    {
      CFRelease(v14);
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    v5 = 4294951138;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v5;
}

uint64_t manifoldServer_copyManifoldAndCompanion(int a1, xpc_object_t xdict, void *a3, void *a4)
{
  if (!xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]))
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  v6 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v6)
  {
    return v6;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v7 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  return v7;
}

uint64_t manifoldServer_newTrackCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = manifoldServer_formatDescriptionOrDecryptorChangedCallback;
  v14[1] = manifoldServer_pushSampleBufferCallback;
  OUTLINED_FUNCTION_3_19();
  v14[2] = v7;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v8)
  {
    v9 = v8(a1, a4, v14, a2);
    if (v9 || (v9 = manifoldServer_ensurePendingCallbacksState(a2), v9))
    {
      v12 = v9;
    }

    else
    {
      empty = xpc_dictionary_create_empty();
      v11 = empty;
      if (empty)
      {
        xpc_dictionary_set_uint64(empty, "callbackType", 1uLL);
        FigXPCMessageSetInt32();
        FigXPCMessageSetInt32();
        xpc_array_append_value(*(a2 + 64), v11);
        v12 = 0;
      }

      else
      {
        fig_log_get_emitter();
        v12 = FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    v12 = 4294954514;
  }

  FigXPCRelease();
  return v12;
}

uint64_t manifoldServer_allNewTracksReadyCallback(uint64_t a1, uint64_t a2)
{
  if (!manifoldServer_ensurePendingCallbacksState(a2))
  {
    empty = xpc_dictionary_create_empty();
    if (empty)
    {
      xpc_dictionary_set_uint64(empty, "callbackType", 0);
      OUTLINED_FUNCTION_5_15();
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }
  }

  return FigXPCRelease();
}

uint64_t manifoldServer_errorCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = manifoldServer_ensurePendingCallbacksState(a3);
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    empty = xpc_dictionary_create_empty();
    if (empty)
    {
      xpc_dictionary_set_uint64(empty, "callbackType", 2uLL);
      FigXPCMessageSetInt32();
      FigXPCMessageSetOSStatus();
      FigXPCMessageSetCFDictionary();
      OUTLINED_FUNCTION_5_15();
      v5 = 0;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      v5 = FigSignalErrorAtGM();
    }
  }

  FigXPCRelease();
  return v5;
}

uint64_t manifoldServer_formatDescriptionOrDecryptorChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = manifoldServer_ensurePendingCallbacksState(a3);
  if (v7)
  {
    v11 = v7;
    goto LABEL_11;
  }

  empty = xpc_dictionary_create_empty();
  v9 = empty;
  if (!empty)
  {
    fig_log_get_emitter();
    ID = FigSignalErrorAtGM();
    goto LABEL_14;
  }

  xpc_dictionary_set_uint64(empty, "callbackType", 3uLL);
  FigXPCMessageSetInt32();
  if (a4)
  {
    ID = FigXPCMessageSetFormatDescription();
    if (ID)
    {
      goto LABEL_14;
    }
  }

  if (a5)
  {
    FigBasicAESCPECryptorGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      xpc_dictionary_set_BOOL(v9, "useDummyAESCryptor", 1);
LABEL_9:
      xpc_dictionary_set_uint64(v9, "cryptorObjectID", 0);
      goto LABEL_10;
    }

    ID = FigCPECryptorRemoteGetID();
    if (!ID)
    {
      goto LABEL_9;
    }

LABEL_14:
    v11 = ID;
    goto LABEL_11;
  }

LABEL_10:
  OUTLINED_FUNCTION_5_15();
  v11 = 0;
LABEL_11:
  FigXPCRelease();
  return v11;
}

uint64_t manifoldServer_pushSampleBufferCallback(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int64_t a5, const void *a6)
{
  v10 = manifoldServer_ensurePendingCallbacksState(a3);
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    empty = xpc_dictionary_create_empty();
    v12 = empty;
    if (empty)
    {
      xpc_dictionary_set_uint64(empty, "callbackType", 4uLL);
      FigXPCMessageSetInt32();
      xpc_dictionary_set_uint64(v12, "pushSampleFlags", a4);
      xpc_dictionary_set_int64(v12, "dataStartReference", a5);
      v13 = FigXPCMessageAddCMSampleBuffer();
      if (!v13)
      {
        xpc_array_append_value(*(a3 + 64), v12);
        CFArrayAppendValue(*(a3 + 88), a6);
      }
    }

    else
    {
      fig_log_get_emitter();
      v13 = FigSignalErrorAtGM();
    }
  }

  FigXPCRelease();
  return v13;
}

uint64_t manifoldServer_trackEndedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = manifoldServer_ensurePendingCallbacksState(a3);
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    empty = xpc_dictionary_create_empty();
    if (empty)
    {
      xpc_dictionary_set_uint64(empty, "callbackType", 5uLL);
      FigXPCMessageSetInt32();
      FigXPCMessageSetOSStatus();
      OUTLINED_FUNCTION_5_15();
      v5 = 0;
    }

    else
    {
      fig_log_get_emitter();
      v5 = FigSignalErrorAtGM();
    }
  }

  FigXPCRelease();
  return v5;
}

uint64_t manifoldServer_ensurePendingCallbacksState(uint64_t a1)
{
  if (*(a1 + 64))
  {
    return 0;
  }

  empty = xpc_array_create_empty();
  *(a1 + 64) = empty;
  if (empty)
  {
    return 0;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t __FigManifoldStartServer_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *(*(*a1 + 8) + 24) = result;
  return result;
}

uint64_t FigAlternateRejectSwitchDueToStallRisk(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *a4, CMTime *a5, double a6)
{
  v12 = *(a1 + 8);
  if (v12 || (v12 = *a1) != 0)
  {
    PeakBitRate = FigAlternateGetPeakBitRate(v12);
  }

  else
  {
    PeakBitRate = 0;
  }

  v13 = FigAlternateGetPeakBitRate(a3);
  IsIFrameOnly = FigAlternateIsIFrameOnly(a3);
  IsAudioOnly = FigAlternateIsAudioOnly(a3);
  v16 = 1.0;
  v17 = 0.0;
  if (!a2)
  {
    goto LABEL_42;
  }

  v18 = IsAudioOnly;
  v60 = *a1;
  v19 = *(a1 + 52);
  PlaylistType = FigMediaPlaylistGetPlaylistType(a2);
  FigMediaPlaylistGetMediaSegmentSpecifiers(a2);
  FirstValue = FigCFArrayGetFirstValue();
  if (FirstValue)
  {
    v21 = FigMediaSegmentSpecifierGetBitRate(FirstValue) != 0.0;
    if (IsIFrameOnly)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v21 = 0;
    if (IsIFrameOnly)
    {
      goto LABEL_42;
    }
  }

  time = *a4;
  Seconds = CMTimeGetSeconds(&time);
  v23 = 0.0;
  if ((a5->flags & 0x1D) == 1)
  {
    time = *a5;
    v23 = CMTimeGetSeconds(&time);
  }

  DateStampCount = FigMediaPlaylistGetDateStampCount(a2);
  v25 = DateStampCount;
  if (v13 > PeakBitRate && !*(a1 + 53))
  {
    goto LABEL_42;
  }

  if (!v19)
  {
    v16 = 13.0;
    v17 = 14.0;
LABEL_41:
    if (v13 <= PeakBitRate)
    {
      v35 = v13 > a6 && v19 != 0;
      return v17 < v16 || v35;
    }

LABEL_42:
    v35 = 0;
    return v17 < v16 || v35;
  }

  v16 = fmpu_bitsRequiredToSwitch(a1, a2, v13, DateStampCount, Seconds, v23);
  if ((*(a1 + 80) != 0 || !v21) && v13 > a6)
  {
    v26 = PeakBitRate;
    if (v13 <= PeakBitRate)
    {
      v26 = a6;
    }

    v16 = *(a1 + 56) * fmpu_bitsRequiredToSwitch(a1, a2, v26, v25, Seconds, v23) + v16;
  }

  if (v18)
  {
    v17 = v23 * a6 * 0.5;
  }

  else
  {
    v17 = v23 * a6;
  }

  if (v17 < v16)
  {
    goto LABEL_42;
  }

  if (!v21)
  {
    goto LABEL_41;
  }

  v62 = 0;
  time.value = 0;
  v27 = FigAlternateCopyStreamBitrateCurve(a3, 0);
  v28 = 1.0;
  if (!v27)
  {
    AverageBitRate = FigAlternateGetAverageBitRate(v60);
    v30 = FigAlternateGetAverageBitRate(a3);
    if (!AverageBitRate || !v30)
    {
      AverageBitRate = FigAlternateGetPeakBitRate(v60);
      v30 = FigAlternateGetPeakBitRate(a3);
    }

    if (AverageBitRate && v30)
    {
      v28 = v30 / AverageBitRate;
    }
  }

  if (*(a1 + 8))
  {
    v31 = v13 <= PeakBitRate;
  }

  else
  {
    v31 = 1;
  }

  v32 = !v31;
  if (v31)
  {
    v34 = PlaylistType;
    v33 = *(a1 + 76) || FigMediaPlaylistGetPlaylistType(a2) != 2 || !FigMediaPlaylistHasIndependentSegments(a2) || *(a1 + 54) == 0;
  }

  else
  {
    v33 = 0;
    v34 = PlaylistType;
  }

  v38 = 0.0;
  if (v34 != 2)
  {
    v39 = v32;
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v41 = UpTimeNanoseconds - FigMediaPlaylistGetLastModifiedTime(a2);
    v32 = v39;
    v38 = v41;
  }

  if (*(a1 + 81))
  {
    v42 = 0;
  }

  else
  {
    v42 = v13 > PeakBitRate && *(a1 + 8) == 0;
  }

  v44 = *(a1 + 24);
  v45 = *(a1 + 32);
  v59 = v38;
  if (!*(a1 + 76))
  {
    v42 = (a6 >= 2 * v13) & v42;
  }

  v46 = *(a1 + 16);
  v47 = *(a1 + 82);
  v48 = *(a1 + 40) / 1000000000.0;
  v49 = FigAlternateIsIFrameOnly(v60);
  v50 = 1.0;
  if (!v49)
  {
    v50 = fabsf(*(a1 + 48));
  }

  LOBYTE(v57) = v47;
  v16 = 0.0;
  FigMediaPlaylistUtilityDetermineSegmentToSwitchTo(a2, v27, 0, v44, v45, 0, v42, v32, Seconds + v23, v23, PeakBitRate, a6 / v28, v59, v48, 0.0, v50, v33, 0, v46, v57, 0, &v62, &time);
  value = time.value;
  if (time.value)
  {
    v52 = v23 < 30.0 && v23 > 0.0;
    v53 = 0.0;
    v17 = 0.0;
    while (1)
    {
      v17 = v17 + FigMediaSegmentSpecifierGetTimeInSeconds(value) * a6;
      TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(value);
      v16 = v16 + TimeInSeconds * FigMediaSegmentSpecifierGetBitRate(value) * v28;
      if (v17 < v16)
      {
        v35 = 0;
        goto LABEL_84;
      }

      if (v28 * FigMediaSegmentSpecifierGetBitRate(value) > a6 && v52)
      {
        break;
      }

      v55 = FigMediaSegmentSpecifierGetTimeInSeconds(value);
      NextSegment = FigMediaSegmentSpecifierGetNextSegment(value);
      v35 = 0;
      if (NextSegment)
      {
        value = NextSegment;
        v53 = v53 + v55;
        if (v53 < 30.0)
        {
          continue;
        }
      }

      goto LABEL_84;
    }

    v35 = 1;
  }

  else
  {
    v35 = 0;
    v17 = 0.0;
  }

LABEL_84:
  if (v27)
  {
    CFRelease(v27);
  }

  return v17 < v16 || v35;
}