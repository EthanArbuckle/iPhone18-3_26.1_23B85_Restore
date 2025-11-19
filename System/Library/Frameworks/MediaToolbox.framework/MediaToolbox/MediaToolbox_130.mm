uint64_t compositionTable_copyTrackHasAudioSampleDependencyInformation(uint64_t a1, int a2, void *a3)
{
  v31 = 0;
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_54_18();
  if (v7 != v8)
  {
LABEL_5:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v10 = FigSignalErrorAtGM();
    FigSimpleMutexUnlock();
    if (!v10)
    {
      goto LABEL_6;
    }

    return v10;
  }

  v9 = (*(a1 + 32) + 8);
  while (*(v9 - 1) != a2)
  {
    v9 += 21;
    if (!--v6)
    {
      goto LABEL_5;
    }
  }

  v14 = *v9;
  if (*v9 <= 0)
  {
    FigSimpleMutexUnlock();
    goto LABEL_6;
  }

  v15 = 0;
  v10 = 0;
  v16 = *MEMORY[0x1E695E480];
  v29 = *MEMORY[0x1E695E4D0];
  v17 = 1;
  do
  {
    v18 = v9[1] + v15;
    if ((*(v18 + 12) & 0x1D) != 1)
    {
      v19 = 1;
      goto LABEL_15;
    }

    v20 = *(v18 + 96);
    v21 = *(v18 + 104);
    cf = 0;
    v22 = compositionTable_copyConcreteTrackReaderForAssetURLTrackIDMediaType(a1, v20, v21, *(v9 - 2), v16, &v31);
    if (v22)
    {
      v10 = v22;
      v28 = v31;
      FigSimpleMutexUnlock();
      if (v28)
      {
        CFRelease(v28);
      }

      return v10;
    }

    v23 = v31;
    FigBaseObject = FigTrackReaderGetFigBaseObject(v31);
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v25)
    {
      v10 = v25(FigBaseObject, @"HasAudioSampleDependencyInformation", v16, &cf);
      v26 = cf;
      if (v10)
      {
        v27 = 0;
      }

      else
      {
        v27 = cf == v29;
      }

      v19 = !v27;
      if (!cf)
      {
        goto LABEL_30;
      }

LABEL_29:
      CFRelease(v26);
      cf = 0;
      goto LABEL_30;
    }

    v19 = 1;
    v10 = 4294954514;
    v26 = cf;
    if (cf)
    {
      goto LABEL_29;
    }

LABEL_30:
    if (v23)
    {
      CFRelease(v23);
      v31 = 0;
    }

    v14 = *v9;
LABEL_15:
    if (v17 >= v14)
    {
      break;
    }

    ++v17;
    v15 += 108;
  }

  while ((v19 & 1) != 0);
  FigSimpleMutexUnlock();
  if (v10)
  {
    return v10;
  }

  if (!v19)
  {
    v11 = MEMORY[0x1E695E4D0];
    goto LABEL_7;
  }

LABEL_6:
  v11 = MEMORY[0x1E695E4C0];
LABEL_7:
  v12 = *v11;
  if (*v11)
  {
    v12 = CFRetain(v12);
  }

  v10 = 0;
  *a3 = v12;
  return v10;
}

uint64_t compositionTable_copyConcreteTrackReaderForAssetURLTrackIDMediaType(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5, CFTypeRef *a6)
{
  cf = 0;
  v18 = 0;
  v9 = compositionTable_copyFormatReaderForAssetURL(a1, a2, a5, &v18);
  if (v9)
  {
    v13 = v9;
    v10 = v18;
    if (v18)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (!a3)
  {
    v10 = v18;
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v14)
    {
      v12 = v14(v10, 0, a4, &cf, 0);
      if (v12)
      {
LABEL_7:
        v13 = v12;
        if (!v10)
        {
          goto LABEL_15;
        }

LABEL_14:
        CFRelease(v10);
        goto LABEL_15;
      }

      goto LABEL_11;
    }

LABEL_13:
    v13 = 4294954514;
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v16 = 0;
  v10 = v18;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11(v10, a3, &cf, &v16);
  if (v12)
  {
    goto LABEL_7;
  }

  if (v16 != a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v12 = FigSignalErrorAtGM();
    goto LABEL_7;
  }

LABEL_11:
  v13 = 0;
  *a6 = cf;
  cf = 0;
  if (v10)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t compositeSuper_editCursorService_CreateCursorAtTrackTime(const void *a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  v20 = 0;
  FigSimpleMutexLock();
  v7 = *(v6 + 16);
  if (v7 < 1)
  {
LABEL_5:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v9 = FigSignalErrorAtGM();
    v10 = *(v6 + 4);
    FigSimpleMutexUnlock();
    if (v9)
    {
      return v9;
    }

    v11 = 0;
  }

  else
  {
    v8 = (*(v6 + 32) + 8);
    while (*(v8 - 1) != *(DerivedStorage + 8))
    {
      v8 += 21;
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    if (*v8 < 1)
    {
      FigSimpleMutexUnlock();
      return 4294954775;
    }

    v12 = 0;
    v13 = 156;
    do
    {
      v11 = v12++;
      if (v12 >= *v8)
      {
        break;
      }

      v14 = v8[1] + v13;
      v15 = *v14;
      time1.epoch = *(v14 + 16);
      *&time1.value = v15;
      OUTLINED_FUNCTION_130_0();
      v13 += 108;
    }

    while (CMTimeCompare(&time1, &v18) < 1);
    v10 = *(v6 + 4);
    FigSimpleMutexUnlock();
  }

  CFGetAllocator(a1);
  FigEditCursorGetClassID();
  v9 = CMDerivedObjectCreate();
  if (!v9)
  {
    v16 = CMBaseObjectGetDerivedStorage();
    *v16 = a1;
    CFRetain(a1);
    *(v16 + 8) = v11;
    *(v16 + 16) = v10;
    *a3 = v20;
  }

  return v9;
}

uint64_t compositeSuper_editCursor_Copy(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  CFGetAllocator(a1);
  FigEditCursorGetClassID();
  v2 = CMDerivedObjectCreate();
  if (!v2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = OUTLINED_FUNCTION_20_27(DerivedStorage);
    v5 = CFRetain(v4);
    OUTLINED_FUNCTION_36_21(v5, v6, v7, v8, v9, v10, v11, v12, v14, 0);
  }

  return v2;
}

uint64_t compositeSuper_editCursor_GetEditSegment(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = *v4;
  FigSimpleMutexLock();
  if (*(v5 + 4) != *(DerivedStorage + 16))
  {
    goto LABEL_6;
  }

  v6 = *(v5 + 16);
  if (v6 < 1)
  {
    goto LABEL_6;
  }

  v7 = (*(v5 + 32) + 8);
  while (*(v7 - 1) != *(v4 + 8))
  {
    v7 += 21;
    if (!--v6)
    {
      goto LABEL_6;
    }
  }

  v11 = *(DerivedStorage + 8);
  if (v11 < 0 || v11 >= *v7)
  {
LABEL_6:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v8 = FigSignalErrorAtGM();
    FigSimpleMutexUnlock();
    if (!v8)
    {
      OUTLINED_FUNCTION_29();
      if (v9)
      {
        return 4294954511;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v12 = v7[1] + 108 * v11;
    v13 = OUTLINED_FUNCTION_627();
    memcpy(v13, v14, 0x60uLL);
    v8 = *(v12 + 96);
    v15 = *(v12 + 104);
    if (v8)
    {
      CFRetain(*(v12 + 96));
    }

    FigSimpleMutexUnlock();
    OUTLINED_FUNCTION_29();
    if (v9)
    {
      if (!v8)
      {
        return 4294954511;
      }

      v16 = *(v4 + 12);
      FigSimpleMutexLock();
      v17 = *(v5 + 144);
      if (v17 < 2)
      {
        v19 = 1;
      }

      else
      {
        v18 = 0;
        v19 = 1;
        while (1)
        {
          v20 = *(*(v5 + 136) + v18 + 16);
          if (v20)
          {
            if (CFEqual(v20, v8))
            {
              v21 = *(v5 + 136) + v18;
              if (*(v21 + 24) == v15 && *(v21 + 28) == v16)
              {
                break;
              }
            }
          }

          ++v19;
          v17 = *(v5 + 144);
          v18 += 16;
          if (v19 >= v17)
          {
            goto LABEL_29;
          }
        }

        v17 = *(v5 + 144);
      }

LABEL_29:
      if (v19 == v17)
      {
        *(v5 + 144) = v17 + 1;
        v22 = *(v5 + 128);
        if (v17 >= v22)
        {
          v23 = 2 * v22;
          OUTLINED_FUNCTION_82_7();
          v25 = malloc_type_calloc(v23, 0x10uLL, v24);
          memcpy(v25, *(v5 + 136), 16 * *(v5 + 128));
          free(*(v5 + 136));
          *(v5 + 128) = v23;
          *(v5 + 136) = v25;
        }

        v26 = CFRetain(v8);
        v27 = *(v5 + 136) + 16 * v17;
        *v27 = v26;
        *(v27 + 8) = v15;
        *(v27 + 12) = v16;
      }

      FigSimpleMutexUnlock();
      *(a2 + 16) = v19;
    }

    if (v8)
    {
      CFRelease(v8);
      return 0;
    }
  }

  return v8;
}

uint64_t compositeProxy_editCursorService_CreateCursorAtTrackTime()
{
  OUTLINED_FUNCTION_207();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  cf = 0;
  v4 = *(MEMORY[0x1E6960C98] + 16);
  v44 = *MEMORY[0x1E6960C98];
  *v45 = v4;
  *&v45[16] = *(MEMORY[0x1E6960C98] + 32);
  v43 = 0;
  *v0 = 0;
  v5 = *(v1 + 2);
  *(v1 + 2) = 0;
  v6 = *(*DerivedStorage + 4);
  v7 = DerivedStorage[2];
  CFGetAllocator(v2);
  v8 = OUTLINED_FUNCTION_151_1();
  v12 = compositionTable_copyConcreteTrackReaderForEpoch(v8, v9, v7, v10, v11);
  if (v12 == -12843)
  {
    v13 = 0;
    v14 = 4294954775;
    goto LABEL_36;
  }

  v14 = v12;
  if (v12)
  {
    goto LABEL_35;
  }

  v15 = v50;
  v16 = CFGetAllocator(v2);
  FigBaseObject = FigTrackReaderGetFigBaseObject(v50);
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = v18(FigBaseObject, @"EditCursorService", v16, &v49);
  if (v19 == -12784)
  {
    CFGetAllocator(v2);
    FigEditCursorGetClassID();
    v22 = CMDerivedObjectCreate();
    if (!v22)
    {
      v26 = CMBaseObjectGetDerivedStorage();
      *v26 = *DerivedStorage;
      FigAtomicIncrement32();
      v26[1] = v5;
      v25 = v26 + 2;
      goto LABEL_14;
    }

    goto LABEL_34;
  }

  v14 = v19;
  if (v19)
  {
LABEL_35:
    v13 = 0;
    goto LABEL_36;
  }

  v20 = v49;
  v41 = *v1;
  v42 = *(v1 + 2);
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v21)
  {
LABEL_11:
    v13 = 0;
    v14 = 4294954514;
    goto LABEL_36;
  }

  *v38 = v41;
  *&v39 = v42;
  v22 = v21(v20, v38, &v48);
  if (v22 || (CFGetAllocator(v2), FigEditCursorGetClassID(), v22 = CMDerivedObjectCreate(), v22))
  {
LABEL_34:
    v14 = v22;
    goto LABEL_35;
  }

  v23 = CMBaseObjectGetDerivedStorage();
  *v23 = *DerivedStorage;
  FigAtomicIncrement32();
  v24 = v48;
  v48 = 0;
  v23[1] = v24;
  v23[2] = v5;
  v25 = v23 + 3;
LABEL_14:
  *v25 = v6;
  if (DerivedStorage[2] != 1936684398)
  {
    goto LABEL_30;
  }

  v27 = FigTrackReaderGetFigBaseObject(v15);
  v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v28)
  {
    v28(v27, @"EditsExcludePrimingAndRemainderDuration", *MEMORY[0x1E695E480], &cf);
  }

  if (cf == *MEMORY[0x1E695E4D0])
  {
LABEL_30:
    v13 = 0;
    goto LABEL_31;
  }

  v29 = *DerivedStorage;
  v30 = CFGetAllocator(v2);
  v38[0] = 0;
  if (v5 < 1 || *(v29 + 144) <= v5)
  {
    fig_log_get_emitter();
    TrackGaplessSourceTimeRange = FigSignalErrorAtGM();
    v13 = 0;
    if (TrackGaplessSourceTimeRange)
    {
      goto LABEL_52;
    }

    goto LABEL_21;
  }

  v31 = compositionTable_copyFormatReaderForAssetURL(v29, *(*(v29 + 136) + 16 * v5), v30, v38);
  v13 = v38[0];
  if (v31)
  {
    v14 = v31;
    if (v38[0])
    {
      CFRelease(v38[0]);
    }

    goto LABEL_35;
  }

LABEL_21:
  TrackGaplessSourceTimeRange = FigGaplessInfoGetTrackGaplessSourceTimeRange(v13, v15, &v44);
  if (!TrackGaplessSourceTimeRange)
  {
    if ((BYTE12(v44) & 0x1D) == 1 || (v45[20] & 0x1D) == 1)
    {
      if ((BYTE12(v44) & 1) == 0)
      {
        v44 = *MEMORY[0x1E6960CC0];
        *v45 = *(MEMORY[0x1E6960CC0] + 16);
      }

      if ((v45[20] & 1) == 0)
      {
        *&v45[8] = *MEMORY[0x1E6960C88];
        *&v45[24] = *(MEMORY[0x1E6960C88] + 16);
      }

      *(v1 + 2) = v5;
      v33 = v47;
      v34 = CFGetAllocator(v2);
      *v38 = v44;
      v39 = *v45;
      v35 = *v1;
      v40 = *&v45[16];
      v41 = v35;
      v42 = *(v1 + 2);
      TrackGaplessSourceTimeRange = FigGaplessAudioEditCursorCreate(v33, v38, &v41, v34, &v43);
      if (!TrackGaplessSourceTimeRange)
      {
        v36 = v43;
LABEL_33:
        v14 = 0;
        *v0 = v36;
        v43 = 0;
        goto LABEL_36;
      }

      goto LABEL_52;
    }

LABEL_31:
    v36 = v47;
    if (v47)
    {
      v36 = CFRetain(v47);
    }

    goto LABEL_33;
  }

LABEL_52:
  v14 = TrackGaplessSourceTimeRange;
LABEL_36:
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

  if (v47)
  {
    CFRelease(v47);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  return v14;
}

uint64_t compositeProxy_editCursor_Copy(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v5 = *(DerivedStorage + 8);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v7 = v6(v5, &cf);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      CFGetAllocator(a1);
      FigEditCursorGetClassID();
      v8 = CMDerivedObjectCreate();
      if (!v8)
      {
        v9 = CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_20_27(v9);
        FigAtomicIncrement32();
        v10 = cf;
        cf = 0;
        v11 = *(DerivedStorage + 16);
        *(a1 + 8) = v10;
        *(a1 + 16) = v11;
        *(a1 + 24) = *(DerivedStorage + 24);
        *a2 = 0;
      }
    }
  }

  else
  {
    v8 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t compositeProxy_editCursor_GetEditSegment(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    return 4294954514;
  }

  v4 = OUTLINED_FUNCTION_235();
  result = v5(v4);
  if (!result)
  {
    v7 = *(DerivedStorage + 16);
    *(a2 + 64) = v7;
    *(a2 + 16) = v7;
  }

  return result;
}

uint64_t compositeSimple_editCursor_Copy(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  CFGetAllocator(a1);
  FigEditCursorGetClassID();
  v2 = CMDerivedObjectCreate();
  if (!v2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_20_27(DerivedStorage);
    v4 = FigAtomicIncrement32();
    OUTLINED_FUNCTION_36_21(v4, v5, v6, v7, v8, v9, v10, v11, v13, 0);
  }

  return v2;
}

uint64_t compositeProxy_sampleCursorService_CreateCursorAtPresentationTimeStamp(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v32 = 0;
  cf = 0;
  v31 = 0;
  *a3 = 0;
  v11 = *(a2 + 2);
  *(a2 + 2) = 0;
  v12 = *DerivedStorage;
  v13 = *(*DerivedStorage + 4);
  v14 = DerivedStorage[3];
  v15 = CFGetAllocator(a1);
  v16 = compositionTable_copyConcreteTrackReaderForEpoch(v12, v11, v14, v15, &cf);
  if (v16 == -12843)
  {
    ProxySampleCursor = 4294954454;
    goto LABEL_13;
  }

  ProxySampleCursor = v16;
  if (!v16)
  {
    v18 = cf;
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v19 || v19(v18, &v32))
    {
      CFGetAllocator(a1);
      v20 = OUTLINED_FUNCTION_203_0();
      FigBaseObject = FigTrackReaderGetFigBaseObject(v20);
      v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v22)
      {
        goto LABEL_12;
      }

      v23 = v22(FigBaseObject, @"CaptionSampleCursorService", v14, &v32);
      if (v23)
      {
        goto LABEL_20;
      }
    }

    v24 = v32;
    v29 = *a2;
    v30 = *(a2 + 2);
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v25)
    {
      v34 = v29;
      v35 = v30;
      v23 = v25(v24, &v34, &v31, a4, a5);
      if (!v23)
      {
        CFGetAllocator(a1);
        ProxySampleCursor = compositeProxy_createProxySampleCursor();
        if (!ProxySampleCursor)
        {
          v26 = CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_20_27(v26);
          FigAtomicIncrement32();
          v27 = v31;
          v31 = 0;
          *(a1 + 8) = DerivedStorage[2];
          *(a1 + 16) = v27;
          *(a1 + 24) = v11;
          *(a1 + 32) = v13;
          *a3 = 0;
        }

        goto LABEL_13;
      }

LABEL_20:
      ProxySampleCursor = v23;
      goto LABEL_13;
    }

LABEL_12:
    ProxySampleCursor = 4294954514;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return ProxySampleCursor;
}

uint64_t compositeProxy_sampleCursorService_CreateCursorNearPresentationTimeStamp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v31 = 0;
  cf = 0;
  v30 = 0;
  *a4 = 0;
  v13 = *(a2 + 16);
  *(a2 + 16) = 0;
  v14 = *DerivedStorage;
  v27 = *(*DerivedStorage + 4);
  v15 = DerivedStorage[3];
  v16 = CFGetAllocator(a1);
  v17 = compositionTable_copyConcreteTrackReaderForEpoch(v14, v13, v15, v16, &cf);
  if (v17 == -12843)
  {
    ProxySampleCursor = 4294954454;
    goto LABEL_11;
  }

  ProxySampleCursor = v17;
  if (!v17)
  {
    v19 = cf;
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v20)
    {
      v21 = v20(v19, &v31);
      if (v21)
      {
        goto LABEL_18;
      }

      v22 = v31;
      OUTLINED_FUNCTION_68_11();
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v23)
      {
        v33 = v28;
        v34 = v29;
        v21 = v23(v22, &v33, a3, &v30, a5, a6);
        if (!v21)
        {
          CFGetAllocator(a1);
          ProxySampleCursor = compositeProxy_createProxySampleCursor();
          if (!ProxySampleCursor)
          {
            v24 = CMBaseObjectGetDerivedStorage();
            OUTLINED_FUNCTION_20_27(v24);
            FigAtomicIncrement32();
            v25 = v30;
            *(a1 + 8) = DerivedStorage[2];
            *(a1 + 16) = v25;
            *(a1 + 24) = v13;
            *(a1 + 32) = v27;
            *a4 = 0;
            v30 = 0;
          }

          goto LABEL_11;
        }

LABEL_18:
        ProxySampleCursor = v21;
        goto LABEL_11;
      }
    }

    ProxySampleCursor = 4294954514;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return ProxySampleCursor;
}

uint64_t compositeProxy_sampleCursor_GetPresentationTimeStamp(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 40))
  {
    return 4294954514;
  }

  v4 = OUTLINED_FUNCTION_235();
  result = v5(v4);
  if (!result)
  {
    *(a2 + 16) = *(DerivedStorage + 24);
  }

  return result;
}

uint64_t compositeProxy_sampleCursor_GetDecodeTimeStamp(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    return 4294954514;
  }

  v4 = OUTLINED_FUNCTION_235();
  result = v5(v4);
  if (!result)
  {
    *(a2 + 16) = *(DerivedStorage + 24);
  }

  return result;
}

uint64_t compositeProxy_sampleCursor_CreateSampleBuffer()
{
  OUTLINED_FUNCTION_207();
  sampleBufferOut = 0;
  sbuf = 0;
  v25 = 0;
  cf = 0;
  timingArrayEntriesNeededOut = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (v1)
  {
    v4 = CMBaseObjectGetDerivedStorage();
    v5 = *(v3 + 16);
    if (v4)
    {
      v6 = *(v4 + 16);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = *(DerivedStorage + 16);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v7)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v9 = 4294954514;
    goto LABEL_29;
  }

  SampleTimingInfoArray = v7(v5, v6, &sbuf);
  if (SampleTimingInfoArray)
  {
    goto LABEL_12;
  }

  SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(sbuf, 0, 0, &timingArrayEntriesNeededOut);
  if (SampleTimingInfoArray)
  {
    goto LABEL_12;
  }

  if (timingArrayEntriesNeededOut)
  {
    if (timingArrayEntriesNeededOut > 0x38E38E38E38E38ELL)
    {
LABEL_11:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      SampleTimingInfoArray = FigSignalErrorAtGM();
LABEL_12:
      v9 = SampleTimingInfoArray;
      v10 = 0;
      v11 = 0;
LABEL_13:
      v12 = 0;
      goto LABEL_29;
    }

    v13 = 72 * timingArrayEntriesNeededOut;
  }

  else
  {
    v13 = 0;
  }

  v14 = malloc_type_malloc(v13, 0x1000040FF89C88EuLL);
  if (!v14)
  {
    goto LABEL_11;
  }

  v11 = v14;
  v15 = CMSampleBufferGetSampleTimingInfoArray(sbuf, timingArrayEntriesNeededOut, v14, 0);
  if (v15)
  {
    goto LABEL_40;
  }

  v16 = timingArrayEntriesNeededOut;
  if (timingArrayEntriesNeededOut)
  {
    v17 = *(v3 + 24);
    p_epoch = &v11->decodeTimeStamp.epoch;
    do
    {
      *(p_epoch - 3) = v17;
      *p_epoch = v17;
      p_epoch += 9;
      --v16;
    }

    while (v16);
  }

  v19 = CFGetAllocator(sbuf);
  v15 = CMSampleBufferCreateCopyWithNewTiming(v19, sbuf, timingArrayEntriesNeededOut, v11, &sampleBufferOut);
  if (v15)
  {
LABEL_40:
    v9 = v15;
    v10 = 0;
    goto LABEL_13;
  }

  v12 = compositeProxy_sampleCursor_copyFormatDescriptionReplacementTable();
  FormatDescription = CMSampleBufferGetFormatDescription(sampleBufferOut);
  mutableComposition_copyReplacedFormatDescription(v12, FormatDescription, &v25);
  v10 = v25;
  if (v25 == FormatDescription)
  {
    v22 = sampleBufferOut;
    if (sampleBufferOut)
    {
      CFRetain(sampleBufferOut);
    }

    goto LABEL_28;
  }

  CFGetAllocator(sbuf);
  CopyWithNewFormatDescription = FigSampleBufferCreateCopyWithNewFormatDescription();
  if (!CopyWithNewFormatDescription)
  {
    v22 = cf;
LABEL_28:
    v9 = 0;
    *v0 = v22;
    cf = 0;
    goto LABEL_29;
  }

  v9 = CopyWithNewFormatDescription;
LABEL_29:
  if (sbuf)
  {
    CFRelease(sbuf);
  }

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  free(v11);
  return v9;
}

