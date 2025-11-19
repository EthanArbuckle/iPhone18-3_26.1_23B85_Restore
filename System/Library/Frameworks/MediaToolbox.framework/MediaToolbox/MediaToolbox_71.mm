uint64_t itemceleste_GetCurrentTime(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 24);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t itemceleste_CopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 24);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3, a4, a5);
}

uint64_t itemceleste_MakeReadyForInspection(uint64_t a1, const __CFArray *a2, _BYTE *a3)
{
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v12.length = CFArrayGetCount(a2);
    v12.location = 0;
    if (CFArrayContainsValue(a2, v12, @"InitialSamples"))
    {
      *(DerivedStorage + 40) = 1;
      v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"CoreMedia Playback - %s", DerivedStorage + 42);
      FigResetDisplaySleepTimerOnBehalfOfSceneWithPID(v6, -1);
      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  v7 = *(DerivedStorage + 24);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v8)
  {
    result = v8(v7, a2, &v11);
    LOBYTE(v8) = v11;
    if (result)
    {
      v10 = 0;
    }

    else
    {
      v10 = v11 == 0;
    }

    if (v10)
    {
      LOBYTE(v8) = 0;
      result = 0;
      goto LABEL_15;
    }
  }

  else
  {
    result = 4294954514;
  }

  if (*(DerivedStorage + 40))
  {
    *(DerivedStorage + 40) = 0;
  }

LABEL_15:
  *a3 = v8;
  return result;
}

uint64_t itemceleste_CopyCommonMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 24);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t itemceleste_CopyChapterImageData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 24);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t itemceleste_GetNextThumbnailTime(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 24);
  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v8)
  {
    return 4294954514;
  }

  v12 = v10;
  v13 = v11;
  return v8(v7, &v12, a3, a4);
}

uint64_t itemceleste_SetCurrentTimeWithRange(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemceleste_interruptIfNecessaryForSeeking();
  v10 = *(DerivedStorage + 24);
  v17 = *a2;
  v18 = *(a2 + 2);
  v15 = *a4;
  v16 = *(a4 + 2);
  v13 = *a5;
  v14 = *(a5 + 2);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v11)
  {
    return 4294954514;
  }

  v23 = v17;
  v24 = v18;
  v21 = v15;
  v22 = v16;
  v19 = v13;
  v20 = v14;
  return v11(v10, &v23, a3, &v21, &v19);
}

uint64_t itemceleste_SetTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 24);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t itemceleste_CopyFormatReader(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 24);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t itemceleste_SeekToDateWithID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemceleste_interruptIfNecessaryForSeeking();
  v6 = *(DerivedStorage + 24);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2, a3);
}

uint64_t itemceleste_SetCurrentTimeWithRangeAndID(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemceleste_interruptIfNecessaryForSeeking();
  v12 = *(DerivedStorage + 24);
  v19 = *a2;
  v20 = *(a2 + 2);
  v17 = *a4;
  v18 = *(a4 + 2);
  v15 = *a5;
  v16 = *(a5 + 2);
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v13)
  {
    return 4294954514;
  }

  v25 = v19;
  v26 = v20;
  v23 = v17;
  v24 = v18;
  v21 = v15;
  v22 = v16;
  return v13(v12, &v25, a3, &v23, &v21, a6);
}

uint64_t itemceleste_CopyAsset(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 24);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t itemceleste_ExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 24);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t itemceleste_SetCurrentTimeWithOptions(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemceleste_interruptIfNecessaryForSeeking();
  v6 = *(DerivedStorage + 24);
  v9 = *a2;
  v10 = *(a2 + 2);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v7)
  {
    return 4294954514;
  }

  v11 = v9;
  v12 = v10;
  return v7(v6, &v11, a3);
}

void itemceleste_interruptIfNecessaryForSeeking()
{
  cf[26] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = FigCFWeakReferenceTableCopyValue();
  if (v1)
  {
    v2 = v1;
    v3 = CMBaseObjectGetDerivedStorage();
    if (!*(v3 + 128) && !*(v3 + 161))
    {
      cf[0] = 0;
      v4 = *(v3 + 80);
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v5)
      {
        v5(v4, 0, cf);
        v6 = cf[0];
        if (cf[0])
        {
          if (cf[0] != *(DerivedStorage + 24))
          {
            goto LABEL_9;
          }

          if (dword_1EAF17958)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          playerceleste_beginInterruptionInternal(v2, 0);
          v6 = cf[0];
          if (cf[0])
          {
LABEL_9:
            CFRelease(v6);
          }
        }
      }
    }

    playerceleste_deferPlayerRelease(v2);
  }
}

uint64_t playerceleste_AddToPlayQueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf[21] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v8 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v8 = 0;
  }

  v9 = *(DerivedStorage + 80);
  if (!v9)
  {
    v12 = FigSignalErrorAtGM();
LABEL_17:
    v15 = v12;
    goto LABEL_19;
  }

  FigBaseObject = FigPlayerGetFigBaseObject(v9);
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(FigBaseObject, 0x1F0B25918, *MEMORY[0x1E695E480], cf);
    v11 = cf[0];
  }

  if ((!*(DerivedStorage + 161) || v11 == *MEMORY[0x1E695E4D0]) && !*(DerivedStorage + 129))
  {
    if (dword_1EAF17958)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v12 = playerceleste_beginInterruptionInternal(a1, 0);
    if (v12)
    {
      if (!*(DerivedStorage + 160))
      {
        goto LABEL_17;
      }
    }
  }

  if (a2)
  {
    a2 = *(v7 + 24);
  }

  if (a3)
  {
    a3 = *(v8 + 24);
  }

  v13 = *(DerivedStorage + 80);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v14)
  {
    v12 = v14(v13, a2, a3);
    goto LABEL_17;
  }

  v15 = 4294954514;
LABEL_19:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v15;
}

uint64_t playerceleste_RemoveFromPlayQueue(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 80);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v4 + 24);
    }

    else
    {
      v6 = 0;
    }

    v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v8)
    {

      return v8(v5, v6);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t playerceleste_CopyPlayQueueItem(uint64_t a1, uint64_t a2)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (a2)
  {
    v5 = CMBaseObjectGetDerivedStorage();
    v6 = *(v4 + 80);
    if (v6)
    {
      v7 = *(v5 + 24);
      goto LABEL_6;
    }

LABEL_13:
    v9 = FigSignalErrorAtGM();
    goto LABEL_14;
  }

  v6 = *(DerivedStorage + 80);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = 0;
LABEL_6:
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v8)
  {
    v9 = v8(v6, v7, &cf);
    v10 = cf;
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = cf == 0;
    }

    if (v11)
    {
      goto LABEL_15;
    }

    FigCFWeakReferenceTableApplyFunction();
    goto LABEL_13;
  }

  v9 = 4294954514;
LABEL_14:
  v10 = cf;
LABEL_15:
  if (v10)
  {
    CFRelease(v10);
  }

  return v9;
}

uint64_t playerceleste_SetRate(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = playerceleste_setRateInternal(a1, 0, 0, 0, MEMORY[0x1E6960CC0], MEMORY[0x1E6960CC0], 0, a2);
  *(DerivedStorage + 124) = a2;
  return result;
}

uint64_t playerceleste_GetRate(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 80);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t playerceleste_SetRateWithFade(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetCMTime();
  v6 = playerceleste_setRateInternal(a1, Mutable, 0, 0, MEMORY[0x1E6960CC0], MEMORY[0x1E6960CC0], 0, a2);
  *(DerivedStorage + 124) = a2;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v6;
}

uint64_t playerceleste_StartPreroll(float a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 80);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v6)
  {
    return 4294954514;
  }

  v7.n128_f32[0] = a1;

  return v6(v5, a3, v7);
}

uint64_t playerceleste_StepByCount(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 80);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t playerceleste_SetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, float a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = *a2;
  v15 = *(a2 + 2);
  v12 = *a3;
  v13 = *(a3 + 2);
  result = playerceleste_setRateInternal(a1, 0, 0, 1, &v14, &v12, a4, a5);
  *(DerivedStorage + 124) = a5;
  return result;
}

uint64_t playerceleste_SetRateWithOptions(uint64_t a1, uint64_t a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = playerceleste_setRateInternal(a1, a2, 0, 0, MEMORY[0x1E6960CC0], MEMORY[0x1E6960CC0], 0, a3);
  *(DerivedStorage + 124) = a3;
  return result;
}

uint64_t playerceleste_ReevaluateRouteConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 80);
  if (v3)
  {

    return FigPlayerReevaluateRouteConfigurationForReason(v3, a2, @" -> celeste sub-player");
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t playerceleste_AddExternalStartupTask(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 80);
  if (v3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v4)
    {

      return v4(v3, a2);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t playerceleste_RemoveExternalStartupTask(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 80);
  if (v3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 136);
    if (v4)
    {

      return v4(v3, a2);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t playerceleste_CopyDisplayedCVPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 80);
  if (v5)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v6)
    {

      return v6(v5, a2, a3);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t fpcel_findCelesteItemIDForSubItem(uint64_t a1, uint64_t a2, void *a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 24) == *a3)
  {
    a3[1] = *(result + 16);
  }

  return result;
}

uint64_t playerceleste_SetConnectionActive(uint64_t a1, int a2)
{
  if (a2)
  {
    return 4294954514;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 128))
  {
    return 0;
  }

  v5 = DerivedStorage;
  if (playerceleste_canCallSetConnectionActive())
  {
    playerceleste_callSetConnectionActive(a1, 0);
  }

  result = 0;
  *(v5 + 128) = 0;
  return result;
}

uint64_t playerceleste_DuckVolume(float a1, float a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 80);
  v8 = *(CMBaseObjectGetVTable() + 32);
  if (!v8)
  {
    return 4294954514;
  }

  v11 = *(v8 + 8);
  if (!v11)
  {
    return 4294954514;
  }

  v9.n128_f32[0] = a1;
  v10.n128_f32[0] = a2;

  return v11(v7, a4, v9, v10);
}

uint64_t playerceleste_SilentMute(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 80);
  v4 = *(CMBaseObjectGetVTable() + 32);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(v3, a2);
}

uint64_t FigCreateHapticPatternDictionaryFromAppleHapticBBuf(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  if (!(a2 | a3))
  {
    MTGetCGAffineTransformFrom3x3MatrixArray_cold_5(&v8);
    goto LABEL_16;
  }

  if (!FigAtomStreamInitWithBBuf() && !FigAtomStreamPositionAtFirstAtomWithType() && !FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    FigCreateHapticPatternDictionaryFromAppleHapticBBuf_cold_7(&v8);
LABEL_16:
    v7 = v8;
    goto LABEL_6;
  }

  v7 = FigSignalErrorAtGM();
LABEL_6:

  if (!v7)
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      *a3 = 0;
    }
  }

  objc_autoreleasePoolPop(v5);
  return v7;
}

void *ffs_hapticFilterPatternDictionary(void *a1)
{
  v1 = a1;
  v2 = [a1 objectForKey:@"Pattern"];
  v3 = [v2 indexesOfObjectsPassingTest:&__block_literal_global_9];
  if ([v3 count])
  {
    v1 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v1];
    v4 = [MEMORY[0x1E695DF70] arrayWithArray:v2];
    [v4 removeObjectsAtIndexes:v3];
    [v1 setObject:v4 forKey:@"Pattern"];
  }

  return v1;
}

uint64_t FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf(OpaqueCMBlockBuffer *a1, void *a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  v18 = 0;
  if (!a1)
  {
    v13 = 0;
    goto LABEL_8;
  }

  DataLength = CMBlockBufferGetDataLength(a1);
  v8 = malloc_type_malloc(DataLength, 0x1954E82EuLL);
  if (!v8)
  {
    FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf_cold_5(&v19);
LABEL_17:
    v13 = 0;
    goto LABEL_20;
  }

  v9 = v8;
  v10 = CMBlockBufferCopyDataBytes(a1, 0, DataLength, v8);
  if (v10)
  {
    v15 = v10;
    FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf_cold_1(v10, v9);
    goto LABEL_12;
  }

  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v9 length:DataLength deallocator:&__block_literal_global_117];
  v17 = 0;
  v12 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v11 options:0 error:&v17];
  if (!v12)
  {
    FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf_cold_4(&v17);
    goto LABEL_17;
  }

  v13 = ffs_hapticFilterPatternDictionary(v12);
  if (a3)
  {
    v14 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v13 options:1 error:&v17];
    if (v13)
    {
      [MEMORY[0x1E696AEC0] stringEncodingForData:v14 encodingOptions:0 convertedString:&v18 usedLossyConversion:0];
      if (v18)
      {
        goto LABEL_8;
      }

      FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf_cold_2(&v19);
    }

    else
    {
      FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf_cold_3(&v17);
    }

LABEL_20:
    v15 = v19;
    if (v19)
    {
      goto LABEL_12;
    }
  }

LABEL_8:
  if (a2)
  {
    *a2 = v13;
  }

  v15 = 0;
  if (a3)
  {
    *a3 = v18;
  }

LABEL_12:
  objc_autoreleasePoolPop(v6);
  return v15;
}

uint64_t __ffs_hapticFilterPatternDictionary_block_invoke(uint64_t a1, void *a2)
{
  v2 = [objc_msgSend(a2 objectForKeyedSubscript:{@"Event", "objectForKeyedSubscript:", @"EventType"}];

  return [v2 isEqualToString:@"AudioCustom"];
}

uint64_t OUTLINED_FUNCTION_2_174(void **a1)
{
  v2 = *a1;

  return [v2 code];
}

uint64_t OVCBicubicPrescalerScalePixelBuffer(uint64_t a1, __CVBuffer *a2, __CVBuffer *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v114[1] = *MEMORY[0x1E69E9840];
  v114[0] = 0;
  v110 = 0;
  v108 = 0u;
  v109 = 0;
  memset(&v107, 0, sizeof(v107));
  if (!a1)
  {
    OVCBicubicPrescalerScalePixelBuffer_cold_7(&v106);
    return LODWORD(v106.a);
  }

  if (!a2)
  {
    OVCBicubicPrescalerScalePixelBuffer_cold_6(&v106);
    return LODWORD(v106.a);
  }

  if (!a3)
  {
    OVCBicubicPrescalerScalePixelBuffer_cold_5(&v106);
    return LODWORD(v106.a);
  }

  if (OVCGetCurrentOpenGLContext() != *a1)
  {
    OVCBicubicPrescalerScalePixelBuffer_cold_1(&v106);
    return LODWORD(v106.a);
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a3))
  {
    OVCBicubicPrescalerScalePixelBuffer_cold_2(&v106);
    return LODWORD(v106.a);
  }

  glDisable(0xBE2u);
  PlaneCount = CVPixelBufferGetPlaneCount(a2);
  v96 = CVPixelBufferGetPixelFormatType(a2);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  v18 = CVPixelBufferGetWidth(a3);
  v19 = CVPixelBufferGetHeight(a3);
  v20 = Width;
  v21 = Height;
  v129.origin.x = 0.0;
  v129.origin.y = 0.0;
  v115.origin.x = a4;
  v115.origin.y = a5;
  v115.size.width = a6;
  v115.size.height = a7;
  v129.size.width = Width;
  v129.size.height = Height;
  v116 = CGRectIntersection(v115, v129);
  x = v116.origin.x;
  y = v116.origin.y;
  v24 = v116.size.width;
  v25 = v116.size.height;
  key = *MEMORY[0x1E6965D70];
  v26 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965D70], 0);
  bvc_getCleanApertureRect(v26, Width, Height, &v108);
  if (v27)
  {
    a_low = v27;
    if (!v26)
    {
      return a_low;
    }

    goto LABEL_32;
  }

  v85 = v26;
  *&v108 = *&v108 - x;
  v117.origin.x = *&v108;
  *(&v108 + 1) = *(&v108 + 1) - y;
  v117.origin.y = *(&v108 + 1);
  v117.size = v109;
  v130.origin.x = 0.0;
  v130.origin.y = 0.0;
  v130.size.width = v24;
  v130.size.height = v25;
  v118 = CGRectIntersection(v117, v130);
  v92 = y;
  v93 = x;
  v28 = v118.origin.x;
  v29 = v118.origin.y;
  v94 = v25;
  v95 = v24;
  v30 = v118.size.width;
  v31 = v118.size.height;
  *&v108 = v118.origin.x;
  *(&v108 + 1) = *&v118.origin.y;
  v109.width = v118.size.width;
  v109.height = v118.size.height;
  v82 = v19;
  v83 = v18;
  v87 = v18;
  v86 = v19;
  CGAffineTransformMakeScale(&v107, v18 / v95, v19 / v94);
  v106 = v107;
  v119.origin.x = v28;
  v119.origin.y = v29;
  v33 = v92;
  v32 = v93;
  v119.size.width = v30;
  v119.size.height = v31;
  v35 = v94;
  v34 = v95;
  v120 = CGRectApplyAffineTransform(v119, &v106);
  v89 = v120.origin.y;
  v90 = v120.origin.x;
  v88 = v120.size.width;
  rect = v120.size.height;
  v36 = 0;
  if (PlaneCount <= 1)
  {
    v37 = 1;
  }

  else
  {
    v37 = PlaneCount;
  }

  v98 = v37;
  v38 = v114;
  __asm { FMOV            V0.2D, #1.0 }

  v97 = _Q0;
  while (1)
  {
    v105 = 0;
    WidthOfPlane = OVCCVPixelBufferGetWidthOfPlane(a2, v36);
    HeightOfPlane = OVCCVPixelBufferGetHeightOfPlane(a2, v36);
    v46.i64[0] = WidthOfPlane;
    v46.i64[1] = HeightOfPlane;
    v101 = vcvtq_f64_u64(v46);
    v47 = OVCCVPixelBufferGetWidthOfPlane(a3, v36);
    OVCCVPixelBufferGetHeightOfPlane(a3, v36);
    CGAffineTransformMakeScale(&v106, v101.f64[0] / v20, v101.f64[1] / v21);
    v104 = v106;
    v121.origin.x = v93;
    v121.origin.y = v92;
    v121.size.width = v95;
    v121.size.height = v94;
    v122 = CGRectApplyAffineTransform(v121, &v104);
    v48 = v122.size.width;
    v100 = v122.origin.x;
    v123 = CGRectIntegral(v122);
    v99 = v123.origin.y;
    v49 = v123.size.height;
    v50 = v123.size.height;
    ProgramForPixelFormatAndPlane = OVCRegisterTextureAsRenderTargetForAttributes(*(a1 + 16), v96, v47, v123.size.height, v36, v38);
    if (ProgramForPixelFormatAndPlane)
    {
      goto LABEL_26;
    }

    ProgramForPixelFormatAndPlane = ovcbp_getProgramForPixelFormatAndPlane(a1, v96, v36, 0, &v105);
    if (ProgramForPixelFormatAndPlane)
    {
      goto LABEL_26;
    }

    glUseProgram(*v105);
    glDisable(0xC11u);
    glViewport(0, 0, v47, v50);
    glClearColor(0.0, 0.0, 0.0, 0.0);
    glClear(0x4000u);
    if (glCheckFramebufferStatus(0x8D40u) != 36053)
    {
      break;
    }

    glActiveTexture(0x84C0u);
    glUniform1i(*(v105 + 12), 0);
    ProgramForPixelFormatAndPlane = OVCRegisterPixelBufferAsTexture(*a1, *(a1 + 24), a2, v36, 1);
    if (ProgramForPixelFormatAndPlane)
    {
      goto LABEL_26;
    }

    v102 = vdivq_f64(v97, v101);
    glTexParameteri(0xDE1u, 0x2800u, 9728);
    glTexParameteri(0xDE1u, 0x2801u, 9728);
    glTexParameteri(0xDE1u, 0x2802u, 33071);
    glTexParameteri(0xDE1u, 0x2803u, 33071);
    glUniform2f(*(v105 + 4), WidthOfPlane, HeightOfPlane);
    v52 = v102.f64[0];
    v53 = v102.f64[1];
    glUniform2f(*(v105 + 8), v52, v53);
    glActiveTexture(0x84C1u);
    glUniform1i(*(v105 + 16), 1);
    glBindTexture(0xDE1u, *(a1 + 40));
    ptr = xmmword_196E7ACB0;
    v113 = xmmword_196E7ACC0;
    v54.f64[0] = v100;
    v55.f64[0] = v100 + v48;
    v54.f64[1] = v99 + v49;
    v55.f64[1] = v99;
    v56 = vmulq_f64(v102, vcvtq_f64_f32(vcvt_f32_f64(v55)));
    *&v55.f64[0] = vcvt_f32_f64(vmulq_f64(v102, vcvtq_f64_f32(vcvt_f32_f64(v54))));
    v57 = vcvt_hight_f32_f64(*&v55.f64[0], v56);
    v58 = vextq_s8(v57, v57, 8uLL);
    v57.i32[2] = LODWORD(v55.f64[0]);
    v58.i32[2] = vcvt_f32_f64(v56).u32[0];
    *v111 = v57;
    *&v111[16] = v58;
    glVertexAttribPointer(*(v105 + 20), 2, 0x1406u, 0, 0, &ptr);
    glEnableVertexAttribArray(*(v105 + 20));
    glVertexAttribPointer(*(v105 + 24), 2, 0x1406u, 0, 0, v111);
    glEnableVertexAttribArray(*(v105 + 24));
    glDrawArrays(6u, 0, 4);
    ++v36;
    ++v38;
    if (v98 == v36)
    {
      v59 = 0;
      while (1)
      {
        v105 = 0;
        v60 = OVCCVPixelBufferGetWidthOfPlane(a3, v59);
        v61 = OVCCVPixelBufferGetHeightOfPlane(a3, v59);
        v62 = v61;
        CGAffineTransformMakeScale(&v106, v60 / v87, v61 / v86);
        v104 = v106;
        v124.origin.x = v32;
        v124.origin.y = v33;
        v124.size.width = v34;
        v124.size.height = v35;
        v125 = CGRectApplyAffineTransform(v124, &v104);
        v63 = v125.origin.y;
        v64 = v125.size.height;
        v126 = CGRectIntegral(v125);
        v65 = v126.origin.y;
        v66 = v126.size.height;
        v104 = v106;
        v126.origin.y = v89;
        v126.origin.x = v90;
        v126.size.width = v88;
        v126.size.height = rect;
        v127 = CGRectApplyAffineTransform(v126, &v104);
        v128 = CGRectIntegral(v127);
        v67 = v128.origin.x;
        v68 = v128.origin.y;
        v69 = v128.size.width;
        v70 = v128.size.height;
        ProgramForPixelFormatAndPlane = OVCRegisterPixelBufferAsRenderTarget(*a1, *(a1 + 24), a3, v59);
        if (ProgramForPixelFormatAndPlane)
        {
          break;
        }

        ProgramForPixelFormatAndPlane = ovcbp_getProgramForPixelFormatAndPlane(a1, v96, v59, 1, &v105);
        if (ProgramForPixelFormatAndPlane)
        {
          break;
        }

        glUseProgram(*v105);
        glViewport(0, 0, v60, v62);
        glEnable(0xC11u);
        glScissor(0, 0, v60, v62);
        glClearColor(0.0, 0.0, 0.0, 0.0);
        glClear(0x4000u);
        glScissor(v67, v68, v69, v70);
        if (glCheckFramebufferStatus(0x8D40u) != 36053)
        {
          OVCBicubicPrescalerScalePixelBuffer_cold_4(&v104);
          goto LABEL_29;
        }

        v71.f64[0] = v66;
        v71.f64[1] = v60;
        v103 = vdivq_f64(v97, v71);
        glActiveTexture(0x84C0u);
        glUniform1i(*(v105 + 12), 0);
        glBindTexture(0xDE1u, *(v114 + v59));
        glTexParameteri(0xDE1u, 0x2800u, 9728);
        glTexParameteri(0xDE1u, 0x2801u, 9728);
        glTexParameteri(0xDE1u, 0x2802u, 33071);
        glTexParameteri(0xDE1u, 0x2803u, 33071);
        glUniform2f(*(v105 + 4), v60, v66);
        v72 = v103.f64[1];
        v73 = v103.f64[0];
        glUniform2f(*(v105 + 8), v72, v73);
        glActiveTexture(0x84C1u);
        glUniform1i(*(v105 + 16), 1);
        glBindTexture(0xDE1u, *(a1 + 40));
        ptr = xmmword_196E7ACB0;
        v113 = xmmword_196E7ACC0;
        v74 = v64 + v63 - v65;
        v75.f32[0] = v63 - v65;
        v76 = vmuld_lane_f64(0.0, v103, 1);
        v77 = v74 * v103.f64[0];
        *v111 = v76;
        *&v111[4] = v77;
        *&v111[8] = v76;
        v75.f32[1] = v60;
        v78 = vmulq_f64(v103, vcvtq_f64_f32(v75));
        *&v111[12] = vcvt_hight_f32_f64(vcvt_f32_f64(v78), v78);
        *&v111[28] = v77;
        glVertexAttribPointer(*(v105 + 20), 2, 0x1406u, 0, 0, &ptr);
        glEnableVertexAttribArray(*(v105 + 20));
        glVertexAttribPointer(*(v105 + 24), 2, 0x1406u, 0, 0, v111);
        glEnableVertexAttribArray(*(v105 + 24));
        glDrawArrays(6u, 0, 4);
        ++v59;
        v33 = v92;
        v32 = v93;
        v35 = v94;
        v34 = v95;
        if (v98 == v59)
        {
          glFlush();
          CVBufferPropagateAttachments(a2, a3);
          a_low = OVCCreateCleanApertureDictionaryFromRect(v83, v82, &v110, v90, v89, v88, rect);
          v80 = v110;
          if (!a_low)
          {
            CVBufferSetAttachment(a3, key, v110, kCVAttachmentMode_ShouldNotPropagate);
            v80 = v110;
          }

          v26 = v85;
          if (!v80)
          {
            goto LABEL_31;
          }

          CFRelease(v80);
          if (v85)
          {
            goto LABEL_32;
          }

          return a_low;
        }
      }

LABEL_26:
      a_low = ProgramForPixelFormatAndPlane;
      goto LABEL_30;
    }
  }

  OVCBicubicPrescalerScalePixelBuffer_cold_3(&v104);
LABEL_29:
  a_low = LODWORD(v104.a);
LABEL_30:
  v26 = v85;
LABEL_31:
  if (v26)
  {
LABEL_32:
    CFRelease(v26);
  }

  return a_low;
}

