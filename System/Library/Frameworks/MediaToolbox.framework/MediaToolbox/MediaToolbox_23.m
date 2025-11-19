uint64_t FigPlaybackGetActionAtEndForString(const void *a1)
{
  if (CFEqual(a1, @"Stop"))
  {
    return 1;
  }

  if (CFEqual(a1, @"Advance"))
  {
    return 0;
  }

  if (CFEqual(a1, @"None"))
  {
    return 2;
  }

  if (CFEqual(a1, @"StopAtEndOfQueue"))
  {
    return 3;
  }

  return 0;
}

uint64_t FigPlaybackGetEffectiveActionAtEnd(uint64_t result, uint64_t a2)
{
  v2 = a2 < 2;
  if (result != 3)
  {
    v2 = 0;
  }

  if (result >= 3)
  {
    return v2;
  }

  else
  {
    return result;
  }
}

uint64_t FigPlayerReevaluateRouteConfigurationForReason(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    Mutable = CFStringCreateMutableCopy(v5, 0, Value);
  }

  else
  {
    Mutable = CFStringCreateMutable(v5, 0);
  }

  v9 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"%@", a3);
  }

  FigCFDictionarySetValue();
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v10)
  {
    v11 = 4294954514;
    if (!MutableCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = v10(a1, MutableCopy);
  if (MutableCopy)
  {
LABEL_10:
    CFRelease(MutableCopy);
  }

LABEL_11:
  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

uint64_t FigPlaybackCoordinatorRemoteRetainCopiedPlaybackCoordinator(uint64_t a1, void *a2)
{
  if (!a1)
  {
    FigPlaybackCoordinatorRemoteRetainCopiedPlaybackCoordinator_cold_2(&v10);
    return v10;
  }

  if (!a2)
  {
    FigPlaybackCoordinatorRemoteRetainCopiedPlaybackCoordinator_cold_1(&v10);
    return v10;
  }

  v4 = FigXPCRemoteClientRetainCopiedObject();
  if (v4)
  {
    return v4;
  }

  v5 = *MEMORY[0x1E695E480];
  v10 = 0;
  FigPlaybackCoordinatorGetClassID();
  v6 = CMDerivedObjectCreate();
  if (!v6)
  {
    FigPlaybackCoordinatorGetCMBaseObject(0);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 56) = CFDictionaryCreateMutable(v5, 0, 0, 0);
    v8 = v10;
    FigPlaybackCoordinatorGetCMBaseObject(v10);
    *CMBaseObjectGetDerivedStorage() = a1;
    v6 = FigXPCRemoteClientAssociateObject();
    FigXPCRemoteClientKillServerOnTimeout();
    if (v6)
    {
      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      v6 = 0;
      *a2 = v8;
    }
  }

  return v6;
}

uint64_t FigXPCPlaybackCoordinatorClientStartAsSubclient(uint64_t a1, uint64_t a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (gCoordinatorRemoteClient)
  {
    FigXPCPlaybackCoordinatorClientStartAsSubclient_cold_1(&v6);
    return v6;
  }

  if (!a1)
  {
    FigXPCPlaybackCoordinatorClientStartAsSubclient_cold_2(&v6);
    return v6;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigXPCPlaybackCoordinatorClientStartAsSubclient_block_invoke;
  block[3] = &__block_descriptor_tmp_20;
  block[4] = a1;
  block[5] = a2;
  if (FigXPCPlaybackCoordinatorClientStartAsSubclient_onceToken == -1)
  {
    return 0;
  }

  dispatch_once(&FigXPCPlaybackCoordinatorClientStartAsSubclient_onceToken, block);
  return 0;
}

uint64_t __FigXPCPlaybackCoordinatorClientStartAsSubclient_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  gCoordinatorRemoteClient = *(result + 32);
  gHostingServerDeathNoticeName = v1;
  return result;
}

uint64_t remoteXPCPlaybackCoordinator_Finalize(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigXPCRemoteClientDisassociateObject();
  if (!FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  v3 = *(DerivedStorage + 56);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 56) = 0;
  }

  return FigXPCRelease();
}

__CFString *remoteXPCPlaybackCoordinator_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPlaybackCoordinator_RemoteXPC %p>", a1);
  return Mutable;
}

uint64_t remoteXPCPlaybackCoordinator_CopyProperty(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v2 = FigXPCSendStdCopyPropertyMessage();
  }

  else
  {
    remoteXPCPlaybackCoordinator_CopyProperty_cold_1(&v4);
    v2 = v4;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

uint64_t remoteXPCPlaybackCoordinator_SetProperty(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v2 = FigXPCSendStdSetPropertyMessage();
  }

  else
  {
    remoteXPCPlaybackCoordinator_SetProperty_cold_1(&v4);
    v2 = v4;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

uint64_t remoteXPCPlaybackCoordinator_EndSuspension(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 4294954514;
  }

  v6 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  return v4(a1, a2, &v6);
}

uint64_t __copy_assignment_8_8_t0w16_pa0_12868_16_pa0_63777_24_pa0_904_32(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_18()
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t OUTLINED_FUNCTION_7_11()
{

  return FigPlaybackCoordinatorGetCMBaseObject();
}

uint64_t FigAudioFileStreamFormatReaderCreateFromStream(const void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  FigAudioFileShouldNotUseAllowList();
  FigFormatReaderGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    return v6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  number = 0;
  qmemcpy(inPropertyData, "CRYLe3dicdcsduolfmrppsfrofnpofnitraasfcv", sizeof(inPropertyData));
  if (sRegisterFigAudioFileStreamInfoTypeOnce != -1)
  {
    FigAudioFileStreamFormatReaderCreateFromStream_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v9 = MEMORY[0x1E695E480];
  if (!Instance)
  {
    FigAudioFileStreamFormatReaderCreateFromStream_cold_4(&v25);
    v19 = v25;
    if (v25)
    {
      return v19;
    }

    goto LABEL_20;
  }

  v10 = Instance;
  *(Instance + 16) = CFRetain(a1);
  *(v10 + 328) = -1;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    v19 = 4294954514;
    goto LABEL_16;
  }

  v13 = v12(CMBaseObject, *MEMORY[0x1E695FF78], *v9, &number);
  if (v13)
  {
    goto LABEL_28;
  }

  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, (v10 + 24));
    CFRelease(number);
    AudioFileInfos = FigDetermineAudioFileTypeHintAndCreateAudioFileInfos(a1, 0, 0, 0);
    v15 = AudioFileStreamOpen(v10, AudioFileStream_FigPropertyListenerProc, AudioFileStream_FigPacketsProc, AudioFileInfos, (v10 + 48));
    if (!v15)
    {
      AudioFileStreamSetProperty(*(v10 + 48), 0x6F707470u, 0x28u, inPropertyData);
      *(v10 + 32) = FigReentrantMutexCreate();
      *(v10 + 40) = FigSimpleMutexCreate();
      *(v10 + 72) = 0x10000;
      while (1)
      {
        v13 = PushBytesThroughParser(v10);
        if (v13)
        {
          break;
        }

        if (*(v10 + 56))
        {
          v16 = *(v10 + 256);
          if (v16 >= 1 && (v17 = *(v10 + 224), v17))
          {
            v18 = v16 * v17;
          }

          else
          {
            v18 = 0x10000;
          }

          *(v10 + 72) = v18;
          *DerivedStorage = v10;
          goto LABEL_20;
        }
      }

LABEL_28:
      v19 = v13;
      goto LABEL_16;
    }

    v19 = v15;
    FigAudioFileStreamFormatReaderCreateFromStream_cold_2();
  }

  else
  {
    FigAudioFileStreamFormatReaderCreateFromStream_cold_3(&v25);
    v19 = v25;
  }

LABEL_16:
  CFRelease(v10);
  if (v19)
  {
    return v19;
  }

LABEL_20:
  v20 = *DerivedStorage;
  *inPropertyData = 0;
  FigTrackReaderGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    return v6;
  }

  v21 = CMBaseObjectGetDerivedStorage();
  if (v20)
  {
    v22 = CFRetain(v20);
  }

  else
  {
    v22 = 0;
  }

  v19 = 0;
  *v21 = v22;
  DerivedStorage[1] = *inPropertyData;
  *a4 = 0;
  return v19;
}

void FigAudioFileStreamFormatReaderFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigAudioFileStreamFormatReaderCopyDebugDescription()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = CFCopyDescription(v2);
    CFStringAppendFormat(Mutable, 0, @"\tFigAudioFileStreamFormatReader: stream<%@>", v3);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"\tFigAudioFileStreamFormatReader: stream<%@>", 0);
  }

  return Mutable;
}

uint64_t FigAudioFileStreamFormatReaderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    FigAudioFileStreamFormatReaderCopyProperty_cold_1(&v21);
    return v21;
  }

  v8 = *DerivedStorage;
  *a4 = 0;
  if (CFEqual(a2, @"Duration"))
  {
    v9 = v8;
    v10 = 0;
    v11 = 1;
    goto LABEL_9;
  }

  if (CFEqual(a2, @"NominalDuration"))
  {
    v9 = v8;
    v10 = 0;
LABEL_8:
    v11 = 0;
LABEL_9:
    if (CopyAudioFileStreamDuration(v9, v10, v11, a3, a4))
    {
      return 0;
    }

    else
    {
      return 4294954513;
    }
  }

  if (CFEqual(a2, @"EstimatedDuration"))
  {
    v9 = v8;
    v10 = 1;
    goto LABEL_8;
  }

  if (CFEqual(a2, @"Identifier"))
  {
    v14 = kFigFormatReaderIdentifier_AudioFileStream;
LABEL_21:
    GaplessInfoDictionary = *v14;
LABEL_22:
    GaplessInfoDictionary = CFRetain(GaplessInfoDictionary);
LABEL_23:
    v12 = 0;
LABEL_24:
    *a4 = GaplessInfoDictionary;
    return v12;
  }

  if (CFEqual(a2, @"SampleCursorTimeAccuracyIsExact"))
  {
    v14 = MEMORY[0x1E695E4C0];
    goto LABEL_21;
  }

  if (CFEqual(a2, @"AccurateDurationIsKnown"))
  {
    v14 = MEMORY[0x1E695E4D0];
    v15 = *(v8 + 276);
    goto LABEL_19;
  }

  if (CFEqual(a2, @"iTunesGaplessInfo"))
  {
    GaplessInfoDictionary = CreateGaplessInfoDictionary(v8);
    goto LABEL_23;
  }

  if (CFEqual(a2, @"iTunesSoundCheckVolumeNormalization"))
  {
    if (*(v8 + 408))
    {
      LODWORD(v21) = 0;
      ioPropertyDataSize = 4;
      if (!AudioFormatGetProperty(0x73636462u, 8u, (v8 + 408), &ioPropertyDataSize, &v21))
      {
        GaplessInfoDictionary = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &v21);
        if (GaplessInfoDictionary)
        {
          goto LABEL_23;
        }
      }
    }

    return 4294954512;
  }

  if (CFEqual(a2, @"SoundCheckInfo"))
  {
    GaplessInfoDictionary = *(v8 + 408);
    if (!GaplessInfoDictionary)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (CFEqual(a2, @"LyricsScanCompleted"))
  {
    v14 = MEMORY[0x1E695E4D0];
    v15 = *(v8 + 320);
LABEL_19:
    if (!v15)
    {
      v14 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_21;
  }

  if (CFEqual(a2, @"Lyrics"))
  {
    GaplessInfoDictionary = *(v8 + 312);
    if (!GaplessInfoDictionary)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (CFEqual(a2, @"MetadataReaders"))
  {
    EnsureMetadataReaderCreated_0(v8, a3);
    if (!*(v8 + 336))
    {
      return 0;
    }

    Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(Mutable, *(v8 + 336));
    v12 = 0;
    *a4 = Mutable;
    return v12;
  }

  if (CFEqual(a2, @"MetadataReader") || CFEqual(a2, @"FormatSpecificMetadataReader"))
  {
    v12 = EnsureMetadataReaderCreated_0(v8, a3);
    GaplessInfoDictionary = *(v8 + 336);
    if (GaplessInfoDictionary)
    {
      GaplessInfoDictionary = CFRetain(GaplessInfoDictionary);
    }

    goto LABEL_24;
  }

  if (CFEqual(a2, @"ID3MetadataReader"))
  {
    EnsureMetadataReaderCreated_0(v8, a3);
    GaplessInfoDictionary = *(v8 + 336);
    if (!GaplessInfoDictionary)
    {
      goto LABEL_23;
    }

    if (*(v8 + 344))
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

  if (!CFEqual(a2, @"ID3MetadataReaderBC"))
  {
    if (!CFEqual(a2, @"VorbisCommentMetadataReader"))
    {
      if (CFEqual(a2, @"Chapters"))
      {
        EnsureMetadataReaderCreated_0(v8, a3);
        v19 = *(v8 + 336);
        if (!v19)
        {
          v12 = 0;
          *a4 = 0;
          return v12;
        }

        if (*(v8 + 344))
        {
          GaplessInfoDictionary = FigID3MetadataCreateChapterArrayFromTopLevelTableOfContents(a3, v19);
        }

        else
        {
          GaplessInfoDictionary = FigVorbisCommentMetadataCreateChapterArray(a3, v19);
        }

        goto LABEL_23;
      }

      return 4294954512;
    }

    EnsureMetadataReaderCreated_0(v8, a3);
    GaplessInfoDictionary = *(v8 + 336);
    if (!GaplessInfoDictionary)
    {
      goto LABEL_23;
    }

    if (*(v8 + 346))
    {
      goto LABEL_22;
    }

LABEL_66:
    GaplessInfoDictionary = 0;
    goto LABEL_23;
  }

  v21 = 0;
  v17 = *(v8 + 328);
  if (v17 < 0)
  {
    v18 = 0;
    v12 = 0;
  }

  else
  {
    v12 = FigMetadataReaderCreateForID3WithBackwardCompatibility(a3, *(v8 + 16), v17, &v21);
    v18 = v21;
  }

  *a4 = v18;
  return v12;
}

uint64_t FigAudioFileStreamFormatReaderSetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"MarkPacketOffsetFromEOF"))
  {
    return 4294954512;
  }

  CFNumberGetValue(a3, kCFNumberSInt32Type, (*DerivedStorage + 324));
  return 0;
}

uint64_t CopyAudioFileStreamDuration(uint64_t a1, int a2, int a3, const __CFAllocator *a4, CFDictionaryRef *a5)
{
  v18 = **&MEMORY[0x1E6960C70];
  GetAudioFileStreamPacketTableInfo(a1);
  if (*(a1 + 347))
  {
    v10 = *(a1 + 352);
    if (!a3)
    {
      v11 = *(a1 + 360);
      v12 = *(a1 + 364);
      if (((v11 + v12) ^ 0x7FFFFFFFFFFFFFFFLL) < v10)
      {
        CopyAudioFileStreamDuration_cold_1();
        return 0;
      }

      v10 += v12 + v11;
    }
  }

  else
  {
    if (!a2 && !*(a1 + 276))
    {
      return 0;
    }

    do
    {
      AudioFileStreamPacketAndFrameCount = GetAudioFileStreamPacketAndFrameCount(a1);
    }

    while (AudioFileStreamPacketAndFrameCount == 1836020325);
    if (AudioFileStreamPacketAndFrameCount)
    {
      return 0;
    }

    v10 = *(a1 + 296);
    if (a3)
    {
      DefaultEnhanced = FigGaplessInfoCreateDefaultEnhanced(*(a1 + 264));
      LODWORD(v17.value) = 0;
      if (FigCFDictionaryGetInt32IfPresent())
      {
        v10 = (v10 - SLODWORD(v17.value)) & ~((v10 - SLODWORD(v17.value)) >> 63);
      }

      if (DefaultEnhanced)
      {
        CFRelease(DefaultEnhanced);
      }
    }
  }

  CMTimeMake(&v18, v10, *(a1 + 252));
  v17 = v18;
  v13 = CMTimeCopyAsDictionary(&v17, a4);
  *a5 = v13;
  if (v13)
  {
    return 1;
  }

  CopyAudioFileStreamDuration_cold_2();
  return 0;
}

uint64_t GetAudioFileStreamPacketAndFrameCount(uint64_t a1)
{
  if (!*(a1 + 272))
  {
    ioPropertyDataSize = 0;
    if (*(a1 + 276))
    {
      LODWORD(v10) = 8;
      Property = AudioFileStreamGetProperty(*(a1 + 48), 0x70636E74u, &v10, (a1 + 288));
      if (Property)
      {
        return Property;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      ioPropertyDataSize = 24;
      v10 = *(a1 + 24) - *(a1 + 304);
      v3 = AudioFileStreamGetProperty(*(a1 + 48), 0x6279706Bu, &ioPropertyDataSize, &v10);
      if (v3 == 1836020325)
      {
        FigSimpleMutexLock();
        Property = PushBytesThroughParser(a1);
        FigSimpleMutexUnlock();
        if (Property)
        {
          return Property;
        }

        v4 = AudioFileStreamGetProperty(*(a1 + 48), 0x6279706Bu, &ioPropertyDataSize, &v10);
        if (v4)
        {
          return v4;
        }
      }

      else
      {
        Property = v3;
        if (v3)
        {
          return Property;
        }
      }

      *(a1 + 288) = v11;
    }

    v5 = *(a1 + 228);
    v6 = *(a1 + 288);
    if (v5)
    {
      v7 = v6 * v5;
LABEL_21:
      *(a1 + 296) = v7;
      goto LABEL_22;
    }

    if (!v6)
    {
      *(a1 + 296) = 0;
LABEL_22:
      Property = 0;
      *(a1 + 272) = 1;
      return Property;
    }

    v10 = 0;
    v4 = MapPacketNumberToFrameNumber(a1, v6 - 1, &v10);
    if (!v4)
    {
      if (v6 < 2)
      {
        v8 = 0;
      }

      else
      {
        v8 = v10 / (v6 - 1);
      }

      v7 = v8 + v10;
      goto LABEL_21;
    }

    return v4;
  }

  return 0;
}

uint64_t MapPacketNumberToFrameNumber(uint64_t a1, int64_t a2, int64_t *a3)
{
  v4 = *(a1 + 228);
  if (v4)
  {
    v5 = *(a1 + 228);
  }

  else
  {
    v5 = 1;
  }

  if ((0x7FFFFFFFFFFEA06FLL / v5) <= a2)
  {
    Property = 0;
    *a3 = 0x7FFFFFFFFFFEA06FLL;
  }

  else
  {
    if (v4)
    {
      Property = 0;
      v7 = v4 * a2;
    }

    else
    {
      outPropertyData[0] = 0;
      outPropertyData[1] = a2;
      outPropertyData[2] = 0;
      ioPropertyDataSize = 24;
      Property = AudioFileStreamGetProperty(*(a1 + 48), 0x706B6672u, &ioPropertyDataSize, outPropertyData);
      if (Property)
      {
        MapPacketNumberToFrameNumber_cold_1();
        return Property;
      }

      v7 = outPropertyData[0];
    }

    *a3 = v7;
  }

  return Property;
}

uint64_t FigAudioFileStreamFormatReaderCopyTrackByIndex(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2)
  {
    return 4294954453;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v10 = *(DerivedStorage + 8);
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    *a3 = v10;
  }

  if (a4)
  {
    *a4 = 1936684398;
  }

  result = 0;
  if (a5)
  {
    *a5 = 1;
  }

  return result;
}

uint64_t FigAudioFileStreamFormatReaderCopyTrackByID(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  if (a2 == 1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {
        v7 = CFRetain(v7);
      }

      *a3 = v7;
    }

    if (a4)
    {
      *a4 = 1936684398;
    }

    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigAudioFileStreamFormatReaderCopyTrackByType(uint64_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  result = 4294954453;
  if (!a2 && a3 == 1936684398)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a4)
    {
      v9 = *(DerivedStorage + 8);
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      *a4 = v9;
    }

    result = 0;
    if (a5)
    {
      *a5 = 1;
    }
  }

  return result;
}

void FigAudioFileStreamTrackReaderFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigAudioFileStreamTrackReaderCopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (*DerivedStorage)
  {
    v2 = *(*DerivedStorage + 16);
    if (v2)
    {
      v3 = CFCopyDescription(v2);
      CFStringAppendFormat(Mutable, 0, @"\tFigAudioFileStreamTrackReader: stream<%@> trackID %d", v3, 1);
      if (v3)
      {
        CFRelease(v3);
      }
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"\tFigAudioFileStreamTrackReader: stream<%@> trackID %d", 0, 1);
    }
  }

  return Mutable;
}

uint64_t FigAudioFileStreamTrackReaderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    FigAudioFileStreamTrackReaderCopyProperty_cold_1(&v19);
    return v19;
  }

  v8 = *DerivedStorage;
  *a4 = 0;
  if (CFEqual(a2, @"TrackFormatDescriptionArray"))
  {
    if (!*(v8 + 264))
    {
      return 0;
    }

    v9 = CFArrayCreate(a3, (v8 + 264), 1, MEMORY[0x1E695E9C0]);
    goto LABEL_12;
  }

  if (!CFEqual(a2, @"TrackTimescale"))
  {
    if (CFEqual(a2, @"TrackEnabled"))
    {
      v14 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      if (!CFEqual(a2, @"LoudnessInfo"))
      {
        if (!CFEqual(a2, @"EstimatedDataRate"))
        {
          return 4294954512;
        }

        v16 = vcvtd_n_f64_u32(*(v8 + 424), 3uLL);
        v17 = v16;
        v10 = *MEMORY[0x1E695E480];
        p_valuePtr = &v17;
        v12 = kCFNumberFloat32Type;
        goto LABEL_7;
      }

      v14 = *(v8 + 416);
      if (!v14)
      {
        v15 = 0;
        goto LABEL_13;
      }
    }

    v9 = CFRetain(v14);
    goto LABEL_12;
  }

  valuePtr = *(v8 + 252);
  v10 = *MEMORY[0x1E695E480];
  p_valuePtr = &valuePtr;
  v12 = kCFNumberSInt32Type;
LABEL_7:
  v9 = CFNumberCreate(v10, v12, p_valuePtr);
LABEL_12:
  v15 = v9;
LABEL_13:
  result = 0;
  *a4 = v15;
  return result;
}

uint64_t FigAudioFileStreamTrackReaderGetTrackInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a3)
  {
    *a3 = 1936684398;
  }

  if (a2)
  {
    *a2 = 1;
  }

  return 0;
}

uint64_t FigAudioFileStreamTrackReaderCopySampleCursorService(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigSampleCursorServiceGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    FigAudioFileStreamTrackReaderCopySampleCursorService_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (v3)
    {
      v6 = CFRetain(v3);
    }

    else
    {
      v6 = 0;
    }

    *DerivedStorage = v6;
    *a2 = 0;
  }

  return v4;
}

void FigAudioFileStreamCursorService_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigAudioFileStreamCursorService_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigFormatReader_AudioFileStream_CursorService %p>{ samplerate %d }", a1, *(*DerivedStorage + 252));
  return Mutable;
}

uint64_t createFigAudioPacketAccessor(const void *a1, void *a2)
{
  FigSampleCursorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    createFigAudioPacketAccessor_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      v6 = CFRetain(a1);
    }

    else
    {
      v6 = 0;
    }

    *DerivedStorage = v6;
    DerivedStorage[1] = 0;
    *a2 = 0;
  }

  return v4;
}

void FigAudioFileStreamCursor_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigAudioFileStreamCursor_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigFormatReader_AudioFile_SampleCursor %p>{ curPacketNum %lld }", a1, *(DerivedStorage + 8));
  return Mutable;
}

