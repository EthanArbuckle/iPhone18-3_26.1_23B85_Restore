void bufferedAudioEngine_getBufferLevelTimeEstimateForHose(uint64_t a1@<X1>, CMTime *a2@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x277CC08F0];
  *&a2->value = *MEMORY[0x277CC08F0];
  a2->epoch = *(v5 + 16);
  bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&v12, &time1);
  value = time1.value;
  timescale = time1.timescale;
  if (v12)
  {
    APSLogErrorAt();
  }

  else
  {
    flags = time1.flags;
    if (time1.flags)
    {
      epoch = time1.epoch;
      if (*(DerivedStorage + 322) && *(a1 + 33))
      {
        bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose(a1, &time1);
      }

      else
      {
        bufferedAudioEngine_getLastSentRemoteMediaTimeForHose(a1, &time1);
      }

      v13 = time1.value;
      v8 = time1.flags;
      v14 = time1.timescale;
      v9 = time1.epoch;
      if (time1.flags)
      {
        v10.epoch = time1.epoch;
        time1.value = value;
        time1.timescale = timescale;
        time1.flags = flags;
        time1.epoch = epoch;
        v10.value = v13;
        v10.timescale = v14;
        v10.flags = v8;
        if (CMTimeCompare(&time1, &v10) <= 0)
        {
          v10.epoch = epoch;
          time1.value = v13;
          time1.timescale = v14;
          time1.flags = v8;
          time1.epoch = v9;
          v10.value = value;
          v10.timescale = timescale;
          v10.flags = flags;
          CMTimeSubtract(a2, &time1, &v10);
        }
      }
    }
  }
}

uint64_t bufferedAudioEngine_isHoseInStereoPair()
{
  v5 = *MEMORY[0x277CBED10];
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48) || (v0 = OUTLINED_FUNCTION_137(), v1(v0)) || !*(*(CMBaseObjectGetVTable() + 8) + 48) || (v2 = OUTLINED_FUNCTION_137(), v3(v2)))
  {
    APSLogErrorAt();
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

uint64_t bufferedAudioEngine_handleSetRateToOneWithReceiverAnchor(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 640);
  v4 = *(DerivedStorage + 896);
  v23[0] = *MEMORY[0x277CEA038];
  *(v23 + 12) = *(MEMORY[0x277CEA038] + 12);
  if (*DerivedStorage || (v5 = DerivedStorage, *(DerivedStorage + 884) != 7) || (CMBaseObjectGetDerivedStorage(), !*(v5 + 640)))
  {
    v17 = 0;
    goto LABEL_27;
  }

  v6 = 804;
  if ((*(v5 + 816) & 1) == 0)
  {
    v6 = 780;
  }

  v7 = 812;
  if ((*(v5 + 816) & 1) == 0)
  {
    v7 = 788;
  }

  v8 = *(v5 + v6);
  v24 = *(v5 + v7);
  if (!*(v5 + 576))
  {
    SampleRateFromTransportAudioFormat = bufferedAudioEngine_getSampleRateFromTransportAudioFormat();
    *v22 = v8;
    *&v22[8] = v24;
    CMTimeConvertScale(buf, v22, SampleRateFromTransportAudioFormat, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v8 = *buf;
    v24 = *&buf[8];
    APSAudioTransportTimeMakeWithRTPTime();
    if (!a1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *buf = v8;
  *&buf[8] = v24;
  APSAudioTransportTimeMakeWithMediaTime();
  if (a1)
  {
LABEL_10:
    CFRetain(a1);
  }

LABEL_11:
  v9 = LogCategoryCopyOSLogHandle();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x277D86220];
  }

  v11 = CUObfuscatedPtr();
  if (v11)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_1", &unk_2222A918B, buf, 2u);
    }
  }

  v13 = *(*(v5 + 640) + 16);
  *v22 = v23[0];
  *&v22[12] = *(v23 + 12);
  APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v15 = *(ProtocolVTable + 16)) != 0)
  {
    v16 = *(v15 + 56);
    if (v16)
    {
      *buf = *v22;
      *&buf[12] = *&v22[12];
      v17 = v16(v13, v4, buf, bufferedAudioEngine_hoseSetRateCallbackCompletionHandler, a1);
    }

    else
    {
      v17 = 4294954514;
      bufferedAudioEngine_hoseSetRateCallbackCompletionHandler(v13, MEMORY[0x277CEA038], MEMORY[0x277CEA280], 4294954514, a1);
    }
  }

  else
  {
    v17 = 4294954508;
  }

  *(*(v5 + 640) + 148) = 3;
  *buf = v8;
  *&buf[8] = v24;
  APSAudioHoseMetricCollectorSetPlaybackStateForHose();
  v18 = *(v5 + 944);
  v19 = *(v3 + 16);
  *(v5 + 944) = v19;
  if (v19)
  {
    CFRetain(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

LABEL_27:
  CMBaseObjectGetDerivedStorage();
  return v17;
}

uint64_t bufferedAudioEngine_handleSetRateToOne(const void *a1)
{
  v248 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = MEMORY[0x277CC0898];
  if (*DerivedStorage || *(DerivedStorage + 884) != 6)
  {
    v62 = 0;
    goto LABEL_95;
  }

  v220 = DerivedStorage;
  CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  *&v247.value = *v3;
  v5 = *(v3 + 16);
  v247.epoch = v5;
  *&v246.value = *&v247.value;
  v246.epoch = v5;
  v244 = *(v3 + 12);
  v245 = *(v3 + 20);
  v223 = *MEMORY[0x277CC08F0];
  v237 = *MEMORY[0x277CC08F0];
  v6 = *(MEMORY[0x277CC08F0] + 16);
  v238 = v6;
  *v236 = *MEMORY[0x277CEA038];
  *&v236[12] = *(MEMORY[0x277CEA038] + 12);
  *&v234.value = *&v247.value;
  v234.epoch = v5;
  v228 = *&v247.value;
  *&v232.value = *&v247.value;
  v232.epoch = v5;
  if (*(v4 + 884) != 6)
  {
    goto LABEL_82;
  }

  v7 = v4;
  CMBaseObjectGetDerivedStorage();
  if (*(v7 + 916))
  {
    v247 = *(v7 + 904);
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
    {
      if (a1)
      {
        v10 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v10 = "";
      }

      v12 = *(v7 + 530);
      OUTLINED_FUNCTION_66();
      Seconds = CMTimeGetSeconds(time);
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(time, HostTimeClock);
      v171 = *&Seconds;
      v174 = CMTimeGetSeconds(time);
      v165 = v10;
      v168 = v12;
      v162 = a1;
      goto LABEL_19;
    }
  }

  else
  {
    v8 = CMClockGetHostTimeClock();
    CMClockGetTime(&v247, v8);
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
    {
      if (a1)
      {
        v9 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v9 = "";
      }

      v11 = *(v7 + 530);
      OUTLINED_FUNCTION_66();
      v171 = CMTimeGetSeconds(time);
      v165 = v9;
      v168 = v11;
      v162 = a1;
LABEL_19:
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }
  }

  v15 = (v7 + 780);
  v16 = *(v7 + 916);
  if (*(v7 + 816))
  {
    if (v16)
    {
      v237 = v223;
      v238 = v6;
    }

    else
    {
      bufferedAudioEngine_getStartUpDelay(a1, 1, &v237);
    }

    MaxFirstAvailableTransportTimestampForStartUp = bufferedAudioEngine_getMaxFirstAvailableTransportTimestampForStartUp();
    if (MaxFirstAvailableTransportTimestampForStartUp)
    {
      v62 = MaxFirstAvailableTransportTimestampForStartUp;
      IsValid = APSLogErrorAt();
      goto LABEL_93;
    }

    OUTLINED_FUNCTION_83(MaxFirstAvailableTransportTimestampForStartUp, v24, v25, v26, v27, v28, v29, v30, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v217, v220, v223, *(&v223 + 1), v228, *(&v228 + 1), v232.value, *&v232.timescale, v232.epoch, v233, v234.value, *&v234.timescale, v234.epoch, v235, *v236, *&v236[8], *&v236[16], *&v236[24]);
    v31 = APSAudioTransportTimeCopyDebugDesc();
    OUTLINED_FUNCTION_83(v31, v32, v33, v34, v35, v36, v37, v38, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v218, v221, v224, v226, v229, v231, v232.value, *&v232.timescale, v232.epoch, v233, v234.value, *&v234.timescale, v234.epoch, v235, *v236, *&v236[8], *&v236[16], *&v236[24]);
    IsValid = APSAudioTransportTimeIsValid();
    if (IsValid)
    {
      if (*v236 == 2)
      {
        *&v223 = v31;
        v51 = *(v7 + 804);
        rhs.epoch = *(v7 + 820);
        *&rhs.value = v51;
        *&lhs.value = *&v236[4];
        OUTLINED_FUNCTION_23_3();
        CMTimeMaximum(v54, v52, v53);
      }

      else
      {
        if (*v236 != 1)
        {
          v61 = 0;
          v62 = 4294960587;
          if (!v31)
          {
            goto LABEL_78;
          }

          goto LABEL_77;
        }

        *&v223 = v31;
        CMTimeMake(&rhs, (*&v236[4] - *(v7 + 804)) & ~((*&v236[4] - *(v7 + 804)) >> 31), *(v7 + 812));
        v50 = *(v7 + 804);
        lhs.epoch = *(v7 + 820);
        *&lhs.value = v50;
        CMTimeAdd(time, &lhs, &rhs);
      }

      v47 = *time;
      v244 = *&time[12];
      v48 = *&time[8];
      v49 = *&time[20];
    }

    else
    {
      *&v223 = v31;
      v47 = *(v7 + 804);
      v48 = *(v7 + 812);
      v244 = *(v7 + 816);
      v49 = *(v7 + 824);
    }

    v245 = v49;
    v55 = *(v7 + 812);
    rhs.value = v47;
    *&rhs.flags = v244;
    rhs.timescale = v48;
    HIDWORD(rhs.epoch) = v49;
    v56 = 1;
    CMTimeConvertScale(time, &rhs, v55, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v17 = *time;
    v244 = *&time[12];
    v18 = *&time[8];
    v245 = *&time[20];
    OUTLINED_FUNCTION_65();
    *&lhs.value = v237;
    OUTLINED_FUNCTION_23_3();
    CMTimeAdd(v59, v57, v58);
    OUTLINED_FUNCTION_113();
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
    {
      if (a1)
      {
        v60 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v60 = "";
      }

      v216 = *(v7 + 530);
      OUTLINED_FUNCTION_22_2();
      v135 = CMTimeGetSeconds(time);
      v136 = OUTLINED_FUNCTION_51(*(v7 + 820), *(v7 + 804));
      v137 = *(v7 + 804);
      v138 = *(v7 + 812);
      v192 = OUTLINED_FUNCTION_49(v139, v140, v141, v142, v143, v144, v145, v146, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v216, v217, v220, v223, *(&v223 + 1), v228, *(&v228 + 1), v232.value, *&v232.timescale, v232.epoch, v233, v234.value, *&v234.timescale, v234.epoch, v235, *v236, *&v236[8], *&v236[16], *&v236[24], v237, v238);
      v186 = v138;
      v189 = v223;
      v183 = v137;
      v180 = *&v136;
      v174 = v17;
      v177 = v18;
      v165 = v60;
      v168 = v213;
      v171 = *&v135;
      v162 = a1;
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
      v56 = 1;
    }
  }

  else
  {
    if (v16)
    {
      v237 = v223;
      v238 = v6;
    }

    else
    {
      bufferedAudioEngine_getStartUpDelay(a1, 0, &v237);
    }

    v17 = v15->n128_u64[0];
    v18 = *(v7 + 788);
    v244 = *(v7 + 792);
    v245 = *(v7 + 800);
    OUTLINED_FUNCTION_65();
    *&lhs.value = v237;
    OUTLINED_FUNCTION_23_3();
    CMTimeAdd(v21, v19, v20);
    OUTLINED_FUNCTION_113();
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
    {
      if (a1)
      {
        v22 = (CMBaseObjectGetDerivedStorage() + 392);
      }

      else
      {
        v22 = "";
      }

      *&v223 = *(v7 + 530);
      OUTLINED_FUNCTION_22_2();
      v63 = CMTimeGetSeconds(time);
      v64 = OUTLINED_FUNCTION_51(*(v7 + 796), *v15);
      v65 = v15->n128_u64[0];
      v66 = *(v7 + 788);
      v189 = OUTLINED_FUNCTION_49(v67, v68, v69, v70, v71, v72, v73, v74, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v217, v220, v223, *(&v223 + 1), v228, *(&v228 + 1), v232.value, *&v232.timescale, v232.epoch, v233, v234.value, *&v234.timescale, v234.epoch, v235, *v236, *&v236[8], *&v236[16], *&v236[24], v237, v238);
      v183 = v65;
      v186 = v66;
      v180 = *&v64;
      v174 = v17;
      v177 = v18;
      v165 = v22;
      v168 = v223;
      v171 = *&v63;
      v162 = a1;
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    *&v223 = 0;
    v56 = 0;
  }

  v75 = CFGetAllocator(a1);
  v76 = CMTimebaseCreateWithSourceClock(v75, *(v7 + 480), (v7 + 872));
  if (v76)
  {
    v62 = v76;
LABEL_89:
    IsValid = APSLogErrorAt();
    v61 = 0;
    goto LABEL_76;
  }

  APSTimedInfoManagerResume();
  v77 = mach_absolute_time();
  OUTLINED_FUNCTION_49(v77, v78, v79, v80, v81, v82, v83, v84, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v217, v220, v223, *(&v223 + 1), v228, *(&v228 + 1), v232.value, *&v232.timescale, v232.epoch, v233, v234.value, *&v234.timescale, v234.epoch, v235, *v236, *&v236[8], *&v236[16], *&v236[24], v237, v238);
  MillisecondsToUpTicks();
  bufferedAudioEngine_recordStartTimebaseTimeStampForRTC();
  CMClockGetHostTimeClock();
  OUTLINED_FUNCTION_66();
  CMSyncConvertTime(&v246, time, v85, v86);
  OUTLINED_FUNCTION_22_2();
  rhs = v246;
  v88 = CMTimebaseSetRateAndAnchorTime(v87, 1.0, time, &rhs);
  if (v88)
  {
    v62 = v88;
    goto LABEL_89;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
  {
    if (a1)
    {
      v89 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v89 = "";
    }

    v90 = *(v7 + 530);
    v91 = *(v7 + 1032);
    *time = v17;
    *&time[12] = v244;
    v177 = v17;
    v180 = v18;
    v174 = OUTLINED_FUNCTION_75(v245);
    v168 = v90;
    v171 = v91;
    v162 = a1;
    v165 = v89;
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  v92 = *MEMORY[0x277CBECE8];
  values = *(v7 + 1032);
  keys = @"ContentType";
  v61 = CFDictionaryCreate(v92, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v61)
  {
    *time = v17;
    *&time[12] = v244;
    *&time[8] = v18;
    *&time[20] = v245;
    APSTimedInfoManagerAddTimedInfo();
    bufferedAudioEngine_getPlaybackStartupTime(&v232);
    v93 = CMClockGetHostTimeClock();
    CMClockGetTime(time, v93);
    OUTLINED_FUNCTION_65();
    v94 = CMTimeSubtract(&v234, &rhs, time);
    if (gLogCategory_APAudioEngineBuffered <= 50)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || (v94 = OUTLINED_FUNCTION_4(), v94))
      {
        if (a1)
        {
          v94 = CMBaseObjectGetDerivedStorage();
          v102 = (v94 + 392);
        }

        else
        {
          v102 = "";
        }

        v103 = *(v7 + 530);
        v104 = OUTLINED_FUNCTION_62(v94, v95, v96, v97, v98, v99, v100, v101, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v217, v220, v223, *(&v223 + 1), v228, *(&v228 + 1), v232.value, *&v232.timescale, v232.epoch, v233, *&v234.value, v234.epoch);
        *time = *&v232.value;
        v171 = *&v104;
        v174 = OUTLINED_FUNCTION_81(v232.epoch);
        v165 = v102;
        v168 = v103;
        v162 = a1;
        OUTLINED_FUNCTION_2_0();
        v94 = LogPrintF();
      }
    }

    OUTLINED_FUNCTION_62(v94, v95, v96, v97, v98, v99, v100, v101, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v217, v220, v223, *(&v223 + 1), v228, *(&v228 + 1), v232.value, *&v232.timescale, v232.epoch, v233, *&v234.value, v234.epoch);
    OUTLINED_FUNCTION_6_7();
    v105 = LogCategoryCopyOSLogHandle();
    v106 = v105;
    if (v105)
    {
      v107 = v105;
    }

    else
    {
      v107 = MEMORY[0x277D86220];
    }

    v108 = CUObfuscatedPtr();
    if (v108)
    {
      v109 = v108;
      v110 = os_signpost_enabled(v107);
      if (v110)
      {
        v118 = *(v7 + 530);
        v119 = OUTLINED_FUNCTION_62(v110, v111, v112, v113, v114, v115, v116, v117, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v219, v222, v225, v227, v230, *(&v230 + 1), v232.value, *&v232.timescale, v232.epoch, v233, *&v234.value, v234.epoch);
        *time = *&v232.value;
        v120 = OUTLINED_FUNCTION_81(v232.epoch);
        *time = 67109632;
        *&time[4] = v118;
        *&time[8] = 2048;
        *&time[10] = v119;
        *&time[18] = 2048;
        *&time[20] = v120;
        _os_signpost_emit_with_name_impl(&dword_221FFA000, v107, OS_SIGNPOST_EVENT, v109, "AIRPLAY_SIGNPOST_AUDIOENGINE_FIRST_AUDIBLE_TIME_RELATIVE_TO_NOW_MS", "[0x%04X] RemoteMediaTimebase started. First audible time relative to now: %1.6f (startup time: %1.3f)\n", time, 0x1Cu);
      }
    }

    if (v106)
    {
      os_release(v106);
    }

    v121 = CMBaseObjectGetDerivedStorage();
    v122 = CMClockGetHostTimeClock();
    CMClockGetTime(time, v122);
    *(v121 + 1732) = *time;
    *(v121 + 1748) = *&time[16];
    *(v121 + 1756) = *(v121 + 648);
    v123 = CMBaseObjectGetDerivedStorage();
    *time = *(v123 + 756);
    *&time[16] = *(v123 + 772);
    rhs = *(v123 + 780);
    CMTimeSubtract(&lhs, time, &rhs);
    v124 = CMTimeGetSeconds(&lhs);
    *(v121 + 1760) = v124;
    bufferedAudioEngine_getStreamInfoForStartup(a1, (v121 + 1764), (v121 + 1768), (v121 + 1772), (v121 + 1776), (v121 + 1782), (v121 + 1778), (v121 + 1780));
    *(v121 + 1783) = v56;
    OUTLINED_FUNCTION_9_5();
    kdebug_trace();
    bufferedAudioEngine_logStartupTime(a1);
    *(v7 + 888) = *(v7 + 896);
    v133 = OUTLINED_FUNCTION_86(v125, v126, v127, v128, v129, v130, v131, v132, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v219, v222, v225, v227, v230);
    IsValid = bufferedAudioEngine_updatePlaybackState(v133, 8);
    v62 = 0;
  }

  else
  {
    IsValid = APSLogErrorAt();
    v62 = 4294951816;
  }

LABEL_76:
  v3 = MEMORY[0x277CC0898];
  v31 = v223;
  if (v223)
  {
LABEL_77:
    CFRelease(v31);
  }

LABEL_78:
  if (!v61)
  {
    if (v62)
    {
      goto LABEL_93;
    }

LABEL_82:
    v62 = bufferedAudioEngine_handleSetRateToOne_sendAnchorToAllHoses(a1);
    if (!v62)
    {
      OUTLINED_FUNCTION_53((v220 + 1116));
      *(v134 + 1080) = v228;
      *(v134 + 1096) = v5;
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  CFRelease(v61);
  if (!v62)
  {
    goto LABEL_82;
  }

LABEL_93:
  v147 = OUTLINED_FUNCTION_86(IsValid, v40, v41, v42, v43, v44, v45, v46, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v217, v220, v223, *(&v223 + 1), v228);
  bufferedAudioEngine_updatePlaybackState(v147, 3);
LABEL_94:
  APSLogErrorAt();
LABEL_95:
  CMBaseObjectGetDerivedStorage();
  v148 = CMBaseObjectGetDerivedStorage();
  *v236 = *v3;
  *&v236[16] = *(v3 + 16);
  v247.value = *(v3 + 12);
  v247.timescale = *(v3 + 20);
  v246.value = v247.value;
  v246.timescale = v247.timescale;
  if (*(v148 + 952))
  {
    v149 = v148;
    if (v62)
    {
      v150 = *(v3 + 8);
    }

    else
    {
      CMTimebaseGetTimeClampedAboveAnchorTime();
      v151 = *time;
      v247.value = *&time[12];
      v152 = *&time[8];
      v247.timescale = *&time[20];
      v153 = *(v149 + 872);
      CMClockGetHostTimeClock();
      OUTLINED_FUNCTION_85();
      CMSyncConvertTime(v236, time, v153, v154);
      rhs.value = v151;
      *&rhs.flags = v247.value;
      rhs.timescale = v152;
      HIDWORD(rhs.epoch) = v247.timescale;
      *&lhs.value = *(v149 + 780);
      OUTLINED_FUNCTION_23_3();
      CMTimeSubtract(v157, v155, v156);
      v246.value = *&time[12];
      v150 = *&time[8];
      v246.timescale = *&time[20];
    }

    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_134();
      OUTLINED_FUNCTION_75(v158);
      OUTLINED_FUNCTION_85();
      CMTimeGetSeconds(time);
      OUTLINED_FUNCTION_51(*(v149 + 796), *(v149 + 780));
      OUTLINED_FUNCTION_51(*(v149 + 820), *(v149 + 804));
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_134();
    *&time[8] = v150;
    *&time[20] = v159;
    rhs = *v236;
    bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(a1, v62, time, &rhs, v160);
    *(v149 + 952) = 0;
    *(v149 + 960) = 0;
  }

  return v62;
}

uint64_t bufferedAudioEngine_handleSetRateToOne_sendAnchorToAllHoses(const void *a1)
{
  v55 = **&MEMORY[0x277CC0898];
  v53 = 0uLL;
  v54 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *v52 = *MEMORY[0x277CEA038];
  *&v52[12] = *(MEMORY[0x277CEA038] + 12);
  *v51 = *MEMORY[0x277CEA038];
  *&v51[12] = *&v52[12];
  if (*(DerivedStorage + 884) != 8)
  {
    return 0;
  }

  v3 = DerivedStorage;
  CMBaseObjectGetDerivedStorage();
  *(v3 + 840) = 0;
  *(v3 + 936) = 0;
  *(v3 + 928) = 0;
  HostTimeClock = CMClockGetHostTimeClock();
  CMSyncGetTime(&v55, HostTimeClock);
  v5 = *(v3 + 328);
  v6 = OUTLINED_FUNCTION_11_5();
  v7 = CMClockConvertHostTimeToSystemUnits(v6);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v8)
  {
    v9 = v8(v5, v7, &v53);
    if (!v9)
    {
LABEL_33:
      *(v3 + 832) = 0;
      v19 = CMClockGetHostTimeClock();
      v20 = *(v3 + 872);
      *time = v55;
      CMSyncConvertTime(v59, time, v19, v20);
      v21 = *&v59[12];
      if ((v59[12] & 0x1D) != 1)
      {
        OUTLINED_FUNCTION_7_4();
        APSLogErrorAt();
        return APSSignalErrorAt();
      }

      v22 = *v59;
      v23 = *&v59[8];
      v24 = *&v59[16];
      MaxFirstAvailableTransportTimestampForStartUp = bufferedAudioEngine_getMaxFirstAvailableTransportTimestampForStartUp();
      if (MaxFirstAvailableTransportTimestampForStartUp)
      {
        v15 = MaxFirstAvailableTransportTimestampForStartUp;
        APSLogErrorAt();
        return v15;
      }

      *v59 = *v52;
      *&v59[12] = *&v52[12];
      cf = APSAudioTransportTimeCopyDebugDesc();
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        *v59 = v22;
        *&v59[8] = v23;
        *&v59[12] = v21;
        *&v59[16] = v24;
        CMTimeGetSeconds(v59);
        *v59 = *(v3 + 780);
        *&v59[16] = *(v3 + 796);
        CMTimeGetSeconds(v59);
        v26 = OUTLINED_FUNCTION_11_5();
        CMTimeGetSeconds(v26);
        v27 = CMClockGetHostTimeClock();
        CMClockGetTime(v59, v27);
        CMTimeGetSeconds(v59);
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }

      if (*(v3 + 576))
      {
        *v59 = v22;
        *&v59[8] = v23;
        *&v59[12] = v21;
        *&v59[16] = v24;
        APSAudioTransportTimeMakeWithMediaTime();
      }

      else
      {
        SampleRateFromTransportAudioFormat = bufferedAudioEngine_getSampleRateFromTransportAudioFormat();
        *time = v22;
        *&time[8] = v23;
        *&time[12] = v21;
        *&time[16] = v24;
        CMTimeConvertScale(v59, time, SampleRateFromTransportAudioFormat, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        APSAudioTransportTimeMakeWithRTPTime();
        *v51 = *v59;
        *&v51[12] = *&v59[12];
      }

      v29 = *(v3 + 640);
      if (v29)
      {
        v46 = *MEMORY[0x277CE9FB8];
        v45 = *MEMORY[0x277CBED28];
        while (1)
        {
          v30 = *(v3 + 888);
          if (v29[9] == v30)
          {
            break;
          }

          v31 = gLogCategory_APAudioEngineBuffered;
          if (*(v29 + 37) != 2)
          {
            goto LABEL_54;
          }

          v32 = v30;
          if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_127();
            OUTLINED_FUNCTION_102();
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }

          if (a1)
          {
            CFRetain(a1);
          }

          v33 = LogCategoryCopyOSLogHandle();
          if (v33)
          {
            v34 = v33;
          }

          else
          {
            v34 = MEMORY[0x277D86220];
          }

          v35 = CUObfuscatedPtr();
          if (v35)
          {
            v36 = v35;
            if (os_signpost_enabled(v34))
            {
              *v59 = 0;
              _os_signpost_emit_with_name_impl(&dword_221FFA000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v36, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_1", &unk_2222A918B, v59, 2u);
            }
          }

          v37 = *(v29 + 2);
          v50 = *v51;
          HIDWORD(v50) = *&v51[12];
          v48 = v53;
          v49 = v54;
          v47 = *v52;
          HIDWORD(v47) = *&v52[12];
          APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
          v38 = OUTLINED_FUNCTION_111();
          if (v38)
          {
            v39 = *(v38 + 16);
            if (v39)
            {
              if (*(v39 + 40))
              {
                *v59 = v50;
                *&v59[12] = *&v51[12];
                v57 = v48;
                v58 = v49;
                *time = v47;
                *&time[12] = *&v52[12];
                OUTLINED_FUNCTION_41_0();
                v40(v37, v32, v59, &v57, time);
              }

              else
              {
                bufferedAudioEngine_hoseSetRateAndAnchorTimeCallbackCompletionHandler(v37, 0, MEMORY[0x277CEA038], MEMORY[0x277CEA280], MEMORY[0x277CEA038], MEMORY[0x277CEA280], 4294954514, a1);
              }
            }
          }

          v41 = *(v29 + 2);
          v42 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v42)
          {
            v42(v41, v46, v45);
          }

          v29[9] = *(v3 + 888);
          *(v29 + 37) = 3;
          bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, v59);
          APSAudioHoseMetricCollectorSetPlaybackStateForHose();
LABEL_80:
          v29 = *v29;
          if (!v29)
          {
            goto LABEL_81;
          }
        }

        v31 = gLogCategory_APAudioEngineBuffered;
LABEL_54:
        if (v31 <= 50 && (v31 != -1 || OUTLINED_FUNCTION_4()))
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_26_1();
          OUTLINED_FUNCTION_102();
          OUTLINED_FUNCTION_2_0();
          LogPrintF();
        }

        goto LABEL_80;
      }

LABEL_81:
      if ((*(v3 + 1332) & 1) == 0)
      {
        v43 = CMClockGetHostTimeClock();
        CMClockGetTime(v59, v43);
        *(v3 + 1320) = *v59;
        *(v3 + 1336) = *&v59[16];
      }

      if (cf)
      {
        CFRelease(cf);
      }

      return 0;
    }
  }

  else
  {
    v9 = 4294954514;
  }

  if (gLogCategory_APAudioEngineBuffered <= 90)
  {
    OUTLINED_FUNCTION_8_8();
    if (!v10 || _LogCategory_Initialize())
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v11 = OUTLINED_FUNCTION_11_5();
      CMTimeGetSeconds(v11);
      v12 = OUTLINED_FUNCTION_11_5();
      CMClockConvertHostTimeToSystemUnits(v12);
      LogPrintF();
    }
  }

  v13 = mach_absolute_time();
  v14 = *(v3 + 832);
  if (!v14)
  {
    v14 = MillisecondsToUpTicks() + v13;
    *(v3 + 832) = v14;
  }

  if (v13 >= v14)
  {
    v17 = *(CMBaseObjectGetDerivedStorage() + 640);
    if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LogPrintF();
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      FigCFDictionarySetInt32();
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC17E0], @"Network clock failed to lock");
    }

    for (; v17; v17 = *v17)
    {
      if (!*(v17 + 32))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
      }
    }

    bufferedAudioEngine_sendSessionFailureEvent(a1, @"Network clock failed to lock");
    bufferedAudioEngine_maybeTriggerTTR(a1, 0, 0, v9);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (*(v3 + 1160))
    {
      goto LABEL_33;
    }

    return 0;
  }

  v15 = 0;
  *(v3 + 840) = 1;
  return v15;
}

