void fpfsi_RTCReportingUpdatePlayingTrackStats(uint64_t a1)
{
  if (*(a1 + 1024))
  {
    OUTLINED_FUNCTION_473();
    do
    {
      v6 = v3;
      if (*(v2 + 168) == 6)
      {
        v7 = *(v2 + 48);
        v8 = v7 == v4 && v5 == 0;
        v3 = v2;
        v9 = v2;
        if (!v8)
        {
          v3 = v6;
          v9 = v5;
          if (v7 == 1986618469)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v9 = v5;
      }

      v2 = *(v2 + 24);
      v5 = v9;
    }

    while (v2);
    if (!v3)
    {
      return;
    }

LABEL_13:
    if (*(v1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      OUTLINED_FUNCTION_446();

      v10();
    }
  }
}

void fpfsi_RTCReportingReportRateChange(double a1)
{
  OUTLINED_FUNCTION_523();
  if (v2)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v5 = OUTLINED_FUNCTION_235();
      v6(v5);
    }

    if (*(v1 + 2568))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_730(100.0);
        v7 = OUTLINED_FUNCTION_235();
        v8(v7);
      }

      if (*(v1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 16))
      {
        v9 = OUTLINED_FUNCTION_235();
        v10(v9);
      }
    }
  }

  if (a1 >= 1.0 && *(v1 + 2618) == 0)
  {
    CFAbsoluteTimeGetCurrent();
    v12 = *(v1 + 3016);
    *(v1 + 2618) = 1;
    if (*(v1 + 2568))
    {
      if (*(*(OUTLINED_FUNCTION_854() + 16) + 56))
      {
        OUTLINED_FUNCTION_492(v3 - v12, 1000.0);
        v13 = OUTLINED_FUNCTION_235();
        v14(v13);
      }
    }
  }

  if (a1 == 0.0 && *(v1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    v15 = OUTLINED_FUNCTION_177();

    v16(v15);
  }
}

uint64_t FigReportingAgentStatsSetIntValueWithOptions(uint64_t result)
{
  if (result)
  {
    VTable = CMBaseObjectGetVTable();
    v2 = *(VTable + 16);
    result = VTable + 16;
    if (*(v2 + 56))
    {
      v3 = OUTLINED_FUNCTION_502();

      return v4(v3);
    }
  }

  return result;
}