uint64_t FigAudioFileStreamCursor_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CMTimeValue *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    FigAudioFileStreamCursor_copyProperty_cold_1(&outPropertyData);
    return LODWORD(outPropertyData.value);
  }

  v9 = DerivedStorage;
  *a4 = 0;
  if (!CFEqual(a2, @"CursorPlayableThroughEndOfTrack"))
  {
    if (!CFEqual(a2, @"CursorPlayableHorizon"))
    {
      if (CFEqual(a2, @"ApproximateSampleLocation"))
      {
        v37 = CMBaseObjectGetDerivedStorage();
        v38 = *v37;
        LODWORD(v39) = *(*v37 + 228);
        if (v39 <= 1)
        {
          v39 = 1;
        }

        else
        {
          v39 = v39;
        }

        if (v37[1] >= (0x7FFFFFFFFFFEA06FLL / v39))
        {
          return 4294954454;
        }

        v40 = v37;
        if (!*(v38 + 280))
        {
          outPropertyData.value = 0;
          v58[0] = 8;
          AudioFileStreamGetProperty(*(v38 + 48), 0x646F6666u, v58, &outPropertyData);
          *(v38 + 280) = 1;
          *(v38 + 304) = *(v38 + 128) + outPropertyData.value;
        }

        v41 = *(v38 + 224);
        if (v41)
        {
          v42 = *(v38 + 304) + v40[1] * v41;
        }

        else
        {
          memset(&outPropertyData, 0, sizeof(outPropertyData));
          v58[0] = 24;
          *&outPropertyData.timescale = v40[1];
          p_outPropertyData = &outPropertyData;
          Property = AudioFileStreamGetProperty(*(v38 + 48), 0x706B6279u, v58, &outPropertyData);
          if (Property == 1836020325)
          {
            p_outPropertyData = (v38 + 88);
          }

          else
          {
            v27 = Property;
            if (Property)
            {
              return v27;
            }
          }

          v42 = *(v38 + 304) + p_outPropertyData->value;
        }

        outPropertyData.value = v42;
        value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &outPropertyData);
        goto LABEL_67;
      }

      if (!CFEqual(a2, @"SampleDependencyAttributes"))
      {
        return 4294954512;
      }

      v44 = CMBaseObjectGetDerivedStorage();
      value = 0;
      outPropertyData.value = 0;
      *v58 = 0;
      if (!*(*v44 + 400))
      {
        goto LABEL_67;
      }

      SampleDependencyInfo = figAudioFileStreamCursor_getSampleDependencyInfo(a1, v58, &v58[1]);
      if (SampleDependencyInfo)
      {
        return SampleDependencyInfo;
      }

      v27 = FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary();
      value = outPropertyData.value;
      if (!v27)
      {
        goto LABEL_67;
      }

      if (outPropertyData.value)
      {
        CFRelease(outPropertyData.value);
      }

      return v27;
    }

    memset(&v52, 0, sizeof(v52));
    memset(&outPropertyData, 0, sizeof(outPropertyData));
    v62 = 24;
    v24 = *v9;
    v23 = v9[1];
    LODWORD(v25) = *(*v9 + 228);
    if (v25 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v25;
    }

    if (v23 >= (0x7FFFFFFFFFFEA06FLL / v25))
    {
      v52 = **&MEMORY[0x1E6960CC0];
      goto LABEL_66;
    }

    v61 = 0;
    *&outPropertyData.timescale = v23;
    v26 = AudioFileStreamGetProperty(*(v24 + 48), 0x706B6279u, &v62, &outPropertyData);
    v27 = v26;
    if (v26 == 1836020325)
    {
      FigSimpleMutexLock();
      v27 = PushBytesThroughParser(v24);
      FigSimpleMutexUnlock();
      if (v27)
      {
        return v27;
      }

      v27 = AudioFileStreamGetProperty(*(v24 + 48), 0x706B6279u, &v62, &outPropertyData);
      if (v27)
      {
        return v27;
      }
    }

    else if (v26)
    {
      return v27;
    }

    v28 = *(v24 + 16);
    v29 = outPropertyData.value;
    v30 = *(v24 + 304);
    v31 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v31 && (v32 = v31(v28, v30 + v29, &v61), v32 != -12782))
    {
      v27 = v32;
      if (v32)
      {
        goto LABEL_65;
      }

      v33 = v61 + outPropertyData.value;
    }

    else
    {
      v61 = *(v24 + 24) - (outPropertyData.value + *(v24 + 304));
      v33 = v61 + outPropertyData.value;
    }

    v59 = 0;
    v60 = 0;
    *ioPropertyDataSize = 0;
    v56 = 0;
    v57 = 0;
    *v58 = v33;
    v54 = 24;
    v34 = AudioFileStreamGetProperty(*(v24 + 48), 0x6279706Bu, &v54, v58);
    v27 = v34;
    if (v34 == 1836020325)
    {
      FigSimpleMutexLock();
      v27 = PushBytesThroughParser(v24);
      FigSimpleMutexUnlock();
      if (v27)
      {
        goto LABEL_65;
      }

      v27 = AudioFileStreamGetProperty(*(v24 + 48), 0x6279706Bu, &v54, v58);
      if (v27)
      {
        goto LABEL_65;
      }
    }

    else if (v34)
    {
      goto LABEL_65;
    }

    v35 = *(v24 + 228);
    if (v35)
    {
      v27 = 0;
      v36 = (v59 - v9[1]) * v35;
    }

    else
    {
      v53 = 24;
      v56 = v59;
      v27 = AudioFileStreamGetProperty(*(v24 + 48), 0x706B6672u, &v53, ioPropertyDataSize);
      v36 = *ioPropertyDataSize;
    }

    CMTimeMake(&v52, v36, *(v24 + 252));
LABEL_65:
    if (v27)
    {
      return v27;
    }

LABEL_66:
    outPropertyData = v52;
    value = CMTimeCopyAsDictionary(&outPropertyData, a3);
    goto LABEL_67;
  }

  v10 = CMBaseObjectGetDerivedStorage();
  v11 = *v10;
  v12 = *(*v10 + 16);
  v13 = *(*v10 + 304);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v14)
  {
    return 4294954514;
  }

  *v58 = 0;
  SampleDependencyInfo = v14(v12, v13, v58);
  if (SampleDependencyInfo)
  {
    return SampleDependencyInfo;
  }

  if (*v58 + *(v11 + 304) >= *(v11 + 24))
  {
    goto LABEL_37;
  }

  v16 = v10[1];
  v17 = *(v11 + 136);
  if (v16 >= v17 && v16 < *(v11 + 152) + v17)
  {
    v18 = *(v11 + 16);
    v19 = *(v11 + 88);
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v20)
    {
      SampleDependencyInfo = v20(v18, v19, v58);
      if (SampleDependencyInfo)
      {
        return SampleDependencyInfo;
      }

      if (*v58 + *(v11 + 88) < *(v11 + 24))
      {
        v16 = v10[1];
        goto LABEL_12;
      }

LABEL_37:
      v22 = MEMORY[0x1E695E4D0];
      goto LABEL_38;
    }

    return 4294954514;
  }

LABEL_12:
  outPropertyData.value = 0;
  ioPropertyDataSize[0] = 24;
  *&outPropertyData.timescale = v16;
  outPropertyData.epoch = 0;
  v21 = AudioFileStreamGetProperty(*(v11 + 48), 0x706B6279u, ioPropertyDataSize, &outPropertyData);
  if (v21 == 1836020325)
  {
    v22 = MEMORY[0x1E695E4C0];
LABEL_38:
    value = CFRetain(*v22);
LABEL_67:
    v27 = 0;
    *a4 = value;
    return v27;
  }

  v27 = v21;
  if (!v21)
  {
    v45 = *(v11 + 16);
    v46 = outPropertyData.value;
    v47 = *(v11 + 304);
    v48 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v48)
    {
      SampleDependencyInfo = v48(v45, v47 + v46, v58);
      if (!SampleDependencyInfo)
      {
        if (*(v11 + 304) + outPropertyData.value + *v58 >= *(v11 + 24))
        {
          v22 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v22 = MEMORY[0x1E695E4C0];
        }

        goto LABEL_38;
      }

      return SampleDependencyInfo;
    }

    return 4294954514;
  }

  return v27;
}

uint64_t FillPacketRequestFromCache(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  *a4 = 0;
  *a5 = 0;
  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v9 = *(a2 + 16);
  v10 = v9 + *a2;
  v11 = v10 - *a1;
  if (v10 >= *a1 && v10 < *a1 + v5)
  {
    v15 = *(a2 + 8) - v9;
    v16 = v5 - v11;
    if (v15 >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    if (*(a1 + 56))
    {
      v18 = *(a1 + 64);
      v19 = v17 + v11 <= v18 || v18 < v11;
      v20 = !v19 && v15 < v16;
      if (v20 && v18 != v11)
      {
        v17 = v18 - v11;
        *a5 = 1;
      }
    }

    v22 = *(a1 + 32);
    if (v22)
    {
      v24 = *(a2 + 16);
      v23 = *(a2 + 24);
      v25 = (v22 + 16 * v11);
      DataLength = CMBlockBufferGetDataLength(*(a2 + 48));
      v27 = *v25;
      v28 = &v25[2 * v17];
      v29 = *(v28 - 2);
      v30 = *(v28 - 1);
      if (v17)
      {
        v31 = (v23 + 16 * v24);
        v32 = v17;
        do
        {
          v33 = *v25;
          v25 += 2;
          *v31 = v33;
          *v31++ += DataLength - v27;
          --v32;
        }

        while (v32);
      }

      if ((v27 & 0x8000000000000000) != 0)
      {
        FillPacketRequestFromCache_cold_1(&v48);
        return v48;
      }

      v34 = v29 - v27;
      if (*(a1 + 56))
      {
        v35 = *(a1 + 64);
        if (v17 + v11 > v35 && v35 >= v11)
        {
          *(a2 + 56) = 1;
          *(a2 + 64) = v35 - v11 + *(a2 + 16);
        }
      }

      v37 = *(a2 + 48);
      v38 = *(a1 + 24);
      v39 = v34 + v30;
    }

    else
    {
      v37 = *(a2 + 48);
      v38 = *(a1 + 24);
      v39 = v17 * a3;
      v27 = v11 * a3;
    }

    appended = CMBlockBufferAppendBufferReference(v37, v38, v27, v39, 0);
    v40 = *(a1 + 40);
    v41 = *(a2 + 16);
    if (v40 && v17)
    {
      v42 = (v40 + 8 * v11);
      v43 = (*(a2 + 32) + 8 * v41);
      v44 = v17;
      do
      {
        v45 = *v42++;
        *v43++ = v45;
        --v44;
      }

      while (v44);
      v41 = *(a2 + 16);
    }

    *(a2 + 16) = v41 + v17;
    *a4 = 1;
    v9 = *(a2 + 16);
  }

  else
  {
    appended = 0;
  }

  if (v9 < *(a2 + 8))
  {
    v46 = *(a1 + 24);
    if (v46)
    {
      CFRelease(v46);
    }

    *v6 = 0;
    v6[1] = 0;
    *a1 = xmmword_196E732D0;
    *(a1 + 56) = 0;
  }

  return appended;
}

uint64_t FigAudioFileStreamCursor_copy(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSampleCursorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    FigAudioFileStreamCursor_copy_cold_1();
  }

  else
  {
    v5 = CMBaseObjectGetDerivedStorage();
    *v5 = *DerivedStorage;
    v6 = *v5;
    if (v6)
    {
      CFRetain(v6);
    }

    *a2 = 0;
  }

  return v4;
}

uint64_t FigAudioFileStreamCursor_compareInDecodeOrder()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  v3 = *(v1 + 8);
  v4 = v2 < v3;
  v5 = v2 > v3;
  if (v4)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

uint64_t FigAudioFileStreamCursor_copyFormatDescription(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(*DerivedStorage + 264);
    if (v4)
    {
      v4 = CFRetain(v4);
    }

    *a2 = v4;
  }

  return 0;
}

void AudioFileStream_FigPropertyListenerProc(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 1886283374)
  {
    if (a3 > 1919316847)
    {
      if (a3 != 1919316848)
      {
        if (a3 != 1935893603)
        {
          return;
        }

        v25[0] = 8;
        v7 = *(a1 + 48);
        v8 = (a1 + 408);
        v9 = 1935893603;
        goto LABEL_34;
      }

      v25[0] = 16;
      *(a1 + 376) = 0;
      if (!AudioFileStreamGetProperty(*(a1 + 48), 0x72667370u, v25, (a1 + 384)) && !*(a1 + 347))
      {
        *(a1 + 376) = 1;
      }

      return;
    }

    if (a3 == 1886547302)
    {
      v25[0] = 4;
      *(a1 + 368) = 0;
      if (!AudioFileStreamGetProperty(*(a1 + 48), 0x70726D66u, v25, (a1 + 372)) && !*(a1 + 347))
      {
        *(a1 + 368) = 1;
      }

      return;
    }

    if (a3 != 1919247481)
    {
      if (a3 == 1886283375)
      {

        GetAudioFileStreamPacketTableInfo(a1);
      }

      return;
    }

    if (*(a1 + 56))
    {
      return;
    }

    *(a1 + 56) = 1;
    v28 = 0;
    outPropertyDataSize = 0;
    outWritable = 0;
    ioPropertyDataSize = 40;
    *v25 = 0;
    v23 = 0;
    v24 = 8;
    v22 = 4;
    Property = AudioFileStreamGetProperty(*(a1 + 48), 0x64666D74u, &ioPropertyDataSize, (a1 + 208));
    if (Property)
    {
      v20 = Property;
      AudioFileStream_FigPropertyListenerProc_cold_1();
    }

    else
    {
      outPropertyData = 0;
      v21 = 4;
      AudioFileStreamGetProperty(*(a1 + 48), 0x72726170u, &v21, &outPropertyData);
      *(a1 + 400) = outPropertyData != 0;
      v5 = AudioFileStreamGetProperty(*(a1 + 48), 0x646F6666u, &v24, v25);
      if (!v5)
      {
        if (AudioFileStreamGetProperty(*(a1 + 48), 0x706B7562u, &v22, &v23))
        {
          v6 = *(a1 + 208);
          if (*(a1 + 216) == 778924083)
          {
            v23 = (64512000.0 / v6);
          }
        }

        else
        {
          v6 = *(a1 + 208);
        }

        *(a1 + 248) = v23;
        *(a1 + 280) = 1;
        *(a1 + 304) = *(a1 + 128) + *v25;
        if (v6 <= 0.0)
        {
          AudioFileStream_FigPropertyListenerProc_cold_4(&outPropertyData);
          v14 = 0;
        }

        else
        {
          *(a1 + 252) = v6;
          v10 = *(a1 + 228);
          if (v10)
          {
            v11 = v10 - (v10 & (v6 / 2));
            if ((v10 & (v6 / 2)) == 0)
            {
              v11 = 0;
            }

            v12 = v11 + v6 / 2;
            if (v10 > v12)
            {
              v13 = 1;
            }

            else
            {
              v13 = v12 / v10;
            }

            *(a1 + 256) = v13;
          }

          v14 = 0;
          if (AudioFileStreamGetPropertyInfo(*(a1 + 48), 0x6D676963u, &outPropertyDataSize, &outWritable) || !outPropertyDataSize)
          {
            goto LABEL_56;
          }

          v14 = malloc_type_malloc(outPropertyDataSize, 0x6EDA67AFuLL);
          if (v14)
          {
            v15 = AudioFileStreamGetProperty(*(a1 + 48), 0x6D676963u, &outPropertyDataSize, v14);
            if (!v15)
            {
LABEL_56:
              PropertyInfo = AudioFileStreamGetPropertyInfo(*(a1 + 48), 0x636D6170u, &v28, &outWritable);
              v17 = 0;
              v18 = v28;
              if (!PropertyInfo && v28)
              {
                v17 = malloc_type_malloc(v28, 0x83BF7582uLL);
                v19 = AudioFileStreamGetProperty(*(a1 + 48), 0x636D6170u, &v28, v17);
                if (v19)
                {
                  v20 = v19;
                  goto LABEL_70;
                }

                v18 = v28;
              }

              v20 = CMAudioFormatDescriptionCreate(*MEMORY[0x1E695E480], (a1 + 208), v18, v17, outPropertyDataSize, v14, 0, (a1 + 264));
              if (!v20)
              {
LABEL_61:
                free(v14);
                free(v17);
                *(a1 + 64) = v20;
                return;
              }

LABEL_70:
              FigFormatDescriptionRelease();
              *(a1 + 264) = 0;
              goto LABEL_61;
            }

            v20 = v15;
LABEL_65:
            v17 = 0;
            goto LABEL_70;
          }

          AudioFileStream_FigPropertyListenerProc_cold_3(&outPropertyData);
        }

        v17 = 0;
        v20 = outPropertyData;
        goto LABEL_70;
      }

      v20 = v5;
      AudioFileStream_FigPropertyListenerProc_cold_2();
    }

    v14 = 0;
    goto LABEL_65;
  }

  if (a3 <= 1768174436)
  {
    if (a3 != 1280922179)
    {
      if (a3 != 1651663220)
      {
        return;
      }

      v25[0] = 4;
      v7 = *(a1 + 48);
      v8 = (a1 + 424);
      v9 = 1651663220;
      goto LABEL_34;
    }

    v25[0] = 8;
    if (!*(a1 + 312) && !AudioFileStreamGetProperty(*(a1 + 48), 0x4C595243u, v25, (a1 + 312)) && *(a1 + 312))
    {
      *(a1 + 320) = 1;
    }
  }

  else
  {
    if (a3 != 1768174437)
    {
      if (a3 != 1819243876)
      {
        if (a3 == 1885564532 && !*(a1 + 272))
        {
          *(a1 + 276) = 1;
        }

        return;
      }

      v25[0] = 8;
      v7 = *(a1 + 48);
      v8 = (a1 + 416);
      v9 = 1819243876;
LABEL_34:
      AudioFileStreamGetProperty(v7, v9, v25, v8);
      return;
    }

    v25[0] = 0;
    outPropertyData = 4;
    if (*(a1 + 328) == -1 && !AudioFileStreamGetProperty(*(a1 + 48), 0x69643365u, &outPropertyData, v25))
    {
      *(a1 + 328) = *(a1 + 104) + *(a1 + 88) + v25[0];
    }
  }
}

uint64_t RegisterFigAudioFileStreamInfoType()
{
  result = _CFRuntimeRegisterClass();
  sFigAudioFileStreamInfoID = result;
  return result;
}

double InitFigAudioFileStreamInfo(uint64_t a1)
{
  *(a1 + 432) = 0;
  result = 0.0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void FinalizeFigAudioFileStreamInfo(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    CFRelease(v3);
  }

  free(*(a1 + 168));
  free(*(a1 + 176));
  FigFormatDescriptionRelease();
  v4 = *(a1 + 48);
  if (v4)
  {
    AudioFileStreamClose(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  v6 = *(a1 + 312);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 408);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 416);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 336);
  if (v9)
  {

    CFRelease(v9);
  }
}

uint64_t OUTLINED_FUNCTION_2_30()
{
  *(v0 - 144) = *(v0 - 176);
  *(v0 - 128) = *(v0 - 160);
  return v0 - 144;
}

void *OUTLINED_FUNCTION_4_26(size_t a1)
{

  return malloc_type_malloc(a1, 0x10000404A09149AuLL);
}

__n128 OUTLINED_FUNCTION_5_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, unint64_t a11)
{
  result = a10;
  *v11 = a10;
  v11[1].n128_u64[0] = a11;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_19()
{
  *(v0 + 432) = 0;
  *(v0 + 376) = 0;
  return *(v0 + 48);
}

CMTime *OUTLINED_FUNCTION_8_12(int64_t a1)
{
  v4 = *(v1 + 208);

  return CMTimeMake((v2 - 176), a1, v4);
}

__n128 OUTLINED_FUNCTION_11_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __n128 a31, uint64_t a32)
{
  result = a31;
  *(v32 - 144) = a31;
  *(v32 - 128) = a32;
  return result;
}

void *OUTLINED_FUNCTION_13_7(size_t a1)
{

  return malloc_type_malloc(a1, 0x1000040451B5BE8uLL);
}

uint64_t FigDataChannelResourceServer_CreateServedState(const void *a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a1)
  {
    FigDataChannelResourceServer_CreateServedState_cold_5(v11);
LABEL_13:
    v6 = 0;
LABEL_16:
    v9 = v11[0];
    goto LABEL_9;
  }

  if (!a2)
  {
    FigDataChannelResourceServer_CreateServedState_cold_4(v11);
    goto LABEL_13;
  }

  if (!a3)
  {
    FigDataChannelResourceServer_CreateServedState_cold_3(v11);
    goto LABEL_13;
  }

  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004023CB03E4uLL);
  if (!v6)
  {
    FigDataChannelResourceServer_CreateServedState_cold_2(v11);
    goto LABEL_16;
  }

  v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v6[2] = v7;
  if (!v7)
  {
    FigDataChannelResourceServer_CreateServedState_cold_1(v11);
    goto LABEL_16;
  }

  v6[1] = CFRetain(a1);
  if (dword_1EAF16D10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = 0;
  *a3 = v6;
  v6 = 0;
LABEL_9:
  FigDataChannelResourceServer_DisposeServedState(v6);
  return v9;
}

