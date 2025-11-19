uint64_t URLAssetLoadValuesAsyncForTrackProperties(uint64_t a1, CFTypeRef a2, const __CFArray *a3, _BYTE *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v20 = 0;
  if (a3)
  {
    v11 = DerivedStorage;
    if (CFArrayGetCount(a3))
    {
      if (a2)
      {
        if (CFArrayGetCount(a2))
        {
          cf = a2;
          CFRetain(a2);
          goto LABEL_11;
        }

        URLAssetLoadValuesAsyncForTrackProperties_cold_1(&v22);
        goto LABEL_26;
      }

      v18 = 0;
      v19 = 0;
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v12)
      {
LABEL_10:
        a2 = 0;
        goto LABEL_11;
      }

      v12(a1, @"assetProperty_Tracks", &v19, &v18, 0);
      if (v19 != 2)
      {
        if (v19 == 3)
        {
          v13 = v18;
          goto LABEL_13;
        }

        goto LABEL_10;
      }

      CMBaseObject = FigAssetGetCMBaseObject(a1);
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v17)
      {
        v13 = 4294954514;
        goto LABEL_13;
      }

      v14 = v17(CMBaseObject, @"assetProperty_Tracks", *MEMORY[0x1E695E480], &cf);
      if (v14)
      {
        goto LABEL_12;
      }

      a2 = cf;
      if (cf)
      {
LABEL_11:
        v14 = InternalURLAssetLoadValuesAsyncForTrackProperties(*(v11 + 8), *v11, a2, a3, &v20, a5);
LABEL_12:
        v13 = v14;
        goto LABEL_13;
      }

      URLAssetLoadValuesAsyncForTrackProperties_cold_2(&v22);
    }

    else
    {
      URLAssetLoadValuesAsyncForTrackProperties_cold_3(&v22);
    }
  }

  else
  {
    URLAssetLoadValuesAsyncForTrackProperties_cold_4(&v22);
  }

LABEL_26:
  v13 = v22;
LABEL_13:
  if (a4)
  {
    *a4 = v20;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t URLAssetDefineMacroProperty(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v6 = DerivedStorage;
      if (CFArrayGetCount(a3))
      {
        v7 = *(v6 + 8);

        return DefineMacroProperty(v7, a2, a3);
      }

      else
      {
        URLAssetDefineMacroProperty_cold_1(&v9);
        return v9;
      }
    }

    else
    {
      URLAssetDefineMacroProperty_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    URLAssetDefineMacroProperty_cold_3(&v11);
    return v11;
  }
}

uint64_t URLAssetDefineTrackMacroProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v6 = DerivedStorage;
      if (CFArrayGetCount(a3))
      {
        v7 = *(*v6 + 608);

        return DefineTrackMacroProperty(v7, a2, a3);
      }

      else
      {
        URLAssetDefineTrackMacroProperty_cold_1(&v9);
        return v9;
      }
    }

    else
    {
      URLAssetDefineTrackMacroProperty_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    URLAssetDefineTrackMacroProperty_cold_3(&v11);
    return v11;
  }
}

uint64_t URLAssetDefineCrossTrackMacroProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v6 = DerivedStorage;
      if (CFArrayGetCount(a3))
      {
        v7 = v6[1];
        v8 = *(*v6 + 608);

        return DefineCrossTrackMacroProperty(v8, v7, a2, a3);
      }

      else
      {
        URLAssetDefineCrossTrackMacroProperty_cold_1(&v10);
        return v10;
      }
    }

    else
    {
      URLAssetDefineCrossTrackMacroProperty_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    URLAssetDefineCrossTrackMacroProperty_cold_3(&v12);
    return v12;
  }
}

CFTypeRef URLAssetCopyStoreForTrack()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);

  return CFRetain(v0);
}

uint64_t RegisterInternalURLAssetType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void *InternalURLAsset_Finalize(uint64_t a1)
{
  objc_destroyWeak((a1 + 472));
  v2 = *(a1 + 608);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 608) = 0;
  }

  v3 = *(a1 + 480);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 480) = 0;
  }

  if (*(a1 + 136))
  {
    FigSimpleMutexDestroy();
    *(a1 + 136) = 0;
  }

  if (*(a1 + 432))
  {
    FigSimpleMutexDestroy();
    *(a1 + 432) = 0;
  }

  v4 = *(a1 + 368);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 368) = 0;
  }

  if (*(a1 + 240))
  {
    FigStopForwardingMediaServicesProcessDeathNotification();
  }

  v5 = *(a1 + 496);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 496) = 0;
  }

  v6 = *(a1 + 536);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 536) = 0;
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 72) = 0;
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 88) = 0;
  }

  v9 = *(a1 + 176);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 176) = 0;
  }

  v10 = *(a1 + 184);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 184) = 0;
  }

  v11 = *(a1 + 160);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 160) = 0;
  }

  v12 = *(a1 + 152);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 152) = 0;
  }

  v13 = *(a1 + 240);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 240) = 0;
  }

  v14 = *(a1 + 248);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 248) = 0;
  }

  v15 = *(a1 + 272);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 272) = 0;
  }

  v16 = *(a1 + 344);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 344) = 0;
  }

  v17 = *(a1 + 360);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 360) = 0;
  }

  v18 = *(a1 + 120);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 120) = 0;
  }

  v19 = *(a1 + 328);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 328) = 0;
  }

  v20 = *(a1 + 336);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 336) = 0;
  }

  v21 = *(a1 + 224);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 224) = 0;
  }

  v22 = *(a1 + 208);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 208) = 0;
  }

  v23 = *(a1 + 440);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 440) = 0;
  }

  v24 = *(a1 + 384);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 384) = 0;
  }

  v25 = *(a1 + 400);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 400) = 0;
  }

  v26 = *(a1 + 408);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 408) = 0;
  }

  v27 = *(a1 + 424);
  if (v27)
  {
    CFRelease(v27);
    *(a1 + 424) = 0;
  }

  v28 = *(a1 + 488);
  if (v28)
  {
    CFRelease(v28);
    *(a1 + 488) = 0;
  }

  v29 = *(a1 + 520);
  if (v29)
  {
    CFRelease(v29);
    *(a1 + 520) = 0;
  }

  v30 = *(a1 + 528);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 528) = 0;
  }

  objc_destroyWeak((a1 + 48));
  v31 = *(a1 + 512);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 512) = 0;
  }

  FigSimpleMutexDestroy();
  v32 = *(a1 + 24);
  if (v32)
  {
    FigAssetDownloadCoordinatorUnregisterAssetWithDownloadTokenForAllDownloaders(v32);
    FigAssetTableRemoveAsset();
  }

  v33 = *(a1 + 584);
  if (v33)
  {
    CFRelease(v33);
    *(a1 + 584) = 0;
  }

  v34 = *(a1 + 280);
  if (v34)
  {
    dispatch_release(v34);
  }

  v35 = *(a1 + 104);
  if (v35)
  {
    dispatch_release(v35);
    *(a1 + 104) = 0;
  }

  v36 = *(a1 + 96);
  if (v36)
  {
    dispatch_release(v36);
    *(a1 + 96) = 0;
  }

  v37 = *(a1 + 544);
  if (v37)
  {

    *(a1 + 544) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {

    return FigAssetDownloadCoordinatorRelinquishAccessToURL(result);
  }

  return result;
}

__CFString *InternalURLAsset_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = CFCopyDescription(*(a1 + 72));
  v4 = CFGetRetainCount(a1);
  v5 = *(a1 + 64);
  v6 = "FormatReader";
  if (v5 == 708989738)
  {
    v6 = "ByteStream";
  }

  if (v5 == 1431456810)
  {
    v7 = "URL";
  }

  else
  {
    v7 = v6;
  }

  if (*(a1 + 618))
  {
    v8 = v3;
  }

  else
  {
    v8 = @"<redacted>";
  }

  CFStringAppendFormat(Mutable, 0, @"<InternalURLAssetRef %p %s> RC %d Created with %s {%@}", a1, a1 + 592, v4, v7, v8);
  if (v3)
  {
    CFRelease(v3);
  }

  CFStringAppendFormat(Mutable, 0, @" createFlags = 0x%0llx", *(a1 + 80));
  if (*(a1 + 88))
  {
    v9 = FigCFCopyCompactDescription();
    CFStringAppendFormat(Mutable, 0, @"\noptionsDict = {%@}", v9);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  return Mutable;
}

uint64_t FigAssetGetAllPropertyKeys()
{
  if (FigAssetGetAllPropertyKeys_static_init != -1)
  {
    FigAssetGetAllPropertyKeys_cold_1();
  }

  return gAllAssetProperties;
}

CFArrayRef InitializeAssetPropertyKeys()
{
  __dst[80] = *MEMORY[0x1E69E9840];
  memcpy(__dst, off_1E7493EF8, 0x280uLL);
  result = CFArrayCreate(*MEMORY[0x1E695E480], __dst, 80, MEMORY[0x1E695E9C0]);
  gAllAssetProperties = result;
  return result;
}

uint64_t FigAssetTrackGetAllPropertyKeys()
{
  if (FigAssetTrackGetAllPropertyKeys_static_init != -1)
  {
    FigAssetTrackGetAllPropertyKeys_cold_1();
  }

  return gAllAssetTrackProperties;
}

CFArrayRef InitializeAssetTrackPropertyKeys()
{
  v1[55] = *MEMORY[0x1E69E9840];
  v1[0] = @"FormatDescriptionArray";
  v1[1] = @"IsEnabled";
  v1[2] = @"IsSelfContained";
  v1[3] = @"TotalSampleDataLength";
  v1[4] = @"TimeRange";
  v1[5] = @"MediaPresentationTimeRange";
  v1[6] = @"MediaDecodeTimeRange";
  v1[7] = @"NaturalTimeScale";
  v1[8] = @"EstimatedDataRate";
  v1[9] = @"PeakDataRate";
  v1[10] = @"UneditedSampleCount";
  v1[11] = @"HasRollInformation";
  v1[12] = @"LanguageCode";
  v1[13] = @"MediaCharacteristicArray";
  v1[14] = @"ExtendedLanguageTag";
  v1[15] = @"NaturalSize";
  v1[16] = @"TrackDimensions";
  v1[17] = @"CleanApertureDimensions";
  v1[18] = @"ProductionApertureDimensions";
  v1[19] = @"EncodedPixelsDimensions";
  v1[20] = @"PreferredTransform";
  v1[21] = @"NominalFrameRate";
  v1[22] = @"NonDroppableFrameRate";
  v1[23] = @"CommonMetadata";
  v1[24] = @"AvailableMetadataFormats";
  v1[25] = @"IsExcludedFromAutoselection";
  v1[26] = @"Volume";
  v1[27] = @"LoudnessInfo";
  v1[28] = @"Layer";
  v1[29] = @"MinSampleDuration";
  v1[30] = @"AlternateGroupID";
  v1[31] = @"DefaultAlternateGroupID";
  v1[32] = @"ProvisionalAlternateGroupID";
  v1[33] = @"LoadSettings";
  v1[34] = @"SampleGroupDescriptions";
  v1[35] = @"HEVCTemporalLevelInfoCombinations";
  v1[36] = @"HEVCSyncSampleNALUnitTypes";
  v1[37] = @"assetTrackProperty_QuickTimeUserData";
  v1[38] = @"assetTrackProperty_ISOUserData";
  v1[39] = @"assetTrackProperty_QuickTimeMetadata";
  v1[40] = @"assetTrackProperty_FormatSpecificMetadata";
  v1[41] = @"assetTrackProperty_FormatSpecificMetadataFormat";
  v1[42] = @"assetTrackProperty_EditSegmentData";
  v1[43] = @"assetTrackProperty_PresentationSegmentData";
  v1[44] = @"assetTrackProperty_EditsExcludeAudioPrimingAndRemainderDuration";
  v1[45] = @"assetTrackProperty_GaplessSourceTimeRange";
  v1[46] = @"assetTrackProperty_TrackReferences";
  v1[47] = @"assetTrackProperty_ProtectedStatus";
  v1[48] = @"assetTrackProperty_UsesAudibleDRM";
  v1[49] = @"assetTrackProperty_AudibleContentIsAuthorized";
  v1[50] = @"assetTrackProperty_CameraRollValidation";
  v1[51] = @"assetTrackProperty_MediaPlaybackValidation";
  v1[52] = @"assetTrackProperty_MediaDecodingValidation";
  v1[53] = @"assetTrackProperty_ContainsWideColor";
  v1[54] = @"assetTrackProperty_LatentBaseDecodeTimeStampOfFirstTrackFragment";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v1, 55, MEMORY[0x1E695E9C0]);
  gAllAssetTrackProperties = result;
  return result;
}

uint64_t RegisterFigAssetBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAssetGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAssetGetClassID_sRegisterFigAssetBaseTypeOnce, RegisterFigAssetBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t RegisterFigAssetTrackBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAssetTrackGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAssetTrackGetClassID_sRegisterFigAssetTrackBaseTypeOnce, RegisterFigAssetTrackBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t CreateTrackMacroPropertyState(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (_MergedGlobals_116 != -1)
  {
    CreateTrackMacroPropertyState_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v7 = Instance;
    v8 = FigReentrantMutexCreate();
    v7[2] = v8;
    if (v8)
    {
      v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      v7[3] = v9;
      if (v9)
      {
        FigCFWeakReferenceStore();
        result = 0;
        v7[8] = a3;
        *a4 = v7;
        return result;
      }

      v11 = 1541;
    }

    else
    {
      v11 = 1538;
    }

    CreateTrackMacroPropertyState_cold_2(v11, v7, &v12);
    return v12;
  }

  else
  {
    CreateTrackMacroPropertyState_cold_3(&v13);
    return v13;
  }
}

void DisconnectCrossTrackMacroProperties(uint64_t a1, CFArrayRef theArray)
{
  if (theArray && *(a1 + 40))
  {
    if (CFArrayGetCount(theArray))
    {
      v4[0] = a1;
      v4[1] = theArray;
      CFDictionaryApplyFunction(*(a1 + 40), CrossTrackDisconnectApplierFunction, v4);
    }
  }
}

uint64_t CrossTrackDisconnectApplierFunction(void *key, uint64_t a2, CFArrayRef *a3)
{
  result = CFDictionaryGetValue(*(*a3 + 5), key);
  if (result)
  {
    v5 = result;
    result = CFSetGetCount(result);
    if (result)
    {
      result = CFArrayGetCount(a3[1]);
      if (result >= 1)
      {
        v6 = result;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a3[1], i);
          CFSetRemoveValue(v5, ValueAtIndex);
          CMNotificationCenterGetDefaultLocalCenter();
          result = FigNotificationCenterRemoveWeakListeners();
        }
      }
    }
  }

  return result;
}

void ConnectCrossTrackMacroProperties(uint64_t a1, CFArrayRef theArray)
{
  if (theArray && *(a1 + 40))
  {
    if (CFArrayGetCount(theArray))
    {
      v5[0] = a1;
      v5[1] = theArray;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(a1 + 40));
      CFDictionaryApplyFunction(MutableCopy, CrossTrackConnectApplierFunction, v5);
      CFRelease(MutableCopy);
    }
  }
}

void CrossTrackConnectApplierFunction(const void *a1, uint64_t a2, CFArrayRef *a3)
{
  Count = CFArrayGetCount(a3[1]);
  Value = CFDictionaryGetValue(*(*a3 + 5), a1);
  if (!Value)
  {
    Value = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    CFDictionarySetValue(*(*a3 + 5), a1, Value);
    CFRelease(Value);
  }

  if (Count < 1)
  {
LABEL_16:
    v14 = 0;
    v15 = 0;
    goto LABEL_17;
  }

  for (i = 0; i != Count; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a3[1], i);
    CFSetAddValue(Value, ValueAtIndex);
  }

  v9 = 0;
  while (1)
  {
    cf = 0;
    v17 = 0;
    v10 = CFArrayGetValueAtIndex(a3[1], v9);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v11)
    {
      v11(v10, a1, &v17 + 4, &v17, &cf);
    }

    if ((HIDWORD(v17) & 0xFFFFFFFE) != 2)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListeners();
      goto LABEL_13;
    }

    CFSetRemoveValue(Value, v10);
    if (HIDWORD(v17) == 3)
    {
      break;
    }

LABEL_13:
    if (cf)
    {
      CFRelease(cf);
    }

    if (Count == ++v9)
    {
      goto LABEL_16;
    }
  }

  v14 = v17;
  v15 = cf;
  cf = 0;
  CFSetApplyFunction(Value, RemoveCrossTrackListenersFromTracksInSet, *a3);
  CFSetRemoveAllValues(Value);
LABEL_17:
  if (!CFSetGetCount(Value))
  {
    v12 = MEMORY[0x19A8D0E00](*a3 + 56);
    if (v12)
    {
      v13 = v12;
      StoreByProduct(v12, a1, v14, v15, 0);
      CFRelease(v13);
    }
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

uint64_t DefineTrackMacroProperty(uint64_t a1, const void *a2, const void *a3)
{
  FigSimpleMutexLock();
  Mutable = *(a1 + 32);
  if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(a1 + 32) = Mutable) != 0))
  {
    if (CFDictionaryContainsKey(Mutable, a2))
    {
      DefineTrackMacroProperty_cold_1(&v15);
      v13 = v15;
    }

    else
    {
      CFDictionarySetValue(*(a1 + 32), a2, a3);
      v7 = *(a1 + 48);
      if (v7 && (Count = CFArrayGetCount(v7), Count >= 1))
      {
        v9 = Count;
        v10 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), v10);
          v12 = (*(a1 + 64))(ValueAtIndex);
          v13 = DefineMacroProperty(v12, a2, a3);
          CFRelease(v12);
          if (v13)
          {
            break;
          }

          if (v9 == ++v10)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        v13 = 0;
      }
    }
  }

  else
  {
    DefineTrackMacroProperty_cold_2(&v16);
    v13 = v16;
  }

  FigSimpleMutexUnlock();
  return v13;
}

void SetTrackMacroPropertyStateTracks(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFRetain(cf);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 48) = v4;

  ConnectCrossTrackMacroProperties(a1, cf);
}

void ReviseTrackMacroPropertyStateTracks(uint64_t a1, CFTypeRef cf, CFArrayRef theArray, CFArrayRef a4)
{
  v6 = *(a1 + 48);
  if (cf)
  {
    if (v6)
    {
      if (a4 && CFArrayGetCount(a4))
      {
        DisconnectCrossTrackMacroProperties(a1, a4);
      }

      if (theArray && CFArrayGetCount(theArray))
      {
        ConnectCrossTrackMacroProperties(a1, theArray);
      }

      v9 = *(a1 + 48);
      *(a1 + 48) = cf;
      CFRetain(cf);
      if (v9)
      {

        CFRelease(v9);
      }
    }

    else
    {
      *(a1 + 48) = CFRetain(cf);

      ConnectCrossTrackMacroProperties(a1, cf);
    }
  }

  else
  {
    DisconnectCrossTrackMacroProperties(a1, v6);
    v10 = *(a1 + 48);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 48) = 0;
    }
  }
}

uint64_t RegisterTrackMacroPropertyStateType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double trackMacroPropertyState_Init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t trackMacroPropertyState_Finalize(uint64_t a1)
{
  if (*(a1 + 16) && *(a1 + 48))
  {
    FigSimpleMutexLock();
    DisconnectCrossTrackMacroProperties(a1, *(a1 + 48));
    FigSimpleMutexUnlock();
  }

  FigSimpleMutexDestroy();
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  objc_destroyWeak((a1 + 56));
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

__CFString *trackMacroPropertyState_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"TrackMacroPropertyState %p", a1);
  return Mutable;
}

void CrossTrackMacroPropertyNotificationCallback(uint64_t a1, CFDictionaryRef *a2, const void *a3, const void *a4, const __CFDictionary *a5)
{
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v9)
  {
    v10 = v9;
    v11 = CFDictionaryGetValue(a5, @"assetPayload_Property");
    value = 0;
    FigSimpleMutexLock();
    if (CFDictionaryGetValueIfPresent(a2[5], v11, &value) && CFSetGetCount(value))
    {
      if (CFEqual(a3, @"assetTrackNotice_PropertyFailedToLoad"))
      {
        FigCFDictionaryGetIntIfPresent();
        v12 = CFDictionaryGetValue(a5, @"assetPayload_CFError");
        v13 = value;
        CFSetApplyFunction(value, RemoveCrossTrackListenersFromTracksInSet, a2);
        CFSetRemoveAllValues(v13);
      }

      else
      {
        CFSetRemoveValue(value, a4);
        context[0] = 0;
        context[1] = a4;
        FigSimpleMutexLock();
        CFDictionaryApplyFunction(a2[5], trackIsInAnyPendingSetsApplier, context);
        if (!LOBYTE(context[0]))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterRemoveWeakListeners();
        }

        FigSimpleMutexUnlock();
        v12 = 0;
      }

      if (!CFSetGetCount(value))
      {
        v14 = MEMORY[0x19A8D0E00](a2 + 7);
        if (v14)
        {
          v15 = v14;
          StoreByProduct(v14, v11, 0, v12, 0);
          CFRelease(v15);
        }
      }
    }

    FigSimpleMutexUnlock();
    if (GetAssetDeferredReleaseQueue_createQueueOnce != -1)
    {
      CrossTrackMacroPropertyNotificationCallback_cold_1();
    }

    dispatch_async_f(gCommonAssetDeferredReleaseQueue, v10, DeferredReleaseCFType);
  }
}

uint64_t RemoveCrossTrackListenersFromTracksInSet()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListeners();
}

uint64_t trackIsInAnyPendingSetsApplier(int a1, CFSetRef theSet, uint64_t a3)
{
  result = CFSetContainsValue(theSet, *(a3 + 8));
  *a3 |= result;
  return result;
}

uint64_t CreateAssetDeferredReleaseQueue()
{
  result = FigDispatchQueueCreateWithPriority();
  gCommonAssetDeferredReleaseQueue = result;
  return result;
}

void FigAssetDownloadStorageManagementExcludeURLFromBackup(const __CFURL *a1)
{
  error = 0;
  CFURLSetResourcePropertyForKey(a1, *MEMORY[0x1E695EB30], *MEMORY[0x1E695E4D0], &error);
  if (error)
  {
    CFRelease(error);
  }
}

uint64_t FigSetImageDataForAssetAtURL(const __CFURL *a1, CFDataRef theData)
{
  if (a1)
  {
    if (theData)
    {
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);

      return figSetExtendedAttributeData(a1, "com.apple.coremedia.asset.image", BytePtr, Length);
    }

    else
    {
      FigSetImageDataForAssetAtURL_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigSetImageDataForAssetAtURL_cold_2(&v8);
    return v8;
  }
}

uint64_t figSetExtendedAttributeData(const __CFURL *a1, const char *a2, const void *a3, size_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    figSetExtendedAttributeData_cold_7(buffer);
    return *buffer;
  }

  if (!FigCFURLIsLocalResource())
  {
    figSetExtendedAttributeData_cold_6(buffer);
    return *buffer;
  }

  if (!a2)
  {
    figSetExtendedAttributeData_cold_5(buffer);
    return *buffer;
  }

  if (!a3)
  {
    figSetExtendedAttributeData_cold_4(buffer);
    return *buffer;
  }

  v8 = CFURLCopyAbsoluteURL(a1);
  if (!v8)
  {
    figSetExtendedAttributeData_cold_3(buffer);
    return *buffer;
  }

  v9 = v8;
  v10 = CFURLCopyFileSystemPath(v8, kCFURLPOSIXPathStyle);
  if (!v10)
  {
    figSetExtendedAttributeData_cold_2(v9, buffer);
    return *buffer;
  }

  v11 = v10;
  if (CFStringGetCString(v10, buffer, 1024, 0x8000100u))
  {
    v12 = setxattr(buffer, a2, a3, a4, 0, 0);
    v13 = __error();
    v14 = 0;
    if (v12)
    {
      v14 = *v13;
    }
  }

  else
  {
    figSetExtendedAttributeData_cold_1(&v16);
    v14 = v16;
  }

  CFRelease(v9);
  CFRelease(v11);
  return v14;
}

uint64_t FigSetNameForAssetAtURL(const __CFURL *a1, uint64_t a2)
{
  if (!a1)
  {
    FigSetNameForAssetAtURL_cold_3(&v8);
LABEL_9:
    v6 = v8;
    goto LABEL_5;
  }

  if (!a2)
  {
    FigSetNameForAssetAtURL_cold_2(&v8);
    goto LABEL_9;
  }

  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  if (!CStringPtrAndBufferToFree)
  {
    FigSetNameForAssetAtURL_cold_1(&v8);
    goto LABEL_9;
  }

  v4 = CStringPtrAndBufferToFree;
  v5 = strlen(CStringPtrAndBufferToFree);
  v6 = figSetExtendedAttributeData(a1, "com.apple.coremedia.asset.name", v4, v5 + 1);
LABEL_5:
  free(0);
  return v6;
}

uint64_t figGetExtendedAttributeData(const __CFURL *a1, const char *a2, void *a3, ssize_t *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    figGetExtendedAttributeData_cold_6(buffer);
LABEL_20:
    v14 = 0;
    v16 = *buffer;
    goto LABEL_13;
  }

  if (!FigCFURLIsLocalResource())
  {
    figGetExtendedAttributeData_cold_5(buffer);
    goto LABEL_20;
  }

  if (!a3)
  {
    figGetExtendedAttributeData_cold_4(buffer);
    goto LABEL_20;
  }

  if (!a4)
  {
    figGetExtendedAttributeData_cold_3(buffer);
    goto LABEL_20;
  }

  v8 = CFURLCopyAbsoluteURL(a1);
  if (!v8)
  {
    figGetExtendedAttributeData_cold_2(buffer);
    goto LABEL_20;
  }

  v9 = v8;
  v10 = CFURLCopyFileSystemPath(v8, kCFURLPOSIXPathStyle);
  if (!v10)
  {
    figGetExtendedAttributeData_cold_1(v9, buffer);
    goto LABEL_20;
  }

  v11 = v10;
  if (!CFStringGetCString(v10, buffer, 1024, 0x8000100u))
  {
    v14 = 0;
    v16 = 4294954516;
    goto LABEL_12;
  }

  v12 = getxattr(buffer, a2, 0, 0, 0, 0);
  v13 = __error();
  if (v12 <= 0)
  {
    v14 = 0;
LABEL_23:
    v16 = *v13;
    goto LABEL_12;
  }

  v14 = malloc_type_calloc(1uLL, v12, 0xEB68A7FBuLL);
  if (!v14)
  {
    v16 = 4294954510;
    goto LABEL_12;
  }

  v15 = getxattr(buffer, a2, v14, v12, 0, 0);
  v13 = __error();
  if (v15 <= 0)
  {
    goto LABEL_23;
  }

  v16 = 0;
  *a3 = v14;
  *a4 = v15;
  v14 = 0;