void bufferedAudioEngine_hoseSetRateCallbackCompletionHandlerInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  if (*CMBaseObjectGetDerivedStorage())
  {
    goto LABEL_37;
  }

  v4 = OUTLINED_FUNCTION_112();
  if (!v4)
  {
    if (gLogCategory_APAudioEngineBuffered > 90 || gLogCategory_APAudioEngineBuffered == -1 && !OUTLINED_FUNCTION_4_3())
    {
      goto LABEL_37;
    }

    if (*v1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_4_16();
    OUTLINED_FUNCTION_2_1();
    goto LABEL_36;
  }

  v5 = v4;
  if (*(v2 + 882))
  {
    if (gLogCategory_APAudioEngineBuffered <= 50)
    {
      OUTLINED_FUNCTION_10_4();
      if (!v7 || _LogCategory_Initialize())
      {
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_31_0();
        OUTLINED_FUNCTION_26_1();
        LogPrintF();
      }
    }

    bufferedAudioEngine_updatePlaybackState(*v1, 2);
    v21 = LogCategoryCopyOSLogHandle();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = MEMORY[0x277D86220];
    }

    v23 = CUObfuscatedPtr();
    if (v23)
    {
      v24 = v23;
      if (os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_221FFA000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v24, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_0", &unk_2222A918B, buf, 2u);
      }
    }

    LODWORD(v17) = bufferedAudioEngine_handleSetRateToZero(*v1);
    *(v2 + 882) = 0;
    goto LABEL_38;
  }

  v6 = *(v1 + 72);
  if (v6 == -17580)
  {
    if (gLogCategory_APAudioEngineBuffered > 50)
    {
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_10_4();
    if (v7)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_37;
      }
    }

    if (*v1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_70();
LABEL_36:
    LogPrintF();
LABEL_37:
    LODWORD(v17) = 0;
    goto LABEL_38;
  }

  if (v6)
  {
    if (v6 != 200501)
    {
      ++*(v4 + 43);
      if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3()))
      {
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_14_7();
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_135();
        OUTLINED_FUNCTION_2_1();
        LogPrintF();
      }

      v8 = LogCategoryCopyOSLogHandle();
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = MEMORY[0x277D86220];
      }

      v11 = CUObfuscatedPtr();
      if (v11)
      {
        v12 = v11;
        if (os_signpost_enabled(v10))
        {
          OUTLINED_FUNCTION_140(&dword_221FFA000, v13, v14, v12, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_1", &unk_2222A918B, v15, v16, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, 0);
        }
      }

      if (v9)
      {
        os_release(v9);
      }

      *(v5 + 37) = 2;
      bufferedAudioEngine_handleErrorWithReceiverAnchor(*v1, *(v1 + 8), 0);
      goto LABEL_37;
    }

    if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3()))
    {
      if (*v1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_14_7();
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_2_1();
      LogPrintF();
    }

    bufferedAudioEngine_updatePlaybackState(*v1, 6);
    *(v5 + 37) = 2;
    LODWORD(v17) = bufferedAudioEngine_handleSetRateToOne(*v1);
  }

  else
  {
    OUTLINED_FUNCTION_69();
    if (v18 ^ v19 | v7)
    {
      OUTLINED_FUNCTION_10_4();
      if (!v7 || _LogCategory_Initialize())
      {
        v20 = *v1;
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_31_0();
        OUTLINED_FUNCTION_26_1();
        v34 = v20;
        LogPrintF();
      }
    }

    *(v5 + 43) = 0;
    *(v5 + 176) = 1;
    v5[9] = *(v2 + 896);
    v25 = MEMORY[0x277CC0898];
    *(v2 + 1080) = *MEMORY[0x277CC0898];
    *(v2 + 1096) = *(v25 + 16);
    v26 = LogCategoryCopyOSLogHandle();
    OUTLINED_FUNCTION_98();
    if (CUObfuscatedPtr() && OUTLINED_FUNCTION_143())
    {
      OUTLINED_FUNCTION_82(&dword_221FFA000, v27, v28, v3, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_1", &unk_2222A918B, v29, v30, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, 0);
    }

    if (v26)
    {
      os_release(v26);
    }

    OUTLINED_FUNCTION_74();
    if (!v31)
    {
      *(v5 + 43) = 0;
      v33 = *(v2 + 944);
      if (v33)
      {
        CFRelease(v33);
        LODWORD(v17) = 0;
        *(v2 + 944) = 0;
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v17 = v31;
    ++*(v5 + 43);
    OUTLINED_FUNCTION_46();
    if (v18 ^ v19 | v7 && (v32 != -1 || OUTLINED_FUNCTION_4_3()))
    {
      if (*v1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_14_7();
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_2_1();
      LogPrintF();
    }

    bufferedAudioEngine_handleErrorWithReceiverAnchor(*v1, *(v1 + 8), v17);
  }

LABEL_38:
  **(v1 + 80) = v17;
}

uint64_t bufferedAudioEngine_handleSetRateToZero(const void *a1)
{
  *&v54.value = *MEMORY[0x277CC0898];
  v2 = *(MEMORY[0x277CC0898] + 16);
  v54.epoch = v2;
  v45 = *&v54.value;
  *&v53.value = *&v54.value;
  v53.epoch = v2;
  v47 = *MEMORY[0x277CEA038];
  v52[0] = *MEMORY[0x277CEA038];
  v46 = *(MEMORY[0x277CEA038] + 12);
  *(v52 + 12) = v46;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (*DerivedStorage || *(DerivedStorage + 884) != 2)
  {
LABEL_31:
    v27 = 0;
    goto LABEL_32;
  }

  CMBaseObjectGetDerivedStorage();
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v54, HostTimeClock);
  OUTLINED_FUNCTION_29_0();
  if (v8 ^ v9 | v7 && (v6 != -1 || OUTLINED_FUNCTION_4()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  v10 = CMClockGetHostTimeClock();
  v11 = *(v4 + 872);
  *time = v54;
  CMSyncConvertTime(lhs, time, v10, v11);
  v12 = *lhs;
  v14 = *&lhs[8];
  v13 = *&lhs[12];
  v15 = *&lhs[16];
  if ((lhs[12] & 0x1D) == 1 || *(v4 + 882))
  {
    v49 = *MEMORY[0x277CEA280];
    v50 = *(MEMORY[0x277CEA280] + 8);
    v48 = *(MEMORY[0x277CEA280] + 16);
    v16 = (v4 + 804);
    OUTLINED_FUNCTION_29_0();
    if (v8 ^ v9 | v7 && (v17 != -1 || OUTLINED_FUNCTION_4()))
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      *lhs = v12;
      *&lhs[8] = v14;
      *&lhs[12] = v13;
      *&lhs[16] = v15;
      CMTimeGetSeconds(lhs);
      OUTLINED_FUNCTION_107();
      v18 = CMClockGetHostTimeClock();
      CMClockGetTime(lhs, v18);
      CMTimeGetSeconds(lhs);
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
      v16 = (v4 + 804);
    }

    *v16 = v12;
    *(v4 + 812) = v14;
    *(v4 + 816) = v13;
    v16[2] = v15;
    *(v4 + 888) = *(v4 + 896);
    v44 = v2;
    if (*(v4 + 576))
    {
      *lhs = v12;
      *&lhs[8] = v14;
      *&lhs[12] = v13;
      *&lhs[16] = v15;
      APSAudioTransportTimeMakeWithMediaTime();
    }

    else
    {
      SampleRateFromTransportAudioFormat = bufferedAudioEngine_getSampleRateFromTransportAudioFormat();
      *time = v12;
      *&time[8] = v14;
      *&time[12] = v13;
      *&time[16] = v15;
      CMTimeConvertScale(lhs, time, SampleRateFromTransportAudioFormat, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      APSAudioTransportTimeMakeWithRTPTime();
      v52[0] = *lhs;
      *(v52 + 12) = *&lhs[12];
    }

    v20 = *(v4 + 640);
    if (v20)
    {
      v29 = *(v4 + 888);
      v30 = MEMORY[0x277D86220];
      do
      {
        v31 = LogCategoryCopyOSLogHandle();
        if (v31)
        {
          v32 = v31;
        }

        else
        {
          v32 = v30;
        }

        v33 = CUObfuscatedPtr();
        if (v33)
        {
          v34 = v33;
          if (os_signpost_enabled(v32))
          {
            *lhs = 0;
            _os_signpost_emit_with_name_impl(&dword_221FFA000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v34, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_0", &unk_2222A918B, lhs, 2u);
          }
        }

        if (*(v20 + 9) != *(v4 + 888) && *(v20 + 37) == 3 || *(v4 + 882) && *(v4 + 896) == 0.0)
        {
          OUTLINED_FUNCTION_29_0();
          if (v8 ^ v9 | v7 && (v35 != -1 || OUTLINED_FUNCTION_4()))
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_28();
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }

          OUTLINED_FUNCTION_104();
          bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(v37, v38);
          APSAudioHoseMetricCollectorSetPlaybackStateForHose();
          if (a1)
          {
            CFRetain(a1);
          }

          v39 = v20[2];
          *rhs = v52[0];
          *&rhs[12] = *(v52 + 12);
          APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
          v40 = OUTLINED_FUNCTION_111();
          if (v40)
          {
            v41 = *(v40 + 16);
            if (v41)
            {
              if (*(v41 + 40))
              {
                *lhs = *rhs;
                *&lhs[12] = *&rhs[12];
                v56.value = v49;
                *&v56.timescale = v50;
                v56.epoch = v48;
                *time = v47;
                *&time[12] = v46;
                OUTLINED_FUNCTION_41_0();
                v42(v39, v29, lhs, &v56, time);
              }

              else
              {
                bufferedAudioEngine_hoseSetRateAndAnchorTimeCallbackCompletionHandler(v39, 0, MEMORY[0x277CEA038], MEMORY[0x277CEA280], MEMORY[0x277CEA038], MEMORY[0x277CEA280], 4294954514, a1);
              }
            }
          }

          v20[9] = *(v4 + 888);
          *(v20 + 37) = 2;
          *(v20 + 176) = 0;
        }

        else
        {
          OUTLINED_FUNCTION_29_0();
          if (v8 ^ v9 | v7 && (v36 != -1 || OUTLINED_FUNCTION_4()))
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_18_5();
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }
        }

        v20 = *v20;
      }

      while (v20);
    }

    v21 = *(v4 + 804);
    *&lhs[16] = *(v4 + 820);
    *lhs = v21;
    *time = *(v4 + 780);
    *&time[16] = *(v4 + 796);
    CMTimeSubtract(&v53, lhs, time);
    v2 = v44;
    if (*(v4 + 1332))
    {
      memset(lhs, 0, 24);
      v22 = CMClockGetHostTimeClock();
      CMClockGetTime(time, v22);
      *rhs = *(v4 + 1320);
      *&rhs[16] = *(v4 + 1336);
      CMTimeSubtract(lhs, time, rhs);
      *rhs = *(v4 + 1344);
      *&rhs[16] = *(v4 + 1360);
      v56 = *lhs;
      CMTimeAdd(time, rhs, &v56);
      *(v4 + 1344) = *time;
      *(v4 + 1360) = *&time[16];
      *(v4 + 1320) = v45;
      *(v4 + 1336) = v44;
    }

    APSTimedInfoManagerSuspend();
    v23 = *(v4 + 872);
    if (v23)
    {
      CFRelease(v23);
      *(v4 + 872) = 0;
    }

    for (i = *(v4 + 640); i; i = *i)
    {
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v25 = OUTLINED_FUNCTION_129();
        v26(v25);
      }
    }

    goto LABEL_31;
  }

  APSLogErrorAt();
  v27 = APSSignalErrorAt();
LABEL_32:
  *(v4 + 896) = 0xBFF0000000000000;
  bufferedAudioEngine_updatePlaybackState(a1, 3);
  if (v27)
  {
    *lhs = v45;
    *&lhs[16] = v2;
    v28 = MEMORY[0x277CC0898];
  }

  else
  {
    *lhs = v53;
    v28 = &v54;
  }

  *time = *&v28->value;
  *&time[16] = v28->epoch;
  OUTLINED_FUNCTION_99();
  bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(a1, v27, lhs, time, 0);
  *(v4 + 840) = 0;
  *(v4 + 832) = 0;
  *(v4 + 952) = 0u;
  return v27;
}

void bufferedAudioEngine_startRemoteMediaTimebaseWithReceiverAnchor()
{
  OUTLINED_FUNCTION_139();
  v81 = v0;
  v82 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v80 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *MEMORY[0x277CC0898];
  *&v72.value = v9;
  v10 = *(MEMORY[0x277CC0898] + 16);
  v72.epoch = v10;
  *&v71.value = v9;
  v71.epoch = v10;
  v76 = *(MEMORY[0x277CC0898] + 12);
  v77 = *(MEMORY[0x277CC0898] + 20);
  *&v69.value = v9;
  v69.epoch = v10;
  v67.epoch = v10;
  hostTime = 0;
  *&v67.value = v9;
  if (*(DerivedStorage + 884) == 7)
  {
    v11 = DerivedStorage;
    v64 = v9;
    v12 = *(DerivedStorage + 328);
    immediateSourceTime = *v3;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    v14 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
    if (!v13 || (*v73 = immediateSourceTime, v13(v12, v73, &hostTime)))
    {
      APSLogErrorAt();
      OUTLINED_FUNCTION_77();
      if (v21 ^ v22 | v20)
      {
        OUTLINED_FUNCTION_8_8();
        if (!v20 || _LogCategory_Initialize())
        {
          if (v7)
          {
            CMBaseObjectGetDerivedStorage();
          }

          LogPrintF();
        }
      }
    }

    else
    {
      CMClockMakeHostTimeFromSystemUnits(&v72, hostTime);
      if (*v5 == 2)
      {
        v17 = *(v5 + 4);
        v18 = *(v5 + 12);
        v78 = *(v5 + 16);
        v19 = *(v5 + 24);
      }

      else
      {
        if (*v5 != 1)
        {
          goto LABEL_60;
        }

        v15 = *(v5 + 4);
        SampleRateFromTransportAudioFormat = bufferedAudioEngine_getSampleRateFromTransportAudioFormat();
        CMTimeMake(v73, v15, SampleRateFromTransportAudioFormat);
        v17 = *v73;
        v78 = *&v73[12];
        v18 = *&v73[8];
        v19 = *&v73[20];
      }

      v79 = v19;
      v23 = CFGetAllocator(v7);
      if (CMTimebaseCreateWithSourceClock(v23, *(v11 + 480), (v11 + 872)))
      {
        goto LABEL_61;
      }

      APSTimedInfoManagerResume();
      bufferedAudioEngine_recordStartTimebaseTimeStampForRTC();
      HostTimeClock = CMClockGetHostTimeClock();
      v25 = *(v11 + 480);
      *v73 = v72;
      CMSyncConvertTime(&v71, v73, HostTimeClock, v25);
      OUTLINED_FUNCTION_126();
      *&v73[12] = v26;
      OUTLINED_FUNCTION_58();
      immediateSourceTime = v71;
      if (CMTimebaseSetRateAndAnchorTime(v27, 1.0, v73, &immediateSourceTime))
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_29_0();
      if (v21 ^ v22 | v20 && (v28 != -1 || OUTLINED_FUNCTION_4()))
      {
        if (v7)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_126();
        *&v73[12] = v29;
        OUTLINED_FUNCTION_75(v79);
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
        v14 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
      }

      v30 = *MEMORY[0x277CBECE8];
      v74 = *(v11 + 1032);
      v75 = @"ContentType";
      if (!CFDictionaryCreate(v30, &v75, &v74, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]))
      {
LABEL_61:
        APSLogErrorAt();
      }

      else
      {
        v31 = (v11 + 780);
        OUTLINED_FUNCTION_126();
        *&v73[12] = v32;
        OUTLINED_FUNCTION_58();
        cf = v33;
        APSTimedInfoManagerAddTimedInfo();
        OUTLINED_FUNCTION_29_0();
        if (v21 ^ v22 | v20 && (v34 != -1 || OUTLINED_FUNCTION_4()))
        {
          if (v7)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_126();
          *&v73[12] = v35;
          OUTLINED_FUNCTION_58();
          CMTimeGetSeconds(v73);
          *v73 = *&v72.value;
          OUTLINED_FUNCTION_81(v72.epoch);
          v36 = CMClockGetHostTimeClock();
          CMClockGetTime(v73, v36);
          CMTimeGetSeconds(v73);
          *v73 = *&v71.value;
          OUTLINED_FUNCTION_81(v71.epoch);
          CMClockGetTime(v73, *(v11 + 480));
          CMTimeGetSeconds(v73);
          OUTLINED_FUNCTION_2_0();
          LogPrintF();
          v14 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
        }

        v63 = v17;
        v37 = (v11 + 804);
        if (*(v11 + 816))
        {
          v38 = (v11 + 804);
        }

        else
        {
          v38 = (v11 + 780);
        }

        immediateSourceTime = *v38;
        v39 = *(v11 + 872);
        v40 = CMClockGetHostTimeClock();
        time = immediateSourceTime;
        CMSyncConvertTime(v73, &time, v39, v40);
        v41 = CMClockGetHostTimeClock();
        CMClockGetTime(&time, v41);
        CMTimeSubtract(&v69, v73, &time);
        bufferedAudioEngine_getPlaybackStartupTime(&v67);
        OUTLINED_FUNCTION_29_0();
        if (v21 ^ v22 | v20 && (v42 != -1 || OUTLINED_FUNCTION_4()))
        {
          if (v7)
          {
            CMBaseObjectGetDerivedStorage();
          }

          *v73 = *&v69.value;
          OUTLINED_FUNCTION_81(v69.epoch);
          *v73 = *&v67.value;
          OUTLINED_FUNCTION_81(v67.epoch);
          OUTLINED_FUNCTION_2_0();
          LogPrintF();
        }

        v43 = v14;
        v44 = LogCategoryCopyOSLogHandle();
        OUTLINED_FUNCTION_98();
        if (CUObfuscatedPtr() && OUTLINED_FUNCTION_143())
        {
          spid = v14;
          v45 = *(v11 + 530);
          *v73 = *&v69.value;
          v46 = OUTLINED_FUNCTION_81(v69.epoch);
          *v73 = *&v67.value;
          v47 = OUTLINED_FUNCTION_81(v67.epoch);
          *v73 = 67109632;
          *&v73[4] = v45;
          *&v73[8] = 2048;
          *&v73[10] = v46;
          *&v73[18] = 2048;
          *&v73[20] = v47;
          OUTLINED_FUNCTION_97();
          _os_signpost_emit_with_name_impl(v48, v49, v50, spid, v51, v52, v53, 0x1Cu);
        }

        if (v44)
        {
          os_release(v44);
        }

        bufferedAudioEngine_logStartupTime(v7);
        *(v11 + 888) = *(v11 + 896);
        *(v11 + 896) = 0xBFF0000000000000;
        *v37 = v64;
        *(v11 + 820) = v10;
        v54 = *(v11 + 944);
        v55 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v55)
        {
          v55(v54, *MEMORY[0x277CE9FB8], *MEMORY[0x277CBED28]);
        }

        bufferedAudioEngine_updatePlaybackState(v7, 8);
        time.value = v63;
        time.timescale = v18;
        *&time.flags = v78;
        HIDWORD(time.epoch) = v79;
        v56 = *v31;
        rhs.epoch = *(v11 + 796);
        *&rhs.value = v56;
        CMTimeSubtract(v73, &time, &rhs);
        v57 = *v73;
        v76 = *&v73[12];
        v58 = *&v73[8];
        v77 = *&v73[20];
        v59 = v43[594];
        if (v59 <= 50 && (v59 != -1 || OUTLINED_FUNCTION_4()))
        {
          if (v7)
          {
            CMBaseObjectGetDerivedStorage();
          }

          *v73 = v57;
          *&v73[12] = v76;
          *&v73[8] = v58;
          *&v73[20] = v77;
          CMTimeGetSeconds(v73);
          *v73 = v63;
          *&v73[12] = v78;
          OUTLINED_FUNCTION_58();
          CMTimeGetSeconds(v73);
          OUTLINED_FUNCTION_51(*(v11 + 796), *v31);
          OUTLINED_FUNCTION_51(*(v11 + 820), *v37);
          OUTLINED_FUNCTION_18_5();
          OUTLINED_FUNCTION_2_0();
          LogPrintF();
        }

        OUTLINED_FUNCTION_99();
        *v73 = v57;
        *&v73[12] = v76;
        *&v73[8] = v58;
        *&v73[20] = v77;
        time = v72;
        bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(v7, 0, v73, &time, v60);
        *(v11 + 952) = 0u;
        CFRelease(cf);
      }
    }
  }

LABEL_60:
  OUTLINED_FUNCTION_141();
}