uint64_t AssureDefaultAttributes(uint64_t a1, const __CFAllocator *a2, CMFormatDescriptionRef desc)
{
  colorComponentsOut[4] = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  displayFlagsOut = 0;
  *verticalJustificationOut = 0;
  localFontIDOut = 0;
  *italicOut = 0;
  underlineOut = 0;
  fontNameOut = 0;
  fontSizeOut = 0.0;
  v49 = 0;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v40 = 0;
  v39 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  if (!desc)
  {
    return 4294966852;
  }

  if (CMFormatDescriptionGetMediaType(desc) == 1935832172 && CMFormatDescriptionGetMediaSubType(desc) == 1937010800 || CMFormatDescriptionGetMediaType(desc) == 1668310898 || CMFormatDescriptionGetMediaType(desc) == 1952807028 && CMFormatDescriptionGetMediaSubType(desc) == 1634301044)
  {
    v7 = *(MEMORY[0x1E695F058] + 16);
    *(a1 + 8) = *MEMORY[0x1E695F058];
    *(a1 + 24) = v7;
    v8 = *(a1 + 40);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 40) = 0;
    }

    result = 0;
    *(a1 + 64) = 1;
  }

  else if (WebVTTIsFormatDescriptionForWebVTT(desc))
  {
    colorComponentsOut[0] = 0.0;
    v9 = *(MEMORY[0x1E695F058] + 16);
    *(a1 + 8) = *MEMORY[0x1E695F058];
    *(a1 + 24) = v9;
    v10 = *(a1 + 40);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 40) = 0;
    }

    *(a1 + 64) = 1;
    v11 = *(a1 + 48);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 48) = 0;
    }

    result = WebVTTCreateMetadataDictionaryFromFormatDescripton(desc, 1, colorComponentsOut);
    if (!result && *&colorComponentsOut[0])
    {
      *(a1 + 48) = colorComponentsOut[0];
    }
  }

  else
  {
    result = CMTextFormatDescriptionGetDisplayFlags(desc, &displayFlagsOut);
    if (!result)
    {
      keys = *MEMORY[0x1E69631C0];
      v12 = *MEMORY[0x1E695E480];
      values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &displayFlagsOut);
      v13 = displayFlagsOut;
      *(a1 + 65) = (displayFlagsOut & 0x80000000) != 0;
      *(a1 + 64) = (v13 & 0x20000000) != 0;
      result = CMTextFormatDescriptionGetDefaultTextBox(desc, 1u, 0.0, (a1 + 8));
      if (!result)
      {
        result = CMTextFormatDescriptionGetJustification(desc, &verticalJustificationOut[1], verticalJustificationOut);
        if (!result)
        {
          *&v42 = *MEMORY[0x1E69631C8];
          *&v33 = CFNumberCreate(v12, kCFNumberSInt8Type, &verticalJustificationOut[1]);
          *(&v42 + 1) = *MEMORY[0x1E69631D0];
          *(&v33 + 1) = CFNumberCreate(v12, kCFNumberSInt8Type, verticalJustificationOut);
          result = CMTextFormatDescriptionGetDefaultStyle(desc, &localFontIDOut, &italicOut[1], italicOut, &underlineOut, &fontSizeOut, colorComponentsOut);
          if (!result)
          {
            v14 = *MEMORY[0x1E695E4D0];
            v15 = *MEMORY[0x1E695E4C0];
            v16 = italicOut[1] ? *MEMORY[0x1E695E4D0] : *MEMORY[0x1E695E4C0];
            v17 = *MEMORY[0x1E69608A8];
            *&v43 = *MEMORY[0x1E69607D0];
            *(&v43 + 1) = v17;
            v18 = italicOut[0] ? v14 : v15;
            *&v34 = v16;
            *(&v34 + 1) = v18;
            v19 = *MEMORY[0x1E6960990];
            v20 = underlineOut ? v14 : v15;
            *&v35 = v20;
            v21 = *MEMORY[0x1E6960878];
            *&v44 = v19;
            *(&v44 + 1) = v21;
            *(&v35 + 1) = FigCreateCFArrayFromColorValues();
            *&v45 = *MEMORY[0x1E69631D8];
            *&v36 = CFNumberCreate(v12, kCFNumberCGFloatType, &fontSizeOut);
            result = CMTextFormatDescriptionGetFontName(desc, localFontIDOut, &fontNameOut);
            if (!result)
            {
              *(&v45 + 1) = *MEMORY[0x1E6960858];
              *(&v36 + 1) = CFRetain(fontNameOut);
              v22 = CFDictionaryCreate(a2, &keys, &values, 9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (v22)
              {
                *(a1 + 40) = v22;
                *a1 = FigFormatDescriptionRetain();
              }

              for (i = 0; i != 72; i += 8)
              {
                v24 = *(&values + i);
                if (v24)
                {
                  CFRelease(v24);
                }
              }

              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void FigTextSampleBufferTearDownState(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 56) = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 48) = 0;
  }
}

uint64_t FigByteFlumePostHostUnavailableNotification(uint64_t a1)
{
  FigRetainProxyGetOwner();
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  *(a1 + 16) = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  return 1;
}

uint64_t FigByteFlumePostHostAvailableNotification(uint64_t a1)
{
  FigRetainProxyGetOwner();
  if (*(a1 + 16))
  {
    return 0;
  }

  v2 = 1;
  *(a1 + 16) = 1;
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  return v2;
}

uint64_t FigByteFlumePostHostAvailableOnBetterInterfaceNotification(uint64_t a1)
{
  FigRetainProxyGetOwner();
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  return 1;
}

uint64_t FigByteFlumePostConnectionToHostLostNotification(uint64_t a1)
{
  v1 = *(a1 + 24);
  *(a1 + 18) = 1;
  if (v1)
  {
    v2 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigByteFlumeNotificationPayload_LastError, (a1 + 24), 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v2)
    {
      FigByteFlumePostConnectionToHostLostNotification_cold_1();
      return 0;
    }
  }

  else
  {
    v2 = 0;
  }

  Owner = FigRetainProxyGetOwner();
  if (Owner)
  {
    v5 = CFRetain(Owner);
  }

  else
  {
    v5 = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (v5)
  {
    CFRelease(v5);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return 1;
}

void FigByteFlumeBaseInvalidate(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (v2 == dispatch_get_current_queue() || (dispatch_sync_f(v2, 0, fbf_notificationBarrierDQFunc), (v2 = *(a1 + 8)) != 0))
    {
      dispatch_release(v2);
      *(a1 + 8) = 0;
    }
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }
}

void FigByteFlumeBaseDispose(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }
}

uint64_t CreatePlaylistFileParserFromData(OpaqueCMBlockBuffer *a1, uint64_t a2, CFMutableArrayRef **a3)
{
  if (_os_feature_enabled_impl())
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __pfp_ensureClientEstablished_block_invoke;
    block[3] = &unk_1E7480E30;
    block[4] = &v10;
    if (pfp_ensureClientEstablished_sFigManifoldRemoteClientSetupOnce != -1)
    {
      dispatch_once(&pfp_ensureClientEstablished_sFigManifoldRemoteClientSetupOnce, block);
    }

    v5 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
    if (!v5)
    {
      if (xpc_dictionary_create(0, 0, 0))
      {
        v6 = FigXPCMessageSetBlockBuffer();
        if (!v6)
        {
          v6 = FigXPCMessageSetCFString();
          if (!v6)
          {
            v6 = FigXPCRemoteClientSendSyncMessageCreatingReply();
            if (!v6)
            {
              v6 = FigXPCMessageCopyCFArray();
            }
          }
        }

        v5 = v6;
      }

      else
      {
        CreatePlaylistFileParserFromData_cold_1(block);
        v5 = LODWORD(block[0]);
      }
    }

    FigXPCRelease();
    FigXPCRelease();
    if (!v5)
    {
      v7 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
      if (v7)
      {
        v5 = 0;
        *v7 = 0;
        *a3 = v7;
      }

      else
      {
        CreatePlaylistFileParserFromData_cold_2(block);
        return LODWORD(block[0]);
      }
    }

    return v5;
  }

  else
  {

    return CreatePlaylistFileParserFromDataInProcess(a1, a3);
  }
}

uint64_t CreatePlaylistFileParserFromDataInProcess(OpaqueCMBlockBuffer *a1, CFMutableArrayRef **a2)
{
  v4 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  if (!v4)
  {
    CreatePlaylistFileParserFromDataInProcess_cold_5(&__endptr);
    return __endptr;
  }

  v5 = v4;
  if (*v4 || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]), (*v5 = Mutable) != 0))
  {
    v23 = 0;
    length = 0;
    do
    {
      v7 = pfp_CopyLine(a1, length, &v23, &length);
      if (!v7)
      {
        v11 = 0;
        v15 = 4294951106;
LABEL_28:
        free(v11);
        goto LABEL_29;
      }

      v8 = v7;
      v9 = strcasecmp(v7, "[Playlist]");
      free(v8);
    }

    while (v9);
    v10 = pfp_CopyLine(a1, length, &v23, &length);
    if (!v10)
    {
LABEL_46:
      CreatePlaylistFileParserFromDataInProcess_cold_2(&__endptr);
      goto LABEL_24;
    }

    v11 = v10;
    v12 = 0;
    v13 = 0;
    __endptr = 0;
    do
    {
      if (!strncasecmp(v11, "NumberOfEntries=", 0x10uLL))
      {
        v12 = 1;
      }

      else if (!strncasecmp(v11, "Version=", 8uLL))
      {
        v13 = 1;
      }

      else if (!strncasecmp(v11, "File", 4uLL))
      {
        strtol(v11 + 4, &__endptr, 0);
        if (*__endptr != 61 || (URL = pfp_MakeURL(__endptr + 1, v11 - (__endptr + 1) + v23)) == 0)
        {
          v15 = 4294951104;
          goto LABEL_28;
        }

        CFArrayAppendValue(*v5, URL);
      }

      free(v11);
      v11 = pfp_CopyLine(a1, length, &v23, &length);
    }

    while (v11);
    if (!(v12 | v13))
    {
      goto LABEL_46;
    }

    if (!*v5 || CFArrayGetCount(*v5) <= 0)
    {
      CreatePlaylistFileParserFromDataInProcess_cold_1(&__endptr);
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  CreatePlaylistFileParserFromDataInProcess_cold_3(&__endptr);
LABEL_24:
  v15 = __endptr;
  if (__endptr)
  {
LABEL_29:
    if (*v5)
    {
      CFRelease(*v5);
      *v5 = 0;
    }

    if (v15 == -16190)
    {
      length = 0;
      __endptr = 0;
      v17 = pfp_CopyLine(a1, 0, &length, &__endptr);
      if (v17)
      {
        v18 = *MEMORY[0x1E695E480];
        v19 = MEMORY[0x1E695E9C0];
        do
        {
          if (*v17 == 35 || (v20 = pfp_MakeURL(v17, length)) == 0)
          {
            free(v17);
          }

          else
          {
            v21 = v20;
            v22 = *v5;
            if (!*v5)
            {
              v22 = CFArrayCreateMutable(v18, 0, v19);
              *v5 = v22;
              if (!v22)
              {
                CreatePlaylistFileParserFromDataInProcess_cold_4(v21);
                break;
              }
            }

            CFArrayAppendValue(v22, v21);
            free(v17);
            CFRelease(v21);
          }

          v17 = pfp_CopyLine(a1, __endptr, &length, &__endptr);
        }

        while (v17);
      }

      free(v17);
      if (*v5 && CFArrayGetCount(*v5))
      {
        goto LABEL_21;
      }

      v15 = 4294951106;
    }

    PlaylistFileParserDestroy(v5);
    return v15;
  }

LABEL_21:
  v15 = 0;
  *a2 = v5;
  return v15;
}

const __CFArray *PlaylistFileParserItemCount(const __CFArray **a1)
{
  result = *a1;
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t PlaylistFileParserCopyItem(CFArrayRef *a1, CFIndex idx, void *a3)
{
  Count = *a1;
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*a1, idx);
    if (ValueAtIndex)
    {
      ValueAtIndex = CFRetain(ValueAtIndex);
    }

    *a3 = ValueAtIndex;
    return 0;
  }
}

void PlaylistFileParserDestroy(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t PlaylistFileParserServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __PlaylistFileParserServer_block_invoke;
  block[3] = &unk_1E7480E08;
  block[4] = &v3;
  if (PlaylistFileParserServer_sFigPlaylistFileParserServerSetupOnce != -1)
  {
    dispatch_once(&PlaylistFileParserServer_sFigPlaylistFileParserServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __PlaylistFileParserServer_block_invoke(uint64_t a1)
{
  result = FigXPCServerStart();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

char *pfp_CopyLine(OpaqueCMBlockBuffer *a1, size_t a2, size_t *a3, void *a4)
{
  v6 = a2;
  v15 = 0;
  lengthAtOffsetOut = 0;
  if (CMBlockBufferGetDataPointer(a1, a2, &lengthAtOffsetOut, 0, &v15))
  {
    return 0;
  }

  v9 = 0;
  do
  {
    v10 = lengthAtOffsetOut;
    if (lengthAtOffsetOut)
    {
      v11 = v15;
      do
      {
        v13 = *v11++;
        v12 = v13;
        if (v13 == 13 || v12 == 10)
        {
          if (v9)
          {
            goto LABEL_16;
          }

          ++v6;
        }

        else
        {
          ++v9;
        }

        --v10;
      }

      while (v10);
    }
  }

  while (!CMBlockBufferGetDataPointer(a1, v9 + v6, &lengthAtOffsetOut, 0, &v15));
  if (!v9)
  {
    return 0;
  }

LABEL_16:
  v15 = malloc_type_malloc(v9 + 1, 0x100004077774924uLL);
  CMBlockBufferCopyDataBytes(a1, v6, v9, v15);
  v15[v9] = 0;
  *a3 = v9;
  *a4 = v6 + v9;
  return v15;
}

CFTypeRef pfp_MakeURL(UInt8 *URLBytes, CFIndex length)
{
  if (!length)
  {
    return 0;
  }

  v2 = length;
  v4 = MEMORY[0x1E69E9830];
  while (1)
  {
    v5 = URLBytes[v2 - 1];
    if ((v5 & 0x80000000) != 0)
    {
      break;
    }

    if ((*(v4 + 4 * v5 + 60) & 0x4000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (!--v2)
    {
      return 0;
    }
  }

  if (__maskrune(v5, 0x4000uLL))
  {
    goto LABEL_7;
  }

LABEL_9:
  v6 = CFURLCreateWithBytes(*MEMORY[0x1E695E480], URLBytes, v2, 0x201u, 0);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (CFURLCanBeDecomposed(v6))
  {
    v8 = CFURLGetString(v7);
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v7);
  return v9;
}

void __pfp_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    FigCFDictionarySetValue();
    *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
    CFRelease(v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -12786;
  }
}

void printRegisteredFormatReaders()
{
  if (_MergedGlobals_29)
  {
    Count = CFArrayGetCount(_MergedGlobals_29);
    if (Count >= 1)
    {
      v1 = Count;
      for (i = 0; i != v1; ++i)
      {
        CFArrayGetValueAtIndex(_MergedGlobals_29, i);
        v3 = FigCFCopyCompactDescription();
        if (v3)
        {
          CFRelease(v3);
        }
      }
    }
  }
}

__CFSet *copySetOfRegistryEntryLabels(const __CFAllocator *a1, const void *a2)
{
  Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x1E695E9F8]);
  if (CFArrayGetCount(_MergedGlobals_29) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(CFArrayGetValueAtIndex(_MergedGlobals_29, v4) + 1);
      if (v5)
      {
        Value = CFDictionaryGetValue(v5, a2);
        if (Value)
        {
          v7 = Value;
          Count = CFArrayGetCount(Value);
          if (Count >= 1)
          {
            v9 = Count + 1;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v7, v9 - 2);
              CFSetAddValue(Mutable, ValueAtIndex);
              --v9;
            }

            while (v9 > 1);
          }
        }
      }

      ++v4;
    }

    while (v4 < CFArrayGetCount(_MergedGlobals_29));
  }

  return Mutable;
}

void FFRExpandRepresentativeMIMETypes(const void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (qword_1ED4CA6E8)
      {
        v4 = CFGetTypeID(a1);
        if (v4 == CFStringGetTypeID())
        {
          value = 0;
          if (CFDictionaryGetValueIfPresent(qword_1ED4CA6E8, a1, &value))
          {
            if (value)
            {
              v5 = CFGetTypeID(value);
              if (v5 == CFArrayGetTypeID())
              {
                v6 = value;
                v8.length = CFArrayGetCount(value);
                v8.location = 0;
                CFArrayApplyFunction(v6, v8, FFRAddMIMETypeIfAbsent, a2);
              }
            }
          }
        }
      }
    }
  }
}

void AttemptMIMETypeInstantiation(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef cf, const __CFArray *a5, uint64_t a6)
{
  if (cf)
  {
    v11 = CFRetain(cf);
    cfa = v11;
    if (v11)
    {
LABEL_7:
      AttemptInstantiationForMatchingLabel(a2, a3, @"public.mime-type", 2, v11, 1, a5, a6);
      if (cfa)
      {
        CFRelease(cfa);
      }

      return;
    }
  }

  else
  {
    cfa = 0;
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(CMBaseObject, *MEMORY[0x1E6960DE0], a1, &cfa);
    v11 = cfa;
    if (cfa)
    {
      goto LABEL_7;
    }
  }
}

void AttemptUTIInstantiation(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef cf, const __CFArray *a5, uint64_t a6)
{
  if (cf)
  {
    v11 = CFRetain(cf);
    cfa = v11;
    if (v11)
    {
LABEL_7:
      AttemptInstantiationForMatchingLabel(a2, a3, @"com.apple.uti", 4, v11, 1, a5, a6);
      if (cfa)
      {
        CFRelease(cfa);
      }

      return;
    }
  }

  else
  {
    cfa = 0;
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(CMBaseObject, *MEMORY[0x1E6960E38], a1, &cfa);
    v11 = cfa;
    if (cfa)
    {
      goto LABEL_7;
    }
  }
}

void AttemptSuggestedFileNameInstantiation(const __CFAllocator *a1, uint64_t a2, uint64_t a3, const __CFArray *a4, uint64_t a5)
{
  theString = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(CMBaseObject, *MEMORY[0x1E6960E30], a1, &theString);
    if (theString)
    {
      v12 = CFStringFind(theString, @".", 4uLL);
      if (v12.length >= 1)
      {
        Length = CFStringGetLength(theString);
        v17.location = v12.location + 1;
        v17.length = Length + ~v12.location;
        v14 = CFStringCreateWithSubstring(a1, theString, v17);
        if (v14)
        {
          v15 = v14;
          AttemptInstantiationForMatchingLabel(a2, a3, @"public.filename-extension", 3, v14, 1, a4, a5);
          CFRelease(v15);
        }
      }

      if (theString)
      {
        CFRelease(theString);
      }
    }
  }
}

__CFString *FigGetNotifyingObjectForSupportedFormatsChanged()
{
  if (FigGetNotifyingObjectForSupportedFormatsChanged_onceToken != -1)
  {
    FigGetNotifyingObjectForSupportedFormatsChanged_cold_1();
  }

  return @"SupportedFormatChanged";
}

uint64_t registerSupportedFormatsChangedNotificationBarrierOnce()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterRegisterForBarrierSupport();
}

uint64_t FigFormatReaderGetTypeID()
{
  MEMORY[0x19A8D3660](&FigFormatReaderGetClassID_sRegisterFigFormatReaderOnce, RegisterFigFormatReader);

  return CMBaseClassGetCFTypeID();
}

uint64_t FFRFindRepresentativeMIMEType(uint64_t result, CFTypeRef cf, uint64_t a3)
{
  if (cf)
  {
    if (!*(a3 + 8))
    {
      v5 = result;
      v6 = CFGetTypeID(cf);
      result = CFArrayGetTypeID();
      if (v6 == result)
      {
        v7.length = CFArrayGetCount(cf);
        v7.location = 0;
        result = CFArrayContainsValue(cf, v7, *a3);
        if (result)
        {
          *(a3 + 8) = v5;
        }
      }
    }
  }

  return result;
}

uint64_t FigFormatReaderUtilityConvertCodecElementsToMediaSubType(uint64_t a1, int a2, char *a3, uint64_t a4, _DWORD *a5, int *a6, int *a7)
{
  if (FigCFEqual())
  {

    return AVIFormatReaderConvertCodecElementsToMediaSubType(a2, a3, a4, a5, a6, a7);
  }

  if (FigCFEqual())
  {
    v14 = 1463899717;
LABEL_15:

    return FigAudioFormatReaderConvertCodecElementsToMediaSubType(v14, a2, a3, a4, a5, a6, a7);
  }

  if (FigCFEqual())
  {
    v14 = 1095321155;
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    v14 = 1667327590;
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    v14 = 1297106739;
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    v14 = 1332176742;
    goto LABEL_15;
  }

  if (a7)
  {
    *a7 = 1;
  }

  return 0;
}

uint64_t FigFormatReaderUtilityEstablishCombinedDataRateProfileForTracks(uint64_t a1, const __CFArray *a2, void *a3, uint64_t a4, CMTime *a5)
{
  if (*(*(CMBaseObjectGetVTable() + 16) + 72))
  {
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v10)
    {

      return v10(a1, a2, a3, a4, a5);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {

    return FigFormatReaderUtilityEstablishCombinedDataRateProfileForTracksCommon(a1, a2, a3, a4, a5);
  }
}

uint64_t InstantiateAVIFormatReader(const void *a1, uint64_t a2, const __CFAllocator *a3, uint64_t a4, void *a5, void *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  return AVIFormatReaderCreateFromStream(a1, a3, a5);
}

uint64_t InstantiateAudioFileFormatReader(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  return FigAudioFileFormatReaderCreateFromStream(a1, a3, a4, a5);
}

uint64_t InstantiateAudioFileStreamFormatReader(const void *a1, int a2, uint64_t a3, CFDictionaryRef theDict, void *a5, void *a6)
{
  if (!theDict)
  {
    v12 = FigAudioFileStreamFormatReaderCreateFromStream;
    if (!a6)
    {
      return v12(a1, a3, theDict, a5);
    }

    goto LABEL_8;
  }

  value = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(theDict, @"Instantiation_PreferPreciseDurationAndTiming", &value);
  v12 = FigAudioFileStreamFormatReaderCreateFromStream;
  if (value == *MEMORY[0x1E695E4D0])
  {
    v13 = FigAudioFileFormatReaderCreateFromStream;
  }

  else
  {
    v13 = FigAudioFileStreamFormatReaderCreateFromStream;
  }

  if (ValueIfPresent)
  {
    v12 = v13;
  }

  if (a6)
  {
LABEL_8:
    *a6 = 0;
  }

  return v12(a1, a3, theDict, a5);
}

uint64_t InstantiateWebVTTFormatReader(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  return FigWebVTTFormatReaderCreateFromStream(a1, a3, a5);
}

uint64_t InstantiateTTMLFormatReader(uint64_t a1, int a2, const __CFAllocator *a3, int a4, CFTypeRef *a5, void *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  return FigTTMLFormatReaderCreateFromStream(a1, a4, a3, a5);
}

void FFRAddMIMETypeIfAbsent(const void *a1, const __CFArray *a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFStringGetTypeID())
    {
      v6.length = CFArrayGetCount(a2);
      v6.location = 0;
      if (!CFArrayContainsValue(a2, v6, a1))
      {

        CFArrayAppendValue(a2, a1);
      }
    }
  }
}

void AttemptInstantiationForMatchingLabel(uint64_t a1, uint64_t a2, const void *a3, int a4, const __CFString *a5, int a6, const __CFArray *a7, uint64_t a8)
{
  cf = 0;
  v9 = &off_1ED4CA000;
  if (CFArrayGetCount(_MergedGlobals_29) < 1)
  {
    goto LABEL_37;
  }

  v10 = 0;
  v34 = *MEMORY[0x1E695E480];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v9[220], v10);
    v11 = *(ValueAtIndex + 1);
    if (!v11 || (Value = CFDictionaryGetValue(v11, a3)) == 0 || (v13 = Value, Count = CFArrayGetCount(Value), Count < 1))
    {
LABEL_22:
      ++v10;
      v9 = &off_1ED4CA000;
      continue;
    }

    v15 = Count;
    while (1)
    {
      v16 = CFArrayGetValueAtIndex(v13, v15 - 1);
      if (a6)
      {
        if (CFStringCompare(v16, a5, 1uLL))
        {
          goto LABEL_20;
        }
      }

      else if (!CFEqual(v16, a5))
      {
        goto LABEL_20;
      }

      if (!a7)
      {
        goto LABEL_23;
      }

      v17 = CFDictionaryGetValue(*(ValueAtIndex + 1), @"com.apple.uti");
      if (v17)
      {
        v18 = v17;
        v19 = CFArrayGetCount(v17);
        v20 = CFArrayGetCount(a7);
        v39 = v19;
        if (v19 >= 1)
        {
          break;
        }
      }

LABEL_20:
      if (v15-- <= 1)
      {
        goto LABEL_22;
      }
    }

    v21 = v20;
    v22 = 0;
    while (1)
    {
      v23 = CFArrayGetValueAtIndex(v18, v22);
      if (v21 >= 1)
      {
        break;
      }

LABEL_19:
      if (++v22 == v39)
      {
        goto LABEL_20;
      }
    }

    v24 = v23;
    v25 = 0;
    while (1)
    {
      v26 = CFArrayGetValueAtIndex(a7, v25);
      if (CFEqual(v24, v26))
      {
        break;
      }

      if (v21 == ++v25)
      {
        goto LABEL_19;
      }
    }

LABEL_23:
    v9 = &off_1ED4CA000;
    if (!ValueAtIndex)
    {
      break;
    }

    if (*(a8 + 8) == ValueAtIndex)
    {
      goto LABEL_33;
    }

    v43 = 0;
    v28 = (*ValueAtIndex)(a1, *(ValueAtIndex + 2), v34, a2, &v43, &cf);
    if (!v28)
    {
      *(a8 + 24) = v43;
      *(a8 + 32) = CFRetain(a5);
      *(a8 + 40) = a4;
      v31 = *a8;
      v32 = cf;
      *a8 = cf;
      if (v32)
      {
        CFRetain(v32);
      }

      if (v31)
      {
        CFRelease(v31);
      }

      *(a8 + 8) = 0;
      *(a8 + 16) = 0;
      break;
    }

    if (!*(a8 + 8))
    {
      *(a8 + 16) = v28;
      v29 = *a8;
      v30 = cf;
      *a8 = cf;
      *(a8 + 8) = ValueAtIndex;
      if (v30)
      {
        CFRetain(v30);
      }

      if (v29)
      {
        CFRelease(v29);
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

LABEL_33:
    if (v10 >= 0)
    {
      ++v10;
    }

    else
    {
      v10 = 0;
    }
  }

  while (v10 < CFArrayGetCount(v9[220]));
LABEL_37:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t OUTLINED_FUNCTION_0_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CMTime *time2, uint64_t a20, CMTime *time1, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 time2a, uint64_t time2_16, uint64_t a29, __int128 time1a, uint64_t time1_16)
{
  time1a = *(v31 + 32);
  time1_16 = *(v32 - 208);
  time2a = *(v31 + 64);
  time2_16 = *(v32 - 176);

  return CMTimeCompare(&time1a, &time2a);
}

__n128 OUTLINED_FUNCTION_6_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __n128 a31, uint64_t a32)
{
  result = a31;
  v32[2] = a31;
  *(v33 - 208) = a32;
  return result;
}

__n128 OUTLINED_FUNCTION_9_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19)
{
  *(v21 + 8 * v20) += v19;
  result = a19;
  v23[2] = a19;
  *(v24 - 208) = v22;
  return result;
}

