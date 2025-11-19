uint64_t MovieTrackSetProvisionalAlternateGroupID(uint64_t a1, int a2)
{
  *(a1 + 740) = a2 != 0;
  *(a1 + 738) = a2;
  *(a1 + 16) |= 0x400000uLL;
  return 0;
}

uint64_t MovieTrackClearProvisionalAlternateGroupID(uint64_t a1)
{
  *(a1 + 740) = 0;
  *(a1 + 738) = 0;
  *(a1 + 16) |= 0x400000uLL;
  return 0;
}

uint64_t MovieTrackSetLayer(uint64_t a1, __int16 a2)
{
  *(a1 + 148) = a2;
  *(a1 + 16) |= 0x20000uLL;
  return 0;
}

uint64_t MovieTrackGetTimecodeMustBeShown(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 24) == 1953325924 && *(a1 + 881))
  {
    *a2 = *(a1 + 882);
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t MovieTrackSetTimecodeSpecifics(uint64_t a1, char a2)
{
  *(a1 + 881) = 1;
  *(a1 + 882) = a2;
  return 0;
}

uint64_t MovieTrackGetTrackType(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2 || !CFArrayGetCount(v2))
  {
    return *(a1 + 24);
  }

  result = *(a1 + 24);
  if (result != 1635088502 && result != 1885954932)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), 0);
    result = CMFormatDescriptionGetMediaType(ValueAtIndex);
    if (result == 1953325924)
    {
      MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
      if (MediaSubType == 1668167220 || MediaSubType == 1952658996)
      {
        return 1952658996;
      }

      else
      {
        return 1953325924;
      }
    }
  }

  return result;
}

uint64_t MovieTrackSetParsedTrackType(uint64_t a1, int a2)
{
  if (a2 == 1953325924 || a2 == 1952658996)
  {
    v3 = 1953325924;
  }

  else
  {
    v3 = a2;
  }

  *(a1 + 24) = v3;
  return 0;
}

uint64_t MovieTrackSetTrackExtendsDefaultValues(_DWORD *a1, int a2, int a3, int a4, int a5)
{
  a1[231] = a2;
  a1[232] = a3;
  a1[233] = a4;
  a1[234] = a5;
  return 0;
}

uint64_t MovieTrackGetTrackExtendsDefaultValues(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2)
  {
    *a2 = a1[231];
  }

  if (a3)
  {
    *a3 = a1[232];
  }

  if (a4)
  {
    *a4 = a1[233];
  }

  if (a5)
  {
    *a5 = a1[234];
  }

  return 0;
}

uint64_t MovieTrackSetParsedMediaDuration(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 224) = a2;
  *(a1 + 232) = a3;
  return 0;
}

CFDictionaryRef MovieTrackCreateAdvanceDecodeDeltaDictionary(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  if (MoovAssureSampleTableParsed(a2))
  {
    return 0;
  }

  CMTimeMake(&time, -*(a3 + 116) & (*(a3 + 116) >> 31), *(a3 + 232));
  return CMTimeCopyAsDictionary(&time, a1);
}

uint64_t MovieTrackCreateSampleDescriptionAtomLocationDictionary(uint64_t a1, __CFDictionary **a2)
{
  if (*(a1 + 648) && *(a1 + 656))
  {
    v4 = *MEMORY[0x1E695E480];
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (a1 + 648));
    if (v5)
    {
      v6 = v5;
      v7 = CFNumberCreate(v4, kCFNumberSInt64Type, (a1 + 656));
      if (v7)
      {
        v8 = v7;
        Mutable = CFDictionaryCreateMutable(v4, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v10 = Mutable;
          CFDictionarySetValue(Mutable, @"Offset", v6);
          CFDictionarySetValue(v10, @"Length", v8);
          *a2 = v10;
        }

        else
        {
          MovieTrackCreateSampleDescriptionAtomLocationDictionary_cold_1();
        }

        CFRelease(v6);
        CFRelease(v8);
      }

      else
      {
        MovieTrackCreateSampleDescriptionAtomLocationDictionary_cold_2(v6);
      }
    }

    else
    {
      MovieTrackCreateSampleDescriptionAtomLocationDictionary_cold_3();
    }
  }

  else
  {
    MovieTrackCreateSampleDescriptionAtomLocationDictionary_cold_4();
  }

  return 0;
}

uint64_t MovieTrackHasRollInformation(uint64_t a1)
{
  Basic = MovieSampleGroupTypeSpecMakeBasic(1919904876);
  result = *(a1 + 72);
  if (result)
  {

    return MovieSampleGroupCollectionHasSampleGroup(result, Basic, v2);
  }

  return result;
}

uint64_t MovieTrackHasIndependentFramePrerollPacketCount(uint64_t a1)
{
  Basic = MovieSampleGroupTypeSpecMakeBasic(1886547820);
  result = *(a1 + 72);
  if (result)
  {

    return MovieSampleGroupCollectionHasSampleGroup(result, Basic, v2);
  }

  return result;
}

uint64_t MovieTrackHasSeamSamples(uint64_t a1)
{
  Basic = MovieSampleGroupTypeSpecMakeBasic(1936023917);
  result = *(a1 + 72);
  if (result)
  {

    return MovieSampleGroupCollectionHasSampleGroup(result, Basic, v2);
  }

  return result;
}

BOOL MovieTrackHasAudioDependencyInformation(uint64_t a1)
{
  if (*(a1 + 24) != 1936684398)
  {
    return 0;
  }

  if (*(a1 + 488))
  {
    return 1;
  }

  return MovieTrackHasIndependentFramePrerollPacketCount(a1) != 0;
}

BOOL MovieTrackEditsExcludeAudioPrimingAndRemainderDuration(uint64_t a1)
{
  if (*(a1 + 24) != 1936684398 || !*(a1 + 722) || *(a1 + 824) == 1)
  {
    return 0;
  }

  if (MovieTrackHasRollInformation(a1))
  {
    return 1;
  }

  if (*(a1 + 24) != 1936684398)
  {
    return 0;
  }

  return *(a1 + 488) || MovieTrackHasIndependentFramePrerollPacketCount(a1) != 0;
}

uint64_t MovieTrackCreateEditSegmentArray(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  if (!*(a2 + 722))
  {
    memset(&v52, 0, sizeof(v52));
    v25 = a2;
    CMTimeMake(&v52, *(a2 + 136), *(a1 + 240));
    memset(&v51, 0, sizeof(v51));
    CMTimeMake(&v51, *(v25 + 224), *(v25 + 232));
    v50 = v51;
    *(v25 + 824) = 0;
    v26 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
    if (!v26)
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }

    v3 = v26;
    v27 = MEMORY[0x1E6960CC0];
    v28 = *MEMORY[0x1E6960CC0];
    v26[3] = *MEMORY[0x1E6960CC0];
    v29 = *(v27 + 16);
    *(v26 + 8) = v29;
    *(v26 + 2) = v29;
    v48 = v28;
    *v26 = v28;
    *(v26 + 3) = v52;
    *(v26 + 1) = v51;
    v30 = *(a1 + 240);
    v31 = *(v25 + 232);
    if (v30 != v31)
    {
      if (v30 >= v31)
      {
        v32 = *(v25 + 232);
      }

      else
      {
        v32 = *(a1 + 240);
      }

      CMTimeMake(&rhs, 1, v32);
      time = v51;
      CMTimeAdd(&v50, &time, &rhs);
    }

    rhs = v50;
    time = v52;
    if (CMTimeCompare(&rhs, &time) < 0)
    {
      v58 = 0;
      *&rhs.value = v48;
      rhs.epoch = v29;
      time = **&MEMORY[0x1E6960C70];
      time2 = time;
      if (MoovAssureSampleTableParsed(a1))
      {
        v36 = 0;
      }

      else
      {
        v35 = MovieSampleAccessorCreate(a1, v49, &v58);
        v36 = v58;
        if (!v35 && !MovieSampleAccessorMoveToLastSampleInDecodeOrder(v58))
        {
          DTSTimeValue = MovieSampleAccessorGetDTSTimeValue(v36);
          CMTimeMake(&time, DTSTimeValue, *(v36[1] + 58));
          MovieSampleAccessorGetSampleDuration(v36, &time2);
          lhs = time;
          v53 = time2;
          CMTimeAdd(&rhs, &lhs, &v53);
          lhs = rhs;
          MovieSampleAccessorDispose(v36);
          rhs = lhs;
          time = v51;
          if (CMTimeCompare(&rhs, &time) >= 1)
          {
            v38 = *(v49 + 232);
            time = lhs;
            CMTimeConvertScale(&rhs, &time, v38, kCMTimeRoundingMethod_QuickTime);
            v51 = rhs;
            epoch = rhs.epoch;
            v40 = *&rhs.value;
            timescale = rhs.timescale;
            *(v49 + 224) = rhs.value;
            *(v49 + 232) = timescale;
            *(v3 + 5) = epoch;
            *(v3 + 24) = v40;
          }

          goto LABEL_39;
        }
      }

      MovieSampleAccessorDispose(v36);
    }

    else if (*(a1 + 83))
    {
      if (*(v49 + 232) == *(a1 + 240))
      {
        rhs = v51;
        time = v52;
        if (CMTimeCompare(&rhs, &time) >= 1)
        {
          value = v51.value;
          *(a1 + 232) = v51.value;
          *(v49 + 136) = value;
          *(v3 + 3) = v51;
        }
      }
    }

LABEL_39:
    time = *(v3 + 1);
    time2 = *(v3 + 3);
    CMTimeMinimum(&rhs, &time, &time2);
    a2 = v49;
    *(v3 + 24) = *&rhs.value;
    v42 = rhs.epoch;
    *(v3 + 5) = rhs.epoch;
    *(v3 + 72) = *(v3 + 24);
    *(v3 + 11) = v42;
    LODWORD(v4) = 1;
    v24 = 1;
    goto LABEL_40;
  }

  v3 = *(a2 + 704);
  if (!v3)
  {
    LODWORD(v4) = 0;
    v24 = 0;
    v34 = 1;
LABEL_33:
    *(a2 + 824) = v34;
    goto LABEL_40;
  }

  v4 = bswap32(*(v3 + 1));
  if (v4 < 1)
  {
    v24 = 0;
    v3 = 0;
    v34 = 2;
    goto LABEL_33;
  }

  *(a2 + 824) = 3;
  if (v4 <= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v46 = v5;
  v6 = malloc_type_calloc(v5, 0x60uLL, 0x1000040565EDBD2uLL);
  if (!v6)
  {
    MovieTrackCreateEditSegmentArray_cold_1(&rhs);
    return LODWORD(rhs.value);
  }

  v7 = 0;
  v8 = 0;
  v47 = v3 + 8;
  v9 = v3 + 6;
  v10 = v3 + 3;
  v44 = v4;
  v45 = v6;
  v11 = v6 + 72;
  a2 = v49;
  do
  {
    if (**(a2 + 704))
    {
      v12 = bswap64(*(v9 - 1));
      v13 = bswap64(*(v9 - 2));
      v14 = v9;
    }

    else
    {
      v12 = bswap32(*v10);
      v13 = bswap32(*(v10 - 1));
      v14 = &v47[12 * v7 + 8];
    }

    v15 = *v14;
    v16 = v11 - 72;
    if (v12 == -1)
    {
      v18 = MEMORY[0x1E6960C70];
      *v16 = *MEMORY[0x1E6960C70];
      *(v11 - 7) = *(v18 + 16);
    }

    else
    {
      CMTimeMake(&rhs, v12, *(a2 + 232));
      v17 = *&rhs.value;
      *(v11 - 7) = rhs.epoch;
      *v16 = v17;
    }

    CMTimeMake(&rhs, v13, *(a1 + 240));
    v19 = *&rhs.value;
    *(v11 + 2) = rhs.epoch;
    *v11 = v19;
    CMTimeMake(&rhs, v8, *(a1 + 240));
    v20 = *&rhs.value;
    *(v11 - 1) = rhs.epoch;
    *(v11 - 24) = v20;
    v21 = v11 - 48;
    if (v15 == 256)
    {
      *v21 = *v11;
      *(v11 - 4) = *(v11 + 2);
    }

    else
    {
      v22 = *v11;
      time.epoch = *(v11 + 2);
      *&time.value = v22;
      CMTimeMultiplyByFloat64(&rhs, &time, vcvtd_n_f64_u32(bswap32(v15), 0x10uLL));
      v23 = *&rhs.value;
      *(v11 - 4) = rhs.epoch;
      *v21 = v23;
    }

    a2 = v49;
    v8 += v13;
    ++v7;
    v9 += 5;
    v10 += 3;
    v11 += 96;
    --v4;
  }

  while (v4);
  LODWORD(v4) = v44;
  v3 = v45;
  v24 = v46;
LABEL_40:
  result = 0;
  *(a2 + 808) = v3;
  *(a2 + 820) = v24;
  *(a2 + 816) = v4;
  return result;
}

uint64_t MovieTrackAddRunContributionToEditSegmentArray(uint64_t a1, uint64_t a2, int64_t a3, int64_t value)
{
  result = 0;
  memset(&v52, 0, sizeof(v52));
  memset(&v51, 0, sizeof(v51));
  memset(&v50, 0, sizeof(v50));
  v9 = *(a2 + 824);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v25 = *(a2 + 816);
      v26 = v25;
      v27 = *(a2 + 808);
      if (v27[96 * v25 - 84])
      {
        CMTimeMake(&lhs, value, *(a2 + 232));
        v38 = *(a2 + 808) + 96 * (v25 - 1);
        v39 = *v38;
        rhs.epoch = *(v38 + 16);
        *&rhs.value = v39;
        CMTimeSubtract(&v51, &lhs, &rhs);
        v40 = *(a2 + 808) + 96 * (v25 - 1);
        lhs = v51;
        v41 = *(v40 + 24);
        rhs.epoch = *(v40 + 40);
        *&rhs.value = v41;
        CMTimeSubtract(&v50, &lhs, &rhs);
        v42 = *(a2 + 808) + 96 * (v25 - 1);
        v43 = *(v42 + 72);
        rhs.epoch = *(v42 + 88);
        *&rhs.value = v43;
        v47 = v50;
        CMTimeAdd(&lhs, &rhs, &v47);
        v44 = *&lhs.value;
        *(v42 + 88) = lhs.epoch;
        *(v42 + 72) = v44;
        v45 = *(a2 + 808) + 96 * (v25 - 1);
        v46 = *&v51.value;
        *(v45 + 40) = v51.epoch;
        *(v45 + 24) = v46;
      }

      else
      {
        if (*(a2 + 820) <= v25)
        {
          v28 = v25 + 1;
          v29 = malloc_type_realloc(v27, 96 * (v26 + 1), 0x1000040565EDBD2uLL);
          if (!v29)
          {
            MovieTrackAddRunContributionToEditSegmentArray_cold_1(&lhs);
            return LODWORD(lhs.value);
          }

          *(a2 + 808) = v29;
          *(a2 + 820) = v28;
          v25 = *(a2 + 816);
        }

        CMTimeMake(&lhs, value, *(a2 + 232));
        CMTimeMake(&rhs, a3, *(a2 + 232));
        CMTimeSubtract(&v52, &lhs, &rhs);
        v30 = *(a2 + 808) + 96 * v25;
        CMTimeMake(&lhs, 0, *(a1 + 240));
        v31 = *&lhs.value;
        *(v30 + 64) = lhs.epoch;
        *(v30 + 48) = v31;
        v32 = *(a2 + 808) + 96 * v25;
        v33 = *&v52.value;
        *(v32 + 88) = v52.epoch;
        *(v32 + 72) = v33;
        v34 = *(a2 + 808) + 96 * v25;
        CMTimeMake(&lhs, a3, *(a2 + 232));
        v35 = *&lhs.value;
        *(v34 + 16) = lhs.epoch;
        *v34 = v35;
        v36 = *(a2 + 808) + 96 * v25;
        v37 = *&v52.value;
        *(v36 + 40) = v52.epoch;
        *(v36 + 24) = v37;
        ++*(a2 + 816);
      }

      *(a2 + 824) = 4;
    }

    else
    {
      if (v9 != 4)
      {
        return result;
      }

      v13 = 96 * *(a2 + 816);
      CMTimeMake(&lhs, value, *(a2 + 232));
      v13 -= 96;
      v14 = *(a2 + 808) + v13;
      v15 = *v14;
      rhs.epoch = *(v14 + 16);
      *&rhs.value = v15;
      CMTimeSubtract(&v51, &lhs, &rhs);
      v16 = *(a2 + 808) + v13;
      lhs = v51;
      v17 = *(v16 + 24);
      rhs.epoch = *(v16 + 40);
      *&rhs.value = v17;
      CMTimeSubtract(&v50, &lhs, &rhs);
      v18 = *(a2 + 808) + v13;
      v19 = *(v18 + 72);
      rhs.epoch = *(v18 + 88);
      *&rhs.value = v19;
      v47 = v50;
      CMTimeAdd(&lhs, &rhs, &v47);
      v20 = *&lhs.value;
      *(v18 + 88) = lhs.epoch;
      *(v18 + 72) = v20;
      v21 = *(a2 + 808) + v13;
      v22 = *&v51.value;
      *(v21 + 40) = v51.epoch;
      *(v21 + 24) = v22;
    }
  }

  else if (v9)
  {
    if (v9 != 2)
    {
      return result;
    }

    *(a2 + 820) = 4;
    *(a2 + 808) = malloc_type_calloc(4uLL, 0x60uLL, 0x1000040565EDBD2uLL);
    *(a2 + 816) = 1;
    CMTimeMake(&lhs, value, *(a2 + 232));
    CMTimeMake(&rhs, a3, *(a2 + 232));
    CMTimeSubtract(&v52, &lhs, &rhs);
    v10 = *(a2 + 808);
    CMTimeMake(&lhs, 0, *(a1 + 240));
    v10[2] = lhs;
    *(*(a2 + 808) + 72) = v52;
    v11 = *(a2 + 808);
    CMTimeMake(&lhs, a3, *(a2 + 232));
    v12 = *&lhs.value;
    *(v11 + 16) = lhs.epoch;
    *v11 = v12;
    *(*(a2 + 808) + 24) = v52;
    *(a2 + 824) = 4;
  }

  else
  {
    v23 = *(a2 + 808);
    CMTimeMake(&lhs, value, *(a2 + 232));
    v23[1] = lhs;
    v24 = *(a2 + 808);
    *(v24 + 72) = *(v24 + 24);
    *(v24 + 88) = *(v24 + 40);
  }

  result = 0;
  *(a2 + 16) |= 2uLL;
  return result;
}

void NoteEditSegmentModification(uint64_t a1, uint64_t a2, CMTime *a3, int a4)
{
  v4 = *(a2 + 16);
  *(a2 + 16) = v4 | 2;
  if (*(a2 + 922))
  {
    *(a2 + 16) = v4 | 0x200002;
  }

  if (!a4 && *(a1 + 32))
  {
    cf = *a3;
    v5 = *MEMORY[0x1E695E480];
    cf.value = CMTimeCopyAsDictionary(&cf, *MEMORY[0x1E695E480]);
    if (cf.value)
    {
      v6 = CFDictionaryCreate(v5, kMovieInformationPayloadKey_AffectedTrackTime, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      v6 = 0;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDeferNotificationToDispatchQueue();
    if (v6)
    {
      CFRelease(v6);
    }

    if (cf.value)
    {
      CFRelease(cf.value);
    }
  }
}

CMTime *UpdateDurationsForEditSegmentChange(CMTime *result, uint64_t a2)
{
  v3 = result;
  start = **&MEMORY[0x1E6960CC0];
  v4 = *(a2 + 816);
  v5 = (v4 - 1);
  if (v4 >= 1)
  {
    v6 = (*(a2 + 808) + 96 * v5 + 48);
    v7 = v5 + 1;
    while ((*(v6 - 36) & 1) == 0)
    {
      v6 -= 6;
      if (v7-- <= 1)
      {
        goto LABEL_8;
      }
    }

    v9 = *v6;
    v10 = v6[2];
    *&range.start.epoch = v6[1];
    *&range.duration.timescale = v10;
    *&range.start.value = v9;
    CMTimeRangeGetEnd(&start, &range);
    value = v3[10].value;
    time = start;
    result = CMTimeConvertScale(&range.start, &time, value, kCMTimeRoundingMethod_QuickTime);
    start = range.start;
  }

LABEL_8:
  if (start.value != *(a2 + 136))
  {
    *(a2 + 136) = start.value;
    epoch = v3[12].epoch;
    if (epoch < 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      v14 = *&v3[13].timescale;
      do
      {
        v15 = *v14++;
        v16 = *(v15 + 136);
        if (v16 > v13)
        {
          v13 = v16;
        }

        --epoch;
      }

      while (epoch);
    }

    if (v3[9].epoch != v13)
    {
      v3[9].epoch = v13;
      v3[1].epoch |= 1uLL;
    }
  }

  return result;
}

uint64_t MovieTrackIntegrateFragmentSampleGroups(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    MovieSampleGroupCollectionApplyFunction(a2, IntegrateFragmentSampleGroupCollectionApplier, a1);
  }

  return 0;
}

uint64_t MovieTrackInitializeLowestDisplayStartTimeAndHighestDisplayEndTime(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 576))
  {
    v2 = bswap32(*(a2 + 572));
    *(a2 + 88) = bswap32(*(a2 + 568));
    *(a2 + 96) = 0xFFFFFFFF80000000;
    *(a2 + 104) = v2;
  }

  else if (*(a2 + 416))
  {
    v3 = *(a2 + 288);
    v4 = *(a2 + 728);
    if (v4)
    {
      v3 += *(v4 + 8);
    }

    if (v3)
    {
      MovieTrackInitializeLowestDisplayStartTimeAndHighestDisplayEndTime_cold_1(a1, a2);
    }
  }

  return 0;
}

uint64_t MovieTrackReviseSampleDependencyTable(uint64_t a1, int a2)
{
  blockBufferOut = 0;
  v4 = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], *(a1 + 536), 0, a2, 0, &blockBufferOut);
  v5 = blockBufferOut;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = blockBufferOut == 0;
  }

  if (!v6)
  {
    v7 = *(a1 + 536);
    *(a1 + 536) = blockBufferOut;
    CFRetain(v5);
    if (v7)
    {
      CFRelease(v7);
    }

    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    *(a1 + 528) = a2;
  }

  return v4;
}

uint64_t MovieSampleTableGetSyncSampleNumber(uint64_t a1, int a2)
{
  destination = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 488), 4 * a2, 4uLL, &destination);
  return bswap32(destination);
}

uint64_t MovieSampleTableGetPartialSyncSampleNumber(uint64_t a1, int a2)
{
  destination = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 512), 4 * a2, 4uLL, &destination);
  return bswap32(destination);
}

uint64_t MovieTrackCopyLatentBaseDecodeTimeStampOfFirstTrackFragmentDictionary(CFAllocatorRef allocator, uint64_t a2, CFDictionaryRef *a3)
{
  if (*(a2 + 756))
  {
    v6 = *(a2 + 744);
    v4 = CMTimeCopyAsDictionary(&v6, allocator);
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
  return 0;
}

double UpdateMinSampleDuration(uint64_t a1, CMTime *a2)
{
  memset(&v6, 0, sizeof(v6));
  MovieSampleAccessorGetSampleDuration(a1, &v6);
  time1 = v6;
  v4 = *a2;
  if (CMTimeCompare(&time1, &v4) < 0)
  {
    result = *&v6.value;
    *a2 = v6;
  }

  return result;
}

uint64_t MovieTrackAddParsedSampleDescriptionAndDataRefIndex(uint64_t a1, OpaqueCMBlockBuffer *a2, int a3)
{
  if (!*(a1 + 40))
  {
    v6 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    *(a1 + 40) = Mutable;
    if (!Mutable)
    {
      MovieTrackAddParsedSampleDescriptionAndDataRefIndex_cold_3(&dataPointerOut);
      return dataPointerOut;
    }

    v8 = CFArrayCreateMutable(v6, 0, 0);
    *(a1 + 56) = v8;
    if (!v8)
    {
      MovieTrackAddParsedSampleDescriptionAndDataRefIndex_cold_2(&dataPointerOut);
      return dataPointerOut;
    }
  }

  for (i = 0; ; ++i)
  {
    v10 = *(a1 + 40);
    v11 = v10 ? CFArrayGetCount(v10) : 0;
    v12 = *(a1 + 40);
    if (i >= v11)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
    v23 = 0;
    dataPointerOut = 0;
    v21 = 0;
    lengthAtOffsetOut = 0;
    v19 = 0;
    totalLengthOut = 0;
    if (!CMBlockBufferGetDataPointer(a2, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut) && lengthAtOffsetOut == totalLengthOut && !CMBlockBufferGetDataPointer(ValueAtIndex, 0, &v21, &v19, &v23) && v21 == v19 && totalLengthOut == v21 && totalLengthOut >= 0x10)
    {
      v14 = bswap64(*dataPointerOut);
      v15 = bswap64(*v23);
      if (v14 == v15 && (v14 = bswap64(*(dataPointerOut + 6)), v15 = bswap64(*(v23 + 6)), v14 == v15))
      {
        v16 = 0;
      }

      else
      {
        v16 = v14 < v15 ? -1 : 1;
      }

      if (v21 != 16 && !v16)
      {
        v16 = memcmp(dataPointerOut + 16, v23 + 16, v21 - 16);
      }

      if (!v16)
      {
        goto LABEL_27;
      }
    }
  }

  CFArrayAppendValue(v12, a2);
  i = CFArrayGetCount(*(a1 + 40)) - 1;
LABEL_27:
  v17 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  if (!v17)
  {
    MovieTrackAddParsedSampleDescriptionAndDataRefIndex_cold_1(&dataPointerOut);
    return dataPointerOut;
  }

  *v17 = i;
  v17[1] = a3 - 1;
  CFArrayAppendValue(*(a1 + 56), v17);
  return 0;
}

void MovieTrackRemoveAllSampleDescriptions(uint64_t a1)
{
  ReleaseSampleDescriptionInfoArray(a1);
  ReleaseDataReferenceInfoArray(a1);
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
  }
}

