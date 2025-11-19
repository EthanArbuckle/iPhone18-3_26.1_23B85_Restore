uint64_t FigNetworkWirelessReportingInterfaceCopyWifiStats(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!a1)
  {
    FigNetworkWirelessReportingInterfaceCopyWifiStats_cold_1();
  }

  v3 = +[FigNetworkWirelessReportingInterface globalInterface];
  v4 = [v3 wifiManager];
  v5 = [v4 getLatestWiFiStats];

  if (v5)
  {
    v6 = 0;
    *a1 = v5;
  }

  else
  {
    FigNetworkWirelessReportingInterfaceCopyWifiStats_cold_2(&v8);
    v6 = v8;
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

uint64_t FigNetworkWirelessReportingInterfaceCopyWTEPredictionStats(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!a1)
  {
    FigNetworkWirelessReportingInterfaceCopyWTEPredictionStats_cold_1();
  }

  v3 = +[FigNetworkWirelessReportingInterface globalInterface];
  v4 = [v3 wtePredictionProvider];
  v5 = [v4 copyWTEPredictionStats];

  if (v5)
  {
    v6 = 0;
    *a1 = v5;
  }

  else
  {
    FigNetworkWirelessReportingInterfaceCopyWTEPredictionStats_cold_2(&v8);
    v6 = v8;
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

uint64_t FigNetworkWirelessReportingInterfaceCopyCellStats(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!a1)
  {
    FigNetworkWirelessReportingInterfaceCopyCellStats_cold_1();
  }

  v3 = +[FigNetworkWirelessReportingInterface globalInterface];
  v4 = [v3 cellManager];
  v5 = [v4 getLatestCellStats];

  if (v5)
  {
    v6 = 0;
    *a1 = v5;
  }

  else
  {
    FigNetworkWirelessReportingInterfaceCopyCellStats_cold_2(&v8);
    v6 = v8;
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

void sub_19671BD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19671C450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19671C778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19671CB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_5_96()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_9_54()
{

  return [v0 setValue:v1 forKey:?];
}

uint64_t OUTLINED_FUNCTION_11_53()
{

  return [v0 setValue:v1 forKey:?];
}

uint64_t OUTLINED_FUNCTION_12_51()
{

  return [v0 setValue:v1 forKey:?];
}

uint64_t FigStreamingPlaylistEnsureMediaURL(uint64_t a1, const __CFURL *a2, const __CFURL *a3, CFTypeRef *a4, CFURLRef *a5)
{
  if (a4)
  {
    if (!*a4)
    {
      CFURLFromCFString = StreamingPlaylistCreateCFURLFromCFString(a1, a2);
      *a4 = CFURLFromCFString;
      if (!CFURLFromCFString)
      {
        FigStreamingPlaylistEnsureMediaURL_cold_1(&v13);
        return v13;
      }
    }
  }

  if (!a5 || *a5)
  {
    return 0;
  }

  if (!FigCFEqual())
  {
    v12 = StreamingPlaylistCreateCFURLFromCFString(a1, a3);
    *a5 = v12;
    if (!v12)
    {
      FigStreamingPlaylistEnsureMediaURL_cold_2(&v14);
      return v14;
    }

    return 0;
  }

  if (*a4)
  {
    v11 = CFRetain(*a4);
  }

  else
  {
    v11 = 0;
  }

  result = 0;
  *a5 = v11;
  return result;
}

CFURLRef StreamingPlaylistCreateCFURLFromCFString(uint64_t a1, const __CFURL *a2)
{
  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  if (CStringPtrAndBufferToFree)
  {
    v4 = CStringPtrAndBufferToFree;
    AllocatorForMedia = FigGetAllocatorForMedia();
    v6 = strlen(v4);
    v7 = CFURLCreateWithBytes(AllocatorForMedia, v4, v6, 0x8000100u, a2);
  }

  else
  {
    v7 = 0;
  }

  free(0);
  return v7;
}

const __CFArray *FigStreamPlaylistInitializeIndexValidation(uint64_t a1)
{
  FigMediaPlaylistSetHasEndTag(a1, 0);
  FigMediaPlaylistSetPlaylistActiveDurationSecs(a1, 0.0);
  FigMediaPlaylistSetHasOnlyIFrames(a1, 0);
  for (i = 0; ; ++i)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    if (MediaSegmentSpecifiers)
    {
      MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
    }

    if (i >= MediaSegmentSpecifiers)
    {
      break;
    }

    v4 = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
    FigMediaSegmentSpecifierSetIsReadInCurrent(ValueAtIndex, 0);
    FigMediaSegmentSpecifierSetChangedInCurrent(ValueAtIndex, 0);
  }

  for (j = 0; ; ++j)
  {
    MapSegmentSpecifiers = FigMediaPlaylistGetMapSegmentSpecifiers(a1);
    if (MapSegmentSpecifiers)
    {
      MapSegmentSpecifiers = CFArrayGetCount(MapSegmentSpecifiers);
    }

    if (j >= MapSegmentSpecifiers)
    {
      break;
    }

    v8 = FigMediaPlaylistGetMapSegmentSpecifiers(a1);
    v9 = CFArrayGetValueAtIndex(v8, j);
    FigMediaSegmentSpecifierSetIsReadInCurrent(v9, 0);
    FigMediaSegmentSpecifierSetChangedInCurrent(v9, 0);
  }

  for (k = 0; ; ++k)
  {
    result = FigMediaPlaylistGetContentKeySpecifiers(a1);
    if (result)
    {
      result = CFArrayGetCount(result);
    }

    if (k >= result)
    {
      break;
    }

    ContentKeySpecifiers = FigMediaPlaylistGetContentKeySpecifiers(a1);
    v13 = CFArrayGetValueAtIndex(ContentKeySpecifiers, k);
    FigContentKeySpecifierSetIsReadInCurrent(v13, 0);
    FigContentKeySpecifierSetIsChangedInCurrent(v13, 0);
  }

  return result;
}

BOOL FigStreamingPlaylistVerifyM3UPlaylist(CMBlockBufferRef theBuffer, _BYTE *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = 0;
  }

  if (CMBlockBufferGetDataLength(theBuffer) < 0xB)
  {
    return 0;
  }

  __s1 = 0;
  if (CMBlockBufferAccessDataBytes(theBuffer, 0, 0xBuLL, temporaryBlock, &__s1))
  {
    return 0;
  }

  if (a2)
  {
    *a2 = 1;
  }

  return StreamingPlaylist_VerifyLeadingMagicNumber(__s1, 0) == 0;
}

uint64_t StreamingPlaylist_VerifyLeadingMagicNumber(char *__s1, char **a2)
{
  if (!__s1)
  {
    StreamingPlaylist_VerifyLeadingMagicNumber_cold_1();
    return 4294954650;
  }

  v3 = __s1;
  if (*__s1 == 239 && __s1[1] == 187 && __s1[2] == 191)
  {
    v4 = __s1[3];
    if ((v4 & 0x80000000) != 0)
    {
      v5 = __maskrune(v4, 0x500uLL);
    }

    else
    {
      v5 = *(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x500;
    }

    if (!v5)
    {
      v3 += 3;
    }
  }

  if (strncmp(v3, "#EXTM3U", 7uLL))
  {
    return 4294954650;
  }

  v8 = v3[7];
  v7 = v3 + 7;
  v6 = v8;
  if ((v8 & 0x80000000) != 0)
  {
    if (!__maskrune(v6, 0x500uLL))
    {
      goto LABEL_17;
    }

    return 4294954650;
  }

  if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x500) != 0)
  {
    return 4294954650;
  }

LABEL_17:
  result = 0;
  if (a2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t FigStreamPlaylistParseInProcess(OpaqueCMBlockBuffer *a1, const __CFURL *a2, const __CFURL *a3, _DWORD *a4, int a5, int a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, const __CFDictionary *a11, const __CFDictionary *a12, CFTypeRef *a13, CFTypeRef *a14)
{
  v649 = *MEMORY[0x1E69E9840];
  *&ii = 0.0;
  dataPointerOut = 0;
  v633 = 0;
  v634 = 0;
  BitRate = 0.0;
  v632 = 0;
  v629 = -1;
  v630 = -1;
  v628 = 0;
  v626 = 0;
  v627 = 0;
  v624 = 0;
  v625 = 0;
  v623 = 0;
  v621 = 0;
  v622 = 0;
  v619 = 0;
  v620 = 0;
  v617 = 0;
  v618 = 0;
  v615 = 0u;
  v616 = 0u;
  v614 = 0u;
  valuePtr = 0;
  v612 = 0;
  v611 = 0.0;
  v610 = 0.0;
  v609 = -1;
  cf = 0;
  v607 = 0;
  v606 = 0;
  v605 = 0;
  v604 = 0;
  value = 0;
  v602 = 0;
  v18 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v601 = 1;
  theSet = Mutable;
  if (!Mutable)
  {
    FigStreamPlaylistParseInProcess_cold_33(&returnedPointerOut);
    v576 = 0;
    v51 = 0;
    v52 = 0;
    v22 = 0;
    v53 = 0;
    v597 = 0;
    v595 = 0;
    v562 = 0;
LABEL_1245:
    v590 = 0;
    v589 = 0;
    v584 = 0;
    v585 = 0;
    v587 = 0;
    v586 = 0;
    v583 = 0;
    v573 = 0;
    v575 = 0;
LABEL_1246:
    matched = returnedPointerOut;
    goto LABEL_1402;
  }

  baseURL = a2;
  structureAllocator = v18;
  if ((readPref & 1) == 0)
  {
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    readPref = 1;
  }

  if (a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = a2;
  }

  if (*__error())
  {
    v562 = *__error();
    *__error() = 0;
  }

  else
  {
    v562 = 0;
  }

  LOBYTE(temporaryBlock) = 0;
  *&blockBufferOut = 0;
  v641 = 0;
  *&returnedPointerOut = 0.0;
  DataLength = CMBlockBufferGetDataLength(a1);
  v22 = DataLength;
  if (!DataLength)
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v597 = 0;
    v595 = 0;
    v590 = 0;
    v589 = 0;
    v584 = 0;
    v585 = 0;
    v587 = 0;
    v586 = 0;
    v583 = 0;
    v573 = 0;
    v575 = 0;
    v576 = v641;
    matched = 4294954656;
    goto LABEL_1402;
  }

  appended = CMBlockBufferAccessDataBytes(a1, DataLength - 1, 1uLL, &temporaryBlock, &returnedPointerOut);
  if (appended)
  {
    goto LABEL_18;
  }

  if (*&returnedPointerOut != 0.0)
  {
    if (*returnedPointerOut)
    {
      LOBYTE(temporaryBlock) = 0;
      appended = CMBlockBufferCreateWithBufferReference(v18, a1, 0, v22, 0, &blockBufferOut);
      if (appended)
      {
        goto LABEL_18;
      }

      appended = CMBlockBufferAppendMemoryBlock(blockBufferOut, &temporaryBlock, 1uLL, *MEMORY[0x1E695E498], 0, 0, 1uLL, 0);
      if (appended)
      {
        goto LABEL_18;
      }

      a1 = blockBufferOut;
    }

    appended = CMBlockBufferCreateContiguous(v18, a1, v18, 0, 0, 0, 0, &v641);
LABEL_18:
    matched = appended;
    goto LABEL_19;
  }

  matched = 4294954656;
LABEL_19:
  v25 = v641;
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  v576 = v25;
  if (matched)
  {
    goto LABEL_46;
  }

  DataPointer = CMBlockBufferGetDataPointer(v25, 0, 0, 0, &dataPointerOut);
  if (DataPointer)
  {
    goto LABEL_45;
  }

  v27 = dataPointerOut;
  v28 = CMBlockBufferGetDataLength(v25);
  *&v615 = a2;
  BYTE8(v616) = a6;
  *(&v614 + 1) = a9;
  *&v616 = v27;
  BYTE9(v616) = a5;
  *(&v615 + 1) = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!*(&v615 + 1))
  {
    FigStreamPlaylistParseInProcess_cold_32(&returnedPointerOut);
LABEL_1244:
    v51 = 0;
    v52 = 0;
    v22 = 0;
    v53 = 0;
    v597 = 0;
    v595 = 0;
    goto LABEL_1245;
  }

  if (a14 && *a14)
  {
    v627 = CFRetain(*a14);
    FigMediaPlaylistGetMediaSegmentSpecifiers(v627);
    LastValue = FigCFArrayGetLastValue();
    if (LastValue)
    {
      DiscontinuityDomain = FigMediaSegmentSpecifierGetDiscontinuityDomain(LastValue);
    }

    else
    {
      DiscontinuityDomain = 0;
    }

    for (i = 0; ; ++i)
    {
      DateRangeSpecifiers = FigMediaPlaylistGetDateRangeSpecifiers(v627);
      if (DateRangeSpecifiers)
      {
        DateRangeSpecifiers = CFArrayGetCount(DateRangeSpecifiers);
      }

      if (i >= DateRangeSpecifiers)
      {
        break;
      }

      v46 = FigMediaPlaylistGetDateRangeSpecifiers(v627);
      ValueAtIndex = CFArrayGetValueAtIndex(v46, i);
      FigDateRangeSpecifierSetTempDuration(ValueAtIndex, -1.0);
      FigDateRangeSpecifierSetTempPlannedDuration(ValueAtIndex, -1.0);
      FigDateRangeSpecifierSetReadInCurrent(ValueAtIndex, 0);
      FigDateRangeSpecifierSetTempEndDate(ValueAtIndex, 0);
    }

    FigMediaPlaylistSetRenditionReportSpecifiers(v627, 0);
    if (FigMediaPlaylistGetPreloadHint(v627))
    {
      PreloadHint = FigMediaPlaylistGetPreloadHint(v627);
      FigMediaSegmentSpecifierSetIsReadInCurrent(PreloadHint, 0);
    }

    if (FigMediaPlaylistGetPreloadMapHint(v627))
    {
      PreloadMapHint = FigMediaPlaylistGetPreloadMapHint(v627);
      FigMediaSegmentSpecifierSetIsReadInCurrent(PreloadMapHint, 0);
    }

    PartHoldBackDuration = FigMediaPlaylistGetPartHoldBackDuration(v627);
    HoldBackDuration = FigMediaPlaylistGetHoldBackDuration(v627);
    AllocatorForMedia = FigGetAllocatorForMedia();
    DataPointer = FigMultivariantPlaylistCreateEmpty(AllocatorForMedia, &v602);
    if (DataPointer)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v30 = FigGetAllocatorForMedia();
    DataPointer = FigMediaPlaylistCreateEmpty(v30, &v627);
    if (DataPointer)
    {
LABEL_45:
      matched = DataPointer;
      goto LABEL_46;
    }

    FigMediaPlaylistSetPlaylistType(v627, 0);
    FigMediaPlaylistSetHasDiscontinuitySequence(v627, 0);
    FigMediaPlaylistSetDoesServerSupportsBlockingReload(v627, 0);
    HoldBackDuration = 0.0;
    FigMediaPlaylistSetSkipDeltaBoundary(v627, 0.0);
    if (a13 && *a13)
    {
      v602 = CFRetain(*a13);
      v32 = v627;
      HasIndependentSegments = FigMultivariantPlaylistHasIndependentSegments(v602);
      FigMediaPlaylistSetHasIndependentSegments(v32, HasIndependentSegments);
      v34 = v627;
      StartTimeValue = FigMultivariantPlaylistGetStartTimeValue(v602);
      FigMediaPlaylistSetStartTimeValue(v34, StartTimeValue);
      v36 = v627;
      IsStartTimePrecise = FigMultivariantPlaylistIsStartTimePrecise(v602);
      FigMediaPlaylistSetIsStartTimePrecise(v36, IsStartTimePrecise);
      v38 = v627;
      HasStartTime = FigMultivariantPlaylistHasStartTime(v602);
      FigMediaPlaylistSetHasStartTime(v38, HasStartTime);
      v40 = v627;
      Version = FigMultivariantPlaylistGetVersion(v602);
      FigMediaPlaylistSetVersion(v40, Version);
      DiscontinuityDomain = 0;
      PartHoldBackDuration = 0.0;
    }

    else
    {
      v43 = FigGetAllocatorForMedia();
      DataPointer = FigMultivariantPlaylistCreateEmpty(v43, &v602);
      DiscontinuityDomain = 0;
      PartHoldBackDuration = 0.0;
      if (DataPointer)
      {
        goto LABEL_45;
      }
    }
  }

  FigMediaPlaylistSetHasPartTag(v627, 0);
  FigMediaPlaylistSetDateStampCount(v627, 0);
  v54 = v627;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  FigMediaPlaylistSetLastModifiedTime(v54, UpTimeNanoseconds);
  v56 = FigGetAllocatorForMedia();
  DataPointer = FigMediaSegmentSpecifierCreateEmpty(v56, &v625);
  if (DataPointer)
  {
    goto LABEL_45;
  }

  FigMediaSegmentSpecifierSetTimeInSeconds(v625, 0.0);
  FigMediaSegmentSpecifierSetTimeOffsetInSeconds(v625, 0.0);
  FigStreamPlaylistInitializeIndexValidation(v627);
  v57 = StreamingPlaylist_VerifyLeadingMagicNumber(v27, &ii);
  matched = v57;
  if (a6 == 1 && v57)
  {
    _StreamPlaylistLogError(v57, 4294955027, &v614, @"Missing #EXTM3U");
    goto LABEL_46;
  }

  if (v57)
  {
LABEL_46:
    v51 = 0;
    v52 = 0;
    v22 = 0;
    v53 = 0;
    v597 = 0;
    v595 = 0;
    v590 = 0;
    v589 = 0;
    v584 = 0;
    v585 = 0;
    v587 = 0;
    v586 = 0;
    v583 = 0;
    goto LABEL_1401;
  }

  v58 = ii;
  v59 = &v58[strcspn(ii, "\r\n")];
  v60 = strspn(v59, "\r\n");
  v61 = v627;
  TargetDuration = FigMediaPlaylistGetTargetDuration(v627);
  FigMediaPlaylistSetAvgSegmentDuration(v61, TargetDuration);
  FigMediaPlaylistSetMaxSegmentDuration(v627, 0.0);
  FigMediaPlaylistSetParseDate(v627, 0);
  v63 = FigGetAllocatorForMedia();
  Current = CFAbsoluteTimeGetCurrent();
  v65 = CFDateCreate(v63, Current);
  FigMediaPlaylistSetParseDate(v627, v65);
  if (v65)
  {
    CFRelease(v65);
  }

  if (!FigMediaPlaylistGetParseDate(v627))
  {
    FigStreamPlaylistParseInProcess_cold_31(&returnedPointerOut);
    goto LABEL_1244;
  }

  v526 = v20;
  v543 = 0;
  v545 = 0;
  v553 = 0;
  v538 = 0;
  *v540 = 0;
  v541 = 0;
  v560 = 0;
  v533 = 0;
  v534 = 0;
  v555 = 0;
  v557 = 0;
  v546 = 0;
  v548 = 0;
  v558 = 0;
  v66 = 0;
  v522 = 0;
  v554 = 0;
  v531 = 0;
  v532 = 0;
  v537 = 0;
  v597 = 0;
  key = 0;
  v544 = 0;
  v552 = 0;
  v561 = 0;
  v572 = 0;
  v536 = 0;
  v542 = 0;
  v565 = 0;
  v528 = 0;
  v525 = 0;
  NextSegment = 0;
  v578 = 0;
  v563 = 0;
  v590 = 0;
  v589 = 0;
  v584 = 0;
  v585 = 0;
  v587 = 0;
  v586 = 0;
  v529 = 0;
  v530 = 0;
  v581 = 0;
  v549 = 0;
  v583 = 0;
  v523 = 0;
  v68 = 0;
  v69 = &v59[v60];
  v596 = &v27[v28];
  v70 = 0;
  v71 = -1.0;
  v72 = 0.0;
  v73 = 0.0;
  v74 = 0.0;
  v75 = 0.0;
  v527 = -2;
  v566 = 1;
  v539 = 1;
  v535 = -1;
  v76 = a5;
  while (1)
  {
    if (v69 >= v596 || !*v69)
    {
      PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(v625);
      if (PartialSegments)
      {
        Count = CFArrayGetCount(PartialSegments);
        v319 = v572;
        v320 = key;
        if (Count < 1)
        {
          v337 = v542;
LABEL_995:
          if (v320 >= 1)
          {
            FigMediaPlaylistSetAvgSegmentDuration(v627, v73 / v320);
          }

          *&v616 = 0;
          v575 = (v70 | HIDWORD(v546) | v546 | v548 | v66) != 0;
          v573 = 1;
          if (!v578)
          {
            v343 = a14;
            if (v337 || v561 || v558 || v557 || v553 || v552 || HIDWORD(v548))
            {
              goto LABEL_1014;
            }

            v573 = 1;
            if (!FigMediaPlaylistHasPartTag(v627) && !v545)
            {
              v343 = a14;
              if (v68 || v319)
              {
                goto LABEL_1014;
              }

              v573 = 1;
              if (!FigMediaPlaylistHasEndTag(v627))
              {
                v343 = a14;
                if (!v538)
                {
                  HasOnlyIFrames = FigMediaPlaylistHasOnlyIFrames(v627);
                  v343 = a14;
                  v573 = (HasOnlyIFrames | v560 | HIDWORD(v533) | v533 | v555 | v534 | HIDWORD(v534)) != 0;
                }

LABEL_1014:
                v345 = (v70 | HIDWORD(v546) | v546 | v548 | v66) == 0;
                if (!v343)
                {
                  v345 = 1;
                }

                if (!v345 && *v343)
                {
                  _StreamPlaylistLogError(0, 4294951065, &v614, @"Multivariant playlist can only be the top-level playlist");
                  if (!v70)
                  {
                    goto LABEL_1020;
                  }
                }

                else if (!v70)
                {
                  goto LABEL_1020;
                }

                if (v578)
                {
                  _StreamPlaylistLogError(0, 4294951066, &v614, @"Alternates found in a media playlist", p_blockBufferOut);
                  goto LABEL_1070;
                }

LABEL_1020:
                if (v70)
                {
                  if (v337)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-BYTERANGE");
                  }

                  if (v545)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-TARGETDURATION");
                  }

                  if (v68)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-MEDIA-SEQUENCE");
                  }

                  if (v553)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-PROGRAM-DATE-TIME");
                  }

                  if (v538)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-PLAYLIST-TYPE");
                  }

                  if (FigMediaPlaylistHasEndTag(v627))
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-ENDLIST");
                  }

                  if (v561)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-DISCONTINUITY");
                  }

                  if (v319)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-DISCONTINUITY-SEQUENCE");
                  }

                  if (FigMediaPlaylistHasOnlyIFrames(v627))
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-I-FRAMES-ONLY");
                  }

                  if (v557)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-MAP");
                  }

                  if (v533)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-DATERANGE");
                  }

                  if (v558)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-KEY");
                  }

                  if (v552)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-GAP");
                  }

                  if (HIDWORD(v548))
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-BITRATE");
                  }

                  if (FigMediaPlaylistHasPartTag(v627))
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-PART");
                  }

                  if (v560)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-PART-INF");
                  }

                  if (v534)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-PRELOAD-HINT");
                  }

                  if (HIDWORD(v534))
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-RENDITION-REPORT");
                  }

                  if (HIDWORD(v533))
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-SERVER-CONTROL");
                  }

                  if (v555)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v614, @"%s can only be in media playlist", "#EXT-X-SKIP");
                  }

LABEL_1070:
                  if (BYTE4(v542) && v614 < 5 || v541 && v614 < 12 || v623 && v614 < 11 || v555 && v614 < 9 || BYTE10(v616) && v614 < 8 || (!v563 ? (v346 = v536 == 0) : (v346 = 1), v346 ? (v347 = v537 == 0) : (v347 = 0), !v347 && v614 < 6 || v337 | v563 && v614 < 4 || v565 && v614 < 3 || HIDWORD(v531) && v614 < 13 || v528 && v614 <= 1))
                  {
                    matched = 4294954654;
                    _StreamPlaylistLogError(4294954654, 4294954986, &v614, @"incorrect version number for feature", p_blockBufferOut);
                    if (!v76)
                    {
                      goto LABEL_1235;
                    }
                  }

                  if (FigMediaPlaylistHasSkipDeltaBoundary(v627))
                  {
                    SkipDeltaBoundary = FigMediaPlaylistGetSkipDeltaBoundary(v627);
                    if (SkipDeltaBoundary < (6 * FigMediaPlaylistGetTargetDuration(v627)))
                    {
                      matched = 4294954654;
                      _StreamPlaylistLogError(4294954654, 4294949662, &v614, @"CAN-SKIP-UNTIL too small");
                      if (!v76)
                      {
                        goto LABEL_1235;
                      }
                    }
                  }

                  if (FigMediaPlaylistHasSkipDeltaBoundary(v627))
                  {
                    if (NextSegment)
                    {
                      v349 = 0.0;
                      do
                      {
                        v349 = v349 + FigMediaSegmentSpecifierGetTimeInSeconds(NextSegment);
                        NextSegment = FigMediaSegmentSpecifierGetNextSegment(NextSegment);
                      }

                      while (NextSegment);
                      if (v349 < FigMediaPlaylistGetSkipDeltaBoundary(v627))
                      {
                        matched = 4294954654;
                        _StreamPlaylistLogError(4294954654, 4294949661, &v614, @"EXT-X-SKIP too close to live edge");
                        if (!v76)
                        {
                          goto LABEL_1235;
                        }
                      }
                    }
                  }

                  if (v560 == 1)
                  {
                    PartTargetDuration = FigMediaPlaylistGetPartTargetDuration(v627);
                    if (PartTargetDuration > FigMediaPlaylistGetTargetDuration(v627))
                    {
                      v420 = FigMediaPlaylistGetPartTargetDuration(v627);
                      matched = 4294954654;
                      _StreamPlaylistLogError(4294954654, 4294949662, &v614, @"%s Partial Segment target duration %f exceeds %s", "PART-TARGET", *&v420, "#EXT-X-TARGETDURATION");
                      if (!v76)
                      {
                        goto LABEL_1235;
                      }
                    }

                    v351 = v611;
                    if (v351 > FigMediaPlaylistGetPartTargetDuration(v627))
                    {
                      matched = 4294954654;
                      _StreamPlaylistLogError(4294954654, 4294949662, &v614, @"%s Partial Segment duration %f exceeds %s", "#EXT-X-PART", *&v351, "PART-TARGET");
                      if (!v76)
                      {
                        goto LABEL_1235;
                      }
                    }

                    if (FigMediaPlaylistHasPartHoldBackDuration(v627))
                    {
                      goto LABEL_1110;
                    }

                    matched = 4294954650;
                    _StreamPlaylistLogError(4294954650, 4294955032, &v614, @"%s required with %s", "PART-HOLD-BACK", "#EXT-X-PART-INF");
                  }

                  else
                  {
                    if (!FigMediaPlaylistHasPartTag(v627))
                    {
                      goto LABEL_1110;
                    }

                    matched = 4294954654;
                    _StreamPlaylistLogError(4294954654, 4294955024, &v614, @"Partial segments, but no part target duration", p_blockBufferOut, v510);
                  }

                  if (!v76)
                  {
                    goto LABEL_1235;
                  }