Float64 OUTLINED_FUNCTION_11_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CMTime *time, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 timea, uint64_t time_16)
{
  timea = *(v32 + 64);
  time_16 = *(v33 - 176);

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_12_11()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_14_9()
{

  return ensureRegistryInitialized();
}

uint64_t AudioMentorSetModeToReversePlayback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, const void *a7, const void *a8)
{
  v11 = *a3;
  v12 = *(a3 + 16);
  v9 = *a5;
  v10 = *(a5 + 16);
  return audioMentorSetModeToForwardOrReversePlayback(a1, a2, &v11, a4, &v9, a6, a7, a8, 2);
}

uint64_t AudioMentorSetModeToEmptyEdit(uint64_t a1, const void *a2, const __CFDictionary *a3, const void *a4, const void *a5)
{
  PolicyFromPrerollPolicy = audioMentorGetInitialReadPolicyFromPrerollPolicy(a3, 0);
  v11 = audioMentorGetModeChangePolicy(a3);
  if (v11)
  {
    ShouldSynchronouslyResetOutput = audioMentorShouldSynchronouslyResetOutput(a3);
  }

  else
  {
    ShouldSynchronouslyResetOutput = 0;
  }

  FigSimpleMutexLock();
  if (!*a1)
  {
    *(a1 + 192) = PolicyFromPrerollPolicy;
    *(a1 + 196) = v11;
    *(a1 + 238) = ShouldSynchronouslyResetOutput;
    v13 = *(a1 + 240);
    if (v13)
    {
      CFRelease(v13);
    }

    *(a1 + 240) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    v14 = *(a1 + 248);
    if (v14)
    {
      CFRelease(v14);
    }

    *(a1 + 248) = a4;
    if (a4)
    {
      CFRetain(a4);
    }

    v15 = *(a1 + 256);
    if (v15)
    {
      CFRelease(v15);
    }

    *(a1 + 256) = a5;
    if (a5)
    {
      CFRetain(a5);
    }

    *(a1 + 112) = 3;
    *(a1 + 116) = 1;
    FigMemoryBarrier();
  }

  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
  if (ShouldSynchronouslyResetOutput)
  {
    FigSemaphoreWaitRelative();
  }

  return 0;
}

uint64_t audioMentorGetInitialReadPolicyFromPrerollPolicy(const __CFDictionary *a1, uint64_t a2)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"PrerollPolicy");
    if (Value)
    {
      v4 = Value;
      if (CFEqual(Value, @"PrerollUntilOutputReachesLowWater"))
      {
        return 1;
      }

      else if (CFEqual(v4, @"PrerollUntilOutputReachesLowWaterOrSampleNotImmediatelyAvailable"))
      {
        return 3;
      }

      else
      {
        return a2;
      }
    }
  }

  return a2;
}

BOOL audioMentorShouldSynchronouslyResetOutput(const __CFDictionary *a1)
{
  result = 0;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"SynchronouslyResetOutput");
    if (Value)
    {
      if (CFEqual(*MEMORY[0x1E695E4D0], Value))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t AudioMentorSetClientPID(_BYTE *a1)
{
  if (a1 && !*a1)
  {
    return FigThreadSetProperty();
  }

  else
  {
    return 4294954511;
  }
}

uint64_t AudioMentorSetThrottleForBackground(uint64_t a1, int a2)
{
  if (!a1 || *a1)
  {
    return 4294954511;
  }

  valuePtr = 16 * (a2 != 0);
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v3 = FigThreadSetProperty();
  if (*(a1 + 41))
  {
    FigBaseObject = FigSampleCursorServiceGetFigBaseObject(*(a1 + 8));
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(FigBaseObject, @"PriorityOfConsistentThreadHandlingSampleCursors", v5);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v3;
}

uint64_t audioMentorEnqueueBufferConsumedMarker(uint64_t a1, const void *a2)
{
  target = 0;
  v4 = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &target);
  if (!v4)
  {
    CMSetAttachment(target, *MEMORY[0x1E6960500], a2, 1u);
    v5 = *(a1 + 24);
    v6 = target;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v7)
    {
      v4 = v7(v5, v6);
    }

    else
    {
      v4 = 4294954514;
    }

    CFRelease(target);
  }

  return v4;
}

uint64_t FigSampleCursorGetPresentationTimeStamp(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigSampleCursorStepInDecodeOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t audioMentorGetDecodeWalkCatchupStatusForSteps(uint64_t a1, uint64_t a2)
{
  theDict = 0;
  FigBaseObject = FigSampleCursorGetFigBaseObject(a1);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = v4(FigBaseObject, @"SampleDependencyAttributes", *MEMORY[0x1E695E480], &theDict);
  v6 = theDict;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = theDict == 0;
  }

  if (v7)
  {
    v8 = 2;
    if (!theDict)
    {
      return v8;
    }

    goto LABEL_19;
  }

  v9 = *MEMORY[0x1E695E4D0];
  if (v9 == CFDictionaryGetValue(theDict, *MEMORY[0x1E6960458]) || CFDictionaryContainsKey(theDict, *MEMORY[0x1E69603E0]))
  {
    Int64IfPresent = FigCFDictionaryGetInt64IfPresent();
    if (a2 < 0)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (Int64IfPresent)
    {
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
LABEL_17:
    v8 = 2;
  }

  v6 = theDict;
  if (theDict)
  {
LABEL_19:
    CFRelease(v6);
  }

  return v8;
}

uint64_t FigTTMLDocumentWriterCreateRegionAttributeInserter(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateRegionAttributeInserter_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateRegionAttributeInserter_cold_1(&v8);
    return v8;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject(0);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterRegionAttributeInserter_Finalize(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figTTMLDocumentWriterRegionAttributeInserter_StartElement(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v3 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterStartElement(v3, a2);
}

uint64_t figTTMLDocumentWriterRegionAttributeInserter_EndElement(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterEndElement(v1);
}

uint64_t figTTMLDocumentWriterRegionAttributeInserter_SetAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v5 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterSetAttribute(v5, a2, a3);
}

uint64_t figTTMLDocumentWriterRegionAttributeInserter_Flush(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v1);
}

const char *FigMentorPrerollCompletionReasonGetDescription(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Invalid";
  }

  else
  {
    return off_1E7481018[a1];
  }
}

uint64_t audioRendererAirPlay_subRendererNotificationHandler()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void audioRendererAirPlay_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64))
  {
    SharedInstance = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
    v4 = *(DerivedStorage + 64);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v5)
    {
      v5(SharedInstance, a1, v4);
    }

    v6 = *(DerivedStorage + 64);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 64) = 0;
    }
  }

  if (*DerivedStorage)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (*DerivedStorage)
    {
      CFRelease(*DerivedStorage);
      *DerivedStorage = 0;
    }
  }

  v7 = *(DerivedStorage + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  audioRendererAirPlay_removeRoutingContextListeners(a1, *(DerivedStorage + 24));
  v8 = *(DerivedStorage + 24);
  if (v8)
  {
    CFRelease(v8);
  }

  audioRendererAirPlay_removeEndpointListeners(a1, *(DerivedStorage + 40));
  v9 = *(DerivedStorage + 40);
  if (v9)
  {
    if (!*(DerivedStorage + 48) || (FigEndpointRelinquishStreamResource(), (v9 = *(DerivedStorage + 40)) != 0))
    {
      CFRelease(v9);
    }
  }

  v10 = *(DerivedStorage + 48);
  if (v10)
  {
    CFRelease(v10);
  }

  audioRendererAirPlay_removeBufferedAirPlayOutputListeners(a1, *(DerivedStorage + 56));
  v11 = *(DerivedStorage + 56);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(DerivedStorage + 16);
  if (v12)
  {
    dispatch_release(v12);
    *(DerivedStorage + 16) = 0;
  }

  v13 = *(DerivedStorage + 8);
  if (v13)
  {
    dispatch_release(v13);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *audioRendererAirPlay_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferAudioRendererAirPlay=%p retainCount=%d allocator=%p", a1, v5, v6);
  CFStringAppendFormat(Mutable, 0, @" subRenderer=%p", *DerivedStorage);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t audioRendererAirPlay_SetProperty(const void *a1, uint64_t a2, const void *a3)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    if (!a3 || (v7 = CFGetTypeID(a3), v7 == FigRoutingContextGetTypeID()))
    {
      v8 = DerivedStorage[2];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __audioRendererAirPlay_SetProperty_block_invoke;
      block[3] = &unk_1E74810B8;
      block[4] = &v31;
      block[5] = a1;
      block[6] = a3;
      block[7] = DerivedStorage;
      v9 = block;
LABEL_5:
      dispatch_sync(v8, v9);
      goto LABEL_6;
    }

    goto LABEL_33;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      if (!a3 || (v18 = CFGetTypeID(a3), v18 == CFStringGetTypeID()))
      {
        v8 = DerivedStorage[2];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 0x40000000;
        v28[2] = __audioRendererAirPlay_SetProperty_block_invoke_3;
        v28[3] = &unk_1E7481108;
        v28[4] = &v31;
        v28[5] = a1;
        v28[6] = DerivedStorage;
        v28[7] = a3;
        v9 = v28;
        goto LABEL_5;
      }

      goto LABEL_33;
    }

    if (FigCFEqual())
    {
      if (a3)
      {
        v19 = CFGetTypeID(a3);
        if (v19 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(a3);
          v37 = 0;
          v38 = &v37;
          v39 = 0x2000000000;
          v40 = 0;
          v21 = *(CMBaseObjectGetDerivedStorage() + 16);
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 0x40000000;
          v35[2] = __audioRendererAirPlay_setIsActiveAudioSessionApp_block_invoke;
          v35[3] = &unk_1E7481130;
          v35[4] = &v37;
          v35[5] = a1;
          v36 = Value;
          dispatch_sync(v21, v35);
          v22 = *(v38 + 6);
          _Block_object_dispose(&v37, 8);
          *(v32 + 6) = v22;
          goto LABEL_6;
        }
      }

      goto LABEL_33;
    }

    if (FigCFEqual())
    {
      if (!a3)
      {
        goto LABEL_33;
      }

      v23 = CFGetTypeID(a3);
      if (v23 != CFBooleanGetTypeID())
      {
        goto LABEL_33;
      }

      v24 = CFBooleanGetValue(a3);
      v25 = audioRendererAirPlay_setBufferedAirPlayAllowed(a1, v24);
    }

    else
    {
      v25 = CMBaseObjectSetProperty(*DerivedStorage, a2, a3);
    }

    *(v32 + 6) = v25;
    goto LABEL_6;
  }

  if (!a3 || (v12 = CFGetTypeID(a3), v12 != CFStringGetTypeID()))
  {
LABEL_33:
    v26 = v32;
    v27 = -16380;
LABEL_34:
    *(v26 + 6) = v27;
    goto LABEL_6;
  }

  v35[0] = 0;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    v26 = v32;
    v27 = -16382;
    goto LABEL_34;
  }

  v14 = MutableCopy;
  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E69AF350], a3);
  v15 = FigRoutingContextRemoteCopyContextForUUID();
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v35[0];
    v35[0] = 0;
  }

  CFRelease(v14);
  if (v35[0])
  {
    CFRelease(v35[0]);
  }

  *(v32 + 6) = v15;
  if (!v15)
  {
    v17 = DerivedStorage[2];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 0x40000000;
    v29[2] = __audioRendererAirPlay_SetProperty_block_invoke_2;
    v29[3] = &unk_1E74810E0;
    v29[4] = &v31;
    v29[5] = a1;
    v29[6] = v16;
    v29[7] = DerivedStorage;
    dispatch_sync(v17, v29);
  }

  if (v16)
  {
    CFRelease(v16);
  }

LABEL_6:
  v10 = *(v32 + 6);
  _Block_object_dispose(&v31, 8);
  return v10;
}

uint64_t audioRendererAirPlay_routeToEndpointInternal(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = (DerivedStorage + 40);
  v5 = *(DerivedStorage + 40);
  if (v5)
  {
    v7 = CFRetain(v5);
  }

  else
  {
    v7 = 0;
  }

  v10 = *(DerivedStorage + 48);
  v9 = (DerivedStorage + 48);
  v8 = v10;
  if (v10)
  {
    v11 = CFRetain(v8);
  }

  else
  {
    v11 = 0;
  }

  if (*v6 != a2)
  {
    audioRendererAirPlay_routeToEndpointInternal_cold_1(a1, *v6, v6, a2);
  }

  if (*v9)
  {
    CFRelease(*v9);
    *v9 = 0;
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  if (v11 && FigEndpointContainsStream())
  {
    *v9 = CFRetain(v11);
LABEL_20:
    if (*v9 != v11)
    {
      audioRendererAirPlay_updateBufferedAirPlayOutput(a1);
      if (v11)
      {
        FigEndpointRelinquishStreamResource();
      }
    }

    v15 = 0;
    goto LABEL_24;
  }

  v12 = FigEndpointAcquireAndCopyStreamResource();
  if (v12)
  {
    v13 = v12 == -16725;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    goto LABEL_20;
  }

  v15 = v12;
  audioRendererAirPlay_removeEndpointListeners(a1, *v6);
  v16 = *v6;
  *v6 = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  audioRendererAirPlay_addEndpointListeners();
  v17 = *v9;
  if (*v9 != v11)
  {
    FigEndpointRelinquishStreamResource();
    v17 = *v9;
  }

  *v9 = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  if (v17)
  {
    CFRelease(v17);
  }

LABEL_24:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v15;
}

void audioRendererAirPlay_updateBufferedAirPlayOutput(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*(DerivedStorage + 48) && *(DerivedStorage + 77))
  {
    v6 = 0;
    v5 = (DerivedStorage + 56);
    v4 = *(DerivedStorage + 56);
    if (!v4)
    {
      v7 = 0;
      v8 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v5 = (DerivedStorage + 56);
    v4 = *(DerivedStorage + 56);
    if (!v4)
    {
      return;
    }

    v6 = 1;
  }

  v8 = CFRetain(v4);
  v7 = *v5;
LABEL_9:
  audioRendererAirPlay_removeBufferedAirPlayOutputListeners(a1, v7);
  if (*v5)
  {
    CFRelease(*v5);
    *v5 = 0;
  }

  if ((v6 & 1) == 0)
  {
    if (FigBufferedAirPlayOutputCreate(0, *(v3 + 40), *(v3 + 48), v5))
    {
      goto LABEL_20;
    }

    audioRendererAirPlay_addBufferedAirPlayOutputListeners();
  }

  if (dword_1EAF16D70)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = *v3;
  v11 = *(v3 + 56);
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v12 || v12(v10, @"BufferedAirPlayOutput", v11))
  {
LABEL_20:
    audioRendererAirPlay_updateBufferedAirPlayOutput_cold_1(v5, a1, v8);
    if (!v8)
    {
      return;
    }

LABEL_17:
    CFRelease(v8);
    return;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (v8)
  {
    goto LABEL_17;
  }
}

void *audioRendererAirPlay_bufferedAirPlayOutputEndpointPreemptedNotificationListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result[7] == a4 && *result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigDispatchAsyncPostNotification();
  }

  return result;
}

void audioRendererAirPlay_copyRoutingContext(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __audioRendererAirPlay_copyRoutingContext_block_invoke;
  v5[3] = &__block_descriptor_tmp_20;
  v5[4] = a2;
  v5[5] = DerivedStorage;
  dispatch_sync(v4, v5);
}

CFTypeRef __audioRendererAirPlay_copyRoutingContext_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 24);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

uint64_t audioRendererAirPlay_setBufferedAirPlayAllowed(uint64_t a1, char a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v4 = *(CMBaseObjectGetDerivedStorage() + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __audioRendererAirPlay_setBufferedAirPlayAllowed_block_invoke;
  block[3] = &unk_1E7481158;
  block[4] = &v9;
  block[5] = a1;
  v8 = a2;
  dispatch_sync(v4, block);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void audioRendererAirPlay_updateRoutingRegistryInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v13 = 0;
  if (*(DerivedStorage + 72) && *(DerivedStorage + 77))
  {
    if (!*(DerivedStorage + 64))
    {
      v4 = *(DerivedStorage + 24);
      if (v4)
      {
        v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v5)
        {
          v5(v4, *MEMORY[0x1E69AF4E8], 0, &v13);
          if (v13)
          {
            *(v3 + 64) = v13;
            v13 = 0;
            SharedInstance = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
            v7 = *(v3 + 64);
            v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v8)
            {
              v8(SharedInstance, a1, v7);
            }
          }
        }
      }
    }
  }

  else if (*(DerivedStorage + 64))
  {
    v9 = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
    v10 = *(v3 + 64);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v11)
    {
      v11(v9, a1, v10);
    }

    v12 = *(v3 + 64);
    if (v12)
    {
      CFRelease(v12);
      *(v3 + 64) = 0;
    }
  }
}

__CFString *audioRendererAirPlay_deviceRendererProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"FigSampleBufferAudioRenderer <FigSampleBufferAudioDeviceRendererProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t audioRendererAirPlay_DuckVolume(float a1, float a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigSampleBufferAudioDeviceRendererProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 8);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f32[0] = a1;
  v10.n128_f32[0] = a2;

  return v12(v7, a4, v9, v10);
}

uint64_t audioRendererAirPlay_SilentMute(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigSampleBufferAudioDeviceRendererProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t audioRendererAirPlay_QueueIsAboveHighWaterLevel()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v1)
  {
    return 1;
  }

  return v1(v0);
}

uint64_t audioRendererAirPlay_EnqueueSampleBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t audioRendererAirPlay_Flush()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v1)
  {
    return 4294954514;
  }

  return v1(v0);
}

uint64_t audioRendererAirPlay_AttachToSynchronizer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

uint64_t audioRendererAirPlay_CopyClock(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t audioRendererAirPlay_SetRateAndTime(uint64_t a1, __int128 *a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  audioRendererAirPlay_saveRateAndUpdateRoutingRegistry(a1, a3);
  v7 = *DerivedStorage;
  v11 = *a2;
  v12 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v8)
  {
    v13 = v11;
    v14 = v12;
    v9 = v8(v7, &v13, a3);
    if (!v9)
    {
      return v9;
    }
  }

  else
  {
    v9 = 4294954514;
  }

  audioRendererAirPlay_saveRateAndUpdateRoutingRegistry(a1, 0.0);
  return v9;
}

uint64_t audioRendererAirPlay_FlushFromMediaTime(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  v11 = *a2;
  v12 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v8)
  {
    v13 = v11;
    v14 = v12;
    return v8(v7, &v13, a3, a4);
  }

  else
  {
    v9 = 4294954514;
    if (a3)
    {
      a3(4294954514, a4);
    }
  }

  return v9;
}

uint64_t audioRendererAirPlay_SetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, float a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  audioRendererAirPlay_saveRateAndUpdateRoutingRegistry(a1, a4);
  v9 = *DerivedStorage;
  v15 = *a2;
  v16 = *(a2 + 2);
  v13 = *a3;
  v14 = *(a3 + 2);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v10)
  {
    v19 = v15;
    v20 = v16;
    v17 = v13;
    v18 = v14;
    v11 = v10(v9, &v19, &v17, a4);
    if (!v11)
    {
      return v11;
    }
  }

  else
  {
    v11 = 4294954514;
  }

  audioRendererAirPlay_saveRateAndUpdateRoutingRegistry(a1, 0.0);
  return v11;
}

void audioRendererAirPlay_saveRateAndUpdateRoutingRegistry(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __audioRendererAirPlay_saveRateAndUpdateRoutingRegistry_block_invoke;
  block[3] = &__block_descriptor_tmp_29;
  v7 = a2;
  block[4] = DerivedStorage;
  block[5] = a1;
  dispatch_sync(v5, block);
}

void __audioRendererAirPlay_saveRateAndUpdateRoutingRegistry_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v3 + 72) = v1;
  audioRendererAirPlay_updateRoutingRegistryInternal(v2);
}

uint64_t RegisterFigSampleGeneratorBatchType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigSampleGeneratorBatchGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleGeneratorBatchGetClassID_sRegisterFigSampleGeneratorBatchTypeOnce, RegisterFigSampleGeneratorBatchType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigSampleGeneratorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleGeneratorGetClassID_sRegisterFigSampleGeneratorTypeOnce, RegisterFigSampleGeneratorType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigImageQueueConfigurationGetTypeID()
{
  if (FigImageQueueConfigurationGetTypeID_sRegisterImageQueueConfigurationTypeOnce != -1)
  {
    FigImageQueueConfigurationGetTypeID_cold_1();
  }

  return FigImageQueueConfigurationGetTypeID_sImageQueueConfigurationTypeID;
}

uint64_t __FigImageQueueConfigurationGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigImageQueueConfigurationGetTypeID_sImageQueueConfigurationTypeID = result;
  return result;
}

void imageQueueConfiguration_finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

CFStringRef imageQueueConfiguration_copyDebugDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (a1)
  {
    return CFStringCreateWithFormat(v2, 0, @"[ImageQueueConfiguration %p] array: %@", a1, *(a1 + 16));
  }

  else
  {
    return CFStringCreateWithFormat(v2, 0, @"[ImageQueueConfiguration %p]", 0);
  }
}

uint64_t FigImageQueueConfigurationCreate(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  if (FigImageQueueConfigurationGetTypeID_sRegisterImageQueueConfigurationTypeOnce != -1)
  {
    FigImageQueueConfigurationGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    v6[2] = Mutable;
    if (Mutable)
    {
      result = 0;
      *a3 = v6;
    }

    else
    {
      FigImageQueueConfigurationCreate_cold_2(v6, &v9);
      return v9;
    }
  }

  else
  {
    FigImageQueueConfigurationCreate_cold_3(&v10);
    return v10;
  }

  return result;
}

uint64_t FigImageQueueConfigurationAddFigImageQueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v5 = Mutable;
        FigCFDictionarySetValue();
        CFArrayAppendValue(*(a1 + 16), v5);
        CFRelease(v5);
        return 0;
      }

      else
      {
        FigImageQueueConfigurationAddFigImageQueue_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      FigImageQueueConfigurationAddFigImageQueue_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    FigImageQueueConfigurationAddFigImageQueue_cold_3(&v9);
    return v9;
  }
}

uint64_t FigByteStreamCreateForByteFlume(const void *a1, const __CFAllocator *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  *&v36[1021] = *MEMORY[0x1E69E9840];
  anURL = 0;
  cf = 0;
  bzero(v36, 0x3FDuLL);
  qmemcpy(__src, "n/a", sizeof(__src));
  IsItOKToLogURLs = FigIsItOKToLogURLs();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a1)
  {
    FigByteStreamCreateForByteFlume_cold_3(number);
    v24 = 0;
    v13 = LODWORD(number[0]);
    goto LABEL_31;
  }

  if (a4)
  {
    CMByteStreamGetClassID();
    v8 = CMDerivedObjectCreate();
    if (v8)
    {
      v13 = v8;
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v10 = CFRetain(a1);
      *DerivedStorage = v10;
      number[0] = 0;
      FigBaseObject = FigByteFlumeGetFigBaseObject(v10);
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v13 = v12(FigBaseObject, @"FBF_EntireLength", a2, number);
        v14 = number[0];
        if (!v13 && number[0])
        {
          valuePtr = 0;
          CFNumberGetValue(number[0], kCFNumberSInt64Type, &valuePtr);
          if (valuePtr < 0)
          {
            v13 = 4294954513;
          }

          else
          {
            v13 = 0;
            DerivedStorage[1] = valuePtr;
          }

          v14 = number[0];
        }

        if (v14)
        {
          CFRelease(v14);
        }

        if (!v13)
        {
          FigByteStreamStatsSetupWorker();
          if (sFlumeStreamDestMutexOnce != -1)
          {
            FigByteStreamCreateForByteFlume_cold_1();
          }

          v15 = FigByteFlumeGetFigBaseObject(*DerivedStorage);
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v16)
          {
            v17 = v16(v15, @"FBF_URL", a2, &anURL);
            if (!v17)
            {
              v19 = *DerivedStorage;
              v18 = DerivedStorage + 3;
              v20 = FigByteFlumeGetFigBaseObject(v19);
              v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v21)
              {
                v21(v20, @"FBF_ClientBundleIdentifier", *MEMORY[0x1E695E480], v18);
              }

              if (a3 && (v22 = *MEMORY[0x1E695E4D0], v22 == CFDictionaryGetValue(a3, @"DoNotLogURLs")) || !IsItOKToLogURLs)
              {
                v26 = CFURLCopyScheme(anURL);
                if (v26)
                {
                  v27 = v26;
                  v24 = CFStringCreateWithFormat(a2, 0, @"%@://<redacted>", v26);
                  CFRelease(v27);
                  if (!v24)
                  {
LABEL_44:
                    if (dword_1EAF16D90)
                    {
                      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }

                    v13 = 0;
                    *a4 = cf;
                    cf = 0;
LABEL_31:
                    if (*MEMORY[0x1E695FF58] != 1)
                    {
                      goto LABEL_33;
                    }

                    goto LABEL_32;
                  }

LABEL_42:
                  CFStringGetCString(v24, __src, 1024, 0x8000100u);
                  goto LABEL_44;
                }
              }

              else
              {
                v23 = CFURLGetString(anURL);
                if (v23)
                {
                  v24 = CFRetain(v23);
                  if (!v24)
                  {
                    goto LABEL_44;
                  }

                  goto LABEL_42;
                }
              }

              v24 = 0;
              goto LABEL_44;
            }

            v13 = v17;
          }

          else
          {
            v13 = 4294954514;
          }
        }
      }

      else
      {
        v13 = 4294954514;
      }

      FigSignalErrorAtGM();
    }

    v24 = 0;
    goto LABEL_31;
  }

  v29 = FigByteStreamCreateForByteFlume_cold_2(number);
  v13 = LODWORD(number[0]);
  if (!v29)
  {
    goto LABEL_35;
  }

  v24 = 0;
