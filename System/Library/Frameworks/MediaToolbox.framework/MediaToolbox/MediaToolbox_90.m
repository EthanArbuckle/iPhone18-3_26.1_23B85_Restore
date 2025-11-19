void fpfs_StepIFrame()
{
  OUTLINED_FUNCTION_182();
  v4 = v3;
  OUTLINED_FUNCTION_699();
  v410 = *MEMORY[0x1E69E9840];
  v6 = *(v5 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  v8 = CMBaseObjectGetDerivedStorage();
  v367 = 0;
  v374 = 0;
  v380 = 0;
  v9 = OUTLINED_FUNCTION_410();
  fpfs_GetNextTimeToPlay(v9, v10, v11);
  v345 = 0;
  v353 = 0;
  v360 = 0;
  *(v1 + 1540) = 1;
  Current = CFAbsoluteTimeGetCurrent();
  v13 = *(v1 + 1520);
  v14 = *v2;
  *(v0 + 248) = v2[2];
  v309 = v0;
  *(v0 + 232) = v14;
  if (*(v8 + 80) != v6)
  {
    goto LABEL_108;
  }

  v15 = Current - v13;
  v16 = MEMORY[0x1E6960CC0];
  v317 = v4;
  if ((*(v1 + 1508) & 1) == 0)
  {
    v17 = 0;
    goto LABEL_22;
  }

  if (*(v1 + 2192) == 0.0)
  {
    number[0].value = 0;
    valuePtr.value = 0x4020000000000000;
    v18 = *(v1 + 912);
    AllocatorForMedia = FigGetAllocatorForMedia();
    FigBaseObject = FigBytePumpGetFigBaseObject(v18);
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v17 = v21(FigBaseObject, 0x1F0B1F378, AllocatorForMedia, number);
      *(v1 + 2192) = 0x4020000000000000;
      v22 = 8.0;
      value = number[0].value;
      if (!v17)
      {
        CFNumberGetValue(number[0].value, kCFNumberDoubleType, &valuePtr);
        v22 = *(v1 + 2192);
        value = number[0].value;
      }

      if (v22 >= *&valuePtr.value)
      {
        v22 = *&valuePtr.value;
      }

      *(v1 + 2192) = v22;
      if (value)
      {
        CFRelease(value);
      }
    }

    else
    {
      v24 = *&valuePtr.value;
      if (*&valuePtr.value > 8.0)
      {
        v24 = 8.0;
      }

      *(v1 + 2192) = v24;
      v17 = -12782;
    }
  }

  else
  {
    v17 = 0;
  }

  OUTLINED_FUNCTION_74();
  v33 = OUTLINED_FUNCTION_600(v25, v26, v27, v28, v29, v30, v31, v32, v203, v211, v219, v227, v236, v244, v252, cf, v268, v277, ValueAtIndex, v293, v301, v309, v317, v329, v337, 0, 0, 0, 0, 0, 0, v387, time2.value, *&time2.timescale, time2.epoch, v395, rhs.value, *&rhs.timescale, rhs.epoch, v397.value, *&v397.timescale, v397.epoch, *(v1 + 1496), *(v1 + 1504), *(v1 + 1512), v399, *v400, *&v400[8], *&v400[16], *&v400[24], *&v401, *v402, *&v402[8], *&v402[16], *&v402[24], *&v403, number[0].value);
  v36 = CMTimeSubtract(v35, v33, v34);
  number[0] = v346;
  v44 = OUTLINED_FUNCTION_600(v36, v37, v38, v39, v40, v41, v42, v43, v204, v212, v220, v228, v237, v245, v253, cfc, v269, v278, v286, v294, v302, v310, v318, v330, v338, v346.value, *&v346.timescale, v346.epoch, v368, v375, v381, v388, time2.value, *&time2.timescale, time2.epoch, v395, rhs.value, *&rhs.timescale, rhs.epoch, v397.value, *&v397.timescale, v397.epoch, *v16, v16[1], v16[2], v399, *v400, *&v400[8], *&v400[16], *&v400[24], *&v401, *v402, *&v402[8], *&v402[16], *&v402[24], *&v403, v346.value);
  if (CMTimeCompare(v44, v45))
  {
    v46 = *(v8 + 108);
    v47 = v46 / OUTLINED_FUNCTION_528(v360, v203, v211, v219, v227, v236, v244, v252, cf, v268, v277, ValueAtIndex, v293, v301, v309, v317, v329, v337, v345, v353, v360, v367, v374, v380, v387, time2.value, *&time2.timescale, time2.epoch, v395, rhs.value, *&rhs.timescale, rhs.epoch, v397.value, *&v397.timescale, v397.epoch, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v399, *v400, *&v400[8], *&v400[16], *&v400[24], *&v401, *v402, *&v402[8], *&v402[16], *&v402[24], *&v403, v345, v353, number[0].epoch);
    ++*(v1 + 2176);
    *(v1 + 2184) = v47 + *(v1 + 2184);
    v48 = *(v1 + 2192);
    if (v47 >= v48 * 0.33)
    {
      if (v47 >= v48 * 0.66)
      {
        goto LABEL_22;
      }

      v49 = 2208;
    }

    else
    {
      v49 = 2200;
    }

    ++*(v1 + v49);
  }

LABEL_22:
  v50 = *(v1 + 1508);
  v51 = &unk_1EAF16000;
  LODWORD(v52) = -353280000;
  if (v15 <= 0.0)
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_60;
    }

    v53 = (v15 + (*(v1 + 1536) + *(v1 + 1536))) / 3.0;
    *(v1 + 1536) = v53;
  }

  v54 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_724(v54);
  v301 = CMBaseObjectGetDerivedStorage();
  memset(&v397, 0, sizeof(v397));
  fpfs_CurrentSubStreamBufferedDuration(LOBYTE(STACK[0x640]), &v397);
  v55 = STACK[0x880];
  Count = CFArrayGetCount(STACK[0x880]);
  v57 = Count;
  v58 = Count - 1;
  if (Count < 1)
  {
    if (!Count)
    {
LABEL_34:
      v52 = &unk_1EAF16000;
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM();
      v16 = MEMORY[0x1E6960CC0];
LABEL_59:
      v51 = &unk_1EAF16000;
      goto LABEL_60;
    }

    v59 = 0;
  }

  else
  {
    v59 = 0;
    while (CFArrayGetValueAtIndex(v55, v59) != STACK[0x890])
    {
      if (v57 == ++v59)
      {
        goto LABEL_34;
      }
    }

    if (v57 == v59)
    {
      goto LABEL_34;
    }

    if (v59)
    {
      if (*&STACK[0x588] > 0.0 && 1.0 / *&STACK[0x588] < *&STACK[0x800] && *(v301 + 108) != 0.0)
      {
        OUTLINED_FUNCTION_528(v397.epoch, v203, v211, v219, v227, v236, v244, v252, cf, v268, v277, ValueAtIndex, v293, v301, v309, v317, v329, v337, v345, v353, v360, v367, v374, v380, v387, time2.value, *&time2.timescale, time2.epoch, v395, rhs.value, *&rhs.timescale, rhs.epoch, v397.value, *&v397.timescale, v397.epoch, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v399, *v400, *&v400[8], *&v400[16], *&v400[24], *&v401, *v402, *&v402[8], *&v402[16], *&v402[24], *&v403, v397.value, *&v397.timescale, number[0].epoch);
        OUTLINED_FUNCTION_573();
        if (v60 / v61 < 1.0)
        {
          v62 = v59;
          do
          {
            v63 = v62-- < 1;
          }

          while (!v63 && 1.0 / (*&STACK[0x588] + 2.0) < fpfs_ProjectedDeliveryTime(&v405, v62));
          v64 = v62 & ~(v62 >> 63);
          v65 = OUTLINED_FUNCTION_783();
          ValueAtIndex = CFArrayGetValueAtIndex(v65, v66);
          if (ValueAtIndex)
          {
            v270 = v64;
            goto LABEL_50;
          }
        }
      }
    }
  }

  if (v59 >= v58 || *&STACK[0x800] > 0.111111111 || fpfs_ProjectedDeliveryTime(&v405, v59 + 1) > 0.1 || (ValueAtIndex = CFArrayGetValueAtIndex(v55, v59 + 1)) == 0)
  {
    v16 = MEMORY[0x1E6960CC0];
    v52 = &unk_1EAF16000;
    goto LABEL_59;
  }

  v270 = v59 + 1;
LABEL_50:
  v52 = &unk_1EAF16000;
  fpfs_GetNextTimeToPlay(&v405, 0, number);
  v75 = OUTLINED_FUNCTION_600(v67, v68, v69, v70, v71, v72, v73, v74, v203, v211, v219, v227, v236, v244, v252, cf, v270, v277, ValueAtIndex, v293, v301, v309, v317, v329, v337, v345, v353, v360, v367, v374, v380, v387, time2.value, *&time2.timescale, time2.epoch, v395, 0, 0, 0, v397.value, *&v397.timescale, v397.epoch, STACK[0x688], STACK[0x690], STACK[0x698], v399, *v400, *&v400[8], *&v400[16], *&v400[24], *&v401, *v402, *&v402[8], *&v402[16], *&v402[24], *&v403, number[0].value);
  CMTimeAdd(v77, v75, v76);
  memset(&time2, 0, sizeof(time2));
  CMTimeMakeWithSeconds(&time2, 0.142857143, 1000);
  *&v405.value = *&time2.value;
  v406 = *MEMORY[0x1E6960C70];
  v78 = *(MEMORY[0x1E6960C70] + 16);
  v405.epoch = time2.epoch;
  v407 = v78;
  v408 = v406;
  v409 = v78;
  *&STACK[0x7F0] = CFAbsoluteTimeGetCurrent();
  number[0] = time2;
  LODWORD(v203) = 0;
  OUTLINED_FUNCTION_185();
  v79 = fpfs_SetAlternateWithContext();
  v51 = &unk_1EAF16000;
  if (!v79 && dword_1EAF169F0)
  {
    HIDWORD(v277) = 0;
    cf = FigCFCopyCompactDescription();
    DescriptionString = FigAlternateCreateDescriptionString(ValueAtIndex);
    if (dword_1EAF169F0)
    {
      OUTLINED_FUNCTION_595();
      ValueAtIndex = OUTLINED_FUNCTION_497();
      HIDWORD(v252) = BYTE3(v387);
      os_log_type_enabled(ValueAtIndex, BYTE3(v387));
      OUTLINED_FUNCTION_125();
      if (!v82)
      {
        v81 = HIDWORD(v387);
      }

      if (v81)
      {
        HIDWORD(v236) = v81;
        v83 = v405.value;
        if (v405.value)
        {
          v84 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v84 = "";
        }

        v233 = v84;
        v172 = v15;
        if (v6)
        {
          v173 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v173 = "";
        }

        if (v268 >= v59)
        {
          v174 = "up";
        }

        else
        {
          v174 = "down";
        }

        v175.n128_f64[0] = OUTLINED_FUNCTION_528(rhs.epoch, v203, v211, v219, v233, v236, DescriptionString, v252, cf, v268, v277, ValueAtIndex, v293, v301, v309, v317, v329, v337, v345, v353, v360, v367, v374, v380, v387, time2.value, *&time2.timescale, time2.epoch, v395, rhs.value, *&rhs.timescale, rhs.epoch, v397.value, *&v397.timescale, v397.epoch, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v399, *v400, *&v400[8], *&v400[16], *&v400[24], *&v401, *v402, *&v402[8], *&v402[16], *&v402[24], *&v403, rhs.value, *&rhs.timescale, number[0].epoch);
        v176 = v175.n128_u64[0];
        v175.n128_u32[0] = STACK[0x800];
        v177 = *&STACK[0x800];
        OUTLINED_FUNCTION_525(v178, v179, v180, v181, v182, v183, v184, v185, v209, v217, v225, v234, v242, v250, v258, cff, v275, v283, v291, v299, v307, v315, v326, v335, v343, v351, v358, v365, v372, v378, v385, v392, time2.value, *&time2.timescale, time2.epoch, v395, rhs.value, *&rhs.timescale, rhs.epoch, v175);
        OUTLINED_FUNCTION_528(v186, v210, v218, v226, v235, v243, v251, v259, cfg, v276, v284, v292, v300, v308, v316, v327, v336, v344, v352, v359, v366, v373, v379, v386, v393, time2.value, *&time2.timescale, time2.epoch, v395, rhs.value, *&rhs.timescale, rhs.epoch, v397.value, *&v397.timescale, v397.epoch, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v399, *v400, *&v400[8], *&v400[16], *&v400[24], *&v401, *v402, *&v402[8], *&v402[16], *&v402[24], *&v403, number[0].value, *&number[0].timescale, number[0].epoch);
        LODWORD(valuePtr.value) = 136317698;
        OUTLINED_FUNCTION_573();
        *(&valuePtr.value + 4) = "fpfs_EnsureCorrectIFrameAlternate";
        OUTLINED_FUNCTION_750();
        *(&valuePtr.flags + 2) = v83;
        HIWORD(valuePtr.epoch) = 2082;
        v399 = v227;
        *v400 = v187;
        *&v400[2] = v6;
        *&v400[10] = 2082;
        *&v400[12] = v173;
        *&v400[20] = 2082;
        *&v400[22] = v174;
        *&v400[30] = 2114;
        v401 = *&v244;
        *v402 = v187;
        *&v402[2] = v176;
        *&v402[10] = v187;
        *&v402[12] = v172;
        *&v402[20] = v187;
        *&v402[22] = v177;
        DescriptionString = v244;
        *&v402[30] = v187;
        v403 = v188 / v189;
        LODWORD(v211) = 112;
        OUTLINED_FUNCTION_654();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
        v52 = &unk_1EAF16000;
      }

      OUTLINED_FUNCTION_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v51 = &unk_1EAF16000;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v79 = HIDWORD(v277);
    if (DescriptionString)
    {
      CFRelease(DescriptionString);
      v79 = HIDWORD(v277);
    }
  }

  v16 = MEMORY[0x1E6960CC0];
  if (*(v301 + 52) || (v79 != -12644 ? (v190 = v79) : (v190 = 0), *(v301 + 80) != v6))
  {
    OUTLINED_FUNCTION_120();
    v197 = v196;
    v190 = FigSignalErrorAtGM();
    v79 = v197;
  }

  if (v79 != -12644 && !v190)
  {
    OUTLINED_FUNCTION_296();
    fpfs_StopFeedingTrack(v191, v192, v193);
    ++*(v1 + 2168);
  }

LABEL_60:
  OUTLINED_FUNCTION_498();
  if (!v82)
  {
    goto LABEL_79;
  }

  v85 = OUTLINED_FUNCTION_685();
  if (!v82)
  {
    OUTLINED_FUNCTION_74();
    v96 = OUTLINED_FUNCTION_747();
    if (!fpfsi_atOrAfterTimeToPausePlayback(v96))
    {
      v159 = OUTLINED_FUNCTION_410();
      fpfs_GetNextTimeToPlay(v159, v160, v161);
      v162 = OUTLINED_FUNCTION_747();
      if (!fpfsi_atOrAfterTimeToPausePlayback(v162))
      {
        OUTLINED_FUNCTION_74();
        fpfs_SetTime(v6, number);
        if (v51[636])
        {
          LODWORD(v405.value) = 0;
          LOBYTE(v397.value) = 0;
          v164 = OUTLINED_FUNCTION_816();
          OUTLINED_FUNCTION_833(v164, v165, v166, v167, v168, v169, v170, v171, v203, v211, v219, v227, v236, v244, v252, cf, v268, v277, ValueAtIndex, v8, v301, v309, v317, v329, v337, v345, v353, v360, v367, v374, v380, v387, time2.value, *&time2.timescale, time2.epoch, v395, rhs.value, *&rhs.timescale, rhs.epoch, v397.value);
          OUTLINED_FUNCTION_70();
          if (&v405)
          {
            v194 = *v1;
            if (*v1)
            {
              v195 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v195 = "";
            }

            v328 = v195;
            if (v6)
            {
              v198 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v198 = "";
            }

            OUTLINED_FUNCTION_528(v2[2], v203, v211, v219, v227, v236, v244, v252, cf, v268, v277, ValueAtIndex, v293, v198, v309, v328, v329, v337, v345, v353, v360, v367, v374, v380, v387, time2.value, *&time2.timescale, time2.epoch, v395, rhs.value, *&rhs.timescale, rhs.epoch, v397.value, *&v397.timescale, v397.epoch, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v399, *v400, *&v400[8], *&v400[16], *&v400[24], *&v401, *v402, *&v402[8], *&v402[16], *&v402[24], *&v403, *v2, v2[1], number[0].epoch);
            LODWORD(valuePtr.value) = 136316418;
            *(&valuePtr.value + 4) = "fpfs_StepIFrame";
            OUTLINED_FUNCTION_750();
            *(&valuePtr.flags + 2) = v194;
            OUTLINED_FUNCTION_598();
            *&v400[2] = v6;
            *&v400[10] = v199;
            *&v400[12] = v301;
            *&v400[20] = v200;
            *&v400[22] = v201;
            OUTLINED_FUNCTION_127();
            OUTLINED_FUNCTION_654();
            OUTLINED_FUNCTION_35();
            OUTLINED_FUNCTION_307();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_454();
          v8 = v293;
          v16 = MEMORY[0x1E6960CC0];
          v51 = &unk_1EAF16000;
        }

        v163.n128_u32[0] = *(v1 + 840);
        v202 = *(v8 + 108);
        if (v163.n128_f32[0] != v202)
        {
          *(v1 + 840) = v202;
          fpfsi_RTCReportingReportRateChange(v202);
          v163.n128_u32[0] = *(v1 + 840);
        }

        fpfs_SetRateOnTrack(v309, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v163);
        if (*(v1 + 2160) == 0.0)
        {
          *(v1 + 2160) = CFAbsoluteTimeGetCurrent() - *(v1 + 2152);
        }

        goto LABEL_79;
      }
    }

    v85 = *(v8 + 108);
  }

  if (v85 == 0.0)
  {
    if (v51[636])
    {
      LODWORD(v405.value) = 0;
      LOBYTE(v397.value) = 0;
      v86 = OUTLINED_FUNCTION_816();
      OUTLINED_FUNCTION_833(v86, v87, v88, v89, v90, v91, v92, v93, v203, v211, v219, v227, v236, v244, v252, cf, v268, v277, ValueAtIndex, v293, v301, v309, v317, v329, v337, v345, v353, v360, v367, v374, v380, v387, time2.value, *&time2.timescale, time2.epoch, v395, rhs.value, *&rhs.timescale, rhs.epoch, v397.value);
      OUTLINED_FUNCTION_70();
      if (&v405)
      {
        v94 = *v1;
        if (*v1)
        {
          v95 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v95 = "";
        }

        v319 = v95;
        if (v6)
        {
          v98 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v98 = "";
        }

        OUTLINED_FUNCTION_528(v2[2], v203, v211, v219, v227, v236, v244, v252, cf, v268, v277, ValueAtIndex, v8, v301, v309, v319, v329, v337, v345, v353, v360, v367, v374, v380, v387, time2.value, *&time2.timescale, time2.epoch, v395, rhs.value, *&rhs.timescale, rhs.epoch, v397.value, *&v397.timescale, v397.epoch, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v399, *v400, *&v400[8], *&v400[16], *&v400[24], *&v401, *v402, *&v402[8], *&v402[16], *&v402[24], *&v403, *v2, v2[1], number[0].epoch);
        LODWORD(valuePtr.value) = 136316418;
        *(&valuePtr.value + 4) = "fpfs_StepIFrame";
        OUTLINED_FUNCTION_750();
        *(&valuePtr.flags + 2) = v94;
        OUTLINED_FUNCTION_598();
        *&v400[2] = v6;
        *&v400[10] = v99;
        *&v400[12] = v98;
        *&v400[20] = v100;
        *&v400[22] = v101;
        OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_654();
        OUTLINED_FUNCTION_35();
        OUTLINED_FUNCTION_307();
        _os_log_send_and_compose_impl();
        v8 = v293;
        v16 = MEMORY[0x1E6960CC0];
      }

      OUTLINED_FUNCTION_279();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_454();
      v51 = &unk_1EAF16000;
    }

    OUTLINED_FUNCTION_74();
    fpfs_SetTime(v6, number);
  }

LABEL_79:
  fpfs_endEndedTracks(v1);
  if ((*(v1 + 332) & 1) != 0 && (*(v1 + 393) & 2) == 0)
  {
    OUTLINED_FUNCTION_74();
    v148 = OUTLINED_FUNCTION_747();
    fpfsi_setLastSeekTimeSet(v148, v149);
    if (v17)
    {
      goto LABEL_108;
    }
  }

  else if (v17)
  {
    goto LABEL_108;
  }

  OUTLINED_FUNCTION_685();
  if (v82)
  {
    goto LABEL_108;
  }

  memset(&v405, 0, sizeof(v405));
  fpfs_CurrentSubStreamBufferedDuration(*(v1 + 1088), &v405);
  memset(&v397, 0, sizeof(v397));
  v102 = OUTLINED_FUNCTION_537();
  v103 = CMTimeMakeWithSeconds(&v397, v102 * 10.0, 1);
  *&number[0].timescale = *&v405.timescale;
  number[0].epoch = v405.epoch;
  v111 = OUTLINED_FUNCTION_600(v103, v104, v105, v106, v107, v108, v109, v110, v203, v211, v219, v227, v236, v244, v252, cf, v268, v277, ValueAtIndex, v293, v301, v309, v317, v329, v337, v345, v353, v360, v367, v374, v380, v387, time2.value, *&time2.timescale, time2.epoch, v395, rhs.value, *&rhs.timescale, rhs.epoch, v397.value, *&v397.timescale, v397.epoch, v397.value, *&v397.timescale, v397.epoch, v399, *v400, *&v400[8], *&v400[16], *&v400[24], *&v401, *v402, *&v402[8], *&v402[16], *&v402[24], *&v403, v405.value);
  v113 = CMTimeCompare(v111, v112);
  if ((v113 & 0x80000000) != 0)
  {
    if ((*(v1 + 1412) & 1) == 0 || (number[0] = *v2, v124 = OUTLINED_FUNCTION_600(v113, v114, v115, v116, v117, v118, v119, v120, v205, v213, v221, v229, v238, v246, v254, cfa, v271, v279, v287, v295, v303, v311, v320, v331, v339, v347, v354, v361, v369[0], v369[1], v382, v389, time2.value, *&time2.timescale, time2.epoch, v395, rhs.value, *&rhs.timescale, rhs.epoch, v397.value, *&v397.timescale, v397.epoch, *(v1 + 1400), *(v1 + 1408), *(v1 + 1416), v399, *v400, *&v400[8], *&v400[16], *&v400[24], *&v401, *v402, *&v402[8], *&v402[16], *&v402[24], *&v403, number[0].value), CMTimeCompare(v124, v125) < 0))
    {
      v126 = v8;
      v127 = *(v311 + 32);
      memset(number, 0, 24);
      if (*(v1 + 1196))
      {
        valuePtr = *(v1 + 1184);
        rhs = *(v1 + 1160);
        CMTimeSubtract(number, &valuePtr, &rhs);
      }

      else
      {
        OUTLINED_FUNCTION_74();
      }

      valuePtr = v405;
      *v321 = *v16;
      *&rhs.value = *v16;
      v128 = v16[2];
      rhs.epoch = v128;
      v129 = CMTimeCompare(&valuePtr, &rhs);
      if (!v129)
      {
        OUTLINED_FUNCTION_692(v129, v130, v131, v132, v133, v134, v135, v136, v205, v213, v221, v229, v238, v246, v254, cfa, v271, v279, v287, v295, v303, v311, v321[0], v321[1], v339, v347, v354, v361, v137);
        rhs = number[0];
        v138 = fpfs_TimeIsAfter(v126, &valuePtr, &rhs);
        if (v138)
        {
          OUTLINED_FUNCTION_692(v138, v139, v140, v141, v142, v143, v144, v145, v206, v214, v222, v230, v239, v247, v255, cfb, v272, v280, v288, v296, v304, v312, v322, v332, v340, v348, v355, v362, v146);
          *&rhs.value = *v323;
          rhs.epoch = v128;
          if (CMTimeCompare(&valuePtr, &rhs) >= 1)
          {
            *&number[0].value = *v369;
            epoch = v382;
LABEL_98:
            number[0].epoch = epoch;
            goto LABEL_110;
          }

          memset(&valuePtr, 0, sizeof(valuePtr));
          CMTimeMake(&valuePtr, fabsf(*(v126 + 108)), 1);
          rhs = valuePtr;
          time2 = number[0];
          if (CMTimeCompare(&rhs, &time2) < 0)
          {
            *&number[0].value = *&valuePtr.value;
            epoch = valuePtr.epoch;
            goto LABEL_98;
          }
        }
      }

LABEL_110:
      valuePtr = number[0];
      rhs = v405;
      fpfs_RequestNextIFrameStepUnlocked(v6, &valuePtr, &rhs);
      for (i = *(v1 + 1024); i; i = *(i + 24))
      {
        if (*(i + 32) == v127)
        {
          break;
        }
      }

      goto LABEL_108;
    }
  }

  if (!*(v1 + 1541))
  {
    *(v1 + 1541) = 1;
    if (v51[636])
    {
      LODWORD(rhs.value) = 0;
      LOBYTE(time2.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, time2.value);
      OUTLINED_FUNCTION_28();
      if (v52)
      {
        v122 = *v1;
        if (v122)
        {
          v123 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v123 = "";
        }

        if (v6)
        {
          v150 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v150 = "";
        }

        OUTLINED_FUNCTION_528(v405.epoch, v205, v213, v221, v229, v238, v246, v254, cfa, v271, v279, v287, v295, v303, v311, v320, v331, v339, v347, v354, v361, v369[0], v369[1], v382, v389, time2.value, *&time2.timescale, time2.epoch, v395, rhs.value, *&rhs.timescale, rhs.epoch, v397.value, *&v397.timescale, v397.epoch, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v399, *v400, *&v400[8], *&v400[16], *&v400[24], *&v401, *v402, *&v402[8], *&v402[16], *&v402[24], *&v403, v405.value, *&v405.timescale, number[0].epoch);
        OUTLINED_FUNCTION_573();
        v153 = v151 / v152;
        v154 = OUTLINED_FUNCTION_528(v383, v207, v215, v223, v231, v240, v248, v256, cfd, v273, v281, v289, v297, v305, v313, v324, v333, v341, v349, v356, v363, v370, v376, v383, v390, time2.value, *&time2.timescale, time2.epoch, v395, rhs.value, *&rhs.timescale, rhs.epoch, v397.value, *&v397.timescale, v397.epoch, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v399, *v400, *&v400[8], *&v400[16], *&v400[24], *&v401, *v402, *&v402[8], *&v402[16], *&v402[24], *&v403, v370, v376, number[0].epoch);
        OUTLINED_FUNCTION_528(v314[31], v208, v216, v224, v232, v241, v249, v257, cfe, v274, v282, v290, v298, v306, v314, v325, v334, v342, v350, v357, v364, v371, v377, v384, v391, time2.value, *&time2.timescale, time2.epoch, v395, rhs.value, *&rhs.timescale, rhs.epoch, v397.value, *&v397.timescale, v397.epoch, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v399, *v400, *&v400[8], *&v400[16], *&v400[24], *&v401, *v402, *&v402[8], *&v402[16], *&v402[24], *&v403, v314[29], v314[30], number[0].epoch);
        LODWORD(valuePtr.value) = 136317186;
        *(&valuePtr.value + 4) = "fpfs_StepIFrame";
        OUTLINED_FUNCTION_750();
        *(&valuePtr.flags + 2) = v122;
        HIWORD(valuePtr.epoch) = 2082;
        v399 = v123;
        *v400 = v155;
        *&v400[2] = v6;
        *&v400[10] = 2082;
        *&v400[12] = v150;
        *&v400[20] = v155;
        *&v400[22] = v153;
        *&v400[30] = v155;
        v401 = v154;
        *v402 = v155;
        *&v402[2] = v156;
        *&v402[10] = v155;
        *&v402[12] = v157;
        OUTLINED_FUNCTION_654();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_506();
      }

      OUTLINED_FUNCTION_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

LABEL_108:
  OUTLINED_FUNCTION_181();
}

uint64_t fpfsi_RTCReportingReportTrialSwitchData(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  if (!a2 && *(result + 2656) > 0)
  {
    result = FigGetUpTimeNanoseconds();
    if (*(v4 + 2568))
    {
      VTable = CMBaseObjectGetVTable();
      v6 = *(VTable + 16);
      result = VTable + 16;
      if (*(v6 + 56))
      {
        OUTLINED_FUNCTION_362();
        v7 = OUTLINED_FUNCTION_283();
        result = v8(v7);
      }
    }
  }

  *(v4 + 2656) = 0;
  if (*(v4 + 2568))
  {
    v9 = CMBaseObjectGetVTable();
    v10 = *(v9 + 16);
    result = v9 + 16;
    if (*(v10 + 32))
    {
      v11 = OUTLINED_FUNCTION_283();
      result = v12(v11);
    }
  }

  if (a2)
  {
    if (*(v4 + 2568))
    {
      v13 = CMBaseObjectGetVTable();
      v14 = *(v13 + 16);
      result = v13 + 16;
      if (*(v14 + 32))
      {
        v15 = OUTLINED_FUNCTION_177();

        return v16(v15);
      }
    }
  }

  return result;
}

uint64_t fpfs_CreateAccessLogEntryWithUnlock(uint64_t a1, CFMutableDictionaryRef *a2)
{
  theDict = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 912))
  {
    return 4294954436;
  }

  OUTLINED_FUNCTION_413();
  if (fpfs_PlayingVideoOnly())
  {
    result = 0;
    *a2 = 0;
    return result;
  }

  FigGetAllocatorForMedia();
  v5 = OUTLINED_FUNCTION_179();
  FigBytePumpGetFigBaseObject(v5);
  v7 = v6;
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    return 4294954514;
  }

  valuePtr = 0;
  *v137 = 0.0;
  v8 = OUTLINED_FUNCTION_188();
  result = v9(v8);
  if (!result)
  {
    v10 = *MEMORY[0x1E695E480];
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (v2 + 1728));
    if (v11)
    {
      v19 = OUTLINED_FUNCTION_397(v11, v12, v13, v14, v15, v16, v17, v18, v126, valuePtr, *v137, theDict);
      CFDictionarySetValue(v19, @"c-variant-rank", v7);
      CFRelease(v7);
      v28 = *(v2 + 1936);
      if (v28 > 0.0)
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        v30 = CFDateCreate(AllocatorForMedia, v28);
        if (!v30)
        {
          goto LABEL_40;
        }

        v38 = OUTLINED_FUNCTION_397(v30, v31, v32, v33, v34, v35, v36, v37, v127, valuePtr, *v137, theDict);
        CFDictionarySetValue(v38, @"date", v7);
        CFRelease(v7);
      }

      if ((*(v2 + 2648) & 0x8000000000000000) != 0)
      {
        v39 = *(v2 + 1960);
        *v137 = v39;
        if (*(v2 + 1952) != 0.0)
        {
          CFAbsoluteTimeGetCurrent();
          OUTLINED_FUNCTION_573();
          *v137 = v39 + v40 * v41;
        }
      }

      else
      {
        *v137 = 0.0;
      }

      v42 = OUTLINED_FUNCTION_472(v20, v21, v22, v23, v24, v25, v26, v27, v127, valuePtr, v137[0]);
      if (v42)
      {
        v50 = OUTLINED_FUNCTION_397(v42, v43, v44, v45, v46, v47, v48, v49, v128, valuePtr, *v137, theDict);
        CFDictionarySetValue(v50, @"c-duration-watched", v7);
        CFRelease(v7);
        if ((*(v2 + 2648) & 0x8000000000000000) != 0)
        {
          *v137 = *(v2 + 1968);
          if (*(v2 + 1952) != 0.0)
          {
            *v137 = *v137 + CFAbsoluteTimeGetCurrent() - *(v2 + 1952);
          }
        }

        else
        {
          *v137 = 0.0;
        }

        v59 = OUTLINED_FUNCTION_472(v51, v52, v53, v54, v55, v56, v57, v58, v129, valuePtr, v137[0]);
        if (v59)
        {
          v67 = OUTLINED_FUNCTION_397(v59, v60, v61, v62, v63, v64, v65, v66, v130, valuePtr, *v137, theDict);
          CFDictionarySetValue(v67, @"c-wall-clock-duration-watched", v7);
          CFRelease(v7);
          v76 = OUTLINED_FUNCTION_472(v68, v69, v70, v71, v72, v73, v74, v75, v131, valuePtr, *(v2 + 1944));
          if (v76)
          {
            v84 = OUTLINED_FUNCTION_397(v76, v77, v78, v79, v80, v81, v82, v83, v132, valuePtr, *v137, theDict);
            CFDictionarySetValue(v84, @"c-start-time", v7);
            CFRelease(v7);
            if (!*(v2 + 2097))
            {
LABEL_28:
              valuePtr = 0;
              v103 = CFNumberCreate(v10, kCFNumberCFIndexType, &valuePtr);
              if (v103)
              {
                v111 = OUTLINED_FUNCTION_397(v103, v104, v105, v106, v107, v108, v109, v110, v133, valuePtr, *v137, theDict);
                CFDictionarySetValue(v111, @"c-frames-dropped", v7);
                CFRelease(v7);
                v112 = CFNumberCreate(v10, kCFNumberCFIndexType, (v2 + 2112));
                if (v112)
                {
                  v120 = OUTLINED_FUNCTION_397(v112, v113, v114, v115, v116, v117, v118, v119, v135, valuePtr, *v137, theDict);
                  CFDictionarySetValue(v120, @"c-stalls", v7);
                  CFRelease(v7);
                  if (!*(v2 + 2308))
                  {
LABEL_33:
                    v123 = *(v2 + 2384);
                    if (v123)
                    {
                      CFDictionarySetValue(theDict, @"c-service-identifier", v123);
                    }

                    v124 = *MEMORY[0x1E695E4D0];
                    if (*(v2 + 2312))
                    {
                      v125 = *MEMORY[0x1E695E4D0];
                    }

                    else
                    {
                      v125 = *MEMORY[0x1E695E4C0];
                    }

                    CFDictionarySetValue(theDict, @"c-switch-failure", v125);
                    *(v2 + 2312) = 0;
                    CFDictionarySetValue(theDict, @"c-provisional-entry", v124);
                    result = 0;
                    *a2 = theDict;
                    return result;
                  }

                  v121 = CFNumberCreate(v10, kCFNumberIntType, (v2 + 2308));
                  if (v121)
                  {
                    v122 = v121;
                    CFDictionarySetValue(theDict, @"c-reason", v121);
                    CFRelease(v122);
                    *(v2 + 2308) = 0;
                    goto LABEL_33;
                  }
                }
              }

              goto LABEL_40;
            }

            v93 = *(v2 + 2008);
            if (v93 <= 0.0)
            {
              v93 = *(v2 + 2000);
            }

            v94 = OUTLINED_FUNCTION_472(v85, v86, v87, v88, v89, v90, v91, v92, v133, valuePtr, SLOBYTE(v93));
            if (v94)
            {
              v102 = OUTLINED_FUNCTION_397(v94, v95, v96, v97, v98, v99, v100, v101, v134, valuePtr, *v137, theDict);
              CFDictionarySetValue(v102, @"c-startup-time", v7);
              CFRelease(v7);
              goto LABEL_28;
            }
          }
        }
      }
    }

LABEL_40:
    if (theDict)
    {
      CFRelease(theDict);
    }

    return 4294954434;
  }

  return result;
}