uint64_t ovcbp_getProgramForPixelFormatAndPlane(uint64_t a1, int a2, uint64_t a3, int a4, void *a5)
{
  if (!a5)
  {
    ovcbp_getProgramForPixelFormatAndPlane_cold_2(&v11);
    return v11;
  }

  if (!a1)
  {
    ovcbp_getProgramForPixelFormatAndPlane_cold_1(&v10);
    return v10;
  }

  if (a2 == 875704422 || a2 == 875704438)
  {
    if (a3 == 1)
    {
      v5 = a4 == 0;
      v6 = 156;
      v7 = 184;
    }

    else
    {
      if (a3)
      {
        goto LABEL_13;
      }

      v5 = a4 == 0;
      v6 = 100;
      v7 = 128;
    }

    goto LABEL_17;
  }

  if (a2 == 1111970369 && !a3)
  {
    v5 = a4 == 0;
    v6 = 44;
    v7 = 72;
LABEL_17:
    if (!v5)
    {
      v7 = v6;
    }

    v9 = 0;
    *a5 = a1 + v7;
    return v9;
  }

LABEL_13:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void OVCBicubicPrescalerDestroy(char *a1)
{
  if (a1)
  {
    if (a1[8])
    {
      FigOVCGLObjectCacheWrapperInvalidate(*(a1 + 3));
      OVCGLObjectCacheDestroy(*(a1 + 2));
    }

    *(a1 + 2) = 0;
    v2 = *(a1 + 3);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 3) = 0;
    }

    OVCGLObjectCacheDestroy(*(a1 + 4));
    *(a1 + 4) = 0;
    if (OVCGetCurrentOpenGLContext() == *a1)
    {
      glDeleteTextures(1, a1 + 10);
      *(a1 + 10) = 0;
      for (i = 44; i != 212; i += 28)
      {
        glDeleteProgram(*&a1[i]);
        *&a1[i] = 0;
      }
    }

    free(a1);
  }
}

uint64_t ovcbp_createAndSetupProgram(GLuint *a1, GLuint a2, GLuint a3)
{
  v4 = OVCCreateGLProgram(a2, a3, a1);
  if (v4)
  {
    v11 = v4;
    if (!a1)
    {
      return v11;
    }

    goto LABEL_19;
  }

  UniformLocation = glGetUniformLocation(*a1, "tex_dim");
  if (UniformLocation < 0)
  {
    v13 = 636;
LABEL_18:
    ovcbp_createAndSetupProgram_cold_1(v13, &v14);
    v11 = v14;
LABEL_19:
    glDeleteProgram(*a1);
    return v11;
  }

  a1[1] = UniformLocation;
  v6 = glGetUniformLocation(*a1, "tex_dim_rcp");
  if (v6 < 0)
  {
    v13 = 640;
    goto LABEL_18;
  }

  a1[2] = v6;
  AttribLocation = glGetAttribLocation(*a1, "position");
  if (AttribLocation < 0)
  {
    v13 = 645;
    goto LABEL_18;
  }

  a1[5] = AttribLocation;
  v8 = glGetAttribLocation(*a1, "texcoord");
  if (v8 < 0)
  {
    v13 = 649;
    goto LABEL_18;
  }

  a1[6] = v8;
  v9 = glGetUniformLocation(*a1, "sampler_pixels");
  if (v9 < 0)
  {
    v13 = 653;
    goto LABEL_18;
  }

  a1[3] = v9;
  v10 = glGetUniformLocation(*a1, "sampler_kernel");
  if (v10 < 0)
  {
    v13 = 657;
    goto LABEL_18;
  }

  v11 = 0;
  a1[4] = v10;
  return v11;
}

float ovcbp_polynomial(float a1)
{
  v1 = fabsf(a1);
  v2 = a1 * a1;
  v3 = (a1 * a1) * v1;
  if (v1 >= 1.0)
  {
    result = 0.0;
    if (v1 >= 2.0)
    {
      return result;
    }

    v4 = v2 * 6.0 - v3 + v1 * -12.0;
    v5 = 8.0;
  }

  else
  {
    v4 = v2 * -6.0 + v3 * 3.0;
    v5 = 4.0;
  }

  return (v4 + v5) * 0.1666666;
}

size_t OVCCVPixelBufferGetWidthOfPlane(__CVBuffer *a1, size_t a2)
{
  if (CVPixelBufferIsPlanar(a1))
  {

    return CVPixelBufferGetWidthOfPlane(a1, a2);
  }

  else if (a2)
  {
    return 0;
  }

  else
  {

    return CVPixelBufferGetWidth(a1);
  }
}

size_t OVCCVPixelBufferGetHeightOfPlane(__CVBuffer *a1, size_t a2)
{
  if (CVPixelBufferIsPlanar(a1))
  {

    return CVPixelBufferGetHeightOfPlane(a1, a2);
  }

  else if (a2)
  {
    return 0;
  }

  else
  {

    return CVPixelBufferGetHeight(a1);
  }
}

uint64_t OVCCreateCleanApertureDictionaryFromRect(unint64_t a1, unint64_t a2, CFDictionaryRef *a3, double a4, double a5, double a6, double a7)
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0.0;
  valuePtr = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  *values = 0u;
  v22 = 0u;
  *keys = 0u;
  v20 = 0u;
  if (!a3)
  {
    OVCCreateCleanApertureDictionaryFromRect_cold_6(&v18);
LABEL_19:
    v10 = v18;
    goto LABEL_8;
  }

  v16 = a5 + (a7 - a2) * 0.5;
  valuePtr = a4 + (a6 - a1) * 0.5;
  v14 = a7;
  v15 = a6;
  v8 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  if (!values[0])
  {
    OVCCreateCleanApertureDictionaryFromRect_cold_5(&v18);
    goto LABEL_19;
  }

  keys[0] = *MEMORY[0x1E6965D68];
  values[1] = CFNumberCreate(v8, kCFNumberDoubleType, &v16);
  if (!values[1])
  {
    OVCCreateCleanApertureDictionaryFromRect_cold_4(&v18);
    goto LABEL_19;
  }

  keys[1] = *MEMORY[0x1E6965D78];
  *&v22 = CFNumberCreate(v8, kCFNumberDoubleType, &v15);
  if (!v22)
  {
    OVCCreateCleanApertureDictionaryFromRect_cold_3(&v18);
    goto LABEL_19;
  }

  *&v20 = *MEMORY[0x1E6965D80];
  *(&v22 + 1) = CFNumberCreate(v8, kCFNumberDoubleType, &v14);
  if (!*(&v22 + 1))
  {
    OVCCreateCleanApertureDictionaryFromRect_cold_2(&v18);
    goto LABEL_19;
  }

  *(&v20 + 1) = *MEMORY[0x1E6965D60];
  v9 = CFDictionaryCreate(v8, keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v9)
  {
    OVCCreateCleanApertureDictionaryFromRect_cold_1(&v18);
    goto LABEL_19;
  }

  v10 = 0;
  *a3 = v9;
LABEL_8:
  for (i = 0; i != 4; ++i)
  {
    v12 = values[i];
    if (v12)
    {
      CFRelease(v12);
    }
  }

  return v10;
}

uint64_t OVCCreateOpenGLContext(uint64_t *a1)
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6977FF0]];
    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x1E6977FE8]) initWithAPI:2 properties:v3];
      if (v4)
      {
        v5 = 0;
        *a1 = v4;
      }

      else
      {
        OVCCreateOpenGLContext_cold_1(&v7);
        v5 = v7;
      }
    }

    else
    {
      OVCCreateOpenGLContext_cold_2(&v8);
      v5 = v8;
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    OVCCreateOpenGLContext_cold_3(&v9);
    return v9;
  }

  return v5;
}

void OVCDestroyOpenGLContext(void *a1)
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v2);
  }
}

uint64_t OVCSetCurrentOpenGLContext(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x1E6977FE8] setCurrentContext:a1])
  {
    v3 = 0;
  }

  else
  {
    fig_log_get_emitter();
    v3 = FigSignalErrorAtGM();
  }

  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t OVCSetOpenGLContextPriority(void *a1, int a2)
{
  v8 = 0;
  v4 = objc_autoreleasePoolPush();
  if (a2 == 2)
  {
    v8 = 0;
  }

  else
  {
    if (a2 == 1)
    {
      v5 = 1;
    }

    else
    {
      if (a2)
      {
        fig_log_get_emitter();
        v6 = FigSignalErrorAtGM();
        goto LABEL_10;
      }

      v5 = 2;
    }

    v8 = v5;
  }

  [a1 setParameter:608 to:&v8];
  v6 = 0;
LABEL_10:
  objc_autoreleasePoolPop(v4);
  return v6;
}

uint64_t OVCGetCurrentOpenGLContext()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E6977FE8] currentContext];
  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t OVCCreateShader(GLchar *a1, GLenum type, GLuint *a3)
{
  string = a1;
  params = 0;
  Shader = glCreateShader(type);
  v5 = Shader;
  if (Shader)
  {
    glShaderSource(Shader, 1, &string, 0);
    glCompileShader(v5);
    glGetShaderiv(v5, 0x8B81u, &params);
    if (params == 1 || (fig_log_get_emitter(), v6 = FigSignalErrorAtGM(), !v6))
    {
      v7 = 0;
      *a3 = v5;
      v5 = 0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    OVCCreateShader_cold_1(&v11);
    v7 = v11;
  }

  glDeleteShader(v5);
  return v7;
}

uint64_t OVCTexImagePixelBuffer(void *a1, __CVBuffer *a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, int a9)
{
  v17 = objc_autoreleasePoolPush();
  if (a2)
  {
    IOSurface = CVPixelBufferGetIOSurface(a2);
    if (IOSurface)
    {
      BYTE4(v22) = 0;
      LODWORD(v22) = a9;
      v19 = [a1 texImageIOSurface:IOSurface target:a3 internalFormat:a4 width:a5 height:a6 format:a7 type:a8 plane:v22 invert:?];
      v20 = 0;
      if ((v19 & 1) == 0)
      {
        fig_log_get_emitter();
        v20 = FigSignalErrorAtGM();
      }
    }

    else
    {
      OVCTexImagePixelBuffer_cold_1(&v23);
      v20 = v23;
    }
  }

  else
  {
    OVCTexImagePixelBuffer_cold_2(&v24);
    v20 = v24;
  }

  objc_autoreleasePoolPop(v17);
  return v20;
}

uint64_t ovc_getTextureAttributesForRendering(int a1, uint64_t a2, int *a3, int *a4, _DWORD *a5)
{
  if (a1 == 875704422 || a1 == 875704438)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_21;
      }

      v6 = 33319;
      v7 = 33319;
      if (!a3)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = 6403;
      v7 = 6403;
      if (!a3)
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    *a3 = v6;
    goto LABEL_16;
  }

  if (a1 != 1111970369 || a2)
  {
LABEL_21:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v7 = 32993;
  v6 = 6408;
  if (a3)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (a4)
  {
    *a4 = v7;
  }

  if (a5)
  {
    *a5 = 5121;
  }

  return 0;
}

uint64_t OVCRegisterFenceBlock(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 setBlockFence:a3 onQueue:a2])
  {
    return 0;
  }

  OVCRegisterFenceBlock_cold_1(&v4);
  return v4;
}

void OUTLINED_FUNCTION_3_146(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, GLuint texture)
{

  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, texture, 0);
}

uint64_t MTProxyAudioProcessingTapCreate(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x19A8D3660](&paptap_OneTimeInitialization_sInitializationOnce, paptap_OneTimeInitializationWork);
  MTAudioProcessingTapGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    *CMBaseObjectGetDerivedStorage() = a2;
    *a3 = 0;
  }

  return v5;
}

uint64_t MTAudioProcessingTapIsProxyTap(uint64_t result)
{
  if (result)
  {
    MTAudioProcessingTapGetClassID();
    result = CMBaseObjectIsMemberOfClass();
    if (result)
    {
      return CMBaseObjectGetVTable() == &paptap_VTable;
    }
  }

  return result;
}

uint64_t MTProxyAudioProcessingTapGetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (MTAudioProcessingTapIsProxyTap(a1))
  {
    result = 0;
    *a2 = *DerivedStorage;
  }

  else
  {
    MTProxyAudioProcessingTapGetObjectID_cold_1(&v6);
    return v6;
  }

  return result;
}

__CFString *paptap_BaseClass_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<MTProxyAudioProcessingTap %p> Retain count %d Created with object ID %016llx", a1, v4, *DerivedStorage);
  return Mutable;
}

uint64_t RegisterFigCaptionConversionValidatorBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigCaptionConversionValidatorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigCaptionConversionValidatorGetClassID_sRegisterFigCaptionConversionValidatorBaseTypeOnce, RegisterFigCaptionConversionValidatorBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigMetricItemVariantChangeEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, char a14, void *a15)
{
  ensureMetricEventTrace();
  if (a15)
  {
    FigMetricEventGetClassID();
    v23 = CMDerivedObjectCreate();
    if (!v23)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v25 = FigSimpleMutexCreate();
      *(DerivedStorage + 136) = v25;
      if (v25)
      {
        *DerivedStorage = 1;
        *(DerivedStorage + 8) = 7;
        if (a3)
        {
          v26 = CFRetain(a3);
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          v26 = CFDateCreate(a1, Current);
        }

        *(DerivedStorage + 16) = v26;
        v28 = *a2;
        *(DerivedStorage + 48) = *(a2 + 2);
        *(DerivedStorage + 32) = v28;
        if (a4)
        {
          v29 = CFRetain(a4);
        }

        else
        {
          v29 = 0;
        }

        *(DerivedStorage + 24) = v29;
        if (a5)
        {
          v30 = CFRetain(a5);
        }

        else
        {
          v30 = 0;
        }

        *(DerivedStorage + 56) = v30;
        if (a6)
        {
          v31 = CFRetain(a6);
        }

        else
        {
          v31 = 0;
        }

        *(DerivedStorage + 64) = v31;
        if (a13)
        {
          v32 = CFRetain(a13);
        }

        else
        {
          v32 = 0;
        }

        *(DerivedStorage + 72) = v32;
        *(DerivedStorage + 80) = a14;
        *(DerivedStorage + 88) = a7;
        *(DerivedStorage + 96) = a8;
        *(DerivedStorage + 104) = a9;
        *(DerivedStorage + 112) = a10;
        *(DerivedStorage + 120) = a11;
        *(DerivedStorage + 128) = a12;
        if (a7)
        {
          CFRetain(a7);
          a8 = *(DerivedStorage + 96);
        }

        if (a8)
        {
          CFRetain(a8);
        }

        v33 = *(DerivedStorage + 104);
        if (v33)
        {
          CFRetain(v33);
        }

        v34 = *(DerivedStorage + 112);
        if (v34)
        {
          CFRetain(v34);
        }

        v35 = *(DerivedStorage + 120);
        if (v35)
        {
          CFRetain(v35);
        }

        v36 = *(DerivedStorage + 128);
        if (v36)
        {
          CFRetain(v36);
        }

        v23 = 0;
        *a15 = 0;
      }

      else
      {
        return FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    FigMetricItemVariantChangeEventCreateInternal_cold_1(&v38);
    return v38;
  }

  return v23;
}

uint64_t meivc_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[7];
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = DerivedStorage[8];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[9];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[11];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[12];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[13];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = DerivedStorage[14];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = DerivedStorage[15];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = DerivedStorage[16];
  if (v11)
  {
    CFRelease(v11);
  }

  return FigSimpleMutexDestroy();
}

uint64_t meivc_setImmutable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 0;

  return FigSimpleMutexUnlock();
}

uint64_t meivc_isMutable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v1;
}

CFTypeRef meivc_copySessionID()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    v2 = CFRetain(v1);
  }

  else
  {
    v2 = 0;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t meivc_setSessionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v5 = 0;
  }

  else
  {
    meivc_setSessionID_cold_1(&v7);
    v5 = v7;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t meivc_getMediaTime@<X0>(uint64_t a1@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a1 = *(DerivedStorage + 32);
  *(a1 + 16) = *(DerivedStorage + 48);

  return FigSimpleMutexUnlock();
}

uint64_t meivc_setMediaTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = 0;
    v5 = *a2;
    *(DerivedStorage + 48) = *(a2 + 2);
    *(DerivedStorage + 32) = v5;
  }

  else
  {
    meivc_setMediaTime_cold_1(&v7);
    v4 = v7;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t FigAlternateFilterMonitorCreateForContentSteering(void *a1, const void *a2, const void *a3, const __CFSet *a4, int a5, uint64_t a6, int a7, const void *a8, const void *a9, const void *a10, CFTypeRef cf, const void *a12, char a13, void *a14)
{
  FigAlternateFilterMonitorGetClassID();
  v21 = CMDerivedObjectCreate();
  if (v21)
  {
    return v21;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = FigReentrantMutexCreate();
  *DerivedStorage = v23;
  if (!v23)
  {
    FigAlternateFilterMonitorCreateForContentSteering_cold_2(&theArray);
    return theArray;
  }

  v21 = FigRetainProxyCreate();
  if (v21)
  {
    return v21;
  }

  v24 = a2 ? CFRetain(a2) : 0;
  *(DerivedStorage + 40) = v24;
  v25 = a3 ? CFRetain(a3) : 0;
  *(DerivedStorage + 48) = v25;
  v26 = *MEMORY[0x1E695E480];
  *(DerivedStorage + 88) = CFSetCreateCopy(*MEMORY[0x1E695E480], a4);
  *(DerivedStorage + 80) = CFArrayCreateMutable(v26, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 96) = 0x4072C00000000000;
  *(DerivedStorage + 104) = vnegq_f64(0);
  *(DerivedStorage + 168) = FigHTTPSchedulerRetain(0);
  *(DerivedStorage + 184) = a7 | 1;
  v27 = a8 ? CFRetain(a8) : 0;
  *(DerivedStorage + 192) = v27;
  v28 = a9 ? CFRetain(a9) : 0;
  *(DerivedStorage + 200) = v28;
  v29 = a10 ? CFRetain(a10) : 0;
  *(DerivedStorage + 208) = v29;
  v30 = a12 ? CFRetain(a12) : 0;
  *(DerivedStorage + 240) = v30;
  *(DerivedStorage + 128) = a6;
  *(DerivedStorage + 152) = a13;
  v21 = FigNetworkHistoryCopySharedPredictor();
  if (v21)
  {
    return v21;
  }

  v31 = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  v32 = FigCFSetCopyValuesAsCFArray();
  if (v32)
  {
    v36 = v32;
  }

  else
  {
    Mutable = CFArrayCreateMutable(v26, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v34 = Mutable;
      v35 = *(v31 + 48);
      if (v35)
      {
        CFArrayInsertValueAtIndex(Mutable, 0, v35);
      }

      v36 = 0;
      *(v31 + 56) = v34;
    }

    else
    {
      FigAlternateFilterMonitorCreateForContentSteering_cold_1(&v40);
      v36 = v40;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (!v36)
  {
    v37 = cf;
    if (cf)
    {
      v37 = CFRetain(cf);
    }

    *(DerivedStorage + 160) = v37;
    v36 = FigAlternatePathwayPreferenceFilterCreate(a1, *(DerivedStorage + 48), *(DerivedStorage + 56), (DerivedStorage + 24));
    if (!v36)
    {
      *a14 = 0;
    }
  }

  return v36;
}

uint64_t famcs_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[1];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[1] = 0;
  }

  v2 = DerivedStorage[7];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[7] = 0;
  }

  v3 = DerivedStorage[5];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[5] = 0;
  }

  v4 = DerivedStorage[6];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[6] = 0;
  }

  v5 = DerivedStorage[11];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[11] = 0;
  }

  v6 = DerivedStorage[3];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[3] = 0;
  }

  v7 = DerivedStorage[10];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[10] = 0;
  }

  v8 = DerivedStorage[4];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[4] = 0;
  }

  v9 = DerivedStorage[15];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[15] = 0;
  }

  v10 = DerivedStorage[8];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[8] = 0;
  }

  v11 = DerivedStorage[17];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[17] = 0;
  }

  v12 = DerivedStorage[9];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[9] = 0;
  }

  v13 = DerivedStorage[18];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[18] = 0;
  }

  v14 = DerivedStorage[24];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[24] = 0;
  }

  v15 = DerivedStorage[20];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[20] = 0;
  }

  v16 = DerivedStorage[21];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[21] = 0;
  }

  v17 = DerivedStorage[25];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[25] = 0;
  }

  v18 = DerivedStorage[26];
  if (v18)
  {
    CFRelease(v18);
    DerivedStorage[26] = 0;
  }

  v19 = CMBaseObjectGetDerivedStorage();
  FigHTTPStopAndReleaseTimer((v19 + 176));
  famcs_clearNetworkRequestState();
  v20 = DerivedStorage[30];
  if (v20)
  {
    CFRelease(v20);
    DerivedStorage[30] = 0;
  }

  return FigSimpleMutexDestroy();
}

CFStringRef famcs_copyDebugDesc()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigAlternateFilterMonitorForContentSteering pathways=%@ currentPathway=%@]", v1, *(DerivedStorage + 48));
  FigSimpleMutexUnlock();
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t famcs_setLastTimestampClientDidPause(uint64_t a1, const __CFNumber *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  CFNumberGetValue(a2, kCFNumberSInt64Type, &valuePtr);
  *(DerivedStorage + 104) = valuePtr;
  return famcs_ensureSteeringReloadTimerIsScheduled(a1);
}

uint64_t famcs_createPathwayIDDescriptionGivenPathwayClones(const __CFArray *a1, uint64_t *a2)
{
  if (a2)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = 0;
      if (!a1)
      {
        goto LABEL_5;
      }

LABEL_4:
      for (i = CFArrayGetCount(a1); v6 < i; i = 0)
      {
        CFArrayGetValueAtIndex(a1, v6);
        ID = FigPathwayCloneGetID();
        CFArrayAppendValue(v5, ID);
        ++v6;
        if (a1)
        {
          goto LABEL_4;
        }

LABEL_5:
        ;
      }

      *a2 = FigCFCopyCompactDescription();
      CFRelease(v5);
      return 0;
    }

    else
    {
      famcs_createPathwayIDDescriptionGivenPathwayClones_cold_1(&v10);
      return v10;
    }
  }

  else
  {
    famcs_createPathwayIDDescriptionGivenPathwayClones_cold_2(&v11);
    return v11;
  }
}

