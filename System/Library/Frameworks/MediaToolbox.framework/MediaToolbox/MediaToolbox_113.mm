uint64_t fcSupport_CreateMutableChapterTimesArrayForTrackCommon(uint64_t a1, uint64_t a2, int a3, CFArrayRef *a4)
{
  valuePtr = 0;
  v162[0] = 0;
  v159 = 0;
  v160 = 0;
  v157 = 0;
  v158 = 0;
  memset(&v156, 0, sizeof(v156));
  memset(&v155, 0, sizeof(v155));
  v153 = 0uLL;
  epoch = 0;
  v6 = *MEMORY[0x1E6960CC0];
  *&v152.value = *MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  v152.epoch = v7;
  memset(&v151, 0, sizeof(v151));
  memset(v149, 0, sizeof(v149));
  desc = 0;
  if (!a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v13 = FigSignalErrorAtGM();
    goto LABEL_106;
  }

  *theArray = v6;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v12)
  {
    goto LABEL_72;
  }

  v13 = v12(a1, a2, v162, &valuePtr + 4);
  if (v13)
  {
    goto LABEL_106;
  }

  if (a3 == 2)
  {
    v14 = 1986618469;
  }

  else
  {
    v14 = 1952807028;
  }

  if (HIDWORD(valuePtr) != v14)
  {
    Mutable = 0;
    v25 = 0;
    goto LABEL_73;
  }

  FigBaseObject = FigTrackReaderGetFigBaseObject(v162[0]);
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    goto LABEL_72;
  }

  v17 = *MEMORY[0x1E695E480];
  v13 = v16(FigBaseObject, @"EditCursorService", *MEMORY[0x1E695E480], &v158);
  if (v13)
  {
    goto LABEL_106;
  }

  v18 = v162[0];
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v19)
  {
    goto LABEL_72;
  }

  v13 = v19(v18, &v160);
  if (v13)
  {
LABEL_106:
    v25 = v13;
    Mutable = 0;
    goto LABEL_73;
  }

  cf.start.value = 0;
  v20 = v160;
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v21)
  {
    ValueAtIndex = v21(v20, &cf) == -12842;
  }

  else
  {
    ValueAtIndex = 0;
  }

  if (cf.start.value)
  {
    CFRelease(cf.start.value);
  }

  if (ValueAtIndex)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
LABEL_19:
    OUTLINED_FUNCTION_3_54();
    *a4 = v24;
    goto LABEL_90;
  }

  v26 = v158;
  v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v27)
  {
LABEL_72:
    Mutable = 0;
    v25 = 4294954514;
    goto LABEL_73;
  }

  *&cf.start.value = *theArray;
  cf.start.epoch = v7;
  v13 = v27(v26, &cf, &v157);
  if (v13)
  {
    goto LABEL_106;
  }

  v23 = 0;
  theArray[0] = 0;
  v4 = &v151;
  Mutable = v149;
  v28 = MEMORY[0x1E695E4D0];
  if (a3 != 1)
  {
    v28 = MEMORY[0x1E695E4C0];
  }

  v115 = 821;
  v120 = *v28;
  while (1)
  {
    ValueAtIndex = v157;
    v29 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v29)
    {
LABEL_88:
      OUTLINED_FUNCTION_3_54();
LABEL_89:
      v25 = 4294954514;
      goto LABEL_90;
    }

    v30 = v29(ValueAtIndex, v149);
    if (v30)
    {
      goto LABEL_116;
    }

    if (v149[0].start.flags)
    {
      break;
    }

    v25 = 0;
LABEL_50:
    ValueAtIndex = v157;
    v71 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v71 || v71(ValueAtIndex, 1))
    {
      v24 = theArray[0];
      if (theArray[0])
      {
        dictionaryRepresentation = 0;
        ValueAtIndex = FigFormatReaderGetFigBaseObject(a1);
        v89 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v89)
        {
          v89(ValueAtIndex, @"Duration", v17, &dictionaryRepresentation);
          if (dictionaryRepresentation)
          {
            memset(&cf, 0, 24);
            memset(&time2, 0, 24);
            memset(&rhs, 0, sizeof(rhs));
            memset(&v145, 0, sizeof(v145));
            Count = CFArrayGetCount(theArray[0]);
            ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], Count - 1);
            CMTimeMakeFromDictionary(&rhs, dictionaryRepresentation);
            if (dictionaryRepresentation)
            {
              CFRelease(dictionaryRepresentation);
              dictionaryRepresentation = 0;
            }

            v91 = CFDictionaryGetValue(ValueAtIndex, @"ChapterTime");
            CMTimeMakeFromDictionary(&v145, v91);
            v92 = CFDictionaryGetValue(ValueAtIndex, @"ChapterDuration");
            CMTimeMakeFromDictionary(&time2.start, v92);
            lhs = rhs;
            start = v145;
            v93 = CMTimeSubtract(&cf.start, &lhs, &start);
            OUTLINED_FUNCTION_11_26(v93, v94, v95, v96, v97, v98, v99, v100, v110, v115, v120, value, theArray[0], theArray[1], start.value, *&start.timescale, start.epoch, v140, lhs.value, *&lhs.timescale, lhs.epoch, dictionaryRepresentation, time2.start.value, *&time2.start.timescale, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, *&cf.start.value);
            start = time2.start;
            v101 = CMTimeCompare(&lhs, &start);
            if (v101)
            {
              OUTLINED_FUNCTION_11_26(v101, v102, v103, v104, v105, v106, v107, v108, v114, v119, v124, valuec, theArrayc, theArray_8b, start.value, *&start.timescale, start.epoch, v140, lhs.value, *&lhs.timescale, lhs.epoch, dictionaryRepresentation, time2.start.value, *&time2.start.timescale, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, *&cf.start.value);
              v109 = CMTimeCopyAsDictionary(&lhs, v17);
              CFDictionarySetValue(ValueAtIndex, @"ChapterDuration", v109);
              if (v109)
              {
                CFRelease(v109);
              }
            }
          }
        }
      }

      goto LABEL_19;
    }
  }

  ValueAtIndex = v160;
  OUTLINED_FUNCTION_8_23(v30, v31, v32, v33, v34, v35, v36, v37, v110, v115, v120, value, theArray[0], theArray[1], start.value, *&start.timescale, start.epoch, v140, lhs.value, *&lhs.timescale, lhs.epoch, dictionaryRepresentation, time2.start.value, *&time2.start.timescale, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, cf.start.value, *&cf.start.timescale, cf.start.epoch, cf.duration.value, *&cf.duration.timescale, cf.duration.epoch, v145.value, *&v145.timescale, v145.epoch, v146, rhs.value, *&rhs.timescale, rhs.epoch, desc, *&v149[0].start.value);
  if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    goto LABEL_88;
  }

  *&cf.start.value = *&time2.start.value;
  cf.start.epoch = time2.start.epoch;
  OUTLINED_FUNCTION_197();
  v30 = v38();
  if (v30)
  {
    goto LABEL_116;
  }

  if (v23)
  {
LABEL_37:
    v41 = *(*(OUTLINED_FUNCTION_6_43() + 16) + 40);
    if (!v41)
    {
      goto LABEL_88;
    }

    v30 = v41(ValueAtIndex, &v156);
    if (v30)
    {
      goto LABEL_116;
    }

    v42 = *(*(OUTLINED_FUNCTION_6_43() + 16) + 56);
    if (!v42)
    {
      goto LABEL_88;
    }

    v30 = v42(ValueAtIndex, &v153);
    if (v30)
    {
      goto LABEL_116;
    }

    *&cf.start.value = *&v149[0].start.value;
    cf.start.epoch = v149[0].start.epoch;
    time2.start = v156;
    v43 = CMTimeCompare(&cf.start, &time2.start);
    if (v43 >= 1)
    {
      OUTLINED_FUNCTION_8_23(v43, v44, v45, v46, v47, v48, v49, v50, v111, v116, v121, valuea, theArraya, theArray_8, start.value, *&start.timescale, start.epoch, v140, lhs.value, *&lhs.timescale, lhs.epoch, dictionaryRepresentation, time2.start.value, *&time2.start.timescale, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, 0, 0, 0, cf.duration.value, *&cf.duration.timescale, cf.duration.epoch, v145.value, *&v145.timescale, v145.epoch, v146, rhs.value, *&rhs.timescale, rhs.epoch, desc, *&v149[0].start.value);
      rhs = v156;
      CMTimeSubtract(&cf.start, &time2.start, &rhs);
      OUTLINED_FUNCTION_12_24();
      OUTLINED_FUNCTION_13_18(cf.start.epoch, v112, v117, v122, valued, theArrayd, theArray_8c, start.value, *&start.timescale, start.epoch, v140, lhs.value, *&lhs.timescale, lhs.epoch, dictionaryRepresentation, time2.start.value, *&time2.start.timescale, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, cf.start.value, *&cf.start.timescale, cf.start.epoch, cf.duration.value, *&cf.duration.timescale, cf.duration.epoch, cf.start.value, *&cf.start.timescale, v145.epoch, v146, rhs.value);
      v153 = *&time2.start.value;
      epoch = time2.start.epoch;
    }

    OUTLINED_FUNCTION_9_27();
    time2.start = v149[1].duration;
    CMTimeAdd(&v151, &cf.start, &time2.start);
    v155 = v149[1].start;
    OUTLINED_FUNCTION_9_27();
    v59 = OUTLINED_FUNCTION_4_55(v51, v52, v53, v54, v55, v56, v57, v58, v111, v116, v121, valuea, theArraya, theArray_8, start.value, *&start.timescale, start.epoch, v140, lhs.value, *&lhs.timescale, lhs.epoch, dictionaryRepresentation, *&time2.start.value, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, cf.start.value, *&cf.start.timescale, cf.start.epoch, cf.duration.value, *&cf.duration.timescale, cf.duration.epoch, v145.value, *&v145.timescale, v145.epoch, v146, rhs.value, *&rhs.timescale, rhs.epoch, desc, v149[0].start.value, *&v149[0].start.timescale, v149[0].start.epoch, v149[0].duration.value, *&v149[0].duration.timescale, v149[0].duration.epoch, v149[1].start.value, *&v149[1].start.timescale, v149[1].start.epoch, v149[1].duration.value, *&v149[1].duration.timescale, v149[1].duration.epoch, v150, v151.value, *&v151.timescale, v151.epoch);
    valueb = v23;
    v25 = 0;
    if (v59 < 0)
    {
      while (1)
      {
        v145.value = 0;
        OUTLINED_FUNCTION_12_24();
        cf = v149[0];
        time2 = v149[1];
        CMTimeMapDurationFromRangeToRange(&v152, &rhs, &cf, &time2);
        Mutable = CFDictionaryCreateMutable(v17, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!Mutable)
        {
          v4 = 0;
          ValueAtIndex = 0;
          goto LABEL_114;
        }

        if (!theArrayb)
        {
          theArrayb = CFArrayCreateMutable(v17, 0, MEMORY[0x1E695E9C0]);
          if (!theArrayb)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_2_69();
        v4 = CMTimeCopyAsDictionary(&cf.start, v17);
        if (!v4)
        {
          ValueAtIndex = 0;
          goto LABEL_114;
        }

        cf.start = v152;
        ValueAtIndex = CMTimeCopyAsDictionary(&cf.start, v17);
        if (!ValueAtIndex)
        {
          goto LABEL_114;
        }

        cf.start = v156;
        v72 = CMTimeCopyAsDictionary(&cf.start, v17);
        if (!v72)
        {
          goto LABEL_114;
        }

        v73 = v72;
        CFDictionaryAddValue(Mutable, @"ChapterTime", v4);
        CFDictionaryAddValue(Mutable, @"ChapterDuration", ValueAtIndex);
        CFDictionaryAddValue(Mutable, @"ChapterSampleMediaPTS", v73);
        v74 = Mutable;
        if (a3 == 2)
        {
          v75 = @"ChapterImageMediaSubType";
          v76 = valueb;
        }

        else
        {
          CFDictionaryAddValue(Mutable, @"ChapterTextSubType", valueb);
          v74 = Mutable;
          v75 = @"ChapterHREF";
          v76 = v123;
        }

        CFDictionaryAddValue(v74, v75, v76);
        CFArrayAppendValue(theArrayb, Mutable);
        CFRelease(v4);
        CFRelease(ValueAtIndex);
        CFRelease(v73);
        CFRelease(Mutable);
        v77 = *(*(OUTLINED_FUNCTION_6_43() + 16) + 176);
        if (!v77 || v77(ValueAtIndex, 1, &v145) || v145.value != 1)
        {
          v23 = valueb;
          v4 = &v151;
          Mutable = v149;
          goto LABEL_44;
        }

        v78 = *(*(OUTLINED_FUNCTION_6_43() + 16) + 40);
        v23 = valueb;
        v4 = &v151;
        Mutable = v149;
        if (!v78)
        {
          goto LABEL_88;
        }

        v30 = v78(ValueAtIndex, &v156);
        if (v30)
        {
          goto LABEL_116;
        }

        v79 = *(*(OUTLINED_FUNCTION_6_43() + 16) + 56);
        if (!v79)
        {
          goto LABEL_88;
        }

        v25 = v79(ValueAtIndex, &v153);
        if (v25)
        {
          Mutable = 0;
          goto LABEL_95;
        }

        OUTLINED_FUNCTION_2_69();
        time2.start = v152;
        CMTimeAdd(&v155, &cf.start, &time2.start);
        OUTLINED_FUNCTION_2_69();
        if ((OUTLINED_FUNCTION_4_55(v80, v81, v82, v83, v84, v85, v86, v87, v113, v118, v123, valueb, theArrayb, theArray_8a, start.value, *&start.timescale, start.epoch, v140, lhs.value, *&lhs.timescale, lhs.epoch, dictionaryRepresentation, *&time2.start.value, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, cf.start.value, *&cf.start.timescale, cf.start.epoch, cf.duration.value, *&cf.duration.timescale, cf.duration.epoch, v145.value, *&v145.timescale, v145.epoch, v146, rhs.value, *&rhs.timescale, rhs.epoch, desc, v149[0].start.value, *&v149[0].start.timescale, v149[0].start.epoch, v149[0].duration.value, *&v149[0].duration.timescale, v149[0].duration.epoch, v149[1].start.value, *&v149[1].start.timescale, v149[1].start.epoch, v149[1].duration.value, *&v149[1].duration.timescale, v149[1].duration.epoch, v150, v151.value, *&v151.timescale, v151.epoch) & 0x80000000) == 0)
        {
          goto LABEL_44;
        }
      }

      v4 = 0;
      ValueAtIndex = 0;
LABEL_114:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      v25 = FigSignalErrorAtGM();
      v23 = valueb;
      goto LABEL_90;
    }

LABEL_44:
    OUTLINED_FUNCTION_2_69();
    if (OUTLINED_FUNCTION_4_55(v60, v61, v62, v63, v64, v65, v66, v67, v113, v118, v123, valueb, theArrayb, theArray_8a, start.value, *&start.timescale, start.epoch, v140, lhs.value, *&lhs.timescale, lhs.epoch, dictionaryRepresentation, *&time2.start.value, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, cf.start.value, *&cf.start.timescale, cf.start.epoch, cf.duration.value, *&cf.duration.timescale, cf.duration.epoch, v145.value, *&v145.timescale, v145.epoch, v146, rhs.value, *&rhs.timescale, rhs.epoch, desc, v149[0].start.value, *&v149[0].start.timescale, v149[0].start.epoch, v149[0].duration.value, *&v149[0].duration.timescale, v149[0].duration.epoch, v149[1].start.value, *&v149[1].start.timescale, v149[1].start.epoch, v149[1].duration.value, *&v149[1].duration.timescale, v149[1].duration.epoch, v150, v151.value, *&v151.timescale, v151.epoch) >= 1)
    {
      v68 = CFArrayGetCount(theArray[0]);
      v69 = CFArrayGetValueAtIndex(theArray[0], v68 - 1);
      *&rhs.timescale = *&v155.timescale;
      rhs.epoch = v155.epoch;
      OUTLINED_FUNCTION_13_18(v151.epoch, v110, v115, v120, value, theArray[0], theArray[1], start.value, *&start.timescale, start.epoch, v140, lhs.value, *&lhs.timescale, lhs.epoch, dictionaryRepresentation, time2.start.value, *&time2.start.timescale, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, 0, 0, 0, cf.duration.value, *&cf.duration.timescale, cf.duration.epoch, v151.value, *&v151.timescale, v145.epoch, v146, v155.value);
      rhs = v152;
      CMTimeSubtract(&cf.start, &rhs, &time2.start);
      *&time2.start.value = *&cf.start.value;
      time2.start.epoch = cf.start.epoch;
      v70 = CMTimeCopyAsDictionary(&time2.start, v17);
      CFDictionarySetValue(v69, @"ChapterDuration", v70);
      if (v70)
      {
        CFRelease(v70);
      }

      v23 = value;
    }

    if (v159)
    {
      CFRelease(v159);
      v159 = 0;
    }

    goto LABEL_50;
  }

  v39 = *(*(OUTLINED_FUNCTION_6_43() + 16) + 160);
  if (!v39)
  {
    OUTLINED_FUNCTION_3_54();
    v23 = 0;
    goto LABEL_89;
  }

  v40 = v39(ValueAtIndex, &desc);
  if (v40)
  {
    v25 = v40;
    OUTLINED_FUNCTION_3_54();
    v23 = 0;
    goto LABEL_90;
  }

  LODWORD(valuePtr) = CMFormatDescriptionGetMediaSubType(desc);
  if (desc)
  {
    CFRelease(desc);
    desc = 0;
  }

  v23 = CFNumberCreate(v17, kCFNumberSInt32Type, &valuePtr);
  if (v23)
  {
    goto LABEL_37;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_5();
  v30 = FigSignalErrorAtGM();
LABEL_116:
  v25 = v30;
  OUTLINED_FUNCTION_3_54();
LABEL_90:
  if (v4)
  {
    CFRelease(v4);
  }

  if (ValueAtIndex)
  {
    CFRelease(ValueAtIndex);
  }

  if (v23)
  {
LABEL_95:
    CFRelease(v23);
  }

LABEL_73:
  if (desc)
  {
    CFRelease(desc);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v157)
  {
    CFRelease(v157);
  }

  if (v158)
  {
    CFRelease(v158);
  }

  if (v159)
  {
    CFRelease(v159);
  }

  if (v160)
  {
    CFRelease(v160);
  }

  if (v162[0])
  {
    CFRelease(v162[0]);
  }

  return v25;
}

uint64_t FCSupport_PopulateChapterTitleDetail(uint64_t a1, uint64_t a2, uint64_t a3, CFDictionaryRef theDict)
{
  v47 = 0;
  v48[0] = 0;
  cf = 0;
  v46 = 0;
  theDicta = 0;
  valuePtr = 0;
  memset(&v42, 0, sizeof(v42));
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  if (!a1 || !a2 || !theDict)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    goto LABEL_44;
  }

  Value = CFDictionaryGetValue(theDict, @"ChapterSampleMediaPTS");
  v9 = CFDictionaryGetValue(theDict, @"ChapterTextSubType");
  v10 = 0;
  if (Value && v9)
  {
    CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
    CMTimeMakeFromDictionary(&v42, Value);
    v11 = CFDictionaryGetValue(theDict, @"ChapterHREF");
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v12)
    {
      goto LABEL_27;
    }

    v13 = v12(a1, a2, &v41, 0);
    if (v13)
    {
      goto LABEL_45;
    }

    v14 = v41;
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v15)
    {
      goto LABEL_27;
    }

    v13 = v15(v14, &v40);
    if (v13)
    {
      goto LABEL_45;
    }

    v36 = v42.value;
    VTable = CMBaseObjectGetVTable();
    v26 = *(VTable + 16);
    v25 = VTable + 16;
    if (!*(v26 + 8))
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_5_49(v25, v17, v18, v19, v20, v21, v22, v23, v24, v36);
    OUTLINED_FUNCTION_197();
    v13 = v27();
    if (v13)
    {
      goto LABEL_45;
    }

    v28 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (!v28)
    {
      goto LABEL_27;
    }

    v13 = v28(v39, v48, &v47, &v37, &v38);
    if (v13)
    {
      goto LABEL_45;
    }

    v29 = v37;
    if (v37)
    {
      goto LABEL_15;
    }

    v33 = v38;
    if (v38)
    {
      v34 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v34)
      {
        goto LABEL_27;
      }

      v13 = v34(a3, v33, 0, 0, *MEMORY[0x1E695E480], &v37);
      if (!v13)
      {
        v29 = v37;
LABEL_15:
        v30 = v47;
        v31 = v48[0];
        v32 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v32)
        {
          v13 = v32(v29, v30, v31, &cf, &v46);
          if (!v13)
          {
            if (v46 != v47)
            {
LABEL_22:
              v10 = 0;
              goto LABEL_28;
            }

            v13 = FCSupport_CopyMutableChapterFromTextSampleBBuf(cf, valuePtr, v11 == *MEMORY[0x1E695E4D0], &theDicta);
            if (!v13)
            {
              if (cf)
              {
                CFRelease(cf);
              }

              cf = 0;
              CFDictionaryRemoveValue(theDict, @"ChapterSampleMediaPTS");
              CFDictionaryRemoveValue(theDict, @"ChapterTextSubType");
              CFDictionaryRemoveValue(theDict, @"ChapterHREF");
              CFDictionaryApplyFunction(theDicta, FCSupport_copyChapterInfo, theDict);
              goto LABEL_22;
            }
          }

          goto LABEL_45;
        }

LABEL_27:
        v10 = 4294954514;
        goto LABEL_28;
      }

LABEL_45:
      v10 = v13;
      goto LABEL_28;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
LABEL_44:
    v13 = FigSignalErrorAtGM();
    goto LABEL_45;
  }

LABEL_28:
  if (v41)
  {
    CFRelease(v41);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theDicta)
  {
    CFRelease(theDicta);
  }

  return v10;
}

uint64_t FCSupport_CopyChapterImageData(uint64_t a1, uint64_t a2, uint64_t a3, CFDictionaryRef theDict, CFDataRef *a5, void *a6)
{
  v56[0] = 0;
  v54 = 0;
  v55 = 0;
  memset(&v53, 0, sizeof(v53));
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  cf = 0;
  v48 = 0;
  if (!a1 || !a3 || !theDict || !a5 || (Value = CFDictionaryGetValue(theDict, @"ChapterSampleMediaPTS")) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
LABEL_50:
    v13 = FigSignalErrorAtGM();
    goto LABEL_51;
  }

  CMTimeMakeFromDictionary(&v53, Value);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v12)
  {
    goto LABEL_35;
  }

  v13 = v12(a1, a3, &v52, 0);
  if (v13)
  {
    goto LABEL_51;
  }

  v14 = v52;
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v15)
  {
    goto LABEL_35;
  }

  v13 = v15(v14, &v51);
  if (v13)
  {
    goto LABEL_51;
  }

  v46 = v53.value;
  VTable = CMBaseObjectGetVTable();
  v26 = *(VTable + 16);
  v25 = VTable + 16;
  if (!*(v26 + 8))
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_5_49(v25, v17, v18, v19, v20, v21, v22, v23, v24, v46);
  OUTLINED_FUNCTION_197();
  v13 = v27();
  if (v13)
  {
    goto LABEL_51;
  }

  if (a6)
  {
    v28 = *(*(CMBaseObjectGetVTable() + 16) + 160);
    if (!v28)
    {
      goto LABEL_35;
    }

    v13 = v28(v50, &cf);
    if (v13)
    {
      goto LABEL_51;
    }
  }

  v29 = v50;
  v30 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v30)
  {
    goto LABEL_35;
  }

  v13 = v30(v29, v56, &v55, &v48, &v49);
  if (v13)
  {
LABEL_51:
    v42 = v13;
    goto LABEL_36;
  }

  if (v48)
  {
    v31 = *MEMORY[0x1E695E480];
    goto LABEL_19;
  }

  v43 = v49;
  if (!v49)
  {
    goto LABEL_52;
  }

  v44 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v44)
  {
LABEL_35:
    v42 = 4294954514;
    goto LABEL_36;
  }

  v31 = *MEMORY[0x1E695E480];
  v13 = v44(a2, v43, 0, 0, *MEMORY[0x1E695E480], &v48);
  if (v13)
  {
    goto LABEL_51;
  }