void fpfsi_RTCReportingUpdateInitialVariantRank()
{
  OUTLINED_FUNCTION_523();
  if (v1 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_235();
    OUTLINED_FUNCTION_333();
    v2();
  }

  if (*(v0 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_235();
    OUTLINED_FUNCTION_446();

    v3();
  }
}

uint64_t fpfs_ReportVariantSwitchStart(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v80 = __PAIR64__(a4, a5);
  HIDWORD(v78) = a3;
  v91 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v9 = CMBaseObjectGetDerivedStorage();
  v81 = 0xFFFFFFFF00000000;
  PeakBitRate = FigAlternateGetPeakBitRate(*(v5 + 1680));
  v11 = FigAlternateGetPeakBitRate(a2);
  DescriptionString = FigAlternateCreateDescriptionString(*(v5 + 1680));
  v79 = a2;
  v13 = FigAlternateCreateDescriptionString(a2);
  LODWORD(v9) = *(v9 + 50);
  AllocatorForMedia = FigGetAllocatorForMedia();
  v15 = *v5;
  if (v9)
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_437();
    if (v11 > PeakBitRate)
    {
      v20 = "up";
    }

    v76 = v13;
    v77 = DescriptionString;
    v74 = v19;
    v75 = v20;
    v73 = v18;
    v21 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"[%p]: <%p> %s: (%d): %s%s switch %s to [%@]\n from [%@]", v15, a1, v16, v17);
  }

  else
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_437();
    if (v11 > PeakBitRate)
    {
      v26 = "up";
    }

    v76 = DescriptionString;
    v77 = v13;
    v74 = v25;
    v75 = v26;
    v73 = v24;
    v21 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"[%p]: <%p> %s: (%d): %s%s switch %s from [%@] to [%@]", v15, a1, v22, v23);
  }

  v27 = v21;
  if (*(CMBaseObjectGetDerivedStorage() + 872) == 1 || *(v5 + 1712))
  {
    if (!dword_1EAF169F0)
    {
      goto LABEL_21;
    }

    v28 = OUTLINED_FUNCTION_561();
    OUTLINED_FUNCTION_844(v28, v29, v30, v31, v32, v33, v34, v35, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, a2, v80, v81, v82, v83, v84, v85);
    OUTLINED_FUNCTION_121();
    if (v51)
    {
      v37 = v36;
    }

    else
    {
      v37 = "";
    }

    if (!v37)
    {
      goto LABEL_20;
    }

LABEL_19:
    OUTLINED_FUNCTION_763();
    v87 = "fpfs_ReportVariantSwitchStart";
    v88 = 2114;
    v89 = v27;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_108();
    _os_log_send_and_compose_impl();
LABEL_20:
    OUTLINED_FUNCTION_1();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_21;
  }

  if (dword_1EAF169F0)
  {
    v57 = OUTLINED_FUNCTION_561();
    OUTLINED_FUNCTION_844(v57, v58, v59, v60, v61, v62, v63, v64, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, a2, v80, v81, v82, v83, v84, v85);
    OUTLINED_FUNCTION_121();
    if (v51)
    {
      v66 = v65;
    }

    else
    {
      v66 = "";
    }

    if (!v66)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:
  if (DescriptionString)
  {
    CFRelease(DescriptionString);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  v38 = CMBaseObjectGetDerivedStorage();
  if (v38)
  {
    v39 = v38;
    v40 = *(v38 + 96);
    if (v40)
    {
      v86[0] = 0;
      *v90 = 0uLL;
      FigAlternatePlaybackBitrateMonitorGetMaxResolutionAndBitrate(*(v39 + 2576), *(v39 + 2584), v40, v90, (v39 + 2900), v86);
      if (v90[0] == 0.0 || v90[1] == 0.0)
      {
LABEL_40:
        if (*(v39 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          OUTLINED_FUNCTION_625();
          OUTLINED_FUNCTION_240();
          v46();
        }

        goto LABEL_43;
      }

      *(v39 + 2576) = *v90;
      if (*(v39 + 2568))
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          OUTLINED_FUNCTION_625();
          OUTLINED_FUNCTION_240();
          v41();
        }

        if (*(v39 + 2568))
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            v42 = OUTLINED_FUNCTION_625();
            v43(v42);
          }

          if (*(v39 + 2568))
          {
            if (*(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              v44 = OUTLINED_FUNCTION_625();
              v45(v44);
            }

            goto LABEL_40;
          }
        }
      }
    }
  }

LABEL_43:
  v47 = *(v5 + 1680);
  if (v47)
  {
    FigAlternateGetHDCPLevel(v47);
  }

  if (*(v5 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_606();
    v48();
  }

  fpfs_DetermineRanksOfVariant(v5, v79, &v81 + 1, &v81);
  if (HIDWORD(v80))
  {
    *(v5 + 2656) = FigGetUpTimeNanoseconds();
  }

  else
  {
    v49 = v81;
    *(v5 + 1728) = HIDWORD(v81);
    *(v5 + 1732) = v49;
  }

  if (v80)
  {
    v67 = OUTLINED_FUNCTION_505();
    fpfsi_RTCReportingReportTrialSwitchData(v67, v68);
  }

  result = FigAlternateIsIFrameOnly(v79);
  if (!result)
  {
    v51 = (HIDWORD(v78) & 0xFFFFFFFE) == 2 || HIDWORD(v78) == 16;
    v52 = v51 || (HIDWORD(v78) & 0xFFFFFFF7) == 7;
    if (v52 && HIDWORD(v81) != -1)
    {
      if (!*(v5 + 2656))
      {
        *(v5 + 2656) = FigGetUpTimeNanoseconds();
      }

      if (!HIDWORD(v80))
      {
        ++*(v5 + 2816);
      }

      v54 = v81;
      *(v5 + 2828) = HIDWORD(v81);
      *(v5 + 2856) = v54;
      *(v5 + 2864) = FigAlternateGetVideoQualityIndex(v79);
      v55 = *(v5 + 2696);
      v56 = *(v5 + 2656);
      if (v55)
      {
        if (v56 - v55 <= 0x2540BE3FFLL && *(v5 + 2868) != HIDWORD(v78))
        {
          *(v5 + 2840) = 1;
        }
      }

      else
      {
        *(v5 + 2696) = v56;
      }

      *(v5 + 2868) = HIDWORD(v78);
      result = FigAlternateGetPeakBitRate(*(v5 + 1680));
      *(v5 + 2808) = result;
    }
  }

  return result;
}

void fpfsi_metricEventPublishVariantChangeOrVariantChangeStartEvent(uint64_t a1, const void *a2, const void *a3, char a4, int a5)
{
  v31 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v24 = 0;
  cf = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  fpfsi_copyPlayableTimeL3(a1, &v24);
  v7 = *(DerivedStorage + 1768);
  if (v7)
  {
    v8 = 0;
    if (a5)
    {
      v9 = a2;
    }

    else
    {
      v9 = a3;
    }

    do
    {
      if (CFArrayGetCount(v7) <= v8)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 1768), v8);
      CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
      if (!FigCFStringGetOSTypeValue())
      {
        OUTLINED_FUNCTION_429();
        FigSignalErrorAtGM();
      }

      v11 = 0;
      while (*&kCommonTypes[4 * v11])
      {
        if (++v11 == 5)
        {
          v12 = 5;
          goto LABEL_13;
        }
      }

      v12 = v11;
LABEL_13:
      if (v12 <= 3 && v12 != 2)
      {
        PersistentIDForMediaTypeInMediaSelectionArray = FigStreamAlternateGetPersistentIDForMediaTypeInMediaSelectionArray(*(DerivedStorage + 1768), 0);
        FigAlternateGetRenditionInfoForMediaType(v9, 0, PersistentIDForMediaTypeInMediaSelectionArray, PersistentIDForMediaTypeInMediaSelectionArray, PersistentIDForMediaTypeInMediaSelectionArray, 1, &v26 + 2 * v12, ((&v26 + v12) | 8), 0);
      }

      ++v8;
      v7 = *(DerivedStorage + 1768);
    }

    while (v7);
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v17 = v24;
  if (a5)
  {
    if (FigMetricItemVariantChangeEventCreate(AllocatorForMedia, a2, a3, v26, *(&v26 + 1), v27, *(&v27 + 1), v16, v29, *(&v29 + 1), v24, a4, &cf))
    {
      goto LABEL_25;
    }
  }

  else if (FigMetricItemVariantChangeStartEventCreate(AllocatorForMedia, a2, a3, v26, *(&v26 + 1), v27, *(&v27 + 1), v16, v29, *(&v29 + 1), v24, &cf))
  {
    goto LABEL_25;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 40))
  {
    v18 = OUTLINED_FUNCTION_265();
    v19(v18);
  }

LABEL_25:
  if (v17)
  {
    CFRelease(v17);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void fpfsi_RTCReportingUpdateCurrentAlternateInfo()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigAlternateGetVideoRangeString(*(DerivedStorage + 1680));
  fpfsi_RTCReportingUpdateVariantRank(DerivedStorage, *(DerivedStorage + 1728), *(DerivedStorage + 1732));
  v1 = *(DerivedStorage + 1680);
  if (!v1)
  {
    return;
  }

  FigAlternateIsAudioOnly(v1);
  Resolution = FigAlternateGetResolution(*(DerivedStorage + 1680));
  v4 = v3;
  FigAlternateGetMaxAudioChannelCount(*(DerivedStorage + 1680));
  fpfsi_GetCurrentAudioPersistentIDFromMediaOption();
  OUTLINED_FUNCTION_496();
  FigAlternateGetAudioChannelCounts(v5, v6, v7, v8);
  if (*(DerivedStorage + 2568))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      OUTLINED_FUNCTION_242();
      v9();
    }

    if (*(DerivedStorage + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      OUTLINED_FUNCTION_242();
      v10();
    }
  }

  if (v4 > 0.0 && Resolution > 0.0)
  {
    if (*(DerivedStorage + 2568))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_138();
        v11();
      }

      if (!*(DerivedStorage + 2568))
      {
        goto LABEL_23;
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_211();
        v12();
      }
    }

    if (*(DerivedStorage + 2568))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_138();
        v13();
      }

      if (*(DerivedStorage + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_211();
        v14();
      }
    }
  }

LABEL_23:
  PeakBitRate = FigAlternateGetPeakBitRate(*(DerivedStorage + 1680));
  valuePtr = FigAlternateGetAverageBitRate(*(DerivedStorage + 1680));
  CodecString = FigAlternateGetCodecString(*(DerivedStorage + 1680));
  VideoLayoutString = FigAlternateGetVideoLayoutString(*(DerivedStorage + 1680));
  FigAlternateGetVideoContentTypeString(*(DerivedStorage + 1680));
  FigAlternateGetVideoQualityIndex(*(DerivedStorage + 1680));
  if (*(DerivedStorage + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_242();
    v17();
  }

  v18 = *MEMORY[0x1E695E480];
  v19 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (*(DerivedStorage + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    OUTLINED_FUNCTION_211();
    v20();
  }

  v21 = CFNumberCreate(v18, kCFNumberIntType, &PeakBitRate);
  if (*(DerivedStorage + 2568))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      OUTLINED_FUNCTION_717();
      v22();
    }

    v23 = *(DerivedStorage + 2568);
    if (v23)
    {
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v24)
      {
        v24(v23, @"playerStats", 0x1F0B65738, CodecString, 0);
      }

      v25 = *(DerivedStorage + 2568);
      if (v25)
      {
        v26 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v26)
        {
          v26(v25, @"playerStats", 0x1F0B65118, VideoLayoutString, 0);
        }

        if (*(DerivedStorage + 2568))
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 48))
          {
            OUTLINED_FUNCTION_138();
            v27();
          }

          if (*(DerivedStorage + 2568))
          {
            if (*(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              OUTLINED_FUNCTION_242();
              v28();
            }

            if (*(DerivedStorage + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
            {
              OUTLINED_FUNCTION_266();
              OUTLINED_FUNCTION_606();
              v29();
            }
          }
        }
      }
    }
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v21)
  {
    CFRelease(v21);
  }
}

const __CFDictionary *fpfsi_GetCurrentAudioPersistentIDFromMediaOption()
{
  CMBaseObjectGetDerivedStorage();
  FigGetCFStringForOSTypeValue();
  v0 = OUTLINED_FUNCTION_270();
  result = fpfs_FindMediaTypeInMediaArray(v0, v1, v2);
  if (result)
  {

    return CFDictionaryGetValue(result, @"MediaSelectionOptionsPersistentID");
  }

  return result;
}

const __CFDictionary *fpfs_FindMediaTypeInMediaArray(const __CFArray *a1, uint64_t a2, void *a3)
{
  ValueAtIndex = 0;
  if (a1 && a2)
  {
    Count = CFArrayGetCount(a1);
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
        v8 = OUTLINED_FUNCTION_178();
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
        CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
        OUTLINED_FUNCTION_399();
        if (FigCFEqual())
        {
          break;
        }

        if (v6 == ++v7)
        {
          return 0;
        }
      }

      if (a3)
      {
        *a3 = v7;
      }
    }
  }

  return ValueAtIndex;
}

const __CFDictionary *fpfs_IsClosedCaptioningSelected()
{
  OUTLINED_FUNCTION_807();
  OUTLINED_FUNCTION_563();
  v1 = OUTLINED_FUNCTION_270();
  result = fpfs_FindMediaTypeInMediaArray(v1, v2, v3);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"MediaSelectionOptionsPersistentID");
    if (result)
    {
      if (!*(v0 + 1672))
      {
        return 0;
      }

      OUTLINED_FUNCTION_563();
      v5 = OUTLINED_FUNCTION_577();
      MediaTypeInMediaArray = fpfs_FindMediaTypeInMediaArray(v5, v6, 0);
      if (!MediaTypeInMediaArray)
      {
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM();
        return 0;
      }

      Value = CFDictionaryGetValue(MediaTypeInMediaArray, @"MediaSelectionGroupOptions");
      if (CFArrayGetCount(Value) < 1)
      {
        return 0;
      }

      v9 = 0;
      while (1)
      {
        v10 = OUTLINED_FUNCTION_178();
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v11);
        CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
        if (FigCFEqual())
        {
          v13 = OUTLINED_FUNCTION_489();
          CFDictionaryGetValue(v13, v14);
          FigGetCFStringForOSTypeValue();
          if (FigCFEqual())
          {
            break;
          }
        }

        ++v9;
        Count = CFArrayGetCount(Value);
        result = 0;
        if (v9 >= Count)
        {
          return result;
        }
      }

      return 1;
    }
  }

  return result;
}

void fpfsi_UpdateAccessLogStartupPerformanceMetrics()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 1920);
  if (v1 && CFArrayGetCount(v1) >= 1 && *(DerivedStorage + 2608))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 1920), 0);
    v3 = *(DerivedStorage + 2608);

    CFDictionarySetValue(ValueAtIndex, @"c-startup_perf", v3);
  }
}

void fpfsi_TotalTimeRangeInBuffer()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v3 = v2;
  v137 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E6960C98];
  v88 = *(MEMORY[0x1E6960C98] + 16);
  v91 = *MEMORY[0x1E6960C98];
  *v3 = *MEMORY[0x1E6960C98];
  *(v3 + 16) = v88;
  v85 = *(v5 + 32);
  *(v3 + 32) = v85;
  if (!fpfsi_HasRequiredSubstreamsToIndicateBuffering())
  {
    goto LABEL_50;
  }

  v6 = 0;
  WORD2(v129) = 0;
  LODWORD(v129) = 0;
  LODWORD(v128) = 0;
  WORD2(v128) = 0;
  do
  {
    v7 = &v136[v6];
    *v7 = v91;
    v7[1] = v88;
    v7[2] = v85;
    v8 = &v135[v6];
    *v8 = v91;
    v8[1] = v88;
    v6 += 48;
    v8[2] = v85;
  }

  while (v6 != 288);
  v9 = &v129;
  fpfsi_TotalTimeRangeInBufferForTrackList((DerivedStorage + 128), v136, &v129);
  v10 = &v128;
  fpfsi_TotalTimeRangeInBufferForTrackList((DerivedStorage + 130), v135, &v128);
  for (i = 0; i != 240; i += 48)
  {
    v12 = *v10;
    v10 = (v10 + 1);
    if (v12)
    {
      v13 = &v135[i];
      if ((v135[i + 12] & 1) != 0 && (v13[36] & 1) != 0 && !*&v135[i + 40] && (*(v13 + 3) & 0x8000000000000000) == 0)
      {
        if (*v9 && (v14 = &v136[i], (v136[i + 12] & 1) != 0) && (v14[36] & 1) != 0 && !*&v136[i + 40] && (*(v14 + 3) & 0x8000000000000000) == 0)
        {
          OUTLINED_FUNCTION_18();
          v17 = OUTLINED_FUNCTION_423();
          CMTimeRangeGetIntersection(v19, v17, v18);
          if ((v123 & 0x100000000) != 0)
          {
            OUTLINED_FUNCTION_18();
            v20 = OUTLINED_FUNCTION_423();
            CMTimeRangeGetIntersection(v22, v20, v21);
            if ((v120 & 0x100000000) != 0)
            {
              OUTLINED_FUNCTION_18();
              v23 = OUTLINED_FUNCTION_423();
              CMTimeRangeGetIntersection(v25, v23, v24);
              if (!v115)
              {
                OUTLINED_FUNCTION_18();
                v29 = OUTLINED_FUNCTION_423();
                CMTimeRangeGetIntersection(v31, v29, v30);
                if ((v107 & 0x8000000000000000) == 0)
                {
                  OUTLINED_FUNCTION_18();
                  v32 = OUTLINED_FUNCTION_423();
                  CMTimeRangeGetIntersection(v34, v32, v33);
                  *&v134.start.value = v102;
                  v134.start.epoch = v103;
                  *&range.start.value = *MEMORY[0x1E6960CC0];
                  range.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
                  v35 = OUTLINED_FUNCTION_423();
                  if (!CMTimeCompare(v35, v36))
                  {
                    memset(&range, 0, 24);
                    *&v134.start.value = *v13;
                    v134.start.epoch = *(v13 + 2);
                    *&otherRange.start.value = *v14;
                    otherRange.start.epoch = *(v14 + 2);
                    CMTimeMaximum(&range.start, &v134.start, &otherRange.start);
                    OUTLINED_FUNCTION_335();
                    v37 = *(v13 + 1);
                    *&v134.start.value = *v13;
                    *&v134.start.epoch = v37;
                    *&v134.duration.timescale = *(v13 + 2);
                    CMTimeRangeGetEnd(&time2, &v134);
                    v38 = *(v14 + 1);
                    *&v134.start.value = *v14;
                    *&v134.start.epoch = v38;
                    *&v134.duration.timescale = *(v14 + 2);
                    End = CMTimeRangeGetEnd(&rhs, &v134);
                    v47 = OUTLINED_FUNCTION_738(End, v40, v41, v42, v43, v44, v45, v46, v81, v83, v85, *(&v85 + 1), v88, *(&v88 + 1), v91, *(&v91 + 1), otherRange.start.value, *&otherRange.start.timescale, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v96, time2.value);
                    v50 = CMTimeMinimum(v49, v47, v48);
                    *&time2.value = OUTLINED_FUNCTION_605(v50, v51, v52, v53, v54, v55, v56, v57, v82, v84, v86, v87, v89, v90, v92, v93, *&otherRange.start.value, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v96, time2.value, *&time2.timescale, time2.epoch, v98, v99, v100, v101, v102, *(&v102 + 1), v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, *&range.start.value);
                    time2.epoch = range.start.epoch;
                    v58 = CMTimeCompare(&v134.start, &time2);
                    if (v58)
                    {
                      *&rhs.value = OUTLINED_FUNCTION_605(v58, v59, v60, v61, v62, v63, v64, v65, v81, v83, v85, *(&v85 + 1), v88, *(&v88 + 1), v91, *(&v91 + 1), *&otherRange.start.value, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v96, time2.value, *&time2.timescale, time2.epoch, v98, v99, v100, v101, v102, *(&v102 + 1), v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, *&range.start.value);
                      rhs.epoch = range.start.epoch;
                      CMTimeSubtract(&time2, &v134.start, &rhs);
                      CMTimeAbsoluteValue(&v134.start, &time2);
                      CMTimeMakeWithSeconds(&time2, 5.0, 1);
                      CMTimeCompare(&v134.start, &time2);
                    }
                  }
                }
              }
            }
          }

          v26 = *(v14 + 1);
          *&range.start.value = *v14;
          *&range.start.epoch = v26;
          *&range.duration.timescale = *(v14 + 2);
          v27 = *(v13 + 1);
          *&otherRange.start.value = *v13;
          *&otherRange.start.epoch = v27;
          *&otherRange.duration.timescale = *(v13 + 2);
          CMTimeRangeGetUnion(&v134, &range, &otherRange);
          v28 = *&v134.start.epoch;
          *v14 = *&v134.start.value;
          *(v14 + 1) = v28;
          *(v14 + 2) = *&v134.duration.timescale;
        }

        else
        {
          *v9 = 1;
          v15 = &v136[i];
          v16 = *(v13 + 1);
          *v15 = *v13;
          v15[1] = v16;
          v15[2] = *(v13 + 2);
        }
      }
    }

    v9 = (v9 + 1);
  }

  v66 = 0;
  v67 = v136;
  v68 = v91;
  while (!*(&v129 + v66))
  {
LABEL_37:
    ++v66;
    v67 += 48;
    if (v66 == 5)
    {
      goto LABEL_40;
    }
  }

  if ((v67[12] & 1) != 0 && (v67[36] & 1) != 0 && !*(v67 + 5) && (*(v67 + 3) & 0x8000000000000000) == 0)
  {
    if ((*(v3 + 12) & 1) == 0 || (*(v3 + 36) & 1) == 0 || *(v3 + 40) || (*(v3 + 24) & 0x8000000000000000) != 0)
    {
      v69 = *(v67 + 1);
      *v3 = *v67;
      *(v3 + 16) = v69;
      *(v3 + 32) = *(v67 + 2);
    }

    else
    {
      OUTLINED_FUNCTION_736();
      v70 = *(v67 + 1);
      *&range.start.value = *v67;
      *&range.start.epoch = v70;
      *&range.duration.timescale = *(v67 + 2);
      v71 = OUTLINED_FUNCTION_423();
      CMTimeRangeGetIntersection(v3, v71, v72);
      v68 = v91;
    }

    goto LABEL_37;
  }

  *v3 = v68;
  *(v3 + 16) = v88;
  *(v3 + 32) = v85;
LABEL_40:
  if (dword_1EAF169F0 >= 5)
  {
    LODWORD(otherRange.start.value) = 0;
    LOBYTE(time2.value) = 0;
    OUTLINED_FUNCTION_201();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, time2.value);
    OUTLINED_FUNCTION_46();
    if (&v129)
    {
      v74 = *DerivedStorage;
      if (v74)
      {
        v75 = (CMBaseObjectGetDerivedStorage() + 888);
        if (v1)
        {
          goto LABEL_44;
        }

LABEL_47:
        v76 = "";
      }

      else
      {
        v75 = "";
        if (!v1)
        {
          goto LABEL_47;
        }

LABEL_44:
        v76 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      *&v134.start.value = *v3;
      v134.start.epoch = *(v3 + 16);
      Seconds = CMTimeGetSeconds(&v134.start);
      OUTLINED_FUNCTION_736();
      CMTimeRangeGetEnd(&range.start, &v134);
      CMTimeGetSeconds(&range.start);
      LODWORD(range.start.value) = 136316674;
      OUTLINED_FUNCTION_393("fpfsi_TotalTimeRangeInBuffer");
      LOWORD(range.start.flags) = v78;
      *(v79 + 14) = v74;
      HIWORD(range.start.epoch) = 2082;
      range.duration.value = v75;
      LOWORD(range.duration.timescale) = v78;
      *(v79 + 34) = v1;
      WORD1(range.duration.epoch) = 2082;
      *(v79 + 44) = v76;
      v131 = v78;
      *(v79 + 54) = Seconds;
      v132 = v78;
      v133 = v80;
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_448();
    }

    OUTLINED_FUNCTION_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_50:
  OUTLINED_FUNCTION_191();
}

void fpfsi_getPumpAvailableTimeRange(uint64_t a1, _OWORD *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  dictionaryRepresentation = 0;
  v3 = MEMORY[0x1E6960C98];
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *a2 = *MEMORY[0x1E6960C98];
  a2[1] = v4;
  a2[2] = *(v3 + 32);
  if (*(a1 + 912))
  {
    OUTLINED_FUNCTION_187();
    FigGetAllocatorForMedia();
    v5 = OUTLINED_FUNCTION_179();
    FigBytePumpGetFigBaseObject(v5);
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v6 = OUTLINED_FUNCTION_188();
      if (!v7(v6))
      {
        CMTimeMakeFromDictionary(&v57, dictionaryRepresentation);
        v70 = DWORD2(v57);
        v69 = v57;
        OUTLINED_FUNCTION_734();
        v17 = OUTLINED_FUNCTION_548(v8, v9, v10, v11, v12, v13, v14, v15, v57, *(&v57 + 1), v58, *(&v58 + 1), v59, v60, v61, v62, *(v2 + 1176), v16);
        CMTimeSubtract(v19, v17, v18);
        v69 = v57;
        v20 = HIDWORD(v57);
        v70 = DWORD2(v57);
        v21 = v58;
        CFRelease(dictionaryRepresentation);
        FigGetAllocatorForMedia();
        v22 = OUTLINED_FUNCTION_413();
        FigBytePumpGetFigBaseObject(v22);
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v23 = OUTLINED_FUNCTION_308();
          if (!v24(v23))
          {
            CMTimeMakeFromDictionary(&v57, dictionaryRepresentation);
            v68 = DWORD2(v57);
            v67 = v57;
            OUTLINED_FUNCTION_734();
            v34 = OUTLINED_FUNCTION_548(v25, v26, v27, v28, v29, v30, v31, v32, v57, *(&v57 + 1), v58, *(&v58 + 1), v59, v60, v61, v62, *(v2 + 1176), v33);
            CMTimeSubtract(v36, v34, v35);
            v67 = v57;
            v37 = HIDWORD(v57);
            v68 = DWORD2(v57);
            v38 = v58;
            CFRelease(dictionaryRepresentation);
            if (v20 & 1) != 0 && (v37)
            {
              v63 = v70;
              v64 = v20;
              v65 = v21;
              v46 = OUTLINED_FUNCTION_548(0, v39, v40, v41, v42, v43, v44, v45, v57, *(&v57 + 1), v58, *(&v58 + 1), v59, v60, v67, __SPAIR64__(v37, v68), v38, v69);
              CMTimeRangeFromTimeToTime(v48, v46, v47);
              OUTLINED_FUNCTION_733(0, v49, v50, v51, v52, v53, v54, v55, v57, v58, v56);
            }
          }
        }
      }
    }
  }
}

void fpfsi_setNonForcedSubtitlesEnabled()
{
  v2 = OUTLINED_FUNCTION_849();
  v3 = *(v2 + 1872);
  if (v3 && *(v2 + 531) != v1)
  {
    v4 = *v2;
    *(v2 + 531) = v1;
    FigLegibleOutputManagerSetNonForcedEnabledForMediaType(v3, 1935832172, v1);
    NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v4, v0, v5, v6, v7, v8, v9, v10, @"DisplayNonForcedSubtitles", @"SelectedMediaArray");
    fpfs_EnqueueNotification(v4, @"DisplayNonForcedSubtitlesChanged", v0, NotificationPayloadForProperties);
    if (NotificationPayloadForProperties)
    {
      CFRelease(NotificationPayloadForProperties);
    }

    fpfs_updateClosedCaptionsDisplay();
  }
}

void fpfsi_CheckInterstitialVideoLayoutCompatibility()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  v2 = CMBaseObjectGetDerivedStorage();
  v3 = *(v0 + 1680);
  if (v3)
  {
    FigAlternateHasNonRectangularProjection(v3);
    if (v4)
    {
      if (*(v2 + 906) || (v7 = *(v0 + 3240)) != 0 && CFArrayGetCount(v7) >= 1)
      {
        v5 = OUTLINED_FUNCTION_177();

        fpfs_StopPlayingItemWithOSStatus(v5, v6, 4294951598);
      }
    }
  }
}

uint64_t fpfs_CreateNotificationPayloadForProperties(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, void *value, uint64_t a10)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  v21 = &a10;
  v14 = value;
  if (value)
  {
    do
    {
      CFArrayAppendValue(Mutable, v14);
      v15 = v21++;
      v14 = *v15;
    }

    while (*v15);
  }

  if (!a1 && a2)
  {
    a1 = *CMBaseObjectGetDerivedStorage();
  }

  if (!a1)
  {
    a2 = 0;
    if (!Mutable)
    {
      return a2;
    }

    goto LABEL_8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_258(DerivedStorage);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_547();
  v17 = OUTLINED_FUNCTION_171();
  FPSupport_CreateNotificationPayloadForProperties(v17, v18, Mutable);
  v19 = OUTLINED_FUNCTION_413();
  fpfs_UnlockAndPostNotificationsWithCaller(v19);
  if (Mutable)
  {
LABEL_8:
    CFRelease(Mutable);
  }

  return a2;
}

void fpfs_updateClosedCaptionsDisplay()
{
  OUTLINED_FUNCTION_700();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 209);
  if (FigRenderedLegibleOutputManagerIsSupported())
  {
    v2 = MEMORY[0x1E695E4D0];
    v3 = MEMORY[0x1E695E4C0];
    if (*(DerivedStorage + 80))
    {
      v4 = CMBaseObjectGetDerivedStorage();
      v5 = v4;
      if (!*(DerivedStorage + 209) || *(v4 + 531))
      {
        OUTLINED_FUNCTION_284();
        v1 = fpfs_IsClosedCaptioningSelected() != 0;
      }

      else
      {
        v1 = 1;
      }

      v6 = *(v5 + 816);
      if (v6 && *(v6 + 32))
      {
        fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
      }

      FigLegibleOutputManagerSetNonForcedEnabledForMediaType(*(v5 + 1872), 1668047728, v1);
    }

    if (v1 != *(DerivedStorage + 210))
    {
      *(DerivedStorage + 210) = v1;
      v7 = (v1 ? v2 : v3);
      v8 = *v7;
      FigPropertyStorageSetValue(*(DerivedStorage + 16), @"DisplayingClosedCaptions", *v7);
      FPSupport_updateClosedCaptionLayer(DerivedStorage + 208, *(DerivedStorage + 200));
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"CurrentDisplayingClosedCaptions", v8);
      v11 = OUTLINED_FUNCTION_805();
      fpfs_EnqueueNotification(v11, v12, v13, Mutable);
      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }
  }
}

uint64_t fpfsi_UpdateResourceSpecifierOnResourceArbiter(uint64_t a1)
{
  v41 = 0;
  v39 = 0;
  cf = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  GlobalSingleton = FigPlayerResourceArbiterGetGlobalSingleton(&v36);
  if (GlobalSingleton)
  {
    goto LABEL_30;
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_180(DerivedStorage);
    v5 = CMBaseObjectGetDerivedStorage();
    if (*(v5 + 80) == a1)
    {
      v6 = v5;
      GlobalSingleton = FigPlayerResourceArbiterPlayerSpecifierCreate(&v37);
      if (GlobalSingleton)
      {
        goto LABEL_30;
      }

      v7 = OUTLINED_FUNCTION_627();
      if (fpfs_CanRenderVideo(v7, v8))
      {
        fpfsi_GetResolutionCapForFilter();
        if (!v41)
        {
          v9 = v9 * 1.35;
          v10 = v10 * 1.35;
        }
      }

      else
      {
        v9 = *MEMORY[0x1E695F060];
        v10 = *(MEMORY[0x1E695F060] + 8);
      }

      GlobalSingleton = FigPlayerResourceArbiterPlayerSpecifierSetDisplaySize(v37, v9, v10);
      if (GlobalSingleton)
      {
        goto LABEL_30;
      }

      if (*(v1 + 40))
      {
        FigGetAllocatorForMedia();
        v11 = OUTLINED_FUNCTION_178();
        FigAlternateSelectionBossCopyProperty(v11, v12, v13, v14);
      }

      VideoLayoutTags = FigAlternateGetVideoLayoutTags(*(v1 + 1680));
      FigStreamAlternateGetPixelsPerSecondLimits(cf, VideoLayoutTags, &v39, &v38);
      if (v39)
      {
        v16 = v37;
        Resolution = FigAlternateGetResolution(v39);
        GlobalSingleton = FigPlayerResourceArbiterPlayerSpecifierSetResolutionCeiling(v16, Resolution, v18);
        if (GlobalSingleton)
        {
          goto LABEL_30;
        }

        v19 = v37;
        FrameRate = FigAlternateGetFrameRate(v39);
        GlobalSingleton = FigPlayerResourceArbiterPlayerSpecifierSetFrameRateCeiling(v19, FrameRate);
        if (GlobalSingleton)
        {
          goto LABEL_30;
        }
      }

      if (v38)
      {
        v21 = v37;
        v22 = FigAlternateGetResolution(v38);
        GlobalSingleton = FigPlayerResourceArbiterPlayerSpecifierSetResolutionFloor(v21, v22, v23);
        if (GlobalSingleton)
        {
          goto LABEL_30;
        }

        v24 = v37;
        v25 = FigAlternateGetFrameRate(v38);
        GlobalSingleton = FigPlayerResourceArbiterPlayerSpecifierSetFrameRateFloor(v24, v25);
        if (GlobalSingleton)
        {
          goto LABEL_30;
        }
      }

      if (FigAlternateHasMVStereoVideo(v39))
      {
        GlobalSingleton = FigPlayerResourceArbiterPlayerSpecifierSetIsMVStereo(v37, 1);
        if (GlobalSingleton)
        {
          goto LABEL_30;
        }
      }

      FigPlayerResourceArbiterPlayerSpecifierSetNetworkPriority(v37, *(v6 + 936));
      if (*(v6 + 521))
      {
        v26 = 1;
      }

      else
      {
        v26 = *(v6 + 522) != 0;
      }

      FigPlayerResourceArbiterPlayerSpecifierSetIsMuted(v37, v26);
      if (*(v1 + 1680))
      {
        v27 = v37;
        IsFullyCached = FigAlternateGetLastKnownValueForIsFullyCached();
        FigPlayerResourceArbiterPlayerSpecifierSetIsFullyOffline(v27, IsFullyCached);
      }

      v29 = *(v6 + 872);
      if (v29 == 2)
      {
        v30 = &kFigPlayerRole_PIP;
      }

      else
      {
        if (v29 != 1)
        {
          v31 = 0;
          goto LABEL_29;
        }

        v30 = &kFigPlayerRole_Scanning;
      }

      v31 = *v30;
LABEL_29:
      FigPlayerResourceArbiterPlayerSpecifierSetPlayerRole(v37, v31);
      OUTLINED_FUNCTION_757();
      FigPlayerResourceArbiterPlayerSpecifierSetIsBuffering(v32, v33);
      FigPlayerResourceArbiterPlayerSpecifierSetDesiredRate(v37, *(v6 + 108));
      FigPlayerResourceArbiterPlayerSpecifierSetIsFullyActive(v37, *(v6 + 32) == 2);
      GlobalSingleton = FigPlayerResourceArbiterSetSpecifierForConsumer(v36, v37, *(v6 + 928));
LABEL_30:
      v34 = GlobalSingleton;
      goto LABEL_31;
    }
  }

  v34 = 0;
LABEL_31:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  return v34;
}