uint64_t compositeProxy_sampleCursor_CopyFormatDescription(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  v10 = 0;
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (v4)
  {
    v5 = v4(v3, &v10);
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v6 = compositeProxy_sampleCursor_copyFormatDescriptionReplacementTable();
      mutableComposition_copyReplacedFormatDescription(v6, v10, &cf);
      if (a2)
      {
        *a2 = cf;
        cf = 0;
      }

      if (v6)
      {
        CFRelease(v6);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v7;
}

CFTypeRef compositeProxy_sampleCursor_copyFormatDescriptionReplacementTable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *DerivedStorage;
  if (DerivedStorage[8] == *(*DerivedStorage + 4) && (v2 = *(v1 + 16), v2 >= 1))
  {
    v3 = (*(v1 + 32) + 112);
    while (*(v3 - 27) != DerivedStorage[2])
    {
      v3 += 21;
      if (!--v2)
      {
        goto LABEL_6;
      }
    }

    v4 = *v3;
    if (*v3)
    {
      CFRetain(*v3);
    }
  }

  else
  {
LABEL_6:
    v4 = 0;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t compositionSharedCache_copyFormatReaderForAssetURL(uint64_t a1, const void *a2, const __CFAllocator *a3, uint64_t a4)
{
  cf = 0;
  v5 = compositionSharedCache_copyAssetForAssetURL(a1, a2, a3, &cf);
  v6 = cf;
  if (v5)
  {
LABEL_4:
    v10 = v5;
    if (!v6)
    {
      return v10;
    }

    goto LABEL_7;
  }

  v7 = CFGetAllocator(cf);
  CMBaseObject = FigAssetGetCMBaseObject(v6);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v5 = v9(CMBaseObject, @"assetProperty_FormatReader", v7, a4);
    goto LABEL_4;
  }

  v10 = 4294954514;
  if (v6)
  {
LABEL_7:
    CFRelease(v6);
  }

  return v10;
}

uint64_t compositionTableTrack_copyTrackFormatDescriptionArrayForTrackCompatibility(uint64_t a1, unint64_t a2)
{
  cf = 0;
  v19 = 0;
  if (*(a1 + 32) > a2)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_16_34();
  if (!(!v6 & v5))
  {
    v17 = 4294954516;
    goto LABEL_8;
  }

  v7 = v4;
  v8 = *(v3 + 1);
  if (v8 < 1 || (v9 = *(v3 + 2) + 108 * v8, (v10 = *(v9 - 12)) == 0))
  {
    v11 = 0;
LABEL_7:
    v17 = 0;
    *v7 = v11;
    v19 = 0;
    goto LABEL_8;
  }

  v13 = *MEMORY[0x1E695E480];
  v14 = compositionTable_copyConcreteTrackReaderForAssetURLTrackIDMediaType(v2, v10, *(v9 - 4), *v3, *MEMORY[0x1E695E480], &cf);
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    FigBaseObject = FigTrackReaderGetFigBaseObject(cf);
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v17 = v16(FigBaseObject, @"TrackFormatDescriptionArray", v13, &v19);
      v11 = v19;
      if (v17)
      {
        if (v19)
        {
          CFRelease(v19);
        }

        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v17 = 4294954514;
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

void mutableCompositionTrack_setMetadata(void *a1, const __CFArray *a2, __CFDictionary *a3)
{
  theArray = 0;
  allocator = *MEMORY[0x1E695E480];
  v5 = compositionTableTrack_createAvailableMetadataReaderPropertiesArray(*MEMORY[0x1E695E480], a1, &theArray);
  v6 = theArray;
  if (!v5)
  {
    v7 = MEMORY[0x1E695E4D0];
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v9 = Count;
        v10 = 0;
        v11 = *v7;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
          CFDictionarySetValue(a3, ValueAtIndex, v11);
          ++v10;
        }

        while (v9 != v10);
      }
    }

    compositionTableTrack_releaseAndClearMetadata(a1);
    if (a2)
    {
      v13 = CFArrayGetCount(a2);
      v14 = *v7;
      if (v13 >= 1)
      {
        v15 = v13;
        value = *v7;
        for (i = 0; i != v15; ++i)
        {
          v17 = CFArrayGetValueAtIndex(a2, i);
          if (v17)
          {
            v18 = v17;
            v19 = CFGetTypeID(v17);
            if (v19 == CFDictionaryGetTypeID())
            {
              v20 = CFDictionaryGetValue(v18, @"format");
              v21 = CFDictionaryGetValue(v18, @"items");
              if (v20)
              {
                v22 = v21;
                if (v21)
                {
                  v23 = @"QuickTimeMetadataReader";
                  if (!FigCFEqual())
                  {
                    v23 = @"QuickTimeUserDataReader";
                    if (!FigCFEqual())
                    {
                      if (FigCFEqual())
                      {
                        v23 = @"ISOUserDataReader";
                      }

                      else
                      {
                        v23 = 0;
                      }
                    }
                  }

                  Mutable = a1[9];
                  if (!Mutable)
                  {
                    Mutable = CFDictionaryCreateMutable(allocator, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    a1[9] = Mutable;
                  }

                  CFDictionarySetValue(Mutable, v20, v22);
                  if (v23)
                  {
                    v25 = OUTLINED_FUNCTION_627();
                    CFDictionarySetValue(v25, v26, value);
                  }
                }
              }
            }
          }
        }

        v14 = value;
      }
    }

    else
    {
      v14 = *v7;
    }

    CFDictionarySetValue(a3, @"MetadataReaderTypes", v14);
    CFDictionarySetValue(a3, @"MetadataReaders", v14);
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t compositionTable_insertAssetSegmentIntoTrack(uint64_t a1, unint64_t a2, uint64_t a3, int a4, __int128 *a5, uint64_t a6, __int128 *a7)
{
  memset(v45, 0, 44);
  v44 = 0u;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  v14 = MEMORY[0x1E6960CC0];
  if ((*(a5 + 3) & 0x1D) == 1)
  {
    *&time1.start.value = *a5;
    time1.start.epoch = *(a5 + 2);
    OUTLINED_FUNCTION_68_11();
    if (CMTimeCompare(&time1.start, &time2) < 0)
    {
      return 4294954516;
    }
  }

  *&time1.start.value = *a6;
  time1.start.epoch = *(a6 + 16);
  v40 = *v14;
  *&time2.value = *v14;
  v15 = *(v14 + 2);
  time2.epoch = v15;
  if (CMTimeCompare(&time1.start, &time2) < 1)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_350();
  if (!v18 && (v16 & 1) != 0)
  {
    return 4294954516;
  }

  if (v17 == 1)
  {
    *&time1.start.value = *a7;
    time1.start.epoch = *(a7 + 2);
    *&time2.value = v40;
    time2.epoch = v15;
    if (CMTimeCompare(&time1.start, &time2) < 0)
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }
  }

  if (*(a1 + 32) > a2)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_25_24();
  if (v19 <= a2)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_29();
  if (!v18)
  {
    *&time2.value = v40;
    time2.epoch = v15;
    OUTLINED_FUNCTION_43_16();
    if (v30 == v31)
    {
      v32 = OUTLINED_FUNCTION_2_126(v28);
      *&time1.start.epoch = v33;
      *&time1.duration.timescale = v34;
      *&time1.start.value = v32;
      End = CMTimeRangeGetEnd(&time2, &time1);
    }

    *a7 = OUTLINED_FUNCTION_361_0(End, v21, v22, v23, v24, v25, v26, v27, v40, *(&v40 + 1), v29, time2.value);
    *(a7 + 2) = v35;
  }

  v44 = *a7;
  *&v45[0] = *(a7 + 2);
  *(v45 + 8) = *a6;
  v36 = *(a6 + 16);
  v42 = *a5;
  *&v43[0] = *(a5 + 2);
  *(&v43[1] + 1) = v36;
  *(v43 + 8) = *(v45 + 8);
  *(&v45[1] + 1) = v36;
  *&v45[2] = a3;
  DWORD2(v45[2]) = a4;
  v37 = OUTLINED_FUNCTION_235();
  return compositionTable_insertEditSegmentsIntoTrack(v37, v38);
}

uint64_t compositionTable_insertEditSegmentsIntoTrack(uint64_t a1, unint64_t a2)
{
  v124 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) > a2)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_16_34();
  if (!(!v13 & v12))
  {
    return 4294954516;
  }

  v14 = v7;
  if (v7 < 1)
  {
    return 0;
  }

  v15 = v6;
  v16 = *(a2 + 8);
  v122 = *(v6 + 48);
  v17 = *(v6 + 60);
  v123 = *(v6 + 56);
  v18 = *MEMORY[0x1E6960CC0];
  v104 = *MEMORY[0x1E6960CC0];
  *&lhs.start.value = *MEMORY[0x1E6960CC0];
  v19 = *(MEMORY[0x1E6960CC0] + 16);
  lhs.start.epoch = v19;
  if (v16 >= 1)
  {
    OUTLINED_FUNCTION_23_34();
    v22 = v20 + v16 * v21;
    v23 = *(v22 - 60);
    v24 = *(v22 - 28);
    *&range.start.epoch = *(v22 - 44);
    *&range.duration.timescale = v24;
    *&range.start.value = v23;
    End = CMTimeRangeGetEnd(&lhs.start, &range);
  }

  OUTLINED_FUNCTION_361_0(End, v5, v6, v7, v8, v9, v10, v11, v104, *(&v104 + 1), v18, lhs.start.value);
  if ((v17 & 1) == 0 || (v33 = OUTLINED_FUNCTION_31_21(v25, v26, v27, v28, v29, v30, v31, v32, v105, v108, *&lhs.start.value, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, v111.value, *&v111.timescale, v111.epoch, v112, v113.value, *&v113.timescale, v113.epoch, v114, v115.value, *&v115.timescale, v115.epoch, v116, rhs.value, *&rhs.timescale, rhs.epoch, v118, range.start.value, range.start.timescale, range.start.flags, range.start.epoch), !v33))
  {
    if (*(a2 + 8) >= 1)
    {
      OUTLINED_FUNCTION_51_17();
      compositionEditSegment_copySegmentsAndAddURLsToBag(&range, v15, 1, 0);
      v61 = *(a2 + 16) + 108 * *(a2 + 8) - 108;
      v62 = compositionEditSegment_combineEditSegmentsIfPossible(v61, &range, v61, 0);
      if (v62)
      {
        v63 = 108;
      }

      else
      {
        v63 = 0;
      }

      v14 -= v62 != 0;
      v15 += v63;
      compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(&range, 1, 0);
    }

    OUTLINED_FUNCTION_79_10();
    while (1)
    {
      v41 = v14-- < 1;
      if (v41)
      {
        break;
      }

      OUTLINED_FUNCTION_77_9();
      if (v13)
      {
        v64 = OUTLINED_FUNCTION_298();
        result = compositionTable_insertUninitializedEditsIntoTrack(v64, v65, v66, v67);
        if (result)
        {
          return result;
        }

        OUTLINED_FUNCTION_23_34();
        v60 = (v68 + v16 * v69);
        v59 = *(a1 + 40);
LABEL_31:
        compositionEditSegment_copySegmentsAndAddURLsToBag(v60, v15, v14 + 1, v59);
        return 0;
      }
    }

    return 0;
  }

  if (OUTLINED_FUNCTION_31_21(v33, v34, v35, v36, v37, v38, v39, v40, v106, v109, *&lhs.start.value, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, v111.value, *&v111.timescale, v111.epoch, v112, v113.value, *&v113.timescale, v113.epoch, v114, v115.value, *&v115.timescale, v115.epoch, v116, rhs.value, *&rhs.timescale, rhs.epoch, v118, range.start.value, range.start.timescale, range.start.flags, range.start.epoch) >= 1)
  {
    while ((*(v15 + 12) & 0x1D) != 1)
    {
      v15 += 108;
      v41 = v14-- <= 1;
      if (v41)
      {
        v14 = 0;
        break;
      }
    }

    OUTLINED_FUNCTION_79_10();
    while (1)
    {
      v41 = v14-- < 1;
      if (v41)
      {
        return 0;
      }

      OUTLINED_FUNCTION_77_9();
      if (v13)
      {
        v122 = *(v15 + 48);
        v123 = *(v15 + 56);
        v42 = OUTLINED_FUNCTION_298();
        result = compositionTable_insertUninitializedEditsIntoTrack(v42, v43, v44, v45);
        if (result)
        {
          return result;
        }

        OUTLINED_FUNCTION_23_34();
        v48 = v16 * v47;
        v50 = v49 + v48;
        *(v50 + 48) = v120;
        *(v50 + 64) = v121;
        v51 = *(a2 + 16) + v48;
        OUTLINED_FUNCTION_55_17();
        *&rhs.value = v52;
        rhs.epoch = v53;
        CMTimeSubtract(&range.start, &lhs.start, &rhs);
        v54 = *&range.start.value;
        *(v51 + 88) = range.start.epoch;
        *(v51 + 72) = v54;
        v55 = *(a2 + 16) + v48;
        v56 = MEMORY[0x1E6960C70];
        *v55 = *MEMORY[0x1E6960C70];
        *(v55 + 16) = *(v56 + 16);
        v57 = *(a2 + 16) + v48;
        *(v57 + 24) = v107;
        *(v57 + 40) = v19;
        v58 = *(a2 + 16) + v48;
        *(v58 + 96) = 0;
        *(v58 + 104) = 0;
        v59 = *(a1 + 40);
        v60 = (v58 + 108);
        goto LABEL_31;
      }
    }
  }

  OUTLINED_FUNCTION_51_17();
  *&rhs.value = v107;
  rhs.epoch = v19;
  *&v115.value = v107;
  v70 = 72;
  v71 = v14;
  v115.epoch = v19;
  do
  {
    lhs.start = v115;
    OUTLINED_FUNCTION_169(v15 + v70);
    CMTimeAdd(&v115, &lhs.start, &v113);
    v70 += 108;
    --v71;
  }

  while (v71);
  OUTLINED_FUNCTION_55_17();
  v72 = OUTLINED_FUNCTION_298();
  EditIndexStartingAtTimeInTrackSplitEditIfNecessary = compositionTable_findEditIndexStartingAtTimeInTrackSplitEditIfNecessary(v72, v73);
  if (EditIndexStartingAtTimeInTrackSplitEditIfNecessary < 0)
  {
    return 4294954516;
  }

  v75 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary;
  if (EditIndexStartingAtTimeInTrackSplitEditIfNecessary >= *(a2 + 8))
  {
    return 4294954516;
  }

  v76 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary - 1;
  if (EditIndexStartingAtTimeInTrackSplitEditIfNecessary)
  {
    v77 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary - 1;
  }

  else
  {
    v77 = 0;
  }

  OUTLINED_FUNCTION_23_34();
  v80 = v78 + v75 * v79;
  v81 = *(v80 + 48);
  v113.epoch = *(v80 + 64);
  *&v113.value = v81;
  v111 = v115;
  CMTimeAdd(&lhs.start, &v113, &v111);
  v82 = *&lhs.start.value;
  *(v80 + 64) = lhs.start.epoch;
  *(v80 + 48) = v82;
  if (!v75)
  {
    v83 = 0;
    goto LABEL_47;
  }

  compositionEditSegment_copySegmentsAndAddURLsToBag(&range, v15, 1, *(a1 + 40));
  OUTLINED_FUNCTION_23_34();
  if (!compositionEditSegment_combineEditSegmentsIfPossible(v84 + v76 * v85, &range, v84 + v76 * v85, *(a1 + 40)) || (v15 += 108, --v14, v14))
  {
LABEL_46:
    compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(&range, 1, *(a1 + 40));
    v83 = v75;
LABEL_47:
    v90 = v14 - 1;
    if (v14 >= 1)
    {
      compositionEditSegment_copySegmentsAndAddURLsToBag(&range, (v15 + 108 * v90), 1, *(a1 + 40));
      v91 = compositionEditSegment_combineEditSegmentsIfPossible(&range, *(a2 + 16) + 108 * v83, *(a2 + 16) + 108 * v83, *(a1 + 40));
      compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(&range, 1, *(a1 + 40));
      if (!v91 || (--v14, v90))
      {
        v92 = OUTLINED_FUNCTION_298();
        result = compositionTable_insertUninitializedEditsIntoTrack(v92, v93, v83, v14);
        if (result)
        {
          return result;
        }

        OUTLINED_FUNCTION_23_34();
        compositionEditSegment_copySegmentsAndAddURLsToBag((v94 + v83 * v95), v15, v14, *(a1 + 40));
        v83 = v83 + v14 - 1;
      }
    }

    OUTLINED_FUNCTION_23_34();
    v98 = OUTLINED_FUNCTION_64_11((v96 + v83 * v97));
    *&lhs.start.epoch = v99;
    *&lhs.duration.timescale = v100;
    *&lhs.start.value = v98;
    CMTimeRangeGetEnd(&rhs, &lhs);
    lhs.start = rhs;
    compositionTableTrack_updateTrackStartTimes(a2, v83 + 1, &lhs.start.value);
    v101 = OUTLINED_FUNCTION_298();
    compositionTable_deleteEditsWithZeroDuration(v101, v102, v77, v103);
    return 0;
  }

  OUTLINED_FUNCTION_23_34();
  if (!compositionEditSegment_combineEditSegmentsIfPossible(v86 + v76 * v87, v86 + v75 * v87, v86 + v76 * v87, *(a1 + 40)) || (v88 = OUTLINED_FUNCTION_298(), result = compositionTable_deleteEditsFromTrack(v88, v89), !result))
  {
    v14 = 0;
    --v75;
    goto LABEL_46;
  }

  return result;
}

uint64_t compositionTable_insertUninitializedEditsIntoTrack(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (v4 > a2)
  {
    return 4294954516;
  }

  result = 4294954516;
  if ((a3 & 0x8000000000000000) == 0 && v4 + 168 * *(a1 + 16) > a2)
  {
    v9 = a2[1];
    v10 = v9 - a3;
    if (v9 >= a3)
    {
      v12 = a2[3];
      if (v12 - v9 >= a4)
      {
        if (v10 >= 1)
        {
          memmove((a2[2] + 108 * a3 + 108 * a4), (a2[2] + 108 * a3), 108 * v10);
        }

        OUTLINED_FUNCTION_23_34();
        bzero((v20 + a3 * v21), a4 * v21);
      }

      else
      {
        v13 = 5;
        if (a4 > 5)
        {
          v13 = a4;
        }

        v14 = v12 + v13;
        OUTLINED_FUNCTION_11_50();
        v16 = malloc_type_calloc(v14, 0x6CuLL, v15);
        v17 = v16;
        v18 = a2[2];
        if (v18)
        {
          v19 = a2[1] - a3;
          if (a3)
          {
            memmove(v16, v18, 108 * a3);
            v18 = a2[2];
          }

          if (v19 >= 1)
          {
            memmove(&v17[108 * a3 + 108 * a4], &v18[108 * a3], 108 * v19);
            v18 = a2[2];
          }

          free(v18);
        }

        a2[2] = v17;
        a2[3] = v14;
      }

      result = 0;
      a2[1] += a4;
    }
  }

  return result;
}

uint64_t compositionTable_findEditIndexStartingAtTimeInTrackSplitEditIfNecessary(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 32) > a2)
  {
    return -1;
  }

  OUTLINED_FUNCTION_16_34();
  if (!(!v6 & v5))
  {
    return -1;
  }

  v7 = v4;
  time1 = *v4;
  EditSegmentByTime = compositionTableTrack_findEditSegmentByTime(a2, &time1);
  if ((EditSegmentByTime & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_62_12();
    OUTLINED_FUNCTION_130_0();
    if (CMTimeCompare(&time1, &v40.start))
    {
      v10 = (*(a2 + 16) + 108 * EditSegmentByTime);
      v49 = **&MEMORY[0x1E6960CC0];
      v48 = v49;
      v47 = v49;
      v45 = *&v7->value;
      epoch = v7->epoch;
      v11 = OUTLINED_FUNCTION_64_11(v10);
      v25 = OUTLINED_FUNCTION_33_20(v13, v14, v15, v16, v17, v18, v19, v20, *v12, v12[1], v12[2], v12[3], v12[4], v12[5], v11.n128_i64[0], v11.n128_i64[1], v21, v22, v23, v24, v45);
      CMTimeMapTimeFromRangeToRange(v27, v25, v26, &v40);
      v28 = EditSegmentByTime + 1;
      v29 = OUTLINED_FUNCTION_627();
      if (compositionTable_insertUninitializedEditsIntoTrack(v29, v30, EditSegmentByTime + 1, 1))
      {
        return -1;
      }

      v31 = *(a2 + 16) + 108 * EditSegmentByTime;
      OUTLINED_FUNCTION_351();
      OUTLINED_FUNCTION_65_12();
      CMTimeSubtract(&v48, &time1, &v40.start);
      time1 = v49;
      OUTLINED_FUNCTION_65_12();
      CMTimeSubtract(&v47, &time1, &v40.start);
      v32 = *&v7->value;
      *(v31 + 172) = v7->epoch;
      *(v31 + 156) = v32;
      OUTLINED_FUNCTION_65_12();
      OUTLINED_FUNCTION_87_3(v48.epoch, v40.start.value, *&v40.start.timescale, v40.start.epoch, v40.duration.value, *&v40.duration.timescale, v40.duration.epoch, time1.value, *&time1.timescale, time1.epoch, v42, v43, v44, v48.value, *&v48.timescale, epoch);
      v33 = *&time1.value;
      *(v31 + 196) = time1.epoch;
      *(v31 + 180) = v33;
      v34 = *&v49.value;
      *(v31 + 124) = v49.epoch;
      *(v31 + 108) = v34;
      OUTLINED_FUNCTION_65_12();
      OUTLINED_FUNCTION_87_3(v47.epoch, v40.start.value, *&v40.start.timescale, v40.start.epoch, v40.duration.value, *&v40.duration.timescale, v40.duration.epoch, time1.value, *&time1.timescale, time1.epoch, v42, v43, v44, v47.value, *&v47.timescale, epoch);
      v35 = *&time1.value;
      *(v31 + 148) = time1.epoch;
      *(v31 + 132) = v35;
      *(v31 + 204) = *(v31 + 96);
      *(v31 + 212) = *(v31 + 104);
      v36 = v48.epoch;
      *(v31 + 72) = *&v48.value;
      *(v31 + 88) = v36;
      v37 = v47.epoch;
      *(v31 + 24) = *&v47.value;
      *(v31 + 40) = v37;
      OUTLINED_FUNCTION_29();
      if (v6)
      {
        if (v38)
        {
          CFRetain(v38);
          v39 = *(v31 + 204);
          if (v39)
          {
            CFBagAddValue(*(a1 + 40), v39);
          }
        }
      }

      return v28;
    }
  }

  return EditSegmentByTime;
}

uint64_t compositionTable_deleteEditsFromTrack(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 32) > a2)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_16_34();
  if (!(!v6 & v5))
  {
    return 4294954516;
  }

  v7 = v4;
  v8 = v3;
  v9 = v4 + v3;
  if (v4 + v3 > *(a2 + 8))
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_23_34();
  compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(v12 + v8 * v10, v7, *(v11 + 40));
  v13 = *(a2 + 8);
  if (v13 - v9 >= 1)
  {
    memmove((*(a2 + 16) + 108 * v8), (*(a2 + 16) + 108 * v9), 108 * (v13 - v9));
    v13 = *(a2 + 8);
  }

  v14 = v13 - v7;
  *(a2 + 8) = v14;
  bzero((*(a2 + 16) + 108 * v14), 108 * v7);
  return 0;
}

uint64_t compositionTable_deleteEditsWithZeroDuration(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = a4;
    v5 = a3;
    v7 = *(a2 + 8);
    v8 = v7 > a4 && a3 <= a4;
    if (v8 && v7 > a3)
    {
      v10 = result;
      v19 = *MEMORY[0x1E6960CC0];
      do
      {
        OUTLINED_FUNCTION_62_12();
        OUTLINED_FUNCTION_18_30(v11, v12, v13, v14, v15, v16, v17, v18, v19);
        result = CMTimeCompare(&time1, &time2);
        if (result)
        {
          ++v5;
        }

        else
        {
          result = compositionTable_deleteEditsFromTrack(v10, a2);
          if (result)
          {
            return result;
          }

          --v4;
        }
      }

      while (v5 <= v4);
    }
  }

  return result;
}

void compositionTable_insertEditSegmentsFromAsset(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = *(CMBaseObjectGetDerivedStorage() + 8);
  v14 = *(v13 + 16);
  v15 = v13;
  v16 = 0;
  while (1)
  {
    CompatibleTrackForFormatDescriptionArrayAndMediaType = compositionTable_findCompatibleTrackForFormatDescriptionArrayAndMediaType(v15, v16, v14, a4, a5);
    if (CompatibleTrackForFormatDescriptionArrayAndMediaType < 0)
    {
      v22 = CompatibleTrackForFormatDescriptionArrayAndMediaType;
      compositionTable_addTrack(v13, a5, 0, 0, &v22);
      CompatibleTrackForFormatDescriptionArrayAndMediaType = v22;
      goto LABEL_9;
    }

    v18 = a2;
    v19 = a3;
    if (a3 >= 1)
    {
      break;
    }

LABEL_6:
    v14 = *(v13 + 16);
    v16 = CompatibleTrackForFormatDescriptionArrayAndMediaType + 1;
    v15 = v13;
  }

  while (1)
  {
    v20 = *v18++;
    if (v20 == CompatibleTrackForFormatDescriptionArrayAndMediaType)
    {
      break;
    }

    if (!--v19)
    {
      goto LABEL_6;
    }
  }

  v22 = CompatibleTrackForFormatDescriptionArrayAndMediaType;
LABEL_9:
  inserted = compositionTable_insertEditSegmentsIntoTrack(v13, *(v13 + 32) + 168 * CompatibleTrackForFormatDescriptionArrayAndMediaType);
  if (a8 && !inserted)
  {
    *a8 = v22;
  }

  OUTLINED_FUNCTION_843();
}

uint64_t compositionTable_insertEmptyTrackSegment(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *a4)
{
  OUTLINED_FUNCTION_36_20();
  time1 = *v8;
  OUTLINED_FUNCTION_49_13(MEMORY[0x1E6960CC0]);
  v9 = CMTimeCompare(&time1, &time2);
  if (v9 < 1)
  {
    return 4294954516;
  }

  time1 = *v6;
  OUTLINED_FUNCTION_19_34(v9, v10, v11, v12, v13, v14, v15, v16, v49);
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    return 4294954516;
  }

  if (*(v5 + 32) > v4)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_25_24();
  if (v17 <= v4)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_43_16();
  if (v26 != v27)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_19_34(v18, v19, v20, v21, v22, v23, v24, v25, v50);
  v29 = OUTLINED_FUNCTION_2_126(v28);
  OUTLINED_FUNCTION_88_8(v30, v31, v32, v33, v34, v35, v36, v37, v29, v38, v39, v51, v53, v55, v57, v58, v60, time2.value, *&time2.timescale, time2.epoch, v63, v40, v41, v42);
  time1 = time2;
  if ((OUTLINED_FUNCTION_34_20(time2.epoch, *&time2.value, v52, v54, v56, v59, v61, *&time2.value, time2.epoch) & 0x80000000) == 0)
  {
    return 0;
  }

  time2 = *a4;
  v43 = OUTLINED_FUNCTION_177();
  return compositionTable_insertAssetSegmentIntoTrack(v43, v44, 0, 0, v45, v46, v47);
}

