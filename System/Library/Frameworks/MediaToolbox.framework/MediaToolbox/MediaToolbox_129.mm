BOOL MovieSampleAccessorIsInTsas()
{
  OUTLINED_FUNCTION_279_0();
  v2 = *(v1 + 8);
  v3 = *(v2 + 728);
  if (v3 && *(v3 + 56) && *(v0 + 80) > *(v2 + 288))
  {
    v5 = *(v0 + 200);
    OUTLINED_FUNCTION_100_5();
    OUTLINED_FUNCTION_42_17();
    FragmentCursorEnsureAccessorAndCopySampleGroupDescription();
    OUTLINED_FUNCTION_51_16();
    if (v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *(v0 + 56);
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_100_5();
      v6 = OUTLINED_FUNCTION_50_11();
      if (v6)
      {
        v5 = OUTLINED_FUNCTION_69_7(v6, v7, v8, v9);
      }

      else
      {
        v5 = 0;
      }

      v10 = OUTLINED_FUNCTION_266();
      if (MovieSampleGroupAccessorCreate(v10, v11))
      {
        goto LABEL_19;
      }

      v4 = *(v0 + 56);
    }

    if (!MovieSampleGroupAccessorCopyDescriptionForSample(v4, *(v0 + 80), &theData))
    {
      v12 = theData;
      if (theData)
      {
LABEL_13:
        v13 = CFDataGetLength(v12) == 0;
        if (!v5)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }
  }

LABEL_19:
  v13 = 0;
  if (v5)
  {
LABEL_14:
    CFRelease(v5);
  }

LABEL_15:
  if (theData)
  {
    CFRelease(theData);
  }

  return v13;
}

BOOL MovieSampleAccessorIsInStsa()
{
  OUTLINED_FUNCTION_279_0();
  v2 = *(v1 + 8);
  v3 = *(v2 + 728);
  if (v3 && *(v3 + 56) && *(v0 + 80) > *(v2 + 288))
  {
    v5 = *(v0 + 200);
    OUTLINED_FUNCTION_99_4();
    OUTLINED_FUNCTION_42_17();
    FragmentCursorEnsureAccessorAndCopySampleGroupDescription();
    OUTLINED_FUNCTION_51_16();
    if (v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *(v0 + 64);
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_99_4();
      v6 = OUTLINED_FUNCTION_50_11();
      if (v6)
      {
        v5 = OUTLINED_FUNCTION_69_7(v6, v7, v8, v9);
      }

      else
      {
        v5 = 0;
      }

      v10 = OUTLINED_FUNCTION_266();
      if (MovieSampleGroupAccessorCreate(v10, v11))
      {
        goto LABEL_19;
      }

      v4 = *(v0 + 64);
    }

    if (!MovieSampleGroupAccessorCopyDescriptionForSample(v4, *(v0 + 80), &theData))
    {
      v12 = theData;
      if (theData)
      {
LABEL_13:
        v13 = CFDataGetLength(v12) == 0;
        if (!v5)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }
  }

LABEL_19:
  v13 = 0;
  if (v5)
  {
LABEL_14:
    CFRelease(v5);
  }

LABEL_15:
  if (theData)
  {
    CFRelease(theData);
  }

  return v13;
}

uint64_t MovieSampleAccessorCreateSampleGroupDataDictionary(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_79_9(a1, a2, a3);
  v7 = *(v6 + 8);
  v8 = *(v7 + 728);
  if (v8 && *(v8 + 56) && *(v4 + 80) > *(v7 + 288))
  {
    goto LABEL_14;
  }

  v9 = *(v4 + 72);
  if (!v9)
  {
    if (!MovieSampleGroupCollectionGetCount(*(v7 + 72)))
    {
      return 0;
    }

    Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(v4 + 72) = Mutable;
    if (!Mutable)
    {
      goto LABEL_14;
    }

    MovieSampleGroupCollectionApplyFunction(*(*(v4 + 8) + 72), AllSampleGroupCollectionApplierFunction, Mutable);
    v9 = *(v4 + 72);
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  Count = CFDictionaryGetCount(v9);
  if (!Count)
  {
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v15[0] = 0;
  v12 = CFDictionaryCreateMutable(v5, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v12)
  {
    v13 = v12;
    LODWORD(v15[0]) = *(v4 + 80);
    v15[1] = v12;
    CFDictionaryApplyFunction(*(v4 + 72), CopySampleGroupAccessorDataApplierFunction, v15);
LABEL_12:
    *v3 = v13;
    return 0;
  }

LABEL_14:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();

  return FigSignalErrorAtGM();
}

uint64_t MovieSampleAccessorCopyCryptorIV(uint64_t a1, CFTypeRef *a2)
{
  theArray = 0;
  if (!a2)
  {
    return 0;
  }

  v3 = MovieSampleAccessorCopyCryptorIVArray(a1, 1, &theArray);
  if (v3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    *a2 = CFRetain(ValueAtIndex);
    CFRelease(theArray);
  }

  return v3;
}

uint64_t MovieSampleAccessorCopyCryptorIVArray(uint64_t a1, CFIndex a2, CFArrayRef *a3)
{
  v3 = 0;
  if (a2 >= 1 && a3)
  {
    v6 = *(a1 + 200);
    if (!v6)
    {
      return 0;
    }

    v7 = *(v6 + 88);
    if (!v7)
    {
      return 0;
    }

    v8 = *(v7 + 24);
    if (!v8)
    {
      return 0;
    }

    CFArrayGetCount(v8);
    OUTLINED_FUNCTION_49_12();
    if (!(v12 ^ v13 | v11))
    {
      return 0;
    }

    v15 = CFGetAllocator(*(*(v10 + 88) + 24));
    Mutable = CFArrayCreateMutable(v15, a2, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM();
      return 0;
    }

    v17 = Mutable;
    v20.location = 0;
    v20.length = a2;
    CFArrayAppendArray(Mutable, *(*(*(a1 + 200) + 88) + 24), v20);
    v18 = CFGetAllocator(v17);
    Copy = CFArrayCreateCopy(v18, v17);
    *a3 = Copy;
    if (Copy)
    {
      v3 = 1;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM();
      v3 = 0;
    }

    CFRelease(v17);
  }

  return v3;
}

uint64_t MovieSampleAccessorCopyCryptorSubsampleAuxData(uint64_t a1, CFTypeRef *a2)
{
  theArray = 0;
  if (!a2)
  {
    return 0;
  }

  v3 = MovieSampleAccessorCopyCryptorSubsampleAuxDataArray(a1, 1, &theArray);
  if (v3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    *a2 = CFRetain(ValueAtIndex);
    CFRelease(theArray);
  }

  return v3;
}

uint64_t MovieSampleAccessorCopyCryptorSubsampleAuxDataArray(uint64_t a1, CFIndex a2, CFArrayRef *a3)
{
  v3 = 0;
  if (a2 >= 1 && a3)
  {
    v6 = *(a1 + 200);
    if (!v6)
    {
      return 0;
    }

    v7 = *(v6 + 88);
    if (!v7)
    {
      return 0;
    }

    v8 = *(v7 + 32);
    if (!v8)
    {
      return 0;
    }

    CFArrayGetCount(v8);
    OUTLINED_FUNCTION_49_12();
    if (!(v12 ^ v13 | v11))
    {
      return 0;
    }

    v15 = CFGetAllocator(*(*(v10 + 88) + 32));
    Mutable = CFArrayCreateMutable(v15, a2, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM();
      return 0;
    }

    v17 = Mutable;
    v20.location = 0;
    v20.length = a2;
    CFArrayAppendArray(Mutable, *(*(*(a1 + 200) + 88) + 32), v20);
    v18 = CFGetAllocator(v17);
    Copy = CFArrayCreateCopy(v18, v17);
    *a3 = Copy;
    if (Copy)
    {
      v3 = 1;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM();
      v3 = 0;
    }

    CFRelease(v17);
  }

  return v3;
}

uint64_t MovieTrackAddSampleGroupDescriptionArray(CFMutableDictionaryRef *cf, const void *a2)
{
  if (cf[10] || (CFGetAllocator(cf), OUTLINED_FUNCTION_613(), Mutable = CFDictionaryCreateMutable(v4, v5, v6, v7), (cf[10] = Mutable) != 0))
  {
    OUTLINED_FUNCTION_496();
    OUTLINED_FUNCTION_156_0();
    result = MovieSampleGroupDescriptionArrayCopyInfo(v9, v10, v11, v12, v13, v14);
    if (!result)
    {
      if (CFDictionaryGetValue(cf[10], 0))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        return FigSignalErrorAtGM();
      }

      else
      {
        CFDictionarySetValue(cf[10], 0, a2);
        return 0;
      }
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

uint64_t MovieTrackAddSampleGroup(uint64_t *cf, uint64_t a2)
{
  v5 = cf + 9;
  v4 = cf[9];
  if (!v4)
  {
    v6 = CFGetAllocator(cf);
    result = MovieSampleGroupCollectionCreate(v6, v5);
    if (result)
    {
      return result;
    }

    v4 = *v5;
  }

  return MovieSampleGroupCollectionAddSampleGroup(v4, a2);
}

void MovieTrackAddAndRetainSampleGroup(void *a1, unint64_t a2, unsigned int a3, void *a4)
{
  v12 = 0;
  v8 = a1[9];
  if (v8)
  {
    v9 = MovieSampleGroupCollectionLookupAndRetainSampleGroup(v8, a2, a3);
    cf = v9;
    if (v9)
    {
      if (!a4)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else
  {
    cf = 0;
  }

  if (!MovieTrackAddAndRetainSampleGroupDescriptionArray(a1, a2, &v12))
  {
    v10 = CFGetAllocator(a1);
    if (!MovieSampleGroupCreate(v10, a2, a3, &cf) && !MovieSampleGroupSetDescriptionArray(cf, v12))
    {
      v11 = MovieTrackAddSampleGroup(a1, cf);
      if (a4)
      {
        if (!v11)
        {
          v9 = cf;
          if (!cf)
          {
LABEL_13:
            *a4 = v9;
            goto LABEL_14;
          }

LABEL_12:
          v9 = CFRetain(v9);
          goto LABEL_13;
        }
      }
    }
  }

LABEL_14:
  if (v12)
  {
    CFRelease(v12);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_652();
}

uint64_t MovieTrackGetDisplayTimeRange(const void *a1, uint64_t a2, CMTime *a3, uint64_t a4)
{
  memset(&v34, 0, sizeof(v34));
  v32 = 0;
  v8 = MoovAssureSampleTableParsed(a1);
  if (v8)
  {
    v12 = v8;
    v10 = 0;
    goto LABEL_13;
  }

  v9 = MovieSampleAccessorCreate(a1, a2, &v32);
  if (v9)
  {
    v12 = v9;
    v10 = v32;
    goto LABEL_13;
  }

  v10 = v32;
  if (!a3)
  {
    goto LABEL_7;
  }

  do
  {
    MovieSampleAccessorStepBackPTS(v10);
  }

  while (!v11);
  v12 = v11;
  if (v11 == -12840)
  {
    PTSTimeValue = MovieSampleAccessorGetPTSTimeValue(v10);
    CMTimeMake(&v33, PTSTimeValue, *(v10[1] + 58));
    *a3 = v33;
LABEL_7:
    if (a4)
    {
      SampleInDecodeOrder = MovieSampleAccessorMoveToLastSampleInDecodeOrder(v10);
      if (SampleInDecodeOrder)
      {
        v12 = SampleInDecodeOrder;
      }

      else
      {
        do
        {
          MovieSampleAccessorStepFwdPTS(v10);
        }

        while (!v15);
        v12 = v15;
        if (v15 == -12840)
        {
          memset(&v33, 0, sizeof(v33));
          v16 = MovieSampleAccessorGetPTSTimeValue(v10);
          CMTimeMake(&v34, v16, *(v10[1] + 58));
          SampleDuration = MovieSampleAccessorGetSampleDuration(v10, &v33);
          v25 = OUTLINED_FUNCTION_175(SampleDuration, v18, v19, v20, v21, v22, v23, v24, v33.value, *&v33.timescale, v33.epoch, v29, v34.value);
          CMTimeAdd(v27, v25, v26);
          v12 = 0;
          *a4 = v30;
          *(a4 + 16) = v31;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_13:
  MovieSampleAccessorDispose(v10);
  return v12;
}

uint64_t MovieTrackGetCompositionOffsetRange(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  result = MoovAssureSampleTableParsed(a1);
  if (!result)
  {
    if (a3)
    {
      *a3 = *(a2 + 116);
    }

    if (a4)
    {
      *a4 = *(a2 + 112);
    }
  }

  return result;
}

uint64_t MovieTrackGetEditSegmentWithIndex(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 < 0 || *(a1 + 816) <= a2)
  {
    return 4294954513;
  }

  OUTLINED_FUNCTION_97_7(a3, a2, *(a1 + 808));
  return 0;
}

uint64_t MovieTrackFragmentGetEditSegmentWithIndex(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 < 0 || *(a1 + 792) <= a2)
  {
    return 4294954513;
  }

  OUTLINED_FUNCTION_97_7(a3, a2, *(a1 + 784));
  return 0;
}

uint64_t MovieTrackFindEditIndexForTrackTime(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 816) && (v10 = *(a1 + 808)) != 0)
  {
    v12 = OUTLINED_FUNCTION_175(a1, a2, a3, a4, a5, a6, a7, a8, v10[6], v10[7], v10[8], v30, *a2);
    v14 = CMTimeCompare(v12, v13);
    if ((v14 & 0x80000000) != 0)
    {
      result = 0;
      v23 = 0;
    }

    else
    {
      v22 = *(a1 + 816);
      v23 = v22 - 1;
      if (v22 < 2)
      {
LABEL_8:
        result = 0;
      }

      else
      {
        v24 = 0;
        v25 = 144;
        while (1)
        {
          v26 = OUTLINED_FUNCTION_175(v14, v15, v16, v17, v18, v19, v20, v21, *(*(a1 + 808) + v25), *(*(a1 + 808) + v25 + 8), *(*(a1 + 808) + v25 + 16), v31, *a2);
          v14 = CMTimeCompare(v26, v27);
          if ((v14 & 0x80000000) != 0)
          {
            break;
          }

          v28 = v24 + 2;
          ++v24;
          v25 += 96;
          if (v28 >= *(a1 + 816))
          {
            goto LABEL_8;
          }
        }

        result = 0;
        v23 = v24;
      }
    }
  }

  else
  {
    v23 = 0;
    result = 4294954775;
  }

  *a3 = v23;
  return result;
}

uint64_t MovieTrackGetMediaTypeForSampleDescriptionID(uint64_t a1, int a2, CMMediaType *a3)
{
  desc = 0;
  FormatDescriptionForSampleDescriptionID = GetFormatDescriptionForSampleDescriptionID(a1, a2, &desc);
  if (!FormatDescriptionForSampleDescriptionID)
  {
    *a3 = CMFormatDescriptionGetMediaType(desc);
  }

  return FormatDescriptionForSampleDescriptionID;
}

uint64_t MovieTrackCreateEditSegmentArrayFromFragmentEditList(uint64_t a1, uint64_t a2, int a3)
{
  v81 = a1;
  if (!*(a2 + 722) || !*(a2 + 727))
  {
    return 0;
  }

  v5 = *(a2 + 808);
  if (v5)
  {
    v6 = (a2 + 808);
    free(v5);
    *v6 = 0;
    *(a2 + 816) = 0;
  }

  v7 = *(a2 + 704);
  if (!v7)
  {
    LODWORD(v8) = 0;
    v66 = 0;
    v67 = 0;
    v68 = 1;
LABEL_25:
    *(a2 + 824) = v68;
LABEL_26:
    *(a2 + 808) = v67;
    *(a2 + 820) = v66;
    *(a2 + 816) = v8;
    v69 = *(a2 + 16);
    *(a2 + 16) = v69 | 2;
    if (a3)
    {
      if (*(a2 + 922))
      {
        OUTLINED_FUNCTION_30_19(v69);
      }

      UpdateDurationsForEditSegmentChange(v81, a2);
    }

    return 0;
  }

  v8 = bswap32(v7[1]);
  if (v8 < 1)
  {
    v66 = 0;
    v67 = 0;
    v68 = 2;
    goto LABEL_25;
  }

  *(a2 + 824) = 5;
  if (v8 <= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  OUTLINED_FUNCTION_73_7();
  v11 = malloc_type_calloc(v9, 0x60uLL, v10);
  if (v11)
  {
    v71 = v11;
    v73 = v9;
    HIDWORD(v77) = a3;
    v12 = 0;
    v13 = 0;
    v79 = (v7 + 2);
    v14 = v7 + 6;
    v15 = v7 + 3;
    v16 = (v11 + 72);
    v75 = v8;
    do
    {
      if (**(a2 + 704))
      {
        v17 = bswap64(*(v14 - 1));
        v18 = bswap64(*(v14 - 2));
        v19 = v14;
      }

      else
      {
        v17 = bswap32(*v15);
        v18 = bswap32(*(v15 - 1));
        v19 = (v79 + 12 * v12 + 8);
      }

      v20 = *v19;
      v21 = &v16[-5].n128_i8[8];
      if (v17 == -1)
      {
        v32 = MEMORY[0x1E6960C70];
        *v21 = *MEMORY[0x1E6960C70];
        v16[-4].n128_u64[1] = *(v32 + 16);
      }

      else
      {
        v22 = CMTimeMake(&v84, v17, *(a2 + 232));
        v30 = OUTLINED_FUNCTION_87_2(v22, v23, v24, v25, v26, v27, v28, v29, v71, v73, v75, v77, v79, v81, time.value, *&time.timescale, time.epoch, *&v84.value);
        v16[-4].n128_u64[1] = v31;
        *v21 = v30;
      }

      v33 = v81;
      v34 = CMTimeMake(&v84, v18, *(v81 + 240));
      v42 = OUTLINED_FUNCTION_87_2(v34, v35, v36, v37, v38, v39, v40, v41, v71, v73, v75, v77, v79, v81, time.value, *&time.timescale, time.epoch, *&v84.value);
      v16[1].n128_u64[0] = v43;
      *v16 = v42;
      v44 = CMTimeMake(&v84, v13, *(v33 + 240));
      v52 = OUTLINED_FUNCTION_87_2(v44, v45, v46, v47, v48, v49, v50, v51, v72, v74, v76, v78, v80, v82, time.value, *&time.timescale, time.epoch, *&v84.value);
      v16[-1].n128_u64[1] = v53;
      *(v16 - 24) = v52;
      v54 = v16 - 3;
      if (v20 == 256)
      {
        *v54 = *v16;
        v16[-2].n128_u64[0] = v16[1].n128_u64[0];
      }

      else
      {
        v55 = *v16;
        time.epoch = v16[1].n128_i64[0];
        *&time.value = v55;
        v56 = CMTimeMultiplyByFloat64(&v84, &time, vcvtd_n_f64_u32(bswap32(v20), 0x10uLL));
        v64 = OUTLINED_FUNCTION_87_2(v56, v57, v58, v59, v60, v61, v62, v63, v71, v73, v75, v77, v79, v81, time.value, *&time.timescale, time.epoch, *&v84.value);
        v16[-2].n128_u64[0] = v65;
        *v54 = v64;
      }

      v13 += v18;
      ++v12;
      v14 += 5;
      v15 += 3;
      v16 += 6;
      --v8;
    }

    while (v8);
    a3 = HIDWORD(v77);
    v66 = v73;
    LODWORD(v8) = v75;
    v67 = v71;
    goto LABEL_26;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();

  return FigSignalErrorAtGM();
}

void IntegrateFragmentSampleGroupCollectionApplier()
{
  OUTLINED_FUNCTION_369();
  cf = 0;
  OUTLINED_FUNCTION_496();
  if (!MovieSampleGroupGetInfo(v2, v3, v4, v5, 0))
  {
    MovieTrackAddAndRetainSampleGroup(v1, 0, 0, &cf);
    v6 = cf;
    if (!v7)
    {
      MovieSampleGroupIntegrateSampleGroup(*(v1 + 288), cf, v0);
      v6 = cf;
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }
}

CMBlockBufferRef MovieTrackReviseParsedSampleCount()
{
  OUTLINED_FUNCTION_279_0();
  *(v2 + 288) = v3;
  if (!*(v2 + 312))
  {
    if (!*(v0 + 340))
    {
      return 0;
    }

    *(v0 + 340) = v1;
    v8 = *(v0 + 344);
    if (!v8)
    {
      return 0;
    }

    v9 = *(v0 + 336);
    v10 = 2 * v1;
    v11 = v1;
    v12 = (v1 + 1) / 2;
    if (v9 != 4)
    {
      v12 = 0;
    }

    if (v9 == 8)
    {
      v12 = v11;
    }

    if (v9 == 16)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    result = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], v8, 0, v13, 0, &blockBufferOut);
    if (result)
    {
      return result;
    }

    result = blockBufferOut;
    if (!blockBufferOut)
    {
      return result;
    }

    v7 = *(v0 + 344);
    *(v0 + 344) = blockBufferOut;
    goto LABEL_18;
  }

  *(v0 + 312) = v1;
  v4 = *(v0 + 320);
  if (!v4)
  {
    return 0;
  }

  result = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], v4, 0, 4 * v1, 0, &blockBufferOut);
  if (!result)
  {
    v6 = blockBufferOut;
    if (blockBufferOut)
    {
      v7 = *(v0 + 320);
      *(v0 + 320) = blockBufferOut;
      result = v6;
LABEL_18:
      CFRetain(result);
      if (v7)
      {
        CFRelease(v7);
      }

      result = blockBufferOut;
      if (blockBufferOut)
      {
        CFRelease(blockBufferOut);
        return 0;
      }
    }
  }

  return result;
}

void MovieTrackReviseSyncSampleTable(uint64_t a1)
{
  v6 = *(a1 + 480);
  cf = 0;
  if (v6 < 1)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_83_7();
  while (1)
  {
    destination = 0;
    CMBlockBufferCopyDataBytes(*(a1 + 488), v2, 4uLL, &destination);
    if (bswap32(destination) > v1)
    {
      break;
    }

    ++v3;
    v2 += 4;
    if (v4 == v2)
    {
      v3 = v6;
      break;
    }
  }

  if (v3)
  {
    v12 = OUTLINED_FUNCTION_70_9(*MEMORY[0x1E695E480], *(a1 + 488), v7, 4 * v3, v8, v9, v10, v11, 0);
    v13 = cf;
    if (v12)
    {
      goto LABEL_14;
    }

    v14 = *(a1 + 488);
    *(a1 + 488) = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }

  else
  {
LABEL_10:
    v3 = 0;
    v14 = *(a1 + 488);
    *(a1 + 488) = 0;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  *(a1 + 480) = v3;
  v13 = cf;
LABEL_14:
  if (v13)
  {
    CFRelease(v13);
  }

  OUTLINED_FUNCTION_652();
}

void MovieTrackRevisePartialSyncSampleTable(uint64_t a1)
{
  v6 = *(a1 + 504);
  cf = 0;
  if (v6 < 1)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_83_7();
  while (1)
  {
    destination = 0;
    CMBlockBufferCopyDataBytes(*(a1 + 512), v2, 4uLL, &destination);
    if (bswap32(destination) > v1)
    {
      break;
    }

    ++v3;
    v2 += 4;
    if (v4 == v2)
    {
      v3 = v6;
      break;
    }
  }

  if (v3)
  {
    v12 = OUTLINED_FUNCTION_70_9(*MEMORY[0x1E695E480], *(a1 + 512), v7, 4 * v3, v8, v9, v10, v11, 0);
    v13 = cf;
    if (v12)
    {
      goto LABEL_14;
    }

    v14 = *(a1 + 512);
    *(a1 + 512) = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }

  else
  {
LABEL_10:
    v3 = 0;
    v14 = *(a1 + 512);
    *(a1 + 512) = 0;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  *(a1 + 504) = v3;
  v13 = cf;
LABEL_14:
  if (v13)
  {
    CFRelease(v13);
  }

  OUTLINED_FUNCTION_652();
}

uint64_t MovieTrackComputeNominalFrameRate()
{
  OUTLINED_FUNCTION_471();
  v3 = v2;
  v48 = 0;
  v4 = MoovAssureSampleTableParsed(v2);
  v5 = 0.0;
  if (v4)
  {
    v32 = v4;
    v12 = 0;
    goto LABEL_16;
  }

  v6 = *(v1 + 224);
  if (!v6)
  {
    v12 = 0;
    goto LABEL_15;
  }

  v7 = *(v1 + 288);
  if (*(v1 + 816) == 1 && (v8 = *(v1 + 808), (*(v8 + 3) & 0x1D) == 1) && (v9 = *v8, time1.start.epoch = *(v8 + 2), *&time1.start.value = v9, v44 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v10 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v10, CMTimeCompare(&time1.start, &time2)))
  {
    v45 = v10;
    v11 = MovieSampleAccessorCreate(v3, v1, &v48);
    v12 = v48;
    if (v11)
    {
      v32 = v11;
      goto LABEL_16;
    }

    v13 = *(v1 + 808);
    *&time1.start.value = *v13;
    time1.start.epoch = *(v13 + 16);
    OUTLINED_FUNCTION_496();
    MovieSampleAccessorMoveToSampleAtPTS(v14, v15, v16, v17);
    v18 = *(v12 + 20);
    PTSTimeValue = MovieSampleAccessorGetPTSTimeValue(v12);
    v20 = PTSTimeValue - MovieSampleAccessorGetDTSTimeValue(v12);
    v21 = *(v1 + 808);
    v22 = *v21;
    v23 = v21[2];
    *&time1.start.epoch = v21[1];
    *&time1.duration.timescale = v23;
    *&time1.start.value = v22;
    CMTimeRangeGetEnd(&time2, &time1);
    OUTLINED_FUNCTION_496();
    MovieSampleAccessorMoveToSampleAtPTS(v24, v25, v26, v27);
    v28 = *(v12 + 20);
    v43 = MovieSampleAccessorGetPTSTimeValue(v12);
    if (v20 == v43 - MovieSampleAccessorGetDTSTimeValue(v12))
    {
      v29 = v28;
      v30 = v45;
    }

    else
    {
      v41 = v0;
      v42 = PTSTimeValue;
      v34 = -120;
      v29 = v28;
      v35 = v28;
      while (v34 && v29 > v18)
      {
        MovieSampleAccessorStepBackPTS(v12);
        v29 = *(v12 + 20);
        v36 = MovieSampleAccessorGetPTSTimeValue(v12);
        ++v34;
        if (v20 == v36 - MovieSampleAccessorGetDTSTimeValue(v12))
        {
          v43 = v36;
          goto LABEL_25;
        }
      }

      v29 = v35;
LABEL_25:
      v30 = v45;
      v0 = v41;
      PTSTimeValue = v42;
    }

    if (v29 > v18)
    {
      v5 = (v29 - v18) / ((v43 - PTSTimeValue) / *(v1 + 232));
      v37 = *(v1 + 808);
      *&time1.start.value = *(v37 + 24);
      time1.start.epoch = *(v37 + 40);
      time2 = *(v37 + 72);
      if (CMTimeCompare(&time1.start, &time2))
      {
        OUTLINED_FUNCTION_66_11();
        *&time2.value = v44;
        time2.epoch = v30;
        if (CMTimeCompare(&time1.start, &time2) >= 1)
        {
          v38 = *(v1 + 808);
          *&time1.start.value = *(v38 + 24);
          time1.start.epoch = *(v38 + 40);
          Seconds = CMTimeGetSeconds(&time1.start);
          OUTLINED_FUNCTION_66_11();
          v32 = 0;
          v40 = Seconds / CMTimeGetSeconds(&time1.start);
          v5 = v5 * v40;
          goto LABEL_16;
        }
      }

LABEL_15:
      v32 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
  }

  v31 = *(v1 + 728);
  if (v31 && *(v31 + 56))
  {
    v6 += *v31;
    v7 += *(v31 + 8);
  }

  v32 = 0;
  v5 = v7 * *(v1 + 232) / v6;
LABEL_16:
  MovieSampleAccessorDispose(v12);
  if (v0)
  {
    *v0 = v5;
  }

  return v32;
}

uint64_t MovieTrackComputePeakDataRate()
{
  OUTLINED_FUNCTION_471();
  v3 = v2;
  v19 = 0;
  v18 = 0;
  v4 = MoovAssureSampleTableParsed(v2);
  if (v4)
  {
    v15 = v4;
    v6 = 0;
  }

  else
  {
    v5 = MovieSampleAccessorCreate(v3, v1, &v19);
    v6 = v19;
    if (v5)
    {
      v15 = v5;
    }

    else
    {
      DTSTimeValue = MovieSampleAccessorGetDTSTimeValue(v19);
      CMTimeMake(&v17, DTSTimeValue, *(v6[1] + 58));
      v8 = *(v1 + 232);
      if (v8 < 1)
      {
        v15 = 0;
      }

      else
      {
        v6 = v19;
        OUTLINED_FUNCTION_613();
        MovieSampleAccessorGetChunkDetails(v9, v10, v11, v12, v13, 0, 0, 0, 0);
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
          *v0 = v8 * 0;
        }
      }
    }
  }

  MovieSampleAccessorDispose(v6);
  free(0);
  return v15;
}

uint64_t MovieTrackComputeTotalTrackBytes(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  FigSimpleMutexLock();
  v6 = *(a2 + 840);
  if (!v6)
  {
    v9 = MoovAssureSampleTableParsed(a1);
    if (v9)
    {
      v7 = v9;
      goto LABEL_3;
    }

    v10 = *(a2 + 248);
    if (v10 || (v10 = *(a2 + 292)) != 0)
    {
      v11 = *(a2 + 244);
      v12 = *(a2 + 288);
      if (v11)
      {
        v12 /= v11;
      }

      v6 = v10 * v12;
    }

    else if (*(a2 + 288) < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v13 = 0;
      do
      {
        v6 += (*(a2 + 592))(a2, v13);
        v13 = (v13 + 1);
      }

      while (v13 < *(a2 + 288));
    }

    *(a2 + 840) = v6;
    v14 = *(a2 + 728);
    if (v14)
    {
      v15 = *(v14 + 56);
      if (v15)
      {
        v16 = 0;
        do
        {
          for (i = v15[9]; i; i = *i)
          {
            v16 += TotalRunDataSize(v15, i);
          }

          v15 = *v15;
        }

        while (v15);
        v6 += v16;
        *(a2 + 840) = v6;
      }
    }
  }

  v7 = 0;
  *a3 = v6;
LABEL_3:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t MovieTrackComputeMinSampleDuration()
{
  OUTLINED_FUNCTION_471();
  v3 = v2;
  v18 = 0;
  v16 = *MEMORY[0x1E6960C88];
  v17 = *(MEMORY[0x1E6960C88] + 16);
  v15 = 0;
  v4 = MoovAssureSampleTableParsed(v2);
  if (v4)
  {
    v13 = v4;
    v6 = 0;
  }

  else
  {
    v5 = MovieSampleAccessorCreate(v3, v1, &v18);
    v6 = v18;
    if (!v5)
    {
      while (1)
      {
        OUTLINED_FUNCTION_496();
        MovieSampleAccessorGetChunkDetails(v7, v8, v9, v10, v11, 0, 0, v12, 0);
        if (v5)
        {
          break;
        }

        if (!v15)
        {
          v13 = 0;
          goto LABEL_6;
        }
      }
    }

    v13 = v5;
  }

LABEL_6:
  *v0 = v16;
  *(v0 + 16) = v17;
  MovieSampleAccessorDispose(v6);
  return v13;
}

uint64_t MovieTrackComputeMaxEditRate()
{
  OUTLINED_FUNCTION_471();
  v3 = MoovAssureSampleTableParsed(v2);
  v4 = 1.0;
  if (!v3 && *(v1 + 816) >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 1.0;
    v9 = MEMORY[0x1E6960CC0];
    while (1)
    {
      v10 = *(v1 + 808);
      if ((*(v10 + v5 + 12) & 0x1D) != 1)
      {
        goto LABEL_11;
      }

      if ((*(v10 + v5 + 36) & 0x1D) != 1)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_68_10(v10);
      v19 = OUTLINED_FUNCTION_175(v11, v12, v13, v14, v15, v16, v17, v18, *v9, v9[1], v9[2], v25, time.value);
      if (CMTimeCompare(v19, v20) < 1)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_68_10(*(v1 + 808));
      Seconds = CMTimeGetSeconds(&time);
      v22 = *(v1 + 808) + v5;
      v23 = *(v22 + 72);
      time.epoch = *(v22 + 88);
      *&time.value = v23;
      v4 = Seconds / CMTimeGetSeconds(&time);
      if (v7)
      {
        if (v8 >= v4)
        {
          break;
        }
      }

      v7 = 1;
LABEL_12:
      ++v6;
      v5 += 96;
      v8 = v4;
      if (v6 >= *(v1 + 816))
      {
        goto LABEL_13;
      }
    }

    v7 = 1;
LABEL_11:
    v4 = v8;
    goto LABEL_12;
  }

LABEL_13:
  *v0 = v4;
  return v3;
}

uint64_t MovieInformationAddOneTrackReference(uint64_t *a1, int a2, int a3, int a4)
{
  result = 0;
  if (a3 && a4)
  {
    if (a2 == 1952658996)
    {
      v8 = 1953325924;
    }

    else
    {
      v8 = a2;
    }

    v9 = a1[41];
    if (v9 < 1)
    {
LABEL_12:
      result = EnsureTrackReferenceArrayCapacityForAddition(a1);
      if (!result)
      {
        v11 = a1[41];
        if (v11 < 1)
        {
          v13 = 0;
LABEL_21:
          if (v11 != v13)
          {
            memmove((a1[43] + 12 * v13 + 12), (a1[43] + 12 * v13), 12 * (v11 - v13));
            v11 = a1[41];
          }
        }

        else
        {
          v12 = 0;
          v13 = 0;
          v14 = a1[43];
          do
          {
            v15 = *v14;
            v14 += 3;
            if (v15 == v8)
            {
              v12 = 1;
            }

            else if (v12)
            {
              goto LABEL_21;
            }

            ++v13;
          }

          while (v11 != v13);
          v13 = a1[41];
        }

        v16 = (a1[43] + 12 * v13);
        *v16 = v8;
        v16[1] = a3;
        v16[2] = a4;
        a1[41] = v11 + 1;
        NoteTrackReferenceChange(a1, v8, a3, a4);
        return 0;
      }
    }

    else
    {
      v10 = (a1[43] + 8);
      while (*(v10 - 2) != v8 || *(v10 - 1) != a3 || *v10 != a4)
      {
        v10 += 3;
        if (!--v9)
        {
          goto LABEL_12;
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t MovieInformationAddOneAlternateGroupAssignment(void *a1, uint64_t a2, __int16 a3)
{
  v9 = 0;
  v5 = a1[44];
  if (v5 < 1)
  {
LABEL_5:
    result = NewTrackAlternateGroupAssignment(a1, &v9);
    if (result)
    {
      return result;
    }

    v8 = v9;
    *v9 = *(a2 + 144);
    v6 = v8 + 1;
  }

  else
  {
    v6 = (a1[46] + 4);
    while (*(v6 - 1) != *(a2 + 144))
    {
      v6 += 4;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }
  }

  result = 0;
  *v6 = a3;
  return result;
}

void MovieTrackCreateEnhancedGaplessInfo(void *a1, uint64_t a2)
{
  v10 = 0;
  if (*(a2 + 24) == 1936684398)
  {
    if (*(a2 + 832))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM();
    }

    else
    {
      MovieInformationCreateiTunesMetadataReader(a1, &v10);
      if (!v10)
      {
        return;
      }

      v3 = MovieTrackCopyFormatDescriptionArray(a2);
      if (v3)
      {
        v4 = v3;
        if (CFArrayGetCount(v3) >= 1)
        {
          v8 = 0;
          v9 = 0;
          if (FigGaplessInfoFetchiTunesParametersFromMetadataReader(v10, &v8))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
            memset(&v7, 0, sizeof(v7));
            MovieTrackGetMediaDuration(a2, &v7);
            v6 = v7;
            *(a2 + 832) = FigGaplessInfoCreateEnhanced_CorrectingWithUneditedDuration(ValueAtIndex, &v6, v8, SHIDWORD(v8), v9);
          }
        }

        CFRelease(v4);
      }
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }
}

uint64_t MovieTrackCopyEnhancedGaplessInfo(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (*(a1 + 24) == 1936684398)
    {
      FigSimpleMutexLock();
      v4 = *(a1 + 832);
      if (v4)
      {
        v4 = CFRetain(v4);
      }

      *a2 = v4;
      FigSimpleMutexUnlock();
      return 0;
    }

    else
    {
      return 4294954516;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM();
  }
}

uint64_t MovieTrackSupplementQuickTimeUserDataFromBlockBuffer()
{
  OUTLINED_FUNCTION_36_20();
  theArray = 0;
  cf = 0;
  v18 = 0;
  v19 = 0;
  v4 = CFGetAllocator(v3);
  QuickTimeUserDataReader = FigMetadataReaderCreateForQuickTimeUserDataBlockBuffer(v4, v2, &cf);
  if (QuickTimeUserDataReader)
  {
    goto LABEL_26;
  }

  v6 = CFGetAllocator(v1);
  QuickTimeUserDataReader = FigMetadataCopyAllMetadataItems(v6, cf, &theArray);
  if (QuickTimeUserDataReader)
  {
    goto LABEL_26;
  }

  if (!theArray || CFArrayGetCount(theArray) < 1)
  {
    v14 = 0;
LABEL_9:
    v15 = 0;
    v11 = 0;
    goto LABEL_10;
  }

  v7 = OUTLINED_FUNCTION_177();
  QuickTimeUserDataReader = MovieTrackCreateQuickTimeUserDataReader(v7, v8, v9);
  if (QuickTimeUserDataReader)
  {
LABEL_26:
    v14 = QuickTimeUserDataReader;
    goto LABEL_9;
  }

  LODWORD(v17) = theArray;
  if (theArray)
  {
    v17 = CFRetain(theArray);
    v15 = v17;
  }

  else
  {
    v15 = 0;
  }

  MovieTrackSetTrackMetadataItemArray(v17, v0, @"com.apple.quicktime.udta", v15);
  v10 = CFGetAllocator(v1);
  v11 = CFDictionaryCreate(v10, &kFigMetadataFormat_QuickTimeUserData, &theArray, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = OUTLINED_FUNCTION_177();
  PostTrackMetadataSupplementedNotification(v12, v13, v11);
  v14 = 0;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v14;
}

void PostTrackMetadataSupplementedNotification(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v12 = 0;
  if ((*(a1 + 16) & 4) == 0 && !*(a1 + 32))
  {
    return;
  }

  keys = @"Metadata";
  values = a3;
  if (!*(a1 + 184))
  {
    v5 = 0;
    goto LABEL_7;
  }

  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (a1 + 188));
  v5 = v4;
  if (!v4)
  {
LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  v14 = @"SequenceNumber";
  v12 = v4;
  v6 = 2;
LABEL_8:
  v7 = CFGetAllocator(a1);
  v8 = CFDictionaryCreate(v7, &keys, &values, v6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v8)
  {
    v9 = v8;
    v10 = *(a1 + 32);
    CMNotificationCenterGetDefaultLocalCenter();
    if (v10)
    {
      FigDeferNotificationToDispatchQueue();
    }

    else
    {
      CMNotificationCenterPostNotification();
    }

    CFRelease(v9);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t MovieTrackSupplementISOUserDataFromBlockBuffer()
{
  OUTLINED_FUNCTION_36_20();
  theArray = 0;
  cf = 0;
  v18 = 0;
  v19 = 0;
  v4 = CFGetAllocator(v3);
  ISOUserDataReader = FigMetadataReaderCreateForISOUserDataBlockBuffer(v4, v2, &cf);
  if (ISOUserDataReader)
  {
    goto LABEL_26;
  }

  v6 = CFGetAllocator(v1);
  ISOUserDataReader = FigMetadataCopyAllMetadataItems(v6, cf, &theArray);
  if (ISOUserDataReader)
  {
    goto LABEL_26;
  }

  if (!theArray || CFArrayGetCount(theArray) < 1)
  {
    v14 = 0;
LABEL_9:
    v15 = 0;
    v11 = 0;
    goto LABEL_10;
  }

  v7 = OUTLINED_FUNCTION_177();
  ISOUserDataReader = MovieTrackCreateISOUserDataReader(v7, v8, v9);
  if (ISOUserDataReader)
  {
LABEL_26:
    v14 = ISOUserDataReader;
    goto LABEL_9;
  }

  LODWORD(v17) = theArray;
  if (theArray)
  {
    v17 = CFRetain(theArray);
    v15 = v17;
  }

  else
  {
    v15 = 0;
  }

  MovieTrackSetTrackMetadataItemArray(v17, v0, @"org.mp4ra", v15);
  v10 = CFGetAllocator(v1);
  v11 = CFDictionaryCreate(v10, &kFigMetadataFormat_ISOUserData, &theArray, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = OUTLINED_FUNCTION_177();
  PostTrackMetadataSupplementedNotification(v12, v13, v11);
  v14 = 0;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v14;
}

uint64_t MovieSampleTableSet_cslg(uint64_t a1, CMBlockBufferRef theSourceBuffer)
{
  if (!theSourceBuffer)
  {
    return 0;
  }

  result = CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 0x18uLL, (a1 + 552));
  if (!result)
  {
    *(a1 + 576) = 1;
  }

  return result;
}

void *MovieInformationCreateDeepCopy(const __CFAllocator *a1, void *a2, char a3, void *a4)
{
  v8 = a2;
  v155 = 0;
  if (a2[3])
  {
    v10 = FigReadWriteLockLockForRead();
    if (v10)
    {
      v4 = v10;
      goto LABEL_152;
    }
  }

  v11 = MovieInformationCreate(a1, a3 & 3, &v155);
  v12 = v155;
  if (v11)
  {
    goto LABEL_155;
  }

  v13 = v8[6];
  if (v13)
  {
    v11 = MovieInformationSetByteStream(v155, v13);
    if (v11)
    {
      goto LABEL_155;
    }
  }

  memcpy(v12 + 27, v8 + 27, 0x50uLL);
  value = 0;
  v157 = 0;
  v153 = v8[38];
  if (v153 < 1)
  {
    v4 = 0;
    goto LABEL_138;
  }

  v150 = v5;
  v151 = a4;
  v14 = 0;
  v15 = v8[3];
  allocator = *MEMORY[0x1E695E480];
  v152 = v8;
  while (1)
  {
    if (v8[38] <= v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v8[40] + 8 * v14);
    }

    v17 = MovieTrackCreate(&v157);
    if (v17)
    {
      goto LABEL_167;
    }

    v18 = v15;
    v19 = v157;
    *(v157 + 6) = *(v16 + 24);
    if (*(v16 + 40))
    {
      Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      *(v19 + 5) = Mutable;
      if (!Mutable)
      {
        goto LABEL_136;
      }

      Count = CFArrayGetCount(*(v16 + 40));
      if (Count >= 1)
      {
        v22 = Count;
        v23 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v16 + 40), v23);
          v30 = OUTLINED_FUNCTION_3_103(ValueAtIndex, ValueAtIndex, v25, v26, v27, v28, v29, &value);
          if (v30)
          {
            goto LABEL_137;
          }

          CFArrayAppendValue(*(v19 + 5), value);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }
        }

        while (v22 != ++v23);
      }
    }

    if (*(v16 + 56))
    {
      OUTLINED_FUNCTION_613();
      v34 = CFArrayCreateMutable(v31, v32, v33);
      *(v19 + 7) = v34;
      if (!v34)
      {
        goto LABEL_136;
      }

      v35 = CFArrayGetCount(*(v16 + 56));
      if (v35 >= 1)
      {
        v4 = v35;
        v36 = 0;
        while (1)
        {
          v37 = CFArrayGetValueAtIndex(*(v16 + 56), v36);
          v38 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
          if (!v38)
          {
            break;
          }

          *v38 = *v37;
          CFArrayAppendValue(*(v19 + 7), v38);
          if (v4 == ++v36)
          {
            goto LABEL_26;
          }
        }

LABEL_136:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        v30 = FigSignalErrorAtGM();
        goto LABEL_137;
      }
    }

LABEL_26:
    v39 = *(v16 + 48);
    if (v39)
    {
      v40 = CFArrayGetCount(v39);
      MutableCopy = CFArrayCreateMutableCopy(a1, v40, *(v16 + 48));
      *(v19 + 6) = MutableCopy;
      if (!MutableCopy)
      {
        goto LABEL_136;
      }
    }

    if (*(v16 + 64))
    {
      OUTLINED_FUNCTION_613();
      v45 = CFArrayCreateMutable(v42, v43, v44);
      *(v19 + 8) = v45;
      if (!v45)
      {
        goto LABEL_136;
      }

      v46 = CFArrayGetCount(*(v16 + 64));
      if (v46 >= 1)
      {
        v47 = v46;
        v48 = 0;
        while (1)
        {
          v49 = CFArrayGetValueAtIndex(*(v16 + 64), v48);
          v55 = v49;
          v56 = v49[1];
          if (v56)
          {
            v30 = OUTLINED_FUNCTION_3_103(v49, v56, v50, v51, v52, v53, v54, &value);
            if (v30)
            {
              break;
            }
          }

          v57 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040ABACF81FuLL);
          if (!v57)
          {
            goto LABEL_136;
          }

          v4 = v57;
          *v57 = *v55;
          v58 = v55[2];
          if (v58)
          {
            v58 = CFRetain(v58);
          }

          v4[1] = value;
          v4[2] = v58;
          value = 0;
          CFArrayAppendValue(*(v19 + 8), v4);
          if (v47 == ++v48)
          {
            goto LABEL_38;
          }
        }

LABEL_137:
        v4 = v30;
        a4 = v151;
        v8 = v152;
        goto LABEL_138;
      }
    }

LABEL_38:
    cf = 0;
    v15 = v18;
    v8 = v152;
    if (MovieSampleGroupCollectionGetCount(*(v16 + 72)))
    {
      v59 = CFGetAllocator(v19);
      v60 = MovieSampleGroupCollectionCreate(v59, &cf);
      if (v60)
      {
        v4 = v60;
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_134;
      }

      MovieSampleGroupCollectionApplyFunction(*(v16 + 72), SampleGroupDeepCopyApplier, cf);
      *(v19 + 9) = cf;
    }

    *(v19 + 14) = *(v16 + 112);
    LODWORD(v61) = memcpy(v19 + 120, (v16 + 120), 0x58uLL);
    v68 = *(v16 + 224);
    *(v19 + 13) = *(v16 + 208);
    *(v19 + 14) = v68;
    v19[240] = *(v16 + 240);
    *(v19 + 244) = *(v16 + 244);
    v69 = *(v16 + 260);
    *(v19 + 252) = *(v16 + 252);
    *(v19 + 65) = v69;
    v70 = *(v16 + 272);
    *(v19 + 33) = *(v16 + 264);
    *(v19 + 68) = v70;
    v71 = *(v16 + 284);
    *(v19 + 276) = *(v16 + 276);
    *(v19 + 71) = v71;
    *(v19 + 36) = *(v16 + 288);
    *(v19 + 88) = *(v16 + 88);
    *(v19 + 13) = *(v16 + 104);
    *(v19 + 74) = *(v16 + 296);
    *(v19 + 38) = *(v16 + 304);
    cf = 0;
    *(v19 + 73) = GetNumSamples_stsz;
    *(v19 + 74) = GetSampleSize_stsz;
    *(v19 + 75) = GetSampleSizeFieldSize_stsz;
    *(v19 + 76) = GetSizeTable_stsz;
    *(v19 + 77) = GetChunkOffset_stco;
    *(v19 + 78) = GetChunkCount_stco;
    *(v19 + 79) = GetChunkTable_stco;
    v72 = *(v16 + 312);
    if (v72)
    {
      v73 = *(v16 + 320);
      if (v73)
      {
        if (v15)
        {
          OUTLINED_FUNCTION_1_130(v61, v73, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
        }

        else
        {
          OUTLINED_FUNCTION_4_101(v61, v73, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
        }

        OUTLINED_FUNCTION_24_22();
        if (v74)
        {
          goto LABEL_164;
        }

        v72 = *(v16 + 312);
      }

      else
      {
        v63 = 0;
      }

      MovieSampleTableSet_stsz(v19, v72, *(v16 + 316), v63);
      LODWORD(v61) = cf;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    v75 = *(v16 + 344);
    if (v75)
    {
      break;
    }

LABEL_59:
    v77 = *(v16 + 368);
    if (v77)
    {
      if (v15)
      {
        OUTLINED_FUNCTION_1_130(v61, v77, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      else
      {
        OUTLINED_FUNCTION_4_101(v61, v77, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      OUTLINED_FUNCTION_24_22();
      if (v78)
      {
        goto LABEL_164;
      }

      v79 = OUTLINED_FUNCTION_38_15();
      MovieSampleTableSet_stco(v79, v80, v81);
      LODWORD(v61) = cf;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    v82 = *(v16 + 392);
    if (v82)
    {
      if (v15)
      {
        OUTLINED_FUNCTION_1_130(v61, v82, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      else
      {
        OUTLINED_FUNCTION_4_101(v61, v82, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      OUTLINED_FUNCTION_24_22();
      if (v83)
      {
        goto LABEL_164;
      }

      v84 = OUTLINED_FUNCTION_38_15();
      MovieSampleTableSet_co64(v84, v85, v86);
      LODWORD(v61) = cf;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    v87 = *(v16 + 416);
    if (v87)
    {
      if (v15)
      {
        OUTLINED_FUNCTION_1_130(v61, v87, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      else
      {
        OUTLINED_FUNCTION_4_101(v61, v87, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      OUTLINED_FUNCTION_24_22();
      if (v88)
      {
        goto LABEL_164;
      }

      v89 = OUTLINED_FUNCTION_38_15();
      MovieSampleTableSet_stts(v89, v90, v91);
      LODWORD(v61) = cf;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    v92 = *(v16 + 440);
    if (v92)
    {
      if (v15)
      {
        OUTLINED_FUNCTION_1_130(v61, v92, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      else
      {
        OUTLINED_FUNCTION_4_101(v61, v92, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      OUTLINED_FUNCTION_24_22();
      if (v93)
      {
        goto LABEL_164;
      }

      v94 = OUTLINED_FUNCTION_38_15();
      MovieSampleTableSet_stsc(v94, v95, v96);
      LODWORD(v61) = cf;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    v97 = *(v16 + 464);
    if (v97)
    {
      if (v15)
      {
        OUTLINED_FUNCTION_1_130(v61, v97, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      else
      {
        OUTLINED_FUNCTION_4_101(v61, v97, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      OUTLINED_FUNCTION_24_22();
      if (v98)
      {
        goto LABEL_164;
      }

      v99 = OUTLINED_FUNCTION_38_15();
      MovieSampleTableSet_ctts(v99, v100, v101);
      LODWORD(v61) = cf;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    v102 = *(v16 + 488);
    if (v102)
    {
      if (v15)
      {
        IsEmpty = CMBlockBufferIsEmpty(*(v16 + 488));
        if (IsEmpty)
        {
          OUTLINED_FUNCTION_92_6(IsEmpty, v104, v105, v106, v107, v108, v109, v110, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
        }

        else
        {
          OUTLINED_FUNCTION_1_130(0, *(v16 + 488), v105, v106, v107, v108, v109, v110, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
        }
      }

      else
      {
        OUTLINED_FUNCTION_4_101(v61, v102, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      OUTLINED_FUNCTION_24_22();
      if (v111)
      {
        goto LABEL_164;
      }

      v112 = OUTLINED_FUNCTION_38_15();
      MovieSampleTableSet_stss(v112, v113, v114);
      LODWORD(v61) = cf;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    v115 = *(v16 + 512);
    if (v115)
    {
      if (v15)
      {
        v116 = CMBlockBufferIsEmpty(*(v16 + 512));
        if (v116)
        {
          OUTLINED_FUNCTION_92_6(v116, v117, v118, v119, v120, v121, v122, v123, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
        }

        else
        {
          OUTLINED_FUNCTION_1_130(0, *(v16 + 512), v118, v119, v120, v121, v122, v123, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
        }
      }

      else
      {
        OUTLINED_FUNCTION_4_101(v61, v115, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      OUTLINED_FUNCTION_24_22();
      if (v124)
      {
        goto LABEL_164;
      }

      v125 = OUTLINED_FUNCTION_38_15();
      MovieSampleTableSet_stps(v125, v126, v127);
      LODWORD(v61) = cf;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    v128 = *(v16 + 536);
    if (v128)
    {
      if (v15)
      {
        OUTLINED_FUNCTION_1_130(v61, v128, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      else
      {
        OUTLINED_FUNCTION_4_101(v61, v128, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
      }

      OUTLINED_FUNCTION_24_22();
      if (v129)
      {
        goto LABEL_164;
      }

      v130 = OUTLINED_FUNCTION_38_15();
      MovieSampleTableSet_sdtp(v130, v131, v132);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    if (*(v16 + 576))
    {
      v19[576] = 1;
      v133 = *(v16 + 552);
      *(v19 + 71) = *(v16 + 568);
      *(v19 + 552) = v133;
    }

    v19[722] = *(v16 + 722);
    *(v19 + 204) = *(v16 + 816);
    v134 = *(v16 + 820);
    *(v19 + 205) = v134;
    *(v19 + 206) = *(v16 + 824);
    if (v134)
    {
      v135 = malloc_type_malloc(96 * v134, 0x1000040565EDBD2uLL);
      *(v19 + 101) = v135;
      if (!v135)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        v17 = FigSignalErrorAtGM();
LABEL_167:
        v4 = v17;
LABEL_134:
        a4 = v151;
        goto LABEL_138;
      }

      v136 = *(v16 + 816);
      if (v136)
      {
        memcpy(v135, *(v16 + 808), 96 * v136);
      }
    }

    v137 = *(v16 + 832);
    if (v137)
    {
      *(v19 + 104) = CFDictionaryCreateCopy(a1, v137);
    }

    *(v19 + 105) = *(v16 + 840);
    v138 = *(v16 + 856);
    if (v138)
    {
      *(v19 + 107) = CFStringCreateCopy(a1, v138);
    }

    v139 = *(v16 + 848);
    if (v139)
    {
      *(v19 + 106) = CFStringCreateCopy(a1, v139);
    }

    *(v19 + 54) = *(v16 + 864);
    *(v19 + 220) = *(v16 + 880);
    v17 = MovieInformationAddNewPerTrackInfo(v12, v19);
    if (v17)
    {
      goto LABEL_167;
    }

    CFRelease(v19);
    v157 = 0;
    if (++v14 == v153)
    {
      v4 = 0;
      goto LABEL_134;
    }
  }

  if (v15)
  {
    OUTLINED_FUNCTION_1_130(v61, v75, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
  }

  else
  {
    OUTLINED_FUNCTION_4_101(v61, v75, v62, v63, v64, v65, v66, v67, v149, v150, v151, v152, v153, allocator, v155, value, v157, cf);
  }

  OUTLINED_FUNCTION_24_22();
  if (v76)
  {
    goto LABEL_164;
  }

  v61 = MovieSampleTableSet_stz2(v19, *(v16 + 340), *(v16 + 336), v63);
  v63 = cf;
  if (!v61)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_59;
  }

  v4 = v61;
LABEL_164:
  a4 = v151;
  if (v63)
  {
    CFRelease(v63);
  }

LABEL_138:
  if (value)
  {
    CFRelease(value);
  }

  if (v157)
  {
    CFRelease(v157);
  }

  if (v4)
  {
    goto LABEL_156;
  }

  if (v8[41] < 1)
  {
LABEL_147:
    if (v8[44] >= 1)
    {
      v147 = 0;
      do
      {
        cf = 0;
        v11 = NewTrackAlternateGroupAssignment(v12, &cf);
        if (v11)
        {
          goto LABEL_155;
        }

        *cf = *(v8[46] + 8 * v147++);
      }

      while (v147 < v8[44]);
    }

    v4 = 0;
    *a4 = v12;
  }

  else
  {
    v140 = 0;
    v141 = 0;
    while (1)
    {
      v11 = EnsureTrackReferenceArrayCapacityForAddition(v12);
      if (v11)
      {
        break;
      }

      v142 = v12[43] + 12 * v12[41];
      *(v142 + 8) = 0;
      *v142 = 0;
      v143 = v12[41];
      v144 = v12[43] + 12 * v143;
      v12[41] = v143 + 1;
      v145 = (v8[43] + v140);
      v146 = *v145;
      *(v144 + 8) = *(v145 + 2);
      *v144 = v146;
      ++v141;
      v140 += 12;
      if (v141 >= v8[41])
      {
        goto LABEL_147;
      }
    }

LABEL_155:
    v4 = v11;
LABEL_156:
    if (v12)
    {
      CFRelease(v12);
    }
  }

LABEL_152:
  if (v8[3])
  {
    FigReadWriteLockUnlockForRead();
  }

  return v4;
}

uint64_t MovieTrackAddFragmentRun(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v191 = 0;
  (*(a2 + 624))(a2);
  v8 = *(a4 + 32) + *(a3 + 48);
  v9 = *(a2 + 392);
  if (v8 > 4000000000)
  {
    if (!v9)
    {
      UpgradeTo64BitChunkOffsets(a2);
    }

    goto LABEL_5;
  }

  if (v9)
  {
LABEL_5:
    MakeTableReadyToWrite((a2 + 392), (a2 + 400));
    destination = bswap64(v8);
    CMByteStreamAppend();
    ++*(a2 + 384);
    goto LABEL_6;
  }

  MakeTableReadyToWrite((a2 + 368), (a2 + 376));
  LODWORD(destination) = bswap32(v8);
  CMByteStreamAppend();
  ++*(a2 + 360);
LABEL_6:
  v172 = a1;
  v10 = *(a2 + 432);
  if (v10)
  {
    OUTLINED_FUNCTION_62_11(12 * v10, blockBufferOut, v168, a1, v176, destination, v188);
    v11 = bswap32(v189);
    OUTLINED_FUNCTION_62_11(12 * *(a2 + 432), blockBufferOuta, v169, v173, v177, destinationa, v189);
    v10 = bswap32(destination_4);
  }

  else
  {
    v11 = 0;
  }

  if (v11 != *(a3 + 56) || *(a4 + 40) != v10)
  {
    v191 = 0;
    MakeTableReadyToWrite((a2 + 440), (a2 + 448));
    CMByteStreamAppend();
    ++*(a2 + 432);
  }

  v12 = UpgradeTo32BitSampleSizes(a2);
  v13 = *(a2 + 292);
  v14 = *(a2 + 288);
  v15 = *(a2 + 728);
  if (v15)
  {
    v14 += *(v15 + 8);
  }

  if (v13)
  {
    v16 = *(a4 + 52);
    v17 = bswap32(v13);
    if ((v16 & 2) != 0)
    {
      v19 = *(a4 + 40);
      if (v19 < 1)
      {
        goto LABEL_29;
      }

      v20 = kPerSampleInfo_SizeInInt32s[v16];
      v21 = (a4 + 4 * kPerSampleInfo_SizeIndex[v16] + 56);
      v22 = 4 * v20;
      while (*v21 == v17)
      {
        v21 = (v21 + v22);
        if (!--v19)
        {
          goto LABEL_29;
        }
      }
    }

    else if (*(a3 + 64) == v13)
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_98_3();
    LODWORD(v191) = v17;
    if (*(a2 + 288) >= 1)
    {
      v18 = 0;
      do
      {
        CMByteStreamAppend();
        ++v18;
      }

      while (v18 < *(a2 + 288));
    }

    *(a2 + 316) = 0;
    *(a2 + 292) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_98_3();
  }

  AddFragmentRunSampleSizes();
LABEL_29:
  v23 = *(a4 + 40);
  v24 = *(a2 + 312) + v23;
  *(a2 + 312) = v24;
  *(a2 + 288) = v24;
  *(a2 + 840) = 0;
  *(a2 + 16) |= 0x2001uLL;
  if (!v12)
  {
    v25 = *(a2 + 488);
    v178 = a3;
    if (v25)
    {
      v26 = 0;
      v27 = *(a2 + 480) == 0;
    }

    else
    {
      v28 = *(a2 + 728);
      if (v28)
      {
        v24 += *(v28 + 8);
      }

      v27 = 0;
      v26 = v24 != 0;
    }

    LODWORD(v191) = 0;
    v29 = MEMORY[0x1E695E480];
    if (!v26 && !v27)
    {
LABEL_37:
      OUTLINED_FUNCTION_107_3();
      if ((*(a4 + 52) & 4) != 0)
      {
        OUTLINED_FUNCTION_55_16();
        if (v31 == v32)
        {
          v42 = 0;
          v43 = a4 + 4 * kPerSampleInfo_FlagsIndex[v41] + 56;
          v44 = 4 * kPerSampleInfo_SizeInInt32s[v41];
          do
          {
            if (v42 || (v45 = a4 + 48, !*(a4 + 44)))
            {
              v45 = v43;
            }

            if ((*(v45 + 1) & 1) == 0)
            {
              OUTLINED_FUNCTION_34_19();
              OUTLINED_FUNCTION_21_25();
              v40 = *(a4 + 40);
            }

            ++v42;
            v43 += v44;
          }

          while (v42 < v40);
        }
      }

      else
      {
        OUTLINED_FUNCTION_55_16();
        if (v31 == v32)
        {
          v33 = 0;
          while (v33 || !*(a4 + 44))
          {
            if ((*(v178 + 68) & 0x10000) == 0)
            {
              goto LABEL_42;
            }

LABEL_43:
            if (++v33 >= v30)
            {
              goto LABEL_92;
            }
          }

          if ((bswap32(*(a4 + 48)) & 0x10000) != 0)
          {
            goto LABEL_43;
          }

LABEL_42:
          OUTLINED_FUNCTION_34_19();
          OUTLINED_FUNCTION_21_25();
          v30 = *(a4 + 40);
          goto LABEL_43;
        }
      }

LABEL_92:
      if (*(a2 + 536))
      {
        v55 = v178;
      }

      else
      {
        if ((*(a4 + 52) & 4) != 0)
        {
          OUTLINED_FUNCTION_55_16();
          v55 = v178;
          if (v31 != v32)
          {
            goto LABEL_120;
          }

          v66 = 0;
          v67 = kPerSampleInfo_SizeInInt32s[v65];
          v68 = a4 + 4 * kPerSampleInfo_FlagsIndex[v65] + 56;
          v69 = 4 * v67;
          while (1)
          {
            if (v66 || (v70 = (a4 + 48), !*(a4 + 44)))
            {
              v70 = v68;
            }

            if ((*v70 & 0xF007) != 0)
            {
              break;
            }

            ++v66;
            v68 += v69;
            if (v64 == v66)
            {
              goto LABEL_120;
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_55_16();
          v55 = v178;
          if (v31 != v32)
          {
            goto LABEL_120;
          }

          v58 = 0;
          while (1)
          {
            v59 = v58 || !*(a4 + 44) ? *(v178 + 68) : bswap32(*(a4 + 48));
            if ((v59 & 0x7F00000) != 0)
            {
              break;
            }

            if (v57 == ++v58)
            {
              goto LABEL_120;
            }
          }
        }

        if (v14 >= 1)
        {
          v122 = MEMORY[0x19A8CC720](*v29, (v14 + 1), 1743927155, 0);
          bzero(v122, (v14 + 1));
          v55 = v178;
          OUTLINED_FUNCTION_156_0();
          CMBlockBufferCreateWithMemoryBlock(v123, v124, v125, v126, v127, v128, (v14 + 1), 0, (a2 + 536));
          *(a2 + 528) = v14 + 1;
        }
      }

      MakeTableReadyToWrite((a2 + 536), (a2 + 544));
      if ((*(a4 + 52) & 4) != 0)
      {
        OUTLINED_FUNCTION_76_10();
        if (v31 == v32)
        {
          v61 = 0;
          v62 = a4 + 4 * kPerSampleInfo_FlagsIndex[v60] + 56;
          v63 = 4 * kPerSampleInfo_SizeInInt32s[v60];
          do
          {
            OUTLINED_FUNCTION_63_11();
            OUTLINED_FUNCTION_31_20();
            ++v61;
            v62 += v63;
          }

          while (v61 < *(a4 + 40));
        }
      }

      else
      {
        OUTLINED_FUNCTION_55_16();
        if (v31 == v32)
        {
          v56 = 0;
          do
          {
            OUTLINED_FUNCTION_63_11();
            OUTLINED_FUNCTION_31_20();
            ++v56;
          }

          while (v56 < *(a4 + 40));
        }
      }

LABEL_120:
      v190 = 0;
      v191 = 0;
      MakeReadyToWrite_stts(a2);
      v79 = *(a2 + 408);
      if (v79)
      {
        v80 = v79 - 1;
        v81 = OUTLINED_FUNCTION_96_4(v71, v72, v73, v74, v75, v76, v77, v78, blockBufferOut, v168, v172, v178, 0);
        v82 = bswap32(destinationb);
        OUTLINED_FUNCTION_96_4(v81, v83, v84, v85, v86, v87, v88, v89, blockBufferOutb, v170, v174, v179, 0);
        LODWORD(v90) = bswap32(destination_4a);
      }

      else
      {
        v82 = 0;
        v80 = 0;
        LODWORD(v90) = -1;
      }

      if (*(a4 + 52))
      {
        OUTLINED_FUNCTION_76_10();
        if (v31 == v32)
        {
          v94 = 0;
          v95 = (a4 + 56);
          v96 = 4 * kPerSampleInfo_SizeInInt32s[v93];
          do
          {
            v91 = bswap32(*v95);
            if (v90 == v91)
            {
              ++v82;
              v91 = v90;
            }

            else
            {
              if (v82)
              {
                v190 = _byteswap_uint64(__PAIR64__(v82, v90));
                if (*(*(CMBaseObjectGetVTable() + 16) + 16))
                {
                  v97 = OUTLINED_FUNCTION_85_5();
                  v98(v97);
                }

                ++v80;
                v92 = *(a4 + 40);
              }

              v82 = 1;
            }

            ++v94;
            v95 = (v95 + v96);
            v90 = v91;
          }

          while (v94 < v92);
LABEL_138:
          if (!v82)
          {
            goto LABEL_144;
          }

          goto LABEL_139;
        }
      }

      else
      {
        LODWORD(v91) = *(v55 + 60);
        if (v90 != v91)
        {
          if (v82)
          {
            ++v80;
          }

          v82 = *(a4 + 40);
          if (!v82)
          {
LABEL_144:
            *(a2 + 408) = v80 + 1;
            v101 = *(a2 + 88);
            v102 = *(a2 + 104);
            v103 = *(a2 + 224);
            *(a4 + 24) = v103;
            v104 = *(a4 + 52);
            if ((v104 & 8) != 0)
            {
              v107 = *(a4 + 40);
              v105 = v172;
              if (v107)
              {
                v108 = 0;
                v106 = 0;
                v109 = kPerSampleInfo_CompTimeOffIndex[v104];
                v110 = *(v178 + 60);
                v111 = (a4 + 56);
                v112 = 4 * kPerSampleInfo_SizeInInt32s[v104];
                do
                {
                  if (v104)
                  {
                    v110 = bswap32(*v111);
                  }

                  v113 = v111[v109];
                  v114 = bswap32(v113);
                  if (v113)
                  {
                    if (v114 > *(a2 + 112))
                    {
                      *(a2 + 112) = v114;
                    }

                    if (v114 < *(a2 + 116))
                    {
                      *(a2 + 116) = v114;
                    }

                    v108 = 1;
                  }

                  v115 = v103 + v114;
                  if (v115 < v101)
                  {
                    v101 = v115;
                  }

                  v116 = v115 + v110;
                  if (v116 > v102)
                  {
                    v102 = v116;
                  }

                  v103 += v110;
                  v106 += v110;
                  v111 = (v111 + v112);
                  --v107;
                }

                while (v107);
                v117 = v108 != 0;
              }

              else
              {
                v106 = 0;
                v117 = 0;
              }

              v103 = v101;
            }

            else
            {
              v105 = v172;
              if (v104)
              {
                v118 = *(a4 + 40);
                if (v118)
                {
                  v106 = 0;
                  v119 = kPerSampleInfo_SizeInInt32s[v104];
                  v120 = (a4 + 56);
                  v121 = 4 * v119;
                  do
                  {
                    v106 += bswap32(*v120);
                    v120 = (v120 + v121);
                    --v118;
                  }

                  while (v118);
                }

                else
                {
                  v106 = 0;
                }
              }

              else
              {
                v106 = *(v178 + 60) * *(a4 + 40);
              }

              v117 = 0;
              v102 = v106 + v103;
            }

            MovieTrackAddRunContributionToEditSegmentArray(v105, a2, v103, v102);
            *(a2 + 88) = v103;
            *(a2 + 104) = v102;
            *(a2 + 224) += v106;
            v129 = *(a2 + 16);
            *(a2 + 16) = v129 | 2;
            if (*(a2 + 922))
            {
              OUTLINED_FUNCTION_30_19(v129);
            }

            UpdateDurationsForEditSegmentChange(v105, a2);
            v190 = 0;
            v191 = 0;
            MakeReadyToWrite_ctts(a2);
            v138 = *(a2 + 456);
            if (v138)
            {
              v139 = v138 - 1;
              v140 = OUTLINED_FUNCTION_94_5(v130, v131, v132, v133, v134, v135, v136, v137, blockBufferOut, v168, v172, v178, 0);
              v14 = bswap32(destinationc);
              OUTLINED_FUNCTION_94_5(v140, v141, v142, v143, v144, v145, v146, v147, blockBufferOutc, v171, v175, v180, 0);
              LODWORD(v148) = bswap32(destination_4b);
              goto LABEL_183;
            }

            if (v14 < 1)
            {
              v14 = 0;
            }

            else
            {
              v191 = bswap32(v14);
              v148 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (!v148)
              {
                v139 = 0;
LABEL_183:
                v151 = !v117;
                if ((*(a4 + 52) & 8) == 0)
                {
                  v151 = 1;
                }

                if (v151)
                {
                  if (v148)
                  {
                    v14 = *(a4 + 40);
                  }

                  else
                  {
                    v14 += *(a4 + 40);
                  }

                  if (v148)
                  {
                    ++v139;
                  }

                  LODWORD(v158) = 0;
                }

                else
                {
                  OUTLINED_FUNCTION_76_10();
                  if (v31 != v32)
                  {
                    LODWORD(v158) = v152;
                    if (v14)
                    {
LABEL_204:
                      v191 = _byteswap_uint64(__PAIR64__(v14, v158));
                      v161 = *(a2 + 472);
                      v162 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                      if (v162)
                      {
                        v162(v161, 8, 8 * v139, &v191, &v190);
                      }
                    }

LABEL_207:
                    v12 = 0;
                    *(a2 + 456) = v139 + 1;
                    return v12;
                  }

                  v155 = 0;
                  v156 = (a4 + 4 * kPerSampleInfo_CompTimeOffIndex[v154] + 56);
                  v157 = 4 * kPerSampleInfo_SizeInInt32s[v154];
                  do
                  {
                    v158 = bswap32(*v156);
                    if (v152 == v158)
                    {
                      ++v14;
                      v158 = v152;
                    }

                    else
                    {
                      if (v14)
                      {
                        v191 = _byteswap_uint64(__PAIR64__(v14, v152));
                        if (*(*(CMBaseObjectGetVTable() + 16) + 16))
                        {
                          v159 = OUTLINED_FUNCTION_77_8();
                          v160(v159);
                        }

                        ++v139;
                        v153 = *(a4 + 40);
                      }

                      v14 = 1;
                    }

                    ++v155;
                    v156 = (v156 + v157);
                    v152 = v158;
                  }

                  while (v155 < v153);
                }

                if (v14)
                {
                  goto LABEL_204;
                }

                goto LABEL_207;
              }

              v149 = OUTLINED_FUNCTION_77_8();
              v150(v149);
            }

            v139 = 0;
            LODWORD(v148) = 0;
            goto LABEL_183;
          }

LABEL_139:
          v190 = _byteswap_uint64(__PAIR64__(v82, v91));
          if (*(*(CMBaseObjectGetVTable() + 16) + 16))
          {
            v99 = OUTLINED_FUNCTION_85_5();
            v100(v99);
          }

          goto LABEL_144;
        }

        v82 += *(a4 + 40);
      }

      LODWORD(v91) = v90;
      goto LABEL_138;
    }

    v34 = *(a4 + 52);
    if ((v34 & 4) != 0)
    {
      if (v23 < 1)
      {
        goto LABEL_90;
      }

      v35 = 0;
      v36 = 0;
      v46 = 0;
      v47 = kPerSampleInfo_SizeInInt32s[v34];
      v48 = a4 + 4 * kPerSampleInfo_FlagsIndex[v34] + 56;
      v49 = 4 * v47;
      v38 = 1;
      do
      {
        if (v46 || (v50 = a4 + 48, !*(a4 + 44)))
        {
          v50 = v48;
        }

        v51 = *(v50 + 1);
        v38 &= v51 << 31 >> 31;
        if (v51)
        {
          v35 = 1;
        }

        else
        {
          v36 = 1;
        }

        ++v46;
        v48 += v49;
      }

      while (v23 != v46);
    }

    else
    {
      if (v23 < 1)
      {
        goto LABEL_90;
      }

      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 1;
      do
      {
        if (v37 || !*(a4 + 44))
        {
          v39 = *(v178 + 68);
        }

        else
        {
          v39 = bswap32(*(a4 + 48));
        }

        v38 &= (v39 << 15) >> 31;
        if ((v39 & 0x10000) != 0)
        {
          v35 = 1;
        }

        else
        {
          v36 = 1;
        }

        ++v37;
      }

      while (v23 != v37);
    }

    if (v35)
    {
      v52 = v36 != 0;
    }

    else
    {
      v26 = 0;
      v52 = 0;
    }

    if (v26)
    {
      OUTLINED_FUNCTION_107_3();
      if (v14 >= 1)
      {
        v53 = 1;
        v54 = v14;
        do
        {
          OUTLINED_FUNCTION_34_19();
          OUTLINED_FUNCTION_21_25();
          ++v53;
          --v54;
        }

        while (v54);
      }

      if (v52)
      {
        goto LABEL_37;
      }
    }

    else if (v52)
    {
      goto LABEL_37;
    }

    if (!v38)
    {
      goto LABEL_92;
    }

    v25 = *(a2 + 488);
LABEL_90:
    if (!v25)
    {
      CMBlockBufferCreateEmpty(*v29, 0, 0, (a2 + 488));
    }

    goto LABEL_92;
  }

  return v12;
}

__n128 MovieTrackExtendMediaDecodeDurationToDisplayEndTime()
{
  OUTLINED_FUNCTION_471();
  v3 = *(v2 + 232);
  v18 = **&MEMORY[0x1E6960C70];
  v17 = v18;
  if (!MovieTrackGetDisplayTimeRange(v4, v2, 0, &v18))
  {
    MovieTrackGetMediaDuration(v1, &v17);
    lhs = v18;
    rhs = v17;
    CMTimeSubtract(&time1, &lhs, &rhs);
    lhs = time1;
    CMTimeConvertScale(&time1, &lhs, v3, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    result.n128_u64[0] = *&time1.timescale;
    v6 = MEMORY[0x1E6960CC0];
    if ((time1.flags & 0x1D) != 1 || (value = time1.value, epoch = time1.epoch, v12 = result, lhs = **&MEMORY[0x1E6960CC0], v9 = CMTimeCompare(&time1, &lhs), result = v12, v9 < 0))
    {
      value = *v6;
      result.n128_u64[0] = v6[1];
      epoch = v6[2];
    }

    if (value >= 1)
    {
      v13 = result;
      v10 = OUTLINED_FUNCTION_266();
      MovieHeaderExtendLastSampleDecodeDuration(v10);
      if (v0)
      {
        result = v13;
        if (!v11)
        {
          goto LABEL_7;
        }
      }
    }

    else if (v0)
    {
LABEL_7:
      *v0 = value;
      v0[1] = result.n128_u64[0];
      v0[2] = epoch;
    }
  }

  return result;
}

void MovieHeaderExtendLastSampleDecodeDuration(uint64_t a1)
{
  v3 = *(a1 + 408);
  if (v3)
  {
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_71_8(*(v4 + 416), v5, v6, v7, v8, v9, v10, v11, v50, 0);
    v12 = destination;
    OUTLINED_FUNCTION_71_8(*(v1 + 416), v13, v14, v15, v16, v17, v18, v19, v51, 0);
    if (!v12 || (v20 = v2 + bswap32(destination_4), MakeReadyToWrite_stts(v1), v20 != v20))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      FigSignalErrorAtGM();
      goto LABEL_21;
    }

    if (v12 == 0x1000000)
    {
      if (v3 == 1 || (v29 = 8 * v3 - 16, v30 = OUTLINED_FUNCTION_26_24(v21, v22, v23, v24, v25, v26, v27, v28, v52, 0), v20 != bswap32(destination_4a)))
      {
        OUTLINED_FUNCTION_78_6();
        if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
        {
          goto LABEL_21;
        }

        v47 = OUTLINED_FUNCTION_20_26();
        if (v48(v47))
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      OUTLINED_FUNCTION_26_24(v30, v31, v32, v33, v34, v35, v36, v37, v53, 0);
      v38 = *(v1 + 424);
      if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_44_18();
      if (v39(v38, 8, v29))
      {
        goto LABEL_21;
      }

      if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
      {
        goto LABEL_21;
      }

      v40 = OUTLINED_FUNCTION_20_26();
      if (v41(v40))
      {
        goto LABEL_21;
      }

      v42 = -1;
    }

    else
    {
      if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
      {
        goto LABEL_21;
      }

      v43 = OUTLINED_FUNCTION_20_26();
      if (v44(v43))
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_78_6();
      v45 = *(v1 + 424);
      if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_44_18();
      if (v46(v45, 8))
      {
        goto LABEL_21;
      }

      v42 = 1;
    }

    *(v1 + 408) += v42;
LABEL_20:
    *(v1 + 224) += v2;
LABEL_21:
    OUTLINED_FUNCTION_90_4();
    return;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_90_4();

  FigSignalErrorAtGM();
}

void MovieTrackAppendSampleInformation(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, CMTime *a8, _BYTE *a9, uint64_t *a10, const __CFArray *a11, uint64_t a12, CMTime *a13, CMTime *a14)
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v20 = a13;
  v19 = a14;
  v21 = a11;
  v22 = a9;
  v324 = 0;
  value = 0;
  v23 = *(a2 + 232);
  v24 = *(a2 + 768);
  if (v24)
  {
    v25 = *(a2 + 776) == 0;
  }

  else
  {
    v25 = 0;
  }

  if (a6 != a6 || a7 != a7 || a9 != a9)
  {
    goto LABEL_54;
  }

  if (a7 >= 1)
  {
    p_timescale = &a8[1].timescale;
    v27 = a7;
    while (v23 == *(p_timescale - 6) && v23 == *p_timescale && v23 == p_timescale[6])
    {
      p_timescale += 18;
      if (!--v27)
      {
        goto LABEL_13;
      }
    }

LABEL_54:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_114();

    FigSignalErrorAtGM();
    return;
  }

LABEL_13:
  if (v25)
  {
    if (!v24)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  HIDWORD(v264) = v25;
  HIDWORD(v307) = a3;
  v285 = a4;
  v328 = 0;
  memcpy(__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  v326 = 0;
  if (MovieTrackGetMediaTypeForSampleDescriptionID(a2, a5, &v328))
  {
    return;
  }

  LODWORD(v307) = v328;
  v280 = v16;
  HIDWORD(v296) = a5;
  v36 = HIDWORD(v307);
  v37 = a11;
  if (v328 == 1936684398 && *(a2 + 240))
  {
    v38 = *(a2 + 244);
    v39 = *(a2 + 248);
    memcpy(__dst, v14, sizeof(__dst));
    v40 = *a10 / v39;
    v326 = v40;
    if (a9 != 1 || v40 != 1)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_114();
      v87 = FigSignalErrorAtGM();
LABEL_247:
      v16 = v280;
      a4 = v285;
      a5 = HIDWORD(v296);
      a3 = HIDWORD(v307);
      v21 = a11;
      goto LABEL_248;
    }

    v41 = __dst[0].value / v38;
    __dst[0].value /= v38;
    a5 = HIDWORD(v296);
    v36 = HIDWORD(v307);
    v37 = a11;
    if (v15 != 1 || v41 != 1)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_114();
      v87 = FigSignalErrorAtGM();
      v21 = a11;
      a3 = HIDWORD(v307);
      v16 = v280;
      a4 = v285;
LABEL_248:
      v25 = HIDWORD(v264);
      if (v87)
      {
        return;
      }

      v24 = *(a2 + 768);
      if (!v24)
      {
        goto LABEL_20;
      }

LABEL_15:
      p_value = &value;
      if (!v25)
      {
        p_value = 0;
      }

      v29 = &v324;
      if (!v25)
      {
        v29 = 0;
      }

      if (TrackFragmentBuilderAppendSampleInformation(v24, a3, a4, a5, v16, v15, v14, v22, a10, v21, a12, p_value, v29))
      {
        return;
      }

LABEL_20:
      if (v20)
      {
        CMTimeMake(__dst, value, v23);
        *v20 = __dst[0];
      }

      if (v19)
      {
        CMTimeMake(__dst, v324, v23);
        *v19 = __dst[0];
      }

      v30 = *(a2 + 16);
      *(a2 + 16) = v30 | 0x2001;
      if (*(a2 + 922))
      {
        OUTLINED_FUNCTION_30_19(v30);
      }

      return;
    }

    v16 = (v38 * v280);
    v275 = __dst;
    v322 = &v326;
  }

  else
  {
    v322 = a10;
    v275 = v14;
  }

  *v312 = v16;
  v317 = a9;
  v290 = v14;
  v301 = v15;
  v269 = a13;
  if (v36)
  {
    rhs.value = 0;
    v42 = *(a2 + 432);
    if (v42 < 1)
    {
      v47 = 0;
      v46 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v48 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_48_15();
      OUTLINED_FUNCTION_19_33();
      v43 = destination.value;
      OUTLINED_FUNCTION_48_15();
      OUTLINED_FUNCTION_19_33();
      value_high = HIDWORD(destination.value);
      OUTLINED_FUNCTION_48_15();
      OUTLINED_FUNCTION_19_33();
      v45 = bswap32(v43);
      v46 = bswap32(value_high);
      v47 = bswap32(destination.timescale);
      v48 = v45 + 1;
      v49 = v42 - 1;
      if (v42 == 1)
      {
        v50 = 0;
        v51 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_48_15();
        OUTLINED_FUNCTION_19_33();
        v50 = bswap32(destination.timescale);
        OUTLINED_FUNCTION_48_15();
        OUTLINED_FUNCTION_19_33();
        v51 = bswap32(HIDWORD(destination.value));
      }
    }

    v52 = v50 == v47 && v51 == v46;
    if (v52)
    {
      v53 = v49;
    }

    else
    {
      v53 = v49 + 1;
    }

    MakeTableReadyToWrite((a2 + 440), (a2 + 448));
    lhs.value = bswap32(v48);
    lhs.timescale = bswap32(HIDWORD(v296));
    v54 = *(a2 + 448);
    v55 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v55 || v55(v54, 12, 12 * v53, &lhs, &rhs))
    {
      return;
    }

    *(a2 + 432) = v53 + 1;
    lhs.value = 0;
    v56 = *(a2 + 392);
    v14 = v290;
    LODWORD(v15) = v301;
    if (v285 <= 4000000000)
    {
      if (!v56)
      {
        MakeTableReadyToWrite((a2 + 368), (a2 + 376));
        LODWORD(rhs.value) = bswap32(v285);
        if (CMByteStreamAppend())
        {
          return;
        }

        ++*(a2 + 360);
        v57 = v285;
        goto LABEL_60;
      }
    }

    else if (!v56)
    {
      UpgradeTo64BitChunkOffsets(a2);
    }

    MakeTableReadyToWrite((a2 + 392), (a2 + 400));
    destination.value = bswap64(v285);
    if (CMByteStreamAppend())
    {
      return;
    }

    ++*(a2 + 384);
    v57 = destination.value;
LABEL_60:
    v37 = a11;
    if (*(a2 + 304) > v57)
    {
      v57 = *(a2 + 304);
    }

    *(a2 + 304) = v57;
  }

  if (v15 == 1)
  {
    if (AddSampleToTimeToSampleTable(a2, v312[0], v275->value, v31, v32, v33, v34, v35, v228, v230, v232, v238, v244, v250, v257, v264, a13, v275, v280, v285))
    {
      return;
    }

    OUTLINED_FUNCTION_88_7();
    v37 = a11;
    if (v52)
    {
      memset(&destination, 0, sizeof(destination));
      lhs = v275[1];
      rhs = v275[2];
      CMTimeSubtract(&destination, &lhs, &rhs);
      v227 = AddSampleToCompositionOffsetTable(a2, v312[0], destination.value, v222, v223, v224, v225, v226, v229, v231, v232, v238, v244, v251, v258, v264, v269, v275, v280, v285);
      v37 = a11;
      if (v227)
      {
        return;
      }
    }
  }

  else if (v15 >= 1)
  {
    v58 = v301;
    v59 = v275 + 1;
    do
    {
      if (AddSampleToTimeToSampleTable(a2, 1, v59[-1].value, v31, v32, v33, v34, v35, v228, v230, v232, v238, v244, v250, v257, v264, v269, v275, v280, v285))
      {
        return;
      }

      v37 = a11;
      if (v307 == 1986618469)
      {
        memset(&destination, 0, sizeof(destination));
        v60 = *&v59->value;
        lhs.epoch = v59->epoch;
        *&lhs.value = v60;
        v61 = *&v59[1].value;
        rhs.epoch = v59[1].epoch;
        *&rhs.value = v61;
        CMTimeSubtract(&destination, &lhs, &rhs);
        v67 = AddSampleToCompositionOffsetTable(a2, 1, destination.value, v62, v63, v64, v65, v66, v228, v230, v232, v238, v244, v250, v257, v264, v269, v275, v280, v285);
        v37 = a11;
        if (v67)
        {
          return;
        }
      }

      v59 += 3;
      --v58;
    }

    while (v58);
  }

  v68 = *(a2 + 292);
  LODWORD(v69) = *(a2 + 288);
  v70 = *(a2 + 728);
  if (v70)
  {
    LODWORD(v69) = *(v70 + 8) + v69;
  }

  v22 = a9;
  v259 = a14;
  if (a9 != 1 || v69)
  {
    if (a9 == 1 && *v322 == v68)
    {
      goto LABEL_119;
    }

    LODWORD(lhs.value) = 0;
    destination.value = 0;
    if (!(*(a2 + 608))(a2))
    {
      OUTLINED_FUNCTION_98_3();
      if (v69)
      {
        LODWORD(lhs.value) = bswap32(v68);
        if (v69 >= 1)
        {
          v69 = v69;
          while (1)
          {
            v72 = OUTLINED_FUNCTION_41_17();
            if (v72)
            {
              break;
            }

            if (!--v69)
            {
              goto LABEL_90;
            }
          }

LABEL_277:
          v37 = a11;
          v14 = v290;
          v22 = a9;
          goto LABEL_278;
        }

LABEL_90:
        *(a2 + 316) = 0;
        *(a2 + 292) = 0;
        if (v68 < 0x10000)
        {
          if (v68 <= 255)
          {
            if (v68 <= 15)
            {
              v73 = 4;
            }

            else
            {
              v73 = 8;
            }
          }

          else
          {
            v73 = 16;
          }
        }

        else
        {
          v73 = 32;
        }

        if (*(a2 + 296) > v73)
        {
          v73 = *(a2 + 296);
        }

        *(a2 + 296) = v73;
      }
    }

    v37 = a11;
    if (v312[0] < 1)
    {
LABEL_118:
      v14 = v290;
      v22 = a9;
      goto LABEL_119;
    }

    v74 = 0;
    while (1)
    {
      v75 = a9 == 1 ? 0 : v74;
      v76 = v322[v75];
      if (v76 >> 31)
      {
        break;
      }

      OUTLINED_FUNCTION_98_3();
      LODWORD(lhs.value) = bswap32(v76);
      v72 = OUTLINED_FUNCTION_41_17();
      if (v72)
      {
        goto LABEL_277;
      }

      if (v76 <= 0xF)
      {
        v77 = 4;
      }

      else
      {
        v77 = 8;
      }

      if (v76 > 0xFF)
      {
        v77 = 16;
      }

      if (v76 >> 16)
      {
        v78 = 32;
      }

      else
      {
        v78 = v77;
      }

      if (*(a2 + 296) > v78)
      {
        v78 = *(a2 + 296);
      }

      *(a2 + 296) = v78;
      ++v74;
      v37 = a11;
      if (v312[0] == v74)
      {
        goto LABEL_118;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_114();
    v72 = FigSignalErrorAtGM();
    goto LABEL_277;
  }

  v71 = *v322;
  if (*v322 >> 31)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_114();
    v72 = FigSignalErrorAtGM();
    v37 = a11;
LABEL_278:
    v79 = v312[0];
    if (v72)
    {
      return;
    }

    goto LABEL_120;
  }

  *(a2 + 316) = v71;
  *(a2 + 292) = v71;
LABEL_119:
  v79 = v312[0];
  *(a2 + 312) += v312[0];
  *(a2 + 840) = 0;
  *(a2 + 16) |= 0x2000uLL;
LABEL_120:
  v80 = *(a2 + 288);
  v81 = *(a2 + 728);
  if (v81)
  {
    v80 += *(v81 + 8);
  }

  v252 = (v79 - 1);
  if (v79 < 1)
  {
    goto LABEL_155;
  }

  v82 = 0;
  v323 = v80;
  while (1)
  {
    v333[0] = 0;
    v332 = 0;
    v83 = v82 + v323 + 1;
    if (!v37)
    {
      v86 = *(a2 + 488);
      destination.value = 0;
      if (!v86)
      {
        goto LABEL_133;
      }

      goto LABEL_131;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v37, v82);
    if (ValueAtIndex)
    {
      FigMovieGetSampleDependencyFlagsFromSampleAttachments(ValueAtIndex, v333 + 1, v333, &v332);
    }

    v85 = *(a2 + 488);
    destination.value = 0;
    if (!v85)
    {
      break;
    }

    if (LOBYTE(v333[0]))
    {
      goto LABEL_133;
    }

LABEL_131:
    LODWORD(lhs.value) = bswap32(v83);
    OUTLINED_FUNCTION_107_3();
    v87 = OUTLINED_FUNCTION_41_17();
    if (v87)
    {
      goto LABEL_154;
    }

    OUTLINED_FUNCTION_21_25();
LABEL_133:
    if (v332)
    {
      LODWORD(lhs.value) = bswap32(v83);
      destination.value = 0;
      MakeTableReadyToWrite((a2 + 512), (a2 + 520));
      v87 = OUTLINED_FUNCTION_41_17();
      if (v87)
      {
        goto LABEL_154;
      }

      ++*(a2 + 504);
    }

    LOBYTE(lhs.value) = HIBYTE(v333[0]);
    destination.value = 0;
    if (!*(a2 + 536))
    {
      if (!HIBYTE(v333[0]))
      {
        goto LABEL_144;
      }

      LOBYTE(rhs.value) = 0;
      MakeTableReadyToWrite((a2 + 536), (a2 + 544));
      v88 = v80;
      if (((v82 + v323 + 1) & 0xFFFFFFFE) != 0)
      {
        do
        {
          v87 = CMByteStreamAppend();
          if (v87)
          {
            goto LABEL_153;
          }

          OUTLINED_FUNCTION_31_20();
        }

        while (--v88);
      }

      v22 = a9;
    }

    MakeTableReadyToWrite((a2 + 536), (a2 + 544));
    v87 = CMByteStreamAppend();
    if (v87)
    {
      goto LABEL_154;
    }

    OUTLINED_FUNCTION_31_20();
LABEL_144:
    v37 = a11;
    ++v82;
    ++v80;
    if (v82 == v312[0])
    {
      goto LABEL_155;
    }
  }

  if (!LOBYTE(v333[0]))
  {
    goto LABEL_133;
  }

  OUTLINED_FUNCTION_107_3();
  if (((v82 + v323 + 1) & 0xFFFFFFFE) == 0)
  {
    goto LABEL_133;
  }

  v89 = 1;
  v90 = v80;
  while (1)
  {
    LODWORD(lhs.value) = bswap32(v89);
    v87 = OUTLINED_FUNCTION_41_17();
    if (v87)
    {
      break;
    }

    OUTLINED_FUNCTION_21_25();
    ++v89;
    if (!--v90)
    {
      v14 = v290;
      v22 = a9;
      goto LABEL_133;
    }
  }

  v14 = v290;
LABEL_153:
  v22 = a9;
LABEL_154:
  v21 = a11;
  if (v87 << 16)
  {
    v87 = v87;
    v19 = a14;
    v20 = v269;
    v15 = v301;
    v16 = v280;
    a4 = v285;
    a5 = HIDWORD(v296);
    a3 = HIDWORD(v307);
    goto LABEL_248;
  }

LABEL_155:
  OUTLINED_FUNCTION_88_7();
  if (v52)
  {
    LOBYTE(destination.value) = 0;
    v20 = v269;
    v15 = v301;
    if (v92)
    {
      if (v312[0] > 0)
      {
        while (1)
        {
          LOBYTE(lhs.value) = 0;
          LOBYTE(rhs.value) = 0;
          v122 = OUTLINED_FUNCTION_106_2();
          if (FigMovieGetVideoSyncSampleEntryFromSampleAttachment(v122, &lhs, &rhs))
          {
            break;
          }

          OUTLINED_FUNCTION_101_3();
          OUTLINED_FUNCTION_57_10();
          OUTLINED_FUNCTION_12_44();
          OUTLINED_FUNCTION_54_17();
          AddSampleGroupForGroupType(v123, v124, v125, v126, v127, v128, v129, 1, &lhs, &destination, &destination >> 32, &destination >> 48, &destination >> 56, v232, v238, v244, v252, v259, v264, v269, v275, v280, v285, v290, v296, v301, v307, *v312, v317);
          if (v130)
          {
            break;
          }

          if (LOBYTE(destination.value))
          {
            *(a2 + 16) |= 0x5000000uLL;
          }

          OUTLINED_FUNCTION_47_15();
          if (v52)
          {
            LOBYTE(lhs.value) = 0;
            while (1)
            {
              memset(&destination, 0, 20);
              LOBYTE(rhs.value) = 0;
              v131 = OUTLINED_FUNCTION_106_2();
              if (FigMovieGetVideoTemporalLayerEntryFromSampleAttachment(v131, &destination, &rhs))
              {
                break;
              }

              MovieSampleGroupTypeSpecMakeBasic(1953719148);
              OUTLINED_FUNCTION_57_10();
              OUTLINED_FUNCTION_13_37();
              OUTLINED_FUNCTION_54_17();
              AddSampleGroupForGroupType(v132, v133, v134, v135, v136, v137, v138, 20, &destination, &lhs, &lhs >> 32, &lhs >> 48, &lhs >> 56, v232, v238, v244, v252, v259, v264, v269, v275, v280, v285, v290, v296, v301, v307, *v312, v317);
              if (v139)
              {
                break;
              }

              if (LOBYTE(lhs.value))
              {
                *(a2 + 16) |= 0x5000000uLL;
              }

              OUTLINED_FUNCTION_47_15();
              if (v52)
              {
                LOBYTE(destination.value) = 0;
                v15 = v301;
                do
                {
                  LOBYTE(lhs.value) = 0;
                  OUTLINED_FUNCTION_106_2();
                  FigCFDictionaryGetBooleanIfPresent();
                  OUTLINED_FUNCTION_100_5();
                  OUTLINED_FUNCTION_13_37();
                  OUTLINED_FUNCTION_54_17();
                  AddSampleGroupForGroupType(v140, v141, v142, v143, v144, v145, v146, 0, 0, &destination, &destination >> 32, &destination >> 48, &destination >> 56, v232, v238, v244, v252, v259, v264, v269, v275, v280, v285, v290, v296, v301, v307, *v312, v317);
                  if (v147 || !LOBYTE(destination.value))
                  {
                    if (v147)
                    {
                      return;
                    }
                  }

                  else
                  {
                    *(a2 + 16) |= 0x5000000uLL;
                  }

                  OUTLINED_FUNCTION_47_15();
                }

                while (!v52);
                LOBYTE(destination.value) = 0;
                do
                {
                  LOBYTE(lhs.value) = 0;
                  OUTLINED_FUNCTION_106_2();
                  FigCFDictionaryGetBooleanIfPresent();
                  OUTLINED_FUNCTION_99_4();
                  OUTLINED_FUNCTION_13_37();
                  OUTLINED_FUNCTION_54_17();
                  AddSampleGroupForGroupType(v148, v149, v150, v151, v152, v153, v154, 0, 0, &destination, &destination >> 32, &destination >> 48, &destination >> 56, v232, v238, v244, v252, v259, v264, v269, v275, v280, v285, v290, v296, v301, v307, *v312, v317);
                  if (v121 || !LOBYTE(destination.value))
                  {
                    if (v121)
                    {
                      goto LABEL_216;
                    }
                  }

                  else
                  {
                    *(a2 + 16) |= 0x5000000uLL;
                  }

                  OUTLINED_FUNCTION_47_15();
                }

                while (!v52);
                goto LABEL_215;
              }
            }

            return;
          }
        }

        return;
      }

LABEL_215:
      v121 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_101_3();
      OUTLINED_FUNCTION_37_21();
      v176 = OUTLINED_FUNCTION_9_46();
      AddSampleGroupForGroupType(v176, v177, v178, v179, v180, v181, 0, 0, 0, &destination, &destination >> 32, &destination >> 48, &destination >> 56, v232, v238, v244, v252, a14, v264, v269, v275, v280, v285, v290, v296, v301, v307, *v312, a9);
      if (v182 || !LOBYTE(destination.value))
      {
        if (v182)
        {
          return;
        }
      }

      else
      {
        OUTLINED_FUNCTION_14_41();
      }

      LOBYTE(lhs.value) = 0;
      MovieSampleGroupTypeSpecMakeBasic(1953719148);
      OUTLINED_FUNCTION_37_21();
      v190 = OUTLINED_FUNCTION_13_37();
      OUTLINED_FUNCTION_16_33(v190, v191, v192, v193, v194, v195, v196, v197, 0, &lhs, &lhs >> 32, &lhs >> 48, &lhs >> 56, v234, v240, v246, v253, v260, v265, v271, v276, v281, v286, v292, v297, v303, v308, v313, v318);
      if (v198 || !LOBYTE(lhs.value))
      {
        if (v198)
        {
          return;
        }
      }

      else
      {
        OUTLINED_FUNCTION_14_41();
      }

      LOBYTE(destination.value) = 0;
      OUTLINED_FUNCTION_100_5();
      OUTLINED_FUNCTION_37_21();
      v199 = OUTLINED_FUNCTION_13_37();
      OUTLINED_FUNCTION_16_33(v199, v200, v201, v202, v203, v204, v205, v206, 0, &destination, &destination >> 32, &destination >> 48, &destination >> 56, v236, v242, v248, v255, v262, v267, v273, v278, v283, v288, v294, v299, v305, v310, v315, v320);
      if (v207 || !LOBYTE(destination.value))
      {
        if (v207)
        {
          return;
        }
      }

      else
      {
        OUTLINED_FUNCTION_14_41();
      }

      LOBYTE(destination.value) = 0;
      OUTLINED_FUNCTION_99_4();
      OUTLINED_FUNCTION_37_21();
      v208 = OUTLINED_FUNCTION_13_37();
      OUTLINED_FUNCTION_16_33(v208, v209, v210, v211, v212, v213, v214, v215, 0, &destination, &destination >> 32, &destination >> 48, &destination >> 56, v237, v243, v249, v256, v263, v268, v274, v279, v284, v289, v295, v300, v306, v311, v316, v321);
      if (!v121 && LOBYTE(destination.value))
      {
        OUTLINED_FUNCTION_14_41();
      }
    }

LABEL_216:
    v19 = v259;
    v93 = v312[0];
    v22 = v317;
    if (v121)
    {
      return;
    }

LABEL_217:
    v155 = *(a2 + 224);
    if (v15 == 1)
    {
      v156 = v275[1].value - v275[2].value;
      v157 = v156 + v155;
      v158 = v156 + v155 + v275->value * v252;
      v159 = v275->value * v93;
      v160 = v158 + v275->value;
      LODWORD(v161) = v156;
    }

    else
    {
      if (v15 < 1)
      {
        v159 = 0;
        LODWORD(v156) = 0x80000000;
        LODWORD(v161) = 0x7FFFFFFF;
        v157 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_238:
        if (v161 >= *(a2 + 116))
        {
          LODWORD(v161) = *(a2 + 116);
        }

        if (v156 <= *(a2 + 112))
        {
          v172 = *(a2 + 112);
        }

        else
        {
          v172 = v156;
        }

        *(a2 + 112) = v172;
        *(a2 + 116) = v161;
        *(a2 + 224) = v159 + v155;
        v324 = v155;
        value = v157;
        lhs.value = 0;
        v173 = 12 * *(a2 + 432);
        OUTLINED_FUNCTION_48_15();
        CMBlockBufferCopyDataBytes(*(a2 + 440), v173 - 12, 0xCuLL, &destination);
        LODWORD(destination.value) = bswap32(bswap32(HIDWORD(destination.value)) + v93);
        v174 = *(a2 + 448);
        v175 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v175)
        {
          v87 = v175(v174, 4, v173 - 8, &destination, &lhs);
          if (!v87)
          {
            *(a2 + 288) += v312[0];
          }
        }

        else
        {
          v87 = -12782;
        }

        goto LABEL_247;
      }

      v159 = 0;
      v162 = v15 & 0x7FFFFFFF;
      v163 = v275 + 1;
      LODWORD(v164) = 0x80000000;
      v158 = 0x8000000000000000;
      v157 = 0x7FFFFFFFFFFFFFFFLL;
      LODWORD(v161) = 0x7FFFFFFF;
      v160 = 0x8000000000000000;
      v165 = *(a2 + 224);
      do
      {
        v166 = v163[-1].value;
        v167 = v163->value - v163[1].value;
        v168 = v167 + v165;
        v165 += v166;
        v159 += v166;
        if (v168 < v157)
        {
          v157 = v168;
        }

        v169 = v168 + v166;
        if (v158 < v168)
        {
          v160 = v169;
        }

        if (v158 <= v168)
        {
          v158 = v168;
        }

        if (v167 < v161)
        {
          v161 = v163->value - v163[1].value;
        }

        if (v167 > v164)
        {
          v164 = v163->value - v163[1].value;
        }

        v163 += 3;
        --v162;
      }

      while (v162);
      LODWORD(v156) = v164;
    }

    v170 = *(a2 + 88);
    v171 = *(a2 + 96);
    if (v157 < v170)
    {
      v170 = v157;
    }

    *(a2 + 88) = v170;
    if (v171 < v158)
    {
      *(a2 + 96) = v158;
      *(a2 + 104) = v160;
    }

    goto LABEL_238;
  }

  v19 = a14;
  v20 = v269;
  v15 = v301;
  v93 = v312[0];
  if (v91 != 1936684398)
  {
    goto LABEL_217;
  }

  LOWORD(destination.value) = 0;
  LOBYTE(lhs.value) = 0;
  LOBYTE(rhs.value) = 0;
  HIBYTE(v333[0]) = 0;
  if (a12)
  {
    if (!FigMovieGetAudioRollRecoveryValueFromSampleBufferAttachment(a12, &destination, &lhs, v333 + 1))
    {
      value_low = LOWORD(destination.value);
      goto LABEL_160;
    }

    return;
  }

  value_low = 0;
LABEL_160:
  LOWORD(destination.value) = __rev16(value_low);
  if (HIBYTE(v333[0]))
  {
    v95 = LOBYTE(lhs.value) == 0;
  }

  else
  {
    v95 = 1;
  }

  v96 = !v95;
  MovieSampleGroupTypeSpecMakeBasic(1919904876);
  OUTLINED_FUNCTION_37_21();
  v97 = OUTLINED_FUNCTION_9_46();
  AddSampleGroupForGroupType(v97, v98, v99, v100, v101, v102, v96, 2, &destination, &rhs, &rhs >> 32, &rhs >> 48, &rhs >> 56, v232, v238, v244, v252, a14, v264, v269, v275, v280, v285, v290, v296, v301, v307, *v312, a9);
  if (LOBYTE(rhs.value))
  {
    *(a2 + 16) |= 0x3000000uLL;
  }

  v104 = a11;
  if (!v103)
  {
    LOBYTE(lhs.value) = 0;
    if (a11)
    {
      if (v312[0] > 0)
      {
        while (1)
        {
          LOWORD(destination.value) = 0;
          LOBYTE(rhs.value) = 0;
          v105 = CFArrayGetValueAtIndex(v104, 0);
          if (FigMovieGetAudioIndependentSampleDecoderRefreshCountFromSampleAttachment(v105, &destination, &rhs))
          {
            break;
          }

          LOWORD(destination.value) = bswap32(LOWORD(destination.value)) >> 16;
          OUTLINED_FUNCTION_103_3();
          OUTLINED_FUNCTION_57_10();
          OUTLINED_FUNCTION_12_44();
          OUTLINED_FUNCTION_54_17();
          AddSampleGroupForGroupType(v106, v107, v108, v109, v110, v111, v112, 2, &destination, &lhs, &lhs >> 32, &lhs >> 48, &lhs >> 56, v233, v239, v245, v252, v259, v264, v270, v275, v280, v285, v291, v296, v302, v307, *v312, v317);
          if (v113)
          {
            break;
          }

          if (LOBYTE(lhs.value))
          {
            *(a2 + 16) |= 0x9000000uLL;
          }

          OUTLINED_FUNCTION_47_15();
          if (v52)
          {
            LOBYTE(lhs.value) = 0;
            do
            {
              destination.value = 0;
              *&destination.timescale = 0;
              SeamUUIDBytesFromSampleAttachmentArray = FigMovieGetSeamUUIDBytesFromSampleAttachmentArray(v104, 0, &destination);
              OUTLINED_FUNCTION_102_3();
              OUTLINED_FUNCTION_37_21();
              OUTLINED_FUNCTION_12_44();
              OUTLINED_FUNCTION_54_17();
              AddSampleGroupForGroupType(v115, v116, v117, v118, v119, v120, SeamUUIDBytesFromSampleAttachmentArray, 16, &destination, &lhs, &lhs >> 32, &lhs >> 48, &lhs >> 56, v233, v239, v245, v252, v259, v264, v270, v275, v280, v285, v291, v296, v302, v307, *v312, v317);
              if (v121 || !LOBYTE(lhs.value))
              {
                if (v121)
                {
                  goto LABEL_185;
                }
              }

              else
              {
                *(a2 + 16) |= 0x11000000uLL;
              }

              OUTLINED_FUNCTION_47_15();
            }

            while (!v52);
            goto LABEL_184;
          }
        }

        return;
      }

LABEL_184:
      v121 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_103_3();
      OUTLINED_FUNCTION_37_21();
      v183 = OUTLINED_FUNCTION_9_46();
      AddSampleGroupForGroupType(v183, v184, v185, v186, v187, v188, 0, 0, 0, &lhs, &lhs >> 32, &lhs >> 48, &lhs >> 56, v233, v239, v245, v252, v259, v264, v270, v275, v280, v285, v291, v296, v302, v307, *v312, v317);
      if (v189 || !LOBYTE(lhs.value))
      {
        if (v189)
        {
          return;
        }
      }

      else
      {
        OUTLINED_FUNCTION_30_19(*(a2 + 16));
      }

      LOBYTE(lhs.value) = 0;
      OUTLINED_FUNCTION_102_3();
      OUTLINED_FUNCTION_37_21();
      v216 = OUTLINED_FUNCTION_9_46();
      AddSampleGroupForGroupType(v216, v217, v218, v219, v220, v221, 0, 0, 0, &lhs, &lhs >> 32, &lhs >> 48, &lhs >> 56, v235, v241, v247, v254, v261, v266, v272, v277, v282, v287, v293, v298, v304, v309, v314, v319);
      if (!v121 && LOBYTE(lhs.value))
      {
        OUTLINED_FUNCTION_30_19(*(a2 + 16));
      }
    }

LABEL_185:
    v15 = v302;
    goto LABEL_216;
  }
}

uint64_t MovieInformationPerformPostParsingForHeaderWriting(uint64_t a1)
{
  LODWORD(value) = 0;
  v2 = *(a1 + 304);
  if (v2 < 2)
  {
    if (v2 == 1)
    {
      v20 = **(a1 + 320);
      MovieTrackGetBasicInfo(v20, 0, &value);
      v21 = *(a1 + 252);
      v22 = value;
      if (value >= v21)
      {
        v21 = value + 1;
        *(a1 + 252) = value + 1;
      }

      if (!v22)
      {
        *(v20 + 144) = v21;
        *(a1 + 252) = v21 + 1;
      }
    }
  }

  else
  {
    v3 = *(a1 + 252);
    OUTLINED_FUNCTION_73_7();
    v5 = malloc_type_calloc(v2, 8uLL, v4);
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      for (i = 0; i != v2; ++i)
      {
        if (*(a1 + 304) <= i)
        {
          v9 = 0;
        }

        else
        {
          v9 = *(*(a1 + 320) + v7);
        }

        MovieTrackGetBasicInfo(v9, 0, &value);
        v10 = value;
        if (value >= v3)
        {
          v3 = value + 1;
          *(a1 + 252) = value + 1;
        }

        *&v6[v7] = v10;
        v7 += 8;
      }

      v11 = 0;
      v12 = v6 - 8;
      v13 = 1;
      do
      {
        v14 = &v6[8 * v11];
        if (*v14)
        {
          v15 = v13;
          v16 = v12;
          while (--v15 >= 1)
          {
            v17 = *v16;
            v16 -= 8;
            if (v17 == *v14)
            {
              goto LABEL_15;
            }
          }
        }

        else
        {
LABEL_15:
          v14[4] = 1;
          *v14 = v3++;
          *(a1 + 252) = v3;
        }

        ++v11;
        v12 += 8;
        ++v13;
      }

      while (v11 != v2);
      v18 = 0;
      v19 = v6;
      do
      {
        if (v19[4])
        {
          *(*(*(a1 + 320) + 8 * v18) + 144) = *v19;
        }

        ++v18;
        v19 += 8;
      }

      while (v2 != v18);
      free(v6);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_2();
      FigSignalErrorAtGM();
    }
  }

  v23 = *MEMORY[0x1E695E480];
  value = 0;
  Mutable = CFArrayCreateMutable(v23, 4, MEMORY[0x1E695E9C0]);
  v25 = OUTLINED_FUNCTION_80_6();
  MovieInformationCreateQuickTimeMetadataReaderFromByteStream(v25, v26);
  if (value)
  {
    CFArrayAppendValue(Mutable, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v27 = OUTLINED_FUNCTION_80_6();
  MovieInformationCreateQuickTimeUserDataReaderFromByteStream(v27, v28);
  if (value)
  {
    CFArrayAppendValue(Mutable, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v29 = OUTLINED_FUNCTION_80_6();
  MovieInformationCreateISOUserDataReaderFromByteStream(v29, v30);
  if (value)
  {
    CFArrayAppendValue(Mutable, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v31 = OUTLINED_FUNCTION_80_6();
  MovieInformationCreateiTunesMetadataReaderFromByteStream(v31, v32);
  if (value)
  {
    CFArrayAppendValue(Mutable, value);
    if (value)
    {
      CFRelease(value);
    }
  }

  createMetadataItemsPerFormatDictionary();
  v34 = v33;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v34)
  {
    URLBytes = *(a1 + 304);
    if (URLBytes >= 1)
    {
      v35 = 0;
      v92 = *MEMORY[0x1E695FFA0];
      do
      {
        if (*(a1 + 304) <= v35)
        {
          v36 = 0;
        }

        else
        {
          v36 = *(*(a1 + 320) + 8 * v35);
        }

        if (*(v36 + 288) >= 1)
        {
          value = 0;
          v37 = *(v36 + 64);
          if (v37)
          {
            Count = CFArrayGetCount(v37);
          }

          else
          {
            Count = 0;
          }

          CMBaseObject = CMByteStreamGetCMBaseObject();
          v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v43)
          {
            v43(CMBaseObject, v92, 0, &value);
          }

          if (Count < 1)
          {
LABEL_60:
            v34 = 0;
          }

          else
          {
            v44 = 0;
            while (1)
            {
              HIBYTE(v96) = 0;
              MovieTrackGetDataSourceAtIndex(a1, v36, v44, &v96 + 7, &v97, v40, v41, v42, v88, cf, v92, URLBytes, v96, v97, value, v99, v100, v101, v102, v103, v104, v105, v106, v107);
              if (v45)
              {
                break;
              }

              if (HIBYTE(v96))
              {
                if (!value)
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_3_2();
                  v45 = FigSignalErrorAtGM();
                  break;
                }

                v45 = MovieTrackSetDataSourceAtIndex(a1, v36, v44, 1, value);
                if (v45)
                {
                  break;
                }
              }

              if (Count == ++v44)
              {
                goto LABEL_60;
              }
            }

            v34 = v45;
          }

          if (value)
          {
            CFRelease(value);
          }

          if (v34)
          {
            return v34;
          }

          v46 = UpgradeTo32BitSampleSizes(v36);
          if (v46)
          {
            return v46;
          }

          if ((*(v36 + 584))(v36) >= 1)
          {
            v47 = 0;
            do
            {
              v48 = (*(v36 + 592))(v36, v47);
              if (v48 <= 15)
              {
                v49 = 4;
              }

              else
              {
                v49 = 8;
              }

              if (v48 > 255)
              {
                v49 = 16;
              }

              if (v48 >= 0x10000)
              {
                v49 = 32;
              }

              if (*(v36 + 296) > v49)
              {
                v49 = *(v36 + 296);
              }

              *(v36 + 296) = v49;
              v47 = (v47 + 1);
            }

            while (v47 < (*(v36 + 584))(v36));
          }

          if ((*(v36 + 624))(v36) >= 1)
          {
            v50 = 0;
            do
            {
              v51 = (*(v36 + 616))(v36, v50);
              v52 = *(v36 + 304);
              if (v52 <= v51)
              {
                v52 = v51;
              }

              *(v36 + 304) = v52;
              v50 = (v50 + 1);
            }

            while (v50 < (*(v36 + 624))(v36));
          }

          if (*(v36 + 440))
          {
            v53 = v35;
            v54 = v23;
            v55 = (*(v36 + 624))(v36);
            v56 = *(v36 + 432);
            LODWORD(v99) = 0;
            v64 = OUTLINED_FUNCTION_91_5(v55, v57, v58, v59, v60, v61, v62, v63, v88, cf, v92, URLBytes, v96, v97, 0);
            v65 = HIDWORD(value);
            LODWORD(v99) = 0;
            OUTLINED_FUNCTION_91_5(v64, v66, v67, v68, v69, v70, v71, v72, v89, cfa, v93, URLBytesa, v96, v97, 0);
            v73 = v99;
            LODWORD(v99) = 0;
            v97 = 0;
            value = 0;
            MakeTableReadyToWrite((v36 + 440), (v36 + 448));
            value = __PAIR64__(v65, bswap32(v55));
            LODWORD(v99) = v73;
            v74 = *(v36 + 448);
            v75 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (!v75)
            {
              return 4294954514;
            }

            v46 = v75(v74, 12, 12 * v56, &value, &v97);
            if (v46)
            {
              return v46;
            }

            *(v36 + 432) = v56 + 1;
            v23 = v54;
            v35 = v53;
          }
        }

        value = 0;
        v76 = CFArrayCreateMutable(v23, 3, MEMORY[0x1E695E9C0]);
        v77 = OUTLINED_FUNCTION_58_7();
        MovieTrackCreateQuickTimeMetadataReaderFromByteStream(v77, v78, v79);
        if (value)
        {
          CFArrayAppendValue(v76, value);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }
        }

        v80 = OUTLINED_FUNCTION_58_7();
        MovieTrackCreateQuickTimeUserDataReaderFromByteStream(v80, v81, v82);
        if (value)
        {
          CFArrayAppendValue(v76, value);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }
        }

        v83 = OUTLINED_FUNCTION_58_7();
        MovieTrackCreateISOUserDataReaderFromByteStream(v83, v84, v85);
        if (value)
        {
          CFArrayAppendValue(v76, value);
          if (value)
          {
            CFRelease(value);
          }
        }

        createMetadataItemsPerFormatDictionary();
        v34 = v86;
        if (v76)
        {
          CFRelease(v76);
        }

        if (v34)
        {
          return v34;
        }

        ++v35;
      }

      while (v35 != URLBytes);
    }

    return 0;
  }

  return v34;
}

void createMetadataItemsPerFormatDictionary()
{
  OUTLINED_FUNCTION_216_0();
  v3 = v2;
  cf = 0;
  v16 = 0;
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v3 && (Count = CFArrayGetCount(v3), Count >= 1))
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v8);
      if (FigMetadataCopyAllMetadataItems(v1, ValueAtIndex, &v16))
      {
        break;
      }

      if (!v16)
      {
        OUTLINED_FUNCTION_613();
        v16 = CFArrayCreate(v10, v11, v12, MEMORY[0x1E695E9C0]);
      }

      FigBaseObject = FigMetadataReaderGetFigBaseObject(ValueAtIndex);
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v14 || v14(FigBaseObject, @"format", v1, &cf))
      {
        break;
      }

      CFDictionaryAddValue(Mutable, cf, v16);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v16)
      {
        CFRelease(v16);
        v16 = 0;
      }

      if (v7 == ++v8)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    *v0 = Mutable;
    Mutable = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  OUTLINED_FUNCTION_90_4();
}

void MovieTrackInsertEmptySegment()
{
  OUTLINED_FUNCTION_36_20();
  v15 = *v2;
  *v16 = v2[1];
  *&v16[16] = v2[2];
  *&v21.value = *MEMORY[0x1E6960CC0];
  v3 = *(MEMORY[0x1E6960CC0] + 16);
  v21.epoch = v3;
  *&time1.start.value = *(v2 + 24);
  time1.start.epoch = *(v2 + 5);
  v14 = *&v21.value;
  *&time2.start.value = *&v21.value;
  time2.start.epoch = v3;
  if (CMTimeCompare(&time1.start, &time2.start) >= 1)
  {
    *&time1.start.value = v15;
    time1.start.epoch = *v16;
    *&time2.start.value = v14;
    time2.start.epoch = v3;
    if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
    {
      v4 = *(v0 + 816);
      if (v4 >= 1)
      {
        v5 = OUTLINED_FUNCTION_28_22(v4);
        *&time1.start.epoch = v6;
        *&time1.duration.timescale = v7;
        *&time1.start.value = v5;
        CMTimeRangeGetEnd(&v21, &time1);
        *&time1.start.value = v15;
        time1.start.epoch = *v16;
        time2.start = v21;
        if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0 || (*&time2.start.value = v15, time2.start.epoch = *v16, duration = *&v16[8], CMTimeRangeMake(&time1, &time2.start, &duration), duration = **&MEMORY[0x1E6960C70], v17 = *&v16[8], CMTimeRangeMake(&time2, &duration, &v17), InsertMediaSegmentIntoTrack(v0 + 808, &time1, &time2), !v8))
        {
          MovieTrackInvalidateEnhancedGaplessInfo(v0);
          *&time1.start.value = *v1;
          time1.start.epoch = *(v1 + 16);
          v9 = OUTLINED_FUNCTION_177();
          NoteEditSegmentModification(v9, v10, v11, 0);
          v12 = OUTLINED_FUNCTION_177();
          UpdateDurationsForEditSegmentChange(v12, v13);
        }
      }
    }
  }
}

void MovieTrackInsertMediaSegment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a4 + 12) & 0x1D) == 1)
  {
    v19 = v5;
    v20 = v4;
    v21 = v6;
    v22 = v7;
    OUTLINED_FUNCTION_36_20();
    time1 = *v9;
    OUTLINED_FUNCTION_107(MEMORY[0x1E6960CC0]);
    if ((CMTimeCompare(&time1, v17) & 0x80000000) == 0)
    {
      OUTLINED_FUNCTION_74_10();
      v10 = *(a4 + 16);
      v17[0] = *a4;
      v17[1] = v10;
      v17[2] = *(a4 + 32);
      InsertMediaSegmentIntoTrack(v4 + 808, &time1, v17);
      if (!v11)
      {
        MovieTrackInvalidateEnhancedGaplessInfo(v4);
        time1 = *v5;
        v12 = OUTLINED_FUNCTION_177();
        NoteEditSegmentModification(v12, v13, v14, 0);
        v15 = OUTLINED_FUNCTION_177();
        UpdateDurationsForEditSegmentChange(v15, v16);
      }
    }
  }
}

void InsertMediaSegmentIntoTrack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_369();
  v99 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E6960CC0];
  if ((*(v6 + 12) & 0x1D) != 1 || (*&time1[0].start.value = *a3, time1[0].start.epoch = *(a3 + 16), *time2 = *MEMORY[0x1E6960CC0], *&time2[16] = *(MEMORY[0x1E6960CC0] + 16), (CMTimeCompare(&time1[0].start, time2) & 0x80000000) == 0))
  {
    *&time1[0].start.value = *(a3 + 24);
    time1[0].start.epoch = *(a3 + 40);
    v75 = *v7;
    *time2 = *v7;
    v8 = *(v7 + 2);
    *&time2[16] = v8;
    End = CMTimeCompare(&time1[0].start, time2);
    if ((End & 0x80000000) == 0)
    {
      v17 = *(v4 + 3);
      if (v17)
      {
        *&time1[0].start.value = *v4;
        time1[0].start.epoch = v4[2];
        *time2 = v75;
        *&time2[16] = v8;
        End = CMTimeCompare(&time1[0].start, time2);
        if ((End & 0x80000000) != 0)
        {
          return;
        }

        v17 = *(v4 + 3);
      }

      if ((v17 & 1) == 0)
      {
        *time2 = v75;
        *&time2[16] = v8;
        v18 = *(v3 + 8);
        if (v18 >= 1)
        {
          v19 = OUTLINED_FUNCTION_28_22(v18);
          *&time1[0].start.epoch = v20;
          *&time1[0].duration.timescale = v21;
          *&time1[0].start.value = v19;
          End = CMTimeRangeGetEnd(time2, time1);
        }

        *v4 = *time2;
        v4[2] = *&time2[16];
      }

      *&v96[12] = 0u;
      v22 = *(a3 + 16);
      *time2 = *a3;
      *&time2[16] = v22;
      *v96 = 0u;
      *v96 = *(a3 + 32);
      *&v96[16] = *v4;
      v23 = *(v4 + 3);
      *&v96[24] = *(v4 + 2);
      v24 = v4[2];
      v81 = v4[5];
      v79 = *(v4 + 3);
      v25 = v75;
      *&v94.value = v75;
      v94.epoch = v8;
      v26 = *(v3 + 8);
      v97 = *v4;
      v98 = *(v4 + 2);
      if (v26 >= 1)
      {
        OUTLINED_FUNCTION_45_15();
        v29 = v27 + v26 * v28;
        v30 = *(v29 - 48);
        v31 = *(v29 - 16);
        *&time1[0].start.epoch = *(v29 - 32);
        *&time1[0].duration.timescale = v31;
        *&time1[0].start.value = v30;
        End = CMTimeRangeGetEnd(&v94, time1);
      }

      if ((v23 & 1) != 0 && (End = OUTLINED_FUNCTION_33_19(End, v10, v11, v12, v13, v14, v15, v16, v75, *(&v75 + 1), v79.n128_i64[0], v79.n128_i64[1], v81, v82, *&lhs.start.value, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, v85.value, *&v85.timescale, v85.epoch, v86, rhs.value, *&rhs.timescale, rhs.epoch, v88, v89.value, *&v89.timescale, v89.epoch, v90, v91.value, *&v91.timescale, v91.epoch, v92, time1[0].start.value, time1[0].start.timescale, time1[0].start.flags, time1[0].start.epoch), End))
      {
        if (OUTLINED_FUNCTION_33_19(End, v32, v11, v12, v13, v14, v15, v16, v75, *(&v75 + 1), v79.n128_i64[0], v79.n128_i64[1], v81, v83, *&lhs.start.value, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, v85.value, *&v85.timescale, v85.epoch, v86, rhs.value, *&rhs.timescale, rhs.epoch, v88, v89.value, *&v89.timescale, v89.epoch, v90, v91.value, *&v91.timescale, v91.epoch, v92, time1[0].start.value, time1[0].start.timescale, time1[0].start.flags, time1[0].start.epoch) >= 1)
        {
          if (!InsertUninitializedEditsIntoTrack(v3, *(v3 + 8), 2u))
          {
            v66 = 3 * v26;
            v67 = *v3 + 96 * v26;
            v68 = *&v94.value;
            *(v67 + 64) = v94.epoch;
            *(v67 + 48) = v68;
            v69 = *v3 + 96 * v26;
            OUTLINED_FUNCTION_67_12();
            v91 = v94;
            CMTimeSubtract(&time1[0].start, &lhs.start, &v91);
            v70 = *&time1[0].start.value;
            *(v69 + 88) = time1[0].start.epoch;
            *(v69 + 72) = v70;
            v71 = *v3 + 32 * v66;
            v72 = *MEMORY[0x1E6960C70];
            *(v71 + 16) = *(MEMORY[0x1E6960C70] + 16);
            *v71 = v72;
            v73 = *v3 + 32 * v66;
            *(v73 + 24) = v76;
            *(v73 + 40) = v8;
            v74 = *v3 + 32 * v66;
            *(v74 + 96) = *time2;
            *(v74 + 112) = *&time2[16];
            *(v74 + 128) = *v96;
            *(v74 + 140) = *&v96[12];
            *(v74 + 156) = v23;
            *(v74 + 160) = v24;
            *(v74 + 168) = *v80;
            *(v74 + 184) = *&v80[16];
          }
        }

        else
        {
          memcpy(time1, MEMORY[0x1E6960C78], sizeof(time1));
          *&v91.value = v76;
          v91.epoch = v8;
          *&v89.value = v76;
          v89.epoch = v8;
          *&lhs.start.value = v76;
          lhs.start.epoch = v8;
          rhs = *v80;
          CMTimeAdd(&v89, &lhs.start, &rhs);
          OUTLINED_FUNCTION_67_12();
          EditIndexStartingAtTimeInTrackSplitEditIfNecessary = FindEditIndexStartingAtTimeInTrackSplitEditIfNecessary(v3, &lhs.start);
          if ((EditIndexStartingAtTimeInTrackSplitEditIfNecessary & 0x80000000) == 0)
          {
            v34 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary;
            if (EditIndexStartingAtTimeInTrackSplitEditIfNecessary < *(v3 + 8))
            {
              v35 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary - 1;
              if (EditIndexStartingAtTimeInTrackSplitEditIfNecessary)
              {
                v36 = v35;
              }

              else
              {
                v36 = 0;
              }

              v37 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary;
              v38 = *v3 + 96 * EditIndexStartingAtTimeInTrackSplitEditIfNecessary;
              v39 = *(v38 + 48);
              rhs.epoch = *(v38 + 64);
              *&rhs.value = v39;
              v85 = v89;
              v40 = CMTimeAdd(&lhs.start, &rhs, &v85);
              v48 = *&lhs.start.value;
              *(v38 + 64) = lhs.start.epoch;
              *(v38 + 48) = v48;
              if (v34 && (OUTLINED_FUNCTION_7_64(v40, v41, v42, v43, v44, v45, v46, v47, v76, *(&v76 + 1), v48), OUTLINED_FUNCTION_59_12(), v40 = CombineEditSegmentsIfPossible(v49, time1, v49), v40))
              {
                OUTLINED_FUNCTION_45_15();
                if (!CombineEditSegmentsIfPossible(v63 + v35 * v64, v63 + v37 * v64, v63 + v35 * v64))
                {
                  --v34;
                  goto LABEL_27;
                }

                if (!DeleteEditsFromTrack(v3, v34--, 1))
                {
                  goto LABEL_27;
                }
              }

              else
              {
                OUTLINED_FUNCTION_7_64(v40, v41, v42, v43, v44, v45, v46, v47, v76, *(&v76 + 1), v48);
                OUTLINED_FUNCTION_45_15();
                OUTLINED_FUNCTION_59_12();
                if (CombineEditSegmentsIfPossible(time1, v50, v50))
                {
LABEL_26:
                  v35 = v34;
LABEL_27:
                  OUTLINED_FUNCTION_45_15();
                  v55 = (v53 + v35 * v54);
                  v56 = v55[3];
                  v57 = v55[5];
                  *&lhs.start.epoch = v55[4];
                  *&lhs.duration.timescale = v57;
                  *&lhs.start.value = v56;
                  CMTimeRangeGetEnd(&v91, &lhs);
                  lhs.start = v91;
                  UpdateTrackStartTimes(v3, v34 + 1, &lhs.start.value);
                  DeleteEditsWithZeroDuration(v3, v36);
                  return;
                }

                if (!InsertUninitializedEditsIntoTrack(v3, v34, 1u))
                {
                  OUTLINED_FUNCTION_45_15();
                  OUTLINED_FUNCTION_22_25(v51 + v37 * v52, v77, v78, *v80, *&v80[16]);
                  goto LABEL_26;
                }
              }
            }
          }
        }
      }

      else
      {
        v58 = *(v3 + 8);
        if (v58 >= 1)
        {
          OUTLINED_FUNCTION_7_64(End, v58, v11, v12, v13, v14, v15, v16, v75, *(&v75 + 1), v25);
          OUTLINED_FUNCTION_59_12();
          OUTLINED_FUNCTION_45_15();
          v62 = v60 + v59 * v61 - 96;
          if (CombineEditSegmentsIfPossible(v62, time1, v62))
          {
            return;
          }

          LODWORD(v58) = *(v3 + 8);
        }

        if (!InsertUninitializedEditsIntoTrack(v3, v58, 1u))
        {
          OUTLINED_FUNCTION_22_25(*v3 + 96 * v26, v75, *(&v75 + 1), v79, v81);
        }
      }
    }
  }
}

void MovieTrackFragmentInsertMediaSegment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 12) & 0x1D) == 1)
  {
    v12 = v3;
    v13 = v4;
    v14 = v5;
    OUTLINED_FUNCTION_216_0();
    v7 = v6;
    time1 = *v8;
    OUTLINED_FUNCTION_107(MEMORY[0x1E6960CC0]);
    if ((CMTimeCompare(&time1, v10) & 0x80000000) == 0)
    {
      OUTLINED_FUNCTION_74_10();
      v9 = v3[1];
      v10[0] = *v3;
      v10[1] = v9;
      v10[2] = v3[2];
      InsertMediaSegmentIntoTrack(v7 + 784, &time1, v10);
    }
  }
}

uint64_t MovieTrackDeleteSegment(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v14 = *a3;
  v15 = *(a3 + 2);
  v12 = *(a3 + 24);
  v13 = *(a3 + 5);
  v5 = DeleteTrackSegment(a2 + 808, &v14, &v12);
  if (!v5)
  {
    MovieTrackInvalidateEnhancedGaplessInfo(a2);
    v14 = *a3;
    v15 = *(a3 + 2);
    v6 = OUTLINED_FUNCTION_177();
    NoteEditSegmentModification(v6, v7, v8, 0);
    v9 = OUTLINED_FUNCTION_177();
    UpdateDurationsForEditSegmentChange(v9, v10);
  }

  return v5;
}

uint64_t DeleteTrackSegment(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_369();
  *&v102.value = *MEMORY[0x1E6960CC0];
  v5 = *(MEMORY[0x1E6960CC0] + 16);
  v102.epoch = v5;
  v100 = 0uLL;
  v101 = 0;
  *&range.start.value = *v6;
  range.start.epoch = *(v6 + 16);
  v99 = *v7;
  v14 = OUTLINED_FUNCTION_53_15(v8, v6, v7, v9, v10, v11, v12, v13, v102.value, *&v102.timescale, range.start.value);
  *&v103 = CMTimeAdd(v16, v14, v15);
  *&v17 = OUTLINED_FUNCTION_23_33(v103, a3[2], v87, *a3, a3[1], range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, *&v99.value, v99.epoch);
  if (!v17)
  {
    return 0;
  }

  if (OUTLINED_FUNCTION_23_33(v17, a3[2], v88, *a3, a3[1], range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, *&v99.value, v99.epoch) < 1)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_15_38();
  *&v99.value = v89;
  v99.epoch = v5;
  v26 = OUTLINED_FUNCTION_53_15(v18, v19, v20, v21, v22, v23, v24, v25, v89, *(&v89 + 1), range.start.value);
  if (CMTimeCompare(v26, v27) < 0)
  {
    return 4294954516;
  }

  v28 = *(v3 + 8);
  if (v28 < 1)
  {
    return 0;
  }

  v29 = OUTLINED_FUNCTION_28_22(v28);
  *&range.start.epoch = v30;
  *&range.duration.timescale = v31;
  *&range.start.value = v29;
  CMTimeRangeGetEnd(&v102, &range);
  OUTLINED_FUNCTION_15_38();
  v99 = v102;
  v40 = OUTLINED_FUNCTION_53_15(v32, v33, v34, v35, v36, v37, v38, v39, v90, v94, range.start.value);
  if ((CMTimeCompare(v40, v41) & 0x80000000) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_38();
  EditIndexStartingAtTimeInTrackSplitEditIfNecessary = FindEditIndexStartingAtTimeInTrackSplitEditIfNecessary(v3, &range.start);
  if ((EditIndexStartingAtTimeInTrackSplitEditIfNecessary & 0x80000000) != 0)
  {
    return 4294954516;
  }

  v50 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary;
  if (EditIndexStartingAtTimeInTrackSplitEditIfNecessary >= *(v3 + 8))
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_84_5(EditIndexStartingAtTimeInTrackSplitEditIfNecessary, v43, v44, v45, v46, v47, v48, v49, v91, v95, range.start.value, *&range.start.timescale, range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, v99.value, *&v99.timescale, v99.epoch, v100);
  v99 = v102;
  v59 = OUTLINED_FUNCTION_53_15(v51, v52, v53, v54, v55, v56, v57, v58, v92, v96, range.start.value);
  v61 = CMTimeCompare(v59, v60);
  if ((v61 & 0x80000000) != 0)
  {
    OUTLINED_FUNCTION_84_5(v61, v62, v63, v64, v65, v66, v67, v68, v93, v97, range.start.value, *&range.start.timescale, range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, v99.value, *&v99.timescale, v99.epoch, v100);
    v69 = FindEditIndexStartingAtTimeInTrackSplitEditIfNecessary(v3, &range.start);
    if (v69 < 0 || v69 >= *(v3 + 8))
    {
      return 4294954516;
    }
  }

  v70 = OUTLINED_FUNCTION_624();
  v73 = DeleteEditsFromTrack(v70, v71, v72);
  if (v73)
  {
    return v73;
  }

  OUTLINED_FUNCTION_15_38();
  v74 = OUTLINED_FUNCTION_624();
  UpdateTrackStartTimes(v74, v75, v76);
  if (v50)
  {
    v77 = *(v3 + 8);
    if (v50 >= v77)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_45_15();
    if (CombineEditSegmentsIfPossible(v78 + v50 * v79 - 96, v78 + v50 * v79, v78 + v50 * v79 - 96))
    {
      v85 = OUTLINED_FUNCTION_624();
      v73 = DeleteEditsFromTrack(v85, v86, 1);
      if (v73)
      {
        return v73;
      }
    }
  }

  v77 = *(v3 + 8);
LABEL_16:
  v80 = (v77 - 1);
  if (v77 < 1 || (*(*v3 + 96 * v80 + 12) & 0x1D) == 1)
  {
    v81 = 0;
  }

  else
  {
    v81 = DeleteEditsFromTrack(v3, v80, 1);
    v77 = *(v3 + 8);
  }

  if (v50 >= v77)
  {
    v82 = v77 - 1;
  }

  else
  {
    v82 = v50;
  }

  if (v50)
  {
    v83 = v50 - 1;
  }

  else
  {
    v83 = 0;
  }

  if (v82 >= v83)
  {
    DeleteEditsWithZeroDuration(v3, v83);
  }

  return v81;
}

uint64_t MovieTrackFragmentDeleteSegment(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  v3 = *(a2 + 24);
  v4 = *(a2 + 5);
  return DeleteTrackSegment(a1 + 784, &v5, &v3);
}

uint64_t FragmentCursorEnsureAccessorAndCopySampleGroupDescription()
{
  OUTLINED_FUNCTION_279_0();
  v4 = *v1;
  if (*v1)
  {
    v5 = 0;
  }

  else
  {
    v6 = *(*(v0 + 200) + 104);
    if (!v6)
    {
      return v10;
    }

    v7 = v1;
    v8 = MovieSampleGroupCollectionLookupAndRetainSampleGroup(v6, v2, v3);
    if (!v8)
    {
      return v10;
    }

    v5 = v8;
    if (MovieSampleGroupAccessorCreate(v8, v7))
    {
LABEL_8:
      CFRelease(v5);
      return v10;
    }

    v4 = *v7;
  }

  MovieSampleGroupAccessorCopyDescriptionForSample(v4, (*(v0 + 80) - *(*(v0 + 208) + 16) + 1), &v10);
  if (v5)
  {
    goto LABEL_8;
  }

  return v10;
}

void SampleGroupDeepCopyApplier(uint64_t a1, CFTypeRef cf)
{
  cfa = 0;
  v4 = CFGetAllocator(cf);
  if (!MovieSampleGroupCreateDeepCopy(v4, a1, &cfa))
  {
    MovieSampleGroupCollectionAddSampleGroup(cf, cfa);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }
}

void UpgradeTo64BitChunkOffsets(uint64_t a1)
{
  v20 = 0;
  blockBufferOut = 0;
  v2 = *(a1 + 360);
  if (v2)
  {
    OUTLINED_FUNCTION_156_0();
    v9 = CMBlockBufferCreateWithMemoryBlock(v3, v4, v5, v6, v7, v8, v5, 1u, &blockBufferOut);
    v10 = blockBufferOut;
    if (v9)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_496();
    CMBlockBufferGetDataPointer(v11, v12, v13, v14, v15);
    if (v2 >= 1)
    {
      v16 = 0;
      do
      {
        *v20++ = bswap64((*(a1 + 616))(a1, v16));
        v16 = (v16 + 1);
      }

      while (v2 != v16);
    }

    *(a1 + 384) = v2;
    v17 = blockBufferOut;
    if (blockBufferOut)
    {
      v17 = CFRetain(blockBufferOut);
    }

    *(a1 + 392) = v17;
  }

  *(a1 + 360) = 0;
  v18 = *(a1 + 368);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 368) = 0;
  }

  v19 = *(a1 + 376);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 376) = 0;
  }

  *(a1 + 616) = GetChunkOffset_co64;
  *(a1 + 624) = GetChunkCount_co64;
  *(a1 + 632) = GetChunkTable_co64;
  v10 = blockBufferOut;
LABEL_14:
  if (v10)
  {
    CFRelease(v10);
  }
}

void AddFragmentRunSampleSizes()
{
  OUTLINED_FUNCTION_471();
  if ((*(v1 + 52) & 2) != 0)
  {
    OUTLINED_FUNCTION_76_10();
    if (v2 == v3)
    {
      v6 = 0;
      v7 = v0 + 4 * kPerSampleInfo_SizeIndex[v5] + 56;
      v8 = 4 * kPerSampleInfo_SizeInInt32s[v5];
      do
      {
        if (CMByteStreamAppend())
        {
          break;
        }

        ++v6;
        v7 += v8;
      }

      while (v6 < *(v0 + 40));
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_16();
    if (v2 == v3)
    {
      v4 = 0;
      do
      {
        if (CMByteStreamAppend())
        {
          break;
        }

        ++v4;
      }

      while (v4 < *(v0 + 40));
    }
  }

  OUTLINED_FUNCTION_652();
}

void AddSampleGroupForGroupType(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, _DWORD *cf, int32x2_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, const void *a28, _BYTE *a29)
{
  OUTLINED_FUNCTION_296_0();
  a26 = v29;
  a27 = v32;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v30;
  v45 = v44;
  cf = 0;
  a13 = 0;
  v46 = *(v44 + 72);
  v47 = v31;
  if (v46)
  {
    v46 = MovieSampleGroupCollectionLookupAndRetainSampleGroup(v46, v30, v31);
  }

  a15 = v46;
  if (v36)
  {
    v48 = v46 == 0;
  }

  else
  {
    v48 = 0;
  }

  v49 = v48;
  if (v48)
  {
    v50 = CFGetAllocator(v45);
    v51 = *(v45 + 288);
    v52 = *(v45 + 728);
    if (v52)
    {
      v51 += *(v52 + 8);
    }

    if (v42)
    {
      if (MovieSampleGroupCreateCompact(v50, v43, v47, &a15))
      {
        goto LABEL_33;
      }
    }

    else if (MovieSampleGroupCreate(v50, v43, v47, &a15))
    {
      goto LABEL_33;
    }

    if (MovieTrackAddAndRetainSampleGroupDescriptionArray(v45, v43, &cf))
    {
      goto LABEL_33;
    }

    if (MovieSampleGroupSetDescriptionArray(a15, cf))
    {
      goto LABEL_33;
    }

    if (MovieTrackAddSampleGroup(v45, a15))
    {
      goto LABEL_33;
    }

    if (v51 + v38)
    {
      MovieSampleGroupAppendSamplesWithDescriptionIndex(a15, v51 + v38, 0);
      if (v53)
      {
        goto LABEL_33;
      }
    }

    v46 = a15;
  }

  if (!v46)
  {
    v55 = 0;
LABEL_32:
    *a29 = (v49 | v55) & 1;
    goto LABEL_33;
  }

  a9 = 0;
  if (v36)
  {
    if (MovieSampleGroupAddDescription(v46, v34, a28, &a9, &a13))
    {
      goto LABEL_33;
    }

    v46 = a15;
    v54 = a9;
  }

  else
  {
    v54 = 0;
  }

  MovieSampleGroupAppendSamplesWithDescriptionIndex(v46, v40, v54);
  if (!v56)
  {
    v55 = a13 != 0;
    goto LABEL_32;
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a15)
  {
    CFRelease(a15);
  }

  OUTLINED_FUNCTION_207_0();
}

uint64_t InsertUninitializedEditsIntoTrack(char **a1, unsigned int a2, unsigned int a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 4294954516;
  }

  v5 = *(a1 + 2);
  v6 = v5 - a2;
  if (v5 < a2)
  {
    return 4294954516;
  }

  v8 = *(a1 + 3);
  if (v8 - v5 >= a3)
  {
    v16 = a3;
    if (v6 > 0)
    {
      memmove(&(*a1)[96 * a2 + 96 * a3], &(*a1)[96 * a2], 96 * v6);
    }

    bzero(&(*a1)[96 * a2], 96 * v16);
    goto LABEL_15;
  }

  if (v8 <= 2147483642)
  {
    v9 = v8 + 5;
    OUTLINED_FUNCTION_73_7();
    v11 = malloc_type_calloc(v9, 0x60uLL, v10);
    v12 = v11;
    v13 = *a1;
    if (*a1)
    {
      v14 = *(a1 + 2) - a2;
      if (a2)
      {
        memmove(v11, v13, 96 * a2);
        v13 = *a1;
      }

      if (v14 >= 1)
      {
        memmove(&v12[96 * a2 + 96 * a3], &v13[96 * a2], 96 * v14);
        v13 = *a1;
      }

      free(v13);
    }

    *a1 = v12;
    *(a1 + 3) = v9;
LABEL_15:
    result = 0;
    *(a1 + 2) += a3;
    return result;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();

  return FigSignalErrorAtGM();
}

uint64_t DeleteEditsFromTrack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = v3 - (a3 + a2);
  if (v3 < a3 + a2)
  {
    return 4294954516;
  }

  if (v4 >= 1)
  {
    memmove((*a1 + 96 * a2), (*a1 + 96 * (a3 + a2)), 96 * v4);
    v3 = *(a1 + 8);
  }

  v7 = v3 - a3;
  *(a1 + 8) = v7;
  bzero((*a1 + 96 * v7), 96 * a3);
  return 0;
}

void DeleteEditsWithZeroDuration(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_471();
    v7 = v6;
    v8 = *(v6 + 8);
    v9 = v8 > v5 && v4 <= v5;
    if (v9 && v8 > v4)
    {
      v14 = *MEMORY[0x1E6960CC0];
      v11 = *(MEMORY[0x1E6960CC0] + 16);
      do
      {
        v12 = *v7 + 96 * v3;
        v13 = *(v12 + 72);
        time1.epoch = *(v12 + 88);
        *&time1.value = v13;
        *&time2.value = v14;
        time2.epoch = v11;
        if (CMTimeCompare(&time1, &time2))
        {
          ++v3;
        }

        else
        {
          if (DeleteEditsFromTrack(v7, v3, 1))
          {
            return;
          }

          --v2;
        }
      }

      while (v3 <= v2);
    }
  }
}

uint64_t MovieTrackSetDataSourceAtIndex_cold_1(void *a1, uint64_t a2, _DWORD *a3)
{
  MovieInformationReportParsingFailureMessage(a1, a2, "Data source index is invalid", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a3 = result;
  return result;
}

void MovieTrackCopyExternalDataReferenceSchemes_cold_1(uint64_t a1, uint64_t a2, const void *a3, _DWORD *a4)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a4 = FigSignalErrorAtGM();
  FigSimpleMutexUnlock();

  CFRelease(a3);
}

uint64_t SampleGroupDescCollectingApplierFunction_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t SampleGroupDescCollectingApplierFunction_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t MovieTrackGetSampleDescriptionInformationAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackGetSampleDescriptionInformationAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackAddParsedDataReference_cold_1(uint64_t a1, _DWORD *a2)
{
  MovieInformationReportParsingFailureMessage(0, a1, "External data reference must have reference data", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t MovieTrackAddParsedDataReference_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackAddParsedDataReference_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackAddParsedDataReference_cold_4(uint64_t a1, _DWORD *a2)
{
  MovieInformationReportParsingFailureMessage(0, a1, "Unexpected value for data reference flags", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t MovieSampleAccessorStepCursor_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleAccessorStepCursor_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleAccessorStepCursor_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleAccessorMoveToLastSampleInDecodeOrder_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleAccessorCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t resetTrackCursor_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t resetTrackCursor_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t resetTrackCursor_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t resetTrackCursor_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FragmentCursorGetDTSTimeValue_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FragmentCursorGetDTSTimeValue_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t MovieSampleAccessorGetPTSTimeValue_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t MovieSampleAccessorGetPTSTimeValue_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t MovieSampleAccessorGetSampleDuration_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t MovieSampleAccessorGetSampleDuration_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t locateChunk_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t locateChunk_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t locateChunk_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t locateChunk_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t locateChunk_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t locateChunk_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t locateChunk_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t locateChunk_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t locateChunk_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t locateChunk_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

double MovieSampleAccessorComputePlayableHorizon_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_216_0();
  PTSTimeValue = MovieSampleAccessorGetPTSTimeValue(v7);
  CMTimeMake(v4, PTSTimeValue, *(*v5 + 232));
  return MovieTrackGetMediaDuration(*v5, a4);
}

uint64_t FragmentCursorGetSampleFlags_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FragmentCursorGetSampleFlags_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t MovieTrackFindOrAddSampleDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackFindOrAddSampleDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackFindOrAddSampleDescription_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackFindOrAddSampleDescription_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackFindOrAddSampleDescription_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AllSampleGroupCollectionApplierFunction_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t MovieSampleAccessorCreateSampleDependencyAttributeDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackReplaceFormatDescriptionArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackReplaceFormatDescriptionArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackReplaceFormatDescriptionArray_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackSetMediaTimeScale_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackSetMediaTimeScale_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackGetBasicInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackSetLanguageCodeString_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackCreateSampleDescriptionAtomLocationDictionary_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

void MovieTrackCreateSampleDescriptionAtomLocationDictionary_cold_2(const void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t MovieTrackCreateSampleDescriptionAtomLocationDictionary_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t MovieTrackCreateSampleDescriptionAtomLocationDictionary_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t MovieTrackCreateEditSegmentArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackAddRunContributionToEditSegmentArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackInitializeLowestDisplayStartTimeAndHighestDisplayEndTime_cold_1(uint64_t a1, void *a2)
{
  v9 = OUTLINED_FUNCTION_107(MEMORY[0x1E6960C70]);
  v10 = v3;
  result = MovieTrackGetDisplayTimeRange(v4, v5, &v8, &v9);
  if (!result)
  {
    v7 = v9.n128_u64[0];
    a2[11] = v8.value;
    a2[12] = 0xFFFFFFFF80000000;
    a2[13] = v7;
  }

  return result;
}

uint64_t MovieTrackAddParsedSampleDescriptionAndDataRefIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackAddParsedSampleDescriptionAndDataRefIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackAddParsedSampleDescriptionAndDataRefIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ConvertSampleDescriptionsToFormatDescriptions_cold_1(void *a1, uint64_t a2, _DWORD *a3)
{
  MovieInformationReportParsingFailureMessage(a1, a2, "MediaType is zero", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a3 = result;
  return result;
}

uint64_t ConvertSampleDescriptionsToFormatDescriptions_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t ConvertSampleDescriptionsToFormatDescriptions_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t ConvertSampleDescriptionsToFormatDescriptions_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t ConvertSampleDescriptionsToFormatDescriptions_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ConvertSampleDescriptionsToFormatDescriptions_cold_6(void *a1, uint64_t a2, _DWORD *a3)
{
  MovieInformationReportParsingFailureMessage(a1, a2, "Track has no sample descriptions", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a3 = result;
  return result;
}

uint64_t EnsureTrackReferenceArrayCapacityForAddition_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t EnsureTrackReferenceArrayCapacityForAddition_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL NewTrackAlternateGroupAssignment_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_2_14(v0);
}

uint64_t MovieInformationAddNewPerTrackInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieInformationAddNewPerTrackInfo_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieInformationAddNewPerTrackInfo_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieInformationCreateQTLoadSettingsDictionary_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t MovieInformationCreateQTLoadSettingsDictionary_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t MovieInformationCreateQTLoadSettingsDictionary_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t MovieInformationCreateQTLoadSettingsDictionary_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t MovieInformationSetMovieTimeScale_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleTableSet_stz2_cold_1(uint64_t a1, _DWORD *a2)
{
  MovieInformationReportParsingFailureMessage(0, a1, "Unexpected stz2 field size", 2);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t MovieInformationLockForWrite_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieInformationUnlockForWrite_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieInformationEnsureMutationsWillNotify_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieInformationCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackSetLastSampleDecodeDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackSetLastSampleDecodeDuration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieTrackSetLastSampleDecodeDuration_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieInformationBeginBuildingMovieFragment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL MovieInformationBeginBuildingMovieFragment_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_2_14(v0);
}

void MakeTableReadyToWrite_cold_1(uint64_t a1, uint64_t a2, const void **a3, OpaqueCMBlockBuffer *a4)
{
  OUTLINED_FUNCTION_369();
  if (!CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0x10u, 0, v4))
  {
    if (a4 && CMBlockBufferGetDataLength(a4))
    {
      OUTLINED_FUNCTION_496();
      CMBlockBufferAppendBufferReference(v7, v8, v9, v10, 0);
    }

    v11 = *a3;
    v12 = *v4;
    *a3 = *v4;
    if (v12)
    {
      CFRetain(v12);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    CMByteStreamCreateWritableForBlockBuffer();
  }

  if (*v4)
  {
    CFRelease(*v4);
  }
}

uint64_t MovieInformationSetParsedIFFItemInformation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieInformationSetParsedIFFItemInformation_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DeepCopySampleGroupDescriptionArraysApplierFunction_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

void FigMutableCompositionCreate(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v23 = 0;
  OUTLINED_FUNCTION_0_145();
  MEMORY[0x19A8D3660]();
  if (!CMDerivedObjectCreate())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = malloc_type_calloc(0x30uLL, 1uLL, 0xD0897101uLL);
    *v7 = 1;
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = FigSimpleMutexCreate();
    v8 = OUTLINED_FUNCTION_383();
    v7[5] = CFDictionaryCreateMutable(v8, v9, v10, v11);
    v23 = v7;
    v7[1] = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    v12 = malloc_type_calloc(0xA8uLL, 1uLL, 0xCE15D8CEuLL);
    *v12 = 0x100000001;
    v12[1] = FigSimpleMutexCreate();
    v12[2] = 0;
    *(v12 + 6) = 1;
    v12[4] = 0;
    v13 = OUTLINED_FUNCTION_383();
    v12[5] = CFBagCreateMutable(v13, v14, v15);
    v12[7] = FigSimpleMutexCreate();
    v16 = MEMORY[0x1E695E9E8];
    v17 = OUTLINED_FUNCTION_383();
    v12[8] = CFDictionaryCreateMutable(v17, v18, v19, v16);
    v12[9] = FigSimpleMutexCreate();
    *(v12 + 5) = 0u;
    *(v12 + 6) = 0u;
    v12[14] = 0;
    v12[15] = FigSimpleMutexCreate();
    v12[16] = 64;
    OUTLINED_FUNCTION_82_7();
    v12[17] = malloc_type_calloc(0x40uLL, 0x10uLL, v20);
    v12[18] = 1;
    v21 = OUTLINED_FUNCTION_383();
    v12[19] = CFDictionaryCreateMutable(v21, v22, 0, v16);
    v12[20] = v7;
    FigAtomicIncrement32();
    *(DerivedStorage + 8) = v12;
    *a4 = 0;
  }

  compositionSharedCache_releaseAndClear(&v23);
  OUTLINED_FUNCTION_843();
}

uint64_t mutableComposition_setMetadata(void *a1, const __CFArray *a2, __CFDictionary *a3)
{
  v29 = 0;
  FigSimpleMutexLock();
  allocator = *MEMORY[0x1E695E480];
  v6 = compositionTable_createAvailableMetadataReaderPropertiesArray(*MEMORY[0x1E695E480], a1, &v29);
  v7 = v29;
  if (!v6)
  {
    v8 = MEMORY[0x1E695E4D0];
    if (v29)
    {
      Count = CFArrayGetCount(v29);
      if (Count >= 1)
      {
        v10 = Count;
        v11 = 0;
        v12 = *v8;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v11);
          CFDictionarySetValue(a3, ValueAtIndex, v12);
          ++v11;
        }

        while (v10 != v11);
      }
    }

    compositionTable_releaseAndClearMetadata(a1);
    if (a2)
    {
      v14 = CFArrayGetCount(a2);
      v15 = *v8;
      if (v14 >= 1)
      {
        v16 = v14;
        value = *v8;
        for (i = 0; i != v16; ++i)
        {
          v18 = CFArrayGetValueAtIndex(a2, i);
          if (v18)
          {
            v19 = v18;
            v20 = CFGetTypeID(v18);
            if (v20 == CFDictionaryGetTypeID())
            {
              v21 = CFDictionaryGetValue(v19, @"format");
              v22 = CFDictionaryGetValue(v19, @"items");
              if (v21)
              {
                v23 = v22;
                if (v22)
                {
                  v24 = @"iTunesMetadataReader";
                  if (!FigCFEqual())
                  {
                    v24 = @"QuickTimeMetadataReader";
                    if (!FigCFEqual())
                    {
                      v24 = @"QuickTimeUserDataReader";
                      if (!FigCFEqual())
                      {
                        if (FigCFEqual())
                        {
                          v24 = @"ISOUserDataReader";
                        }

                        else
                        {
                          v24 = 0;
                        }
                      }
                    }
                  }

                  Mutable = a1[10];
                  if (!Mutable)
                  {
                    Mutable = CFDictionaryCreateMutable(allocator, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    a1[10] = Mutable;
                  }

                  CFDictionarySetValue(Mutable, v21, v23);
                  if (v24)
                  {
                    CFDictionarySetValue(a3, v24, value);
                  }
                }
              }
            }
          }
        }

        v6 = 0;
        v15 = value;
      }
    }

    else
    {
      v15 = *v8;
    }

    CFDictionarySetValue(a3, @"MetadataReaderTypes", v15);
    CFDictionarySetValue(a3, @"MetadataReaders", v15);
  }

  FigSimpleMutexUnlock();
  if (v7)
  {
    CFRelease(v7);
  }

  return v6;
}

uint64_t mutableComposition_CreateMutableCopy(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*MEMORY[0x1E695E4B0] == a1)
  {
    return 4294954516;
  }

  v6 = DerivedStorage;
  if (CMBaseObjectGetVTable() == &kMutableComposition_VTable)
  {
    OUTLINED_FUNCTION_0_145();
    MEMORY[0x19A8D3660]();
    v8 = CMDerivedObjectCreate();
    if (!v8)
    {
      v9 = CMBaseObjectGetDerivedStorage();
      compositionTable_createCopy(a1, *(v6 + 8), (v9 + 8));
      *a3 = 0;
    }

    return v8;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();

  return FigSignalErrorAtGM();
}

uint64_t mutableComposition_GetTrackCompatibleWithAssetTrack(uint64_t a1, const void *a2, uint64_t a3, _DWORD *a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  v24 = 0;
  v25 = 0;
  v23 = 0;
  if (!a2)
  {
    v21 = 4294954516;
    goto LABEL_17;
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = compositionSharedCache_copyFormatReaderForAssetURL(v7[20], a2, *MEMORY[0x1E695E480], &v25);
  if (!v9)
  {
    FigSimpleMutexLock();
    v10 = v25;
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v11)
    {
      v21 = 4294954514;
LABEL_14:
      FigSimpleMutexUnlock();
      goto LABEL_15;
    }

    v12 = v11(v10, a3, &v24, &v23);
    if (v12)
    {
      v21 = v12;
      goto LABEL_14;
    }

    v13 = v7[2];
    v14 = v23;
    cf = 0;
    FigBaseObject = FigTrackReaderGetFigBaseObject(v24);
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v16)
    {
LABEL_13:
      v21 = 4294954453;
      goto LABEL_14;
    }

    v17 = v16(FigBaseObject, @"TrackFormatDescriptionArray", v8, &cf);
    v18 = cf;
    if (v17)
    {
      CompatibleTrackForFormatDescriptionArrayAndMediaType = -1;
      if (!cf)
      {
LABEL_9:
        if ((CompatibleTrackForFormatDescriptionArrayAndMediaType & 0x8000000000000000) == 0)
        {
          v20 = *(v7[4] + 168 * CompatibleTrackForFormatDescriptionArrayAndMediaType + 4);
          FigSimpleMutexUnlock();
          v21 = 0;
          if (a4)
          {
            *a4 = v20;
          }

          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

    else
    {
      CompatibleTrackForFormatDescriptionArrayAndMediaType = compositionTable_findCompatibleTrackForFormatDescriptionArrayAndMediaType(v7, 0, v13, cf, v14);
      v18 = cf;
      if (!cf)
      {
        goto LABEL_9;
      }
    }

    CFRelease(v18);
    goto LABEL_9;
  }

  v21 = v9;
LABEL_15:
  if (v24)
  {
    CFRelease(v24);
  }

LABEL_17:
  if (v25)
  {
    CFRelease(v25);
  }

  return v21;
}

uint64_t mutableComposition_SetTrackEditList(uint64_t a1, int a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 < 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();

    return FigSignalErrorAtGM();
  }

  else
  {
    v8 = DerivedStorage;
    v9 = *(DerivedStorage + 8);
    v10 = OUTLINED_FUNCTION_502();
    v12 = compositionEditSegment_validateSegments(v10, v11, 1);
    if (v12)
    {
      return v12;
    }

    FigSimpleMutexLock();
    OUTLINED_FUNCTION_54_18();
    if (v14 != v15)
    {
LABEL_7:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      v17 = FigSignalErrorAtGM();
      v18 = 0;
    }

    else
    {
      v16 = (*(v9 + 32) + 16);
      while (*(v16 - 3) != a2)
      {
        v16 += 21;
        if (!--v13)
        {
          goto LABEL_7;
        }
      }

      compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(*v16, *(v16 - 1), *(v9 + 40));
      if (v16[1] < a3)
      {
        free(*v16);
        OUTLINED_FUNCTION_11_50();
        *v16 = malloc_type_calloc(a3, 0x6CuLL, v20);
        v16[1] = a3;
      }

      *(v16 - 1) = a3;
      if (a3)
      {
        compositionEditSegment_copySegmentsAndAddURLsToBag(*v16, a4, a3, *(v9 + 40));
        if (a3 < 2)
        {
          v30 = *(v16 - 1);
        }

        else
        {
          v21 = *v16;
          *(v16 - 1) = 0;
          v22 = a3 - 1;
          v23 = v21;
          do
          {
            v24 = (v21 + 108);
            v25 = OUTLINED_FUNCTION_151_1();
            if (!compositionEditSegment_combineEditSegmentsIfPossible(v25, v26, v21 + 108, v27))
            {
              if (v21 != v23)
              {
                memcpy(v23, v21, 0x6CuLL);
                *v21 = 0u;
                v21[1] = 0u;
                v21[2] = 0u;
                v21[3] = 0u;
                v21[4] = 0u;
                v21[5] = 0u;
                *(v21 + 92) = 0u;
              }

              v23 = (v23 + 108);
              ++*(v16 - 1);
            }

            v21 = (v21 + 108);
            --v22;
          }

          while (v22);
          if (v24 != v23)
          {
            v28 = OUTLINED_FUNCTION_502();
            memcpy(v28, v29, 0x6CuLL);
            *v24 = 0u;
            v24[1] = 0u;
            v24[2] = 0u;
            v24[3] = 0u;
            v24[4] = 0u;
            v24[5] = 0u;
            *(v24 + 92) = 0u;
          }

          v30 = *(v16 - 1) + 1;
          *(v16 - 1) = v30;
        }

        if (v30 >= 1)
        {
          v31 = *v16 + 108 * v30;
          if ((*(v31 - 96) & 0x1D) != 1)
          {
            *(v31 - 16) = 0u;
            *(v31 - 28) = 0u;
            *(v31 - 44) = 0u;
            *(v31 - 60) = 0u;
            *(v31 - 76) = 0u;
            *(v31 - 92) = 0u;
            *(v31 - 108) = 0u;
            --*(v16 - 1);
          }
        }
      }

      v17 = 0;
      OUTLINED_FUNCTION_40_17();
      v18 = 1;
    }

    FigSimpleMutexUnlock();
    if (v18)
    {
      if (*v8)
      {
        mutableComposition_postPossiblyDeferredTracksChangedNotification();
      }
    }

    compositionTable_discardUnusedAssets(v9);
    return v17;
  }
}

uint64_t mutableComposition_InsertAssetSegmentIntoTrack(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, CMTime *a6, uint64_t a7)
{
  CMBaseObjectGetDerivedStorage();
  v12 = 4294954516;
  if (!a3)
  {
    return v12;
  }

  if (!a4)
  {
    return v12;
  }

  OUTLINED_FUNCTION_29();
  if (!v14)
  {
    return v12;
  }

  v15 = v13;
  v16 = v13[1];
  OUTLINED_FUNCTION_69_8();
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960CC0]);
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    return v12;
  }

  OUTLINED_FUNCTION_350();
  if (!v14 && (v17 & 1) != 0)
  {
    return v12;
  }

  FigSimpleMutexLock();
  if (*(v16 + 16) < 1)
  {
LABEL_14:
    FigSimpleMutexUnlock();
    return v12;
  }

  v18 = *(v16 + 32);
  while (*(v18 + 4) != a2)
  {
    OUTLINED_FUNCTION_47_16();
    if (v14)
    {
      v12 = 4294954516;
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_69_8();
  time2 = *a6;
  v22 = *a7;
  v23 = *(a7 + 16);
  inserted = compositionTable_insertAssetSegmentIntoTrack(v16, v20, a3, a4, &time1.value, &time2, &v22);
  if (inserted)
  {
    v12 = inserted;
    goto LABEL_14;
  }

  ++*(v16 + 4);
  FigSimpleMutexUnlock();
  if (*v15)
  {
    mutableComposition_postPossiblyDeferredTracksChangedNotification();
  }

  return 0;
}

uint64_t mutableComposition_InsertAssetSegment(uint64_t a1, const void *a2, CMTime *a3, __int128 *a4, __int128 *a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 8);
  v65 = 0;
  v66[0] = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  if (!a2)
  {
    v18 = 0;
    v37 = 4294954516;
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_29();
  if (!v11 || (v12 = v10, time1 = *a3, v48 = *MEMORY[0x1E6960CC0], time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &time2) < 0) || OUTLINED_FUNCTION_42_18(v13, *(a4 + 2), v39, v41, v44, a1, v48, *a4, *(a4 + 1), time1.epoch) < 1 || (OUTLINED_FUNCTION_350(), !v11) && (v15 & 1) != 0)
  {
    v18 = 0;
    goto LABEL_59;
  }

  if (v16 == 1 && (OUTLINED_FUNCTION_42_18(v14, *(a5 + 2), v40, v42, v45, v47, v49, *a5, *(a5 + 1), time1.epoch) & 0x80000000) != 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v17 = FigSignalErrorAtGM();
    goto LABEL_63;
  }

  v50 = *MEMORY[0x1E695E480];
  v17 = compositionSharedCache_copyFormatReaderForAssetURL(*(v9 + 160), a2, *MEMORY[0x1E695E480], v66);
  if (v17)
  {
LABEL_63:
    v37 = v17;
    v18 = 0;
    goto LABEL_51;
  }

  v18 = v66[0];
  if (!v66[0])
  {
LABEL_59:
    v37 = 4294954516;
    goto LABEL_51;
  }

  v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v19)
  {
    v18 = 0;
    v37 = 4294954514;
    goto LABEL_51;
  }

  v17 = v19(v18, &v65);
  if (v17)
  {
    goto LABEL_63;
  }

  FigSimpleMutexLock();
  OUTLINED_FUNCTION_29();
  if (!v11)
  {
    compositionTable_getDuration(v9, &time1);
    *a5 = time1;
  }

  OUTLINED_FUNCTION_15_39();
  v22 = malloc_type_calloc(v20, 8uLL, v21);
  v18 = v22;
  if (v22)
  {
    v43 = v12;
    v23 = *(v9 + 16);
    v60 = 0;
    if (v23 >= 1)
    {
      v24 = 0;
      do
      {
        v22[v24] = v24;
        v24 = v60 + 1;
        v60 = v24;
      }

      while (v24 < *(v9 + 16));
    }

    if (v65 < 1)
    {
      v35 = v23;
LABEL_47:
      time1 = *a5;
      time2 = *a4;
      inserted = tableTrack_InsertEmptyEditsInTracks(v47, v18, v35, &time1, &time2);
      if (!inserted)
      {
        ++*(v9 + 4);
        FigSimpleMutexUnlock();
        if (*v43)
        {
          mutableComposition_postPossiblyDeferredTracksChangedNotification();
        }

        v37 = 0;
        goto LABEL_51;
      }

LABEL_60:
      v37 = inserted;
    }

    else
    {
      v25 = 0;
      while (1)
      {
        LODWORD(time2.value) = 0;
        v26 = v66[0];
        v27 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v27)
        {
          break;
        }

        inserted = v27(v26, v25, &v62, &v63, &time2);
        if (inserted)
        {
          goto LABEL_60;
        }

        FigBaseObject = FigTrackReaderGetFigBaseObject(v62);
        v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v30)
        {
          break;
        }

        inserted = v30(FigBaseObject, @"TrackFormatDescriptionArray", v50, &v64);
        if (inserted)
        {
          goto LABEL_60;
        }

        v54 = *a5;
        v55 = *(a5 + 2);
        v56 = *a4;
        v57 = *(a4 + 2);
        *&time1.value = *&a3->value;
        epoch = a3->epoch;
        v53 = v57;
        v52 = v56;
        time1.epoch = epoch;
        v58 = a2;
        value = time2.value;
        v60 = 0;
        compositionTable_insertEditSegmentsFromAsset(v47, v18, v23, v64, v63, &time1, 1, &v60);
        if (inserted)
        {
          goto LABEL_60;
        }

        if (v23 < 1)
        {
          v35 = v23;
        }

        else
        {
          v32 = 0;
          v33 = 0;
          v34 = v60;
          v35 = v23;
          do
          {
            v36 = v18[v32];
            if (v36 == v34)
            {
              --v35;
            }

            else
            {
              if (v32 != v33)
              {
                v18[v33] = v36;
              }

              ++v33;
            }

            ++v32;
          }

          while (v23 != v32);
        }

        if (v64)
        {
          CFRelease(v64);
          v64 = 0;
        }

        if (v62)
        {
          CFRelease(v62);
          v62 = 0;
        }

        ++v25;
        v23 = v35;
        if (v25 >= v65)
        {
          goto LABEL_47;
        }
      }

      v37 = 4294954514;
    }
  }

  else
  {
    v37 = 4294954510;
  }

  FigSimpleMutexUnlock();
LABEL_51:
  if (v62)
  {
    CFRelease(v62);
  }

LABEL_53:
  if (v66[0])
  {
    CFRelease(v66[0]);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  free(v18);
  return v37;
}

uint64_t mutableComposition_InsertEmptyTrackSegment(uint64_t a1, int a2, __int128 *a3, CMTime *a4)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_29();
  if (!v8)
  {
    return 4294954516;
  }

  v9 = v7;
  v10 = v7[1];
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_54_18();
  if (v11 != v12)
  {
LABEL_8:
    v16 = 4294954516;
LABEL_9:
    FigSimpleMutexUnlock();
    return v16;
  }

  v13 = *(v10 + 32);
  while (*(v13 + 4) != a2)
  {
    OUTLINED_FUNCTION_47_16();
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v18 = *a3;
  v19 = *(a3 + 2);
  v17 = *a4;
  inserted = compositionTable_insertEmptyTrackSegment(v10, v13, &v18, &v17);
  if (inserted)
  {
    v16 = inserted;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_40_17();
  FigSimpleMutexUnlock();
  if (*v9)
  {
    mutableComposition_postPossiblyDeferredTracksChangedNotification();
  }

  return 0;
}

uint64_t mutableComposition_InsertEmptySegment(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_29();
  if (!v3)
  {
    return 4294954516;
  }

  v4 = v2;
  v5 = v2[1];
  inserted = FigSimpleMutexLock();
  v17 = *(v5 + 16);
  if (v17 < 1)
  {
    v26 = 0;
  }

  else
  {
    v30 = a1;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = MEMORY[0x1E6960CC0];
    do
    {
      v22 = *(v5 + 32);
      v23 = v22 + v18;
      if (*(v22 + v18 + 8) >= 1)
      {
        v33 = *v21;
        v24 = *(v23 + 8);
        if (v24 >= 1)
        {
          v25 = *(v22 + v18 + 16) + 108 * v24;
          OUTLINED_FUNCTION_88_8(inserted, v7, v8, v9, v10, v11, v12, v13, *(v25 - 60), *(v25 - 44), *(v25 - 28), v29, v30, time2.value, *&time2.timescale, time2.epoch, v32, v33.value, *&v33.timescale, v33.epoch, v34, v14, v15, v16);
        }

        OUTLINED_FUNCTION_61_14();
        time2 = v33;
        inserted = CMTimeCompare(&time1, &time2);
        if ((inserted & 0x80000000) != 0)
        {
          OUTLINED_FUNCTION_61_14();
          OUTLINED_FUNCTION_78_7();
          inserted = compositionTable_insertEmptyTrackSegment(v5, v23, &time1, &time2);
          if (inserted)
          {
            v28 = inserted;
            FigSimpleMutexUnlock();
            return v28;
          }

          ++v20;
        }

        v17 = *(v5 + 16);
      }

      ++v19;
      v18 += 168;
    }

    while (v19 < v17);
    if (v20 < 1)
    {
      v26 = 0;
    }

    else
    {
      ++*(v5 + 4);
      v26 = 1;
    }
  }

  FigSimpleMutexUnlock();
  v28 = 0;
  if (v26 && *v4)
  {
    mutableComposition_postPossiblyDeferredTracksChangedNotification();
    return 0;
  }

  return v28;
}

uint64_t mutableComposition_InsertSegmentArrayIntoTrack(uint64_t a1, int a2, const __CFArray *a3, const __CFArray *a4, const __CFArray *a5, const __CFArray *a6, uint64_t a7)
{
  v151 = a6;
  HIDWORD(v137) = a2;
  v167 = *MEMORY[0x1E69E9840];
  v138 = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  v21 = *(DerivedStorage + 8);
  v160 = *MEMORY[0x1E6960CC0];
  v161 = *(MEMORY[0x1E6960CC0] + 16);
  v158 = v160;
  v159 = v161;
  v153 = v160;
  v156 = v160;
  v152 = v161;
  v157 = v161;
  v22 = 4294954516;
  theArray = a3;
  if (!a3 || !a4 || !a5)
  {
    v23 = 0;
    goto LABEL_59;
  }

  v23 = 0;
  if (v151)
  {
    v24 = DerivedStorage;
    v25 = *(a7 + 12);
    if ((v25 & 0x1D) == 1 || (v25 & 1) == 0)
    {
      v142 = a7;
      if ((v25 & 0x1D) == 1 && (*&v162.start.value = *a7, v162.start.epoch = *(a7 + 16), OUTLINED_FUNCTION_8_51(DerivedStorage, v13, v14, v15, v16, v17, v18, v19, v132, v135, v137, v138, v139, a7, v144, v146, v148, theArray, v151, v161, v160), v26 = OUTLINED_FUNCTION_46_14(), CMTimeCompare(v26, v27) < 0))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        v22 = FigSignalErrorAtGM();
      }

      else
      {
        v136 = v7;
        Count = CFArrayGetCount(theArray);
        if (CFArrayGetCount(a4) != Count || CFArrayGetCount(a5) != Count || CFArrayGetCount(v151) != Count)
        {
          v20 = 0;
          v23 = 0;
          v22 = 4294954516;
          goto LABEL_59;
        }

        if (Count >= 1)
        {
          OUTLINED_FUNCTION_63_12();
          v23 = malloc_type_calloc(Count, 8uLL, v29);
          if (!v23)
          {
            v20 = 0;
            v22 = 4294954510;
            goto LABEL_59;
          }

          OUTLINED_FUNCTION_15_39();
          v31 = malloc_type_calloc(Count, 8uLL, v30);
          v20 = v31;
          if (!v31)
          {
            v22 = 4294954510;
            goto LABEL_55;
          }

          v133 = v24;
          v140 = v21;
          v147 = Count;
          v149 = v31;
          v32 = 0;
          v145 = a4;
          while (1)
          {
            valuePtr = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v32);
            if (!ValueAtIndex)
            {
              v35 = 0;
LABEL_81:
              v101 = 0;
              v22 = 4294954516;
              goto LABEL_52;
            }

            v34 = ValueAtIndex;
            v35 = CFArrayGetValueAtIndex(a4, v32);
            if (!v35)
            {
              goto LABEL_81;
            }

            TypeID = CFNumberGetTypeID();
            if (TypeID != CFGetTypeID(v35))
            {
              goto LABEL_82;
            }

            CFNumberGetValue(v35, kCFNumberSInt32Type, &valuePtr);
            v37 = OUTLINED_FUNCTION_151_1();
            v35 = CFArrayGetValueAtIndex(v37, v38);
            if (!v35)
            {
              goto LABEL_81;
            }

            v39 = CFDictionaryGetTypeID();
            if (v39 != CFGetTypeID(v35))
            {
LABEL_82:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_2();
              v22 = FigSignalErrorAtGM();
              v35 = 0;
              v101 = 0;
              goto LABEL_52;
            }

            v40 = a5;
            CMTimeMakeFromDictionary(&v162.start, v35);
            value = v162.start.value;
            flags = v162.start.flags;
            timescale = v162.start.timescale;
            epoch = v162.start.epoch;
            v35 = CFArrayGetValueAtIndex(v151, v32);
            if (!v35)
            {
              break;
            }

            v43 = CFDictionaryGetTypeID();
            if (v43 != CFGetTypeID(v35) || (v44 = CMTimeMakeFromDictionary(&v162.start, v35), v163 = v162.start.value, v52 = v162.start.flags, v164 = v162.start.timescale, (v162.start.flags & 0x1D) != 1) || (v53 = v162.start.epoch, v162.start.value = v163, v162.start.timescale = v164, OUTLINED_FUNCTION_8_51(v44, v45, v46, v47, v48, v49, v50, v51, v133, v136, v137, v138, v140, v142, v145, v147, v149, theArray, v151, v152, v153), v54 = OUTLINED_FUNCTION_46_14(), CMTimeCompare(v54, v55) < 0))
            {
LABEL_66:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_2();
              v22 = FigSignalErrorAtGM();
              v35 = 0;
              v101 = 0;
LABEL_51:
              Count = v147;
              goto LABEL_52;
            }

            CFURLGetTypeID();
            v56 = OUTLINED_FUNCTION_203_0();
            if (v35 == CFGetTypeID(v56) || (CFNullGetTypeID(), v57 = OUTLINED_FUNCTION_203_0(), v35 == CFGetTypeID(v57)))
            {
              *(v149 + 8 * v32) = 1;
              OUTLINED_FUNCTION_11_50();
              v61 = malloc_type_calloc(v58, v59, v60);
              v23[v32] = v61;
              if (!v61)
              {
                goto LABEL_66;
              }

              if ((flags & 0x1D) == 1)
              {
                v162.start.value = value;
                OUTLINED_FUNCTION_41_18();
                OUTLINED_FUNCTION_8_51(v62, v63, v64, v65, v66, v67, v68, v69, v133, v136, v137, v138, v140, v142, v145, v147, v149, theArray, v151, v152, v153);
                v70 = OUTLINED_FUNCTION_46_14();
                if (CMTimeCompare(v70, v71) < 0)
                {
                  goto LABEL_66;
                }

                CFURLGetTypeID();
                v72 = OUTLINED_FUNCTION_203_0();
                if (v35 != CFGetTypeID(v72) || !valuePtr)
                {
                  goto LABEL_66;
                }

                *(v23[v32] + 96) = CFRetain(v34);
                v73 = v23[v32];
                *(v73 + 104) = valuePtr;
                *v73 = value;
                *(v73 + 8) = timescale;
                *(v73 + 12) = flags;
                *(v73 + 16) = epoch;
                v74 = v23[v32];
                v75 = v164;
                *(v74 + 24) = v163;
                *(v74 + 32) = v75;
                *(v74 + 36) = v52;
                *(v74 + 40) = v53;
                v61 = v23[v32];
              }

              v76 = MEMORY[0x1E6960C70];
              v61[3] = *MEMORY[0x1E6960C70];
              *(v61 + 8) = *(v76 + 16);
              v77 = v23[v32];
              *(v77 + 72) = v163;
              *(v77 + 80) = v164;
              *(v77 + 84) = v52;
              *(v77 + 88) = v53;
            }

            else
            {
              OUTLINED_FUNCTION_0_145();
              MEMORY[0x19A8D3660](&FigMutableCompositionGetClassID_sRegisterFigMutableCompositionBaseTypeOnce);
              CMBaseClassGetCFTypeID();
              v78 = OUTLINED_FUNCTION_203_0();
              if (v35 != CFGetTypeID(v78))
              {
                goto LABEL_66;
              }

              if (CMBaseObjectGetVTable() != &kMutableComposition_VTable)
              {
                goto LABEL_66;
              }

              if ((flags & 0x1D) != 1)
              {
                goto LABEL_66;
              }

              v162.start.value = value;
              OUTLINED_FUNCTION_41_18();
              OUTLINED_FUNCTION_8_51(v79, v80, v81, v82, v83, v84, v85, v86, v133, v136, v137, v138, v140, v142, v145, v147, v149, theArray, v151, v152, v153);
              v87 = OUTLINED_FUNCTION_46_14();
              if (CMTimeCompare(v87, v88) < 0 || !valuePtr)
              {
                goto LABEL_66;
              }

              v35 = *(CMBaseObjectGetDerivedStorage() + 8);
              FigSimpleMutexLock();
              if (v35[2] < 1)
              {
LABEL_50:
                v22 = 4294954516;
                v101 = 1;
                goto LABEL_51;
              }

              v89 = valuePtr;
              v90 = v35[4];
              while (*(v90 + 4) != v89)
              {
                OUTLINED_FUNCTION_47_16();
                if (v91)
                {
                  goto LABEL_50;
                }
              }

              v162.start.value = value;
              OUTLINED_FUNCTION_41_18();
              v93 = v92;
              v155.value = v163;
              v155.timescale = v164;
              v155.flags = v52;
              v155.epoch = v53;
              v95 = v94;
              v99 = compositionTable_copyAssetSegmentsFromTrackForTimeRange(v35, v96, &v162.start, &v155.value, v94, v92, v97, v98);
              if (v99)
              {
                Count = v147;
                v20 = v149;
                v22 = v99;
LABEL_53:
                if (!v35)
                {
                  goto LABEL_55;
                }

LABEL_54:
                FigSimpleMutexUnlock();
                goto LABEL_55;
              }

              FigSimpleMutexUnlock();
              v100 = compositionEditSegment_validateSegments(*v95, *v93, 0);
              if (v100)
              {
                v101 = 0;
                Count = v147;
                v22 = v100;
LABEL_52:
                v20 = v149;
                if (!v101)
                {
                  goto LABEL_55;
                }

                goto LABEL_53;
              }

              mutableComposition_addAssetsForURLsFromCompositionForSegments(v138, v34, *v95, *v93);
            }

            a5 = v40;
            a4 = v145;
            Count = v147;
            if (++v32 == v147)
            {
              v105 = FigSimpleMutexLock();
              v113 = *(v140 + 16);
              if (v113 < 1)
              {
                v22 = 4294954516;
                v20 = v149;
                goto LABEL_54;
              }

              v114 = *(v140 + 32);
              v20 = v149;
              while (*(v114 + 4) != HIDWORD(v137))
              {
                v114 += 168;
                if (!--v113)
                {
                  v22 = 4294954516;
                  goto LABEL_54;
                }
              }

              OUTLINED_FUNCTION_8_51(v105, v106, v107, v108, v109, v110, v111, v112, v133, v136, v137, v138, v140, v142, v145, v147, v149, theArray, v151, v152, v153);
              v115 = *(v114 + 8);
              if (v115 >= 1)
              {
                v116 = OUTLINED_FUNCTION_2_126(v115);
                *&v162.start.epoch = v117;
                *&v162.duration.timescale = v118;
                *&v162.start.value = v116;
                CMTimeRangeGetEnd(&v155, &v162);
              }

              v119 = 0;
              v157 = v155.epoch;
              v120 = *(v143 + 12) & 0x1D;
              v156 = *&v155.value;
              v91 = v120 == 1;
              v121 = &v156;
              if (v91)
              {
                v121 = v143;
              }

              v158 = *v121;
              v159 = *(v121 + 2);
              v160 = v158;
              v161 = v159;
              do
              {
                v122 = v23[v119];
                v123 = v20[v119];
                *&v162.start.value = v160;
                v162.start.epoch = v161;
                compositionEditSegment_adjustSegmentStartTimes(v122, v123, &v162.start);
                inserted = compositionTable_insertEditSegmentsIntoTrack(v141, v114);
                if (inserted)
                {
                  v22 = inserted;
                  goto LABEL_54;
                }

                if (v20[v119] >= 1)
                {
                  v125 = 0;
                  v126 = 72;
                  do
                  {
                    v127 = v23[v119] + v126;
                    *&v162.start.value = v160;
                    v162.start.epoch = v161;
                    v128 = *v127;
                    v155.epoch = *(v127 + 16);
                    *&v155.value = v128;
                    v129 = OUTLINED_FUNCTION_46_14();
                    CMTimeAdd(v131, v129, v130);
                    ++v125;
                    v126 += 108;
                  }

                  while (v125 < v20[v119]);
                }

                ++v119;
              }

              while (v119 != Count);
              ++*(v141 + 4);
              FigSimpleMutexUnlock();
              if (*v134)
              {
                mutableComposition_postPossiblyDeferredTracksChangedNotification();
              }

              v22 = 0;
LABEL_55:
              v102 = 0;
              do
              {
                v103 = v23[v102];
                if (v103)
                {
                  compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(v103, v20[v102], 0);
                  free(v23[v102]);
                }

                ++v102;
              }

              while (Count != v102);
              goto LABEL_59;
            }
          }

          v101 = 0;
          v22 = 4294954516;
          goto LABEL_51;
        }

        v22 = 0;
      }
    }

    v20 = 0;
    v23 = 0;
  }

LABEL_59:
  free(v23);
  free(v20);
  return v22;
}

void mutableComposition_AddAssetForURL(uint64_t a1, const void *a2, const void *a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 8);
  v14 = 0;
  cf = 0;
  if (a2 && a3)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v6 || v6(a3, @"assetProperty_FormatReader", &v14, 0, 0))
    {
      goto LABEL_12;
    }

    if (v14 != 2)
    {
      goto LABEL_9;
    }

    v7 = CFGetAllocator(a3);
    CMBaseObject = FigAssetGetCMBaseObject(a3);
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v10 = v9(CMBaseObject, @"assetProperty_FormatReader", v7, &cf);
      v11 = cf;
      if (v10)
      {
        goto LABEL_10;
      }

      if (CMBaseObjectGetVTable() != &kComposite_FormatReader_VTable)
      {
LABEL_9:
        compositionTable_addAssetForURL(v5, a2, a3);
        v11 = cf;
LABEL_10:
        if (v11)
        {
          CFRelease(v11);
        }

        goto LABEL_12;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM();
    }

LABEL_12:
    OUTLINED_FUNCTION_843();
    return;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_843();

  FigSignalErrorAtGM();
}

uint64_t mutableComposition_InsertMutableCompositionSegmentIntoTrack(uint64_t a1, int a2, const void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v78 = *(DerivedStorage + 8);
  v85 = 0;
  v86 = 0;
  if (!a3)
  {
    OUTLINED_FUNCTION_75_8();
    v18 = 4294954516;
    goto LABEL_21;
  }

  v15 = DerivedStorage;
  v76 = a6;
  OUTLINED_FUNCTION_0_145();
  MEMORY[0x19A8D3660]();
  CFTypeID = CMBaseClassGetCFTypeID();
  v17 = CFGetTypeID(a3);
  v7 = 0;
  v18 = 4294954516;
  if (!a4)
  {
    v8 = 0;
    goto LABEL_21;
  }

  v74 = v15;
  v8 = 0;
  if (CFTypeID == v17)
  {
    OUTLINED_FUNCTION_29();
    if (v19)
    {
      OUTLINED_FUNCTION_74_11();
      *&v83.value = *MEMORY[0x1E6960CC0];
      v20 = *(MEMORY[0x1E6960CC0] + 16);
      v29 = OUTLINED_FUNCTION_33_20(v21, v22, v23, v24, v25, v26, v27, v28, v74, v76, v78, a1, v83.value, *&v83.timescale, v83.value, *&v83.timescale, v20, v84, v85, v86, v87[0].value);
      if ((CMTimeCompare(v29, v30) & 0x80000000) == 0)
      {
        OUTLINED_FUNCTION_350();
        if (v19 || (v31 & 1) == 0)
        {
          if (v32 != 1 || (OUTLINED_FUNCTION_5_88(), v41 = OUTLINED_FUNCTION_33_20(v33, v34, v35, v36, v37, v38, v39, v40, v75, v77, v79, v81, v82, *(&v82 + 1), v82, *(&v82 + 1), v20, v84, v85, v86, v87[0].value), (CMTimeCompare(v41, v42) & 0x80000000) == 0))
          {
            if (CMBaseObjectGetVTable() == &kMutableComposition_VTable)
            {
              v43 = *(CMBaseObjectGetDerivedStorage() + 8);
              FigSimpleMutexLock();
              OUTLINED_FUNCTION_54_18();
              if (v44 != v45)
              {
                OUTLINED_FUNCTION_75_8();
              }

              else
              {
                v46 = *(v43 + 32);
                while (*(v46 + 4) != a4)
                {
                  OUTLINED_FUNCTION_47_16();
                  if (v19)
                  {
                    OUTLINED_FUNCTION_75_8();
LABEL_18:
                    v18 = 4294954516;
                    goto LABEL_20;
                  }
                }

                OUTLINED_FUNCTION_74_11();
                v83 = *v77;
                v51 = compositionTable_copyAssetSegmentsFromTrackForTimeRange(v43, v48, v87, &v83.value, &v86, &v85, v49, v50);
                if (v51)
                {
                  v18 = v51;
                  v7 = v85;
                  v8 = v86;
                }

                else
                {
                  FigSimpleMutexUnlock();
                  v7 = v85;
                  v8 = v86;
                  v52 = compositionEditSegment_validateSegments(v86, v85, 0);
                  if (v52)
                  {
                    v18 = v52;
                    goto LABEL_21;
                  }

                  mutableComposition_addAssetsForURLsFromCompositionForSegments(v81, a3, v8, v7);
                  FigSimpleMutexLock();
                  OUTLINED_FUNCTION_54_18();
                  if (v44 != v45)
                  {
                    goto LABEL_18;
                  }

                  v54 = *(v79 + 32);
                  while (*(v54 + 4) != a2)
                  {
                    v54 += 168;
                    if (!--v53)
                    {
                      goto LABEL_18;
                    }
                  }

                  OUTLINED_FUNCTION_29();
                  if (!v19)
                  {
                    *&v83.value = v82;
                    v83.epoch = v20;
                    OUTLINED_FUNCTION_43_16();
                    if (v44 == v45)
                    {
                      v56 = OUTLINED_FUNCTION_2_126(v55);
                      OUTLINED_FUNCTION_86_7(v57, v58, v59, v60, v61, v62, v63, v64, v56, v65, v66, v75, v77, v79, v81, v82, *(&v82 + 1), v83.value, *&v83.timescale, v83.epoch, v84, v85, v86, v67, v68, v69);
                    }

                    v87[0] = v83;
                    epoch = v83.epoch;
                    *a7 = *&v83.value;
                    *(a7 + 16) = epoch;
                  }

                  OUTLINED_FUNCTION_5_88();
                  compositionEditSegment_adjustSegmentStartTimes(v8, v7, v87);
                  v71 = OUTLINED_FUNCTION_177();
                  inserted = compositionTable_insertEditSegmentsIntoTrack(v71, v72);
                  if (!inserted)
                  {
                    OUTLINED_FUNCTION_40_17();
                    FigSimpleMutexUnlock();
                    if (*v75)
                    {
                      mutableComposition_postPossiblyDeferredTracksChangedNotification();
                    }

                    v18 = 0;
                    goto LABEL_21;
                  }

                  v18 = inserted;
                }
              }

LABEL_20:
              FigSimpleMutexUnlock();
              goto LABEL_21;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_20_0();
          v18 = FigSignalErrorAtGM();
        }
      }
    }

    OUTLINED_FUNCTION_75_8();
  }

LABEL_21:
  compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(v8, v7, 0);
  free(v8);
  return v18;
}

uint64_t mutableComposition_InsertMutableCompositionSegment(void *a1, const void *a2, CMTime *a3, __n128 *a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 || (v12 = DerivedStorage, v13 = *(DerivedStorage + 8), OUTLINED_FUNCTION_0_145(), MEMORY[0x19A8D3660](), CFTypeID = CMBaseClassGetCFTypeID(), CFTypeID != CFGetTypeID(a2)) || (OUTLINED_FUNCTION_29(), !v14) || (time1 = *a3, v99 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], CFTypeID = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = CFTypeID, CMTimeCompare(&time1, &time2) < 0) || (OUTLINED_FUNCTION_9_47(a4), OUTLINED_FUNCTION_58_8(v15, v16, v17, v18, v19, v20, v21, v22, v79, v83, v86, v89, v92, a4, v96, v99, a5, v104, *&time2.value, time2.epoch) < 1) || (OUTLINED_FUNCTION_350(), !v14) && (v23 & 1) != 0)
  {
    OUTLINED_FUNCTION_52_16();
    v74 = 4294954516;
    goto LABEL_55;
  }

  if (v24 == 1)
  {
    OUTLINED_FUNCTION_9_47(v103);
    if ((OUTLINED_FUNCTION_58_8(v25, v26, v27, v28, v29, v30, v31, v32, v80, v84, v87, v90, v93, v95, v97, v100, v103, v105, *&time2.value, time2.epoch) & 0x80000000) != 0)
    {
      CFTypeID = 8206;
      goto LABEL_69;
    }
  }

  if (CMBaseObjectGetVTable() != &kMutableComposition_VTable)
  {
    CFTypeID = 8209;
LABEL_69:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    v74 = FigSignalErrorAtGM();
    OUTLINED_FUNCTION_52_16();
    goto LABEL_55;
  }

  v33 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigSimpleMutexLock();
  v101 = v33;
  v34 = *(v33 + 16);
  OUTLINED_FUNCTION_63_12();
  v6 = malloc_type_calloc(v34, 8uLL, v35);
  if (!v6)
  {
    v7 = 0;
    a3 = 0;
LABEL_64:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    v74 = FigSignalErrorAtGM();
    CFTypeID = 0;
LABEL_65:
    FigSimpleMutexUnlock();
    a1 = 0;
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_15_39();
  v7 = malloc_type_calloc(v34, 8uLL, v36);
  if (!v7)
  {
    a3 = 0;
    goto LABEL_64;
  }

  v91 = a3;
  a3 = malloc_type_calloc(v34, 8uLL, 0x6004044C4A2DFuLL);
  if (!a3)
  {
    goto LABEL_64;
  }

  v37 = malloc_type_calloc(v34, 4uLL, 0x100004052888210uLL);
  if (!v37)
  {
    goto LABEL_64;
  }

  v85 = v37;
  v88 = a2;
  v81 = v12;
  v82 = a1;
  v98 = v34;
  if (v34 >= 1)
  {
    v38 = 0;
    v39 = 0;
    v40 = v34;
    v41 = v37;
    while (1)
    {
      v42 = *(v101 + 32);
      OUTLINED_FUNCTION_9_47(v91);
      OUTLINED_FUNCTION_169(v95);
      v46 = compositionTable_copyAssetSegmentsFromTrackForTimeRange(v43, v42 + v38, &time1, &time2.value, &v6[v39], &v7[v39], v44, v45);
      if (v46)
      {
        break;
      }

      v47 = compositionEditSegment_validateSegments(v6[v39], v7[v39], 0);
      if (v47 || (*v41 = *(v42 + v38), v47 = compositionTableTrack_copyTrackFormatDescriptionArrayForTrackCompatibility(v101, v42 + v38), v47))
      {
        v74 = v47;
        goto LABEL_60;
      }

      ++v39;
      ++v41;
      v38 += 168;
      if (!--v40)
      {
        goto LABEL_22;
      }
    }

    v74 = v46;
LABEL_60:
    CFTypeID = v85;
    v34 = v98;
    goto LABEL_65;
  }

LABEL_22:
  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_29();
  if (!v14)
  {
    compositionTable_getDuration(v13, &time1);
    *v103->n128_u64 = time1;
  }

  OUTLINED_FUNCTION_15_39();
  v51 = malloc_type_calloc(v48, v49, v50);
  a1 = v51;
  CFTypeID = v85;
  if (v51)
  {
    v52 = *(v13 + 16);
    if (v52 >= 1)
    {
      v53 = 0;
      do
      {
        v51[v53] = v53;
        ++v53;
      }

      while (v53 < *(v13 + 16));
    }

    if (v98 < 1)
    {
LABEL_42:
      OUTLINED_FUNCTION_9_47(v103);
      OUTLINED_FUNCTION_169(v95);
      v69 = OUTLINED_FUNCTION_502();
      inserted = tableTrack_InsertEmptyEditsInTracks(v69, v70, v71, v72, v73);
      if (!inserted)
      {
        ++*(v13 + 4);
        FigSimpleMutexUnlock();
        v34 = v98;
        if (*v81)
        {
          mutableComposition_postPossiblyDeferredTracksChangedNotification();
        }

        v74 = 0;
        goto LABEL_46;
      }
    }

    else
    {
      v54 = 0;
      while (1)
      {
        mutableComposition_addAssetsForURLsFromCompositionForSegments(v82, v88, v6[v54], v7[v54]);
        OUTLINED_FUNCTION_9_47(v103);
        compositionEditSegment_adjustSegmentStartTimes(v55, v56, &time1);
        v57 = OUTLINED_FUNCTION_502();
        compositionTable_insertEditSegmentsFromAsset(v57, v58, v52, v59, v60, v61, v62, v63);
        if (inserted)
        {
          break;
        }

        if (v52 < 1)
        {
          v67 = v52;
        }

        else
        {
          v65 = 0;
          v66 = 0;
          v67 = v52;
          do
          {
            v68 = a1[v65];
            if (v68)
            {
              if (v65 != v66)
              {
                a1[v66] = v68;
              }

              ++v66;
            }

            else
            {
              --v67;
            }

            ++v65;
          }

          while (v52 != v65);
        }

        ++v54;
        v52 = v67;
        if (v54 == v98)
        {
          goto LABEL_42;
        }
      }
    }

    v74 = inserted;
  }

  else
  {
    v74 = 4294954510;
  }

  v34 = v98;
  FigSimpleMutexUnlock();
LABEL_46:
  if (v6 && v34 >= 1)
  {
    for (i = 0; i != v34; ++i)
    {
      v76 = v6[i];
      if (v76)
      {
        compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(v76, v7[i], 0);
        free(v6[i]);
      }

      if (a3)
      {
        v77 = *(&a3->value + i);
        if (v77)
        {
          CFRelease(v77);
        }
      }
    }
  }

LABEL_55:
  free(v6);
  free(v7);
  free(a3);
  free(CFTypeID);
  free(a1);
  return v74;
}

uint64_t mutableComposition_GetTrackCompatibleWithMutableCompositionTrack(uint64_t a1, const void *a2, int a3, _DWORD *a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (!a2)
  {
    return 4294954516;
  }

  if (!a3)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0_145();
  MEMORY[0x19A8D3660]();
  CFTypeID = CMBaseClassGetCFTypeID();
  if (CFTypeID != CFGetTypeID(a2))
  {
    return 4294954516;
  }

  if (CMBaseObjectGetVTable() == &kMutableComposition_VTable)
  {
    v9 = *(CMBaseObjectGetDerivedStorage() + 8);
    FigSimpleMutexLock();
    if (*(v9 + 16) < 1)
    {
LABEL_10:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      v12 = FigSignalErrorAtGM();
    }

    else
    {
      v10 = *(v9 + 32);
      while (v10[1] != a3)
      {
        OUTLINED_FUNCTION_47_16();
        if (v11)
        {
          goto LABEL_10;
        }
      }

      v14 = *v10;
      v15 = compositionTableTrack_copyTrackFormatDescriptionArrayForTrackCompatibility(v9, v10);
      if (!v15)
      {
        FigSimpleMutexUnlock();
        FigSimpleMutexLock();
        CompatibleTrackForFormatDescriptionArrayAndMediaType = compositionTable_findCompatibleTrackForFormatDescriptionArrayAndMediaType(v7, 0, *(v7 + 16), 0, v14);
        if (CompatibleTrackForFormatDescriptionArrayAndMediaType < 0)
        {
          FigSimpleMutexUnlock();
          return 4294954453;
        }

        else
        {
          v17 = *(*(v7 + 32) + 168 * CompatibleTrackForFormatDescriptionArrayAndMediaType + 4);
          FigSimpleMutexUnlock();
          v12 = 0;
          if (a4)
          {
            *a4 = v17;
          }
        }

        return v12;
      }

      v12 = v15;
    }

    FigSimpleMutexUnlock();
    return v12;
  }

LABEL_18:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_5();

  return FigSignalErrorAtGM();
}

uint64_t mutableComposition_CopyAsset(const void *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CFGetAllocator(a1);
  v17 = 0;
  if (!a4)
  {
    return 0;
  }

  v10 = v9;
  if (!a2)
  {
    v14 = *(DerivedStorage + 24);
    if (v14)
    {
      v17 = CFRetain(v14);
LABEL_11:
      v13 = 0;
      *a4 = v17;
      return v13;
    }
  }

  cf = 0;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v11)
  {
    v12 = v11(a1, a2, a3, &cf);
    if (v12)
    {
      return v12;
    }

    v13 = FigAssetCreateWithFormatReader(v10, cf, 0, 0, &v17);
    CFRelease(cf);
    if (a2 || v13)
    {
      if (v13)
      {
        return v13;
      }
    }

    else
    {
      *(DerivedStorage + 24) = CFRetain(v17);
    }

    goto LABEL_11;
  }

  return 4294954514;
}

uint64_t composite_formatReader_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *DerivedStorage;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  if (a2)
  {
    v10 = DerivedStorage;
    if (CFEqual(a2, @"Identifier"))
    {
      v11 = kFigFormatReaderIdentifier_Composite;
LABEL_4:
      v12 = CFRetain(*v11);
LABEL_12:
      v15 = 0;
      *a4 = v12;
      return v15;
    }

    if (CFEqual(a2, @"Duration") || CFEqual(a2, @"NominalDuration") || CFEqual(a2, @"EstimatedDuration"))
    {
      v14 = *CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_106(MEMORY[0x1E6960CC0]);
      FigSimpleMutexLock();
      compositionTable_getDuration(v14, &v34);
      FigSimpleMutexUnlock();
      v33 = v34;
      v12 = CMTimeCopyAsDictionary(&v33, a3);
      goto LABEL_12;
    }

    if (CFEqual(a2, @"AccurateDurationIsKnown") || CFEqual(a2, @"SampleCursorTimeAccuracyIsExact"))
    {
      v11 = MEMORY[0x1E695E4D0];
      goto LABEL_4;
    }

    if (CFEqual(a2, @"TrackReferenceDictionary"))
    {
      FigSimpleMutexLock();
      v16 = *(v9 + 48);
      if (v16)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(a3, 0, v16);
      }

      else
      {
        MutableCopy = 0;
      }

      *a4 = MutableCopy;
      FigSimpleMutexUnlock();
      return 0;
    }

    if (CFEqual(a2, @"CanMutate"))
    {
      v11 = MEMORY[0x1E695E4D0];
      if (!*(v10 + 24))
      {
        v11 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_4;
    }

    if (CFEqual(a2, @"AlternateGroupArray") || CFEqual(a2, @"AlternateGroupAssignmentsArray"))
    {
      v12 = compositeFormatReader_copyAlternateGroupArray(a1, a3);
      goto LABEL_12;
    }

    if (CFEqual(a2, @"QuickTimeUserDataReader"))
    {
      v18 = OUTLINED_FUNCTION_283();
      v20 = compositionTable_copyQuickTimeUserDataReader(v18, v19);
      if (!v20)
      {
        goto LABEL_32;
      }

      return v20;
    }

    if (CFEqual(a2, @"QuickTimeMetadataReader"))
    {
      v21 = OUTLINED_FUNCTION_283();
      v20 = compositionTable_copyQuickTimeMetadataReader(v21, v22);
      if (v20)
      {
        return v20;
      }

LABEL_32:
      if (*a4)
      {
        return 0;
      }

      else
      {
        return 4294954513;
      }
    }

    if (CFEqual(a2, @"ISOUserDataReader"))
    {
      v23 = OUTLINED_FUNCTION_283();
      v20 = compositionTable_copyISOUserDataReader(v23, v24);
      if (v20)
      {
        return v20;
      }

      goto LABEL_32;
    }

    if (CFEqual(a2, @"iTunesMetadataReader"))
    {
      v25 = OUTLINED_FUNCTION_283();
      v20 = compositionTable_copyiTunesMetadataReader(v25, v26);
      if (v20)
      {
        return v20;
      }

      goto LABEL_32;
    }

    if (CFEqual(a2, @"MetadataReaders"))
    {
      compositionTable_copyQuickTimeUserDataReader(v9, &v38);
      compositionTable_copyQuickTimeMetadataReader(v9, &v37);
      compositionTable_copyISOUserDataReader(v9, &v36);
      compositionTable_copyiTunesMetadataReader(v9, &v35);
      v27 = v38;
      v28 = v36;
      v29 = v37;
      v30 = v35;
      if (!v38 && !v36 && !v37 && !v35)
      {
        return 0;
      }

      Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v32 = Mutable;
        if (v29)
        {
          CFArrayAppendValue(Mutable, v29);
        }

        if (v30)
        {
          CFArrayAppendValue(v32, v30);
        }

        if (v27)
        {
          CFArrayAppendValue(v32, v27);
        }

        if (v28)
        {
          CFArrayAppendValue(v32, v28);
        }

        v15 = 0;
        *a4 = v32;
        if (!v27)
        {
          goto LABEL_60;
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        v15 = FigSignalErrorAtGM();
        if (!v27)
        {
          goto LABEL_60;
        }
      }

      CFRelease(v27);
LABEL_60:
      if (v29)
      {
        CFRelease(v29);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      if (v30)
      {
        CFRelease(v30);
      }

      return v15;
    }

    if (!CFEqual(a2, @"MetadataReaderTypes"))
    {
      return 4294954512;
    }

    return compositionTable_createAvailableMetadataReaderPropertiesArray(a3, v9, a4);
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM();
  }
}

uint64_t composite_formatReader_CopyTrackByID(const void *a1, int a2, void *a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *DerivedStorage;
  FigSimpleMutexLock();
  v10 = *(v9 + 16);
  if (v10 < 1)
  {
LABEL_5:
    FigSimpleMutexUnlock();
    return 4294954453;
  }

  else
  {
    v11 = (*(v9 + 32) + 4);
    while (*v11 != a2)
    {
      v11 += 42;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    if (a4)
    {
      *a4 = *(v11 - 1);
    }

    FigSimpleMutexUnlock();
    if (!a3)
    {
      return 0;
    }

    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(DerivedStorage + 16), a2);
    *a3 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    FigSimpleMutexUnlock();
    if (*a3)
    {
      return 0;
    }

    CFGetAllocator(a1);
    v14 = *CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v15 = *(v14 + 16);
    if (v15 < 1)
    {
LABEL_16:
      FigSimpleMutexUnlock();
      v12 = 4294954453;
    }

    else
    {
      v16 = (*(v14 + 32) + 4);
      while (*v16 != a2)
      {
        v16 += 42;
        if (!--v15)
        {
          goto LABEL_16;
        }
      }

      v17 = *(v16 - 1);
      FigSimpleMutexUnlock();
      FigTrackReaderGetClassID();
      v18 = CMDerivedObjectCreate();
      if (v18 || (v19 = CMBaseObjectGetDerivedStorage(), FigEditCursorServiceGetClassID(), v18 = CMDerivedObjectCreate(), v18) || (v27 = v17, v20 = CMBaseObjectGetDerivedStorage(), FigEditCursorServiceGetClassID(), v18 = CMDerivedObjectCreate(), v18) || (v26 = CMBaseObjectGetDerivedStorage(), FigSampleCursorServiceGetClassID(), v18 = CMDerivedObjectCreate(), v18))
      {
        v12 = v18;
      }

      else
      {
        v21 = CMBaseObjectGetDerivedStorage();
        *v19 = v14;
        FigAtomicIncrement32();
        *(v19 + 8) = a2;
        *(v19 + 12) = v27;
        *(v19 + 16) = 0;
        *(v19 + 24) = 0;
        *(v19 + 32) = 0;
        *v20 = v14;
        FigAtomicIncrement32();
        *(v20 + 8) = a2;
        *(v20 + 12) = v27;
        *v26 = v14;
        FigAtomicIncrement32();
        *(v26 + 8) = v27;
        *v21 = v14;
        FigAtomicIncrement32();
        v12 = 0;
        *(v21 + 8) = a2;
        *(v21 + 12) = v27;
      }
    }

    if (!v12)
    {
      FigSimpleMutexLock();
      v22 = CFDictionaryContainsKey(*(DerivedStorage + 16), a2);
      v23 = *(DerivedStorage + 16);
      if (v22)
      {
        v24 = CFDictionaryGetValue(v23, a2);
      }

      else
      {
        CFDictionarySetValue(v23, a2, 0);
        v24 = 0;
      }

      *a3 = v24;
      if (v24)
      {
        CFRetain(v24);
      }

      FigSimpleMutexUnlock();
      return 0;
    }
  }

  return v12;
}

uint64_t composite_formatReader_CopyTrackByType(const void *a1, uint64_t a2, int a3, void *a4, int *a5)
{
  v10 = *CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v11 = *(v10 + 16);
  if (v11 < 1)
  {
LABEL_7:
    FigSimpleMutexUnlock();
    return 4294954453;
  }

  v12 = (*(v10 + 32) + 4);
  while (*(v12 - 1) != a3)
  {
LABEL_6:
    v12 += 42;
    if (!--v11)
    {
      goto LABEL_7;
    }
  }

  if (a2)
  {
    --a2;
    goto LABEL_6;
  }

  v14 = *v12;
  FigSimpleMutexUnlock();
  if (!v14)
  {
    return 4294954453;
  }

  if (a5)
  {
    *a5 = v14;
  }

  return composite_formatReader_CopyTrackByID(a1, v14, a4, 0);
}

uint64_t compositionTable_getMaxEditRate(uint64_t a1, int a2, float *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  cf = 0;
  v55 = 0;
  FigSimpleMutexLock();
  v6 = *(a1 + 16);
  if (v6 < 1)
  {
LABEL_5:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v8 = FigSignalErrorAtGM();
LABEL_6:
    v9 = v8;
  }

  else
  {
    v7 = (*(a1 + 32) + 8);
    while (*(v7 - 1) != a2)
    {
      v7 += 21;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    if (*v7 >= 1)
    {
      v9 = 0;
      HIDWORD(v51) = 0;
      v10 = 0;
      v11 = *MEMORY[0x1E695E480];
      v12 = @"MaxEditRate";
      v13 = 1.0;
      v14 = 72;
      while (1)
      {
        v15 = v7[1] + v14;
        if ((*(v15 - 60) & 0x1D) == 1)
        {
          v8 = compositionTable_copyConcreteTrackReaderForAssetURLTrackIDMediaType(a1, *(v15 + 24), *(v15 + 32), *(v7 - 2), v11, &v55);
          if (v8)
          {
            goto LABEL_6;
          }

          v16 = v55;
          FigTrackReaderGetFigBaseObject(v55);
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v17 = OUTLINED_FUNCTION_151_1();
            v19 = v18(v17);
            if (v19)
            {
              v9 = v19;
            }

            else
            {
              v50 = v12;
              HIDWORD(v53) = 1065353216;
              CFNumberGetValue(cf, kCFNumberFloat32Type, &v53 + 4);
              v20 = v7[1] + v14;
              v48 = *(v20 + 16);
              v58 = *(v20 - 48);
              v21 = *(v20 - 36);
              v59 = *(v20 - 40);
              v56 = *v20;
              v22 = *(v20 + 12);
              v57 = *(v20 + 8);
              if ((v21 & 0x1D) == 1 && (v22 & 0x1D) == 1)
              {
                OUTLINED_FUNCTION_80_7();
                time.epoch = v24;
                v46 = v24;
                if (CMTimeGetSeconds(&time) != 0.0 && OUTLINED_FUNCTION_35_16(v25, v26, v27, v28, v29, v30, v31, v32, v45, v46, v48, v50, v51, time.value, time.timescale, time.flags, time.epoch, v53, cf, v55, v56, v57) != 0.0)
                {
                  OUTLINED_FUNCTION_80_7();
                  time.epoch = v33;
                  Seconds = CMTimeGetSeconds(&time);
                  v43 = Seconds / OUTLINED_FUNCTION_35_16(v35, v36, v37, v38, v39, v40, v41, v42, v45, v47, v49, v50, v51, time.value, time.timescale, time.flags, time.epoch, v53, cf, v55, v56, v57);
                  *(&v53 + 1) = *(&v53 + 1) * v43;
                }
              }

              if (HIDWORD(v51))
              {
                v12 = v50;
                if (v13 < *(&v53 + 1))
                {
                  v13 = *(&v53 + 1);
                }
              }

              else
              {
                v13 = *(&v53 + 1);
                v12 = v50;
              }

              v9 = 0;
              HIDWORD(v51) = 1;
            }
          }

          else
          {
            v9 = 4294954514;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v16)
          {
            CFRelease(v16);
            v55 = 0;
          }
        }

        ++v10;
        v14 += 108;
        if (v10 >= *v7)
        {
          goto LABEL_35;
        }
      }
    }

    v9 = 0;
    v13 = 1.0;
LABEL_35:
    *a3 = v13;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  return v9;
}