BOOL famcs_shouldSendSteeringManifestRequest()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (UpTimeNanoseconds - fmax(*(CMBaseObjectGetDerivedStorage() + 96) * 1000000000.0, 3.0e10) >= *(DerivedStorage + 104) || UpTimeNanoseconds + *(DerivedStorage + 96) * -1000000000.0 <= *(DerivedStorage + 112))
  {
    return 0;
  }

  v2 = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  cf = 0;
  if (*(v2 + 136))
  {
    v3 = v2;
    if (*(v2 + 72))
    {
      if (*(v2 + 144))
      {
        v4 = *MEMORY[0x1E695E480];
        v5 = CFArrayCreate(*MEMORY[0x1E695E480], (v2 + 136), 1, MEMORY[0x1E695E9C0]);
        if (v5)
        {
          v6 = v5;
          v9 = !FigAlternateOfflinePlayableForMediaSelectionFilterCreate(v4, *(v3 + 144), *(v3 + 72), 1, &cf) && (v7 = cf, (v8 = *(*(CMBaseObjectGetVTable() + 16) + 24)) != 0) && !v8(v7, v6, &theArray) && theArray && CFArrayGetCount(theArray) == 1;
          CFRelease(v6);
          if (theArray)
          {
            CFRelease(theArray);
          }

          goto LABEL_16;
        }

        famcs_shouldSendSteeringManifestRequest_cold_1();
      }
    }
  }

  v9 = 0;
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return !v9;
}

uint64_t famcs_setSteeringRequestReloadTimer(double a1)
{
  v1 = fmax(a1, 0.0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigHTTPStopAndReleaseTimer((DerivedStorage + 176));
  if (dword_1EAF17490)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = CMBaseObjectGetDerivedStorage();
  return FigHTTPCreateTimer(*(v4 + 8), famcs_steeringRequestReloadTimerCallback, *(v4 + 168), (v4 + 176), v1);
}

uint64_t famcs_copyMonitorFromRetainProxy(uint64_t a1, void *a2)
{
  if (!a2)
  {
    famcs_copyMonitorFromRetainProxy_cold_3(&v10);
    return v10;
  }

  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    famcs_copyMonitorFromRetainProxy_cold_1(&v8);
    v6 = v8;
    goto LABEL_7;
  }

  Owner = FigRetainProxyGetOwner();
  if (!Owner)
  {
    *a2 = 0;
LABEL_10:
    famcs_copyMonitorFromRetainProxy_cold_2(&v9);
    v6 = v9;
    goto LABEL_7;
  }

  v4 = CFRetain(Owner);
  *a2 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = CFGetTypeID(v4);
  if (v5 != FigAlternateFilterMonitorGetTypeID())
  {
    goto LABEL_10;
  }

  v6 = 0;
LABEL_7:
  FigRetainProxyUnlockMutex();
  return v6;
}

uint64_t famcs_handleSteeringManifestNetworkError(uint64_t a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0.0;
  if (a3 == -12668)
  {
LABEL_6:
    *(DerivedStorage + 96) = v7;
    goto LABEL_7;
  }

  if (a2 && a3 == -16853)
  {
    v8 = MEMORY[0x19A8CCD90](a2, 0.0);
    v7 = v8 - CFAbsoluteTimeGetCurrent();
    if (v7 < 1.0)
    {
      v7 = 1.0;
    }

    goto LABEL_6;
  }

LABEL_7:
  if (dword_1EAF17490)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return famcs_setSteeringRequestReloadTimer(a1, *(DerivedStorage + 96));
}

uint64_t famcs_invokeTrigger(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, @"AlternateFilterMonitorProperty_PathwayPriorityList", a2);
}

uint64_t famcs_copyFilterForCurrentState(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    v5 = *(v4 + 24);
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    *a2 = v5;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    famcs_copyFilterForCurrentState_cold_1(&v7);
    return v7;
  }
}

uint64_t OUTLINED_FUNCTION_11_69()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_13_52()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_14_62()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CFIndex MovieProxyDataCreateForByteStream(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  v3 = a2;
  v21 = 0;
  blockBufferOut = 0;
  v20 = 0;
  if (!a2)
  {
    MovieProxyDataCreateForByteStream_cold_2(v30);
LABEL_50:
    CFDataWithBlockBufferNoCopy = LODWORD(v30[0]);
    goto LABEL_38;
  }

  if (!a3)
  {
    MovieProxyDataCreateForByteStream_cold_1(v30);
    v3 = 0;
    goto LABEL_50;
  }

  MovieUsesFragments(a2, &v20, 0);
  if (v20)
  {
    v30[0] = 0;
    url = 0;
    ptr[0] = 0;
    cf[0] = 0;
    v6 = *MEMORY[0x1E695E480];
    v7 = MovieInformationCreate(*MEMORY[0x1E695E480], 0, v30);
    if (v7 || (v7 = MoovParseByteStream(v30[0], 10, v3, 0), v7) || (v7 = MovieHeaderMakerCreateWithMovieInformation(v6, v30[0], 2, ptr), v7))
    {
      CFDataWithBlockBufferNoCopy = v7;
      v15 = 0;
      v12 = 0;
    }

    else
    {
      v8 = @"com.apple.quicktime-movie";
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10 && (v10(CMBaseObject, *MEMORY[0x1E695FFA0], v6, &url), url))
      {
        v11 = CFURLCopyPathExtension(url);
        v12 = v11;
        if (v11)
        {
          FileTypeForMovieFamilyExtension = FigGetFileTypeForMovieFamilyExtension(v11);
          if (FileTypeForMovieFamilyExtension)
          {
            v8 = FileTypeForMovieFamilyExtension;
          }
        }
      }

      else
      {
        v12 = 0;
      }

      CFDataWithBlockBufferNoCopy = MovieHeaderMakerCopyMovieHeaderAsBlockBuffer(ptr[0], v6, v8, url, cf);
      if (CFDataWithBlockBufferNoCopy)
      {
        v15 = 0;
      }

      else
      {
        v15 = cf[0];
        cf[0] = 0;
      }
    }

    if (url)
    {
      CFRelease(url);
    }

    if (v30[0])
    {
      CFRelease(v30[0]);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    MovieHeaderMakerRelease(ptr[0]);
    if (CFDataWithBlockBufferNoCopy)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0;
  }

  memset(v30, 0, sizeof(v30));
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  *ptr = 0u;
  url = 0;
  *cf = 0u;
  v24 = 0u;
  v16 = FigAtomStreamInitWithByteStream();
  if (v16)
  {
    CFDataWithBlockBufferNoCopy = v16;
  }

  else
  {
    v17 = CMBlockBufferCreateEmpty(a1, 0x10u, 0, &url);
    v3 = url;
    if (!v17)
    {
      v17 = FigAtomWriterInitWithBlockBuffer();
      v3 = url;
      if (!v17)
      {
        cf[1] = url;
        if (v15)
        {
          cf[0] = v15;
        }

        v17 = ProcessChildAtoms(v30, ptr, CreateMovieProxyForByteStream_atomDispatch, 1, TopLevelOmitFilter, cf);
        v3 = url;
        if (!v17)
        {
          v18 = CMBlockBufferCreateContiguous(a1, url, a1, 0, 0, 0, 0, &blockBufferOut);
          if (v18)
          {
            CFDataWithBlockBufferNoCopy = v18;
          }

          else
          {
            CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
            if (!CFDataWithBlockBufferNoCopy)
            {
              *a3 = v21;
              v21 = 0;
            }
          }

          goto LABEL_36;
        }
      }
    }

    CFDataWithBlockBufferNoCopy = v17;
    if (v3)
    {
      CFRelease(v3);
    }
  }

LABEL_52:
  v3 = 0;
LABEL_36:
  if (v15)
  {
    CFRelease(v15);
  }

LABEL_38:
  if (v21)
  {
    CFRelease(v21);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return CFDataWithBlockBufferNoCopy;
}

uint64_t ProcessMovieAtom(_OWORD *a1, uint64_t a2, _BYTE *a3, void *a4)
{
  if (*a4)
  {
    memset(v8, 0, sizeof(v8));
    result = FigAtomStreamInitWithBBuf();
    if (result)
    {
      return result;
    }

    a1 = v8;
  }

  result = ProcessContainerAtom(a1, a2, 1836019574, ProcessMovieAtom_atomDispatch, 3, CommonOmitFilter, a4);
  *a3 = 1;
  return result;
}

uint64_t ProcessChildAtoms(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t, char *, uint64_t), uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v26 = 0;
  theBuffer = 0;
  v25 = 0;
  v23 = 0;
  v12 = a4 - 1;
  do
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
LABEL_35:
      v21 = CurrentAtomTypeAndDataLength;
      goto LABEL_32;
    }

    if (a4 < 1)
    {
      goto LABEL_12;
    }

    if (v26 != *a3)
    {
      v16 = 0;
      v15 = a3;
      while (v12 != v16)
      {
        v17 = *(v15 + 4);
        v15 += 2;
        ++v16;
        if (v26 == v17)
        {
          v14 = v16 >= a4;
          goto LABEL_10;
        }
      }

LABEL_12:
      v18 = 0;
      v14 = 1;
      goto LABEL_13;
    }

    v14 = 0;
    v15 = a3;
LABEL_10:
    CurrentAtomTypeAndDataLength = v15[1](a1, a2, &v23, a6);
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_35;
    }

    v18 = 1;
LABEL_13:
    if (v23)
    {
      v21 = 0;
      goto LABEL_32;
    }

    v19 = !v14;
    if (!a5)
    {
      v19 = 1;
    }

    if ((v19 & 1) == 0)
    {
      v18 = a5(v26);
    }

    if (!v18)
    {
      CurrentAtomTypeAndDataLength = FigAtomWriterBeginAtom();
      if (CurrentAtomTypeAndDataLength)
      {
        goto LABEL_35;
      }

      if (v25)
      {
        CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_35;
        }

        CMBlockBufferGetDataLength(theBuffer);
        CurrentAtomTypeAndDataLength = FigAtomWriterAppendBlockBufferData();
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_35;
        }

        if (theBuffer)
        {
          CFRelease(theBuffer);
        }

        theBuffer = 0;
      }

      CurrentAtomTypeAndDataLength = FigAtomWriterEndAtom();
      if (CurrentAtomTypeAndDataLength)
      {
        goto LABEL_35;
      }
    }

    Atom = FigAtomStreamAdvanceToNextAtom();
  }

  while (!Atom);
  if (Atom == -12890)
  {
    v21 = 0;
  }

  else
  {
    v21 = Atom;
  }

LABEL_32:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v21;
}

uint64_t OUTLINED_FUNCTION_7_96(OpaqueCMBlockBuffer *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, size_t lengthAtOffsetOut, char *dataPointerOut)
{

  return CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
}

uint64_t OUTLINED_FUNCTION_8_83()
{

  return FigAtomWriterBeginAtom();
}

uint64_t FigVCPInvalidatePrologue()
{
  v0 = 1;
  if (!FigAtomicCompareAndSwap32())
  {
    FigAtomicCompareAndSwap32();
    return 0;
  }

  return v0;
}

CMTime *FigVCPGetFoldedTime@<X0>(CMTime *result@<X0>, uint64_t a2@<X1>, CMTime *a3@<X8>)
{
  *&a3->value = *&result->value;
  a3->epoch = result->epoch;
  if ((*(a2 + 12) & 0x1D) == 1)
  {
    v5 = result;
    *&time1.start.value = *a2;
    time1.start.epoch = *(a2 + 16);
    v9 = *MEMORY[0x1E6960CC0];
    *&time2.value = *MEMORY[0x1E6960CC0];
    v6 = *(MEMORY[0x1E6960CC0] + 16);
    time2.epoch = v6;
    result = CMTimeCompare(&time1.start, &time2);
    if ((result & 0x80000000) == 0 && (*(a2 + 36) & 0x1D) == 1)
    {
      *&time1.start.value = *(a2 + 24);
      time1.start.epoch = *(a2 + 40);
      *&time2.value = v9;
      time2.epoch = v6;
      result = CMTimeCompare(&time1.start, &time2);
      if (result >= 1)
      {
        *&time1.start.value = *&v5->value;
        time1.start.epoch = v5->epoch;
        time2 = *a2;
        result = CMTimeCompare(&time1.start, &time2);
        if (result >= 1)
        {
          v7 = *&v5->value;
          time2.epoch = v5->epoch;
          v8 = *(a2 + 16);
          *&time1.start.value = *a2;
          *&time1.start.epoch = v8;
          *&time1.duration.timescale = *(a2 + 32);
          *&time2.value = v7;
          return CMTimeFoldIntoRange(a3, &time2, &time1);
        }
      }
    }
  }

  return result;
}

uint64_t FigVCPGetFoldedTimeRanges(__int128 *a1, CMTime *a2, uint64_t a3, CMTime *a4, CMTime *a5, CMTime *a6, CMTime *a7)
{
  v37 = **&MEMORY[0x1E6960C70];
  v36 = v37;
  v35 = v37;
  v34 = v37;
  if ((*(a1 + 12) & 1) == 0)
  {
    FigVCPGetFoldedTimeRanges_cold_1(&time1);
    return LODWORD(time1.start.value);
  }

  if ((*(a3 + 12) & 0x1D) == 1 && (*&time1.start.value = *a3, time1.start.epoch = *(a3 + 16), v28 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v14 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v14, (CMTimeCompare(&time1.start, &time2) & 0x80000000) == 0) && (*(a3 + 36) & 0x1D) == 1 && (*&time1.start.value = *(a3 + 24), time1.start.epoch = *(a3 + 40), *&time2.value = v28, time2.epoch = v14, CMTimeCompare(&time1.start, &time2) > 0))
  {
    *&time1.start.value = *a1;
    time1.start.epoch = *(a1 + 2);
    time2 = *a2;
    if (!CMTimeCompare(&time1.start, &time2))
    {
      v22 = *a1;
      time2.epoch = *(a1 + 2);
      v23 = *(a3 + 16);
      *&time1.start.value = *a3;
      *&time1.start.epoch = v23;
      *&time1.duration.timescale = *(a3 + 32);
      *&time2.value = v22;
      FigVCPGetFoldedTime(&time2, &time1, &v37);
      *&v36.value = *&v37.value;
      epoch = v37.epoch;
      goto LABEL_13;
    }

    v15 = *a1;
    time2.epoch = *(a1 + 2);
    v16 = *(a3 + 16);
    *&time1.start.value = *a3;
    *&time1.start.epoch = v16;
    *&time1.duration.timescale = *(a3 + 32);
    *&time2.value = v15;
    FigVCPGetFoldedTime(&time2, &time1, &v37);
    *&time1.start.value = *a1;
    time1.start.epoch = *(a1 + 2);
    time2 = *a2;
    if (CMTimeCompare(&time1.start, &time2) < 0)
    {
      v24 = *(a3 + 16);
      *&time1.start.value = *a3;
      *&time1.start.epoch = v24;
      *&time1.duration.timescale = *(a3 + 32);
      CMTimeRangeGetEnd(&time2, &time1);
      *&time1.start.value = *&a2->value;
      time1.start.epoch = a2->epoch;
      if ((CMTimeCompare(&time1.start, &time2) & 0x80000000) == 0)
      {
        v25 = *(a3 + 16);
        *&time1.start.value = *a3;
        *&time1.start.epoch = v25;
        *&time1.duration.timescale = *(a3 + 32);
        CMTimeRangeGetEnd(&v36, &time1);
        v35 = *a3;
        memset(&time2, 0, sizeof(time2));
        *&time1.start.value = *&a2->value;
        time1.start.epoch = a2->epoch;
        rhs = *a1;
        CMTimeSubtract(&time2, &time1.start, &rhs);
        memset(&rhs, 0, sizeof(rhs));
        time1.start = v36;
        v30 = v37;
        CMTimeSubtract(&rhs, &time1.start, &v30);
        memset(&v30, 0, sizeof(v30));
        time1.start = time2;
        lhs = rhs;
        CMTimeSubtract(&v30, &time1.start, &lhs);
        time1.start = v30;
        lhs = *(a3 + 24);
        if (CMTimeCompare(&time1.start, &lhs) < 0)
        {
          *&time1.start.value = *a3;
          time1.start.epoch = *(a3 + 16);
          lhs = v30;
          CMTimeAdd(&v34, &time1.start, &lhs);
        }

        else
        {
          v26 = *(a3 + 16);
          *&time1.start.value = *a3;
          *&time1.start.epoch = v26;
          *&time1.duration.timescale = *(a3 + 32);
          CMTimeRangeGetEnd(&v34, &time1);
        }

        goto LABEL_14;
      }
    }

    else
    {
      v17 = *(a3 + 16);
      *&time1.start.value = *a3;
      *&time1.start.epoch = v17;
      *&time1.duration.timescale = *(a3 + 32);
      CMTimeRangeGetEnd(&time2, &time1);
      *&time1.start.value = *a1;
      time1.start.epoch = *(a1 + 2);
      if ((CMTimeCompare(&time1.start, &time2) & 0x80000000) == 0)
      {
        v18 = *(a3 + 16);
        v36 = *a3;
        v19 = *(a3 + 32);
        *&time1.start.value = *a3;
        *&time1.start.epoch = v18;
        *&time1.duration.timescale = v19;
        CMTimeRangeGetEnd(&v35, &time1);
        memset(&time2, 0, sizeof(time2));
        *&time1.start.value = *a1;
        time1.start.epoch = *(a1 + 2);
        rhs = *a2;
        CMTimeSubtract(&time2, &time1.start, &rhs);
        memset(&rhs, 0, sizeof(rhs));
        time1.start = v37;
        v30 = *a3;
        CMTimeSubtract(&rhs, &time1.start, &v30);
        memset(&v30, 0, sizeof(v30));
        time1.start = time2;
        lhs = rhs;
        CMTimeSubtract(&v30, &time1.start, &lhs);
        time1.start = v30;
        lhs = *(a3 + 24);
        if (CMTimeCompare(&time1.start, &lhs) < 0)
        {
          v27 = *(a3 + 16);
          *&time1.start.value = *a3;
          *&time1.start.epoch = v27;
          *&time1.duration.timescale = *(a3 + 32);
          CMTimeRangeGetEnd(&lhs, &time1);
          time1.start = v30;
          CMTimeSubtract(&v34, &lhs, &time1.start);
        }

        else
        {
          v34 = *a3;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
    v37 = *a1;
  }

  *&v36.value = *&a2->value;
  epoch = a2->epoch;
LABEL_13:
  v36.epoch = epoch;
LABEL_14:
  if (a4)
  {
    *a4 = v37;
  }

  if (a5)
  {
    *a5 = v36;
  }

  if (a6)
  {
    *a6 = v35;
  }

  result = 0;
  if (a7)
  {
    *a7 = v34;
  }

  return result;
}

uint64_t fvcp_preprocessParameters_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPPreprocessParametersID = result;
  return result;
}

uint64_t FigVCPPreprocessParametersCreate(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  cf = 0;
  if (a3)
  {
    Mutable = FigVCPPreprocessParametersCreateMutable(a1, &cf);
    if (Mutable)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      v6 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetInt();
      FigCFDictionarySetInt();
      FigCFDictionarySetInt();
      v7 = cf;
      *(cf + 3) = v6;
      v7[16] = 100;
      *a3 = v7;
    }
  }

  else
  {
    FigVCPPreprocessParametersCreate_cold_1(&v10);
    return v10;
  }

  return Mutable;
}

uint64_t FigVCPPreprocessParametersCreateMutable(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    MEMORY[0x19A8D3660](&FigVCPPreprocessParametersGetTypeID_sRegisterFigVCPPreprocessParametersOnce, fvcp_preprocessParameters_Register);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      result = 0;
      *(v4 + 16) = 1065353216;
      *a2 = v4;
    }

    else
    {
      FigVCPPreprocessParametersCreateMutable_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    FigVCPPreprocessParametersCreateMutable_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t FigVCPPreprocessParametersCreateCopy(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    MEMORY[0x19A8D3660](&FigVCPPreprocessParametersGetTypeID_sRegisterFigVCPPreprocessParametersOnce, fvcp_preprocessParameters_Register);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v6 = Instance;
      *(Instance + 16) = *(a2 + 16);
      v7 = *(a2 + 24);
      if (v7)
      {
        v7 = CFRetain(v7);
      }

      *(v6 + 24) = v7;
      v8 = *(a2 + 32);
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      *(v6 + 32) = v8;
      v9 = *(a2 + 40);
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      *(v6 + 40) = v9;
      v10 = *(a2 + 48);
      if (v10)
      {
        v11 = CFRetain(v10);
      }

      else
      {
        v11 = 0;
      }

      result = 0;
      *(v6 + 48) = v11;
      *(v6 + 64) = *(a2 + 64);
      *a3 = v6;
    }

    else
    {
      FigVCPPreprocessParametersCreateCopy_cold_1(&v13);
      return v13;
    }
  }

  else
  {
    FigVCPPreprocessParametersCreateCopy_cold_2(&v14);
    return v14;
  }

  return result;
}

uint64_t FigVCPSourceStartOver(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigVCPSourceCheckSampleAvailability(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v12)
  {
    return 4294954514;
  }

  v14 = *a4;
  v15 = *(a4 + 2);
  return v12(a1, a2, a3, &v14, a5, a6);
}

uint64_t FigVCPSourceSetCurrentTime(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6)
  {
    return 4294954514;
  }

  v8 = *a3;
  v9 = *(a3 + 2);
  return v6(a1, a2, &v8);
}

uint64_t FigVCPSourceCopyConformedImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVCPSourceCopySampleBuffer(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigVCPSourceCopyConformedTimedImages(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigVCPSourceCopyTimedSampleBuffers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVCPSourceHasNoMoreSamples(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t FigVCPSourceGetEarliestSequentialSampleTimeAfterTime(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  return v8(a1, &v10, a3, a4);
}

uint64_t FigVCPSourceThrottleForBackground(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 72);
  if (v7)
  {

    return v7(a1, a2);
  }

  return result;
}

uint64_t FigVCPSourceCopyPerformanceDictionary(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigVCPSourceSetPreprocessParameters(uint64_t a1, const void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 16) == 1986618469)
  {
    v4 = result;
    FigSimpleMutexLock();
    if (!FigCFEqual())
    {
      v5 = *(v4 + 32);
      *(v4 + 32) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v5)
      {
        CFRelease(v5);
      }

      v6 = *(v4 + 40);
      if (v6)
      {
        CFRelease(v6);
        *(v4 + 40) = 0;
      }

      ++*(v4 + 48);
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t FigVCPSourceGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVCPSourceGetClassID_sRegisterFigVCPSourceBaseTypeOnce, fvcp_source_RegisterFigVCPSourceBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t fvcp_source_createCommon(uint64_t a1, int a2, int a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (!a2)
  {
    v24 = 3003;
LABEL_20:
    fvcp_source_createCommon_cold_1(v24, &v25);
    return v25;
  }

  if (!a4)
  {
    v24 = 3004;
    goto LABEL_20;
  }

  if (!a8)
  {
    v24 = 3005;
    goto LABEL_20;
  }

  if (!a6)
  {
    v24 = 3006;
    goto LABEL_20;
  }

  MEMORY[0x19A8D3660](&FigVCPSourceGetClassID_sRegisterFigVCPSourceBaseTypeOnce, fvcp_source_RegisterFigVCPSourceBaseType);
  v14 = CMDerivedObjectCreate();
  if (v14)
  {
    return v14;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  *(DerivedStorage + 24) = FigSimpleMutexCreate();
  *(DerivedStorage + 104) = 0;
  *(DerivedStorage + 8) = a7;
  v16 = CMBaseObjectGetDerivedStorage();
  *(v16 + 216) = CFRetain(a4);
  *(v16 + 224) = 0;
  *(v16 + 16) = a3;
  v17 = MEMORY[0x1E6960C70];
  v18 = *MEMORY[0x1E6960C70];
  *(v16 + 240) = *MEMORY[0x1E6960C70];
  v19 = *(v17 + 16);
  *(v16 + 256) = v19;
  *(v16 + 264) = v18;
  *(v16 + 280) = v19;
  *(v16 + 288) = a5;
  *(v16 + 232) = FigSimpleMutexCreate();
  *(v16 + 296) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v20)
  {
    return 4294954514;
  }

  v14 = v20(a4, fvcp_source_sourceImageAvailable, 0);
  if (v14)
  {
    return v14;
  }

  v21 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v21)
  {
    return 4294954514;
  }

  v14 = v21(a4, fvcp_source_noMoreImages, 0);
  if (v14)
  {
    return v14;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v14 = FigNotificationCenterAddWeakListener();
  if (v14)
  {
    return v14;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v22 = FigNotificationCenterAddWeakListener();
  if (!v22)
  {
    *a8 = 0;
  }

  return v22;
}

uint64_t FigVCPVisualContextSourceCreateWithSamplingWindow(const __CFAllocator *a1, int a2, int a3, const void *a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v22 = 0;
  v11 = fvcp_source_createCommon(a1, a2, a3, a4, a6, a7, a8, &v22);
  if (!v11)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v13 = a5[3];
    v21[2] = a5[2];
    v21[3] = v13;
    v14 = a5[5];
    v21[4] = a5[4];
    v21[5] = v14;
    v15 = a5[1];
    v21[0] = *a5;
    v21[1] = v15;
    if (FigVideoCompositionTimeWindowDurationIsZero(v21))
    {
      if (a9)
      {
LABEL_4:
        *a9 = v22;
        return v11;
      }
    }

    else
    {
      v16 = *a5;
      *(DerivedStorage + 136) = a5[1];
      *(DerivedStorage + 120) = v16;
      v17 = a5[2];
      v18 = a5[3];
      v19 = a5[4];
      *(DerivedStorage + 200) = a5[5];
      *(DerivedStorage + 184) = v19;
      *(DerivedStorage + 168) = v18;
      *(DerivedStorage + 152) = v17;
      *(DerivedStorage + 328) = FigSimpleMutexCreate();
      *(DerivedStorage + 336) = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      if (a9)
      {
        goto LABEL_4;
      }
    }
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v11;
}

uint64_t FigVCPVisualContextGroupSourceCreate(const __CFAllocator *a1, int a2, int a3, CFArrayRef theArray, const __CFArray *a5, uint64_t a6, uint64_t a7, uint64_t a8, CFTypeRef *a9)
{
  cf = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a5)
    {
LABEL_3:
      v17 = CFArrayGetCount(a5);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  value = 0;
  if (!a2)
  {
    FigVCPVisualContextGroupSourceCreate_cold_7(&v32);
LABEL_32:
    v26 = v32;
    goto LABEL_33;
  }

  if (!theArray)
  {
    FigVCPVisualContextGroupSourceCreate_cold_6(&v32);
    goto LABEL_32;
  }

  if (!a5)
  {
    FigVCPVisualContextGroupSourceCreate_cold_5(&v32);
    goto LABEL_32;
  }

  if (!a9)
  {
    FigVCPVisualContextGroupSourceCreate_cold_4(&v32);
    goto LABEL_32;
  }

  if (!a7)
  {
    FigVCPVisualContextGroupSourceCreate_cold_3(&v32);
    goto LABEL_32;
  }

  if (Count != v17)
  {
    FigVCPVisualContextGroupSourceCreate_cold_1(&v32);
    goto LABEL_32;
  }

  MEMORY[0x19A8D3660](&FigVCPSourceGetClassID_sRegisterFigVCPSourceBaseTypeOnce, fvcp_source_RegisterFigVCPSourceBaseType);
  v18 = CMDerivedObjectCreate();
  if (v18)
  {
    v26 = v18;
    goto LABEL_33;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = CMBaseObjectGetDerivedStorage();
  *v20 = a2;
  *(v20 + 24) = FigSimpleMutexCreate();
  *(v20 + 104) = 0;
  *(v20 + 8) = a8;
  *(DerivedStorage + 224) = FigCFArrayCreateCopy();
  Mutable = CFArrayCreateMutable(a1, Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigVCPVisualContextGroupSourceCreate_cold_2(&v32);
    goto LABEL_32;
  }

  v22 = Mutable;
  v28 = DerivedStorage;
  if (Count < 1)
  {
LABEL_20:
    v26 = 0;
    *(v28 + 216) = v22;
    *a9 = cf;
    return v26;
  }

  v23 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v23);
    v25 = fvcp_source_createCommon(a1, a2, a3, ValueAtIndex, a6, a7, a8, &value);
    if (v25)
    {
      break;
    }

    CFArrayAppendValue(v22, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    if (Count == ++v23)
    {
      goto LABEL_20;
    }
  }

  v26 = v25;
  CFRelease(v22);
  if (value)
  {
    CFRelease(value);
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  return v26;
}

uint64_t FigVCPBufferQueueSourceCreate(const __CFAllocator *a1, int a2, const void *a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v33 = 0;
  if (!a2)
  {
    FigVCPBufferQueueSourceCreate_cold_4(v32);
    return LODWORD(v32[0]);
  }

  if (!a3)
  {
    FigVCPBufferQueueSourceCreate_cold_3(v32);
    return LODWORD(v32[0]);
  }

  if (!a9)
  {
    FigVCPBufferQueueSourceCreate_cold_2(v32);
    return LODWORD(v32[0]);
  }

  if (!a7)
  {
    FigVCPBufferQueueSourceCreate_cold_1(v32);
    return LODWORD(v32[0]);
  }

  MEMORY[0x19A8D3660](&FigVCPSourceGetClassID_sRegisterFigVCPSourceBaseTypeOnce, fvcp_source_RegisterFigVCPSourceBaseType);
  v16 = CMDerivedObjectCreate();
  v17 = v33;
  if (v16)
  {
    goto LABEL_11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  *(DerivedStorage + 24) = FigSimpleMutexCreate();
  *(DerivedStorage + 104) = 0;
  *(DerivedStorage + 8) = a8;
  v19 = CMBaseObjectGetDerivedStorage();
  *(v19 + 216) = CFRetain(a3);
  *(v19 + 224) = 0;
  *(v19 + 264) = 0;
  v20 = *(a4 + 16);
  *(v19 + 268) = *a4;
  *(v19 + 284) = v20;
  v21 = MEMORY[0x1E6960C70];
  v22 = *MEMORY[0x1E6960C70];
  *(v19 + 304) = *MEMORY[0x1E6960C70];
  v23 = *(v21 + 16);
  *(v19 + 320) = v23;
  *(v19 + 328) = v22;
  *(v19 + 344) = v23;
  *(v19 + 352) = a6;
  *(v19 + 296) = FigSimpleMutexCreate();
  *(v19 + 232) = FigSimpleMutexCreate();
  *(v19 + 360) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v24 = a5[3];
  v32[2] = a5[2];
  v32[3] = v24;
  v25 = a5[5];
  v32[4] = a5[4];
  v32[5] = v25;
  v26 = a5[1];
  v32[0] = *a5;
  v32[1] = v26;
  if (!FigVideoCompositionTimeWindowDurationIsZero(v32))
  {
    v27 = *a5;
    *(v19 + 136) = a5[1];
    *(v19 + 120) = v27;
    v28 = a5[2];
    v29 = a5[3];
    v30 = a5[4];
    *(v19 + 200) = a5[5];
    *(v19 + 184) = v30;
    *(v19 + 168) = v29;
    *(v19 + 152) = v28;
    *(v19 + 256) = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v16 = FigNotificationCenterAddWeakListener();
  v17 = v33;
  if (v16)
  {
LABEL_11:
    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    *a9 = v33;
  }

  return v16;
}

uint64_t fvcp_pendingFrame_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPPendingFrameID = result;
  return result;
}

__n128 FigVCPPendingFrameGetFrameTime@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[2];
  *a2 = result;
  a2[1].n128_u64[0] = a1[3].n128_u64[0];
  return result;
}

__n128 FigVCPPendingFrameGetFoldedFrameTime@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 56);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 72);
  return result;
}

uint64_t FigVCPPendingFrameGetCompletionStatus(uint64_t a1)
{
  if (!FigAtomicCompareAndSwap32() && !FigAtomicCompareAndSwap32())
  {
    return 4294954989;
  }

  result = FigAtomicCompareAndSwapPtr();
  if (result)
  {
    return *(a1 + 200);
  }

  return result;
}

uint64_t FigVCPPendingFrameSkipCoreAnimationPostProcessing(uint64_t a1)
{
  CFDictionaryGetValue(*(a1 + 24), @"EnablePostProcessing");

  return FigCFEqual();
}

void FigVCPPendingFrameReleaseAndClearSourceFrames(uint64_t a1)
{
  if (*(a1 + 88))
  {
    v2 = *(a1 + 96);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 96) = 0;
    }

    v3 = *(a1 + 104);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 104) = 0;
    }
  }

  else
  {
    v4 = *(a1 + 112);
    if (v4 >= 1)
    {
      for (i = 0; i < v4; ++i)
      {
        v6 = *(*(a1 + 128) + 8 * i);
        if (v6)
        {
          CFRelease(v6);
          *(*(a1 + 128) + 8 * i) = 0;
          v4 = *(a1 + 112);
        }
      }
    }

    v7 = *(a1 + 128);
    if (v7)
    {
      *(a1 + 128) = 0;
      free(v7);
    }

    v8 = *(a1 + 120);
    if (v8)
    {
      *(a1 + 120) = 0;
      free(v8);
    }

    *(a1 + 112) = 0;
    v9 = *(a1 + 136);
    if (v9 >= 1)
    {
      for (j = 0; j < v9; ++j)
      {
        v11 = *(*(a1 + 152) + 8 * j);
        if (v11)
        {
          CFRelease(v11);
          *(*(a1 + 152) + 8 * j) = 0;
          v9 = *(a1 + 136);
        }
      }
    }

    v12 = *(a1 + 152);
    if (v12)
    {
      *(a1 + 152) = 0;
      free(v12);
    }

    v13 = *(a1 + 144);
    if (v13)
    {
      *(a1 + 144) = 0;
      free(v13);
    }

    *(a1 + 136) = 0;
  }
}

uint64_t FigVCPPendingFrameCreateWithWindowedSamples(uint64_t a1, int a2, const void *a3, uint64_t a4, uint64_t a5, char a6, int a7, int a8, char a9, CFTypeRef cf, const void *a11, uint64_t *a12)
{
  v21 = 0;
  v19 = *a4;
  v20 = *(a4 + 16);
  v17 = *a5;
  v18 = *(a5 + 16);
  v12 = figvcp_pendingFrame_createCommon(a1, a2, a3, &v19, &v17, a6, a7, a8, a9, &v21);
  if (v12)
  {
    FigSignalErrorAtGM();
    v14 = v21;
    if (!v21)
    {
      return v12;
    }

LABEL_11:
    CFRelease(v14);
    return v12;
  }

  if (cf)
  {
    v13 = CFRetain(cf);
  }

  else
  {
    v13 = 0;
  }

  v14 = v21;
  *(v21 + 96) = v13;
  if (a11)
  {
    v15 = CFRetain(a11);
    v14 = v21;
  }

  else
  {
    v15 = 0;
  }

  *(v14 + 104) = v15;
  *(v14 + 88) = 1;
  if (!a12)
  {
    goto LABEL_11;
  }

  *a12 = v14;
  return v12;
}

uint64_t figvcp_pendingFrame_createCommon(uint64_t a1, int a2, const void *a3, __int128 *a4, __int128 *a5, char a6, int a7, int a8, char a9, uint64_t *a10)
{
  if (!a3)
  {
    figvcp_pendingFrame_createCommon_cold_5(&v24);
    return v24;
  }

  if ((*(a4 + 3) & 0x1D) != 1)
  {
    figvcp_pendingFrame_createCommon_cold_1(&v24);
    return v24;
  }

  if ((*(a5 + 3) & 1) != 0 && (*(a5 + 3) & 0x1D) != 1)
  {
    figvcp_pendingFrame_createCommon_cold_4(&v24);
    return v24;
  }

  if (!a10)
  {
    figvcp_pendingFrame_createCommon_cold_3(&v24);
    return v24;
  }

  MEMORY[0x19A8D3660](&FigVCPPendingFrameGetTypeID_sRegisterFigVCPPendingFrameOnce, fvcp_pendingFrame_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    figvcp_pendingFrame_createCommon_cold_2(&v24);
    return v24;
  }

  v18 = Instance;
  *(Instance + 16) = a2;
  *(Instance + 24) = CFRetain(a3);
  v19 = *a4;
  *(v18 + 48) = *(a4 + 2);
  *(v18 + 32) = v19;
  if (*(a5 + 3))
  {
    v20 = a5;
  }

  else
  {
    v20 = a4;
  }

  v21 = *v20;
  *(v18 + 72) = *(v20 + 2);
  *(v18 + 56) = v21;
  *(v18 + 80) = a6;
  *(v18 + 84) = a7;
  *(v18 + 240) = a8;
  *(v18 + 204) = a9;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  result = 0;
  *(v18 + 248) = UpTimeNanoseconds;
  *a10 = v18;
  return result;
}

uint64_t FigVCPPendingFrameCreate(uint64_t a1, int a2, const void *a3, uint64_t a4, uint64_t a5, char a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v47[0] = 0;
  if (!a3)
  {
    FigVCPPendingFrameCreate_cold_9(&v45);
    goto LABEL_39;
  }

  if ((*(a4 + 12) & 0x1D) != 1)
  {
    FigVCPPendingFrameCreate_cold_1(&v45);
    goto LABEL_39;
  }

  if ((*(a5 + 12) & 1) != 0 && (*(a5 + 12) & 0x1D) != 1)
  {
    FigVCPPendingFrameCreate_cold_8(&v45);
    goto LABEL_39;
  }

  if (!a16)
  {
    FigVCPPendingFrameCreate_cold_7(&v45);
    goto LABEL_39;
  }

  v18 = a10;
  if (a10 < 1)
  {
    v20 = 0;
    v22 = 0;
    goto LABEL_19;
  }

  if (a10 >> 62 || !(4 * a10) || (v19 = malloc_type_malloc(4 * a10, 0x100004052888210uLL)) == 0)
  {
    FigVCPPendingFrameCreate_cold_6(&v45);
LABEL_39:
    v20 = 0;
LABEL_41:
    v32 = v45;
    goto LABEL_34;
  }

  v20 = v19;
  if (a10 >> 61 || !(8 * a10) || (v21 = malloc_type_malloc(8 * a10, 0x2004093837F09uLL)) == 0)
  {
    FigVCPPendingFrameCreate_cold_5(&v45);
    goto LABEL_41;
  }

  v22 = v21;
  for (i = 0; i != a10; ++i)
  {
    v20[i] = *(a11 + 4 * i);
    v24 = *(a12 + 8 * i);
    if (v24)
    {
      v24 = CFRetain(v24);
    }

    v22[i] = v24;
  }

LABEL_19:
  v25 = a13;
  if (a13 < 1)
  {
    v27 = 0;
    v29 = 0;
    goto LABEL_32;
  }

  if (a13 >> 62 || !(4 * a13) || (v26 = malloc_type_malloc(4 * a13, 0x100004052888210uLL)) == 0)
  {
    FigVCPPendingFrameCreate_cold_4(&v45);
    v27 = 0;
    goto LABEL_44;
  }

  v27 = v26;
  if (a13 >> 61 || !(8 * a13) || (v28 = malloc_type_malloc(8 * a13, 0x2004093837F09uLL)) == 0)
  {
    FigVCPPendingFrameCreate_cold_3(&v45);
LABEL_44:
    v29 = 0;
    v32 = v45;
    if (!v22)
    {
      goto LABEL_51;
    }

LABEL_45:
    if (a10 >= 1)
    {
      v35 = v22;
      do
      {
        if (*v35)
        {
          CFRelease(*v35);
        }

        ++v35;
        --v18;
      }

      while (v18);
    }

    free(v22);
    goto LABEL_51;
  }

  v29 = v28;
  for (j = 0; j != a13; ++j)
  {
    v27[j] = *(a14 + 4 * j);
    v31 = *(a15 + 8 * j);
    if (v31)
    {
      v31 = CFRetain(v31);
    }

    v29[j] = v31;
  }

LABEL_32:
  v45 = *a4;
  v46 = *(a4 + 16);
  v43 = *a5;
  v44 = *(a5 + 16);
  v32 = figvcp_pendingFrame_createCommon(a1, a2, a3, &v45, &v43, a6, a7, a8, a9, v47);
  if (!v32)
  {
    v33 = v47[0];
    *(v47[0] + 14) = a10;
    v33[15] = v20;
    v33[16] = v22;
    v33[17] = a13;
    v33[18] = v27;
    v33[19] = v29;
    *a16 = v33;
    v47[0] = 0;
    v20 = 0;
LABEL_34:
    free(v20);
    v27 = 0;
    goto LABEL_35;
  }

  FigVCPPendingFrameCreate_cold_2();
  if (v22)
  {
    goto LABEL_45;
  }

LABEL_51:
  free(v20);
  if (v29)
  {
    if (a13 >= 1)
    {
      v36 = v29;
      do
      {
        if (*v36)
        {
          CFRelease(*v36);
        }

        ++v36;
        --v25;
      }

      while (v25);
    }

    free(v29);
  }

LABEL_35:
  free(v27);
  if (v47[0])
  {
    CFRelease(v47[0]);
  }

  return v32;
}

BOOL FigVCPPendingFrameShouldGenerateHDRStats(uint64_t a1)
{
  if ((*(a1 + 208) & 1) == 0)
  {
    goto LABEL_2;
  }

  if (*(a1 + 184))
  {
    return 0;
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    v5 = CVBufferCopyAttachment(*(a1 + 176), *MEMORY[0x1E6965D88], 0);
    v6 = CVBufferCopyAttachment(v4, *MEMORY[0x1E6965F30], 0);
    v7 = CVBufferCopyAttachment(v4, *MEMORY[0x1E6965F98], 0);
    v2 = FigCFEqual() && FigCFEqual() && FigCFEqual() != 0;
    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
LABEL_2:
    v2 = 0;
  }

  *(a1 + 204) = v2;
  return v2;
}

void FigVCPPendingFrameSetRenderedFrame(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v3 = CFRetain(cf);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 176) = v3;

  fvcp_pendingFrame_propagateSceneLuxAttachmentFromSourceToRenderedFrameIfApplicable(a1);
}

uint64_t FigVCPPendingFrameSetRenderComplete()
{
  FigAtomicCompareAndSwap32();
  FigAtomicCompareAndSwap32();

  return FigAtomicCompareAndSwap32();
}

uint64_t FigVCPPendingFrameGenerateHDRMetadataAndAttachToRenderedFrame(uint64_t a1)
{
  if (*(a1 + 212) && (*(a1 + 208) & 1) != 0 && (DataFromStatistics = VTHDRMetadataGenerationSessionCreateDataFromStatistics(), DataFromStatistics))
  {
    return DataFromStatistics;
  }

  else
  {
    return 0;
  }
}

uint64_t fvcp_timing_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPTimingID = result;
  return result;
}

CFTypeRef FigVCPTimingCopyTimebase(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

__n128 FigVCPTimingGetOutputFrameDuration@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[2];
  *a2 = result;
  a2[1].n128_u64[0] = a1[3].n128_u64[0];
  return result;
}

uint64_t FigVCPTimingSetTimebase(uint64_t a1, OpaqueCMTimebase *a2)
{
  v4 = FigVCPTimingCopyTimebase(a1);
  v5 = v4;
  if (!a2)
  {
    FigVCPTimingSetTimebase_cold_1(&v10);
    v7 = v10;
    if (!v5)
    {
      return v7;
    }

    goto LABEL_6;
  }

  if (v4)
  {
    v9 = fvcp_timing_removeTimebaseListeners();
    if (v9)
    {
      v7 = v9;
LABEL_6:
      CFRelease(v5);
      return v7;
    }
  }

  fvcp_timing_setTimebase(a1, a2);
  CMNotificationCenterGetDefaultLocalCenter();
  v6 = FigNotificationCenterAddWeakListener();
  if (!v6)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v6 = FigNotificationCenterAddWeakListener();
  }

  v7 = v6;
  if (v5)
  {
    goto LABEL_6;
  }

  return v7;
}