uint64_t compositionTable_deleteTrackSegment()
{
  OUTLINED_FUNCTION_36_20();
  v6 = OUTLINED_FUNCTION_56_14(v2, v3, v4, v5);
  v15 = OUTLINED_FUNCTION_33_20(v7, v8, v9, v10, v11, v12, v13, v14, v134, v145, time2.value, *&time2.timescale, time2.epoch, v154, v6.n128_i64[0], v6.n128_i64[1], *(v10 + 16), 0, 0, 0, v158.value);
  CMTimeAdd(v17, v15, v16);
  OUTLINED_FUNCTION_5_88();
  OUTLINED_FUNCTION_49_13(MEMORY[0x1E6960CC0]);
  v26 = OUTLINED_FUNCTION_33_20(v18, v19, v20, v21, v22, v23, v24, v25, v135, v146, time2.value, *&time2.timescale, time2.epoch, v154, time1.value, *&time1.timescale, time1.epoch, v156, *(&v156 + 1), v157, v158.value);
  if (!CMTimeCompare(v26, v27))
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_88();
  OUTLINED_FUNCTION_19_34(v28, v29, v30, v31, v32, v33, v34, v35, v136);
  v44 = OUTLINED_FUNCTION_33_20(v36, v37, v38, v39, v40, v41, v42, v43, v137, v147, time2.value, *&time2.timescale, time2.epoch, v154, time1.value, *&time1.timescale, time1.epoch, v156, *(&v156 + 1), v157, v158.value);
  if (CMTimeCompare(v44, v45) < 1)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_19_34(v46, v47, v48, v49, v50, v51, v52, v53, v138);
  v62 = OUTLINED_FUNCTION_33_20(v54, v55, v56, v57, v58, v59, v60, v61, v139, v148, time2.value, *&time2.timescale, time2.epoch, v154, time1.value, *&time1.timescale, time1.epoch, v156, *(&v156 + 1), v157, v158.value);
  if (CMTimeCompare(v62, v63) < 0)
  {
    return 4294954516;
  }

  if (*(v1 + 32) > v0)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_25_24();
  if (v64 <= v0)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_43_16();
  if (v73 != v74)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19_34(v65, v66, v67, v68, v69, v70, v71, v72, v140);
  v76 = OUTLINED_FUNCTION_2_126(v75);
  OUTLINED_FUNCTION_86_7(v77, v78, v79, v80, v81, v82, v83, v84, v76, v85, v86, v141, v149, time2.value, *&time2.timescale, time2.epoch, v154, time1.value, *&time1.timescale, time1.epoch, v156, *(&v156 + 1), v157, v87, v88, v89);
  v158 = time1;
  if ((OUTLINED_FUNCTION_34_20(time1.epoch, *&time1.value, v142, v150, *&time2.value, time2.epoch, v154, *&time1.value, time1.epoch) & 0x80000000) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_351();
  v90 = OUTLINED_FUNCTION_177();
  EditIndexStartingAtTimeInTrackSplitEditIfNecessary = compositionTable_findEditIndexStartingAtTimeInTrackSplitEditIfNecessary(v90, v91);
  if (EditIndexStartingAtTimeInTrackSplitEditIfNecessary < 0)
  {
    return 4294954516;
  }

  v93 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary;
  OUTLINED_FUNCTION_60_12();
  if (v73 == v74)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_76_11(v94, v95, v96, v97, v98, v99, v100, v101, v143, v151, time2.value, *&time2.timescale, time2.epoch, v154, time1.value, *&time1.timescale, time1.epoch, v156);
  time2 = v158;
  v102 = CMTimeCompare(&time1, &time2);
  if ((v102 & 0x80000000) != 0)
  {
    OUTLINED_FUNCTION_76_11(v102, v103, v104, v105, v106, v107, v108, v109, v144, v152, time2.value, *&time2.timescale, time2.epoch, v154, time1.value, *&time1.timescale, time1.epoch, v156);
    v111 = OUTLINED_FUNCTION_177();
    if (compositionTable_findEditIndexStartingAtTimeInTrackSplitEditIfNecessary(v111, v112) < 0)
    {
      return 4294954516;
    }

    OUTLINED_FUNCTION_60_12();
    if (v73 == v74)
    {
      return 4294954516;
    }
  }

  v113 = OUTLINED_FUNCTION_177();
  v115 = compositionTable_deleteEditsFromTrack(v113, v114);
  if (v115)
  {
    return v115;
  }

  OUTLINED_FUNCTION_351();
  v116 = OUTLINED_FUNCTION_627();
  compositionTableTrack_updateTrackStartTimes(v116, v117, v118);
  if (v93)
  {
    v119 = *(v0 + 8);
    if (v93 >= v119)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_50_12();
    if (OUTLINED_FUNCTION_57_11(v122, v120 + v93 * v121))
    {
      v132 = OUTLINED_FUNCTION_177();
      v115 = compositionTable_deleteEditsFromTrack(v132, v133);
      if (v115)
      {
        return v115;
      }
    }
  }

  v119 = *(v0 + 8);
LABEL_22:
  if (v119 < 1 || (*(*(v0 + 16) + 108 * v119 - 96) & 0x1D) == 1)
  {
    v110 = 0;
  }

  else
  {
    v130 = OUTLINED_FUNCTION_177();
    v110 = compositionTable_deleteEditsFromTrack(v130, v131);
    v119 = *(v0 + 8);
  }

  if (v93 >= v119)
  {
    v123 = v119 - 1;
  }

  else
  {
    v123 = v93;
  }

  if (v93)
  {
    v124 = v93 - 1;
  }

  else
  {
    v124 = 0;
  }

  if (v123 >= v124)
  {
    v126 = OUTLINED_FUNCTION_177();
    compositionTable_deleteEditsWithZeroDuration(v126, v127, v128, v129);
  }

  return v110;
}

uint64_t compositionTable_scaleTrackSegment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, __int128 *a5)
{
  OUTLINED_FUNCTION_36_20();
  *(&v211 + 1) = 0;
  v213 = **&MEMORY[0x1E6960CC0];
  v14 = OUTLINED_FUNCTION_56_14(v10, v11, v12, v13);
  v23 = OUTLINED_FUNCTION_32_20(v15, v16, v17, v18, v19, v20, v21, v22, v213.value, *&v213.timescale, v14.n128_i64[0], v14.n128_i64[1], *(v18 + 16), 0, 0, 0, v213.value, *&v213.timescale, v213.epoch, v214, time.start.value);
  CMTimeAdd(v25, v23, v24);
  OUTLINED_FUNCTION_5_88();
  Seconds = CMTimeGetSeconds(&time.start);
  OUTLINED_FUNCTION_26_25();
  v27 = CMTimeGetSeconds(&time.start);
  OUTLINED_FUNCTION_26_25();
  OUTLINED_FUNCTION_78_7();
  v36 = OUTLINED_FUNCTION_32_20(v28, v29, v30, v31, v32, v33, v34, v35, v190, v202, v210.value, *&v210.timescale, v210.epoch, v211, *(&v211 + 1), v212, v213.value, *&v213.timescale, v213.epoch, v214, time.start.value);
  result = CMTimeCompare(v36, v37);
  if (result)
  {
    OUTLINED_FUNCTION_26_25();
    OUTLINED_FUNCTION_18_30(v39, v40, v41, v42, v43, v44, v45, v46, v191);
    v55 = OUTLINED_FUNCTION_32_20(v47, v48, v49, v50, v51, v52, v53, v54, v192, v203, v210.value, *&v210.timescale, v210.epoch, v211, *(&v211 + 1), v212, v213.value, *&v213.timescale, v213.epoch, v214, time.start.value);
    if (CMTimeCompare(v55, v56) < 1)
    {
      return 4294954516;
    }

    OUTLINED_FUNCTION_5_88();
    OUTLINED_FUNCTION_18_30(v57, v58, v59, v60, v61, v62, v63, v64, v193);
    v73 = OUTLINED_FUNCTION_32_20(v65, v66, v67, v68, v69, v70, v71, v72, v194, v204, v210.value, *&v210.timescale, v210.epoch, v211, *(&v211 + 1), v212, v213.value, *&v213.timescale, v213.epoch, v214, time.start.value);
    if (CMTimeCompare(v73, v74) < 1)
    {
      return 4294954516;
    }

    OUTLINED_FUNCTION_3_51();
    OUTLINED_FUNCTION_18_30(v75, v76, v77, v78, v79, v80, v81, v82, v195);
    v91 = OUTLINED_FUNCTION_32_20(v83, v84, v85, v86, v87, v88, v89, v90, v196, v205, v210.value, *&v210.timescale, v210.epoch, v211, *(&v211 + 1), v212, v213.value, *&v213.timescale, v213.epoch, v214, time.start.value);
    if (CMTimeCompare(v91, v92) < 0)
    {
      return 4294954516;
    }

    if (*(v6 + 32) > v5)
    {
      return 4294954516;
    }

    OUTLINED_FUNCTION_25_24();
    if (v93 <= v5)
    {
      return 4294954516;
    }

    OUTLINED_FUNCTION_43_16();
    if (v102 != v103)
    {
      return 4294954516;
    }

    OUTLINED_FUNCTION_18_30(v94, v95, v96, v97, v98, v99, v100, v101, v197);
    v105 = OUTLINED_FUNCTION_2_126(v104);
    *&time.start.epoch = v106;
    *&time.duration.timescale = v107;
    *&time.start.value = v105;
    End = CMTimeRangeGetEnd(&v210, &time);
    v213 = v210;
    *&time.start.value = *v7;
    time.start.epoch = *(v7 + 16);
    v116 = OUTLINED_FUNCTION_32_20(End, v109, v110, v111, v112, v113, v114, v115, v198, v206, v210.value, *&v210.timescale, v210.epoch, v211, *(&v211 + 1), v212, v210.value, *&v210.timescale, v210.epoch, v214, time.start.value);
    if ((CMTimeCompare(v116, v117) & 0x80000000) == 0)
    {
      return 0;
    }

    OUTLINED_FUNCTION_3_51();
    v118 = OUTLINED_FUNCTION_177();
    EditIndexStartingAtTimeInTrackSplitEditIfNecessary = compositionTable_findEditIndexStartingAtTimeInTrackSplitEditIfNecessary(v118, v119);
    if (EditIndexStartingAtTimeInTrackSplitEditIfNecessary < 0)
    {
      return 4294954516;
    }

    v121 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary;
    OUTLINED_FUNCTION_60_12();
    if (v102 == v103)
    {
      return 4294954516;
    }

    OUTLINED_FUNCTION_72_8(v122, v123, v124, v125, v126, v127, v128, v129, v199, v207, v210.value, *&v210.timescale, v210.epoch, v211);
    v138 = OUTLINED_FUNCTION_32_20(v130, v131, v132, v133, v134, v135, v136, v137, v200, v208, v213.value, *&v213.timescale, v213.epoch, v211, *(&v211 + 1), v212, v213.value, *&v213.timescale, v213.epoch, v214, time.start.value);
    v140 = CMTimeCompare(v138, v139);
    if ((v140 & 0x80000000) != 0)
    {
      OUTLINED_FUNCTION_72_8(v140, v141, v142, v143, v144, v145, v146, v147, v201, v209, v210.value, *&v210.timescale, v210.epoch, v211);
      v149 = OUTLINED_FUNCTION_177();
      v151 = compositionTable_findEditIndexStartingAtTimeInTrackSplitEditIfNecessary(v149, v150);
      if (v151 < 0)
      {
        return 4294954516;
      }

      v148 = v151;
      OUTLINED_FUNCTION_60_12();
      if (v102 == v103)
      {
        return 4294954516;
      }
    }

    else
    {
      v148 = *(v5 + 8);
    }

    if (v121 != v148 - 1 || (OUTLINED_FUNCTION_50_12(), v154 = v152 + v121 * v153, v155 = *(v154 + 72), time.start.epoch = *(v154 + 88), *&time.start.value = v155, v164 = OUTLINED_FUNCTION_32_20(v156, v157, v158, v159, v160, v161, v162, v163, v201, v209, *a4, a4[1], a4[2], v211, *(&v211 + 1), v212, v213.value, *&v213.timescale, v213.epoch, v214, v155), CMTimeCompare(v164, v165)))
    {
      v170 = v148 - v121;
      if (v148 > v121)
      {
        v171 = 108 * v121 + 72;
        v172 = Seconds / v27;
        do
        {
          v173 = *(v5 + 16) + v171;
          v174 = *v173;
          v210.epoch = *(v173 + 16);
          *&v210.value = v174;
          CMTimeMultiplyByFloat64(&time.start, &v210, v172);
          v175 = *&time.start.value;
          *(v173 + 16) = time.start.epoch;
          *v173 = v175;
          v171 += 108;
          --v170;
        }

        while (v170);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_12();
      v168 = v166 + v121 * v167;
      v169 = *a5;
      *(v168 + 88) = *(a5 + 2);
      *(v168 + 72) = v169;
    }

    OUTLINED_FUNCTION_3_51();
    compositionTableTrack_updateTrackStartTimes(v5, v121, &time.start.value);
    if (!v121 || v121 >= *(v5 + 8) || (OUTLINED_FUNCTION_50_12(), !OUTLINED_FUNCTION_57_11(v178, v176 + v121 * v177)) || (v179 = OUTLINED_FUNCTION_177(), result = compositionTable_deleteEditsFromTrack(v179, v180), --v148, !result))
    {
      if (v148 < 1 || v148 >= *(v5 + 8) || (OUTLINED_FUNCTION_50_12(), !OUTLINED_FUNCTION_57_11(v183, v181 + v148 * v182)) || (v184 = OUTLINED_FUNCTION_177(), result = compositionTable_deleteEditsFromTrack(v184, v185), !result))
      {
        v186 = OUTLINED_FUNCTION_177();
        compositionTable_deleteEditsWithZeroDuration(v186, v187, v188, v189);
        return 0;
      }
    }
  }

  return result;
}

uint64_t compositionTable_copyAssetSegmentsFromTrackForTimeRange(uint64_t a1, unint64_t a2, CMTime *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v255 = **&MEMORY[0x1E6960C70];
  epoch = v255.epoch;
  v253 = 0uLL;
  v254 = 0;
  *&range.start.value = *&a3->value;
  range.start.epoch = a3->epoch;
  v15 = OUTLINED_FUNCTION_22_26(a1, a2, a3, a4, a5, a6, a7, a8, v188, v198, v255.value, *&v255.timescale, v225, v234, *a4, a4[1], a4[2], toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v244, dur.value, *&dur.timescale, dur.epoch, v246, v247.value, *&v247.timescale, v247.epoch, v248, time2.value, *&time2.timescale, time2.epoch, v250, range.start.value);
  CMTimeAdd(v17, v15, v16);
  *&v252.value = v208;
  v252.epoch = v255.epoch;
  OUTLINED_FUNCTION_29();
  if (!v18 || (OUTLINED_FUNCTION_7_65(), *&toRange.start.value = *MEMORY[0x1E6960CC0], v19 = *(MEMORY[0x1E6960CC0] + 16), v28 = OUTLINED_FUNCTION_22_26(v20, v21, v22, v23, v24, v25, v26, v27, v189, v199, v208, *(&v208 + 1), toRange.start.value, *&toRange.start.timescale, toRange.start.value, *&toRange.start.timescale, v19, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v244, dur.value, *&dur.timescale, dur.epoch, v246, v247.value, *&v247.timescale, v247.epoch, v248, time2.value, *&time2.timescale, time2.epoch, v250, range.start.value), CMTimeCompare(v28, v29) < 0) || (OUTLINED_FUNCTION_29(), !v18) || (*&range.start.value = *a4, range.start.epoch = a4[2], v38 = OUTLINED_FUNCTION_22_26(v30, v31, v32, v33, v34, v35, v36, v37, v190, v200, v209, v217, v226, v235, v226, v235, v19, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v244, dur.value, *&dur.timescale, dur.epoch, v246, v247.value, *&v247.timescale, v247.epoch, v248, time2.value, *&time2.timescale, time2.epoch, v250, range.start.value), CMTimeCompare(v38, v39) < 1) || *(a1 + 32) > a2 || (OUTLINED_FUNCTION_25_24(), v40 <= a2))
  {
    v71 = 0;
    v186 = 4294954516;
    goto LABEL_29;
  }

  if (*(a2 + 8) >= 1)
  {
    *&v227 = v8;
    OUTLINED_FUNCTION_7_65();
    EditSegmentByTime = compositionTableTrack_findEditSegmentByTime(a2, &range);
    OUTLINED_FUNCTION_28_23();
    v42 = compositionTableTrack_findEditSegmentByTime(a2, &range);
    v43 = OUTLINED_FUNCTION_64_11((*(a2 + 16) + 108 * EditSegmentByTime));
    *&range.start.epoch = v44;
    *&range.duration.timescale = v45;
    *&range.start.value = v43;
    CMTimeRangeGetEnd(&v255, &range);
    v46 = OUTLINED_FUNCTION_64_11((*(a2 + 16) + 108 * v42));
    *&range.start.epoch = v47;
    *&range.duration.timescale = v48;
    *&range.start.value = v46;
    CMTimeRangeGetEnd(&v252, &range);
    OUTLINED_FUNCTION_7_65();
    v57 = OUTLINED_FUNCTION_22_26(v49, v50, v51, v52, v53, v54, v55, v56, v191, v9, v210, v218, v227, *(&v227 + 1), v255.value, *&v255.timescale, v255.epoch, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v244, dur.value, *&dur.timescale, dur.epoch, v246, v247.value, *&v247.timescale, v247.epoch, v248, time2.value, *&time2.timescale, time2.epoch, v250, range.start.value);
    v59 = v42 - EditSegmentByTime;
    if (CMTimeCompare(v57, v58) < 0)
    {
      v60 = v59 + 1;
    }

    else
    {
      v60 = 0;
    }

    OUTLINED_FUNCTION_28_23();
    OUTLINED_FUNCTION_27_21();
    v69 = OUTLINED_FUNCTION_22_26(v61, v62, v63, v64, v65, v66, v67, v68, v192, v202, v211, v219, v228, v236, toRange.start.value, *&toRange.start.timescale, toRange.start.epoch, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v244, dur.value, *&dur.timescale, dur.epoch, v246, v247.value, *&v247.timescale, v247.epoch, v248, time2.value, *&time2.timescale, time2.epoch, v250, range.start.value);
    if (CMTimeCompare(v69, v70) <= 0)
    {
      v71 = v60;
    }

    else
    {
      v71 = v60 + 1;
    }

    if (v71 > 0)
    {
      OUTLINED_FUNCTION_11_50();
      v73 = malloc_type_calloc(v71, 0x6CuLL, v72);
      if (v73)
      {
        v74 = v73;
        if (v60 < 1)
        {
          v75 = v60;
          v9 = v201;
          v8 = v227;
        }

        else
        {
          v75 = v59 + 1;
          compositionEditSegment_copySegmentsAndAddURLsToBag(v73, (*(a2 + 16) + 108 * EditSegmentByTime), v60, 0);
          OUTLINED_FUNCTION_7_65();
          v84 = OUTLINED_FUNCTION_22_26(v76, v77, v78, v79, v80, v81, v82, v83, v191, v201, v210, v218, v227, *(&v227 + 1), *(v74 + 6), *(v74 + 7), *(v74 + 8), toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v244, dur.value, *&dur.timescale, dur.epoch, v246, v247.value, *&v247.timescale, v247.epoch, v248, time2.value, *&time2.timescale, time2.epoch, v250, range.start.value);
          if (CMTimeCompare(v84, v85) >= 1)
          {
            OUTLINED_FUNCTION_7_65();
            v94 = OUTLINED_FUNCTION_22_26(v86, v87, v88, v89, v90, v91, v92, v93, v193, v203, v212, v220, v229, v237, *(v74 + 6), *(v74 + 7), *(v74 + 8), toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v244, v212, v220, epoch, v246, v212, v220, epoch, v248, v212, v220, epoch, v250, range.start.value);
            CMTimeSubtract(v96, v94, v95);
            OUTLINED_FUNCTION_3_51();
            v97 = *(v74 + 4);
            *&range.start.value = *(v74 + 3);
            *&range.start.epoch = v97;
            *&range.duration.timescale = *(v74 + 5);
            v98 = *v74;
            v99 = *(v74 + 2);
            *&toRange.start.epoch = *(v74 + 1);
            *&toRange.duration.timescale = v99;
            *&toRange.start.value = v98;
            CMTimeMapTimeFromRangeToRange(&dur, &rhs, &range, &toRange);
            range.start = dur;
            OUTLINED_FUNCTION_62_12();
            v108 = OUTLINED_FUNCTION_22_26(v100, v101, v102, v103, v104, v105, v106, v107, v194, v204, v213, v221, v230, v238, toRange.start.value, *&toRange.start.timescale, toRange.start.epoch, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v244, dur.value, *&dur.timescale, dur.epoch, v246, v247.value, *&v247.timescale, v247.epoch, v248, time2.value, *&time2.timescale, time2.epoch, v250, range.start.value);
            v111 = CMTimeSubtract(v110, v108, v109);
            v112 = *&a3->value;
            *(v74 + 8) = a3->epoch;
            *(v74 + 3) = v112;
            *&toRange.start.value = *(v74 + 72);
            toRange.start.epoch = *(v74 + 11);
            rhs = time2;
            v120 = OUTLINED_FUNCTION_73_8(v111, v113, v114, v115, v116, v117, v118, v119, v195, v205, v214, v222, v231, v239, toRange.start.value);
            v122 = CMTimeSubtract(v121, v120, &rhs);
            *(v74 + 72) = *&range.start.value;
            *(v74 + 11) = range.start.epoch;
            v123 = *&dur.value;
            *(v74 + 2) = dur.epoch;
            *v74 = v123;
            *&toRange.start.value = *(v74 + 24);
            toRange.start.epoch = *(v74 + 5);
            rhs = v247;
            v131 = OUTLINED_FUNCTION_73_8(v122, v124, v125, v126, v127, v128, v129, v130, v196, v206, v215, v223, v232, v240, toRange.start.value);
            CMTimeSubtract(v132, v131, &rhs);
            *(v74 + 24) = *&range.start.value;
            *(v74 + 5) = range.start.epoch;
          }

          OUTLINED_FUNCTION_28_23();
          OUTLINED_FUNCTION_27_21();
          v141 = OUTLINED_FUNCTION_22_26(v133, v134, v135, v136, v137, v138, v139, v140, v193, v203, v212, v220, v229, v237, toRange.start.value, *&toRange.start.timescale, toRange.start.epoch, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v244, dur.value, *&dur.timescale, dur.epoch, v246, v247.value, *&v247.timescale, v247.epoch, v248, time2.value, *&time2.timescale, time2.epoch, v250, range.start.value);
          v9 = v201;
          v8 = v227;
          if (CMTimeCompare(v141, v142) < 0)
          {
            memset(&time2, 0, sizeof(time2));
            v143 = &v74[108 * v60];
            OUTLINED_FUNCTION_28_23();
            OUTLINED_FUNCTION_62_12();
            v152 = OUTLINED_FUNCTION_22_26(v144, v145, v146, v147, v148, v149, v150, v151, v191, v201, v210, v218, v227, *(&v227 + 1), toRange.start.value, *&toRange.start.timescale, toRange.start.epoch, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v244, dur.value, *&dur.timescale, dur.epoch, v246, v247.value, *&v247.timescale, v247.epoch, v248, time2.value, *&time2.timescale, time2.epoch, v250, range.start.value);
            CMTimeSubtract(v154, v152, v153);
            memset(&v247, 0, sizeof(v247));
            dur = time2;
            v155 = *(v143 - 60);
            v156 = *(v143 - 28);
            *&range.start.epoch = *(v143 - 44);
            *&range.duration.timescale = v156;
            *&range.start.value = v155;
            v157 = *(v143 - 108);
            v158 = *(v143 - 76);
            *&toRange.start.epoch = *(v143 - 92);
            *&toRange.duration.timescale = v158;
            *&toRange.start.value = v157;
            CMTimeMapDurationFromRangeToRange(&v247, &dur, &range, &toRange);
            v159 = *&time2.value;
            *(v143 - 20) = time2.epoch;
            *(v143 - 36) = v159;
            v160 = *&v247.value;
            *(v143 - 68) = v247.epoch;
            *(v143 - 84) = v160;
          }
        }

        if (v71 <= v75)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

LABEL_31:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    v186 = FigSignalErrorAtGM();
    goto LABEL_29;
  }

  *&v252.value = v227;
  v252.epoch = v19;
  v71 = 1;
  OUTLINED_FUNCTION_11_50();
  v74 = malloc_type_calloc(1uLL, 0x6CuLL, v161);
  if (!v74)
  {
    goto LABEL_31;
  }

LABEL_27:
  v162 = &v74[108 * v71];
  OUTLINED_FUNCTION_27_21();
  time2 = *a3;
  v171 = OUTLINED_FUNCTION_73_8(v163, v164, v165, v166, v167, v168, v169, v170, v191, v201, v210, v218, v227, *(&v227 + 1), toRange.start.value);
  v173 = CMTimeMaximum(v172, v171, &time2);
  v174 = *&range.start.value;
  *(v162 - 44) = range.start.epoch;
  *(v162 - 60) = v174;
  *&toRange.start.value = v253;
  toRange.start.epoch = v254;
  v175 = *(v162 - 60);
  time2.epoch = *(v162 - 44);
  *&time2.value = v175;
  v183 = OUTLINED_FUNCTION_73_8(v173, v176, v177, v178, v179, v180, v181, v182, v197, v207, v216, v224, v233, v241, v253);
  CMTimeSubtract(v184, v183, &time2);
  v185 = *&range.start.value;
  *(v162 - 20) = range.start.epoch;
  *(v162 - 36) = v185;
LABEL_28:
  v186 = 0;
  *v8 = v71;
  *v9 = v74;
  v71 = 0;
LABEL_29:
  compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(0, v71, 0);
  return v186;
}

uint64_t compositionTable_createAvailableMetadataReaderPropertiesArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void mutableComposition_DeleteTrack_cold_1(CFDictionaryRef *a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  Count = CFDictionaryGetCount(*a1);
  keys = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  if (!keys)
  {
    v10 = 0;
    if (!Mutable)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v10 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  v23 = v10;
  if (v10)
  {
    v21 = a1;
    CFDictionaryGetKeysAndValues(*a1, keys, v10);
    if (Count <= 0)
    {
LABEL_20:
      if (!CFDictionaryGetCount(Mutable))
      {
        goto LABEL_26;
      }

      v14 = *v21;
      *v21 = Mutable;
      if (Mutable)
      {
        CFRetain(Mutable);
      }
    }

    else
    {
      v11 = 0;
      v22 = Count;
      while (1)
      {
        v12 = keys[v11];
        v13 = v10[v11];
        v14 = CFArrayCreateMutable(v24, 0, MEMORY[0x1E695E9C0]);
        v15 = CFArrayGetCount(v13);
        if (v15 > 0)
        {
          break;
        }

LABEL_17:
        if (v14)
        {
          CFRelease(v14);
        }

        ++v11;
        v10 = v23;
        if (v11 == v22)
        {
          goto LABEL_20;
        }
      }

      v16 = v15;
      v17 = 0;
      while (1)
      {
        *a3 = 0;
        *a2 = 0;
        if (!FigCFArrayGetInt32AtIndex())
        {
          break;
        }

        v18 = v17 + 1;
        if (!FigCFArrayGetInt32AtIndex())
        {
          break;
        }

        v19 = *(a4 + 4);
        if (v19 != *a3 && v19 != *a2)
        {
          FigCFArrayAppendInt32();
          FigCFArrayAppendInt32();
          if (v14)
          {
            if (CFArrayGetCount(v14))
            {
              CFDictionarySetValue(Mutable, v12, v14);
            }
          }
        }

        v17 = v18 + 1;
        if (v17 >= v16)
        {
          goto LABEL_17;
        }
      }

      v10 = v23;
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

LABEL_26:
  if (Mutable)
  {
LABEL_27:
    CFRelease(Mutable);
  }

LABEL_28:
  free(keys);
  free(v10);
}

uint64_t mutableComposition_SetTrackProperty_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t mutableComposition_SetTrackProperty_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t mutableComposition_SetTrackProperty_cold_3(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t composite_trackReader_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t composite_trackReader_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t composite_trackReader_CopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void composite_trackReader_CopyProperty_cold_4(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  OUTLINED_FUNCTION_207();
  v9 = *(v8 + 96);
  if (v9)
  {
    CFArrayAppendValue(v5, v9);
  }

  if (*a4)
  {
    CFArrayAppendValue(v5, *a4);
  }

  v10 = *(v6 + 88);
  if (v10)
  {
    CFArrayAppendValue(v5, v10);
  }

  *v4 = v5;
}

void composite_trackReader_CopyProperty_cold_5()
{
  OUTLINED_FUNCTION_12_45();
  OUTLINED_FUNCTION_48_16();
  if (!(v3 ^ v4 | v2))
  {
    OUTLINED_FUNCTION_53_16();
    v7 = (v6 + 120);
    while (*(v7 - 29) != v5)
    {
      OUTLINED_FUNCTION_44_19();
      if (v2)
      {
        goto LABEL_9;
      }
    }

    if (*v7)
    {
      *v1 = CFRetain(*v7);
    }
  }

LABEL_9:
  *v0 = 0;
}

void composite_trackReader_CopyProperty_cold_6()
{
  OUTLINED_FUNCTION_12_45();
  OUTLINED_FUNCTION_48_16();
  if (!(v3 ^ v4 | v2))
  {
    OUTLINED_FUNCTION_53_16();
    v7 = (v6 + 128);
    while (*(v7 - 31) != v5)
    {
      OUTLINED_FUNCTION_44_19();
      if (v2)
      {
        goto LABEL_9;
      }
    }

    if (*v7)
    {
      *v1 = CFRetain(*v7);
    }
  }

LABEL_9:
  *v0 = 0;
}

void composite_trackReader_CopyProperty_cold_7()
{
  OUTLINED_FUNCTION_12_45();
  OUTLINED_FUNCTION_48_16();
  if (!(v3 ^ v4 | v2))
  {
    OUTLINED_FUNCTION_53_16();
    v7 = (v6 + 136);
    while (*(v7 - 33) != v5)
    {
      OUTLINED_FUNCTION_44_19();
      if (v2)
      {
        goto LABEL_9;
      }
    }

    if (*v7)
    {
      *v1 = CFRetain(*v7);
    }
  }

LABEL_9:
  *v0 = 0;
}

void composite_trackReader_CopyProperty_cold_8()
{
  OUTLINED_FUNCTION_12_45();
  OUTLINED_FUNCTION_48_16();
  if (!(v3 ^ v4 | v2))
  {
    OUTLINED_FUNCTION_53_16();
    v7 = (v6 + 144);
    while (*(v7 - 35) != v5)
    {
      OUTLINED_FUNCTION_44_19();
      if (v2)
      {
        goto LABEL_9;
      }
    }

    if (*v7)
    {
      *v1 = CFRetain(*v7);
    }
  }

LABEL_9:
  *v0 = 0;
}

void composite_trackReader_CopyProperty_cold_9()
{
  OUTLINED_FUNCTION_12_45();
  OUTLINED_FUNCTION_48_16();
  if (!(v3 ^ v4 | v2))
  {
    OUTLINED_FUNCTION_53_16();
    v7 = (v6 + 152);
    while (*(v7 - 37) != v5)
    {
      OUTLINED_FUNCTION_44_19();
      if (v2)
      {
        goto LABEL_9;
      }
    }

    if (*v7)
    {
      *v1 = CFRetain(*v7);
    }
  }

LABEL_9:
  *v0 = 0;
}

uint64_t compositionTableTrack_createAvailableMetadataReaderPropertiesArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t compositeProxy_sampleCursor_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t compositeProxy_sampleCursor_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void mutableComposition_CreateReconstitutedMetadataProperty_cold_1(uint64_t a1, const void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM();

  CFRelease(a2);
}

uint64_t mutableComposition_CreateReconstitutedMetadataProperty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t compositionTableTrack_setFormatDescriptionReplacementTable_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t compositionTableTrack_setFormatDescriptionReplacementTable_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t compositionTableTrack_setFormatDescriptionReplacementTable_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t compositionTableTrack_setFormatDescriptionReplacementTable_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCreateConverter_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCreateConverter_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPartialSampleTableBrokerOfferNewPartialSampleTable(uint64_t a1, const void *a2)
{
  v18 = *(MEMORY[0x1E6960C98] + 16);
  v19 = *MEMORY[0x1E6960C98];
  v25 = *MEMORY[0x1E6960C98];
  v26 = v18;
  v17 = *(MEMORY[0x1E6960C98] + 32);
  v4 = OUTLINED_FUNCTION_2_127(v17);
  if (v4)
  {
    return v4;
  }

  FigSimpleMutexLock();
  for (i = 0; ; ++i)
  {
    while (1)
    {
      Count = *(a1 + 24);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        v8 = 0;
LABEL_13:
        v10 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        CFArrayInsertValueAtIndex(*(a1 + 24), i, v10);
        if (v10)
        {
          CFRelease(v10);
        }

        FigSimpleMutexUnlock();
        if (v8)
        {
          CFRelease(v8);
        }

        goto LABEL_17;
      }

      CFArrayGetValueAtIndex(*(a1 + 24), i);
      v7 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v7)
      {
        break;
      }

      CFArrayRemoveValueAtIndex(*(a1 + 24), i);
    }

    v8 = v7;
    v22 = v19;
    v23 = v18;
    v24 = v17;
    if (v7 == a2)
    {
      break;
    }

    DecodeTimeRange = FigPartialSampleTableGetDecodeTimeRange(v7, &v22, 0);
    if (DecodeTimeRange)
    {
      goto LABEL_31;
    }

    *&time1.value = v22;
    time1.epoch = v23;
    *&time2.value = v25;
    time2.epoch = v26;
    if (CMTimeCompare(&time1, &time2) > 0)
    {
      goto LABEL_13;
    }

    CFRelease(v8);
  }

  fig_log_get_emitter();
  DecodeTimeRange = FigSignalErrorAtGM();
LABEL_31:
  v11 = DecodeTimeRange;
  FigSimpleMutexUnlock();
  CFRelease(v8);
  if (v11)
  {
    return v11;
  }

LABEL_17:
  v25 = v19;
  v26 = v18;
  v11 = OUTLINED_FUNCTION_2_127(v17);
  if (!v11)
  {
    FigSimpleMutexLock();
    v12 = 0;
    while (1)
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        v13 = CFArrayGetCount(v13);
      }

      if (v12 >= v13)
      {
        break;
      }

      CFArrayGetValueAtIndex(*(a1 + 32), v12);
      v14 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v14)
      {
        v15 = v14;
        v22 = v25;
        v23 = v26;
        v24 = v27;
        if (pstBroker_tableTimeRangeIsRelevantToInterestToken(&v22, v14))
        {
          CFArrayAppendValue(v15[9], a2);
        }

        CFRelease(v15);
        ++v12;
      }

      else
      {
        CFArrayRemoveValueAtIndex(*(a1 + 32), v12);
      }
    }

    FigSimpleMutexUnlock();
  }

  return v11;
}

uint64_t FigPartialSampleTableBrokerCopyInterestTokenForAdjacentTables(CFMutableArrayRef *a1, uint64_t a2, __CFArray **a3)
{
  v21 = 0;
  v6 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v6, 2, MEMORY[0x1E695E9C0]);
  v8 = *(MEMORY[0x1E6960C98] + 16);
  *&v20.start.value = *MEMORY[0x1E6960C98];
  *&v20.start.epoch = v8;
  *&v20.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  start = **&MEMORY[0x1E6960C70];
  if (!a3)
  {
    fig_log_get_emitter();
    DecodeTimeRange = FigSignalErrorAtGM();
LABEL_24:
    v15 = DecodeTimeRange;
    goto LABEL_17;
  }

  DecodeTimeRange = FigPartialSampleTableGetDecodeTimeRange(a2, &v20, &start);
  if (DecodeTimeRange)
  {
    goto LABEL_24;
  }

  CMTimeMake(&v17.start, 2, 1);
  start = v17.start;
  v10 = CFGetAllocator(a1);
  v17 = v20;
  CMTimeRangeGetEnd(&v18, &v17);
  v17.start = start;
  DecodeTimeRange = FigPartialSampleTableBrokerInterestTokenCreate(v10, &v18.value, &v17.start.value, 1, &v21);
  if (DecodeTimeRange)
  {
    goto LABEL_24;
  }

  FigSimpleMutexLock();
  v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  CFArrayAppendValue(a1[4], v11);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = pstBroker_associateRelevantTablesWithNewInterestToken(a1, v21);
  if (v12)
  {
    goto LABEL_22;
  }

  CFArrayAppendValue(Mutable, v21);
  if (v21)
  {
    CFRelease(v21);
    v21 = 0;
  }

  v13 = CFGetAllocator(a1);
  *&v17.start.value = *&v20.start.value;
  v17.start.epoch = v20.start.epoch;
  v18 = start;
  v12 = FigPartialSampleTableBrokerInterestTokenCreate(v13, &v17.start.value, &v18.value, -1, &v21);
  if (v12)
  {
    goto LABEL_22;
  }

  v14 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  CFArrayAppendValue(a1[4], v14);
  if (v14)
  {
    CFRelease(v14);
  }

  v12 = pstBroker_associateRelevantTablesWithNewInterestToken(a1, v21);
  if (v12)
  {
LABEL_22:
    v15 = v12;
  }

  else
  {
    CFArrayAppendValue(Mutable, v21);
    if (v21)
    {
      CFRelease(v21);
      v21 = 0;
    }

    v15 = 0;
    *a3 = Mutable;
    Mutable = 0;
  }

  FigSimpleMutexUnlock();
LABEL_17:
  if (v21)
  {
    CFRelease(v21);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v15;
}

void FigPartialSampleTableBrokerCreate_cold_2(uint64_t a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a3 = FigSignalErrorAtGM();

  CFRelease(a2);
}

uint64_t FigPartialSampleTableBrokerCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPartialSampleTableBrokerCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPartialSampleTableBrokerFindAndRetainPartialSampleTableCoveringDecodeTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPartialSampleTableBrokerFindAndRetainPartialSampleTableCoveringDecodeTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPartialSampleTableBrokerFindAndRetainPartialSampleTableCoveringDecodeTime_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigPartialSampleTableBrokerInterestTokenCreate_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t FigPartialSampleTableBrokerInterestTokenCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPartialSampleTableBrokerInterestTokenCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataConverterCreateForQuickTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataConverterCreateForQuickTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t qtiso_FigMetadataConverterCreateConvertedItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t qtiso_FigMetadataConverterCreateConvertedItem_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t qtiso_FigMetadataConverterCreateConvertedItem_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t qtiso_FigMetadataConverterCreateConvertedItem_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t qtiso_FigMetadataConverterCreateConvertedItem_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataCreateSampleBuffer(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CMFormatDescriptionRef desc, const CMSampleTimingInfo *a5, CMSampleBufferRef *a6)
{
  blockBufferOut = 0;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  sampleSizeArray = 0;
  if (CMFormatDescriptionGetMediaSubType(desc) == 1835360888)
  {
    appended = CMBlockBufferCreateEmpty(a1, 8u, 0, &blockBufferOut);
    if (!appended)
    {
      appended = FigAtomWriterInitWithBlockBuffer();
      if (!appended)
      {
        if (a2 < 1)
        {
LABEL_10:
          sampleSizeArray = CMBlockBufferGetDataLength(blockBufferOut);
          appended = CMSampleBufferCreate(a1, blockBufferOut, 1u, 0, 0, desc, 1, 1, a5, 1, &sampleSizeArray, a6);
        }

        else
        {
          v13 = (a3 + 4);
          while (1)
          {
            appended = FigAtomWriterBeginAtom();
            if (appended)
            {
              break;
            }

            CFDataGetBytePtr(*v13);
            CFDataGetLength(*v13);
            appended = FigAtomWriterAppendData();
            if (appended)
            {
              break;
            }

            appended = FigAtomWriterEndAtom();
            if (appended)
            {
              break;
            }

            v13 = (v13 + 12);
            if (!--a2)
            {
              goto LABEL_10;
            }
          }
        }
      }
    }
  }

  else
  {
    appended = FigSignalErrorAtGM();
  }

  v14 = appended;
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v14;
}

uint64_t FigCaptionRendererLayoutDecouple_ApplyDecouplingAndSafeRegion(uint64_t a1, uint64_t a2)
{
  v76[0] = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v5 = *(ProtocolVTable + 16)) == 0)
  {
    v52 = 4294954508;
LABEL_45:
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    return v52;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    v52 = 4294954514;
    goto LABEL_45;
  }

  v7 = v6(a1, v76);
  if (v7)
  {
    v52 = v7;
    goto LABEL_45;
  }

  Count = CFArrayGetCount(v76[0]);
  if (!Count)
  {
    return 0;
  }

  v9 = Count;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (!Mutable)
  {
    return 0;
  }

  v11 = Mutable;
  if (v9 >= 1)
  {
    v12 = v9 + 1;
    v13 = MEMORY[0x1E695EFF8];
    v14 = MEMORY[0x1E695F060];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v76[0], v12 - 2);
      v75 = 0;
      FigCaptionRendererBaseProtocolGetProtocolID();
      OUTLINED_FUNCTION_4_102();
      v16 = CMBaseObjectGetProtocolVTable();
      if (!v16 || (v17 = *(v16 + 16)) == 0)
      {
        v52 = 4294954508;
        goto LABEL_51;
      }

      v18 = *(v17 + 8);
      if (!v18)
      {
        v52 = 4294954514;
        goto LABEL_51;
      }

      v19 = v18(ValueAtIndex, &v75);
      if (v19)
      {
        break;
      }

      if (v75 && !strcmp(v75, "FigCaptionRendererCaption"))
      {
        v74 = *v13;
        v73 = *v14;
        FigCaptionRendererNodeProtocolGetProtocolID();
        OUTLINED_FUNCTION_4_102();
        v20 = CMBaseObjectGetProtocolVTable();
        if (v20)
        {
          v21 = *(v20 + 16);
          if (v21)
          {
            v22 = *(v21 + 120);
            if (v22)
            {
              v22(ValueAtIndex, &v73);
            }
          }
        }

        FigCaptionRendererNodeProtocolGetProtocolID();
        OUTLINED_FUNCTION_4_102();
        v23 = CMBaseObjectGetProtocolVTable();
        if (v23)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *(v24 + 136);
            if (v25)
            {
              v25(ValueAtIndex, &v74);
            }
          }
        }

        v67 = v73;
        v69 = v74;
        TextObject = FigCaptionRendererLayoutDecouple_CreateTextObject(ValueAtIndex);
        if (!TextObject)
        {
          goto LABEL_43;
        }

        *TextObject = v69;
        *(TextObject + 1) = v67;
        CFArrayAppendValue(v11, TextObject);
      }

      if (--v12 <= 1)
      {
        goto LABEL_26;
      }
    }

    v52 = v19;