void bufferedAudioEngine_hoseSetRateAndAnchorTimeCallbackCompletionHandlerInternal(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    goto LABEL_104;
  }

  v3 = DerivedStorage;
  HoseDecriptorFromHose = bufferedAudioEngine_getHoseDecriptorFromHose();
  if (!HoseDecriptorFromHose)
  {
    OUTLINED_FUNCTION_46();
    if (!(v10 ^ v11 | v9) || v58 == -1 && !OUTLINED_FUNCTION_4_3())
    {
      goto LABEL_104;
    }

    if (*a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_127();
    goto LABEL_102;
  }

  v5 = HoseDecriptorFromHose;
  v6 = MEMORY[0x277D86220];
  if (*(a1 + 16))
  {
    v7 = MEMORY[0x277CEA038];
    *(HoseDecriptorFromHose + 23) = *MEMORY[0x277CEA038];
    *(HoseDecriptorFromHose + 196) = *(v7 + 12);
    if (*(a1 + 128))
    {
      ++*(HoseDecriptorFromHose + 43);
      OUTLINED_FUNCTION_46();
      if (v10 ^ v11 | v9 && (v8 != -1 || OUTLINED_FUNCTION_4_3()))
      {
        if (*a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_47();
        v66 = *(v5 + 43);
        v67 = *(a1 + 128);
        v64 = v17;
        v65 = v5[33];
        OUTLINED_FUNCTION_135();
        OUTLINED_FUNCTION_2_1();
        LogPrintF();
      }

      v18 = LogCategoryCopyOSLogHandle();
      if (CUObfuscatedPtr() && OUTLINED_FUNCTION_143())
      {
        OUTLINED_FUNCTION_82(&dword_221FFA000, v19, v20, v6, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_1", &unk_2222A918B, v21, v22, v61, v62, v63, v64, v65, v66, v67, v68, v69, v71, v72, v73, 0);
      }

      if (v18)
      {
        os_release(v18);
      }

      if (*(v5 + 43) < 0x32u)
      {
        if (*(v3 + 111) == 1.0 && *(v5 + 9) == 1.0)
        {
          v5[9] = 0;
          *(v5 + 37) = 2;
          if (!v3[936])
          {
            v23 = MicrosecondsToUpTicks();
            *(v3 + 116) = mach_absolute_time() + v23;
            v3[936] = 1;
          }
        }
      }

      else
      {
        bufferedAudioEngine_handleTerminalSetRateError(*a1, *(a1 + 8), *(a1 + 128));
      }

      goto LABEL_104;
    }

    *(HoseDecriptorFromHose + 43) = 0;
    OUTLINED_FUNCTION_69();
    if (v10 ^ v11 | v9)
    {
      OUTLINED_FUNCTION_10_4();
      if (!v9 || _LogCategory_Initialize())
      {
        if (*a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_47();
        OUTLINED_FUNCTION_26_1();
        LogPrintF();
      }
    }

    v35 = LogCategoryCopyOSLogHandle();
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = v6;
    }

    v38 = CUObfuscatedPtr();
    if (v38)
    {
      v39 = v38;
      if (os_signpost_enabled(v37))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_221FFA000, v37, OS_SIGNPOST_INTERVAL_END, v39, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_1", &unk_2222A918B, buf, 2u);
      }
    }

    if (v36)
    {
      os_release(v36);
    }

    v40 = *a1;
    *v70 = *(a1 + 72);
    *&v70[12] = *(a1 + 84);
    v78 = *(a1 + 104);
    v41 = *(a1 + 124);
    v79 = *(a1 + 120);
    v42 = CMBaseObjectGetDerivedStorage();
    *&v76.value = OUTLINED_FUNCTION_55(MEMORY[0x277CC0898]);
    v76.epoch = v43;
    v75[0] = 0;
    v75[1] = 0;
    if (bufferedAudioEngine_getHoseDecriptorFromHose())
    {
      if (v41)
      {
        goto LABEL_104;
      }

      v44 = v42[41];
      v45 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v45 || (*buf = v78, *&buf[16] = v79, *&buf[20] = v41, v45(v44, buf, v75)))
      {
        APSLogErrorAt();
        OUTLINED_FUNCTION_46();
        if (!(v10 ^ v11 | v9) || v49 == -1 && !OUTLINED_FUNCTION_4_3())
        {
          goto LABEL_104;
        }

        if (!v40)
        {
          goto LABEL_102;
        }
      }

      else
      {
        *buf = *v70;
        *&buf[12] = *&v70[12];
        if (APSAudioTransportTimeIsValid())
        {
          v46 = v42[109];
          HostTimeClock = CMClockGetHostTimeClock();
          *buf = *&v70[4];
          *&buf[16] = *&v70[20];
          CMSyncConvertTime(&v77, buf, v46, HostTimeClock);
          if (v42[121] && FigCFDictionaryGetInt64IfPresent())
          {
            *buf = v77;
            CMTimeGetSeconds(buf);
            SecondsToUpTicksF();
            v48 = UpTicksToMilliseconds();
            CMTimeMake(&v76, v48, 1000);
            OUTLINED_FUNCTION_69();
            if (!(v10 ^ v11 | v9))
            {
              goto LABEL_104;
            }

            OUTLINED_FUNCTION_10_4();
            if (v9)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_104;
              }
            }

            if (v40)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *buf = v76;
            CMTimeGetSeconds(buf);
LABEL_103:
            LogPrintF();
            goto LABEL_104;
          }

          OUTLINED_FUNCTION_46();
          if (!(v10 ^ v11 | v9) || v50 == -1 && !OUTLINED_FUNCTION_4_3())
          {
            goto LABEL_104;
          }

          if (!v40)
          {
LABEL_102:
            OUTLINED_FUNCTION_2_1();
            goto LABEL_103;
          }
        }

        else
        {
          OUTLINED_FUNCTION_46();
          if (!(v10 ^ v11 | v9) || v60 == -1 && !OUTLINED_FUNCTION_4_3())
          {
            goto LABEL_104;
          }

          if (!v40)
          {
            goto LABEL_102;
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_46();
      if (!(v10 ^ v11 | v9) || v59 == -1 && !OUTLINED_FUNCTION_4_3())
      {
        goto LABEL_104;
      }

      if (!v40)
      {
        goto LABEL_102;
      }
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_102;
  }

  if (*(a1 + 128))
  {
    OUTLINED_FUNCTION_46();
    if (v10 ^ v11 | v9 && (v12 != -1 || OUTLINED_FUNCTION_4_3()))
    {
      v13 = *a1;
      if (*a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_70();
      v61 = v13;
      v62 = v24;
      OUTLINED_FUNCTION_2_1();
      LogPrintF();
    }

    v25 = LogCategoryCopyOSLogHandle();
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v6;
    }

    v28 = CUObfuscatedPtr();
    if (v28)
    {
      v29 = v28;
      if (os_signpost_enabled(v27))
      {
        OUTLINED_FUNCTION_140(&dword_221FFA000, v30, v31, v29, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_0", &unk_2222A918B, v32, v33, v61, v62, v63, v64, v65, v66, v67, v68, v69, v71, v72, v73, 0);
      }
    }

    v14 = 0;
  }

  else
  {
    *buf = *(a1 + 72);
    *&buf[12] = *(a1 + 84);
    v14 = APSAudioTransportTimeCopyDebugDesc();
    OUTLINED_FUNCTION_69();
    if (v10 ^ v11 | v9 && (v15 != -1 || _LogCategory_Initialize()))
    {
      v16 = *a1;
      if (*a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_47();
      v65 = v5[33];
      v66 = v14;
      v63 = v51;
      v64 = v52;
      v61 = v16;
      v62 = v53;
      LogPrintF();
    }

    v26 = LogCategoryCopyOSLogHandle();
    if (CUObfuscatedPtr() && OUTLINED_FUNCTION_143())
    {
      OUTLINED_FUNCTION_82(&dword_221FFA000, v54, v55, v6, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_SETRATE_0", &unk_2222A918B, v56, v57, v61, v62, v63, v64, v65, v66, v67, v68, v69, v71, v72, v73, 0);
    }
  }

  if (v26)
  {
    os_release(v26);
  }

  if (!*(v5 + 45))
  {
    v34 = *(a1 + 72);
    *(v5 + 196) = *(a1 + 84);
    *(v5 + 23) = v34;
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_104:
  **(a1 + 136) = 0;
}

void bufferedAudioEngine_maybeTriggerTTR(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v9 = mach_absolute_time();
  if (v9 < bufferedAudioEngine_maybeTriggerTTR_nextDialogTicks)
  {
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    goto LABEL_34;
  }

  v10 = v9;
  v11 = *MEMORY[0x277CBECE8];
  if (*(DerivedStorage + 592))
  {
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v60 = v12(CMBaseObject, @"EndpointIDs", v11, &cf);
      if (!v60)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v60 = -12782;
    }

    APSLogErrorAt();
    goto LABEL_34;
  }

LABEL_9:
  v13 = OUTLINED_FUNCTION_104();
  Mutable = CFStringCreateMutable(v13, v14);
  if (!Mutable)
  {
LABEL_34:
    CMBaseObject = 0;
    goto LABEL_53;
  }

  v16 = Mutable;
  v60 = CFStringAppendF();
  if (v60)
  {
    APSLogErrorAt();
    CMBaseObject = 0;
LABEL_64:
    v51 = v16;
    goto LABEL_52;
  }

  if (a4 == -6722)
  {
    v33 = CFStringCreateF();
    if (!OUTLINED_FUNCTION_138(v33, v34, v35, v36, v37, v38, v39, v40, v52, v53, v54, v55, v56, v57, cf, v59, v60))
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

  if (a4 != -71974)
  {
    if (a4 == -71976)
    {
      v17 = CFStringCreateF();
      if (!OUTLINED_FUNCTION_138(v17, v18, v19, v20, v21, v22, v23, v24, v52, v53, v54, v55, v56, v57, cf, v59, v60))
      {
        goto LABEL_25;
      }
    }

    else
    {
      v41 = CFStringCreateF();
      if (!OUTLINED_FUNCTION_138(v41, v42, v43, v44, v45, v46, v47, v48, a4, v53, v54, v55, v56, v57, cf, v59, v60))
      {
        goto LABEL_25;
      }
    }

    goto LABEL_63;
  }

  v25 = CFStringCreateF();
  if (OUTLINED_FUNCTION_138(v25, v26, v27, v28, v29, v30, v31, v32, v52, v53, v54, v55, v56, v57, cf, v59, v60))
  {
LABEL_63:
    APSLogErrorAt();
    goto LABEL_64;
  }

LABEL_25:
  v49 = CFStringCreateF();
  if (!v60)
  {
    if (a2)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_40_0();
      v60 = CFStringAppendF();
      if (v60)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_40_0();
      v60 = CFStringAppendF();
      if (v60)
      {
        goto LABEL_41;
      }
    }

    v60 = CFStringAppendF();
    if (!v60)
    {
      v60 = CFStringAppendF();
      if (!v60)
      {
        v50 = (DerivedStorage + 640);
        while (1)
        {
          v50 = *v50;
          if (!v50)
          {
            break;
          }

          v60 = CFStringAppendF();
          if (v60)
          {
            goto LABEL_41;
          }
        }

        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_2_0();
          LogPrintF();
        }

        bufferedAudioEngine_maybeTriggerTTR_nextDialogTicks = v10 + 36000 * UpTicksPerSecond();
        APSTapToRadarInvoke();
        goto LABEL_50;
      }
    }
  }

LABEL_41:
  APSLogErrorAt();
LABEL_50:
  CFRelease(v16);
  if (!v49)
  {
    goto LABEL_53;
  }

  v51 = v49;
LABEL_52:
  CFRelease(v51);
LABEL_53:
  if (cf)
  {
    CFRelease(cf);
  }

  if (CMBaseObject)
  {
    CFRelease(CMBaseObject);
  }
}

void bufferedAudioEngine_recordStartTimebaseTimeStampForRTC()
{
  OUTLINED_FUNCTION_20_2();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[160])
  {
    v3 = DerivedStorage;
    if (DerivedStorage[186])
    {
      FigCFDictionarySetInt64();
      v4 = v3[121];
      if (v4)
      {
        CFRelease(v4);
        v3[121] = 0;
      }

      v3[121] = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v3[186]);
      FigCFDictionarySetInt64();
      APSAudioFormatDescriptionCopyDebugString();
      APSLogErrorAt();
    }

    else
    {
      DerivedStorage[188] = v1;
      bufferedAudioEngine_updateActiveAudioEngineCount(v0, 1);
      bufferedAudioEngine_reportPlayingAudioEngineEvent(v0);
    }
  }
}

void bufferedAudioEngine_logStartupTime(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AudioFormatIndex = APSAudioFormatDescriptionGetAudioFormatIndex();
  v4 = "PCM/24000/16/1";
  switch(AudioFormatIndex)
  {
    case 2:
      v4 = "PCM/8000/16/1";
      break;
    case 3:
      v4 = "PCM/8000/16/2";
      break;
    case 4:
      v4 = "PCM/16000/16/1";
      break;
    case 5:
      v4 = "PCM/16000/16/2";
      break;
    case 6:
      break;
    case 7:
      v4 = "PCM/24000/16/2";
      break;
    case 8:
      v4 = "PCM/32000/16/1";
      break;
    case 9:
      v4 = "PCM/32000/16/2";
      break;
    case 10:
      v4 = "PCM/44100/16/1";
      break;
    case 11:
      v4 = "PCM/44100/16/2";
      break;
    case 12:
      v4 = "PCM/44100/24/1";
      break;
    case 13:
      v4 = "PCM/44100/24/2";
      break;
    case 14:
      v4 = "PCM/48000/16/1";
      break;
    case 15:
      v4 = "PCM/48000/16/2";
      break;
    case 16:
      v4 = "PCM/48000/24/1";
      break;
    case 17:
      v4 = "PCM/48000/24/2";
      break;
    case 18:
      v4 = "ALAC/44100/16/2";
      break;
    case 19:
      v4 = "ALAC/44100/24/2";
      break;
    case 20:
      v4 = "ALAC/48000/16/2";
      break;
    case 21:
      v4 = "ALAC/48000/24/2";
      break;
    case 22:
      v4 = "AAC-LC/44100/2";
      break;
    case 23:
      v4 = "AAC-LC/48000/2";
      break;
    case 24:
      v4 = "AAC-ELD/44100/2";
      break;
    case 25:
      v4 = "AAC-ELD/48000/2";
      break;
    case 26:
      v4 = "AAC-ELD/16000/1";
      break;
    case 27:
      v4 = "AAC-ELD/24000/1";
      break;
    case 28:
      v4 = "OPUS/16000/1";
      break;
    case 29:
      v4 = "OPUS/24000/1";
      break;
    case 30:
      v4 = "OPUS/48000/1";
      break;
    case 31:
      v4 = "AAC-ELD/44100/1";
      break;
    case 32:
      v4 = "AAC-ELD/48000/1";
      break;
    case 33:
      v4 = "QC3/48000/5.1.2";
      break;
    case 34:
      v4 = "QC3/48000/7.1.4";
      break;
    case 35:
      v4 = "QC3/48000/9.1.6";
      break;
    case 38:
      v4 = "PCM/48000/16/5.1.2";
      break;
    case 39:
      v4 = "AAC_LC/48000/5.1";
      break;
    case 40:
      v4 = "AAC_LC/48000/5.1.2";
      break;
    case 41:
      v4 = "AAC_ELD/48000/5.1";
      break;
    case 42:
      v4 = "AAC_ELD/48000/5.1.2";
      break;
    case 43:
      v4 = "AAC-ELD/32000/1";
      break;
    case 44:
      v4 = "PCM/48000/16/5.1";
      break;
    case 45:
      v4 = "PCM/48000/32f/1";
      break;
    case 46:
      v4 = "PCM/48000/32f/2";
      break;
    case 47:
      v4 = "PCM/48000/32f/5.1";
      break;
    case 48:
      v4 = "PCM/48000/32f/5.1.2";
      break;
    case 49:
      v4 = "DDPLUS/48000/2";
      break;
    case 50:
      v4 = "DDPLUS/48000/5.1";
      break;
    case 51:
      v4 = "DDPLUS/48000/5.1.2";
      break;
    case 52:
      v4 = "DDPLUS/48000/7.1.4";
      break;
    case 53:
      v4 = "DDPLUS/48000/9.1.6";
      break;
    case 54:
      v4 = "QAAC/48000/2";
      break;
    case 55:
      v4 = "QAAC/48000/5.1";
      break;
    case 56:
      v4 = "QAAC/48000/5.1.2";
      break;
    case 57:
      v4 = "QAACHE/48000/2";
      break;
    case 58:
      v4 = "QAACHE/48000/5.1";
      break;
    case 60:
      v4 = "QAACHE/48000/5.1.2";
      break;
    case 61:
      v4 = "QLAC/48000/24/2";
      break;
    case 62:
      v4 = "QC3/48000/2";
      break;
    case 63:
      v4 = "QC3/48000/5.1";
      break;
    case 64:
      v4 = "APAC/48000/2";
      break;
    case 65:
      v4 = "APAC/48000/5.1";
      break;
    case 66:
      v4 = "APAC/48000/5.1.2";
      break;
    case 67:
      v4 = "APAC/48000/7.1";
      break;
    case 68:
      v4 = "APAC/48000/7.1.4";
      break;
    case 69:
      v4 = "PCM/48000/32f/7.1.4";
      break;
    case 70:
      v4 = "QAAC/44100/2";
      break;
    case 71:
      v4 = "QAACHE/44100/2";
      break;
    case 72:
      v4 = "QAACHEV2/44100/2";
      break;
    case 73:
      v4 = "QLAC/44100/24/2";
      break;
    case 74:
      v4 = "MP3/44100/2";
      break;
    case 76:
      v4 = "APAC/48000/5.1.4";
      break;
    case 77:
      v4 = "APAC/48000/7.1.2";
      break;
    case 78:
      v4 = "PCM/48000/16/7.1";
      break;
    case 79:
      v4 = "PCM/48000/32f/7.1";
      break;
    case 80:
      v4 = "PCM/48000/16/5.1.4";
      break;
    case 81:
      v4 = "PCM/48000/32f/5.1.4";
      break;
    case 82:
      v4 = "PCM/48000/16/7.1.2";
      break;
    case 83:
      v4 = "PCM/48000/32f/7.1.2";
      break;
    case 84:
      v4 = "PCM/48000/16/7.1.4";
      break;
    case 85:
      v4 = "ALAC/44100/20/2";
      break;
    case 86:
      v4 = "ALAC/48000/20/2";
      break;
    case 87:
      v4 = "QAC3/48000/5.1";
      break;
    case 88:
      v4 = "QEC3/48000/7.1";
      break;
    case 89:
      v4 = "PAAC/44100/2";
      break;
    case 90:
      v4 = "AAC_LC/48000/7.1";
      break;
    case 91:
      v4 = "EAC3/48000/5.1";
      break;
    case 92:
      v4 = "APAC/48000/9.1.6";
      break;
    case 93:
      v4 = "PCM/48000/16/9.1.6";
      break;
    case 94:
      v4 = "PCM/48000/32f/9.1.6";
      break;
    default:
      if (AudioFormatIndex == 75)
      {
        v4 = "MP3/48000/2";
      }

      else
      {
        v4 = "";
      }

      break;
  }

  lhs = *(DerivedStorage + 1732);
  rhs = *(DerivedStorage + 1680);
  CMTimeSubtract(&time, &lhs, &rhs);
  CMTimeGetSeconds(&time);
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  if (*(DerivedStorage + 1280))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v6 = Mutable;
      CFDictionarySetValue(Mutable, @"sessionType", @"AudioBuffered");
      strlen(v4);
      CFDictionarySetCString();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_68(*(DerivedStorage + 1708));
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_68(*(DerivedStorage + 1712));
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_68(*(DerivedStorage + 1716));
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_68(*(DerivedStorage + 1720));
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_68(*(DerivedStorage + 1760));
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_68(*(DerivedStorage + 1764));
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_68(*(DerivedStorage + 1768));
      FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_68(*(DerivedStorage + 1772));
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      APSRTCReportingAgentSendEvent();
      CFRelease(v6);
    }

    else
    {
      APSLogErrorAt();
    }
  }
}