LABEL_32:
  strncpy(number, __src, 8uLL);
  kdebug_trace();
LABEL_33:
  if (v24)
  {
    CFRelease(v24);
  }

LABEL_35:
  if (anURL)
  {
    CFRelease(anURL);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t flumeStream_setUpDestMutexOnce()
{
  result = FigSimpleMutexCreate();
  _MergedGlobals_30 = result;
  return result;
}

__n128 FigFlumeStreamFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (dword_1EAF16D90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  FigByteStreamStatsTeardownWorker();
  result.n128_u64[0] = 0xF5F5F5F5F5F5F5F5;
  result.n128_u64[1] = 0xF5F5F5F5F5F5F5F5;
  *(DerivedStorage + 64) = result;
  *(DerivedStorage + 80) = result;
  *(DerivedStorage + 32) = result;
  *(DerivedStorage + 48) = result;
  *DerivedStorage = result;
  *(DerivedStorage + 16) = result;
  return result;
}

__CFString *FigFlumeStreamCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  CFStringAppendFormat(Mutable, 0, @"FigFlumeStream %p sourceFlume %@ entireLength %lld lastReadIssued %d", a1, *DerivedStorage, *(DerivedStorage + 8), *(DerivedStorage + 16));
  return Mutable;
}

uint64_t FigFlumeStreamCopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  if (CFEqual(a2, *MEMORY[0x1E695FF78]) || CFEqual(a2, *MEMORY[0x1E695FF70]))
  {
    SInt64 = FigCFNumberCreateSInt64();
LABEL_8:
    v11 = 0;
    *a4 = SInt64;
    goto LABEL_9;
  }

  if (CFEqual(a2, *MEMORY[0x1E695FFA0]))
  {
    FigBaseObject = FigByteFlumeGetFigBaseObject(*DerivedStorage);
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v14)
    {
      v11 = 4294954514;
      goto LABEL_9;
    }

    StatsDictionary = v14(FigBaseObject, @"FBF_URL", a3, a4);
    goto LABEL_23;
  }

  if (CFEqual(a2, *MEMORY[0x1E6960DC8]))
  {
LABEL_19:
    v11 = 4294954512;
    goto LABEL_9;
  }

  if (CFEqual(a2, *MEMORY[0x1E6960DE0]))
  {
    v16 = FigByteFlumeGetFigBaseObject(*DerivedStorage);
    v17 = kFigByteFlumeProperty_MIMEType;
LABEL_22:
    StatsDictionary = CMBaseObjectCopyProperty(v16, *v17, a3, a4);
LABEL_23:
    v11 = StatsDictionary;
    goto LABEL_9;
  }

  if (CFEqual(a2, *MEMORY[0x1E695FF80]))
  {
LABEL_25:
    SInt64 = CFRetain(*MEMORY[0x1E695E4D0]);
    goto LABEL_8;
  }

  if (CFEqual(a2, *MEMORY[0x1E6960E08]))
  {
    StatsDictionary = flumeStreamCreateReadStatsDictionary(a1, a3, a4);
    goto LABEL_23;
  }

  if (CFEqual(a2, *MEMORY[0x1E6960DA0]))
  {
    v16 = FigByteFlumeGetFigBaseObject(*DerivedStorage);
    v17 = kFigByteFlumeProperty_AccessLog;
    goto LABEL_22;
  }

  if (!CFEqual(a2, *MEMORY[0x1E6960DD8]))
  {
    if (!CFEqual(a2, *MEMORY[0x1E6960DA8]))
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (*DerivedStorage)
  {
    v16 = FigByteFlumeGetFigBaseObject(*DerivedStorage);
    v17 = kFigByteFlumeProperty_LastError;
    goto LABEL_22;
  }

  v11 = 4294954513;
LABEL_9:
  if (*v9 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  return v11;
}

uint64_t FigFlumeStreamSetProperty(int a1, CFTypeRef cf)
{
  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (cf)
    {
      CFHash(cf);
      kdebug_trace();
      if (*v2 == 1)
      {
        CFHash(cf);
LABEL_6:
        kdebug_trace();
      }
    }

    else
    {
      kdebug_trace();
      if (*v2 == 1)
      {
        goto LABEL_6;
      }
    }
  }

  return 4294954512;
}

uint64_t FigFlumeStreamRead(const void *a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = 0;
  CMBaseObjectGetDerivedStorage();
  FigGetUpTimeNanoseconds();
  v10 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v11 = flumeStream_issueReadAndWaitForCompletion(a1, a2, a3, a4, 0, &v13);
  if (a5)
  {
    *a5 = v13;
  }

  FigGetUpTimeNanoseconds();
  FigByteStreamStatsLogOneRead();
  if (*v10 == 1)
  {
    kdebug_trace();
  }

  return v11;
}

uint64_t FigFlumeStreamGetAvailableLengthAtOffset(uint64_t a1, uint64_t a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    AvailableLengthAtOffset_cold_3 = FigFlumeStreamGetAvailableLengthAtOffset_cold_3(&v15);
    v10 = v15;
    if (!AvailableLengthAtOffset_cold_3)
    {
      return v10;
    }

    goto LABEL_8;
  }

  if (a2 < 0)
  {
    FigFlumeStreamGetAvailableLengthAtOffset_cold_2(&v14);
    v10 = v14;
  }

  else
  {
    v7 = *(DerivedStorage + 8);
    v8 = v7 < a2;
    v9 = v7 - a2;
    if (v8)
    {
      FigFlumeStreamGetAvailableLengthAtOffset_cold_1(&v13);
      v10 = v13;
    }

    else
    {
      v10 = 0;
      *a3 = v9;
    }
  }

  if (*v5 == 1)
  {
LABEL_8:
    kdebug_trace();
  }

  return v10;
}

uint64_t FigFlumeStreamReadAndCreateBlockBuffer(const void *a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v13 = 0;
  CMBaseObjectGetDerivedStorage();
  *a4 = 0;
  FigGetUpTimeNanoseconds();
  v10 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v11 = flumeStream_issueReadAndWaitForCompletion(a1, a2, a3, 0, a4, &v13);
  if (a5)
  {
    *a5 = v13;
  }

  FigGetUpTimeNanoseconds();
  FigByteStreamStatsLogOneRead();
  if (*v10 == 1)
  {
    kdebug_trace();
  }

  return v11;
}

void flumeStream_incrementalReadCallback(uint64_t a1, int a2, int a3, uint64_t a4, CMBlockBufferRef theBuffer, char a6, int a7)
{
  v12 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a6)
    {
      v13 = "true";
    }

    else
    {
      v13 = "false";
    }

    strncpy(__dst, v13, 8uLL);
    kdebug_trace();
  }

  if (!a7)
  {
    DataLength = CMBlockBufferGetDataLength(theBuffer);
    if (DataLength)
    {
      FigSimpleMutexLock();
      v15 = *(a1 + 56);
      if (v15)
      {
        CMBlockBufferCopyDataBytes(theBuffer, 0, DataLength, (v15 + a4));
      }

      v16 = *(a1 + 64);
      if (v16)
      {
        CMBlockBufferAppendBufferReference(v16, theBuffer, 0, 0, 0);
      }

      FigSimpleMutexUnlock();
      *(a1 + 32) += DataLength;
    }
  }

  *(a1 + 80) = a7;
  if (*v12 == 1)
  {
    kdebug_trace();
  }

  if (a6)
  {
    dispatch_semaphore_signal(*(a1 + 72));
    CFRelease(a1);
  }
}

intptr_t flumeStream_abortWaitingForReadCompletion(uint64_t a1)
{
  if (dword_1EAF16D90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  *(a1 + 12) = -12871;
  result = dispatch_semaphore_signal(*a1);
  if (*v3 == 1)
  {
    return kdebug_trace();
  }

  return result;
}

uint64_t figFlumeStreamReadRecord_RegisterType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double figFlumeStreamReadRecord_Init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figFlumeStreamReadRecord_Finalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 72) = 0;
  }
}

__CFString *figFlumeStreamReadRecord_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"FigFlumeStreamReadRecordRef %p RC %d readIssue %d flumeReadID %lld start %lld length %lld bytesRead %lld reqResult %d", a1, v4, *(a1 + 40), *(a1 + 48), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 80));
  return Mutable;
}

uint64_t OUTLINED_FUNCTION_0_36()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t FigCaptionRendererCaptionArrayInputCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3)
  {
    if (a5)
    {
      *a5 = 0;
      FigCaptionRendererInputGetClassID();
      CMDerivedObjectCreate();
      FigCaptionRendererCaptionArrayInputCreate_cold_1(__str);
    }

    else
    {
      FigCaptionRendererCaptionArrayInputCreate_cold_2(__str);
    }
  }

  else
  {
    FigCaptionRendererCaptionArrayInputCreate_cold_3(__str);
  }

  return *__str;
}

uint64_t FigCaptionRendererCaptionArrayInputSetCaptionsArray(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  if (a2)
  {
    *DerivedStorage = CFRetain(a2);
  }

  return 0;
}

void figFCRCaptionArrayInput_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 32);
  if (v1)
  {
    dispatch_release(v1);
    *(DerivedStorage + 32) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }

  *(DerivedStorage + 56) = 0;
}

__CFString *figFCRCaptionArrayInput_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererCaptionArrayInput %p>", a1);
  return Mutable;
}

uint64_t ffcrcainput_start(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 32))
  {
    v3 = DerivedStorage;
    v4 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    if (v4)
    {
      v5 = v4;
      *v4 = CFRetain(a1);
      dispatch_sync_f(*(v3 + 32), v5, startInputDoAsync);
    }
  }

  return 0;
}

void startInputDoAsync(const void **a1)
{
  v1 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[0] = v1;
  context[1] = DerivedStorage;
  v3 = *DerivedStorage;
  cf.value = 0;
  *&v48 = 0.0;
  if (CFArrayGetCount(v3))
  {
    v4 = 0;
    v5 = *MEMORY[0x1E695E480];
    v6 = *MEMORY[0x1E6961268];
    while (1)
    {
      if (cf.value)
      {
        CFRelease(cf.value);
        cf.value = 0;
      }

      if (*&v48 != 0.0)
      {
        CFRelease(v48);
        *&v48 = 0.0;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
      CMBaseObject = FigCaptionGetCMBaseObject(ValueAtIndex);
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v9 || v9(CMBaseObject, @"CaptionData", v5, &cf) || (v10 = FigCaptionDataGetCMBaseObject(), (v11 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v11(v10, v6, v5, &v48))
      {
LABEL_13:
        v12 = 0;
        goto LABEL_14;
      }

      if (FigCFArrayContainsValue())
      {
        break;
      }

      if (++v4 == CFArrayGetCount(v3))
      {
        goto LABEL_13;
      }
    }

    v12 = 1;
LABEL_14:
    if (*&v48 != 0.0)
    {
      CFRelease(v48);
    }

    if (cf.value)
    {
      CFRelease(cf.value);
    }
  }

  else
  {
    v12 = 0;
  }

  *(DerivedStorage + 16) = v12;
  v13 = *DerivedStorage;
  v52.length = CFArrayGetCount(*DerivedStorage);
  v52.location = 0;
  CFArrayApplyFunction(v13, v52, enumCaptions_applierFunc, context);
  Count = CFArrayGetCount(*(DerivedStorage + 8));
  if (Count < 1)
  {
LABEL_42:
    v33 = CFArrayGetCount(*(DerivedStorage + 8));
    if (v33 < 1)
    {
LABEL_53:
      CFArrayRemoveAllValues(*(DerivedStorage + 8));
    }

    else
    {
      v34 = v33;
      v35 = 0;
      while (1)
      {
        v36 = CFArrayGetValueAtIndex(*(DerivedStorage + 8), v35);
        cf.value = 0;
        FigCaptionRendererBaseProtocolGetProtocolID();
        ProtocolVTable = CMBaseObjectGetProtocolVTable();
        if (!ProtocolVTable)
        {
          break;
        }

        v38 = *(ProtocolVTable + 16);
        if (!v38)
        {
          break;
        }

        v39 = *(v38 + 8);
        if (!v39 || v39(v36, &cf))
        {
          break;
        }

        value = cf.value;
        if (!cf.value || (v41 = strcmp(cf.value, "FigCaptionRendererPaintOnCaption"), v42 = (DerivedStorage + 40), v41) && (v43 = strcmp(value, "FigCaptionRendererCaption"), v42 = (DerivedStorage + 40), v43))
        {
          v42 = (DerivedStorage + 48);
        }

        (*v42)(v36, *(DerivedStorage + 56));
        if (v34 == ++v35)
        {
          goto LABEL_53;
        }
      }

      startInputDoAsync_cold_1();
    }
  }

  else
  {
    v15 = Count;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = CFArrayGetValueAtIndex(*(DerivedStorage + 8), v17);
      __s1 = 0;
      FigCaptionRendererBaseProtocolGetProtocolID();
      v19 = CMBaseObjectGetProtocolVTable();
      if (!v19)
      {
        break;
      }

      v20 = *(v19 + 16);
      if (!v20)
      {
        break;
      }

      v21 = *(v20 + 8);
      if (!v21 || v21(v18, &__s1))
      {
        break;
      }

      if (__s1 && (v22 = strcmp(__s1, "FigCaptionRendererPaintOnCaption"), !v22))
      {
        if (v16)
        {
          *&v48 = 0.0;
          v49 = 0.0;
          *&v48 = FigBytePumpGetFigBaseObject(v22);
          v49 = v23;
          FigCaptionRendererIntervalProtocolGetProtocolID();
          v24 = CMBaseObjectGetProtocolVTable();
          if (v24)
          {
            v26 = *(v24 + 16);
            v24 += 16;
            v25 = v26;
            if (v26)
            {
              v27 = *(v25 + 8);
              if (v27)
              {
                v24 = v27(v16, &v48);
              }
            }
          }

          FigBaseObject = 0.0;
          v47 = 0;
          FigBaseObject = FigBytePumpGetFigBaseObject(v24);
          v47 = v28;
          FigCaptionRendererIntervalProtocolGetProtocolID();
          v29 = CMBaseObjectGetProtocolVTable();
          if (v29)
          {
            v30 = *(v29 + 16);
            if (v30)
            {
              v31 = *(v30 + 8);
              if (v31)
              {
                v31(v18, &FigBaseObject);
              }
            }
          }

          v32 = FigBaseObject;
          if (FigBaseObject >= *&v48 + v49)
          {
            v32 = *&v48 + v49;
          }

          CMTimeMake(&cf, ((v32 - *&v48) * 1000.0), 1000);
          FigCaptionRendererPaintOnCaptionSetAnimationDuration(v16, &cf);
        }
      }

      else
      {
        v18 = v16;
      }

      ++v17;
      v16 = v18;
      if (v15 == v17)
      {
        goto LABEL_42;
      }
    }

    startInputDoAsync_cold_2();
  }

  if (v1)
  {
    CFRelease(v1);
  }

  free(a1);
}

void enumCaptions_applierFunc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v153[0] = 0;
  memset(&v152, 0, sizeof(v152));
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v3)
  {
    v3(&v152, a1);
  }

  else
  {
    v4 = *(MEMORY[0x1E6960C98] + 16);
    *&v152.start.value = *MEMORY[0x1E6960C98];
    *&v152.start.epoch = v4;
    *&v152.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  }

  v150 = 0;
  v151 = 0;
  v148 = 0;
  v149 = 0;
  v147 = 0;
  CMBaseObject = FigCaptionGetCMBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6 || (v7 = *MEMORY[0x1E695E480], v6(CMBaseObject, @"CaptionData", *MEMORY[0x1E695E480], &v151)))
  {
    enumCaptions_applierFunc_cold_1();
    goto LABEL_175;
  }

  v8 = FigCaptionDataGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9 && !v9(v8, *MEMORY[0x1E6961200], v7, &v147) && FigCFEqual())
  {
    FigCaptionRendererPaintOnCaptionCreate(v153);
    FigCaptionRendererPaintOnCaptionSetAnimationEnabled(v153[0], 1);
  }

  else
  {
    FigCaptionRendererCaptionCreate(v153);
  }

  *&time.start.value = *&v152.start.value;
  time.start.epoch = v152.start.epoch;
  CMTimeGetSeconds(&time.start);
  time = v152;
  CMTimeRangeGetEnd(&v138, &time);
  CMTimeGetSeconds(&v138);
  v10 = v153[0];
  FigBaseObject = FigBytePumpGetFigBaseObject(v11);
  v14 = v13;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v16 = *(ProtocolVTable + 16);
    if (v16)
    {
      v17 = *(v16 + 16);
      if (v17)
      {
        v17(v10, FigBaseObject, v14);
      }
    }
  }

  Mutable = CFStringCreateMutable(v7, 0);
  v19 = FigCaptionDataGetCMBaseObject();
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v20)
  {
    v20(v19, *MEMORY[0x1E6961270], v7, &v149);
  }

  if (v149 && CFStringGetLength(v149) >= 1)
  {
    CFStringAppend(Mutable, v149);
    v21 = CFAttributedStringCreate(v7, Mutable, 0);
    MutableCopy = CFAttributedStringCreateMutableCopy(v7, 0, v21);
    if (v21)
    {
      CFRelease(v21);
    }

    v23 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v24 = v153[0];
    FigCaptionRendererCaptionProtocolGetProtocolID();
    v25 = CMBaseObjectGetProtocolVTable();
    if (v25)
    {
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = *(v26 + 8);
        if (v27)
        {
          v27(v24, v23);
        }
      }
    }

    time.start.value = 0;
    v28 = FigCaptionDataGetCMBaseObject();
    v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v29)
    {
      v29(v28, *MEMORY[0x1E6961278], v7, &time);
    }

    InitialValue = FigCaptionDynamicStyleGetInitialValue();
    if (InitialValue)
    {
      v31 = InitialValue;
      if (!CFEqual(InitialValue, *MEMORY[0x1E6961570]) && !CFEqual(v31, *MEMORY[0x1E6961558]) && !CFEqual(v31, *MEMORY[0x1E6961550]) && !CFEqual(v31, *MEMORY[0x1E6961560]))
      {
        CFEqual(v31, *MEMORY[0x1E6961568]);
      }
    }

    FigCFDictionarySetValue();
    if (time.start.value)
    {
      CFRelease(time.start.value);
    }

    v32 = copyRangedValuesOfStyleProperty(v151, *MEMORY[0x1E69614E8]);
    FigCFDictionarySetValue();
    time.start.value = *MEMORY[0x1E6960878];
    *&time.start.timescale = MutableCopy;
    v154.length = CFArrayGetCount(v32);
    v154.location = 0;
    CFArrayApplyFunction(v32, v154, stylePropertyRangeValueApplier, &time);
    if (v32)
    {
      CFRelease(v32);
    }

    v33 = copyRangedValuesOfStyleProperty(v151, *MEMORY[0x1E69614A0]);
    FigCFDictionarySetValue();
    time.start.value = *MEMORY[0x1E69607D0];
    *&time.start.timescale = MutableCopy;
    v155.length = CFArrayGetCount(v33);
    v155.location = 0;
    CFArrayApplyFunction(v33, v155, stylePropertyRangeValueApplier, &time);
    if (v33)
    {
      CFRelease(v33);
    }

    v34 = copyRangedValuesOfStyleProperty(v151, *MEMORY[0x1E6961480]);
    FigCFDictionarySetValue();
    time.start.value = *MEMORY[0x1E69608A8];
    *&time.start.timescale = MutableCopy;
    v156.length = CFArrayGetCount(v34);
    v156.location = 0;
    CFArrayApplyFunction(v34, v156, stylePropertyRangeValueApplier, &time);
    if (v34)
    {
      CFRelease(v34);
    }

    v35 = copyRangedValuesOfStyleProperty(v151, *MEMORY[0x1E6961460]);
    FigCFDictionarySetValue();
    time.start.value = *MEMORY[0x1E6960990];
    *&time.start.timescale = MutableCopy;
    v157.length = CFArrayGetCount(v35);
    v157.location = 0;
    CFArrayApplyFunction(v35, v157, stylePropertyRangeValueApplier, &time);
    if (v35)
    {
      CFRelease(v35);
    }

    v36 = copyRangedValuesOfStyleProperty(v151, *MEMORY[0x1E6961458]);
    FigCFDictionarySetValue();
    time.start.value = *MEMORY[0x1E6960810];
    *&time.start.timescale = MutableCopy;
    v158.length = CFArrayGetCount(v36);
    v158.location = 0;
    CFArrayApplyFunction(v36, v158, stylePropertyRangeValueApplier, &time);
    if (v36)
    {
      CFRelease(v36);
    }

    v37 = copyRangedValuesOfStyleProperty(v151, *MEMORY[0x1E69614E0]);
    FigCFDictionarySetValue();
    time.start.value = *MEMORY[0x1E6960930];
    *&time.start.timescale = MutableCopy;
    v159.length = CFArrayGetCount(v37);
    v159.location = 0;
    CFArrayApplyFunction(v37, v159, stylePropertyRangeValueApplier, &time);
    if (v37)
    {
      CFRelease(v37);
    }

    v38 = copyRangedValuesOfStyleProperty(v151, *MEMORY[0x1E69614F0]);
    FigCFDictionarySetValue();
    time.start.value = *MEMORY[0x1E6960890];
    *&time.start.timescale = MutableCopy;
    v160.length = CFArrayGetCount(v38);
    v160.location = 0;
    CFArrayApplyFunction(v38, v160, stylePropertyRangeValueApplier, &time);
    if (v38)
    {
      CFRelease(v38);
    }

    FigCFDictionarySetValue();
    if (*(DerivedStorage + 16))
    {
      FigCFDictionarySetValue();
      v39 = v153[0];
      FigCaptionRendererCaptionProtocolGetProtocolID();
      v40 = CMBaseObjectGetProtocolVTable();
      if (!v40)
      {
        goto LABEL_166;
      }

      v41 = *(v40 + 16);
      if (!v41)
      {
        goto LABEL_166;
      }

      v42 = *(v41 + 56);
      if (!v42 || v42(v39, @"ja-JP"))
      {
        goto LABEL_166;
      }
    }

    cf = 0;
    v43 = FigCaptionDataGetCMBaseObject();
    v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v44 || v44(v43, *MEMORY[0x1E6961240], v7, &cf))
    {
      goto LABEL_166;
    }

    if (!cf)
    {
LABEL_124:
      Copy = CFAttributedStringCreateCopy(v7, MutableCopy);
      v96 = v153[0];
      FigCaptionRendererCaptionProtocolGetProtocolID();
      v97 = CMBaseObjectGetProtocolVTable();
      if (v97)
      {
        v98 = *(v97 + 16);
        if (v98)
        {
          v99 = *(v98 + 24);
          if (v99)
          {
            v99(v96, Copy);
          }
        }
      }

      CFArrayAppendValue(*(DerivedStorage + 8), v153[0]);
      goto LABEL_167;
    }

    value = 0;
    v45 = FigCaptionRegionGetCMBaseObject();
    v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v46 || v46(v45, *MEMORY[0x1E6961338], v7, &v148))
    {
      goto LABEL_166;
    }

    if (v148)
    {
      v47 = CFStringCompare(v148, *MEMORY[0x1E6961368], 0);
      if (CFStringCompare(v148, *MEMORY[0x1E6961348], 0) == kCFCompareEqualTo)
      {
        v161.length = CFAttributedStringGetLength(MutableCopy);
        v161.location = 0;
        CFAttributedStringSetAttribute(MutableCopy, v161, *MEMORY[0x1E6960998], *MEMORY[0x1E6960C38]);
        FigCFDictionarySetValue();
        v59 = v153[0];
        FigCaptionRendererCaptionProtocolGetProtocolID();
        v60 = CMBaseObjectGetProtocolVTable();
        if (v60)
        {
          v61 = *(v60 + 16);
          if (v61)
          {
            v62 = *(v61 + 56);
            if (v62)
            {
              v62(v59, @"ja-JP");
            }
          }
        }

        v63 = 2;
        v64 = 1;
        v133 = 8;
        v134 = 50;
        v135 = 18;
        v51 = 15;
        v65 = 1;
        goto LABEL_93;
      }

      if (CFStringCompare(v148, *MEMORY[0x1E6961350], 0) == kCFCompareEqualTo)
      {
        v162.length = CFAttributedStringGetLength(MutableCopy);
        v162.location = 0;
        CFAttributedStringSetAttribute(MutableCopy, v162, *MEMORY[0x1E6960998], *MEMORY[0x1E6960C38]);
        FigCFDictionarySetValue();
        v66 = v153[0];
        FigCaptionRendererCaptionProtocolGetProtocolID();
        v67 = CMBaseObjectGetProtocolVTable();
        if (v67)
        {
          v68 = *(v67 + 16);
          if (v68)
          {
            v69 = *(v68 + 56);
            if (v69)
            {
              v69(v66, @"ja-JP");
            }
          }
        }

        v63 = 2;
        v65 = 3;
        v64 = 1;
        v133 = 92;
        v134 = 50;
        v135 = 18;
        v51 = 15;
        goto LABEL_93;
      }

      if (CFStringCompare(v148, *MEMORY[0x1E6961360], 0) == kCFCompareEqualTo)
      {
        v100 = v153[0];
        FigCaptionRendererCaptionProtocolGetProtocolID();
        v101 = CMBaseObjectGetProtocolVTable();
        if (v101)
        {
          v102 = *(v101 + 16);
          if (v102)
          {
            v103 = *(v102 + 40);
            if (v103)
            {
              v103(v100, 3);
            }
          }
        }

        FigCaptionRendererSRTRegionCreate(&value);
        FigCaptionRendererSRTRegionSetWritingMode(value, 0);
        FigCaptionRendererSRTRegionSetAlignment(value, 2, 3);
        v135 = 18;
        v51 = 100;
        v133 = 50;
        v134 = 50;
LABEL_98:
        v74 = value;
        v75 = v148;
        FigCaptionRendererRegionProtocolGetProtocolID();
        v76 = CMBaseObjectGetProtocolVTable();
        if (v76)
        {
          v77 = *(v76 + 16);
          if (v77)
          {
            v78 = *(v77 + 8);
            if (v78)
            {
              v78(v74, v75);
            }
          }
        }

        v79 = value;
        FigCaptionRendererRegionProtocolGetProtocolID();
        v80 = CMBaseObjectGetProtocolVTable();
        if (v80)
        {
          v81 = *(v80 + 16);
          if (v81)
          {
            v82 = *(v81 + 24);
            if (v82)
            {
              v82(v79, v51);
            }
          }
        }

        v83 = value;
        FigCaptionRendererRegionProtocolGetProtocolID();
        v84 = CMBaseObjectGetProtocolVTable();
        if (v84)
        {
          v85 = *(v84 + 16);
          if (v85)
          {
            v86 = *(v85 + 40);
            if (v86)
            {
              v86(v83, v135);
            }
          }
        }

        v87 = value;
        FigCaptionRendererRegionProtocolGetProtocolID();
        v88 = CMBaseObjectGetProtocolVTable();
        if (v88)
        {
          v89 = *(v88 + 16);
          if (v89)
          {
            v90 = *(v89 + 56);
            if (v90)
            {
              v90(v87, 50.0, 50.0);
            }
          }
        }

        v91 = value;
        FigCaptionRendererRegionProtocolGetProtocolID();
        v92 = CMBaseObjectGetProtocolVTable();
        if (v92)
        {
          v93 = *(v92 + 16);
          if (v93)
          {
            v94 = *(v93 + 72);
            if (v94)
            {
              v94(v91, v133, (100 - v134));
            }
          }
        }

        CFArrayAppendValue(*(DerivedStorage + 8), value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }

        FigCFDictionarySetValue();
        v58 = v148;
        if (!v148)
        {
          goto LABEL_122;
        }

        goto LABEL_121;
      }

      if (v150)
      {
        CFRelease(v150);
        v150 = 0;
      }

      v48 = FigCaptionRegionGetCMBaseObject();
      v49 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v49 && !v49(v48, *MEMORY[0x1E69613B0], v7, &v150))
      {
        if (v150)
        {
          FigCaptionDynamicStyleGetInitialValue();
          FigGeometryDimensionMakeFromDictionary();
          FigGeometryDimensionGetCGFloat();
          v51 = v50;
          if (v150)
          {
            CFRelease(v150);
            v150 = 0;
          }
        }

        else
        {
          v51 = 50;
        }

        v107 = FigCaptionRegionGetCMBaseObject();
        v108 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v108)
        {
          v108(v107, *MEMORY[0x1E6961328], v7, &v150);
        }

        if (v150)
        {
          FigCaptionDynamicStyleGetInitialValue();
          FigGeometryDimensionMakeFromDictionary();
          FigGeometryDimensionGetCGFloat();
          v110 = v109;
          if (v150)
          {
            CFRelease(v150);
            v150 = 0;
          }
        }

        else
        {
          v110 = 50;
        }

        v111 = FigCaptionRegionGetCMBaseObject();
        v112 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v112)
        {
          if (!v112(v111, *MEMORY[0x1E6961390], v7, &v150))
          {
            memset(&time, 0, 32);
            FigCaptionDynamicStyleGetInitialValue();
            FigGeometryPointMakeFromDictionary();
            v113 = *&time.start.value;
            v114 = *&time.start.epoch;
            v115 = (v110 / 5.33 + 0.5);
            if (v115 >= 18)
            {
              v115 = 18;
            }

            v135 = v115;
            if (v150)
            {
              CFRelease(v150);
              v150 = 0;
            }

            v116 = FigCaptionRegionGetCMBaseObject();
            v117 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v117)
            {
              if (!v117(v116, *MEMORY[0x1E69613B8], v7, &v150))
              {
                v133 = v113 + v51 / 2;
                v134 = v114 + v110 / 2;
                v118 = FigCaptionDynamicStyleGetInitialValue();
                if (v118 && (v119 = v118, CFStringCompare(*MEMORY[0x1E69613D8], v118, 1uLL)))
                {
                  v120 = 1;
                  if (CFStringCompare(*MEMORY[0x1E69613E0], v119, 1uLL))
                  {
                    if (CFStringCompare(*MEMORY[0x1E69613F0], v119, 1uLL))
                    {
                      if (CFStringCompare(*MEMORY[0x1E69613E8], v119, 1uLL))
                      {
                        v120 = 0;
                        v65 = 0;
                        v64 = 0;
                        if (v47 == kCFCompareEqualTo)
                        {
                          goto LABEL_221;
                        }

                        goto LABEL_186;
                      }

                      v120 = 3;
                      v128 = MEMORY[0x1E6960C30];
                    }

                    else
                    {
                      v120 = 2;
                      v128 = MEMORY[0x1E6960C38];
                    }

                    v163.length = CFAttributedStringGetLength(MutableCopy);
                    v163.location = 0;
                    CFAttributedStringSetAttribute(MutableCopy, v163, *MEMORY[0x1E6960998], *v128);
                    FigCFDictionarySetValue();
                    FigCaptionRendererCaptionSetExtendedLanguageTagString(v153[0]);
                    v64 = 1;
                    v65 = 3;
                    if (v47 == kCFCompareEqualTo)
                    {
LABEL_221:
                      FigCaptionRendererStackLayoutRegionCreate(&value);
                      v129 = value;
                      FigCaptionRendererStackLayoutRegionProtocolGetProtocolID();
                      v130 = CMBaseObjectGetProtocolVTable();
                      if (v130)
                      {
                        v131 = *(v130 + 16);
                        if (v131)
                        {
                          v132 = *(v131 + 8);
                          if (v132)
                          {
                            v132(v129, 0);
                          }
                        }
                      }

                      goto LABEL_98;
                    }

LABEL_186:
                    v63 = v120;
LABEL_93:
                    v70 = v153[0];
                    FigCaptionRendererCaptionProtocolGetProtocolID();
                    v71 = CMBaseObjectGetProtocolVTable();
                    if (v71)
                    {
                      v72 = *(v71 + 16);
                      if (v72)
                      {
                        v73 = *(v72 + 40);
                        if (v73)
                        {
                          v73(v70, 3);
                        }
                      }
                    }

                    FigCaptionRendereriTTRegionCreate(&value);
                    FigCaptionRendererSRTRegionSetWritingMode(value, v63);
                    FigCaptionRendererSRTRegionSetAlignment(value, v64, v65);
                    goto LABEL_98;
                  }
                }

                else
                {
                  v120 = 0;
                }

                v65 = 2;
                v64 = 2;
                if (v47 == kCFCompareEqualTo)
                {
                  goto LABEL_221;
                }

                goto LABEL_186;
              }
            }
          }
        }
      }