LABEL_51:
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    goto LABEL_52;
  }

LABEL_26:
  v27 = *(MEMORY[0x1E695F050] + 16);
  v71 = *MEMORY[0x1E695F050];
  v72 = v27;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v28 = CMBaseObjectGetProtocolVTable();
  if (v28)
  {
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = *(v29 + 104);
      if (v30)
      {
        v30(a1, &v71);
      }
    }
  }

  v31 = FCRGetOverscanSafeRectForViewport(a2);
  v35 = fcr_applyDecouplingAndSafeRegion(v11, v71.f64[0], v71.f64[1], *&v72, *(&v72 + 1), v31 - v71.f64[0], v32 - v71.f64[1], v33, v34);
  if (*(a2 + 392) < -0.5 || *(a2 + 400) < -0.5)
  {
    FCRGetVideoPresentationBounds(*(a2 + 376), *(a2 + 384), *(a2 + 344), *(a2 + 352), *(a2 + 360), *(a2 + 368));
    v38.f64[0] = v36;
    v38.f64[1] = v37;
    if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vclezq_f64(v38), vclezq_f64(*(a2 + 360))))) & 1) == 0)
    {
      v70 = v71;
      v63 = v36;
      v65 = *(a2 + 344);
      v61 = v37;
      v62 = *(a2 + 360);
      v39 = CFArrayGetCount(v11);
      v40.f64[0] = v63;
      if (v39 >= 1)
      {
        v41 = 0;
        __asm { FMOV            V0.2D, #0.5 }

        v68 = _Q0;
        v40.f64[1] = v61;
        v64 = vdivq_f64(v62, v40);
        v66 = vaddq_f64(vmulq_f64(v62, _Q0), v65);
        do
        {
          v47 = CFArrayGetValueAtIndex(v11, v41);
          v48 = vmulq_f64(v47[1], v68);
          *v47 = vsubq_f64(vsubq_f64(vmlaq_f64(v66, v64, vsubq_f64(vaddq_f64(vaddq_f64(v70, *v47), v48), v66)), v48), v70);
          ++v41;
        }

        while (v41 < CFArrayGetCount(v11));
      }
    }

    if (*(a2 + 392) < -0.5)
    {
      v57 = FCRGetOverscanSafeRectAspectFill(*(a2 + 344), *(a2 + 352), *(a2 + 360), *(a2 + 368));
      fcr_applyDecouplingAndSafeRegion(v11, v71.f64[0], v71.f64[1], *&v72, *(&v72 + 1), v57, v58, v59, v60);
    }

    goto LABEL_38;
  }

  if (v35)
  {
LABEL_38:
    fcr_setNewPositions(v11, 2);
  }

  v49 = *(a2 + 456);
  if (v49 > 0.0)
  {
    v51 = *(a2 + 424);
    v50 = *(a2 + 472);
  }

  else
  {
    v50 = *(a2 + 472);
    v51 = *(a2 + 424);
    if (v50 <= 0.0 && v51 <= 0.0 && *(a2 + 440) <= 0.0)
    {
      goto LABEL_43;
    }
  }

  if (fcr_moveIntoSafeRegion(v11, *(a2 + 344) + v51, *(a2 + 352) + v50, *(a2 + 360) - (v51 + *(a2 + 440)), *(a2 + 368) - (v49 + v50)))
  {
    if (*(a2 + 759))
    {
      v55 = v11;
      if (*(a2 + 761))
      {
        v56 = 2;
      }

      else
      {
        v56 = 0;
      }

      goto LABEL_65;
    }

    if (*(a2 + 761))
    {
      v55 = v11;
      v56 = 1;
LABEL_65:
      fcr_setNewPositions(v55, v56);
    }
  }

LABEL_43:
  v52 = 0;
LABEL_52:
  if (CFArrayGetCount(v11) >= 1)
  {
    do
    {
      v54 = CFArrayGetValueAtIndex(v11, 0);
      CFArrayRemoveValueAtIndex(v11, 0);
      FigCaptionRendererLayoutDecouple_ReleaseTextObject(v54);
    }

    while (CFArrayGetCount(v11) > 0);
  }

  CFRelease(v11);
  return v52;
}

uint64_t fcr_applyDecouplingAndSafeRegion(const __CFArray *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  Count = CFArrayGetCount(a1);
  v18 = Count - 1;
  if (Count < 1 || (v19 = Count, allocator = *MEMORY[0x1E695E480], (Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0)) == 0))
  {
    v123 = 0;
    return v123 & 1;
  }

  v21 = Mutable;
  v125 = a6;
  v126 = a7;
  v127 = a8;
  v128 = a9;
  if (!v18)
  {
    v133 = 0;
    goto LABEL_118;
  }

  v132 = Mutable;
  v133 = 0;
  v129 = v18 * v19;
  v22 = a2;
  v23 = a2 + a4;
  v24 = a3 + a5;
  __asm { FMOV            V0.2D, #-1.0 }

  v137 = _Q0;
  v29 = -1.0;
  v30 = 1.0;
  v130 = a3;
  v134 = v24;
  while (1)
  {
    if (!a1)
    {
      goto LABEL_116;
    }

    if (CFArrayGetCount(a1) >= 1)
    {
      do
      {
        v31 = OUTLINED_FUNCTION_2_128();
        if (v31)
        {
          v32 = v31;
          v33 = v31[4];
          if (v33)
          {
            CFArrayRemoveAllValues(v33);
          }

          *(v32 + 5) = v137;
          *(v32 + 7) = v137;
          v32[22] = 0;
          v32[23] = 0;
          v32[21] = 0;
          *(v32 + 9) = 0u;
          *(v32 + 11) = 0u;
          *(v32 + 13) = 0u;
          *(v32 + 15) = 0u;
          *(v32 + 17) = 0u;
          *(v32 + 19) = 0u;
        }

        OUTLINED_FUNCTION_377_0();
      }

      while (!_ZF);
    }

    v34 = CFArrayGetCount(a1);
    if (v34 <= 1)
    {
      goto LABEL_116;
    }

    v35 = v34;
    v36 = 0;
    v37 = 0;
    v38 = v34 - 2;
    do
    {
      v39 = OUTLINED_FUNCTION_2_128();
      if (v39)
      {
        v40 = v39;
        v41 = v37 + 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v41);
          if (ValueAtIndex)
          {
            v43 = ValueAtIndex;
            memcpy(__dst, v40, 0xD0uLL);
            memcpy(v140, v43, sizeof(v140));
            if (fcr_isOverlap(__dst, v140))
            {
              CFArrayAppendValue(v40[4], v43);
              CFArrayAppendValue(v43[4], v40);
              v36 = 1;
            }
          }

          ++v41;
        }

        while (v35 != v41);
      }

      _ZF = v37++ == v38;
    }

    while (!_ZF);
    if (!v36)
    {
LABEL_116:
      ++v133;
LABEL_117:
      v21 = v132;
      goto LABEL_118;
    }

    v44 = CFArrayGetCount(a1);
    if (v44 >= 1)
    {
      do
      {
        v45 = OUTLINED_FUNCTION_2_128();
        v45[5] = v22;
        v45[6] = v23;
        v45[7] = v24;
        v45[8] = a3;
        OUTLINED_FUNCTION_377_0();
      }

      while (!_ZF);
    }

    MutableCopy = CFArrayCreateMutableCopy(allocator, 0, a1);
    if (MutableCopy)
    {
      v49 = MutableCopy;
      OUTLINED_FUNCTION_3_104(MutableCopy, v47, v48, fcr_objComparatorX);
      v50 = CFArrayGetValueAtIndex(v49, 0);
      v53 = v50;
      v50[5] = v22;
      if (v44 >= 2)
      {
        for (i = 1; i != v44; ++i)
        {
          v50 = CFArrayGetValueAtIndex(v49, i);
          v55 = v50[2] * 0.5;
          v56 = v53[2] * 0.5;
          v53[6] = v56 + *v50 + v55 + v29;
          v50[5] = v56 + *v53 + v30 - v55;
          v53 = v50;
        }
      }

      v50[6] = v23;
      OUTLINED_FUNCTION_3_104(v49, v51, v52, fcr_objComparatorY);
      v57 = CFArrayGetValueAtIndex(v49, 0);
      v58 = v57;
      v57[8] = a3;
      if (v44 >= 2)
      {
        for (j = 1; j != v44; ++j)
        {
          v57 = CFArrayGetValueAtIndex(v49, j);
          v60 = v57[3] * 0.5;
          v61 = v58[3] * 0.5;
          v58[7] = v61 + v57[1] + v60 + v29;
          v57[8] = v61 + v58[1] + v30 - v60;
          v58 = v57;
        }
      }

      v57[7] = v24;
      CFRelease(v49);
    }

    v62 = CFArrayGetCount(a1);
    if (v62 < 1)
    {
      goto LABEL_117;
    }

    v63 = v62;
    v64 = 0;
    v138 = 0;
    v65 = -1;
    v66 = 0.0;
    v136 = v62;
    do
    {
      v67 = CFArrayGetValueAtIndex(a1, v64);
      if (!v67)
      {
        goto LABEL_87;
      }

      v68 = v67;
      if (*(v67 + 48) > 0)
      {
        v138 = 1;
        goto LABEL_87;
      }

      v139 = v65;
      v69 = CFArrayGetCount(v67[4]);
      if (v69 >= 1)
      {
        v70 = v69;
        v71 = 0;
        v72 = *v68 + *(v68 + 2) * 0.5;
        v73 = (v68 + 12);
        v74 = (v68 + 9);
        v75 = *(v68 + 1) + *(v68 + 3) * 0.5;
        v76 = (v68 + 16);
        v77 = (v68 + 19);
        do
        {
          v69 = CFArrayGetValueAtIndex(v68[4], v71);
          v78 = *(v69 + 24);
          v79 = *(v69 + 16) * 0.5;
          v80 = *(v69 + 8);
          v81 = *v69 + v79;
          v82 = *(v68 + 3);
          v83 = v79 + *(v68 + 2) * 0.5 - vabdd_f64(v72, v81);
          if (v72 >= v81)
          {
            v87 = *v73 == 0.0 || v83 < *v73;
            v85 = (v68 + 12);
            v86 = (v68 + 14);
            if (v87)
            {
LABEL_54:
              *v85 = v83;
            }
          }

          else
          {
            _NF = *v74 == 0.0 || v83 < *v74;
            v85 = (v68 + 9);
            v86 = (v68 + 11);
            if (_NF)
            {
              goto LABEL_54;
            }
          }

          v88 = v78 * 0.5;
          v89 = v80 + v88;
          v90 = v88 + v82 * 0.5 - vabdd_f64(v75, v89);
          *v86 = v90 + *v86;
          if (v75 >= v89)
          {
            v94 = *v76 == 0.0 || v90 < *v76;
            v92 = (v68 + 16);
            v93 = (v68 + 17);
            if (!v94)
            {
              goto LABEL_67;
            }
          }

          else
          {
            v91 = *v77 == 0.0 || v90 < *v77;
            v92 = (v68 + 19);
            v93 = (v68 + 20);
            if (!v91)
            {
              goto LABEL_67;
            }
          }

          *v92 = v90;
LABEL_67:
          *v93 = v83 + *v93;
          ++v71;
        }

        while (v70 != v71);
      }

      *(v68 + 9) = -*(v68 + 9);
      *(v68 + 19) = -*(v68 + 19);
      OUTLINED_FUNCTION_0_146(v69, (v68 + 9));
      OUTLINED_FUNCTION_0_146(v95, (v68 + 12));
      OUTLINED_FUNCTION_0_146(v96, (v68 + 18));
      OUTLINED_FUNCTION_0_146(v97, (v68 + 15));
      v98 = *(v68 + 11);
      v99 = *(v68 + 14);
      v100 = v98 <= v99;
      if (v98 <= v99)
      {
        v98 = *(v68 + 14);
      }

      v101 = 12;
      if (!v100)
      {
        v101 = 9;
      }

      v102 = v68[v101];
      v103 = *(v68 + 17);
      v104 = *(v68 + 20);
      v105 = v103 <= v104;
      if (v103 <= v104)
      {
        v103 = *(v68 + 20);
      }

      v106 = 19;
      if (!v105)
      {
        v106 = 16;
      }

      v107 = v68[v106];
      if (v98 > 0.0 || v103 > 0.0)
      {
        v108 = v98 > 0.0 && *(v68 + 2) < *(v68 + 3);
        v23 = a2 + a4;
        v22 = a2;
        v24 = v134;
        v29 = -1.0;
        v30 = 1.0;
        v65 = v139;
        v63 = v136;
        if (v108)
        {
          v68[21] = v102;
          v68[22] = 0;
          *(v68 + 23) = v98;
        }

        else
        {
          v68[21] = 0;
          v98 = v103;
          v68[22] = v107;
          *(v68 + 23) = v103;
        }
      }

      else
      {
        v68[21] = 0;
        v68[22] = 0;
        v98 = 0.0;
        v68[23] = 0;
        v23 = a2 + a4;
        v22 = a2;
        v24 = v134;
        v29 = -1.0;
        v30 = 1.0;
        v65 = v139;
        v63 = v136;
      }

      if (v66 < v98)
      {
        v65 = v64;
        v66 = v98;
      }

LABEL_87:
      ++v64;
    }

    while (v64 != v63);
    if (v66 <= 0.0 || v65 < 0)
    {
      v21 = v132;
      a3 = v130;
      if (!v138)
      {
        goto LABEL_118;
      }

      if (CFArrayGetCount(a1) >= 1)
      {
        do
        {
          *(OUTLINED_FUNCTION_2_128() + 48) = 0;
          OUTLINED_FUNCTION_377_0();
        }

        while (!_ZF);
      }

      v113 = v133 - 1;
      goto LABEL_114;
    }

    v109 = CFArrayGetValueAtIndex(a1, v65);
    v21 = v132;
    a3 = v130;
    if (v109)
    {
      *v109 = vaddq_f64(*(v109 + 168), *v109);
      ++*(v109 + 48);
    }

    v110 = CFArrayGetCount(a1);
    if (!v110)
    {
      goto LABEL_108;
    }

    v111 = v110;
    v112 = CFDataGetLength(v132) / (208 * v110);
    v113 = v133;
    if (v112 >= 1)
    {
      break;
    }

LABEL_105:
    if (v111 >= 1)
    {
      do
      {
        OUTLINED_FUNCTION_2_128();
        v121 = OUTLINED_FUNCTION_4_102();
        CFDataAppendBytes(v121, v122, 208);
        OUTLINED_FUNCTION_377_0();
      }

      while (!_ZF);
LABEL_108:
      v113 = v133;
    }

LABEL_114:
    v133 = v113 + 1;
    if (v113 + 1 >= v129)
    {
      goto LABEL_118;
    }
  }

  BytePtr = CFDataGetBytePtr(v132);
  v113 = v133;
  v115 = BytePtr;
  v116 = 0;
  while (1)
  {
    if (v111 < 1)
    {
      v118 = 0;
    }

    else
    {
      v117 = 0;
      LODWORD(v118) = 0;
      v119 = v115;
      do
      {
        v120 = CFArrayGetValueAtIndex(a1, v117);
        if (!memcmp(v119, v120, 0xD0uLL))
        {
          v118 = (v118 + 1);
        }

        else
        {
          v118 = v118;
        }

        ++v117;
        v119 += 208;
      }

      while (v111 != v117);
      v21 = v132;
      v113 = v133;
    }

    if (v111 == v118)
    {
      break;
    }

    ++v116;
    v115 += 208 * v111;
    if (v116 >= v112)
    {
      goto LABEL_105;
    }
  }

LABEL_118:
  CFRelease(v21);
  v123 = (v133 > 1) | fcr_moveIntoSafeRegion(a1, v125, v126, v127, v128);
  return v123 & 1;
}

uint64_t fcr_moveIntoSafeRegion(CFArrayRef theArray, double a2, double a3, double a4, double a5)
{
  v5 = 0;
  if (a4 > 0.0 && a5 > 0.0)
  {
    MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
    if (MutableCopy)
    {
      v11 = MutableCopy;
      v43 = 0;
      v44 = 0;
      v12 = fcr_sweepBottomUp(MutableCopy, &v44, a3);
      v13 = a3 + a5;
      Count = CFArrayGetCount(v11);
      v47.location = 0;
      v47.length = Count;
      CFArraySortValues(v11, v47, fcr_objComparatorTop, 0);
      if (Count < 1)
      {
        v16 = 0;
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v17 = a3 + a5;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v11, v15);
          v19 = ValueAtIndex[1];
          v20 = ValueAtIndex[3];
          if (v19 + v20 > v13)
          {
            v19 = v13 - v20;
            ValueAtIndex[1] = v13 - v20;
            v16 = 1;
          }

          v17 = fmin(v17, v19);
          ++v15;
        }

        while (Count != v15);
        if ((v16 & (Count != 1)) == 1)
        {
          v21 = 1;
          do
          {
            v22 = CFArrayGetValueAtIndex(v11, v21);
            v23 = 0;
            do
            {
              v24 = CFArrayGetValueAtIndex(v11, v23);
              memcpy(__dst, v22, sizeof(__dst));
              memcpy(v45, v24, sizeof(v45));
              if (fcr_isOverlap(__dst, v45))
              {
                v25 = v24[1] - v22[3];
                v22[1] = v25;
                v17 = fmin(v17, v25);
              }

              ++v23;
            }

            while (v21 != v23);
            ++v21;
          }

          while (v21 != Count);
          v16 = 1;
        }

        v13 = v17;
      }

      if (v13 < a3)
      {
        fcr_sweepBottomUp(v11, &v44, (a3 + v13) * 0.5);
      }

      v26 = fcr_sweepLeftRight(v11, &v43, a2);
      v27 = a2 + a4;
      v28 = CFArrayGetCount(v11);
      OUTLINED_FUNCTION_3_104(v11, v29, v30, fcr_objComparatorRight);
      if (v28 < 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = 0;
        v32 = a2 + a4;
        do
        {
          v33 = OUTLINED_FUNCTION_2_128();
          v34 = *v33;
          v35 = v33[2];
          if (*v33 + v35 > v27)
          {
            v34 = v27 - v35;
            *v33 = v27 - v35;
            v31 = 1;
          }

          v32 = fmin(v32, v34);
          OUTLINED_FUNCTION_377_0();
        }

        while (!v36);
        if ((v31 & (v28 != 1)) == 1)
        {
          v37 = 1;
          do
          {
            v38 = OUTLINED_FUNCTION_2_128();
            v39 = 0;
            do
            {
              v40 = CFArrayGetValueAtIndex(v11, v39);
              memcpy(__dst, v38, sizeof(__dst));
              memcpy(v45, v40, sizeof(v45));
              if (fcr_isOverlap(__dst, v45))
              {
                v41 = *v40 - v38[2];
                *v38 = v41;
                v32 = fmin(v32, v41);
              }

              ++v39;
            }

            while (v37 != v39);
            ++v37;
          }

          while (v37 != v28);
          v31 = 1;
        }

        v27 = v32;
      }

      v5 = v31 | v26 | v16 | v12;
      if (v27 < a2)
      {
        fcr_sweepLeftRight(v11, &v43, (a2 + v27) * 0.5);
      }

      CFRelease(v11);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

uint64_t qtitunes_FigMetadataConverterCreateConvertedItem(uint64_t a1, const __CFDictionary *a2, const __CFAllocator *a3, __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v10 = DerivedStorage;
    Value = CFDictionaryGetValue(a2, @"key");
    if (Value)
    {
      v12 = Value;
      if (CFEqual(*v10, v10[1]))
      {
        if (a4)
        {
          v13 = 0;
          *a4 = CFDictionaryCreateCopy(a3, a2);
          return v13;
        }

        return 0;
      }

      v14 = CMBaseObjectGetDerivedStorage();
      theDict = @"com.apple.itunes";
      if (CFEqual(*v14, @"com.apple.itunes"))
      {
        LODWORD(key) = 0;
        v15 = CMBaseObjectGetDerivedStorage();
        OSTypeKeyToShortStringKeyMapping = FigiTunesMetadataGetOSTypeKeyToShortStringKeyMapping();
        v17 = CFGetTypeID(v12);
        TypeID = CFNumberGetTypeID();
        if (v17 == TypeID)
        {
          OUTLINED_FUNCTION_3_105(TypeID, v19, v20, v21, v22, v23, v24, v25, v87, v4, @"com.apple.itunes", v91, key);
        }

        else
        {
          v36 = CFGetTypeID(v12);
          if (v36 != CFStringGetTypeID() || !FigiTunesMetadataShortStringKeyToOSTypeKey(v12, &key))
          {
            goto LABEL_38;
          }
        }

        v12 = CFDictionaryGetValue(OSTypeKeyToShortStringKeyMapping, key);
        if (!v12)
        {
          goto LABEL_39;
        }

        if (CFEqual(*(v15 + 8), @"com.apple.quicktime.udta"))
        {
          v37 = &_MergedGlobals_95;
LABEL_35:
          OUTLINED_FUNCTION_0_147();
          v51 = *v37;
LABEL_36:
          v54 = v12;
          goto LABEL_37;
        }

        if (CFEqual(*(v15 + 8), @"org.mp4ra"))
        {
          v37 = &qword_1ED4CB4B0;
          goto LABEL_35;
        }

        if (CFEqual(*(v15 + 8), @"com.apple.quicktime.mdta"))
        {
          v37 = &qword_1ED4CB498;
          goto LABEL_35;
        }

LABEL_38:
        v12 = 0;
LABEL_39:
        if (!v12)
        {
          return 4294954813;
        }

        if (!a4)
        {
          return 0;
        }

        goto LABEL_41;
      }

      if (CFEqual(*v14, @"com.apple.quicktime.udta"))
      {
        LODWORD(key) = 0;
        OSTypeKeyToStringKeyMapping = FigUserDataGetOSTypeKeyToStringKeyMapping();
        v27 = CFGetTypeID(v12);
        v28 = CFNumberGetTypeID();
        if (v27 == v28)
        {
          OUTLINED_FUNCTION_3_105(v28, v29, v30, v31, v32, v33, v34, v35, v87, v4, @"com.apple.itunes", v91, key);
        }

        else
        {
          v48 = CFGetTypeID(v12);
          if (v48 != CFStringGetTypeID() || !FigUserDataStringKeyToOSTypeKey(v12, &key))
          {
            goto LABEL_38;
          }
        }

        v49 = CFDictionaryGetValue(OSTypeKeyToStringKeyMapping, key);
        if (!v49)
        {
          goto LABEL_38;
        }

        v50 = v49;
        OUTLINED_FUNCTION_0_147();
        v51 = qword_1ED4CB4A0;
      }

      else
      {
        if (!CFEqual(*v14, @"org.mp4ra"))
        {
          if (!CFEqual(*v14, @"com.apple.quicktime.mdta"))
          {
            v12 = 0;
            if (!a4)
            {
              return 0;
            }

LABEL_41:
            Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!Mutable)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_2();
              return FigSignalErrorAtGM();
            }

            v56 = Mutable;
            if (CFEqual(v10[1], @"com.apple.quicktime.mdta"))
            {
              theDicta = a4;
              v57 = CMBaseObjectGetDerivedStorage();
              LODWORD(key) = 1;
              v58 = CFDictionaryGetValue(a2, @"value");
              v59 = v12;
              v60 = CFEqual(v12, @"com.apple.quicktime.artwork");
              v61 = CFGetTypeID(v58);
              if (v60)
              {
                if (v61 == CFDataGetTypeID() && !FigMetadataGetNumericalDataTypeForMetadataProperties(*v57, a2, @"com.apple.quicktime.mdta", &key, 0) && key <= 0x1B)
                {
                  OUTLINED_FUNCTION_2_129();
                  if (!v70)
                  {
                    v69 = 0;
                    goto LABEL_58;
                  }
                }
              }

              else if (v61 == CFStringGetTypeID())
              {
                v68 = CFLocaleCreate(a3, @"en");
                if (!v68)
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_3_2();
                  v13 = FigSignalErrorAtGM();
                  a4 = theDicta;
                  goto LABEL_86;
                }

                v69 = v68;
                CFDictionaryAddValue(v56, @"locale", v68);
                LODWORD(key) = 1;
LABEL_58:
                v71 = v59;
                v72 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &key);
                a4 = theDicta;
                if (v72)
                {
                  v73 = v72;
                  CFDictionaryAddValue(v56, @"dataType", v72);
                  CFDictionaryAddValue(v56, @"dataTypeNamespace", @"com.apple.quicktime.mdta");
                  CFDictionaryAddValue(v56, @"key", v71);
                  CFDictionaryAddValue(v56, @"value", v58);
                  CFDictionaryAddValue(v56, @"keyspace", @"mdta");
                  CFRelease(v73);
                  v13 = 0;
                  if (!v69)
                  {
                    goto LABEL_86;
                  }

                  goto LABEL_60;
                }

                fig_log_get_emitter();
                OUTLINED_FUNCTION_3_2();
                v13 = FigSignalErrorAtGM();
                if (v69)
                {
LABEL_60:
                  CFRelease(v69);
                }

LABEL_86:
                if (!v13)
                {
                  goto LABEL_87;
                }

LABEL_47:
                CFRelease(v56);
                return v13;
              }

LABEL_46:
              v13 = 4294954813;
              goto LABEL_47;
            }

            if (CFEqual(v10[1], @"com.apple.quicktime.udta"))
            {
              v62 = a4;
              v63 = v12;
              v64 = CFDictionaryGetValue(a2, @"value");
              v65 = CFGetTypeID(v64);
              if (v65 != CFStringGetTypeID())
              {
                goto LABEL_46;
              }

              LODWORD(key) = 0;
              v66 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &key);
              if (v66)
              {
                v67 = v66;
                CFDictionaryAddValue(v56, @"key", v63);
                CFDictionaryAddValue(v56, @"value", v64);
                CFDictionaryAddValue(v56, @"languageCode", v67);
                CFDictionaryAddValue(v56, @"keyspace", @"udta");
                CFRelease(v67);
                a4 = v62;
LABEL_87:
                v13 = 0;
                *a4 = v56;
                return v13;
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_2();
              v82 = FigSignalErrorAtGM();
              a4 = v62;
              if (!v82)
              {
                goto LABEL_87;
              }

LABEL_69:
              v13 = v82;
              goto LABEL_47;
            }

            if (!CFEqual(v10[1], @"org.mp4ra"))
            {
              if (CFEqual(v10[1], theDict))
              {
                qtitunes_FigMetadataConverterCreateConvertedItem_DestinationiTunes(a1, a2, v12, v56);
                if (!v82)
                {
                  goto LABEL_87;
                }
              }

              else
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_3_2();
                v82 = FigSignalErrorAtGM();
              }

              goto LABEL_69;
            }

            theDictb = v56;
            v74 = CMBaseObjectGetDerivedStorage();
            v91 = 1;
            LODWORD(key) = 0;
            v75 = CFDictionaryGetValue(a2, @"value");
            v76 = v12;
            v77 = CFEqual(v12, @"thmb");
            v78 = CFGetTypeID(v75);
            if (v77)
            {
              if (v78 == CFDataGetTypeID() && !FigMetadataGetNumericalDataTypeForMetadataProperties(*v74, a2, @"com.apple.itunes", &v91, 0) && v91 == 13)
              {
                v79 = theDictb;
                CFDictionaryAddValue(theDictb, @"dataType", *MEMORY[0x1E6963808]);
                CFDictionaryAddValue(theDictb, @"dataTypeNamespace", @"com.apple.uti");
                v80 = 0;
                v81 = 0;
                goto LABEL_81;
              }
            }

            else if (v78 == CFStringGetTypeID())
            {
              v83 = CFDictionaryGetValue(a2, @"languageCode");
              if (v83)
              {
                v80 = v83;
                CFRetain(v83);
              }

              else
              {
                LODWORD(key) = 0;
                v80 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &key);
                if (!v80)
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_3_2();
                  v13 = FigSignalErrorAtGM();
LABEL_85:
                  v56 = theDictb;
                  goto LABEL_86;
                }
              }

              CFDictionaryAddValue(theDictb, @"languageCode", v80);
              v84 = CFDictionaryGetValue(a2, @"locale");
              if (v84)
              {
                v81 = v84;
                CFRetain(v84);
              }

              else
              {
                v81 = CFLocaleCreate(a3, @"en");
                if (!v81)
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_3_2();
                  v85 = FigSignalErrorAtGM();
LABEL_82:
                  CFRelease(v80);
                  v13 = v85;
LABEL_83:
                  if (v81)
                  {
                    CFRelease(v81);
                  }

                  goto LABEL_85;
                }
              }

              v79 = theDictb;
              CFDictionaryAddValue(theDictb, @"locale", v81);
LABEL_81:
              CFDictionaryAddValue(v79, @"key", v76);
              CFDictionaryAddValue(v79, @"value", v75);
              CFDictionaryAddValue(v79, @"keyspace", @"uiso");
              v85 = 0;
              v13 = 0;
              if (!v80)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            }

            v13 = 4294954813;
            v56 = theDictb;
            goto LABEL_47;
          }

          OUTLINED_FUNCTION_0_147();
          v51 = qword_1ED4CB490;
          goto LABEL_36;
        }

        LODWORD(key) = 0;
        v38 = FigISOUserDataGetOSTypeKeyToStringKeyMapping();
        v39 = CFGetTypeID(v12);
        v40 = CFNumberGetTypeID();
        if (v39 == v40)
        {
          OUTLINED_FUNCTION_3_105(v40, v41, v42, v43, v44, v45, v46, v47, v87, v4, @"com.apple.itunes", v91, key);
        }

        else
        {
          v52 = CFGetTypeID(v12);
          if (v52 != CFStringGetTypeID() || !FigISOUserDataStringKeyToOSTypeKey(v12, &key))
          {
            goto LABEL_38;
          }
        }

        v53 = CFDictionaryGetValue(v38, key);
        if (!v53)
        {
          goto LABEL_38;
        }

        v50 = v53;
        OUTLINED_FUNCTION_0_147();
        v51 = qword_1ED4CB4A8;
      }

      v54 = v50;