uint64_t bufferedAudioEngine_getMaxFirstAvailableTransportTimestampForStartUp()
{
  OUTLINED_FUNCTION_3_7();
  v1 = *MEMORY[0x277CEA038];
  v6 = *(MEMORY[0x277CEA038] + 4);
  v7 = v6;
  v2 = *(MEMORY[0x277CEA038] + 20);
  v8 = v2;
  if (!bufferedAudioEngine_isSpeakerPlayingBySelf())
  {
    v3 = *(CMBaseObjectGetDerivedStorage() + 640);
    v9 = v6;
    for (i = v2; v3; v3 = *v3)
    {
      if (APSAudioTransportTimeIsValid())
      {
        if (APSAudioTransportTimeIsValid())
        {
          if (*(v3 + 46) != v1)
          {
            APSLogErrorAt();
            v4 = 4294960540;
            APSLogErrorAt();
            return v4;
          }

          APSAudioTransportTimeMax();
        }

        else
        {
          v9 = *(v3 + 188);
          i = *(v3 + 204);
          v1 = *(v3 + 46);
        }
      }
    }

    v7 = v9;
    v8 = i;
  }

  v4 = 0;
  if (v0)
  {
    *v0 = v1;
    *(v0 + 4) = v7;
    *(v0 + 20) = v8;
  }

  return v4;
}

void bufferedAudioEngine_hoseGetAnchorCallbackCompletionHandlerInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = APSAudioTransportTimeCopyDebugDesc();
  if (*DerivedStorage)
  {
    goto LABEL_21;
  }

  HoseDecriptorFromHose = bufferedAudioEngine_getHoseDecriptorFromHose();
  if (!HoseDecriptorFromHose)
  {
    OUTLINED_FUNCTION_77();
    if (!(v11 ^ v12 | v10) || v14 == -1 && !OUTLINED_FUNCTION_4_3())
    {
      goto LABEL_21;
    }

    if (*v1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_47();
LABEL_20:
    OUTLINED_FUNCTION_2_1();
    LogPrintF();
    goto LABEL_21;
  }

  v5 = HoseDecriptorFromHose;
  v6 = *(v1 + 72);
  if (v6 == 200501)
  {
    if (gLogCategory_APAudioEngineBuffered > 90 || gLogCategory_APAudioEngineBuffered == -1 && !OUTLINED_FUNCTION_4_3())
    {
      goto LABEL_21;
    }

    if (*v1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_26_1();
    goto LABEL_20;
  }

  if (v6)
  {
    if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3()))
    {
      if (*v1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_2_1();
      LogPrintF();
    }

    ++*(v5 + 43);
    bufferedAudioEngine_handleErrorWithReceiverAnchor(*v1, *(v1 + 8), *(v1 + 72));
    goto LABEL_21;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (*v1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_47();
    LogPrintF();
  }

  OUTLINED_FUNCTION_74();
  if (!v8)
  {
    v5[9] = *(DerivedStorage + 888);
    *(v5 + 43) = 0;
    v13 = *(DerivedStorage + 944);
    if (v13)
    {
      CFRelease(v13);
      LODWORD(v7) = 0;
      *(DerivedStorage + 944) = 0;
      goto LABEL_22;
    }

LABEL_21:
    LODWORD(v7) = 0;
    goto LABEL_22;
  }

  v7 = v8;
  ++*(v5 + 43);
  OUTLINED_FUNCTION_77();
  if (v11 ^ v12 | v10 && (v9 != -1 || OUTLINED_FUNCTION_4_3()))
  {
    if (*v1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_2_1();
    LogPrintF();
  }

  bufferedAudioEngine_handleErrorWithReceiverAnchor(*v1, *(v1 + 8), v7);
LABEL_22:
  if (v3)
  {
    CFRelease(v3);
  }

  **(v1 + 80) = v7;
}

void bufferedAudioEngine_suspendInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (!*(DerivedStorage + 528))
  {
    Mutable = 0;
    goto LABEL_36;
  }

  if (*(DerivedStorage + 592))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      goto LABEL_45;
    }

    FigCFDictionarySetValue();
    v5 = *v1;
    v6 = CMBaseObjectGetDerivedStorage();
    if (*(v6 + 648))
    {
      for (i = v6; *(i + 640); bufferedAudioEngine_removeHose(v5, *(*(i + 640) + 16)))
      {
        bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, &v18);
        APSAudioHoseMetricCollectorReportMetrics();
        APSAudioHoseMetricCollectorDeregisterHose();
      }
    }

    else
    {
      APSLogErrorAt();
    }

    if (FigEndpointStreamSuspend())
    {
LABEL_45:
      APSLogErrorAt();
      goto LABEL_36;
    }
  }

  else
  {
    Mutable = 0;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
  {
    if (*v1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  bufferedAudioEngine_tearDownResumedStateAndStructuresInternal(*v1, 1);
  v8 = *(v3 + 600);
  if (v8)
  {
    CFRelease(v8);
    *(v3 + 600) = 0;
  }

  v9 = *(v3 + 608);
  if (v9)
  {
    CFRelease(v9);
    *(v3 + 608) = 0;
  }

  v10 = *(v3 + 592);
  if (v10)
  {
    CFRelease(v10);
    *(v3 + 592) = 0;
  }

  v11 = *(v3 + 1232);
  if (v11)
  {
    CFRelease(v11);
    *(v3 + 1232) = 0;
  }

  v12 = *(v3 + 1024);
  if (v12)
  {
    CFRelease(v12);
    *(v3 + 1024) = 0;
  }

  APSOasisCPUFloorRaiserReleaseAssertion();
  if (*(v3 + 392))
  {
    v13 = strstr((v3 + 392), "-SP");
    if (v13)
    {
      *v13 = 32;
    }
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 88))
  {
    v14 = OUTLINED_FUNCTION_87();
    v15(v14);
  }

  *(v3 + 528) = 0;
LABEL_36:
  v16 = v1[2];
  if (v16)
  {
    (v16)(*v1, *(v1 + 8), v1[3]);
  }

  APSDispatchSectionLeave();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v17 = v1[1];
  if (v17)
  {
    CFRelease(v17);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  free(v1);
}

uint64_t bufferedAudioEngine_flushInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v43[0] = 0;
  v42 = 0;
  v3 = *(DerivedStorage + 884);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  if (!*DerivedStorage)
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 536))
    {
      *(DerivedStorage + 888) = 0;
      v5 = *(DerivedStorage + 1192);
      if (v5)
      {
        v6 = CMBufferQueueReset(v5);
        if (v6)
        {
          v32 = v6;
          goto LABEL_68;
        }

        *(v4 + 1208) = 0;
      }

      *(v4 + 880) = 0;
      *(v4 + 652) = 0;
      CFArrayRemoveAllValues(*(v4 + 1104));
      v7 = bufferedAudioEngine_releaseCryptors(*v1, 0);
      if (v7)
      {
        v32 = v7;
        goto LABEL_68;
      }

      *(v4 + 1224) = 0;
      v8 = bufferedAudioEngine_releaseMagicCookies(*v1, 0);
      if (v8)
      {
        v32 = v8;
        goto LABEL_68;
      }

      v9 = *(v4 + 1048);
      if (v9)
      {
        CFRelease(v9);
        *(v4 + 1048) = 0;
      }

      *(v4 + 840) = 0;
      *(v4 + 896) = 0xBFF0000000000000;
      v10 = MEMORY[0x277CC0898];
      v35 = *MEMORY[0x277CC0898];
      *(v4 + 1164) = *MEMORY[0x277CC0898];
      v34 = *(v10 + 16);
      *(v4 + 1180) = v34;
      *(v4 + 653) = 0;
      bufferedAudioEngine_updatePlaybackState(*v1, 3);
      if (v3 <= 7 && ((1 << v3) & 0xE4) != 0)
      {
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
        {
          if (*v1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_114();
          OUTLINED_FUNCTION_2_0();
          LogPrintF();
        }

        bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(*v1, 4294949716, MEMORY[0x277CC08F0], MEMORY[0x277CC0898], 0);
        *(v4 + 952) = 0u;
      }

      v11 = (v4 + 756);
      *(v4 + 976) = 0u;
      APSTimedInfoManagerFlush();
      APSTimedInfoManagerSuspend();
      v12 = *(v4 + 872);
      if (v12)
      {
        CFRelease(v12);
        *(v4 + 872) = 0;
      }

      v13 = *v11;
      v14 = *(v4 + 764);
      v36 = v4;
      v15 = *(v4 + 768);
      v16 = *(v4 + 772);
      bufferedAudioEngine_generateNewFirstRemoteMediaTime(*v1, &v37);
      value = v37.value;
      timescale = v37.timescale;
      flags = v37.flags;
      if ((v37.flags & 0x1D) == 1)
      {
        if ((v15 & 0x1D) == 1)
        {
          epoch = v37.epoch;
          *(v36 + 992) = 1;
          *(v36 + 653) = 0;
          *v11 = value;
          *(v36 + 764) = timescale;
          *(v36 + 768) = flags;
          v11[2] = epoch;
          v11[3] = value;
          *(v36 + 788) = timescale;
          *(v36 + 792) = flags;
          v11[5] = epoch;
          *(v36 + 804) = v35;
          *(v36 + 820) = v34;
          *(v36 + 708) = v35;
          *(v36 + 724) = v34;
          *(v36 + 748) = v34;
          *(v36 + 732) = v35;
          *(v36 + 1256) = v35;
          *(v36 + 1272) = v34;
          v21 = *(v36 + 1232);
          if (v21)
          {
            CFRelease(v21);
            *(v36 + 1232) = 0;
          }

          v37.value = value;
          v37.timescale = timescale;
          v37.flags = flags;
          v37.epoch = epoch;
          bufferedAudioEngine_updateNextTranscodeBurstTimeAndUnRest();
          if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
          {
            if (*v1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }

          for (i = *(v36 + 640); i; i = *i)
          {
            bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, &v37);
            OUTLINED_FUNCTION_102();
            APSAudioHoseMetricCollectorSetPlaybackStateForHose();
            if (*(*(CMBaseObjectGetVTable() + 8) + 56))
            {
              v23 = OUTLINED_FUNCTION_129();
              v24(v23);
            }
          }

          v25 = v36;
          v26 = APMessageRingBufferedFlush(*(v36 + 616), &v42, v43);
          if (!v26)
          {
            v27 = *(v36 + 624);
            if (v27)
            {
              CFRelease(v27);
              *(v36 + 624) = 0;
            }

            CFArrayRemoveAllValues(*(v36 + 1248));
            FigCFDictionaryApplyBlock();
            for (j = *(v36 + 640); j; j = *j)
            {
              if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
              {
                if (*v1)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_70();
                v25 = v29;
                OUTLINED_FUNCTION_87();
                OUTLINED_FUNCTION_2_0();
                LogPrintF();
              }

              *(j + 34) = v42;
              if (*(j + 32) || !*(v25 + 577))
              {
                v30 = *v1;
                v31 = v43[0];
              }

              else
              {
                v30 = *v1;
                v31 = *(v39 + 12);
              }

              v37.value = v13;
              v37.timescale = v14;
              v37.flags = v15;
              v37.epoch = v16;
              bufferedAudioEngine_flushHose(v30, j, v31, &v37);
            }

            bufferedAudioEngine_wakeUpHosesAndAudioTimer(*v1);
            goto LABEL_54;
          }

          v32 = v26;
LABEL_68:
          APSLogErrorAt();
          goto LABEL_55;
        }

        APSLogErrorAt();
        if (gLogCategory_APAudioEngineBuffered > 90 || gLogCategory_APAudioEngineBuffered == -1 && !_LogCategory_Initialize())
        {
LABEL_74:
          v32 = 4294951815;
          goto LABEL_55;
        }

        if (!*v1)
        {
LABEL_73:
          LogPrintF();
          goto LABEL_74;
        }
      }

      else
      {
        APSLogErrorAt();
        if (gLogCategory_APAudioEngineBuffered > 90 || gLogCategory_APAudioEngineBuffered == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_74;
        }

        if (!*v1)
        {
          goto LABEL_73;
        }
      }

      CMBaseObjectGetDerivedStorage();
      goto LABEL_73;
    }
  }

LABEL_54:
  v32 = 0;
LABEL_55:
  _Block_object_dispose(&v38, 8);
  return v32;
}

void bufferedAudioEngine_hoseFlushCallbackCompletionHandlerInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  if (!*CMBaseObjectGetDerivedStorage())
  {
    v4 = OUTLINED_FUNCTION_112();
    if (v4)
    {
      OUTLINED_FUNCTION_32_0(v4);
      FigCFDictionaryApplyBlock();
      if (*(v1 + 48))
      {
        if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3()))
        {
          if (*v1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_14_7();
          OUTLINED_FUNCTION_135();
LABEL_15:
          OUTLINED_FUNCTION_2_1();
          LogPrintF();
        }
      }

      else
      {
        if (gLogCategory_APAudioEngineBuffered <= 50)
        {
          OUTLINED_FUNCTION_10_4();
          if (!v5 || _LogCategory_Initialize())
          {
            if (*v1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_14_7();
            OUTLINED_FUNCTION_70();
            LogPrintF();
          }
        }

        OUTLINED_FUNCTION_53((v2 + 804));
        v6 = MEMORY[0x277CEA038];
        *(v3 + 184) = *MEMORY[0x277CEA038];
        *(v3 + 196) = *(v6 + 12);
      }
    }

    else if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3()))
    {
      if (*v1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_4_16();
      goto LABEL_15;
    }
  }

  **(v1 + 56) = 0;
}

_BYTE *bufferedAudioEngine_hoseFlushWithinSampleRangeCallbackCompletionHandlerInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    result = OUTLINED_FUNCTION_112();
    if (result)
    {
      OUTLINED_FUNCTION_32_0(result);
      result = FigCFDictionaryApplyBlock();
      if (*(v1 + 80))
      {
        if (gLogCategory_APAudioEngineBuffered <= 90)
        {
          if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
          {
            if (*v1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_14_7();
            OUTLINED_FUNCTION_135();
LABEL_15:
            OUTLINED_FUNCTION_2_1();
LABEL_19:
            result = LogPrintF();
          }
        }
      }

      else if (gLogCategory_APAudioEngineBuffered <= 50)
      {
        OUTLINED_FUNCTION_10_4();
        if (!v3 || (result = _LogCategory_Initialize(), result))
        {
          if (*v1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_14_7();
          OUTLINED_FUNCTION_70();
          goto LABEL_19;
        }
      }
    }

    else if (gLogCategory_APAudioEngineBuffered <= 90)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
      {
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_4_16();
        goto LABEL_15;
      }
    }
  }

  **(v1 + 88) = 0;
  return result;
}