LABEL_1110:
                  if (FigMediaPlaylistGetPlaylistType(v627) == 2 && !FigMediaPlaylistHasEndTag(v627))
                  {
                    matched = 4294954654;
                    _StreamPlaylistLogError(4294954654, 4294954983, &v614, @"VOD playlist has no ENDLIST tag");
                    if (!v76)
                    {
                      goto LABEL_1235;
                    }
                  }

                  if (a14)
                  {
                    if (*a14)
                    {
                      if (!v68)
                      {
                        if (FigMediaPlaylistHasMediaSequence(v627))
                        {
                          matched = 4294954654;
                          _StreamPlaylistLogError(4294954654, 4294955026, &v614, @"#EXT-X-MEDIA-SEQUENCE suddenly disappeared");
                          if (!v76)
                          {
                            goto LABEL_1235;
                          }
                        }
                      }
                    }

                    FigMediaPlaylistSetHasMediaSequence(v627, v68);
                    if (*a14)
                    {
                      if (!v319)
                      {
                        if (FigMediaPlaylistHasDiscontinuitySequence(v627))
                        {
                          matched = 4294954654;
                          _StreamPlaylistLogError(4294954654, 4294951061, &v614, @"%s is no longer in Media Playlist", "#EXT-X-DISCONTINUITY-SEQUENCE");
                          if (!v76)
                          {
                            goto LABEL_1235;
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    FigMediaPlaylistSetHasMediaSequence(v627, v68);
                  }

                  FigMediaPlaylistSetHasDiscontinuitySequence(v627, v319);
                  if (FigMediaPlaylistGetPlaylistType(v627) == 1 && FigMediaPlaylistHasEndTag(v627))
                  {
                    FigMediaPlaylistSetPlaylistType(v627, 2);
                  }

                  if (!(FigMediaPlaylistGetTargetDuration(v627) | v70))
                  {
                    if (v68 == 1)
                    {
                      matched = 4294954654;
                      _StreamPlaylistLogError(4294954654, 4294955024, &v614, @"Media sequence, but no target duration", p_blockBufferOut);
                    }

                    else
                    {
                      matched = 4294954650;
                      _StreamPlaylistLogError(4294954650, 4294954985, &v614, @"Stream type unrecognized", p_blockBufferOut);
                    }

                    if (!v76)
                    {
                      goto LABEL_1235;
                    }
                  }

                  if (v70)
                  {
                    if (HIDWORD(v537))
                    {
                      if (v531)
                      {
                        matched = 4294954654;
                        _StreamPlaylistLogError(4294954654, 4294955032, &v614, @"Some stream definitions have %s groups while some have opted out", "CLOSED-CAPTIONS");
                        if (!v76)
                        {
                          goto LABEL_1235;
                        }
                      }
                    }
                  }

                  if (FigMediaPlaylistHasHoldBackDuration(v627))
                  {
                    v352 = FigMediaPlaylistGetHoldBackDuration(v627);
                    if (v352 < (3 * FigMediaPlaylistGetTargetDuration(v627)))
                    {
                      matched = 4294954650;
                      _StreamPlaylistLogError(4294954650, 4294955032, &v614, @"%s less than 3 * target-duration", "HOLD-BACK");
                      if (!v76)
                      {
                        goto LABEL_1235;
                      }
                    }
                  }

                  if (FigMediaPlaylistGetPartTargetDuration(v627) > 0.0)
                  {
                    v353 = FigMediaPlaylistGetPartHoldBackDuration(v627);
                    if (v353 < FigMediaPlaylistGetPartTargetDuration(v627))
                    {
                      if (FigMediaPlaylistDoesServerSupportsBlockingReload(v627))
                      {
                        matched = 4294954650;
                        _StreamPlaylistLogError(4294954650, 4294955032, &v614, @"%s less than %s", "PART-HOLD-BACK", "PART-TARGET");
                        if (!v76)
                        {
                          goto LABEL_1235;
                        }
                      }
                    }
                  }

                  FigMediaPlaylistSetHasIndependentParts(v627, SBYTE4(v541));
                  v354 = structureAllocator;
                  if (FigMediaPlaylistGetPreloadHint(v627))
                  {
                    v355 = FigMediaPlaylistGetPreloadHint(v627);
                    if (FigMediaSegmentSpecifierIsReadInCurrent(v355))
                    {
                      FigMediaPlaylistGetMediaSegmentSpecifiers(v627);
                      v356 = FigCFArrayGetLastValue();
                      if (v356)
                      {
                        FigMediaSegmentSpecifierGetPartialSegments(v356);
                        v357 = FigCFArrayGetLastValue();
                        if (v357)
                        {
                          v358 = v357;
                          FigMediaSegmentSpecifierGetURLString(v357);
                          v359 = FigMediaPlaylistGetPreloadHint(v627);
                          FigMediaSegmentSpecifierGetURLString(v359);
                          if (FigCFEqual())
                          {
                            v360 = FigMediaPlaylistGetPreloadHint(v627);
                            StartOffset = FigMediaSegmentSpecifierGetStartOffset(v360);
                            v362 = v70;
                            v363 = FigMediaSegmentSpecifierGetStartOffset(v358);
                            v364 = FigMediaSegmentSpecifierGetBytesToRead(v358) + v363;
                            v70 = v362;
                            if (StartOffset < v364)
                            {
                              v365 = FigMediaPlaylistGetPreloadHint(v627);
                              if (FigMediaSegmentSpecifierGetBytesToRead(v365) >= 1)
                              {
                                v366 = FigMediaPlaylistGetPreloadHint(v627);
                                v367 = FigMediaPlaylistGetPreloadHint(v627);
                                v368 = FigMediaSegmentSpecifierGetBytesToRead(v367);
                                v369 = FigMediaSegmentSpecifierGetStartOffset(v358);
                                v370 = FigMediaSegmentSpecifierGetBytesToRead(v358);
                                v371 = FigMediaPlaylistGetPreloadHint(v627);
                                v372 = FigMediaSegmentSpecifierGetStartOffset(v371);
                                FigMediaSegmentSpecifierSetBytesToRead(v366, v368 - (v369 + v370) + v372);
                              }

                              v373 = FigMediaPlaylistGetPreloadHint(v627);
                              v374 = FigMediaSegmentSpecifierGetStartOffset(v358);
                              v375 = FigMediaSegmentSpecifierGetBytesToRead(v358);
                              FigMediaSegmentSpecifierSetStartOffset(v373, v375 + v374);
                              v70 = v362;
                            }
                          }
                        }
                      }
                    }
                  }

                  *a4 = 0;
                  v571 = v70;
                  if (!v70)
                  {
                    v595 = 0;
                    goto LABEL_1174;
                  }

                  *a4 = 1;
                  FigMultivariantPlaylistGetClosedCaptionGroups(v602);
                  if (FigCFDictionaryGetCount() || (FigMultivariantPlaylistGetSubtitleGroups(v602), FigCFDictionaryGetCount()))
                  {
                    v376 = 0;
                  }

                  else
                  {
                    v376 = 0;
                    v380 = 1;
                    if (!HIBYTE(v612) || v531)
                    {
                      goto LABEL_1150;
                    }

                    v418 = PlaylistAddCharacteristicsForClosedCaptions(&v618);
                    if (v418)
                    {
                      goto LABEL_1207;
                    }

                    v419 = v618;
                    matched = PlaylistAddMediaGroup(v602, 1668047728, @"CC", 0, 0, 0, 0, 0, 0.0, 1u, 1u, 0, 1, v618, 0, @"UnspecifiedClosedCaptionChannel", 0, 0, &valuePtr);
                    if (v419)
                    {
                      CFRelease(v419);
                      v618 = 0;
                    }

                    if (matched)
                    {
                      goto LABEL_1235;
                    }

                    v376 = 1;
                  }

                  MediaSelectionArray = FigMultivariantPlaylistGetMediaSelectionArray(v602);
                  CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
                  MediaSelectionOptionArrayByMediaType = FindMediaSelectionOptionArrayByMediaType(MediaSelectionArray, CFStringForOSTypeValue);
                  if (MediaSelectionOptionArrayByMediaType && CFArrayGetCount(MediaSelectionOptionArrayByMediaType))
                  {
                    v380 = 1;
                    goto LABEL_1150;
                  }

                  v418 = PlaylistAddMediaGroup(v602, 1936684398, @"AUDIO", 0, 0, 0, 0, 0, 0.0, 1u, 1u, 0, 0, 0, 0, 0, 0, 0, &valuePtr);
                  v380 = 0;
                  if (v418)
                  {
LABEL_1207:
                    matched = v418;
LABEL_1235:
                    v51 = 0;
                    v52 = 0;
                    v22 = 0;
                    v53 = 0;
                    v595 = 0;
                    goto LABEL_1402;
                  }

LABEL_1150:
                  v381 = 0;
                  v382 = 0;
                  v595 = 0;
                  v383 = 0;
                  for (j = v376 == 0; ; j = 1)
                  {
                    Alternates = FigMultivariantPlaylistGetAlternates(v602);
                    if (Alternates)
                    {
                      Alternates = CFArrayGetCount(Alternates);
                    }

                    if (v383 >= Alternates)
                    {
                      break;
                    }

                    v386 = FigMultivariantPlaylistGetAlternates(v602);
                    v387 = CFArrayGetValueAtIndex(v386, v383);
                    AudioGroupIDString = FigAlternateGetAudioGroupIDString(v387);
                    AudioGroups = FigMultivariantPlaylistGetAudioGroups(v602);
                    SelectionGroupGuts = PlaylistGetSelectionGroupGuts(AudioGroupIDString, 1936684398, AudioGroups, &v614, &v607);
                    if (SelectionGroupGuts || (VideoGroupIDString = FigAlternateGetVideoGroupIDString(v387), VideoGroups = FigMultivariantPlaylistGetVideoGroups(v602), SelectionGroupGuts = PlaylistGetSelectionGroupGuts(VideoGroupIDString, 1986618469, VideoGroups, &v614, &v606), SelectionGroupGuts) || (SubtitleGroupIDString = FigAlternateGetSubtitleGroupIDString(v387), SubtitleGroups = FigMultivariantPlaylistGetSubtitleGroups(v602), SelectionGroupGuts = PlaylistGetSelectionGroupGuts(SubtitleGroupIDString, 1935832172, SubtitleGroups, &v614, &v605), SelectionGroupGuts) || (ClosedCaptionGroupIDString = FigAlternateGetClosedCaptionGroupIDString(v387), ClosedCaptionGroups = FigMultivariantPlaylistGetClosedCaptionGroups(v602), SelectionGroupGuts = PlaylistGetSelectionGroupGuts(ClosedCaptionGroupIDString, 1668047728, ClosedCaptionGroups, &v614, &v604), SelectionGroupGuts) || ((v380 & 1) != 0 ? (v397 = 0) : (v381 = 1, v397 = @"AUDIO"), j ? (v398 = 0) : (v382 = 1, v398 = @"CC"), SelectionGroupGuts = FigAlternateCopy(v387, 0, 0, 0, 0, 0, v397, v381, 0, 0, v398, v382, 0, 0, 0, v607, v606, v605, v604, &value), SelectionGroupGuts))
                    {
                      matched = SelectionGroupGuts;
                      v51 = 0;
                      v52 = 0;
                      v22 = 0;
                      v53 = 0;
                      goto LABEL_1402;
                    }

                    v399 = v595;
                    if (!v595)
                    {
                      v400 = FigGetAllocatorForMedia();
                      v399 = CFArrayCreateMutable(v400, 0, MEMORY[0x1E695E9C0]);
                      if (!v399)
                      {
                        FigStreamPlaylistParseInProcess_cold_21(&returnedPointerOut);
                        v51 = 0;
                        v52 = 0;
                        v22 = 0;
                        v53 = 0;
                        v595 = 0;
                        goto LABEL_1246;
                      }
                    }

                    v595 = v399;
                    CFArrayAppendValue(v399, value);
                    if (value)
                    {
                      CFRelease(value);
                    }

                    value = 0;
                    v607 = 0;
                    v606 = 0;
                    v605 = 0;
                    ++v383;
                    v380 = 1;
                    v604 = 0;
                  }

                  if (v595)
                  {
                    FigMultivariantPlaylistSetAlternates(v602, v595);
                  }

                  FigMultivariantPlaylistSetPlaylistVariables(v602, *(&v615 + 1));
                  v354 = structureAllocator;
                  v70 = v571;
LABEL_1174:
                  if (a10 && v602)
                  {
                    v401 = FigMultivariantPlaylistGetMediaSelectionArray(v602);
                    v402 = CFArrayCreateMutable(v354, 0, MEMORY[0x1E695E9C0]);
                    if (v402)
                    {
                      v403 = v402;
                      if (v401)
                      {
                        v404 = CFArrayGetCount(v401);
                        if (v404 >= 1)
                        {
                          v405 = v404;
                          v406 = 0;
                          v407 = 0;
                          v408 = 0;
                          while (1)
                          {
                            v409 = CFArrayGetValueAtIndex(v401, v406);
                            v410 = v409;
                            if (!v407)
                            {
                              v411 = CFDictionaryGetValue(v409, @"MediaSelectionGroupMediaCharacteristics");
                              v651.length = CFArrayGetCount(v411);
                              v651.location = 0;
                              if (CFArrayContainsValue(v411, v651, @"public.legible"))
                              {
                                CFDictionaryGetValue(v410, @"MediaSelectionGroupOptions");
                                ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
                                if (!ConcatenationOfTwoArrays)
                                {
                                  FigStreamPlaylistParseInProcess_cold_23(&returnedPointerOut);
                                  matched = returnedPointerOut;
                                  v70 = v571;
                                  if (!returnedPointerOut)
                                  {
                                    goto LABEL_1248;
                                  }

LABEL_1197:
                                  CFRelease(v403);
                                  goto LABEL_1198;
                                }

                                v408 = ConcatenationOfTwoArrays;
                                MutableCopy = FigCFDictionaryCreateMutableCopy();
                                if (!MutableCopy)
                                {
                                  FigStreamPlaylistParseInProcess_cold_22(&returnedPointerOut);
                                  matched = returnedPointerOut;
                                  v70 = v571;
                                  goto LABEL_1195;
                                }

                                v410 = MutableCopy;
                                CFDictionarySetValue(MutableCopy, @"MediaSelectionGroupOptions", v408);
                                v407 = v410;
                              }

                              else
                              {
                                v407 = 0;
                              }
                            }

                            CFArrayAppendValue(v403, v410);
                            if (v405 == ++v406)
                            {
                              v354 = structureAllocator;
                              if (!v407)
                              {
                                goto LABEL_1190;
                              }

LABEL_1193:
                              CFRelease(v407);
                              matched = 0;
                              goto LABEL_1194;
                            }
                          }
                        }
                      }

                      v408 = 0;
LABEL_1190:
                      v414 = CFArrayCreate(v354, kFigStdAssetMediaCharacteristic_Legible, 1, MEMORY[0x1E695E9C0]);
                      if (v414)
                      {
                        v415 = v414;
                        *&returnedPointerOut = COERCE_DOUBLE(@"MediaSelectionGroupMediaType");
                        v416 = FigGetCFStringForOSTypeValue();
                        v417 = *MEMORY[0x1E695E4D0];
                        *&blockBufferOut = v416;
                        *(&blockBufferOut + 1) = v417;
                        v643 = @"MediaSelectionGroupAllowEmptySelection";
                        v644 = @"MediaSelectionGroupOptions";
                        v645 = @"MediaSelectionGroupMediaCharacteristics";
                        v647 = a10;
                        v648 = v415;
                        v407 = CFDictionaryCreate(v354, &returnedPointerOut, &blockBufferOut, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        CFRelease(v415);
                        if (v407)
                        {
                          CFArrayAppendValue(v403, v407);
                          goto LABEL_1193;
                        }
                      }

                      matched = FigSignalErrorAtGM();
LABEL_1194:
                      v70 = v571;
                      if (v408)
                      {
LABEL_1195:
                        CFRelease(v408);
                      }

                      if (matched)
                      {
                        goto LABEL_1197;
                      }

LABEL_1248:
                      FigMultivariantPlaylistSetMediaSelectionArray(v602, v403);
                      CFRelease(v403);
                      v354 = structureAllocator;
                    }

                    else
                    {
                      v70 = v571;
                      if (FigStreamPlaylistParseInProcess_cold_24(&v602, &returnedPointerOut))
                      {
                        goto LABEL_1395;
                      }
                    }
                  }

                  if (!HIDWORD(v532) || !v602)
                  {
                    goto LABEL_1277;
                  }

                  v421 = FigMultivariantPlaylistGetMediaSelectionArray(v602);
                  theArraya = CFArrayCreateMutable(v354, 0, MEMORY[0x1E695E9C0]);
                  if (theArraya)
                  {
                    if (v421)
                    {
                      v582 = CFArrayGetCount(v421);
                      if (v582 >= 1)
                      {
                        v422 = 0;
                        v564 = v421;
                        while (1)
                        {
                          v423 = v70;
                          v424 = CFArrayGetValueAtIndex(v421, v422);
                          v425 = CFDictionaryGetValue(v424, @"MediaSelectionGroupMediaCharacteristics");
                          v652.length = CFArrayGetCount(v425);
                          v652.location = 0;
                          if (CFArrayContainsValue(v425, v652, @"public.audible"))
                          {
                            break;
                          }

                          if (v424)
                          {
                            v427 = CFRetain(v424);
                            v70 = v423;
                            goto LABEL_1272;
                          }

                          CFArrayAppendValue(theArraya, 0);
                          v70 = v423;
LABEL_1275:
                          if (++v422 == v582)
                          {
                            goto LABEL_1276;
                          }
                        }

                        v426 = CFDictionaryGetValue(v424, @"MediaSelectionGroupOptions");
                        v427 = FigCFDictionaryCreateMutableCopy();
                        v428 = FigCFArrayCreateMutableCopy();
                        v429 = v428;
                        if (v427 && v428)
                        {
                          if (!v426 || (v430 = CFArrayGetCount(v426), v430 < 1))
                          {
                            CFDictionarySetValue(v427, @"MediaSelectionGroupOptions", v429);
LABEL_1270:
                            CFRelease(v429);
LABEL_1271:
                            v70 = v423;
                            v421 = v564;
LABEL_1272:
                            CFArrayAppendValue(theArraya, v427);
                            if (v427)
                            {
                              CFRelease(v427);
                            }

                            goto LABEL_1275;
                          }

                          v431 = v430;
                          for (k = 0; k != v431; ++k)
                          {
                            v433 = CFArrayGetValueAtIndex(v426, k);
                            MatchingMediaSelectionOptionWithEnhancedSpeechIntelligibility = FigGetMatchingMediaSelectionOptionWithEnhancedSpeechIntelligibility(v426, v433);
                            if (MatchingMediaSelectionOptionWithEnhancedSpeechIntelligibility)
                            {
                              v435 = MatchingMediaSelectionOptionWithEnhancedSpeechIntelligibility;
                              v436 = FigCFDictionaryCreateMutableCopy();
                              CFDictionarySetValue(v436, @"MediaSelectionOptionsPersistentIDOfMatchingOptionWithEnhancedSpeechIntelligibility", v435);
                              CFArraySetValueAtIndex(v429, k, v436);
                              if (v436)
                              {
                                CFRelease(v436);
                              }
                            }
                          }
                        }

                        CFDictionarySetValue(v427, @"MediaSelectionGroupOptions", v429);
                        if (!v429)
                        {
                          goto LABEL_1271;
                        }

                        goto LABEL_1270;
                      }
                    }

LABEL_1276:
                    FigMultivariantPlaylistSetMediaSelectionArray(v602, theArraya);
                    CFRelease(theArraya);
LABEL_1277:
                    v437 = a4;
                    if (v578)
                    {
                      if (!v563)
                      {
                        v438 = FigMediaPlaylistGetTargetDuration(v627);
                        v437 = a4;
                        if (v72 > (2 * v438))
                        {
                          v506 = FigMediaPlaylistGetTargetDuration(v627);
                          matched = 4294954654;
                          _StreamPlaylistLogError(4294954654, 4294955023, &v614, @"Max extinf duration of %g more than 2 * target duration %d", *&v72, v506);
                          goto LABEL_1198;
                        }
                      }

                      *v437 |= 2u;
                    }

                    v439 = 0;
                    matched = 0;
                    v440 = v627;
                    while (1)
                    {
                      v441 = FigMediaPlaylistGetDateRangeSpecifiers(v440);
                      if (v441)
                      {
                        v441 = CFArrayGetCount(v441);
                      }

                      if (v439 >= v441)
                      {
                        break;
                      }

                      v442 = FigMediaPlaylistGetDateRangeSpecifiers(v440);
                      v443 = CFArrayGetValueAtIndex(v442, v439);
                      if (v597)
                      {
                        v444 = CFArrayGetCount(v597);
                        Identifier = FigDateRangeSpecifierGetIdentifier(v443);
                        v653.location = 0;
                        v653.length = v444;
                        if (CFArrayContainsValue(v597, v653, Identifier))
                        {
                          if (FigDateRangeSpecifierGetReadInCurrent(v443))
                          {
                            matched = 4294954654;
                            _StreamPlaylistLogError(4294954654, 4294955032, &v614, @"%s: %s cannot be present in Playlist and also appear in %s", "#EXT-X-DATERANGE", "ID", "RECENTLY-REMOVED-DATERANGES");
                          }
                        }

                        else
                        {
                          FigDateRangeSpecifierSetReadInCurrent(v443, 1);
                        }
                      }

                      if (FigDateRangeSpecifierGetReadInCurrent(v443))
                      {
                        TempDuration = FigDateRangeSpecifierGetTempDuration(v443);
                        FigDateRangeSpecifierSetDuration(v443, TempDuration);
                        TempEndDate = FigDateRangeSpecifierGetTempEndDate(v443);
                        FigDateRangeSpecifierSetEndDate(v443, TempEndDate);
                        if (FigDateRangeSpecifierGetPlannedDuration(v443) == -1.0)
                        {
                          ParseDate = FigMediaPlaylistGetParseDate(v440);
                          FigDateRangeSpecifierSetValueForTagsFirstFoundDateDict(v443, @"PLANNED-DURATION", ParseDate);
                        }

                        TempPlannedDuration = FigDateRangeSpecifierGetTempPlannedDuration(v443);
                        FigDateRangeSpecifierSetPlannedDuration(v443, TempPlannedDuration);
                        if (FigDateRangeSpecifierGetEndDate(v443) && FigDateRangeSpecifierGetDuration(v443) >= 0.0)
                        {
                          if (v616 || !FigDateRangeSpecifierGetTaggedRangeLine(v443))
                          {
                            v450 = 1;
                          }

                          else
                          {
                            v452 = v617;
                            if (v617)
                            {
                              v617 = 0;
                              free(v452);
                            }

                            FigDateRangeSpecifierGetTaggedRangeLine(v443);
                            v450 = 0;
                            *&v616 = FigCFStringGetCStringPtrAndBufferToFree();
                          }

                          Duration = FigDateRangeSpecifierGetDuration(v443);
                          EndDate = FigDateRangeSpecifierGetEndDate(v443);
                          StartDate = FigDateRangeSpecifierGetStartDate(v443);
                          if (vabdd_f64(Duration, CFDateGetTimeIntervalSinceDate(EndDate, StartDate)) >= 0.001)
                          {
                            FigStreamPlaylistParseInProcess_cold_30();
                            v51 = 0;
                            v52 = 0;
                            v22 = 0;
                            v53 = 0;
                            matched = 4294954654;
                            goto LABEL_1402;
                          }

                          if ((v450 & 1) == 0)
                          {
                            *&v616 = 0;
                          }
                        }
                      }

                      else
                      {
                        MutableDateRangeSpecifiers = FigMediaPlaylistGetMutableDateRangeSpecifiers(v440);
                        CFArrayRemoveValueAtIndex(MutableDateRangeSpecifiers, v439--);
                        LOBYTE(v612) = 1;
                      }

                      ++v439;
                    }

                    if (matched)
                    {
LABEL_1198:
                      v51 = 0;
                      v52 = 0;
                      v22 = 0;
                      v53 = 0;
                      goto LABEL_1402;
                    }

                    v456 = a4;
                    v457 = v571;
                    if (v612)
                    {
                      v458 = v627;
                      v459 = FigMediaPlaylistGetDateRangeSpecifiers(v627);
                      if (!v459 || CFArrayGetCount(v459) < 1)
                      {
                        goto LABEL_1347;
                      }

                      v460 = structureAllocator;
                      theArrayb = CFArrayCreateMutable(structureAllocator, 0, MEMORY[0x1E695E9C0]);
                      if (!theArrayb)
                      {
                        FigStreamPlaylistParseInProcess_cold_29(&blockBufferOut);
                        matched = blockBufferOut;
LABEL_1383:
                        v457 = v571;
                        if (!matched)
                        {
                          goto LABEL_1347;
                        }

                        goto LABEL_1198;
                      }

                      v461 = 0;
                      *&returnedPointerOut = 0.0;
                      v643 = 0;
                      v644 = 0;
                      v556 = *MEMORY[0x1E6960210];
                      v559 = *MEMORY[0x1E6960260];
                      v462 = baseURL;
                      while (1)
                      {
                        v463 = FigMediaPlaylistGetDateRangeSpecifiers(v458);
                        if (v463)
                        {
                          v463 = CFArrayGetCount(v463);
                        }

                        if (v461 >= v463)
                        {
                          break;
                        }

                        v464 = FigMediaPlaylistGetDateRangeSpecifiers(v458);
                        v465 = CFArrayGetValueAtIndex(v464, v461);
                        v466 = CFDictionaryCreateMutable(v460, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        if (!v466)
                        {
                          FigStreamPlaylistParseInProcess_cold_28(theArrayb, &blockBufferOut);
                          matched = blockBufferOut;
                          goto LABEL_1383;
                        }

                        v467 = v466;
                        *&v468 = COERCE_DOUBLE(CFArrayCreateMutable(v460, 0, MEMORY[0x1E695E9C0]));
                        if (*&v468 == 0.0)
                        {
                          FigStreamPlaylistParseInProcess_cold_27(&blockBufferOut);
                          matched = blockBufferOut;
                          goto LABEL_1344;
                        }

                        DiscoveryTimestamp = FigDateRangeSpecifierGetDiscoveryTimestamp(v465);
                        CFDictionaryAddValue(v467, @"TaggedRangeMetadataKey_DiscoveryTimestamp", DiscoveryTimestamp);
                        ModificationTimestamp = FigDateRangeSpecifierGetModificationTimestamp(v465);
                        CFDictionaryAddValue(v467, @"TaggedRangeMetadataKey_ModificationTimestamp", ModificationTimestamp);
                        v471 = FigDateRangeSpecifierGetIdentifier(v465);
                        CFDictionaryAddValue(v467, @"TaggedRangeMetadataKey_ID", v471);
                        v472 = FigDateRangeSpecifierGetStartDate(v465);
                        CFDictionaryAddValue(v467, @"TaggedRangeMetadataKey_StartDate", v472);
                        if (v462)
                        {
                          v473 = CFURLGetString(v462);
                          CFDictionaryAddValue(v467, @"TaggedRangeMetadataKey_BaseURL", v473);
                        }

                        if (FigDateRangeSpecifierGetEndDate(v465))
                        {
                          v474 = FigDateRangeSpecifierGetEndDate(v465);
                          CFDictionarySetValue(v467, @"TaggedRangeMetadataKey_EndDate", v474);
                        }

                        if (FigDateRangeSpecifierGetDuration(v465) >= 0.0)
                        {
                          FigDateRangeSpecifierGetDuration(v465);
                          FigCFDictionarySetDouble();
                        }

                        *&blockBufferOut = FigDateRangeSpecifierGetPlannedDuration(v465);
                        if (*&blockBufferOut >= 0.0)
                        {
                          TagsFirstFoundDateDict = FigDateRangeSpecifierGetTagsFirstFoundDateDict(v465);
                          v479 = CFDictionaryGetValue(TagsFirstFoundDateDict, @"PLANNED-DURATION");
                          v480 = CFNumberCreate(structureAllocator, kCFNumberDoubleType, &blockBufferOut);
                          if (!v480)
                          {
                            FigStreamPlaylistParseInProcess_cold_26(&v641);
                            matched = v641;
LABEL_1344:
                            v457 = v571;
                            CFRelease(theArrayb);
                            CFRelease(v467);
                            if (*&v468 != 0.0)
                            {
                              CFRelease(v468);
                            }

                            if (!matched)
                            {
LABEL_1347:
                              FigMediaPlaylistSetDateEntryArray(v627, 0);
                              goto LABEL_1349;
                            }

                            goto LABEL_1198;
                          }

                          v481 = v480;
                          CFDictionarySetValue(v467, @"TaggedRangeMetadataKey_PlannedDuration", v480);
                          matched = PlaylistAddTaggedRangeMetadataDictionaryToArray(v468, @"PLANNED-DURATION", v481, v556, v479);
                          CFRelease(v481);
                          if (matched)
                          {
                            goto LABEL_1344;
                          }
                        }

                        if (FigDateRangeSpecifierGetTaggedRangeClass(v465))
                        {
                          TaggedRangeClass = FigDateRangeSpecifierGetTaggedRangeClass(v465);
                          CFDictionaryAddValue(v467, @"TaggedRangeMetadataKey_Class", TaggedRangeClass);
                        }

                        if (FigDateRangeSpecifierGetTaggedRangeCue(v465))
                        {
                          TaggedRangeCue = FigDateRangeSpecifierGetTaggedRangeCue(v465);
                          CFDictionaryAddValue(v467, @"TaggedRangeMetadataKey_Cue", TaggedRangeCue);
                        }

                        LODWORD(v644) = 0;
                        returnedPointerOut = v468;
                        v643 = v465;
                        MetadataDict = FigDateRangeSpecifierGetMetadataDict(v465);
                        CFDictionaryApplyFunction(MetadataDict, TaggedRangeTagApplier, &returnedPointerOut);
                        matched = v644;
                        if (v644)
                        {
                          goto LABEL_1344;
                        }

                        if (FigDateRangeSpecifierGetScte35cmd(v465) && (v482 = FigDateRangeSpecifierGetTagsFirstFoundDateDict(v465), v483 = CFDictionaryGetValue(v482, @"SCTE35-CMD"), Scte35cmd = FigDateRangeSpecifierGetScte35cmd(v465), v485 = PlaylistAddTaggedRangeMetadataDictionaryToArray(v468, @"SCTE35-CMD", Scte35cmd, v559, v483), v485) || FigDateRangeSpecifierGetScte35in(v465) && (v486 = FigDateRangeSpecifierGetTagsFirstFoundDateDict(v465), v487 = CFDictionaryGetValue(v486, @"SCTE35-IN"), Scte35in = FigDateRangeSpecifierGetScte35in(v465), v485 = PlaylistAddTaggedRangeMetadataDictionaryToArray(v468, @"SCTE35-IN", Scte35in, v559, v487), v485) || FigDateRangeSpecifierGetScte35out(v465) && (v489 = FigDateRangeSpecifierGetTagsFirstFoundDateDict(v465), v490 = CFDictionaryGetValue(v489, @"SCTE35-OUT"), Scte35out = FigDateRangeSpecifierGetScte35out(v465), v485 = PlaylistAddTaggedRangeMetadataDictionaryToArray(v468, @"SCTE35-OUT", Scte35out, v559, v490), v485))
                        {
                          matched = v485;
                          goto LABEL_1344;
                        }

                        if (CFArrayGetCount(v468) >= 1)
                        {
                          CFDictionaryAddValue(v467, @"TaggedRangeMetadataKey_MetadataArray", v468);
                        }

                        CFRelease(v468);
                        CFArrayAppendValue(theArrayb, v467);
                        CFRelease(v467);
                        ++v461;
                        v462 = baseURL;
                        v460 = structureAllocator;
                      }

                      FigMediaPlaylistSetDateEntryArray(v627, theArrayb);
                      CFRelease(theArrayb);
                      v457 = v571;
LABEL_1349:
                      v456 = a4;
                      *a4 |= 8u;
                    }

                    if (v566)
                    {
                      *v456 |= 4u;
                    }

                    if (v457)
                    {
                      v492 = FigMultivariantPlaylistGetAlternates(v602);
                      if (v492)
                      {
                        if (CFArrayGetCount(v492) > 1)
                        {
                          LOBYTE(returnedPointerOut) = 0;
                          LOBYTE(blockBufferOut) = 0;
                          v505 = FigMultivariantPlaylistGetAlternates(v602);
                          PlaylistCheckAllAlternatesCarryScore(v505, &returnedPointerOut, &blockBufferOut);
                          if (returnedPointerOut)
                          {
                            _StreamPlaylistLogError(0, 4294949665, &v614, @"Not all non-iframe alternates carry SCORE, SCORE disabled for non-iframe alternates");
                          }

                          if (blockBufferOut)
                          {
                            _StreamPlaylistLogError(0, 4294949665, &v614, @"Not all iframe alternates carry SCORE, SCORE disabled for iframe alternates");
                          }
                        }
                      }
                    }

                    v493 = v627;
                    if (FigMediaPlaylistGetDateStampCount(v627) < 1)
                    {
LABEL_1375:
                      v51 = 0;
                    }

                    else
                    {
                      v494 = 0;
                      do
                      {
                        MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v493);
                        if (MediaSegmentSpecifiers)
                        {
                          MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
                        }

                        if (v494 >= MediaSegmentSpecifiers)
                        {
                          goto LABEL_1375;
                        }

                        v496 = FigMediaPlaylistGetMediaSegmentSpecifiers(v493);
                        v22 = CFArrayGetValueAtIndex(v496, v494++);
                      }

                      while (!FigMediaSegmentSpecifierGetDateStamp(v22));
                      if (!v22)
                      {
                        v51 = 0;
                        v52 = 0;
                        goto LABEL_1377;
                      }

                      ImputedDate = FigMediaSegmentSpecifierGetImputedDate(v22);
                      for (m = v22; ; m = v51)
                      {
                        PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(m);
                        v51 = PreviousSegment;
                        if (!PreviousSegment)
                        {
                          break;
                        }

                        ImputedDate = ImputedDate - FigMediaSegmentSpecifierGetTimeInSeconds(PreviousSegment);
                        if (FigMediaSegmentSpecifierGetImputedDate(v51) == 0.0)
                        {
                          FigMediaSegmentSpecifierSetImputedDate(v51, ImputedDate);
                        }

                        v500 = FigMediaSegmentSpecifierGetImputedDate(v51);
                        v501 = FigMediaSegmentSpecifierGetPartialSegments(v51);
                        v502 = 0;
                        if (!v501)
                        {
LABEL_1372:
                          v504 = 0;
                          goto LABEL_1373;
                        }

                        while (1)
                        {
                          v504 = CFArrayGetCount(v501);
LABEL_1373:
                          if (v502 >= v504)
                          {
                            break;
                          }

                          v503 = CFArrayGetValueAtIndex(v501, v502);
                          if (FigMediaSegmentSpecifierGetImputedDate(v503) == 0.0)
                          {
                            FigMediaSegmentSpecifierSetImputedDate(v503, v500);
                          }

                          v500 = v500 + FigMediaSegmentSpecifierGetTimeInSeconds(v503);
                          ++v502;
                          if (!v501)
                          {
                            goto LABEL_1372;
                          }
                        }
                      }
                    }

                    v52 = 0;
                    v22 = 0;
LABEL_1377:
                    v53 = 0;
                    matched = 0;
                    goto LABEL_1402;
                  }

                  if ((FigStreamPlaylistParseInProcess_cold_25(&v602, &returnedPointerOut) & 1) == 0)
                  {
                    goto LABEL_1277;
                  }

LABEL_1395:
                  v51 = 0;
                  v52 = 0;
                  v22 = 0;
                  v53 = 0;
                  goto LABEL_1246;
                }

                if (!v578)
                {
                  goto LABEL_1070;
                }

                if (HIDWORD(v546))
                {
                  _StreamPlaylistLogError(0, 4294951066, &v614, @"%s can only be in multivariant playlist", "#EXT-X-MEDIA");
                }

                if (v546)
                {
                  _StreamPlaylistLogError(0, 4294951066, &v614, @"%s can only be in multivariant playlist", "#EXT-X-SESSION-DATA");
                }

                if (v548)
                {
                  _StreamPlaylistLogError(0, 4294951066, &v614, @"%s can only be in multivariant playlist", "#EXT-X-SESSION-KEY");
                  if (!v66)
                  {
                    goto LABEL_1070;
                  }
                }

                else if (!v66)
                {
                  goto LABEL_1070;
                }

                _StreamPlaylistLogError(0, 4294951066, &v614, @"%s can only be in multivariant playlist", "#EXT-X-CONTENT-STEERING");
                goto LABEL_1070;
              }
            }
          }

          v343 = a14;
          goto LABEL_1014;
        }

        LOBYTE(returnedPointerOut) = 0;
        LOBYTE(blockBufferOut) = 0;
        FigMediaSegmentSpecifierSetIsDiscontinuityDomain(v625, DiscontinuityDomain);
        v321 = v633;
        FigMediaSegmentSpecifierSetContentKeySpecifier(v625, v633);
        FigMediaSegmentSpecifierSetMapSegmentSpecifier(v625, v632);
        v322 = v76;
        v323 = v634;
        FigMediaSegmentSpecifierSetMediaSequence(v625, v634);
        v324 = MergeLeadingPartialMediaEntries(v627, v625, &v614, &returnedPointerOut, &blockBufferOut, a8);
        if (!v322)
        {
          matched = v324;
          if (v324)
          {
            goto LABEL_1400;
          }
        }

        v325 = v70;
        if (v578 | blockBufferOut)
        {
          v326 = 1;
        }

        else
        {
          v326 = returnedPointerOut == 0;
        }

        v327 = v326;
        v578 = v327;
        if (!returnedPointerOut)
        {
          v328 = v68;
          v329 = v627;
          v330 = v632;
          v331 = v624;
          IsDiscontinuity = FigMediaSegmentSpecifierIsDiscontinuity(v625);
          MediaFileEntry = CreateMediaFileEntry(v329, 0, 0, v321, v330, v323, DiscontinuityDomain, 0, 0.0, v74, 0, v331, v583, IsDiscontinuity, v540[4]);
          FigMediaSegmentSpecifierSetIsFragment(MediaFileEntry, 1);
          FigStreamPlaylistTransferPartialEntryQueue(v625, MediaFileEntry);
          FigMediaPlaylistAddMediaSegmentSpecifier(v627, MediaFileEntry);
          if (MediaFileEntry)
          {
            CFRelease(MediaFileEntry);
          }

          if (v583)
          {
            CFRelease(v583);
          }

          v583 = 0;
          LOBYTE(v68) = v328;
        }

        FigMediaPlaylistGetMediaSegmentSpecifiers(v627);
        v334 = FigCFArrayGetLastValue();
        v335 = FigMediaSegmentSpecifierGetPartialSegments(v334);
        v336 = 0;
        v337 = v542;
        if (v335)
        {
          goto LABEL_988;
        }