LABEL_166:
      Copy = 0;
LABEL_167:
      if (v23)
      {
        CFRelease(v23);
      }

      if (Copy)
      {
        CFRelease(Copy);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      goto LABEL_173;
    }

    v142 = 0;
    v143 = 0;
    v141 = 0.0;
    v52 = v153[0];
    FigCaptionRendererCaptionProtocolGetProtocolID();
    v53 = CMBaseObjectGetProtocolVTable();
    if (v53)
    {
      v54 = *(v53 + 16);
      if (v54)
      {
        v55 = *(v54 + 40);
        if (v55)
        {
          v55(v52, 1);
        }
      }
    }

    v56 = FigCaptionRegionGetCMBaseObject();
    v57 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v57)
    {
      v57(v56, *MEMORY[0x1E6961328], v7, &v142);
    }

    if (!v142)
    {
      goto LABEL_122;
    }

    FigCaptionDynamicStyleGetInitialValue();
    if (FigCaptionGeometryGetCellBasedDimensionFromDictionary())
    {
LABEL_81:
      v58 = v142;
      if (!v142)
      {
LABEL_122:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_124;
      }

LABEL_121:
      CFRelease(v58);
      goto LABEL_122;
    }

    v104 = v141;
    if (v141 == 1.0)
    {
      FigCaptionRegionCopyProperty(cf, *MEMORY[0x1E6961390], v7, &v143);
      if (!v143)
      {
        goto LABEL_81;
      }

      FigCaptionDynamicStyleGetInitialValue();
      FigCFDictionarySetValue();
      v105 = v143;
      if (!v143)
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (v141 <= 1.0)
      {
        goto LABEL_81;
      }

      theString1 = 0;
      if (!FigCaptionRegionCopyProperty(cf, *MEMORY[0x1E69612E0], v7, &theString1) && theString1)
      {
        if (CFStringCompare(theString1, *MEMORY[0x1E6961288], 0))
        {
          v106 = *(DerivedStorage + 24);
          if (v106)
          {
            CFRelease(v106);
            *(DerivedStorage + 24) = 0;
          }
        }

        else
        {
          memset(&time, 0, 32);
          FigGeometryDimensionMake();
          FigGeometryDimensionMake();
          FigGeometryPointMake();
          v139 = 0;
          memset(&v138, 0, 32);
          FigGeometryDimensionMake();
          FigGeometryDimensionMake();
          FigGeometryPointMake();
          v121 = *(DerivedStorage + 24);
          if (v121)
          {
            FigCaptionRendererRegionGetLines(v121, &v139);
            FigCaptionRendererCellStackLayoutRegionGetPosition(*(DerivedStorage + 24), &v138);
          }

          FigCaptionRegionCopyProperty(cf, *MEMORY[0x1E6961390], v7, &v143);
          if (v143)
          {
            v122 = FigCaptionDynamicStyleGetInitialValue();
            if (v143)
            {
              CFRelease(v143);
            }

            if (v122 && !FigCaptionGeometryGetCellBasedPointFromDictionary())
            {
              FigGeometryDimensionMake();
              FigGeometryDimensionMake();
              FigGeometryPointMake();
              *&time.start.value = v136;
              *&time.start.epoch = v137;
            }
          }

          if (v139 >= 1 && v139 == v104 && (v136 = *&time.start.value, v137 = *&time.start.epoch, FigGeometryPointEqualToPoint()))
          {
            v123 = *(DerivedStorage + 24);
            if (v123)
            {
              v123 = CFRetain(v123);
            }

            value = v123;
          }

          else
          {
            FigCaptionRendererCellStackLayoutRegionCreate(&value);
            FigCaptionRendererStackLayoutRegionSetAnimationEnabled(value);
            v124 = CFStringCreateWithFormat(v7, 0, @"%p", value);
            FigCaptionRendererRegionSetRegionID(value, v124);
            if (v124)
            {
              CFRelease(v124);
            }

            FigCaptionRendererRegionSetLines(value, v104);
            FigCaptionRendererRegionSetRegionAnchor(value, 50.0, 50.0);
            v136 = *&time.start.value;
            v137 = *&time.start.epoch;
            FigCaptionRendererCellStackLayoutRegionSetPosition(value, &v136);
            v125 = *(DerivedStorage + 24);
            v126 = value;
            *(DerivedStorage + 24) = value;
            if (v126)
            {
              CFRetain(v126);
            }

            if (v125)
            {
              CFRelease(v125);
            }
          }
        }
      }

      if (value)
      {
        CFArrayAppendValue(*(DerivedStorage + 8), value);
        v127 = v148;
        if (!v148)
        {
          FigCaptionRendererRegionGetRegionID(value, &v148);
          if (v148)
          {
            CFRetain(v148);
            v127 = v148;
          }

          else
          {
            v127 = 0;
          }
        }

        CFDictionarySetValue(v23, @"region", v127);
        if (value)
        {
          CFRelease(value);
        }
      }

      if (v148)
      {
        CFRelease(v148);
      }

      v105 = theString1;
      if (!theString1)
      {
        goto LABEL_81;
      }
    }

    CFRelease(v105);
    goto LABEL_81;
  }

LABEL_173:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_175:
  if (v153[0])
  {
    CFRelease(v153[0]);
    v153[0] = 0;
  }

  if (v149)
  {
    CFRelease(v149);
    v149 = 0;
  }

  if (v147)
  {
    CFRelease(v147);
    v147 = 0;
  }

  if (v151)
  {
    CFRelease(v151);
  }
}

__CFArray *copyRangedValuesOfStyleProperty(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a1)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v6)
    {
      v7 = v6(a1);
    }

    else
    {
      v7 = &stru_1F0B1AFB8;
    }

    Length = CFStringGetLength(v7);
    if (Length >= 1)
    {
      v9 = Length;
      v10 = 0;
      while (1)
      {
        cf = 0;
        value = 0;
        v26 = 0;
        v27 = 0;
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v11)
        {
          if (!v11(a1, v10, a2, v4, &cf, &v26))
          {
            break;
          }
        }

LABEL_21:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v10 >= v9)
        {
          return Mutable;
        }
      }

      v12 = FigCaptionRendererIntervalCreate(&value);
      FigBaseObject = FigBytePumpGetFigBaseObject(v12);
      v15 = v14;
      v16 = value;
      FigCaptionRendererIntervalProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v18 = *(ProtocolVTable + 16);
        if (v18)
        {
          v19 = *(v18 + 16);
          if (v19)
          {
            v19(v16, FigBaseObject, v15);
          }
        }
      }

      if (cf)
      {
        v20 = CFGetTypeID(cf);
        TypeID = FigCaptionDynamicStyleGetTypeID();
        InitialValue = cf;
        if (v20 == TypeID)
        {
          v23 = value;
          InitialValue = FigCaptionDynamicStyleGetInitialValue();
          v24 = v23;
LABEL_18:
          FigCaptionRendererIntervalSetValue(v24, InitialValue);
          CFArrayAppendValue(Mutable, value);
          if (value)
          {
            CFRelease(value);
          }

          v10 += v27;
          goto LABEL_21;
        }
      }

      else
      {
        InitialValue = 0;
      }

      v24 = value;
      goto LABEL_18;
    }
  }

  else
  {
    copyRangedValuesOfStyleProperty_cold_1();
  }

  return Mutable;
}

uint64_t FigCaptionRendererCaptionSetExtendedLanguageTagString(uint64_t a1)
{
  FigCaptionRendererCaptionProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v4 = *(result + 16);
    result += 16;
    v3 = v4;
    if (v4)
    {
      v5 = *(v3 + 56);
      if (v5)
      {

        return v5(a1, @"ja-JP");
      }
    }
  }

  return result;
}

uint64_t FigCaptionRegionCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

uint64_t FigCaptionRendererStackLayoutRegionSetAnimationEnabled(uint64_t a1)
{
  FigCaptionRendererStackLayoutRegionProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v4 = *(result + 16);
    result += 16;
    v3 = v4;
    if (v4)
    {
      v5 = *(v3 + 8);
      if (v5)
      {

        return v5(a1, 0);
      }
    }
  }

  return result;
}

uint64_t FigCaptionRendererRegionSetRegionID(uint64_t a1, uint64_t a2)
{
  FigCaptionRendererRegionProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v6 = *(result + 16);
    result += 16;
    v5 = v6;
    if (v6)
    {
      v7 = *(v5 + 8);
      if (v7)
      {

        return v7(a1, a2);
      }
    }
  }

  return result;
}

uint64_t FigCaptionRendererRegionSetLines(uint64_t a1, uint64_t a2)
{
  FigCaptionRendererRegionProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v6 = *(result + 16);
    result += 16;
    v5 = v6;
    if (v6)
    {
      v7 = *(v5 + 40);
      if (v7)
      {

        return v7(a1, a2);
      }
    }
  }

  return result;
}

uint64_t FigCaptionRendererRegionSetRegionAnchor(uint64_t a1, double a2, double a3)
{
  FigCaptionRendererRegionProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v10 = *(result + 16);
    result += 16;
    v9 = v10;
    if (v10)
    {
      v11 = *(v9 + 56);
      if (v11)
      {
        v7.n128_f64[0] = a2;
        v8.n128_f64[0] = a3;

        return v11(a1, v7, v8);
      }
    }
  }

  return result;
}

uint64_t FigCaptionRendererRegionGetLines(uint64_t a1, uint64_t a2)
{
  FigCaptionRendererRegionProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v6 = *(result + 16);
    result += 16;
    v5 = v6;
    if (v6)
    {
      v7 = *(v5 + 48);
      if (v7)
      {

        return v7(a1, a2);
      }
    }
  }

  return result;
}

uint64_t FigCaptionRendererRegionGetRegionID(uint64_t a1, uint64_t a2)
{
  FigCaptionRendererRegionProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v6 = *(result + 16);
    result += 16;
    v5 = v6;
    if (v6)
    {
      v7 = *(v5 + 16);
      if (v7)
      {

        return v7(a1, a2);
      }
    }
  }

  return result;
}

CFComparisonResult OUTLINED_FUNCTION_2_34(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

uint64_t FigSampleBufferConsumerStartServer()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  v1 = FigXPCServerStart();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v1;
}

uint64_t CreateSampleBufferConsumerServerState(const void *a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x38uLL, 0x10E0040AE0EF783uLL);
  if (v4)
  {
    if (a1)
    {
      v5 = CFRetain(a1);
    }

    else
    {
      v5 = 0;
    }

    result = 0;
    *v4 = v5;
    v4[4] = 0;
    *(v4 + 48) = 0;
  }

  else
  {
    CreateSampleBufferConsumerServerState_cold_1(&v7);
    result = v7;
  }

  *a2 = v4;
  return result;
}

void DisposeSampleBufferConsumerServerState(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      v2 = *a1;
      v3 = *(a1 + 40);
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v4)
      {
        v4(v2, v3);
      }

      *(a1 + 48) = 0;
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    v5 = *(a1 + 24);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 24) = 0;
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 32) = 0;
    }

    FigXPCRelease();

    free(a1);
  }
}

CFTypeID OUTLINED_FUNCTION_5_23(int a1, CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

uint64_t FigVTTCueCreate(uint64_t a1, void *a2)
{
  if (a2)
  {
    FigVTTNodeGetClassID();
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v3 = FigVTTInitializeNodeBaseStorage(DerivedStorage);
      if (!v3)
      {
        *(DerivedStorage + 16) = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    FigVTTCueCreate_cold_1(&v6);
    return v6;
  }

  return v3;
}

void figVTTCue_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }

  FigVTTReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figVTTCue_CopyDebugDesc()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"cue: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figVTTCue_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 1;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figVTTCue_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figVTTCue_setNodeValue(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (v4 = CFGetTypeID(a2), v4 != CFStringGetTypeID()))
  {
    figVTTCue_setNodeValue_cold_1(&v8);
    return v8;
  }

  else
  {
    v5 = *(DerivedStorage + 16);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 16) = 0;
    }

    v6 = *(DerivedStorage + 8);
    *(DerivedStorage + 8) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    return 0;
  }
}

uint64_t figVTTCue_copyNodeValue(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (*(DerivedStorage + 16))
    {
      v5 = CFGetAllocator(a1);
      CFStringCreateMutable(v5, 0);
      FigCFArrayApplyFunction();
      Copy = 0;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (!v7 || (Copy = CFRetain(v7)) == 0)
      {
        v8 = CFGetAllocator(a1);
        Copy = CFStringCreateCopy(v8, @" ");
      }
    }

    v9 = 0;
    *a2 = Copy;
  }

  else
  {
    figVTTCue_copyNodeValue_cold_1(&v11);
    return v11;
  }

  return v9;
}

uint64_t figVTTCue_copyChildNodeArray(uint64_t a1, void *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);
  if (v3)
  {
    v3 = CFRetain(v3);
  }

  *a2 = v3;
  return 0;
}