void bufferedAudioEngine_setRateAndAnchorTimeInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_54(MEMORY[0x277CC0898]);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_29_0();
  if (v23 ^ v24 | v22 && (v4 != -1 || OUTLINED_FUNCTION_4()))
  {
    v5 = *v1;
    if (*v1)
    {
      v6 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v6 = "";
    }

    v2 = *(DerivedStorage + 530);
    if (*(DerivedStorage + 840))
    {
      v7 = "TRUE";
    }

    else
    {
      v7 = "FALSE";
    }

    if (*(DerivedStorage + 881))
    {
      v8 = "TRUE";
    }

    else
    {
      v8 = "FALSE";
    }

    v9 = *(DerivedStorage + 888);
    v10 = *(DerivedStorage + 896);
    v11 = *(v1 + 8);
    CString = bufferedAudioEngine_playbackStateGetCString(*(DerivedStorage + 884));
    v113 = v10;
    v115 = v11;
    v111 = v9;
    v107 = v7;
    v109 = v8;
    v103 = v6;
    v105 = v2;
    v101 = v5;
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  if (*(DerivedStorage + 536))
  {
    v12 = 0;
  }

  else
  {
    v12 = -72094;
  }

  if (*DerivedStorage)
  {
    v13 = -15487;
  }

  else
  {
    v13 = v12;
  }

  if (v13)
  {
    OUTLINED_FUNCTION_36_0();
    bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(v14, 4294949714, MEMORY[0x277CC0898], MEMORY[0x277CC0898], 0);
LABEL_25:
    APSLogErrorAt();
    goto LABEL_149;
  }

  if (*(DerivedStorage + 816))
  {
    OUTLINED_FUNCTION_55((DerivedStorage + 804));
    OUTLINED_FUNCTION_117();
    CMTimeSubtract(&v121, &lhs, &rhs);
  }

  else
  {
    OUTLINED_FUNCTION_54(MEMORY[0x277CC08F0]);
  }

  CMBaseObjectGetDerivedStorage();
  v15 = *(v1 + 8);
  if (v15 == 1.0)
  {
    *(DerivedStorage + 882) = 0;
    v16 = *(DerivedStorage + 884);
    if ((v16 - 3) < 2)
    {
      OUTLINED_FUNCTION_29_0();
      if (v23 ^ v24 | v22 && (v17 != -1 || OUTLINED_FUNCTION_4()))
      {
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }

      v30 = *v1;
      v31 = CMBaseObjectGetDerivedStorage();
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&lhs, HostTimeClock);
      *(v31 + 1680) = lhs;
      *(v31 + 1704) = *(v31 + 648);
      v33 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_55((v33 + 756));
      OUTLINED_FUNCTION_117();
      CMTimeSubtract(&time, &lhs, &rhs);
      Seconds = CMTimeGetSeconds(&time);
      *(v31 + 1708) = Seconds;
      bufferedAudioEngine_getStreamInfoForStartup(v30, (v31 + 1712), (v31 + 1716), (v31 + 1720), (v31 + 1724), (v31 + 1730), (v31 + 1726), (v31 + 1728));
      OUTLINED_FUNCTION_9_5();
      kdebug_trace();
      v35 = LogCategoryCopyOSLogHandle();
      OUTLINED_FUNCTION_98();
      if (CUObfuscatedPtr() && os_signpost_enabled(v2))
      {
        LOWORD(lhs.value) = 0;
        OUTLINED_FUNCTION_97();
        _os_signpost_emit_with_name_impl(v36, v37, v38, v39, v40, v41, v42, 2u);
      }

      if (v35)
      {
        os_release(v35);
      }

      goto LABEL_100;
    }
  }

  else
  {
    v16 = *(DerivedStorage + 884);
    if (v15 == 0.0 && (v16 - 3) < 2)
    {
      OUTLINED_FUNCTION_29_0();
      if (v23 ^ v24 | v22 && (v25 != -1 || OUTLINED_FUNCTION_4()))
      {
        v26 = *v1;
        if (*v1)
        {
          v27 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v27 = "";
        }

        v105 = *(DerivedStorage + 530);
        v107 = bufferedAudioEngine_playbackStateGetCString(*(DerivedStorage + 884));
        v101 = v26;
        v103 = v27;
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }

      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_7_8(v46, v47, v48, v49, v50, v51, v52, v53, v101, v103, v105, v107, v109, v111, v113, v115, CString, v119, *&v121.value, v121.epoch);
      v55 = MEMORY[0x277CC0898];
      p_lhs = &lhs;
      v57 = 0;
      goto LABEL_126;
    }
  }

  if ((v16 - 5) <= 1)
  {
    if (v15 == 0.0)
    {
      OUTLINED_FUNCTION_29_0();
      if (v23 ^ v24 | v22 && (v19 != -1 || OUTLINED_FUNCTION_4()))
      {
        v20 = *v1;
        if (*v1)
        {
          v21 = (CMBaseObjectGetDerivedStorage() + 392);
        }

        else
        {
          v21 = "";
        }

        v58 = *(DerivedStorage + 530);
        v59 = *(DerivedStorage + 888);
        lhs = v121;
        v111 = CMTimeGetSeconds(&lhs);
        v109 = 4294949716;
        v107 = v59;
        v103 = v21;
        v105 = v58;
        v101 = v20;
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }

      OUTLINED_FUNCTION_99();
      OUTLINED_FUNCTION_7_8(v60, v61, v62, v63, v64, v65, v66, v67, v101, v103, v105, v107, v109, v111, v113, v115, CString, v119, *&v121.value, v121.epoch);
      v68 = MEMORY[0x277CC0898];
      bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(v69, 4294949716, &lhs, MEMORY[0x277CC0898], 0);
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_7_8(v70, v71, v72, v73, v74, v75, v76, v77, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, *&v121.value, v121.epoch);
      bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(v78, 0, &lhs, v68, 0);
      *(DerivedStorage + 840) = 0;
      *(DerivedStorage + 896) = 0xBFF0000000000000;
      *(DerivedStorage + 952) = 0u;
      bufferedAudioEngine_updatePlaybackState(*v1, 3);
      goto LABEL_149;
    }

LABEL_63:
    if (v15 == 1.0)
    {
      OUTLINED_FUNCTION_77();
      if (v23 ^ v24 | v22)
      {
        OUTLINED_FUNCTION_8_8();
        if (!v22 || _LogCategory_Initialize())
        {
          if (*v1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_17_3();
          LogPrintF();
        }
      }

      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_7_8(v79, v80, v81, v82, v83, v84, v85, v86, v101, v103, v105, v107, v109, v111, v113, v115, CString, v119, *&v121.value, v121.epoch);
      v55 = MEMORY[0x277CC0898];
      p_lhs = &lhs;
      v57 = 4294949715;
LABEL_126:
      bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(v54, v57, p_lhs, v55, 0);
      goto LABEL_149;
    }

    goto LABEL_86;
  }

  if (v16 != 8)
  {
    if (v16 != 7)
    {
      goto LABEL_86;
    }

    if (v15 == 0.0)
    {
      OUTLINED_FUNCTION_29_0();
      if (v23 ^ v24 | v22 && (v28 != -1 || OUTLINED_FUNCTION_4()))
      {
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }

      *(DerivedStorage + 882) = 1;
      OUTLINED_FUNCTION_99();
      OUTLINED_FUNCTION_7_8(v87, v88, v89, v90, v91, v92, v93, v94, v101, v103, v105, v107, v109, v111, v113, v115, CString, v119, *&v121.value, v121.epoch);
      bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(v95, 4294949716, &lhs, MEMORY[0x277CC0898], 0);
      *(DerivedStorage + 896) = *(v1 + 8);
      *(DerivedStorage + 952) = *(v1 + 64);
      goto LABEL_149;
    }

    goto LABEL_63;
  }

  if (v15 == 1.0)
  {
    OUTLINED_FUNCTION_77();
    if (v23 ^ v24 | v22)
    {
      OUTLINED_FUNCTION_8_8();
      if (!v22 || _LogCategory_Initialize())
      {
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_17_3();
        LogPrintF();
      }
    }

    OUTLINED_FUNCTION_36_0();
    p_lhs = MEMORY[0x277CC0898];
    v57 = 4294949715;
    v55 = MEMORY[0x277CC0898];
    goto LABEL_126;
  }

  if (v15 != 0.0)
  {
LABEL_86:
    OUTLINED_FUNCTION_77();
    if (v23 ^ v24 | v22)
    {
      OUTLINED_FUNCTION_8_8();
      if (!v22 || _LogCategory_Initialize())
      {
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_114();
        LogPrintF();
      }
    }

    goto LABEL_149;
  }

  OUTLINED_FUNCTION_29_0();
  if (v23 ^ v24 | v22 && (v29 != -1 || OUTLINED_FUNCTION_4()))
  {
    if (*v1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  if (*(DerivedStorage + 1504))
  {
    mach_absolute_time();
    *(DerivedStorage + 1512) += UpTicksToMilliseconds();
    *(DerivedStorage + 1504) = 0;
  }

LABEL_100:
  *(DerivedStorage + 896) = *(v1 + 8);
  v43 = *(v1 + 40);
  *(DerivedStorage + 920) = *(v1 + 56);
  *(DerivedStorage + 904) = v43;
  *(DerivedStorage + 952) = *(v1 + 64);
  if ((*(DerivedStorage + 744) & 1) == 0 && (*(v1 + 28) & 1) != 0 && *(v1 + 8) != 0.0)
  {
    v44 = *(v1 + 16);
    *(DerivedStorage + 748) = *(v1 + 32);
    *(DerivedStorage + 732) = v44;
    OUTLINED_FUNCTION_29_0();
    if (v23 ^ v24 | v22)
    {
      if (v45 != -1 || OUTLINED_FUNCTION_4())
      {
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        lhs = *(DerivedStorage + 732);
        CMTimeGetSeconds(&lhs);
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }
    }
  }

  if (*(v1 + 80))
  {
    Value = FigCFDictionaryGetValue();
    v97 = *(DerivedStorage + 1488);
    *(DerivedStorage + 1488) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v97)
    {
      CFRelease(v97);
    }
  }

  v98 = *v1;
  if (*(DerivedStorage + 896) == 0.0)
  {
    bufferedAudioEngine_updatePlaybackState(v98, 2);
    if (bufferedAudioEngine_handleSetRateToZero(*v1))
    {
      goto LABEL_25;
    }
  }

  else
  {
    bufferedAudioEngine_wakeUpHosesAndAudioTimer(v98);
    bufferedAudioEngine_updatePlaybackState(*v1, 5);
    if (*(DerivedStorage + 592))
    {
      if (bufferedAudioEngine_startPlaybackIfNecessary(*v1, 0))
      {
        goto LABEL_25;
      }
    }

    else
    {
      OUTLINED_FUNCTION_29_0();
      if (v23 ^ v24 | v22 && (v99 != -1 || OUTLINED_FUNCTION_4()))
      {
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }

      bufferedAudioEngine_updatePlaybackState(*v1, 6);
      if (bufferedAudioEngine_handleSetRateToOne(*v1))
      {
        goto LABEL_25;
      }
    }
  }

LABEL_149:
  bufferedAudioEngine_updateDataProcessingTargetQueueInternal(*v1);
  if (*v1)
  {
    CFRelease(*v1);
  }

  v100 = *(v1 + 80);
  if (v100)
  {
    CFRelease(v100);
  }

  free(v1);
}

uint64_t bufferedAudioEngine_setEndOfSiriTTSUtteranceMediaTimeInternal(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x277CC0898];
  *&v49.value = *MEMORY[0x277CC0898];
  v4 = *(MEMORY[0x277CC0898] + 16);
  v47 = 0;
  blockBufferOut = 0;
  v5 = *(a1 + 8);
  v49.epoch = v4;
  value = v5;
  timescale = *(a1 + 16);
  if (*DerivedStorage)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 20);
  if ((v6 & 1) == 0 || (v7 = DerivedStorage, v29 = v3, v8 = *(a1 + 24), time1.value = *(a1 + 8), time1.timescale = *(a1 + 16), time1.flags = v6, time1.epoch = v8, OUTLINED_FUNCTION_120(MEMORY[0x277CC08F0]), CMTimeCompare(&time1, &time2) <= 0))
  {
    APSLogErrorAt();
    v14 = 4294951815;
    goto LABEL_9;
  }

  time1 = *(v7 + 756);
  OUTLINED_FUNCTION_120((v7 + 780));
  CMTimeSubtract(&v49, &time1, &time2);
  FramesPerPacket = APSAudioFormatDescriptionGetFramesPerPacket();
  APSAudioFormatDescriptionGetSampleRate();
  CMTimeMake(&time2, FramesPerPacket, v10);
  lhs.value = value;
  lhs.timescale = timescale;
  lhs.flags = v6;
  lhs.epoch = v8;
  CMTimeSubtract(&time1, &lhs, &time2);
  value = time1.value;
  timescale = time1.timescale;
  if (*(v7 + 221) != 1)
  {
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_118();
    if (CMTimeCompare(&time1, &time2) < 1)
    {
      if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3()))
      {
        if (*a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_35_0();
        CMTimeGetSeconds(&time1);
        OUTLINED_FUNCTION_119();
        CMTimeGetSeconds(&time1);
        OUTLINED_FUNCTION_2_1();
        LogPrintF();
      }

      v16 = CMBlockBufferCreateEmpty(*MEMORY[0x277CBECE8], 0, 0, &blockBufferOut);
      if (v16)
      {
        v14 = v16;
      }

      else
      {
        v17 = *(v7 + 77);
        OUTLINED_FUNCTION_9_5();
        EncodeMessageBackingSize = bufferedAudioEngine_getEncodeMessageBackingSize(v18, v19);
        NextFreeBacking = APMessageRingBufferedGetNextFreeBacking(v17, EncodeMessageBackingSize);
        if (!NextFreeBacking)
        {
          APSLogErrorAt();
          v14 = 4294895201;
          goto LABEL_9;
        }

        v22 = NextFreeBacking;
        v49 = *(v7 + 756);
        APSAudioFormatDescriptionGetSampleRate();
        OUTLINED_FUNCTION_118();
        CMTimeConvertScale(&time1, &time2, v23, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v49 = time1;
        CryptorIDForCryptor = bufferedAudioEngine_getCryptorIDForCryptor(*(v7 + 153));
        MagicCookieIDForMagicCookieData = bufferedAudioEngine_getMagicCookieIDForMagicCookieData(*(v7 + 131));
        v26 = *a1;
        v30[0] = 0;
        v30[1] = 0;
        v31 = 1;
        v32 = CryptorIDForCryptor;
        v33 = MagicCookieIDForMagicCookieData;
        v34 = 0;
        v35 = v29;
        v36 = v4;
        v37 = v29;
        v38 = v4;
        v39 = 0u;
        memset(v40, 0, sizeof(v40));
        v41 = v29;
        v42 = v4;
        v43 = 0;
        time1 = v49;
        bufferedAudioEngine_encodeMessage(v26, v22, &time1, v30, blockBufferOut, &v47);
        OUTLINED_FUNCTION_119();
        v14 = bufferedAudioEngine_enqueueMessageForSending(v27, v28, &time1, MEMORY[0x277CC08F0]);
        if (!v14)
        {
          goto LABEL_9;
        }
      }

      APSLogErrorAt();
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_35_0();
  v12 = CMTimeCopyAsDictionary(&time1, v11);
  if (v12)
  {
    v13 = v12;
    CFArrayAppendValue(*(v7 + 138), v12);
    CFRelease(v13);
LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  APSLogErrorAt();
  v14 = 4294951816;
LABEL_9:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  return v14;
}

uint64_t bufferedAudioEngine_applyVolumeFadeInternal(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(a1 + 8);
  v19 = *(a1 + 12);
  v20 = *(a1 + 20);
  if (*DerivedStorage || !*(DerivedStorage + 1160))
  {
    return 0;
  }

  v17 = *(a1 + 24);
  if ((v17 & 1) == 0)
  {
    APSLogErrorAt();
    return 4294951815;
  }

  if ((v3 - 1) < 2)
  {
    v4 = *(DerivedStorage + 640);
    if (v4)
    {
      v16 = *(a1 + 28);
      do
      {
        OUTLINED_FUNCTION_69();
        if (v9)
        {
          if (v6 ^ v7 | v5 && (v8 != -1 || OUTLINED_FUNCTION_4()))
          {
            if (*a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_26_1();
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }
        }

        else
        {
          if (v6 ^ v7 | v5 && (v8 != -1 || OUTLINED_FUNCTION_4()))
          {
            if (*a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            APSGetVolumeFadeTypeName();
            time.value = v19;
            time.timescale = v20;
            time.flags = v17;
            time.epoch = v16;
            CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_2_0();
            LogPrintF();
          }

          v10 = v4[2];
          APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
          v11 = OUTLINED_FUNCTION_111();
          if (v11)
          {
            v12 = *(v11 + 16);
            if (v12)
            {
              v13 = *(v12 + 48);
              if (v13)
              {
                time.value = v19;
                time.timescale = v20;
                time.flags = v17;
                time.epoch = v16;
                v13(v10, v3, &time);
              }
            }
          }
        }

        v4 = *v4;
      }

      while (v4);
    }

    return 0;
  }

  if (gLogCategory_APAudioEngineBuffered <= 90)
  {
    OUTLINED_FUNCTION_8_8();
    if (!v5 || _LogCategory_Initialize())
    {
      if (*a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LogPrintF();
    }
  }

  v14 = 4294951815;
  APSLogErrorAt();
  return v14;
}

void bufferedAudioEngine_handleClockLockStateChangedInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 328) && !*DerivedStorage)
    {
      v4 = APSGetFBOPropertyInt64();
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
      {
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }

      if (v4 && *(v3 + 840) && *(v3 + 884) == 8 && *(v3 + 881))
      {
        CMBaseObjectGetDerivedStorage();
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
        {
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_1_26();
          OUTLINED_FUNCTION_2_0();
          LogPrintF();
        }

        bufferedAudioEngine_handleSetRateToOne_sendAnchorToAllHoses(a1);
      }
    }

    CFRelease(a1);
  }
}

uint64_t APAudioEngineBufferedCreate_cold_6()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t APAudioEngineBufferedCreate_cold_14()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t APAudioEngineBufferedCreate_cold_23()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_5_11(DerivedStorage, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t APAudioEngineBufferedCreate_cold_24(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_3();
  return LogPrintF();
}

uint64_t APAudioEngineBufferedCreate_cold_26(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_3();
  return LogPrintF();
}

uint64_t APAudioEngineBufferedCreate_cold_28(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t APAudioEngineBufferedCreate_cold_34(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_29();
  *a1 = result;
  return result;
}

uint64_t APAudioEngineBufferedCreate_cold_35(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_29();
  *a1 = result;
  return result;
}

uint64_t APAudioEngineBufferedCreate_cold_36(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_29();
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_updateStartupConfiguration_cold_1()
{
  OUTLINED_FUNCTION_27();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_updateStartupConfiguration_cold_2()
{
  OUTLINED_FUNCTION_27();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_Finalize_cold_1(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_CopyProperty_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_3();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_SetProperty_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_3();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_invalidateInternal_cold_1(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  return OUTLINED_FUNCTION_6();
}

uint64_t bufferedAudioEngine_removeHose_cold_2(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    v4 = result;
    if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4(), result))
    {
      if (v4)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_2_0();
      result = LogPrintF();
    }
  }

  *a3 = 0;
  return result;
}

uint64_t bufferedAudioEngine_removeHose_cold_3()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_tearDownResumedStateAndStructuresInternal_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

void bufferedAudioEngine_tearDownResumedStateAndStructuresInternal_cold_2(uint64_t a1)
{
  v2 = APSThreadSafeDictionaryCopyMutableDictionary();
  v3 = FigCFDictionaryCopyArrayOfValues();
  Count = CFArrayGetCount(v3);
  if (Count > 0)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      CFArrayGetValueAtIndex(v3, i);
      v7 = APSThreadSafeDictionaryCopyMutableDictionary();
      if (!v7)
      {
        break;
      }

      v8 = v7;
      if (FigCFDictionaryGetInt64IfPresent())
      {
        FigCFDictionaryGetInt32IfPresent();
        mach_absolute_time();
        UpTicksToSeconds();
        FigCFDictionarySetInt32();
        CFDictionaryRemoveValue(v8, @"AudioStreamLastStartTime");
      }

      CFArrayAppendValue(*(a1 + 1376), v8);
      CFRelease(v8);
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

uint64_t bufferedAudioEngine_endpointStreamActiveConfigurationDidBecomeInvalidNotification_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_updateCriticalBufferingState_cold_2()
{
  OUTLINED_FUNCTION_48();
  result = APSLogErrorAt();
  if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4(), result))
    {
      if (v0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_13_6();
      OUTLINED_FUNCTION_2_0();
      return LogPrintF();
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_updateCriticalBufferingState_cold_3(uint64_t a1, uint64_t a2)
{
  result = APSLogErrorAt();
  if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4(), result))
    {
      if (a2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_2_0();
      return LogPrintF();
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_getCurrentRemoteMediaTimeInternal_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_92();
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_getCurrentRemoteMediaTimeInternal_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_92();
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_getCurrentRemoteMediaTimeInternal_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_92();
  *a1 = result;
  return result;
}

uint64_t __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_1(uint64_t a1)
{
  if (*(a1 + 32))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

uint64_t __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

uint64_t __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallbackInternal_cold_1(CMTime *a1)
{
  if (a1->value)
  {
    CMBaseObjectGetDerivedStorage();
  }

  time = a1[1];
  CMTimeGetSeconds(&time);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_handleCryptorKeyUpdated_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_copyPropertyDispatch_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_18_5();
  return OUTLINED_FUNCTION_6();
}

uint64_t bufferedAudioEngine_copyPropertyDispatch_cold_2(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_copyPropertyDispatch_cold_4(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15480;
  return result;
}

uint64_t bufferedAudioEngine_setPropertyDispatch_cold_2()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  return OUTLINED_FUNCTION_6();
}

uint64_t bufferedAudioEngine_setPropertyDispatch_cold_5()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  return OUTLINED_FUNCTION_6();
}

uint64_t bufferedAudioEngine_setPropertyDispatch_cold_9()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  return OUTLINED_FUNCTION_6();
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_1()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_4()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_5()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_6()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_7()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_8()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  if (v1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  bufferedAudioEngine_getSentBufferLevelTime(v0, &time);
  CMTimeGetSeconds(&time);
  return OUTLINED_FUNCTION_105();
}

uint64_t bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_92();
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_6()
{
  OUTLINED_FUNCTION_59();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

void bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_7()
{
  if (gLogCategory_APAudioEngineBuffered <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (v1 != -1 || _LogCategory_Initialize())
    {
      if (v0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_21_3();
      LogPrintF();
    }
  }
}

uint64_t bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_92();
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_10()
{
  OUTLINED_FUNCTION_3_7();
  result = APSLogErrorAt();
  if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4(), result))
    {
      if (*v1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_2_0();
      result = LogPrintF();
    }
  }

  *v0 = 0;
  return result;
}

uint64_t bufferedAudioEngine_getSampleRateFromTransportAudioFormat_cold_1()
{
  OUTLINED_FUNCTION_7_4();
  APSLogErrorAt();

  return APSSignalErrorAt();
}

uint64_t bufferedAudioEngine_addHose_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_92();
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_addHose_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_29();
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseLegacyInternal_cold_1(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_1()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_11()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_12()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_13()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_14()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_15()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_weakProtocolDriverTickTimer_cold_1()
{
  OUTLINED_FUNCTION_7_4();
  APSLogErrorAt();
  return APSSignalErrorAt();
}

uint64_t bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseInternal_cold_1(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_Resume_cold_1(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

void bufferedAudioEngine_Resume_cold_2()
{
  OUTLINED_FUNCTION_48();
  APSLogErrorAt();
  if (*v0)
  {
    CFRelease(*v0);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  free(v0);
}

uint64_t bufferedAudioEngine_Suspend_cold_1(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

void bufferedAudioEngine_Suspend_cold_2()
{
  OUTLINED_FUNCTION_48();
  APSLogErrorAt();
  if (*v0)
  {
    CFRelease(*v0);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  free(v0);
}

uint64_t bufferedAudioEngine_SetEndpointStream_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

void bufferedAudioEngine_SetEndpointStream_cold_2()
{
  OUTLINED_FUNCTION_48();
  APSLogErrorAt();
  if (*v0)
  {
    CFRelease(*v0);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  free(v0);
}

uint64_t bufferedAudioEngine_Flush_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_SetRateAndAnchorTime_cold_5()
{
  OUTLINED_FUNCTION_27();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_SetEndOfSiriTTSUtteranceMediaTime_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  if (DerivedStorage)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_5_11(DerivedStorage, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_ApplyVolumeFade_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_1()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

void bufferedAudioEngine_resumeInternalStage1_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_37(a1);
  APSAudioFormatDescriptionCopyDebugString();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
  {
    if (*v2)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  if (*v1)
  {
    CFRelease(*v1);
  }
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_4(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15481;
  return result;
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15481;
  return result;
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15481;
  return result;
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_9()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_10(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15480;
  return result;
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_11()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

void bufferedAudioEngine_resumeInternalStage1_cold_14(uint64_t a1)
{
  OUTLINED_FUNCTION_37(a1);
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
  {
    if (v2)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  if (*v1)
  {
    CFRelease(*v1);
  }
}

void bufferedAudioEngine_resumeInternalStage1_cold_15()
{
  OUTLINED_FUNCTION_48();
  APSAudioFormatDescriptionCopyDebugString();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
  {
    if (v1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  if (*v0)
  {
    CFRelease(*v0);
  }
}

void bufferedAudioEngine_resumeInternalStage1_cold_16(uint64_t a1)
{
  OUTLINED_FUNCTION_37(a1);
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3()))
  {
    if (v2)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_2_1();
    LogPrintF();
  }

  if (*v1)
  {
    CFRelease(*v1);
  }
}

void bufferedAudioEngine_resumeInternalStage1_cold_19()
{
  OUTLINED_FUNCTION_3_7();
  APSLogErrorAt();
  *(*v1 + 24) = -6728;
  CFRelease(v0);
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_20(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -6728;
  return result;
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_21(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -6728;
  return result;
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_23(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_25(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  return OUTLINED_FUNCTION_6();
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_27()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_28(int a1, _DWORD *a2)
{
  APSLogErrorAt();
  *a2 = a1;
  return APSLogErrorAt();
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_29(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_30()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_6();
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_31(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_32()
{
  OUTLINED_FUNCTION_59();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  APSAudioFormatDescriptionGetASBD();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_35()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  return OUTLINED_FUNCTION_6();
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_43()
{
  OUTLINED_FUNCTION_3_7();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *v0 = result;
  *v1 = result;
  return result;
}

uint64_t bufferedAudioEngine_resumeInternalStage1_cold_44()
{
  OUTLINED_FUNCTION_3_7();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *v0 = result;
  *v1 = result;
  return result;
}

uint64_t bufferedAudioEngine_resumeInternalStageEnd_cold_1(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_generateNewFirstRemoteMediaTime_cold_2(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_generateNewFirstRemoteMediaTime_cold_3(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_readSoundCheck_cold_1(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t __bufferedAudioEngine_audioTimer_block_invoke_cold_1(uint64_t a1)
{
  if (*(a1 + 40))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_createAndEnqueueEmptyMessageForSending_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  time = *(v0 + 756);
  CMTimeGetSeconds(&time);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_2()
{
  OUTLINED_FUNCTION_3_2();
  if (DerivedStorage)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_5_11(DerivedStorage, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_3()
{
  OUTLINED_FUNCTION_3_2();
  if (DerivedStorage)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_5_11(DerivedStorage, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_4()
{
  OUTLINED_FUNCTION_7_4();
  APSLogErrorAt();
  return APSSignalErrorAt();
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_5()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_7()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_3();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_11()
{
  OUTLINED_FUNCTION_3_2();
  if (v1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  bufferedAudioEngine_getCryptorIDForCryptor(*v0);
  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

void bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_15(uint64_t a1)
{
  OUTLINED_FUNCTION_37(a1);
  APSAudioFormatDescriptionCopyDebugString();
  if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3()))
  {
    if (v2)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_2_1();
    LogPrintF();
  }

  if (*v1)
  {
    CFRelease(*v1);
  }
}

void bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_16(uint64_t a1)
{
  OUTLINED_FUNCTION_37(a1);
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4_3()))
  {
    if (v2)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_2_1();
    LogPrintF();
  }

  if (*v1)
  {
    CFRelease(*v1);
  }
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_17()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_3();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_18(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_getStartUpDelay_cold_2(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  time = *bufferedAudioEngine_getStartUpDelay_bufferedStartUpDelay;
  CMTimeGetSeconds(&time);
  OUTLINED_FUNCTION_3();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_encodeMessage_cold_2()
{
  OUTLINED_FUNCTION_27();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_encodeMessage_cold_8()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_105();
}

uint64_t bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_2()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_13()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  return OUTLINED_FUNCTION_105();
}

uint64_t bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_15()
{
  OUTLINED_FUNCTION_60();
  result = APSLogErrorAt();
  if (gLogCategory_APAudioEngineBuffered <= 90)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      if (v2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF();
    }
  }

  *v1 = 0;
  *v0 = 0;
  return result;
}

uint64_t bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_16()
{
  OUTLINED_FUNCTION_60();
  result = APSLogErrorAt();
  if (gLogCategory_APAudioEngineBuffered <= 90)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      if (v2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF();
    }
  }

  *v1 = 0;
  *v0 = 0;
  return result;
}

uint64_t bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_17()
{
  OUTLINED_FUNCTION_60();
  result = APSLogErrorAt();
  if (gLogCategory_APAudioEngineBuffered <= 90)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || (result = OUTLINED_FUNCTION_4_3(), result))
    {
      if (v2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_2_1();
      result = LogPrintF();
    }
  }

  *v1 = 0;
  *v0 = 0;
  return result;
}

uint64_t bufferedAudioEngine_startPlaybackIfNecessary_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_startPlaybackIfNecessary_cold_3()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_startPlaybackIfNecessary_cold_4()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_startPlaybackIfNecessary_cold_6()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_startPlaybackIfNecessary_cold_8()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_startPlaybackIfNecessary_cold_9()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_startPlaybackIfNecessary_cold_11()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_startPlaybackIfNecessary_cold_13()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  return OUTLINED_FUNCTION_105();
}

uint64_t bufferedAudioEngine_updateHosesPrimed_cold_1(char a1)
{
  if ((a1 & 1) == 0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  return OUTLINED_FUNCTION_105();
}

void bufferedAudioEngine_handleErrorWithReceiverAnchor_cold_1()
{
  if (gLogCategory_APAudioEngineBuffered <= 90)
  {
    OUTLINED_FUNCTION_3_2();
    if (v1 != -1 || OUTLINED_FUNCTION_4_3())
    {
      if (v0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_2_1();
      LogPrintF();
    }
  }
}

uint64_t bufferedAudioEngine_handleTerminalSetRateError_cold_1()
{
  OUTLINED_FUNCTION_59();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_handleTerminalSetRateError_cold_2()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_setEndpointStreamInternalStage1_cold_1(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_setEndpointStreamInternalStage1_cold_3(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_setEndpointStreamInternalStage1_cold_6(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_setEndpointStreamInternalStage1_cold_7(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  APSSettingsGetIntWithDefault();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

void bufferedAudioEngine_setEndpointStreamInternalStage1_cold_8(uint64_t a1, CFTypeRef *a2, void *a3)
{
  APSAudioFormatDescriptionCopyDebugString();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || OUTLINED_FUNCTION_4()))
  {
    if (*a3)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t bufferedAudioEngine_setEndpointStreamInternalStageEnd_cold_1(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_setEndpointStreamInternalStage4_cold_1(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_setEndpointStreamInternalStage5_cold_1(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_setEndpointStreamInternalStage5_cold_3()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  APSSettingsGetIntWithDefault();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_setEndpointStreamInternalStage5_cold_4()
{
  OUTLINED_FUNCTION_59();
  if (*v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_flushHose_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_92();
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal_cold_3()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_92();
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_92();
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal_cold_7()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_5_11(DerivedStorage, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal_cold_9()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_3();
  return LogPrintF();
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_92();
  *a1 = result;
  return result;
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal_cold_11(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15480;
  return result;
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal_cold_12()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t __APHIDClientCreate_block_invoke_cold_3(const __CFDictionary *a1)
{
  CFDictionaryGetValue(a1, @"name");
  v1 = gLogCategory_APHIDClient;
  if (gLogCategory_APHIDClient <= 20)
  {
    if (gLogCategory_APHIDClient != -1 || (_LogCategory_Initialize(), v1 = gLogCategory_APHIDClient, gLogCategory_APHIDClient <= 20))
    {
      if (v1 == -1)
      {
        _LogCategory_Initialize();
      }
    }
  }

  return LogPrintF();
}

uint64_t APCarPlayBTPairingInfoHelperCreate_cold_3()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t apPlayback_ensureTransportStreamsCreated()
{
  v28 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v1 = DerivedStorage + 23;
  if (DerivedStorage[23])
  {
    return v28;
  }

  v2 = DerivedStorage;
  v3 = DerivedStorage + 24;
  if (DerivedStorage[24])
  {
    goto LABEL_9;
  }

  v4 = DerivedStorage[2];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v5)
  {
    OUTLINED_FUNCTION_6_11();
LABEL_8:
    APSLogErrorAt();
LABEL_9:
    Mutable = 0;
LABEL_31:
    v11 = 0;
    goto LABEL_32;
  }

  v28 = v5(v4, 120, 0, &cf, 0, 0);
  if (v28)
  {
    goto LABEL_8;
  }

  v6 = cf ? CFRetain(cf) : 0;
  v2[25] = v6;
  CFDictionaryGetInt64();
  if (v28)
  {
    goto LABEL_8;
  }

  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v11 = 0;
LABEL_46:
    v28 = -16741;
    goto LABEL_32;
  }

  CFDictionarySetInt64();
  CFDictionarySetInt64();
  v9 = v2[2];
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v10)
  {
    OUTLINED_FUNCTION_6_11();
    goto LABEL_30;
  }

  v28 = v10(v9, Mutable, v1);
  if (v28)
  {
LABEL_30:
    APSLogErrorAt();
    goto LABEL_31;
  }

  v11 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v11)
  {
    APSLogErrorAt();
    goto LABEL_46;
  }

  CFDictionarySetInt64();
  CFDictionarySetInt64();
  v12 = v2[2];
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v13)
  {
    OUTLINED_FUNCTION_6_11();
    goto LABEL_42;
  }

  v28 = v13(v12, v11, v3);
  if (v28)
  {
LABEL_42:
    APSLogErrorAt();
    goto LABEL_32;
  }

  v14 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v2[26] = v14;
  if (v14)
  {
    v15 = v14;
    v16 = *v3;
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v17)
    {
      v28 = v17(v16, 0, apPlayback_handleMessageCreatingReply, v15);
      if (!v28)
      {
        v18 = *v1;
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v19)
        {
          v19(v18);
        }

        v20 = *v3;
        v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v21)
        {
          v21(v20);
        }

        v22 = *v1;
        v23 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v23)
        {
          v23(v22);
        }

        v24 = *v3;
        v25 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v25)
        {
          v25(v24);
        }

        goto LABEL_32;
      }
    }

    else
    {
      OUTLINED_FUNCTION_6_11();
    }

    goto LABEL_42;
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v28;
}

void apPlayback_playInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Int64 = CFDictionaryGetInt64();
  v23 = apPlayback_ensureTransportStreamsCreated();
  if (!v23)
  {
    FigSimpleMutexLock();
    *(DerivedStorage + 72) = Int64 != 0;
    if (FigCFEqual())
    {
      v4 = @"default";
    }

    else if (FigCFEqual())
    {
      v4 = @"moviePlayback";
    }

    else
    {
      v4 = 0;
    }

    FigSimpleMutexUnlock();
    v5 = *MEMORY[0x277CC0F90];
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v7 = *v1;
    v8 = v1[1];
    if (TypedValue)
    {
      v17 = TypedValue;
      v18 = CMBaseObjectGetDerivedStorage();
      cf = 0;
      value = 0;
      MediaTypeFromPlayParams = APEndpointPlaybackSessionGetMediaTypeFromPlayParams(v8);
      OUTLINED_FUNCTION_10_5();
      v21 = CFDictionaryGetInt64() != 0;
      if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || OUTLINED_FUNCTION_10()))
      {
        OUTLINED_FUNCTION_4_1();
      }

      v26 = apPlayback_ensureLocalPlaybackServerCreated();
      if (v26 || (CFStringGetTypeID(), OUTLINED_FUNCTION_10_5(), v19 = CFDictionaryGetTypedValue(), (v26 = APLocalPlaybackServerRegisterPathCreatingHostAndURL(*(v18 + 216), v17, v19, &value, &cf)) != 0))
      {
        APSLogErrorAt();
        MutableCopy = 0;
      }

      else
      {
        if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || OUTLINED_FUNCTION_10()))
        {
          OUTLINED_FUNCTION_4_1();
        }

        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v8);
        if (MutableCopy)
        {
          apPlayback_appendCommonPlayParamsToMessage(v7, v21, MediaTypeFromPlayParams, v4, MutableCopy);
          v26 = 0;
          CFDictionarySetValue(MutableCopy, @"host", value);
          CFDictionarySetValue(MutableCopy, v5, cf);
          if (apPlayback_isTLSEnabled())
          {
            CFDictionarySetValue(MutableCopy, @"tlsPSKEnabled", *MEMORY[0x277CBED28]);
          }

          v26 = OUTLINED_FUNCTION_9_6();
          if (v26)
          {
            APSLogErrorAt();
          }
        }

        else
        {
          APSLogErrorAt();
          v26 = -16741;
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (value)
      {
        CFRelease(value);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      v23 = v26;
      if (!v26)
      {
        goto LABEL_16;
      }
    }

    else
    {
      LODWORD(value) = 0;
      CMBaseObjectGetDerivedStorage();
      v9 = APEndpointPlaybackSessionGetMediaTypeFromPlayParams(v8);
      OUTLINED_FUNCTION_10_5();
      v10 = CFDictionaryGetInt64();
      CFStringGetTypeID();
      OUTLINED_FUNCTION_10_5();
      CFDictionaryGetTypedValue();
      if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || OUTLINED_FUNCTION_10()))
      {
        OUTLINED_FUNCTION_4_1();
      }

      v11 = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v8);
      if (v11)
      {
        v12 = v11;
        apPlayback_appendCommonPlayParamsToMessage(v7, v10 != 0, v9, v4, v11);
        LODWORD(value) = OUTLINED_FUNCTION_9_6();
        if (value)
        {
          APSLogErrorAt();
        }

        CFRelease(v12);
        v23 = value;
        if (!value)
        {
LABEL_16:
          if (Int64)
          {
            v13 = *v1;
            v14 = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            if (*(v14 + 96))
            {
              if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || OUTLINED_FUNCTION_10()))
              {
                OUTLINED_FUNCTION_4_1();
              }

              *(v14 + 104) = APMetadataSourceAddEventCallback(*(v14 + 96), v13, apPlayback_handleMetadataEvent);
            }

            FigSimpleMutexUnlock();
          }

          FigSimpleMutexLock();
          *(DerivedStorage + 56) = 1;
          apPlayback_handlePlaybackStateChanged(*v1, *MEMORY[0x277CC11C0]);
          FigSimpleMutexUnlock();
          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
LABEL_25:
          if (!v23)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }
      }

      else
      {
        APSLogErrorAt();
        v23 = -16741;
      }
    }

    APSLogErrorAt();
    goto LABEL_25;
  }

  APSLogErrorAt();
LABEL_26:
  APEndpointPlaybackSessionStatsSetLastError();
LABEL_27:
  v15 = v1[2];
  if (v15)
  {
    v15(v23, v1[3]);
  }

  CFRelease(*v1);
  v16 = v1[1];
  if (v16)
  {
    CFRelease(v16);
  }
}

uint64_t apPlayback_ensureLocalPlaybackServerCreated()
{
  v14 = 0;
  theData = 0;
  v0 = (CMBaseObjectGetDerivedStorage() + 216);
  if (*v0)
  {
    return v14;
  }

  memset(buffer, 0, sizeof(buffer));
  CMBaseObject = FigTransportStreamGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    v14 = -12782;
LABEL_13:
    APSLogErrorAt();
    goto LABEL_23;
  }

  v3 = *MEMORY[0x277CBECE8];
  v14 = v2(CMBaseObject, *MEMORY[0x277CE5030], *MEMORY[0x277CBECE8], &theData);
  if (v14)
  {
    goto LABEL_13;
  }

  v16.location = 0;
  v16.length = 28;
  CFDataGetBytes(theData, v16, buffer);
  v4 = APSGetFBOPropertyInt64() != 0;
  if (v14)
  {
    goto LABEL_13;
  }

  if (!apPlayback_isTLSEnabled())
  {
    v9 = 0;
    goto LABEL_20;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  v15 = 0;
  v6 = APSenderSessionGetCMBaseObject(*(DerivedStorage + 16));
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7 || v7(v6, @"KeyHolder", v3, cf))
  {
    goto LABEL_16;
  }

  if (cf[0])
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      OUTLINED_FUNCTION_4_17();
      if (!v8())
      {
LABEL_17:
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        goto LABEL_19;
      }
    }

LABEL_16:
    APSLogErrorAt();
    goto LABEL_17;
  }

LABEL_19:
  v9 = v15;
LABEL_20:
  *cf = *buffer;
  *(&cf[1] + 4) = *&buffer[12];
  v14 = APLocalPlaybackServerMake(cf, v4, v9, v0);
  if (!v14)
  {
    if (!v9)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  APSLogErrorAt();
  if (v9)
  {
LABEL_22:
    CFRelease(v9);
  }

LABEL_23:
  if (theData)
  {
    CFRelease(theData);
  }

  return v14;
}

BOOL apPlayback_isTLSEnabled()
{
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v1 = *(DerivedStorage + 32);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2 || !v2(v1, 35))
  {
    goto LABEL_10;
  }

  CMBaseObject = APSenderSessionGetCMBaseObject(*(DerivedStorage + 16));
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    OUTLINED_FUNCTION_6_11();
    goto LABEL_9;
  }

  v8 = v4(CMBaseObject, @"KeyHolder", *MEMORY[0x277CBECE8], &cf);
  if (v8)
  {
LABEL_9:
    APSLogErrorAt();
LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if (!cf)
  {
    return 0;
  }

  v5 = APSGetFBOPropertyInt64() != 0;
  if (v8)
  {
    APSLogErrorAt();
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void apPlayback_insertPlayQueueItemInternal(uint64_t a1)
{
  v31 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = 0;
  cf = 0;
  APEndpointPlaybackSessionGetMediaTypeFromPlayParams(*(a1 + 8));
  if (!*(DerivedStorage + 184))
  {
    MutableCopy = 0;
LABEL_34:
    v16 = 0;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(*(a1 + 8), *MEMORY[0x277CC1020]);
  if (!Value)
  {
    APSLogErrorAt();
    MutableCopy = 0;
    v16 = 0;
    v28 = -16740;
LABEL_39:
    v31 = v28;
    goto LABEL_11;
  }

  v4 = Value;
  v5 = OUTLINED_FUNCTION_23();
  MutableCopy = CFDictionaryCreateMutableCopy(v5, v6, v7);
  if (!MutableCopy)
  {
    APSLogErrorAt();
    v16 = 0;
LABEL_38:
    v28 = -16741;
    goto LABEL_39;
  }

  v9 = *MEMORY[0x277CC0F90];
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    CFDictionarySetInt64();
    goto LABEL_6;
  }

  v26 = TypedValue;
  if (apPlayback_isTLSEnabled())
  {
    CFDictionarySetValue(MutableCopy, @"tlsPSKEnabled", *MEMORY[0x277CBED28]);
  }

  v31 = apPlayback_ensureLocalPlaybackServerCreated();
  if (v31 || (CFStringGetTypeID(), v27 = CFDictionaryGetTypedValue(), (v31 = APLocalPlaybackServerRegisterPathWithUUIDCreatingHostAndURL(*(DerivedStorage + 216), v4, v26, v27, &cf, &v29)) != 0))
  {
    APSLogErrorAt();
    goto LABEL_34;
  }

  CFDictionarySetInt64();
  CFDictionarySetValue(MutableCopy, @"host", cf);
  CFDictionarySetValue(MutableCopy, v9, v29);
LABEL_6:
  v11 = OUTLINED_FUNCTION_23();
  Mutable = CFDictionaryCreateMutable(v11, v12, v13, v14);
  v16 = Mutable;
  if (!Mutable)
  {
    APSLogErrorAt();
    goto LABEL_38;
  }

  CFDictionarySetValue(Mutable, @"item", MutableCopy);
  v17 = *(a1 + 16);
  if (v17)
  {
    CFDictionarySetValue(v16, @"afterItem", v17);
  }

  OUTLINED_FUNCTION_4_17();
  v31 = apPlayback_performRemoteActionInternal(v18, v19, v20, v21, v22);
  if (v31)
  {
    APSLogErrorAt();
  }

LABEL_11:
  v23 = *(a1 + 24);
  if (v23)
  {
    v23(v31, *(a1 + 32));
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v24 = *(a1 + 8);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    CFRelease(v25);
  }
}

uint64_t apPlayback_performRemoteActionInternal(uint64_t a1, const void *a2, const void *a3, void (*a4)(uint64_t, const void *, uint64_t), uint64_t a5)
{
  theDict = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 184))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v11 = Mutable;
    if (!Mutable)
    {
      APSLogErrorAt();
      Value = 0;
      Int64 = 4294950555;
      goto LABEL_7;
    }

    CFDictionarySetValue(Mutable, @"type", a2);
    if (a3)
    {
      CFDictionarySetValue(v11, @"params", a3);
    }

    v12 = apPlayback_sendPlistMessageCreatingReply(a1, 1633907822, v11, &theDict);
    if (!v12)
    {
      Int64 = CFDictionaryGetInt64();
      Value = CFDictionaryGetValue(theDict, @"params");
      goto LABEL_7;
    }

    Int64 = v12;
    APSLogErrorAt();
  }

  else
  {
    Int64 = 0;
    v11 = 0;
  }

  Value = 0;
LABEL_7:
  if (a4)
  {
    a4(Int64, Value, a5);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return Int64;
}

void apPlayback_removePlayQueueItemInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 184))
  {
    v3 = DerivedStorage;
    Value = CFDictionaryGetValue(*(v1 + 8), *MEMORY[0x277CC1020]);
    if (Value)
    {
      v5 = Value;
      v6 = *(v3 + 216);
      if (v6)
      {
        APLocalPlaybackServerUnRegisterUUID(v6, v5);
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v8 = Mutable;
      if (Mutable)
      {
        CFDictionarySetValue(Mutable, @"item", *(v1 + 8));
        OUTLINED_FUNCTION_4_17();
        v14 = apPlayback_performRemoteActionInternal(v9, v10, v11, v12, v13);
        if (v14)
        {
          APSLogErrorAt();
        }
      }

      else
      {
        APSLogErrorAt();
        v14 = 4294950555;
      }
    }

    else
    {
      APSLogErrorAt();
      v8 = 0;
      v14 = 4294950556;
    }
  }

  else
  {
    v14 = 0;
    v8 = 0;
  }

  v15 = *(v1 + 16);
  if (v15)
  {
    v15(v14, *(v1 + 24));
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v16 = *(v1 + 8);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *v1;
  if (*v1)
  {

    CFRelease(v17);
  }
}

void apPlayback_stopInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 184);
  if (v3)
  {
    v4 = DerivedStorage;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v5)
    {
      v3 = v5(v3, 1937010544, 0, 0);
      if (!v3)
      {
        apPlayback_unsubscribeMetadataEvents();
        FigSimpleMutexLock();
        *(v4 + 72) = 0;
        FigSimpleMutexUnlock();
        FigSimpleMutexLock();
        *(v4 + 56) = 0;
        apPlayback_handlePlaybackStateChanged(*v1, *MEMORY[0x277CC11C8]);
        FigSimpleMutexUnlock();
        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        goto LABEL_7;
      }
    }

    else
    {
      v3 = 4294954514;
    }

    APSLogErrorAt();
  }

LABEL_7:
  v6 = v1[1];
  if (v6)
  {
    v6(v3, v1[2]);
  }

  v7 = *v1;

  CFRelease(v7);
}

void apPlayback_getPlaybackInfoInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  v22 = 0;
  v23 = 0;
  v2 = *(CMBaseObjectGetDerivedStorage() + 184);
  if (!v2)
  {
    v20 = 0;
    Value = 0;
    goto LABEL_24;
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v3)
  {
    Value = 4294954514;
LABEL_12:
    APSLogErrorAt();
    v20 = 0;
    goto LABEL_24;
  }

  v4 = v3(v2, 1886283375, 0, &v23);
  if (v4)
  {
    Value = v4;
    goto LABEL_12;
  }

  v5 = v23;
  cf = 0;
  CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
  if (CFDataWithBlockBufferNoCopy)
  {
    Value = CFDataWithBlockBufferNoCopy;
    APSLogErrorAt();
    v20 = 0;
    v13 = 0;
    v19 = 0;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_4_17();
  v12 = CFPropertyListCreateWithData(v7, v8, v9, v10, v11);
  v13 = v12;
  if (!v12 || (v14 = CFGetTypeID(v12), v14 != CFDictionaryGetTypeID()))
  {
    APSLogErrorAt();
    v20 = 0;
    v19 = 0;
    Value = 4294950556;
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(v13, *MEMORY[0x277CC1060]);
  if (Value)
  {
    v16 = CMGetAttachment(v5, *MEMORY[0x277CEA358], 0);
    if (v16)
    {
      memset(&v25, 0, sizeof(v25));
      CMTimeMakeFromDictionary(&v25, v16);
      v17 = MEMORY[0x223DB0080](Value);
      time = v25;
      Seconds = CMTimeGetSeconds(&time);
      v19 = CFDateCreate(0, v17 + Seconds);
      if (!v19)
      {
        APSLogErrorAt();
        v20 = 0;
        Value = 4294950555;
        goto LABEL_16;
      }

      CFDictionarySetValue(v13, @"Start-Estimated-Date", v19);
      Value = 0;
      goto LABEL_15;
    }

    Value = 0;
  }

  v19 = 0;
LABEL_15:
  v20 = v13;
  v13 = 0;
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (Value || (Value = APEndpointPlaybackSessionCreatePlayPlaybackInfoTimesInCMTime(v20, &v22), Value))
  {
    APSLogErrorAt();
  }

LABEL_24:
  v21 = *(v1 + 8);
  if (v21)
  {
    v21(v22, Value, *(v1 + 16));
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  CFRelease(*v1);
}

void apPlayback_setProxiedPropertyInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  if (*(CMBaseObjectGetDerivedStorage() + 184))
  {
    v2 = OUTLINED_FUNCTION_23();
    Mutable = CFDictionaryCreateMutable(v2, v3, v4, v5);
    if (Mutable)
    {
      ASPrintF();
    }

    APSLogErrorAt();
    v11 = 4294950555;
  }

  else
  {
    Mutable = 0;
    v11 = 0;
  }

  v7 = *(v1 + 32);
  if (v7)
  {
    v7(0, v11, *(v1 + 40));
  }

  free(0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v8 = *(v1 + 8);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(v1 + 16);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(v1 + 24);
  if (v10)
  {
    CFRelease(v10);
  }

  CFRelease(*v1);
}

void apPlayback_setRateInternal(uint64_t a1)
{
  v76 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  *__str = 0u;
  v69 = 0u;
  memset(v67, 0, sizeof(v67));
  v65 = *MEMORY[0x277CC0898];
  v66 = *(MEMORY[0x277CC0898] + 16);
  v3 = *MEMORY[0x277CEA280];
  v62 = *MEMORY[0x277CEA280];
  v4 = *(MEMORY[0x277CEA280] + 16);
  v63 = v4;
  if (!*(DerivedStorage + 184))
  {
    v43 = 0;
    Mutable = 0;
    goto LABEL_46;
  }

  v5 = DerivedStorage;
  v52 = v3;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v23 = 0;
    v43 = 4294950555;
    goto LABEL_36;
  }

  v7 = *(v5 + 32);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v8)
  {
    v9 = v8(v7, 69) != 0;
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 16))
  {
    v10 = *MEMORY[0x277CC0F38];
    Int64 = CFDictionaryGetInt64();
    v12 = *(a1 + 16);
    v13 = &unk_27CFF1000;
    if (v12 != 0 && v9)
    {
      Value = CFDictionaryGetValue(v12, *MEMORY[0x277CC0F60]);
      if (FigCFDictionaryGetCMTimeIfPresent())
      {
        v23 = *(v5 + 24);
        if (!v23)
        {
          APSLogErrorAt();
          v43 = 4294950553;
          goto LABEL_36;
        }

        if (BYTE12(v65))
        {
          OUTLINED_FUNCTION_5_12(v15, v16, v17, v18, v19, v20, v21, v22, v48, v50, *&v52, *(&v52 + 1), v54, v56, v58, v60, *&v62, *(&v62 + 1), v63, v64, *&v65);
          v25 = CMClockConvertHostTimeToSystemUnits(v24);
          v26 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v26 || v26(v23, v25, &v62))
          {
            if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 90 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
            {
              OUTLINED_FUNCTION_5_12(v27, v28, v29, v30, v31, v32, v33, v34, v49, v51, *&v53, *(&v53 + 1), v55, v57, v59, v61, *&v62, *(&v62 + 1), v63, v64, *&v65);
              CMTimeGetSeconds(v35);
              LogPrintF();
            }

            v62 = v53;
            v63 = v4;
          }
        }

        v23 = APSNetworkTimeCopyAsDictionary();
        v13 = &unk_27CFF1000;
        goto LABEL_21;
      }
    }

    else
    {
      Value = 0;
    }

    v23 = 0;
LABEL_21:
    if (Value | v23)
    {
      FigCFDictionarySetFloat32();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      if (Int64)
      {
        CFDictionarySetValue(Mutable, v10, *MEMORY[0x277CBED28]);
      }

      v36 = v13[44];
      if (v36 <= 30 && (v36 != -1 || OUTLINED_FUNCTION_10()))
      {
        OUTLINED_FUNCTION_4_1();
      }

      v44 = apPlayback_sendPlistMessageCreatingReply(*a1, 1918984564, Mutable, 0);
      if (v44)
      {
        v43 = v44;
        APSLogErrorAt();
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    if (Int64)
    {
      strcpy(v67, "&forInterstitial=1");
      BYTE3(v67[1]) = unk_22229855B;
      DWORD1(v67[1]) = unk_22229855C;
      *(&v67[1] + 1) = unk_222298560;
    }
  }

  snprintf(__str, 0x80uLL, "/rate?value=%f%s", *(a1 + 8), v67);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_4_17();
  v42 = apPlayback_sendSpecialPlistMessageCreatingReply(v37, v38, v39, v40, v41);
  v23 = 0;
  if (v42)
  {
    v43 = v42;
    APSLogErrorAt();
LABEL_46:
    v23 = 0;
    goto LABEL_36;
  }

LABEL_33:
  FigSimpleMutexLock();
  v45 = MEMORY[0x277CC11B8];
  if (*(a1 + 8) != 0.0)
  {
    v45 = MEMORY[0x277CC11C0];
  }

  apPlayback_handlePlaybackStateChanged(*a1, *v45);
  FigSimpleMutexUnlock();
  v43 = 0;
LABEL_36:
  v46 = *(a1 + 24);
  if (v46)
  {
    v46(v43, *(a1 + 32));
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  CFRelease(*a1);
  v47 = *(a1 + 16);
  if (v47)
  {
    CFRelease(v47);
  }

  if (v23)
  {
    CFRelease(v23);
  }
}

void apPlayback_getProxiedPropertyInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theDict = 0;
  v21 = 0;
  if (!*(DerivedStorage + 184))
  {
    Mutable = 0;
    v13 = 0;
    Value = 0;
    Int64 = 0;
    goto LABEL_12;
  }

  v3 = DerivedStorage;
  v4 = OUTLINED_FUNCTION_23();
  Mutable = CFDictionaryCreateMutable(v4, v5, v6, v7);
  if (!Mutable)
  {
    APSLogErrorAt();
    v13 = 0;
    goto LABEL_29;
  }

  ASPrintF();
  OUTLINED_FUNCTION_11_6();
  if (*(v1 + 16))
  {
    v9 = OUTLINED_FUNCTION_23();
    v13 = CFDictionaryCreateMutable(v9, v10, v11, v12);
    if (v13)
    {
      if (FigCFEqual() && APEndpointDescriptionIsSourceVersionOlderThan(*(v3 + 32), 0x657DA5u))
      {
        FigCFDictionaryGetValue();
        FigCFDictionarySetValue();
      }

      else
      {
        CFDictionarySetValue(v13, @"qualifier", *(v1 + 16));
      }

      goto LABEL_10;
    }

    APSLogErrorAt();
LABEL_29:
    Value = 0;
    Int64 = 4294950555;
    goto LABEL_12;
  }

  v13 = 0;
LABEL_10:
  v14 = apPlayback_sendSpecialPlistMessageCreatingReply(*v1, 1735422066, Mutable, v13, &theDict);
  if (v14)
  {
    Int64 = v14;
    APSLogErrorAt();
    Value = 0;
  }

  else
  {
    Int64 = CFDictionaryGetInt64();
    Value = CFDictionaryGetValue(theDict, @"value");
  }

LABEL_12:
  v17 = *(v1 + 24);
  if (v17)
  {
    v17(*(v1 + 8), Value, Int64, *(v1 + 32));
  }

  free(v21);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  CFRelease(*v1);
  v18 = *(v1 + 8);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(v1 + 16);
  if (v19)
  {
    CFRelease(v19);
  }
}

void apPlayback_deferredPerformRemoteActionInternal(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_44(a1);
  apPlayback_performRemoteActionInternal(v2, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  CFRelease(*v1);
  v3 = *(v1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {

    CFRelease(v4);
  }
}

void apPlayback_processPendingAudioVolumeChanges(const void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__str = 0u;
  v14 = 0u;
  if (*(DerivedStorage + 184))
  {
    v3 = DerivedStorage;
    FigSimpleMutexLock();
    v4 = *(v3 + 92);
    *(v3 + 92) = 0;
    FigSimpleMutexUnlock();
    if (v4)
    {
      if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || OUTLINED_FUNCTION_10()))
      {
        OUTLINED_FUNCTION_4_1();
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        APSVolumeConvertDBToClampedSliderValue();
        snprintf(__str, 0x80uLL, "/volume?volume=%f", v7);
        OUTLINED_FUNCTION_11_6();
        OUTLINED_FUNCTION_4_17();
        if (apPlayback_sendSpecialPlistMessageCreatingReply(v8, v9, v10, v11, v12))
        {
          APSLogErrorAt();
        }

        CFRelease(v6);
      }

      else
      {
        APSLogErrorAt();
      }
    }
  }

  CFRelease(a1);
}

uint64_t apPlayback_CopyProperty_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16741;
  return result;
}

uint64_t apPlayback_CopyProperty_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12785;
  return result;
}

uint64_t apPlayback_Play_cold_1(const __CFDictionary *a1)
{
  CFDictionaryGetValue(a1, *MEMORY[0x277CC1020]);
  CFDictionaryContainsKey(a1, *MEMORY[0x277CC0F90]);
  return OUTLINED_FUNCTION_2();
}

uint64_t apPlayback_InsertPlayQueueItem_cold_1(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v4 = *MEMORY[0x277CC1020];
  CFDictionaryGetValue(a1, *MEMORY[0x277CC1020]);
  CFDictionaryContainsKey(a1, *MEMORY[0x277CC0F90]);
  if (a2)
  {
    CFDictionaryGetValue(a2, v4);
  }

  return OUTLINED_FUNCTION_2();
}

uint64_t apPlayback_SeekToTime_cold_1(CMTime *a1)
{
  time = *a1;
  CMTimeGetSeconds(&time);
  return OUTLINED_FUNCTION_2();
}

uint64_t __apPlayback_handleMessageCreatingReply_block_invoke_cold_1(const void *a1)
{
  APSLogErrorAt();
  CFRelease(a1);
  return FigSimpleMutexUnlock();
}

void __apPlayback_handleMessageCreatingReply_block_invoke_cold_9()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Boolean soft_MRMediaRemoteSendCommand(MRMediaRemoteCommand description:{CFDictionaryRef)"), @"APSenderMediaRemoteSoftLinking.h", 163, @"%s", dlerror()}];
  __break(1u);
}

uint64_t apPlayback_seekToTimeInternal_cold_8(int a1)
{
  if (a1 != -1)
  {
    return OUTLINED_FUNCTION_4_1();
  }

  result = OUTLINED_FUNCTION_10();
  if (result)
  {
    return OUTLINED_FUNCTION_4_1();
  }

  return result;
}

uint64_t streamAggregateAudio_enableLocalPlayback(void *a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (FigCFEqual())
  {
    APSLogErrorAt();
    v5 = APSSignalErrorAt();
  }

  else if (*(DerivedStorage + 128))
  {
    v5 = 0;
  }

  else
  {
    v5 = APEndpointStreamLocalCreate(0, @"Local Playback Stream", *(DerivedStorage + 192), 0, *(DerivedStorage + 184), a2, &cf);
    if (v5)
    {
      APSLogErrorAt();
    }

    else
    {
      streamAggregateAudio_addSubStream(a1, @"localEndpointKey", cf);
      streamAggregateAudio_updateDynamicProperties(a1, 0);
      CFDictionaryApplyFunction(*(DerivedStorage + 120), streamAggregateAudio_setPropertyForLocalSubStreamIterator, a1);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t streamAggregateAudio_SetProperty(void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CFBooleanGetTypeID())
      {
        if (*(CMBaseObjectGetDerivedStorage() + 202))
        {
          v8 = CFGetTypeID(a3);
          if (v8 == CFBooleanGetTypeID())
          {
            if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4()))
            {
              OUTLINED_FUNCTION_2();
            }

            if (CFBooleanGetValue(a3))
            {
              v18 = streamAggregateAudio_enableLocalPlayback(a1, 1);
              if (!v18)
              {
LABEL_28:
                FigCFDictionarySetValue();
LABEL_29:
                v10 = 0;
                goto LABEL_30;
              }

              v10 = v18;
            }

            else
            {
              v12 = CMBaseObjectGetDerivedStorage();
              if (!*(v12 + 128))
              {
                goto LABEL_28;
              }

              FigEndpointStreamSuspend();
              v13 = *(v12 + 128);
              v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              v10 = v14 ? v14(v13) : 4294954514;
              CFDictionaryRemoveValue(*(v12 + 32), @"localEndpointKey");
              streamAggregateAudio_removeSubStreamNotificationListeners();
              streamAggregateAudio_updateDynamicProperties(a1, 0);
              v15 = *(v12 + 128);
              if (v15)
              {
                CFRelease(v15);
                *(v12 + 128) = 0;
              }

              if (!v10)
              {
                goto LABEL_28;
              }
            }

            APSLogErrorAt();
          }

          else
          {
            APSLogErrorAt();
            v10 = 4294950536;
          }
        }

        else
        {
          APSLogErrorAt();
          v10 = APSSignalErrorAt();
          if (!v10)
          {
            goto LABEL_30;
          }
        }

LABEL_52:
        APSLogErrorAt();
        goto LABEL_30;
      }
    }

    goto LABEL_53;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v11 = DerivedStorage[17];
      DerivedStorage[17] = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      goto LABEL_29;
    }

    if (!FigCFEqual())
    {
      if (FigCFEqual())
      {
        v19 = DerivedStorage[16];
        if (!v19)
        {
          goto LABEL_29;
        }

        v10 = FigEndpointStreamSetProperty(v19, a2, a3);
        if (!v10)
        {
          goto LABEL_30;
        }
      }

      else if (FigCFEqual())
      {
        v20 = DerivedStorage[16];
        if (!v20)
        {
          goto LABEL_29;
        }

        v10 = FigEndpointStreamSetProperty(v20, a2, a3);
        if (!v10)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v10 = streamAggregateAudio_setPropertyForAllSubStreamsInternal(a1, a2, a3);
        if (!v10)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_52;
    }

    if (a3)
    {
      v17 = CFGetTypeID(a3);
      if (v17 == CFNumberGetTypeID())
      {
        CFNumberGetValue(a3, kCFNumberSInt32Type, DerivedStorage + 148);
        goto LABEL_29;
      }
    }

LABEL_53:
    APSLogErrorAt();
    v10 = 4294950536;
    goto LABEL_30;
  }

  if (!a3)
  {
    goto LABEL_53;
  }

  v9 = CFGetTypeID(a3);
  if (v9 != CFNumberGetTypeID())
  {
    goto LABEL_53;
  }

  v10 = streamAggregateAudio_setAndCacheBufferedLocalVolume(a1, a3);
  if (v10)
  {
    goto LABEL_52;
  }

LABEL_30:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t streamAggregateAudio_copySupportedAudioCapabilities(uint64_t a1, CFDictionaryRef *a2)
{
  keys[1] = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!FigCFEqual())
  {
    v11 = 0;
    goto LABEL_11;
  }

  v4 = streamAggregateAudio_copySupportedAudioFormatForBufferAudio(a1, &cf);
  if (v4)
  {
    v11 = v4;
LABEL_18:
    APSLogErrorAt();
    goto LABEL_11;
  }

  FilteredListWithTranscodeFormats = APSAudioFormatDescriptionListCreateFilteredListWithTranscodeFormats();
  if (FilteredListWithTranscodeFormats)
  {
    v11 = FilteredListWithTranscodeFormats;
    goto LABEL_18;
  }

  v6 = APSAudioFormatDescriptionListCopyChannelLayoutTagsDataArray();
  if (v6)
  {
    v11 = v6;
    goto LABEL_18;
  }

  v7 = *MEMORY[0x277CBECE8];
  v8 = *MEMORY[0x277CC1958];
  values = 0;
  keys[0] = v8;
  v9 = CFDictionaryCreate(v7, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v9)
  {
    v10 = v9;
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2();
    }

    v11 = 0;
    *a2 = v10;
  }

  else
  {
    APSLogErrorAt();
    v11 = 4294951816;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

void __streamAggregateAudio_copySupportedAudioFormatForBufferAudio_block_invoke(void *a1, CFTypeRef cf)
{
  cfa = 0;
  if (!*(*(a1[4] + 8) + 24))
  {
    if (cf)
    {
      v3 = CFGetTypeID(cf);
      if (v3 == FigEndpointGetTypeID())
      {
        CMBaseObject = FigEndpointGetCMBaseObject();
        v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v5)
        {
          v6 = v5(CMBaseObject, *MEMORY[0x277CC12C8], *MEMORY[0x277CBECE8], &cfa);
          v7 = cfa;
        }

        else
        {
          v7 = 0;
          v6 = -12782;
        }

        *(*(a1[4] + 8) + 24) = v6;
        *(*(a1[4] + 8) + 24) = 0;
        if (v7)
        {
          if (APEndpointFigEndpointClusterTypeToAPSClusterType(v7) == 2)
          {
            *(*(a1[5] + 8) + 24) = 2;
          }
        }
      }
    }

    if (APSGetFBOPropertyInt64())
    {
      *(*(a1[6] + 8) + 24) = 1;
    }
  }

  if (cfa)
  {
    CFRelease(cfa);
  }
}

uint64_t streamAggregateAudio_setAndCacheBufferedLocalVolume(uint64_t a1, const void *a2)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 128) || !FigCFEqual())
  {
    return 0;
  }

  if (!a2 || (v3 = CFGetTypeID(a2), v3 != CFNumberGetTypeID()))
  {
    APSLogErrorAt();
    return 4294950536;
  }

  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v5)
  {
    v6 = 4294954514;
    goto LABEL_13;
  }

  v6 = v5(CMBaseObject, *MEMORY[0x277CC17B0], a2);
  if (v6)
  {
LABEL_13:
    APSLogErrorAt();
    return v6;
  }

  FigCFDictionarySetValue();
  return v6;
}

void streamAggregateAudio_resumeTimerCallback()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    Value = APSWrapperGetValue();
    CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2();
    }

    *(Value + 41) = 1;
    v3 = *(Value + 48);
    if (v3)
    {
      dispatch_source_cancel(*(Value + 48));
      dispatch_release(v3);
      *(Value + 48) = 0;
    }

    if (!*(Value + 40) && *(Value + 32) <= 0)
    {
      streamAggregateAudio_resumeCallClientCallback();
      *(Value + 40) = 1;
    }

    FigSimpleMutexUnlock();

    CFRelease(v1);
  }
}

uint64_t streamAggregateAudio_setPropertyForLocalSubStreamIterator(uint64_t a1, const void *a2, uint64_t a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 128))
  {
    result = FigCFEqual();
    if (!result)
    {
      result = FigCFEqual();
      if (result)
      {
        result = streamAggregateAudio_setAndCacheBufferedLocalVolume(a3, a2);
        if (result)
        {

          return APSLogErrorAt();
        }
      }
    }
  }

  return result;
}

uint64_t APEndpointStreamAggregateAudioCreate_cold_7(_DWORD *a1)
{
  APSLogErrorAt();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t APEndpointStreamAggregateAudioCreate_cold_9(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t APEndpointStreamAggregateAudioCreate_cold_10(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

void streamAggregateAudio_copySupportedAudioFormats_cold_2()
{
  OUTLINED_FUNCTION_3_16();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (*v0)
  {
    CFRelease(*v0);
  }
}

void streamAggregateAudio_updateDynamicProperties_cold_2()
{
  OUTLINED_FUNCTION_3_16();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (*v0)
  {
    CFRelease(*v0);
  }
}

void streamAggregateAudio_updateDynamicProperties_cold_3(uint64_t a1, CFTypeRef *a2)
{
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_2();
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

void streamAggregateAudio_updateDynamicProperties_cold_18(uint64_t a1, CFTypeRef *a2)
{
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_2();
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t streamAggregateAudio_triggerSuspendOrResume_cold_2(uint64_t a1, _DWORD *a2)
{
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50)
  {
    if (gLogCategory_APEndpointStreamAggregateAudio != -1 || (result = OUTLINED_FUNCTION_4(), result))
    {
      result = OUTLINED_FUNCTION_2();
    }
  }

  *a2 = 0;
  return result;
}

uint64_t streamAggregateAudio_triggerSuspendOrResume_cold_5(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  APSLogErrorAt();
  if (a2)
  {
    CFRelease(a2);
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  return APSLogErrorAt();
}

void streamAggregateAudio_triggerSuspendOrResume_cold_10(uint64_t a1)
{
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  streamAggregateAudio_updateDynamicProperties(a1, 0);
}

void streamAggregateAudio_triggerSuspendOrResume_cold_11(uint64_t a1)
{
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  streamAggregateAudio_updateDynamicProperties(a1, 0);
}

void streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_6()
{
  OUTLINED_FUNCTION_3_16();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (*v0)
  {
    CFRelease(*v0);
  }
}

void streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_8()
{
  OUTLINED_FUNCTION_3_16();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (*v0)
  {
    CFRelease(*v0);
  }
}

uint64_t streamAggregateAudio_isPassthroughSupportedForFormatDescription_cold_1()
{
  APSLogErrorAt();

  return FigSimpleMutexUnlock();
}

uint64_t emp_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 8);
  if (*DerivedStorage == 1)
  {
    v10 = *MEMORY[0x277CC0C68];
  }

  else
  {
    v10 = 0;
  }

  v11 = (*(a5 + 16))(a5, a3, "EndpointManagerPlus:[%{ptr}] inner [%{ptr}] type %@\n", a1, *(DerivedStorage + 8), v10);
  if (v11)
  {
    v16 = v11;
    goto LABEL_21;
  }

  APSHierarchyReporterProtocolGetProtocolID();
  if (!CMBaseObjectImplementsProtocol())
  {
    return 0;
  }

  APSHierarchyReporterProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v13 = *(ProtocolVTable + 16)) == 0)
  {
    v16 = 4294954508;
LABEL_15:
    v16 = (*(a5 + 16))(a5, a3 + 1, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", v9, 0, " ", 0, 0, v16, a1);
    goto LABEL_16;
  }

  v14 = *(v13 + 8);
  if (!v14)
  {
    v16 = 4294954514;
    goto LABEL_15;
  }

  v15 = v14(v9, a1, a3 + 1, 0, a5);
  v16 = v15;
  if (v15 == -12782 || v15 == -12788)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v16)
  {
LABEL_21:
    APSLogErrorAt();
  }

  return v16;
}

void emp_restartCachePromotionDeadlineIfNecessary(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (emp_getCachePromotionDeadlineDuration_onceToken != -1)
  {
    dispatch_once(&emp_getCachePromotionDeadlineDuration_onceToken, &__block_literal_global_76);
  }

  v3 = _MergedGlobals_0;
  if (FigCFEqual() || FigCFEqual())
  {
    if (dword_280FB1478 <= 40 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_6();
    }

    v4 = *(DerivedStorage + 104);
    if (!v4)
    {
      v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
      *(DerivedStorage + 104) = v5;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __emp_restartCachePromotionDeadlineIfNecessary_block_invoke;
      handler[3] = &unk_27849B1A8;
      handler[4] = a1;
      dispatch_source_set_event_handler(v5, handler);
      dispatch_activate(*(DerivedStorage + 104));
      v4 = *(DerivedStorage + 104);
    }

    v6 = dispatch_time(0, 1000000 * v3);
    dispatch_source_set_timer(v4, v6, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  }
}

uint64_t emp_postDelayedAvailableEndpointsChanged(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = CMBaseObjectGetDerivedStorage();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a2 objectForKeyedSubscript:@"Reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = *(v5 + 136);
      if (!v7)
      {
        v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
        *(v5 + 136) = v7;
      }

      [v7 addObjectsFromArray:v6];
    }
  }

  if (!*(DerivedStorage + 128))
  {
    *(DerivedStorage + 128) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(DerivedStorage + 112));
    OUTLINED_FUNCTION_2_20();
    v13 = 3221225472;
    v14 = __emp_postDelayedAvailableEndpointsChanged_block_invoke;
    v15 = &unk_27849B1A8;
    v16 = a1;
    dispatch_source_set_event_handler(v8, handler);
    v9 = *(DerivedStorage + 128);
    v10 = dispatch_time(0, 10000000);
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    dispatch_activate(*(DerivedStorage + 128));
  }

  return FigSimpleMutexUnlock();
}

uint64_t APEndpointManagerPlusCreate_cold_1(uint64_t *a1)
{
  v1 = *a1;
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 16))
  {
    v3 = result;
    v4 = objc_alloc_init(MEMORY[0x277CE4B30]);
    *(v3 + 16) = v4;
    [v4 setUsePresentDeviceStashing:0];
    [*(v3 + 16) setRequireDeviceNetworkSignature:1];
    OUTLINED_FUNCTION_2_20();
    v7 = 3221225472;
    v8 = __emp_setupCache_block_invoke;
    v9 = &unk_27849DE30;
    v10 = v1;
    [*(v3 + 16) setCachedDeviceFoundHandler:v6];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __emp_setupCache_block_invoke_2;
    v11[3] = &unk_27849DE30;
    v11[4] = v1;
    [*(v3 + 16) setCachedDeviceLostHandler:v11];
    v5 = *(v3 + 16);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __emp_setupCache_block_invoke_3;
    v12[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v12[4] = v1;
    return [v5 activateWithCompletion:v12];
  }

  return result;
}

uint64_t __emp_setupCache_block_invoke_cold_6()
{
  APSLogErrorAt();

  return FigSimpleMutexUnlock();
}

uint64_t __emp_setupCache_block_invoke_2_cold_1()
{
  APSLogErrorAt();

  return FigSimpleMutexUnlock();
}

uint64_t emp_isEndpointCacheable_cold_1(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (dword_280FB1478 <= 60)
  {
    v4 = result;
    if (dword_280FB1478 != -1 || (result = _LogCategory_Initialize(), result))
    {
      APEndpointPlusUtils_GetTypeString(v4);
      result = LogPrintF();
    }
  }

  *a3 = 0;
  return result;
}

void carPlayAnalytics_collectAudioFormatsFromStreamIfPresent(const void *a1, const void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = CFGetTypeID(a1);
    TypeID = CFStringGetTypeID();
    if (a2)
    {
      if (v5 == TypeID)
      {
        v7 = CFGetTypeID(a2);
        if (v7 == CFDictionaryGetTypeID())
        {
          FigCFDictionaryGetInt32IfPresent();
          v8 = carPlayAnalytics_convertCFStringToUint64();
          v9 = *(a3 + 40);
          if (gLogCategory_APCarPlayAnalytics <= 30 && (gLogCategory_APCarPlayAnalytics != -1 || _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_4_20();
            if (!v10)
            {
              OUTLINED_FUNCTION_2_21();
            }

            LogPrintF();
          }

          if (v8 == v9 && FigCFDictionaryGetInt32IfPresent())
          {
            SInt32 = FigCFNumberCreateSInt32();
            CFSetAddValue(*(a3 + 400), SInt32);
            if (gLogCategory_APCarPlayAnalytics <= 40 && (gLogCategory_APCarPlayAnalytics != -1 || _LogCategory_Initialize()))
            {
              OUTLINED_FUNCTION_4_20();
              if (!v10)
              {
                OUTLINED_FUNCTION_2_21();
              }

              LogPrintF();
            }

            if (SInt32)
            {
              CFRelease(SInt32);
            }
          }
        }
      }
    }
  }
}

uint64_t APCarPlayAnalyticsInitASRCollection_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -6705;
  return result;
}

uint64_t __APCarPlayAnalyticsStartCollections_block_invoke_cold_2()
{
  if (gLogCategory_APCarPlayAnalytics <= 60)
  {
    if (gLogCategory_APCarPlayAnalytics != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t _APCarPlayAnalyticsFinalize_cold_1(uint64_t a1)
{
  if ((*(a1 + 32) - 96) <= 0x18)
  {
    OUTLINED_FUNCTION_2_21();
  }

  return OUTLINED_FUNCTION_6();
}

void interruptibleStreamWrapper_bufferedClientUpdateNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  if (!a2)
  {
    return;
  }

  if (!a5)
  {
    goto LABEL_15;
  }

  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  CFDictionaryGetValue(a5, @"RoutingContextUUID");
  if (FigCFEqual())
  {
    if (!interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary())
    {
      return;
    }

LABEL_15:

    APSLogErrorAt();
    return;
  }

  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }
}

void interruptibleStreamWrapper_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_105();
  }

  if (*CMBaseObjectGetDerivedStorage())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
  FigNotificationCenterRemoveWeakListener();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    dispatch_release(v1);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 24) = 0;
  }

  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 40) = 0;
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 16) = 0;
  }
}

void interruptibleStreamWrapper_suspendAsync(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 30 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48))
  {
    v3 = DerivedStorage;
    if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = *(v3 + 24);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 24) = 0;
    }

    *(v3 + 48) = 0;
    if (interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary())
    {
      APSLogErrorAt();
      *(v3 + 48) = 1;
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_9_0();
    }
  }

  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_1_30();
  }

  CFRelease(*a1);
  v5 = *(a1 + 8);
  if (v5)
  {
    CFRelease(v5);
  }
}

