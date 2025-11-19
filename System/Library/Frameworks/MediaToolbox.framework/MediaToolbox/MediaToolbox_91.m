uint64_t fpfsi_RTCReportingUpdateATMOSMetricVar(uint64_t result, _BYTE *a2, _BYTE *a3, int a4, int a5, int a6)
{
  if (*a2 != a4 && (a4 != 1 ? (v6 = a5 == 1) : (v6 = 1), v6))
  {
    if (!a4 && a6 == 1)
    {
      *(result + 2596) = 0;
    }

    *a2 = a4;
    if (*a3)
    {
      goto LABEL_14;
    }
  }

  else if (*a3)
  {
    return result;
  }

  *a3 = 1;
LABEL_14:
  v7 = *(result + 2603);
  if (*(result + 2603) || *(result + 2596) && *(result + 2597) && *(result + 2598) && *(result + 2599))
  {
    v8 = *(result + 2568);
    if (v8)
    {
      v9 = *(result + 2600);
      v10 = *(result + 2601);
      v11 = *(result + 2602);
      VTable = CMBaseObjectGetVTable();
      v13 = *(VTable + 16);
      result = VTable + 16;
      v14 = *(v13 + 56);
      if (v14)
      {

        return v14(v8, @"playerStats", 0x1F0B42BB8, (16 * v7) | (2 * v9) | (4 * v10) | (8 * v11) | 1, 0);
      }
    }
  }

  return result;
}

uint64_t fpfsi_ConfigureAlternateSelectionBossForSuppressAudioOnly()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_522();
  v2 = *(v1 + 40);
  if (!v2)
  {
    return 0;
  }

  if (*(v0 + 558))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v4 = FigAlternateSuppressAudioOnlyFilterCreate(AllocatorForMedia, &cf);
    v5 = cf;
    if (v4)
    {
      v6 = v4;
      if (!cf)
      {
        return v6;
      }
    }

    else
    {
      v6 = FigAlternateSelectionBossAddFilter(*(v0 + 40), cf);
      v5 = cf;
      if (!cf)
      {
        return v6;
      }
    }

    CFRelease(v5);
    return v6;
  }

  return FigAlternateSelectionBossRemoveFilter(v2, @"SuppressAudioOnly");
}

uint64_t fpfsi_CreateAndAddCombinedAudioPreferenceFilter()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  CMBaseObjectGetDerivedStorage();
  HIDWORD(v60) = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  cf = 0;
  BYTE6(v55) = 0;
  WORD2(v55) = 0;
  if (*(v0 + 795))
  {
    v2 = 1836019574;
  }

  else
  {
    v2 = 1936684398;
  }

  BYTE3(v55) = 0;
  if (!*(v0 + 40))
  {
    v47 = 0;
LABEL_69:
    v31 = 0.0;
    goto LABEL_55;
  }

  v3 = OUTLINED_FUNCTION_266();
  fpfsi_CreateAudioSpatialSourcesArray(v3, v4, v5, v6, v7, v8, v9, v10, v49, v50, *&size.width, *&size.height, v52, v53, v54, v55, v56, SHIDWORD(v56), cf, v58, SBYTE2(v58), SBYTE3(v58), SHIDWORD(v58), v59, v60, v61[0], v61[1], v61[2], v61[3], v61[4], v61[5], v61[6], v61[7], v61[8], v61[9], v61[10]);
  if (v11)
  {
    v47 = v11;
    goto LABEL_69;
  }

  if (FigCFArrayContainsInt32())
  {
    v12 = 1;
  }

  else
  {
    v12 = FigCFArrayContainsInt32() != 0;
  }

  v13 = v56;
  v14 = CMBaseObjectGetDerivedStorage();
  v61[0] = 0;
  v15 = MEMORY[0x1E695F060];
  size = *MEMORY[0x1E695F060];
  OUTLINED_FUNCTION_265();
  fpfsi_GetResolutionCapForFilter();
  v17 = v16;
  v19 = v18;
  if (qword_1ED4CA3D8 != -1)
  {
    dispatch_once(&qword_1ED4CA3D8, &__block_literal_global_153);
  }

  width = *&qword_1ED4CA3C8;
  height = unk_1ED4CA3D0;
  v22 = *(v14 + 40);
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigAlternateSelectionBossCopyProperty(v22, @"HighestVideoResolutionAlternateWithMultiChannelAudio", AllocatorForMedia, v61);
  if (CGSizeMakeWithDictionaryRepresentation(v61[0], &size) && size.width < width && size.height < height)
  {
    height = size.height;
    width = size.width;
  }

  v25 = *v15;
  v24 = v15[1];
  if (v61[0])
  {
    CFRelease(v61[0]);
  }

  v26 = v25 != v17;
  if (v24 != v19)
  {
    v26 = 1;
  }

  if (v17 >= width)
  {
    v26 = 0;
  }

  if (!v26 || v19 >= height)
  {
    v17 = width;
    v19 = height;
  }

  if (!HIDWORD(v60))
  {
    v27 = OUTLINED_FUNCTION_234();
    HIDWORD(v60) = fpfs_GetAudioDeviceMaxPhysicalOutputChannelCount(v27, v28, 0);
  }

  v29 = *(v0 + 560);
  if (!BYTE3(v55))
  {
    BYTE3(v55) = v29 & 1;
  }

  if ((v29 & 2) == 0)
  {
    goto LABEL_32;
  }

  size.width = 0.0;
  v30 = CMBaseObjectGetDerivedStorage();
  if (*(v30 + 504))
  {
    goto LABEL_32;
  }

  v31 = *(v30 + 536);
  if (v31 == 0.0)
  {
    goto LABEL_33;
  }

  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_500();
  v32 = *(CMBaseObjectGetVTable() + 16);
  if (v32 && (v33 = *(v32 + 48)) != 0)
  {
    v33(*&v31, *MEMORY[0x1E69AFD20], @"HighestVideoResolutionAlternateWithMultiChannelAudio", &size);
    v31 = size.width;
  }

  else
  {
LABEL_32:
    v31 = 0.0;
  }

LABEL_33:
  v34 = FigGetAllocatorForMedia();
  FPSupport_CreateMaxSampleRateDictonary(v34, SHIDWORD(v60), *&v31, &v58, *(v0 + 2544));
  if (*(CMBaseObjectGetDerivedStorage() + 536))
  {
    OUTLINED_FUNCTION_689();
    if (v36)
    {
      v35 = 0;
    }

    else
    {
      v35 = 1;
    }
  }

  else
  {
    v35 = 0;
  }

  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v37 = FigCFEqual();
  fpfsi_CopyCacheRefFromPump();
  v38 = FigGetAllocatorForMedia();
  v39 = v59;
  v40 = *(v0 + 1768);
  LOBYTE(size.width) = v12;
  *(&size.width + 1) = WORD2(v55);
  BYTE3(size.width) = BYTE6(v55);
  HIDWORD(size.width) = v2;
  size.height = v17;
  v52 = *&v19;
  v53 = v13;
  v41 = FigAlternateCombinedAudioPreferenceFilterCreate(v38, 0, HIDWORD(v60), v58, &size, v35 | (v37 << 24), SBYTE3(v55), v59, v40, &cf);
  if (v41 || (v41 = FigAlternateSelectionBossAddFilter(*(v0 + 40), cf), v41))
  {
    v47 = v41;
    if (v39)
    {
LABEL_54:
      CFRelease(v39);
    }
  }

  else
  {
    v42 = *(v0 + 560) & 1;
    if (*(v0 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      OUTLINED_FUNCTION_242();
      v43();
    }

    if (v42)
    {
      v44 = 0;
    }

    else
    {
      v44 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, (v0 + 2544));
      if (*(v0 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        OUTLINED_FUNCTION_211();
        v45();
      }
    }

    if (*(v0 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      OUTLINED_FUNCTION_138();
      v46();
    }

    if (v44)
    {
      CFRelease(v44);
    }

    v47 = 0;
    if (v39)
    {
      goto LABEL_54;
    }
  }

LABEL_55:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v31 != 0.0)
  {
    CFRelease(*&v31);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  return v47;
}

void fpfsi_SetupResolutionCapFilter()
{
  OUTLINED_FUNCTION_647();
  v58 = v2;
  v59 = v3;
  v5 = v4;
  v57 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v38 = 0;
  fpfsi_GetResolutionCapForFilter();
  v8 = v7;
  v10 = v9;
  v11 = *(DerivedStorage + 2528);
  v12 = *(DerivedStorage + 2536);
  cf = 0;
  v41 = 0;
  v13 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_258(v13);
  v14 = CMBaseObjectGetDerivedStorage();
  v40 = 0;
  GlobalSingleton = FigPlayerResourceArbiterGetGlobalSingleton(&v40);
  if (!GlobalSingleton && v40)
  {
    if (v0[801] == 0.0)
    {
LABEL_7:
      v16 = v8;
      v17 = v10;
LABEL_19:
      v10 = v17;
      v8 = v16;
      goto LABEL_20;
    }

    GlobalSingleton = FigPlayerResourceArbiterGetBudgetForConsumer(v40, *(v14 + 928), &v41, 0);
    if (!GlobalSingleton)
    {
      if (v41)
      {
        if (v41 == (v8 * v10))
        {
          goto LABEL_7;
        }

        v18 = v0[801];
        v16 = sqrtf(v18 * v41);
        v17 = sqrtf(v41 / v18);
        if (!dword_1EAF169F0)
        {
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_21();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
        OUTLINED_FUNCTION_46();
        if (!v1)
        {
LABEL_18:
          OUTLINED_FUNCTION_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_19;
        }

        v20 = *v0;
        if (v20)
        {
          v21 = (CMBaseObjectGetDerivedStorage() + 888);
          if (!v5)
          {
LABEL_17:
            v42 = 136317186;
            OUTLINED_FUNCTION_47();
            v43 = v20;
            OUTLINED_FUNCTION_227();
            v44 = v21;
            v45 = v22;
            v46 = v5;
            v47 = v23;
            v48 = v24;
            v49 = v22;
            v50 = v8;
            v51 = v22;
            v52 = v10;
            v53 = v22;
            v54 = v16;
            v55 = v22;
            v56 = v17;
            OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_30();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_507();
            goto LABEL_18;
          }
        }

        else
        {
          v21 = "";
          if (!v5)
          {
            goto LABEL_17;
          }
        }

        CMBaseObjectGetDerivedStorage();
        goto LABEL_17;
      }
    }
  }

  if (GlobalSingleton)
  {
    goto LABEL_39;
  }

LABEL_20:
  v26 = *MEMORY[0x1E695F060];
  v25 = *(MEMORY[0x1E695F060] + 8);
  v27 = v10 == v25 && v8 == *MEMORY[0x1E695F060];
  if (v27 && FigAlternateSelectionBossRemoveFilter(*(DerivedStorage + 40), @"DisplaySize"))
  {
    goto LABEL_39;
  }

  if (FigAlternateSelectionBossRemoveFilter(*(DerivedStorage + 40), @"ResolutionCap"))
  {
    goto LABEL_39;
  }

  v28 = v12 == v25 && v11 == v26;
  if (v28 && FigAlternateSelectionBossRemoveFilter(*(DerivedStorage + 40), @"ResolutionFloor"))
  {
    goto LABEL_39;
  }

  v29 = MEMORY[0x1E695E480];
  if (v27)
  {
    goto LABEL_34;
  }

  v30 = OUTLINED_FUNCTION_684();
  v34 = FigAlternateDisplaySizeFilterCreate(v31, v32, v30, v33);
  v35 = cf;
  if (!v34)
  {
    FigAlternateSelectionBossAddFilter(*(DerivedStorage + 40), cf);
LABEL_34:
    if (v28)
    {
      goto LABEL_39;
    }

    v36 = FigAlternateResolutionFloorFilterCreate(*v29, &cf, v11, v12);
    v35 = cf;
    if (v36)
    {
      if (!cf)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    FigAlternateSelectionBossAddFilter(*(DerivedStorage + 40), cf);
    v35 = cf;
  }

  if (v35)
  {
LABEL_38:
    CFRelease(v35);
  }

LABEL_39:
  OUTLINED_FUNCTION_646();
}

uint64_t fpfsi_UpdatePixelPerSecondsCapFilter()
{
  OUTLINED_FUNCTION_570();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_297();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  v2 = DerivedStorage;
  GlobalSingleton = FigPlayerResourceArbiterGetGlobalSingleton(&v9);
  if (GlobalSingleton)
  {
    return GlobalSingleton;
  }

  GlobalSingleton = FigPlayerResourceArbiterGetBudgetForConsumer(v9, *(v0 + 928), 0, &v11);
  if (GlobalSingleton)
  {
    return GlobalSingleton;
  }

  if (!v11)
  {
    return FigAlternateSelectionBossRemoveFilter(*(v2 + 40), @"PixelsPerSecondBudget");
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = FigAlternatePixelsPerSecondCapFilterCreate(AllocatorForMedia, v11, &cf);
  v6 = cf;
  if (v5)
  {
    v7 = v5;
    if (!cf)
    {
      return v7;
    }

    goto LABEL_7;
  }

  v7 = FigAlternateSelectionBossAddFilter(*(v2 + 40), cf);
  v6 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v6);
  }

  return v7;
}

uint64_t fpfsi_CopyCacheRefFromPump()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 912))
  {
    FigGetAllocatorForMedia();
    v1 = OUTLINED_FUNCTION_413();
    FigBytePumpGetFigBaseObject(v1);
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 8);
    result = VTable + 8;
    if (*(v3 + 48))
    {
      v4 = OUTLINED_FUNCTION_308();
      return v5(v4);
    }
  }

  return result;
}

void fpfsi_SetupSupportedAudioFormatFilter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, char a11, unsigned __int8 a12, char a13, CFTypeRef cf, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_653();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_572();
  IsDecodable = FigAudioCodecTypeIsDecodable();
  v28 = FigAudioCodecTypeIsDecodable();
  AtmosDecodePolicy = fpfsi_GetAtmosDecodePolicy(v25, &a10);
  if (*(CMBaseObjectGetDerivedStorage() + 536))
  {
    OUTLINED_FUNCTION_689();
    if (v30)
    {
      v31 = 0;
    }

    else
    {
      v31 = 1;
    }
  }

  else
  {
    v31 = 0;
  }

  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v32 = FigStreamAlternateGetAudioMaximumDecodeChannelCount(0x6F707573u) > 2;
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (!FigAlternateSupportedAudioFormatFilterCreate(AllocatorForMedia, (AtmosDecodePolicy << 40) | (v32 << 48) | (v28 << 32) | (IsDecodable << 24) | v31, &cf) && !FigAlternateSelectionBossAddFilter(*(DerivedStorage + 40), cf))
  {
    v34 = 1;
    fpfsi_RTCReportingUpdateATMOSMetricVar(DerivedStorage, (DerivedStorage + 2601), (DerivedStorage + 2597), a12, 1, 1);
    OUTLINED_FUNCTION_596();
    if (!v35)
    {
      v34 = a13 != 0;
    }

    fpfsi_RTCReportingUpdateATMOSMetricVar(DerivedStorage, (DerivedStorage + 2602), (DerivedStorage + 2598), v34, 1, 1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_652();
}

uint64_t fpfsi_ConfigureAlternateSelectionBossForHighestAtmosFiltering()
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  OUTLINED_FUNCTION_172(DerivedStorage);
  if (*(CMBaseObjectGetDerivedStorage() + 568) || !*(v0 + 564))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v3 = FigAlternateHighestAtmosBitrateFilterCreate(AllocatorForMedia, &cf);
    v4 = cf;
    if (v3)
    {
      v5 = v3;
      if (!cf)
      {
        return v5;
      }
    }

    else
    {
      v5 = FigAlternateSelectionBossAddFilter(*(v0 + 40), cf);
      v4 = cf;
      if (!cf)
      {
        return v5;
      }
    }

    CFRelease(v4);
    return v5;
  }

  v7 = *(v0 + 40);

  return FigAlternateSelectionBossRemoveFilter(v7, @"HighestAtmosBitrateFilter");
}

uint64_t fpfsi_ConfigureAlternateSelectionBossPreferExclusiveAudioPassthroughFiltering()
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  OUTLINED_FUNCTION_172(DerivedStorage);
  if (*(CMBaseObjectGetDerivedStorage() + 536))
  {
    OUTLINED_FUNCTION_689();
    if (v2)
    {
      v3 = 0;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = FigAlternatePreferExclusiveAudioPassthroughFilterCreate(AllocatorForMedia, v3, &cf);
  v6 = cf;
  if (v5)
  {
    v7 = v5;
    if (!cf)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v7 = FigAlternateSelectionBossAddFilter(*(v0 + 40), cf);
  v6 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v6);
  }

  return v7;
}

void fpfsi_CreateAudioSpatialSourcesArray(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, CFMutableArrayRef theArray, int a17, int valuePtr, CFDictionaryRef theDict, __int16 a20, char a21, char a22, int a23, CFTypeRef cf, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_811();
  a35 = v37;
  a36 = v38;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  a23 = 0;
  a22 = 0;
  theDict = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_294(DerivedStorage);
  if (!*(CMBaseObjectGetDerivedStorage() + 504))
  {
    v48 = *(CMBaseObjectGetDerivedStorage() + 536);
    if (!v48)
    {
      goto LABEL_52;
    }

    if (!FPSupport_CreateAudioSessionSpatializationCapabilities(v48, v46, &theDict))
    {
      if (!theDict)
      {
        goto LABEL_52;
      }

      Value = CFDictionaryGetValue(theDict, @"SpatialCapabilitiesKey_spatialAudioSources");
      if (Value)
      {
        v50 = Value;
        v51 = CFGetTypeID(Value);
        if (v51 == CFArrayGetTypeID())
        {
          AllocatorForMedia = FigGetAllocatorForMedia();
          Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
          if (Mutable)
          {
            v54 = Mutable;
            FigCFDictionaryGetBooleanIfPresent();
            OUTLINED_FUNCTION_596();
            theArraya = v54;
            if (v55)
            {
              CMBaseObjectGetDerivedStorage();
              v56 = FigCFEqual() || FigCFEqual() || FigCFEqual() != 0;
            }

            else
            {
              v56 = 0;
            }

            if (CFArrayGetCount(v50) >= 1)
            {
              v57 = 0;
              v58 = 0;
              v67 = *MEMORY[0x1E695E4C0];
              do
              {
                valuePtr = 1064530531;
                ValueAtIndex = CFArrayGetValueAtIndex(v50, v57);
                CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
                switch(valuePtr)
                {
                  case 1064530531:
                    if ((*(v36 + 560) & 8) != 0)
                    {
                      v65 = CMBaseObjectGetDerivedStorage();
                      if (!*(v65 + 536))
                      {
                        OUTLINED_FUNCTION_836();
LABEL_42:
                        FigCFArrayAppendInt32();
                        a23 = 16;
                        break;
                      }

                      v66 = *(v65 + 569);
                      OUTLINED_FUNCTION_836();
                      if (!v66)
                      {
                        goto LABEL_42;
                      }
                    }

                    break;
                  case 1651076712:
                    if (v56)
                    {
                      CFArrayAppendValue(theArraya, ValueAtIndex);
                    }

                    break;
                  case 1836020596:
                    if (!v58)
                    {
                      OUTLINED_FUNCTION_596();
                      if (!v64)
                      {
                        goto LABEL_40;
                      }

                      CFArrayAppendValue(theArraya, ValueAtIndex);
LABEL_35:
                      v58 = 1;
                    }

                    break;
                  case 1836020523:
                    if (v58 == 0 && v56)
                    {
                      v60 = CMBaseObjectGetDerivedStorage();
                      cf = v67;
                      v61 = *(v60 + 40);
                      if (!v61)
                      {
                        goto LABEL_40;
                      }

                      v62 = FigGetAllocatorForMedia();
                      if (FigAlternateSelectionBossCopyProperty(v61, @"HasPlayableMultiChannelAudio", v62, &cf))
                      {
                        goto LABEL_40;
                      }

                      v63 = FigCFEqual();
                      if (cf)
                      {
                        CFRelease(cf);
                      }

                      if (!v63)
                      {
LABEL_40:
                        v58 = 0;
                        break;
                      }

                      FigCFArrayAppendInt32();
                      goto LABEL_35;
                    }

                    break;
                  default:
                    if (valuePtr == 1835824233 && v56)
                    {
                      CFArrayAppendValue(theArraya, ValueAtIndex);
                      FigCFDictionaryGetInt32IfPresent();
                    }

                    break;
                }

                ++v57;
              }

              while (v57 < CFArrayGetCount(v50));
            }

            if (v42)
            {
              *v42 = a23;
            }

            if (v40)
            {
              FigCFDictionaryGetBooleanIfPresent();
            }

            if (v44)
            {
              *v44 = theArraya;
            }
          }

          else
          {
            FigSignalErrorAtGM();
          }
        }
      }
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

LABEL_52:
  OUTLINED_FUNCTION_810();
}

uint64_t fpfsi_CreateAndAddScanningModeFilterToBoss(uint64_t a1, UInt8 a2)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = FigAlternateScanModePreferenceFilterCreate(AllocatorForMedia, a2, &cf);
  if (!v5)
  {
    v5 = FigAlternateSelectionBossAddFilter(*(DerivedStorage + 40), cf);
  }

  v6 = v5;
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t fpfsi_updateDisplayListForHDCPMonitor()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  v2 = CMBaseObjectGetDerivedStorage();
  if (!*(v0 + 56))
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v2 + 728);
  if (!v4 || CFArrayGetCount(v4) < 1 || (v5 = FigGetAllocatorForMedia(), (Mutable = CFArrayCreateMutableCopy(v5, 0, *(v3 + 728))) == 0))
  {
    v7 = FPSupport_CopyMainDisplayCAName();
    if (v7)
    {
      v8 = v7;
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v10 = OUTLINED_FUNCTION_266();
        CFArrayAppendValue(v10, v11);
      }

      CFRelease(v8);
    }

    else
    {
      Mutable = 0;
    }
  }

  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v12 = OUTLINED_FUNCTION_236();
    v14 = v13(v12);
    if (!Mutable)
    {
      return v14;
    }

    goto LABEL_14;
  }

  v14 = 4294954514;
  if (Mutable)
  {
LABEL_14:
    CFRelease(Mutable);
  }

  return v14;
}

uint64_t fpfsi_updateSupportedFramerateBucketCapMonitorFromFVT()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_519();
  v2 = CMBaseObjectGetDerivedStorage();
  if (!*(v2 + 40))
  {
    return 0;
  }

  if (!*(v2 + 48))
  {
    return 0;
  }

  if (!*(v2 + 49))
  {
    return 0;
  }

  valuePtr = FigStreamingPlayerCombinedVideoDestinationGetMaxRefreshRate(*(v0 + 376));
  if (valuePtr == 0.0)
  {
    return 0;
  }

  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v4 = OUTLINED_FUNCTION_228();
    v6 = v5(v4);
    if (!v3)
    {
      return v6;
    }

    goto LABEL_11;
  }

  v6 = 4294954514;
  if (v3)
  {
LABEL_11:
    CFRelease(v3);
  }

  return v6;
}

uint64_t fpfsi_setOverrideDisplaysSupportedVideoRange()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v2 = CMBaseObjectGetDerivedStorage();
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (v2 + 736));
  if (*(v0 + 80))
  {
    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      goto LABEL_9;
    }

    v4 = OUTLINED_FUNCTION_621();
    v6 = v5(v4);
    if (v6)
    {
      goto LABEL_7;
    }
  }

  if (!*(v0 + 64))
  {
    v9 = 0;
    if (!v3)
    {
      return v9;
    }

    goto LABEL_10;
  }

  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v7 = OUTLINED_FUNCTION_228();
    v6 = v8(v7);
LABEL_7:
    v9 = v6;
    if (!v3)
    {
      return v9;
    }

    goto LABEL_10;
  }

LABEL_9:
  v9 = 4294954514;
  if (v3)
  {
LABEL_10:
    CFRelease(v3);
  }

  return v9;
}

uint64_t fpfsi_setPlaybackMonitorAutoSwitchStreamQuality()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  v2 = CMBaseObjectGetDerivedStorage();
  v3 = *(v0 + 96);
  if (!v3)
  {
    return 0;
  }

  if (*(v2 + 458))
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = *v4;

  return v5(v3, @"AfmfpbProperty_SwitchesQualityGearAutomatically", v6);
}