uint64_t figVTTCue_copyNodeDocumentSerialization(const void *a1, __CFString **a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v62 = 0;
  theDict = 0;
  if (!a2)
  {
    figVTTCue_copyNodeDocumentSerialization_cold_16(&v71);
    value_low = LODWORD(v71.value);
    goto LABEL_128;
  }

  v2 = a2;
  *a2 = 0;
  v4 = FigVTTNodeCopyAttributes(a1, &theDict);
  if (v4)
  {
    value_low = v4;
    v56 = 0;
    v55 = 0;
    goto LABEL_122;
  }

  Value = CFDictionaryGetValue(theDict, @"id");
  v68 = 0;
  v6 = FigVTTNodeCopyAttributes(a1, &v68);
  if (v6)
  {
    value_low = v6;
    v59 = 0;
  }

  else if (v68)
  {
    v7 = CFDictionaryGetValue(v68, @"raw_starttime");
    v8 = CFDictionaryGetValue(v68, @"raw_endtime");
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    if (v8)
    {
      v8 = CFRetain(v8);
    }

    if (v7)
    {
      if (!v8)
      {
LABEL_17:
        v13 = CFDictionaryGetValue(v68, @"endtime");
        if (v13)
        {
          v14 = v13;
          v15 = CFGetTypeID(v13);
          if (v15 == CFDictionaryGetTypeID())
          {
            CMTimeMakeFromDictionary(&v71, v14);
            theArray = v71.value;
            timescale = v71.timescale;
            if ((v71.flags & 0x1D) == 1)
            {
              v71.value = theArray;
              v71.timescale = timescale;
              v16 = FigVTTCopyCMTimeAsTimeStamp(&v71);
              if (v16)
              {
                v8 = v16;
                goto LABEL_22;
              }

              figVTTCue_copyNodeDocumentSerialization_cold_5(&v71);
            }

            else
            {
              figVTTCue_copyNodeDocumentSerialization_cold_4(&v71);
            }
          }

          else
          {
            figVTTCue_copyNodeDocumentSerialization_cold_3(&v71);
          }
        }

        else
        {
          figVTTCue_copyNodeDocumentSerialization_cold_6(&v71);
        }

        value_low = LODWORD(v71.value);
        v59 = 0;
        v8 = 0;
LABEL_23:
        CFRelease(v7);
        if (!v8)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_22:
      v17 = CFGetAllocator(a1);
      v59 = CFStringCreateWithFormat(v17, 0, @"%@ --> %@", v7, v8);
      value_low = 0;
      goto LABEL_23;
    }

    v9 = CFDictionaryGetValue(v68, @"starttime");
    if (v9)
    {
      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(&v71, v10);
        theArray = v71.value;
        timescale = v71.timescale;
        if ((v71.flags & 0x1D) == 1)
        {
          v71.value = theArray;
          v71.timescale = timescale;
          v12 = FigVTTCopyCMTimeAsTimeStamp(&v71);
          if (v12)
          {
            v7 = v12;
            if (!v8)
            {
              goto LABEL_17;
            }

            goto LABEL_22;
          }

          figVTTCue_copyNodeDocumentSerialization_cold_7(&v71);
        }

        else
        {
          figVTTCue_copyNodeDocumentSerialization_cold_2(&v71);
        }
      }

      else
      {
        figVTTCue_copyNodeDocumentSerialization_cold_1(&v71);
      }
    }

    else
    {
      figVTTCue_copyNodeDocumentSerialization_cold_8(&v71);
    }

    value_low = LODWORD(v71.value);
    v59 = 0;
    if (v8)
    {
LABEL_24:
      CFRelease(v8);
    }
  }

  else
  {
    figVTTCue_copyNodeDocumentSerialization_cold_9(&v71);
    v59 = 0;
    value_low = LODWORD(v71.value);
  }

LABEL_25:
  if (v68)
  {
    CFRelease(v68);
  }

  if (value_low)
  {
    v55 = 0;
    v56 = v59;
    goto LABEL_122;
  }

  theArray = 0;
  v71.value = @"regionID";
  *&v71.timescale = @"region";
  v71.epoch = figVTTCue_MapCueAttributeToCueSettings_regionID;
  v72 = @"align";
  v73 = @"align";
  v74 = figVTTCue_MapCueAttributeToCueSettings_passThroughString;
  v75 = @"position";
  v76 = @"position";
  v77 = figVTTCue_MapCueAttributeToCueSettings_fromFigGeometryDimension;
  v78 = @"line";
  v79 = @"line";
  v80 = figVTTCue_MapCueAttributeToCueSettings_fromFigGeometryDimension;
  v81 = @"size";
  v82 = @"size";
  v83 = figVTTCue_MapCueAttributeToCueSettings_fromFigGeometryDimension;
  v84 = @"writingMode";
  v85 = @"vertical";
  v86 = figVTTCue_MapCueAttributeToCueSettings_writingMode;
  v19 = FigVTTNodeCopyAttributes(a1, &theArray);
  if (v19)
  {
    value_low = v19;
    theString = 0;
    Mutable = 0;
    goto LABEL_43;
  }

  if (!theArray)
  {
    figVTTCue_copyNodeDocumentSerialization_cold_11(&v68);
LABEL_145:
    theString = 0;
    Mutable = 0;
    value_low = v68;
    goto LABEL_43;
  }

  v20 = CFGetAllocator(a1);
  theString = CFStringCreateMutable(v20, 0);
  if (!theString)
  {
    figVTTCue_copyNodeDocumentSerialization_cold_10(&v68);
    goto LABEL_145;
  }

  v21 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v21, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  p_epoch = &v71.epoch;
  v24 = 6;
  do
  {
    if (CFDictionaryGetValue(theArray, *(p_epoch - 2)))
    {
      if (*p_epoch)
      {
        v25 = (*p_epoch)();
        if (v25)
        {
          value_low = v25;
          CFRelease(theString);
          theString = 0;
          goto LABEL_43;
        }
      }
    }

    p_epoch += 3;
    --v24;
  }

  while (v24);
  for (i = 8; i != 152; i += 24)
  {
    v27 = *(&v71.value + i);
    v28 = CFDictionaryGetValue(Mutable, v27);
    if (v28)
    {
      v29 = v28;
      v30 = CFGetTypeID(v28);
      if (v30 == CFStringGetTypeID() && CFStringGetLength(v29) >= 1)
      {
        CFStringAppendFormat(theString, 0, @" %@:%@", v27, v29);
      }
    }
  }

  value_low = 0;
LABEL_43:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (value_low)
  {
    goto LABEL_148;
  }

  v68 = 0;
  theArray = 0;
  v66 = 0;
  cf = 0;
  cf1 = 0;
  v31 = CFGetAllocator(a1);
  v32 = CFStringCreateMutable(v31, 0);
  v33 = MEMORY[0x1E695E480];
  if (!v32)
  {
    figVTTCue_copyNodeDocumentSerialization_cold_13(&v71);
    epoch = 0;
    value_low = LODWORD(v71.value);
    goto LABEL_101;
  }

  v34 = FigVTTNodeCopyChildNodeArray(a1, &theArray);
  if (v34)
  {
LABEL_100:
    value_low = v34;
    epoch = 0;
    goto LABEL_101;
  }

  Count = theArray;
  if (!theArray)
  {
    v34 = FigVTTNodeCopyValue(a1, &v62);
    goto LABEL_100;
  }

  v58 = v2;
  epoch = 0;
  v37 = 0;
  allocator = *v33;
LABEL_52:
  Count = CFArrayGetCount(Count);
  while (1)
  {
    if (v37 >= Count)
    {
      value_low = 0;
      v62 = v32;
      v32 = 0;
      goto LABEL_98;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v37);
    v64 = 0;
    if (!ValueAtIndex || (v39 = ValueAtIndex, v40 = CFGetTypeID(ValueAtIndex), v40 != FigVTTNodeGetTypeID()))
    {
      figVTTCue_copyNodeDocumentSerialization_cold_12(&v71);
      value_low = LODWORD(v71.value);
      goto LABEL_98;
    }

    FigVTTNodeGetNodeType(v39, &v64);
    if (v64 == 5)
    {
      break;
    }

LABEL_95:
    ++v37;
    Count = theArray;
    if (theArray)
    {
      goto LABEL_52;
    }
  }

  if (v68)
  {
    CFRelease(v68);
    v68 = 0;
  }

  v41 = FigVTTNodeCopyValue(v39, &v68);
  if (v41)
  {
    goto LABEL_132;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v41 = FigVTTNodeCopyAttributes(v39, &cf);
  if (v41)
  {
    goto LABEL_132;
  }

  if (cf1)
  {
    CFRelease(cf1);
    cf1 = 0;
  }

  v42 = CFGetAllocator(v39);
  v41 = FigVTTNodeCopyProperty(v39, @"WebVTTSpanNode_MarkupElement", v42, &cf1);
  if (v41)
  {
LABEL_132:
    value_low = v41;
    goto LABEL_98;
  }

  if (cf1)
  {
    if (CFEqual(cf1, @"RubyStart"))
    {
      v43 = @"ruby";
LABEL_69:
      CFStringAppendFormat(v32, 0, @"<%@>", v43);
      goto LABEL_95;
    }

    if (CFEqual(cf1, @"RubyEnd"))
    {
      v44 = @"ruby";
    }

    else
    {
      if (CFEqual(cf1, @"RubyTextStart"))
      {
        v43 = @"rt";
        goto LABEL_69;
      }

      if (!CFEqual(cf1, @"RubyTextEnd"))
      {
        goto LABEL_77;
      }

      v44 = @"rt";
    }

    CFStringAppendFormat(v32, 0, @"</%@>", v44);
    goto LABEL_95;
  }

LABEL_77:
  if (v66)
  {
    CFRelease(v66);
    v66 = 0;
  }

  v45 = CFGetAllocator(v39);
  v41 = FigVTTNodeCopyProperty(v39, @"WebVTTSpanNode_StyleReferences", v45, &v66);
  if (v41)
  {
    goto LABEL_132;
  }

  if (epoch)
  {
    CFRelease(epoch);
  }

  v46 = cf;
  MEMORY[0x19A8D3660](&getCSSAttributeToMarkupMapping_once, initCSSAttributeToMarkupMapping);
  v47 = sCSSAttributeToMarkupMapping;
  MEMORY[0x19A8D3660](&getCSSAttributesToProcessArray_once, initAttributesToProcessArray);
  v48 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  epoch = v48;
  if (!v48)
  {
    v41 = FigSignalErrorAtGM();
    if (v41)
    {
      goto LABEL_132;
    }

LABEL_94:
    CFStringAppendFormat(v32, 0, @"%@", v68);
    goto LABEL_95;
  }

  v71.value = v46;
  *&v71.timescale = v47;
  v71.epoch = v48;
  v72 = 0;
  FigCFArrayApplyFunction();
  value_low = v72;
  if (!v72)
  {
    FigCFArrayApplyFunction();
    value_low = v72;
    if (!v72)
    {
      epoch = v71.epoch;
      if (v71.epoch && CFArrayGetCount(v71.epoch) >= 1)
      {
        FigCFArrayApplyFunction();
        CFStringAppendFormat(v32, 0, @"%@", v68);
        v49 = CFArrayGetCount(epoch);
        if (v49 >= 1)
        {
          v50 = v49 + 1;
          do
          {
            v51 = CFArrayGetValueAtIndex(epoch, v50 - 2);
            v52 = CFDictionaryGetValue(v51, @"closeTag");
            if (v52)
            {
              CFStringAppend(v32, v52);
            }

            --v50;
          }

          while (v50 > 1);
        }

        goto LABEL_95;
      }

      goto LABEL_94;
    }
  }

  CFRelease(epoch);
  epoch = 0;
LABEL_98:
  v2 = v58;
  v33 = MEMORY[0x1E695E480];
LABEL_101:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (epoch)
  {
    CFRelease(epoch);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (value_low)
  {
LABEL_148:
    v56 = v59;
    v55 = theString;
    goto LABEL_122;
  }

  if (!v62 || CFStringGetLength(v62) <= 0)
  {
    figVTTCue_copyNodeDocumentSerialization_cold_15(&v71);
LABEL_147:
    value_low = LODWORD(v71.value);
    goto LABEL_148;
  }

  v53 = CFStringCreateMutable(*v33, 0);
  if (!v53)
  {
    figVTTCue_copyNodeDocumentSerialization_cold_14(&v71);
    goto LABEL_147;
  }

  v54 = v53;
  if (Value)
  {
    CFStringAppendFormat(v53, 0, @"%@\n", Value);
  }

  v55 = theString;
  v56 = v59;
  CFStringAppendFormat(v54, 0, @"%@%@\n%@\n", v59, theString, v62);
  value_low = 0;
  *v2 = v54;
LABEL_122:
  if (v62)
  {
    CFRelease(v62);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v56)
  {
    CFRelease(v56);
  }

LABEL_128:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return value_low;
}

uint64_t figVTTCue_setChildNodeArray(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  *(DerivedStorage + 16) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

void figVTTCue_concatenateSpanText(uint64_t a1, __CFString *a2)
{
  appendedString = 0;
  v3 = FigVTTNodeCopyValue(a1, &appendedString);
  v4 = appendedString;
  if (!v3 && appendedString)
  {
    CFStringAppend(a2, appendedString);
    v4 = appendedString;
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t figVTTCue_MapCueAttributeToCueSettings_fromFigGeometryDimension(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  v5 = FigGeometryDimensionMakeFromDictionary();
  if ((v6 & 0x1D00000000) == 0x100000000)
  {
    v7 = v5;
    v8 = v6;
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Mutable)
    {
      v10 = Mutable;
      FigVTTStringifyFigGeometryDimensionAndAppend(Mutable, v7, v8);
      CFDictionarySetValue(a3, a2, v10);
      CFRelease(v10);
      return 0;
    }

    else
    {
      figVTTCue_MapCueAttributeToCueSettings_fromFigGeometryDimension_cold_2(&v13);
      return v13;
    }
  }

  else
  {
    figVTTCue_MapCueAttributeToCueSettings_fromFigGeometryDimension_cold_1(&v12);
    return v12;
  }
}

void figVTTCue_emitOpenTag(const __CFDictionary *a1, __CFString *a2)
{
  Value = CFDictionaryGetValue(a1, @"openTag");
  if (Value)
  {

    CFStringAppend(a2, Value);
  }
}

void initCSSAttributeToMarkupMapping()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ font-weight", figVTTCue_MapAttributeToMarkup_fontWeight);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ font-style", figVTTCue_MapAttributeToMarkup_fontStyle);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ text-decoration", figVTTCue_MapAttributeToMarkup_textDecoration);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ color", figVTTCue_MapAttributeToMarkup_color);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ background-color", figVTTCue_MapAttributeToMarkup_backgroundColor);
  sCSSAttributeToMarkupMapping = Mutable;
}

uint64_t figVTTCue_MapAttributeToMarkup_fontWeight(const void *a1, __CFDictionary *a2)
{
  if (CFEqual(a1, @"bold"))
  {
    v4 = *MEMORY[0x1E695E480];
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%@>", @"b");
    v6 = CFStringCreateWithFormat(v4, 0, @"</%@>", @"b");
    v7 = v6;
    if (v5)
    {
      CFDictionarySetValue(a2, @"openTag", v5);
      if (!v7)
      {
        v8 = v5;
        goto LABEL_10;
      }

      CFDictionarySetValue(a2, @"closeTag", v7);
      CFRelease(v5);
LABEL_8:
      v8 = v7;
LABEL_10:
      CFRelease(v8);
      return 0;
    }

    if (v6)
    {
      CFDictionarySetValue(a2, @"closeTag", v6);
      goto LABEL_8;
    }
  }

  else
  {
    CFEqual(a1, @"normal");
  }

  return 0;
}

uint64_t figVTTCue_MapAttributeToMarkup_fontStyle(const void *a1, __CFDictionary *a2)
{
  if (CFEqual(a1, @"italic"))
  {
    v4 = *MEMORY[0x1E695E480];
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%@>", @"i");
    v6 = CFStringCreateWithFormat(v4, 0, @"</%@>", @"i");
    v7 = v6;
    if (v5)
    {
      CFDictionarySetValue(a2, @"openTag", v5);
      if (!v7)
      {
        v8 = v5;
        goto LABEL_12;
      }

      CFDictionarySetValue(a2, @"closeTag", v7);
      CFRelease(v5);
LABEL_10:
      v8 = v7;
LABEL_12:
      CFRelease(v8);
      return 0;
    }

    if (v6)
    {
      CFDictionarySetValue(a2, @"closeTag", v6);
      goto LABEL_10;
    }
  }

  else if (!CFEqual(a1, @"normal") && CFEqual(a1, @"oblique"))
  {
    FigSignalErrorAtGM();
  }

  return 0;
}

uint64_t figVTTCue_MapAttributeToMarkup_textDecoration(const __CFString *a1, __CFDictionary *a2)
{
  location = CFStringFind(a1, @"none", 1uLL).location;
  v5 = CFStringFind(a1, @"underline", 1uLL).location;
  if (location == -1 && v5 != -1)
  {
    v7 = *MEMORY[0x1E695E480];
    v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%@>", @"u");
    v9 = CFStringCreateWithFormat(v7, 0, @"</%@>", @"u");
    v10 = v9;
    if (v8)
    {
      CFDictionarySetValue(a2, @"openTag", v8);
      if (v10)
      {
        CFDictionarySetValue(a2, @"closeTag", v10);
        CFRelease(v8);
      }

      else
      {
        v10 = v8;
      }

      goto LABEL_11;
    }

    if (v9)
    {
      CFDictionarySetValue(a2, @"closeTag", v9);
LABEL_11:
      CFRelease(v10);
    }
  }

  return 0;
}

uint64_t figVTTCue_MapAttributeToMarkup_color(uint64_t a1, __CFDictionary *a2)
{
  if (a1)
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%@.%@>", @"c", a1);
    v5 = CFStringCreateWithFormat(v3, 0, @"</%@>", @"c");
    v6 = v5;
    if (v4)
    {
      CFDictionarySetValue(a2, @"openTag", v4);
      if (v6)
      {
        CFDictionarySetValue(a2, @"closeTag", v6);
        CFRelease(v4);
      }

      else
      {
        v6 = v4;
      }

      goto LABEL_8;
    }

    if (v5)
    {
      CFDictionarySetValue(a2, @"closeTag", v5);
LABEL_8:
      CFRelease(v6);
    }
  }

  return 0;
}

uint64_t figVTTCue_MapAttributeToMarkup_backgroundColor(uint64_t a1, __CFDictionary *a2)
{
  if (a1)
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%@.bg_%@>", @"c", a1);
    v5 = CFStringCreateWithFormat(v3, 0, @"</%@>", @"c");
    v6 = v5;
    if (v4)
    {
      CFDictionarySetValue(a2, @"openTag", v4);
      if (v6)
      {
        CFDictionarySetValue(a2, @"closeTag", v6);
        CFRelease(v4);
      }

      else
      {
        v6 = v4;
      }

      goto LABEL_8;
    }

    if (v5)
    {
      CFDictionarySetValue(a2, @"closeTag", v5);
LABEL_8:
      CFRelease(v6);
    }
  }

  return 0;
}

void initAttributesToProcessArray()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, @"https://www.w3.org/Style/CSS/ font-weight");
  CFArrayAppendValue(Mutable, @"https://www.w3.org/Style/CSS/ font-style");
  CFArrayAppendValue(Mutable, @"https://www.w3.org/Style/CSS/ text-decoration");
  CFArrayAppendValue(Mutable, @"https://www.w3.org/Style/CSS/ color");
  CFArrayAppendValue(Mutable, @"https://www.w3.org/Style/CSS/ background-color");
  sCSSAttributesToProcessArray = Mutable;
}

uint64_t FigJSONParserStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigJSONParserStartServer_block_invoke;
  block[3] = &unk_1E7481298;
  block[4] = &v3;
  if (FigJSONParserStartServer_sFigJSONParserServerSetupOnce != -1)
  {
    dispatch_once(&FigJSONParserStartServer_sFigJSONParserServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __FigJSONParserStartServer_block_invoke(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = Mutable;
    FigCFDictionarySetInt32();
    *(*(*(a1 + 32) + 8) + 24) = FigXPCServerStart();
    CFRelease(v4);
  }

  else
  {
    __FigJSONParserStartServer_block_invoke_cold_1(a1 + 32);
  }
}

void __fjp_ensureClientEstablished_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v1 = Mutable;
    FigCFDictionarySetValue();
    _MergedGlobals_31 = FigXPCRemoteClientCreate();
    CFRelease(v1);
  }

  else
  {
    __fjp_ensureClientEstablished_block_invoke_cold_1();
  }
}

uint64_t FigAssetDownloaderStartServer()
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  else
  {
    FigServer_IsMediaplaybackd();
    return FigXPCServerStart();
  }
}

void FigCFRelease_2(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t assetDownloaderServer_init(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t assetDownloaderServer_registerServerClassOnce(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

void __assetDownloadServer_handleLoadMetataMessage_block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (!v1[56])
  {
    if (__assetDownloadServer_handleLoadMetataMessage_block_invoke_cold_1(v1, v2, &v3))
    {
      return;
    }

    v1 = v3;
  }

  CFRelease(v1);
}

void OUTLINED_FUNCTION_4_29(void *a1@<X8>)
{
  v3 = *(v1 + 32);

  xpc_connection_send_message(v3, a1);
}

uint64_t FigStreamingAssetDownloadOrchestratorCreate(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, uint64_t a8, dispatch_object_t object, void *a10, void *a11)
{
  cf[16] = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2 || (v16 = CFGetTypeID(a2), v16 != FigAssetGetTypeID()))
  {
    FigStreamingAssetDownloadOrchestratorCreate_cold_11(cf);
LABEL_127:
    v62 = LODWORD(cf[0]);
LABEL_128:
    if (!v62)
    {
      return v62;
    }

    goto LABEL_129;
  }

  if (a6)
  {
    v17 = CFGetTypeID(a6);
    if (v17 != CFDictionaryGetTypeID())
    {
      FigStreamingAssetDownloadOrchestratorCreate_cold_1(cf);
      goto LABEL_127;
    }
  }

  if (!a11)
  {
    FigStreamingAssetDownloadOrchestratorCreate_cold_10(cf);
    goto LABEL_127;
  }

  cf[0] = 0;
  CMBaseObject = FigAssetGetCMBaseObject(a2);
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v20 = v19 && !v19(CMBaseObject, @"assetProperty_AssetType", a1, cf) && !FigCFEqual();
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v20)
  {
    v62 = FigSignalErrorAtGM();
    goto LABEL_128;
  }

  if (a3)
  {
    cf[0] = 0;
    v21 = FigAssetGetCMBaseObject(a2);
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v22 || v22(v21, @"assetProperty_CreationOptionsDictionary", a1, cf))
    {
      v25 = 1;
    }

    else
    {
      if (cf[0] && (URLValue = FigCFDictionaryGetURLValue()) != 0 && !CFEqual(a3, URLValue))
      {
        v64 = 1727;
      }

      else
      {
        v24 = CFURLGetTypeID();
        if (v24 == CFGetTypeID(a3))
        {
          v25 = 0;
          goto LABEL_22;
        }

        v64 = 1732;
      }

      FigStreamingAssetDownloadOrchestratorCreate_cold_2(v64, &v70);
      v25 = v70;
    }

LABEL_22:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v25)
    {
      return 0;
    }
  }

  FigAssetDownloaderGetClassID();
  v26 = CMDerivedObjectCreate();
  if (v26)
  {
    goto LABEL_115;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v28 = CFRetain(a1);
  }

  else
  {
    v28 = 0;
  }

  *(DerivedStorage + 8) = v28;
  *(DerivedStorage + 16) = CFRetain(a2);
  if (a4)
  {
    *(DerivedStorage + 40) = CFRetain(a4);
    if (!a5)
    {
      a5 = a4;
    }

    goto LABEL_34;
  }

  *(DerivedStorage + 40) = 0;
  if (a5)
  {
LABEL_34:
    v29 = CFRetain(a5);
    goto LABEL_35;
  }

  v29 = 0;
LABEL_35:
  *(DerivedStorage + 48) = v29;
  if (a7)
  {
    v30 = CFRetain(a7);
    *(DerivedStorage + 56) = v30;
    v31 = (DerivedStorage + 56);
    if (v30)
    {
      FigStreamingAssetDownloadConfigCopyAssetNameAndImage(v30, (DerivedStorage + 80), (DerivedStorage + 88));
      DownloadsInterstitialAssets = FigStreamingAssetDownloadConfigGetDownloadsInterstitialAssets(*(DerivedStorage + 56));
      goto LABEL_41;
    }
  }

  else
  {
    *(DerivedStorage + 56) = 0;
    v31 = (DerivedStorage + 56);
  }

  if (!a6)
  {
    goto LABEL_42;
  }

  DownloadsInterstitialAssets = FigCFDictionaryGetBooleanIfPresent();
LABEL_41:
  *(DerivedStorage + 442) = DownloadsInterstitialAssets;