void interruptibleStreamWrapper_resumeAsync(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 30 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 48))
  {
    v4 = DerivedStorage;
    if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2();
    }

    v5 = *(v4 + 24);
    *(v4 + 24) = v2;
    if (v2)
    {
      CFRetain(v2);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    *(v4 + 48) = 1;
    if (interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary())
    {
      APSLogErrorAt();
      *(v4 + 48) = 0;
    }

    else
    {
      if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_9_0();
    }
  }

  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_1_30();
  }

  CFRelease(*a1);
  v6 = *(a1 + 8);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary_cold_3()
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50)
  {
    if (gLogCategory_APEndpointStreamInterruptibleWrapper != -1)
    {
      return OUTLINED_FUNCTION_2();
    }

    result = OUTLINED_FUNCTION_4();
    if (result)
    {
      return OUTLINED_FUNCTION_2();
    }
  }

  return result;
}

uint64_t APSenderSessionFactoryCreateLegacySession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      if (gLogCategory_APSenderSessionFactory <= 50 && (gLogCategory_APSenderSessionFactory != -1 || (v16 = _LogCategory_Initialize(), v8 = *(a1 + 24), v16)))
      {
        LogPrintF();
        v15 = (*(a1 + 24))(*(a1 + 32), a2, a3, a4, a5, a6, a7);
      }

      else
      {
        v15 = v8(*(a1 + 32), a2, a3, a4, a5, a6, a7);
      }

      v17 = v15;
      if (v15)
      {
        APSLogErrorAt();
      }
    }

    else
    {
      return 4294960561;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return v17;
}