LABEL_37:
      v12 = CFDictionaryGetValue(v51, v54);
      goto LABEL_39;
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void qtitunes_FigMetadataConverterCreateConvertedItem_DestinationiTunes(uint64_t a1, const __CFDictionary *a2, const void *a3, __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 1;
  valuePtr = 0;
  Value = CFDictionaryGetValue(a2, @"value");
  v9 = CFEqual(a3, @"covr");
  v10 = CFGetTypeID(Value);
  if (!v9)
  {
    if (v10 != CFStringGetTypeID())
    {
      return;
    }

    v11 = CFDictionaryGetValue(a2, @"locale");
    v12 = CFDictionaryGetValue(a2, @"languageCode");
    if (v12)
    {
      CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr && valuePtr != 5575)
      {
        return;
      }
    }

    else if (v11)
    {
      v16 = CFLocaleGetValue(v11, *MEMORY[0x1E695E6F0]);
      if (v16)
      {
        if (CFStringCompare(v16, @"en", 0))
        {
          return;
        }
      }
    }

LABEL_17:
    CFDictionaryAddValue(a4, @"key", a3);
    CFDictionaryAddValue(a4, @"value", Value);
    CFDictionaryAddValue(a4, @"keyspace", @"itsk");
    return;
  }

  if (v10 == CFDataGetTypeID() && !FigMetadataGetNumericalDataTypeForMetadataProperties(*DerivedStorage, a2, @"com.apple.itunes", &v17, 0) && v17 <= 0x1B)
  {
    OUTLINED_FUNCTION_2_129();
    if (!v13)
    {
      v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v17);
      if (!v14)
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM();
        return;
      }

      v15 = v14;
      CFDictionaryAddValue(a4, @"dataType", v14);
      CFDictionaryAddValue(a4, @"dataTypeNamespace", @"com.apple.itunes");
      CFRelease(v15);
      goto LABEL_17;
    }
  }
}

uint64_t FigMetadataConverterCreateForQuickTimeToFromiTunes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTCopyStringsForMediaTypeAndSubType(unsigned int a1, uint64_t a2, CFStringRef *a3, CFStringRef *a4)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.MediaToolbox");
  if (BundleWithIdentifier)
  {
    v9 = BundleWithIdentifier;
    v24 = bswap32(a1);
    if (a3)
    {
      result = FigCopyMediaTypeString(BundleWithIdentifier, a1, a3);
      if (result)
      {
        return result;
      }

      v11 = *a3;
      if (!a4)
      {
        return 0;
      }
    }

    else
    {
      v11 = 0;
      if (!a4)
      {
        return 0;
      }
    }

    outPropertyData = 0;
    if (!a1)
    {
      return FigSignalErrorAtGM();
    }

    if (a2)
    {
      if (a1 == 1936684398)
      {
        v21 = 0;
        memset(inSpecifier, 0, sizeof(inSpecifier));
        ioPropertyDataSize = 8;
        DWORD2(inSpecifier[0]) = a2;
        Property = AudioFormatGetProperty(0x666E616Du, 0x28u, inSpecifier, &ioPropertyDataSize, &outPropertyData);
        v13 = outPropertyData;
        if (Property)
        {
          if (!outPropertyData)
          {
            goto LABEL_24;
          }

          return 0;
        }

        *a4 = outPropertyData;
        if (v13)
        {
          return 0;
        }
      }

LABEL_24:
      LODWORD(inSpecifier[0]) = bswap32(a2);
      v16 = *MEMORY[0x1E695E480];
      if (a1 == 1986618469 && a2 <= 0x28)
      {
        v17 = CFStringCreateWithFormat(v16, 0, @"%.4s%d", &v24, a2, *&inSpecifier[0]);
      }

      else
      {
        v17 = CFStringCreateWithFormat(v16, 0, @"%.4s%.4s", &v24, inSpecifier, *&inSpecifier[0]);
      }

      v18 = v17;
      if (v17)
      {
        v19 = CFBundleCopyLocalizedString(v9, v17, v17, @"MediaAndSubtypes");
        *a4 = v19;
        if (v19 == v18)
        {
          CFRelease(v19);
          *a4 = CFStringCreateWithFormat(v16, 0, @"%.4s", inSpecifier);
        }

        CFRelease(v18);
        return 0;
      }

      return FigSignalErrorAtGM();
    }

    if (a1 != 1868720741 && a1 != 1936749172 && a1 != 1885433455)
    {
      return 0;
    }

    if (v11)
    {
      *a4 = CFRetain(v11);
      return 0;
    }

    result = FigCopyMediaTypeString(v9, a1, a4);
    if (!result)
    {
      return 0;
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

CFStringRef MTCopyLocalizedNameForMediaType(CMMediaType mediaType)
{
  v2 = 0;
  MTCopyStringsForMediaTypeAndSubType(mediaType, 0, &v2, 0);
  return v2;
}

CFStringRef MTCopyLocalizedNameForMediaSubType(CMMediaType mediaType, FourCharCode mediaSubType)
{
  v3 = 0;
  MTCopyStringsForMediaTypeAndSubType(mediaType, *&mediaSubType, 0, &v3);
  return v3;
}

uint64_t FigComputeMovieDimensions(uint64_t a1, CGRect *a2)
{
  v48 = 0;
  memset(&v47, 0, sizeof(v47));
  cf = 0;
  v46 = 0;
  v4 = *MEMORY[0x1E695E480];
  FigBaseObject = FigFormatReaderGetFigBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v7 = MEMORY[0x1E695EFD0];
  if (v6 && !v6(FigBaseObject, @"MovieMatrix", v4, &v48))
  {
    MatrixArrayToCGAffineTransform(v48, &v47.a);
    CFRelease(v48);
  }

  else
  {
    v8 = v7[1];
    *&v47.a = *v7;
    *&v47.c = v8;
    *&v47.tx = v7[2];
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = v9(a1, &v46);
  if (v10)
  {
    return v10;
  }

  if (v46 < 1)
  {
LABEL_35:
    v40 = v47;
    v52.origin.x = OUTLINED_FUNCTION_1_131();
    v36 = 0;
    *a2 = CGRectApplyAffineTransform(v52, v37);
    return v36;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v44 = 0;
    BOOLean = 0;
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v17)
    {
      goto LABEL_31;
    }

    v18 = v17(a1, v11, &cf, &v44, 0);
    if (v18)
    {
      goto LABEL_37;
    }

    v19 = FigTrackReaderGetFigBaseObject(cf);
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v20)
    {
LABEL_31:
      v36 = 4294954514;
      goto LABEL_32;
    }

    v18 = v20(v19, @"TrackEnabled", v4, &BOOLean);
    if (v18)
    {
      goto LABEL_37;
    }

    Value = CFBooleanGetValue(BOOLean);
    CFRelease(BOOLean);
    if (Value)
    {
      break;
    }

LABEL_25:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (++v11 >= v46)
    {
      goto LABEL_35;
    }
  }

  v41 = 0;
  theDict = 0;
  memset(&v40, 0, sizeof(v40));
  v22 = FigTrackReaderGetFigBaseObject(cf);
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v23)
  {
    goto LABEL_31;
  }

  v18 = v23(v22, @"TrackDimensions", v4, &theDict);
  if (!v18)
  {
    v24 = theDict;
    LODWORD(valuePtr.a) = 0;
    v49[0] = 0.0;
    v25 = CFDictionaryGetValue(theDict, @"Width");
    CFNumberGetValue(v25, kCFNumberFloat32Type, &valuePtr);
    v26 = CFDictionaryGetValue(v24, @"Height");
    CFNumberGetValue(v26, kCFNumberFloat32Type, v49);
    v27 = *&valuePtr.a;
    v28 = v49[0];
    CFRelease(theDict);
    if (v27 == 0.0 || v28 == 0.0)
    {
      v35 = v16;
      v34 = v15;
      v33 = v14;
      v32 = v13;
    }

    else
    {
      v29 = FigTrackReaderGetFigBaseObject(cf);
      v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v30 && !v30(v29, @"TrackMatrix", v4, &v41))
      {
        MatrixArrayToCGAffineTransform(v41, &v40.a);
        CFRelease(v41);
      }

      else
      {
        v31 = v7[1];
        *&v40.a = *v7;
        *&v40.c = v31;
        *&v40.tx = v7[2];
      }

      v50.size.width = v27;
      v50.size.height = v28;
      valuePtr = v40;
      v50.origin.x = 0.0;
      v50.origin.y = 0.0;
      CGRectApplyAffineTransform(v50, &valuePtr);
      OUTLINED_FUNCTION_0_148();
      if (v12)
      {
        v51.origin.x = OUTLINED_FUNCTION_1_131();
        CGRectUnion(v51, v53);
        OUTLINED_FUNCTION_0_148();
      }

      v12 = 1;
    }

    v16 = v35;
    v15 = v34;
    v14 = v33;
    v13 = v32;
    goto LABEL_25;
  }

LABEL_37:
  v36 = v18;
LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  return v36;
}

__CFString *FigGetFileTypeForMovieFamilyExtension(CFStringRef theString2)
{
  if (!theString2)
  {
    return 0;
  }

  if (CFStringCompare(@"mov", theString2, 1uLL) == kCFCompareEqualTo)
  {
    return @"com.apple.quicktime-movie";
  }

  if (CFStringCompare(@"qta", theString2, 1uLL) == kCFCompareEqualTo)
  {
    return @"com.apple.quicktime-audio";
  }

  AllIdentifiersForTag = UTTypeCreateAllIdentifiersForTag(*MEMORY[0x1E6963710], theString2, *MEMORY[0x1E6963758]);
  v3 = AllIdentifiersForTag;
  if (AllIdentifiersForTag)
  {
    Count = CFArrayGetCount(AllIdentifiersForTag);
  }

  else
  {
    Count = 0;
  }

  if (qword_1ED4CB4D0 != -1)
  {
    dispatch_once(&qword_1ED4CB4D0, &__block_literal_global_70);
  }

  if (Count < 1)
  {
LABEL_18:
    v5 = 0;
    if (!v3)
    {
      return v5;
    }

    goto LABEL_21;
  }

  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
    Value = CFDictionaryGetValue(_MergedGlobals_96, ValueAtIndex);
    v9 = Value ? Value : ValueAtIndex;
    v12.length = unk_1ED4CB4C8;
    v12.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(qword_1ED4CB4C0, v12, v9);
    if (FirstIndexOfValue != -1)
    {
      break;
    }

    if (Count == ++v6)
    {
      goto LABEL_18;
    }
  }

  v5 = CFArrayGetValueAtIndex(qword_1ED4CB4C0, FirstIndexOfValue);
  if (v3)
  {
LABEL_21:
    CFRelease(v3);
  }

  return v5;
}

BOOL FigValidateRequiredFeaturesOfFormatDescription(const opaqueCMFormatDescription *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = 0;
    v13 = 0;
    v8 = 0;
    return !v8 && v3 == v13;
  }

  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6960700]);
  v3 = Extension;
  if (!Extension)
  {
    goto LABEL_7;
  }

  v4 = CFGetTypeID(Extension);
  if (v4 != CFDictionaryGetTypeID())
  {
    v3 = 0;
LABEL_7:
    v8 = 0;
    v7 = 0;
    goto LABEL_10;
  }

  Count = CFDictionaryGetCount(v3);
  Value = CFDictionaryGetValue(v3, *MEMORY[0x1E6960738]);
  v7 = Value;
  if (Value)
  {
    v3 = CFArrayGetCount(Value);
  }

  else
  {
    v3 = 0;
  }

  v8 = Count - (v7 != 0);
LABEL_10:
  if (CMFormatDescriptionGetMediaType(a1) == 1952807028 && ((MediaSubType = CMFormatDescriptionGetMediaSubType(a1), MediaSubType != 1937142900) ? (v10 = MediaSubType == 2021028980) : (v10 = 1), !v10 ? (v11 = MediaSubType == 2004251764) : (v11 = 1), v11 && v3 >= 1))
  {
    v12 = 0;
    v13 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v12);
      v15 = 0;
      while (!CFStringGetCString(ValueAtIndex, buffer, 256, 0x600u) || strncmp(buffer, (&sWebVTTSupportedFeatures)[v15], 0x100uLL))
      {
        if (++v15 == 3)
        {
          goto LABEL_27;
        }
      }

      ++v13;
LABEL_27:
      ++v12;
    }

    while (v12 != v3);
  }

  else
  {
    v13 = 0;
  }

  return !v8 && v3 == v13;
}

uint64_t FigCopyMediaTypeString_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCopyMediaTypeString_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCryptDecryptMemory(uint64_t a1, int a2, int a3, const void *a4, size_t a5, size_t *a6, char *a7, size_t a8, size_t *a9, _BYTE *a10)
{
  dataOutMoved = 0;
  if (a1)
  {
    if (a10)
    {
      v13 = a5;
      if ((a2 || a5 && a4 && a6) && a7 && a9 && *(a1 + 8) <= a8)
      {
        *a10 = 0;
        if (a4)
        {
          v17 = a5;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          OutputLength = CCCryptorGetOutputLength(*a1, v17, a2 != 0);
          if (a2 && OutputLength > a8)
          {
            OutputLength = CCCryptorGetOutputLength(*a1, v17, 0);
          }

          if (OutputLength <= a8)
          {
LABEL_23:
            if (v13)
            {
              goto LABEL_24;
            }

            goto LABEL_28;
          }

          v19 = *(a1 + 40);
          v20 = *(a1 + 48);
          v21 = v19 >= v20;
          v22 = v19 - v20;
          if (!v21 || (v23 = *(a1 + 8), v21 = v23 >= v22, v24 = v23 - v22, !v21))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_4_63();
            result = FigSignalErrorAtGM();
            if (result)
            {
              return result;
            }

            goto LABEL_23;
          }

          v33 = (-v23 & a8) + v24;
          if (v33 < v17)
          {
            v13 = v33;
          }

          if (v13)
          {
LABEL_24:
            while (1)
            {
              v26 = CCCryptorUpdate(*a1, a4, v13, a7, a8, &dataOutMoved);
              if (v26 != -4301)
              {
                break;
              }

              v27 = *(a1 + 8);
              v28 = v13 > v27;
              v13 -= v27;
              if (!v28)
              {
                goto LABEL_37;
              }
            }

            if (v26)
            {
              goto LABEL_37;
            }
          }
        }

        else
        {
          v13 = 0;
        }

LABEL_28:
        if (!a2)
        {
          goto LABEL_42;
        }

        v29 = *(a1 + 32);
        if (v29 == 2)
        {
          goto LABEL_42;
        }

        if (!a4 || (v29 == 3 ? (v30 = dataOutMoved == v17) : (v30 = 0), !v30))
        {
          if (v13 != v17 || a8 - dataOutMoved < *(a1 + 8))
          {
            *a10 = 1;
            goto LABEL_42;
          }

          v36 = 0;
          v34 = CCCryptorFinal(*a1, &a7[dataOutMoved], a8 - dataOutMoved, &v36);
          if (a3 || !v34)
          {
            dataOutMoved += v36;
            *a10 = 0;
            goto LABEL_42;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_4_63();
          return FigSignalErrorAtGM();
        }

        if (!CCCryptorGCMFinalize())
        {
LABEL_42:
          v31 = dataOutMoved;
          v32 = *(a1 + 48) + dataOutMoved;
          *(a1 + 40) += v13;
          *(a1 + 48) = v32;
          if (a6)
          {
            *a6 = v13;
          }

          result = 0;
          *a9 = v31;
          return result;
        }

LABEL_37:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_4_63();
        return FigSignalErrorAtGM();
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_63();

  return FigSignalErrorAtGM();
}

uint64_t FigCryptCreateForDecrypt_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCryptCreateForDecrypt_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCryptCreateForDecrypt_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCryptSetIV_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbapo_invalidate(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_30_20();
  if (!*v1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    fbapo_amIActiveEndpointStreamClient();
    if (!*DerivedStorage)
    {
      *DerivedStorage = 1;
      fbapo_setAudioSessionID(a1, 0);
      if (*(DerivedStorage + 72))
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 16))
        {
          v4 = OUTLINED_FUNCTION_43_17();
          v5(v4);
        }

        *(DerivedStorage + 80) = 0;
      }

      *(DerivedStorage + 81) = 0;
      *(DerivedStorage + 192) = -999;
      *(DerivedStorage + 140) = -998653952;
      *(DerivedStorage + 268) = 0;
      v6 = CMBaseObjectGetDerivedStorage();
      if (*(v6 + 56) && *(v6 + 72))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListeners();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListeners();
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"com.apple.airplay.bufferedAVAudioSessionOverrideChanged", 0);
      }

      v8 = *(DerivedStorage + 56);
      if (v8)
      {
        CFRelease(v8);
        *(DerivedStorage + 56) = 0;
      }

      v9 = *(DerivedStorage + 48);
      if (v9)
      {
        CFRelease(v9);
        *(DerivedStorage + 48) = 0;
      }

      v10 = *(DerivedStorage + 64);
      if (v10)
      {
        CFRelease(v10);
        *(DerivedStorage + 64) = 0;
      }

      v11 = *(DerivedStorage + 176);
      if (v11)
      {
        CFRelease(v11);
        *(DerivedStorage + 176) = 0;
      }

      v12 = *(DerivedStorage + 160);
      if (v12)
      {
        CFRelease(v12);
        *(DerivedStorage + 160) = 0;
      }

      v13 = *(DerivedStorage + 144);
      if (v13)
      {
        CFRelease(v13);
        *(DerivedStorage + 144) = 0;
      }

      v14 = *(DerivedStorage + 152);
      if (v14)
      {
        CFRelease(v14);
        *(DerivedStorage + 152) = 0;
      }

      v15 = *(DerivedStorage + 72);
      if (v15)
      {
        CFRelease(v15);
        *(DerivedStorage + 72) = 0;
      }

      v16 = *(DerivedStorage + 200);
      if (v16)
      {
        CFRelease(v16);
        *(DerivedStorage + 200) = 0;
      }

      v17 = *(DerivedStorage + 184);
      if (v17)
      {
        CFRelease(v17);
        *(DerivedStorage + 184) = 0;
      }
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fbapo_finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fbapo_invalidate(a1);
  v3 = *(DerivedStorage + 272);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 272) = 0;
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    dispatch_sync(v4, &__block_literal_global_162);
    dispatch_release(*(DerivedStorage + 16));
    *(DerivedStorage + 16) = 0;
  }

  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    dispatch_sync(v5, &__block_literal_global_165);
    dispatch_release(*(DerivedStorage + 32));
    *(DerivedStorage + 32) = 0;
  }

  v6 = *(DerivedStorage + 24);
  if (v6)
  {
    dispatch_sync(v6, &__block_literal_global_168);
    dispatch_release(*(DerivedStorage + 24));
    *(DerivedStorage + 24) = 0;
  }

  v7 = *(DerivedStorage + 40);
  if (v7)
  {
    dispatch_sync(v7, &__block_literal_global_171);
    dispatch_release(*(DerivedStorage + 40));
    *(DerivedStorage + 40) = 0;
  }

  result = *(DerivedStorage + 8);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 8) = 0;
  }

  return result;
}

uint64_t fbapo_setProperty(uint64_t a1, const void *a2, const __CFString *a3)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_30_20();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"Muted"))
  {
    if (CFEqual(a2, @"Volume"))
    {
      if (!a3)
      {
        goto LABEL_35;
      }

      TypeID = CFNumberGetTypeID();
      if (TypeID != CFGetTypeID(a3))
      {
        goto LABEL_35;
      }

      valuePtr = 0.0;
      if (!*(CMBaseObjectGetDerivedStorage() + 136))
      {
LABEL_31:
        v15 = 0;
        goto LABEL_37;
      }

      if (!CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr) || (valuePtr >= 0.0 ? (v14 = valuePtr > 1.0) : (v14 = 1), v14))
      {
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM();
        goto LABEL_31;
      }

      if (valuePtr != 0.0)
      {
        log(valuePtr);
      }

      Float32 = FigCFNumberCreateFloat32();
      if (!Float32)
      {
        goto LABEL_31;
      }

      v17 = Float32;
      FigEndpointGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v18 = OUTLINED_FUNCTION_308();
        v19(v18);
      }

      v20 = v17;
    }

    else
    {
      if (CFEqual(a2, @"EnableLocalPlayback") || CFEqual(a2, @"LocalPlaybackVolume"))
      {
        goto LABEL_35;
      }

      if (CFEqual(a2, @"AudioMode"))
      {
        if (a3)
        {
          v21 = CFGetTypeID(a3);
          if (v21 == CFStringGetTypeID())
          {
            v28 = OUTLINED_FUNCTION_18_31();
            fbapo_setAndCacheAudioMode(v28, v29, v30);
            goto LABEL_36;
          }
        }

        goto LABEL_35;
      }

      if (CFEqual(a2, @"FigAudioSession"))
      {
        if (!a3 || (v23 = CFGetTypeID(a3), v23 == FigAudioSessionGetTypeID()))
        {
          v24 = OUTLINED_FUNCTION_18_31();
          IsPiPMuted = fbapo_setAndCacheFigAudioSession(v24, v25, v26);
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (!CFEqual(a2, @"ClientID"))
      {
        if (CFEqual(a2, @"IsPiPMuted"))
        {
          if (a3)
          {
            v27 = CFGetTypeID(a3);
            if (v27 == CFBooleanGetTypeID())
            {
              Value = CFBooleanGetValue(a3);
              IsPiPMuted = fbapo_setAndCacheIsPiPMuted(a1, Value);
              goto LABEL_36;
            }
          }

          goto LABEL_35;
        }

        if (CFEqual(a2, @"ClientPID"))
        {
          if (!a3)
          {
            goto LABEL_35;
          }

          v31 = CFGetTypeID(a3);
          if (v31 != CFNumberGetTypeID())
          {
            goto LABEL_35;
          }

          v32 = *(DerivedStorage + 72);
          v33 = kFigEndpointStreamAudioEngineProperty_ClientPID;
        }

        else if (CFEqual(a2, @"ClientAuditToken"))
        {
          if (a3)
          {
            v34 = CFGetTypeID(a3);
            if (v34 != CFDataGetTypeID())
            {
              goto LABEL_35;
            }
          }

          v32 = *(DerivedStorage + 72);
          v33 = kFigEndpointStreamAudioEngineProperty_ClientAuditToken;
        }

        else if (CFEqual(a2, @"LoggingID"))
        {
          if (!a3)
          {
            goto LABEL_35;
          }

          v35 = CFGetTypeID(a3);
          if (v35 != CFStringGetTypeID())
          {
            goto LABEL_35;
          }

          *(DerivedStorage + 208) = 0;
          v36 = (DerivedStorage + 208);
          CFStringGetCString(a3, v36, 20, 0x600u);
          v32 = *(v36 - 17);
          v33 = kFigEndpointStreamAudioEngineProperty_LoggingID;
        }

        else
        {
          if (CFEqual(a2, @"AudioProcessingTap"))
          {
            if (a3 && (v38 = MTAudioProcessingTapGetTypeID(), v38 != CFGetTypeID(a3)))
            {
              OUTLINED_FUNCTION_239();
              v15 = FigSignalErrorAtGM();
            }

            else
            {
              v39 = OUTLINED_FUNCTION_18_31();
              fbapo_setAndCacheAudioProcessingTap(v39, v40, v41);
              v15 = 0;
            }

            v43 = OUTLINED_FUNCTION_18_31();
            fbapo_setAndCacheAudioProcessingTap(v43, v44, v45);
            goto LABEL_37;
          }

          if (CFEqual(a2, @"CompressionLatency"))
          {
            if (!a3)
            {
              goto LABEL_35;
            }

            v42 = CFGetTypeID(a3);
            if (v42 != CFNumberGetTypeID())
            {
              goto LABEL_35;
            }

            v32 = *(DerivedStorage + 72);
            v33 = kFigEndpointStreamAudioEngineProperty_CompressionLatency;
          }

          else
          {
            if (!CFEqual(a2, @"IsParticipatingInCoordinatedPlayback"))
            {
              v15 = 4294954512;
              goto LABEL_37;
            }

            if (!a3)
            {
              goto LABEL_35;
            }

            v46 = CFGetTypeID(a3);
            if (v46 != CFBooleanGetTypeID())
            {
              goto LABEL_35;
            }

            v32 = *(DerivedStorage + 72);
            v33 = kFigEndpointStreamAudioEngineProperty_IsParticipatingInCoordinatedPlayback;
          }
        }

        IsPiPMuted = FigEndpointStreamAudioEngineSetProperty(v32, *v33, a3);
        goto LABEL_36;
      }

      v15 = *(DerivedStorage + 200);
      *(DerivedStorage + 200) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (!v15)
      {
        goto LABEL_37;
      }

      v20 = v15;
    }

    CFRelease(v20);
    goto LABEL_31;
  }

  if (!a3 || (v7 = CFBooleanGetTypeID(), v7 != CFGetTypeID(a3)))
  {
LABEL_35:
    OUTLINED_FUNCTION_239();
    IsPiPMuted = FigSignalErrorAtGM();
    goto LABEL_36;
  }

  FigEndpointGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v8 = OUTLINED_FUNCTION_308();
    IsPiPMuted = v9(v8);
    if (IsPiPMuted)
    {
LABEL_36:
      v15 = IsPiPMuted;
      goto LABEL_37;
    }

    FigEndpointStreamGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v11 = OUTLINED_FUNCTION_308();
      IsPiPMuted = v12(v11);
      goto LABEL_36;
    }
  }

  v15 = 4294954514;
LABEL_37:
  FigSimpleMutexUnlock();
  return v15;
}