LABEL_989:
        for (n = 0; v336 < n; n = CFArrayGetCount(v335))
        {
          v338 = CFArrayGetValueAtIndex(v335, v336);
          v339 = v627;
          PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(v627);
          TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v338);
          FigMediaPlaylistSetPlaylistActiveDurationSecs(v339, PlaylistActiveDurationSecs + TimeInSeconds);
          ++v336;
          if (!v335)
          {
            goto LABEL_989;
          }

LABEL_988:
          ;
        }

        v70 = v325;
        v76 = a5;
        v319 = v572;
      }

      else
      {
        v319 = v572;
        v337 = v542;
      }

      v320 = key;
      goto LABEL_995;
    }

    *&v616 = v69;
    if (*v69 != 35)
    {
      temporaryBlock = 0;
      v641 = 0;
      v639 = 0;
      v641 = StreamingPlaylist_SkipSpacesAndTabs(v69, &v614);
      StringWithReplacement = sp_GetStringWithReplacement(v641, 0, 1, &ii, &v641, &temporaryBlock, &v639, &v614);
      matched = StringWithReplacement;
      if (v76 || !StringWithReplacement)
      {
        v105 = temporaryBlock;
        if (!temporaryBlock)
        {
          v554 = 0;
          v123 = 0;
          v76 = a5;
LABEL_486:
          free(v639);
          v184 = v590;
          v185 = v589;
          goto LABEL_487;
        }

        v106 = FigGetAllocatorForMedia();
        v107 = CFStringCreateWithBytes(v106, v641, v105, 0x8000100u, 0);
        if (!v107)
        {
          FigStreamPlaylistParseInProcess_cold_1(&returnedPointerOut);
          v554 = 0;
          matched = returnedPointerOut;
          v118 = 198;
          goto LABEL_571;
        }

        v108 = v107;
        FigMediaSegmentSpecifierSetURLString(v625, v107);
        CFRelease(v108);
        if (!v581 || !v549)
        {
          v76 = a5;
          if (v549)
          {
LABEL_138:
            *&returnedPointerOut = 0.0;
            *&blockBufferOut = 0;
            URLString = FigMediaSegmentSpecifierGetURLString(v625);
            FigStreamingPlaylistEnsureMediaURL(URLString, baseURL, v526, &returnedPointerOut, &blockBufferOut);
            v111 = blockBufferOut;
            if (*&returnedPointerOut == 0.0 || !blockBufferOut)
            {
              if (*&returnedPointerOut != 0.0)
              {
                CFRelease(returnedPointerOut);
                *&returnedPointerOut = 0.0;
                v111 = blockBufferOut;
              }

              if (v111)
              {
                CFRelease(v111);
                *&blockBufferOut = 0;
              }
            }

            else
            {
              if (matched == -12783)
              {
                matched = 4294954513;
                _StreamPlaylistLogError(4294954513, 4294955033, &v614, @"no media URL", v110, p_blockBufferOut, v510);
                goto LABEL_231;
              }

              if (matched != -12642)
              {
                if (matched || v540[0])
                {
                  if (matched)
                  {
                    goto LABEL_231;
                  }
                }

                else if ((v535 - 1) <= 1 && v610 == 0.0)
                {
                  matched = 4294954654;
                  _StreamPlaylistLogError(4294954654, 4294951059, &v614, @"HDR alternate is missing FRAME-RATE", v610, p_blockBufferOut, v510);
LABEL_231:
                  if (*&returnedPointerOut != 0.0)
                  {
                    CFRelease(returnedPointerOut);
                    *&returnedPointerOut = 0.0;
                  }

                  if (blockBufferOut)
                  {
                    CFRelease(blockBufferOut);
                  }

                  v554 = 0;
                  goto LABEL_485;
                }

                if (v539 != 1)
                {
LABEL_184:
                  matched = 0;
                  v70 = 1;
                  goto LABEL_231;
                }

                matched = PlaylistProcessAlternate(v602, returnedPointerOut, blockBufferOut, v529, v530, v586, v587, v585, v610, v71, v584, v589, v590, v540[0], v630, v629, v544, v527, v535, v609, cf, v543, &v612 + 1, v601, &v614);
                if (*&returnedPointerOut != 0.0)
                {
                  CFRelease(returnedPointerOut);
                  *&returnedPointerOut = 0.0;
                }

                if (blockBufferOut)
                {
                  CFRelease(blockBufferOut);
                  *&blockBufferOut = 0;
                }

                if (v76 || !matched)
                {
                  if (matched)
                  {
                    goto LABEL_231;
                  }

                  goto LABEL_184;
                }

                goto LABEL_564;
              }
            }

            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294955034, &v614, @"URL parse failed", v110, p_blockBufferOut, v510);
            goto LABEL_231;
          }

          if (!v581)
          {
            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294951059, &v614, @"a URI found without leading a EXTINF / EXT-X-STREAM-INF.");
            v554 = 0;
            if (a5)
            {
LABEL_485:
              v123 = 1;
              goto LABEL_486;
            }

LABEL_565:
            v118 = 4;
            goto LABEL_157;
          }

          if (FigMediaSegmentSpecifierGetBytesToRead(v625))
          {
            if (!v525)
            {
              matched = 4294954654;
              _StreamPlaylistLogError(4294954654, 4294955019, &v614, @"Reading URL, and have byte range but no offset");
              if (!a5)
              {
                v554 = 0;
                v525 = 0;
                goto LABEL_565;
              }
            }
          }

          if (FigMediaSegmentSpecifierGetBytesToRead(v625))
          {
            v124 = FigMediaSegmentSpecifierGetStartOffset(v625);
            v554 = FigMediaSegmentSpecifierGetBytesToRead(v625) + v124;
          }

          else
          {
            FigMediaSegmentSpecifierSetStartOffset(v625, 0);
            v554 = 0;
            v525 = 0;
          }

          v125 = v633;
          FigMediaSegmentSpecifierSetContentKeySpecifier(v625, v633);
          v568 = v70;
          if (!v563 || (v632 || !FigMediaSegmentSpecifierGetStartOffset(v625)) && (!FigMediaSegmentSpecifierIsDiscontinuity(v625) || v532))
          {
            goto LABEL_247;
          }

          v518 = v68;
          v126 = FigMediaSegmentSpecifierGetStartOffset(v625);
          if (v632)
          {
            CFRelease(v632);
            v632 = 0;
          }

          v127 = 0;
          do
          {
            v128 = FigMediaPlaylistGetMediaSegmentSpecifiers(v627);
            if (v128)
            {
              v128 = CFArrayGetCount(v128);
            }

            if (v127 >= v128)
            {
              goto LABEL_237;
            }

            v129 = FigMediaPlaylistGetMediaSegmentSpecifiers(v627);
            v130 = CFArrayGetValueAtIndex(v129, v127);
            FigMediaSegmentSpecifierGetURLString(v130);
            FigMediaSegmentSpecifierGetURLString(v625);
            ++v127;
          }

          while (!FigCFEqual());
          if (FigMediaSegmentSpecifierGetMapSegmentSpecifier(v130))
          {
            v131 = v632;
            MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(v130);
            v632 = MapSegmentSpecifier;
            if (MapSegmentSpecifier)
            {
              CFRetain(MapSegmentSpecifier);
            }

            v68 = v518;
            if (v131)
            {
              CFRelease(v131);
            }
          }

          else
          {
            v126 = FigMediaSegmentSpecifierGetStartOffset(v130);
LABEL_237:
            v68 = v518;
          }

          if (v632 || v126 < 1)
          {
LABEL_247:
            FigMediaSegmentSpecifierGetPartialSegments(v625);
            v137 = FigCFArrayGetLastValue();
            if (v137)
            {
              v138 = DiscontinuityDomain;
              v70 = v568;
              v76 = a5;
              if (DiscontinuityDomain == FigMediaSegmentSpecifierGetDiscontinuityDomain(v137))
              {
LABEL_253:
                FigMediaSegmentSpecifierSetType(v625, 0);
                FigMediaSegmentSpecifierSetMapSegmentSpecifier(v625, v632);
                FigMediaSegmentSpecifierSetIsDiscontinuityDomain(v625, v138);
                FigMediaSegmentSpecifierSetIsMarkedAsGap(v625, v540[4]);
                if (!a14 || !*a14 || v578)
                {
LABEL_468:
                  v186 = v626;
                  if (v626)
                  {
                    DiscontinuityDomain = FigMediaSegmentSpecifierGetDiscontinuityDomain(v626);
                    FigStreamPlaylistValidateMediaEntry(v627, v186, v583);
                    if (v583)
                    {
                      CFRelease(v583);
                    }

                    v187 = v626;
                    if (FigMediaSegmentSpecifierGetBytesToRead(v626))
                    {
                      v188 = FigMediaSegmentSpecifierGetStartOffset(v187);
                      v554 = FigMediaSegmentSpecifierGetBytesToRead(v187) + v188;
                      v76 = a5;
                    }

                    v626 = FigMediaSegmentSpecifierGetNextSegment(v187);
                  }

                  else
                  {
                    v516 = v66;
                    v520 = v68;
                    v189 = v627;
                    v190 = FigMediaPlaylistGetPlaylistActiveDurationSecs(v627);
                    v191 = FigMediaSegmentSpecifierGetTimeInSeconds(v625);
                    FigMediaPlaylistSetPlaylistActiveDurationSecs(v189, v190 + v191);
                    if (FigMediaSegmentSpecifierGetImputedDate(v625) == 0.0)
                    {
                      FigMediaSegmentSpecifierSetImputedDate(v625, v74);
                    }

                    v579 = v627;
                    v513 = FigMediaSegmentSpecifierGetURLString(v625);
                    ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(v625);
                    v192 = FigMediaSegmentSpecifierGetMapSegmentSpecifier(v625);
                    MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(v625);
                    v194 = FigMediaSegmentSpecifierGetStartOffset(v625);
                    v195 = FigMediaSegmentSpecifierGetBytesToRead(v625);
                    v196 = FigMediaSegmentSpecifierGetTimeInSeconds(v625);
                    v197 = v624;
                    v198 = FigMediaSegmentSpecifierIsDiscontinuity(v625);
                    IsMarkedAsGap = FigMediaSegmentSpecifierIsMarkedAsGap(v625);
                    v200 = FigMediaSegmentSpecifierGetImputedDate(v625);
                    v201 = CreateMediaFileEntry(v579, v513, 0, ContentKeySpecifier, v192, MediaSequence, DiscontinuityDomain, v194, v196, v200, v195, v197, v583, v198, IsMarkedAsGap);
                    FigStreamPlaylistTransferPartialEntryQueue(v625, v201);
                    TimeOffsetInSeconds = FigMediaSegmentSpecifierGetTimeOffsetInSeconds(v625);
                    FigMediaSegmentSpecifierSetTimeOffsetInSeconds(v201, TimeOffsetInSeconds);
                    if (!FigMediaSegmentSpecifierGetBytesToRead(v201))
                    {
                      FigMediaSegmentSpecifierSetBitRate(v201, BitRate);
                    }

                    FigMediaPlaylistAddMediaSegmentSpecifier(v627, v201);
                    v70 = v568;
                    v66 = v516;
                    v68 = v520;
                    if (v201)
                    {
                      CFRelease(v201);
                    }

                    v76 = a5;
                    if (v583)
                    {
                      CFRelease(v583);
                    }

                    v578 = 1;
                    v523 = 1;
                  }

                  ++v634;
                  v75 = 0.0;
                  v583 = 0;
                  if (v74 != 0.0)
                  {
                    v74 = v74 + FigMediaSegmentSpecifierGetTimeInSeconds(v625);
                  }

                  goto LABEL_485;
                }

                LOBYTE(returnedPointerOut) = 0;
                LOBYTE(blockBufferOut) = 0;
                v139 = MergeLeadingPartialMediaEntries(v627, v625, &v614, &returnedPointerOut, &blockBufferOut, a8);
                matched = v139;
                if (!v76 && v139)
                {
                  v578 = 0;
                  goto LABEL_565;
                }

                if (returnedPointerOut)
                {
                  FigMediaPlaylistGetMediaSegmentSpecifiers(v627);
                  v626 = FigCFArrayGetLastValue();
                  FigMediaSegmentSpecifierSetIsFragment(v626, 0);
                  v578 = blockBufferOut != 0;
                  goto LABEL_466;
                }

                if (v626)
                {
                  LOBYTE(v638) = 0;
                  matched = DoesMediaFileMatchEntry(v626, v625, &v638, &v614, 0, a8);
                  if (!matched && !LOBYTE(v638))
                  {
                    matched = 4294954984;
                    _StreamPlaylistLogError(4294954984, 4294954984, &v614, @"Media segment doesn't match - sequence %llu", v634);
                  }
                }

                else
                {
                  matched = FindMatchingMediaEntry(v627, v625, &v626, &v614, a8);
                  v578 = 0;
                  if (matched || !v523 || !v626)
                  {
LABEL_466:
                    if (!v76 && matched)
                    {
                      goto LABEL_1400;
                    }

                    goto LABEL_468;
                  }

                  matched = 4294954984;
                  _StreamPlaylistLogError(4294954984, 4294954984, &v614, @"Mismatched media segment.  Found old media segment after added new one.", p_blockBufferOut);
                }

                v578 = 0;
                goto LABEL_466;
              }

              matched = 4294954654;
              _StreamPlaylistLogError(4294954654, 4294955032, &v614, @"%s not allowed on partial segment boundaries", "#EXT-X-DISCONTINUITY");
              if (!a5)
              {
                goto LABEL_565;
              }
            }

            else
            {
              v70 = v568;
              v76 = a5;
            }

            v138 = DiscontinuityDomain;
            goto LABEL_253;
          }

          if (v126 > 0x100000)
          {
            _StreamPlaylistLogError(0, 4294951060, &v614, @"implicit map of size %lld too large", v126);
            v126 = 0x100000;
          }

          v133 = v627;
          v134 = FigMediaSegmentSpecifierGetURLString(v625);
          v135 = PlaylistCreateMapEntry(v133, v134, 0, v126, v634, &v632);
          matched = v135;
          if (a5 || !v135)
          {
            FigMediaSegmentSpecifierSetContentKeySpecifier(v632, v125);
            v136 = v624;
            FigMediaSegmentSpecifierSetIV(v632, v624);
            if (v125)
            {
              if (FigContentKeySpecifierGetEncryptionMethod(v125) == 3 && !v136)
              {
                _StreamPlaylistLogError(0, 4294949666, &v614, @"Explicit IV is required for implicit map entry for full segment encryption");
                matched = 0;
                if (!a5)
                {
                  if (dword_1EAF17630)
                  {
                    LODWORD(v638) = 0;
                    type[0] = OS_LOG_TYPE_DEFAULT;
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v211 = LODWORD(v638);
                    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
                    {
                      v212 = v211;
                    }

                    else
                    {
                      v212 = v211 & 0xFFFFFFFE;
                    }

                    if (v212)
                    {
                      LODWORD(blockBufferOut) = 136315138;
                      *(&blockBufferOut + 4) = "FigStreamPlaylistParseInProcess";
                      LODWORD(v510) = 12;
                      p_blockBufferOut = &blockBufferOut;
                      _os_log_send_and_compose_impl();
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    matched = 0;
                  }
                }
              }
            }

            goto LABEL_247;
          }

          v118 = 4;
          v70 = v568;
LABEL_571:
          v76 = a5;
          goto LABEL_157;
        }

        matched = 4294954654;
        _StreamPlaylistLogError(4294954654, 4294951065, &v614, @"Segment found in a multivariant playlist");
        v76 = a5;
        if (a5)
        {
          goto LABEL_138;
        }
      }

LABEL_564:
      v554 = 0;
      goto LABEL_565;
    }

    if (sp_MatchTagAndColon(v69, "#EXT-X-MEDIA-SEQUENCE", 0x15uLL, &ii, &v614))
    {
      if (v68)
      {
        matched = 4294954654;
        _StreamPlaylistLogError(4294954654, 4294949660, &v614, @"Can only have one of each Media Playlist Tag");
        if (!v76)
        {
          goto LABEL_1400;
        }
      }

      v68 = 1;
      matched = sp_strtoull(ii, &ii, &v634, 10, 0, 1, "Media Sequence", &v614);
      if (!matched)
      {
        FigMediaSegmentSpecifierSetMediaSequence(v625, v634);
        goto LABEL_151;
      }

      goto LABEL_149;
    }

    if (sp_MatchTagAndColon(v69, "#EXTINF", 7uLL, &ii, &v614))
    {
      *&returnedPointerOut = 0.0;
      LOBYTE(v641) = 0;
      *&blockBufferOut = 0;
      v77 = sp_strtod(ii, &blockBufferOut, &returnedPointerOut, &v641, "Segment Duration", &v614);
      if (v77 || *&returnedPointerOut >= 0.0)
      {
        if (v77)
        {
          if (v77 == -12642)
          {
            matched = 4294954650;
          }

          else
          {
            matched = v77;
          }
        }

        else
        {
          if (*&returnedPointerOut > v72)
          {
            v72 = *&returnedPointerOut;
          }

          v99 = *&returnedPointerOut != floor(*&returnedPointerOut);
          FigMediaSegmentSpecifierSetTimeInSeconds(v625, *&returnedPointerOut);
          FigMediaSegmentSpecifierSetTimeOffsetInSeconds(v625, v73);
          v100 = returnedPointerOut;
          MaxSegmentDuration = FigMediaPlaylistGetMaxSegmentDuration(v627);
          if (MaxSegmentDuration < *&returnedPointerOut)
          {
            FigMediaPlaylistSetMaxSegmentDuration(v627, *&returnedPointerOut);
          }

          v565 |= v99;
          ++key;
          v73 = v73 + *&v100;
          v566 = (v641 & v566);
          v102 = blockBufferOut;
          ii = *&blockBufferOut;
          if (blockBufferOut && *blockBufferOut == 44)
          {
            matched = 0;
            ii = (v102 + strcspn(blockBufferOut, "\r\n"));
          }

          else
          {
            matched = 0;
          }
        }
      }

      else
      {
        matched = 4294954650;
        _StreamPlaylistLogError(4294954650, 4294955032, &v614, @"Negative number in EXTINF", *&returnedPointerOut);
      }

      v581 = 1;
      goto LABEL_149;
    }

    if (!strncmp(v69, "#EXT-X-I-FRAMES-ONLY", 0x14uLL))
    {
      v119 = v69[20];
      if ((v119 & 0x80000000) != 0)
      {
        if (!__maskrune(v119, 0x500uLL))
        {
LABEL_171:
          ii = (v69 + 20);
          if (v563)
          {
            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294949660, &v614, @"Can only have one of each Media Playlist Tag");
            v76 = a5;
            if (!a5)
            {
              goto LABEL_1400;
            }
          }

          else
          {
            matched = 0;
            v76 = a5;
          }

          v563 = 1;
          FigMediaPlaylistSetHasOnlyIFrames(v627, 1);
          goto LABEL_149;
        }
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * v119 + 60) & 0x500) == 0)
      {
        goto LABEL_171;
      }
    }

    if (sp_MatchTagAndColon(v69, "#EXT-X-CONTENT-STEERING", 0x17uLL, &ii, &v614))
    {
      break;
    }

    if (sp_MatchTagAndColon(v69, "#EXT-X-DISCONTINUITY-SEQUENCE", 0x1DuLL, &ii, &v614))
    {
      *&returnedPointerOut = 0.0;
      v120 = v572;
      v76 = a5;
      if (!v572 || (_StreamPlaylistLogError(4294954654, 4294949660, &v614, @"Can only have one of each Media Playlist Tag"), a5))
      {
        v121 = sp_strtoull(ii, &ii, &returnedPointerOut, 10, 0, 0, "Discontinuity Sequence", &v614);
        matched = v121;
        if (!v121)
        {
          v120 = 1;
        }

        v572 = v120;
        v122 = DiscontinuityDomain;
        if (!v121)
        {
          v122 = returnedPointerOut;
        }

        DiscontinuityDomain = v122;
LABEL_149:
        if (!v76 && matched)
        {
          goto LABEL_1400;
        }

        goto LABEL_151;
      }

LABEL_1398:
      v51 = 0;
      v52 = 0;
      v22 = 0;
      v53 = 0;
      v595 = 0;
      v573 = 0;
      v575 = 0;
      matched = 4294954654;
      goto LABEL_1402;
    }

    v76 = a5;
    if (StreamingPlaylist_MatchAlphanumericStringExactly(v69, "#EXT-X-DISCONTINUITY", 0x14uLL, &ii))
    {
      ++DiscontinuityDomain;
      v561 = 1;
      FigMediaSegmentSpecifierSetIsDiscontinuity(v625, 1);
      matched = 0;
      v525 = 0;
      goto LABEL_151;
    }

    if (sp_MatchTagAndColon(v69, "#EXT-X-TARGETDURATION", 0x15uLL, &ii, &v614))
    {
      LODWORD(returnedPointerOut) = 0;
      if (!v545 || (_StreamPlaylistLogError(4294954654, 4294949660, &v614, @"Can only have one of each Media Playlist Tag"), a5))
      {
        if (sp_strtol(ii, &ii, &returnedPointerOut, 1, "target duration", &v614) || (returnedPointerOut & 0x80000000) != 0)
        {
          matched = 4294954654;
          _StreamPlaylistLogError(4294954654, 4294955025, &v614, @"Illegal target duration (negative)", p_blockBufferOut);
        }

        else if (returnedPointerOut)
        {
          FigMediaPlaylistSetTargetDuration(v627, returnedPointerOut);
          matched = 0;
          v545 = 1;
        }

        else
        {
          matched = 4294954654;
          _StreamPlaylistLogError(4294954654, 4294955025, &v614, @"Illegal target duration (out of range)", p_blockBufferOut);
        }

        goto LABEL_149;
      }

      goto LABEL_1398;
    }

    if (StreamingPlaylist_MatchAlphanumericStringExactly(v69, "#EXT-X-ENDLIST", 0xEuLL, &ii))
    {
      if (FigMediaPlaylistHasEndTag(v627))
      {
        matched = 4294954654;
        _StreamPlaylistLogError(4294954654, 4294949660, &v614, @"Can only have one of each Media Playlist Tag");
        if (!a5)
        {
          goto LABEL_1400;
        }
      }

      else
      {
        matched = 0;
      }

      FigMediaPlaylistSetHasEndTag(v627, 1);
      goto LABEL_149;
    }

    if (sp_MatchTagAndColon(v69, "#EXT-X-ALLOW-CACHE", 0x12uLL, &ii, &v614))
    {
      _StreamPlaylistLogError(0, 4294955028, &v614, @"%s has been deprecated", "#EXT-X-ALLOW-CACHE");
      matched = 0;
      goto LABEL_151;
    }

    if (sp_MatchTagAndColon(v69, "#EXT-X-KEY", 0xAuLL, &ii, &v614))
    {
      matched = PlaylistProcessKey(0, v627, "#EXT-X-KEY", ii, &v624, &v633, &ii, &v614);
      if (!matched)
      {
        v528 |= v624 != 0;
        v213 = v633;
        if (v633)
        {
          BYTE4(v542) |= FigContentKeySpecifierGetEncryptionMethod(v633) == 1;
          LOBYTE(v537) = v537 | (FigContentKeySpecifierGetEncryptionMethod(v213) == 2);
        }

        v558 = 1;
      }

LABEL_551:
      v215 = ii;
      v207 = &v215[strcspn(ii, "\r\n")];
LABEL_552:
      ii = v207;
      goto LABEL_149;
    }

    if (sp_MatchTagAndColon(v69, "#EXT-X-SESSION-KEY", 0x12uLL, &ii, &v614))
    {
      matched = PlaylistProcessKey(v602, 0, "#EXT-X-SESSION-KEY", ii, &v624, &v633, &ii, &v614);
      if (!matched)
      {
        v214 = v633;
        if (v633)
        {
          LODWORD(v548) = 1;
          FigContentKeySpecifierSetIsReadInCurrent(v633, 1);
          FigContentKeySpecifierSetIsPrefetchKey(v214, 1);
        }
      }

      goto LABEL_551;
    }

    if (!sp_MatchTagAndColon(v69, "#EXT-X-STREAM-INF", 0x11uLL, &ii, &v614) && !sp_MatchTagAndColon(v69, "#EXT-X-I-FRAME-STREAM-INF", 0x19uLL, &ii, &v614))
    {
      if (sp_MatchTagAndColon(v69, "#EXT-X-PROGRAM-DATE-TIME", 0x18uLL, &ii, &v614))
      {
        *&returnedPointerOut = 0.0;
        if (v583)
        {
          CFRelease(v583);
        }

        v204 = FigCFParseISO8601Date();
        matched = v204;
        if (v204)
        {
          _StreamPlaylistLogError(v204, 4294955017, &v614, @"%s: ISO8601 Date parse error", "#EXT-X-PROGRAM-DATE-TIME");
          v583 = 0;
        }

        else
        {
          v583 = CFDateCreate(structureAllocator, *&returnedPointerOut);
          FigMediaSegmentSpecifierSetImputedDate(v625, *&returnedPointerOut);
          v553 = 1;
          v74 = *&returnedPointerOut;
        }

        v205 = ii;
        v206 = strcspn(ii, "\r\n");
        v207 = &v205[v206];
        ii = &v205[v206 - 1];
        v208 = *ii;
        if ((v208 - 48) >= 0xA && v208 != 90)
        {
          v207 = &v205[v206 - 1];
        }

        goto LABEL_552;
      }

      v521 = v68;
      if (sp_MatchTagAndColon(v69, "#EXT-X-VERSION", 0xEuLL, &ii, &v614))
      {
        if (v522)
        {
          _StreamPlaylistLogError(4294954654, 4294949660, &v614, @"Can only have one %s tag", "#EXT-X-VERSION");
        }

        LODWORD(v614) = 0;
        if ((*ii - 58) < 0xFFFFFFF6)
        {
          matched = 4294954654;
          _StreamPlaylistLogError(4294954654, 4294955032, &v614, @"No Version", p_blockBufferOut);
        }

        else
        {
          v216 = 0;
          v217 = ii + 1;
          do
          {
            LODWORD(v614) = 10 * v216;
            v216 = *(v217 - 1) + 10 * v216 - 48;
            LODWORD(v614) = v216;
            ii = v217;
            v218 = *v217++;
          }

          while (v218 - 48 < 0xA);
          if ((v218 & 0x80000000) != 0)
          {
            v219 = __maskrune(v218, 0x500uLL);
          }

          else
          {
            v219 = *(MEMORY[0x1E69E9830] + 4 * v218 + 60) & 0x500;
          }

          if (v219)
          {
            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294954986, &v614, @"Characters after version", p_blockBufferOut);
          }

          else
          {
            if ((v614 - 14) > 0xFFFFFFF2)
            {
              matched = 0;
              v223 = 1;
              goto LABEL_743;
            }

            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294954986, &v614, @"Unsupported version: %u", v614);
          }
        }

        v223 = 0;