uint64_t APSenderSessionFactoryCreate_cold_2(int a1, uint64_t a2, _DWORD *a3)
{
  result = APSLogErrorAt();
  if (gLogCategory_APSenderSessionFactory <= 90)
  {
    if (gLogCategory_APSenderSessionFactory != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a3 = a1;
  return result;
}

uint64_t carRemoteAudioStream_suspend(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    if (*(DerivedStorage + 16))
    {
      v8 = FigXPCCreateBasicMessage();
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = FigXPCRemoteClientSendSyncMessage();
        if (!v9)
        {
          goto LABEL_5;
        }
      }

      APSLogErrorAt();
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    v9 = 4294960578;
  }

LABEL_5:
  if (a3)
  {
    a3(a1, v9, a4);
  }

  return v9;
}

uint64_t APCarPlayAudioFormatsCreate_cold_4(void *a1)
{
  [a1 name];
  [a1 manufacturer];
  [a1 modelNumber];
  [a1 firmwareRevision];
  return OUTLINED_FUNCTION_2();
}

void __getEAAccessoryManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getEAAccessoryManagerClass(void)_block_invoke") description:{@"APCarPlayAudioFormats.m", 32, @"Unable to find class %s", "EAAccessoryManager"}];
  __break(1u);
}

void __getEAAccessoryManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *ExternalAccessoryLibrary(void)") description:{@"APCarPlayAudioFormats.m", 30, @"%s", *a1}];
  __break(1u);
}