uint64_t fbapo_amIActiveEndpointStreamClient()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*DerivedStorage)
  {
    return 0;
  }

  v1 = DerivedStorage;
  if (!*(DerivedStorage + 176))
  {
    return 0;
  }

  if (!fbapo_audioEngineIsResumed())
  {
    return 0;
  }

  CMBaseObject = FigEndpointStreamAudioEngineGetCMBaseObject(*(v1 + 72));
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  if (v3(CMBaseObject, @"endpointStream", *MEMORY[0x1E695E480], &cf))
  {
    v4 = 1;
  }

  else
  {
    v4 = cf == 0;
  }

  v5 = !v4;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void fbapo_endpointStreamSupportedAudioFormatsChangedCallback(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, os_log_type_t type, int a15, __int16 a16, char a17, char a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  OUTLINED_FUNCTION_49_14();
  a49 = v51;
  a50 = v52;
  v54 = v53;
  a40 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  a18 = 0;
  if (dword_1EAF17590)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_40();
    if (v50)
    {
      if (v54)
      {
        CMBaseObjectGetDerivedStorage();
      }

      a19 = 136315650;
      OUTLINED_FUNCTION_1_132();
      OUTLINED_FUNCTION_12_17();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  FigSimpleMutexLock();
  if (!*(DerivedStorage + 80) && !fbapo_supportsFormatChangeWithoutReconfiguration(v54, &a18) && !a18)
  {
    *(DerivedStorage + 80) = 1;
  }

  FigSimpleMutexUnlock();
  if (!a18)
  {
    fbapo_postNotificationInternal(v54, @"ActiveConfigurationDidBecomeInvalid", 0);
  }

  OUTLINED_FUNCTION_51_18();
}

uint64_t fbapo_supportsFormatChangeWithoutReconfiguration(uint64_t a1, _BYTE *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (!a2)
  {
    return 4294949976;
  }

  if (!*(DerivedStorage + 72))
  {
    return 4294949976;
  }

  if (fbapo_audioEngineIsResumed())
  {
    fbapo_doesEndpointStreamSupportMixedSampleRates();
    if (dword_1EAF17590)
    {
      v5 = OUTLINED_FUNCTION_32_21();
      if (os_log_type_enabled(v5, type[0]))
      {
        v6 = v13;
      }

      else
      {
        v6 = v13 & 0xFFFFFFFE;
      }

      if (v6)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v14 = 136315906;
        v15 = "fbapo_supportsFormatChangeWithoutReconfiguration";
        OUTLINED_FUNCTION_3_106();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMBaseObject = FigEndpointStreamAudioEngineGetCMBaseObject(*(DerivedStorage + 72));
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v10 = v9(CMBaseObject);
      if (!v10)
      {
        OUTLINED_FUNCTION_239();
        return FigSignalErrorAtGM();
      }

      return v10;
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    v7 = 0;
    *a2 = 0;
  }

  return v7;
}

uint64_t fbapo_audioEngineEndpointStreamEvictedCallback()
{
  FigCFDictionaryGetValue();
  result = FigCFEqual();
  if (!result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

void fbapo_audioEnginePrerollDurationChangedCallback(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  fbapo_postNotificationInternal(a2, @"prerollDurationChanged", a5);
  if (a5)
  {
    v6 = CFGetTypeID(a5);
    if (v6 == CFDictionaryGetTypeID())
    {
      CMTimeMakeFromDictionary(&v7, a5);
    }
  }
}

uint64_t fbapo_audioEngineActiveConfigurationDidBecomeInvalidCallback(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_30_20();
  if (*(v4 + 72) == a4 && fbapo_audioEngineIsResumed() && !*(v4 + 80))
  {
    *(v4 + 80) = 1;
    fbapo_postNotificationInternal(a2, @"ActiveConfigurationDidBecomeInvalid", 0);
  }

  return FigSimpleMutexUnlock();
}

uint64_t fbapo_copyCalculatePrerollDuration(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  BOOLean = 0;
  if (!*(DerivedStorage + 56))
  {
    CMTimeMake(&time, 1000, 1000);
    v10 = *MEMORY[0x1E695E480];
    goto LABEL_13;
  }

  v4 = DerivedStorage;
  if (!fbapo_audioEngineIsResumed())
  {
    v11 = *MEMORY[0x1E695E480];
    FigEndpointStreamGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v12 = OUTLINED_FUNCTION_308();
      v13(v12);
    }

    CMTimeMake(&time, 1000, 1000);
    v10 = v11;
LABEL_13:
    v8 = CMTimeCopyAsDictionary(&time, v10);
    v16 = v8;
    if (!v8)
    {
      v7 = 4294951816;
      goto LABEL_21;
    }

    if (!a2)
    {
      v7 = 0;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  CMBaseObject = FigEndpointStreamAudioEngineGetCMBaseObject(*(v4 + 72));
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v7 = 4294954514;
    goto LABEL_21;
  }

  v7 = v6(CMBaseObject, @"prerollDuration", *MEMORY[0x1E695E480], &v16);
  v8 = v16;
  if (a2 && !v7)
  {
    if (!v16)
    {
      v9 = 0;
LABEL_16:
      v7 = 0;
      *a2 = v9;
      goto LABEL_17;
    }

LABEL_15:
    v9 = CFRetain(v8);
    v8 = v16;
    goto LABEL_16;
  }

LABEL_17:
  if (v8)
  {
LABEL_20:
    CFRelease(v8);
  }

LABEL_21:
  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v7;
}

BOOL fbapo_isActiveConfigurationInvalid(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(DerivedStorage + 80) || *(DerivedStorage + 81))
  {
    return 1;
  }

  fbapo_supportsFormatChangeWithoutReconfiguration(a1, &v4);
  return v4 == 0;
}

void fbapo_setAndCacheAudioMode(uint64_t a1, __CFString *a2, int a3)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    if (CFPreferenceNumberWithDefault == 1)
    {
      v6 = @"AudioMode_Default";
    }

    else
    {
      v6 = a2;
      if (CFPreferenceNumberWithDefault != 2)
      {
        goto LABEL_14;
      }

      v6 = @"AudioMode_MoviePlayback";
    }

    if (v6 != a2 && dword_1EAF17590)
    {
      v7 = OUTLINED_FUNCTION_126();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_125();
      if (v9)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        OUTLINED_FUNCTION_6_79();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_417();
    }

LABEL_14:
    if (CFEqual(v6, @"AudioMode_Default"))
    {
      v11 = MEMORY[0x1E6962500];
    }

    else if (CFEqual(v6, @"AudioMode_MoviePlayback"))
    {
      v11 = MEMORY[0x1E6962508];
    }

    else
    {
      if (!CFEqual(v6, @"AudioMode_SpokenAudio"))
      {
LABEL_17:
        OUTLINED_FUNCTION_426_1();
        return;
      }

      v11 = MEMORY[0x1E6962510];
    }

    v12 = *v11;
    if (fbapo_amIActiveEndpointStreamClient())
    {
      CMBaseObject = FigEndpointStreamGetCMBaseObject();
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v14)
      {
        goto LABEL_17;
      }

      v15 = v14(CMBaseObject, *MEMORY[0x1E6962540], v12);
      if (!a3 || v15)
      {
        goto LABEL_17;
      }
    }

    else if (!a3)
    {
      goto LABEL_17;
    }

    CMBaseObjectGetDerivedStorage();
    FigCFDictionarySetValue();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_426_1();

  FigSignalErrorAtGM();
}

uint64_t fbapo_setAndCacheIsPiPMuted(uint64_t a1, int a2)
{
  v53 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 168) == a2)
  {
    return 0;
  }

  v7 = DerivedStorage;
  if (dword_1EAF17590)
  {
    v8 = OUTLINED_FUNCTION_31_22();
    OUTLINED_FUNCTION_52_17(v8, v9, v10, v11, v12, v13, v14, v15, p_lhs, v42, rhs.value, *&rhs.timescale, rhs.epoch, v44, v45, v46.value);
    OUTLINED_FUNCTION_46();
    if (v3)
    {
      if (a1)
      {
        v16 = (CMBaseObjectGetDerivedStorage() + 208);
      }

      else
      {
        v16 = "";
      }

      v17 = "Yes";
      LODWORD(lhs.value) = 136315906;
      LOWORD(lhs.flags) = 2048;
      *(&lhs.value + 4) = "fbapo_setAndCacheIsPiPMuted";
      if (!a2)
      {
        v17 = "No";
      }

      *(&lhs.flags + 2) = a1;
      HIWORD(lhs.epoch) = 2082;
      v49 = v16;
      v50 = 2080;
      v51 = v17;
      LODWORD(v42) = 42;
      p_lhs = &lhs;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  if (a2)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      v18 = OUTLINED_FUNCTION_43_17();
      v19(v18);
    }

    if (dword_1EAF17590)
    {
      v20 = OUTLINED_FUNCTION_31_22();
      OUTLINED_FUNCTION_52_17(v20, v21, v22, v23, v24, v25, v26, v27, p_lhs, v42, rhs.value, *&rhs.timescale, rhs.epoch, v44, v45, v46.value);
      OUTLINED_FUNCTION_46();
      if (v3)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_5_89();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0();
    }

    goto LABEL_28;
  }

  if (!fbapo_audioEngineIsResumed())
  {
LABEL_28:
    result = 0;
    *(v7 + 168) = a2;
    return result;
  }

  memset(&v46, 0, sizeof(v46));
  HostTimeClock = CMClockGetHostTimeClock();
  CMSyncGetTime(&v46, HostTimeClock);
  if (!*(v7 + 56))
  {
    v31 = 6000;
    goto LABEL_38;
  }

  if (dword_1EAF17590)
  {
    v29 = OUTLINED_FUNCTION_33_21();
    os_log_type_enabled(v29, HIBYTE(v45));
    OUTLINED_FUNCTION_40();
    if (v2)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_5_89();
      OUTLINED_FUNCTION_12_17();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  result = FigEndpointStreamSuspendSync();
  if (!result)
  {
    v32 = CMClockGetHostTimeClock();
    CMSyncGetTime(&lhs, v32);
    rhs = v46;
    CMTimeSubtract(&v52, &lhs, &rhs);
    v47 = *&v52.timescale;
    lhs = v52;
    CMTimeConvertScale(&v52, &lhs, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    if (6000 - LODWORD(v52.value) <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = 6000 - LODWORD(v52.value);
    }

    if (6000 - LODWORD(v52.value) < 501)
    {
      SInt32 = 0;
LABEL_41:
      if (dword_1EAF17590)
      {
        v36 = OUTLINED_FUNCTION_33_21();
        value = rhs.value;
        os_log_type_enabled(v36, HIBYTE(v45));
        OUTLINED_FUNCTION_125();
        if (v39)
        {
          v40 = v38;
        }

        else
        {
          v40 = value;
        }

        if (v40)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_5_89();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417();
      }

      FigEndpointStreamAudioEngineSetEndpointStreamSync(*(v7 + 72), *(v7 + 56), v31);
      *(v7 + 168) = 0;
      if (SInt32)
      {
        CFRelease(SInt32);
      }

      return 0;
    }

LABEL_38:
    SInt32 = FigCFNumberCreateSInt32();
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v35)
    {
      v35(CMBaseObject, *MEMORY[0x1E6962598], SInt32);
    }

    goto LABEL_41;
  }

  return result;
}

uint64_t fbapo_flushWithinTimeRange(uint64_t a1, __int128 *a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_30_20();
  if (*v2)
  {
    v8 = 4294954511;
  }

  else
  {
    v10 = *a2;
    v11 = a2[1];
    v12 = a2[2];
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 240) = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 256) = *(v5 + 16);
    v6 = *(DerivedStorage + 72);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v7)
    {
      v13[0] = v10;
      v13[1] = v11;
      v13[2] = v12;
      v8 = v7(v6, v13);
    }

    else
    {
      v8 = 4294954514;
    }
  }

  FigSimpleMutexUnlock();
  return v8;
}

void fbapo_stopForReconfiguration(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_30_20();
  if (!*v1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (dword_1EAF17590)
    {
      v5 = OUTLINED_FUNCTION_126();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_46();
      if (v2)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_6_79();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0();
    }

    if (*(DerivedStorage + 72))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v7 = Mutable;
        if (!FigEndpointStreamAudioEngineSuspendSync(*(DerivedStorage + 72), 0, 3000))
        {
          *(DerivedStorage + 80) = 0;
          v8 = *(DerivedStorage + 72);
          v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v9)
          {
            if (!v9(v8, v7))
            {
              *(DerivedStorage + 81) = 0;
            }
          }
        }

        CFRelease(v7);
      }
    }

    else
    {
      *(DerivedStorage + 81) = 0;
    }
  }

  FigSimpleMutexUnlock();
  OUTLINED_FUNCTION_426_1();
}

uint64_t fbapo_setEndOfSiriTTSUtteranceMediaTime(uint64_t a1, __int128 *a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_30_20();
  if (*v2)
  {
    v17 = 4294954511;
  }

  else
  {
    v4 = *(v2 + 72);
    v19 = *a2;
    VTable = CMBaseObjectGetVTable();
    v14 = *(VTable + 16);
    v13 = VTable + 16;
    if (*(v14 + 56))
    {
      v15 = OUTLINED_FUNCTION_46_15(v13, v6, v7, v8, v9, v10, v11, v12, v19);
      v17 = v16(v4, v20, v15);
    }

    else
    {
      v17 = 4294954514;
    }
  }

  FigSimpleMutexUnlock();
  return v17;
}

uint64_t fbapo_applyVolueFade(uint64_t a1, uint64_t a2, __int128 *a3)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_30_20();
  if (*v3)
  {
    v19 = 4294954511;
  }

  else if ((a2 - 1) > 1)
  {
    v19 = 4294949976;
  }

  else
  {
    v6 = *(v3 + 72);
    v21 = *a3;
    VTable = CMBaseObjectGetVTable();
    v16 = *(VTable + 16);
    v15 = VTable + 16;
    if (*(v16 + 64))
    {
      v17 = OUTLINED_FUNCTION_46_15(v15, v8, v9, v10, v11, v12, v13, v14, v21);
      v19 = v18(v6, a2, v22, v17);
    }

    else
    {
      v19 = 4294954514;
    }
  }

  FigSimpleMutexUnlock();
  return v19;
}

void fbapo_setRateAndAnchorTimeDispatch(uint64_t a1)
{
  v99 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v54 = *(a1 + 88);
  v55 = *(a1 + 80);
  v51 = *(a1 + 96);
  v66 = *(a1 + 24);
  v67 = *(a1 + 40);
  *&v64.value = *(a1 + 48);
  v6 = *(a1 + 72);
  v64.epoch = *(a1 + 64);
  v57 = v3;
  v7 = CMBaseObjectGetDerivedStorage();
  v53 = *MEMORY[0x1E6960C70];
  *&v72.value = *MEMORY[0x1E6960C70];
  v52 = *(MEMORY[0x1E6960C70] + 16);
  v72.epoch = v52;
  FigSimpleMutexLock();
  if (dword_1EAF17590)
  {
    LODWORD(v75.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v8 = OUTLINED_FUNCTION_50_13();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = &off_196E72000;
  if (*v7)
  {
    v10 = -12785;
    goto LABEL_49;
  }

  v10 = *(v7 + 268);
  if (v10)
  {
    if (dword_1EAF17590)
    {
      LODWORD(v75.value) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v11 = OUTLINED_FUNCTION_50_13();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_46();
      v12 = v57;
      if (v1)
      {
        if (v57)
        {
          v13 = (CMBaseObjectGetDerivedStorage() + 208);
        }

        else
        {
          v13 = "";
        }

        LODWORD(v76.value) = 136315650;
        *(&v76.value + 4) = "fbapo_becomeActiveAndSetRateAndAnchorTime";
        LOWORD(v76.flags) = 2048;
        *(&v76.flags + 2) = v57;
        HIWORD(v76.epoch) = 2082;
        v77 = v13;
        OUTLINED_FUNCTION_23_1();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0();
      v10 = *(v7 + 268);
      goto LABEL_50;
    }

LABEL_49:
    v12 = v57;
    goto LABEL_50;
  }

  v12 = v57;
  if (v4)
  {
    if (v5 != 0.0)
    {
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v72, HostTimeClock);
      active = fbapo_becomeActiveEndpointStreamAudioEngineClient(v57, v6);
      if (active)
      {
        v10 = active;
        goto LABEL_50;
      }
    }
  }

  *type = v66;
  v71 = v67;
  v69 = v64;
  v68 = v72;
  v14 = CMBaseObjectGetDerivedStorage();
  v15 = v14;
  if (BYTE12(v66))
  {
    v16 = type;
  }

  else
  {
    v16 = (v14 + 84);
    if ((*(v14 + 96) & 1) == 0)
    {
      v16 = MEMORY[0x1E6960CC0];
    }
  }

  v17 = v55;
  v75 = *v16;
  v18 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A0040D348C322uLL);
  if (v18)
  {
    LODWORD(v55) = HIDWORD(v66);
    if (v5 == 0.0)
    {
      *&v75.value = v53;
      v75.epoch = v52;
    }

    v19 = *(v15 + 56);
    FigEndpointStreamAirPlayGetClassID();
    v10 = -17324;
    if (CMBaseObjectIsMemberOfClass() && v19)
    {
      *v18 = CFRetain(v57);
      *(v18 + 1) = v5;
      *(v18 + 1) = v66;
      *(v18 + 4) = v67;
      *(v18 + 5) = v17;
      *(v18 + 6) = v54;
      v20 = CMClockGetHostTimeClock();
      CMClockGetTime(&time, v20);
      *(v18 + 80) = time;
      *(v18 + 56) = v68;
      if (dword_1EAF17590)
      {
        v74 = 0;
        v73 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v22 = v74;
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v73);
        OUTLINED_FUNCTION_189();
        if (v24)
        {
          v25 = v23;
        }

        else
        {
          v25 = v22;
        }

        if (v25)
        {
          if (v57)
          {
            v26 = (CMBaseObjectGetDerivedStorage() + 208);
          }

          else
          {
            v26 = "";
          }

          time = v75;
          Seconds = CMTimeGetSeconds(&time);
          time = v64;
          v28 = CMTimeGetSeconds(&time);
          LODWORD(v76.value) = 136317186;
          *(&v76.value + 4) = "fbapo_setRateAndAnchorTimeInternal";
          LOWORD(v76.flags) = 2048;
          *(&v76.flags + 2) = v57;
          HIWORD(v76.epoch) = 2082;
          v77 = v26;
          v78 = 2048;
          v79 = v19;
          v80 = 2048;
          v81 = v5;
          v82 = 2048;
          v83 = Seconds;
          v84 = 2048;
          v85 = v28;
          v86 = 2048;
          v87 = fbapo_setRateAndAnchorTimeCallback;
          v88 = 2048;
          v89 = v18;
          OUTLINED_FUNCTION_23_1();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_524();
      }

      v29 = *(v15 + 72);
      if (v5 == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = 1.0;
      }

      v31 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v31)
      {
        time = v75;
        v76 = v69;
        v31(v29, &time, &v76, fbapo_setRateAndAnchorTimeCallback, v18, v51, v30);
      }

      else
      {
        fbapo_setRateAndAnchorTimeCallback(v29, -12782, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], 0, v18, 0.0);
      }

      v9 = &off_196E72000;
      v10 = 0;
      if (v5 != 0.0 && (v55 & 1) != 0 && *(v15 + 108))
      {
        v10 = 0;
        *(v15 + 112) = *type;
        *(v15 + 128) = v71;
        *(v15 + 108) = 0;
      }

      goto LABEL_50;
    }
  }

  else
  {
    v10 = -12786;
  }

  v9 = &off_196E72000;
  if (v17)
  {
    if (v57)
    {
      CFRetain(v57);
    }

    v46 = *(v15 + 24);
    time.value = MEMORY[0x1E69E9820];
    *&time.timescale = 0x40000000;
    time.epoch = __fbapo_setRateAndAnchorTimeInternal_block_invoke;
    v91 = COERCE_DOUBLE(&__block_descriptor_tmp_184_1);
    *&v92 = v5;
    v95 = v66;
    v96 = v67;
    v97 = v10;
    *(&v92 + 1) = v57;
    v93 = v17;
    v94 = v54;
    v98 = v64;
    dispatch_async(v46, &time);
  }

  if (v18)
  {
    if (*v18)
    {
      CFRelease(*v18);
    }

    free(v18);
  }

LABEL_50:
  *(v7 + 268) = 0;
  if (v5 == 0.0 || !v10)
  {
    FigSimpleMutexUnlock();
    if (!v10)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v34 = fig_log_handle();
    if (v12 + 1 >= 2)
    {
      v36 = v34;
      v37 = os_signpost_enabled(v34);
      if (v37)
      {
        v45 = OUTLINED_FUNCTION_36_22(v37, v38, v39, v40, v41, v42, v43, v44, v47, v48, v49, v50, v51, v52, v53, *(&v53 + 1), v54, v55, DerivedStorage, v57, block, v59, v60, v61, v62, v63, v64.value, *&v64.timescale, v64.epoch, v65, v66, v67);
        LODWORD(time.value) = 134218752;
        *(&time.value + 4) = v12;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = v5;
        HIWORD(time.epoch) = 2048;
        v91 = v45;
        LOWORD(v92) = 2048;
        *(&v92 + 2) = v10;
        _os_signpost_emit_with_name_impl(&dword_1962D5000, v36, OS_SIGNPOST_INTERVAL_END, v12, "kFigKTraceWHA_BAO_SetRateAndAnchorTime", "bao=%p, rate=%1.2f, mediaTime=%1.3f, error=%llu", &time, 0x2Au);
      }
    }

    FigSimpleMutexUnlock();
  }

  if (*(a1 + 80))
  {
    v35 = *(DerivedStorage + 24);
    block = MEMORY[0x1E69E9820];
    v59 = *(v9 + 312);
    v60 = __fbapo_setRateAndAnchorTimeDispatch_block_invoke;
    v61 = &__block_descriptor_tmp_183_0;
    v62 = a1;
    LODWORD(v63) = v10;
    dispatch_async(v35, &block);
    return;
  }

LABEL_59:
  fbapo_setRateAndAnchorTimeDispatchContextDestroy(a1);
}

void fbapo_setRateAndAnchorTimeDispatchContextDestroy(uint64_t *a1)
{
  if (a1)
  {
    v2 = a1[12];
    if (v2)
    {
      CFRelease(v2);
      a1[12] = 0;
    }

    v3 = a1[9];
    if (v3)
    {
      CFRelease(v3);
      a1[9] = 0;
    }

    fbapo_releaseAsync(*a1);

    free(a1);
  }
}

uint64_t fbapo_becomeActiveEndpointStreamAudioEngineClient(void *a1, uint64_t a2)
{
  v97 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = &dword_1EAF17000;
  if (dword_1EAF17590)
  {
    LODWORD(v87.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value_low = 0;
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_125();
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(lhs.value) = 136315906;
      OUTLINED_FUNCTION_9_48();
      v92 = 2112;
      v93 = a2;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_12_17();
      value_low = LODWORD(v87.value);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417();
  }

  v12 = fig_log_handle();
  if (a1 + 1 >= 2)
  {
    v21 = v12;
    if (os_signpost_enabled(v12))
    {
      OUTLINED_FUNCTION_40_18(3.852e-34);
      _os_signpost_emit_with_name_impl(&dword_1962D5000, v21, OS_SIGNPOST_INTERVAL_BEGIN, a1, "kFigKTraceWHA_BAO_BecomeActiveEndpointStream", "bao=%p", &buf, 0xCu);
    }
  }

  FigSimpleMutexCheckIsLockedOnThisThread();
  if (fbapo_amIActiveEndpointStreamClient() || *(DerivedStorage + 168) && fbapo_audioEngineIsResumed())
  {
    goto LABEL_142;
  }

  v13 = fbapo_setAudioSessionID(a1, 0);
  if (v13)
  {
    value_low = v13;
    goto LABEL_143;
  }

  v14 = *(DerivedStorage + 200);
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v16)
  {
    v16(CMBaseObject, *MEMORY[0x1E6962550], v14);
  }

  SInt32 = CMBaseObjectGetDerivedStorage();
  v88 = 0;
  theArray = 0;
  v87 = **&MEMORY[0x1E6960C70];
  cf = 0;
  v83 = SInt32;
  if (dword_1EAF17590)
  {
    OUTLINED_FUNCTION_10_46();
    OUTLINED_FUNCTION_47_17();
    os_log_type_enabled(v18, v84);
    OUTLINED_FUNCTION_125();
    if (v10)
    {
      v20 = v19;
    }

    else
    {
      v20 = value_low;
    }

    if (v20)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(lhs.value) = 136315650;
      OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_42_19();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417();
    SInt32 = v83;
  }

  doesEndpointStreamSupportMixedSampleRates = fbapo_doesEndpointStreamSupportMixedSampleRates();
  if (dword_1EAF17590)
  {
    OUTLINED_FUNCTION_10_46();
    OUTLINED_FUNCTION_47_17();
    os_log_type_enabled(v23, v84);
    OUTLINED_FUNCTION_125();
    if (v10)
    {
      v25 = v24;
    }

    else
    {
      v25 = value_low;
    }

    if (v25)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(lhs.value) = 136315906;
      *(&lhs.value + 4) = "fbapo_prepareAndResumeAudioEngineForBecomeActiveEndpointStreamClient";
      OUTLINED_FUNCTION_25_25();
      v92 = 2080;
      v93 = v26;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_42_19();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417();
    SInt32 = v83;
  }

  v27 = FigEndpointStreamGetCMBaseObject();
  v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v28)
  {
    OUTLINED_FUNCTION_75_8();
    Mutable = 0;
    value_low = 4294954514;
    goto LABEL_129;
  }

  v29 = *MEMORY[0x1E695E480];
  if (v28(v27, *MEMORY[0x1E69625A8], *MEMORY[0x1E695E480], &theArray))
  {
    OUTLINED_FUNCTION_17_31();
    Mutable = 0;
    goto LABEL_129;
  }

  if (!theArray)
  {
    OUTLINED_FUNCTION_2_40();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_17_31();
    Mutable = 0;
    goto LABEL_129;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    OUTLINED_FUNCTION_75_8();
    Mutable = 0;
    value_low = 4294949976;
    goto LABEL_129;
  }

  v31 = Count;
  allocator = v29;
  Mutable = CFArrayCreateMutable(v29, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_75_8();
    value_low = 4294954510;
    goto LABEL_129;
  }

  if (!a2)
  {
    v33 = FigEndpointStreamGetCMBaseObject();
    v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v34)
    {
      OUTLINED_FUNCTION_75_8();
      value_low = 4294954514;
      goto LABEL_129;
    }

    if (v34(v33, *MEMORY[0x1E6962590], allocator, &v88))
    {
      goto LABEL_157;
    }

    FigEndpointStreamAudioFormatDescriptionGetASBD();
    OUTLINED_FUNCTION_20_28();
    if (!dword_1EAF17590)
    {
      goto LABEL_64;
    }

    value_low = OUTLINED_FUNCTION_10_46();
    os_log_type_enabled(value_low, v84);
    OUTLINED_FUNCTION_189();
    if (v10)
    {
      value = v35;
    }

    else
    {
      value = type.value;
    }

    if (value)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_44_20();
      OUTLINED_FUNCTION_13_38();
      *(v75 + 66) = v74;
      *(v75 + 68) = v76;
      *(v75 + 72) = v74;
      *(v75 + 74) = v80;
      *(v75 + 78) = v74;
      *(v75 + 80) = v79;
      *(v75 + 84) = v74;
      *(v75 + 86) = v78;
      *(v75 + 90) = v74;
      *(v75 + 92) = v77;
      *(v75 + 96) = v74;
      *(v75 + 98) = v81;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    goto LABEL_63;
  }

  FigEndpointStreamAudioFormatDescriptionGetASBD();
  OUTLINED_FUNCTION_20_28();
  if (dword_1EAF17590)
  {
    value_low = OUTLINED_FUNCTION_10_46();
    os_log_type_enabled(value_low, v84);
    OUTLINED_FUNCTION_40();
    if (SInt32)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_44_20();
      OUTLINED_FUNCTION_13_38();
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
LABEL_63:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_64:
  v7 = 0;
  for (i = 0; i != v31; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
    ASBD = FigEndpointStreamAudioFormatDescriptionGetASBD();
    if (doesEndpointStreamSupportMixedSampleRates || *ASBD == v3)
    {
      CFArrayAppendValue(Mutable, ValueAtIndex);
      v7 = 1;
    }
  }

  SInt32 = v83;
  if (dword_1EAF17590)
  {
    LODWORD(type.value) = 0;
    value_low = OUTLINED_FUNCTION_16_35();
    os_log_type_enabled(value_low, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v7)
  {
    OUTLINED_FUNCTION_2_40();
    FigSignalErrorAtGM();
LABEL_157:
    OUTLINED_FUNCTION_17_31();
    goto LABEL_129;
  }

  if (v83[22])
  {
    v7 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v7)
    {
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      v40 = v83[8];
      if (v40)
      {
        v41 = *(CMBaseObjectGetVTable() + 16);
        if (v41)
        {
          v42 = *(v41 + 8);
          if (v42)
          {
            v42(v40, @"FAS_CoreSessionID", allocator, &cf);
          }
        }

        if (dword_1EAF17590)
        {
          LODWORD(type.value) = 0;
          OUTLINED_FUNCTION_16_35();
          OUTLINED_FUNCTION_47_17();
          os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_125();
          if (v10)
          {
            v45 = v44;
          }

          else
          {
            v45 = value_low;
          }

          if (v45)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            LODWORD(lhs.value) = 136315906;
            *(&lhs.value + 4) = "fbapo_prepareAndResumeAudioEngineForBecomeActiveEndpointStreamClient";
            OUTLINED_FUNCTION_25_25();
            v92 = 2112;
            v93 = v46;
            OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_38();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_42_19();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417();
          SInt32 = v83;
        }

        FigCFDictionarySetValue();
      }

      HostTimeClock = CMClockGetHostTimeClock();
      CMSyncGetTime(&v87, HostTimeClock);
      v48 = FigCFDictionaryGetValue();
      if (v48)
      {
        mach_absolute_time();
        FigCFDictionarySetInt64();
      }

      v49 = fig_log_handle();
      if (a1 + 1 >= 2 && os_signpost_enabled(v49))
      {
        OUTLINED_FUNCTION_40_18(3.852e-34);
        OUTLINED_FUNCTION_37_22(&dword_1962D5000, v58, v59, v60, "AIRPLAY_SIGNPOST_BAO_RESUME_AUDIOENGINE", "bao=%p");
      }

      v50 = FigEndpointStreamAudioEngineResumeSync(*(SInt32 + 72), v7, 6000);
      if (v50)
      {
        value_low = v50;
        SInt32 = 0;
      }

      else if (*(SInt32 + 168))
      {
        if (dword_1EAF17590)
        {
          LODWORD(type.value) = 0;
          OUTLINED_FUNCTION_16_35();
          OUTLINED_FUNCTION_47_17();
          os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_125();
          if (v10)
          {
            v53 = v52;
          }

          else
          {
            v53 = value_low;
          }

          if (v53)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            LODWORD(lhs.value) = 136315650;
            OUTLINED_FUNCTION_9_48();
            OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_38();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_42_19();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417();
        }

        SInt32 = 0;
        value_low = 0;
      }

      else
      {
        v54 = CMClockGetHostTimeClock();
        CMSyncGetTime(&lhs, v54);
        type = v87;
        CMTimeSubtract(&buf, &lhs, &type);
        *&type.value = *&buf.timescale;
        lhs = buf;
        CMTimeConvertScale(&buf, &lhs, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        *&type.value = *&buf.timescale;
        if (6000 - LODWORD(buf.value) <= 1)
        {
          v55 = 1;
        }

        else
        {
          v55 = 6000 - LODWORD(buf.value);
        }

        if (6000 - LODWORD(buf.value) < 501)
        {
          SInt32 = 0;
        }

        else
        {
          SInt32 = FigCFNumberCreateSInt32();
          v56 = FigEndpointStreamGetCMBaseObject();
          v57 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v57)
          {
            v57(v56, *MEMORY[0x1E6962598], SInt32);
          }
        }

        if (dword_1EAF17590)
        {
          v61 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_125();
          if (v10)
          {
            v63 = v62;
          }

          else
          {
            v63 = 0;
          }

          if (v63)
          {
            if (a1)
            {
              v64 = (CMBaseObjectGetDerivedStorage() + 208);
            }

            else
            {
              v64 = "";
            }

            v65 = v83[7];
            LODWORD(lhs.value) = 136316162;
            *(&lhs.value + 4) = "fbapo_prepareAndResumeAudioEngineForBecomeActiveEndpointStreamClient";
            LOWORD(lhs.flags) = 2048;
            *(&lhs.flags + 2) = a1;
            HIWORD(lhs.epoch) = 2082;
            v91 = v64;
            v92 = 2048;
            v93 = v65;
            v94 = 1024;
            v95 = v55;
            OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_38();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417();
        }

        if (v48)
        {
          mach_absolute_time();
          FigCFDictionarySetInt64();
        }

        v66 = fig_log_handle();
        if (a1 + 1 >= 2 && os_signpost_enabled(v66))
        {
          OUTLINED_FUNCTION_40_18(3.852e-34);
          OUTLINED_FUNCTION_37_22(&dword_1962D5000, v71, v72, v73, "AIRPLAY_SIGNPOST_BAO_SETENDPOINTSTREAM", "bao=%p");
        }

        value_low = FigEndpointStreamAudioEngineSetEndpointStreamSync(v83[9], v83[7], v55);
      }
    }

    else
    {
      SInt32 = 0;
      value_low = 4294954510;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_40();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_17_31();
  }

LABEL_129:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  if (v88)
  {
    CFRelease(v88);
  }

  if (!value_low)
  {
LABEL_142:
    CFDictionaryApplyFunction(*(DerivedStorage + 160), fbapo_applyCachedPropertiesForBecomeActiveIterator, a1);
    value_low = 0;
  }

LABEL_143:
  v67 = fig_log_handle();
  if (a1 + 1 >= 2)
  {
    v69 = v67;
    if (os_signpost_enabled(v67))
    {
      OUTLINED_FUNCTION_40_18(3.8521e-34);
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = v70;
      _os_signpost_emit_with_name_impl(&dword_1962D5000, v69, OS_SIGNPOST_INTERVAL_END, a1, "kFigKTraceWHA_BAO_BecomeActiveEndpointStream", "bao=%p, error=%llu", &buf, 0x16u);
    }
  }

  return value_low;
}

void __fbapo_setConnectionActive_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock();
  *(*(a1 + 32) + 268) = fbapo_becomeActiveEndpointStreamAudioEngineClient(*(a1 + 40), *(a1 + 48));
  if (dword_1EAF17590)
  {
    v2 = OUTLINED_FUNCTION_126();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_189();
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      if (*(a1 + 40))
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524();
  }

  FigSimpleMutexUnlock();
  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  fbapo_releaseAsync(*(a1 + 40));
}

uint64_t fbapo_airPlayPrefsChangedCallback(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v6 = 0;
  FigSimpleMutexLock();
  TypeID = CFStringGetTypeID();
  if (fbapo_getCachedValue(a2, TypeID, &v6))
  {
    v4 = @"AudioMode_Default";
  }

  else
  {
    v4 = v6;
  }

  fbapo_setAndCacheAudioMode(a2, v4, 0);

  return FigSimpleMutexUnlock();
}

uint64_t FigBufferedAirPlayOutputCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayOutputCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayOutputCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbapo_doesSupportPassthroughOfFormatDescription_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void fbapo_setRateAndAnchorTimeCallback_cold_1()
{
  if (dword_1EAF17590)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t FigCaptionRendererLegibleOutputCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererLegibleOutputCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererLegibleOutputCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

CFIndex FigCaptionStyleSegmentGetTextLength(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v2)
  {
    v3 = v2(v1);
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = &stru_1F0B1AFB8;
  }

  return CFStringGetLength(v3);
}

uint64_t fcstylesegmenter_setCaptionData(CFMutableArrayRef *a1, const void *a2)
{
  *v8 = 0;
  CFGetAllocator(a1);
  v4 = figCaptionStyleSegmentCreate(v8);
  v5 = *v8;
  if (v4)
  {
    v6 = v4;
    if (!*v8)
    {
      return v6;
    }

    goto LABEL_5;
  }

  v6 = figCaptionStyleSegmentSetCaptionData(*v8, a2);
  if (!v6)
  {
    CFArrayAppendValue(a1[9], v5);
  }

  if (v5)
  {
LABEL_5:
    CFRelease(v5);
  }

  return v6;
}

CFIndex FigCaptionStyleSegmentGeneratorGetSegmentCount(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 72)) != 0)
  {
    return CFArrayGetCount(v1);
  }

  else
  {
    return 0;
  }
}