uint64_t MovieTrackIsSelfContained(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    FigSimpleMutexLock();
    if (Count < 1)
    {
LABEL_6:
      v5 = 1;
    }

    else
    {
      v4 = 0;
      while (!*CFArrayGetValueAtIndex(*(a1 + 64), v4))
      {
        if (Count == ++v4)
        {
          goto LABEL_6;
        }
      }

      v5 = 0;
    }
  }

  else
  {
    FigSimpleMutexLock();
    v5 = 1;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t MovieTrackContainsUnsupportedDataReferences(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    FigSimpleMutexLock();
    if (Count < 1)
    {
LABEL_10:
      v8 = 0;
    }

    else
    {
      v5 = 0;
      while (1)
      {
        v6 = *CFArrayGetValueAtIndex(*(a2 + 64), v5);
        if (v6 != 1970433056 && v6 != 0)
        {
          break;
        }

        if (++v5 >= Count)
        {
          goto LABEL_10;
        }
      }

      v8 = 1;
    }
  }

  else
  {
    FigSimpleMutexLock();
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t MovieTrackIsFrameReorderingRequired(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 720) || MoovAssureSampleTableParsed(a1) || (v3 = *(a2 + 456), v3 < 2))
  {
LABEL_7:
    result = 0;
  }

  else
  {
    destination = 0;
    v4 = 8;
    CMBlockBufferCopyDataBytes(*(a2 + 464), 0, 8uLL, &destination);
    v5 = HIDWORD(destination);
    v6 = 8 * v3;
    while (1)
    {
      destination = 0;
      CMBlockBufferCopyDataBytes(*(a2 + 464), v4, 8uLL, &destination);
      if (HIDWORD(destination) != v5)
      {
        break;
      }

      v4 += 8;
      if (v6 == v4)
      {
        goto LABEL_7;
      }
    }

    result = 1;
  }

  v8 = *(a2 + 728);
  if (v8 && *(v8 + 56))
  {
    if (*(v8 + 13))
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t MovieTrackIsChapterTrack(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 328);
  if (v2 < 1)
  {
    return 0;
  }

  for (i = (*(a1 + 344) + 8); *(i - 2) != 1667785072 || *i != *(a2 + 144); i += 3)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MovieInformationContainsChapters(uint64_t a1)
{
  v1 = *(a1 + 328);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = *(a1 + 344);
  while (1)
  {
    v3 = *v2;
    v2 += 3;
    if (v3 == 1667785072)
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MovieInformationSetAudibleGroupID(uint64_t a1, int a2)
{
  *(a1 + 296) = 1;
  *(a1 + 300) = a2;
  return 0;
}

uint64_t MovieInformationRemoveOneTrackReference(uint64_t *a1, int a2, int a3, int a4)
{
  v4 = a1[41];
  if (v4 >= 1)
  {
    v9 = a1[43];
    v10 = 12 * v4 - 12;
    v11 = v4;
    while (*v9 != a2 || v9[1] != a3 || v9[2] != a4)
    {
      v10 -= 12;
      v9 += 3;
      if (!--v11)
      {
        return 0;
      }
    }

    if (v11 != 1)
    {
      memmove(v9, v9 + 3, v10);
      v4 = a1[41];
    }

    a1[41] = v4 - 1;
    NoteTrackReferenceChange(a1, a2, a3, a4);
  }

  return 0;
}

uint64_t *NoteTrackReferenceChange(uint64_t *result, int a2, int a3, int a4)
{
  v4 = result[38];
  if (v4 <= 0)
  {
    goto LABEL_14;
  }

  v5 = result[40];
  v6 = v5;
  v7 = result[38];
  do
  {
    v8 = *v6;
    if (*(*v6 + 144) == a3)
    {
      goto LABEL_6;
    }

    ++v6;
    --v7;
  }

  while (v7);
  v8 = 0;
LABEL_6:
  while (1)
  {
    v9 = *v5;
    if (*(*v5 + 144) == a4)
    {
      break;
    }

    v5 += 8;
    if (!--v4)
    {
      v9 = 0;
      break;
    }
  }

  if (v8)
  {
    *(v8 + 16) |= 0x100000uLL;
  }

  if (!v9)
  {
LABEL_14:
    v13 = result[5];
    result += 5;
    v12 = v13 | 0x100;
    *result = v13 | 0x100;
    if (a2 != 1667785072)
    {
      return result;
    }

    goto LABEL_15;
  }

  v10 = *(v9 + 16);
  *(v9 + 16) = v10 | 0x100000;
  if (a2 == 1667785072)
  {
    *(v9 + 16) = v10 | 0x300000;
    *(v9 + 922) = 1;
    v11 = result[5];
    result += 5;
    v12 = v11 | 0x100;
LABEL_15:
    *result = v12 | 0x4000;
    return result;
  }

  result[5] |= 0x100uLL;
  return result;
}

uint64_t MovieInformationRemoveAllTrackReferences(uint64_t *a1)
{
  v1 = a1[41];
  if (v1)
  {
    if (v1 >= 1)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        NoteTrackReferenceChange(a1, *(a1[43] + v3), *(a1[43] + v3 + 4), *(a1[43] + v3 + 8));
        ++v4;
        v3 += 12;
      }

      while (v4 < a1[41]);
    }

    a1[41] = 0;
  }

  return 0;
}

uint64_t EnsureTrackReferenceArrayCapacityForAddition(void *a1)
{
  v3 = a1[41];
  if (v3 != a1[42])
  {
    return 0;
  }

  v13 = v1;
  v14 = v2;
  v5 = a1[43];
  if (v5)
  {
    v6 = v3 + 4;
    v7 = malloc_type_realloc(v5, 12 * (v3 + 4), 0x10000403E1C8BA9uLL);
    if (v7)
    {
      v8 = v7;
      result = 0;
      a1[42] = v6;
      a1[43] = v8;
    }

    else
    {
      EnsureTrackReferenceArrayCapacityForAddition_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    *(a1 + 41) = xmmword_196E78890;
    v10 = malloc_type_malloc(0x60uLL, 0x10000403E1C8BA9uLL);
    a1[43] = v10;
    if (v10)
    {
      return 0;
    }

    else
    {
      EnsureTrackReferenceArrayCapacityForAddition_cold_2(&v12);
      return v12;
    }
  }

  return result;
}

uint64_t NewTrackAlternateGroupAssignment(void *a1, void *a2)
{
  v4 = a1[44];
  if (v4 != a1[45])
  {
    goto LABEL_6;
  }

  v5 = a1[46];
  if (v5)
  {
    v6 = v4 + 5;
    v7 = malloc_type_realloc(v5, 8 * (v4 + 5), 0x1000040789AEA99uLL);
    if (v7)
    {
      a1[45] = v6;
      a1[46] = v7;
      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 22) = xmmword_196E77360;
    v8 = malloc_type_malloc(0x50uLL, 0x1000040789AEA99uLL);
    a1[46] = v8;
    if (v8)
    {
      goto LABEL_6;
    }
  }

  if (!NewTrackAlternateGroupAssignment_cold_1())
  {
    return v11;
  }

LABEL_6:
  result = 0;
  *(a1[46] + 8 * a1[44]) = 0;
  v10 = a1[44];
  *a2 = a1[46] + 8 * v10;
  a1[44] = v10 + 1;
  return result;
}

uint64_t MovieInformationRemoveOneAlternateGroupAssignment(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 352);
  if (v2 >= 1)
  {
    v4 = *(a1 + 368);
    v5 = 8 * v2 - 8;
    v6 = v2;
    while (*v4 != *(a2 + 144))
    {
      v5 -= 8;
      v4 += 2;
      if (!--v6)
      {
        return 0;
      }
    }

    if (v6 != 1)
    {
      memmove(v4, v4 + 2, v5);
      v2 = *(a1 + 352);
    }

    *(a1 + 352) = v2 - 1;
  }

  return 0;
}

uint64_t MovieInformationGetTrackAlternateGroupID(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 352);
  if (v2 < 1)
  {
    LOWORD(v2) = 0;
  }

  else
  {
    for (i = (*(a1 + 368) + 4); *(a2 + 144) != *(i - 1); i += 4)
    {
      if (!--v2)
      {
        return v2;
      }
    }

    LOWORD(v2) = *i;
  }

  return v2;
}

uint64_t MovieInformationSetTrackAlternateGroupID(uint64_t a1, uint64_t a2, __int16 a3)
{
  *(a2 + 150) = a3;
  v4 = *(a2 + 16);
  *(a2 + 740) = 0;
  *(a2 + 738) = 0;
  *(a2 + 16) = v4 | 0xC00000;
  MovieInformationEffectTrackAlternateGroupAssignment(a1, a2, a3);
  *(a2 + 16) |= 0x1000uLL;
  return 0;
}

uint64_t MovieInformationEffectTrackAlternateGroupAssignment(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = *(a1 + 352);
  if (v3 >= 1)
  {
    for (i = (*(a1 + 368) + 4); *(i - 1) != *(a2 + 144); i += 4)
    {
      if (!--v3)
      {
        return 0;
      }
    }

    if (*i != a3)
    {
      *i = a3;
      *(a2 + 16) |= 0x1000uLL;
    }
  }

  return 0;
}

void MovieInformationEvaluateTrackAlternateGroupAssignment(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 352);
  if (v4 < 1)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v5 = (*(a1 + 368) + 4);
    while (*(a2 + 144) != *(v5 - 1))
    {
      v5 += 4;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
  }

  v7 = *(a2 + 150);
  if (*(a2 + 740))
  {
    v8 = *(a2 + 738);
    v9 = MovieTrackCopyFormatDescriptionArray(a2);
    if (v9)
    {
      v10 = v9;
      Count = CFArrayGetCount(v9);
      v12 = v8;
      if (Count >= 1)
      {
        v13 = Count;
        ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
        v12 = v7;
        if (CMFormatDescriptionGetMediaType(ValueAtIndex) == 1952807028)
        {
          v15 = 1;
          v16 = 1;
          do
          {
            MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
            if (MediaSubType != 1937142900 && MediaSubType != 2021028980 && MediaSubType != 2004251764)
            {
              break;
            }

            if (!FigValidateRequiredFeaturesOfFormatDescription(ValueAtIndex))
            {
              break;
            }

            v16 = v15 < v13;
            if (v13 == v15)
            {
              break;
            }

            ValueAtIndex = CFArrayGetValueAtIndex(v10, v15++);
          }

          while (CMFormatDescriptionGetMediaType(ValueAtIndex) == 1952807028);
          if (v16)
          {
            v12 = v7;
          }

          else
          {
            v12 = v8;
          }
        }
      }

      CFRelease(v10);
      v7 = v12;
    }

    else
    {
      v7 = v8;
    }
  }

  if (v7 != v6)
  {
    MovieInformationEffectTrackAlternateGroupAssignment(a1, a2, v7);
    *(a2 + 16) |= 0x1000uLL;
  }
}

uint64_t MovieInformationAddNewPerTrackInfo(void *a1, _BYTE *cf)
{
  if (cf[920])
  {
    MovieInformationAddNewPerTrackInfo_cold_1(&v13);
    return v13;
  }

  v4 = a1[38];
  if (v4 == a1[39])
  {
    v5 = a1[40];
    if (v5)
    {
      v6 = v4 + 4;
      v7 = malloc_type_realloc(v5, 8 * (v4 + 4), 0x2004093837F09uLL);
      if (!v7)
      {
        MovieInformationAddNewPerTrackInfo_cold_2(&v14);
        return v14;
      }

      a1[39] = v6;
      a1[40] = v7;
    }

    else
    {
      *(a1 + 19) = xmmword_196E78890;
      v8 = malloc_type_malloc(0x40uLL, 0x2004093837F09uLL);
      a1[40] = v8;
      if (!v8)
      {
        MovieInformationAddNewPerTrackInfo_cold_3(&v15);
        return v15;
      }
    }
  }

  v9 = CFRetain(cf);
  v10 = a1[38];
  *(a1[40] + 8 * v10) = v9;
  a1[38] = v10 + 1;
  v11 = a1[8];
  if (v11)
  {
    v11 = CFRetain(v11);
  }

  *(cf + 80) = v11;
  if (!a1[4])
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRegisterForBarrierSupport();
  result = 0;
  cf[921] = 1;
  return result;
}

void MovieTrackEvaluateParsedLanguageCode(uint64_t a1, int a2)
{
  v3 = *MEMORY[0x1E695E480];
  StringForLanguageCode = FigCreateStringForLanguageCode(*MEMORY[0x1E695E480], *(a1 + 716), a2);
  MovieTrackSetLanguageCodeString(a1, StringForLanguageCode);
  if (StringForLanguageCode)
  {
    CFRelease(StringForLanguageCode);
  }

  if (!*(a1 + 848))
  {
    v5 = *(a1 + 716);
    if (v5 <= 0x38)
    {
      if (*(a1 + 716) > 0x30u)
      {
        if (v5 == 49)
        {
          v6 = "az-Cyrl";
        }

        else
        {
          if (v5 != 50)
          {
            return;
          }

          v6 = "az-Arab";
        }
      }

      else if (v5 == 19)
      {
        v6 = "zh-Hant";
      }

      else
      {
        if (v5 != 33)
        {
          return;
        }

        v6 = "zh-Hans";
      }
    }

    else if (*(a1 + 716) <= 0x53u)
    {
      if (v5 == 57)
      {
        v6 = "mn-Mong";
      }

      else
      {
        if (v5 != 58)
        {
          return;
        }

        v6 = "mn";
      }
    }

    else
    {
      switch(v5)
      {
        case 0x54u:
          v6 = "ms-Arab";
          break;
        case 0x92u:
          v6 = "ga-Latg";
          break;
        case 0x96u:
          v6 = "az";
          break;
        default:
          return;
      }
    }

    v7 = CFStringCreateWithCStringNoCopy(v3, v6, 0x600u, *MEMORY[0x1E695E498]);
    if (v7)
    {
      *(a1 + 848) = v7;
    }
  }
}

uint64_t MovieInformationCreateiTunesMetadataReader(void *a1, void *a2)
{
  v4 = a1[47];
  if (v4 && (Value = CFDictionaryGetValue(v4, @"com.apple.itunes")) != 0)
  {
    v6 = Value;
    v7 = *MEMORY[0x1E695E480];

    return FigMetadataReaderCreateForiTunesMetadataArray(v7, v6, a2);
  }

  else
  {

    return MovieInformationCreateiTunesMetadataReaderFromByteStream(a1, a2);
  }
}

uint64_t MovieTrackInvalidateEnhancedGaplessInfo(uint64_t result)
{
  if (*(result + 24) == 1936684398)
  {
    v2 = result;
    FigSimpleMutexLock();
    v3 = *(v2 + 832);
    if (v3)
    {
      CFRelease(v3);
      *(v2 + 832) = 0;
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t MovieTrackCreate(uint64_t *a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (sRegisterMoviePerTrackInfoTypeOnce != -1)
  {
    MovieTrackCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = FigReentrantMutexCreate();
    *(Instance + 32) = v4;
    if (v4)
    {
      v5 = (Current + *MEMORY[0x1E695E460]);
      *(Instance + 200) = 1;
      *(Instance + 184) = 1065353216;
      *(Instance + 152) = kIdentityMatrix_0;
      *(Instance + 168) = unk_196E788D0;
      *(Instance + 120) = v5;
      *(Instance + 128) = v5;
      *(Instance + 196) = 1065353216;
      *(Instance + 232) = 0;
      *(Instance + 208) = v5;
      *(Instance + 216) = v5;
      *(Instance + 88) = xmmword_196E788A0;
      *(Instance + 104) = 0x8000000000000000;
      *(Instance + 112) = 0;
      *(Instance + 296) = 0x80000000;
      *(Instance + 304) = 0x8000000000000000;
      v6 = CFRetain(@"und");
      *(Instance + 856) = v6;
      v7 = 0;
      *(Instance + 236) = FigGetISOLanguageCodeForString(v6);
      *(Instance + 584) = GetNumSamples_stsz;
      *(Instance + 592) = GetSampleSize_stsz;
      *(Instance + 600) = GetSampleSizeFieldSize_stsz;
      *(Instance + 608) = GetSizeTable_stsz;
      *(Instance + 616) = GetChunkOffset_stco;
      *(Instance + 624) = GetChunkCount_stco;
      *(Instance + 632) = GetChunkTable_stco;
    }

    else
    {
      fig_log_get_emitter();
      v7 = FigSignalErrorAtGM();
      if (v7)
      {
        CFRelease(Instance);
        Instance = 0;
      }
    }
  }

  else
  {
    MovieTrackCreate_cold_2(&v9);
    v7 = v9;
  }

  *a1 = Instance;
  return v7;
}

uint64_t MovieInformationGetBasicMetrics(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  if (a2)
  {
    *a2 = *(a1 + 244);
  }

  if (a3)
  {
    *a3 = *(a1 + 248);
  }

  if (a4)
  {
    *a4 = *(a1 + 240);
  }

  if (a5)
  {
    v5 = *(a1 + 256);
    v6 = *(a1 + 272);
    *(a5 + 32) = *(a1 + 288);
    *a5 = v5;
    *(a5 + 16) = v6;
  }

  return 0;
}

uint64_t MovieInformationGetTimeInfo(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(a1 + 216);
  }

  if (a3)
  {
    *a3 = *(a1 + 224);
  }

  return 0;
}

uint64_t MovieInformationGetMoovLocation(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(a1 + 96);
  }

  if (a3)
  {
    *a3 = *(a1 + 104);
  }

  return 0;
}

double MovieInformationGetMovieDuration@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  CMTimeMake(a2, *(a1 + 232), *(a1 + 240));
  if (*(a1 + 157))
  {
    MovieDurationWithFragmentContribution(a1, &v5);
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t MovieInformationMetadataFormatIsAvailable(void *a1, CFTypeRef cf1)
{
  v4 = @"com.apple.quicktime.udta";
  if (CFEqual(cf1, @"com.apple.quicktime.udta"))
  {
    v5 = a1[14];
  }

  else
  {
    v4 = @"org.mp4ra";
    if (CFEqual(cf1, @"org.mp4ra"))
    {
      v5 = a1[15];
    }

    else
    {
      v4 = @"com.apple.quicktime.mdta";
      if (CFEqual(cf1, @"com.apple.quicktime.mdta"))
      {
        v5 = a1[16];
      }

      else
      {
        v4 = @"com.apple.itunes";
        result = CFEqual(cf1, @"com.apple.itunes");
        if (!result)
        {
          return result;
        }

        v5 = a1[17];
      }
    }
  }

  if (v5 > 0)
  {
    return 1;
  }

  result = a1[47];
  if (result)
  {
    return CFDictionaryGetValue(result, v4) != 0;
  }

  return result;
}

const __CFDictionary *MovieInformationGetMovieMetadataItemArray(uint64_t a1, const void *a2)
{
  result = *(a1 + 376);
  if (result)
  {
    return CFDictionaryGetValue(result, a2);
  }

  return result;
}

uint64_t MovieInformationCreateQuickTimeUserDataReader(void *a1, void *a2)
{
  v4 = a1[47];
  if (v4 && (Value = CFDictionaryGetValue(v4, @"com.apple.quicktime.udta")) != 0)
  {
    v6 = Value;
    v7 = *MEMORY[0x1E695E480];

    return FigMetadataReaderCreateForQuickTimeUserDataArray(v7, v6, a2);
  }

  else
  {

    return MovieInformationCreateQuickTimeUserDataReaderFromByteStream(a1, a2);
  }
}

uint64_t MovieInformationCreateQuickTimeUserDataReaderFromByteStream(void *a1, void *a2)
{
  if (a1[14] < 1)
  {
    *a2 = 0;
    return 0;
  }

  else
  {
    v4 = CFGetAllocator(a1);
    v5 = a1[7];
    v6 = a1[14];

    return FigMetadataReaderCreateForQuickTimeUserData(v4, v5, v6, a2);
  }
}

uint64_t MovieInformationCreateISOUserDataReader(void *a1, void *a2)
{
  v4 = a1[47];
  if (v4 && (Value = CFDictionaryGetValue(v4, @"org.mp4ra")) != 0)
  {
    v6 = Value;
    v7 = *MEMORY[0x1E695E480];

    return FigMetadataReaderCreateForISOUserDataArray(v7, v6, a2);
  }

  else
  {

    return MovieInformationCreateISOUserDataReaderFromByteStream(a1, a2);
  }
}

uint64_t MovieInformationCreateISOUserDataReaderFromByteStream(void *a1, void *a2)
{
  if (a1[15] < 1)
  {
    *a2 = 0;
    return 0;
  }

  else
  {
    v4 = CFGetAllocator(a1);
    v5 = a1[7];
    v6 = a1[15];

    return FigMetadataReaderCreateForISOUserData(v4, v5, v6, a2);
  }
}

uint64_t MovieInformationCreateQuickTimeMetadataReader(void *a1, void *a2)
{
  v4 = a1[47];
  if (v4 && (Value = CFDictionaryGetValue(v4, @"com.apple.quicktime.mdta")) != 0)
  {
    v6 = Value;
    v7 = *MEMORY[0x1E695E480];

    return FigMetadataReaderCreateForQuickTimeMetadataArray(v7, v6, a2);
  }

  else
  {

    return MovieInformationCreateQuickTimeMetadataReaderFromByteStream(a1, a2);
  }
}

uint64_t MovieInformationCreateQuickTimeMetadataReaderFromByteStream(void *a1, void *a2)
{
  if (a1[16] < 1)
  {
    *a2 = 0;
    return 0;
  }

  else
  {
    v4 = CFGetAllocator(a1);
    v5 = a1[7];
    v6 = a1[16];

    return FigMetadataReaderCreateForQuickTimeMetadata(v4, v5, v6, a2);
  }
}

uint64_t MovieInformationCreateiTunesMetadataReaderFromByteStream(void *a1, void *a2)
{
  if (a1[17] < 1)
  {
    *a2 = 0;
    return 0;
  }

  else
  {
    v4 = CFGetAllocator(a1);
    v5 = a1[7];
    v6 = a1[17];

    return FigMetadataReaderCreateForiTunes(v4, v5, v6, a2);
  }
}

uint64_t MovieTrackCreateQuickTimeUserDataReader(uint64_t a1, uint64_t *cf, void *a3)
{
  v6 = cf[111];
  if (v6 && (Value = CFDictionaryGetValue(v6, @"com.apple.quicktime.udta")) != 0)
  {
    v8 = Value;
    v9 = *MEMORY[0x1E695E480];

    return FigMetadataReaderCreateForQuickTimeUserDataArray(v9, v8, a3);
  }

  else
  {

    return MovieTrackCreateQuickTimeUserDataReaderFromByteStream(a1, cf, a3);
  }
}

uint64_t MovieTrackSetTrackMetadataItemArray(int a1, uint64_t a2, void *key, void *value)
{
  Mutable = *(a2 + 888);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a2 + 888) = Mutable;
  }

  CFDictionarySetValue(Mutable, key, value);
  result = FigCFEqual();
  if (result)
  {
    v9 = 8;
  }

  else
  {
    result = FigCFEqual();
    if (result)
    {
      v9 = 32;
    }

    else
    {
      result = FigCFEqual();
      v9 = 16 * (result != 0);
    }
  }

  *(a2 + 16) |= v9;
  return result;
}

uint64_t MovieTrackCreateISOUserDataReader(uint64_t a1, uint64_t *cf, void *a3)
{
  v6 = cf[111];
  if (v6 && (Value = CFDictionaryGetValue(v6, @"org.mp4ra")) != 0)
  {
    v8 = Value;
    v9 = *MEMORY[0x1E695E480];

    return FigMetadataReaderCreateForISOUserDataArray(v9, v8, a3);
  }

  else
  {

    return MovieTrackCreateISOUserDataReaderFromByteStream(a1, cf, a3);
  }
}