uint64_t fvcp_timing_setTimebase(uint64_t a1, CMTimebaseRef timebase)
{
  timeOut = **&MEMORY[0x1E6960C70];
  rateOut = 0.0;
  CMTimebaseGetTimeAndRate(timebase, &timeOut, &rateOut);
  if (rateOut > 0.0)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  if (rateOut == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  FigSimpleMutexLock();
  *(a1 + 188) = timeOut;
  *(a1 + 164) = v5;
  *(a1 + 214) = 0;
  ++*(a1 + 184);
  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v6 = *(a1 + 72);
  *(a1 + 72) = timebase;
  if (timebase)
  {
    CFRetain(timebase);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return FigSimpleMutexUnlock();
}

BOOL FigVCPTimingUsesTimebase(uint64_t a1)
{
  v1 = FigVCPTimingCopyTimebase(a1);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 != 0;
}

uint64_t FigVCPTimingSetLoopTimeRange(_OWORD *a1, uint64_t a2)
{
  if ((*(a2 + 12) & 1) == 0 || (*(a2 + 36) & 1) == 0 || *(a2 + 40) || (*(a2 + 24) & 0x8000000000000000) != 0 || (*(a2 + 12) & 0x1D) == 1 && (time1 = *a2, v8 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v4 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v4, (CMTimeCompare(&time1, &time2) & 0x80000000) == 0) && (*(a2 + 36) & 0x1D) == 1 && (time1 = *(a2 + 24), *&time2.value = v8, time2.epoch = v4, CMTimeCompare(&time1, &time2) > 0))
  {
    FigSimpleMutexLock();
    v6 = *(a2 + 16);
    v5 = *(a2 + 32);
    a1[7] = *a2;
    a1[8] = v6;
    a1[9] = v5;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    FigVCPTimingSetLoopTimeRange_cold_1(&time1);
    return LODWORD(time1.value);
  }
}

uint64_t FigVCPTimingGetLoopTimeRange@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  FigSimpleMutexLock();
  v4 = a1[8];
  *a2 = a1[7];
  a2[1] = v4;
  a2[2] = a1[9];

  return FigSimpleMutexUnlock();
}

uint64_t FigVCPTimingStartOver(uint64_t a1, CMTime *a2, __int128 *a3, int a4, int a5)
{
  v13 = a5;
  v14 = a4;
  FigSimpleMutexLock();
  *(a1 + 168) = 0;
  if (a5 == -1)
  {
    *(a1 + 169) = 1;
  }

  else
  {
    time1 = *a2;
    v11 = *a3;
    *(a1 + 169) = CMTimeCompare(&time1, &v11) == 0;
    if (a5 == 1)
    {
      time1 = *a2;
      v11 = *a3;
      if (!CMTimeCompare(&time1, &v11) && !FigVCPTimingUsesTimebase(a1))
      {
        *(a1 + 170) = 1;
      }
    }
  }

  ++*(a1 + 184);
  FigSimpleMutexUnlock();
  v9 = FigVCPTimingUsesTimebase(a1);
  fvcp_timing_setNextFrameTime(a1, &a2->value, a3, &v14, &v13, v9, a5 == 0);
  return 0;
}

uint64_t fvcp_timing_setNextFrameTime(uint64_t a1, __int128 *a2, __int128 *a3, _DWORD *a4, _DWORD *a5, int a6, int a7)
{
  FigSimpleMutexLock();
  if (a2)
  {
    v14 = *a2;
    *(a1 + 204) = *(a2 + 2);
    *(a1 + 188) = v14;
  }

  if (a3)
  {
    v15 = *a3;
    *(a1 + 104) = *(a3 + 2);
    *(a1 + 88) = v15;
  }

  if (a4)
  {
    *(a1 + 160) = *a4;
  }

  if (a5)
  {
    *(a1 + 164) = *a5;
  }

  if (a6)
  {
    *(a1 + 213) = *(a1 + 164) == 0;
  }

  if (a7)
  {
    *(a1 + 212) = 1;
  }

  *(a1 + 214) = 0;
  ++*(a1 + 184);

  return FigSimpleMutexUnlock();
}

uint64_t FigVCPTimingResetNextFrameTimeToCurrentTimebaseTime(uint64_t a1)
{
  v4 = **&MEMORY[0x1E6960C70];
  v2 = FigVCPTimingCopyTimebase(a1);
  if (v2)
  {
    CMTimebaseGetTime(&v4, v2);
  }

  if (v4.flags)
  {
    FigSimpleMutexLock();
    *(a1 + 188) = v4;
    *(a1 + 213) = *(a1 + 164) == 0;
    *(a1 + 214) = 0;
    ++*(a1 + 184);
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t FigVCPTimingCopyProcessingState(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 104);
  v5 = *(a1 + 136);
  v6 = *(a1 + 88);
  *(a2 + 32) = *(a1 + 120);
  *(a2 + 48) = v5;
  *a2 = v6;
  *(a2 + 16) = v4;
  v7 = *(a1 + 168);
  v8 = *(a1 + 200);
  v9 = *(a1 + 152);
  *(a2 + 96) = *(a1 + 184);
  *(a2 + 112) = v8;
  *(a2 + 64) = v9;
  *(a2 + 80) = v7;
  result = FigSimpleMutexUnlock();
  *(a2 + 88) = *(a1 + 24);
  return result;
}

uint64_t FigVCPTimingSaveProcessingState(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 184);
  if (v4 == *(a2 + 96))
  {
    v5 = *(a2 + 100);
    *(a1 + 204) = *(a2 + 116);
    *(a1 + 188) = v5;
    *(a1 + 212) = *(a2 + 124);
    *(a1 + 184) = v4 + 1;
  }

  return FigSimpleMutexUnlock();
}

BOOL FigVCPTimingIsProcessingStateFresh(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 184) == *(a2 + 96) && *(a1 + 168) == *(a2 + 80);
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t FigVCPTimingCreate(const __CFAllocator *a1, uint64_t a2, int a3, char a4, int a5, uint64_t a6, uint64_t *a7)
{
  cf = 0;
  if (!a7)
  {
    FigVCPTimingCreate_cold_3(&v26);
    return v26;
  }

  if ((*(a2 + 12) & 0x1D) != 1)
  {
    FigVCPTimingCreate_cold_1(&v26);
    return v26;
  }

  MEMORY[0x19A8D3660](&FigVCPTimingGetTypeID_sRegisterFigVCPTimingOnce, fvcp_timing_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigVCPTimingCreate_cold_2(&v26);
    return v26;
  }

  v15 = Instance;
  *(Instance + 64) = FigSimpleMutexCreate();
  v16 = *(a2 + 16);
  *(v15 + 32) = *a2;
  *(v15 + 48) = v16;
  *(v15 + 56) = a3;
  *(v15 + 60) = a4;
  *(v15 + 24) = a6;
  *(v15 + 80) = FigSimpleMutexCreate();
  v17 = MEMORY[0x1E6960C70];
  v18 = *MEMORY[0x1E6960C70];
  *(v15 + 188) = *MEMORY[0x1E6960C70];
  v19 = *(v17 + 16);
  *(v15 + 204) = v19;
  *(v15 + 214) = 0;
  *(v15 + 212) = 0;
  *(v15 + 88) = v18;
  *(v15 + 104) = v19;
  *(v15 + 160) = 0;
  *(v15 + 169) = 0;
  if (!a5)
  {
    v22 = 0;
LABEL_8:
    v23 = 0;
    *a7 = v15;
    v15 = 0;
    if (!v22)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  v21 = CMTimebaseCreateWithSourceClock(a1, HostTimeClock, &cf);
  v22 = cf;
  if (!v21)
  {
    fvcp_timing_setTimebase(v15, cf);
    v22 = cf;
    goto LABEL_8;
  }

  v23 = v21;
  if (cf)
  {
LABEL_9:
    CFRelease(v22);
  }

LABEL_10:
  if (v15)
  {
    CFRelease(v15);
  }

  return v23;
}

uint64_t FigVCPProcessingStateHasReachedTheEnd(uint64_t a1)
{
  v3 = *(a1 + 112);
  if ((~v3 & 5) == 0 || (*(a1 + 112) & 9) == 9)
  {
    return 1;
  }

  v6 = *(a1 + 12);
  if ((v6 & 0x1D) != 1)
  {
    return 0;
  }

  v15 = v1;
  v16 = v2;
  v7 = *(a1 + 116);
  v8 = *(a1 + 76);
  if (*(a1 + 81))
  {
    if (v8 < 0)
    {
      v11 = *(a1 + 100);
      v13.epoch = *(a1 + 16);
      time1.value = v11;
      time1.timescale = *(a1 + 108);
      time1.flags = v3;
      time1.epoch = v7;
      v13.value = *a1;
      v13.timescale = *(a1 + 8);
      v13.flags = v6;
      if (CMTimeCompare(&time1, &v13) < 0)
      {
        return 1;
      }
    }

    else
    {
      v9 = *(a1 + 100);
      v13.epoch = *(a1 + 16);
      time1.value = v9;
      time1.timescale = *(a1 + 108);
      time1.flags = v3;
      time1.epoch = v7;
      v13.value = *a1;
      v13.timescale = *(a1 + 8);
      v13.flags = v6;
      if (CMTimeCompare(&time1, &v13) > 0)
      {
        return 1;
      }
    }
  }

  else if (v8 < 0)
  {
    v12 = *(a1 + 100);
    v13.epoch = *(a1 + 16);
    time1.value = v12;
    time1.timescale = *(a1 + 108);
    time1.flags = v3;
    time1.epoch = v7;
    v13.value = *a1;
    v13.timescale = *(a1 + 8);
    v13.flags = v6;
    if (CMTimeCompare(&time1, &v13) <= 0)
    {
      return 1;
    }
  }

  else
  {
    v10 = *(a1 + 100);
    v13.epoch = *(a1 + 16);
    time1.value = v10;
    time1.timescale = *(a1 + 108);
    time1.flags = v3;
    time1.epoch = v7;
    v13.value = *a1;
    v13.timescale = *(a1 + 8);
    v13.flags = v6;
    if ((CMTimeCompare(&time1, &v13) & 0x80000000) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t FigVCPProcessingStateAdvanceCurrentTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 56);
  if (v5 && FigVCPSourceArrayGetSourceWithTrackID(a2, v5))
  {
    fvcp_processingState_advanceCurrentTimeWithSourceTiming();
  }

  v6 = *(a3 + 32);
  v7 = *(a3 + 40);
  v12 = *(a3 + 44);
  v13 = *(a3 + 52);
  if ((*(a1 + 76) & 0x80000000) != 0)
  {
    time = *(a1 + 100);
    CMTimeConvertScale(&lhs, &time, v7, kCMTimeRoundingMethod_RoundTowardPositiveInfinity);
    lhs.value += ((v6 - lhs.value) % v6 + v6) % v6;
    rhs.value = v6;
    rhs.timescale = v7;
    *&rhs.flags = v12;
    HIDWORD(rhs.epoch) = v13;
    CMTimeSubtract(&time, &lhs, &rhs);
  }

  else
  {
    time = *(a1 + 100);
    CMTimeConvertScale(&lhs, &time, v7, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
    lhs.value += (lhs.value % v6 + v6) / v6 * v6 - (lhs.value % v6 + v6);
    rhs.value = v6;
    rhs.timescale = v7;
    *&rhs.flags = v12;
    HIDWORD(rhs.epoch) = v13;
    CMTimeAdd(&time, &lhs, &rhs);
  }

  *(a1 + 100) = time;
  return 0;
}

const void *FigVCPSourceArrayGetSourceWithTrackID(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v7);
    if (*CMBaseObjectGetDerivedStorage() == a2)
    {
      break;
    }

    if (v6 == ++v7)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

uint64_t fvcp_output_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPOutputID = result;
  return result;
}

uint64_t FigVCPOutputGetOutputDurationWaterLevels(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = fvcp_output_copyOutputDurationWaterLevel(a1);
  if (a2)
  {
    v6 = v5[1];
    *(a2 + 16) = *(v5 + 4);
    *a2 = v6;
  }

  if (a3)
  {
    v7 = *(v5 + 40);
    *(a3 + 16) = *(v5 + 7);
    *a3 = v7;
LABEL_6:
    CFRelease(v5);
    return 0;
  }

  if (v5)
  {
    goto LABEL_6;
  }

  return 0;
}

CFTypeRef fvcp_output_copyOutputDurationWaterLevel(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

__n128 FigVCPOutputDurationWaterLevelGetUpperBound@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[1];
  *a2 = result;
  a2[1].n128_u64[0] = a1[2].n128_u64[0];
  return result;
}

__n128 FigVCPOutputDurationWaterLevelGetLowerBound@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 40);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 56);
  return result;
}

uint64_t FigVCPOutputCopyOutputTagCollectionArray(uint64_t a1, void *a2)
{
  if (a2)
  {
    FigSimpleMutexLock();
    v4 = *(a1 + 80);
    if (v4)
    {
      v5 = CFRetain(v4);
    }

    else
    {
      v5 = 0;
    }

    FigSimpleMutexUnlock();
    *a2 = v5;
  }

  return 0;
}

uint64_t FigVCPOutputCreate(uint64_t a1, CFArrayRef theArray, const __CFArray *a3, CMTime *a4, CMTime *a5, uint64_t a6, void *a7)
{
  if (!theArray)
  {
    FigVCPOutputCreate_cold_4(&v28);
    return LODWORD(v28.value);
  }

  if (!a7)
  {
    FigVCPOutputCreate_cold_3(&v28);
    return LODWORD(v28.value);
  }

  if (a3)
  {
    Count = CFArrayGetCount(theArray);
    if (Count != CFArrayGetCount(a3))
    {
      FigVCPOutputCreate_cold_1(&v28);
      return LODWORD(v28.value);
    }
  }

  MEMORY[0x19A8D3660](&FigVCPOutputGetTypeID_sRegisterFigVCPOutputOnce, fvcp_output_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigVCPOutputCreate_cold_2(&v28);
    return LODWORD(v28.value);
  }

  v16 = Instance;
  v28 = *a4;
  v27 = *a5;
  v17 = FigVCPOutputDurationWaterLevelCreate(a1, &v28, &v27, (Instance + 96));
  if (v17)
  {
LABEL_17:
    v25 = v17;
    CFRelease(v16);
    return v25;
  }

  v16[11] = FigSimpleMutexCreate();
  v16[9] = CFRetain(theArray);
  if (a3)
  {
    v18 = CFRetain(a3);
  }

  else
  {
    v18 = 0;
  }

  v16[10] = v18;
  v16[3] = a6;
  v16[6] = FigSimpleMutexCreate();
  v19 = CFArrayGetCount(theArray);
  if (v19 >= 1)
  {
    v20 = v19;
    v21 = 0;
    v22 = MEMORY[0x1E6960C70];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v24)
      {
        v28 = *v22;
        v27 = v28;
        v24(ValueAtIndex, 1, &v28, &v27);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      v17 = FigNotificationCenterAddWeakListener();
      if (v17)
      {
        goto LABEL_17;
      }
    }

    while (v20 != ++v21);
  }

  v25 = 0;
  *a7 = v16;
  return v25;
}

uint64_t FigVCPOutputDurationWaterLevelCreate(uint64_t a1, CMTime *a2, CMTime *a3, uint64_t *a4)
{
  if (!a4)
  {
    FigVCPOutputDurationWaterLevelCreate_cold_5(&time1);
    return LODWORD(time1.value);
  }

  if ((a2->flags & 0x1D) != 1)
  {
    FigVCPOutputDurationWaterLevelCreate_cold_1(&time1);
    return LODWORD(time1.value);
  }

  if ((a3->flags & 0x1D) != 1)
  {
    FigVCPOutputDurationWaterLevelCreate_cold_2(&time1);
    return LODWORD(time1.value);
  }

  time1 = *a2;
  v12 = *a3;
  if (CMTimeCompare(&time1, &v12) <= 0)
  {
    FigVCPOutputDurationWaterLevelCreate_cold_4(&time1);
    return LODWORD(time1.value);
  }

  MEMORY[0x19A8D3660](&FigVCPOutputDurationWaterLevelGetTypeID_sRegisterFigVCPOutputDurationWaterLevelOnce, fvcp_outputDurationWaterLevel_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigVCPOutputDurationWaterLevelCreate_cold_3(&time1);
    return LODWORD(time1.value);
  }

  v8 = Instance;
  result = 0;
  v10 = *&a2->value;
  *(v8 + 32) = a2->epoch;
  *(v8 + 16) = v10;
  v11 = *&a3->value;
  *(v8 + 56) = a3->epoch;
  *(v8 + 40) = v11;
  *a4 = v8;
  return result;
}

void fvcp_output_OutputOccupancyChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = fvcp_output_copyOutputDurationWaterLevel(a2);
  v10 = *(v5 + 5);
  memset(&v9, 0, sizeof(v9));
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v6)
  {
    v6(&v9, a4);
  }

  else
  {
    v9 = **&MEMORY[0x1E6960C70];
  }

  time1 = v9;
  v7 = v10;
  if (CMTimeCompare(&time1, &v7) <= 0)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  CFRelease(v5);
}

uint64_t FigVCPOutputSetOutputDurationHighAndLowWaterLevels(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v14 = 0;
  if ((a3->flags & 0x1D) != 1)
  {
    FigVCPOutputSetOutputDurationHighAndLowWaterLevels_cold_1(&time1);
    return LODWORD(time1.value);
  }

  time1 = *a3;
  v11 = *MEMORY[0x1E6960CC0];
  *&time2.value = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  time2.epoch = v6;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    FigVCPOutputSetOutputDurationHighAndLowWaterLevels_cold_6(&time1);
    return LODWORD(time1.value);
  }

  if ((a2->flags & 0x1D) != 1)
  {
    FigVCPOutputSetOutputDurationHighAndLowWaterLevels_cold_2(&time1);
    return LODWORD(time1.value);
  }

  time1 = *a2;
  *&time2.value = v11;
  time2.epoch = v6;
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    FigVCPOutputSetOutputDurationHighAndLowWaterLevels_cold_5(&time1);
    return LODWORD(time1.value);
  }

  time1 = *a3;
  time2 = *a2;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    FigVCPOutputSetOutputDurationHighAndLowWaterLevels_cold_4(&time1);
    return LODWORD(time1.value);
  }

  v7 = *MEMORY[0x1E695E480];
  time1 = *a2;
  time2 = *a3;
  v8 = FigVCPOutputDurationWaterLevelCreate(v7, &time1, &time2, &v14);
  value = v14;
  if (!v8)
  {
    FigVCPOutputSetOutputDurationHighAndLowWaterLevels_cold_3(a1, v14, &v14, &time1);
    value = time1.value;
  }

  if (value)
  {
    CFRelease(value);
  }

  return v8;
}

uint64_t FigVCPOutputAllOutputsCanAccomodateFrame(uint64_t a1, uint64_t a2)
{
  v4 = fvcp_output_copyOutputDurationWaterLevel(a1);
  v20 = *(v4 + 2);
  Count = CFArrayGetCount(*(a1 + 72));
  v19 = **&MEMORY[0x1E6960C88];
  if (Count >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E6960C70];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v6);
      memset(&v18, 0, sizeof(v18));
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v9)
      {
        v9(&v18, ValueAtIndex);
      }

      else
      {
        v18 = *v7;
      }

      time1 = v19;
      v16 = v18;
      CMTimeMinimum(&v19, &time1, &v16);
      ++v6;
    }

    while (Count != v6);
  }

  v18 = v19;
  time1 = v20;
  v10 = CMTimeCompare(&v18, &time1);
  v11 = v10 >> 31;
  if ((v10 & 0x80000000) == 0 || Count < 1)
  {
LABEL_15:
    if (!v4)
    {
      return v11;
    }

LABEL_16:
    CFRelease(v4);
    return v11;
  }

  v12 = 0;
  while (1)
  {
    v13 = CFArrayGetValueAtIndex(*(a1 + 72), v12);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v14)
    {
      v14 = (v14)(v13);
    }

    if (v14 <= a2)
    {
      break;
    }

    if (Count == ++v12)
    {
      v11 = 1;
      goto LABEL_15;
    }
  }

  v11 = 0;
  if (v4)
  {
    goto LABEL_16;
  }

  return v11;
}

uint64_t FigVCPOutputSetUpcomingImageInfo(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  Count = CFArrayGetCount(*(a1 + 72));
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v10);
    v16 = *a3;
    v17 = *(a3 + 2);
    v14 = *a4;
    v15 = *(a4 + 2);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v12)
    {
      break;
    }

    v20 = v16;
    v21 = v17;
    v18 = v14;
    v19 = v15;
    result = v12(ValueAtIndex, a2, &v20, &v18);
    if (result)
    {
      return result;
    }

    if (v9 == ++v10)
    {
      return 0;
    }
  }

  return 4294954514;
}

uint64_t FigVCPOutputSetDirection(uint64_t a1, int a2)
{
  Count = CFArrayGetCount(*(a1 + 72));
  if (a2 >= 0)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = -1.0;
  }

  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v7);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v9)
    {
      break;
    }

    result = v9(ValueAtIndex, v5);
    if (result)
    {
      return result;
    }

    if (v6 == ++v7)
    {
      return 0;
    }
  }

  return 4294954514;
}

uint64_t FigVCPOutputSetHDRDisplayMetadataPolicy(uint64_t a1, const void *a2)
{
  v4 = (a1 + 32);
  if (FigCFEqual())
  {
    return 0;
  }

  FigVCPOutputSetHDRDisplayMetadataPolicy_cold_1(a1, a2, v4, &v6);
  return v6;
}

uint64_t FigVCPOutputFlush(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 72));
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v6)
      {
        v6(ValueAtIndex);
      }
    }
  }

  return FigAtomicCompareAndSwap32();
}

uint64_t FigVCPOutputEnqueueImage(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  Count = CFArrayGetCount(*(a1 + 72));
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  if (a4)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v10);
    v15 = *a3;
    v16 = *(a3 + 2);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v13)
    {
      break;
    }

    v17 = v15;
    v18 = v16;
    result = v13(ValueAtIndex, a2, 0, &v17, v11);
    if (result)
    {
      return result;
    }

    if (v9 == ++v10)
    {
      return 0;
    }
  }

  return 4294954514;
}

uint64_t FigVCPOutputEnqueueTaggedBufferGroup(uint64_t a1, OpaqueCMTaggedBufferGroup *a2, __int128 *a3, int a4)
{
  v8 = *(a1 + 72);
  if (v8)
  {
    Count = CFArrayGetCount(v8);
  }

  else
  {
    Count = 0;
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    v10 = CFArrayGetCount(v10);
  }

  if (Count == v10)
  {
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v11 = 0;
      if (a4)
      {
        v12 = 3;
      }

      else
      {
        v12 = 0;
      }

      v19 = *MEMORY[0x1E6960698];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v11);
        v14 = CFArrayGetValueAtIndex(*(a1 + 80), v11);
        tagBuffer = v19;
        CMTagCollectionGetTagsWithCategory(v14, kCMTagCategory_StereoView, &tagBuffer, 1, 0);
        CVPixelBufferForTag = CMTaggedBufferGroupGetCVPixelBufferForTag(a2, tagBuffer, 0);
        if (!CVPixelBufferForTag)
        {
          break;
        }

        v16 = CVPixelBufferForTag;
        v20 = *a3;
        v21 = *(a3 + 2);
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v17)
        {
          return 4294954514;
        }

        v23 = v20;
        v24 = v21;
        result = v17(ValueAtIndex, v16, 0, &v23, v12);
        if (result)
        {
          return result;
        }

        if (Count == ++v11)
        {
          return 0;
        }
      }

      return 4294954987;
    }
  }

  else
  {
    FigVCPOutputEnqueueTaggedBufferGroup_cold_1(&v23);
    return v23;
  }
}

uint64_t fvcp_sourceArray_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPSourceArrayID = result;
  return result;
}

const __CFArray *FigVCPSourceArrayGetCount(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t FigVCPSourceArrayNoMoreImagesOnAnySource(uint64_t a1)
{
  context = 1;
  v1 = *(a1 + 32);
  v4.length = CFArrayGetCount(v1);
  v4.location = 0;
  CFArrayApplyFunction(v1, v4, fvcp_sourceArray_noMoreImagesOnAnySource, &context);
  return context;
}

uint64_t fvcp_sourceArray_noMoreImagesOnAnySource(uint64_t result, _BYTE *a2)
{
  if (*a2)
  {
    result = FigVCPSourceHasNoMoreSamples(result);
    if (!result)
    {
      *a2 = 0;
    }
  }

  return result;
}

CFIndex FigVCPSourceArrayApplyFunction(uint64_t a1, uint64_t (*a2)(const void *, uint64_t), uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v7 = result;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), i);
        result = a2(ValueAtIndex, a3);
      }
    }
  }

  return result;
}

uint64_t FigVCPSourceArrayCopyPerformanceDictionary(uint64_t a1, CFMutableDictionaryRef *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigVCPSourceArrayApplyFunction(a1, fvcp_sourceArray_appendToPerformanceDictionary, Mutable);
  if (a2)
  {
    *a2 = Mutable;
  }

  else if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

void fvcp_sourceArray_appendToPerformanceDictionary(uint64_t a1, void *a2)
{
  theDict = 0;
  FigVCPSourceCopyPerformanceDictionary(a1, &theDict);
  if (theDict)
  {
    CFDictionaryApplyFunction(theDict, fvcp_addEntriesToDictionaryAux, a2);
    if (theDict)
    {
      CFRelease(theDict);
    }
  }
}

void fvcp_sourceArray_appendEachSourceToArrayExceptTrackID(const __CFArray *a1, __CFArray *a2, int a3)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        if (*CMBaseObjectGetDerivedStorage() == a3)
        {
          FigVCPSourceInvalidate(ValueAtIndex);
        }

        else
        {
          CFArrayAppendValue(a2, ValueAtIndex);
        }
      }
    }
  }
}

uint64_t FigVCPSourceArrayCreateEmpty(const __CFAllocator *a1, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    MEMORY[0x19A8D3660](&FigVCPSourceArrayGetTypeID_sRegisterFigVCPSourceArrayOnce, fvcp_sourceArray_Register);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      *(Instance + 32) = CFArrayCreate(a1, 0, 0, MEMORY[0x1E695E9C0]);
      v8 = CFSetCreate(a1, 0, 0, MEMORY[0x1E695E9F8]);
      result = 0;
      *(v7 + 40) = v8;
      *(v7 + 24) = a2;
      *a3 = v7;
    }

    else
    {
      FigVCPSourceArrayCreateEmpty_cold_1(&v10);
      return v10;
    }
  }

  else
  {
    FigVCPSourceArrayCreateEmpty_cold_2(&v11);
    return v11;
  }

  return result;
}

uint64_t fvcp_coreAnimationPostProcessor_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPCoreAnimationPostProcessorID = result;
  return result;
}

uint64_t FigVCPCoreAnimationPostProcessorThrottleForBackground(uint64_t a1)
{
  result = FigAtomicCompareAndSwapPtr();
  if (!result)
  {
    v3 = *(a1 + 48);

    return FigCoreAnimationRendererSetProperty(v3);
  }

  return result;
}