uint64_t fpfs_CancelTrialSwitch(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = DerivedStorage[218];
  if (result)
  {
    if (DerivedStorage[210])
    {
      FigAlternateGetPeakBitRate(result);
      FigAlternateGetPeakBitRate(DerivedStorage[210]);
      OUTLINED_FUNCTION_57();
      result = fpfs_SetAlternateWithContext(v4);
      if (!result)
      {
        v5 = DerivedStorage[128];
        if (v5)
        {
          do
          {
            v6 = *(v5 + 24);
            OUTLINED_FUNCTION_746();
            if (v8)
            {
              fpfs_DeleteTrack(a1, v7);
            }

            v5 = v6;
          }

          while (v6);
        }

        v9 = 0;
        v10 = 123;
        do
        {
          if (DerivedStorage[v10])
          {
            StoreCurrentManifold(DerivedStorage, v9, 1u, 0);
          }

          v11 = &DerivedStorage[v9];
          v12 = v11[25];
          if (v12)
          {
            CFRelease(v12);
            v11[25] = 0;
          }

          *(DerivedStorage + v9 + 235) = 0;
          *(DerivedStorage + v9 + 3085) = 0;
          v11[141] = 0;
          ++v9;
          v10 += 2;
        }

        while (v9 != 3);
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_239();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t fpfsi_SwitchBetween4kAndHD()
{
  v2 = OUTLINED_FUNCTION_849();
  OUTLINED_FUNCTION_172(v2);
  if (!*(CMBaseObjectGetDerivedStorage() + 905) || !v0[5])
  {
    return 0;
  }

  if (v1)
  {
    result = fpfsi_addHDResolutionCap();
    if (result)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (!CelestialShouldLimit4kConcurrentPlayback() || (DerivedStorage = CMBaseObjectGetDerivedStorage(), OUTLINED_FUNCTION_260(DerivedStorage), v6) || !fpfs_CanRenderVideo(v5, 0) || !fpfs_GrabPlayer4kPlaybackBaton(*v0) || (v7 = CMBaseObjectGetDerivedStorage(), result = FigAlternateSelectionBossRemoveFilter(*(v7 + 40), @"ResolutionCapFor4kBaton"), !result))
  {
LABEL_11:
    FigAlternateSelectionBossApplyFilters(v0[5]);
    return 0;
  }

  return result;
}

void fpfsi_SetupSkipBitrateRangeFilter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_845();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_518();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(v20 + 912))
  {
    v26 = *(v20 + 1704);
    if (*(DerivedStorage + 458))
    {
      FigGetAllocatorForMedia();
      v27 = OUTLINED_FUNCTION_702();
      FigBytePumpGetFigBaseObject(v27);
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v28 = OUTLINED_FUNCTION_501();
        v30 = v29(v28) != 0;
      }

      else
      {
        v30 = 1;
      }

      v31 = FigCFEqual();
      v32 = *(v20 + 1704);
      if (v31)
      {
        if (!v32)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (!v32)
        {
          goto LABEL_9;
        }

        v40 = *(v20 + 1024);
        if (v40)
        {
          do
          {
            if (*(v40 + 168) == 6 && !*(v40 + 200) && FigCFEqual())
            {
              *(v40 + 205) = 1;
            }

            v40 = *(v40 + 24);
          }

          while (v40);
          v32 = *(v20 + 1704);
          if (!v32)
          {
LABEL_9:
            *(v20 + 1704) = a9;
            if (a9)
            {
              v33 = v30;
            }

            else
            {
              v33 = 1;
            }

            if ((v33 & 1) != 0 || (ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(*(v20 + 1680)), ExpectedAverageBitrate <= FigAlternateGetExpectedAverageBitrate(*(v20 + 1704))) || !fpfs_ScheduleRecoverySwitch(v24, *(v20 + 1704), 1))
            {
              if (!v26)
              {
                goto LABEL_27;
              }

              v38 = *(v20 + 96);
              if (v38)
              {
                v39 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (!v39 || v39(v38, @"AfmfpbProperty_RecoveryAlternate", 0))
                {
                  goto LABEL_27;
                }
              }

              if (FigAlternateSelectionBossRemoveFilter(*(v20 + 40), @"RecoveryAlternateSkipBitrateRange"))
              {
                goto LABEL_27;
              }
            }

            else
            {
              AllocatorForMedia = FigGetAllocatorForMedia();
              if (FigAlternateSkipBitrateRangeFilterCreate(AllocatorForMedia, *(v20 + 1704), *(v20 + 1680), @"RecoveryAlternateSkipBitrateRange", 605, &cf))
              {
                goto LABEL_27;
              }

              if (FigAlternateSelectionBossAddFilter(*(v20 + 40), cf))
              {
                goto LABEL_27;
              }

              if (*(v20 + 96))
              {
                if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
                {
                  goto LABEL_27;
                }

                v36 = OUTLINED_FUNCTION_515();
                if (v37(v36))
                {
                  goto LABEL_27;
                }
              }
            }

            FigAlternateSelectionBossApplyFilters(*(v20 + 40));
            goto LABEL_27;
          }
        }
      }

      CFRelease(v32);
      goto LABEL_9;
    }

    if (v26)
    {
      CFRelease(*(v20 + 1704));
      *(v20 + 1704) = 0;
    }
  }

LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_843();
}

void fpfsi_SetupIFramePrefetch()
{
  OUTLINED_FUNCTION_193();
  LODWORD(v2) = v1;
  v4 = v3;
  v92[3] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v6 = CMBaseObjectGetDerivedStorage();
  v74 = 0;
  v75 = 0;
  v73 = 0uLL;
  v92[1] = @"FSC_MemoryCacheSizeLimit";
  v92[2] = @"FSC_AddToDonorPool";
  v89 = @"FSC_MemoryBacking";
  v90 = 0;
  v7 = *MEMORY[0x1E695E4D0];
  v91 = *MEMORY[0x1E695E4D0];
  v92[0] = @"FSC_Backing";
  v8 = *MEMORY[0x1E695E4C0];
  v70 = *MEMORY[0x1E695E4C0];
  v71 = 0;
  cf = 0;
  if (*(v0 + 321) && *(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    OUTLINED_FUNCTION_426();
    v9();
  }

  if (*(v0 + 313))
  {
    v10 = *(v0 + 114);
    if (v10)
    {
      FigBaseObject = FigBytePumpGetFigBaseObject(v10);
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v12)
      {
        v12(FigBaseObject, 0x1F0B1F098, 0);
      }
    }

    fpfsi_TearDownIFramePrefetcher();
  }

  HIDWORD(v72) = 0;
  v13 = v0[312];
  if (v13 == 0.0 && v0[311] == 0.0)
  {
    goto LABEL_85;
  }

  if (v13 <= 0.0 || v0[311] <= 0.0)
  {
    OUTLINED_FUNCTION_374();
    goto LABEL_54;
  }

  if (!*(v0 + 114))
  {
    goto LABEL_85;
  }

  v67 = v6;
  Duration = fpfsi_GetDuration(v4, &v73);
  if (Duration)
  {
LABEL_55:
    v20 = Duration;
LABEL_56:
    v41 = 0;
LABEL_57:
    v43 = 0;
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_29();
  if (!v15)
  {
    goto LABEL_53;
  }

  v16 = *(v0 + 114);
  FigGetAllocatorForMedia();
  FigBytePumpGetFigBaseObject(v16);
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_51;
  }

  v17 = OUTLINED_FUNCTION_608();
  v19 = v18(v17);
  if (v19)
  {
    v20 = v19;
    if (v19 != -12783)
    {
      goto LABEL_56;
    }
  }

  if (v70 != v8)
  {
LABEL_84:
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM();
LABEL_85:
    v41 = 0;
    v43 = 0;
    v20 = 0;
    goto LABEL_58;
  }

  v21 = *(v0 + 114);
  FigGetAllocatorForMedia();
  FigBytePumpGetFigBaseObject(v21);
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
LABEL_51:
    v41 = 0;
    v43 = 0;
    goto LABEL_52;
  }

  v22 = OUTLINED_FUNCTION_502();
  v24 = v23(v22);
  if (v24)
  {
    v20 = v24;
    if (v24 != -12783)
    {
      goto LABEL_56;
    }
  }

  if (v75)
  {
    goto LABEL_84;
  }

  v25 = *(v0 + 208);
  if (!v25 || !CFArrayGetCount(v25) || (ValueAtIndex = CFArrayGetValueAtIndex(*(v0 + 208), 0)) == 0)
  {
LABEL_53:
    OUTLINED_FUNCTION_374();
LABEL_54:
    Duration = FigSignalErrorAtGM();
    goto LABEL_55;
  }

  v27 = ValueAtIndex;
  AverageBitRate = FigAlternateGetAverageBitRate(ValueAtIndex);
  if (!AverageBitRate)
  {
    AverageBitRate = FigAlternateGetPeakBitRate(v27);
  }

  if (AverageBitRate >= 1000000)
  {
    v37 = 1000000;
  }

  else
  {
    v37 = AverageBitRate;
  }

  v38 = v37;
  OUTLINED_FUNCTION_661(AverageBitRate, v29, v30, v31, v32, v33, v34, v35, v62, v63, v64, v65, v67, v68, cf, v70, v71, v72, v36, v73);
  v39 = (CMTimeGetSeconds(&time) * v38 * 0.125 * 0.5);
  if (v39 >= 419430400)
  {
    v39 = 419430400;
  }

  HIDWORD(v72) = v39;
  v40 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v72 + 4);
  v41 = v40;
  if (!v40)
  {
    OUTLINED_FUNCTION_374();
    v20 = FigSignalErrorAtGM();
    goto LABEL_57;
  }

  v66 = v27;
  v90 = v40;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v43 = CFDictionaryCreate(AllocatorForMedia, v92, &v89, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v43)
  {
    OUTLINED_FUNCTION_374();
    goto LABEL_81;
  }

  v44 = *(v0 + 4);
  v45 = FigGetAllocatorForMedia();
  CMBaseObject = FigAssetGetCMBaseObject(v44);
  v47 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v47 || v47(CMBaseObject, @"assetProperty_ResolvedURL", v45, &v71) || !v71)
  {
    OUTLINED_FUNCTION_374();
LABEL_81:
    v49 = FigSignalErrorAtGM();
    goto LABEL_82;
  }

  v48 = FigGetAllocatorForMedia();
  v49 = FigStreamingCacheCreate(v48, v71, v43, &v75);
  if (v49)
  {
LABEL_82:
    v20 = v49;
    goto LABEL_58;
  }

  v2 = FigBytePumpGetFigBaseObject(*(v0 + 114));
  v50 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v50)
  {
LABEL_52:
    v20 = -12782;
    goto LABEL_58;
  }

  v49 = v50(v2, 0x1F0B1F0D8, v7);
  if (v49)
  {
    goto LABEL_82;
  }

  v51 = FigBytePumpGetFigBaseObject(*(v0 + 114));
  v52 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v52)
  {
    v52(v51, 0x1F0B1F0F8, v8);
  }

  v53 = v75;
  v2 = FigBytePumpGetFigBaseObject(*(v0 + 114));
  v54 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v54)
  {
    goto LABEL_52;
  }

  v49 = v54(v2, 0x1F0B1F098, v53);
  if (v49)
  {
    goto LABEL_82;
  }

  v55 = FigGetAllocatorForMedia();
  v49 = FigFramePrefetcherCreate(v55, *(v0 + 4), v75, v66, &cf);
  if (v49)
  {
    goto LABEL_82;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v49 = FigNotificationCenterAddWeakListener();
  if (v49)
  {
    goto LABEL_82;
  }

  v20 = FigFramePrefetcherActivate(cf);
  if (!v20)
  {
    *(v0 + 313) = cf;
    cf = 0;
  }

LABEL_58:
  if (!dword_1EAF169F0)
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_427();
  v56 = OUTLINED_FUNCTION_371();
  os_log_type_enabled(v56, BYTE3(v68));
  OUTLINED_FUNCTION_28();
  if (v2)
  {
    v57 = *v0;
    if (*v0)
    {
      v58 = (CMBaseObjectGetDerivedStorage() + 888);
      if (!v4)
      {
LABEL_65:
        v76 = 136316674;
        OUTLINED_FUNCTION_534();
        v77 = v57;
        v78 = 2082;
        v79 = v58;
        v80 = v59;
        v81 = v4;
        v82 = 2082;
        v83 = v60;
        v84 = v59;
        v85 = v61;
        v86 = 1024;
        v87 = v20;
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_25();
        _os_log_send_and_compose_impl();
        goto LABEL_66;
      }
    }

    else
    {
      v58 = "";
      if (!v4)
      {
        goto LABEL_65;
      }
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_65;
  }

LABEL_66:
  OUTLINED_FUNCTION_2();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_67:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  OUTLINED_FUNCTION_191();
}

void fpfs_InitiateSwitchRecovery()
{
  OUTLINED_FUNCTION_647();
  v2 = v0[128];
  if (!v2)
  {
    goto LABEL_74;
  }

  v3 = v1;
  v4 = v0;
  v35 = 0;
  key = *MEMORY[0x1E6962E00];
  v36 = &v0[2 * v1 + 122];
  v5 = v0 + 138;
  v37 = v0 + 138;
  do
  {
    if (*(v2 + 203) && *(v2 + 196) == v3)
    {
      *(v2 + 203) = 0;
      v6 = *(v2 + 112);
      if (v6 && (OUTLINED_FUNCTION_63(), v7))
      {
        FigGetAllocatorForMedia();
        CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
        v8 = OUTLINED_FUNCTION_312();
        if (CMBufferQueueCreate(v8, v9, v10, v11))
        {
          v12 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_0();
          MEMORY[0x19A8CE710]();
          if (CMBufferQueueIsEmpty(0))
          {
            v12 = 0;
          }

          else
          {
            v13 = CMBufferQueueDequeueAndRetain(0);
            if (v13)
            {
              v14 = v13;
              do
              {
                if (!fpfs_IsMarkerOnly(v14) || !CMGetAttachment(v14, key, 0))
                {
                  CMBufferQueueEnqueue(*(v6 + 40), v14);
                }

                CFRelease(v14);
                v14 = CMBufferQueueDequeueAndRetain(0);
              }

              while (v14);
            }

            v12 = 1;
          }

          FigBufferQueueRelease();
        }

        if (dword_1EAF169F0)
        {
          v15 = OUTLINED_FUNCTION_257();
          os_log_type_enabled(v15, type);
          OUTLINED_FUNCTION_425();
          if (v7)
          {
            v17 = v16;
          }

          else
          {
            v17 = v40;
          }

          if (v17)
          {
            if (*v4)
            {
              CMBaseObjectGetDerivedStorage();
            }

            if (*(v2 + 16))
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_66();
            OUTLINED_FUNCTION_27();
            _os_log_send_and_compose_impl();
            v5 = v37;
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_635();
        }
      }

      else
      {
        v12 = 1;
      }

      if (v3 < 3)
      {
        if (!*v36)
        {
          StoreCurrentManifold(v4, v3, 0, *(v2 + 64));
          v35 = *(v2 + 64);
        }
      }

      else
      {
        OUTLINED_FUNCTION_120();
        FigSignalErrorAtGM();
      }

      if (v12)
      {
        *(v2 + 198) = 0;
        v18 = *(v2 + 112);
        if (v18)
        {
          fpfs_SetFeederTrack(v18, v2);
        }

        fpfsi_RemoveAndClearTimer((v2 + 128));
        v19 = *(v2 + 64);
        v20 = *(v2 + 40);
        v21 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v21)
        {
          v21(v19, v20, &kManifoldOutputCallbacks, v2);
        }

        if (!dword_1EAF169F0)
        {
          goto LABEL_55;
        }

        v22 = OUTLINED_FUNCTION_257();
        os_log_type_enabled(v22, type);
        OUTLINED_FUNCTION_425();
        if (v7)
        {
          v24 = v23;
        }

        else
        {
          v24 = v40;
        }

        if (!v24)
        {
LABEL_54:
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_635();
LABEL_55:
          v5[v3] = *(v2 + 80);
          goto LABEL_56;
        }

        if (*v4)
        {
          CMBaseObjectGetDerivedStorage();
        }

        if (*(v2 + 16))
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_534();
        OUTLINED_FUNCTION_767();
        OUTLINED_FUNCTION_359();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_27();
      }

      else
      {
        v25 = OUTLINED_FUNCTION_765();
        v27 = fpfs_cloneTrackAndAddToTrackList(v25, v26);
        if (!v27)
        {
          goto LABEL_74;
        }

        v28 = v27;
        v29 = *(v2 + 232);
        *(v27 + 224) = *(v2 + 248);
        *(v27 + 208) = v29;
        fpfs_ChangeTrackState(v27, 4);
        if (!dword_1EAF169F0)
        {
          goto LABEL_55;
        }

        v30 = OUTLINED_FUNCTION_257();
        os_log_type_enabled(v30, type);
        OUTLINED_FUNCTION_425();
        if (v7)
        {
          v32 = v31;
        }

        else
        {
          v32 = v40;
        }

        if (!v32)
        {
          goto LABEL_54;
        }

        if (*v4)
        {
          CMBaseObjectGetDerivedStorage();
        }

        if (*(v28 + 16))
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_534();
        OUTLINED_FUNCTION_767();
        OUTLINED_FUNCTION_359();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_35();
        OUTLINED_FUNCTION_772();
      }

      _os_log_send_and_compose_impl();
      v5 = v37;
      goto LABEL_54;
    }

LABEL_56:
    v2 = *(v2 + 24);
  }

  while (v2);
  if (v35)
  {
    v33 = *(CMBaseObjectGetVTable() + 16);
    if (*v33 >= 2uLL)
    {
      v34 = v33[7];
      if (v34)
      {
        v34(v35);
      }
    }
  }

LABEL_74:
  OUTLINED_FUNCTION_646();
}

void fpfs_SeekDidFail()
{
  OUTLINED_FUNCTION_831();
  v32 = v0;
  v33 = v1;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_433();
  v31 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = v3;
  valuePtr = v5;
  v30 = 0;
  v28 = 0;
  v7 = *MEMORY[0x1E695E480];
  v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v9 = CMBaseObjectGetDerivedStorage();
  v10 = *(v9 + 2568);
  if (v10)
  {
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v11)
    {
      v11(v10, @"playerStats", 0x1F0B66718, 1);
    }
  }

  v12 = MEMORY[0x1E6960C70];
  fpfsi_setLastSeekTimeSet(v9, MEMORY[0x1E6960C70]);
  if (v8)
  {
    keys = @"SeekID";
    values = v8;
    if (v3 && (v13 = CFNumberCreate(v7, kCFNumberSInt32Type, &v25)) != 0)
    {
      v30 = @"Result";
      v28 = v13;
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v16 = CFDictionaryCreate(AllocatorForMedia, &keys, &values, v14, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v16)
    {
      v17 = v16;
      v18 = OUTLINED_FUNCTION_188();
      fpfs_EnqueueNotification(v18, v19, v20, v17);
      CFRelease(v17);
    }

    else
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM();
    }

    p_values = &values;
    do
    {
      if (*p_values)
      {
        CFRelease(*p_values);
      }

      ++p_values;
      --v14;
    }

    while (v14);
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }

  *(DerivedStorage + 1472) = *v12;
  *(DerivedStorage + 1488) = *(v12 + 16);
  v22 = OUTLINED_FUNCTION_624();
  fpfsi_setLastSeekTimeSet(v22, v23);
  *(DerivedStorage + 3184) = 0;
  *(DerivedStorage + 2216) = 0;
  *(DerivedStorage + 2240) = 0;
  v24 = *(DerivedStorage + 1576);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 1576) = 0;
  }

  OUTLINED_FUNCTION_648();
}

void fpfsi_setLastSeekTimeSet(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(a1 + 320) = *a2;
  *(a1 + 336) = v3;
  v4 = *(a1 + 2568);
  if (v4)
  {
    v5 = *(a1 + 332);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v6)
    {
      v6(v4, @"playerStats", 0x1F0B66B58, v5 & 1, 0);
    }
  }

  OUTLINED_FUNCTION_385();
  fpfsi_setPlaybackRateMonitorPendingSeekTime(a1, v7);
}

void fpfsi_RTCReportingReportStartupPerformanceMetrics()
{
  cf = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 2608))
  {
    OUTLINED_FUNCTION_523();
    if (v1)
    {
      v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v2)
      {
        v3 = v2(v1, @"playerStats", 115, 0, &cf);
        v11 = OUTLINED_FUNCTION_582(v3, v4, v5, v6, v7, v8, v9, v10, v14, cf);
        if (!v12)
        {
          v13 = *(v0 + 2608);
          *(v0 + 2608) = v11;
          if (v11)
          {
            CFRetain(v11);
          }

          if (v13)
          {
            CFRelease(v13);
          }

          fpfsi_UpdateAccessLogStartupPerformanceMetrics();
          v11 = cf;
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }
}

void fpfs_stopPlaybackForInternalReason()
{
  v2 = OUTLINED_FUNCTION_849();
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetFloat32();
  OUTLINED_FUNCTION_403();
  fpfs_EnqueueNotification(v5, v6, v7, v8);
  *(v2 + 108) = 0;
  if (!fpfs_pauseCurrentItem(v0))
  {
    if (v1)
    {
      v9 = OUTLINED_FUNCTION_265();
      NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v9, v10, v11, v12, v13, v14, v15, v16, @"CurrentRate", 0);
      FigCFDictionarySetInt32();
      fpfs_EnqueueNotification(v0, @"RateDidChange", v0, NotificationPayloadForProperties);
      if (NotificationPayloadForProperties)
      {
        CFRelease(NotificationPayloadForProperties);
      }
    }

    else
    {
      fpfs_EnqueueNotification(v0, @"RateDidChange", v0, 0);
    }
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void fpfs_haltStream(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t a13, os_log_type_t type, CFTypeRef cf, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  OUTLINED_FUNCTION_415();
  a50 = v53;
  a51 = v54;
  v56 = v55;
  a38 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    v58 = OUTLINED_FUNCTION_556();
    v52 = cf;
    os_log_type_enabled(v58, type);
    OUTLINED_FUNCTION_40();
    if (!v51)
    {
      goto LABEL_9;
    }

    v59 = *DerivedStorage;
    if (*DerivedStorage)
    {
      v60 = (CMBaseObjectGetDerivedStorage() + 888);
      if (!v56)
      {
LABEL_8:
        LODWORD(a16) = 136316418;
        *(&a16 + 4) = "fpfs_haltStream";
        WORD6(a16) = 2048;
        *(&a16 + 14) = v59;
        OUTLINED_FUNCTION_407();
        a18 = v60;
        OUTLINED_FUNCTION_165();
        WORD2(a21) = v61;
        *(&a21 + 6) = v62;
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_456();
        v52 = cf;
LABEL_9:
        OUTLINED_FUNCTION_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_10;
      }
    }

    else
    {
      v60 = "";
      if (!v56)
      {
        goto LABEL_8;
      }
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_8;
  }

LABEL_10:
  fpfsi_InvalidatePumpForItem(v56);
  fpfsi_RemoveAndClearTimer((DerivedStorage + 1608));
  v63 = MEMORY[0x1E6960C70];
  v64 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 1616) = *MEMORY[0x1E6960C70];
  v65 = *(v63 + 16);
  *(DerivedStorage + 1632) = v65;
  *(DerivedStorage + 1640) = v64;
  *(DerivedStorage + 1656) = v65;
  v66 = *(DerivedStorage + 3120);
  if (v66)
  {
    CFRelease(v66);
    *(DerivedStorage + 3120) = 0;
  }

  v67 = *(DerivedStorage + 3264);
  if (v67)
  {
    CFRelease(v67);
    *(DerivedStorage + 3264) = 0;
  }

  v68 = CMBaseObjectGetDerivedStorage();
  if (*(v68 + 40))
  {
    v69 = v68;
    v70 = *(v68 + 912);
    if (v70)
    {
      FigBytePumpGetFigBaseObject(v70);
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v71 = OUTLINED_FUNCTION_587();
        v72(v71);
      }
    }

    v73 = *(v69 + 56);
    if (v73)
    {
      CFRelease(v73);
      *(v69 + 56) = 0;
    }

    v74 = *(v69 + 80);
    if (v74)
    {
      CFRelease(v74);
      *(v69 + 80) = 0;
    }

    v75 = *(v69 + 88);
    if (v75)
    {
      CFRelease(v75);
      *(v69 + 88) = 0;
    }

    v76 = *(v69 + 64);
    if (v76)
    {
      CFRelease(v76);
      *(v69 + 64) = 0;
    }

    v77 = *(v69 + 72);
    if (v77)
    {
      CFRelease(v77);
      *(v69 + 72) = 0;
    }

    v78 = *(v69 + 104);
    if (v78)
    {
      CFRelease(v78);
      *(v69 + 104) = 0;
    }

    v79 = *(v69 + 112);
    if (v79)
    {
      CFRelease(v79);
      *(v69 + 112) = 0;
    }

    v80 = *(v69 + 120);
    if (v80)
    {
      CFRelease(v80);
      *(v69 + 120) = 0;
    }

    fpfsi_StopGearSwitchReleaseAndCleanPlaybackMonitor(v69);
    if (*(v69 + 128))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_289();
      FigNotificationCenterRemoveWeakListener();
      v81 = *(v69 + 128);
      if (v81)
      {
        CFRelease(v81);
        *(v69 + 128) = 0;
      }
    }

    v82 = *(v69 + 40);
    if (v82)
    {
      CFRelease(v82);
      *(v69 + 40) = 0;
    }

    *(v69 + 48) = 0;
  }

  fpfsi_cleanupNetworkCostMonitor();
  v83 = CMBaseObjectGetDerivedStorage();
  if (*(v83 + 760))
  {
    v84 = v83;
    if (!dword_1EAF169F0)
    {
      goto LABEL_50;
    }

    v85 = OUTLINED_FUNCTION_556();
    v51 = type;
    os_log_type_enabled(v85, type);
    OUTLINED_FUNCTION_46();
    if (!v52)
    {
LABEL_49:
      OUTLINED_FUNCTION_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_50:
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_274();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_273();
      FigNotificationCenterRemoveWeakListener();
      v90 = v84[95];
      if (v90)
      {
        CFRelease(v90);
        v84[95] = 0;
      }

      goto LABEL_52;
    }

    v86 = *v84;
    if (*v84)
    {
      v87 = (CMBaseObjectGetDerivedStorage() + 888);
      if (!v56)
      {
LABEL_48:
        LODWORD(a16) = 136316418;
        OUTLINED_FUNCTION_114();
        *(&a16 + 14) = v86;
        OUTLINED_FUNCTION_407();
        a18 = v87;
        OUTLINED_FUNCTION_165();
        WORD2(a21) = v88;
        *(&a21 + 6) = v89;
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_448();
        goto LABEL_49;
      }
    }

    else
    {
      v87 = "";
      if (!v56)
      {
        goto LABEL_48;
      }
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_48;
  }

LABEL_52:
  if (!*(DerivedStorage + 25))
  {
    goto LABEL_66;
  }

  v91 = *(DerivedStorage + 1928);
  if (!v91)
  {
    goto LABEL_66;
  }

  cf = 0;
  if (FigPlaybackItemLogCreateW3CLogData(v91, &cf))
  {
    goto LABEL_66;
  }

  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_40();
    if (!v51)
    {
      goto LABEL_63;
    }

    v93 = *DerivedStorage;
    if (*DerivedStorage)
    {
      v94 = (CMBaseObjectGetDerivedStorage() + 888);
      if (!v56)
      {
LABEL_62:
        LODWORD(a16) = 136316418;
        *(&a16 + 4) = "fpfs_haltStream";
        WORD6(a16) = 2048;
        *(&a16 + 14) = v93;
        OUTLINED_FUNCTION_407();
        a18 = v94;
        OUTLINED_FUNCTION_165();
        WORD2(a21) = 2114;
        *(&a21 + 6) = v95;
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_456();
LABEL_63:
        OUTLINED_FUNCTION_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_64;
      }
    }

    else
    {
      v94 = "";
      if (!v56)
      {
        goto LABEL_62;
      }
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_62;
  }

LABEL_64:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_66:
  if (*(DerivedStorage + 2897))
  {
    FigAssetDownloadCoordinatorUnmarkAssetForInteractivity(*(DerivedStorage + 32));
    *(DerivedStorage + 2897) = 0;
  }

  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_264();
  FigNotificationCenterRemoveWeakListener();
  v96 = *(DerivedStorage + 2560);
  if (v96)
  {
    CFRelease(v96);
    *(DerivedStorage + 2560) = 0;
  }

  OUTLINED_FUNCTION_355();
}

void fpfsi_ResetPlaybackItem()
{
  v3 = OUTLINED_FUNCTION_849();
  OUTLINED_FUNCTION_172(v3);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v57 = *MEMORY[0x1E6960C70];
  v61 = *MEMORY[0x1E6960C70];
  v56 = *(MEMORY[0x1E6960C70] + 16);
  v62 = v56;
  if (!*(v0 + 24))
  {
    v54 = DerivedStorage;
    v55 = v1;
    fpfs_tearDownManifoldsAndStream(v1);
    for (i = 0; i != 3; ++i)
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = v7;
        StoreCurrentManifold(v0, i, v6, 0);
        v9 = 3 * v6;
        *(v0 + 472 + v9 + i) = 0;
        *(v0 + 1104 + 8 * v9 + 8 * i) = 0;
        v10 = v0 + 176 + 8 * v9;
        v11 = *(v10 + 8 * i);
        if (v11)
        {
          CFRelease(v11);
          *(v10 + 8 * i) = 0;
        }

        v7 = 0;
        *(v0 + 512 + v9 + i) = 0;
        v6 = 1;
      }

      while ((v8 & 1) != 0);
      v12 = v0 + 248 + 24 * i;
      *v12 = v57;
      *(v12 + 16) = v56;
    }

    fpfsi_RemoveAndClearTimer((v0 + 1608));
    *(v0 + 1616) = v57;
    *(v0 + 1632) = v56;
    *(v0 + 1640) = v57;
    *(v0 + 1656) = v56;
    fpfsi_RemoveAndClearTimer((v0 + 2320));
    fpfsi_RemoveAndClearTimer((v0 + 2352));
    fpfsi_RemoveAndClearTimer((v0 + 2360));
    fpfsi_RemoveAndClearTimer((v0 + 3456));
    fpfsi_EmancipateItemFromMultichannelInhibitionsAndApplyFilters();
    *(v0 + 224) = v57;
    *(v0 + 240) = v56;
    fpfsi_setLastSeekTimeSet(v0, MEMORY[0x1E6960C70]);
    *(v0 + 408) = v57;
    *(v0 + 424) = v56;
    *(v0 + 460) = 0;
    *(v0 + 462) = 0;
    *(v0 + 464) = 0;
    *(v0 + 469) = 0;
    v13 = CMBaseObjectGetDerivedStorage();
    if (*(v13 + 471))
    {
      *(v13 + 471) = 0;
    }

    *(v0 + 480) = v57;
    *(v0 + 496) = v56;
    *(v0 + 524) = 0;
    fpfs_EnqueuePlaythroughPredictionNotification(v55);
    v14 = OUTLINED_FUNCTION_198();
    fpfsi_setPlaybackMonitorOkayToAttemptSwitchUp(v14, v15);
    fpfsi_removeLayerSync();
    CMBaseObjectGetDerivedStorage();
    v16 = OUTLINED_FUNCTION_267();
    fpfs_ClearAllCachedRenderChains(v16);
    *(v0 + 1044) = 0;
    fpfs_cleanupAllImageQueues(v55, v2);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v17 = *(v0 + 752);
    if (v17)
    {
      CFRelease(v17);
      *(v0 + 752) = 0;
    }

    v18 = MEMORY[0x1E6960C70];
    v19 = OUTLINED_FUNCTION_491();
    fpfsi_setItemRateTimebaseAndAnchor(v21, v19, v20, v18, v18);
    v22 = *(v0 + 1024);
    if (v22)
    {
      while (1)
      {
        v23 = *(v22 + 24);
        if (!v23)
        {
          break;
        }

        v24 = *(v23 + 32);
        fpfs_DeleteTrack(v55, v22);
        v22 = v23;
        if ((v24 & 0x8000000000000000) == 0)
        {
          if (!*(v0 + 1024))
          {
            goto LABEL_23;
          }

          v22 = *(v0 + 1024);
          while (*(v22 + 32) != v24)
          {
            v22 = *(v22 + 24);
            if (!v22)
            {
              v22 = *(v0 + 1024);
              break;
            }
          }
        }

        if (!*(v0 + 1024))
        {
          goto LABEL_23;
        }
      }

      fpfs_DeleteTrack(v55, v22);
    }

LABEL_23:
    v25 = *(v0 + 1040);
    if (v25)
    {
      do
      {
        v26 = *(v25 + 24);
        fpfs_DeleteTrack(v55, v25);
        if (!v26)
        {
          break;
        }

        v25 = v26;
      }

      while (*(v0 + 1040));
    }

    fpfs_FreeDeadTracks(v0);
    if (fpfs_getNext(v54, 0) == v55)
    {
      fpfs_enqueuePrerollWasCancelledNotificationIfNeeded(v55);
    }

    v27 = OUTLINED_FUNCTION_198();
    fpfs_GetNextTimeToPlay(v27, v28, v29);
    fpfs_EstablishTimebase(v55);
    *(v0 + 592) = 256;
    *(v0 + 1080) = 1;
    *(v0 + 1072) = 1;
    *(v0 + 1088) = 0;
    *(v0 + 1152) = 0;
    *(v0 + 795) = 0;
    v30 = OUTLINED_FUNCTION_112((v0 + 1160));
    *(v0 + 1176) = v31;
    v32 = *(v0 + 96);
    v59 = v30;
    v60 = v31;
    FigAlternatePlaybackBitrateMonitorSetPumpOffset(v32, &v59);
    v33 = *&v18->value;
    *(v0 + 1256) = *&v18->value;
    epoch = v18->epoch;
    *(v0 + 1272) = epoch;
    *(v0 + 1280) = v33;
    *(v0 + 1296) = epoch;
    *(v0 + 1304) = v33;
    *(v0 + 1320) = epoch;
    *(v0 + 1472) = v61;
    *(v0 + 1488) = v62;
    *(v0 + 1512) = epoch;
    *(v0 + 1496) = v33;
    *(v0 + 2344) = epoch;
    *(v0 + 2328) = v33;
    *(v0 + 2904) = 0;
    *(v0 + 2472) = 0;
    *(v0 + 3300) = v33;
    *(v0 + 3316) = epoch;
    *(v0 + 3328) = 0u;
    *(v0 + 3344) = v33;
    *(v0 + 3360) = epoch;
    *(v0 + 1528) = 0x4024000000000000;
    v58 = v33;
    *(v0 + 1544) = v33;
    *(v0 + 1560) = epoch;
    v35 = *(v0 + 1568);
    if (v35)
    {
      CFRelease(v35);
      *(v0 + 1568) = 0;
    }

    v36 = *(v0 + 1576);
    if (v36)
    {
      CFRelease(v36);
      *(v0 + 1576) = 0;
    }

    v37 = *(v0 + 1584);
    if (v37)
    {
      CFRelease(v37);
      *(v0 + 1584) = 0;
    }

    v38 = *(v0 + 1736);
    if (v38)
    {
      CFRelease(v38);
      *(v0 + 1736) = 0;
    }

    v39 = *(v0 + 1744);
    if (v39)
    {
      CFRelease(v39);
      *(v0 + 1744) = 0;
    }

    v40 = *(v0 + 1592);
    if (v40)
    {
      do
      {
        v41 = *v40;
        fpfsi_RemoveDateEntry(v0, v40);
        v40 = v41;
      }

      while (v41);
    }

    v42 = *(v0 + 1680);
    if (v42)
    {
      CFRelease(v42);
      *(v0 + 1680) = 0;
    }

    v43 = *(v0 + 1704);
    if (v43)
    {
      CFRelease(v43);
      *(v0 + 1704) = 0;
    }

    v44 = *(v0 + 1688);
    if (v44)
    {
      CFRelease(v44);
      *(v0 + 1688) = 0;
    }

    v45 = *(v0 + 1720);
    if (v45)
    {
      CFRelease(v45);
      *(v0 + 1720) = 0;
    }

    fpfsi_TearDownIFramePrefetcher();
    v46 = *(v0 + 728);
    if (v46)
    {
      CFRelease(v46);
      *(v0 + 728) = 0;
    }

    v47 = *(v0 + 2872);
    if (v47)
    {
      CFRelease(v47);
      *(v0 + 2872) = 0;
    }

    if (*(v0 + 736))
    {
      CMBaseObject = FigImageQueueGaugeGetCMBaseObject();
      if (CMBaseObject)
      {
        v49 = CMBaseObject;
        v50 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v50)
        {
          v50(v49);
        }
      }

      v51 = *(v0 + 736);
      if (v51)
      {
        CFRelease(v51);
        *(v0 + 736) = 0;
      }
    }

    *(v0 + 1896) = 0;
    *(v0 + 1936) = 0;
    v52 = *(v0 + 2248);
    if (v52)
    {
      CFRelease(v52);
      *(v0 + 2248) = 0;
    }

    *(v0 + 2368) = 0;
    *(v0 + 3000) = 0;
    *(v0 + 3081) = 0;
    *(v0 + 608) = v58;
    *(v0 + 624) = epoch;
    *(v0 + 530) = 0;
    v53 = *(v0 + 3424);
    if (v53)
    {
      CFRelease(v53);
      *(v0 + 3424) = 0;
    }
  }
}