LABEL_19:
  v32 = MEMORY[0x19A8CC720](v31, v55, 1700248151, 0);
  if (!v32)
  {
LABEL_52:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    goto LABEL_50;
  }

  v33 = v32;
  v34 = v48;
  v35 = v55;
  v36 = v56[0];
  v37 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v37)
  {
    v42 = 4294954514;
LABEL_30:
    CFAllocatorDeallocate(v31, v33);
    goto LABEL_36;
  }

  v38 = v37(v34, v35, v36, v33, &v54);
  if (v38)
  {
LABEL_55:
    v42 = v38;
    goto LABEL_30;
  }

  if (v54 != v55 || (v39 = CFDataCreateWithBytesNoCopy(v31, v33, v54, v31)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    v38 = FigSignalErrorAtGM();
    goto LABEL_55;
  }

  v40 = v39;
  if (a6)
  {
    v41 = cf;
    if (cf)
    {
      v41 = CFRetain(cf);
    }

    *a6 = v41;
  }

  v42 = 0;
  *a5 = v40;
LABEL_36:
  if (v52)
  {
    CFRelease(v52);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v42;
}

uint64_t fcSupport_GetListOfChapterTrackIDsForMediaType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FCSupport_CopyChapterTimesForChapterGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FCSupport_CopyChapterTimesForChapterGroup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FCSupport_CopyChapterTimesForChapterGroup_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FCSupport_CopyChapterTimeRangesForChapterGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FCSupport_CopyChapterTimeRangesForChapterGroup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FCSupport_CopyChapterTimeRangesForChapterGroup_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t IFFParseByteStreamAndCreateItemInformation(char a1, const void *a2, void *a3)
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  if (a1)
  {
    LOBYTE(v13) = 1;
  }

  memset(v12, 0, sizeof(v12));
  v5 = FigAtomStreamInitWithByteStream();
  if (v5)
  {
    goto LABEL_23;
  }

  v6 = IFFParseChildAtoms(v12, 3, &IFFParseByteStreamAndCreateItemInformation_atomDispatch, &v13);
  if (!*(&v13 + 1))
  {
    v7 = v6;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  if (!*(&v13 + 1))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v5 = FigSignalErrorAtGM();
LABEL_23:
    v7 = v5;
    goto LABEL_13;
  }

  v8 = CFRetain(a2);
  v9 = *(&v13 + 1);
  *(*(&v13 + 1) + 16) = v8;
  v5 = PerformIFFItemBodyParsing(v9);
  if (v5)
  {
    goto LABEL_23;
  }

  v10 = MEMORY[0x1E695E4D0];
  if (!v14)
  {
    v10 = MEMORY[0x1E695E4C0];
  }

  v5 = IFFInformationSetTracksDetected(*(&v13 + 1), *v10);
  if (v5)
  {
    goto LABEL_23;
  }

  v7 = IFFInformationSetBrands(*(&v13 + 1), *(&v14 + 1), v15, *(&v15 + 1));
  if (!v7)
  {
    *a3 = *(&v13 + 1);
    *(&v13 + 1) = 0;
  }

LABEL_13:
  if (*(&v13 + 1))
  {
    CFRelease(*(&v13 + 1));
  }

  if (*(&v14 + 1))
  {
    CFRelease(*(&v14 + 1));
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (*(&v15 + 1))
  {
    CFRelease(*(&v15 + 1));
  }

  return v7;
}

uint64_t ParseGlobalMetaDataAtom(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (*(a2 + 8))
  {
    return 0;
  }

  memset(v7, 0, sizeof(v7));
  v3 = CheckAtomVersionIsZero();
  if (v3 || (v3 = IFFItemInformationCreate(*MEMORY[0x1E695E480], &cf), v3) || (OUTLINED_FUNCTION_11_27(), v3 = FigAtomStreamInitWithParent(), v3))
  {
    v4 = v3;
  }

  else
  {
    *(a2 + 8) = cf;
    v4 = IFFParseChildAtoms(v7, 9, &ParseGlobalMetaDataAtom_atomDispatch, a2);
    if (!v4)
    {
      return v4;
    }

    *(a2 + 8) = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t ParseGlobalMovieAtom()
{
  v1 = OUTLINED_FUNCTION_2_70();
  if (!v1 && IFFParseChildAtoms(&v3, 1, ParseGlobalMovieAtom_atomDispatch, v0))
  {
    *(v0 + 16) = 0;
  }

  return v1;
}

uint64_t IFFParseChildAtoms(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = 0;
  v9 = 0;
  v10 = (a3 + 8);
  while (2)
  {
    result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (result)
    {
      return result;
    }

    if (a2 < 1)
    {
      v20 = 0;
      v21 = 1;
      goto LABEL_22;
    }

    v12 = v5;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = v10;
    v17 = v10;
    while (1)
    {
      v18 = *(v17 - 1);
      if ((v18 & 4) != 0)
      {
        if (*v17)
        {
          v9 = *v17;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_14;
      }

      if (!*(v17 - 2))
      {
        break;
      }

LABEL_14:
      ++v15;
      v17 += 4;
      v16 += 4;
      if (a2 == v15)
      {
        goto LABEL_18;
      }
    }

    v19 = 1 << v15;
    if ((v18 & 1) != 0 && (v8 & v19) != 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      return FigSignalErrorAtGM();
    }

    v8 |= v19;
    result = (*v17)(a1, a4);
    v14 = 1;
    if (result == 1717723499)
    {
      v13 = 1;
      goto LABEL_14;
    }

    if (result == 1937010544)
    {
      result = 0;
      goto LABEL_34;
    }

    if (result)
    {
      return result;
    }

LABEL_18:
    v20 = v13 != 0;
    v21 = v14 == 0;
    v5 = v12;
    if (v13 && !v9)
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }

LABEL_22:
    if (!v20 && !v21 || !v9)
    {
LABEL_26:
      result = FigAtomStreamAdvanceToNextAtom();
      v22 = result;
      v23 = result == -12890;
      if (result == -12890)
      {
        result = 0;
      }

      else
      {
        result = result;
      }

      if (v23)
      {
        goto LABEL_34;
      }

      if (result)
      {
        result = v22;
        goto LABEL_34;
      }

      continue;
    }

    break;
  }

  result = v9(a1, a4);
  if (result == 1937010544)
  {
    result = 0;
LABEL_34:
    if (a2 >= 1)
    {
      v24 = 0;
      v25 = (a3 + 4);
      do
      {
        v26 = *v25;
        v25 += 16;
        if ((v26 & 2) != 0 && ((v8 >> v24) & 1) == 0)
        {
          OUTLINED_FUNCTION_178();
          fig_log_get_emitter();
          result = FigSignalErrorAtGM();
        }

        ++v24;
      }

      while (a2 != v24);
    }

    return result;
  }

  if (!result)
  {
    goto LABEL_26;
  }

  return result;
}

uint64_t PerformIFFItemBodyParsing(uint64_t result)
{
  v83[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    ItemCount = IFFInformationGetItemCount(result);
    if (ItemCount >= 1)
    {
      v2 = 0;
      v72 = v1;
      do
      {
        v76 = 0;
        v75 = 0;
        result = IFFInformationGetItemAtIndex(v1, v2, &v76, 0, 0);
        if (result)
        {
          return result;
        }

        result = IFFInformationGetItemType(v76, &v75);
        if (result)
        {
          return result;
        }

        switch(v75)
        {
          case 1165519206:
            v41 = v76;
            v42 = v1[2];
            v77 = 0;
            OUTLINED_FUNCTION_29_13();
            OUTLINED_FUNCTION_15_22();
            ItemExtents = IFFInformationGetItemExtents(v41, v43, v44, v45, v46, v47);
            if (ItemExtents)
            {
              goto LABEL_80;
            }

            OUTLINED_FUNCTION_25_16();
            if (v18 == v19)
            {
              v71 = v41;
              v48 = v1;
              v49 = 0;
              v50 = &v81;
              v51 = 1;
              v52 = 4;
              while (1)
              {
                v53 = v80;
                v54 = v82;
                v55 = *(v78 + v49);
                v56 = *(v78 + v49 + 8) >= v52 ? v52 : *(v78 + v49 + 8);
                v83[0] = 0;
                v57 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (!v57)
                {
                  break;
                }

                if (v57(v42, v56, v54 + v53 + v55, v50, v83) || v83[0] != v56)
                {
                  break;
                }

                v50 = (v50 + v56);
                v52 -= v56;
                if (v52)
                {
                  v59 = v79 <= v51;
                }

                else
                {
                  v59 = 1;
                }

                ++v51;
                v49 += 16;
                if (v59)
                {
                  v1 = v48;
                  if (v52)
                  {
                    goto LABEL_94;
                  }

                  v60 = bswap32(v81);
                  v61 = v60;
                  if (v81)
                  {
                    v61 = v60;
                    if (v79 >= 1)
                    {
                      v62 = (v78 + 8);
                      v63 = 1;
                      v61 = v60;
                      do
                      {
                        v64 = *v62;
                        v62 += 2;
                        v34 = v61 >= v64;
                        v61 -= v64;
                        v65 = v61 != 0 && v34;
                        if (!v34)
                        {
                          v61 = 0;
                        }
                      }

                      while (v65 && v79 > v63++);
                    }
                  }

                  v2 = v74;
                  if (!v61)
                  {
                    ItemExtents = IFFInformationSetItemBodyImageExifPayload(v71, v60);
                    goto LABEL_80;
                  }

                  goto LABEL_79;
                }
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_75();
              v2 = v74;
              v1 = v48;
              if (FigSignalErrorAtGM())
              {
                goto LABEL_89;
              }

              break;
            }

LABEL_94:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_75();
            v2 = v74;
            if (FigSignalErrorAtGM())
            {
              goto LABEL_89;
            }

            break;
          case 1953325424:
            v32 = v76;
            CFGetAllocator(v1);
            v81 = 0;
            v79 = 0;
            v80 = 0;
            v78 = 0;
            v83[0] = 0;
            ItemExtents = IFFInformationGetItemExtents(v32, &v81, &v80, &v79, &v78, v83);
            if (!ItemExtents)
            {
              if (v78 >= 1)
              {
                do
                {
                  OUTLINED_FUNCTION_36_10();
                }

                while (!v34 && v33 != 1);
              }

              goto LABEL_79;
            }

LABEL_80:
            if (!ItemExtents)
            {
              break;
            }

LABEL_89:
            *(v76 + 16) = 0;
            break;
          case 1768912492:
            v35 = v76;
            CFGetAllocator(v1);
            OUTLINED_FUNCTION_29_13();
            OUTLINED_FUNCTION_15_22();
            ItemExtents = IFFInformationGetItemExtents(v35, 0, v36, v37, v38, v39);
            if (!ItemExtents)
            {
              if (v79 >= 1)
              {
                do
                {
                  OUTLINED_FUNCTION_36_10();
                }

                while (!v34 && v40 != 1);
              }

              goto LABEL_79;
            }

            goto LABEL_80;
          case 1735551332:
            v3 = v76;
            v4 = CFGetAllocator(v1);
            v81 = 0;
            OUTLINED_FUNCTION_29_13();
            OUTLINED_FUNCTION_15_22();
            ItemExtents = IFFInformationGetItemExtents(v3, v5, v6, v7, v8, v9);
            if (!ItemExtents)
            {
              v11 = v79;
              if (v79 >= 1)
              {
                v12 = 0;
                v13 = (v78 + 8);
                do
                {
                  v14 = *v13;
                  v13 += 2;
                  v15 = v14 + v12;
                  if (v12 >= v14 + v12)
                  {
                    goto LABEL_79;
                  }

                  v12 = v15;
                  --v11;
                }

                while (v11);
                if (v15 <= 1)
                {
                  goto LABEL_79;
                }

                v16 = v15 >= 0xC ? 12 : v15;
                OUTLINED_FUNCTION_8_24();
                if (!v17)
                {
                  goto LABEL_79;
                }

                v69 = v3;
                v70 = v17;
                OUTLINED_FUNCTION_25_16();
                if (v18 == v19)
                {
                  v20 = 0;
                  v21 = 1;
                  v22 = v70;
                  while (1)
                  {
                    v23 = v16 >= *(v78 + v20 + 8) ? *(v78 + v20 + 8) : v16;
                    v83[0] = 0;
                    if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
                    {
                      break;
                    }

                    v24 = OUTLINED_FUNCTION_23_21();
                    if (v25(v24) || v83[0] != v23)
                    {
                      break;
                    }

                    if (v21 < v79)
                    {
                      v22 = (v22 + v23);
                      ++v21;
                      v20 += 16;
                      v16 -= v23;
                      if (v16)
                      {
                        continue;
                      }
                    }

                    goto LABEL_33;
                  }

                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0_75();
                  v67 = FigSignalErrorAtGM();
                  v27 = v70;
                  v1 = v72;
LABEL_83:
                  v2 = v74;
LABEL_88:
                  CFAllocatorDeallocate(v4, v27);
                  if (!v67)
                  {
                    break;
                  }

                  goto LABEL_89;
                }

LABEL_33:
                v27 = v70;
                if (*v70)
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0_75();
                  v67 = FigSignalErrorAtGM();
                  v1 = v72;
                  goto LABEL_83;
                }

                v1 = v72;
                v2 = v74;
                if (*(v70 + 1))
                {
                  if (v15 <= 0xB)
                  {
                    goto LABEL_99;
                  }

                  v28 = *(v70 + 2);
                  v29 = *(v70 + 3);
                  v30 = bswap32(v70[1]);
                  v31 = bswap32(v70[2]);
LABEL_86:
                  v68 = IFFInformationSetItemBodyImageDerivationGrid(v69, v29 + 1, v28 + 1, v30, v31);
                }

                else
                {
                  if (v15 > 7)
                  {
                    v28 = *(v70 + 2);
                    v29 = *(v70 + 3);
                    v30 = bswap32(*(v70 + 2)) >> 16;
                    v31 = bswap32(*(v70 + 3)) >> 16;
                    goto LABEL_86;
                  }

LABEL_99:
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0_75();
                  v68 = FigSignalErrorAtGM();
                }

                v67 = v68;
                goto LABEL_88;
              }

LABEL_79:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_75();
              ItemExtents = FigSignalErrorAtGM();
            }

            goto LABEL_80;
        }

        ++v2;
      }

      while (v2 != ItemCount);
    }

    return 0;
  }

  return result;
}

uint64_t IFFParseMetaAtomStreamAndCreateItemInformation()
{
  v4 = 0u;
  v5 = 0u;
  *cf = 0u;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!CurrentAtomTypeAndDataLength)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    CurrentAtomTypeAndDataLength = FigSignalErrorAtGM();
  }

  v2 = CurrentAtomTypeAndDataLength;
  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  return v2;
}

uint64_t IFFParseFileTypeAtom(uint64_t a1)
{
  if (*(a1 + 64) != 1718909296 || (OUTLINED_FUNCTION_613(), result = FigAtomStreamReadCurrentAtomDataAndCreateBBuf(), !result) && (OUTLINED_FUNCTION_613(), result = CMBlockBufferGetDataPointer(v2, v3, v4, v5, v6), !result))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t ParseGlobalMetaDataIFFHandlerAtom()
{
  OUTLINED_FUNCTION_187();
  result = CheckAtomVersionIsZero();
  if (!result)
  {
    result = FigAtomStreamReadCurrentAtomData();
    if (!result)
    {
      return IFFInformationSetItemHandler(*(v0 + 8), bswap32(0));
    }
  }

  return result;
}

uint64_t ParseGlobalMetaDataPrimaryItemAtom()
{
  OUTLINED_FUNCTION_187();
  result = FigAtomStreamGetCurrentAtomVersionAndFlags();
  if (!result)
  {
    result = FigAtomStreamReadCurrentAtomData();
    if (!result)
    {
      return IFFInformationSetPrimaryItemID(*(v0 + 8), bswap32(0) >> 16);
    }
  }

  return result;
}

uint64_t ParseGlobalMetaDataIFFDataInfoAtom()
{
  result = OUTLINED_FUNCTION_2_70();
  if (!result)
  {
    return IFFParseChildAtoms(&v2, 1, ParseGlobalMetaDataIFFDataInfoAtom_atomDispatch, v0);
  }

  return result;
}

uint64_t ParseGlobalMetaDataItemInfoAtom(uint64_t a1, uint64_t a2)
{
  v51[16] = *MEMORY[0x1E69E9840];
  v49 = 0;
  v48 = 0;
  __s = 0;
  cf = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength)
  {
    goto LABEL_63;
  }

  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomVersionAndFlags();
  if (CurrentAtomTypeAndDataLength)
  {
    goto LABEL_63;
  }

  v4 = v48;
  v5 = v48 >= 2u;
  *(*(a2 + 8) + 176) &= v48 < 2u;
  if (v5)
  {
    LODWORD(v31) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = v48;
  }

  if (!v4)
  {
    LOWORD(v51[0]) = 0;
    OUTLINED_FUNCTION_11_27();
    CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomData();
    if (!CurrentAtomTypeAndDataLength)
    {
      OUTLINED_FUNCTION_10_28();
      v42 = v7;
      goto LABEL_11;
    }

LABEL_63:
    v8 = CurrentAtomTypeAndDataLength;
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_11_27();
  CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomData();
  if (CurrentAtomTypeAndDataLength)
  {
    goto LABEL_63;
  }

  v42 = bswap32(v42);
LABEL_11:
  v8 = FigAtomStreamInitWithParent();
  if (!v8 && v42)
  {
    while (1)
    {
      HIDWORD(v34) = 0;
      BYTE3(v34) = 0;
      v33 = 0;
      v51[0] = 0;
      HIWORD(v32) = 0;
      LODWORD(v32) = 0;
      CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
      if (CurrentAtomTypeAndDataLength)
      {
        goto LABEL_63;
      }

      if (HIDWORD(v34) == 1768842853)
      {
        CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomVersionAndFlags();
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_63;
        }

        if ((BYTE3(v34) & 0xFE) != 2)
        {
          goto LABEL_62;
        }

        if (BYTE3(v34) == 2)
        {
          LOWORD(v50[0]) = 0;
          CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomData();
          if (CurrentAtomTypeAndDataLength)
          {
            goto LABEL_63;
          }

          OUTLINED_FUNCTION_10_28();
          LODWORD(v33) = v9;
          v10 = 6;
        }

        else
        {
          CurrentAtomTypeAndDataLength = OUTLINED_FUNCTION_33_11();
          if (CurrentAtomTypeAndDataLength)
          {
            goto LABEL_63;
          }

          LODWORD(v33) = bswap32(v33);
          v10 = 8;
        }

        CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomData();
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_63;
        }

        v11 = HIWORD(v32);
        HIWORD(v32) = __rev16(HIWORD(v32));
        if (v11)
        {
LABEL_62:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          CurrentAtomTypeAndDataLength = FigSignalErrorAtGM();
          goto LABEL_63;
        }

        CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomData();
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_63;
        }

        v15 = bswap32(v32);
        LODWORD(v32) = v15;
        IFFInformationAddItemWithType(*(a2 + 8), v15, v33, v51, &v43, v12, v13, v14, v27, v28, v29, *type, v31, v32, v33, v34, v35, *(&v35 + 1), v36, *(&v36 + 1));
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_63;
        }

        if (v32 == 1970432288 || v32 == 1835625829)
        {
          v17 = v10 + 6;
          if (v49 > v17)
          {
            v50[0] = 0;
            *type = 0;
            v31 = 0;
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            v18 = v44;
            if (v44)
            {
              v44 = 0;
              free(v18);
            }

            v19 = __s;
            if (__s)
            {
              __s = 0;
              free(v19);
            }

            v20 = v45;
            if (v45)
            {
              v45 = 0;
              free(v20);
            }

            CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
            if (CurrentAtomTypeAndDataLength)
            {
              goto LABEL_63;
            }

            CurrentAtomTypeAndDataLength = OUTLINED_FUNCTION_26_17(cf, v21, &v31, v22, v50);
            if (CurrentAtomTypeAndDataLength)
            {
              goto LABEL_63;
            }

            CurrentAtomTypeAndDataLength = copyNullTerminatedStringAndAdvanceBuffer(v50, &v31, &v44, 0, type);
            if (CurrentAtomTypeAndDataLength)
            {
              goto LABEL_63;
            }

            v23 = *type;
            CurrentAtomTypeAndDataLength = IFFInformationSetItemName(v51[0], v44, 0);
            if (CurrentAtomTypeAndDataLength)
            {
              goto LABEL_63;
            }

            CurrentAtomTypeAndDataLength = copyNullTerminatedStringAndAdvanceBuffer(v50, &v31, &__s, 0, type);
            if (CurrentAtomTypeAndDataLength)
            {
              goto LABEL_63;
            }

            if (v32 != 1835625829)
            {
              goto LABEL_50;
            }

            if (v23 + v17 + *type >= v49)
            {
              goto LABEL_47;
            }

            CurrentAtomTypeAndDataLength = copyNullTerminatedStringAndAdvanceBuffer(v50, &v31, &v45, 0, type);
            if (CurrentAtomTypeAndDataLength)
            {
              goto LABEL_63;
            }

            if (v32 == 1835625829)
            {
LABEL_47:
              v24 = IFFInformationSetItemMIMETypeAndEncoding(v51[0], __s, v45);
            }

            else
            {
LABEL_50:
              v24 = IFFInformationSetItemURIType(v51[0], __s, 0);
            }

            v8 = v24;
            if (v24)
            {
              break;
            }
          }
        }

        if ((v33 & 0x100000000) == 0)
        {
          CurrentAtomTypeAndDataLength = IFFInformationSetItemDisplayable(v51[0], 1);
          if (CurrentAtomTypeAndDataLength)
          {
            goto LABEL_63;
          }
        }
      }

      v25 = v42;
      if (v42 >= 2)
      {
        if (FigAtomStreamAdvanceToNextAtom())
        {
          goto LABEL_62;
        }

        v25 = v42;
      }

      v42 = v25 - 1;
      if (v25 == 1)
      {
        v8 = 0;
        break;
      }
    }
  }

LABEL_59:
  if (cf)
  {
    CFRelease(cf);
  }

  free(v44);
  free(__s);
  free(v45);
  return v8;
}

void ParseGlobalMetaDataItemLocationAtom(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v48 = 0;
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  LOWORD(v40) = 0;
  v39 = 0;
  HIBYTE(v38) = 0;
  if (FigAtomStreamGetCurrentAtomVersionAndFlags())
  {
    return;
  }

  if (HIBYTE(v38) >= 2u)
  {
    if (HIBYTE(v38) != 2)
    {
LABEL_66:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      goto LABEL_67;
    }

    OUTLINED_FUNCTION_11_27();
    if (FigAtomStreamReadCurrentAtomData())
    {
      return;
    }

    v6 = bswap32(*&v46[4]) >> 16;
    v4 = bswap32(*&v46[6]);
    v7 = 10;
  }

  else
  {
    OUTLINED_FUNCTION_11_27();
    if (FigAtomStreamReadCurrentAtomData())
    {
      return;
    }

    OUTLINED_FUNCTION_10_28();
    v4 = bswap32(HIWORD(v47)) >> 16;
    v6 = v5 & 0xFFF0;
    v7 = 8;
  }

  v8 = v6 >> 12;
  if (v8 > 8 || ((1 << v8) & 0x111) == 0)
  {
    goto LABEL_66;
  }

  v10 = (v6 >> 8) & 0xF;
  if (v10 != 4 && v10 != 8)
  {
    goto LABEL_66;
  }

  if ((v6 & 0xF) != 0)
  {
    goto LABEL_66;
  }

  v12 = v6 >> 4;
  if ((v6 & 0xB0) != 0 && v12 != 8)
  {
    goto LABEL_66;
  }

  if (!v4)
  {
    return;
  }

  v30 = v2;
  if (v8 == 4)
  {
    v13 = (&v36 + 4);
  }

  else
  {
    v13 = &v35;
  }

  v34 = v13;
  HIDWORD(v31) = v6 >> 4;
  while (1)
  {
    v37 = 0;
    if (HIBYTE(v38) == 2)
    {
      OUTLINED_FUNCTION_178();
      if (FigAtomStreamReadCurrentAtomData())
      {
        return;
      }

      v7 += 8;
      v15 = bswap32(v43);
      v16 = BYTE5(v43);
      goto LABEL_34;
    }

    if (HIBYTE(v38) == 1)
    {
      OUTLINED_FUNCTION_178();
      if (FigAtomStreamReadCurrentAtomData())
      {
        return;
      }

      v7 += 6;
      v15 = bswap32(v44) >> 16;
      v16 = HIBYTE(v44);
LABEL_34:
      v14 = v16 & 0xF;
      goto LABEL_36;
    }

    if (HIBYTE(v38))
    {
      v15 = 0;
      v14 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_178();
      if (FigAtomStreamReadCurrentAtomData())
      {
        return;
      }

      v14 = 0;
      v7 += 4;
      v15 = bswap32(*v46) >> 16;
    }

LABEL_36:
    if (v12 == 8)
    {
      break;
    }

    if (v12 == 4)
    {
      HIDWORD(v33) = v14;
      OUTLINED_FUNCTION_178();
      if (FigAtomStreamReadCurrentAtomData())
      {
        return;
      }

      v7 += 6;
      OUTLINED_FUNCTION_10_28();
      v17 = bswap32(v41);
      goto LABEL_47;
    }

    if (!v12)
    {
      HIDWORD(v33) = v14;
      OUTLINED_FUNCTION_178();
      if (FigAtomStreamReadCurrentAtomData())
      {
        return;
      }

      v17 = 0;
      v7 += 2;
LABEL_46:
      OUTLINED_FUNCTION_10_28();
LABEL_47:
      v14 = HIDWORD(v33);
      goto LABEL_49;
    }

    v18 = 0;
    v17 = 0;
LABEL_49:
    if (v14 >= 2)
    {
      goto LABEL_69;
    }

    v19 = v4;
    v20 = v18;
    IFFInformationReserveItemExtentTable(*(v32 + 8), v15, v14, v17, v18, &v37, &v48, v3, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
    if (!v21)
    {
      if (v20)
      {
        v22 = 0;
        v23 = v17 ^ 0x7FFFFFFFFFFFFFFFLL;
        v24 = 16 * v20;
        do
        {
          HIDWORD(v36) = 0;
          v35 = 0;
          if (v6 >= 0x1000)
          {
            OUTLINED_FUNCTION_178();
            if (FigAtomStreamReadCurrentAtomData())
            {
              return;
            }

            OUTLINED_FUNCTION_35_9();
            if (v8 != 4)
            {
              v25 = v26;
            }

            *(v37 + v22) = v25;
            if (v23 < v25)
            {
              goto LABEL_69;
            }

            v7 += v8;
          }

          else
          {
            *(v37 + v22) = 0;
          }

          OUTLINED_FUNCTION_178();
          if (FigAtomStreamReadCurrentAtomData())
          {
            return;
          }

          v7 += v10;
          OUTLINED_FUNCTION_35_9();
          if (v10 != 4)
          {
            v27 = v28;
          }

          *(v37 + v22 + 8) = v27;
          v22 += 16;
        }

        while (v24 != v22);
      }

      v4 = v19 - 1;
      v12 = HIDWORD(v31);
      if (v4)
      {
        continue;
      }
    }

    return;
  }

  HIDWORD(v33) = v14;
  OUTLINED_FUNCTION_178();
  if (FigAtomStreamReadCurrentAtomData())
  {
    return;
  }

  v17 = bswap64(v39);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v7 += 10;
    goto LABEL_46;
  }

LABEL_69:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
LABEL_67:
  FigSignalErrorAtGM();
}