LABEL_12:
  CFRelease(v9);
  CFRelease(v11);
LABEL_13:
  free(v14);
  return v16;
}

void *OUTLINED_FUNCTION_2_159()
{

  return objc_autoreleasePoolPush();
}

uint64_t OUTLINED_FUNCTION_4_127(uint64_t a1)
{
  v5 = *(v2 + 2200);

  return [v5 assetFromFile:a1 withIdentifier:v1];
}

uint64_t OUTLINED_FUNCTION_5_111()
{
  v4 = *(v2 + 2200);

  return [v4 assetFromFile:v1 withIdentifier:v0];
}

uint64_t FigValeriaGetClassID()
{
  if (FigValeriaGetClassID_sRegisterFigValeriaTypeOnce != -1)
  {
    FigValeriaGetClassID_cold_1();
  }

  return FigValeriaGetClassID_sFigValeriaClassID;
}

uint64_t __FigValeriaGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigValeriaGetTypeID()
{
  if (FigValeriaGetClassID_sRegisterFigValeriaTypeOnce != -1)
  {
    FigValeriaGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

void InternalURLAssetCleanupPostPurchaseProcessing(uint64_t a1)
{
  if (!*(a1 + 192) && *(a1 + 193))
  {
    v2 = *(a1 + 296);
    CMNotificationCenterGetDefaultLocalCenter();
    if (v2)
    {
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v4 = *(CMBaseObjectGetVTable() + 8);
      if (*v4 >= 2uLL)
      {
        v5 = v4[8];
        if (v5)
        {
          v5(CMBaseObject);
        }
      }

      FigThreadAbortQueueForTeardown();
      dispatch_group_wait(*(a1 + 296), 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(*(a1 + 296));
      *(a1 + 296) = 0;
      dispatch_release(*(a1 + 304));
      *(a1 + 304) = 0;
    }

    else
    {

      FigNotificationCenterRemoveWeakListener();
    }
  }
}

uint64_t InternalURLAssetEnsureCustomURLLoaderCreated(dispatch_once_t *context)
{
  v3 = context[2];
  v2 = context + 2;
  if (v3 != -1)
  {
    dispatch_once_f(v2, context, CreateCustomURLLoaderOnceFunc);
  }

  return *(context + 126);
}

void CreateCustomURLLoaderOnceFunc(uint64_t a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 496))
  {
    *(a1 + 504) = 0;
  }

  else
  {
    v2 = MEMORY[0x1E695E4D0];
    if (!*(a1 + 618))
    {
      v2 = MEMORY[0x1E695E4C0];
    }

    v3 = *MEMORY[0x1E695E480];
    v4 = *MEMORY[0x1E69615F8];
    values = *v2;
    keys[0] = v4;
    v5 = CFDictionaryCreate(v3, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v5)
    {
      v6 = v5;
      *(a1 + 504) = FigCustomURLLoaderCreate();
      CFRelease(v6);
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *(a1 + 504) = FigCustomURLLoaderCreate();
    }
  }
}

uint64_t InternalURLAssetSetStorageSession(void *a1, uint64_t a2)
{
  if (!*(a2 + 88) || !FigCFDictionaryGetArrayValue())
  {
    return 0;
  }

  return EnsureStorageSessionCreated(a1, a2);
}

uint64_t EnsureStorageSessionCreated(void *a1, uint64_t a2)
{
  if (*(a2 + 288))
  {
    return *(a2 + 292);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    EnsureStorageSessionCreated_cold_2(a2);
LABEL_6:
    v3 = FigURLStorageSessionCreate(Mutable, (a2 + 536));
    *(a2 + 292) = v3;
    goto LABEL_7;
  }

  if (EnsureStorageSessionCreated_cold_1(&v7))
  {
    goto LABEL_6;
  }

  v3 = v7;
LABEL_7:
  *(a2 + 288) = 1;
  StoreByProduct(a1, @"assetProperty_StorageSession", v3, 0, *(a2 + 536));
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

void InternalURLAssetSetIncrementalFragmentParsingInterval(void *a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  if (v4)
  {
    v5 = v4;
    *v4 = CFRetain(a1);
    v5[1] = a2;
    v7 = a1[12];
    v6 = a1[13];

    dispatch_group_async_f(v6, v7, v5, PerformSetIncrementalFragmentParsingInterval);
  }
}

void PerformSetIncrementalFragmentParsingInterval(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = v2 & ~(v2 >> 63);
  *(v3 + 70) = v4;
  if (*(v3 + 552))
  {
    v5 = *(v3 + 71);
    if (v5)
    {
      if (v2 < 1)
      {
        v8 = -1;
        v6 = 0;
        v7 = 0;
      }

      else
      {
        v6 = 1000000 * v4;
        v7 = 1000000 * (v4 / 0x64);
        v8 = 0;
      }

      dispatch_source_set_timer(v5, v8, v6, v7);
    }
  }

  CFRelease(*a1);

  free(a1);
}

uint64_t InternalURLAssetShutdownWorkQueue(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    *(a1 + 112) = 1;
    return FigThreadAbortQueueForTeardown();
  }

  return result;
}

void InternalURLAssetCleanupChangeMonitoring(uint64_t a1)
{
  if (*(a1 + 464))
  {
    if (*(a1 + 465))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    if (*(a1 + 466))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    if (*(a1 + 467))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    if (*(a1 + 468))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    if (*(a1 + 456))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v2 = *(a1 + 456);
      if (v2)
      {
        CFRelease(v2);
        *(a1 + 456) = 0;
      }
    }
  }
}

void DurationPropertyNotificationCallback(int a1, NSObject **cf)
{
  CFRetain(cf);
  v4 = cf[12];
  v3 = cf[13];

  dispatch_group_async_f(v3, v4, cf, ReviseDurationProperty);
}

void CouldContainFragmentsPropertyNotificationCallback(int a1, NSObject **cf)
{
  CFRetain(cf);
  v4 = cf[12];
  v3 = cf[13];

  dispatch_group_async_f(v3, v4, cf, ReviseCouldContainFragmentsProperty);
}

void ContainsFragmentsPropertyNotificationCallback(int a1, NSObject **cf)
{
  CFRetain(cf);
  v4 = cf[12];
  v3 = cf[13];

  dispatch_group_async_f(v3, v4, cf, ReviseContainsFragmentsProperty);
}

void TracksArrayPropertyNotificationCallback(int a1, NSObject **cf)
{
  CFRetain(cf);
  v4 = cf[12];
  v3 = cf[13];

  dispatch_group_async_f(v3, v4, cf, ReviseTracksArrayProperty);
}

void AssetMutationMonitoringNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (a5 && *(a2 + 456))
  {
    v7 = MEMORY[0x19A8D0E00](a2 + 472);
    if (v7)
    {
      v8 = v7;
      v9 = CFRetain(*(a2 + 456));
      CFRetain(a5);
      CFRetain(a2);
      CFRetain(v8);
      v11 = *(a2 + 96);
      v10 = *(a2 + 104);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __AssetMutationMonitoringNotificationCallback_block_invoke;
      v12[3] = &__block_descriptor_tmp_108;
      v12[4] = a5;
      v12[5] = a2;
      v12[6] = v8;
      v12[7] = v9;
      dispatch_group_async(v10, v11, v12);
      CFRelease(v8);
    }
  }
}

void InternalURLAssetCleanupIncrementalFragmentProcessing(void *a1)
{
  CFRetain(a1);
  v3 = a1[12];
  v2 = a1[13];

  dispatch_group_async_f(v2, v3, a1, TearDownIncrementalFragmentParsingTimer);
}

void TearDownIncrementalFragmentParsingTimer(CFTypeRef cf)
{
  v2 = *(cf + 71);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(cf + 71));
    *(cf + 71) = 0;
    *(cf + 552) = 0;
    v3 = *(cf + 72);
    if (v3)
    {
      os_release(v3);
      *(cf + 72) = 0;
    }
  }

  CFRelease(cf);
}

uint64_t InternalURLAssetEnsureDownloadTokenEstablished(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 32))
  {
    v2 = 0;
  }

  else
  {
    v3 = MEMORY[0x19A8D0E00](a1 + 48);
    if (v3)
    {
      v4 = v3;
      FigAssetTableAddAsset();
      *(a1 + 32) = 1;
      FigSimpleMutexUnlock();
      CFRelease(v4);
      return 0;
    }

    v2 = 4294954511;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t InternalURLAssetCreateByteStreamProvider(uint64_t a1)
{
  v2 = *(a1 + 80);
  if ((v2 & 0x38) != 0)
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  v4 = v3 & (v2 >> 1);
  if ((v3 & (v2 >> 1)) != 0 && *(a1 + 64) == 1431456810)
  {
    v5 = *MEMORY[0x1E695E480];
    BaseByteStreamProvider = FigGetBaseByteStreamProvider();
    v7 = *(a1 + 72);

    return MEMORY[0x1EEDBC2D0](v5, BaseByteStreamProvider, v7, v4, a1 + 488);
  }

  else
  {
    v8 = FigGetBaseByteStreamProvider();
    *(a1 + 488) = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    return 0;
  }
}

uint64_t InternalURLAssetEnsurePersistentStreamingCacheCreated(uint64_t a1)
{
  cf = *MEMORY[0x1E695E4C0];
  FigSimpleMutexLock();
  LODWORD(v2) = EnsureStreamingCache(a1, 1);
  v3 = *(a1 + 408);
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigStreamingCacheCopyProperty(v3, @"FSC_IsDiskBacked", AllocatorForMedia, &cf);
  if (cf == *MEMORY[0x1E695E4D0])
  {
    v2 = v2;
  }

  else
  {
    v2 = 4294955124;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

uint64_t InternalURLAssetEnsureContentKeySessionCreated(uint64_t a1)
{
  FigSimpleMutexLock();
  if (!*(a1 + 520))
  {
    if (FigContentKeySessionCreate(*MEMORY[0x1E695E480], (a1 + 520)))
    {
      InternalURLAssetEnsureContentKeySessionCreated_cold_1();
      DataValue = v6;
      goto LABEL_3;
    }

    if (*(a1 + 88))
    {
      DataValue = FigCFDictionaryGetDataValue();
      if (!DataValue)
      {
        goto LABEL_3;
      }

      v4 = *(a1 + 520);
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v5 || v5(v4, *MEMORY[0x1E6960F80], DataValue))
      {
        InternalURLAssetEnsureContentKeySessionCreated_cold_2();
        DataValue = v7;
        goto LABEL_3;
      }
    }
  }

  DataValue = 0;
LABEL_3:
  FigSimpleMutexUnlock();
  return DataValue;
}

uint64_t InternalURLAssetEnsureContentKeyBossIsCreatedAndUpToDate(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 528))
  {
    v2 = 0;
  }

  else
  {
    v3 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      InternalURLAssetEnsureContentKeyBossIsCreatedAndUpToDate_cold_1(&v11);
      active = v11;
      goto LABEL_15;
    }

    v2 = Mutable;
    FigCFDictionarySetValueFromKeyInDict();
    v5 = MEMORY[0x1E695E4C0];
    if ((*(a1 + 80) & 0x200) == 0)
    {
      v5 = MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(v2, @"kCKBCO_OkToLogURLs", *v5);
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionarySetBoolean();
    v6 = _os_feature_enabled_impl();
    v7 = (a1 + 528);
    if (v6)
    {
      v8 = FigContentKeyBossCreate(v3, v2, v7);
    }

    else
    {
      v8 = FigContentKeyCompoundBossCreate(v3, v2, v7);
    }

    active = v8;
    if (v8)
    {
      goto LABEL_14;
    }
  }

  if (_os_feature_enabled_impl())
  {
    active = URLAssetUpdateToActiveContentKeyBoss(a1);
    if (!v2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  active = 0;
  if (v2)
  {
LABEL_14:
    CFRelease(v2);
  }

LABEL_15:
  FigSimpleMutexUnlock();
  return active;
}

uint64_t URLAssetUpdateToActiveContentKeyBoss(uint64_t a1)
{
  v15 = 0;
  cf = 0;
  v14 = 0;
  v2 = *(a1 + 528);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3(v2, &cf);
  v5 = cf;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = cf == 0;
  }

  if (!v6)
  {
    v7 = *(a1 + 528);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 136);
    if (v8)
    {
      v8(v7, &v15);
    }

    v9 = cf;
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 136);
    if (v10)
    {
      v11 = v10(v9, &v14);
      if (!v11)
      {
        v12 = *(a1 + 528);
        if (v12)
        {
          CFRelease(v12);
        }

        v4 = 0;
        *(a1 + 528) = cf;
        return v4;
      }

      v4 = v11;
      goto LABEL_14;
    }

LABEL_13:
    v4 = 4294954514;
LABEL_14:
    v5 = cf;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v4;
}

uint64_t InternalURLAssetTransferBytePumpAsync(const void *a1, dispatch_queue_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A0040CEEF0025uLL);
  if (v8)
  {
    v9 = v8;
    v8[2] = CFRetain(a2);
    v9[3] = CFRetain(a1);
    v9[5] = a3;
    v9[6] = a4;
    dispatch_group_async_f(a2[13], a2[12], v9, PerformTransferBytePumpAsync);
    return 0;
  }

  else
  {
    InternalURLAssetTransferBytePumpAsync_cold_1(&v11);
    return v11;
  }
}

void InternalURLAssetCleanupStreamingProcessing(uint64_t a1)
{
  if (*(a1 + 384))
  {
    RemoveBytePumpListenersAndDoBarrier(a1);
    FigBytePumpGetFigBaseObject(*(a1 + 384));
    if (v2)
    {
      v3 = v2;
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v4)
      {

        v4(v3);
      }
    }
  }
}

uint64_t FigAssetCreateCustomMediaSelectionSchemeFromJSON(const void *a1, CFMutableArrayRef *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFArrayGetTypeID()))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v5 = Mutable;
      FigCFArrayApplyFunction();
      if (!CFArrayGetCount(v5))
      {
        CFRelease(v5);
        v5 = 0;
      }

      result = 0;
      *a2 = v5;
    }

    else
    {
      FigAssetCreateCustomMediaSelectionSchemeFromJSON_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigAssetCreateCustomMediaSelectionSchemeFromJSON_cold_2(&v8);
    return v8;
  }

  return result;
}

void convertCustomMediaSelectionSchemeMetadata(const __CFDictionary *a1, __CFArray *a2)
{
  value = 0;
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFDictionaryGetTypeID()))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      CFDictionaryApplyFunction(a1, convertCustomMediaSelectionSchemeGroupMetadata, Mutable);
      if (FigCFDictionaryGetCount() && CFDictionaryGetValueIfPresent(v6, @"CustomMediaSelectionSchemeGroupMediaType", &value))
      {
        if (CFDictionaryGetValueIfPresent(v6, @"CustomMediaSelectionSchemeGroupSelectors", &value))
        {
          CFArrayAppendValue(a2, v6);
        }
      }

      CFRelease(v6);
    }

    else
    {
      convertCustomMediaSelectionSchemeMetadata_cold_1();
    }
  }

  else
  {
    convertCustomMediaSelectionSchemeMetadata_cold_2();
  }
}

void URLAssetPropertyWorkFunction(void *a1)
{
  v2 = *(a1 + 5);
  if (*(v2 + 112))
  {
    v16 = -12785;
    *(a1 + 4) = -12785;
    goto LABEL_60;
  }

  v3 = *a1;
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    strncpy(__dst, (v2 + 592), 8uLL);
    v5 = *(a1 + 1);
    if (v5)
    {
      CFHash(v5);
    }

    kdebug_trace();
  }

  v6 = *(a1 + 1);
  if (*(a1 + 48))
  {
    *__dst = 0;
    LockTrackMacroPropertyState();
    v7 = *(*(v2 + 608) + 40);
    if (v7 && CFDictionaryGetValueIfPresent(v7, v6, __dst))
    {
      v26 = 0;
      v25 = 0;
      cf = 0;
      if (!*(*(v2 + 608) + 48) && ((v8 = EnsureAssetTypeEstablished(v3, v2)) != 0 || !*(v2 + 192) && (v8 = EnsureTracksArrayCreated(v3, v2)) != 0))
      {
        v16 = v8;
      }

      else
      {
        v9 = *(*(v2 + 608) + 48);
        if (v9)
        {
          Count = CFArrayGetCount(v9);
          if (Count >= 1)
          {
            v11 = Count;
            for (i = 0; v11 != i; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(*(v2 + 608) + 48), i);
              if (CFSetContainsValue(*__dst, ValueAtIndex))
              {
                v23 = 0;
                v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (v14)
                {
                  v14(ValueAtIndex, v6, &v23, &v25, &cf);
                }

                if (v23 == 2)
                {
                  goto LABEL_24;
                }

                if (v23 == 3)
                {
                  CFSetRemoveAllValues(*__dst);
                  break;
                }

                v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                if (v15)
                {
                  v15(ValueAtIndex, v6, &v26);
                }

                if (v26)
                {
LABEL_24:
                  CFSetRemoveValue(*__dst, ValueAtIndex);
                }
              }
            }
          }
        }

        if (!CFSetGetCount(*__dst))
        {
          StoreByProduct(v3, v6, v25, cf, 0);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v16 = 0;
        *(a1 + 49) = 1;
      }
    }

    else
    {
      *(a1 + 49) = 0;
      v16 = -12172;
    }

    UnlockTrackMacroPropertyState();
    goto LABEL_56;
  }

  if (CFEqual(*(a1 + 1), @"assetProperty_ResolvedURL"))
  {
    if (!*(v2 + 168))
    {
      v17 = *(v2 + 64);
      if (v17 == 1431456810 || v17 == 708989738)
      {
        EnsureContentStreamCreated(v3, v2);
      }

      *(v2 + 168) = 1;
    }

    v19 = *(v2 + 184);
    if (v19 || (v19 = *(v2 + 176)) != 0)
    {
      v19 = CFRetain(v19);
    }

    *(a1 + 3) = v19;
    v16 = *(v2 + 172);
    goto LABEL_56;
  }

  if (CFEqual(*(a1 + 1), @"assetProperty_AssetType"))
  {
    v16 = EnsureAssetTypeEstablished(v3, v2);
    if (v16)
    {
LABEL_56:
      *(a1 + 4) = v16;
      goto LABEL_57;
    }

    v20 = *(v2 + 120);
    if (!v20)
    {
LABEL_45:
      *(a1 + 3) = v20;
      goto LABEL_56;
    }

LABEL_44:
    v20 = CFRetain(v20);
    goto LABEL_45;
  }

  if (CFEqual(*(a1 + 1), @"assetProperty_ContentByteStream"))
  {
    v16 = EnsureContentStreamCreated(v3, v2);
    v20 = *(v2 + 160);
    if (!v20)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (!CFEqual(*(a1 + 1), @"assetProperty_StorageSession"))
  {
    v22 = EnsureAssetTypeEstablished(v3, v2);
    *(a1 + 4) = v22;
    if (!v22)
    {
      v21 = (*(v2 + 128))(v3, v2, *(a1 + 1), a1 + 24);
      goto LABEL_66;
    }

    v16 = v22;
LABEL_60:
    *(a1 + 4) = AssetCopyLoadError(v2, v16);
    goto LABEL_61;
  }

  v21 = ProduceStorageSessionProperty(v3, v2, a1 + 3);
LABEL_66:
  v16 = v21;
  *(a1 + 4) = v21;
LABEL_57:
  if (*v4 == 1)
  {
    kdebug_trace();
    v16 = *(a1 + 4);
  }

  if (v16)
  {
    goto LABEL_60;
  }

LABEL_61:
  ReportCompletedPropertyJob(a1);
}

uint64_t ProduceStorageSessionProperty(void *a1, uint64_t a2, void *a3)
{
  v5 = EnsureStorageSessionCreated(a1, a2);
  v6 = *(a2 + 536);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  *a3 = v6;
  return v5;
}

uint64_t EnsureAssetTypeEstablished(void *a1, uint64_t a2)
{
  if (*(a2 + 112))
  {
    v11 = -12785;
  }

  else
  {
    if (*(a2 + 113))
    {
      v4 = (a2 + 116);
      return *v4;
    }

    if (*(a2 + 64) == 709251626)
    {
      v5 = kFigAssetType_FormatReader;
      goto LABEL_10;
    }

    v6 = EnsureContentStreamCreated(a1, a2);
    if (!v6)
    {
      if (*(a2 + 192))
      {
        v7 = CFRetain(@"com.apple.coremedia.assettype.streaming");
        *(a2 + 120) = v7;
        v8 = ProduceStreamingAssetProperty;
LABEL_11:
        *(a2 + 128) = v8;
        *(a2 + 116) = 0;
        v9 = (a2 + 116);
        *(v9 - 3) = 1;
        StoreByProduct(a1, @"assetProperty_AssetType", 0, 0, v7);
        v4 = v9;
        return *v4;
      }

      v5 = kFigAssetType_File;
LABEL_10:
      v7 = CFRetain(*v5);
      *(a2 + 120) = v7;
      v8 = ProduceFormatReaderAssetProperty;
      goto LABEL_11;
    }

    v11 = v6;
  }

  *(a2 + 113) = 1;
  *(a2 + 116) = v11;
  v4 = (a2 + 116);
  Error = AssetCopyLoadError(a2, v11);
  StoreByProduct(a1, @"assetProperty_AssetType", *(a2 + 116), Error, *(a2 + 120));
  if (Error)
  {
    CFRelease(Error);
  }

  return *v4;
}

CFTypeRef AssetCopyLoadError(uint64_t a1, int a2)
{
  v15 = 0;
  if (*(a1 + 192))
  {
    v3 = *(a1 + 512);
    if (v3)
    {
      cf = 0;
      AllocatorForMedia = FigGetAllocatorForMedia();
      FigStreamingAssetLoaderCopyProperty(v3, @"SAP_ErrorLog", AllocatorForMedia, &cf);
    }

    else
    {
      v9 = *(a1 + 384);
      if (!v9)
      {
        return 0;
      }

      cf = 0;
      FigBaseObject = FigBytePumpGetFigBaseObject(v9);
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v11)
      {
        return 0;
      }

      v11(FigBaseObject, 0x1F0B1EFD8, *MEMORY[0x1E695E480], &cf);
    }

    if (cf)
    {
      FigCreateCFErrorFromFigErrorLog(cf, a2);
      v6 = v5;
      CFRelease(cf);
      return v6;
    }

    return 0;
  }

  if (*(a1 + 160))
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(CMBaseObject, *MEMORY[0x1E6960DD8], 0, &v15);
      return v15;
    }

    return 0;
  }

  v12 = *(a1 + 152);
  if (!v12)
  {
    return 0;
  }

  return CFRetain(v12);
}

uint64_t InternalURLAssetSetShouldPrefetchCryptKeys(const void *a1, dispatch_queue_t *a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040A95220FAuLL);
  *v6 = CFRetain(a2);
  v6[1] = CFRetain(a1);
  *(v6 + 16) = *MEMORY[0x1E695E4D0] == a3;
  dispatch_group_async_f(a2[13], a2[12], v6, PerformSetShouldPrefetchCryptKeys);
  return 0;
}

void URLAssetTrackPropertyWorkFunction(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    strncpy(__dst, (v2 + 80), 8uLL);
    v4 = *(a1 + 8);
    if (v4)
    {
      CFHash(v4);
    }

    kdebug_trace();
  }

  v5 = ProduceAssetTrackProperty(v2, *(a1 + 8), (a1 + 24));
  if (*v3 == 1)
  {
    kdebug_trace();
  }

  *(a1 + 16) = v5;
  if (v5)
  {
    if (*(v2 + 32))
    {
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(CMBaseObject, *MEMORY[0x1E6960DD8], *MEMORY[0x1E695E480], a1 + 32);
      }
    }
  }

  ReportCompletedPropertyJob(a1);
}