uint64_t fpfs_ensureTransaction(uint64_t a1, uint64_t *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = result;
    if (!*(result + 880))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      result = FigDeferredTransactionCreate(AllocatorForMedia, a2);
      *(v4 + 880) = *a2;
    }
  }

  return result;
}

void fpfs_sendEmptyConfigurationToEachVideoTarget()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigStreamingPlayerCombinedVideoDestinationGetFVTCount(*(DerivedStorage + 376)))
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_266();
    OUTLINED_FUNCTION_496();
    fpfs_createDataChannelConfigurationAndSetIdentifiers();
    if (!v1)
    {
      OUTLINED_FUNCTION_107(MEMORY[0x1E6960C70]);
      OUTLINED_FUNCTION_496();
      FigStreamingPlayerCombinedVideoDestinationSendFVTConfigAtHostTime(v2, v3, v4, v5, v6, v7);
    }
  }
}

void fpfsi_RTCReportingReportIRATEventIfNeeded(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  v20 = v19;
  OUTLINED_FUNCTION_172(v21);
  CMBaseObjectGetDerivedStorage();
  if (*(v18 + 912))
  {
    v22 = *(v18 + 2592);
    if (v20 == 800)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v20 == 800)
    {
      if (v22)
      {
        if (v22 == 1)
        {
          goto LABEL_17;
        }
      }

      else
      {
        FigGetAllocatorForMedia();
        v24 = OUTLINED_FUNCTION_179();
        FigBytePumpGetFigBaseObject(v24);
        if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          goto LABEL_17;
        }

        v25 = OUTLINED_FUNCTION_188();
        if (v26(v25))
        {
          goto LABEL_17;
        }
      }
    }

    else if ((v22 & 0xFFFFFFFD) == 0)
    {
      goto LABEL_17;
    }

    if (*(v18 + 2568))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 8))
      {
        OUTLINED_FUNCTION_305();
        if (!v27())
        {
          *(v18 + 2592) = v23;
        }
      }
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_652();
}

void fpfs_deferredSeekableTimeRangeChanged()
{
  OUTLINED_FUNCTION_647();
  v110 = v1;
  v111 = v2;
  v4 = v3;
  v97 = *MEMORY[0x1E69E9840];
  v5 = OUTLINED_FUNCTION_412();
  fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(v5, v6, v7, v8, v9, v10, v11, v12, v65, v66, 0, 0, 0, rhs.value, rhs.timescale, SBYTE2(rhs.timescale), HIBYTE(rhs.timescale), rhs.flags, rhs.epoch, SHIDWORD(rhs.epoch), v72, v73, lhs.value, *&lhs.timescale, lhs.epoch, v75, v76, *&v77[6], *&v77[14], v78, time.value, *&time.timescale, time.epoch, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
  if (v13)
  {
    v47 = 0;
    goto LABEL_29;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 912))
  {
    v16 = v15;
    memset(&time, 0, sizeof(time));
    if (!fpfsi_GetDuration(cf, &time.value))
    {
      OUTLINED_FUNCTION_529();
      if (v17)
      {
        v18 = CMBaseObjectGetDerivedStorage();
        if (*(v18 + 840) > 0.0)
        {
          v19 = v18;
          fpfsi_GetPumpMaxTimeAvailable(&time);
          v93 = time.value;
          flags = time.flags;
          LODWORD(v94) = time.timescale;
          epoch = time.epoch;
          v21 = OUTLINED_FUNCTION_490();
          fpfs_GetNextTimeToPlay(v21, v22, v23);
          v95 = time.value;
          v24 = time.flags;
          LODWORD(v96) = time.timescale;
          if ((flags & 0x1D) == 1)
          {
            v25 = time.epoch;
            lhs.value = v93;
            lhs.timescale = v94;
            lhs.flags = flags;
            lhs.epoch = epoch;
            rhs = *(v19 + 1160);
            CMTimeSubtract(&time, &lhs, &rhs);
            LODWORD(v94) = time.timescale;
            v93 = time.value;
            lhs = time;
            rhs.value = v95;
            rhs.timescale = v96;
            rhs.flags = v24;
            rhs.epoch = v25;
            CMTimeSubtract(&time, &lhs, &rhs);
            Seconds = CMTimeGetSeconds(&time);
            v27 = *(v19 + 2568);
            if (v27)
            {
              v28 = Seconds;
              v29 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (v29)
              {
                v29(v27, @"playerStats", 0x1F0B43A58, (v28 * 1000.0));
              }
            }
          }
        }
      }
    }

    FigBytePumpGetFigBaseObject(*(DerivedStorage + 912));
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48) || (v30 = OUTLINED_FUNCTION_731(), v31(v30)))
    {
      v34 = 0;
LABEL_21:
      FigGetAllocatorForMedia();
      v35 = OUTLINED_FUNCTION_267();
      FigBytePumpGetFigBaseObject(v35);
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v36 = OUTLINED_FUNCTION_148();
        v37(v36);
      }

      if (fpfs_EnsureScanningBoundaryTimer(cf) == -12863)
      {
        fpfs_HandleScanningBoundaryTimerEnd(cf);
      }

      goto LABEL_25;
    }

    CMTimeMakeFromDictionary(&time, dictionaryRepresentation);
    *(DerivedStorage + 1328) = time;
    if (*(DerivedStorage + 1340))
    {
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_401();
    if (v17 || (v32 = *(DerivedStorage + 1024)) == 0 || !fpfs_StopPlaybackByStalledTrack(v32, 4))
    {
      if (dword_1EAF169F0)
      {
        LODWORD(rhs.value) = 0;
        LOBYTE(v95) = 0;
        OUTLINED_FUNCTION_432();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v95);
        OUTLINED_FUNCTION_37();
        if (flags)
        {
          if (v70)
          {
            v54 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v54 = "";
          }

          if (cf)
          {
            v55 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v55 = "";
          }

          LODWORD(lhs.value) = 136316162;
          *(&lhs.value + 4) = "fpfs_deferredSeekableTimeRangeChanged";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = v70;
          HIWORD(lhs.epoch) = 2082;
          v75 = v54;
          v76 = 2048;
          *v77 = cf;
          *&v77[8] = 2082;
          *&v77[10] = v55;
          OUTLINED_FUNCTION_146();
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_200();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_449();
      }

      OUTLINED_FUNCTION_677();
      fpfs_PrepareForSeek();
      v56 = *(DerivedStorage + 1592);
      if (v56)
      {
        do
        {
          v57 = *v56;
          fpfsi_RemoveDateEntry(DerivedStorage, v56);
          v56 = v57;
        }

        while (v57);
      }

      if (*(v16 + 32))
      {
        v34 = *(v16 + 108) != 0.0;
LABEL_55:
        v58 = *(DerivedStorage + 1592);
        if (v58)
        {
          v59 = 0;
          v60 = *(DerivedStorage + 1592);
          do
          {
            if (*(v60 + 84))
            {
              v59 = v60;
            }

            v60 = *v60;
          }

          while (v60);
          if (*v58)
          {
            while (1)
            {
              v61 = *(DerivedStorage + 1592);
              if (!v61)
              {
                break;
              }

              if (v61 == v59)
              {
                break;
              }

              v62 = *v61;
              if (!*v61)
              {
                break;
              }

              time = *(DerivedStorage + 1328);
              lhs = v62[1];
              if (CMTimeCompare(&time, &lhs) < 0)
              {
                break;
              }

              v63 = OUTLINED_FUNCTION_618();
              fpfsi_RemoveDateEntry(v63, v64);
            }
          }
        }

        goto LABEL_21;
      }

LABEL_53:
      v34 = 0;
      goto LABEL_55;
    }
  }

  v34 = 0;
LABEL_25:
  v38 = OUTLINED_FUNCTION_184();
  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v38, v39, v40, v41, v42, v43, v44, v45, @"SeekableTimeIntervals", 0);
  v47 = NotificationPayloadForProperties;
  if (value)
  {
    CFDictionarySetValue(NotificationPayloadForProperties, @"updateDate", value);
  }

  v48 = OUTLINED_FUNCTION_188();
  fpfs_EnqueueNotification(v48, v49, v50, v47);
  fpfs_UnlockAndPostNotificationsWithCaller(v70);
  if (v34)
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_133();
    fpfs_FlowControlPump(v51, v52, v53, 255);
  }

LABEL_29:
  if (value)
  {
    CFRelease(value);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  OUTLINED_FUNCTION_646();
}