uint64_t AddOneDiscoveredUUIDBox(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *&v21 = a2;
  *(&v21 + 1) = a3;
  if (!a5)
  {
    return 0;
  }

  v10 = *a1;
  if (*a1 < 1)
  {
LABEL_10:
    if (v10 == a1[1])
    {
      v14 = a1[2];
      if (v14)
      {
        v15 = v10 + 4;
        v16 = malloc_type_realloc(v14, 40 * (v10 + 4), 0x10000407A37F5ACuLL);
        if (v16)
        {
          a1[1] = v15;
          a1[2] = v16;
          goto LABEL_19;
        }
      }

      else
      {
        *a1 = xmmword_196E788B0;
        v18 = malloc_type_malloc(0xA0uLL, 0x10000407A37F5ACuLL);
        a1[2] = v18;
        if (v18)
        {
          goto LABEL_19;
        }
      }

      if (!NewTrackAlternateGroupAssignment_cold_1())
      {
        return v22;
      }
    }

LABEL_19:
    result = 0;
    v19 = 5 * *a1;
    *(a1[2] + 40 * *a1) = v21;
    v20 = a1[2] + 8 * v19;
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;
    *(v20 + 32) = a6;
    ++*a1;
    return result;
  }

  v11 = a1[2];
  v12 = *a1;
  while (*(v11 + 32) != a6 || *v11 != a2 || *(v11 + 8) != a3)
  {
    v11 += 40;
    if (!--v12)
    {
      goto LABEL_10;
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t MovieTrackMetadataFormatIsAvailable(int a1, void *a2, CFTypeRef cf1)
{
  v5 = @"com.apple.quicktime.udta";
  if (CFEqual(cf1, @"com.apple.quicktime.udta"))
  {
    v6 = a2[84];
  }

  else
  {
    v5 = @"org.mp4ra";
    if (CFEqual(cf1, @"org.mp4ra"))
    {
      v6 = a2[85];
    }

    else
    {
      v5 = @"com.apple.quicktime.mdta";
      result = CFEqual(cf1, @"com.apple.quicktime.mdta");
      if (!result)
      {
        return result;
      }

      v6 = a2[86];
    }
  }

  if (v6 > 0)
  {
    return 1;
  }

  result = a2[111];
  if (result)
  {
    return CFDictionaryGetValue(result, v5) != 0;
  }

  return result;
}

const __CFDictionary *MovieTrackGetTrackMetadataItemArray(uint64_t a1, const void *a2)
{
  result = *(a1 + 888);
  if (result)
  {
    return CFDictionaryGetValue(result, a2);
  }

  return result;
}

uint64_t MovieTrackCreateQuickTimeUserDataReaderFromByteStream(uint64_t a1, uint64_t *cf, void *a3)
{
  if (cf[84] < 1)
  {
    *a3 = 0;
    return 0;
  }

  else
  {
    v6 = CFGetAllocator(cf);
    v7 = *(a1 + 56);
    v8 = cf[84];

    return FigMetadataReaderCreateForQuickTimeUserData(v6, v7, v8, a3);
  }
}

uint64_t MovieTrackCreateISOUserDataReaderFromByteStream(uint64_t a1, uint64_t *cf, void *a3)
{
  if (cf[85] < 1)
  {
    *a3 = 0;
    return 0;
  }

  else
  {
    v6 = CFGetAllocator(cf);
    v7 = *(a1 + 56);
    v8 = cf[85];

    return FigMetadataReaderCreateForISOUserData(v6, v7, v8, a3);
  }
}

uint64_t MovieTrackCreateQuickTimeMetadataReader(uint64_t a1, uint64_t *cf, void *a3)
{
  v6 = cf[111];
  if (v6 && (Value = CFDictionaryGetValue(v6, @"com.apple.quicktime.mdta")) != 0)
  {
    v8 = Value;
    v9 = *MEMORY[0x1E695E480];

    return FigMetadataReaderCreateForQuickTimeMetadataArray(v9, v8, a3);
  }

  else
  {

    return MovieTrackCreateQuickTimeMetadataReaderFromByteStream(a1, cf, a3);
  }
}

uint64_t MovieTrackCreateQuickTimeMetadataReaderFromByteStream(uint64_t a1, uint64_t *cf, void *a3)
{
  if (cf[86] < 1)
  {
    *a3 = 0;
    return 0;
  }

  else
  {
    v6 = CFGetAllocator(cf);
    v7 = *(a1 + 56);
    v8 = cf[86];

    return FigMetadataReaderCreateForQuickTimeMetadata(v6, v7, v8, a3);
  }
}

uint64_t MovieInformationCreateTrackReferenceDictionary(const __CFAllocator *a1, uint64_t a2, CFDictionaryRef *a3)
{
  v4 = *(a2 + 328);
  if (v4)
  {
    valuePtr = 0;
    v6 = malloc_type_malloc(8 * v4, 0x6004044C4A2DFuLL);
    if (v6)
    {
      v7 = malloc_type_malloc(8 * *(a2 + 328), 0x6004044C4A2DFuLL);
      if (v7)
      {
        v8 = malloc_type_malloc(16 * *(a2 + 328), 0x6004044C4A2DFuLL);
        if (v8)
        {
          v9 = v8;
          if (*(a2 + 328) >= 1)
          {
            values = v7;
            v31 = v6;
            v29 = a3;
            v10 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = *MEMORY[0x1E695E480];
            do
            {
              v16 = *(a2 + 344);
              if (*(v16 + 12 * v14) != v13)
              {
                if (v10)
                {
                  v31[v12] = CopyKeyStringForTrackReferenceOSType(a1, v13);
                  values[v12++] = CFArrayCreate(a1, v9, v11, MEMORY[0x1E695E9C0]);
                  if (v11 < 1)
                  {
                    v11 = 0;
                  }

                  else
                  {
                    v17 = v9;
                    do
                    {
                      if (*v17)
                      {
                        CFRelease(*v17);
                      }

                      ++v17;
                      --v11;
                    }

                    while (v11);
                  }
                }

                v10 = 0;
                v16 = *(a2 + 344);
                v13 = *(v16 + 12 * v14);
              }

              v18 = v16 + 12 * v14;
              HIDWORD(valuePtr) = *(v18 + 4);
              v19 = *(v18 + 8);
              LODWORD(valuePtr) = v19;
              if (HIDWORD(valuePtr))
              {
                v20 = v19 == 0;
              }

              else
              {
                v20 = 1;
              }

              if (!v20)
              {
                v21 = &v9[v11];
                *v21 = CFNumberCreate(v15, kCFNumberSInt32Type, &valuePtr + 4);
                v11 += 2;
                v21[1] = CFNumberCreate(v15, kCFNumberSInt32Type, &valuePtr);
                ++v10;
              }

              ++v14;
            }

            while (v14 < *(a2 + 328));
            if (!v10)
            {
              a3 = v29;
              v7 = values;
              v6 = v31;
              goto LABEL_32;
            }

            v6 = v31;
            v31[v12] = CopyKeyStringForTrackReferenceOSType(a1, v13);
            v7 = values;
            values[v12++] = CFArrayCreate(a1, v9, v11, MEMORY[0x1E695E9C0]);
            if (v11 >= 1)
            {
              v22 = v9;
              a3 = v29;
              do
              {
                if (*v22)
                {
                  CFRelease(*v22);
                }

                ++v22;
                --v11;
              }

              while (v11);
LABEL_32:
              if (v12)
              {
LABEL_33:
                v24 = CFDictionaryCreate(a1, v6, v7, v12, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v12 >= 1)
                {
                  for (i = 0; i != v12; ++i)
                  {
                    v26 = v6[i];
                    if (v26)
                    {
                      CFRelease(v26);
                    }

                    v27 = v7[i];
                    if (v27)
                    {
                      CFRelease(v27);
                    }
                  }
                }

                v23 = 0;
                goto LABEL_43;
              }

              goto LABEL_42;
            }

            a3 = v29;
            if (v12)
            {
              goto LABEL_33;
            }
          }

LABEL_42:
          v23 = 0;
          v24 = 0;
LABEL_43:
          free(v6);
          free(v7);
          free(v9);
          goto LABEL_44;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    fig_log_get_emitter();
    v23 = FigSignalErrorAtGM();
    v24 = 0;
    v9 = 0;
    goto LABEL_43;
  }

  v23 = 0;
  v24 = 0;
LABEL_44:
  *a3 = v24;
  return v23;
}

CFDictionaryRef MovieInformationCreateQTLoadSettingsDictionary(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  keys[0] = @"DefaultHints";
  keys[1] = @"PreloadFlags";
  keys[2] = @"PreloadStart";
  keys[3] = @"PreloadDuration";
  if (!*(a3 + 880))
  {
    return 0;
  }

  v6 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (a3 + 876));
  if (values)
  {
    v16 = CFNumberCreate(v6, kCFNumberSInt32Type, (a3 + 872));
    if (v16)
    {
      v7 = *(a3 + 864);
      if (v7 == -1)
      {
        v8 = 2;
        goto LABEL_10;
      }

      CMTimeMake(&v13, v7, *(a2 + 240));
      v17 = CMTimeCopyAsDictionary(&v13, a1);
      if (v17)
      {
        CMTimeMake(&v13, *(a3 + 868), *(a2 + 240));
        v18 = CMTimeCopyAsDictionary(&v13, a1);
        if (v18)
        {
          v8 = 4;
LABEL_10:
          v9 = CFDictionaryCreate(a1, keys, &values, v8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          goto LABEL_11;
        }

        MovieInformationCreateQTLoadSettingsDictionary_cold_1();
      }

      else
      {
        MovieInformationCreateQTLoadSettingsDictionary_cold_2();
      }
    }

    else
    {
      MovieInformationCreateQTLoadSettingsDictionary_cold_3();
    }
  }

  else
  {
    MovieInformationCreateQTLoadSettingsDictionary_cold_4();
  }

  v9 = 0;
LABEL_11:
  for (i = 0; i != 32; i += 8)
  {
    v11 = *(&values + i);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  return v9;
}

__CFArray *MovieInformationCreateAlternateGroupArray(const __CFAllocator *a1, void *a2, int a3)
{
  v3 = a2[44];
  if (v3 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = (a2[46] + 4);
  v9 = a2[44];
  do
  {
    v10 = *v8;
    v8 += 4;
    if (v10)
    {
      v7 = 1;
    }

    --v9;
  }

  while (v9);
  if (!v7)
  {
    return 0;
  }

  v11 = malloc_type_malloc(16 * v3, 0x10200400CC4F872uLL);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  valuePtr = 0;
  v13 = a2[44];
  if (v13 <= 0)
  {
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    goto LABEL_32;
  }

  v14 = 0;
  v15 = 0;
  v16 = *MEMORY[0x1E695E480];
  v17 = MEMORY[0x1E695E9C0];
  do
  {
    v18 = a2[46];
    v19 = (v18 + 8 * v15);
    v20 = *(v19 + 2);
    if (!*(v19 + 2))
    {
      goto LABEL_25;
    }

    if (a3)
    {
      v21 = a2[38];
      if (v21 < 1)
      {
        goto LABEL_25;
      }

      v22 = *v19;
      v23 = a2[40];
      while (*(*v23 + 144) != v22)
      {
        v23 += 8;
        if (!--v21)
        {
          goto LABEL_25;
        }
      }
    }

    if (v14 < 1)
    {
      v24 = 0;
LABEL_23:
      ++v14;
      v27 = &v12[2 * v24];
      *v27 = v20;
      *(v27 + 1) = CFArrayCreateMutable(a1, 0, v17);
      v18 = a2[46];
    }

    else
    {
      v24 = 0;
      v25 = v12;
      while (1)
      {
        v26 = *v25;
        v25 += 2;
        if (v26 == v20)
        {
          break;
        }

        if (v14 == ++v24)
        {
          v24 = v14;
          goto LABEL_23;
        }
      }
    }

    valuePtr = *(v18 + 8 * v15);
    v28 = CFNumberCreate(v16, kCFNumberSInt32Type, &valuePtr);
    CFArrayAppendValue(v12[2 * v24 + 1], v28);
    CFRelease(v28);
    v13 = a2[44];
LABEL_25:
    ++v15;
  }

  while (v15 < v13);
  Mutable = CFArrayCreateMutable(a1, v14, MEMORY[0x1E695E9C0]);
  if (v14 >= 1)
  {
    v30 = v12 + 1;
    do
    {
      CFArrayAppendValue(Mutable, *v30);
      v31 = *v30;
      v30 += 2;
      CFRelease(v31);
      --v14;
    }

    while (v14);
  }

LABEL_32:
  free(v12);
  return Mutable;
}

uint64_t MovieInformationSetByteStream(uint64_t a1, const void *a2)
{
  number = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = *MEMORY[0x1E695FF78];
  v16 = 0;
  result = v5(CMBaseObject, v6, 0, &number);
  if (!result)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, &v16);
    CFRelease(number);
    v8 = *(a1 + 48);
    *(a1 + 48) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    *(a1 + 72) = v16;
    number = 0;
    v9 = CMByteStreamGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v11 = v10(v9, *MEMORY[0x1E695FFA0], 0, &number);
      v12 = number;
      if (v11)
      {
        v13 = 1;
      }

      else
      {
        v13 = number == 0;
      }

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = CFURLCopyPathExtension(number);
        IsISOExtension = FigCFStringIsISOExtension(v14);
        *(a1 + 84) = IsISOExtension;
        if (v14 && CFStringCompare(@"aax", v14, 1uLL) == kCFCompareEqualTo)
        {
          *(a1 + 152) = 1;
        }

        *(a1 + 208) = FigCFStringIsHEIFExtension(v14);
        v12 = number;
      }

      if (v12)
      {
        CFRelease(v12);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    return 0;
  }

  return result;
}

uint64_t MovieInformationCheckForMovieTimescaleAnomaly_7135294(uint64_t result)
{
  v1 = *(result + 320);
  if (!v1)
  {
    return result;
  }

  v2 = *(result + 304);
  if (v2 < 1)
  {
    return result;
  }

  v3 = *v1;
  if (*(result + 81))
  {
    if (v2 != 1 || *(result + 82) != 0)
    {
      return result;
    }
  }

  else if (v2 != 1 || *(result + 84) == 0)
  {
    return result;
  }

  if (*(v3 + 24) == 1936684398 && !*(v3 + 722))
  {
    v6 = *(v3 + 728);
    if ((!v6 || !*(v6 + 56)) && *(result + 240) == 600)
    {
      v7 = *(v3 + 232);
      if (v7 != 600)
      {
        v8 = *(v3 + 136);
        if (v8 == *(v3 + 224) && v8 == *(result + 232))
        {
          *(result + 240) = v7;
        }
      }
    }
  }

  return result;
}

uint64_t MovieInformationSetParsedCreateAndModTimes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 216) = a2;
  *(a1 + 224) = a3;
  return 0;
}

uint64_t MovieInformationSetParsedMovieDuration(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 232) = a2;
  *(a1 + 240) = a3;
  return 0;
}

uint64_t MovieInformationSetMovieTimeScale(uint64_t a1, int a2)
{
  if (*(a1 + 232))
  {
    v7 = v2;
    v8 = v3;
    MovieInformationSetMovieTimeScale_cold_1(&v6);
    return v6;
  }

  else
  {
    result = 0;
    *(a1 + 240) = a2;
    *(a1 + 40) |= 0x8000uLL;
  }

  return result;
}

uint64_t MovieInformationSetPreferredRate(uint64_t a1, float a2)
{
  *(a1 + 244) = a2;
  *(a1 + 40) |= 0x200uLL;
  return 0;
}

uint64_t MovieInformationSetPreferredVolume(uint64_t a1, float a2)
{
  *(a1 + 248) = a2;
  *(a1 + 40) |= 0x400uLL;
  return 0;
}

uint64_t MovieInformationSetMovieMatrix(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    v3 = *(a2 + 16);
    *(a1 + 288) = *(a2 + 32);
  }

  else
  {
    *(a1 + 288) = 1065353216;
    v2 = kIdentityMatrix_0;
    v3 = unk_196E788D0;
  }

  *(a1 + 256) = v2;
  *(a1 + 272) = v3;
  *(a1 + 40) |= 0x800uLL;
  return 0;
}

uint64_t MovieInformationSetPSSHDataEntries(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 384);
  *(a1 + 384) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 40) |= 0x20000uLL;
  return 0;
}

uint64_t MovieInformationAllTracksAreSelfContained(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (v1 < 1)
  {
    return 1;
  }

  for (i = 0; i < v1; ++i)
  {
    if (*(a1 + 304) <= i)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(*(a1 + 320) + 8 * i);
    }

    result = MovieTrackIsSelfContained(v4);
    if (!result)
    {
      break;
    }
  }

  return result;
}

uint64_t MovieInformationCreateTrack(uint64_t a1, int a2, int a3, _DWORD *a4, void *a5)
{
  cf = 0;
  if (*(a1 + 252) <= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = *(a1 + 252);
  }

  *(a1 + 252) = v9 + 1;
  v10 = MovieTrackCreate(&cf);
  if (v10)
  {
    v16 = v10;
    v11 = cf;
    if (!cf)
    {
      return v16;
    }

LABEL_17:
    CFRelease(v11);
    return v16;
  }

  v11 = cf;
  v12 = 0.0;
  if (a2 == 1936684398)
  {
    v12 = 1.0;
  }

  *(cf + 49) = v12;
  v11[6] = a2;
  v11[36] = v9;
  v13 = MovieInformationAddNewPerTrackInfo(a1, v11);
  if (v13 || (v13 = MovieInformationAddOneAlternateGroupAssignment(a1, v11, 0), v13))
  {
    v16 = v13;
    goto LABEL_17;
  }

  v14 = *(a1 + 32);
  *(a1 + 40) |= 0x2002uLL;
  if (v14)
  {
    values = v11;
    v15 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kMovieInformationPayloadKey_TrackInfo, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDeferNotificationToDispatchQueue();
    if (v15)
    {
      CFRelease(v15);
    }
  }

  *a5 = v11;
  v16 = 0;
  if (a4)
  {
    *a4 = v9;
  }

  return v16;
}

uint64_t MovieInformationRemoveTrack(uint64_t *a1, uint64_t a2)
{
  v28 = 0;
  v2 = a1[38];
  v3 = v2 - 1;
  if (v2 < 1)
  {
LABEL_5:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v6 = a1[40];
    v7 = 8 * v2 - 8;
    while (*v6 != a2)
    {
      v7 -= 8;
      ++v6;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    if (v2 != 1)
    {
      memmove(v6, v6 + 1, v7);
      v3 = a1[38] - 1;
    }

    a1[38] = v3;
    BasicInfo = MovieTrackGetBasicInfo(a2, 0, &v28);
    if (BasicInfo)
    {
      v27 = BasicInfo;
    }

    else
    {
      v10 = a1[44];
      if (v10 < 1)
      {
        goto LABEL_18;
      }

      v11 = (a1[46] + 4);
      while (*(a2 + 144) != *(v11 - 1))
      {
        v11 += 4;
        if (!--v10)
        {
          goto LABEL_18;
        }
      }

      if (*v11)
      {
        v12 = 132;
      }

      else
      {
LABEL_18:
        v12 = 4;
      }

      MovieInformationRemoveOneAlternateGroupAssignment(a1, a2);
      if (*(a2 + 200))
      {
        v12 |= 0x2000uLL;
      }

      v13 = a1[41];
      if (v13 >= 1)
      {
        for (i = 0; i < v13; ++i)
        {
          v15 = (a1[43] + 12 * i);
          v16 = v15[1];
          v17 = v15[2];
          if (v16 != v28)
          {
            v18 = v17 == v28;
            v17 = v28;
            if (!v18)
            {
              continue;
            }
          }

          NoteTrackReferenceChange(a1, *v15, v16, v17);
          v19 = a1[41];
          if (v19 + ~i)
          {
            memmove((a1[43] + 12 * i), (a1[43] + 12 * i + 12), 12 * (v19 + ~i));
            v19 = a1[41];
          }

          v13 = v19 - 1;
          a1[41] = v13;
          --i;
        }
      }

      v20 = a1[38];
      if (v20 < 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = 0;
        v22 = a1[40];
        do
        {
          v23 = *v22++;
          v24 = *(v23 + 136);
          if (v24 > v21)
          {
            v21 = v24;
          }

          --v20;
        }

        while (v20);
      }

      if (a1[29] == v21)
      {
        v25 = a1[5];
      }

      else
      {
        a1[29] = v21;
        v25 = a1[5] | 1;
      }

      *(a2 + 920) = 1;
      a1[5] = v25 | v12;
      if (a1[4])
      {
        values = a2;
        v26 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kMovieInformationPayloadKey_TrackInfo, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CMNotificationCenterGetDefaultLocalCenter();
        FigDeferNotificationToDispatchQueue();
        if (v26)
        {
          CFRelease(v26);
        }
      }

      v27 = 0;
    }

    CFRelease(a2);
    return v27;
  }
}

uint64_t MovieSampleTableGetSampleCountAtIndex(uint64_t a1, int a2)
{
  destination = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 416), 8 * a2, 8uLL, &destination);
  return bswap32(destination);
}

uint64_t MovieSampleTableGetSampleToChunkFirstChunk(uint64_t a1, int a2)
{
  v4 = 0;
  v3 = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 440), 12 * a2, 0xCuLL, &v3);
  return bswap32(v3);
}

uint64_t MovieSampleTableGetSampleToChunkSamplesPerChunk(uint64_t a1, int a2)
{
  v4 = 0;
  v3 = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 440), 12 * a2, 0xCuLL, &v3);
  return bswap32(HIDWORD(v3));
}

uint64_t MovieSampleTableGetSampleToChunkSampleDescriptionID(uint64_t a1, int a2)
{
  v4 = 0;
  v3 = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 440), 12 * a2, 0xCuLL, &v3);
  return bswap32(v4);
}

uint64_t MovieSampleTableSet_stsz(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  *(a1 + 312) = a2;
  *(a1 + 316) = a3;
  v7 = *(a1 + 320);
  *(a1 + 320) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 584) = GetNumSamples_stsz;
  *(a1 + 600) = GetSampleSizeFieldSize_stsz;
  *(a1 + 608) = GetSizeTable_stsz;
  *(a1 + 592) = GetSampleSize_stsz;
  *(a1 + 292) = a3;
  *(a1 + 288) = a2;
  return 0;
}

uint64_t GetSampleSize_stsz(uint64_t a1, int a2)
{
  result = *(a1 + 316);
  destination = result;
  if (!result)
  {
    CMBlockBufferCopyDataBytes(*(a1 + 320), 4 * a2, 4uLL, &destination);
    return bswap32(destination);
  }

  return result;
}

uint64_t MovieSampleTableSet_stz2(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  *(a1 + 288) = a2;
  *(a1 + 340) = a2;
  *(a1 + 336) = a3;
  v6 = *(a1 + 344);
  *(a1 + 344) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 584) = GetNumSamples_stz2;
  *(a1 + 600) = GetSampleSizeFieldSize_stz2;
  *(a1 + 608) = GetSizeTable_stz2;
  switch(a3)
  {
    case 16:
      result = 0;
      v8 = GetSampleSize_stz2_16;
      break;
    case 8:
      result = 0;
      v8 = GetSampleSize_stz2_8;
      break;
    case 4:
      result = 0;
      v8 = GetSampleSize_stz2_4;
      break;
    default:
      MovieSampleTableSet_stz2_cold_1(a1, &v9);
      return v9;
  }

  *(a1 + 592) = v8;
  return result;
}

uint64_t GetSampleSize_stz2_4(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  destination = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 344), (a2 + (a2 >> 31)) >> 1, 1uLL, &destination);
  if (v2)
  {
    return destination & 0xF;
  }

  else
  {
    return destination >> 4;
  }
}

uint64_t GetSampleSize_stz2_8(uint64_t a1, int a2)
{
  destination = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 344), a2, 1uLL, &destination);
  return destination;
}

uint64_t GetSampleSize_stz2_16(uint64_t a1, int a2)
{
  destination = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 344), 2 * a2, 2uLL, &destination);
  return bswap32(destination) >> 16;
}

uint64_t MovieSampleTableSet_stco(uint64_t a1, int a2, CFTypeRef cf)
{
  *(a1 + 360) = a2;
  v4 = *(a1 + 368);
  *(a1 + 368) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 616) = GetChunkOffset_stco;
  *(a1 + 624) = GetChunkCount_stco;
  *(a1 + 632) = GetChunkTable_stco;
  return 0;
}

uint64_t GetChunkOffset_stco(uint64_t a1, int a2)
{
  destination = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 368), 4 * a2, 4uLL, &destination);
  return bswap32(destination);
}

uint64_t MovieSampleTableSet_co64(uint64_t a1, int a2, CFTypeRef cf)
{
  *(a1 + 384) = a2;
  v4 = *(a1 + 392);
  *(a1 + 392) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 616) = GetChunkOffset_co64;
  *(a1 + 624) = GetChunkCount_co64;
  *(a1 + 632) = GetChunkTable_co64;
  return 0;
}

unint64_t GetChunkOffset_co64(uint64_t a1, int a2)
{
  destination = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 392), 8 * a2, 8uLL, &destination);
  return bswap64(destination);
}

uint64_t MovieSampleTableSet_stts(uint64_t a1, int a2, CFTypeRef cf)
{
  *(a1 + 408) = a2;
  v3 = *(a1 + 416);
  *(a1 + 416) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return 0;
}

uint64_t MovieSampleTableSet_stsc(uint64_t a1, int a2, CFTypeRef cf)
{
  *(a1 + 432) = a2;
  v3 = *(a1 + 440);
  *(a1 + 440) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return 0;
}

uint64_t MovieSampleTableSet_ctts(uint64_t a1, int a2, CFTypeRef cf)
{
  *(a1 + 456) = a2;
  v5 = *(a1 + 464);
  *(a1 + 464) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 720) = a2 > 0;
  return 0;
}

uint64_t MovieSampleTableSet_stss(uint64_t a1, int a2, CFTypeRef cf)
{
  *(a1 + 480) = a2;
  v3 = *(a1 + 488);
  *(a1 + 488) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return 0;
}

uint64_t MovieSampleTableSet_stps(uint64_t a1, int a2, CFTypeRef cf)
{
  *(a1 + 504) = a2;
  v3 = *(a1 + 512);
  *(a1 + 512) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return 0;
}

uint64_t MovieSampleTableSet_sdtp(uint64_t a1, int a2, CFTypeRef cf)
{
  *(a1 + 528) = a2;
  v3 = *(a1 + 536);
  *(a1 + 536) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return 0;
}

uint64_t MovieInformationLockForRead(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return FigReadWriteLockLockForRead();
  }

  return result;
}

uint64_t MovieInformationUnlockForRead(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return FigReadWriteLockUnlockForRead();
  }

  return result;
}

uint64_t MovieInformationLockForWrite(uint64_t a1)
{
  if (*(a1 + 24))
  {

    return FigReadWriteLockLockForWrite();
  }

  else
  {
    v5 = v1;
    v6 = v2;
    MovieInformationLockForWrite_cold_1(&v4);
    return v4;
  }
}