uint64_t ProduceAssetTrackProperty(uint64_t a1, CFTypeRef cf1, void *a3)
{
  v29 = 0;
  if (CFEqual(cf1, @"FormatDescriptionArray"))
  {
    FigBaseObject = FigTrackReaderGetFigBaseObject(*(a1 + 24));
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v8 = kFigTrackProperty_FormatDescriptionArray;
LABEL_7:
      v9 = v7(FigBaseObject, *v8, *MEMORY[0x1E695E480], &v29);
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (CFEqual(cf1, @"IsEnabled"))
  {
    FigBaseObject = FigTrackReaderGetFigBaseObject(*(a1 + 24));
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v8 = kFigTrackProperty_Enabled;
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  if (!CFEqual(cf1, @"IsSelfContained"))
  {
    if (CFEqual(cf1, @"TotalSampleDataLength"))
    {
      FigBaseObject = FigTrackReaderGetFigBaseObject(*(a1 + 24));
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v8 = kFigTrackProperty_UneditedNumDataBytes;
        goto LABEL_7;
      }

LABEL_16:
      v9 = -12782;
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"TimeRange"))
    {
      v9 = ProduceTimeRangeAssetTrackProperty(a1, &v29);
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"MediaPresentationTimeRange"))
    {
      v9 = ProduceMediaPresentationTimeRangeAssetTrackProperty();
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"MediaDecodeTimeRange"))
    {
      v9 = ProduceMediaDecodeTimeRangeAssetTrackProperty();
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"NaturalTimeScale"))
    {
      v17 = *(a1 + 24);
      v18 = kFigTrackProperty_Timescale;
LABEL_52:
      v19 = *v18;
      v20 = *MEMORY[0x1E695E480];
      v21 = FigTrackReaderGetFigBaseObject(v17);
      v22 = v19;
      v23 = v20;
LABEL_53:
      v9 = CMBaseObjectCopyProperty(v21, v22, v23, &v29);
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"EstimatedDataRate"))
    {
      v17 = *(a1 + 24);
      v18 = kFigTrackProperty_EstimatedDataRate;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"PeakDataRate"))
    {
      v17 = *(a1 + 24);
      v18 = kFigTrackProperty_PeakDataRate;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"UneditedSampleCount"))
    {
      v17 = *(a1 + 24);
      v18 = kFigTrackProperty_UneditedSampleCount;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"HasRollInformation"))
    {
      v17 = *(a1 + 24);
      v18 = kFigTrackProperty_HasRollInformation;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"LanguageCode"))
    {
      v17 = *(a1 + 24);
      v18 = kFigTrackProperty_LanguageCode;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"MediaCharacteristicArray"))
    {
      v9 = FigMediaCharacteristicsCopyMediaCharacteristicsForTrackReader(*MEMORY[0x1E695E480], *(a1 + 24), &v29);
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"ExtendedLanguageTag"))
    {
      v17 = *(a1 + 24);
      v18 = kFigTrackProperty_ExtendedLanguageTagString;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"NaturalSize"))
    {
      v24 = *MEMORY[0x1E695E480];
      v25 = FigTrackReaderGetFigBaseObject(*(a1 + 24));
      if (CMBaseObjectCopyProperty(v25, @"CleanApertureDimensions", v24, &v29) || !v29)
      {
        v21 = FigTrackReaderGetFigBaseObject(*(a1 + 24));
        v22 = @"TrackDimensions";
        v23 = v24;
        goto LABEL_53;
      }

      goto LABEL_61;
    }

    if (CFEqual(cf1, @"TrackDimensions"))
    {
      v17 = *(a1 + 24);
      v18 = kFigTrackProperty_Dimensions;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"CleanApertureDimensions"))
    {
      v17 = *(a1 + 24);
      v18 = kFigTrackProperty_CleanApertureDimensions;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"ProductionApertureDimensions"))
    {
      v17 = *(a1 + 24);
      v18 = kFigTrackProperty_ProductionApertureDimensions;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"EncodedPixelsDimensions"))
    {
      v17 = *(a1 + 24);
      v18 = kFigTrackProperty_EncodedPixelsDimensions;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"PreferredTransform"))
    {
      v17 = *(a1 + 24);
      v18 = kFigTrackProperty_Matrix;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"NominalFrameRate"))
    {
      v17 = *(a1 + 24);
      v18 = kFigTrackProperty_NominalFrameRate;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"NonDroppableFrameRate"))
    {
      v9 = ProduceAssetTrackNonDroppableFrameRateProperty(a1, &v29);
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"assetTrackProperty_QuickTimeMetadata"))
    {
      v9 = FigMetadataCopyTrackQuickTimeMetadata(*(a1 + 24), *MEMORY[0x1E695E480], &v29);
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"assetTrackProperty_QuickTimeUserData"))
    {
      v9 = FigMetadataCopyTrackQuickTimeUserdata(*(a1 + 24), *MEMORY[0x1E695E480], &v29);
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"assetTrackProperty_ISOUserData"))
    {
      v9 = FigMetadataCopyTrackISOUserdata(*(a1 + 24), *MEMORY[0x1E695E480], &v29);
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"CommonMetadata"))
    {
      v9 = FigMetadataCopyTrackCommonMetadata(*(a1 + 24), *MEMORY[0x1E695E480], &v29);
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"assetTrackProperty_FormatSpecificMetadata"))
    {
      v9 = ProduceFormatSpecificMetadataAssetTrackProperty();
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"assetTrackProperty_FormatSpecificMetadataFormat"))
    {
      v9 = ProduceFormatSpecificMetadataFormatAssetTrackProperty();
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"AvailableMetadataFormats"))
    {
      v9 = ProduceAvailableMetadataFormatsAssetTrackProperty();
      goto LABEL_17;
    }

    if (CFEqual(cf1, @"IsExcludedFromAutoselection"))
    {
      v17 = *(a1 + 24);
      v18 = kFigTrackProperty_ExcludeFromAutoSelection;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"Volume"))
    {
      v17 = *(a1 + 24);
      v18 = kFigTrackProperty_Volume;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"Layer"))
    {
      v17 = *(a1 + 24);
      v18 = kFigTrackProperty_Layer;
      goto LABEL_52;
    }

    if (CFEqual(cf1, @"assetTrackProperty_EditSegmentData"))
    {
      v26 = a1;
      v27 = 0;
    }

    else
    {
      if (!CFEqual(cf1, @"assetTrackProperty_PresentationSegmentData"))
      {
        if (CFEqual(cf1, @"assetTrackProperty_EditsExcludeAudioPrimingAndRemainderDuration"))
        {
          v17 = *(a1 + 24);
          v18 = kFigTrackProperty_EditsExcludeAudioPrimingAndRemainderDuration;
          goto LABEL_52;
        }

        if (CFEqual(cf1, @"assetTrackProperty_GaplessSourceTimeRange"))
        {
          ProduceGaplessSourceTimeRangeAssetTrackProperty(a1, &v29);
          goto LABEL_61;
        }

        if (CFEqual(cf1, @"assetTrackProperty_TrackReferences"))
        {
          v9 = ProduceTrackReferencesTrackProperty(a1, &v29);
          goto LABEL_17;
        }

        if (CFEqual(cf1, @"LoudnessInfo"))
        {
          v9 = ProduceLoudnessInfoTrackProperty(a1, &v29);
          goto LABEL_17;
        }

        if (CFEqual(cf1, @"assetTrackProperty_ProtectedStatus"))
        {
          v9 = ProduceProtectedStatusTrackProperty(a1, &v29);
          goto LABEL_17;
        }

        if (CFEqual(cf1, @"assetTrackProperty_UsesAudibleDRM"))
        {
          ProduceUsesAudibleDRMTrackProperty(a1, &v29);
          goto LABEL_61;
        }

        if (CFEqual(cf1, @"assetTrackProperty_AudibleContentIsAuthorized"))
        {
          ProduceAudibleContentIsAuthorizedTrackProperty(a1, &v29);
          goto LABEL_61;
        }

        if (CFEqual(cf1, @"MinSampleDuration"))
        {
          ProduceMinSampleDurationTrackProperty(a1, &v29);
          goto LABEL_61;
        }

        if (CFEqual(cf1, @"AlternateGroupID"))
        {
          v28 = kFigTrackProperty_AlternateGroupID;
        }

        else
        {
          if (!CFEqual(cf1, @"DefaultAlternateGroupID"))
          {
            if (CFEqual(cf1, @"ProvisionalAlternateGroupID"))
            {
              v17 = *(a1 + 24);
              v18 = kFigTrackProperty_ProvisionalAlternateGroupID;
              goto LABEL_52;
            }

            if (CFEqual(cf1, @"LoadSettings"))
            {
              v17 = *(a1 + 24);
              v18 = kFigTrackProperty_QTLoadSettings;
              goto LABEL_52;
            }

            if (CFEqual(cf1, @"SampleGroupDescriptions"))
            {
              v17 = *(a1 + 24);
              v18 = kFigTrackProperty_SampleGroupDescriptions;
              goto LABEL_52;
            }

            if (CFEqual(cf1, @"HEVCTemporalLevelInfoCombinations"))
            {
              v17 = *(a1 + 24);
              v18 = kFigTrackProperty_HEVCTemporalLevelInfoCombinations;
              goto LABEL_52;
            }

            if (CFEqual(cf1, @"HEVCSyncSampleNALUnitTypes"))
            {
              v17 = *(a1 + 24);
              v18 = kFigTrackProperty_HEVCSyncSampleNALUnitTypes;
              goto LABEL_52;
            }

            if (CFEqual(cf1, @"assetTrackProperty_CameraRollValidation"))
            {
              ProduceAssetTrackCameraRollValidationProperty(a1, &v29);
            }

            else if (CFEqual(cf1, @"assetTrackProperty_MediaPlaybackValidation"))
            {
              ProduceAssetTrack_MediaPlaybackValidationProperty(a1, &v29);
            }

            else
            {
              if (!CFEqual(cf1, @"assetTrackProperty_MediaDecodingValidation"))
              {
                if (CFEqual(cf1, @"assetTrackProperty_ContainsWideColor"))
                {
                  v9 = ProduceAssetTrack_ContainsWideColor(a1, &v29);
                }

                else if (CFEqual(cf1, @"assetTrackProperty_LatentBaseDecodeTimeStampOfFirstTrackFragment"))
                {
                  v9 = ProduceAssetTrackLatentBaseDecodeTimeStampOfFirstTrackFragment(a1, &v29);
                }

                else
                {
                  v9 = -12182;
                }

                goto LABEL_17;
              }

              ProduceAssetTrack_MediaDecodingValidationProperty(a1, &v29);
            }

LABEL_61:
            v9 = 0;
            goto LABEL_17;
          }

          v28 = kFigTrackProperty_DefaultAlternateGroupID;
        }

        ProduceAlternateGroupIDTrackPropertyByKey(a1, *v28, &v29);
        goto LABEL_61;
      }

      v26 = a1;
      v27 = 1;
    }

    v9 = ProduceSegmentDataAssetTrackProperty(v26, v27, &v29);
    goto LABEL_17;
  }

  v10 = FigTrackReaderGetFigBaseObject(*(a1 + 24));
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11 || (v9 = v11(v10, @"TrackIsSelfContained", *MEMORY[0x1E695E480], &v29), !v29))
  {
    if (*MEMORY[0x1E695E4D0])
    {
      v12 = CFRetain(*MEMORY[0x1E695E4D0]);
    }

    else
    {
      v12 = 0;
    }

    v9 = 0;
    v29 = v12;
  }

LABEL_17:
  if (v9 >> 1 == 2147477256 || v9 == -12787)
  {
    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

  *a3 = v29;
  if (!v14 && *(a1 + 65))
  {
    if (!*(a1 + 72))
    {
      if (_MergedGlobals_118 != -1)
      {
        ProduceAssetTrackProperty_cold_1();
      }

      *(a1 + 72) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
    }

    Value = CFDictionaryGetValue(sAssetTrackPropertyDependencies, cf1);
    if (Value)
    {
      CFDictionaryAddValue(*(a1 + 72), cf1, Value);
    }
  }

  return v14;
}

void InternalURLAssetTrackStopMonitoringChanges(uint64_t a1)
{
  if (*(a1 + 65))
  {
    if (*(a1 + 66))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      *(a1 + 66) = 0;
    }

    if (*(a1 + 72))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v2 = *(a1 + 72);
      if (v2)
      {
        CFRelease(v2);
        *(a1 + 72) = 0;
      }
    }
  }
}

void SegmentDataAssetTrackPropertiesNotificationCallback(int a1, NSObject **cf)
{
  CFRetain(cf);
  v3 = cf[6];

  dispatch_async_f(v3, cf, ReviseSegmentDataAssetTrackProperties);
}

void AssetTrackMutationMonitoringNotificationCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (a5)
  {
    v7 = MEMORY[0x19A8D0E00](a2 + 5);
    if (v7)
    {
      v8 = v7;
      CFRetain(a5);
      CFRetain(a2);
      CFRetain(v8);
      v10 = a2[6];
      v9 = a2[7];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __AssetTrackMutationMonitoringNotificationCallback_block_invoke;
      block[3] = &__block_descriptor_tmp_34_1;
      block[4] = a5;
      block[5] = a2;
      block[6] = v8;
      dispatch_group_async(v9, v10, block);
      CFRelease(v8);
    }
  }
}

void URLAssetValidationWorkFunction(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x19A8D0E00](v2 + 472);
  v4 = v3;
  if (*(v2 + 112))
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    *(a1 + 24) = -12785;
    ReportCompletedValidationJob(a1);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    ProduceAssetValidationResult(v3, v2, *(a1 + 8), *(a1 + 16));
    *(a1 + 24) = v6;
    ReportCompletedValidationJob(a1);
  }

  CFRelease(v4);
}

void URLAssetTrackValidationWorkFunction(uint64_t a1)
{
  *(a1 + 24) = ProduceAssetTrackValidationResult(*(a1 + 32), *(a1 + 8), *(a1 + 16));

  ReportCompletedValidationJob(a1);
}

uint64_t ProduceAssetTrackValidationResult(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  cf = 0;
  if (CFEqual(cf1, @"validationCriteria_Custom"))
  {
    if (!a3)
    {
      return 0;
    }

    v6 = CFRetain(a3);
    cf = v6;
    if (!v6)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (CFEqual(cf1, @"validationCriteria_CameraRoll"))
  {
    v7 = @"CameraRollValidator.plist";
LABEL_9:
    v8 = 1;
LABEL_10:
    MediaValidatorPropertyList = FigMediaValidatorCreateMediaValidatorPropertyList(v7, &cf);
    if (MediaValidatorPropertyList)
    {
LABEL_16:
      v10 = MediaValidatorPropertyList;
      goto LABEL_17;
    }

    v6 = cf;
    if (!cf)
    {
      return 0;
    }

    if ((v8 & 1) == 0)
    {
      MediaValidatorPropertyList = FigMediaValidatorValidateIndividualTrackForDecoding(*(a1 + 16), *(a1 + 24), cf);
      goto LABEL_16;
    }

LABEL_13:
    MediaValidatorPropertyList = FigMediaValidatorValidateIndividualTrack(*(a1 + 16), *(a1 + 24), v6);
    goto LABEL_16;
  }

  if (CFEqual(cf1, @"validationCriteria_MediaPlayback"))
  {
    v7 = @"MediaValidator.plist";
    goto LABEL_9;
  }

  if (CFEqual(cf1, @"validationCriteria_MediaDecoding"))
  {
    v8 = 0;
    v7 = @"MediaValidator.plist";
    goto LABEL_10;
  }

  if (CFEqual(cf1, @"validationCriteria_PhotosTranscodingService"))
  {
    v7 = @"CloudTranscodeValidator.plist";
    goto LABEL_9;
  }

  ProduceAssetTrackValidationResult_cold_1(&v13);
  v10 = v13;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t InternalURLAssetCopyChapterData(const void *a1, dispatch_queue_t *a2, unsigned int a3, unsigned int a4, unsigned int a5, void *a6)
{
  v12 = malloc_type_calloc(1uLL, 0x30uLL, 0x106004070AE3097uLL);
  if (v12)
  {
    *(v12 + 1) = CFRetain(a2);
    *(v12 + 2) = CFRetain(a1);
    v12[6] = a3;
    v12[7] = a4;
    v12[8] = a5;
    dispatch_sync_f(a2[12], v12, PerformCopyChapterData);
    CFRelease(*(v12 + 1));
    CFRelease(*(v12 + 2));
    *a6 = *(v12 + 5);
    v13 = *v12;
  }

  else
  {
    InternalURLAssetCopyChapterData_cold_1(&v15);
    v13 = v15;
  }

  free(v12);
  return v13;
}

uint64_t InternalURLAssetFetchChapterDataAsync(const void *a1, dispatch_queue_t *a2, int a3, int a4, int a5)
{
  v10 = malloc_type_calloc(1uLL, 0x30uLL, 0x106004070AE3097uLL);
  if (v10)
  {
    v11 = v10;
    v10[1] = CFRetain(a2);
    v11[2] = CFRetain(a1);
    *(v11 + 6) = a3;
    *(v11 + 7) = a4;
    *(v11 + 8) = a5;
    dispatch_group_async_f(a2[13], a2[12], v11, PerformFetchChapterData);
    return 0;
  }

  else
  {
    InternalURLAssetFetchChapterDataAsync_cold_1(&v13);
    return v13;
  }
}

void PerformMultiTrackBatchLoad(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (!EnsureAssetTypeEstablished(v3, *a1) && !*(v2 + 192) && !EnsureTracksArrayCreated(v3, v2))
  {
    v4 = *(v2 + 272);
    if (v4)
    {
      a1[2] = v4;
      CFRetain(v4);
      if (!RequestMultiTrackBatches(a1) && *(a1 + 33))
      {
        v5 = a1[5];
        dispatch_retain(v5);
        dispatch_group_enter(v5);
        dispatch_group_notify_f(v5, *(v2 + 480), a1, FinalizeMultiTrackBatchLoadJob);
        dispatch_group_leave(v5);

        dispatch_release(v5);
        return;
      }
    }

    else if (PerformMultiTrackBatchLoad_cold_1())
    {
      return;
    }
  }

  FinalizeMultiTrackBatchLoadJob(a1);
}

uint64_t RequestMultiTrackBatches(uint64_t a1)
{
  v27 = 0;
  Count = CFArrayGetCount(*(a1 + 16));
  v3 = Count;
  *(a1 + 32) = 1;
  if (!*(a1 + 33))
  {
    if (Count >= 1)
    {
      v19 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v19);
        v27 = 0;
        v21 = *(a1 + 24);
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v22)
        {
          v22(ValueAtIndex, v21, &v27, 0);
        }

        if (v27)
        {
          v23 = *(a1 + 32) == 0;
        }

        else
        {
          v23 = 1;
        }

        v24 = !v23;
        *(a1 + 32) = v24;
        ++v19;
      }

      while (v3 != v19);
    }

    return 0;
  }

  v4 = malloc_type_calloc(Count, 4uLL, 0x100004052888210uLL);
  *(a1 + 48) = v4;
  if (v4)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v3, MEMORY[0x1E695E9D8], 0);
    *(a1 + 56) = Mutable;
    if (Mutable)
    {
      *(a1 + 40) = dispatch_group_create();
      if (v3 >= 1)
      {
        v6 = 0;
        for (i = 0; i != v3; ++i)
        {
          v8 = CFArrayGetValueAtIndex(*(a1 + 16), i);
          CFDictionaryAddValue(*(a1 + 56), v8, (*(a1 + 48) + v6));
          v6 += 4;
        }

        v9 = 0;
        for (j = 0; j != v3; ++j)
        {
          v11 = CFArrayGetValueAtIndex(*(a1 + 16), j);
          v27 = 0;
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterAddListener();
          dispatch_group_enter(*(a1 + 40));
          v12 = *(a1 + 24);
          v13 = *(a1 + 48);
          v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v14)
          {
            v15 = v14(v11, v12, &v27, v13 + v9) != 0;
          }

          else
          {
            v15 = 1;
          }

          v16 = v27;
          if (*(a1 + 32))
          {
            v17 = v27 == 0;
          }

          else
          {
            v17 = 1;
          }

          v18 = !v17;
          *(a1 + 32) = v18;
          if (v16 || v15)
          {
            dispatch_group_leave(*(a1 + 40));
          }

          v9 += 4;
        }
      }

      return 0;
    }

    v26 = 9227;
  }

  else
  {
    v26 = 9225;
  }

  RequestMultiTrackBatches_cold_1(v26, &v28);
  return v28;
}

void FinalizeMultiTrackBatchLoadJob(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 33))
    {
      if (*(a1 + 34) || !*(a1 + 32))
      {
        NotifyCompletedBatch(*(a1 + 8), *(a1 + 36));
      }

      v2 = *(a1 + 16);
      if (v2)
      {
        Count = CFArrayGetCount(v2);
        if (Count >= 1)
        {
          v4 = Count;
          for (i = 0; i != v4; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), i);
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterRemoveListener();
            CMBaseObject = FigAssetTrackGetCMBaseObject(ValueAtIndex);
            v8 = *(CMBaseObjectGetVTable() + 8);
            if (*v8 >= 2uLL)
            {
              v9 = v8[8];
              if (v9)
              {
                v9(CMBaseObject);
              }
            }
          }
        }
      }
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      dispatch_release(v10);
    }

    v11 = *(a1 + 16);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *(a1 + 24);
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      CFRelease(v13);
    }

    free(*(a1 + 48));
    if (*a1)
    {
      CFRelease(*a1);
    }

    v14 = *(a1 + 8);
    if (v14)
    {
      CFRelease(v14);
    }

    free(a1);
  }
}

uint64_t InternalURLAssetSetDeclaredAssetType(uint64_t a1, uint64_t a2, CFTypeRef cf1)
{
  v6 = @"com.apple.coremedia.assettype.streaming";
  if (CFEqual(cf1, @"com.apple.coremedia.assettype.streaming"))
  {
    *(a2 + 192) = 1;
    v7 = ProduceStreamingAssetProperty;
LABEL_4:
    v9 = v7;
    v10 = CFRetain(v6);
    *(a2 + 120) = v10;
    *(a2 + 128) = v9;
    *(a2 + 113) = 1;
    *(a2 + 116) = 0;
    InitializeProperty(a1, @"assetProperty_AssetType", 2, 0, v10);
    return 0;
  }

  v6 = @"com.apple.coremedia.assettype.file";
  v8 = CFEqual(cf1, @"com.apple.coremedia.assettype.file");
  v7 = ProduceFormatReaderAssetProperty;
  if (v8)
  {
    goto LABEL_4;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

const __CFDictionary *GetContentProtectionOptions(uint64_t a1, const __CFDictionary **a2, const __CFDictionary **a3, const __CFDictionary **a4)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  result = *(a1 + 88);
  if (result)
  {
    result = FigCFDictionaryGetDictionaryValue();
    if (result)
    {
      v8 = result;
      if (a2)
      {
        result = CFDictionaryGetValue(result, @"assetOption_PurchaseBundle");
        *a2 = result;
      }

      if (a3)
      {
        result = CFDictionaryGetValue(v8, @"assetOption_AuthorizationInfo");
        *a3 = result;
      }

      if (a4)
      {
        result = CFDictionaryGetValue(v8, @"assetOption_ProtectedContentSupportStorageURL");
        *a4 = result;
      }
    }
  }

  return result;
}

void ReviseDownloadToDestinationResultProperty(uint64_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v4 = MEMORY[0x19A8D0E00](a1 + 472);
  v5 = v4;
  if (v4)
  {
    ReviseProperty(v4, @"assetProperty_DownloadToDestinationResult", v3);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void PostDeferredPostPurchaseNotification(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  CMNotificationCenterPostNotification();

  CFRelease(a4);
}

uint64_t CreateHTTPRequestOptions(uint64_t a1, CFMutableDictionaryRef *a2)
{
  theDict = 0;
  v4 = FigCFHTTPCreateHTTPRequestOptionsFromAssetCreationOptions(*MEMORY[0x1E695E480], *(a1 + 88), &theDict);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    if (*(a1 + 16) != -1)
    {
      dispatch_once_f((a1 + 16), a1, CreateCustomURLLoaderOnceFunc);
    }

    v5 = *(a1 + 504);
    if (!v5)
    {
      FigCFDictionarySetValue();
      v6 = *(a1 + 536);
      if (v6)
      {
        CFDictionarySetValue(theDict, @"FHRP_StorageSession", v6);
      }

      Count = CFDictionaryGetCount(theDict);
      v8 = theDict;
      if (!Count && theDict)
      {
        CFRelease(theDict);
        v8 = 0;
      }

      v5 = 0;
      *a2 = v8;
      return v5;
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return v5;
}

void __AssetMutationMonitoringNotificationCallback_block_invoke(CFTypeRef *a1)
{
  v4 = *(a1 + 2);
  v3 = a1[6];
  v2 = a1[7];
  v5 = v3;
  CFDictionaryApplyFunction(v2, AssessMonitoredAssetPropertyChange, &v4);
  CFRelease(a1[4]);
  CFRelease(a1[7]);
  CFRelease(a1[5]);
  CFRelease(a1[6]);
}

void AssessMonitoredAssetPropertyChange(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; v7 != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (*(*(a3 + 8) + 112))
      {
        break;
      }

      if (CFDictionaryContainsKey(*a3, ValueAtIndex))
      {
        AssessMonitoredAssetPropertyChange_cold_1(a3, (a3 + 8), a1);
        return;
      }
    }
  }
}

void ReviseDurationProperty(char *a1)
{
  v2 = MEMORY[0x19A8D0E00](a1 + 472);
  v5 = 0;
  if (v2)
  {
    v3 = v2;
    if (!ObtainDurationPropertyValue(a1, &v5))
    {
      v4 = v5;
      ReviseProperty(v3, @"Duration", v5);
      if (v4)
      {
        CFRelease(v4);
      }
    }

    CFRelease(v3);
  }

  CFRelease(a1);
}

uint64_t ObtainDurationPropertyValue(uint64_t a1, void *a2)
{
  v15 = 0;
  cf = 0;
  v4 = *MEMORY[0x1E695E480];
  FigBaseObject = FigFormatReaderGetFigBaseObject(*(a1 + 240));
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(FigBaseObject, @"SampleCursorTimeAccuracyIsExact", v4, &cf);
    v6 = cf;
  }

  if (v6 == *MEMORY[0x1E695E4D0])
  {
    v9 = 0;
  }

  else
  {
    v7 = FigFormatReaderGetFigBaseObject(*(a1 + 240));
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v9 = v8(v7, @"EstimatedDuration", v4, &v15);
    }

    else
    {
      v9 = 4294954514;
    }
  }

  if (!v15)
  {
    v10 = *(a1 + 240);
    if (*(a1 + 81))
    {
      v11 = FigFormatReaderGetFigBaseObject(v10);
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v13 = kFigFormatReaderProperty_NominalDuration;
        goto LABEL_14;
      }
    }

    else
    {
      v11 = FigFormatReaderGetFigBaseObject(v10);
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v13 = kFigFormatReaderProperty_Duration;
LABEL_14:
        v9 = v12(v11, *v13, v4, &v15);
        goto LABEL_16;
      }
    }

    v9 = 4294954514;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  *a2 = v15;
  return v9;
}