LABEL_42:
  v26 = FigRetainProxyCreate();
  if (v26)
  {
    goto LABEL_115;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 448) = Mutable;
  if (!Mutable)
  {
    FigStreamingAssetDownloadOrchestratorCreate_cold_9(cf);
    goto LABEL_127;
  }

  v34 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 456) = v34;
  if (!v34)
  {
    FigStreamingAssetDownloadOrchestratorCreate_cold_8(cf);
    goto LABEL_127;
  }

  if (a3)
  {
    v26 = FigCFURLCreateWithSuffixedExtension();
    if (v26)
    {
      goto LABEL_115;
    }

    *(DerivedStorage + 24) = 0;
  }

  if (a8)
  {
    if (object)
    {
      if (a10)
      {
        dispatch_retain(object);
        *(DerivedStorage + 296) = object;
        __copy_assignment_8_8_t0w8_pa0_62591_8_pa0_48202_16_pa0_13082_24_pa0_11046_32_pa0_49729_40_pa0_62126_48_pa0_6100_56_pa0_11999_64_pa0_10804_72_pa0_24756_80_pa0_9655_88((DerivedStorage + 200), a10);
        v35 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        *(DerivedStorage + 192) = v35;
        if (!v35)
        {
          FigStreamingAssetDownloadOrchestratorCreate_cold_7(cf);
          goto LABEL_127;
        }
      }
    }
  }

  v69 = a2;
  *(DerivedStorage + 160) = 257;
  *(DerivedStorage + 162) = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  *(DerivedStorage + 64) = CFDictionaryCreateCopy(AllocatorForMedia, a6);
  if (a6)
  {
    cf[0] = 0;
    if (CFDictionaryGetValueIfPresent(a6, @"AssetDownloaderCreateOption_ProgressMonitor", cf))
    {
      v37 = cf[0];
      if (cf[0])
      {
        v37 = CFRetain(cf[0]);
      }

      *(DerivedStorage + 384) = v37;
    }

    Value = CFDictionaryGetValue(a6, @"AssetDownloaderCreateOption_ClientBundleIdentifier");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(DerivedStorage + 72) = Value;
    if (!*(DerivedStorage + 80))
    {
      v39 = CFDictionaryGetValue(a6, @"AssetDownloaderCreateOption_AssetName");
      if (v39)
      {
        v39 = CFRetain(v39);
      }

      *(DerivedStorage + 80) = v39;
    }

    if (!*(DerivedStorage + 88))
    {
      v40 = CFDictionaryGetValue(a6, @"AssetDownloaderCreateOption_AssetImage");
      if (v40)
      {
        v40 = CFRetain(v40);
      }

      *(DerivedStorage + 88) = v40;
    }

    v41 = CFDictionaryGetValue(a6, @"AssetDownloaderCreateOption_DebugIdentifier");
    if (v41)
    {
      v41 = CFRetain(v41);
    }

    v42 = &stru_1F0B1AFB8;
    if (v41)
    {
      v42 = v41;
    }

    *(DerivedStorage + 32) = v42;
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    if (FigCFDictionaryGetInt64IfPresent())
    {
      *(DerivedStorage + 120) = 1;
    }

    if (FigCFDictionaryGetInt64IfPresent())
    {
      *(DerivedStorage + 121) = 1;
    }

    if (FigCFDictionaryGetCGSizeIfPresent())
    {
      *(DerivedStorage + 96) = 1;
    }

    if (FigCFDictionaryGetInt64IfPresent())
    {
      *(DerivedStorage + 144) = 1;
    }

    if (FigCFDictionaryGetBooleanIfPresent())
    {
      *(DerivedStorage + 161) = *(DerivedStorage + 163);
    }
  }

  v43 = *MEMORY[0x1E695E480];
  v26 = FigNetworkHistoryCreate();
  if (!v26)
  {
    v66 = v43;
    if (FigIsItOKToLogURLs())
    {
      v44 = v69;
      v45 = FPSupport_GetAssetDoNotLogURLs(v69) == 0;
    }

    else
    {
      v45 = 0;
      v44 = v69;
    }

    *(DerivedStorage + 584) = v45;
    *(DerivedStorage + 564) = 0;
    v46 = dispatch_queue_create("com.apple.coremedia.streamingssetdownloadorchestrator.state", 0);
    *DerivedStorage = v46;
    if (v46)
    {
      *(DerivedStorage + 352) = 0;
      *(DerivedStorage + 360) = DerivedStorage + 352;
      *(DerivedStorage + 536) = 0;
      *(DerivedStorage + 544) = DerivedStorage + 536;
      v47 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      *(DerivedStorage + 496) = v47;
      if (v47)
      {
        *(DerivedStorage + 504) = 1;
        *(DerivedStorage + 512) = 6;
        v48 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
        *(DerivedStorage + 368) = v48;
        if (v48)
        {
          FigGetAllocatorForMedia();
          v26 = FigMetricEventTimelineCreate();
          if (!v26)
          {
            v49 = FigGetAllocatorForMedia();
            v26 = FigMetricEventDownloadSummarySubscriberCreate(v49, *(DerivedStorage + 608), (DerivedStorage + 616));
            if (!v26)
            {
              v50 = CMBaseObjectGetDerivedStorage();
              if (!FigReportingAgentCreateFromAsset(v44))
              {
                FigStreamingAssetDownloadOrchestratorCreate_cold_3(v50, (v50 + 632), a6);
              }

              if (dword_1EAF16DB8)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              if ((*(DerivedStorage + 176) || *(DerivedStorage + 177)) && dword_1EAF16DB8)
              {
                v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v53 = *v31;
              v54 = FigCFCopyCompactDescription();
              if (v53)
              {
                v55 = v69;
                if (dword_1EAF16DB8)
                {
                  v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                dworch_logDownloadConfig(0, @"input config: ", *v31);
              }

              else
              {
                v55 = v69;
                if (dword_1EAF16DB8)
                {
                  v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                v57 = CMBaseObjectGetDerivedStorage();
                dworch_logMediaSelectionArray(0, @"primary", *(v57 + 40));
                v58 = *(v57 + 48);
                if (*(v57 + 40) == v58)
                {
                  if (dword_1EAF16DB8)
                  {
                    v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }
                }

                else
                {
                  dworch_logMediaSelectionArray(0, @"aux", v58);
                }
              }

              if (!*(DerivedStorage + 384) && (v61 = FigStreamingAssetDownloadProgressMonitorCreate(v66, v55, a6, 0, *DerivedStorage, &FigStreamingAssetDownloadOrchestratorCreate_progressMonitorCallbacks, (DerivedStorage + 384)), v61))
              {
                v62 = v61;
              }

              else
              {
                v62 = 0;
                *a11 = 0;
              }

              goto LABEL_112;
            }
          }

          goto LABEL_115;
        }

        FigStreamingAssetDownloadOrchestratorCreate_cold_4(cf);
      }

      else
      {
        FigStreamingAssetDownloadOrchestratorCreate_cold_5(cf);
      }
    }

    else
    {
      FigStreamingAssetDownloadOrchestratorCreate_cold_6(cf);
    }

    goto LABEL_127;
  }

LABEL_115:
  v62 = v26;
LABEL_129:
  v54 = 0;
LABEL_112:
  if (v54)
  {
    CFRelease(v54);
  }

  return v62;
}

void dworch_progressUpdateCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_progressUpdateCallback_cold_1();
  }

  else
  {

    dworch_sendProgressUpdateCallback(a1, a3, a4);
  }
}

void *__copy_assignment_8_8_t0w8_pa0_62591_8_pa0_48202_16_pa0_13082_24_pa0_11046_32_pa0_49729_40_pa0_62126_48_pa0_6100_56_pa0_11999_64_pa0_10804_72_pa0_24756_80_pa0_9655_88(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  result[6] = a2[6];
  result[7] = a2[7];
  result[8] = a2[8];
  result[9] = a2[9];
  result[10] = a2[10];
  result[11] = a2[11];
  return result;
}

uint64_t FigStreamingAssetDownloadOrchestratorTestAlternateChoice(const void *a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *MEMORY[0x1E695E480];
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return dworch_selectAlternates_chooseAlternatesFromCreationOptions(0, v4, a1, v8, a3, a4);
}

uint64_t dworch_selectAlternates_chooseAlternatesFromCreationOptions(uint64_t a1, const __CFAllocator *a2, const void *a3, unsigned __int8 *a4, void *a5, void *a6)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v64 = 0;
  v65 = 0;
  CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    dworch_selectAlternates_chooseAlternatesFromCreationOptions_cold_1(cf);
    v33 = LODWORD(cf[0]);
    goto LABEL_141;
  }

  v12 = Mutable;
  v62 = a5;
  v13 = dworch_selectAlternates_installDeviceCapabilityFilters(a2, a3);
  if (v13)
  {
    goto LABEL_144;
  }

  v61 = a6;
  v63 = v12;
  v14 = *a4;
  v15 = *(a4 + 1);
  v16 = *(a4 + 2);
  v17 = a4[24];
  v18 = a4[25];
  v20 = *(a4 + 4);
  v19 = *(a4 + 5);
  v21 = a4[48];
  v22 = *(a4 + 7);
  v23 = a4[64];
  v24 = a4[66];
  v25 = a4[68];
  v26 = *(a4 + 9);
  cf[0] = 0;
  if (v25)
  {
    v27 = 1;
  }

  else
  {
    v27 = 4;
  }

  if (v23)
  {
    v28 = v27;
  }

  else
  {
    v28 = 1;
  }

  v58 = v19;
  v59 = v20;
  v60 = v18;
  if (v25)
  {
    v29 = 2;
  }

  else if (v23)
  {
    if (v18)
    {
      v29 = 7;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 4 * (v18 != 0);
  }

  v30 = FigAlternatePreferredVideoFormatFilterCreate(a2, v28, v29, cf);
  v31 = cf[0];
  if (v30)
  {
    goto LABEL_51;
  }

  v30 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  v31 = cf[0];
  if (v30)
  {
    goto LABEL_51;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v30 = FigAlternateSuppressAudioOnlyFilterCreate(a2, cf);
  v31 = cf[0];
  if (v30)
  {
    goto LABEL_51;
  }

  v30 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  v31 = cf[0];
  if (v30)
  {
    goto LABEL_51;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v30 = v24 ? FigAlternateLosslessAudioPreferenceFilterCreate(a2, 0, cf) : FigAlternateLossyAudioPreferenceFilterCreate(a2, cf);
  v31 = cf[0];
  if (v30)
  {
    goto LABEL_51;
  }

  v30 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  v31 = cf[0];
  if (v30)
  {
    goto LABEL_51;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (v21)
  {
    v30 = FigAlternateMaximumSampleRatePreferenceFilter(a2, v26, cf, v22);
    v31 = cf[0];
    if (v30)
    {
      goto LABEL_51;
    }

    v30 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
    v31 = cf[0];
    if (v30)
    {
      goto LABEL_51;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  v30 = FigAlternateMinimumRequiredPresentationSizeFilterCreate(a2, cf, v15, v16);
  v31 = cf[0];
  if (v30 || (v30 = FigAlternateSelectionBossAddFilter(a3, cf[0]), v31 = cf[0], v30))
  {
LABEL_51:
    v33 = v30;
    v12 = v63;
    goto LABEL_52;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

LABEL_39:
  v12 = v63;
  if (v17)
  {
    v32 = FigAlternateMinimumRequiredBitrateFilterCreate(a2, v59, cf);
    v31 = cf[0];
    if (v32 || (v32 = FigAlternateSelectionBossAddFilter(a3, cf[0]), v31 = cf[0], v32))
    {
LABEL_96:
      v33 = v32;
      goto LABEL_52;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }
  }

  if (!v60)
  {
    goto LABEL_55;
  }

  v32 = FigAlternateMinimumRequiredBitrateForHEVCFilterCreate(a2, v58, cf);
  v31 = cf[0];
  if (v32)
  {
    goto LABEL_96;
  }

  v33 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  v31 = cf[0];
  if (v33 || !cf[0])
  {
LABEL_52:
    if (!v31)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v33 = 0;
LABEL_53:
  CFRelease(v31);
LABEL_54:
  if (v33)
  {
    goto LABEL_139;
  }

LABEL_55:
  v34 = a4[25];
  v35 = a4[64];
  v36 = a4[68];
  cf[0] = 0;
  v37 = FigAlternateContinuousFramesOnlyFilterCreate(a2, cf);
  if (v37)
  {
    goto LABEL_88;
  }

  v37 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  if (v37)
  {
    goto LABEL_88;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v38 = v36 ? 1 : 4;
  v39 = v35 ? v38 : 1;
  if (v36)
  {
    v40 = 2;
  }

  else if (v35)
  {
    v40 = v34 ? 7 : 0;
  }

  else
  {
    v40 = 4 * (v34 != 0);
  }

  v37 = FigAlternatePreferredVideoFormatFilterCreate(a2, v39, v40, cf);
  if (v37)
  {
    goto LABEL_88;
  }

  v37 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  if (v37)
  {
    goto LABEL_88;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v37 = FigAlternateHighestRankingScoreFilterCreate(*MEMORY[0x1E695E480], cf);
  if (v37)
  {
    goto LABEL_88;
  }

  v37 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  if (v37)
  {
    goto LABEL_88;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v37 = FigAlternatePlaybackScoreAndBitRateFilterCreate(a2, cf);
  if (v37)
  {
    goto LABEL_88;
  }

  v37 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  if (v37)
  {
    goto LABEL_88;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v37 = FigAlternateFinalSelectionHighestPeakBitRateFilterCreate(a2, cf);
  if (v37)
  {
LABEL_88:
    v33 = v37;
    v41 = cf[0];
    goto LABEL_89;
  }

  v33 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  v41 = cf[0];
  if (v33 || !cf[0])
  {
LABEL_89:
    if (!v41)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  v33 = 0;
LABEL_90:
  CFRelease(v41);
LABEL_91:
  if (v33)
  {
    goto LABEL_139;
  }

  v42 = *(a4 + 9);
  cf[0] = 0;
  v43 = FigAlternateDefaultAudioLayoutPreferenceFilterCreate(a2, v42, cf);
  v44 = cf[0];
  if (v43)
  {
    v33 = v43;
    goto LABEL_99;
  }

  v33 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  v44 = cf[0];
  if (v33 || !cf[0])
  {
LABEL_99:
    if (!v44)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  v33 = 0;
LABEL_100:
  CFRelease(v44);
LABEL_101:
  if (v33)
  {
    goto LABEL_139;
  }

  v13 = dworch_selectAlternates_chooseAppropriateAlternate(a3, &v65);
  if (v13)
  {
    goto LABEL_144;
  }

  v13 = FigAlternateSelectionBossRemoveFilter(a3, @"DefaultAudioLayoutPreference");
  if (v13)
  {
    goto LABEL_144;
  }

  v45 = v65;
  if (!v65)
  {
    CFRelease(v12);
    v33 = 0;
    goto LABEL_141;
  }

  if (!a4[67] && !a4[65] || FigAlternateGetAudioChannelCount(v65, *(a4 + 9), 0) > 2)
  {
    goto LABEL_126;
  }

  PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(v45);
  v47 = *(a4 + 9);
  cf[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v49 = FigAlternatePreferredAudioFormatFilterCreate(a2, 7u, 0, 0, 0, v47, 0, cf);
  if (v49)
  {
    goto LABEL_119;
  }

  v49 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
  if (v49)
  {
    goto LABEL_119;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v50 = DerivedStorage ? *(DerivedStorage + 584) : 1;
  v49 = FigAlternateAllowListWithURLFilterCreate(a2, PlaylistAlternateURL, 700, v50, cf);
  if (v49)
  {
LABEL_119:
    v33 = v49;
    v51 = cf[0];
  }

  else
  {
    v33 = FigAlternateSelectionBossAddFilter(a3, cf[0]);
    v51 = cf[0];
    if (!v33 && cf[0])
    {
      v33 = 0;
LABEL_121:
      CFRelease(v51);
      goto LABEL_122;
    }
  }

  if (v51)
  {
    goto LABEL_121;
  }

LABEL_122:
  if (v33)
  {
    goto LABEL_139;
  }

  v13 = dworch_selectAlternates_chooseAppropriateAlternate(a3, &v64);
  if (!v13)
  {
    v13 = FigAlternateSelectionBossRemoveFilter(a3, @"PreferredAudioFormat");
    if (!v13)
    {
      v13 = FigAlternateSelectionBossRemoveFilter(a3, @"AllowListURLFilter");
      if (!v13)
      {
LABEL_126:
        v53 = v64;
        v52 = v65;
        if (a4[67] && v64)
        {
          v54 = v62;
          if (v65)
          {
            CFRelease(v65);
            v52 = 0;
            v65 = 0;
          }
        }

        else
        {
          v54 = v62;
          if (FigCFEqual() && v53)
          {
            CFRelease(v53);
            v53 = 0;
            v64 = 0;
          }
        }

        if (dword_1EAF16DB8)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v54)
        {
          *v54 = v52;
          v65 = 0;
        }

        v33 = 0;
        if (v61)
        {
          *v61 = v53;
          v64 = 0;
        }

        goto LABEL_139;
      }
    }
  }

LABEL_144:
  v33 = v13;
LABEL_139:
  v56 = v65;
  CFRelease(v12);
  if (v56)
  {
    CFRelease(v56);
  }

LABEL_141:
  if (v64)
  {
    CFRelease(v64);
  }

  return v33;
}

void dworch_sendProgressUpdateCallbackOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_sendProgressUpdateCallbackOnCallbackQueue_cold_1();
  }

  else
  {
    v3 = *(DerivedStorage + 256);
    if (v3)
    {
      v3(a1[1], *a1, a1[7], a1[8]);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

uint64_t dworch_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, dworch_invalidateDispatch);
  return v5;
}

void dworch_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dworch_invalidateGuts(a1);
  dworch_relinquishAccessToDestinationURL(a1);
  FigSymptomsReportStreamingAssetDownloadEnd((DerivedStorage + 656));
  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 32) = 0;
  }

  v4 = *(DerivedStorage + 592);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 592) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

CFStringRef dworch_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  v5 = DerivedStorage[3];
  v4 = DerivedStorage[4];
  v6 = DerivedStorage[2];
  v7 = CMBaseObjectGetDerivedStorage();
  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || !*(v7 + 584))
  {
    v5 = @"[]";
  }

  return CFStringCreateWithFormat(v3, 0, @"[FigStreamingAssetDownloadOrchestrator %p debugIdentifier:%@ asset %p asset %@ destinationURL %@]", a1, v4, v6, v6, v5);
}

uint64_t dworch_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v12 = 0;
  context[0] = a1;
  context[1] = a2;
  v13 = a3;
  dispatch_sync_f(*DerivedStorage, context, dworch_copyPropertyDispatch);
  result = v12;
  if (!v12)
  {
    *a4 = v11;
  }

  return result;
}

uint64_t dworch_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v10 = 0;
  context[0] = a1;
  context[1] = a2;
  context[2] = a3;
  dispatch_sync_f(*DerivedStorage, context, dworch_setPropertyDispatch);
  return v9;
}

uint64_t dworch_invalidateDispatch(uint64_t a1)
{
  result = dworch_invalidateGuts(*a1);
  *(a1 + 8) = 0;
  return result;
}

uint64_t dworch_removeAssetListeners()
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

void dworch_freeDownloadMediaProgressItem(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

void dworch_downloadMedia_downloadSucceededCallback(uint64_t a1, const void *a2, uint64_t a3, const void *a4, const __CFDictionary *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    dworch_downloadMedia_downloadSucceededCallback_cold_1(&v48);
  }

  else if (FigCFArrayContainsValue())
  {
    if (a5)
    {
      if (dword_1EAF16DB8)
      {
        LODWORD(start.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      Value = CFDictionaryGetValue(a5, @"AssetDownloaderPayloadKey_SelectedMediaArray");
      v11 = CMBaseObjectGetDerivedStorage() + 536;
      while (1)
      {
        v11 = *v11;
        if (!v11)
        {
          return;
        }

        if (*(v11 + 16) == a4)
        {
          *(v11 + 48) = 1;
          v12 = *(v11 + 40);
          *(v11 + 40) = Value;
          if (Value)
          {
            CFRetain(Value);
          }

          if (v12)
          {
            CFRelease(v12);
          }

          if (v11 == *(DerivedStorage + 536))
          {
            v13 = *(v11 + 24);
            if (v13)
            {
              CFRelease(v13);
              *(v11 + 24) = 0;
            }
          }

          v14 = CMBaseObjectGetDerivedStorage();
          v15 = *(v14 + 536);
          if (v15)
          {
            v16 = (v14 + 544);
            v45 = *MEMORY[0x1E6960CC0];
            v17 = *(MEMORY[0x1E6960CC0] + 16);
            while (1)
            {
              v18 = v15;
              v15 = *v15;
              v19 = CMBaseObjectGetDerivedStorage();
              memset(&v48, 0, sizeof(v48));
              CMTimeMakeFromDictionary(&duration.start, *(v19 + 376));
              *&start.value = v45;
              start.epoch = v17;
              CMTimeRangeMake(&v48, &start, &duration.start);
              v20 = *(v19 + 8);
              duration = v48;
              v21 = CMTimeRangeCopyAsDictionary(&duration, v20);
              if (v21)
              {
                dworch_downloadMedia_downloadSucceededCallback_cold_2(v18, a2, v21, &duration);
              }

              else
              {
                dworch_downloadMedia_downloadSucceededCallback_cold_3(&duration);
              }

              value_low = LODWORD(duration.start.value);
              if (LODWORD(duration.start.value))
              {
                break;
              }

              if (!*(v18 + 48))
              {
                goto LABEL_38;
              }

              v23 = *(v18 + 40);
              v24 = CMBaseObjectGetDerivedStorage();
              v25 = FigCFWeakReferenceHolderCopyReferencedObject();
              if (v25)
              {
                v26 = v25;
                v27 = malloc_type_calloc(1uLL, 0x58uLL, 0x10E004049432B73uLL);
                if (v27)
                {
                  v28 = v27;
                  if (a2)
                  {
                    v29 = CFRetain(a2);
                  }

                  else
                  {
                    v29 = 0;
                  }

                  *v28 = v29;
                  v28[1] = v26;
                  if (v23)
                  {
                    v30 = CFRetain(v23);
                  }

                  else
                  {
                    v30 = 0;
                  }

                  v28[6] = v30;
                  dispatch_async_f(*(v24 + 296), v28, dworch_sendDidFinishDownloadForMediaSelectionCallbackOnCallbackQueue);
                }

                else if ((dworch_downloadMedia_downloadSucceededCallback_cold_4(v26, &v48) & 1) == 0)
                {
                  value_low = LODWORD(v48.start.value);
                  goto LABEL_50;
                }
              }

              v31 = *v18;
              v32 = *(v18 + 8);
              v33 = (*v18 + 8);
              if (!*v18)
              {
                v33 = v16;
              }

              *v33 = v32;
              *v32 = v31;
              dworch_freeDownloadMediaProgressItem(v18);
              if (!v15)
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
LABEL_38:
            v34 = CMBaseObjectGetDerivedStorage();
            v35 = CMBaseObjectGetDerivedStorage();
            v36 = *(v35 + 496);
            if (v36)
            {
              v37.length = CFArrayGetCount(*(v35 + 496));
            }

            else
            {
              v37.length = 0;
            }

            v37.location = 0;
            FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v36, v37, a4);
            v39 = dworch_downloadMedia_removeMediaDownloaderListeners(a2, a4);
            if (v39)
            {
              value_low = v39;
            }

            else
            {
              CMBaseObject = FigAssetDownloaderGetCMBaseObject(a4);
              if (CMBaseObject)
              {
                v41 = CMBaseObject;
                v42 = *(*(CMBaseObjectGetVTable() + 8) + 24);
                if (v42)
                {
                  v42(v41);
                }
              }

              if (FirstIndexOfValue != -1)
              {
                CFArrayRemoveValueAtIndex(*(v34 + 496), FirstIndexOfValue);
              }

              if (!*(v34 + 328) && (*(v34 + 520) || (v44 = *(v34 + 496)) != 0 && CFArrayGetCount(v44)))
              {
                if (*(v34 + 556) != 1)
                {
                  return;
                }

                started = dworch_downloadMedia_startNextMediaSelectionDownload(a2);
              }

              else
              {
                *(v34 + 553) = 1;
                started = dworch_downloadMedia_checkIfStageComplete(a2);
              }

              value_low = started;
              if (!started)
              {
                return;
              }
            }
          }

          goto LABEL_50;
        }
      }
    }

    dworch_downloadMedia_downloadSucceededCallback_cold_5(&v48);
  }

  else
  {
    dworch_downloadMedia_downloadSucceededCallback_cold_6(&v48);
  }

  value_low = LODWORD(v48.start.value);
  if (LODWORD(v48.start.value))
  {
LABEL_50:
    dworch_transitionToTerminalStateWithOSStatus(a2, value_low);
  }
}