void fpfsi_GetResolutionCapForFilter()
{
  OUTLINED_FUNCTION_460();
  OUTLINED_FUNCTION_433();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E695F060];
  v7 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  v8 = (v0 + 768);
  v9 = (v0 + 776);
  if (*(v4 + 462))
  {
    v9 = (v4 + 472);
    v8 = (v4 + 464);
  }

  v10 = *v8;
  v11 = *v9;
  v12 = *(v0 + 2520) != v6 || *(v0 + 2512) != v7;
  if (v12)
  {
    v13 = *(v0 + 2520);
  }

  else
  {
    v13 = *(MEMORY[0x1E695F060] + 8);
  }

  if (v12)
  {
    v14 = *(v0 + 2512);
  }

  else
  {
    v14 = *MEMORY[0x1E695F060];
  }

  if (v14 == v7 && v13 == v6)
  {
    v16 = v4;
    v17 = *v0;
    v18 = *(MEMORY[0x1E695F060] + 8);
    v19 = *MEMORY[0x1E695F060];
    if (!CelestialIsAppleTV())
    {
      v18 = v6;
      v19 = v7;
      if (!fpfs_isExternalVideoOutput())
      {
        *v68 = *v5;
        CelestialGetModelSpecificResolutionCap();
        v18 = v68[1];
        v19 = v68[0];
        v5 = *(v0 + 2568);
        if (v5)
        {
          v17 = @"playerStats";
          if (*(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            v31 = OUTLINED_FUNCTION_480();
            v32(v31);
          }

          v5 = *(v0 + 2568);
          if (v5 && *(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            v33 = OUTLINED_FUNCTION_480();
            v34(v33);
          }
        }
      }
    }

    if (v10 == v7 && v11 == v6)
    {
      goto LABEL_48;
    }

    v21 = v19 != v7;
    if (v18 != v6)
    {
      v21 = 1;
    }

    if (v10 <= v19)
    {
      v21 = 0;
    }

    v22 = v11 > v18;
    v13 = v21 && v22 ? v18 : v11;
    v14 = v21 && v22 ? v19 : v10;
    if (!dword_1EAF169F0)
    {
LABEL_48:
      if (v14 != v7 || v13 != v6)
      {
        goto LABEL_84;
      }

      v36 = *(v16 + 440) == v7 && *(v16 + 448) == v6;
      if (v36 && !FigStreamingPlayerCombinedVideoDestinationGetFVTCount(*(v16 + 376)))
      {
        goto LABEL_84;
      }

      v37 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_248(v37);
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_773();
      CMBaseObjectGetDerivedStorage();
      v38 = OUTLINED_FUNCTION_727();
      if (v40)
      {
        v38 = OUTLINED_FUNCTION_727();
        if (v41)
        {
          v38 = OUTLINED_FUNCTION_727();
          if (v42)
          {
            v38 = v6;
            v39 = v7;
            if (*(&v17[100].isa + 1) != 0.0)
            {
              FigStreamingPlayerCombinedVideoDestinationMaxDesiredPixelCountFromFVTs(*(v5 + 376));
              v38 = OUTLINED_FUNCTION_727();
              if (v43)
              {
                v44 = *(&v17[100].isa + 1);
                v39 = sqrtf(v44 * v43);
                v38 = sqrtf(v43 / v44);
              }
            }
          }
        }
      }

      if (v38 * v39 <= *(v16 + 440) * *(v16 + 448))
      {
        if (!dword_1EAF169F0)
        {
          goto LABEL_84;
        }

        v45 = OUTLINED_FUNCTION_462();
        OUTLINED_FUNCTION_829(v45, v46, v47, v48, v49, v50, v51, v52, v63, v64, v65, v66, *v67, *&v67[4], v67[6], OS_LOG_TYPE_DEFAULT, 0);
        OUTLINED_FUNCTION_37();
        if (!&unk_1EAF16000)
        {
          goto LABEL_80;
        }

        if (*v0)
        {
          CMBaseObjectGetDerivedStorage();
          if (!v2)
          {
LABEL_79:
            OUTLINED_FUNCTION_725();
            OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_27();
            OUTLINED_FUNCTION_200();
            _os_log_send_and_compose_impl();
LABEL_80:
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_449();
            goto LABEL_84;
          }
        }

        else if (!v2)
        {
          goto LABEL_79;
        }

        CMBaseObjectGetDerivedStorage();
        goto LABEL_79;
      }

      if (!dword_1EAF169F0)
      {
        goto LABEL_84;
      }

      v53 = OUTLINED_FUNCTION_462();
      os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_28();
      if (!v5)
      {
LABEL_83:
        OUTLINED_FUNCTION_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_84;
      }

      if (*v0)
      {
        CMBaseObjectGetDerivedStorage();
        if (!v2)
        {
LABEL_82:
          OUTLINED_FUNCTION_47();
          OUTLINED_FUNCTION_227();
          OUTLINED_FUNCTION_97();
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl();
          goto LABEL_83;
        }
      }

      else if (!v2)
      {
        goto LABEL_82;
      }

      CMBaseObjectGetDerivedStorage();
      goto LABEL_82;
    }

    v23 = OUTLINED_FUNCTION_462();
    OUTLINED_FUNCTION_829(v23, v24, v25, v26, v27, v28, v29, v30, v63, v64, v65, v66, *v67, *&v67[4], v67[6], OS_LOG_TYPE_DEFAULT, 0);
    OUTLINED_FUNCTION_37();
    if (!&unk_1EAF16000)
    {
LABEL_47:
      OUTLINED_FUNCTION_201();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_449();
      goto LABEL_48;
    }

    v66 = v1;
    if (*v0)
    {
      CMBaseObjectGetDerivedStorage();
      if (!v2)
      {
LABEL_46:
        OUTLINED_FUNCTION_47();
        OUTLINED_FUNCTION_227();
        OUTLINED_FUNCTION_97();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_200();
        _os_log_send_and_compose_impl();
        goto LABEL_47;
      }
    }

    else if (!v2)
    {
      goto LABEL_46;
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_46;
  }

LABEL_84:
  if (v1)
  {
    *v1 = v12;
  }

  if (*(v0 + 2568))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v54 = OUTLINED_FUNCTION_113();
      v55(v54);
    }

    if (*(v0 + 2568))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        v56 = OUTLINED_FUNCTION_113();
        v57(v56);
      }

      if (*(v0 + 2568))
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v58 = OUTLINED_FUNCTION_113();
          v59(v58);
        }

        if (*(v0 + 2568))
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            v60 = OUTLINED_FUNCTION_113();
            v61(v60);
          }

          if (*(v0 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            OUTLINED_FUNCTION_266();
            OUTLINED_FUNCTION_606();
            v62();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_459();
}

void fpfs_AreTracksReadyToPlay()
{
  OUTLINED_FUNCTION_647();
  v80 = v3;
  v81 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v79 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v12 = CMBaseObjectGetDerivedStorage();
  if (v6)
  {
    *v6 = 0;
  }

  v13 = v0[128];
  v14 = 1;
  v15 = 0;
  if (v13)
  {
    v65 = *MEMORY[0x1E69AF7F0];
    OUTLINED_FUNCTION_370();
    *&v24 = 136316930;
    v67 = v24;
    while (1)
    {
      v25 = *(v13 + 80);
      if (v25 <= v8 && *(v13 + 400))
      {
        isDecryptorReady = fpfs_isDecryptorReady(v13);
        if (!isDecryptorReady)
        {
          goto LABEL_98;
        }

        v25 = *(v13 + 80);
      }

      if (v25 < v8)
      {
        if ((*(v13 + 168) | 2) == 3)
        {
          goto LABEL_98;
        }

        goto LABEL_59;
      }

      if (v25 != v8)
      {
        v28 = 1 << *(v13 + 196);
        if ((v28 & v15) == 0)
        {
          if (dword_1EAF169F0 >= 3)
          {
            v66 = v12;
            v69 = v10;
            LODWORD(time1.value) = 0;
            HIBYTE(v71) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = 0;
            v2 = 0;
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_134();
            if (v31)
            {
              v32 = v30;
            }

            else
            {
              v32 = 0;
            }

            if (v32)
            {
              v64 = v6;
              v33 = *v0;
              if (*v0)
              {
                v34 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v34 = "";
              }

              if (v69)
              {
                v39 = v0;
                v40 = v34;
                CMBaseObjectGetDerivedStorage();
                v34 = v40;
                v0 = v39;
              }

              LODWORD(time2.value) = v67;
              *(&time2.value + 4) = "fpfs_AreTracksReadyToPlay";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v33;
              HIWORD(time2.epoch) = 2082;
              v73 = v34;
              LOWORD(v74) = 2048;
              *(&v74 + 2) = v69;
              WORD5(v74) = 2082;
              OUTLINED_FUNCTION_359();
              *(&v75 + 6) = v41;
              WORD5(v75) = v42;
              HIDWORD(v75) = v43;
              LOWORD(v76) = v42;
              *(&v76 + 2) = v8;
              OUTLINED_FUNCTION_66();
              OUTLINED_FUNCTION_35();
              OUTLINED_FUNCTION_772();
              _os_log_send_and_compose_impl();
              value = time1.value;
            }

            OUTLINED_FUNCTION_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v10 = v69;
            v12 = v66;
            OUTLINED_FUNCTION_370();
          }

          v15 |= v28;
        }

        goto LABEL_59;
      }

      if ((*(v13 + 156) & 1) != 0 || *(v13 + 198) || *(v13 + 196) == 2)
      {
        v15 |= 1 << *(v13 + 196);
      }

      if (!*(v13 + 200))
      {
        break;
      }

LABEL_59:
      v13 = *(v13 + 24);
      if (!v13)
      {
        v45 = 0;
        v14 = 1;
        goto LABEL_69;
      }
    }

    v26 = *(v13 + 48);
    if (v26 == value)
    {
      if (!*(v13 + 56))
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v26 != v2 || !*(v13 + 56))
      {
        goto LABEL_39;
      }

      v17 = *(v12 + 80);
      if (v17 != v10)
      {
        if (v17)
        {
          if (fpfs_getNext(v12, v17) != v10)
          {
            goto LABEL_98;
          }

          isDecryptorReady = fpfsi_PumpHasEndedOrBufferedBeyondEndTime();
          if (!isDecryptorReady)
          {
            goto LABEL_98;
          }
        }
      }

      if (*(v12 + 672) >= 4)
      {
        v27 = v0[104];
        if (!v27 || (isDecryptorReady = fpfs_FormatsAreCompatible(v10, *(v27 + 16), *(v13 + 56)), !isDecryptorReady))
        {
          fpfsi_ClearCachedVideoRenderChains(v10);
LABEL_96:
          if (v6)
          {
            *v6 = 1;
          }

          goto LABEL_98;
        }
      }
    }

    if (*(v0 + 2904))
    {
      goto LABEL_96;
    }

LABEL_39:
    if (*(v12 + 80) != v10 && *(v13 + 48) == value)
    {
      v2 = v6;
      LODWORD(v78[0].value) = 0;
      CMBaseObjectGetDerivedStorage();
      value = FigCFEqual();
      OUTLINED_FUNCTION_785();
      if (fpfs_WantAudioHardwarePassthroughForTrack(v13, v78) != v6)
      {
        goto LABEL_98;
      }

      v44 = value ? 1633889587 : 0;
      if (value && v44 != LODWORD(v78[0].value))
      {
        goto LABEL_98;
      }

      OUTLINED_FUNCTION_370();
    }

    if (!*(v13 + 198))
    {
      if (!*(v13 + 56) || (v35 = *(v13 + 168)) == 0)
      {
LABEL_94:
        v14 = 0;
        v45 = 1;
        goto LABEL_69;
      }

      v36 = *(v13 + 48);
      if (v36 == v2)
      {
        if (v35 != 3)
        {
          isDecryptorReady = fpfs_CanRenderVideo(v12, *(v13 + 16));
          if (isDecryptorReady)
          {
            goto LABEL_94;
          }
        }
      }

      else if (!v36)
      {
        goto LABEL_94;
      }

      if ((*(v13 + 244) & 1) == 0)
      {
        goto LABEL_94;
      }

      v78[0] = *(v13 + 232);
      v37 = OUTLINED_FUNCTION_581(isDecryptorReady, v17, v18, v19, v20, v21, v22, v23, v61, v62, v63, v64, v65, v66, v67, *(&v67 + 1), v68, v69, time1.value, *&time1.timescale, time1.epoch, v71, *(v13 + 208), *(v13 + 216), *(v13 + 224), v73, v74, *(&v74 + 1), v75, *(&v75 + 1), v76, v77, v78[0].value);
      isDecryptorReady = CMTimeCompare(v37, v38);
      if (isDecryptorReady < 1)
      {
        goto LABEL_94;
      }
    }

    goto LABEL_59;
  }

  v45 = 0;
LABEL_69:
  if (v0[135] < 2)
  {
    goto LABEL_77;
  }

  v46 = *(v0 + 268);
  if (((v46 ^ v15) & 7) == 0)
  {
    goto LABEL_77;
  }

  for (i = 0; i != 3; ++i)
  {
    if (*(v0 + i + 472))
    {
      v48 = 1 << i;
    }

    else
    {
      LOBYTE(v48) = 0;
    }

    LOBYTE(v15) = v48 | v15;
  }

  if (((v15 ^ v46) & 7) == 0)
  {
LABEL_77:
    if ((v14 & 1) == 0)
    {
      v49 = v0[128];
      if (v49)
      {
        while (1)
        {
          if (!*(v49 + 200) && *(v49 + 80) == v8)
          {
            memset(v78, 0, 24);
            time2 = *(v49 + 208);
            fpfs_GetTrackStartupQueueDuration(v49, &time2, v78);
            CMTimeMake(&time2, 10, 1);
            time1 = v78[0];
            if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
            {
              break;
            }
          }

          v49 = *(v49 + 24);
          if (!v49)
          {
            goto LABEL_83;
          }
        }
      }

      else
      {
LABEL_83:
        if (v45 && !*(v0 + 471))
        {
          goto LABEL_98;
        }
      }
    }

    if (*(v0 + 1484))
    {
      for (j = v0[128]; j; j = *(j + 24))
      {
        if (!*(j + 200) && *(j + 80) == v8 && !*(j + 198) && (*(j + 244) & 1) != 0)
        {
          v78[0] = *(j + 232);
          OUTLINED_FUNCTION_90();
          v59 = OUTLINED_FUNCTION_581(v51, v52, v53, v54, v55, v56, v57, v58, v61, v62, v63, v64, v65, v66, v67, *(&v67 + 1), v68, v69, time1.value, *&time1.timescale, time1.epoch, v71, time2.value, *&time2.timescale, time2.epoch, v73, v74, *(&v74 + 1), v75, *(&v75 + 1), v76, v77, v78[0].value);
          CMTimeCompare(v59, v60);
        }
      }
    }
  }

LABEL_98:
  OUTLINED_FUNCTION_646();
}

uint64_t fpfsi_PumpHasEndedOrBufferedBeyondEndTime()
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    if (*(result + 471) || fpfsi_PlaybackHasBufferedBeyondForwardEndTime())
    {
      return 1;
    }

    else
    {
      fpfsi_PlaybackHasBufferedBeyondReverseEndTime();
      return v1 != 0;
    }
  }

  return result;
}

void fpfsi_PlaybackHasBufferedBeyondReverseEndTime()
{
  CMBaseObjectGetDerivedStorage();
  v31 = OUTLINED_FUNCTION_391(MEMORY[0x1E6960C70]);
  v32 = v1;
  if (v0)
  {
    v2 = v0;
    OUTLINED_FUNCTION_29();
    if (v3)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        OUTLINED_FUNCTION_260(DerivedStorage);
        if (v5)
        {
          v36 = 0uLL;
          v37 = 0;
          OUTLINED_FUNCTION_167(v2 + 1376);
          FPSTimelineConverterL3TimeToL2(&time2, &v31);
          v6 = OUTLINED_FUNCTION_234();
          fpfs_GetNextTimeToPlay(v6, v7, v8);
          v9 = OUTLINED_FUNCTION_270();
          fpfs_GetItemBufferedDuration(v9);
          OUTLINED_FUNCTION_712();
          v18 = OUTLINED_FUNCTION_137(v10, v11, v12, v13, v14, v15, v16, v17, v36, *(&v36 + 1), v37, v25, v27);
          CMTimeSubtract(v20, v18, v19);
          OUTLINED_FUNCTION_269();
          if (CMTimeCompare(v21, &time2) < 0)
          {
            *&time2.timescale = v34;
            time2.epoch = v35;
            OUTLINED_FUNCTION_268(v32, v22, v23, v24, v26, v31.n128_i64[0], v31.n128_i64[1], v28, v29, v33);
          }
        }
      }
    }
  }
}

uint64_t fpfsi_PlaybackHasBufferedBeyondTime()
{
  OUTLINED_FUNCTION_807();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_391(MEMORY[0x1E6960C70]);
  if ((*(v0 + 12) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_173(v1);
  result = CMBaseObjectGetDerivedStorage();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = OUTLINED_FUNCTION_587();
  fpfs_GetItemBufferedDuration(v4);
  v5 = OUTLINED_FUNCTION_410();
  fpfs_GetNextTimeToPlay(v5, v6, v7);
  v16 = OUTLINED_FUNCTION_175(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23, v24, v19, time2.value);
  CMTimeAdd(v18, v16, v17);
  OUTLINED_FUNCTION_332();
  return (CMTimeCompare(&time1, &time2) & 0x80000000) == 0 && *(v3 + 108) >= 0.0;
}

void fpfs_FinishAudioSyncAndStart()
{
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_565();
  v303 = *MEMORY[0x1E69E9840];
  v5 = *(v4 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_592(DerivedStorage);
  v264 = CMBaseObjectGetDerivedStorage();
  timescale = 0;
  v301 = 0;
  memset(&v293, 0, sizeof(v293));
  queueOut = 0;
  memset(&v291, 0, sizeof(v291));
  memset(&v289, 0, sizeof(v289));
  IsEmpty = CMBufferQueueIsEmpty(*(v0 + 88));
  if (IsEmpty)
  {
    v15 = *&v1->value;
    v289 = *v1;
  }

  else
  {
    IsEmpty = CMBufferQueueGetMinPresentationTimeStamp(&v289, *(v0 + 88));
  }

  OUTLINED_FUNCTION_697(IsEmpty, v8, v9, v10, v11, v12, v13, v14, v198, v209, v220, v231, v244, v5, v264, v275, v285.value, *&v285.timescale, v285.epoch, v286, rhs.value, *&rhs.timescale, rhs.epoch, v288, v15, v289.value);
  v24 = OUTLINED_FUNCTION_345(v16, v17, v18, v19, v20, v21, v22, v23, v199, v210, v221, v232, v245, v254, v265, v276, v285.value, *&v285.timescale, v285.epoch, v286, rhs.value, *&rhs.timescale, rhs.epoch, v288, v289.value, *&v289.timescale, v289.epoch, v290, v291.value, *&v291.timescale, v291.epoch, v292, v293.value, *&v293.timescale, v293.epoch, queueOut, *(v0 + 208), *(v0 + 216), *(v0 + 224), v296, v297[0], v297[1], v297[2], v297[3], *&v298, v299[0], v299[1], v299[2], time.value);
  v26 = CMTimeCompare(v24, v25);
  if (v26 >= 1)
  {
    if (dword_1EAF169F0)
    {
      OUTLINED_FUNCTION_213();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_306(os_log_and_send_and_compose_flags_and_os_log_type, v35, v36, v37, v38, v39, v40, v41, v200, v211, v222, v233, v246, v255, v266, v277, v285.value, *&v285.timescale, v285.epoch, v286, rhs.value);
      OUTLINED_FUNCTION_37();
      if (v2)
      {
        if (*v3)
        {
          v42 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v42 = "";
        }

        v234 = v42;
        if (*(v0 + 16))
        {
          v43 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v43 = "";
        }

        OUTLINED_FUNCTION_346();
        v44.n128_f64[0] = CMTimeGetSeconds(&time);
        v45 = v44.n128_u64[0];
        OUTLINED_FUNCTION_697(v46, v47, v48, v49, v50, v51, v52, v53, v200, v211, v222, v234, v3, v255, v266, v277, v285.value, *&v285.timescale, v285.epoch, v286, rhs.value, *&rhs.timescale, rhs.epoch, v288, v44, v289.value);
        CMTimeGetSeconds(&time);
        LODWORD(lhs.value) = 136316674;
        OUTLINED_FUNCTION_280("fpfs_FinishAudioSyncAndStart", v201, v212, v223, v235);
        *(&v297[1] + 4) = v43;
        WORD2(v297[2]) = v54;
        *(&v297[2] + 6) = v45;
        HIWORD(v297[3]) = v54;
        v298 = *&v55;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_200();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_776();
        v3 = v246;
      }

      OUTLINED_FUNCTION_7();
      v26 = OUTLINED_FUNCTION_449();
    }

    for (i = v3[128]; i != v0; i = *(i + 24))
    {
      if (*(i + 48) == 1936684398)
      {
        time = *(i + 232);
        v57 = OUTLINED_FUNCTION_345(v26, v27, v28, v29, v30, v31, v32, v33, v200, v211, v222, v233, v246, v255, v266, v277, v285.value, *&v285.timescale, v285.epoch, v286, rhs.value, *&rhs.timescale, rhs.epoch, v288, v289.value, *&v289.timescale, v289.epoch, v290, v291.value, *&v291.timescale, v291.epoch, v292, v293.value, *&v293.timescale, v293.epoch, queueOut, *(v0 + 208), *(v0 + 216), *(v0 + 224), v296, v297[0], v297[1], v297[2], v297[3], *&v298, v299[0], v299[1], v299[2], time.value);
        v26 = CMTimeCompare(v57, v58);
        if (!v26)
        {
          *(i + 256) = v289;
        }
      }
    }

    fpfsi_ClearCachedAudioRenderChains(*(v0 + 16));
  }

  v65 = OUTLINED_FUNCTION_663();
  *(v0 + 224) = v66;
  *(v0 + 208) = v65;
  if (*(v0 + 64) != v3[2 * *(v0 + 196) + 123] || (LOBYTE(time.value) = 0, fpfs_CompleteTrialSwitch(*(v0 + 16), v0, &time, v59, v60, v61, v62, v63, v200, SBYTE2(v200), BYTE3(v200), SHIDWORD(v200), v211, v222, v233, v246, v255, v266, v277, v285.value, *&v285.timescale, v285.epoch, SHIDWORD(v285.epoch), v286, SHIDWORD(v286), rhs.value, SHIDWORD(rhs.value), *&rhs.timescale, rhs.epoch, v288, v289.value, *&v289.timescale, v289.epoch, v290, v291.value, *&v291.timescale, v291.epoch, v292, v293.value, *&v293.timescale, v293.epoch, queueOut, lhs.value, *&lhs.timescale, lhs.epoch, v296, v297[0], v297[1], v297[2], v297[3], *&v298, v299[0], v299[1], v299[2], time.value, *&time.timescale), v64 = &unk_1EAF16000, !LOBYTE(time.value)))
  {
    if (v64[636])
    {
      OUTLINED_FUNCTION_213();
      v67 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_306(v67, v68, v69, v70, v71, v72, v73, v74, v200, v211, v222, v233, v246, v255, v266, v277, v285.value, *&v285.timescale, v285.epoch, v286, rhs.value);
      OUTLINED_FUNCTION_37();
      if (v2)
      {
        v246 = v3;
        if (*v3)
        {
          v75 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v75 = "";
        }

        v236 = v75;
        if (*(v0 + 16))
        {
          v76 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v76 = "";
        }

        v77 = *(v0 + 32);
        OUTLINED_FUNCTION_346();
        CMTimeGetSeconds(&time);
        LODWORD(lhs.value) = 136316674;
        OUTLINED_FUNCTION_280("fpfs_FinishAudioSyncAndStart", v200, v211, v222, v236);
        *(&v297[1] + 4) = v76;
        WORD2(v297[2]) = v78;
        *(&v297[2] + 6) = v77;
        HIWORD(v297[3]) = v78;
        v298 = *&v79;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_200();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_776();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_449();
    }

    if (*(v0 + 168) != 1)
    {
      OUTLINED_FUNCTION_213();
      v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_306(v80, v81, v82, v83, v84, v85, v86, v87, v200, v211, v222, v233, v246, v255, v266, v277, v285.value, *&v285.timescale, v285.epoch, v286, rhs.value);
      OUTLINED_FUNCTION_37();
      if (v2)
      {
        v88 = *v3;
        v89 = v3;
        if (*v3)
        {
          v90 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v90 = "";
        }

        v91 = *(v0 + 16);
        if (v91)
        {
          v92 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v92 = "";
        }

        v93 = *(v0 + 168);
        LODWORD(lhs.value) = 136316418;
        *(&lhs.value + 4) = "fpfs_FinishAudioSyncAndStart";
        LOWORD(lhs.flags) = 2048;
        *(&lhs.flags + 2) = v88;
        HIWORD(lhs.epoch) = 2082;
        v296 = v90;
        LOWORD(v297[0]) = 2048;
        *(v297 + 2) = v91;
        WORD1(v297[1]) = 2082;
        *(&v297[1] + 4) = v92;
        WORD2(v297[2]) = 1024;
        *(&v297[2] + 6) = v93;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_200();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_776();
        v3 = v89;
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_449();
    }

    OUTLINED_FUNCTION_194();
    TrackOfType = fpfs_LastTrackOfType(v94, v95, v0);
    v104 = MEMORY[0x1E6960C70];
    if (!TrackOfType)
    {
      goto LABEL_94;
    }

    v105 = TrackOfType;
    time = *(TrackOfType + 208);
    v106 = OUTLINED_FUNCTION_345(TrackOfType, v97, v98, v99, v100, v101, v102, v103, v200, v211, v222, v233, v246, v255, v266, v277, v285.value, *&v285.timescale, v285.epoch, v286, rhs.value, *&rhs.timescale, rhs.epoch, v288, v289.value, *&v289.timescale, v289.epoch, v290, v291.value, *&v291.timescale, v291.epoch, v292, v293.value, *&v293.timescale, v293.epoch, queueOut, *(v0 + 208), *(v0 + 216), *(v0 + 224), v296, v297[0], v297[1], v297[2], v297[3], *&v298, v299[0], v299[1], v299[2], time.value);
    if (!CMTimeCompare(v106, v107) && !*(v267 + 504))
    {
      OUTLINED_FUNCTION_194();
      fpfs_LastTrackOfType(v196, v197, v105);
      fpfs_DeleteTrack(*(v0 + 16), v105);
LABEL_94:
      OUTLINED_FUNCTION_346();
      lhs = *v104;
      v195 = OUTLINED_FUNCTION_770();
      fpfs_StartTrackPlaying(v195);
      goto LABEL_95;
    }

    OUTLINED_FUNCTION_316();
    v293 = *(v105 + 232);
    canCrossfade = fpfs_canCrossfade(v108, v105, v0);
    v117 = canCrossfade;
    if (canCrossfade)
    {
      time = *v1;
      v118 = OUTLINED_FUNCTION_345(canCrossfade, v110, v111, v112, v113, v114, v115, v116, v202, v213, v224, v237, v247, v256, v267, v278, v285.value, *&v285.timescale, v285.epoch, v286, rhs.value, *&rhs.timescale, rhs.epoch, v288, v289.value, *&v289.timescale, v289.epoch, v290, v291.value, *&v291.timescale, v291.epoch, v292, v293.value, *&v293.timescale, v293.epoch, queueOut, *gFSPAudioCrossfadeDuration, *&gFSPAudioCrossfadeDuration[8], *&gFSPAudioCrossfadeDuration[16], v296, v297[0], v297[1], v297[2], v297[3], *&v298, v299[0], v299[1], v299[2], time.value);
      v121 = CMTimeAdd(v120, v118, v119);
      OUTLINED_FUNCTION_344(v121, v122, v123, v124, v125, v126, v127, v128, v203, v214, v225, v238, v248, v257, v268, v279, v285.value, *&v285.timescale, v285.epoch, v286, rhs.value, *&rhs.timescale, rhs.epoch, v288, v289.value, *&v289.timescale, v289.epoch, v290, v129, v291.value);
      *&rhs.value = kAudioRampingDownSilenceDuration;
      rhs.epoch = 0;
      canCrossfade = CMTimeAdd(&time, &lhs, &rhs);
      v291 = time;
    }

    time = *(v105 + 232);
    OUTLINED_FUNCTION_344(canCrossfade, v110, v111, v112, v113, v114, v115, v116, v202, v213, v224, v237, v247, v256, v267, v278, v285.value, *&v285.timescale, v285.epoch, v286, rhs.value, *&rhs.timescale, rhs.epoch, v288, v289.value, *&v289.timescale, v289.epoch, v290, *&time.value, v291.value);
    v138 = OUTLINED_FUNCTION_345(v130, v131, v132, v133, v134, v135, v136, v137, v204, v215, v226, v239, v249, v258, v269, v280, v285.value, *&v285.timescale, v285.epoch, v286, rhs.value, *&rhs.timescale, rhs.epoch, v288, v289.value, *&v289.timescale, v289.epoch, v290, v291.value, *&v291.timescale, v291.epoch, v292, v293.value, *&v293.timescale, v293.epoch, queueOut, lhs.value, *&lhs.timescale, lhs.epoch, v296, v297[0], v297[1], v297[2], v297[3], *&v298, v299[0], v299[1], v299[2], time.value);
    v140 = CMTimeCompare(v138, v139);
    if ((v140 & 0x80000000) != 0)
    {
      v291 = *(v105 + 232);
    }

    if (!*(v105 + 112) || (time = v291, v148 = OUTLINED_FUNCTION_345(v140, v141, v142, v143, v144, v145, v146, v147, v205, v216, v227, v240, v250, v259, v270, v281, v285.value, *&v285.timescale, v285.epoch, v286, rhs.value, *&rhs.timescale, rhs.epoch, v288, v289.value, *&v289.timescale, v289.epoch, v290, v291.value, *&v291.timescale, v291.epoch, v292, v293.value, *&v293.timescale, v293.epoch, queueOut, *(v105 + 232), *(v105 + 240), *(v105 + 248), v296, v297[0], v297[1], v297[2], v297[3], *&v298, v299[0], v299[1], v299[2], v291.value), (CMTimeCompare(v148, v149) & 0x80000000) == 0))
    {
LABEL_75:
      if (!v117)
      {
        v178 = *(v105 + 232);
        *(v0 + 224) = *(v105 + 248);
        *(v0 + 208) = v178;
      }

      if (*(v105 + 128))
      {
        OUTLINED_FUNCTION_759();
        fpfs_scheduleForwardEndTimeForTrack();
        if (dword_1EAF169F0)
        {
          LODWORD(v285.value) = 0;
          v182 = OUTLINED_FUNCTION_637();
          value = v285.value;
          os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_134();
          if (v185)
          {
            v186 = v184;
          }

          else
          {
            v186 = value;
          }

          if (v186)
          {
            v187 = *v3;
            if (*v3)
            {
              v188 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v188 = "";
            }

            v274 = v188;
            v189 = *(v105 + 16);
            if (v189)
            {
              v190 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v190 = "";
            }

            v263 = v190;
            v191 = *(v105 + 32);
            time = rhs;
            Seconds = CMTimeGetSeconds(&time);
            v193 = *(v105 + 128);
            fpfs_GetTime(v3, &time);
            v194 = CMTimeGetSeconds(&time);
            LODWORD(lhs.value) = 136317186;
            *(&lhs.value + 4) = "fpfs_FinishAudioSyncAndStart";
            LOWORD(lhs.flags) = 2048;
            *(&lhs.flags + 2) = v187;
            HIWORD(lhs.epoch) = 2082;
            v296 = v274;
            LOWORD(v297[0]) = 2048;
            *(v297 + 2) = v189;
            WORD1(v297[1]) = 2082;
            *(&v297[1] + 4) = v263;
            WORD2(v297[2]) = 2048;
            *(&v297[2] + 6) = v191;
            HIWORD(v297[3]) = 2048;
            v298 = Seconds;
            LOWORD(v299[0]) = 2048;
            *(v299 + 2) = v193;
            WORD1(v299[1]) = 2048;
            *(&v299[1] + 4) = v194;
            OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_31();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v104 = MEMORY[0x1E6960C70];
        }
      }

      else
      {
        OUTLINED_FUNCTION_133();
        fpfs_StopFeedingTrack(v179, v180, v181);
      }

      goto LABEL_94;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
    if (!CMBufferQueueCreate(AllocatorForMedia, 0, CallbacksForUnsortedSampleBuffers, &queueOut))
    {
      fpfs_StealBuffersAfterTransitionMarker(*(*(v105 + 112) + 40), 1, queueOut, 0, v152, v153, v154, v155, v206, v217, v228, v241, v251, v260, v271, v282, v285.value, *&v285.timescale, v285.epoch, v286);
      if (!v156)
      {
        if (CMBufferQueueIsEmpty(queueOut))
        {
          if (*(CMBaseObjectGetDerivedStorage() + 504))
          {
            time = v293;
            if (v117)
            {
              lhs = v293;
              OUTLINED_FUNCTION_678();
              CMTimeSubtract(&time, &lhs, &rhs);
              rhs = time;
              *&v285.value = kAudioRampingDownSilenceDuration;
              v285.epoch = 0;
              CMTimeSubtract(&lhs, &rhs, &v285);
              time = lhs;
            }

            lhs = time;
            rhs = *(v0 + 208);
            if (CMTimeCompare(&lhs, &rhs) >= 1)
            {
              *(v0 + 208) = time;
            }
          }
        }

        else
        {
          memset(&time, 0, sizeof(time));
          if (queueOut)
          {
            CMBufferQueueGetMinPresentationTimeStamp(&time, queueOut);
          }

          else
          {
            time = *v104;
          }

          if (time.flags)
          {
            v293 = time;
          }
        }

        v157 = CMBufferQueueDequeueAndRetain(queueOut);
        if (v157)
        {
          v158 = v157;
          do
          {
            OutputPresentationTimeStamp = CMSampleBufferGetOutputPresentationTimeStamp(&time, v158);
            v301 = time.value;
            timescale = time.timescale;
            if (time.flags)
            {
              time.value = v301;
              time.timescale = timescale;
              OUTLINED_FUNCTION_344(OutputPresentationTimeStamp, v160, v161, v162, v163, v164, v165, v166, v207, v218, v229, v242, v252, v261, v272, v283, v285.value, *&v285.timescale, v285.epoch, v286, rhs.value, *&rhs.timescale, rhs.epoch, v288, v289.value, *&v289.timescale, v289.epoch, v290, v167, v291.value);
              v176 = OUTLINED_FUNCTION_345(v168, v169, v170, v171, v172, v173, v174, v175, v208, v219, v230, v243, v253, v262, v273, v284, v285.value, *&v285.timescale, v285.epoch, v286, rhs.value, *&rhs.timescale, rhs.epoch, v288, v289.value, *&v289.timescale, v289.epoch, v290, v291.value, *&v291.timescale, v291.epoch, v292, v293.value, *&v293.timescale, v293.epoch, queueOut, lhs.value, *&lhs.timescale, lhs.epoch, v296, v297[0], v297[1], v297[2], v297[3], *&v298, v299[0], v299[1], v299[2], time.value);
              if (CMTimeCompare(v176, v177) < 0)
              {
                CMBufferQueueEnqueue(*(*(v105 + 112) + 40), v158);
                fpfs_GetEndOutputPresentationTimeStamp(v158, &v293);
              }
            }

            else
            {
              CMBufferQueueEnqueue(*(*(v105 + 112) + 40), v158);
            }

            CFRelease(v158);
            v158 = CMBufferQueueDequeueAndRetain(queueOut);
          }

          while (v158);
        }

        FigBufferQueueRelease();
        *(v105 + 232) = v293;
        goto LABEL_75;
      }
    }
  }

LABEL_95:
  OUTLINED_FUNCTION_191();
}

uint64_t fpfs_AdjustTime()
{
  OUTLINED_FUNCTION_187();
  memset(&v6, 0, sizeof(v6));
  CMSampleBufferGetPresentationTimeStamp(&v5, v2);
  lhs = v5;
  rhs = *(v0 + 412);
  CMTimeSubtract(&time1, &lhs, &rhs);
  lhs = *(v0 + 144);
  CMTimeAdd(&rhs, &time1, &lhs);
  v3 = CMSampleBufferSetOutputPresentationTimeStamp(v1, &rhs);
  if (!v3 && !fpfs_IsMarkerOnly(v1))
  {
    fpfs_GetEndOutputPresentationTimeStamp(v1, &v6);
    time1 = *(v0 + 232);
    lhs = v6;
    if (CMTimeCompare(&time1, &lhs) < 0)
    {
      *(v0 + 232) = v6;
    }
  }

  return v3;
}

uint64_t fpfs_SetRateWithFadeInternal(void *a1, CMTime *a2, float a3)
{
  v50 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((a2->flags & 0x1D) == 1)
  {
    time = *a2;
    CMTimeGetSeconds(&time);
  }

  if (dword_1EAF169F0)
  {
    v8 = OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_130(v8, v9, v10, v11, v12, v13, v14, v15, v42, v43, v44, v45, SBYTE2(v45), BYTE3(v45), SHIDWORD(v45));
    OUTLINED_FUNCTION_28();
    if (v3)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      *v46 = 136315906;
      OUTLINED_FUNCTION_139();
      *&v46[14] = a1;
      OUTLINED_FUNCTION_443();
      v47 = v16;
      LOWORD(v48) = v17;
      *(&v48 + 2) = v18;
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_408();
    }

    OUTLINED_FUNCTION_2();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a3 != 0.0 && !*(DerivedStorage + 80))
  {
    fpfs_PullNextItem(a1);
  }

  v19 = OUTLINED_FUNCTION_265();
  Next = fpfs_getNext(v19, v20);
  v29 = Next;
  if (Next)
  {
    Next = CMBaseObjectGetDerivedStorage();
    v30 = *(Next + 840);
  }

  else
  {
    v30 = 0.0;
  }

  if (v30 == a3)
  {
    return 0;
  }

  if (a3 == 0.0)
  {
    fpfs_applySoftwareVolume(a1, 1);
    return fpfs_pauseCurrentItem(a1);
  }

  if (v30 != 0.0)
  {
    return OUTLINED_FUNCTION_299(Next, v22, v23, v24, v25, v26, v27, v28, v42, v43, v44, v45, *v46, *&v46[16], v47, v48, *(&v48 + 1), *&time.value, time.epoch);
  }

  v32 = OUTLINED_FUNCTION_203();
  v34 = fpfs_applySoftwareVolume(v32, v33);
  if (v29)
  {
    CMBaseObjectGetDerivedStorage();
    v34 = fpfsi_applySoftwareVolume();
  }

  result = OUTLINED_FUNCTION_299(v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, *v46, *&v46[16], v47, v48, *(&v48 + 1), *&time.value, time.epoch);
  if (!result)
  {
    fpfs_applySoftwareVolume(a1, 0);
    return 0;
  }

  return result;
}

void fpfs_SeekDidComplete()
{
  OUTLINED_FUNCTION_650();
  v151 = v1;
  v152 = v2;
  v130 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_187();
  v150 = *MEMORY[0x1E69E9840];
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = CMBaseObjectGetDerivedStorage();
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (FPSupport_SeekIDGetSource(*(v12 + 2220)) != 1)
  {
    v13 = *(v12 + 2568);
    if (v13)
    {
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v14)
      {
        v14(v13, @"playerStats", 0x1F0B666D8, 1);
      }
    }

    v126 = @"playerStats";
    if (*(v12 + 3184))
    {
      v15 = *(v12 + 2568);
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      if (v15)
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 32))
        {
          OUTLINED_FUNCTION_362();
          v16(v15);
        }
      }
    }

    if (*(v12 + 1484))
    {
      v17 = *(v12 + 2568);
      if (v17)
      {
        v18 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v18)
        {
          v18(v17, @"playerStats", 0x1F0B66738, 1);
        }
      }
    }
  }

  if (FPSupport_SeekIDGetSource(v10) != 1)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    FigMetricItemSeekDidCompleteEventCreate(AllocatorForMedia, *(v12 + 1680), v8, &cf, *(DerivedStorage + 108), *(v12 + 840));
    v20 = *(v12 + 3400);
    v21 = cf;
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v22)
    {
      v22(v20, 0, v21);
    }
  }

  if (v6)
  {
    *v6 = 0;
  }

  if (*(v12 + 2992))
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_297();
    v43 = CMBaseObjectGetDerivedStorage();
    v138 = 0uLL;
    v139 = 0;
    v44 = FigGetUpTimeNanoseconds();
    v52 = v44;
    v53 = *(v43 + 2944);
    if (v6)
    {
      *v6 = 0;
    }

    time = *(v43 + 2960);
    v54 = OUTLINED_FUNCTION_623(v44, v45, v46, v47, v48, v49, v50, v51, v106, v110, v114, v118, UpTimeNanoseconds, v126, v130, cf, *(v43 + 320), *(v43 + 328), *(v43 + 336), v137, v138, *(&v138 + 1), v139, v140, v141, v142, *(&v142 + 1), v143, time.value);
    if (CMTimeCompare(v54, v55))
    {
      goto LABEL_46;
    }

    v56 = v52 - v53;
    *(v43 + 2952) = v56;
    v57 = *(v43 + 2944);
    OUTLINED_FUNCTION_232(v43 + 2960);
    time.epoch = v58;
    v59 = CMBaseObjectGetDerivedStorage();
    v60 = malloc_type_malloc(0x38uLL, 0x10A0040C46062B5uLL);
    if (v60)
    {
      *(v60 + 2) = v57;
      *(v60 + 3) = v56;
      *(v60 + 32) = time;
      v61 = *(v59 + 2920);
      v62 = **(v61 + 8);
      if (v62 && v57 + v56 <= *(v62 + 24) + *(v62 + 16))
      {
        goto LABEL_45;
      }

      *v60 = 0;
      *(v60 + 1) = v61;
      *v61 = v60;
      *(v59 + 2920) = v60;
      ++*(v59 + 2984);
    }

    else
    {
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM();
    }

    v60 = 0;