uint64_t EnsureTrackWorkQueueCreated(uint64_t a1)
{
  if (*(a1 + 280))
  {
    return 0;
  }

  v7 = v1;
  v8 = v2;
  v5 = FigDispatchQueueCreateWithPriority();
  *(a1 + 280) = v5;
  if (v5)
  {
    return 0;
  }

  EnsureTrackWorkQueueCreated_cold_1(&v6);
  return v6;
}

void ReviseCouldContainFragmentsProperty(char *a1)
{
  v2 = MEMORY[0x19A8D0E00](a1 + 472);
  v5 = 0;
  if (v2)
  {
    v3 = v2;
    ObtainCouldContainFragmentsPropertyValue(a1, &v5);
    v4 = v5;
    ReviseProperty(v3, @"assetProperty_CouldContainFragments", v5);
    if (v4)
    {
      CFRelease(v4);
    }

    CFRelease(v3);
  }

  CFRelease(a1);
}

CFTypeRef ObtainCouldContainFragmentsPropertyValue(uint64_t a1, void *a2)
{
  v6 = 0;
  FigBaseObject = FigFormatReaderGetFigBaseObject(*(a1 + 240));
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4 || (v4(FigBaseObject, @"CouldContainFragments", *MEMORY[0x1E695E480], &v6), (result = v6) == 0))
  {
    result = CFRetain(*MEMORY[0x1E695E4C0]);
  }

  *a2 = result;
  return result;
}

void ReviseContainsFragmentsProperty(char *a1)
{
  v2 = MEMORY[0x19A8D0E00](a1 + 472);
  v5 = 0;
  if (v2)
  {
    v3 = v2;
    ObtainContainsFragmentsPropertyValue(a1, &v5);
    v4 = v5;
    ReviseProperty(v3, @"assetProperty_ContainsFragments", v5);
    if (v4)
    {
      CFRelease(v4);
    }

    CFRelease(v3);
  }

  CFRelease(a1);
}

CFTypeRef ObtainContainsFragmentsPropertyValue(uint64_t a1, void *a2)
{
  v6 = 0;
  FigBaseObject = FigFormatReaderGetFigBaseObject(*(a1 + 240));
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4 || (v4(FigBaseObject, @"ContainsFragments", *MEMORY[0x1E695E480], &v6), (result = v6) == 0))
  {
    result = CFRetain(*MEMORY[0x1E695E4C0]);
  }

  *a2 = result;
  return result;
}

uint64_t FigBytePumpCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigBaseObject = FigBytePumpGetFigBaseObject(a1);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(FigBaseObject, a2, a3, a4);
}

void PerformCompleteTransferBytePump(uint64_t a1)
{
  (*(a1 + 40))(*(a1 + 48), *(a1 + 32), *(a1 + 8));
  FigStopForwardingMediaServicesProcessDeathNotification();
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t EnsureContentStreamCreated(void *a1, uint64_t a2)
{
  v84 = 0;
  v82 = 0;
  theDict = 0;
  v81 = 0;
  *cf = 0u;
  *v80 = 0u;
  *v78 = 0u;
  v77 = 0;
  if (*(a2 + 112))
  {
    v4 = 4294954511;
    goto LABEL_157;
  }

  if (*(a2 + 144))
  {
    return *(a2 + 148);
  }

  v5 = *(a2 + 64);
  if (v5 == 1431456810)
  {
    cf[1] = CFRetain(*(a2 + 72));
    v6 = *(a2 + 88);
    if (v6)
    {
      Value = CFDictionaryGetValue(v6, @"assetOption_OutOfBandMIMEType");
      if (Value)
      {
        v8 = CFGetTypeID(Value);
        if (v8 == CFStringGetTypeID())
        {
          EnsureContentStreamCreated_cold_6();
          v16 = 0;
          v13 = 0;
          LODWORD(v10) = 0;
          v15 = v91;
          v14 = v92[0];
          goto LABEL_18;
        }
      }

      v9 = CFDictionaryGetValue(*(a2 + 88), @"assetOption_OutOfBandFileType");
      v10 = v9;
      if (!v9)
      {
        v14 = 0;
        v13 = 0;
        v15 = 0;
        goto LABEL_17;
      }

      v11 = CFGetTypeID(v9);
      if (v11 == CFStringGetTypeID())
      {
        v92[0] = 0;
        FigCopySetOfStreamingSupportedUTIs(*MEMORY[0x1E695E480], v92);
        if (v92[0])
        {
          v12 = CFSetContainsValue(v92[0], v10);
          v13 = v12 != 0;
          if (v12)
          {
            LODWORD(v10) = FigMediaValidatorUTIIsShoutcastAudio(v10);
          }

          else
          {
            LODWORD(v10) = 0;
          }

          if (v92[0])
          {
            CFRelease(v92[0]);
          }
        }

        else
        {
          LODWORD(v10) = 0;
          v13 = 0;
        }

        v14 = 0;
        v17 = 0;
        v15 = 0;
        v16 = 1;
LABEL_19:
        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v14;
        }

        if (v10)
        {
          v19 = 0;
        }

        else
        {
          v19 = v13;
        }

        if ((v18 & 1) != 0 || v19 || (v16 & v17) == 1 && FigMediaValidatorIsNonRefMovieURLStreaming(*(a2 + 72), 0, 0))
        {
          v20 = 0;
          LOBYTE(v81) = 1;
          goto LABEL_30;
        }

        Param = SetupBytestreamFactoryParameters();
        if (!Param)
        {
          v20 = 0;
          StringValue = FigCFDictionaryGetStringValue();
          v59 = *(a2 + 72);
          if (!StringValue)
          {
            if (v59)
            {
              v59 = CFRetain(v59);
            }

            v77 = v59;
            goto LABEL_198;
          }

          Param = FigCFHTTPCreateURLWithQueryParam(v59, @"_HLS_primary_id=", StringValue, &v77);
          if (!Param)
          {
            v59 = v77;
LABEL_198:
            if (*(a2 + 216))
            {
              v60 = &v80[1];
            }

            else
            {
              v60 = 0;
            }

            v61 = FigByteStreamFactoryCreateStreamFromURLWithOptions(v59, v82, 0, v78, &v78[1], cf, v60, &v84);
            v4 = v61;
            if (!v61)
            {
              goto LABEL_211;
            }

            LOBYTE(v92[0]) = 0;
            if (v15 | v10)
            {
              goto LABEL_205;
            }

            if (!FigMediaValidatorIsNonByteStreamURLStreaming(v61, *(a2 + 72), v78[1], cf[0], v92))
            {
LABEL_207:
              if (v78[1])
              {
                CFRelease(v78[1]);
                v78[1] = 0;
              }

              if (cf[0])
              {
                CFRelease(cf[0]);
                cf[0] = 0;
              }

LABEL_211:
              if (v4)
              {
                goto LABEL_157;
              }

LABEL_30:
              if (!v81)
              {
                if (*(a2 + 216))
                {
                  v21 = v80[1];
                  if (v80[1] || (CMBaseObject = CMByteStreamGetCMBaseObject(), CMBaseObjectCopyProperty(CMBaseObject, @"CRABS_ReadAheadAssertion", 0, &v80[1]), (v21 = v80[1]) != 0))
                  {
                    FigAssertionSetProperty(v21, @"Assertion_HolderName", @"FigAsset");
                  }
                }

                v23 = *(a2 + 88);
                if (!v23 || CFDictionaryGetValue(v23, @"assetOption_InhibitReferenceMovieResolution") != *MEMORY[0x1E695E4D0])
                {
                  if (v84)
                  {
                    CFRelease(v84);
                    v84 = 0;
                  }

                  v91 = 0;
                  v92[0] = 0;
                  v89 = 0;
                  v90 = 0;
                  v87 = 0;
                  v88 = 0;
                  if (v78[0])
                  {
                    v24 = *(a2 + 80);
                    v25 = (v24 & 0x38) != 0 ? 30 : 2;
                    v76 = v25 & (v24 >> 1);
                    v74 = v20;
                    if (theDict)
                    {
                      v26 = CFDictionaryGetCount(theDict) <= 0 ? 0 : theDict;
                    }

                    else
                    {
                      v26 = 0;
                    }

                    v27 = 0;
                    v75 = *MEMORY[0x1E695FFA0];
                    v28 = *MEMORY[0x1E695E480];
                    v29 = (a2 + 536);
                    v30 = 5;
                    v73 = *MEMORY[0x1E6960E28];
                    while (1)
                    {
                      v86 = 0;
                      IsReferenceMovie(v78[0], &v86);
                      if (!v86)
                      {
LABEL_114:
                        v4 = 0;
                        goto LABEL_121;
                      }

                      v31 = CMByteStreamGetCMBaseObject();
                      v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                      if (!v32 || (!v32(v31, v75, v28, v92) ? (v33 = v92[0] == 0) : (v33 = 1), v33))
                      {
                        EnsureContentStreamCreated_cold_3(&v85);
                        goto LABEL_237;
                      }

                      v34 = v29;
                      v35 = ResolveReferenceMovieWithOptions(v78[0], v92[0], v76, &v90);
                      v36 = cf[1];
                      cf[1] = v90;
                      if (v90)
                      {
                        CFRetain(v90);
                      }

                      if (v36)
                      {
                        CFRelease(v36);
                      }

                      if (v35)
                      {
                        v29 = v34;
                      }

                      else
                      {
                        v29 = v34;
                        if (!v90)
                        {
                          fig_log_get_emitter();
                          v35 = FigSignalErrorAtGM();
                        }
                      }

                      LODWORD(v80[0]) = v35;
                      if (v35)
                      {
                        EnsureContentStreamCreated_cold_1();
                        goto LABEL_237;
                      }

                      if (FigMediaValidatorIsNonRefMovieURLStreaming(cf[1], 0, 0))
                      {
                        v4 = 0;
                        LOBYTE(v81) = 1;
                        goto LABEL_121;
                      }

                      if (v26)
                      {
                        v27 = CFDictionaryGetValue(v26, @"factoryOption_DownloadDestinationURL");
                      }

                      if (!*(a2 + 288))
                      {
                        CMByteStreamGetCMBaseObject();
                        FigCRABSGetClassID();
                        if (CMBaseObjectIsMemberOfClass())
                        {
                          v38 = CMByteStreamGetCMBaseObject();
                          v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                          if (v39)
                          {
                            if (!v39(v38, @"CRABS_StorageSession", 0, v29) && *v29)
                            {
                              v85 = 0;
                              *(a2 + 292) = 0;
                              *(a2 + 288) = 1;
                              if (!theDict)
                              {
                                theDict = CFDictionaryCreateMutable(v28, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                              }

                              CreateHTTPRequestOptions(a2, &v85);
                              v40 = v85;
                              CFDictionarySetValue(theDict, @"factoryOption_HTTPRequestOptions", v85);
                              if (v40)
                              {
                                CFRelease(v40);
                              }

                              v26 = theDict;
                              StoreByProduct(a1, @"assetProperty_StorageSession", 0, 0, *v29);
                            }
                          }
                        }
                      }

                      if (*(a2 + 216))
                      {
                        v37 = &v80[1];
                        if (v80[1])
                        {
                          CFRelease(v80[1]);
                          v80[1] = 0;
                          if (*(a2 + 216))
                          {
                            v37 = &v80[1];
                          }

                          else
                          {
                            v37 = 0;
                          }
                        }
                      }

                      else
                      {
                        v37 = 0;
                      }

                      v4 = FigByteStreamFactoryCreateStreamFromURLWithOptions(v90, v82, v26, &v91, &v89, &v88, v37, &v87);
                      if (v80[1])
                      {
                        FigAssertionSetProperty(v80[1], @"Assertion_HolderName", @"FigAsset");
                      }

                      if (v4)
                      {
                        if (v27 || !FigMediaValidatorIsNonByteStreamURLStreaming(v4, v90, v89, v88, &v86 + 1))
                        {
                          fig_log_get_emitter();
                          FigSignalErrorAtGM();
                          goto LABEL_121;
                        }

                        if (HIBYTE(v86))
                        {
                          *(a2 + 380) = 1;
                        }

                        LOBYTE(v81) = 1;
                      }

                      else if (!*(a2 + 584))
                      {
                        v85 = 0;
                        v42 = CMByteStreamGetCMBaseObject();
                        v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                        if (v43)
                        {
                          if (!v43(v42, v73, v28, &v85))
                          {
                            *(a2 + 584) = v85;
                          }
                        }
                      }

                      if (!v81 && !v91)
                      {
                        break;
                      }

                      if (v78[0])
                      {
                        CFRelease(v78[0]);
                        v78[0] = 0;
                      }

                      if (v78[1])
                      {
                        CFRelease(v78[1]);
                        v78[1] = 0;
                      }

                      if (cf[0])
                      {
                        CFRelease(cf[0]);
                      }

                      v41 = v91;
                      v91 = 0;
                      v78[0] = v41;
                      v78[1] = v89;
                      cf[0] = v88;
                      v88 = 0;
                      v89 = 0;
                      LOBYTE(v86) = 0;
                      if (v90)
                      {
                        CFRelease(v90);
                        v90 = 0;
                      }

                      if (v92[0])
                      {
                        CFRelease(v92[0]);
                        v92[0] = 0;
                      }

                      if (v89)
                      {
                        CFRelease(v89);
                        v89 = 0;
                      }

                      if (v88)
                      {
                        CFRelease(v88);
                        v88 = 0;
                      }

                      if (!v81)
                      {
                        if (--v30)
                        {
                          continue;
                        }
                      }

                      goto LABEL_114;
                    }

                    EnsureContentStreamCreated_cold_2(&v85);
LABEL_237:
                    v4 = v85;
LABEL_121:
                    v20 = v74;
                    if (v91)
                    {
                      v45 = CMByteStreamGetCMBaseObject();
                      if (v45)
                      {
                        v46 = v45;
                        v47 = *(*(CMBaseObjectGetVTable() + 8) + 24);
                        if (v47)
                        {
                          v47(v46);
                        }
                      }

                      CFRelease(v91);
                    }
                  }

                  else
                  {
                    EnsureContentStreamCreated_cold_4(&v85);
                    v4 = v85;
                  }

                  if (v4)
                  {
                    v84 = v87;
                  }

                  else if (v87)
                  {
                    CFRelease(v87);
                  }

                  if (v90)
                  {
                    CFRelease(v90);
                  }

                  if (v92[0])
                  {
                    CFRelease(v92[0]);
                  }

                  if (v89)
                  {
                    CFRelease(v89);
                  }

                  if (v88)
                  {
                    CFRelease(v88);
                  }

                  if (v4)
                  {
                    goto LABEL_157;
                  }
                }

                v48 = v81;
                if (!v81 && v78[0])
                {
                  if (FigCFHTTPIsDataURL(cf[1]))
                  {
                    v92[0] = 0;
                    v49 = v78[0];
                    v50 = FigStreamPlaylistParserMinBytesRequiredToVerifyM3UPlaylist();
                    if (!CMByteStreamReadAndCreateBlockBuffer_1(v49, v50, v92))
                    {
                      LOBYTE(v81) = FigStreamingPlaylistVerifyM3UPlaylist(v92[0], 0);
                    }

                    if (v92[0])
                    {
                      CFRelease(v92[0]);
                    }
                  }

                  v48 = v81;
                }

                if (!v48)
                {
                  if (FigMediaValidatorIsNonRefMovieURLStreaming(cf[1], v78[1], cf[0]))
                  {
                    LOBYTE(v81) = 1;
                  }

                  else if (!v81)
                  {
                    FigSimpleMutexLock();
                    v62 = v78[0];
                    if (v78[0])
                    {
                      v62 = CFRetain(v78[0]);
                    }

                    *(a2 + 160) = v62;
                    v63 = v80[1];
                    if (v80[1])
                    {
                      v63 = CFRetain(v80[1]);
                      v62 = *(a2 + 160);
                    }

                    *(a2 + 224) = v63;
                    if (v62)
                    {
                      CMByteStreamGetCMBaseObject();
                      FigCRABSGetClassID();
                      if (CMBaseObjectIsMemberOfClass())
                      {
                        v92[0] = 0;
                        *(a2 + 193) = 1;
                        PropertyStoreSetComplainForSyncQueries(a1, 1);
                        v64 = CMByteStreamGetCMBaseObject();
                        v65 = CMBaseObjectCopyProperty(v64, @"CRABS_CacheIsVolatile", 0, v92);
                        v66 = v92[0];
                        if (!v65)
                        {
                          *(a2 + 194) = v92[0] == *MEMORY[0x1E695E4D0];
                        }

                        if (v66)
                        {
                          CFRelease(v66);
                        }
                      }
                    }

                    FigSimpleMutexUnlock();
                    if (!*(a2 + 288))
                    {
                      if (*(a2 + 193))
                      {
                        v70 = (a2 + 536);
                        v71 = CMByteStreamGetCMBaseObject();
                        if (!CMBaseObjectCopyProperty(v71, @"CRABS_StorageSession", 0, a2 + 536))
                        {
                          v72 = *v70;
                          if (*v70)
                          {
                            *(a2 + 292) = 0;
                            *(a2 + 288) = 1;
                            StoreByProduct(a1, @"assetProperty_StorageSession", 0, 0, v72);
                          }
                        }
                      }
                    }

                    if (!v81 && *(a2 + 193))
                    {
                      if (v20)
                      {
                        v92[0] = 0;
                        *(a2 + 304) = dispatch_queue_create("URLAssetPostPurchaseQueue", 0);
                        FigThreadMakeDispatchQueueAbortable();
                        *(a2 + 296) = dispatch_group_create();
                        CMNotificationCenterGetDefaultLocalCenter();
                        FigNotificationCenterAddWeakListener();
                        CMNotificationCenterGetDefaultLocalCenter();
                        FigNotificationCenterAddWeakListener();
                        v67 = *MEMORY[0x1E695FF80];
                        v68 = CMByteStreamGetCMBaseObject();
                        if (!CMBaseObjectCopyProperty(v68, v67, 0, v92))
                        {
                          v69 = v92[0];
                          if (v92[0] == *MEMORY[0x1E695E4D0])
                          {
                            CFRetain(a2);
                            dispatch_group_async_f(*(a2 + 104), *(a2 + 96), a2, URLAssetDoneDownloadingDispatchFunc);
                            v69 = v92[0];
                          }

                          if (v69)
                          {
                            CFRelease(v69);
                          }
                        }
                      }

                      else
                      {
                        CMNotificationCenterGetDefaultLocalCenter();
                        FigNotificationCenterAddWeakListener();
                      }
                    }

                    goto LABEL_156;
                  }
                }
              }

              if (v78[0])
              {
                CFRelease(v78[0]);
                v78[0] = 0;
              }

              if (v80[1])
              {
                CFRelease(v80[1]);
                v80[1] = 0;
              }

              PropertyStoreSetComplainForSyncQueries(a1, 1);
LABEL_156:
              v4 = 0;
              goto LABEL_157;
            }

            if (LOBYTE(v92[0]))
            {
LABEL_205:
              *(a2 + 380) = 1;
            }

            v4 = 0;
            LOBYTE(v81) = 1;
            goto LABEL_207;
          }
        }

        v4 = Param;
        goto LABEL_157;
      }
    }

    v14 = 0;
    v13 = 0;
    v15 = 0;
    LODWORD(v10) = 0;
LABEL_17:
    v16 = 1;
LABEL_18:
    v17 = 1;
    goto LABEL_19;
  }

  if (v5 == 708989738)
  {
    EnsureContentStreamCreated_cold_5();
    v20 = v92[0];
    goto LABEL_30;
  }

  v4 = 0;
  v78[0] = 0;
LABEL_157:
  *(a2 + 192) = v81;
  v51 = cf[1];
  if (cf[1])
  {
    v51 = CFRetain(cf[1]);
  }

  *(a2 + 176) = v51;
  v52 = v78[1];
  if (v78[1])
  {
    v52 = CFRetain(v78[1]);
  }

  *(a2 + 184) = v52;
  *(a2 + 172) = v80[0];
  *(a2 + 168) = 1;
  *(a2 + 144) = 1;
  *(a2 + 148) = v4;
  if (v4)
  {
    v53 = v84;
    if (v84)
    {
      v53 = CFRetain(v84);
    }

    *(a2 + 152) = v53;
  }

  if (theDict)
  {
    CFRelease(theDict);
    theDict = 0;
  }

  if (v78[0])
  {
    CFRelease(v78[0]);
  }

  if (v80[1])
  {
    CFRelease(v80[1]);
  }

  if (v78[1])
  {
    CFRelease(v78[1]);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  v54 = *(a2 + 184);
  if (!v54)
  {
    v54 = *(a2 + 176);
  }

  StoreByProduct(a1, @"assetProperty_ResolvedURL", *(a2 + 172), 0, v54);
  v55 = *(a2 + 148);
  v56 = v84;
  if (!v55 && v84)
  {
    CFRelease(v84);
    v56 = 0;
    v84 = 0;
    v55 = *(a2 + 148);
  }

  StoreByProduct(a1, @"assetProperty_ContentByteStream", v55, v56, *(a2 + 160));
  if (v84)
  {
    CFRelease(v84);
  }

  if (v77)
  {
    CFRelease(v77);
  }

  return v4;
}

uint64_t CMByteStreamReadAndCreateBlockBuffer_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, 0, a3, 0);
}

uint64_t CreateSanitizedOutOfBandAlternateTracksArray(const __CFArray *a1, __CFArray **a2)
{
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (theArray)
  {
    Count = CFArrayGetCount(a1);
    if (Count < 1)
    {
      v18 = 0;
    }

    else
    {
      v20 = a2;
      v4 = 0;
      v5 = *MEMORY[0x1E695E4D0];
      v6 = *MEMORY[0x1E695E4C0];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
        Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsMediaType");
        v9 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsTaggedMediaCharacteristics");
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (!MutableCopy)
        {
          break;
        }

        v11 = MutableCopy;
        if (!Value)
        {
          CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
          CFDictionarySetValue(v11, @"MediaSelectionOptionsMediaType", CFStringForOSTypeValue);
        }

        ++v4;
        FigCFDictionarySetInt32();
        v13 = v5;
        if (v9)
        {
          v14 = CFArrayGetCount(v9);
          v24.location = 0;
          v24.length = v14;
          v15 = CFArrayContainsValue(v9, v24, @"public.auxiliary-content");
          v25.location = 0;
          v25.length = v14;
          v16 = CFArrayContainsValue(v9, v25, @"public.subtitles.forced-only");
          if (v15)
          {
            v17 = v5;
          }

          else
          {
            v17 = v6;
          }

          CFDictionarySetValue(v11, @"MediaSelectionOptionsIsAuxiliaryContent", v17);
          if (v16)
          {
            v13 = v6;
          }

          else
          {
            v13 = v5;
          }
        }

        CFDictionarySetValue(v11, @"MediaSelectionOptionsDisplaysNonForcedSubtitles", v13);
        CFArrayAppendValue(theArray, v11);
        CFRelease(v11);
        if (Count == v4)
        {
          v18 = 0;
          a2 = v20;
          goto LABEL_17;
        }
      }

      fig_log_get_emitter();
      v18 = FigSignalErrorAtGM();
      a2 = v20;
      if (v18)
      {
        CFRelease(theArray);
        theArray = 0;
      }
    }
  }

  else
  {
    CreateSanitizedOutOfBandAlternateTracksArray_cold_1(&v23);
    theArray = 0;
    v18 = v23;
  }

LABEL_17:
  *a2 = theArray;
  return v18;
}

uint64_t EnsureStreamingNetworkURL(void *a1, uint64_t a2)
{
  URLString = 0;
  cf = 0;
  if (*(a2 + 448))
  {
    return *(a2 + 452);
  }

  v5 = EnsureContentStreamCreated(a1, a2);
  if (v5)
  {
    goto LABEL_23;
  }

  if (!FigCFURLIsLocalResource())
  {
    v10 = *(a2 + 176);
    if (!v10)
    {
      v9 = 0;
      goto LABEL_15;
    }

    v10 = CFRetain(v10);
    v9 = v10;
    if (!v10)
    {
LABEL_15:
      v3 = 0;
      *(a2 + 440) = v10;
      goto LABEL_16;
    }

LABEL_13:
    v10 = CFRetain(v9);
    goto LABEL_15;
  }

  v6 = *MEMORY[0x1E695E480];
  v5 = FigHLSPersistentStoreCreateAtURL(*MEMORY[0x1E695E480], *(a2 + 176), 0, 0, &cf);
  if (v5)
  {
    goto LABEL_23;
  }

  FigBaseObject = FigHLSPersistentStoreGetFigBaseObject(cf);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    v9 = 0;
    v3 = 4294954514;
    goto LABEL_16;
  }

  v5 = v8(FigBaseObject, @"MasterPlaylistNetworkURL", v6, &URLString);
  if (v5)
  {
LABEL_23:
    v3 = v5;
    v9 = 0;
    goto LABEL_16;
  }

  v9 = CFURLCreateWithString(v6, URLString, 0);
  if (v9)
  {
    goto LABEL_13;
  }

  EnsureStreamingNetworkURL_cold_1(&v14);
  v3 = v14;
LABEL_16:
  *(a2 + 448) = 1;
  *(a2 + 452) = v3;
  StoreByProduct(a1, @"assetProperty_OriginalNetworkContentURL", v3, 0, *(a2 + 440));
  if (v9)
  {
    CFRelease(v9);
  }

  if (URLString)
  {
    CFRelease(URLString);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

void convertCustomMediaSelectionSchemeGroupMetadata(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  if (FigCFEqual())
  {
    if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
    {
      return;
    }

    CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
    v10 = a3;
    v9 = @"CustomMediaSelectionSchemeGroupMediaType";
    goto LABEL_11;
  }

  if (FigCFEqual())
  {
    v5 = MEMORY[0x1E695E4D0];
    v6 = FigCFEqual();
    v7 = MEMORY[0x1E695E4C0];
    if (!v6)
    {
      v7 = v5;
    }

    CFStringForOSTypeValue = *v7;
    v9 = @"CustomMediaSelectionSchemeGroupShouldDisplayLanguages";
    v10 = a3;
LABEL_11:

    CFDictionarySetValue(v10, v9, CFStringForOSTypeValue);
    return;
  }

  if (FigCFEqual())
  {
    if (a2 && (v11 = CFGetTypeID(a2), v11 == CFArrayGetTypeID()))
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v13 = Mutable;
        FigCFArrayApplyFunction();
        if (CFArrayGetCount(v13))
        {
          CFDictionarySetValue(a3, @"CustomMediaSelectionSchemeGroupSelectors", v13);
        }

        CFRelease(v13);
      }

      else
      {
        convertCustomMediaSelectionSchemeGroupMetadata_cold_1();
      }
    }

    else
    {
      convertCustomMediaSelectionSchemeGroupMetadata_cold_2();
    }
  }
}