uint64_t FigVCPCoreAnimationPostProcessorCopyPixelBufferAtTime(uint64_t a1, uint64_t a2, __CVBuffer *a3, uint64_t a4, CFTypeRef *a5)
{
  FigSimpleMutexLock();
  *&v29.value = *a2;
  v29.epoch = *(a2 + 16);
  v31 = 0;
  v9 = FigAtomicCompareAndSwapPtr();
  v10 = *MEMORY[0x1E695E480];
  if (v9)
  {
    cf.value = 0;
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    FigCFDictionarySetInt32();
    CVPixelBufferGetWidth(a3);
    FigCFDictionarySetInt32();
    CVPixelBufferGetHeight(a3);
    FigCFDictionarySetInt32();
    v12 = FigCFDictionaryCreateMutableCopy();
    v13 = CVBufferCopyAttachments(a3, kCVAttachmentMode_ShouldPropagate);
    v14 = v13;
    if (v13)
    {
      v15 = *MEMORY[0x1E6965F98];
      if (CFDictionaryGetValue(v13, *MEMORY[0x1E6965F98]))
      {
        Value = CFDictionaryGetValue(v14, v15);
        CFDictionarySetValue(v12, v15, Value);
      }

      v17 = *MEMORY[0x1E6965F30];
      if (CFDictionaryGetValue(v14, *MEMORY[0x1E6965F30]))
      {
        v18 = CFDictionaryGetValue(v14, v17);
        CFDictionarySetValue(v12, v17, v18);
      }

      v19 = *MEMORY[0x1E6965D88];
      if (CFDictionaryGetValue(v14, *MEMORY[0x1E6965D88]))
      {
        v20 = CFDictionaryGetValue(v14, v19);
        CFDictionarySetValue(v12, v19, v20);
      }
    }

    value_low = FigCoreAnimationRendererCreate(v10, MutableCopy, *(a1 + 24), *(a1 + 32), v12, &cf.value);
    Mutable = cf.value;
    if (value_low)
    {
      if (cf.value)
      {
        CFRelease(cf.value);
        Mutable = 0;
      }
    }

    else
    {
      cf.value = 0;
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (value_low)
    {
      goto LABEL_31;
    }

    if (!FigAtomicCompareAndSwapPtr())
    {
      FigVCPCoreAnimationPostProcessorCopyPixelBufferAtTime_cold_1(&cf);
      value_low = LODWORD(cf.value);
      if (!Mutable)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  Mutable = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, a3);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v24 = *(a1 + 48);
  cf = v29;
  value_low = FigCoreAnimationRendererCopyPixelBufferAtTime(v24, &cf, Mutable, &v31, 0);
  v25 = FigGetUpTimeNanoseconds();
  v26 = (v25 - UpTimeNanoseconds) / 1000;
  ++*(a1 + 80);
  *(a1 + 72) += v26;
  v27 = *(a1 + 64);
  if (v27 >= v26)
  {
    v27 = (v25 - UpTimeNanoseconds) / 1000;
  }

  if (*(a1 + 56) > v26)
  {
    v26 = *(a1 + 56);
  }

  *(a1 + 56) = v26;
  *(a1 + 64) = v27;
  if (a5 && !value_low)
  {
    *a5 = v31;
    v31 = 0;
    if (!Mutable)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v31)
  {
    CFRelease(v31);
  }

LABEL_31:
  if (Mutable)
  {
LABEL_32:
    CFRelease(Mutable);
  }

LABEL_33:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t FigVCPCoreAnimationPostProcessorCreate(int a1, const void *a2, CFArrayRef theArray, const void *a4, void *a5)
{
  if (!a5)
  {
    FigVCPCoreAnimationPostProcessorCreate_cold_5(&v13);
    return v13;
  }

  if (!a2)
  {
    FigVCPCoreAnimationPostProcessorCreate_cold_4(&v13);
    return v13;
  }

  if (!theArray)
  {
    FigVCPCoreAnimationPostProcessorCreate_cold_3(&v13);
    return v13;
  }

  if (CFArrayGetCount(theArray) <= 0)
  {
    FigVCPCoreAnimationPostProcessorCreate_cold_2(&v13);
    return v13;
  }

  MEMORY[0x19A8D3660](&FigVCPCoreAnimationPostProcessorGetTypeID_sRegisterFigVCPCoreAnimationPostProcessorOnce, fvcp_coreAnimationPostProcessor_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigVCPCoreAnimationPostProcessorCreate_cold_1(&v13);
    return v13;
  }

  v10 = Instance;
  *(Instance + 16) = FigSimpleMutexCreate();
  v10[3] = CFRetain(a2);
  v10[4] = CFRetain(theArray);
  if (a4)
  {
    v11 = CFRetain(a4);
  }

  else
  {
    v11 = 0;
  }

  result = 0;
  v10[5] = v11;
  v10[8] = 0x7FFFFFFFLL;
  *a5 = v10;
  return result;
}

uint64_t FigVCPCoreAnimationPostProcessorCopyPerformanceDictionary(uint64_t a1, CFMutableDictionaryRef *a2)
{
  v4 = *(a1 + 48);
  FigMemoryBarrier();
  *a2 = fvcp_createCoreAnimationPerformanceDictionary(a1 + 56, v4);
  return 0;
}

CFMutableDictionaryRef fvcp_createCoreAnimationPerformanceDictionary(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  if (*(a1 + 24) >= 1)
  {
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
  }

  if (a2)
  {
    theDict = 0;
    FigCoreAnimationRendererCopyProperty(a2, @"FCARPerformanceDictionary", v4, &theDict);
    if (theDict)
    {
      CFDictionaryApplyFunction(theDict, fvcp_addEntriesToDictionaryAux, Mutable);
      if (theDict)
      {
        CFRelease(theDict);
      }
    }
  }

  return Mutable;
}

uint64_t fvcp_outputDurationWaterLevel_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPOutputDurationWaterLevelID = result;
  return result;
}

uint64_t fvcp_instructionGetter_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPInstructionSourceID = result;
  return result;
}

uint64_t FigVCPInstructionSourceCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2)
  {
    if (a5)
    {
      MEMORY[0x19A8D3660](&FigVCPInstructionSourceGetTypeID_sRegisterFigVCPInstructionSourceOnce, fvcp_instructionGetter_Register);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v10 = Instance;
        *(Instance + 24) = a2;
        *(Instance + 32) = a3;
        v11 = FigSimpleMutexCreate();
        result = 0;
        *(v10 + 48) = v11;
        *(v10 + 16) = a4;
        *a5 = v10;
      }

      else
      {
        FigVCPInstructionSourceCreate_cold_1(&v13);
        return v13;
      }
    }

    else
    {
      FigVCPInstructionSourceCreate_cold_2(&v14);
      return v14;
    }
  }

  else
  {
    FigVCPInstructionSourceCreate_cold_3(&v15);
    return v15;
  }

  return result;
}

uint64_t fvcp_outputConformer_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPOutputConformerID = result;
  return result;
}

uint64_t FigVCPTallyUpdateTimingInfo(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = (a3 - a2) / 1000;
  ++*(result + 24);
  *(result + 16) += v3;
  v4 = *(result + 8);
  if (v4 >= v3)
  {
    v4 = (a3 - a2) / 1000;
  }

  if (*result > v3)
  {
    v3 = *result;
  }

  *result = v3;
  *(result + 8) = v4;
  return result;
}

uint64_t FigVCPOutputConformerCreate(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    MEMORY[0x19A8D3660](&FigVCPOutputConformerGetTypeID_sRegisterFigVCPOutputConformerOnce, fvcp_outputConformer_Register);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v6 = Instance;
      v7 = FigSimpleMutexCreate();
      result = 0;
      v6[2] = a2;
      v6[3] = v7;
      v6[16] = 0x7FFFFFFFLL;
      *a3 = v6;
    }

    else
    {
      FigVCPOutputConformerCreate_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    FigVCPOutputConformerCreate_cold_2(&v10);
    return v10;
  }

  return result;
}

uint64_t FigVCPOutputConformerCopyPerformanceDictionary(uint64_t a1, CFMutableDictionaryRef *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  if (*(a1 + 144) >= 1)
  {
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
  }

  *a2 = Mutable;
  return 0;
}

uint64_t fvcp_compositorHost_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPCompositorHostID = result;
  return result;
}

void FigVCPCompositorHostStopAcceptingRequest(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 32) == 1)
  {

    FigSimpleMutexUnlock();
  }

  else
  {
    *(a1 + 32) = 1;
    FigSimpleMutexUnlock();
    FigAtomicCompareAndSwap32();
    if (FigAtomicCompareAndSwap32())
    {
      FigAtomicCompareAndSwap32();
      if (*(a1 + 112))
      {
        v2 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v2)
        {
          v3 = v2;
          (*(a1 + 112))();

          CFRelease(v3);
        }
      }
    }
  }
}

void FigVCPCompositorHostCancelPendingFrames(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = *(a1 + 40);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v4)
  {
    v4(v3);
  }

  FigSimpleMutexLock();
  v5 = *(a1 + 56);
  v11.length = FigAtomicAdd32();
  v11.location = 0;
  CFArrayApplyFunction(v5, v11, fvcp_compositorHost_markPendingFrameAsCancelled, Mutable);
  FigSimpleMutexUnlock();
  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
        fvcp_compositorHost_FrameCompletion(a1, ValueAtIndex[4], -12508, 0, 0);
      }
    }

    CFRelease(Mutable);
  }
}

BOOL FigVCPCompositorHostWaitForAllPendingFramesToComplete(uint64_t a1, int64_t a2)
{
  if (a2 < 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = dispatch_time(0, a2);
  }

  return dispatch_group_wait(*(a1 + 64), v3) == 0;
}

void FigVCPCompositorHostPurgePendingFrames(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FigSimpleMutexLock();
  v4 = *(a1 + 56);
  v16.length = FigAtomicAdd32();
  v16.location = 0;
  CFArrayApplyFunction(v4, v16, fvcp_compositorHost_collectCancellingFrames, Mutable);
  FigSimpleMutexUnlock();
  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
        fvcp_compositorHost_FrameCompletion(a1, ValueAtIndex[4], -12508, 0, 0);
      }
    }

    CFRelease(Mutable);
  }

  MutableCopy = CFArrayCreateMutableCopy(v2, 0, *(a1 + 56));
  if (MutableCopy)
  {
    v10 = MutableCopy;
    v11 = CFArrayGetCount(MutableCopy);
    if (v11 >= 1)
    {
      v12 = v11;
      for (j = 0; j != v12; ++j)
      {
        v14 = CFArrayGetValueAtIndex(v10, j);
        FigVCPCompositorHostRemovePendingFrame(a1, v14);
      }
    }

    CFRelease(v10);
  }
}

uint64_t FigVCPCompositorHostSetOutputCallback(uint64_t a1, uint64_t a2)
{
  v4 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v5 = v4;
  if (*(a1 + 88) || *(a1 + 80))
  {
    v6 = FigSignalErrorAtGM();
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    v6 = 0;
    *(a1 + 80) = a2;
    *(a1 + 88) = v4;
  }

  return v6;
}

uint64_t FigVCPCompositorHostSetCompletePrerollCallback(uint64_t a1, uint64_t a2)
{
  v4 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v5 = v4;
  if (*(a1 + 104) || *(a1 + 96))
  {
    v6 = FigSignalErrorAtGM();
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    v6 = 0;
    *(a1 + 96) = a2;
    *(a1 + 104) = v4;
  }

  return v6;
}

uint64_t FigVCPCompositorHostSetDidReachEndOfOutputCallback(uint64_t a1, uint64_t a2)
{
  v4 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v5 = v4;
  if (*(a1 + 120) || *(a1 + 112))
  {
    v6 = FigSignalErrorAtGM();
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    v6 = 0;
    *(a1 + 112) = a2;
    *(a1 + 120) = v4;
  }

  return v6;
}

uint64_t FigVCPCompositorHostGetCompositorInstanceID(uint64_t a1)
{
  v4 = 0;
  number = 0;
  FigBaseObject = FigVideoCompositorGetFigBaseObject(*(a1 + 40));
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(FigBaseObject, @"CompositorInstanceID", *MEMORY[0x1E695E480], &number);
    if (number)
    {
      CFNumberGetValue(number, kCFNumberSInt64Type, &v4);
      if (number)
      {
        CFRelease(number);
      }
    }
  }

  return v4;
}

uint64_t FigVCPCompositorHostComposeFrameAsync(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FigSimpleMutexLock();
  v3 = *(a1 + 56);
  v43.length = FigAtomicAdd32();
  v43.location = 0;
  CFArrayApplyFunction(v3, v43, fvcp_compositorHost_appendPendingFrameIfPreparing, Mutable);
  FigSimpleMutexUnlock();
  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
    if (Count < 1)
    {
      v4 = 0;
      goto LABEL_37;
    }

    v4 = 0;
    v5 = 0;
    v35 = Mutable;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v5);
      v7 = ValueAtIndex;
      if (*(ValueAtIndex + 88))
      {
        v8 = *(a1 + 40);
        v9 = *(ValueAtIndex + 12);
        v10 = *(ValueAtIndex + 13);
        v11 = *(ValueAtIndex + 3);
        v12 = ValueAtIndex[4];
        v13 = ValueAtIndex[21];
        v37 = *(ValueAtIndex + 14);
        v39 = *(ValueAtIndex + 9);
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (v14)
        {
          v41 = v37;
          v42 = v39;
          v14(v8, v9, v10, v11, &v41, v12, v13);
        }

        goto LABEL_31;
      }

      if (*(ValueAtIndex + 24))
      {
        goto LABEL_27;
      }

      v15 = *(ValueAtIndex + 14);
      if (v15 < 1)
      {
        goto LABEL_27;
      }

      v16 = 0;
      v17 = 0;
      for (i = 0; i < v15; ++i)
      {
        while (1)
        {
          v19 = *(*(v7 + 128) + 8 * i);
          if (!v19)
          {
            goto LABEL_13;
          }

          v20 = CVBufferCopyAttachment(v19, @"SceneIllumination", 0);
          if (!v20)
          {
            break;
          }

          v21 = v20;
          if (!v16)
          {
            v16 = CFRetain(v20);
          }

          CFRelease(v21);
          if (v17)
          {
            goto LABEL_25;
          }

          ++i;
          v15 = *(v7 + 112);
          v17 = 1;
          if (i >= v15)
          {
            goto LABEL_21;
          }
        }

        v15 = *(v7 + 112);
LABEL_13:
        ;
      }

      if ((v17 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_21:
      v22 = *(v7 + 192);
      *(v7 + 192) = v16;
      if (v16)
      {
        CFRetain(v16);
      }

      if (v22)
      {
        CFRelease(v22);
      }

LABEL_25:
      if (v16)
      {
        CFRelease(v16);
      }

LABEL_27:
      v23 = a1;
      v24 = *(a1 + 40);
      v25 = *(v7 + 112);
      v26 = *(v7 + 120);
      v27 = *(v7 + 128);
      v28 = *(v7 + 136);
      v33 = *(v7 + 152);
      v34 = *(v7 + 144);
      v29 = *(v7 + 24);
      v30 = *(v7 + 16);
      v38 = *(v7 + 56);
      v40 = *(v7 + 72);
      v31 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v31)
      {
        v41 = v38;
        v42 = v40;
        v4 = v31(v24, v25, v26, v27, v28, v34, v33, v29, &v41, v30);
      }

      else
      {
        v4 = 4294954514;
      }

      a1 = v23;
LABEL_31:
      Mutable = v35;
      if (v4)
      {
        fvcp_compositorHost_FrameCompletion(a1, *(v7 + 16), v4, 0, 0);
      }

      FigVCPPendingFrameReleaseAndClearSourceFrames(v7);
      if (++v5 == Count)
      {
LABEL_37:
        CFRelease(Mutable);
        return v4;
      }
    }
  }

  return 0;
}

void fvcp_compositorHost_appendPendingFrameIfPreparing(const void *a1, __CFArray *a2)
{
  if (FigAtomicCompareAndSwap32())
  {

    CFArrayAppendValue(a2, a1);
  }
}

void fvcp_compositorHost_FrameCompletion(uint64_t a1, int a2, int a3, CFTypeRef cf, CFTypeRef a5)
{
  if (!a3)
  {
    if (cf)
    {
      v10 = CFGetTypeID(cf);
      if (v10 != CVPixelBufferGetTypeID())
      {
        v11 = 8658;
        goto LABEL_32;
      }

      if (a5)
      {
        v11 = 8659;
LABEL_32:
        fvcp_compositorHost_FrameCompletion_cold_1(v11, a1);
        return;
      }
    }

    else
    {
      if (!a5)
      {
        v11 = 8665;
        goto LABEL_32;
      }

      v12 = CFGetTypeID(a5);
      if (v12 != CMTaggedBufferGroupGetTypeID())
      {
        v11 = 8662;
        goto LABEL_32;
      }
    }
  }

  v13 = *(a1 + 132);
  v14 = fvcp_compositorHost_copyPendingFrameFromArray(a1, a2);
  v15 = v14;
  if (v13)
  {
    if (!v14)
    {
LABEL_30:
      v11 = 8682;
      goto LABEL_32;
    }

    v14[52] = *(a1 + 132);
  }

  else if (!v14)
  {
    goto LABEL_30;
  }

  if (!*(a1 + 88) || !*(a1 + 80))
  {
    goto LABEL_26;
  }

  v16 = cf ? CFRetain(cf) : 0;
  *(v15 + 160) = v16;
  v17 = a5 ? CFRetain(a5) : 0;
  *(v15 + 168) = v17;
  *(v15 + 200) = a3;
  if (FigAtomicCompareAndSwap32())
  {
    *(v15 + 200) = -12508;
  }

  else
  {
    FigAtomicCompareAndSwap32();
  }

  v18 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v18)
  {
    v19 = v18;
    (*(a1 + 80))(v15, v18);
    FigVCPCompositorHostRemovePendingFrameIfNotPendingOrCompleted(a1, v15);
    CFRelease(v19);
  }

  else
  {
LABEL_26:
    FigVCPCompositorHostRemovePendingFrameIfNotPendingOrCompleted(a1, v15);
  }

  CFRelease(v15);
}

uint64_t FigVCPCompositorHostGetUpcomingImageInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E6960C70];
  v10 = *(MEMORY[0x1E6960C70] + 16);
  v11 = v9;
  v12 = v10;
  if (!a2)
  {
    FigVCPCompositorHostGetUpcomingImageInfo_cold_2();
    return 0;
  }

  if (!a3)
  {
    FigVCPCompositorHostGetUpcomingImageInfo_cold_1();
    return 0;
  }

  FigSimpleMutexLock();
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v13.length = FigAtomicAdd32();
  v13.location = 0;
  CFArrayApplyFunction(v7, v13, fvcp_compositorHost_upcomingImageInfoApplierFunction, &v9);
  FigSimpleMutexUnlock();
  if (!FigAtomicAdd32() && v6 == 1)
  {
    return 3;
  }

  if ((BYTE12(v9) & 1) == 0 || (BYTE12(v11) & 1) == 0)
  {
    return 0;
  }

  *a2 = v9;
  *(a2 + 16) = v10;
  *a3 = v11;
  *(a3 + 16) = v12;
  return 2;
}

__n128 fvcp_compositorHost_upcomingImageInfoApplierFunction(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 12) & 1) == 0 || (time1 = *(a1 + 32), v6 = *a2, CMTimeCompare(&time1, &v6) < 0))
  {
    v4 = *(a1 + 32);
    *(a2 + 16) = *(a1 + 48);
    *a2 = v4;
  }

  if ((*(a2 + 36) & 1) == 0 || (time1 = *(a1 + 32), v6 = *(a2 + 24), CMTimeCompare(&time1, &v6) >= 1))
  {
    result = *(a1 + 32);
    *(a2 + 40) = *(a1 + 48);
    *(a2 + 24) = result;
  }

  return result;
}

BOOL FigVCPCompositorHostIsAcceptingRequest(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 32) == 0;
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigVCPCompositorHostStartAcceptingRequest(uint64_t a1)
{
  if (FigAtomicCompareAndSwap32())
  {
    FigSimpleMutexLock();
    *(a1 + 32) = 0;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    FigVCPCompositorHostStartAcceptingRequest_cold_1(&v3);
    return v3;
  }
}

void fvcp_compositorHost_markPendingFrameAsCancelled(const void *a1, __CFArray *a2)
{
  if (FigAtomicCompareAndSwap32())
  {

    CFArrayAppendValue(a2, a1);
  }

  else
  {

    FigAtomicCompareAndSwap32();
  }
}

void FigVCPCompositorHostRemovePendingFrame(uint64_t a1, uint64_t a2)
{
  if (a2 && !FigAtomicCompareAndSwap32())
  {
    v4 = fvcp_compositorHost_removeRetainedPendingFrameFromArray(a1, *(a2 + 16));
    if (v4)
    {
      CFRelease(v4);
    }

    FigVCPCompositorHostFinishOutputFrame(a1);
  }
}

uint64_t FigVCPCompositorHostCopyPerformanceDictionary(uint64_t a1, uint64_t a2)
{
  FigBaseObject = FigVideoCompositorGetFigBaseObject(*(a1 + 40));
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = *MEMORY[0x1E695E480];

  return v4(FigBaseObject, @"PerformanceDictionary", v5, a2);
}

uint64_t FigVCPCompositorHostSupportsRenderScale(uint64_t a1)
{
  v4 = 0;
  FigBaseObject = FigVideoCompositorGetFigBaseObject(*(a1 + 40));
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(FigBaseObject, @"CanApplyRenderScale", *MEMORY[0x1E695E480], &v4);
  }

  return FigCFEqual();
}

uint64_t FigVCPCompositorHostDropEarlierPendingFrames(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  while (FigAtomicAdd32())
  {
    v4 = *(CFArrayGetValueAtIndex(*(a1 + 56), 0) + 4);
    v5 = *(a2 + 16);
    if (v5 == v4 || FigAtomicAdd32() <= (v5 - v4))
    {
      break;
    }

    FigAtomicDecrement32();
    CFArrayRemoveValueAtIndex(*(a1 + 56), 0);
    dispatch_group_leave(*(a1 + 64));
  }

  return FigSimpleMutexUnlock();
}

CFTypeRef FigVCPCompositorHostRemoveRetainedPendingFrameForOutput(uint64_t a1)
{
  FigSimpleMutexLock();
  if (FigAtomicAdd32() && (ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), 0)) != 0 && (!ValueAtIndex[204] || ValueAtIndex[212]))
  {
    v3 = CFRetain(ValueAtIndex);
    FigAtomicDecrement32();
    CFArrayRemoveValueAtIndex(*(a1 + 56), 0);
    dispatch_group_leave(*(a1 + 64));
    FigVCPPendingFrameSetRenderComplete();
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigVCPCompositorHostDoesRequireDifferentSourcePixelBufferAttributesForMultiSource(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(CMBaseObjectGetVTable() + 16);
  if (*v2 < 2uLL)
  {
    return 0;
  }

  v3 = v2[11];
  if (!v3)
  {
    return 0;
  }

  return v3(v1);
}

uint64_t FigVCPCompositorHostCopySourcePixelBufferAttributesForMultiSource(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (*v4 >= 2uLL && (v5 = v4[12]) != 0)
  {

    return v5(v3, a2);
  }

  else
  {
    if (a2)
    {
      *a2 = 0;
    }

    return 0;
  }
}

uint64_t FigVCPCompositorHostSetHDRDisplayMetadataPolicy(uint64_t a1)
{
  result = FigCFEqual();
  if (result)
  {
    v3 = *(a1 + 132) | 1;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 132) = v3;
  return result;
}

void FigVCPCompositorHostRemovePendingFrameIfNotPendingOrCompleted(uint64_t a1, uint64_t a2)
{
  if (a2 && !FigAtomicCompareAndSwap32() && !FigAtomicCompareAndSwap32())
  {
    v4 = fvcp_compositorHost_removeRetainedPendingFrameFromArray(a1, *(a2 + 16));
    if (v4)
    {
      CFRelease(v4);
    }

    FigVCPCompositorHostFinishOutputFrame(a1);
  }
}

_DWORD *fvcp_compositorHost_removeRetainedPendingFrameFromArray(uint64_t a1, int a2)
{
  FigSimpleMutexLock();
  idx = 0;
  PendingFrameFromArray = fvcp_compositorHost_getPendingFrameFromArray(a1, a2, &idx);
  v5 = PendingFrameFromArray;
  if (PendingFrameFromArray)
  {
    CFRetain(PendingFrameFromArray);
    FigAtomicDecrement32();
    CFArrayRemoveValueAtIndex(*(a1 + 56), idx);
    dispatch_group_leave(*(a1 + 64));
  }

  FigSimpleMutexUnlock();
  return v5;
}

void FigVCPCompositorHostFinishOutputFrame(uint64_t a1)
{
  if (!FigAtomicAdd32())
  {
    if (FigAtomicCompareAndSwap32())
    {
      if (*(a1 + 112))
      {
        v2 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v2)
        {
          v3 = v2;
          (*(a1 + 112))();

          CFRelease(v3);
        }
      }
    }
  }
}

uint64_t FigVCPCompositorHostCreate(const __CFAllocator *a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    FigVCPCompositorHostCreate_cold_3(&v18);
    return v18;
  }

  if (!a4)
  {
    FigVCPCompositorHostCreate_cold_2(&v17);
    return v17;
  }

  MEMORY[0x19A8D3660](&FigVCPCompositorHostGetTypeID_sRegisterFigVCPCompositorHostOnce, fvcp_compositorHost_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigVCPCompositorHostCreate_cold_1(&v16);
    return v16;
  }

  v9 = Instance;
  *(Instance + 40) = CFRetain(a2);
  v9[6] = FigSimpleMutexCreate();
  v9[7] = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  v9[8] = dispatch_group_create();
  v9[3] = a3;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v10)
  {
    v14 = 4294954514;
LABEL_11:
    CFRelease(v9);
    return v14;
  }

  v11 = v10(a2, fvcp_compositorHost_FrameCompletion, v9);
  if (v11)
  {
    v14 = v11;
    goto LABEL_11;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v12)
  {
    v13 = v12(a2, fvcp_compositorHost_CompletePreroll, v9);
    if (v13)
    {
      v14 = v13;
      if (v13 != -12782)
      {
        goto LABEL_11;
      }
    }
  }

  v14 = 0;
  *a4 = v9;
  return v14;
}