void carPlayAudioFormat_repackageFormatsForStream_cold_4()
{
  APSLogErrorAt();
  if (gLogCategory_APCarPlayAudioFormat <= 50 && (gLogCategory_APCarPlayAudioFormat != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2();
  }

  OUTLINED_FUNCTION_1_31();
}

void carPlayAudioFormat_repackageFormatsForStream_cold_14(const void *a1, const void *a2)
{
  APSLogErrorAt();
  CFRelease(a1);
  CFRelease(a2);
}

void carPlayAudioFormat_repackageFormatsForStream_cold_22(uint64_t a1, const void *a2)
{
  APSLogErrorAt();

  CFRelease(a2);
}

uint64_t browserController_registerEndpointActivated(uint64_t *a1)
{
  cf = 0;
  v2 = *MEMORY[0x277CBECE8];
  browserController_copyDeviceName(a1[1], &cf);
  DiscoveryID = APTransportDeviceGetDiscoveryID();
  if (*(a1 + 16))
  {
    v4 = "-remote";
  }

  else
  {
    v4 = "";
  }

  v5 = CFStringCreateWithFormat(v2, 0, @"%@%s", DiscoveryID, v4);
  v6 = gLogCategory_APBrowserController;
  if (gLogCategory_APBrowserController <= 40)
  {
    if (gLogCategory_APBrowserController == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v6 = gLogCategory_APBrowserController;
    }

    if (v6 == -1)
    {
      _LogCategory_Initialize();
    }

    LogPrintF();
  }

LABEL_12:
  if (CFDictionaryContainsKey(*(*a1 + 120), v5))
  {
    if (*(a1 + 16))
    {
      v7 = @"None";
    }

    else
    {
      v7 = @"Presence";
    }

    CFDictionaryReplaceValue(*(*a1 + 120), v5, v7);
    started = APTransportDeviceStartTracking();
    if (started)
    {
      APSLogErrorAt();
    }

    else
    {
      browserController_updateDiscoveryMode(*a1);
    }
  }

  else
  {
    started = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return started;
}

uint64_t APBrowserControllerInvalidate_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

void browserController_registerEndpointActivating_cold_1()
{
  if (gLogCategory_APBrowserController <= 40 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

void browserController_copyDeviceName_cold_1(uint64_t a1, const void *a2)
{
  APSLogErrorAt();
  if (a2)
  {
    CFRelease(a2);
  }
}

uint64_t browserController_browserEventHandlerInternal_cold_3()
{
  APSLogErrorAt();

  return APSSignalErrorAt();
}

uint64_t browserController_browserEventHandlerInternal_cold_5()
{
  APSLogErrorAt();

  return APSSignalErrorAt();
}

void __carEndpoint_isEndpointConnected_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!*(v1 + 176))
  {
    v2 = *(v1 + 240);
    if (v2)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v3)
      {
        v3(v2);
      }

      OUTLINED_FUNCTION_2_16();
      *(v5 + 24) = v4;
    }
  }
}

uint64_t carEndpoint_raiseAltScreenPowerAssertionIfNeeded()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 504))
  {
    v1 = result;
    result = APSPowerAssertionCreate();
    *(v1 + 504) = result;
    if (result)
    {

      return APSPowerAssertionRaise();
    }
  }

  return result;
}

uint64_t carEndpoint_CreatePlaybackSession()
{
  OUTLINED_FUNCTION_3_7();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  if (!*(DerivedStorage + 162))
  {
    return 4294960561;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(v3 + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_createPlaybackSessionInternal_block_invoke;
  block[3] = &unk_27849F428;
  block[4] = &v8;
  block[5] = v3;
  block[6] = v1;
  block[7] = v0;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t carEndpoint_updateVideoPlaybackAllowed(const void *a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  if (!*(DerivedStorage + 60))
  {
    goto LABEL_4;
  }

  v6 = DerivedStorage;
  if (!FigCFDictionaryGetBooleanIfPresent())
  {
    APSLogErrorAt();
    v7 = 4294950576;
    goto LABEL_5;
  }

  if (v21 == *(v6 + 161))
  {
    goto LABEL_4;
  }

  *(v6 + 161) = v21;
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  OUTLINED_FUNCTION_2_22();
  v12 = 0x40000000;
  v13 = __carEndpoint_updateVideoPlaybackAllowed_block_invoke;
  v14 = &unk_27849F0F8;
  v15 = &v17;
  v16 = v6;
  dispatch_sync(v9, block);
  carEndpoint_postNotification(a1, *MEMORY[0x277CC0D48], *(v18 + 6), 0);
  v7 = 0;
  if (a3 && !v21)
  {
    StringValue = FigCFDictionaryGetStringValue();
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2();
    }

    if (!StringValue || !CFEqual(@"video", StringValue))
    {
LABEL_4:
      v7 = 0;
      goto LABEL_5;
    }

    v7 = carEndpoint_sendCommandInternal(a1, @"changeVideoPlaybackToAudioOnly", 0, 1, 0);
    if (v7)
    {
      APSLogErrorAt();
    }
  }

LABEL_5:
  _Block_object_dispose(&v17, 8);
  return v7;
}

void carEndpoint_powerLogActivation(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x277CBECE8];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v6 = MutableCopy;
    valuePtr = 0;
    v7 = FigCFArrayCreateMutableCopy();
    if (v7)
    {
      v8 = v7;
      APSEventRecorderGetEventTime();
      valuePtr = v9;
      v10 = CFNumberCreate(v4, kCFNumberSInt64Type, &valuePtr);
      if (v10)
      {
        v11 = v10;
        CFDictionarySetValue(v6, @"SessionID", v10);
        v12 = *MEMORY[0x277CBED28];
        v13 = *MEMORY[0x277CBED10];
        if (a2)
        {
          v14 = *MEMORY[0x277CBED28];
        }

        else
        {
          v14 = *MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(v6, @"Activated", v14);
        if (*(DerivedStorage + 40))
        {
          v15 = v12;
        }

        else
        {
          v15 = v13;
        }

        CFDictionarySetValue(v6, @"Wireless", v15);
        PLLogRegisteredEvent();
        CFRelease(v11);
      }

      CFRelease(v8);
    }

    CFRelease(v6);
  }
}

void carEndpoint_setParametersForJarvis(const void *a1, int a2, int a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 57))
  {
    v10 = DerivedStorage;
    v11 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v13 = Mutable;
      v14 = CFGetAllocator(a1);
      v15 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (a2)
      {
        CFDictionarySetInt64();
      }

      else
      {
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        if (a3 == 1 && a5)
        {
          CFDictionarySetValue(v15, @"voiceModelLanguage", a5);
        }
      }

      CFDictionarySetValue(v13, @"enhancedSiriParameters", v15);
      OUTLINED_FUNCTION_2_20();
      v18 = 0x40000000;
      v19 = __carEndpoint_setParametersForJarvis_block_invoke;
      v20 = &__block_descriptor_tmp_204;
      v21 = v10;
      v22 = v13;
      v25 = a2;
      v23 = v15;
      v24 = a1;
      dispatch_sync(v16, block);
      CFRelease(v13);
      if (v15)
      {
        CFRelease(v15);
      }
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

void __carEndpoint_sendCommandInternal_block_invoke(uint64_t a1)
{
  v46 = 0;
  v47 = &v46;
  v48 = 0x2000000000;
  v49 = 0;
  v45 = 0;
  v44.tv_sec = 0;
  *&v44.tv_usec = 0;
  if (carEndpoint_isDissociated(*(a1 + 32)))
  {
    goto LABEL_18;
  }

  if (gLogCategory_APEndpointCarPlay <= 20 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    v36 = "OSStatus carEndpoint_sendCommandInternal(FigEndpointRef, CFStringRef, CFDictionaryRef, Boolean, dispatch_semaphore_t)_block_invoke";
    v37 = *(a1 + 48);
    v35 = *(a1 + 40);
    LogPrintF();
  }

  v2 = OUTLINED_FUNCTION_10_6(*(a1 + 32));
  v39 = 0x40000000;
  v40 = __carEndpoint_sendCommandInternal_block_invoke_2;
  v41 = &unk_27849E840;
  v42 = &v46;
  v43 = v3;
  dispatch_sync(v2, block);
  v4 = v47[3];
  if (!v4)
  {
    goto LABEL_28;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v5 || !v5(v4))
  {
LABEL_18:
    LODWORD(v4) = 0;
    goto LABEL_28;
  }

  APSenderSessionGetCMBaseObject(v47[3]);
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    LODWORD(v4) = -12782;
LABEL_20:
    APSLogErrorAt();
    goto LABEL_28;
  }

  v6 = OUTLINED_FUNCTION_8_4();
  v8 = v7(v6);
  if (v8)
  {
    LODWORD(v4) = v8;
    goto LABEL_20;
  }

  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    v37 = 1668246893;
    v35 = *(a1 + 40);
    v36 = "OSStatus carEndpoint_sendCommandInternal(FigEndpointRef, CFStringRef, CFDictionaryRef, Boolean, dispatch_semaphore_t)_block_invoke";
    LogPrintF();
  }

  gettimeofday(&v44, 0);
  v9 = *(a1 + 80);
  v10 = *(CMBaseObjectGetVTable() + 16);
  if (v9)
  {
    if (*(v10 + 48))
    {
      v21 = OUTLINED_FUNCTION_28_0();
      LODWORD(v4) = v22(v21);
    }

    else
    {
      LODWORD(v4) = -12782;
    }

    Length = CFDataGetLength(*(a1 + 64));
    OUTLINED_FUNCTION_26_2(Length, v24, v25, v26, v27, v28, v29, v30, v35, v36, v37);
    if (v4)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (*(v10 + 56))
    {
      v11 = OUTLINED_FUNCTION_28_0();
      LODWORD(v4) = v12(v11);
    }

    else
    {
      LODWORD(v4) = -12782;
    }

    v13 = CFDataGetLength(*(a1 + 64));
    OUTLINED_FUNCTION_26_2(v13, v14, v15, v16, v17, v18, v19, v20, v35, v36, v37);
    if (v4)
    {
      goto LABEL_20;
    }
  }

LABEL_28:
  v31 = *(a1 + 72);
  if (v31)
  {
    dispatch_semaphore_signal(v31);
    dispatch_release(*(a1 + 72));
  }

  v32 = v45;
  if (v45 && v4)
  {
    if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v32 = v45;
  }

  if (v32)
  {
    CFRelease(v32);
  }

  v33 = v47[3];
  if (v33)
  {
    CFRelease(v33);
  }

  CFRelease(*(a1 + 56));
  v34 = *(a1 + 48);
  if (v34)
  {
    CFRelease(v34);
  }

  CFRelease(*(a1 + 40));
  _Block_object_dispose(&v46, 8);
}

uint64_t carEndpoint_requestSiri(const void *a1, uint64_t a2)
{
  v66[5] = *MEMORY[0x277D85DE8];
  v61 = 0;
  v62 = &v61;
  v63 = 0x2000000000;
  v64 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v57 = 0;
  v58 = &v57;
  v59 = 0x2000000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2000000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2000000000;
  LOBYTE(v52) = 0;
  if (!a2)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_13_7(v62);
    goto LABEL_24;
  }

  v5 = DerivedStorage;
  Int64 = CFDictionaryGetInt64();
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || OUTLINED_FUNCTION_4()))
  {
    v30 = a1;
    v31 = Int64;
    OUTLINED_FUNCTION_2();
  }

  v7 = *(v5 + 168);
  block = MEMORY[0x277D85DD0];
  v38 = 0x40000000;
  v39 = __carEndpoint_requestSiri_block_invoke;
  v40 = &unk_27849E9B0;
  LODWORD(v48) = Int64;
  v41 = &v61;
  v42 = &v53;
  v45 = a1;
  v46 = v5;
  v43 = &v49;
  v44 = &v57;
  v47 = a2;
  dispatch_sync(v7, &block);
  if (!*(v62 + 6))
  {
    v8 = *(v50 + 24);
    v9 = v58[3];
    CMBaseObjectGetDerivedStorage();
    if ((Int64 - 5) < 0xFFFFFFFC)
    {
      v28 = -16720;
    }

    else
    {
      if (Int64 == 4 && !v8)
      {
        v12 = 0;
        OUTLINED_FUNCTION_29_1();
        if (v29)
        {
LABEL_16:
          OUTLINED_FUNCTION_32_1(v16, *MEMORY[0x277CC0D18], v17, v18, v19, v20, v21, v22, v30, v31, v32, v33, v34, v35, v36, block, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
          if (!v12)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        goto LABEL_19;
      }

      v10 = CFGetAllocator(a1);
      Mutable = CFDictionaryCreateMutable(v10, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      values = Mutable;
      if (Mutable)
      {
        v12 = Mutable;
        v13 = *MEMORY[0x277CC1788];
        v66[0] = @"Invalid";
        v66[1] = v13;
        v14 = *MEMORY[0x277CC1780];
        v66[2] = *MEMORY[0x277CC1778];
        v66[3] = v14;
        v15 = *MEMORY[0x277CC1798];
        v66[4] = *MEMORY[0x277CC1790];
        CFDictionarySetValue(Mutable, v15, v66[Int64]);
        if (v9)
        {
          CFAbsoluteTimeGetCurrent();
          mach_absolute_time();
          UpTicksToSecondsF();
          CFDictionarySetDouble();
        }

        if (!v8 || (v12 = CFDictionaryCreate(0, MEMORY[0x277CC0AA8], &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) != 0)
        {
          OUTLINED_FUNCTION_29_1();
          if (v23)
          {
            goto LABEL_16;
          }

          if (Int64 != 4)
          {
            OUTLINED_FUNCTION_32_1(v16, *MEMORY[0x277CC0D88], v17, v18, v19, v20, v21, v22, v30, v31, v32, v33, v34, v35, v36, block, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
LABEL_23:
            CFRelease(v12);
            goto LABEL_24;
          }

LABEL_19:
          v24 = *(v5 + 168);
          v32 = MEMORY[0x277D85DD0];
          v33 = 0x40000000;
          v34 = __carEndpoint_requestSiri_block_invoke_2;
          v35 = &__block_descriptor_tmp_359;
          v36 = v5;
          dispatch_sync(v24, &v32);
          v25 = APCarPlayInitiateJarvisProcessing(a1, v58[3], carEndpoint_jarvisInitiationComplete);
          *(v62 + 6) = v25;
          if (v25)
          {
            APSLogErrorAt();
            if (!v12)
            {
              goto LABEL_24;
            }
          }

          else if (!v12)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        v28 = -16721;
      }

      else
      {
        v28 = -6728;
      }
    }

    APSLogErrorAt();
    *(v62 + 6) = v28;
    APSLogErrorAt();
  }

LABEL_24:
  v26 = *(v62 + 6);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);
  return v26;
}