LABEL_45:
    free(v60);
LABEL_46:
    fpfsi_getSeekableTimeRange(&time);
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    if ((time.flags & 1) == 0 || (v146 & 0x100000000) == 0 || v147 || v145 < 0)
    {
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM();
    }

    else
    {
      epoch = time.epoch;
      time.timescale = timescale;
      v73 = OUTLINED_FUNCTION_623(v63, v64, v65, v66, v67, v68, v69, v70, v107, v111, v115, v119, v123, v127, v132, cf, v145, v146, 0, v137, v138, *(&v138 + 1), v139, v140, v141, v142, *(&v142 + 1), v143, value);
      CMTimeAdd(v75, v73, v74);
      OUTLINED_FUNCTION_701();
      v84 = OUTLINED_FUNCTION_623(v76, v77, v78, v79, v80, v81, v82, v83, v108, v112, v116, v120, v124, v128, v133, cf, v138, *(&v138 + 1), v139, v137, v138, *(&v138 + 1), v139, v140, v141, v142, *(&v142 + 1), v143, time.value);
      if (CMTimeCompare(v84, v85) && *(v10 + 108) > 0.0 || (OUTLINED_FUNCTION_701(), v94 = OUTLINED_FUNCTION_623(v86, v87, v88, v89, v90, v91, v92, v93, v109, v113, v117, v121, v125, v129, v134, cf, value, __SPAIR64__(flags, timescale), epoch, v137, v138, *(&v138 + 1), v139, v140, v141, v142, *(&v142 + 1), v143, time.value), CMTimeCompare(v94, v95) >= 1) && *(v10 + 108) < 0.0)
      {
        fpfsi_HandleNextBestEffortTrickplayModeSeek();
        if (v6)
        {
          *v6 = 1;
        }
      }

      else
      {
        fpfsi_EndBestEffortSeekTrickplayMode(v43);
        v96 = OUTLINED_FUNCTION_235();
        fpfs_StopPlayingItem(v96, v97, 0);
      }
    }

    Mutable = 0;
    goto LABEL_67;
  }

  *(v12 + 2944) = 0u;
  v23 = MEMORY[0x1E6960C70];
  v24 = OUTLINED_FUNCTION_284();
  fpfsi_setLastSeekTimeSet(v24, v25);
  *(v12 + 3184) = 0;
  fpfsi_updateMaxPlayThroughTime();
  v26 = *v23;
  *(v12 + 1472) = *v23;
  v27 = *(v23 + 2);
  *(v12 + 1488) = v27;
  *(v12 + 344) = v26;
  *(v12 + 360) = v27;
  *(v12 + 368) = v26;
  *(v12 + 384) = v27;
  v28 = *(v12 + 1576);
  if (v28)
  {
    CFRelease(v28);
    *(v12 + 1576) = 0;
  }

  if (!v10)
  {
    Mutable = 0;
LABEL_67:
    if (fpfs_shouldReleaseRenderChainForPausing())
    {
      fpfsi_ReleaseRenderChainsForPausing(v0);
    }

    goto LABEL_69;
  }

  if (*(v12 + 1436))
  {
    v29 = *(v12 + 392);
    if ((v29 & 0x10) != 0)
    {
      v30 = (v29 >> 6) & 1;
      v31 = OUTLINED_FUNCTION_440();
      fpfs_GetNextTimeToPlay(v31, 0, v32);
      OUTLINED_FUNCTION_439();
      fpfsi_applyTimeToPausePlayback(v33, v34, v35, v36, v30);
    }
  }

  v37 = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(v37, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_120();
    FigSignalErrorAtGM();
    goto LABEL_69;
  }

  if (!FigCFDictionarySetInt32())
  {
    FigCFDictionarySetValue();
    v39 = *(v12 + 2232);
    if (v39)
    {
      CFRelease(v39);
      *(v12 + 2232) = 0;
    }

    if (!FigCFDictionarySetInt32())
    {
      OUTLINED_FUNCTION_549();
      time.epoch = v40;
      if (!FigCFDictionarySetCMTime())
      {
        if (dword_1EAF169F0)
        {
          v131 = v4;
          LODWORD(v136) = 0;
          LOBYTE(value) = 0;
          OUTLINED_FUNCTION_279();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, value);
          OUTLINED_FUNCTION_70();
          if (DerivedStorage)
          {
            if (v0)
            {
              v42 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v42 = "";
            }

            v98 = *(v12 + 2220);
            Description = FigPlaybackItemSeekReasonGetDescription(*(v12 + 2240));
            OUTLINED_FUNCTION_232(v131);
            time.epoch = v100;
            CMTimeGetSeconds(&time);
            LODWORD(v138) = 136316674;
            OUTLINED_FUNCTION_140();
            v140 = v42;
            LOWORD(v141) = 1024;
            *(&v141 + 2) = v10;
            HIWORD(v141) = 1024;
            LODWORD(v142) = v98;
            WORD2(v142) = 2080;
            *(&v142 + 6) = Description;
            HIWORD(v142) = v101;
            v143 = v102;
            OUTLINED_FUNCTION_62();
            OUTLINED_FUNCTION_23();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_454();
        }

        *(v12 + 2240) = 0;
        if (*(v12 + 2220) == v10)
        {
          *(v12 + 2220) = 0;
        }

        v103 = OUTLINED_FUNCTION_228();
        fpfs_EnqueueNotification(v103, v104, v105, Mutable);
        goto LABEL_67;
      }
    }
  }

LABEL_69:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  OUTLINED_FUNCTION_602();
}