void fpfs_deferredSuggestedAlternateNote()
{
  OUTLINED_FUNCTION_460();
  v94 = v0;
  v95 = v2;
  v4 = v3;
  v82 = *MEMORY[0x1E69E9840];
  v56 = 0;
  v57 = 0;
  if (!v1)
  {
    goto LABEL_58;
  }

  v5 = v1;
  Value = CFDictionaryGetValue(v1, @"FBP_AlternateValue");
  if (!Value)
  {
    goto LABEL_58;
  }

  v12 = Value;
  fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(v4, &v56, &v57, v7, v8, v9, v10, v11, v46, v47, v48, v49, theDict, v54, 0, 0, OS_LOG_TYPE_DEFAULT, 0, 0, 0, 0, 0, v56, v57, v58, *&v59[4], *&v59[12], v61, v62, *&v63[6], *&v63[14], v64, v65, v66, cf.value, *&cf.timescale, cf.epoch, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  v13 = v57;
  if (!v14)
  {
    theDicta = v5;
    v53 = v4;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v16 = v56;
    v17 = CMBaseObjectGetDerivedStorage();
    if (!*(DerivedStorage + 912) || (v18 = v17, (v19 = *(DerivedStorage + 96)) == 0) || !FigAlternatePlaybackBitrateMonitorIsAlternateStillValid(v19, v12) || FigCFEqual() || !*(v18 + 458))
    {
LABEL_53:
      fpfs_UnlockAndPostNotificationsWithCaller(v16);
      v4 = v53;
      goto LABEL_54;
    }

    v20 = CMBaseObjectGetDerivedStorage();
    v21 = CMBaseObjectGetDerivedStorage();
    v22 = *(v20 + 912);
    CMBaseObjectGetDerivedStorage();
    if (!v13 || !v22)
    {
      OUTLINED_FUNCTION_723();
      if (FigSignalErrorAtGM())
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v23 = CMBaseObjectGetDerivedStorage();
    cf.value = 0;
    v58 = 0;
    if (CFEqual(@"FBP_MaximumRecommendedCellularBitrate", @"FBP_InitialBandwidthTargetForNetwork") || CFEqual(@"FBP_MaximumRecommendedCellularBitrate", @"FBP_MaximumRecommendedCellularBitrate"))
    {
      v24 = *(v23 + 912);
      AllocatorForMedia = FigGetAllocatorForMedia();
      FigBaseObject = FigBytePumpGetFigBaseObject(v24);
      v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v27)
      {
        goto LABEL_21;
      }

      v28 = v27(FigBaseObject, 0x1F0B1EE18, AllocatorForMedia, &cf);
      if (v28 != -12783)
      {
        if (v28)
        {
          goto LABEL_21;
        }
      }

      if (!cf.value)
      {
LABEL_34:
        v33 = *(v20 + 2408);
        if (v33 > 0)
        {
          goto LABEL_36;
        }

LABEL_35:
        v33 = 0;
        goto LABEL_36;
      }

      v29 = CFGetTypeID(cf.value);
      if (v29 == CFDictionaryGetTypeID())
      {
        if (FigCFDictionaryGetInt32IfPresent() && FigCFDictionaryGetBooleanIfPresent())
        {
          v30 = v58;
          goto LABEL_23;
        }
      }

      else
      {
LABEL_21:
        OUTLINED_FUNCTION_723();
        FigSignalErrorAtGM();
      }
    }

    v30 = 0;
LABEL_23:
    if (cf.value)
    {
      CFRelease(cf.value);
    }

    if (*(v21 + 832) && v30 > 0)
    {
      v31 = *(v20 + 2408);
      if (v31 >= v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = *(v20 + 2408);
      }

      if (v31 <= 0)
      {
        v33 = v30;
      }

      else
      {
        v33 = v32;
      }

LABEL_36:
      PeakBitRate = FigAlternateGetPeakBitRate(v12);
      if (!v33 || PeakBitRate < v33)
      {
        v35 = OUTLINED_FUNCTION_490();
        fpfs_GetNextTimeToPlay(v35, v36, v37);
        FigAlternateGetPeakBitRate(*(DerivedStorage + 1680));
        if (dword_1EAF169F0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_425();
          if (v40)
          {
            v41 = v39;
          }

          else
          {
            v41 = 0;
          }

          if (v41)
          {
            if (v16)
            {
              v42 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v42 = "";
            }

            v50 = v42;
            if (v13)
            {
              v43 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v43 = "";
            }

            cf = v55;
            CMTimeGetSeconds(&cf);
            cf = *(DerivedStorage + 1160);
            CMTimeGetSeconds(&cf);
            v58 = 136316674;
            *v59 = "fpfs_deferredSuggestedAlternateNote";
            *&v59[8] = 2048;
            *&v59[10] = v16;
            v60 = 2082;
            v61 = v50;
            v62 = 2048;
            *v63 = v13;
            *&v63[8] = 2082;
            *&v63[10] = v43;
            OUTLINED_FUNCTION_375();
            OUTLINED_FUNCTION_62();
            OUTLINED_FUNCTION_35();
            OUTLINED_FUNCTION_307();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_635();
        }

        CFDictionaryGetValue(theDicta, @"FBP_CacheContext");
        OUTLINED_FUNCTION_389(MEMORY[0x1E6960C70]);
        cf.epoch = v44;
        v45 = OUTLINED_FUNCTION_293();
        fpfs_SetAlternateWithContext(v45);
      }

      goto LABEL_53;
    }

    goto LABEL_34;
  }

LABEL_54:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v56)
  {
    CFRelease(v56);
  }

LABEL_58:
  if (v4)
  {
    CFRelease(v4);
  }

  OUTLINED_FUNCTION_459();
}

uint64_t fpfs_EnsureScanningBoundaryTimer(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E6960C70];
  v6 = *MEMORY[0x1E6960C70];
  v62 = *(MEMORY[0x1E6960C70] + 8);
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v59 = *MEMORY[0x1E6960C70];
  v60 = v7;
  v61 = v6;
  v8 = 0;
  if (fpfsi_GetDuration(a1, &v59))
  {
    return v8;
  }

  OUTLINED_FUNCTION_529();
  if (!v9)
  {
    return v8;
  }

  v10 = *(v5 + 12);
  v11 = *(v4 + 108);
  if (v11 > 1.0 || v11 < 0.0)
  {
    memset(&v58, 0, sizeof(v58));
    CMTimeMake(&v58, 2, 1);
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    fpfsi_getSeekableTimeRange(&v55);
    v53 = 0uLL;
    v54 = 0;
    fpfs_GetTime(v1, &v53);
    v51 = 0uLL;
    v52 = 0;
    *&time2.timescale = v55.n128_u64[1];
    time2.epoch = v56;
    v22 = OUTLINED_FUNCTION_281(v14, v15, v16, v17, v18, v19, v20, v21, v39, v41, v43, v45, *(&v56 + 1), v57, *(&v57 + 1), v48, v55.n128_i8[0]);
    v25 = CMTimeAdd(v24, v22, v23);
    v33 = *(v4 + 108);
    if (v33 > 1.0)
    {
      v47 = v52;
      v34 = OUTLINED_FUNCTION_137(v25, v26, v27, v28, v29, v30, v31, v32, v58.value, *&v58.timescale, v58.epoch, v46, v51);
      CMTimeSubtract(v36, v34, v35);
      OUTLINED_FUNCTION_269();
      if (CMTimeCompare(v37, &time2) < 0)
      {
        v38 = &v51;
        goto LABEL_23;
      }

      v33 = *(v4 + 108);
    }

    if (v33 >= 0.0 || (*&time2.timescale = v53.n128_u64[1], time2.epoch = v54, OUTLINED_FUNCTION_268(v56, v40, v42, v44, v46, v55.n128_i64[0], v55.n128_i64[1], v47, v49, v53.n128_i64[0]) < 1))
    {
      v8 = 4294954433;
      goto LABEL_7;
    }

    v38 = &v55;
LABEL_23:
    v8 = 0;
    v61 = v38->n128_u64[0];
    v10 = v38->n128_u32[3];
    v62 = v38->n128_u32[2];
    v7 = v38[1].n128_u64[0];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v12 = *(v1 + 2320);
  if (v10)
  {
    if (!v12)
    {
      v8 = OUTLINED_FUNCTION_815(0, *(v1 + 600), *(v1 + 16));
      if (v8)
      {
        return v8;
      }

      v12 = *(v1 + 2320);
    }

    v55.n128_u64[0] = v61;
    v55.n128_u64[1] = __PAIR64__(v10, v62);
    *&v56 = v7;
    FigSpeedRampTimerScheduleForL2Time(v12, &v55, 0);
    return v8;
  }

  if (v12)
  {
    fpfsi_RemoveAndClearTimer((v1 + 2320));
  }

  return v8;
}

const __CFDictionary *fpfs_GetOptionsDictionaryForSelectedMediaType(uint64_t a1)
{
  CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
  MediaTypeInMediaArray = fpfs_FindMediaTypeInMediaArray(*(a1 + 1768), CFStringForOSTypeValue, 0);
  if (!MediaTypeInMediaArray)
  {
    return 0;
  }

  CFDictionaryGetValue(MediaTypeInMediaArray, @"MediaSelectionOptionsPersistentID");
  v4 = fpfs_FindMediaTypeInMediaArray(*(a1 + 1672), CFStringForOSTypeValue, 0);
  if (!v4)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v4, @"MediaSelectionGroupOptions");
  if (!Value)
  {
    return 0;
  }

  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 0;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    v9 = OUTLINED_FUNCTION_797();
    ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
    CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
    if (FigCFEqual())
    {
      break;
    }

    if (v7 == ++v8)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

uint64_t fpfsi_TimeInTotalTimeRangeInBuffer()
{
  OUTLINED_FUNCTION_369();
  v35 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_258(DerivedStorage);
  v2 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_690();
  fpfsi_TotalTimeRangeInBuffer();
  value = range.start.value;
  timescale = range.start.timescale;
  if ((range.start.flags & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if ((range.duration.flags & 1) != 0 && !range.duration.epoch && (range.duration.value & 0x8000000000000000) == 0)
  {
    range.start.value = value;
    OUTLINED_FUNCTION_775();
    OUTLINED_FUNCTION_656();
    result = CMTimeRangeContainsTime(&range, &time);
    if (result)
    {
      v4 = *(v0 + 1024);
      if (v4)
      {
        while (!*(v4 + 472))
        {
          v4 = *(v4 + 24);
          if (!v4)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        v5 = *(v0 + 1040);
        if (!v5)
        {
          goto LABEL_18;
        }

        while (!*(v5 + 472))
        {
          v5 = *(v5 + 24);
          if (!v5)
          {
            goto LABEL_18;
          }
        }
      }

      OUTLINED_FUNCTION_73();
      v6 = CMBaseObjectGetDerivedStorage();
      LOBYTE(time.value) = 0;
      LOBYTE(time2.value) = 0;
      if ((fpfsi_TimeInTrackListNonSparseCachedSamples((v6 + 1024), &v29, &time) & 1) == 0)
      {
        range.start = v29;
        if (!fpfsi_TimeInTrackListNonSparseCachedSamples((v6 + 1040), &range.start, &time2))
        {
          OUTLINED_FUNCTION_596();
          if (v7)
          {
            return 0;
          }
        }
      }

LABEL_18:
      fpfs_GetTime(v0, &range);
      OUTLINED_FUNCTION_656();
      if (!fpfs_TimeIsAfter(v2, &time, &range.start))
      {
        return 1;
      }

      OUTLINED_FUNCTION_89();
      v8 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (!v8)
      {
        return 1;
      }

      while (1)
      {
        if (*(v8 + 168) == 1 && !*(v8 + 200))
        {
          OUTLINED_FUNCTION_335();
          MinPresentationTimeStamp = CMBufferQueueGetMinPresentationTimeStamp(&range.start, *(v8 + 88));
          OUTLINED_FUNCTION_803(MinPresentationTimeStamp, v10, v11, v12, v13, v14, v15, v16, v17, v27);
          time2 = range.start;
          v18 = CMTimeCompare(&time, &time2);
          if ((v18 & 0x80000000) != 0)
          {
            break;
          }

          OUTLINED_FUNCTION_803(v18, v19, v20, v21, v22, v23, v24, v25, v26, v28);
          time2 = *(v8 + 232);
          if (CMTimeCompare(&time, &time2) > 0)
          {
            break;
          }
        }

        v8 = *(v8 + 24);
        if (!v8)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

BOOL fpfsi_atOrAfterTimeToPausePlayback(uint64_t a1)
{
  OUTLINED_FUNCTION_173(a1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_167(MEMORY[0x1E6960C70]);
  if ((*(v1 + 1436) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_260(v2);
  if (v3 != v4)
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_799();
    v13 = OUTLINED_FUNCTION_137(v5, v6, v7, v8, v9, v10, v11, v12, v39, v41, v43, v45, v47);
    v27 = CMTimeSubtract(v15, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_799();
    v24 = OUTLINED_FUNCTION_137(v16, v17, v18, v19, v20, v21, v22, v23, v39, v41, v43, v45, v47);
    v27 = CMTimeAdd(v26, v24, v25);
  }

  OUTLINED_FUNCTION_80(v27, v28, v29, v30, v31, v32, v33, v34, v40, v42, v44, v46, v48, v49, v50, v51, v52);
  v35 = OUTLINED_FUNCTION_275();
  return fpfs_TimeIsAtOrAfter(v35, v36, v37);
}

void fpfsi_TryToSeekWithinBuffer()
{
  OUTLINED_FUNCTION_193();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_565();
  v144 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *DerivedStorage;
  v9 = CMBaseObjectGetDerivedStorage();
  v135 = 0uLL;
  epoch = 0;
  fpfs_GetTime(DerivedStorage, &v135);
  OUTLINED_FUNCTION_52();
  if (fpfsi_TimeInTotalTimeRangeInBuffer())
  {
    if ((OUTLINED_FUNCTION_340(), OUTLINED_FUNCTION_301(), !fpfs_LastRenderingTrackofType(v10, v11, 0)) || (OUTLINED_FUNCTION_588(), v13 ^ v14 | v65) && v12 >= 0.0 || fpfs_getNext(v9, 0) != v0)
    {
      type = *v2;
      v124 = *(v2 + 16);
      v128 = *v2;
      v131 = v124;
      v15 = CMBaseObjectGetDerivedStorage();
      if (*(v15 + 840) >= 0.0)
      {
        v23 = (v15 + 1024);
        v24 = (v15 + 1040);
        v25 = 1;
        do
        {
          v26 = *v24;
          if (*v24)
          {
            while (1)
            {
              if (!*(v26 + 200) && (*(v26 + 244) & 1) != 0 && (*(v26 + 268) & 1) != 0)
              {
                time = *(v26 + 232);
                v15 = OUTLINED_FUNCTION_419(v124, p_time2, v88, v92, v96, v101, v105, v109, v114, type, *(&type + 1), v124, v126, v128, *(&v128 + 1), v131, v133, v135.n128_i64[0], v135.n128_i64[1], epoch, v137, type, *(&type + 1), time2.epoch, v139, *v140, *&v140[8], *&v140[16], *&v140[24], v141, v142, time.value);
                if ((v15 & 0x80000000) != 0)
                {
                  OUTLINED_FUNCTION_762(v15, v16, v17, v18, v19, v20, v21, v22, p_time2, v88, v92, v96, v101, v105, v109, v114, type);
                  v15 = OUTLINED_FUNCTION_419(*(v26 + 272), v85, v89, v93, v97, v102, v106, v110, v115, typeb, type_8a, v124, v126, v128, *(&v128 + 1), v131, v133, v135.n128_i64[0], v135.n128_i64[1], epoch, v137, *(v26 + 256), *(v26 + 264), time2.epoch, v139, *v140, *&v140[8], *&v140[16], *&v140[24], v141, v142, time.value);
                  if ((v15 & 0x80000000) != 0)
                  {
                    break;
                  }
                }
              }

              v26 = *(v26 + 24);
              if (!v26)
              {
                goto LABEL_17;
              }
            }

            v128 = *(v26 + 256);
            v131 = *(v26 + 272);
          }

LABEL_17:
          OUTLINED_FUNCTION_762(v15, v16, v17, v18, v19, v20, v21, v22, p_time2, v88, v92, v96, v101, v105, v109, v114, type);
          OUTLINED_FUNCTION_419(v131, v86, v90, v94, v98, v103, v107, v111, v116, typec, type_8b, v124, v126, v128, *(&v128 + 1), v131, v133, v135.n128_i64[0], v135.n128_i64[1], epoch, v137, v128, *(&v128 + 1), time2.epoch, v139, *v140, *&v140[8], *&v140[16], *&v140[24], v141, v142, time.value);
          OUTLINED_FUNCTION_786();
          v28 = v25 & v27;
          v24 = v23;
          v25 = 0;
        }

        while ((v28 & 1) != 0);
      }

      *v2 = v128;
      *(v2 + 16) = v131;
      CMBaseObjectGetDerivedStorage();
      if (!*(DerivedStorage + 2308))
      {
        *(DerivedStorage + 2308) = 12;
      }

      v29 = CMBaseObjectGetDerivedStorage();
      fpfs_ClearAllCachedRenderChains(v0);
      *(v29 + 796) = 0;
      fpfs_PrepareForSeek(v0, 255, 0);
      *(DerivedStorage + 528) = 1;
      OUTLINED_FUNCTION_52();
      fpfsi_setLastSeekTimeSet(DerivedStorage, &time);
      v30 = OUTLINED_FUNCTION_663();
      *(DerivedStorage + 1488) = v31;
      *(DerivedStorage + 1472) = v30;
      fpfs_GetTime(DerivedStorage, &time);
      v135 = *&time.value;
      epoch = time.epoch;
      v39 = *(DerivedStorage + 1024);
      if (v39)
      {
        v40 = MEMORY[0x1E6960C70];
        do
        {
          v41 = *(v39 + 24);
          v32 = fpfsi_MoveTrackToPlayedOut(DerivedStorage, v39, v40);
          if (!v41)
          {
            break;
          }

          v39 = v41;
        }

        while (*(DerivedStorage + 1024));
      }

      v42 = MEMORY[0x1E6960C70];
      v112 = *MEMORY[0x1E6960C70];
      *(DerivedStorage + 3048) = *MEMORY[0x1E6960C70];
      v43 = *(v42 + 16);
      *(DerivedStorage + 3064) = v43;
      if (dword_1EAF169F0)
      {
        v101 = v43;
        HIDWORD(v105) = v6;
        LODWORD(v128) = 0;
        LOBYTE(type) = 0;
        v44 = OUTLINED_FUNCTION_638();
        os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_70();
        if (v43)
        {
          if (v8)
          {
            v45 = CMBaseObjectGetDerivedStorage();
            v53 = (v45 + 888);
          }

          else
          {
            v53 = "";
          }

          v99 = v53;
          if (v0)
          {
            v45 = CMBaseObjectGetDerivedStorage();
            v54 = (v45 + 3096);
          }

          else
          {
            v54 = "";
          }

          OUTLINED_FUNCTION_347(v45, v46, v47, v48, v49, v50, v51, v52, p_time2, v88, v92, v99, v43, v105, v112, *(&v112 + 1), type, *(&type + 1), v124, v126, v128, *(&v128 + 1), v131, v133, *&v135);
          Seconds = CMTimeGetSeconds(&time);
          OUTLINED_FUNCTION_52();
          v56 = CMTimeGetSeconds(&time);
          LODWORD(time2.value) = 136316674;
          *(&time2.value + 4) = "fpfsi_TryToSeekWithinBuffer";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = v8;
          HIWORD(time2.epoch) = 2082;
          v139 = v96;
          *v140 = 2048;
          *&v140[2] = v0;
          *&v140[10] = 2082;
          *&v140[12] = v54;
          *&v140[20] = 2048;
          *&v140[22] = Seconds;
          *&v140[30] = 2048;
          v141 = *&v56;
          OUTLINED_FUNCTION_170();
          p_time2 = &time2;
          OUTLINED_FUNCTION_35();
          OUTLINED_FUNCTION_307();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        v32 = OUTLINED_FUNCTION_454();
        v43 = v101;
      }

      *(DerivedStorage + 1104) = 0u;
      *(DerivedStorage + 1136) = 0u;
      *(DerivedStorage + 1120) = 0u;
      OUTLINED_FUNCTION_347(v32, v39, v33, v34, v35, v36, v37, v38, p_time2, v88, v92, v96, v101, v105, v112, *(&v112 + 1), type, *(&type + 1), v124, v126, v128, *(&v128 + 1), v131, v133, *&v135);
      OUTLINED_FUNCTION_316();
      if (CMTimeCompare(&time, &time2) >= 1)
      {
        OUTLINED_FUNCTION_52();
        v57 = OUTLINED_FUNCTION_520();
        fpfs_JumpToTime(v57, v58, v59);
      }

      OUTLINED_FUNCTION_52();
      if (!fpfs_RestartPlayedOutTracks(v0, &time))
      {
        if (*(DerivedStorage + 1024))
        {
          v60 = 0;
          v61 = 0;
          OUTLINED_FUNCTION_196();
          do
          {
            if (*(v62 + 168) == 6)
            {
              v64 = *(v62 + 48);
              if (v60)
              {
                v65 = 0;
              }

              else
              {
                v65 = v64 == v63;
              }

              if (v65)
              {
                v60 = v62;
              }

              if (v61)
              {
                v66 = 0;
              }

              else
              {
                v66 = v64 == v1;
              }

              if (v66)
              {
                v61 = v62;
              }
            }

            v62 = *(v62 + 24);
          }

          while (v62);
        }

        else
        {
          v61 = 0;
          v60 = 0;
        }

        fpfs_PostHasEnabledTrackTypeNotification(*DerivedStorage, v0);
        if (v60 | v61)
        {
          v67 = OUTLINED_FUNCTION_625();
          if (!fpfs_setTimebaseStarter(v67, v68, v61))
          {
            if (v4)
            {
              time = *(DerivedStorage + 1448);
              if (fpfsi_PlaybackHasBufferedBeyondTime())
              {
                fpfs_SignalImageQueueGaugeEnqueueingCompleteAfterClampTime();
              }
            }

            v69 = OUTLINED_FUNCTION_228();
            v72 = fpfs_EnqueueNotification(v69, v70, v71, 0);
            if (!v61 || !*(v61 + 120) || (OUTLINED_FUNCTION_347(v72, v73, v74, v75, v76, v77, v78, v79, v87, v91, v95, v100, v104, v108, v113, *(&v113 + 1), typea, type_8, v125, v127, v129, v130, v132, v134, *&v135), OUTLINED_FUNCTION_316(), CMTimeCompare(&time, &time2) >= 1))
            {
              OUTLINED_FUNCTION_52();
              v80 = OUTLINED_FUNCTION_520();
              fpfs_JumpToTime(v80, v81, v82);
              *(DerivedStorage + 1472) = v113;
              *(DerivedStorage + 1488) = v43;
              OUTLINED_FUNCTION_52();
              OUTLINED_FUNCTION_177();
              fpfs_SeekDidComplete();
              v83 = OUTLINED_FUNCTION_203();
              OUTLINED_FUNCTION_530(v83);
            }

            fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd(v0);
            fpfs_AssessItemTransition(v8);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_191();
}

void fpfsi_ClampVideoToTime()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v251 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  OUTLINED_FUNCTION_760();
  *&lhs.value = *v3;
  v185 = v3;
  if (!OUTLINED_FUNCTION_206(*(v3 + 16)))
  {
    goto LABEL_138;
  }

  FigGetAllocatorForMedia();
  CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v7 = OUTLINED_FUNCTION_312();
  if (CMBufferQueueCreate(v7, v8, v9, v10))
  {
    goto LABEL_138;
  }

  if (dword_1EAF169F0)
  {
    LODWORD(v224.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_176();
    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      goto LABEL_15;
    }

    v15 = *DerivedStorage;
    if (*DerivedStorage)
    {
      v16 = (CMBaseObjectGetDerivedStorage() + 888);
      if (v5)
      {
LABEL_10:
        v17 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_14:
        v250 = *(DerivedStorage + 1448);
        Seconds = CMTimeGetSeconds(&v250);
        OUTLINED_FUNCTION_760();
        v19 = CMTimeGetSeconds(&v250);
        LODWORD(lhs.value) = 136316674;
        *(&lhs.value + 4) = "fpfsi_ClampVideoToTime";
        LOWORD(lhs.flags) = 2048;
        *(&lhs.flags + 2) = v15;
        HIWORD(lhs.epoch) = 2082;
        v237 = v16;
        v238 = 2048;
        v239 = v5;
        v240 = 2082;
        v241 = v17;
        v242 = 2048;
        v243 = Seconds;
        v244 = 2048;
        v245 = v19;
        OUTLINED_FUNCTION_170();
        p_lhs = &lhs;
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl();
LABEL_15:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_420();
        goto LABEL_16;
      }
    }

    else
    {
      v16 = "";
      if (v5)
      {
        goto LABEL_10;
      }
    }

    v17 = "";
    goto LABEL_14;
  }

LABEL_16:
  v20 = DerivedStorage + 1448;
  v21 = *v1;
  *(DerivedStorage + 1464) = *(v1 + 16);
  *(DerivedStorage + 1448) = v21;
  v22 = *(DerivedStorage + 1024);
  if (!v22)
  {
    goto LABEL_134;
  }

  v23 = 0;
  v24 = *(MEMORY[0x1E6960C70] + 12);
  v171 = *(MEMORY[0x1E6960C70] + 16);
  key = *MEMORY[0x1E6960538];
  *&v21 = 136317186;
  v166 = v21;
  do
  {
    if (*(v22 + 48) == 1986618469 && !*(v22 + 200))
    {
      v25 = *(v22 + 112);
      if (v25)
      {
        v26 = v22;
        while (1)
        {
          v26 = *(v26 + 24);
          if (!v26)
          {
            break;
          }

          if (*(v26 + 112) == v25)
          {
            goto LABEL_24;
          }
        }

        value = *MEMORY[0x1E6960C70];
        timescale = *(MEMORY[0x1E6960C70] + 8);
        v216 = 0;
        refcon = 0;
        v215 = 0uLL;
        fpfsi_EndPresentationTimeForDecodedSamplesForRenderPipeline(*(v25 + 32), &v215);
        *(*(v22 + 112) + 26) = 0;
        OUTLINED_FUNCTION_0();
        MEMORY[0x19A8CE710]();
        OUTLINED_FUNCTION_12();
        CMBufferQueueCallForEachBuffer(v27, v28, &refcon);
        epoch = v171;
        LODWORD(v206) = v24;
        if (refcon)
        {
          CMSampleBufferGetOutputDecodeTimeStamp(&v250, refcon);
          value = v250.value;
          LODWORD(v206) = v250.flags;
          timescale = v250.timescale;
          epoch = v250.epoch;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v150 = v5;
        if (v215.n128_u8[12])
        {
          *&v250.value = v215;
          v250.epoch = v216;
          *&lhs.value = *v1;
          if (OUTLINED_FUNCTION_206(*(v1 + 16)) >= 1)
          {
            v29 = OUTLINED_FUNCTION_505();
            fpfs_GetNextTimeToPlay(v29, v30, v31);
            *&lhs.value = *v20;
            if ((OUTLINED_FUNCTION_206(*(v20 + 16)) & 0x80000000) == 0)
            {
              fpfs_FlushPrimaryAndAuxRenderChains(*(v22 + 112), 1);
            }
          }
        }

        HIDWORD(v146) = v24;
        v148 = v20;
        v32 = *(DerivedStorage + 1024);
        if (v32)
        {
          v33 = 0;
          v152 = DerivedStorage;
          v154 = v1;
          while (2)
          {
            if (*(v32 + 112) != *(v22 + 112))
            {
              goto LABEL_128;
            }

            v34 = OUTLINED_FUNCTION_505();
            fpfs_GetNextTimeToPlay(v34, v35, v36);
            v232 = value;
            v233 = timescale;
            v230 = *v1;
            v37 = *(v1 + 12);
            v231 = *(v1 + 8);
            v208 = *(v1 + 16);
            v228 = *v185;
            v38 = *(v185 + 12);
            v229 = *(v185 + 8);
            v189 = *(v185 + 16);
            v180 = *(v32 + 16);
            v177 = CMBaseObjectGetDerivedStorage();
            v211 = *(v32 + 96);
            v226 = 0;
            queue = 0;
            v224 = **&MEMORY[0x1E6960C80];
            v197 = *&v224.value;
            v194 = v224.epoch;
            memset(&type, 0, sizeof(type));
            v39 = CMTimeMake(&v250, 1, 1);
            OUTLINED_FUNCTION_525(v39, v40, v41, v42, v43, v44, v45, v46, p_lhs, v146, v148, v150, v152, v154, v156, v158, v161, v163, v166, *(&v166 + 1), v169, v171, v173, v175, v177, v180, v183, v185, v187, v189, v192, v194, v197, *(&v197 + 1), key, epoch, v206, v208, v211, v47);
            lhs.epoch = v48;
            CMTimeAdd(&type, &lhs, &v250);
            v49 = 0;
            if (v38)
            {
              v250.value = v228;
              v250.timescale = v229;
              v250.flags = v38;
              v250.epoch = v190;
              *&lhs.value = *&type.value;
              v49 = OUTLINED_FUNCTION_206(type.epoch) < 1;
            }

            if ((v206 & 1) == 0)
            {
              v49 = 1;
            }

            if (v33)
            {
              v50 = 1;
            }

            else
            {
              v50 = v49;
            }

            if (v50 == 1)
            {
              FigGetAllocatorForMedia();
              CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
              v51 = OUTLINED_FUNCTION_312();
              v55 = CMBufferQueueCreate(v51, v52, v53, v54);
              if (!v55)
              {
                if ((v38 & 1) == 0)
                {
                  break;
                }

                v250 = *v214;
                OUTLINED_FUNCTION_664(v55, v56, v57, v58, v59, v60, v61, v62, p_lhs, v146, v148, v150, v152, v154, v156, v158, v161, v163, v166, *(&v166 + 1), v169, v171, v173, v175, v178, v181, v183, v185, v187, v190, v192, v195, v198, *(&v198 + 1), key, v204, v206, v209, v212, *v214, *&v214[8], *&v214[16], v215.n128_i64[0], v215.n128_i64[1], v216, refcon, cf, v219, rhs.value, *&rhs.timescale, rhs.epoch, v221, v222.value, *&v222.timescale, v222.epoch, type.value, *&type.timescale, type.epoch, v224.value, *&v224.timescale, v224.epoch, v225, v226);
                lhs.flags = v38;
                HIDWORD(v192) = OUTLINED_FUNCTION_206(v190) >= 0;
LABEL_49:
                FigGetAllocatorForMedia();
                CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
                v63 = OUTLINED_FUNCTION_312();
                if (!CMBufferQueueCreate(v63, v64, v65, v66))
                {
                  HIDWORD(v187) = v38;
                  HIDWORD(v183) = v23;
                  OUTLINED_FUNCTION_0();
                  MEMORY[0x19A8CE710](v212);
                  HIDWORD(v206) = 0;
                  v67 = 0;
                  v68 = HIDWORD(v192);
                  if (v33)
                  {
                    v68 = 0;
                  }

                  LODWORD(v183) = v68;
                  while (1)
                  {
                    v69 = CMBufferQueueDequeueAndRetain(queue);
                    v70 = v69 == 0;
                    if (!v69)
                    {
LABEL_121:
                      v139 = BYTE4(v206) != 0;
                      LOBYTE(v23) = BYTE4(v183);
                      goto LABEL_122;
                    }

                    v71 = v69;
                    memset(&v222, 0, sizeof(v222));
                    EndOutputPresentationTimeStamp = fpfs_GetEndOutputPresentationTimeStamp(v69, &v222);
                    if (!v50)
                    {
                      v97 = OUTLINED_FUNCTION_683();
                      CMSampleBufferGetOutputDecodeTimeStamp(v98, v97);
                      lhs.value = v232;
                      lhs.timescale = v233;
                      lhs.flags = v206;
                      if ((OUTLINED_FUNCTION_206(v204) & 0x80000000) != 0)
                      {
                        goto LABEL_91;
                      }

                      goto LABEL_90;
                    }

                    v81 = OUTLINED_FUNCTION_753(EndOutputPresentationTimeStamp, v73, v74, v75, v76, v77, v78, v79, p_lhs, v146, v148, v150, v152, v154, v156, v158, v161, v163, v166, *(&v166 + 1), v169, v171, v173, v175, v178, v181, v183, v185, v187, v190, v192, v195, v198, *(&v198 + 1), key, v204, v206, v209, v212, *v214, *&v214[8], *&v214[16], v215.n128_i64[0], v215.n128_i64[1], v216, refcon, cf, v219, rhs.value, *&rhs.timescale, rhs.epoch, v221, v80, v222.value);
                    OUTLINED_FUNCTION_525(v82, v83, v84, v85, v86, v87, v88, v89, v145, v147, v149, v151, v153, v155, v157, v159, v162, v164, v167, v168, v170, v172, v174, v176, v179, v182, v184, v186, v188, v191, v193, v196, v199, v200, keya, v205, v207, v210, v213, v81);
                    v91 = OUTLINED_FUNCTION_206(v90);
                    v92 = OUTLINED_FUNCTION_683();
                    CMSampleBufferGetOutputPresentationTimeStamp(v93, v92);
                    *&lhs.value = *(v32 + 208);
                    v94 = OUTLINED_FUNCTION_206(*(v32 + 224));
                    v95 = v226;
                    if (v91 > 0 || v226)
                    {
                      if (v91 >= 1 && (v94 & 0x80000000) == 0)
                      {
                        v96 = 1;
LABEL_65:
                        if (!v67)
                        {
                          if (!fpfs_IsMarkerOnly(v71))
                          {
                            memset(&rhs, 0, sizeof(rhs));
                            if (v226)
                            {
                              CMBufferQueueGetFirstPresentationTimeStamp(&rhs, v226);
                              if (v226)
                              {
                                BufferCount = CMBufferQueueGetBufferCount(v226);
LABEL_75:
                                if (dword_1EAF169F0)
                                {
                                  HIDWORD(v219) = 0;
                                  BYTE3(v219) = 0;
                                  v100 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                                  v101 = HIDWORD(v219);
                                  v175 = v100;
                                  HIDWORD(v173) = BYTE3(v219);
                                  os_log_type_enabled(v100, BYTE3(v219));
                                  OUTLINED_FUNCTION_176();
                                  if (v13)
                                  {
                                    v112 = v110;
                                  }

                                  else
                                  {
                                    v112 = v101;
                                  }

                                  if (v112)
                                  {
                                    v113 = *v178;
                                    v165 = BufferCount;
                                    if (*v178)
                                    {
                                      v102 = CMBaseObjectGetDerivedStorage();
                                      v114 = (v102 + 888);
                                    }

                                    else
                                    {
                                      v114 = "";
                                    }

                                    v160 = v114;
                                    v115 = v181;
                                    if (v181)
                                    {
                                      v102 = CMBaseObjectGetDerivedStorage();
                                      v116 = (v102 + 3096);
                                    }

                                    else
                                    {
                                      v116 = "";
                                    }

                                    OUTLINED_FUNCTION_753(v102, v103, v104, v105, v106, v107, v108, v109, p_lhs, v146, v148, v150, v152, v154, v116, v160, *(v32 + 32), v165, v166, *(&v166 + 1), v169, v171, v173, v175, v178, v181, v183, v185, v187, v190, v192, v195, v198, *(&v198 + 1), key, v204, v206, v209, v212, *v214, *&v214[8], *&v214[16], v215.n128_i64[0], v215.n128_i64[1], v216, refcon, cf, v219, rhs.value, *&rhs.timescale, rhs.epoch, v221, v111, v222.value);
                                    v117 = CMTimeGetSeconds(&v250);
                                    v250 = rhs;
                                    v118 = CMTimeGetSeconds(&v250);
                                    LODWORD(lhs.value) = v166;
                                    *(&lhs.value + 4) = "fpfsi_EnqueueVideoSamplesWithClamping";
                                    LOWORD(lhs.flags) = 2048;
                                    *(&lhs.flags + 2) = v113;
                                    HIWORD(lhs.epoch) = 2082;
                                    v237 = v158;
                                    v238 = 2048;
                                    v239 = v115;
                                    v240 = 2082;
                                    v241 = v156;
                                    v242 = 2048;
                                    v243 = *&v161;
                                    v244 = 2048;
                                    v245 = v117;
                                    v246 = 2048;
                                    v247 = v118;
                                    v248 = 2048;
                                    v249 = v163;
                                    LODWORD(v146) = 92;
                                    p_lhs = &lhs;
                                    OUTLINED_FUNCTION_86();
                                    _os_log_send_and_compose_impl();
                                  }

                                  OUTLINED_FUNCTION_7();
                                  OUTLINED_FUNCTION_420();
                                }

                                v67 = 1;
                                goto LABEL_90;
                              }
                            }

                            else
                            {
                              *&rhs.value = *MEMORY[0x1E6960C70];
                              rhs.epoch = v171;
                            }

                            BufferCount = -1;
                            goto LABEL_75;
                          }

                          v67 = 0;
                        }

                        goto LABEL_68;
                      }
                    }

                    else
                    {
                      fpfs_DoNotDisplay(v71);
                      v95 = v226;
                    }

                    v96 = v95 == 0;
                    if (!v95)
                    {
                      goto LABEL_65;
                    }

LABEL_68:
                    if (!v96)
                    {
                      goto LABEL_91;
                    }

LABEL_90:
                    v119 = *(v32 + 16);
                    v250.value = v230;
                    v250.timescale = v231;
                    v250.flags = v37;
                    v250.epoch = v209;
                    if (fpfsi_ProcessVideoSampleForClamping(v119, v32, v71, &v250))
                    {
LABEL_91:
                      v120 = 1;
                      goto LABEL_107;
                    }

                    if (v226 && !fpfs_IsMarkerOnly(v71))
                    {
                      if (v183)
                      {
                        fpfs_FlushPrimaryAndAuxRenderChains(*(v32 + 112), 1);
                        if (*(v32 + 120))
                        {
                          fpfs_PrerollRenderPipeline();
                        }
                      }

                      if (!fpfs_IsVideoSync(v71))
                      {
                        v121 = CMBufferQueueDequeueAndRetain(v226);
                        if (v121)
                        {
                          v122 = v121;
                          do
                          {
                            fpfs_DoNotDisplay(v122);
                            v123 = OUTLINED_FUNCTION_513();
                            fpfs_RenderBuffer(v123, v124);
                            CFRelease(v122);
                            v122 = CMBufferQueueDequeueAndRetain(v226);
                          }

                          while (v122);
                        }
                      }

                      if (v226)
                      {
                        CFRelease(v226);
                        v226 = 0;
                      }
                    }

                    if (HIDWORD(v192))
                    {
                      v125 = OUTLINED_FUNCTION_683();
                      OutputPresentationTimeStamp = CMSampleBufferGetOutputPresentationTimeStamp(v126, v125);
                      OUTLINED_FUNCTION_664(OutputPresentationTimeStamp, v128, v129, v130, v131, v132, v133, v134, p_lhs, v146, v148, v150, v152, v154, v156, v158, v161, v163, v166, *(&v166 + 1), v169, v171, v173, v175, v178, v181, v183, v185, v187, v190, v192, v195, v198, *(&v198 + 1), key, v204, v206, v209, v212, *v214, *&v214[8], *&v214[16], v215.n128_i64[0], v215.n128_i64[1], v216, refcon, cf, v219, rhs.value, *&rhs.timescale, rhs.epoch, v221, v222.value, *&v222.timescale, v222.epoch, type.value, *&type.timescale, type.epoch, v224.value, *&v224.timescale, v224.epoch, v225, v226);
                      lhs.flags = HIDWORD(v187);
                      if (OUTLINED_FUNCTION_206(v190) <= 0)
                      {
                        fpfs_DoNotDisplay(v71);
                      }
                    }

                    v135 = OUTLINED_FUNCTION_783();
                    v120 = fpfs_RenderBuffer(v135, v136) == 0;
LABEL_107:
                    CMBufferQueueEnqueue(v212, v71);
                    if (!v226)
                    {
                      goto LABEL_112;
                    }

                    if (fpfs_IsVideoSync(v71))
                    {
                      CMBufferQueueReset(v226);
LABEL_110:
                      CMBufferQueueEnqueue(v226, v71);
                      goto LABEL_112;
                    }

                    if (!CMBufferQueueIsEmpty(v226))
                    {
                      goto LABEL_110;
                    }

LABEL_112:
                    if (fpfs_IsMarkerOnly(v71))
                    {
                      if (v37)
                      {
                        goto LABEL_116;
                      }
                    }

                    else
                    {
                      CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v71);
                      CMSampleBufferGetOutputDuration(&rhs, v71);
                      CMTimeAdd(&v250, &lhs, &rhs);
                      lhs = v224;
                      CMTimeMaximum(&v224, &lhs, &v250);
                      if (v37)
                      {
LABEL_116:
                        if (CMGetAttachment(v71, key, 0))
                        {
                          v250 = v224;
                          lhs.value = v230;
                          lhs.timescale = v231;
                          lhs.flags = v37;
                          v137 = OUTLINED_FUNCTION_206(v209);
                          v138 = HIDWORD(v206);
                          if (v137 >= 0)
                          {
                            v138 = 1;
                          }

                          HIDWORD(v206) = v138;
                          *&v224.value = v198;
                          v224.epoch = v195;
                        }
                      }
                    }

                    CFRelease(v71);
                    if (!v120)
                    {
                      goto LABEL_121;
                    }
                  }
                }
              }

              v139 = 0;
              v70 = 0;
LABEL_122:
              DerivedStorage = v152;
              v1 = v154;
              if (queue)
              {
                CFRelease(queue);
              }

              if (v226)
              {
                CFRelease(v226);
              }

              if (!v70)
              {
                goto LABEL_138;
              }

              v23 = v23 != 0 || v139;
              value = *(v32 + 232);
              LODWORD(v206) = *(v32 + 244);
              timescale = *(v32 + 240);
              epoch = *(v32 + 248);
              v33 = 1;
LABEL_128:
              v32 = *(v32 + 24);
              if (!v32)
              {
                goto LABEL_131;
              }

              continue;
            }

            break;
          }

          HIDWORD(v192) = 0;
          goto LABEL_49;
        }

LABEL_131:
        v20 = v148;
        v5 = v150;
        v24 = HIDWORD(v146);
      }
    }

LABEL_24:
    v22 = *(v22 + 24);
  }

  while (v22);
  if (v23 && (*(v1 + 12) & 1) != 0)
  {
    fpfs_SignalImageQueueGaugeEnqueueingCompleteAfterClampTime();
  }

  else
  {
LABEL_134:
    v140 = fpfsi_copyImageQueueGauge(v5);
    if (v140)
    {
      v141 = v140;
      if (*(*(CMBaseObjectGetVTable() + 16) + 24))
      {
        v142 = OUTLINED_FUNCTION_203();
        v143(v142);
      }

      CFRelease(v141);
    }
  }

LABEL_138:
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_191();
}

BOOL fpfs_areAllExternalStartupTasksCompleted()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 952);
  if (!v1)
  {
    return 1;
  }

  Count = CFArrayGetCount(v1);
  if (Count < 1)
  {
    return 1;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 952), v4);
    result = FigPlayerStartupTaskDoesAllowStartup(ValueAtIndex);
    if (!result)
    {
      break;
    }

    if (v3 == ++v4)
    {
      return 1;
    }
  }

  return result;
}

BOOL fpfsi_waitForVenueDescriptionProcessing()
{
  OUTLINED_FUNCTION_572();
  if (!*(v0 + 760))
  {
    return 0;
  }

  if (qword_1ED4CA3E0 != -1)
  {
    dispatch_once(&qword_1ED4CA3E0, &__block_literal_global_218);
  }

  if (!byte_1ED4CA3B9 || !*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    return 0;
  }

  v1 = OUTLINED_FUNCTION_270();
  v3 = v2(v1);
  v11 = OUTLINED_FUNCTION_582(v3, v4, v5, v6, v7, v8, v9, v10, v15, cf);
  if (v12)
  {
    v13 = 0;
    if (!v11)
    {
      return v13;
    }

    goto LABEL_8;
  }

  CFNumberGetValue(v11, kCFNumberSInt32Type, &v15 + 4);
  v13 = HIDWORD(v15) == 0;
  v11 = cf;
  if (cf)
  {
LABEL_8:
    CFRelease(v11);
  }

  return v13;
}

void fpfsi_AlignTimeToSnapping()
{
  OUTLINED_FUNCTION_650();
  v72 = v2;
  v73 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_699();
  v7 = v6;
  v71 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = MEMORY[0x1E6960C70];
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v17 = *(MEMORY[0x1E6960C70] + 16);
  *v7 = *v1;
  *(v7 + 16) = *(v1 + 16);
  v67 = *v16;
  v68 = v17;
  v48 = v67;
  v65 = v67;
  v66 = v17;
  v64 = 0;
  v63 = 0;
  if ((*(v1 + 12) & 1) == 0)
  {
    goto LABEL_27;
  }

  v18 = DerivedStorage;
  if (!*(DerivedStorage + 466))
  {
    goto LABEL_27;
  }

  v19 = *(v16 + 3);
  v20 = *(DerivedStorage + 1024);
  if (!v20)
  {
    goto LABEL_14;
  }

  v46 = v0;
  do
  {
    if (*(v20 + 200))
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_678();
    v55 = v48;
    v56 = v17;
    v57 = v48;
    v58 = v17;
    v59 = v48;
    v60 = v17;
    v61 = v48;
    v62 = v17;
    DerivedStorage = CMBufferQueueCallForEachBuffer(*(v20 + 96), fpfs_GetClosestSegmentBoundary, &refcon);
    v21 = *(v20 + 48);
    if (v21 == 1986618469)
    {
      v22 = &v65;
      v23 = &v64;
      v24 = &v63;
    }

    else
    {
      if (v21 != 1936684398)
      {
        goto LABEL_11;
      }

      v22 = &v67;
      v23 = (&v64 + 1);
      v24 = &v63 + 1;
    }

    fpfsi_UpdateTimeIfCloser(&refcon, v22, v23, v24);
LABEL_11:
    v20 = *(v20 + 24);
  }

  while (v20);
  if (HIBYTE(v64))
  {
    v25 = 1;
    goto LABEL_15;
  }

LABEL_14:
  v25 = (*(v18 + 1072) >> 1) & 1;
  if (v25)
  {
LABEL_15:
    if (HIBYTE(v63))
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_16:
    if (v64)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25 == 0;
    }

    if (!v26 || v63 != 0)
    {
      *&rhs.timescale = *(&v67 + 1);
      rhs.epoch = v68;
      v28 = OUTLINED_FUNCTION_281(DerivedStorage, v9, v10, v11, v12, v13, v14, v15, v44, v46, v48, *(&v48 + 1), v65, *(&v65 + 1), v66, v52, v67);
      CMTimeMinimum(v30, v28, v29);
      value = refcon.value;
      flags = refcon.flags;
      timescale = refcon.timescale;
      epoch = refcon.epoch;
      CMTimeMake(&rhs, 5, 10000);
      lhs.value = value;
      *&lhs.timescale = __PAIR64__(flags, timescale);
      lhs.epoch = epoch;
      CMTimeSubtract(&refcon, &lhs, &rhs);
      timescale = refcon.timescale;
      value = refcon.value;
      rhs = refcon;
      OUTLINED_FUNCTION_106(MEMORY[0x1E6960CC0]);
      v41 = OUTLINED_FUNCTION_281(v33, v34, v35, v36, v37, v38, v39, v40, v45, v47, v49, v50, lhs.value, *&lhs.timescale, lhs.epoch, v52, rhs.value);
      CMTimeMaximum(v43, v41, v42);
      value = refcon.value;
      v19 = refcon.flags;
      timescale = refcon.timescale;
      v17 = refcon.epoch;
    }
  }

  if (v19)
  {
    *v7 = value;
    *(v7 + 8) = timescale;
    *(v7 + 12) = v19;
    *(v7 + 16) = v17;
    if (v5)
    {
      fpfs_EnqueueNotification(*v18, v5, v0, 0);
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_602();
}

void fpfs_HandleReachingTimeToPausePlayback()
{
  OUTLINED_FUNCTION_460();
  v76 = v1;
  v77 = v2;
  v4 = v3;
  v75 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(v67, 0, sizeof(v67));
  fpfs_GetNextTimeToPlay(DerivedStorage, 0, v67);
  v14 = *MEMORY[0x1E6960C70];
  *v55 = *MEMORY[0x1E6960C70];
  v65 = *MEMORY[0x1E6960C70];
  v15 = *(MEMORY[0x1E6960C70] + 16);
  if (*(DerivedStorage + 568))
  {
    fpfsi_clearCoordinatedPlaybackSynchronizationTimebase();
    OUTLINED_FUNCTION_290();
    v6 = fpfs_PlayQueueCallForEachItem(v16, v17, v4);
  }

  v18 = (DerivedStorage + 1424);
  OUTLINED_FUNCTION_754(v6, v7, v8, v9, v10, v11, v12, v13, v49, v52, v55[0], v55[1], v59, v62, v65, *(&v65 + 1), v15, v14, v67[0]);
  time2 = *(DerivedStorage + 1424);
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    *v66 = *v18;
    *&v66[16] = *(DerivedStorage + 1440);
  }

  time2 = *v66;
  FPSTimelineConverterL2TimeToL3(&time2, &time1);
  *&time2.value = *v56;
  time2.epoch = v15;
  v19 = OUTLINED_FUNCTION_235();
  fpfs_setRateInternal(v19, v20, v21, v22);
  v23 = OUTLINED_FUNCTION_234();
  fpfs_GetNextTimeToPlay(v23, v24, v25);
  if (dword_1EAF169F0)
  {
    OUTLINED_FUNCTION_427();
    OUTLINED_FUNCTION_201();
    v26 = OUTLINED_FUNCTION_371();
    OUTLINED_FUNCTION_465(v26, v27, v28, v29, v30, v31, v32, v33, v50, v53, v56[0], v56[1], v60, v63, SBYTE2(v63), BYTE3(v63), SHIDWORD(v63));
    OUTLINED_FUNCTION_40();
    if (!v0)
    {
      goto LABEL_14;
    }

    v34 = *DerivedStorage;
    if (*DerivedStorage)
    {
      v35 = (CMBaseObjectGetDerivedStorage() + 888);
      if (v4)
      {
LABEL_9:
        v36 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_13:
        *&time1.value = *v18;
        time1.epoch = *(DerivedStorage + 1440);
        v37.n128_f64[0] = CMTimeGetSeconds(&time1);
        OUTLINED_FUNCTION_754(v38, v39, v40, v41, v42, v43, v44, v45, v51, v54, v57, v58, v61, v64, *v66, *&v66[8], *&v66[16], v37, v67[0]);
        CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 136316674;
        *(&time2.value + 4) = "fpfs_HandleReachingTimeToPausePlayback";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v34;
        HIWORD(time2.epoch) = 2082;
        v69 = v35;
        v70 = 2048;
        v71 = v4;
        v72 = 2082;
        v73 = v36;
        OUTLINED_FUNCTION_375();
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_456();
LABEL_14:
        OUTLINED_FUNCTION_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_15;
      }
    }

    else
    {
      v35 = "";
      if (v4)
      {
        goto LABEL_9;
      }
    }

    v36 = "";
    goto LABEL_13;
  }

LABEL_15:
  if (!*(DerivedStorage + 3336))
  {
    *(DerivedStorage + 3336) = FigGetUpTimeNanoseconds();
    if (*(DerivedStorage + 912))
    {
      memset(&time1, 0, sizeof(time1));
      if (!fpfsi_GetDuration(v4, &time1.value))
      {
        OUTLINED_FUNCTION_529();
        if (v46)
        {
          FigBaseObject = FigBytePumpGetFigBaseObject(*(DerivedStorage + 912));
          v48 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v48)
          {
            v48(FigBaseObject, 0x1F0B1F458, *MEMORY[0x1E695E4C0]);
          }
        }
      }
    }
  }

  fpfsi_EnqueueReachedTimeToPausePlaybackNotification(v4);
  OUTLINED_FUNCTION_459();
}

uint64_t fpfs_applySoftwareVolumeToTrack()
{
  OUTLINED_FUNCTION_629();
  v23 = v0;
  v24 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v21 = v4;
  valuePtr = v8;
  CMBaseObjectGetDerivedStorage();
  if (!*(v7 + 112))
  {
    return 0;
  }

  if (v5 < 0.0)
  {
    v21 = 0.0;
  }

  if (v3 == 5)
  {
    v11 = kFigAudioRenderPipelineProperty_SoftwareVolume5;
    goto LABEL_10;
  }

  if (v3 == 3)
  {
    v11 = kFigAudioRenderPipelineProperty_SoftwareVolume3;
LABEL_10:
    v10 = *v11;
    v9 = 1;
    goto LABEL_12;
  }

  v9 = 0;
  if (v3 == 2)
  {
    v10 = @"SoftwareVolume2";
  }

  else
  {
    v10 = @"SoftwareVolume1";
  }

LABEL_12:
  if (*(v7 + 206) && CFEqual(v10, @"SoftwareVolume1"))
  {
    valuePtr = 0;
  }

  v12 = *MEMORY[0x1E695E480];
  v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  if (!v13)
  {
    OUTLINED_FUNCTION_303();
    return FigSignalErrorAtGM();
  }

  v14 = v13;
  if (v9)
  {
    v16 = 0;
LABEL_24:
    v20 = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
    if (v20 == -4)
    {
      v18 = 0;
    }

    else
    {
      v18 = v20;
    }

    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v15 = CFNumberCreate(v12, kCFNumberFloatType, &v21);
  if (!v15)
  {
    OUTLINED_FUNCTION_303();
    v18 = FigSignalErrorAtGM();
    goto LABEL_21;
  }

  v16 = v15;
  v17 = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = v17;
  if (v17 == -4)
  {
    goto LABEL_24;
  }

LABEL_20:
  CFRelease(v16);
LABEL_21:
  CFRelease(v14);
  return v18;
}

void fpfs_SignalImageQueueGaugeEnqueueingCompleteAfterClampTime()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1460))
  {
    v2 = (DerivedStorage + 1448);
    OUTLINED_FUNCTION_340();
    v4 = *(v3 + 1024);
    if (v4)
    {
      while (1)
      {
        if (*(v4 + 48) == v0)
        {
          if (*(v4 + 112))
          {
            if (OUTLINED_FUNCTION_268(v2[2], v6, v7, v8, v9, *v2, v2[1], v10, v11, *(v4 + 208)) <= 0)
            {
              OUTLINED_FUNCTION_718();
              if ((OUTLINED_FUNCTION_268(v2[2], v6, v7, v8, v9, *v2, v2[1], v10, v11, v12) & 0x80000000) == 0)
              {
                break;
              }
            }
          }
        }

        v4 = *(v4 + 24);
        if (!v4)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      OUTLINED_FUNCTION_315();
      v4 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (!v4)
      {
        return;
      }

      while (1)
      {
        if (*(v4 + 48) == v0)
        {
          if (*(v4 + 112))
          {
            OUTLINED_FUNCTION_718();
            if ((OUTLINED_FUNCTION_268(v8, v6, v7, v8, v9, v6, v7, v10, v11, v12) & 0x80000000) == 0)
            {
              break;
            }
          }
        }

        v4 = *(v4 + 24);
        if (!v4)
        {
          return;
        }
      }
    }

    v5 = *(v4 + 112);
    if (!*(v5 + 26))
    {
      *(v5 + 26) = 1;
      fpfs_SignalImageQueueGaugeEnqueueingCompleteAfterDecoding(v4);
    }
  }
}

void fpfs_AssessItemTransition(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (fpfs_getNext(DerivedStorage, *(DerivedStorage + 80)))
  {
    if (a1)
    {
      CFRetain(a1);
    }

    v3 = *(DerivedStorage + 24);

    dispatch_async_f(v3, a1, fpfs_DeferredAssessItemTransition);
  }
}

uint64_t fpfsi_findLastPlayingTracksForMediaType()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[128];
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = 0x7FFFFFFFLL;
  do
  {
    if (v2 >= *(v1 + 80))
    {
      v2 = *(v1 + 80);
    }

    v1 = *(v1 + 24);
  }

  while (v1);
  if (v2 == 0x7FFFFFFF)
  {
LABEL_12:
    v3 = DerivedStorage[130];
    if (!v3)
    {
      goto LABEL_21;
    }

    do
    {
      v4 = v3;
      v3 = *(v3 + 24);
    }

    while (v3);
    if (*(v4 + 80) == 0x7FFFFFFFLL)
    {
LABEL_21:
      v5 = DerivedStorage[132];
      if (!v5)
      {
        return 0;
      }

      do
      {
        v6 = v5;
        v5 = *(v5 + 24);
      }

      while (v5);
      if (*(v6 + 80) == 0x7FFFFFFFLL)
      {
        return 0;
      }
    }
  }

  v7 = OUTLINED_FUNCTION_540();
  result = fpfsi_findTracksInListOfMediaType(v7, v8, v9, v10, v11, 1);
  if (!result)
  {
    v13 = OUTLINED_FUNCTION_540();
    result = fpfsi_findTracksInListOfMediaType(v13, v14, v15, v16, v17, 1);
    if (!result)
    {
      v18 = OUTLINED_FUNCTION_540();

      return fpfsi_findTracksInListOfMediaType(v18, v19, v20, v21, v22, 0);
    }
  }

  return result;
}

uint64_t fpfsi_findTracksInListOfMediaType(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v22 = 0;
  Count = FigStreamTrackListGetCount(a5);
  AllocatorForMedia = FigGetAllocatorForMedia();
  v13 = FigStreamTrackListCreateIterator(AllocatorForMedia, a5, &v22);
  if (!v13 && a2)
  {
    do
    {
      if (*(a2 + 48) == a1 && *(a2 + 80) == a4)
      {
        cf = 0;
        FigStreamTrackListIteratorResetAndCopyTrack(v22, &cf);
        while (cf)
        {
          SyncPairID = FigStreamTrackGetSyncPairID(cf);
          if (!FigCFEqual() && FigStreamTrackAreTracksSyncPairs(cf, a2))
          {
            v17 = 0;
            while (*(v23 + v17) != SyncPairID)
            {
              v17 += 4;
              if (v17 == 36)
              {
                goto LABEL_21;
              }
            }

            if (!a6)
            {
              goto LABEL_22;
            }

LABEL_21:
            FigStreamTrackListRemoveTrack(a5, cf);
            v18 = OUTLINED_FUNCTION_517();
            FigStreamTrackListAddTrack(v18, v19);
LABEL_22:
            if (cf)
            {
              CFRelease(cf);
            }

            goto LABEL_14;
          }

          if (cf)
          {
            CFRelease(cf);
          }

          cf = 0;
          FigStreamTrackListIteratorCopyNextTrack(v22, &cf);
        }

        if (Count == 8)
        {
          break;
        }

        v15 = OUTLINED_FUNCTION_517();
        FigStreamTrackListAddTrack(v15, v16);
        *(v23 + Count) = FigStreamTrackGetSyncPairID(a2);
        Count = (Count + 1);
      }

LABEL_14:
      a2 = *(a2 + 24);
    }

    while (a2);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v13;
}

void fpfs_SignalImageQueueGaugeEnqueueingCompleteAfterDecoding(uint64_t a1)
{
  v14 = 0;
  CMBaseObjectGetDerivedStorage();
  v2 = fpfsi_copyImageQueueGauge(*(a1 + 16));
  OUTLINED_FUNCTION_33();
  if (v3)
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_441();
    OUTLINED_FUNCTION_19();
    v12 = CMSampleBufferCreate(v4, v5, v6, v7, v8, v9, v10, v11, 0, 0, 0, &v14);
    v13 = v14;
    if (!v12)
    {
      CMSetAttachment(v14, *MEMORY[0x1E6962E00], *MEMORY[0x1E695E4D0], 1u);
      if (v2)
      {
        CMSetAttachment(v14, *MEMORY[0x1E6962E20], v2, 1u);
      }

      fpfs_RenderBufferOrEnqueueToStartupQueue(a1, v14);
      v13 = v14;
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void fpfsi_addCAImageQueuesAndSlots()
{
  OUTLINED_FUNCTION_629();
  v32 = v2;
  v33 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  v7 = CMBaseObjectGetDerivedStorage();
  v8 = *(v7 + 384);
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    if (!v0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    Count = 0;
    if (!v0)
    {
LABEL_36:
      OUTLINED_FUNCTION_320();
      return;
    }
  }

  v10 = *(v7 + 408);
  v11 = v10 + Count;
  if (*(v1 + 664) || (v12 = FigGetAllocatorForMedia(), v13 = CFArrayCreateMutable(v12, v10 + Count, MEMORY[0x1E695E9C0]), (*(v1 + 664) = v13) != 0))
  {
    Mutable = *(v1 + 672);
    if (Mutable || (v15 = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(v15, *(v7 + 408), MEMORY[0x1E695E9C0]), (*(v1 + 672) = Mutable) != 0))
    {
      v16 = CFArrayGetCount(Mutable);
      v17 = *(v1 + 664);
      if (v17)
      {
        v18 = CFArrayGetCount(v17);
      }

      else
      {
        v18 = 0;
      }

      if (v18 >= v11 || v16 >= v11)
      {
        goto LABEL_36;
      }

      Dimensions = CMVideoFormatDescriptionGetDimensions(*(v0 + 56));
      if (v5)
      {
        v21 = &v30;
      }

      else
      {
        v21 = 0;
      }

      v22 = Count + v10 - v18;
      do
      {
        OUTLINED_FUNCTION_572();
        FPSupport_EnsureCAImageQueue(&value, v21, Dimensions.width, Dimensions.height);
        if (value)
        {
          CFArrayAppendValue(*(v1 + 664), value);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }
        }

        if (v5)
        {
          FigCFArrayAppendInt32();
        }

        --v22;
      }

      while (v22);
      if (v18)
      {
        if (v5)
        {
LABEL_29:
          AllocatorForMedia = FigGetAllocatorForMedia();
          Copy = CFArrayCreateCopy(AllocatorForMedia, *(v1 + 672));
          FigPropertyStorageSetValue(*(v1 + 168), @"VideoSlotArray", Copy);
LABEL_32:
          OUTLINED_FUNCTION_402();
          fpfs_EnqueueNotification(v25, v26, v27, v28);
          if (!fpfsi_setCAImageQueueFlagsForTrack(v0))
          {
            fpfsi_setCAImageQueueFlagsForItem();
          }

          if (Copy)
          {
            CFRelease(Copy);
          }

          goto LABEL_36;
        }
      }

      else
      {
        *(v1 + 745) = 1;
        if (v5)
        {
          goto LABEL_29;
        }
      }

      Copy = 0;
      goto LABEL_32;
    }
  }

  OUTLINED_FUNCTION_429();
  OUTLINED_FUNCTION_320();

  FigSignalErrorAtGM();
}

uint64_t fpfsi_createOutputDestinationForVideo()
{
  OUTLINED_FUNCTION_629();
  v24 = v0;
  v25 = v1;
  v3 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  OUTLINED_FUNCTION_301();
  RenderingTrackofType = fpfs_LastRenderingTrackofType(v5, v6, v3);
  if (*(v3 + 48) != 1986618469)
  {
    return 0;
  }

  v8 = (v3 + 104);
  if (*(v3 + 104))
  {
    return 0;
  }

  v9 = RenderingTrackofType;
  fpfs_CreateFigImageQueueOutputsArray(*(v3 + 16), v3, &v23);
  v10 = v23;
  if (!v23)
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  if (*DerivedStorage)
  {
    v12 = (CMBaseObjectGetDerivedStorage() + 888);
  }

  else
  {
    v12 = "";
  }

  if (*(v3 + 16))
  {
    v13 = (CMBaseObjectGetDerivedStorage() + 3096);
  }

  else
  {
    v13 = "";
  }

  v14 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%s:%s.V.%d", v12, v13, *(v3 + 32));
  if (v14)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
  }

  else
  {
    Mutable = 0;
  }

  v16 = FigGetAllocatorForMedia();
  v17 = (v9 + 104);
  if (!v9)
  {
    v17 = (DerivedStorage + 752);
  }

  v18 = FigAggregateVideoDestinationCreate(v16, v10, *(DerivedStorage + 576), *(v3 + 56), *v17, Mutable, (v3 + 104));
  if (!v18)
  {
    OUTLINED_FUNCTION_490();
    v18 = fpfsi_setAggregateDestinationVideoChannelSettingsForTrack();
    if (!v18)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_186();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_186();
      FigNotificationCenterAddWeakListener();
      v19 = *(DerivedStorage + 752);
      v20 = *v8;
      *(DerivedStorage + 752) = *v8;
      if (v20)
      {
        CFRetain(v20);
      }

      if (v19)
      {
        CFRelease(v19);
      }

      v21 = 0;
      if (!v14)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  v21 = v18;
  if (v14)
  {
LABEL_22:
    CFRelease(v14);
  }

LABEL_23:
  CFRelease(v10);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v21;
}

uint64_t fpfsi_setCAImageQueueFlagsForItem()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 664);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  if (*(DerivedStorage + 845))
  {
    v4 = 72;
  }

  else
  {
    v4 = 64;
  }

  if (*(DerivedStorage + 844))
  {
    v5 = v4 | 0x10;
  }

  else
  {
    v5 = v4;
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 664), i);
      CAImageQueueSetFlags();
    }
  }

  v6 = *(DerivedStorage + 1024);
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_424();
  while (1)
  {
    if (*(v6 + 48) == i)
    {
      v7 = *(v6 + 104);
      if (v7)
      {
        break;
      }
    }

LABEL_19:
    v6 = *(v6 + 24);
    if (!v6)
    {
      return 0;
    }
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v8)
  {
    result = v8(v7, v5, 88);
    if (result)
    {
      return result;
    }

    goto LABEL_19;
  }

  return 4294954514;
}

void fpfs_CreateFigImageQueueOutputsArray(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_294(DerivedStorage);
  v7 = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return;
  }

  v8 = v7;
  v9 = FigStreamingItemCombinedVideoDestinationCopyVisualContexts(*(v3 + 656));
  v10 = v9;
  if (*(v8 + 462))
  {
    if (v9)
    {
      v11 = CFRetain(v9);
      if (v11)
      {
        goto LABEL_11;
      }
    }

    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_613();
    ConcatenationOfTwoArrays = CFArrayCreate(v12, v13, v14, v15);
  }

  else
  {
    if (v9 && CFArrayGetCount(v9) >= 1)
    {
      fpfsi_VideoOutputAllowedWithPermissivePolicy(a2);
    }

    ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
  }

  v11 = ConcatenationOfTwoArrays;
LABEL_11:
  v17 = FigStreamingPlayerCombinedVideoDestinationCopyFVTs(*(v8 + 376));
  OUTLINED_FUNCTION_284();
  v18 = FigCFArrayCreateConcatenationOfTwoArrays();
  if (v17)
  {
    CFRelease(v17);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v18)
  {
    v19 = CFRetain(v18);
  }

  else
  {
    v19 = 0;
  }

  *a3 = v19;
  if (v10)
  {
    CFRelease(v10);
  }

  if (v18)
  {

    CFRelease(v18);
  }
}

uint64_t fpfsi_setAggregateDestinationVideoChannelSettingsForTrack()
{
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  v4 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMVideoFormatDescriptionGetPresentationDimensions(*(v0 + 56), *(v2 + 844), *(v2 + 845));
  fpfs_ReadjustDimensions();
  AllocatorForMedia = FigGetAllocatorForMedia();
  VideoChannelSettingsForTrackWithID = FPSupport_CreateVideoChannelSettingsForTrackWithID(AllocatorForMedia, *v2, *(v0 + 16), *(v0 + 32), *(v4 + 400), 0, 0, &cf);
  if (VideoChannelSettingsForTrackWithID)
  {
    v10 = VideoChannelSettingsForTrackWithID;
  }

  else
  {
    FigAggregateVideoDestinationGetCMBaseObject(*(v0 + 104));
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v7 = OUTLINED_FUNCTION_188();
      v9 = v8(v7);
      v10 = v9;
      if (v1 && !v9)
      {
        OUTLINED_FUNCTION_296();
        fpfsi_scheduleFVTTransitionsForItem();
      }
    }

    else
    {
      v10 = 4294954514;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

void fpfs_ReadjustDimensions()
{
  OUTLINED_FUNCTION_807();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v3 = CMBaseObjectGetDerivedStorage();
  if (v0)
  {
    if (*(v3 + 664))
    {
      v12 = 0;
      FigGetAllocatorForMedia();
      v4 = OUTLINED_FUNCTION_179();
      FigPlaybackItemGetFigBaseObject(v4);
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v5 = OUTLINED_FUNCTION_188();
        v6(v5);
      }
    }

    if (*v0 == *MEMORY[0x1E695F060] && *(v0 + 8) == *(MEMORY[0x1E695F060] + 8) && *(v1 + 469) == 1)
    {
      v8 = *(v1 + 1672);
      if (v8)
      {
        v9 = OUTLINED_FUNCTION_563();
        if (fpfs_FindMediaTypeInMediaArray(v8, v9, 0) || (FigGetCFStringForOSTypeValue(), v10 = OUTLINED_FUNCTION_399(), fpfs_FindMediaTypeInMediaArray(v10, v11, 0)))
        {
          *v0 = *"";
        }
      }
    }
  }
}

void fpfsi_HandleResolutionCapOrDisplaySizeChange(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 40))
  {
    OUTLINED_FUNCTION_251();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 40))
    {
      if (*(DerivedStorage + 48))
      {
        if (*(DerivedStorage + 49))
        {
          if (!fpfsi_UpdateResourceSpecifierOnResourceArbiter(a1))
          {
            fpfsi_SetupResolutionCapFilter();
            if (!v4 && !fpfsi_CreateAndAddCombinedAudioPreferenceFilter())
            {
              v5 = *(v1 + 40);

              FigAlternateSelectionBossApplyFilters(v5);
            }
          }
        }
      }
    }
  }
}

void fpfs_DeferredAssessItemTransition(const void *a1)
{
  v121 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_744();
  OUTLINED_FUNCTION_335();
  v3 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(v3);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_45();
  if (!v4)
  {
    if (*(DerivedStorage + 80))
    {
      v5 = CMBaseObjectGetDerivedStorage();
      Next = fpfs_getNext(DerivedStorage, *(DerivedStorage + 80));
      if (Next)
      {
        v7 = Next;
        fpfs_GetNextTimeToPlay(v5, 0, &time);
        v16 = OUTLINED_FUNCTION_581(v8, v9, v10, v11, v12, v13, v14, v15, v79, v86, v93, v100, rhs.value, *&rhs.timescale, rhs.epoch, v108, v109, *(&v109 + 1), v110, v111, *(&v111 + 1), v112, kTimerVariability, *(&kTimerVariability + 1), 0, v114, *v115, *&v115[8], *&v115[16], *&v115[24], v116, v117, time.value);
        CMTimeAdd(v18, v16, v17);
        v20 = fpfsi_PredictedEndTime(&v111, *(DerivedStorage + 80), v19);
        OUTLINED_FUNCTION_791(v20, v21, v22, v23, v24, v25, v26, v27, v80, v87, v94, v101, rhs.value, *&rhs.timescale, rhs.epoch, v108, v109, *(&v109 + 1), v110, v111);
        *&rhs.value = kGaplessTransitionDeadlineInterval;
        rhs.epoch = 0;
        CMTimeSubtract(&time, &lhs, &rhs);
        value = time.value;
        flags = time.flags;
        timescale = time.timescale;
        if (time.flags)
        {
          epoch = time.epoch;
          time.value = value;
          time.timescale = timescale;
          OUTLINED_FUNCTION_168(MEMORY[0x1E6960CC0]);
          v38 = OUTLINED_FUNCTION_581(v30, v31, v32, v33, v34, v35, v36, v37, v81, v88, v95, v102, rhs.value, *&rhs.timescale, rhs.epoch, v108, v109, *(&v109 + 1), v110, v111, *(&v111 + 1), v112, lhs.value, *&lhs.timescale, lhs.epoch, v114, *v115, *&v115[8], *&v115[16], *&v115[24], v116, v117, time.value);
          v40 = CMTimeCompare(v38, v39);
          if (v40 >= 1)
          {
            *&time.timescale = *(&v109 + 1);
            time.epoch = v110;
            v48 = OUTLINED_FUNCTION_581(v40, v41, v42, v43, v44, v45, v46, v47, v82, v89, v96, v103, rhs.value, *&rhs.timescale, rhs.epoch, v108, v109, *(&v109 + 1), v110, v111, *(&v111 + 1), v112, value, __SPAIR64__(flags, timescale), epoch, v114, *v115, *&v115[8], *&v115[16], *&v115[24], v116, v117, v109);
            if (CMTimeCompare(v48, v49) <= 0)
            {
              fpfs_TransitionFromItemToItem(*(DerivedStorage + 80), v7);
            }

            else if (dword_1EAF169F0)
            {
              OUTLINED_FUNCTION_21();
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              OUTLINED_FUNCTION_311(os_log_and_send_and_compose_flags_and_os_log_type, v51, v52, v53, v54, v55, v56, v57, v83, v90, v97, v104, SBYTE2(v104), BYTE3(v104), SHIDWORD(v104));
              OUTLINED_FUNCTION_40();
              if (epoch)
              {
                if (a1)
                {
                  v58 = CMBaseObjectGetDerivedStorage();
                  v66 = (v58 + 888);
                }

                else
                {
                  v66 = "";
                }

                v67 = *(DerivedStorage + 80);
                if (v67)
                {
                  v58 = CMBaseObjectGetDerivedStorage();
                  v68 = (v58 + 3096);
                }

                else
                {
                  v68 = "";
                }

                OUTLINED_FUNCTION_791(v58, v59, v60, v61, v62, v63, v64, v65, v84, v91, v98, v105, rhs.value, *&rhs.timescale, rhs.epoch, v108, v109, *(&v109 + 1), v110, v111);
                OUTLINED_FUNCTION_80(v69, v70, v71, v72, v73, v74, v75, v76, v85, v92, v99, v106, rhs.value, *&rhs.timescale, rhs.epoch, v108, v109);
                CMTimeSubtract(&time, &lhs, &rhs);
                Seconds = CMTimeGetSeconds(&time);
                v78 = *(DerivedStorage + 80);
                LODWORD(lhs.value) = 136316674;
                *(&lhs.value + 4) = "fpfs_DeferredAssessItemTransition";
                LOWORD(lhs.flags) = 2048;
                *(&lhs.flags + 2) = a1;
                HIWORD(lhs.epoch) = 2082;
                v114 = v66;
                *v115 = 2048;
                *&v115[2] = v67;
                *&v115[10] = 2082;
                *&v115[12] = v68;
                *&v115[20] = 2048;
                *&v115[22] = Seconds;
                *&v115[30] = 2048;
                v116 = v78;
                OUTLINED_FUNCTION_66();
                OUTLINED_FUNCTION_31();
                OUTLINED_FUNCTION_456();
                OUTLINED_FUNCTION_612();
              }

              OUTLINED_FUNCTION_1();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }
    }
  }

  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  if (a1)
  {
    CFRelease(a1);
  }
}

void fpfs_CommitToGaplessTransition()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v3 = v2;
  v139 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v129 = **&MEMORY[0x1E6960C70];
  memset(__src, 0, 72);
  memset(v127, 0, 72);
  v125 = v129;
  valuePtr = DerivedStorage[20];
  target = 0;
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  HIDWORD(v122) = 2;
  BYTE3(v122) = 0;
  if (!fpfsi_IsEligibleForGaplessTransition() || (fpfs_OkayToAttemptGapless(v3, v1, __src, v127, &v129, v7, v8, v9, sampleTimingArray, v95, sampleSizeArray, v99, v101, v103, v105, v108, v111, v114, v116, v118, v120, v122, valuePtr, target, v125.value, *&v125.timescale, v125.epoch, v126, *v127, *&v127[8], *&v127[16], *&v127[24], *&v127[32], *&v127[40], *&v127[48], *&v127[64], __src[0], *&__src[1], *&__src[3], __src[5], __src[6], __src[7], __src[8], __src[9], v129.value, *&v129.timescale, v129.epoch, v130, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40]), !v10))
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM();
    *(v5 + 2472) = 0;
    goto LABEL_43;
  }

  if (!*(v5 + 2472))
  {
    goto LABEL_43;
  }

  v11 = *&v127[8];
  if (*&v127[8])
  {
    if (*(*&v127[8] + 439))
    {
      goto LABEL_43;
    }
  }

  memcpy(v138, __src, 0x48uLL);
  memcpy(__dst, v127, 0x48uLL);
  fpfs_AreItemsEligibleForGaplessTransition(v3, v138, v1, __dst, &v122 + 1, &v122 + 3);
  if (HIDWORD(v122) != 1 || !fpfsi_AllTracksForMediaTypeArePlaying())
  {
    OUTLINED_FUNCTION_429();
    if (!FigSignalErrorAtGM())
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v12 = __src[2];
  OUTLINED_FUNCTION_360();
  v13 = OUTLINED_FUNCTION_481();
  fpfp_GetTransitionTimebaseStartTime(v13, v14, v15, v16, v17, v18, v19, v20, v21);
  v22 = __src[4];
  if (v12)
  {
    v22 = v12;
  }

  v23 = *(v22 + 112);
  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_19();
  if (CMSampleBufferCreate(v24, v25, v26, v27, v28, v29, v30, v31, 0, 0, 0, &target))
  {
    goto LABEL_41;
  }

  v119 = v11;
  CMSetAttachment(target, *MEMORY[0x1E6960550], v6, 0);
  if (dword_1EAF169F0)
  {
    v115 = v6;
    v117 = v1;
    HIDWORD(v121) = 0;
    BYTE3(v121) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_425();
    if (v34)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }

    if (v35)
    {
      v36 = *DerivedStorage;
      if (*DerivedStorage)
      {
        v37 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v37 = "";
      }

      v113 = v37;
      v107 = v23;
      if (v3)
      {
        v38 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v38 = "";
      }

      v110 = v38;
      HIDWORD(v104) = *(DerivedStorage + 40);
      v39 = OUTLINED_FUNCTION_683();
      fpfs_GetTime(v39, v40);
      Seconds = CMTimeGetSeconds(v138);
      OUTLINED_FUNCTION_360();
      v50.n128_f64[0] = CMTimeGetSeconds(v138);
      v51 = v50.n128_u64[0];
      v52 = v117;
      if (v117)
      {
        v42 = CMBaseObjectGetDerivedStorage();
        v53 = (v42 + 3096);
      }

      else
      {
        v53 = "";
      }

      OUTLINED_FUNCTION_698(v42, v43, v44, v45, v46, v47, v48, v49, sampleTimingArraya, v96, sampleSizeArraya, v100, v102, v104, v107, v110, v113, v6, v117, v119, v121, v122, valuePtr, target, v50, v125.value);
      v54 = CMTimeGetSeconds(v138);
      *__dst = 136317698;
      *&__dst[4] = "fpfs_CommitToGaplessTransition";
      *&__dst[12] = 2048;
      *&__dst[14] = v36;
      *&__dst[22] = 2082;
      *&__dst[24] = v112;
      *&__dst[32] = 2048;
      *&__dst[34] = v3;
      *&__dst[42] = 2082;
      *&__dst[44] = v109;
      *&__dst[52] = 1024;
      *&__dst[54] = HIDWORD(v104);
      *&__dst[58] = 2048;
      *&__dst[60] = Seconds;
      *&__dst[68] = 2048;
      *&__dst[70] = v51;
      v132 = 2048;
      v133 = v52;
      v134 = 2082;
      v135 = v53;
      v136 = 2048;
      v137 = v54;
      LODWORD(v96) = 108;
      sampleTimingArraya = __dst;
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_282();
      _os_log_send_and_compose_impl();
      v23 = v106;
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_635();
    v6 = v115;
    v1 = v117;
  }

  v55 = *(v23 + 32);
  v56 = *(v5 + 576);
  v57 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v57 || (v138[0] = v125, v57(v55, v56, v138, v6, 0, 0)))
  {
    v11 = v119;
    goto LABEL_41;
  }

  fpfs_SetRenderPipelinePropertiesToUpdateAtTransition(v3, v1, v23);
  v11 = v119;
  if (CMBufferQueueEnqueue(*(v23 + 40), target))
  {
LABEL_41:
    *(v5 + 2472) = 0;
    if (v11)
    {
      *(v11 + 439) = 0;
    }

    goto LABEL_43;
  }

  if (!v12 || !v119)
  {
LABEL_36:
    if (!*(v5 + 2473) && *(v5 + 832) && (v129.flags & 1) != 0)
    {
      v80 = *(v5 + 664);
      if (v80)
      {
        v81 = CFArrayGetCount(v80) > 0;
      }

      else
      {
        v81 = 0;
      }

      OUTLINED_FUNCTION_601();
      NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v82, v1, v83, v84, v85, v86, v87, v88, sampleTimingArraya, v96);
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_360();
      v91 = CMTimeCopyAsDictionary(v138, v90);
      CFDictionaryAddValue(NotificationPayloadForProperties, @"FigTime", v91);
      v92 = MEMORY[0x1E695E4C0];
      if (v81)
      {
        v92 = MEMORY[0x1E695E4D0];
      }

      CFDictionaryAddValue(NotificationPayloadForProperties, @"CurrentHasEnqueuedFirstVideoFrame", *v92);
      fpfs_EnqueueNotification(*v5, @"ScheduleNextItemTransitionTimer", v1, NotificationPayloadForProperties);
      if (v91)
      {
        CFRelease(v91);
      }

      if (NotificationPayloadForProperties)
      {
        CFRelease(NotificationPayloadForProperties);
      }

      *(v5 + 2473) = 1;
    }

    goto LABEL_43;
  }

  v58 = *(v119 + 112);
  v59 = *(v12 + 112);
  if (!v58 || v58 == v59)
  {
    *(v119 + 439) = 1;
    fpfsi_RemoveAudioRenderChainListeners(v3, v59);
    v60 = OUTLINED_FUNCTION_770();
    fpfsi_SetRenderChainOnTrackOfItem(v60, v61, v62);
    fpfsi_EnsureRenderChainListenersAndPropertiesForAudioTrack(v119, *(v12 + 112));
    goto LABEL_36;
  }

  if (*(v5 + 1024))
  {
    OUTLINED_FUNCTION_131();
    v64 = MEMORY[0x1E6960C70];
    do
    {
      v65 = *(v63 + 24);
      if (*(v63 + 48) == v23)
      {
        fpfsi_MoveTrackToPlayedOut(v5, v63, v64);
      }

      if (!v65)
      {
        break;
      }

      v63 = v65;
    }

    while (*(v5 + 1024));
    v59 = *(v12 + 112);
    v11 = v119;
  }

  *(v11 + 439) = 1;
  fpfsi_RemoveAudioRenderChainListeners(v3, v59);
  v66 = OUTLINED_FUNCTION_770();
  fpfsi_SetRenderChainOnTrackOfItem(v66, v67, v68);
  v69 = fpfsi_EnsureRenderChainListenersAndPropertiesForAudioTrack(v11, *(v12 + 112));
  OUTLINED_FUNCTION_698(v69, v70, v71, v72, v73, v74, v75, v76, sampleTimingArraya, v96, sampleSizeArraya, v100, v102, v104, v106, v109, v112, v115, v117, v119, v121, v122, valuePtr, target, v77, v125.value);
  fpfs_RestartPlayedOutTracks(v1, v138);
  v78 = OUTLINED_FUNCTION_177();
  if (fpfsi_isTrackInLists(v78, v79, 1u))
  {
    goto LABEL_36;
  }

LABEL_43:
  if (v6)
  {
    CFRelease(v6);
  }

  if (target)
  {
    CFRelease(target);
  }

  OUTLINED_FUNCTION_191();
}

BOOL fpfsi_IsEligibleForGaplessTransition()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_251();
  CMBaseObjectGetDerivedStorage();
  if (!*(v0 + 49))
  {
    return 0;
  }

  v1 = *(v0 + 688);
  v2 = *(v0 + 80);
  Count = CFArrayGetCount(*(v0 + 72));
  if (v2)
  {
    v4 = Count + 1;
  }

  else
  {
    v4 = Count;
  }

  return FigPlaybackGetEffectiveActionAtEnd(v1, v4) == 0;
}