uint64_t MovieInformationUnlockForWrite(void *a1)
{
  if (a1[3])
  {
    if (a1[4])
    {
      v2 = a1[38];
      if (v2 >= 1)
      {
        v3 = 0;
        v4 = *MEMORY[0x1E695E480];
        v5 = MEMORY[0x1E695E9D8];
        v6 = MEMORY[0x1E695E9E8];
        do
        {
          if (a1[38] <= v3)
          {
            v7 = 0;
          }

          else
          {
            v7 = *(a1[40] + 8 * v3);
          }

          if (*(v7 + 922) && (a1[5] & 1) != 0)
          {
            *(v7 + 16) |= 0x200000uLL;
          }

          v8 = *(v7 + 16);
          if ((v8 & 0x1000) != 0)
          {
            a1[5] |= 0x80uLL;
            if ((v8 & 0x400000) == 0)
            {
LABEL_13:
              if ((v8 & 0x800000) == 0)
              {
                goto LABEL_14;
              }

              goto LABEL_21;
            }
          }

          else if ((v8 & 0x400000) == 0)
          {
            goto LABEL_13;
          }

          a1[5] |= 0x80uLL;
          if ((v8 & 0x800000) == 0)
          {
LABEL_14:
            if ((v8 & 4) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_22;
          }

LABEL_21:
          a1[5] |= 0x80uLL;
          if ((v8 & 4) == 0)
          {
LABEL_15:
            if ((v8 & 0x40) == 0)
            {
              goto LABEL_16;
            }

            goto LABEL_23;
          }

LABEL_22:
          a1[5] |= 0x1000uLL;
          if ((v8 & 0x40) == 0)
          {
LABEL_16:
            if ((v8 & 0x200000) != 0)
            {
              goto LABEL_24;
            }

            goto LABEL_17;
          }

LABEL_23:
          a1[5] |= 0x2000uLL;
          if ((v8 & 0x200000) != 0)
          {
LABEL_24:
            a1[5] |= 0x4000uLL;
LABEL_25:
            values = CFNumberCreate(v4, kCFNumberSInt64Type, (v7 + 16));
            if (values)
            {
              v9 = CFDictionaryCreate(v4, &kMovieInformationPayloadKey_ChangeBits, &values, 1, v5, v6);
            }

            else
            {
              v9 = 0;
            }

            CMNotificationCenterGetDefaultLocalCenter();
            FigDeferNotificationToDispatchQueue();
            if (v9)
            {
              CFRelease(v9);
            }

            if (values)
            {
              CFRelease(values);
            }

            goto LABEL_32;
          }

LABEL_17:
          if (v8)
          {
            goto LABEL_25;
          }

LABEL_32:
          ++v3;
        }

        while (v2 != v3);
      }

      if (a1[5])
      {
        v10 = *MEMORY[0x1E695E480];
        values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, a1 + 5);
        if (values)
        {
          v11 = CFDictionaryCreate(v10, &kMovieInformationPayloadKey_ChangeBits, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        else
        {
          v11 = 0;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigDeferNotificationToDispatchQueue();
        if (v11)
        {
          CFRelease(v11);
        }

        if (values)
        {
          CFRelease(values);
        }
      }

      a1[5] = 0;
      v12 = a1[38];
      if (v12 >= 1)
      {
        v13 = a1[40];
        do
        {
          v14 = *v13++;
          *(v14 + 16) = 0;
          --v12;
        }

        while (v12);
      }
    }

    v15 = FigReadWriteLockUnlockForWrite();
    v16 = a1[4];
    if (v16)
    {
      dispatch_sync_f(v16, 0, WaitingNoOp);
    }
  }

  else
  {
    MovieInformationUnlockForWrite_cold_1(&values);
    return values;
  }

  return v15;
}

uint64_t MovieInformationGetLastMovieFragmentInformation(uint64_t a1, _DWORD *a2)
{
  if (!*(a1 + 184))
  {
    return 0;
  }

  if (a2)
  {
    *a2 = *(a1 + 188);
  }

  return 1;
}

__n128 MovieInformationGetMovieExtendsDuration@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  *(a2 + 16) = *(v2 + 16);
  if (a1[9].n128_u8[11])
  {
    result = a1[10];
    *a2 = result;
    *(a2 + 16) = a1[11].n128_u64[0];
  }

  return result;
}

uint64_t MovieInformationEstablishFirstParsedFragmentSequenceNumber(uint64_t a1, int a2)
{
  *(a1 + 184) = 1;
  *(a1 + 188) = a2;
  *(a1 + 192) = a2;
  *(a1 + 40) |= 0x10000uLL;
  return 0;
}

uint64_t MovieInformationUpdateLastParsedFragmentSequenceNumber(uint64_t a1, int a2)
{
  *(a1 + 188) = a2;
  *(a1 + 40) |= 0x10000uLL;
  return 0;
}

uint64_t MovieInformationGetFirstFragmentSequenceNumber(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 184) != 1)
  {
    return 0;
  }

  *a2 = *(a1 + 192);
  return 1;
}

uint64_t MovieInformationGetParsedFragmentCount(_DWORD *a1, _DWORD *a2)
{
  if (a1[46] != 1)
  {
    return 0;
  }

  *a2 = a1[47] - a1[48] + 1;
  return 1;
}

uint64_t MovieInformationEnsureMutationsWillNotify(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return 0;
  }

  v7 = v1;
  v8 = v2;
  v5 = dispatch_queue_create("MovieInformationNotifications", 0);
  *(a1 + 32) = v5;
  if (v5)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRegisterForBarrierSupport();
    return 0;
  }

  else
  {
    MovieInformationEnsureMutationsWillNotify_cold_1(&v6);
    return v6;
  }
}

uint64_t MovieInformationCreate(uint64_t a1, int a2, uint64_t *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (sRegisterMovieInformationTypeOnce != -1)
  {
    MovieInformationCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v7 = Instance;
    if ((a2 & 1) != 0 && (*(Instance + 24) = FigReadWriteLockCreate(), (a2 & 2) != 0) && (v8 = MovieInformationEnsureMutationsWillNotify(v7), v8))
    {
      v16 = v8;
      CFRelease(v7);
      return v16;
    }

    else
    {
      result = 0;
      v10 = (Current + *MEMORY[0x1E695E460]);
      *(v7 + 16) = a2;
      *(v7 + 252) = 1;
      *(v7 + 240) = 600;
      *(v7 + 288) = 1065353216;
      *(v7 + 256) = kIdentityMatrix_0;
      *(v7 + 272) = unk_196E788D0;
      __asm { FMOV            V0.2S, #1.0 }

      *(v7 + 244) = _D0;
      *(v7 + 216) = v10;
      *(v7 + 224) = v10;
      *a3 = v7;
    }
  }

  else
  {
    MovieInformationCreate_cold_2(&v17);
    return v17;
  }

  return result;
}

void MovieTrackSetLastSampleDecodeDuration(uint64_t a1, CMTime *a2)
{
  if ((a2->flags & 0x1D) == 1)
  {
    v4 = *(a1 + 232);
    v5 = *(a1 + 408);
    time1 = **&MEMORY[0x1E6960CC0];
    v7 = *a2;
    if (CMTimeCompare(&time1, &v7) < 0)
    {
      if (v5)
      {
        time1.value = 0;
        CMBlockBufferCopyDataBytes(*(a1 + 416), 8 * v5 - 8, 8uLL, &time1);
        v6 = bswap32(HIDWORD(time1.value));
        v7 = *a2;
        CMTimeConvertScale(&time1, &v7, v4, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        *a2 = time1;
        if (a2->value != v6)
        {
          MovieHeaderExtendLastSampleDecodeDuration(a1);
        }
      }

      else
      {
        MovieTrackSetLastSampleDecodeDuration_cold_2(&time1);
      }
    }

    else
    {
      MovieTrackSetLastSampleDecodeDuration_cold_3(&time1);
    }
  }

  else
  {
    MovieTrackSetLastSampleDecodeDuration_cold_1(&time1);
  }
}

uint64_t MovieInformationBeginBuildingMovieFragment(uint64_t a1, char a2, int a3)
{
  v3 = *(a1 + 304);
  if (v3 < 1)
  {
    return 0;
  }

  v6 = 0;
  if (a3)
  {
    v7 = &v23;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E695E480];
  while (1)
  {
    if (*(a1 + 304) <= v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(*(a1 + 320) + 8 * v6);
    }

    v23 = 0;
    v24 = 0uLL;
    v21 = 0;
    v22 = 0;
    if (*(v9 + 768))
    {
      MovieInformationBeginBuildingMovieFragment_cold_1(&v25);
      return v25;
    }

    v10 = *(v9 + 224);
    BasicInfo = MovieTrackGetBasicInfo(v9, &v22 + 1, &v22);
    if (BasicInfo)
    {
      return BasicInfo;
    }

    if (a3)
    {
      v24 = *(v9 + 924);
      HIDWORD(v23) = v22;
    }

    v12 = *(v9 + 80);
    if (v12)
    {
      Count = FigCFDictionaryGetCount();
      v14 = CFGetAllocator(v12);
      Mutable = CFDictionaryCreateMutable(v14, Count, 0, MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v16 = Mutable;
        CFDictionaryApplyFunction(v12, DeepCopySampleGroupDescriptionArraysApplierFunction, Mutable);
        goto LABEL_18;
      }

      if (!MovieInformationBeginBuildingMovieFragment_cold_2())
      {
        return v25;
      }
    }

    v16 = 0;
LABEL_18:
    v17 = TrackFragmentBuilderCreate(SHIDWORD(v22), v16, v10, v7, v8, &v21);
    if (v17)
    {
      break;
    }

    if (v16)
    {
      CFRelease(v16);
    }

    *(v9 + 768) = v21;
    *(v9 + 776) = a2;
    if (v3 == ++v6)
    {
      return 0;
    }
  }

  v18 = v17;
  if (v16)
  {
    CFRelease(v16);
  }

  return v18;
}

void MovieInformationReleaseMovieHeaderSampleTables(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (v1 >= 1)
  {
    for (i = 0; i != v1; ++i)
    {
      if (*(a1 + 304) <= i)
      {
        v4 = 0;
      }

      else
      {
        v4 = *(*(a1 + 320) + 8 * i);
      }

      FreeAllSampleTables(v4);
    }
  }
}

void FreeAllSampleTables(void *a1)
{
  v2 = a1[40];
  if (v2)
  {
    CFRelease(v2);
    a1[40] = 0;
  }

  v3 = a1[43];
  if (v3)
  {
    CFRelease(v3);
    a1[43] = 0;
  }

  v4 = a1[46];
  if (v4)
  {
    CFRelease(v4);
    a1[46] = 0;
  }

  v5 = a1[49];
  if (v5)
  {
    CFRelease(v5);
    a1[49] = 0;
  }

  v6 = a1[52];
  if (v6)
  {
    CFRelease(v6);
    a1[52] = 0;
  }

  v7 = a1[55];
  if (v7)
  {
    CFRelease(v7);
    a1[55] = 0;
  }

  v8 = a1[58];
  if (v8)
  {
    CFRelease(v8);
    a1[58] = 0;
  }

  v9 = a1[61];
  if (v9)
  {
    CFRelease(v9);
    a1[61] = 0;
  }

  v10 = a1[64];
  if (v10)
  {
    CFRelease(v10);
    a1[64] = 0;
  }

  v11 = a1[67];
  if (v11)
  {
    CFRelease(v11);
    a1[67] = 0;
  }

  v12 = a1[41];
  if (v12)
  {
    CFRelease(v12);
    a1[41] = 0;
  }

  v13 = a1[44];
  if (v13)
  {
    CFRelease(v13);
    a1[44] = 0;
  }

  v14 = a1[47];
  if (v14)
  {
    CFRelease(v14);
    a1[47] = 0;
  }

  v15 = a1[50];
  if (v15)
  {
    CFRelease(v15);
    a1[50] = 0;
  }

  v16 = a1[53];
  if (v16)
  {
    CFRelease(v16);
    a1[53] = 0;
  }

  v17 = a1[56];
  if (v17)
  {
    CFRelease(v17);
    a1[56] = 0;
  }

  v18 = a1[59];
  if (v18)
  {
    CFRelease(v18);
    a1[59] = 0;
  }

  v19 = a1[62];
  if (v19)
  {
    CFRelease(v19);
    a1[62] = 0;
  }

  v20 = a1[65];
  if (v20)
  {
    CFRelease(v20);
    a1[65] = 0;
  }

  v21 = a1[68];
  if (v21)
  {
    CFRelease(v21);
    a1[68] = 0;
  }
}

void MovieInformationReleaseMovieFragmentSampleTables(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (v1 >= 1)
  {
    for (i = 0; i != v1; ++i)
    {
      v4 = *(*(*(a1 + 320) + 8 * i) + 768);
      if (v4)
      {
        TrackFragmentBuilderSampleTableRelease(v4);
      }
    }
  }
}

uint64_t UpgradeTo32BitSampleSizes(uint64_t a1)
{
  theBuffer = 0;
  if (!(*(a1 + 584))() || (*(a1 + 600))(a1) > 31)
  {
    return 0;
  }

  dataPointerOut = 0;
  v2 = *(a1 + 340);
  v3 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 4 * v2, *MEMORY[0x1E695E480], 0, 0, 4 * v2, 1u, &theBuffer);
  v4 = theBuffer;
  if (!v3)
  {
    CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
    if (v2 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = (*(a1 + 592))(a1, v5);
        v7 = dataPointerOut;
        *dataPointerOut = bswap32(v6);
        dataPointerOut = v7 + 4;
        v5 = (v5 + 1);
      }

      while (v2 != v5);
    }

    *(a1 + 312) = v2;
    v8 = theBuffer;
    if (theBuffer)
    {
      v8 = CFRetain(theBuffer);
    }

    *(a1 + 320) = v8;
    *(a1 + 316) = 0;
    *(a1 + 292) = 0;
    *(a1 + 340) = 0;
    v9 = *(a1 + 344);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 344) = 0;
    }

    v10 = *(a1 + 352);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 352) = 0;
    }

    v3 = 0;
    *(a1 + 584) = GetNumSamples_stsz;
    *(a1 + 592) = GetSampleSize_stsz;
    *(a1 + 600) = GetSampleSizeFieldSize_stsz;
    *(a1 + 608) = GetSizeTable_stsz;
    v4 = theBuffer;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v3;
}

void MakeTableReadyToWrite(const void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = 0;
  if (!v3)
  {
    MakeTableReadyToWrite_cold_1(&v4, a2, a1, v2);
  }
}

uint64_t MovieInformationSetMovieMetadataItemArray(uint64_t a1, void *key, void *value)
{
  Mutable = *(a1 + 376);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a1 + 376) = Mutable;
  }

  CFDictionarySetValue(Mutable, key, value);
  result = FigCFEqual();
  if (result)
  {
    v8 = 8;
  }

  else
  {
    result = FigCFEqual();
    if (result)
    {
      v8 = 64;
    }

    else
    {
      result = FigCFEqual();
      if (result)
      {
        v8 = 32;
      }

      else
      {
        result = FigCFEqual();
        v8 = 16 * (result != 0);
      }
    }
  }

  *(a1 + 40) |= v8;
  return result;
}

uint64_t MovieTrackScaleSegment(CMTime *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v35 = *a3;
  v36 = *(a3 + 2);
  *&v34.value = *(a3 + 24);
  v34.epoch = *(a3 + 5);
  *&v33.value = *a4;
  v33.epoch = *(a4 + 16);
  v31 = *MEMORY[0x1E6960CC0];
  *&v40.value = *MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  v40.epoch = v7;
  memset(&v39, 0, sizeof(v39));
  *&lhs.start.value = *a3;
  lhs.start.epoch = *(a3 + 2);
  rhs = *(a3 + 1);
  CMTimeAdd(&v39, &lhs.start, &rhs);
  *&lhs.start.value = *&v33.value;
  lhs.start.epoch = v33.epoch;
  Seconds = CMTimeGetSeconds(&lhs.start);
  *&lhs.start.value = *&v34.value;
  lhs.start.epoch = v34.epoch;
  v9 = CMTimeGetSeconds(&lhs.start);
  *&lhs.start.value = *&v34.value;
  lhs.start.epoch = v34.epoch;
  rhs = v33;
  if (!CMTimeCompare(&lhs.start, &rhs))
  {
    goto LABEL_32;
  }

  *&lhs.start.value = *&v34.value;
  lhs.start.epoch = v34.epoch;
  *&rhs.value = v31;
  rhs.epoch = v7;
  if (CMTimeCompare(&lhs.start, &rhs) < 1)
  {
    return 4294954516;
  }

  *&lhs.start.value = *&v33.value;
  lhs.start.epoch = v33.epoch;
  *&rhs.value = v31;
  rhs.epoch = v7;
  if (CMTimeCompare(&lhs.start, &rhs) < 1)
  {
    return 4294954516;
  }

  *&lhs.start.value = v35;
  lhs.start.epoch = v36;
  *&rhs.value = v31;
  rhs.epoch = v7;
  if (CMTimeCompare(&lhs.start, &rhs) < 0)
  {
    return 4294954516;
  }

  v10 = *(a2 + 816);
  if (v10 < 1)
  {
    return 4294954516;
  }

  v11 = (a2 + 808);
  v12 = *(a2 + 808) + 96 * v10;
  v13 = *(v12 - 48);
  v14 = *(v12 - 16);
  *&lhs.start.epoch = *(v12 - 32);
  *&lhs.duration.timescale = v14;
  *&lhs.start.value = v13;
  CMTimeRangeGetEnd(&v40, &lhs);
  *&lhs.start.value = v35;
  lhs.start.epoch = v36;
  rhs = v40;
  if ((CMTimeCompare(&lhs.start, &rhs) & 0x80000000) == 0)
  {
LABEL_32:
    MovieTrackInvalidateEnhancedGaplessInfo(a2);
    *&lhs.start.value = *a3;
    lhs.start.epoch = *(a3 + 2);
    NoteEditSegmentModification(a1, a2, &lhs.start, 0);
    UpdateDurationsForEditSegmentChange(a1, a2);
    return 0;
  }

  *&lhs.start.value = v35;
  lhs.start.epoch = v36;
  EditIndexStartingAtTimeInTrackSplitEditIfNecessary = FindEditIndexStartingAtTimeInTrackSplitEditIfNecessary(a2 + 808, &lhs.start);
  if (EditIndexStartingAtTimeInTrackSplitEditIfNecessary < 0)
  {
    return 4294954516;
  }

  v16 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary;
  if (EditIndexStartingAtTimeInTrackSplitEditIfNecessary >= *(a2 + 816))
  {
    return 4294954516;
  }

  lhs.start = v39;
  rhs = v40;
  if ((CMTimeCompare(&lhs.start, &rhs) & 0x80000000) == 0)
  {
    v18 = *(a2 + 816);
    goto LABEL_12;
  }

  lhs.start = v39;
  v17 = FindEditIndexStartingAtTimeInTrackSplitEditIfNecessary(a2 + 808, &lhs.start);
  if (v17 < 0)
  {
    return 4294954516;
  }

  v18 = v17;
  if (v17 >= *(a2 + 816))
  {
    return 4294954516;
  }

LABEL_12:
  if (v16 == v18 - 1)
  {
    v19 = v16;
    v20 = *v11 + 96 * v16;
    v21 = *(v20 + 72);
    lhs.start.epoch = *(v20 + 88);
    *&lhs.start.value = v21;
    rhs = v34;
    if (!CMTimeCompare(&lhs.start, &rhs))
    {
      v22 = *v11 + 96 * v16;
      *(v22 + 72) = *&v33.value;
      *(v22 + 88) = v33.epoch;
      goto LABEL_20;
    }
  }

  else
  {
    v19 = v16;
  }

  if (v16 < v18)
  {
    v32 = a1;
    v23 = 96 * v19 + 72;
    v24 = v19;
    v25 = Seconds / v9;
    do
    {
      v26 = *v11 + v23;
      v27 = *v26;
      rhs.epoch = *(v26 + 16);
      *&rhs.value = v27;
      CMTimeMultiplyByFloat64(&lhs.start, &rhs, v25);
      v28 = *&lhs.start.value;
      *(v26 + 16) = lhs.start.epoch;
      *v26 = v28;
      ++v24;
      v23 += 96;
    }

    while (v18 > v24);
    a1 = v32;
  }

LABEL_20:
  *&lhs.start.value = v35;
  lhs.start.epoch = v36;
  UpdateTrackStartTimes(a2 + 808, v19, &lhs.start.value);
  if (!v16 || v16 >= *(a2 + 816) || !CombineEditSegmentsIfPossible(*v11 + 96 * v19 - 96, *v11 + 96 * v19, *v11 + 96 * v19 - 96) || (result = DeleteEditsFromTrack(a2 + 808, v19, 1), --v18, !result))
  {
    if (v18 < 1 || v18 >= *(a2 + 816) || !CombineEditSegmentsIfPossible(*v11 + 96 * v18 - 96, *v11 + 96 * v18, *v11 + 96 * v18 - 96) || (result = DeleteEditsFromTrack(a2 + 808, v18, 1), !result))
    {
      if (v16)
      {
        v30 = v16 - 1;
      }

      else
      {
        v30 = 0;
      }

      DeleteEditsWithZeroDuration(a2 + 808, v30);
      goto LABEL_32;
    }
  }

  return result;
}

uint64_t MovieInformationSetParsedIFFItemInformation(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    if (*(a1 + 200))
    {
      MovieInformationSetParsedIFFItemInformation_cold_1(&v5);
      return v5;
    }

    else
    {
      v3 = CFRetain(cf);
      result = 0;
      *(a1 + 200) = v3;
    }
  }

  else
  {
    MovieInformationSetParsedIFFItemInformation_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieInformationCopyIFFItemInformation(uint64_t a1, void *a2)
{
  v3 = *(a1 + 200);
  if (v3)
  {
    v3 = CFRetain(v3);
  }

  *a2 = v3;
  return 0;
}

void MovieInformationSetAssetAnalysisReporter(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 64);
  *(a1 + 64) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t NEW_findSampleInTable(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, int a4, _DWORD *a5)
{
  v10 = (a2)(a1, *a5);
  result = 1;
  if (v10 < a4)
  {
    v12 = 1;
  }

  else
  {
    v12 = -1;
  }

  if (v10 != a4)
  {
    v13 = v10;
    do
    {
      v14 = *a5;
      if (v10 >= a4)
      {
        result = 0;
        if (v13 < a4 || !v14)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (v13 > a4 || v14 + 1 == a3)
        {
          return result;
        }
      }

      *a5 = v14 + v12;
      v13 = a2(a1);
    }

    while (v13 != a4);
    return 1;
  }

  return result;
}

uint64_t RegisterMoviePerTrackInfoType()
{
  result = _CFRuntimeRegisterClass();
  sMoviePerTrackInfoID = result;
  return result;
}

void FinalizeMoviePerTrackInfo(uint64_t a1)
{
  ReleaseSampleDescriptionInfoArray(a1);
  ReleaseDataReferenceInfoArray(a1);
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 856);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 856) = 0;
  }

  v4 = *(a1 + 848);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 848) = 0;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 80) = 0;
  }

  v7 = *(a1 + 728);
  if (v7)
  {
    FreeFragmentInfos(v7);
    free(*(a1 + 728));
    *(a1 + 728) = 0;
  }

  FreeAllSampleTables(a1);
  v8 = *(a1 + 696);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 640);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 640) = 0;
  }

  free(*(a1 + 808));
  *(a1 + 808) = 0;
  v10 = *(a1 + 832);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 832) = 0;
  }

  v11 = *(a1 + 912);
  if (v11)
  {
    *(a1 + 912) = 0;
    free(v11);
  }

  v12 = *(a1 + 888);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 888) = 0;
  }

  if (*(a1 + 32))
  {
    FigSimpleMutexDestroy();
    *(a1 + 32) = 0;
  }

  if (*(a1 + 921))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterBarrier();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterUnregisterForBarrierSupport();
    *(a1 + 921) = 0;
  }

  TrackFragmentBuilderRelease(*(a1 + 768));
  *(a1 + 768) = 0;
  free(*(a1 + 784));
  *(a1 + 784) = 0;
}

uint64_t RegisterMovieInformationType()
{
  result = _CFRuntimeRegisterClass();
  sMovieInformationID = result;
  return result;
}

double InitMovieInformation(_OWORD *a1)
{
  result = 0.0;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t FinalizeMovieInformation(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 304);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(a1 + 320) + 8 * i);
      if (v5)
      {
        CFRelease(v5);
        *(*(a1 + 320) + 8 * i) = 0;
        v3 = *(a1 + 304);
      }
    }
  }

  free(*(a1 + 320));
  free(*(a1 + 344));
  free(*(a1 + 368));
  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 56) = 0;
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 64) = 0;
  }

  v8 = *(a1 + 376);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 376) = 0;
  }

  v9 = *(a1 + 408);
  if (v9)
  {
    *(a1 + 408) = 0;
    free(v9);
  }

  v10 = *(a1 + 384);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 384) = 0;
  }

  v11 = *(a1 + 200);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 200) = 0;
  }

  if (*(a1 + 32))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterBarrier();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterUnregisterForBarrierSupport();
    v12 = *(a1 + 32);
    if (v12)
    {
      dispatch_release(v12);
      *(a1 + 32) = 0;
    }
  }

  return FigReadWriteLockDestroy();
}

void MakeReadyToWrite_stts(uint64_t a1)
{
  blockBufferOut = 0;
  if (!*(a1 + 424))
  {
    if (!CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0x10u, 0, &blockBufferOut))
    {
      v2 = *(a1 + 416);
      if (v2)
      {
        destination = 0;
        v3 = 8 * *(a1 + 408) - 8;
        CMBlockBufferCopyDataBytes(v2, v3, 8uLL, &destination);
        if (*(a1 + 408) >= 2)
        {
          CMBlockBufferAppendBufferReference(blockBufferOut, *(a1 + 416), 0, v3, 0);
        }

        if (CMByteStreamCreateWritableForBlockBuffer())
        {
          goto LABEL_13;
        }

        CMByteStreamAppend();
        goto LABEL_9;
      }

      if (!CMByteStreamCreateWritableForBlockBuffer())
      {
LABEL_9:
        v4 = *(a1 + 416);
        v5 = blockBufferOut;
        *(a1 + 416) = blockBufferOut;
        if (v5)
        {
          CFRetain(v5);
        }

        if (v4)
        {
          CFRelease(v4);
        }
      }
    }

LABEL_13:
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }
  }
}