void convertCustomMediaSelectionSchemeSelectorsMetadata(const __CFDictionary *a1, __CFArray *a2)
{
  value = 0;
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFDictionaryGetTypeID()))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      CFDictionaryApplyFunction(a1, convertCustomMediaSelectionSchemeSelectorMetadata, Mutable);
      if (FigCFDictionaryGetCount() && CFDictionaryGetValueIfPresent(v6, @"CustomMediaSelectionSchemeSelector", &value))
      {
        if (CFDictionaryGetValueIfPresent(v6, @"CustomMediaSelectionSchemeSelectorSettings", &value))
        {
          CFArrayAppendValue(a2, v6);
        }
      }

      CFRelease(v6);
    }

    else
    {
      convertCustomMediaSelectionSchemeSelectorsMetadata_cold_1();
    }
  }

  else
  {
    convertCustomMediaSelectionSchemeSelectorsMetadata_cold_2();
  }
}

void convertCustomMediaSelectionSchemeSelectorMetadata(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  value = 0;
  if (FigCFEqual())
  {
    if (a2 && (v5 = CFGetTypeID(a2), v5 == CFStringGetTypeID()))
    {

      CFDictionarySetValue(a3, @"CustomMediaSelectionSchemeSelector", a2);
    }

    else
    {
      convertCustomMediaSelectionSchemeSelectorMetadata_cold_1();
    }
  }

  else
  {
    if (FigCFEqual())
    {
      createDictionaryWithDictionaryStringKeysAndStringValues(a2, &value);
      v6 = value;
      CFDictionarySetValue(a3, @"CustomMediaSelectionSchemeSelectorDisplayNames", value);
      if (!v6)
      {
        return;
      }

      v7 = v6;
    }

    else
    {
      if (!FigCFEqual())
      {
        return;
      }

      if (!a2 || (v8 = CFGetTypeID(a2), v8 != CFArrayGetTypeID()))
      {
        convertCustomMediaSelectionSchemeSelectorMetadata_cold_3();
        return;
      }

      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        convertCustomMediaSelectionSchemeSelectorMetadata_cold_2();
        return;
      }

      v10 = Mutable;
      FigCFArrayApplyFunction();
      if (CFArrayGetCount(v10))
      {
        CFDictionarySetValue(a3, @"CustomMediaSelectionSchemeSelectorSettings", v10);
      }

      v7 = v10;
    }

    CFRelease(v7);
  }
}

void createDictionaryWithDictionaryStringKeysAndStringValues(const __CFDictionary *a1, CFMutableDictionaryRef *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFDictionaryGetTypeID()))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      CFDictionaryApplyFunction(a1, transferStringKeyAndStringValue, Mutable);
      *a2 = v6;
    }

    else
    {
      createDictionaryWithDictionaryStringKeysAndStringValues_cold_1();
    }
  }

  else
  {
    createDictionaryWithDictionaryStringKeysAndStringValues_cold_2();
  }
}

void convertCustomMediaSelectionSchemeSettingsMetadata(const void *a1, __CFArray *a2)
{
  value = 0;
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFDictionaryGetTypeID()))
  {
    convertCustomMediaSelectionSchemeSettingsMetadata_cold_2();
    return;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    convertCustomMediaSelectionSchemeSettingsMetadata_cold_1();
    return;
  }

  v6 = Mutable;
  CFDictionaryApplyFunction(a1, convertCustomMediaSelectionSchemeSettingMetadata, Mutable);
  if (FigCFDictionaryGetCount())
  {
    if (!FigCFDictionaryGetCount())
    {
      goto LABEL_12;
    }
  }

  else
  {
    CFRelease(v6);
    v6 = 0;
    if (!FigCFDictionaryGetCount())
    {
      return;
    }
  }

  ValueIfPresent = CFDictionaryGetValueIfPresent(v6, @"CustomMediaSelectionSchemeSettingMediaCharacteristic", &value);
  if (!v6 || ValueIfPresent)
  {
    if (!v6)
    {
      return;
    }

    CFArrayAppendValue(a2, v6);
  }

LABEL_12:
  CFRelease(v6);
}

void transferStringKeyAndStringValue(const void *a1, const void *a2, __CFDictionary *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), TypeID = CFStringGetTypeID(), a2) && v6 == TypeID && (v8 = CFGetTypeID(a2), v8 == CFStringGetTypeID()))
  {

    CFDictionarySetValue(a3, a1, a2);
  }

  else
  {
    fig_log_get_emitter();

    FigSignalErrorAtGM();
  }
}

void convertCustomMediaSelectionSchemeSettingMetadata(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  value = 0;
  if (FigCFEqual())
  {
    if (a2 && (v5 = CFGetTypeID(a2), v5 == CFStringGetTypeID()))
    {

      CFDictionarySetValue(a3, @"CustomMediaSelectionSchemeSettingMediaCharacteristic", a2);
    }

    else
    {
      convertCustomMediaSelectionSchemeSettingMetadata_cold_1();
    }
  }

  else if (FigCFEqual())
  {
    createDictionaryWithDictionaryStringKeysAndStringValues(a2, &value);
    v6 = value;
    CFDictionarySetValue(a3, @"CustomMediaSelectionSchemeSettingDisplayNames", value);
    if (v6)
    {

      CFRelease(v6);
    }
  }
}

uint64_t EnsureTracksArrayCreated(void *a1, uint64_t a2)
{
  v3 = a1;
  cf = 0;
  capacity = 0;
  if (*(a2 + 112))
  {
    *(a2 + 272) = 0;
    v4 = 4294954511;
    goto LABEL_33;
  }

  if (*(a2 + 260))
  {
    return *(a2 + 264);
  }

  v5 = EnsureFormatReaderCreated(a1, a2);
  if (v5)
  {
LABEL_41:
    v4 = v5;
    Mutable = 0;
    goto LABEL_28;
  }

  v6 = *(a2 + 240);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v7)
  {
    v5 = v7(v6, &capacity);
    if (v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = capacity == 0;
    }

    if (!v8)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v10 = EnsureTrackWorkQueueCreated(a2);
        if (v10)
        {
          v4 = v10;
        }

        else
        {
          LockTrackMacroPropertyState();
          if (capacity < 1)
          {
LABEL_24:
            SetTrackMacroPropertyStateTracks(*(a2 + 608), Mutable);
            UnlockTrackMacroPropertyState();
            v4 = 0;
          }

          else
          {
            v11 = 0;
            while (1)
            {
              value = 0;
              v12 = *(a2 + 240);
              v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
              if (!v13)
              {
                v4 = 4294954514;
                goto LABEL_27;
              }

              v14 = v3;
              v15 = v13(v12, v11, &cf, 0, 0);
              if (v15)
              {
                break;
              }

              v16 = CFGetAllocator(a2);
              v25 = *(a2 + 240);
              v17 = cf;
              v18 = *(a2 + 160);
              v19 = *(a2 + 280);
              v20 = *(a2 + 80);
              v21 = *(a2 + 464);
              TrackMacroPropertyDefinitions = GetTrackMacroPropertyDefinitions(*(a2 + 608));
              v15 = URLAssetCreateAssetTrack(v16, v25, v17, v18, (a2 + 592), v19, BYTE1(v20) & 1, v21, TrackMacroPropertyDefinitions, *(a2 + 616), (*(a2 + 80) & 0x200) != 0, &value);
              if (v15)
              {
                break;
              }

              v3 = v14;
              if (PropertyStoreGetComplainForSyncQueries(v14))
              {
                URLAssetTrackSetComplainForSyncQueries(value, 1);
              }

              CFArrayAppendValue(Mutable, value);
              if (value)
              {
                CFRelease(value);
                value = 0;
              }

              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              if (++v11 >= capacity)
              {
                goto LABEL_24;
              }
            }

            v4 = v15;
            v3 = v14;
LABEL_27:
            UnlockTrackMacroPropertyState();
          }
        }
      }

      else
      {
        EnsureTracksArrayCreated_cold_1(&value);
        v4 = value;
      }

      goto LABEL_28;
    }

    goto LABEL_41;
  }

  Mutable = 0;
  v4 = 4294954514;
LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  if (!Mutable || !v4)
  {
    *(a2 + 272) = Mutable;
    *(a2 + 260) = 1;
    *(a2 + 264) = v4;
    if (!v4)
    {
      StoreByProduct(v3, @"assetProperty_Tracks", 0, 0, Mutable);
      return v4;
    }

    goto LABEL_35;
  }

  CFRelease(Mutable);
  *(a2 + 272) = 0;
LABEL_33:
  *(a2 + 260) = 1;
  *(a2 + 264) = v4;
LABEL_35:
  Error = AssetCopyLoadError(a2, v4);
  StoreByProduct(v3, @"assetProperty_Tracks", *(a2 + 264), Error, *(a2 + 272));
  if (Error)
  {
    CFRelease(Error);
  }

  return v4;
}

uint64_t EnsureFormatReaderCreated(void *a1, uint64_t a2)
{
  cf[2] = *MEMORY[0x1E69E9840];
  v76 = 0;
  v75 = 0;
  v74 = 0;
  if (*(a2 + 112))
  {
    v4 = 4294954511;
LABEL_159:
    *(a2 + 232) = 1;
    *(a2 + 236) = v4;
    goto LABEL_150;
  }

  if (*(a2 + 232))
  {
    return *(a2 + 236);
  }

  if (*(a2 + 88))
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
  if (FigAssetAllowsSandboxedParsingOptIn(BooleanIfPresent))
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  v6 = MEMORY[0x1E695E480];
  if (*(a2 + 64) == 709251626)
  {
    v7 = *(a2 + 72);
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    v8 = 0;
    Mutable = 0;
    *(a2 + 240) = v7;
    goto LABEL_133;
  }

  v10 = EnsureContentStreamCreated(a1, a2);
  if (v10)
  {
    v4 = v10;
    goto LABEL_159;
  }

  if (*(a2 + 192))
  {
    EnsureFormatReaderCreated_cold_1(cf);
    v4 = LODWORD(cf[0]);
    goto LABEL_149;
  }

  v11 = MEMORY[0x1E695E4D0];
  if (*(a2 + 88))
  {
    v68 = a1;
    BooleanValue = FigCFDictionaryGetBooleanValue();
    v13 = FigCFDictionaryGetBooleanValue();
    v14 = FigCFDictionaryGetBooleanValue();
    v15 = CFDictionaryGetValue(*(a2 + 88), @"assetOption_IsMovieProxy");
    v16 = *v11;
    if (v15 == *v11)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v18 = CFDictionaryGetValue(*(a2 + 88), @"assetOption_SupportAliasDataReferences");
    if (v18 == v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = FigCFDictionaryGetBooleanValue();
    value = FigCFDictionaryGetBooleanValue();
    v71 = FigCFDictionaryGetBooleanValue();
    v70 = FigCFDictionaryGetBooleanValue();
    v69 = FigCFDictionaryGetBooleanValue();
    v21 = CFDictionaryGetValue(*(a2 + 88), @"assetOption_PrepareForIncrementalFragments");
    *(a2 + 552) = v21 == v16;
    if (v21 == v16)
    {
      NumberValue = FigCFDictionaryGetNumberValue();
      v23 = (a2 + 560);
      if (!NumberValue || (CFNumberGetValue(NumberValue, kCFNumberSInt64Type, (a2 + 560)), (*v23 & 0x8000000000000000) != 0))
      {
        *v23 = 0;
      }
    }

    DictionaryValue = FigCFDictionaryGetDictionaryValue();
    v25 = FigCFDictionaryGetBooleanValue();
    v26 = v25;
    if (BooleanValue || v13 || v14 || v17 || v19 || v20 || value || *(a2 + 552) || v71 || v70 || v69 || v25)
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      DictionaryValue = MutableCopy;
      if (BooleanValue)
      {
        CFDictionarySetValue(MutableCopy, @"Instantiation_PreferPreciseDurationAndTiming", BooleanValue);
      }

      if (v13)
      {
        CFDictionarySetValue(DictionaryValue, @"ReadEntireMoovAtom", v13);
      }

      if (v14)
      {
        CFDictionarySetValue(DictionaryValue, @"Instantiation_PrepareForCopying", v14);
      }

      if (v17)
      {
        CFDictionarySetValue(DictionaryValue, @"Instantiation_MovieProxy", v17);
      }

      if (v19)
      {
        CFDictionarySetValue(DictionaryValue, @"QTMovie_SupportAliasRecords", v19);
      }

      if (v20)
      {
        CFDictionarySetValue(DictionaryValue, @"Instantiation_EnableAssetAnalysis", v20);
      }

      if (*(a2 + 552))
      {
        CFDictionarySetValue(DictionaryValue, @"Instantiation_AllowIncrementalFragmentParsing", v16);
      }

      v6 = MEMORY[0x1E695E480];
      if (value)
      {
        CFDictionarySetValue(DictionaryValue, @"Instantiation_SkipReadingMP3MetadataDuringFormatReaderCreation", value);
      }

      if (v71)
      {
        CFDictionarySetValue(DictionaryValue, @"Instantiation_ProhibitProFormatReaders", v71);
      }

      if (v70)
      {
        CFDictionarySetValue(DictionaryValue, @"Instantiation_DoNotUseAudioFileAllowList", v70);
      }

      if (v69)
      {
        CFDictionarySetValue(DictionaryValue, @"Instantiation_IgnoreDisabledAPACAudioTracks", v69);
      }

      if (v26)
      {
        CFDictionarySetValue(DictionaryValue, @"Instantiation_ParseExternalSphericalTags", v26);
      }

      v8 = DictionaryValue;
      a1 = v68;
    }

    else
    {
      v8 = 0;
      a1 = v68;
      v6 = MEMORY[0x1E695E480];
    }

    v28 = CFDictionaryGetValue(*(a2 + 88), @"assetOption_OutOfBandMIMEType");
    if (v28 && (v29 = v28, v30 = CFGetTypeID(v28), v30 == CFStringGetTypeID()))
    {
      Mutable = CFDictionaryCreateMutable(*v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"Selection_OutOfBandMIMEType", v29);
    }

    else
    {
      Mutable = 0;
    }

    v31 = CFDictionaryGetValue(*(a2 + 88), @"assetOption_OutOfBandFileType");
    if (v31)
    {
      v32 = v31;
      v33 = CFGetTypeID(v31);
      if (v33 == CFStringGetTypeID())
      {
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(*v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        CFDictionarySetValue(Mutable, @"Selection_OutOfBandFileType", v32);
      }
    }

    v34 = CFDictionaryGetValue(*(a2 + 88), @"assetOption_AllowableTypes");
    if (v34)
    {
      v35 = v34;
      v36 = CFGetTypeID(v34);
      if (v36 == CFArrayGetTypeID())
      {
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(*v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        CFDictionarySetValue(Mutable, @"Selection_AllowableTypes", v35);
      }
    }
  }

  else
  {
    DictionaryValue = 0;
    v8 = 0;
    Mutable = 0;
  }

  theData = 0;
  if (PKDIsContentKeyBossEnabled() && *(a2 + 528))
  {
    cf[0] = 0;
    if (_os_feature_enabled_impl())
    {
      active = URLAssetUpdateToActiveContentKeyBoss(a2);
      if (active)
      {
LABEL_162:
        v4 = active;
        if (!Mutable)
        {
          goto LABEL_147;
        }

LABEL_146:
        CFRelease(Mutable);
        goto LABEL_147;
      }
    }

    v4 = FigContentKeySpecifierCreate(3, @"AudibleGroupID", 0, 0, cf);
    if (!v4)
    {
      v38 = *(a2 + 528);
      v39 = cf[0];
      v40 = *(CMBaseObjectGetVTable() + 16);
      if (v40)
      {
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      v44 = v41[13];
      if (v44 && *v41 >= 2uLL)
      {
        v4 = v44(v38, v39, &theData);
      }

      else
      {
        v4 = 4294954514;
      }
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  else
  {
    v42 = *(a2 + 520);
    if (v42)
    {
      v43 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (!v43)
      {
        v4 = 4294954514;
        if (!Mutable)
        {
          goto LABEL_147;
        }

        goto LABEL_146;
      }

      v4 = v43(v42, @"AudibleGroupID", &theData);
    }

    else
    {
      v4 = 0;
    }
  }

  if (v4 || !theData)
  {
    if (v4)
    {
      goto LABEL_145;
    }
  }

  else
  {
    if (CFDataGetLength(theData) >= 4)
    {
      CFDataGetBytePtr(theData);
      UInt32 = FigCFNumberCreateUInt32();
      if (!v8)
      {
        DictionaryValue = FigCFDictionaryCreateMutableCopy();
        v8 = DictionaryValue;
      }

      CFDictionarySetValue(v8, @"Instantiation_AudibleGroupID", UInt32);
      if (UInt32)
      {
        CFRelease(UInt32);
      }
    }

    CFRelease(theData);
  }

  v46 = (FigAssetUsesRemoteFormatReader() | v75);
  v47 = v76;
  v48 = *(a2 + 160);
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (!v46 || v47)
  {
    started = FigFormatReaderCreateForStreamReturningResults(v48, Mutable, AllocatorForMedia, DictionaryValue, (a2 + 240), (a2 + 248), (a2 + 256), &v74);
    goto LABEL_112;
  }

  active = FigFormatReaderRemoteCreateForStreamReturningResults(v48, Mutable, AllocatorForMedia, DictionaryValue, (a2 + 240), (a2 + 248), (a2 + 256), &v74);
  if (active)
  {
    goto LABEL_162;
  }

  started = FigStartForwardingMediaServicesProcessDeathNotification();
LABEL_112:
  v4 = started;
  if (started)
  {
    goto LABEL_145;
  }

  if (*(a2 + 193))
  {
    theDict = 0;
    FigBaseObject = FigFormatReaderGetFigBaseObject(*(a2 + 240));
    v52 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v52)
    {
      if (!v52(FigBaseObject, @"ImportantResourceLocation", *v6, &theDict) && theDict)
      {
        valuePtr = 0;
        v78 = 0;
        v53 = CFDictionaryGetValue(theDict, @"LocationSize");
        if (v53)
        {
          CFNumberGetValue(v53, kCFNumberSInt64Type, &valuePtr);
        }

        v54 = CFDictionaryGetValue(theDict, @"LocationOffset");
        if (v54)
        {
          CFNumberGetValue(v54, kCFNumberSInt64Type, &v78);
          if (valuePtr)
          {
            cf[0] = v78;
            cf[1] = valuePtr;
            v55 = *(a2 + 160);
            v56 = *(*(CMBaseObjectGetVTable() + 24) + 8);
            if (v56)
            {
              v56(v55, 1, 1, cf);
            }
          }
        }

        CFRelease(theDict);
      }
    }
  }

  if (*(a2 + 552))
  {
    cf[0] = 0;
    v57 = FigFormatReaderGetFigBaseObject(*(a2 + 240));
    v58 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v58)
    {
      v58(v57, @"CouldContainFragments", *v6, cf);
      v58 = cf[0];
    }

    v59 = v58 == *MEMORY[0x1E695E4D0];
    *(a2 + 552) = v59;
    if (v59)
    {
      v60 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a2 + 96));
      *(a2 + 568) = v60;
      if (v60)
      {
        dispatch_source_set_timer(v60, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
        dispatch_set_context(*(a2 + 568), a2);
        dispatch_source_set_event_handler_f(*(a2 + 568), IncrementalFragmentParsingTimerFunction);
        *(a2 + 576) = voucher_copy();
        dispatch_resume(*(a2 + 568));
        v61 = *(a2 + 560);
        if (v61)
        {
          dispatch_source_set_timer(*(a2 + 568), 0, 1000000 * v61, 1000000 * (v61 / 100));
        }
      }

      *(a2 + 464) = 1;
    }
  }

LABEL_133:
  if (HIBYTE(v76))
  {
    cf[0] = 0;
    v62 = FigFormatReaderGetFigBaseObject(*(a2 + 240));
    v63 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v63)
    {
      v63(v62, @"Identifier", *v6, cf);
    }

    if (FigCFEqual())
    {
      v4 = 0;
    }

    else
    {
      FigStopForwardingMediaServicesProcessDeathNotification();
      v64 = *(a2 + 240);
      if (v64)
      {
        CFRelease(v64);
        *(a2 + 240) = 0;
      }

      fig_log_get_emitter();
      v4 = FigSignalErrorAtGM();
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

LABEL_145:
    if (!Mutable)
    {
      goto LABEL_147;
    }

    goto LABEL_146;
  }

  v4 = 0;
  if (Mutable)
  {
    goto LABEL_146;
  }

LABEL_147:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_149:
  *(a2 + 232) = 1;
  *(a2 + 236) = v4;
  if (v4)
  {
LABEL_150:
    Error = AssetCopyLoadError(a2, v4);
    v66 = *(a2 + 236);
    goto LABEL_152;
  }

  v66 = 0;
  Error = 0;
LABEL_152:
  StoreByProduct(a1, @"assetProperty_FormatReader", v66, Error, *(a2 + 240));
  if (v74)
  {
    StoreByProduct(a1, @"AssetAnalysisMessages", 0, 0, v74);
    if (v74)
    {
      CFRelease(v74);
    }
  }

  if (Error)
  {
    CFRelease(Error);
  }

  return v4;
}

void IncrementalFragmentParsingTimerFunction(uint64_t a1)
{
  if (a1)
  {
    os_retain(*(a1 + 576));
    voucher_adopt();
    if (*(a1 + 112) || !*(a1 + 552) || (v3 = *(a1 + 240)) != 0 && ((v5 = 0, (v4 = *(*(CMBaseObjectGetVTable() + 16) + 40)) == 0) || v4(v3, 0, &v5) || (v5 & 4) != 0))
    {
      dispatch_source_set_timer(*(a1 + 568), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      *(a1 + 552) = 0;
    }

    v2 = voucher_adopt();
    os_release(v2);
  }
}

uint64_t ProduceSegmentDataAssetTrackProperty(uint64_t a1, int a2, __CFData **a3)
{
  if (*(a1 + 65))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    *(a1 + 66) = 1;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);

  return FigTrackReaderCreateSegmentData(v6, v7, a2, a3);
}

CFDictionaryRef ProduceGaplessSourceTimeRangeAssetTrackProperty(uint64_t a1, CFDictionaryRef *a2)
{
  v3 = *(MEMORY[0x1E6960C98] + 16);
  *&v7.start.value = *MEMORY[0x1E6960C98];
  *&v7.start.epoch = v3;
  *&v7.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  FigGaplessInfoGetTrackGaplessSourceTimeRange(*(a1 + 16), *(a1 + 24), &v7);
  v4 = *MEMORY[0x1E695E480];
  v6 = v7;
  result = CMTimeRangeCopyAsDictionary(&v6, v4);
  *a2 = result;
  return result;
}

uint64_t ProduceTrackReferencesTrackProperty(uint64_t a1, void *a2)
{
  v16 = 0;
  theDict = 0;
  context = 0;
  FigBaseObject = FigFormatReaderGetFigBaseObject(*(a1 + 16));
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v12 = 0;
    v7 = 4294954514;
    goto LABEL_11;
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = v5(FigBaseObject, @"TrackReferenceDictionary", *MEMORY[0x1E695E480], &theDict);
  v8 = theDict;
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = theDict == 0;
  }

  if (v9)
  {
    v12 = 0;
    if (!theDict)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  valuePtr = 0;
  v10 = *(a1 + 24);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v11)
  {
    v11(v10, &valuePtr, 0);
  }

  context = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryApplyFunction(theDict, SpecificTrackReferenceApplierFunction, &context);
  CFRelease(context);
  v12 = v16;
  v8 = theDict;
  if (theDict)
  {
LABEL_9:
    CFRelease(v8);
  }

LABEL_11:
  *a2 = v12;
  return v7;
}

uint64_t ProduceProtectedStatusTrackProperty(uint64_t a1, CFTypeRef *a2)
{
  theArray = 0;
  v4 = *MEMORY[0x1E695E480];
  FigBaseObject = FigTrackReaderGetFigBaseObject(*(a1 + 24));
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v7 = 4294954514;
LABEL_13:
    v21 = 0;
    v14 = FigTrackReaderGetFigBaseObject(*(a1 + 24));
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v16 = MEMORY[0x1E695E4C0];
      v17 = v15(v14, @"IndicatesContentProtection", v4, &v21);
      if (v21 == *MEMORY[0x1E695E4D0] && v17 == 0)
      {
        v16 = MEMORY[0x1E695E4D0];
      }
    }

    else
    {
      v16 = MEMORY[0x1E695E4C0];
    }

    v19 = theArray;
    if (!theArray)
    {
      goto LABEL_23;
    }

LABEL_22:
    CFRelease(v19);
    goto LABEL_23;
  }

  v7 = v6(FigBaseObject, @"TrackFormatDescriptionArray", v4, &theArray);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = theArray == 0;
  }

  if (v8)
  {
    goto LABEL_13;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_13;
  }

  v10 = Count;
  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
    if (FigCPEIsSupportedFormatDescription(ValueAtIndex))
    {
      break;
    }

    MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
    if (FigCodecTypeIsProtected(MediaSubType))
    {
      break;
    }

    if (v10 == ++v11)
    {
      goto LABEL_11;
    }
  }

  v7 = 0;
  v19 = theArray;
  v16 = MEMORY[0x1E695E4D0];
  if (theArray)
  {
    goto LABEL_22;
  }