void fpfs_OkayToAttemptGapless(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 a35, __int128 a36, uint64_t a37, __int128 a38, __int128 a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  OUTLINED_FUNCTION_564();
  a53 = v55;
  a54 = v60;
  v62 = v61;
  a40 = *MEMORY[0x1E69E9840];
  if (v61)
  {
    v63 = v56;
    if (v56)
    {
      v64 = v59;
      v65 = v58;
      v66 = v57;
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_500();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(v54 + 463))
      {
        if (*(DerivedStorage + 463))
        {
          fpfsi_gatherInterestingGaplessInfoForItem(v62, &a35);
          v94 = a35;
          v95 = a36;
          v96 = a37;
          v89 = a38;
          *v97 = *(&a38 + 1);
          *&v97[7] = *(&a38 + 1);
          v68 = *(&a39 + 4);
          v69 = a39;
          v87 = HIDWORD(a39);
          fpfsi_gatherInterestingGaplessInfoForItem(v63, &a35);
          v91 = a35;
          v92 = a36;
          v93 = a37;
          v88 = a38;
          *v90 = *(&a38 + 1);
          *&v90[15] = a39;
          v70 = CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_248(v70);
          v71 = CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_194();
          if (fpfs_FirstTrackWithFormatDescriptionOfType(v72, v73))
          {
            v74 = STACK[0x3F8] != 0;
          }

          else
          {
            v74 = 1;
          }

          if (fpfs_CanRenderVideo(v71, v62))
          {
            OUTLINED_FUNCTION_301();
            if (fpfs_FirstTrackWithFormatDescriptionOfType(v75, v76))
            {
              if (v74)
              {
                v74 = STACK[0x400] != 0;
              }
            }
          }

          if (v74 && fpfsi_PumpHasEndedOrBufferedBeyondEndTime() && (v69 & 1) != 0 && v89 == 1 && v88 == 1)
          {
            CMBaseObjectGetDerivedStorage();
            fpfs_GetItemBufferedDuration(v63);
            OUTLINED_FUNCTION_185();
            fpfs_CheckCanKeepUp(v78, v79, v80, v81, v82, v83, v84, v85);
            v86 = 0.0;
            if (fpfs_GetGaplessTransitionBufferingProgressThreshold_onceToken != -1)
            {
              dispatch_once(&fpfs_GetGaplessTransitionBufferingProgressThreshold_onceToken, &__block_literal_global_229);
              v86 = 0.0;
            }

            if (*&gGaplessTransitionBufferingProgressThreshold <= v86)
            {
              a35 = 0uLL;
              *&a36 = 0;
              fpfsi_GetDuration(v63, &a35);
            }
          }

          if (v66)
          {
            *v66 = v94;
            *(v66 + 16) = v95;
            *(v66 + 32) = v96;
            *(v66 + 40) = v89;
            *(v66 + 41) = *v97;
            *(v66 + 48) = *&v97[7];
            *(v66 + 56) = v69;
            *(v66 + 60) = v68;
            *(v66 + 68) = v87;
          }

          if (v65)
          {
            *v65 = v91;
            *(v65 + 16) = v92;
            *(v65 + 32) = v93;
            *(v65 + 40) = v88;
            *(v65 + 41) = *v90;
            *(v65 + 56) = *&v90[15];
          }

          if (v64)
          {
            *v64 = *&v97[3];
            *(v64 + 8) = *&v97[11];
            *(v64 + 12) = v69;
            *(v64 + 16) = v68;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_463();
}

uint64_t fpfs_ShouldEnableSpatializationForTrack(uint64_t a1)
{
  v10 = 0;
  v2 = *(a1 + 16);
  CMBaseObjectGetDerivedStorage();
  AudioFormatDescriptionSpatializationEligibility = FPSupport_GetAudioFormatDescriptionSpatializationEligibility(*(a1 + 56), &v10);
  CurrentAudioPersistentIDFromMediaOption = fpfsi_GetCurrentAudioPersistentIDFromMediaOption();
  FigAlternateGetSpecializedAudioChannelUsage(*(a1 + 456), CurrentAudioPersistentIDFromMediaOption);
  AudioRouteSpatializationCapabilities = fpfsi_getAudioRouteSpatializationCapabilities(v2);
  v7 = (AudioRouteSpatializationCapabilities & 6) != 0 && AudioFormatDescriptionSpatializationEligibility == 1;
  return AudioFormatDescriptionSpatializationEligibility == 2 && (AudioRouteSpatializationCapabilities & 1) != 0 || v7;
}

void fpfsi_sendLoudnessInfoMarkerSampleBufferToAudioRenderPipeline()
{
  OUTLINED_FUNCTION_369();
  v12 = 0;
  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_19();
  if (!CMSampleBufferCreate(v1, v2, v3, v4, v5, v6, v7, v8, 0, 0, 0, &v12))
  {
    CMSetAttachment(v12, *MEMORY[0x1E6962DF0], v0, 0);
    FigGetAllocatorForMedia();
    v9 = OUTLINED_FUNCTION_199();
    FigRenderPipelineGetFigBaseObject(v9);
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v10 = OUTLINED_FUNCTION_236();
      if (!v11(v10))
      {
        CMBufferQueueEnqueue(0, v12);
      }
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

void fpfsi_RTCReportingUpdateBufferDuration(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_369();
    if (*(v4 + 1072) & 1) != 0 && (*(v3 + 12))
    {
      v5 = *(v2 + 2568);
      OUTLINED_FUNCTION_89();
      CMTimeGetSeconds(&v17);
      if (v5)
      {
        if (*(*(OUTLINED_FUNCTION_854() + 16) + 56))
        {
          v6 = OUTLINED_FUNCTION_715();
          v7(v6);
        }
      }
    }

    if (*(v2 + 1072) & 2) != 0 && (*(v3 + 36))
    {
      v8 = *(v2 + 2568);
      *&v17.value = *(v3 + 24);
      OUTLINED_FUNCTION_447();
      CMTimeGetSeconds(v9);
      if (v8)
      {
        if (*(*(OUTLINED_FUNCTION_854() + 16) + 56))
        {
          v10 = OUTLINED_FUNCTION_715();
          v11(v10);
        }
      }
    }

    if (*(v2 + 1072) & 4) != 0 && (*(v3 + 60))
    {
      v12 = *(v2 + 2568);
      *&v17.value = *(v3 + 48);
      OUTLINED_FUNCTION_447();
      CMTimeGetSeconds(v13);
      if (v12)
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v14 = OUTLINED_FUNCTION_113();
          v15(v14);
        }
      }
    }

    if (*(v2 + 2568))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_730(1000.0);
        OUTLINED_FUNCTION_242();
        v16();
      }
    }
  }
}

void fpfsi_getSeekableTimeRange(_OWORD *a1@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = MEMORY[0x1E6960C98];
  v4 = *MEMORY[0x1E6960C98];
  v5 = *(MEMORY[0x1E6960C98] + 16);
  *a1 = *MEMORY[0x1E6960C98];
  a1[1] = v5;
  v6 = *(v3 + 32);
  a1[2] = v6;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  fpfsi_getPumpAvailableTimeRange(DerivedStorage, &v16);
  if (v7 || (BYTE12(v16) & 1) == 0 || (BYTE4(v18) & 1) == 0 || *(&v18 + 1) || (*(&v17 + 1) & 0x8000000000000000) != 0)
  {

    fpfsi_TotalTimeRangeInBuffer();
  }

  else
  {
    OUTLINED_FUNCTION_733(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17, v15);
  }
}

void fpfsi_EnqueueEndTimeChangedNotification()
{
  CMBaseObjectGetDerivedStorage();
  v0 = OUTLINED_FUNCTION_171();
  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v0, v1, v2, v3, v4, v5, v6, v7, @"EndTime", 0);
  v9 = OUTLINED_FUNCTION_308();
  fpfs_EnqueueNotification(v9, v10, v11, NotificationPayloadForProperties);
  if (NotificationPayloadForProperties)
  {

    CFRelease(NotificationPayloadForProperties);
  }
}