LABEL_743:
        FigMediaPlaylistSetVersion(v627, v614);
        if (v602)
        {
          FigMultivariantPlaylistSetVersion(v602, v614);
        }

        v76 = a5;
        if (a5)
        {
          v251 = 1;
        }

        else
        {
          v251 = v223;
        }

        if (v251)
        {
          v522 = 1;
          v68 = v68;
          goto LABEL_149;
        }

        goto LABEL_1486;
      }

      v517 = v66;
      v570 = v70;
      if (sp_MatchTagAndColon(v69, "#EXT-X-PLAYLIST-TYPE", 0x14uLL, &ii, &v614))
      {
        if (v538)
        {
          matched = 4294954654;
          _StreamPlaylistLogError(4294954654, 4294949660, &v614, @"Can only have one of each Media Playlist Tag");
          if (!a5)
          {
            goto LABEL_1486;
          }
        }

        else
        {
          matched = 0;
        }

        if (StreamingPlaylist_MatchAlphanumericStringExactly(ii, "VOD", 3uLL, &ii))
        {
          v221 = v627;
          v222 = 2;
          goto LABEL_578;
        }

        if (StreamingPlaylist_MatchAlphanumericStringExactly(ii, "EVENT", 5uLL, &ii))
        {
          v538 = 1;
          FigMediaPlaylistSetPlaylistType(v627, 1);
        }

        else
        {
          v250 = StreamingPlaylist_MatchAlphanumericStringExactly(ii, "LIVE", 4uLL, &ii);
          if (v250)
          {
            v221 = v627;
            v222 = 0;
LABEL_578:
            FigMediaPlaylistSetPlaylistType(v221, v222);
            v538 = 1;
          }

          else
          {
            _StreamPlaylistLogError(v250, 4294955032, &v614, @"Invalid playlist type");
            v538 = 1;
          }
        }

LABEL_698:
        v70 = v70;
        goto LABEL_855;
      }

      if (sp_MatchTagAndColon(v69, "#EXT-X-BYTERANGE", 0x10uLL, &ii, &v614))
      {
        LOBYTE(v641) = 0;
        *&returnedPointerOut = COERCE_DOUBLE(FigMediaSegmentSpecifierGetStartOffset(v625));
        *&blockBufferOut = 0;
        matched = PlaylistProcessByteRange(&blockBufferOut, &returnedPointerOut, &v641, &ii, 0, &v614);
        FigMediaSegmentSpecifierSetBytesToRead(v625, blockBufferOut);
        FigMediaSegmentSpecifierSetStartOffset(v625, returnedPointerOut);
        if (matched)
        {
          _StreamPlaylistLogError(matched, 4294955021, &v614, @"Couldn't read byte range start offset");
          v256 = v542;
          v257 = v525;
        }

        else
        {
          v256 = 1;
          if (v641)
          {
            v257 = 1;
          }

          else
          {
            v257 = 1;
            if (!v525)
            {
              matched = 4294954654;
              _StreamPlaylistLogError(4294954654, 4294955021, &v614, @"Initial offset not received");
              v257 = 0;
              v256 = v542;
            }
          }
        }

        v525 = v257;
        LODWORD(v542) = v256;
        goto LABEL_698;
      }

      if (sp_MatchTagAndColon(v69, "#EXT-X-BITRATE", 0xEuLL, &ii, &v614))
      {
        v259 = PlaylistProcessBitRate(&BitRate, &ii, &v614);
        matched = v259;
        if (v259)
        {
          _StreamPlaylistLogError(v259, 4294948093, &v614, @"Couldn't read bitrate value");
          HIDWORD(v548) = 1;
          goto LABEL_698;
        }

        HIDWORD(v548) = 1;
      }

      else
      {
        if (sp_MatchTagAndColon(v69, "#EXT-X-MEDIA", 0xCuLL, &ii, &v614))
        {
          *v511 = 0;
          v512 = 0;
          v224 = 0;
          v514 = 0;
          v53 = 0;
          v22 = 0;
          v52 = 0;
          v51 = 0;
          LOBYTE(v637) = 0;
          *v599 = 0;
          *&blockBufferOut = 0;
          v547 = 1;
          v225 = 0.0;
          while (1)
          {
            v226 = *ii;
            v83 = v226 > 0xD;
            v227 = (1 << v226) & 0x2401;
            if (!v83 && v227 != 0)
            {
              free(blockBufferOut);
              v239 = FigGetCFStringForOSTypeValue();
              if (v224 && v53 && v51)
              {
                v240 = v239;
                if (v599[1] && v511[0] && !v637)
                {
                  FigStreamPlaylistParseInProcess_cold_18();
                }

                else if (v224 == 1668047728)
                {
                  if (v620)
                  {
                    FigStreamPlaylistParseInProcess_cold_15();
                  }

                  else
                  {
                    if (v514)
                    {
                      if (!FigClosedCaptionGetClosedCaptionTypeAndChannelNumber(v514, 0, 0))
                      {
                        matched = 4294954654;
                        _StreamPlaylistLogError(4294954654, 4294955030, &v614, @"Invalid Entry for %s %@", "INSTREAM-ID", v514);
LABEL_1487:
                        v595 = 0;
                        v573 = 0;
                        v575 = 0;
                        goto LABEL_1402;
                      }

LABEL_819:
                      v275 = v618;
                      if (BYTE8(v616) && v618)
                      {
                        returnedPointerOut = v224;
                        v643 = &v614;
                        v650.length = CFArrayGetCount(v618);
                        v650.location = 0;
                        CFArrayApplyFunction(v275, v650, PlaylistCharacteristicsCheckFn, &returnedPointerOut);
                      }

                      if (v224 == 1668047728)
                      {
                        v276 = PlaylistAddCharacteristicsForClosedCaptions(&v618);
                        if (v276)
                        {
                          matched = v276;
                          goto LABEL_1487;
                        }

                        v277 = v620 == 0;
                        v275 = v618;
                      }

                      else
                      {
                        v277 = 0;
                        if (v224 == 1936684398 && !HIDWORD(v532))
                        {
                          FigMediaCharacteristicsGetTaggedMediaCharacteristicsForEnhancedSpeechIntelligibility();
                          HIDWORD(v532) = FigCFArrayContainsAnyValueInArray();
                          v277 = 0;
                        }
                      }

                      matched = PlaylistAddMediaGroup(v602, v224, v53, v52, v51, v620, v619, v544, v225, v599[1], v637, v599[0], v277, v275, v22, v514, v512, v511[1], &valuePtr);
                      if (!matched && v240)
                      {
                        v278 = CFStringCreateWithFormat(structureAllocator, 0, @"%@%@%@", v53, v51, v240);
                        if (!v278)
                        {
                          FigStreamPlaylistParseInProcess_cold_16(&returnedPointerOut);
                          matched = returnedPointerOut;
                          goto LABEL_1487;
                        }

                        v279 = v278;
                        if (CFSetContainsValue(theSet, v278))
                        {
                          _StreamPlaylistLogError(4294954654, 4294955031, &v614, @"%s: duplicate name (%@) for rendition group %@", "#EXT-X-MEDIA", v51, v53);
                        }

                        else
                        {
                          CFSetAddValue(theSet, v279);
                        }

                        CFRelease(v279);
                        matched = 0;
                      }

LABEL_831:
                      if (v512)
                      {
                        CFRelease(v512);
                      }

                      if (v514)
                      {
                        CFRelease(v514);
                      }

                      if (v53)
                      {
                        CFRelease(v53);
                      }

                      if (v52)
                      {
                        CFRelease(v52);
                      }

                      if (v22)
                      {
                        CFRelease(v22);
                      }

                      if (v620)
                      {
                        CFRelease(v620);
                        v620 = 0;
                      }

                      if (v619)
                      {
                        CFRelease(v619);
                        v619 = 0;
                      }

                      if (v51)
                      {
                        CFRelease(v51);
                      }

                      if (v618)
                      {
                        CFRelease(v618);
                        v618 = 0;
                      }

                      if (v544)
                      {
                        CFRelease(v544);
                      }

                      if (a5 || !matched)
                      {
                        v544 = 0;
                        HIDWORD(v546) = 1;
                        goto LABEL_854;
                      }

LABEL_1486:
                      v51 = 0;
                      v52 = 0;
                      v22 = 0;
                      v53 = 0;
                      goto LABEL_1487;
                    }

                    FigStreamPlaylistParseInProcess_cold_17();
                  }
                }

                else if (v224 == 1986618469 && v22)
                {
                  FigStreamPlaylistParseInProcess_cold_19();
                }

                else if (v224 == 1935832172 && !v620)
                {
                  FigStreamPlaylistParseInProcess_cold_14(&v614);
                }

                else if (v224 == 1936684398)
                {
                  if (!v514)
                  {
                    goto LABEL_819;
                  }

                  if (v614 <= 12)
                  {
                    FigStreamPlaylistParseInProcess_cold_12(&v614);
                  }

                  v252 = CFGetTypeID(v514);
                  if (v252 == CFStringGetTypeID())
                  {
                    CharacterAtIndex = CFStringGetCharacterAtIndex(v514, 0);
                    HIDWORD(v531) = 1;
                    if (a5 || (CharacterAtIndex - 58) >= 0xFFFFFFF6)
                    {
                      goto LABEL_819;
                    }
                  }

                  else if (a5)
                  {
                    HIDWORD(v531) = 1;
                    goto LABEL_819;
                  }

                  FigStreamPlaylistParseInProcess_cold_13();
                }

                else
                {
                  if (!v514)
                  {
                    goto LABEL_819;
                  }

                  FigStreamPlaylistParseInProcess_cold_11();
                }
              }

              else
              {
                FigStreamPlaylistParseInProcess_cold_10();
              }

              matched = 4294954654;
              goto LABEL_1487;
            }

            v641 = 0;
            *&returnedPointerOut = 0.0;
            v639 = 0;
            temporaryBlock = 0;
            *type = 0;
            free(blockBufferOut);
            *&blockBufferOut = 0;
            v229 = sp_ParseAttribute("#EXT-X-MEDIA", ii, 1, 0, &returnedPointerOut, &temporaryBlock, &v641, &v639, &ii, type, &blockBufferOut, &v614);
            matched = v229;
            if (!a5 && v229)
            {
              goto LABEL_1487;
            }

            v231 = type[0];
            if ((type[0] & 2) != 0)
            {
              goto LABEL_750;
            }

            v232 = returnedPointerOut;
            if (*&returnedPointerOut != 0.0)
            {
              v233 = v641;
              if (v641)
              {
                break;
              }
            }

LABEL_692:
            if (!v547)
            {
LABEL_750:
              free(blockBufferOut);
              goto LABEL_831;
            }
          }

          if (temporaryBlock > 8)
          {
            if (temporaryBlock <= 13)
            {
              if (temporaryBlock == 9)
              {
                if (!strncmp(returnedPointerOut, "BIT-DEPTH", 9uLL))
                {
                  v638 = 0.0;
                  if (sp_strtod(v233, &v641, &v638, 0, "bit depth", &v614) || (v238 = v638, v638 <= 0.0))
                  {
                    matched = 4294954654;
                    _StreamPlaylistLogError(4294954654, 4294955032, &v614, @"%s: invalid bit depth", v238, "#EXT-X-MEDIA");
                  }

                  else
                  {
                    matched = 0;
                    v511[1] = v638;
                  }
                }
              }

              else
              {
                if (temporaryBlock != 10)
                {
                  if (temporaryBlock != 11)
                  {
                    goto LABEL_690;
                  }

                  if (strncmp(returnedPointerOut, "INSTREAM-ID", 0xBuLL))
                  {
                    if (!strncmp(v232, "SAMPLE-RATE", 0xBuLL))
                    {
                      v638 = 0.0;
                      if (sp_strtod(v233, &v641, &v638, 0, "sample rate", &v614) || (v234 = v638, v638 <= 0.0))
                      {
                        matched = 4294954654;
                        _StreamPlaylistLogError(4294954654, 4294955032, &v614, @"%s: invalid sample rate", v234, "#EXT-X-MEDIA");
                      }

                      else
                      {
                        matched = 0;
                        v225 = v638;
                      }
                    }

                    goto LABEL_690;
                  }

                  if (v231)
                  {
                    v514 = CFStringCreateWithBytes(structureAllocator, v233, v639, 0x8000100u, 0);
                    goto LABEL_690;
                  }

                  v236 = "INSTREAM-ID";
LABEL_689:
                  matched = 4294954654;
                  _StreamPlaylistLogError(4294954654, 4294955032, &v614, @"%s: missing quotes", v230, v236);
                  goto LABEL_690;
                }

                if (!strncmp(returnedPointerOut, "AUTOSELECT", 0xAuLL))
                {
                  matched = sp_MatchYesOrNo(v232, v233, &v614, &v637);
                  v511[0] = 1;
                }
              }

LABEL_690:
              if (!a5 && matched)
              {
                goto LABEL_1487;
              }

              goto LABEL_692;
            }

            if (temporaryBlock != 14)
            {
              if (temporaryBlock != 15)
              {
                if (temporaryBlock != 19 || strncmp(returnedPointerOut, "STABLE-RENDITION-ID", 0x13uLL))
                {
                  goto LABEL_690;
                }

                if (v544)
                {
                  matched = 4294954654;
                  _StreamPlaylistLogError(4294954654, 4294955031, &v614, @"%s: duplicate stable stream identifier", "STABLE-RENDITION-ID");
                  if (v231)
                  {
                    goto LABEL_623;
                  }
                }

                else if (v231)
                {
LABEL_623:
                  v544 = CFStringCreateWithBytes(structureAllocator, v641, v639, 0x600u, 1u);
                  goto LABEL_690;
                }

                v236 = "STABLE-RENDITION-ID";
                goto LABEL_689;
              }

              if (strncmp(returnedPointerOut, "CHARACTERISTICS", 0xFuLL))
              {
                goto LABEL_690;
              }

              if ((v231 & 1) == 0)
              {
                v236 = "CHARACTERISTICS";
                goto LABEL_689;
              }

              if (v618)
              {
                CFRelease(v618);
                v618 = 0;
                v233 = v641;
              }

              v237 = PlaylistCreateCharacteristicsArray(v233, v639, &v614, &v618);
LABEL_646:
              matched = v237;
              goto LABEL_690;
            }

            if (strncmp(returnedPointerOut, "ASSOC-LANGUAGE", 0xEuLL))
            {
              goto LABEL_690;
            }

            if (v22)
            {
              matched = 4294954654;
              _StreamPlaylistLogError(4294954654, 4294955031, &v614, @"%s: duplicate language", "ASSOC-LANGUAGE");
              if (v231)
              {
                goto LABEL_654;
              }
            }

            else if (v231)
            {
LABEL_654:
              v22 = CFStringCreateWithBytes(structureAllocator, v641, v639, 0x600u, 1u);
              goto LABEL_690;
            }

            v236 = "ASSOC-LANGUAGE";
            goto LABEL_689;
          }

          if (temporaryBlock > 5)
          {
            if (temporaryBlock == 6)
            {
              if (strncmp(returnedPointerOut, "FORCED", 6uLL))
              {
                goto LABEL_690;
              }

              v235 = v599;
            }

            else
            {
              if (temporaryBlock != 7)
              {
                if (!strncmp(returnedPointerOut, "GROUP-ID", 8uLL))
                {
                  if ((v231 & 1) == 0)
                  {
                    v236 = "GROUP-ID";
                    goto LABEL_689;
                  }

                  if (v53)
                  {
                    CFRelease(v53);
                    v233 = v641;
                  }

                  v53 = CFStringCreateWithBytes(structureAllocator, v233, v639, 0x600u, 1u);
                  goto LABEL_690;
                }

                if (strncmp(v232, "LANGUAGE", 8uLL))
                {
                  if (strncmp(v232, "CHANNELS", 8uLL))
                  {
                    goto LABEL_690;
                  }

                  if ((v231 & 1) == 0)
                  {
                    v236 = "CHANNELS";
                    goto LABEL_689;
                  }

                  if (v512)
                  {
                    CFRelease(v512);
                    v233 = v641;
                  }

                  v512 = CFStringCreateWithBytes(structureAllocator, v233, v639, 0x600u, 1u);
                  goto LABEL_690;
                }

                if (v52)
                {
                  matched = 4294954654;
                  _StreamPlaylistLogError(4294954654, 4294955031, &v614, @"%s: duplicate language", "LANGUAGE");
                  if (v231)
                  {
                    goto LABEL_668;
                  }
                }

                else if (v231)
                {
LABEL_668:
                  v52 = CFStringCreateWithBytes(structureAllocator, v641, v639, 0x600u, 1u);
                  goto LABEL_690;
                }

                v236 = "LANGUAGE";
                goto LABEL_689;
              }

              if (strncmp(returnedPointerOut, "DEFAULT", 7uLL))
              {
                goto LABEL_690;
              }

              v235 = &v599[1];
            }

            v237 = sp_MatchYesOrNo(v232, v233, &v614, v235);
            goto LABEL_646;
          }

          if (temporaryBlock == 3)
          {
            if (*returnedPointerOut != 85 || returnedPointerOut[1] != 82 || returnedPointerOut[2] != 73)
            {
              goto LABEL_690;
            }

            if (type[0])
            {
              StreamingPlaylistCreateMediaURLWithBytes(v641, v639, baseURL, v526, &v620, &v619);
              goto LABEL_690;
            }

            v236 = "URI";
            goto LABEL_689;
          }

          if (temporaryBlock != 4)
          {
            goto LABEL_690;
          }

          if (!strncmp(returnedPointerOut, "TYPE", 4uLL))
          {
            if (!strncasecmp(v233, "AUDIO", 5uLL))
            {
              v224 = 1936684398;
            }

            else if (!strncasecmp(v233, "VIDEO", 5uLL))
            {
              v224 = 1986618469;
            }

            else if (!strncasecmp(v233, "SUBTITLES", 9uLL))
            {
              v224 = 1935832172;
            }

            else if (!strncasecmp(v233, "CLOSED-CAPTIONS", 0xFuLL))
            {
              v224 = 1668047728;
            }

            else
            {
              _StreamPlaylistLogError(0, 4294954985, &v614, @"Unknown type %s in EXT-X-MEDIA", v233);
              v547 = 0;
            }

            goto LABEL_690;
          }

          if (strncmp(v232, "NAME", 4uLL))
          {
            goto LABEL_690;
          }

          if (v51)
          {
            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294955031, &v614, @"%s: duplicate name", "NAME");
            if (v231)
            {
              goto LABEL_630;
            }
          }

          else if (v231)
          {
LABEL_630:
            v51 = CFStringCreateWithBytes(structureAllocator, v641, v639, 0x8000100u, 1u);
            goto LABEL_690;
          }

          v236 = "NAME";
          goto LABEL_689;
        }

        if (sp_MatchTagAndColon(v69, "#EXT-X-MAP", 0xAuLL, &ii, &v614))
        {
          v241 = 0;
          v242 = 0;
          temporaryBlock = 0;
          v641 = 0;
          v639 = 0;
          while (1)
          {
            v243 = *ii;
            v83 = v243 > 0xD;
            v244 = (1 << v243) & 0x2401;
            if (!v83 && v244 != 0)
            {
              break;
            }

            *&returnedPointerOut = 0.0;
            *&blockBufferOut = 0;
            v638 = 0.0;
            *type = 0.0;
            v637 = 0;
            free(v639);
            v639 = 0;
            v246 = sp_ParseAttribute("#EXT-X-MAP", ii, 1, 0, &returnedPointerOut, &v638, &blockBufferOut, type, &ii, &v637, &v639, &v614);
            matched = v246;
            if (!a5 && v246)
            {
              goto LABEL_1486;
            }

            v247 = v637;
            if ((v637 & 2) != 0)
            {
              v242 = 1;
            }

            else if (*&returnedPointerOut != 0.0)
            {
              v248 = blockBufferOut;
              if (blockBufferOut)
              {
                if (*&v638 == 9)
                {
                  if (!strncmp(returnedPointerOut, "BYTERANGE", 9uLL))
                  {
                    if ((v247 & 1) == 0)
                    {
                      v297 = "BYTERANGE";
                      goto LABEL_913;
                    }

                    matched = PlaylistProcessByteRange(&temporaryBlock, &v641, 0, &blockBufferOut, *type, &v614);
                  }
                }

                else if (*&v638 == 3 && *returnedPointerOut == 85 && returnedPointerOut[1] == 82 && returnedPointerOut[2] == 73)
                {
                  if ((v637 & 1) == 0)
                  {
                    v297 = "URI";
LABEL_913:
                    matched = 4294954654;
                    _StreamPlaylistLogError(4294954654, 4294955032, &v614, @"%s %s: missing quotes", "#EXT-X-MAP", v297);
LABEL_765:
                    free(v639);
                    if (!v241)
                    {
LABEL_810:
                      if (!a5 && matched)
                      {
                        goto LABEL_1486;
                      }

                      if (v632)
                      {
                        LODWORD(v532) = 1;
                        FigMediaSegmentSpecifierSetIsReadInCurrent(v632, 1);
                        v272 = v633;
                        FigMediaSegmentSpecifierSetContentKeySpecifier(v632, v633);
                        v273 = v624;
                        FigMediaSegmentSpecifierSetIV(v632, v624);
                        if (v272)
                        {
                          EncryptionMethod = FigContentKeySpecifierGetEncryptionMethod(v272);
                          LODWORD(v532) = 1;
                          if (!v273 && EncryptionMethod == 3)
                          {
                            _StreamPlaylistLogError(0, 4294949666, &v614, @"Explicit IV is required for map entry for full segment encryption");
                            matched = 0;
                            LODWORD(v532) = 1;
                            if (!a5)
                            {
                              if (dword_1EAF17630)
                              {
                                LODWORD(v638) = 0;
                                type[0] = OS_LOG_TYPE_DEFAULT;
                                v284 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                                v285 = LODWORD(v638);
                                if (os_log_type_enabled(v284, type[0]))
                                {
                                  v286 = v285;
                                }

                                else
                                {
                                  v286 = v285 & 0xFFFFFFFE;
                                }

                                if (v286)
                                {
                                  LODWORD(blockBufferOut) = 136315138;
                                  *(&blockBufferOut + 4) = "FigStreamPlaylistParseInProcess";
                                  LODWORD(v510) = 12;
                                  p_blockBufferOut = &blockBufferOut;
                                  _os_log_send_and_compose_impl();
                                }

                                LODWORD(v532) = 1;
                                fig_log_call_emit_and_clean_up_after_send_and_compose();
                                matched = 0;
                              }
                            }
                          }
                        }
                      }

                      v557 = 1;
LABEL_854:
                      v70 = v570;
LABEL_855:
                      v76 = a5;
                      v66 = v517;
                      v68 = v521;
                      goto LABEL_149;
                    }

LABEL_809:
                    CFRelease(v241);
                    goto LABEL_810;
                  }

                  v249 = FigGetAllocatorForMedia();
                  v241 = CFStringCreateWithBytes(v249, v248, *type, 0x8000100u, 0);
                }
              }
            }

            if (matched)
            {
              goto LABEL_765;
            }
          }

          if (v242)
          {
            matched = 0;
            goto LABEL_765;
          }

          if (!v241)
          {
            FigStreamPlaylistParseInProcess_cold_20();
            matched = 4294954654;
            goto LABEL_1486;
          }

          if (v632)
          {
            CFRelease(v632);
            v632 = 0;
          }

          MatchingMapEntry = FindMatchingMapEntry(v627, v241, v641, temporaryBlock);
          v632 = MatchingMapEntry;
          if (MatchingMapEntry && (CFRetain(MatchingMapEntry), v632))
          {
            matched = 0;
          }

          else
          {
            matched = PlaylistCreateMapEntry(v627, v241, v641, temporaryBlock, v634, &v632);
          }

          free(v639);
          v536 = 1;
          goto LABEL_809;
        }

        if (sp_MatchTagAndColon(v69, "#EXT-X-PART-INF", 0xFuLL, &ii, &v614))
        {
          v254 = PlaylistProcessPartInfTag(v627, ii, &v614);
          matched = v254;
          if (!a5 && v254)
          {
            goto LABEL_1486;
          }

          if (v560)
          {
            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294949660, &v614, @"Can only have one of each Media Playlist Tag");
          }

          if (!a5 && matched)
          {
            goto LABEL_1486;
          }

          v255 = ii;
          ii = &v255[strcspn(ii, "\r\n")];
          v560 = 1;
          goto LABEL_698;
        }

        if (sp_MatchTagAndColon(v69, "#EXT-X-PART", 0xBuLL, &ii, &v614))
        {
          if (!v626)
          {
            v260 = 0;
            do
            {
              v261 = FigMediaPlaylistGetMediaSegmentSpecifiers(v627);
              if (v261)
              {
                v261 = CFArrayGetCount(v261);
              }

              if (v260 >= v261)
              {
                goto LABEL_800;
              }

              v262 = FigMediaPlaylistGetMediaSegmentSpecifiers(v627);
              v263 = CFArrayGetValueAtIndex(v262, v260);
              v264 = FigMediaSegmentSpecifierGetMediaSequence(v263);
              ++v260;
            }

            while (v264 != FigMediaSegmentSpecifierGetMediaSequence(v625));
            DiscontinuityDomain = FigMediaSegmentSpecifierGetMediaSequence(v263);
          }

LABEL_800:
          v265 = v74 + v75;
          if (v74 == 0.0)
          {
            v265 = 0.0;
          }

          v266 = PlaylistProcessPartTag(v627, ii, v625, v633, v632, DiscontinuityDomain, v624, &v614, v265, &v611);
          matched = v266;
          if (!a5 && v266)
          {
            goto LABEL_1486;
          }

          v267 = ii;
          ii = &v267[strcspn(ii, "\r\n")];
          FigMediaPlaylistSetHasPartTag(v627, 1);
          FigMediaSegmentSpecifierGetPartialSegments(v625);
          v268 = FigCFArrayGetLastValue();
          if (v268)
          {
            v269 = v268;
            v270 = FigMediaSegmentSpecifierGetTimeInSeconds(v268);
            if (BYTE4(v541))
            {
              v271 = 1;
            }

            else
            {
              v271 = FigMediaSegmentSpecifierIsMarkedIndependent(v269) != 0;
            }

            BYTE4(v541) = v271;
          }

          else
          {
            BYTE4(v541) = BYTE4(v541) != 0;
            v270 = 0.0;
          }

          v75 = v75 + v270;
          goto LABEL_854;
        }

        if (sp_MatchTagAndColon(v69, "#EXT-X-RENDITION-REPORT", 0x17uLL, &ii, &v614))
        {
          v280 = PlaylistProcessRenditionReportTag(v627, ii, baseURL, &v614);
          matched = v280;
          if (!a5 && v280)
          {
            goto LABEL_1486;
          }

          v281 = ii;
          ii = &v281[strcspn(ii, "\r\n")];
          HIDWORD(v534) = 1;
          goto LABEL_698;
        }

        if (sp_MatchTagAndColon(v69, "#EXT-X-PRELOAD-HINT", 0x13uLL, &ii, &v614))
        {
          v282 = PlaylistProcessPreloadHintTag(v627, ii, &v614);
          matched = v282;
          if (!a5 && v282)
          {
            goto LABEL_1486;
          }

          v283 = ii;
          ii = &v283[strcspn(ii, "\r\n")];
          LODWORD(v534) = 1;
          goto LABEL_698;
        }

        if (sp_MatchTagAndColon(v69, "#EXT-X-START", 0xCuLL, &ii, &v614))
        {
          v287 = 0;
          v288 = 0;
          *&returnedPointerOut = 0.0;
          v599[1] = 0;
          *&blockBufferOut = 0;
          while (1)
          {
            while (1)
            {
              v289 = *ii;
              v83 = v289 > 0xD;
              v290 = (1 << v289) & 0x2401;
              if (!v83 && v290 != 0)
              {
                matched = 0;
                v295 = 1;
LABEL_907:
                free(blockBufferOut);
                if (!v295 || v287)
                {
                  if (a5)
                  {
                    v298 = 1;
                  }

                  else
                  {
                    v298 = v295;
                  }

                  if ((v298 & 1) == 0)
                  {
                    goto LABEL_1486;
                  }
                }

                else if (v288)
                {
                  if (v602)
                  {
                    FigMultivariantPlaylistSetHasStartTime(v602, 1);
                    FigMultivariantPlaylistSetStartTimeValue(v602, *&returnedPointerOut);
                    v296 = v599[1];
                    FigMultivariantPlaylistSetIsStartTimePrecise(v602, v599[1]);
                  }

                  else
                  {
                    v296 = v599[1];
                  }

                  FigMediaPlaylistSetHasStartTime(v627, 1);
                  FigMediaPlaylistSetStartTimeValue(v627, *&returnedPointerOut);
                  FigMediaPlaylistSetIsStartTimePrecise(v627, v296);
                }

                else
                {
                  _StreamPlaylistLogError(4294954654, 4294954977, &v614, @"%s : missing %s", "#EXT-X-START", "TIME-OFFSET");
                }

                goto LABEL_854;
              }

              temporaryBlock = 0;
              v641 = 0;
              v639 = 0;
              v637 = 0;
              free(blockBufferOut);
              *&blockBufferOut = 0;
              v292 = sp_ParseAttribute("#EXT-X-START", ii, 1, 0, &v641, &v639, &temporaryBlock, &v638, &ii, &v637, &blockBufferOut, &v614);
              matched = v292;
              if (!a5 && v292)
              {
                goto LABEL_1486;
              }

              if ((v637 & 2) == 0)
              {
                break;
              }

              v287 = 1;
              if (v292)
              {
LABEL_906:
                v295 = 0;
                goto LABEL_907;
              }
            }

            v293 = v641;
            if (!v641)
            {
              goto LABEL_903;
            }

            v294 = temporaryBlock;
            if (!temporaryBlock)
            {
              goto LABEL_903;
            }

            if (v639 == 7)
            {
              if (!strncmp(v641, "PRECISE", 7uLL))
              {
                matched = sp_MatchYesOrNo(v293, v294, &v614, &v599[1]);
              }

              goto LABEL_903;
            }

            if (v639 == 11 && !strncmp(v641, "TIME-OFFSET", 0xBuLL))
            {
              *type = 0.0;
              matched = sp_strtod(v294, type, &returnedPointerOut, 0, "Time Offset", &v614);
              if (matched)
              {
                goto LABEL_906;
              }

              v288 = 1;
            }

            else
            {
LABEL_903:
              if (matched)
              {
                goto LABEL_906;
              }
            }
          }
        }

        if (sp_MatchTagAndColon(v69, "#EXT-X-SESSION-DATA", 0x13uLL, &ii, &v614) || sp_MatchTagAndColon(v69, "#EXT-X-SESSION-DATA-ITUNES", 0x1AuLL, &ii, &v614))
        {
          matched = PlaylistProcessSessionDataTag(v602, ii, baseURL, &v614);
          v300 = ii;
          ii = &v300[strcspn(ii, "\r\n")];
          LODWORD(v546) = 1;
          goto LABEL_698;
        }

        if (StreamingPlaylist_MatchAlphanumericStringExactly(v69, "#EXT-X-INDEPENDENT-SEGMENTS", 0x1BuLL, &ii))
        {
          FigMediaPlaylistSetHasIndependentSegments(v627, 1);
          if (v602)
          {
            FigMultivariantPlaylistSetHasIndependentSegments(v602, 1);
          }

          matched = 0;
        }

        else
        {
          if (sp_MatchTagAndColon(v69, "#EXT-X-DATERANGE", 0x10uLL, &ii, &v614))
          {
            matched = PlaylistProcessTaggedRangeTag(v627, ii, &v612, &v614);
            v299 = ii;
            ii = &v299[strcspn(ii, "\r\n")];
            LODWORD(v533) = 1;
            goto LABEL_698;
          }

          if (StreamingPlaylist_MatchAlphanumericStringExactly(v69, "#EXT-X-GAP", 0xAuLL, &ii))
          {
            matched = 0;
            ii = &v69[strcspn(v69, "\r\n")];
            v540[4] = 1;
            v552 = 1;
          }

          else
          {
            if (sp_MatchTagAndColon(v69, "#EXT-X-DEFINE", 0xDuLL, &ii, &v614))
            {
              matched = PlaylistProcessVariableTag(ii, a11, a12, &v623, &v614);
              v301 = ii;
              ii = &v301[strcspn(ii, "\r\n")];
              goto LABEL_698;
            }

            if (sp_MatchTagAndColon(v69, "#EXT-X-SERVER-CONTROL", 0x15uLL, &ii, &v614))
            {
              if (HIDWORD(v533))
              {
                matched = 4294954654;
                _StreamPlaylistLogError(4294954654, 4294949660, &v614, @"Can only have one of each Media Playlist Tag");
                if (!a5)
                {
                  goto LABEL_1486;
                }
              }

              matched = PlaylistProcessServerControlTag(v627, ii, &v614, PartHoldBackDuration, HoldBackDuration);
              v302 = ii;
              ii = &v302[strcspn(ii, "\r\n")];
              HIDWORD(v533) = 1;
              goto LABEL_698;
            }

            v303 = sp_MatchTagAndColon(v69, "#EXT-X-SKIP", 0xBuLL, &ii, &v614);
            if (v303)
            {
              *&blockBufferOut = 0;
              v641 = 0;
              *&returnedPointerOut = 0.0;
              v304 = v627;
              v305 = ii;
              v306 = FigMediaSegmentSpecifierGetMediaSequence(v625);
              matched = PlaylistProcessSkipTag(v304, v305, &v614, v306, v583, v626, &v626, &returnedPointerOut, &blockBufferOut, &v641);
              v307 = ii;
              ii = &v307[strcspn(ii, "\r\n")];
              if (v626)
              {
                NextSegment = FigMediaSegmentSpecifierGetPreviousSegment(v626);
              }

              else
              {
                NextSegment = 0;
              }

              if (v641)
              {
                if (v597)
                {
                  v308 = FigCFArrayCreateConcatenationOfTwoArrays();
                  v309 = v308;
                  if (v308)
                  {
                    CFRetain(v308);
                  }

                  CFRelease(v597);
                  CFRelease(v641);
                  v597 = v309;
                }

                else
                {
                  v597 = v641;
                }
              }

              v123 = 0;
              if (!matched && NextSegment)
              {
                v310 = FigMediaSegmentSpecifierGetStartOffset(NextSegment);
                v311 = FigMediaSegmentSpecifierGetBytesToRead(NextSegment);
                v312 = v633;
                v313 = FigMediaSegmentSpecifierGetContentKeySpecifier(NextSegment);
                v633 = v313;
                if (v313)
                {
                  CFRetain(v313);
                }

                if (v312)
                {
                  CFRelease(v312);
                }

                v314 = v632;
                v315 = FigMediaSegmentSpecifierGetMapSegmentSpecifier(NextSegment);
                v632 = v315;
                if (v315)
                {
                  CFRetain(v315);
                }

                if (v314)
                {
                  CFRelease(v314);
                }

                BitRate = FigMediaSegmentSpecifierGetBitRate(NextSegment);
                DiscontinuityDomain = FigMediaSegmentSpecifierGetDiscontinuityDomain(NextSegment);
                v540[4] = FigMediaSegmentSpecifierIsMarkedAsGap(NextSegment);
                v634 = FigMediaSegmentSpecifierGetMediaSequence(v626);
                if (v583)
                {
                  CFRelease(v583);
                }

                v583 = 0;
                v554 = v311 + v310;
                key = &key[returnedPointerOut];
                v73 = v73 + *&blockBufferOut;
                v123 = 1;
              }

              v555 = 1;
              v184 = v590;
              v185 = v589;
              v70 = v570;
              v76 = a5;
              v66 = v66;
              v68 = v68;
              goto LABEL_487;
            }

            _StreamPlaylistLogError(v303, 4294955028, &v614, @"Unknown tag in playlist");
            matched = 0;
            ii = &v69[strcspn(v69, "\r\n")];
          }
        }
      }

      v70 = v70;
      v76 = a5;
      v66 = v66;
      v68 = v68;
      goto LABEL_151;
    }

    v569 = v70;
    *&returnedPointerOut = 0.0;
    *&blockBufferOut = 0;
    v601 = 1;
    v140 = sp_MatchTagAndColon(v69, "#EXT-X-I-FRAME-STREAM-INF", 0x19uLL, &returnedPointerOut, &v614);
    v515 = v140;
    if (v140)
    {
      v141 = "#EXT-X-I-FRAME-STREAM-INF";
    }

    else
    {
      v141 = "#EXT-X-STREAM-INF";
    }

    v142 = *v540;
    if (v140)
    {
      v142 = 1;
    }

    *v540 = v142;
    v143 = StreamingPlaylist_SkipSpacesAndTabs(ii, &v614);
    v550 = 0;
    v519 = 0;
    matched = 0;
    for (ii = v143; ; v143 = ii)
    {
      v144 = *v143;
      v83 = v144 > 0xD;
      v145 = (1 << v144) & 0x2401;
      if (!v83 && v145 != 0)
      {
        break;
      }

      temporaryBlock = 0;
      v641 = 0;
      v638 = 0.0;
      v639 = 0;
      v637 = 0;
      free(blockBufferOut);
      *&blockBufferOut = 0;
      v147 = sp_ParseAttribute(v141, ii, 1, 0, &v641, &v639, &temporaryBlock, &v638, &ii, &v637, &blockBufferOut, &v614);
      matched = v147;
      if (!a5 && v147)
      {
        goto LABEL_1400;
      }

      v148 = v637;
      if ((v637 & 2) != 0)
      {
        v539 = 0;
        continue;
      }

      v149 = v66;
      v150 = v641;
      if (!v641)
      {
        goto LABEL_432;
      }

      v151 = temporaryBlock;
      if (!temporaryBlock)
      {
        goto LABEL_432;
      }

      if (v639 > 10)
      {
        if (v639 <= 15)
        {
          if (v639 == 11)
          {
            if (!strncmp(v641, "ALLOWED-CPC", 0xBuLL))
            {
              PlaylistExtractallowedCPCForFairPlayStreaming(v151, *&v638, &v614, &v609, v166, v167, v168, v169);
              matched = v180;
              if (v180)
              {
                v609 = 0;
                if (!a5)
                {
                  goto LABEL_1400;
                }
              }

              goto LABEL_432;
            }

            if (strncmp(v150, "VIDEO-RANGE", 0xBuLL))
            {
              goto LABEL_394;
            }

            if (!strncasecmp(v151, "SDR", 3uLL))
            {
              v535 = 0;
            }

            else
            {
              if (!strncasecmp(v151, "PQ", 2uLL))
              {
                v170 = 2;
              }

              else
              {
                if (strncasecmp(v151, "HLG", 3uLL))
                {
                  matched = 4294954654;
                  _StreamPlaylistLogError(4294954654, 4294955032, &v614, @"%s: illegal value", "VIDEO-RANGE");
                  goto LABEL_432;
                }

                v170 = 1;
              }

              v535 = v170;
            }

LABEL_432:
            v66 = v149;
            continue;
          }

          if (v639 != 14)
          {
            if (v639 != 15)
            {
              goto LABEL_394;
            }

            if (!strncmp(v641, "CLOSED-CAPTIONS", 0xFuLL))
            {
              if (v148)
              {
                HIDWORD(v537) = 1;
                v590 = CFStringCreateWithBytes(structureAllocator, v151, *&v638, 0x600u, 1u);
              }

              else if (!strncasecmp(v151, "NONE", 4uLL))
              {
                LODWORD(v531) = 1;
              }

              else
              {
                matched = 4294954654;
                _StreamPlaylistLogError(4294954654, 4294955032, &v614, @"%s: missing quotes or illegal value", "CLOSED-CAPTIONS", v510);
              }
            }

            else
            {
              if (!strncmp(v150, "VIDEO-IMMERSIVE", 0xFuLL))
              {
                if (!v519)
                {
                  if (PlaylistExtractVideoImmersiveAttribute(v151, *&v638, &v614, &cf))
                  {
                    FigStreamPlaylistParseInProcess_cold_8();
                    matched = 4294954654;
                    goto LABEL_1400;
                  }

                  v519 = 0;
                  matched = 0;
                }

                goto LABEL_432;
              }

LABEL_394:
              _StreamPlaylistLogError(0, 4294955022, &v614, @"Invalid attribute for %s", v141, v510);
            }

            goto LABEL_432;
          }

          if (strncmp(v641, "_AVG-BANDWIDTH", 0xEuLL))
          {
            if (!strncmp(v150, "DISALLOWED-CPC", 0xEuLL))
            {
              PlaylistExtractDisallowedCPCForFairPlayStreaming(v151, *&v638, &v614, &v601, v161, v162, v163, v164);
              matched = v165;
              if (!a5 && v165)
              {
                goto LABEL_1400;
              }

              goto LABEL_432;
            }

            goto LABEL_394;
          }

LABEL_360:
          *type = 0.0;
          v171 = sp_strtoll(v151, &temporaryBlock, type, 1, "avg_bandwidth", &v614);
          if (*type <= 0)
          {
            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294955021, &v614, @"Zero average bandwidth", p_blockBufferOut, v510);
          }

          else
          {
            matched = v171;
            v172 = v530;
            if (!v171)
            {
              v172 = *type;
            }

            v530 = v172;
          }

          goto LABEL_432;
        }

        if (v639 == 17)
        {
          if (strncmp(v641, "AVERAGE-BANDWIDTH", 0x11uLL))
          {
            if (strncmp(v150, "STABLE-VARIANT-ID", 0x11uLL))
            {
              goto LABEL_394;
            }

            v544 = CFStringCreateWithBytes(structureAllocator, v151, *&v638, 0x600u, 1u);
            goto LABEL_432;
          }

          goto LABEL_360;
        }

        if (v639 != 19)
        {
          if (v639 != 16 || strncmp(v641, "REQ-VIDEO-LAYOUT", 0x10uLL))
          {
            goto LABEL_394;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
            v151 = temporaryBlock;
          }

          if (PlaylistExtractVideoLayoutAttribute(v151, *&v638, &v614, &cf, &v628))
          {
            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294955032, &v614, @"%s: Invalid video layout tag", "#EXT-X-STREAM-INF");
            if (!v628)
            {
              goto LABEL_1400;
            }

            v539 = 0;
          }

          matched = 0;
          LODWORD(v541) = 1;
          v519 = 1;
          goto LABEL_432;
        }

        if (strncmp(v641, "SUPPLEMENTAL-CODECS", 0x13uLL))
        {
          goto LABEL_394;
        }

        if (v148)
        {
          v587 = CFStringCreateWithBytes(structureAllocator, v151, *&v638, 0x600u, 1u);
          goto LABEL_432;
        }

        v181 = "SUPPLEMENTAL-CODECS";