void ParseGlobalMetaDataIFFItemReferenceAtom(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  OUTLINED_FUNCTION_32_11();
  if (!FigAtomStreamGetCurrentAtomVersionAndFlags())
  {
    if (v24 >= 2u)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM();
    }

    else
    {
      OUTLINED_FUNCTION_11_27();
      if (!FigAtomStreamInitWithParent())
      {
        do
        {
          v15 = 0;
          HIWORD(v14) = 0;
          v13 = 0;
          if (FigAtomStreamGetCurrentAtomTypeAndDataLength())
          {
            break;
          }

          if (v24)
          {
            if (OUTLINED_FUNCTION_39_10())
            {
              return;
            }

            LODWORD(v15) = bswap32(v15);
            v3 = 4;
          }

          else
          {
            WORD2(v12) = 0;
            if (FigAtomStreamReadCurrentAtomData())
            {
              return;
            }

            OUTLINED_FUNCTION_10_28();
            LODWORD(v15) = v4;
            v3 = 2;
          }

          if (FigAtomStreamReadCurrentAtomData())
          {
            break;
          }

          v7 = bswap32(HIWORD(v14));
          HIWORD(v14) = HIWORD(v7);
          IFFInformationReserveItemReferenceTable(*(a2 + 8), v15, HIDWORD(v15), HIWORD(v7), &v13, &v24 + 1, v5, v6, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
          if (v8)
          {
            break;
          }

          if (HIWORD(v14))
          {
            v9 = 0;
            v10 = v3 + 2;
            do
            {
              HIDWORD(v12) = 0;
              if (v24)
              {
                if (FigAtomStreamReadCurrentAtomData())
                {
                  return;
                }

                v10 += 4;
                v11 = bswap32(0);
              }

              else
              {
                WORD1(v12) = 0;
                if (FigAtomStreamReadCurrentAtomData())
                {
                  return;
                }

                v10 += 2;
                OUTLINED_FUNCTION_10_28();
              }

              *(v13 + 4 * v9++) = v11;
            }

            while (v9 < HIWORD(v14));
          }
        }

        while (!FigAtomStreamAdvanceToNextAtom());
      }
    }
  }
}

uint64_t ParseGlobalMetaDataItemPropertiesAtom()
{
  result = OUTLINED_FUNCTION_2_70();
  if (!result)
  {
    return IFFParseChildAtoms(&v2, 2, &ParseGlobalMetaDataItemPropertiesAtom_atomDispatch, v0);
  }

  return result;
}

uint64_t ParseGlobalMetaDataItemDataAtom(uint64_t a1, uint64_t a2)
{
  result = FigAtomStreamGetCurrentAtomDataGlobalOffset();
  if (!result)
  {
    return IFFInformationSetItemDataOffset(*(a2 + 8), 0);
  }

  return result;
}

uint64_t ParseGlobalMetaDataGroupsListAtom()
{
  result = OUTLINED_FUNCTION_2_70();
  if (!result)
  {
    return IFFParseChildAtoms(&v2, 4, ParseGlobalMetaDataGroupsListAtom_atomDispatch, v0);
  }

  return result;
}

uint64_t ParseGlobalMetaDataDataRefAtom()
{
  OUTLINED_FUNCTION_32_11();
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t copyNullTerminatedStringAndAdvanceBuffer(_BYTE **a1, size_t *a2, void *a3, CFStringRef *a4, size_t *a5)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  result = 4294954516;
  if (a1)
  {
    if (a2)
    {
      v11 = *a1;
      if (*a1)
      {
        v12 = *a2;
        if (!*a2)
        {
          return 0;
        }

        if (*v11)
        {
          v13 = 1;
          while (1)
          {
            v14 = v13;
            if (v12 == v13)
            {
              break;
            }

            ++v13;
            if (!v11[v14])
            {
              v15 = v14;
              goto LABEL_18;
            }
          }

          v15 = *a2;
LABEL_18:
          v16 = v14 < v12;
          if (a3)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v15 = 0;
          v16 = 1;
          if (a3)
          {
LABEL_19:
            v17 = malloc_type_malloc(v15 + 1, 0x813B6D98uLL);
            if (!v17)
            {
LABEL_28:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_2();

              return FigSignalErrorAtGM();
            }

            v18 = v17;
            memcpy(v17, v11, v15);
            v18[v15] = 0;
            *a3 = v18;
            if (!a4)
            {
LABEL_23:
              v20 = v15 + v16;
              if (a5)
              {
                *a5 = v20;
              }

              result = 0;
              *a1 = &v11[v20];
              *a2 = v12 - v20;
              return result;
            }

LABEL_21:
            v19 = CFStringCreateWithBytes(0, v11, v15, 0x8000100u, 0);
            if (v19)
            {
              *a4 = v19;
              goto LABEL_23;
            }

            goto LABEL_28;
          }
        }

        if (!a4)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }
    }
  }

  return result;
}

uint64_t ParseGlobalMetaDataIFFItemPropertyContainerAtom()
{
  result = OUTLINED_FUNCTION_2_70();
  if (!result)
  {
    return IFFParseChildAtoms(&v2, 26, ParseGlobalMetaDataIFFItemPropertyContainerAtom_atomDispatch, v0);
  }

  return result;
}