void fpfsi_UpdateTaggedRangeMetadataFromPumpAndNotifyIfNeeded()
{
  OUTLINED_FUNCTION_187();
  v0 = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 912))
  {
    fpfsi_CopyCurrentDate();
  }
}

uint64_t fpfsi_CopyDateForTime()
{
  OUTLINED_FUNCTION_207();
  v12 = 0uLL;
  v13 = 0;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_89();
  DateEntryForTime = fpfsi_getDateEntryForTime(v1, &v11, 1);
  if (!DateEntryForTime)
  {
    return 4294954513;
  }

  v3 = DateEntryForTime;
  fpfsi_getDateEntryTimelineOrigin(DateEntryForTime, &v12);
  v4 = MEMORY[0x19A8CCD90](*(v3 + 16));
  OUTLINED_FUNCTION_89();
  v5 = v4 + CMTimeGetSeconds(&v11);
  *&v11.value = v12;
  OUTLINED_FUNCTION_447();
  v7 = v5 - CMTimeGetSeconds(v6);
  AllocatorForMedia = FigGetAllocatorForMedia();
  v9 = CFDateCreate(AllocatorForMedia, v7);
  result = 0;
  *v0 = v9;
  return result;
}

uint64_t fpfsi_getDateEntryForTime(uint64_t a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = **(*(DerivedStorage + 1600) + 8);
  if (v5)
  {
    v6 = DerivedStorage;
    while (1)
    {
      v7 = **(*(v5 + 8) + 8);
      if (*(v5 + 84))
      {
        OUTLINED_FUNCTION_230();
        fpfsi_getDateEntryTimelineOrigin(v5, v8);
        if (!v7)
        {
          break;
        }

        OUTLINED_FUNCTION_332();
        OUTLINED_FUNCTION_150(v9, v10, v11, v12, v13, v14, v15, v16, v50, v53, v56, v59, v62, v65, v66, v67);
        v25 = OUTLINED_FUNCTION_175(v17, v18, v19, v20, v21, v22, v23, v24, v51, v54, v57, v60, v63);
        if ((CMTimeCompare(v25, v26) & 0x80000000) == 0)
        {
          break;
        }
      }

      v5 = v7;
      if (!v7)
      {
        if (!a3)
        {
          return 0;
        }

        v27 = **(*(v6 + 1600) + 8);
        if (!v27)
        {
          return 0;
        }

        v28 = **(*(v27 + 8) + 8);
        OUTLINED_FUNCTION_230();
        fpfsi_getDateEntryTimelineOrigin(v27, v29);
        if (!v28)
        {
          return v27;
        }

        do
        {
          v5 = v27;
          v27 = v28;
          OUTLINED_FUNCTION_332();
          OUTLINED_FUNCTION_150(v30, v31, v32, v33, v34, v35, v36, v37, v50, v53, v56, v59, v62, v65, v66, v67);
          v46 = OUTLINED_FUNCTION_175(v38, v39, v40, v41, v42, v43, v44, v45, v52, v55, v58, v61, v64);
          if ((CMTimeCompare(v46, v47) & 0x80000000) == 0)
          {
            break;
          }

          v28 = **(*(v28 + 8) + 8);
          OUTLINED_FUNCTION_230();
          fpfsi_getDateEntryTimelineOrigin(v27, v48);
          v5 = v27;
        }

        while (v28);
        return v5;
      }
    }
  }

  return v5;
}

void fpfsi_StartDownloadingToURL(uint64_t a1)
{
  v9 = 0;
  v10 = 0;
  v8 = 0;
  if (!*(a1 + 912))
  {
    OUTLINED_FUNCTION_376();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_400();
  if (!FigAssetDownloadCoordinatorCopyClientBundleIdentifierForAsset(*(v2 + 32), &v10))
  {
    if (!v10 || (FigBytePumpGetFigBaseObject(*(v1 + 912)), *(*(CMBaseObjectGetVTable() + 8) + 56)) && (v3 = OUTLINED_FUNCTION_501(), !v4(v3)))
    {
      FigGetAllocatorForMedia();
      v5 = OUTLINED_FUNCTION_702();
      FigAssetGetCMBaseObject(v5);
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v6 = OUTLINED_FUNCTION_501();
        if (!v7(v6))
        {
          OUTLINED_FUNCTION_376();
LABEL_10:
          FigSignalErrorAtGM();
        }
      }
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  OUTLINED_FUNCTION_860();
}

void fpfsi_DeferredHandleTimebaseEffectiveRateChanged()
{
  OUTLINED_FUNCTION_182();
  v1 = v0;
  v245 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *DerivedStorage;
  v4 = CMBaseObjectGetDerivedStorage();
  *&v232.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v232.epoch = v5;
  v159 = *&v232.value;
  *&v230.value = *&v232.value;
  v230.epoch = v5;
  v6 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_248(v6);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_526();
  Rate = CMTimebaseGetRate(*(DerivedStorage + 576));
  CMTimebaseGetTime(&v230, *(DerivedStorage + 576));
  FigCFDictionaryGetCMTimeIfPresent();
  if ((v232.flags & 1) == 0)
  {
    v232 = v230;
  }

  LODWORD(v8) = -353280000;
  v9 = MEMORY[0x1E695FF58];
  if (Rate == 0.0)
  {
    if (!dword_1EAF169F0)
    {
      goto LABEL_75;
    }

    v29 = OUTLINED_FUNCTION_555();
    OUTLINED_FUNCTION_840(v29, v30, v31, v32, v33, v34, v35, v36, v135, v141, v147, v153, v159.n128_i64[0], v159.n128_i64[1], v172, v178, v184, v190, v196, v202, v208, v213, v219.value, *&v219.timescale, v219.epoch, v220, v221, *(&v221 + 1), v222, v223, v224, v225, v226.value);
    OUTLINED_FUNCTION_28();
    if (v3)
    {
      v28 = (CMBaseObjectGetDerivedStorage() + 888);
      if (v1)
      {
LABEL_20:
        v37 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_41:
        OUTLINED_FUNCTION_42();
        CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_93();
        CMTimeGetSeconds(&time);
        LODWORD(v234) = 136316930;
        OUTLINED_FUNCTION_76("fpfsi_DeferredHandleTimebaseEffectiveRateChanged");
        v237 = v28;
        OUTLINED_FUNCTION_357(v106);
        *(&v239 + 4) = v37;
        OUTLINED_FUNCTION_92(v107);
        *(v242 + 2) = v108;
        OUTLINED_FUNCTION_49();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl();
        v9 = MEMORY[0x1E695FF58];
LABEL_42:
        OUTLINED_FUNCTION_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_75;
      }
    }

    else
    {
      v28 = "";
      if (v1)
      {
        goto LABEL_20;
      }
    }

    v37 = "";
    goto LABEL_41;
  }

  v10 = CMBaseObjectGetDerivedStorage();
  if (*(v10 + 3356))
  {
    v11 = v10;
    v12 = v4;
    v13 = (v10 + 3344);
    v14 = (FigGetUpTimeNanoseconds() - *(v10 + 3336));
    OUTLINED_FUNCTION_162();
    v15 = (v14 + CMTimeGetSeconds(&time) * -1000000000.0) / 0xF4240uLL;
    if (v15 >= 1)
    {
      v16 = *(v11 + 2568);
      if (v16)
      {
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v17)
        {
          v17(v16, @"playerStats", 0x1F0B67578, v15 & 0x7FFFFFFF);
        }
      }
    }

    *(v11 + 3336) = 0;
    *v13 = v159;
    v13[1].n128_u64[0] = v5;
    v4 = v12;
    v9 = MEMORY[0x1E695FF58];
    v8 = &unk_1EAF16000;
  }

  TimebaseStarterTrack = fpfsi_getTimebaseStarterTrack();
  if (!TimebaseStarterTrack || (v19 = TimebaseStarterTrack, (*(TimebaseStarterTrack + 388) & 1) == 0))
  {
    if (!dword_1EAF169F0)
    {
      goto LABEL_75;
    }

    v20 = OUTLINED_FUNCTION_555();
    OUTLINED_FUNCTION_840(v20, v21, v22, v23, v24, v25, v26, v27, v135, v141, v147, v153, v159.n128_i64[0], v159.n128_i64[1], v172, v178, v184, v190, v196, v202, v208, v213, v219.value, *&v219.timescale, v219.epoch, v220, v221, *(&v221 + 1), v222, v223, v224, v225, v226.value);
    OUTLINED_FUNCTION_28();
    if (!v8)
    {
      goto LABEL_42;
    }

    if (v3)
    {
      v28 = (CMBaseObjectGetDerivedStorage() + 888);
      if (v1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v28 = "";
      if (v1)
      {
        goto LABEL_20;
      }
    }

    v37 = "";
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_42();
  FPSTimelineConverterL3TimeToL4();
  OUTLINED_FUNCTION_162();
  FPSTimelineConverterL3TimeToL4();
  OUTLINED_FUNCTION_93();
  FPSTimelineConverterL3TimeToL4();
  OUTLINED_FUNCTION_709(v38, v39, v40, v41, v42, v43, v44, v45, v135, v141, v147, v4, v159.n128_i64[0], v159.n128_i64[1], v172, v178, v184, v190, v196, v202, v208, v213, v219.value, *&v219.timescale, v219.epoch, v220, v159.n128_i64[0], v159.n128_i64[1], v5, v159, 0);
  v54 = OUTLINED_FUNCTION_578(v46, v47, v48, v49, v50, v51, v52, v53, v136, v142, v148, v154, v160, v167, v173, v179, v185, v191, v197, v203, v209, v214, v219.value, *&v219.timescale, v219.epoch, v220, v221, *(&v221 + 1), v222, v223, 0, 0, 0, 0, 0, 0, 0, 0, v230.value, *&v230.timescale, v230.epoch, v231, v232.value, *&v232.timescale, v232.epoch, v233, 0, 0, 0, v237, v238, v239, *(&v239 + 1), v240, v241, v242[0], v242[1], v242[2], v242[3], v243, time.value);
  if (CMTimeCompare(v54, v55) < 0)
  {
    time = v226;
    OUTLINED_FUNCTION_789();
    v101 = OUTLINED_FUNCTION_578(v93, v94, v95, v96, v97, v98, v99, v100, v137, v143, v149, v155, v161, v168, v174, v180, v186, v192, v198, v204, v210, v215, 0, 0, 0, v220, v221, *(&v221 + 1), v222, v223, v224, v225, v226.value, *&v226.timescale, v226.epoch, v227, v228, v229, v230.value, *&v230.timescale, v230.epoch, v231, v232.value, *&v232.timescale, v232.epoch, v233, v234, v235, v236, v237, v238, v239, *(&v239 + 1), v240, v241, v242[0], v242[1], v242[2], v242[3], v243, time.value);
    CMTimeSubtract(v103, v101, v102);
    if (dword_1EAF169F0)
    {
      LODWORD(v207) = 0;
      LOBYTE(v189) = 0;
      v104 = OUTLINED_FUNCTION_638();
      os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_28();
      if (v8)
      {
        if (v3)
        {
          v105 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v105 = "";
        }

        v166 = v105;
        if (v1)
        {
          v117 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v117 = "";
        }

        OUTLINED_FUNCTION_42();
        CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_93();
        Seconds = CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_162();
        v119 = CMTimeGetSeconds(&time);
        *&time.timescale = *&v219.timescale;
        OUTLINED_FUNCTION_451(v219.epoch, v140, v146, v152, v158, v166, v171, v177, v183, v189, v195, v201, v207, *(&v207 + 1), v218, v219.value, *&v219.timescale, v219.epoch, v220, v221, *(&v221 + 1), v222, v223, v224, v225, v226.value, *&v226.timescale, v226.epoch, v227, v228, v229, v230.value, *&v230.timescale, v230.epoch, v231, v232.value, *&v232.timescale, v232.epoch, v233, v234, v235, v236, v237, v238, v239, *(&v239 + 1), v240, v241, v242[0], v242[1], v242[2], v242[3], v243, v219.value);
        LODWORD(v234) = 136317442;
        OUTLINED_FUNCTION_76("fpfsi_DeferredHandleTimebaseEffectiveRateChanged");
        v237 = v164;
        OUTLINED_FUNCTION_357(v120);
        *(&v239 + 4) = v117;
        OUTLINED_FUNCTION_92(v121);
        *(v242 + 2) = Seconds;
        WORD1(v242[1]) = v122;
        *(&v242[1] + 4) = v119;
        WORD2(v242[2]) = v122;
        *(&v242[2] + 6) = v123;
        OUTLINED_FUNCTION_49();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v221 = *&v219.value;
    epoch = v219.epoch;
  }

  else
  {
    OUTLINED_FUNCTION_168(MEMORY[0x1E6960CC0]);
    v56 = *(v19 + 112);
    if (v56 && *(v56 + 32))
    {
      time.value = 0;
      FigGetAllocatorForMedia();
      v57 = OUTLINED_FUNCTION_267();
      FigRenderPipelineGetFigBaseObject(v57);
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v58 = OUTLINED_FUNCTION_148();
        v59(v58);
      }

      if (time.value)
      {
        CMTimeMakeFromDictionary(&v219, time.value);
        CFRelease(time.value);
      }
    }

    OUTLINED_FUNCTION_744();
    OUTLINED_FUNCTION_709(v60, v61, v62, v63, v64, v65, v66, v67, v137, v143, v149, v155, v161, v168, v174, v180, v186, v192, v198, v204, v210, v215, v219.value, *&v219.timescale, v219.epoch, v220, v221, *(&v221 + 1), v222, v68, v223);
    v77 = OUTLINED_FUNCTION_578(v69, v70, v71, v72, v73, v74, v75, v76, v138, v144, v150, v156, v162, v169, v175, v181, v187, v193, v199, v205, v211, v216, v219.value, *&v219.timescale, v219.epoch, v220, v221, *(&v221 + 1), v222, v223, v224, v225, v226.value, *&v226.timescale, v226.epoch, v227, v228, v229, v230.value, *&v230.timescale, v230.epoch, v231, v232.value, *&v232.timescale, v232.epoch, v233, v219.value, *&v219.timescale, v219.epoch, v237, v238, v239, *(&v239 + 1), v240, v241, v242[0], v242[1], v242[2], v242[3], v243, time.value);
    CMTimeAdd(v79, v77, v78);
    OUTLINED_FUNCTION_789();
    *&time.timescale = v194;
    time.epoch = v200;
    v88 = OUTLINED_FUNCTION_578(v80, v81, v82, v83, v84, v85, v86, v87, v139, v145, v151, v157, v163, v170, v176, v182, v188, v194, v200, v206, v212, v217, v219.value, *&v219.timescale, v219.epoch, v220, v221, *(&v221 + 1), v222, v223, v224, v225, v226.value, *&v226.timescale, v226.epoch, v227, v228, v229, v230.value, *&v230.timescale, v230.epoch, v231, v232.value, *&v232.timescale, v232.epoch, v233, v234, v235, v236, v237, v238, v239, *(&v239 + 1), v240, v241, v242[0], v242[1], v242[2], v242[3], v243, v188);
    CMTimeSubtract(v90, v88, v89);
    if (dword_1EAF169F0)
    {
      LODWORD(v189) = 0;
      HIBYTE(v183) = 0;
      v91 = OUTLINED_FUNCTION_637();
      os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_28();
      if (v8)
      {
        if (v3)
        {
          v92 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v92 = "";
        }

        v165 = v92;
        if (v1)
        {
          v109 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v109 = "";
        }

        OUTLINED_FUNCTION_42();
        CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_93();
        v110 = CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_162();
        v111 = CMTimeGetSeconds(&time);
        *&time.timescale = *(&v207 + 1);
        OUTLINED_FUNCTION_451(v218, v140, v146, v152, v158, v165, v171, v177, v183, v189, v195, v201, v207, *(&v207 + 1), v218, v219.value, *&v219.timescale, v219.epoch, v220, v221, *(&v221 + 1), v222, v223, v224, v225, v226.value, *&v226.timescale, v226.epoch, v227, v228, v229, v230.value, *&v230.timescale, v230.epoch, v231, v232.value, *&v232.timescale, v232.epoch, v233, v234, v235, v236, v237, v238, v239, *(&v239 + 1), v240, v241, v242[0], v242[1], v242[2], v242[3], v243, v207);
        LODWORD(v234) = 136317442;
        OUTLINED_FUNCTION_76("fpfsi_DeferredHandleTimebaseEffectiveRateChanged");
        v237 = v164;
        OUTLINED_FUNCTION_357(v112);
        *(&v239 + 4) = v109;
        OUTLINED_FUNCTION_92(v113);
        *(v242 + 2) = v110;
        WORD1(v242[1]) = v114;
        *(&v242[1] + 4) = v111;
        WORD2(v242[2]) = v114;
        *(&v242[2] + 6) = v115;
        OUTLINED_FUNCTION_49();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v221 = v207;
    epoch = v218;
  }

  v222 = epoch;
  v4 = v158;
  if (!*(DerivedStorage + 2619))
  {
    *(DerivedStorage + 2619) = 1;
    v124 = *(DerivedStorage + 2568);
    *&time.timescale = *(&v221 + 1);
    OUTLINED_FUNCTION_451(v222, v140, v146, v152, v158, v164, v171, v177, v183, v189, v195, v201, v207, *(&v207 + 1), v218, v219.value, *&v219.timescale, v219.epoch, v220, v221, *(&v221 + 1), v222, v223, v224, v225, v226.value, *&v226.timescale, v226.epoch, v227, v228, v229, v230.value, *&v230.timescale, v230.epoch, v231, v232.value, *&v232.timescale, v232.epoch, v233, v234, v235, v236, v237, v238, v239, *(&v239 + 1), v240, v241, v242[0], v242[1], v242[2], v242[3], v243, v221);
    if (v124 && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v125 = OUTLINED_FUNCTION_489();
      v126(v125);
    }

    v127 = *(DerivedStorage + 2568);
    CFAbsoluteTimeGetCurrent();
    if (v127 && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v128 = OUTLINED_FUNCTION_489();
      v129(v128);
    }

    v130 = CMBaseObjectGetDerivedStorage();
    FigGetUpTimeNanoseconds();
    if (*(v130 + 2072))
    {
      v131 = *(v130 + 2568);
      if (v131)
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          OUTLINED_FUNCTION_405();
          v134(v131, 0x1F0B64678, 0x1F0B676D8, v132 / v133, 1);
        }
      }
    }

    if (!*(v130 + 2621))
    {
      *(v130 + 2621) = 1;
      fpfsi_RTCReportingReportStartupPerformanceMetrics();
    }
  }

  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    strncpy(&time, (DerivedStorage + 3096), 8uLL);
    OUTLINED_FUNCTION_42();
    CMTimeGetSeconds(&time);
    *&time.timescale = *(&v221 + 1);
    OUTLINED_FUNCTION_451(v222, v140, v146, v152, v158, v164, v171, v177, v183, v189, v195, v201, v207, *(&v207 + 1), v218, v219.value, *&v219.timescale, v219.epoch, v220, v221, *(&v221 + 1), v222, v223, v224, v225, v226.value, *&v226.timescale, v226.epoch, v227, v228, v229, v230.value, *&v230.timescale, v230.epoch, v231, v232.value, *&v232.timescale, v232.epoch, v233, v234, v235, v236, v237, v238, v239, *(&v239 + 1), v240, v241, v242[0], v242[1], v242[2], v242[3], v243, v221);
    kdebug_trace();
  }

  fpfsi_scheduleFVTTransitionsForItem(v1, 3, 0);
LABEL_75:
  if (*v9 == 1)
  {
    OUTLINED_FUNCTION_42();
    CMTimeGetSeconds(&time);
    kdebug_trace();
  }

  if (!*(v4 + 52) && !FigRetainProxyIsInvalidated() && fpfs_EnsureScanningBoundaryTimer(v1) == -12863)
  {
    fpfs_HandleScanningBoundaryTimerEnd(v1);
  }

  if (*v9 == 1)
  {
    OUTLINED_FUNCTION_42();
    CMTimeGetSeconds(&time);
    kdebug_trace();
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v3);
  if (v1)
  {
    CFRelease(v1);
  }

  OUTLINED_FUNCTION_181();
}

uint64_t fpfsi_updateOutputsForAllAggregateVideoDestinations()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 1024);
  if (v1)
  {
    v2 = 0;
    do
    {
      if (*(v1 + 48) == 1986618469)
      {
        if (!*(v1 + 104))
        {
          break;
        }

        if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
        {
          return 4294954514;
        }

        v3 = OUTLINED_FUNCTION_184();
        result = v4(v3);
        v2 = v1;
        if (result)
        {
          return result;
        }
      }

      v1 = *(v1 + 24);
    }

    while (v1);
    if (v2)
    {
      return 0;
    }
  }

  if (*(DerivedStorage + 752))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 8))
    {
      v6 = OUTLINED_FUNCTION_265();
      v7(v6);
    }
  }

  return 0;
}

void fpfs_createDataChannelConfigurationAndSetIdentifiers()
{
  OUTLINED_FUNCTION_629();
  v28 = v1;
  v29 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  info = v11;
  v14 = v13;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_522();
  v15 = OUTLINED_FUNCTION_249();
  Mutable = CFDictionaryCreateMutable(v15, v16, v17, v18);
  v20 = CFStringCreateWithCString(v8, (v0 + 888), 0x600u);
  OUTLINED_FUNCTION_236();
  FigCFDictionarySetValue();
  if (!v14)
  {
    goto LABEL_16;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = CFStringCreateWithCString(v8, (DerivedStorage + 3096), 0x600u);
  OUTLINED_FUNCTION_521();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (!info)
  {
    goto LABEL_17;
  }

  info = info[3].info;
  if (!info)
  {
    goto LABEL_17;
  }

  v22 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v22)
  {
    if (v22(info, &appendedString))
    {
      info = 0;
    }

    else
    {
      if (!appendedString)
      {
        goto LABEL_16;
      }

      v26 = 0;
      AllocatorForMedia = FigGetAllocatorForMedia();
      info = CFStringCreateMutable(AllocatorForMedia, 0);
      CFStringAppend(info, appendedString);
      if (!v10)
      {
LABEL_13:
        if (!info)
        {
          goto LABEL_17;
        }

        FigCFDictionarySetValue();
        if (!v4)
        {
          goto LABEL_17;
        }

        *v4 = info;
LABEL_16:
        info = 0;
LABEL_17:
        FigDataChannelConfigurationCreate(v8, Mutable, v6);
        goto LABEL_18;
      }

      v24 = *(v10 + 104);
      if (v24)
      {
        v25 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v25)
        {
          if (!v25(v24, &v26))
          {
            CFStringAppend(info, @"/");
            CFStringAppend(info, v26);
            if (v26)
            {
              CFRelease(v26);
            }

            goto LABEL_13;
          }
        }
      }
    }
  }

  else
  {
    info = 0;
  }

