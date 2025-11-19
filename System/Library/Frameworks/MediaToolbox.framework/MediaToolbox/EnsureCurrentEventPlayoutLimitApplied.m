@interface EnsureCurrentEventPlayoutLimitApplied
@end

@implementation EnsureCurrentEventPlayoutLimitApplied

void __fpic_EnsureCurrentEventPlayoutLimitApplied_block_invoke()
{
  OUTLINED_FUNCTION_193();
  v119 = *MEMORY[0x1E69E9840];
  v2 = v0[6];
  if ((*(v2 + 1052) & 1) == 0)
  {
    goto LABEL_35;
  }

  v3 = v1;
  v4 = v0;
  Count = CFArrayGetCount(*(v2 + 656));
  if (Count < 1)
  {
    goto LABEL_35;
  }

  v7 = Count;
  v8 = 0;
  v9 = *MEMORY[0x1E695E480];
  v98 = @"EndTime";
  *&v6 = 136316162;
  v90 = v6;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v4[6] + 656), v8);
    v11 = (*(v4[6] + 88))(v4[7], v4[8], ValueAtIndex);
    memset(&v109, 0, sizeof(v109));
    FigPlayerInterstitialEventGetEffectivePlayoutLimit(v11, &v109);
    if ((v109.flags & 1) == 0)
    {
      goto LABEL_5;
    }

    memset(&v108, 0, sizeof(v108));
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    lhs = *(DerivedStorage + 432);
    OUTLINED_FUNCTION_177_2(DerivedStorage);
    CMTimeAdd(&v108, &lhs, &rhs);
    v13 = OUTLINED_FUNCTION_195_1();
    PerEventTrackingCount = fpic_GetPerEventTrackingCount(v13, v14);
    v101 = PerEventTrackingCount - 1;
    if (PerEventTrackingCount < 1)
    {
      goto LABEL_5;
    }

    v16 = PerEventTrackingCount;
    v17 = 0;
    while (1)
    {
      v18 = OUTLINED_FUNCTION_195_1();
      PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(v18, v19, v17, @"PlaybackItem");
      v21 = fpic_UnwrapPlaybackItem(v4[7], PerAssetPerEventTrackedObject, v4[8]);
      if (PerAssetPerEventTrackedObject != @"DummyItem")
      {
        break;
      }

LABEL_10:
      if (v16 == ++v17)
      {
        goto LABEL_5;
      }
    }

    v22 = v21;
    fpic_GetEventItemDurationOnEventTimeline(v4[7], v4[8], ValueAtIndex, v17, &lhs);
    value = lhs.value;
    flags = lhs.flags;
    timescale = lhs.timescale;
    if (v22)
    {
      v32 = (lhs.flags & 0x1D) == 1;
    }

    else
    {
      v32 = 0;
    }

    if (!v32)
    {
      goto LABEL_5;
    }

    v85 = v3;
    epoch = lhs.epoch;
    lhs = v109;
    OUTLINED_FUNCTION_73_9(v23, v24, v25, v26, v27, v28, v29, v30, v70, v73, v76, v79, v82, v85, v90, *(&v90 + 1), v95, v98, v101, v105.value, *&v105.timescale, v105.epoch, v106, 0, 0, 0, *&v108.value);
    v34 = CMTimeSubtract(&v107, &lhs, &rhs);
    OUTLINED_FUNCTION_142_2(v34, v35, v36, v37, v38, v39, v40, v41, v71, v74, v77, v80, v83, v86, v91, v93, v96, v99, v102, v105.value, *&v105.timescale, v105.epoch, v106, *&v107.value);
    rhs.value = value;
    rhs.timescale = timescale;
    rhs.flags = flags;
    rhs.epoch = epoch;
    v42 = CMTimeCompare(&lhs, &rhs);
    if (v42 > 0)
    {
      OUTLINED_FUNCTION_73_9(v42, v43, v44, v45, v46, v47, v48, v49, v72, v75, v78, v81, v84, v87, v92, v94, v97, v100, v103, v105.value, *&v105.timescale, v105.epoch, v106, v107.value, *&v107.timescale, v107.epoch, *&v108.value);
      v105.value = value;
      v105.timescale = timescale;
      v105.flags = flags;
      v105.epoch = epoch;
      CMTimeAdd(&lhs, &rhs, &v105);
      v108 = lhs;
      v3 = v88;
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_142_2(v42, v43, v44, v45, v46, v47, v48, v49, v72, v75, v78, v81, epoch, v87, v92, v94, v97, v100, v103, v105.value, *&v105.timescale, v105.epoch, v106, *&v107.value);
    v50 = CMTimeCopyAsDictionary(&lhs, v9);
    v51 = v50;
    if (dword_1EAF178D0)
    {
      v79 = v50;
      LODWORD(v105.value) = 0;
      HIBYTE(v106) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      HIDWORD(v76) = HIBYTE(v106);
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, HIBYTE(v106));
      OUTLINED_FUNCTION_40();
      if (v16)
      {
        lhs = v107;
        Seconds = CMTimeGetSeconds(&lhs);
        lhs.value = value;
        lhs.timescale = timescale;
        lhs.flags = flags;
        lhs.epoch = v82;
        CMTimeGetSeconds(&lhs);
        LODWORD(rhs.value) = v90;
        OUTLINED_FUNCTION_132_1();
        *(&rhs.flags + 2) = v22;
        HIWORD(rhs.epoch) = 1024;
        v111 = v17;
        v112 = v54;
        v113 = Seconds;
        v114 = v54;
        v115 = v55;
        OUTLINED_FUNCTION_87();
        OUTLINED_FUNCTION_31();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
      v51 = v79;
    }

    FigBaseObject = FigPlaybackItemGetFigBaseObject(v22);
    v57 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v57)
    {
      v57(FigBaseObject, v98, v51);
    }

    v3 = v89;
    v58 = v104;
    if (v51)
    {
      CFRelease(v51);
    }

    while (v17 < v58)
    {
      v59 = OUTLINED_FUNCTION_195_1();
      v61 = fpic_GetPerAssetPerEventTrackedObject(v59, v60, v58, @"PlaybackItem");
      OUTLINED_FUNCTION_2_4();
      v63 = *(v62 + 24);
      if (!v63)
      {
        CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
        OUTLINED_FUNCTION_2_4();
        *(v65 + 24) = v64;
        OUTLINED_FUNCTION_2_4();
        v63 = *(v66 + 24);
        if (!v63)
        {
          OUTLINED_FUNCTION_374();
          v69 = FigSignalErrorAtGM();
          OUTLINED_FUNCTION_30_8(v69, v4[5]);
          goto LABEL_35;
        }
      }

      if (v61)
      {
        CFArrayAppendValue(v63, v61);
      }

      v67 = OUTLINED_FUNCTION_195_1();
      fpic_RemovePerAssetPerEventTrackedObjects(v67, v68, v58--);
    }

LABEL_5:
    ++v8;
  }

  while (v8 != v7);
LABEL_35:
  OUTLINED_FUNCTION_191();
}

@end