void fpfs_CheckPrebufferedLevels()
{
  OUTLINED_FUNCTION_182();
  HIDWORD(v736) = v1;
  v3 = v2;
  LODWORD(v620) = v4;
  v6 = v5;
  v8 = v7;
  v872 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v608 = OUTLINED_FUNCTION_180(DerivedStorage);
  *(&v620 + 1) = CMBaseObjectGetDerivedStorage();
  memset(&v839, 0, sizeof(v839));
  memset(&v837, 0, sizeof(v837));
  v835 = 0uLL;
  v836 = 0;
  memset(&v834, 0, sizeof(v834));
  v852 = 0;
  *v850 = 0u;
  v851 = 0u;
  *v848 = 0u;
  v849 = 0u;
  v10 = MEMORY[0x1E6960C88];
  OUTLINED_FUNCTION_673();
  *v800 = *v10;
  *&v800[16] = *(v10 + 16);
  v11 = *(v0 + 1680);
  v12 = MEMORY[0x1E6960C70];
  v756 = v6;
  v783[0] = *&v800[16];
  if (!v11)
  {
    OUTLINED_FUNCTION_567();
    if (!v18)
    {
      goto LABEL_375;
    }

    v15 = (v0 + 1072);
LABEL_7:
    v19 = *(v0 + 2256);
    v20 = *(v0 + 2264);
    v21 = *(v0 + 2284);
    if (v21 >= 1 && *(v0 + 2280))
    {
      if (*(v0 + 2288) <= 0.0)
      {
        if (v19 <= v21)
        {
          v19 = *(v0 + 2284);
        }
      }

      else
      {
        rhs.value = *v12;
        rhs.timescale = *(v12 + 8);
        v871.value = rhs.value;
        v871.timescale = rhs.timescale;
        if (*(v0 + 236))
        {
          v27 = OUTLINED_FUNCTION_234();
          fpfs_GetNextTimeToPlay(v27, v28, v29);
          rhs.value = time[0].value;
          flags = time[0].flags;
          rhs.timescale = time[0].timescale;
          epoch = time[0].epoch;
          v871.value = *(v0 + 224);
          v25 = *(v0 + 236);
          v871.timescale = *(v0 + 232);
          v26 = *(v0 + 240);
        }

        else
        {
          flags = *(v12 + 12);
          epoch = *(v12 + 16);
          v25 = flags;
          v26 = epoch;
        }

        if (flags & 1) != 0 && (v25)
        {
          time[0].value = rhs.value;
          *&time[0].timescale = __PAIR64__(flags, rhs.timescale);
          time[0].epoch = epoch;
          *time2 = v871.value;
          *&time2[8] = v871.timescale;
          *&time2[12] = v25;
          *&time2[16] = v26;
          v30 = OUTLINED_FUNCTION_241();
          v774 = v31;
          v33 = CMTimeCompare(v30, v32);
          if (v33 >= 1)
          {
            v41 = *(v0 + 2288);
            *time2 = rhs.value;
            *&time2[8] = rhs.timescale;
            *&time2[12] = flags;
            *&time2[16] = epoch;
            v867.value = v871.value;
            v867.timescale = v871.timescale;
            v867.flags = v25;
            v867.epoch = v774;
            v42 = OUTLINED_FUNCTION_85(v33, v34, v35, v36, v37, v38, v39, v40, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v679, v694, v706, v717, v727, v736, v745, v756, v765, v774, *&v800[16], v783[1], *v800, *&v800[8], *&v800[16], v825, 0, 0, 0, 0, 0, 0, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849);
            CMTimeSubtract(v44, v42, v43);
            Seconds = CMTimeGetSeconds(time);
            v46 = *(v0 + 2284);
            if (v19 < v46)
            {
              v47 = v41 * Seconds;
              if (v46 >= (v19 + v47))
              {
                v19 = (v19 + v47);
              }

              else
              {
                v19 = *(v0 + 2284);
              }
            }
          }
        }
      }
    }

    else if (*(*(&v620 + 1) + 816))
    {
      if (v19 >= 120)
      {
        v20 = 120;
      }

      else
      {
        v20 = *(v0 + 2256);
      }
    }

    else
    {
      if (v19 >= 120)
      {
        v22 = 120;
      }

      else
      {
        v22 = *(v0 + 2256);
      }

      if (*(v0 + 2260))
      {
        v20 = v22;
      }
    }

    DWORD1(v620) = 1;
    CMTimeMake(time, v20, 1);
    v839 = time[0];
    CMTimeMake(time, v19, 1);
    v837 = time[0];
    goto LABEL_32;
  }

  FigAlternateIsIFrameOnly(v11);
  OUTLINED_FUNCTION_567();
  if (!v14)
  {
    goto LABEL_375;
  }

  v15 = (v0 + 1072);
  if (!v13)
  {
    goto LABEL_7;
  }

  v16 = OUTLINED_FUNCTION_537();
  CMTimeMake(&v839, (v16 * 5.0), 1);
  v17 = OUTLINED_FUNCTION_537();
  CMTimeMake(&v837, (v17 * 10.0), 1);
  DWORD1(v620) = 0;
LABEL_32:
  v48 = 0;
  v49 = 0;
  LODWORD(v774) = *(v10 + 12);
  *&v655 = v0 + 472;
  v50 = v848;
  do
  {
    value = 1 << v48;
    if ((*v15 & (1 << v48)) == 0)
    {
      goto LABEL_46;
    }

    v52 = *(v0 + v48 + 472);
    if (!*(v0 + 553))
    {
      goto LABEL_38;
    }

    if (*(v0 + v48 + 472))
    {
      if (!*(v0 + 1744))
      {
        goto LABEL_46;
      }

      v52 = *(v0 + v48 + 475);
LABEL_38:
      if (v52)
      {
        goto LABEL_46;
      }
    }

    fpfs_CurrentSubStreamBufferedDuration(v48, time);
    *v50 = time[0];
    if (v3 == v48)
    {
      OUTLINED_FUNCTION_352();
      *(v8 + 16) = v53;
    }

    time[0] = *v800;
    OUTLINED_FUNCTION_53();
    v54 = OUTLINED_FUNCTION_241();
    if (CMTimeCompare(v54, v55) >= 1)
    {
      *v800 = *v50;
      *&v800[16] = v50[2];
    }

    v49 |= value;
    time[0] = *v50;
    *time2 = *&v839.value;
    v56 = OUTLINED_FUNCTION_237(v839.epoch, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v679, v694, v706, v717, v727, v736, v745, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849, *(&v849 + 1), v850[0], v850[1], v851, *(&v851 + 1), v852, v853);
    if ((v56 & 0x80000000) == 0)
    {
      OUTLINED_FUNCTION_384(v56, v57, v58, v59, v60, v61, v62, v63, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v679, v694, v706, v717, v727, v736, v745, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847);
      time[0].flags = v774;
      time[0].epoch = v783[0];
      OUTLINED_FUNCTION_53();
      v64 = OUTLINED_FUNCTION_241();
      if (CMTimeCompare(v64, v65) >= 1)
      {
        v846 = *v50;
        LODWORD(v774) = *(v50 + 3);
        LODWORD(v847) = *(v50 + 2);
        v783[0] = v50[2];
      }
    }

LABEL_46:
    ++v48;
    v50 += 3;
  }

  while (v48 != 3);
  Ahead = fpfs_GetAllowExtendedReadAhead(*(&v620 + 1));
  v68 = BYTE4(v620) ^ 1;
  v69 = 1;
  if (!Ahead)
  {
    v68 = 1;
  }

  v70 = 1;
  if ((v68 & 1) == 0)
  {
    v71 = *(v0 + 1024);
    if (v71)
    {
      while (1)
      {
        v70 = *(v71 + 168);
        if (v70 == 1)
        {
          break;
        }

        v71 = *(v71 + 24);
        if (!v71)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
LABEL_53:
      OUTLINED_FUNCTION_737();
      CMTimeMake(v72, 10, 1);
      if (*(v0 + 2284) < 1 || !*(v0 + 2280))
      {
        v867.value = v846;
        v867.timescale = v847;
        v867.flags = v774;
        v867.epoch = v783[0];
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_476(v73, v74, v75, v76, v77, v78, v79, v80, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v679, v694, v706, v717, v727, v736, v745, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849);
        *&v867.value = *&v839.value;
        OUTLINED_FUNCTION_404(v839.epoch);
        if (CMTimeCompare(v81, time2) < 0)
        {
          v867.value = v846;
          v867.timescale = v847;
          v867.flags = v774;
          v867.epoch = v783[0];
          OUTLINED_FUNCTION_96();
          OUTLINED_FUNCTION_476(v82, v83, v84, v85, v86, v87, v88, v89, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v679, v694, v707, v718, v727, v736, v745, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849);
          *(&v67 + 1) = *&time2[8];
          v839 = *time2;
        }
      }

      v70 = 0;
    }
  }

  HIDWORD(v643) = v70;
  v90 = 0;
  LODWORD(v727) = 0;
  HIDWORD(v765) = 0;
  v91 = v848;
  *&v67 = 136316930;
  *v708 = v67;
  do
  {
    v92 = 1 << v90;
    if (((1 << v90) & v49) != 0)
    {
      OUTLINED_FUNCTION_152();
      *time2 = *&v839.value;
      if ((OUTLINED_FUNCTION_237(v839.epoch, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v679, v694, v708[0], v708[1], v727, v736, v745, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849, *(&v849 + 1), v850[0], v850[1], v851, *(&v851 + 1), v852, v853) & 0x80000000) != 0)
      {
        if (HIDWORD(v736) && dword_1EAF169F0)
        {
          OUTLINED_FUNCTION_686();
          v98 = OUTLINED_FUNCTION_487();
          OUTLINED_FUNCTION_818(v98);
          OUTLINED_FUNCTION_121();
          if (v149)
          {
            v100 = v99;
          }

          else
          {
            v100 = value;
          }

          if (v100)
          {
            v101 = *v0;
            if (*v0)
            {
              v102 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v102 = "";
            }

            v696 = v102;
            if (v756)
            {
              v117 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v117 = "";
            }

            v682 = v117;
            OUTLINED_FUNCTION_152();
            CMTimeGetSeconds(time);
            *&time[0].value = *&v839.value;
            OUTLINED_FUNCTION_246(v839.epoch);
            CMTimeGetSeconds(v118);
            *time2 = v708[0];
            OUTLINED_FUNCTION_531(time2);
            *(v119 + 14) = v101;
            OUTLINED_FUNCTION_226(v120, v121, v122, v123, v124, v125, v126, v127, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v682, v696);
            *(v128 + 34) = v756;
            OUTLINED_FUNCTION_83(v128, v516, v528, v540, v551, v563, v574, v586, v598, v610, v622, v633, v645, v657, v669, v683);
            *(v129 + 70) = v130;
            OUTLINED_FUNCTION_116();
            OUTLINED_FUNCTION_34();
            _os_log_send_and_compose_impl();
            value = v867.value;
            v69 = 1;
          }

          OUTLINED_FUNCTION_1();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        LODWORD(v727) = v727 | v92;
      }

      else
      {
        OUTLINED_FUNCTION_152();
        *time2 = *&v837.value;
        if ((OUTLINED_FUNCTION_237(v837.epoch, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v679, v694, v708[0], v708[1], v727, v736, v745, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849, *(&v849 + 1), v850[0], v850[1], v851, *(&v851 + 1), v852, v853) & 0x80000000) == 0)
        {
          if (HIDWORD(v736) && dword_1EAF169F0)
          {
            OUTLINED_FUNCTION_686();
            v93 = OUTLINED_FUNCTION_487();
            OUTLINED_FUNCTION_818(v93);
            OUTLINED_FUNCTION_121();
            if (v149)
            {
              v95 = v94;
            }

            else
            {
              v95 = value;
            }

            if (v95)
            {
              v96 = *v0;
              if (*v0)
              {
                v97 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v97 = "";
              }

              v695 = v97;
              if (v756)
              {
                v103 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v103 = "";
              }

              v680 = v103;
              OUTLINED_FUNCTION_152();
              CMTimeGetSeconds(time);
              *&time[0].value = *&v837.value;
              OUTLINED_FUNCTION_246(v837.epoch);
              CMTimeGetSeconds(v104);
              *time2 = v708[0];
              OUTLINED_FUNCTION_531(time2);
              *(v105 + 14) = v96;
              OUTLINED_FUNCTION_226(v106, v107, v108, v109, v110, v111, v112, v113, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v680, v695);
              *(v114 + 34) = v756;
              OUTLINED_FUNCTION_83(v114, v515, v527, v539, v550, v562, v573, v585, v597, v609, v621, v632, v644, v656, v668, v681);
              *(v115 + 70) = v116;
              OUTLINED_FUNCTION_116();
              OUTLINED_FUNCTION_34();
              _os_log_send_and_compose_impl();
              value = v867.value;
              v69 = 1;
            }

            OUTLINED_FUNCTION_1();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          HIDWORD(v765) |= v92;
        }
      }
    }

    ++v90;
    v91 += 3;
  }

  while (v90 != 3);
  if ((v643 & 0x100000000) != 0)
  {
    goto LABEL_191;
  }

  v131 = CMBaseObjectGetDerivedStorage();
  v133 = 0;
  v134 = 0;
  HIDWORD(v643) = 0;
  v596 = *(v131 + 544);
  LODWORD(v841[0]) = 0;
  LODWORD(cf) = 0;
  v694 = v131;
  while (2)
  {
    if ((*(v131 + 1072) & (1 << v133)) == 0)
    {
      goto LABEL_130;
    }

    LODWORD(v679) = 1 << v133;
    v708[0] = v134;
    v135 = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_173(v135);
    v745 = CMBaseObjectGetDerivedStorage();
    fpfs_GetNextTimeToPlay(v69, 1, time);
    v136 = *(v69 + 1024);
    if (!v136)
    {
      *(&v871.value + v133) = 0;
      goto LABEL_128;
    }

    v137 = 0;
    while (2)
    {
      if (v133 == *(v136 + 196))
      {
        v138 = *(v136 + 96);
        if (v138)
        {
          if (CMBufferQueueGetHead(v138))
          {
            MinPresentationTimeStamp = *(v136 + 96);
            if (MinPresentationTimeStamp)
            {
              MinPresentationTimeStamp = CMBufferQueueGetMinPresentationTimeStamp(time2, MinPresentationTimeStamp);
            }

            else
            {
              *time2 = *MEMORY[0x1E6960C70];
              *&time2[16] = *(MEMORY[0x1E6960C70] + 16);
            }

            v868.value = *time2;
            v69 = *&time2[12];
            v868.timescale = *&time2[8];
            v147 = *&time2[16];
            *&v869 = *(v136 + 232);
            v148 = *(v136 + 244);
            DWORD2(v869) = *(v136 + 240);
            v149 = (*(v136 + 156) & 0x1D) == 1 && (time2[12] & 0x1D) == 1;
            if (!v149 || (v148 & 0x1D) != 1)
            {
              v137 += CMBufferQueueGetTotalSize(*(v136 + 96));
              goto LABEL_122;
            }

            v151 = *(v136 + 248);
            v867.value = *(v136 + 232);
            v867.timescale = *(v136 + 240);
            v867.flags = v148;
            v867.epoch = v151;
            rhs.value = v868.value;
            rhs.timescale = v868.timescale;
            rhs.flags = *&time2[12];
            rhs.epoch = *&time2[16];
            OUTLINED_FUNCTION_476(MinPresentationTimeStamp, v139, v140, v141, v142, v143, v144, v145, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v679, v694, v708[0], v708[1], v727, v736, v745, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849);
            v160 = CMTimeGetSeconds(time2);
            if (*(v746 + 108) >= 0.0)
            {
              *time2 = v869;
              *&time2[8] = DWORD2(v869);
              *&time2[12] = v148;
              *&time2[16] = v151;
              v179 = OUTLINED_FUNCTION_123(v152, v153, v154, v155, v156, v157, v158, v159, v517, v529, v541, v552, v564, v575, v587, v599, v611, v623, v634, v646, v658, v670, v684, v697, v709, v719, v728, v737, v746, v757, v766, v775, v784, v792, v801, v809, v817, v826, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849);
              if (v179 >= 1 && v160 > 0.0)
              {
                *time2 = v868.value;
                *&time2[8] = v868.timescale;
                *&time2[12] = v69;
                *&time2[16] = v147;
                v69 = OUTLINED_FUNCTION_123(v179, v180, v181, v182, v183, v184, v185, v186, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v679, v694, v708[0], v708[1], v727, v736, v745, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849);
                TotalSize = CMBufferQueueGetTotalSize(*(v136 + 96));
                if ((v69 & 0x80000000) == 0)
                {
                  goto LABEL_121;
                }

LABEL_117:
                v170 = TotalSize;
                v867.value = v869;
                v867.timescale = DWORD2(v869);
                v867.flags = v148;
                v867.epoch = v151;
                OUTLINED_FUNCTION_96();
                OUTLINED_FUNCTION_476(v171, v172, v173, v174, v175, v176, v177, v178, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v679, v694, v708[0], v708[1], v727, v736, v745, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849);
                v137 = (CMTimeGetSeconds(time2) * v170 / v160 + v137);
              }
            }

            else
            {
              *time2 = v869;
              *&time2[8] = DWORD2(v869);
              *&time2[12] = v148;
              *&time2[16] = v151;
              v161 = OUTLINED_FUNCTION_123(v152, v153, v154, v155, v156, v157, v158, v159, v517, v529, v541, v552, v564, v575, v587, v599, v611, v623, v634, v646, v658, v670, v684, v697, v709, v719, v728, v737, v746, v757, v766, v775, v784, v792, v801, v809, v817, v826, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849);
              if ((v161 & 0x80000000) != 0 && v160 > 0.0)
              {
                *time2 = v868.value;
                *&time2[8] = v868.timescale;
                *&time2[12] = v69;
                *&time2[16] = v147;
                v69 = OUTLINED_FUNCTION_123(v161, v162, v163, v164, v165, v166, v167, v168, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v679, v694, v708[0], v708[1], v727, v736, v745, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849);
                TotalSize = CMBufferQueueGetTotalSize(*(v136 + 96));
                if (v69 >= 1)
                {
                  goto LABEL_117;
                }

LABEL_121:
                v137 += TotalSize;
              }
            }
          }
        }
      }

LABEL_122:
      v136 = *(v136 + 24);
      if (v136)
      {
        continue;
      }

      break;
    }

    *(&v871.value + v133) = v137;
    if (v137)
    {
      HIDWORD(v643) |= v679;
      goto LABEL_129;
    }

LABEL_128:
    v137 = 0;
LABEL_129:
    v134 = v137 + v708[0];
    v131 = v694;
LABEL_130:
    if (++v133 != 3)
    {
      continue;
    }

    break;
  }

  if (((*(v131 + 1072) ^ HIDWORD(v643)) & 7) == 0)
  {
    if (v134 >= *(v131 + 536) && v596 == 0)
    {
      v187 = 0;
      v188 = 0;
      goto LABEL_183;
    }

    v190 = 0;
    v191 = 0.0;
    v192 = v848;
    while (1)
    {
      if (((*(v131 + 1072) >> v190) & 1) == 0)
      {
        goto LABEL_148;
      }

      v193 = *(v131 + v190 + 472);
      if (!*(v131 + 553))
      {
        goto LABEL_143;
      }

      if (!*(v131 + v190 + 472))
      {
        goto LABEL_144;
      }

      if (*(v131 + 1744))
      {
        break;
      }

LABEL_148:
      ++v190;
      v192 += 3;
      if (v190 == 3)
      {
        v197 = 0;
        v198 = v848;
        *&v132 = 136317954;
        *v538 = v132;
        while (2)
        {
          if ((*(v694 + 1072) & (1 << v197)) == 0)
          {
            goto LABEL_181;
          }

          v199 = *(v694 + v197 + 472);
          if (*(v694 + 553))
          {
            if (*(v694 + v197 + 472))
            {
              if (!*(v694 + 1744))
              {
                goto LABEL_181;
              }

              v199 = *(v694 + v197 + 475);
              goto LABEL_155;
            }
          }

          else
          {
LABEL_155:
            if (v199)
            {
              goto LABEL_181;
            }
          }

          CMTimeMake(time, 900, 1);
          *time2 = *v198;
          if ((OUTLINED_FUNCTION_341(v198[2], v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v679, v694, v708[0], v708[1], v727, v736, v745, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849, *(&v849 + 1), v850[0], v850[1], v851, *(&v851 + 1), v852, v853) & 0x80000000) != 0)
          {
            v200 = *(&v867.value + v197);
            v201 = (v200 * *(v694 + 536) / v191);
            v202 = v200 * *(v694 + 544) / v191;
            v203 = *(&v871.value + v197);
            if (v203 < v201)
            {
              p_cf = v841;
              goto LABEL_162;
            }

            if (v596 && v203 > v202)
            {
              p_cf = &cf;
LABEL_162:
              *p_cf |= 1 << v197;
            }

            if (dword_1EAF169F0 >= 3)
            {
              v745 = v202;
              LODWORD(rhs.value) = 0;
              LOBYTE(v869) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v206 = rhs.value;
              v708[0] = os_log_and_send_and_compose_flags_and_os_log_type;
              LODWORD(v679) = v869;
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v869);
              OUTLINED_FUNCTION_121();
              if (!v149)
              {
                v207 = v206;
              }

              if (v207)
              {
                HIDWORD(v643) = v207;
                v208 = *v694;
                if (*v694)
                {
                  v209 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v209 = "";
                }

                v584 = v209;
                if (v756)
                {
                  v210 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v210 = "";
                }

                *(&v561 + 1) = v210;
                *&time[0].value = *v198;
                OUTLINED_FUNCTION_246(v198[2]);
                v212 = CMTimeGetSeconds(v211);
                *time2 = v538[0];
                v213 = "Above";
                if (v203 >= v201)
                {
                  v214 = "Above";
                }

                else
                {
                  v214 = "Below";
                }

                *&time2[4] = "fpfs_AdjustBufferingForMemoryLimits";
                if (v203 < v745)
                {
                  v213 = "Below";
                }

                *&time2[12] = 2048;
                *&time2[14] = v208;
                *&time2[22] = 2082;
                *&time2[24] = v584;
                *&time2[32] = 2048;
                *&time2[34] = v756;
                *&time2[42] = 2082;
                *&time2[44] = *(&v561 + 1);
                *&time2[52] = 1024;
                *&time2[54] = v197;
                *&time2[58] = 2048;
                *&time2[60] = v212;
                *&time2[68] = 2048;
                *&time2[70] = v203;
                v855 = 2080;
                v856 = v214;
                v857 = 2048;
                v858 = v201;
                v859 = 2080;
                v860 = v213;
                v861 = 2048;
                v862 = v745;
                OUTLINED_FUNCTION_116();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_61();
            }
          }

LABEL_181:
          ++v197;
          v198 += 3;
          if (v197 == 3)
          {
            v188 = v841[0];
            v187 = cf;
            goto LABEL_183;
          }

          continue;
        }
      }
    }

    v193 = *(v131 + v190 + 475);
LABEL_143:
    if (!v193)
    {
LABEL_144:
      v194 = *(&v871.value + v190);
      if (v194)
      {
        v195 = v194 * 8.0;
        *&time[0].value = *v192;
        OUTLINED_FUNCTION_246(v192[2]);
        *&v132 = v195 / CMTimeGetSeconds(v196);
      }

      else
      {
        *&v132 = 0;
      }

      *(&v867.value + v190) = v132;
      v191 = v191 + *&v132;
      goto LABEL_148;
    }

    goto LABEL_148;
  }

  v187 = 0;
  v188 = 0;
LABEL_183:
  v215 = v187 & ~v727 | HIDWORD(v765);
  if (*(*(&v620 + 1) + 816) || (v216 = v188, *(v0 + 2260)))
  {
    v216 = v188 & ~v215;
  }

  v217 = v215 & ~v216;
  if (*(v0 + 2284) >= 1 && *(v0 + 2280))
  {
    v218 = 0;
  }

  else
  {
    v218 = v49 & ~(v727 | v188 | HIDWORD(v765));
  }

  HIDWORD(v765) = v218 | v217;
LABEL_191:
  v219 = MEMORY[0x1E6960C70];
  v220 = *MEMORY[0x1E6960C70];
  v844 = *MEMORY[0x1E6960C70];
  v221 = *(MEMORY[0x1E6960C70] + 8);
  LODWORD(v845) = v221;
  HasBufferedBeyondForwardEndTime = fpfsi_PlaybackHasBufferedBeyondForwardEndTime();
  if (HasBufferedBeyondForwardEndTime)
  {
    OUTLINED_FUNCTION_452(HasBufferedBeyondForwardEndTime, v223, v224, v225, v226, v227, v228, v229, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v679, v694, v708[0], v708[1], v727, v736, v745, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849);
    goto LABEL_196;
  }

  v239 = *(v219 + 12);
  v747 = *(v219 + 16);
  HasBufferedBeyondTimeToPauseBuffering = fpfsi_PlaybackHasBufferedBeyondTimeToPauseBuffering();
  if (HasBufferedBeyondTimeToPauseBuffering)
  {
    if (*(v0 + 464) || (HasBufferedBeyondTimeToPauseBuffering = *(v0 + 1680)) != 0 && (HasBufferedBeyondTimeToPauseBuffering = FigAlternateIsIFrameOnly(HasBufferedBeyondTimeToPauseBuffering), HasBufferedBeyondTimeToPauseBuffering))
    {
      *time2 = *(v0 + 1400);
      *&time2[16] = *(v0 + 1416);
      *&v867.value = kGaplessTransitionDeadlineInterval;
      v867.epoch = 0;
      v240 = OUTLINED_FUNCTION_85(HasBufferedBeyondTimeToPauseBuffering, v231, v232, v233, v234, v235, v236, v237, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v679, v694, v708[0], v708[1], v727, v736, v747, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849);
      HasBufferedBeyondTimeToPauseBuffering = CMTimeAdd(v242, v240, v241);
LABEL_196:
      v844 = time[0].value;
      v239 = time[0].flags;
      LODWORD(v845) = time[0].timescale;
      v747 = time[0].epoch;
    }
  }

  if (v239)
  {
    OUTLINED_FUNCTION_452(HasBufferedBeyondTimeToPauseBuffering, v231, v232, v233, v234, v235, v236, v237, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v679, v694, v708[0], v708[1], v727, v736, v747, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849);
    *time2 = v844;
    *&time2[8] = v845;
    *&time2[12] = v239;
    LODWORD(v694) = OUTLINED_FUNCTION_341(v748, v518, v530, v542, v553, v565, v576, v588, v600, v612, v624, v635, v647, v659, v671, v685, v698, v710, v720, v729, v738, v748, v758, v767, v776, v785, v793, v802, v810, v818, v827, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849, *(&v849 + 1), v850[0], v850[1], v851, *(&v851 + 1), v852, v853);
    v247 = OUTLINED_FUNCTION_234();
    fpfs_GetNextTimeToPlay(v247, v248, v249);
    v250 = 0;
    LODWORD(v708[0]) = 0;
    v251 = v0 + 976;
    while (1)
    {
      rhs.value = v220;
      rhs.timescale = v221;
      v252 = 1 << v250;
      if ((*v15 & (1 << v250)) == 0)
      {
        goto LABEL_216;
      }

      v253 = *(v655 + v250);
      if (!*(v0 + 553))
      {
        goto LABEL_211;
      }

      if (*(v655 + v250))
      {
        break;
      }

LABEL_212:
      *time2 = v835;
      *&time2[16] = v836;
      OUTLINED_FUNCTION_801(&v848[3 * v250]);
      v262 = OUTLINED_FUNCTION_85(v254, v255, v256, v257, v258, v259, v260, v261, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v679, v694, v708[0], v708[1], v727, v736, v747, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849);
      CMTimeAdd(v264, v262, v263);
      rhs.value = time[0].value;
      rhs.timescale = time[0].timescale;
      OUTLINED_FUNCTION_350();
      if (v149)
      {
        time[0].value = rhs.value;
        *&time[0].timescale = __PAIR64__(v265, rhs.timescale);
        *time2 = v844;
        *&time2[8] = v845;
        *&time2[12] = v239;
        if ((OUTLINED_FUNCTION_237(v747, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v679, v694, v708[0], v708[1], v727, v736, v747, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849, *(&v849 + 1), v850[0], v850[1], v851, *(&v851 + 1), v852, v853) & 0x80000000) == 0)
        {
          HIDWORD(v765) |= v252;
          LODWORD(v708[0]) |= v252;
          LODWORD(v727) = v727 & ~v252;
          if (!v694)
          {
            v266 = *(v0 + 1024);
            if (v266)
            {
              while (1)
              {
                v267 = *(v266 + 64);
                v268 = *(v266 + 196);
                if (v267 != *(v251 + 16 * v268))
                {
                  break;
                }

                if (v250 == v268)
                {
                  goto LABEL_226;
                }

LABEL_228:
                v266 = *(v266 + 24);
                if (!v266)
                {
                  goto LABEL_216;
                }
              }

              if (v250 != v268 || v267 != *(v251 + 16 * v268 + 8))
              {
                goto LABEL_228;
              }

LABEL_226:
              if (*(v266 + 128))
              {
                fpfs_scheduleForwardEndTimeForTrack();
              }

              else
              {
                fpfs_EnsureEndTimerProcForTrack(v266);
              }

              goto LABEL_228;
            }
          }
        }
      }

LABEL_216:
      if (++v250 == 3)
      {
        goto LABEL_199;
      }
    }

    if (!*(v0 + 1744))
    {
      goto LABEL_216;
    }

    v253 = *(v655 + v250 + 3);
LABEL_211:
    if (v253)
    {
      goto LABEL_216;
    }

    goto LABEL_212;
  }

  LODWORD(v708[0]) = 0;
LABEL_199:
  if (v727)
  {
    v243 = v756;
    v244 = v708[0];
    if (*(v0 + 1896))
    {
      fpfsi_UpdateResourceSpecifierOnResourceArbiter(v756);
    }

    *(v0 + 1896) = 0;
    v245 = *(v0 + 2272);
    if (v245)
    {
      v246 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v246)
      {
        v246(v245, 0x1F0B5F758, *MEMORY[0x1E695E4D0]);
      }
    }
  }

  else
  {
    v243 = v756;
    v244 = v708[0];
    if (HIDWORD(v765) == v49)
    {
      if (*(v0 + 1896) != 1)
      {
        if (HIDWORD(v736) && dword_1EAF169F0)
        {
          OUTLINED_FUNCTION_686();
          v485 = OUTLINED_FUNCTION_487();
          v486 = v867.value;
          os_log_type_enabled(v485, rhs.value);
          OUTLINED_FUNCTION_121();
          if (v149)
          {
            v496 = v495;
          }

          else
          {
            v496 = v486;
          }

          if (v496)
          {
            v497 = *v0;
            if (*v0)
            {
              v487 = CMBaseObjectGetDerivedStorage();
              v498 = (v487 + 888);
            }

            else
            {
              v498 = "";
            }

            v755 = v498;
            if (v756)
            {
              v487 = CMBaseObjectGetDerivedStorage();
              v499 = v756;
              v500 = (v487 + 3096);
            }

            else
            {
              v499 = 0;
              v500 = "";
            }

            OUTLINED_FUNCTION_384(v487, v488, v489, v490, v491, v492, v493, v494, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v655, *(&v655 + 1), v679, v694, v708[0], v708[1], v727, v736, v755, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847);
            time[0].flags = v774;
            OUTLINED_FUNCTION_246(v783[0]);
            CMTimeGetSeconds(v501);
            *time2 = 136316418;
            OUTLINED_FUNCTION_393("fpfs_CheckPrebufferedLevels");
            *&time2[12] = v502;
            *(v503 + 14) = v497;
            *&time2[22] = 2082;
            *&time2[24] = v747;
            *&time2[32] = v502;
            *(v503 + 34) = v499;
            *&time2[42] = 2082;
            *(v503 + 44) = v500;
            *&time2[52] = v502;
            *(v503 + 54) = v504;
            OUTLINED_FUNCTION_116();
            OUTLINED_FUNCTION_27();
            _os_log_send_and_compose_impl();
            v243 = v499;
            v244 = v708[0];
          }

          OUTLINED_FUNCTION_1();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *(v0 + 1896) = 1;
        v505 = *(v0 + 2272);
        if (v505)
        {
          v506 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v506)
          {
            v506(v505, 0x1F0B5F758, *MEMORY[0x1E695E4C0]);
          }
        }

        fpfs_EnqueueNotification(v608, @"StreamBufferFull", v243, 0);
        fpfsi_UpdateResourceSpecifierOnResourceArbiter(v243);
        fpfs_CheckItemsPrebuffering(v608, v507, v508, v509, v510, v511, v512, v513, v514, v526, v538[0], v538[1], v561, v584, SWORD2(v584), SBYTE6(v584), HIBYTE(v584), v596, SWORD2(v596), SBYTE6(v596), SHIBYTE(v596), v608, SHIDWORD(v608), v620, v643, v655, v679, v694, v708[0], v708[1], v727, v736, v747, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1]);
      }

      if (fpfsi_PlaybackHasBufferedBeyondTimeToPauseBuffering())
      {
        fpfsi_EnqueuePlayableRangeChangedNotification(v243);
        fpfs_EnqueueNotification(v608, @"ReachedTimeToPauseBuffering", v243, 0);
      }
    }
  }

  v270 = 0;
  LODWORD(v747) = 0;
  v271 = v848;
  do
  {
    if (((1 << v270) & v49) != 0)
    {
      if (((1 << v270) & HIDWORD(v765)) != 0)
      {
        time[0] = *v271;
        OUTLINED_FUNCTION_57();
        if (fpfs_CheckCanKeepUp(v272, v273, v274, v275, v276, v277, v278, v279))
        {
          v280 = 1 << v270;
        }

        else
        {
          v280 = 0;
        }

        v244 |= v280;
      }

      else
      {
        if (*(v0 + 1896))
        {
          v281 = 0;
        }

        else
        {
          v281 = 1 << v270;
        }

        LODWORD(v747) = v281 | v747;
      }
    }

    ++v270;
    ++v271;
  }

  while (v270 != 3);
  LODWORD(v708[0]) = v244;
  v282 = 0;
  v283 = 0;
  v284 = v0 + 475;
  *&v238 = 136317186;
  *v660 = v238;
  v285 = v783[0];
  v286 = v774;
  while (2)
  {
    v287 = 1 << v283;
    if ((*v15 & (1 << v283)) != 0)
    {
      v288 = *(v284 + v283 - 3);
      if (!*(v0 + 553))
      {
        goto LABEL_253;
      }

      if (!*(v284 + v283 - 3))
      {
        goto LABEL_254;
      }

      if (*(v0 + 1744))
      {
        v288 = *(v284 + v283);
LABEL_253:
        if (!v288)
        {
LABEL_254:
          v289 = &v848[v282];
          CMTimeMake(time2, 15, 1);
          *&v867.value = *v800;
          OUTLINED_FUNCTION_825(*&v800[16], v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v660[0], v660[1], v679, v694, v708[0], v708[1], v727, v736, v747, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849, *(&v849 + 1), v850[0], v850[1], v851, *(&v851 + 1), v852, v853);
          OUTLINED_FUNCTION_53();
          if (CMTimeCompare(time2, time) >= 1)
          {
            OUTLINED_FUNCTION_219();
            CMTimeMake(time, 15, 2);
            OUTLINED_FUNCTION_53();
            CMTimeSubtract(&v867, time2, time);
            *time2 = v846;
            *&time2[8] = v847;
            *&time2[12] = v286;
            *&time2[16] = v285;
            rhs = v839;
            CMTimeSubtract(time, time2, &rhs);
            rhs = *v289;
            v871 = v867;
            CMTimeSubtract(time2, &rhs, &v871);
            v290 = OUTLINED_FUNCTION_241();
            if ((CMTimeCompare(v290, v291) & 0x80000000) == 0)
            {
              OUTLINED_FUNCTION_673();
              v286 = HIDWORD(v848[v282 + 1]);
              v285 = v848[v282 + 2];
              v839 = v867;
            }

            if (HIDWORD(v736) && dword_1EAF169F0)
            {
              LODWORD(v774) = v286;
              v783[0] = v285;
              LODWORD(rhs.value) = 0;
              LOBYTE(v871.value) = 0;
              v292 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              HIDWORD(v765) = LOBYTE(v871.value);
              os_log_type_enabled(v292, v871.value);
              OUTLINED_FUNCTION_70();
              if (v286)
              {
                v293 = *v0;
                v727 = v292;
                if (*v0)
                {
                  v294 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v294 = "";
                }

                v699 = v294;
                if (v756)
                {
                  v295 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v295 = "";
                }

                v686 = v295;
                *&time[0].value = *&v289->value;
                OUTLINED_FUNCTION_246(v289->epoch);
                CMTimeGetSeconds(v296);
                *&time[0].value = *v800;
                OUTLINED_FUNCTION_246(*&v800[16]);
                v298 = CMTimeGetSeconds(v297);
                *&time[0].value = *&v867.value;
                OUTLINED_FUNCTION_246(v867.epoch);
                CMTimeGetSeconds(v299);
                *time2 = v660[0];
                OUTLINED_FUNCTION_531(time2);
                *(v300 + 14) = v293;
                OUTLINED_FUNCTION_226(v301, v302, v303, v304, v305, v306, v307, v308, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v660[0], v660[1], v686, v699);
                *(v309 + 34) = v756;
                OUTLINED_FUNCTION_83(v309, v519, v531, v543, v554, v566, v577, v589, v601, v613, v625, v636, v648, v661, v672, v687);
                *(v310 + 70) = v298;
                v855 = v311;
                v856 = v312;
                OUTLINED_FUNCTION_116();
                OUTLINED_FUNCTION_35();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_454();
              v243 = v756;
              v285 = v783[0];
            }

            LODWORD(v708[0]) |= v287;
            LODWORD(v747) = v747 & ~v287;
          }
        }
      }
    }

    ++v283;
    v282 += 3;
    if (v283 != 3)
    {
      continue;
    }

    break;
  }

  if (BYTE4(v620))
  {
    OUTLINED_FUNCTION_542();
    LODWORD(v321) = v708[0];
    v322 = v747;
    if (!v149)
    {
      goto LABEL_309;
    }

LABEL_279:
    memset(&rhs, 0, sizeof(rhs));
    OUTLINED_FUNCTION_384(v313, v314, v315, v316, v317, v318, v319, v320, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v660[0], v660[1], v679, v694, v708[0], v708[1], v727, v736, v747, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847);
    time[0].flags = v286;
    time[0].epoch = v285;
    *time2 = v839;
    v323 = OUTLINED_FUNCTION_241();
    CMTimeSubtract(v325, v323, v324);
    if (*(v637 + 108) >= 0.0)
    {
      fpfs_GetApproximateTime(v0, time2);
      v867 = rhs;
      v345 = OUTLINED_FUNCTION_85(v337, v338, v339, v340, v341, v342, v343, v344, v520, v532, v544, v555, v567, v578, v590, v602, v614, v626, v637, v649, v662, v673, v688, v700, v711, v721, v730, v739, v749, v759, v768, v777, v786, v794, v803, v811, v819, v828, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849);
      CMTimeAdd(v347, v345, v346);
    }

    else
    {
      fpfs_GetApproximateTime(v0, time2);
      v867 = rhs;
      v334 = OUTLINED_FUNCTION_85(v326, v327, v328, v329, v330, v331, v332, v333, v520, v532, v544, v555, v567, v578, v590, v602, v614, v626, v637, v649, v662, v673, v688, v700, v711, v721, v730, v739, v749, v759, v768, v777, v786, v794, v803, v811, v819, v828, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849);
      CMTimeSubtract(v336, v334, v335);
    }

    OUTLINED_FUNCTION_96();
    if (!*(v0 + 1608) && dword_1EAF169F0)
    {
      LODWORD(v867.value) = 0;
      LOBYTE(v871.value) = 0;
      v348 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v349 = v867.value;
      os_log_type_enabled(v348, v871.value);
      OUTLINED_FUNCTION_202();
      if (v149)
      {
        v351 = v350;
      }

      else
      {
        v351 = v349;
      }

      if (v351)
      {
        v352 = *v0;
        if (*v0)
        {
          v353 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v353 = "";
        }

        v783[0] = v348;
        if (v756)
        {
          v354 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v354 = "";
        }

        fpfs_GetTime(v0, time);
        v355 = CMTimeGetSeconds(time);
        *&time[0].value = *&rhs.value;
        OUTLINED_FUNCTION_246(rhs.epoch);
        CMTimeGetSeconds(v356);
        *time2 = 136316674;
        OUTLINED_FUNCTION_393("fpfs_CheckPrebufferedLevels");
        *&time2[12] = v357;
        *(v358 + 14) = v352;
        *&time2[22] = 2082;
        *&time2[24] = v353;
        *&time2[32] = v357;
        *(v358 + 34) = v756;
        *&time2[42] = 2082;
        *(v358 + 44) = v354;
        *&time2[52] = v357;
        *(v358 + 54) = v355;
        *&time2[62] = v357;
        *&time2[64] = v359;
        OUTLINED_FUNCTION_116();
        OUTLINED_FUNCTION_31();
        _os_log_send_and_compose_impl();
        LODWORD(v321) = v708[0];
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_454();
      v243 = v756;
    }

    TimebaseTimer = OUTLINED_FUNCTION_634();
    if (*(v0 + 1608) || (v368 = MEMORY[0x1E6960C70], v369 = *MEMORY[0x1E6960C70], *(v0 + 1616) = *MEMORY[0x1E6960C70], v370 = *(v368 + 16), *(v0 + 1632) = v370, *(v0 + 1640) = v369, *(v0 + 1656) = v370, TimebaseTimer = fpfsi_CreateTimebaseTimer(v243, *(TimebaseTimer + 600), *(TimebaseTimer + 16), fpfs_needsMoreTimerProc, 0, (v0 + 1608)), !TimebaseTimer))
    {
      if ((*(v0 + 1628) & 1) == 0 || (*time2 = v871, *&v867.value = kTimerScheduleTime, v867.epoch = 0, v371 = OUTLINED_FUNCTION_85(TimebaseTimer, v361, v362, v363, v364, v365, v366, v367, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v660[0], v660[1], v679, v694, v708[0], v708[1], v727, v736, v747, v756, v765, v774, kTimerScheduleTime, *(&kTimerScheduleTime + 1), *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849), CMTimeAdd(v373, v371, v372), OUTLINED_FUNCTION_53(), v374 = OUTLINED_FUNCTION_241(), CMTimeCompare(v374, v375) < 0))
      {
        OUTLINED_FUNCTION_671();
        FigSpeedRampTimerScheduleForL2Time(v387, time, 1u);
        OUTLINED_FUNCTION_672();
        OUTLINED_FUNCTION_112((v0 + 1640));
        *(v0 + 1656) = v388;
      }

      else
      {
        OUTLINED_FUNCTION_53();
        *&v867.value = *v783;
        v867.epoch = 0;
        v384 = OUTLINED_FUNCTION_85(v376, v377, v378, v379, v380, v381, v382, v383, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v660[0], v660[1], v679, v694, v708[0], v708[1], v727, v736, v747, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849);
        CMTimeAdd(v386, v384, v385);
        *time2 = *&v871.value;
        if (OUTLINED_FUNCTION_341(v871.epoch, v521, v533, v545, v556, v568, v579, v591, v603, v615, v627, v638, v650, v663, v674, v689, v701, v712, v722, v731, v740, v750, v760, v769, v778, v787, v795, v804, v812, v820, v829, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849, *(&v849 + 1), v850[0], v850[1], v851, *(&v851 + 1), v852, v853) >= 1)
        {
          OUTLINED_FUNCTION_671();
          *time2 = *(v0 + 1640);
          if ((OUTLINED_FUNCTION_237(*(v0 + 1656), v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v660[0], v660[1], v679, v694, v708[0], v708[1], v727, v736, v747, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849, *(&v849 + 1), v850[0], v850[1], v851, *(&v851 + 1), v852, v853) & 0x80000000) != 0)
          {
            OUTLINED_FUNCTION_672();
          }
        }
      }
    }
  }

  else
  {
    LODWORD(v321) = v708[0];
    v322 = v747;
    if ((LODWORD(v708[0]) >> *(v0 + 1088)))
    {
      *(v0 + 1541) = 1;
    }

    OUTLINED_FUNCTION_542();
    if (v149 && *(v0 + 1541))
    {
      goto LABEL_279;
    }
  }

LABEL_309:
  if (*(*(&v620 + 1) + 108) == 0.0 && *(*(&v620 + 1) + 828) > 0)
  {
    v322 = 0;
    LODWORD(v321) = 0;
  }

  if (!(v321 | v322) || (CMBaseObjectGetDerivedStorage(), !fpfs_FlowControlPump(v0, v321, 1, v322)))
  {
    if (HIDWORD(v736) && dword_1EAF169F0)
    {
      OUTLINED_FUNCTION_686();
      v389 = OUTLINED_FUNCTION_487();
      v390 = v867.value;
      os_log_type_enabled(v389, rhs.value);
      OUTLINED_FUNCTION_176();
      if (v149)
      {
        v392 = v391;
      }

      else
      {
        v392 = v390;
      }

      if (v392)
      {
        v393 = *v0;
        LODWORD(v747) = v322;
        if (*v0)
        {
          v394 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v394 = "";
        }

        v395 = v321;
        if (v243)
        {
          v321 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v321 = "";
        }

        v396 = -1.0;
        if (*(v0 + 1608))
        {
          *&time[0].value = *(v0 + 1616);
          OUTLINED_FUNCTION_246(*(v0 + 1632));
          v398 = CMTimeGetSeconds(v397);
          if (*(v0 + 1608))
          {
            time[0] = *(v0 + 1640);
            v396 = CMTimeGetSeconds(time);
          }
        }

        else
        {
          v398 = -1.0;
        }

        *time2 = v660[0];
        OUTLINED_FUNCTION_393("fpfs_CheckPrebufferedLevels");
        *&time2[12] = v399;
        *(v400 + 14) = v393;
        *&time2[22] = 2082;
        *&time2[24] = v394;
        *&time2[32] = v399;
        *(v400 + 34) = v243;
        *&time2[42] = 2082;
        *(v400 + 44) = v321;
        *&time2[52] = 1024;
        LOBYTE(v321) = v395;
        *(v400 + 54) = v395;
        *&time2[58] = 1024;
        *&time2[60] = v747;
        *&time2[64] = v399;
        *(v400 + 66) = v398;
        *&time2[74] = v399;
        *(v400 + 76) = v396;
        OUTLINED_FUNCTION_116();
        OUTLINED_FUNCTION_35();
        OUTLINED_FUNCTION_448();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_420();
    }

    v401 = OUTLINED_FUNCTION_409();
    fpfs_GetNextTimeToPlay(v401, v402, v403);
    v404 = *(v0 + 1024);
    while (v404)
    {
      if (!*(v0 + 1024))
      {
        break;
      }

      v405 = v404;
      v404 = *(v404 + 24);
      if (*(v405 + 136))
      {
        if (!*(v405 + 198))
        {
          OUTLINED_FUNCTION_674();
          if (v149 && (*(v405 + 244) & 1) != 0)
          {
            if ((*(v0 + 1364) & 1) == 0 || (OUTLINED_FUNCTION_53(), FPSTimelineConverterL3TimeToL2(time2, time), *time2 = *(v405 + 232), (OUTLINED_FUNCTION_341(*(v405 + 248), v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v660[0], v660[1], v679, v694, v708[0], v708[1], v727, v736, v747, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849, *(&v849 + 1), v850[0], v850[1], v851, *(&v851 + 1), v852, v853) & 0x80000000) != 0))
            {
              OUTLINED_FUNCTION_669();
              if (!fpfsi_atOrAfterTimeToPausePlayback(v0) && !*(v405 + 200))
              {
                memset(&rhs, 0, sizeof(rhs));
                OUTLINED_FUNCTION_669();
                *time2 = kGaplessTransitionDeadlineInterval;
                *&time2[16] = 0;
                v406 = OUTLINED_FUNCTION_241();
                v409 = CMTimeSubtract(v408, v406, v407);
                *time2 = rhs;
                *&v867.value = kTimerVariability;
                v867.epoch = 0;
                v417 = OUTLINED_FUNCTION_85(v409, v410, v411, v412, v413, v414, v415, v416, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v660[0], v660[1], v679, v694, v708[0], v708[1], v727, v736, v747, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849);
                CMTimeAdd(v419, v417, v418);
                OUTLINED_FUNCTION_96();
                *time2 = OUTLINED_FUNCTION_263(v420, v421, v422, v423, v424, v425, v426, v427, v522, v534, v546, v557, v569, v580, v592, v604, v616, v628, v639, v651, v664, v675, v690, v702, v713, v723, v732, v741, v751, v761, v770, v779, v788, v796, v805, v813, v821, v830, v834.value, *&v834.timescale, v834.epoch, v835);
                *&time2[16] = v836;
                *&v867.value = kTimerScheduleTime;
                v867.epoch = 0;
                v436 = OUTLINED_FUNCTION_85(v428, v429, v430, v431, v432, v433, v434, v435, v523, v535, v547, v558, v570, v581, v593, v605, v617, v629, v640, v652, v665, v676, v691, v703, v714, v724, v733, v742, v752, v762, v771, v780, v789, v797, v806, v814, v822, v831, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849);
                CMTimeAdd(v438, v436, v437);
                *time2 = *&rhs.value;
                if (OUTLINED_FUNCTION_341(rhs.epoch, v524, v536, v548, v559, v571, v582, v594, v606, v618, v630, v641, v653, v666, v677, v692, v704, v715, v725, v734, v743, v753, v763, v772, v781, v790, v798, v807, v815, v823, v832, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849, *(&v849 + 1), v850[0], v850[1], v851, *(&v851 + 1), v852, v853) < 1)
                {
                  OUTLINED_FUNCTION_401();
                  if (!v149)
                  {
                    v442 = MEMORY[0x1E6960C70];
                    *(v405 + 172) = *MEMORY[0x1E6960C70];
                    *(v405 + 188) = *(v442 + 16);
                    fpfs_CallDispatchHandlerWithItemAndTrack(v243, v405, fpfs_ranDryTimerProc);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_634();
                  if ((*(v405 + 184) & 1) == 0 || (CMTimeMake(time2, 1, 100), *&v867.value = *&v871.value, OUTLINED_FUNCTION_825(v871.epoch, v514, v526, v538[0], v538[1], v561, *(&v561 + 1), v584, v596, v608, v620, *(&v620 + 1), v643, v660[0], v660[1], v679, v694, v708[0], v708[1], v727, v736, v747, v756, v765, v774, v783[0], v783[1], *v800, *&v800[8], *&v800[16], v825, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849, *(&v849 + 1), v850[0], v850[1], v851, *(&v851 + 1), v852, v853), *time2 = *(v405 + 172), (OUTLINED_FUNCTION_237(*(v405 + 188), v525, v537, v549, v560, v572, v583, v595, v607, v619, v631, v642, v654, v667, v678, v693, v705, v716, v726, v735, v744, v754, v764, v773, v782, v791, v799, v808, v816, v824, v833, v834.value, *&v834.timescale, v834.epoch, v835, *(&v835 + 1), v836, v837.value, *&v837.timescale, v837.epoch, v838, v839.value, *&v839.timescale, v839.epoch, v840, v841[0], v841[1], v842, cf, v844, v845, v846, v847, v848[0], v848[1], v849, *(&v849 + 1), v850[0], v850[1], v851, *(&v851 + 1), v852, v853) & 0x80000000) != 0))
                  {
                    v439 = OUTLINED_FUNCTION_670();
                    v440 = *(v405 + 136);
                    *&time[0].value = v439;
                    time[0].epoch = v441;
                    FigSpeedRampTimerScheduleForL2Time(v440, time, 1u);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_670();
                  }
                }
              }
            }
          }
        }
      }
    }

    fpfs_GetItemBufferedDuration(v243);
    v443 = MEMORY[0x1E6960CC0];
    if (v620)
    {
      if ((*(v0 + 471) || ((*(v0 + 1072) ^ v321) & 3) == 0) && *(CMBaseObjectGetDerivedStorage() + 1024))
      {
        OUTLINED_FUNCTION_144();
        do
        {
          OUTLINED_FUNCTION_247();
        }

        while ((!v149 || !*(v484 + 112)) && *(v484 + 24));
      }

      time[0] = v834;
      fpfs_CheckIfLikelyToKeepUpAndNotify();
    }

    v444 = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_180(v444);
    v445 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    v865 = 0;
    v864 = 0u;
    memset(time, 0, sizeof(time));
    memset(time2, 0, 72);
    memset(&v871, 0, sizeof(v871));
    fpfs_GetTime(v0, &v871);
    v869 = *v443;
    v870 = *(v443 + 2);
    memset(&v868, 0, sizeof(v868));
    v446 = OUTLINED_FUNCTION_409();
    fpfs_GetNextTimeToPlay(v446, v447, v448);
    if (!*(v0 + 96))
    {
      goto LABEL_373;
    }

    v449 = *(v0 + 471);
    fpfs_GetItemBufferedDuration(v243);
    if (*(v445 + 108) >= 0.0)
    {
      do
      {
        rhs = v868;
        *v841 = *&time[0].value;
        OUTLINED_FUNCTION_91();
        CMTimeAdd(v459, v457, v458);
        OUTLINED_FUNCTION_495();
      }

      while (!v149);
      OUTLINED_FUNCTION_276();
      CMTimeAdd(v462, v460, v461);
      if (v449)
      {
        goto LABEL_363;
      }

      v456 = fpfsi_PlaybackHasBufferedBeyondForwardEndTime();
LABEL_365:
      v463 = v456 != 0;
    }

    else
    {
      do
      {
        rhs = v868;
        *v841 = *&time[0].value;
        OUTLINED_FUNCTION_91();
        CMTimeSubtract(v452, v450, v451);
        OUTLINED_FUNCTION_495();
      }

      while (!v149);
      OUTLINED_FUNCTION_276();
      CMTimeSubtract(v455, v453, v454);
      if (!v449)
      {
        fpfsi_PlaybackHasBufferedBeyondReverseEndTime();
        goto LABEL_365;
      }

LABEL_363:
      v463 = 1;
    }

    v464 = *(v0 + 96);
    v867 = v868;
    FigAlternatePlaybackBitrateMonitorSetStreamDuration(v464, &v867, time2, v463);
    if (!*(v0 + 912))
    {
      goto LABEL_373;
    }

    FigGetAllocatorForMedia();
    v465 = OUTLINED_FUNCTION_519();
    FigBytePumpGetFigBaseObject(v465);
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v466 = OUTLINED_FUNCTION_621();
      v467(v466);
      if (cf)
      {
        v468 = *(v0 + 1072);
        if ((v468 & 1) == 0)
        {
          if ((v468 & 2) == 0)
          {
            goto LABEL_371;
          }

LABEL_377:
          OUTLINED_FUNCTION_119();
          *v841 = *&time[1].value;
          OUTLINED_FUNCTION_91();
          CMTimeRangeMake(v481, v479, v480);
          OUTLINED_FUNCTION_136();
          FigCMCDHeaderVendorSetLoadedTimeRange(v482, 2, v483);
          if ((*(v0 + 1072) & 4) == 0)
          {
            goto LABEL_373;
          }

LABEL_372:
          OUTLINED_FUNCTION_119();
          *v841 = v864;
          OUTLINED_FUNCTION_91();
          CMTimeRangeMake(v471, v469, v470);
          OUTLINED_FUNCTION_136();
          FigCMCDHeaderVendorSetLoadedTimeRange(v472, 6, v473);
          goto LABEL_373;
        }

        OUTLINED_FUNCTION_119();
        *v841 = *&time[0].value;
        OUTLINED_FUNCTION_91();
        CMTimeRangeMake(v476, v474, v475);
        OUTLINED_FUNCTION_136();
        FigCMCDHeaderVendorSetLoadedTimeRange(v477, 4, v478);
        v468 = *(v0 + 1072);
        if ((v468 & 2) != 0)
        {
          goto LABEL_377;
        }

LABEL_371:
        if ((v468 & 4) != 0)
        {
          goto LABEL_372;
        }

LABEL_373:
        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

LABEL_375:
  OUTLINED_FUNCTION_181();
}

double fpfs_setRanDry(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  *(v1 + 1896) = 0;
  OUTLINED_FUNCTION_402();
  fpfs_EnqueueNotification(v4, v5, v6, v7);
  fpfsi_UpdateResourceSpecifierOnResourceArbiter(a1);
  v8 = OUTLINED_FUNCTION_234();
  fpfs_GetNextTimeToPlay(v8, v9, v10);
  return fpfsi_PrepareToStartWhenLikelyToKeepUp(a1, &v12);
}

uint64_t fpfs_applySoftwareVolume(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_659();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = fpfs_getNext(DerivedStorage, 0);
  if (result)
  {
    result = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (result)
    {
      while (*(result + 48) != 1936684398 || !*(result + 112))
      {
        result = *(result + 24);
        if (!result)
        {
          return result;
        }
      }

      result = fpfs_applySoftwareVolumeToTrack();
      if (v2 > 0.0 && a2 && !result)
      {

        return usleep((v2 * 1000.0 * 1000.0));
      }
    }
  }

  return result;
}

uint64_t fpfs_pauseCurrentItem(uint64_t result)
{
  if (result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    Next = fpfs_getNext(DerivedStorage, 0);

    return fpfsi_pauseItem(Next);
  }

  return result;
}

uint64_t fpfsi_applySoftwareVolume()
{
  OUTLINED_FUNCTION_659();
  v0 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (!v0)
  {
    return 0;
  }

  while (1)
  {
    v1 = *(v0 + 112);
    if (v1 && *(v0 + 48) == 1936684398)
    {
      v2 = v0;
      while (1)
      {
        v2 = *(v2 + 24);
        if (!v2)
        {
          break;
        }

        if (*(v2 + 112) == v1)
        {
          goto LABEL_7;
        }
      }

      result = fpfs_applySoftwareVolumeToTrack();
      if (result)
      {
        return result;
      }
    }

LABEL_7:
    v0 = *(v0 + 24);
    if (!v0)
    {
      return 0;
    }
  }
}

void fpfsi_NowReadyForInspection()
{
  OUTLINED_FUNCTION_649();
  v3 = v2;
  v112 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  v5 = CMBaseObjectGetDerivedStorage();
  *&cf = 0;
  CFRetain(v3);
  if (!*(v0 + 460))
  {
    *(v0 + 460) = 1;
    NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(*v0, v3, v6, v7, v8, v9, v10, v11, @"CurrentDuration", 0);
    v1 = @"ReadyForInspection";
    fpfs_PostNotificationWhenUnlocked(*v0, @"ReadyForInspection", v3, NotificationPayloadForProperties);
    if (NotificationPayloadForProperties)
    {
      CFRelease(NotificationPayloadForProperties);
    }

    if (*(v0 + 2048) == 0.0)
    {
      *(v0 + 2048) = CFAbsoluteTimeGetCurrent();
    }

    if (*(v0 + 2248))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v21 = CFDictionaryCreate(AllocatorForMedia, &kFigPlaybackItemParameter_Properties, (v0 + 2248), 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v21)
      {
        v22 = v21;
        fpfs_PostNotificationWhenUnlocked(*v0, @"ReadyForInspection", v3, v21);
        CFRelease(v22);
      }
    }

    if (*(v0 + 461))
    {
      *(v0 + 461) = 0;
      OUTLINED_FUNCTION_198();
      fpfsi_postSelectedMediaOptionsDidChangeNotification();
    }
  }

  v12 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_258(v12);
  CMBaseObjectGetDerivedStorage();
  if (LOBYTE(v1[58].info))
  {
    goto LABEL_11;
  }

  if (!HIBYTE(v1[14].info))
  {
    if (!FigCFArrayContainsValue())
    {
      goto LABEL_11;
    }

LABEL_10:
    if (BYTE6(v1[14].info))
    {
      goto LABEL_11;
    }

    *v85 = *MEMORY[0x1E6960C70];
    *&duration.value = *MEMORY[0x1E6960C70];
    v23 = *(MEMORY[0x1E6960C70] + 16);
    duration.epoch = v23;
    v24 = CMBaseObjectGetDerivedStorage();
    v25 = v24;
    if (*(v24 + 236))
    {
      v33 = 0;
      v34 = 0;
      duration = *(v24 + 224);
    }

    else if (*(v24 + 1576))
    {
      v103 = *v85;
      *&v104 = v23;
      *v101 = *v85;
      *&v101[16] = v23;
      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v35 = OUTLINED_FUNCTION_489();
        v36(v35);
      }

      if (BYTE12(v103))
      {
        v37 = CMTimeMake(&number, 1, 1000);
        valuePtr_8 = *(&v103 + 1);
        v95 = v104;
        v45 = OUTLINED_FUNCTION_499(v37, v38, v39, v40, v41, v42, v43, v44, value, v79, v81, v83, *v85, *&v85[8], *&v85[16], *&v85[24], *&v85[32], *&v85[40], cf, *(&cf + 1), v103);
        v48 = CMTimeAdd(v47, v45, v46);
        OUTLINED_FUNCTION_693(v48, v49, v50, v51, v52, v53, v54, v55, valuea, v80, v82, v84, v86, v87, v88, v89, v90, v91, cf, *(&cf + 1), *&valuePtr, valuePtr_8, v95, v96, number.value, *&number.timescale, number.epoch, v98, *&duration.value);
        fpfsi_setLastSeekTimeSet(v25, &number);
        v34 = 0;
      }

      else
      {
        v34 = *(v25 + 1576);
      }

      v33 = 0;
    }

    else
    {
      if (*(v24 + 1584))
      {
        goto LABEL_55;
      }

      number.value = 0;
      valuePtr = 0.0;
      FigBaseObject = FigBytePumpGetFigBaseObject(*(v24 + 912));
      v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v27 && !v27(FigBaseObject, 0x1F0B1F1F8, 0, &number) && number.value)
      {
        CFNumberGetValue(number.value, kCFNumberDoubleType, &valuePtr);
        v28 = valuePtr;
        if (valuePtr >= 0.0)
        {
          if (dword_1EAF169F0)
          {
            HIDWORD(cf) = 0;
            BYTE11(cf) = 0;
            OUTLINED_FUNCTION_225();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_134();
            if (!v31)
            {
              v30 = 0;
            }

            if (v30)
            {
              HIDWORD(v83) = v30;
              if (*v25)
              {
                v56 = *v25;
                v57 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v56 = 0;
                v57 = "";
              }

              if (v3)
              {
                v58 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v58 = "";
              }

              *v101 = 136316418;
              *&v101[4] = "fpfsi_getInitialTimeToOpenPump";
              *&v101[12] = 2048;
              *&v101[14] = v56;
              *&v101[22] = 2082;
              *&v101[24] = v57;
              *v102 = 2048;
              *&v102[2] = v3;
              *&v102[10] = 2082;
              *&v102[12] = v58;
              *&v102[20] = 2048;
              *&v102[22] = valuePtr;
              OUTLINED_FUNCTION_87();
              OUTLINED_FUNCTION_23();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v28 = valuePtr;
          }

          CMTimeMakeWithSeconds(&v103, v28, 1000);
          *(v25 + 1472) = v103;
          *(v25 + 1488) = v104;
        }

        CFRelease(number.value);
      }

      if (*(v25 + 1484))
      {
        duration = *(v25 + 1472);
        v103 = *(v25 + 1472);
        *&v104 = *(v25 + 1488);
        fpfsi_setLastSeekTimeSet(v25, &v103);
        v59 = *(v25 + 1472);
        *(v25 + 344) = v59;
        v60 = *(v25 + 1488);
        *(v25 + 360) = v60;
        *(v25 + 368) = v59;
        *(v25 + 384) = v60;
        v33 = 1;
      }

      else
      {
LABEL_55:
        v33 = 0;
      }

      v34 = 0;
    }

    *&v85[16] = duration;
    v61 = fpfsi_SetPumpRate(v0, *(v5 + 108));
    if (!v61)
    {
      v62 = *(v0 + 912);
      v103 = *&v85[16];
      *&v104 = *&v85[32];
      *&duration.value = *v85;
      duration.epoch = v23;
      CMTimeRangeMake(v101, &v103, &duration);
      v63 = *(v0 + 1584);
      v64 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v64)
      {
        v103 = *v101;
        v104 = *&v101[16];
        v105 = *v102;
        v61 = v64(v62, &v103, v34, v63, v33, v0 + 928, v0 + 593);
        if (!v61)
        {
          v72 = *(v0 + 1680);
          if (v72 && FigAlternateIsIFrameOnly(v72))
          {
            v73 = CMBaseObjectGetDerivedStorage();
            v74 = *(v73 + 1680);
            if (!v74 || !FigAlternateIsIFrameOnly(v74) || (*(v73 + 332) & 1) == 0)
            {
              goto LABEL_69;
            }

            if (*(v73 + 1484))
            {
              *(v73 + 1472) = *v85;
              *(v73 + 1488) = v23;
            }

            v75 = *(v73 + 2220);
            CMTimeMakeWithSeconds(&v103, *(v73 + 1528), 1000);
            *v101 = *(v73 + 320);
            *&v101[16] = *(v73 + 336);
            fpfs_IssueSeekToPump(v3, v101, MEMORY[0x1E6960C68], v75, 1, 0, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], &v103, v79, v81, v83, *v85, *&v85[8], *&v85[16], *&v85[24], *&v85[32], *&v85[40], cf, *(&cf + 1), *&valuePtr, valuePtr_8, v95, v96, number.value);
            if (!v76)
            {
LABEL_69:
              fpfs_setIFrameOnlyRate(v3, *(v5 + 108));
            }
          }

          *(v0 + 462) = 1;
          if (*(v0 + 2496) > 0.0 && !*(v0 + 2504) && *(v0 + 40))
          {
            fpfsi_SetupIFramePrefetch();
          }

          if (*(v5 + 80) == v3)
          {
            fpfsi_checkCoordinatedPlaybackCapability(v3);
          }

          fpfsi_EnsureVenueDescriptionMetadataSupplierIfNecessary(v3, v65, v66, v67, v68, v69, v70, v71, value, v79, SWORD2(v79), SBYTE6(v79), HIBYTE(v79), v81, SHIDWORD(v81), v83, *v85, *&v85[4], *&v85[8], *&v85[24], *&v85[32], cf, SLODWORD(valuePtr), valuePtr_8, v95, v96, number.value, *&number.timescale, number.epoch, v98, duration.value, *&duration.timescale, duration.epoch, v100, *v101, *&v101[8], *&v101[16], *&v101[24], *v102, *&v102[8], *&v102[16], *&v102[24], v103, *(&v103 + 1), v104, *(&v104 + 1), v105, *(&v105 + 1), v106, v107, v108, v109, v110, v111);
          if (!v61)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v61 = 4294954514;
      }
    }

    FigCreateErrorForOSStatus(v61, &cf);
    fpfsi_NotReadyForInspection(v3, cf);
    goto LABEL_11;
  }

  v13 = OUTLINED_FUNCTION_249();
  Next = fpfs_getNext(v13, v14);
  if (!Next)
  {
    goto LABEL_11;
  }

  if (Next == v3)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v16 = OUTLINED_FUNCTION_292();
    v18 = fpfs_getNext(v16, v17);
    if (!v18)
    {
      break;
    }

    if (v18 == v3)
    {
      if (fpfsi_PumpHasEndedOrBufferedBeyondEndTime())
      {
        goto LABEL_10;
      }

      break;
    }
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v3);
  OUTLINED_FUNCTION_651();
}

void fpfs_notifyExternalStartupTasksOfEvents()
{
  OUTLINED_FUNCTION_193();
  v56 = v0;
  v2 = v1;
  v4 = v3;
  v57 = v5;
  v7 = v6;
  v74 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Next = fpfs_getNext(DerivedStorage, 0);
  v54 = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 944);
  if (v9)
  {
    Count = CFArrayGetCount(v9);
    if (Next)
    {
      if (Count >= 1)
      {
        v11 = 0;
        v12 = MEMORY[0x1E695E4D0];
        if (!v4)
        {
          v12 = MEMORY[0x1E695E4C0];
        }

        v51 = *v12;
        *&v10 = 136316418;
        v46 = v10;
        *&v10 = 136316162;
        v49 = v10;
        *&v10 = 136315906;
        v50 = v10;
        v55 = @"CurrentRate";
        v53 = DerivedStorage;
        HIDWORD(v52) = v2;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 944), v11);
          v63 = 0;
          cf = 0;
          if (FigPlayerStartupTaskCopyRequiredParameters(ValueAtIndex, &cf))
          {
            break;
          }

          NotificationPayloadForProperties = FPSupport_CreateNotificationPayloadForProperties(v7, Next, cf);
          v15 = FigCFArrayContainsValue();
          if (v2 && v15)
          {
            FigCFDictionarySetInt32();
          }

          v16 = FigCFArrayContainsValue();
          if (v16 && (*(v56 + 12) & 1) != 0)
          {
            v72 = OUTLINED_FUNCTION_485(v16, v17, v18, v19, v20, v21, v22, v23, v44, v45, v46, *(&v46 + 1), v47, v48, v49, *(&v49 + 1), v50, *(&v50 + 1), v51, v52, v53, v54, v55, v56);
            v73 = *(v24 + 16);
            FigCFDictionarySetCMTime();
          }

          if (FigCFArrayContainsValue())
          {
            OUTLINED_FUNCTION_480();
            FigCFDictionarySetFloat32();
          }

          if (FigCFArrayContainsValue())
          {
            FigCFDictionarySetValue();
          }

          if (FigCFArrayContainsValue())
          {
            fpfs_GetNextTimeToPlay(v54, 0, &v72);
            OUTLINED_FUNCTION_481();
            FigCFDictionarySetCMTime();
          }

          v25 = FigPlayerStartupTaskNotifyOfEvents(ValueAtIndex, v57, NotificationPayloadForProperties, &v63);
          if (v25)
          {
            v26 = v25;
            OUTLINED_FUNCTION_595();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
            OUTLINED_FUNCTION_121();
            if (v29)
            {
              v30 = v28;
            }

            else
            {
              v30 = v61;
            }

            if (v30)
            {
              if (v7)
              {
                CMBaseObjectGetDerivedStorage();
              }

              v64 = v50;
              OUTLINED_FUNCTION_804();
              v65 = 2082;
              v66 = v31;
              v67 = 1024;
              v68 = v26;
              OUTLINED_FUNCTION_72();
              OUTLINED_FUNCTION_27();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_414();
            v63 = 1;
            v2 = HIDWORD(v52);
            DerivedStorage = v53;
          }

          if (NotificationPayloadForProperties)
          {
            CFRelease(NotificationPayloadForProperties);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          CFArrayGetCount(*(DerivedStorage + 952));
          v32 = OUTLINED_FUNCTION_265();
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v32, v75, ValueAtIndex);
          if (v63)
          {
            if (FirstIndexOfValue != -1)
            {
              CFArrayRemoveValueAtIndex(*(DerivedStorage + 952), FirstIndexOfValue);
              if (dword_1EAF169F0)
              {
                OUTLINED_FUNCTION_595();
                v34 = OUTLINED_FUNCTION_497();
                os_log_type_enabled(v34, type);
                OUTLINED_FUNCTION_121();
                if (v29)
                {
                  v36 = v35;
                }

                else
                {
                  v36 = v61;
                }

                if (v36)
                {
                  if (v7)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  FigPlayerStartupTaskGetTaskDescription(ValueAtIndex);
                  v64 = v49;
                  OUTLINED_FUNCTION_295();
                  v69 = v39;
                  OUTLINED_FUNCTION_72();
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_1();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }
          }

          else if (FirstIndexOfValue == -1)
          {
            CFArrayAppendValue(*(DerivedStorage + 952), ValueAtIndex);
            if (dword_1EAF169F0)
            {
              OUTLINED_FUNCTION_595();
              v48 = OUTLINED_FUNCTION_497();
              os_log_type_enabled(v48, type);
              OUTLINED_FUNCTION_176();
              if (v29)
              {
                v38 = v37;
              }

              else
              {
                v38 = v61;
              }

              if (v38)
              {
                if (v7)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                FigPlayerStartupTaskGetTaskDescription(ValueAtIndex);
                v40 = OUTLINED_FUNCTION_297();
                WaitingState = FigPlayerStartupTaskGetWaitingState(v40);
                FigPlayerPlaybackStateGetDescription(WaitingState);
                v64 = v46;
                OUTLINED_FUNCTION_295();
                v69 = v61;
                v70 = v42;
                v71 = v43;
                OUTLINED_FUNCTION_72();
                OUTLINED_FUNCTION_25();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_420();
            }
          }

          ++v11;
        }

        while (Count != v11);
      }
    }
  }

  OUTLINED_FUNCTION_191();
}

void fpfs_EnqueueCurrentItemDidChangeNotification()
{
  OUTLINED_FUNCTION_400();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_519();
  if (*CMBaseObjectGetDerivedStorage() == v1)
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      if (v1)
      {
        v3 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v3 = "";
      }

      strncpy(__dst, v3, 8uLL);
      if (v2)
      {
        v4 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v4 = "";
      }

      strncpy(__dst, v4, 8uLL);
      OUTLINED_FUNCTION_197();
      kdebug_trace();
    }

    v5 = OUTLINED_FUNCTION_266();
    v13 = fpfs_CreateCurrentItemDidChangeNotificationPayloadWithProperties(v5, v6, v7, v8, v9, v10, v11, v12);
    fpfs_EnqueueNotification(v1, @"CurrentItemDidChange", v1, v13);
    *(v0 + 704) = 0;
    v14 = *(v0 + 696);
    if (v14)
    {
      CFRelease(v14);
      *(v0 + 696) = 0;
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }
}

void fpfsi_checkCoordinatedPlaybackCapability(const void *a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 3256);
  OUTLINED_FUNCTION_107(MEMORY[0x1E6960C68]);
  if (*(v3 + 912))
  {
    v4 = v3;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    AllocatorForMedia = FigGetAllocatorForMedia();
    Current = CFAbsoluteTimeGetCurrent();
    v7 = CFDateCreate(AllocatorForMedia, Current);
    if (*(*(CMBaseObjectGetVTable() + 16) + 40))
    {
      v8 = OUTLINED_FUNCTION_184();
      v10 = v9(v8) != -12649;
    }

    else
    {
      v10 = 1;
    }

    fpfsi_GetDuration(a1, &v20);
    OUTLINED_FUNCTION_29();
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10;
    }

    *(v4 + 3256) = v12;
    if (v2 != v12)
    {
      v13 = OUTLINED_FUNCTION_802();
      Mutable = CFDictionaryCreateMutable(v13, v14, v15, v16);
      if (Mutable)
      {
        v18 = Mutable;
        v19 = MEMORY[0x1E695E4D0];
        if (!*(v4 + 3256))
        {
          v19 = MEMORY[0x1E695E4C0];
        }

        CFDictionarySetValue(Mutable, @"IsCoordinatedPlaybackSupported", *v19);
        fpfs_EnqueueNotification(*v4, @"CoordinatePlaybackSupportChanged", a1, v18);
        CFRelease(v18);
      }
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

void fpfsi_UpdateSourceFormatInfoIfNecessary(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v4 = CMBaseObjectGetDerivedStorage();
  if (*(v4 + 80) == a1)
  {
    if (*(v1 + 40))
    {
      v5 = v4;
      FigGetAllocatorForMedia();
      v6 = OUTLINED_FUNCTION_178();
      FigAlternateSelectionBossCopyProperty(v6, v7, v8, v9);
      FigGetAllocatorForMedia();
      v10 = OUTLINED_FUNCTION_266();
      FigAlternateSelectionBossCopyProperty(v10, v11, v12, v13);
      if (*(v5 + 536))
      {
        if (FigCFEqual())
        {
          FigCFEqual();
        }

        if (*(v5 + 536))
        {
          v14 = *(CMBaseObjectGetVTable() + 16);
          if (v14)
          {
            if (*(v14 + 56))
            {
              v15 = OUTLINED_FUNCTION_236();
              v16(v15);
            }
          }
        }
      }
    }
  }
}

void fpfs_DeferredPumpTransferCompleted()
{
  OUTLINED_FUNCTION_649();
  v1 = v0;
  v3 = v2;
  v211 = *MEMORY[0x1E69E9840];
  v4 = OUTLINED_FUNCTION_774();
  fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(v4, v5, v6, v7, v8, v9, v10, v11, value, v166, v168, v170, v172, v175, v178, SBYTE2(v178), BYTE3(v178), HIDWORD(v178), v179, SHIDWORD(v179), v180, SWORD2(v180), v181, *(&v181 + 1), v182, v183, 0, 0, cf[0], cf[1], v187, v188, v189, type[0], *v191, *&v191[8], *&v191[16], v192, *v193, *&v193[8], *&v193[16], *&v193[24], v194, v195, v196.value, *&v196.timescale, v196.epoch, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212);
  v12 = v184;
  if (v13)
  {
    goto LABEL_188;
  }

  v173 = v1;
  OUTLINED_FUNCTION_104(MEMORY[0x1E6960C70]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v176 = CMBaseObjectGetDerivedStorage();
  v180 = 0;
  v15 = *(DerivedStorage + 920);
  if (v15)
  {
    v16 = CFRetain(v15);
  }

  else
  {
    v16 = 0;
  }

  v179 = v16;
  if (dword_1EAF169F0)
  {
    v174 = DerivedStorage;
    LODWORD(cf[0]) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_233();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      if (v185)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v171 = v3;
      if (v184)
      {
        v21 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v21 = "";
      }

      v22 = *(DerivedStorage + 912);
      if (v16)
      {
        CFErrorGetCode(v16);
      }

      *v191 = 136316931;
      *&v191[4] = "fpfs_DeferredPumpTransferCompleted";
      *&v191[12] = 2048;
      *&v191[14] = v185;
      OUTLINED_FUNCTION_749();
      *&v193[2] = v184;
      *&v193[10] = v23;
      *&v193[12] = v21;
      *&v193[20] = v24;
      *&v193[22] = v22;
      *&v193[30] = 2113;
      v194 = v16;
      LOWORD(v195) = 1024;
      *(&v195 + 2) = v25;
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_282();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_467();
  }

  if (v16)
  {
    v140 = 0;
    goto LABEL_181;
  }

  if (!*(DerivedStorage + 912))
  {
    v140 = 0;
    goto LABEL_213;
  }

  v26 = CMBaseObjectGetDerivedStorage();
  if (*(v26 + 912))
  {
    v27 = v26;
    AllocatorForMedia = FigGetAllocatorForMedia();
    if (v184)
    {
      v29 = (CMBaseObjectGetDerivedStorage() + 3096);
    }

    else
    {
      v29 = "";
    }

    v30 = CFStringCreateWithCString(AllocatorForMedia, v29, 0x600u);
    v31 = FigGetAllocatorForMedia();
    v32 = FigAlternateSelectionBossCreate(v31, (v27 + 40));
    if (!v32)
    {
      __copy_constructor_8_8_pa0_38126_0_pa0_35993_8_pa0_4849_16(&v196, fpfsi_AlternateSelectionBossSetup_callbacks);
      v33 = OUTLINED_FUNCTION_618();
      v32 = FigAlternateSelectionBossAddDelegate(v33, v34, v35, 0);
      if (!v32)
      {
        v32 = FigAlternateSelectionBossSetProperty(*(v27 + 40), @"loggingID", v30);
        if (!v32)
        {
          *(v27 + 48) = 0;
          FigBytePumpGetFigBaseObject(*(v27 + 912));
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v36 = OUTLINED_FUNCTION_619();
            v37(v36);
          }

          if (*(v27 + 2416))
          {
            v38 = fpfsi_setPreferredBitrateForExpensiveNetworks();
          }

          else
          {
            v38 = 0;
          }

          if (!*(v27 + 2552))
          {
            if (!v30)
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }

          v32 = fpfsi_setResolutionCapForExpensiveNetworks();
        }
      }
    }

    v38 = v32;
    if (v30)
    {
LABEL_35:
      CFRelease(v30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_79();
    v38 = FigSignalErrorAtGM();
  }

LABEL_36:
  if (v38)
  {
    goto LABEL_204;
  }

  if (*(DerivedStorage + 2376))
  {
    FigBytePumpGetFigBaseObject(*(DerivedStorage + 912));
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v39 = OUTLINED_FUNCTION_619();
      v40(v39);
    }
  }

  v41 = *MEMORY[0x1E695E4D0];
  v42 = *MEMORY[0x1E695E4C0];
  FigBytePumpGetFigBaseObject(*(DerivedStorage + 912));
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v43 = OUTLINED_FUNCTION_793();
    v44(v43);
  }

  FigBaseObject = FigBytePumpGetFigBaseObject(*(DerivedStorage + 912));
  v46 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v46)
  {
    v46(FigBaseObject, 0x1F0B1F638, @"StreamPlayer");
  }

  if (*(DerivedStorage + 3201))
  {
    v47 = v41;
  }

  else
  {
    v47 = v42;
  }

  FigBytePumpGetFigBaseObject(*(DerivedStorage + 912));
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v48 = OUTLINED_FUNCTION_793();
    v49(v48);
  }

  if (*(DerivedStorage + 644))
  {
    v50 = *MEMORY[0x1E695E480];
    v196 = *(DerivedStorage + 632);
    v47 = CMTimeCopyAsDictionary(&v196, v50);
    FigBytePumpGetFigBaseObject(*(DerivedStorage + 912));
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v51 = OUTLINED_FUNCTION_793();
      v52(v51);
    }

    if (v47)
    {
      CFRelease(v47);
    }
  }

  if (!*(DerivedStorage + 2260) && !*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    *(DerivedStorage + 2260) = 50;
  }

  v53 = DerivedStorage;
  v196.value = 0;
  v54 = CMBaseObjectGetDerivedStorage();
  v55 = kFigFormatReaderCreationDateParameter_Value;
  if (v54)
  {
    v47 = v54;
    v56 = *(v54 + 912);
    if (v56)
    {
      FigGetAllocatorForMedia();
      FigBytePumpGetFigBaseObject(v56);
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v57 = OUTLINED_FUNCTION_543();
        v58(v57);
        if (v196.value)
        {
          *(v47 + 552) = FigRCLGetNumberWithDefault(v196.value, @"allowDownloadPerfReports");
          *(v47 + 554) = FigRCLGetNumberWithDefault(v196.value, @"allowProgressiveSwitchUp");
          *(v47 + 555) = FigRCLGetNumberWithDefault(v196.value, @"allowProgressiveStartup");
          *(v47 + 556) = FigRCLGetNumberWithDefault(v196.value, @"allowProgressiveResume");
          *(v47 + 557) = FigRCLGetNumberWithDefault(v196.value, @"suppressUnknownCodecVariants");
        }
      }
    }

    if (*(v47 + 2568))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_610();
        OUTLINED_FUNCTION_446();
        v59();
      }

      if (*(v47 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_620();
        OUTLINED_FUNCTION_504();
        v60();
      }

      if (*(v47 + 2568))
      {
        v47 = *(v47 + 556);
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v61 = OUTLINED_FUNCTION_620();
          v62(v61);
        }
      }
    }

    if (v196.value)
    {
      CFRelease(v196.value);
    }
  }

  v196.value = 0;
  if (v12)
  {
    v47 = CMBaseObjectGetDerivedStorage();
    *(v47 + 2284) = 110;
    *(v47 + 2288) = 0x3FF8000000000000;
    *(v47 + 544) = 0x8000000;
    v63 = *(v47 + 912);
    if (!v63)
    {
      goto LABEL_81;
    }

    FigGetAllocatorForMedia();
    FigBytePumpGetFigBaseObject(v63);
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      goto LABEL_81;
    }

    v64 = OUTLINED_FUNCTION_543();
    v65(v64);
    if (!v196.value)
    {
      goto LABEL_81;
    }

    v66 = FigRCLGetNumberWithDefault(v196.value, @"synchronizedWatermarksHighWaterMaxSecs");
    if ((v66 - 1) >= 0x31)
    {
      *(v47 + 2284) = v66;
    }

    *(v47 + 2288) = FigRCLGetDoubleWithDefault(v196.value, @"synchronizedWatermarksHighWaterScaleFactor");
    v67 = FigRCLGetNumberWithDefault(v196.value, @"bufferAheadMaxMB");
    if ((v67 & 0x80000000) == 0)
    {
      v68 = (v67 << 20);
      *(v47 + 544) = v68;
    }

    else
    {
LABEL_81:
      v68 = *(v47 + 544);
    }

    if (v68)
    {
      v69 = *(v47 + 536);
      if (v68 < v69)
      {
        *(v47 + 544) = v69;
      }
    }

    if (v196.value)
    {
      CFRelease(v196.value);
    }
  }

  v196.value = 0;
  v70 = CMBaseObjectGetDerivedStorage();
  if (v70)
  {
    v47 = v70;
    if (*(v70 + 912))
    {
      if (CelestialIs1GBAudioAccessory())
      {
        v71 = *(v47 + 912);
        FigGetAllocatorForMedia();
        FigBytePumpGetFigBaseObject(v71);
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v72 = OUTLINED_FUNCTION_543();
          v73(v72);
          if (v196.value)
          {
            *(v47 + 536) = (FigRCLGetNumberWithDefault(v196.value, @"cacheSize1GBAudioAccessoryMB") << 20);
            if (v196.value)
            {
              CFRelease(v196.value);
            }
          }
        }
      }
    }
  }

  v74 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_740(v74);
  v75 = CMBaseObjectGetDerivedStorage();
  if (v75)
  {
    v76 = *(v75 + 24);
  }

  else
  {
    v76 = 0;
  }

  v196.value = &fpfsi_highSpeedHighPowerTransportChangedCallback;
  *&v196.timescale = fpfsi_expensiveNetworkChangedCallback;
  fpfsi_cleanupNetworkCostMonitor();
  if (*(v47 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    OUTLINED_FUNCTION_305();
    v77();
  }

  v78 = *(v47 + 912);
  v79 = FigGetAllocatorForMedia();
  v80 = FigBytePumpGetFigBaseObject(v78);
  v81 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v81)
  {
    v55 = (v47 + 2272);
    if (!v81(v80, 0x1F0B1F898, v79, v47 + 2272))
    {
      v82 = *v55;
      if (*v55)
      {
        v83 = *(v47 + 16);
        v84 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v84)
        {
          v84(v82, v83, &v196, v76);
        }

        v85 = *(v47 + 2272);
        v86 = *(v47 + 2560);
        v87 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v87)
        {
          v87(v85, 0x1F0B5F738, v86);
        }

        v88 = *(v47 + 2272);
        if (*(v47 + 1896))
        {
          v89 = v42;
        }

        else
        {
          v89 = v41;
        }

        v90 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v90)
        {
          v90(v88, 0x1F0B5F758, v89);
        }

        v91 = *(v47 + 2272);
        v92 = v42;
        if (*(v47 + 2284) >= 1)
        {
          if (*(v47 + 2280))
          {
            v92 = v41;
          }

          else
          {
            v92 = v42;
          }
        }

        v93 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v93)
        {
          v93(v91, 0x1F0B5F798, v92);
        }

        fpfsi_updateNetworkCostMonitorMaximumMediaBitrate();
      }
    }
  }

  fpfsi_setupCMCDHeaderVendor();
  if (*(v176 + 872) == 1)
  {
    FigBytePumpGetFigBaseObject(*(v53 + 912));
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v94 = OUTLINED_FUNCTION_516();
      v95(v94);
    }

    FigBytePumpGetFigBaseObject(*(v53 + 912));
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v96 = OUTLINED_FUNCTION_619();
      v97(v96);
    }
  }

  v98 = CMBaseObjectGetDerivedStorage();
  v196.value = 0;
  type[0] = OS_LOG_TYPE_DEFAULT;
  *v191 = 0;
  cf[0] = 0;
  if (*(v98 + 912))
  {
    FigGetAllocatorForMedia();
    v99 = OUTLINED_FUNCTION_798();
    CMBaseObject = FigAssetGetCMBaseObject(v99);
    v101 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v101 && !v101(CMBaseObject, @"assetProperty_CreationOptionsDictionary", v55, &v196) && v196.value)
    {
      FigCFDictionaryGetURLValue();
      FigCFDictionaryGetBooleanIfPresent();
    }
  }

  else
  {
    OUTLINED_FUNCTION_79();
    FigSignalErrorAtGM();
  }

  if (v196.value)
  {
    CFRelease(v196.value);
  }

  v12 = v184;
  v102 = fpfsi_CoordinateWithAssetDownloader();
  if (v102 || (CMBaseObjectGetDerivedStorage(), CMNotificationCenterGetDefaultLocalCenter(), OUTLINED_FUNCTION_264(), OUTLINED_FUNCTION_186(), v102 = FigNotificationCenterAddWeakListener(), v102))
  {
    v38 = v102;
    goto LABEL_204;
  }

  fpfsi_ConfigurePumpForPlayerAndRelock();
  if (!FigRetainProxyIsInvalidated())
  {
    v103 = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_294(v103);
    v104 = CMBaseObjectGetDerivedStorage();
    v105 = *MEMORY[0x1E6960CC0];
    v196 = **&MEMORY[0x1E6960CC0];
    v189 = 0;
    *type = 0;
    v188 = 0;
    if (!MEMORY[0x390])
    {
      v38 = 0;
      goto LABEL_164;
    }

    v106 = v104;
    *v177 = v105;
    MEMORY[0x7C8] = CFAbsoluteTimeGetCurrent();
    MEMORY[0xBC0] = CFAbsoluteTimeGetCurrent();
    MEMORY[0x830] = 0;
    if (*(v106 + 458))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_291();
      OUTLINED_FUNCTION_186();
      FigNotificationCenterAddWeakListener();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_291();
    OUTLINED_FUNCTION_186();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_174();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_174();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_174();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_174();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_174();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_174();
    FigGetAllocatorForMedia();
    v107 = OUTLINED_FUNCTION_604();
    FigBytePumpGetFigBaseObject(v107);
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v108 = OUTLINED_FUNCTION_619();
      v109(v108);
    }

    *v191 = 0;
    if (!MEMORY[0xC10])
    {
      if (MEMORY[0x390] && (v110 = FigGetAllocatorForMedia(), (Mutable = CFDictionaryCreateMutable(v110, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0))
      {
        v112 = Mutable;
        FigGetAllocatorForMedia();
        v113 = OUTLINED_FUNCTION_611();
        FigBytePumpGetFigBaseObject(v113);
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v114 = OUTLINED_FUNCTION_516();
          v116 = v115(v114);
          v117 = *v191;
          if (!v116)
          {
            CFDictionarySetValue(v112, @"FBP_StoreBagConfiguration", *v191);
            v118 = FigGetAllocatorForMedia();
            FigBandwidthPredictorCreate(v118, v112, 0xC10);
            v117 = *v191;
          }

          if (v117)
          {
            CFRelease(v117);
          }
        }

        CFRelease(v112);
      }

      else
      {
        OUTLINED_FUNCTION_79();
        FigSignalErrorAtGM();
      }
    }

    v119 = MEMORY[0x390];
    v120 = MEMORY[0x10];
    v121 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (v121)
    {
      v122 = v121(v119, fpfs_BytePumpFn, fpfsi_DateMappingCallback, v120);
      if (v122)
      {
        goto LABEL_215;
      }

      v123 = MEMORY[0x390];
      v124 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v124)
      {
        v122 = v124(v123);
        if (!v122)
        {
          FigGetAllocatorForMedia();
          v125 = OUTLINED_FUNCTION_617();
          v38 = FigAlternateSelectionBossCopyProperty(v125, v126, v127, v128);
          if (MEMORY[0x78])
          {
            CFRelease(MEMORY[0x78]);
            MEMORY[0x78] = 0;
          }

          v129 = MEMORY[0x390];
          FigGetAllocatorForMedia();
          FigBytePumpGetFigBaseObject(v129);
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v136 = OUTLINED_FUNCTION_793();
            v137(v136);
          }

          if (v38 || (fpfsi_MediaSelectionArrayChangedCallback(MEMORY[0x28], MEMORY[0x10]), FigGetAllocatorForMedia(), v148 = OUTLINED_FUNCTION_617(), v38 = FigAlternateSelectionBossCopyProperty(v148, v149, v150, v151), v38))
          {
            if (v38 != -15514)
            {
              goto LABEL_162;
            }
          }

          else if (v189 && CFArrayGetCount(v189))
          {
            fpfsi_AlternateListChangedCallback(MEMORY[0x28], MEMORY[0x10]);
          }

          fpfsi_RTCReportingReportIRATEventIfNeeded(0, 800, v130, v131, v132, v133, v134, v135, valuea, v167, v169, v171, v173, v174, v177[0], v177[1], v179, v180);
          if (MEMORY[0x390])
          {
            v38 = 0;
          }

          else
          {
            v38 = 4294954371;
          }

LABEL_162:
          if (v188)
          {
            CFRelease(v188);
          }

LABEL_164:
          if (v189)
          {
            CFRelease(v189);
          }

          if (!v38)
          {
            v138 = FigGetAllocatorForMedia();
            v139 = CFArrayCreateMutable(v138, 0, MEMORY[0x1E695E9C0]);
            v140 = v139;
            if (v139)
            {
              CFArrayAppendValue(v139, @"Duration");
              if (*(v53 + 144))
              {
                CFArrayGetCount(*(v53 + 144));
                v141 = OUTLINED_FUNCTION_293();
                v213.location = 0;
                CFArrayAppendArray(v141, v142, v213);
              }

              if (*(*(CMBaseObjectGetVTable() + 16) + 16))
              {
                OUTLINED_FUNCTION_618();
                OUTLINED_FUNCTION_496();
                v144 = v143();
                if (v144)
                {
LABEL_214:
                  v38 = v144;
                  goto LABEL_180;
                }

                if (!fpfsi_GetDuration(v184, &v181))
                {
                  fpfsi_NowReadyForInspection();
                }

                if (*(v53 + 912))
                {
                  fpfsi_UpdatePrefersConcurrentSwitching();
                  FigGetAllocatorForMedia();
                  v145 = OUTLINED_FUNCTION_413();
                  FigBytePumpGetFigBaseObject(v145);
                  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
                  {
                    v146 = OUTLINED_FUNCTION_308();
                    if (!v147(v146))
                    {
                      OUTLINED_FUNCTION_601();
                      v152 = OUTLINED_FUNCTION_178();
                      NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v152, v153, v154, v155, v156, v157, v158, v159, valuea, v167);
                      v161 = OUTLINED_FUNCTION_444();
                      fpfs_EnqueueNotification(v161, v162, v163, NotificationPayloadForProperties);
                      if (NotificationPayloadForProperties)
                      {
                        CFRelease(NotificationPayloadForProperties);
                      }
                    }
                  }

                  if (v180)
                  {
                    CFRelease(v180);
                  }

                  goto LABEL_181;
                }

LABEL_213:
                OUTLINED_FUNCTION_79();
                v144 = FigSignalErrorAtGM();
                if (!v144)
                {
                  goto LABEL_181;
                }

                goto LABEL_214;
              }

              v38 = 4294954514;
            }

            else
            {
              v38 = 4294954510;
            }

LABEL_180:
            FigCreateErrorForOSStatus(v38, &v179);
LABEL_181:
            if (v179)
            {
              fpfsi_NotReadyForInspection(v12, v179);
            }

            fpfs_UnlockAndPostNotificationsWithCaller(v185);
            if (v140)
            {
              CFRelease(v140);
            }

            goto LABEL_185;
          }

LABEL_204:
          v140 = 0;
          goto LABEL_180;
        }