LABEL_18:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (info)
  {
    CFRelease(info);
  }

  if (appendedString)
  {
    CFRelease(appendedString);
  }

  OUTLINED_FUNCTION_320();
}

uint64_t fpfs_CreateAppliedMediaArray(uint64_t a1, CFTypeRef *a2)
{
  OUTLINED_FUNCTION_180(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2)
  {
    return 0;
  }

  v5 = DerivedStorage;
  *a2 = 0;
  if (*(DerivedStorage + 761))
  {
    v6 = fpfs_CopyMediaSelectionArrayAndMarkOptionsAvailableOffline(v2);
    v7 = v6;
    v8 = *(v2 + 1808);
    if (!v8)
    {
      v8 = *(v5 + 768);
    }

    v9 = FigAutomaticMediaSelectionCreateSelectedMediaArrayForCriteriaWithLegibleFallbackCriteria(v6, *(v2 + 1760), *(v5 + 744), *(v2 + 1784), *(v2 + 1792), *(v5 + 752), v8, *(v5 + 760), *(v2 + 1844), &cf);
    if (v7)
    {
      CFRelease(v7);
    }

    v10 = cf;
    if (v9)
    {
      if (cf)
      {
        CFRelease(cf);
      }

      return v9;
    }
  }

  else
  {
    v10 = *(v2 + 1760);
    cf = v10;
    if (v10)
    {
      CFRetain(v10);
    }
  }

  v12 = OUTLINED_FUNCTION_563();
  if (fpfs_FindMediaTypeInMediaArray(v10, v12, 0))
  {
    fpfs_updateClosedCaptionsDisplay();
  }

  v9 = 0;
  *a2 = cf;
  return v9;
}

uint64_t fpfsi_UpdateEligibilityForEnhancedDialogue()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_194();
  fpfs_GetOptionsDictionaryForSelectedMediaType(v3);
  result = FigCFDictionaryGetValue();
  *(v0 + 1776) = result != 0;
  v5 = *(v1 + 536);
  if (result)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v6 = MEMORY[0x1E695E4D0];
  }

  if (v5)
  {
    VTable = CMBaseObjectGetVTable();
    v9 = *(VTable + 16);
    result = VTable + 16;
    v8 = v9;
    if (v9)
    {
      v10 = *(v8 + 56);
      if (v10)
      {
        v11 = *v6;

        return v10(v5, @"ContentIsEligibleForEnhancedDialogue", v11);
      }
    }
  }

  return result;
}

void fpfs_FindAndSetForcedSubtitle(uint64_t a1)
{
  v2 = *(a1 + 1800);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 1800) = 0;
  }

  OUTLINED_FUNCTION_312();
  if (fpfs_IsClosedCaptioningSelected())
  {
    v3 = fpfs_CopyMediaSelectionArrayAndMarkOptionsAvailableOffline(a1);
    OUTLINED_FUNCTION_563();
    v4 = OUTLINED_FUNCTION_399();
    MediaTypeInMediaArray = fpfs_FindMediaTypeInMediaArray(v4, v5, 0);
    FigGetCFStringForOSTypeValue();
    v7 = OUTLINED_FUNCTION_399();
    fpfs_FindMediaTypeInMediaArray(v7, v8, 0);
    *(a1 + 1800) = FigAutomaticMediaSelectionCreateSecondaryForcedSubtitlesSelectedMediaDictionary(*(a1 + 1768), MediaTypeInMediaArray);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

void fpfs_CancelSeekIfNeeded()
{
  OUTLINED_FUNCTION_460();
  v45 = v3;
  v46 = v4;
  OUTLINED_FUNCTION_187();
  v44 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(MEMORY[0x1E6960CA8] + 16);
  *&v28.start.value = *MEMORY[0x1E6960CA8];
  *&v28.start.epoch = v6;
  *&v28.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
  if (*(DerivedStorage + 332))
  {
    v7 = DerivedStorage;
    if (*(DerivedStorage + 912))
    {
      fpfsi_getSeekableTimeRange(&v28);
      *&time.start.value = *&v28.start.value;
      time.start.epoch = v28.start.epoch;
      Seconds = CMTimeGetSeconds(&time.start);
      time = v28;
      CMTimeRangeGetEnd(&v29, &time);
      v9 = CMTimeGetSeconds(&v29);
      if (*(v7 + 1484))
      {
        *&time.start.value = *(v7 + 1472);
        time.start.epoch = *(v7 + 1488);
        v10 = CMTimeGetSeconds(&time.start);
        *&time.start.value = *(v7 + 1472);
        v11 = *(v7 + 1488);
      }

      else
      {
        if (*(v7 + 356))
        {
          time.start.epoch = *(v7 + 360);
          *&time.start.value = *(v7 + 344);
        }

        else
        {
          *&time.start.value = *(v7 + 320);
          time.start.epoch = *(v7 + 336);
        }

        v10 = CMTimeGetSeconds(&time.start);
        if (*(v7 + 380))
        {
          *&time.start.value = *(v7 + 368);
          v11 = *(v7 + 384);
        }

        else
        {
          *&time.start.value = *(v7 + 320);
          v11 = *(v7 + 336);
        }
      }

      time.start.epoch = v11;
      v12 = CMTimeGetSeconds(&time.start);
      if (v12 >= Seconds && v10 <= v9)
      {
        *(v7 + 2216) = *(v7 + 2220);
      }

      else
      {
        if (dword_1EAF169F0)
        {
          v14 = OUTLINED_FUNCTION_48();
          OUTLINED_FUNCTION_304(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25, v26, v27, SBYTE2(v27), BYTE3(v27), SHIDWORD(v27));
          OUTLINED_FUNCTION_46();
          if (v2)
          {
            if (v1)
            {
              v22 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v22 = "";
            }

            if (v0)
            {
              v23 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v23 = "";
            }

            LODWORD(v29.value) = 136317186;
            *(&v29.value + 4) = "fpfs_CancelSeekIfNeeded";
            LOWORD(v29.flags) = 2048;
            *(&v29.flags + 2) = v1;
            HIWORD(v29.epoch) = 2082;
            v30 = v22;
            v31 = 2048;
            v32 = v0;
            v33 = 2082;
            v34 = v23;
            v35 = 2048;
            v36 = v10;
            v37 = 2048;
            v38 = v12;
            v39 = 2048;
            v40 = Seconds;
            v41 = 2048;
            v42 = v9;
            OUTLINED_FUNCTION_146();
            OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_448();
            OUTLINED_FUNCTION_507();
          }

          OUTLINED_FUNCTION_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        OUTLINED_FUNCTION_177();
        fpfs_SeekDidFail();
      }
    }
  }

  OUTLINED_FUNCTION_459();
}

void fpfsi_EnqueuePlayableRangeChangedNotification(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *DerivedStorage;
  OUTLINED_FUNCTION_601();
  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v3, a1, v4, v5, v6, v7, v8, v9, v15, v16);
  OUTLINED_FUNCTION_403();
  fpfs_EnqueueNotification(v11, v12, v13, v14);
  DerivedStorage[296] = FigGetUpTimeNanoseconds();
  if (NotificationPayloadForProperties)
  {

    CFRelease(NotificationPayloadForProperties);
  }
}

void fpfsi_TrimCachedSamplesFromItem()
{
  OUTLINED_FUNCTION_182();
  v3 = v2;
  v194 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  v5 = CMBaseObjectGetDerivedStorage();
  v176 = 0uLL;
  v177 = 0;
  v6 = OUTLINED_FUNCTION_203();
  fpfs_GetNextTimeToPlay(v6, v7, v8);
  v9 = MEMORY[0x1E6960CC0];
  value = *MEMORY[0x1E6960CC0];
  timescale = *(MEMORY[0x1E6960CC0] + 8);
  v10 = *(MEMORY[0x1E6960CC0] + 16);
  v11 = MEMORY[0x1E6960C80];
  v190 = *MEMORY[0x1E6960C80];
  v191 = *(MEMORY[0x1E6960C80] + 8);
  v165 = *MEMORY[0x1E6960CC0];
  *&v175.value = *MEMORY[0x1E6960CC0];
  v175.epoch = v10;
  v12 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(v12);
  CMBaseObjectGetDerivedStorage();
  memset(&time1, 0, sizeof(time1));
  fpfs_GetNextTimeToPlay(v1, 1, &time1);
  OUTLINED_FUNCTION_588();
  if (v16 ^ v17 | v15 && v14 >= 0.0 || *(v1 + 2992))
  {
    if (v13 < 1)
    {
      v18 = 50;
      v19 = 1000;
    }

    else
    {
      if (v14 < 0.0)
      {
        v13 = -v13;
      }

      v18 = v13;
      v19 = 1;
    }

    CMTimeMake(&rhs, v18, v19);
  }

  else
  {
    CMTimeMakeWithSeconds(&rhs, (v14 * 10.0), 1000);
  }

  lhs = time1;
  CMTimeSubtract(&v175, &lhs, &rhs);
  memset(&lhs, 0, sizeof(lhs));
  time1 = *(v0 + 166);
  rhs = *(v0 + 145);
  Ahead = CMTimeSubtract(&lhs, &time1, &rhs);
  v28 = *(v5 + 108);
  v29 = v28 < 0.0;
  v30 = (v28 > 2.0 || v28 < 0.0) && v0[374] == 0;
  if ((BYTE12(v176) & 0x1D) == 1)
  {
    LODWORD(v31) = *(v9 + 12);
    if ((lhs.flags & 0x1D) == 1)
    {
      *&time1.value = v165;
      time1.epoch = v10;
      rhs = lhs;
      Ahead = CMTimeCompare(&time1, &rhs);
      if ((Ahead & 0x80000000) != 0)
      {
        CMTimeMake(&time1, 50, 1000);
        *&v173[8] = v176;
        *&v173[24] = v177;
        CMTimeSubtract(&rhs, &v173[8], &time1);
        *&v173[8] = lhs;
        v32 = CMTimeMinimum(&time1, &v173[8], &rhs);
        LODWORD(v31) = time1.flags;
        timescale = time1.timescale;
        value = time1.value;
        Ahead = OUTLINED_FUNCTION_814(v32, v33, v34, v35, v36, v37, v38, v39, v121, v124, v127, v131, v134, v138, v141, v144, v148, v152, v156, v160, v165, *(&v165 + 1), v170, *v173, *&v173[8], *&v173[16], *&v173[24], v174, v175.value, *&v175.timescale, v175.epoch, v176, *(&v176 + 1), v177, lhs.value, *&lhs.timescale, lhs.epoch, v179, *type, v181, rhs.value, *&rhs.timescale, rhs.epoch, v183, v184[0], v184[1], v184[2], v185, v186, v187, v188, *(&v188 + 1), time1.value);
        if (dword_1EAF169F0 >= 5)
        {
          v156 = __PAIR64__(v29, v30);
          *&v173[8] = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v41 = *&v173[8];
          *&v165 = os_log_and_send_and_compose_flags_and_os_log_type;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
          {
            v42 = v41;
          }

          else
          {
            v42 = v41 & 0xFFFFFFFE;
          }

          if (v42)
          {
            v43 = *v0;
            if (*v0)
            {
              v44 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v44 = "";
            }

            v161 = v44;
            if (v3)
            {
              v45 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v45 = "";
            }

            v153 = v45;
            OUTLINED_FUNCTION_215();
            CMTimeGetSeconds(&time1);
            OUTLINED_FUNCTION_558(v46, v47, v48, v49, v50, v51, v52, v53, v121, v124, v127, v131, v134, v138, v141, v144, v148, v153, v156, v161, v165, v170, *v173, *&v173[8], *&v173[16], *&v173[24], v174, *&v175.value, v175.epoch, v176, *(&v176 + 1), v177, lhs.value, *&lhs.timescale, lhs.epoch, v179, *type, v181, rhs.value, *&rhs.timescale, rhs.epoch, v183, v184[0], v184[1], v184[2], v185, v186, v187, v188, *(&v188 + 1), time1.value);
            OUTLINED_FUNCTION_557(v54, v55, v56, v57, v58, v59, v60, v61, v122, v125, v128, v132, v135, v139, v142, v145, v149, v154, v157, v162, v166, v168, v171, *v173, *&v173[16], *&v173[24], v174, v175.value, *&v175.timescale, v175.epoch, v176, v177, lhs.value, *&lhs.timescale, lhs.epoch, v179, *type, v181, rhs.value, *&rhs.timescale, rhs.epoch, v183, v184[0], v184[1], v184[2], v185, v186, v187, v188, *(&v188 + 1), time1.value);
            LODWORD(rhs.value) = 136317186;
            *(&rhs.value + 4) = "fpfsi_TrimCachedSamplesFromItem";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = v43;
            HIWORD(rhs.epoch) = 2082;
            OUTLINED_FUNCTION_691(2048);
            OUTLINED_FUNCTION_395(v62, v63);
            *(&v188 + 4) = 0;
            OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          Ahead = OUTLINED_FUNCTION_449();
          v30 = v156;
          v29 = HIDWORD(v156);
        }
      }
    }

    if (v28 < 0.0 || v30 || (Ahead = fpfs_GetAllowExtendedReadAhead(v5), !Ahead))
    {
      time1.timescale = v175.timescale;
      time1.flags = v175.flags;
      time1.epoch = v175.epoch;
      OUTLINED_FUNCTION_814(Ahead, v21, v22, v23, v24, v25, v26, v27, v121, v124, v127, v131, v134, v138, v141, v144, v148, v152, v156, v160, v165, *(&v165 + 1), v170, *v173, *&v173[8], *&v173[16], *&v173[24], v174, v175.value, *&v175.timescale, v175.epoch, v176, *(&v176 + 1), v177, lhs.value, *&lhs.timescale, lhs.epoch, v179, *type, v181, rhs.value, *&rhs.timescale, rhs.epoch, v183, v184[0], v184[1], v184[2], v185, v186, v187, v188, *(&v188 + 1), v175.value);
    }

    else
    {
      v158 = __PAIR64__(v29, v30);
      *&v165 = v0 + 130;
      v67 = fpfsi_TotalBytesInBuffer(v0 + 130);
      v163 = (v0 + 128);
      if (fpfsi_TotalBytesInBuffer(v0 + 128) + v67 > v0[67])
      {
        v68 = *(v11 + 12);
        v69 = *(v11 + 16);
        OUTLINED_FUNCTION_340();
        *&v70 = 136316162;
        v129 = v70;
        *&v70 = 136317186;
        v136 = v70;
        do
        {
          OUTLINED_FUNCTION_215();
          rhs = v175;
          if ((CMTimeCompare(&time1, &rhs) & 0x80000000) == 0)
          {
            break;
          }

          v71 = CMBaseObjectGetDerivedStorage();
          v72 = *(v71 + 1040);
          for (i = 1936684398; v72; v72 = *(v72 + 24))
          {
            if (*(v72 + 48) == v29)
            {
              fpfsi_SetNextVideoGOPRangeToTrimForTrack(v72);
            }
          }

          for (j = *(v71 + 1024); j; j = *(j + 24))
          {
            if (*(j + 48) == v29)
            {
              fpfsi_SetNextVideoGOPRangeToTrimForTrack(j);
            }
          }

          fpfsi_FindEarliestVideoGOPEndInTrackList(v165, &time1);
          OUTLINED_FUNCTION_711();
          if ((v83 & 1) == 0)
          {
            fpfsi_FindEarliestVideoGOPEndInTrackList(v163, &time1);
            OUTLINED_FUNCTION_711();
          }

          if (v83)
          {
            rhs.value = *type;
            rhs.timescale = v181;
            rhs.flags = v83;
            rhs.epoch = time1.epoch;
          }

          else
          {
            v84 = *v165;
            v31 = &unk_1EAF16000;
            if (*v165)
            {
              while (*(v84 + 48) != 1936684398 || !*(v84 + 112))
              {
                v84 = *(v84 + 24);
                if (!v84)
                {
                  goto LABEL_59;
                }
              }
            }

            else
            {
LABEL_59:
              v84 = v163->value;
              if (!v163->value)
              {
                goto LABEL_73;
              }

              while (*(v84 + 48) != 1936684398 || !*(v84 + 112))
              {
                v84 = *(v84 + 24);
                if (!v84)
                {
                  goto LABEL_73;
                }
              }
            }

            v85 = *(v84 + 96);
            if (v85)
            {
              CMBufferQueueGetMinPresentationTimeStamp(&time1, v85);
            }

            else
            {
              time1 = **&MEMORY[0x1E6960C70];
            }

            value = time1.value;
            timescale = time1.timescale;
            OUTLINED_FUNCTION_350();
            if (!v15)
            {
LABEL_73:
              if (dword_1EAF169F0)
              {
                *&v173[8] = 0;
                v173[7] = 0;
                v87 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v88 = *&v173[8];
                os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT);
                OUTLINED_FUNCTION_202();
                if (v15)
                {
                  v90 = v89;
                }

                else
                {
                  v90 = v88;
                }

                if (v90)
                {
                  v91 = *v0;
                  if (*v0)
                  {
                    v92 = (CMBaseObjectGetDerivedStorage() + 888);
                    if (v3)
                    {
                      goto LABEL_80;
                    }

LABEL_83:
                    v93 = "";
                  }

                  else
                  {
                    v92 = "";
                    if (!v3)
                    {
                      goto LABEL_83;
                    }

LABEL_80:
                    v93 = (CMBaseObjectGetDerivedStorage() + 3096);
                  }

                  LODWORD(rhs.value) = v129;
                  *(&rhs.value + 4) = "fpfsi_TrimCachedSamplesFromItem";
                  LOWORD(rhs.flags) = 2048;
                  *(&rhs.flags + 2) = v91;
                  HIWORD(rhs.epoch) = 2082;
                  v183 = v92;
                  LOWORD(v184[0]) = 2048;
                  *(v184 + 2) = v3;
                  WORD1(v184[1]) = 2082;
                  *(&v184[1] + 4) = v93;
                  OUTLINED_FUNCTION_51();
                  OUTLINED_FUNCTION_25();
                  OUTLINED_FUNCTION_282();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_454();
              }

              value = v175.value;
              LODWORD(v31) = v175.flags;
              timescale = v175.timescale;
              i = v175.epoch;
              goto LABEL_87;
            }

            rhs.value = value;
            rhs.timescale = timescale;
            rhs.flags = v86;
            rhs.epoch = time1.epoch;
            *&v173[8] = v190;
            *&v173[16] = v191;
            *&v173[20] = v68;
            *&v173[24] = v69;
            CMTimeMaximum(&time1, &rhs, &v173[8]);
            OUTLINED_FUNCTION_580();
            OUTLINED_FUNCTION_541();
            if (!v15)
            {
              goto LABEL_87;
            }

            CMTimeMake(&rhs, 10, 1);
            *&v173[8] = value;
            *&v173[16] = timescale;
            *&v173[20] = &unk_1EAF16000;
            *&v173[24] = 1936684398;
            v75 = CMTimeAdd(&time1, &v173[8], &rhs);
            timescale = time1.timescale;
            value = time1.value;
            rhs = time1;
          }

          OUTLINED_FUNCTION_693(v75, v76, v77, v78, v79, v80, v81, v82, v121, v124, v129, *(&v129 + 1), v136, *(&v136 + 1), v141, v144, v148, v152, v158, v163, v165, *(&v165 + 1), v170, *v173, *&v173[8], *&v173[16], *&v173[24], v174, *&v175.value);
          CMTimeMinimum(&time1, &rhs, &v173[8]);
          OUTLINED_FUNCTION_580();
LABEL_87:
          v190 = value;
          v191 = timescale;
          time1.value = value;
          time1.timescale = timescale;
          time1.flags = v31;
          time1.epoch = i;
          fpfsi_TrimFromAllTracks(v0, &time1, HIDWORD(v158), v158);
          v94 = fpfsi_TotalBytesInBuffer(v165);
          v95 = fpfsi_TotalBytesInBuffer(&v163->value) + v94;
          if (dword_1EAF169F0 >= 5)
          {
            *&v173[8] = 0;
            v173[7] = 0;
            v96 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v97 = *&v173[8];
            v152 = v96;
            os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_134();
            if (v15)
            {
              v99 = v98;
            }

            else
            {
              v99 = v97;
            }

            if (v99)
            {
              v100 = *v0;
              if (*v0)
              {
                v101 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v101 = "";
              }

              v150 = v101;
              if (v3)
              {
                v102 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v102 = "";
              }

              v146 = v102;
              OUTLINED_FUNCTION_215();
              CMTimeGetSeconds(&time1);
              OUTLINED_FUNCTION_558(v103, v104, v105, v106, v107, v108, v109, v110, v121, v124, v129, *(&v129 + 1), v136, *(&v136 + 1), v141, v146, v150, v152, v158, v163, v165, v170, *v173, *&v173[8], *&v173[16], *&v173[24], v174, *&v175.value, v175.epoch, v176, *(&v176 + 1), v177, lhs.value, *&lhs.timescale, lhs.epoch, v179, *type, v181, rhs.value, *&rhs.timescale, rhs.epoch, v183, v184[0], v184[1], v184[2], v185, v186, v187, v188, *(&v188 + 1), time1.value);
              OUTLINED_FUNCTION_557(v111, v112, v113, v114, v115, v116, v117, v118, v123, v126, v130, v133, v137, v140, v143, v147, v151, v155, v159, v164, v167, v169, v172, *v173, *&v173[16], *&v173[24], v174, v175.value, *&v175.timescale, v175.epoch, v176, v177, lhs.value, *&lhs.timescale, lhs.epoch, v179, *type, v181, rhs.value, *&rhs.timescale, rhs.epoch, v183, v184[0], v184[1], v184[2], v185, v186, v187, v188, *(&v188 + 1), time1.value);
              LODWORD(rhs.value) = v136;
              *(&rhs.value + 4) = "fpfsi_TrimCachedSamplesFromItem";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v100;
              HIWORD(rhs.epoch) = 2082;
              OUTLINED_FUNCTION_691(2048);
              OUTLINED_FUNCTION_395(v119, v120);
              *(&v188 + 4) = v95;
              OUTLINED_FUNCTION_51();
              OUTLINED_FUNCTION_35();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v68 = v31;
          v69 = i;
        }

        while (v95 > v0[67]);
      }
    }

    v64 = fpfsi_TotalBytesInBuffer(v0 + 130);
    fpfsi_TotalBytesInBuffer(v0 + 128);
    v65 = v0[321];
    if (v65)
    {
      OUTLINED_FUNCTION_297();
      v66 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v66)
      {
        v66(v65, @"playerStats", 0x1F0B65698, (v29 + v64) >> 10);
      }
    }
  }

  OUTLINED_FUNCTION_181();
}

uint64_t fpfs_AddGAPTrackForExtendedForwardPlaybackEnd(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = 0;
  v27 = *MEMORY[0x1E6960C70];
  v28 = *(MEMORY[0x1E6960C70] + 16);
  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_296();
  Empty = CMBlockBufferCreateEmpty(v4, v5, v6, v7);
  if (!Empty)
  {
    time1 = *(DerivedStorage + 1352);
    FPSTimelineConverterL3TimeToL2(&time1, &v27);
    *&time2.value = v27;
    time2.epoch = v28;
    OUTLINED_FUNCTION_153();
    CMTimeSubtract(v11, v9, v10);
    value = time1.value;
    timescale = time1.timescale;
    OUTLINED_FUNCTION_541();
    if (v12)
    {
      OUTLINED_FUNCTION_568();
      OUTLINED_FUNCTION_104(MEMORY[0x1E6960CC0]);
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        OUTLINED_FUNCTION_568();
        CMTimeGetSeconds(&time1);
        Float64 = FigCFNumberCreateFloat64();
        CMSetAttachment(v29, @"FBPAKey_ApproximateDuration", Float64, 1u);
        if (Float64)
        {
          CFRelease(Float64);
        }

        CMSetAttachment(v29, @"FBPAKey_FakeFormatDescription", *(a2 + 56), 1u);
        v14 = *(a2 + 196);
        v15 = *(DerivedStorage + 4 * *(a2 + 196) + 928);
        time2 = *(a2 + 232);
        OUTLINED_FUNCTION_153();
        CMTimeAdd(v18, v16, v17);
        v24 = *(a2 + 80);
        OUTLINED_FUNCTION_766();
        fpfs_BytePumpFn(v19, v20, v21, 133570, v14, v15, 0, v22, 0, 0, v24, 0, 0, 0);
        if (v29)
        {
          CFRelease(v29);
        }
      }
    }
  }

  return Empty;
}

BOOL fpfs_GetAllowExtendedReadAhead(uint64_t a1)
{
  OUTLINED_FUNCTION_572();
  v4 = *(v2 + 816);
  v5 = *(v3 + 2260);
  if (v4 >= v5)
  {
    v6 = *(v3 + 2260);
  }

  else
  {
    v6 = *(v2 + 816);
  }

  if (v5)
  {
    v7 = *(v3 + 2260);
  }

  else
  {
    v7 = 50;
  }

  if (!v5)
  {
    v6 = *(v2 + 816);
  }

  if (!v4)
  {
    v6 = v7;
  }

  if (!(v5 | v4) || (result = 0, v6 >= 51))
  {
    if (FigPlayerResourceArbiterGetGlobalSingleton(&v10))
    {
      return 1;
    }

    else
    {
      FigPlayerResourceArbiterGetExtendedBufferingPolicyForConsumer(v10, *(a1 + 928), &v9);
      return v9 != 2;
    }
  }

  return result;
}

double fpfsi_SetNextVideoGOPRangeToTrimForTrack(uint64_t a1)
{
  v39 = *(MEMORY[0x1E6960C98] + 16);
  v40 = *MEMORY[0x1E6960C98];
  refcon = *MEMORY[0x1E6960C98];
  *v47 = v39;
  v38 = *(MEMORY[0x1E6960C98] + 32);
  *&v47[16] = v38;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_33();
  if (v3 && !*(a1 + 200) && ((*(a1 + 524) & 1) == 0 || (*(a1 + 548) & 1) == 0 || *(a1 + 552) || (*(a1 + 536) & 0x8000000000000000) != 0))
  {
    CMBufferQueueCallForEachBuffer(*(a1 + 96), fpfs_FindVideoGOPRangeInBufferQueue, &refcon);
    if ((BYTE12(refcon) & 1) == 0 || (v47[20] & 1) == 0 || *&v47[24] || (*&v47[8] & 0x8000000000000000) != 0)
    {
LABEL_9:
      v4 = *v47;
      *(a1 + 512) = refcon;
      *(a1 + 528) = v4;
      result = *&v47[16];
      *(a1 + 544) = *&v47[16];
      return result;
    }

    if ((~HIDWORD(refcon) & 0x11) != 0 && (v47[20] & 0x11) != 0x11)
    {
LABEL_22:
      if ((BYTE12(refcon) & 1) != 0 && (v47[20] & 1) != 0 && !*&v47[24] && (*&v47[8] & 0x8000000000000000) == 0)
      {
        CMTimeMakeWithSeconds(time1, 30.0, 1);
        time2 = *&v47[8];
        v29 = CMTimeCompare(&time2, time1);
        if (v29 >= 1)
        {
          OUTLINED_FUNCTION_641(v29, v30, v31, v32, v33, v34, v35, v36, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), start.value, *&start.timescale, start.epoch, v42, time2.value);
          OUTLINED_FUNCTION_214();
          CMTimeRangeMake(v37, &start, &time2);
          refcon = *time1;
          *v47 = *&time1[16];
          *&v47[16] = v45;
        }
      }

      goto LABEL_9;
    }

    if (*(a1 + 198))
    {
      *&time2.value = refcon;
      time2.epoch = *v47;
      *&start.value = *(a1 + 232);
      OUTLINED_FUNCTION_153();
      CMTimeRangeFromTimeToTime(v7, v5, v6);
    }

    else
    {
      time2 = *(a1 + 232);
      *&start.value = refcon;
      OUTLINED_FUNCTION_153();
      v11 = CMTimeSubtract(v10, v8, v9);
      OUTLINED_FUNCTION_641(v11, v12, v13, v14, v15, v16, v17, v18, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), start.value, *&start.timescale, start.epoch, v42, time2.value);
      v19 = CMTimeCompare(time1, &time2);
      if (v19 < 1)
      {
        refcon = v40;
        *v47 = v39;
        v28 = v38;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_641(v19, v20, v21, v22, v23, v24, v25, v26, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), start.value, *&start.timescale, start.epoch, v42, time2.value);
      OUTLINED_FUNCTION_214();
      CMTimeRangeMake(v27, &start, &time2);
    }

    refcon = *time1;
    *v47 = *&time1[16];
    v28 = v45;
LABEL_21:
    *&v47[16] = v28;
    goto LABEL_22;
  }

  return result;
}

void fpfsi_postSelectedMediaOptionsDidChangeNotification()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_601();
  v0 = OUTLINED_FUNCTION_184();
  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  FigCFDictionarySetValue();
  v9 = OUTLINED_FUNCTION_188();
  fpfs_EnqueueNotification(v9, v10, v11, NotificationPayloadForProperties);
  if (NotificationPayloadForProperties)
  {

    CFRelease(NotificationPayloadForProperties);
  }
}