LABEL_23:
  *a2 = CFRetain(*v16);
  return v7;
}

CFTypeRef ProduceUsesAudibleDRMTrackProperty(uint64_t a1, void *a2)
{
  v8 = 0;
  FigBaseObject = FigTrackReaderGetFigBaseObject(*(a1 + 24));
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4 || ((v5 = v4(FigBaseObject, @"UsesAudibleDRM", *MEMORY[0x1E695E480], &v8), result = v8, !v5) ? (v7 = v8 == 0) : (v7 = 1), v7))
  {
    result = CFRetain(*MEMORY[0x1E695E4C0]);
  }

  *a2 = result;
  return result;
}

CFTypeRef ProduceAudibleContentIsAuthorizedTrackProperty(uint64_t a1, void *a2)
{
  v8 = 0;
  FigBaseObject = FigTrackReaderGetFigBaseObject(*(a1 + 24));
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4 || ((v5 = v4(FigBaseObject, @"AudibleContentIsAuthorized", *MEMORY[0x1E695E480], &v8), result = v8, !v5) ? (v7 = v8 == 0) : (v7 = 1), v7))
  {
    result = CFRetain(*MEMORY[0x1E695E4C0]);
  }

  *a2 = result;
  return result;
}

CFDictionaryRef ProduceMinSampleDurationTrackProperty(uint64_t a1, CFDictionaryRef *a2)
{
  v3 = *MEMORY[0x1E695E480];
  FigBaseObject = FigTrackReaderGetFigBaseObject(*(a1 + 24));
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || (result = v5(FigBaseObject, @"MinSampleDuration", v3, a2), result) || !*a2)
  {
    v7 = **&MEMORY[0x1E6960C70];
    result = CMTimeCopyAsDictionary(&v7, v3);
    *a2 = result;
  }

  return result;
}

CFNumberRef ProduceAlternateGroupIDTrackPropertyByKey(uint64_t a1, uint64_t a2, CFNumberRef *a3)
{
  v5 = *MEMORY[0x1E695E480];
  FigBaseObject = FigTrackReaderGetFigBaseObject(*(a1 + 24));
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7 || (result = v7(FigBaseObject, a2, v5, a3), result) || !*a3)
  {
    valuePtr = 0;
    result = CFNumberCreate(v5, kCFNumberSInt16Type, &valuePtr);
    *a3 = result;
  }

  return result;
}

CFNumberRef ProduceAssetTrackCameraRollValidationProperty(uint64_t a1, CFNumberRef *a2)
{
  valuePtr = ProduceAssetTrackValidationResult(a1, @"validationCriteria_CameraRoll", 0);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  *a2 = result;
  return result;
}

CFNumberRef ProduceAssetTrack_MediaPlaybackValidationProperty(uint64_t a1, CFNumberRef *a2)
{
  valuePtr = ProduceAssetTrackValidationResult(a1, @"validationCriteria_MediaPlayback", 0);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  *a2 = result;
  return result;
}

CFNumberRef ProduceAssetTrack_MediaDecodingValidationProperty(uint64_t a1, CFNumberRef *a2)
{
  valuePtr = ProduceAssetTrackValidationResult(a1, @"validationCriteria_MediaDecoding", 0);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  *a2 = result;
  return result;
}

uint64_t ProduceAssetTrack_ContainsWideColor(uint64_t a1, CFTypeRef *a2)
{
  v4 = *MEMORY[0x1E695E4C0];
  theArray = 0;
  v15 = 0;
  v5 = *(a1 + 24);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6(v5, 0, &v15);
  if (!v7)
  {
    if (v15 != 1986618469)
    {
LABEL_11:
      v13 = 0;
      goto LABEL_13;
    }

    FigBaseObject = FigTrackReaderGetFigBaseObject(*(a1 + 24));
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v7 = v9(FigBaseObject, @"TrackFormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
      if (!v7)
      {
        if (!theArray)
        {
          v13 = 0;
          goto LABEL_15;
        }

        Count = CFArrayGetCount(theArray);
        if (Count >= 1)
        {
          v11 = Count;
          v12 = 0;
          while (1)
          {
            CFArrayGetValueAtIndex(theArray, v12);
            if (FigVideoFormatDescriptionContainsWideColor())
            {
              break;
            }

            if (v11 == ++v12)
            {
              goto LABEL_11;
            }
          }

          v13 = 0;
          v4 = *MEMORY[0x1E695E4D0];
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      goto LABEL_18;
    }

LABEL_12:
    v13 = 4294954514;
    goto LABEL_13;
  }

LABEL_18:
  v13 = v7;
LABEL_13:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_15:
  *a2 = CFRetain(v4);
  return v13;
}

uint64_t ProduceAssetTrackLatentBaseDecodeTimeStampOfFirstTrackFragment(uint64_t a1, void *a2)
{
  v6 = 0;
  FigBaseObject = FigTrackReaderGetFigBaseObject(*(a1 + 24));
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    result = v4(FigBaseObject, @"LatentBaseDecodeTimeStampOfFirstTrackFragment", *MEMORY[0x1E695E480], &v6);
    v4 = v6;
  }

  else
  {
    result = 4294954514;
  }

  *a2 = v4;
  return result;
}

void SpecificTrackReferenceApplierFunction(const void *a1, CFArrayRef theArray, uint64_t a3)
{
  v6 = CFArrayGetCount(theArray) & 0xFFFFFFFFFFFFFFFELL;
  if (v6 >= 1)
  {
    Mutable = 0;
    v8 = 0;
    v9 = *MEMORY[0x1E695E480];
    v10 = MEMORY[0x1E695E9C0];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
      if (CFEqual(*a3, ValueAtIndex))
      {
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(v9, 0, v10);
        }

        v12 = CFArrayGetValueAtIndex(theArray, v8 + 1);
        CFArrayAppendValue(Mutable, v12);
      }

      v8 += 2;
    }

    while (v8 < v6);
    if (Mutable)
    {
      v13 = *(a3 + 8);
      if (!v13)
      {
        v13 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(a3 + 8) = v13;
      }

      CFDictionaryAddValue(v13, a1, Mutable);

      CFRelease(Mutable);
    }
  }
}

uint64_t FigCodecTypeIsProtected(int a1)
{
  result = 1;
  if (a1 <= 1902207794)
  {
    if (a1 <= 1685220712)
    {
      if (a1 <= 1667524656)
      {
        if (a1 <= 1667326823)
        {
          if (a1 == 1633771875 || a1 == 1667312947)
          {
            return result;
          }

          v4 = 24931;
        }

        else if (a1 > 1667330146)
        {
          if (a1 == 1667330147)
          {
            return result;
          }

          v4 = 30307;
        }

        else
        {
          if (a1 == 1667326824)
          {
            return result;
          }

          v4 = 25456;
        }

        v5 = v4 | 0x63610000;
        goto LABEL_81;
      }

      if (a1 <= 1667656802)
      {
        if (a1 != 1667524657 && a1 != 1667574579)
        {
          v5 = 1667575091;
          goto LABEL_81;
        }

        return result;
      }

      if (a1 > 1668047202)
      {
        if (a1 == 1668047203)
        {
          return result;
        }

        v5 = 1668641633;
      }

      else
      {
        if (a1 == 1667656803)
        {
          return result;
        }

        v5 = 1667790435;
      }

      goto LABEL_81;
    }

    if (a1 <= 1885430578)
    {
      if (a1 <= 1701733237)
      {
        if (a1 != 1685220713 && a1 != 1700886115)
        {
          v5 = 1701733217;
          goto LABEL_81;
        }

        return result;
      }

      if (a1 > 1882599479)
      {
        if (a1 == 1882599480)
        {
          return result;
        }

        v5 = 1885430115;
      }

      else
      {
        if (a1 == 1701733238)
        {
          return result;
        }

        v5 = 1869117027;
      }

      goto LABEL_81;
    }

    if (a1 <= 1885547314)
    {
      v8 = a1 - 1885430579;
      if (v8 > 0x3D || ((1 << v8) & 0x2020000000000001) == 0)
      {
        return 0;
      }

      return result;
    }

    if (a1 <= 1886745440)
    {
      if (a1 == 1885547315)
      {
        return result;
      }

      v5 = 1885692723;
      goto LABEL_81;
    }

    if (a1 == 1886745441)
    {
      return result;
    }

    v6 = 24931;
LABEL_73:
    v5 = v6 | 0x71610000;
    goto LABEL_81;
  }

  if (a1 <= 1902667125)
  {
    if (a1 > 1902324530)
    {
      if (a1 <= 1902405732)
      {
        if (a1 == 1902324531 || a1 == 1902403958)
        {
          return result;
        }

        v7 = 26673;
      }

      else
      {
        if (a1 > 1902469938)
        {
          if (a1 == 1902469939)
          {
            return result;
          }

          v5 = 1902537827;
          goto LABEL_81;
        }

        if (a1 == 1902405733)
        {
          return result;
        }

        v7 = 28024;
      }

      v5 = v7 | 0x71640000;
      goto LABEL_81;
    }

    if ((a1 - 1902207795) <= 0x3D && ((1 << (a1 - 51)) & 0x2020000000000001) != 0 || (a1 - 1902212657) <= 0x34 && ((1 << (a1 - 49)) & 0x14000000000001) != 0)
    {
      return result;
    }

    v6 = 28771;
    goto LABEL_73;
  }

  if (a1 <= 2053202738)
  {
    if (a1 <= 1902998903)
    {
      if (a1 != 1902667126 && a1 != 1902671459)
      {
        v5 = 1902928227;
        goto LABEL_81;
      }

      return result;
    }

    if (a1 > 1903587384)
    {
      if (a1 == 1903587385)
      {
        return result;
      }

      v3 = 24931;
      goto LABEL_76;
    }

    if (a1 == 1902998904)
    {
      return result;
    }

    v5 = 1903522657;
LABEL_81:
    if (a1 == v5)
    {
      return result;
    }

    return 0;
  }

  if (a1 > 2053319474)
  {
    if (a1 > 2053923170)
    {
      if (a1 == 2053923171)
      {
        return result;
      }

      v5 = 2054517601;
    }

    else
    {
      if (a1 == 2053319475)
      {
        return result;
      }

      v5 = 2053464883;
    }

    goto LABEL_81;
  }

  if ((a1 - 2053202739) > 0x3D || ((1 << (a1 - 51)) & 0x2020000000000001) == 0)
  {
    v3 = 30307;
LABEL_76:
    v5 = v3 | 0x7A610000;
    goto LABEL_81;
  }

  return result;
}

void BuildPropertyDependencyDictionary()
{
  v69 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9E8];
  qword_1ED4CB8B0 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  values = @"PreferredRate";
  v2 = MEMORY[0x1E695E9C0];
  v3 = CFArrayCreate(v0, &values, 1, MEMORY[0x1E695E9C0]);
  CFDictionarySetValue(qword_1ED4CB8B0, @"PreferredRate", v3);
  CFRelease(v3);
  values = @"PreferredVolume";
  v4 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"PreferredVolume", v4);
  CFRelease(v4);
  values = @"MovieMatrix";
  v5 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"PreferredTransform", v5);
  CFRelease(v5);
  values = @"TrackReferenceDictionary";
  v6 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_TrackReferences", v6);
  CFRelease(v6);
  values = @"AlternateGroupArray";
  v7 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_AlternateTrackGroups", v7);
  CFRelease(v7);
  values = @"MetadataReaders";
  v8 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_AvailableMetadataFormats", v8);
  CFRelease(v8);
  values = @"QuickTimeMetadataReader";
  v66 = @"iTunesMetadataReader";
  v67 = @"QuickTimeUserDataReader";
  v68 = @"ISOUserDataReader";
  v9 = CFArrayCreate(v0, &values, 4, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_CommonMetadata", v9);
  CFRelease(v9);
  values = @"QuickTimeUserDataReader";
  v10 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_QuickTimeUserData", v10);
  CFRelease(v10);
  values = @"iTunesMetadataReader";
  v11 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_iTunesMetadata", v11);
  CFRelease(v11);
  values = @"QuickTimeMetadataReader";
  v12 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_QuickTimeMetadata", v12);
  CFRelease(v12);
  values = @"ISOUserDataReader";
  v13 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_ISOUserData", v13);
  CFRelease(v13);
  values = @"FormatSpecificMetadataReader";
  v14 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_FormatSpecificMetadata", v14);
  CFRelease(v14);
  values = @"FormatDescriptionsChanged";
  v15 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_ProtectedStatus", v15);
  CFRelease(v15);
  values = @"AlternateGroupAssignmentsArray";
  v66 = @"TrackReferenceDictionary";
  v16 = CFArrayCreate(v0, &values, 2, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"MediaSelectionArray", v16);
  CFRelease(v16);
  values = @"FormatDescriptionsChanged";
  v66 = @"EnabledTracksChanged";
  v17 = CFArrayCreate(v0, &values, 2, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_MediaPlaybackValidation", v17);
  CFRelease(v17);
  values = @"FormatDescriptionsChanged";
  v66 = @"EnabledTracksChanged";
  v18 = CFArrayCreate(v0, &values, 2, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_CameraRollValidation", v18);
  CFRelease(v18);
  values = @"ContainsChapters";
  v19 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_ChapterGroupInfo", v19);
  CFRelease(v19);
  values = @"FragmentCount";
  v20 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(qword_1ED4CB8B0, @"assetProperty_FragmentCount", v20);
  CFRelease(v20);
  sAssetTrackPropertyDependencies = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], v1);
  values = @"TrackFormatDescriptionArray";
  v21 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"FormatDescriptionArray", v21);
  CFRelease(v21);
  values = @"TrackEnabled";
  v22 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"IsEnabled", v22);
  CFRelease(v22);
  values = @"TrackIsSelfContained";
  v23 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"IsSelfContained", v23);
  CFRelease(v23);
  values = @"UneditedNumDataBytes";
  v24 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"TotalSampleDataLength", v24);
  CFRelease(v24);
  values = @"UneditedTrackDuration";
  v66 = @"EditCursorService";
  v25 = CFArrayCreate(v0, &values, 2, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"TimeRange", v25);
  CFRelease(v25);
  values = @"UneditedSampleCount";
  v26 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"MediaPresentationTimeRange", v26);
  CFRelease(v26);
  values = @"UneditedSampleCount";
  v27 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"MediaDecodeTimeRange", v27);
  CFRelease(v27);
  values = @"EstimatedDataRate";
  v28 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"EstimatedDataRate", v28);
  CFRelease(v28);
  values = @"PeakDataRate";
  v29 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"PeakDataRate", v29);
  CFRelease(v29);
  values = @"UneditedSampleCount";
  v30 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"UneditedSampleCount", v30);
  CFRelease(v30);
  values = @"HasRollInformation";
  v31 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"HasRollInformation", v31);
  CFRelease(v31);
  values = @"TrackLanguageCode";
  v32 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"LanguageCode", v32);
  CFRelease(v32);
  values = @"QuickTimeUserDataReader";
  v66 = @"ISOUserDataReader";
  v67 = @"TrackExcludeFromAutoSelection";
  v33 = CFArrayCreate(v0, &values, 3, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"MediaCharacteristicArray", v33);
  CFRelease(v33);
  values = @"ExtendedLanguageTagString";
  v34 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"ExtendedLanguageTag", v34);
  CFRelease(v34);
  values = @"CleanApertureDimensions";
  v66 = @"TrackDimensions";
  v35 = CFArrayCreate(v0, &values, 2, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"NaturalSize", v35);
  CFRelease(v35);
  values = @"TrackDimensions";
  v36 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"TrackDimensions", v36);
  CFRelease(v36);
  values = @"CleanApertureDimensions";
  v37 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"CleanApertureDimensions", v37);
  CFRelease(v37);
  values = @"ProductionApertureDimensions";
  v38 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"ProductionApertureDimensions", v38);
  CFRelease(v38);
  values = @"EncodedPixelsDimensions";
  v39 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"EncodedPixelsDimensions", v39);
  CFRelease(v39);
  values = @"TrackMatrix";
  v40 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"PreferredTransform", v40);
  CFRelease(v40);
  values = @"NominalFrameRate";
  v41 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"NominalFrameRate", v41);
  CFRelease(v41);
  values = @"QuickTimeMetadataReader";
  v42 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_QuickTimeMetadata", v42);
  CFRelease(v42);
  values = @"QuickTimeUserDataReader";
  v43 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_QuickTimeUserData", v43);
  CFRelease(v43);
  values = @"ISOUserDataReader";
  v44 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_ISOUserData", v44);
  CFRelease(v44);
  values = @"QuickTimeMetadataReader";
  v66 = @"QuickTimeUserDataReader";
  v67 = @"ISOUserDataReader";
  v68 = @"FormatSpecificMetadataReader";
  v45 = CFArrayCreate(v0, &values, 4, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"CommonMetadata", v45);
  CFRelease(v45);
  values = @"FormatSpecificMetadataReader";
  v46 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_FormatSpecificMetadata", v46);
  CFRelease(v46);
  values = @"FormatSpecificMetadataReader";
  v47 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_FormatSpecificMetadataFormat", v47);
  CFRelease(v47);
  values = @"MetadataReaders";
  v48 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"AvailableMetadataFormats", v48);
  CFRelease(v48);
  values = @"TrackExcludeFromAutoSelection";
  v49 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"IsExcludedFromAutoselection", v49);
  CFRelease(v49);
  values = @"Volume";
  v50 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"Volume", v50);
  CFRelease(v50);
  values = @"TrackLayer";
  v51 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"Layer", v51);
  CFRelease(v51);
  values = @"TrackReferencesChanged";
  v52 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_TrackReferences", v52);
  CFRelease(v52);
  values = @"TrackFormatDescriptionArray";
  v53 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_ProtectedStatus", v53);
  CFRelease(v53);
  values = @"MinSampleDuration";
  v54 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"MinSampleDuration", v54);
  CFRelease(v54);
  values = @"AlternateGroupID";
  v55 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"AlternateGroupID", v55);
  CFRelease(v55);
  values = @"DefaultAlternateGroupID";
  v56 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"DefaultAlternateGroupID", v56);
  CFRelease(v56);
  values = @"ProvisionalAlternateGroupID";
  v57 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"ProvisionalAlternateGroupID", v57);
  CFRelease(v57);
  values = @"TrackQTLoadSettings";
  v58 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"LoadSettings", v58);
  CFRelease(v58);
  values = @"SampleGroupDescriptions";
  v59 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"SampleGroupDescriptions", v59);
  CFRelease(v59);
  values = @"HEVCTemporalLevelInfoCombinations";
  v60 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"HEVCTemporalLevelInfoCombinations", v60);
  CFRelease(v60);
  values = @"HEVCSyncSampleNALUnitTypes";
  v61 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"HEVCSyncSampleNALUnitTypes", v61);
  CFRelease(v61);
  values = @"TrackFormatDescriptionArray";
  v62 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_CameraRollValidation", v62);
  CFRelease(v62);
  values = @"TrackFormatDescriptionArray";
  v63 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_MediaPlaybackValidation", v63);
  CFRelease(v63);
  values = @"TrackFormatDescriptionArray";
  v64 = CFArrayCreate(v0, &values, 1, v2);
  CFDictionarySetValue(sAssetTrackPropertyDependencies, @"assetTrackProperty_MediaDecodingValidation", v64);
  CFRelease(v64);
}

void ReviseSegmentDataAssetTrackProperties(uint64_t *a1)
{
  v2 = MEMORY[0x19A8D0E00](a1 + 5);
  if (v2)
  {
    v3 = v2;
    cf = 0;
    if (!FigTrackReaderCreateSegmentData(a1[2], a1[3], 0, &cf))
    {
      ReviseProperty(v3, @"assetTrackProperty_EditSegmentData", cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    if (!FigTrackReaderCreateSegmentData(a1[2], a1[3], 1, &cf))
    {
      ReviseProperty(v3, @"assetTrackProperty_PresentationSegmentData", cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    CFRelease(v3);
  }

  CFRelease(a1);
}

void __AssetTrackMutationMonitoringNotificationCallback_block_invoke(CFTypeRef *a1)
{
  context = a1[4];
  v3 = *(a1 + 5);
  CFDictionaryApplyFunction(*(v3 + 72), AssessMonitoredAssetTrackPropertyChange, &context);
  CFRelease(a1[4]);
  CFRelease(a1[5]);
  CFRelease(a1[6]);
}

void AssessMonitoredAssetTrackPropertyChange(const void *a1, CFArrayRef theArray, uint64_t a3)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
      if (CFDictionaryContainsKey(*a3, ValueAtIndex))
      {
        break;
      }

      if (v7 == ++v8)
      {
        return;
      }
    }

    v10 = *(a3 + 16);
    if (!ProduceAssetTrackProperty(*(a3 + 8), a1))
    {
      ReviseProperty(v10, a1, 0);
    }
  }
}

uint64_t EnsureChapterGroupInfoCreated(void *a1, uint64_t a2)
{
  v15 = 0;
  v16 = 0;
  if (*(a2 + 112))
  {
    v11 = 0;
    v4 = 4294954511;
  }

  else
  {
    if (*(a2 + 316))
    {
      return *(a2 + 320);
    }

    v5 = EnsureFormatReaderCreated(a1, a2);
    if (v5)
    {
      v4 = v5;
      v11 = 0;
    }

    else
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v7 = Mutable;
        if (!FCSupport_GetListOfChapterTitleTrackIDs(*(a2 + 240), &v15, &v16, 0))
        {
          if (v15 >= 1)
          {
            v8 = 0;
            do
            {
              v9 = AddChapterTrackInfoToArray(a2, *(v16 + v8), @"title", v7);
              if (v9)
              {
                goto LABEL_28;
              }
            }

            while (++v8 < v15);
          }

          free(v16);
          v15 = 0;
          v16 = 0;
        }

        if (!FCSupport_GetListOfChapterImageTrackIDs(*(a2 + 240), &v15, &v16, 0))
        {
          if (v15 >= 1)
          {
            v10 = 0;
            while (1)
            {
              v9 = AddChapterTrackInfoToArray(a2, *(v16 + v10), @"artwork", v7);
              if (v9)
              {
                break;
              }

              if (++v10 >= v15)
              {
                goto LABEL_17;
              }
            }

LABEL_28:
            v4 = v9;
            free(v16);
            CFRelease(v7);
            *(a2 + 316) = 1;
            *(a2 + 320) = v4;
            goto LABEL_22;
          }

LABEL_17:
          free(v16);
          v16 = 0;
        }

        if (!CFArrayGetCount(v7))
        {
          CFRelease(v7);
          v7 = 0;
        }

        v4 = 0;
        *(a2 + 328) = v7;
        v11 = v16;
      }

      else
      {
        EnsureChapterGroupInfoCreated_cold_1(&v17);
        v11 = 0;
        v4 = v17;
      }
    }
  }

  free(v11);
  *(a2 + 316) = 1;
  *(a2 + 320) = v4;
  if (v4)
  {
LABEL_22:
    Error = AssetCopyLoadError(a2, v4);
    v13 = *(a2 + 320);
    goto LABEL_24;
  }

  v13 = 0;
  Error = 0;
LABEL_24:
  StoreByProduct(a1, @"assetProperty_ChapterGroupInfo", v13, Error, *(a2 + 328));
  if (Error)
  {
    CFRelease(Error);
  }

  return v4;
}

void PerformCompleteChapterJob(CFTypeRef *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v11 = 0;
  keys[0] = @"assetPayload_ChapterGroupIndex";
  v2 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, a1 + 3);
  keys[1] = @"assetPayload_ChapterIndex";
  cf = CFNumberCreate(v2, kCFNumberSInt32Type, a1 + 28);
  keys[2] = @"assetPayload_ChapterCount";
  v8 = CFNumberCreate(v2, kCFNumberSInt32Type, a1 + 4);
  if (*a1)
  {
    v11 = @"assetPayload_Result";
    v3 = CFNumberCreate(v2, kCFNumberSInt32Type, a1);
  }

  else
  {
    v11 = @"assetPayload_ChapterData";
    v3 = a1[5];
    if (v3)
    {
      v3 = CFRetain(v3);
    }
  }

  v9 = v3;
  v4 = CFDictionaryCreate(v2, keys, &values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v4)
  {
    CFRelease(v4);
  }

  if (values)
  {
    CFRelease(values);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(a1[1]);
  CFRelease(a1[2]);
  free(a1);
}

void MultiTrackBatchNotificationCallback(int a1, uint64_t a2, int a3, const void *a4, CFDictionaryRef theDict)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"assetPayload_BatchID");
  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  v8 = CFDictionaryGetValue(*(a2 + 56), a4);
  if (v8)
  {
    if (*v8 == valuePtr)
    {
      dispatch_group_leave(*(a2 + 40));
    }
  }
}

uint64_t StreamingAssetCopyMaximumVideoResolution(uint64_t a1, CFDictionaryRef *a2)
{
  theDict = 0;
  FigBaseObject = FigBytePumpGetFigBaseObject(a1);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4 || v4(FigBaseObject, 0x1F0B1EE98, *MEMORY[0x1E695E480], &theDict))
  {
    StreamingAssetCopyMaximumVideoResolution_cold_2();
LABEL_16:
    v18 = v21;
    goto LABEL_17;
  }

  if (!theDict)
  {
    StreamingAssetCopyMaximumVideoResolution_cold_1(&v21);
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(theDict, @"FBPAIK_FigAlternateArray");
  if (Value && (v6 = Value, Count = CFArrayGetCount(Value), Count >= 1))
  {
    v8 = Count;
    v10 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
    v11 = 0.0;
    v12 = 1;
    do
    {
      while (1)
      {
        v13 = v8 - 1;
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v8 - 1);
        Resolution = FigAlternateGetResolution(ValueAtIndex);
        if (Resolution * v16 <= v11)
        {
          break;
        }

        v12 = 0;
        v9 = v16;
        v10 = Resolution;
        v11 = Resolution * v16;
        if (v8-- <= 1)
        {
          goto LABEL_14;
        }
      }

      --v8;
    }

    while (v13 + 1 > 1);
    Resolution = v10;
    v16 = v9;
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_14:
    v18 = 0;
    *a2 = CGSizeCreateDictionaryRepresentation(*&Resolution);
  }

  else
  {
LABEL_13:
    v18 = 4294954513;
  }