_DWORD *FigVCPTallyUpdateSkips(_DWORD *result, double a2, double a3, double a4)
{
  v4 = (a3 / a4 + 0.5);
  v5 = result[1];
  if (v4 >= 1 && v5 <= 499)
  {
    v6 = 0;
    v7 = v5;
    v8 = 499 - v5;
    if (v8 >= (v4 - 1))
    {
      v8 = (v4 - 1);
    }

    v9 = vdupq_n_s64(0x408F400000000000uLL);
    v10 = vdupq_n_s64(v8);
    v11 = vdupq_lane_s64(*&a4, 0);
    v12 = (v8 + 4) & 0x1FFFFFFFCLL;
    v13 = vdupq_lane_s64(*&a2, 0);
    v14 = &result[v7 + 6];
    __asm { FMOV            V7.2D, #0.5 }

    do
    {
      v20 = vdupq_n_s64(v6);
      v21 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v20, xmmword_196E73090)));
      v22.f64[0] = v6;
      v22.f64[1] = (v6 + 1);
      v23 = vmlaq_f64(_Q7, v9, vmlaq_f64(v13, v22, v11));
      if (vuzp1_s16(v21, *&v13.f64[0]).u8[0])
      {
        *(v14 - 3) = v23.f64[0];
      }

      if (vuzp1_s16(v21, *&v13).i8[2])
      {
        *(v14 - 2) = v23.f64[1];
      }

      v24 = vorrq_s8(v20, xmmword_196E73080);
      v25 = vorr_s8(vdup_n_s32(v6), 0x300000002);
      v26.i64[0] = v25.u32[0];
      v26.i64[1] = v25.u32[1];
      v27 = vmlaq_f64(_Q7, v9, vmlaq_f64(v13, vcvtq_f64_u64(v26), v11));
      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v10, v24))).i32[1])
      {
        *(v14 - 1) = v27.f64[0];
        *v14 = v27.f64[1];
      }

      v6 += 4;
      v14 += 4;
    }

    while (v12 != v6);
    v5 = result[1];
  }

  ++*result;
  result[1] = v5 + v4;
  if (result[2] > v4)
  {
    v4 = result[2];
  }

  result[2] = v4;
  return result;
}

uint64_t FigVCPTallyCopyPerformanceDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __CFDictionary **a6)
{
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v14 = Mutable;
  if (a6)
  {
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    if (*(a1 + 24) >= 1)
    {
      FigCFDictionarySetDouble();
      FigCFDictionarySetDouble();
      FigCFDictionarySetDouble();
    }

    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    v15 = *(a1 + 36);
    if (v15 >= 1)
    {
      v16 = v15 >= 0x1F4 ? 500 : v15;
      v17 = a1 + 44;
      v18 = CFArrayCreateMutable(v12, v16, MEMORY[0x1E695E9C0]);
      do
      {
        v17 += 4;
        FigCFArrayAppendDouble();
        --v16;
      }

      while (v16);
      CFDictionarySetValue(v14, @"DisplayTimesOfSkippedFrames", v18);
      if (v18)
      {
        CFRelease(v18);
      }
    }

    if (a3)
    {
      theDict = 0;
      FigVCPCompositorHostCopyPerformanceDictionary(a3, &theDict);
      if (theDict)
      {
        CFDictionaryApplyFunction(theDict, fvcp_addEntriesToDictionaryAux, v14);
        if (theDict)
        {
          CFRelease(theDict);
        }
      }
    }

    if (a2)
    {
      v19 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigVCPSourceArrayApplyFunction(a2, fvcp_sourceArray_appendToPerformanceDictionary, v19);
      if (v19)
      {
        CFDictionaryApplyFunction(v19, fvcp_addEntriesToDictionaryAux, v14);
        CFRelease(v19);
      }
    }

    if (a5)
    {
      v20 = *(a5 + 48);
      FigMemoryBarrier();
      CoreAnimationPerformanceDictionary = fvcp_createCoreAnimationPerformanceDictionary(a5 + 56, v20);
      if (CoreAnimationPerformanceDictionary)
      {
        v22 = CoreAnimationPerformanceDictionary;
        CFDictionaryApplyFunction(CoreAnimationPerformanceDictionary, fvcp_addEntriesToDictionaryAux, v14);
        CFRelease(v22);
      }
    }

    if (a4)
    {
      theDict = 0;
      FigVCPOutputConformerCopyPerformanceDictionary(a4, &theDict);
      v23 = theDict;
      if (theDict)
      {
        CFDictionaryApplyFunction(theDict, fvcp_addEntriesToDictionaryAux, v14);
        CFRelease(v23);
      }
    }

    *a6 = v14;
  }

  else if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

double fvcp_preprocessParameters_Init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void fvcp_preprocessParameters_Finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[7];
  if (v6)
  {

    CFRelease(v6);
  }
}

void fvcp_preprocessParameters_initSetPropertyDispatchDictionary()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_RenderScale", fvcp_preprocessParameters_setRenderScaleProperty);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_SourcePixelBufferAttributes", fvcp_preprocessParameters_setPixelBufferAttributes);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_CompositionYCbCrMatrix", fvcp_preprocessParameters_setYCbCrMatrix);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_CompositionColorPrimaries", fvcp_preprocessParameters_setColorPrimaries);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_CompositionTransferFunction", fvcp_preprocessParameters_setTransferFunction);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_PixelBufferPoolSharingID", fvcp_preprocessParameters_setPoolSharingID);
  CFDictionaryAddValue(Mutable, @"FigVCPPreprocessParametersProperty_ColorConformanceLevel", fvcp_preprocessParameters_setColorConformanceLevel);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredAttributes", fvcp_preprocessParameters_setDestinationPixelBufferDesiredAttributes);
  fvcp_preprocessParameters_setPropertyDispatchDictionary = Mutable;
}

uint64_t fvcp_preprocessParameters_setRenderScaleProperty(uint64_t a1, const __CFNumber *cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFNumberGetTypeID()))
  {
    valuePtr = 1065353216;
    CFNumberGetValue(cf, kCFNumberFloatType, &valuePtr);
    *(a1 + 16) = valuePtr;
  }

  else
  {
    fvcp_preprocessParameters_setRenderScaleProperty_cold_1();
  }

  return 0;
}

uint64_t fvcp_preprocessParameters_setPixelBufferAttributes(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFDictionaryGetTypeID()))
  {
    v5 = *(a1 + 24);
    *(a1 + 24) = cf;
    CFRetain(cf);
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    fvcp_preprocessParameters_setPixelBufferAttributes_cold_1(&v7);
    return v7;
  }
}

uint64_t fvcp_preprocessParameters_setYCbCrMatrix(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFStringGetTypeID()))
  {
    v5 = *(a1 + 32);
    *(a1 + 32) = cf;
    CFRetain(cf);
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    fvcp_preprocessParameters_setYCbCrMatrix_cold_1(&v7);
    return v7;
  }
}

uint64_t fvcp_preprocessParameters_setColorPrimaries(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFStringGetTypeID()))
  {
    v5 = *(a1 + 40);
    *(a1 + 40) = cf;
    CFRetain(cf);
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    fvcp_preprocessParameters_setColorPrimaries_cold_1(&v7);
    return v7;
  }
}

uint64_t fvcp_preprocessParameters_setTransferFunction(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFStringGetTypeID()))
  {
    v5 = *(a1 + 48);
    *(a1 + 48) = cf;
    CFRetain(cf);
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    fvcp_preprocessParameters_setTransferFunction_cold_1(&v7);
    return v7;
  }
}

uint64_t fvcp_preprocessParameters_setPoolSharingID(uint64_t a1, CFTypeRef cf)
{
  if (cf && ((v4 = CFGetTypeID(cf), v4 == CFNumberGetTypeID()) || (v5 = CFGetTypeID(cf), v5 == CFBooleanGetTypeID())))
  {
    v6 = *(a1 + 56);
    *(a1 + 56) = cf;
    CFRetain(cf);
    if (v6)
    {
      CFRelease(v6);
    }

    return 0;
  }

  else
  {
    fvcp_preprocessParameters_setPoolSharingID_cold_1(&v8);
    return v8;
  }
}

uint64_t fvcp_source_RegisterFigVCPSourceBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t fvcp_vc_source_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 216);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v2)
  {
    v2(v1, 0, 0);
  }

  v3 = *(DerivedStorage + 216);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v4)
  {
    v4(v3, 0, 0);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  return 0;
}

CFStringRef fvcp_vc_source_CopyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  v4 = CMBaseObjectGetDerivedStorage();
  return CFStringCreateWithFormat(v3, 0, @"[FigVCPVisualContextSource(%p)] trackID=%d VC=%p", a1, *v4, *(DerivedStorage + 216));
}

void fvcp_source_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexDestroy();
  v1 = DerivedStorage[4];
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = DerivedStorage[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[7];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[11];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[12];
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t fvcp_vc_source_StartOver()
{
  CMBaseObjectGetDerivedStorage();
  FigAtomicCompareAndSwap32();
  CMBaseObjectGetDerivedStorage();
  FigAtomicCompareAndSwap32();
  return 0;
}

uint64_t fvcp_vc_source_HasNoMoreSamples()
{
  CMBaseObjectGetDerivedStorage();

  return FigAtomicCompareAndSwap32();
}

uint64_t fvcp_vc_source_getEarliestSequentialSampleTimeAfterTime(uint64_t a1, __int128 *a2, uint64_t a3, _BYTE *a4)
{
  v14 = 0;
  v12 = *MEMORY[0x1E6960C70];
  v13 = *(MEMORY[0x1E6960C70] + 16);
  v7 = *(CMBaseObjectGetDerivedStorage() + 216);
  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v8)
  {
    v15 = v10;
    v16 = v11;
    v8(v7, 0, &v15, &v12, &v14);
  }

  if (a3)
  {
    *a3 = v12;
    *(a3 + 16) = v13;
  }

  if (a4)
  {
    *a4 = v14;
  }

  return 0;
}

uint64_t CMTimeCompareWithToleranceIfRounded(CMTime *a1, CMTime *a2)
{
  if ((a1->flags & 0x1F) == 3 || (a2->flags & 0x1F) == 3)
  {
    memset(&time1, 0, sizeof(time1));
    lhs = *a1;
    v5 = *a2;
    CMTimeSubtract(&time, &lhs, &v5);
    CMTimeAbsoluteValue(&time1, &time);
    CMTimeMake(&time, 5, 1000000000);
    lhs = time1;
    if (CMTimeCompare(&lhs, &time) < 1)
    {
      return 0;
    }
  }

  time1 = *a1;
  time = *a2;
  return CMTimeCompare(&time1, &time);
}

uint64_t fvcp_timeIsEarlierOrEqualInPlayback(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 > 1)
  {
    v20 = *a1;
    v9 = *(a1 + 12);
    v21 = *(a1 + 8);
    v10 = *(a1 + 16);
    v18 = *a2;
    v11 = *(a2 + 12);
    v19 = *(a2 + 8);
    v12 = *(a2 + 16);
    if ((v9 & 0x1F) != 3 && (v11 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), v13 = *a1, rhs.epoch = v12, lhs.value = v13, lhs.timescale = *(a1 + 8), lhs.flags = v9, lhs.epoch = v10, rhs.value = *a2, rhs.timescale = *(a2 + 8), rhs.flags = v11, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 5, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) >= 1))
    {
      time.epoch = v12;
      time1.value = v20;
      time1.timescale = v21;
      time1.flags = v9;
      time1.epoch = v10;
      time.value = v18;
      time.timescale = v19;
      time.flags = v11;
      return CMTimeCompare(&time1, &time) >= 0;
    }
  }

  else
  {
    v20 = *a1;
    v3 = *(a1 + 12);
    v21 = *(a1 + 8);
    v4 = *(a1 + 16);
    v18 = *a2;
    v5 = *(a2 + 12);
    v19 = *(a2 + 8);
    v6 = *(a2 + 16);
    if ((v3 & 0x1F) != 3 && (v5 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), v7 = *a1, rhs.epoch = v6, lhs.value = v7, lhs.timescale = *(a1 + 8), lhs.flags = v3, lhs.epoch = v4, rhs.value = *a2, rhs.timescale = *(a2 + 8), rhs.flags = v5, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 5, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) >= 1))
    {
      time.epoch = v6;
      time1.value = v20;
      time1.timescale = v21;
      time1.flags = v3;
      time1.epoch = v4;
      time.value = v18;
      time.timescale = v19;
      time.flags = v5;
      return CMTimeCompare(&time1, &time) < 1;
    }
  }

  return 1;
}

uint64_t figVCPTimedImagePair_register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPTimedImagePairClassID = result;
  return result;
}

double figVCPTimedImagePair_Init(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void figVCPTimedImagePair_Finalize(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    CFRelease(v3);
  }
}

CFStringRef figVCPTimedImagePair_CopyDebugDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  time = *(a1 + 16);
  Seconds = CMTimeGetSeconds(&time);
  if (*(a1 + 40))
  {
    v6 = "conformed";
  }

  else
  {
    v6 = "not conformed";
  }

  return CFStringCreateWithFormat(v2, 0, @"<%p, %p @ %1.3f %s>", v3, v4, *&Seconds, v6);
}

void fvcp_source_copyPreprocessParametersAndPixelTransferSession(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 32);
  if (v8)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(DerivedStorage + 40);
  if (v10)
  {
    v11 = CFRetain(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(DerivedStorage + 48);
  FigSimpleMutexUnlock();
  if (a2)
  {
    *a2 = v9;
    v9 = 0;
  }

  if (a3)
  {
    *a3 = v11;
    v11 = 0;
  }

  if (a4)
  {
    *a4 = v12;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {

    CFRelease(v11);
  }
}

BOOL fvcp_doesPixelBufferHaveRequestedColorParameters(__CVBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965CE8], 0);
  CGColorSpaceGetName(v8);
  CVPixelBufferGetWidth(a1);
  CVPixelBufferGetHeight(a1);
  VTGetDefaultColorAttributesWithHints();
  if (a2)
  {
    v9 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965F98], 0);
    if (!v9)
    {
      v9 = 0;
    }

    if (!FigCFEqual())
    {
      v10 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v9 = 0;
  }

  if (a3)
  {
    v10 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965F30], 0);
    if (!v10)
    {
      v10 = 0;
    }

    if (FigCFEqual())
    {
      goto LABEL_12;
    }

LABEL_15:
    v12 = 0;
    v11 = 0;
    goto LABEL_18;
  }

  v10 = 0;
LABEL_12:
  if (a4)
  {
    v11 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965D88], 0);
    if (!v11)
    {
      v11 = 0;
    }

    v12 = FigCFEqual() != 0;
  }

  else
  {
    v11 = 0;
    v12 = 1;
  }

LABEL_18:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v12;
}

uint64_t fvcp_vcg_source_Invalidate()
{
  v0 = (CMBaseObjectGetDerivedStorage() + 216);
  if (*v0)
  {
    Count = CFArrayGetCount(*v0);
    if (Count >= 1)
    {
      fvcp_vcg_source_Invalidate_cold_1(v0, Count);
    }
  }

  return 0;
}

CFStringRef fvcp_vcg_source_CopyDebugDesc(uint64_t a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v2 && (Count = CFArrayGetCount(v2), Count >= 1))
  {
    v4 = Count;
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v6 = "";
    if (v4 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = FigCFArrayGetValueAtIndex();
      if (v4 > 2)
      {
        v6 = "...";
      }
    }
  }

  else
  {
    ValueAtIndex = 0;
    v7 = 0;
    v6 = "";
  }

  v8 = *MEMORY[0x1E695E480];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return CFStringCreateWithFormat(v8, 0, @"[FigVCPVisualContextSource(%p)] trackID=%d VC0=%p VC1=%p %s", a1, *DerivedStorage, ValueAtIndex, v7, v6);
}

const __CFArray *fvcp_vcg_source_StartOver()
{
  result = *(CMBaseObjectGetDerivedStorage() + 216);
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v2 = Count;
      v3 = 0;
      while (1)
      {
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        result = FigVCPSourceStartOver(ValueAtIndex);
        if (result)
        {
          break;
        }

        if (v2 == ++v3)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t fvcp_vcg_source_CheckSampleAvailability(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  v11 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v11 && (Count = CFArrayGetCount(v11), Count >= 1))
  {
    v13 = Count;
    v14 = 0;
    v15 = 0;
    LOBYTE(v16) = 1;
    while (1)
    {
      v22 = 0;
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      v20 = *a4;
      v21 = *(a4 + 16);
      result = FigVCPSourceCheckSampleAvailability(ValueAtIndex, a2, a3, &v20, &v22 + 1, &v22);
      if (result)
      {
        break;
      }

      v16 = (v22 & v16);
      v14 |= HIBYTE(v22);
      if (v13 == ++v15)
      {
        v19 = v16 == 0;
        if (a5)
        {
          goto LABEL_9;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
    v14 = 0;
    v19 = 0;
    if (a5)
    {
LABEL_9:
      *a5 = v14;
    }

LABEL_10:
    result = 0;
    if (!v19)
    {
      *a6 = 1;
    }
  }

  return result;
}

const __CFArray *fvcp_vcg_source_SetCurrentTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(CMBaseObjectGetDerivedStorage() + 216);
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        v10 = *a3;
        v11 = *(a3 + 16);
        result = FigVCPSourceSetCurrentTime(ValueAtIndex, a2, &v10);
        if (result)
        {
          break;
        }

        if (v7 == ++v8)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t fvcp_vcg_source_HasNoMoreSamples()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (!v0)
  {
    return 1;
  }

  Count = CFArrayGetCount(v0);
  if (Count < 1)
  {
    return 1;
  }

  v2 = Count;
  v3 = 0;
  LOBYTE(v4) = 1;
  do
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v4 = v4 && FigVCPSourceHasNoMoreSamples(ValueAtIndex) != 0;
    ++v3;
  }

  while (v2 != v3);
  return v4;
}

uint64_t fvcp_vcg_source_getEarliestSequentialSampleTimeAfterTime(uint64_t a1, CMTime *a2, uint64_t a3, char *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = MEMORY[0x1E6960C70];
  v33 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 12);
  v34 = *(MEMORY[0x1E6960C70] + 8);
  v24 = *(MEMORY[0x1E6960C70] + 16);
  v10 = *(DerivedStorage + 216);
  if (!v10 || (Count = CFArrayGetCount(v10), Count < 1))
  {
    EarliestSequentialSampleTimeAfterTime = 0;
    v14 = 1;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v12 = Count;
  v21 = a3;
  v22 = a4;
  v13 = 0;
  v14 = 1;
  v23 = *v8;
  v15 = v24;
  do
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    *&v26.value = v23;
    v26.epoch = v24;
    v25 = 0;
    time1 = *a2;
    EarliestSequentialSampleTimeAfterTime = FigVCPSourceGetEarliestSequentialSampleTimeAfterTime(ValueAtIndex, &time1.value, &v26, &v25);
    value = v26.value;
    flags = v26.flags;
    timescale = v26.timescale;
    epoch = v26.epoch;
    if ((v26.flags & 0x1F) != 3 && (v9 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), rhs.epoch = v15, lhs = v26, rhs.value = v33, rhs.timescale = v34, rhs.flags = v9, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 5, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) > 0))
    {
      time.epoch = v15;
      time1.value = value;
      time1.timescale = timescale;
      time1.flags = flags;
      time1.epoch = epoch;
      time.value = v33;
      time.timescale = v34;
      time.flags = v9;
      if (CMTimeCompare(&time1, &time) < 0)
      {
        v33 = v26.value;
        v9 = v26.flags;
        v34 = v26.timescale;
        v15 = v26.epoch;
      }
    }

    v14 &= v25 != 0;
    ++v13;
  }

  while (v12 != v13);
  v24 = v15;
  a3 = v21;
  a4 = v22;
  if (v21)
  {
LABEL_13:
    *a3 = v33;
    *(a3 + 8) = v34;
    *(a3 + 12) = v9;
    *(a3 + 16) = v24;
  }

LABEL_14:
  if (a4)
  {
    *a4 = v14;
  }

  return EarliestSequentialSampleTimeAfterTime;
}

uint64_t fvcp_vcg_source_CopyConformedTimedImages(uint64_t a1, uint64_t a2, _BYTE *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v39 = **&MEMORY[0x1E6960C70];
  v38 = v39;
  v8 = *(DerivedStorage + 216);
  if (v8)
  {
    Count = CFArrayGetCount(v8);
  }

  else
  {
    Count = 0;
  }

  allocator = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v11 = Mutable;
    if (Count >= 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      while (1)
      {
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        LOBYTE(time2.value) = 0;
        v16 = FigVCPSourceCopyConformedTimedImages(ValueAtIndex, a2, &time2, &v42);
        if (v16)
        {
          value_low = v16;
          goto LABEL_69;
        }

        CFArrayAppendValue(v11, v42);
        v17 = time2.value;
        v18 = v42;
        if (v12)
        {
          break;
        }

        if (v42)
        {
          v13 = CFArrayGetCount(v42);
LABEL_15:
          if (v42)
          {
            CFRelease(v42);
            v42 = 0;
          }

          goto LABEL_18;
        }

        v13 = 0;
LABEL_18:
        v14 |= v17;
        if (Count == ++v12)
        {
          if (v13 >= 1)
          {
            v32 = a4;
            v33 = DerivedStorage;
            v31 = a3;
            v19 = 0;
            v20 = 0;
            v21 = allocator;
            while (1)
            {
              v22 = CFArrayCreateMutable(v21, Count, MEMORY[0x1E695E9C0]);
              if (!v22)
              {
                break;
              }

              v23 = 0;
              for (i = 0; i != Count; ++i)
              {
                FigCFArrayGetValueAtIndex();
                v25 = FigCFArrayGetValueAtIndex();
                v26 = v25;
                value = 0;
                if (i)
                {
                  FigVCPTimedSampleGetPTS(v25, &v39);
                  time1 = v39;
                  time2 = v38;
                  if (CMTimeCompare(&time1, &time2))
                  {
                    fvcp_vcg_source_CopyConformedTimedImages_cold_2(&time1);
                    goto LABEL_67;
                  }
                }

                else
                {
                  FigVCPTimedSampleGetPTS(v25, &v38);
                }

                PixelBuffer = FigVCPTimedSampleGetPixelBuffer(v26, &value);
                if (PixelBuffer)
                {
                  goto LABEL_66;
                }

                if (value)
                {
                  CFArrayAppendValue(v22, value);
                }

                else
                {
                  ++v23;
                }
              }

              if (Count == v23)
              {
                if (v41)
                {
                  CFRelease(v41);
                  v28 = 0;
                  v41 = 0;
                }

                else
                {
                  v28 = 0;
                }

                v21 = allocator;
              }

              else
              {
                v21 = allocator;
                if (v23)
                {
                  fvcp_vcg_source_CopyConformedTimedImages_cold_3(&time1);
                  goto LABEL_67;
                }

                PixelBuffer = MEMORY[0x19A8CF050](allocator, *(v33 + 224), v22, &v41);
                if (PixelBuffer)
                {
                  goto LABEL_66;
                }

                v28 = v41;
              }

              time1 = v38;
              PixelBuffer = FigVCPTimedSampleCreateWithTaggedBufferGroup(&time1, v28, &v40);
              if (PixelBuffer)
              {
LABEL_66:
                value_low = PixelBuffer;
                goto LABEL_55;
              }

              if (!v19)
              {
                v19 = CFArrayCreateMutable(v21, v13, MEMORY[0x1E695E9C0]);
                if (!v19)
                {
                  fvcp_vcg_source_CopyConformedTimedImages_cold_4(&time1);
                  goto LABEL_67;
                }
              }

              CFArrayAppendValue(v19, v40);
              if (v40)
              {
                CFRelease(v40);
                v40 = 0;
              }

              if (v41)
              {
                CFRelease(v41);
                v41 = 0;
              }

              CFRelease(v22);
              if (++v20 == v13)
              {
                a3 = v31;
                a4 = v32;
                if (v31)
                {
                  goto LABEL_52;
                }

                goto LABEL_53;
              }
            }

            fvcp_vcg_source_CopyConformedTimedImages_cold_5(&time1);
LABEL_67:
            value_low = LODWORD(time1.value);
            goto LABEL_55;
          }

          goto LABEL_51;
        }
      }

      if (v42)
      {
        v18 = CFArrayGetCount(v42);
      }

      if (v18 != v13)
      {
        fvcp_vcg_source_CopyConformedTimedImages_cold_1(&time1);
        value_low = LODWORD(time1.value);
LABEL_69:
        v19 = 0;
        v22 = 0;
        goto LABEL_55;
      }

      goto LABEL_15;
    }

    v14 = 0;
LABEL_51:
    v19 = 0;
    if (a3)
    {
LABEL_52:
      *a3 = v14;
    }

LABEL_53:
    v22 = 0;
    value_low = 0;
    if (a4)
    {
      *a4 = v19;
      v19 = 0;
    }

LABEL_55:
    CFRelease(v11);
    if (v42)
    {
      CFRelease(v42);
    }
  }

  else
  {
    fvcp_vcg_source_CopyConformedTimedImages_cold_6(&time1);
    v19 = 0;
    v22 = 0;
    value_low = LODWORD(time1.value);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return value_low;
}