LABEL_431:
        matched = 4294954654;
        _StreamPlaylistLogError(4294954654, 4294955032, &v614, @"%s: missing quotes", v181, v510);
        goto LABEL_432;
      }

      if (v639 <= 5)
      {
        if (v639 != 3)
        {
          if (v639 != 5)
          {
            goto LABEL_394;
          }

          if (!strncmp(v641, "AUDIO", 5uLL))
          {
            if (v148)
            {
              v585 = CFStringCreateWithBytes(structureAllocator, v151, *&v638, 0x600u, 1u);
              goto LABEL_432;
            }

            v181 = "AUDIO";
          }

          else
          {
            if (strncmp(v150, "VIDEO", 5uLL))
            {
              if (!strncmp(v150, "SCORE", 5uLL))
              {
                *type = -1.0;
                matched = sp_strtod(v151, &temporaryBlock, type, 0, "Alternate score", &v614);
                if (matched || (v159 = *type, *type < 0.0))
                {
                  _StreamPlaylistLogError(4294954654, 4294955032, &v614, @"%s: Invalid ranking score", *&v159, "#EXT-X-STREAM-INF");
                  v159 = *&v71;
                  if (matched)
                  {
                    goto LABEL_1400;
                  }
                }

                matched = 0;
                v71 = *&v159;
                goto LABEL_432;
              }

              goto LABEL_394;
            }

            if (v148)
            {
              v584 = CFStringCreateWithBytes(structureAllocator, v151, *&v638, 0x600u, 1u);
              goto LABEL_432;
            }

            v181 = "VIDEO";
          }

          goto LABEL_431;
        }

        if (*v641 != 85 || *(v641 + 1) != 82 || *(v641 + 2) != 73)
        {
          goto LABEL_394;
        }

        if (!v540[0])
        {
          matched = 4294954654;
          _StreamPlaylistLogError(4294954654, 4294955018, &v614, @"Use of URI in %s", v141);
          if (!a5)
          {
            goto LABEL_1400;
          }
        }

        v160 = v622;
        v66 = v149;
        if (v622)
        {
          _StreamPlaylistLogError(0, 4294955018, &v614, @"Multiple URL in %s - ignoring old one", v141);
          CFRelease(v160);
          v622 = 0;
          if (v621)
          {
            CFRelease(v621);
            v621 = 0;
          }
        }

        if (v148)
        {
          StreamingPlaylistCreateMediaURLWithBytes(temporaryBlock, *&v638, baseURL, v526, &v622, &v621);
          if (v622)
          {
            continue;
          }
        }

        else
        {
          _StreamPlaylistLogError(4294954654, 4294955032, &v614, @"%s: missing quotes", "URI");
        }

        matched = 4294954654;
        _StreamPlaylistLogError(4294954654, 4294955034, &v614, @"Invalid URI");
      }

      else
      {
        if (v639 == 6)
        {
          if (strncmp(v641, "CODECS", 6uLL))
          {
            goto LABEL_394;
          }

          if (v148)
          {
            v586 = CFStringCreateWithBytes(structureAllocator, v151, *&v638, 0x600u, 1u);
            goto LABEL_432;
          }

          v181 = "CODECS";
          goto LABEL_431;
        }

        if (v639 == 9)
        {
          if (!strncmp(v641, "BANDWIDTH", 9uLL))
          {
            *type = 0.0;
            v173 = sp_strtoll(v151, &temporaryBlock, type, 1, "bandwidth", &v614);
            if (*type <= 0)
            {
              matched = 4294954654;
              _StreamPlaylistLogError(4294954654, 4294955021, &v614, @"Zero bandwidth", p_blockBufferOut, v510);
            }

            else
            {
              matched = v173;
              v174 = v529;
              if (!v173)
              {
                v174 = *type;
              }

              v529 = v174;
            }

            goto LABEL_432;
          }

          if (strncmp(v150, "SUBTITLES", 9uLL))
          {
            goto LABEL_394;
          }

          if (v148)
          {
            v589 = CFStringCreateWithBytes(structureAllocator, v151, *&v638, 0x600u, 1u);
            goto LABEL_432;
          }

          v181 = "SUBTITLES";
          goto LABEL_431;
        }

        if (v639 != 10)
        {
          goto LABEL_394;
        }

        v152 = strncmp(v641, "PROGRAM-ID", 0xAuLL);
        if (!v152)
        {
          _StreamPlaylistLogError(v152, 4294955022, &v614, @"%s has been deprecated and is no longer a valid attribute for %s", "PROGRAM-ID", v141);
          goto LABEL_432;
        }

        if (!strncmp(v150, "RESOLUTION", 0xAuLL))
        {
          if (!StreamingPlaylist_FindResolution(v151, &v630, &v629, &temporaryBlock, &v614))
          {
            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294955032, &v614, @"Could not parse resolution", p_blockBufferOut, v510);
          }

          goto LABEL_432;
        }

        if (!strncmp(v150, "FRAME-RATE", 0xAuLL))
        {
          if (v540[0])
          {
            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294951063, &v614, @"%s: illegal attribute in %s", "FRAME-RATE", v141);
          }

          else
          {
            matched = sp_strtod(v151, 0, &v610, 0, "frame rate", &v614);
          }

          goto LABEL_432;
        }

        if (!strncmp(v150, "HDCP-LEVEL", 0xAuLL))
        {
          if (!strncasecmp(v151, "TYPE-0", 6uLL))
          {
            v527 = 0;
          }

          else if (!strncasecmp(v151, "NONE", 4uLL))
          {
            v175 = -1;
LABEL_423:
            v527 = v175;
          }

          else
          {
            if (!strncasecmp(v151, "TYPE-1", 6uLL))
            {
              v175 = 1;
              goto LABEL_423;
            }

            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294955032, &v614, @"%s: illegal value", "HDCP-LEVEL", v510);
          }

          goto LABEL_432;
        }

        if (strncmp(v150, "PATHWAY-ID", 0xAuLL))
        {
          goto LABEL_394;
        }

        if ((v148 & 1) == 0)
        {
          FigStreamPlaylistParseInProcess_cold_9();
          matched = 4294954654;
          goto LABEL_432;
        }

        v153 = *&v638;
        if (v638 != 0.0)
        {
          v154 = *&v638;
          while (1)
          {
            v156 = *v151++;
            v155 = v156;
            v157 = (v156 & 0xFFFFFFDF) - 65;
            v158 = (v156 - 48) >= 0xA && v157 >= 0x1A;
            if (v158 && (v155 - 45) >= 2 && v155 != 95)
            {
              break;
            }

            if (!--v154)
            {
              goto LABEL_396;
            }
          }

          matched = 4294954654;
          _StreamPlaylistLogError(4294954654, 4294955032, &v614, @"%s: attribute %s contains illegal characters", v141, "PATHWAY-ID");
        }

LABEL_396:
        v66 = v149;
        if (!a5 && matched)
        {
          goto LABEL_1400;
        }

        if (v515)
        {
          v176 = v550;
        }

        else
        {
          v176 = v543;
        }

        if (v176)
        {
          CFRelease(v176);
          v153 = *&v638;
        }

        v177 = CFStringCreateWithBytes(structureAllocator, temporaryBlock, v153, 0x8000100u, 1u);
        v178 = v543;
        if (!v515)
        {
          v178 = v177;
        }

        v543 = v178;
        v179 = v550;
        if (v515)
        {
          v179 = v177;
        }

        v550 = v179;
      }
    }

    free(blockBufferOut);
    v182 = v622;
    if (v622)
    {
      if (v539 != 1)
      {
        v183 = v550;
        goto LABEL_456;
      }

      v220 = v543;
      v183 = v550;
      if (v515)
      {
        v220 = v550;
      }

      matched = PlaylistProcessAlternate(v602, v622, v621, v529, v530, v586, v587, v585, v610, v71, v584, v589, v590, v540[0], v630, v629, v544, v527, v535, v609, cf, v220, &v612 + 1, v601, &v614);
      v182 = v622;
      if (v622)
      {
LABEL_456:
        CFRelease(v182);
        v622 = 0;
      }

      v76 = a5;
      if (v621)
      {
        CFRelease(v621);
        v621 = 0;
      }

      if (v183)
      {
        CFRelease(v183);
      }

      if (matched)
      {
        goto LABEL_1400;
      }

      v123 = 1;
      v70 = 1;
      v184 = v590;
      v185 = v589;
    }

    else
    {
      v184 = v590;
      v185 = v589;
      if (v540[0])
      {
        matched = 4294954654;
        _StreamPlaylistLogError(4294954654, 4294955033, &v614, @"No URI in I-Frame variant");
        v185 = v589;
        v184 = v590;
      }

      v123 = 0;
      v70 = v569;
      v76 = a5;
    }

    v549 = 1;
LABEL_487:
    v590 = v184;
    v589 = v185;
    if (!v123)
    {
      goto LABEL_149;
    }

    if (v586)
    {
      CFRelease(v586);
      v185 = v589;
      v184 = v590;
    }

    if (v587)
    {
      CFRelease(v587);
      v185 = v589;
      v184 = v590;
    }

    if (v585)
    {
      CFRelease(v585);
      v185 = v589;
      v184 = v590;
    }

    if (v584)
    {
      CFRelease(v584);
      v185 = v589;
      v184 = v590;
    }

    if (v185)
    {
      CFRelease(v185);
      v184 = v590;
    }

    if (v184)
    {
      CFRelease(v184);
    }

    if (v544)
    {
      CFRelease(v544);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v543)
    {
      CFRelease(v543);
    }

    v629 = -1;
    v630 = -1;
    v610 = 0.0;
    v609 = -1;
    if (v625)
    {
      CFRelease(v625);
      v625 = 0;
    }

    v203 = FigGetAllocatorForMedia();
    matched = FigMediaSegmentSpecifierCreateEmpty(v203, &v625);
    if (matched)
    {
      v51 = 0;
      v52 = 0;
      v22 = 0;
      v53 = 0;
      v595 = 0;
      v590 = 0;
      v589 = 0;
      v584 = 0;
      v585 = 0;
      v587 = 0;
      v586 = 0;
      goto LABEL_1401;
    }

    FigMediaSegmentSpecifierSetStartOffset(v625, v554);
    FigMediaSegmentSpecifierSetContentKeySpecifier(v625, v633);
    FigMediaSegmentSpecifierSetMapSegmentSpecifier(v625, v632);
    FigMediaSegmentSpecifierSetMediaSequence(v625, v634);
    v549 = 0;
    v581 = 0;
    v529 = 0;
    v530 = 0;
    v586 = 0;
    v587 = 0;
    v585 = 0;
    v584 = 0;
    v589 = 0;
    v590 = 0;
    *v540 = 0;
    v543 = 0;
    v544 = 0;
    LODWORD(v532) = 0;
    v539 = 1;
    v71 = -1.0;
    v527 = -2;
    v535 = -1;
LABEL_151:
    v112 = ii;
    v113 = *ii;
    v83 = v113 > 0xD;
    v114 = (1 << v113) & 0x2401;
    if (v83 || v114 == 0)
    {
      _StreamPlaylistLogError(0, 4294955032, &v614, @"extra characters at end of line");
    }

    v116 = &v112[strcspn(v112, "\r\n")];
    v117 = strspn(v116, "\r\n");
    v118 = 0;
    v69 = &v116[v117];
LABEL_157:
    if (v118)
    {
      if (v118 == 4)
      {
        goto LABEL_1400;
      }

      v51 = 0;
      v52 = 0;
      v22 = 0;
      v53 = 0;
      v595 = 0;
      v316 = 0;
      goto LABEL_1405;
    }
  }

  if (v66)
  {
    matched = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294949660, &v614, @"Can only have one %s tag", "#EXT-X-CONTENT-STEERING");
    v76 = a5;
    goto LABEL_130;
  }

  v567 = v70;
  v78 = 0;
  v79 = 0;
  matched = 0;
  v80 = v602;
  v81 = ii;
  returnedPointerOut = ii;
  *&blockBufferOut = 0;
  while (2)
  {
    v82 = *v81;
    v83 = v82 > 0xD;
    v84 = (1 << v82) & 0x2401;
    if (!v83 && v84 != 0)
    {
      FigMultivariantPlaylistSetContentSteeringServerURL(v80, v78);
      FigMultivariantPlaylistSetContentSteeringInitPathwayID(v80, v79);
      if (!v78)
      {
        FigStreamPlaylistParseInProcess_cold_2();
        matched = 4294954654;
LABEL_562:
        v70 = v567;
        goto LABEL_124;
      }

LABEL_122:
      v70 = v567;
LABEL_123:
      CFRelease(v78);
      goto LABEL_124;
    }

    temporaryBlock = 0;
    v641 = 0;
    v638 = 0.0;
    v639 = 0;
    v637 = 0;
    v86 = blockBufferOut;
    if (blockBufferOut)
    {
      *&blockBufferOut = 0;
      free(v86);
    }

    matched = sp_ParseAttribute("#EXT-X-CONTENT-STEERING", v81, 1, 0, &v641, &v639, &temporaryBlock, &v638, &returnedPointerOut, &v637, &blockBufferOut, &v614);
    if (matched && !BYTE9(v616))
    {
      goto LABEL_213;
    }

    v87 = v637;
    if ((v637 & 2) != 0)
    {
      goto LABEL_213;
    }

    v88 = v68;
    v89 = v641;
    if (!v641)
    {
      goto LABEL_110;
    }

    v90 = temporaryBlock;
    if (!temporaryBlock)
    {
      goto LABEL_110;
    }

    v91 = v639;
    if (v639 != 10)
    {
      goto LABEL_109;
    }

    if (!strncmp(v641, "SERVER-URI", 0xAuLL))
    {
      if ((v87 & 1) == 0)
      {
        FigStreamPlaylistParseInProcess_cold_6();
LABEL_521:
        matched = 4294954654;
        v68 = v88;
        goto LABEL_213;
      }

      v68 = v88;
      if (v78)
      {
        matched = 4294954654;
        _StreamPlaylistLogError(4294954654, 4294955032, &v614, @"%s has multiple %s attributes", "#EXT-X-CONTENT-STEERING", "SERVER-URI");
        goto LABEL_122;
      }

      v98 = CFURLCreateWithBytes(structureAllocator, v90, *&v638, 0x8000100u, v615);
      if (v98)
      {
        v78 = v98;
        matched = 0;
      }

      else
      {
        matched = FigSignalErrorAtGM();
        if (matched && !BYTE9(v616))
        {
          goto LABEL_562;
        }

        v78 = 0;
      }

      goto LABEL_111;
    }

    if (strncmp(v89, "PATHWAY-ID", 0xAuLL))
    {
LABEL_109:
      _StreamPlaylistLogError(0, 4294955022, &v614, @"Unrecognized attribute %.*s in %s", v91, v89, "#EXT-X-CONTENT-STEERING");
LABEL_110:
      v68 = v88;
LABEL_111:
      v81 = returnedPointerOut;
      continue;
    }

    break;
  }

  if ((v87 & 1) == 0)
  {
    FigStreamPlaylistParseInProcess_cold_5();
    goto LABEL_521;
  }

  v68 = v88;
  if (v79)
  {
    FigStreamPlaylistParseInProcess_cold_3();
    goto LABEL_212;
  }

  if (v638 == 0.0)
  {
LABEL_100:
    v79 = CFStringCreateWithBytes(structureAllocator, v90, *&v638, 0x8000100u, 1u);
    if (!v79)
    {
      FigStreamPlaylistParseInProcess_cold_4(type);
      matched = *type;
      goto LABEL_213;
    }

    goto LABEL_111;
  }

  v92 = v90;
  v93 = *&v638;
  while (1)
  {
    v95 = *v92++;
    v94 = v95;
    v96 = (v95 & 0xFFFFFFDF) - 65;
    v97 = (v95 - 48) >= 0xA && v96 >= 0x1A;
    if (v97 && (v94 - 45) >= 2 && v94 != 95)
    {
      break;
    }

    if (!--v93)
    {
      goto LABEL_100;
    }
  }

  FigStreamPlaylistParseInProcess_cold_7();
  v79 = 0;
LABEL_212:
  matched = 4294954654;
LABEL_213:
  v70 = v567;
  if (v78)
  {
    goto LABEL_123;
  }

LABEL_124:
  if (v79)
  {
    CFRelease(v79);
  }

  v76 = a5;
  if (blockBufferOut)
  {
    free(blockBufferOut);
  }

  if (a5 || !matched)
  {
LABEL_130:
    v103 = ii;
    ii = &v103[strcspn(ii, "\r\n")];
    v66 = 1;
    goto LABEL_149;
  }

LABEL_1400:
  v51 = 0;
  v52 = 0;
  v22 = 0;
  v53 = 0;
  v595 = 0;
LABEL_1401:
  v573 = 0;
  v575 = 0;
LABEL_1402:
  if (v625)
  {
    CFRelease(v625);
  }

  v316 = !v573 && v575;
LABEL_1405:
  if (*__error())
  {
    if (v316)
    {
      goto LABEL_1414;
    }

LABEL_1409:
    if ((*a4 & 1) == 0)
    {
      if (a14 && !*a14 && !matched)
      {
        *a14 = v627;
        v627 = 0;
      }

LABEL_1418:
      if (v602)
      {
        CFRelease(v602);
      }

      goto LABEL_1420;
    }
  }

  else
  {
    *__error() = v562;
    if (!v316)
    {
      goto LABEL_1409;
    }
  }

LABEL_1414:
  if (!a13 || *a13 || matched)
  {
    goto LABEL_1418;
  }

  *a13 = v602;
  v602 = 0;