LABEL_17:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v18;
}

uint64_t StreamingAssetCopyAvailableVideoDynamicRanges(uint64_t a1, CFMutableArrayRef *a2)
{
  theDict = 0;
  if (!a2)
  {
    StreamingAssetCopyAvailableVideoDynamicRanges_cold_3(&v18);
    return v18;
  }

  if (!a1)
  {
    StreamingAssetCopyAvailableVideoDynamicRanges_cold_2(&v18);
    Mutable = 0;
LABEL_20:
    v10 = v18;
    goto LABEL_14;
  }

  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    StreamingAssetCopyAvailableVideoDynamicRanges_cold_1(&v18);
    goto LABEL_20;
  }

  FigBaseObject = FigBytePumpGetFigBaseObject(a1);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = v7(FigBaseObject, 0x1F0B1EE98, v4, &theDict);
    if (!v8)
    {
      if (!theDict)
      {
        v10 = 0;
        *a2 = Mutable;
        return v10;
      }

      Value = CFDictionaryGetValue(theDict, @"FBPAIK_FigAlternateArray");
      v10 = Value;
      if (Value)
      {
        Count = CFArrayGetCount(Value);
        if (Count >= 1)
        {
          v12 = Count + 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v10, v12 - 2);
            VideoQualityIndex = FigAlternateGetVideoQualityIndex(ValueAtIndex);
            FigAlternateStreamVideoQualityIndexToCMVideoDynamicRange(VideoQualityIndex);
            FigCFArrayAppendInt32();
            --v12;
          }

          while (v12 > 1);
        }

        v10 = 0;
      }

      goto LABEL_14;
    }

    v10 = v8;
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(Mutable);
  Mutable = 0;
LABEL_14:
  v15 = theDict;
  *a2 = Mutable;
  if (v15)
  {
    CFRelease(v15);
  }

  return v10;
}

uint64_t StreamingAssetCopySessionKeys(uint64_t a1, CFArrayRef *a2)
{
  theArray = 0;
  FigBaseObject = FigBytePumpGetFigBaseObject(a1);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v5 = v4(FigBaseObject, 0x1F0B1F718, *MEMORY[0x1E695E480], &theArray);
    v6 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v6 = theArray;
      if (!Count)
      {
        if (theArray)
        {
          CFRelease(theArray);
          v6 = 0;
        }
      }
    }
  }

  else
  {
    v6 = 0;
    v5 = -12782;
  }

  if (v5 >> 1 == 2147477256)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  *a2 = v6;
  return v8;
}

uint64_t ProduceProtectedStatusProperty(void *a1, uint64_t a2, CFTypeRef *a3)
{
  v5 = MEMORY[0x1E695E4D0];
  if (*(a2 + 352))
  {
    v6 = 0;
  }

  else
  {
    v28 = 0;
    v7 = EnsureFormatReaderCreated(a1, a2);
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v8 = *(a2 + 240);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v9)
      {
        v6 = v9(v8, &v28);
        if (!v6)
        {
          if (!*(a2 + 353))
          {
            v14 = 0;
            v15 = *MEMORY[0x1E695E480];
            while (v14 < v28)
            {
              theArray = 0;
              cf = 0;
              v16 = *(a2 + 240);
              v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
              if (v17)
              {
                v6 = v17(v16, v14, &cf, 0, 0);
                if (!v6)
                {
                  FigBaseObject = FigTrackReaderGetFigBaseObject(cf);
                  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v19)
                  {
                    v6 = v19(FigBaseObject, @"TrackFormatDescriptionArray", v15, &theArray);
                    if (v6)
                    {
                      v20 = 1;
                    }

                    else
                    {
                      v20 = theArray == 0;
                    }

                    if (!v20)
                    {
                      Count = CFArrayGetCount(theArray);
                      if (Count >= 1)
                      {
                        v22 = Count;
                        for (i = 0; i != v22; ++i)
                        {
                          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
                          if (FigCPEIsSupportedFormatDescription(ValueAtIndex))
                          {
                            *(a2 + 353) = 1;
                          }

                          MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
                          if (FigCodecTypeIsProtected(MediaSubType))
                          {
                            *(a2 + 353) = 1;
                          }
                        }
                      }

                      v6 = 0;
                    }
                  }

                  else
                  {
                    v6 = 4294954514;
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                  }
                }
              }

              else
              {
                v6 = 4294954514;
              }

              if (theArray)
              {
                CFRelease(theArray);
              }

              if (!v6)
              {
                ++v14;
                if (!*(a2 + 353))
                {
                  continue;
                }
              }

              goto LABEL_9;
            }
          }

          v6 = 0;
        }
      }

      else
      {
        v6 = 4294954514;
      }

LABEL_9:
      if (!*(a2 + 353))
      {
        cf = 0;
        v12 = FigFormatReaderGetFigBaseObject(*(a2 + 240));
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v13)
        {
          if (!v13(v12, @"IndicatesContentProtection", *MEMORY[0x1E695E480], &cf) && cf == *v5)
          {
            *(a2 + 353) = 1;
          }
        }
      }

      *(a2 + 352) = 1;
    }
  }

  if (*(a2 + 353))
  {
    v10 = v5;
  }

  else
  {
    v10 = MEMORY[0x1E695E4C0];
  }

  *a3 = CFRetain(*v10);
  return v6;
}

uint64_t ProduceSHA1DigestProperty(void *a1, uint64_t a2, void *a3)
{
  if (*(a2 + 112))
  {
    v6 = 4294954511;
LABEL_17:
    *(a2 + 196) = 1;
    *(a2 + 200) = v6;
    goto LABEL_7;
  }

  if (*(a2 + 196))
  {
    v6 = *(a2 + 200);
    goto LABEL_12;
  }

  v7 = EnsureContentStreamCreated(a1, a2);
  if (v7)
  {
    v6 = v7;
    goto LABEL_17;
  }

  if (*(a2 + 160))
  {
    v6 = FigByteStreamCopySHA1Digest();
    *(a2 + 208) = 0;
    *(a2 + 196) = 1;
    *(a2 + 200) = v6;
    if (v6)
    {
LABEL_7:
      Error = AssetCopyLoadError(a2, v6);
      v9 = *(a2 + 200);
      goto LABEL_10;
    }

    v9 = 0;
    Error = 0;
  }

  else
  {
    v9 = 0;
    v6 = 0;
    Error = 0;
    *(a2 + 196) = 1;
    *(a2 + 200) = 0;
  }

LABEL_10:
  StoreByProduct(a1, @"assetProperty_SHA1Digest", v9, Error, *(a2 + 208));
  if (Error)
  {
    CFRelease(Error);
  }

LABEL_12:
  v10 = *(a2 + 208);
  if (v10)
  {
    v10 = CFRetain(v10);
  }

  *a3 = v10;
  return v6;
}

CFTypeRef ProduceAssetCompatibleWithAirPlayVideoProperty(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 64) != 1431456810 || (ProduceAssetCompatibleWithAirPlayVideoProperty_cold_1() & 1) != 0)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  result = CFRetain(*v4);
  *a3 = result;
  return result;
}

uint64_t ProduceAvailableVideoDynamicRangesProperty(void *a1, uint64_t a2, CFMutableArrayRef *a3)
{
  v20 = 0;
  if (!a3)
  {
    ProduceAvailableVideoDynamicRangesProperty_cold_4(&v19);
    return v19;
  }

  if (!a2)
  {
    ProduceAvailableVideoDynamicRangesProperty_cold_3(&v19);
    Mutable = 0;
LABEL_29:
    v16 = v19;
    goto LABEL_24;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    ProduceAvailableVideoDynamicRangesProperty_cold_2(&v19);
    goto LABEL_29;
  }

  v8 = EnsureFormatReaderCreated(a1, a2);
  if (v8)
  {
LABEL_30:
    v16 = v8;
    goto LABEL_23;
  }

  v9 = *(a2 + 240);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v10)
  {
    v8 = v10(v9, &v20);
    if (!v8)
    {
      if (v20 >= 1)
      {
        v11 = 0;
        while (1)
        {
          cf = 0;
          v19 = 0;
          v12 = *(a2 + 240);
          v13 = *(*(CMBaseObjectGetVTable() + 16) + 64);
          if (!v13)
          {
            goto LABEL_16;
          }

          if (v13(v12, v11, 1986618469, &v19, 0))
          {
            goto LABEL_16;
          }

          if (!v19)
          {
            goto LABEL_16;
          }

          FigBaseObject = FigTrackReaderGetFigBaseObject(v19);
          v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v15 || v15(FigBaseObject, @"TrackFormatDescriptionArray", v6, &cf))
          {
            goto LABEL_16;
          }

          if (cf)
          {
            break;
          }

LABEL_18:
          if (v19)
          {
            CFRelease(v19);
          }

          if (++v11 >= v20)
          {
            goto LABEL_21;
          }
        }

        ProduceAvailableVideoDynamicRangesProperty_cold_1();
LABEL_16:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_18;
      }

LABEL_21:
      v16 = 0;
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  v16 = 4294954514;
LABEL_23:
  CFRelease(Mutable);
  Mutable = 0;
LABEL_24:
  *a3 = Mutable;
  return v16;
}

uint64_t ProduceNominalVideoFrameRateProperty(void *a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t *))
{
  v26 = 0;
  v25 = 0.0;
  if (a3)
  {
    if (a2)
    {
      result = EnsureFormatReaderCreated(a1, a2);
      if (result)
      {
        goto LABEL_46;
      }

      v6 = *(a2 + 240);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v7)
      {
        result = 4294954514;
        goto LABEL_43;
      }

      result = v7(v6, &v26);
      if (result)
      {
LABEL_46:
        v7 = 0;
        goto LABEL_43;
      }

      v8 = *MEMORY[0x1E695E480];
      if (v26 >= 1)
      {
        v9 = 0;
        v10 = *MEMORY[0x1E695E4D0];
        v11 = 0.0;
        while (1)
        {
          cf = 0;
          v24 = 0;
          v12 = *(a2 + 240);
          v13 = *(*(CMBaseObjectGetVTable() + 16) + 64);
          if (!v13)
          {
            goto LABEL_33;
          }

          if (v13(v12, v9, 1986618469, &v24, 0))
          {
            goto LABEL_33;
          }

          if (!v24)
          {
            goto LABEL_33;
          }

          FigBaseObject = FigTrackReaderGetFigBaseObject(v24);
          v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v15 || v15(FigBaseObject, @"TrackEnabled", v8, &cf))
          {
            goto LABEL_33;
          }

          v16 = cf;
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v10 != v16)
          {
            goto LABEL_33;
          }

          valuePtr = 0.0;
          v17 = FigTrackReaderGetFigBaseObject(v24);
          v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v18)
          {
            goto LABEL_31;
          }

          if (v18(v17, @"NominalFrameRate", v8, &cf))
          {
            goto LABEL_31;
          }

          CFNumberGetValue(cf, kCFNumberFloatType, &valuePtr);
          v19 = valuePtr;
          if (valuePtr == 0.0)
          {
            goto LABEL_31;
          }

          if (v11 != 0.0)
          {
            break;
          }

          v25 = valuePtr;
          v20 = valuePtr;
LABEL_32:
          v11 = v20;
LABEL_33:
          if (cf)
          {
            CFRelease(cf);
          }

          if (v24)
          {
            CFRelease(v24);
          }

          if (++v9 >= v26)
          {
            goto LABEL_40;
          }
        }

        if (vabds_f32(v11, valuePtr) > 0.01)
        {
          if (v11 <= valuePtr)
          {
            v20 = valuePtr;
          }

          else
          {
            v20 = v11;
          }

          if (v11 < valuePtr)
          {
            v19 = v11;
          }

          if (fabsf(v20 + (v19 * -2.0)) >= 0.01 && fabsf(v20 + (v19 * -3.0)) >= 0.01 && fabsf(v20 + (v19 * -4.0)) >= 0.01)
          {
            v25 = 0.0;
            v20 = 0.0;
            v9 = v26;
          }

          else
          {
            v25 = v20;
          }

          goto LABEL_32;
        }

LABEL_31:
        v20 = v11;
        goto LABEL_32;
      }

LABEL_40:
      v21 = CFNumberCreate(v8, kCFNumberFloatType, &v25);
      if (v21)
      {
        v7 = v21;
        result = 0;
LABEL_43:
        *a3 = v7;
        return result;
      }

      ProduceNominalVideoFrameRateProperty_cold_1(&v24);
    }

    else
    {
      ProduceNominalVideoFrameRateProperty_cold_2(&v24);
    }

    v7 = 0;
    result = v24;
    goto LABEL_43;
  }

  ProduceNominalVideoFrameRateProperty_cold_3(&v24);
  return v24;
}

void BuildMetadataFilterDictionaries()
{
  v9 = *MEMORY[0x1E69E9840];
  *keys = xmmword_1E74941E0;
  v8 = @"key_ostype";
  v0 = *MEMORY[0x1E695E480];
  SInt32 = FigCFNumberCreateSInt32();
  values = @"udta";
  v5 = @"meta";
  v6 = SInt32;
  v2 = MEMORY[0x1E695E9D8];
  v3 = MEMORY[0x1E695E9E8];
  qword_1ED4CB8C0 = CFDictionaryCreate(v0, keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  values = @"uiso";
  v5 = @"meta";
  v6 = SInt32;
  qword_1ED4CB8C8 = CFDictionaryCreate(v0, keys, &values, 3, v2, v3);
  values = @"mdta";
  v5 = @"com.apple.quicktime.aime-data";
  qword_1ED4CB8D0 = CFDictionaryCreate(v0, keys, &values, 2, v2, v3);
  if (SInt32)
  {
    CFRelease(SInt32);
  }
}

uint64_t IsNotOnFilterOutKeyList(const __CFDictionary *a1, const __CFArray *a2)
{
  CFDictionaryGetValue(a1, @"keyspace");
  Value = CFDictionaryGetValue(a1, @"key");
  if (!a2)
  {
    return 1;
  }

  v5 = Value;
  Count = CFArrayGetCount(a2);
  if (Count < 1)
  {
    return 1;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
    CFDictionaryGetValue(ValueAtIndex, @"keyspace");
    if (FigCFEqual())
    {
      if (v5 && (v10 = CFGetTypeID(v5), v10 == CFNumberGetTypeID()))
      {
        v11 = ValueAtIndex;
        v12 = @"key_ostype";
      }

      else
      {
        v11 = ValueAtIndex;
        v12 = @"key_string";
      }

      CFDictionaryGetValue(v11, v12);
      if (FigCFEqual())
      {
        break;
      }
    }

    if (v7 == ++v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_10_61()
{

  return FigNotificationCenterAddWeakListener();
}

void OUTLINED_FUNCTION_14_53(dispatch_once_t *a1)
{

  dispatch_once_f(a1, 0, BuildPropertyDependencyDictionary);
}

uint64_t OUTLINED_FUNCTION_18_41()
{
  *(v0 - 32) = 0;
  *(v0 - 24) = 0;
  *(v0 - 48) = 0;
  *(v0 - 40) = 0;
  *(v0 - 64) = 0;
  *(v0 - 56) = 0;
  *(v0 - 96) = 0;
  *(v0 - 88) = 0;
  *(v0 - 80) = 0;

  return CMBaseObjectGetVTable();
}

__n128 OUTLINED_FUNCTION_19_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33, __int128 a34, __int128 a35)
{
  *(v35 + 176) = a33;
  *(v35 + 192) = a34;
  *(v35 + 208) = a35;
  return *(v35 + 32);
}

CMTime *OUTLINED_FUNCTION_22_33@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, CMTime *time, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;
  v20 = v17[1];
  v17[11] = *v17;
  v17[12] = v20;
  v17[13] = v17[2];

  return CMTimeClampToRange(&a8, &timea, (v18 - 160));
}

__n128 OUTLINED_FUNCTION_27_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15, uint64_t a16)
{
  result = a15;
  v16[11] = a15;
  *(v17 - 144) = a16;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_27()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_30_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v7 = *(v4 + 88);
  v8 = *(v4 + 336);
  v9 = *v5;

  return FigCFHTTPCreateCommonHTTPHeadersFromAssetCreationOptions(v9, v7, v8, va);
}

__n128 OUTLINED_FUNCTION_37_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15, uint64_t a16)
{
  result = a15;
  v16[8] = a15;
  *(v17 - 192) = a16;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_23()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_42_22()
{

  return CMBaseObjectGetVTable();
}

void OUTLINED_FUNCTION_43_19(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

uint64_t audioRendererRemote_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    audioRendererRemote_getObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[1])
    {
      audioRendererRemote_getObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *(v4 + 1);
    }
  }

  return result;
}

uint64_t FigSampleBufferAudioRendererCreateRemoteWithOptionsAndRetry(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0;
  if (a3)
  {
    v6 = 0;
    do
    {
      result = FigSampleBufferAudioRendererCreateRemoteWithOptions(a1, a2, &v10);
    }

    while ((result == -16155 || result == -16384) && v6++ < 4);
    if (!result)
    {
      *a3 = v10;
    }
  }

  else
  {
    FigSampleBufferAudioRendererCreateRemoteWithOptionsAndRetry_cold_1(&v11);
    return v11;
  }

  return result;
}

void __audioRendererRemote_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"ServerConnectionDied");
  FigCFDictionarySetInt32();
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  FigRemote_ShouldConnectToMediaplaybackd();
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

_BYTE *audioRendererRemote_deadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  *result = 1;
  return result;
}

uint64_t audioRendererRemote_notificationFilter()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    *(DerivedStorage + 1) = 1;
  }

  return 0;
}

void __audioRendererRemote_handleCompletionCallback_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 24);
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, *(a1 + 48));
    if (Value)
    {
      v4 = *(*(a1 + 32) + 8);
      v5 = *Value;
      *(v4 + 40) = Value[2];
      *(v4 + 24) = v5;
      v6 = *(*(*(a1 + 32) + 8) + 24);
      if (v6)
      {
        CFRetain(v6);
      }
    }

    v7 = *(a1 + 48);
    v8 = *(*(a1 + 40) + 24);

    CFDictionaryRemoveValue(v8, v7);
  }
}

uint64_t audioRendererRemote_cloneCompletionCallbackEntry(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 24, 0xA00402214FCE6, 0);
  v4 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v4;
  if (*v3)
  {
    CFRetain(*v3);
  }

  return v3;
}

void audioRendererRemote_freeCompletionCallbackEntry(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

__CFString *audioRendererRemote_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferAudioRendererRemote=%p retainCount=%d allocator=%p", a1, v5, v6);
  CFStringAppendFormat(Mutable, 0, @" objectID=%lld", *(DerivedStorage + 8));
  if (*DerivedStorage)
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  CFStringAppendFormat(Mutable, 0, @" serverDied=%s", v7);
  if (*(DerivedStorage + 1))
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  CFStringAppendFormat(Mutable, 0, @" dependencyLost=%s", v8);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

void __audioRendererRemote_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 32);
  v4 = 1;
  if ((v3 + 1) > 1)
  {
    v4 = v3 + 1;
  }

  *(DerivedStorage + 32) = v4;
  *(*(a1[4] + 8) + 24) = v3;
  v5 = *(a1[6] + 24);
  if (v5)
  {
    v6 = *(*(a1[4] + 8) + 24);

    CFDictionarySetValue(v5, v6, a1 + 7);
  }
}

void __audioRendererRemote_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke_2(void *a1)
{
  v2 = *(a1[6] + 24);
  if (v2)
  {
    if (CFDictionaryGetValueIfPresent(v2, *(*(a1[4] + 8) + 24), 0))
    {
      v3 = a1[7];
      if (v3)
      {
        CFRetain(v3);
      }

      *(*(a1[5] + 8) + 24) = 1;
    }

    v4 = *(a1[6] + 24);
    v5 = *(*(a1[4] + 8) + 24);

    CFDictionaryRemoveValue(v4, v5);
  }
}

uint64_t FigVideoQueueUtilityIsProcessASecureCaptureExtension(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v5 = 0;
  v3 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E69C75D0] handleForIdentifier:objc_msgSend(MEMORY[0x1E696AD98] error:{"numberWithInt:", a1), &v5), "bundle"), "extensionPointIdentifier"), "isEqualToString:", @"com.apple.securecapture"}];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t FigVideoQueueCreateLocalWithOptions(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FPSupport_CheckPlayerPerformanceTrace();
  FigVideoQueueGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    return v4;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17790)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 8) = v7;
  if (!v7)
  {
    FigVideoQueueCreateLocalWithOptions_cold_13(&v33);
    return LODWORD(v33.value);
  }

  *(DerivedStorage + 856) = 0;
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(0, (DerivedStorage + 856), 32, 0x600u);
  }

  v8 = FigReentrantMutexCreate();
  *(DerivedStorage + 424) = v8;
  if (!v8)
  {
    FigVideoQueueCreateLocalWithOptions_cold_12(&v33);
    return LODWORD(v33.value);
  }

  CMTimeMake(&v33, 1, 1);
  *(DerivedStorage + 432) = v33;
  CMTimeMake(&v33, 2, 1);
  *(DerivedStorage + 456) = v33;
  *(DerivedStorage + 480) = 0;
  *(DerivedStorage + 504) = 0;
  *(DerivedStorage + 512) = 0;
  *(DerivedStorage + 520) = 6000000000;
  *(DerivedStorage + 417) = 0;
  *(DerivedStorage + 536) = dispatch_queue_create("com.apple.coremedia.videoqueue.notification", 0);
  *(DerivedStorage + 544) = dispatch_queue_create("com.apple.coremedia.videoqueue.cryptor", 0);
  v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v9)
  {
    FigVideoQueueCreateLocalWithOptions_cold_11(&v33);
    return LODWORD(v33.value);
  }

  v10 = v9;
  v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(DerivedStorage + 536));
  *(DerivedStorage + 528) = v11;
  if (!v11)
  {
    FigVideoQueueCreateLocalWithOptions_cold_10(&v33);
    return LODWORD(v33.value);
  }

  v12 = v11;
  v13 = dispatch_time(0, *(DerivedStorage + 520));
  dispatch_source_set_timer(v12, v13, *(DerivedStorage + 520), 0);
  dispatch_set_context(*(DerivedStorage + 528), v10);
  dispatch_source_set_event_handler_f(*(DerivedStorage + 528), FigVideoQueueGMStats);
  dispatch_source_set_cancel_handler_f(*(DerivedStorage + 528), vq_handleGMStatsTimerCancellation);
  dispatch_activate(*(DerivedStorage + 528));
  *(DerivedStorage + 239) = 1;
  v14 = FigSimpleMutexCreate();
  *(DerivedStorage + 240) = v14;
  if (!v14)
  {
    FigVideoQueueCreateLocalWithOptions_cold_9(&v33);
    return LODWORD(v33.value);
  }

  v15 = FigSimpleMutexCreate();
  *(DerivedStorage + 632) = v15;
  if (!v15)
  {
    FigVideoQueueCreateLocalWithOptions_cold_8(&v33);
    return LODWORD(v33.value);
  }

  *(DerivedStorage + 649) = 1;
  v16 = FigSimpleMutexCreate();
  *(DerivedStorage + 304) = v16;
  if (!v16)
  {
    FigVideoQueueCreateLocalWithOptions_cold_7(&v33);
    return LODWORD(v33.value);
  }

  v17 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 296) = Mutable;
  if (!Mutable)
  {
    FigVideoQueueCreateLocalWithOptions_cold_6(&v33);
    return LODWORD(v33.value);
  }

  *(DerivedStorage + 328) = 0;
  v19 = CFArrayCreateMutable(v17, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 336) = v19;
  if (!v19)
  {
    FigVideoQueueCreateLocalWithOptions_cold_5(&v33);
    return LODWORD(v33.value);
  }

  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  AdoptedVoucherProcessIDAndUUIDString = FigDebugGetAdoptedVoucherProcessIDAndUUIDString();
  *(DerivedStorage + 644) = -1;
  if (AdoptedVoucherProcessIDAndUUIDString <= 0)
  {
    AdoptedVoucherProcessIDAndUUIDString = getpid();
  }

  *(DerivedStorage + 640) = AdoptedVoucherProcessIDAndUUIDString;
  v21 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 592) = v21;
  if (!v21)
  {
    FigVideoQueueCreateLocalWithOptions_cold_4(&v33);
    return LODWORD(v33.value);
  }

  *(DerivedStorage + 600) = 1;
  *(DerivedStorage + 616) = 0;
  v22 = CFUUIDCreate(v17);
  *(DerivedStorage + 576) = CFUUIDCreateString(v17, v22);
  if (v22)
  {
    CFRelease(v22);
  }

  CMTimeMakeWithSeconds(&v33, 1.0, 1000);
  *(DerivedStorage + 772) = v33;
  CMTimeMakeWithSeconds(&v33, 1.0, 1000);
  *(DerivedStorage + 820) = v33;
  v33.value = 0;
  v30 = 0;
  v23 = CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  v25 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%s", v23 + 856);
  if (*(v23 + 720))
  {
    FigVideoQueueCreateLocalWithOptions_cold_1();
  }

  else if (!FigPlayerResourceArbiterGetGlobalSingleton(&v33))
  {
    v26 = CMBaseObjectGetDerivedStorage();
    if (*(v26 + 712))
    {
      goto LABEL_25;
    }

    if (!*v26)
    {
      FigVideoQueueCreateLocalWithOptions_cold_3(0, (v26 + 712));
      goto LABEL_25;
    }

    if (FigVideoQueueCreateLocalWithOptions_cold_2())
    {
LABEL_25:
      if (!FigPlayerResourceArbiterRegisterConsumer(v33.value, *(v23 + 672), *(v23 + 712), v25, 0, &v30))
      {
        *(v23 + 720) = v30;
      }
    }
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (dword_1EAF17790)
  {
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v28 = 0;
  *a3 = 0;
  return v28;
}

void FigVideoQueueGMStats()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (dword_1EAF17790)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(DerivedStorage + 504) = 0;
    *(DerivedStorage + 512) = 0;
    CFRelease(v1);
  }
}