void fpfs_GetTimeForDate()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = MEMORY[0x1E6960C70];
  v171 = *MEMORY[0x1E69E9840];
  v143 = *MEMORY[0x1E6960C70];
  *v8 = *MEMORY[0x1E6960C70];
  v11 = *(v10 + 16);
  *(v8 + 16) = v11;
  memset(&v161, 0, sizeof(v161));
  memset(&v160, 0, sizeof(v160));
  CMTimeMake(&v160, 2, 1);
  memset(&v159, 0, sizeof(v159));
  *&v158.value = v143;
  v158.epoch = v11;
  cf = 0;
  v157 = 0;
  OUTLINED_FUNCTION_351();
  v12 = *(v7 + 1592);
  if (!v12)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_788();
  rhs = *v3;
  v13 = OUTLINED_FUNCTION_337();
  v15 = 0;
  if (CMTimeCompare(v13, v14) < 0)
  {
    while (1)
    {
      v16 = v12;
      if (*(v12 + 84))
      {
        v15 = v12;
      }

      v12 = *v12;
      if (!v12)
      {
        break;
      }

      OUTLINED_FUNCTION_788();
      rhs = lhs;
      v21 = OUTLINED_FUNCTION_337();
      if ((CMTimeCompare(v21, v22) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

LABEL_13:
    if (!v1)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v16 = 0;
LABEL_4:
  v170 = *(v12 + 1);
  rhs = lhs;
  v17 = OUTLINED_FUNCTION_337();
  if (CMTimeCompare(v17, v18))
  {
    if (!v16)
    {
      v16 = *(v7 + 1592);
      if (!v16)
      {
        goto LABEL_20;
      }

      v170 = lhs;
      rhs = *(v16 + 1);
      v19 = OUTLINED_FUNCTION_337();
      if ((CMTimeCompare(v19, v20) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_13;
  }

  v16 = v12;
  if (v1)
  {
LABEL_16:
    if (*(v16 + 21))
    {
      goto LABEL_18;
    }

    v16 = v15;
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_20:
    if (!fpfsi_CopyPlayerAndItemFromItemRetainProxy(*(v7 + 16), &v157, &cf))
    {
      if (dword_1EAF169F0)
      {
        LODWORD(lhs.value) = 0;
        OUTLINED_FUNCTION_201();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_189();
        if (v41)
        {
          v42 = v40;
        }

        else
        {
          v42 = 0;
        }

        if (v42)
        {
          v43 = v157;
          if (v157)
          {
            v44 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v44 = "";
          }

          v134 = cf;
          if (cf)
          {
            v135 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v135 = "";
          }

          v170 = *v3;
          Seconds = CMTimeGetSeconds(&v170);
          LODWORD(rhs.value) = 136316418;
          *(&rhs.value + 4) = "fpfs_GetTimeForDate";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v43;
          HIWORD(rhs.epoch) = 2082;
          v163 = v44;
          v164 = 2048;
          v165 = v134;
          v166 = 2082;
          v167 = v135;
          v168 = 2048;
          v169 = Seconds;
          OUTLINED_FUNCTION_72();
          OUTLINED_FUNCTION_86();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_524();
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v157)
      {
        CFRelease(v157);
      }
    }

    goto LABEL_48;
  }

LABEL_18:
  v23 = MEMORY[0x19A8CCD90](v5);
  v24 = MEMORY[0x19A8CCD90](v16[2]);
  CMTimeMake(&v159, ((v23 - v24) * 90000.0), 90000);
  rhs = *(v16 + 3);
  *&lhs.value = *&v159.value;
  OUTLINED_FUNCTION_41();
  CMTimeAdd(v27, v25, v26);
  value = v170.value;
  timescale = v170.timescale;
  flags = v170.flags;
  epoch = v170.epoch;
  v170 = *(v16 + 1);
  rhs = v159;
  v32 = OUTLINED_FUNCTION_337();
  CMTimeAdd(v34, v32, v33);
  rhs = v158;
  *&lhs.value = *(v16 + 3);
  OUTLINED_FUNCTION_41();
  CMTimeSubtract(v37, v35, v36);
  v158 = v170;
  if ((flags & 1) == 0)
  {
    *v9 = *&v158.value;
    v38 = v158.epoch;
LABEL_36:
    *(v9 + 16) = v38;
    goto LABEL_48;
  }

  rhs = *(v7 + 1160);
  OUTLINED_FUNCTION_41();
  CMTimeSubtract(v47, v45, v46);
  CMTimeAbsoluteValue(&rhs, &v170);
  lhs = v160;
  CMTimeAdd(&v170, &lhs, &rhs);
  v160 = v170;
  if (timescale == 90000)
  {
    v48 = value & 0x1FFFFFFFFLL;
  }

  else
  {
    v48 = value;
  }

  v170.value = value;
  v170.timescale = timescale;
  v170.flags = flags;
  v170.epoch = epoch;
  rhs = *(v16 + 4);
  v49 = OUTLINED_FUNCTION_337();
  v52 = CMTimeAdd(v51, v49, v50);
  OUTLINED_FUNCTION_22(v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v137, v140, v143, *(&v143 + 1), v148, v151, lhs.value, *&lhs.timescale, lhs.epoch, v155, cf, v157, *&v158.value, v158.epoch, v159.value, *&v159.timescale, v159.epoch, *&v160.value);
  CMTimeSubtract(v70, v68, v69);
  OUTLINED_FUNCTION_157();
  v71 = OUTLINED_FUNCTION_337();
  v73 = CMTimeCompare(v71, v72);
  if ((v73 & 0x80000000) != 0 && (OUTLINED_FUNCTION_22(v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v138, v141, v144, v146, v149, v152, lhs.value, *&lhs.timescale, lhs.epoch, v155, cf, v157, *&v158.value, v158.epoch, v159.value, *&v159.timescale, v159.epoch, *&v160.value), CMTimeAdd(v91, v89, v90), OUTLINED_FUNCTION_157(), CMTimeCompare(&rhs, &v170) < 0) || (rhs.value = v48, rhs.timescale = timescale, rhs.flags = flags, rhs.epoch = epoch, *&lhs.value = *(v16 + 6), OUTLINED_FUNCTION_41(), v95 = CMTimeAdd(v94, v92, v93), v161 = v170, OUTLINED_FUNCTION_22(v95, v96, v97, v98, v99, v100, v101, v102, *&v170.value, v103, v104, v105, v106, v107, v108, v109, v138, v141, v144, v146, v149, v152, lhs.value, *&lhs.timescale, lhs.epoch, v155, cf, v157, *&v158.value, v158.epoch, v159.value, *&v159.timescale, v159.epoch, *&v160.value), CMTimeSubtract(v112, v110, v111), OUTLINED_FUNCTION_157(), v113 = OUTLINED_FUNCTION_337(), v115 = CMTimeCompare(v113, v114), (v115 & 0x80000000) != 0) && (OUTLINED_FUNCTION_22(v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v139, v142, v145, v147, v150, v153, lhs.value, *&lhs.timescale, lhs.epoch, v155, cf, v157, *&v158.value, v158.epoch, v159.value, *&v159.timescale, v159.epoch, *&v160.value), CMTimeAdd(v133, v131, v132), OUTLINED_FUNCTION_157(), CMTimeCompare(&rhs, &v170) < 0))
  {
    *v9 = *&v161.value;
    v38 = v161.epoch;
    goto LABEL_36;
  }

LABEL_48:
  OUTLINED_FUNCTION_191();
}

void fpfsi_GetPumpMaxTimeAvailable(CMTime *a1@<X8>)
{
  OUTLINED_FUNCTION_390(MEMORY[0x1E6960C70]);
  a1->epoch = v2;
  if (*(v3 + 912))
  {
    FigGetAllocatorForMedia();
    v4 = OUTLINED_FUNCTION_413();
    FigBytePumpGetFigBaseObject(v4);
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v5 = OUTLINED_FUNCTION_308();
      v7 = v6(v5);
      v15 = OUTLINED_FUNCTION_582(v7, v8, v9, v10, v11, v12, v13, v14, v17, 0);
      if (!v16 && v15)
      {
        CMTimeMakeFromDictionary(a1, v15);
        v15 = cf;
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }
  }
}

void fpfs_AddNewTrack()
{
  OUTLINED_FUNCTION_650();
  v107 = v0;
  v108 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  LODWORD(v11) = v10;
  v13 = v12;
  v106[16] = *MEMORY[0x1E69E9840];
  v75 = v4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = DerivedStorage;
  v74 = 0;
  v16 = *(DerivedStorage + 1096) + 1;
  if (!v3)
  {
    v3 = *(DerivedStorage + 1096) + 1;
  }

  v17 = 1680;
  if (*(DerivedStorage + 16 * v7 + 984) == v9)
  {
    v17 = 1744;
  }

  v18 = 1104;
  if (*(DerivedStorage + 16 * v7 + 984) == v9)
  {
    v18 = 1128;
  }

  v19 = *(DerivedStorage + v18 + 8 * v7);
  v20 = *(DerivedStorage + v17);
  AllocatorForMedia = FigGetAllocatorForMedia();
  v22 = FigStreamTrackCreate(AllocatorForMedia, v16, v3, v13, v11, v9, v7, v5, v19, v20, &v74);
  if (v74)
  {
    ++*(v15 + 1096);
    v24 = OUTLINED_FUNCTION_858(v22, v23, &v75);
    v25 = *(v15 + 168);
    v76 = *(v74 + 32);
    v106[0] = 0;
    if (v25)
    {
      v11 = @"MediaType";
      if (@"MediaType")
      {
        FigPropertyStorageCopyValue(v25, @"TrackPropertyStorages", v106);
        v26 = v106[0];
        v27 = FigGetAllocatorForMedia();
        if (v26)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(v27, 0, v106[0]);
        }

        else
        {
          MutableCopy = CFDictionaryCreateMutable(v27, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v30 = MutableCopy;
        if (MutableCopy)
        {
          v31 = OUTLINED_FUNCTION_858(MutableCopy, v29, &v76);
          if (v31)
          {
            v32 = v31;
            v33 = OUTLINED_FUNCTION_784();
            Value = CFDictionaryGetValue(v33, v34);
            v36 = FigGetAllocatorForMedia();
            if (Value)
            {
              Mutable = CFDictionaryCreateMutableCopy(v36, 0, Value);
            }

            else
            {
              Mutable = CFDictionaryCreateMutable(v36, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            }

            v38 = Mutable;
            if (Mutable)
            {
              v39 = OUTLINED_FUNCTION_771();
              CFDictionarySetValue(v39, v40, v24);
              v41 = OUTLINED_FUNCTION_784();
              CFDictionarySetValue(v41, v42, v38);
              FigPropertyStorageSetValue(v25, @"TrackPropertyStorages", v30);
              CFRelease(v32);
            }

            else
            {
              v38 = v32;
            }

            CFRelease(v38);
          }

          CFRelease(v30);
        }

        if (v106[0])
        {
          CFRelease(v106[0]);
        }
      }
    }

    v43 = v74;
    v44 = v74;
    *(v74 + 24) = 0;
    **(v15 + 1032) = v43;
    *(v15 + 1032) = v44 + 24;
    OUTLINED_FUNCTION_33();
    v47 = v47 || v46 == 1936684398;
    if (v47)
    {
      fpfs_CreateTrackDryTimer(v45);
      v65 = *(v15 + 1680);
      if (v65)
      {
        AlternateIndex = FigAlternateGetAlternateIndex(v65);
        LODWORD(v106[0]) = AlternateIndex;
        v68 = OUTLINED_FUNCTION_858(AlternateIndex, v67, v106);
        v69 = v74;
        *(v74 + 448) = v68;
        *(v69 + 464) = *(v15 + 1728);
      }
    }

    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    if (!dword_1EAF169F0)
    {
      goto LABEL_40;
    }

    v48 = OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_130(v48, v49, v50, v51, v52, v53, v54, v55, v70, v71, v72, v73, SBYTE2(v73), BYTE3(v73), SHIDWORD(v73));
    OUTLINED_FUNCTION_28();
    if (!v11)
    {
LABEL_39:
      OUTLINED_FUNCTION_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_40:
      fpfsi_CheckSpeedRampCompatibility();
      if (v24)
      {
        CFRelease(v24);
      }

      goto LABEL_42;
    }

    v56 = *v15;
    if (*v15)
    {
      v57 = (CMBaseObjectGetDerivedStorage() + 888);
      if (v13)
      {
LABEL_34:
        v58 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_38:
        v59 = *(v15 + 160);
        v60 = *(v74 + 32);
        v61 = *(v74 + 80);
        v62 = *(v74 + 48);
        v64 = *(v74 + 40);
        v63 = *(v74 + 44);
        v76 = 136318722;
        v77 = "fpfs_AddNewTrack";
        v78 = 2048;
        v79 = v56;
        v80 = 2082;
        v81 = v57;
        v82 = 2048;
        v83 = v13;
        v84 = 2082;
        v85 = v58;
        v86 = 1024;
        v87 = v59;
        v88 = 2048;
        v89 = v60;
        v90 = 1024;
        v91 = v7;
        v92 = 1024;
        v93 = v64;
        v94 = 1024;
        v95 = v61;
        v96 = 1024;
        v97 = HIBYTE(v62);
        v98 = 1024;
        v99 = BYTE2(v62);
        v100 = 1024;
        v101 = BYTE1(v62);
        v102 = 1024;
        v103 = v62;
        v104 = 1024;
        v105 = v63;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_408();
        goto LABEL_39;
      }
    }

    else
    {
      v57 = "";
      if (v13)
      {
        goto LABEL_34;
      }
    }

    v58 = "";
    goto LABEL_38;
  }

LABEL_42:
  OUTLINED_FUNCTION_602();
}

void fpfs_fmtDescChangeNote()
{
  OUTLINED_FUNCTION_649();
  v152 = v2;
  v4 = v3;
  v6 = v5;
  v150 = v7;
  v153 = v8;
  v177 = *MEMORY[0x1E69E9840];
  MediaType = CMFormatDescriptionGetMediaType(v3);
  v10 = *(v6 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v155 = OUTLINED_FUNCTION_724(DerivedStorage);
  v12 = CMBaseObjectGetDerivedStorage();
  v13 = (*(v6 + 244) & 1) == 0 || CMBufferQueueGetBufferCount(*(v6 + 96)) == 0;
  MediaSubType = CMFormatDescriptionGetMediaSubType(v4);
  v15 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(v15);
  FigSimpleMutexLock();
  ++*(v0 + 8);
  if (!*(v12 + 32) || *(v6 + 56) == v4 && *(v6 + 400) == v152)
  {
    goto LABEL_230;
  }

  if (*(v6 + 48) != MediaType)
  {
    goto LABEL_277;
  }

  if (MediaType == 1986618469)
  {
    if (*(v6 + 456))
    {
      VideoDynamicRange = CMVideoFormatDescriptionGetVideoDynamicRange();
      v17 = VideoDynamicRange < 4 || VideoDynamicRange == 7;
      if (!v17 && FigAlternateGetVideoRange(*(v6 + 456)) != 3)
      {
        goto LABEL_277;
      }
    }

    if (!FPSupport_FormatDescriptionIndicatesStereoVideo(v4))
    {
      goto LABEL_63;
    }

    if (MediaSubType != 1635135537)
    {
      switch(MediaSubType)
      {
        case 0x63646831u:
          goto LABEL_60;
        case 0x63687663u:
          goto LABEL_55;
        case 0x646D7578u:
        case 0x64766831u:
        case 0x64766865u:
          goto LABEL_60;
      }

      v20 = MediaSubType == 1718908520 || MediaSubType == 1718908528;
      v21 = v20 || MediaSubType == 1751479857;
      v22 = v21 || MediaSubType == 1752589105;
      v23 = v22 || MediaSubType == 1836415073;
      if (v23 || MediaSubType == 1869117027)
      {
LABEL_55:
        if (*(v12 + 941) && !FPSupport_FormatDescriptionIndicatesFishEyeProjection(v4) && CMVideoFormatDescriptionGetVideoDynamicRange() != 1)
        {
          goto LABEL_277;
        }

LABEL_63:
        if (!FPSupport_FormatDescriptionIndicatesStereoVideo(v4) && CMVideoFormatDescriptionGetVideoDynamicRange() == 10)
        {
          goto LABEL_277;
        }

        goto LABEL_65;
      }

      if (MediaSubType != 1902212657)
      {
        if (MediaSubType != 1902405681 && MediaSubType != 1902405733)
        {
          if (MediaSubType != 1902998904 && MediaSubType != 1902667126 && MediaSubType != 1902671459)
          {
            if (MediaSubType != 1902407032)
            {
LABEL_108:
              v53 = 4294954369;
LABEL_229:
              fpfs_StopPlayingItemWithOSStatus(v12, v10, v53);
              goto LABEL_230;
            }

            goto LABEL_60;
          }

          goto LABEL_55;
        }

LABEL_60:
        if (CMVideoFormatDescriptionGetVideoDynamicRange() != 10)
        {
LABEL_277:
          OUTLINED_FUNCTION_82();
          goto LABEL_278;
        }

        goto LABEL_63;
      }
    }

    if (CMVideoFormatDescriptionGetVideoDynamicRange() != 1)
    {
      goto LABEL_277;
    }

    goto LABEL_63;
  }

LABEL_65:
  v28 = v1[50];
  if (v28)
  {
    Value = CFDictionaryGetValue(v28, @"assetOption_AllowableVideoCodecTypes");
    v30 = CFDictionaryGetValue(v1[50], @"assetOption_AllowableAudioCodecTypes");
    v31 = CFDictionaryGetValue(v1[50], @"assetOption_AllowableCaptionsFormats");
    if (!FPSupport_IsFormatDescAllowable(v4, Value, v30, v31))
    {
      goto LABEL_108;
    }
  }

  OUTLINED_FUNCTION_751();
  v154 = v1;
  if (!v17)
  {
    if (v32 == 1936684398)
    {
      v40 = FigAudioFormatDescriptionEmploysDependentPackets();
      v149 = 1;
      goto LABEL_85;
    }

LABEL_84:
    v149 = 0;
    v40 = 0;
    goto LABEL_85;
  }

  v33 = *(v12 + 56);
  if (!v33)
  {
    goto LABEL_84;
  }

  v34 = MediaSubType == 1667331683 || MediaSubType == 1667790435;
  if (!v34 && MediaSubType != 1667524657)
  {
    goto LABEL_84;
  }

  v36 = v12;
  v37 = SecTaskCopyValueForEntitlement(v33, @"com.apple.coremedia.allow-mpeg4streaming", 0);
  v38 = v37;
  v39 = *MEMORY[0x1E695E4D0];
  if (v37)
  {
    CFRelease(v37);
  }

  if (v38 != v39)
  {
    OUTLINED_FUNCTION_82();
    v53 = FigSignalErrorAtGM();
    v12 = v36;
    goto LABEL_279;
  }

  v149 = 0;
  v40 = 0;
  v12 = v36;
LABEL_85:
  if (*(v6 + 56) && (v41 = OUTLINED_FUNCTION_480(), !fpfs_FormatsAreCompatible(v41, v42, v43)))
  {
    OUTLINED_FUNCTION_133();
    fpfs_StopFeedingTrack(v54, v55, v56);
    fpfs_AddNewTrack();
    if (!v57)
    {
      goto LABEL_277;
    }

    v44 = v57;
    if (v13)
    {
      fpfs_DeleteTrack(v10, v6);
      v151 = 0;
      v6 = v44;
    }

    else
    {
      v151 = 0;
    }
  }

  else
  {
    v151 = 1;
    v44 = v6;
  }

  v45 = v154 + 122;
  OUTLINED_FUNCTION_746();
  v50 = v17;
  if (*(v49 + v48 + (v50 | (2 * v50)) + 512) | v50 && !*(v6 + 56))
  {
    v51 = v154[128];
    if (v51)
    {
      while (1)
      {
        v52 = *(v51 + 64);
        if (v52 != v46 && *(v51 + 168) == 6 && *(v51 + 80) == *(v44 + 80) && v52 != v45[2 * *(v51 + 196) + 1])
        {
          break;
        }

        v51 = *(v51 + 24);
        if (!v51)
        {
          goto LABEL_99;
        }
      }
    }

    else
    {
LABEL_99:
      if (v46 != v47)
      {
        goto LABEL_114;
      }
    }

    OUTLINED_FUNCTION_33();
    if (!v17 || fpfs_CanRenderVideo(v12, v10))
    {
      fpfs_ChangeTrackState(v44, 1u);
      if (*(v154 + 704) > *(v154 + 705))
      {
        OUTLINED_FUNCTION_33();
        if (v17)
        {
          *(v154 + 2849) = 1;
        }

        else
        {
          OUTLINED_FUNCTION_63();
          if (v17)
          {
            *(v154 + 2848) = 1;
          }
        }
      }
    }
  }

LABEL_114:
  v58 = *(v44 + 56);
  *(v44 + 56) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  OUTLINED_FUNCTION_33();
  if (v17)
  {
    cf[0].value = 0;
    AllocatorForMedia = FigGetAllocatorForMedia();
    v61 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v61 && !v61(v153, v150, @"FMFD_TrackMatrixArray", AllocatorForMedia, cf))
    {
      v62 = *(v44 + 72);
      v63 = cf[0].value;
      *(v44 + 72) = cf[0].value;
      if (v63)
      {
        CFRetain(v63);
      }

      if (v62)
      {
        CFRelease(v62);
      }
    }

    if (cf[0].value)
    {
      CFRelease(cf[0].value);
    }

    v59 = *(v44 + 48);
  }

  if (v59 == 1936684398)
  {
    v175 = *MEMORY[0x1E6960C70];
    timescale = *(MEMORY[0x1E6960C70] + 8);
    v157 = 0;
    if (!*(v44 + 56))
    {
      OUTLINED_FUNCTION_82();
LABEL_278:
      v53 = FigSignalErrorAtGM();
LABEL_279:
      if (!v53)
      {
        goto LABEL_230;
      }

      goto LABEL_229;
    }

    flags = *(MEMORY[0x1E6960C70] + 12);
    epoch = *(MEMORY[0x1E6960C70] + 16);
    *(v44 + 436) = v40;
    v66 = FigGetAllocatorForMedia();
    v67 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v67 && !v67(v153, v150, @"FMFD_TrackAudioPrimingDuration", v66, &v157) && v157)
    {
      v81 = CFGetTypeID(v157);
      if (v81 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(cf, v157);
        v175 = cf[0].value;
        timescale = cf[0].timescale;
        flags = cf[0].flags;
        epoch = cf[0].epoch;
      }

      if (v157)
      {
        CFRelease(v157);
      }
    }

    v68 = (v44 + 412);
    v69 = &unk_1EAF16000;
    if ((flags & 0x1D) == 1)
    {
      *v68 = v175;
      *(v44 + 420) = timescale;
      *(v44 + 424) = flags;
      *(v44 + 428) = epoch;
    }

    else
    {
      FigGaplessInfoGetDefaultAudioPrimingDuration(*(v44 + 56), cf);
      v70 = *&cf[0].value;
      *(v44 + 428) = cf[0].epoch;
      *v68 = v70;
      if (*(v12 + 968))
      {
        mFormatID = CMAudioFormatDescriptionGetMostCompatibleFormat(*(v44 + 56))->mASBD.mFormatID;
        v156 = 0;
        v72 = v154[5];
        v73 = FigGetAllocatorForMedia();
        v74 = v72;
        v69 = &unk_1EAF16000;
        FigAlternateSelectionBossCopyProperty(v74, @"HasMultiChannelAudio", v73, &v156);
        if (!*(v154 + 3464))
        {
          v100 = mFormatID == 1633771875 || mFormatID == 1633772320;
          v101 = v100 || mFormatID == 1667326307;
          v102 = v101 || mFormatID == 1667575091;
          v103 = v102 || mFormatID == 1700998451;
          v104 = v103 || mFormatID == 1885430115;
          v105 = v104 || mFormatID == 1885692723;
          v106 = v105 || mFormatID == 1902207331;
          v107 = v106 || mFormatID == 1902469939;
          v108 = v107 || mFormatID == 2053464883;
          if (v108 || mFormatID == 2053202275)
          {
            if (FigCFEqual())
            {
              *(v154 + 3464) = 1;
              if (dword_1EAF169F0)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                OUTLINED_FUNCTION_233();
                if (v17)
                {
                  v112 = v111;
                }

                else
                {
                  v112 = 0;
                }

                if (v112)
                {
                  v148 = v12;
                  v113 = v10;
                  v114 = *v154;
                  if (*v154)
                  {
                    v115 = (CMBaseObjectGetDerivedStorage() + 888);
                  }

                  else
                  {
                    v115 = "";
                  }

                  if (v113)
                  {
                    v144 = (CMBaseObjectGetDerivedStorage() + 3096);
                  }

                  else
                  {
                    v144 = "";
                  }

                  v145 = *(v44 + 32);
                  v158 = 136317442;
                  v159 = "fpfs_fmtDescChangeNote";
                  v160 = 2048;
                  v161 = v114;
                  v162 = 2082;
                  v163 = v115;
                  v164 = 2048;
                  v165 = v113;
                  v166 = 2082;
                  v167 = v144;
                  v168 = 1024;
                  v169 = v145;
                  v170 = 1024;
                  *v171 = HIBYTE(mFormatID);
                  *&v171[4] = 1024;
                  *&v171[6] = BYTE2(mFormatID);
                  *v172 = 1024;
                  *&v172[2] = BYTE1(mFormatID);
                  LOWORD(v173) = 1024;
                  *(&v173 + 2) = mFormatID;
                  OUTLINED_FUNCTION_378();
                  OUTLINED_FUNCTION_36();
                  _os_log_send_and_compose_impl();
                  v10 = v113;
                  v12 = v148;
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_467();
                v69 = &unk_1EAF16000;
              }
            }
          }
        }

        if (v156)
        {
          CFRelease(v156);
        }

        v68 = (v44 + 412);
      }
    }

    if (v69[636])
    {
      LODWORD(v156) = 0;
      v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v76 = v156;
      os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_233();
      if (v17)
      {
        v78 = v77;
      }

      else
      {
        v78 = v76;
      }

      if (v78)
      {
        v79 = *v154;
        if (*v154)
        {
          v80 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v80 = "";
        }

        v146 = v80;
        v147 = v12;
        v82 = v68;
        if (v10)
        {
          v83 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v83 = "";
        }

        v84 = *(v44 + 32);
        v85 = v82;
        v86 = *v82;
        v87 = *(v44 + 420);
        v88 = *v85;
        cf[0].epoch = v85[2];
        *&cf[0].value = v88;
        Seconds = CMTimeGetSeconds(cf);
        v158 = 136317186;
        v159 = "fpfs_fmtDescChangeNote";
        v160 = 2048;
        v161 = v79;
        v162 = 2082;
        v163 = v146;
        v164 = 2048;
        v165 = v10;
        v166 = 2082;
        v167 = v83;
        v168 = 1024;
        v169 = v84;
        v170 = 2048;
        *v171 = v86;
        *&v171[8] = 1024;
        *v172 = v87;
        *&v172[4] = 2048;
        v173 = Seconds;
        OUTLINED_FUNCTION_378();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
        v12 = v147;
        v45 = v154 + 122;
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_467();
    }
  }

  if ((v151 & 1) == 0)
  {
    v90 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v90)
    {
      goto LABEL_228;
    }

    v91 = v90(v153, v150, &kManifoldOutputCallbacks, v44);
    if (v91)
    {
      v53 = v91;
      goto LABEL_229;
    }
  }

  v92 = v154;
  for (i = v154[128]; i; i = *(i + 24))
  {
    OUTLINED_FUNCTION_247();
    if (v17 && !*(i + 112))
    {
      break;
    }
  }

  if (i == v44)
  {
    OUTLINED_FUNCTION_751();
    if (v17 && v154[104] && (v94 = OUTLINED_FUNCTION_480(), !fpfs_FormatsAreCompatible(v94, v95, v96)))
    {
      fpfsi_ClearCachedVideoRenderChains(v10);
    }

    else if (v149)
    {
      if (v154[103])
      {
        v97 = OUTLINED_FUNCTION_480();
        if (!fpfs_FormatsAreCompatible(v97, v98, v99))
        {
          fpfsi_ClearCachedAudioRenderChains(v10);
        }
      }
    }
  }

  if (*(v44 + 400))
  {
    v142 = OUTLINED_FUNCTION_396();
    fpfsi_RemoveCPECryptorListenersOncePerItem(v142, v143);
    v116 = *(v44 + 400);
  }

  else
  {
    v116 = 0;
  }

  *(v44 + 400) = v152;
  if (v152)
  {
    CFRetain(v152);
  }

  if (v116)
  {
    CFRelease(v116);
  }

  if (!v152)
  {
    goto LABEL_250;
  }

  v117 = *(v12 + 728);
  v118 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v118)
  {
LABEL_228:
    v53 = 4294954514;
    goto LABEL_229;
  }

  v119 = v118(v152, @"DisplayList", v117);
  if (v119 != -15844)
  {
    v53 = v119;
    if (v119 == -12785)
    {
      v53 = 4294954373;
      goto LABEL_229;
    }

    if (v119)
    {
      goto LABEL_229;
    }
  }

  v120 = v12;
  v121 = *(v44 + 400);
  v122 = CMBaseObjectGetDerivedStorage();
  if (v121)
  {
    v123 = *(v122 + 1024);
    if (v123)
    {
      while (v123 == v44 || *(v123 + 400) != v121)
      {
        v123 = *(v123 + 24);
        if (!v123)
        {
          goto LABEL_237;
        }
      }
    }

    else
    {
LABEL_237:
      v124 = *(v122 + 1040);
      if (v124)
      {
        while (v124 == v44 || *(v124 + 400) != v121)
        {
          v124 = *(v124 + 24);
          if (!v124)
          {
            goto LABEL_241;
          }
        }
      }

      else
      {
LABEL_241:
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_287();
        OUTLINED_FUNCTION_186();
        HasStarted = FigNotificationCenterAddWeakListener();
        if (HasStarted)
        {
          goto LABEL_274;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_286();
        OUTLINED_FUNCTION_186();
        HasStarted = FigNotificationCenterAddWeakListener();
        if (HasStarted)
        {
          goto LABEL_274;
        }
      }
    }
  }

  if (fpfs_isDecryptorReady(v44))
  {
    HasStarted = fpfs_ensureDecryptorHasStarted(v44);
    if (HasStarted)
    {
LABEL_274:
      v53 = HasStarted;
      v12 = v120;
      goto LABEL_229;
    }
  }

  OUTLINED_FUNCTION_33();
  v92 = v154;
  if (v17)
  {
    v126 = v154[321];
    if (v126)
    {
      v127 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v127)
      {
        v127(v126, @"playerStats", 0x1F0B42818, 1, 1);
      }
    }
  }

LABEL_250:
  fpfsi_PostExternalProtectionRequiredChangedNotification(v10);
  fpfs_ExternalProtectionStatusChangedGuts(*v92, v128, v129, v130, v131, v132, v133, v134);
  OUTLINED_FUNCTION_33();
  if (v17)
  {
    fpfsi_setHasDiscoveredVideoAndNotify(v155, v10);
    fpfsi_setStereoAudioSpatializationByDefaultForVideoItem(v10);
  }

  v135 = 0;
  v136 = 0;
  do
  {
    v137 = 0;
    v138 = 1;
    do
    {
      v139 = v138;
      if (v45[2 * v135 + v137])
      {
        v140 = 1 << v135;
      }

      else
      {
        v140 = 0;
      }

      v136 |= v140;
      v137 = 1;
      v138 = 0;
    }

    while ((v139 & 1) != 0);
    ++v135;
  }

  while (v135 != 3);
  v141 = *(v92 + 268);
  if (v141 == v136)
  {
    fpfs_PrepareAndEnqueueTracksChangedNotification(v155, v10);
    fpfs_FreeDeadTracks(v92);
    v141 = *(v92 + 268);
  }

  if (((v141 ^ v136) & 3) == 0)
  {
    fpfs_PostHasEnabledTrackTypeNotification(*v92, v10);
  }

LABEL_230:
  fpfs_UnlockAndPostNotificationsWithCaller(v155);
  OUTLINED_FUNCTION_651();
}

void fpfs_EnsureRenderChainForTrack()
{
  OUTLINED_FUNCTION_649();
  v4 = v3;
  LODWORD(v506) = v5;
  OUTLINED_FUNCTION_187();
  v523 = *MEMORY[0x1E69E9840];
  v7 = *(v6 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v507 = CMBaseObjectGetDerivedStorage();
  v508 = 0;
  if (*(DerivedStorage + 2904))
  {
    OUTLINED_FUNCTION_434();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    FigBaseObject = LODWORD(v521[0]);
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
    OUTLINED_FUNCTION_121();
    if (v76)
    {
      v11 = v10;
    }

    else
    {
      v11 = v521[0];
    }

    if (v11)
    {
      if (v1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      if (*(v0 + 16))
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(keys.value) = 136316418;
      OUTLINED_FUNCTION_98();
      *(&keys.flags + 2) = v1;
      OUTLINED_FUNCTION_164();
      OUTLINED_FUNCTION_591();
      OUTLINED_FUNCTION_609();
      *v520 = v12;
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl();
      FigBaseObject = LODWORD(v521[0]);
    }

    OUTLINED_FUNCTION_729();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_414();
  }

  if (*(v0 + 400) && fpfs_isDecryptorReady(v0) && fpfs_ensureDecryptorHasStarted(v0))
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_131();
  if (*(DerivedStorage + 2472) && (OUTLINED_FUNCTION_194(), fpfs_FirstTrackWithFormatDescriptionOfType(v13, v14) == v0) && (v15 = *(v507 + 80)) != 0 && v7 == fpfs_getNext(v507, v15))
  {
    fpfs_CommitToGaplessTransition();
    v16 = v119;
    if (!v119 || *(v0 + 112))
    {
      goto LABEL_623;
    }
  }

  else
  {
    v16 = 0;
  }

  if (*(v0 + 112))
  {
    if (!fpfsi_CanReuseRenderChainForTrack())
    {
      fpfs_ReleaseTrackRenderChain(v0);
      OUTLINED_FUNCTION_589();
      if (v76)
      {
        fpfs_PrepareAndEnqueueSpatialAudioRenderingChangedNotification(*DerivedStorage, *(v0 + 16), v29, v30, v31, v32, v33, v34);
      }

      goto LABEL_22;
    }

LABEL_623:
    OUTLINED_FUNCTION_589();
    if (v76)
    {
      v420 = *(v0 + 456);
      CurrentAudioPersistentIDFromMediaOption = fpfsi_GetCurrentAudioPersistentIDFromMediaOption();
      if (FigAlternateGetAudioInstreamID(v420, CurrentAudioPersistentIDFromMediaOption))
      {
        v422 = OUTLINED_FUNCTION_713();
        FigRenderPipelineGetFigBaseObject(v422);
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v423 = OUTLINED_FUNCTION_236();
          v424(v423);
        }
      }
    }

    goto LABEL_29;
  }

LABEL_22:
  v17 = 0;
  while (*&kCommonTypes[4 * v17] != *(v0 + 48))
  {
    if (++v17 == 5)
    {
      goto LABEL_27;
    }
  }

  if (v17 >= 5)
  {
LABEL_27:
    OUTLINED_FUNCTION_239();
LABEL_28:
    FigSignalErrorAtGM();
    goto LABEL_29;
  }

  v18 = CMBaseObjectGetDerivedStorage();
  v19 = *(v0 + 48);
  cf = v4;
  v505 = v7;
  if (v19 == 1668047728)
  {
    v35 = (v18 + 816);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_33();
  if (v76)
  {
    v35 = (v20 + 832);
LABEL_49:
    isa = v1;
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_544();
  if (v76)
  {
    v35 = (v21 + 808);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_63();
  if (v76)
  {
    v35 = (v22 + 824);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_217();
  isa = v1;
  if (!v76 || (v25 = *(v23 + 1024)) == 0)
  {
LABEL_40:
    v28 = 0;
    goto LABEL_51;
  }

  while (1)
  {
    if (v25 != v0)
    {
      v26 = OUTLINED_FUNCTION_624();
      if (FigStreamTrackCanTracksBeSyncPairsIgnoringDiscontinuity(v26, v27))
      {
        break;
      }
    }

    v25 = *(v25 + 24);
    if (!v25)
    {
      goto LABEL_40;
    }
  }

  v35 = (v25 + 112);
LABEL_50:
  v28 = *v35;
LABEL_51:
  v36 = v506;
  v37 = MEMORY[0x1E695E4D0];
  v506 = isa;
  if (v36)
  {
    v38 = *(v0 + 48);
    goto LABEL_53;
  }

  CanReuseRenderChainForTrack = fpfsi_CanReuseRenderChainForTrack();
  v38 = *(v0 + 48);
  if (CanReuseRenderChainForTrack)
  {
    OUTLINED_FUNCTION_33();
    if (v76 && *v28 == 1)
    {
      v340 = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
      if (v340 && v340 != -12850)
      {
        goto LABEL_29;
      }
    }

    *(v0 + 112) = v28;
    ++*v28;
    *(v0 + 201) = 1;
    if (*(v0 + 104))
    {
      v117 = v505;
LABEL_242:
      OUTLINED_FUNCTION_713();
      cf = FigCFCopyCompactDescription();
      if (dword_1EAF169F0)
      {
        OUTLINED_FUNCTION_434();
        v503 = OUTLINED_FUNCTION_339();
        os_log_type_enabled(v503, type[0]);
        OUTLINED_FUNCTION_189();
        if (v76)
        {
          v183 = v182;
        }

        else
        {
          v183 = v521[0];
        }

        if (v183)
        {
          FigBaseObject = *DerivedStorage;
          if (*DerivedStorage)
          {
            v184 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v184 = "";
          }

          v208 = *(v0 + 16);
          if (v208)
          {
            v209 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v209 = "";
          }

          v210 = *(DerivedStorage + 160);
          v211 = *(v0 + 48);
          v212 = *(v0 + 112);
          v213 = *(v0 + 32);
          LODWORD(keys.value) = 136317954;
          *(&keys.value + 4) = "fpfs_EnsureRenderChainForTrack";
          LOWORD(keys.flags) = 2048;
          *(&keys.flags + 2) = FigBaseObject;
          HIWORD(keys.epoch) = 2082;
          v514 = v184;
          v515 = 2048;
          isa = &v485[3];
          v516 = v208;
          v517 = 2082;
          v518 = v209;
          v519 = 1024;
          *v520 = v210;
          *&v520[4] = 1024;
          *&v520[6] = HIBYTE(v211);
          *&v520[10] = 1024;
          *&v520[12] = BYTE2(v211);
          *&v520[16] = 1024;
          *&v520[18] = BYTE1(v211);
          *&v520[22] = 1024;
          *&v520[24] = v211;
          *&v520[28] = 2048;
          *&v520[30] = v212;
          *&v520[38] = 2048;
          *&v520[40] = v213;
          OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_34();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_84();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_524();
        v117 = v505;
        if (dword_1EAF169F0)
        {
          OUTLINED_FUNCTION_434();
          v214 = OUTLINED_FUNCTION_339();
          v215 = v521[0];
          os_log_type_enabled(v214, type[0]);
          OUTLINED_FUNCTION_189();
          if (v76)
          {
            v217 = v216;
          }

          else
          {
            v217 = v215;
          }

          if (v217)
          {
            v503 = v214;
            FigBaseObject = *DerivedStorage;
            if (*DerivedStorage)
            {
              v218 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v218 = "";
            }

            v230 = *(v0 + 16);
            if (v230)
            {
              v231 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v231 = "";
            }

            LODWORD(keys.value) = 136317698;
            *(&keys.value + 4) = "fpfs_EnsureRenderChainForTrack";
            LOWORD(keys.flags) = 2048;
            *(&keys.flags + 2) = FigBaseObject;
            HIWORD(keys.epoch) = 2082;
            v514 = v218;
            v515 = 2048;
            v516 = v230;
            v517 = 2082;
            v518 = v231;
            OUTLINED_FUNCTION_609();
            *v520 = v232;
            *&v520[4] = v233;
            *&v520[6] = v234;
            *&v520[10] = v233;
            *&v520[12] = v235;
            *&v520[16] = v233;
            *&v520[18] = v236;
            *&v520[22] = v237;
            *&v520[24] = v238;
            *&v520[32] = 2112;
            *&v520[34] = cf;
            OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_34();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_131();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_524();
          v117 = v505;
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_606;
    }

    OUTLINED_FUNCTION_217();
    v117 = v505;
    if (v76)
    {
      fpfsi_createOutputDestinationForMetadata();
    }

    else
    {
      OUTLINED_FUNCTION_33();
      if (!v76)
      {
        goto LABEL_242;
      }

      OutputDestinationForVideo = fpfsi_createOutputDestinationForVideo();
    }

    if (OutputDestinationForVideo)
    {
      goto LABEL_29;
    }

    goto LABEL_242;
  }

LABEL_53:
  isa = MEMORY[0x1E6960CC0];
  if (v38 == 1668047728)
  {
    v50 = v37;
    v51 = *(v0 + 16);
    keys.value = 0;
    *&keys.timescale = 0;
    v521[0] = 0;
    v521[1] = 0;
    FigBaseObject = CMBaseObjectGetDerivedStorage();
    v28 = OUTLINED_FUNCTION_88();
    if (!v28)
    {
      OUTLINED_FUNCTION_56();
      v479 = FigSignalErrorAtGM();
      OUTLINED_FUNCTION_84();
      if (v479)
      {
        goto LABEL_29;
      }

      goto LABEL_133;
    }

    keys.value = @"SortSampleBufferQueueByOutputPTS";
    v521[0] = *v50;
    v52 = CFDictionaryCreate(0, &keys, v521, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v52)
    {
      OUTLINED_FUNCTION_56();
      if (FigSignalErrorAtGM())
      {
        goto LABEL_167;
      }

      v28 = 0;
      OUTLINED_FUNCTION_84();
      goto LABEL_133;
    }

    v53 = v52;
    if (*(FigBaseObject + 462))
    {
      v54 = OUTLINED_FUNCTION_610();
      OctaviaClosedCaptionsRenderPipeline = FigCreateOctaviaClosedCaptionsRenderPipeline(v54, v55, v56, v57);
      if (OctaviaClosedCaptionsRenderPipeline)
      {
        v60 = OctaviaClosedCaptionsRenderPipeline;
        isa = v506;
        goto LABEL_131;
      }

      v59 = fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(*(FigBaseObject + 464), *(FigBaseObject + 472), v28, *(FigBaseObject + 480), v51);
      isa = v506;
      if (v59)
      {
        v60 = v59;
LABEL_130:
        CFRelease(*(v28 + 32));
LABEL_131:
        OUTLINED_FUNCTION_131();
        free(v28);
        v28 = 0;
LABEL_132:
        CFRelease(v53);
        if (v60)
        {
          goto LABEL_29;
        }

LABEL_133:
        v107 = OUTLINED_FUNCTION_283();
        fpfs_associateCrossTalkerToRenderChain(v107, v108, v28);
        LODWORD(v90) = OUTLINED_FUNCTION_824();
        v28 = v508;
        if (v90)
        {
          goto LABEL_371;
        }

        goto LABEL_576;
      }
    }

    else
    {
      *v522 = *isa;
      OUTLINED_FUNCTION_197();
      ClosedCaptionRenderPipeline = FigCreateClosedCaptionRenderPipeline(v92, v93, v94, v95, v96, v97, v53, v98);
      isa = v506;
      if (ClosedCaptionRenderPipeline)
      {
        v60 = ClosedCaptionRenderPipeline;
        goto LABEL_131;
      }
    }

    v100 = OUTLINED_FUNCTION_797();
    fpfs_prepareClosedCaptionRenderPipeline(v100, v101, v102);
    FigGetAllocatorForMedia();
    v103 = OUTLINED_FUNCTION_267();
    FigBaseObject = FigRenderPipelineGetFigBaseObject(v103);
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v104 = OUTLINED_FUNCTION_148();
      v60 = v105(v104);
      if (!v60)
      {
        v106 = FigFormatDescriptionRetain();
        OUTLINED_FUNCTION_156(v106);
        OUTLINED_FUNCTION_131();
        goto LABEL_132;
      }
    }

    else
    {
      v60 = -12782;
    }

    goto LABEL_130;
  }

  OUTLINED_FUNCTION_544();
  if (v76)
  {
    v61 = *(v0 + 16);
    v62 = *(v0 + 56);
    CMBaseObjectGetDerivedStorage();
    v28 = OUTLINED_FUNCTION_88();
    if (v28)
    {
      v63 = CMBaseObjectGetDerivedStorage();
      v64 = v63;
      if (*(v63 + 462))
      {
        if (FigCreateOctaviaSubtitleRenderPipeline(v62, 0, *(v63 + 488), (v28 + 32)))
        {
          goto LABEL_167;
        }

        isa = v506;
        if (fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(*(v64 + 464), *(v64 + 472), v28, *(v64 + 480), v61))
        {
          goto LABEL_165;
        }
      }

      else
      {
        v65 = *&isa->value;
        if (*(v63 + 460))
        {
          OUTLINED_FUNCTION_483(v65);
          OUTLINED_FUNCTION_19();
          isa = v506;
          if (FigCreateSubtitleRenderPipeline(v66, v67, v68, v69, v70, v71, v72, v73, v481, v482, v483))
          {
            goto LABEL_167;
          }
        }

        else
        {
          OUTLINED_FUNCTION_483(v65);
          OUTLINED_FUNCTION_19();
          if (FigCreateCaptionRenderPipeline(v120, v121, v122, v123, v124, v125, v126, v127, v481, v482, v483))
          {
            goto LABEL_167;
          }

          CMBaseObjectSetProperty(*(v28 + 32), @"ForedSubtitle", *MEMORY[0x1E695E4D0]);
          isa = v506;
        }
      }

      if (fpfsi_prepareSubtitleRenderPipeline(v61, *(v28 + 32)) || (FigGetAllocatorForMedia(), v128 = OUTLINED_FUNCTION_267(), FigBaseObject = FigRenderPipelineGetFigBaseObject(v128), !*(*(CMBaseObjectGetVTable() + 8) + 48)) || (v129 = OUTLINED_FUNCTION_148(), v130(v129)))
      {
LABEL_165:
        v135 = *(v28 + 32);
        goto LABEL_166;
      }

      v131 = FigFormatDescriptionRetain();
      OUTLINED_FUNCTION_156(v131);
      OUTLINED_FUNCTION_131();
    }

    else
    {
      OUTLINED_FUNCTION_56();
      FigSignalErrorAtGM();
      OUTLINED_FUNCTION_84();
      if (v480)
      {
        goto LABEL_29;
      }
    }

    v132 = OUTLINED_FUNCTION_283();
    fpfs_associateCrossTalkerToRenderChain(v132, v133, v28);
    v134 = OUTLINED_FUNCTION_824();
LABEL_163:
    LODWORD(v90) = v134;
    if (v134)
    {
      goto LABEL_371;
    }

LABEL_576:
    if (v90)
    {
      goto LABEL_29;
    }

    if (!v28)
    {
      goto LABEL_59;
    }

LABEL_578:
    fpfs_CacheRenderChain(*(v0 + 16), v28, *(v0 + 48));
    *(v0 + 112) = v28;
    *(v0 + 201) = 1;
    *(v0 + 437) = 0;
    v389 = *(v0 + 16);
    v390 = *(CMBaseObjectGetDerivedStorage() + 1024);
    v117 = v505;
    if (v390)
    {
      while (1)
      {
        v391 = *(v390 + 112);
        if (v391)
        {
          if (*(v391 + 24))
          {
            break;
          }
        }

        v390 = *(v390 + 24);
        if (!v390)
        {
          goto LABEL_586;
        }
      }

      if (CMFormatDescriptionGetMediaType(*(v391 + 16)) == FigBaseObject || CMFormatDescriptionGetMediaType(*(v28 + 16)) != FigBaseObject)
      {
LABEL_587:
        OUTLINED_FUNCTION_589();
        if (v76)
        {
          v392 = OUTLINED_FUNCTION_621();
          fpfs_applyEQPreset(v392, v393, v394);
          if (*(v507 + 512))
          {
            fpfs_applySoftwareVolumeToTrack();
          }

          fpfs_applySoftwareVolumeToTrack();
          OUTLINED_FUNCTION_203();
          fpfs_applySoftwareVolumeToTrack();
          v395 = OUTLINED_FUNCTION_283();
          fpfsi_applyLoudnessInfo(v395, v396, 1);
          v397 = OUTLINED_FUNCTION_283();
          fpfsi_applyAdjustTargetLevel(v397, v398);
          v399 = OUTLINED_FUNCTION_283();
          fpfsi_applyAdjustCompressionProfile(v399, v400);
        }

        else
        {
          if (fpfs_setPropertyOnPrimaryAndAuxRenderPipelines())
          {
            goto LABEL_29;
          }

          *(v28 + 25) = 1;
        }

        if (dword_1EAF169F0)
        {
          v401 = v117;
          OUTLINED_FUNCTION_434();
          v402 = OUTLINED_FUNCTION_339();
          FigBaseObject = type[0];
          os_log_type_enabled(v402, type[0]);
          OUTLINED_FUNCTION_37();
          if (v90)
          {
            if (isa)
            {
              v403 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v403 = "";
            }

            v404 = *(v0 + 16);
            if (v404)
            {
              v405 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v405 = "";
            }

            LODWORD(keys.value) = 136317186;
            *(&keys.value + 4) = "fpfs_EnsureRenderChainForTrack";
            LOWORD(keys.flags) = 2048;
            *(&keys.flags + 2) = isa;
            HIWORD(keys.epoch) = 2082;
            v514 = v403;
            v515 = 2048;
            v516 = v404;
            v517 = 2082;
            v518 = v405;
            OUTLINED_FUNCTION_609();
            *v520 = v406;
            *&v520[4] = v407;
            *&v520[6] = v28;
            *&v520[14] = v407;
            *&v520[16] = v408;
            *&v520[24] = v407;
            *&v520[26] = v409;
            OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_23();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_131();
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_449();
          v117 = v401;
        }

        else
        {
          OUTLINED_FUNCTION_131();
        }

LABEL_606:
        OUTLINED_FUNCTION_589();
        if (!v76)
        {
          goto LABEL_607;
        }

        OUTLINED_FUNCTION_194();
        fpfs_LastTrackOfType(v425, v426, v0);
        v427 = OUTLINED_FUNCTION_758();
        if (fpfs_WantMATAtmosForTrack(v427))
        {
          if (!FigBaseObject)
          {
            fpfs_UnmuteAtmosAudioTrack(isa, v117, v0);
LABEL_672:
            v473 = *(v0 + 56);
            CMFormatDescriptionGetMediaSubType(v473);
            OUTLINED_FUNCTION_330();
            if (v76)
            {
              OUTLINED_FUNCTION_131();
            }

            else
            {
              OUTLINED_FUNCTION_325();
              if (v76 || (OUTLINED_FUNCTION_331(), !v76) && ((OUTLINED_FUNCTION_326(), v76) || (OUTLINED_FUNCTION_327(), !v76) && ((OUTLINED_FUNCTION_322(), v76) || (OUTLINED_FUNCTION_329(), !v76) && ((OUTLINED_FUNCTION_324(), v76) || (OUTLINED_FUNCTION_328(), !v76) && (OUTLINED_FUNCTION_323(), v76)))))
              {
                v522[0] = 0;
                if (CMAudioFormatDescriptionGetFormatList(v473, v522))
                {
                  if (v522[0] >= 0x30)
                  {
                    OUTLINED_FUNCTION_151();
                  }
                }
              }
            }

            v474 = OUTLINED_FUNCTION_722();
            fpfsi_RTCReportingUpdateATMOSMetricVar(v474, v475, v476, v477, v478, 0);
LABEL_607:
            OUTLINED_FUNCTION_33();
            if (v76)
            {
              if (!*(DerivedStorage + 528))
              {
LABEL_612:
                fpfs_SetFeederTrack(*(v0 + 112), v0);
                OUTLINED_FUNCTION_589();
                if (v76)
                {
                  fpfs_PrepareAndEnqueueSpatialAudioRenderingChangedNotification(*DerivedStorage, *(v0 + 16), v410, v411, v412, v413, v414, v415);
                }

                OUTLINED_FUNCTION_217();
                if (v76 && *(v0 + 104))
                {
                  OUTLINED_FUNCTION_296();
                  fpfsi_scheduleFVTTransitionsForItem(v416, v417, v418);
                }

                if (!*(DerivedStorage + 470))
                {
                  v419 = *(v0 + 16);
                  if (v419 == fpfs_getNext(v507, 0))
                  {
                    *(DerivedStorage + 470) = 1;
                    fpfs_EnqueueNotification(isa, @"TimebaseChanged", *(v0 + 16), 0);
                  }
                }

                fpfs_updateCaptionOrSubtitleHintOnVideoPipeline();
                goto LABEL_623;
              }

              fpfs_FlushPrimaryAndAuxRenderChains(v28, 1);
              *(DerivedStorage + 528) = 0;
            }

            OUTLINED_FUNCTION_544();
            if (v76)
            {
              OptionsDictionaryForSelectedMediaType = fpfs_GetOptionsDictionaryForSelectedMediaType(DerivedStorage);
              if (OptionsDictionaryForSelectedMediaType)
              {
                if (CFDictionaryGetValue(OptionsDictionaryForSelectedMediaType, @"MediaSelectionOptionsExtendedLanguageTag") && fpfs_setPropertyOnPrimaryAndAuxRenderPipelines())
                {
                  goto LABEL_29;
                }
              }
            }

            goto LABEL_612;
          }

          v428 = v117;
          *(v0 + 206) = 1;
          OUTLINED_FUNCTION_203();
          fpfs_applySoftwareVolumeToTrack();
        }

        else
        {
          v428 = v117;
          if (!FigBaseObject)
          {
            goto LABEL_672;
          }
        }

        v430 = *(FigBaseObject + 112);
        if (v430 && v430 != *(v0 + 112))
        {
          *(v0 + 438) = 1;
          v431 = *(FigBaseObject + 437);
          v432 = *(FigBaseObject + 16);
          v433 = CMBaseObjectGetDerivedStorage();
          if (v431)
          {
            isa = v506;
            if (dword_1EAF169F0)
            {
              OUTLINED_FUNCTION_434();
              v444 = OUTLINED_FUNCTION_339();
              OUTLINED_FUNCTION_817(v444, v445, v446, v447, v448, v449, v450, v451, v481, v482, v483, v484, *v485, v486, *v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, value, allocator, v500, *v501, NextRenderPipelineIdentifierString, v503, cf, v505, v506, v507, v508, v509, *v510, valuePtr, type[0]);
              OUTLINED_FUNCTION_202();
              if (!v76)
              {
                v452 = v428;
              }

              if (v452)
              {
                LODWORD(NextRenderPipelineIdentifierString) = v452;
                v454 = *v433;
                if (*v433)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                if (v432)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_486();
                *(v463 + 255) = v454;
                OUTLINED_FUNCTION_569();
                *(v464 + 255) = v432;
                v517 = v465;
                v518 = v466;
                OUTLINED_FUNCTION_609();
                *v520 = v467;
                *&v520[4] = v468;
                *&v520[6] = v469;
                OUTLINED_FUNCTION_51();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl();
                isa = v506;
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_454();
            }

            v470 = FigRetainProxyRetain();
            v471 = v470;
            v472 = *(FigBaseObject + 112);
            if (v472 && *(v472 + 32))
            {
              v470 = CFRetain(*(v472 + 32));
            }

            fpfs_deferredAudioPlayResourceReleased(v470, v471);
          }

          else
          {
            isa = v506;
            if (dword_1EAF169F0)
            {
              OUTLINED_FUNCTION_434();
              v434 = OUTLINED_FUNCTION_339();
              OUTLINED_FUNCTION_817(v434, v435, v436, v437, v438, v439, v440, v441, v481, v482, v483, v484, *v485, v486, *v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, value, allocator, v500, *v501, NextRenderPipelineIdentifierString, v503, cf, v505, v506, v507, v508, v509, *v510, valuePtr, type[0]);
              OUTLINED_FUNCTION_202();
              if (v76)
              {
                v443 = v442;
              }

              else
              {
                v443 = v428;
              }

              if (v443)
              {
                v453 = *v433;
                if (v453)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                v455 = *(FigBaseObject + 16);
                if (v455)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_486();
                *(v456 + 255) = v453;
                OUTLINED_FUNCTION_569();
                *(v457 + 255) = v455;
                v517 = v458;
                v518 = v459;
                OUTLINED_FUNCTION_609();
                *v520 = v460;
                *&v520[4] = v461;
                *&v520[6] = v462;
                OUTLINED_FUNCTION_51();
                OUTLINED_FUNCTION_31();
                _os_log_send_and_compose_impl();
                isa = v506;
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_454();
            }
          }
        }

        goto LABEL_672;
      }

      *(v391 + 24) = 0;
    }

LABEL_586:
    if (fpfs_EstablishTimebase(v389))
    {
      goto LABEL_29;
    }

    goto LABEL_587;
  }

  v39 = MEMORY[0x1E695E480];
  OUTLINED_FUNCTION_196();
  v40 = MEMORY[0x1E695E4C0];
  if (v41 == v42)
  {
    v43 = *(v507 + 628);
    v44 = *(DerivedStorage + 856);
    v496 = *(DerivedStorage + 1816);
    v497 = v44;
    LODWORD(valuePtr) = *(DerivedStorage + 864);
    v521[0] = 0;
    v503 = CMBaseObjectGetDerivedStorage();
    v45 = CMBaseObjectGetDerivedStorage();
    v46 = *v39;
    value = *(v0 + 56);
    allocator = v46;
    v500 = CFNumberCreate(v46, kCFNumberFloat32Type, &valuePtr);
    v47 = *(v45 + 795);
    if (*(v45 + 2064) == 0.0)
    {
      *(v45 + 2064) = CFAbsoluteTimeGetCurrent();
    }

    FigGetUpTimeNanoseconds();
    isa = *(v45 + 2072);
    if (isa)
    {
      v48 = *(v45 + 2568);
      if (v48)
      {
        OUTLINED_FUNCTION_368();
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          OUTLINED_FUNCTION_362();
          v49(v48);
        }
      }
    }

    if (!v500)
    {
      OUTLINED_FUNCTION_56();
      LODWORD(v90) = FigSignalErrorAtGM();
      v28 = 0;
      OUTLINED_FUNCTION_84();
LABEL_368:
      if (*(v45 + 2056) == 0.0)
      {
        *(v45 + 2056) = CFAbsoluteTimeGetCurrent();
      }

      if (!v90)
      {
        CFNumberCreate(allocator, kCFNumberCFIndexType, (v0 + 32));
        OUTLINED_FUNCTION_758();
        fpfsi_EnsureRenderChainListenersAndPropertiesForAudioTrack();
        v271 = FigRenderPipelineGetFigBaseObject(*(v28 + 32));
        CMBaseObjectSetProperty(v271, @"TrackID", FigBaseObject);
        LOBYTE(v522[0]) = 0;
        if (fpfs_isSupportedAudioProcessingTap(*(DerivedStorage + 3128), v522))
        {
          if (LOBYTE(v522[0]))
          {
            if (*(DerivedStorage + 3128) == *(v507 + 608))
            {
              v272 = *(DerivedStorage + 3136);
              v273 = *(v507 + 616);
              *(DerivedStorage + 3136) = v273;
              if (v273)
              {
                CFRetain(v273);
              }

              if (v272)
              {
                CFRelease(v272);
              }
            }

            v274 = *(DerivedStorage + 3136);
            if (!v274)
            {
              v274 = CFUUIDCreate(allocator);
              *(DerivedStorage + 3136) = v274;
            }
          }

          else
          {
            v275 = *(DerivedStorage + 3136);
            *(DerivedStorage + 3136) = 0;
            if (v275)
            {
              CFRelease(v275);
            }

            v274 = 0;
          }

          v276 = FigRenderPipelineGetFigBaseObject(*(v28 + 32));
          CMBaseObjectSetProperty(v276, @"AudioSubmixID", v274);
          v90 = *(DerivedStorage + 3128);
          v277 = FigRenderPipelineGetFigBaseObject(*(v28 + 32));
          CMBaseObjectSetProperty(v277, @"AudioProcessingTap", v90);
        }

        if (*(v507 + 524))
        {
          v90 = *MEMORY[0x1E695E4D0];
          v278 = FigRenderPipelineGetFigBaseObject(*(v28 + 32));
          CMBaseObjectSetProperty(v278, @"IgnoreAudioDeviceLatencyInStartupSync", v90);
        }

        if (FigBaseObject)
        {
          CFRelease(FigBaseObject);
        }

        OUTLINED_FUNCTION_131();
        goto LABEL_578;
      }

      goto LABEL_371;
    }

    isa = v506;
    NextRenderPipelineIdentifierString = fpfs_createNextRenderPipelineIdentifierString();
    if (!NextRenderPipelineIdentifierString)
    {
      OUTLINED_FUNCTION_56();
      LODWORD(v90) = FigSignalErrorAtGM();
      v28 = 0;
      OUTLINED_FUNCTION_131();
      goto LABEL_367;
    }

    *v501 = fpfs_ShouldEnableSpatializationForTrack(v0);
    if (fpfs_bufferedAirPlayActiveAndSupportsAtmos())
    {
      goto LABEL_69;
    }

    v74 = *(v0 + 56);
    CMFormatDescriptionGetMediaSubType(v74);
    OUTLINED_FUNCTION_330();
    if (!v76)
    {
      OUTLINED_FUNCTION_325();
      if (v76)
      {
        goto LABEL_95;
      }

      OUTLINED_FUNCTION_331();
      if (v76)
      {
        goto LABEL_111;
      }

      OUTLINED_FUNCTION_326();
      if (v76)
      {
        goto LABEL_95;
      }

      OUTLINED_FUNCTION_327();
      if (v76)
      {
        goto LABEL_111;
      }

      OUTLINED_FUNCTION_322();
      if (v76)
      {
        goto LABEL_95;
      }

      OUTLINED_FUNCTION_329();
      if (v76)
      {
        goto LABEL_111;
      }

      OUTLINED_FUNCTION_324();
      if (v76)
      {
LABEL_95:
        v522[0] = 0;
        if (!CMAudioFormatDescriptionGetFormatList(v74, v522) || v522[0] <= 0x2F)
        {
          goto LABEL_113;
        }

        OUTLINED_FUNCTION_151();
        v76 = v76 || v75 == 1700997939;
        v77 = v76 || v75 == 1885547315;
        v78 = v77 || v75 == 1902324531;
        if (!v78 && v75 != 2053319475)
        {
          goto LABEL_113;
        }

        goto LABEL_111;
      }

      OUTLINED_FUNCTION_328();
      if (!v76)
      {
        OUTLINED_FUNCTION_323();
        if (!v76)
        {
          goto LABEL_113;
        }

        goto LABEL_95;
      }
    }

LABEL_111:
    LODWORD(v522[0]) = v501[0];
    if (fpfsi_GetAtmosDecodePolicy(*(v0 + 16), v522))
    {
LABEL_69:
      FPSupport_IsDisplayModeSwitchInProgress();
      FigBaseObject = 1;
      goto LABEL_114;
    }

    CMBaseObjectGetDerivedStorage();
LABEL_113:
    FigBaseObject = 0;
LABEL_114:
    CMBaseObjectGetDerivedStorage();
    v80 = CMBaseObjectGetDerivedStorage();
    if (*(v0 + 48) == 1936684398)
    {
      v81 = *(v80 + 176);
      v82 = fpfs_WantAudioHardwarePassthroughForTrack(v0, v522);
    }

    else
    {
      v82 = 0;
      v81 = 0;
    }

    if (v501[0] | v82 || fpfs_WantMATAtmosForTrack(v0) || *(CMBaseObjectGetDerivedStorage() + 504))
    {
      isa = 0;
    }

    else
    {
      isa = v503[72].isa;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v84 = v503[67].isa;
    *v522 = **&MEMORY[0x1E6960C70];
    keys = *v522;
    RenderPipelineOptions = FPSupport_createRenderPipelineOptions(AllocatorForMedia, value, v43, v522, &keys, v81, 0, 0, v82, 1, 0, FigBaseObject, v501[0], v47 == 0, isa, 0, 0, v84, 0, 0, 0, NextRenderPipelineIdentifierString, v521);
    if (RenderPipelineOptions)
    {
      LODWORD(v90) = RenderPipelineOptions;
      v28 = 0;
      OUTLINED_FUNCTION_84();
LABEL_366:
      CFRelease(NextRenderPipelineIdentifierString);
LABEL_367:
      CFRelease(v500);
      goto LABEL_368;
    }

    v28 = OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_84();
    if (!v86)
    {
      OUTLINED_FUNCTION_56();
      LODWORD(v90) = FigSignalErrorAtGM();
LABEL_364:
      if (v521[0])
      {
        CFRelease(v521[0]);
      }

      goto LABEL_366;
    }

    v87 = v503;
    v88 = v503[124].isa;
    if (v88)
    {
      MockRenderPipeline = FigMockRenderPipelineFactoryCreateMockRenderPipeline(v88, allocator, 0, v28 + 32);
      if (MockRenderPipeline)
      {
        LODWORD(v90) = MockRenderPipeline;
        v91 = 0;
LABEL_363:
        free(v28);
        v28 = v91;
        goto LABEL_364;
      }

      v118 = v503 + 121;
    }

    else
    {
      v109 = *(CMBaseObjectGetDerivedStorage() + 504);
      if (v109)
      {
        FigBaseObject = CMBaseObjectGetDerivedStorage();
        v522[0] = 0;
        FigGetAllocatorForMedia();
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (MutableCopy)
        {
          v111 = MutableCopy;
          if (*(FigBaseObject + 504))
          {
            *(v28 + 32) = 0;
            v112 = *(FigBaseObject + 536);
            if (v112)
            {
              CFDictionarySetValue(MutableCopy, @"AudioSession", v112);
            }

            v113 = FigGetAllocatorForMedia();
            LODWORD(v90) = FigBufferedAirPlayAudioRenderPipelineCreate(v113, *(FigBaseObject + 504), v111, v522);
            if (!v90)
            {
              *(v28 + 32) = v522[0];
              v522[0] = 0;
            }
          }

          else
          {
            LODWORD(v90) = 0;
          }

          OUTLINED_FUNCTION_131();
          CFRelease(v111);
          if (v522[0])
          {
            CFRelease(v522[0]);
          }
        }

        else
        {
          OUTLINED_FUNCTION_56();
          LODWORD(v90) = FigSignalErrorAtGM();
          OUTLINED_FUNCTION_131();
        }

        v114 = MEMORY[0x1E6960CA8];
        v115 = *(MEMORY[0x1E6960CA8] + 16);
        *(v28 + 96) = *MEMORY[0x1E6960CA8];
        *(v28 + 112) = v115;
        *(v28 + 128) = *(v114 + 32);
      }

      else
      {
        v136 = FigGetAllocatorForMedia();
        LODWORD(v90) = FigAudioQueueRenderPipelineCreate(v136, v521[0], (v28 + 32));
      }

      if (v90)
      {
        goto LABEL_688;
      }

      if (LOBYTE(v87[121].isa))
      {
        keys.value = 0;
        Mutable = CFDictionaryCreateMutable(allocator, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetValue();
        FigBaseObject = FigGetAllocatorForMedia();
        FigGetDefaultLowWaterDurationForSpeedRampRenderPipelines(v522);
        v138 = OUTLINED_FUNCTION_218();
        LODWORD(v90) = FigSpeedRampRenderPipelineCreate(v138, v139, v140, v141, v142);
        v143 = keys.value;
        if (keys.value)
        {
          FigBaseObject = *(v28 + 32);
          *(v28 + 32) = keys.value;
          CFRetain(v143);
          if (FigBaseObject)
          {
            CFRelease(FigBaseObject);
          }

          if (keys.value)
          {
            CFRelease(keys.value);
          }
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        OUTLINED_FUNCTION_131();
        if (v90)
        {
LABEL_688:
          v91 = 0;
          isa = v506;
          goto LABEL_363;
        }
      }

      v144 = v87;
      v118 = v87 + 121;
      if (v109 && BYTE1(v144[121].isa) && _os_feature_enabled_impl())
      {
        keys.value = 0;
        v145 = CFDictionaryCreateMutable(allocator, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetValue();
        FigBaseObject = FigGetAllocatorForMedia();
        FigGetDefaultLowWaterDurationForWarehouseRenderPipelines(v522);
        v146 = OUTLINED_FUNCTION_218();
        LODWORD(v90) = FigWarehouseRenderPipelineCreate(v146, v147, v148, v149, v150);
        v151 = keys.value;
        if (keys.value)
        {
          FigBaseObject = *(v28 + 32);
          *(v28 + 32) = keys.value;
          CFRetain(v151);
          if (FigBaseObject)
          {
            CFRelease(FigBaseObject);
          }

          if (keys.value)
          {
            CFRelease(keys.value);
          }
        }

        isa = v506;
        if (v145)
        {
          CFRelease(v145);
        }

        if (v90)
        {
          v91 = 0;
          OUTLINED_FUNCTION_131();
          goto LABEL_363;
        }
      }

      else
      {
        isa = v506;
      }
    }

    isa_low = LOBYTE(v118->isa);
    v153 = v503;
    if (isa_low)
    {
      v522[0] = 0;
      FPSTimelineConverterCopyProperty(*(v45 + 3376), @"SpeedRampData", 0, v522);
      FigRenderPipelineGetFigBaseObject(*(v28 + 32));
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v154 = OUTLINED_FUNCTION_148();
        v155(v154);
      }

      if (v522[0])
      {
        CFRelease(v522[0]);
      }
    }

    if (*(v45 + 3384))
    {
      FigRenderPipelineGetFigBaseObject(*(v28 + 32));
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v156 = OUTLINED_FUNCTION_148();
        v157(v156);
      }
    }

    if (dword_1EAF169F0)
    {
      *type = 0;
      v510[0] = OS_LOG_TYPE_DEFAULT;
      v158 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v159 = *type;
      os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_121();
      if (v76)
      {
        v161 = v160;
      }

      else
      {
        v161 = v159;
      }

      if (v161)
      {
        if (isa)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v162 = *(v0 + 16);
        if (v162)
        {
          CMBaseObjectGetDerivedStorage();
        }

        LODWORD(keys.value) = 136316930;
        OUTLINED_FUNCTION_98();
        *(&keys.flags + 2) = isa;
        OUTLINED_FUNCTION_164();
        v516 = v162;
        OUTLINED_FUNCTION_141();
        *&v520[8] = v163;
        *&v520[10] = v28;
        *&v520[18] = 2112;
        *&v520[20] = NextRenderPipelineIdentifierString;
        OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v153 = v503;
    }

    FigGetUpTimeNanoseconds();
    if (*(v45 + 2072))
    {
      v164 = *(v45 + 2568);
      if (v164)
      {
        OUTLINED_FUNCTION_368();
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          OUTLINED_FUNCTION_362();
          v165(v164);
        }
      }
    }

    FigGetAllocatorForMedia();
    v166 = OUTLINED_FUNCTION_267();
    FigBaseObject = FigRenderPipelineGetFigBaseObject(v166);
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v167 = OUTLINED_FUNCTION_148();
      v169 = v168(v167);
      if (!v169)
      {
        FigGetAllocatorForMedia();
        v170 = OUTLINED_FUNCTION_267();
        FigRenderPipelineGetFigBaseObject(v170);
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v171 = OUTLINED_FUNCTION_148();
          v172(v171);
        }

        if (!*(v28 + 48))
        {
          v173 = *(v28 + 40);
          CMTimeMake(v522, 5, 1);
          CMTimeMake(&keys, 3, 1);
          if (FigSampleBufferConsumerCreateForBufferQueue(v173, v522, &keys.value, (v28 + 48)) || !*(v28 + 48))
          {
            OUTLINED_FUNCTION_56();
            FigSignalErrorAtGM();
          }
        }

        v185 = FigRenderPipelineGetFigBaseObject(*(v28 + 32));
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v186 = OUTLINED_FUNCTION_148();
          v187(v186);
        }

        if (v153[22].isa)
        {
          v185 = FigRenderPipelineGetFigBaseObject(*(v28 + 32));
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v188 = OUTLINED_FUNCTION_148();
            v189(v188);
          }
        }

        v190 = FigRenderPipelineGetFigBaseObject(*(v28 + 32));
        v191 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v191)
        {
          v191(v190, @"AudioDeviceChannelMap", v496);
        }

        v192 = *MEMORY[0x1E695E4D0];
        v193 = FigRenderPipelineGetFigBaseObject(*(v28 + 32));
        v194 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v194)
        {
          v194(v193, @"HandleFormatDescriptionChanges", v192);
        }

        v496 = v192;
        if (v153[24].isa)
        {
          v185 = FigRenderPipelineGetFigBaseObject(*(v28 + 32));
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v195 = OUTLINED_FUNCTION_148();
            v196(v195);
          }
        }

        if (!v153[67].isa)
        {
          goto LABEL_275;
        }

        *type = 0;
        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_368();
        v197 = *(CMBaseObjectGetVTable() + 16);
        if (v197 && *(v197 + 48))
        {
          v198 = OUTLINED_FUNCTION_406();
          v199(v198);
        }

        if (*type)
        {
          if (dword_1EAF169F0)
          {
            *v510 = 0;
            BYTE4(v509) = 0;
            v200 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_121();
            if (v76)
            {
              v202 = v201;
            }

            else
            {
              v202 = 0;
            }

            if (v202)
            {
              if (isa)
              {
                CMBaseObjectGetDerivedStorage();
              }

              if (*(v0 + 16))
              {
                CMBaseObjectGetDerivedStorage();
              }

              LODWORD(keys.value) = 136316418;
              OUTLINED_FUNCTION_98();
              *(&keys.flags + 2) = isa;
              OUTLINED_FUNCTION_164();
              OUTLINED_FUNCTION_591();
              v519 = 2112;
              *v520 = v239;
              OUTLINED_FUNCTION_51();
              OUTLINED_FUNCTION_23();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_1();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v185 = FigRenderPipelineGetFigBaseObject(*(v28 + 32));
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v240 = OUTLINED_FUNCTION_148();
            LODWORD(v90) = v241(v240);
          }

          else
          {
            LODWORD(v90) = -12782;
          }

          if (*type)
          {
            CFRelease(*type);
          }
        }

        else
        {
LABEL_275:
          LODWORD(v90) = 0;
        }

        v242 = *(v0 + 16);
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_368();
        v243 = CMBaseObjectGetDerivedStorage();
        if (*(CMBaseObjectGetDerivedStorage() + 504))
        {
          if (*(v185 + 80) == v242 && !*(v185 + 906) && !*(v243 + 3232))
          {
            v242 = FigRenderPipelineGetFigBaseObject(*(v28 + 32));
            v246 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v246)
            {
              v246(v242, @"AllowsPrebuffering", v496);
            }
          }
        }

        if (dword_1EAF169F0)
        {
          *type = 0;
          v510[0] = OS_LOG_TYPE_DEFAULT;
          v244 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v244, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_40();
          if (v242)
          {
            v495 = v244;
            if (isa)
            {
              v245 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v245 = "";
            }

            v247 = *(v0 + 16);
            if (v247)
            {
              CMBaseObjectGetDerivedStorage();
            }

            LODWORD(keys.value) = 136316674;
            OUTLINED_FUNCTION_575();
            *(v248 + 255) = isa;
            HIWORD(keys.epoch) = 2082;
            v514 = v245;
            v515 = v249;
            v516 = v247;
            v517 = 2082;
            v518 = v250;
            v519 = 2114;
            *v520 = v497;
            *&v520[8] = 2114;
            *&v520[10] = v500;
            OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_31();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_1();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v251 = FigRenderPipelineGetFigBaseObject(*(v28 + 32));
        v252 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v252)
        {
          v252(v251, @"TimePitchAlgorithm", v497);
        }

        v253 = FigRenderPipelineGetFigBaseObject(*(v28 + 32));
        v254 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v254)
        {
          v254(v253, @"PipelineRate", v500);
        }

        FigRenderPipelineGetFigBaseObject(*(v28 + 32));
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v255 = OUTLINED_FUNCTION_406();
          v256(v255);
        }

        FigRenderPipelineGetFigBaseObject(*(v28 + 32));
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v257 = OUTLINED_FUNCTION_148();
          v258(v257);
        }

        FigRenderPipelineGetFigBaseObject(*(v28 + 32));
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v259 = OUTLINED_FUNCTION_148();
          v260(v259);
        }

        FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v28 + 32));
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v261 = OUTLINED_FUNCTION_148();
          v262(v261);
        }

        if (BYTE6(v503[57].isa))
        {
          v263 = FigRenderPipelineGetFigBaseObject(*(v28 + 32));
          v264 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v264)
          {
            v264(v263, @"ShouldCompensateForNeroScreenLatency", *MEMORY[0x1E695E4C0]);
          }
        }

        v265 = OUTLINED_FUNCTION_770();
        fpfsi_RTCReportingUpdateAudioInfo(v265, v266);
        v267 = *(v45 + 2568);
        OUTLINED_FUNCTION_131();
        if (v267)
        {
          v268 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v268)
          {
            v268(v267, @"playerStats", 0x1F0B43478, *v501, 0);
          }
        }

        v269 = FigFormatDescriptionRetain();
        OUTLINED_FUNCTION_156(v269);
        v91 = v28;
        if (!v90)
        {
          goto LABEL_364;
        }

        goto LABEL_361;
      }

      LODWORD(v90) = v169;
      v91 = 0;
    }

    else
    {
      v91 = 0;
      LODWORD(v90) = -12782;
    }

    OUTLINED_FUNCTION_131();
LABEL_361:
    v270 = *(v28 + 32);
    if (v270)
    {
      CFRelease(v270);
    }

    goto LABEL_363;
  }

  OUTLINED_FUNCTION_217();
  isa = v506;
  if (v76)
  {
    if (fpfs_canSendMetadataTrackToVideoTargets())
    {
      v28 = OUTLINED_FUNCTION_88();
      if (v28)
      {
        v178 = FigGetAllocatorForMedia();
        if (!FigRenderPipelineCreateForFanOutToArrayOfSampleBufferConsumers(v178, 0, (v28 + 32)))
        {
          if (dword_1EAF169F0)
          {
            OUTLINED_FUNCTION_434();
            v179 = OUTLINED_FUNCTION_339();
            os_log_type_enabled(v179, type[0]);
            OUTLINED_FUNCTION_121();
            if (v76)
            {
              v181 = v180;
            }

            else
            {
              v181 = v521[0];
            }

            if (v181)
            {
              if (v506)
              {
                CMBaseObjectGetDerivedStorage();
              }

              if (v505)
              {
                CMBaseObjectGetDerivedStorage();
              }

              LODWORD(keys.value) = 136316418;
              OUTLINED_FUNCTION_98();
              *(&keys.flags + 2) = v506;
              OUTLINED_FUNCTION_164();
              v516 = v505;
              isa = v323;
              OUTLINED_FUNCTION_141();
              OUTLINED_FUNCTION_51();
              OUTLINED_FUNCTION_23();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_1();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigGetAllocatorForMedia();
          v324 = OUTLINED_FUNCTION_267();
          FigRenderPipelineGetFigBaseObject(v324);
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v325 = OUTLINED_FUNCTION_148();
            if (!v326(v325))
            {
              v327 = FigFormatDescriptionRetain();
              OUTLINED_FUNCTION_156(v327);
              goto LABEL_456;
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_56();
        if (!FigSignalErrorAtGM())
        {
LABEL_456:
          v522[0] = 0;
          CMBaseObjectGetDerivedStorage();
          FigBaseObject = *(v0 + 104);
          if (!FigBaseObject)
          {
            fpfsi_createOutputDestinationForMetadata();
            if (v344)
            {
              LODWORD(v90) = v344;
              isa = v506;
              goto LABEL_469;
            }

            FigBaseObject = *(v0 + 104);
            isa = v506;
            if (!FigBaseObject)
            {
              LODWORD(v90) = -17227;
              goto LABEL_469;
            }
          }

          FigGetAllocatorForMedia();
          v328 = OUTLINED_FUNCTION_267();
          FigBaseObject = FigAggregateVideoDestinationGetCMBaseObject(v328);
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v329 = OUTLINED_FUNCTION_148();
            v331 = v330(v329);
            if (v331)
            {
LABEL_461:
              LODWORD(v90) = v331;
              goto LABEL_469;
            }

            FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v28 + 32));
            if (*(*(CMBaseObjectGetVTable() + 8) + 56))
            {
              v332 = OUTLINED_FUNCTION_148();
              v331 = v333(v332);
              goto LABEL_461;
            }
          }

          LODWORD(v90) = -12782;
LABEL_469:
          OUTLINED_FUNCTION_131();
          if (v336)
          {
            CFRelease(v336);
          }

          goto LABEL_576;
        }
      }

      v334 = *(v28 + 40);
      if (v334)
      {
        CFRelease(v334);
      }

      v335 = *(v28 + 16);
      if (v335)
      {
        CFRelease(v335);
      }

      v135 = *(v28 + 32);
      if (!v135)
      {
LABEL_167:
        free(v28);
        goto LABEL_29;
      }

LABEL_166:
      CFRelease(v135);
      goto LABEL_167;
    }

    if (fpfs_createTimedDataRenderChain(v506, *(v0 + 56), &v508))
    {
      goto LABEL_29;
    }

    v28 = v508;
    fpfs_createMetadataOutputRenderChainsAndAttachToPrimary();
    goto LABEL_163;
  }

  OUTLINED_FUNCTION_33();
  if (v76)
  {
    if (!*(v0 + 104) && fpfsi_createOutputDestinationForVideo())
    {
      goto LABEL_29;
    }

    v174 = v40;
    LODWORD(v496) = *(v507 + 632);
    v175 = CMBaseObjectGetDerivedStorage();
    v176 = *(v0 + 16);
    NextRenderPipelineIdentifierString = CMBaseObjectGetDerivedStorage();
    v503 = v175;
    v521[0] = 0;
    v177 = v175[49].isa;
    if (v177)
    {
      HIDWORD(v493) = CFArrayGetCount(v177) > 0;
    }

    else
    {
      HIDWORD(v493) = 0;
    }

    valuePtr = 0;
    *type = 0;
    v203 = fpfsi_copyPreviousImageQueueGauge();
    value = *v174;
    allocator = v203;
    *v510 = value;
    LODWORD(v495) = *(v0 + 472);
    if (!fpfs_CanRenderVideo(v503, v176))
    {
      OUTLINED_FUNCTION_56();
      v207 = FigSignalErrorAtGM();
      goto LABEL_571;
    }

    *v501 = v176;
    Video = FigStreamingItemCombinedVideoDestinationExpectCPUToReadVideo(*(NextRenderPipelineIdentifierString + 82));
    v205 = FPSupport_CopyDestinationPixelBufferAttributesWithIOSurfaceSupport(v503[80].isa, Video, v521);
    if (v205)
    {
      v207 = v205;
      goto LABEL_710;
    }

    if (BYTE6(v503[57].isa))
    {
      fpfs_cleanupAllImageQueues(*v501, 0);
      fpfs_releaseTransitionImageQueuesAndSlots();
    }

    else
    {
      fpfsi_addCAImageQueuesAndSlots();
      if (v343)
      {
LABEL_709:
        v207 = v343;
        CFRelease(v521[0]);
        OUTLINED_FUNCTION_84();
LABEL_710:
        v338 = allocator;
        if (allocator)
        {
LABEL_570:
          CFRelease(v338);
        }

LABEL_571:
        if (v207)
        {
          goto LABEL_29;
        }

        v28 = v508;
        v386 = OUTLINED_FUNCTION_283();
        fpfs_associateCrossTalkerToRenderChain(v386, v387, v508);
        v388 = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
        if (v388 == -12850)
        {
          LODWORD(v90) = 0;
        }

        else
        {
          LODWORD(v90) = v388;
        }

        if (!v90)
        {
          goto LABEL_576;
        }

LABEL_371:
        if (v28)
        {
          fpfs_releaseRenderChain(*(v0 + 16));
          goto LABEL_29;
        }

        goto LABEL_576;
      }
    }

    v500 = OUTLINED_FUNCTION_88();
    if (v500)
    {
      FigGetAllocatorForMedia();
      if (v506)
      {
        v206 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v206 = "";
      }

      if (*v501)
      {
        v219 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v219 = "";
      }

      v482 = v219;
      v483 = *(v0 + 32);
      v481 = v206;
      v220 = OUTLINED_FUNCTION_249();
      v497 = CFStringCreateWithFormat(v220, v221, v222);
      v223 = FigGetAllocatorForMedia();
      v224 = CFDictionaryCreateMutable(v223, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v494 = v224;
      if (!v224)
      {
        OUTLINED_FUNCTION_56();
        v207 = FigSignalErrorAtGM();
        v337 = 0;
        isa = v506;
        goto LABEL_715;
      }

      v225 = v224;
      v226 = v503[81].isa;
      isa = v506;
      v227 = MEMORY[0x1E695E4D0];
      if (v226 == 2)
      {
        v228 = *MEMORY[0x1E6984200];
        v229 = value;
      }

      else
      {
        if (v226 != 1)
        {
          goto LABEL_393;
        }

        v228 = *MEMORY[0x1E6984200];
        v229 = *MEMORY[0x1E695E4D0];
      }

      CFDictionarySetValue(v224, v228, v229);
LABEL_393:
      if (BYTE4(v503[117].isa))
      {
        CFDictionarySetValue(v225, *MEMORY[0x1E69841E0], *v227);
      }

      v279 = v503[82].isa;
      if (v279)
      {
        CFDictionarySetValue(v225, *MEMORY[0x1E6984208], v279);
      }

      v280 = CMBaseObjectGetDerivedStorage();
      v522[0] = 0;
      v281 = *(v0 + 104);
      fpfs_CreateFigImageQueueOutputsArray(*(v0 + 16), v0, v522);
      v282 = v522[0];
      if (v522[0] && v281)
      {
        OUTLINED_FUNCTION_301();
        RenderingTrackofType = fpfs_LastRenderingTrackofType(v283, v284, v0);
        if (RenderingTrackofType)
        {
          FigBaseObject = *(RenderingTrackofType + 104);
        }

        else
        {
          FigBaseObject = 0;
        }

        if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
        {
LABEL_447:
          v207 = -12782;
LABEL_448:
          OUTLINED_FUNCTION_131();
LABEL_472:
          CFRelease(v282);
          goto LABEL_473;
        }

        v314 = OUTLINED_FUNCTION_292();
        v316 = v315(v314);
        if (v316)
        {
          v207 = v316;
          goto LABEL_448;
        }

        v317 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        FigBaseObject = 1936684398;
        if (!v317)
        {
          v207 = -12782;
          goto LABEL_472;
        }

        v318 = v317(v281, type, &valuePtr);
        if (v318)
        {
          v207 = v318;
          goto LABEL_472;
        }

        v225 = v494;
        if (*(v280 + 736))
        {
          FigBaseObject = FigAggregateVideoDestinationGetCMBaseObject(*(v0 + 104));
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v319 = OUTLINED_FUNCTION_148();
            v321 = v320(v319);
            if (!v321)
            {
              OUTLINED_FUNCTION_84();
              v225 = v494;
              if (v322)
              {
                CFRelease(v322);
                *(v280 + 736) = 0;
              }

              goto LABEL_402;
            }

            v207 = v321;
            isa = v506;
            goto LABEL_448;
          }

          goto LABEL_447;
        }
      }

      else if (!v522[0])
      {
LABEL_403:
        v286 = v503;
        if (v495)
        {
          v287 = 0;
        }

        else
        {
          v287 = *(v0 + 56);
        }

        v288 = (v500 + 32);
        VideoRenderPipeline = FPSupport_createVideoRenderPipeline(v225, v521[0], 1, *type, valuePtr, 1, v287, v496, BYTE6(v503[57].isa), v503[61].isa, v503[85].isa, v503[73].isa, 0, v503[74].isa, v503[75].isa, v497, v500 + 4);
        if (!VideoRenderPipeline)
        {
          v496 = fpfs_createNextRenderPipelineIdentifierString();
          if (v496)
          {
            if (!LOBYTE(v503[121].isa))
            {
              goto LABEL_422;
            }

            keys.value = 0;
            SpeedRampOrWarehouseRenderPipelineOptions = fpfs_createSpeedRampOrWarehouseRenderPipelineOptions();
            FigBaseObject = FigGetAllocatorForMedia();
            FigGetDefaultLowWaterDurationForSpeedRampRenderPipelines(v522);
            v291 = OUTLINED_FUNCTION_218();
            v207 = FigSpeedRampRenderPipelineCreate(v291, v292, v293, v294, v295);
            if (keys.value)
            {
              v522[0] = 0;
              FPSTimelineConverterCopyProperty(*(NextRenderPipelineIdentifierString + 422), @"SpeedRampData", 0, v522);
              v296 = v522[0];
              v297 = FigRenderPipelineGetFigBaseObject(keys.value);
              CMBaseObjectSetProperty(v297, @"SpeedRampData", v296);
              FigBaseObject = *v288;
              v298 = keys.value;
              *v288 = keys.value;
              if (v298)
              {
                CFRetain(v298);
              }

              if (FigBaseObject)
              {
                CFRelease(FigBaseObject);
              }

              v286 = v503;
              if (keys.value)
              {
                CFRelease(keys.value);
              }

              if (v522[0])
              {
                CFRelease(v522[0]);
              }
            }

            if (SpeedRampOrWarehouseRenderPipelineOptions)
            {
              CFRelease(SpeedRampOrWarehouseRenderPipelineOptions);
            }

            OUTLINED_FUNCTION_131();
            if (!v207)
            {
LABEL_422:
              if (SLODWORD(v286[73].isa) < 1)
              {
                v495 = 0;
              }

              else
              {
                SInt32 = FigCFNumberCreateSInt32();
                v300 = FigRenderPipelineGetFigBaseObject(*v288);
                v495 = SInt32;
                CMBaseObjectSetProperty(v300, @"ClientPID", SInt32);
              }

              v301 = MEMORY[0x1E695E4D0];
              v302 = *(v0 + 72);
              if (v302)
              {
                FigGetCGAffineTransformFrom3x3MatrixArray(v302, v522);
                OUTLINED_FUNCTION_613();
                LODWORD(v522[0]) = FigGetRotationAngleAndFlipsFromCGAffineTransform(v303, v304, v305);
                v306 = CFNumberCreate(*v39, kCFNumberIntType, v522);
                v307 = FigRenderPipelineGetFigBaseObject(*v288);
                CMBaseObjectSetProperty(v307, @"Rotation", v306);
                if (v306)
                {
                  CFRelease(v306);
                }

                v301 = MEMORY[0x1E695E4D0];
              }

              v308 = *v301;
              FigRenderPipelineGetFigBaseObject(*v288);
              if (*(*(CMBaseObjectGetVTable() + 8) + 56))
              {
                v309 = OUTLINED_FUNCTION_148();
                v310(v309);
              }

              if (allocator)
              {
                if (!*(v0 + 200))
                {
                  v311 = FigRenderPipelineGetFigBaseObject(*v288);
                  CMBaseObjectSetProperty(v311, @"PriorImageQueueGauge", allocator);
                  if (dword_1EAF169F0)
                  {
                    HIDWORD(v509) = 0;
                    BYTE3(v509) = 0;
                    v492 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(v492, OS_LOG_TYPE_DEFAULT);
                    OUTLINED_FUNCTION_40();
                    if (@"PriorImageQueueGauge")
                    {
                      v312 = *NextRenderPipelineIdentifierString;
                      if (*NextRenderPipelineIdentifierString)
                      {
                        v313 = (CMBaseObjectGetDerivedStorage() + 888);
                      }

                      else
                      {
                        v313 = "";
                      }

                      if (*v501)
                      {
                        CMBaseObjectGetDerivedStorage();
                      }

                      LODWORD(keys.value) = 136316418;
                      OUTLINED_FUNCTION_575();
                      *(v345 + 255) = v312;
                      HIWORD(keys.epoch) = 2082;
                      v514 = v313;
                      v515 = v346;
                      v516 = *v501;
                      v517 = 2082;
                      v518 = v347;
                      v519 = v346;
                      *v520 = allocator;
                      OUTLINED_FUNCTION_51();
                      OUTLINED_FUNCTION_31();
                      _os_log_send_and_compose_impl();
                      isa = v506;
                    }

                    OUTLINED_FUNCTION_1();
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }
                }
              }

              v348 = *(NextRenderPipelineIdentifierString + 89);
              if (v348)
              {
                v349 = FigRenderPipelineGetFigBaseObject(*v288);
                CMBaseObjectSetProperty(v349, @"VideoEnhancementMode", v348);
              }

              FigGetAllocatorForMedia();
              v350 = OUTLINED_FUNCTION_267();
              FigBaseObject = FigRenderPipelineGetFigBaseObject(v350);
              if (*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                v351 = OUTLINED_FUNCTION_148();
                v353 = v352(v351);
                if (!v353)
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  OUTLINED_FUNCTION_488();
                  OUTLINED_FUNCTION_186();
                  FigNotificationCenterAddWeakListener();
                  CMNotificationCenterGetDefaultLocalCenter();
                  OUTLINED_FUNCTION_186();
                  FigNotificationCenterAddWeakListener();
                  CMNotificationCenterGetDefaultLocalCenter();
                  OUTLINED_FUNCTION_186();
                  FigNotificationCenterAddWeakListener();
                  CMNotificationCenterGetDefaultLocalCenter();
                  OUTLINED_FUNCTION_186();
                  FigNotificationCenterAddWeakListener();
                  if ((v493 & 0x100000000) != 0 || *(NextRenderPipelineIdentifierString + 88) || FigStreamingPlayerCombinedVideoDestinationGetFVTCount(v503[47].isa) >= 1)
                  {
                    fpfsi_ensureLayerSyncForItem(*v501);
                  }

                  FigRenderPipelineGetFigBaseObject(*v288);
                  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
                  {
                    v354 = OUTLINED_FUNCTION_148();
                    v355(v354);
                  }

                  if (BYTE6(v503[57].isa))
                  {
                    v356 = OUTLINED_FUNCTION_309();
                    fpfs_UpdateNeroPlaybackActiveStateAndNotifyIfNeeded(v356, v357, 1);
                  }

                  FigGetAllocatorForMedia();
                  OUTLINED_FUNCTION_368();
                  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
                  {
                    v358 = OUTLINED_FUNCTION_406();
                    v359(v358);
                  }

                  if (*v510 == v308)
                  {
                    v360 = *(NextRenderPipelineIdentifierString + 428);
                    if (v360)
                    {
                      v361 = FigRenderPipelineGetFigBaseObject(*v288);
                      CMBaseObjectSetProperty(v361, @"SampleAttachmentCollectionRules", v360);
                    }
                  }

                  if (*v288)
                  {
                    v362 = CMBaseObjectGetDerivedStorage();
                    v363 = *v39;
                    if (*v501)
                    {
                      v364 = (CMBaseObjectGetDerivedStorage() + 3096);
                    }

                    else
                    {
                      v364 = "";
                    }

                    CFStringCreateWithCString(v363, v364, 0x8000100u);
                    v366 = OUTLINED_FUNCTION_267();
                    FigRenderPipelineGetFigBaseObject(v366);
                    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
                    {
                      v367 = OUTLINED_FUNCTION_148();
                      v368(v367);
                    }

                    if (*(v362 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
                    {
                      OUTLINED_FUNCTION_310();
                      v369();
                    }

                    if (v363)
                    {
                      CFRelease(v363);
                    }
                  }

                  v370 = v503;
                  v371 = *(&v503[13].isa + 1);
                  v373 = v371 >= 0.0 && v371 <= 2.0;
                  OUTLINED_FUNCTION_484();
                  if (!v76 & v374)
                  {
                    v375 = 1;
                  }

                  else
                  {
                    v375 = 0;
                  }

                  FigBaseObject = v500;
                  v376 = FigRenderPipelineGetFigBaseObject(*(v500 + 4));
                  if ((v375 & v373) != 0)
                  {
                    v377 = v308;
                  }

                  else
                  {
                    v377 = value;
                  }

                  CMBaseObjectSetProperty(v376, @"AllowVideoQualityOfServiceAdjustments", v377);
                  *(v500 + 2) = FigFormatDescriptionRetain();
                  *FigBaseObject = 1;
                  ++v370[84].isa;
                  v508 = FigBaseObject;
                  if (dword_1EAF169F0)
                  {
                    HIDWORD(v509) = 0;
                    BYTE3(v509) = 0;
                    OUTLINED_FUNCTION_279();
                    v378 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    FigBaseObject = 0;
                    os_log_type_enabled(v378, OS_LOG_TYPE_DEFAULT);
                    OUTLINED_FUNCTION_121();
                    if (v76)
                    {
                      v380 = v379;
                    }

                    else
                    {
                      v380 = 0;
                    }

                    if (v380)
                    {
                      v381 = *NextRenderPipelineIdentifierString;
                      isa = v506;
                      if (*NextRenderPipelineIdentifierString)
                      {
                        v382 = (CMBaseObjectGetDerivedStorage() + 888);
                      }

                      else
                      {
                        v382 = "";
                      }

                      if (*v501)
                      {
                        CMBaseObjectGetDerivedStorage();
                      }

                      LODWORD(keys.value) = 136316930;
                      OUTLINED_FUNCTION_98();
                      *(&keys.flags + 2) = v381;
                      HIWORD(keys.epoch) = 2082;
                      v514 = v382;
                      v515 = v383;
                      v516 = *v501;
                      OUTLINED_FUNCTION_141();
                      *&v520[8] = v384;
                      *&v520[10] = v385;
                      *&v520[18] = 2112;
                      *&v520[20] = v497;
                      OUTLINED_FUNCTION_51();
                      OUTLINED_FUNCTION_23();
                      _os_log_send_and_compose_impl();
                      FigBaseObject = HIDWORD(v509);
                    }

                    else
                    {
                      isa = v506;
                    }

                    OUTLINED_FUNCTION_1();
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    v207 = 0;
                  }

                  else
                  {
                    v207 = 0;
                    isa = v506;
                  }

                  OUTLINED_FUNCTION_131();
                  v338 = allocator;
                  v337 = v496;
                  v339 = v497;
                  goto LABEL_555;
                }

                v207 = v353;
              }

              else
              {
                v207 = -12782;
              }

              OUTLINED_FUNCTION_131();
              v337 = v496;
              v339 = v497;
              if (v365)
              {
                CFRelease(v365);
              }

              v338 = allocator;
LABEL_555:
              if (v495)
              {
                CFRelease(v495);
              }

              if (v207)
              {
                goto LABEL_558;
              }

LABEL_559:
              if (v494)
              {
                CFRelease(v494);
              }

              if (*type)
              {
                CFRelease(*type);
              }

              if (valuePtr)
              {
                CFRelease(valuePtr);
              }

              if (v337)
              {
                CFRelease(v337);
              }

              CFRelease(v521[0]);
              if (v339)
              {
                CFRelease(v339);
              }

              if (v338)
              {
                goto LABEL_570;
              }

              goto LABEL_571;
            }

            v338 = allocator;
            v337 = v496;
            v339 = v497;
LABEL_558:
            free(v500);
            goto LABEL_559;
          }

          OUTLINED_FUNCTION_56();
          v207 = FigSignalErrorAtGM();
          v337 = 0;
LABEL_715:
          v338 = allocator;
          v339 = v497;
          if (!v207)
          {
            goto LABEL_559;
          }

          goto LABEL_558;
        }

        v207 = VideoRenderPipeline;
LABEL_473:
        v337 = 0;
        v338 = allocator;
        v339 = v497;
        goto LABEL_558;
      }

LABEL_402:
      CFRelease(v282);
      goto LABEL_403;
    }

    OUTLINED_FUNCTION_56();
    v343 = FigSignalErrorAtGM();
    goto LABEL_709;
  }

  if (!v16)
  {
LABEL_59:
    OUTLINED_FUNCTION_56();
    goto LABEL_28;
  }

LABEL_29:
  OUTLINED_FUNCTION_651();
}

uint64_t fpfs_SetRenderChainsReleasedForPause(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 2904) != a2)
  {
    v4 = result;
    *(result + 2904) = a2;
    result = *(result + 40);
    if (result)
    {
      if (a2)
      {
        if (!*(v4 + 1680))
        {
          return result;
        }

        v5 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v5 = MEMORY[0x1E695E4C0];
      }

      v6 = *v5;

      return FigAlternateSelectionBossSetProperty(result, @"Paused", v6);
    }
  }

  return result;
}

uint64_t fpfsi_isTrackInLists(uint64_t result, uint64_t a2, unsigned int a3)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = result + 1024;
  v5[1] = result + 1040;
  v5[2] = result + 1056;
  if (result)
  {
    v3 = 0;
    while (1)
    {
      if ((a3 >> v3))
      {
        v4 = *v5[v3];
        if (v4)
        {
          break;
        }
      }

LABEL_7:
      if (++v3 == 3)
      {
        return 0;
      }
    }

    while (v4 != a2)
    {
      v4 = *(v4 + 24);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    return 1;
  }

  return result;
}

void fpfsi_RTCReportingReportCheckAndReportVariantEnded(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (!*(a2 + 200))
    {
      OUTLINED_FUNCTION_17();
      if (v4 || (OUTLINED_FUNCTION_63(), v4) && (v5 = *(a2 + 456)) != 0 && !FigAlternateHasVideo(v5))
      {
        if (!*(a1 + 1024))
        {
          goto LABEL_13;
        }

        while (1)
        {
          OUTLINED_FUNCTION_247();
          if (v4)
          {
            if (*(v6 + 32) > *(a2 + 32))
            {
              break;
            }
          }

          if (!*(v6 + 24))
          {
            goto LABEL_13;
          }
        }

        if (!FigCFEqual())
        {
LABEL_13:
          OUTLINED_FUNCTION_335();
          v7 = OUTLINED_FUNCTION_690();
          fpfs_GetTime(v7, v8);
          v17 = (a1 + 3048);
          if ((*(a1 + 3060) & 1) == 0)
          {
            v18 = *(a2 + 208);
            *(a1 + 3064) = *(a2 + 224);
            *v17 = v18;
          }

          OUTLINED_FUNCTION_231(v9, v10, v11, v12, v13, v14, v15, v16, v96, v97, v98, v99, *(a2 + 232), *(a2 + 240), time.epoch, v101, v102);
          v27 = OUTLINED_FUNCTION_175(v19, v20, v21, v22, v23, v24, v25, v26, v96, v97, v98, v99, time.value);
          v29 = CMTimeCompare(v27, v28);
          if ((v29 & 0x80000000) != 0)
          {
            v102 = *(a2 + 232);
            v103 = *(a2 + 248);
          }

          OUTLINED_FUNCTION_80(v29, v30, v31, v32, v33, v34, v35, v36, v96, v97, v98, v99, time.value, *&time.timescale, time.epoch, v101, v102);
          Seconds = CMTimeGetSeconds(&time);
          *&time.value = *v17;
          OUTLINED_FUNCTION_269();
          v39 = Seconds - CMTimeGetSeconds(v38);
          FigGetUpTimeNanoseconds();
          if (v39 > 0.0)
          {
            v40 = *(a1 + 2568);
            *&time.value = *v17;
            OUTLINED_FUNCTION_269();
            CMTimeGetSeconds(v41);
            if (v40)
            {
              VTable = CMBaseObjectGetVTable();
              v51 = *(VTable + 16);
              v42 = VTable + 16;
              if (*(v51 + 56))
              {
                v52 = OUTLINED_FUNCTION_158();
                v42 = v53(v52);
              }
            }

            v54 = *(a1 + 2568);
            OUTLINED_FUNCTION_80(v42, v43, v44, v45, v46, v47, v48, v49, v96, v97, v98, v99, time.value, *&time.timescale, time.epoch, v101, v102);
            CMTimeGetSeconds(&time);
            if (v54 && *(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              v55 = OUTLINED_FUNCTION_158();
              v56(v55);
            }

            if (*(a1 + 2568))
            {
              if (*(*(CMBaseObjectGetVTable() + 16) + 56))
              {
                v57 = OUTLINED_FUNCTION_158();
                v58(v57);
              }

              if (*(a1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
              {
                v59 = OUTLINED_FUNCTION_158();
                v60(v59);
              }
            }

            if (*(a2 + 456))
            {
              LODWORD(v96) = 0;
              OUTLINED_FUNCTION_473();
              if (v62 != v63)
              {
                FigAlternateHasAudio(v61);
                OUTLINED_FUNCTION_17();
              }

              if (*(a1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
              {
                OUTLINED_FUNCTION_293();
                OUTLINED_FUNCTION_333();
                v65(v64);
              }

              AlternateIndex = FigAlternateGetAlternateIndex(*(a2 + 456));
              LODWORD(v96) = AlternateIndex;
              v67 = *MEMORY[0x1E695E480];
              v69 = OUTLINED_FUNCTION_858(AlternateIndex, v68, &v96);
              if (*(a1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
              {
                OUTLINED_FUNCTION_333();
                v70();
              }

              FigAlternateGetPeakBitRate(*(a2 + 456));
              if (*(a1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
              {
                OUTLINED_FUNCTION_288();
                v71();
              }

              FigAlternateGetAverageBitRate(*(a2 + 456));
              if (*(a1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
              {
                OUTLINED_FUNCTION_288();
                v72();
              }

              FigAlternateGetVariantBitrateRank(*(a2 + 456), *(a1 + 2900));
              if (*(a1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
              {
                OUTLINED_FUNCTION_288();
                v73();
              }

              FigAlternateGetCodecString(*(a2 + 456));
              if (*(a1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
              {
                OUTLINED_FUNCTION_481();
                OUTLINED_FUNCTION_240();
                v74();
              }

              OUTLINED_FUNCTION_63();
              if (v4)
              {
                fpfsi_RTCReportingUpdateAudioInfoForVariantEnd(a1, a2);
              }

              else
              {
                OUTLINED_FUNCTION_33();
                if (v4)
                {
                  FigAlternateGetHDCPString(*(a2 + 456));
                  FigAlternateGetVideoRangeString(*(a2 + 456));
                  time.value = 0;
                  Resolution = FigAlternateGetResolution(*(a2 + 456));
                  if (v76 > 0.0 && Resolution > 0.0)
                  {
                    OUTLINED_FUNCTION_288();
                    FigReportingAgentStatsSetIntValueWithOptions(v77);
                    OUTLINED_FUNCTION_288();
                    FigReportingAgentStatsSetIntValueWithOptions(v78);
                  }

                  time.value = FigAlternateGetFrameRate(*(a2 + 456));
                  v79 = CFNumberCreate(v67, kCFNumberDoubleType, &time);
                  FigReportingAgentStatsSetCFTypeValue(*(a1 + 2568));
                  FigReportingAgentStatsSetCFTypeValue(*(a1 + 2568));
                  FigReportingAgentStatsSetCFTypeValue(*(a1 + 2568));
                  FigAlternateGetVideoQualityIndex(*(a2 + 456));
                  OUTLINED_FUNCTION_288();
                  FigReportingAgentStatsSetIntValueWithOptions(v80);
                  if (v79)
                  {
                    CFRelease(v79);
                  }
                }
              }

              if (v69)
              {
                CFRelease(v69);
              }
            }

            if (*(a1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 8))
            {
              OUTLINED_FUNCTION_171();
              OUTLINED_FUNCTION_305();
              v81();
            }
          }

          if (*(a1 + 2568))
          {
            if (*(*(CMBaseObjectGetVTable() + 16) + 64))
            {
              v82 = OUTLINED_FUNCTION_171();
              v83(v82);
            }

            if (*(a1 + 2568))
            {
              if (*(*(CMBaseObjectGetVTable() + 16) + 64))
              {
                v84 = OUTLINED_FUNCTION_171();
                v85(v84);
              }

              if (*(a1 + 2568))
              {
                if (*(*(CMBaseObjectGetVTable() + 16) + 64))
                {
                  v86 = OUTLINED_FUNCTION_171();
                  v87(v86);
                }

                if (*(a1 + 2568))
                {
                  if (*(*(CMBaseObjectGetVTable() + 16) + 64))
                  {
                    v88 = OUTLINED_FUNCTION_171();
                    v89(v88);
                  }

                  if (*(a1 + 2568))
                  {
                    if (*(*(CMBaseObjectGetVTable() + 16) + 64))
                    {
                      v90 = OUTLINED_FUNCTION_171();
                      v91(v90);
                    }

                    if (*(a1 + 2568))
                    {
                      if (*(*(CMBaseObjectGetVTable() + 16) + 64))
                      {
                        v92 = OUTLINED_FUNCTION_171();
                        v93(v92);
                      }

                      if (*(a1 + 2568))
                      {
                        if (*(*(CMBaseObjectGetVTable() + 16) + 64))
                        {
                          v94 = OUTLINED_FUNCTION_171();
                          v95(v94);
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          *v17 = v102;
          *(a1 + 3064) = v103;
          *(a1 + 3072) = FigGetUpTimeNanoseconds();
        }
      }
    }
  }
}

uint64_t fpfsi_RemoveCPECryptorListenersOncePerItem(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 400);
  result = CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    v5 = *(result + 1024);
    if (v5)
    {
      while (v5 == a2 || *(v5 + 400) != v3)
      {
        v5 = *(v5 + 24);
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v6 = *(result + 1040);
      if (v6)
      {
        while (v6 == a2 || *(v6 + 400) != v3)
        {
          v6 = *(v6 + 24);
          if (!v6)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_287();
        result = FigNotificationCenterRemoveWeakListener();
        if (!result)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_286();

          return FigNotificationCenterRemoveWeakListener();
        }
      }
    }
  }

  return result;
}

void fpfs_MarkAccessLogEntryComplete()
{
  OUTLINED_FUNCTION_831();
  v40 = v0;
  v41 = v1;
  v3 = v2;
  v5 = v4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v3 < 0)
  {
LABEL_31:
    OUTLINED_FUNCTION_648();
    return;
  }

  v7 = DerivedStorage;
  if (CFArrayGetCount(*(DerivedStorage + 1920)) > v3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 1920), v3);
    if (ValueAtIndex)
    {
      v9 = ValueAtIndex;
      if (CFDictionaryContainsKey(ValueAtIndex, @"c-provisional-entry"))
      {
        fpfs_UpdateCurrentAccessLogEntryPlayTimes(v7);
        valuePtr = 0;
        Value = CFDictionaryGetValue(v9, @"c-frames-dropped");
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr);
        }

        v11 = CMBaseObjectGetDerivedStorage();
        theDict[0] = 0;
        v12 = fpfsi_copyCurrentVideoDestination();
        if (v12 || (v18 = *(v11 + 752)) != 0 && (v12 = CFRetain(v18)) != 0)
        {
          v5 = v12;
          AllocatorForMedia = FigGetAllocatorForMedia();
          CMBaseObject = FigAggregateVideoDestinationGetCMBaseObject(v5);
          v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v15 && (v15(CMBaseObject, @"PerformanceDictionary", AllocatorForMedia, theDict), theDict[0]) && (v38 = 0, v37 = 0, CFDictionaryGetValue(theDict[0], @"imagequeue-0"), FigCFDictionaryGetInt32IfPresent(), FigCFDictionaryGetInt32IfPresent(), FigCFDictionaryGetInt32IfPresent()))
          {
            v16 = SHIDWORD(v38);
            if (*(v11 + 745))
            {
              v17 = v38;
              v35 = v37;
              *(v11 + 745) = 0;
            }

            else
            {
              v16 = SHIDWORD(v38) - *(v11 + 2120);
              v17 = v38 - *(v11 + 2128);
              v35 = v37 - *(v11 + 2136);
            }

            v33 = v17;
            if (v16 >= 1)
            {
              v24 = *(v11 + 2568);
              if (v24)
              {
                v25 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v25)
                {
                  v25(v24, @"playerStats", 0x1F0B65218, v16);
                }
              }

              *(v11 + 2120) += v16;
              v17 = v33;
            }

            if (v17 >= 1)
            {
              v26 = *(v11 + 2568);
              if (v26)
              {
                v27 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v27)
                {
                  v27(v26, @"playerStats", 0x1F0B65238, v33);
                }
              }

              v17 = v33;
              *(v11 + 2128) += v33;
            }

            if (v16 > v17)
            {
              v28 = *(v11 + 2568);
              if (v28)
              {
                v34 = v16 - v17;
                v29 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v29)
                {
                  v29(v28, @"playerStats", 0x1F0B65258, v34);
                }
              }
            }

            if (v35 >= 1)
            {
              v30 = *(v11 + 2568);
              if (v30)
              {
                v31 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v31)
                {
                  v31(v30, @"playerStats", 0x1F0B65278, v35);
                }
              }

              *(v11 + 2136) += v35;
            }
          }

          else
          {
            v16 = 0;
          }

          CFRelease(v5);
        }

        else
        {
          v16 = 0;
        }

        if (theDict[0])
        {
          CFRelease(theDict[0]);
        }

        valuePtr += v16;
        if (CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr))
        {
          v19 = OUTLINED_FUNCTION_773();
          CFDictionarySetValue(v19, @"c-frames-dropped", v5);
          CFRelease(v5);
        }

        else
        {
          OUTLINED_FUNCTION_239();
          FigSignalErrorAtGM();
        }

        v20 = OUTLINED_FUNCTION_284();
        CFDictionaryRemoveValue(v20, v21);
      }
    }

    if (*(v7 + 2648) == v3)
    {
      *(v7 + 2648) = -1;
      v22 = *(v7 + 1024);
      if (v22)
      {
        while (1)
        {
          v23 = *(v22 + 440);
          if (v23 > v3 && *(v7 + 1088) == *(v22 + 196) && *(v22 + 168) == 6)
          {
            break;
          }

          v22 = *(v22 + 24);
          if (!v22)
          {
            goto LABEL_31;
          }
        }

        *(v7 + 2648) = v23;
      }
    }

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_648();

  FigSignalErrorAtGM();
}

uint64_t fpfs_setPropertyOnPrimaryAndAuxRenderPipelines()
{
  OUTLINED_FUNCTION_471();
  v1 = *(v0 + 88);
  FigRenderPipelineGetFigBaseObject(*(v0 + 32));
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    return 4294954514;
  }

  v2 = OUTLINED_FUNCTION_171();
  result = v3(v2);
  if (!result && v1)
  {
    do
    {
      FigRenderPipelineGetFigBaseObject(*(v1 + 32));
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v5 = OUTLINED_FUNCTION_171();
        v6(v5);
      }

      v1 = *(v1 + 88);
    }

    while (v1);
    return 0;
  }

  return result;
}

void fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, __int16 a15, char a16, os_log_type_t type, unsigned int a18, int a19, int a20, int a21, __int16 a22, uint64_t a23, uint64_t a24, __int16 a25, uint64_t a26, __int16 a27, uint64_t a28, __int16 a29, uint64_t a30, __int16 a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  OUTLINED_FUNCTION_809();
  v65 = v64;
  v67 = v66;
  if (fpfsi_CopyPlayerAndItemFromItemRetainProxy(v68, 0, v64))
  {
    goto LABEL_31;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v70 = 5;
  v79 = v65;
  do
  {
    FigSimpleMutexLock();
    if (*(DerivedStorage + 24))
    {
      FigSimpleMutexUnlock();
      v78 = *v65;
      if (!*v65)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v71 = CFRetain(*DerivedStorage);
    FigSimpleMutexUnlock();
    v72 = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_180(v72);
    FigSimpleMutexLock();
    ++*(v63 + 8);
    if (v71 == *DerivedStorage)
    {
      *v67 = v71;
      if (*(CMBaseObjectGetDerivedStorage() + 52) || FigRetainProxyIsInvalidated())
      {
        if (*v65)
        {
          CFRelease(*v65);
          *v65 = 0;
        }

        fpfs_UnlockWithCaller();
        v78 = *v67;
        v65 = v67;
        if (*v67)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_31;
    }

    v73 = OUTLINED_FUNCTION_560();
    v63 = a18;
    os_log_type_enabled(v73, type);
    OUTLINED_FUNCTION_233();
    if (v75)
    {
      v76 = v74;
    }

    else
    {
      v76 = a18;
    }

    if (v76)
    {
      if (*DerivedStorage)
      {
        CMBaseObjectGetDerivedStorage();
      }

      if (*v65)
      {
        CMBaseObjectGetDerivedStorage();
        if (!v71)
        {
LABEL_16:
          OUTLINED_FUNCTION_318();
          OUTLINED_FUNCTION_780();
          OUTLINED_FUNCTION_100();
          OUTLINED_FUNCTION_35();
          OUTLINED_FUNCTION_307();
          _os_log_send_and_compose_impl();
          v63 = a18;
          v65 = v79;
          goto LABEL_17;
        }
      }

      else if (!v71)
      {
        goto LABEL_16;
      }

      CMBaseObjectGetDerivedStorage();
      goto LABEL_16;
    }

LABEL_17:
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_467();
    fpfs_UnlockWithCaller();
    if (v71)
    {
      CFRelease(v71);
    }

    --v70;
  }

  while (v70);
  v77 = OUTLINED_FUNCTION_560();
  os_log_type_enabled(v77, type);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_414();
  v78 = *v65;
  if (*v65)
  {
LABEL_30:
    CFRelease(v78);
    *v65 = 0;
  }

LABEL_31:
  OUTLINED_FUNCTION_808();
}

uint64_t fpfs_SetTimebaseOnTrack()
{
  OUTLINED_FUNCTION_187();
  CMBaseObjectGetDerivedStorage();
  result = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
  if (!result)
  {
    *(*(v0 + 112) + 25) = 1;
    v2 = OUTLINED_FUNCTION_177();

    return fpfs_GetRelativeRateAndSetRate2OnRenderPipelines(v2, v3);
  }

  return result;
}

uint64_t fpfs_WantAudioHardwarePassthroughForTrack(uint64_t a1, int *a2)
{
  OUTLINED_FUNCTION_63();
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v3;
  if (!*(v3 + 56))
  {
    FigSignalErrorAtGM();
LABEL_15:
    v7 = 0;
LABEL_16:
    result = 0;
    goto LABEL_6;
  }

  result = FigAudioQueueRenderPipelineIsPassthroughSupported();
  if (result)
  {
    result = fpfs_passthroughFormatForAudioFormat(*(v5 + 56));
    v7 = result;
    if (!result)
    {
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_296();
    AudioDeviceMaxPhysicalOutputChannelCount = fpfs_GetAudioDeviceMaxPhysicalOutputChannelCount(v8, v9, v10);
    v12 = fpfs_GetAudioDeviceMaxPhysicalOutputChannelCount(*(v5 + 16), 1, v7);
    if (v12 < 1)
    {
      goto LABEL_16;
    }

    v13 = v12;
    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    if (FigCFEqual() || (CMFormatDescriptionGetMediaSubType(*(v5 + 56)), v13 > AudioDeviceMaxPhysicalOutputChannelCount))
    {
      result = 1;
    }

    else
    {
      IsDecodable = FigAudioCodecTypeIsDecodable();
      result = OUTLINED_FUNCTION_616(IsDecodable);
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_6:
  if (a2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t fpfs_GetAudioDeviceMaxPhysicalOutputChannelCount(uint64_t a1, int a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v6 = CMBaseObjectGetDerivedStorage();
      result = 0;
      if (a3 == 1633889587 && *(v6 + 536))
      {
        if (*(v6 + 569))
        {
          return 6;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = CMBaseObjectGetDerivedStorage();
    if (FigCFEqual())
    {
      return 2;
    }

    else
    {
      v9 = *DerivedStorage;
      if (*(v8 + 504))
      {
        valuePtr[0] = 2;
        CMBaseObjectGetDerivedStorage();
        if (*(CMBaseObjectGetDerivedStorage() + 504))
        {
          FigGetAllocatorForMedia();
          v10 = OUTLINED_FUNCTION_519();
          FigBufferedAirPlayOutputGetCMBaseObject(v10);
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v11 = OUTLINED_FUNCTION_621();
            if (!v12(v11))
            {
              if (FigCFEqual())
              {
                valuePtr[0] = 16;
              }

              else
              {
                FigGetAllocatorForMedia();
                v13 = OUTLINED_FUNCTION_251();
                FigBufferedAirPlayOutputGetCMBaseObject(v13);
                if (*(*(CMBaseObjectGetVTable() + 8) + 48))
                {
                  v14 = OUTLINED_FUNCTION_228();
                  if (!v15(v14))
                  {
                    CFNumberGetValue(0, kCFNumberSInt32Type, valuePtr);
                  }
                }
              }
            }
          }
        }

        else
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_189();
          if (v18)
          {
            v19 = v17;
          }

          else
          {
            v19 = 0;
          }

          if (v19)
          {
            if (v9)
            {
              CMBaseObjectGetDerivedStorage();
            }

            valuePtr[1] = 136315650;
            OUTLINED_FUNCTION_47();
            v22 = v9;
            v23 = 2082;
            v24 = v20;
            OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_65();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_524();
        }

        return valuePtr[0];
      }

      else
      {

        return fpfs_GetAudioDeviceMaxMixablePhysicalOutputChannelCountFromFigAudioSession();
      }
    }
  }

  return result;
}

uint64_t fpfs_GetAudioDeviceMaxMixablePhysicalOutputChannelCountFromFigAudioSession()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 2;
  v4 = 2;
  v2 = *(DerivedStorage + 536);
  if (v2)
  {
    AudioSessionOutputChannelCount = FPSupport_GetAudioSessionOutputChannelCount(v2, &v4);
    result = v4;
    if (!AudioSessionOutputChannelCount && v4 == 32)
    {
      if (*(CMBaseObjectGetDerivedStorage() + 568))
      {
        return 16;
      }

      else
      {
        return v4;
      }
    }
  }

  return result;
}

uint64_t fpfs_GetRelativeRateAndSetRate2OnRenderPipelines(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_572();
  if (*(v3 + 3192) && (OUTLINED_FUNCTION_63(), v4) && *(a2 + 112))
  {
    FigGetAllocatorForMedia();
    v5 = OUTLINED_FUNCTION_179();
    FigRenderPipelineGetFigBaseObject(v5);
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v6 = OUTLINED_FUNCTION_188();
      v8 = v7(v6);
      if (v8)
      {
        v15 = v8;
      }

      else
      {
        Clock = FigRateMinderGetClock();
        RelativeRate = CMSyncGetRelativeRate(Clock, relativeToClockOrTimebase);
        valuePtr = RelativeRate;
        v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
        v12 = OUTLINED_FUNCTION_713();
        FigRenderPipelineGetFigBaseObject(v12);
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v13 = OUTLINED_FUNCTION_236();
          v15 = v14(v13);
        }

        else
        {
          v15 = 4294954514;
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }
    }

    else
    {
      v15 = 4294954514;
    }
  }

  else
  {
    v15 = 0;
  }

  if (relativeToClockOrTimebase)
  {
    CFRelease(relativeToClockOrTimebase);
  }

  return v15;
}

void fpfs_scheduleVolumeRamping(uint64_t a1, float a2, float a3)
{
  v32 = a3;
  valuePtr = a2;
  if (*(a1 + 112))
  {
    OUTLINED_FUNCTION_700();
    AllocatorForMedia = FigGetAllocatorForMedia();
    values = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    if (values)
    {
      FigGetAllocatorForMedia();
      *&v30.value = *v3;
      OUTLINED_FUNCTION_447();
      v8 = CMTimeCopyAsDictionary(v6, v7);
      if (v8)
      {
        v9 = v8;
        v10 = OUTLINED_FUNCTION_797();
        CFArrayAppendValue(v10, v11);
        CFRelease(v9);
        v12 = *MEMORY[0x1E695E480];
        if (CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr))
        {
          v13 = OUTLINED_FUNCTION_603();
          CFArrayAppendValue(v13, v4);
          CFRelease(v4);
          v14 = OUTLINED_FUNCTION_171();
          CFArrayAppendValue(v14, v15);
          FigGetAllocatorForMedia();
          OUTLINED_FUNCTION_315();
          v17 = CMTimeCopyAsDictionary(&v30, v16);
          if (v17)
          {
            v18 = v17;
            v19 = OUTLINED_FUNCTION_178();
            CFArrayAppendValue(v19, v20);
            CFRelease(v18);
            v21 = CFNumberCreate(v12, kCFNumberFloatType, &v32);
            if (v21)
            {
              v22 = v21;
              v23 = OUTLINED_FUNCTION_178();
              CFArrayAppendValue(v23, v24);
              CFRelease(v22);
              v25 = OUTLINED_FUNCTION_171();
              CFArrayAppendValue(v25, v26);
              v27 = FigGetAllocatorForMedia();
              v28 = CFDictionaryCreate(v27, kFigAudioRenderPipelineAudioCurve_Volume, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (v28)
              {
                v29 = v28;
                fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
                CFRelease(v29);
              }
            }
          }
        }
      }

      if (values)
      {
        CFRelease(values);
      }
    }
  }
}

void fpfsi_PlaybackHasTraversedForwardEndTime()
{
  v27 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_167(MEMORY[0x1E6960C70]);
  if (v1)
  {
    OUTLINED_FUNCTION_172(v1);
    if (CMBaseObjectGetDerivedStorage())
    {
      v2 = OUTLINED_FUNCTION_690();
      fpfs_GetTime(v2, v3);
      OUTLINED_FUNCTION_388(v0 + 1352);
      v18 = *(v0 + 1368);
      FPSTimelineConverterL3TimeToL2(&v17, &v20);
      v25 = v20.n128_u64[0];
      v26 = v20.n128_u32[2];
      OUTLINED_FUNCTION_350();
      if (v13)
      {
        v14 = v21;
        v20.n128_u64[1] = v23;
        v21 = v24;
        v15 = OUTLINED_FUNCTION_175(v4, v5, v6, v7, v8, v9, v10, v11, v25, __SPAIR64__(v12, v26), v14, v19, v22);
        CMTimeCompare(v15, v16);
      }
    }
  }
}

void fpfs_StealBuffersAfterTransitionMarker(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, CMBufferQueueRef queue, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_845();
  if (!v20)
  {
    FigSignalErrorAtGM();
    goto LABEL_8;
  }

  v24 = v23;
  v25 = v22;
  v26 = v21;
  v27 = v20;
  FigGetAllocatorForMedia();
  CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v28 = OUTLINED_FUNCTION_249();
  if (!CMBufferQueueCreate(v28, v29, v30, v31))
  {
    FigGetAllocatorForMedia();
    CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
    v32 = OUTLINED_FUNCTION_249();
    if (!CMBufferQueueCreate(v32, v33, v34, v35))
    {
      OUTLINED_FUNCTION_0();
      MEMORY[0x19A8CE710](v27);
      if (CMBufferQueueIsEmpty(0) || (v37 = CMBufferQueueDequeueAndRetain(0)) == 0)
      {
LABEL_5:
        OUTLINED_FUNCTION_0();
        MEMORY[0x19A8CE710]();
        v36 = 0;
        goto LABEL_6;
      }

      v38 = v37;
      v39 = 0;
      while (!v39)
      {
        v42 = OUTLINED_FUNCTION_292();
        if (!fpfs_IsMarkerSampleContainingAttachment(v42, v43))
        {
          CMBufferQueueEnqueue(0, v38);
          v39 = 0;
          v41 = 1;
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_0();
        MEMORY[0x19A8CE710]();
        if (v26)
        {
          v40 = v27;
LABEL_14:
          CMBufferQueueEnqueue(v40, v38);
        }

        v41 = 0;
        v39 = 1;
LABEL_16:
        CFRelease(v38);
        v38 = CMBufferQueueDequeueAndRetain(0);
        if (!v38)
        {
          if (v41)
          {
            goto LABEL_5;
          }

LABEL_25:
          v36 = 1;
LABEL_6:
          if (v24)
          {
            *v24 = v36;
          }

          goto LABEL_8;
        }
      }

      if (!v25)
      {
        CFRelease(v38);
        goto LABEL_25;
      }

      v40 = v25;
      goto LABEL_14;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_843();
}

void fpfs_AudioDecoderError()
{
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_382();
  v134 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = OUTLINED_FUNCTION_258(DerivedStorage);
  v130 = *MEMORY[0x1E6960C70];
  v131 = *(MEMORY[0x1E6960C70] + 8);
  v110 = v6;
  v7 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_248(v7);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_526();
  if (!FigRetainProxyIsInvalidated())
  {
    v8 = v3[103];
    OUTLINED_FUNCTION_298();
    fpfsi_EndPresentationTimeForDecodedSamplesForRenderPipeline(v9, v10);
    OUTLINED_FUNCTION_204();
    if ((v11 & 1) == 0 && v8)
    {
      CMBufferQueueGetMinPresentationTimeStamp(&time, *(v8 + 40));
      OUTLINED_FUNCTION_204();
    }

    if ((v11 & 1) == 0)
    {
      fpfs_GetTime(v3, lhs);
      CMTimeMake(&rhs, 1, 1);
      CMTimeAdd(&time, lhs, &rhs);
      OUTLINED_FUNCTION_204();
    }

    HIDWORD(v106) = v11;
    OUTLINED_FUNCTION_655();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value);
    OUTLINED_FUNCTION_37();
    *v108 = v2;
    if (v4)
    {
      if (v110)
      {
        v13 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v13 = "";
      }

      v14 = v1;
      if (v0)
      {
        v15 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v15 = "";
      }

      time.value = v132;
      time.timescale = v133;
      time.flags = HIDWORD(v106);
      time.epoch = *v108;
      *&v16 = CMTimeGetSeconds(&time);
      LODWORD(lhs[0].value) = 136316674;
      *(&lhs[0].value + 4) = "fpfs_AudioDecoderError";
      LOWORD(lhs[0].flags) = 2048;
      *(&lhs[0].flags + 2) = v110;
      HIWORD(lhs[0].epoch) = 2082;
      lhs[1].value = v13;
      LOWORD(lhs[1].timescale) = 2048;
      *(&lhs[1].timescale + 2) = v0;
      WORD1(lhs[1].epoch) = 2082;
      *(&lhs[1].epoch + 4) = v15;
      WORD2(lhs[2].value) = 2048;
      v1 = v14;
      *(&lhs[2].value + 6) = v14;
      HIWORD(lhs[2].flags) = 2048;
      lhs[2].epoch = v16;
      OUTLINED_FUNCTION_170();
      v76 = lhs;
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_200();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_449();
    if (v8 && *(v8 + 32) == v1)
    {
      fpfsi_ClearCachedAudioRenderChains(v0);
    }

    v17 = v3[128];
    if (v17)
    {
      v104 = 0;
      v18 = *(MEMORY[0x1E6960C70] + 12);
      v93 = (v3 + 138);
      v95 = (v3 + 122);
      v91 = (v3 + 141);
      OUTLINED_FUNCTION_473();
      *&v20 = 136316418;
      *v99 = v20;
      *&v20 = 136316674;
      *v88 = v20;
      v102 = v21;
      v97 = v21;
      while (1)
      {
        v22 = *(v17 + 32);
        v23 = *(v17 + 48) != v19 || (v18 & 1) == 0;
        if (!v23)
        {
          if (v22 >= v104)
          {
            goto LABEL_83;
          }

          fpfsi_MoveTrackToPlayedOut(v3, v17, MEMORY[0x1E6960C70]);
          fpfs_ResurrectPlayedOutTrack(v17);
          if (*(v17 + 168) == 6)
          {
            time.value = v130;
            time.timescale = v131;
            time.flags = v18;
            time.epoch = v97;
            fpfsi_RestartResurrectedTrack(v17, &time, 1);
          }

          goto LABEL_33;
        }

        v24 = *(v17 + 24);
        v25 = *(v17 + 112);
        if (!v25 || *(v25 + 32) != v1)
        {
          goto LABEL_28;
        }

        v26 = *(v17 + 198);
        if (*(v17 + 198))
        {
          time = *(v17 + 232);
          lhs[0].value = v132;
          lhs[0].timescale = v133;
          lhs[0].flags = HIDWORD(v106);
          lhs[0].epoch = *v108;
          if (CMTimeCompare(&time, lhs) < 1)
          {
            goto LABEL_83;
          }
        }

        else
        {
          OUTLINED_FUNCTION_133();
          fpfs_StopFeedingTrack(v65, v66, v67);
        }

        v27 = fpfs_cloneTrackAndAddToTrackList(v17, v26 == 0);
        if (!v27)
        {
          goto LABEL_83;
        }

        v28 = v27;
        *(v27 + 198) = v26;
        StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(v17 + 56));
        memset(&type, 0, sizeof(type));
        if (StreamBasicDescription)
        {
          CMTimeMake(&type, 2 * StreamBasicDescription->mFramesPerPacket, StreamBasicDescription->mSampleRate);
        }

        else
        {
          CMTimeMakeWithSeconds(&type, 0.2, 1000);
        }

        v30 = HIDWORD(v106);
        memset(&v116, 0, sizeof(v116));
        time.value = v132;
        time.timescale = v133;
        time.flags = HIDWORD(v106);
        time.epoch = *v108;
        lhs[0] = type;
        CMTimeAdd(&v116, &time, lhs);
        memset(lhs, 0, sizeof(lhs));
        v31 = CMBufferQueueReset(*(*(v17 + 112) + 40));
        lhs[0].value = v17;
        *&lhs[0].timescale = v116;
        if (*(v28 + 436))
        {
          OUTLINED_FUNCTION_695(v31, *(v17 + 96), v32, v33, v34, v35, v36, v37, v76, v78, v80, v82, v84, *(&v84 + 1), *v88, *&v88[4], v91, v93, v95, v97, *v99, *&v99[4], v102, v104, v106, *v108, v110, v112, v114.value, *&v114.timescale, v114.epoch, v115, *&v116.value, v116.value);
          fpfs_DecodeTimeForAudioRandomAccessInBufferQueue(v28, &time, &rhs);
          OUTLINED_FUNCTION_694(v39, v40, v41, v42, v43, v44, v45, v46, v77, v79, v81, v83, v85, v87, v89, v90, v92, v94, v96, v98, v100, v101, v103, v105, v107, v109, v111, v113, v114.value, *&v114.timescale, v114.epoch, v115, *&v116.value);
          CMTimeSubtract(&time, &v114, &rhs);
          *&lhs[1].timescale = *&time.value;
          epoch = time.epoch;
        }

        else
        {
          *&lhs[1].timescale = *(v17 + 412);
          epoch = *(v17 + 428);
        }

        lhs[2].value = epoch;
        *&lhs[2].timescale = *MEMORY[0x1E6960C70];
        v86 = *&lhs[2].timescale;
        lhs[3].value = v102;
        *&lhs[3].timescale = *(v28 + 96);
        LOBYTE(lhs[3].epoch) = 0;
        *&lhs[4].flags = *(MEMORY[0x1E6960C80] + 16);
        *(&lhs[3].epoch + 4) = *MEMORY[0x1E6960C80];
        v47 = CMBufferQueueCallForEachBuffer(*(v17 + 96), fpfsi_ReuseSamplesInQueue, lhs);
        v48 = *(v17 + 248);
        v49 = *(v17 + 232);
        *(v28 + 232) = v49;
        *(v28 + 248) = v48;
        OUTLINED_FUNCTION_695(v47, v50, v51, v52, v53, v54, v55, v56, v76, v78, v80, v82, v86, *(&v86 + 1), *v88, *&v88[4], v91, v93, v95, v97, *v99, *&v99[4], v102, v104, v106, *v108, v110, v112, v114.value, *&v114.timescale, v114.epoch, v115, v49, v116.value);
        fpfsi_RestartResurrectedTrack(v28, &time, 0);
        if (fpfsi_isTrackInLists(v3, v28, 3u))
        {
          if (fpfsi_isTrackInLists(v3, v17, 3u))
          {
            *(v17 + 232) = v132;
            *(v17 + 240) = v133;
            *(v17 + 244) = v30;
            *(v17 + 248) = *v108;
            if (*(v17 + 128))
            {
              *&v114.value = v84;
              v114.epoch = v102;
              fpfs_scheduleForwardEndTimeForTrack();
              if (dword_1EAF169F0)
              {
                HIDWORD(v112) = 0;
                BYTE3(v112) = 0;
                v70 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);
                OUTLINED_FUNCTION_121();
                if (!v23)
                {
                  v71 = 0;
                }

                v82 = v1;
                if (v71)
                {
                  HIDWORD(v80) = v71;
                  *&v84 = v70;
                  if (v110)
                  {
                    v72 = (CMBaseObjectGetDerivedStorage() + 888);
                  }

                  else
                  {
                    v72 = "";
                  }

                  if (v0)
                  {
                    v73 = (CMBaseObjectGetDerivedStorage() + 3096);
                  }

                  else
                  {
                    v73 = "";
                  }

                  v74 = *(v17 + 32);
                  time = v114;
                  Seconds = CMTimeGetSeconds(&time);
                  LODWORD(rhs.value) = *v88;
                  *(&rhs.value + 4) = "fpfs_AudioDecoderError";
                  LOWORD(rhs.flags) = 2048;
                  *(&rhs.flags + 2) = v110;
                  HIWORD(rhs.epoch) = 2082;
                  v119 = v72;
                  v120 = 2048;
                  v121 = v0;
                  v122 = 2082;
                  v123 = v73;
                  v124 = 1024;
                  v125 = v74;
                  v126 = 2048;
                  v127 = Seconds;
                  OUTLINED_FUNCTION_779();
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_1();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v1 = v82;
              }
            }
          }

          v104 = *(v28 + 32);
          if (*(v28 + 168) == 6 || !*(v28 + 198))
          {
            v130 = *(v28 + 232);
            v18 = *(v28 + 244);
            v131 = *(v28 + 240);
            v97 = *(v28 + 248);
            v68 = *(v28 + 196);
            if (*(v28 + 64) == *(v95 + 16 * v68 + 8))
            {
              v69 = v91;
            }

            else
            {
              v69 = v93;
            }

            *(v69 + 8 * v68) = *(v28 + 80);
          }

          else
          {
            fpfs_DeleteTrack(v0, v28);
          }

          goto LABEL_33;
        }

        if (dword_1EAF169F0)
        {
          break;
        }

LABEL_33:
        OUTLINED_FUNCTION_473();
        v24 = v3[128];
        if (!v24)
        {
          goto LABEL_83;
        }

        while (*(v24 + 32) <= v22)
        {
          v24 = *(v24 + 24);
          if (!v24)
          {
            goto LABEL_83;
          }
        }

LABEL_28:
        v17 = v24;
        if (!v24)
        {
          goto LABEL_83;
        }
      }

      LODWORD(v114.value) = 0;
      BYTE4(v112) = 0;
      v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = v114.value;
      os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_121();
      if (v23)
      {
        v60 = v59;
      }

      else
      {
        v60 = value;
      }

      if (!v60)
      {
LABEL_59:
        OUTLINED_FUNCTION_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_33;
      }

      v82 = v1;
      v61 = *v3;
      if (*v3)
      {
        v62 = (CMBaseObjectGetDerivedStorage() + 888);
        if (v0)
        {
LABEL_54:
          v63 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_58:
          v64 = v3[20];
          LODWORD(rhs.value) = *v99;
          *(&rhs.value + 4) = "fpfs_AudioDecoderError";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v61;
          HIWORD(rhs.epoch) = 2082;
          v119 = v62;
          v120 = 2048;
          v121 = v0;
          v122 = 2082;
          v123 = v63;
          v124 = 1024;
          v125 = v64;
          OUTLINED_FUNCTION_779();
          OUTLINED_FUNCTION_35();
          _os_log_send_and_compose_impl();
          v1 = v82;
          goto LABEL_59;
        }
      }

      else
      {
        v62 = "";
        if (v0)
        {
          goto LABEL_54;
        }
      }

      v63 = "";
      goto LABEL_58;
    }
  }

LABEL_83:
  fpfs_UnlockAndPostNotificationsWithCaller(v110);
  OUTLINED_FUNCTION_191();
}

void fpfsi_EndPresentationTimeForDecodedSamplesForRenderPipeline(uint64_t a1@<X1>, __n128 *a2@<X8>)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_390(MEMORY[0x1E6960C70]);
  a2[1].n128_u64[0] = v4;
  v12 = 0;
  if (a1)
  {
    FigGetAllocatorForMedia();
    v5 = OUTLINED_FUNCTION_179();
    FigRenderPipelineGetFigBaseObject(v5);
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v6 = OUTLINED_FUNCTION_188();
      v8 = v7(v6);
      v9 = v12;
      if (!v8)
      {
        CMTimeMakeFromDictionary(&v11, v12);
        OUTLINED_FUNCTION_385();
        FPSTimelineConverterL3TimeToL2(v10, a2);
        v9 = v12;
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }
}

void fpfsi_RestartResurrectedTrack(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_400();
  v8 = *(v7 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  CMBaseObjectGetDerivedStorage();
  memset(&refcon[1], 0, 24);
  if (*(v4 + 48) == 1936684398)
  {
    refcon[0] = 0;
    v40 = **&MEMORY[0x1E6960C70];
    OUTLINED_FUNCTION_12();
    CMBufferQueueCallForEachBuffer(v10, v11, refcon);
    OUTLINED_FUNCTION_194();
    TrackOfType = fpfs_LastTrackOfType(v12, v13, v4);
    CMSampleBufferGetPresentationTimeStamp(&v39, refcon[0]);
    lhs = v39;
    OUTLINED_FUNCTION_169(v4 + 412);
    CMTimeSubtract(&time1, &lhs, &rhs);
    lhs = *(v4 + 144);
    CMTimeAdd(&v40, &time1, &lhs);
    if (a3 == 1 && TrackOfType)
    {
      if (*(TrackOfType + 80) == *(v4 + 80) && (*(TrackOfType + 244) & 1) != 0)
      {
        time1 = v40;
        lhs = *(TrackOfType + 232);
        if (CMTimeCompare(&time1, &lhs) < 0)
        {
          time1 = *(TrackOfType + 232);
          OUTLINED_FUNCTION_169(gFSPAudioCrossfadeDuration);
          v15 = CMTimeSubtract(&lhs, &time1, &rhs);
          *&rhs.timescale = *&v40.timescale;
          rhs.epoch = v40.epoch;
          v23 = OUTLINED_FUNCTION_499(v15, v16, v17, v18, v19, v20, v21, v22, v37, v39.value, *&v39.timescale, v39.epoch, v40.value, *&v40.timescale, v40.epoch, v41, refcon[0], refcon[1], refcon[2], refcon[3], v40.value);
          CMTimeMaximum(v25, v23, v24);
          *v5 = *&time1.value;
          epoch = time1.epoch;
          *(v5 + 16) = time1.epoch;
          *&time1.value = *v5;
          OUTLINED_FUNCTION_842(epoch, v38, v39.value, *&v39.timescale, v39.epoch, v40.value, *&v40.timescale, v40.epoch, v41, refcon[0]);
          v27 = OUTLINED_FUNCTION_409();
          fpfs_ChangeTrackState(v27, v28);
          OUTLINED_FUNCTION_352();
          time1.epoch = v29;
          fpfs_FinishAudioSyncAndStart();
          if (v30)
          {
            return;
          }

          goto LABEL_22;
        }
      }
    }

    else if (!TrackOfType)
    {
      goto LABEL_14;
    }

    if (*(TrackOfType + 80) != *(v4 + 80) && (!*(CMBaseObjectGetDerivedStorage() + 504) || (_os_feature_enabled_impl() & 1) == 0))
    {
      fpfsi_ClearCachedAudioRenderChains(v8);
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_352();
  OUTLINED_FUNCTION_842(v31, v37, v39.value, *&v39.timescale, v39.epoch, v40.value, *&v40.timescale, v40.epoch, v41, refcon[0]);
  fpfs_ChangeTrackState(v4, 3);
  OUTLINED_FUNCTION_63();
  if (v32)
  {
    if (!fpfs_CanRenderAudio())
    {
      goto LABEL_18;
    }

LABEL_29:
    OUTLINED_FUNCTION_352();
    time1.epoch = v35;
    lhs = *&refcon[1];
    OUTLINED_FUNCTION_759();
    v36 = OUTLINED_FUNCTION_298();
    if (fpfs_StartTrackPlaying(v36))
    {
      return;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_33();
  if (!v32)
  {
    goto LABEL_29;
  }

  v33 = OUTLINED_FUNCTION_502();
  if (fpfs_CanRenderVideo(v33, v34))
  {
    goto LABEL_29;
  }

LABEL_18:
  OUTLINED_FUNCTION_33();
  if (v32 && !*(v4 + 200))
  {
    fpfs_ChangeTrackState(v4, 5);
    OUTLINED_FUNCTION_234();
    fpfs_CheckVideoSyncQueue();
  }

  else
  {
    fpfs_ChangeTrackState(v4, 4);
  }

LABEL_22:
  if (*(v3 + 2816) > *(v3 + 2820))
  {
    OUTLINED_FUNCTION_33();
    if (v32)
    {
      *(v3 + 2849) = 1;
    }

    else
    {
      OUTLINED_FUNCTION_63();
      if (v32)
      {
        *(v3 + 2848) = 1;
      }
    }
  }
}

uint64_t fpfs_cloneTrackAndAddToTrackList(uint64_t a1, int a2)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = fpfs_AddNewTrack(*(a1 + 16), v5, v4, *(a1 + 196), *(a1 + 48), *(a1 + 44));
  if (v6)
  {
    *(v6 + 56) = FigFormatDescriptionRetain();
    v7 = *(a1 + 400);
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    *(v6 + 400) = v7;
    v8 = *(a1 + 144);
    *(v6 + 160) = *(a1 + 160);
    *(v6 + 144) = v8;
    *(v6 + 80) = *(a1 + 80);
    v9 = *(a1 + 412);
    *(v6 + 428) = *(a1 + 428);
    *(v6 + 412) = v9;
    *(v6 + 436) = *(a1 + 436);
    v10 = *(v6 + 456);
    v11 = *(a1 + 456);
    *(v6 + 456) = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    v12 = *(v6 + 480);
    v13 = *(a1 + 480);
    *(v6 + 480) = v13;
    if (v13)
    {
      CFRetain(v13);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (a2)
    {
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v14 || v14(v4, v5, &kManifoldOutputCallbacks, v6))
      {
        v15 = OUTLINED_FUNCTION_298();
        fpfs_DeleteTrack(v15, v16);
        return 0;
      }
    }
  }

  return v6;
}

void fpfs_scheduleForwardEndTimeForTrack()
{
  OUTLINED_FUNCTION_650();
  v51 = v0;
  v52 = v1;
  v3 = v2;
  v5 = v4;
  v50 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 576) && *(v5 + 128))
  {
    v7 = DerivedStorage;
    *v46 = *(DerivedStorage + 1352);
    *&v46[16] = *(DerivedStorage + 1368);
    FPSTimelineConverterL3TimeToL2(v46, &time);
    flags = time.flags;
    OUTLINED_FUNCTION_542();
    if (v9 && (value = time.value, timescale = time.timescale, epoch = time.epoch, OUTLINED_FUNCTION_366(), v21 = OUTLINED_FUNCTION_623(v13, v14, v15, v16, v17, v18, v19, v20, v36, v37, v38, v39, v41, v42, v43, v45, *(v5 + 232), *(v5 + 240), *(v5 + 248), v47, *v48, *&v48[8], *&v48[16], *&v48[24], *&v48[32], *&v48[40], *&v48[48], *&v48[56], time.value), CMTimeCompare(v21, v22) <= 0))
    {
      OUTLINED_FUNCTION_366();
      if (FigSpeedRampTimerScheduleForL2Time(v24, &time, 1u))
      {
LABEL_26:
        OUTLINED_FUNCTION_602();
        return;
      }
    }

    else if (*(v5 + 198))
    {
      value = *(v5 + 232);
      timescale = *(v5 + 240);
      flags = *(v5 + 244);
      epoch = *(v5 + 248);
      OUTLINED_FUNCTION_366();
      FigSpeedRampTimerScheduleForL2Time(v23, &time, 1u);
    }

    else
    {
      value = *MEMORY[0x1E6960C70];
      timescale = *(MEMORY[0x1E6960C70] + 8);
      flags = *(MEMORY[0x1E6960C70] + 12);
      epoch = *(MEMORY[0x1E6960C70] + 16);
      fpfsi_RemoveAndClearTimer((v5 + 128));
    }

    if ((flags & 1) != 0 && dword_1EAF169F0)
    {
      OUTLINED_FUNCTION_201();
      v44 = OUTLINED_FUNCTION_633();
      os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_134();
      if (v9)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        v27 = *v7;
        if (*v7)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v28 = *(v5 + 16);
        if (v28)
        {
          v29 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v29 = "";
        }

        v40 = v29;
        v30 = *(v5 + 32);
        OUTLINED_FUNCTION_366();
        Seconds = CMTimeGetSeconds(&time);
        fpfs_GetTime(v7, &time);
        CMTimeGetSeconds(&time);
        *v46 = 136317442;
        *&v46[4] = "fpfs_scheduleForwardEndTimeForTrack";
        *&v46[12] = 2048;
        *&v46[14] = v27;
        OUTLINED_FUNCTION_599();
        *&v48[2] = v28;
        *&v48[10] = v32;
        *&v48[12] = v40;
        *&v48[20] = 1024;
        *&v48[22] = v30;
        *&v48[26] = v33;
        *&v48[28] = value;
        *&v48[36] = 1024;
        *&v48[38] = timescale;
        *&v48[42] = v33;
        *&v48[44] = Seconds;
        *&v48[52] = v33;
        *&v48[54] = v34;
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_86();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v3)
    {
      *v3 = value;
      *(v3 + 8) = timescale;
      *(v3 + 12) = flags;
      *(v3 + 16) = epoch;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_602();

  FigSignalErrorAtGM();
}

uint64_t fpfsi_RTCReportingUpdateVariantRank(uint64_t result, int a2, unsigned int a3)
{
  v4 = result;
  if ((a2 & 0x80000000) == 0)
  {
    if (*(result + 2568))
    {
      VTable = CMBaseObjectGetVTable();
      v6 = *(VTable + 16);
      result = VTable + 16;
      if (*(v6 + 56))
      {
        v7 = OUTLINED_FUNCTION_722();
        result = v8(v7);
      }
    }
  }

  if ((a3 & 0x80000000) == 0)
  {
    v9 = *(v4 + 2568);
    if (v9)
    {
      v10 = CMBaseObjectGetVTable();
      v11 = *(v10 + 16);
      result = v10 + 16;
      v12 = *(v11 + 56);
      if (v12)
      {

        return v12(v9, @"playerStats", 0x1F0B42B78, a3, 0);
      }
    }
  }

  return result;
}

void fpfs_VideoSyncTimerDispatchFunc()
{
  OUTLINED_FUNCTION_650();
  v82 = v2;
  v83 = v3;
  v68 = *MEMORY[0x1E69E9840];
  CFArrayGetValueAtIndex(v4, 0);
  v5 = OUTLINED_FUNCTION_199();
  ValueAtIndex = CFArrayGetValueAtIndex(v5, 1);
  fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(v0, &v43, &cf, v7, v8, v9, v10, v11, v33, v34, v35, v36, v38, v40, type, SBYTE2(type), BYTE3(type), HIDWORD(type), 0, 0, 0, 0, *v45, *&v45[8], *&v45[16], v47, v48, *&v49[6], *&v49[14], *&v51[2], SLOWORD(v52), v53, time.value, time.timescale, time.epoch, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v2);
  v12 = cf;
  if (!v13)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v15 = v43;
    v16 = *(CMBaseObjectGetDerivedStorage() + 840);
    voucher_adopt();
    v17 = DerivedStorage[128];
    if (v17)
    {
      while (*(v17 + 32) != ValueAtIndex)
      {
        v17 = *(v17 + 24);
        if (!v17)
        {
          goto LABEL_5;
        }
      }

      v18 = *(v17 + 64);
      v19 = DerivedStorage[2 * *(v17 + 196) + 123];
      if (dword_1EAF169F0)
      {
        v41 = OUTLINED_FUNCTION_633();
        os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_70();
        if (v1)
        {
          v20 = *DerivedStorage;
          if (*DerivedStorage)
          {
            v21 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v21 = "";
          }

          v39 = v21;
          if (v12)
          {
            v22 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v22 = "";
          }

          v37 = v22;
          fpfs_GetTime(DerivedStorage, &time);
          Seconds = CMTimeGetSeconds(&time);
          OUTLINED_FUNCTION_741();
          v24 = CMTimeGetSeconds(&time);
          *v45 = 136316674;
          *&v45[4] = "fpfs_VideoSyncTimerProc";
          *&v45[12] = 2048;
          *&v45[14] = v20;
          v46 = 2082;
          v47 = v39;
          v48 = 2048;
          *v49 = v12;
          *&v49[8] = 2082;
          *&v49[10] = v37;
          v50 = 2048;
          *v51 = Seconds;
          *&v51[8] = 2048;
          v52 = v24;
          OUTLINED_FUNCTION_146();
          OUTLINED_FUNCTION_35();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_454();
      }

      v25 = *(v17 + 280);
      if (v25)
      {
        CFRelease(v25);
        *(v17 + 280) = 0;
      }

      if (v18 == v19)
      {
        v26 = OUTLINED_FUNCTION_489();
        IsTrialReadyToComplete = fpfs_IsTrialReadyToComplete(v26, v27);
      }

      else
      {
        IsTrialReadyToComplete = 0;
      }

      if (fpfs_CheckVideoSyncQueue(v17, IsTrialReadyToComplete))
      {
        fpfs_FinishVideoSync();
        if (v29 != -16042)
        {
          if (v29)
          {
            v30 = OUTLINED_FUNCTION_235();
            fpfs_StopPlayingItemWithOSStatus(v30, v31, v32);
          }
        }
      }
    }

LABEL_5:

    fpfs_UnlockAndPostNotificationsWithCaller(v15);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  OUTLINED_FUNCTION_602();
}

void fpfs_CheckVideoSyncQueue()
{
  OUTLINED_FUNCTION_813();
  v2 = v1;
  v4 = v3;
  v697 = *MEMORY[0x1E69E9840];
  v5 = *(v3 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v7 = CMBaseObjectGetDerivedStorage();
  *v653 = *MEMORY[0x1E6960C70];
  *v593 = *v653;
  v654 = *(MEMORY[0x1E6960C70] + 16);
  v8 = v654;
  memset(&v652, 0, sizeof(v652));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_737();
  CMTimeMake(v9, -33, 1000);
  memset(&v648, 0, sizeof(v648));
  CMTimeMake(&v648, -10, 1000);
  bzero(v636, 0x90uLL);
  memset(&v635, 0, sizeof(v635));
  *v633 = *v593;
  v634 = v8;
  v10 = OUTLINED_FUNCTION_502();
  if (fpfs_CanRenderVideo(v10, v11))
  {
    HIDWORD(v586) = *(v0 + 2904) == 0;
  }

  else
  {
    HIDWORD(v586) = 0;
  }

  if (*(v4 + 400))
  {
    fpfs_isDecryptorReady(v4);
    OUTLINED_FUNCTION_786();
    HIDWORD(v468) = v12;
  }

  else
  {
    HIDWORD(v468) = 0;
  }

  v484 = *(v0 + 16 * *(v4 + 196) + 984);
  v491 = *(v4 + 64);
  v632 = **&MEMORY[0x1E6960CC0];
  *v457 = *&v632.value;
  epoch = v632.epoch;
  v630 = 0uLL;
  v631 = 0;
  v628[0] = 0;
  v628[1] = 0;
  v629 = 0;
  v623 = 0uLL;
  v624 = 0;
  fpfs_GetTime(v0, &v623);
  *v625 = OUTLINED_FUNCTION_263(v13, v14, v15, v16, v17, v18, v19, v20, v368, v377, v386, v395, v404, v413, v421, v430, v439, epoch, v457[0], v457[1], v468, v475, v484, v491, v498, v505, v512, v519, v525, v532, v541, v549, v558, v568, v577, v586, v593[0], v593[1], v604, v611, v617, *&v623);
  v626 = v624;
  v21 = *(v4 + 168);
  if ((v21 & 0xFFFFFFFB) != 1)
  {
    goto LABEL_240;
  }

  if (*(v7 + 456))
  {
    CMTimeMake(&time, -250, 1000);
    *v649 = *&time.value;
    v650 = time.epoch;
    CMTimeMake(&time, -200, 1000);
    v648 = time;
    v21 = *(v4 + 168);
  }

  v693 = *(v4 + 288);
  timescale = *(v4 + 296);
  v22 = *(v4 + 300);
  v23 = *(v4 + 304);
  if (v21 == 1)
  {
    v24 = OUTLINED_FUNCTION_283();
    CandidateSyncTrackOfDiscontinuityDomainAndType = fpfs_FirstCandidateSyncTrackOfDiscontinuityDomainAndType(v24, v25);
    RenderingTrackofType = fpfs_LastRenderingTrackofType(v5, *(v4 + 48), v4);
    v499 = RenderingTrackofType;
    if (CandidateSyncTrackOfDiscontinuityDomainAndType)
    {
      time = *(CandidateSyncTrackOfDiscontinuityDomainAndType + 208);
      OUTLINED_FUNCTION_149(RenderingTrackofType, v28, v29, v30, v31, v32, v33, v34, v369, v378, v387, v396, v405, v414, v422, v431, v440, v449, v458, v464, v469, v476, v485, v492, RenderingTrackofType, v506, v513, v520, v526, v533, v542, v550, v559, v569, v578, v587, v594.n128_i64[0], v594.n128_i64[1], v605, v612, v618, v623.n128_i64[0], v623.n128_i64[1], v624, *&time.value, v625[0]);
      if (fpfs_TimeIsAfter(v7, &time, &time1))
      {
        *v625 = *(CandidateSyncTrackOfDiscontinuityDomainAndType + 208);
        v626 = *(CandidateSyncTrackOfDiscontinuityDomainAndType + 224);
      }

      OUTLINED_FUNCTION_219();
      v43 = *(CandidateSyncTrackOfDiscontinuityDomainAndType + 112);
      if (v43)
      {
        fpfsi_EndPresentationTimeForDecodedSamplesForRenderPipeline(*(v43 + 32), &time);
      }

      else
      {
        v44 = v594;
        *&time.value = v594;
        time.epoch = v8;
      }

      if (time.flags)
      {
        OUTLINED_FUNCTION_149(v35, v36, v37, v38, v39, v40, v41, v42, v369, v378, v387, v396, v405, v414, v422, v431, v440, v449, v458, v464, v469, v477, v485, v492, v499, v506, v513, v520, v526, v534, v542, v550, v559, v570, v578, v587, v594.n128_i64[0], v594.n128_i64[1], v605, v612, v618, v623.n128_i64[0], v623.n128_i64[1], v624, v44, v625[0]);
        OUTLINED_FUNCTION_363();
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          *v625 = *&time.value;
          v626 = time.epoch;
        }
      }

      v45 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v499 = fpfs_LastRenderingTrackofType(v5, *(v4 + 48), v4);
  }

  CandidateSyncTrackOfDiscontinuityDomainAndType = 0;
  v45 = 1;
  if (*(v4 + 168) == 1 && v499 && v492 == v485)
  {
    if (!fpfsi_TrialSwitchDownInProgress(v0))
    {
      goto LABEL_240;
    }

    CandidateSyncTrackOfDiscontinuityDomainAndType = 0;
  }

LABEL_26:
  *v636 = *v625;
  v638 = *&v648.value;
  v637 = v626;
  v639 = v648.epoch;
  v642 = *MEMORY[0x1E6960C80];
  v643 = *(MEMORY[0x1E6960C80] + 16);
  v645 = v8;
  *v644 = v594;
  if ((v45 & 1) == 0)
  {
    OUTLINED_FUNCTION_29();
    if (v114)
    {
      *v653 = *(CandidateSyncTrackOfDiscontinuityDomainAndType + 232);
      v654 = *(CandidateSyncTrackOfDiscontinuityDomainAndType + 248);
      if (v499)
      {
        OUTLINED_FUNCTION_132();
        if (v114)
        {
          time = *(CandidateSyncTrackOfDiscontinuityDomainAndType + 232);
          time1 = *(v499 + 232);
          v46 = OUTLINED_FUNCTION_262();
          CMTimeMaximum(v48, v46, v47);
        }
      }
    }
  }

  LODWORD(v431) = v492 == v485;
  if (v492 == v485 && !fpfsi_TrialSwitchDownInProgress(v0))
  {
    v646 = v594;
    v647 = v8;
  }

  else
  {
    v646 = *v653;
    v647 = v654;
  }

  LODWORD(v578) = v2;
  v535 = v0;
  flags = v22;
  if (*(v4 + 400))
  {
    v50 = fpfs_isDecryptorReady(v4) == 0;
  }

  else
  {
    v50 = 0;
  }

  v51 = v5;
  v52 = (v45 & 1) == 0 && !FigStreamAlternateCanConcurrentlyDecodeAlternates(*(CandidateSyncTrackOfDiscontinuityDomainAndType + 456), *(v4 + 456));
  if (fpfs_allowFastVideoSwitch_onceToken != -1)
  {
    dispatch_once(&fpfs_allowFastVideoSwitch_onceToken, &__block_literal_global);
  }

  v571 = v4 + 288;
  v478 = v7;
  if (*(v4 + 112) == 0 || v50 || v52)
  {
    v53 = 0;
    v54 = v51;
    v55 = v535;
  }

  else
  {
    refcon.value = 0;
    OUTLINED_FUNCTION_12();
    CMBufferQueueCallForEachBuffer(v56, v57, &refcon);
    v58 = *(v4 + 199);
    v54 = v51;
    v55 = v535;
    if (!*(v4 + 199) && refcon.value)
    {
      OUTLINED_FUNCTION_219();
      OutputPresentationTimeStamp = CMSampleBufferGetOutputPresentationTimeStamp(&time, v59);
      if (*(v4 + 200) || (time1 = time, OUTLINED_FUNCTION_135(OutputPresentationTimeStamp, v61, v62, v63, v64, v65, v66, v67, v369, v378, v387, v396, v405, v414, v422, v431, v440, v449, v458, v464, v469, v7, v485, v492, v499, v506, v513, v520, v526, v535, v542, v550, v559, v571, v578, v587, v594.n128_i64[0], v594.n128_i64[1], v605, v612, v618, v623.n128_i64[0], v623.n128_i64[1], v624, *&time.value, v625[0]), fpfs_TimeIsAfter(v7, v68, v69)))
      {
        if (*(v4 + 400))
        {
          if (!*(v4 + 202))
          {
            if (fpfs_IsVideoSync(refcon.value))
            {
              time1.value = 0;
              AllocatorForMedia = FigGetAllocatorForMedia();
              if (!CMSampleBufferCreateCopy(AllocatorForMedia, refcon.value, &time1))
              {
                fpfs_DoNotDisplay(time1.value);
                fpfs_RenderBuffer(v4, time1.value);
                if (time1.value)
                {
                  CFRelease(time1.value);
                }

                *(v4 + 202) = 1;
              }
            }
          }
        }
      }

      else
      {
        *(v4 + 199) = 1;
        v338 = *(*(v4 + 112) + 32);
        v339 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v339)
        {
          v339(v338);
        }
      }

      v58 = *(v4 + 199);
    }

    if (v58)
    {
      value = refcon.value;
      v53 = 1;
      if (refcon.value)
      {
        while (1)
        {
          memset(&time1, 0, sizeof(time1));
          CMSampleBufferGetOutputPresentationTimeStamp(&time1, value);
          time = time1;
          *&time2.value = *v625;
          time2.epoch = v626;
          v71 = CMTimeCompare(&time, &time2);
          if ((v71 & 0x80000000) == 0)
          {
            break;
          }

          refcon.value = CMBufferQueueDequeueAndRetain(*(v4 + 88));
          if (fpfs_IsVideoDependedOnByOthers(refcon.value))
          {
            if (fpfs_IsVideoSync(refcon.value))
            {
              fpfs_FlushPrimaryAndAuxRenderChains(*(v4 + 112), 0);
            }

            fpfs_DoNotDisplay(refcon.value);
            fpfs_RenderBuffer(v4, refcon.value);
            *(v4 + 202) = 1;
          }

          if (refcon.value)
          {
            CFRelease(refcon.value);
          }

          value = CMBufferQueueGetHead(*(v4 + 88));
          refcon.value = value;
          if (!value)
          {
            v53 = 1;
            goto LABEL_67;
          }
        }

        OUTLINED_FUNCTION_527(v71, v72, v73, v74, v75, v76, v77, v78, v369, v378, v387, v396, v405, v414, v422, v431, v440, v449, v458, v464, v469, v478, v485, v492, v499, v506, v513, v520, v526, v535, v542, v550, v559, v571, v578, v587, v594.n128_i64[0], v594.n128_i64[1], v605, v612, v618, v623.n128_i64[0], v623.n128_i64[1], v624, v79);
        *v658 = time1;
        time.epoch = v80;
        *&v658[24] = v594;
        *v659 = v8;
        CMBufferQueueCallForEachBuffer(*(v4 + 88), fpfs_GetFirstPTSInRange, &time);
        *v633 = *&v658[24];
        v81 = *v659;
        v634 = *v659;
        *v571 = *&v658[24];
        v23 = v81;
        *(v571 + 16) = v81;
        v693 = *&v658[24];
        flags = *&v658[36];
        v53 = 1;
        timescale = *&v658[32];
      }
    }

    else
    {
      v53 = 0;
    }
  }

LABEL_67:
  OUTLINED_FUNCTION_401();
  v82 = v114;
  if (!v53 && (v82 & HIDWORD(v587)) != 0)
  {
    v695.n128_u64[0] = 0;
    OUTLINED_FUNCTION_12();
    CMBufferQueueCallForEachBuffer(v83, v84, &v695);
    if (v695.n128_u64[0] && (OUTLINED_FUNCTION_219(), v86 = CMSampleBufferGetOutputPresentationTimeStamp(&time, v85), time1 = time, OUTLINED_FUNCTION_135(v86, v87, v88, v89, v90, v91, v92, v93, v369, v378, v387, v396, v405, v414, v422, v431, v440, v449, v458, v464, v469, v478, v485, v492, v499, v506, v513, v520, v526, v535, v542, v550, v559, v571, v578, v587, v594.n128_i64[0], v594.n128_i64[1], v605, v612, v618, v623.n128_i64[0], v623.n128_i64[1], v624, *&time.value, v625[0]), v94 = v478, !fpfs_TimeIsAfter(v478, v95, v96)) && (*(v4 + 208) = time, fpfs_GetStartupDurationOfType(v4, &v635), OUTLINED_FUNCTION_363(), refcon = v635, v326 = fpfs_TimeAfterPlayback(v478, &time2, &refcon, &time1), OUTLINED_FUNCTION_135(v326, v327, v328, v329, v330, v331, v332, v333, v369, v378, v387, v396, v405, v414, v422, v431, v440, v449, v458, v464, v469, v478, v485, v492, v499, v506, v513, v520, v526, v535, v542, v550, v559, v571, v578, v587, v594.n128_i64[0], v594.n128_i64[1], v605, v612, v618, v623.n128_i64[0], v623.n128_i64[1], v624, v334, v625[0]), fpfs_TimeIsAfter(v94, v335, v336)))
    {
      v693 = time.value;
      flags = time.flags;
      timescale = time.timescale;
      v53 = 1;
      v23 = time.epoch;
    }

    else
    {
      v53 = 0;
    }
  }

  v97.n128_f64[0] = FPSupport_getVideoDecodeWaterLevels(&v652, &v651, 1);
  v651.value *= 2;
  OUTLINED_FUNCTION_220(v98, v99, v100, v101, v102, v103, v104, v105, v369, v378, v387, v396, v405, v414, v422, v431, v440, v449, v458, v464, v469, v478, v485, v492, v499, v506, v513, v520, v526, v535, v542, v550, v559, v571, v578, v587, v594.n128_i64[0], v594.n128_i64[1], v605, v612, v618, v97, v623.n128_u64[0]);
  *&time2.value = *&v651.value;
  time2.epoch = v106;
  fpfs_TimeAfterPlayback(v479, &time1, &time2, &time);
  time1 = *v572;
  if (fpfs_TimeIsAfter(v479, &time1, &time))
  {
    v108 = flags;
    if ((v45 & 1) != 0 || (OUTLINED_FUNCTION_801(v572), *&time1.value = *(CandidateSyncTrackOfDiscontinuityDomainAndType + 232), OUTLINED_FUNCTION_238(*(CandidateSyncTrackOfDiscontinuityDomainAndType + 248)) <= 0))
    {
      v109 = v23;
      value_low = v572;
      if (*(v4 + 112) || HIDWORD(v588) && *(v479 + 672) <= 3)
      {
        v111 = v55[128];
        v53 = 1;
        if (v111)
        {
          if (v111 != v4)
          {
            OUTLINED_FUNCTION_144();
            do
            {
              OUTLINED_FUNCTION_247();
              if (v114 && (*(v112 + 168) | 4) == 5)
              {
                v53 = 0;
              }

              v113 = *(v112 + 24);
              if (v113)
              {
                v114 = v113 == v4;
              }

              else
              {
                v114 = 1;
              }
            }

            while (!v114);
          }
        }
      }

      goto LABEL_95;
    }

    v109 = v23;
  }

  else
  {
    v109 = v23;
    v108 = flags;
  }

  value_low = v572;
LABEL_95:
  v115 = 0;
  v116 = v636;
  HIDWORD(v441) = HIDWORD(v588) ^ 1 | HIDWORD(v470);
  if (v579)
  {
    v117 = 0;
  }

  else
  {
    v117 = v493 == v486;
  }

  v118 = v117;
  HIDWORD(v397) = v118;
  if (v500)
  {
    v119 = v118;
  }

  else
  {
    v119 = 1;
  }

  HIDWORD(v432) = v119;
  LODWORD(v441) = *(MEMORY[0x1E6960C70] + 12);
  LODWORD(v579) = v53 == 0;
  *&v107 = 136317186;
  *v514 = v107;
  *&v107 = 136319234;
  *v406 = v107;
  v507 = v8;
  while (1)
  {
    while (1)
    {
      if ((v108 & 1) == 0)
      {
        goto LABEL_123;
      }

      OUTLINED_FUNCTION_13();
      *&time1.value = *v649;
      time1.epoch = v650;
      v120 = OUTLINED_FUNCTION_262();
      CMTimeAdd(v122, v120, v121);
      OUTLINED_FUNCTION_13();
      time1 = v648;
      v123 = OUTLINED_FUNCTION_262();
      UpTimeNanoseconds = CMTimeAdd(v125, v123, v124);
      if (!*(v4 + 368))
      {
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        *(v4 + 368) = UpTimeNanoseconds;
      }

      if ((v579 & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_64(UpTimeNanoseconds, v127, v128, v129, v130, v131, v132, v133, p_time, v379, v388, v397, v406[0], v406[1], v423, v432, v441, v450, v459[0], v459[1], v470, v479, v486, v493, v500, v507, v514[0], v514[1], v527, v536, v543, v551, v560, v572, v579, v588, v595[0], v595[1], v606, v613, v619, v134, v623.n128_u64[0]);
      *&time1.value = *v628;
      v135 = OUTLINED_FUNCTION_238(v629);
      if (v135 <= 0)
      {
        OUTLINED_FUNCTION_64(v135, v136, v137, v138, v139, v140, v141, v142, p_time, v379, v388, v397, v406[0], v406[1], v423, v432, v441, v450, v459[0], v459[1], v470, v479, v486, v493, v500, v507, v514[0], v514[1], v527, v536, v543, v551, v560, v572, v579, v588, v595[0], v595[1], v606, v613, v619, v143, v623.n128_u64[0]);
        *&time1.value = v630;
        if ((OUTLINED_FUNCTION_238(v631) & 0x80000000) != 0)
        {
          HIDWORD(v588) = v115;
          if (!*(v4 + 280) && dword_1EAF169F0)
          {
            v342 = OUTLINED_FUNCTION_256();
            value_low = LODWORD(time2.value);
            os_log_type_enabled(v342, refcon.value);
            OUTLINED_FUNCTION_134();
            if (v114)
            {
              v116 = v343;
            }

            else
            {
              v116 = value_low;
            }

            if (v116)
            {
              v344 = *v55;
              if (*v55)
              {
                v345 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v345 = "";
              }

              v585 = v345;
              if (v54)
              {
                v346 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v346 = "";
              }

              v567 = v346;
              v347 = v55[20];
              v557 = *(v4 + 32);
              OUTLINED_FUNCTION_13();
              v348.n128_f64[0] = CMTimeGetSeconds(&time);
              v349 = v348.n128_u64[0];
              OUTLINED_FUNCTION_64(v350, v351, v352, v353, v354, v355, v356, v357, p_time, v379, v388, v397, v406[0], v406[1], v423, v432, v441, v450, v459[0], v459[1], v470, v479, v486, v493, v500, v507, v514[0], v514[1], v527, v536, v543, v557, v567, v572, v585, v588, v595[0], v595[1], v606, v613, v619, v348, v623.n128_u64[0]);
              Seconds = CMTimeGetSeconds(&time);
              LODWORD(time1.value) = v514[0];
              *(&time1.value + 4) = "fpfs_CheckVideoSyncQueue";
              LOWORD(time1.flags) = 2048;
              *(&time1.flags + 2) = v344;
              HIWORD(time1.epoch) = 2082;
              v679 = v579;
              v680 = 2048;
              v681 = v54;
              v682 = 2082;
              v683 = v560;
              v684 = 1024;
              v685 = v347;
              v686 = 1024;
              v687 = v551;
              v688 = 2048;
              v689 = v349;
              v690 = 2048;
              v691 = Seconds;
              OUTLINED_FUNCTION_735();
              OUTLINED_FUNCTION_27();
              _os_log_send_and_compose_impl();
              value_low = LODWORD(time2.value);
            }

            OUTLINED_FUNCTION_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            OUTLINED_FUNCTION_728();
          }

LABEL_238:
          value_low->value = v693;
          value_low->timescale = timescale;
          *(v4 + 300) = v108;
          *(v4 + 304) = v109;
          if (!*(v4 + 280))
          {
            OUTLINED_FUNCTION_13();
            OUTLINED_FUNCTION_719(v359, v360, v361, v362, v363, v364, v365, v366, p_time, v379, v388, v397, v406[0], v406[1], v423, v432, v441, v450, v459[0], v459[1], v470, v479, v486, v493, v500, v507, v514[0], v514[1], v527, v536, v543, v551, v560, v572, v579, v588, v595[0], v595[1], v606, v613, v619, v623.n128_i64[0], v623.n128_i64[1], v624, v625[0], v625[1], v626, v627, v628[0], v628[1], v629, v630, *(&v630 + 1), v631, v367, v632.value);
            fpfs_PrimeVideoSyncTimer(v4, &time, &time1);
          }

          goto LABEL_200;
        }

        break;
      }

      if (dword_1EAF169F0)
      {
        HIDWORD(v588) = v115;
        v144 = OUTLINED_FUNCTION_256();
        value_low = LOBYTE(refcon.value);
        os_log_type_enabled(v144, refcon.value);
        OUTLINED_FUNCTION_37();
        if (v116)
        {
          v145 = *v55;
          if (*v55)
          {
            v146 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v146 = "";
          }

          v552 = v146;
          if (v54)
          {
            v147 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v147 = "";
          }

          v544 = v147;
          v55 = v536;
          v148 = *(v536 + 160);
          v561 = *(v4 + 32);
          OUTLINED_FUNCTION_13();
          v149.n128_f64[0] = CMTimeGetSeconds(&time);
          v150 = v149.n128_u64[0];
          OUTLINED_FUNCTION_64(v151, v152, v153, v154, v155, v156, v157, v158, p_time, v379, v388, v397, v406[0], v406[1], v423, v432, v441, v450, v459[0], v459[1], v470, v479, v486, v493, v500, v507, v514[0], v514[1], v527, v536, v544, v552, v561, v572, v579, v588, v595[0], v595[1], v606, v613, v619, v149, v623.n128_u64[0]);
          v159 = CMTimeGetSeconds(&time);
          LODWORD(time1.value) = v514[0];
          *(&time1.value + 4) = "fpfs_CheckVideoSyncQueue";
          LOWORD(time1.flags) = 2048;
          *(&time1.flags + 2) = v145;
          HIWORD(time1.epoch) = 2082;
          v679 = v551;
          v680 = 2048;
          v681 = v54;
          v682 = 2082;
          v683 = v543;
          v684 = 1024;
          v685 = v148;
          v686 = 1024;
          v687 = v560;
          v688 = 2048;
          v689 = v150;
          v690 = 2048;
          v691 = v159;
          OUTLINED_FUNCTION_735();
          OUTLINED_FUNCTION_27();
          _os_log_send_and_compose_impl();
          v8 = v507;
        }

        OUTLINED_FUNCTION_729();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_449();
        OUTLINED_FUNCTION_728();
        v115 = HIDWORD(v588);
      }

      v160 = *(v4 + 280);
      if (v160)
      {
        CFRelease(v160);
        *(v4 + 280) = 0;
      }

LABEL_123:
      v640 = *(v116 + 72);
      v641 = *(v116 + 88);
      *(v116 + 72) = *v595;
      *(v116 + 88) = v8;
      CMBufferQueueCallForEachBuffer(*(v4 + 88), fpfs_VideoSyncSearch, v636);
      if (!*(v4 + 199))
      {
        v115 = 1;
      }

      OUTLINED_FUNCTION_29();
      if (!v114 || (OUTLINED_FUNCTION_401(), v114) && (OUTLINED_FUNCTION_132(), v114) && (time = *value_low, OUTLINED_FUNCTION_220(v161, v162, v163, v164, v165, v166, v167, v168, p_time, v379, v388, v397, v406[0], v406[1], v423, v432, v441, v450, v459[0], v459[1], v470, v479, v486, v493, v500, v507, v514[0], v514[1], v527, v536, v543, v551, v560, v572, v579, v588, v595[0], v595[1], v606, v613, v619, *&time.value, v623.n128_u64[0]), v169 = OUTLINED_FUNCTION_262(), v171 = CMTimeCompare(v169, v170), v171 <= 0) && (time = *(v116 + 72), OUTLINED_FUNCTION_220(v171, v172, v173, v174, v175, v176, v177, v178, p_time, v379, v388, v397, v406[0], v406[1], v423, v432, v441, v450, v459[0], v459[1], v470, v479, v486, v493, v500, v507, v514[0], v514[1], v527, v536, v543, v551, v560, v572, v579, v588, v595[0], v595[1], v606, v613, v619, *&time.value, v623.n128_u64[0]), v179 = OUTLINED_FUNCTION_262(), CMTimeCompare(v179, v180) > 0))
      {
        BYTE4(v588) = v115;
        goto LABEL_200;
      }

      value_low->epoch = *(v116 + 88);
      *&value_low->value = *(v116 + 72);
      v693 = *(v116 + 72);
      timescale = *(v116 + 80);
      v108 = *(v4 + 300);
      v109 = *(v4 + 304);
    }

    *&v632.value = *v459;
    v632.epoch = v450;
    HIDWORD(v588) = v115;
    if ((v441 & 0x100000000) != 0)
    {
      goto LABEL_136;
    }

    OUTLINED_FUNCTION_13();
    *&time1.value = *v633;
    if (!OUTLINED_FUNCTION_238(v634))
    {
      if (*(v4 + 112))
      {
        OUTLINED_FUNCTION_13();
        OUTLINED_FUNCTION_149(v191, v192, v193, v194, v195, v196, v197, v198, p_time, v379, v388, v397, v406[0], v406[1], v423, v432, v441, v450, v459[0], v459[1], v470, v479, v486, v493, v500, v507, v514[0], v514[1], v527, v536, v543, v551, v560, v572, v579, v588, v595[0], v595[1], v606, v613, v619, v623.n128_i64[0], v623.n128_i64[1], v624, v199, v625[0]);
        v200 = OUTLINED_FUNCTION_262();
        if (CMTimeCompare(v200, v201) <= 0)
        {
          v210.n128_f32[0] = OUTLINED_FUNCTION_401();
          if (!v114 && *(v4 + 168) != 5)
          {
            memset(&v692, 0, sizeof(v692));
            OUTLINED_FUNCTION_527(v202, v203, v204, v205, v206, v207, v208, v209, p_time, v379, v388, v397, v406[0], v406[1], v423, v432, v441, v450, v459[0], v459[1], v470, v479, v486, v493, v500, v507, v514[0], v514[1], v527, v536, v543, v551, v560, v572, v580, v588, v595[0], v595[1], v606, v613, v619, v623.n128_i64[0], v623.n128_i64[1], v624, v210);
            time.epoch = v211;
            OUTLINED_FUNCTION_721(v460, v212, v213, v214, v215, v216, v217, v218, v219, v371, v380, v389, v398, v407, v415, v424, v433, v442, v451);
            v220 = OUTLINED_FUNCTION_313(*(*(v4 + 112) + 40));
            v227 = *&v658[32];
            if (*&v658[32])
            {
              OUTLINED_FUNCTION_720();
              v220 = CMTimeMultiplyByRatio(&v632, &time1, v228 + 1, v229);
            }

            OUTLINED_FUNCTION_721(v460, v220, v221, v227, v222, v223, v224, v225, v226, v372, v381, v390, v399, v408, v416, v425, v434, v443, v452);
            v230 = OUTLINED_FUNCTION_313(*(v4 + 88));
            v237 = *&v658[32];
            if (*&v658[32])
            {
              OUTLINED_FUNCTION_720();
              CMTimeMultiplyByRatio(&time2, &time1, v238, v239);
              refcon = v632;
              v230 = CMTimeAdd(&time1, &refcon, &time2);
              v632 = time1;
            }

            *v608 = OUTLINED_FUNCTION_263(v230, v231, v237, v232, v233, v234, v235, v236, v373, v382, v391, v400, v409, v417, v426, v435, v444, v453, v460.n128_i64[0], v460.n128_i64[1], v471, v480, v487, v494, v501, v508, v515, v521, v528, v537, v545, v553, v562, v573, v581, v589, v596, v600, v607, v614, v620, *&v623);
            *&v608[16] = v624;
            v240 = CMBaseObjectGetDerivedStorage();
            memset(&refcon, 0, sizeof(refcon));
            time1 = *v608;
            FPSTimelineConverterL2TimeToL3(&time1, &refcon);
            v695 = 0uLL;
            v696 = 0;
            OUTLINED_FUNCTION_149(*(v240 + 3376), v241, v242, v243, v244, v245, v246, v247, v374, v383, v392, v401, v410, v418, v427, v436, v445, v454, v461, v465, v472, v481, v488, v495, v502, v509, v516, v522, v529, v538, v546, v554, v563, v574, v582, v590, v597, v601, *v608, *&v608[8], *&v608[16], v623.n128_i64[0], v623.n128_i64[1], v624, v248, v625[0]);
            FPSTimelineConverterL2TimeToL3(&time1, &v695);
            *&time1.value = v695;
            time1.epoch = v696;
            time2 = refcon;
            v249 = CMTimeSubtract(&v692, &time1, &time2);
            OUTLINED_FUNCTION_719(v249, v250, v251, v252, v253, v254, v255, v256, v375, v384, v393, v402, v411, v419, v428, v437, v446, v455, v462, v466, v473, v482, v489, v496, v503, v510, v517, v523, v530, v539, v547, v555, v564, v575, v583, v591, v598, v602, v609, v615, v621, v623.n128_i64[0], v623.n128_i64[1], v624, v625[0], v625[1], v626, v627, v628[0], v628[1], v629, v630, *(&v630 + 1), v631, v257, v632.value);
            time2 = v692;
            if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
            {
LABEL_136:
              v181 = 0;
              goto LABEL_174;
            }
          }
        }
      }
    }

    v182 = *(v4 + 244);
    OUTLINED_FUNCTION_541();
    if (v114)
    {
      v695.n128_u64[0] = *(v4 + 232);
      v695.n128_u32[2] = *(v4 + 240);
      value_low = *(v4 + 248);
    }

    else
    {
      v695.n128_u64[0] = v693;
      v695.n128_u32[2] = timescale;
      value_low = v109;
      v182 = v108;
    }

    if (v500)
    {
      v692.value = *(v500 + 232);
      v116 = *(v500 + 244);
      v692.timescale = *(v500 + 240);
      v579 = *(v500 + 248);
    }

    else
    {
      v692.value = v695.n128_u64[0];
      v692.timescale = v695.n128_i32[2];
      v579 = value_low;
      v116 = v182;
    }

    if (!*(v4 + 200))
    {
      LODWORD(v606) = 0;
      OUTLINED_FUNCTION_219();
      memset(&time1, 0, sizeof(time1));
      if (CMBufferQueueIsEmpty(*(v4 + 88)))
      {
        time1.value = v693;
        time1.timescale = timescale;
        time1.flags = v108;
        time1.epoch = v109;
      }

      else
      {
        CMBufferQueueGetMinPresentationTimeStamp(&time1, *(v4 + 88));
      }

      *(v4 + 208) = time1;
      fpfs_GetStartupDurationOfType(v4, &time2);
      refcon = time1;
      CMTimeAdd(&time, &refcon, &time2);
      OUTLINED_FUNCTION_363();
      *&refcon.value = OUTLINED_FUNCTION_263(v258, v259, v260, v261, v262, v263, v264, v265, p_time, v379, v388, v397, v406[0], v406[1], v423, v432, v441, v450, v459[0], v459[1], v470, v479, v486, v493, v500, v507, v514[0], v514[1], v527, v536, v543, v551, v560, v572, v579, v588, v595[0], v595[1], v606, v613, v619, *&v623);
      refcon.epoch = v624;
      CMTimeSubtract(&v635, &time2, &refcon);
      time2 = v635;
      *&refcon.value = *v625;
      refcon.epoch = v626;
      OUTLINED_FUNCTION_185();
      v183 = fpfs_CheckCanKeepUp(v266, v267, v268, v269, v270, v271, v272, v273);
      v181 = v493 == v486 ? *&v606 >= 1.0 : v183;
      if (v181)
      {
        goto LABEL_167;
      }
    }

    if ((v432 & 0x100000000) == 0)
    {
      if (*(v500 + 198) || (v183 = fpfsi_TrialSwitchDownInProgress(v55), v183))
      {
        v181 = OUTLINED_FUNCTION_254(v183, v184, v185, v186, v187, v188, v189, v190, p_time, v379, v388, v397, v406[0], v406[1], v423, v432, v441, v450, v459[0], v459[1], v470, v479, v486, v493, v500, v507, v514[0], v514[1], v527, v536, v543, v551, v560, v572, v579);
LABEL_167:
        if (v181 && v493 == v486)
        {
          v274 = fpfsi_TrialSwitchDownInProgress(v55);
          if (v274)
          {
            CanSwitchDownConcurrentlyWithoutStall = OUTLINED_FUNCTION_254(v274, v275, v276, v277, v278, v279, v280, v281, p_time, v379, v388, v397, v406[0], v406[1], v423, v432, v441, v450, v459[0], v459[1], v470, v479, v486, v493, v500, v507, v514[0], v514[1], v527, v536, v543, v551, v560, v572, v579);
          }

          else
          {
            v283 = v55[12];
            time = v635;
            CanSwitchDownConcurrentlyWithoutStall = FigAlternatePlaybackBitrateMonitorCanSwitchDownConcurrentlyWithoutStall(v283, &time);
          }

          v181 = CanSwitchDownConcurrentlyWithoutStall;
        }

        goto LABEL_173;
      }
    }

    v181 = 0;
LABEL_173:
    OUTLINED_FUNCTION_728();
LABEL_174:
    if (v181)
    {
      v284 = 1;
    }

    else
    {
      v284 = 3;
    }

    if (v284 <= dword_1EAF169F0)
    {
      v285 = OUTLINED_FUNCTION_256();
      value_low = LODWORD(time2.value);
      v116 = LOBYTE(refcon.value);
      v579 = v285;
      os_log_type_enabled(v285, refcon.value);
      OUTLINED_FUNCTION_134();
      if (v114)
      {
        v296 = v294;
      }

      else
      {
        v296 = value_low;
      }

      if (v296)
      {
        v297 = *v55;
        if (*v55)
        {
          v286 = CMBaseObjectGetDerivedStorage();
          v298 = (v286 + 888);
        }

        else
        {
          v298 = "";
        }

        v565 = v298;
        if (v54)
        {
          v286 = CMBaseObjectGetDerivedStorage();
          v299 = (v286 + 3096);
        }

        else
        {
          v299 = "";
        }

        LODWORD(v397) = *(v55 + 40);
        LODWORD(v543) = *(v4 + 32);
        OUTLINED_FUNCTION_64(v286, v287, v288, v289, v290, v291, v292, v293, p_time, v379, v388, v397, v406[0], v406[1], v423, v432, v441, v450, v459[0], v459[1], v470, v479, v486, v493, v500, v507, v514[0], v514[1], v527, v536, v543, v299, v565, v572, v579, v588, v595[0], v595[1], v606, v613, v619, v295, v623.n128_u64[0]);
        v300 = CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_13();
        v301 = CMTimeGetSeconds(&time);
        *&time.value = *(v4 + 232);
        OUTLINED_FUNCTION_404(*(v4 + 248));
        v303 = CMTimeGetSeconds(v302);
        if (v504)
        {
          *&time.value = *(v504 + 232);
          OUTLINED_FUNCTION_404(*(v504 + 248));
          v305 = CMTimeGetSeconds(v304);
        }

        else
        {
          v305 = -1.0;
        }

        *&time.value = *&v632.value;
        OUTLINED_FUNCTION_404(v632.epoch);
        v307.n128_f64[0] = CMTimeGetSeconds(v306);
        v308 = v307.n128_u64[0];
        OUTLINED_FUNCTION_527(v309, v310, v311, v312, v313, v314, v315, v316, v376, v385, v394, v403, v412, v420, v429, v438, v447, v456, v463, v467, v474, v483, v490, v497, v504, v511, v518, v524, v531, v540, v548, v556, v566, v576, v584, v592, v599, v603, v610, v616, v622, v623.n128_i64[0], v623.n128_i64[1], v624, v307);
        OUTLINED_FUNCTION_404(v317);
        v319 = CMTimeGetSeconds(v318);
        CanRenderVideo = fpfs_CanRenderVideo(v479, v54);
        LODWORD(time.value) = v406[0];
        v321 = "finishing";
        if (!v181)
        {
          v321 = "not ok";
        }

        *(&time.value + 4) = "fpfs_CheckVideoSyncQueue";
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = v297;
        HIWORD(time.epoch) = 2082;
        *v658 = v560;
        *&v658[8] = 2048;
        *&v658[10] = v54;
        *&v658[18] = 2082;
        *&v658[20] = v551;
        *&v658[28] = 1024;
        *&v658[30] = v397;
        *&v658[34] = 1024;
        *&v658[36] = v543;
        *v659 = 2048;
        *&v659[2] = v300;
        v660 = 2048;
        v661 = v301;
        v662 = 2048;
        v663 = v303;
        v664 = 2048;
        v665 = v305;
        v666 = 2048;
        v667 = v308;
        v668 = 2048;
        v669 = v319;
        v670 = 1024;
        v671 = CanRenderVideo;
        v672 = 1024;
        v673 = HIDWORD(v470);
        v674 = 1024;
        v675 = v432;
        v676 = 2082;
        v677 = v321;
        LODWORD(v379) = 152;
        p_time = &time;
        OUTLINED_FUNCTION_31();
        _os_log_send_and_compose_impl();
        value_low = LODWORD(time2.value);
      }

      OUTLINED_FUNCTION_729();
      OUTLINED_FUNCTION_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      OUTLINED_FUNCTION_728();
    }

    if (v181)
    {
      break;
    }

    if (*(v4 + 199))
    {
      goto LABEL_238;
    }

    v693 = *MEMORY[0x1E6960C70];
    timescale = *(MEMORY[0x1E6960C70] + 8);
    LODWORD(v579) = 1;
    v109 = v8;
    v108 = v441;
    v115 = HIDWORD(v588);
  }

  if ((v397 & 0x100000000) == 0)
  {
    v340 = v693;
    value_low->value = v693;
    v341 = timescale;
    value_low->timescale = timescale;
    *(v4 + 300) = v108;
    *(v4 + 304) = v109;
    *(v116 + 96) = v340;
    *(v116 + 104) = v341;
    HIDWORD(v644[1]) = v108;
    v645 = v109;
  }

LABEL_200:
  OUTLINED_FUNCTION_29();
  if (!v114)
  {
    *(v116 + 72) = *v595;
    *(v116 + 88) = v8;
  }

  if (BYTE4(v588))
  {
    while (1)
    {
      Head = CMBufferQueueGetHead(*(v4 + 88));
      if (!Head)
      {
        break;
      }

      CMSampleBufferGetOutputPresentationTimeStamp(&time, Head);
      v693 = time.value;
      v323 = time.flags;
      timescale = time.timescale;
      v324 = time.epoch;
      *&time1.value = *(v116 + 96);
      if ((OUTLINED_FUNCTION_238(*(v116 + 112)) & 0x80000000) == 0)
      {
        break;
      }

      time.value = v693;
      time.timescale = timescale;
      time.flags = v323;
      time.epoch = v324;
      *&time1.value = *(v116 + 72);
      if ((OUTLINED_FUNCTION_238(*(v116 + 88)) & 0x80000000) == 0)
      {
        break;
      }

      v325 = CMBufferQueueDequeueAndRetain(*(v4 + 88));
      if (v325)
      {
        CFRelease(v325);
      }
    }
  }

LABEL_240:
  OUTLINED_FUNCTION_812();
}

void fpfs_FinishVideoSync()
{
  OUTLINED_FUNCTION_193();
  v297 = v3;
  v5 = v4;
  v432 = *MEMORY[0x1E69E9840];
  v376 = *(v4 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  v7 = CMBaseObjectGetDerivedStorage();
  v421 = 0uLL;
  v422 = 0;
  fpfs_GetTime(v0, &v421);
  memset(&v419, 0, sizeof(v419));
  memset(&v420, 0, sizeof(v420));
  cf = 0;
  v417 = 0uLL;
  v418 = 0;
  timescale = 0;
  value = 0;
  HIDWORD(v415) = 7;
  v321 = *MEMORY[0x1E6960C70];
  v412 = *MEMORY[0x1E6960C70];
  v310 = *(MEMORY[0x1E6960C70] + 16);
  v413 = v310;
  v13 = *(v5 + 280);
  if (v13)
  {
    CFRelease(v13);
    *(v5 + 280) = 0;
  }

  *(v5 + 208) = v421;
  *(v5 + 224) = v422;
  if (*(v5 + 64) == v0[2 * *(v5 + 196) + 123])
  {
    LOBYTE(time.value) = 0;
    fpfs_CompleteTrialSwitch(v376, v5, &time, v8, v9, v10, v11, v12, p_lhs, SBYTE2(p_lhs), BYTE3(p_lhs), SHIDWORD(p_lhs), v263, v274, v285, v297, v310, v321, *(&v321 + 1), v340, *(&v340 + 1), v358, SHIDWORD(v358), v366, v375, v376, SHIDWORD(v376), v384, v393, queue, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v410.value, *&v410.timescale, v410.epoch, v411, v412, *(&v412 + 1), v413, v414, v415, cf, v417, *(&v417 + 1), v418, v419.value, *&v419.timescale, v419.epoch, v420.value, *&v420.timescale, v420.epoch, v421.n128_i64[0], v421.n128_i64[1], v422);
    if (LOBYTE(time.value))
    {
      goto LABEL_191;
    }
  }

  v367 = v5;
  v385 = v0;
  if (*(v5 + 168) != 1 || (CandidateSyncTrackOfDiscontinuityDomainAndType = fpfs_FirstCandidateSyncTrackOfDiscontinuityDomainAndType(v376, v5)) == 0)
  {
    OUTLINED_FUNCTION_301();
    RenderingTrackofType = fpfs_LastRenderingTrackofType(v15, v16, v5);
    v18 = v5;
    if (RenderingTrackofType)
    {
      v21 = RenderingTrackofType;
      LODWORD(v2) = 1986618469;
      if (*(RenderingTrackofType + 80) == *(v18 + 80))
      {
        Head = CMBufferQueueGetHead(*(v18 + 88));
        memset(&v410, 0, sizeof(v410));
        OutputPresentationTimeStamp = CMSampleBufferGetOutputPresentationTimeStamp(&v410, Head);
        OUTLINED_FUNCTION_478(OutputPresentationTimeStamp, v24, v25, v26, v27, v28, v29, v30, p_lhs, v263, v274, v285, v297, v310, v321, *(&v321 + 1), v340, *(&v340 + 1), v358, v367, v376, v0, v393, queue, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], *&v410.value, v410.epoch);
        *&rhs[16] = *(v21 + 248);
        v31 = CMTimeSubtract(&time, &lhs, rhs);
        if (OUTLINED_FUNCTION_848(v31, v32, v33, v34, v35, v36, v37, v38, v253, v264, v275, v286, v298, v311, v322, v332, v341, v351, v359, v368, v377, v386, v394, queued, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v410.value, *&v410.timescale, v410.epoch, v411, v412, *(&v412 + 1), v413, v414, v415, cf, v417, *(&v417 + 1), v418, v419.value, *&v419.timescale, v419.epoch, v420.value, *&v420.timescale, v420.epoch, v421.n128_i64[0], v421.n128_i64[1], v422, *MEMORY[0x1E6960CC0], *(MEMORY[0x1E6960CC0] + 8), *(MEMORY[0x1E6960CC0] + 16), v424, v425[0], v425[1], v425[2], v425[3], v425[4], v425[5], v426, v427, *(&v427 + 1)) && dword_1EAF169F0)
        {
          LODWORD(queue) = 0;
          HIBYTE(v393) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          LODWORD(v1) = 0;
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_233();
          if (v49)
          {
            v50 = v48;
          }

          else
          {
            v50 = 0;
          }

          if (v50)
          {
            v2 = *v0;
            if (*v0)
            {
              v40 = CMBaseObjectGetDerivedStorage();
              v113 = (v40 + 888);
            }

            else
            {
              v113 = "";
            }

            v114 = v376;
            if (v376)
            {
              v40 = CMBaseObjectGetDerivedStorage();
              v115 = (v40 + 3096);
            }

            else
            {
              v115 = "";
            }

            OUTLINED_FUNCTION_478(v40, v41, v42, v43, v44, v45, v46, v47, p_lhs, v263, v274, v285, v297, v310, v321, *(&v321 + 1), v340, *(&v340 + 1), v358, v367, v376, v385, v393, queue, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], *&v410.value, v410.epoch);
            *&rhs[16] = *(v21 + 248);
            CMTimeSubtract(&time, &lhs, rhs);
            Seconds = CMTimeGetSeconds(&time);
            v117 = *(v367 + 32);
            v118 = *(v21 + 32);
            LODWORD(lhs.value) = 136316930;
            *(&lhs.value + 4) = "fpfs_FinishVideoSync";
            LOWORD(lhs.flags) = 2048;
            *(&lhs.flags + 2) = v2;
            HIWORD(lhs.epoch) = 2082;
            v424 = v113;
            LOWORD(v425[0]) = 2048;
            *(v425 + 2) = v114;
            WORD1(v425[1]) = 2082;
            *(&v425[1] + 4) = v115;
            WORD2(v425[2]) = 2048;
            *(&v425[2] + 6) = *&Seconds;
            HIWORD(v425[3]) = 1024;
            LODWORD(v425[4]) = v117;
            WORD2(v425[4]) = 1024;
            *(&v425[4] + 6) = v118;
            LODWORD(v263) = 74;
            p_lhs = &lhs;
            OUTLINED_FUNCTION_27();
            _os_log_send_and_compose_impl();
            v0 = v385;
            OUTLINED_FUNCTION_482();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_467();
        }

        v19 = 0;
        v20 = 0;
        v5 = v367;
      }

      else
      {
        v19 = 0;
        v20 = 0;
        v5 = v18;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0;
      OUTLINED_FUNCTION_482();
    }

    goto LABEL_90;
  }

  v19 = CandidateSyncTrackOfDiscontinuityDomainAndType;
  time = *(CandidateSyncTrackOfDiscontinuityDomainAndType + 208);
  OUTLINED_FUNCTION_75();
  if (OUTLINED_FUNCTION_848(v51, v52, v53, v54, v55, v56, v57, v58, p_lhs, v263, v274, v285, v297, v310, v321, *(&v321 + 1), v340, *(&v340 + 1), v358, v5, v376, v0, v393, queue, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v410.value, *&v410.timescale, v410.epoch, v411, v412, *(&v412 + 1), v413, v414, v415, cf, v417, *(&v417 + 1), v418, v419.value, *&v419.timescale, v419.epoch, v420.value, *&v420.timescale, v420.epoch, v421.n128_i64[0], v421.n128_i64[1], v422, lhs.value, *&lhs.timescale, lhs.epoch, v424, v425[0], v425[1], v425[2], v425[3], v425[4], v425[5], v426, v427, *(&v427 + 1)) >= 1)
  {
    v59 = *(v19 + 208);
    *(v5 + 224) = *(v19 + 224);
    *(v5 + 208) = v59;
  }

  if (!*(v19 + 198))
  {
    OUTLINED_FUNCTION_133();
    fpfs_StopFeedingTrack(v60, v61, v62);
  }

  v1 = *(v19 + 112);
  if (v1)
  {
    *&time.value = v323;
    time.epoch = v312;
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_741();
    v71 = OUTLINED_FUNCTION_706(v63, v64, v65, v66, v67, v68, v69, v70, v254, v265, v276, v287, v299, v312, v323, *(&v323 + 1), v342, v352, v360, v369, v378, v387, v395, queuea, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v410.value, *&v410.timescale, v410.epoch, v411, v412, *(&v412 + 1), v413, v414, v415, cf, v417, *(&v417 + 1), v418, v419.value, *&v419.timescale, v419.epoch, v420.value, *&v420.timescale, v420.epoch, v421.n128_i64[0], v421.n128_i64[1], v422, lhs.value);
    if (CMTimeCompare(v71, v72) < 0)
    {
      *(v5 + 208) = *(v5 + 288);
      *(v5 + 224) = *(v5 + 304);
    }

    FPSupport_getVideoDecodeWaterLevels(&v420, &v419, 1);
    *&lhs.timescale = v421.n128_u64[1];
    lhs.epoch = v422;
    v81 = OUTLINED_FUNCTION_706(v73, v74, v75, v76, v77, v78, v79, v80, v255, v266, v277, v288, v300, v313, v324, v333, v343, v353, v361, v370, v379, v388, v396, queueb, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v419.value, *&v419.timescale, v419.epoch, v411, v412, *(&v412 + 1), v413, v414, v415, cf, v417, *(&v417 + 1), v418, v419.value, *&v419.timescale, v419.epoch, v420.value, *&v420.timescale, v420.epoch, v421.n128_i64[0], v421.n128_i64[1], v422, v421.n128_i8[0]);
    CMTimeAdd(v83, v81, v82);
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_334();
    v92 = OUTLINED_FUNCTION_706(v84, v85, v86, v87, v88, v89, v90, v91, v256, v267, v278, v289, v301, v314, v325, v334, v344, v354, v362, v371, v380, v389, v397, queuee, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v410.value, *&v410.timescale, v410.epoch, v411, v412, *(&v412 + 1), v413, v414, v415, cf, v417, *(&v417 + 1), v418, v419.value, *&v419.timescale, v419.epoch, v420.value, *&v420.timescale, v420.epoch, v421.n128_i64[0], v421.n128_i64[1], v422, lhs.value);
    if (CMTimeCompare(v92, v93) < 0)
    {
      OUTLINED_FUNCTION_75();
      OUTLINED_FUNCTION_705();
      v102 = OUTLINED_FUNCTION_706(v94, v95, v96, v97, v98, v99, v100, v101, v254, v265, v276, v287, v299, v312, v323, *(&v323 + 1), v342, v352, v360, v369, v378, v387, v395, queuea, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v410.value, *&v410.timescale, v410.epoch, v411, v412, *(&v412 + 1), v413, v414, v415, cf, v417, *(&v417 + 1), v418, v419.value, *&v419.timescale, v419.epoch, v420.value, *&v420.timescale, v420.epoch, v421.n128_i64[0], v421.n128_i64[1], v422, lhs.value);
      v104 = CMTimeCompare(v102, v103);
      if ((v104 & 0x80000000) != 0)
      {
        memset(&lhs, 0, sizeof(lhs));
        v112 = *(v19 + 112);
        if (v112)
        {
          fpfsi_EndPresentationTimeForDecodedSamplesForRenderPipeline(*(v112 + 32), &lhs);
        }

        else
        {
          *&lhs.value = v323;
          lhs.epoch = v312;
        }

        if (lhs.flags)
        {
          OUTLINED_FUNCTION_334();
          v127 = OUTLINED_FUNCTION_445(v119, v120, v121, v122, v123, v124, v125, v126, v254, v265, v276, v287, v299, v312, v323, *(&v323 + 1), v342, v352, v360, v369, v378, v387, v395, queuea, lhs.value, *&lhs.timescale, lhs.epoch, *&rhs[24], v410.value);
          v104 = CMTimeCompare(v127, v128);
          if ((v104 & 0x80000000) != 0)
          {
            time = lhs;
          }
        }

        v410 = *(v19 + 232);
        v129 = OUTLINED_FUNCTION_445(v104, v105, v106, v107, v108, v109, v110, v111, v254, v265, v276, v287, v299, v312, v323, *(&v323 + 1), v342, v352, v360, v369, v378, v387, v395, queuea, time.value, *&time.timescale, time.epoch, *&rhs[24], v410.value);
        if (CMTimeCompare(v129, v130) >= 1)
        {
          *(v19 + 232) = time;
        }

        v131 = *(v19 + 232);
        *(v5 + 224) = *(v19 + 248);
        *(v5 + 208) = v131;
      }
    }

    v417 = *(v5 + 208);
    v418 = *(v5 + 224);
    LODWORD(v342) = FigStreamTrackIsRendererTimebaseStarter(v5);
  }

  else
  {
    LODWORD(v342) = 0;
  }

  v132 = *(v5 + 208);
  *(v19 + 248) = *(v5 + 224);
  *(v19 + 232) = v132;
  CMTimeMake(&lhs, 100, 1000);
  OUTLINED_FUNCTION_705();
  CMTimeAdd(&time, &v410, &lhs);
  *(v19 + 232) = time;
  time = *(v19 + 208);
  OUTLINED_FUNCTION_75();
  if (!OUTLINED_FUNCTION_848(v133, v134, v135, v136, v137, v138, v139, v140, v254, v265, v276, v287, v299, v312, v323, *(&v323 + 1), v342, v352, v360, v369, v378, v387, v395, queuea, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v410.value, *&v410.timescale, v410.epoch, v411, v412, *(&v412 + 1), v413, v414, v415, cf, v417, *(&v417 + 1), v418, v419.value, *&v419.timescale, v419.epoch, v420.value, *&v420.timescale, v420.epoch, v421.n128_i64[0], v421.n128_i64[1], v422, lhs.value, *&lhs.timescale, lhs.epoch, v424, v425[0], v425[1], v425[2], v425[3], v425[4], v425[5], v426, v427, *(&v427 + 1)))
  {
    OUTLINED_FUNCTION_301();
    TrackOfType = fpfs_LastTrackOfType(v141, v142, v19);
    if (!TrackOfType || *(TrackOfType + 168) != 6)
    {
      fpfs_DeleteTrack(v376, v19);
      v19 = 0;
      goto LABEL_88;
    }

    v417 = *(TrackOfType + 232);
    v418 = *(TrackOfType + 248);
    v19 = TrackOfType;
    v1 = *(TrackOfType + 112);
  }

  if (v1)
  {
    while (1)
    {
      queue = 0;
      FigGetAllocatorForMedia();
      CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
      v144 = OUTLINED_FUNCTION_265();
      if (CMBufferQueueCreate(v144, v145, v146, v147))
      {
        goto LABEL_85;
      }

      OUTLINED_FUNCTION_0();
      MEMORY[0x19A8CE710]();
      v148 = CMBufferQueueGetHead(0);
      if (!v148)
      {
        goto LABEL_81;
      }

      v2 = v148;
      v149 = 0;
      do
      {
        if (fpfs_IsMarkerOnly(v2))
        {
          goto LABEL_70;
        }

        memset(&time, 0, sizeof(time));
        CMSampleBufferGetOutputPresentationTimeStamp(&time, v2);
        memset(&lhs, 0, sizeof(lhs));
        CMSampleBufferGetOutputDecodeTimeStamp(&lhs, v2);
        v150 = OUTLINED_FUNCTION_195(lhs.epoch, p_lhs, v263, v274, v285, v297, v310, v321, *(&v321 + 1), v340, *(&v340 + 1), v358, v367, v376, v385, v393, queue, *rhs, *&rhs[16], lhs.value, *&lhs.timescale, v410.epoch, v411, v412, *(&v412 + 1), v413, v414, v415, cf, v417);
        v151 = v150 >> 31;
        v152 = OUTLINED_FUNCTION_195(time.epoch, v257, v268, v279, v290, v302, v315, v326, v335, v345, v355, v363, v372, v381, v390, v398, queuef, *rhs, *&rhs[16], time.value, *&time.timescale, v410.epoch, v411, v412, *(&v412 + 1), v413, v414, v415, cf, v417);
        v153 = v152;
        if ((v150 & 0x80000000) != 0 && (v152 & 0x80000000) == 0)
        {
          if (fpfs_IsVideoSync(v2))
          {
            break;
          }

          if (fpfs_IsVideoDependedOnByOthers(v2))
          {
            fpfs_DoNotDisplay(v2);
LABEL_67:
            if (v149)
            {
              CMBufferQueueEnqueue(*(v1 + 40), v149);
              CFRelease(v149);
            }

            v149 = CFRetain(v2);
            goto LABEL_70;
          }

          v151 = 0;
        }

        if (v151 || v153 < 0)
        {
          goto LABEL_67;
        }

        if ((OUTLINED_FUNCTION_195(lhs.epoch, p_lhs, v263, v274, v285, v297, v310, v321, *(&v321 + 1), v340, *(&v340 + 1), v358, v367, v376, v385, v393, queue, *rhs, *&rhs[16], lhs.value, *&lhs.timescale, v410.epoch, v411, v412, *(&v412 + 1), v413, v414, v415, cf, v417) & 0x80000000) == 0)
        {
          break;
        }

LABEL_70:
        v154 = CMBufferQueueDequeueAndRetain(queue);
        if (v154)
        {
          CFRelease(v154);
        }

        v2 = CMBufferQueueGetHead(queue);
      }

      while (v2);
      if (v149)
      {
        if (*(v5 + 112))
        {
          v155 = *(v1 + 64);
          if (v155)
          {
            CFRelease(v155);
            *(v1 + 64) = 0;
          }

          if (v1 == *(v19 + 112))
          {
            fpfs_RenderWithEndSignal(v19, v149, *(*(v5 + 112) + 32));
          }

          else
          {
            fpfs_RenderBuffer(v19, v149);
          }
        }

        CFRelease(v149);
      }

LABEL_81:
      if (CMBufferQueueGetBufferCount(queue) < 1)
      {
        if (queue)
        {
          CFRelease(queue);
        }
      }

      else
      {
        fpfs_SendBufferQueueToChomper(v7, queue);
      }

LABEL_85:
      v1 = *(v1 + 88);
      if (!v1)
      {
        OUTLINED_FUNCTION_482();
        v0 = v385;
        goto LABEL_89;
      }
    }
  }

LABEL_88:
  OUTLINED_FUNCTION_482();
LABEL_89:
  v20 = v340;
LABEL_90:
  if (fpfs_EnsureRenderChainForTrack(*v0, v5, 1))
  {
    goto LABEL_191;
  }

  OUTLINED_FUNCTION_301();
  v158 = fpfs_LastRenderingTrackofType(v156, v157, v5);
  v159 = MEMORY[0x1E695E4D0];
  if (v158)
  {
    v160 = *(v5 + 112);
    if (*(v158 + 112) != v160)
    {
      FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v160 + 32));
      v162 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v162)
      {
        v162(FigBaseObject, @"Suspended", *v159);
      }
    }
  }

  fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
  if (v20)
  {
    v164 = OUTLINED_FUNCTION_474();
    v165 = FigRenderPipelineGetFigBaseObject(v164);
    v166 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v166)
    {
      v166(v165, @"IsTimebaseStarter", *v159);
    }
  }

  if (!v19 || (v167 = *(v19 + 24), v167 == v5))
  {
LABEL_132:
    IsEmpty = CMBufferQueueIsEmpty(*(v5 + 88));
    v187 = MEMORY[0x1E6960C80];
    if (IsEmpty)
    {
      value = *MEMORY[0x1E6960C80];
      flags = *(MEMORY[0x1E6960C80] + 12);
      timescale = *(MEMORY[0x1E6960C80] + 8);
      v189 = v5;
      epoch = *(MEMORY[0x1E6960C80] + 16);
    }

    else
    {
      IsEmpty = CMBufferQueueGetFirstPresentationTimeStamp(&time, *(v5 + 88));
      value = time.value;
      flags = time.flags;
      timescale = time.timescale;
      v189 = v5;
      epoch = time.epoch;
    }

    v191 = v385;
    if (*(v189 + 199))
    {
      v412 = *v187;
      v413 = *(v187 + 16);
      if ((flags & 0x1D) == 1)
      {
        time = *(v189 + 288);
        if (OUTLINED_FUNCTION_848(IsEmpty, v180, v181, v182, v183, v184, v185, v186, p_lhs, v263, v274, v285, v297, v310, v321, *(&v321 + 1), v340, *(&v340 + 1), v358, v367, v376, v385, v393, queue, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v410.value, *&v410.timescale, v410.epoch, v411, v412, *(&v412 + 1), v413, v414, v415, cf, v417, *(&v417 + 1), v418, v419.value, *&v419.timescale, v419.epoch, v420.value, *&v420.timescale, v420.epoch, v421.n128_i64[0], v421.n128_i64[1], v422, value, __SPAIR64__(flags, timescale), epoch, v424, v425[0], v425[1], v425[2], v425[3], v425[4], v425[5], v426, v427, *(&v427 + 1)) >= 1)
        {
          if (dword_1EAF169F0)
          {
            OUTLINED_FUNCTION_795();
            v192 = OUTLINED_FUNCTION_509();
            os_log_type_enabled(v192, rhs[0]);
            OUTLINED_FUNCTION_221();
            if (v1)
            {
              v195 = *v385;
              if (*v385)
              {
                v196 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v196 = "";
              }

              *&v340 = v196;
              v197 = v376;
              v291 = v19;
              if (v376)
              {
                v198 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v198 = "";
              }

              v303 = v198;
              v199 = *(v367 + 32);
              time.value = value;
              time.timescale = timescale;
              time.flags = flags;
              time.epoch = epoch;
              v200 = CMTimeGetSeconds(&time);
              *&time.value = *(v367 + 288);
              OUTLINED_FUNCTION_853(*(v367 + 304), p_lhs, v263, v274, v291, v303, v310, v321, *(&v321 + 1), v340, *(&v340 + 1), v358, v367, v376, v385, v393, queue, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v410.value, *&v410.timescale, v410.epoch, v411, v412, *(&v412 + 1), v413, v414, v415, cf, v417, *(&v417 + 1), v418, v419.value, *&v419.timescale, v419.epoch, v420.value, *&v420.timescale, v420.epoch, v421.n128_i64[0], v421.n128_i64[1], v422, lhs.value, *&lhs.timescale, lhs.epoch, v424, v425[0], v425[1], v425[2], v425[3], v425[4], v425[5], v426, v427, *(&v427 + 1), v428, time.value);
              LODWORD(lhs.value) = 136316930;
              OUTLINED_FUNCTION_539("fpfs_FinishVideoSync");
              *(&lhs.flags + 2) = v195;
              OUTLINED_FUNCTION_222(v201, v258, v269, v280, v292, v304, v316, v327, v336, v340);
              *(v425 + 2) = v197;
              WORD1(v425[1]) = v202;
              *(&v425[1] + 4) = v297;
              WORD2(v425[2]) = 1024;
              *(&v425[2] + 6) = v199;
              WORD1(v425[3]) = v203;
              *(&v425[3] + 4) = *&v200;
              WORD2(v425[4]) = v203;
              *(&v425[4] + 6) = v204;
              OUTLINED_FUNCTION_377();
              OUTLINED_FUNCTION_25();
              _os_log_send_and_compose_impl();
              v19 = v285;
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_467();
            v191 = v385;
          }

          v193 = v367;
          fpfs_FlushPrimaryAndAuxRenderChains(*(v367 + 112), 0);
          *(v367 + 201) = 1;
          if (!v19)
          {
            goto LABEL_143;
          }

          goto LABEL_154;
        }
      }
    }

    else
    {
      v412 = *(v189 + 288);
      v413 = *(v189 + 304);
    }

    CMBufferQueueIsEmpty(*(v189 + 88));
    v193 = v189;
    if (!v19)
    {
LABEL_143:
      v194 = -1;
      goto LABEL_155;
    }

LABEL_154:
    v194 = *(v19 + 32);
LABEL_155:
    CMTimeMake(&time, 1, 2);
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_694(v205, v206, v207, v208, v209, v210, v211, v212, p_lhs, v263, v274, v285, v297, v310, v321, *(&v321 + 1), v340, *(&v340 + 1), v358, v367, v376, v385, v393, queue, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v410.value, *&v410.timescale, v410.epoch, v411, v412);
    v213 = OUTLINED_FUNCTION_489();
    if (!fpfs_StartTrackPlaying(v213))
    {
      if (v19)
      {
        for (i = v191[128]; i; i = i[3])
        {
          if (i[4] == v194)
          {
            break;
          }
        }
      }

      else
      {
        i = 0;
      }

      if (dword_1EAF169F0)
      {
        OUTLINED_FUNCTION_795();
        v215 = OUTLINED_FUNCTION_509();
        os_log_type_enabled(v215, rhs[0]);
        OUTLINED_FUNCTION_221();
        if (v1)
        {
          v216 = *v391;
          if (*v391)
          {
            v217 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v217 = "";
          }

          v346 = v217;
          v218 = v382;
          if (v382)
          {
            v219 = (CMBaseObjectGetDerivedStorage() + 3096);
            v306 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v219 = "";
            v306 = "";
          }

          v220 = v391[20];
          fpfs_GetTime(v391, &time);
          v221 = CMTimeGetSeconds(&time);
          v222 = v373;
          *&time.value = *(v373 + 208);
          v223 = OUTLINED_FUNCTION_853(*(v373 + 224), v259, v270, v281, v293, v306, v317, v328, *(&v328 + 1), v346, v356, v364, v373, v382, v391, v399, queuec, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v410.value, *&v410.timescale, v410.epoch, v411, v412, *(&v412 + 1), v413, v414, v415, cf, v417, *(&v417 + 1), v418, v419.value, *&v419.timescale, v419.epoch, v420.value, *&v420.timescale, v420.epoch, v421.n128_i64[0], v421.n128_i64[1], v422, lhs.value, *&lhs.timescale, lhs.epoch, v424, v425[0], v425[1], v425[2], v425[3], v425[4], v425[5], v426, v427, *(&v427 + 1), v428, time.value);
          *&time.value = *(v222 + 288);
          OUTLINED_FUNCTION_853(*(v222 + 304), v260, v271, v282, v294, v307, v318, v329, v337, v347, v357, v365, v374, v383, v392, v400, queueg, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v410.value, *&v410.timescale, v410.epoch, v411, v412, *(&v412 + 1), v413, v414, v415, cf, v417, *(&v417 + 1), v418, v419.value, *&v419.timescale, v419.epoch, v420.value, *&v420.timescale, v420.epoch, v421.n128_i64[0], v421.n128_i64[1], v422, lhs.value, *&lhs.timescale, lhs.epoch, v424, v425[0], v425[1], v425[2], v425[3], v425[4], v425[5], v426, v427, *(&v427 + 1), v428, time.value);
          LODWORD(lhs.value) = 136317442;
          OUTLINED_FUNCTION_539("fpfs_FinishVideoSync");
          *(&lhs.flags + 2) = v216;
          OUTLINED_FUNCTION_222(v224, v261, v272, v283, v295, v308, v319, v330, v338, v348);
          *(v425 + 2) = v218;
          WORD1(v425[1]) = v225;
          *(&v425[1] + 4) = v219;
          WORD2(v425[2]) = 2080;
          *(&v425[2] + 6) = v305;
          HIWORD(v425[3]) = 1024;
          LODWORD(v425[4]) = v220;
          WORD2(v425[4]) = v226;
          *(&v425[4] + 6) = *&v221;
          HIWORD(v425[5]) = v226;
          v426 = *&v223;
          LOWORD(v427) = v226;
          *(&v427 + 2) = v227;
          OUTLINED_FUNCTION_377();
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_467();
        v193 = v373;
        v191 = v391;
      }

      v228 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v415 + 4);
      if (v228)
      {
        v229 = v228;
        MEMORY[0x19A8D35D0]();
        FigGetAllocatorForMedia();
        v193 = v373;
        v230 = FigThreadCopyProperty();
        MEMORY[0x19A8D35D0](v230);
        v191 = v391;
        FigThreadSetProperty();
        CFRelease(v229);
      }

      v231 = CMBufferQueueDequeueAndRetain(*(v193 + 88));
      if (v231)
      {
        v232 = v231;
        do
        {
          v233 = OUTLINED_FUNCTION_293();
          fpfs_RenderBuffer(v233, v234);
          CFRelease(v232);
          v232 = CMBufferQueueDequeueAndRetain(*(v193 + 88));
        }

        while (v232);
      }

      v235 = v382;
      if (*(v193 + 198) && !*(v193 + 128))
      {
        OUTLINED_FUNCTION_133();
        fpfs_StopFeedingTrack(v236, v237, v238);
        v235 = v382;
      }

      if (i)
      {
        if (i[16])
        {
          *&v410.value = v328;
          v410.epoch = v317;
          fpfs_scheduleForwardEndTimeForTrack();
          if (dword_1EAF169F0)
          {
            *rhs = 0;
            LOBYTE(queuec) = 0;
            v242 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v242, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_221();
            if (v1)
            {
              v243 = *v391;
              if (*v391)
              {
                v244 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v244 = "";
              }

              v349 = v244;
              v245 = v382;
              if (v382)
              {
                v246 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v246 = "";
              }

              v247 = i[4];
              *&time.timescale = *&v410.timescale;
              OUTLINED_FUNCTION_853(v410.epoch, v259, v270, v281, v293, v305, v317, v328, *(&v328 + 1), v349, v356, v364, v373, v382, v391, v399, queuec, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v410.value, *&v410.timescale, v410.epoch, v411, v412, *(&v412 + 1), v413, v414, v415, cf, v417, *(&v417 + 1), v418, v419.value, *&v419.timescale, v419.epoch, v420.value, *&v420.timescale, v420.epoch, v421.n128_i64[0], v421.n128_i64[1], v422, lhs.value, *&lhs.timescale, lhs.epoch, v424, v425[0], v425[1], v425[2], v425[3], v425[4], v425[5], v426, v427, *(&v427 + 1), v428, v410.value);
              LODWORD(lhs.value) = 136316674;
              OUTLINED_FUNCTION_539("fpfs_FinishVideoSync");
              *(&lhs.flags + 2) = v243;
              OUTLINED_FUNCTION_222(v248, v262, v273, v284, v296, v309, v320, v331, v339, v350);
              *(v425 + 2) = v245;
              WORD1(v425[1]) = v249;
              *(&v425[1] + 4) = v246;
              WORD2(v425[2]) = 1024;
              *(&v425[2] + 6) = v247;
              WORD1(v425[3]) = v250;
              *(&v425[3] + 4) = v251;
              OUTLINED_FUNCTION_377();
              OUTLINED_FUNCTION_23();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_467();
            v193 = v373;
            v191 = v391;
          }
        }

        else
        {
          OUTLINED_FUNCTION_133();
          fpfs_StopFeedingTrack(v239, v240, v241);
        }

        v235 = v382;
      }

      fpfs_UpdateDimensions(v235, 1);
      if (cf)
      {
        MEMORY[0x19A8D35D0]();
        FigThreadSetProperty();
        if (cf)
        {
          CFRelease(cf);
        }
      }

      if (*(v193 + 200) && (*(v191 + 1508) & 1) != 0)
      {
        time = *(v191 + 187);
        v191[189] = v317;
        *(v191 + 187) = v328;
        fpfs_StepIFrame();
      }
    }

    goto LABEL_191;
  }

  *&v163 = 136316674;
  v340 = v163;
  while (v167)
  {
    v168 = *(v167 + 24);
    if (*(v167 + 48) == v2)
    {
      if (v168)
      {
        v1 = *(v168 + 32);
      }

      else
      {
        v1 = -1;
      }

      if (dword_1EAF169F0)
      {
        OUTLINED_FUNCTION_795();
        v2 = OUTLINED_FUNCTION_509();
        v169 = v410.value;
        os_log_type_enabled(v2, rhs[0]);
        OUTLINED_FUNCTION_233();
        if (v49)
        {
          v171 = v170;
        }

        else
        {
          v171 = v169;
        }

        if (v171)
        {
          v172 = *v385;
          if (*v385)
          {
            v173 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v173 = "";
          }

          v174 = v376;
          if (v376)
          {
            v175 = (CMBaseObjectGetDerivedStorage() + 3096);
            v174 = v376;
          }

          else
          {
            v175 = "";
          }

          v176 = *(v167 + 32);
          v177 = *(v367 + 32);
          LODWORD(lhs.value) = v340;
          *(&lhs.value + 4) = "fpfs_FinishVideoSync";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = v172;
          HIWORD(lhs.epoch) = 2082;
          v424 = v173;
          v5 = v367;
          LOWORD(v425[0]) = 2048;
          *(v425 + 2) = v174;
          WORD1(v425[1]) = 2082;
          *(&v425[1] + 4) = v175;
          WORD2(v425[2]) = 1024;
          *(&v425[2] + 6) = v176;
          WORD1(v425[3]) = 1024;
          HIDWORD(v425[3]) = v177;
          OUTLINED_FUNCTION_377();
          OUTLINED_FUNCTION_86();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_467();
        OUTLINED_FUNCTION_482();
      }

      v178 = *(v167 + 112);
      if (v178 && v178 != *(v19 + 112))
      {
        if (*(v178 + 64))
        {
          CFRelease(*(v178 + 64));
          v178 = *(v167 + 112);
          *(v178 + 64) = 0;
        }

        if (v178 == *(v5 + 112))
        {
          fpfs_FlushPrimaryAndAuxRenderChains(v178, 1);
        }
      }

      fpfs_DeleteTrack(*(v167 + 16), v167);
      if ((v1 & 0x8000000000000000) == 0)
      {
        v168 = v385[128];
        if (v168)
        {
          while (*(v168 + 32) != v1)
          {
            v168 = *(v168 + 24);
            if (!v168)
            {
              goto LABEL_130;
            }
          }
        }

        else
        {
LABEL_130:
          v168 = *(v19 + 24);
        }
      }
    }

    v167 = v168;
    if (v168 == v5)
    {
      goto LABEL_132;
    }
  }

  OUTLINED_FUNCTION_120();
  FigSignalErrorAtGM();
LABEL_191:
  OUTLINED_FUNCTION_191();
}

uint64_t *fpfs_IsAudioTrackReadyToStart(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  OUTLINED_FUNCTION_700();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v49, 0, sizeof(v49));
  OUTLINED_FUNCTION_514();
  lhs = *a3;
  rhs = *(v4 + 412);
  CMTimeSubtract(&v50, &lhs, &rhs);
  if (!v5)
  {
    *&v48.value = *(v4 + 232);
    v17 = *(v4 + 248);
LABEL_5:
    v48.epoch = v17;
    goto LABEL_7;
  }

  EndOutputPresentationTimeStamp = fpfs_GetEndOutputPresentationTimeStamp(v5, &v48);
  OUTLINED_FUNCTION_660(EndOutputPresentationTimeStamp, v10, v11, v12, v13, v14, v15, v16, v38, v41, rhs.value, *&rhs.timescale, rhs.epoch, v45, lhs.value, *&lhs.timescale, lhs.epoch, v47, *&v48.value);
  if ((OUTLINED_FUNCTION_636(v50.epoch, v39, v42, v50.value, *&v50.timescale, rhs.epoch, v45, lhs.value) & 0x80000000) != 0)
  {
    if (*(v4 + 436))
    {
      goto LABEL_7;
    }

    CMBufferQueueReset(*(v4 + 88));
    *&v48.value = *MEMORY[0x1E6960C80];
    v17 = *(MEMORY[0x1E6960C80] + 16);
    goto LABEL_5;
  }

  CMBufferQueueEnqueue(*(v4 + 88), v5);
LABEL_7:
  OUTLINED_FUNCTION_351();
  fpfs_TrimAudioTrack(v4, &lhs);
  if (!*(v4 + 400) || (result = fpfs_isDecryptorReady(v4), result))
  {
    if (*(DerivedStorage + 2904))
    {
      return 0;
    }

    result = fpfs_CanRenderAudio();
    if (result)
    {
      if (*(DerivedStorage + 840) == 0.0)
      {
        OUTLINED_FUNCTION_660(result, v19, v20, v21, v22, v23, v24, v25, v38, v41, rhs.value, *&rhs.timescale, rhs.epoch, v45, lhs.value, *&lhs.timescale, lhs.epoch, v47, *&v48.value);
        return (OUTLINED_FUNCTION_636(*(a3 + 16), v40, v43, *a3, *(a3 + 8), rhs.epoch, v45, lhs.value) > 0);
      }

      HIDWORD(v41) = 0;
      OUTLINED_FUNCTION_351();
      fpfs_GetTrackStartupQueueDuration(v4, &lhs, &v49);
      lhs = v49;
      OUTLINED_FUNCTION_185();
      fpfs_CheckCanKeepUp(v26, v27, v28, v29, v30, v31, v32, v33);
      OUTLINED_FUNCTION_484();
      v36 = v34 == v35;
      result = result ? result : v36;
      if (a4 && !result)
      {
        OUTLINED_FUNCTION_29();
        if (!v37)
        {
          return 0;
        }

        result = fpfs_LastTrackOfType(*(v4 + 16), *(v4 + 48), v4);
        if (result)
        {
          return (OUTLINED_FUNCTION_636(result[31], v38, v41, result[29], result[30], rhs.epoch, v45, *(v4 + 232)) >= 0);
        }
      }
    }
  }

  return result;
}

uint64_t fpfsi_VideoOutputAllowedWithPermissivePolicy(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_33();
  if (v5)
  {
    if (*(v1 + 400))
    {
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_199();
      if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        return 0;
      }

      v2 = OUTLINED_FUNCTION_236();
      v4 = v3(v2);
      if (v4)
      {
        v5 = v4 == -12784;
      }

      else
      {
        v5 = 1;
      }

      if (!v5)
      {
        return 0;
      }
    }

    return 1;
  }

  FigSignalErrorAtGM();
  return 0;
}

uint64_t fpfs_UnsuspendVideoRenderingForTrack()
{
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_340();
  CMBaseObjectGetDerivedStorage();
  if (*(v1 + 48) != v2 || !*(v1 + 112))
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_301();
  RenderingTrackofType = fpfs_LastRenderingTrackofType(v3, v4, v1);
  if (RenderingTrackofType)
  {
    v6 = RenderingTrackofType;
    v7 = *(RenderingTrackofType + 112);
    if (v7)
    {
      v8 = *(v7 + 64);
      if (v8)
      {
        if (CFDictionaryGetValue(v8, @"renderPipelineToStart"))
        {
          v9 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v9)
          {
            if (FigCFEqual())
            {
              goto LABEL_12;
            }
          }

          v10 = *(*(v6 + 112) + 64);
          if (v10)
          {
            CFRelease(v10);
            *(*(v6 + 112) + 64) = 0;
          }

          if (v9)
          {
LABEL_12:
            CFRelease(v9);
          }
        }
      }
    }

    v11 = *(v6 + 112);
    if (v11)
    {
      v12 = v11 == *(v1 + 112);
    }

    else
    {
      v12 = 1;
    }

    if (!v12 && !*(v11 + 64))
    {
      cf = 0;
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_441();
      OUTLINED_FUNCTION_19();
      v21 = CMSampleBufferCreate(v13, v14, v15, v16, v17, v18, v19, v20, 0, 0, 0, &cf);
      if (!v21)
      {
        v22 = fpfs_RenderWithEndSignal(v6, cf, *(*(v1 + 112) + 32));
        CFRelease(cf);
        if (v22)
        {
          return v22;
        }

        fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
        goto LABEL_21;
      }

      return v21;
    }

LABEL_21:
    v23 = 0;
    goto LABEL_22;
  }

  fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
  v23 = 1;
  OUTLINED_FUNCTION_133();
  fpfsi_scheduleFVTTransitionsForItem();
  fpfsi_RTCReportingReportFormatTransition(*(v1 + 16), 0, v1);
  v21 = fpfsi_setCAImageQueueFlagsForTrack(v1);
  if (v21)
  {
    return v21;
  }

LABEL_22:
  v22 = 0;
  if (v0)
  {
    *v0 = v23;
  }

  return v22;
}

uint64_t FigReportingAgentStatsUpdateSampleValue(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_349();
    VTable = CMBaseObjectGetVTable();
    v2 = *(VTable + 16);
    result = VTable + 16;
    if (*(v2 + 40))
    {
      OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_403();

      return v3();
    }
  }

  return result;
}

void fpfsi_RTCReportingReportFormatTransition(uint64_t a1, CFStringRef a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(a3 + 48) != 1986618469)
  {
    return;
  }

  v6 = DerivedStorage;
  MediaSubType = CMFormatDescriptionGetMediaSubType(*(a3 + 56));
  fpfsi_getTrackVideoContentTypeDescription(a3);
  if (!a2)
  {
    goto LABEL_12;
  }

  if (LODWORD(a2[1].data) == 1986618469)
  {
    fpfsi_getTrackVideoContentTypeDescription(a2);
    if (!FigCFEqual())
    {
      if (*(v6 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        OUTLINED_FUNCTION_717();
        v8();
      }

      AllocatorForMedia = FigGetAllocatorForMedia();
      v10 = CMFormatDescriptionGetMediaSubType(a2[1].length) >> 24;
      v11 = (CMFormatDescriptionGetMediaSubType(a2[1].length) >> 16);
      v12 = (CMFormatDescriptionGetMediaSubType(a2[1].length) >> 8);
      v13 = CMFormatDescriptionGetMediaSubType(a2[1].length);
      v14 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%c%c%c%c", v10, v11, v12, v13);
      if (v14)
      {
        a2 = v14;
        if (*(v6 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          OUTLINED_FUNCTION_481();
          OUTLINED_FUNCTION_333();
          v15();
        }

LABEL_12:
        if (*(v6 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          OUTLINED_FUNCTION_481();
          OUTLINED_FUNCTION_240();
          v16();
        }

        v17 = FigGetAllocatorForMedia();
        v18 = CFStringCreateWithFormat(v17, 0, @"%c%c%c%c", HIBYTE(MediaSubType), BYTE2(MediaSubType), BYTE1(MediaSubType), MediaSubType);
        if (v18)
        {
          if (*(v6 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
          {
            OUTLINED_FUNCTION_310();
            v19();
          }

          if (*(a3 + 500))
          {
            v20 = *(v6 + 2568);
            OUTLINED_FUNCTION_269();
            CMTimeGetSeconds(v21);
            if (v20)
            {
              if (*(*(CMBaseObjectGetVTable() + 16) + 56))
              {
                OUTLINED_FUNCTION_288();
                v22();
              }
            }
          }

          if (*(v6 + 2568))
          {
            if (*(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              OUTLINED_FUNCTION_426();
              v23();
            }

            if (*(v6 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 8))
            {
              OUTLINED_FUNCTION_298();
              OUTLINED_FUNCTION_305();
              v24();
            }
          }
        }

        if (a2)
        {
          CFRelease(a2);
        }

        if (v18)
        {
          CFRelease(v18);
        }
      }
    }
  }
}

uint64_t FigReportingAgentStatsSetCFTypeValue(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_349();
    VTable = CMBaseObjectGetVTable();
    v2 = *(VTable + 16);
    result = VTable + 16;
    if (*(v2 + 48))
    {
      OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_403();

      return v3();
    }
  }

  return result;
}

void fpfsi_copyTrackFigTags(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14, CFArrayRef tagCollectionsOut, CFTypeRef cf, CMMutableTagCollectionRef tagCollection, int a18, int a19, __int128 a20, const char *a21, __int128 a22, int a23, int a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  OUTLINED_FUNCTION_253();
  a54 = v56;
  a55 = v57;
  OUTLINED_FUNCTION_187();
  a43 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  tagCollection = 0;
  tagCollectionsOut = 0;
  FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions(*(v55 + 56), &cf);
  if (!cf)
  {
    if (dword_1EAF169F0)
    {
      v59 = OUTLINED_FUNCTION_190();
      os_log_type_enabled(v59, type);
      OUTLINED_FUNCTION_134();
      if (v61)
      {
        a14 = v60;
      }

      if (a14)
      {
        v63 = *DerivedStorage;
        if (v63)
        {
          v64 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v64 = "";
        }

        v65 = *(v55 + 16);
        if (v65)
        {
          CMBaseObjectGetDerivedStorage();
        }

        a18 = 136316418;
        OUTLINED_FUNCTION_536();
        *(&a20 + 6) = v63;
        OUTLINED_FUNCTION_768();
        a21 = v64;
        LOWORD(a22) = v66;
        *(&a22 + 2) = v65;
        OUTLINED_FUNCTION_682();
        LOWORD(a24) = 1024;
        *(&a24 + 2) = v67;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_456();
      }

      OUTLINED_FUNCTION_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (FPSupport_CreateDefaultTagCollectionForVideo(&cf))
    {
      goto LABEL_22;
    }

    if (!cf)
    {
      goto LABEL_24;
    }
  }

  FigGetAllocatorForMedia();
  FigTagCollectionCreateMutableCopy();
  if (tagCollection)
  {
    CMVideoFormatDescriptionCopyTagCollectionArray(*(v55 + 56), &tagCollectionsOut);
    if (tagCollectionsOut && CFArrayGetCount(tagCollectionsOut) >= 2)
    {
      CMTagCollectionRemoveAllTagsOfCategory(tagCollection, kCMTagCategory_StereoView);
      CMTagCollectionAddTag(tagCollection, *MEMORY[0x1E69631A0]);
      CMTagCollectionRemoveAllTagsOfCategory(tagCollection, kCMTagCategory_PackingType);
      CMTagCollectionAddTag(tagCollection, *MEMORY[0x1E6963158]);
    }

    FigTagCollectionCreateCopy();
  }

LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_24:
  if (tagCollection)
  {
    CFRelease(tagCollection);
  }

  if (tagCollectionsOut)
  {
    CFRelease(tagCollectionsOut);
  }

  OUTLINED_FUNCTION_252();
}

uint64_t fpfs_PrerollRenderPipeline()
{
  OUTLINED_FUNCTION_681();
  if (!CFNumberCreate(v1, v2, v3))
  {
    return 4294954434;
  }

  OUTLINED_FUNCTION_251();
  if (*(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v4 = OUTLINED_FUNCTION_177();
    v6 = v5(v4);
  }

  else
  {
    v6 = 4294954514;
  }

  CFRelease(v0);
  return v6;
}

void fpfs_CompleteTrialSwitch(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, __int16 a9, char a10, os_log_type_t type, int a12, int a13, uint64_t a14, __int16 a15, uint64_t a16, uint64_t a17, __int16 a18, uint64_t a19, __int16 a20, uint64_t a21, __int16 a22, int a23, __int16 a24, int a25, __int16 a26, int a27, uint64_t a28, CMTime *a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  OUTLINED_FUNCTION_809();
  a60 = v64;
  a61 = v65;
  v67 = v66;
  OUTLINED_FUNCTION_261();
  a48 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *v67 = 0;
  v69 = DerivedStorage[218];
  if (v69)
  {
    v103 = v67;
    v70 = DerivedStorage[128];
    if (v70)
    {
      LOBYTE(v71) = 0;
      v72 = DerivedStorage + 122;
      v63 = v61;
      do
      {
        v73 = *(v70 + 196);
        if (v73 < 3)
        {
          v74 = v72[2 * v73 + 1];
          v75 = v74 != 0;
        }

        else
        {
          OUTLINED_FUNCTION_111();
          FigSignalErrorAtGM();
          v73 = *(v70 + 196);
          v74 = v72[2 * v73 + 1];
          v75 = 1;
        }

        v76 = *(v70 + 64);
        if (v76 == v74)
        {
          v77 = 1 << v73;
        }

        else
        {
          LOBYTE(v77) = 0;
        }

        if (v76 == v72[2 * v73] && v75)
        {
          OUTLINED_FUNCTION_133();
          fpfs_StopFeedingTrack(v79, v80, v81);
        }

        LOBYTE(v71) = v77 | v71;
        v70 = *(v70 + 24);
      }

      while (v70);
      v61 = v63;
      v69 = DerivedStorage[218];
      v71 = v71;
    }

    else
    {
      v71 = 0;
    }

    FigAlternateGetPeakBitRate(v69);
    FigAlternateGetPeakBitRate(DerivedStorage[210]);
    a33 = *MEMORY[0x1E6960C70];
    a34 = *(MEMORY[0x1E6960C70] + 16);
    OUTLINED_FUNCTION_57();
    if (!fpfs_SetAlternateWithContext())
    {
      if (dword_1EAF169F0)
      {
        v82 = OUTLINED_FUNCTION_633();
        os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_28();
        if (v63)
        {
          if (*DerivedStorage)
          {
            CMBaseObjectGetDerivedStorage();
          }

          if (v61)
          {
            CMBaseObjectGetDerivedStorage();
          }

          v83 = DerivedStorage[210];
          if (!FigAlternateGetAverageBitRate(v83))
          {
            FigAlternateGetPeakBitRate(v83);
          }

          FigAlternateGetPeakBitRate(DerivedStorage[210]);
          OUTLINED_FUNCTION_599();
          OUTLINED_FUNCTION_100();
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v84 = 0;
      v85 = 138;
      v86 = 123;
      v87 = 928;
      do
      {
        v88 = DerivedStorage[v86];
        if (v88)
        {
          StoreCurrentManifold(DerivedStorage, v84, 0, v88);
          StoreCurrentManifold(DerivedStorage, v84, 1u, 0);
          OUTLINED_FUNCTION_680();
          v89 = (DerivedStorage + v87);
          *v89 = *(DerivedStorage + v87 + 12);
          v89[6] = *(DerivedStorage + v87 + 36);
          DerivedStorage[v85] = DerivedStorage[v85 + 3];
        }

        else
        {
          OUTLINED_FUNCTION_680();
        }

        DerivedStorage[v85 + 3] = 0;
        v90 = &DerivedStorage[v84];
        v91 = v90[22];
        v92 = v90[25];
        v90[22] = v92;
        if (v92)
        {
          CFRetain(v92);
        }

        if (v91)
        {
          CFRelease(v91);
        }

        v93 = v90[25];
        if (v93)
        {
          CFRelease(v93);
          v90[25] = 0;
        }

        if ((v71 >> v84))
        {
          v94 = OUTLINED_FUNCTION_521();
          fpfs_DeleteStrandedTracksUponSwitch(v94);
        }

        ++v84;
        ++v85;
        v86 += 2;
        v87 += 4;
      }

      while (v84 != 3);
      for (i = DerivedStorage[128]; i; i = *(i + 24))
      {
        if (*(i + 168) == 1)
        {
          v96 = DerivedStorage[128];
          v97 = v96 == i;
          if (v96)
          {
            v98 = v96 == i;
          }

          else
          {
            v98 = 1;
          }

          if (v98)
          {
LABEL_56:
            if (!v96 || v97)
            {
              a33 = 0uLL;
              a34 = 0;
              CMBufferQueueGetMinPresentationTimeStamp(&a33, *(i + 88));
              if (BYTE12(a33))
              {
                *(i + 208) = a33;
                *(i + 224) = a34;
              }

              v102 = *(i + 280);
              if (v102)
              {
                CFRelease(v102);
                *(i + 280) = 0;
              }

              fpfs_ChangeTrackState(i, 0);
              fpfs_ChangeTrackState(i, 3);
              if (i == v62)
              {
                *v103 = 1;
              }

              continue;
            }
          }

          else
          {
            while (*(v96 + 168) != 6 || *(v96 + 80) != *(i + 80))
            {
              v96 = *(v96 + 24);
              v97 = v96 == i;
              if (v96)
              {
                v99 = v96 == i;
              }

              else
              {
                v99 = 1;
              }

              if (v99)
              {
                goto LABEL_56;
              }
            }
          }

          if (i != v62)
          {
            v100 = OUTLINED_FUNCTION_624();
            fpfs_CompleteTrialSync(v100, v101);
          }
        }
      }

      fpfs_ResolveAllWaitingTracks(v61);
    }
  }

  OUTLINED_FUNCTION_808();
}

void fpfs_StartTrackPlaying()
{
  OUTLINED_FUNCTION_182();
  v1 = v0;
  v380 = v2;
  v358 = v3;
  tagCollectionsOut = v4;
  v6 = v5;
  v8 = v7;
  v418 = *MEMORY[0x1E69E9840];
  HIBYTE(v403) = 0;
  v9 = MEMORY[0x1E6960C70];
  v414 = *MEMORY[0x1E6960C70];
  LODWORD(v415) = *(MEMORY[0x1E6960C70] + 8);
  epoch = *(MEMORY[0x1E6960C70] + 16);
  v412 = v414;
  LODWORD(v413) = v415;
  *v401 = *MEMORY[0x1E6960C70];
  v402 = epoch;
  v11 = *v7;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v334 = *(v6 + 16);
  cf = *(v6 + 32);
  LODWORD(v388) = *(v6 + 436);
  v287 = v8;
  v342 = DerivedStorage;
  v350 = v11;
  if (!fpfsi_isTrackInLists(v8, v6, 1u) && dword_1EAF169F0)
  {
    OUTLINED_FUNCTION_655();
    v13 = OUTLINED_FUNCTION_639();
    if (os_log_type_enabled(v13, type.value))
    {
      value = v399.value;
    }

    else
    {
      value = v399.value & 0xFFFFFFFE;
    }

    if (value)
    {
      v15 = *v8;
      if (*v8)
      {
        v16 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v16 = "";
      }

      v17 = v334;
      if (v334)
      {
        v18 = (CMBaseObjectGetDerivedStorage() + 3096);
        v17 = v334;
      }

      else
      {
        v18 = "";
      }

      v19 = v8[20];
      v20 = *(v6 + 40);
      v21 = *(v6 + 48);
      LODWORD(lhs.value) = 136317954;
      *(&lhs.value + 4) = "fpfs_StartTrackPlaying";
      LOWORD(lhs.flags) = 2048;
      *(&lhs.flags + 2) = v15;
      HIWORD(lhs.epoch) = 2082;
      v405 = v16;
      *v406 = 2048;
      *&v406[2] = v17;
      *&v406[10] = 2082;
      *&v406[12] = v18;
      *&v406[20] = 1024;
      *&v406[22] = v19;
      *&v406[26] = 2048;
      *&v406[28] = cf;
      *&v406[36] = 1024;
      *&v406[38] = v20;
      *&v406[42] = 1024;
      *&v406[44] = HIBYTE(v21);
      LOWORD(v407) = 1024;
      *(&v407 + 2) = BYTE2(v21);
      HIWORD(v407) = 1024;
      LODWORD(v408) = BYTE1(v21);
      WORD2(v408) = 1024;
      *(&v408 + 6) = v21;
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_566();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    DerivedStorage = v342;
    v11 = v350;
  }

  if (*(v6 + 48) == 1668047728)
  {
    RenderingTrackofType = fpfs_LastRenderingTrackofType(v334, 1668047728, v6);
  }

  else
  {
    RenderingTrackofType = 0;
  }

  OUTLINED_FUNCTION_63();
  if (v54)
  {
    OUTLINED_FUNCTION_194();
    v25 = fpfs_LastRenderingTrackofType(v23, v24, v6);
    if (v25)
    {
      fpfs_EnqueueReleaseAfterDecoding(v25);
    }
  }

  OUTLINED_FUNCTION_732();
  fpfs_EnsureRenderChainForTrack();
  if (v26)
  {
    v27 = v26;
    if (dword_1EAF169F0)
    {
      OUTLINED_FUNCTION_655();
      v28 = OUTLINED_FUNCTION_639();
      os_log_type_enabled(v28, type.value);
      OUTLINED_FUNCTION_40();
      if (RenderingTrackofType)
      {
        if (v350)
        {
          v29 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v29 = "";
        }

        if (v334)
        {
          CMBaseObjectGetDerivedStorage();
        }

        LODWORD(lhs.value) = 136316418;
        OUTLINED_FUNCTION_321();
        *(v41 + 14) = v350;
        OUTLINED_FUNCTION_511();
        v405 = v29;
        *v406 = v42;
        *(v43 + 34) = v44;
        *&v406[10] = v45;
        *(v43 + 44) = v46;
        *&v406[20] = 1024;
        *(v43 + 54) = v27;
        OUTLINED_FUNCTION_49();
        OUTLINED_FUNCTION_31();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      DerivedStorage = v342;
    }

    fpfs_StopPlayingItemWithOSStatus(DerivedStorage, v334, v27);
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_144();
  if (*(v6 + 48) == v30)
  {
    if (fpfs_ShouldTryToGrabHDRPlaybackBaton(v11, v334))
    {
      if (!fpfs_GrabPlayerHDRPlaybackBaton())
      {
        fpfsi_SwitchBetweenHDRAndSDR(v334, 1);
        OUTLINED_FUNCTION_120();
        if (FigSignalErrorAtGM())
        {
          goto LABEL_68;
        }
      }
    }

    if (fpfs_ShouldTryToGrab4kPlaybackBaton(v11, v334))
    {
      if (!fpfs_GrabPlayer4kPlaybackBaton(v11))
      {
        fpfsi_SwitchBetween4kAndHD();
        OUTLINED_FUNCTION_120();
        if (FigSignalErrorAtGM())
        {
          goto LABEL_68;
        }
      }
    }

    DerivedStorage = v342;
  }

  v31 = MEMORY[0x1E695E4D0];
  OUTLINED_FUNCTION_63();
  if (v54)
  {
    if (v8[391] != *(DerivedStorage + 608))
    {
      v33 = *(DerivedStorage + 616);
      v34 = *(v287 + 3136);
      *(DerivedStorage + 616) = v34;
      if (v34)
      {
        CFRetain(v34);
      }

      if (v33)
      {
        CFRelease(v33);
      }

      v35 = *(DerivedStorage + 608);
      v36 = *(v287 + 3128);
      *(DerivedStorage + 608) = v36;
      if (v36)
      {
        CFRetain(v36);
      }

      if (v35)
      {
        CFRelease(v35);
      }
    }

    if (!*(v6 + 439))
    {
      *(v6 + 201) = 1;
    }

    lhs = *v358;
    *&refcon.value = *&v358->value;
    v37 = *(v6 + 16);
    refcon.epoch = v358->epoch;
    v417 = v37;
    fpfs_TrimAudioTrack(v6, &lhs);
    CMBufferQueueCallForEachBuffer(*(v6 + 88), fpfsi_TrimAudioInQueue, &refcon);
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_473();
    for (; v38; v38 = *(v38 + 24))
    {
      if (*(v38 + 48) == v39 && *(v38 + 112))
      {
        break;
      }
    }

    if (v38 == v6)
    {
      v40 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (!v40)
      {
        goto LABEL_70;
      }

      while (*(v40 + 48) != 1986618469 || !*(v40 + 112))
      {
        v40 = *(v40 + 24);
        if (!v40)
        {
          goto LABEL_70;
        }
      }

      if (*(v40 + 80) >= *(v6 + 80))
      {
LABEL_70:
        FigBaseObject = FigRenderPipelineGetFigBaseObject(*(*(v6 + 112) + 32));
        v48 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v48 || v48(FigBaseObject, @"IsTimebaseStarter", *v31))
        {
          goto LABEL_68;
        }
      }
    }
  }

  else if (RenderingTrackofType && v32 == 1668047728 && RenderingTrackofType[14].isa == *(v6 + 112))
  {
    *(v6 + 201) = 0;
  }

  v49 = *(v287 + 1024);
  if (v49 && v49 != v6)
  {
    do
    {
      if (*(v49 + 112) == *(v6 + 112))
      {
        OUTLINED_FUNCTION_674();
        if (v54)
        {
          while (1)
          {
            v50 = CMBufferQueueDequeueAndRetain(*(v49 + 88));
            if (!v50)
            {
              break;
            }

            RenderingTrackofType = v50;
            v51 = OUTLINED_FUNCTION_284();
            v53 = fpfs_RenderBuffer(v51, v52);
            CFRelease(RenderingTrackofType);
            if (v53)
            {
              goto LABEL_68;
            }
          }
        }
      }

      v49 = *(v49 + 24);
      if (v49)
      {
        v54 = v49 == v6;
      }

      else
      {
        v54 = 1;
      }
    }

    while (!v54);
  }

  if (fpfs_UnsuspendVideoRenderingForTrack())
  {
    goto LABEL_68;
  }

  LODWORD(v373) = *(v9 + 12);
  OUTLINED_FUNCTION_63();
  v55 = v342;
  LODWORD(v56) = 1986618469;
  if (v54)
  {
    OUTLINED_FUNCTION_194();
    TrackOfType = fpfs_LastTrackOfType(v57, v58, v6);
    HIDWORD(v366) = TrackOfType && *(v6 + 112) == *(TrackOfType + 112) && *(v6 + 80) != *(TrackOfType + 80);
  }

  else
  {
    HIDWORD(v366) = 0;
  }

  v60 = CMBufferQueueDequeueAndRetain(*(v6 + 88));
  if (!v60)
  {
    v170 = OUTLINED_FUNCTION_485(0, v61, v62, v63, v64, v65, v66, v67, v238, v246, v254, tagCollectionsOut, cf, tagCollection, v287, *v295, *&v295[8], *&v295[16], v317, v326, v334, v342, v350, v358);
    *(v6 + 224) = *(v171 + 16);
    *(v6 + 208) = v170;
    fpfs_AccumulateTrackDurationToBufferedAirPlayRenderedSampleRange(v6);
    *&v295[4] = v373;
    tagCollectiona = epoch;
LABEL_170:
    if (!*(v6 + 198))
    {
      if (*(v6 + 48) == v56)
      {
        v172 = 7;
      }

      else
      {
        v172 = 4;
      }

      fpfs_ChangeTrackState(v6, v172);
      goto LABEL_189;
    }

    fpfs_DeleteTrack(v334, v6);
    OUTLINED_FUNCTION_120();
    goto LABEL_193;
  }

  RenderingTrackofType = v60;
  HIDWORD(v373) = 0;
  *&v318 = *v31;
  *(&v318 + 1) = *MEMORY[0x1E69604D0];
  *&v68 = 136316674;
  *&v295[8] = v68;
  *&v295[4] = v373;
  tagCollectiona = epoch;
  do
  {
    memset(&v399, 0, sizeof(v399));
    CMSampleBufferGetOutputPresentationTimeStamp(&v399, RenderingTrackofType);
    memset(&type, 0, sizeof(type));
    fpfs_GetEndOutputPresentationTimeStamp(RenderingTrackofType, &type);
    refcon = type;
    v69 = OUTLINED_FUNCTION_421();
    BufferCount = fpfs_TimeIsAfter(v69, v70, v71);
    v83 = 0;
    if (!BufferCount)
    {
      OUTLINED_FUNCTION_78(BufferCount, v73, v74, v75, v76, v77, v78, v79, v238, v246, v254, tagCollectionsOut, cf, tagCollectiona, v287, *v295, *&v295[8], *&v295[16], v318, *(&v318 + 1), v334, v342, v350, v358, v366, v373, v380, v388, rhs.value, *&rhs.timescale, rhs.epoch, v396, v397.value, *&v397.timescale, v397.epoch, type.value, *&type.timescale, type.epoch, *&v399.value);
      v80 = OUTLINED_FUNCTION_421();
      BufferCount = fpfs_TimeIsAtOrAfter(v80, v81, v82);
      if (!BufferCount)
      {
        if (!*(v6 + 200) || (BufferCount = CMBufferQueueGetBufferCount(*(v6 + 88))) != 0 || (BufferCount = CMSampleBufferGetDuration(&v397, RenderingTrackofType), (v397.flags & 1) != 0) && (Duration = CMSampleBufferGetDuration(&refcon, RenderingTrackofType), BufferCount = OUTLINED_FUNCTION_850(Duration, v152, v153, v154, v155, v156, v157, v158, v238, v246, v254, tagCollectionsOut, cf, tagCollectiona, v287, *v295, *&v295[8], *&v295[16], v318, *(&v318 + 1), v334, v342, v350, v358, v366, v373, v380, v388, rhs.value, *&rhs.timescale, rhs.epoch, v396, v397.value, *&v397.timescale, v397.epoch, type.value, *&type.timescale, type.epoch, v399.value, *&v399.timescale, v399.epoch, v400, v401[0], v401[1], v402, v403, kSparseSampleDurationAllowance, *(&kSparseSampleDurationAllowance + 1), 0, v405, *v406, *&v406[8], *&v406[16], *&v406[24], *&v406[32], *&v406[40], *&v407, v408, *(&v408 + 1), v409, v410, v411, v412), (BufferCount & 0x80000000) == 0))
        {
          v83 = 1;
        }
      }
    }

    OUTLINED_FUNCTION_78(BufferCount, v73, v74, v75, v76, v77, v78, v79, v238, v246, v254, tagCollectionsOut, cf, tagCollectiona, v287, *v295, *&v295[8], *&v295[16], v318, *(&v318 + 1), v334, v342, v350, v358, v366, v373, v380, v388, rhs.value, *&rhs.timescale, rhs.epoch, v396, v397.value, *&v397.timescale, v397.epoch, type.value, *&type.timescale, type.epoch, *&v399.value);
    OUTLINED_FUNCTION_105(v381);
    if ((OUTLINED_FUNCTION_850(v84, v85, v86, v87, v88, v89, v90, v91, v239, v247, v255, tagCollectionsOuta, cfa, tagCollectionb, v288, v296, v303, v310, v319, v327, v335, v343, v351, v359, v367, v374, v381, v389, rhs.value, *&rhs.timescale, rhs.epoch, v396, v397.value, *&v397.timescale, v397.epoch, type.value, *&type.timescale, type.epoch, v399.value, *&v399.timescale, v399.epoch, v400, v401[0], v401[1], v402, v403, lhs.value, *&lhs.timescale, lhs.epoch, v405, *v406, *&v406[8], *&v406[16], *&v406[24], *&v406[32], *&v406[40], *&v407, v408, *(&v408 + 1), v409, v410, v411, v412) & 0x80000000) != 0 && (CMSampleBufferGetOutputDecodeTimeStamp(&refcon, RenderingTrackofType), OUTLINED_FUNCTION_105(v380), (OUTLINED_FUNCTION_850(v92, v93, v94, v95, v96, v97, v98, v99, v238, v246, v254, tagCollectionsOut, cf, tagCollectiona, v287, *v295, *&v295[8], *&v295[16], v318, *(&v318 + 1), v334, v342, v350, v358, v366, v373, v380, v388, rhs.value, *&rhs.timescale, rhs.epoch, v396, v397.value, *&v397.timescale, v397.epoch, type.value, *&type.timescale, type.epoch, v399.value, *&v399.timescale, v399.epoch, v400, v401[0], v401[1], v402, v403, lhs.value, *&lhs.timescale, lhs.epoch, v405, *v406, *&v406[8], *&v406[16], *&v406[24], *&v406[32], *&v406[40], *&v407, v408, *(&v408 + 1), v409, v410, v411, v412) & 0x80000000) != 0) || v83 && *(v6 + 48) == v56 && !fpfs_IsVideoDependedOnByOthers(RenderingTrackofType))
    {
      CFRelease(RenderingTrackofType);
      goto LABEL_148;
    }

    if ((v373 & 1) == 0)
    {
      v414 = v399.value;
      LODWORD(v373) = v399.flags;
      LODWORD(v415) = v399.timescale;
      epoch = v399.epoch;
    }

    if (v83)
    {
      if (dword_1EAF169F0 >= 3)
      {
        v100 = epoch;
        v101 = v1;
        v102 = OUTLINED_FUNCTION_562();
        v103 = rhs.value;
        LODWORD(v56) = HIBYTE(v396);
        os_log_type_enabled(v102, HIBYTE(v396));
        OUTLINED_FUNCTION_121();
        if (v54)
        {
          v112 = v111;
        }

        else
        {
          v112 = v103;
        }

        if (v112)
        {
          v113 = v350;
          if (v350)
          {
            v113 = CMBaseObjectGetDerivedStorage();
            v114 = (v113 + 888);
          }

          else
          {
            v114 = "";
          }

          v115 = v334;
          if (v334)
          {
            v113 = CMBaseObjectGetDerivedStorage();
            v116 = (v113 + 3096);
          }

          else
          {
            v116 = "";
          }

          OUTLINED_FUNCTION_78(v113, v104, v105, v106, v107, v108, v109, v110, v238, v246, v254, tagCollectionsOut, cf, tagCollectiona, v287, *v295, *&v295[8], *&v295[16], v318, *(&v318 + 1), v334, v342, v350, v358, v366, v373, v380, v388, rhs.value, *&rhs.timescale, rhs.epoch, v396, v397.value, *&v397.timescale, v397.epoch, type.value, *&type.timescale, type.epoch, *&v399.value);
          Seconds = CMTimeGetSeconds(&refcon);
          v126 = OUTLINED_FUNCTION_485(v118, v119, v120, v121, v122, v123, v124, v125, v240, v248, v256, tagCollectionsOutb, cfb, tagCollectionc, v289, v297, v304, v311, v320, v328, v336, v344, v352, v360);
          v128 = OUTLINED_FUNCTION_532(*(v127 + 16), v241, v249, v257, tagCollectionsOutc, cfc, tagCollectiond, v290, v298, v305, v312, v321, v329, v337, v345, v353, v361, v368, v375, v382, v390, rhs.value, *&rhs.timescale, rhs.epoch, v396, v397.value, *&v397.timescale, v397.epoch, type.value, *&type.timescale, type.epoch, v399.value, *&v399.timescale, v399.epoch, v400, v401[0], v401[1], v402, v403, lhs.value, *&lhs.timescale, lhs.epoch, v405, *v406, *&v406[8], *&v406[16], *&v406[24], *&v406[32], *&v406[40], *&v407, v408, *(&v408 + 1), v409, v410, v411, v412, v413, v414, v415, v126.n128_i64[0], v126.n128_i64[1], refcon.epoch);
          LODWORD(lhs.value) = *&v295[8];
          *(&lhs.value + 4) = "fpfs_StartTrackPlaying";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = v350;
          HIWORD(lhs.epoch) = 2082;
          v405 = v114;
          *v406 = 2048;
          *&v406[2] = v115;
          *&v406[10] = 2082;
          *&v406[12] = v116;
          *&v406[20] = 2048;
          *&v406[22] = Seconds;
          *&v406[30] = 2048;
          *&v406[32] = v128;
          OUTLINED_FUNCTION_49();
          OUTLINED_FUNCTION_34();
          OUTLINED_FUNCTION_667();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v1 = v101;
        epoch = v100;
        v55 = v342;
        OUTLINED_FUNCTION_424();
      }

      fpfs_DoNotDisplay(RenderingTrackofType);
    }

    else if (!HIDWORD(v373))
    {
      if (v399.flags)
      {
        if ((v295[4] & 1) == 0)
        {
          v412 = v399.value;
          LODWORD(v413) = v399.timescale;
          tagCollectiona = v399.epoch;
          *&v295[4] = v399.flags;
        }

        OUTLINED_FUNCTION_29();
        if (v54)
        {
          OUTLINED_FUNCTION_752();
          rhs = v399;
          CMTimeAdd(&refcon, &lhs, &rhs);
          *v1 = refcon;
        }

        HIDWORD(v373) = 1;
      }

      else
      {
        HIDWORD(v373) = 0;
      }
    }

    if (v388)
    {
      refcon.value = 0;
      v129 = OUTLINED_FUNCTION_765();
      if (FigCreateReplacementAudioSBufByOmittingLeadingDependentPackets(v129, v130, v131))
      {
        v132 = refcon.value;
        if (refcon.value)
        {
          CFRetain(refcon.value);
        }

        CFRelease(RenderingTrackofType);
        if (refcon.value)
        {
          CFRelease(refcon.value);
          refcon.value = 0;
        }

        if (!v132)
        {
          LODWORD(v388) = 1;
          goto LABEL_148;
        }
      }

      else
      {
        v132 = RenderingTrackofType;
      }

      v133 = CMSampleBufferGetNumSamples(v132) == 0;
      RenderingTrackofType = v132;
    }

    else
    {
      v133 = 0;
    }

    LODWORD(v388) = v133;
    if (BYTE4(v366))
    {
      if (fpfs_IsMarkerOnly(RenderingTrackofType))
      {
        goto LABEL_147;
      }

      CMSetAttachment(RenderingTrackofType, *(&v318 + 1), v318, 1u);
    }

    HIDWORD(v366) = 0;
LABEL_147:
    v134 = fpfs_RenderBuffer(v6, RenderingTrackofType);
    *v401 = *&v399.value;
    v402 = v399.epoch;
    CFRelease(RenderingTrackofType);
    if (v134)
    {
      goto LABEL_68;
    }

LABEL_148:
    OUTLINED_FUNCTION_29();
    if (v54)
    {
      if (HIDWORD(v373))
      {
        OUTLINED_FUNCTION_78(v135, v136, v137, v138, v139, v140, v141, v142, v238, v246, v254, tagCollectionsOut, cf, tagCollectiona, v287, *v295, *&v295[8], *&v295[16], v318, *(&v318 + 1), v334, v342, v350, v358, v366, v373, v380, v388, rhs.value, *&rhs.timescale, rhs.epoch, v396, v397.value, *&v397.timescale, v397.epoch, type.value, *&type.timescale, type.epoch, *&v399.value);
        OUTLINED_FUNCTION_752();
        if (OUTLINED_FUNCTION_850(v143, v144, v145, v146, v147, v148, v149, v150, v242, v250, v258, tagCollectionsOutd, cfd, tagCollectione, v291, v299, v306, v313, v322, v330, v338, v346, v354, v362, v369, v376, v383, v391, rhs.value, *&rhs.timescale, rhs.epoch, v396, v397.value, *&v397.timescale, v397.epoch, type.value, *&type.timescale, type.epoch, v399.value, *&v399.timescale, v399.epoch, v400, v401[0], v401[1], v402, v403, lhs.value, *&lhs.timescale, lhs.epoch, v405, *v406, *&v406[8], *&v406[16], *&v406[24], *&v406[32], *&v406[40], *&v407, v408, *(&v408 + 1), v409, v410, v411, v412) >= 1)
        {
          if (dword_1EAF169F0)
          {
            v159 = OUTLINED_FUNCTION_562();
            v160 = rhs.value;
            LODWORD(RenderingTrackofType) = HIBYTE(v396);
            os_log_type_enabled(v159, HIBYTE(v396));
            OUTLINED_FUNCTION_121();
            if (v54)
            {
              LODWORD(v56) = v168;
            }

            else
            {
              LODWORD(v56) = v160;
            }

            if (v56)
            {
              v169 = v350;
              if (v350)
              {
                v169 = CMBaseObjectGetDerivedStorage();
              }

              if (v334)
              {
                v169 = CMBaseObjectGetDerivedStorage();
                v179 = (v169 + 3096);
              }

              else
              {
                v179 = "";
              }

              OUTLINED_FUNCTION_78(v169, v161, v162, v163, v164, v165, v166, v167, v238, v246, v254, tagCollectionsOut, cf, tagCollectiona, v287, *v295, *&v295[8], *&v295[16], v318, *(&v318 + 1), v334, v342, v350, v358, v366, v373, v380, v388, rhs.value, *&rhs.timescale, rhs.epoch, v396, v397.value, *&v397.timescale, v397.epoch, type.value, *&type.timescale, type.epoch, *&v399.value);
              CMTimeGetSeconds(&refcon);
              LODWORD(lhs.value) = 136316418;
              OUTLINED_FUNCTION_319("fpfs_StartTrackPlaying");
              *(v180 + 14) = v350;
              OUTLINED_FUNCTION_143();
              *(v181 + 44) = v179;
              *&v406[20] = v182;
              *(v181 + 54) = v183;
              OUTLINED_FUNCTION_49();
              OUTLINED_FUNCTION_65();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_1();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          OUTLINED_FUNCTION_630();
          goto LABEL_185;
        }
      }
    }

    RenderingTrackofType = CMBufferQueueDequeueAndRetain(*(v6 + 88));
  }

  while (RenderingTrackofType);
  OUTLINED_FUNCTION_630();
  if (!HIDWORD(v373))
  {
    goto LABEL_170;
  }

LABEL_185:
  fpfs_ChangeTrackState(v6, 6);
  if (*(v287 + 2568))
  {
    v56 = *(v6 + 448);
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      OUTLINED_FUNCTION_333();
      v184();
    }
  }

  v55 = v342;
  OUTLINED_FUNCTION_424();
LABEL_189:
  v185 = *(v287 + 1024);
  if (!v185)
  {
LABEL_192:
    OUTLINED_FUNCTION_120();
LABEL_193:
    FigSignalErrorAtGM();
    goto LABEL_68;
  }

  while (*(v185 + 32) != cf)
  {
    v185 = *(v185 + 24);
    if (!v185)
    {
      goto LABEL_192;
    }
  }

  if (*(v185 + 168) == 6 && *(v287 + 2816) > *(v287 + 2820) && FigCFEqual())
  {
    OUTLINED_FUNCTION_33();
    if (v54 || v186 == 1936684398)
    {
      if (*(v287 + 2849))
      {
        v188 = 3;
      }

      else
      {
        v188 = 2;
      }

      if (*(v287 + 2848))
      {
        v189 = v188;
      }

      else
      {
        v189 = *(v287 + 2849) != 0;
      }

      v190 = *(v287 + 1024);
      if (v190)
      {
        v191 = 0;
        do
        {
          if (*(v185 + 80) == *(v190 + 80) && *(v190 + 168) == 1)
          {
            v192 = *(v190 + 48);
            if (v192 == v56 || v192 == 1936684398)
            {
              ++v191;
            }
          }

          v190 = *(v190 + 24);
        }

        while (v190);
        v194 = v191 == 0;
      }

      else
      {
        v194 = 1;
      }

      if (v186 == v56 && *(v287 + 2664) == 0.0)
      {
        v56 = v287;
        *(v287 + 2664) = (*(v185 + 360) - *(v287 + 2656)) / 1000000000.0;
        *(v287 + 2672) = (FigGetUpTimeNanoseconds() - *(v185 + 368)) / 1000000000.0;
        *(v56 + 2680) = OUTLINED_FUNCTION_532(*(v185 + 224), v238, v246, v254, tagCollectionsOut, cf, tagCollectiona, v287, *v295, *&v295[8], *&v295[16], v318, *(&v318 + 1), v334, v342, v350, v358, v366, v373, v380, v388, rhs.value, *&rhs.timescale, rhs.epoch, v396, v397.value, *&v397.timescale, v397.epoch, type.value, *&type.timescale, type.epoch, v399.value, *&v399.timescale, v399.epoch, v400, v401[0], v401[1], v402, v403, lhs.value, *&lhs.timescale, lhs.epoch, v405, *v406, *&v406[8], *&v406[16], *&v406[24], *&v406[32], *&v406[40], *&v407, v408, *(&v408 + 1), v409, v410, v411, v412, v413, v414, v415, *(v185 + 208), *(v185 + 216), refcon.epoch);
        lhs = *(v185 + 208);
        v399 = *(v56 + 2752);
        CMTimeSubtract(&refcon, &lhs, &v399);
        *(v56 + 2800) = CMTimeGetSeconds(&refcon);
        OUTLINED_FUNCTION_424();
      }

      if (v194 && (*(v287 + 2844) & 3) == v189)
      {
        fpfsi_RTCReportingReportVariantSwitchComplete(v334, 0);
      }

      OUTLINED_FUNCTION_33();
      if (v54 || (OUTLINED_FUNCTION_63(), v54) && *(v287 + 1712))
      {
        if (*(v55 + 872) != 1 && (v195 != v56 || !*(v185 + 200)))
        {
          memset(&v399, 0, sizeof(v399));
          fpfs_GetTime(v287, &v399);
          DescriptionString = FigAlternateCreateDescriptionString(*(v185 + 456));
          if (dword_1EAF169F0)
          {
            v388 = epoch;
            RenderingTrackofType = OUTLINED_FUNCTION_551();
            LODWORD(v56) = type.value;
            if (os_log_type_enabled(RenderingTrackofType, rhs.value))
            {
              v197 = v56;
            }

            else
            {
              v197 = v56 & 0xFFFFFFFE;
            }

            if (v197)
            {
              if (v350)
              {
                v198 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v198 = "";
              }

              v384 = v198;
              v199 = v334;
              if (v334)
              {
                v200 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v200 = "";
              }

              v201 = v287;
              v56 = *(v287 + 160);
              v202 = OUTLINED_FUNCTION_532(*(v287 + 624), v238, v246, v254, tagCollectionsOut, cf, tagCollectiona, v287, *v295, *&v295[8], *&v295[16], v318, *(&v318 + 1), v334, v342, v350, v358, v366, v373, v384, v388, rhs.value, *&rhs.timescale, rhs.epoch, v396, v397.value, *&v397.timescale, v397.epoch, type.value, *&type.timescale, type.epoch, v399.value, *&v399.timescale, v399.epoch, v400, v401[0], v401[1], v402, v403, lhs.value, *&lhs.timescale, lhs.epoch, v405, *v406, *&v406[8], *&v406[16], *&v406[24], *&v406[32], *&v406[40], *&v407, v408, *(&v408 + 1), v409, v410, v411, v412, v413, v414, v415, *(v287 + 608), *(v287 + 616), refcon.epoch);
              v203 = *(v347 + 108);
              v204 = *(v201 + 840);
              OUTLINED_FUNCTION_78(v205, v206, v207, v208, v209, v210, v211, v212, v243, v251, v259, tagCollectionsOute, cfe, tagCollectionf, v292, v300, v307, v314, v323, v331, v339, v347, v355, v363, v370, v377, v385, v392, rhs.value, *&rhs.timescale, rhs.epoch, v396, v397.value, *&v397.timescale, v397.epoch, type.value, *&type.timescale, type.epoch, *&v399.value);
              v213 = CMTimeGetSeconds(&refcon);
              OUTLINED_FUNCTION_532(*(v185 + 224), v244, v252, v260, tagCollectionsOutf, cff, tagCollectiong, v293, v301, v308, v315, v324, v332, v340, v348, v356, v364, v371, v378, v386, v393, rhs.value, *&rhs.timescale, rhs.epoch, v396, v397.value, *&v397.timescale, v397.epoch, type.value, *&type.timescale, type.epoch, v399.value, *&v399.timescale, v399.epoch, v400, v401[0], v401[1], v402, v403, lhs.value, *&lhs.timescale, lhs.epoch, v405, *v406, *&v406[8], *&v406[16], *&v406[24], *&v406[32], *&v406[40], *&v407, v408, *(&v408 + 1), v409, v410, v411, v412, v413, v414, v415, *(v185 + 208), *(v185 + 216), refcon.epoch);
              LODWORD(lhs.value) = 136318210;
              OUTLINED_FUNCTION_319("fpfs_StartTrackPlaying");
              *(v214 + 14) = v350;
              HIWORD(lhs.epoch) = 2082;
              v405 = v380;
              *v406 = v215;
              *(v214 + 34) = v199;
              *&v406[10] = 2082;
              *(v214 + 44) = v200;
              *&v406[20] = 1024;
              *(v214 + 54) = v56;
              *&v406[26] = v215;
              *(v214 + 60) = v202;
              *&v406[36] = v215;
              *(v214 + 70) = v203;
              *&v406[46] = v215;
              v407 = v204;
              LOWORD(v408) = v215;
              *(v214 + 90) = v213;
              WORD5(v408) = 1024;
              HIDWORD(v408) = cf;
              LOWORD(v409) = v215;
              *(v214 + 106) = v216;
              WORD1(v410) = 2114;
              *(v214 + 116) = DescriptionString;
              OUTLINED_FUNCTION_49();
              OUTLINED_FUNCTION_23();
              _os_log_send_and_compose_impl();
              LODWORD(v56) = type.value;
            }

            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            epoch = v388;
            OUTLINED_FUNCTION_424();
          }

          if (DescriptionString)
          {
            CFRelease(DescriptionString);
          }
        }
      }
    }
  }

  if (dword_1EAF169F0)
  {
    OUTLINED_FUNCTION_655();
    v217 = OUTLINED_FUNCTION_639();
    LODWORD(RenderingTrackofType) = v399.value;
    os_log_type_enabled(v217, type.value);
    OUTLINED_FUNCTION_189();
    if (v54)
    {
      LODWORD(v56) = v218;
    }

    else
    {
      LODWORD(v56) = RenderingTrackofType;
    }

    if (v56)
    {
      v219 = v334;
      if (v334)
      {
        v220 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v220 = "";
      }

      refcon.value = v414;
      refcon.timescale = v415;
      refcon.flags = v373;
      refcon.epoch = epoch;
      v221 = CMTimeGetSeconds(&refcon);
      v222 = OUTLINED_FUNCTION_532(v402, v238, v246, v254, tagCollectionsOut, cf, tagCollectiona, v287, *v295, *&v295[8], *&v295[16], v318, *(&v318 + 1), v334, v342, v350, v358, v366, v373, v380, v388, rhs.value, *&rhs.timescale, rhs.epoch, v396, v397.value, *&v397.timescale, v397.epoch, type.value, *&type.timescale, type.epoch, v399.value, *&v399.timescale, v399.epoch, v400, v401[0], v401[1], v402, v403, lhs.value, *&lhs.timescale, lhs.epoch, v405, *v406, *&v406[8], *&v406[16], *&v406[24], *&v406[32], *&v406[40], *&v407, v408, *(&v408 + 1), v409, v410, v411, v412, v413, v414, v415, v401[0], v401[1], refcon.epoch);
      refcon.timescale = v413;
      refcon.flags = HIDWORD(v302);
      OUTLINED_FUNCTION_532(tagCollectionh, v245, v253, v261, tagCollectionsOutg, cfg, tagCollectionh, v294, v302, v309, v316, v325, v333, v341, v349, v357, v365, v372, v379, v387, v394, rhs.value, *&rhs.timescale, rhs.epoch, v396, v397.value, *&v397.timescale, v397.epoch, type.value, *&type.timescale, type.epoch, v399.value, *&v399.timescale, v399.epoch, v400, v401[0], v401[1], v402, v403, lhs.value, *&lhs.timescale, lhs.epoch, v405, *v406, *&v406[8], *&v406[16], *&v406[24], *&v406[32], *&v406[40], *&v407, v408, *(&v408 + 1), v409, v410, v411, v412, v413, v414, v415, v412, *&refcon.timescale, refcon.epoch);
      LODWORD(lhs.value) = 136316930;
      OUTLINED_FUNCTION_321();
      *(v223 + 14) = v219;
      OUTLINED_FUNCTION_511();
      v405 = v220;
      *v406 = 1024;
      *(v224 + 34) = cf;
      *&v406[6] = v225;
      *&v406[8] = v221;
      *&v406[16] = v225;
      *(v224 + 50) = v222;
      *&v406[26] = v225;
      *(v224 + 60) = v226;
      *&v406[36] = 1024;
      *(v224 + 70) = v227;
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
      LODWORD(RenderingTrackofType) = v399.value;
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524();
    OUTLINED_FUNCTION_424();
  }

  if (*(v185 + 48) == v56)
  {
    fpfsi_copyTrackFigTags(v185, &v399, v173, v174, v175, v176, v177, v178, v238, v246, v254, SBYTE2(v254), BYTE3(v254), SHIDWORD(v254), tagCollectionsOut, cf, tagCollectiona, v287, SHIDWORD(v287), *v295, *&v295[16], v318, v334, SHIDWORD(v334), v342, v350, v358, v366, v373, v380, v388, rhs.value, *&rhs.timescale, rhs.epoch, v396, v397.value, *&v397.timescale, v397.epoch, type.value, *&type.timescale, type.epoch, 0, *&v399.timescale, v399.epoch, v400, v401[0], v401[1], v402, v403, lhs.value, *&lhs.timescale, lhs.epoch, v405, *v406, *&v406[8]);
    if (!v231)
    {
      VideoLayoutLoggingStringFromCollection = FigAlternateCreateVideoLayoutLoggingStringFromCollection(v399.value);
      if (dword_1EAF169F0)
      {
        v233 = OUTLINED_FUNCTION_551();
        os_log_type_enabled(v233, rhs.value);
        OUTLINED_FUNCTION_40();
        if (RenderingTrackofType)
        {
          v234 = *(v185 + 16);
          if (v234)
          {
            CMBaseObjectGetDerivedStorage();
          }

          LODWORD(lhs.value) = 136316162;
          *(&lhs.value + 4) = "fpfsi_logFigTagDescription";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = v234;
          OUTLINED_FUNCTION_511();
          v405 = v235;
          *v406 = 1024;
          *(v237 + 34) = v236;
          *&v406[6] = 2114;
          *&v406[8] = VideoLayoutLoggingStringFromCollection;
          OUTLINED_FUNCTION_49();
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_456();
        }

        OUTLINED_FUNCTION_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (VideoLayoutLoggingStringFromCollection)
      {
        CFRelease(VideoLayoutLoggingStringFromCollection);
      }
    }

    if (v399.value)
    {
      CFRelease(v399.value);
    }
  }

  *(v185 + 488) = v412;
  *(v185 + 496) = v413;
  *(v185 + 500) = *&v295[4];
  *(v185 + 504) = tagCollectiona;
  if (HIBYTE(v403))
  {
    fpfs_PrerollTrack(v185);
  }

  if (*(v185 + 198) && !*(v185 + 128) && (*(v1 + 12) & 1) == 0)
  {
    OUTLINED_FUNCTION_133();
    fpfs_StopFeedingTrack(v228, v229, v230);
  }

LABEL_68:
  OUTLINED_FUNCTION_181();
}