LABEL_215:
        v38 = v122;
        goto LABEL_162;
      }
    }

    v38 = 4294954514;
    goto LABEL_162;
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v185);
LABEL_185:
  if (v179)
  {
    CFRelease(v179);
  }

  v12 = v184;
LABEL_188:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v185)
  {
    CFRelease(v185);
  }

  FigRetainProxyRelease();
  OUTLINED_FUNCTION_651();
}

uint64_t fpfsi_CoordinateWithAssetDownloader()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_518();
  if (!*(v1 + 912))
  {
    OUTLINED_FUNCTION_303();
    v2 = FigSignalErrorAtGM();
LABEL_22:
    v7 = v2;
    goto LABEL_12;
  }

  if (!*(v0 + 2897))
  {
    v2 = FigAssetDownloadCoordinatorMarkAssetForInteractivity(*(v0 + 32));
    if (!v2)
    {
      v2 = FigAssetDownloadCoordinatorCopyDestinationURLForAsset(*(v0 + 32), &v10);
      if (!v2)
      {
        if (v10)
        {
          goto LABEL_20;
        }

        FigGetAllocatorForMedia();
        v3 = OUTLINED_FUNCTION_413();
        FigAssetGetCMBaseObject(v3);
        if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v7 = 4294954514;
          goto LABEL_12;
        }

        v4 = OUTLINED_FUNCTION_308();
        v2 = v5(v4);
        if (!v2)
        {
          if (FigCFURLIsLocalResource())
          {
            v6 = cf;
            cf = 0;
            v10 = v6;
            if (!v6)
            {
LABEL_10:
              v7 = 0;
              *(v0 + 2897) = 1;
              goto LABEL_12;
            }
          }

          else if (!v10)
          {
            goto LABEL_10;
          }

LABEL_20:
          fpfsi_StartDownloadingToURL(v0);
          goto LABEL_10;
        }
      }
    }

    goto LABEL_22;
  }

  v7 = 0;
LABEL_12:
  if (!*(v0 + 2897))
  {
    FigAssetDownloadCoordinatorUnmarkAssetForInteractivity(*(v0 + 32));
  }

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

void fpfsi_UpdatePrefersConcurrentSwitching()
{
  if (*(CMBaseObjectGetDerivedStorage() + 912))
  {
    FigGetAllocatorForMedia();
    v0 = OUTLINED_FUNCTION_179();
    FigBytePumpGetFigBaseObject(v0);
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v1 = OUTLINED_FUNCTION_188();
      v2(v1);
    }
  }
}

uint64_t fpfsi_setPreferredBitrateForExpensiveNetworks()
{
  OUTLINED_FUNCTION_433();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  v1 = DerivedStorage;
  v2 = (DerivedStorage + 104);
  v3 = *(DerivedStorage + 104);
  if (v3)
  {
    goto LABEL_21;
  }

  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_766();
  v7 = FigAlternateFilterMonitorCreateForExpensiveNetwork(v4, v5, v6);
  if (v7)
  {
    return v7;
  }

  if (!*v2)
  {
    return 4294954434;
  }

LABEL_21:
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v8 = OUTLINED_FUNCTION_515();
    v10 = v9(v8);
  }

  else
  {
    v10 = 4294954514;
  }

  v11 = *(v1 + 2568);
  FigCFNumberGetSInt32();
  if (v11 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v12 = OUTLINED_FUNCTION_722();
    v13(v12);
  }

  if (!v3)
  {
    v14 = FigAlternateSelectionBossAddMonitor(*(v1 + 40), *(v1 + 104));
    if (v14)
    {
      return v14;
    }

    else
    {
      return v10;
    }
  }

  return v10;
}