CFStringRef fvcp_ca_source_CopyDebugDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return CFStringCreateWithFormat(v2, 0, @"[FigVCPCoreAnimationSource(%p)] trackID=%d", a1, *DerivedStorage);
}

uint64_t fvcp_ca_source_StartOver()
{
  CMBaseObjectGetDerivedStorage();
  FigAtomicCompareAndSwap32();
  return 0;
}

uint64_t fvcp_ca_source_CheckImageAvailability(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  if ((*(a4 + 12) & 0x1D) == 1)
  {
    if (a5)
    {
      *a5 = 1;
    }

    result = 0;
    if (a6)
    {
      *a6 = 1;
    }
  }

  else
  {
    v10 = v6;
    v11 = v7;
    fvcp_ca_source_CheckImageAvailability_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fvcp_ca_source_throttleForBackground()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigAtomicCompareAndSwapPtr();
  if (!result)
  {
    v2 = *(DerivedStorage + 272);

    return FigCoreAnimationRendererSetProperty(v2);
  }

  return result;
}

uint64_t fvcp_ca_source_copyPerformanceDictionary(uint64_t a1, CFMutableDictionaryRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 272);
  FigMemoryBarrier();
  *a2 = fvcp_createCoreAnimationPerformanceDictionary(DerivedStorage + 280, v4);
  return 0;
}

uint64_t fvcp_bq_source_Invalidate()
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  return 0;
}

CFStringRef fvcp_bq_source_CopyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  v4 = CMBaseObjectGetDerivedStorage();
  return CFStringCreateWithFormat(v3, 0, @"[FigVCPBufferQueueSource(%p)] trackID=%d BQ=%p", a1, *v4, *(DerivedStorage + 216));
}

uint64_t fvcp_bq_source_StartOver()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigAtomicCompareAndSwap32();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 240);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 240) = 0;
  }

  FigSimpleMutexUnlock();
  *(DerivedStorage + 264) = 0;
  CMBaseObjectGetDerivedStorage();
  FigAtomicCompareAndSwap32();
  return 0;
}

uint64_t fvcp_bq_source_CopySampleBuffer(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    v5 = *(v4 + 240);
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    *a2 = v5;
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t fvcp_bq_source_HasNoMoreSamples()
{
  CMBaseObjectGetDerivedStorage();

  return FigAtomicCompareAndSwap32();
}

BOOL fvcp_bq_source_isLastSample(opaqueCMSampleBuffer *a1, CMTime *a2)
{
  memset(&v9, 0, sizeof(v9));
  CMSampleBufferGetOutputPresentationTimeStamp(&v9, a1);
  memset(&v8, 0, sizeof(v8));
  CMSampleBufferGetOutputDuration(&v8, a1);
  memset(&v7, 0, sizeof(v7));
  lhs = v9;
  v5 = v8;
  CMTimeAdd(&v7, &lhs, &v5);
  lhs = v7;
  v5 = *a2;
  return CMTimeCompare(&lhs, &v5) == 0;
}

double fvcp_pendingFrame_Init(_OWORD *a1)
{
  result = 0.0;
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

void fvcp_pendingFrame_Finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[22];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[21];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[23];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[27];
  if (v7)
  {
    CFRelease(v7);
  }

  FigVCPPendingFrameReleaseAndClearSourceFrames(a1);
  v8 = a1[24];
  if (v8)
  {

    CFRelease(v8);
  }
}

double fvcp_timing_Init(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
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

uint64_t fvcp_timing_timebaseTimeJumpedOrRateChanged(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  *(a2 + 168) = 1;

  return FigSimpleMutexUnlock();
}

double fvcp_output_Init(_OWORD *a1)
{
  result = 0.0;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

CFStringRef fvcp_output_CopyFormattingDesc(uint64_t a1, CFDictionaryRef formatOptions)
{
  v4 = *MEMORY[0x1E695E480];
  Count = *(a1 + 72);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  return CFStringCreateWithFormat(v4, formatOptions, @"[FigVCPOutput(%p)] %ld outputs", a1, Count);
}

__CFString *fvcp_output_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = fvcp_output_copyOutputDurationWaterLevel(a1);
  time = *(v3 + 16);
  Seconds = CMTimeGetSeconds(&time);
  time = *(v3 + 40);
  v5 = CMTimeGetSeconds(&time);
  CFStringAppendFormat(Mutable, 0, @"[FigVCPOutput(%p)] high water = %1.3f seconds / low water = %1.3f seconds\n", a1, *&Seconds, *&v5);
  v6 = *(a1 + 72);
  if (!v6)
  {
    goto LABEL_6;
  }

  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {
    goto LABEL_6;
  }

  v8 = Count;
  for (i = 0; i != v8; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
    CFStringAppendFormat(Mutable, 0, @"  %@", ValueAtIndex);
  }

  if (v3)
  {
LABEL_6:
    CFRelease(v3);
  }

  return Mutable;
}

double fvcp_sourceArray_Init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void fvcp_sourceArray_Finalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *fvcp_sourceArray_CopyFormattingDesc(uint64_t a1, const __CFDictionary *a2)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, a2, @"[FigVCPSourceArray(%p)] ", a1);
  v5 = *(a1 + 32);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), i);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        CFStringAppendFormat(Mutable, a2, @"(%d,%p) ", *DerivedStorage, ValueAtIndex);
      }
    }
  }

  return Mutable;
}

__CFString *fvcp_sourceArray_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"[FigVCPSourceArray(%p)]\n", a1);
  v3 = *(a1 + 32);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), i);
        CFStringAppendFormat(Mutable, 0, @"  %@\n", ValueAtIndex);
      }
    }
  }

  return Mutable;
}

double fvcp_coreAnimationPostProcessor_Init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void fvcp_coreAnimationPostProcessor_Finalize(void *a1)
{
  FigSimpleMutexDestroy();
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {

    CFRelease(v5);
  }
}

double fvcp_outputDurationWaterLevel_Init(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

double fvcp_instructionGetter_Init(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t fvcp_instructionGetter_Finalize(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    CFRelease(v1);
  }

  return FigSimpleMutexDestroy();
}

CFStringRef fvcp_instructionGetter_CopyFormattingDesc(void *a1, const __CFDictionary *a2)
{
  FigSimpleMutexLock();
  v4 = a1[7];
  if (v4)
  {
    v5 = CFRetain(v4);
  }

  else
  {
    v5 = 0;
  }

  FigSimpleMutexUnlock();
  v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], a2, @"[FigVCPInstructionSource(%p)] currentInstruction %@, callback %p(refcon %p)", a1, v5, a1[3], a1[4]);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

double fvcp_outputConformer_Init(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
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

void fvcp_outputConformer_Finalize(void *a1)
{
  FigSimpleMutexDestroy();
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[10];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[11];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[12];
  if (v9)
  {

    CFRelease(v9);
  }
}

void fvcp_outputConformer_initCopyPropertyDispatchDictionary()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredAttributes", fvcp_outputConformer_copyDestinationPixelBufferDesiredAttributes);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelTransferProperties", fvcp_outputConformer_copyDestinationPixelTransferProperties);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredYCbCrMatrix", fvcp_outputConformer_copyDestinationYCbCrMatrix);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredColorPrimaries", fvcp_outputConformer_copyDestinationColorPrimaries);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredTransferFunction", fvcp_outputConformer_copyDestinationTransferFunction);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_PixelBufferPoolSharingID", fvcp_outputConformer_copyPixelBufferPoolSharingID);
  fvcp_outputConformer_copyPropertyDispatchDictionary = Mutable;
}

CFTypeRef fvcp_outputConformer_copyDestinationPixelBufferDesiredAttributes(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

CFTypeRef fvcp_outputConformer_copyDestinationPixelTransferProperties(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

CFTypeRef fvcp_outputConformer_copyDestinationYCbCrMatrix(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

CFTypeRef fvcp_outputConformer_copyDestinationColorPrimaries(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

CFTypeRef fvcp_outputConformer_copyDestinationTransferFunction(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

CFTypeRef fvcp_outputConformer_copyPixelBufferPoolSharingID(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

void fvcp_outputConformer_initSetPropertyDispatchDictionary()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredAttributes", fvcp_outputConformer_setDestinationPixelBufferDesiredAttributes);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelTransferProperties", fvcp_outputConformer_setDestinationPixelTransferProperties);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredYCbCrMatrix", fvcp_outputConformer_setDestinationPixelBufferDesiredYCbCrMatrix);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredColorPrimaries", fvcp_outputConformer_setDestinationPixelBufferDesiredColorPrimaries);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredTransferFunction", fvcp_outputConformer_setDestinationPixelBufferDesiredTransferFunction);
  CFDictionaryAddValue(Mutable, @"VideoCompositionProcessor_PixelBufferPoolSharingID", fvcp_outputConformer_setPixelBufferPoolSharingID);
  fvcp_outputConformer_setPropertyDispatchDictionary = Mutable;
}

uint64_t fvcp_outputConformer_setDestinationPixelBufferDesiredAttributes(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 != CFDictionaryGetTypeID()))
  {
    fvcp_outputConformer_setDestinationPixelBufferDesiredAttributes_cold_1(&v9);
    return v9;
  }

  else
  {
    FigSimpleMutexLock();
    v5 = *(a1 + 40);
    *(a1 + 40) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 88) = 0;
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 96) = 0;
    }

    ++*(a1 + 32);
    FigSimpleMutexUnlock();
    return 0;
  }
}

uint64_t fvcp_outputConformer_setDestinationPixelTransferProperties(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 != CFDictionaryGetTypeID()))
  {
    fvcp_outputConformer_setDestinationPixelTransferProperties_cold_1(&v9);
    return v9;
  }

  else
  {
    FigSimpleMutexLock();
    v5 = *(a1 + 48);
    *(a1 + 48) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 88) = 0;
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 96) = 0;
    }

    ++*(a1 + 32);
    FigSimpleMutexUnlock();
    return 0;
  }
}

uint64_t fvcp_outputConformer_setDestinationPixelBufferDesiredYCbCrMatrix(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()))
  {
    fvcp_outputConformer_setDestinationPixelBufferDesiredYCbCrMatrix_cold_1(&v9);
    return v9;
  }

  else
  {
    FigSimpleMutexLock();
    v5 = *(a1 + 56);
    *(a1 + 56) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 88) = 0;
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 96) = 0;
    }

    ++*(a1 + 32);
    FigSimpleMutexUnlock();
    return 0;
  }
}

uint64_t fvcp_outputConformer_setDestinationPixelBufferDesiredColorPrimaries(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()))
  {
    fvcp_outputConformer_setDestinationPixelBufferDesiredColorPrimaries_cold_1(&v9);
    return v9;
  }

  else
  {
    FigSimpleMutexLock();
    v5 = *(a1 + 64);
    *(a1 + 64) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 88) = 0;
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 96) = 0;
    }

    ++*(a1 + 32);
    FigSimpleMutexUnlock();
    return 0;
  }
}

uint64_t fvcp_outputConformer_setDestinationPixelBufferDesiredTransferFunction(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()))
  {
    fvcp_outputConformer_setDestinationPixelBufferDesiredTransferFunction_cold_1(&v9);
    return v9;
  }

  else
  {
    FigSimpleMutexLock();
    v5 = *(a1 + 72);
    *(a1 + 72) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 88) = 0;
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 96) = 0;
    }

    ++*(a1 + 32);
    FigSimpleMutexUnlock();
    return 0;
  }
}

uint64_t fvcp_outputConformer_setPixelBufferPoolSharingID(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 80);
  *(a1 + 80) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 88) = 0;
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 96) = 0;
  }

  ++*(a1 + 32);
  FigSimpleMutexUnlock();
  return 0;
}

double fvcp_compositorHost_Init(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

CFTypeRef fvcp_compositorHost_copyPendingFrameFromArray(uint64_t a1, int a2)
{
  FigSimpleMutexLock();
  PendingFrameFromArray = fvcp_compositorHost_getPendingFrameFromArray(a1, a2, 0);
  if (PendingFrameFromArray)
  {
    v5 = CFRetain(PendingFrameFromArray);
  }

  else
  {
    v5 = 0;
  }

  FigSimpleMutexUnlock();
  return v5;
}

void fvcp_compositorHost_collectCancellingFrames(void *value, CFMutableArrayRef theArray)
{
  if (*(value + 5) == 2)
  {
    CFArrayAppendValue(theArray, value);
  }
}

void fvcp_compositorHost_initProcessorToCompositorPropertyKeyMapping()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessor_RenderScale", @"RenderScale");
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessor_ClientPID", @"ClientPID");
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessor_ThrottleForBackground", @"ThrottleForBackground");
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessor_SourcePixelBufferAttributes", @"SourcePixelBufferAttributes");
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessor_DestinationPixelBufferDesiredAttributes", @"DestinationPixelBufferDesiredAttributes");
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessor_CompositionYCbCrMatrix", @"DestinationPixelBufferDesiredYCbCrMatrix");
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessor_CompositionColorPrimaries", @"DestinationPixelBufferDesiredColorPrimaries");
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessor_CompositionTransferFunction", @"DestinationPixelBufferDesiredTransferFunction");
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessor_PixelBufferPoolSharingID", @"PixelBufferPoolSharingID");
  CFDictionarySetValue(Mutable, @"VideoCompositionProcessorProperty_LoopTimeRange", @"LoopTimeRange");
  CFDictionarySetValue(Mutable, @"SourceColorConformanceCapabilityLevel", @"SourceColorConformanceCapabilityLevel");
  fvcp_compositorHost_processorToCompositorPropertyKeyMapping = Mutable;
}

uint64_t OUTLINED_FUNCTION_0_198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int128 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, CMTime *time1, uint64_t a36, CMTime *time2, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __int128 time1a, uint64_t time1_16, uint64_t a45, uint64_t time2a)
{
  time1a = a26;
  time1_16 = a27;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_1_180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, CMTime *time1, uint64_t a23, CMTime *time2, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 time1a, uint64_t time1_16, uint64_t a31, uint64_t time2a)
{
  time1a = a15;
  time1_16 = a16;

  return CMTimeCompare(&time1a, &time2a);
}

void OUTLINED_FUNCTION_2_176()
{

  JUMPOUT(0x19A8D3660);
}

uint64_t OUTLINED_FUNCTION_3_148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CMTime *time1, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, CMTime *time2, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t time2a, int time2_8, int time2_12, uint64_t time2_16)
{
  time2a = *(v54 - 192);
  time2_8 = *(v54 - 184);
  time2_12 = v52;
  time2_16 = v53;

  return CMTimeCompare(&time1a, &time2a);
}

CMTime *OUTLINED_FUNCTION_6_114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, CMTime *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{

  return CMTimeMake(&a49, 5, 1000000000);
}

CMTime *OUTLINED_FUNCTION_7_97(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, CMTime *rhs, CMTime *lhs, uint64_t a36, CMTime *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t rhsa, int rhs_8, int rhs_12, uint64_t rhs_16, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a49, uint64_t a50)
{
  rhsa = *(v51 - 192);
  rhs_8 = *(v51 - 184);
  rhs_12 = v50;

  return CMTimeSubtract(&a50, &lhsa, &rhsa);
}

CMTime *OUTLINED_FUNCTION_8_84@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, CMTime *rhs, CMTime *lhs, uint64_t a29, CMTime *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t rhsa, int rhs_8, int rhs_12, uint64_t rhs_16, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a42, uint64_t a43)
{
  rhs_8 = a1;
  rhs_12 = v43;

  return CMTimeSubtract(&a43, &lhsa, &rhsa);
}

CMTime *OUTLINED_FUNCTION_12_67(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, CMTime *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{

  return CMTimeMake(&a35, 5, 1000000000);
}

CMTime *OUTLINED_FUNCTION_13_53@<X0>(CMTime *a1@<X8>)
{

  return CMTimeMake(a1, 5, 1000000000);
}

uint64_t OUTLINED_FUNCTION_14_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, CMTime *time1, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t time1a)
{
  *(v57 + 128) = *(v57 + 240);
  *(v57 + 144) = *(v57 + 256);

  return CMTimeCompare(&time1a, (v58 - 128));
}

__n128 OUTLINED_FUNCTION_17_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a21, unint64_t a22)
{
  result = a21;
  v22[15] = a21;
  v22[16].n128_u64[0] = a22;
  return result;
}

CMTime *OUTLINED_FUNCTION_19_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, CMTime *rhs, CMTime *lhs, uint64_t a36, CMTime *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t rhsa, uint64_t rhs_8, uint64_t rhs_16, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a48, uint64_t a49)
{

  return CMTimeSubtract(&a49, &lhsa, &rhsa);
}

__n128 OUTLINED_FUNCTION_20_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16)
{
  *(v16 - 80) = a15;
  *(v16 - 64) = a16;
  *(v16 - 112) = a12;
  *(v16 - 96) = a13;
  result = a9;
  *(v16 - 144) = a9;
  *(v16 - 128) = a10;
  return result;
}

__n128 OUTLINED_FUNCTION_21_38@<Q0>(uint64_t a1@<X2>, __n128 *a2@<X8>)
{
  result = *a2;
  *(v2 - 176) = *a2;
  v4 = a2[1].n128_u64[0];
  *(v2 - 160) = v4;
  *(v2 - 208) = result;
  *(v2 - 192) = v4;
  *(v2 - 56) = *a1;
  *(v2 - 48) = *(a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_35@<X0>(uint64_t a1@<X1>, __int128 *a2@<X4>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, __int128 a21, __int128 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v28 - 80) = *a1;
  *(v28 - 64) = *(a1 + 16);
  *(v28 - 112) = *(v28 - 56);
  *(v28 - 104) = *(v28 - 48);
  *(v28 - 100) = a3;
  *(v28 - 96) = v27;
  v30 = a2[1];
  a20 = *a2;
  a21 = v30;
  a22 = a2[2];

  return FigVCPGetFoldedTimeRanges((v28 - 80), (v28 - 112), &a20, (v28 - 176), (v28 - 208), &a27, &a23);
}

__n128 OUTLINED_FUNCTION_29_30()
{
  result = v0[12];
  v1[15] = result;
  v1[16].n128_u64[0] = v0[13].n128_u64[0];
  return result;
}

CMTime *OUTLINED_FUNCTION_33_29(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, __int128 a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, CMTime *a47)
{

  return CMSampleBufferGetOutputDuration(&a47, v47);
}

CMTime *OUTLINED_FUNCTION_34_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, CMTime *rhs, CMTime *lhs, uint64_t a22, CMTime *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t rhsa, uint64_t rhs_8, uint64_t rhs_16, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a34, uint64_t a35)
{

  return CMTimeSubtract(&a35, &lhsa, &rhsa);
}

uint64_t OUTLINED_FUNCTION_35_24()
{

  return FigAtomicCompareAndSwap32();
}

uint64_t OUTLINED_FUNCTION_40_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMTime *time1, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, CMTime *time2, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t time2a, int time2_8, int time2_12, uint64_t time2_16)
{
  time1a = *(v42 - 128);
  LODWORD(time1_8) = *(v42 - 120);
  HIDWORD(time1_8) = v38;
  time1_16 = v40;
  time2a = *(v42 - 192);
  time2_8 = *(v42 - 184);
  time2_12 = v39;
  time2_16 = v41;

  return CMTimeCompare(&time1a, &time2a);
}

void OUTLINED_FUNCTION_41_26()
{

  JUMPOUT(0x19A8D3660);
}

__n128 OUTLINED_FUNCTION_46_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a21, unint64_t a22)
{
  result = a21;
  v22[12] = a21;
  v22[13].n128_u64[0] = a22;
  return result;
}

__n128 OUTLINED_FUNCTION_47_19()
{
  result = v1[15];
  v0[12] = result;
  v0[13].n128_u64[0] = v1[16].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_48_18@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, CMTime *time2, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t time2a)
{
  *(v50 + 144) = a1;

  return CMTimeCompare((v51 - 128), &time2a);
}

__n128 OUTLINED_FUNCTION_51_21(__n128 *a1)
{
  result = a1[1];
  v1[15] = result;
  v1[16].n128_u64[0] = a1[2].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_55_19()
{

  JUMPOUT(0x19A8D3660);
}

void OUTLINED_FUNCTION_60_16()
{
  *(v2 + 240) = 0;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 128) = *(v2 + 192);
  *(v2 + 136) = *(v2 + 200);
  *(v2 + 140) = v0;
  *(v2 + 144) = v1;
}

uint64_t OUTLINED_FUNCTION_64_12()
{

  return FigAtomicCompareAndSwap32();
}

void OUTLINED_FUNCTION_65_13()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
  *(v2 + 128) = *(v2 + 160);
  *(v2 + 136) = *(v2 + 168);
  *(v2 + 140) = v1;
}

uint64_t OUTLINED_FUNCTION_66_12@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CMTime *time1)
{
  a4 = a1;

  return CMTimeCompare(&time1, &a2);
}

uint64_t OUTLINED_FUNCTION_73_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, CMTime *time1, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t time1a)
{
  *(v58 + 128) = *v57;
  *(v58 + 144) = *(v57 + 16);

  return CMTimeCompare(&time1a, (v59 - 128));
}

void OUTLINED_FUNCTION_74_12()
{
  *(v2 + 240) = *(v2 + 192);
  *(v2 + 248) = *(v2 + 200);
  *(v2 + 252) = v0;
  *(v2 + 256) = v1;
}

void OUTLINED_FUNCTION_76_13()
{
  v1[30] = 0;
  v1[31] = 0;
  v1[32] = 0;
  v1[16] = *(v0 + 96);
}

uint64_t OUTLINED_FUNCTION_84_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMTime *time1, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, CMTime *time2, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t time2a)
{

  return CMTimeCompare(&time1a, &time2a);
}

CMTime *OUTLINED_FUNCTION_85_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, CMTime *a63)
{

  return CMTimeAbsoluteValue(&a71, (v71 - 128));
}

uint64_t OUTLINED_FUNCTION_86_8()
{

  return _CFRuntimeCreateInstance();
}

void OUTLINED_FUNCTION_89_6()
{
  *v0 = *(v2 + 160);
  *(v0 + 8) = *(v2 + 168);
  *(v0 + 12) = v1;
}

__n128 OUTLINED_FUNCTION_92_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __n128 a33, unint64_t a34)
{
  result = a33;
  v34[12] = a33;
  v34[13].n128_u64[0] = a34;
  return result;
}

void OUTLINED_FUNCTION_96_7()
{
  *(v1 + 240) = *(v1 + 176);
  *(v1 + 248) = *(v1 + 184);
  *(v1 + 252) = v0;
}

__n128 OUTLINED_FUNCTION_97_10(__n128 *a1)
{
  result = a1[1];
  v1[12] = result;
  v1[13].n128_u64[0] = a1[2].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_101_4()
{

  return FigAtomicCompareAndSwap32();
}

CMTime *OUTLINED_FUNCTION_102_4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, CMTime *a49)
{

  return CMSampleBufferGetOutputDuration(&a49, v49);
}

uint64_t FigMetricItemPlaybackEndEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, uint64_t a5, void *a6)
{
  ensureMetricEventTrace();
  if (a6)
  {
    FigMetricEventGetClassID();
    v12 = CMDerivedObjectCreate();
    if (!v12)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v14 = FigSimpleMutexCreate();
      *(DerivedStorage + 64) = v14;
      if (v14)
      {
        *DerivedStorage = 1;
        *(DerivedStorage + 8) = 14;
        if (a3)
        {
          v15 = CFRetain(a3);
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          v15 = CFDateCreate(a1, Current);
        }

        *(DerivedStorage + 16) = v15;
        v17 = *a2;
        *(DerivedStorage + 48) = *(a2 + 2);
        *(DerivedStorage + 32) = v17;
        if (a4)
        {
          v18 = CFRetain(a4);
        }

        else
        {
          v18 = 0;
        }

        v12 = 0;
        *(DerivedStorage + 24) = v18;
        *(DerivedStorage + 56) = a5;
        *a6 = 0;
      }

      else
      {
        return FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    FigMetricItemPlaybackEndEventCreateInternal_cold_1(&v20);
    return v20;
  }

  return v12;
}