LABEL_1420:
  if (v627)
  {
    CFRelease(v627);
  }

  if (v595)
  {
    CFRelease(v595);
  }

  if (v633)
  {
    CFRelease(v633);
  }

  if (v632)
  {
    CFRelease(v632);
  }

  if (v576)
  {
    CFRelease(v576);
  }

  if (v622)
  {
    CFRelease(v622);
    v622 = 0;
  }

  if (v621)
  {
    CFRelease(v621);
    v621 = 0;
  }

  if (v583)
  {
    CFRelease(v583);
  }

  if (v597)
  {
    CFRelease(v597);
  }

  if (v586)
  {
    CFRelease(v586);
  }

  if (v587)
  {
    CFRelease(v587);
  }

  if (v585)
  {
    CFRelease(v585);
  }

  if (v584)
  {
    CFRelease(v584);
  }

  if (v589)
  {
    CFRelease(v589);
  }

  if (v590)
  {
    CFRelease(v590);
  }

  if (v624)
  {
    CFRelease(v624);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v618)
  {
    CFRelease(v618);
    v618 = 0;
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v620)
  {
    CFRelease(v620);
    v620 = 0;
  }

  if (v619)
  {
    CFRelease(v619);
    v619 = 0;
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (*(&v615 + 1))
  {
    CFRelease(*(&v615 + 1));
    *(&v615 + 1) = 0;
  }

  v507 = v617;
  if (v617)
  {
    v617 = 0;
    free(v507);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (theSet)
  {
    CFRelease(theSet);
  }

  if (value)
  {
    CFRelease(value);
  }

  return matched;
}

uint64_t sp_MatchTagAndColon(const char *a1, const char *a2, size_t a3, const char **a4, uint64_t a5)
{
  if (strncmp(a1, a2, a3))
  {
    return 0;
  }

  v9 = StreamingPlaylist_SkipSpacesAndTabs(&a1[a3], a5);
  if (*v9 != 58)
  {
    return 0;
  }

  v10 = StreamingPlaylist_SkipSpacesAndTabs(v9 + 1, a5);
  if (a4)
  {
    *a4 = v10;
  }

  return 1;
}

uint64_t sp_strtoull(const char *a1, char **a2, unint64_t *a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  __endptr = 0;
  *__error() = 0;
  *a3 = strtoull(a1, &__endptr, a4);
  if (*__error() == 22)
  {
    v16 = @"%s:Illegal integer conversion";
LABEL_19:
    v24 = a7;
    v21 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955032, a8, v16, v24);
    goto LABEL_20;
  }

  if (*__error() == 34)
  {
    v16 = @"%s:out of range";
    goto LABEL_19;
  }

  if (a5 != 1 && __endptr > a1)
  {
    v16 = @"%s:Illegal character before integer";
    while ((*a1 - 48) < 0xA)
    {
      if (++a1 == __endptr)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  if (a6 != 1 || ((v17 = *__endptr, v18 = v17 > 0x2C, v19 = (1 << v17) & 0x100000002401, !v18) ? (v20 = v19 == 0) : (v20 = 1), !v20))
  {
    v21 = 0;
    v22 = 1;
    if (!a2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v25 = a7;
  v21 = 4294954654;
  _StreamPlaylistLogError(4294954654, 4294955032, a8, @"%s:Illegal characters after integer", v25);
  v22 = 0;
  if (a2)
  {
LABEL_14:
    *a2 = __endptr;
  }

LABEL_15:
  if ((v22 & 1) == 0)
  {
LABEL_20:
    *a3 = 0;
    return v21;
  }

  return 0;
}

uint64_t sp_strtod(const char *a1, char **a2, double *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v28 = 0;
  *__error() = 0;
  if (a3)
  {
    *a3 = 0.0;
    if (a1)
    {
      v13 = strtod_l(a1, &v28, 0);
      *a3 = v13;
      if (v13 == 0.0 && v28 == a1)
      {
        v23 = @"%s: Illegal decimal conversion";
      }

      else
      {
        if (*__error() != 34)
        {
          v15 = v28;
          if (v28 > a1)
          {
            v16 = MEMORY[0x1E69E9830];
            do
            {
              v17 = *a1;
              if (v17 == 46)
              {
                if (a4)
                {
                  *a4 = 1;
                }

                goto LABEL_18;
              }

              if ((v17 & 0x80000000) != 0)
              {
                if (__maskrune(v17, 0x400uLL))
                {
                  goto LABEL_18;
                }
              }

              else if ((*(v16 + 4 * v17 + 60) & 0x400) != 0)
              {
                goto LABEL_18;
              }

              v18 = *a1;
              if (v18 != 45)
              {
                v27 = a5;
                v21 = 4294954654;
                _StreamPlaylistLogError(4294954654, 4294955032, a6, @"%s: Illegal character '%c' in decimal number", v27, v18);
                goto LABEL_30;
              }

LABEL_18:
              ++a1;
              v15 = v28;
            }

            while (a1 < v28);
          }

          v19 = *v15;
          if (v19 > 0x2C || ((1 << v19) & 0x100000002401) == 0)
          {
            v26 = a5;
            v21 = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294955032, a6, @"%s: Illegal character '%c' after decimal number", v26, v19);
            v22 = 0;
            if (!a2)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v21 = 0;
            v22 = 1;
            if (!a2)
            {
LABEL_25:
              if ((v22 & 1) == 0)
              {
                goto LABEL_30;
              }

              return 0;
            }
          }

          *a2 = v28;
          goto LABEL_25;
        }

        v23 = @"%s: Out of range.";
      }

      v25 = a5;
      v21 = 4294954654;
      _StreamPlaylistLogError(4294954654, 4294955023, a6, v23, v25);
      goto LABEL_30;
    }
  }

  sp_strtod_cold_1(a6, v12);
  v21 = 4294954656;
LABEL_30:
  *a3 = 0.0;
  return v21;
}

uint64_t StreamingPlaylist_MatchAlphanumericStringExactly(const char *a1, const char *a2, size_t a3, const char **a4)
{
  if (!a1 || !a2)
  {
    StreamingPlaylist_MatchAlphanumericStringExactly_cold_1();
    return 0;
  }

  if (strncmp(a1, a2, a3))
  {
    return 0;
  }

  v7 = &a1[a3];
  v8 = *v7;
  if ((v8 & 0x80000000) == 0)
  {
    if ((*(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x500) == 0)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (__maskrune(v8, 0x500uLL))
  {
    return 0;
  }

LABEL_9:
  if (a4)
  {
    *a4 = v7;
  }

  return 1;
}

uint64_t sp_strtol(const char *a1, char **a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6)
{
  __endptr = 0;
  *__error() = 0;
  *a3 = strtol(a1, &__endptr, 10);
  if (*__error() == 22)
  {
    v13 = @"%s:Illegal integer conversion";
LABEL_18:
    v18 = a5;
    v15 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955032, a6, v13, v18);
    goto LABEL_19;
  }

  if (*__error() == 34)
  {
    v13 = @"%s:out of range";
    goto LABEL_18;
  }

  if ((*a3 & 0x80000000) != 0)
  {
    v13 = @"%s:Decimal value less than 0";
    goto LABEL_18;
  }

  v12 = __endptr;
  if (__endptr > a1)
  {
    v13 = @"%s:Illegal character before integer";
    while ((*a1 - 48) < 0xA)
    {
      if (++a1 == __endptr)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_18;
  }

LABEL_8:
  if (a4 != 1 || (v14 = *__endptr, v14 <= 0x2C) && ((1 << v14) & 0x100000002401) != 0)
  {
    v15 = 0;
    v16 = 1;
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = a5;
  v15 = 4294954654;
  _StreamPlaylistLogError(4294954654, 4294955032, a6, @"%s:Illegal characters after integer", v19);
  v16 = 0;
  if (a2)
  {
LABEL_12:
    *a2 = v12;
  }

LABEL_13:
  if ((v16 & 1) == 0)
  {
LABEL_19:
    *a3 = 0;
    return v15;
  }

  return 0;
}

const char *StreamingPlaylist_SkipSpacesAndTabs(const char *a1, uint64_t a2)
{
  v5 = strspn(a1, " \t");
  if (v5)
  {
    StreamingPlaylist_SkipSpacesAndTabs_cold_1(a2, v4);
  }

  return &a1[v5];
}

uint64_t sp_ParseAttribute(const char *a1, char *a2, int a3, int a4, char **a5, void *a6, char **a7, size_t *a8, const char **a9, int *a10, UInt8 **a11, uint64_t a12)
{
  v12 = a1;
  v13 = a9;
  v14 = a10;
  v61 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = 0;
  __s1 = a2;
  if (!a2)
  {
    v29 = 4294954656;
    _StreamPlaylistLogError(4294954656, 4294955032, a12, @"%s: no attributes", a1);
LABEL_48:
    v28 = 0;
    goto LABEL_42;
  }

  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  *a8 = 0;
  *a10 = 0;
  *a11 = 0;
  v20 = sp_SkipSpacesTabsAndCommas(a2, a12, 0);
  __s1 = v20;
  if (*v20 == 61)
  {
    v43 = @"%s: Missing or blank attribute";
    v45 = v12;
LABEL_47:
    v29 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955032, a12, v43, v45, v46);
    goto LABEL_48;
  }

  v51 = a7;
  matched = sp_MatchAttributeName(v20, 0, &__s1, &v54);
  v22 = v54;
  if (!matched)
  {
    v28 = 0;
LABEL_12:
    if (v22 && *a5)
    {
      if (*v51)
      {
        v29 = 0;
        v30 = __s1;
        goto LABEL_27;
      }

      v46 = v22;
      v47 = *a5;
      v39 = @"%s: %.*s: Empty or blank attribute value";
    }

    else
    {
      v39 = @"%s: Illegal attribute name";
    }

    v44 = v12;
    v29 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955032, a12, v39, v44, v46, v47);
    goto LABEL_42;
  }

  v49 = a4;
  v23 = __s1;
  *a5 = __s1;
  *a6 = v22;
  if (!strncmp(v23, "REQ-", 4uLL))
  {
    v24 = *a12;
    if (!*a12)
    {
      v48 = v12;
      v56 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v26 = v56;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        v57 = 136315394;
        v58 = "sp_ParseForUnknownREQPrefixAttribute";
        v59 = 2080;
        v60 = v48;
        LODWORD(v46) = 22;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v12 = v48;
    }

    if (!strncasecmp(v12, "#EXT-X-STREAM-INF", 0x11uLL))
    {
      v31 = strncasecmp(v12, "#EXT-X-I-FRAME-STREAM-INF", 0x19uLL);
      if (v22 != 16 || !v31)
      {
LABEL_28:
        v33 = v24 < 12;
        v13 = a9;
        if (!v33)
        {
LABEL_24:
          if (*(a12 + 32))
          {
            FigIsItOKToLogURLs();
          }

          v29 = 0;
          v30 = &v23[strcspn(v23, "\r\n")];
          v28 = 2;
          goto LABEL_27;
        }

        goto LABEL_30;
      }
    }

    else if (v22 != 16)
    {
      goto LABEL_28;
    }

    v32 = strncmp(v23, "REQ-VIDEO-LAYOUT", 0x10uLL);
    v33 = v24 < 12;
    v13 = a9;
    if (!v33 && v32)
    {
      goto LABEL_24;
    }
  }

LABEL_30:
  v35 = v12;
  v36 = StreamingPlaylist_SkipSpacesAndTabs(&v23[v22], a12);
  __s1 = v36;
  if (*v36 != 61)
  {
    v43 = @"%s: missing =";
    v45 = v12;
    goto LABEL_47;
  }

  __s1 = StreamingPlaylist_SkipSpacesAndTabs(v36 + 1, a12);
  v28 = *__s1 == 34;
  StringWithReplacement = sp_GetStringWithReplacement(__s1, 1, a3, &__s1, v51, &v53, a11, a12);
  if (StringWithReplacement == -16239)
  {
    v40 = __s1;
    v41 = strcspn(__s1, " \t,\r\n");
    if (v41)
    {
      *v51 = v40;
      *a8 = v41;
      __s1 = StreamingPlaylist_SkipSpacesAndTabs(&v40[v41], a12);
    }

    v14 = a10;
    goto LABEL_12;
  }

  v29 = StringWithReplacement;
  if (!StringWithReplacement)
  {
    v38 = v53;
    *a8 = v53;
    if (v49)
    {
      v12 = v35;
      if (!v38)
      {
        *v51 = __s1;
      }
    }

    else
    {
      v12 = v35;
    }

    goto LABEL_12;
  }

LABEL_42:
  v30 = __s1;
  if (!*(a12 + 41))
  {
    v42 = &v30[strcspn(__s1, "\r\n")];
    v30 = &v42[strspn(v42, "\r\n")];
  }

LABEL_27:
  *v13 = sp_SkipSpacesTabsAndCommas(v30, a12, 1);
  *v14 = v28;
  return v29;
}

uint64_t sp_strtoll(const char *a1, char **a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6)
{
  __endptr = 0;
  *__error() = 0;
  *a3 = strtoll(a1, &__endptr, 10);
  if (*__error() == 22)
  {
    v13 = @"%s:Illegal integer conversion";
LABEL_18:
    v18 = a5;
    v15 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955032, a6, v13, v18);
    goto LABEL_19;
  }

  if (*__error() == 34)
  {
    v13 = @"%s:out of range";
    goto LABEL_18;
  }

  if (*a3 < 0)
  {
    v13 = @"%s:Decimal value less than 0";
    goto LABEL_18;
  }

  v12 = __endptr;
  if (__endptr > a1)
  {
    v13 = @"%s:Illegal character before integer";
    while ((*a1 - 48) < 0xA)
    {
      if (++a1 == __endptr)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_18;
  }

LABEL_8:
  if (a4 != 1 || (v14 = *__endptr, v14 <= 0x2C) && ((1 << v14) & 0x100000002401) != 0)
  {
    v15 = 0;
    v16 = 1;
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = a5;
  v15 = 4294954654;
  _StreamPlaylistLogError(4294954654, 4294955032, a6, @"%s:Illegal characters after integer", v19);
  v16 = 0;
  if (a2)
  {
LABEL_12:
    *a2 = v12;
  }

LABEL_13:
  if ((v16 & 1) == 0)
  {
LABEL_19:
    *a3 = 0;
    return v15;
  }

  return 0;
}

uint64_t StreamingPlaylist_FindResolution(const char *a1, int *a2, int *a3, void *a4, uint64_t a5)
{
  v14 = 0;
  v13 = 0;
  if (sp_strtol(a1, &v13, &v14, 0, "horizontal resolution", a5))
  {
    v9 = -1;
    goto LABEL_3;
  }

  v9 = v14;
  if (!v13 || *v13 != 120)
  {
    StreamingPlaylist_FindResolution_cold_1();
LABEL_3:
    v10 = -1;
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  ++v13;
  v13 = StreamingPlaylist_SkipSpacesAndTabs(v13, a5);
  v12 = sp_strtol(v13, &v13, &v14, 1, "vertical resolution", a5);
  v10 = v14;
  if (v12)
  {
    v10 = -1;
  }

  if (a4)
  {
LABEL_4:
    *a4 = v13;
  }

LABEL_5:
  result = 0;
  if ((v9 & 0x80000000) == 0 && (v10 & 0x80000000) == 0)
  {
    *a2 = v9;
    *a3 = v10;
    return 1;
  }

  return result;
}

const void *StreamingPlaylistCreateMediaURLWithBytes(UInt8 *URLBytes, CFIndex length, CFURLRef baseURL, const __CFURL *a4, CFURLRef *a5, void *a6)
{
  v11 = *MEMORY[0x1E695E480];
  *a5 = CFURLCreateWithBytes(*MEMORY[0x1E695E480], URLBytes, length, 0x8000100u, baseURL);
  if (FigCFEqual())
  {
    result = *a5;
    if (*a5)
    {
      result = CFRetain(result);
    }
  }

  else
  {
    result = CFURLCreateWithBytes(v11, URLBytes, length, 0x8000100u, a4);
  }

  *a6 = result;
  return result;
}

uint64_t sp_MatchYesOrNo(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4)
{
  if (!strncasecmp(a2, "YES", 3uLL))
  {
    v8 = 0;
    *a4 = 1;
  }

  else if (!strncasecmp(a2, "NO", 2uLL))
  {
    v8 = 0;
    *a4 = 0;
  }

  else
  {
    v10 = a1;
    v8 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955030, a3, @"%s must be YES or NO", v10);
  }

  return v8;
}

uint64_t PlaylistCharacteristicsCheckFn(const __CFString *cf1, int *a2)
{
  v4 = *a2;
  if (*a2 != 1668047728)
  {
    if (v4 == 1936684398)
    {
      v6 = kFigStdAssetMediaCharacteristic_TaggedDescribesVideoForAccessibility;
LABEL_8:
      result = CFEqual(cf1, *v6);
      if (result)
      {
        return result;
      }

      return PlaylistCharacteristicsCheckFn_cold_1(cf1, a2);
    }

    if (v4 != 1935832172)
    {
      return PlaylistCharacteristicsCheckFn_cold_1(cf1, a2);
    }
  }

  result = CFEqual(cf1, @"public.accessibility.transcribes-spoken-dialog");
  if (!result)
  {
    result = CFEqual(cf1, @"public.accessibility.describes-music-and-sound");
    if (!result)
    {
      v6 = kFigStdAssetMediaCharacteristic_TaggedEasyToRead;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PlaylistAddCharacteristicsForClosedCaptions(CFArrayRef *a1)
{
  v2 = *a1;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    v10.location = 0;
    v10.length = Count;
    v4 = CFArrayContainsValue(*a1, v10, @"public.accessibility.transcribes-spoken-dialog");
    v11.location = 0;
    v11.length = Count;
    v5 = CFArrayContainsValue(*a1, v11, @"public.accessibility.describes-music-and-sound");
    v6 = v5;
    if (v4)
    {
      if (v5)
      {
        return 0;
      }
    }

    else
    {
      CFArrayAppendValue(*a1, @"public.accessibility.transcribes-spoken-dialog");
      if (v6)
      {
        return 0;
      }
    }

LABEL_7:
    CFArrayAppendValue(*a1, @"public.accessibility.describes-music-and-sound");
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *a1 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, @"public.accessibility.transcribes-spoken-dialog");
    goto LABEL_7;
  }

  PlaylistAddCharacteristicsForClosedCaptions_cold_1(&v9);
  return v9;
}

const void *FindMatchingMapEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; ; ++i)
  {
    MapSegmentSpecifiers = FigMediaPlaylistGetMapSegmentSpecifiers(a1);
    if (MapSegmentSpecifiers)
    {
      MapSegmentSpecifiers = CFArrayGetCount(MapSegmentSpecifiers);
    }

    if (i >= MapSegmentSpecifiers)
    {
      break;
    }

    v9 = FigMediaPlaylistGetMapSegmentSpecifiers(a1);
    ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
    if (FigMediaSegmentSpecifierGetStartOffset(ValueAtIndex) == a3 && FigMediaSegmentSpecifierGetBytesToRead(ValueAtIndex) == a4)
    {
      FigMediaSegmentSpecifierGetURLString(ValueAtIndex);
      if (FigCFEqual())
      {
        return ValueAtIndex;
      }
    }
  }

  return 0;
}

uint64_t PlaylistCreateMapEntry(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v17 = 0;
  if (a6)
  {
    *a6 = 0;
    MediaEntryCount = FigMediaPlaylistGetMediaEntryCount(a1);
    FigMediaPlaylistSetMediaEntryCount(a1, MediaEntryCount + 1);
    AllocatorForMedia = FigGetAllocatorForMedia();
    v14 = FigMediaPlaylistGetMediaEntryCount(a1);
    v15 = FigMediaSegmentSpecifierCreate(0.0, 0.0, 0.0, AllocatorForMedia, a2, 0, 0, a5, 0, a3, a4, 0, 0, 1, 0, 0, 1, 0, 0, 0, v14, 1, &v17);
    FigMediaPlaylistAddMapSegmentSpecifier(a1, v17);
    *a6 = v17;
  }

  else
  {
    PlaylistCreateMapEntry_cold_1(&v18);
    return v18;
  }

  return v15;
}

uint64_t PlaylistProcessPartInfTag(uint64_t a1, const char *a2, uint64_t a3)
{
  v20 = a2;
  v18 = 0;
  v19 = 0.0;
  while (1)
  {
    v4 = v20;
    v5 = *v20;
    v6 = v5 > 0xD;
    v7 = (1 << v5) & 0x2401;
    if (!v6 && v7 != 0)
    {
      v10 = 0;
      goto LABEL_17;
    }

    v16 = 0;
    __s1 = 0;
    v15 = 0;
    v13 = 0;
    free(v18);
    v18 = 0;
    v10 = sp_ParseAttribute("#EXT-X-PART-INF", v4, 1, 0, &__s1, &v15, &v16, &v14, &v20, &v13, &v18, a3);
    if (v10 && !*(a3 + 41) || (v13 & 2) != 0)
    {
      return v10;
    }

    if (__s1)
    {
      v9 = v16;
      if (v16)
      {
        if (v15 == 11 && !strncmp(__s1, "PART-TARGET", 0xBuLL))
        {
          v10 = sp_strtod(v9, 0, &v19, 0, "Blocking reload part target", a3);
          if (!v10 && v19 <= 0.0)
          {
            break;
          }
        }
      }
    }

    if (v10)
    {
      goto LABEL_17;
    }
  }

  v10 = 4294954654;
  _StreamPlaylistLogError(4294954654, 4294955032, a3, @"%s must have %s", v19, "#EXT-X-PART-INF", "PART-TARGET");
LABEL_17:
  FigMediaPlaylistSetPartTargetDuration(a1, v19);
  free(v18);
  return v10;
}

uint64_t PlaylistProcessPartTag(uint64_t a1, const char *a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, const void *a7, uint64_t a8, double a9, double *a10)
{
  cf = 0;
  v52 = 0;
  v54 = 0;
  v57 = 0;
  v66 = 0.0;
  v67 = a2;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  while (1)
  {
    v12 = v67;
    v13 = *v67;
    v14 = v13 > 0xD;
    v15 = (1 << v13) & 0x2401;
    if (!v14 && v15 != 0)
    {
      v29 = 0;
      v30 = 1;
      goto LABEL_58;
    }

    __src = 0;
    __s1 = 0;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    free(v65);
    v65 = 0;
    v29 = sp_ParseAttribute("#EXT-X-PART", v12, 1, 0, &__s1, &v60, &__src, &v59, &v67, &v58, &v65, a8);
    if (v29 && !*(a8 + 41) || (v17 = v58, (v58 & 2) != 0))
    {
      v31 = v57;
LABEL_54:
      v32 = cf;
      goto LABEL_85;
    }

    if (!__s1)
    {
      goto LABEL_37;
    }

    v18 = __src;
    if (!__src)
    {
      goto LABEL_37;
    }

    if (v60 <= 8)
    {
      break;
    }

    if (v60 != 9)
    {
      if (v60 == 11 && !strncmp(__s1, "INDEPENDENT", 0xBuLL))
      {
        if (v59 == 3)
        {
          v21 = *v18 == 17753 && v18[2] == 83;
          v54 = v21;
        }

        else
        {
          v54 = 0;
        }
      }

      goto LABEL_37;
    }

    if (!strncmp(__s1, "BYTERANGE", 9uLL))
    {
      if ((v17 & 1) == 0)
      {
        v33 = "BYTERANGE";
        goto LABEL_56;
      }

      v19 = PlaylistProcessByteRange(&v64, &v63, 0, &__src, v59, a8);
LABEL_17:
      v29 = v19;
    }

LABEL_37:
    if (v29)
    {
      goto LABEL_57;
    }
  }

  if (v60 != 3)
  {
    if (v60 != 8 || strncmp(__s1, "DURATION", 8uLL))
    {
      goto LABEL_37;
    }

    v19 = sp_strtod(v18, 0, &v66, 0, "Partial Segment Duration", a8);
    goto LABEL_17;
  }

  v22 = *__s1;
  if (v22 == 71)
  {
    if (__s1[1] == 65 && __s1[2] == 80)
    {
      if (v59 == 3)
      {
        v28 = *__src == 17753 && *(__src + 2) == 83;
        v52 = v28;
      }

      else
      {
        v52 = 0;
      }
    }

    goto LABEL_37;
  }

  if (v22 != 85 || __s1[1] != 82 || __s1[2] != 73)
  {
    goto LABEL_37;
  }

  if (v58)
  {
    free(v57);
    v23 = v59;
    v24 = malloc_type_malloc(v59 + 1, 0xD232CFBEuLL);
    if (!v24)
    {
      PlaylistProcessPartTag_cold_1(v68);
      v31 = 0;
      v29 = v68[0];
      goto LABEL_54;
    }

    v25 = v24;
    memcpy(v24, __src, v23);
    v25[v23] = 0;
    AllocatorForMedia = FigGetAllocatorForMedia();
    v57 = v25;
    cf = CFStringCreateWithBytes(AllocatorForMedia, v25, v23, 0x8000100u, 0);
    goto LABEL_37;
  }

  v33 = "URI";
LABEL_56:
  v29 = 4294954654;
  _StreamPlaylistLogError(4294954654, 4294955032, a8, @"%s %s: missing quotes", "#EXT-X-PART", v33);
LABEL_57:
  v30 = 0;
LABEL_58:
  v32 = cf;
  v31 = v57;
  v34 = v66;
  if (*a10 < v66)
  {
    *a10 = v66;
  }

  if (v57)
  {
    v30 = 0;
  }

  if ((v30 & 1) != 0 || !v29 && v34 == 0.0)
  {
    PlaylistProcessPartTag_cold_2();
    v29 = 4294954654;
  }

  PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(a3);
  LastValue = FigCFArrayGetLastValue();
  if (v29)
  {
    v37 = 0;
    MediaFileEntry = 0;
  }

  else
  {
    v39 = LastValue;
    if (FigCFArrayGetLastValue() && FigMediaSegmentSpecifierGetDiscontinuityDomain(v39) != a6)
    {
      PlaylistProcessPartTag_cold_3();
      v37 = 0;
      MediaFileEntry = 0;
      v29 = 4294954654;
    }

    else
    {
      if (FigMediaSegmentSpecifierIsDiscontinuity(a3))
      {
        if (PartialSegments)
        {
          v40 = CFArrayGetCount(PartialSegments) == 0;
        }

        else
        {
          v40 = 1;
        }
      }

      else
      {
        v40 = 0;
      }

      MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(a3);
      MediaFileEntry = CreateMediaFileEntry(a1, cf, 0, a4, a5, MediaSequence, a6, v63, v66, a9, v64, a7, 0, v40, v52);
      v37 = 1;
      FigMediaSegmentSpecifierSetIsFragment(MediaFileEntry, 1);
      FigMediaSegmentSpecifierSetIsIndependent(MediaFileEntry, v54);
      FigMediaSegmentSpecifierAddPartialSegment(a3, MediaFileEntry);
      v29 = 0;
    }
  }

  FirstValue = FigCFArrayGetFirstValue();
  if (FirstValue != FigCFArrayGetLastValue())
  {
    v43 = FigCFArrayGetLastValue();
    PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(v43);
    if (v37)
    {
      v45 = PreviousSegment;
      if (FigMediaPlaylistGetPartTargetDuration(a1) == 0.0 || FigMediaSegmentSpecifierIsMarkedIndependent(v45) || (TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v45), TimeInSeconds >= FigMediaPlaylistGetPartTargetDuration(a1) * 0.85) || FigMediaSegmentSpecifierIsMarkedAsGap(v45) | v52)
      {
        v29 = 0;
      }

      else
      {
        PlaylistProcessPartTag_cold_4();
        v29 = 4294954654;
      }
    }
  }

  free(v65);
  if (MediaFileEntry)
  {
    CFRelease(MediaFileEntry);
  }

LABEL_85:
  if (v32)
  {
    CFRelease(v32);
  }

  free(v31);
  return v29;
}

uint64_t PlaylistProcessRenditionReportTag(uint64_t a1, const char *a2, const __CFURL *a3, uint64_t a4)
{
  v5 = a2;
  v7 = 0;
  v31 = 0;
  v8 = 0;
  v41 = a2;
  v39 = -1;
  v40 = -1;
  v37 = -1;
  v38 = -1;
  v36 = 0;
  v29 = *MEMORY[0x1E695E480];
  while (1)
  {
    v9 = *v5;
    v10 = v9 > 0xD;
    v11 = (1 << v9) & 0x2401;
    if (!v10 && v11 != 0)
    {
      break;
    }

    v42 = 0;
    v34 = 0;
    URLBytes = 0;
    length = 0;
    v32 = 0;
    free(v36);
    v36 = 0;
    v8 = sp_ParseAttribute("#EXT-X-RENDITION-REPORT", v5, 1, 0, &v42, &v34, &URLBytes, &length, &v41, &v32, &v36, a4);
    if (v8 && !*(a4 + 41) || (v32 & 2) != 0)
    {
      goto LABEL_63;
    }

    if (v42)
    {
      v13 = URLBytes;
      if (URLBytes)
      {
        if (length)
        {
          if (v34 <= 8)
          {
            if (v34 == 3)
            {
              v21 = *v42;
              if (v21 == 71)
              {
                if (v42[1] == 65 && v42[2] == 80)
                {
                  if (length == 3)
                  {
                    v23 = *URLBytes == 17753 && URLBytes[2] == 83;
                    v31 = v23;
                  }

                  else
                  {
                    v31 = 0;
                  }
                }

                goto LABEL_30;
              }

              if (v21 == 85 && v42[1] == 82 && v42[2] == 73)
              {
                if (v32)
                {
                  v7 = CFURLCreateWithBytes(v29, URLBytes, length, 0x8000100u, a3);
                  goto LABEL_30;
                }

                PlaylistProcessRenditionReportTag_cold_3();
                v8 = 4294954654;
              }

              else
              {
LABEL_30:
                if (!v8)
                {
                  goto LABEL_32;
                }
              }

              if (!*(a4 + 41))
              {
                goto LABEL_63;
              }

              goto LABEL_32;
            }

            if (v34 != 8 || strncmp(v42, "LAST-MSN", 8uLL))
            {
              goto LABEL_30;
            }

            v17 = &v40;
            v18 = v13;
            v19 = "last_media_seq_num";
LABEL_28:
            v20 = sp_strtoll(v18, &URLBytes, v17, 1, v19, a4);
          }

          else
          {
            if (v34 != 9)
            {
              if (v34 != 10)
              {
                if (v34 == 11 && !strncmp(v42, "LAST-I-PART", 0xBuLL))
                {
                  v14 = &v37;
                  v15 = v13;
                  v16 = "last_indepdendent_part";
                  goto LABEL_25;
                }

                goto LABEL_30;
              }

              if (strncmp(v42, "LAST-I-MSN", 0xAuLL))
              {
                goto LABEL_30;
              }

              v17 = &v39;
              v18 = v13;
              v19 = "last_indepdendent_media_seq_num";
              goto LABEL_28;
            }

            if (strncmp(v42, "LAST-PART", 9uLL))
            {
              goto LABEL_30;
            }

            v14 = &v38;
            v15 = v13;
            v16 = "last_part";
LABEL_25:
            v20 = sp_strtol(v15, &URLBytes, v14, 1, v16, a4);
          }

          v8 = v20;
          goto LABEL_30;
        }
      }
    }

LABEL_32:
    v5 = v41;
  }

  if (!v8)
  {
    if (!v7)
    {
      PlaylistProcessRenditionReportTag_cold_2();
      v8 = 4294954654;
      goto LABEL_65;
    }

    v24 = 0;
    while (1)
    {
      RenditionReportSpecifiers = FigMediaPlaylistGetRenditionReportSpecifiers(a1);
      if (RenditionReportSpecifiers)
      {
        RenditionReportSpecifiers = CFArrayGetCount(RenditionReportSpecifiers);
      }

      if (v24 >= RenditionReportSpecifiers)
      {
        break;
      }

      v26 = FigMediaPlaylistGetRenditionReportSpecifiers(a1);
      ValueAtIndex = CFArrayGetValueAtIndex(v26, v24);
      FigRenditionReportSpecifierGetURL(ValueAtIndex);
      ++v24;
      if (FigCFEqual())
      {
        PlaylistProcessRenditionReportTag_cold_1(&v42);
        v8 = v42;
        goto LABEL_63;
      }
    }

    v42 = 0;
    v8 = FigRenditionReportSpecifierCreate(v7, v40, v39, v38, v37, 1, v31, &v42);
    if (!v8)
    {
      FigMediaPlaylistAddRenditionReportSpecifier(a1, v42);
    }

    if (v42)
    {
      CFRelease(v42);
    }
  }

LABEL_63:
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_65:
  free(v36);
  return v8;
}

uint64_t PlaylistProcessPreloadHintTag(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = a2;
  v27 = 0;
  v5 = 0;
  v28 = 0;
  v36 = 0;
  v37 = a2;
  v34 = -1;
  v35 = 0;
  v6 = "BYTERANGE-START";
  while (1)
  {
    v7 = *v4;
    v8 = v7 > 0xD;
    v9 = (1 << v7) & 0x2401;
    if (!v8 && v9 != 0)
    {
      break;
    }

    bytes = 0;
    __s1 = 0;
    v30 = 0;
    v31 = 0;
    v29 = 0;
    free(v36);
    v36 = 0;
    v5 = sp_ParseAttribute("#EXT-X-PRELOAD-HINT", v4, 1, 0, &__s1, &v31, &bytes, &v30, &v37, &v29, &v36, a3);
    if (v5 && !*(a3 + 41) || (v29 & 2) != 0)
    {
      goto LABEL_63;
    }

    if (__s1)
    {
      v11 = bytes;
      if (bytes)
      {
        v12 = v6;
        v13 = v30;
        if (!v30)
        {
          v6 = v12;
          goto LABEL_35;
        }

        if (v31 > 14)
        {
          if (v31 == 15)
          {
            v6 = v12;
            if (strncmp(__s1, v12, 0xFuLL))
            {
              goto LABEL_33;
            }

            v14 = &v35;
            v15 = v11;
            v16 = v12;
          }

          else
          {
            v6 = v12;
            if (v31 != 16 || strncmp(__s1, "BYTERANGE-LENGTH", 0x10uLL))
            {
              goto LABEL_33;
            }

            v14 = &v34;
            v15 = v11;
            v16 = "BYTERANGE-LENGTH";
          }

          v5 = sp_strtoll(v15, &bytes, v14, 1, v16, a3);
          goto LABEL_33;
        }

        if (v31 == 3)
        {
          if (*__s1 == 85 && __s1[1] == 82 && __s1[2] == 73)
          {
            if ((v29 & 1) == 0)
            {
              PlaylistProcessPreloadHintTag_cold_3();
              v5 = 4294954654;
              v6 = v12;
              goto LABEL_34;
            }

            AllocatorForMedia = FigGetAllocatorForMedia();
            v27 = CFStringCreateWithBytes(AllocatorForMedia, bytes, v13, 0x8000100u, 0);
          }
        }

        else if (v31 == 4)
        {
          v6 = v12;
          if (!strncmp(__s1, "TYPE", 4uLL))
          {
            if (!strncasecmp(v11, "PART", 4uLL))
            {
              LODWORD(v28) = 1;
            }

            else
            {
              if (strncasecmp(v11, "MAP", 3uLL))
              {
                _StreamPlaylistLogError(0, 4294954985, a3, @"Unknown %s %s in %s", "TYPE", v11, "#EXT-X-PRELOAD-HINT");
                v5 = 0;
                goto LABEL_35;
              }

              HIDWORD(v28) = 1;
            }
          }

LABEL_33:
          if (!v5)
          {
            goto LABEL_35;
          }

LABEL_34:
          if (!*(a3 + 41))
          {
            goto LABEL_63;
          }

          goto LABEL_35;
        }

        v6 = v12;
        goto LABEL_33;
      }
    }

LABEL_35:
    v4 = v37;
  }

  if (v5)
  {
LABEL_63:
    v18 = v27;
    if (v27)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v18 = v27;
    if (v28)
    {
      if (v27)
      {
        if (v28)
        {
          if (FigMediaPlaylistGetPreloadHint(a1))
          {
            PreloadHint = FigMediaPlaylistGetPreloadHint(a1);
            if (FigMediaSegmentSpecifierIsReadInCurrent(PreloadHint))
            {
              goto LABEL_59;
            }
          }
        }

        if (HIDWORD(v28))
        {
          if (FigMediaPlaylistGetPreloadMapHint(a1))
          {
            PreloadMapHint = FigMediaPlaylistGetPreloadMapHint(a1);
            if (FigMediaSegmentSpecifierIsReadInCurrent(PreloadMapHint))
            {
              goto LABEL_59;
            }
          }
        }

        v22 = v34;
        v21 = v35;
        if (v35 >= 1 && v34 == -1)
        {
          v22 = (0x20000000000000 - v35) & ~((0x20000000000000 - v35) >> 63);
          v34 = v22;
        }

        if (v28)
        {
          v23 = FigMediaPlaylistGetPreloadHint(a1);
          if (!v23)
          {
            MediaFileEntry = CreateMediaFileEntry(a1, 0, 0, 0, 0, 0, -1, v21, 1.0, 0.0, v22, 0, 0, 0, 0);
            FigMediaPlaylistSetPreloadHint(a1, MediaFileEntry);
LABEL_57:
            FigMediaSegmentSpecifierSetURLString(MediaFileEntry, v27);
            FigMediaSegmentSpecifierSetIsReadInCurrent(MediaFileEntry, 1);
            CMRemoveAllAttachments(MediaFileEntry);
            if (MediaFileEntry)
            {
              CFRelease(MediaFileEntry);
            }

LABEL_59:
            v5 = 0;
LABEL_60:
            CFRelease(v18);
            goto LABEL_61;
          }
        }

        else
        {
          v23 = FigMediaPlaylistGetPreloadMapHint(a1);
          if (!v23)
          {
            MediaFileEntry = CreateMediaFileEntry(a1, 0, 1, 0, 0, 0, -1, v21, 1.0, 0.0, v22, 0, 0, 0, 0);
            FigMediaPlaylistSetPreloadMapHint(a1, MediaFileEntry);
            goto LABEL_57;
          }
        }

        MediaFileEntry = v23;
        CFRetain(v23);
        FigMediaSegmentSpecifierSetStartOffset(MediaFileEntry, v21);
        FigMediaSegmentSpecifierSetBytesToRead(MediaFileEntry, v22);
        goto LABEL_57;
      }

      PlaylistProcessPreloadHintTag_cold_1();
      v5 = 4294954654;
    }

    else
    {
      PlaylistProcessPreloadHintTag_cold_2();
      v5 = 4294954654;
      if (v27)
      {
        goto LABEL_60;
      }
    }
  }

LABEL_61:
  free(v36);
  return v5;
}

uint64_t PlaylistProcessTaggedRangeTag(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  v5 = a2;
  v97 = -1.0;
  v98 = a2;
  v96 = -1.0;
  context = 0u;
  v95 = 0u;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  v90 = 0;
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = 0;
  v10 = 0;
  cf1 = 0;
  v83 = 0;
  v79 = 0;
  v81 = 0;
  v84 = 0;
  cf = 0;
  while (1)
  {
    v11 = *v5;
    v12 = v11 > 0xD;
    v13 = (1 << v11) & 0x2401;
    if (!v12 && v13 != 0)
    {
      if (v9)
      {
LABEL_225:
        v50 = 0;
        ValueAtIndex = 0;
        v35 = cf;
        goto LABEL_221;
      }

      if (!v10)
      {
        PlaylistProcessTaggedRangeTag_cold_17();
        ValueAtIndex = 0;
        v50 = 0;
        v9 = 4294954654;
        v35 = cf;
        v36 = v83;
        v72 = v84;
        v71 = cf1;
        goto LABEL_236;
      }

      v31 = 0;
      DWORD2(v95) = 0;
      *(&context + 1) = a4;
      do
      {
        DateRangeSpecifiers = FigMediaPlaylistGetDateRangeSpecifiers(a1);
        if (DateRangeSpecifiers)
        {
          DateRangeSpecifiers = CFArrayGetCount(DateRangeSpecifiers);
        }

        if (v31 >= DateRangeSpecifiers)
        {
          goto LABEL_158;
        }

        v33 = FigMediaPlaylistGetDateRangeSpecifiers(a1);
        ValueAtIndex = CFArrayGetValueAtIndex(v33, v31);
        Identifier = FigDateRangeSpecifierGetIdentifier(ValueAtIndex);
        ++v31;
      }

      while (!CFEqual(v10, Identifier));
      if (!ValueAtIndex)
      {
LABEL_158:
        if (!v83)
        {
          PlaylistProcessTaggedRangeTag_cold_16();
          v50 = 0;
          ValueAtIndex = 0;
          v36 = 0;
          v9 = 4294954654;
          v35 = cf;
          goto LABEL_222;
        }

        v99[0] = 0;
        ParseDate = FigMediaPlaylistGetParseDate(a1);
        v54 = FigMediaPlaylistGetParseDate(a1);
        v55 = FigDateRangeSpecifierCreate(0, 0, 0, 0, 0, 0, 0, 0, -1.0, -1.0, -1.0, -1.0, 0, 0, 0, 0, 0, 0, 0, ParseDate, v54, v99);
        if (v55)
        {
          v9 = v55;
          v35 = cf;
          v71 = cf1;
          if (v99[0])
          {
            CFRelease(v99[0]);
          }

          v50 = 0;
          ValueAtIndex = 0;
          goto LABEL_203;
        }

        FigMediaPlaylistAddDateRangeSpecifier(a1, v99[0]);
        ValueAtIndex = v99[0];
        FigDateRangeSpecifierSetIdentifier(v99[0], v10);
        FigDateRangeSpecifierSetStartDate(ValueAtIndex, v83);
        v56 = *(a4 + 32);
        v57 = strcspn(v56, "\r\n");
        v50 = CFStringCreateWithBytes(v7, v56, v57, 0x8000100u, 1u);
        if (!v50)
        {
          PlaylistProcessTaggedRangeTag_cold_15(v99);
          v9 = LODWORD(v99[0]);
          v35 = cf;
          v71 = cf1;
          goto LABEL_232;
        }

        FigDateRangeSpecifierSetTaggedRangeLine(ValueAtIndex, v50);
        *&context = ValueAtIndex;
        *&v95 = FigMediaPlaylistGetParseDate(a1);
        CFDictionaryApplyFunction(Mutable, TaggedRangeUniquenessApplier, &context);
        v51 = 0;
        *a3 = 1;
        v35 = cf;
        v38 = v81;
        goto LABEL_162;
      }

      *&context = ValueAtIndex;
      *&v95 = FigMediaPlaylistGetParseDate(a1);
      BYTE12(v95) = 0;
      CFDictionaryApplyFunction(Mutable, TaggedRangeUniquenessApplier, &context);
      v9 = DWORD2(v95);
      *a3 = BYTE12(v95);
      if (v9)
      {
        goto LABEL_225;
      }

      v35 = cf;
      v36 = v83;
      if (v83)
      {
        StartDate = FigDateRangeSpecifierGetStartDate(ValueAtIndex);
        if (!CFEqual(v83, StartDate))
        {
          PlaylistProcessTaggedRangeTag_cold_1();
          v50 = 0;
          ValueAtIndex = 0;
          v9 = 4294954654;
          goto LABEL_222;
        }
      }

      v38 = v81;
      if (cf1)
      {
        if (FigDateRangeSpecifierGetEndDate(ValueAtIndex))
        {
          EndDate = FigDateRangeSpecifierGetEndDate(ValueAtIndex);
          if (!CFEqual(cf1, EndDate))
          {
            PlaylistProcessTaggedRangeTag_cold_2();
            goto LABEL_220;
          }
        }
      }

      if (v84)
      {
        if (FigDateRangeSpecifierGetTaggedRangeClass(ValueAtIndex))
        {
          TaggedRangeClass = FigDateRangeSpecifierGetTaggedRangeClass(ValueAtIndex);
          if (!CFEqual(v84, TaggedRangeClass))
          {
            PlaylistProcessTaggedRangeTag_cold_3();
            goto LABEL_220;
          }
        }
      }

      if (cf)
      {
        if (FigDateRangeSpecifierGetTaggedRangeCue(ValueAtIndex))
        {
          TaggedRangeCue = FigDateRangeSpecifierGetTaggedRangeCue(ValueAtIndex);
          if (!CFEqual(cf, TaggedRangeCue))
          {
            PlaylistProcessTaggedRangeTag_cold_4();
            goto LABEL_220;
          }
        }
      }

      v42 = v93;
      if (v93)
      {
        if (FigDateRangeSpecifierGetScte35cmd(ValueAtIndex))
        {
          Scte35cmd = FigDateRangeSpecifierGetScte35cmd(ValueAtIndex);
          if (!CFEqual(v42, Scte35cmd))
          {
            PlaylistProcessTaggedRangeTag_cold_5();
            goto LABEL_220;
          }
        }
      }

      v44 = v92;
      if (v92)
      {
        if (FigDateRangeSpecifierGetScte35in(ValueAtIndex))
        {
          Scte35in = FigDateRangeSpecifierGetScte35in(ValueAtIndex);
          if (!CFEqual(v44, Scte35in))
          {
            PlaylistProcessTaggedRangeTag_cold_6();
            goto LABEL_220;
          }
        }
      }

      v46 = v91;
      if (v91)
      {
        if (FigDateRangeSpecifierGetScte35out(ValueAtIndex))
        {
          Scte35out = FigDateRangeSpecifierGetScte35out(ValueAtIndex);
          if (!CFEqual(v46, Scte35out))
          {
            PlaylistProcessTaggedRangeTag_cold_7();
            goto LABEL_220;
          }
        }
      }

      if (v81 && FigDateRangeSpecifierGetEndOnNextSet(ValueAtIndex) && FigDateRangeSpecifierGetEndOnNext(ValueAtIndex) != v79)
      {
        PlaylistProcessTaggedRangeTag_cold_8();
        goto LABEL_220;
      }

      if (v79)
      {
        if (FigDateRangeSpecifierGetTempEndDate(ValueAtIndex))
        {
          PlaylistProcessTaggedRangeTag_cold_9();
          goto LABEL_220;
        }

        if (FigDateRangeSpecifierGetTempDuration(ValueAtIndex) >= 0.0)
        {
          PlaylistProcessTaggedRangeTag_cold_10();
          goto LABEL_220;
        }
      }

      if (v97 >= 0.0 && FigDateRangeSpecifierGetDuration(ValueAtIndex) == -1.0 || cf1 && !FigDateRangeSpecifierGetEndDate(ValueAtIndex))
      {
        v48 = FigMediaPlaylistGetParseDate(a1);
        FigDateRangeSpecifierSetModificationTimestamp(ValueAtIndex, v48);
        *a3 = 1;
      }

      if (FigDateRangeSpecifierGetTempDuration(ValueAtIndex) < 0.0 || v97 < 0.0 || (TempDuration = FigDateRangeSpecifierGetTempDuration(ValueAtIndex), TempDuration == v97))
      {
        v50 = 0;
        v51 = 1;
        if (FigDateRangeSpecifierGetTempPlannedDuration(ValueAtIndex) >= 0.0 && v96 >= 0.0)
        {
          TempPlannedDuration = FigDateRangeSpecifierGetTempPlannedDuration(ValueAtIndex);
          if (TempPlannedDuration == v96)
          {
            v50 = 0;
            goto LABEL_162;
          }

          PlaylistProcessTaggedRangeTag_cold_11();
          goto LABEL_220;
        }

LABEL_162:
        if (v84)
        {
          if (FigDateRangeSpecifierGetTaggedRangeClass(ValueAtIndex))
          {
            goto LABEL_176;
          }

          FigDateRangeSpecifierSetTaggedRangeClass(ValueAtIndex, v84);
          CFRelease(v84);
          if (FigDateRangeSpecifierGetTaggedRangeClass(ValueAtIndex))
          {
            v58 = FigMediaPlaylistGetDateRangeSpecifiers(a1);
            if (v58)
            {
              Count = CFArrayGetCount(v58);
              if (Count >= 1)
              {
                v77 = v51;
                v60 = 0;
                v61 = Count + 1;
                while (1)
                {
                  v62 = FigMediaPlaylistGetDateRangeSpecifiers(a1);
                  v63 = CFArrayGetValueAtIndex(v62, v61 - 2);
                  v64 = v63;
                  if (v60)
                  {
                    FigDateRangeSpecifierGetTaggedRangeClass(v63);
                    if (FigCFEqual())
                    {
                      break;
                    }
                  }

                  if (v64 == ValueAtIndex)
                  {
                    v60 = 1;
                  }

                  if (--v61 < 2)
                  {
                    v84 = 0;
                    v35 = cf;
                    v38 = v81;
                    goto LABEL_174;
                  }
                }

                v38 = v81;
                if (v64)
                {
                  v35 = cf;
                  if (FigDateRangeSpecifierGetEndOnNext(v64))
                  {
                    v73 = FigDateRangeSpecifierGetStartDate(ValueAtIndex);
                    FigDateRangeSpecifierSetTempEndDate(v64, v73);
                    v74 = FigMediaPlaylistGetParseDate(a1);
                    FigDateRangeSpecifierSetModificationTimestamp(v64, v74);
                    v84 = 0;
                    *a3 = 1;
                  }

                  else
                  {
                    v84 = 0;
                  }
                }

                else
                {
                  v84 = 0;
                  v35 = cf;
                }

LABEL_174:
                v51 = v77;
LABEL_176:
                if (v35 && !FigDateRangeSpecifierGetTaggedRangeCue(ValueAtIndex))
                {
                  FigDateRangeSpecifierSetTaggedRangeCue(ValueAtIndex, v35);
                  CFRelease(v35);
                  v35 = 0;
                }

                v65 = v93;
                if (v93 && !FigDateRangeSpecifierGetScte35cmd(ValueAtIndex))
                {
                  FigDateRangeSpecifierSetScte35cmd(ValueAtIndex, v65);
                  CFRelease(v65);
                  v93 = 0;
                  v66 = FigMediaPlaylistGetParseDate(a1);
                  FigDateRangeSpecifierSetValueForTagsFirstFoundDateDict(ValueAtIndex, @"SCTE35-CMD", v66);
                }

                v67 = v92;
                if (v92 && !FigDateRangeSpecifierGetScte35in(ValueAtIndex))
                {
                  FigDateRangeSpecifierSetScte35in(ValueAtIndex, v67);
                  CFRelease(v67);
                  v92 = 0;
                  v68 = FigMediaPlaylistGetParseDate(a1);
                  FigDateRangeSpecifierSetValueForTagsFirstFoundDateDict(ValueAtIndex, @"SCTE35-IN", v68);
                }

                v69 = v91;
                if (v91 && !FigDateRangeSpecifierGetScte35out(ValueAtIndex))
                {
                  FigDateRangeSpecifierSetScte35out(ValueAtIndex, v69);
                  CFRelease(v69);
                  v91 = 0;
                  v70 = FigMediaPlaylistGetParseDate(a1);
                  FigDateRangeSpecifierSetValueForTagsFirstFoundDateDict(ValueAtIndex, @"SCTE35-OUT", v70);
                }

                if (cf1)
                {
                  FigDateRangeSpecifierSetTempEndDate(ValueAtIndex, cf1);
                  CFRelease(cf1);
                }

                if (v97 >= 0.0)
                {
                  FigDateRangeSpecifierSetTempDuration(ValueAtIndex, v97);
                }

                if (v96 >= 0.0)
                {
                  FigDateRangeSpecifierSetTempPlannedDuration(ValueAtIndex, v96);
                }

                if (v38)
                {
                  FigDateRangeSpecifierSetEndOnNext(ValueAtIndex, v79);
                  FigDateRangeSpecifierSetEndOnNextSet(ValueAtIndex, 1);
                  if (FigDateRangeSpecifierGetEndOnNext(ValueAtIndex) && FigDateRangeSpecifierGetTempEndDate(ValueAtIndex))
                  {
                    PlaylistProcessTaggedRangeTag_cold_13(a4, ValueAtIndex);
                  }

                  if (FigDateRangeSpecifierGetEndOnNext(ValueAtIndex) && FigDateRangeSpecifierGetTempDuration(ValueAtIndex) >= 0.0)
                  {
                    PlaylistProcessTaggedRangeTag_cold_14(a4, ValueAtIndex);
                  }
                }

                FigDateRangeSpecifierSetReadInCurrent(ValueAtIndex, 1);
                v9 = 0;
                v71 = 0;
                if (v51)
                {
                  ValueAtIndex = 0;
LABEL_203:
                  v36 = v83;
                  v72 = v84;
                  goto LABEL_234;
                }

LABEL_232:
                v36 = v83;
                v72 = v84;
                if (ValueAtIndex)
                {
                  CFRelease(ValueAtIndex);
                  ValueAtIndex = 0;
                }

                goto LABEL_234;
              }
            }
          }
        }

        v84 = 0;
        goto LABEL_176;
      }

      PlaylistProcessTaggedRangeTag_cold_12();
LABEL_220:
      v50 = 0;
      ValueAtIndex = 0;
      v9 = 4294954654;
LABEL_221:
      v36 = v83;
LABEL_222:
      v72 = v84;
      v71 = cf1;
      goto LABEL_234;
    }

    v99[0] = 0;
    v88 = 0;
    bytes = 0;
    numBytes = 0;
    v86 = 0;
    free(v90);
    v90 = 0;
    v9 = sp_ParseAttribute("#EXT-X-DATERANGE", v5, 1, 0, v99, &v88, &bytes, &numBytes, &v98, &v86, &v90, a4);
    if (v9 && !*(a4 + 41) || (v15 = v86, (v86 & 2) != 0))
    {
LABEL_207:
      ValueAtIndex = 0;
      goto LABEL_224;
    }

    v16 = v99[0];
    if (v99[0])
    {
      v17 = bytes;
      if (bytes)
      {
        break;
      }
    }

LABEL_88:
    v5 = v98;
  }

  v18 = v88;
  if (v88 > 8)
  {
    if (v88 > 10)
    {
      if (v88 == 11)
      {
        if (!strncmp(v99[0], "END-ON-NEXT", 0xBuLL))
        {
          if (!strncasecmp(v17, "YES", 3uLL))
          {
            v79 = 1;
          }

          else
          {
            if (strncasecmp(v17, "NO", 2uLL))
            {
              PlaylistProcessTaggedRangeTag_cold_23();
              goto LABEL_86;
            }

            v79 = 0;
          }

          v81 = 1;
          goto LABEL_86;
        }

LABEL_56:
        v23 = *v16;
        goto LABEL_57;
      }

      if (v88 != 16 || strncmp(v99[0], "PLANNED-DURATION", 0x10uLL))
      {
        goto LABEL_56;
      }

      if (v96 >= 0.0)
      {
        PlaylistProcessTaggedRangeTag_cold_11();
        goto LABEL_110;
      }

      v9 = sp_strtod(v17, 0, &v96, 0, "Date Range Planned Duration", a4);
      if (v9 || v96 >= 0.0)
      {
        goto LABEL_86;
      }

      goto LABEL_35;
    }

    if (v88 == 9)
    {
      if (strncmp(v99[0], "SCTE35-IN", 9uLL))
      {
        goto LABEL_56;
      }

      if (v92)
      {
        PlaylistProcessTaggedRangeTag_cold_18();
        goto LABEL_110;
      }

      v19 = numBytes;
      v20 = &v92;
      v21 = v17;
      v22 = "Date Range SCTE35_IN";
    }

    else
    {
      if (!strncmp(v99[0], "START-DATE", 0xAuLL))
      {
        if (v83)
        {
          PlaylistProcessTaggedRangeTag_cold_30();
        }

        else
        {
          if (v15)
          {
            value = 0;
            v29 = FigCFParseISO8601Date();
            v9 = v29;
            if (v29)
            {
              _StreamPlaylistLogError(v29, 4294955017, a4, @"%s: ISO8601 Date parse error", "#EXT-X-DATERANGE");
              v83 = 0;
            }

            else
            {
              v83 = CFDateCreate(v7, *&value);
            }

            goto LABEL_86;
          }

          PlaylistProcessTaggedRangeTag_cold_31();
          v83 = 0;
        }

        goto LABEL_110;
      }

      if (!strncmp(v16, "SCTE35-CMD", 0xAuLL))
      {
        if (v93)
        {
          PlaylistProcessTaggedRangeTag_cold_29();
          goto LABEL_110;
        }

        v19 = numBytes;
        v20 = &v93;
        v21 = v17;
        v22 = "Date Range SCTE35_CMD";
      }

      else
      {
        if (strncmp(v16, "SCTE35-OUT", 0xAuLL))
        {
          goto LABEL_56;
        }

        if (v91)
        {
          PlaylistProcessTaggedRangeTag_cold_28();
          goto LABEL_110;
        }

        v19 = numBytes;
        v20 = &v91;
        v21 = v17;
        v22 = "Date Range SCTE35_OUTE";
      }
    }

    v9 = sp_strtohex(v21, v19, v20, v22, a4);
    goto LABEL_86;
  }

  if (v88 > 4)
  {
    if (v88 == 5)
    {
      if (strncmp(v99[0], "CLASS", 5uLL))
      {
        goto LABEL_56;
      }

      if (!v84)
      {
        v84 = CFStringCreateWithBytes(v7, v17, numBytes, 0x8000100u, 1u);
        goto LABEL_86;
      }

      PlaylistProcessTaggedRangeTag_cold_20();
    }

    else
    {
      if (v88 != 8)
      {
        goto LABEL_56;
      }

      if (strncmp(v99[0], "END-DATE", 8uLL))
      {
        if (strncmp(v16, "DURATION", 8uLL))
        {
          goto LABEL_56;
        }

        if (v97 >= 0.0)
        {
          PlaylistProcessTaggedRangeTag_cold_12();
          goto LABEL_110;
        }

        v9 = sp_strtod(v17, 0, &v97, 0, "Date Range Duration", a4);
        if (v9 || v97 >= 0.0)
        {
          goto LABEL_86;
        }

LABEL_35:
        PlaylistProcessTaggedRangeTag_cold_22();
        goto LABEL_110;
      }

      if (cf1)
      {
        PlaylistProcessTaggedRangeTag_cold_26();
      }

      else
      {
        if (v15)
        {
          value = 0;
          v30 = FigCFParseISO8601Date();
          v9 = v30;
          if (v30)
          {
            _StreamPlaylistLogError(v30, 4294955017, a4, @"%s: ISO8601 Date parse error", "#EXT-X-DATERANGE");
            cf1 = 0;
          }

          else
          {
            cf1 = CFDateCreate(v7, *&value);
          }

          goto LABEL_86;
        }

        PlaylistProcessTaggedRangeTag_cold_27();
        cf1 = 0;
      }
    }

LABEL_110:
    v9 = 4294954654;
LABEL_87:
    if (!*(a4 + 41))
    {
      goto LABEL_207;
    }

    goto LABEL_88;
  }

  if (v88 != 2)
  {
    if (v88 == 3 && *v99[0] == 67 && v99[0][1] == 85 && v99[0][2] == 69)
    {
      if (!cf)
      {
        cf = CFStringCreateWithBytes(v7, bytes, numBytes, 0x8000100u, 1u);
        goto LABEL_86;
      }

      PlaylistProcessTaggedRangeTag_cold_19();
      goto LABEL_110;
    }

    goto LABEL_56;
  }

  v23 = *v99[0];
  if (v23 != 73)
  {
LABEL_57:
    if (v23 != 88 || v16[1] != 45)
    {
      _StreamPlaylistLogError(0, 4294955022, a4, @"unrecognized attribute %.*s", v18, v16);
      goto LABEL_86;
    }

    ValueAtIndex = CFStringCreateWithBytes(v7, v16, v18, 0x8000100u, 1u);
    if (!ValueAtIndex)
    {
      goto LABEL_223;
    }

    if (CFDictionaryGetValue(Mutable, ValueAtIndex))
    {
      PlaylistProcessTaggedRangeTag_cold_33();
      v9 = 4294954654;
    }

    else
    {
      v24 = numBytes;
      if (v15)
      {
        v25 = CFStringCreateWithBytes(v7, v17, numBytes, 0x8000100u, 1u);
        if (!v25)
        {
          goto LABEL_223;
        }

        v26 = v25;
        CFDictionaryAddValue(Mutable, ValueAtIndex, v25);
        CFRelease(ValueAtIndex);
        v27 = v26;
        goto LABEL_85;
      }

      if (numBytes >= 3 && !strncasecmp(v17, "0x", 2uLL))
      {
        value = 0;
        v9 = sp_strtohex(v17, v24, &value, "Date range hex", a4);
        if (!v9)
        {
          v28 = value;
          if (value)
          {
            CFDictionaryAddValue(Mutable, ValueAtIndex, value);
            CFRelease(v28);
          }
        }
      }

      else
      {
        value = 0;
        v9 = sp_strtod(v17, 0, &value, 0, "tag double value", a4);
        if (!v9)
        {
          v9 = FigCFDictionarySetDouble();
        }
      }
    }

    v27 = ValueAtIndex;
LABEL_85:
    CFRelease(v27);
    goto LABEL_86;
  }

  if (v99[0][1] != 68)
  {
    goto LABEL_56;
  }

  if (v10)
  {
    PlaylistProcessTaggedRangeTag_cold_32();
    goto LABEL_110;
  }

  if ((v86 & 1) == 0)
  {
    v9 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955030, a4, @"Invalid %s: %s: %s", v98, "ID", bytes);
    v10 = 0;
    goto LABEL_87;
  }

  v10 = CFStringCreateWithBytes(v7, bytes, numBytes, 0x8000100u, 1u);
  if (v10)
  {
LABEL_86:
    if (!v9)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  ValueAtIndex = 0;
LABEL_223:
  v9 = FigSignalErrorAtGM();
LABEL_224:
  v35 = cf;
  v36 = v83;
  v72 = v84;
  v71 = cf1;
  v50 = 0;
LABEL_234:
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_236:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (ValueAtIndex)
  {
    CFRelease(ValueAtIndex);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  if (v91)
  {
    CFRelease(v91);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  free(v90);
  return v9;
}

uint64_t PlaylistProcessVariableTag(const char *a1, const __CFDictionary *a2, const __CFDictionary *a3, _BYTE *a4, uint64_t a5)
{
  v30 = 0;
  v6 = a1;
  v7 = 0;
  cf = 0;
  v32 = 0;
  v8 = 0;
  v39 = 0;
  v40 = a1;
  alloc = *MEMORY[0x1E695E480];
  while (1)
  {
    v9 = *v6;
    v10 = v9 > 0xD;
    v11 = (1 << v9) & 0x2401;
    if (!v10 && v11 != 0)
    {
      break;
    }

    v38 = 0;
    v36 = 0;
    v37 = 0;
    numBytes = 0;
    v34 = 0;
    free(v39);
    v39 = 0;
    v8 = sp_ParseAttribute("#EXT-X-DEFINE", v6, 0, 0, &v38, &v36, &v37, &numBytes, &v40, &v34, &v39, a5);
    if (v8 && !*(a5 + 41) || (v13 = v34, (v34 & 2) != 0))
    {
      v16 = cf;
      v15 = v32;
      v17 = v30;
      goto LABEL_84;
    }

    if (v38)
    {
      v14 = v37;
      if (v37)
      {
        if (v36 > 5)
        {
          if (v36 == 6)
          {
            if (strncmp(v38, "IMPORT", 6uLL))
            {
              goto LABEL_37;
            }

            if ((v13 & 1) == 0)
            {
              PlaylistProcessVariableTag_cold_5();
              goto LABEL_42;
            }

            if (v30)
            {
              CFRelease(v30);
            }

            v30 = CFStringCreateWithBytes(alloc, v14, numBytes, 0x8000100u, 1u);
          }

          else if (v36 == 10 && !strncmp(v38, "QUERYPARAM", 0xAuLL))
          {
            if ((v13 & 1) == 0)
            {
              PlaylistProcessVariableTag_cold_6();
              goto LABEL_42;
            }

            if (v32)
            {
              CFRelease(v32);
            }

            v32 = CFStringCreateWithBytes(alloc, v14, numBytes, 0x8000100u, 1u);
          }
        }

        else if (v36 == 4)
        {
          if (strncmp(v38, "NAME", 4uLL))
          {
            goto LABEL_37;
          }

          if ((v13 & 1) == 0)
          {
            PlaylistProcessVariableTag_cold_7();
            goto LABEL_42;
          }

          if (v7)
          {
            CFRelease(v7);
          }

          v7 = CFStringCreateWithBytes(alloc, v14, numBytes, 0x8000100u, 1u);
        }

        else if (v36 == 5 && !strncmp(v38, "VALUE", 5uLL))
        {
          if ((v13 & 1) == 0)
          {
            PlaylistProcessVariableTag_cold_4();
LABEL_42:
            v8 = 4294954654;
            goto LABEL_37;
          }

          if (cf)
          {
            CFRelease(cf);
          }

          cf = CFStringCreateWithBytes(alloc, v14, numBytes, 0x8000100u, 1u);
        }
      }
    }

LABEL_37:
    v6 = v40;
  }

  v16 = cf;
  v15 = v32;
  v17 = v30;
  if (!v30 || v7 || v32)
  {
    if (v7 | v30)
    {
      v19 = 1;
    }

    else
    {
      v19 = v32 == 0;
    }

    v20 = v19;
    if (v7)
    {
      v21 = (v30 | v32) == 0;
    }

    else
    {
      v21 = 0;
    }

    if (!v21 && v20)
    {
      PlaylistProcessVariableTag_cold_3();
      v8 = 4294954654;
LABEL_84:
      if (v7)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v7)
      {
        if (cf)
        {
          if (CFDictionaryGetValue(*(a5 + 24), v7))
          {
            v25 = @"%s: NAME %@ already declared";
          }

          else
          {
            if (!a2 || !CFDictionaryGetValue(a2, v7))
            {
              CFDictionarySetValue(*(a5 + 24), v7, cf);
LABEL_67:
              CFRelease(v7);
              goto LABEL_68;
            }

            v25 = @"%s: NAME %@ declared in multivariant playlist cannot be redeclared";
          }
        }

        else
        {
          v25 = @"%s: Must have VALUE for NAME %@";
        }

        v8 = 4294954654;
        _StreamPlaylistLogError(4294954654, 4294955032, a5, v25, "#EXT-X-DEFINE", v7);
        goto LABEL_67;
      }

      if (v32)
      {
        if (CFDictionaryGetValue(*(a5 + 24), v32))
        {
          v26 = @"%s: QUERYPARAM %@ already declared";
        }

        else
        {
          if (a3)
          {
            Value = CFDictionaryGetValue(a3, v32);
            if (!Value)
            {
              v8 = 4294954654;
              _StreamPlaylistLogError(4294954654, 4294955032, a5, @"%s: QUERYPARAM %@ not found in query parameters", "#EXT-X-DEFINE", v32);
              goto LABEL_80;
            }

            v16 = Value;
            CFRetain(Value);
            CFDictionarySetValue(*(a5 + 24), v32, v16);
            if (a4)
            {
              v17 = 0;
              *a4 = 1;
            }

            else
            {
              PlaylistProcessVariableTag_cold_2(&v38);
              v17 = 0;
              v8 = v38;
            }

            goto LABEL_78;
          }

          v26 = @"%s: QUERYPARAM %@ found, but no query parameters available";
        }

        v8 = 4294954654;
        _StreamPlaylistLogError(4294954654, 4294955032, a5, v26, "#EXT-X-DEFINE", v32);
        v17 = 0;
      }

      else
      {
        PlaylistProcessVariableTag_cold_1();
        v17 = 0;
        v8 = 4294954654;
      }
    }

LABEL_68:
    if (!v16)
    {
      if (v17)
      {
        goto LABEL_79;
      }

      goto LABEL_70;
    }

LABEL_78:
    CFRelease(v16);
    if (v17)
    {
      goto LABEL_79;
    }

LABEL_70:
    if (!v15)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  if (CFDictionaryGetValue(*(a5 + 24), v30))
  {
    v24 = @"%s: IMPORT %@ already declared";
LABEL_88:
    v8 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955032, a5, v24, "#EXT-X-DEFINE", v30);
    v15 = 0;
    goto LABEL_68;
  }

  if (!a2)
  {
    v24 = @"%s: IMPORT %@ found but no imports available";
    goto LABEL_88;
  }

  v18 = CFDictionaryGetValue(a2, v30);
  if (v18)
  {
    v16 = v18;
    CFRetain(v18);
    CFDictionarySetValue(*(a5 + 24), v30, v16);
    v15 = 0;
    goto LABEL_78;
  }

  v8 = 4294954654;
  _StreamPlaylistLogError(4294954654, 4294955032, a5, @"%s: IMPORT %@ not found in multivariant playlist", "#EXT-X-DEFINE", v30);
  v15 = 0;
LABEL_79:
  CFRelease(v17);
  if (!v15)
  {
    goto LABEL_81;
  }

LABEL_80:
  CFRelease(v15);
LABEL_81:
  free(v39);
  return v8;
}

uint64_t PlaylistProcessServerControlTag(uint64_t a1, const char *a2, uint64_t a3, double a4, double a5)
{
  v36 = a2;
  v34 = 0.0;
  v35 = 0.0;
  v32 = 0;
  v33 = 0.0;
  v31 = 0;
  while (1)
  {
    v8 = v36;
    v9 = *v36;
    v10 = v9 > 0xD;
    v11 = (1 << v9) & 0x2401;
    if (!v10 && v11 != 0)
    {
      v19 = a1;
      FigMediaPlaylistSetDoesServerSupportsBlockingReload(a1, SHIBYTE(v31));
      FigMediaPlaylistSetSkipDeltaBoundary(a1, v35);
      v20 = v31;
      FigMediaPlaylistSetCanSkipDATERANGES(a1, v31);
      HasSkipDeltaBoundary = FigMediaPlaylistHasSkipDeltaBoundary(a1);
      if (v20 && !HasSkipDeltaBoundary)
      {
        PlaylistProcessServerControlTag_cold_1();
        v13 = 4294954654;
        goto LABEL_44;
      }

      if (a4 == 0.0 || vabdd_f64(a4, v33) <= 2.22044605e-16)
      {
        v13 = 0;
        goto LABEL_44;
      }

      v13 = 4294954654;
      _StreamPlaylistLogError(4294954654, 4294955032, a3, @"illegal %s change", "PART-HOLD-BACK");
      v22 = v34;
LABEL_48:
      FigMediaPlaylistSetHoldBackDuration(v19, v22);
      goto LABEL_49;
    }

    v29 = 0;
    __s1 = 0;
    v28 = 0;
    v26 = 0;
    free(v32);
    v32 = 0;
    v13 = sp_ParseAttribute("#EXT-X-SERVER-CONTROL", v8, 1, 0, &__s1, &v28, &v29, &v27, &v36, &v26, &v32, a3);
    if (v13 && !*(a3 + 41) || (v26 & 2) != 0)
    {
      goto LABEL_49;
    }

    v14 = __s1;
    if (!__s1)
    {
      goto LABEL_30;
    }

    v15 = v29;
    if (!v29)
    {
      goto LABEL_30;
    }

    if (v28 <= 15)
    {
      break;
    }

    if (v28 != 16)
    {
      if (v28 != 19 || strncmp(__s1, "CAN-SKIP-DATERANGES", 0x13uLL))
      {
        goto LABEL_30;
      }

      v17 = &v31;
LABEL_28:
      matched = sp_MatchYesOrNo(v14, v15, a3, v17);
LABEL_29:
      v13 = matched;
      goto LABEL_30;
    }

    if (!strncmp(__s1, "CAN-BLOCK-RELOAD", 0x10uLL))
    {
      v17 = (&v31 + 1);
      goto LABEL_28;
    }

LABEL_30:
    if (v13)
    {
      goto LABEL_43;
    }
  }

  if (v28 != 9)
  {
    if (v28 == 14)
    {
      if (!strncmp(__s1, "CAN-SKIP-UNTIL", 0xEuLL))
      {
        v13 = sp_strtod(v15, 0, &v35, 0, "skip boundary", a3);
        if (!v13)
        {
          v18 = v35;
          if (v35 <= 0.0)
          {
            v23 = "CAN-SKIP-UNTIL";
            goto LABEL_42;
          }
        }
      }

      else if (!strncmp(v14, "PART-HOLD-BACK", 0xEuLL))
      {
        matched = sp_strtod(v15, 0, &v33, 0, "part holdback", a3);
        goto LABEL_29;
      }
    }

    goto LABEL_30;
  }

  if (strncmp(__s1, "HOLD-BACK", 9uLL))
  {
    goto LABEL_30;
  }

  v13 = sp_strtod(v15, 0, &v34, 0, "holdback", a3);
  if (v13)
  {
    goto LABEL_30;
  }

  v18 = v34;
  if (v34 > 0.0)
  {
    goto LABEL_30;
  }

  v23 = "HOLD-BACK";
LABEL_42:
  v13 = 4294954654;
  _StreamPlaylistLogError(4294954654, 4294955032, a3, @"%s must be positive", v18, v23);
LABEL_43:
  v19 = a1;
  FigMediaPlaylistSetDoesServerSupportsBlockingReload(a1, SHIBYTE(v31));
  FigMediaPlaylistSetSkipDeltaBoundary(a1, v35);
  FigMediaPlaylistSetCanSkipDATERANGES(a1, v31);
LABEL_44:
  FigMediaPlaylistSetPartHoldBackDuration(v19, v33);
  v22 = v34;
  if (a5 == 0.0 || v13)
  {
    goto LABEL_48;
  }

  if (vabdd_f64(a5, v34) <= 2.22044605e-16)
  {
    v13 = 0;
    goto LABEL_48;
  }

  PlaylistProcessServerControlTag_cold_2();
  v13 = 4294954654;
LABEL_49:
  free(v32);
  return v13;
}

uint64_t PlaylistProcessSkipTag(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t ValueAtIndex, uint64_t *a7, unint64_t *a8, double *a9, CFTypeRef *a10)
{
  v44 = a2;
  v42 = 0;
  v43 = 0;
  cf = 0;
  while (1)
  {
    v15 = v44;
    v16 = *v44;
    v17 = v16 > 0xD;
    v18 = (1 << v16) & 0x2401;
    if (!v17 && v18 != 0)
    {
      v23 = 0;
      goto LABEL_22;
    }

    v39 = 0;
    __s1 = 0;
    v37 = 0;
    v38 = 0;
    v36 = 0;
    free(v42);
    v42 = 0;
    v23 = sp_ParseAttribute("#EXT-X-SKIP", v15, 1, 1, &__s1, &v38, &v39, &v37, &v44, &v36, &v42, a3);
    if (v23 && !*(a3 + 41))
    {
      goto LABEL_47;
    }

    v20 = v36;
    if ((v36 & 2) != 0)
    {
      goto LABEL_47;
    }

    if (!__s1)
    {
      goto LABEL_21;
    }

    v21 = v39;
    if (!v39)
    {
      goto LABEL_21;
    }

    if (v38 != 27)
    {
      break;
    }

    if (!strncmp(__s1, "RECENTLY-REMOVED-DATERANGES", 0x1BuLL))
    {
      if ((v20 & 1) == 0)
      {
        PlaylistProcessSkipTag_cold_1();
        v23 = 4294954654;
        goto LABEL_22;
      }

      a2 = v37;
      if (v37)
      {
        v22 = PlaylistTokenizeString(v21, v37, a3, 9, &cf);
        goto LABEL_20;
      }
    }

LABEL_21:
    if (v23)
    {
      goto LABEL_22;
    }
  }

  if (v38 != 16 || strncmp(__s1, "SKIPPED-SEGMENTS", 0x10uLL))
  {
    goto LABEL_21;
  }

  v22 = sp_strtoull(v21, 0, &v43, 10, 0, 1, "SKIPPED-SEGMENTS", a3);
LABEL_20:
  v23 = v22;
  if (!v22)
  {
    goto LABEL_21;
  }

  if (*(a3 + 41))
  {
LABEL_22:
    if (!ValueAtIndex)
    {
      v24 = 0;
      while (1)
      {
        MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
        if (MediaSegmentSpecifiers)
        {
          MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
        }

        if (v24 >= MediaSegmentSpecifiers)
        {
          break;
        }

        v26 = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
        ValueAtIndex = CFArrayGetValueAtIndex(v26, v24++);
        if (FigMediaSegmentSpecifierGetMediaSequence(ValueAtIndex) == a4)
        {
          goto LABEL_30;
        }
      }

      ValueAtIndex = 0;
    }

LABEL_30:
    v27 = v43;
    if (v43)
    {
      v28 = 0.0;
      v29 = v43;
      do
      {
        if (!ValueAtIndex)
        {
          PlaylistProcessSkipTag_cold_3(a3, a2);
LABEL_46:
          v23 = 4294949663;
          goto LABEL_47;
        }

        if (a5)
        {
          FigMediaSegmentSpecifierGetDateStamp(ValueAtIndex);
          if (!FigCFEqual())
          {
            PlaylistProcessSkipTag_cold_2(a3);
            goto LABEL_46;
          }
        }

        DateStamp = FigMediaSegmentSpecifierGetDateStamp(ValueAtIndex);
        FigStreamPlaylistValidateMediaEntry(a1, ValueAtIndex, DateStamp);
        v28 = v28 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
        NextSegment = FigMediaSegmentSpecifierGetNextSegment(ValueAtIndex);
        ValueAtIndex = NextSegment;
        a5 = 0;
        --v29;
      }

      while (v29);
      if (!NextSegment)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v28 = 0.0;
      if (!ValueAtIndex)
      {
LABEL_41:
        PlaylistProcessSkipTag_cold_4(a3, a2);
        v23 = 4294949663;
        goto LABEL_38;
      }
    }

    *a7 = ValueAtIndex;
LABEL_38:
    *a8 = v27;
    *a9 = v28;
    v32 = v42;
    *a10 = cf;
    free(v32);
    return v23;
  }

LABEL_47:
  if (cf)
  {
    CFRelease(cf);
  }

  return v23;
}

uint64_t MergeLeadingPartialMediaEntries(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t a6)
{
  v40 = 1;
  FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
  LastValue = FigCFArrayGetLastValue();
  if (LastValue && (v12 = LastValue, MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(a2), MediaSequence == FigMediaSegmentSpecifierGetMediaSequence(v12)))
  {
    v39 = a5;
    DiscontinuityDomain = FigMediaSegmentSpecifierGetDiscontinuityDomain(v12);
    v15 = FigMediaSegmentSpecifierGetDiscontinuityDomain(a2);
    if (DiscontinuityDomain == v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = 4294954984;
      if (MergeLeadingPartialMediaEntries_cold_1(v12))
      {
        return v16;
      }
    }

    PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(v12);
    v38 = FigMediaSegmentSpecifierGetPartialSegments(a2);
    FirstValue = FigCFArrayGetFirstValue();
    if (!FirstValue)
    {
      if (PartialSegments && CFArrayGetCount(PartialSegments) >= 1)
      {
        FigMediaSegmentSpecifierSetAreFragmentsExpired(v12, 1);
      }

      v27 = 0;
      v26 = 0;
      v29 = DiscontinuityDomain == v15;
      a5 = v39;
      if (!v29)
      {
        goto LABEL_17;
      }

      goto LABEL_35;
    }

    NextSegment = FirstValue;
    v20 = 0;
    if (!PartialSegments)
    {
      goto LABEL_8;
    }

LABEL_7:
    for (i = CFArrayGetCount(PartialSegments); ; i = 0)
    {
      if (v20 >= i)
      {
        goto LABEL_26;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(PartialSegments, v20);
      if (!NextSegment)
      {
        break;
      }

      matched = DoesMediaFileMatchEntry(ValueAtIndex, NextSegment, &v40, a3, 1, a6);
      if (matched)
      {
        v16 = matched;
        goto LABEL_29;
      }

      if (!v40)
      {
        break;
      }

      NextSegment = FigMediaSegmentSpecifierGetNextSegment(NextSegment);
      v16 = 0;
      ++v20;
      if (PartialSegments)
      {
        goto LABEL_7;
      }

LABEL_8:
      ;
    }

    v16 = 4294954984;
    if (MergeLeadingPartialMediaEntries_cold_2(a3, v23, v24))
    {
      return v16;
    }

LABEL_26:
    if (!NextSegment || FigMediaSegmentSpecifierIsFragment(v12))
    {
      if (v16)
      {
LABEL_29:
        v26 = 0;
        v27 = 0;
        a5 = v39;
        goto LABEL_17;
      }

      if (NextSegment)
      {
        do
        {
          v30 = FigMediaSegmentSpecifierGetNextSegment(NextSegment);
          FigMediaSegmentSpecifierAddPartialSegment(v12, NextSegment);
          NextSegment = v30;
        }

        while (v30);
        v27 = 1;
      }

      else
      {
        v27 = 0;
      }

      a5 = v39;
LABEL_35:
      if (v38)
      {
        FigMediaSegmentSpecifierSetPartialSegments(a2, 0);
      }

      if (!FigMediaSegmentSpecifierGetURLString(v12))
      {
        URLString = FigMediaSegmentSpecifierGetURLString(a2);
        FigMediaSegmentSpecifierSetURLString(v12, URLString);
      }

      TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(a2);
      FigMediaSegmentSpecifierSetTimeInSeconds(v12, TimeInSeconds);
      TimeOffsetInSeconds = FigMediaSegmentSpecifierGetTimeOffsetInSeconds(a2);
      FigMediaSegmentSpecifierSetTimeOffsetInSeconds(v12, TimeOffsetInSeconds);
      IsMarkedAsGap = FigMediaSegmentSpecifierIsMarkedAsGap(a2);
      FigMediaSegmentSpecifierSetIsMarkedAsGap(v12, IsMarkedAsGap);
      StartOffset = FigMediaSegmentSpecifierGetStartOffset(a2);
      FigMediaSegmentSpecifierSetStartOffset(v12, StartOffset);
      v36 = FigMediaSegmentSpecifierGetBytesToRead(a2);
      FigMediaSegmentSpecifierSetBytesToRead(v12, v36);
      BitRate = FigMediaSegmentSpecifierGetBitRate(a2);
      FigMediaSegmentSpecifierSetBitRate(v12, BitRate);
      v26 = 1;
      FigMediaSegmentSpecifierSetIsReadInCurrent(v12, 1);
      FigMediaSegmentSpecifierSetChangedInCurrent(v12, 1);
      if (PartialSegments | v38)
      {
        CMRemoveAllAttachments(v12);
      }

      v16 = 0;
      goto LABEL_17;
    }

    v16 = 4294954984;
    a5 = v39;
    if (MergeLeadingPartialMediaEntries_cold_3(v12))
    {
      return v16;
    }
  }

  else
  {
    v16 = 0;
  }

  v26 = 0;
  v27 = 0;
LABEL_17:
  *a4 = v26;
  *a5 = v27;
  return v16;
}

uint64_t FindMatchingMediaEntry(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  for (i = 0; ; ++i)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    if (MediaSegmentSpecifiers)
    {
      MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
    }

    if (i >= MediaSegmentSpecifiers)
    {
      return 0;
    }

    v12 = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
    v15 = 0;
    result = DoesMediaFileMatchEntry(ValueAtIndex, a2, &v15, a4, 1, a5);
    if (result)
    {
      return result;
    }

    if (v15)
    {
      break;
    }
  }

  *a3 = ValueAtIndex;
  return result;
}

uint64_t DoesMediaFileMatchEntry(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, int a5, uint64_t a6)
{
  *a3 = 0;
  MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(a1);
  v13 = 0;
  if (MediaSequence == FigMediaSegmentSpecifierGetMediaSequence(a2))
  {
    TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(a1);
    if (TimeInSeconds == FigMediaSegmentSpecifierGetTimeInSeconds(a2))
    {
      v13 = 0;
    }

    else
    {
      v13 = 4294954984;
      if (DoesMediaFileMatchEntry_cold_1(a1))
      {
        return v13;
      }
    }

    if (a5 || (DiscontinuityDomain = FigMediaSegmentSpecifierGetDiscontinuityDomain(a1), DiscontinuityDomain == FigMediaSegmentSpecifierGetDiscontinuityDomain(a2)) || (v13 = 4294954984, !MergeLeadingPartialMediaEntries_cold_1(a1)))
    {
      StartOffset = FigMediaSegmentSpecifierGetStartOffset(a1);
      if (StartOffset == FigMediaSegmentSpecifierGetStartOffset(a2) || (v13 = 4294954984, !DoesMediaFileMatchEntry_cold_3(a1)))
      {
        v17 = FigMediaSegmentSpecifierGetBytesToRead(a1);
        if (v17 == FigMediaSegmentSpecifierGetBytesToRead(a2) || (v13 = 4294954984, !DoesMediaFileMatchEntry_cold_4(a1)))
        {
          FigMediaSegmentSpecifierGetURLString(a1);
          FigMediaSegmentSpecifierGetURLString(a2);
          if (FigCFEqual() || (v13 = 4294954984, !DoesMediaFileMatchEntry_cold_5(a1, a6, a2)))
          {
            IsMarkedAsGap = FigMediaSegmentSpecifierIsMarkedAsGap(a1);
            if (IsMarkedAsGap == FigMediaSegmentSpecifierIsMarkedAsGap(a2) || (v13 = 4294954984, !DoesMediaFileMatchEntry_cold_6(a1)))
            {
              FigMediaSegmentSpecifierGetContentKeySpecifier(a1);
              FigMediaSegmentSpecifierGetContentKeySpecifier(a2);
              if (FigCFEqual())
              {
                if (!v13)
                {
                  *a3 = 1;
                }
              }

              else
              {
                v20 = FigMediaSegmentSpecifierGetMediaSequence(a1);
                _StreamPlaylistLogError(4294954984, 4294954984, a4, @"Media Entry crypt key URL does not match previous playlist for MEDIA-SEQUENCE %llu", v20);
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                return 4294954984;
              }
            }
          }
        }
      }
    }
  }

  return v13;
}

uint64_t FigStreamPlaylistValidateMediaEntry(uint64_t a1, uint64_t a2, const void *a3)
{
  PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(a1);
  TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(a2);
  FigMediaPlaylistSetPlaylistActiveDurationSecs(a1, PlaylistActiveDurationSecs + TimeInSeconds);
  FigMediaSegmentSpecifierSetIsReadInCurrent(a2, 1);
  if (FigMediaSegmentSpecifierGetContentKeySpecifier(a2))
  {
    ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(a2);
    FigContentKeySpecifierSetIsReadInCurrent(ContentKeySpecifier, 1);
  }

  result = FigMediaSegmentSpecifierGetMapSegmentSpecifier(a2);
  if (result)
  {
    MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(a2);
    result = FigMediaSegmentSpecifierSetIsReadInCurrent(MapSegmentSpecifier, 1);
  }

  if (a3)
  {
    if (!FigMediaSegmentSpecifierGetDateStamp(a2))
    {
      FigMediaSegmentSpecifierSetChangedInCurrent(a2, 1);
      FigMediaSegmentSpecifierSetDateStamp(a2, a3);
    }

    v11 = FigMediaPlaylistGetDateStampCount(a1) + 1;

    return FigMediaPlaylistSetDateStampCount(a1, v11);
  }

  return result;
}

uint64_t CreateMediaFileEntry(uint64_t a1, const void *a2, int a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, const void *a12, const void *a13, char a14, char a15)
{
  v41 = *MEMORY[0x1E69E9840];
  v38 = 0;
  if (a11)
  {
    v23 = (8 * a11) / a9;
  }

  else
  {
    v23 = 0.0;
  }

  if (a4)
  {
    FigContentKeySpecifierSetIsReadInCurrent(a4, 1);
    if (a12)
    {
      v24 = a3;
      v25 = CFRetain(a12);
    }

    else
    {
      *bytes = 0;
      v40 = 0;
      v26 = 15;
      v27 = a6;
      do
      {
        bytes[v26] = v27;
        v27 >>= 8;
        --v26;
      }

      while (v26 != -1);
      AllocatorForMedia = FigGetAllocatorForMedia();
      v29 = CFDataCreate(AllocatorForMedia, bytes, 16);
      if (!v29)
      {
        CreateMediaFileEntry_cold_1();
        return v38;
      }

      v25 = v29;
      v24 = a3;
    }
  }

  else
  {
    v24 = a3;
    v25 = 0;
  }

  v30 = a8;
  if (a5)
  {
    FigMediaSegmentSpecifierSetIsDiscontinuityDomain(a5, a7);
    FigMediaSegmentSpecifierSetIsReadInCurrent(a5, 1);
    if (!FigMediaSegmentSpecifierGetIV(a5))
    {
      FigMediaSegmentSpecifierSetIV(a5, v25);
    }
  }

  MediaEntryCount = FigMediaPlaylistGetMediaEntryCount(a1);
  FigMediaPlaylistSetMediaEntryCount(a1, MediaEntryCount + 1);
  v32 = FigGetAllocatorForMedia();
  v33 = FigMediaPlaylistGetMediaEntryCount(a1);
  FigMediaSegmentSpecifierCreate(a9, v23, a10, v32, a2, a4, a5, a6, a7, v30, a11, v25, a13, v24, 0, a14, 1, a15, 0, 0, v33, 1, &v38);
  if (v25)
  {
    CFRelease(v25);
  }

  return v38;
}

void FigStreamPlaylistTransferPartialEntryQueue(uint64_t a1, uint64_t a2)
{
  PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(a1);
  FigMediaSegmentSpecifierSetPartialSegments(a2, PartialSegments);

  FigMediaSegmentSpecifierSetPartialSegments(a1, 0);
}

const void *FindMediaSelectionOptionArrayByMediaType(const __CFArray *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
    if (CFEqual(Value, a2))
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupOptions");
}

uint64_t FigStreamPlaylistParse(OpaqueCMBlockBuffer *a1, const __CFURL *a2, const __CFURL *a3, _DWORD *a4, int a5, int a6, int a7, unsigned int a8, CFMutableArrayRef *a9, uint64_t a10, const __CFDictionary *a11, const __CFDictionary *a12, uint64_t *a13, CFTypeRef *a14)
{
  if (_os_feature_enabled_impl())
  {

    return FigStreamPlaylistParseRemote(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  }

  else
  {

    return FigStreamPlaylistParseInProcess(a1, a2, a3, a4, a5, a6, 0, a8, a9, a10, a11, a12, a13, a14);
  }
}

void FigStreamPlaylistPredictMediaSequenceAndPartForAdvance(uint64_t a1, uint64_t *a2, CFIndex *a3, double a4)
{
  if (FigMediaPlaylistGetMaxSegmentDuration(a1) <= 0.0)
  {
    TargetDuration = FigMediaPlaylistGetTargetDuration(a1);
  }

  else
  {
    TargetDuration = FigMediaPlaylistGetMaxSegmentDuration(a1);
  }

  FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
  LastValue = FigCFArrayGetLastValue();
  v10 = LastValue;
  if (LastValue)
  {
    FigMediaSegmentSpecifierGetPartialSegments(LastValue);
    v11 = FigCFArrayGetLastValue();
    MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(v10);
  }

  else
  {
    v11 = 0;
    MediaSequence = 0;
  }

  v13 = (ceil(TargetDuration / FigMediaPlaylistGetPartTargetDuration(a1)) + -1.0);
  v14 = 0.0;
  v15 = 0;
  if (v11)
  {
    v16 = TargetDuration;
    while (1)
    {
      PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(v10);
      if (PartialSegments)
      {
        PartialSegments = CFArrayGetCount(PartialSegments);
      }

      if (v15 >= PartialSegments)
      {
        break;
      }

      v18 = FigMediaSegmentSpecifierGetPartialSegments(v10);
      ValueAtIndex = CFArrayGetValueAtIndex(v18, v15);
      v16 = v16 - FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
      if (ValueAtIndex == v11)
      {
        break;
      }

      ++v15;
    }

    if (v16 < a4 && vabdd_f64(a4, v16) >= 0.001)
    {
      v15 = v13;
      if (FigMediaSegmentSpecifierIsFragment(v10))
      {
        v14 = v16;
      }

      else
      {
        v14 = 0.0;
      }
    }
  }

  while (TargetDuration + v14 < a4 || vabdd_f64(TargetDuration + v14, a4) < 0.001)
  {
    ++MediaSequence;
    v15 = v13;
    v14 = TargetDuration + v14;
  }

  while (v14 <= a4 && vabdd_f64(v14, a4) >= 0.001)
  {
    if (v15 == v13)
    {
      ++MediaSequence;
      v15 = 0;
    }

    else
    {
      ++v15;
    }

    v14 = v14 + FigMediaPlaylistGetPartTargetDuration(a1);
  }

  *a2 = MediaSequence;
  *a3 = v15;
}

BOOL FigStreamPlaylistParserHTTPServerMayMutatePlaylist(uint64_t a1)
{
  if (!FigMediaPlaylistHasEndTag(a1))
  {
    return 1;
  }

  MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
  if (!MediaSegmentSpecifiers || !CFArrayGetCount(MediaSegmentSpecifiers))
  {
    return 1;
  }

  if (FigMediaPlaylistGetPlaylistType(a1) == 2)
  {
    return 0;
  }

  return FigMediaPlaylistGetPlaylistType(a1) != 1;
}

const char *sp_SkipSpacesTabsAndCommas(const char *a1, uint64_t a2, int a3)
{
  v6 = 0;
  while (1)
  {
    v7 = *a1;
    if (v7 > 0x2C)
    {
      goto LABEL_9;
    }

    if (((1 << v7) & 0x100100000200) == 0)
    {
      break;
    }

    v8 = StreamingPlaylist_SkipSpacesAndTabs(a1, a2);
    a1 = v8;
    if (*v8 == 44)
    {
      ++v6;
      a1 = StreamingPlaylist_SkipSpacesAndTabs(v8 + 1, a2);
    }
  }

  if (((1 << v7) & 0x2401) != 0)
  {
LABEL_7:
    if (!v6)
    {
      return a1;
    }

    v10 = @"Misplaced comma";
    v12 = v6 == 1;
    v11 = @"Multiple misplaced comma";
    goto LABEL_13;
  }

LABEL_9:
  if (!a3)
  {
    goto LABEL_7;
  }

  if (v6 == 1)
  {
    return a1;
  }

  v10 = @"Expected a comma but not found";
  v11 = @"Multiple commas found";
  v12 = v6 == 0;
LABEL_13:
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  sp_SkipSpacesTabsAndCommas_cold_1(a2, v13);
  return a1;
}

BOOL sp_MatchAttributeName(uint64_t a1, int a2, void *a3, void *a4)
{
  for (i = 0; ; ++i)
  {
    v5 = *(a1 + i);
    v6 = (v5 - 65) >= 0x1A && (v5 - 48) >= 0xA;
    if (v6 && v5 != 45 && v5 != 95 && (!a2 || (v5 - 97) > 0x19))
    {
      break;
    }

    if (!i)
    {
      *a3 = a1;
    }
  }

  *a4 = i;
  if (i)
  {
    v7 = *a3 == 0;
  }

  else
  {
    v7 = 1;
  }

  return !v7;
}

uint64_t PlaylistTokenizeString(char *a1, size_t a2, uint64_t a3, int a4, __CFArray **a5)
{
  alloc = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v29 = a3;
    if (a2)
    {
      v10 = MEMORY[0x1E69E9830];
      while (1)
      {
        while (1)
        {
          v11 = *a1;
          v12 = (v11 & 0x80000000) != 0 ? __maskrune(*a1, 0x4000uLL) : *(v10 + 4 * v11 + 60) & 0x4000;
          if (v11 == a4 || v12 == 0)
          {
            break;
          }

          ++a1;
          if (!--a2)
          {
            goto LABEL_37;
          }
        }

        v14 = memchr(a1, a4, a2);
        v15 = v14;
        if (v14)
        {
          v16 = v14 - a1;
        }

        else
        {
          v16 = a2;
        }

        if (v16)
        {
          v17 = v16 - 1;
          do
          {
            v18 = &a1[v17];
            v19 = a1[v17];
            if ((v19 & 0x80000000) != 0)
            {
              v20 = __maskrune(a1[v17], 0x4000uLL);
            }

            else
            {
              v20 = *(v10 + 4 * v19 + 60) & 0x4000;
            }

            --v17;
          }

          while (v19 != a4 && v20 != 0 && v18 > a1);
          if (v17 != -2)
          {
            v23 = CFStringCreateWithBytes(alloc, a1, v17 + 2, 0x600u, 0);
            if (!v23)
            {
              v28 = 1671;
              goto LABEL_44;
            }

            v24 = v23;
            CFArrayAppendValue(Mutable, v23);
            CFRelease(v24);
          }
        }

        if (v15)
        {
          a1 += v16 + 1;
        }

        else
        {
          a1 += v16;
        }

        if (v15)
        {
          a2 += ~v16;
          if (a2)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_37:
    if (CFArrayGetCount(Mutable))
    {
      goto LABEL_38;
    }

    PlaylistTokenizeString_cold_1(v29, v25);
    v26 = 4294955032;
LABEL_41:
    CFRelease(Mutable);
    return v26;
  }

  v28 = 1640;
LABEL_44:
  if (!PlaylistTokenizeString_cold_2(v28, &v32))
  {
    v26 = v32;
    if (!Mutable)
    {
      return v26;
    }

    goto LABEL_41;
  }

LABEL_38:
  v26 = 0;
  *a5 = Mutable;
  return v26;
}