void ParseGlobalMetaDataIFFItemPropertyAssociationAtom()
{
  OUTLINED_FUNCTION_187();
  if (!FigAtomStreamGetCurrentAtomVersionAndFlags())
  {
    OUTLINED_FUNCTION_33_11();
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyCodecConfiguration()
{
  OUTLINED_FUNCTION_27_13();
  HIDWORD(v17) = 0;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!CurrentAtomTypeAndDataLength)
  {
    OUTLINED_FUNCTION_38_10();
    OUTLINED_FUNCTION_613();
    CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
    if (!CurrentAtomTypeAndDataLength)
    {
      OUTLINED_FUNCTION_613();
      CurrentAtomTypeAndDataLength = CMBlockBufferGetDataPointer(v9, v10, v11, 0, v12);
      if (!CurrentAtomTypeAndDataLength)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        CurrentAtomTypeAndDataLength = FigSignalErrorAtGM();
      }
    }
  }

  v13 = OUTLINED_FUNCTION_37_10(CurrentAtomTypeAndDataLength, v2, v3, v4, v5, v6, v7, v8, v16, 0, 0, v17, v18);
  if (v13)
  {
    CFRelease(v13);
  }

  OUTLINED_FUNCTION_13_19();
  if (v14)
  {
    return v0;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyImageSpatialExtents(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (!CheckAtomVersionIsZero())
  {
    OUTLINED_FUNCTION_11_27();
    if (!FigAtomStreamReadCurrentAtomData())
    {
      v5 = vrev32_s8(0);
      if ((vorr_s8(v5, vdup_lane_s32(v5, 1)).u32[0] & 0x80000000) != 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM();
      }

      else if (!IFFInformationReserveSharedItemProperty(*(a2 + 8), 2, &v6, 0))
      {
        IFFInformationSetItemPropertySpatialExtents(v6, v5.i32[0], v5.i32[1]);
      }
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v4)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyPixelAspectRatio(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (!FigAtomStreamReadCurrentAtomData())
  {
    v6 = vrev32_s8(0);
    v3 = *(a2 + 8);
    *(v3 + 176) &= vceq_s32(0, vdup_lane_s32(0, 1)).u8[0] & 1;
    if (!IFFInformationReserveSharedItemProperty(v3, 3, &v7, 0))
    {
      IFFInformationSetItemPropertySpatialExtents(v7, v6.i32[0], v6.i32[1]);
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v5)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyPixelInformation()
{
  OUTLINED_FUNCTION_27_13();
  count_1 = 0;
  v16 = 0;
  HIBYTE(v14) = 0;
  CurrentAtomData = CheckAtomVersionIsZero();
  if (!CurrentAtomData)
  {
    CurrentAtomData = FigAtomStreamReadCurrentAtomData();
    if (!CurrentAtomData)
    {
      OUTLINED_FUNCTION_38_10();
      CurrentAtomData = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
      if (!CurrentAtomData)
      {
        CurrentAtomData = OUTLINED_FUNCTION_26_17(v17, v3, &v16, v5, &count_1);
        if (!CurrentAtomData)
        {
          if (v16 && count_1)
          {
            CurrentAtomData = IFFInformationReserveSharedItemProperty(*(v0 + 8), 14, v18, 0);
            if (!CurrentAtomData)
            {
              CurrentAtomData = IFFInformationSetItemPropertyPixelInformation(*v18, 0, count_1);
            }
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_4();
            CurrentAtomData = FigSignalErrorAtGM();
          }
        }
      }
    }
  }

  v10 = OUTLINED_FUNCTION_37_10(CurrentAtomData, v3, v4, v5, v6, v7, v8, v9, v13, v14, count_1, v16, v17);
  if (v10)
  {
    CFRelease(v10);
  }

  OUTLINED_FUNCTION_13_19();
  if (v11)
  {
    return v1;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyColorInformation()
{
  v24 = 0;
  *v25 = 0;
  v22 = 0;
  v23 = 0;
  HIDWORD(v21) = 0;
  *(&v21 - 1) = 0;
  HIDWORD(v20) = 0;
  CurrentAtomData = OUTLINED_FUNCTION_39_10();
  if (!CurrentAtomData)
  {
    v9 = bswap32(0);
    HIDWORD(v21) = v9;
    if (v9 == 1852009592)
    {
      CurrentAtomData = FigAtomStreamReadCurrentAtomData();
      if (!CurrentAtomData)
      {
        OUTLINED_FUNCTION_10_28();
        WORD2(v20) = v13;
        OUTLINED_FUNCTION_10_28();
        HIWORD(v20) = v14;
        OUTLINED_FUNCTION_10_28();
        LOWORD(v21) = v15;
        v16 = OUTLINED_FUNCTION_34_11();
        CurrentAtomData = IFFInformationReserveSharedItemProperty(v16, 4, v17, 0);
        if (!CurrentAtomData)
        {
          CurrentAtomData = IFFInformationSetItemPropertyIndexedColor(*v25, SWORD2(v20), SHIWORD(v20), v21, 0);
        }
      }
    }

    else
    {
      v10 = v9 == 1917403971 || v9 == 1886547814;
      if (!v10)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
LABEL_14:
        CurrentAtomData = FigSignalErrorAtGM();
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_38_10();
      CurrentAtomData = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
      if (!CurrentAtomData)
      {
        CurrentAtomData = OUTLINED_FUNCTION_26_17(v24, v2, &v23, v4, &v22);
        if (!CurrentAtomData)
        {
          if (!v23 || !v22)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_20_0();
            goto LABEL_14;
          }

          v11 = OUTLINED_FUNCTION_34_11();
          CurrentAtomData = IFFInformationReserveSharedItemProperty(v11, 5, v12, 0);
          if (!CurrentAtomData)
          {
            CurrentAtomData = IFFInformationSetItemPropertyICCProfileData(*v25, v22, v23);
          }
        }
      }
    }
  }

LABEL_18:
  v18 = OUTLINED_FUNCTION_37_10(CurrentAtomData, v2, v3, v4, v5, v6, v7, v8, v20, v21, v22, v23, v24);
  if (v18)
  {
    CFRelease(v18);
  }

  OUTLINED_FUNCTION_13_19();
  if (v10)
  {
    return v0;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyContentLightLevel()
{
  v1 = OUTLINED_FUNCTION_14_22();
  if (!v1)
  {
    v1 = OUTLINED_FUNCTION_7_32(0, v2, v3, v4, v5, v6, v7, v8, v12, v14, cf);
    if (!v1)
    {
      if (v13 == 4)
      {
        v1 = IFFInformationReserveSharedItemProperty(*(v0 + 8), 6, &v17, 0);
        if (!v1)
        {
          v1 = IFFInformationSetItemPropertyHDRMetaData(v17, v15, 4uLL);
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        v1 = FigSignalErrorAtGM();
      }
    }
  }

  v9 = v1;
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_24_14();
  if (v10)
  {
    return v9;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyMasteringDisplayColorVolume()
{
  v1 = OUTLINED_FUNCTION_14_22();
  if (!v1)
  {
    v1 = OUTLINED_FUNCTION_7_32(0, v2, v3, v4, v5, v6, v7, v8, v12, v14, cf);
    if (!v1)
    {
      if (v13 == 24)
      {
        v1 = IFFInformationReserveSharedItemProperty(*(v0 + 8), 7, &v17, 0);
        if (!v1)
        {
          v1 = IFFInformationSetItemPropertyHDRMetaData(v17, v15, 0x18uLL);
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        v1 = FigSignalErrorAtGM();
      }
    }
  }

  v9 = v1;
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_24_14();
  if (v10)
  {
    return v9;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyContentColorVolume()
{
  OUTLINED_FUNCTION_27_13();
  HIBYTE(v16) = 0;
  CurrentAtomData = FigAtomStreamReadCurrentAtomData();
  if (!CurrentAtomData)
  {
    BYTE6(v16) = 0;
    IFFItemPropertyGetCCLVDataLength(SHIBYTE(v16), &v16 + 6);
    if (!CurrentAtomData)
    {
      OUTLINED_FUNCTION_38_10();
      OUTLINED_FUNCTION_613();
      CurrentAtomData = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
      if (!CurrentAtomData)
      {
        v14 = 0;
        v15 = 0;
        CurrentAtomData = OUTLINED_FUNCTION_26_17(v17, v3, &v14, v5, &v15);
        if (!CurrentAtomData)
        {
          if (v14 == BYTE6(v16))
          {
            CurrentAtomData = IFFInformationReserveSharedItemProperty(*(v0 + 8), 8, &v18, 0);
            if (!CurrentAtomData)
            {
              CurrentAtomData = IFFInformationSetItemPropertyHDRMetaData(v18, v15, v14);
            }
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_4();
            CurrentAtomData = FigSignalErrorAtGM();
          }
        }
      }
    }
  }

  v10 = OUTLINED_FUNCTION_37_10(CurrentAtomData, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16, v17);
  if (v10)
  {
    CFRelease(v10);
  }

  OUTLINED_FUNCTION_13_19();
  if (v11)
  {
    return v1;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyAmbientViewingEnvironment()
{
  v1 = OUTLINED_FUNCTION_14_22();
  if (!v1)
  {
    v1 = OUTLINED_FUNCTION_7_32(0, v2, v3, v4, v5, v6, v7, v8, v12, v14, cf);
    if (!v1)
    {
      if (v13 == 8)
      {
        v1 = IFFInformationReserveSharedItemProperty(*(v0 + 8), 9, &v17, 0);
        if (!v1)
        {
          v1 = IFFInformationSetItemPropertyHDRMetaData(v17, v15, 8uLL);
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        v1 = FigSignalErrorAtGM();
      }
    }
  }

  v9 = v1;
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_24_14();
  if (v10)
  {
    return v9;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyCleanAperture(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (!FigAtomStreamReadCurrentAtomData())
  {
    v5 = vrev64q_s8(vsraq_n_u64(vshlq_n_s64(0, 0x20uLL), 0, 0x20uLL));
    if ((vmaxv_u16(vmovn_s32(vclezq_s32(vrev32q_s8(vuzp2q_s32(0, 0))))) & 1) == 0 && !IFFInformationReserveSharedItemProperty(*(a2 + 8), 10, &v6, 0))
    {
      IFFInformationSetItemPropertyCleanAperture(v6, v5.i64[0], v5.i64[1], v5.i64[0], v5.i64[1]);
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v4)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyImageRotation()
{
  if (!OUTLINED_FUNCTION_6_44())
  {
    v0 = OUTLINED_FUNCTION_30_12();
    if (!IFFInformationReserveSharedItemProperty(v0, 11, v1, 0))
    {
      IFFInformationSetItemPropertyRotationDegreesCCW(v5, 90 * (v4 & 3));
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v3)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyImageMirroring()
{
  if (!OUTLINED_FUNCTION_6_44())
  {
    v0 = OUTLINED_FUNCTION_30_12();
    if (!IFFInformationReserveSharedItemProperty(v0, 12, v1, 0))
    {
      IFFInformationSetItemPropertyRotationDegreesCCW(v5, v4 & 1);
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v3)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyAuxiliaryType()
{
  cf = 0;
  *v16 = 0;
  v13 = 0;
  v14 = 0;
  v11 = 0;
  __s = 0;
  BBuf = CheckAtomVersionIsZero();
  if (!BBuf)
  {
    OUTLINED_FUNCTION_11_27();
    BBuf = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
    if (!BBuf)
    {
      BBuf = OUTLINED_FUNCTION_26_17(cf, v1, &v13, v2, &v14);
      if (!BBuf)
      {
        BBuf = copyNullTerminatedStringAndAdvanceBuffer(&v14, &v13, &__s, 0, &v11);
        if (!BBuf)
        {
          v3 = v13;
          v4 = v14;
          v5 = OUTLINED_FUNCTION_34_11();
          BBuf = IFFInformationReserveSharedItemProperty(v5, 13, v6, 0);
          if (!BBuf)
          {
            if (v3)
            {
              v7 = v4;
            }

            else
            {
              v7 = 0;
            }

            IFFInformationSetItemPropertyAuxiliaryType(*v16, __s, v7, v3);
          }
        }
      }
    }
  }

  v8 = BBuf;
  if (cf)
  {
    CFRelease(cf);
  }

  free(__s);
  if (*v16)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (v9)
  {
    return v8;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyLayerSelector()
{
  if (!FigAtomStreamReadCurrentAtomData())
  {
    OUTLINED_FUNCTION_10_28();
    v5 = v0;
    v1 = OUTLINED_FUNCTION_30_12();
    if (!IFFInformationReserveSharedItemProperty(v1, 21, v2, 0))
    {
      IFFInformationSetItemPropertyLayerSelector(0, v5);
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v4)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyAVIFOperatingPointSelector()
{
  if (!OUTLINED_FUNCTION_6_44())
  {
    v0 = OUTLINED_FUNCTION_30_12();
    if (!IFFInformationReserveSharedItemProperty(v0, 22, v1, 0))
    {
      IFFInformationSetItemPropertyAVIFOperatingPointSelector(v5, v4);
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v3)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyAVIFLayeredImageIndexing()
{
  OUTLINED_FUNCTION_187();
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  if (!FigAtomStreamReadCurrentAtomData() && !FigAtomStreamReadCurrentAtomData())
  {
    for (i = 0; i != 6; i += 2)
    {
      *(&v7 + i) = bswap32(*(&v7 + i)) >> 16;
    }

    v1 = OUTLINED_FUNCTION_34_11();
    if (!IFFInformationReserveSharedItemProperty(v1, 23, v2, 0))
    {
      IFFInformationSetItemPropertyAVIFLayerSizes(v9, v7, HIWORD(v7), v8);
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v4)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyUUIDProperty()
{
  OUTLINED_FUNCTION_187();
  v7[1] = 0;
  v8 = 0;
  v7[0] = 0;
  if (!FigAtomStreamGetCurrentAtomUUIDType())
  {
    switch(IFFInformationGetItemPropertyTypeForUUID(v7))
    {
      case 0xFu:
        OUTLINED_FUNCTION_19_21();
        if (!OUTLINED_FUNCTION_39_10())
        {
          v2 = OUTLINED_FUNCTION_12_25();
          if (!IFFInformationReserveSharedItemProperty(v2, 15, &v8, 0))
          {
            goto LABEL_8;
          }
        }

        break;
      case 0x10u:
        OUTLINED_FUNCTION_19_21();
        if (!OUTLINED_FUNCTION_39_10())
        {
          v3 = OUTLINED_FUNCTION_12_25();
          if (!IFFInformationReserveSharedItemProperty(v3, 16, &v8, 0))
          {
LABEL_8:
            IFFInformationSetItemPropertyRotationDegreesCCW(v8, v6);
          }
        }

        break;
      case 0x11u:
        OUTLINED_FUNCTION_20_13();
        _parseExtrinsicsPropertyHelper();
        break;
      case 0x12u:
        OUTLINED_FUNCTION_20_13();
        _parseIntrinsicsPropertyHelper();
        break;
      case 0x13u:
        OUTLINED_FUNCTION_20_13();
        _parseDisparityAdjustmentPropertyHelper();
        break;
      case 0x14u:
        _parseStereoAggressorsPropertyHelper(v1, v0);
        break;
      default:
        break;
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v5)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t _parseExtrinsicsPropertyHelper()
{
  if (OUTLINED_FUNCTION_17_18())
  {
    goto LABEL_24;
  }

  if (v11)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
    goto LABEL_24;
  }

  v8 = 0;
  v9 = 0;
  v7 = 0;
  v6 = 0;
  v2 = v10;
  if (v10)
  {
    OUTLINED_FUNCTION_11_27();
    if (FigAtomStreamReadCurrentAtomData())
    {
      goto LABEL_24;
    }

    HIDWORD(v9) = bswap32(0);
    v2 = v10;
    if ((v10 & 2) == 0)
    {
LABEL_5:
      if ((v2 & 4) == 0)
      {
        goto LABEL_6;
      }

LABEL_12:
      OUTLINED_FUNCTION_178();
      if (FigAtomStreamReadCurrentAtomData())
      {
        goto LABEL_24;
      }

      HIDWORD(v8) = bswap32(0);
      v2 = v10;
      if ((v10 & 8) == 0)
      {
        goto LABEL_7;
      }

LABEL_14:
      if ((v2 & 0x10) != 0)
      {
        OUTLINED_FUNCTION_178();
        if (FigAtomStreamReadCurrentAtomData())
        {
          goto LABEL_24;
        }

        v7 = vrev32_s8(0);
        LODWORD(v8) = bswap32(0);
        v3 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_178();
        if (FigAtomStreamReadCurrentAtomData())
        {
          goto LABEL_24;
        }

        v3 = 0;
        v7.i32[0] = bswap32(0) >> 16;
        v7.i32[1] = v7.i32[0];
        LODWORD(v8) = v7.i32[0];
      }

      goto LABEL_19;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_178();
  if (FigAtomStreamReadCurrentAtomData())
  {
    goto LABEL_24;
  }

  LODWORD(v9) = bswap32(0);
  v2 = v10;
  if ((v10 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v3 = 0;
LABEL_19:
  if ((v10 & 0x20) != 0)
  {
    OUTLINED_FUNCTION_178();
    if (FigAtomStreamReadCurrentAtomData())
    {
      goto LABEL_24;
    }

    v6 = bswap32(0);
  }

  if (!IFFInformationReserveSharedItemProperty(*(v1 + 8), 17, &v12, 0))
  {
    IFFInformationSetItemPropertyExtrinsics(v12, SHIDWORD(v9), v9, SHIDWORD(v8), v7.i32[0], v7.i32[1], v8, v3, v6, 0, v0);
  }

LABEL_24:
  OUTLINED_FUNCTION_9_28();
  if (v5)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t _parseIntrinsicsPropertyHelper()
{
  if (!OUTLINED_FUNCTION_17_18())
  {
    if (v9)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      FigSignalErrorAtGM();
    }

    else
    {
      OUTLINED_FUNCTION_11_27();
      if (!FigAtomStreamReadCurrentAtomData())
      {
        v4 = vrev32q_s8(0);
        v5 = bswap32(0);
        if (!IFFInformationReserveSharedItemProperty(*(v1 + 8), 18, &v10, 0))
        {
          IFFInformationSetItemPropertyIntrinsics(v10, v6 & 1, v7 & 0x1F, v8 & 0x1F, v4.i32[0], v4.i32[3], v4.i32[1], v4.i32[2], v5, v0);
        }
      }
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v3)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t _parseDisparityAdjustmentPropertyHelper()
{
  OUTLINED_FUNCTION_187();
  v4 = 0;
  if (!v0 || (result = CheckAtomVersionIsZero(), !result))
  {
    OUTLINED_FUNCTION_19_21();
    result = FigAtomStreamReadCurrentAtomData();
    if (!result)
    {
      v2 = OUTLINED_FUNCTION_12_25();
      result = IFFInformationReserveSharedItemProperty(v2, 19, &v4, 0);
      if (!result)
      {
        return IFFInformationSetItemPropertyRotationDegreesCCW(v4, v3);
      }
    }
  }

  return result;
}

uint64_t _parseStereoAggressorsPropertyHelper(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v29 = 0;
  CurrentAtomData = CheckAtomVersionIsZero();
  if (CurrentAtomData || (v27 = 0, (CurrentAtomData = FigAtomStreamReadCurrentAtomData()) != 0))
  {
    v17 = CurrentAtomData;
    v8 = 0;
    v6 = 0;
    v5 = 0;
    goto LABEL_23;
  }

  v4 = v27;
  v5 = malloc_type_calloc(v27 + 1, 1uLL, 0x100004077774924uLL);
  if (!v5)
  {
    v8 = 0;
    v6 = 0;
    goto LABEL_35;
  }

  v6 = malloc_type_calloc(v27 + 1, 1uLL, 0x100004077774924uLL);
  if (!v6)
  {
    v8 = 0;
    goto LABEL_35;
  }

  v7 = malloc_type_calloc(v27 + 1, 8uLL, 0x6004044C4A2DFuLL);
  v8 = v7;
  if (!v7)
  {
LABEL_35:
    v17 = -12846;
    goto LABEL_23;
  }

  v22 = a2;
  v9 = 0;
  v10 = v27 + 1;
  v11 = 5;
  v12 = v7;
  while (1)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v26 = 0;
    BBuf = FigAtomStreamReadCurrentAtomData();
    if (BBuf)
    {
      break;
    }

    v11 += 2;
    v5[v9] = v26;
    v14 = SHIBYTE(v26);
    v6[v9] = HIBYTE(v26) & 0x7F;
    if (v14 < 0)
    {
      BBuf = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
      if (BBuf)
      {
        break;
      }

      v24 = 0;
      v25 = 0;
      v23 = 0;
      BBuf = OUTLINED_FUNCTION_26_17(cf, v15, &v24, v16, &v25);
      if (BBuf)
      {
        break;
      }

      BBuf = copyNullTerminatedStringAndAdvanceBuffer(&v25, &v24, 0, v12, &v23);
      if (BBuf)
      {
        break;
      }

      v11 += v23;
    }

    ++v9;
    ++v12;
    if (v10 == v9)
    {
      BBuf = IFFInformationReserveSharedItemProperty(*(v22 + 8), 20, &v29, 0);
      if (!BBuf)
      {
        BBuf = IFFInformationSetItemPropertyStereoAggressors(v29, v4 + 1, v5, v6, v8);
      }

      break;
    }
  }

  v17 = BBuf;
  v18 = 0;
  do
  {
    v19 = v8[v18 / 8];
    if (v19)
    {
      CFRelease(v19);
    }

    v18 += 8;
  }

  while (8 * v4 + 8 != v18);
  free(v8);
  v8 = cf;
LABEL_23:
  free(v6);
  free(v5);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v29)
  {
    v20 = 1;
  }

  else
  {
    v20 = v17 == 0;
  }

  if (v20)
  {
    return v17;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseFileTypeAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParseFileTypeAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParseFileTypeAtom_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParseGlobalMetaDataGroupAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParseGlobalMetaDataGroupAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParseGlobalMetaDataGroupAtom_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParseGlobalMetaDataGroupAtom_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParseGlobalMetaDataGroupAtom_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParseGlobalMetaDataGroupAtom_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParseGlobalMetaDataGroupAtom_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParseGlobalMetaDataGroupAtom_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCopyTrackQuickTimeMetadata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    return FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_180_1();
  FigTrackReaderGetFigBaseObject(v4);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_7_33();
    v7(v6);
    v5 = 0;
  }

  if (v5 == *MEMORY[0x1E695E4D0])
  {
    FigTrackReaderGetFigBaseObject(v3);
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      return 4294954514;
    }

    v11 = OUTLINED_FUNCTION_5_50();
    return v12(v11);
  }

  FigTrackReaderGetFigBaseObject(v3);
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v8 = OUTLINED_FUNCTION_4_56();
    v9(v8);
  }

  return 0;
}

uint64_t FigMetadataCopyTrackQuickTimeUserdata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    return FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_180_1();
  FigTrackReaderGetFigBaseObject(v4);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_7_33();
    v7(v6);
    v5 = 0;
  }

  if (v5 == *MEMORY[0x1E695E4D0])
  {
    FigTrackReaderGetFigBaseObject(v3);
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      return 4294954514;
    }

    v11 = OUTLINED_FUNCTION_5_50();
    return v12(v11);
  }

  FigTrackReaderGetFigBaseObject(v3);
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v8 = OUTLINED_FUNCTION_4_56();
    v9(v8);
  }

  return 0;
}

uint64_t FigMetadataCopyTrackISOUserdata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    return FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_180_1();
  FigTrackReaderGetFigBaseObject(v4);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_7_33();
    v7(v6);
    v5 = 0;
  }

  if (v5 == *MEMORY[0x1E695E4D0])
  {
    FigTrackReaderGetFigBaseObject(v3);
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      return 4294954514;
    }

    v11 = OUTLINED_FUNCTION_5_50();
    return v12(v11);
  }

  FigTrackReaderGetFigBaseObject(v3);
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v8 = OUTLINED_FUNCTION_4_56();
    v9(v8);
  }

  return 0;
}

uint64_t FigMetadataGetNumericalDataTypeForMetadataProperties(uint64_t a1, const __CFDictionary *a2, uint64_t a3, _DWORD *a4, uint64_t *a5)
{
  valuePtr = 0;
  if (a2)
  {
    if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual())
    {
      return 4294954516;
    }

    if (a4)
    {
      Value = CFDictionaryGetValue(a2, @"dataType");
      if (!Value)
      {
        return 4294954516;
      }

      v10 = Value;
      v11 = CFDictionaryGetValue(a2, @"dataTypeNamespace");
      if (!v11)
      {
        v11 = @"com.apple.quicktime.mdta";
        if (FigCFEqual())
        {
          goto LABEL_11;
        }

        if (FigCFEqual())
        {
          v11 = @"com.apple.itunes";
LABEL_11:
          if (v11)
          {
            goto LABEL_12;
          }

          return 4294954516;
        }

        if (!FigCFEqual() && !FigCFEqual())
        {
          return 4294954516;
        }

        v11 = @"com.apple.quicktime.udta";
        if (!@"com.apple.quicktime.udta")
        {
          return 4294954516;
        }
      }

LABEL_12:
      if (FigCFEqual())
      {
        v12 = CFGetTypeID(v10);
        if (v12 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr);
          FigCFDictionaryGetCFIndexIfPresent();
          result = 0;
          v14 = 0;
        }

        else
        {
          v14 = 0;
          result = 4294954516;
        }
      }

      else
      {
        v17 = 0;
        FigCFDictionaryGetCFIndexIfPresent();
        v14 = 0;
        CoreMediaDataType = FigMetadataGetCoreMediaDataType(v11, v10, 0);
        if (CoreMediaDataType && (v16 = CoreMediaDataType, FigMetadataGetDataTypeWithNamespaceForCoreMediaDataType(a3, CoreMediaDataType, &v17)))
        {
          valuePtr = v17;
          if (CFEqual(v16, *MEMORY[0x1E6960288]) || CFEqual(v16, *MEMORY[0x1E69602A8]))
          {
            result = 0;
            v14 = 1;
          }

          else if (CFEqual(v16, *MEMORY[0x1E6960270]) || CFEqual(v16, *MEMORY[0x1E6960290]))
          {
            result = 0;
            v14 = 2;
          }

          else if (CFEqual(v16, *MEMORY[0x1E6960278]) || CFEqual(v16, *MEMORY[0x1E6960298]))
          {
            result = 0;
            v14 = 4;
          }

          else if (CFEqual(v16, *MEMORY[0x1E6960280]) || (result = CFEqual(v16, *MEMORY[0x1E69602A0]), result))
          {
            result = 0;
            v14 = 8;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          result = 4294954685;
        }
      }

      if (a5)
      {
        *a5 = v14;
      }

      *a4 = valuePtr;
      return result;
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void *FigID3MetadataCreateChapterArrayFromTopLevelTableOfContents(const __CFAllocator *a1, uint64_t a2)
{
  v81 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  cf = 0;
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6)
  {
    goto LABEL_42;
  }

  v71 = v6(v4);
  if (v71 < 1)
  {
    goto LABEL_42;
  }

  FigBaseObject = FigMetadataReaderGetFigBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    goto LABEL_42;
  }

  v9 = 0;
  if (v8(FigBaseObject, @"formatVersion", a1, &cf) || !cf)
  {
    OUTLINED_FUNCTION_6_45();
    if (!v31)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  FigBaseObject = CFGetTypeID(cf);
  if (FigBaseObject == CFNumberGetTypeID())
  {
    CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v10 = 0;
    v73 = v4;
    while (2)
    {
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v11)
      {
        goto LABEL_42;
      }

      v9 = 0;
      if (v11(v4, @"org.id3", @"CTOC", v10, a1, &cf, 0))
      {
        OUTLINED_FUNCTION_6_45();
      }

      else
      {
        OUTLINED_FUNCTION_6_45();
        if (!v12)
        {
          break;
        }

        v13 = CFGetTypeID(v12);
        if (v13 != CFDataGetTypeID())
        {
          goto LABEL_42;
        }

        v14 = cf;
        BytePtr = CFDataGetBytePtr(cf);
        Length = CFDataGetLength(v14);
        v17 = strnlen(BytePtr, Length);
        if (v17 >= Length || (v18 = &BytePtr[Length], v19 = &BytePtr[v17], &BytePtr[v17 + 1] >= v18) || (v20 = v19 + 2, (v19 + 2) >= v18) || (FigBaseObject = *v20, !*v20))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_75();
          v28 = FigSignalErrorAtGM();
          goto LABEL_34;
        }

        v21 = *(v19 + 1);
        Mutable = CFArrayCreateMutable(a1, *v20, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_75();
          v28 = FigSignalErrorAtGM();
          goto LABEL_33;
        }

        v23 = Mutable;
        v24 = 0;
        v2 = (v19 + 3);
        do
        {
          v25 = strnlen(v2, v18 - v2);
          if (v25 >= v18 - v2 || (v26 = v25, (v27 = CFStringCreateWithBytes(a1, v2, v25, 0, 0)) == 0))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_75();
            v28 = FigSignalErrorAtGM();
            CFRelease(v23);
LABEL_33:
            v4 = v73;
LABEL_34:
            v23 = 0;
            v9 = 0;
            v2 = 0;
            FigBaseObject = 0;
            v3 = 0;
            if (!v28)
            {
              goto LABEL_27;
            }

            goto LABEL_44;
          }

          v3 = v27;
          CFArrayAppendValue(v23, v27);
          CFRelease(v3);
          v2 += v26 + 1;
          ++v24;
        }

        while (v24 < FigBaseObject);
        if ((~v21 & 3) != 0)
        {
          CFRelease(v23);
          v23 = 0;
        }

        v4 = v73;
LABEL_27:
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (!v23 && ++v10 < v71)
        {
          continue;
        }

        if (!v23)
        {
          goto LABEL_42;
        }

        capacity = CFArrayGetCount(v23);
        if (capacity < 1 || ((v29 = *(*(CMBaseObjectGetVTable() + 16) + 40)) == 0 ? (v30 = 0) : (v30 = v29(v4, @"org.id3", @"CHAP")), v30 < capacity))
        {
          v2 = 0;
        }

        else
        {
          v2 = CFDictionaryCreateMutable(0, capacity, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v2)
          {
            v33 = 0;
            blockAllocator = *MEMORY[0x1E695E498];
            v70 = v30;
            while (1)
            {
              v34 = *(*(CMBaseObjectGetVTable() + 16) + 48);
              if (!v34)
              {
                break;
              }

              if (v34(v4, @"org.id3", @"CHAP", v33, a1, &cf, 0))
              {
                break;
              }

              if (!cf)
              {
                break;
              }

              v35 = CFGetTypeID(cf);
              if (v35 != CFDataGetTypeID())
              {
                break;
              }

              v36 = valuePtr;
              v37 = cf;
              v38 = CFDataGetBytePtr(cf);
              v39 = CFDataGetLength(v37);
              v40 = strnlen(v38, v39);
              if (v40 >= v39)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_75();
                v63 = FigSignalErrorAtGM();
                goto LABEL_105;
              }

              v41 = v40;
              v42 = &v38[v39];
              v72 = CFStringCreateWithBytes(a1, v38, v40, 0, 0);
              v43 = &v38[v41];
              if (&v38[v39 + ~&v38[v41]] < 4 || v42 - v43 - 5 < 4 || v42 - v43 - 9 < 8)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_75();
                v63 = FigSignalErrorAtGM();
                if (v72)
                {
                  CFRelease(v72);
                }

LABEL_105:
                if (v63)
                {
                  break;
                }

                goto LABEL_98;
              }

              v44 = *(v43 + 1);
              v45 = *(v43 + 5);
              theBuffer = 0;
              v78[0] = 0;
              v76 = 0;
              if ((v36 - 255) <= 0xFFFFFF02 || (v46 = (v43 + 17), v47 = v42 - (v43 + 17), v47 >= 0xFFFFFF7))
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_75();
                FigSignalErrorAtGM();
                v55 = 0;
                v48 = v72;
              }

              else
              {
                v48 = v72;
                if (v47 < 0xB)
                {
                  goto LABEL_74;
                }

                WORD2(memoryBlock.value) = 0;
                LODWORD(memoryBlock.value) = bswap32(v36 | 0x49443300);
                *(&memoryBlock.value + 6) = bswap32(v47 & 0x7F | (((v47 >> 14) & 0x7F) << 16) & 0x80FF80FF | (((v47 >> 21) & 0x7F) << 24) | (((v47 >> 7) & 0x7F) << 8));
                if (CMBlockBufferCreateWithMemoryBlock(a1, &memoryBlock, 0xAuLL, blockAllocator, 0, 0, 0xAuLL, 0, &theBuffer) || CMBlockBufferAppendMemoryBlock(theBuffer, v46, v47, blockAllocator, 0, 0, v47, 0) || FigMetadataReaderCreateForTimedID3(a1, theBuffer, &v76))
                {
                  goto LABEL_74;
                }

                OUTLINED_FUNCTION_496();
                v54 = FigMetadataCopyMetadataItemsIf(v49, v50, v51, v52, v53);
                v55 = v78[0];
                if (v54 && v78[0])
                {
                  CFRelease(v78[0]);
LABEL_74:
                  v55 = 0;
                }
              }

              if (theBuffer)
              {
                CFRelease(theBuffer);
              }

              if (v76)
              {
                CFRelease(v76);
              }

              if (!v48)
              {
                goto LABEL_96;
              }

              v82.location = 0;
              v82.length = capacity;
              if (CFArrayContainsValue(v23, v82, v48))
              {
                v56 = bswap32(v44);
                CMTimeMake(&memoryBlock, v56, 1000);
                v57 = CMTimeCopyAsDictionary(&memoryBlock, a1);
                CMTimeMake(&memoryBlock, (bswap32(v45) - v56), 1000);
                v58 = CMTimeCopyAsDictionary(&memoryBlock, a1);
                v59 = v58;
                v78[1] = v58;
                v79 = 0;
                memoryBlock.value = @"ChapterTime";
                *&memoryBlock.timescale = @"ChapterDuration";
                memoryBlock.epoch = 0;
                v78[0] = v57;
                if (v55)
                {
                  memoryBlock.epoch = @"ChapterMetadataItems";
                  v79 = v55;
                }

                v48 = v72;
                if (v57 && v58)
                {
                  if (v55)
                  {
                    v60 = 3;
                  }

                  else
                  {
                    v60 = 2;
                  }

                  v61 = CFDictionaryCreate(a1, &memoryBlock, v78, v60, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  CFDictionarySetValue(v2, v72, v61);
LABEL_90:
                  CFRelease(v57);
                  v62 = v61;
                }

                else
                {
                  v61 = 0;
                  v62 = 0;
                  if (v57)
                  {
                    goto LABEL_90;
                  }
                }

                if (v59)
                {
                  CFRelease(v59);
                }

                if (v62)
                {
                  CFRelease(v62);
                }
              }

              CFRelease(v48);
LABEL_96:
              v4 = v73;
              if (v55)
              {
                CFRelease(v55);
              }

LABEL_98:
              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              if (v70 == ++v33)
              {
                v64 = CFArrayCreateMutable(a1, capacity, MEMORY[0x1E695E9C0]);
                v3 = v64;
                if (!v64)
                {
LABEL_112:
                  FigBaseObject = 0;
                  goto LABEL_117;
                }

                v65 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v23, v65);
                  Value = CFDictionaryGetValue(v2, ValueAtIndex);
                  if (!Value)
                  {
                    break;
                  }

                  CFArrayAppendValue(v3, Value);
                  if (capacity == ++v65)
                  {
                    goto LABEL_112;
                  }
                }

                v9 = v23;
                FigBaseObject = v3;
                goto LABEL_43;
              }
            }
          }
        }

        FigBaseObject = 0;
        v3 = 0;
LABEL_117:
        v9 = v23;
      }

      break;
    }
  }

  else
  {
LABEL_42:
    v9 = 0;
    v2 = 0;
    FigBaseObject = 0;
LABEL_43:
    v3 = 0;
  }

LABEL_44:
  v31 = cf;
  if (cf)
  {
LABEL_45:
    CFRelease(v31);
  }

LABEL_46:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (FigBaseObject)
  {
    CFRelease(FigBaseObject);
  }

  return v3;
}

const __CFString *FigMetadataItemKeyIsVorbisCommentChapterFieldName()
{
  FigCFDictionaryGetValue();
  if (!FigCFEqual())
  {
    return 0;
  }

  Value = FigCFDictionaryGetValue();
  v1 = Value;
  if (!Value)
  {
    return v1;
  }

  v2 = CFGetTypeID(Value);
  if (v2 != CFStringGetTypeID() || CFStringGetLength(v1) < 10 || !CFStringHasPrefix(v1, @"CHAPTER"))
  {
    return 0;
  }

  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  if (CStringPtrAndBufferToFree && (CStringPtrAndBufferToFree[7] - 48) <= 9 && (CStringPtrAndBufferToFree[8] - 48) <= 9)
  {
    v1 = ((CStringPtrAndBufferToFree[9] - 48) < 0xA);
  }

  else
  {
    v1 = 0;
  }

  free(0);
  return v1;
}

uint64_t FigIsCommonKeyMappedToMetadataFormat(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&_MergedGlobals_3, FigUserDataSetUpCommonKeyMapping);
    v3 = &qword_1EAF19308;
  }

  else if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&unk_1ED4CA0B0, FigISOUserDataSetUpCommonKeyMapping);
    v3 = &qword_1EAF19310;
  }

  else if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&unk_1ED4CA0C0, FigQuickTimeMetadataSetUpCommonKeyMapping);
    v3 = &qword_1EAF19318;
  }

  else if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&unk_1ED4CA0D0, FigiTunesMetadataSetUpCommonKeyMapping);
    v3 = &_MergedGlobals_516;
  }

  else if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&unk_1ED4CA0E0, FigID3MetadataSetUpCommonKeyMapping);
    v3 = &qword_1EAF192F8;
  }

  else
  {
    if (!FigCFEqual())
    {
      return 0;
    }

    MEMORY[0x19A8D3660](&unk_1ED4CA0F0, FigVorbisCommentSetUpCommonKeyMapping);
    v3 = &qword_1EAF19300;
  }

  v4 = *v3;
  if (!*v3)
  {
    return 0;
  }

  return CFDictionaryContainsKey(v4, a1);
}

uint64_t FigMetadataCreateMetadataItemsFromFigMetadataPropertyListSampleBuffer(opaqueCMSampleBuffer *a1, void *a2)
{
  if (!a2)
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  if (CMSampleBufferGetDataBuffer(a1))
  {
    OUTLINED_FUNCTION_496();
    Contiguous = CMBlockBufferCreateContiguous(v3, v4, v5, v6, 0, 0, 0, v7);
    if (Contiguous)
    {
      return Contiguous;
    }

    DataLength = CMBlockBufferGetDataLength(0);
    if (DataLength)
    {
      v10 = DataLength;
      OUTLINED_FUNCTION_496();
      Contiguous = CMBlockBufferGetDataPointer(v11, v12, v13, v14, v15);
      if (!Contiguous)
      {
        v16 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], 0, v10, *MEMORY[0x1E695E498]);
        if (!v16)
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM();
          return v16;
        }

        OUTLINED_FUNCTION_496();
        v21 = CFPropertyListCreateWithData(v17, v18, v19, v20, 0);
        if (v21)
        {
          v22 = v21;
          v23 = CFGetTypeID(v21);
          if (v23 == CFArrayGetTypeID())
          {
            *a2 = v22;
          }

          else
          {
            CFRelease(v22);
          }
        }

        CFRelease(v16);
        return 0;
      }

      return Contiguous;
    }
  }

  return 0;
}

uint64_t FigMetadataCreateMetadataItemsFromSampleBuffer(opaqueCMSampleBuffer *a1)
{
  cf = 0;
  v18 = 0;
  DataBuffer = CMSampleBufferGetDataBuffer(a1);
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  if (CMFormatDescriptionGetMediaType(FormatDescription) != 1835365473)
  {
    return v18;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  v5 = MEMORY[0x1E695E480];
  switch(MediaSubType)
  {
    case 0x656D7367u:
      theString1 = 0;
      value = 0;
      if (!a1)
      {
        goto LABEL_24;
      }

      SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
      if (!SampleAttachmentsArray)
      {
        goto LABEL_24;
      }

      v9 = SampleAttachmentsArray;
      if (CFArrayGetCount(SampleAttachmentsArray) < 1)
      {
        goto LABEL_24;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
      if (!ValueAtIndex)
      {
        goto LABEL_24;
      }

      if (!CFDictionaryGetValueIfPresent(ValueAtIndex, *MEMORY[0x1E6962DB8], &value))
      {
        goto LABEL_24;
      }

      if (!value)
      {
        goto LABEL_24;
      }

      CFDictionaryGetValueIfPresent(value, *MEMORY[0x1E6962720], &theString1);
      if (!theString1 || CFStringCompare(theString1, @"https://developer.apple.com/streaming/emsg-id3", 0) && CFStringCompare(theString1, @"https://aomedia.org/emsg/ID3", 0))
      {
        goto LABEL_24;
      }

      v7 = CMSampleBufferGetDataBuffer(a1);
      v6 = *v5;
LABEL_9:
      if (!FigMetadataReaderCreateForTimedID3(v6, v7, &cf))
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    case 0x69637920u:
      if (!FigMetadataReaderCreateWithSampleBufferForIcy(*MEMORY[0x1E695E480], a1, &cf))
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    case 0x69643320u:
      v6 = *MEMORY[0x1E695E480];
      v7 = DataBuffer;
      goto LABEL_9;
  }

  if (MediaSubType != 1835360888)
  {
    if (MediaSubType == 1886155636)
    {
      FigMetadataCreateMetadataItemsFromFigMetadataPropertyListSampleBuffer(a1, &v18);
      goto LABEL_26;
    }

LABEL_24:
    if (!cf)
    {
      return v18;
    }

    OUTLINED_FUNCTION_496();
    FigMetadataCopyMetadataItemsIf(v11, v12, v13, v14, v15);
    goto LABEL_26;
  }

  if (!FigMetadataReaderCreateForBoxedMetadata(*MEMORY[0x1E695E480], DataBuffer, FormatDescription, &cf))
  {
    goto LABEL_24;
  }

LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t FigCopyOSTypeKeysFromCommonKeys_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigCopyOSTypeKeysFromCommonKeys_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigQuickTimeMetadataCopyNativeKeysFromCommonKey_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataCopyNativeKeysFromCommonKey_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCopyISO8601GMTStringFromDate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCopyISO8601GMTStringFromDate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCopyISO8601GMTStringFromDate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCopyISO8601GMTStringFromDate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCopyISO8601GMTStringFromDate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCopyTrackCommonMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCopyTrackCommonMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCopyCommonMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCopyCommonMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCopyCommonMetadata_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCopyMovieCommonMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCopyMovieCommonMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCopyMovieMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCopyMovieMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigMetadataCopyAllMetadata_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *v0 = FigSignalErrorAtGM();
  CFRelease(v1);
}

uint64_t FigMetadataCopyTrackMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCopyTrackMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCopyMetadataItemsIf_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCopyMetadataItemsIf_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVorbisCommentMetadataCreateChapterArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVorbisCommentMetadataCreateChapterArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVorbisCommentMetadataCreateChapterArray_cold_3(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigVorbisCommentMetadataCreateChapterArray_cold_4(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigVorbisCommentMetadataCreateChapterArray_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVorbisCommentMetadataCreateChapterArray_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigIcyMetadataParseSampleBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigIcyMetadataParseSampleBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigIcyMetadataParseSampleBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCreateFigPropertyListBlockBufferFromMetadataItems_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataArrayCreateWithAudioFileMetadataItemList_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AddVorbisCommentItemToArray_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigMetadataReaderCreateWithAudioFileProperties_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  *v1 = 0;
  return result;
}

uint64_t CreateFigMetadataItemForAudioFileInfoItem_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t AddFigMetadataItemToArray_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigiTunesMetadataHasKey(const void *a1, const void *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CommonKeyToShortKeyMapping = FigiTunesMetadataGetCommonKeyToShortKeyMapping();
  if (!DerivedStorage || !a3 || !a2)
  {
    goto LABEL_34;
  }

  v8 = CommonKeyToShortKeyMapping;
  OUTLINED_FUNCTION_3_55();
  if (!CFEqual(a2, @"comn"))
  {
    if (!CFEqual(a2, @"itsk"))
    {
      if (CFEqual(a2, @"itlk"))
      {
        v12 = 0;
        v13 = 1;
LABEL_18:
        if (*(DerivedStorage + 24) >= 1)
        {
          OUTLINED_FUNCTION_11_28();
          if (!FigiTunesMetadataGetItemListAtomStream(DerivedStorage, v16, 0))
          {
            while (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
            {
              if (v22 == 757935405)
              {
                if (v13)
                {
                  theString2 = 0;
                  v17 = CFGetAllocator(a1);
                  if (FigiTunesMetadataCopyLongKey(v24, v17, &theString2))
                  {
                    return 0;
                  }

                  v18 = theString2;
                  if (theString2)
                  {
                    v19 = CFStringCompare(a3, theString2, 0);
                    CFRelease(v18);
                    if (v19 == kCFCompareEqualTo)
                    {
                      return 1;
                    }
                  }
                }
              }

              else
              {
                if (valuePtr == v22)
                {
                  v20 = v12;
                }

                else
                {
                  v20 = 0;
                }

                if (v20)
                {
                  return 1;
                }
              }

              if (FigAtomStreamAdvanceToNextAtom())
              {
                return 0;
              }
            }
          }
        }

        return 0;
      }

      goto LABEL_34;
    }

    v11 = CFGetTypeID(a3);
    if (v11 == CFStringGetTypeID())
    {
      if (!FigiTunesMetadataShortStringKeyToOSTypeKey(a3, &valuePtr))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v14 = CFGetTypeID(a3);
      if (v14 != CFNumberGetTypeID())
      {
LABEL_34:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        goto LABEL_35;
      }

      if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_11:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
LABEL_35:
        FigSignalErrorAtGM();
        return 0;
      }
    }

    OUTLINED_FUNCTION_4_57();
    if (!v15)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v9 = CFGetTypeID(a3);
  if (v9 != CFStringGetTypeID())
  {
    goto LABEL_34;
  }

  result = CFDictionaryGetValue(v8, a3);
  valuePtr = result;
  if (result)
  {
LABEL_17:
    v13 = 0;
    v12 = 1;
    goto LABEL_18;
  }

  return result;
}

void FigiTunesMetadataCopyKeyAtIndex(uint64_t a1, const void *a2, uint64_t a3, const __CFAllocator *a4, CFStringRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || !a5)
  {
    goto LABEL_37;
  }

  v10 = DerivedStorage;
  if (a2)
  {
    if (CFEqual(a2, @"itsk"))
    {
      v11 = 0;
      v12 = 2;
      v13 = 1;
    }

    else
    {
      if (!CFEqual(a2, @"itlk"))
      {
LABEL_37:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        OUTLINED_FUNCTION_252();

        FigSignalErrorAtGM();
        return;
      }

      v13 = 0;
      v11 = 1;
      v12 = 1;
    }
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v12 = 0;
  }

  memset(v24, 0, 224);
  if (*(v10 + 24) <= 0)
  {
    goto LABEL_37;
  }

  valuePtr = 0;
  if (!*(v10 + 57))
  {
    goto LABEL_16;
  }

  if (*(v10 + 60) != v12 || (v14 = *(v10 + 64), v14 >= a3))
  {
    *(v10 + 57) = 0;
LABEL_16:
    OUTLINED_FUNCTION_11_28();
    v14 = 0;
    if (FigiTunesMetadataGetItemListAtomStream(v10, v17, 0))
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_11_28();
  if (FigiTunesMetadataGetItemListAtomStream(v10, v15, v16))
  {
    goto LABEL_33;
  }

  *(v10 + 57) = 0;
LABEL_17:
  v18 = a2 == 0;
  if (a2)
  {
    v19 = v13;
  }

  else
  {
    v19 = 1;
  }

  if (v18)
  {
    v11 = 1;
  }

  while (1)
  {
    if (FigAtomStreamGetCurrentAtomTypeAndDataLength())
    {
      goto LABEL_33;
    }

    if (valuePtr == 757935405)
    {
      break;
    }

    if (v19)
    {
      if (v14 == a3)
      {
        v20 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        *a5 = v20;
        if (!v20)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          FigSignalErrorAtGM();
          goto LABEL_33;
        }

        goto LABEL_35;
      }

      goto LABEL_30;
    }

LABEL_31:
    if (FigAtomStreamAdvanceToNextAtom())
    {
      OUTLINED_FUNCTION_8_25();
      goto LABEL_33;
    }
  }

  if (!v11)
  {
    goto LABEL_31;
  }

  if (v14 != a3)
  {
LABEL_30:
    ++v14;
    goto LABEL_31;
  }

  if (!FigiTunesMetadataCopyLongKey(v24, a4, a5))
  {
LABEL_35:
    *(v10 + 60) = v12;
    *(v10 + 64) = a3;
    if (!FigAtomStreamGetCurrentAtomOffsetInParent())
    {
      *(v10 + 57) = 1;
    }
  }

LABEL_33:
  OUTLINED_FUNCTION_252();
}

uint64_t FigiTunesMetadataCopyItemWithKeyAndIndex(uint64_t a1, const void *a2, const __CFString *a3, uint64_t a4, const __CFAllocator *a5, unint64_t a6, unint64_t a7)
{
  memset(v42, 0, 112);
  memset(v41, 0, sizeof(v41));
  valuePtr = 0;
  v39 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CommonKeyToShortKeyMapping = FigiTunesMetadataGetCommonKeyToShortKeyMapping();
  v35 = a6;
  if (!DerivedStorage)
  {
    goto LABEL_87;
  }

  if (!(a6 | a7))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_9();
    ItemListAtomStream = FigSignalErrorAtGM();
    goto LABEL_96;
  }

  if (!a2)
  {
    if (a3)
    {
      goto LABEL_87;
    }

    v16 = 0;
    v18 = 0;
    v17 = 0;
    goto LABEL_11;
  }

  v14 = CommonKeyToShortKeyMapping;
  if (!CFEqual(a2, @"comn"))
  {
    if (CFEqual(a2, @"itsk"))
    {
      if (a3)
      {
        v22 = CFGetTypeID(a3);
        if (v22 == CFStringGetTypeID())
        {
          if (!FigiTunesMetadataShortStringKeyToOSTypeKey(a3, &valuePtr + 1))
          {
            goto LABEL_81;
          }
        }

        else
        {
          v31 = CFGetTypeID(a3);
          if (v31 != CFNumberGetTypeID())
          {
            goto LABEL_87;
          }

          if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr + 4))
          {
LABEL_81:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_6_9();
            goto LABEL_88;
          }
        }

        if (HIDWORD(valuePtr) == 757935405)
        {
          goto LABEL_81;
        }
      }

LABEL_8:
      v16 = 0;
      v17 = 2;
      v18 = 1;
      goto LABEL_11;
    }

    if (!CFEqual(a2, @"itlk"))
    {
      goto LABEL_87;
    }

    if (a3)
    {
      v30 = CFGetTypeID(a3);
      if (v30 != CFStringGetTypeID())
      {
        goto LABEL_87;
      }
    }

    v18 = 0;
    v16 = 1;
    v17 = 1;
LABEL_11:
    if (*(DerivedStorage + 24) > 0)
    {
      v34 = DerivedStorage;
      v33 = v17;
      if (!a3 && *(DerivedStorage + 57))
      {
        v19 = DerivedStorage;
        if (*(DerivedStorage + 60) == v17)
        {
          v20 = *(DerivedStorage + 64);
          if (v20 < a4)
          {
            ItemListAtomStream = FigiTunesMetadataGetItemListAtomStream(v19, v42, *(v19 + 72));
            if (!ItemListAtomStream)
            {
              *(v19 + 57) = 0;
LABEL_25:
              cf = 0;
              if (a2)
              {
                v23 = v18;
              }

              else
              {
                v23 = 1;
              }

              if (a2)
              {
                v24 = v16;
              }

              else
              {
                v24 = 1;
              }

              while (1)
              {
                ItemListAtomStream = FigAtomStreamGetCurrentAtomTypeAndDataLength();
                if (ItemListAtomStream)
                {
                  goto LABEL_96;
                }

                if (valuePtr == 757935405)
                {
                  if (v24)
                  {
                    if (!a3)
                    {
                      goto LABEL_35;
                    }

                    if (cf)
                    {
                      CFRelease(cf);
                      v39 = 0;
                    }

                    ItemListAtomStream = FigiTunesMetadataCopyLongKey(v41, a5, &v39);
                    if (ItemListAtomStream)
                    {
                      goto LABEL_96;
                    }

                    v28 = v39;
                    if (v39)
                    {
                      if (CFStringCompare(a3, v39, 0) == kCFCompareEqualTo)
                      {
                        cf = v28;
LABEL_35:
                        ItemListAtomStream = OUTLINED_FUNCTION_5_51();
                        if (!ItemListAtomStream)
                        {
                          v25 = v20;
                          while (1)
                          {
                            ItemListAtomStream = OUTLINED_FUNCTION_13_20();
                            if (ItemListAtomStream)
                            {
                              break;
                            }

                            if (v38 == 1684108385)
                            {
                              if (v25 == a4)
                              {
                                ItemListAtomStream = FigiTunesMetadataCopyItemValueAndProperties();
                                if (ItemListAtomStream)
                                {
                                  goto LABEL_96;
                                }

                                goto LABEL_84;
                              }

                              ++v25;
                            }

                            Atom = FigAtomStreamAdvanceToNextAtom();
                            if (Atom)
                            {
                              goto LABEL_54;
                            }
                          }
                        }

                        goto LABEL_96;
                      }

                      v27 = 0;
                      cf = v28;
                      goto LABEL_58;
                    }

                    cf = 0;
                  }
                }

                else if (v23 && (!a3 || HIDWORD(valuePtr) == valuePtr))
                {
                  ItemListAtomStream = OUTLINED_FUNCTION_5_51();
                  if (!ItemListAtomStream)
                  {
                    v25 = v20;
                    while (1)
                    {
                      ItemListAtomStream = OUTLINED_FUNCTION_13_20();
                      if (ItemListAtomStream)
                      {
                        break;
                      }

                      if (v38 == 1684108385)
                      {
                        if (v25 == a4)
                        {
                          ItemListAtomStream = FigiTunesMetadataCopyItemValueAndProperties();
                          if (ItemListAtomStream)
                          {
                            goto LABEL_96;
                          }

LABEL_84:
                          if (!a3)
                          {
                            *(v34 + 60) = v33;
                            *(v34 + 64) = v20;
                            ItemListAtomStream = FigAtomStreamGetCurrentAtomOffsetInParent();
                            if (ItemListAtomStream)
                            {
                              goto LABEL_96;
                            }

                            *(v34 + 57) = 1;
                          }

                          goto LABEL_89;
                        }

                        ++v25;
                      }

                      Atom = FigAtomStreamAdvanceToNextAtom();
                      if (Atom)
                      {
LABEL_54:
                        if (Atom == -12890)
                        {
                          v27 = 0;
                        }

                        else
                        {
                          v27 = Atom;
                        }

                        v20 = v25;
                        goto LABEL_58;
                      }
                    }
                  }

                  goto LABEL_96;
                }

                v27 = 0;
LABEL_58:
                if (FigAtomStreamAdvanceToNextAtom())
                {
                  OUTLINED_FUNCTION_8_25();
                  if (!v29)
                  {
                    goto LABEL_96;
                  }

                  if (!v27)
                  {
                    v27 = 4294954689;
                  }

                  goto LABEL_97;
                }
              }
            }

            goto LABEL_96;
          }
        }

        *(v19 + 57) = 0;
        DerivedStorage = v19;
      }

      ItemListAtomStream = FigiTunesMetadataGetItemListAtomStream(DerivedStorage, v42, 0);
      v20 = 0;
      if (!ItemListAtomStream)
      {
        goto LABEL_25;
      }

LABEL_96:
      v27 = ItemListAtomStream;
      goto LABEL_97;
    }

    goto LABEL_81;
  }

  if (a3)
  {
    v15 = CFGetTypeID(a3);
    if (v15 == CFStringGetTypeID())
    {
      HIDWORD(valuePtr) = CFDictionaryGetValue(v14, a3);
      if (!HIDWORD(valuePtr))
      {
        v27 = 4294954691;
        goto LABEL_97;
      }

      goto LABEL_8;
    }
  }

LABEL_87:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_6_9();
LABEL_88:
  v27 = FigSignalErrorAtGM();
  if (!v27)
  {
LABEL_89:
    if (v35)
    {
      *v35 = 0;
    }

    v27 = 0;
    if (a7)
    {
      *a7 = 0;
    }
  }

LABEL_97:
  if (v39)
  {
    CFRelease(v39);
  }

  return v27;
}

uint64_t FigiTunesMetadataCopyLongKey(uint64_t a1, const __CFAllocator *a2, CFStringRef *a3)
{
  CurrentAtomTypeAndDataLength = FigAtomStreamInitWithParent();
  if (!CurrentAtomTypeAndDataLength)
  {
    while (1)
    {
      CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
      if (CurrentAtomTypeAndDataLength)
      {
        break;
      }

      Atom = FigAtomStreamAdvanceToNextAtom();
      if (Atom)
      {
        v7 = Atom;
        OUTLINED_FUNCTION_8_25();
        if (!v8)
        {
          Mutable = CFStringCreateMutable(a2, 0);
          *a3 = CFStringCreateCopy(a2, Mutable);
          goto LABEL_7;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        CurrentAtomTypeAndDataLength = FigSignalErrorAtGM();
        break;
      }
    }
  }

  v7 = CurrentAtomTypeAndDataLength;
  Mutable = 0;
LABEL_7:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v7;
}

void FigiTunesMetadataGetDataAtomCount(uint64_t a1, void *a2)
{
  if (!FigAtomStreamInitWithParent())
  {
    while (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
    {
      if (FigAtomStreamAdvanceToNextAtom())
      {
        OUTLINED_FUNCTION_8_25();
        if (v3)
        {
          if (a2)
          {
            *a2 = 0;
          }
        }

        return;
      }
    }
  }
}

uint64_t FigiTunesMetadataCopyItemValueAndProperties()
{
  v8 = 0;
  cf = 0;
  v7 = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  else
  {
    return 4294954687;
  }
}

uint64_t ArrayiTunesDataCopyItemWithKeyAndIndex(uint64_t a1, const void *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, __CFDictionary **a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CommonKeyToShortKeyMapping = FigiTunesMetadataGetCommonKeyToShortKeyMapping();
  if (!DerivedStorage || !(a6 | a7))
  {
    goto LABEL_28;
  }

  if (!a2)
  {
    if (a3)
    {
      goto LABEL_28;
    }

    return OUTLINED_FUNCTION_7_34(*DerivedStorage, 0, v13, v14, v15, v16, v17, v18, a7);
  }

  v19 = CommonKeyToShortKeyMapping;
  valuePtr = 0;
  if (!CFEqual(a2, @"comn"))
  {
    if (CFEqual(a2, @"itsk"))
    {
      if (a3)
      {
        v29 = CFGetTypeID(a3);
        if (v29 == CFStringGetTypeID())
        {
          if (!FigiTunesMetadataShortStringKeyToOSTypeKey(a3, &valuePtr))
          {
            goto LABEL_38;
          }
        }

        else
        {
          v32 = CFGetTypeID(a3);
          if (v32 != CFNumberGetTypeID())
          {
            goto LABEL_28;
          }

          if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
          {
LABEL_38:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_4();
            return FigSignalErrorAtGM();
          }
        }

        OUTLINED_FUNCTION_4_57();
        if (v33)
        {
          goto LABEL_38;
        }

        v31 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
LABEL_24:
        v27 = v31;
LABEL_25:
        v34 = OUTLINED_FUNCTION_7_34(*DerivedStorage, v27, v21, v22, v23, v24, v25, v26, a7);
        if (v27)
        {
          CFRelease(v27);
        }

        return v34;
      }
    }

    else
    {
      if (!CFEqual(a2, @"itlk"))
      {
        goto LABEL_28;
      }

      if (a3)
      {
        v30 = CFGetTypeID(a3);
        if (v30 != CFStringGetTypeID())
        {
          goto LABEL_28;
        }

        v31 = CFRetain(a3);
        goto LABEL_24;
      }
    }

    return OUTLINED_FUNCTION_7_34(*DerivedStorage, 0, v13, v14, v15, v16, v17, v18, a7);
  }

  if (a3)
  {
    v20 = CFGetTypeID(a3);
    if (v20 == CFStringGetTypeID())
    {
      valuePtr = CFDictionaryGetValue(v19, a3);
      if (valuePtr)
      {
        v27 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        goto LABEL_25;
      }

      return 4294954691;
    }
  }

LABEL_28:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigMetadataReaderCreateForiTunesMetadataArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataReaderCreateForiTunesMetadataArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataCopyValue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataCopyValue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataCopyValue_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataCopyValue_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataCopyValue_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigiTunesMetadataGetKeyCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigiTunesMetadataGetKeyCount_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ArrayiTunesDataHasKey_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ArrayiTunesDataHasKey_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t ArrayiTunesDataHasKey_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t ArrayiTunesDataHasKey_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t ArrayiTunesDataHasKey_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ArrayiTunesDataHasKey_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ArrayiTunesDataHasKey_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ArrayiTunesDataGetKeyCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ArrayiTunesDataCopyKeyAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ArrayiTunesDataCopyKeyAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ArrayiTunesDataCopyKeyAtIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ArrayiTunesDataGetItemCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ArrayiTunesDataGetItemCount_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ArrayiTunesDataGetItemCount_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t ArrayiTunesDataGetItemCount_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t ArrayiTunesDataGetItemCount_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t ArrayiTunesDataGetItemCount_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ArrayiTunesDataGetItemCount_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ArrayiTunesDataGetItemCount_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t fhq_scheduleWaitingHapticPlayers(uint64_t a1)
{
  v6 = 0;
  dispatch_assert_queue_V2(*(a1 + 16));
  if (CMTimebaseGetRate(*(a1 + 32)) > 0.0)
  {
    do
    {
      v2 = CMBufferQueueDequeueAndRetain(*(a1 + 64));
      if (!v2)
      {
        break;
      }

      v3 = v2;
      v4 = fhq_scheduleHapticPlayer(a1, v2, &v6);
      CFRelease(v3);
      if (v4)
      {
        return v4;
      }
    }

    while (!v6);
  }

  return 0;
}

uint64_t fhq_applyBlockToAllPlayers(uint64_t a1, void *a2)
{
  result = fhq_applyBlockToSubmittedPlayers();
  if (!result)
  {
    v5 = *(a1 + 64);

    return CMBufferQueueCallForEachBuffer(v5, applyBlockToBuffer, a2);
  }

  return result;
}

uint64_t FigHapticQueueSetVolume(uint64_t a1, CFNumberRef number)
{
  v11 = *MEMORY[0x1E69E9840];
  valuePtr = 1065353216;
  if (dword_1EAF17040 >= 2)
  {
    v9 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = 1.0;
  if (number)
  {
    CFNumberGetValue(number, kCFNumberFloatType, &valuePtr);
    v5 = *&valuePtr;
  }

  *(a1 + 56) = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __FigHapticQueueSetVolume_block_invoke;
  v7[3] = &__block_descriptor_tmp_28;
  v7[4] = a1;
  return fhq_applyBlockToAllPlayers(a1, v7);
}

uint64_t FigHapticQueueSetIsMuted(uint64_t a1, char a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17040)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(a1 + 40) = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __FigHapticQueueSetIsMuted_block_invoke;
  v6[3] = &__block_descriptor_tmp_31_0;
  v6[4] = a1;
  return fhq_applyBlockToAllPlayers(a1, v6);
}

uint64_t __FigHapticQueueStart_block_invoke(uint64_t a1)
{
  v2 = FigHapticEngineStart(*(*(a1 + 40) + 24));
  result = OUTLINED_FUNCTION_12_7(v2);
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = fhq_scheduleWaitingHapticPlayers(*(a1 + 40));
    return OUTLINED_FUNCTION_12_7(v4);
  }

  return result;
}

void __FigHapticQueuePause_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  dispatch_assert_queue_V2(*(v2 + 16));
  OUTLINED_FUNCTION_9_30(MEMORY[0x1E6960C68], v4, v5);
  OUTLINED_FUNCTION_2_71();
  v3 = fhq_applyBlockToSubmittedPlayers();
  if (!v3)
  {
    CFArrayRemoveAllValues(*(v2 + 80));
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

uint64_t __FigHapticQueueStop_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  dispatch_assert_queue_V2(*(v1 + 16));
  OUTLINED_FUNCTION_9_30(MEMORY[0x1E6960C68], v4, v5);
  OUTLINED_FUNCTION_2_71();
  v2 = fhq_applyBlockToSubmittedPlayers();
  if (!v2)
  {
    CFArrayRemoveAllValues(*(v1 + 80));
    v2 = CMBufferQueueReset(*(v1 + 64));
  }

  return OUTLINED_FUNCTION_12_7(v2);
}

uint64_t __FigHapticQueueEnqueueSamples_block_invoke(uint64_t a1, CMSampleBufferRef sbuf)
{
  v89 = *MEMORY[0x1E69E9840];
  v76 = 0;
  v77 = &v76;
  v78 = 0x2000000000;
  v79 = 0;
  v74.epoch = 0;
  cf = 0;
  if (*(*(a1 + 32) + 88) < 10)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v74.value = 0;
  *&v74.timescale = 0;
  CMSampleBufferGetOutputPresentationTimeStamp(&v74, sbuf);
  memset(&v73, 0, sizeof(v73));
  CMSampleBufferGetOutputDuration(&v73, sbuf);
  v7 = CFGetAllocator(*(a1 + 32));
  v8 = FigHapticPlayerCreate(v7, sbuf, *(*(a1 + 32) + 24), &cf);
  *(v77 + 6) = v8;
  if (v8)
  {
    goto LABEL_17;
  }

  if (!cf)
  {
    goto LABEL_25;
  }

  FigHapticPlayerSetIsMuted(cf, *(*(a1 + 32) + 40) != 0);
  active = FigHapticPlayerSetActiveChannelIndexNow(cf, *(*(a1 + 32) + 48));
  *(v77 + 6) = active;
  if (active)
  {
    goto LABEL_17;
  }

  v10 = FigHapticPlayerSetVolumeNow(cf, *(*(a1 + 32) + 56));
  *(v77 + 6) = v10;
  if (v10)
  {
    goto LABEL_17;
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 16);
  block = MEMORY[0x1E69E9820];
  v67 = 0x40000000;
  v68 = __FigHapticQueueEnqueueSamples_block_invoke_2;
  v69 = &unk_1E7485B68;
  v70 = &v76;
  v71 = v11;
  v72 = cf;
  dispatch_sync(v12, &block);
  v13 = *(v77 + 6);
  if (!v13 && v6 <= dword_1EAF17040)
  {
    OUTLINED_FUNCTION_12_26();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_465(os_log_and_send_and_compose_flags_and_os_log_type, v15, v16, v17, v18, v19, v20, v21, p_lhs, v62, rhs.value, *&rhs.timescale, rhs.epoch, v65, SBYTE2(v65), BYTE3(v65), SHIDWORD(v65));
    OUTLINED_FUNCTION_121();
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = v2;
    }

    if (v24)
    {
      v25 = *(a1 + 32);
      v26 = cf;
      v27 = *(v25 + 88);
      time = v74;
      CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_6_47(v28, v29, v30, v31, v32, v33, v34, v35, p_lhs, v62, rhs.value, *&rhs.timescale, rhs.epoch, v65, block, v67, v68, v69, v70, v71, v72, *&v73.value);
      CMTimeAdd(&time, &lhs, &rhs);
      Seconds = CMTimeGetSeconds(&time);
      LODWORD(lhs.value) = 136316674;
      *(&lhs.value + 4) = "FigHapticQueueEnqueueSamples_block_invoke";
      LOWORD(lhs.flags) = 2112;
      *(&lhs.flags + 2) = v25;
      HIWORD(lhs.epoch) = 2112;
      v81 = v26;
      v82 = 2048;
      v83 = sbuf;
      v84 = 1024;
      *v85 = v27;
      *&v85[4] = 2048;
      *&v85[6] = v3;
      v86 = 2048;
      v87 = Seconds;
      LODWORD(v62) = 68;
      p_lhs = &lhs;
      OUTLINED_FUNCTION_18_3();
      v2 = HIDWORD(v65);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
    v13 = *(v77 + 6);
  }

  if (v13)
  {
LABEL_17:
    OUTLINED_FUNCTION_12_26();
    v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_465(v37, v38, v39, v40, v41, v42, v43, v44, p_lhs, v62, rhs.value, *&rhs.timescale, rhs.epoch, v65, SBYTE2(v65), BYTE3(v65), SHIDWORD(v65));
    OUTLINED_FUNCTION_121();
    if (v23)
    {
      v46 = v45;
    }

    else
    {
      v46 = v2;
    }

    if (v46)
    {
      v47 = *(a1 + 32);
      time = v74;
      CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_6_47(v48, v49, v50, v51, v52, v53, v54, v55, v61, v63, rhs.value, *&rhs.timescale, rhs.epoch, v65, block, v67, v68, v69, v70, v71, v72, *&v73.value);
      CMTimeAdd(&time, &lhs, &rhs);
      v56 = CMTimeGetSeconds(&time);
      v57 = *(v77 + 6);
      LODWORD(lhs.value) = 136316418;
      *(&lhs.value + 4) = "FigHapticQueueEnqueueSamples_block_invoke";
      LOWORD(lhs.flags) = 2112;
      *(&lhs.flags + 2) = v47;
      HIWORD(lhs.epoch) = 2048;
      v81 = sbuf;
      v82 = 2048;
      v83 = v3;
      v84 = 2048;
      *v85 = v56;
      *&v85[8] = 1024;
      *&v85[10] = v57;
      OUTLINED_FUNCTION_18_3();
    }

    OUTLINED_FUNCTION_414();
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_25:
  v58 = *(v77 + 6);
  _Block_object_dispose(&v76, 8);
  return v58;
}

uint64_t fhq_scheduleHapticPlayer(uint64_t a1, const void *a2, BOOL *a3)
{
  v268 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 16));
  Rate = CMTimebaseGetRate(*(a1 + 32));
  if (Rate <= 0.0)
  {
    goto LABEL_15;
  }

  v8 = Rate;
  memset(&v258, 0, sizeof(v258));
  HostTimeClock = CMClockGetHostTimeClock();
  CMSyncGetTime(&v258, HostTimeClock);
  memset(&v257, 0, sizeof(v257));
  v10 = CMClockGetHostTimeClock();
  v11 = *(a1 + 32);
  time[0].start = v258;
  CMSyncConvertTime(&v257, &time[0].start, v10, v11);
  memset(&v256, 0, sizeof(v256));
  FigHapticPlayerGetOutputTimeRange(a2, &v256);
  OUTLINED_FUNCTION_7_35(v12, v13, v14, v15, v16, v17, v18, v19, v211, v227, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value, *&time1.timescale, time1.epoch, v250, *(&v250 + 1), v251, 0, 0, 0, v253, 0, 0, 0, v255, v256.start.value, *&v256.start.timescale, v256.start.epoch, v256.duration.value, *&v256.duration.timescale, v256.duration.epoch, *&v257.value);
  OUTLINED_FUNCTION_17_19(v20, v21, v22, v23, v24, v25, v26, v27, v212, v228, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value, *&time1.timescale, time1.epoch, v250, *(&v250 + 1), v251, v252.value, *&v252.timescale, v252.epoch, v253, v254.value, *&v254.timescale, v254.epoch, v255, *&v256.start.value);
  v36 = OUTLINED_FUNCTION_11_29(v28, v29, v30, v31, v32, v33, v34, v35, v213, v229, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value, *&time1.timescale, time1.epoch, v250, *(&v250 + 1), v251, v252.value, *&v252.timescale, v252.epoch, v253, v254.value, *&v254.timescale, v254.epoch, v255, v256.start.value, *&v256.start.timescale, v256.start.epoch, v256.duration.value, *&v256.duration.timescale, v256.duration.epoch, v257.value, *&v257.timescale, v257.epoch, v258.value, *&v258.timescale, v258.epoch, v259.value, *&v259.timescale, v259.epoch, v260, v261, v262, *v263, *&v263[8], *&v263[16], *&v263[24], v264, v265, *(&v265 + 1), v266, time[0].start.value);
  v38 = CMTimeCompare(v36, v37);
  if ((v38 & 0x80000000) == 0)
  {
    *&time[0].start.timescale = *&v256.start.timescale;
    *&time[0].start.epoch = *&v256.start.epoch;
    *&time[0].duration.timescale = *&v256.duration.timescale;
    v46 = OUTLINED_FUNCTION_11_29(v38, v39, v40, v41, v42, v43, v44, v45, v214, v230, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value, *&time1.timescale, time1.epoch, v250, *(&v250 + 1), v251, v252.value, *&v252.timescale, v252.epoch, v253, v254.value, *&v254.timescale, v254.epoch, v255, v256.start.value, *&v256.start.timescale, v256.start.epoch, v256.duration.value, *&v256.duration.timescale, v256.duration.epoch, v257.value, *&v257.timescale, v257.epoch, v258.value, *&v258.timescale, v258.epoch, v257.value, *&v257.timescale, v257.epoch, v260, v261, v262, *v263, *&v263[8], *&v263[16], *&v263[24], v264, v265, *(&v265 + 1), v266, v256.start.value);
    v48 = CMTimeRangeContainsTime(v46, v47);
    if (v48)
    {
      OUTLINED_FUNCTION_7_35(v48, v49, v50, v51, v52, v53, v54, v55, v215, v231, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value, *&time1.timescale, time1.epoch, v250, *(&v250 + 1), v251, v258.value, *&v258.timescale, v258.epoch, v253, v254.value, *&v254.timescale, v254.epoch, v255, v256.start.value, *&v256.start.timescale, v256.start.epoch, v256.duration.value, *&v256.duration.timescale, v256.duration.epoch, *&v257.value);
      OUTLINED_FUNCTION_17_19(v56, v57, v58, v59, v60, v61, v62, v63, v216, v232, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value, *&time1.timescale, time1.epoch, v250, *(&v250 + 1), v251, v252.value, *&v252.timescale, v252.epoch, v253, v254.value, *&v254.timescale, v254.epoch, v255, *&v256.start.value);
      v72 = OUTLINED_FUNCTION_11_29(v64, v65, v66, v67, v68, v69, v70, v71, v217, v233, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value, *&time1.timescale, time1.epoch, v250, *(&v250 + 1), v251, v252.value, *&v252.timescale, v252.epoch, v253, v254.value, *&v254.timescale, v254.epoch, v255, v256.start.value, *&v256.start.timescale, v256.start.epoch, v256.duration.value, *&v256.duration.timescale, v256.duration.epoch, v257.value, *&v257.timescale, v257.epoch, v258.value, *&v258.timescale, v258.epoch, v259.value, *&v259.timescale, v259.epoch, v260, v261, v262, *v263, *&v263[8], *&v263[16], *&v263[24], v264, v265, *(&v265 + 1), v266, time[0].start.value);
      v75 = CMTimeSubtract(v74, v72, v73);
      goto LABEL_6;
    }

LABEL_15:
    v153 = 0;
    started = 0;
    if (!a3)
    {
      return started;
    }

    goto LABEL_36;
  }

  v83 = *(a1 + 32);
  v84 = CMClockGetHostTimeClock();
  OUTLINED_FUNCTION_16_20(v84, v85, v84, v86, v87, v88, v89, v90, v214, v230, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value, *&time1.timescale, time1.epoch, v250, *(&v250 + 1), v251, v252.value, *&v252.timescale, v252.epoch, v253, v254.value, *&v254.timescale, v254.epoch, v255, *&v256.start.value);
  v75 = CMSyncConvertTime(&v252, &time[0].start, v83, v91);
  v254 = **&MEMORY[0x1E6960CC0];
LABEL_6:
  OUTLINED_FUNCTION_5_52(v75, v76, v77, v78, v79, v80, v81, v82, v218, v234, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value, *&time1.timescale, time1.epoch, 0, 0, 0, *&v252.value);
  v100 = OUTLINED_FUNCTION_11_29(v92, v93, v94, v95, v96, v97, v98, v99, v219, v235, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value, *&time1.timescale, time1.epoch, v250, *(&v250 + 1), v251, v252.value, *&v252.timescale, v252.epoch, v253, v254.value, *&v254.timescale, v254.epoch, v255, v256.start.value, *&v256.start.timescale, v256.start.epoch, v256.duration.value, *&v256.duration.timescale, v256.duration.epoch, v257.value, *&v257.timescale, v257.epoch, v258.value, *&v258.timescale, v258.epoch, v258.value, *&v258.timescale, v258.epoch, v260, v261, v262, *v263, *&v263[8], *&v263[16], *&v263[24], v264, v265, *(&v265 + 1), v266, time[0].start.value);
  v103 = CMTimeSubtract(v102, v100, v101);
  v111 = *(a1 + 88);
  if (v111 < 10)
  {
    v112 = 1;
  }

  else
  {
    v112 = 2;
  }

  *(a1 + 88) = v111 + 1;
  if (v112 <= dword_1EAF17040)
  {
    v113 = OUTLINED_FUNCTION_1_73();
    v114 = os_log_type_enabled(v113, type.value);
    if (v114)
    {
      value = time1.value;
    }

    else
    {
      value = time1.value & 0xFFFFFFFE;
    }

    if (value)
    {
      v122 = *(a1 + 88);
      OUTLINED_FUNCTION_16_20(v114, v115, v116, v117, v118, v119, v120, v121, v220, v236, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value, *&time1.timescale, time1.epoch, v250, *(&v250 + 1), v251, v252.value, *&v252.timescale, v252.epoch, v253, v254.value, *&v254.timescale, v254.epoch, v255, *&v256.start.value);
      Seconds = CMTimeGetSeconds(&time[0].start);
      time[0] = v256;
      CMTimeRangeGetEnd(&v259, time);
      v124 = CMTimeGetSeconds(&v259);
      OUTLINED_FUNCTION_5_52(v125, v126, v127, v128, v129, v130, v131, v132, v221, v237, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value, *&time1.timescale, time1.epoch, v250, *(&v250 + 1), v251, *&v252.value);
      v133 = CMTimeGetSeconds(&time[0].start);
      OUTLINED_FUNCTION_13_21(v134, v135, v136, v137, v138, v139, v140, v141, v222, v238, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value, *&time1.timescale, time1.epoch, v250);
      v142 = CMTimeGetSeconds(&time[0].start) * 1000.0;
      OUTLINED_FUNCTION_7_35(v143, v144, v145, v146, v147, v148, v149, v150, v223, v239, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value, *&time1.timescale, time1.epoch, v250, *(&v250 + 1), v251, v252.value, *&v252.timescale, v252.epoch, v253, v254.value, *&v254.timescale, v254.epoch, v255, v256.start.value, *&v256.start.timescale, v256.start.epoch, v256.duration.value, *&v256.duration.timescale, v256.duration.epoch, *&v257.value);
      v151 = CMTimeGetSeconds(&time[0].start);
      time[0].start = v254;
      v152 = CMTimeGetSeconds(&time[0].start);
      LODWORD(v259.value) = 136317442;
      *(&v259.value + 4) = "fhq_scheduleHapticPlayer";
      LOWORD(v259.flags) = 2112;
      *(&v259.flags + 2) = a1;
      HIWORD(v259.epoch) = 2112;
      v260 = a2;
      LOWORD(v261) = 1024;
      *(&v261 + 2) = v122;
      HIWORD(v261) = 2048;
      v262 = *&Seconds;
      *v263 = 2048;
      *&v263[2] = v124;
      *&v263[10] = 2048;
      *&v263[12] = v133;
      *&v263[20] = 2048;
      *&v263[22] = v142;
      *&v263[30] = 2048;
      v264 = *&v151;
      LOWORD(v265) = 2048;
      *(&v265 + 2) = v152 * 1000.0;
      LODWORD(v236) = 98;
      v220 = &v259;
      OUTLINED_FUNCTION_7_1();
    }

    OUTLINED_FUNCTION_7();
    v103 = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  OUTLINED_FUNCTION_13_21(v103, v104, v105, v106, v107, v108, v109, v110, v220, v236, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value, *&time1.timescale, time1.epoch, v250);
  v163 = OUTLINED_FUNCTION_11_29(v155, v156, v157, v158, v159, v160, v161, v162, v224, v240, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value, *&time1.timescale, time1.epoch, v250, *(&v250 + 1), v251, v252.value, *&v252.timescale, v252.epoch, v253, v254.value, *&v254.timescale, v254.epoch, v255, v256.start.value, *&v256.start.timescale, v256.start.epoch, v256.duration.value, *&v256.duration.timescale, v256.duration.epoch, v257.value, *&v257.timescale, v257.epoch, v258.value, *&v258.timescale, v258.epoch, kFigHapticQueue_HowFarIntoTheFutureToSubmit, *(&kFigHapticQueue_HowFarIntoTheFutureToSubmit + 1), 0, v260, v261, v262, *v263, *&v263[8], *&v263[16], *&v263[24], v264, v265, *(&v265 + 1), v266, time[0].start.value);
  if (CMTimeCompare(v163, v164) <= 0)
  {
    if (dword_1EAF17040 >= 2)
    {
      v176 = OUTLINED_FUNCTION_1_73();
      OUTLINED_FUNCTION_19_22(v176, v177, v178, v179, v180, v181, v182, v183, v225, v241, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value);
      OUTLINED_FUNCTION_121();
      if (v174)
      {
        v185 = v184;
      }

      else
      {
        v185 = value;
      }

      if (v185)
      {
        LODWORD(v259.value) = 136315650;
        OUTLINED_FUNCTION_4_58("fhq_scheduleHapticPlayer");
        OUTLINED_FUNCTION_7_1();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
    }

    FigHapticPlayerSetPlaybackRate(a2, v8);
    OUTLINED_FUNCTION_5_52(*(a1 + 24), v203, v204, v205, v206, v207, v208, v209, v225, v241, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value, *&time1.timescale, time1.epoch, v250, *(&v250 + 1), v251, *&v252.value);
    v259 = v254;
    started = FigHapticEngineStartPlayerAtHostTimeWithOffset(v210, a2, &time[0].start.value, &v259.value);
    if (!started)
    {
      CFArrayAppendValue(*(a1 + 80), a2);
    }

    v153 = 0;
    if (a3)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (dword_1EAF17040 >= 2)
    {
      v165 = OUTLINED_FUNCTION_1_73();
      OUTLINED_FUNCTION_19_22(v165, v166, v167, v168, v169, v170, v171, v172, v225, v241, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time1.value);
      OUTLINED_FUNCTION_121();
      if (v174)
      {
        v175 = v173;
      }

      else
      {
        v175 = value;
      }

      if (v175)
      {
        LODWORD(v259.value) = 136315650;
        OUTLINED_FUNCTION_4_58("fhq_scheduleHapticPlayer");
        OUTLINED_FUNCTION_7_1();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
    }

    memset(time, 0, 24);
    CMBufferQueueGetFirstPresentationTimeStamp(&time[0].start, *(a1 + 64));
    started = CMBufferQueueEnqueue(*(a1 + 64), a2);
    v153 = started == 0;
    if (!started)
    {
      memset(&v259, 0, sizeof(v259));
      FirstPresentationTimeStamp = CMBufferQueueGetFirstPresentationTimeStamp(&v259, *(a1 + 64));
      OUTLINED_FUNCTION_15_23(FirstPresentationTimeStamp, v187, v188, v189, v190, v191, v192, v193, v225, v241, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, time[0].start.value, *&time[0].start.timescale, time[0].start.epoch, v250, *(&v250 + 1), v251, v252.value, *&v252.timescale, v252.epoch, v253, v254.value, *&v254.timescale, v254.epoch, v255, v256.start.value, *&v256.start.timescale, v256.start.epoch, v256.duration.value, *&v256.duration.timescale, v256.duration.epoch, v257.value, *&v257.timescale, v257.epoch, v258.value, *&v258.timescale, v258.epoch, *&v259.value);
      v194 = CMTimeCompare(&time1, &type);
      if (v194)
      {
        OUTLINED_FUNCTION_15_23(v194, v195, v196, v197, v198, v199, v200, v201, v226, v242, v243.value, *&v243.timescale, v243.epoch, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, type.value, *&type.timescale, type.epoch, v248, 0, 0, 0, v250, *(&v250 + 1), v251, v252.value, *&v252.timescale, v252.epoch, v253, v254.value, *&v254.timescale, v254.epoch, v255, v256.start.value, *&v256.start.timescale, v256.start.epoch, v256.duration.value, *&v256.duration.timescale, v256.duration.epoch, v257.value, *&v257.timescale, v257.epoch, v258.value, *&v258.timescale, v258.epoch, *&v259.value);
        rhs = v257;
        CMTimeSubtract(&time1, &type, &rhs);
        memset(&type, 0, sizeof(type));
        rhs = time1;
        *&v243.value = kFigHapticQueue_HowEarlyToWakeup;
        v243.epoch = 0;
        CMTimeSubtract(&type, &rhs, &v243);
        rhs = type;
        fhq_rescheduleWaitingPlayersAfterTime(a1, &rhs);
      }
    }

    if (a3)
    {
LABEL_36:
      *a3 = v153;
    }
  }

  return started;
}

uint64_t FigHapticQueueCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigHapticQueueCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigHapticQueueCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataHasKey(const void *a1, const __CFString *a2, void *a3)
{
  values[1] = *MEMORY[0x1E69E9840];
  v17 = 0;
  theArray = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || !a3 || !a2 || (v7 = DerivedStorage, CFStringGetLength(a2) != 4))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM();
LABEL_20:
    v14 = 0;
    goto LABEL_21;
  }

  if (metadataCreateNativeKeySpaceAndKeys(a2, a3, &v17, &theArray))
  {
    goto LABEL_20;
  }

  v8 = theArray;
  if (!CFArrayGetCount(theArray))
  {
    goto LABEL_20;
  }

  Count = CFArrayGetCount(v8);
  if (!Count)
  {
    goto LABEL_20;
  }

  v10 = Count;
  v11 = 0;
  v12 = v17;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (!FigQuickTimeMetadataCopyKeyPosSet(a1, v12, ValueAtIndex, &cf) && CFSetGetCount(cf) == 1)
    {
      CFSetGetValues(cf, values);
      if (FigQuickTimeMetadataIsKeyPosInUse(v7, values[0], 0))
      {
        break;
      }
    }

    if (v10 == ++v11)
    {
      v14 = 0;
      goto LABEL_17;
    }
  }

  v14 = 1;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_21:
  if (v17)
  {
    CFRelease(v17);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v14;
}

uint64_t FigQuickTimeMetadataGetKeyCount(uint64_t a1, const __CFString *a2)
{
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_27;
  }

  v4 = DerivedStorage;
  if (a2)
  {
    if (CFStringGetLength(a2) == 4 && !CFEqual(a2, @"comn"))
    {
      v5 = FigQuickTimeMetadataStringToOSType(a2);
      goto LABEL_7;
    }

LABEL_27:
    OUTLINED_FUNCTION_239();
    v6 = 0;
    if (!FigSignalErrorAtGM())
    {
      return v6;
    }

    return 0;
  }

  v5 = 0;
LABEL_7:
  OUTLINED_FUNCTION_11_30();
  if (!*(v4 + 48))
  {
    inited = FigQuickTimeMetadataInitKeyListAtomStreamAndEntryCount(v4, v13, &v12);
    v6 = 0;
    v14 = inited;
    if (inited || !v12)
    {
LABEL_25:
      if (!inited)
      {
        return v6;
      }
    }

    else
    {
      v6 = 0;
      v9 = 1;
      while (1)
      {
        v14 = OUTLINED_FUNCTION_14_23();
        if (v14)
        {
          break;
        }

        if (!a2 || HIDWORD(v12) == v5)
        {
          IsKeyPosInUse = FigQuickTimeMetadataIsKeyPosInUse(v4, v9, &v14);
          if (v14)
          {
            return 0;
          }

          v6 += IsKeyPosInUse;
        }

        inited = FigAtomStreamAdvanceToNextAtom();
        if (inited == -12890)
        {
          inited = v14;
LABEL_24:
          *(v4 + 48) = 1;
          *(v4 + 40) = v6;
          goto LABEL_25;
        }

        v14 = inited;
        if (!inited && v9++ <= v12)
        {
          continue;
        }

        goto LABEL_24;
      }
    }

    return 0;
  }

  return *(v4 + 40);
}

uint64_t FigQuickTimeMetadataCopyKeyAtIndex(uint64_t a1, const __CFString *a2, uint64_t a3, const __CFAllocator *a4, void *a5)
{
  memset(v25, 0, sizeof(v25));
  v23 = 0;
  v24 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || !a5)
  {
    goto LABEL_32;
  }

  v10 = DerivedStorage;
  if (a2)
  {
    if (CFStringGetLength(a2) == 4 && !CFEqual(a2, @"comn"))
    {
      v11 = FigQuickTimeMetadataStringToOSType(a2);
      goto LABEL_7;
    }

LABEL_32:
    OUTLINED_FUNCTION_376();
    goto LABEL_33;
  }

  v11 = 0;
LABEL_7:
  v26[0] = FigQuickTimeMetadataInitKeyListAtomStreamAndEntryCount(v10, v25, &v23 + 1);
  if (v26[0])
  {
    return v26[0];
  }

  if (HIDWORD(v23) <= a3)
  {
LABEL_27:
    OUTLINED_FUNCTION_376();
LABEL_33:
    v26[0] = FigSignalErrorAtGM();
    return v26[0];
  }

  v12 = 0;
  v13 = 1;
  while (1)
  {
    v26[0] = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (v26[0])
    {
      return v26[0];
    }

    if (!a2 || v23 == v11)
    {
      IsKeyPosInUse = FigQuickTimeMetadataIsKeyPosInUse(v10, v13, v26);
      if (v26[0])
      {
        return v26[0];
      }

      if (IsKeyPosInUse)
      {
        if (v12 == a3)
        {
          if (v24 < 1)
          {
            *a5 = CFRetain(&stru_1F0B1AFB8);
            return v26[0];
          }

          OUTLINED_FUNCTION_613();
          v26[0] = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
          if (v26[0])
          {
            return v26[0];
          }

          OUTLINED_FUNCTION_613();
          v26[0] = CMBlockBufferGetDataPointer(v17, v18, v19, 0, v20);
          if (v26[0])
          {
            return v26[0];
          }

          v21 = OUTLINED_FUNCTION_9_29(a4, 0, v24);
          *a5 = v21;
          if (v21)
          {
            return v26[0];
          }

          goto LABEL_27;
        }

        ++v12;
      }
    }

    Atom = FigAtomStreamAdvanceToNextAtom();
    if (Atom != -12890)
    {
      v26[0] = Atom;
      if (!Atom && v13++ <= HIDWORD(v23))
      {
        continue;
      }
    }

    return v26[0];
  }
}

uint64_t FigQuickTimeMetadataGetItemCount(const void *a1, const __CFString *a2, void *a3)
{
  v18 = 0;
  v19[0] = 0;
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigSignalErrorAtGM();
    goto LABEL_22;
  }

  v7 = DerivedStorage;
  if (*(DerivedStorage + 32) < 1 || metadataCreateNativeKeySpaceAndKeys(a2, a3, &v18, v19))
  {
    goto LABEL_22;
  }

  v8 = v19[0];
  v9 = 0;
  if (!CFArrayGetCount(v19[0]) || !v8)
  {
    goto LABEL_23;
  }

  Count = CFArrayGetCount(v8);
  if (!Count)
  {
LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  v11 = Count;
  v12 = 0;
  v9 = 0;
  v13 = *MEMORY[0x1E695E738];
  v14 = v18;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v12);
    if (CFEqual(ValueAtIndex, v13))
    {
      ValueAtIndex = 0;
    }

    if (v17)
    {
      CFRelease(v17);
      v17 = 0;
    }

    if (!FigQuickTimeMetadataCopyKeyPosSet(a1, v14, ValueAtIndex, &v17))
    {
      break;
    }

LABEL_13:
    if (++v12 == v11)
    {
      goto LABEL_23;
    }
  }

  if (!FigQuickTimeMetadataGetItemListAtomStream(v7))
  {
    while (!OUTLINED_FUNCTION_14_23())
    {
      if (CFSetContainsValue(v17, 0))
      {
        ++v9;
      }

      if (FigAtomStreamAdvanceToNextAtom())
      {
        goto LABEL_13;
      }
    }
  }

LABEL_23:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v19[0])
  {
    CFRelease(v19[0]);
  }

  return v9;
}

unint64_t FigQuickTimeMetadataCopyItemWithKeyAndIndex(const void *a1, const __CFString *a2, void *a3, uint64_t a4, const __CFAllocator *a5, unint64_t a6, unint64_t a7)
{
  theArray = 0;
  v162 = 0;
  cf = 0;
  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v148 = 0u;
  memset(&v147[1] + 4, 0, 20);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v147[0] = 0;
  if (!DerivedStorage)
  {
    goto LABEL_311;
  }

  if (!(a6 | a7))
  {
    OUTLINED_FUNCTION_10_29();
    ItemListAtomStream = FigSignalErrorAtGM();
    goto LABEL_310;
  }

  v16 = DerivedStorage;
  if (*(DerivedStorage + 32) <= 0)
  {
LABEL_311:
    OUTLINED_FUNCTION_10_29();
    i = FigSignalErrorAtGM();
    Count = 0;
    v27 = 0;
    Mutable = 0;
    if (i)
    {
      goto LABEL_315;
    }

    goto LABEL_298;
  }

  ItemListAtomStream = metadataCreateNativeKeySpaceAndKeys(a2, a3, &v162, &theArray);
  if (ItemListAtomStream)
  {
LABEL_310:
    i = ItemListAtomStream;
    Count = 0;
    v27 = 0;
    goto LABEL_302;
  }

  v143 = v16;
  v145 = a6;
  v18 = theArray;
  if (!CFArrayGetCount(theArray))
  {
    Count = 0;
    goto LABEL_314;
  }

  Count = CFArrayGetCount(v18);
  if (!Count)
  {
LABEL_314:
    v27 = 0;
    Mutable = 0;
    i = 4294954689;
    goto LABEL_315;
  }

  v139 = v7;
  v140 = a3;
  allocator = a5;
  v141 = a7;
  v20 = 0;
  LODWORD(i) = 0;
  v22 = 0;
  v23 = *MEMORY[0x1E695E738];
  v24 = v162;
LABEL_8:
  ValueAtIndex = CFArrayGetValueAtIndex(v18, v20);
  v146 = ValueAtIndex;
  if (CFEqual(ValueAtIndex, v23))
  {
    ValueAtIndex = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (FigQuickTimeMetadataCopyKeyPosSet(a1, v24, ValueAtIndex, &cf))
  {
    goto LABEL_13;
  }

  v142 = ValueAtIndex;
  ItemListAtomStream = FigQuickTimeMetadataGetItemListAtomStream(v143);
  if (ItemListAtomStream)
  {
    goto LABEL_310;
  }

  while (1)
  {
    ItemListAtomStream = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (ItemListAtomStream)
    {
      goto LABEL_310;
    }

    if (!CFSetContainsValue(cf, HIDWORD(v147[1])))
    {
      goto LABEL_20;
    }

    if (v22 == a4)
    {
      break;
    }

    ++v22;
LABEL_20:
    Atom = FigAtomStreamAdvanceToNextAtom();
    if (Atom)
    {
      if (Atom == -12890)
      {
        LODWORD(i) = 0;
      }

      else
      {
        LODWORD(i) = Atom;
      }

LABEL_13:
      if (++v20 == Count)
      {
        Count = 0;
        v27 = 0;
        Mutable = 0;
        if (i)
        {
          i = i;
        }

        else
        {
          i = 4294954689;
        }

        goto LABEL_315;
      }

      goto LABEL_8;
    }
  }

  v29 = FigAtomStreamInitWithParent();
  if (v29)
  {
    i = v29;
    goto LABEL_247;
  }

  v30 = allocator;
  i = v145;
  valuePtr = 0;
  v31 = v147;
  if (!v145)
  {
    v31 = 0;
  }

  v132 = v31;
  v171 = 0;
  *&v172[0] = 0;
  v169 = 0;
  v170 = 0;
  a7 = v141;
  if (v141)
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v145)
    {
      goto LABEL_32;
    }
  }

  else
  {
    Mutable = 0;
    if (v145)
    {
LABEL_32:
      v147[0] = 0;
    }
  }

  v32 = 0;
  v33 = 0;
  OUTLINED_FUNCTION_6_48();
  v138 = *v34;
  v137 = @"dataTypeNamespace";
  v136 = @"com.apple.quicktime.mdta";
  v134 = @"extendedLanguageTag";
  key = @"name";
  v35 = *MEMORY[0x1E695E480];
  v133 = @"locale";
  v131 = @"dataLength";
  while (2)
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_233;
    }

    if (HIDWORD(valuePtr) == a4)
    {
      v165 = 0;
      if (*&v172[0] < 8uLL)
      {
        goto LABEL_228;
      }

      OUTLINED_FUNCTION_613();
      BBuf = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
      if (BBuf)
      {
        goto LABEL_331;
      }

      BBuf = OUTLINED_FUNCTION_3_56();
      if (BBuf)
      {
        goto LABEL_331;
      }

      v44 = v170;
      v45 = *v170;
      v46 = *(v170 + 2);
      v47 = *(v170 + 3);
      v48 = bswap32(*v170);
      LODWORD(valuePtr) = v48;
      if (!v145 || HIBYTE(v48))
      {
        if (v145)
        {
          goto LABEL_228;
        }

        goto LABEL_159;
      }

      a4 = (v170 + 8);
      v49 = *&v172[0] - 8;
      v165 = *&v172[0] - 8;
      switch(v48)
      {
        case 'A':
          if (*&v172[0] != 9)
          {
            goto LABEL_228;
          }

          SInt8 = FigCFNumberCreateSInt8();
          goto LABEL_142;
        case 'B':
          if (*&v172[0] != 10)
          {
            goto LABEL_228;
          }

          SInt8 = OUTLINED_FUNCTION_17_20();
          goto LABEL_142;
        case 'C':
          if (*&v172[0] != 12)
          {
            goto LABEL_228;
          }

          OUTLINED_FUNCTION_1_74();
          SInt8 = FigCFNumberCreateSInt32();
          goto LABEL_142;
        case 'D':
        case 'E':
        case 'I':
        case 'R':
          goto LABEL_110;
        case 'F':
          if (*&v172[0] != 16)
          {
            goto LABEL_228;
          }

          v174.x = OUTLINED_FUNCTION_2_72();
          SInt8 = CGPointCreateDictionaryRepresentation(v174);
          if (!SInt8)
          {
            goto LABEL_330;
          }

          goto LABEL_142;
        case 'G':
          if (*&v172[0] != 16)
          {
            goto LABEL_228;
          }

          v175.width = OUTLINED_FUNCTION_2_72();
          SInt8 = CGSizeCreateDictionaryRepresentation(v175);
          if (!SInt8)
          {
            goto LABEL_330;
          }

          goto LABEL_142;
        case 'H':
          if (*&v172[0] != 24)
          {
            goto LABEL_228;
          }

          v176.origin.x = COERCE_FLOAT(bswap32(*(v170 + 2)));
          v176.origin.y = COERCE_FLOAT(bswap32(*(v170 + 3)));
          v176.size.width = COERCE_FLOAT(bswap32(*(v170 + 4)));
          v176.size.height = COERCE_FLOAT(bswap32(*(v170 + 5)));
          SInt8 = CGRectCreateDictionaryRepresentation(v176);
          if (!SInt8)
          {
            goto LABEL_330;
          }

          goto LABEL_142;
        case 'J':
          if (*&v172[0] != 16)
          {
            goto LABEL_228;
          }

          OUTLINED_FUNCTION_5_53();
          SInt8 = FigCFNumberCreateSInt64();
          goto LABEL_142;
        case 'K':
          if (*&v172[0] != 9)
          {
            goto LABEL_228;
          }

          SInt8 = FigCFNumberCreateUInt8();
          goto LABEL_142;
        case 'L':
          if (*&v172[0] != 10)
          {
            goto LABEL_228;
          }

          OUTLINED_FUNCTION_12_27();
          SInt8 = FigCFNumberCreateUInt16();
          goto LABEL_142;
        case 'M':
          if (*&v172[0] != 12)
          {
            goto LABEL_228;
          }

          OUTLINED_FUNCTION_1_74();
          SInt8 = FigCFNumberCreateUInt32();
          goto LABEL_142;
        case 'N':
          if (*&v172[0] != 16)
          {
            goto LABEL_228;
          }

          OUTLINED_FUNCTION_5_53();
          SInt8 = FigCFNumberCreateUInt64();
LABEL_142:
          v147[0] = SInt8;
          goto LABEL_158;
        case 'O':
        case 'S':
          if (*&v172[0] != 80)
          {
            goto LABEL_228;
          }

          v164 = 0;
          v32 = CFArrayCreateMutable(allocator, 9, MEMORY[0x1E695E9C0]);
          if (!v32)
          {
            goto LABEL_330;
          }

          a4 = 8;
          while (1)
          {
            v164 = bswap64(*&v44[a4]);
            v50 = OUTLINED_FUNCTION_15_24();
            v52 = CFNumberCreate(v50, kCFNumberDoubleType, v51);
            if (!v52)
            {
              goto LABEL_330;
            }

            i = v52;
            CFArrayAppendValue(v32, v52);
            CFRelease(i);
            a4 += 8;
            if (a4 == 80)
            {
              goto LABEL_156;
            }
          }

        case 'P':
        case 'Q':
          if (((v49 >> 1) & 0x7FFFFFFFFFFFFFFCLL) == v49)
          {
            goto LABEL_228;
          }

          if ((v45 != 1342177280 || v49 <= 0x17) && (v45 != 1358954496 || v49 < 0x10))
          {
            goto LABEL_228;
          }

          i = v49 >> 3;
          v32 = CFArrayCreateMutable(allocator, v49 >> 3, MEMORY[0x1E695E9C0]);
          if (!v32)
          {
            goto LABEL_330;
          }

          do
          {
            v173.x = OUTLINED_FUNCTION_2_72();
            DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v173);
            if (!DictionaryRepresentation)
            {
              goto LABEL_330;
            }

            v70 = DictionaryRepresentation;
            CFArrayAppendValue(v32, DictionaryRepresentation);
            CFRelease(v70);
            LODWORD(a4) = a4 + 8;
            --i;
          }

          while (i);
LABEL_156:
          v79 = v32;
          goto LABEL_157;
        case 'T':
          if (*&v172[0] != 20)
          {
            goto LABEL_228;
          }

          v32 = CFArrayCreateMutable(allocator, 6, MEMORY[0x1E695E9C0]);
          if (!v32)
          {
            goto LABEL_330;
          }

          for (i = 0; i != 12; i += 2)
          {
            OUTLINED_FUNCTION_12_27();
            FigCFArrayAppendInt32();
          }

          goto LABEL_156;
        case 'U':
          if (v49 < 0xC)
          {
            goto LABEL_228;
          }

          v32 = CFArrayCreateMutable(allocator, 6, MEMORY[0x1E695E9C0]);
          if (!v32)
          {
            goto LABEL_330;
          }

          for (i = 0; i != 12; i += 2)
          {
            OUTLINED_FUNCTION_12_27();
            FigCFArrayAppendInt32();
          }

          if (v165 < 0xD)
          {
            goto LABEL_156;
          }

          v75 = v44[20];
          i = v75 >> 4;
          LODWORD(a4) = v75 & 0xF;
          if (i == 1 || a4 == 1)
          {
            goto LABEL_330;
          }

          FigCFArrayAppendInt32();
          FigCFArrayAppendInt32();
          v77 = i + a4;
          if (v165 < (4 * (i + a4) + 13))
          {
            goto LABEL_330;
          }

          if (v77)
          {
            i = (2 * v77);
            v78 = v44 + 21;
            do
            {
              v78 += 2;
              OUTLINED_FUNCTION_12_27();
              FigCFArrayAppendInt32();
              --i;
            }

            while (i);
          }

          goto LABEL_156;
        default:
          switch(v48)
          {
            case 0x15u:
              i = 4294954687;
              switch(*&v172[0])
              {
                case 9:
                  SInt32 = FigCFNumberCreateSInt8();
                  break;
                case 0xALL:
                  SInt32 = OUTLINED_FUNCTION_17_20();
                  break;
                case 0xCLL:
                  OUTLINED_FUNCTION_1_74();
                  SInt32 = FigCFNumberCreateSInt32();
                  break;
                case 0x10:
                  OUTLINED_FUNCTION_5_53();
                  SInt32 = FigCFNumberCreateSInt64();
                  break;
                default:
                  goto LABEL_229;
              }

              v147[0] = SInt32;
              OUTLINED_FUNCTION_6_48();
              if (!v107)
              {
                goto LABEL_330;
              }

              goto LABEL_159;
            case 0x16u:
              i = 4294954687;
              switch(*&v172[0])
              {
                case 9:
                  UInt8 = FigCFNumberCreateUInt8();
                  break;
                case 0xALL:
                  OUTLINED_FUNCTION_12_27();
                  UInt8 = FigCFNumberCreateUInt16();
                  break;
                case 0xCLL:
                  OUTLINED_FUNCTION_1_74();
                  UInt8 = FigCFNumberCreateUInt32();
                  break;
                case 0x10:
                  OUTLINED_FUNCTION_5_53();
                  UInt8 = FigCFNumberCreateUInt64();
                  break;
                default:
                  goto LABEL_229;
              }

              v147[0] = UInt8;
              OUTLINED_FUNCTION_6_48();
              if (!v108)
              {
                goto LABEL_330;
              }

              goto LABEL_159;
            case 0x17u:
              if (*&v172[0] != 12)
              {
                goto LABEL_228;
              }

              LODWORD(v164) = bswap32(*a4);
              v92 = OUTLINED_FUNCTION_15_24();
              v147[0] = CFNumberCreate(v92, kCFNumberFloat32Type, v93);
              if (!v147[0])
              {
                goto LABEL_330;
              }

              goto LABEL_158;
            case 0x18u:
              if (*&v172[0] != 16)
              {
                goto LABEL_228;
              }

              v164 = bswap64(*a4);
              v94 = OUTLINED_FUNCTION_15_24();
              v147[0] = CFNumberCreate(v94, kCFNumberFloat64Type, v95);
              if (!v147[0])
              {
                goto LABEL_330;
              }

              goto LABEL_158;
            case 0x19u:
            case 0x1Au:
            case 0x1Bu:
            case 0x1Du:
              goto LABEL_110;
            case 0x1Cu:
              BBuf = FigAtomStreamGetCurrentAtomDataGlobalOffset();
              if (BBuf)
              {
                goto LABEL_331;
              }

              FigMetadataReaderCreateForQuickTimeMetadata(allocator, *v143, v169, v147);
              OUTLINED_FUNCTION_6_48();
              if (BBuf)
              {
                goto LABEL_331;
              }

              goto LABEL_159;
            case 0x1Eu:
              if (*&v172[0] != 24)
              {
                goto LABEL_228;
              }

              LODWORD(v164) = 0;
              v33 = CFDictionaryCreateMutable(allocator, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (!v33)
              {
                goto LABEL_330;
              }

              for (j = 0; j != 4; ++j)
              {
                LODWORD(v164) = bswap32(*(a4 + 4 * j));
                v98 = OUTLINED_FUNCTION_15_24();
                v100 = CFNumberCreate(v98, kCFNumberSInt32Type, v99);
                if (!v100)
                {
                  goto LABEL_330;
                }

                i = v100;
                CFDictionarySetValue(v33, off_1E7485E30[j], v100);
                CFRelease(i);
              }

              v79 = v33;
LABEL_157:
              *v132 = CFRetain(v79);
              goto LABEL_158;
            default:
              if (v48 == 3)
              {
                v104 = OUTLINED_FUNCTION_16_21(BBuf, v38, v49, v39, v40, v41, v42, v43, v127, v128, v129, v130, v131, v132, v133, v134, key, v136, v137, v138, v139, v140, v141, v142, v143, allocator);
                v147[0] = CFStringCreateWithBytes(v104, v105, v106, 0, 0);
                if (v147[0])
                {
LABEL_158:
                  OUTLINED_FUNCTION_6_48();
LABEL_159:
                  if (Mutable)
                  {
                    if (v46 | v47)
                    {
                      LODWORD(v164) = 0;
                      i = bswap32(v47) >> 16;
                      v168 = 0;
                      v167 = 0;
                      if (i >= 0x100)
                      {
                        LOBYTE(v164) = (i >> 10) | 0x60;
                        BYTE1(v164) = (i >> 5) & 0x1F | 0x60;
                        BYTE2(v164) = i & 0x1F | 0x60;
                      }

                      v80 = __rev16(v46);
                      if (v80 >= 0x100)
                      {
                        v167 = __rev16(v80);
                      }

                      v81 = "";
                      v82 = &v164;
                      if (v47)
                      {
                        v83 = v46 == 0;
                      }

                      else
                      {
                        v82 = "";
                        v83 = 1;
                      }

                      v84 = "_";
                      if (v83)
                      {
                        v84 = "";
                      }

                      if (v46)
                      {
                        v81 = &v167;
                      }

                      v85 = CFStringCreateWithFormat(allocator, 0, @"%s%s%s", v82, v84, v81);
                      if (v85)
                      {
                        v86 = v85;
                        a4 = CFLocaleCreate(allocator, v85);
                        CFRelease(v86);
                        if (a4)
                        {
                          CFDictionaryAddValue(Mutable, v133, a4);
                          CFRelease(a4);
                        }
                      }

                      FigQuickTimeMetadataCreateExtendedLanguageTag(allocator, v80, i);
                      OUTLINED_FUNCTION_6_48();
                      if (v87)
                      {
                        v88 = OUTLINED_FUNCTION_29_1();
                        CFDictionaryAddValue(v88, v134, i);
                        CFRelease(i);
                      }
                    }

                    if (!BYTE3(valuePtr))
                    {
                      if (CFNumberCreate(v35, kCFNumberSInt32Type, &valuePtr))
                      {
                        v89 = OUTLINED_FUNCTION_29_1();
                        CFDictionaryAddValue(v89, v138, i);
                        CFDictionaryAddValue(Mutable, v137, v136);
                        CFRelease(i);
                        if (v165 >= 1 && (valuePtr - 21) <= 1 && CFNumberCreate(v35, kCFNumberSInt64Type, &v165))
                        {
                          v90 = OUTLINED_FUNCTION_29_1();
                          CFDictionaryAddValue(v90, v131, i);
                          CFRelease(i);
                        }
                      }
                    }
                  }

                  v30 = allocator;
                  goto LABEL_185;
                }

LABEL_330:
                OUTLINED_FUNCTION_9_22();
                BBuf = FigSignalErrorAtGM();
LABEL_331:
                i = BBuf;
              }

              else
              {
                if (v48 != 2)
                {
                  if (v48 == 1)
                  {
                    v64 = OUTLINED_FUNCTION_16_21(BBuf, v38, v49, v39, v40, v41, v42, v43, v127, v128, v129, v130, v131, v132, v133, v134, key, v136, v137, v138, v139, v140, v141, v142, v143, allocator);
                    v147[0] = OUTLINED_FUNCTION_9_29(v64, v65, v66);
                    if (!v147[0])
                    {
                      goto LABEL_330;
                    }
                  }

                  else
                  {
LABEL_110:
                    v71 = OUTLINED_FUNCTION_16_21(BBuf, v38, v49, v39, v40, v41, v42, v43, v127, v128, v129, v130, v131, v132, v133, v134, key, v136, v137, v138, v139, v140, v141, v142, v143, allocator);
                    v147[0] = CFDataCreate(v71, v72, v73);
                    if (!v147[0])
                    {
                      goto LABEL_330;
                    }
                  }

                  goto LABEL_158;
                }

                if (v49 >= 2)
                {
                  v101 = OUTLINED_FUNCTION_16_21(BBuf, v38, v49, v39, v40, v41, v42, v43, v127, v128, v129, v130, v131, v132, v133, v134, key, v136, v137, v138, v139, v140, v141, v142, v143, allocator);
                  v147[0] = CFStringCreateWithBytes(v101, v102, v103, 0x10000100u, 0);
                  if (!v147[0])
                  {
                    goto LABEL_330;
                  }

                  goto LABEL_158;
                }

LABEL_228:
                i = 4294954687;
              }

LABEL_229:
              v30 = allocator;
              goto LABEL_234;
          }
      }
    }

    if (Mutable && HIDWORD(valuePtr) == 1851878757)
    {
      if (*&v172[0] < 4uLL)
      {
        i = 4294954687;
        goto LABEL_234;
      }

      if (*&v172[0] != 4)
      {
        CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_233;
        }

        CurrentAtomTypeAndDataLength = OUTLINED_FUNCTION_3_56();
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_233;
        }

        if (!OUTLINED_FUNCTION_9_29(v30, v170, *&v172[0] - 4))
        {
          goto LABEL_232;
        }

        v53 = OUTLINED_FUNCTION_29_1();
        CFDictionaryAddValue(v53, key, i);
        CFRelease(i);
      }

LABEL_185:
      if (v171)
      {
        CFRelease(v171);
      }

      v171 = 0;
      v91 = FigAtomStreamAdvanceToNextAtom();
      if (v91)
      {
        i = v91;
        if (v91 == -12890)
        {
          if (v145)
          {
            if (v147[0])
            {
              i = 0;
            }

            else
            {
              i = 4294954689;
            }
          }

          else
          {
            i = 0;
          }
        }

        goto LABEL_234;
      }

      continue;
    }

    break;
  }

  if (HIDWORD(valuePtr) != a4 + 196608)
  {
    goto LABEL_185;
  }

  if (*&v172[0] <= 0xBuLL)
  {
    goto LABEL_232;
  }

  OUTLINED_FUNCTION_613();
  CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
  if (CurrentAtomTypeAndDataLength)
  {
    goto LABEL_233;
  }

  CurrentAtomTypeAndDataLength = OUTLINED_FUNCTION_3_56();
  if (CurrentAtomTypeAndDataLength)
  {
    goto LABEL_233;
  }

  v54 = *v170;
  LODWORD(a4) = *(v170 + 2);
  v55 = *(v170 + 3);
  v56 = v170[8];
  v57 = *(v170 + 9);
  LODWORD(valuePtr) = bswap32(*v170);
  if (!v54 && !v57)
  {
    v58 = v56 >> 4;
    v59 = v56 < 0x10u || v58 == 4;
    if (v59 || v58 == 8)
    {
      v61 = v56 & 0xF;
      if (v61 <= 8 && ((1 << v61) & 0x111) != 0 && *&v172[0] - 11 >= v58 + v61)
      {
        if (v58 == 8)
        {
          i = bswap64(*(v170 + 11));
        }

        else if (v58 == 4)
        {
          i = bswap32(*(v170 + 11));
        }

        else
        {
          i = 0;
        }

        if (v145)
        {
          v33 = CFDictionaryCreateMutable(v30, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!v33)
          {
            goto LABEL_232;
          }

          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          v147[0] = CFRetain(v33);
        }

        if (Mutable)
        {
          FigCFDictionarySetInt32();
          FigCFDictionarySetValue();
          if (a4 | v55)
          {
            if (FigQuickTimeMetadataCreateExtendedLanguageTag(v30, __rev16(a4), __rev16(v55)))
            {
              v63 = OUTLINED_FUNCTION_29_1();
              CFDictionaryAddValue(v63, v134, i);
              CFRelease(i);
            }
          }
        }

        OUTLINED_FUNCTION_6_48();
        goto LABEL_185;
      }
    }
  }

LABEL_232:
  OUTLINED_FUNCTION_9_22();
  CurrentAtomTypeAndDataLength = FigSignalErrorAtGM();
LABEL_233:
  i = CurrentAtomTypeAndDataLength;
LABEL_234:
  if (v171)
  {
    CFRelease(v171);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (!i)
  {
    if (!Mutable)
    {
      Count = 0;
LABEL_294:
      v27 = 0;
LABEL_297:
      a6 = v145;
LABEL_298:
      if (a6)
      {
        *a6 = v147[0];
        v147[0] = 0;
      }

      i = 0;
      if (!a7)
      {
        goto LABEL_315;
      }

      *a7 = Mutable;
LABEL_302:
      Mutable = 0;
      goto LABEL_315;
    }

    v109 = v162;
    if (v142 && v162)
    {
      v110 = 0;
      Count = 0;
      goto LABEL_291;
    }

    v110 = HIDWORD(v147[1]);
    memset(v172, 0, 112);
    v170 = 0;
    v171 = 0;
    LODWORD(v165) = 0;
    LODWORD(v164) = 0;
    v169 = 0;
    if (v140 && v162)
    {
      OUTLINED_FUNCTION_9_22();
      v126 = FigSignalErrorAtGM();
      v122 = v142;
      i = v126;
      v110 = 0;
      Count = 0;
LABEL_286:
      a7 = v141;
      if (v170)
      {
        CFRelease(v170);
        v122 = v142;
      }

      if (i)
      {
        goto LABEL_248;
      }

      if (!(v122 | Count))
      {
        Count = 0;
        if (v109)
        {
          goto LABEL_293;
        }

        goto LABEL_296;
      }

      v123 = Count;
      if (!v122)
      {
LABEL_292:
        CFDictionaryAddValue(Mutable, @"key", v123);
        v109 = v162;
        if (v162)
        {
LABEL_293:
          CFDictionaryAddValue(Mutable, @"keyspace", v109);
          goto LABEL_294;
        }

LABEL_296:
        v124 = bswap32(v110);
        v27 = CFStringCreateWithFormat(v30, 0, @"%c%c%c%c", v124, BYTE1(v124), BYTE2(v124), HIBYTE(v124));
        CFDictionaryAddValue(Mutable, @"keyspace", v27);
        goto LABEL_297;
      }

LABEL_291:
      v123 = v146;
      goto LABEL_292;
    }

    if (HIDWORD(v147[1]))
    {
      inited = FigQuickTimeMetadataInitKeyListAtomStreamAndEntryCount(v143, v172, &v165);
      if (!inited)
      {
        if (v165)
        {
          v112 = 0;
          v113 = v110 - 1;
          while (1)
          {
            v114 = v112;
            inited = FigAtomStreamGetCurrentAtomTypeAndDataLength();
            if (inited)
            {
              goto LABEL_344;
            }

            if (v113 == v114)
            {
              break;
            }

            v115 = FigAtomStreamAdvanceToNextAtom();
            if (v115 == -12890)
            {
              v110 = 0;
              goto LABEL_277;
            }

            Count = 0;
            v110 = 0;
            if (!v115)
            {
              v112 = v114 + 1;
              if (v114 < v165)
              {
                continue;
              }
            }

            goto LABEL_279;
          }

          if (v109)
          {
            v110 = 0;
          }

          else
          {
            v110 = v164;
          }

          if (v140)
          {
LABEL_277:
            Count = 0;
          }

          else
          {
            if (v171 >= 1)
            {
              OUTLINED_FUNCTION_613();
              DataPointer = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
              if (!DataPointer)
              {
                OUTLINED_FUNCTION_613();
                DataPointer = CMBlockBufferGetDataPointer(v117, v118, v119, 0, v120);
                if (!DataPointer)
                {
                  if (v164 == 1835299937)
                  {
                    Count = OUTLINED_FUNCTION_9_29(v30, v169, v171);
                    if (!Count)
                    {
                      goto LABEL_305;
                    }
                  }

                  else
                  {
                    Count = CFDataCreate(v30, v169, v171);
                    if (!Count)
                    {
LABEL_305:
                      OUTLINED_FUNCTION_9_22();
                      i = FigSignalErrorAtGM();
                      goto LABEL_285;
                    }
                  }

                  goto LABEL_278;
                }
              }

              goto LABEL_342;
            }

            Count = CFRetain(&stru_1F0B1AFB8);
          }

LABEL_278:
          v115 = 0;
LABEL_279:
          if (v115)
          {
            v121 = 1;
          }

          else
          {
            v121 = v113 == v114;
          }

          if (v121)
          {
            i = v115;
          }

          else
          {
            i = 4294954692;
          }

          goto LABEL_285;
        }

        OUTLINED_FUNCTION_9_22();
        inited = FigSignalErrorAtGM();
      }

LABEL_344:
      i = inited;
      v110 = 0;
      goto LABEL_345;
    }

    OUTLINED_FUNCTION_9_22();
    DataPointer = FigSignalErrorAtGM();
LABEL_342:
    i = DataPointer;
LABEL_345:
    Count = 0;
LABEL_285:
    v122 = v142;
    goto LABEL_286;
  }

  if (v145 && v147[0])
  {
    CFRelease(v147[0]);
    v147[0] = 0;
  }

  if (a7 && Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_247:
  Count = 0;
  Mutable = 0;
LABEL_248:
  v27 = 0;
LABEL_315:
  if (v147[0])
  {
    CFRelease(v147[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (Count)
  {
    CFRelease(Count);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v162)
  {
    CFRelease(v162);
  }

  return i;
}

uint64_t FigQuickTimeMetadataIsKeyPosInUse(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a2 <= 0)
  {
    ItemListAtomStream = FigSignalErrorAtGM();
  }

  else if (*(a1 + 32) < 1)
  {
    ItemListAtomStream = 0;
  }

  else
  {
    ItemListAtomStream = FigQuickTimeMetadataGetItemListAtomStream(a1);
    if (!ItemListAtomStream)
    {
      while (1)
      {
        ItemListAtomStream = OUTLINED_FUNCTION_14_23();
        if (ItemListAtomStream)
        {
          break;
        }

        ItemListAtomStream = FigAtomStreamAdvanceToNextAtom();
        if (ItemListAtomStream)
        {
          if (ItemListAtomStream == -12890)
          {
            ItemListAtomStream = 0;
          }

          break;
        }
      }
    }
  }

  if (a3)
  {
    *a3 = ItemListAtomStream;
  }

  return 0;
}

uint64_t FigQuickTimeMetadataInitKeyListAtomStreamAndEntryCount(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 24) < 1 || (OUTLINED_FUNCTION_11_30(), result = FigAtomStreamInitWithByteStream(), !result) && (result = FigAtomStreamGetCurrentAtomTypeAndDataLength(), !result))
  {
    result = 0;
    if (a3)
    {
      *a3 = 0;
    }
  }

  return result;
}

uint64_t FigQuickTimeMetadataGetItemListAtomStream(uint64_t a1)
{
  if (*(a1 + 32) < 1)
  {
    return 0;
  }

  result = FigAtomStreamInitWithByteStream();
  if (!result)
  {

    return FigAtomStreamInitWithParent();
  }

  return result;
}

uint64_t ArrayQTMetadataGetItemCount(uint64_t a1, const __CFString *a2, void *a3)
{
  cf = 0;
  theArray = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = metadataCreateNativeKeySpaceAndKeys(a2, a3, &cf, &theArray);
  v7 = theArray;
  if (v6 || (Count = CFArrayGetCount(theArray)) == 0)
  {
    v11 = 0;
    if (v7)
    {
LABEL_9:
      CFRelease(v7);
    }
  }

  else
  {
    v9 = Count;
    v10 = 0;
    v11 = 0;
    v12 = *MEMORY[0x1E695E738];
    v13 = cf;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
      if (CFEqual(ValueAtIndex, v12))
      {
        v15 = 0;
      }

      else
      {
        v15 = ValueAtIndex;
      }

      v11 += FigMetadataArrayGetItemCount(*DerivedStorage, v15, v13, 0, 0, 0);
      ++v10;
    }

    while (v9 != v10);
    if (v7)
    {
      goto LABEL_9;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t FigMetadataReaderCreateForQuickTimeMetadataArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataReaderCreateForQuickTimeMetadataArray_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataCopyValue_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataCopyValue_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataCopyValue_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataCopyValue_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataCopyValue_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t metadataCreateNativeKeySpaceAndKeys_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t metadataCreateNativeKeySpaceAndKeys_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t metadataCreateNativeKeySpaceAndKeys_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t metadataCreateNativeKeySpaceAndKeys_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t metadataCreateNativeKeySpaceAndKeys_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t metadataCreateNativeKeySpaceAndKeys_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataCopyKeyPosSet_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataCopyKeyPosSet_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigQuickTimeMetadataCopyKeyPosSet_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ArrayQTMetadataCopyKeyAtIndex_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ArrayQTMetadataCopyKeyAtIndex_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ArrayQTMetadataCopyKeyAtIndex_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ArrayQTMetadataCopyItemWithKeyAndIndex_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sadc_registerAssetForDownloaderDispatch(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  key = 0;
  cf = 0;
  WeakAssetKey = sadc_getWeakAssetKey(v2, &key);
  if (WeakAssetKey || (WeakAssetKey = sadc_copyAssetWeakReference(v3, v2, &cf)) != 0)
  {
    v17 = WeakAssetKey;
    v10 = 0;
    v9 = 0;
    goto LABEL_29;
  }

  v9 = MEMORY[0x19A8CCA80](*(v3 + 56), cf) > 0;
  v10 = FigCFWeakReferenceTableCopyValue();
  if (v5 && FigCFEqual())
  {
LABEL_26:
    v17 = 0;
    goto LABEL_29;
  }

  value = v7;
  v11 = key;
  FigSimpleMutexLock();
  LODWORD(v11) = CFDictionaryContainsKey(*(v3 + 24), v11);
  FigSimpleMutexUnlock();
  v19 = v11;
  if (v11)
  {
    FigSimpleMutexLock();
    CFDictionaryGetValue(*(v3 + 24), key);
    FigSimpleMutexUnlock();
    v12 = CFDictionaryGetValue(*(v3 + 32), key);
    if (!FigCFEqual())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_3();
      v17 = FigSignalErrorAtGM();
      goto LABEL_29;
    }

    if (v12 && !FigCFEqual())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_3();
      v18 = FigSignalErrorAtGM();
      goto LABEL_28;
    }
  }

  if (!v5 || !v10)
  {
    v15 = v4;
    if (!v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    v18 = FigCFWeakReferenceTableAddValueAssociatedWithKey();
    if (!v18)
    {
LABEL_23:
      FigSimpleMutexLock();
      CFDictionarySetValue(*(v3 + 24), key, v15);
      FigSimpleMutexUnlock();
      if (value)
      {
        CFDictionarySetValue(*(v3 + 32), key, value);
      }

      CFDictionarySetValue(*(v3 + 40), key, v6);
      if (v19)
      {
        goto LABEL_26;
      }

      CMNotificationCenterGetDefaultLocalCenter();
      v18 = FigDispatchAsyncPostNotification();
    }

LABEL_28:
    v17 = v18;
    goto LABEL_29;
  }

  BOOLean = *MEMORY[0x1E695E4C0];
  CMBaseObject = FigAssetDownloaderGetCMBaseObject(v10);
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v15 = v4;
  if (v14)
  {
    v16 = v14(CMBaseObject, @"AssetDownloaderProperty_HasAccessToDestinationURL", *MEMORY[0x1E695E480], &BOOLean);
    if (v16)
    {
      v17 = v16;
      if (v16 == -16651)
      {
        v17 = 0;
      }

      v15 = v4;
    }

    else if (CFBooleanGetValue(BOOLean))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_3();
      v17 = FigSignalErrorAtGM();
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = -12782;
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  if (!v17)
  {
    v18 = FigCFWeakReferenceTableRemoveValue();
    if (v18)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  *(a1 + 52) = v17;
  *(a1 + 48) = v9;
}

uint64_t FigAssetDownloadCoordinatorCopyDestinationURLForAsset(uint64_t a1, void *a2)
{
  if (_MergedGlobals_52 != -1)
  {
    OUTLINED_FUNCTION_2_73();
    dispatch_once_f(v6, v7, v8);
  }

  v4 = qword_1ED4CA980;
  v9 = 0;
  if (a1 && a2)
  {
    result = sadc_getWeakAssetKey(a1, &v9);
    if (!result)
    {
      return sadc_copyDestinationURLForAssetKey(v4, v9, a2);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigAssetDownloadCoordinatorCopyClientBundleIdentifierForAsset(uint64_t a1, void *a2)
{
  if (_MergedGlobals_52 != -1)
  {
    OUTLINED_FUNCTION_2_73();
    dispatch_once_f(v5, v6, v7);
  }

  v9 = 0;
  v10 = 0;
  if (a1 && a2)
  {
    v8[0] = qword_1ED4CA980;
    v8[1] = a1;
    dispatch_sync_f(*(qword_1ED4CA980 + 8), v8, sadc_copyClientBundleIdentifierForAssetDispatch);
    result = v10;
    if (!v10)
    {
      *a2 = v9;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t sadc_copyClientBundleIdentifierForAssetDispatch(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  key = 0;
  if (v2)
  {
    result = sadc_getWeakAssetKey(v2, &key);
    if (!result)
    {
      Value = CFDictionaryGetValue(*(v3 + 32), key);
      if (Value)
      {
        v6 = CFRetain(Value);
      }

      else
      {
        v6 = 0;
      }

      result = 0;
      a1[2] = v6;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    result = FigSignalErrorAtGM();
  }

  *(a1 + 6) = result;
  return result;
}

void sads_relinquishAccessToURLDispatch(void *key)
{
  if (qword_1ED4CA988 != -1)
  {
    dispatch_once_f(&qword_1ED4CA988, 0, sads_downloadSchedulerCreateInitOnce);
  }

  v2 = qword_1ED4CA990;
  Value = CFDictionaryGetValue(*(qword_1ED4CA990 + 16), key);
  if (Value)
  {
    v4 = CFRetain(Value);
    if (v4)
    {
      v5 = v4;
      sads_cleanupScheduledAccessToURL(v2, key, v4);
      v6 = CFDictionaryGetValue(v2[5], v5);
      if (v6)
      {
        v7 = v6;
        if (CFArrayGetCount(v6) >= 1)
        {
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
            v9 = CFDictionaryGetValue(v2[3], ValueAtIndex);
            if (!v9)
            {
              break;
            }

            v10 = v9;
            v11 = CFDictionaryGetValue(v2[4], ValueAtIndex);
            if (!v11)
            {
              break;
            }

            v12 = v11;
            v13 = FigCFWeakReferenceTableCopyValue();
            if (v13)
            {
              v14 = v13;
              sads_dispatchScheduledCallbackFn(v13, 1, ValueAtIndex, v10, v12);
              goto LABEL_14;
            }

            sads_cleanupScheduledAccessToURL(v2, ValueAtIndex, v5);
            if (CFArrayGetCount(v7) <= 0)
            {
              goto LABEL_11;
            }
          }

LABEL_17:

          CFRelease(v5);
          return;
        }

LABEL_11:
        v14 = 0;
LABEL_14:
        if (CFArrayGetCount(v7))
        {
LABEL_16:
          CFRelease(v5);
          v5 = v14;
          if (!v14)
          {
            return;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v14 = 0;
      }

      CFDictionaryRemoveValue(v2[5], v5);
      goto LABEL_16;
    }
  }
}

uint64_t sadc_copyAssetWeakReference(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v11 = 0;
  if (a2 && a3)
  {
    WeakAssetKey = sadc_getWeakAssetKey(a2, &v11);
    if (!WeakAssetKey)
    {
      v5 = FigCFWeakReferenceTableCopyValue();
      if (v5)
      {
        v6 = v5;
        v7 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (!FigCFEqual())
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          v8 = FigSignalErrorAtGM();
          goto LABEL_10;
        }

LABEL_9:
        v8 = 0;
        *a3 = CFRetain(v6);
LABEL_10:
        CFRelease(v6);
        if (v7)
        {
          CFRelease(v7);
        }

        return v8;
      }

      v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (v9)
      {
        v6 = v9;
        FigCFWeakReferenceTableAddValueAssociatedWithKey();
        v7 = 0;
        goto LABEL_9;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      return FigSignalErrorAtGM();
    }

    return WeakAssetKey;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t sadc_copyAssetDownloaderForAsset(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = 0;
  if (a2 && a3)
  {
    result = sadc_getWeakAssetKey(a2, &v6);
    if (!result)
    {
      v5 = FigCFWeakReferenceTableCopyValue();
      result = 0;
      *a3 = v5;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }

  return result;
}

void sads_cleanupScheduledAccessToURL(CFMutableDictionaryRef *a1, const void *a2, void *key)
{
  Value = CFDictionaryGetValue(a1[5], key);
  if (Value)
  {
    v6 = Value;
    v8.length = CFArrayGetCount(Value);
    v8.location = 0;
    if (!CFArrayGetFirstIndexOfValue(v6, v8, a2))
    {
      CFDictionaryRemoveValue(a1[2], a2);
      CFDictionaryRemoveValue(a1[3], a2);
      CFDictionaryRemoveValue(a1[4], a2);

      CFArrayRemoveValueAtIndex(v6, 0);
    }
  }
}

uint64_t FigAssetDownloadCoordinatorMarkAssetForInteractivity_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetDownloadCoordinatorUnmarkAssetForInteractivity_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetDownloadCoordinatorUnmarkAssetForInteractivity_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sadc_unmarkAssetForInteractivityDispatch_cold_1(CFBagRef *a1, const void **a2, uint64_t *a3)
{
  result = CFBagContainsValue(*a1, *a2);
  if (!result)
  {
    v5 = *a3;
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = VTable + 16;
    v8 = *(v7 + 40);
    if (v8)
    {
      return v8(v5);
    }
  }

  return result;
}

uint64_t FigAssetDownloadCoordinatorRegisterAssetForDownloader_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetDownloadCoordinatorRegisterAssetForDownloader_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sadc_getWeakAssetKey_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sadc_getWeakAssetKey_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sadc_getWeakAssetKey_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sadc_copyDestinationURLForAssetKey_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetDownloadCoordinatorCopyDestinationURLForDownloadToken_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetDownloadCoordinatorUnregisterAssetWithDownloadTokenForAllDownloaders_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetDownloadCoordinatorScheduleAccessToURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetDownloadCoordinatorScheduleAccessToURL_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetDownloadCoordinatorScheduleAccessToURL_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetDownloadCoordinatorScheduleAccessToURL_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetDownloadCoordinatorScheduleAccessToURL_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetDownloadCoordinatorRequestImmediateAccessToURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetDownloadCoordinatorRequestImmediateAccessToURL_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetDownloadCoordinatorRelinquishAccessToURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL sadc_globalDownloadCoordinatorInitOnce_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM() == 0;
}

uint64_t sads_scheduleAccessToURLDispatchGuts_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t sads_scheduleAccessToURLDispatchGuts_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t sads_dispatchScheduledCallbackFn_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t sads_performDispatchScheduledCallbackFn_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererStackLayoutRegionCreate(void *a1)
{
  *a1 = 0;
  v8 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererStackLayoutRegionGetClassID_sRegisterFigCaptionRendererStackLayoutRegionBaseTypeOnce, RegisterFigCaptionRendererStackLayoutRegionBaseType);
  v2 = CMDerivedObjectCreate();
  if (!v2)
  {
    v3 = v8;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = 1;
    *(DerivedStorage + 24) = 0x3FAB4A2339C0EBEELL;
    *(DerivedStorage + 32) = 0x300000064;
    v5 = vdupq_n_s64(0x4049000000000000uLL);
    *(DerivedStorage + 56) = v5;
    *(DerivedStorage + 40) = v5;
    v7 = 0;
    FigCaptionRendererNodeCreate(&v7);
    *(DerivedStorage + 8) = v7;
    *a1 = v3;
  }

  return v2;
}

uint64_t captionConverter_processSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    goto LABEL_44;
  }

  v5 = DerivedStorage;
  if (!*(DerivedStorage + 32) || !a2)
  {
    goto LABEL_44;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  if (*(v5 + 4) == MediaType && *(v5 + 8) == MediaSubType)
  {
    goto LABEL_63;
  }

  *(v5 + 4) = MediaType;
  *(v5 + 8) = MediaSubType;
  if (*(v5 + 20))
  {
    *(v5 + 12) = MediaType;
  }

  if (*(v5 + 21))
  {
    *(v5 + 16) = MediaSubType;
  }

  v9 = *(v5 + 48);
  if (v9)
  {
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v10)
    {
      return 4294954514;
    }

    result = v10(v9);
    if (result)
    {
      return result;
    }
  }

  v12 = *(v5 + 40);
  if (!v12)
  {
LABEL_16:
    if (!CMSampleBufferGetNumSamples(a2))
    {
      goto LABEL_48;
    }

    v14 = *(v5 + 4);
    v15 = *(v5 + 12);
    if (v14 == v15 && *(v5 + 8) == *(v5 + 16))
    {
      goto LABEL_48;
    }

    if (v14 != 1668310898)
    {
      *(v5 + 22) = 0;
      goto LABEL_27;
    }

    v16 = *(v5 + 8);
    if (v15 != 1952807028 || v16 != 1668310898)
    {
      *(v5 + 22) = 0;
      if (v16 == 1668310898)
      {
LABEL_50:
        v42 = CMBaseObjectGetDerivedStorage();
        v43 = *(v42 + 48);
        if (v43)
        {
          CFRelease(v43);
          *(v42 + 48) = 0;
        }

        if (*(v42 + 12) == 1668047728)
        {
          *&v89[8] = a1;
          v44 = OUTLINED_FUNCTION_2_74(v43, *MEMORY[0x1E695E480], v36, v37, v38, v39, v40, v41, v78, v80, v81, v83, v84, v86, v87, *(&v87 + 1), *v88, *&v88[8], *&v88[16], *&v88[24], captionConverter_ToSbufOutputCallback);
          result = FigCLCPCaptionGroupConverterToSampleBufferCreate(v44, v45, v46);
          goto LABEL_62;
        }

LABEL_42:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        result = FigSignalErrorAtGM();
        goto LABEL_62;
      }

LABEL_27:
      if (v15 == 1668310898 && *(v5 + 16) == 1668310898)
      {
        v18 = CMBaseObjectGetDerivedStorage();
        v20 = (v18 + 40);
        v19 = *(v18 + 40);
        if (v19)
        {
          CFRelease(v19);
          *v20 = 0;
        }

        v21 = *(v18 + 4);
        if (v21 != 1952807028 && v21 != 1935832172)
        {
          if (v21 != 1668047728)
          {
            goto LABEL_42;
          }

          OUTLINED_FUNCTION_1_75();
          v54 = OUTLINED_FUNCTION_2_74(v47, *MEMORY[0x1E695E480], v48, v49, v50, v51, v52, v53, v78, v80, v81, v83, v84, v86, v87, *(&v87 + 1), *v88, *&v88[8], *&v88[16], *&v88[24], v89[0]);
          result = FigCLCPCaptionGroupConverterFromSampleBufferCreate(v54, v55, v56);
          if (!result)
          {
            CMBaseObject = FigCaptionGroupConverterFromSampleBufferGetCMBaseObject(*v20);
            v58 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v58)
            {
              result = v58(CMBaseObject, 0x1F0B206B8, *MEMORY[0x1E695E4C0]);
            }

            else
            {
              result = 4294954514;
            }
          }

LABEL_62:
          if (result)
          {
            return result;
          }

          goto LABEL_63;
        }

        v23 = *(v18 + 8);
        if (v23 != 1937142900)
        {
          if (v23 == 1954034535)
          {
            OUTLINED_FUNCTION_1_75();
            v66 = OUTLINED_FUNCTION_2_74(v59, *MEMORY[0x1E695E480], v60, v61, v62, v63, v64, v65, v78, v80, v81, v83, v84, v86, v87, *(&v87 + 1), *v88, *&v88[8], *&v88[16], *&v88[24], v89[0]);
            result = FigTX3GCaptionGroupConverterFromSampleBufferCreate(v66, v67, v68);
            goto LABEL_62;
          }

          if (v23 != 2021028980 && v23 != 2004251764)
          {
            goto LABEL_42;
          }
        }

        OUTLINED_FUNCTION_1_75();
        v32 = OUTLINED_FUNCTION_2_74(v25, *MEMORY[0x1E695E480], v26, v27, v28, v29, v30, v31, v78, v80, v81, v83, v84, v86, v87, *(&v87 + 1), *v88, *&v88[8], *&v88[16], *&v88[24], v89[0]);
        result = FigWebVTTCaptionGroupConverterFromSampleBufferCreate(v32, v33, v34);
        goto LABEL_62;
      }

LABEL_44:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM();
    }

    v35 = *(v5 + 16);
    if (v35 == 1634301044)
    {
LABEL_48:
      *(v5 + 22) = 1;
    }

    else
    {
      *(v5 + 22) = v35 == 2004251764;
      if (v35 != 2004251764)
      {
        goto LABEL_50;
      }
    }

LABEL_63:
    if (*(v5 + 22))
    {
      (*(v5 + 32))(*(v5 + 24), 0, a2);
      return 0;
    }

    if (*(v5 + 48))
    {
      v69 = *(MEMORY[0x1E6960C98] + 16);
      v87 = *MEMORY[0x1E6960C98];
      *v88 = v69;
      *&v88[16] = *(MEMORY[0x1E6960C98] + 32);
      v70 = CMBaseObjectGetDerivedStorage();
      if (*(v70 + 48))
      {
        v71 = v70;
        CaptionGroup = FigSampleBufferGetCaptionGroup();
        if (CaptionGroup)
        {
          v73 = CaptionGroup;
          CMSampleBufferGetOutputPresentationTimeStamp(&v87, a2);
          CMSampleBufferGetOutputDuration(v89, a2);
          *&v88[24] = *&v89[16];
          *&v88[8] = *v89;
          v74 = *(v71 + 48);
          v79 = v87;
          v82 = *v88;
          v85 = *&v88[16];
          v75 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v75)
          {
            *v89 = v79;
            *&v89[16] = v82;
            v90 = v85;
            return v75(v74, v73, v89);
          }

          return 4294954514;
        }
      }
    }

    else
    {
      if (!*(v5 + 40))
      {
        return 0;
      }

      v76 = *(CMBaseObjectGetDerivedStorage() + 40);
      if (v76)
      {
        v77 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v77)
        {
          return v77(v76, a2);
        }

        return 4294954514;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    return FigSignalErrorAtGM();
  }

  v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v13)
  {
    result = v13(v12);
    if (result)
    {
      return result;
    }

    goto LABEL_16;
  }

  return 4294954514;
}