void MakeReadyToWrite_ctts(uint64_t a1)
{
  blockBufferOut = 0;
  if (!*(a1 + 472))
  {
    if (!CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0x10u, 0, &blockBufferOut))
    {
      v2 = *(a1 + 464);
      if (v2)
      {
        destination = 0;
        v3 = 8 * *(a1 + 456) - 8;
        CMBlockBufferCopyDataBytes(v2, v3, 8uLL, &destination);
        if (*(a1 + 456) >= 2)
        {
          CMBlockBufferAppendBufferReference(blockBufferOut, *(a1 + 464), 0, v3, 0);
        }

        if (CMByteStreamCreateWritableForBlockBuffer())
        {
          goto LABEL_14;
        }

        CMByteStreamAppend();
        goto LABEL_9;
      }

      if (!CMByteStreamCreateWritableForBlockBuffer())
      {
LABEL_9:
        v4 = *(a1 + 464);
        v5 = blockBufferOut;
        *(a1 + 464) = blockBufferOut;
        if (v5)
        {
          CFRetain(v5);
        }

        if (v4)
        {
          CFRelease(v4);
        }

        *(a1 + 720) = 1;
      }
    }

LABEL_14:
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }
  }
}

void DeepCopySampleGroupDescriptionArraysApplierFunction(const void *a1, uint64_t a2, void *cf)
{
  value = 0;
  v6 = CFGetAllocator(cf);
  if (MovieSampleGroupCreateDescriptionArrayDeepCopy(v6, a2, &value))
  {
    DeepCopySampleGroupDescriptionArraysApplierFunction_cold_1();
  }

  else
  {
    CFDictionaryAddValue(cf, a1, value);
  }

  if (value)
  {
    CFRelease(value);
  }
}

uint64_t CombineEditSegmentsIfPossible(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *(a1 + 72);
  v37 = *(a1 + 88);
  v35 = *(a2 + 72);
  v33 = *(a1 + 24);
  v34 = *(a1 + 40);
  v32 = *(a2 + 24);
  *&time1.start.value = *(a1 + 72);
  time1.start.epoch = *(a1 + 88);
  time2 = *(a1 + 24);
  v6 = CMTimeCompare(&time1.start, &time2);
  time1.start = v35;
  time2 = v32;
  v7 = CMTimeCompare(&time1.start, &time2);
  time2 = **&MEMORY[0x1E6960CC0];
  v30 = time2;
  v8 = *(a1 + 64);
  *&time1.start.value = *(a1 + 48);
  *&time1.start.epoch = v8;
  *&time1.duration.timescale = *(a1 + 80);
  CMTimeRangeGetEnd(&v26, &time1);
  *&time1.start.value = *(a2 + 48);
  time1.start.epoch = *(a2 + 64);
  if (CMTimeCompare(&v26, &time1.start))
  {
    return 0;
  }

  if ((*(a1 + 12) & 1) == 0 && (*(a2 + 12) & 1) == 0)
  {
    *&time1.start.value = v36;
    time1.start.epoch = v37;
    v26 = v35;
    CMTimeAdd(&time2, &time1.start, &v26);
    *a3 = *a1;
    v10 = *(a1 + 16);
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    *(a3 + 64) = *(a1 + 64);
    *(a3 + 32) = v11;
    *(a3 + 48) = v12;
    *(a3 + 16) = v10;
    *(a3 + 72) = time2;
    return 1;
  }

  v13 = *(a1 + 16);
  *&time1.start.value = *a1;
  *&time1.start.epoch = v13;
  *&time1.duration.timescale = *(a1 + 32);
  CMTimeRangeGetEnd(&v26, &time1);
  *&time1.start.value = *a2;
  time1.start.epoch = *(a2 + 16);
  v14 = CMTimeCompare(&v26, &time1.start);
  result = 0;
  if (!v14 && (v6 != 0) == (v7 != 0))
  {
    if (!v6 || !v7 || (*&time1.start.value = v36, time1.start.epoch = v37, Seconds = CMTimeGetSeconds(&time1.start), time1.start = v32, v16 = Seconds * CMTimeGetSeconds(&time1.start), time1.start = v35, v17 = CMTimeGetSeconds(&time1.start), *&time1.start.value = v33, time1.start.epoch = v34, v16 == v17 * CMTimeGetSeconds(&time1.start)))
    {
      *&time1.start.value = v36;
      time1.start.epoch = v37;
      v26 = v35;
      CMTimeAdd(&time2, &time1.start, &v26);
      *&time1.start.value = v33;
      time1.start.epoch = v34;
      v26 = v32;
      CMTimeAdd(&v30, &time1.start, &v26);
      v18 = *(a1 + 48);
      *&time1.duration.timescale = *(a1 + 32);
      v28 = v18;
      v19 = *(a1 + 64);
      v20 = *(a1 + 16);
      *&time1.start.value = *a1;
      time1.start.epoch = v20;
      *&v29[8] = time2;
      *v29 = v19;
      time1.duration = v30;
      v21 = *MEMORY[0x1E6960C70];
      v22 = *(MEMORY[0x1E6960C70] + 16);
      *(a1 + 16) = v22;
      *a1 = v21;
      *(a2 + 16) = v22;
      *a2 = v21;
      v23 = *&time1.start.epoch;
      *a3 = *&time1.start.value;
      *(a3 + 16) = v23;
      v24 = *&v29[16];
      *(a3 + 64) = *v29;
      *(a3 + 80) = v24;
      v25 = v28;
      result = 1;
      *(a3 + 32) = *&time1.duration.timescale;
      *(a3 + 48) = v25;
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t FindEditIndexStartingAtTimeInTrackSplitEditIfNecessary(uint64_t a1, CMTime *a2)
{
  v33 = *a2;
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 < 2)
  {
    v5 = 0;
    goto LABEL_12;
  }

  v5 = 0;
  v6 = v2 - 1;
  while (1)
  {
    v7 = (v5 + v6) >> 1;
    v8 = *a1 + 96 * v7;
    *&v31.start.value = *(v8 + 48);
    v31.start.epoch = *(v8 + 64);
    memset(&v36, 0, sizeof(v36));
    v9 = *(v8 + 48);
    v10 = *(v8 + 80);
    *&range.start.epoch = *(v8 + 64);
    *&range.duration.timescale = v10;
    *&range.start.value = v9;
    CMTimeRangeGetEnd(&v36, &range);
    range.start = v33;
    time2 = v36;
    if (CMTimeCompare(&range.start, &time2) < 1)
    {
      break;
    }

    v5 = v7 + 1;
LABEL_9:
    if (v5 >= v6)
    {
      goto LABEL_12;
    }
  }

  range.start = v33;
  time2 = v36;
  if (!CMTimeCompare(&range.start, &time2))
  {
    v5 = v7 + 1;
    goto LABEL_12;
  }

  range.start = v33;
  time2 = v31.start;
  if (CMTimeCompare(&range.start, &time2) < 0)
  {
    v6 = v7 - 1;
    goto LABEL_9;
  }

  v5 = (v5 + v6) >> 1;
LABEL_12:
  v11 = *a1 + 96 * v5;
  v12 = *(v11 + 48);
  range.start.epoch = *(v11 + 64);
  *&range.start.value = v12;
  *&v31.start.value = *&a2->value;
  v31.start.epoch = a2->epoch;
  if (CMTimeCompare(&range.start, &v31.start))
  {
    v13 = v5;
    v14 = (*a1 + 96 * v5);
    v36 = **&MEMORY[0x1E6960CC0];
    time2 = v36;
    v33 = v36;
    rhs = *a2;
    v15 = v14[3];
    v16 = v14[5];
    *&range.start.epoch = v14[4];
    *&range.duration.timescale = v16;
    *&range.start.value = v15;
    v17 = *v14;
    v18 = v14[2];
    *&v31.start.epoch = v14[1];
    *&v31.duration.timescale = v18;
    *&v31.start.value = v17;
    CMTimeMapTimeFromRangeToRange(&v36, &rhs, &range, &v31);
    v5 = (v5 + 1);
    if (!InsertUninitializedEditsIntoTrack(a1, v5, 1u))
    {
      v19 = *a1 + 96 * v13;
      *&range.start.value = *&a2->value;
      range.start.epoch = a2->epoch;
      v20 = *(v19 + 48);
      v31.start.epoch = *(v19 + 64);
      *&v31.start.value = v20;
      CMTimeSubtract(&time2, &range.start, &v31.start);
      range.start = v36;
      v21 = *v19;
      v31.start.epoch = *(v19 + 16);
      *&v31.start.value = v21;
      CMTimeSubtract(&v33, &range.start, &v31.start);
      v22 = *&a2->value;
      *(v19 + 160) = a2->epoch;
      *(v19 + 144) = v22;
      v23 = *(v19 + 72);
      v31.start.epoch = *(v19 + 88);
      *&v31.start.value = v23;
      rhs = time2;
      CMTimeSubtract(&range.start, &v31.start, &rhs);
      v24 = *&range.start.value;
      *(v19 + 184) = range.start.epoch;
      *(v19 + 168) = v24;
      v25 = *&v36.value;
      *(v19 + 112) = v36.epoch;
      *(v19 + 96) = v25;
      v26 = *(v19 + 24);
      v31.start.epoch = *(v19 + 40);
      *&v31.start.value = v26;
      rhs = v33;
      CMTimeSubtract(&range.start, &v31.start, &rhs);
      v27 = *&range.start.value;
      *(v19 + 136) = range.start.epoch;
      *(v19 + 120) = v27;
      v28 = *&time2.value;
      *(v19 + 88) = time2.epoch;
      *(v19 + 72) = v28;
      v29 = *&v33.value;
      *(v19 + 40) = v33.epoch;
      *(v19 + 24) = v29;
      return v5;
    }

    return 0xFFFFFFFFLL;
  }

  return v5;
}

double UpdateTrackStartTimes(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 8) > a2)
  {
    v17 = v3;
    v18 = v4;
    v6 = a2;
    v8 = 96 * a2 + 48;
    do
    {
      v9 = *a1 + v8;
      v10 = *a3;
      *(v9 + 16) = *(a3 + 2);
      *v9 = v10;
      v11 = (*a1 + v8);
      v12 = *v11;
      v13 = v11[2];
      *&v15.start.epoch = v11[1];
      *&v15.duration.timescale = v13;
      *&v15.start.value = v12;
      CMTimeRangeGetEnd(&v16, &v15);
      result = *&v16.value;
      *a3 = v16;
      ++v6;
      v8 += 96;
    }

    while (v6 < *(a1 + 8));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_130(int a1, OpaqueCMBlockBuffer *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CMBlockBufferRef blockBufferOut)
{

  return CMBlockBufferCreateContiguous(v18, a2, v18, 0, 0, 0, 2u, &blockBufferOut);
}

uint64_t OUTLINED_FUNCTION_3_103(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMBlockBufferRef *a8)
{

  return CMBlockBufferCreateContiguous(v8, a2, v8, 0, 0, 0, 2u, a8);
}

uint64_t OUTLINED_FUNCTION_4_101(int a1, OpaqueCMBlockBuffer *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CMBlockBufferRef blockBufferOut)
{

  return CMBlockBufferCreateWithBufferReference(v18, a2, 0, 0, 0, &blockBufferOut);
}

__n128 OUTLINED_FUNCTION_7_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  *(v11 + 44) = *(v11 + 172);
  result = a11;
  *(v11 + 72) = a11;
  return result;
}

void OUTLINED_FUNCTION_16_33(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, _DWORD *a14, int32x2_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, const void *a28, _BYTE *a29)
{

  AddSampleGroupForGroupType(a1, a2, a3, a4, v29, 0, 0, 0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t OUTLINED_FUNCTION_19_33()
{
  v4 = *(v0 + 440);

  return CMBlockBufferCopyDataBytes(v4, v1, 0xCuLL, (v2 - 128));
}

__n128 OUTLINED_FUNCTION_22_25@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, __n128 a4, uint64_t a5)
{
  *a1 = *(v8 - 192);
  *(a1 + 16) = *(v8 - 176);
  *(a1 + 32) = *(v8 - 160);
  *(a1 + 44) = *(v5 + 172);
  *(a1 + 60) = v7;
  *(a1 + 64) = v6;
  result = a4;
  *(a1 + 72) = a4;
  *(a1 + 88) = a5;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_33@<X0>(__int128 a1@<0:X0, 8:X1>, uint64_t a2@<X8>, __int128 a3, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, uint64_t a7, uint64_t a8, uint64_t a9, __int128 time2a, uint64_t time2_16)
{
  time1_16 = a2;
  time2a = a3;
  time2_16 = v13;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_26_24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char destination)
{
  v13 = *(v10 + 416);

  return CMBlockBufferCopyDataBytes(v13, v11, 8uLL, &destination);
}

uint64_t OUTLINED_FUNCTION_33_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *time2, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 time2a, uint64_t time2_16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, CMTime *time1, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t time1a, int time1_8, int time1_12, uint64_t time1_16)
{
  time1a = *(v41 - 120);
  time1_8 = *(v41 - 112);
  time1_12 = v40;
  time1_16 = v39;
  time2a = *(v41 - 224);
  time2_16 = *(v41 - 208);

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_34_19()
{

  return CMByteStreamAppend();
}

uint64_t OUTLINED_FUNCTION_41_17()
{

  return CMByteStreamAppend();
}

uint64_t OUTLINED_FUNCTION_62_11@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t destination, int a7)
{
  a7 = 0;
  destination = 0;
  v9 = *(v7 + 440);

  return CMBlockBufferCopyDataBytes(v9, a1 - 12, 0xCuLL, &destination);
}

uint64_t OUTLINED_FUNCTION_63_11()
{

  return CMByteStreamAppend();
}

CFTypeRef OUTLINED_FUNCTION_69_7(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{

  return MovieSampleGroupCollectionLookupAndRetainSampleGroup(a1, a4, a2);
}

uint64_t OUTLINED_FUNCTION_70_9(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, uint64_t a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef a9)
{

  return CMBlockBufferCreateWithBufferReference(a1, a2, 0, a4, 0, &a9);
}

uint64_t OUTLINED_FUNCTION_71_8(OpaqueCMBlockBuffer *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char destination)
{

  return CMBlockBufferCopyDataBytes(a1, v10, 8uLL, &destination);
}

uint64_t OUTLINED_FUNCTION_91_5(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char destination)
{
  v18 = *(v16 + 440);

  return CMBlockBufferCopyDataBytes(v18, v15, 0xCuLL, &destination);
}

uint64_t OUTLINED_FUNCTION_92_6(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CMBlockBufferRef blockBufferOut)
{

  return CMBlockBufferCreateEmpty(v18, 0, 0, &blockBufferOut);
}

void OUTLINED_FUNCTION_93_4()
{

  JUMPOUT(0x19A8CC720);
}

uint64_t OUTLINED_FUNCTION_94_5(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char destination)
{
  v16 = *(v13 + 464);

  return CMBlockBufferCopyDataBytes(v16, v14, 8uLL, &destination);
}

uint64_t OUTLINED_FUNCTION_95_4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char destination)
{
  v13 = *(v10 + 464);

  return CMBlockBufferCopyDataBytes(v13, v11, 8uLL, &destination);
}

uint64_t OUTLINED_FUNCTION_96_4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char destination)
{
  v16 = *(v13 + 416);

  return CMBlockBufferCopyDataBytes(v16, v14, 8uLL, &destination);
}

void *OUTLINED_FUNCTION_97_7@<X0>(void *__dst@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (a3 + 96 * a2);

  return memcpy(__dst, v4, 0x60uLL);
}

void OUTLINED_FUNCTION_98_3()
{

  MakeTableReadyToWrite((v0 + 320), (v0 + 328));
}

uint64_t OUTLINED_FUNCTION_99_4()
{

  return MovieSampleGroupTypeSpecMakeBasic(1937011553);
}

uint64_t OUTLINED_FUNCTION_100_5()
{

  return MovieSampleGroupTypeSpecMakeBasic(1953718643);
}

uint64_t OUTLINED_FUNCTION_101_3()
{

  return MovieSampleGroupTypeSpecMakeBasic(1937337955);
}

uint64_t OUTLINED_FUNCTION_102_3()
{

  return MovieSampleGroupTypeSpecMakeBasic(1936023917);
}

uint64_t OUTLINED_FUNCTION_103_3()
{

  return MovieSampleGroupTypeSpecMakeBasic(1886547820);
}

uint64_t OUTLINED_FUNCTION_104_3(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 80);

  return MovieSampleGroupAccessorCopyDescriptionForSample(a1, v4, va);
}

uint64_t OUTLINED_FUNCTION_105_4()
{

  return MovieSampleGroupAccessorCreate(v0, v1);
}

const void *OUTLINED_FUNCTION_106_2()
{

  return CFArrayGetValueAtIndex(v0, v1);
}

void OUTLINED_FUNCTION_107_3()
{

  MakeTableReadyToWrite((v0 + 488), (v0 + 496));
}

uint64_t RegisterFigMutableCompositionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigMutableCompositionGetTypeID()
{
  MEMORY[0x19A8D3660](&FigMutableCompositionGetClassID_sRegisterFigMutableCompositionBaseTypeOnce, RegisterFigMutableCompositionBaseType);

  return CMBaseClassGetCFTypeID();
}

void compositionSharedCache_releaseAndClear(void **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1 && !FigAtomicDecrement32())
  {
    v2 = v1[1];
    if (v2)
    {
      CFRelease(v2);
      v1[1] = 0;
    }

    v1[2] = 0;
    v3 = v1[3];
    if (v3)
    {
      CFRelease(v3);
      v1[3] = 0;
    }

    if (v1[4])
    {
      FigSimpleMutexDestroy();
      v1[4] = 0;
    }

    v4 = v1[5];
    if (v4)
    {
      CFDictionaryRemoveAllValues(v4);
      v5 = v1[5];
      if (v5)
      {
        CFRelease(v5);
      }
    }

    free(v1);
  }
}

void mutableComposition_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 24) = 0;
  }

  compositionTable_releaseAndClear((DerivedStorage + 8));
}

__CFString *mutableComposition_CopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v2 = *(DerivedStorage + 8);
  v3 = *(v2 + 32);
  CFStringAppend(Mutable, @"[FigMutableComposition]{\n");
  if (*(v2 + 16) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = compositionTableTrack_CopyDebugDescription(v3);
      if (v4)
      {
        CFStringAppend(Mutable, @",\n");
      }

      CFStringAppend(Mutable, @"  ");
      CFStringAppend(Mutable, v5);
      if (v5)
      {
        CFRelease(v5);
      }

      ++v4;
      v3 += 168;
    }

    while (v4 < *(v2 + 16));
  }

  CFStringAppend(Mutable, @"\n}");
  return Mutable;
}

uint64_t mutableComposition_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v8 = DerivedStorage;
    v9 = *(DerivedStorage + 8);
    if (CFEqual(a2, @"MutableComposition_ByteStreamProvider"))
    {
      v10 = *(*(*(v8 + 8) + 160) + 8);
      if (v10)
      {
LABEL_4:
        v11 = CFRetain(v10);
LABEL_10:
        v13 = v11;
LABEL_14:
        result = 0;
        *a4 = v13;
        return result;
      }

LABEL_13:
      v13 = 0;
      goto LABEL_14;
    }

    if (CFEqual(a2, @"MutableComposition_AssetCreationFlags"))
    {
      v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (*(*(v8 + 8) + 160) + 16));
      goto LABEL_10;
    }

    if (CFEqual(a2, @"MutableComposition_AssetCreationOptions"))
    {
      v10 = *(*(*(v8 + 8) + 160) + 24);
      if (v10)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    if (CFEqual(a2, @"MutableComposition_Metadata"))
    {
      FigSimpleMutexLock();
      *a4 = CFDictionaryCreateCopy(a3, *(*(v8 + 8) + 80));
LABEL_21:
      FigSimpleMutexUnlock();
      return 0;
    }

    if (CFEqual(a2, @"MutableComposition_TrackReferenceDictionary"))
    {
      FigSimpleMutexLock();
      MutableCopy = *(v9 + 48);
      if (MutableCopy)
      {
        Count = CFDictionaryGetCount(MutableCopy);
        MutableCopy = CFDictionaryCreateMutableCopy(a3, Count, *(v9 + 48));
      }

      *a4 = MutableCopy;
      goto LABEL_21;
    }

    if (CFEqual(a2, @"MediaSelectionArray"))
    {
      v16 = *v8;

      return FigCreateMediaSelectionArrayFromFormatReaderProperties(v16, 1, 0, a4);
    }

    else
    {
      return 4294954512;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t mutableComposition_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    v7 = *(DerivedStorage + 8);
    v8 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (CFEqual(a2, @"MutableComposition_AssetCreationFlags"))
    {
      if (a3)
      {
        v10 = CFGetTypeID(a3);
        if (v10 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr);
          v11 = 0;
          *(*(*(v6 + 8) + 160) + 16) = valuePtr;
LABEL_51:
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          return v11;
        }
      }

LABEL_50:
      v11 = 0;
      goto LABEL_51;
    }

    if (CFEqual(a2, @"MutableComposition_AssetCreationOptions"))
    {
      if (a3)
      {
        v13 = CFGetTypeID(a3);
        if (v13 != CFDictionaryGetTypeID())
        {
          goto LABEL_50;
        }

        v14 = *(*(v6 + 8) + 160);
        v15 = *(v14 + 24);
        *(v14 + 24) = a3;
        CFRetain(a3);
      }

      else
      {
        v37 = *(*(v6 + 8) + 160);
        v15 = *(v37 + 24);
        *(v37 + 24) = 0;
      }

      if (v15)
      {
        CFRelease(v15);
      }

      goto LABEL_50;
    }

    if (CFEqual(a2, @"MutableComposition_TrackReferenceDictionary"))
    {
      if (!a3)
      {
        FigSimpleMutexLock();
        goto LABEL_59;
      }

      v16 = CFGetTypeID(a3);
      if (v16 == CFDictionaryGetTypeID())
      {
        Copy = CFDictionaryCreateCopy(v8, a3);
        FigSimpleMutexLock();
        if (Copy)
        {
          v18 = CFGetTypeID(Copy);
          if (v18 != CFDictionaryGetTypeID())
          {
            v20 = 0;
            v21 = 0;
            v36 = 0;
            v11 = 4294954516;
            goto LABEL_70;
          }

          Count = CFDictionaryGetCount(Copy);
          v20 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
          if (v20)
          {
            v21 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
            if (v21)
            {
              CFDictionaryGetKeysAndValues(Copy, v20, v21);
              if (Count < 1)
              {
                v11 = 0;
                v36 = 1;
              }

              else
              {
                v22 = 0;
                v42 = Count;
                v43 = v20;
                while (1)
                {
                  v23 = v20[v22];
                  if (!v23)
                  {
                    break;
                  }

                  v24 = v21[v22];
                  v25 = CFGetTypeID(v23);
                  if (v25 != CFStringGetTypeID() || v24 == 0)
                  {
                    break;
                  }

                  v27 = CFGetTypeID(v24);
                  if (v27 != CFArrayGetTypeID())
                  {
                    break;
                  }

                  if (!GetTrackReferenceOSTypeFromKeyString(v23))
                  {
                    break;
                  }

                  v28 = CFArrayGetCount(v24);
                  v29 = v28;
                  if (v28)
                  {
                    break;
                  }

                  if (v28 >= 1)
                  {
                    v30 = 0;
                    do
                    {
                      LODWORD(valuePtr) = 0;
                      v45 = 0;
                      if (!FigCFArrayGetInt32AtIndex())
                      {
                        goto LABEL_67;
                      }

                      if (!FigCFArrayGetInt32AtIndex())
                      {
                        goto LABEL_67;
                      }

                      v31 = v7[2];
                      if (v31 < 1)
                      {
                        goto LABEL_67;
                      }

                      v32 = v7[4];
                      v33 = v7[2];
                      while (*(v32 + 4) != valuePtr)
                      {
                        v32 += 168;
                        if (!--v33)
                        {
                          v32 = 0;
                          break;
                        }
                      }

                      v34 = (v7[4] + 4);
                      while (1)
                      {
                        v35 = *v34;
                        v34 += 42;
                        if (v35 == v45)
                        {
                          break;
                        }

                        if (!--v31)
                        {
                          goto LABEL_67;
                        }
                      }

                      if (!v32)
                      {
                        goto LABEL_67;
                      }

                      v30 += 2;
                    }

                    while (v30 < v29);
                  }

                  ++v22;
                  v36 = 1;
                  v20 = v43;
                  if (v22 == v42)
                  {
                    v11 = 0;
                    goto LABEL_70;
                  }
                }

LABEL_67:
                v36 = 0;
                v11 = 4294954516;
                v20 = v43;
              }

LABEL_70:
              free(v20);
              free(v21);
              if ((v36 & 1) == 0)
              {
                FigSimpleMutexUnlock();
LABEL_74:
                CFRelease(Copy);
LABEL_75:
                CFDictionarySetValue(Mutable, @"TrackReferenceDictionary", *MEMORY[0x1E695E4D0]);
                goto LABEL_51;
              }

              v39 = v7[6];
              v7[6] = Copy;
              CFRetain(Copy);
              v40 = 0;
              if (!v39)
              {
LABEL_61:
                FigSimpleMutexUnlock();
                v11 = 0;
                if (v40)
                {
                  goto LABEL_75;
                }

                goto LABEL_74;
              }

LABEL_60:
              CFRelease(v39);
              goto LABEL_61;
            }
          }

          else
          {
            v21 = 0;
          }

          v36 = 0;
          v11 = 4294954510;
          goto LABEL_70;
        }

LABEL_59:
        Copy = 0;
        v39 = v7[6];
        v7[6] = 0;
        v40 = 1;
        if (!v39)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }
    }

    else
    {
      if (!CFEqual(a2, @"MutableComposition_Metadata"))
      {
        v11 = 4294954512;
        goto LABEL_51;
      }

      if (!a3 || (v38 = CFGetTypeID(a3), v38 == CFArrayGetTypeID()))
      {
        v41 = mutableComposition_setMetadata(v7, a3, Mutable);
        goto LABEL_64;
      }
    }

    fig_log_get_emitter();
    v41 = FigSignalErrorAtGM();
LABEL_64:
    v11 = v41;
    goto LABEL_51;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void compositionTable_releaseAndClear(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1 && !FigAtomicDecrement32())
  {
    if (*(v1 + 8))
    {
      FigSimpleMutexDestroy();
      *(v1 + 8) = 0;
    }

    if (*(v1 + 72))
    {
      FigSimpleMutexDestroy();
      *(v1 + 72) = 0;
    }

    compositionTable_releaseAndClearMetadata(v1);
    v2 = *(v1 + 32);
    if (v2)
    {
      if (*(v1 + 16) >= 1)
      {
        v3 = 0;
        do
        {
          compositionTableTrack_releaseAndClear(v1, v2);
          ++v3;
          v2 += 21;
        }

        while (v3 < *(v1 + 16));
        v2 = *(v1 + 32);
      }

      free(v2);
      *(v1 + 32) = 0;
    }

    v4 = *(v1 + 40);
    if (v4)
    {
      CFBagRemoveAllValues(v4);
      v5 = *(v1 + 40);
      if (v5)
      {
        CFRelease(v5);
        *(v1 + 40) = 0;
      }
    }

    v6 = *(v1 + 48);
    if (v6)
    {
      CFRelease(v6);
      *(v1 + 48) = 0;
    }

    if (*(v1 + 56))
    {
      FigSimpleMutexDestroy();
      *(v1 + 56) = 0;
    }

    v7 = *(v1 + 64);
    if (v7)
    {
      CFDictionaryRemoveAllValues(v7);
      v8 = *(v1 + 64);
      if (v8)
      {
        CFRelease(v8);
        *(v1 + 64) = 0;
      }
    }

    if (*(v1 + 120))
    {
      FigSimpleMutexDestroy();
      *(v1 + 120) = 0;
    }

    v9 = *(v1 + 136);
    if (v9)
    {
      v10 = *(v1 + 144);
      if (v10 >= 2)
      {
        v11 = 1;
        v12 = 16;
        do
        {
          if (*&v9[v12])
          {
            CFRelease(*&v9[v12]);
            v9 = *(v1 + 136);
            v10 = *(v1 + 144);
            *&v9[v12] = 0;
          }

          ++v11;
          v12 += 16;
        }

        while (v11 < v10);
      }

      free(v9);
      *(v1 + 136) = 0;
    }

    v13 = *(v1 + 152);
    if (v13)
    {
      CFDictionaryRemoveAllValues(v13);
      v14 = *(v1 + 152);
      if (v14)
      {
        CFRelease(v14);
        *(v1 + 152) = 0;
      }
    }

    compositionSharedCache_releaseAndClear((v1 + 160));

    free(v1);
  }
}