const void *FigCaptionStyleSegmentGeneratorGetSegmentAtIndex(uint64_t a1, CFIndex a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
    return 0;
  }

  if (a2 < 0 || CFArrayGetCount(v3) <= a2)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
    return 0;
  }

  v5 = *(a1 + 72);

  return CFArrayGetValueAtIndex(v5, a2);
}

void fcstylesegmenter_buildTimeToAttributesMap(const void *a1, uint64_t *a2)
{
  v15 = 0;
  cf = 0;
  if (*(a2 + 16))
  {
    goto LABEL_21;
  }

  v4 = *a2;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v5)
  {
    v6 = -12782;
    goto LABEL_18;
  }

  v6 = v5(v4, 0, a1, *MEMORY[0x1E695E480], &cf, 0);
  if (v6)
  {
LABEL_18:
    *(a2 + 16) = v6;
    goto LABEL_19;
  }

  if (!cf)
  {
LABEL_27:
    OUTLINED_FUNCTION_303();
LABEL_28:
    v6 = FigSignalErrorAtGM();
    goto LABEL_29;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != FigCaptionDynamicStyleGetTypeID())
  {
    if (cf)
    {
      AttributeDictionaryForAnimationTime = insertOrGetAttributeDictionaryForAnimationTime(a2[7]);
      if (AttributeDictionaryForAnimationTime)
      {
        CFDictionarySetValue(AttributeDictionaryForAnimationTime, a1, cf);
        goto LABEL_19;
      }
    }

    goto LABEL_27;
  }

  KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount();
  if (KeyFrameCount < 1)
  {
    goto LABEL_19;
  }

  v9 = KeyFrameCount;
  v10 = 0;
  while (1)
  {
    v14 = 0;
    if (v15)
    {
      CFRelease(v15);
      v15 = 0;
    }

    v6 = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
    if (v6)
    {
      break;
    }

    if ((*(a2 + 11) & 0x1D) == 1)
    {
      v13 = *(a2 + 4);
      CMTimeGetSeconds(&v13);
    }

    v11 = insertOrGetAttributeDictionaryForAnimationTime(a2[7]);
    if (!v11 || !v15)
    {
      OUTLINED_FUNCTION_303();
      goto LABEL_28;
    }

    CFDictionarySetValue(v11, a1, v15);
    if (v9 == ++v10)
    {
      goto LABEL_19;
    }
  }

LABEL_29:
  if (v6)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v15)
  {
    CFRelease(v15);
  }

LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigCaptionStyleSegmentCopyText_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_149();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionStyleSegmentCopyCaptionData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_149();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionStyleSegmentCopyCaptionData_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_149();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionStyleSegmentCopyAttributes_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_149();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionStyleSegmentGeneratorPerform_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_133();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionStyleSegmentGeneratorPerform_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_133();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionStyleSegmentGeneratorPerform_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_149();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionStyleSegmentGeneratorCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_149();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionStyleSegmentGeneratorCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_149();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void figCaptionStyleSegmentCreate_cold_1(const void *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_1_133();
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t figCaptionStyleSegmentCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_133();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figCaptionStyleSegmentSetCaptionData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_149();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLTreeCreate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  valuePtr = 0;
  number = 0;
  cf = 0;
  v19 = 0;
  v5 = FigTTMLGetLibXMLAccess();
  if (!v5)
  {
    OUTLINED_FUNCTION_243();
LABEL_25:
    v9 = FigSignalErrorAtGM();
LABEL_26:
    v16 = v9;
    v10 = 0;
    goto LABEL_15;
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    v10 = 0;
    v13 = 0;
    v16 = 4294954514;
    goto LABEL_16;
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = v7(CMBaseObject, *MEMORY[0x1E695FF78], *MEMORY[0x1E695E480], &number);
  if (v9)
  {
    goto LABEL_26;
  }

  CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
  if (valuePtr >= 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_243();
    goto LABEL_25;
  }

  v10 = malloc_type_malloc(valuePtr + 1, 0x7DD95888uLL);
  if (!v10)
  {
    OUTLINED_FUNCTION_243();
    goto LABEL_14;
  }

  v11 = valuePtr;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v12 || v12(a2, v11, 0, v10, &v19) || v19 != valuePtr)
  {
    OUTLINED_FUNCTION_243();
LABEL_14:
    v16 = FigSignalErrorAtGM();
LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v10[v19] = 0;
  v13 = (*(v5 + 128))(v10, valuePtr, 0, 0, 0);
  FigTTMLMoveCurrentNodeTo(v13, 1);
  v14 = FigTTMLRootCreate(v8, v13, &cf);
  if (!v14)
  {
    MEMORY[0x19A8D3660](&FigTTMLTreeGetTypeID_sRegisterFigTTMLTreeOnce, figTTMLTreeRegisterFigTTMLTree);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v16 = 0;
      *(Instance + 16) = cf;
      cf = 0;
      *a3 = Instance;
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_243();
    v14 = FigSignalErrorAtGM();
  }

  v16 = v14;
LABEL_16:
  free(v10);
  if (number)
  {
    CFRelease(number);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    (*(v5 + 64))(v13);
  }

  return v16;
}

uint64_t FigTTMLTreeCreateWithCString(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = strlen(__s);
  result = FigCreateBlockBufferCopyingMemoryBlock();
  if (!result)
  {
    result = CMBlockBufferReplaceDataBytes(__s, 0, 0, v6);
    if (!result)
    {
      result = CMByteStreamCreateForBlockBuffer();
      if (!result)
      {
        return FigTTMLTreeCreate(a1, 0, a3);
      }
    }
  }

  return result;
}

uint64_t FigTTMLTreeWalkFromNode(const void *a1, uint64_t (*a2)(const void *, uint64_t), uint64_t (*a3)(const void *, uint64_t), uint64_t a4)
{
  v8 = *MEMORY[0x1E695E480];
  v9 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v11 = CFArrayCreateMutable(v8, 0, v9);
  theArray = 0;
  CFArrayAppendValue(Mutable, a1);
  v12 = *MEMORY[0x1E695E4C0];
  CFArrayAppendValue(v11, *MEMORY[0x1E695E4C0]);
  if (CFArrayGetCount(Mutable))
  {
    v13 = *MEMORY[0x1E695E4D0];
    do
    {
      Count = CFArrayGetCount(Mutable);
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, Count - 1);
      v16 = CFArrayGetCount(v11);
      v17 = CFArrayGetValueAtIndex(v11, v16 - 1);
      if (CFBooleanGetValue(v17))
      {
        if (a3)
        {
          v18 = a3(ValueAtIndex, a4);
          if (v18)
          {
LABEL_24:
            v23 = v18;
            if (!Mutable)
            {
              goto LABEL_19;
            }

LABEL_18:
            CFRelease(Mutable);
            goto LABEL_19;
          }
        }

        v19 = CFArrayGetCount(Mutable);
        CFArrayRemoveValueAtIndex(Mutable, v19 - 1);
        v20 = CFArrayGetCount(v11);
        CFArrayRemoveValueAtIndex(v11, v20 - 1);
      }

      else
      {
        v21 = CFArrayGetCount(v11);
        CFArraySetValueAtIndex(v11, v21 - 1, v13);
        if (a2)
        {
          v22 = a2(ValueAtIndex, a4);
          if (v22 == -16573)
          {
            continue;
          }

          v23 = v22;
          if (v22)
          {
            goto LABEL_17;
          }
        }

        v18 = FigTTMLNodeCopyChildNodeArray(ValueAtIndex, &theArray);
        if (v18)
        {
          goto LABEL_24;
        }

        v24 = CFArrayGetCount(theArray);
        v25 = v24 - 1;
        if (v24 >= 1)
        {
          do
          {
            v26 = CFArrayGetValueAtIndex(theArray, v25);
            CFArrayAppendValue(Mutable, v26);
            CFArrayAppendValue(v11, v12);
            --v25;
          }

          while (v25 != -1);
        }

        if (theArray)
        {
          CFRelease(theArray);
          theArray = 0;
        }
      }
    }

    while (CFArrayGetCount(Mutable));
  }

  v23 = 0;
LABEL_17:
  if (Mutable)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v11)
  {
    CFRelease(v11);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v23;
}

uint64_t figTTMLTreeBuildFeatureAndExtensionSet(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  value = &stru_1F0B1AFB8;
  theDict = 0;
  cf1 = @"required";
  NodeType = FigTTMLNodeGetNodeType(a1, &v20);
  if (!NodeType)
  {
    if ((v20 & 0xFFFFFFFE) != 0x12)
    {
LABEL_26:
      v14 = 0;
      goto LABEL_27;
    }

    ParentNode = FigTTMLNodeGetParentNode();
    NodeType = FigTTMLNodeCopyAttributes(ParentNode, &theDict);
    if (!NodeType)
    {
      if (theDict)
      {
        CFDictionaryGetValueIfPresent(theDict, @"http://www.w3.org/XML/1998/namespace base", &value);
        if (theDict)
        {
          CFRelease(theDict);
          theDict = 0;
        }
      }

      NodeType = FigTTMLNodeCopyAttributes(a1, &theDict);
      if (!NodeType)
      {
        v6 = @"required";
        if (theDict)
        {
          CFDictionaryGetValueIfPresent(theDict, @"value", &cf1);
          v6 = cf1;
        }

        if (CFEqual(v6, @"optional"))
        {
          v7 = 1;
        }

        else if (CFEqual(cf1, @"required"))
        {
          v7 = 2;
        }

        else
        {
          v7 = 4 * (CFEqual(cf1, @"use") != 0);
        }

        if ((*a2 & v7) == 0)
        {
          goto LABEL_26;
        }

        URLString = 0;
        NodeType = FigTTMLNodeCopyNodeValue(a1, &URLString);
        if (!NodeType)
        {
          if (URLString)
          {
            v8 = *MEMORY[0x1E695E480];
            v9 = CFURLCreateWithString(*MEMORY[0x1E695E480], value, 0);
            v10 = CFURLCreateWithString(v8, URLString, v9);
            v11 = CFURLCopyAbsoluteURL(v10);
            v12 = *(a2 + 8);
            v13 = CFURLGetString(v11);
            CFSetSetValue(v12, v13);
            if (URLString)
            {
              CFRelease(URLString);
            }

            if (v11)
            {
              CFRelease(v11);
            }

            if (v10)
            {
              CFRelease(v10);
            }

            if (v9)
            {
              CFRelease(v9);
            }

            goto LABEL_26;
          }

          NodeType = FigSignalErrorAtGM();
        }
      }
    }
  }

  v14 = NodeType;
LABEL_27:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v14;
}

uint64_t figTTMLTreeAppendSliceTimeToArray(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v8 = 0;
  result = FigTTMLNodeGetNodeType(a1, &v8);
  if (!result)
  {
    if ((v8 & 0xFFFFFFFB) != 0xA)
    {
      return 0;
    }

    result = FigTTMLNodeGetActiveTimeRange(a1, &v9);
    if (result)
    {
      return result;
    }

    if ((BYTE12(v9) & 1) == 0)
    {
      return 0;
    }

    result = 0;
    if ((BYTE4(v11) & 1) != 0 && !*(&v11 + 1) && (*(&v10 + 1) & 0x8000000000000000) == 0)
    {
      if (v8 == 10)
      {
        OUTLINED_FUNCTION_1_134();
        time2 = **&MEMORY[0x1E6960CC0];
        if (CMTimeCompare(&time1.start, &time2))
        {
          OUTLINED_FUNCTION_1_134();
          FigCFArrayAppendCMTime();
        }

        OUTLINED_FUNCTION_177_1();
        CMTimeRangeGetEnd(&v6, &time1);
        v3 = v6.flags & 0x1D;
      }

      else
      {
        if ((BYTE12(v9) & 0x1D) == 1)
        {
          OUTLINED_FUNCTION_1_134();
          FigCFArrayAppendCMTime();
        }

        OUTLINED_FUNCTION_177_1();
        CMTimeRangeGetEnd(&v4, &time1);
        v3 = v4.flags & 0x1D;
      }

      if (v3 == 1)
      {
        OUTLINED_FUNCTION_177_1();
        CMTimeRangeGetEnd(&time2, &time1);
        FigCFArrayAppendCMTime();
      }

      return 0;
    }
  }

  return result;
}

uint64_t FigTTMLTreeCopyActiveRegionArray(uint64_t a1, __int128 *a2, CFMutableArrayRef *a3)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v9 = *a2;
  v10 = *(a2 + 2);
  v11 = Mutable;
  v7 = FigTTMLTreeWalkFromNode(*(a1 + 16), figTTMLTreeAppendActiveRegionsForTime, 0, &v9);
  if (v7)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    *a3 = Mutable;
  }

  return v7;
}

uint64_t figTTMLTreeAppendActiveRegionsForTime(const void *a1, uint64_t a2)
{
  v10 = 0;
  NodeType = FigTTMLNodeGetNodeType(a1, &v10);
  if (NodeType)
  {
    return NodeType;
  }

  if (v10 == 2)
  {
    return 4294950723;
  }

  if (v10 != 10)
  {
    return 0;
  }

  memset(&v9, 0, sizeof(v9));
  ActiveTimeRange = FigTTMLNodeGetActiveTimeRange(a1, &v9);
  if (!ActiveTimeRange)
  {
    range = v9;
    OUTLINED_FUNCTION_89();
    if (CMTimeRangeContainsTime(&range, &v7))
    {
      CFArrayAppendValue(*(a2 + 24), a1);
    }
  }

  return ActiveTimeRange;
}

uint64_t FigTTMLTreeAppendActiveNodesToArray(uint64_t *cf, uint64_t a2, __CFArray *a3)
{
  if (a3)
  {
    v5 = cf + 4;
    if (cf[4] || (v6 = CFGetAllocator(cf), result = FigTTMLIntervalTreeCreate(v6, cf, v5), !result))
    {
      OUTLINED_FUNCTION_89();
      return FigTTMLIntervalTreeAppendActiveNodesToArray(v8, &v9, a3);
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigTTMLTreeCopyFeatureAndExtensionSet_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLTreeCopySliceTimeRangeArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLTreeGetNodeByID_cold_1(uint64_t a1, const void *a2, void *a3)
{
  if (FigTTMLTreeWalkFromNode(*(a1 + 16), figTTMLTreeBuildIDToNodeDictionary, 0, a2))
  {
    CFRelease(a2);
    return 0;
  }

  else
  {
    *a3 = a2;
    return 1;
  }
}

uint64_t FigCaptionTimelineGeneratorAddSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  if (a1 && a2)
  {
    if (FigSampleBufferGetCaptionGroup())
    {
      v161 = v2;
      v5 = *(a1 + 16);
      if (v5)
      {
        Count = CFArrayGetCount(v5);
        HIDWORD(v201) = Count > 0;
        if (Count < 1)
        {
          HIDWORD(v201) = 0;
        }

        else
        {
          for (i = 0; i != Count; ++i)
          {
            v8 = OUTLINED_FUNCTION_10_47();
            *(CFArrayGetValueAtIndex(v8, v9) + 129) = 0;
          }
        }
      }

      else
      {
        HIDWORD(v201) = 0;
        Count = 0;
      }

      memset(&v226, 0, sizeof(v226));
      CMSampleBufferGetOutputPresentationTimeStamp(&start.start, a2);
      CMSampleBufferGetOutputDuration(&duration.start, a2);
      CMTimeRangeMake(&v226, &start.start, &duration.start);
      SliceCount = FigCaptionGroupGetSliceCount();
      if (SliceCount)
      {
        v10 = 0;
        v181 = *MEMORY[0x1E6960560];
        v171 = *MEMORY[0x1E6960558];
        do
        {
          CaptionData = FigCaptionGroupGetCaptionData();
          memset(&v225, 0, sizeof(v225));
          fctg_getAttachmentTime(a2, v181, &v225);
          memset(&v224, 0, sizeof(v224));
          fctg_getAttachmentTime(a2, v171, &v224);
          memset(&duration, 0, sizeof(duration));
          PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&lhs, a2);
          v233 = v225;
          OUTLINED_FUNCTION_9_49(PresentationTimeStamp, v13, v14, v15, v16, v17, v18, v19, v161, v171, v181, SliceCount, v201, v211.value, *&v211.timescale, v211.epoch, v212.value, *&v212.timescale, v212.epoch, v213, v214.value, *&v214.timescale, v214.epoch, v215, v216.n128_i64[0], v216.n128_i64[1], epoch, v218, lhs.value);
          v20 = CMSampleBufferGetDuration(&v233, a2);
          OUTLINED_FUNCTION_7_66(v20, v21, v22, v23, v24, v25, v26, v27, v162, v172, v182, v192, v202, v211.value, *&v211.timescale, v211.epoch, v212.value, *&v212.timescale, v212.epoch, v213, v214.value, *&v214.timescale, v214.epoch, v215, v216.n128_i64[0], v216.n128_i64[1], epoch, v218, lhs.value, *&lhs.timescale, lhs.epoch, v220.value, *&v220.timescale, v220.epoch, v221.value, *&v221.timescale, v221.epoch, v222.value, *&v222.timescale, v222.epoch, duration.start.value, *&duration.start.timescale, duration.start.epoch, duration.duration.value, *&duration.duration.timescale, duration.duration.epoch, v224.value, *&v224.timescale, v224.epoch, *&v225.value);
          rhs = v224;
          CMTimeAdd(&v232, &lhs, &rhs);
          CMTimeSubtract(&lhs, &v233, &v232);
          CMTimeRangeMake(&duration, &start.start, &lhs);
          memset(&v222, 0, sizeof(v222));
          DurationBeforeSlice = FigCaptionGroupGetDurationBeforeSlice();
          OUTLINED_FUNCTION_7_66(DurationBeforeSlice, v29, v30, v31, v32, v33, v34, v35, v163, v173, v183, v193, v203, v211.value, *&v211.timescale, v211.epoch, v212.value, *&v212.timescale, v212.epoch, v213, v214.value, *&v214.timescale, v214.epoch, v215, v216.n128_i64[0], v216.n128_i64[1], epoch, v218, lhs.value, *&lhs.timescale, lhs.epoch, v220.value, *&v220.timescale, v220.epoch, v221.value, *&v221.timescale, v221.epoch, v222.value, *&v222.timescale, v222.epoch, duration.start.value, *&duration.start.timescale, duration.start.epoch, duration.duration.value, *&duration.duration.timescale, duration.duration.epoch, v224.value, *&v224.timescale, v224.epoch, *&v225.value);
          CMTimeAdd(&v222, &start.start, &lhs);
          memset(&v221, 0, sizeof(v221));
          FigCaptionGroupGetDurationAfterSlice();
          lhs = v224;
          CMTimeAdd(&v221, &start.start, &lhs);
          if (HIDWORD(v204))
          {
            v36 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v36);
              v216 = OUTLINED_FUNCTION_6_80(ValueAtIndex, v38, v39, v40, v41, v42, v43, v44, v164, v174, v184, v194, v204, v211.value, *&v211.timescale, v211.epoch, v212.value, *&v212.timescale, v212.epoch, v213, v214.value, *&v214.timescale, v214.epoch, v215, v216.n128_i64[0], v216.n128_i64[1], epoch, v218, lhs.value, *&lhs.timescale, lhs.epoch, v220.value, *&v220.timescale, v220.epoch, v221.value, *&v221.timescale, v221.epoch, *&v222.value);
              epoch = v222.epoch;
              v214 = v221;
              v212 = v226.start;
              memset(&v233, 0, sizeof(v233));
              *&start.start.value = *(v45 + 56);
              start.start.epoch = *(v45 + 72);
              v232 = *(v45 + 104);
              CMTimeAdd(&v233, &start.start, &v232);
              memset(&v232, 0, sizeof(v232));
              v46 = *(ValueAtIndex + 8);
              v47 = *(ValueAtIndex + 40);
              *&start.start.epoch = *(ValueAtIndex + 24);
              *&start.duration.timescale = v47;
              *&start.start.value = v46;
              CMTimeRangeGetEnd(&v232, &start);
              if ((ValueAtIndex[128] & 1) == 0)
              {
                start.start = v233;
                rhs = lhs;
                v48 = OUTLINED_FUNCTION_2_130();
                if (!CMTimeCompare(v48, v49))
                {
                  start.start = v232;
                  rhs = v212;
                  v50 = OUTLINED_FUNCTION_2_130();
                  v52 = CMTimeCompare(v50, v51);
                  if (!v52)
                  {
                    memset(&v229[32], 0, 24);
                    start.start = lhs;
                    OUTLINED_FUNCTION_11_51(v52, v53, v54, v55, v56, v57, v58, v59, v164, v174, v184, v194, v204, v211.value, *&v211.timescale, v211.epoch, v212.value, *&v212.timescale, v212.epoch, v213, v214.value, *&v214.timescale, v214.epoch, v215, *&lhs.value, v216.n128_i64[0]);
                    v60 = OUTLINED_FUNCTION_2_130();
                    v63 = CMTimeSubtract(v62, v60, v61);
                    *&start.start.value = *(ValueAtIndex + 56);
                    start.start.epoch = *(ValueAtIndex + 9);
                    OUTLINED_FUNCTION_1_135(v63, v64, v65, v66, v67, v68, v69, v70, v165, v175, v185, v195, v205, v211.value, *&v211.timescale, v211.epoch, v212.value, *&v212.timescale, v212.epoch, v213, v214.value, *&v214.timescale, v214.epoch, v215, v216.n128_i64[0], v216.n128_i64[1], epoch, v218, lhs.value, *&lhs.timescale, lhs.epoch, v220.value, *&v220.timescale, v220.epoch, v221.value, *&v221.timescale, v221.epoch, v222.value, *&v222.timescale, v222.epoch, duration.start.value, *&duration.start.timescale, duration.start.epoch, duration.duration.value, *&duration.duration.timescale, duration.duration.epoch, v224.value, *&v224.timescale, v224.epoch, v225.value, *&v225.timescale, v225.epoch, v226.start.value, *&v226.start.timescale, v226.start.epoch, v226.duration.value, *&v226.duration.timescale, v226.duration.epoch, v227.value, *&v227.timescale, v227.epoch, v228, *v229);
                    v71 = OUTLINED_FUNCTION_2_130();
                    v73 = CMTimeCompare(v71, v72);
                    if (!v73)
                    {
                      memset(v229, 0, 24);
                      OUTLINED_FUNCTION_11_51(v73, v74, v75, v76, v77, v78, v79, v80, v164, v174, v184, v194, v204, v211.value, *&v211.timescale, v211.epoch, v212.value, *&v212.timescale, v212.epoch, v213, v214.value, *&v214.timescale, v214.epoch, v215, v81, v216.n128_i64[0]);
                      v227 = v220;
                      CMTimeAdd(&start.start, &rhs, &v227);
                      rhs = v214;
                      v82 = OUTLINED_FUNCTION_2_130();
                      v85 = CMTimeAdd(v84, v82, v83);
                      *&start.start.value = *(ValueAtIndex + 5);
                      start.start.epoch = *(ValueAtIndex + 12);
                      OUTLINED_FUNCTION_13_39(v85, v86, v87, v88, v89, v90, v91, v92, v166, v176, v186, v196, v206, v211.value, *&v211.timescale, v211.epoch, v212.value, *&v212.timescale, v212.epoch, v213, v214.value, *&v214.timescale, v214.epoch, v215, v216.n128_i64[0], v216.n128_i64[1], epoch, v218, lhs.value, *&lhs.timescale, lhs.epoch, v220.value, *&v220.timescale, v220.epoch, v221.value, *&v221.timescale, v221.epoch, v222.value, *&v222.timescale, v222.epoch, duration.start.value, *&duration.start.timescale, duration.start.epoch, duration.duration.value, *&duration.duration.timescale, duration.duration.epoch, v224.value, *&v224.timescale, v224.epoch, v225.value, *&v225.timescale, v225.epoch, v226.start.value, *&v226.start.timescale, v226.start.epoch, v226.duration.value, *&v226.duration.timescale, v226.duration.epoch, v227.value, *&v227.timescale, v227.epoch, v228, *v229);
                      v93 = OUTLINED_FUNCTION_2_130();
                      if (!CMTimeCompare(v93, v94))
                      {
                        v95 = CFEqual(*ValueAtIndex, CaptionData);
                        if (v95)
                        {
                          break;
                        }
                      }
                    }
                  }
                }
              }

              if (Count == ++v36)
              {
                goto LABEL_22;
              }
            }

            v233 = v226.duration;
            v232 = duration.duration;
            lhs = *(ValueAtIndex + 32);
            v147 = OUTLINED_FUNCTION_9_49(v95, v96, v97, v98, v99, v100, v101, v102, v164, v174, v184, v194, v204, v211.value, *&v211.timescale, v211.epoch, v212.value, *&v212.timescale, v212.epoch, v213, v214.value, *&v214.timescale, v214.epoch, v215, v216.n128_i64[0], v216.n128_i64[1], epoch, v218, lhs.value);
            *(ValueAtIndex + 2) = *&start.start.value;
            *(ValueAtIndex + 6) = start.start.epoch;
            lhs = *(ValueAtIndex + 104);
            v233 = v232;
            OUTLINED_FUNCTION_9_49(v147, v148, v149, v150, v151, v152, v153, v154, v170, v180, v190, v200, v210, v211.value, *&v211.timescale, v211.epoch, v212.value, *&v212.timescale, v212.epoch, v213, v214.value, *&v214.timescale, v214.epoch, v215, v216.n128_i64[0], v216.n128_i64[1], epoch, v218, lhs.value);
            *(ValueAtIndex + 104) = *&start.start.value;
            *(ValueAtIndex + 15) = start.start.epoch;
            ValueAtIndex[129] = 1;
          }

          else
          {
LABEL_22:
            OUTLINED_FUNCTION_12_46();
            *&v229[32] = OUTLINED_FUNCTION_6_80(v103, v104, v105, v106, v107, v108, v109, v110, v164, v174, v184, v194, v204, v211.value, *&v211.timescale, v211.epoch, v212.value, *&v212.timescale, v212.epoch, v213, v214.value, *&v214.timescale, v214.epoch, v215, v216.n128_i64[0], v216.n128_i64[1], epoch, v218, lhs.value, *&lhs.timescale, lhs.epoch, v220.value, *&v220.timescale, v220.epoch, v221.value, *&v221.timescale, v221.epoch, *&v222.value);
            *&v229[48] = v222.epoch;
            *v229 = v221;
            v111 = malloc_type_calloc(1uLL, 0x90uLL, 0x1060040E0E536C3uLL);
            if (!v111)
            {
              OUTLINED_FUNCTION_16_36();
              FigSignalErrorAtGM();
              OUTLINED_FUNCTION_16_36();
              goto LABEL_40;
            }

            v119 = v111;
            if (CaptionData)
            {
              v120 = CFRetain(CaptionData);
            }

            else
            {
              v120 = 0;
            }

            v121 = *&start.start.epoch;
            *(v119 + 8) = *&start.start.value;
            *v119 = v120;
            *(v119 + 24) = v121;
            *(v119 + 40) = *&start.duration.timescale;
            v232 = lhs;
            OUTLINED_FUNCTION_1_135(v120, v112, v113, v114, v115, v116, v117, v118, v167, v177, v187, v197, v207, v211.value, *&v211.timescale, v211.epoch, v212.value, *&v212.timescale, v212.epoch, v213, v214.value, *&v214.timescale, v214.epoch, v215, v216.n128_i64[0], v216.n128_i64[1], epoch, v218, lhs.value, *&lhs.timescale, lhs.epoch, v220.value, *&v220.timescale, v220.epoch, v221.value, *&v221.timescale, v221.epoch, v222.value, *&v222.timescale, v222.epoch, duration.start.value, *&duration.start.timescale, duration.start.epoch, duration.duration.value, *&duration.duration.timescale, duration.duration.epoch, v224.value, *&v224.timescale, v224.epoch, v225.value, *&v225.timescale, v225.epoch, v226.start.value, *&v226.start.timescale, v226.start.epoch, v226.duration.value, *&v226.duration.timescale, v226.duration.epoch, v227.value, *&v227.timescale, v227.epoch, v228, *v229);
            v122 = OUTLINED_FUNCTION_4_103();
            CMTimeSubtract(v124, v122, v123);
            *(v119 + 56) = v233;
            v233 = *&v229[32];
            rhs = v220;
            v125 = CMTimeAdd(&v232, &v233, &rhs);
            OUTLINED_FUNCTION_13_39(v125, v126, v127, v128, v129, v130, v131, v132, v168, v178, v188, v198, v208, v211.value, *&v211.timescale, v211.epoch, v212.value, *&v212.timescale, v212.epoch, v213, v214.value, *&v214.timescale, v214.epoch, v215, v216.n128_i64[0], v216.n128_i64[1], epoch, v218, lhs.value, *&lhs.timescale, lhs.epoch, v220.value, *&v220.timescale, v220.epoch, v221.value, *&v221.timescale, v221.epoch, v222.value, *&v222.timescale, v222.epoch, duration.start.value, *&duration.start.timescale, duration.start.epoch, duration.duration.value, *&duration.duration.timescale, duration.duration.epoch, v224.value, *&v224.timescale, v224.epoch, v225.value, *&v225.timescale, v225.epoch, v226.start.value, *&v226.start.timescale, v226.start.epoch, v226.duration.value, *&v226.duration.timescale, v226.duration.epoch, v227.value, *&v227.timescale, v227.epoch, v228, *v229);
            v133 = OUTLINED_FUNCTION_4_103();
            v136 = CMTimeAdd(v135, v133, v134);
            *(v119 + 80) = v233;
            v232 = v220;
            OUTLINED_FUNCTION_1_135(v136, v137, v138, v139, v140, v141, v142, v143, v169, v179, v189, v199, v209, v211.value, *&v211.timescale, v211.epoch, v212.value, *&v212.timescale, v212.epoch, v213, v214.value, *&v214.timescale, v214.epoch, v215, v216.n128_i64[0], v216.n128_i64[1], epoch, v218, lhs.value, *&lhs.timescale, lhs.epoch, v220.value, *&v220.timescale, v220.epoch, v221.value, *&v221.timescale, v221.epoch, v222.value, *&v222.timescale, v222.epoch, duration.start.value, *&duration.start.timescale, duration.start.epoch, duration.duration.value, *&duration.duration.timescale, duration.duration.epoch, v224.value, *&v224.timescale, v224.epoch, v225.value, *&v225.timescale, v225.epoch, v226.start.value, *&v226.start.timescale, v226.start.epoch, v226.duration.value, *&v226.duration.timescale, v226.duration.epoch, v227.value, *&v227.timescale, v227.epoch, v228, *v229);
            v144 = OUTLINED_FUNCTION_4_103();
            CMTimeAdd(v146, v144, v145);
            *(v119 + 104) = v233;
            v119[128] = 0;
            CFArrayAppendValue(*(a1 + 16), v119);
          }

          ++v10;
        }

        while (v10 != SliceCount);
      }

      if (HIDWORD(v201))
      {
        v155 = 0;
        do
        {
          v156 = OUTLINED_FUNCTION_10_47();
          v158 = CFArrayGetValueAtIndex(v156, v157);
          if ((v158[129] & 1) == 0)
          {
            v158[128] = 1;
          }

          ++v155;
        }

        while (Count != v155);
      }

      memset(&v211, 0, sizeof(v211));
      OUTLINED_FUNCTION_12_46();
      CMTimeRangeGetEnd(&v211, &start);
      do
      {
        start.start = v211;
      }

      while ((fctg_generateAndOutputCaptions(a1, &start) & 1) != 0);
    }

    v159 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_1_19();
LABEL_40:
    v159 = FigSignalErrorAtGM();
  }

  fctg_freeBuddingCaption(0);
  return v159;
}