uint64_t fpfsi_setResolutionCapForExpensiveNetworks()
{
  OUTLINED_FUNCTION_433();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  v2 = DerivedStorage;
  v3 = (DerivedStorage + 112);
  v4 = *(DerivedStorage + 112);
  if (v4)
  {
    goto LABEL_24;
  }

  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_766();
  v8 = FigAlternateFilterMonitorCreateForExpensiveNetwork(v5, v6, v7);
  if (v8)
  {
    return v8;
  }

  if (!*v3)
  {
    return 4294954434;
  }

LABEL_24:
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v9 = OUTLINED_FUNCTION_515();
    v11 = v10(v9);
  }

  else
  {
    v11 = 4294954514;
  }

  v18 = *MEMORY[0x1E695F060];
  CGSizeMakeWithDictionaryRepresentation(v0, &v18);
  if (*(v2 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v12 = OUTLINED_FUNCTION_113();
    v13(v12);
  }

  if (*(v2 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v14 = OUTLINED_FUNCTION_113();
    v15(v14);
  }

  if (!v4)
  {
    v16 = FigAlternateSelectionBossAddMonitor(*(v2 + 40), *(v2 + 112));
    if (v16)
    {
      return v16;
    }

    else
    {
      return v11;
    }
  }

  return v11;
}

void fpfsi_UpdateValidAlternateListAndSuggestAnAlternate()
{
  OUTLINED_FUNCTION_647();
  v36 = v2;
  v37 = v3;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_699();
  v35 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage;
  if (v1)
  {
    v9 = *(DerivedStorage + 1664);
    if (v9)
    {
      CFRelease(v9);
      *(v8 + 1664) = 0;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    *(v8 + 1664) = CFArrayCreateMutableCopy(AllocatorForMedia, 0, v1);
  }

  if (*(v8 + 49))
  {
    v11 = *(v8 + 1664);
    if (v11)
    {
      if (CFArrayGetCount(v11) >= 1)
      {
        CFArrayGetValueAtIndex(*(v8 + 1664), 0);
        v12 = OUTLINED_FUNCTION_576();
        *(v8 + 1712) = fpfs_audioOnlyValidAlternateList(v12);
        if (v6)
        {
          *v6 = v4;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM();
    }
  }

  else if (dword_1EAF169F0)
  {
    v25 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_40();
    if (v1)
    {
      v17 = *v8;
      if (*v8)
      {
        v18 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v18 = "";
      }

      if (v0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v26 = 136316162;
      OUTLINED_FUNCTION_545();
      v27 = v17;
      v28 = 2082;
      v29 = v18;
      v30 = v19;
      v31 = v0;
      v32 = 2082;
      v33 = v20;
      OUTLINED_FUNCTION_145();
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_456();
    }

    OUTLINED_FUNCTION_1();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  theArray = 0;
  if (*(v8 + 552))
  {
    v13 = *(v8 + 1664);
    if (v13)
    {
      if (CFArrayGetCount(v13) >= 1)
      {
        v26 = 0;
        *type = 0;
        v25 = -1;
        v22 = 0;
        v23 = -1;
        v21 = -1;
        if (*(v8 + 128))
        {
          FigGetAllocatorForMedia();
          OUTLINED_FUNCTION_398();
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v14 = OUTLINED_FUNCTION_444();
            v15(v14);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_646();
}

void fpfsi_UpdateValidAlternateListAndEvaluateCurrentAlternateAgaintValidAlternateList()
{
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_565();
  v317 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_592(DerivedStorage);
  v299 = CMBaseObjectGetDerivedStorage();
  v304 = 0;
  CurrentAudioPersistentIDFromMediaOption = fpfsi_GetCurrentAudioPersistentIDFromMediaOption();
  if (*(v3 + 49))
  {
    v6 = CurrentAudioPersistentIDFromMediaOption;
    v7 = *(v3 + 1664);
    if (v7 && CFArrayGetCount(v7))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      MutableCopy = CFArrayCreateMutableCopy(AllocatorForMedia, 0, *(v3 + 1664));
    }

    else
    {
      MutableCopy = 0;
    }

    OUTLINED_FUNCTION_627();
    fpfsi_UpdateValidAlternateListAndSuggestAnAlternate();
    if (v10)
    {
      goto LABEL_152;
    }

    v296[0] = v6;
    if (!*(v3 + 1680))
    {
      CurrentDisplayVideoRangeFromMonitor = fpfsi_GetCurrentDisplayVideoRangeFromMonitor();
      fpfs_getVideoRangeStringFromFPSupportVideoRange(CurrentDisplayVideoRangeFromMonitor);
      if (*(v3 + 2568))
      {
        OUTLINED_FUNCTION_267();
        if (*(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          OUTLINED_FUNCTION_310();
          v14();
        }
      }
    }

    v11 = CMBaseObjectGetDerivedStorage();
    v12 = *(v11 + 1744);
    if (*(v11 + 96))
    {
      if (v12)
      {
        OUTLINED_FUNCTION_293();
        FigCFEqual();
        OUTLINED_FUNCTION_785();
        FigAlternateGetPeakBitRate(*(v11 + 1744));
        FigAlternateGetPeakBitRate(0);
LABEL_17:
        v15 = *(v11 + 1744);
        if (v15)
        {
          v16 = CFRetain(v15);
          v17 = v16;
          if ((v12 == 0) | v1 & 1)
          {
            v18 = v16;
            if (v16)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (fpfs_CancelTrialSwitch(v0))
            {
              goto LABEL_348;
            }

            if (v17)
            {
              CFRelease(v17);
            }
          }

LABEL_22:
          v18 = 0;
          v17 = *(v3 + 1680);
          if (!v17)
          {
            v19 = 0;
            v298 = 0;
            v17 = 0;
            goto LABEL_49;
          }

LABEL_23:
          if (FigCFEqual())
          {
            LODWORD(v298) = 0;
            v19 = 0;
LABEL_47:
            if (FigCFEqual())
            {
              goto LABEL_355;
            }

            HIDWORD(v298) = 1;
LABEL_49:
            HIDWORD(v292) = v19;
            v293 = v18;
            value = -2;
            LODWORD(valuePtr.value) = -2;
            v300 = v3;
            if (*(CMBaseObjectGetDerivedStorage() + 56))
            {
              v316[0].value = 0;
              FigGetAllocatorForMedia();
              OUTLINED_FUNCTION_368();
              if (*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                v33 = OUTLINED_FUNCTION_406();
                v34(v33);
              }

              value = valuePtr.value;
            }

            v35 = CMBaseObjectGetDerivedStorage();
            OUTLINED_FUNCTION_724(v35);
            v36 = CMBaseObjectGetDerivedStorage();
            VideoRange = FigAlternateGetVideoRange(0x1F0B67738);
            v38 = FigAlternateGetVideoRange(0);
            if (VideoRange >= 2 && v38 <= 1)
            {
              v294 = v0;
              v40 = fpfsi_GetCurrentDisplayVideoRangeFromMonitor();
              fpfs_getVideoRangeStringFromFPSupportVideoRange(v40);
              OUTLINED_FUNCTION_251();
              if (*(*(CMBaseObjectGetVTable() + 16) + 48))
              {
                OUTLINED_FUNCTION_606();
                v41();
              }

              if (*(v36 + 872) == 2)
              {
                if (v40 == 1)
                {
                  v42 = 0;
                  goto LABEL_73;
                }
              }

              else
              {
                ShouldLimitHDRConcurrentPlayback = CelestialShouldLimitHDRConcurrentPlayback();
                v42 = 0;
                if (v40 == 1 || ShouldLimitHDRConcurrentPlayback)
                {
                  goto LABEL_73;
                }
              }
            }

            HDCPLevel = FigAlternateGetHDCPLevel(0x1F0B67738);
            v45 = FigAlternateGetHDCPLevel(0);
            v46 = HDCPLevel < 0 || HDCPLevel == v45;
            v42 = v46 || HDCPLevel <= value;
LABEL_73:
            LODWORD(v292) = v42;
            v48 = MEMORY[0x1E6960C70];
            v49 = v300;
            LODWORD(v291) = GetSwitchOptions(v300, 1);
            LODWORD(valuePtr.value) = 0;
            v316[0].value = 0;
            if (*(v300 + 56))
            {
              FigGetAllocatorForMedia();
              OUTLINED_FUNCTION_368();
              if (*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                v50 = OUTLINED_FUNCTION_406();
                if (!v51(v50))
                {
                  if (!v316[0].value)
                  {
                    goto LABEL_86;
                  }

                  CFNumberGetValue(v316[0].value, kCFNumberSInt32Type, &valuePtr);
                  if (LODWORD(valuePtr.value))
                  {
                    v52 = *(v300 + 52);
                    v53 = LODWORD(valuePtr.value) - v52;
                    if (LODWORD(valuePtr.value) != v52)
                    {
                      if (LODWORD(valuePtr.value) > v52)
                      {
                        v54 = *(v300 + 2568);
                        if (v54)
                        {
                          v55 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                          if (v55)
                          {
                            v55(v54, @"playerStats", 0x1F0B666B8, v53);
                          }
                        }
                      }

                      *(v300 + 52) = valuePtr.value;
                    }
                  }
                }
              }

              if (v316[0].value)
              {
                CFRelease(v316[0].value);
              }
            }

LABEL_86:
            flags = v48->flags;
            v57 = *(v300 + 2568);
            if (v57)
            {
              v58 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v58)
              {
                v58(v57, @"playerStats", 0x1F0B42758, value, 0);
              }
            }

            v59 = HIDWORD(v298);
            if (HIDWORD(v298))
            {
              memset(v316, 0, 24);
              fpfs_GetNextTimeToPlayIfEstablished(v0, v316);
              time2 = v316[0];
              v68 = OUTLINED_FUNCTION_738(v60, v61, v62, v63, v64, v65, v66, v67, v287, v288, v289, v290, v291, v292, v293, v294, v296[0], v296[1], v297, v298, v299, v300, *(v300 + 1160), *(v300 + 1168), *(v300 + 1176), 0, v316[0].value);
              CMTimeAdd(v70, v68, v69);
              flags = valuePtr.flags;
            }

            v71 = *(v49 + 12);
            v72 = !v71 || !*(v299 + 458) || FigAlternatePlaybackBitrateMonitorIsAlternateStillValid(v71, v17) == 0;
            v295 = MutableCopy;
            HIDWORD(v291) = flags;
            if (v59)
            {
              PeakBitRate = FigAlternateGetPeakBitRate(v17);
              v74 = PeakBitRate < FigAlternateGetPeakBitRate(v304);
            }

            else
            {
              v74 = 0;
            }

            HIDWORD(v290) = v72;
            if (v72)
            {
              goto LABEL_222;
            }

            v75 = CMBaseObjectGetDerivedStorage();
            v76 = *(v75 + 1680);
            if (!v76 || !fpfs_isAlternateValid(v0, v76))
            {
              if (dword_1EAF169F0)
              {
                v113 = OUTLINED_FUNCTION_24();
                OUTLINED_FUNCTION_95(v113, v114, v115, v116, v117, v118, v119, v120, v287, v288, v289, v290, v291, v292, v293, v295, v296[0], v296[1], v297, v298, v299, v300, type, type_8, v303, v304, time2.value);
                OUTLINED_FUNCTION_81();
                if ("fpfsi_OkayToSwitch")
                {
                  if (*v75)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  if (v0)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  LODWORD(valuePtr.value) = 136316418;
                  OUTLINED_FUNCTION_285();
                  v313 = 2112;
                  *v314 = v151;
                  OUTLINED_FUNCTION_59();
                  OUTLINED_FUNCTION_30();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_524();
                v49 = v300;
                v48 = MEMORY[0x1E6960C70];
              }

              goto LABEL_222;
            }

            if (v74)
            {
              if (*(v75 + 524) == 1)
              {
                for (i = *(v75 + 1024); i; i = *(i + 24))
                {
                  v78 = *(i + 168);
                  if (v78 < 2)
                  {
                    if (!*(i + 200))
                    {
LABEL_147:
                      if (dword_1EAF169F0)
                      {
                        v129 = OUTLINED_FUNCTION_24();
                        OUTLINED_FUNCTION_95(v129, v130, v131, v132, v133, v134, v135, v136, v287, v288, v289, v290, v291, v292, v293, v295, v296[0], v296[1], v297, v298, v299, v300, type, type_8, v303, v304, time2.value);
                        OUTLINED_FUNCTION_81();
                        if ("fpfsi_OkayToSwitch")
                        {
                          v137 = *v75;
                          if (*v75)
                          {
                            v138 = (CMBaseObjectGetDerivedStorage() + 888);
                          }

                          else
                          {
                            v138 = "";
                          }

                          if (v0)
                          {
                            v160 = (CMBaseObjectGetDerivedStorage() + 3096);
                          }

                          else
                          {
                            v160 = "";
                          }

                          v161 = *(i + 32);
                          v162 = *(i + 168);
                          LODWORD(valuePtr.value) = 136316674;
                          *(&valuePtr.value + 4) = "fpfsi_OkayToSwitch";
                          LOWORD(valuePtr.flags) = 2048;
                          *(&valuePtr.flags + 2) = v137;
                          HIWORD(valuePtr.epoch) = 2082;
                          v308 = v138;
                          v309 = 2048;
                          v310 = v0;
                          v311 = 2082;
                          v312 = v160;
                          v313 = 1024;
                          *v314 = v161;
                          *&v314[4] = 1024;
                          *&v314[6] = v162;
                          OUTLINED_FUNCTION_59();
                          goto LABEL_215;
                        }

                        goto LABEL_216;
                      }

                      goto LABEL_217;
                    }
                  }

                  else if (v78 == 5)
                  {
                    goto LABEL_147;
                  }
                }

                v79 = *(v75 + 1072);
                if ((v79 & 1) != 0 && !*(v75 + 976))
                {
                  v140 = 0;
                }

                else
                {
                  if ((v79 & 2) == 0 || *(v75 + 992))
                  {
                    v316[0] = *v48;
                    v80 = OUTLINED_FUNCTION_270();
                    fpfs_GetItemBufferedDuration(v80);
                    if ((v316[0].flags & 1) == 0)
                    {
                      goto LABEL_217;
                    }

                    valuePtr = v316[0];
                    OUTLINED_FUNCTION_386(MEMORY[0x1E6960CC0]);
                    if (CMTimeCompare(&valuePtr, &time2) <= 0)
                    {
                      goto LABEL_217;
                    }

                    if (*(v75 + 1736))
                    {
                      if (!dword_1EAF169F0)
                      {
                        goto LABEL_217;
                      }

                      v81 = OUTLINED_FUNCTION_24();
                      OUTLINED_FUNCTION_95(v81, v82, v83, v84, v85, v86, v87, v88, v287, v288, v289, v290, v291, v292, v293, v295, v296[0], v296[1], v297, v298, v299, v300, type, type_8, v303, v304, time2.value);
                      OUTLINED_FUNCTION_81();
                      if (!"fpfsi_OkayToSwitch")
                      {
                        goto LABEL_216;
                      }

                      if (*v75)
                      {
                        CMBaseObjectGetDerivedStorage();
                      }

                      if (!v0)
                      {
                        goto LABEL_214;
                      }

LABEL_204:
                      CMBaseObjectGetDerivedStorage();
                      goto LABEL_214;
                    }

                    if (*(v75 + 1744))
                    {
                      if (!dword_1EAF169F0)
                      {
                        goto LABEL_217;
                      }

                      v152 = OUTLINED_FUNCTION_24();
                      OUTLINED_FUNCTION_95(v152, v153, v154, v155, v156, v157, v158, v159, v287, v288, v289, v290, v291, v292, v293, v295, v296[0], v296[1], v297, v298, v299, v300, type, type_8, v303, v304, time2.value);
                      OUTLINED_FUNCTION_81();
                      if (!"fpfsi_OkayToSwitch")
                      {
                        goto LABEL_216;
                      }

                      if (*v75)
                      {
                        CMBaseObjectGetDerivedStorage();
                      }

                      if (v0)
                      {
                        goto LABEL_204;
                      }

LABEL_214:
                      OUTLINED_FUNCTION_3();
                      goto LABEL_215;
                    }

                    if (*(v75 + 2904) == 1)
                    {
                      if (!dword_1EAF169F0)
                      {
                        goto LABEL_217;
                      }

                      v164 = OUTLINED_FUNCTION_24();
                      OUTLINED_FUNCTION_95(v164, v165, v166, v167, v168, v169, v170, v171, v287, v288, v289, v290, v291, v292, v293, v295, v296[0], v296[1], v297, v298, v299, v300, type, type_8, v303, v304, time2.value);
                      OUTLINED_FUNCTION_81();
                      if (!"fpfsi_OkayToSwitch")
                      {
                        goto LABEL_216;
                      }

                      if (*v75)
                      {
                        CMBaseObjectGetDerivedStorage();
                      }

                      if (v0)
                      {
                        goto LABEL_204;
                      }

                      goto LABEL_214;
                    }

                    goto LABEL_222;
                  }

                  v140 = 1;
                }

                if (dword_1EAF169F0)
                {
                  v141 = OUTLINED_FUNCTION_24();
                  OUTLINED_FUNCTION_95(v141, v142, v143, v144, v145, v146, v147, v148, v287, v288, v289, v290, v291, v292, v293, v295, v296[0], v296[1], v297, v298, v299, v300, type, type_8, v303, v304, time2.value);
                  OUTLINED_FUNCTION_81();
                  if ("fpfsi_OkayToSwitch")
                  {
                    v149 = *v75;
                    if (*v75)
                    {
                      v150 = (CMBaseObjectGetDerivedStorage() + 888);
                    }

                    else
                    {
                      v150 = "";
                    }

                    if (v0)
                    {
                      v163 = (CMBaseObjectGetDerivedStorage() + 3096);
                    }

                    else
                    {
                      v163 = "";
                    }

                    LODWORD(valuePtr.value) = 136316418;
                    *(&valuePtr.value + 4) = "fpfsi_OkayToSwitch";
                    LOWORD(valuePtr.flags) = 2048;
                    *(&valuePtr.flags + 2) = v149;
                    HIWORD(valuePtr.epoch) = 2082;
                    v308 = v150;
                    v309 = 2048;
                    v310 = v0;
                    v311 = 2082;
                    v312 = v163;
                    v313 = 1024;
                    *v314 = v140;
                    OUTLINED_FUNCTION_59();
LABEL_215:
                    OUTLINED_FUNCTION_30();
                    _os_log_send_and_compose_impl();
                  }

LABEL_216:
                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_524();
                  v49 = v300;
                  LOBYTE(v59) = BYTE4(v298);
                  v48 = MEMORY[0x1E6960C70];
                }

LABEL_217:
                if (v59)
                {
                  v177 = 0;
                  MutableCopy = v295;
                  goto LABEL_219;
                }

LABEL_222:
                LODWORD(v290) = v74;
                AudioChannelCount = FigAlternateGetAudioChannelCount(v304, v296[0], 0);
                v316[0].value = 0;
                if (*(CMBaseObjectGetDerivedStorage() + 128) && (FigGetAllocatorForMedia(), OUTLINED_FUNCTION_368(), *(*(CMBaseObjectGetVTable() + 8) + 48)) && (v181 = OUTLINED_FUNCTION_406(), v182(v181), (v183 = v316[0].value) != 0))
                {
                  v237 = 0;
                  do
                  {
                    if (v183)
                    {
                      Count = CFArrayGetCount(v183);
                      v183 = v316[0].value;
                    }

                    else
                    {
                      Count = 0;
                    }

                    if (v237 >= Count)
                    {
                      v184 = v48;
                      CFRelease(v183);
                      goto LABEL_226;
                    }

                    ValueAtIndex = CFArrayGetValueAtIndex(v183, v237);
                    MaxAudioChannelCount = FigAlternateGetMaxAudioChannelCount(ValueAtIndex);
                    v183 = v316[0].value;
                    ++v237;
                  }

                  while (MaxAudioChannelCount < 3);
                  v184 = v48;
                  CFRelease(v316[0].value);
                  if (AudioChannelCount > 2)
                  {
                    goto LABEL_226;
                  }

                  v241 = CMBaseObjectGetDerivedStorage();
                  LODWORD(time2.value) = 0;
                  LODWORD(type) = 0;
                  v242 = fpfsi_GetCurrentAudioPersistentIDFromMediaOption();
                  if (*(v241 + 1680))
                  {
                    v243 = v242;
                    if (CMTimebaseGetRate(*(v241 + 576)) != 0.0)
                    {
                      CMTimebaseGetTime(v316, *(v241 + 576));
                      OUTLINED_FUNCTION_389(MEMORY[0x1E6960CC0]);
                      valuePtr.epoch = v244;
                      if ((CMTimeCompare(v316, &valuePtr) & 0x80000000) == 0)
                      {
                        if (*(v241 + 3106))
                        {
                          if (!fpfs_isAlternateValid(v0, *(v241 + 1680)))
                          {
                            fpfsi_EmancipateItemFromMultichannelInhibitionsAndApplyFilters();
                          }
                        }

                        else
                        {
                          v247 = FigAlternateGetPeakBitRate(v304);
                          if (v247 < FigAlternateGetPeakBitRate(*(v241 + 1680)) && (fpfsi_getAudioRouteSpatializationCapabilities(v0) & 1) != 0)
                          {
                            AudioChannelCounts = FigAlternateGetAudioChannelCounts(*(v241 + 1680), v243, &time2, 0);
                            v249 = OUTLINED_FUNCTION_784();
                            if (FigAlternateGetAudioChannelCounts(v249, v250, v251, 0) <= 2)
                            {
                              v252 = AudioChannelCounts - LODWORD(time2.value);
                              fpfsi_ReleaseAndClearMultichannelTimer(v241);
                              if (v252 >= 3)
                              {
                                *(v241 + 3106) = 1;
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
                  v184 = v48;
LABEL_226:
                  time2.value = 0;
                  LODWORD(type) = 0;
                  v185 = CMBaseObjectGetDerivedStorage();
                  fpfsi_GetCurrentAudioPersistentIDFromMediaOption();
                  if (*(v185 + 1680))
                  {
                    if (CMTimebaseGetRate(*(v185 + 576)) != 0.0)
                    {
                      CMTimebaseGetTime(v316, *(v185 + 576));
                      OUTLINED_FUNCTION_389(MEMORY[0x1E6960CC0]);
                      valuePtr.epoch = v186;
                      if ((CMTimeCompare(v316, &valuePtr) & 0x80000000) == 0)
                      {
                        if (*(v185 + 3106))
                        {
                          v187 = FigAlternateGetPeakBitRate(v304);
                          if (v187 > FigAlternateGetPeakBitRate(*(v185 + 1680)) && (fpfsi_getAudioRouteSpatializationCapabilities(v0) & 1) != 0)
                          {
                            v188 = OUTLINED_FUNCTION_610();
                            if (FigAlternateGetAudioChannelCounts(v188, v189, v190, 0) >= 3 && !*(v185 + 3112))
                            {
                              if (fpfsi_AttemptToSetupInhibitMultichannelTimer_onceToken != -1)
                              {
                                dispatch_once(&fpfsi_AttemptToSetupInhibitMultichannelTimer_onceToken, &__block_literal_global_205);
                              }

                              v221 = *(v185 + 600);
                              v222 = *(v185 + 16);
                              dispatch_time(0, 1000000000 * fpfsi_AttemptToSetupInhibitMultichannelTimer_inhibitMultichannelPeriodSeconds);
                              v223 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, v221);
                              if (v223)
                              {
                                if (v222)
                                {
                                  CFRetain(v222);
                                }

                                v224 = OUTLINED_FUNCTION_292();
                                dispatch_set_context(v224, v225);
                                v226 = OUTLINED_FUNCTION_293();
                                dispatch_source_set_timer(v226, v227, 0xFFFFFFFFFFFFFFFFLL, 0);
                                dispatch_source_set_event_handler_f(v223, &fpfsi_MultichannelUninhibitedCallback);
                                v228 = OUTLINED_FUNCTION_249();
                                dispatch_source_set_cancel_handler_f(v228, v229);
                                dispatch_set_finalizer_f(v223, FigCFRelease);
                                dispatch_resume(v223);
                              }

                              *(v185 + 3112) = v223;
                              if (*(v185 + 40))
                              {
                                FigGetAllocatorForMedia();
                                OUTLINED_FUNCTION_439();
                                v235 = FigAlternateMultichannelAudioFilterCreate(v230, v231, v232, v233, v234);
                                v236 = time2.value;
                                if (!v235)
                                {
                                  FigAlternateSelectionBossAddFilter(*(v185 + 40), time2.value);
                                  v236 = time2.value;
                                }

                                if (v236)
                                {
                                  CFRelease(v236);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  v49 = v300;
                  if (*(v300 + 3106) && AudioChannelCount > 2)
                  {
                    v18 = v293;
                    MutableCopy = v295;
                    if (!v295)
                    {
                      goto LABEL_357;
                    }

                    goto LABEL_356;
                  }
                }

                if (*(CMBaseObjectGetDerivedStorage() + 1704))
                {
                  if (FigCFEqual())
                  {
                    v191 = OUTLINED_FUNCTION_624();
                    if (fpfs_ScheduleRecoverySwitch(v191, v192, 0))
                    {
                      v316[0] = *v184;
                      LODWORD(v287) = 3;
                      OUTLINED_FUNCTION_57();
                      if (!fpfs_SetAlternateWithContext(v193))
                      {
                        OUTLINED_FUNCTION_490();
                        fpfs_InitiateSwitchRecovery();
                        if (v245)
                        {
                          OUTLINED_FUNCTION_491();
                          fpfs_InitiateSwitchRecovery();
                          if (v246)
                          {
                            v177 = 0;
                            goto LABEL_244;
                          }
                        }
                      }
                    }
                  }
                }

                CMBaseObjectGetDerivedStorage();
                *v296 = *&v184->value;
                *&time2.value = *&v184->value;
                OUTLINED_FUNCTION_585();
                if (*(v194 + 1680))
                {
                  v195 = v194;
                  if (*(v194 + 553))
                  {
                    v196 = FigAlternateGetPeakBitRate(v304);
                    if (v196 < FigAlternateGetPeakBitRate(*(v195 + 1680)))
                    {
                      fpfs_CancelTrialSwitch(v0);
                      OUTLINED_FUNCTION_832();
                      v197 = OUTLINED_FUNCTION_765();
                      GetSwitchOptions(v197, v198);
                      valuePtr = time2;
                      OUTLINED_FUNCTION_535();
                      OUTLINED_FUNCTION_177();
                      OUTLINED_FUNCTION_185();
                      v177 = fpfs_SetAlternateWithContext(v199);
                      if (!v177)
                      {
LABEL_244:
                        MutableCopy = v295;
                        goto LABEL_245;
                      }

                      v17 = v293;
                      MutableCopy = v295;
LABEL_348:
                      v18 = v17;
                      if (!MutableCopy)
                      {
LABEL_357:
                        if (v18)
                        {
                          CFRelease(v18);
                        }

                        goto LABEL_359;
                      }

LABEL_356:
                      CFRelease(MutableCopy);
                      goto LABEL_357;
                    }
                  }
                }

                *&time2.value = *v296;
                OUTLINED_FUNCTION_585();
                v268 = OUTLINED_FUNCTION_505();
                GetSwitchOptions(v268, v269);
                OUTLINED_FUNCTION_832();
                OUTLINED_FUNCTION_132();
                MutableCopy = v295;
                if (v46)
                {
                  v278 = v290;
                  OUTLINED_FUNCTION_710(v270, v271, v272, v273, v274, v275, v276, v277, v287, v288, v289, v290, v291, v292, v293, v295, v296[0], v296[1], v297, v298, v299, v300, type, type_8, v303, v304, *&time2.value);
                  valuePtr.epoch = time2.epoch;
                  OUTLINED_FUNCTION_535();
                  OUTLINED_FUNCTION_185();
                  v270 = fpfs_SetAlternateWithContext(v279);
                  if (v270 == -12644)
                  {
                    if (v278 && !((*(v299 + 458) == 0) | BYTE4(v290) & 1))
                    {
                      v177 = 0;
                      goto LABEL_219;
                    }
                  }

                  else
                  {
                    v177 = v270;
                    OUTLINED_FUNCTION_381();
                    if ((v285 & HIDWORD(v290)) != 1)
                    {
                      goto LABEL_370;
                    }
                  }
                }

                OUTLINED_FUNCTION_710(v270, v271, v272, v273, v274, v275, v276, v277, v287, v288, v289, v290, v291, v292, v293, v295, v296[0], v296[1], v297, v298, v299, v300, type, type_8, v303, v304, *&time2.value);
                valuePtr.epoch = time2.epoch;
                OUTLINED_FUNCTION_535();
                OUTLINED_FUNCTION_185();
                fpfs_SetAlternateWithContext(v286);
                v177 = 0;
                OUTLINED_FUNCTION_381();
LABEL_370:
                if (!v285)
                {
LABEL_245:
                  time2.value = 0;
                  v200 = CMBaseObjectGetDerivedStorage();
                  if (v200)
                  {
                    v208 = v200;
                    v209 = *(v200 + 96);
                    if (!v209 || (v210 = FigGetAllocatorForMedia(), (v211 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v211(v209, @"AfmfpbProperty_CandidateAlternatesForAdaptiveBitrateSwitching", v210, &time2))
                    {
LABEL_340:
                      MutableCopy = v295;
                      if (time2.value)
                      {
                        CFRelease(time2.value);
                      }

                      goto LABEL_342;
                    }

                    MutableCopy = v295;
                    if (time2.value)
                    {
                      if (CFArrayGetCount(time2.value) >= 1)
                      {
                        if (time2.value && (v212 = CFArrayGetCount(time2.value), v213 = v212 - 1, v212 >= 1))
                        {
                          v214 = 0;
                          do
                          {
                            v215 = OUTLINED_FUNCTION_481();
                            v217 = CFArrayGetValueAtIndex(v215, v216);
                            RankingScore = FigAlternateGetRankingScore(v217);
                            v219 = RankingScore == -1.0;
                          }

                          while (RankingScore != -1.0 && v213 != v214++);
                        }

                        else
                        {
                          v219 = 0;
                        }

                        v253 = 0;
                        v254 = 0;
                        v255 = 0;
                        v256 = 0.0;
                        while (1)
                        {
                          v257 = time2.value;
                          if (time2.value)
                          {
                            v257 = CFArrayGetCount(time2.value);
                          }

                          if (v255 >= v257)
                          {
                            break;
                          }

                          v258 = CFArrayGetValueAtIndex(time2.value, v255);
                          if (v219)
                          {
                            v259 = FigAlternateGetPeakBitRate(v258);
                            v260 = v259 > v253;
                            if (v259 > v253)
                            {
                              v253 = v259;
                            }
                          }

                          else
                          {
                            v261 = FigAlternateGetRankingScore(v258);
                            v260 = v261 > v256;
                            if (v261 > v256)
                            {
                              v256 = v261;
                            }
                          }

                          if (v260)
                          {
                            v254 = v255;
                          }

                          ++v255;
                        }

                        if (dword_1EAF169F0)
                        {
                          v306 = OS_LOG_TYPE_DEFAULT;
                          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v306);
                          OUTLINED_FUNCTION_125();
                          if (v46)
                          {
                            v264 = v263;
                          }

                          else
                          {
                            v264 = 0;
                          }

                          if (v264)
                          {
                            v280 = *v208;
                            if (v280)
                            {
                              CMBaseObjectGetDerivedStorage();
                            }

                            if (v0)
                            {
                              v281 = (CMBaseObjectGetDerivedStorage() + 3096);
                            }

                            else
                            {
                              v281 = "";
                            }

                            if (v219)
                            {
                              v282 = "peak bitrate";
                            }

                            else
                            {
                              v282 = "score";
                            }

                            CFArrayGetValueAtIndex(time2.value, v254);
                            LODWORD(valuePtr.value) = 136316674;
                            *(&valuePtr.value + 4) = "fpfsi_logHighestEligibleAlternate";
                            LOWORD(valuePtr.flags) = 2048;
                            *(&valuePtr.flags + 2) = v280;
                            OUTLINED_FUNCTION_749();
                            v310 = v0;
                            v311 = v283;
                            v312 = v281;
                            v313 = 2080;
                            *v314 = v282;
                            *&v314[8] = 2112;
                            v315 = v284;
                            OUTLINED_FUNCTION_59();
                            OUTLINED_FUNCTION_34();
                            _os_log_send_and_compose_impl();
                          }

                          OUTLINED_FUNCTION_2();
                          fig_log_call_emit_and_clean_up_after_send_and_compose();
                          v49 = v300;
                        }
                      }

                      goto LABEL_340;
                    }
                  }

LABEL_342:
                  fpfsi_SetupSkipBitrateRangeFilter(v0, v201, v202, v203, v204, v205, v206, v207, v287, v288, v289, v290, v291, v292, v293, v295, v296[0], v296[1], v297, v298);
                  v179 = v292;
LABEL_343:
                  if (HIDWORD(v292) && v177)
                  {
                    fpfs_ReleasePlayerHDRPlaybackBaton();
                    if (v298)
                    {
                      fpfs_ReleasePlayer4kPlaybackBaton(*v49);
                    }

                    goto LABEL_347;
                  }

                  if (v177)
                  {
LABEL_347:
                    v17 = v293;
                    goto LABEL_348;
                  }

                  if ((v179 & 1) == 0)
                  {
                    fpfs_stopResetDisturbReprepareAndResume(*v49, v0, 1);
                  }

                  v18 = v293;
                  if (v49[312] > 0.0)
                  {
                    fpfsi_SetupIFramePrefetch();
                  }

LABEL_355:
                  if (!MutableCopy)
                  {
                    goto LABEL_357;
                  }

                  goto LABEL_356;
                }

LABEL_219:
                v178 = *(v49 + 12);
                if (v178)
                {
                  FigAlternatePlaybackBitrateMonitorRejectSwitch(v178, *(v49 + 210));
                }

                v179 = 1;
                goto LABEL_343;
              }

              if (!dword_1EAF169F0)
              {
                goto LABEL_217;
              }

              v97 = OUTLINED_FUNCTION_24();
              OUTLINED_FUNCTION_95(v97, v98, v99, v100, v101, v102, v103, v104, v287, v288, v289, v290, v291, v292, v293, v295, v296[0], v296[1], v297, v298, v299, v300, type, type_8, v303, v304, time2.value);
              OUTLINED_FUNCTION_81();
              if (!"fpfsi_OkayToSwitch")
              {
                goto LABEL_216;
              }

              if (*v75)
              {
                CMBaseObjectGetDerivedStorage();
                if (!v0)
                {
LABEL_156:
                  LODWORD(valuePtr.value) = 136316418;
                  OUTLINED_FUNCTION_285();
                  v313 = 1024;
                  *v314 = v139;
                  OUTLINED_FUNCTION_59();
                  goto LABEL_215;
                }
              }

              else if (!v0)
              {
                goto LABEL_156;
              }

              CMBaseObjectGetDerivedStorage();
              goto LABEL_156;
            }

            if (fpfsi_TrialSwitchDownInProgress(v75))
            {
              if (!dword_1EAF169F0)
              {
                goto LABEL_217;
              }

              v89 = OUTLINED_FUNCTION_24();
              OUTLINED_FUNCTION_95(v89, v90, v91, v92, v93, v94, v95, v96, v287, v288, v289, v290, v291, v292, v293, v295, v296[0], v296[1], v297, v298, v299, v300, type, type_8, v303, v304, time2.value);
              OUTLINED_FUNCTION_81();
              if (!"fpfsi_OkayToSwitch")
              {
                goto LABEL_216;
              }

              if (*v75)
              {
                CMBaseObjectGetDerivedStorage();
                if (!v0)
                {
                  goto LABEL_179;
                }
              }

              else if (!v0)
              {
                goto LABEL_179;
              }

              goto LABEL_178;
            }

            if (*(v75 + 2904) == 1)
            {
              if (!dword_1EAF169F0)
              {
                goto LABEL_217;
              }

              v105 = OUTLINED_FUNCTION_24();
              OUTLINED_FUNCTION_95(v105, v106, v107, v108, v109, v110, v111, v112, v287, v288, v289, v290, v291, v292, v293, v295, v296[0], v296[1], v297, v298, v299, v300, type, type_8, v303, v304, time2.value);
              OUTLINED_FUNCTION_81();
              if (!"fpfsi_OkayToSwitch")
              {
                goto LABEL_216;
              }

              if (*v75)
              {
                CMBaseObjectGetDerivedStorage();
              }

              if (!v0)
              {
                goto LABEL_179;
              }
            }

            else
            {
              if (!*(v75 + 471))
              {
                goto LABEL_222;
              }

              if (!dword_1EAF169F0)
              {
                goto LABEL_217;
              }

              v121 = OUTLINED_FUNCTION_24();
              OUTLINED_FUNCTION_95(v121, v122, v123, v124, v125, v126, v127, v128, v287, v288, v289, v290, v291, v292, v293, v295, v296[0], v296[1], v297, v298, v299, v300, type, type_8, v303, v304, time2.value);
              OUTLINED_FUNCTION_81();
              if (!"fpfsi_OkayToSwitch")
              {
                goto LABEL_216;
              }

              if (*v75)
              {
                CMBaseObjectGetDerivedStorage();
              }

              if (!v0)
              {
LABEL_179:
                OUTLINED_FUNCTION_3();
                goto LABEL_215;
              }
            }

LABEL_178:
            CMBaseObjectGetDerivedStorage();
            goto LABEL_179;
          }

          v20 = CMBaseObjectGetDerivedStorage();
          v21 = FigAlternateGetVideoRange(*(v20 + 1680));
          v22 = FigAlternateGetVideoRange(0);
          v23 = v21 <= 1 && v22 >= 2;
          if (v23 && CelestialShouldLimitHDRConcurrentPlayback() && (v24 = CMBaseObjectGetDerivedStorage(), OUTLINED_FUNCTION_260(v24), !v46) && fpfs_CanRenderVideo(v25, 0))
          {
            if (!fpfs_GrabPlayerHDRPlaybackBaton())
            {
              if (dword_1EAF169F0)
              {
                v172 = OUTLINED_FUNCTION_24();
                os_log_type_enabled(v172, type);
                OUTLINED_FUNCTION_28();
                if (MutableCopy)
                {
                  if (*v3)
                  {
                    v174 = (CMBaseObjectGetDerivedStorage() + 888);
                  }

                  else
                  {
                    v174 = "";
                  }

                  if (v0)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  OUTLINED_FUNCTION_442();
                  v308 = v174;
                  OUTLINED_FUNCTION_9();
                  OUTLINED_FUNCTION_23();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_2();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              fpfsi_UpdateValidAlternateListAndSuggestAnAlternate();
              if (!v265)
              {
                v266 = OUTLINED_FUNCTION_203();
                fpfsi_SwitchBetweenHDRAndSDR(v266, v267);
                goto LABEL_355;
              }

              goto LABEL_373;
            }

            v19 = 1;
          }

          else
          {
            v19 = 0;
          }

          v26 = CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_294(v26);
          if (!*(CMBaseObjectGetDerivedStorage() + 905))
          {
            goto LABEL_46;
          }

          v27 = FigAlternateIs4k(*(v21 + 1680));
          v28 = FigAlternateIs4k(0);
          v29 = 0;
          if (v27 == v28 || !v28)
          {
            goto LABEL_44;
          }

          if (!CelestialShouldLimit4kConcurrentPlayback() || (v30 = CMBaseObjectGetDerivedStorage(), OUTLINED_FUNCTION_260(v30), v46) || !fpfs_CanRenderVideo(v31, 0))
          {
LABEL_46:
            LODWORD(v298) = 0;
            goto LABEL_47;
          }

          if (fpfs_GrabPlayer4kPlaybackBaton(*v3))
          {
            v29 = 1;
LABEL_44:
            LODWORD(v298) = v29;
            goto LABEL_47;
          }

          fpfsi_UpdateValidAlternateListAndSuggestAnAlternate();
          if (!v173)
          {
            OUTLINED_FUNCTION_203();
            fpfsi_SwitchBetween4kAndHD();
            goto LABEL_355;
          }

LABEL_373:
          v17 = v18;
          goto LABEL_348;
        }

        if ((v12 == 0) | v1 & 1 || !fpfs_CancelTrialSwitch(v0))
        {
          goto LABEL_22;
        }

LABEL_152:
        v17 = 0;
        goto LABEL_348;
      }
    }

    else if (v12)
    {
      OUTLINED_FUNCTION_284();
      FigCFArrayContainsValue();
      OUTLINED_FUNCTION_785();
      goto LABEL_17;
    }

    v1 = 0;
    goto LABEL_17;
  }

  if (dword_1EAF169F0)
  {
    v175 = OUTLINED_FUNCTION_24();
    os_log_type_enabled(v175, type);
    OUTLINED_FUNCTION_40();
    if (v2)
    {
      if (*v3)
      {
        v176 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v176 = "";
      }

      if (v0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_442();
      v308 = v176;
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_667();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_1();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_359:
  OUTLINED_FUNCTION_191();
}

void fpfsi_updateNetworkCostMonitorMaximumMediaBitrate()
{
  if (*(CMBaseObjectGetDerivedStorage() + 2272))
  {
    OUTLINED_FUNCTION_251();
    v11 = 0;
    cf = 0;
    v0 = *(CMBaseObjectGetDerivedStorage() + 96);
    if (v0)
    {
      v1 = *MEMORY[0x1E695E480];
      v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v2 && !v2(v0, @"AfmfpbProperty_HighestValidPeakBitrate", v1, &cf))
      {
        if (cf)
        {
          OUTLINED_FUNCTION_681();
          CFNumberGetValue(v3, v4, v5);
        }

        else
        {
          OUTLINED_FUNCTION_239();
          FigSignalErrorAtGM();
          OUTLINED_FUNCTION_785();
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    OUTLINED_FUNCTION_266();
    SInt32 = FigCFNumberCreateSInt32();
    if (SInt32)
    {
      v7 = SInt32;
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v8 = OUTLINED_FUNCTION_236();
        v9(v8);
      }

      CFRelease(v7);
    }
  }
}

void fpfs_StopPlayingItem()
{
  OUTLINED_FUNCTION_193();
  v229 = v1;
  v3 = v2;
  v5 = v4;
  Next = v6;
  v269 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *DerivedStorage;
  v257 = 0;
  v10 = *(Next + 80);
  DWORD1(v233) = v10 == v5;
  v11 = *(Next + 688);
  Count = CFArrayGetCount(*(Next + 72));
  *&v243 = v10;
  if (v10)
  {
    v13 = Count + 1;
  }

  else
  {
    v13 = Count;
  }

  LODWORD(os_log_and_send_and_compose_flags_and_os_log_type) = FigPlaybackGetEffectiveActionAtEnd(v11, v13);
  cf = 0;
  v256 = 0;
  BOOLean = 0;
  CFRetain(v5);
  if (!v3)
  {
    v3 = *(DerivedStorage + 504);
  }

  fpfsi_RemoveAndClearTimer((DerivedStorage + 1608));
  v14 = MEMORY[0x1E6960C70];
  v15 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 1616) = *MEMORY[0x1E6960C70];
  v16 = v14[2];
  *(DerivedStorage + 1632) = v16;
  *v236 = v15;
  *(DerivedStorage + 1640) = v15;
  *(&v233 + 1) = v16;
  *(DerivedStorage + 1656) = v16;
  fpfsi_RemoveAndClearTimer((DerivedStorage + 2320));
  fpfsi_RemoveAndClearTimer((DerivedStorage + 2352));
  fpfsi_RemoveAndClearTimer((DerivedStorage + 2360));
  fpfsi_RemoveAndClearTimer((DerivedStorage + 3456));
  if (*(DerivedStorage + 332))
  {
    if (v3 && CFErrorGetCode(v3) != -15697)
    {
      v14 = *(DerivedStorage + 2216);
      if (!v14)
      {
        v14 = *(DerivedStorage + 2220);
      }

      CFErrorGetCode(v3);
      OUTLINED_FUNCTION_513();
      fpfs_SeekDidFail();
    }

    else
    {
      value = &v260;
      memset(&v265, 0, sizeof(v265));
      fpfsi_GetPumpMaxTimeAvailable(&v265);
      memset(&v260, 0, sizeof(v260));
      v17 = OUTLINED_FUNCTION_234();
      fpfs_GetNextTimeToPlay(v17, v18, v19);
      time1 = v265;
      v20 = CMTimeMinimum(&v260, &time1, &time2);
      OUTLINED_FUNCTION_342(v20, v21, v22, v23, v24, v25, v26, v27, v225, v227, v229, v231, v233, *(&v233 + 1), *v236, *&v236[4], v238, v240, v10, v245, os_log_and_send_and_compose_flags_and_os_log_type, v250, time1.value, *&time1.timescale, time1.epoch, v253, BOOLean, cf, v256, v257, time2.value, *&time2.timescale, time2.epoch, v259, *&v260.value);
      fpfs_SetTime(v5, &time2);
      v28 = OUTLINED_FUNCTION_266();
      fpfsi_setLastSeekTimeSet(v28, v29);
      *(DerivedStorage + 1472) = *v237;
      *(DerivedStorage + 1488) = v235;
      v37 = *(DerivedStorage + 2216);
      if (!v37)
      {
        v37 = *(DerivedStorage + 2220);
      }

      OUTLINED_FUNCTION_342(v30, v31, v37, v32, v33, v34, v35, v36, v226, v228, v230, v232, v234, v235, *v237, *&v237[4], v239, v241, v244, v246, v249, v251, time1.value, *&time1.timescale, time1.epoch, v253, BOOLean, cf, v256, v257, time2.value, *&time2.timescale, time2.epoch, v259, *&v260.value);
      OUTLINED_FUNCTION_513();
      OUTLINED_FUNCTION_305();
      fpfs_SeekDidComplete();
    }
  }

  v242 = Next;
  if (*(DerivedStorage + 530))
  {
    LODWORD(v231) = 0;
    goto LABEL_81;
  }

  v38 = *(Next + 696);
  *(Next + 696) = v3;
  if (!v3)
  {
    if (!v38)
    {
      goto LABEL_18;
    }

LABEL_22:
    CFRelease(v38);
    if (!v3)
    {
      goto LABEL_19;
    }

LABEL_23:
    LODWORD(v265.value) = CFErrorGetCode(v3);
    v43 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v265);
    if (v43)
    {
      v45 = v43;
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v44 = Mutable;
      if (Mutable)
      {
        CFDictionarySetValue(Mutable, @"Result", v45);
        if (LODWORD(v265.value))
        {
          v48 = OUTLINED_FUNCTION_782();
          CFDictionarySetValue(v48, v49, v50);
        }
      }

      CFRelease(v45);
    }

    else
    {
      v44 = 0;
    }

    *(Next + 704) = @"ReasonAdvanceDueToError";
    if (*(DerivedStorage + 460))
    {
      if (*(DerivedStorage + 469))
      {
        v51 = &kFigPlaybackItemNotification_FailedToPlayToEnd;
      }

      else
      {
        v51 = &kFigPlaybackItemNotification_FailedToBecomeReadyForPlayback;
      }
    }

    else
    {
      v51 = &kFigPlaybackItemNotification_FailedToBecomeReadyForInspection;
    }

    fpfs_EnqueueNotification(v9, *v51, v5, v44);
    v265.value = 0;
    v260.value = 0;
    time2.value = 0;
    v231 = CMBaseObjectGetDerivedStorage();
    CFErrorGetCode(v3);
    CFErrorGetDomain(v3);
    OUTLINED_FUNCTION_802();
    FigCopyLastSignaledErrorInfo();
    if (!*(DerivedStorage + 2568))
    {
      goto LABEL_290;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      OUTLINED_FUNCTION_732();
      OUTLINED_FUNCTION_504();
      v52();
    }

    if (*(DerivedStorage + 2568))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        OUTLINED_FUNCTION_732();
        OUTLINED_FUNCTION_426();
        v53();
      }

      v54 = *(DerivedStorage + 2568);
      if (v54)
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v55 = OUTLINED_FUNCTION_622();
          v56(v55);
        }

        v54 = *(DerivedStorage + 2568);
      }
    }

    else
    {
LABEL_290:
      v54 = 0;
    }

    if (v265.value)
    {
      if (v54 && *(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        OUTLINED_FUNCTION_622();
        OUTLINED_FUNCTION_504();
        v57();
      }

      CFRelease(v265.value);
      v54 = *(DerivedStorage + 2568);
    }

    if (v260.value)
    {
      if (v54 && *(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        OUTLINED_FUNCTION_622();
        OUTLINED_FUNCTION_504();
        v58();
      }

      CFRelease(v260.value);
      v54 = *(DerivedStorage + 2568);
    }

    if (v54 && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      OUTLINED_FUNCTION_622();
      OUTLINED_FUNCTION_240();
      v59();
    }

    if (*(DerivedStorage + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 8))
    {
      OUTLINED_FUNCTION_622();
      OUTLINED_FUNCTION_305();
      v60();
    }

    FigCAStatsReportingSubmitData();
    v61 = FigGetAllocatorForMedia();
    FigMetricErrorEventCreate(v61, 0, v3, &cf);
    value = *(DerivedStorage + 3400);
    v62 = cf;
    v63 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v63)
    {
      v63(value, 0, v62);
    }

    if (v44)
    {
      CFRelease(v44);
    }

    LODWORD(v231) = 0;
    goto LABEL_65;
  }

  CFRetain(v3);
  if (v38)
  {
    goto LABEL_22;
  }

LABEL_18:
  if (v3)
  {
    goto LABEL_23;
  }

LABEL_19:
  OUTLINED_FUNCTION_402();
  fpfs_EnqueueNotification(v39, v40, v41, v42);
  LODWORD(v231) = 1;
LABEL_65:
  v64 = *(Next + 960);
  if (v64)
  {
    v65 = *(DerivedStorage + 2568);
    CFErrorGetCode(v64);
    if (v65)
    {
      OUTLINED_FUNCTION_603();
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_240();
        v66();
      }
    }

    v14 = *(Next + 960);
  }

  else
  {
    v14 = 0;
  }

  *(Next + 960) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  *(DerivedStorage + 530) = 1;
  v67 = *(Next + 108) < 0.0 && os_log_and_send_and_compose_flags_and_os_log_type == 1;
  if (v67)
  {
    fpfsi_SeekToCurrentTime(v5);
  }

LABEL_81:
  v68 = *(DerivedStorage + 1024);
  if (v68)
  {
    v14 = MEMORY[0x1E6960C70];
    do
    {
      value = v68[1].value;
      if (LODWORD(v68[7].value) == 6)
      {
        v69 = OUTLINED_FUNCTION_515();
        fpfsi_MoveTrackToPlayedOut(v69, v70, v71);
        if (!value)
        {
          break;
        }
      }

      else
      {
        fpfs_DeleteTrack(v5, v68);
        if (!value)
        {
          break;
        }
      }

      v68 = value;
    }

    while (*(DerivedStorage + 1024));
  }

  *(&v243 + 1) = v9;
  CMBaseObjectGetDerivedStorage();
  v72 = OUTLINED_FUNCTION_297();
  fpfs_ClearAllCachedRenderChains(v72);
  *(v14 + 796) = 0;
  v73 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_248(v73);
  v74 = CMBaseObjectGetDerivedStorage();
  v260.value = 0;
  v75 = value[38].value;
  if (v75)
  {
    if (BYTE1(value[128].timescale))
    {
      goto LABEL_110;
    }

    Next = v74;
    v76 = FigGetAllocatorForMedia();
    FigBytePumpGetFigBaseObject(v75);
    v78 = v77;
    v79 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v79)
    {
      v79(v78, 0x1F0B1F658, v76, &v260);
    }

    if (v260.value)
    {
      v80 = (Next + 528);
      if (*(Next + 528) || (FigAssetDownloadCoordinatorCopyClientBundleIdentifierForAsset(*&value[1].timescale, (Next + 528)), *v80))
      {
        Next = FigGetAllocatorForMedia();
        Current = CFAbsoluteTimeGetCurrent();
        v82 = CFDateCreate(Next, Current);
        if (v82)
        {
          Next = v82;
          v83 = v260.value;
          v84 = *v80;
          v85 = CMBaseObjectGetDerivedStorage();
          v86 = 0;
          v265.value = 0;
          if (!v83 || !v84)
          {
            goto LABEL_106;
          }

          if (*(v85 + 3080))
          {
            v86 = 1;
            goto LABEL_106;
          }

          fpfsi_isItemPlayedOut(v5);
          if (v87)
          {
            v86 = 1;
            v90 = v265.value;
            if (!v265.value)
            {
              goto LABEL_106;
            }
          }

          else
          {
            FigAssetDownloadStorageManagementCopyLastPlayedOutDateForAssetAtURL();
            v89 = v88;
            v90 = v265.value;
            if (v89)
            {
              v86 = 0;
              if (!v265.value)
              {
LABEL_106:
                FigAssetDownloadStorageManagementSetLastPlayedDateForAssetAtURL();
                if (v86 && !v91)
                {
                  BYTE1(value[128].timescale) = 1;
                }

                CFRelease(Next);
                goto LABEL_110;
              }
            }

            else
            {
              v86 = v265.value != 0;
              if (!v265.value)
              {
                goto LABEL_106;
              }
            }
          }

          CFRelease(v90);
          goto LABEL_106;
        }

        OUTLINED_FUNCTION_120();
        FigSignalErrorAtGM();
      }

LABEL_110:
      if (v260.value)
      {
        CFRelease(v260.value);
      }
    }
  }

  fpfsi_RTCReportingReportStartupPerformanceMetrics();
  v99 = *(DerivedStorage + 96);
  if (v99)
  {
    FigAlternatePlaybackBitrateMonitorSubmitABRHistory(v99);
  }

  v100 = *(DerivedStorage + 56);
  v101 = *(&v243 + 1);
  if (v100)
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_603();
    v102 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v102)
    {
      if (!v102(v100, @"AlternateFilterMonitorProperty_AOCP", value, &BOOLean))
      {
        v124 = *(DerivedStorage + 2568);
        v125 = CFBooleanGetValue(BOOLean);
        if (v124)
        {
          v126 = v125;
          v127 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v127)
          {
            v127(v124, @"playerStats", 0x1F0B427F8, v126, 1);
          }
        }
      }
    }
  }

  v103 = &unk_1EAF16000;
  if ((os_log_and_send_and_compose_flags_and_os_log_type - 1) <= 1)
  {
    v104 = v243;
    if (v243 == v5)
    {
      if (os_log_and_send_and_compose_flags_and_os_log_type == 1)
      {
        fpfs_stopPlaybackForInternalReason();
      }

      else
      {
        *&time2.value = *v236;
        time2.epoch = *(&v233 + 1);
        fpfsi_pauseItem(v5);
        fpfs_GetTime(DerivedStorage, &time2);
        if (*(DerivedStorage + 1436))
        {
          v135 = (DerivedStorage + 1424);
          v265 = *(DerivedStorage + 1424);
          v260 = time2;
          v136 = OUTLINED_FUNCTION_337();
          if ((CMTimeCompare(v136, v137) & 0x80000000) == 0)
          {
            if (dword_1EAF169F0)
            {
              LODWORD(time1.value) = 0;
              HIBYTE(v250) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_28();
              if (Next)
              {
                v138 = *DerivedStorage;
                if (*DerivedStorage)
                {
                  v139 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v139 = "";
                }

                *v236 = v139;
                if (v5)
                {
                  v147 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v147 = "";
                }

                *(&v233 + 1) = v147;
                *&v265.value = *v135;
                v265.epoch = *(DerivedStorage + 1440);
                Seconds = CMTimeGetSeconds(&v265);
                v265 = time2;
                v149 = CMTimeGetSeconds(&v265);
                LODWORD(v260.value) = 136316674;
                *(&v260.value + 4) = "fpfs_StopPlayingItem";
                LOWORD(v260.flags) = 2048;
                *(&v260.flags + 2) = v138;
                HIWORD(v260.epoch) = 2082;
                v261 = *v236;
                LOWORD(v262[0]) = 2048;
                *(v262 + 2) = v5;
                WORD1(v262[1]) = 2082;
                *(&v262[1] + 4) = *(&v233 + 1);
                WORD2(v262[2]) = 2048;
                *(&v262[2] + 6) = Seconds;
                HIWORD(v262[3]) = 2048;
                v263 = *&v149;
                OUTLINED_FUNCTION_72();
                OUTLINED_FUNCTION_25();
                _os_log_send_and_compose_impl();
                v104 = v243;
              }

              OUTLINED_FUNCTION_2();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v103 = &unk_1EAF16000;
            }

            *v135 = *&time2.value;
            *(DerivedStorage + 1440) = time2.epoch;
            OUTLINED_FUNCTION_402();
            fpfs_EnqueueNotification(v150, v151, v152, v153);
            v265 = time2;
            fpfsi_EnqueueReachedTimeToPausePlaybackNotification(v5);
          }
        }
      }

      if (dword_1EAF169F0)
      {
        OUTLINED_FUNCTION_742();
        v154 = OUTLINED_FUNCTION_453();
        OUTLINED_FUNCTION_846(v154, v155, v156, v157, v158, v159, v160, v161, v225, v227, v229, v231, v233, *(&v233 + 1), *v236, *&v236[4], v238, v242, v243, *(&v243 + 1), os_log_and_send_and_compose_flags_and_os_log_type, v250, time1.value, *&time1.timescale, time1.epoch, v253, BOOLean, cf, v256, v257, time2.value);
        OUTLINED_FUNCTION_28();
        if (Next)
        {
          if (*(&v243 + 1))
          {
            v162 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v162 = "";
          }

          if (v5)
          {
            CMBaseObjectGetDerivedStorage();
          }

          LODWORD(v260.value) = 136316418;
          *(&v260.value + 4) = "fpfs_StopPlayingItem";
          OUTLINED_FUNCTION_512();
          v261 = v162;
          OUTLINED_FUNCTION_704();
          *(v163 + 34) = v5;
          OUTLINED_FUNCTION_703(v164);
          *(v165 + 52) = 2112;
          *(v165 + 54) = v3;
          OUTLINED_FUNCTION_72();
          OUTLINED_FUNCTION_25();
          OUTLINED_FUNCTION_851();
        }

        OUTLINED_FUNCTION_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v103 = &unk_1EAF16000;
      }
    }

    if (v3)
    {
      fpfs_haltStream(v5, v92, v93, v94, v95, v96, v97, v98, v225, v227, v229, SBYTE2(v229), BYTE3(v229), BYTE4(v229), v231, v233, *v236, *&v236[4], v238, v242, v243, os_log_and_send_and_compose_flags_and_os_log_type, v250, time1.value, *&time1.timescale, time1.epoch, v253, BOOLean, cf, v256, v257, time2.value, *&time2.timescale, time2.epoch, v259, v260.value, *&v260.timescale, v260.epoch, v261, v262[0], v262[1], v262[2], v262[3], v263, v264, v265.value, *&v265.timescale, v265.epoch, v266, v267, v268);
      OUTLINED_FUNCTION_198();
      fpfsi_ResetPlaybackItem();
    }

    if (v104 == v5)
    {
      if (*(CMBaseObjectGetDerivedStorage() + 1024))
      {
        OUTLINED_FUNCTION_196();
        while (1)
        {
          OUTLINED_FUNCTION_247();
          if (v67)
          {
            if (*(v105 + 112))
            {
              break;
            }
          }

          if (!*(v105 + 24))
          {
            goto LABEL_128;
          }
        }
      }

      else
      {
LABEL_128:
        fpfsi_ClearCachedAudioRenderChains(v5);
        fpfs_ResetAudioHardwareFormat(*DerivedStorage);
      }
    }

    v106 = *(DerivedStorage + 752);
    if (v106)
    {
      v107 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v107)
      {
        v107(v106);
      }
    }

    goto LABEL_132;
  }

  v128 = CMBaseObjectGetDerivedStorage();
  v265.value = 0;
  IsPlayerPerformanceTraceEnabled = FPSupport_IsPlayerPerformanceTraceEnabled();
  if (*(v128 + 712) | IsPlayerPerformanceTraceEnabled)
  {
    v130 = IsPlayerPerformanceTraceEnabled;
    if (!*(v128 + 712) || *(v128 + 720) || (v131 = CFGetAllocator(*(&v243 + 1)), v132 = CFArrayCreateMutable(v131, 0, MEMORY[0x1E695E9C0]), (*(v128 + 720) = v132) != 0))
    {
      v133 = CFGetAllocator(*(&v243 + 1));
      v134 = fpfsi_copyPerformanceDictionary(v5, v133, &v265);
      Next = v265.value;
      if (v134 || !v265.value)
      {
        if (!v265.value)
        {
          goto LABEL_178;
        }
      }

      else
      {
        if (*(v128 + 712))
        {
          CFArrayAppendValue(*(v128 + 720), v265.value);
        }

        if (v130)
        {
          FPSupport_TracePlayerPerformanceDictionary("Stream", Next);
        }
      }

      CFRelease(Next);
    }

    else
    {
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM();
    }
  }

LABEL_178:
  if (*(DerivedStorage + 469))
  {
    OUTLINED_FUNCTION_685();
    v142 = &unk_1EAF16000;
    if (!v67 && (OUTLINED_FUNCTION_401(), v67))
    {
      CMBaseObjectGetDerivedStorage();
      if (!*(DerivedStorage + 2308))
      {
        v143 = 10;
        goto LABEL_188;
      }
    }

    else
    {
      CMBaseObjectGetDerivedStorage();
      if (!*(DerivedStorage + 2308))
      {
        v143 = 6;
        goto LABEL_188;
      }
    }
  }

  else
  {
    CMBaseObjectGetDerivedStorage();
    v142 = &unk_1EAF16000;
    if (!*(DerivedStorage + 2308))
    {
      v143 = 11;
LABEL_188:
      *(DerivedStorage + 2308) = v143;
    }
  }

  if (!fpfs_CreateAccessLogEntryWithUnlock(v5, &v257))
  {
    v144 = v257;
    fpfs_CommitAccessLogEntry(v5, v257);
    if (v144)
    {
      CFRelease(v144);
    }

    if (*(DerivedStorage + 25))
    {
      v145 = *(DerivedStorage + 1920);
      if (v145)
      {
        time2.value = 0;
        if (!FigPlaybackItemLogCreateW3CLogData(v145, &time2))
        {
          if (v142[636])
          {
            LODWORD(time1.value) = 0;
            HIBYTE(v250) = 0;
            v146 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_28();
            if (Next)
            {
              if (*(&v243 + 1))
              {
                v166 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v166 = "";
              }

              if (v5)
              {
                v167 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v167 = "";
              }

              LODWORD(v260.value) = 136316418;
              *(&v260.value + 4) = "fpfs_StopPlayingItem";
              LOWORD(v260.flags) = 2048;
              *(&v260.flags + 2) = *(&v243 + 1);
              HIWORD(v260.epoch) = 2082;
              v261 = v166;
              LOWORD(v262[0]) = 2048;
              *(v262 + 2) = v5;
              WORD1(v262[1]) = 2082;
              *(&v262[1] + 4) = v167;
              WORD2(v262[2]) = 2114;
              *(&v262[2] + 6) = time2.value;
              OUTLINED_FUNCTION_72();
              OUTLINED_FUNCTION_25();
              OUTLINED_FUNCTION_851();
            }

            OUTLINED_FUNCTION_2();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v101 = *(&v243 + 1);
          }

          CFRelease(time2.value);
        }
      }
    }
  }

  if (v243 != v5)
  {
    fpfsi_ResetPlaybackItem();
    goto LABEL_169;
  }

  v168 = OUTLINED_FUNCTION_283();
  Next = fpfs_getNext(v168, v169);
  if (!*(CMBaseObjectGetDerivedStorage() + 504) || (OUTLINED_FUNCTION_401(), v67) || Next)
  {
    v104 = v243;
    if (Next)
    {
      v170 = CMBaseObjectGetDerivedStorage();
      v171 = CMBaseObjectGetDerivedStorage();
      v172 = CMBaseObjectGetDerivedStorage();
      if (*(v171 + 2472))
      {
        *&v260.value = *v236;
        v260.epoch = *(&v233 + 1);
        if (*(v172 + 80) == Next)
        {
          __assert_rtn("fpfs_finishGaplessStart", "FigPlayer_Stream.m", 41585, "item != pPlayer->currentItem");
        }

        v173 = *(v171 + 840);
        ItemBufferedDuration = fpfs_GetItemBufferedDuration(Next);
        OUTLINED_FUNCTION_342(ItemBufferedDuration, v175, v176, v177, v178, v179, v180, v181, v225, v227, v229, v231, v233, *(&v233 + 1), *v236, *&v236[4], v238, v242, v243, *(&v243 + 1), os_log_and_send_and_compose_flags_and_os_log_type, v250, time1.value, *&time1.timescale, time1.epoch, v253, BOOLean, cf, v256, v257, time2.value, *&time2.timescale, time2.epoch, v259, *&v260.value);
        OUTLINED_FUNCTION_783();
        fpfs_CheckIfLikelyToKeepUpAndNotify();
        Rate = CMTimebaseGetRate(*(v171 + 576));
        *(CMBaseObjectGetDerivedStorage() + 840) = Rate;
        fpfsi_updateMaxPlayThroughTime();
        fpfsi_updateItemTimePropertiesForRateChange(v173);
        OUTLINED_FUNCTION_498();
        if (v67)
        {
          v183 = OUTLINED_FUNCTION_783();
          fpfs_CancelGaplessAttemptGuts(v183, v184, 1);
        }
      }

      if (*(v170 + 912) && *(v170 + 462) && *(v170 + 593))
      {
        if (dword_1EAF169F0)
        {
          OUTLINED_FUNCTION_742();
          v185 = OUTLINED_FUNCTION_453();
          v186 = time2.value;
          os_log_and_send_and_compose_flags_and_os_log_type = v185;
          os_log_type_enabled(v185, time1.value);
          OUTLINED_FUNCTION_176();
          if (v67)
          {
            v188 = v187;
          }

          else
          {
            v188 = v186;
          }

          if (v188)
          {
            if (*v170)
            {
              v222 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v222 = "";
            }

            CMBaseObjectGetDerivedStorage();
            LODWORD(v260.value) = 136316162;
            OUTLINED_FUNCTION_804();
            HIWORD(v260.epoch) = 2082;
            v261 = v222;
            OUTLINED_FUNCTION_704();
            *(v223 + 34) = Next;
            OUTLINED_FUNCTION_703(v224);
            OUTLINED_FUNCTION_72();
            OUTLINED_FUNCTION_35();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_420();
          v101 = *(&v243 + 1);
        }

        fpfsi_SetCurrentTimeWithSeekID(Next, MEMORY[0x1E6960C88]);
      }
    }
  }

  else
  {
    fpfsi_pauseItem(v5);
    v104 = v243;
  }

  v189 = *(v242 + 80);
  if (v189)
  {
    CFRelease(v189);
    *(v242 + 80) = 0;
  }

  v103 = &unk_1EAF16000;
  if (Next)
  {
    if (*(v242 + 49))
    {
      v265.value = 0;
      fpfs_ensureTransaction(v101, &v265.value);
      fpfsi_removeLayerSync();
      fpfs_commitTransaction(v101, v265.value);
      if (v265.value)
      {
        CFRelease(v265.value);
      }
    }
  }

  v190 = *(DerivedStorage + 752);
  if (v190)
  {
    v191 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v191)
    {
      v191(v190);
    }
  }

  v192 = OUTLINED_FUNCTION_203();
  fpfs_cleanupAllImageQueues(v192, v193);
  fpfs_tearDownManifoldsAndStream(v5);
  fpfs_PullNextItem(v101);
  OUTLINED_FUNCTION_402();
  fpfs_EnqueueNotification(v194, v195, v196, v197);
  *(v242 + 112) = *v236;
  *(v242 + 128) = *(&v233 + 1);
  *(v242 + 136) = *v236;
  *(v242 + 152) = *(&v233 + 1);
  fpfs_enqueuePrerollWasCancelledNotificationIfNeeded(v5);
  if (dword_1EAF169F0)
  {
    OUTLINED_FUNCTION_742();
    v198 = OUTLINED_FUNCTION_453();
    os_log_type_enabled(v198, time1.value);
    OUTLINED_FUNCTION_37();
    if (v101)
    {
      if (*(&v243 + 1))
      {
        v199 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v199 = "";
      }

      if (v5)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(v260.value) = 136316418;
      *(&v260.value + 4) = "fpfs_StopPlayingItem";
      OUTLINED_FUNCTION_512();
      v261 = v199;
      OUTLINED_FUNCTION_704();
      *(v200 + 34) = v5;
      OUTLINED_FUNCTION_703(v201);
      *(v202 + 52) = 2112;
      *(v202 + 54) = v3;
      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_851();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449();
    v103 = &unk_1EAF16000;
  }

  while (1)
  {
    v203 = *(DerivedStorage + 1024);
    if (!v203)
    {
      break;
    }

    fpfs_DeleteTrack(v5, v203);
  }

  v204 = 0;
  do
  {
    v205 = v204;
    v206 = OUTLINED_FUNCTION_266();
    StoreCurrentManifold(v206, v207, 0, 0);
    v208 = OUTLINED_FUNCTION_266();
    StoreCurrentManifold(v208, v209, 1u, 0);
    ++v204;
  }

  while (v205 < 2);
  *(DerivedStorage + 463) = 0;
  CMBaseObjectGetDerivedStorage();
  v210 = OUTLINED_FUNCTION_297();
  fpfs_ClearAllCachedRenderChains(v210);
  *(v205 + 796) = 0;
  if (!Next)
  {
    fpfs_ResetAudioHardwareFormat(*DerivedStorage);
    fpfs_releaseTransitionImageQueuesAndSlots();
    v211 = OUTLINED_FUNCTION_615();
    fpfs_disassociatePlayerVideoLayer(v211, v212);
    fpfs_sendEmptyConfigurationToEachVideoTarget();
    v213 = *(v242 + 616);
    if (v213)
    {
      CFRelease(v213);
      *(v242 + 616) = 0;
    }

    v214 = *(v242 + 608);
    if (v214)
    {
      CFRelease(v214);
      *(v242 + 608) = 0;
    }
  }

  if (!fpfs_HaveHDRItem())
  {
    fpfs_ReleasePlayerHDRPlaybackBaton();
  }

  OUTLINED_FUNCTION_278();
  if (!fpfs_PlayQueueCallForEachItem(v215, v216, 0))
  {
    fpfs_ReleasePlayer4kPlaybackBaton(*DerivedStorage);
  }

  v217 = OUTLINED_FUNCTION_513();
  fpfs_PostRemovedFromPlayQueueNotifications(v217, v218);
  if (*(v242 + 463))
  {
    v219 = OUTLINED_FUNCTION_513();
    fpfs_UpdateNeroPlaybackActiveStateAndNotifyIfNeeded(v219, v220, 0);
  }

  v221 = *(DerivedStorage + 3136);
  if (v221)
  {
    CFRelease(v221);
    *(DerivedStorage + 3136) = 0;
  }

  fpfsi_ResetPlaybackItem();
  if (!Next)
  {
    OUTLINED_FUNCTION_513();
    fpfs_EnqueueCurrentItemDidChangeNotification();
  }

LABEL_132:
  if (v104 == v5)
  {
    if (*(DerivedStorage + 3400))
    {
      v108 = FigGetAllocatorForMedia();
      FigMetricItemPlaybackEndEventCreate(v108, 0, &v256);
      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v109 = OUTLINED_FUNCTION_249();
        v110(v109);
      }
    }

    v111 = fpfs_getNext(v242, 0);
    if (v111)
    {
      v112 = v111;
      if (v111 != v5)
      {
        v113 = CMBaseObjectGetDerivedStorage();
        if (!*(v113 + 2473) && v103[636])
        {
          OUTLINED_FUNCTION_742();
          v114 = OUTLINED_FUNCTION_453();
          OUTLINED_FUNCTION_846(v114, v115, v116, v117, v118, v119, v120, v121, v225, v227, v229, v231, v233, *(&v233 + 1), *v236, *&v236[4], v238, v242, v243, *(&v243 + 1), os_log_and_send_and_compose_flags_and_os_log_type, v250, time1.value, *&time1.timescale, time1.epoch, v253, BOOLean, cf, v256, v257, time2.value);
          OUTLINED_FUNCTION_28();
          if (Next)
          {
            if (v247)
            {
              v122 = v247;
              v123 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v122 = 0;
              v123 = "";
            }

            CMBaseObjectGetDerivedStorage();
            LODWORD(v260.value) = 136316162;
            *(&v260.value + 4) = "fpfs_StopPlayingItem";
            LOWORD(v260.flags) = 2048;
            *(&v260.flags + 2) = v122;
            HIWORD(v260.epoch) = 2082;
            v261 = v123;
            OUTLINED_FUNCTION_704();
            *(v140 + 34) = v112;
            OUTLINED_FUNCTION_703(v141);
            OUTLINED_FUNCTION_72();
            OUTLINED_FUNCTION_25();
            OUTLINED_FUNCTION_851();
          }

          OUTLINED_FUNCTION_2();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *(v113 + 470) = 1;
        fpfs_EnqueueNotification(*DerivedStorage, @"TimebaseChanged", v112, 0);
      }
    }
  }

LABEL_169:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v256)
  {
    CFRelease(v256);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  CFRelease(v5);
  OUTLINED_FUNCTION_191();
}