void compositionTable_releaseAndClearMetadata(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    CFRelease(v2);
    a1[10] = 0;
  }

  v3 = a1[11];
  if (v3)
  {
    CFRelease(v3);
    a1[11] = 0;
  }

  v4 = a1[12];
  if (v4)
  {
    CFRelease(v4);
    a1[12] = 0;
  }

  v5 = a1[13];
  if (v5)
  {
    CFRelease(v5);
    a1[13] = 0;
  }

  v6 = a1[14];
  if (v6)
  {
    CFRelease(v6);
    a1[14] = 0;
  }
}

void compositionTableTrack_releaseAndClear(uint64_t a1, void *a2)
{
  compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(a2[2], a2[1], *(a1 + 40));
  v3 = a2[2];
  if (v3)
  {
    a2[2] = 0;
    free(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    CFRelease(v4);
    a2[4] = 0;
  }

  v5 = a2[5];
  if (v5)
  {
    CFRelease(v5);
    a2[5] = 0;
  }

  v6 = a2[6];
  if (v6)
  {
    CFRelease(v6);
    a2[6] = 0;
  }

  v7 = a2[7];
  if (v7)
  {
    CFRelease(v7);
    a2[7] = 0;
  }

  v8 = a2[8];
  if (v8)
  {
    CFRelease(v8);
    a2[8] = 0;
  }

  compositionTableTrack_releaseAndClearMetadata(a2);
  v9 = a2[15];
  if (v9)
  {
    CFRelease(v9);
    a2[15] = 0;
  }

  v10 = a2[16];
  if (v10)
  {
    CFRelease(v10);
    a2[16] = 0;
  }

  v11 = a2[17];
  if (v11)
  {
    CFRelease(v11);
    a2[17] = 0;
  }

  v12 = a2[18];
  if (v12)
  {
    CFRelease(v12);
    a2[18] = 0;
  }

  v13 = a2[19];
  if (v13)
  {
    CFRelease(v13);
    a2[19] = 0;
  }

  v14 = a2[13];
  if (v14)
  {
    CFRelease(v14);
    a2[13] = 0;
  }

  v15 = a2[14];
  if (v15)
  {
    CFRelease(v15);
    a2[14] = 0;
  }
}

void compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(uint64_t a1, uint64_t a2, CFMutableBagRef theBag)
{
  if (a1)
  {
    v3 = a2;
    if (a2 >= 1)
    {
      v5 = (a1 + 96);
      do
      {
        if ((*(v5 - 21) & 0x1D) == 1)
        {
          if (theBag && *v5)
          {
            CFBagRemoveValue(theBag, *v5);
          }

          if (*v5)
          {
            CFRelease(*v5);
            *v5 = 0;
          }
        }

        v5 = (v5 + 108);
        --v3;
      }

      while (v3);
    }
  }
}

void compositionTableTrack_releaseAndClearMetadata(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    CFRelease(v2);
    a1[9] = 0;
  }

  v3 = a1[10];
  if (v3)
  {
    CFRelease(v3);
    a1[10] = 0;
  }

  v4 = a1[11];
  if (v4)
  {
    CFRelease(v4);
    a1[11] = 0;
  }

  v5 = a1[12];
  if (v5)
  {
    CFRelease(v5);
    a1[12] = 0;
  }
}

__CFString *compositionTableTrack_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = *(a1 + 4);
  v28 = bswap32(*a1);
  CFStringAppendFormat(Mutable, 0, @"{ trackID %d, mediaType %.4s, ", v3, &v28);
  CFStringAppendFormat(Mutable, 0, @"editCount %d", *(a1 + 8));
  if (*(a1 + 8) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a1 + 16) + v4;
      v7 = *(v6 + 48);
      if ((*(v6 + 12) & 0x1D) == 1)
      {
        time.epoch = *(v6 + 64);
        *&time.value = v7;
        Seconds = CMTimeGetSeconds(&time);
        v9 = *(a1 + 16) + v4;
        v10 = *(v9 + 72);
        time.epoch = *(v9 + 88);
        *&time.value = v10;
        v11 = CMTimeGetSeconds(&time);
        v12 = (*(a1 + 16) + v4);
        v13 = *v12;
        time.epoch = *(v12 + 2);
        *&time.value = v13;
        v14 = CMTimeGetSeconds(&time);
        v15 = *(a1 + 16) + v4;
        v16 = *(v15 + 24);
        time.epoch = *(v15 + 40);
        *&time.value = v16;
        v17 = CMTimeGetSeconds(&time);
        CFStringAppendFormat(Mutable, 0, @", [%1.3f,+%1.3f] -> [%1.3f,+%1.3f] of asset %@ trackID %d", *&Seconds, *&v11, *&v14, *&v17, *(*(a1 + 16) + v4 + 96), *(*(a1 + 16) + v4 + 104));
      }

      else
      {
        time.epoch = *(v6 + 64);
        *&time.value = v7;
        v18 = CMTimeGetSeconds(&time);
        v19 = *(a1 + 16) + v4;
        v20 = *(v19 + 72);
        time.epoch = *(v19 + 88);
        *&time.value = v20;
        v22 = CMTimeGetSeconds(&time);
        CFStringAppendFormat(Mutable, 0, @", [%1.3f,+%1.3f] -> empty", *&v18, *&v22, v23, v24, v25, v26);
      }

      ++v5;
      v4 += 108;
    }

    while (v5 < *(a1 + 8));
  }

  CFStringAppendFormat(Mutable, 0, @" }");
  return Mutable;
}

uint64_t compositionTable_createAvailableMetadataReaderPropertiesArray(const __CFAllocator *a1, uint64_t a2, __CFArray **a3)
{
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v6 = Mutable;
    v7 = *(a2 + 80);
    if (v7)
    {
      if (CFDictionaryGetValue(v7, @"com.apple.itunes"))
      {
        CFArrayAppendValue(v6, @"iTunesMetadataReader");
      }

      v8 = *(a2 + 80);
      if (v8)
      {
        if (CFDictionaryGetValue(v8, @"com.apple.quicktime.mdta"))
        {
          CFArrayAppendValue(v6, @"QuickTimeMetadataReader");
        }

        v9 = *(a2 + 80);
        if (v9)
        {
          if (CFDictionaryGetValue(v9, @"com.apple.quicktime.udta"))
          {
            CFArrayAppendValue(v6, @"QuickTimeUserDataReader");
          }

          v10 = *(a2 + 80);
          if (v10 && CFDictionaryGetValue(v10, @"org.mp4ra"))
          {
            CFArrayAppendValue(v6, @"ISOUserDataReader");
          }
        }
      }
    }

    if (!CFArrayGetCount(v6))
    {
      CFRelease(v6);
      v6 = 0;
    }

    result = 0;
    *a3 = v6;
  }

  else
  {
    compositionTable_createAvailableMetadataReaderPropertiesArray_cold_1(&v12);
    return v12;
  }

  return result;
}

uint64_t mutableComposition_CopyFormatReader(const void *a1, int a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = CFGetAllocator(a1);
  if (a2 || !*DerivedStorage)
  {
    FigFormatReaderGetClassID();
    v9 = CMDerivedObjectCreate();
    if (v9)
    {
      return v9;
    }

    v10 = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      compositionTable_createCopy(*MEMORY[0x1E695E4B0], *(DerivedStorage + 8), v10);
    }

    else
    {
      *v10 = *(DerivedStorage + 8);
      FigAtomicIncrement32();
      *DerivedStorage = CFRetain(0);
    }

    *(v10 + 8) = FigSimpleMutexCreate();
    *(v10 + 16) = CFDictionaryCreateMutable(v8, 0, 0, MEMORY[0x1E695E9E8]);
    *(v10 + 24) = a2 == 0;
    v11 = 0;
  }

  else
  {
    v11 = CFRetain(*DerivedStorage);
  }

  v9 = 0;
  *a4 = v11;
  return v9;
}

uint64_t mutableComposition_AddTrack(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage[1];
  FigSimpleMutexLock();
  compositionTable_addTrack(v9, a2, a4, a5, 0);
  ++*(v9 + 4);
  FigSimpleMutexUnlock();
  if (*DerivedStorage)
  {
    mutableComposition_postPossiblyDeferredTracksChangedNotification();
  }

  return 0;
}

uint64_t mutableComposition_DeleteTrack(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage[1];
  FigSimpleMutexLock();
  v5 = *(v4 + 16);
  if (v5 < 1)
  {
LABEL_5:
    fig_log_get_emitter();
    v9 = FigSignalErrorAtGM();
    v10 = 0;
  }

  else
  {
    v6 = *(v4 + 32);
    v7 = -v5;
    v8 = 1;
    while (*(v6 + 4) != a2)
    {
      v6 += 168;
      ++v8;
      if (v7 + v8 == 1)
      {
        goto LABEL_5;
      }
    }

    if (*(v4 + 48))
    {
      mutableComposition_DeleteTrack_cold_1((v4 + 48), &v13, &v14, v6);
    }

    compositionTableTrack_releaseAndClear(v4, v6);
    v11 = *(v4 + 16);
    if (v11 > v8)
    {
      memmove(v6, (v6 + 168), 168 * (v11 - v8));
      v11 = *(v4 + 16);
    }

    v9 = 0;
    *(v4 + 16) = v11 - 1;
    *(v4 + 4) += 2;
    v10 = 1;
  }

  FigSimpleMutexUnlock();
  compositionTable_discardUnusedAssets(v4);
  if (v10 && *DerivedStorage)
  {
    mutableComposition_postPossiblyDeferredTracksChangedNotification();
  }

  return v9;
}