uint64_t fctg_generateAndOutputCaptions(uint64_t a1, uint64_t a2)
{
  Count = CFArrayGetCount(*(a1 + 16));
  v137 = 0;
  memset(&v136, 0, sizeof(v136));
  *&lhs.start.value = *a2;
  lhs.start.epoch = *(a2 + 16);
  rhs = *(a1 + 40);
  CMTimeSubtract(&duration.start, &lhs.start, &rhs);
  *&lhs.start.value = *(a1 + 40);
  lhs.start.epoch = *(a1 + 56);
  v5 = CMTimeRangeMake(&v136, &lhs.start, &duration.start);
  v14 = MEMORY[0x1E6960CC0];
  if (Count)
  {
    do
    {
      duration = *(OUTLINED_FUNCTION_18_32() + 8);
      *&lhs.start.value = *(a1 + 40);
      lhs.start.epoch = *(a1 + 56);
      *&rhs.value = *&duration.start.value;
      OUTLINED_FUNCTION_3_107();
      if (CMTimeCompare(v15, v16))
      {
        lhs = v136;
        *&rhs.value = *&duration.start.value;
        OUTLINED_FUNCTION_3_107();
        if (CMTimeRangeContainsTime(v17, v18))
        {
          rhs = duration.start;
          v19 = OUTLINED_FUNCTION_17_32(*(a1 + 56), v127.value, *&v127.timescale, v127.epoch, v128.value, *&v128.timescale, v128.epoch, *(a1 + 40), *(a1 + 48), v131, v132, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, duration.start.value);
          OUTLINED_FUNCTION_15_40(v19, v20, v21, v22, v23, v24, v25, v26, v127.value, *&v127.timescale, v127.epoch, v128.value, *&v128.timescale, v128.epoch, v129, v130, v131, v132, v27, lhs.start.value);
        }
      }

      OUTLINED_FUNCTION_378_0();
    }

    while (!v28);
    do
    {
      v29 = OUTLINED_FUNCTION_18_32();
      if (v29[128] == 1)
      {
        duration = *(v29 + 8);
        *&lhs.start.value = *&duration.start.value;
        *&lhs.start.epoch = *&duration.start.epoch;
        v30 = *(a1 + 40);
        *&lhs.duration.timescale = *&duration.duration.timescale;
        *&rhs.value = v30;
        OUTLINED_FUNCTION_3_107();
        v33 = CMTimeRangeContainsTime(v31, v32);
        if (v33)
        {
          OUTLINED_FUNCTION_5_90(v33, v34, v35, v36, v37, v38, v39, v40, v127.value, *&v127.timescale, v127.epoch, v128.value, *&v128.timescale, v128.epoch, v129, v130, v131, v132, *&lhs.start.value, *&lhs.start.epoch, *&lhs.duration.timescale, rhs.value);
          lhs = v136;
          v41 = CMTimeRangeContainsTime(&lhs, &rhs);
          if (v41)
          {
            OUTLINED_FUNCTION_5_90(v41, v42, v43, v44, v45, v46, v47, v48, v127.value, *&v127.timescale, v127.epoch, v128.value, *&v128.timescale, v128.epoch, v129, v130, v131, v132, *&lhs.start.value, *&lhs.start.epoch, *&lhs.duration.timescale, rhs.value);
            v49 = OUTLINED_FUNCTION_17_32(v136.start.epoch, v127.value, *&v127.timescale, v127.epoch, v128.value, *&v128.timescale, v128.epoch, v136.start.value, *&v136.start.timescale, v131, v132, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, rhs.value);
            OUTLINED_FUNCTION_15_40(v49, v50, v51, v52, v53, v54, v55, v56, v127.value, *&v127.timescale, v127.epoch, v128.value, *&v128.timescale, v128.epoch, v129, v130, v131, v132, v57, lhs.start.value);
          }
        }
      }

      OUTLINED_FUNCTION_378_0();
    }

    while (!v28);
    do
    {
      v58 = OUTLINED_FUNCTION_18_32();
      if ((v58[128] & 1) == 0)
      {
        *&duration.start.value = *(a1 + 40);
        duration.start.epoch = *(a1 + 56);
        v59 = *(v58 + 8);
        lhs.start.epoch = *(v58 + 3);
        *&lhs.start.value = v59;
        if (!CMTimeCompare(&duration.start, &lhs.start))
        {
          v136.duration = *v14;
        }
      }

      OUTLINED_FUNCTION_378_0();
    }

    while (!v28);
  }

  OUTLINED_FUNCTION_0_150(v5, v6, v7, v8, v9, v10, v11, v12, v127.value, *&v127.timescale, v127.epoch, v128.value, *&v128.timescale, v128.epoch, v129, v130, v131, v132, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v135, *&v136.start.value, *&v136.start.epoch, v13);
  End = CMTimeRangeGetEnd(&v128, &duration);
  if (v128.flags)
  {
    OUTLINED_FUNCTION_0_150(End, v61, v62, v63, v64, v65, v66, v67, v127.value, *&v127.timescale, v127.epoch, v128.value, *&v128.timescale, v128.epoch, v129, v130, v131, v132, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v135, *&v136.start.value, *&v136.start.epoch, v68);
    CMTimeRangeGetEnd(&v127, &duration);
    if ((v127.flags & 4) != 0)
    {
      v136.duration = *v14;
    }
  }

  if ((v136.start.flags & 1) == 0 || (v136.duration.flags & 1) == 0 || v136.duration.epoch || v136.duration.value < 0 || (duration.start = v136.duration, *&lhs.start.value = *&v14->value, lhs.start.epoch = v14->epoch, CMTimeCompare(&duration.start, &lhs.start)))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Count)
    {
      for (i = 0; Count != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), i);
        if (ValueAtIndex[128] == 1)
        {
          v80 = ValueAtIndex;
          OUTLINED_FUNCTION_0_150(ValueAtIndex, v72, v73, v74, v75, v76, v77, v78, v127.value, *&v127.timescale, v127.epoch, v128.value, *&v128.timescale, v128.epoch, v129, v130, v131, v132, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v135, *&v136.start.value, *&v136.start.epoch, v79);
          CMTimeRangeGetEnd(&lhs.start, &duration);
          v81 = *(v80 + 8);
          duration.start.epoch = *(v80 + 3);
          *&duration.start.value = v81;
          if (CMTimeCompare(&duration.start, &lhs.start) < 0)
          {
            v82 = *(v80 + 17);
            if (!v82)
            {
              if (v137)
              {
                CFRelease(v137);
                v137 = 0;
              }

              v83 = CFGetAllocator(a1);
              if (FigCaptionCreateMutable(v83, &v137))
              {
                goto LABEL_54;
              }

              v84 = v137;
              lhs = *(v80 + 8);
              v85 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (!v85)
              {
                goto LABEL_54;
              }

              duration = lhs;
              if (v85(v84, &duration))
              {
                goto LABEL_54;
              }

              v86 = *v80;
              CMBaseObject = FigCaptionGetCMBaseObject(v137);
              v88 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (!v88 || v88(CMBaseObject, @"CaptionData", v86))
              {
                goto LABEL_54;
              }

              v82 = CFRetain(v137);
              *(v80 + 17) = v82;
            }

            CFArrayAppendValue(Mutable, v82);
          }
        }
      }
    }

    v89 = CFArrayGetCount(*(a1 + 16));
    if (v89 >= 1)
    {
      v97 = 0;
      do
      {
        v98 = OUTLINED_FUNCTION_10_47();
        v100 = CFArrayGetValueAtIndex(v98, v99);
        memset(&lhs, 0, 24);
        v101 = *(v100 + 8);
        v102 = *(v100 + 40);
        *&duration.start.epoch = *(v100 + 24);
        *&duration.duration.timescale = v102;
        *&duration.start.value = v101;
        v103 = CMTimeRangeGetEnd(&lhs.start, &duration);
        OUTLINED_FUNCTION_0_150(v103, v104, v105, v106, v107, v108, v109, v110, v127.value, *&v127.timescale, v127.epoch, v128.value, *&v128.timescale, v128.epoch, v129, v130, v131, v132, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v135, *&v136.start.value, *&v136.start.epoch, v111);
        CMTimeRangeGetEnd(&rhs, &duration);
        *&duration.start.value = *&lhs.start.value;
        duration.start.epoch = lhs.start.epoch;
        if (CMTimeCompare(&duration.start, &rhs) <= 0)
        {
          v112 = OUTLINED_FUNCTION_10_47();
          CFArrayRemoveValueAtIndex(v112, v113);
          fctg_freeBuddingCaption(v100);
        }

        else
        {
          ++v97;
        }

        v89 = CFArrayGetCount(*(a1 + 16));
      }

      while (v97 < v89);
    }

    v114 = OUTLINED_FUNCTION_0_150(v89, v90, *(a1 + 32), v91, v92, v93, v94, v95, v127.value, *&v127.timescale, v127.epoch, v128.value, *&v128.timescale, v128.epoch, v129, v130, v131, v132, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v135, *&v136.start.value, *&v136.start.epoch, v96);
    v116 = v115(Mutable, &duration, v114);
    if (v116)
    {
LABEL_54:
      v125 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_0_150(v116, v117, v118, v119, v120, v121, v122, v123, v127.value, *&v127.timescale, v127.epoch, v128.value, *&v128.timescale, v128.epoch, v129, v130, v131, v132, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v135, *&v136.start.value, *&v136.start.epoch, v124);
      CMTimeRangeGetEnd(&lhs.start, &duration);
      *(a1 + 40) = *&lhs.start.value;
      *(a1 + 56) = lhs.start.epoch;
      v125 = 1;
    }
  }

  else
  {
    v125 = 0;
    Mutable = 0;
  }

  if (v137)
  {
    CFRelease(v137);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v125;
}

uint64_t FigCaptionTimelineGeneratorCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionTimelineGeneratorCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionTimelineGeneratorCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionTimelineGeneratorFinish_cold_1(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && CFArrayGetCount(v2) >= 1)
  {
    do
    {
      *(OUTLINED_FUNCTION_18_32() + 128) = 1;
      OUTLINED_FUNCTION_378_0();
    }

    while (!v3);
  }

  v4 = MEMORY[0x1E6960C88];
  do
  {
    result = fctg_generateAndOutputCaptions(a1, v4);
  }

  while ((result & 1) != 0);
  return result;
}

uint64_t FigCaptionTimelineGeneratorFinish_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigCaptionRendererLayoutContextCreate_cold_1(const void *a1, _DWORD *a2)
{
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t FigCaptionRendererLayoutContextSetSubtitleSample_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_151();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererLayoutContextGetSubtitleSample_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_151();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererLayoutContextGetSubtitleSample_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_151();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererLayoutContextSetMapping_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_151();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererLayoutContextGetMapping_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_151();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCrossTalkerCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fct_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fct_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fct_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fct_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSymptomsReportStreamingAssetDownloadStart(uint64_t a1, CMTime *a2, int a3, int a4, int a5, uuid_t out)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(outa, 0, 37);
  if (!out)
  {
    return 4294954516;
  }

  uuid_generate_random(out);
  if (uuid_is_null(out))
  {
    return 4294954510;
  }

  uuid_unparse(out, outa);
  (softLinksymptom_create[0])("com.apple.coremedia.assetdownload.event");
  symptom_set_qualifier();
  symptom_set_additional_qualifier();
  if (a1)
  {
    v11.value = 0;
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    if (CStringPtrAndBufferToFree)
    {
      strlen(CStringPtrAndBufferToFree);
      symptom_set_additional_qualifier();
    }

    free(v11.value);
  }

  symptom_set_qualifier();
  if ((a2->flags & 0x1D) == 1)
  {
    v11 = *a2;
    CMTimeGetSeconds(&v11);
    symptom_set_qualifier();
  }

  symptom_send();
  return 0;
}

uint64_t FigSymptomsReportStreamingAssetDownloadEnd(const unsigned __int8 *a1)
{
  if (OUTLINED_FUNCTION_1_136(a1, *MEMORY[0x1E69E9840]))
  {
    return 4294954516;
  }

  uuid_unparse(a1, v3);
  (softLinksymptom_create[0])("com.apple.coremedia.assetdownload.event");
  symptom_set_qualifier();
  OUTLINED_FUNCTION_0_152();
  symptom_send();
  return 0;
}

uint64_t FigSymptomsReportStreamingAssetDownloadPause(const unsigned __int8 *a1)
{
  if (OUTLINED_FUNCTION_1_136(a1, *MEMORY[0x1E69E9840]))
  {
    return 4294954516;
  }

  uuid_unparse(a1, v3);
  (softLinksymptom_create[0])("com.apple.coremedia.assetdownload.event");
  symptom_set_qualifier();
  OUTLINED_FUNCTION_0_152();
  symptom_send();
  return 0;
}

uint64_t FigSymptomsReportStreamingAssetDownloadResume(const unsigned __int8 *a1)
{
  if (OUTLINED_FUNCTION_1_136(a1, *MEMORY[0x1E69E9840]))
  {
    return 4294954516;
  }

  uuid_unparse(a1, v3);
  (softLinksymptom_create[0])("com.apple.coremedia.assetdownload.event");
  symptom_set_qualifier();
  OUTLINED_FUNCTION_0_152();
  symptom_send();
  return 0;
}

uint64_t FigCSSTokenizerProduceTokenArray(uint64_t cf, void *a2)
{
  v91 = *MEMORY[0x1E69E9840];
  if (!cf || (v2 = a2) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_62_0();

    return FigSignalErrorAtGM();
  }

  if (*(cf + 28))
  {
    v4 = *(cf + 32);
    if (v4)
    {
      CFRelease(v4);
      *(cf + 32) = 0;
    }

    *(cf + 28) = 0;
    *(cf + 40) = -1;
    *(cf + 56) = 0;
    *(cf + 64) = 0;
  }

  v5 = CFGetAllocator(cf);
  Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  *(cf + 32) = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_62_0();
    TokenType = FigSignalErrorAtGM();
    goto LABEL_259;
  }

  v84 = v2;
  v7 = 0;
  do
  {
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = 0;
    v88 = 65533;
    v86 = 0;
    v87 = 0;
LABEL_12:
    if (!*(cf + 26))
    {
      goto LABEL_36;
    }

    v9 = *(cf + 16);
    v10 = *(cf + 40);
    v11 = *(cf + 48);
    v12 = CFGetAllocator(cf);
    v13 = CFStringCreateMutable(v12, 0);
    if (!v13 || (v14 = CFGetAllocator(cf), (v15 = CFStringCreateMutable(v14, 0)) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_62_0();
      FigSignalErrorAtGM();
      v16 = 0;
LABEL_79:
      v20 = 0;
      goto LABEL_30;
    }

    v16 = v15;
    v17.location = v10 & ~(v10 >> 63);
    if (v11 - v17.location < 1)
    {
      if (v10 < 1)
      {
        v35 = CFGetAllocator(cf);
        v24 = CFStringCreateWithFormat(v35, 0, @"<empty text buffer>");
        v20 = 0;
        if (!v24)
        {
          goto LABEL_30;
        }

LABEL_29:
        CFShow(v24);
        CFRelease(v24);
        goto LABEL_30;
      }

      if (v17.location >= 5uLL)
      {
        v21 = 5;
      }

      else
      {
        v21 = v10 & ~(v10 >> 63);
      }

      v93.location = v17.location - v21;
      v93.length = v21;
      if (FigTextContainerGetCharactersForRange(v9, v93, chars))
      {
        goto LABEL_79;
      }

      v22 = CFGetAllocator(cf);
      v20 = CFStringCreateWithCharacters(v22, chars, v21);
      do
      {
        CFStringAppendCString(v13, " ", 0x600u);
        CFStringAppendCString(v16, " ", 0x600u);
        --v21;
      }

      while (v21);
    }

    else
    {
      if ((v11 - v17.location) >= 0xA)
      {
        v18 = 10;
      }

      else
      {
        v18 = v11 - v17.location;
      }

      v17.length = v18;
      if (FigTextContainerGetCharactersForRange(v9, v17, chars))
      {
        goto LABEL_79;
      }

      v19 = CFGetAllocator(cf);
      v20 = CFStringCreateWithCharacters(v19, chars, v18);
    }

    CFStringAppendCString(v13, "^", 0x600u);
    CFStringAppendCString(v16, "|", 0x600u);
    v23 = CFGetAllocator(cf);
    v24 = CFStringCreateWithFormat(v23, 0, @"%@\n%@\n%@", v20, v13, v16);
    if (v24)
    {
      goto LABEL_29;
    }

LABEL_30:
    if (v13)
    {
      CFRelease(v13);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    if (v20)
    {
      CFRelease(v20);
    }

LABEL_36:
    v88 = 0;
    do
    {
      v25 = *(cf + 48);
      if (!v25 || *(cf + 40) >= v25)
      {
        goto LABEL_239;
      }

      v26 = v8;
      if (_figCSSTokenizer_consume_next_input_code_point(cf, &v88))
      {
        _figCSSTokenizer_PeekAheadBuffer(cf, 3, (cf + 72), 0xCuLL, (cf + 64));
        v27 = v88;
        v28 = v88 == 10 || v88 == 9;
        if (v28 || v88 == 32)
        {
          *chars = 0;
          while (1)
          {
            v39 = *(cf + 48);
            if (!v39 || *(cf + 40) >= v39 || !_figCSSTokenizer_consume_next_input_code_point(cf, chars))
            {
              break;
            }

            if (*chars != 10 && *chars != 9 && *chars != 32)
            {
              *(cf + 56) = 1;
              break;
            }
          }

          v37 = CFGetAllocator(cf);
          v38 = 2;
          goto LABEL_172;
        }

        if (v88 == 34)
        {
          v42 = cf;
          v43 = 34;
        }

        else
        {
          if (v88 == 35)
          {
            OUTLINED_FUNCTION_3_108();
            if (v47 == v48)
            {
              v49 = *(cf + 72);
              v50 = v49 >= 0x41 && v49 <= 0x5A;
              if (v50 || (v49 <= 0x7A ? (v51 = v49 < 0x61) : (v51 = 1), v51 ? (v52 = v49 < 0x80) : (v52 = 0), v52 ? (v53 = v49 == 95) : (v53 = 1), v53 || (v49 <= 0x39 ? (v54 = v49 < 0x30) : (v54 = 1), v54 ? (v55 = v49 == 45) : (v55 = 1), v55 || v46 != 1 && (v49 == 92 ? (v68 = *(cf + 76) == 10) : (v68 = 1), !v68))))
              {
                v56 = v46 >= 3 && _figCSSTokenizer_check_if_three_code_points_would_start_an_identifier(v49, *(cf + 76), *(cf + 80));
                v45 = _figCSSTokenizer_consume_a_name(cf, &v86);
                if (v45)
                {
                  goto LABEL_248;
                }

                v64 = CFGetAllocator(cf);
                v45 = FigCSSHashTokenCreate(v64, v56, v86, &v87);
                if (v45)
                {
                  goto LABEL_248;
                }

                goto LABEL_240;
              }
            }

            goto LABEL_168;
          }

          if (v88 == 36)
          {
            if ((*(cf + 64) & 0x8000000000000000) == 0)
            {
              OUTLINED_FUNCTION_1_137();
              if (v28)
              {
                OUTLINED_FUNCTION_4_104();
                v37 = CFGetAllocator(cf);
                v38 = 28;
                goto LABEL_172;
              }
            }

            goto LABEL_168;
          }

          if (v88 != 39)
          {
            if (v88 == 40)
            {
              v37 = CFGetAllocator(cf);
              v38 = 16;
              goto LABEL_172;
            }

            if (v88 == 41)
            {
              v37 = CFGetAllocator(cf);
              v38 = 17;
              goto LABEL_172;
            }

            if (v88 == 42)
            {
              if ((*(cf + 64) & 0x8000000000000000) == 0)
              {
                OUTLINED_FUNCTION_1_137();
                if (v28)
                {
                  *chars = 0;
                  _figCSSTokenizer_consume_next_input_code_point(cf, chars);
                  v37 = CFGetAllocator(cf);
                  v38 = 29;
                  goto LABEL_172;
                }
              }

              goto LABEL_168;
            }

            if (v88 == 43)
            {
              if ((*(cf + 64) & 0x8000000000000000) != 0)
              {
                goto LABEL_168;
              }
            }

            else
            {
              if (v88 == 44)
              {
                v37 = CFGetAllocator(cf);
                v38 = 12;
                goto LABEL_172;
              }

              if (v88 == 45)
              {
                OUTLINED_FUNCTION_3_108();
                if (v47 != v48)
                {
                  goto LABEL_168;
                }

                v58 = *(cf + 72);
                if (v58 < 0x30 || v58 > 0x39)
                {
                  if (v57 < 3)
                  {
                    if (v57 == 1 || v58 != 45)
                    {
                      goto LABEL_168;
                    }

                    v60 = *(cf + 76);
                  }

                  else
                  {
                    v60 = *(cf + 76);
                    if (_figCSSTokenizer_check_if_three_code_points_would_start_an_identifier(*(cf + 72), v60, *(cf + 80)))
                    {
                      goto LABEL_181;
                    }

                    if (v58 != 45)
                    {
                      goto LABEL_168;
                    }
                  }

                  if (v60 != 62)
                  {
                    goto LABEL_168;
                  }

                  OUTLINED_FUNCTION_4_104();
                  OUTLINED_FUNCTION_4_104();
                  v37 = CFGetAllocator(cf);
                  v38 = 25;
LABEL_172:
                  v45 = FigCSSSimpleTokenCreate(v37, v38, &v87);
                  if (v45)
                  {
                    goto LABEL_248;
                  }

LABEL_240:
                  TokenType = 0;
                  v7 = v87;
                  v87 = 0;
                  goto LABEL_241;
                }

LABEL_224:
                v72 = OUTLINED_FUNCTION_5_91();
                v45 = _figCSSTokenizer_consume_a_numeric_token(v72, v73);
                if (v45)
                {
                  goto LABEL_248;
                }

                goto LABEL_240;
              }

              if (v88 != 46)
              {
                if (v88 == 47)
                {
                  if ((*(cf + 64) & 0x8000000000000000) != 0 || *(cf + 72) != 42)
                  {
                    goto LABEL_168;
                  }

                  v85 = 0;
                  OUTLINED_FUNCTION_4_104();
                  while (!_figCSSTokenizer_PeekAheadBuffer(cf, 2, chars, 8uLL, &v85))
                  {
                    v30 = v85;
                    if (!v85)
                    {
                      goto LABEL_12;
                    }

                    v31 = *chars;
                    v32 = v90;
                    OUTLINED_FUNCTION_4_104();
                    if (v30 >= 2 && v31 == 42 && v32 == 47)
                    {
                      OUTLINED_FUNCTION_4_104();
                      goto LABEL_12;
                    }
                  }

                  v27 = v88;
                }

                switch(v27)
                {
                  case ':':
                    v37 = CFGetAllocator(cf);
                    v38 = 13;
                    goto LABEL_172;
                  case ';':
                    v37 = CFGetAllocator(cf);
                    v38 = 14;
                    goto LABEL_172;
                  case '<':
                    if (*(cf + 64) >= 3 && (*(cf + 72) == 33 || *(cf + 76) == 45 || *(cf + 80) == 45))
                    {
                      OUTLINED_FUNCTION_4_104();
                      OUTLINED_FUNCTION_4_104();
                      OUTLINED_FUNCTION_4_104();
                      v37 = CFGetAllocator(cf);
                      v38 = 26;
                      goto LABEL_172;
                    }

                    goto LABEL_168;
                  case '@':
                    if (*(cf + 64) >= 3 && _figCSSTokenizer_check_if_three_code_points_would_start_an_identifier(*(cf + 72), *(cf + 76), *(cf + 80)))
                    {
                      _figCSSTokenizer_consume_a_name(cf, &v86);
                      v44 = CFGetAllocator(cf);
                      v45 = FigCSSStringValueTokenCreate(v44, 8, v86, &v87);
                      if (!v45)
                      {
                        goto LABEL_240;
                      }

LABEL_248:
                      TokenType = v45;
                      goto LABEL_80;
                    }

LABEL_251:
                    v78 = CFGetAllocator(cf);
                    FigCSSCodePointTokenCreate(v78, 5, v88, &v87);
                    goto LABEL_240;
                  case '[':
                    v37 = CFGetAllocator(cf);
                    v38 = 20;
                    goto LABEL_172;
                  case '\\':
                    OUTLINED_FUNCTION_3_108();
                    if (v47 == v48 && *(cf + 72) != 10)
                    {
                      goto LABEL_181;
                    }

LABEL_168:
                    v63 = CFGetAllocator(cf);
                    v45 = FigCSSCodePointTokenCreate(v63, 5, v88, &v87);
                    if (!v45)
                    {
                      goto LABEL_240;
                    }

                    goto LABEL_248;
                  case ']':
                    v37 = CFGetAllocator(cf);
                    v38 = 21;
                    goto LABEL_172;
                  case '^':
                    if ((*(cf + 64) & 0x8000000000000000) != 0)
                    {
                      goto LABEL_168;
                    }

                    OUTLINED_FUNCTION_1_137();
                    if (!v28)
                    {
                      goto LABEL_168;
                    }

                    *chars = 0;
                    _figCSSTokenizer_consume_next_input_code_point(cf, chars);
                    v37 = CFGetAllocator(cf);
                    v38 = 27;
                    goto LABEL_172;
                  case '{':
                    v37 = CFGetAllocator(cf);
                    v38 = 18;
                    goto LABEL_172;
                  case '}':
                    v37 = CFGetAllocator(cf);
                    v38 = 19;
                    goto LABEL_172;
                }

                if (v27 < 0x30 || v27 > 0x39)
                {
                  if (v27 == 85 || v27 == 117)
                  {
                    if (*(cf + 64) >= 2 && *(cf + 72) == 43)
                    {
                      v71 = *(cf + 76);
                      if (FigCSSCodePointIs_hex_digit(v71) || v71 == 63)
                      {
                        v45 = _figCSSTokenizer_consume_a_unicode_range();
                        if (v45)
                        {
                          goto LABEL_248;
                        }

                        goto LABEL_240;
                      }
                    }

                    goto LABEL_181;
                  }

                  if (FigCSSCodePointIs_name_start_code_point(v27))
                  {
LABEL_181:
                    v65 = OUTLINED_FUNCTION_5_91();
                    v45 = _figCSSTokenizer_consume_an_ident_like_token(v65, v66);
                    if (v45)
                    {
                      goto LABEL_248;
                    }

                    goto LABEL_240;
                  }

                  if (v27 == 124)
                  {
                    OUTLINED_FUNCTION_3_108();
                    if (v47 != v48)
                    {
                      goto LABEL_251;
                    }

                    OUTLINED_FUNCTION_1_137();
                    if (v28)
                    {
                      OUTLINED_FUNCTION_4_104();
                      v37 = CFGetAllocator(cf);
                      v38 = 31;
                    }

                    else
                    {
                      if (v75 != 124)
                      {
                        goto LABEL_251;
                      }

                      OUTLINED_FUNCTION_4_104();
                      v37 = CFGetAllocator(cf);
                      v38 = 15;
                    }
                  }

                  else
                  {
                    if (v27 != 126)
                    {
                      v76 = *(cf + 48);
                      if (!v76 || *(cf + 40) >= v76)
                      {
LABEL_239:
                        v77 = CFGetAllocator(cf);
                        v45 = FigCSSEOFTokenCreate(v77, &v87);
                        if (!v45)
                        {
                          goto LABEL_240;
                        }

                        goto LABEL_248;
                      }

                      goto LABEL_168;
                    }

                    OUTLINED_FUNCTION_3_108();
                    if (v47 != v48)
                    {
                      goto LABEL_168;
                    }

                    OUTLINED_FUNCTION_1_137();
                    if (!v28)
                    {
                      goto LABEL_168;
                    }

                    OUTLINED_FUNCTION_4_104();
                    v37 = CFGetAllocator(cf);
                    v38 = 30;
                  }

                  goto LABEL_172;
                }

                goto LABEL_224;
              }

              OUTLINED_FUNCTION_3_108();
              if (v47 != v48)
              {
                goto LABEL_168;
              }
            }

            v61 = *(cf + 72);
            if (v61 < 0x30 || v61 > 0x39)
            {
              goto LABEL_168;
            }

            goto LABEL_224;
          }

          v42 = cf;
          v43 = 39;
        }

        v45 = _figCSSTokenizer_consume_a_string_token(v42, v43, &v87);
        if (!v45)
        {
          goto LABEL_240;
        }

        goto LABEL_248;
      }

      v8 = 1;
    }

    while (!v26);
    TokenType = 4294949486;
LABEL_80:
    if (v87)
    {
      CFRelease(v87);
    }

    v7 = 0;
LABEL_241:
    if (v86)
    {
      CFRelease(v86);
    }

    if (TokenType)
    {
      break;
    }

    if (!v7)
    {
      TokenType = 0;
      break;
    }

    *chars = 0;
    CFArrayAppendValue(*(cf + 32), v7);
    TokenType = FigCSSTokenGetTokenType(v7, chars);
    if (TokenType)
    {
      break;
    }
  }

  while (*chars != 1);
  if (*(cf + 24))
  {
    v79 = CFGetAllocator(cf);
    v80 = CFStringCreateWithFormat(v79, 0, @"tokens: %@", *(cf + 32));
    if (v80)
    {
      CFRelease(v80);
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v2 = v84;
LABEL_259:
  if (TokenType)
  {
    v81 = 2;
  }

  else
  {
    v81 = 1;
  }

  *(cf + 28) = v81;
  if (!TokenType)
  {
    v82 = *(cf + 32);
    if (v82)
    {
      v82 = CFRetain(v82);
    }

    TokenType = 0;
    *v2 = v82;
  }

  return TokenType;
}