uint64_t fpfsi_SetPumpRate(uint64_t result, float a2)
{
  if (result)
  {
    v2 = *(result + 912);
    if (v2)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 96);
      if (v4)
      {
        v5.n128_f32[0] = a2;

        return v4(v2, v5);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void fpfsi_EnsureVenueDescriptionMetadataSupplierIfNecessary(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, os_log_type_t type, int a14, int valuePtr, const __CFNumber *cf, int a17, int a18, __int128 a19, const char *a20, __int128 a21, __int128 a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  OUTLINED_FUNCTION_253();
  a53 = v56;
  a54 = v57;
  v59 = v58;
  a41 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v61 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  valuePtr = 0;
  if (v54[95] || (v62 = v61, FigStreamingPlayerCombinedVideoDestinationGetFVTCount(*(v61 + 376)) < 1) || !FigStreamingPlayerCombinedVideoDestinationContainsBufferDeliveryFVR(*(v62 + 376)) || !v54[114] || !*(v54 + 462))
  {
    v65 = 0;
    goto LABEL_34;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  if (v59)
  {
    v64 = (CMBaseObjectGetDerivedStorage() + 3096);
  }

  else
  {
    v64 = "";
  }

  v65 = CFStringCreateWithCString(AllocatorForMedia, v64, 0x600u);
  v66 = FigGetAllocatorForMedia();
  v67 = FigVenueDescriptionMetadataSupplierCreate(v66, v54[4], v65, v54 + 95);
  if (v67)
  {
    goto LABEL_40;
  }

  if (!v54[95])
  {
    goto LABEL_34;
  }

  if (!dword_1EAF169F0)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_432();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  OUTLINED_FUNCTION_37();
  if (v55)
  {
    v69 = *v54;
    if (*v54)
    {
      v70 = (CMBaseObjectGetDerivedStorage() + 888);
      if (!v59)
      {
LABEL_18:
        a17 = 136316674;
        OUTLINED_FUNCTION_114();
        *(&a19 + 6) = v69;
        OUTLINED_FUNCTION_407();
        a20 = v70;
        LOWORD(a21) = v71;
        *(&a21 + 2) = v59;
        WORD5(a21) = v72;
        *(&a21 + 12) = v73;
        WORD2(a22) = v71;
        *(&a22 + 6) = v74;
        HIWORD(a22) = 1024;
        a23 = 0;
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_200();
        _os_log_send_and_compose_impl();
        goto LABEL_19;
      }
    }

    else
    {
      v70 = "";
      if (!v59)
      {
        goto LABEL_18;
      }
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_18;
  }

LABEL_19:
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_449();
LABEL_20:
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_274();
  v67 = FigNotificationCenterAddWeakListener();
  if (v67)
  {
    goto LABEL_40;
  }

  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v75 = OUTLINED_FUNCTION_731();
    v76(v75);
    v77 = cf;
  }

  else
  {
    v77 = 0;
  }

  CFNumberGetValue(v77, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr == 2)
  {
    v83 = 4294950069;
    goto LABEL_42;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_273();
  v67 = FigNotificationCenterAddWeakListener();
  if (v67)
  {
LABEL_40:
    v83 = v67;
LABEL_42:
    v84 = OUTLINED_FUNCTION_373();
    fpfs_StopPlayingItemWithOSStatus(v84, v85, v83);
    goto LABEL_34;
  }

  if (FigStreamingPlayerCombinedVideoDestinationGetFVTCount(*(v62 + 376)))
  {
    v78 = FigStreamingPlayerCombinedVideoDestinationCopyFVTs(*(v62 + 376));
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v79 = OUTLINED_FUNCTION_608();
      v80(v79);
    }

    if (v78)
    {
      CFRelease(v78);
    }
  }

  if (v54[321] && *(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v81 = OUTLINED_FUNCTION_308();
    v82(v81);
  }

LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  OUTLINED_FUNCTION_252();
}

uint64_t fpfs_CreateCurrentItemDidChangeNotificationPayloadWithProperties(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(a1, a2, a3, a4, a5, a6, a7, a8, @"CurrentDuration", @"VideoSlotArray");
  v10 = NotificationPayloadForProperties;
  if (a3 && NotificationPayloadForProperties)
  {
    v11 = OUTLINED_FUNCTION_228();
    CFDictionarySetValue(v11, v12, v13);
  }

  return v10;
}

void fpfs_SetRateWithOptionsAndAnchorTime()
{
  OUTLINED_FUNCTION_831();
  v264 = v0;
  v265 = v1;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v235 = v7;
  v231 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v263 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v229 = *MEMORY[0x1E6960C70];
  *v246 = *MEMORY[0x1E6960C70];
  v228 = *(MEMORY[0x1E6960C70] + 16);
  *&v246[16] = v228;
  HIWORD(v245) = 0;
  BYTE5(v245) = 0;
  HIDWORD(v244) = 0;
  LODWORD(v245) = 0;
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  v219 = @"RateChangeIdentifier";
  FigCFDictionaryGetInt32IfPresent();
  v220 = v10;
  FigCFDictionaryGetBooleanIfPresent();
  v16 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(v16);
  FigSimpleMutexLock();
  ++*(v10 + 8);
  if (*(DerivedStorage + 52))
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM();
    v30 = 0;
    Mutable = 0;
    v18 = 0.0;
    goto LABEL_261;
  }

  LODWORD(cf) = v6;
  v17 = v6;
  v18 = *(DerivedStorage + 108);
  v232 = DerivedStorage;
  valuePtr = (DerivedStorage + 108);
  v19 = OUTLINED_FUNCTION_383();
  Next = fpfs_getNext(v19, v20);
  v30 = Next;
  v234 = v14;
  v221 = v2;
  if (Next)
  {
    v31 = CMBaseObjectGetDerivedStorage();
    fpfs_enqueuePrerollWasCancelledNotificationIfNeeded(v30);
    if ((v6 & 2) != 0)
    {
      *&time.value = v229;
      time.epoch = v228;
      OUTLINED_FUNCTION_439();
      fpfsi_applyTimeToPausePlayback(v32, v33, v34, v35, 0);
    }

    if (*(v235 + 12) & 1) != 0 && (*(DerivedStorage + 148))
    {
      time = *(DerivedStorage + 136);
      OUTLINED_FUNCTION_105(v235);
      v44 = OUTLINED_FUNCTION_578(v36, v37, v38, v39, v40, v41, v42, v43, value, v216, v217, v218, @"RateChangeIdentifier", v10, v2, allocator, v224, v225, cf, v228, v229, *(&v229 + 1), v230, v231, DerivedStorage, valuePtr, v14, v235, v236, v237, v238, v239, type, v241, v242, v243, v244, v245, *v246, *&v246[8], v228, v247, theArray.value, *&theArray.timescale, theArray.epoch, v249, time1.value, *&time1.timescale, time1.epoch, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, time.value);
      Next = CMTimeCompare(v44, v45);
      if (Next)
      {
        OUTLINED_FUNCTION_194();
        Next = fpfs_FirstTrackWithFormatDescriptionOfType(v46, v47);
        if (Next)
        {
          *valuePtr = 0.0;
          Next = fpfsi_SeekToCurrentTime(v30);
        }
      }
    }
  }

  else
  {
    v31 = 0;
    *valuePtr = v12;
  }

  HIDWORD(v230) = v6;
  if (dword_1EAF169F0)
  {
    v48 = v4;
    OUTLINED_FUNCTION_679();
    v49 = OUTLINED_FUNCTION_470();
    os_log_type_enabled(v49, type);
    OUTLINED_FUNCTION_233();
    if (v162)
    {
      v51 = v50;
    }

    else
    {
      v51 = theArray.value;
    }

    if (!v51)
    {
      goto LABEL_27;
    }

    if (v234)
    {
      CMBaseObjectGetDerivedStorage();
      if (v30)
      {
        goto LABEL_18;
      }
    }

    else if (v30)
    {
LABEL_18:
      CMBaseObjectGetDerivedStorage();
      if (!v31)
      {
LABEL_23:
        time = *v246;
        Seconds = CMTimeGetSeconds(&time);
        if (HIBYTE(v245))
        {
          v53 = "yes";
        }

        else
        {
          v53 = "no";
        }

        FigPlaybackRateChangeReasonGetDescription(v245);
        LODWORD(time1.value) = 136317442;
        OUTLINED_FUNCTION_319("fpfs_SetRateWithOptionsAndAnchorTime");
        *(v54 + 14) = v234;
        OUTLINED_FUNCTION_143();
        OUTLINED_FUNCTION_676();
        *&v256 = v12;
        LOWORD(v257) = v55;
        *(v56 + 74) = Seconds;
        WORD1(v258) = v57;
        *(v56 + 84) = v53;
        WORD2(v259) = v57;
        *(v56 + 94) = v58;
        OUTLINED_FUNCTION_49();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl();
LABEL_27:
        OUTLINED_FUNCTION_7();
        Next = OUTLINED_FUNCTION_467();
        v14 = v234;
        v4 = v48;
        goto LABEL_28;
      }

LABEL_19:
      fpfs_GetTime(v31, &time);
      CMTimeGetSeconds(&time);
      goto LABEL_23;
    }

    if (!v31)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_28:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (v30)
    {
      v59 = (CMBaseObjectGetDerivedStorage() + 3096);
    }

    else
    {
      v59 = "";
    }

    strncpy(&time, v59, 8uLL);
    if (v14)
    {
      v60 = (CMBaseObjectGetDerivedStorage() + 888);
    }

    else
    {
      v60 = "";
    }

    strncpy(&time, v60, 8uLL);
    Next = kdebug_trace();
  }

  if (!v30 && BYTE5(v245))
  {
    goto LABEL_304;
  }

  if (!v30)
  {
LABEL_307:
    Mutable = 0;
    goto LABEL_308;
  }

  v61 = v18 == 0.0 && v12 != 0.0;
  if (v61 || HIBYTE(v245) && *(v232 + 164) != 4)
  {
    BYTE6(v245) = 1;
  }

  if (v18 != v12)
  {
    fpfsi_RTCReportingReportDesiredRateChange(*valuePtr);
  }

  if (v12 != 0.0 && BYTE6(v245))
  {
    fpfs_notifyExternalStartupTasksOfEvents();
    Next = fpfs_areAllExternalStartupTasksCompleted();
    if (!Next)
    {
      OUTLINED_FUNCTION_675();
      if (!v162)
      {
        Next = OUTLINED_FUNCTION_852(v14, MEMORY[0x1E6960C70]);
      }
    }
  }

  else
  {
    BYTE6(v245) = 0;
  }

  if (v12 > 0.0)
  {
    Next = CMBaseObjectGetDerivedStorage();
    v62 = *(Next + 1024);
    if (v62)
    {
      while (*(v62 + 48) != 1936684398 || !*(v62 + 112))
      {
        v62 = *(v62 + 24);
        if (!v62)
        {
          goto LABEL_61;
        }
      }

      Next = fpfs_WantMATAtmosForTrack(v62);
      if (Next)
      {
        if (cf & 4) != 0 && (*(v235 + 12))
        {
          *(v62 + 206) = 1;
          OUTLINED_FUNCTION_409();
          Next = fpfs_applySoftwareVolumeToTrack();
        }

        else
        {
          v63 = OUTLINED_FUNCTION_292();
          Next = fpfs_UnmuteAtmosAudioTrack(v63, v64, v62);
        }
      }
    }
  }

LABEL_61:
  v65 = valuePtr;
  v29.n128_f32[0] = *valuePtr;
  v66 = *valuePtr != v12;
  if (BYTE6(v245))
  {
    v66 = 1;
  }

  if ((v17 & 2) == 0 && !v66 && v245 != 7)
  {
    v30 = 0;
    goto LABEL_307;
  }

  flags = v231->flags;
  if ((flags & 1) != 0 && (v12 > 2.0 || v12 < 0.0))
  {
LABEL_304:
    OUTLINED_FUNCTION_120();
    FigSignalErrorAtGM();
    v30 = 0;
    Mutable = 0;
LABEL_308:
    DerivedStorage = v232;
    goto LABEL_261;
  }

  if (v29.n128_f32[0] != v12 || ((flags | *(v235 + 12)) & 1) != 0)
  {
    time.value = 0;
    *&time.timescale = 0;
    OUTLINED_FUNCTION_290();
    Next = fpfs_PlayQueueCallForEachItem(v14, v68, &time);
  }

  *(v31 + 520) = 0;
  *(v31 + 518) = 0;
  if (*(v31 + 2568))
  {
    VTable = CMBaseObjectGetVTable();
    v70 = *(VTable + 16);
    Next = VTable + 16;
    if (*(v70 + 56))
    {
      OUTLINED_FUNCTION_426();
      Next = v71();
    }
  }

  if (BYTE5(v245))
  {
    memset(&time, 0, sizeof(time));
    OUTLINED_FUNCTION_105(v231);
    FPSTimelineConverterL3TimeToL2(&time1, &time);
    OUTLINED_FUNCTION_105(v235);
    theArray = time;
    Next = FPSupport_SetTransientTimebaseForCoordinatedPlaybackSynchronization(v30, &theArray, &time1, v12);
  }

  DerivedStorage = v232;
  if (v12 != 0.0)
  {
    OUTLINED_FUNCTION_675();
    if (!v162 || !*(v31 + 912) || *(v31 + 471))
    {
      HIDWORD(v225) = 0;
      goto LABEL_91;
    }

    HIDWORD(v225) = 0;
    if (v12 <= 2.0 && v12 >= 0.0)
    {
      v80 = v4;
      v81 = CMBaseObjectGetDerivedStorage();
      time.value = 0;
      LODWORD(time1.value) = 7;
      FigGetAllocatorForMedia();
      v82 = OUTLINED_FUNCTION_199();
      FigBytePumpGetFigBaseObject(v82);
      if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        goto LABEL_85;
      }

      v207 = OUTLINED_FUNCTION_236();
      v209 = v208(v207);
      v72 = time.value;
      if (time.value)
      {
        CFNumberGetValue(time.value, kCFNumberSInt32Type, &time1);
        if (v209)
        {
          goto LABEL_85;
        }
      }

      else if (v209)
      {
        HIDWORD(v225) = 0;
        v4 = v80;
        goto LABEL_91;
      }

      v214 = time1.value;
      if (LODWORD(time1.value) != 7)
      {
        HIDWORD(v225) = 1;
        v81[518] = (time1.value & 1) == 0;
        v81[519] = (v214 & 2) == 0;
        v81[520] = (v214 & 4) == 0;
LABEL_86:
        v72 = time.value;
        v4 = v80;
        if (time.value)
        {
          CFRelease(time.value);
        }

        goto LABEL_91;
      }

LABEL_85:
      HIDWORD(v225) = 0;
      goto LABEL_86;
    }

LABEL_91:
    *valuePtr = v12;
    if (v4)
    {
      v83 = OUTLINED_FUNCTION_485(v72, v73, v74, v75, v76, v77, v78, v79, value, v216, v217, v218, v219, v220, v221, allocator, v224, v225, cf, v228, v229, *(&v229 + 1), v230, v231);
      *(v232 + 128) = *(v84 + 16);
      *(v232 + 112) = v83;
      v85 = *v235;
      *(v232 + 152) = *(v235 + 16);
      *(v232 + 136) = v85;
      if ((*(v235 + 12) & 1) != 0 && (v231->flags & 1) == 0)
      {
        v86 = OUTLINED_FUNCTION_615();
        fpfs_GetNextTimeToPlay(v86, v87, v88);
        FPSTimelineConverterL2TimeToL3(&time1, &time);
        *(v232 + 112) = time;
      }

      if (dword_1EAF169F0)
      {
        OUTLINED_FUNCTION_679();
        v89 = OUTLINED_FUNCTION_470();
        v90 = theArray.value;
        os_log_type_enabled(v89, type);
        OUTLINED_FUNCTION_233();
        if (v162)
        {
          v92 = v91;
        }

        else
        {
          v92 = v90;
        }

        if (v92)
        {
          if (v234)
          {
            CMBaseObjectGetDerivedStorage();
          }

          CMBaseObjectGetDerivedStorage();
          time = *(v232 + 112);
          CMTimeGetSeconds(&time);
          time = *(v232 + 136);
          CMTimeGetSeconds(&time);
          LODWORD(time1.value) = 136316674;
          OUTLINED_FUNCTION_319("fpfs_SetRateWithOptionsAndAnchorTime");
          *(v93 + 14) = v234;
          OUTLINED_FUNCTION_143();
          OUTLINED_FUNCTION_676();
          v256 = v94;
          OUTLINED_FUNCTION_49();
          DerivedStorage = v232;
          OUTLINED_FUNCTION_36();
          _os_log_send_and_compose_impl();
          v65 = valuePtr;
        }

        else
        {
          DerivedStorage = v232;
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_467();
        v14 = v234;
      }
    }

    goto LABEL_110;
  }

  *valuePtr = v12;
  if (v4)
  {
    OUTLINED_FUNCTION_477(Next, v22, v23, v24, v25, v26, v27, v28, value, v216, v217, v218, v219, v220, v221, allocator, v224, v225, cf, v228, v29);
  }

  else
  {
    HIDWORD(v225) = 0;
  }

LABEL_110:
  *(DerivedStorage + 522) = 0;
  allocatora = *MEMORY[0x1E695E480];
  cfa = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, v65);
  v95 = *(v31 + 96);
  if (v95)
  {
    v96 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v96)
    {
      v96(v95, @"AfmfpbProperty_PlayerRate", cfa);
    }
  }

  if (v61 && *(DerivedStorage + 828) >= 3)
  {
    fpfsi_SeekToCurrentTime(v30);
  }

  v97 = OUTLINED_FUNCTION_292();
  if (fpfs_ShouldTryToGrabHDRPlaybackBaton(v97, v98) && !fpfs_GrabPlayerHDRPlaybackBaton())
  {
    v99 = OUTLINED_FUNCTION_491();
    fpfsi_SwitchBetweenHDRAndSDR(v99, v100);
  }

  v101 = OUTLINED_FUNCTION_292();
  if (fpfs_ShouldTryToGrab4kPlaybackBaton(v101, v102) && !fpfs_GrabPlayer4kPlaybackBaton(v14))
  {
    OUTLINED_FUNCTION_491();
    fpfsi_SwitchBetween4kAndHD();
  }

  v103 = fpfs_EnsureScanningBoundaryTimer(v30);
  if (v103)
  {
    v129 = v103;
    goto LABEL_200;
  }

  v104 = *v65;
  v105 = CMBaseObjectGetDerivedStorage();
  v224 = OUTLINED_FUNCTION_592(v105);
  v106 = CMBaseObjectGetDerivedStorage();
  theArray.value = 0;
  if (!*(v65 + 114))
  {
    v129 = 0;
    v65 = valuePtr;
    goto LABEL_171;
  }

  v107 = v106;
  v108 = CMBaseObjectGetDerivedStorage();
  v218 = v107;
  if (!*(v108 + 40) || !*(v108 + 48) || !*(v108 + 49))
  {
    IsIFrameOnly = 0;
    v118 = 0;
LABEL_146:
    v120 = 1;
    goto LABEL_147;
  }

  v109 = fpfsi_ConfigureAlternateSelectionBossForPlayRate(v30, v104);
  if (v109)
  {
    goto LABEL_205;
  }

  if (*(v65 + 2904))
  {
    if (v104 > 2.0 || v104 < 0.0 || (v110 = *(v65 + 210)) != 0 && FigAlternateIsIFrameOnly(v110))
    {
      v109 = FigAlternateSelectionBossSetProperty(*(v65 + 5), @"Paused", *MEMORY[0x1E695E4C0]);
      if (v109)
      {
        goto LABEL_205;
      }
    }
  }

  v109 = FigAlternateSelectionBossApplyFilters(*(v65 + 5));
  if (v109)
  {
    goto LABEL_205;
  }

  FigGetAllocatorForMedia();
  v111 = OUTLINED_FUNCTION_298();
  v109 = FigAlternateSelectionBossCopyProperty(v111, v112, v113, v114);
  if (v109)
  {
    goto LABEL_205;
  }

  if (!theArray.value || CFArrayGetCount(theArray.value) <= 0)
  {
    OUTLINED_FUNCTION_120();
    v109 = FigSignalErrorAtGM();
    goto LABEL_205;
  }

  OUTLINED_FUNCTION_731();
  fpfsi_UpdateValidAlternateListAndSuggestAnAlternate();
  if (v109)
  {
LABEL_205:
    v129 = v109;
    goto LABEL_169;
  }

  v115 = *(v65 + 210);
  if (*(v65 + 12))
  {
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v116 = OUTLINED_FUNCTION_236();
      v117(v116);
    }

    v115 = *(v65 + 210);
  }

  if (v115)
  {
    v118 = FigAlternateIsIFrameOnly(v115) != 0;
  }

  else
  {
    v118 = 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v65 + 208), 0);
  IsIFrameOnly = FigAlternateIsIFrameOnly(ValueAtIndex);
  if (!*(v65 + 210))
  {
    goto LABEL_146;
  }

  v120 = FigCFArrayContainsValue() != 0;
LABEL_147:
  if (dword_1EAF169F0)
  {
    LOBYTE(type) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_425();
    if (v162)
    {
      v123 = v122;
    }

    else
    {
      v123 = 0;
    }

    if (v123)
    {
      v221 = v31;
      if (v224)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v124 = CMBaseObjectGetDerivedStorage();
      LODWORD(time1.value) = 136317186;
      *(&time1.value + 4) = "fpfsi_SetAlternateForRateChangeIfNecessary";
      LOWORD(time1.flags) = 2048;
      *(&time1.flags + 2) = v224;
      OUTLINED_FUNCTION_380(v124 + 3096, v18);
      HIWORD(v255) = v125;
      v256 = v126;
      LOWORD(v257) = 1024;
      *(v127 + 74) = v118;
      HIWORD(v257) = 1024;
      LODWORD(v258) = IsIFrameOnly;
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_635();
    DerivedStorage = v232;
  }

  if (IsIFrameOnly)
  {
    v128 = 0;
  }

  else
  {
    v128 = v120;
  }

  if (!v128 || fpfs_audioOnlyValidAlternateList(v65) || v104 <= 2.0 && v104 >= 0.0)
  {
    if (*(v65 + 374))
    {
      fpfsi_EndBestEffortSeekTrickplayMode(v65);
    }

    v109 = fpfsi_handleIFrameOnlyRateTransition(v30, v118, IsIFrameOnly, *(v65 + 208), 0, v18);
    v14 = v234;
    if (!v109)
    {
      if (*(v65 + 471))
      {
        v129 = 0;
        goto LABEL_169;
      }

      v109 = fpfsi_SetPumpRate(v65, *(v218 + 108));
    }

    goto LABEL_205;
  }

  v129 = fpfs_EnterBestEffortTrickplayMode(*(v218 + 108));
  v14 = v234;
LABEL_169:
  v65 = valuePtr;
  if (theArray.value)
  {
    CFRelease(theArray.value);
  }

LABEL_171:
  v130 = *(v31 + 1680);
  if (v130)
  {
    FigAlternateIsIFrameOnly(v130);
  }

  v131 = v18;
  if (v129)
  {
    goto LABEL_277;
  }

  if (HIDWORD(v225))
  {
    if ((*(v31 + 332) & 1) == 0)
    {
      v129 = fpfsi_SetCurrentTimeWithSeekID(v30, MEMORY[0x1E6960C88]);
      goto LABEL_210;
    }

LABEL_209:
    v129 = 0;
    goto LABEL_210;
  }

  if (v12 == 0.0)
  {
    goto LABEL_185;
  }

  v133 = OUTLINED_FUNCTION_675();
  v134 = !v162;
  if (!HIBYTE(v245))
  {
    v134 = 1;
  }

  if (((v134 | v132) & 1) == 0)
  {
    memset(&time1, 0, sizeof(time1));
    fpfs_GetItemBufferedDuration(v30);
    theArray = time1;
    OUTLINED_FUNCTION_392(v231);
    OUTLINED_FUNCTION_232(v235);
    OUTLINED_FUNCTION_292();
    fpfs_CheckIfLikelyToKeepUpAndNotify();
    goto LABEL_209;
  }

  if (v133 == 0.0)
  {
    if (*(v31 + 464))
    {
      OUTLINED_FUNCTION_439();
      fpfs_notifyExternalStartupTasksOfEvents();
      v136 = fpfs_areAllExternalStartupTasksCompleted();
    }

    else
    {
      v136 = 1;
    }

    v210 = OUTLINED_FUNCTION_615();
    fpfs_GetNextTimeToPlay(v210, v211, v212);
    fpfsi_atOrAfterTimeToPausePlayback(v31);
    OUTLINED_FUNCTION_786();
  }

  else
  {
LABEL_185:
    v135 = 1;
    v136 = 1;
  }

  v129 = 0;
  if (!*(v31 + 2992) && v136 && v135)
  {
    IsDisplayModeSwitchInProgress = FPSupport_IsDisplayModeSwitchInProgress();
    v138 = *v65;
    if (IsDisplayModeSwitchInProgress && v138 != 0.0)
    {
      if (dword_1EAF169F0)
      {
        OUTLINED_FUNCTION_679();
        v139 = OUTLINED_FUNCTION_470();
        v140 = theArray.value;
        os_log_type_enabled(v139, type);
        OUTLINED_FUNCTION_425();
        if (v162)
        {
          v142 = v141;
        }

        else
        {
          v142 = v140;
        }

        if (v142)
        {
          if (v14)
          {
            CMBaseObjectGetDerivedStorage();
          }

          CMBaseObjectGetDerivedStorage();
          LODWORD(time1.value) = 136316418;
          OUTLINED_FUNCTION_321();
          *(v144 + 14) = v14;
          OUTLINED_FUNCTION_380(v145, v146);
          OUTLINED_FUNCTION_49();
          OUTLINED_FUNCTION_38();
          _os_log_send_and_compose_impl();
        }

        DerivedStorage = v232;
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_635();
      }

      goto LABEL_209;
    }

    if (!*(v31 + 464) && v138 != 0.0)
    {
      OUTLINED_FUNCTION_300(v30, &time);
      goto LABEL_209;
    }

    time = *v246;
    time1 = *v231;
    theArray = *v235;
    v129 = fpfs_SetRateWithFadeInternal(v14, &time, &time1, &theArray);
    if (!v129)
    {
      goto LABEL_210;
    }

    v213 = *(v31 + 1680);
    if (v213 && FigAlternateIsIFrameOnly(v213) && !OUTLINED_FUNCTION_852(v14, MEMORY[0x1E6960C70]))
    {
      goto LABEL_216;
    }

LABEL_200:
    v131 = v18;
    goto LABEL_277;
  }

LABEL_210:
  NotificationPayloadForProperties = 0;
  if (v129 || !HIBYTE(v245))
  {
LABEL_217:
    if (*v65 != 0.0)
    {
      OUTLINED_FUNCTION_675();
      if (v162)
      {
        v148 = OUTLINED_FUNCTION_615();
        fpfs_GetNextTimeToPlay(v148, v149, v150);
        fpfsi_PrepareToStartWhenLikelyToKeepUp(v30, &time);
      }
    }

    Mutable = 0;
    v152 = NotificationPayloadForProperties ^ 1;
    if (v129)
    {
      v152 = 0;
    }

    if (v152)
    {
      goto LABEL_224;
    }

    goto LABEL_278;
  }

  if (*(v31 + 840) == v12)
  {
    v129 = 0;
LABEL_216:
    NotificationPayloadForProperties = 0;
    goto LABEL_217;
  }

  if (*(DerivedStorage + 160))
  {
    v129 = 0;
    NotificationPayloadForProperties = 1;
    goto LABEL_217;
  }

  v131 = 0.0;
  v129 = -12928;
LABEL_277:
  Mutable = CFDictionaryCreateMutable(allocatora, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetFloat32();
  v184 = OUTLINED_FUNCTION_764();
  v187 = fpfs_EnqueueNotification(v184, v185, v186, Mutable);
  *(DerivedStorage + 108) = v131;
  OUTLINED_FUNCTION_477(v187, v188, v189, v190, v191, v192, v193, v194, value, v216, v217, v218, v219, v220, v221, allocatora, v224, v225, cfa, v228, v195);
  *(v31 + 520) = 0;
  *(v31 + 518) = 0;
LABEL_278:
  v196 = OUTLINED_FUNCTION_249();
  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v196, v197, v198, v199, v200, v201, v202, v203, @"CurrentRate", 0);
  v204 = OUTLINED_FUNCTION_764();
  fpfs_EnqueueNotification(v204, v205, v206, NotificationPayloadForProperties);
  if (NotificationPayloadForProperties)
  {
    CFRelease(NotificationPayloadForProperties);
  }

  if (v129)
  {
    goto LABEL_238;
  }

LABEL_224:
  v153 = *v65;
  if (*v65 >= 0.0)
  {
LABEL_225:
    if (v153 <= 0.0)
    {
      goto LABEL_230;
    }

    v154 = CMBaseObjectGetDerivedStorage();
    if (!v154)
    {
      goto LABEL_230;
    }

    OUTLINED_FUNCTION_172(v154);
    if (!CMBaseObjectGetDerivedStorage())
    {
      goto LABEL_230;
    }

    memset(&time, 0, sizeof(time));
    fpfs_GetTime(NotificationPayloadForProperties, &time);
    time1 = time;
    theArray = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &theArray) > 0)
    {
      goto LABEL_230;
    }

    goto LABEL_229;
  }

  fpfsi_PlaybackHasTraversedForwardEndTime();
  if (!v182)
  {
    v153 = *v65;
    goto LABEL_225;
  }

LABEL_229:
  *(v31 + 530) = 0;
LABEL_230:
  if (!CelestialShouldLimitHDRConcurrentPlayback() || (v155 = CMBaseObjectGetDerivedStorage(), OUTLINED_FUNCTION_260(v155), v162) || !fpfs_CanRenderVideo(v156, 0))
  {
    fpfs_ReleasePlayerHDRPlaybackBaton();
  }

  if (!CelestialShouldLimit4kConcurrentPlayback() || (v157 = CMBaseObjectGetDerivedStorage(), OUTLINED_FUNCTION_260(v157), v162) || !fpfs_CanRenderVideo(v158, 0))
  {
    fpfs_ReleasePlayer4kPlaybackBaton(v14);
  }

LABEL_238:
  v159 = *v65;
  if (*v65 == 0.0)
  {
    fpfsi_performCurrentResourceConservationAction(v30, *(DerivedStorage + 828));
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    fpfsi_SetLastTimestampClientDidPauseOnContentSteeringMonitor(v30, UpTimeNanoseconds);
    v159 = *(DerivedStorage + 108);
  }

  if (v230 & 0x200000000) != 0 && v159 > 0.0 && (*(v235 + 12))
  {
    v160 = *v235;
    *(v31 + 448) = *(v235 + 16);
    *(v31 + 432) = v160;
  }

  else
  {
    *(v31 + 432) = v229;
    *(v31 + 448) = v228;
  }

  v161 = *v65;
  if (v18 >= 0.0 && v161 < 0.0)
  {
    fpfs_scheduleReverseEndTimeTimer(v30);
  }

  else if (v161 >= 0.0)
  {
    fpfsi_RemoveAndClearTimer((v31 + 2360));
  }

  v162 = *(DerivedStorage + 872) != 1 && *(DerivedStorage + 108) == 1.0;
  if (v162 && *(v31 + 840) == 1.0)
  {
    v183 = OUTLINED_FUNCTION_491();
    fpfs_ReportVideoPlaybackTimeThroughFigLog(v183);
    fpfs_ReportAudioPlaybackThroughFigLog(v30);
    fpfsi_SetLastTimestampClientDidPauseOnContentSteeringMonitor(v30, 0x7FFFFFFFFFFFFFFFLL);
  }

  OUTLINED_FUNCTION_588();
  if (v164 ^ v165 | v162 && v163 >= 0.0 || *(v31 + 2992))
  {
    fpfs_EnsureItemTracksStatusSnapshotTimer();
  }

  v30 = cfa;
LABEL_261:
  if (*(DerivedStorage + 108) != v18)
  {
    v169 = OUTLINED_FUNCTION_249();
    v177 = fpfs_CreateNotificationPayloadForProperties(v169, v170, v171, v172, v173, v174, v175, v176, @"CurrentRate", 0);
    FigCFDictionarySetInt32();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_228();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_228();
    FigCFDictionarySetValueFromKeyInDict();
    v178 = OUTLINED_FUNCTION_764();
    fpfs_EnqueueNotification(v178, v179, v180, v177);
    if (v177)
    {
      CFRelease(v177);
    }
  }

  if (*(DerivedStorage + 906) && v245 == 37)
  {
    v166 = OUTLINED_FUNCTION_764();
    fpfs_PostNotificationWhenUnlocked(v166, v167, v168, 0);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v14);
  OUTLINED_FUNCTION_648();
}