void vq_handleGMStatsTimerCancellation(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t vq_Invalidate(const void *a1)
{
  block[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigAtomicCompareAndSwap32())
  {
    if (dword_1EAF17790)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = *(DerivedStorage + 496);
    if (v4)
    {
      CMBufferQueueRemoveTrigger(*(DerivedStorage + 384), v4);
      *(DerivedStorage + 496) = 0;
    }

    v5 = *(DerivedStorage + 488);
    if (v5)
    {
      CMBufferQueueRemoveTrigger(*(DerivedStorage + 384), v5);
      *(DerivedStorage + 488) = 0;
    }

    v6 = *(DerivedStorage + 528);
    if (v6)
    {
      dispatch_source_cancel(v6);
      v7 = *(DerivedStorage + 528);
      if (v7)
      {
        dispatch_release(v7);
        *(DerivedStorage + 528) = 0;
      }
    }

    v8 = *(DerivedStorage + 536);
    if (v8 && v8 != dispatch_get_current_queue())
    {
      dispatch_sync(v8, &__block_literal_global_96);
    }

    v9 = CMBaseObjectGetDerivedStorage();
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    if (v9[47])
    {
      FigNotificationCenterRemoveWeakListener();
      FigNotificationCenterRemoveWeakListener();
      FigNotificationCenterRemoveWeakListener();
      FigNotificationCenterRemoveWeakListener();
      FigNotificationCenterRemoveWeakListener();
      FigNotificationCenterRemoveWeakListener();
    }

    v11 = v9[68];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __vq_removeListeners_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = v9;
    block[5] = DefaultLocalCenter;
    block[6] = a1;
    dispatch_sync(v11, block);
    FigStopForwardingMediaServicesProcessDeathNotification();
    vq_removeTimebaseListeners();
    v12 = *(DerivedStorage + 544);
    if (v12 && v12 != dispatch_get_current_queue())
    {
      dispatch_sync(v12, &__block_literal_global_17_0);
    }

    v13 = *(DerivedStorage + 376);
    if (v13)
    {
      FigBaseObject = FigRenderPipelineGetFigBaseObject(v13);
      if (FigBaseObject)
      {
        v15 = FigBaseObject;
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v16)
        {
          v16(v15);
        }
      }
    }

    v17 = *(DerivedStorage + 384);
    if (v17)
    {
      CMBufferQueueReset(v17);
    }

    if (*(DerivedStorage + 48))
    {
      CAImageQueueFlush();
    }

    for (i = 0; ; ++i)
    {
      Count = *(DerivedStorage + 280);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 280), i);
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v21)
      {
        v21(ValueAtIndex);
      }
    }

    FigSimpleMutexLock();
    for (j = 0; ; ++j)
    {
      v23 = *(DerivedStorage + 296);
      if (v23)
      {
        v23 = CFArrayGetCount(v23);
      }

      if (j >= v23)
      {
        break;
      }

      v24 = CFArrayGetValueAtIndex(*(DerivedStorage + 296), j);
      if (CFArrayGetCount(v24[3]) >= 1)
      {
        v25 = 0;
        do
        {
          block[0] = 0;
          VideoTargetInfoCopyCAImageQueueAtIndex(v24, v25, block);
          if (block[0])
          {
            CAImageQueueFlush();
            CFRelease(block[0]);
          }

          ++v25;
        }

        while (v25 < CFArrayGetCount(v24[3]));
      }
    }

    block[0] = 0;
    v26 = *(CMBaseObjectGetDerivedStorage() + 288);
    v27 = CFGetAllocator(a1);
    if (!FigDataChannelConfigurationCreate(v27, 0, block))
    {
      v28 = 0;
      if (!v26)
      {
        goto LABEL_47;
      }

LABEL_46:
      for (k = CFArrayGetCount(v26); v28 < k; k = 0)
      {
        v30 = CFArrayGetValueAtIndex(v26, v28);
        v31 = block[0];
        v32 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v32)
        {
          v32(v30, v31);
        }

        ++v28;
        if (v26)
        {
          goto LABEL_46;
        }

LABEL_47:
        ;
      }
    }

    if (block[0])
    {
      CFRelease(block[0]);
    }

    FigCFArrayRemoveAllValues();
    FigCFArrayRemoveAllValues();
    FigSimpleMutexUnlock();
    v33 = *(DerivedStorage + 256);
    if (v33)
    {
      FigSyncMomentSourceDestroy(v33);
      *(DerivedStorage + 256) = 0;
    }

    FigSimpleMutexLock();
    v34 = *(DerivedStorage + 248);
    if (v34)
    {
      CFRelease(v34);
      *(DerivedStorage + 248) = 0;
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    v35 = *(DerivedStorage + 624);
    if (v35)
    {
      CFRelease(v35);
      *(DerivedStorage + 624) = 0;
    }

    FigSimpleMutexUnlock();
    v36 = *(DerivedStorage + 664);
    if (v36)
    {
      CFRelease(v36);
      *(DerivedStorage + 664) = 0;
    }

    v37 = *(DerivedStorage + 672);
    if (v37)
    {
      CFRelease(v37);
      *(DerivedStorage + 672) = 0;
    }

    v38 = *(DerivedStorage + 576);
    if (v38)
    {
      CFRelease(v38);
      *(DerivedStorage + 576) = 0;
    }

    block[0] = 0;
    v39 = CMBaseObjectGetDerivedStorage();
    if (*(v39 + 720))
    {
      v40 = v39;
      if (!FigPlayerResourceArbiterGetGlobalSingleton(block))
      {
        FigPlayerResourceArbiterUnregisterConsumer(block[0], *(v40 + 720));
        *(v40 + 720) = 0;
        v41 = CMBaseObjectGetDerivedStorage();
        *(v41 + 848) = 0;
        *(v41 + 744) = 0;
        v42 = MEMORY[0x1E6960C70];
        v43 = *MEMORY[0x1E6960C70];
        *(v41 + 748) = *MEMORY[0x1E6960C70];
        v44 = *(v42 + 16);
        *(v41 + 764) = v44;
        *(v41 + 796) = v43;
        *(v41 + 812) = v44;
        *(v41 + 844) = 0;
        *(v41 + 728) = *MEMORY[0x1E695F060];
      }
    }

    v45 = *(DerivedStorage + 712);
    if (v45)
    {
      CFRelease(v45);
      *(DerivedStorage + 712) = 0;
    }
  }

  return 0;
}

__CFString *vq_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVideoQueue %p retainCount: %ld%s allocator: %p, ", a1, v5, v6, v7);
  CFStringAppendFormat(Mutable, 0, @"videoRenderPipeline %@\n", *(DerivedStorage + 376));
  CFStringAppendFormat(Mutable, 0, @"Layer Image Queue %@, CAImageQueue %@\n", *(DerivedStorage + 56), *(DerivedStorage + 48));
  CFStringAppendFormat(Mutable, 0, @"VisualContextArray %@, ImageQueueArray %@\n", *(DerivedStorage + 264), *(DerivedStorage + 280));
  for (i = 0; ; ++i)
  {
    Count = *(DerivedStorage + 288);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 288), i);
    v11 = CFArrayGetValueAtIndex(*(DerivedStorage + 296), i);
    CFStringAppendFormat(Mutable, 0, @"VideoTarget %@, ImageQueues %@\n", ValueAtIndex, v11[3]);
  }

  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t vq_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CVPixelBufferRef *a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    if (CFEqual(a2, @"VideoQueue_CAContextID"))
    {
      if (*(DerivedStorage + 64))
      {
        v10 = objc_autoreleasePoolPush();
        valuePtr = [*(DerivedStorage + 64) contextId];
        objc_autoreleasePoolPop(v10);
        *a4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        if (dword_1EAF17790)
        {
          v36 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_24;
      }

      goto LABEL_10;
    }

    if (CFEqual(a2, @"VisualContextArray"))
    {
      SInt32 = *(DerivedStorage + 264);
      if (SInt32)
      {
        goto LABEL_22;
      }
    }

    else if (CFEqual(a2, @"VisualContextArrayOptions"))
    {
      SInt32 = *(DerivedStorage + 272);
      if (SInt32)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (!CFEqual(a2, @"VideoTargetArray"))
      {
        if (CFEqual(a2, @"ShouldWaitForVideoTarget"))
        {
          v14 = MEMORY[0x1E695E4D0];
          if (!*(DerivedStorage + 328))
          {
            v14 = MEMORY[0x1E695E4C0];
          }

          SInt32 = *v14;
          if (!*v14)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        if (CFEqual(a2, @"CurrentDisplayedVideoFrameRate"))
        {
          v16 = *(DerivedStorage + 376);
          if (v16)
          {
            FigBaseObject = FigRenderPipelineGetFigBaseObject(v16);
            v13 = CMBaseObjectCopyProperty(FigBaseObject, @"CurrentVideoFrameRate", a3, a4);
            goto LABEL_11;
          }
        }

        else
        {
          if (!CFEqual(a2, @"PerformanceDictionary"))
          {
            if (CFEqual(a2, @"VideoQueue_ControlTimebase"))
            {
              SInt32 = *(DerivedStorage + 568);
              if (!SInt32)
              {
                goto LABEL_23;
              }

              goto LABEL_22;
            }

            if (CFEqual(a2, @"VideoQueue_SupportsRotation"))
            {
              SInt32 = CFRetain(*MEMORY[0x1E695E4D0]);
              goto LABEL_23;
            }

            if (CFEqual(a2, @"ExternalProtectionStatus"))
            {
              v21 = *(DerivedStorage + 544);
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __vq_CopyProperty_block_invoke;
              block[3] = &unk_1E748B8C8;
              block[4] = &v38;
              block[5] = DerivedStorage;
              block[6] = a4;
              block[7] = a3;
              dispatch_sync(v21, block);
              goto LABEL_24;
            }

            if (CFEqual(a2, @"ForceFullPowerDecode"))
            {
              v22 = MEMORY[0x1E695E4D0];
              if (!*(DerivedStorage + 416))
              {
                v22 = MEMORY[0x1E695E4C0];
              }

              SInt32 = *v22;
              if (!*v22)
              {
                goto LABEL_23;
              }

              goto LABEL_22;
            }

            if (CFEqual(a2, @"PreventsCapture"))
            {
              v23 = MEMORY[0x1E695E4D0];
              if (!*(DerivedStorage + 353))
              {
                v23 = MEMORY[0x1E695E4C0];
              }

              SInt32 = *v23;
              if (!*v23)
              {
                goto LABEL_23;
              }

              goto LABEL_22;
            }

            if (CFEqual(a2, @"ToneMapToStandardDynamicRange"))
            {
              v24 = MEMORY[0x1E695E4D0];
              if (!*(DerivedStorage + 236))
              {
                v24 = MEMORY[0x1E695E4C0];
              }

              SInt32 = *v24;
              if (!*v24)
              {
                goto LABEL_23;
              }

              goto LABEL_22;
            }

            if (CFEqual(a2, @"CurrentlyDisplayedCVPixelBuffer"))
            {
              v25 = *(DerivedStorage + 48);
              if (v25)
              {
                v13 = FigVideoQueue_CopyCurrentlyDisplayedPixelBufferFromCAImageQueue(v25, a3, a4);
                goto LABEL_11;
              }

              *a4 = 0;
              v27 = v39;
              v28 = -12080;
            }

            else
            {
              if (CFEqual(a2, @"DisallowVideoLayerDisplayCompositing"))
              {
                v26 = MEMORY[0x1E695E4D0];
                if (!*(DerivedStorage + 238))
                {
                  v26 = MEMORY[0x1E695E4C0];
                }

                SInt32 = *v26;
                if (!*v26)
                {
                  goto LABEL_23;
                }

                goto LABEL_22;
              }

              if (CFEqual(a2, @"IsImageQueueBeingServiced"))
              {
                isImageQueueBeingServiced = vq_isImageQueueBeingServiced();
                v30 = MEMORY[0x1E695E4D0];
                if (!isImageQueueBeingServiced)
                {
                  v30 = MEMORY[0x1E695E4C0];
                }

                SInt32 = *v30;
                if (!*v30)
                {
                  goto LABEL_23;
                }

                goto LABEL_22;
              }

              if (CFEqual(a2, @"IsImageQueueAsync"))
              {
                if (!*(DerivedStorage + 48))
                {
                  goto LABEL_24;
                }

                Flags = CAImageQueueGetFlags();
                v32 = MEMORY[0x1E695E4D0];
                if ((Flags & 1) == 0)
                {
                  v32 = MEMORY[0x1E695E4C0];
                }

                SInt32 = *v32;
                if (!*v32)
                {
                  goto LABEL_23;
                }

                goto LABEL_22;
              }

              if (CFEqual(a2, @"CompensateForDisplayLatency"))
              {
                v33 = MEMORY[0x1E695E4C0];
                if (*(DerivedStorage + 239))
                {
                  v33 = MEMORY[0x1E695E4D0];
                }

                SInt32 = CFRetain(*v33);
                goto LABEL_23;
              }

              if (CFEqual(a2, @"ResponsibleProcessID"))
              {
                SInt32 = FigCFNumberCreateSInt32();
                goto LABEL_23;
              }

              v27 = v39;
              v28 = -12082;
            }

            *(v27 + 6) = v28;
            goto LABEL_24;
          }

          if (*(DerivedStorage + 376))
          {
            cf[0] = 0;
            v18 = vq_copyPerformanceDictionary(a1, a3, cf);
            *(v39 + 6) = v18;
            v19 = cf[0];
            if (!v18)
            {
              if (cf[0])
              {
                v20 = CFRetain(cf[0]);
              }

              else
              {
                v20 = 0;
              }

              *a4 = v20;
            }

            if (v19)
            {
              CFRelease(v19);
            }

            goto LABEL_24;
          }
        }

LABEL_10:
        v13 = FigSignalErrorAtGM();
LABEL_11:
        *(v39 + 6) = v13;
LABEL_24:
        v9 = *(v39 + 6);
        goto LABEL_25;
      }

      SInt32 = *(DerivedStorage + 288);
      if (SInt32)
      {
LABEL_22:
        SInt32 = CFRetain(SInt32);
      }
    }

LABEL_23:
    *a4 = SInt32;
    goto LABEL_24;
  }

  v9 = FigSignalErrorAtGM();
LABEL_25:
  _Block_object_dispose(&v38, 8);
  return v9;
}

void sub_1967858C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t vq_removeTimebaseListeners()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CMNotificationCenterGetDefaultLocalCenter();
  if (*(DerivedStorage + 568))
  {

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

uint64_t VideoTargetInfoCopyCAImageQueueAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = FigCFArrayGetValueAtIndex();
  if (result)
  {
    FigBaseObject = FigImageQueueGetFigBaseObject(result);
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 8);
    result = VTable + 8;
    v8 = *(v7 + 48);
    if (v8)
    {
      v9 = *MEMORY[0x1E695E480];

      return v8(FigBaseObject, @"CAImageQueue", v9, a3);
    }
  }

  return result;
}

_DWORD *vq_ImageReleased()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

_DWORD *vq_DecodeError()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

_DWORD *vq_sBufConsumed()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    return FigCFDictionaryGetBooleanIfPresent();
  }

  return result;
}

_DWORD *vq_completedDecodeForPreroll()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

_DWORD *vq_lostDecoderState()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

_DWORD *vq_firstVideoFrameEnqueued()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

uint64_t __vq_removeListeners_block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 392))
  {
    v1 = result;
    FigNotificationCenterRemoveWeakListener();
    FigNotificationCenterRemoveWeakListener();
    v2 = *(*(v1 + 32) + 392);
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 8);
    result = VTable + 8;
    v4 = v5;
    if (*v5 >= 2uLL)
    {
      v6 = v4[8];
      if (v6)
      {

        return v6(v2);
      }
    }
  }

  return result;
}

_DWORD *vq_ExternalProtectionStatusChanged()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

void vq_ReadyToDecryptChanged()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    v2 = *(DerivedStorage + 392);
    if (v2)
    {
      cf = 0;
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v3 || v3(v2, *MEMORY[0x1E6961118], *MEMORY[0x1E695E480], &cf))
      {
        goto LABEL_16;
      }

      v6 = cf;
      v7 = *MEMORY[0x1E695E4D0];
      if (cf)
      {
        CFRelease(cf);
      }

      if (v6 == v7)
      {
LABEL_16:
        if (*(v1 + 561))
        {
          FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v1 + 376));
          v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v5)
          {
            v5(FigBaseObject, @"Suspended", *MEMORY[0x1E695E4C0]);
          }

          *(v1 + 561) = 0;
        }
      }
    }
  }
}

void vq_updateForCurrentTimebaseRate(const void *a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    Rate = CMTimebaseGetRate(*(DerivedStorage + 568));
    v6 = Rate != 0.0 || *(v3 + 568) == 0;
    if (dword_1EAF17790)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (Rate == 0.0)
    {
      if (FPSupport_IsPlayerPerformanceTraceEnabled() && *(v3 + 376))
      {
        cf[0] = 0;
        v8 = CFGetAllocator(a1);
        v9 = vq_copyPerformanceDictionary(a1, v8, cf);
        v10 = cf[0];
        if (!v9)
        {
          FPSupport_TracePlayerPerformanceDictionary("VideoQueue", cf[0]);
        }

        if (v10)
        {
          CFRelease(v10);
        }
      }

      v11 = CMBaseObjectGetDerivedStorage();
      if (*(v11 + 584) >= 1)
      {
        if (*(v11 + 576))
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (Mutable)
          {
            v13 = Mutable;
            mach_absolute_time();
            FigHostTimeToNanoseconds();
            FigCFDictionarySetValue();
            FigCFDictionarySetInt32();
            FigCFDictionarySetValue();
            FigLogPowerEvent();
            CFRelease(v13);
          }
        }
      }
    }

    v14 = *(v3 + 56);
    if (v14)
    {
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v15)
      {
        v15(v14, v6);
      }

      v16 = *(v3 + 56);
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v17)
      {
        v17(v16, Rate);
      }
    }

    else if (*(v3 + 48))
    {
      CAImageQueueSetFlags();
    }

    for (i = 0; ; ++i)
    {
      Count = *(v3 + 280);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 280), i);
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v21)
      {
        v21(ValueAtIndex, v6);
      }

      v22 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v22)
      {
        v22(ValueAtIndex, Rate);
      }
    }

    FigSimpleMutexLock();
    for (j = 0; ; ++j)
    {
      v24 = *(v3 + 296);
      if (v24)
      {
        v24 = CFArrayGetCount(v24);
      }

      if (j >= v24)
      {
        break;
      }

      v25 = CFArrayGetValueAtIndex(*(v3 + 296), j);
      if (CFArrayGetCount(v25[3]) >= 1)
      {
        v26 = 0;
        do
        {
          cf[0] = 0;
          VideoTargetInfoCopyFigImageQueueAtIndex(v25, v26, cf);
          v27 = cf[0];
          v28 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (v28)
          {
            v28(v27, v6);
          }

          v29 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v29)
          {
            v29(v27, Rate);
          }

          if (v27)
          {
            CFRelease(v27);
          }

          ++v26;
        }

        while (v26 < CFArrayGetCount(v25[3]));
      }
    }

    FigSimpleMutexUnlock();
    vq_updateVideoPlaybackAssertion(a1);
    if (*(v3 + 848) != Rate)
    {
      *(v3 + 848) = Rate;
      vq_reportResourceUsageStatsToGlobalResourceArbiter();
    }
  }
}

uint64_t vq_copyPerformanceDictionary(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigBaseObject = FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 376));
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = v7(FigBaseObject, @"PerformanceDictionary", a2, &cf);
  v9 = cf;
  if (v8)
  {
    MutableCopy = 0;
    if (!cf)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v9 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v9);
  }

LABEL_5:
  if (!MutableCopy)
  {
    if (v8)
    {
      return v8;
    }

LABEL_13:
    v8 = 0;
    *a3 = MutableCopy;
    return v8;
  }

  v11 = FigCFDictionarySetInt64();
  if (!v11)
  {
    goto LABEL_13;
  }

  v8 = v11;
  CFRelease(MutableCopy);
  return v8;
}

const void *VideoTargetInfoCopyFigImageQueueAtIndex(uint64_t a1, uint64_t a2, void *a3)
{
  result = FigCFArrayGetValueAtIndex();
  if (result)
  {
    result = CFRetain(result);
  }

  *a3 = result;
  return result;
}

void vq_updateVideoPlaybackAssertion(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    vq_updateVideoPlaybackAssertion_cold_1();
  }

  else
  {
    v3 = DerivedStorage;
    if (a1)
    {
      CFRetain(a1);
    }

    v4 = *(v3 + 74);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __vq_updateVideoPlaybackAssertion_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = v3;
    v5[5] = a1;
    dispatch_async(v4, v5);
  }
}

void __vq_updateVideoPlaybackAssertion_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (!*(v3 + 600) || *v3 || (Rate = CMTimebaseGetRate(*(v3 + 568)), v3 = *(a1 + 32), Rate == 0.0))
  {
    v5 = *(v3 + 608);
    if (v5)
    {
      CFRelease(v5);
      *(*(a1 + 32) + 608) = 0;
    }
  }

  else if (!*(v3 + 608))
  {
    SInt32 = FigCFNumberGetSInt32();
    if (!SInt32)
    {
      SInt32 = getpid();
    }

    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v9 = *(a1 + 32);
    if ((UpTimeNanoseconds - v9[77]) >= 0x3B9ACA01)
    {
      v10 = UpTimeNanoseconds;
      FigSFBSKeepForegroundAssertionCreate(*MEMORY[0x1E695E480], v9[84], SInt32, v9 + 76);
      if (!*(*(a1 + 32) + 608))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        *(*(a1 + 32) + 616) = v10;
      }
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  objc_autoreleasePoolPop(v2);
}

BOOL vq_isImageQueueBeingServiced()
{
  CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 64))
  {
    return 1;
  }

  CAImageQueueGetLastUpdateHostTime();
  mach_absolute_time();
  return FigHostTimeToNanoseconds() < 0x2540BE401;
}

void vq_setupVideoLayer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = objc_autoreleasePoolPush();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  *(DerivedStorage + 48) = CAImageQueueCreate();
  CAImageQueueSetFlags();
  CAImageQueueSetFlags();
  CAImageQueueSetFlags();
  v2 = objc_alloc_init(FigBaseCALayer);
  *(DerivedStorage + 16) = v2;
  [(FigBaseCALayer *)v2 enableDRMFallback];
  [*(DerivedStorage + 16) setName:@"internal-videolayer"];
  [*(DerivedStorage + 16) setContents:*(DerivedStorage + 48)];
  [*(DerivedStorage + 16) setContentsGravity:*MEMORY[0x1E6979DE8]];
  [*(DerivedStorage + 16) setEdgeAntialiasingMask:0];
  [*(DerivedStorage + 16) setAllowsDisplayCompositing:*(DerivedStorage + 238) == 0];
  v3 = objc_alloc_init(MEMORY[0x1E6979398]);
  *(DerivedStorage + 24) = v3;
  [v3 setName:@"internal-maskinglayer"];
  [*(DerivedStorage + 24) setFillMode:*MEMORY[0x1E69797E0]];
  [*(DerivedStorage + 24) addSublayer:*(DerivedStorage + 16)];
  [*(DerivedStorage + 16) setAnchorPoint:{0.0, 0.0}];
  [*(DerivedStorage + 16) setPosition:{0.0, 0.0}];
  [MEMORY[0x1E6979518] commit];
  if (dword_1EAF17790)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_autoreleasePoolPop(v1);
}

void vq_updateImageQueueProtection()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v2 = *MEMORY[0x1E695E4C0];
  v14 = *MEMORY[0x1E695E4C0];
  v3 = *(DerivedStorage + 392);
  if (v3 && !*(DerivedStorage + 352))
  {
    *(DerivedStorage + 352) = 1;
    *(DerivedStorage + 354) = 0;
  }

  if (!*(DerivedStorage + 354))
  {
    v4 = MEMORY[0x1E695E4D0];
    if (v3)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v5)
      {
        v6 = v5(v3, *MEMORY[0x1E69610B8], *MEMORY[0x1E695E480], &v14) == 0;
      }

      else
      {
        v6 = 0;
      }

      if (!*(v1 + 48) || (CAImageQueueSetFlags(), !v6))
      {
LABEL_17:
        FigSimpleMutexLock();
        v7 = 0;
        v8 = *v4;
        while (1)
        {
          Count = *(v1 + 296);
          if (Count)
          {
            Count = CFArrayGetCount(Count);
          }

          if (v7 >= Count)
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 296), v7);
          if (CFArrayGetCount(ValueAtIndex[3]) >= 1)
          {
            v11 = 0;
            do
            {
              cf = 0;
              VideoTargetInfoCopyCAImageQueueAtIndex(ValueAtIndex, v11, &cf);
              if (cf)
              {
                CAImageQueueSetFlags();
                if (v14 == v8 && v6)
                {
                  CAImageQueueSetFlags();
                }

                CFRelease(cf);
              }

              ++v11;
            }

            while (v11 < CFArrayGetCount(ValueAtIndex[3]));
          }

          ++v7;
        }

        FigSimpleMutexUnlock();
        if (v14)
        {
          CFRelease(v14);
        }

        return;
      }

      v2 = v14;
    }

    else
    {
      if (!*(DerivedStorage + 48))
      {
LABEL_16:
        v6 = 1;
        goto LABEL_17;
      }

      CAImageQueueSetFlags();
    }

    if (v2 == *v4)
    {
      CAImageQueueSetFlags();
    }

    goto LABEL_16;
  }
}