uint64_t mutableComposition_CopyTrackEditList(uint64_t a1, int a2, void *a3, uint64_t a4, CFTypeRef *a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigSimpleMutexLock();
  v10 = *(v9 + 16);
  if (v10 >= 1)
  {
    v11 = *(v9 + 32) + 8;
    while (*(v11 - 4) != a2)
    {
      v11 += 168;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    if (a3)
    {
      *a3 = *v11;
    }

    if (!a5)
    {
      goto LABEL_17;
    }

    v13 = *v11;
    if (*v11 <= a4)
    {
      if (v13 >= 1)
      {
        memcpy(a5, *(v11 + 8), 108 * v13);
        v13 = *v11;
        if (*v11 >= 1)
        {
          v14 = 0;
          v15 = a5 + 12;
          do
          {
            if (*v15)
            {
              CFRetain(*v15);
              v13 = *v11;
            }

            ++v14;
            v15 = (v15 + 108);
          }

          while (v14 < v13);
        }
      }

      bzero(a5 + 108 * v13, 108 * (a4 - v13));
LABEL_17:
      v12 = 0;
      goto LABEL_18;
    }
  }

LABEL_5:
  fig_log_get_emitter();
  v12 = FigSignalErrorAtGM();
LABEL_18:
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t mutableComposition_AddFormatReaderForURL(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v6 = *(DerivedStorage + 8);
      if (CMBaseObjectGetVTable() != &kComposite_FormatReader_VTable)
      {
        v7 = *(v6 + 160);
        value = 0;
        FigSimpleMutexLock();
        if (CFDictionaryContainsKey(*(v7 + 40), a2))
        {
          v8 = 0;
        }

        else
        {
          v10 = CFGetAllocator(a3);
          v8 = FigAssetCreateWithFormatReader(v10, a3, 0, 0, &value);
          if (value)
          {
            CFDictionarySetValue(*(v7 + 40), a2, value);
            v11 = value;
            FigSimpleMutexUnlock();
            if (v11)
            {
              FigSimpleMutexLock();
              CFDictionarySetValue(*(v6 + 64), a2, v11);
              FigSimpleMutexUnlock();
              CFRelease(v11);
            }

            return v8;
          }
        }

        FigSimpleMutexUnlock();
        return v8;
      }
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t mutableComposition_CopyTrackProperty(uint64_t a1, int a2, const void *a3, const __CFAllocator *a4, void *a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigSimpleMutexLock();
  v10 = *(v9 + 16);
  if (v10 >= 1)
  {
    v11 = *(v9 + 32) + 104;
    while (*(v11 - 100) != a2)
    {
      v11 += 168;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    if (CFEqual(a3, @"MutableCompositionTrack_NaturalTimeScale") || CFEqual(a3, @"TrackTimescale"))
    {
      ReconstitutedMetadataProperty = *(v11 - 72);
      if (!ReconstitutedMetadataProperty)
      {
LABEL_10:
        v12 = 0;
        *a5 = ReconstitutedMetadataProperty;
        goto LABEL_11;
      }
    }

    else if (CFEqual(a3, @"MutableCompositionTrack_LanguageCode") || CFEqual(a3, @"TrackLanguageCode"))
    {
      ReconstitutedMetadataProperty = *(v11 - 64);
      if (!ReconstitutedMetadataProperty)
      {
        goto LABEL_10;
      }
    }

    else if (CFEqual(a3, @"MutableCompositionTrack_AlternateGroupID") || CFEqual(a3, @"AlternateGroupID") || CFEqual(a3, @"MutableCompositionTrack_AlternateGroupID"))
    {
      ReconstitutedMetadataProperty = *v11;
      if (!*v11)
      {
        goto LABEL_10;
      }
    }

    else if (CFEqual(a3, @"MutableCompositionTrack_ExtendedLanguageTag") || CFEqual(a3, @"ExtendedLanguageTagString"))
    {
      ReconstitutedMetadataProperty = *(v11 - 56);
      if (!ReconstitutedMetadataProperty)
      {
        goto LABEL_10;
      }
    }

    else if (CFEqual(a3, @"MutableCompositionTrack_PreferredTransform") || CFEqual(a3, @"TrackMatrix"))
    {
      ReconstitutedMetadataProperty = *(v11 - 48);
      if (!ReconstitutedMetadataProperty)
      {
        goto LABEL_10;
      }
    }

    else if (CFEqual(a3, @"MutableCompositionTrack_Volume"))
    {
      ReconstitutedMetadataProperty = *(v11 - 40);
      if (!ReconstitutedMetadataProperty)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (CFEqual(a3, @"MutableCompositionTrack_Metadata"))
      {
        ReconstitutedMetadataProperty = mutableComposition_CreateReconstitutedMetadataProperty(*(v11 - 32), a4);
        goto LABEL_10;
      }

      if (CFEqual(a3, @"MutableCompositionTrack_Enabled") || CFEqual(a3, @"TrackEnabled"))
      {
        v15 = MEMORY[0x1E695E4D0];
        if (!*(v11 + 56))
        {
          v15 = MEMORY[0x1E695E4C0];
        }

        ReconstitutedMetadataProperty = *v15;
        if (!*v15)
        {
          goto LABEL_10;
        }
      }

      else if (CFEqual(a3, @"MutableCompositionTrack_FormatDescriptionReplacementTable"))
      {
        ReconstitutedMetadataProperty = *(v11 + 8);
        if (!ReconstitutedMetadataProperty)
        {
          goto LABEL_10;
        }
      }

      else if (CFEqual(a3, @"MutableCompositionTrack_Layer"))
      {
        ReconstitutedMetadataProperty = *(v11 + 16);
        if (!ReconstitutedMetadataProperty)
        {
          goto LABEL_10;
        }
      }

      else if (CFEqual(a3, @"MutableCompositionTrack_CleanApertureDimensions"))
      {
        ReconstitutedMetadataProperty = *(v11 + 24);
        if (!ReconstitutedMetadataProperty)
        {
          goto LABEL_10;
        }
      }

      else if (CFEqual(a3, @"MutableCompositionTrack_ProductionApertureDimensions"))
      {
        ReconstitutedMetadataProperty = *(v11 + 32);
        if (!ReconstitutedMetadataProperty)
        {
          goto LABEL_10;
        }
      }

      else if (CFEqual(a3, @"MutableCompositionTrack_EncodedPixelsDimensions"))
      {
        ReconstitutedMetadataProperty = *(v11 + 40);
        if (!ReconstitutedMetadataProperty)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (!CFEqual(a3, @"MutableCompositionTrack_LoadSettings"))
        {
          v12 = 4294954512;
          goto LABEL_11;
        }

        ReconstitutedMetadataProperty = *(v11 + 48);
        if (!ReconstitutedMetadataProperty)
        {
          goto LABEL_10;
        }
      }
    }

    ReconstitutedMetadataProperty = CFRetain(ReconstitutedMetadataProperty);
    goto LABEL_10;
  }

LABEL_5:
  v12 = 4294954516;
LABEL_11:
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t mutableComposition_SetTrackProperty(uint64_t a1, uint64_t a2, const void *a3, const __CFString *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 8);
  cf = 0;
  if (a3)
  {
    v9 = DerivedStorage;
    v10 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigSimpleMutexLock();
    v12 = *(v8 + 16);
    if (v12 < 1)
    {
LABEL_6:
      v14 = 0;
      v15 = 4294954516;
LABEL_42:
      if (cf)
      {
        CFRelease(cf);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if ((v14 & 1) == 0)
      {
        FigSimpleMutexUnlock();
      }

      return v15;
    }

    v13 = *(v8 + 32);
    while (*(v13 + 4) != a2)
    {
      v13 += 168;
      if (!--v12)
      {
        goto LABEL_6;
      }
    }

    if (CFEqual(a3, @"MutableCompositionTrack_NaturalTimeScale") || CFEqual(a3, @"TrackTimescale"))
    {
      if (!a4)
      {
        v15 = *(v13 + 32);
        *(v13 + 32) = 0;
        goto LABEL_16;
      }

      v17 = CFGetTypeID(a4);
      if (v17 == CFNumberGetTypeID())
      {
        v15 = *(v13 + 32);
        *(v13 + 32) = a4;
        CFRetain(a4);
LABEL_16:
        if (!v15)
        {
          goto LABEL_35;
        }

        CFRelease(v15);
        goto LABEL_34;
      }

      goto LABEL_18;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_LanguageCode") || CFEqual(a3, @"TrackLanguageCode"))
    {
      if (!a4)
      {
        v20 = 0;
        v21 = *(v13 + 40);
        *(v13 + 40) = 0;
        goto LABEL_27;
      }

      v18 = CFGetTypeID(a4);
      if (v18 == CFStringGetTypeID())
      {
        Copy = CFStringCreateCopy(v10, a4);
        v20 = Copy;
        v21 = *(v13 + 40);
        *(v13 + 40) = Copy;
        if (Copy)
        {
          CFRetain(Copy);
          v22 = 0;
LABEL_28:
          if (v21)
          {
            CFRelease(v21);
          }

          if ((v22 & 1) == 0)
          {
            CFRelease(v20);
          }

          v23 = kFigTrackProperty_LanguageCode;
          goto LABEL_33;
        }

LABEL_27:
        v22 = 1;
        goto LABEL_28;
      }

LABEL_18:
      fig_log_get_emitter();
LABEL_19:
      v15 = FigSignalErrorAtGM();
      goto LABEL_35;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_ExtendedLanguageTag") || CFEqual(a3, @"ExtendedLanguageTagString"))
    {
      if (a4)
      {
        v26 = CFGetTypeID(a4);
        if (v26 != CFStringGetTypeID())
        {
          goto LABEL_18;
        }

        v27 = CFStringCreateCopy(v10, a4);
        v28 = v27;
        v29 = *(v13 + 48);
        *(v13 + 48) = v27;
        if (v27)
        {
          CFRetain(v27);
          v30 = 0;
LABEL_58:
          if (v29)
          {
            CFRelease(v29);
          }

          if ((v30 & 1) == 0)
          {
            CFRelease(v28);
          }

          v23 = kFigTrackProperty_ExtendedLanguageTagString;
          goto LABEL_33;
        }
      }

      else
      {
        v28 = 0;
        v29 = *(v13 + 48);
        *(v13 + 48) = 0;
      }

      v30 = 1;
      goto LABEL_58;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_PreferredTransform") || CFEqual(a3, @"TrackMatrix"))
    {
      if (a4)
      {
        v31 = CFGetTypeID(a4);
        if (v31 != CFArrayGetTypeID())
        {
          goto LABEL_18;
        }

        v32 = CFArrayCreateCopy(v10, a4);
        v33 = v32;
        v34 = *(v13 + 56);
        *(v13 + 56) = v32;
        if (v32)
        {
          CFRetain(v32);
          v35 = 0;
LABEL_72:
          if (v34)
          {
            CFRelease(v34);
          }

          if ((v35 & 1) == 0)
          {
            CFRelease(v33);
          }

          v23 = kFigTrackProperty_Matrix;
          goto LABEL_33;
        }
      }

      else
      {
        v33 = 0;
        v34 = *(v13 + 56);
        *(v13 + 56) = 0;
      }

      v35 = 1;
      goto LABEL_72;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_Volume") || CFEqual(a3, @"Volume"))
    {
      if (a4)
      {
        v36 = CFGetTypeID(a4);
        if (v36 != CFNumberGetTypeID())
        {
          goto LABEL_18;
        }

        v37 = *(v13 + 64);
        *(v13 + 64) = a4;
        CFRetain(a4);
      }

      else
      {
        v37 = *(v13 + 64);
        *(v13 + 64) = 0;
      }

      if (v37)
      {
        CFRelease(v37);
      }

      v23 = kFigTrackProperty_Volume;
      goto LABEL_33;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_AlternateGroupID") || CFEqual(a3, @"AlternateGroupID"))
    {
      if (!a4 || (v38 = CFGetTypeID(a4), v38 == CFNumberGetTypeID()))
      {
        LOWORD(v64.width) = 0;
        CFNumberGetValue(a4, kCFNumberSInt16Type, &v64);
        v39 = *(v13 + 104);
        if (LOWORD(v64.width))
        {
          *(v13 + 104) = a4;
          if (a4)
          {
            CFRetain(a4);
          }

          if (v39)
          {
            CFRelease(v39);
          }
        }

        else if (v39)
        {
          CFRelease(*(v13 + 104));
          *(v13 + 104) = 0;
        }

        v23 = kFigTrackProperty_AlternateGroupID;
        goto LABEL_33;
      }

      goto LABEL_18;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_Metadata"))
    {
      if (!a4 || (v40 = CFGetTypeID(a4), v40 == CFArrayGetTypeID()))
      {
        mutableCompositionTrack_setMetadata(v13, a4, Mutable);
        goto LABEL_34;
      }

      goto LABEL_18;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_Enabled") || CFEqual(a3, @"IsEnabled"))
    {
      if (a4)
      {
        v41 = CFGetTypeID(a4);
        if (v41 != CFBooleanGetTypeID())
        {
          goto LABEL_18;
        }
      }

      *(v13 + 160) = CFBooleanGetValue(a4) != 0;
      v23 = kFigTrackProperty_Enabled;
LABEL_33:
      CFDictionarySetValue(Mutable, *v23, *MEMORY[0x1E695E4D0]);
LABEL_34:
      v15 = 0;
      goto LABEL_35;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_FormatDescriptionReplacementTable"))
    {
      v15 = compositionTableTrack_setFormatDescriptionReplacementTable(v13, a4);
      if (v15)
      {
        v14 = 0;
        goto LABEL_42;
      }

LABEL_35:
      FigSimpleMutexUnlock();
      if (CFDictionaryGetCount(Mutable))
      {
        v24 = *v9;
        if (v24)
        {
          v25 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v25)
          {
            v15 = v25(v24, a2, &cf, 0);
            if (!v15)
            {
              CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterPostNotification();
            }
          }

          else
          {
            v15 = 4294954514;
          }
        }
      }

      v14 = 1;
      goto LABEL_42;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_Layer"))
    {
      if (a4)
      {
        v42 = CFGetTypeID(a4);
        if (v42 != CFNumberGetTypeID())
        {
          goto LABEL_18;
        }

        v43 = *(v13 + 120);
        *(v13 + 120) = a4;
        CFRetain(a4);
      }

      else
      {
        v43 = *(v13 + 120);
        *(v13 + 120) = 0;
      }

      if (v43)
      {
        CFRelease(v43);
      }

      v23 = kFigTrackProperty_Layer;
      goto LABEL_33;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_CleanApertureDimensions"))
    {
      if (!a4)
      {
        v52 = *(v13 + 128);
        if (v52)
        {
          CFRelease(v52);
          *(v13 + 128) = 0;
        }

        goto LABEL_142;
      }

      v44 = CFGetTypeID(a4);
      if (v44 != CFDictionaryGetTypeID())
      {
        goto LABEL_18;
      }

      v64.width = 0.0;
      v64.height = 0.0;
      if (CGSizeMakeWithDictionaryRepresentation(a4, &v64))
      {
        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v64);
        if (DictionaryRepresentation)
        {
          v46 = DictionaryRepresentation;
          v47 = *(v13 + 128);
          *(v13 + 128) = DictionaryRepresentation;
          CFRetain(DictionaryRepresentation);
          if (v47)
          {
            CFRelease(v47);
          }

          CFRelease(v46);
LABEL_142:
          v23 = kFigTrackProperty_CleanApertureDimensions;
          goto LABEL_33;
        }

        mutableComposition_SetTrackProperty_cold_1(&v64, &v66);
LABEL_180:
        v14 = 0;
        v15 = v66;
        goto LABEL_42;
      }

LABEL_168:
      fig_log_get_emitter();
      goto LABEL_19;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_ProductionApertureDimensions"))
    {
      if (a4)
      {
        v48 = CFGetTypeID(a4);
        if (v48 != CFDictionaryGetTypeID())
        {
          goto LABEL_18;
        }

        v64.width = 0.0;
        v64.height = 0.0;
        if (!CGSizeMakeWithDictionaryRepresentation(a4, &v64))
        {
          goto LABEL_168;
        }

        v49 = CGSizeCreateDictionaryRepresentation(v64);
        if (!v49)
        {
          mutableComposition_SetTrackProperty_cold_2(&v64, &v66);
          goto LABEL_180;
        }

        v50 = v49;
        v51 = *(v13 + 136);
        *(v13 + 136) = v49;
        CFRetain(v49);
        if (v51)
        {
          CFRelease(v51);
        }

        CFRelease(v50);
      }

      else
      {
        v57 = *(v13 + 136);
        if (v57)
        {
          CFRelease(v57);
          *(v13 + 136) = 0;
        }
      }

      v23 = kFigTrackProperty_ProductionApertureDimensions;
      goto LABEL_33;
    }

    if (CFEqual(a3, @"MutableCompositionTrack_EncodedPixelsDimensions"))
    {
      if (a4)
      {
        v53 = CFGetTypeID(a4);
        if (v53 != CFDictionaryGetTypeID())
        {
          goto LABEL_18;
        }

        v64.width = 0.0;
        v64.height = 0.0;
        if (!CGSizeMakeWithDictionaryRepresentation(a4, &v64))
        {
          goto LABEL_168;
        }

        v54 = CGSizeCreateDictionaryRepresentation(v64);
        if (!v54)
        {
          mutableComposition_SetTrackProperty_cold_3(&v64, &v66);
          goto LABEL_180;
        }

        v55 = v54;
        v56 = *(v13 + 144);
        *(v13 + 144) = v54;
        CFRetain(v54);
        if (v56)
        {
          CFRelease(v56);
        }

        CFRelease(v55);
      }

      else
      {
        v63 = *(v13 + 144);
        if (v63)
        {
          CFRelease(v63);
          *(v13 + 144) = 0;
        }
      }

      v23 = kFigTrackProperty_EncodedPixelsDimensions;
      goto LABEL_33;
    }

    if (!CFEqual(a3, @"MutableCompositionTrack_LoadSettings"))
    {
      v15 = 4294954512;
      goto LABEL_35;
    }

    if (a4)
    {
      v58 = CFGetTypeID(a4);
      if (v58 != CFDictionaryGetTypeID())
      {
        goto LABEL_18;
      }

      v59 = CFDictionaryCreateCopy(v10, a4);
      v60 = v59;
      v61 = *(v13 + 152);
      *(v13 + 152) = v59;
      if (v59)
      {
        CFRetain(v59);
        v62 = 0;
LABEL_171:
        if (v61)
        {
          CFRelease(v61);
        }

        if ((v62 & 1) == 0)
        {
          CFRelease(v60);
        }

        v23 = kFigTrackProperty_QTLoadSettings;
        goto LABEL_33;
      }
    }

    else
    {
      v60 = 0;
      v61 = *(v13 + 152);
      *(v13 + 152) = 0;
    }

    v62 = 1;
    goto LABEL_171;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t mutableComposition_DeleteTrackSegment(uint64_t a1, int a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigSimpleMutexLock();
  v4 = *(v3 + 16);
  if (v4 < 1)
  {
LABEL_5:
    FigSimpleMutexUnlock();
    return 4294954516;
  }

  else
  {
    v5 = *(v3 + 32);
    while (*(v5 + 4) != a2)
    {
      v5 += 168;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v6 = compositionTable_deleteTrackSegment();
    FigSimpleMutexUnlock();
    compositionTable_discardUnusedAssets(v3);
  }

  return v6;
}

uint64_t mutableComposition_DeleteSegment(uint64_t a1, uint64_t a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage[1];
  FigSimpleMutexLock();
  v7 = *(v6 + 16);
  if (v7 < 1)
  {
    v18 = 0;
  }

  else
  {
    v8 = 0;
    v9 = v7 + 1;
    v10 = 168 * v7;
    v11 = MEMORY[0x1E6960CC0];
    do
    {
      v12 = *(v6 + 32);
      if (*(v12 + v10 - 160) >= 1)
      {
        v22 = *v11;
        v13 = *(v12 + v10 - 160);
        if (v13 >= 1)
        {
          v14 = *(v12 + v10 - 152) + 108 * v13;
          v15 = *(v14 - 60);
          v16 = *(v14 - 28);
          *&range.start.epoch = *(v14 - 44);
          *&range.duration.timescale = v16;
          *&range.start.value = v15;
          CMTimeRangeGetEnd(&v22, &range);
        }

        *&range.start.value = *a2;
        range.start.epoch = *(a2 + 16);
        time2 = v22;
        if (CMTimeCompare(&range.start, &time2) < 0)
        {
          *&range.start.value = *a2;
          range.start.epoch = *(a2 + 16);
          time2 = *a3;
          v17 = compositionTable_deleteTrackSegment();
          if (v17)
          {
            v19 = v17;
            FigSimpleMutexUnlock();
            return v19;
          }

          ++v8;
        }
      }

      --v9;
      v10 -= 168;
    }

    while (v9 > 1);
    if (v8 < 1)
    {
      v18 = 0;
    }

    else
    {
      ++*(v6 + 4);
      v18 = 1;
    }
  }

  FigSimpleMutexUnlock();
  compositionTable_discardUnusedAssets(v6);
  v19 = 0;
  if (v18 && *DerivedStorage)
  {
    mutableComposition_postPossiblyDeferredTracksChangedNotification();
    return 0;
  }

  return v19;
}

uint64_t mutableComposition_ScaleTrackSegment(uint64_t a1, int a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage[1];
  FigSimpleMutexLock();
  v11 = *(v10 + 16);
  if (v11 < 1)
  {
LABEL_5:
    v13 = 4294954516;
LABEL_6:
    FigSimpleMutexUnlock();
    return v13;
  }

  v12 = *(v10 + 32);
  while (*(v12 + 4) != a2)
  {
    v12 += 168;
    if (!--v11)
    {
      goto LABEL_5;
    }
  }

  v20 = *a3;
  v21 = *(a3 + 2);
  v18 = *a4;
  v19 = *(a4 + 2);
  v16 = *a5;
  v17 = *(a5 + 16);
  v15 = compositionTable_scaleTrackSegment(v10, v12, &v20, &v18, &v16);
  if (v15)
  {
    v13 = v15;
    goto LABEL_6;
  }

  ++*(v10 + 4);
  FigSimpleMutexUnlock();
  if (*DerivedStorage)
  {
    mutableComposition_postPossiblyDeferredTracksChangedNotification();
  }

  return 0;
}

uint64_t mutableComposition_ScaleSegment(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage[1];
  FigSimpleMutexLock();
  v9 = *(v8 + 16);
  if (v9 < 1)
  {
    v21 = 0;
  }

  else
  {
    v24 = DerivedStorage;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = MEMORY[0x1E6960CC0];
    do
    {
      v14 = *(v8 + 32);
      v15 = v14 + v10;
      if (*(v14 + v10 + 8) >= 1)
      {
        v28 = *v13;
        v16 = *(v15 + 8);
        if (v16 >= 1)
        {
          v17 = *(v14 + v10 + 16) + 108 * v16;
          v18 = *(v17 - 60);
          v19 = *(v17 - 28);
          *&range.start.epoch = *(v17 - 44);
          *&range.duration.timescale = v19;
          *&range.start.value = v18;
          CMTimeRangeGetEnd(&v28, &range);
        }

        *&range.start.value = *a2;
        range.start.epoch = *(a2 + 16);
        time2 = v28;
        if (CMTimeCompare(&range.start, &time2) < 0)
        {
          *&range.start.value = *a2;
          range.start.epoch = *(a2 + 16);
          time2 = *a3;
          v25 = *a4;
          v26 = *(a4 + 16);
          v20 = compositionTable_scaleTrackSegment(v8, v15, &range, &time2.value, &v25);
          if (v20)
          {
            v22 = v20;
            FigSimpleMutexUnlock();
            return v22;
          }

          ++v12;
        }

        v9 = *(v8 + 16);
      }

      ++v11;
      v10 += 168;
    }

    while (v11 < v9);
    if (v12 < 1)
    {
      v21 = 0;
    }

    else
    {
      ++*(v8 + 4);
      v21 = 1;
    }

    DerivedStorage = v24;
  }

  FigSimpleMutexUnlock();
  v22 = 0;
  if (v21 && *DerivedStorage)
  {
    mutableComposition_postPossiblyDeferredTracksChangedNotification();
    return 0;
  }

  return v22;
}

uint64_t mutableComposition_PostDeferredTracksChangedNotification()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 16) = 0;
  if (*(DerivedStorage + 17))
  {
    v1 = DerivedStorage;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    *(v1 + 17) = 0;
  }

  return 0;
}

uint64_t compositionTable_createCopy(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  v6 = malloc_type_calloc(0xA8uLL, 1uLL, 0x97DB9D99uLL);
  if (*MEMORY[0x1E695E4B0] == a1)
  {
    a1 = CFGetAllocator(*(a2 + 64));
  }

  v7 = *(a2 + 4);
  *v6 = 1;
  *(v6 + 1) = v7;
  *(v6 + 1) = FigSimpleMutexCreate();
  FigSimpleMutexLock();
  *(v6 + 9) = FigSimpleMutexCreate();
  v8 = *(a2 + 16);
  *(v6 + 2) = v8;
  *(v6 + 6) = *(a2 + 24);
  if (v8 < 1)
  {
    *(v6 + 4) = 0;
  }

  else
  {
    v9 = malloc_type_malloc(168 * v8, 0x1060040CA997719uLL);
    *(v6 + 4) = v9;
    memcpy(v9, *(a2 + 32), 168 * *(v6 + 2));
    if (*(v6 + 2) >= 1)
    {
      v10 = 0;
      v11 = *(v6 + 4);
      do
      {
        v12 = *(v11 + 24);
        if (v12 < 1)
        {
          *(v11 + 16) = 0;
        }

        else
        {
          v13 = malloc_type_malloc(108 * v12, 0x1060040CB727B4DuLL);
          v14 = v13;
          v15 = *(v11 + 8);
          if (v15 <= 0)
          {
            *(v11 + 16) = v13;
          }

          else
          {
            memcpy(v13, *(v11 + 16), 108 * v15);
            v16 = *(v11 + 8);
            *(v11 + 16) = v14;
            if (v16 >= 1)
            {
              v17 = 0;
              v18 = (v14 + 96);
              do
              {
                if (*v18)
                {
                  CFRetain(*v18);
                  v16 = *(v11 + 8);
                }

                ++v17;
                v18 = (v18 + 108);
              }

              while (v17 < v16);
            }
          }
        }

        v19 = *(v11 + 32);
        if (v19)
        {
          CFRetain(v19);
        }

        v20 = *(v11 + 40);
        if (v20)
        {
          CFRetain(v20);
        }

        v21 = *(v11 + 48);
        if (v21)
        {
          CFRetain(v21);
        }

        v22 = *(v11 + 56);
        if (v22)
        {
          CFRetain(v22);
        }

        v23 = *(v11 + 64);
        if (v23)
        {
          CFRetain(v23);
        }

        v24 = *(v11 + 72);
        if (v24)
        {
          *(v11 + 72) = CFDictionaryCreateMutableCopy(a1, 0, v24);
        }

        v25 = *(v11 + 96);
        if (v25)
        {
          CFRetain(v25);
        }

        v26 = *(v11 + 80);
        if (v26)
        {
          CFRetain(v26);
        }

        v27 = *(v11 + 88);
        if (v27)
        {
          CFRetain(v27);
        }

        v28 = *(v11 + 104);
        if (v28)
        {
          CFRetain(v28);
        }

        v29 = *(v11 + 112);
        if (v29)
        {
          CFRetain(v29);
        }

        ++v10;
        v11 += 168;
      }

      while (v10 < *(v6 + 2));
    }
  }

  *(v6 + 5) = CFBagCreateMutableCopy(a1, 0, *(a2 + 40));
  v30 = *(a2 + 48);
  if (v30)
  {
    *(v6 + 6) = CFDictionaryCreateMutableCopy(a1, 0, v30);
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v31 = *(a2 + 80);
  if (v31)
  {
    *(v6 + 10) = CFDictionaryCreateMutableCopy(a1, 0, v31);
  }

  v32 = *(a2 + 112);
  *(v6 + 14) = v32;
  *(v6 + 11) = *(a2 + 88);
  v33 = *(a2 + 96);
  *(v6 + 6) = v33;
  if (v32)
  {
    CFRetain(v32);
    v34 = *(v6 + 12);
    if (!v34)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v34 = v33;
  if (v33)
  {
LABEL_47:
    CFRetain(v34);
  }

LABEL_48:
  v35 = *(v6 + 11);
  if (v35)
  {
    CFRetain(v35);
  }

  v36 = *(v6 + 13);
  if (v36)
  {
    CFRetain(v36);
  }

  FigSimpleMutexUnlock();
  *(v6 + 7) = FigSimpleMutexCreate();
  FigSimpleMutexLock();
  *(v6 + 8) = CFDictionaryCreateMutableCopy(a1, 0, *(a2 + 64));
  FigSimpleMutexUnlock();
  *(v6 + 15) = FigSimpleMutexCreate();
  FigSimpleMutexLock();
  v37 = *(a2 + 128);
  *(v6 + 16) = v37;
  v38 = malloc_type_calloc(v37, 0x10uLL, 0x1060040C2E02434uLL);
  *(v6 + 17) = v38;
  memcpy(v38, *(a2 + 136), 16 * *(v6 + 16));
  v39 = *(a2 + 144);
  *(v6 + 18) = v39;
  if (v39 >= 2)
  {
    v40 = 1;
    v41 = 16;
    do
    {
      v42 = *(*(v6 + 17) + v41);
      if (v42)
      {
        CFRetain(v42);
        v39 = *(v6 + 18);
      }

      ++v40;
      v41 += 16;
    }

    while (v40 < v39);
  }

  *(v6 + 19) = CFDictionaryCreateMutableCopy(a1, 0, *(a2 + 152));
  FigSimpleMutexUnlock();
  *(v6 + 20) = *(a2 + 160);
  result = FigAtomicIncrement32();
  *a3 = v6;
  return result;
}

void composite_formatReader_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  compositionTable_releaseAndClear(DerivedStorage);
  if (DerivedStorage[1])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[1] = 0;
  }

  v1 = DerivedStorage[2];
  if (v1)
  {
    CFDictionaryRemoveAllValues(v1);
    v2 = DerivedStorage[2];
    if (v2)
    {
      CFRelease(v2);
      DerivedStorage[2] = 0;
    }
  }
}

__CFString *composite_formatReader_CopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v2 = *DerivedStorage;
  v3 = *(*DerivedStorage + 32);
  CFStringAppend(Mutable, @"[Composite FigFormatReader]{\n");
  if (*(v2 + 16) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = compositionTableTrack_CopyDebugDescription(v3);
      if (v4)
      {
        CFStringAppend(Mutable, @",\n");
      }

      CFStringAppend(Mutable, @"  ");
      CFStringAppend(Mutable, v5);
      if (v5)
      {
        CFRelease(v5);
      }

      ++v4;
      v3 += 168;
    }

    while (v4 < *(v2 + 16));
  }

  CFStringAppend(Mutable, @"\n}");
  return Mutable;
}

CFMutableArrayRef compositeFormatReader_copyAlternateGroupArray(uint64_t a1, const __CFAllocator *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(v3 + 16);
  if (v4 < 1)
  {
    goto LABEL_19;
  }

  v5 = 0;
  v6 = (*(v3 + 32) + 104);
  do
  {
    v7 = *v6;
    v6 += 21;
    if (v7)
    {
      v5 = 1;
    }

    --v4;
  }

  while (v4);
  if (v5)
  {
    Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (*(v3 + 16) >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = MEMORY[0x1E695E9C0];
      do
      {
        v12 = *(v3 + 32) + v9;
        v13 = *(v12 + 104);
        if (v13)
        {
          if (CFDictionaryGetValue(Mutable, *(v12 + 104)))
          {
            FigCFArrayAppendInt32();
          }

          else
          {
            v14 = CFArrayCreateMutable(a2, 0, v11);
            FigCFArrayAppendInt32();
            CFDictionarySetValue(Mutable, v13, v14);
            if (v14)
            {
              CFRelease(v14);
            }
          }
        }

        ++v10;
        v9 += 168;
      }

      while (v10 < *(v3 + 16));
    }

    Count = CFDictionaryGetCount(Mutable);
    v16 = CFArrayCreateMutable(a2, Count, MEMORY[0x1E695E9C0]);
    if (v16)
    {
      CFDictionaryApplyFunction(Mutable, copyValuesToArray, v16);
    }

    FigSimpleMutexUnlock();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
LABEL_19:
    FigSimpleMutexUnlock();
    return 0;
  }

  return v16;
}

uint64_t compositionTable_copyQuickTimeUserDataReader(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  v5 = (a1 + 88);
  v4 = *(a1 + 88);
  if (v4)
  {
    v6 = 0;
LABEL_8:
    v4 = CFRetain(v4);
    goto LABEL_9;
  }

  v7 = *(a1 + 80);
  if (v7 && (Value = CFDictionaryGetValue(v7, @"com.apple.quicktime.udta")) != 0)
  {
    v6 = FigMetadataReaderCreateForQuickTimeUserDataArray(*MEMORY[0x1E695E480], Value, (a1 + 88));
  }

  else
  {
    v6 = 0;
  }

  v4 = *v5;
  if (*v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a2 = v4;
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t compositionTable_copyQuickTimeMetadataReader(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  v5 = (a1 + 96);
  v4 = *(a1 + 96);
  if (v4)
  {
    v6 = 0;
LABEL_8:
    v4 = CFRetain(v4);
    goto LABEL_9;
  }

  v7 = *(a1 + 80);
  if (v7 && (Value = CFDictionaryGetValue(v7, @"com.apple.quicktime.mdta")) != 0)
  {
    v6 = FigMetadataReaderCreateForQuickTimeMetadataArray(*MEMORY[0x1E695E480], Value, (a1 + 96));
  }

  else
  {
    v6 = 0;
  }

  v4 = *v5;
  if (*v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a2 = v4;
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t compositionTable_copyISOUserDataReader(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  v5 = (a1 + 104);
  v4 = *(a1 + 104);
  if (v4)
  {
    v6 = 0;
LABEL_8:
    v4 = CFRetain(v4);
    goto LABEL_9;
  }

  v7 = *(a1 + 80);
  if (v7 && (Value = CFDictionaryGetValue(v7, @"org.mp4ra")) != 0)
  {
    v6 = FigMetadataReaderCreateForISOUserDataArray(*MEMORY[0x1E695E480], Value, (a1 + 104));
  }

  else
  {
    v6 = 0;
  }

  v4 = *v5;
  if (*v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a2 = v4;
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t compositionTable_copyiTunesMetadataReader(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  v5 = (a1 + 112);
  v4 = *(a1 + 112);
  if (v4)
  {
    ForiTunesMetadataArray = 0;
LABEL_8:
    v4 = CFRetain(v4);
    goto LABEL_9;
  }

  v7 = *(a1 + 80);
  if (v7 && (Value = CFDictionaryGetValue(v7, @"com.apple.itunes")) != 0)
  {
    ForiTunesMetadataArray = FigMetadataReaderCreateForiTunesMetadataArray(*MEMORY[0x1E695E480], Value, (a1 + 112));
  }

  else
  {
    ForiTunesMetadataArray = 0;
  }

  v4 = *v5;
  if (*v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a2 = v4;
  FigSimpleMutexUnlock();
  return ForiTunesMetadataArray;
}

CMTime *compositionTable_getDuration@<X0>(CMTime *result@<X0>, CMTime *a2@<X8>)
{
  v3 = MEMORY[0x1E6960CC0];
  v12 = *MEMORY[0x1E6960CC0];
  *&a2->value = *MEMORY[0x1E6960CC0];
  v4 = *(v3 + 16);
  a2->epoch = v4;
  if (result->epoch >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = (*&result[1].timescale + 16);
    do
    {
      *&v14.value = v12;
      v14.epoch = v4;
      v8 = *(v7 - 1);
      if (v8 >= 1)
      {
        v9 = *v7 + 108 * v8;
        v10 = *(v9 - 60);
        v11 = *(v9 - 28);
        *&range.start.epoch = *(v9 - 44);
        *&range.duration.timescale = v11;
        *&range.start.value = v10;
        CMTimeRangeGetEnd(&v14, &range);
      }

      v7 += 21;
      *&range.start.value = *&a2->value;
      range.start.epoch = a2->epoch;
      time2 = v14;
      result = CMTimeMaximum(a2, &range.start, &time2);
      ++v6;
    }

    while (v6 < v5->epoch);
  }

  return result;
}

uint64_t composite_formatReader_GetTrackCount(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a2 = *(v3 + 16);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t composite_formatReader_CopyTrackByIndex(const void *a1, uint64_t a2, void *a3, _DWORD *a4, int *a5)
{
  v10 = *CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2 < 0 || *(v10 + 16) <= a2)
  {
    FigSimpleMutexUnlock();
    return 4294954453;
  }

  else
  {
    v11 = *(*(v10 + 32) + 168 * a2 + 4);
    FigSimpleMutexUnlock();
    if (a5)
    {
      *a5 = v11;
    }

    return composite_formatReader_CopyTrackByID(a1, v11, a3, a4);
  }
}

void composite_trackReader_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  compositionTable_releaseAndClear(DerivedStorage);
  v1 = DerivedStorage[2];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[2] = 0;
  }

  v2 = DerivedStorage[3];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[3] = 0;
  }

  v3 = DerivedStorage[4];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[4] = 0;
  }
}

__CFString *composite_trackReader_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *DerivedStorage;
  v5 = *(*DerivedStorage + 16);
  if (v5 < 1)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 32);
    while (*(v6 + 4) != DerivedStorage[2])
    {
      v6 += 168;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<Composite FigTrackReader %p>", a1);
  if (v6)
  {
    v8 = compositionTableTrack_CopyDebugDescription(v6);
    CFStringAppend(Mutable, v8);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    v9 = v3[2];
    v11 = bswap32(v3[3]);
    CFStringAppendFormat(Mutable, 0, @"{ trackID %d, mediaType %.4s, table %p, ", v9, &v11, v4);
    CFStringAppend(Mutable, @"trackID not found in table");
    CFStringAppendFormat(Mutable, 0, @" }");
  }

  return Mutable;
}

uint64_t composite_trackReader_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    fig_log_get_emitter();
LABEL_5:

    return FigSignalErrorAtGM();
  }

  v9 = DerivedStorage;
  v10 = *DerivedStorage;
  if (CFEqual(a2, @"SecondaryEditCursorService"))
  {
    v11 = v9[2];
LABEL_10:
    *a4 = v11;
    CFRetain(v11);
    return 0;
  }

  if (CFEqual(a2, @"EditCursorService"))
  {
    v11 = v9[3];
    goto LABEL_10;
  }

  if (CFEqual(a2, @"TrackEnabled"))
  {
    FigSimpleMutexLock();
    v14 = *(v10 + 16);
    if (v14 >= 1)
    {
      v15 = (*(v10 + 32) + 160);
      while (*(v15 - 39) != *(v9 + 2))
      {
        v15 += 168;
        if (!--v14)
        {
          goto LABEL_17;
        }
      }

      v27 = MEMORY[0x1E695E4D0];
      if (!*v15)
      {
        v27 = MEMORY[0x1E695E4C0];
      }

      v28 = *v27;
      if (!*v27)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    goto LABEL_17;
  }

  if (CFEqual(a2, @"TrackFormatDescriptionArray"))
  {
    v17 = CMBaseObjectGetDerivedStorage();
    v18 = *v17;
    v19 = *(v17 + 8);
    v84 = *(v17 + 12);
    *&valuePtr[0] = 0;
    cf = 0;
    v20 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
    v22 = CFArrayCreateMutable(a3, 0, v20);
    v23 = v22;
    value = 0;
    if (Mutable)
    {
      if (v22)
      {
        v90 = 0;
        FigSimpleMutexLock();
        v24 = *(v18 + 16);
        if (v24 >= 1)
        {
          v25 = *(v18 + 32);
          while (*(v25 + 4) != v19)
          {
            v25 += 168;
            if (!--v24)
            {
              goto LABEL_26;
            }
          }

          v26 = *(v25 + 112);
          if (v26)
          {
            CFRetain(*(v25 + 112));
          }

          v29 = *(v25 + 8);
          if (v29 >= 1)
          {
            v30 = 0;
            for (i = 0; i < v29; ++i)
            {
              v32 = *(v25 + 16) + v30;
              if ((*(v32 + 12) & 0x1D) == 1)
              {
                v33 = *(v32 + 96);
                v90 = *(v32 + 104);
                CFArrayAppendValue(Mutable, v33);
                FigCFArrayAppendInt32();
                v29 = *(v25 + 8);
              }

              v30 += 108;
            }
          }

          FigSimpleMutexUnlock();
          goto LABEL_46;
        }

LABEL_26:
        fig_log_get_emitter();
        MaxEditRate = FigSignalErrorAtGM();
        FigSimpleMutexUnlock();
        v26 = 0;
        if (!MaxEditRate)
        {
LABEL_46:
          if (CFArrayGetCount(Mutable))
          {
            v86 = v23;
            v34 = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
            if (CFArrayGetCount(Mutable) < 1)
            {
              v36 = 0;
LABEL_67:
              MaxEditRate = 0;
              *a4 = v34;
              v34 = 0;
            }

            else
            {
              v85 = v18;
              v35 = 0;
              v36 = 0;
              v37 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v37);
                FigCFArrayGetInt32AtIndex();
                if (v36)
                {
                  CFRelease(v36);
                  *&valuePtr[0] = 0;
                }

                v39 = compositionTable_copyConcreteTrackReaderForAssetURLTrackIDMediaType(v85, ValueAtIndex, v90, v84, a3, valuePtr);
                if (v39)
                {
                  MaxEditRate = v39;
                  v36 = *&valuePtr[0];
                  goto LABEL_68;
                }

                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                v36 = *&valuePtr[0];
                FigBaseObject = FigTrackReaderGetFigBaseObject(*&valuePtr[0]);
                v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (!v41)
                {
                  MaxEditRate = 4294954514;
                  goto LABEL_68;
                }

                v42 = v41(FigBaseObject, @"TrackFormatDescriptionArray", a3, &cf);
                if (v42)
                {
                  break;
                }

                for (j = 0; ; ++j)
                {
                  Count = cf;
                  if (cf)
                  {
                    Count = CFArrayGetCount(cf);
                  }

                  if (j >= Count)
                  {
                    break;
                  }

                  v45 = CFArrayGetValueAtIndex(cf, j);
                  if (v35)
                  {
                    CFRelease(v35);
                    value = 0;
                  }

                  mutableComposition_copyReplacedFormatDescription(v26, v45, &value);
                  v35 = value;
                  CFArrayAppendValue(v34, value);
                }

                if (++v37 >= CFArrayGetCount(Mutable))
                {
                  goto LABEL_67;
                }
              }

              MaxEditRate = v42;
            }

LABEL_68:
            if (v36)
            {
              CFRelease(v36);
            }

            if (v34)
            {
              CFRelease(v34);
            }

            v23 = v86;
          }

          else
          {
            MaxEditRate = 4294954775;
          }
        }

LABEL_73:
        if (cf)
        {
          CFRelease(cf);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        if (v26)
        {
          CFRelease(v26);
        }

        if (value)
        {
          CFRelease(value);
        }

        if (MaxEditRate == -12521)
        {
          MaxEditRate = 0;
          *a4 = 0;
        }

        return MaxEditRate;
      }

      composite_trackReader_CopyProperty_cold_1(&v90);
    }

    else
    {
      composite_trackReader_CopyProperty_cold_2(&v90);
    }

    v26 = 0;
    MaxEditRate = v90;
    goto LABEL_73;
  }

  if (CFEqual(a2, @"TrackDimensions"))
  {

    return composite_trackReader_copyPropertyFromFirstNonEmptyEdit(a1, a2, a3, a4);
  }

  if (CFEqual(a2, @"TrackTimescale"))
  {
    FigSimpleMutexLock();
    v46 = *(v10 + 16);
    if (v46 < 1)
    {
      goto LABEL_99;
    }

    v47 = (*(v10 + 32) + 32);
    while (*(v47 - 7) != *(v9 + 2))
    {
      v47 += 21;
      if (!--v46)
      {
        goto LABEL_99;
      }
    }

    v28 = *v47;
    if (!*v47)
    {
LABEL_99:
      FigSimpleMutexUnlock();
      v50 = *(v9 + 2);
      v51 = *(v9 + 3);

      return compositionTable_copyTrackMediaTimeScale(v10, v50, v51, a3, a4);
    }

LABEL_31:
    v28 = CFRetain(v28);
LABEL_32:
    MaxEditRate = 0;
    *a4 = v28;
    goto LABEL_33;
  }

  if (CFEqual(a2, @"AlternateGroupID"))
  {
    FigSimpleMutexLock();
    v48 = *(v10 + 16);
    if (v48 >= 1)
    {
      v49 = (*(v10 + 32) + 104);
      while (*(v49 - 25) != *(v9 + 2))
      {
        v49 += 21;
        if (!--v48)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_114;
    }

LABEL_17:
    fig_log_get_emitter();
    AvailableMetadataReaderPropertiesArray = FigSignalErrorAtGM();
LABEL_18:
    MaxEditRate = AvailableMetadataReaderPropertiesArray;
LABEL_33:
    FigSimpleMutexUnlock();
    return MaxEditRate;
  }

  if (CFEqual(a2, @"TrackLanguageCode"))
  {
    FigSimpleMutexLock();
    v52 = *(v10 + 16);
    if (v52 < 1)
    {
      goto LABEL_17;
    }

    v49 = (*(v10 + 32) + 40);
    while (*(v49 - 9) != *(v9 + 2))
    {
      v49 += 21;
      if (!--v52)
      {
        goto LABEL_17;
      }
    }

LABEL_114:
    v28 = *v49;
    if (!*v49)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (CFEqual(a2, @"ExtendedLanguageTagString"))
  {
    FigSimpleMutexLock();
    v53 = *(v10 + 16);
    if (v53 < 1)
    {
      goto LABEL_17;
    }

    v49 = (*(v10 + 32) + 48);
    while (*(v49 - 11) != *(v9 + 2))
    {
      v49 += 21;
      if (!--v53)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_114;
  }

  if (CFEqual(a2, @"TrackMatrix"))
  {
    FigSimpleMutexLock();
    v54 = *(v10 + 16);
    if (v54 < 1)
    {
      goto LABEL_129;
    }

    v55 = (*(v10 + 32) + 56);
    while (*(v55 - 13) != *(v9 + 2))
    {
      v55 += 21;
      if (!--v54)
      {
        goto LABEL_129;
      }
    }

    v28 = *v55;
    if (!*v55)
    {
LABEL_129:
      v58 = *(MEMORY[0x1E695EFD0] + 16);
      valuePtr[0] = *MEMORY[0x1E695EFD0];
      valuePtr[1] = v58;
      valuePtr[2] = *(MEMORY[0x1E695EFD0] + 32);
      v28 = FigCreate3x3MatrixArrayFromCGAffineTransform(a3, valuePtr);
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (CFEqual(a2, @"Volume"))
  {
    FigSimpleMutexLock();
    v56 = *(v10 + 16);
    if (v56 < 1)
    {
      goto LABEL_137;
    }

    v57 = (*(v10 + 32) + 64);
    while (*(v57 - 15) != *(v9 + 2))
    {
      v57 += 21;
      if (!--v56)
      {
        goto LABEL_137;
      }
    }

    v28 = *v57;
    if (!*v57)
    {
LABEL_137:
      LODWORD(valuePtr[0]) = 1065353216;
      v28 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, valuePtr);
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (CFEqual(a2, @"UneditedSampleCount"))
  {
    return 4294954513;
  }

  if (CFEqual(a2, @"MediaCharacteristicArray"))
  {
    v59 = *MEMORY[0x1E695E480];

    return FigMediaCharacteristicsCopyMediaCharacteristicsForTrackReader(v59, a1, a4);
  }

  if (CFEqual(a2, @"NominalFrameRate"))
  {
    FigSimpleMutexLock();
    v60 = *(v10 + 16);
    if (v60 >= 1)
    {
      v61 = (*(v10 + 32) + 4);
      while (*v61 != *(v9 + 2))
      {
        v61 += 42;
        if (!--v60)
        {
          goto LABEL_147;
        }
      }

      FigSimpleMutexUnlock();
      v65 = *(v61 - 1);
      v64 = *v61;
      v66 = *MEMORY[0x1E695E480];

      return compositionTable_copyTrackNominalFrameRate(v10, v64, v65, v66, a4);
    }

    goto LABEL_147;
  }

  if (!CFEqual(a2, @"EstimatedDataRate"))
  {
    if (CFEqual(a2, @"QuickTimeUserDataReader"))
    {
      FigSimpleMutexLock();
      v67 = *(v10 + 16);
      if (v67 < 1)
      {
        goto LABEL_17;
      }

      v68 = *(v10 + 32);
      while (*(v68 + 4) != *(v9 + 2))
      {
        v68 += 168;
        if (!--v67)
        {
          goto LABEL_17;
        }
      }

      AvailableMetadataReaderPropertiesArray = compositionTableTrack_assureQuickTimeUserDataReaderCreated(v68);
      if (AvailableMetadataReaderPropertiesArray)
      {
        goto LABEL_18;
      }

      v28 = *(v68 + 80);
      if (v28)
      {
        goto LABEL_31;
      }

LABEL_192:
      MaxEditRate = 4294954513;
      goto LABEL_33;
    }

    if (CFEqual(a2, @"ISOUserDataReader"))
    {
      FigSimpleMutexLock();
      v72 = *(v10 + 16);
      if (v72 < 1)
      {
        goto LABEL_17;
      }

      v73 = *(v10 + 32);
      while (*(v73 + 4) != *(v9 + 2))
      {
        v73 += 168;
        if (!--v72)
        {
          goto LABEL_17;
        }
      }

      AvailableMetadataReaderPropertiesArray = compositionTableTrack_assureISOUserDataReaderCreated(v73);
      if (AvailableMetadataReaderPropertiesArray)
      {
        goto LABEL_18;
      }

      v28 = *(v73 + 88);
      if (v28)
      {
        goto LABEL_31;
      }

      goto LABEL_192;
    }

    if (CFEqual(a2, @"QuickTimeMetadataReader"))
    {
      FigSimpleMutexLock();
      v74 = *(v10 + 16);
      if (v74 < 1)
      {
        goto LABEL_17;
      }

      v75 = *(v10 + 32);
      while (*(v75 + 4) != *(v9 + 2))
      {
        v75 += 168;
        if (!--v74)
        {
          goto LABEL_17;
        }
      }

      AvailableMetadataReaderPropertiesArray = compositionTableTrack_assureQuickTimeMetadataReaderCreated(v75);
      if (AvailableMetadataReaderPropertiesArray)
      {
        goto LABEL_18;
      }

      v28 = *(v75 + 96);
      if (v28)
      {
        goto LABEL_31;
      }

      goto LABEL_192;
    }

    if (CFEqual(a2, @"MetadataReaders"))
    {
      FigSimpleMutexLock();
      v76 = *(v10 + 16);
      if (v76 < 1)
      {
        goto LABEL_17;
      }

      v77 = *(v9 + 2);
      v78 = *(v10 + 32) + 80;
      while (*(v78 - 76) != v77)
      {
        v78 += 168;
        if (!--v76)
        {
          goto LABEL_17;
        }
      }

      AvailableMetadataReaderPropertiesArray = compositionTableTrack_assureQuickTimeUserDataReaderCreated(v78 - 80);
      if (AvailableMetadataReaderPropertiesArray)
      {
        goto LABEL_18;
      }

      AvailableMetadataReaderPropertiesArray = compositionTableTrack_assureQuickTimeMetadataReaderCreated(v78 - 80);
      if (AvailableMetadataReaderPropertiesArray)
      {
        goto LABEL_18;
      }

      AvailableMetadataReaderPropertiesArray = compositionTableTrack_assureISOUserDataReaderCreated(v78 - 80);
      if (AvailableMetadataReaderPropertiesArray)
      {
        goto LABEL_18;
      }

      if (!*v78 && !*(v78 + 8) && !*(v78 + 16))
      {
LABEL_205:
        MaxEditRate = 0;
        goto LABEL_33;
      }

      v82 = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
      if (v82)
      {
        composite_trackReader_CopyProperty_cold_4(v78 - 80, v82, a4, v78);
        goto LABEL_205;
      }

      composite_trackReader_CopyProperty_cold_3(valuePtr);
    }

    else
    {
      if (CFEqual(a2, @"MetadataReaderTypes"))
      {
        FigSimpleMutexLock();
        v79 = *(v10 + 16);
        if (v79 >= 1)
        {
          v80 = *(v10 + 32);
          while (*(v80 + 4) != *(v9 + 2))
          {
            v80 += 168;
            if (!--v79)
            {
              goto LABEL_17;
            }
          }

          AvailableMetadataReaderPropertiesArray = compositionTableTrack_createAvailableMetadataReaderPropertiesArray(a3, v80, a4);
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      if (CFEqual(a2, @"MinSampleDuration"))
      {
        v81 = *(v9 + 2);

        return compositionTable_copyTrackMinSampleDuration(v10, v81, a3, a4);
      }

      if (CFEqual(a2, @"MaxEditRate"))
      {
        LODWORD(valuePtr[0]) = 1065353216;
        MaxEditRate = compositionTable_getMaxEditRate(v10, *(v9 + 2), valuePtr);
        if (!MaxEditRate)
        {
          *a4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, valuePtr);
        }

        return MaxEditRate;
      }

      if (CFEqual(a2, @"EditsExcludePrimingAndRemainderDuration"))
      {
        MaxEditRate = 0;
        *a4 = *MEMORY[0x1E695E4D0];
        return MaxEditRate;
      }

      if (CFEqual(a2, @"HasAudioSampleDependencyInformation"))
      {
        v83 = *(v9 + 2);

        return compositionTable_copyTrackHasAudioSampleDependencyInformation(v10, v83, a4);
      }

      if (CFEqual(a2, @"TrackLayer"))
      {
        composite_trackReader_CopyProperty_cold_5();
      }

      else if (CFEqual(a2, @"CleanApertureDimensions"))
      {
        composite_trackReader_CopyProperty_cold_6();
      }

      else if (CFEqual(a2, @"ProductionApertureDimensions"))
      {
        composite_trackReader_CopyProperty_cold_7();
      }

      else if (CFEqual(a2, @"EncodedPixelsDimensions"))
      {
        composite_trackReader_CopyProperty_cold_8();
      }

      else
      {
        if (!CFEqual(a2, @"TrackQTLoadSettings"))
        {
          return 4294954512;
        }

        composite_trackReader_CopyProperty_cold_9();
      }
    }

    MaxEditRate = LODWORD(valuePtr[0]);
    goto LABEL_33;
  }

  FigSimpleMutexLock();
  v62 = *(v10 + 16);
  if (v62 < 1)
  {
LABEL_147:
    FigSimpleMutexUnlock();
    fig_log_get_emitter();
    goto LABEL_5;
  }

  v63 = (*(v10 + 32) + 4);
  while (*v63 != *(v9 + 2))
  {
    v63 += 42;
    if (!--v62)
    {
      goto LABEL_147;
    }
  }

  FigSimpleMutexUnlock();
  v70 = *(v63 - 1);
  v69 = *v63;
  v71 = *MEMORY[0x1E695E480];

  return compositionTable_copyTrackEstimatedDataRate(v10, v69, v70, v71, a4);
}

uint64_t composite_trackReader_copyPropertyFromFirstNonEmptyEdit(uint64_t a1, uint64_t a2, const __CFAllocator *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 8);
  v9 = *(DerivedStorage + 12);
  v10 = *DerivedStorage;

  return compositionTable_copyTrackPropertyFromFirstNonEmptyEdit(v10, v8, v9, a2, a3, a4);
}

uint64_t compositionTable_copyTrackMediaTimeScale(uint64_t a1, int a2, uint64_t a3, const __CFAllocator *a4, void *a5)
{
  valuePtr = 0;
  number = 0;
  v10 = 600;
  NonEmptyEdit = compositionTable_copyTrackPropertyFromFirstNonEmptyEdit(a1, a2, a3, @"TrackTimescale", a4, &number);
  if (NonEmptyEdit == -12521)
  {
    goto LABEL_4;
  }

  v7 = NonEmptyEdit;
  if (NonEmptyEdit)
  {
    goto LABEL_6;
  }

  CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
  if (valuePtr <= 599)
  {
LABEL_4:
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v10);
  }

  else
  {
    v8 = number;
    if (number)
    {
      v8 = CFRetain(number);
    }
  }

  v7 = 0;
  *a5 = v8;
LABEL_6:
  if (number)
  {
    CFRelease(number);
  }

  return v7;
}

uint64_t compositionTable_copyTrackNominalFrameRate(uint64_t a1, int a2, unsigned int a3, const __CFAllocator *a4, void *a5)
{
  valuePtr = 0;
  cf = 0;
  v6 = compositionTable_copyAverageTrackPropertyFromNonEmptyEdits(a1, a2, a3, @"NominalFrameRate", a4, &cf);
  if (v6 == -12521)
  {
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
LABEL_5:
    v8 = 0;
    *a5 = v7;
    return v8;
  }

  v8 = v6;
  if (!v6)
  {
    v7 = cf;
    goto LABEL_5;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t compositionTable_copyTrackEstimatedDataRate(uint64_t a1, int a2, unsigned int a3, const __CFAllocator *a4, void *a5)
{
  valuePtr = 0;
  cf = 0;
  v6 = compositionTable_copyAverageTrackPropertyFromNonEmptyEdits(a1, a2, a3, @"EstimatedDataRate", a4, &cf);
  if (v6 == -12521)
  {
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
LABEL_5:
    v8 = 0;
    *a5 = v7;
    return v8;
  }

  v8 = v6;
  if (!v6)
  {
    v7 = cf;
    goto LABEL_5;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t compositionTableTrack_assureQuickTimeUserDataReaderCreated(uint64_t a1)
{
  v1 = (a1 + 80);
  if (*(a1 + 80))
  {
    return 0;
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v3, @"com.apple.quicktime.udta");
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = *MEMORY[0x1E695E480];

  return FigMetadataReaderCreateForQuickTimeUserDataArray(v6, v5, v1);
}

uint64_t compositionTableTrack_assureISOUserDataReaderCreated(uint64_t a1)
{
  v1 = (a1 + 88);
  if (*(a1 + 88))
  {
    return 0;
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v3, @"org.mp4ra");
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = *MEMORY[0x1E695E480];

  return FigMetadataReaderCreateForISOUserDataArray(v6, v5, v1);
}

uint64_t compositionTableTrack_assureQuickTimeMetadataReaderCreated(uint64_t a1)
{
  v1 = (a1 + 96);
  if (*(a1 + 96))
  {
    return 0;
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v3, @"com.apple.quicktime.mdta");
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = *MEMORY[0x1E695E480];

  return FigMetadataReaderCreateForQuickTimeMetadataArray(v6, v5, v1);
}

uint64_t compositionTableTrack_createAvailableMetadataReaderPropertiesArray(const __CFAllocator *a1, uint64_t a2, __CFArray **a3)
{
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v6 = Mutable;
    v7 = *(a2 + 72);
    if (v7)
    {
      if (CFDictionaryGetValue(v7, @"com.apple.quicktime.udta"))
      {
        CFArrayAppendValue(v6, @"QuickTimeUserDataReader");
      }

      v8 = *(a2 + 72);
      if (v8)
      {
        if (CFDictionaryGetValue(v8, @"org.mp4ra"))
        {
          CFArrayAppendValue(v6, @"ISOUserDataReader");
        }

        v9 = *(a2 + 72);
        if (v9 && CFDictionaryGetValue(v9, @"com.apple.quicktime.mdta"))
        {
          CFArrayAppendValue(v6, @"QuickTimeMetadataReader");
        }
      }
    }

    if (!CFArrayGetCount(v6))
    {
      CFRelease(v6);
      v6 = 0;
    }

    result = 0;
    *a3 = v6;
  }

  else
  {
    compositionTableTrack_createAvailableMetadataReaderPropertiesArray_cold_1(&v11);
    return v11;
  }

  return result;
}

uint64_t compositionTable_copyTrackMinSampleDuration(uint64_t a1, int a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E6960C70];
  v31 = *MEMORY[0x1E6960C70];
  v39 = 0;
  v40 = v31;
  v32 = *(MEMORY[0x1E6960C70] + 12);
  v30 = *(MEMORY[0x1E6960C70] + 8);
  v41 = v30;
  v33 = *(MEMORY[0x1E6960C70] + 16);
  v9 = MEMORY[0x1E6960C88];
  v38 = 0;
  value = *MEMORY[0x1E6960C88];
  timescale = *(MEMORY[0x1E6960C88] + 8);
  FigSimpleMutexLock();
  v10 = *(a1 + 16);
  if (v10 < 1)
  {
LABEL_5:
    fig_log_get_emitter();
    v14 = FigSignalErrorAtGM();
    v15 = v32;
    flags = v32;
    epoch = v33;
    goto LABEL_25;
  }

  flags = *(v9 + 12);
  epoch = *(v9 + 16);
  v13 = (*(a1 + 32) + 8);
  while (*(v13 - 1) != a2)
  {
    v13 += 21;
    if (!--v10)
    {
      goto LABEL_5;
    }
  }

  v27 = a3;
  v28 = a4;
  v16 = *v13;
  if (*v13 >= 1)
  {
    v17 = 0;
    v14 = 0;
    v18 = 0;
    v29 = *MEMORY[0x1E695E480];
    while (1)
    {
      v19 = v13[1] + v17;
      if ((*(v19 + 12) & 0x1D) == 1)
      {
        v20 = *(v19 + 96);
        v21 = *(v19 + 104);
        *&time.value = *v8;
        time.epoch = v33;
        v22 = compositionTable_copyConcreteTrackReaderForAssetURLTrackIDMediaType(a1, v20, v21, *(v13 - 2), v29, &v39);
        if (v22)
        {
          v14 = v22;
          v15 = v32;
          flags = v32;
          epoch = v33;
          a3 = v27;
          a4 = v28;
          goto LABEL_25;
        }

        v23 = v39;
        FigBaseObject = FigTrackReaderGetFigBaseObject(v39);
        v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v25)
        {
          v14 = v25(FigBaseObject, @"MinSampleDuration", v29, &v38);
          if (!v14)
          {
            CMTimeMakeFromDictionary(&time, v38);
            time1.value = value;
            time1.timescale = timescale;
            time1.flags = flags;
            time1.epoch = epoch;
            time2 = time;
            CMTimeMinimum(&v36, &time1, &time2);
            value = v36.value;
            flags = v36.flags;
            timescale = v36.timescale;
            epoch = v36.epoch;
          }
        }

        else
        {
          v14 = 4294954514;
        }

        if (v38)
        {
          CFRelease(v38);
          v38 = 0;
        }

        if (v23)
        {
          CFRelease(v23);
          v39 = 0;
        }

        v16 = *v13;
      }

      ++v18;
      v17 += 108;
      if (v18 >= v16)
      {
        goto LABEL_22;
      }
    }
  }

  v14 = 0;
LABEL_22:
  a3 = v27;
  a4 = v28;
  v15 = v32;
  if ((~flags & 5) == 0)
  {
    value = v31;
    timescale = v30;
    flags = v32;
    epoch = v33;
  }

  v40 = value;
  v41 = timescale;
LABEL_25:
  FigSimpleMutexUnlock();
  if (v38)
  {
    CFRelease(v38);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v14 == -12521)
  {
    v40 = v31;
    v41 = v30;
    epoch = v33;
    flags = v15;
LABEL_32:
    time.value = v40;
    time.timescale = v41;
    time.flags = flags;
    time.epoch = epoch;
    v14 = 0;
    *a4 = CMTimeCopyAsDictionary(&time, a3);
    return v14;
  }

  if (!v14)
  {
    goto LABEL_32;
  }

  return v14;
}

void mutableComposition_copyReplacedFormatDescription(CFArrayRef theArray, CFTypeRef cf, void *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = 0;
  do
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    else
    {
      Count = 0;
    }

    if (v6 >= Count)
    {
      v11 = cf;
      goto LABEL_14;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
    Value = CFDictionaryGetValue(ValueAtIndex, @"MutableCompositionFormatDescriptionReplacementTableKey_OldFormatDescription");
    MEMORY[0x19A8D3660](&mutableComposition_ignoredKeysForFormatDescriptionEquality_once, mutableComposition_makeIgnoredKeysForFormatDescriptionEquality);
    ++v6;
  }

  while (!CMFormatDescriptionEqualIgnoringExtensionKeys(Value, cf, sIgnoredKeysForFormatDescriptionEquality, 0));
  v10 = CFDictionaryGetValue(ValueAtIndex, @"MutableCompositionFormatDescriptionReplacementTableKey_NewFormatDescription");
  v11 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_14:
  *a3 = v11;
}