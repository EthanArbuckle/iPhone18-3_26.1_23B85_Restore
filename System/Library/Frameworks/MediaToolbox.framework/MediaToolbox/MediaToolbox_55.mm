uint64_t compositionTable_copyFormatReaderForAssetURL(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v15 = 0;
  FigSimpleMutexLock();
  v8 = CFDictionaryGetValue(*(a1 + 64), a2);
  value = v8;
  if (v8)
  {
    v9 = v8;
    CFRetain(v8);
  }

  else
  {
    FigSimpleMutexUnlock();
    v10 = compositionSharedCache_copyAssetForAssetURL(*(a1 + 160), a2, a3, &value);
    if (v10)
    {
      v13 = v10;
      v12 = 0;
      v9 = value;
      goto LABEL_8;
    }

    FigSimpleMutexLock();
    v9 = value;
    CFDictionaryAddValue(*(a1 + 64), a2, value);
  }

  FigSimpleMutexUnlock();
  CMBaseObject = FigAssetGetCMBaseObject(v9);
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v13 = v12(CMBaseObject, @"assetProperty_FormatReader", a3, &v15);
    v12 = v15;
  }

  else
  {
    v13 = 4294954514;
  }

LABEL_8:
  *a4 = v12;
  if (v9)
  {
    CFRelease(v9);
  }

  return v13;
}

uint64_t compositionSharedCache_copyAssetForAssetURL(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  cf = 0;
  Value = 0;
  v16 = 0;
  compositionSharedCache_copyAssetForAssetURLFromCache(a1, a2, &Value);
  v8 = Value;
  if (Value)
  {
    v9 = 0;
LABEL_18:
    v14 = 0;
    *a4 = v8;
    Value = 0;
    goto LABEL_19;
  }

  v10 = *(a1 + 8);
  if (!v10)
  {
    v12 = FigAssetCreateWithURL(a3, a2, *(a1 + 16), *(a1 + 24), &Value);
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_14:
    FigSimpleMutexLock();
    if (CFDictionaryContainsKey(*(a1 + 40), a2))
    {
      v9 = Value;
      Value = CFDictionaryGetValue(*(a1 + 40), a2);
      CFRetain(Value);
    }

    else
    {
      CFDictionarySetValue(*(a1 + 40), a2, Value);
      v9 = 0;
    }

    FigSimpleMutexUnlock();
    v8 = Value;
    goto LABEL_18;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v11)
  {
    v14 = 4294954514;
    goto LABEL_10;
  }

  v12 = v11(v10, a2, 0, 0, *MEMORY[0x1E695E480], &v16);
  if (!v12)
  {
    v12 = FigFormatReaderCreateForStream(v16, a3, 0, &cf);
    if (!v12)
    {
      v13 = CFGetAllocator(cf);
      v12 = FigAssetCreateWithFormatReader(v13, cf, 0, 0, &Value);
      if (!v12)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_8:
  v14 = v12;
LABEL_10:
  if (Value)
  {
    CFRelease(Value);
  }

  v9 = 0;
LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v14;
}

uint64_t compositionSharedCache_copyAssetForAssetURLFromCache(uint64_t result, const void *a2, void *a3)
{
  v4 = a2;
  if (a2)
  {
    v5 = result;
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(v5 + 40), v4);
    v4 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    result = FigSimpleMutexUnlock();
  }

  *a3 = v4;
  return result;
}

void mutableComposition_makeIgnoredKeysForFormatDescriptionEquality()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, *MEMORY[0x1E69600D0]);
  CFArrayAppendValue(Mutable, *MEMORY[0x1E69600C8]);
  sIgnoredKeysForFormatDescriptionEquality = Mutable;
}

uint64_t compositionTable_copyTrackPropertyFromFirstNonEmptyEdit(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5, uint64_t a6)
{
  cf = 0;
  FigSimpleMutexLock();
  v12 = *(a1 + 16);
  if (v12 < 1)
  {
LABEL_5:
    fig_log_get_emitter();
    v14 = FigSignalErrorAtGM();
    v15 = 0;
    v16 = 0;
LABEL_11:
    v19 = 1;
    goto LABEL_12;
  }

  v13 = (*(a1 + 32) + 8);
  while (*(v13 - 1) != a2)
  {
    v13 += 21;
    if (!--v12)
    {
      goto LABEL_5;
    }
  }

  v17 = *v13;
  if (*v13 < 1)
  {
LABEL_10:
    v15 = 0;
    v16 = 0;
    v14 = 0;
    goto LABEL_11;
  }

  v18 = (v13[1] + 104);
  while ((*(v18 - 23) & 0x1D) != 1)
  {
    v18 += 27;
    if (!--v17)
    {
      goto LABEL_10;
    }
  }

  v15 = *(v18 - 1);
  v16 = *v18;
  if (v15)
  {
    CFRetain(*(v18 - 1));
  }

  v19 = 0;
  v14 = 0;
LABEL_12:
  FigSimpleMutexUnlock();
  if (v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = 4294954775;
  }

  if ((v19 & 1) != 0 || v14)
  {
    goto LABEL_24;
  }

  v21 = compositionTable_copyConcreteTrackReaderForAssetURLTrackIDMediaType(a1, v15, v16, a3, a5, &cf);
  v22 = cf;
  if (!v21)
  {
    FigBaseObject = FigTrackReaderGetFigBaseObject(cf);
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v24)
    {
      v20 = 4294954514;
      if (!v22)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v21 = v24(FigBaseObject, a4, a5, a6);
  }

  v20 = v21;
  if (v22)
  {
LABEL_23:
    CFRelease(v22);
  }

LABEL_24:
  if (v15)
  {
    CFRelease(v15);
  }

  return v20;
}

uint64_t compositionTable_copyAverageTrackPropertyFromNonEmptyEdits(uint64_t a1, int a2, unsigned int a3, uint64_t a4, const __CFAllocator *a5, CFNumberRef *a6)
{
  valuePtr = 0.0;
  v62 = 0;
  v60 = **&MEMORY[0x1E6960CC0];
  v59 = 0;
  v10 = *MEMORY[0x1E695E480];
  v11 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  allocator = v10;
  v13 = CFArrayCreateMutable(v10, 0, v11);
  FigSimpleMutexLock();
  v14 = *(a1 + 16);
  if (v14 < 1)
  {
LABEL_5:
    fig_log_get_emitter();
    FigSignalErrorAtGM();
LABEL_6:
    FigSimpleMutexUnlock();
    v16 = 4294954775;
    goto LABEL_7;
  }

  v15 = (*(a1 + 32) + 16);
  while (*(v15 - 3) != a2)
  {
    v15 += 21;
    if (!--v14)
    {
      goto LABEL_5;
    }
  }

  v48 = a5;
  v18 = *(v15 - 1);
  if (v18 >= 100)
  {
    v19 = 100;
  }

  else
  {
    v19 = *(v15 - 1);
  }

  if (v18 <= 0)
  {
    goto LABEL_6;
  }

  v49 = a1;
  theArray = Mutable;
  v47 = a6;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  do
  {
    v24 = *v15 + v20;
    if ((*(v24 + 12) & 0x1D) == 1)
    {
      v58 = *(v24 + 24);
      v25 = *(v24 + 96);
      v26 = *(v24 + 104);
      if (v22 && (v22 == v25 ? (v27 = v21 == v26) : (v27 = 0), v27))
      {
        v28 = CFArrayGetCount(v13) - 1;
        ValueAtIndex = CFArrayGetValueAtIndex(v13, v28);
        memset(&time, 0, sizeof(time));
        CMTimeMakeFromDictionary(&rhs, ValueAtIndex);
        lhs = v58;
        CMTimeAdd(&time, &lhs, &rhs);
        rhs = time;
        v30 = CMTimeCopyAsDictionary(&rhs, allocator);
        CFArraySetValueAtIndex(v13, v28, v30);
        v31 = 0;
      }

      else
      {
        v34 = compositionTable_copyConcreteTrackReaderForAssetURLTrackIDMediaType(v49, *(v24 + 96), *(v24 + 104), a3, v48, &v62);
        if (v34)
        {
          v16 = v34;
          FigSimpleMutexUnlock();
          goto LABEL_48;
        }

        v31 = v62;
        CFArrayAppendValue(theArray, v62);
        time = v58;
        v30 = CMTimeCopyAsDictionary(&time, allocator);
        CFArrayAppendValue(v13, v30);
        v22 = v25;
        v21 = v26;
      }

      v32 = *v15 + v20;
      time = v60;
      v33 = *(v32 + 72);
      rhs.epoch = *(v32 + 88);
      *&rhs.value = v33;
      CMTimeAdd(&v60, &time, &rhs);
      if (v30)
      {
        CFRelease(v30);
      }

      if (v31)
      {
        CFRelease(v31);
        v62 = 0;
      }

      v23 = 1;
    }

    v20 += 108;
    --v19;
  }

  while (v19);
  FigSimpleMutexUnlock();
  if (!v23)
  {
    v16 = 4294954775;
LABEL_48:
    Mutable = theArray;
    goto LABEL_7;
  }

  Mutable = theArray;
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v38 = 0.0;
LABEL_51:
    v58 = v60;
    valuePtr = v38 / CMTimeGetSeconds(&v58);
    v16 = 0;
    *v47 = CFNumberCreate(allocator, kCFNumberFloat64Type, &valuePtr);
  }

  else
  {
    v36 = Count;
    v37 = 0;
    v38 = 0.0;
    v53 = *MEMORY[0x1E6960C70];
    v39 = *(MEMORY[0x1E6960C70] + 16);
    while (1)
    {
      rhs.value = 0;
      *&v58.value = v53;
      v58.epoch = v39;
      v40 = CFArrayGetValueAtIndex(theArray, v37);
      v41 = CFArrayGetValueAtIndex(v13, v37);
      CMTimeMakeFromDictionary(&v58, v41);
      FigBaseObject = FigTrackReaderGetFigBaseObject(v40);
      v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v43)
      {
        v16 = 4294954514;
        goto LABEL_7;
      }

      v44 = v43(FigBaseObject, a4, v48, &v59);
      if (v44)
      {
        break;
      }

      CFNumberGetValue(v59, kCFNumberFloat64Type, &rhs);
      v45 = *&rhs.value;
      time = v58;
      Seconds = CMTimeGetSeconds(&time);
      if (v59)
      {
        CFRelease(v59);
        v59 = 0;
      }

      v38 = v38 + v45 * Seconds;
      if (v36 == ++v37)
      {
        goto LABEL_51;
      }
    }

    v16 = v44;
  }

LABEL_7:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  return v16;
}

uint64_t composite_trackReader_GetTrackInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = *(DerivedStorage + 8);
  }

  if (a3)
  {
    *a3 = *(DerivedStorage + 12);
  }

  return 0;
}

uint64_t composite_trackReader_CopySampleCursorService(uint64_t a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a2 = CFRetain(*(DerivedStorage + 32));
  return 0;
}

void compositeSuper_editCursorService_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  compositionTable_releaseAndClear(DerivedStorage);
}

__CFString *compositeSuper_editCursorService_CopyDebugDescription(uint64_t a1)
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
  CFStringAppendFormat(Mutable, 0, @"<CompositeSuper FigEditCursorService %p>", a1);
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

void compositeSuper_editCursor_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *compositeSuper_editCursor_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<CompositeSuper FigEditCursor %p>{ service %p, editIndex %d }", a1, *DerivedStorage, DerivedStorage[1]);
  return Mutable;
}

uint64_t compositeSuper_editCursor_Step(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = *v4;
  FigSimpleMutexLock();
  v6 = *(v5 + 16);
  if (v6 < 1)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    v7 = (*(v5 + 32) + 8);
    while (*(v7 - 1) != *(v4 + 8))
    {
      v7 += 21;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v8 = *v7;
  }

  FigSimpleMutexUnlock();
  if (v8)
  {
    v9 = *(DerivedStorage + 8) + a2;
    result = 4294954776;
    if (v9 < 0)
    {
      v9 = 0;
    }

    else if (v9 < v8)
    {
      result = 0;
    }

    else
    {
      v9 = v8 - 1;
      result = 4294954776;
    }
  }

  else
  {
    v9 = 0;
    result = 4294954775;
  }

  *(DerivedStorage + 8) = v9;
  return result;
}

void compositeProxy_editCursorService_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  compositionTable_releaseAndClear(DerivedStorage);
}

__CFString *compositeProxy_editCursorService_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<CompositeProxy FigEditCursorService %p>", a1);
  return Mutable;
}

uint64_t compositionTable_copyConcreteTrackReaderForEpoch(uint64_t a1, uint64_t a2, uint64_t a3, const __CFAllocator *a4, void *a5)
{
  FigSimpleMutexLock();
  v10 = CFDictionaryGetValue(*(a1 + 152), a2);
  value = v10;
  if (!v10)
  {
    if (a2 < 1 || *(a1 + 144) <= a2)
    {
      FigSimpleMutexUnlock();
      v14 = 0;
    }

    else
    {
      v13 = *(a1 + 136);
      v14 = *(v13 + 16 * a2);
      if (v14)
      {
        CFRetain(*(v13 + 16 * a2));
        v13 = *(a1 + 136);
      }

      v15 = *(v13 + 16 * a2 + 8);
      FigSimpleMutexUnlock();
      if (v14)
      {
        v16 = compositionTable_copyConcreteTrackReaderForAssetURLTrackIDMediaType(a1, v14, v15, a3, a4, &value);
        if (v16)
        {
          v12 = v16;
          goto LABEL_14;
        }

        FigSimpleMutexLock();
        v17 = value;
        CFDictionaryAddValue(*(a1 + 152), a2, value);
        FigSimpleMutexUnlock();
        if (v17)
        {
          v12 = 0;
          *a5 = v17;
          goto LABEL_14;
        }

        v18 = 0;
LABEL_13:
        fig_log_get_emitter();
        v12 = FigSignalErrorAtGM();
        if (v18)
        {
          return v12;
        }

LABEL_14:
        CFRelease(v14);
        return v12;
      }
    }

    v18 = 1;
    goto LABEL_13;
  }

  v11 = v10;
  CFRetain(v10);
  FigSimpleMutexUnlock();
  v12 = 0;
  *a5 = v11;
  return v12;
}

void compositeProxy_editCursor_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  compositionTable_releaseAndClear(DerivedStorage);
  v1 = DerivedStorage[1];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[1] = 0;
  }
}

__CFString *compositeProxy_editCursor_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<CompositeProxy FigEditCursor %p>{ concreteEditCursor %p, epoch %d }", a1, *(DerivedStorage + 8), *(DerivedStorage + 16));
  return Mutable;
}

uint64_t compositeProxy_editCursor_Step(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

void compositeSimple_editCursor_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  compositionTable_releaseAndClear(DerivedStorage);
}

__CFString *compositeSimple_editCursor_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<CompositeSimple FigEditCursor %p>{ epoch %d }", a1, *(DerivedStorage + 8));
  return Mutable;
}

uint64_t compositeSimple_editCursor_GetEditSegment(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x1E6960CC0];
  v5 = *MEMORY[0x1E6960CC0];
  *(a2 + 48) = *MEMORY[0x1E6960CC0];
  v6 = *(v4 + 16);
  *(a2 + 64) = v6;
  v7 = MEMORY[0x1E6960C88];
  v8 = *MEMORY[0x1E6960C88];
  *(a2 + 72) = *MEMORY[0x1E6960C88];
  v9 = *(v7 + 16);
  *(a2 + 88) = v9;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 40) = v9;
  *(a2 + 24) = v8;
  v10 = *(DerivedStorage + 8);
  *(a2 + 64) = v10;
  *(a2 + 16) = v10;
  return 0;
}

void compositeProxy_sampleCursorService_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  compositionTable_releaseAndClear(DerivedStorage);
}

uint64_t compositeProxy_createProxySampleCursor()
{
  v0 = *(*(CMBaseObjectGetVTable() + 16) + 72) != 0;
  if (*(*(CMBaseObjectGetVTable() + 16) + 64))
  {
    v0 |= 2u;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 80))
  {
    v0 |= 4u;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 144))
  {
    v0 |= 8u;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 152))
  {
    v0 |= 0x10u;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 112))
  {
    v0 |= 0x20u;
  }

  v2[1] = 0;
  v2[0] = v0;
  if (sCompositeProxySampleCursorVTableSetupOnce != -1)
  {
    compositeProxy_createProxySampleCursor_cold_1();
  }

  dispatch_sync_f(sCompositeProxySampleCursorVTableQueue, v2, compositeProxy_SampleCursor_getVTableWithOptionalMethodsWork);
  FigSampleCursorGetClassID();
  return CMDerivedObjectCreate();
}

CFMutableDictionaryRef compositeProxySampleCursorSetupOnce()
{
  sCompositeProxySampleCursorVTableQueue = dispatch_queue_create("com.apple.coremedia.compositeproxysamplecursor.vtables", 0);
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  sCompositeProxySampleCursorVTableDictionary = result;
  return result;
}

void compositeProxy_SampleCursor_getVTableWithOptionalMethodsWork(int *a1)
{
  v2 = *a1;
  Value = CFDictionaryGetValue(sCompositeProxySampleCursorVTableDictionary, v2);
  if (Value)
  {
    goto LABEL_19;
  }

  Value = malloc_type_malloc(0x18uLL, 0x6004045F868BCuLL);
  v4 = malloc_type_malloc(0xF0uLL, 0x10C004098B2CDEBuLL);
  __copy_assignment_4_8_t0w8_pa0_51792_8_t16w16_pa0_52214_32_pa0_24028_40_pa0_18179_48_pa0_57859_56_pa0_13550_64_pa0_54719_72_pa0_1935_80_t88w24_pa0_12_112_pa0_25791_120_pa0_51134_128_t136w8_pa0_25053_144_pa0_46486_152_pa0_25009_160_pa0_20936_168_pa0_50495_176_pa0_49003_184_pa0_11258_192_pa0_17621_200_pa0_49302_208_pa0_26204_216_pa0_58389_224_pa0_36478_232(v4, &kCompositeProxy_SampleCursor_FigSampleCursorClass);
  if ((v2 & 2) != 0)
  {
    if (v2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4[8] = 0;
    if (v2)
    {
LABEL_4:
      if ((v2 & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  v4[9] = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    if ((v2 & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4[10] = 0;
  if ((v2 & 8) != 0)
  {
LABEL_6:
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    v4[19] = 0;
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_14:
  v4[18] = 0;
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v2 & 0x20) == 0)
  {
LABEL_8:
    v4[14] = 0;
  }

LABEL_9:
  *Value = 0;
  Value[1] = &kCompositeProxy_SampleCursor_BaseClass;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  Value[2] = v5;
  CFDictionarySetValue(sCompositeProxySampleCursorVTableDictionary, v2, Value);
LABEL_19:
  *(a1 + 1) = Value;
}

uint64_t compositeProxy_sampleCursor_Copy(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  v5 = *(DerivedStorage + 16);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = v6(v5, &v14);
  v8 = v14;
  if (v7)
  {
    ProxySampleCursor = v7;
    if (!v14)
    {
      return ProxySampleCursor;
    }

    goto LABEL_8;
  }

  CFGetAllocator(a1);
  ProxySampleCursor = compositeProxy_createProxySampleCursor();
  if (ProxySampleCursor)
  {
    v8 = v14;
    if (!v14)
    {
      return ProxySampleCursor;
    }

LABEL_8:
    CFRelease(v8);
    return ProxySampleCursor;
  }

  v10 = CMBaseObjectGetDerivedStorage();
  *v10 = *DerivedStorage;
  FigAtomicIncrement32();
  v11 = v14;
  *(v10 + 8) = *(DerivedStorage + 8);
  v12 = *(DerivedStorage + 24);
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = *(DerivedStorage + 32);
  *a2 = 0;
  return ProxySampleCursor;
}

uint64_t compositeProxy_sampleCursor_CompareInDecodeOrder()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 24);
  v3 = *(v1 + 24);
  if (v2 < v3)
  {
    return -1;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v5 = *(DerivedStorage + 16);
  v6 = *(v1 + 16);
  v7 = *(CMBaseObjectGetVTable() + 16);
  if (v7)
  {
    v8 = v7;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = 0;
    if (!v6)
    {
LABEL_11:
      v10 = 0;
      goto LABEL_12;
    }
  }

  v9 = *(CMBaseObjectGetVTable() + 16);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
LABEL_12:
  if (v8 != v10 || !*(v8 + 32))
  {
    return 0;
  }

  v11 = *(v10 + 32);

  return v11(v5, v6);
}

uint64_t compositeProxy_sampleCursor_GetDuration(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t compositeProxy_sampleCursor_GetDependencyInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 16);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3, a4, a5);
}

uint64_t compositeProxy_sampleCursor_GetMPEG2FrameType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 16);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t compositeProxy_sampleCursor_TestReorderingBoundary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 24);
  v7 = *(v5 + 24);
  if (v6 != v7)
  {
    if (a3 == 1)
    {
      return v6 > v7;
    }

    if (!a3)
    {
      return v6 < v7;
    }
  }

  v9 = *(DerivedStorage + 16);
  v10 = *(v5 + 16);
  v11 = *(CMBaseObjectGetVTable() + 16);
  if (!v11)
  {
    v12 = 0;
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v12 = v11;
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_7:
  v15 = v12;
  v13 = *(CMBaseObjectGetVTable() + 16);
  v12 = v15;
LABEL_10:
  if (v12 != v13)
  {
    return 0;
  }

  v14 = *(v12 + 80);
  if (!v14)
  {
    return 0;
  }

  return v14(v9, v10, a3);
}

uint64_t compositeProxy_sampleCursor_StepByDecodeTime(uint64_t a1, __int128 *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);
  v6 = *a2;
  v7 = *(a2 + 2);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v4)
  {
    return 4294954514;
  }

  v8 = v6;
  v9 = v7;
  return v4(v3, &v8);
}

uint64_t compositeProxy_sampleCursor_StepByPresentationTime(uint64_t a1, __int128 *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);
  v6 = *a2;
  v7 = *(a2 + 2);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v4)
  {
    return 4294954514;
  }

  v8 = v6;
  v9 = v7;
  return v4(v3, &v8);
}

uint64_t compositeProxy_sampleCursor_CopySampleLocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 16);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3, a4, a5);
}

uint64_t compositeProxy_sampleCursor_CopyChunkDetails(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = *(CMBaseObjectGetDerivedStorage() + 16);
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v18)
  {
    return 4294954514;
  }

  return v18(v17, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t compositeProxy_sampleCursor_StepInDecodeOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 16);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

uint64_t compositeProxy_sampleCursor_StepInPresentationOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 16);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

void compositeProxy_sampleCursor_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  compositionTable_releaseAndClear(DerivedStorage);
  v1 = DerivedStorage[2];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[2] = 0;
  }
}

CFStringRef compositeProxy_sampleCursor_CopyDebugDescription()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 16);

  return CFCopyDescription(v0);
}

uint64_t compositeProxy_sampleCursor_CopyProperty(uint64_t a1, uint64_t a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    compositeProxy_sampleCursor_CopyProperty_cold_2(&v17);
    return LODWORD(v17.start.value);
  }

  if (!a4)
  {
    compositeProxy_sampleCursor_CopyProperty_cold_1(&v17);
    return LODWORD(v17.start.value);
  }

  v8 = DerivedStorage;
  v9 = FigCFEqual();
  FigBaseObject = FigSampleCursorGetFigBaseObject(*(v8 + 16));
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    if (v11)
    {
      v12 = v11(FigBaseObject, a2, a3, &v18);
      v13 = v18;
      if (v12)
      {
        v14 = 1;
      }

      else
      {
        v14 = v18 == 0;
      }

      if (!v14)
      {
        memset(&v17, 0, sizeof(v17));
        CMTimeRangeMakeFromDictionary(&v17, v18);
        if (!v17.start.epoch)
        {
          v17.start.epoch = *(v8 + 24);
        }

        v16 = v17;
        *a4 = CMTimeRangeCopyAsDictionary(&v16, a3);
        v13 = v18;
      }

      if (v13)
      {
        CFRelease(v13);
      }

      return v12;
    }

    return 4294954514;
  }

  if (!v11)
  {
    return 4294954514;
  }

  return v11(FigBaseObject, a2, a3, a4);
}

uint64_t compositionTable_findCompatibleTrackForFormatDescriptionArrayAndMediaType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a2 < a3)
  {
    v8 = a2;
    v10 = 168 * a2;
    v11 = -1;
    while (1)
    {
      v12 = *(a1 + 32);
      if (*(v12 + v10) == a5)
      {
        result = v8;
        if (!a4)
        {
          goto LABEL_5;
        }

        if (!compositionTableTrack_copyTrackFormatDescriptionArrayForTrackCompatibility(a1, v12 + v10))
        {
          break;
        }
      }

LABEL_6:
      ++v8;
      v10 += 168;
      result = v11;
      if (a3 == v8)
      {
        return result;
      }
    }

    result = v8;
LABEL_5:
    v11 = result;
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

  return -1;
}

void compositionTable_addTrack(uint64_t a1, int a2, int a3, _DWORD *a4, uint64_t *a5)
{
  if (a3)
  {
    v9 = a3;
    v10 = *(a1 + 16);
    if (v10 >= 1)
    {
      v11 = (*(a1 + 32) + 4);
      v12 = *(a1 + 16);
      while (1)
      {
        v13 = *v11;
        v11 += 42;
        if (v13 == a3)
        {
          break;
        }

        if (!--v12)
        {
          goto LABEL_9;
        }
      }

      v9 = *(a1 + 24);
    }
  }

  else
  {
    v9 = *(a1 + 24);
    v10 = *(a1 + 16);
  }

LABEL_9:
  *(a1 + 16) = v10 + 1;
  v14 = malloc_type_calloc(0xA8uLL, v10 + 1, 0x8DB5B262uLL);
  v15 = v14;
  v16 = *(a1 + 32);
  if (v16)
  {
    memcpy(v14, v16, 168 * v10);
    free(*(a1 + 32));
  }

  *(a1 + 32) = v15;
  v17 = &v15[168 * v10];
  *v17 = a2;
  *(v17 + 1) = v9;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  v17[160] = 1;
  *(v17 + 14) = 0;
  if (v9 >= *(a1 + 24))
  {
    *(a1 + 24) = v9 + 1;
  }

  if (a4)
  {
    *a4 = v9;
  }

  if (a5)
  {
    *a5 = v10;
  }
}

uint64_t mutableComposition_postPossiblyDeferredTracksChangedNotification()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 16))
  {
    *(result + 17) = 1;
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

uint64_t compositionTable_discardUnusedAssets(uint64_t a1)
{
  FigSimpleMutexLock();
  Count = CFDictionaryGetCount(*(a1 + 64));
  if (Count <= 0)
  {
    FigSimpleMutexUnlock();
    goto LABEL_38;
  }

  v3 = Count;
  v4 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  CFDictionaryGetKeysAndValues(*(a1 + 64), v4, 0);
  for (i = 0; i != v3; ++i)
  {
    v6 = v4[i];
    if (v6)
    {
      CFRetain(v6);
    }
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  for (j = 0; j != v3; ++j)
  {
    if (CFBagContainsValue(*(a1 + 40), v4[j]))
    {
      v8 = v4[j];
      if (v8)
      {
        CFRelease(v8);
        v4[j] = 0;
      }
    }
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  for (k = 0; k != v3; ++k)
  {
    v10 = v4[k];
    if (v10)
    {
      CFDictionaryRemoveValue(*(a1 + 64), v10);
    }
  }

  FigSimpleMutexUnlock();
  for (m = 0; m != v3; ++m)
  {
    v12 = v4[m];
    if (v12)
    {
      FigSimpleMutexLock();
      v13 = *(a1 + 144);
      if (v13 >= 2)
      {
        v14 = 1;
        do
        {
          v15 = *(*(a1 + 136) + 16 * v14);
          if (v15)
          {
            if (CFEqual(v15, v12))
            {
              v16 = *(a1 + 136);
              v17 = *(v16 + 16 * v14);
              if (v17)
              {
                CFRelease(v17);
                v16 = *(a1 + 136);
                *(v16 + 16 * v14) = 0;
              }

              *(v16 + 16 * v14 + 8) = 0;
              Value = CFDictionaryGetValue(*(a1 + 152), v14);
              if (Value)
              {
                v19 = Value;
                CFRetain(Value);
                CFDictionaryRemoveValue(*(a1 + 152), v14);
                FigSimpleMutexUnlock();
                CFRelease(v19);
              }

              else
              {
                FigSimpleMutexUnlock();
              }

              ++v14;
              FigSimpleMutexLock();
              v13 = *(a1 + 144);
              continue;
            }

            v13 = *(a1 + 144);
          }

          ++v14;
        }

        while (v14 < v13);
      }

      FigSimpleMutexUnlock();
    }
  }

  for (n = 0; n != v3; ++n)
  {
    v21 = v4[n];
    if (v21)
    {
      CFRelease(v21);
      v4[n] = 0;
    }
  }

  free(v4);
LABEL_38:
  v22 = *(a1 + 160);
  FigSimpleMutexLock();
  v23 = CFDictionaryGetCount(*(v22 + 40));
  if (v23 >= 1)
  {
    v24 = v23;
    v25 = 8 * v23;
    v26 = malloc_type_malloc(8 * v23, 0x6004044C4A2DFuLL);
    v27 = malloc_type_malloc(v25, 0x6004044C4A2DFuLL);
    CFDictionaryGetKeysAndValues(*(v22 + 40), v26, v27);
    for (ii = 0; ii != v24; ++ii)
    {
      if (CFGetRetainCount(v27[ii]) == 1)
      {
        CFDictionaryRemoveValue(*(v22 + 40), v26[ii]);
      }
    }

    free(v26);
    free(v27);
  }

  return FigSimpleMutexUnlock();
}

uint64_t compositionEditSegment_validateSegments(uint64_t a1, uint64_t a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2 < 1)
  {
    return 0;
  }

  if (a1)
  {
    v4 = a2;
    if (!a3 || (*&v19.start.value = *(a1 + 48), v19.start.epoch = *(a1 + 64), time2 = **&MEMORY[0x1E6960CC0], !CMTimeCompare(&v19.start, &time2)))
    {
      v6 = v4 - 1;
      if (v4 == 1)
      {
LABEL_14:
        v14 = (a1 + 64);
        v15 = v4;
        while (!*v14 && !v14[3] && !*(v14 - 6) && !*(v14 - 3))
        {
          v14 = (v14 + 108);
          if (!--v15)
          {
            for (i = (a1 + 96); ; i = (i + 108))
            {
              v17 = *i;
              if ((*(i - 21) & 0x1D) == 1)
              {
                if (!v17)
                {
                  goto LABEL_31;
                }

                v18 = CFURLGetTypeID();
                if (v18 != CFGetTypeID(*i))
                {
                  goto LABEL_31;
                }
              }

              else if (v17)
              {
                goto LABEL_31;
              }

              result = 0;
              if (!--v4)
              {
                return result;
              }
            }
          }
        }
      }

      else
      {
        v7 = a1 + 156;
        while (1)
        {
          if ((memset(&v20, 0, sizeof(v20)), v8 = *(v7 - 92), *&v19.start.value = *(v7 - 108), *&v19.start.epoch = v8, *&v19.duration.timescale = *(v7 - 76), CMTimeRangeGetEnd(&v20, &v19), v26 = *v7, v9 = *(v7 + 12), v27 = *(v7 + 8), v10 = *(v7 + 16), value = v20.value, flags = v20.flags, timescale = v20.timescale, epoch = v20.epoch, (v9 & 0x1F) != 3) && (v20.flags & 0x1F) != 3 || (memset(&v19, 0, 24), v13 = *v7, rhs.epoch = v20.epoch, lhs.value = v13, lhs.timescale = *(v7 + 8), lhs.flags = v9, lhs.epoch = v10, rhs.value = v20.value, rhs.timescale = v20.timescale, rhs.flags = v20.flags, CMTimeSubtract(&time2, &lhs, &rhs), CMTimeAbsoluteValue(&v19.start, &time2), CMTimeMake(&time2, 1, 1000000000), lhs = v19.start, CMTimeCompare(&lhs, &time2) > 0))
          {
            v19.start.value = v26;
            v19.start.timescale = v27;
            v19.start.flags = v9;
            v19.start.epoch = v10;
            time2.value = value;
            time2.timescale = timescale;
            time2.flags = flags;
            time2.epoch = epoch;
            if (CMTimeCompare(&v19.start, &time2))
            {
              break;
            }
          }

          v7 += 108;
          if (!--v6)
          {
            goto LABEL_14;
          }
        }
      }
    }

LABEL_31:
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void compositionEditSegment_copySegmentsAndAddURLsToBag(CFTypeRef *a1, const void *a2, uint64_t a3, __CFBag *a4)
{
  v5 = a3;
  memcpy(a1, a2, 108 * a3);
  if (v5 >= 1)
  {
    v7 = a1 + 12;
    do
    {
      if ((*(v7 - 21) & 0x1D) == 1)
      {
        if (*v7)
        {
          CFRetain(*v7);
        }

        if (a4)
        {
          if (*v7)
          {
            CFBagAddValue(a4, *v7);
          }
        }
      }

      else
      {
        *v7 = 0;
      }

      v7 = (v7 + 108);
      --v5;
    }

    while (v5);
  }
}

uint64_t compositionEditSegment_combineEditSegmentsIfPossible(uint64_t a1, uint64_t a2, uint64_t a3, __CFBag *a4)
{
  v45 = *(a1 + 72);
  v46 = *(a1 + 88);
  v44 = *(a2 + 72);
  v42 = *(a1 + 24);
  v43 = *(a1 + 40);
  v41 = *(a2 + 24);
  *&time1.start.value = *(a1 + 72);
  time1.start.epoch = *(a1 + 88);
  time2 = *(a1 + 24);
  v8 = CMTimeCompare(&time1.start, &time2);
  time1.start = v44;
  time2 = v41;
  v9 = CMTimeCompare(&time1.start, &time2);
  time2 = **&MEMORY[0x1E6960CC0];
  v39 = time2;
  v10 = *(a1 + 64);
  *&time1.start.value = *(a1 + 48);
  *&time1.start.epoch = v10;
  *&time1.duration.timescale = *(a1 + 80);
  CMTimeRangeGetEnd(&rhs, &time1);
  *&time1.start.value = *(a2 + 48);
  time1.start.epoch = *(a2 + 64);
  if (CMTimeCompare(&rhs, &time1.start))
  {
    return 0;
  }

  v12 = *(a1 + 96);
  v13 = *(a2 + 96);
  if (!v12)
  {
    if (!v13)
    {
      *&time1.start.value = v45;
      time1.start.epoch = v46;
      rhs = v44;
      CMTimeAdd(&time2, &time1.start, &rhs);
      v28 = *(a1 + 92);
      v29 = *(a1 + 48);
      v30 = *(a1 + 80);
      *(a3 + 64) = *(a1 + 64);
      *(a3 + 80) = v30;
      *(a3 + 92) = v28;
      v31 = *(a1 + 16);
      v32 = *(a1 + 32);
      *a3 = *a1;
      *(a3 + 16) = v31;
      *(a3 + 32) = v32;
      *(a3 + 48) = v29;
      *(a3 + 72) = time2;
      return 1;
    }

    return 0;
  }

  if (!v13)
  {
    return 0;
  }

  result = CFEqual(v12, v13);
  if (result)
  {
    if (*(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }

    v14 = *(a1 + 16);
    *&time1.start.value = *a1;
    *&time1.start.epoch = v14;
    *&time1.duration.timescale = *(a1 + 32);
    CMTimeRangeGetEnd(&rhs, &time1);
    *&time1.start.value = *a2;
    time1.start.epoch = *(a2 + 16);
    v15 = CMTimeCompare(&rhs, &time1.start);
    result = 0;
    if (!v15 && (v8 != 0) == (v9 != 0))
    {
      if (!v8 || !v9 || (*&time1.start.value = v45, time1.start.epoch = v46, Seconds = CMTimeGetSeconds(&time1.start), time1.start = v41, v17 = Seconds * CMTimeGetSeconds(&time1.start), time1.start = v44, v18 = CMTimeGetSeconds(&time1.start), *&time1.start.value = v42, time1.start.epoch = v43, v17 == v18 * CMTimeGetSeconds(&time1.start)))
      {
        *&time1.start.value = v45;
        time1.start.epoch = v46;
        rhs = v44;
        CMTimeAdd(&time2, &time1.start, &rhs);
        *&time1.start.value = v42;
        time1.start.epoch = v43;
        rhs = v41;
        CMTimeAdd(&v39, &time1.start, &rhs);
        *&v38[28] = *(a1 + 92);
        v19 = *(a1 + 80);
        *v38 = *(a1 + 64);
        *&v38[16] = v19;
        v20 = *(a1 + 16);
        *&time1.start.value = *a1;
        *&time1.start.epoch = v20;
        v37 = *(a1 + 48);
        *&v38[8] = time2;
        time1.duration = v39;
        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
        v21 = *MEMORY[0x1E6960C70];
        v22 = *(MEMORY[0x1E6960C70] + 16);
        *(a1 + 16) = v22;
        *a1 = v21;
        if ((*(a2 + 12) & 0x1D) == 1)
        {
          if (!a4)
          {
            goto LABEL_17;
          }

          v23 = *(a2 + 96);
          if (v23)
          {
            v33 = v21;
            CFBagRemoveValue(a4, v23);
            v21 = v33;
LABEL_17:
            v24 = *(a2 + 96);
            if (v24)
            {
              v34 = v21;
              CFRelease(v24);
              v21 = v34;
              *(a2 + 96) = 0;
            }
          }
        }

        *(a2 + 104) = 0;
        *a2 = v21;
        *(a2 + 16) = v22;
        v25 = *&v38[16];
        *(a3 + 64) = *v38;
        *(a3 + 80) = v25;
        *(a3 + 92) = *&v38[28];
        v26 = *&time1.start.epoch;
        *a3 = *&time1.start.value;
        *(a3 + 16) = v26;
        v27 = v37;
        result = 1;
        *(a3 + 32) = *&time1.duration.timescale;
        *(a3 + 48) = v27;
        return result;
      }

      return 0;
    }
  }

  return result;
}

CFArrayRef mutableComposition_CreateReconstitutedMetadataProperty(const __CFDictionary *a1, CFAllocatorRef allocator)
{
  if (a1 && (Count = CFDictionaryGetCount(a1), Count >= 1))
  {
    v5 = Count;
    theArray = CFArrayCreateMutable(allocator, Count, MEMORY[0x1E695E9C0]);
    if (theArray)
    {
      v6 = malloc_type_malloc(8 * v5, 0x80040B8603338uLL);
      v7 = malloc_type_malloc(8 * v5, 0x80040B8603338uLL);
      v8 = 7315;
      if (v6 && v7)
      {
        CFDictionaryGetKeysAndValues(a1, v6, v7);
        v9 = 0;
        while (1)
        {
          v10 = v6[v9];
          v11 = v7[v9];
          if (v10)
          {
            v12 = v11 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (!v12)
          {
            Mutable = CFDictionaryCreateMutable(allocator, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!Mutable)
            {
              v8 = 7326;
              break;
            }

            v14 = Mutable;
            CFDictionarySetValue(Mutable, @"format", v10);
            CFDictionarySetValue(v14, @"items", v11);
            CFArrayAppendValue(theArray, v14);
            CFRelease(v14);
          }

          if (v5 == ++v9)
          {
            free(v6);
            free(v7);
            return theArray;
          }
        }
      }

      mutableComposition_CreateReconstitutedMetadataProperty_cold_1(v8, theArray);
    }

    else
    {
      mutableComposition_CreateReconstitutedMetadataProperty_cold_2();
    }

    return 0;
  }

  else
  {
    v16 = MEMORY[0x1E695E9C0];

    return CFArrayCreate(allocator, 0, 0, v16);
  }
}

uint64_t compositionTableTrack_setFormatDescriptionReplacementTable(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFArrayGetTypeID())
    {
      compositionTableTrack_setFormatDescriptionReplacementTable_cold_1(&v23);
      return v23;
    }

    v22 = a1;
    v5 = *MEMORY[0x1E695E480];
    Count = CFArrayGetCount(cf);
    Mutable = CFArrayCreateMutable(v5, Count, MEMORY[0x1E695E9C0]);
    if (CFArrayGetCount(cf) < 1)
    {
      MutableCopy = 0;
LABEL_19:
      v20 = *(v22 + 112);
      *(v22 + 112) = Mutable;
      if (Mutable)
      {
        CFRetain(Mutable);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      v19 = 0;
      if (!MutableCopy)
      {
        goto LABEL_25;
      }
    }

    else
    {
      MutableCopy = 0;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(cf, v9);
        if (!ValueAtIndex || (v11 = ValueAtIndex, v12 = CFGetTypeID(ValueAtIndex), v12 != CFDictionaryGetTypeID()))
        {
          compositionTableTrack_setFormatDescriptionReplacementTable_cold_4(&v23);
          goto LABEL_31;
        }

        Value = CFDictionaryGetValue(v11, @"MutableCompositionFormatDescriptionReplacementTableKey_OldFormatDescription");
        v14 = CFDictionaryGetValue(v11, @"MutableCompositionFormatDescriptionReplacementTableKey_NewFormatDescription");
        if (!Value || (v15 = v14, v16 = CFGetTypeID(Value), v16 != CMFormatDescriptionGetTypeID()))
        {
          compositionTableTrack_setFormatDescriptionReplacementTable_cold_3(&v23);
          goto LABEL_31;
        }

        if (!v15)
        {
          break;
        }

        v17 = CFGetTypeID(v15);
        if (v17 != CMFormatDescriptionGetTypeID())
        {
          break;
        }

        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, v11);
        CFArrayAppendValue(Mutable, MutableCopy);
        if (++v9 >= CFArrayGetCount(cf))
        {
          goto LABEL_19;
        }
      }

      compositionTableTrack_setFormatDescriptionReplacementTable_cold_2(&v23);
LABEL_31:
      v19 = v23;
      if (!MutableCopy)
      {
        goto LABEL_25;
      }
    }

    CFRelease(MutableCopy);
LABEL_25:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return v19;
  }

  v18 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v18)
  {
    CFRelease(v18);
  }

  return 0;
}

double compositionTableTrack_updateTrackStartTimes(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 8) > a2)
  {
    v17 = v3;
    v18 = v4;
    v6 = a2;
    v8 = 108 * a2 + 48;
    do
    {
      v9 = *(a1 + 16) + v8;
      v10 = *a3;
      *(v9 + 16) = *(a3 + 2);
      *v9 = v10;
      v11 = (*(a1 + 16) + v8);
      v12 = *v11;
      v13 = v11[2];
      *&v15.start.epoch = v11[1];
      *&v15.duration.timescale = v13;
      *&v15.start.value = v12;
      CMTimeRangeGetEnd(&v16, &v15);
      result = *&v16.value;
      *a3 = v16;
      ++v6;
      v8 += 108;
    }

    while (v6 < *(a1 + 8));
  }

  return result;
}

uint64_t compositionTableTrack_findEditSegmentByTime(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return -1;
  }

  if (v2 >= 2)
  {
    v5 = 0;
    v6 = v2 - 1;
    while (1)
    {
      v7 = (v6 + v5) >> 1;
      v8 = *(a1 + 16) + 108 * v7;
      v15 = *(v8 + 48);
      memset(&v14, 0, sizeof(v14));
      v9 = *(v8 + 48);
      v10 = *(v8 + 80);
      *&range.start.epoch = *(v8 + 64);
      *&range.duration.timescale = v10;
      *&range.start.value = v9;
      CMTimeRangeGetEnd(&v14, &range);
      *&range.start.value = *a2;
      range.start.epoch = *(a2 + 16);
      v12 = v14;
      if (CMTimeCompare(&range.start, &v12) < 1)
      {
        *&range.start.value = *a2;
        range.start.epoch = *(a2 + 16);
        v12 = v14;
        if (!CMTimeCompare(&range.start, &v12))
        {
          return v7 + 1;
        }

        *&range.start.value = *a2;
        range.start.epoch = *(a2 + 16);
        v12 = v15;
        if ((CMTimeCompare(&range.start, &v12) & 0x80000000) == 0)
        {
          return (v6 + v5) >> 1;
        }

        v6 = v7 - 1;
      }

      else
      {
        v5 = v7 + 1;
      }

      if (v5 >= v6)
      {
        return v5;
      }
    }
  }

  return 0;
}

uint64_t tableTrack_InsertEmptyEditsInTracks(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, CMTime *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 < 1)
  {
    return 0;
  }

  v10 = *(DerivedStorage + 8);
  v11 = MEMORY[0x1E6960CC0];
  while (1)
  {
    v12 = *a2++;
    v13 = *(v10 + 32) + 168 * v12;
    if (*(v13 + 8) >= 1)
    {
      v20 = *v11;
      v14 = *(v13 + 8);
      if (v14 >= 1)
      {
        v15 = *(v13 + 16) + 108 * v14;
        v16 = *(v15 - 60);
        v17 = *(v15 - 28);
        *&range.start.epoch = *(v15 - 44);
        *&range.duration.timescale = v17;
        *&range.start.value = v16;
        CMTimeRangeGetEnd(&v20, &range);
      }

      *&range.start.value = *a4;
      range.start.epoch = *(a4 + 16);
      v19 = v20;
      if (CMTimeCompare(&range.start, &v19) < 0)
      {
        *&range.start.value = *a4;
        range.start.epoch = *(a4 + 16);
        v19 = *a5;
        result = compositionTable_insertEmptyTrackSegment(v10, v13, &range, &v19);
        if (result)
        {
          break;
        }
      }
    }

    if (!--a3)
    {
      return 0;
    }
  }

  return result;
}

void mutableComposition_addAssetsForURLsFromCompositionForSegments(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 8);
  v11 = *(v9 + 8);
  v15 = 0;
  if (a1 != a2 && a4 >= 1)
  {
    v12 = (a3 + 96);
    do
    {
      if ((*(v12 - 21) & 0x1D) == 1)
      {
        v13 = *v12;
        if (*v12)
        {
          compositionSharedCache_copyAssetForAssetURLFromCache(*(v11 + 160), *v12, &v15);
          v14 = v15;
          if (v15)
          {
            compositionTable_addAssetForURL(v10, v13, v15);
            CFRelease(v14);
            v15 = 0;
          }
        }
      }

      v12 = (v12 + 108);
      --a4;
    }

    while (a4);
  }
}

CMTime *compositionEditSegment_adjustSegmentStartTimes(CMTime *result, uint64_t a2, CMTime *a3)
{
  v7 = *a3;
  if (a2 >= 1)
  {
    v3 = a2;
    v4 = result + 2;
    do
    {
      *v4 = v7;
      v5 = *&v4->epoch;
      *&v6.start.value = *&v4->value;
      *&v6.start.epoch = v5;
      *&v6.duration.timescale = *&v4[1].timescale;
      result = CMTimeRangeGetEnd(&v7, &v6);
      v4 = (v4 + 108);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t compositionTable_addAssetForURL(uint64_t a1, const void *a2, const void *a3)
{
  v6 = *(a1 + 160);
  FigSimpleMutexLock();
  if (!CFDictionaryContainsKey(*(v6 + 40), a2))
  {
    CFDictionarySetValue(*(v6 + 40), a2, a3);
    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    CFDictionarySetValue(*(a1 + 64), a2, a3);
  }

  return FigSimpleMutexUnlock();
}

__n128 OUTLINED_FUNCTION_9_47@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 112) = *a1;
  *(v1 - 96) = a1[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_12_45()
{

  return FigSimpleMutexLock();
}

uint64_t OUTLINED_FUNCTION_20_27(uint64_t *a1)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_21(uint64_t a1, uint64_t a2, CMTime *time2, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 time2a, uint64_t time2_16, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, CMTime *time1, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t time1a, int time1_8, int time1_12, uint64_t time1_16)
{
  time1a = *(v37 - 104);
  time1_8 = *(v37 - 96);
  time1_12 = v35;
  time1_16 = v36;
  time2a = *(v37 - 128);
  time2_16 = *(v37 - 112);

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_34_20@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, uint64_t a3, uint64_t a4, __n128 time2a, uint64_t time2_16, uint64_t a7, __int128 time1a, uint64_t time1_16)
{
  time1a = *v11;
  time1_16 = *(v11 + 2);
  time2a = a2;
  time2_16 = a1;

  return CMTimeCompare(&time1a, &time2a);
}

Float64 OUTLINED_FUNCTION_35_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CMTime *time, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t timea, int time_8, int time_12, uint64_t time_16, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22)
{
  timea = a21;
  time_8 = a22;
  time_12 = v22;
  time_16 = a11;

  return CMTimeGetSeconds(&timea);
}

void OUTLINED_FUNCTION_36_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v12 + 8) = *(v11 + 8);
  *(v12 + 16) = *(v11 + 16);
  *v10 = a10;
}

void OUTLINED_FUNCTION_41_18()
{
  *(v3 - 184) = *(v3 - 112);
  *(v3 - 180) = v1;
  *(v2 + 16) = v0;
}

uint64_t OUTLINED_FUNCTION_42_18@<X0>(__int128 a1@<0:X4, 8:X5>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 a7, uint64_t time1a, uint64_t time1_8, uint64_t time1_16)
{
  time1_16 = a2;
  *(v12 - 160) = a7;
  *(v12 - 144) = v11;

  return CMTimeCompare(&time1a, (v12 - 160));
}

double OUTLINED_FUNCTION_51_17()
{
  result = 0.0;
  *(v0 + 92) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_11(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 40);

  return compositionEditSegment_combineEditSegmentsIfPossible(a2 - 108, a2, a2 - 108, v4);
}

uint64_t OUTLINED_FUNCTION_58_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, CMTime *time2, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, __int128 time2a, uint64_t time2_16)
{
  time2a = a16;
  time2_16 = v20;

  return CMTimeCompare((v21 - 112), &time2a);
}

CMTime *OUTLINED_FUNCTION_86_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, uint64_t a12, uint64_t a13, CMTimeRange *range, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __n128 rangea, __n128 range_16, __n128 range_32)
{
  range_16 = a10;
  range_32 = a11;
  rangea = a9;

  return CMTimeRangeGetEnd(&a18, &rangea);
}

CMTime *OUTLINED_FUNCTION_87_3@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMTime *a8, uint64_t a9, uint64_t a10, uint64_t a11, CMTime *rhs, uint64_t a13, uint64_t rhsa, uint64_t rhs_8, uint64_t rhs_16)
{
  rhs_16 = a1;

  return CMTimeSubtract(&a8, &a2, &rhsa);
}

CMTime *OUTLINED_FUNCTION_88_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, CMTimeRange *range, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __n128 rangea, __n128 range_16, __n128 range_32)
{
  range_16 = a10;
  range_32 = a11;
  rangea = a9;

  return CMTimeRangeGetEnd(&a18, &rangea);
}

uint64_t RegisterFigMetadataConverterBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigMetadataConverterGetCFTypeID()
{
  MEMORY[0x19A8D3660](&FigMetadataConverterGetClassID_sRegisterFigMetadataConverterBaseTypeOnce, RegisterFigMetadataConverterBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigMetadataCreateConverter(CFTypeRef cf1, const void *a2, const __CFDictionary *a3, int a4, void *a5)
{
  if (!a5)
  {
    FigMetadataCreateConverter_cold_2(&v13);
    return v13;
  }

  if (!cf1 || !a2)
  {
    FigMetadataCreateConverter_cold_1(&v12);
    return v12;
  }

  if (CFEqual(cf1, @"com.apple.quicktime.udta") || CFEqual(cf1, @"org.mp4ra") || CFEqual(cf1, @"com.apple.quicktime.mdta"))
  {
    if (CFEqual(a2, @"com.apple.quicktime.udta") || CFEqual(a2, @"org.mp4ra") || CFEqual(a2, @"com.apple.quicktime.mdta"))
    {

      return FigMetadataConverterCreateForQuickTime(a4, cf1, a2, a3, a5);
    }

    v11 = a2;
  }

  else
  {
    if (!CFEqual(cf1, @"com.apple.itunes"))
    {
      goto LABEL_23;
    }

    if (CFEqual(a2, @"com.apple.quicktime.udta") || CFEqual(a2, @"com.apple.quicktime.mdta") || CFEqual(a2, @"org.mp4ra"))
    {
      goto LABEL_20;
    }

    v11 = cf1;
  }

  if (CFEqual(v11, @"com.apple.itunes"))
  {
LABEL_20:

    return FigMetadataConverterCreateForQuickTimeToFromiTunes(a4, cf1, a2, a3, a5);
  }

LABEL_23:

  return FigSignalErrorAtGM();
}

uint64_t registerFigPartialSampleTableBrokerType()
{
  result = _CFRuntimeRegisterClass();
  sFigPartialSampleTableBrokerID = result;
  return result;
}

uint64_t FigPartialSampleTableBrokerCreate(const __CFAllocator *a1, void *a2)
{
  if (a2)
  {
    if (FigPartialSampleTableBrokerGetTypeID_sRegisterFigPartialSampleTableBrokerTypeOnce != -1)
    {
      FigPartialSampleTableBrokerCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      v5[3] = Mutable;
      if (Mutable)
      {
        v7 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
        v5[4] = v7;
        if (v7)
        {
          v8 = FigSimpleMutexCreate();
          v5[2] = v8;
          if (v8)
          {
            result = 0;
            *a2 = v5;
            return result;
          }

          v10 = 253;
        }

        else
        {
          v10 = 250;
        }
      }

      else
      {
        v10 = 247;
      }

      FigPartialSampleTableBrokerCreate_cold_2(v10, v5, &v11);
      return v11;
    }

    else
    {
      FigPartialSampleTableBrokerCreate_cold_3(&v12);
      return v12;
    }
  }

  else
  {
    FigPartialSampleTableBrokerCreate_cold_4(&v13);
    return v13;
  }
}

uint64_t FigPartialSampleTableBrokerFindAndRetainPartialSampleTableCoveringDecodeTime(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(MEMORY[0x1E6960C98] + 16);
  *&v20.start.value = *MEMORY[0x1E6960C98];
  v4 = *(MEMORY[0x1E6960C98] + 32);
  *&v20.start.epoch = v3;
  *&v20.duration.timescale = v4;
  if ((*(a2 + 12) & 0x1D) != 1)
  {
    FigPartialSampleTableBrokerFindAndRetainPartialSampleTableCoveringDecodeTime_cold_1(&range);
    return LODWORD(range.start.value);
  }

  if ((*(a2 + 36) & 0x1D) != 1)
  {
    FigPartialSampleTableBrokerFindAndRetainPartialSampleTableCoveringDecodeTime_cold_2(&range);
    return LODWORD(range.start.value);
  }

  if (!a3)
  {
    FigPartialSampleTableBrokerFindAndRetainPartialSampleTableCoveringDecodeTime_cold_3(&range);
    return LODWORD(range.start.value);
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
        v11 = 0;
LABEL_16:
        *a3 = v11;
        FigSimpleMutexUnlock();
        return 0;
      }

      CFArrayGetValueAtIndex(*(a1 + 24), i);
      v10 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v10)
      {
        break;
      }

      CFArrayRemoveValueAtIndex(*(a1 + 24), i);
    }

    v11 = v10;
    DecodeTimeRange = FigPartialSampleTableGetDecodeTimeRange(v10, &v20, 0);
    if (DecodeTimeRange)
    {
      break;
    }

    v13 = *(a2 + 16);
    *&range.start.value = *a2;
    *&range.start.epoch = v13;
    *&range.duration.timescale = *(a2 + 32);
    CMTimeRangeGetEnd(&time2.start, &range);
    *&range.start.value = *&v20.start.value;
    range.start.epoch = v20.start.epoch;
    if (CMTimeCompare(&range.start, &time2.start) > 0)
    {
      break;
    }

    range = v20;
    v14 = *(a2 + 16);
    *&time2.start.value = *a2;
    *&time2.start.epoch = v14;
    *&time2.duration.timescale = *(a2 + 32);
    if (CMTimeRangeContainsTimeRange(&range, &time2))
    {
      range = v20;
      CMTimeRangeGetEnd(&time2.start, &range);
      v15 = *(a2 + 16);
      *&range.start.value = *a2;
      *&range.start.epoch = v15;
      *&range.duration.timescale = *(a2 + 32);
      CMTimeRangeGetEnd(&v17, &range);
      if (CMTimeCompare(&time2.start, &v17) > 0)
      {
        goto LABEL_16;
      }
    }

    CFRelease(v11);
  }

  FigSimpleMutexUnlock();
  CFRelease(v11);
  return DecodeTimeRange;
}

uint64_t FigPartialSampleTableBrokerInterestTokenCreate(const __CFAllocator *a1, __int128 *a2, __int128 *a3, char a4, void *a5)
{
  if (a5)
  {
    if (FigPartialSampleTableBrokerInterestTokenGetTypeID_sRegisterFigPartialSampleTableBrokerInterestTokenTypeOnce != -1)
    {
      FigPartialSampleTableBrokerInterestTokenCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v11 = Instance;
      v12 = *a2;
      *(Instance + 32) = *(a2 + 2);
      *(Instance + 16) = v12;
      v13 = *a3;
      *(Instance + 56) = *(a3 + 2);
      *(Instance + 40) = v13;
      *(Instance + 64) = a4;
      Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      v11[9] = Mutable;
      if (Mutable)
      {
        result = 0;
        *a5 = v11;
      }

      else
      {
        FigPartialSampleTableBrokerInterestTokenCreate_cold_2(v11, &v16);
        return v16;
      }
    }

    else
    {
      FigPartialSampleTableBrokerInterestTokenCreate_cold_3(&v17);
      return v17;
    }
  }

  else
  {
    FigPartialSampleTableBrokerInterestTokenCreate_cold_4(&v18);
    return v18;
  }

  return result;
}

uint64_t pstBroker_associateRelevantTablesWithNewInterestToken(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = MEMORY[0x1E6960C98];
  while (1)
  {
    while (1)
    {
      Count = *(a1 + 24);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (v4 >= Count)
      {
        return 0;
      }

      CFArrayGetValueAtIndex(*(a1 + 24), v4);
      v7 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v7)
      {
        break;
      }

      CFArrayRemoveValueAtIndex(*(a1 + 24), v4);
    }

    v8 = v7;
    v9 = v5[1];
    v14 = *v5;
    v15 = v9;
    v16 = v5[2];
    DecodeTimeRange = FigPartialSampleTableGetDecodeTimeRange(v7, &v14, 0);
    if (DecodeTimeRange)
    {
      break;
    }

    v13[0] = v14;
    v13[1] = v15;
    v13[2] = v16;
    if (pstBroker_tableTimeRangeIsRelevantToInterestToken(v13, a2))
    {
      CFArrayAppendValue(*(a2 + 72), v8);
    }

    CFRelease(v8);
    ++v4;
  }

  v11 = DecodeTimeRange;
  CFRelease(v8);
  return v11;
}

void *FigPartialSampleTableBroker_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

uint64_t FigPartialSampleTableBroker_Finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  result = FigSimpleMutexDestroy();
  a1[2] = 0;
  return result;
}

__CFString *FigPartialSampleTableBroker_CopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPartialSampleTableBroker %p>", a1);
  return Mutable;
}

uint64_t pstBroker_tableTimeRangeIsRelevantToInterestToken(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 64) < 0)
  {
    *&start.start.value = *MEMORY[0x1E6960CC0];
    start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    *&end.start.value = *(a2 + 16);
    v4 = *(a2 + 32);
  }

  else
  {
    *&start.start.value = *(a2 + 16);
    start.start.epoch = *(a2 + 32);
    *&end.start.value = *MEMORY[0x1E6960C88];
    v4 = *(MEMORY[0x1E6960C88] + 16);
  }

  end.start.epoch = v4;
  memset(&v14, 0, sizeof(v14));
  CMTimeRangeFromTimeToTime(&v14, &start.start, &end.start);
  v5 = *(a1 + 16);
  *&end.start.value = *a1;
  *&end.start.epoch = v5;
  *&end.duration.timescale = *(a1 + 32);
  memset(&start, 0, sizeof(start));
  otherRange = v14;
  CMTimeRangeGetIntersection(&start, &end, &otherRange);
  v6 = *(a1 + 16);
  *&end.start.value = *a1;
  *&end.start.epoch = v6;
  *&end.duration.timescale = *(a1 + 32);
  *&otherRange.start.value = *(a2 + 16);
  otherRange.start.epoch = *(a2 + 32);
  if (!CMTimeRangeContainsTime(&end, &otherRange.start))
  {
LABEL_10:
    v8 = *(a2 + 64);
    if (v8 < 1)
    {
      goto LABEL_18;
    }

    if ((start.start.flags & 1) != 0 && (start.duration.flags & 1) != 0 && !start.duration.epoch && (start.duration.value & 0x8000000000000000) == 0 && (end.start = start.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), !CMTimeCompare(&end.start, &otherRange.start)) || (*&otherRange.start.value = *a1, otherRange.start.epoch = *(a1 + 16), v10 = *(a2 + 16), CMTimeSubtract(&end.start, &otherRange.start, &v10), *&otherRange.start.value = *(a2 + 40), otherRange.start.epoch = *(a2 + 56), CMTimeCompare(&end.start, &otherRange.start) >= 1))
    {
      LOBYTE(v8) = *(a2 + 64);
LABEL_18:
      if ((v8 & 0x80) == 0)
      {
        return 0;
      }

      if ((start.start.flags & 1) != 0 && (start.duration.flags & 1) != 0 && !start.duration.epoch && (start.duration.value & 0x8000000000000000) == 0)
      {
        end.start = start.duration;
        *&otherRange.start.value = *MEMORY[0x1E6960CC0];
        otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
        if (!CMTimeCompare(&end.start, &otherRange.start))
        {
          return 0;
        }
      }

      v9 = *(a1 + 16);
      *&end.start.value = *a1;
      *&end.start.epoch = v9;
      *&end.duration.timescale = *(a1 + 32);
      CMTimeRangeGetEnd(&otherRange.start, &end);
      v10 = *(a2 + 16);
      CMTimeSubtract(&end.start, &v10, &otherRange.start);
      *&otherRange.start.value = *(a2 + 40);
      otherRange.start.epoch = *(a2 + 56);
      if (CMTimeCompare(&end.start, &otherRange.start) >= 1)
      {
        return 0;
      }
    }

    return 1;
  }

  if ((start.start.flags & 1) == 0)
  {
    return 1;
  }

  result = 1;
  if ((start.duration.flags & 1) != 0 && !start.duration.epoch && (start.duration.value & 0x8000000000000000) == 0)
  {
    end.start = start.duration;
    *&otherRange.start.value = *MEMORY[0x1E6960CC0];
    otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    if (CMTimeCompare(&end.start, &otherRange.start))
    {
      return 1;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t registerFigPartialSampleTableBrokerInterestTokenType()
{
  result = _CFRuntimeRegisterClass();
  sFigPartialSampleTableBrokerInterestTokenID = result;
  return result;
}

double FigPartialSampleTableBrokerInterestToken_Init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void FigPartialSampleTableBrokerInterestToken_Finalize(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 72) = 0;
  }
}

__CFString *FigPartialSampleTableBrokerInterestToken_CopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  time = *(a1 + 16);
  Seconds = CMTimeGetSeconds(&time);
  time = *(a1 + 40);
  v5 = CMTimeGetSeconds(&time);
  v6 = *(a1 + 64);
  Count = *(a1 + 72);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  CFStringAppendFormat(Mutable, 0, @"<FigPartialSampleTableBrokerInterestToken %p - %.3f[%+.3f] - %ld candidates>", a1, *&Seconds, v5 * v6, Count);
  return Mutable;
}

uint64_t OUTLINED_FUNCTION_2_127(__n128 a1)
{
  *(v2 - 80) = a1;

  return FigPartialSampleTableGetDecodeTimeRange(v1, (v2 - 112), 0);
}

uint64_t FigMetadataConverterCreateForQuickTime(int a1, CFTypeRef cf1, const void *a3, const __CFDictionary *a4, void *a5)
{
  if (!a5)
  {
    FigMetadataConverterCreateForQuickTime_cold_2(&v13);
    return v13;
  }

  if (!cf1 || !a3)
  {
    FigMetadataConverterCreateForQuickTime_cold_1(&v13);
    return v13;
  }

  if ((CFEqual(cf1, @"com.apple.quicktime.udta") || CFEqual(cf1, @"org.mp4ra") || CFEqual(cf1, @"com.apple.quicktime.mdta")) && (CFEqual(a3, @"com.apple.quicktime.udta") || CFEqual(a3, @"org.mp4ra") || CFEqual(a3, @"com.apple.quicktime.mdta")))
  {
    if (CFEqual(cf1, @"com.apple.quicktime.udta") && CFEqual(a3, @"com.apple.quicktime.mdta"))
    {
      return 4294954814;
    }

    FigMetadataConverterGetClassID();
    v9 = CMDerivedObjectCreate();
    if (!v9)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = CFRetain(cf1);
      DerivedStorage[1] = CFRetain(a3);
      if (a4)
      {
        Value = CFDictionaryGetValue(a4, @"DestFileFormat");
        if (Value)
        {
          Value = CFRetain(Value);
        }

        DerivedStorage[2] = Value;
      }

      v9 = 0;
      *a5 = 0;
    }

    return v9;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void qtiso_FigMetadataConverterFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }
}

__CFString *qtiso_FigMetadataConverterCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigQuickTimeISOMetadataConverter %p\n", DerivedStorage);
  if (*(DerivedStorage + 8))
  {
    CFStringAppendFormat(Mutable, 0, @"  Destination Format = %@\n", *(DerivedStorage + 8));
  }

  return Mutable;
}

uint64_t qtiso_FigMetadataConverterCreateConvertedItem(const void *a1, const __CFDictionary *a2, const __CFAllocator *a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    qtiso_FigMetadataConverterCreateConvertedItem_cold_5(&valuePtr);
    return LODWORD(valuePtr);
  }

  v9 = DerivedStorage;
  Value = CFDictionaryGetValue(a2, @"key");
  if (!Value)
  {
    qtiso_FigMetadataConverterCreateConvertedItem_cold_4(&valuePtr);
    return LODWORD(valuePtr);
  }

  v11 = Value;
  v12 = CMBaseObjectGetDerivedStorage();
  if (CFEqual(*v12, @"com.apple.quicktime.mdta"))
  {
    v13 = CMBaseObjectGetDerivedStorage();
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v11))
    {
      if (CFEqual(*(v13 + 8), @"com.apple.quicktime.mdta"))
      {
        CFRetain(v11);
        v15 = v11;
LABEL_7:
        CFRetain(v15);
        goto LABEL_64;
      }

      if (!CFEqual(*(v13 + 8), @"com.apple.quicktime.udta") && CFEqual(*(v13 + 8), @"org.mp4ra") && (v32 = *(v13 + 16)) != 0 && (CFEqual(v32, @"iso.mp4") || (v36 = *(v13 + 16)) != 0 && CFEqual(v36, @"iso.3gp")))
      {
        MEMORY[0x19A8D3660](&gCreateKeyArrayOnce, qtiso_setUpKeyMapping);
        v15 = CFDictionaryGetValue(gQTMetadataKeyTo3GPKeyDict, v11);
        CFRetain(v11);
        if (v15)
        {
          goto LABEL_7;
        }
      }

      else
      {
        CFRetain(v11);
      }

      CFRelease(v11);
    }

    return 4294954813;
  }

  v16 = v9;
  v17 = a4;
  if (!CFEqual(*v12, @"org.mp4ra"))
  {
    if (!CFEqual(*v12, @"com.apple.quicktime.udta"))
    {
      return 4294954813;
    }

    v23 = a3;
    valuePtr = 0.0;
    cf1a = CMBaseObjectGetDerivedStorage();
    OSTypeKeyToStringKeyMapping = FigUserDataGetOSTypeKeyToStringKeyMapping();
    v25 = CFGetTypeID(v11);
    if (v25 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
      v26 = CFDictionaryGetValue(OSTypeKeyToStringKeyMapping, LODWORD(valuePtr));
      a3 = v23;
      if (!v26)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v30 = CFGetTypeID(v11);
      if (v30 != CFStringGetTypeID())
      {
        v11 = 0;
        v15 = 0;
        a3 = v23;
        v9 = v16;
        goto LABEL_63;
      }

      a3 = v23;
      if (!FigUserDataStringKeyToOSTypeKey(v11, &valuePtr))
      {
        v11 = 0;
        goto LABEL_53;
      }

      v26 = CFDictionaryGetValue(OSTypeKeyToStringKeyMapping, LODWORD(valuePtr));
      if (!v26)
      {
LABEL_38:
        valuePtr = COERCE_FLOAT(bswap32(LODWORD(valuePtr)));
        v33 = CFGetAllocator(a1);
        v11 = CFStringCreateWithFormat(v33, 0, @"%c%c%c%c", SLOBYTE(valuePtr), SBYTE1(valuePtr), SBYTE2(valuePtr), SHIBYTE(valuePtr));
        if (v11)
        {
          goto LABEL_39;
        }

LABEL_53:
        v15 = 0;
        goto LABEL_54;
      }
    }

    v31 = CFRetain(v26);
    if (v31)
    {
      v11 = v31;
LABEL_39:
      if (!CFEqual(cf1a[1], @"org.mp4ra"))
      {
        v15 = v11;
        v9 = v16;
        if (CFEqual(cf1a[1], @"com.apple.quicktime.udta"))
        {
          goto LABEL_50;
        }

        CFEqual(cf1a[1], @"com.apple.quicktime.mdta");
        goto LABEL_62;
      }

      v34 = cf1a[2];
      if (v34)
      {
        v9 = v16;
        if (!CFEqual(v34, @"iso.mp4"))
        {
          v35 = cf1a[2];
          if (!v35 || !CFEqual(v35, @"iso.3gp"))
          {
            goto LABEL_62;
          }
        }

        MEMORY[0x19A8D3660](&gCreateKeyArrayOnce, qtiso_setUpKeyMapping);
        v15 = CFDictionaryGetValue(gUserDataKeyTo3GPKeyDict, v11);
        if (!v15)
        {
          goto LABEL_63;
        }

LABEL_50:
        CFRetain(v15);
        goto LABEL_63;
      }

      v15 = 0;
LABEL_54:
      v9 = v16;
      goto LABEL_63;
    }

    goto LABEL_38;
  }

  cf1 = a3;
  valuePtr = 0.0;
  v18 = CMBaseObjectGetDerivedStorage();
  v19 = FigISOUserDataGetOSTypeKeyToStringKeyMapping();
  v20 = CFGetTypeID(v11);
  if (v20 == CFNumberGetTypeID())
  {
    CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
    v21 = CFDictionaryGetValue(v19, LODWORD(valuePtr));
    a4 = v17;
    a3 = cf1;
    if (!v21 || (v11 = CFRetain(v21)) == 0)
    {
      valuePtr = COERCE_FLOAT(bswap32(LODWORD(valuePtr)));
      v22 = CFGetAllocator(a1);
      v11 = CFStringCreateWithFormat(v22, 0, @"%c%c%c%c", SLOBYTE(valuePtr), SBYTE1(valuePtr), SBYTE2(valuePtr), SHIBYTE(valuePtr));
      if (!v11)
      {
        goto LABEL_62;
      }
    }
  }

  else
  {
    v27 = CFGetTypeID(v11);
    if (v27 != CFStringGetTypeID())
    {
      v11 = 0;
      v15 = 0;
      a4 = v17;
      a3 = cf1;
      goto LABEL_63;
    }

    v11 = CFRetain(v11);
    a4 = v17;
    a3 = cf1;
    if (!v11)
    {
      goto LABEL_62;
    }
  }

  v15 = v11;
  if (CFEqual(*(v18 + 8), @"org.mp4ra"))
  {
    goto LABEL_50;
  }

  if (CFEqual(*(v18 + 8), @"com.apple.quicktime.udta"))
  {
    v28 = &g3GPKeyToUserDataKeyDict;
    goto LABEL_47;
  }

  if (!CFEqual(*(v18 + 8), @"com.apple.quicktime.mdta"))
  {
LABEL_62:
    v15 = 0;
    goto LABEL_63;
  }

  v28 = &g3GPKeyToQTMetadataKeyDict;
LABEL_47:
  MEMORY[0x19A8D3660](&gCreateKeyArrayOnce, qtiso_setUpKeyMapping);
  v15 = CFDictionaryGetValue(*v28, v11);
  a3 = cf1;
  if (v15)
  {
    goto LABEL_50;
  }

LABEL_63:
  if (!v15)
  {
    MutableCopy = 0;
    v29 = 4294954813;
    v39 = 1;
    goto LABEL_100;
  }

LABEL_64:
  if (a4)
  {
    if (CFEqual(v11, v15))
    {
      Count = CFDictionaryGetCount(a2);
      MutableCopy = CFDictionaryCreateMutableCopy(a3, Count, a2);
      goto LABEL_95;
    }

    v66 = a4;
    v67 = v9;
    cf1b = a3;
    theDict = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!theDict)
    {
      qtiso_FigMetadataConverterCreateConvertedItem_cold_3(&valuePtr);
      v39 = 0;
      MutableCopy = 0;
      v29 = LODWORD(valuePtr);
      goto LABEL_100;
    }

    v40 = CFDictionaryGetValue(a2, @"value");
    v41 = CFDictionaryGetValue(a2, @"locale");
    v42 = CFDictionaryGetValue(a2, @"languageCode");
    if (CFEqual(v15, @"yrrc"))
    {
      cf1c = v15;
      v43 = CFGetTypeID(v40);
      if (v43 == CFNumberGetTypeID())
      {
        MutableCopy = theDict;
        CFDictionaryAddValue(theDict, @"key", v15);
        v44 = theDict;
        v45 = v40;
LABEL_88:
        CFDictionaryAddValue(v44, @"value", v45);
        a4 = v66;
        v9 = v67;
        goto LABEL_95;
      }

      v50 = CFGetTypeID(v40);
      MutableCopy = theDict;
      if (v50 == CFStringGetTypeID())
      {
        IntValue = CFStringGetIntValue(v40);
        if (IntValue < 0)
        {
          v29 = 4294954813;
        }

        else
        {
          v51 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &IntValue);
          if (v51)
          {
            v49 = v51;
            CFDictionaryAddValue(theDict, @"key", v15);
            CFDictionaryAddValue(theDict, @"value", v49);
LABEL_94:
            CFRelease(v49);
            goto LABEL_95;
          }

          qtiso_FigMetadataConverterCreateConvertedItem_cold_1(&valuePtr);
          v29 = LODWORD(valuePtr);
        }

        v39 = 0;
        goto LABEL_134;
      }

      goto LABEL_107;
    }

    if (!CFEqual(v15, @"com.apple.quicktime.year"))
    {
      v52 = v40;
      if (CFEqual(v15, @"com.apple.quicktime.rating.user") || CFEqual(v15, @"urat"))
      {
        valuePtr = 0.0;
        v53 = CFGetTypeID(v40);
        if (v53 != CFNumberGetTypeID() || (CFNumberGetValue(v40, kCFNumberFloat32Type, &valuePtr), valuePtr < 0.0) || valuePtr > 5.0)
        {
          v39 = 0;
          v29 = 4294954813;
          MutableCopy = theDict;
          goto LABEL_100;
        }

        MutableCopy = theDict;
        v54 = theDict;
      }

      else
      {
        cf1c = v15;
        if (!CFEqual(v15, @"com.apple.quicktime.artwork") && !CFEqual(v15, @"thmb"))
        {
          v64 = CFGetTypeID(v40);
          if (v64 == CFStringGetTypeID())
          {
            CFDictionaryAddValue(theDict, @"key", v15);
            CFDictionaryAddValue(theDict, @"value", v52);
            if (v41)
            {
              CFDictionaryAddValue(theDict, @"locale", v41);
              a4 = v66;
              MutableCopy = theDict;
              if (!v42)
              {
                goto LABEL_95;
              }
            }

            else
            {
              a4 = v66;
              MutableCopy = theDict;
              if (!v42)
              {
                LOWORD(valuePtr) = FigMetadataGetPackedISO639_2T(@"und");
                v65 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
                CFDictionaryAddValue(theDict, @"languageCode", v65);
                if (v65)
                {
                  CFRelease(v65);
                }

                a4 = v66;
                MutableCopy = theDict;
                goto LABEL_95;
              }
            }

            CFDictionaryAddValue(MutableCopy, @"languageCode", v42);
LABEL_95:
            if (CFEqual(*(v9 + 8), @"com.apple.quicktime.mdta"))
            {
              v58 = kFigQuickTimeMetadataKeyspace;
            }

            else
            {
              v59 = CFEqual(*(v9 + 8), @"com.apple.quicktime.udta");
              v58 = kFigUserDataKeyspace;
              if (!v59)
              {
                v58 = kFigISOUserDataKeyspace;
              }
            }

            CFDictionarySetValue(MutableCopy, @"keyspace", *v58);
            v39 = 0;
            v29 = 0;
            *a4 = MutableCopy;
            MutableCopy = 0;
            goto LABEL_100;
          }

          v39 = 0;
          v29 = 4294954813;
LABEL_134:
          v15 = cf1c;
          MutableCopy = theDict;
          goto LABEL_100;
        }

        v61 = CFDictionaryGetValue(a2, @"dataType");
        v62 = CFDictionaryGetValue(a2, @"dataTypeNamespace");
        v63 = CFGetTypeID(v52);
        v39 = 0;
        v29 = 4294954813;
        MutableCopy = theDict;
        if (v63 != CFDataGetTypeID() || !v61)
        {
          goto LABEL_100;
        }

        CFDictionaryAddValue(theDict, @"dataType", v61);
        if (v62)
        {
          CFDictionaryAddValue(theDict, @"dataTypeNamespace", v62);
        }

        v54 = theDict;
      }

      CFDictionaryAddValue(v54, @"key", v15);
      v44 = MutableCopy;
      v45 = v52;
      goto LABEL_88;
    }

    v46 = CFGetTypeID(v40);
    if (v46 == CFNumberGetTypeID())
    {
      LOWORD(IntValue) = 0;
      MutableCopy = theDict;
      if (CFNumberGetValue(v40, kCFNumberSInt16Type, &IntValue))
      {
        v47 = cf1b;
        v48 = CFStringCreateWithFormat(cf1b, 0, @"%d", IntValue);
        if (v48)
        {
          v49 = v48;
          goto LABEL_91;
        }

        qtiso_FigMetadataConverterCreateConvertedItem_cold_2(&valuePtr);
        v29 = LODWORD(valuePtr);
      }

      else
      {
        v29 = 4294954813;
      }

      v39 = 0;
      goto LABEL_100;
    }

    v55 = CFGetTypeID(v40);
    MutableCopy = theDict;
    if (v55 != CFStringGetTypeID())
    {
LABEL_107:
      v39 = 0;
      v29 = 4294954813;
      goto LABEL_100;
    }

    v49 = CFRetain(v40);
    v47 = cf1b;
LABEL_91:
    CFDictionaryAddValue(MutableCopy, @"key", v15);
    CFDictionaryAddValue(MutableCopy, @"value", v49);
    v56 = CFLocaleCreate(v47, @"en");
    if (v56)
    {
      v57 = v56;
      CFDictionaryAddValue(MutableCopy, @"locale", v56);
      CFRelease(v57);
    }

    if (!v49)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  v39 = 0;
  MutableCopy = 0;
  v29 = 0;
LABEL_100:
  if (v11)
  {
    CFRelease(v11);
  }

  if ((v39 & 1) == 0)
  {
    CFRelease(v15);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v29;
}

CFDictionaryRef qtiso_setUpKeyMapping()
{
  v73 = *MEMORY[0x1E69E9840];
  keys[0] = @"@cpy";
  keys[1] = @"@day";
  values[0] = @"cprt";
  values[1] = @"date";
  v7[0] = @"cprt";
  v8[0] = @"com.apple.quicktime.copyright";
  v8[1] = @"com.apple.quicktime.creationdate";
  v7[1] = @"date";
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = MEMORY[0x1E695E9E8];
  allocator = *MEMORY[0x1E695E480];
  gUserDataKeyToMP4KeyDict = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  gQTMetadataKeyToMP4KeyDict = CFDictionaryCreate(v0, v8, v7, 2, v1, v2);
  v54 = @"@cpy";
  v55 = @"@aut";
  v56 = @"@prf";
  v57 = @"@prd";
  v58 = @"@pub";
  v59 = @"@dir";
  v60 = @"@ART";
  v61 = @"@ope";
  v62 = @"@gen";
  v63 = @"@xyz";
  v64 = @"@nam";
  v65 = @"tnam";
  v66 = @"@des";
  v67 = @"@inf";
  v68 = @"tagc";
  v69 = @"@day";
  v70 = @"ludt";
  v35 = @"cprt";
  v36 = @"auth";
  v37 = @"perf";
  v38 = @"perf";
  v39 = @"perf";
  v40 = @"perf";
  v41 = @"perf";
  v42 = @"perf";
  v43 = @"gnre";
  v44 = @"loci";
  v45 = @"titl";
  v46 = @"titl";
  v47 = @"dscp";
  v48 = @"dscp";
  v49 = @"tagc";
  v50 = @"date";
  v51 = @"ludt";
  v23 = @"cprt";
  v24 = @"auth";
  v25 = @"perf";
  v26 = @"gnre";
  v27 = @"loci";
  v28 = @"titl";
  v29 = @"dscp";
  v30 = @"tagc";
  v31 = @"date";
  v32 = @"ludt";
  v11 = @"@cpy";
  v12 = @"@aut";
  v13 = @"@prf";
  v14 = @"@gen";
  v15 = @"@xyz";
  v16 = @"@nam";
  v17 = @"@des";
  v18 = @"tagc";
  v19 = @"@day";
  v20 = @"ludt";
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  gUserDataKeyTo3GPKeyDict = CFDictionaryCreate(allocator, &v54, &v35, 17, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  g3GPKeyToUserDataKeyDict = CFDictionaryCreate(allocator, &v23, &v11, 10, v3, v4);
  v54 = @"com.apple.quicktime.copyright";
  v55 = @"com.apple.quicktime.author";
  v56 = @"com.apple.quicktime.genre";
  v57 = @"com.apple.quicktime.location.ISO6709";
  v58 = @"com.apple.quicktime.displayname";
  v59 = @"com.apple.quicktime.title";
  v60 = @"com.apple.quicktime.year";
  v61 = @"com.apple.quicktime.creationdate";
  v62 = @"com.apple.quicktime.description";
  v63 = @"com.apple.quicktime.information";
  v64 = @"com.apple.quicktime.performer";
  v65 = @"com.apple.quicktime.producer";
  v66 = @"com.apple.quicktime.publisher";
  v67 = @"com.apple.quicktime.director";
  v68 = @"com.apple.quicktime.artist";
  v69 = @"com.apple.quicktime.originalartist";
  v70 = @"com.apple.quicktime.rating.user";
  v71 = @"com.apple.quicktime.collection.user";
  v72 = @"com.apple.quicktime.artwork";
  v35 = @"cprt";
  v36 = @"auth";
  v37 = @"gnre";
  v38 = @"loci";
  v39 = @"titl";
  v40 = @"titl";
  v41 = @"yrrc";
  v42 = @"date";
  v43 = @"dscp";
  v44 = @"dscp";
  v45 = @"perf";
  v46 = @"perf";
  v47 = @"perf";
  v48 = @"perf";
  v49 = @"perf";
  v50 = @"perf";
  v51 = @"urat";
  v52 = @"coll";
  v53 = @"thmb";
  v23 = @"cprt";
  v24 = @"auth";
  v25 = @"gnre";
  v26 = @"loci";
  v27 = @"titl";
  v28 = @"yrrc";
  v29 = @"date";
  v30 = @"dscp";
  v31 = @"perf";
  v32 = @"urat";
  v33 = @"coll";
  v34 = @"thmb";
  v11 = @"com.apple.quicktime.copyright";
  v12 = @"com.apple.quicktime.author";
  v13 = @"com.apple.quicktime.genre";
  v14 = @"com.apple.quicktime.location.ISO6709";
  v15 = @"com.apple.quicktime.displayname";
  v16 = @"com.apple.quicktime.year";
  v17 = @"com.apple.quicktime.creationdate";
  v18 = @"com.apple.quicktime.description";
  v19 = @"com.apple.quicktime.performer";
  v20 = @"com.apple.quicktime.rating.user";
  v21 = @"com.apple.quicktime.collection.user";
  v22 = @"com.apple.quicktime.artwork";
  gQTMetadataKeyTo3GPKeyDict = CFDictionaryCreate(allocator, &v54, &v35, 19, v3, v4);
  result = CFDictionaryCreate(allocator, &v23, &v11, 12, v3, v4);
  g3GPKeyToQTMetadataKeyDict = result;
  return result;
}

char *FigCaptionRendererLayoutDecouple_CreateTextObject(const void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10200404F51ABCFuLL);
  if (v2)
  {
    if (a1)
    {
      v3 = CFRetain(a1);
    }

    else
    {
      v3 = 0;
    }

    *(v2 + 25) = v3;
    *(v2 + 48) = 0;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    *(v2 + 4) = Mutable;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v2 + 40) = _Q0;
    *(v2 + 56) = _Q0;
    if (!Mutable)
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

void FigCaptionRendererLayoutDecouple_ReleaseTextObject(void *a1)
{
  if (a1)
  {
    v2 = a1[25];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

uint64_t fcr_setNewPositions(const __CFArray *a1, int a2)
{
  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = MEMORY[0x1E695F060];
    do
    {
      result = CFArrayGetValueAtIndex(a1, v6);
      if (result)
      {
        v8 = result;
        v9 = *(result + 200);
        if (v9)
        {
          v21 = *v7;
          FigCaptionRendererNodeProtocolGetProtocolID();
          result = CMBaseObjectGetProtocolVTable();
          if (result)
          {
            v11 = *(result + 16);
            result += 16;
            v10 = v11;
            if (v11)
            {
              v12 = *(v10 + 120);
              if (v12)
              {
                result = v12(v9, &v21);
              }
            }
          }

          if (a2)
          {
            if (a2 != 1 || *(&v21 + 1) > *&v21)
            {
LABEL_14:
              v13 = *v8;
              v14 = v8[1];
              FigCaptionRendererNodeProtocolGetProtocolID();
              ProtocolVTable = CMBaseObjectGetProtocolVTable();
              if (ProtocolVTable)
              {
                v16 = *(ProtocolVTable + 16);
                if (v16)
                {
                  v17 = *(v16 + 128);
                  if (v17)
                  {
                    v17(v9, v13, v14);
                  }
                }
              }

              FigCaptionRendererNodeProtocolGetProtocolID();
              result = CMBaseObjectGetProtocolVTable();
              if (result)
              {
                v19 = *(result + 16);
                result += 16;
                v18 = v19;
                if (v19)
                {
                  v20 = *(v18 + 232);
                  if (v20)
                  {
                    result = v20(v9, 1);
                  }
                }
              }
            }
          }

          else if (*&v21 >= *(&v21 + 1))
          {
            goto LABEL_14;
          }
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t fcr_objComparatorX(double *a1, double *a2)
{
  v2 = *a1 + a1[2] * 0.5;
  v3 = *a2 + a2[2] * 0.5;
  if (v2 < v3)
  {
    return -1;
  }

  else
  {
    return v2 > v3;
  }
}

uint64_t fcr_objComparatorY(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + *(a1 + 24) * 0.5;
  v3 = *(a2 + 8) + *(a2 + 24) * 0.5;
  if (v2 < v3)
  {
    return -1;
  }

  else
  {
    return v2 > v3;
  }
}

void fcr_validateMove(CGRect *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  MinX = CGRectGetMinX(*a1);
  MaxX = CGRectGetMaxX(*a1);
  MinY = CGRectGetMinY(*a1);
  MaxY = CGRectGetMaxY(*a1);
  v31.origin.x = a3;
  v31.origin.y = a4;
  v31.size.width = a5;
  v31.size.height = a6;
  v13 = CGRectGetMinX(v31);
  v32.origin.x = a3;
  v32.origin.y = a4;
  v32.size.width = a5;
  v32.size.height = a6;
  v14 = CGRectGetMaxX(v32);
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  v15 = CGRectGetMinY(v33);
  v34.origin.x = a3;
  v34.origin.y = a4;
  v34.size.width = a5;
  v34.size.height = a6;
  v16 = CGRectGetMaxY(v34);
  v17 = *a2;
  v18 = MinX + *a2;
  if (v18 < v13)
  {
    v17 = v13 - MinX;
  }

  v19 = MaxX + v17;
  if (MaxX + v17 > v14)
  {
    v17 = v14 - MaxX;
  }

  if (v18 < v13 || v19 > v14)
  {
    *a2 = v17;
  }

  v21 = *(a2 + 8);
  v22 = MinY + v21;
  if (MinY + v21 < v15)
  {
    v21 = v15 - MinY;
  }

  v23 = MaxY + v21;
  if (MaxY + v21 > v16)
  {
    v21 = v16 - MaxY;
  }

  if (v22 < v15 || v23 > v16)
  {
    *(a2 + 8) = v21;
  }

  v25 = fabs(v17);
  v26 = fabs(v21);
  if (v25 <= 3.0 && v26 <= 3.0)
  {
    *(a2 + 16) = 0;
  }
}

uint64_t fcr_sweepBottomUp(const __CFArray *a1, double *a2, double a3)
{
  Count = CFArrayGetCount(a1);
  *a2 = a3;
  v31.location = 0;
  v31.length = Count;
  CFArraySortValues(a1, v31, fcr_objComparatorBottom, 0);
  if (Count < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
      v10 = ValueAtIndex[1];
      if (v10 < a3)
      {
        ValueAtIndex[1] = a3;
        v8 = 1;
        v10 = a3;
      }

      *a2 = fmax(*a2, v10 + ValueAtIndex[3]);
      ++v7;
    }

    while (Count != v7);
    if ((v8 & (Count != 1)) == 1)
    {
      v11 = 1;
      do
      {
        v12 = CFArrayGetValueAtIndex(a1, v11);
        v13 = 0;
        do
        {
          v14 = CFArrayGetValueAtIndex(a1, v13);
          v15 = *(v12 + 11);
          v30[10] = *(v12 + 10);
          v30[11] = v15;
          v30[12] = *(v12 + 12);
          v16 = *(v12 + 7);
          v30[6] = *(v12 + 6);
          v30[7] = v16;
          v17 = *(v12 + 9);
          v30[8] = *(v12 + 8);
          v30[9] = v17;
          v18 = *(v12 + 3);
          v30[2] = *(v12 + 2);
          v30[3] = v18;
          v19 = *(v12 + 5);
          v30[4] = *(v12 + 4);
          v30[5] = v19;
          v20 = *(v12 + 1);
          v30[0] = *v12;
          v30[1] = v20;
          v21 = *(v14 + 11);
          v29[10] = *(v14 + 10);
          v29[11] = v21;
          v29[12] = *(v14 + 12);
          v22 = *(v14 + 7);
          v29[6] = *(v14 + 6);
          v29[7] = v22;
          v23 = *(v14 + 9);
          v29[8] = *(v14 + 8);
          v29[9] = v23;
          v24 = *(v14 + 3);
          v29[2] = *(v14 + 2);
          v29[3] = v24;
          v25 = *(v14 + 5);
          v29[4] = *(v14 + 4);
          v29[5] = v25;
          v26 = *(v14 + 1);
          v29[0] = *v14;
          v29[1] = v26;
          if (fcr_isOverlap(v30, v29))
          {
            v27 = v14[1] + v14[3];
            v12[1] = v27;
            *a2 = fmax(*a2, v27 + v12[3]);
          }

          ++v13;
        }

        while (v11 != v13);
        ++v11;
      }

      while (v11 != Count);
    }
  }

  return v8 & 1;
}

uint64_t fcr_sweepLeftRight(const __CFArray *a1, double *a2, double a3)
{
  Count = CFArrayGetCount(a1);
  *a2 = a3;
  v31.location = 0;
  v31.length = Count;
  CFArraySortValues(a1, v31, fcr_objComparatorLeft, 0);
  if (Count < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
      v10 = *ValueAtIndex;
      if (*ValueAtIndex < a3)
      {
        *ValueAtIndex = a3;
        v8 = 1;
        v10 = a3;
      }

      *a2 = fmax(*a2, v10 + ValueAtIndex[2]);
      ++v7;
    }

    while (Count != v7);
    if ((v8 & (Count != 1)) == 1)
    {
      v11 = 1;
      do
      {
        v12 = CFArrayGetValueAtIndex(a1, v11);
        v13 = 0;
        do
        {
          v14 = CFArrayGetValueAtIndex(a1, v13);
          v15 = *(v12 + 11);
          v30[10] = *(v12 + 10);
          v30[11] = v15;
          v30[12] = *(v12 + 12);
          v16 = *(v12 + 7);
          v30[6] = *(v12 + 6);
          v30[7] = v16;
          v17 = *(v12 + 9);
          v30[8] = *(v12 + 8);
          v30[9] = v17;
          v18 = *(v12 + 3);
          v30[2] = *(v12 + 2);
          v30[3] = v18;
          v19 = *(v12 + 5);
          v30[4] = *(v12 + 4);
          v30[5] = v19;
          v20 = *(v12 + 1);
          v30[0] = *v12;
          v30[1] = v20;
          v21 = *(v14 + 11);
          v29[10] = *(v14 + 10);
          v29[11] = v21;
          v29[12] = *(v14 + 12);
          v22 = *(v14 + 7);
          v29[6] = *(v14 + 6);
          v29[7] = v22;
          v23 = *(v14 + 9);
          v29[8] = *(v14 + 8);
          v29[9] = v23;
          v24 = *(v14 + 3);
          v29[2] = *(v14 + 2);
          v29[3] = v24;
          v25 = *(v14 + 5);
          v29[4] = *(v14 + 4);
          v29[5] = v25;
          v26 = *(v14 + 1);
          v29[0] = *v14;
          v29[1] = v26;
          if (fcr_isOverlap(v30, v29))
          {
            v27 = *v14 + v14[2];
            *v12 = v27;
            *a2 = fmax(*a2, v27 + v12[2]);
          }

          ++v13;
        }

        while (v11 != v13);
        ++v11;
      }

      while (v11 != Count);
    }
  }

  return v8 & 1;
}

uint64_t fcr_objComparatorBottom(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 < v3)
  {
    return -1;
  }

  else
  {
    return v2 > v3;
  }
}

uint64_t fcr_objComparatorTop(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + *(a1 + 24);
  v3 = *(a2 + 8) + *(a2 + 24);
  if (v2 > v3)
  {
    return -1;
  }

  else
  {
    return v2 < v3;
  }
}

uint64_t fcr_objComparatorLeft(double *a1, double *a2)
{
  if (*a1 < *a2)
  {
    return -1;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t fcr_objComparatorRight(double *a1, double *a2)
{
  v2 = *a1 + a1[2];
  v3 = *a2 + a2[2];
  if (v2 > v3)
  {
    return -1;
  }

  else
  {
    return v2 < v3;
  }
}

void OUTLINED_FUNCTION_0_146(uint64_t a1, uint64_t a2)
{

  fcr_validateMove(v2, a2, v6, v7, v4, v5);
}

const void *OUTLINED_FUNCTION_2_128()
{

  return CFArrayGetValueAtIndex(v0, v1);
}

void OUTLINED_FUNCTION_3_104(__CFArray *a1, uint64_t a2, uint64_t a3, CFComparisonResult (__cdecl *a4)(const void *, const void *, void *))
{
  v6.location = 0;
  v6.length = v4;

  CFArraySortValues(a1, v6, a4, 0);
}

uint64_t FigMetadataConverterCreateForQuickTimeToFromiTunes(int a1, CFTypeRef cf1, CFTypeRef cf2, uint64_t a4, void *a5)
{
  if (!a5)
  {
    FigMetadataConverterCreateForQuickTimeToFromiTunes_cold_1(&v13);
    return v13;
  }

  if (CFEqual(cf1, cf2))
  {
    goto LABEL_7;
  }

  if (!CFEqual(cf1, @"com.apple.quicktime.udta") && !CFEqual(cf1, @"org.mp4ra") && !CFEqual(cf1, @"com.apple.quicktime.mdta"))
  {
    if (!CFEqual(cf1, @"com.apple.itunes") || !CFEqual(cf2, @"com.apple.quicktime.udta") && !CFEqual(cf2, @"org.mp4ra") && !CFEqual(cf2, @"com.apple.quicktime.mdta"))
    {
      goto LABEL_16;
    }

LABEL_7:
    FigMetadataConverterGetClassID();
    v8 = CMDerivedObjectCreate();
    if (!v8)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (cf1)
      {
        v10 = CFRetain(cf1);
      }

      else
      {
        v10 = 0;
      }

      *DerivedStorage = v10;
      if (cf2)
      {
        v11 = CFRetain(cf2);
      }

      else
      {
        v11 = 0;
      }

      v8 = 0;
      DerivedStorage[1] = v11;
      *a5 = 0;
    }

    return v8;
  }

  if (CFEqual(cf2, @"com.apple.itunes"))
  {
    goto LABEL_7;
  }

LABEL_16:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void qtitunes_FigMetadataConverterFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *qtitunes_FigMetadataConverterCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigQuickTimeiTunesMetadataConverter %p\n", DerivedStorage);
  if (*(DerivedStorage + 8))
  {
    CFStringAppendFormat(Mutable, 0, @"  Destination Format = %@\n", *(DerivedStorage + 8));
  }

  return Mutable;
}

CFDictionaryRef qtitunes_setUpKeyMapping()
{
  v96 = *MEMORY[0x1E69E9840];
  keys = @"com.apple.quicktime.arranger";
  v74 = @"com.apple.quicktime.album";
  v75 = @"com.apple.quicktime.artist";
  v76 = @"com.apple.quicktime.author";
  v77 = @"com.apple.quicktime.comment";
  v78 = @"com.apple.quicktime.copyright";
  v79 = @"com.apple.quicktime.artwork";
  v80 = @"com.apple.quicktime.creationdate";
  v81 = @"com.apple.quicktime.description";
  v82 = @"com.apple.quicktime.information";
  v83 = @"com.apple.quicktime.director";
  v84 = @"com.apple.quicktime.encodedby";
  v85 = @"com.apple.quicktime.displayname";
  v86 = @"com.apple.quicktime.title";
  v87 = @"com.apple.quicktime.genre";
  v88 = @"com.apple.quicktime.make";
  v89 = @"com.apple.quicktime.originalartist";
  v90 = @"com.apple.quicktime.performer";
  v91 = @"com.apple.quicktime.producer";
  v92 = @"com.apple.quicktime.publisher";
  v93 = @"com.apple.quicktime.composer";
  v94 = @"com.apple.quicktime.credits";
  v95 = @"com.apple.quicktime.phonogramrights";
  v8 = @"com.apple.quicktime.arranger";
  v9 = @"com.apple.quicktime.album";
  values = @"@arg";
  v51 = @"@alb";
  v10 = @"com.apple.quicktime.artist";
  v52 = @"@ART";
  v53 = @"@aut";
  v11 = @"com.apple.quicktime.author";
  v12 = @"com.apple.quicktime.comment";
  v54 = @"@cmt";
  v55 = @"cprt";
  v13 = @"com.apple.quicktime.copyright";
  v14 = @"com.apple.quicktime.artwork";
  v15 = @"com.apple.quicktime.creationdate";
  v56 = @"covr";
  v57 = @"@day";
  v16 = @"com.apple.quicktime.description";
  v58 = @"@des";
  v59 = @"@des";
  v17 = @"com.apple.quicktime.director";
  v60 = @"@dir";
  v61 = @"@enc";
  v18 = @"com.apple.quicktime.encodedby";
  v62 = @"@nam";
  v63 = @"@nam";
  v19 = @"com.apple.quicktime.displayname";
  v20 = @"com.apple.quicktime.genre";
  v64 = @"@gen";
  v65 = @"@mak";
  v21 = @"com.apple.quicktime.make";
  v22 = @"com.apple.quicktime.originalartist";
  v23 = @"com.apple.quicktime.performer";
  v66 = @"@ope";
  v67 = @"@prf";
  v24 = @"com.apple.quicktime.producer";
  v68 = @"@prd";
  v69 = @"@pub";
  v25 = @"com.apple.quicktime.publisher";
  v26 = @"com.apple.quicktime.composer";
  v70 = @"@wrt";
  v71 = @"@src";
  v27 = @"com.apple.quicktime.credits";
  v72 = @"@phg";
  v29 = @"@arg";
  v30 = @"@alb";
  v31 = @"@ART";
  v32 = @"@aut";
  v33 = @"@cmt";
  v34 = @"cprt";
  v35 = @"covr";
  v36 = @"@day";
  v37 = @"@des";
  v38 = @"@dir";
  v39 = @"@enc";
  v40 = @"@nam";
  v41 = @"@gen";
  v42 = @"@mak";
  v43 = @"@ope";
  v44 = @"@prf";
  v45 = @"@prd";
  v46 = @"@pub";
  v47 = @"@wrt";
  v48 = @"@src";
  v49 = @"@phg";
  v28 = @"com.apple.quicktime.phonogramrights";
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = MEMORY[0x1E695E9E8];
  allocator = *MEMORY[0x1E695E480];
  qword_1ED4CB490 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 23, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  qword_1ED4CB498 = CFDictionaryCreate(v0, &v29, &v8, 21, v1, v2);
  v81 = @"@inf";
  v85 = @"tnam";
  v29 = @"@arg";
  v30 = @"@alb";
  values = @"@arg";
  v51 = @"@alb";
  v54 = @"@cmt";
  v33 = @"@cmt";
  v60 = @"@enc";
  v38 = @"@enc";
  v63 = @"@gen";
  v40 = @"@gen";
  v41 = @"@mak";
  v64 = @"@mak";
  v69 = @"@wrt";
  v46 = @"@wrt";
  v47 = @"@src";
  v70 = @"@src";
  v71 = @"@phg";
  v48 = @"@phg";
  v8 = @"@arg";
  keys = @"@arg";
  v74 = @"@alb";
  v9 = @"@alb";
  v75 = @"@ART";
  v76 = @"@aut";
  v10 = @"@ART";
  v11 = @"@aut";
  v77 = @"@cmt";
  v78 = @"@cpy";
  v12 = @"@cmt";
  v13 = @"@cpy";
  v79 = @"@day";
  v80 = @"@des";
  v82 = @"@dir";
  v14 = @"@day";
  v15 = @"@des";
  v16 = @"@dir";
  v17 = @"@enc";
  v83 = @"@enc";
  v84 = @"@nam";
  v86 = @"@gen";
  v18 = @"@nam";
  v19 = @"@gen";
  v20 = @"@mak";
  v87 = @"@mak";
  v88 = @"@ope";
  v21 = @"@ope";
  v89 = @"@prf";
  v90 = @"@prd";
  v22 = @"@prf";
  v23 = @"@prd";
  v91 = @"@pub";
  v92 = @"@wrt";
  v24 = @"@pub";
  v25 = @"@wrt";
  v26 = @"@src";
  v27 = @"@phg";
  v93 = @"@src";
  v94 = @"@phg";
  v62 = @"@nam";
  v68 = @"@pub";
  v37 = @"@dir";
  v39 = @"@nam";
  v45 = @"@pub";
  v52 = @"@ART";
  v53 = @"@aut";
  v55 = @"cprt";
  v56 = @"@day";
  v57 = @"@des";
  v58 = @"@des";
  v59 = @"@dir";
  v61 = @"@nam";
  v65 = @"@ope";
  v66 = @"@prf";
  v67 = @"@prd";
  v31 = @"@ART";
  v32 = @"@aut";
  v34 = @"cprt";
  v35 = @"@day";
  v36 = @"@des";
  v42 = @"@ope";
  v43 = @"@prf";
  v44 = @"@prd";
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  qword_1ED4CB4A0 = CFDictionaryCreate(allocator, &keys, &values, 22, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  _MergedGlobals_95 = CFDictionaryCreate(allocator, &v8, &v29, 20, v3, v4);
  v29 = @"cprt";
  v30 = @"perf";
  v31 = @"auth";
  v32 = @"dscp";
  v33 = @"titl";
  v34 = @"yrrc";
  v35 = @"thmb";
  v8 = @"cprt";
  v9 = @"@prf";
  v10 = @"@aut";
  v11 = @"@des";
  v12 = @"@nam";
  v13 = @"@day";
  v14 = @"covr";
  keys = @"cprt";
  v74 = @"@prf";
  v75 = @"@pub";
  v76 = @"@prd";
  v77 = @"@dir";
  v78 = @"@ART";
  v79 = @"@ope";
  v80 = @"@aut";
  v81 = @"@des";
  v82 = @"@nam";
  v83 = @"@day";
  v84 = @"covr";
  values = @"cprt";
  v51 = @"perf";
  v52 = @"perf";
  v53 = @"perf";
  v54 = @"perf";
  v55 = @"perf";
  v56 = @"perf";
  v57 = @"auth";
  v58 = @"dscp";
  v59 = @"titl";
  v60 = @"yrrc";
  v61 = @"thmb";
  v5 = MEMORY[0x1E695E9E8];
  qword_1ED4CB4A8 = CFDictionaryCreate(allocator, &v29, &v8, 7, v3, MEMORY[0x1E695E9E8]);
  result = CFDictionaryCreate(allocator, &keys, &values, 12, v3, v5);
  qword_1ED4CB4B0 = result;
  return result;
}

void OUTLINED_FUNCTION_0_147()
{

  JUMPOUT(0x19A8D3660);
}

uint64_t OUTLINED_FUNCTION_3_105(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char valuePtr)
{

  return CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
}

uint64_t FigCopyMediaTypeString(__CFBundle *a1, unsigned int a2, CFStringRef *a3)
{
  v8 = bswap32(a2);
  if (a2)
  {
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%.4s", &v8);
    if (v5)
    {
      v6 = v5;
      *a3 = CFBundleCopyLocalizedString(a1, v5, v5, @"MediaAndSubtypes");
      CFRelease(v6);
      return 0;
    }

    else
    {
      FigCopyMediaTypeString_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    FigCopyMediaTypeString_cold_2(&v10);
    return v10;
  }
}

__CFBundle *MTCopyLocalizedStringForVideoDynamicRange(int a1)
{
  result = CFBundleGetBundleWithIdentifier(@"com.apple.MediaToolbox");
  if (result)
  {
    if ((a1 - 1) > 9)
    {
      v3 = @"VideoDynamicRangeUnknown";
    }

    else
    {
      v3 = off_1E74904C0[a1 - 1];
    }

    return CFBundleCopyLocalizedString(result, v3, v3, @"MediaAndSubtypes");
  }

  return result;
}

uint64_t MTGetVideoDynamicRangeQualityGrade(int a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return byte_196E78A14[a1 - 1];
  }
}

__CFString *MTCopyStringForColorInfo(int a1, CMFormatDescriptionRef desc)
{
  if (a1 != 1986618469)
  {
    return 0;
  }

  Extension = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E6965D88]);
  v4 = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E6965F30]);
  v5 = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E6965F98]);
  v6 = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E6960080]);
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  v8 = 0;
  if (MediaSubType <= 1685481572)
  {
    if (MediaSubType == 1667524657 || MediaSubType == 1684895096)
    {
LABEL_13:
      if (!Extension)
      {
        return 0;
      }

      goto LABEL_14;
    }

    v10 = 1685481521;
  }

  else
  {
    if (MediaSubType > 1902405732)
    {
      if (MediaSubType == 1902405733)
      {
        goto LABEL_13;
      }

      v9 = 28024;
    }

    else
    {
      if (MediaSubType == 1685481573)
      {
        goto LABEL_13;
      }

      v9 = 26673;
    }

    v10 = v9 | 0x71640000;
  }

  if (MediaSubType == v10)
  {
    goto LABEL_13;
  }

  v8 = 1;
  if (!Extension)
  {
    return 0;
  }

LABEL_14:
  v11 = CFGetTypeID(Extension);
  if (v11 == CFStringGetTypeID() && v4 != 0)
  {
    v13 = CFGetTypeID(v4);
    if (v13 == CFStringGetTypeID() && v5 != 0)
    {
      v15 = CFGetTypeID(v5);
      if (v15 == CFStringGetTypeID())
      {
        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        v17 = CFEqual(Extension, *MEMORY[0x1E6965DD8]);
        v18 = MEMORY[0x1E6965DB8];
        if (v17 && CFEqual(v4, *MEMORY[0x1E6965DB8]) && CFEqual(v5, *MEMORY[0x1E6965FC8]))
        {
          v19 = @"SD ";
        }

        else
        {
          v21 = *MEMORY[0x1E6965F50];
          if (CFEqual(Extension, *MEMORY[0x1E6965F50]) && CFEqual(v4, v21) && CFEqual(v5, *MEMORY[0x1E6965FC8]))
          {
            v19 = @"PAL ";
          }

          else if (CFEqual(Extension, *v18) && CFEqual(v4, v21) && CFEqual(v5, *MEMORY[0x1E6965FD0]))
          {
            v19 = @"HD ";
          }

          else
          {
            if (v8)
            {
              AppendColorPrimaryString(Extension, Mutable);
              AppendHDRTransferFunctionString(v4, v6, Mutable);
LABEL_42:
              IntegerCodePointForString = CVColorPrimariesGetIntegerCodePointForString(Extension);
              v23 = CVTransferFunctionGetIntegerCodePointForString(v4);
              v24 = CVYCbCrMatrixGetIntegerCodePointForString(v5);
              v25 = CFStringCreateWithFormat(0, 0, @"(%d-%d-%d)", IntegerCodePointForString, v23, v24);
              CFStringAppend(Mutable, v25);
              CFRelease(v25);
              return Mutable;
            }

            v19 = @"Dolby Vision ";
          }
        }

        CFStringAppend(Mutable, v19);
        goto LABEL_42;
      }
    }
  }

  return 0;
}

double MatrixArrayToCGAffineTransform@<D0>(const __CFArray *a1@<X0>, double *a2@<X8>)
{
  valuePtr = 0.0;
  v18 = 0.0;
  v16 = 0;
  v17 = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, &valuePtr);
  v5 = CFArrayGetValueAtIndex(a1, 1);
  CFNumberGetValue(v5, kCFNumberFloat32Type, &v18);
  v6 = CFArrayGetValueAtIndex(a1, 3);
  CFNumberGetValue(v6, kCFNumberFloat32Type, &v17 + 4);
  v7 = CFArrayGetValueAtIndex(a1, 4);
  CFNumberGetValue(v7, kCFNumberFloat32Type, &v17);
  v8 = CFArrayGetValueAtIndex(a1, 6);
  CFNumberGetValue(v8, kCFNumberFloat32Type, &v16 + 4);
  v9 = CFArrayGetValueAtIndex(a1, 7);
  CFNumberGetValue(v9, kCFNumberFloat32Type, &v16);
  result = valuePtr;
  v11 = v18;
  v12 = *(&v17 + 1);
  v13 = *&v17;
  v14 = *(&v16 + 1);
  v15 = *&v16;
  *a2 = valuePtr;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v14;
  a2[5] = v15;
  return result;
}

uint64_t FigGetTrackUneditedDurationWithPossibleFallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  v5 = *MEMORY[0x1E695E480];
  FigBaseObject = FigTrackReaderGetFigBaseObject(a2);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7 || (v7(FigBaseObject, @"UneditedTrackDuration", v5, &v20), (v8 = v20) == 0))
  {
    cf.value = 0;
    v9 = FigFormatReaderGetFigBaseObject(a1);
    value = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (value)
    {
      value(v9, @"SampleCursorTimeAccuracyIsExact", v5, &cf);
      value = cf.value;
    }

    if (value != *MEMORY[0x1E695E4D0])
    {
      v11 = FigFormatReaderGetFigBaseObject(a1);
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(v11, @"EstimatedDuration", v5, &v20);
      }
    }

    if (!v20)
    {
      v17 = FigFormatReaderGetFigBaseObject(a1);
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v18)
      {
        v18(v17, @"NominalDuration", v5, &v20);
      }
    }

    if (cf.value)
    {
      CFRelease(cf.value);
    }

    v8 = v20;
    if (!v20)
    {
      goto LABEL_14;
    }
  }

  v13 = CFGetTypeID(v8);
  if (v13 == CFDictionaryGetTypeID())
  {
    CMTimeMakeFromDictionary(&cf, v20);
    *a3 = *&cf.value;
    epoch = cf.epoch;
  }

  else
  {
LABEL_14:
    v15 = MEMORY[0x1E6960CC0];
    *a3 = *MEMORY[0x1E6960CC0];
    epoch = *(v15 + 16);
  }

  *(a3 + 16) = epoch;
  if (v20)
  {
    CFRelease(v20);
  }

  return 0;
}

uint64_t FigCFStringIsISOExtension(CFStringRef theString2)
{
  if (!theString2)
  {
    return 0;
  }

  v2 = 1;
  if (CFStringCompare(@"m4a", theString2, 1uLL))
  {
    v2 = 1;
    if (CFStringCompare(@"m4p", theString2, 1uLL))
    {
      v2 = 1;
      if (CFStringCompare(@"m4v", theString2, 1uLL))
      {
        v2 = 1;
        if (CFStringCompare(@"m4b", theString2, 1uLL))
        {
          v2 = 1;
          if (CFStringCompare(@"m4r", theString2, 1uLL))
          {
            v2 = 1;
            if (CFStringCompare(@"mp4", theString2, 1uLL))
            {
              v2 = 1;
              if (CFStringCompare(@"aax", theString2, 1uLL))
              {
                v2 = 1;
                if (CFStringCompare(@"3gp", theString2, 1uLL))
                {
                  v2 = 1;
                  if (CFStringCompare(@"3gpp", theString2, 1uLL))
                  {
                    v2 = 1;
                    if (CFStringCompare(@"3g2", theString2, 1uLL))
                    {
                      v2 = 1;
                      if (CFStringCompare(@"3gp2", theString2, 1uLL))
                      {
                        return 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

CFTypeRef FigCopySetOfHEIFSupportedFileExtensions(void *a1)
{
  if (FigCopySetOfHEIFSupportedFileExtensions_onceToken != -1)
  {
    FigCopySetOfHEIFSupportedFileExtensions_cold_1();
  }

  result = CFRetain(gFigFormatReaderHEIFFileExtensionsSet);
  *a1 = result;
  return result;
}

CFSetRef createSetOfHEIFSupportedFileExtensionsOnce()
{
  v3 = *MEMORY[0x1E69E9840];
  v1[2] = xmmword_1E7490498;
  v1[3] = *off_1E74904A8;
  v2 = @"avis";
  v1[0] = xmmword_1E7490478;
  v1[1] = *&off_1E7490488;
  result = CFSetCreate(*MEMORY[0x1E695E480], v1, 9, MEMORY[0x1E695E9F8]);
  gFigFormatReaderHEIFFileExtensionsSet = result;
  return result;
}

const __CFString *FigCFStringIsHEIFExtension(const __CFString *a1)
{
  cf = 0;
  FigCopySetOfHEIFSupportedFileExtensions(&cf);
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (v2 == CFStringGetTypeID() && (MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1)) != 0)
    {
      v4 = MutableCopy;
      CFStringLowercase(MutableCopy, 0);
      a1 = (CFSetContainsValue(gFigFormatReaderHEIFFileExtensionsSet, v4) != 0);
      CFRelease(v4);
    }

    else
    {
      a1 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return a1;
}

uint64_t FigFileTypeIsQTMovieFileType()
{
  if (FigCFEqual())
  {
    return 1;
  }

  result = FigCFEqual();
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t FigFileTypeIsISOFileType()
{
  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  result = FigCFEqual();
  if (result)
  {
    return 1;
  }

  return result;
}

void __FigGetFileTypeForMovieFamilyExtension_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 7, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, @"com.apple.quicktime-movie");
  CFArrayAppendValue(Mutable, @"public.mpeg-4");
  CFArrayAppendValue(Mutable, @"com.apple.m4v-video");
  CFArrayAppendValue(Mutable, @"com.apple.m4a-audio");
  CFArrayAppendValue(Mutable, @"public.3gpp");
  CFArrayAppendValue(Mutable, @"com.apple.immersive-video");
  CFArrayAppendValue(Mutable, @"com.apple.quicktime-audio");
  Count = CFArrayGetCount(Mutable);
  qword_1ED4CB4C0 = Mutable;
  unk_1ED4CB4C8 = Count;
  v3 = CFDictionaryCreateMutable(v0, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v3, *MEMORY[0x1E6963728], @"com.apple.m4a-audio");
  CFDictionarySetValue(v3, @"com.apple.mpeg-4-ringtone", @"com.apple.m4a-audio");
  CFDictionarySetValue(v3, @"public.3gpp2", @"public.3gpp");
  _MergedGlobals_96 = v3;
}

CFStringRef FigCreateStringForLanguageCode(const __CFAllocator *a1, unsigned int a2, int a3)
{
  if (!a3 && (a2 < 0x401 || a2 == 0x7FFF))
  {
    if (a2 > 0x97)
    {
      v3 = 21956;
    }

    else
    {
      v3 = kQTCodeToISO639_2_T_LanguageBits[a2];
    }
  }

  else if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 21956;
  }

  return CFStringCreateWithFormat(a1, 0, @"%c%c%c", (v3 >> 10) | 0x60, (v3 >> 5) & 0x1F | 0x60, v3 & 0x1F | 0x60);
}

uint64_t FigGetISOLanguageCodeForString(const __CFString *a1)
{
  CharacterAtIndex = CFStringGetCharacterAtIndex(a1, 0);
  v3 = CFStringGetCharacterAtIndex(a1, 1);
  return (CFStringGetCharacterAtIndex(a1, 2) + 32 * v3 + (CharacterAtIndex << 10) + 29600);
}

BOOL MTShouldPlayHDRVideo(const __CFArray *a1)
{
  v4 = 0;
  v2 = FPSupport_IsInLowPowerMode();
  result = 0;
  if (!v2)
  {
    FPSupport_GetCurrentDisplayModeVideoRangeAndSizeAndFrameRate(a1, &v4, 0, 0);
    return v4 > 1;
  }

  return result;
}

void AppendColorPrimaryString(const void *a1, __CFString *a2)
{
  if (CFEqual(a1, *MEMORY[0x1E695FFD0]))
  {
    v4 = @"P3 D65 ";
  }

  else if (CFEqual(a1, *MEMORY[0x1E695FFC0]))
  {
    v4 = @"BT.2020 ";
  }

  else
  {
    if (!CFEqual(a1, *MEMORY[0x1E695FFB8]))
    {
      return;
    }

    v4 = @"DCI P3 ";
  }

  CFStringAppend(a2, v4);
}

void AppendHDRTransferFunctionString(const void *a1, uint64_t a2, __CFString *a3)
{
  v6 = *MEMORY[0x1E6960158];
  v7 = CFEqual(a1, *MEMORY[0x1E6960158]);
  if (a2 && v7)
  {
    v8 = @"HDR10 ";
  }

  else if (CFEqual(a1, *MEMORY[0x1E6960148]))
  {
    v8 = @"HLG ";
  }

  else
  {
    if (!CFEqual(a1, v6))
    {
      return;
    }

    v8 = @"PQ ";
  }

  CFStringAppend(a3, v8);
}

uint64_t FigCryptGetBlockSize(int a1)
{
  if ((a1 - 1) < 3)
  {
    return 16;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM();
  return 0;
}

uint64_t FigCryptGetIVSize(int a1)
{
  if ((a1 - 1) < 3)
  {
    return 16;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM();
  return 0;
}

uint64_t FigCryptGetTagSize(int a1)
{
  if (a1 == 3)
  {
    return 16;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM();
  return 0;
}

uint64_t FigCryptCreateForDecrypt(int a1, const void *a2, uint64_t a3, const void *a4, const void *a5, size_t a6, void *a7)
{
  if (a7)
  {
    *a7 = 0;
    BlockSize = FigCryptGetBlockSize(a1);
    if (BlockSize)
    {
      v14 = BlockSize;
      cryptorRef = malloc_type_calloc(1uLL, 0x38uLL, 0x10600408152BA4BuLL);
      if (cryptorRef)
      {
        v16 = cryptorRef;
        *(cryptorRef + 8) = a1;
        cryptorRef[1] = v14;
        if (a1 == 3)
        {
          if (CCCryptorCreateWithMode(1u, 0xBu, 0, 0, 0, a5, a6, 0, 0, 0, 0, cryptorRef))
          {
LABEL_6:
            fig_log_get_emitter();
            v17 = FigSignalErrorAtGM();
            free(v16);
            return v17;
          }
        }

        else if (CCCryptorCreate(1u, 0, a1 == 1, a5, a6, 0, cryptorRef))
        {
          goto LABEL_6;
        }

        if (a2)
        {
          v19 = CFRetain(a2);
        }

        else
        {
          v19 = *MEMORY[0x1E695E480];
        }

        v16[2] = v19;
        if (a4)
        {
          v20 = CFRetain(a4);
        }

        else
        {
          v20 = *MEMORY[0x1E695E480];
        }

        result = 0;
        v16[3] = v20;
        *a7 = v16;
      }

      else
      {
        FigCryptCreateForDecrypt_cold_1(&v21);
        return v21;
      }
    }

    else
    {
      FigCryptCreateForDecrypt_cold_2(&v22);
      return v22;
    }
  }

  else
  {
    FigCryptCreateForDecrypt_cold_3(&v23);
    return v23;
  }

  return result;
}

uint64_t FigCryptSetIV(uint64_t a1, void *iv)
{
  if (a1)
  {
    v3 = *(a1 + 32);
    v4 = *a1;
    if (v3 == 3)
    {
      if (CCCryptorGCMReset())
      {
        goto LABEL_12;
      }

      result = CCCryptorGCMSetIV();
    }

    else
    {
      result = CCCryptorReset(v4, iv);
    }

    if (!result)
    {
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      return result;
    }

LABEL_12:
    FigCryptSetIV_cold_1(&v6);
    return v6;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void FigCryptDispose(CCCryptorRef *a1)
{
  if (a1)
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

    if (*a1)
    {
      CCCryptorRelease(*a1);
    }

    free(a1);
  }
}

uint64_t FigBufferedAirPlayOutputGetClassID()
{
  if (FigBufferedAirPlayOutputGetClassID_sRegisterFigBufferedAirPlayOutputBaseTypeOnce != -1)
  {
    FigBufferedAirPlayOutputGetClassID_cold_1();
  }

  return FigBufferedAirPlayOutputGetClassID_sFigBufferedAirPlayOutputClassID;
}

uint64_t __FigBufferedAirPlayOutputGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigBufferedAirPlayOutputGetTypeID()
{
  if (FigBufferedAirPlayOutputGetClassID_sRegisterFigBufferedAirPlayOutputBaseTypeOnce != -1)
  {
    FigBufferedAirPlayOutputGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigBufferedAirPlayOutputCreate(const __CFAllocator *a1, const void *a2, const void *a3, void *a4)
{
  sourceClock[16] = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigBufferedAirPlayOutputCreate_cold_4(sourceClock);
    return LODWORD(sourceClock[0]);
  }

  if (!a3)
  {
    FigBufferedAirPlayOutputCreate_cold_3(sourceClock);
    return LODWORD(sourceClock[0]);
  }

  if (!a4)
  {
    FigBufferedAirPlayOutputCreate_cold_2(sourceClock);
    return LODWORD(sourceClock[0]);
  }

  if (FigBufferedAirPlayOutputGetClassID_sRegisterFigBufferedAirPlayOutputBaseTypeOnce != -1)
  {
    FigBufferedAirPlayOutputGetClassID_cold_1();
  }

  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v38 = 0;
  cf = 0;
  v10 = FigSimpleMutexCreate();
  *(DerivedStorage + 8) = v10;
  if (!v10 || (v11 = FigDispatchQueueCreateWithPriority(), (*(DerivedStorage + 16) = v11) == 0) || (v12 = FigDispatchQueueCreateWithPriority(), (*(DerivedStorage + 24) = v12) == 0) || (v13 = FigDispatchQueueCreateWithPriority(), (*(DerivedStorage + 32) = v13) == 0) || (v14 = FigDispatchQueueCreateWithPriority(), (*(DerivedStorage + 40) = v14) == 0))
  {
    v21 = 4294954510;
    goto LABEL_35;
  }

  *(DerivedStorage + 48) = CFRetain(a2);
  *(DerivedStorage + 56) = CFRetain(a3);
  *(DerivedStorage + 140) = -998653952;
  *(DerivedStorage + 137) = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16)
  {
    v17 = v16(CMBaseObject, *MEMORY[0x1E6962340], a1, &cf);
    if (v17)
    {
      goto LABEL_53;
    }

    *(DerivedStorage + 136) = cf == *MEMORY[0x1E695E4D0];
    if (_os_feature_enabled_impl())
    {
      v17 = FigEndpointStreamAudioEngineCreateForEndpointStream(*(DerivedStorage + 56), DerivedStorage + 72);
      if (v17)
      {
        goto LABEL_53;
      }

      goto LABEL_19;
    }

    v18 = FigEndpointStreamGetCMBaseObject();
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v19)
    {
      v17 = v19(v18, *MEMORY[0x1E6962538], a1, DerivedStorage + 72);
      if (!v17)
      {
LABEL_19:
        sourceClock[0] = 0;
        timebaseOut = 0;
        if (CMTimeSyncClockCreateForSystemDomainClockIdentifier())
        {
          HostTimeClock = CMClockGetHostTimeClock();
          sourceClock[0] = HostTimeClock;
          if (HostTimeClock)
          {
            CFRetain(HostTimeClock);
          }
        }

        v21 = CMTimebaseCreateWithSourceClock(a1, sourceClock[0], &timebaseOut);
        if (v21)
        {
          if (sourceClock[0])
          {
            CFRelease(sourceClock[0]);
          }

          if (timebaseOut)
          {
            CFRelease(timebaseOut);
          }

          goto LABEL_35;
        }

        v22 = timebaseOut;
        *(DerivedStorage + 144) = sourceClock[0];
        *(DerivedStorage + 152) = v22;
        *(DerivedStorage + 176) = 0;
        v23 = MEMORY[0x1E6960C70];
        *(DerivedStorage + 192) = -999;
        v24 = *v23;
        *(DerivedStorage + 84) = *v23;
        v25 = *(v23 + 2);
        v26 = MEMORY[0x1E6960CC0];
        *(DerivedStorage + 100) = v25;
        *(DerivedStorage + 112) = *v26;
        *(DerivedStorage + 128) = *(v26 + 16);
        *(DerivedStorage + 108) = 1;
        *(DerivedStorage + 240) = v24;
        *(DerivedStorage + 256) = v25;
        *(DerivedStorage + 80) = 0;
        *(DerivedStorage + 268) = 0;
        v27 = FigEndpointStreamAudioEngineGetCMBaseObject(*(DerivedStorage + 72));
        v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v28)
        {
          v29 = *MEMORY[0x1E695E480];
          v17 = v28(v27, @"inputSampleBufferConsumer", *MEMORY[0x1E695E480], DerivedStorage + 176);
          if (!v17)
          {
            Mutable = CFDictionaryCreateMutable(v29, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *(DerivedStorage + 160) = Mutable;
            if (!Mutable)
            {
              v21 = 4294950535;
              goto LABEL_35;
            }

            v17 = FigSampleBufferConsumerInputForBufferedAirPlayOutputCreate(0, *(DerivedStorage + 176), "SBCInput4BAO", (DerivedStorage + 184));
            if (!v17)
            {
              random();
              UInt32 = FigCFNumberCreateUInt32();
              *(DerivedStorage + 272) = UInt32;
              if (UInt32)
              {
                *(DerivedStorage + 264) = FigGetCFPreferenceNumberWithDefault();
                *(DerivedStorage + 265) = 1;
                v32 = FigEndpointStreamGetCMBaseObject();
                v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v33 && !v33(v32, *MEMORY[0x1E6962530], a1, &v38) && v38 == *MEMORY[0x1E695E4C0])
                {
                  *(DerivedStorage + 265) = 0;
                }

                if (dword_1EAF17590)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                v36 = CMBaseObjectGetDerivedStorage();
                if (*(v36 + 56) && *(v36 + 72))
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  FigNotificationCenterAddWeakListeners();
                  CMNotificationCenterGetDefaultLocalCenter();
                  FigNotificationCenterAddWeakListeners();
                  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
                  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, fbapo_airPlayPrefsChangedCallback, @"com.apple.airplay.bufferedAVAudioSessionOverrideChanged", 0, 0);
                }
              }

              v21 = 0;
              goto LABEL_35;
            }
          }

          goto LABEL_53;
        }

        goto LABEL_34;
      }

LABEL_53:
      v21 = v17;
      goto LABEL_35;
    }
  }

LABEL_34:
  v21 = 4294954514;
LABEL_35:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (!v21)
  {
    CMBaseObjectGetDerivedStorage();
    *a4 = 0;
  }

  return v21;
}

__CFString *fbapo_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigBufferedAirPlayOutput %p; endpointStream=%@>", a1, *(DerivedStorage + 56));
  return Mutable;
}

uint64_t fbapo_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFString **a4)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (CFEqual(a2, @"EnableLocalPlayback") || CFEqual(a2, @"LocalPlaybackVolume"))
  {
    v9 = FigSignalErrorAtGM();
LABEL_4:
    v10 = v9;
    goto LABEL_5;
  }

  if (CFEqual(a2, @"PreferredClock"))
  {
    v12 = *(DerivedStorage + 144);
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (CFEqual(a2, @"ZeroBasedTimebase"))
  {
    v12 = *(DerivedStorage + 152);
    if (!v12)
    {
LABEL_12:
      v10 = 0;
      *a4 = v12;
      goto LABEL_5;
    }

LABEL_11:
    v12 = CFRetain(v12);
    goto LABEL_12;
  }

  if (CFEqual(a2, @"MaximumNumberOfOutputChannels"))
  {
    v13 = *MEMORY[0x1E6962570];
    v14 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v16 = v13;
    v17 = v14;
    goto LABEL_15;
  }

  if (!CFEqual(a2, @"AtmosIsSupported"))
  {
    if (CFEqual(a2, @"PrerollDuration"))
    {
      v9 = fbapo_copyCalculatePrerollDuration(a1, a4);
      goto LABEL_4;
    }

    if (CFEqual(a2, @"AudioMode"))
    {
      v28 = 0;
      TypeID = CFStringGetTypeID();
      if (fbapo_getCachedValue(a1, TypeID, &v28))
      {
        v12 = @"AudioMode_Default";
      }

      else
      {
        v12 = v28;
        if (!v28)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    if (CFEqual(a2, @"IsActiveConfigurationInvalid"))
    {
      isActiveConfigurationInvalid = fbapo_isActiveConfigurationInvalid(a1);
    }

    else
    {
      if (!CFEqual(a2, @"SupportsReceiverSideSoundCheck"))
      {
        if (CFEqual(a2, @"UniqueID"))
        {
          v12 = *(DerivedStorage + 272);
          goto LABEL_11;
        }

        if (!CFEqual(a2, @"ALACIsAllowed"))
        {
          if (CFEqual(a2, @"SourceSampleBufferConsumer"))
          {
            v12 = *(DerivedStorage + 184);
            goto LABEL_11;
          }

          if (CFEqual(a2, @"LoggingID"))
          {
            v12 = CFStringCreateWithCString(a3, (DerivedStorage + 208), 0x8000100u);
            goto LABEL_12;
          }

          if (!CFEqual(a2, @"LastSbufEndOPTS"))
          {
            v10 = 4294954512;
            goto LABEL_5;
          }

          CMBaseObject = *(DerivedStorage + 184);
          v16 = @"LastSbufEndOPTS";
          v17 = a3;
LABEL_15:
          v9 = CMBaseObjectCopyProperty(CMBaseObject, v16, v17, a4);
          goto LABEL_4;
        }

        v27 = MEMORY[0x1E695E4D0];
        if (!*(DerivedStorage + 265))
        {
          v27 = MEMORY[0x1E695E4C0];
        }

LABEL_34:
        v12 = *v27;
        goto LABEL_11;
      }

      isActiveConfigurationInvalid = fbapo_doesSupportsReceiverSideSoundCheck();
    }

    v27 = MEMORY[0x1E695E4D0];
    if (!isActiveConfigurationInvalid)
    {
      v27 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_34;
  }

  v18 = *MEMORY[0x1E6962570];
  v19 = *MEMORY[0x1E695E480];
  v20 = FigEndpointStreamGetCMBaseObject();
  v10 = CMBaseObjectCopyProperty(v20, v18, v19, &cf);
  v21 = cf;
  if (!v10)
  {
    SInt32 = FigCFNumberGetSInt32();
    v23 = MEMORY[0x1E695E4D0];
    if (SInt32 <= 7)
    {
      v23 = MEMORY[0x1E695E4C0];
    }

    v24 = *v23;
    if (*v23)
    {
      v24 = CFRetain(v24);
    }

    *a4 = v24;
    v21 = cf;
  }

  if (v21)
  {
    CFRelease(v21);
  }

LABEL_5:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t fbapo_setAudioSessionID(uint64_t a1, uint64_t a2)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 56))
  {
    return 0;
  }

  result = fbapo_amIActiveEndpointStreamClient();
  if (result)
  {
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v6 = *MEMORY[0x1E69624F8];

      return v5(CMBaseObject, v6, a2);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t fbapo_audioEngineIsResumed()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BOOLean = 0;
  CMBaseObject = FigEndpointStreamAudioEngineGetCMBaseObject(*(DerivedStorage + 72));
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  v3 = v2(CMBaseObject, @"isResumed", *MEMORY[0x1E695E480], &BOOLean);
  v4 = BOOLean;
  if (v3)
  {
    Value = 0;
    if (!BOOLean)
    {
      return Value;
    }

    goto LABEL_4;
  }

  Value = CFBooleanGetValue(BOOLean);
  v4 = BOOLean;
  if (BOOLean)
  {
LABEL_4:
    CFRelease(v4);
  }

  return Value;
}

void fbapo_endpointStreamInterruptionCallback(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    v7 = CFEqual(a3, *MEMORY[0x1E6962520]);
    if (v7 || CFEqual(a3, *MEMORY[0x1E6962528]))
    {
      if (dword_1EAF17590)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v7)
      {
        if (*(DerivedStorage + 64))
        {
          CFDictionaryAddValue(v6, @"NotifyOthers", *MEMORY[0x1E695E4D0]);
          v9 = *(DerivedStorage + 64);
          if (v9)
          {
            v10 = *(CMBaseObjectGetVTable() + 16);
            if (v10)
            {
              v11 = *(v10 + 88);
              if (v11)
              {
                v11(v9, v6);
              }
            }
          }
        }
      }
    }

    CFRelease(v6);
  }

  else
  {
    fbapo_endpointStreamInterruptionCallback_cold_1();
  }
}

uint64_t fbapo_endpointStreamALACStreamingSupportChangedCallback()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17590)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (FigCFDictionaryGetBooleanIfPresent())
  {
    *(DerivedStorage + 265) = 1;
  }

  if (dword_1EAF17590)
  {
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigSimpleMutexUnlock();
}

void fbapo_postNotificationInternal(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFRetain(a3);
  }

  CFRetain(a1);
  v7 = *(DerivedStorage + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbapo_postNotificationInternal_block_invoke;
  block[3] = &__block_descriptor_tmp_153_0;
  block[4] = a2;
  block[5] = a1;
  block[6] = a3;
  dispatch_async(v7, block);
}

BOOL fbapo_doesEndpointStreamSupportMixedSampleRates()
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v2 = v1 && !v1(CMBaseObject, *MEMORY[0x1E69625B0], *MEMORY[0x1E695E480], &cf) && FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

uint64_t fbapo_channelLayoutTagHash(int a1)
{
  if (a1 == 12845066)
  {
    v1 = 64;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 12779530)
  {
    v2 = 32;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 12713992)
  {
    v3 = 16;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 12648464)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  if (a1 == 12582924)
  {
    v5 = 128;
  }

  else
  {
    v5 = v4;
  }

  if (a1 <= 12713991)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (a1 == 8388616)
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  if (a1 == 8126470)
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  if (a1 == 6619138)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  if (a1 == 6553601)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (a1 <= 8126469)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  if (a1 <= 12582923)
  {
    return v11;
  }

  else
  {
    return v6;
  }
}

void __fbapo_postNotificationInternal_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);

  fbapo_releaseAsync(v3);
}

void fbapo_releaseAsync(uint64_t a1)
{
  if (a1)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fbapo_releaseAsync_block_invoke;
    block[3] = &__block_descriptor_tmp_154_0;
    block[4] = a1;
    dispatch_async(global_queue, block);
  }
}

uint64_t fbapo_audioEngineBufferingPriorityChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  block[29] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(a5, @"bufferingPriority");
  v8 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  v9 = *(DerivedStorage + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbapo_audioEngineBufferingPriorityChangedCallback_block_invoke;
  block[3] = &__block_descriptor_tmp_159;
  block[4] = DerivedStorage;
  block[5] = v8;
  dispatch_async(v9, block);
  if (dword_1EAF17590)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  return CMNotificationCenterPostNotification();
}

uint64_t fbapo_audioEngineFormatInfoChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    if (!dword_1EAF17590 || (os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT), fig_log_call_emit_and_clean_up_after_send_and_compose(), (v7 = *(DerivedStorage + 64)) != 0))
    {
      v9 = *(CMBaseObjectGetVTable() + 16);
      if (v9)
      {
        v10 = *(v9 + 56);
        if (v10)
        {
          v10(v7, *MEMORY[0x1E69AFEB0], a5);
        }
      }
    }
  }

  return FigSimpleMutexUnlock();
}

void __fbapo_audioEngineBufferingPriorityChangedCallback_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    v2 = @"urgent";
  }

  else if (FigCFEqual())
  {
    v2 = @"default";
  }

  else
  {
    if (!FigCFEqual())
    {
      goto LABEL_8;
    }

    v2 = @"relaxed";
  }

  *(*(a1 + 32) + 232) = v2;
LABEL_8:
  FigSimpleMutexUnlock();
  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t fbapo_getCachedValue(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 160), @"AudioMode");
  if (!Value)
  {
    return 4294954513;
  }

  v7 = Value;
  if (CFGetTypeID(Value) != a2)
  {
    return 4294954513;
  }

  result = 0;
  *a3 = v7;
  return result;
}

uint64_t fbapo_doesSupportsReceiverSideSoundCheck()
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v1)
  {
    v1(CMBaseObject, *MEMORY[0x1E69625B8], *MEMORY[0x1E695E480], &cf);
  }

  v2 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

uint64_t fbapo_setAndCacheFigAudioSession(uint64_t a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2)
  {
    return 4294948075;
  }

  v7 = DerivedStorage;
  v8 = *(CMBaseObjectGetVTable() + 16);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      v10 = v9(a2, @"FAS_SourceSessionID", *MEMORY[0x1E695E480], &cf);
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v11 = fbapo_setAudioSessionID(a1, cf);
        v12 = v11;
        if (a3 && !v11)
        {
          CMBaseObjectGetDerivedStorage();
          FigCFDictionarySetValue();
          v13 = *(v7 + 64);
          *(v7 + 64) = a2;
          CFRetain(a2);
          if (v13)
          {
            CFRelease(v13);
          }

          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 4294948071;
    }
  }

  else
  {
    v12 = 4294948075;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t FigEndpointStreamAudioEngineSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObject = FigEndpointStreamAudioEngineGetCMBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(CMBaseObject, a2, a3);
}

void fbapo_setAndCacheAudioProcessingTap(uint64_t a1, uint64_t a2, int a3)
{
  v12[24] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 56) || !fbapo_amIActiveEndpointStreamClient())
  {
    if (!a3)
    {
      return;
    }

    UInt64 = 0;
LABEL_4:
    CMBaseObjectGetDerivedStorage();
    FigCFDictionarySetValue();
    goto LABEL_5;
  }

  if (!MTAudioProcessingTapIsProxyTap(a2))
  {
    if (a2)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    UInt64 = 0;
    goto LABEL_20;
  }

  if (MTProxyAudioProcessingTapGetObjectID(a2, v12))
  {
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return;
  }

  UInt64 = FigCFNumberCreateUInt64();
  if (UInt64)
  {
    v6 = v12[0] == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
LABEL_20:
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v9)
    {
      goto LABEL_5;
    }

    v10 = v9(CMBaseObject, *MEMORY[0x1E6962548], UInt64);
    if (!a3 || v10)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  fbapo_setAndCacheAudioProcessingTap_cold_1();
LABEL_5:
  if (UInt64)
  {
    CFRelease(UInt64);
  }
}

uint64_t fbapo_setRateAndAnchorTime(const void *a1, char a2, CMTime *a3, __int128 *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v40 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (dword_1EAF17590)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*DerivedStorage)
  {
    MutableCopy = 0;
    v18 = 0;
    a8 = 4294954511;
  }

  else
  {
    if (a9 != 0.0)
    {
      v17 = fig_log_handle();
      if (a1 + 1 >= 2)
      {
        v27 = v17;
        if (os_signpost_enabled(v17))
        {
          time = *a3;
          Seconds = CMTimeGetSeconds(&time);
          LODWORD(time.value) = 134218496;
          *(&time.value + 4) = a1;
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = a9;
          HIWORD(time.epoch) = 2048;
          v37 = Seconds;
          _os_signpost_emit_with_name_impl(&dword_1962D5000, v27, OS_SIGNPOST_INTERVAL_BEGIN, a1, "kFigKTraceWHA_BAO_SetRateAndAnchorTime", "bao=%p, rate=%1.2f, mediaTime=%1.3f", &time, 0x20u);
        }
      }
    }

    v18 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A00400FDB3E6BuLL);
    if (v18)
    {
      if (a1)
      {
        v19 = CFRetain(a1);
      }

      else
      {
        v19 = 0;
      }

      *v18 = v19;
      v18[8] = a2;
      *(v18 + 2) = a9;
      v20 = *&a3->value;
      *(v18 + 5) = a3->epoch;
      *(v18 + 24) = v20;
      v21 = *a4;
      *(v18 + 8) = *(a4 + 2);
      *(v18 + 3) = v21;
      *(v18 + 10) = a6;
      *(v18 + 11) = a7;
      if (a5)
      {
        v22 = CFRetain(a5);
      }

      else
      {
        v22 = 0;
      }

      *(v18 + 9) = v22;
      if (!a8)
      {
        MutableCopy = 0;
        goto LABEL_18;
      }

      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        FigCFDictionaryGetValue();
        v24 = FigCFDictionaryCreateMutableCopy();
        if (v24)
        {
          a8 = v24;
          FigCFDictionarySetValue();
          *(v18 + 12) = CFRetain(MutableCopy);
LABEL_18:
          v25 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexCheckIsLockedOnThisThread();
          if (dword_1EAF17590)
          {
            v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (a1)
          {
            dispatch_async_f(*(v25 + 16), v18, fbapo_setRateAndAnchorTimeDispatch);
          }

          if (a8)
          {
            CFRelease(a8);
            a8 = 0;
          }

          goto LABEL_26;
        }
      }

      a8 = 4294951816;
    }

    else
    {
      MutableCopy = 0;
      a8 = 4294949975;
    }
  }

  free(v18);
  if (a9 != 0.0)
  {
    v30 = fig_log_handle();
    if (a1 + 1 >= 2)
    {
      v31 = v30;
      if (os_signpost_enabled(v30))
      {
        time = *a3;
        v32 = CMTimeGetSeconds(&time);
        LODWORD(time.value) = 134218752;
        *(&time.value + 4) = a1;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = a9;
        HIWORD(time.epoch) = 2048;
        v37 = v32;
        v38 = 2048;
        v39 = a8;
        _os_signpost_emit_with_name_impl(&dword_1962D5000, v31, OS_SIGNPOST_INTERVAL_END, a1, "kFigKTraceWHA_BAO_SetRateAndAnchorTime", "bao=%p, rate=%1.2f, mediaTime=%1.3f, error=%llu", &time, 0x2Au);
      }
    }
  }

LABEL_26:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  FigSimpleMutexUnlock();
  return a8;
}

uint64_t fbapo_setConnectionActive(const void *a1, int a2, int a3, const void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v14 = 4294954511;
LABEL_13:
    FigSimpleMutexUnlock();
    return v14;
  }

  v9 = *(DerivedStorage + 192);
  if (a2 == 1 && v9 == 1 || !a2 && !v9)
  {
    if (dword_1EAF17590)
    {
      v22 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v14 = 0;
    goto LABEL_13;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  if (!Mutable)
  {
    v14 = 4294949975;
    goto LABEL_13;
  }

  v12 = Mutable;
  FigCFDictionarySetValue();
  fbapo_postNotificationInternal(a1, @"GoActive", v12);
  if (a2)
  {
    if (dword_1EAF17590)
    {
      v22 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(DerivedStorage + 264))
    {
      if (a1)
      {
        CFRetain(a1);
      }

      if (a4)
      {
        CFRetain(a4);
      }

      v16 = *(DerivedStorage + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __fbapo_setConnectionActive_block_invoke;
      block[3] = &__block_descriptor_tmp_186_0;
      block[4] = DerivedStorage;
      block[5] = a1;
      block[6] = a4;
      dispatch_async(v16, block);
    }

    *(DerivedStorage + 192) = 1;
  }

  else
  {
    if (dword_1EAF17590)
    {
      v22 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fbapo_resetInternal();
    v17 = *(DerivedStorage + 72);
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v18)
    {
      v18(v17, 0, 0, 0);
    }

    *(DerivedStorage + 80) = 0;
    *(DerivedStorage + 192) = 0;
    if (a3)
    {
      fbapo_postNotificationInternal(a1, @"PrerollLost", 0);
    }

    *(DerivedStorage + 268) = 0;
  }

  FigSimpleMutexUnlock();
  CFRelease(v12);
  return 0;
}

uint64_t fbapo_copyTransportFormatDescriptionForSourceContentFormatDescription(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 56);
  FigEndpointStreamAirPlayGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    v5 = 0;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 24) + 24);
  if (!v6 || (result = v6(v5, a2, a3), result))
  {
    if (*a3)
    {
      CFRelease(*a3);
    }

    return FigEndpointStreamAudioFormatDescriptionCreate();
  }

  return result;
}

uint64_t fbapo_doesSupportPassthroughOfFormatDescription(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  if (!a3)
  {
    fbapo_doesSupportPassthroughOfFormatDescription_cold_1(&v21);
    LOBYTE(v16) = 0;
    result = v21;
    goto LABEL_29;
  }

  v6 = DerivedStorage;
  theString = 0;
  v7 = *(CMBaseObjectGetDerivedStorage() + 64);
  if (!v7)
  {
    goto LABEL_26;
  }

  v8 = *(CMBaseObjectGetVTable() + 16);
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = *(v8 + 48);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9(v7, *MEMORY[0x1E69AFF80], *MEMORY[0x1E695E480], &theString);
  v11 = theString;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = theString == 0;
  }

  if (!v12)
  {
    if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || CFStringHasPrefix(theString, @"com.apple.cmta"))
    {
      v13 = 0;
      goto LABEL_17;
    }

LABEL_16:
    v13 = 1;
LABEL_17:
    v11 = theString;
    if (!theString)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v13 = 1;
  if (theString)
  {
LABEL_18:
    CFRelease(v11);
  }

LABEL_19:
  if (v13)
  {
LABEL_26:
    LOBYTE(v16) = 0;
    goto LABEL_27;
  }

  v14 = *(v6 + 56);
  FigEndpointStreamAirPlayGetClassID();
  IsMemberOfClass = CMBaseObjectIsMemberOfClass();
  LOBYTE(v16) = 0;
  if (!IsMemberOfClass)
  {
    result = 0;
    goto LABEL_29;
  }

  result = 0;
  if (v14)
  {
    v16 = *(*(CMBaseObjectGetVTable() + 24) + 32);
    if (v16)
    {
      v18 = v16(v14, a2, &v19);
      result = 0;
      if (v18)
      {
        LOBYTE(v16) = 0;
      }

      else
      {
        LOBYTE(v16) = v19;
      }

      goto LABEL_29;
    }

LABEL_27:
    result = 0;
  }

LABEL_29:
  *a3 = v16;
  return result;
}

uint64_t fbapo_clientRequestActiveConfigurationDidBecomeInvalid(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17590)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  fbapo_postNotificationInternal(a1, @"ActiveConfigurationDidBecomeInvalid", 0);
  *(DerivedStorage + 81) = 1;
  return 0;
}

void __fbapo_setRateAndAnchorTimeDispatch_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 16) != 0.0)
  {
    v3 = fig_log_handle();
    v2 = *(a1 + 32);
    v4 = *v2;
    if ((*v2 + 1) >= 2)
    {
      v9 = v3;
      if (os_signpost_enabled(v3))
      {
        v10 = *(v2 + 16);
        time = *(v2 + 24);
        Seconds = CMTimeGetSeconds(&time);
        v12 = *(a1 + 40);
        LODWORD(time.value) = 134218752;
        *(&time.value + 4) = v4;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = v10;
        HIWORD(time.epoch) = 2048;
        v16 = Seconds;
        v17 = 2048;
        v18 = v12;
        _os_signpost_emit_with_name_impl(&dword_1962D5000, v9, OS_SIGNPOST_INTERVAL_END, v4, "kFigKTraceWHA_BAO_SetRateAndAnchorTime", "bao=%p, rate=%1.2f, mediaTime=%1.3f, error=%llu", &time, 0x2Au);
        v2 = *(a1 + 32);
      }
    }
  }

  v6 = *(v2 + 80);
  v5 = *(v2 + 88);
  v7 = *(a1 + 40);
  v8 = *(v2 + 16);
  time = *(v2 + 24);
  v13 = *(v2 + 48);
  v14 = *(v2 + 64);
  v6(v5, v7, &time, &v13, 0, v8);
  fbapo_setRateAndAnchorTimeDispatchContextDestroy(*(a1 + 32));
}

void fbapo_applyCachedPropertiesForBecomeActiveIterator(const void *a1, __CFString *a2, uint64_t a3)
{
  if (CFEqual(a1, @"AudioMode"))
  {

    fbapo_setAndCacheAudioMode(a3, a2, 0);
  }

  else if (CFEqual(a1, @"FigAudioSession"))
  {
    if (*MEMORY[0x1E695E738] == a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = a2;
    }

    fbapo_setAndCacheFigAudioSession(a3, v6, 0);
  }

  else if (CFEqual(a1, @"AudioProcessingTap"))
  {
    if (*MEMORY[0x1E695E738] == a2)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    fbapo_setAndCacheAudioProcessingTap(a3, v7, 0);
  }
}

void fbapo_setRateAndAnchorTimeCallback(uint64_t a1, int a2, CMTime *a3, CMTime *a4, const void *a5, uint64_t *a6, Float64 a7)
{
  v61 = *MEMORY[0x1E69E9840];
  v53 = **&MEMORY[0x1E6960C70];
  v52 = v53;
  v51 = v53;
  v8 = *a6;
  if (*a6)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    lhs = *(a6 + 10);
    rhs = *(a6 + 7);
    CMTimeSubtract(&v53, &lhs, &rhs);
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&lhs, HostTimeClock);
    rhs = *(a6 + 10);
    CMTimeSubtract(&v52, &lhs, &rhs);
    v15 = CMClockGetHostTimeClock();
    CMClockGetTime(&lhs, v15);
    rhs = *(a6 + 7);
    CMTimeSubtract(&v51, &lhs, &rhs);
    if (*(DerivedStorage + 252))
    {
      rhs = v51;
      v50 = *(DerivedStorage + 240);
      CMTimeAdd(&lhs, &rhs, &v50);
      v51 = lhs;
    }

    if (dword_1EAF17590)
    {
      v39 = v8;
      v16 = a1;
      v38 = a2;
      LODWORD(v50.value) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = v50.value;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
      {
        v19 = value;
      }

      else
      {
        v19 = value & 0xFFFFFFFE;
      }

      if (v19)
      {
        v20 = CMBaseObjectGetDerivedStorage() + 208;
        lhs = *a3;
        Seconds = CMTimeGetSeconds(&lhs);
        lhs = *a4;
        v22 = CMTimeGetSeconds(&lhs);
        LODWORD(rhs.value) = 136316930;
        *(&rhs.value + 4) = "fbapo_setRateAndAnchorTimeCallback";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = v39;
        HIWORD(rhs.epoch) = 2082;
        v55 = v20;
        v56 = 2048;
        *v57 = v16;
        *&v57[8] = 2048;
        *&v57[10] = a7;
        *&v57[18] = 2048;
        *&v57[20] = Seconds;
        *&v57[28] = 2048;
        *&v57[30] = v22;
        *&v57[38] = 2048;
        *&v57[40] = a6;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a2 = v38;
      v8 = v39;
      if (dword_1EAF17590)
      {
        LODWORD(v50.value) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v24 = v50.value;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          v26 = CMBaseObjectGetDerivedStorage() + 208;
          lhs = *a4;
          v27 = CMTimeGetSeconds(&lhs);
          lhs = *(DerivedStorage + 240);
          v28 = CMTimeGetSeconds(&lhs);
          lhs = v53;
          v29 = CMTimeGetSeconds(&lhs);
          lhs = v52;
          v30 = CMTimeGetSeconds(&lhs);
          lhs = v51;
          v31 = CMTimeGetSeconds(&lhs);
          LODWORD(rhs.value) = 136317442;
          *(&rhs.value + 4) = "fbapo_setRateAndAnchorTimeCallback";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v39;
          HIWORD(rhs.epoch) = 2082;
          v55 = v26;
          v56 = 1024;
          *v57 = v38;
          *&v57[4] = 2048;
          *&v57[6] = a7;
          *&v57[14] = 2048;
          *&v57[16] = v27;
          *&v57[24] = 2048;
          *&v57[26] = v28;
          *&v57[34] = 2048;
          *&v57[36] = v29;
          *&v57[44] = 2048;
          *&v57[46] = v30;
          v58 = 2048;
          v59 = v31;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    if (!a2)
    {
      FigSimpleMutexLock();
      if (!*DerivedStorage)
      {
        memset(&v50, 0, sizeof(v50));
        v32 = CMClockGetHostTimeClock();
        v33 = *(DerivedStorage + 144);
        lhs = *a4;
        CMSyncConvertTime(&v50, &lhs, v32, v33);
        if (dword_1EAF17590)
        {
          *type = 0;
          v48 = OS_LOG_TYPE_DEFAULT;
          v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v35 = *(DerivedStorage + 152);
        lhs = *a3;
        rhs = v50;
        CMTimebaseSetRateAndAnchorTime(v35, a7, &lhs, &rhs);
      }

      FigSimpleMutexUnlock();
    }

    v36 = a5;
    if (a5)
    {
      v36 = CFRetain(a5);
    }

    v37 = *(DerivedStorage + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fbapo_setRateAndAnchorTimeCallback_block_invoke;
    block[3] = &__block_descriptor_tmp_185_0;
    v43 = *&a3->value;
    epoch = a3->epoch;
    v45 = a2;
    block[4] = DerivedStorage;
    *&block[5] = a7;
    block[6] = v8;
    block[7] = a6;
    v46 = *&a4->value;
    v47 = a4->epoch;
    block[8] = v36;
    dispatch_async(v37, block);
  }

  else
  {
    fbapo_setRateAndAnchorTimeCallback_cold_1();
  }
}

void __fbapo_setRateAndAnchorTimeInternal_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) != 0.0)
  {
    v2 = fig_log_handle();
    v3 = *(a1 + 40);
    if (v3 + 1 >= 2)
    {
      v8 = v2;
      if (os_signpost_enabled(v2))
      {
        v9 = *(a1 + 32);
        time = *(a1 + 64);
        Seconds = CMTimeGetSeconds(&time);
        v11 = *(a1 + 88);
        LODWORD(time.value) = 134218752;
        *(&time.value + 4) = v3;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = v9;
        HIWORD(time.epoch) = 2048;
        v15 = Seconds;
        v16 = 2048;
        v17 = v11;
        _os_signpost_emit_with_name_impl(&dword_1962D5000, v8, OS_SIGNPOST_INTERVAL_END, v3, "kFigKTraceWHA_BAO_SetRateAndAnchorTime", "bao=%p, rate=%1.2f, mediaTime=%1.3f, error=%llu", &time, 0x2Au);
      }
    }
  }

  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = *(a1 + 88);
  v7 = *(a1 + 32);
  time = *(a1 + 64);
  v12 = *(a1 + 92);
  v13 = *(a1 + 108);
  v5(v4, v6, &time, &v12, 0, v7);
  fbapo_releaseAsync(*(a1 + 40));
}

void __fbapo_setRateAndAnchorTimeCallback_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = **&MEMORY[0x1E6960C70];
  v22 = *(a1 + 72);
  v2 = *(a1 + 96);
  if (v2 > -17581)
  {
    v3 = 0;
    if (v2 != -17580 && v2)
    {
LABEL_9:
      v3 = *(a1 + 96);
      goto LABEL_18;
    }

    if (!v2)
    {
      FigSimpleMutexLock();
      v4 = *(a1 + 32);
      if (!*v4 && (*(a1 + 40) != 0.0 || (*(v4 + 96) & 1) != 0))
      {
        if (dword_1EAF17590)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v4 = *(a1 + 32);
        }

        v6 = *(a1 + 72);
        *(v4 + 100) = *(a1 + 88);
        *(v4 + 84) = v6;
      }

      FigSimpleMutexUnlock();
    }
  }

  else
  {
    if (v2 != -17582)
    {
      if (v2 == -17581)
      {
        v3 = 4294949973;
        goto LABEL_18;
      }

      goto LABEL_9;
    }

    v3 = 4294949971;
  }

LABEL_18:
  v7 = *(a1 + 56);
  if (*(v7 + 40))
  {
    v8 = *(v7 + 8);
    if (v8 != 0.0)
    {
      time = v22;
      CMTimeMultiplyByFloat64(&v22, &time, v8);
      v7 = *(a1 + 56);
    }

    if (*(v7 + 28))
    {
      *&time.value = *(v7 + 16);
      v10 = *(v7 + 32);
    }

    else
    {
      v9 = *(a1 + 32);
      *&time.value = *(v9 + 112);
      v10 = *(v9 + 128);
    }

    time.epoch = v10;
    rhs = v22;
    CMTimeAdd(&v23, &time, &rhs);
    if (*(a1 + 40) != 0.0)
    {
      v11 = fig_log_handle();
      v12 = *(a1 + 48);
      if (v12 + 1 >= 2)
      {
        v19 = v11;
        if (os_signpost_enabled(v11))
        {
          v20 = *(a1 + 40);
          time = *(a1 + 72);
          Seconds = CMTimeGetSeconds(&time);
          LODWORD(time.value) = 134218752;
          *(&time.value + 4) = v12;
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = v20;
          HIWORD(time.epoch) = 2048;
          v26 = Seconds;
          v27 = 2048;
          v28 = v3;
          _os_signpost_emit_with_name_impl(&dword_1962D5000, v19, OS_SIGNPOST_INTERVAL_END, v12, "kFigKTraceWHA_BAO_SetRateAndAnchorTime", "bao=%p, rate=%1.2f, mediaTime=%1.3f, error=%llu", &time, 0x2Au);
        }
      }
    }

    v14 = *(a1 + 56);
    v13 = *(a1 + 64);
    v16 = *(v14 + 40);
    v15 = *(v14 + 48);
    v17 = *(a1 + 40);
    time = v23;
    rhs = *(a1 + 100);
    v16(v15, v3, &time, &rhs, v13, v17);
  }

  v18 = *(a1 + 64);
  if (v18)
  {
    CFRelease(v18);
  }

  fbapo_releaseAsync(**(a1 + 56));
  **(a1 + 56) = 0;
  free(*(a1 + 56));
}

__n128 fbapo_resetInternal()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17590)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 192) = -999;
  v2 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 240) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 256) = *(v2 + 16);
  *(DerivedStorage + 268) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_46()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_14_42()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_16_35()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_30_20()
{

  return FigSimpleMutexLock();
}

uint64_t OUTLINED_FUNCTION_31_22()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_32_21()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_33_21()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

double OUTLINED_FUNCTION_36_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, uint64_t a32)
{
  *(v32 - 256) = a31;
  *(v32 - 240) = a32;

  return CMTimeGetSeconds((v32 - 256));
}

void OUTLINED_FUNCTION_37_22(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v7, OS_SIGNPOST_EVENT, v6, a5, a6, (v8 - 256), 0xCu);
}

uint64_t OUTLINED_FUNCTION_38_16()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_50_13()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_52_17(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_type_t type, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigCaptionRendererLegibleOutputCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 && a2 && a3)
  {
    if (a5)
    {
      *a5 = 0;
      FigCaptionRendererOutputGetClassID();
      CMDerivedObjectCreate();
      FigCaptionRendererLegibleOutputCreate_cold_1(&v6);
    }

    else
    {
      FigCaptionRendererLegibleOutputCreate_cold_2(&v6);
    }
  }

  else
  {
    FigCaptionRendererLegibleOutputCreate_cold_3(&v6);
  }

  return v6;
}

__CFString *FigCaptionRendererLegibleOutput_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererLegibleOutput %p>", a1);
  return Mutable;
}

uint64_t fcrLegibleOutputSetNeedsDisplayInRect()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    (*(DerivedStorage + 88))(*DerivedStorage, *(DerivedStorage + 72));
  }

  return 0;
}

uint64_t fcrLegibleOutputSetBounds(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = a1;
  *(DerivedStorage + 16) = a2;
  *(DerivedStorage + 24) = a3;
  *(DerivedStorage + 32) = a4;
  (*(DerivedStorage + 80))(*(DerivedStorage + 72), a6, a1, a2, a3, a4);
  return 0;
}

uint64_t fcrLegibleOutputSetVideoBounds(double a1, double a2, double a3, double a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[5] = a1;
  DerivedStorage[6] = a2;
  DerivedStorage[7] = a3;
  DerivedStorage[8] = a4;
  return 0;
}

uint64_t styleSegment_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionStyleSegmentID = result;
  return result;
}

uint64_t FigCaptionStyleSegmentCopyText(uint64_t a1, __CFString **a2)
{
  if (!a1)
  {
    FigCaptionStyleSegmentCopyText_cold_1(&v9);
    return v9;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    v7 = *(a1 + 24);
    if (!v7)
    {
      v4 = 0;
      goto LABEL_4;
    }

    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      v4 = v8(v7);
      if (!v4)
      {
        *(a1 + 16) = 0;
        goto LABEL_4;
      }
    }

    else
    {
      v4 = &stru_1F0B1AFB8;
    }

    v4 = CFRetain(v4);
    *(a1 + 16) = v4;
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  v4 = CFRetain(v4);
LABEL_4:
  v5 = 0;
  *a2 = v4;
  return v5;
}

uint64_t FigCaptionStyleSegmentCopyCaptionData(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        v4 = CFRetain(v3);
      }

      else
      {
        v4 = 0;
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      FigCaptionStyleSegmentCopyCaptionData_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    FigCaptionStyleSegmentCopyCaptionData_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t FigCaptionStyleSegmentCopyAttributes(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = CFRetain(v3);
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  else
  {
    FigCaptionStyleSegmentCopyAttributes_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t fcstylesegmenter_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionStyleSegmentGeneratorID = result;
  return result;
}

uint64_t FigCaptionStyleSegmentGeneratorPerform(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    FigCaptionStyleSegmentGeneratorPerform_cold_3(start);
    return *start;
  }

  v1 = a1;
  v2 = *(a1 + 64);
  theArray.start.value = 0;
  v47 = *MEMORY[0x1E6961268];
  v3 = *MEMORY[0x1E695E480];
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    Mutable = 0;
    value_low = 4294954514;
    goto LABEL_21;
  }

  v6 = v5(CMBaseObject, v47, v3, &theArray);
  if (v6)
  {
    value_low = v6;
LABEL_20:
    Mutable = 0;
    goto LABEL_21;
  }

  Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      v9 = v8(v2);
    }

    else
    {
      v9 = &stru_1F0B1AFB8;
    }

    Length = CFStringGetLength(v9);
    Count = CFArrayGetCount(theArray.start.value);
    if (!Count)
    {
LABEL_17:
      v59.length = CFArrayGetCount(Mutable);
      v59.location = 0;
      CFArraySortValues(Mutable, v59, MEMORY[0x1E695D7A0], 0);
      value_low = 0;
      goto LABEL_21;
    }

    v13 = Count;
    v14 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray.start.value, v14);
      *start = 0;
      *&start[8] = 0;
      if (Length)
      {
        break;
      }

LABEL_16:
      if (++v14 == v13)
      {
        goto LABEL_17;
      }
    }

    v16 = ValueAtIndex;
    v17 = 0;
    while (1)
    {
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v18)
      {
        value_low = 4294954514;
        goto LABEL_19;
      }

      v19 = v18(v2, v17, v16, v3, 0, start);
      if (v19)
      {
        break;
      }

      v17 = *&start[8] + *start;
      FigCFArrayAppendCFIndex();
      if (v17 == Length)
      {
        goto LABEL_16;
      }
    }

    value_low = v19;
LABEL_19:
    CFRelease(Mutable);
    goto LABEL_20;
  }

  FigCaptionStyleSegmentGeneratorPerform_cold_1(start);
  value_low = *start;
LABEL_21:
  if (theArray.start.value)
  {
    CFRelease(theArray.start.value);
  }

  if (value_low)
  {
LABEL_77:
    if (!Mutable)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v20 = CFArrayGetCount(Mutable);
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = 0;
      v24 = *MEMORY[0x1E69614E0];
      v48 = v1;
      v49 = v20;
      v50 = Mutable;
      while (1)
      {
        v52 = 0;
        FigCFArrayGetCFIndexAtIndex();
        if (v52 != v23)
        {
          break;
        }

LABEL_67:
        if (++v22 == v21)
        {
          value_low = 0;
          goto LABEL_77;
        }
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v25 = FigCaptionDataCopySubrange();
      if (v25)
      {
        goto LABEL_83;
      }

      v26 = cf;
      *start = *(v1 + 2);
      *&theArray.start.value = *(v1 + 5);
      theArray.start.epoch = v1[7];
      CMTimeRangeFromTimeToTime(&v51, start, &theArray.start);
      *start = 0;
      v27 = FigCaptionDataGetCMBaseObject();
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v28)
      {
        v29 = v28(v27, v47, v3, start);
        if (v29)
        {
          value_low = v29;
          v31 = 0;
        }

        else
        {
          v30 = CFArrayGetCount(*start);
          v31 = CFArrayCreateMutable(v3, v30, MEMORY[0x1E695E9C0]);
          if (v31)
          {
            v32 = CFArrayGetCount(*start);
            if (v32)
            {
              v33 = v32;
              for (i = 0; i != v33; ++i)
              {
                v35 = CFArrayGetValueAtIndex(*start, i);
                if (!CFEqual(v35, v24))
                {
                  CFArrayAppendValue(v31, v35);
                }
              }
            }

            value_low = 0;
          }

          else
          {
            FigCaptionStyleSegmentGeneratorPerform_cold_2(&theArray);
            value_low = LODWORD(theArray.start.value);
          }
        }
      }

      else
      {
        v31 = 0;
        value_low = 4294954514;
      }

      if (*start)
      {
        CFRelease(*start);
      }

      if (value_low)
      {
        goto LABEL_63;
      }

      theArray = v51;
      v58[0] = 0;
      v36 = v3;
      v37 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v56 = v37;
      v57 = 0;
      *&start[8] = theArray;
      *start = v26;
      v60.length = CFArrayGetCount(v31);
      v60.location = 0;
      CFArrayApplyFunction(v31, v60, fcstylesegmenter_buildTimeToAttributesMap, start);
      if (!v57)
      {
        v38 = CFDictionaryGetCount(v37);
        if (v38 >= 1)
        {
          v39 = v38;
          if (v38 >> 61)
          {
            v40 = 0;
          }

          else
          {
            v40 = malloc_type_malloc(8 * v38, 0x6004044C4A2DFuLL);
          }

          CFDictionaryGetKeysAndValues(v37, v40, 0);
          qsort_r(v40, v39, 8uLL, 0, fcstylesegmenter_compareCFNumber);
          v41 = figCaptionStyleSegmentCreate(v58);
          if (v41)
          {
            value_low = v41;
          }

          else
          {
            v42 = 0;
            v43 = v58[0];
            do
            {
              Value = CFDictionaryGetValue(v37, v40[v42]);
              if (!v42)
              {
                CFDictionaryApplyFunction(Value, fcstylesegmenter_addAttribute, v43);
              }

              ++v42;
            }

            while (v39 != v42);
            value_low = figCaptionStyleSegmentSetCaptionData(v43, v26);
            if (!value_low)
            {
              v58[0] = 0;
LABEL_55:
              if (v37)
              {
                CFRelease(v37);
              }

              free(v40);
              if (v58[0])
              {
                CFRelease(v58[0]);
              }

              v3 = v36;
              if (value_low)
              {
                v1 = v48;
                if (!v43)
                {
                  goto LABEL_63;
                }
              }

              else
              {
                v1 = v48;
                if (!v43)
                {
                  value_low = fcstylesegmenter_setCaptionData(v48, v26);
                  goto LABEL_63;
                }

                CFArrayAppendValue(v48[9], v43);
              }

              CFRelease(v43);
LABEL_63:
              if (v31)
              {
                CFRelease(v31);
              }

              Mutable = v50;
              if (value_low)
              {
                goto LABEL_77;
              }

              v23 = v52;
              v21 = v49;
              goto LABEL_67;
            }
          }

          v43 = 0;
          goto LABEL_55;
        }
      }

      v43 = 0;
      v40 = 0;
      value_low = 0;
      goto LABEL_55;
    }

    *&theArray.start.value = *(v1 + 1);
    theArray.start.epoch = v1[4];
    *&v51.start.value = *(v1 + 5);
    v46 = v1[8];
    v51.start.epoch = v1[7];
    CMTimeRangeFromTimeToTime(start, &theArray.start, &v51.start);
    v25 = fcstylesegmenter_setCaptionData(v1, v46);
LABEL_83:
    value_low = v25;
    if (!Mutable)
    {
      goto LABEL_79;
    }
  }

  CFRelease(Mutable);
LABEL_79:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

uint64_t FigCaptionStyleSegmentGeneratorCreate(uint64_t a1, const void *a2, __int128 *a3, uint64_t *a4)
{
  if (!a4)
  {
    FigCaptionStyleSegmentGeneratorCreate_cold_2(&v16);
    return LODWORD(v16.start.value);
  }

  if (!a2)
  {
    FigCaptionStyleSegmentGeneratorCreate_cold_1(&v16);
    return LODWORD(v16.start.value);
  }

  v7 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigCaptionStyleSegmentGeneratorGetTypeID_sRegisterFigCaptionStyleSegmentGeneratorOnce, fcstylesegmenter_Register);
  Instance = _CFRuntimeCreateInstance();
  Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v10 = Mutable;
    *(Instance + 64) = CFRetain(a2);
    CMTimeMake(&v16.start, 0, 1000);
    epoch = v16.start.epoch;
    *(Instance + 16) = *&v16.start.value;
    *(Instance + 32) = epoch;
    CMTimeMake(&v16.start, 10000, 1000);
    *(Instance + 40) = *&v16.start.value;
    *(Instance + 56) = v16.start.epoch;
    v12 = *a3;
    *(Instance + 32) = *(a3 + 2);
    *(Instance + 16) = v12;
    v13 = a3[1];
    *&v16.start.value = *a3;
    *&v16.start.epoch = v13;
    *&v16.duration.timescale = a3[2];
    CMTimeRangeGetEnd(&v17, &v16);
    v14 = 0;
    *(Instance + 40) = v17;
    *(Instance + 72) = v10;
    *a4 = Instance;
  }

  else
  {
    v14 = FigSignalErrorAtGM();
    if (Instance)
    {
      CFRelease(Instance);
    }
  }

  return v14;
}

void *styleSegment_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void styleSegment_Finalize(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
    a1[2] = 0;
  }
}

CFStringRef styleSegment_CopyFormattingDesc(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    Length = 0;
    goto LABEL_8;
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v3)
  {
    v2 = &stru_1F0B1AFB8;
    goto LABEL_6;
  }

  Length = v3(v2);
  v2 = Length;
  if (Length)
  {
LABEL_6:
    Length = CFStringGetLength(v2);
  }

LABEL_8:
  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = &stru_1F0B1AFB8;
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigCaptionStyleSegment %p]  CaptionData: %p text:<%@> length:%ld\nattributes = %p", a1, *(a1 + 24), v5, Length, *(a1 + 32));
}

double fcstylesegmenter_Init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void fcstylesegmenter_Finalize(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *fcstylesegmenter_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"[FigCaptionStyleSegmentGenerator(%p) captionData:%p segments:%p]", a1, *(a1 + 64), *(a1 + 72));
  return Mutable;
}

uint64_t figCaptionStyleSegmentCreate(void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigCaptionStyleSegmentGetTypeID_sRegisterFigCaptionStyleSegmentOnce, styleSegment_Register);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      result = 0;
      v4[4] = v6;
      *a1 = v4;
    }

    else
    {
      figCaptionStyleSegmentCreate_cold_1(v4, &v8);
      return v8;
    }
  }

  else
  {
    figCaptionStyleSegmentCreate_cold_2(&v9);
    return v9;
  }

  return result;
}

void fcstylesegmenter_addAttribute(void *key, void *value, void *cf)
{
  if (!cf)
  {
    fcstylesegmenter_addAttribute_cold_1();
    return;
  }

  Mutable = cf[4];
  if (Mutable)
  {
    if (!value)
    {

      CFDictionaryRemoveValue(Mutable, key);
      return;
    }
  }

  else
  {
    if (!value)
    {
      return;
    }

    v7 = CFGetAllocator(cf);
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    cf[4] = Mutable;
  }

  CFDictionarySetValue(Mutable, key, value);
}

uint64_t figCaptionStyleSegmentSetCaptionData(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    *(a1 + 24) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    return 0;
  }

  else
  {
    figCaptionStyleSegmentSetCaptionData_cold_1(&v4);
    return v4;
  }
}

uint64_t figTTMLTreeRegisterFigTTMLTree()
{
  result = _CFRuntimeRegisterClass();
  sFigTTMLTreeID = result;
  return result;
}

uint64_t FigTTMLTreeCopyFeatureAndExtensionSet(uint64_t a1, unsigned int a2, CFMutableSetRef *a3)
{
  HeadNode = FigTTMLRootGetHeadNode();
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v9[1] = Mutable;
  v9[0] = a2;
  if (a3)
  {
    v7 = FigTTMLTreeWalkFromNode(HeadNode, 0, figTTMLTreeBuildFeatureAndExtensionSet, v9);
    if (!v7)
    {
      *a3 = Mutable;
      return v7;
    }
  }

  else
  {
    FigTTMLTreeCopyFeatureAndExtensionSet_cold_1(&v10);
    v7 = v10;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v7;
}

uint64_t FigTTMLTreeCopySliceTimeRangeArray(uint64_t a1, __CFArray **a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E480];
  v5 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v7 = CFArrayCreateMutable(v4, 0, v5);
  v29 = **&MEMORY[0x1E6960C70];
  if (!a2)
  {
    FigTTMLTreeCopySliceTimeRangeArray_cold_1(&lhs);
    value_low = LODWORD(lhs.start.value);
    goto LABEL_20;
  }

  v8 = FigTTMLTreeWalkFromNode(*(a1 + 16), 0, figTTMLTreeAppendSliceTimeToArray, Mutable);
  if (v8)
  {
    value_low = v8;
    goto LABEL_20;
  }

  v23 = a2;
  theArray = v7;
  v33.length = CFArrayGetCount(Mutable);
  v33.location = 0;
  CFArraySortValues(Mutable, v33, figTTMLTreeCompareSliceTime, 0);
  Count = CFArrayGetCount(Mutable);
  if (Count < 1)
  {
LABEL_13:
    value_low = 0;
    *v23 = theArray;
    goto LABEL_14;
  }

  v10 = Count;
  v11 = 0;
  v12 = MEMORY[0x1E6960CC0];
  while (1)
  {
    memset(&v28, 0, sizeof(v28));
    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v11);
    CMTimeMakeFromDictionary(&v28, ValueAtIndex);
    lhs.start = v28;
    rhs = v29;
    CMTimeSubtract(&duration, &lhs.start, &rhs);
    rhs = v29;
    CMTimeRangeMake(&lhs, &rhs, &duration);
    value = lhs.start.value;
    flags = lhs.start.flags;
    timescale = lhs.start.timescale;
    if ((lhs.start.flags & 1) == 0)
    {
      goto LABEL_12;
    }

    v15 = lhs.duration.flags;
    if ((lhs.duration.flags & 1) == 0)
    {
      goto LABEL_12;
    }

    if (lhs.duration.epoch)
    {
      goto LABEL_12;
    }

    v16 = lhs.duration.value;
    if (lhs.duration.value < 0)
    {
      goto LABEL_12;
    }

    epoch = lhs.start.epoch;
    v18 = lhs.duration.timescale;
    lhs.start.value = lhs.duration.value;
    lhs.start.timescale = lhs.duration.timescale;
    lhs.start.flags = lhs.duration.flags;
    lhs.start.epoch = 0;
    duration = *v12;
    if (!CMTimeCompare(&lhs.start, &duration))
    {
      goto LABEL_12;
    }

    lhs.start.value = value;
    lhs.start.timescale = timescale;
    lhs.start.flags = flags;
    lhs.start.epoch = epoch;
    lhs.duration.value = v16;
    lhs.duration.timescale = v18;
    lhs.duration.flags = v15;
    lhs.duration.epoch = 0;
    v19 = CMTimeRangeCopyAsDictionary(&lhs, v4);
    if (!v19)
    {
      break;
    }

    v20 = v19;
    CFArrayAppendValue(theArray, v19);
    CFRelease(v20);
LABEL_12:
    v29 = v28;
    if (v10 == ++v11)
    {
      goto LABEL_13;
    }
  }

  value_low = FigSignalErrorAtGM();
  v7 = theArray;
LABEL_20:
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_14:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return value_low;
}

uint64_t figTTMLTreeCompareSliceTime(const __CFDictionary *a1, const __CFDictionary *a2)
{
  memset(&v7, 0, sizeof(v7));
  CMTimeMakeFromDictionary(&v7, a1);
  memset(&v6, 0, sizeof(v6));
  CMTimeMakeFromDictionary(&v6, a2);
  time1 = v7;
  v4 = v6;
  return CMTimeCompare(&time1, &v4);
}

const void *FigTTMLTreeGetNodeByID(void *a1, void *key)
{
  v3 = a1 + 3;
  v4 = a1[3];
  if (!v4)
  {
    v7 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v4 = Mutable;
      if (FigTTMLTreeGetNodeByID_cold_1(a1, Mutable, v3))
      {
        goto LABEL_2;
      }
    }

    else
    {
      FigTTMLTreeGetNodeByID_cold_2();
    }

    return 0;
  }

LABEL_2:

  return CFDictionaryGetValue(v4, key);
}

uint64_t figTTMLTreeBuildIDToNodeDictionary(const void *a1, __CFDictionary *a2)
{
  XMLID = FigTTMLNodeGetXMLID();
  if (XMLID)
  {
    CFDictionaryAddValue(a2, XMLID, a1);
  }

  return 0;
}

void *figTTMLTree_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void figTTMLTree_Finalize(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
    a1[2] = 0;
  }
}

uint64_t fctg_registerFigCaptionTimelineGenerator()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionTimelineGeneratorID = result;
  return result;
}

uint64_t FigCaptionTimelineGeneratorCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    if (a4)
    {
      MEMORY[0x19A8D3660](&FigCaptionTimelineGeneratorGetTypeID_sRegisterFigCaptionTimelineGeneratorOnce, fctg_registerFigCaptionTimelineGenerator);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v8 = Instance;
        result = 0;
        *(v8 + 24) = a2;
        *(v8 + 32) = a3;
        *a4 = v8;
      }

      else
      {
        FigCaptionTimelineGeneratorCreate_cold_1(&v10);
        return v10;
      }
    }

    else
    {
      FigCaptionTimelineGeneratorCreate_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    FigCaptionTimelineGeneratorCreate_cold_3(&v12);
    return v12;
  }

  return result;
}

CMTime *fctg_getAttachmentTime@<X0>(const void *a1@<X0>, const __CFString *a2@<X1>, CMTime *a3@<X8>)
{
  v4 = MEMORY[0x1E6960CC0];
  *&a3->value = *MEMORY[0x1E6960CC0];
  a3->epoch = *(v4 + 16);
  result = CMGetAttachment(a1, a2, 0);
  if (result)
  {
    v6 = result;
    v7 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v7 == result)
    {

      return CMTimeMakeFromDictionary(a3, v6);
    }
  }

  return result;
}

void fctg_freeBuddingCaption(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[17];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

uint64_t FigCaptionTimelineGeneratorFinish(uint64_t a1)
{
  if (a1)
  {
    FigCaptionTimelineGeneratorFinish_cold_1(a1);
    return 0;
  }

  else
  {
    FigCaptionTimelineGeneratorFinish_cold_2(&v2);
    return v2;
  }
}

__n128 fctg_Init(uint64_t a1)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  v2 = CFGetAllocator(a1);
  *(a1 + 16) = CFArrayCreateMutable(v2, 0, 0);
  v3 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *(a1 + 40) = *MEMORY[0x1E6960CC0];
  *(a1 + 56) = *(v3 + 16);
  return result;
}

void fctg_Finalize(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 16));
  if (Count)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), i);
      fctg_freeBuddingCaption(ValueAtIndex);
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 16) = 0;
  }
}

__n128 OUTLINED_FUNCTION_0_150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, __int128 a30, __n128 a31)
{
  *(v31 - 128) = a29;
  *(v31 - 112) = a30;
  result = a31;
  *(v31 - 96) = a31;
  return result;
}

__n128 OUTLINED_FUNCTION_1_135(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = v69[19];
  v69[24] = result;
  *(v70 - 176) = a69;
  return result;
}

CMTime *OUTLINED_FUNCTION_5_90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTimeRange *range, CMTime *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 rangea, __int128 range_16, __int128 range_32, uint64_t a22)
{
  v24 = *(v22 - 112);
  rangea = *(v22 - 128);
  range_16 = v24;
  range_32 = *(v22 - 96);

  return CMTimeRangeGetEnd(&a22, &rangea);
}

__n128 OUTLINED_FUNCTION_6_80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, __int128 a38)
{
  v39 = v38[8];
  v38[1] = v38[7];
  v38[2] = v39;
  return a38;
}

CMTime *OUTLINED_FUNCTION_9_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, CMTime *lhs, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t lhsa)
{

  return CMTimeAdd((v29 - 240), &lhsa, (v29 - 128));
}

__n128 OUTLINED_FUNCTION_11_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a25, uint64_t a26)
{
  result = a25;
  v26[24] = a25;
  *(v27 - 176) = a26;
  return result;
}

__n128 OUTLINED_FUNCTION_12_46()
{
  v1 = *(v0 + 208);
  *(v0 + 336) = *(v0 + 192);
  *(v0 + 352) = v1;
  result = *(v0 + 224);
  *(v0 + 368) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_13_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = v65[17];
  v65[24] = result;
  *(v66 - 176) = a65;
  return result;
}

__n128 OUTLINED_FUNCTION_15_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19, uint64_t a20)
{
  result = a19;
  *(v20 + 24) = a19;
  *(v20 + 40) = a20;
  return result;
}

CMTime *OUTLINED_FUNCTION_17_32@<X0>(uint64_t a1@<X8>, CMTime *a2, uint64_t a3, uint64_t a4, uint64_t a5, CMTime *lhs, uint64_t a7, uint64_t rhsa, uint64_t rhs_8, uint64_t rhs_16, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t lhsa)
{
  rhs_16 = a1;

  return CMTimeSubtract(&a12, &lhsa, &rhsa);
}

const void *OUTLINED_FUNCTION_18_32()
{
  v3 = *(v0 + 16);

  return CFArrayGetValueAtIndex(v3, v1);
}

uint64_t FigCaptionRendererLayoutContextCreate(void *a1)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigCaptionRendererLayoutContextLocalGetTypeID_sRegisterFigCaptionRendererLayoutContextOnce, RegisterFigCaptionRendererLayoutContextClass);
  Instance = _CFRuntimeCreateInstance();
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Instance[3] = Mutable;
  if (Mutable)
  {
    result = 0;
    *a1 = Instance;
  }

  else
  {
    FigCaptionRendererLayoutContextCreate_cold_1(Instance, &v6);
    return v6;
  }

  return result;
}

uint64_t FigCaptionRendererLayoutContextSetSubtitleSample(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    *(a1 + 16) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    return 0;
  }

  else
  {
    FigCaptionRendererLayoutContextSetSubtitleSample_cold_1(&v4);
    return v4;
  }
}

uint64_t FigCaptionRendererLayoutContextGetSubtitleSample(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 16);
    }

    else
    {
      FigCaptionRendererLayoutContextGetSubtitleSample_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigCaptionRendererLayoutContextGetSubtitleSample_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t FigCaptionRendererLayoutContextSetMapping(uint64_t a1, const void *a2, const void *a3)
{
  if (a1 && a2 && a3)
  {
    CFDictionarySetValue(*(a1 + 24), a2, a3);
    return 0;
  }

  else
  {
    FigCaptionRendererLayoutContextSetMapping_cold_1(&v4);
    return v4;
  }
}

uint64_t FigCaptionRendererLayoutContextGetMapping(uint64_t a1, const void *a2, void *a3)
{
  if (a1 && a2 && a3)
  {
    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    result = 0;
    *a3 = Value;
  }

  else
  {
    FigCaptionRendererLayoutContextGetMapping_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t RegisterFigCaptionRendererLayoutContextClass()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionRendererLayoutContextID = result;
  return result;
}

uint64_t FigCaptionRendererLayoutContextInit(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void FigCaptionRendererLayoutContext_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

__CFString *FigCaptionRendererLayoutContextCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererLayoutContext %p>", a1);
  return Mutable;
}

uint64_t RegisterFigCrossTalkerBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigCrossTalkerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigCrossTalkerGetClassID_sRegisterFigCrossTalkerBaseTypeOnce, RegisterFigCrossTalkerBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigCrossTalkerCreate(uint64_t a1, void *a2)
{
  if (a2)
  {
    MEMORY[0x19A8D3660](&FigCrossTalkerGetClassID_sRegisterFigCrossTalkerBaseTypeOnce, RegisterFigCrossTalkerBaseType);
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      MEMORY[0] = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (MEMORY[0])
      {
        v3 = 0;
        MEMORY[8] = dispatch_queue_create("com.apple.coremedia.crosstalker", 0);
        *a2 = 0;
      }

      else
      {
        fig_log_get_emitter();
        return FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    FigCrossTalkerCreate_cold_1(&v5);
    return v5;
  }

  return v3;
}

void fct_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    dispatch_release(v1);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *fct_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CMBaseObjectGetDerivedStorage();
  v4 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"<CrossTalker: %p %@>", a1, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

uint64_t fct_CopyProperty(uint64_t DerivedStorage, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v6 = DerivedStorage;
  if (DerivedStorage)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  context[0] = 0;
  context[1] = v6;
  context[2] = a2;
  cf = 0;
  if (!a2)
  {
    fct_CopyProperty_cold_2(&v10);
    return v10;
  }

  if (!a4)
  {
    fct_CopyProperty_cold_1(&v10);
    return v10;
  }

  dispatch_sync_f(*(DerivedStorage + 8), context, fct_CopyProperty_f);
  if (LODWORD(context[0]))
  {
    if (cf)
    {
      CFRelease(cf);
    }

    return 0;
  }

  else
  {
    result = 0;
    *a4 = cf;
  }

  return result;
}

uint64_t fct_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = 0;
  }

  context[0] = 0;
  context[1] = a1;
  context[2] = a2;
  context[3] = a3;
  if (!a2)
  {
    fct_SetProperty_cold_2(&v10);
    return v10;
  }

  if (!a3)
  {
LABEL_8:
    dispatch_sync_f(*(DerivedStorage + 8), context, fct_SetProperty_f);
    return LODWORD(context[0]);
  }

  if (CFEqual(a2, @"HDRVideoPlaybackActive"))
  {
    v7 = CFGetTypeID(a3);
    if (v7 == CFBooleanGetTypeID())
    {
      goto LABEL_8;
    }

    fct_SetProperty_cold_1(&v10);
    return v10;
  }

  return 4294954512;
}

CFTypeRef fct_CopyProperty_f(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFDictionaryGetValueIfPresent(*DerivedStorage, *(a1 + 16), (a1 + 24));
  if (result)
  {
    result = *(a1 + 24);
    if (result)
    {

      return CFRetain(result);
    }
  }

  else
  {
    *a1 = -12784;
  }

  return result;
}

void fct_SetProperty_f(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*DerivedStorage, *(a1 + 16));
  v4 = *DerivedStorage;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v6)
  {
    CFDictionarySetValue(v4, v5, v6);
    if (!Value)
    {
      return;
    }
  }

  else
  {
    CFDictionaryRemoveValue(v4, v5);
    if (!Value)
    {
      return;
    }
  }

  v7 = *(a1 + 24);

  CFEqual(Value, v7);
}

uint64_t FigSymptomsManagerGetBandwidthPredictionFromLastUpdate(void *a1, _DWORD *a2)
{
  if (a1)
  {
    *a1 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  return 4294949656;
}

uint64_t initsymptom_create(uint64_t a1)
{
  if (SymptomReporterLibrary_sOnce != -1)
  {
    initsymptom_create_cold_1();
  }

  v2 = dlsym(SymptomReporterLibrary_sLib, "symptom_create");
  softLinksymptom_create[0] = v2;

  return (v2)(a1);
}

void *__SymptomReporterLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SymptomReporter.framework/SymptomReporter", 2);
  SymptomReporterLibrary_sLib = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_152()
{

  return symptom_set_additional_qualifier();
}

uint64_t OUTLINED_FUNCTION_1_136@<X0>(const uuid_t uu@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;

  return uuid_is_null(uu);
}

uint64_t figCSSTokenizerRegisterFigCSSTokenizer()
{
  result = _CFRuntimeRegisterClass();
  sFigCSSTokenizerID = result;
  return result;
}

uint64_t FigCSSTokenizerCreateWithTextContainer(uint64_t a1, const void *a2, uint64_t *a3)
{
  if (a2)
  {
    if (a3)
    {
      MEMORY[0x19A8D3660](&FigCSSTokenizerGetTypeID_sRegisterFigCSSTokenizerOnce, figCSSTokenizerRegisterFigCSSTokenizer);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v6 = Instance;
        *(Instance + 16) = CFRetain(a2);
        *(v6 + 40) = -1;
        *(v6 + 56) = 0;
        *(v6 + 28) = 0;
        *(v6 + 64) = 0;
        Length = FigTextContainerGetLength(a2, (v6 + 48));
        if (Length)
        {
          CFRelease(v6);
        }

        else
        {
          *a3 = v6;
        }
      }

      else
      {
        FigCSSTokenizerCreateWithTextContainer_cold_1(&v9);
        return v9;
      }
    }

    else
    {
      FigCSSTokenizerCreateWithTextContainer_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    FigCSSTokenizerCreateWithTextContainer_cold_3(&v11);
    return v11;
  }

  return Length;
}

double figCSSTokenizer_Init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figCSSTokenizer_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }
}

uint64_t _figCSSTokenizer_consume_next_input_code_point(uint64_t a1, _DWORD *a2)
{
  v3.location = *(a1 + 40);
  if (!*(a1 + 56) || v3.location < 0)
  {
    *(a1 + 40) = ++v3.location;
  }

  v4 = 0;
  *(a1 + 56) = 0;
  if (v3.location < *(a1 + 48))
  {
    buffer = 0;
    v3.length = &buffer;
    if (FigTextContainerGetCharacterAtIndex(*(a1 + 16), v3))
    {
      return 0;
    }

    else
    {
      if (a2)
      {
        *a2 = buffer;
      }

      return 1;
    }
  }

  return v4;
}

uint64_t _figCSSTokenizer_consume_a_string_token(uint64_t a1, int a2, CFTypeRef *a3)
{
  cf = 0;
  v23 = 65533;
  v6 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v6, 0);
  if (Mutable)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      while (1)
      {
        v9 = *(a1 + 40);
        v10 = _figCSSTokenizer_consume_next_input_code_point(a1, &v23);
        if (!v10 && v9 < v8)
        {
          v17 = *(a1 + 48);
          if (!v17 || *(a1 + 40) >= v17)
          {
            goto LABEL_23;
          }

          goto LABEL_24;
        }

        if (v9 >= v8)
        {
          goto LABEL_23;
        }

        if (!v10)
        {
          goto LABEL_24;
        }

        if (v23 == a2)
        {
          goto LABEL_23;
        }

        if (v23 == 10)
        {
          *(a1 + 56) = 1;
          v18 = CFGetAllocator(a1);
          v14 = FigCSSSimpleTokenCreate(v18, 4, &cf);
          if (!v14)
          {
            goto LABEL_24;
          }

          goto LABEL_32;
        }

        if (v23 != 92)
        {
          break;
        }

        *chars = 0;
        _figCSSTokenizer_PeekAheadBuffer(a1, 1, &v22, 4uLL, chars);
        v11 = *(a1 + 48);
        if (!v11 || *(a1 + 40) >= v11 || *chars < 1)
        {
          goto LABEL_17;
        }

        if (v22 != 10)
        {
          if (v23 != 92 || *(a1 + 72) == 10)
          {
            goto LABEL_17;
          }

          v20 = 0;
          v19 = 0;
          _figCSSTokenizer_consume_an_escaped_code_point(a1, &v20);
          v19 = v20;
          v12 = &v19;
          goto LABEL_16;
        }

        _figCSSTokenizer_consume_next_input_code_point(a1, 0);
LABEL_17:
        v8 = *(a1 + 48);
        if (!v8)
        {
          goto LABEL_22;
        }
      }

      chars[0] = v23;
      v12 = chars;
LABEL_16:
      CFStringAppendCharacters(Mutable, v12, 1);
      goto LABEL_17;
    }

LABEL_22:
    _figCSSTokenizer_consume_next_input_code_point(a1, &v23);
LABEL_23:
    v13 = CFGetAllocator(a1);
    v14 = FigCSSStringValueTokenCreate(v13, 3, Mutable, &cf);
    if (!v14)
    {
LABEL_24:
      v15 = 0;
      *a3 = cf;
      cf = 0;
      goto LABEL_25;
    }

LABEL_32:
    v15 = v14;
  }

  else
  {
    _figCSSTokenizer_consume_a_string_token_cold_1(chars);
    v15 = *chars;
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_25:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v15;
}

BOOL _figCSSTokenizer_check_if_three_code_points_would_start_an_identifier(unsigned int a1, unsigned int a2, int a3)
{
  if (a1 != 45)
  {
    if (a1 < 0x41 || a1 > 0x5A)
    {
      v9 = a1 > 0x7A || a1 < 0x61;
      v10 = v9 && a1 < 0x80;
      if (v10 && a1 != 95)
      {
        return a1 == 92 && a2 != 10;
      }
    }

    return 1;
  }

  if (a2 >= 0x41 && a2 <= 0x5A)
  {
    return 1;
  }

  v4 = a2 > 0x7A || a2 < 0x61;
  v5 = v4 && a2 < 0x80;
  if (!v5 || a2 == 95)
  {
    return 1;
  }

  result = 0;
  if (a2 == 92 && a3 != 10)
  {
    return 1;
  }

  return result;
}

uint64_t _figCSSTokenizer_consume_a_name(uint64_t a1, __CFString **a2)
{
  v17 = 65533;
  v4 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v4, 0);
  if (!Mutable)
  {
    _figCSSTokenizer_consume_a_name_cold_1(&v18);
    return v18;
  }

  v6 = Mutable;
  if (!_figCSSTokenizer_consume_next_input_code_point(a1, &v17))
  {
    goto LABEL_28;
  }

  while (1)
  {
    chars = 0;
    _figCSSTokenizer_PeekAheadBuffer(a1, 3, (a1 + 72), 0xCuLL, (a1 + 64));
    v7 = v17;
    if (v17 >= 0x41 && v17 <= 0x5A)
    {
      goto LABEL_27;
    }

    v9 = v17 > 0x7A || v17 < 0x61;
    v10 = v9 && v17 < 0x80;
    if (!v10 || v17 == 95)
    {
      goto LABEL_27;
    }

    v12 = v17 > 0x39 || v17 < 0x30;
    if (!v12 || v17 == 45)
    {
      goto LABEL_27;
    }

    if (v17 != 92 || *(a1 + 72) == 10)
    {
      break;
    }

    v15 = 0;
    _figCSSTokenizer_consume_an_escaped_code_point(a1, &v15);
    v7 = v15;
LABEL_27:
    chars = v7;
    CFStringAppendCharacters(v6, &chars, 1);
    if (!_figCSSTokenizer_consume_next_input_code_point(a1, &v17))
    {
      goto LABEL_28;
    }
  }

  *(a1 + 56) = 1;
LABEL_28:
  result = 0;
  *a2 = v6;
  return result;
}

uint64_t _figCSSTokenizer_consume_a_numeric_token(const void *a1, CFTypeRef *a2)
{
  v3 = a1;
  v92 = *MEMORY[0x1E69E9840];
  v75 = 0;
  v76 = 0;
  *&v80[2] = 65533;
  v85 = xmmword_196E78A98;
  v86 = unk_196E78AA8;
  v87 = xmmword_196E78AB8;
  v81 = xmmword_196E78A58;
  v82 = unk_196E78A68;
  v83 = xmmword_196E78A78;
  v84 = unk_196E78A88;
  v4 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v4, 0);
  if (!Mutable)
  {
    _figCSSTokenizer_consume_a_numeric_token_cold_1();
    v58 = 0.0;
    v42 = 1;
    goto LABEL_106;
  }

  v77 = 0;
  _figCSSTokenizer_PeekAheadBuffer(v3, 3, (v3 + 72), 0xCuLL, (v3 + 64));
  if (*(v3 + 64) >= 1 && ((v6 = *(v3 + 72), v6 == 43) || v6 == 45))
  {
    v72 = 1;
    v81.length = 1;
    _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
    chars = *&v80[2];
    CFStringAppendCharacters(Mutable, &chars, 1);
    range = 1;
  }

  else
  {
    v72 = 0;
    range = 0;
  }

  v7 = 0;
  if (!_figCSSTokenizer_PeekAheadBuffer(v3, 1, &v88, 4uLL, &v77) && v77 >= 1)
  {
    v7 = 0;
    do
    {
      if (v88 < 0x30 || v88 > 0x39)
      {
        break;
      }

      ++v7;
      _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
      chars = *&v80[2];
      CFStringAppendCharacters(Mutable, &chars, 1);
      if (_figCSSTokenizer_PeekAheadBuffer(v3, 1, &v88, 4uLL, &v77))
      {
        break;
      }
    }

    while (v77 > 0);
    *(&v82 + 1) = v7;
  }

  v9 = 0;
  v10 = 0;
  if (!_figCSSTokenizer_PeekAheadBuffer(v3, 2, &v88, 8uLL, &v77) && v77 >= 2)
  {
    if (v88 == 46)
    {
      v9 = 0;
      v10 = 0;
      if (v89 >= 0x30 && v89 <= 0x39)
      {
        v10 = 1;
        *(&v83 + 1) = 1;
        _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
        chars = *&v80[2];
        _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
        v79 = *&v80[2];
        CFStringAppendCharacters(Mutable, &chars, 2);
        if (!_figCSSTokenizer_PeekAheadBuffer(v3, 1, &v88, 4uLL, &v77) && v77 >= 1)
        {
          v10 = 1;
          do
          {
            if (v88 < 0x30 || v88 > 0x39)
            {
              break;
            }

            ++v10;
            _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
            chars = *&v80[2];
            CFStringAppendCharacters(Mutable, &chars, 1);
            if (_figCSSTokenizer_PeekAheadBuffer(v3, 1, &v88, 4uLL, &v77))
            {
              break;
            }
          }

          while (v77 > 0);
        }

        *(&v84 + 1) = v10;
        v9 = 1;
      }
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }
  }

  v12 = 0;
  v74 = a2;
  if (_figCSSTokenizer_PeekAheadBuffer(v3, 3, &v88, 0xCuLL, &v77) || v77 < 1)
  {
    goto LABEL_64;
  }

  if (v88 != 69 && v88 != 101)
  {
    goto LABEL_65;
  }

  if (v77 >= 3)
  {
    v14 = v89;
    if ((v89 == 43 || v89 == 45) && v90 >= 0x30 && v90 <= 0x39)
    {
      v15 = v80;
      v16 = 1;
      *(&v85 + 1) = 1;
      v86.length = 1;
      *(&v87 + 1) = 1;
      _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
      chars = *&v80[2];
      _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
      v79 = *&v80[2];
      v17 = 3;
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  if (v77 == 2)
  {
    v14 = v89;
LABEL_50:
    v12 = 0;
    if (v14 >= 0x30)
    {
      v16 = 0;
      if (v14 > 0x39)
      {
        goto LABEL_66;
      }

      v15 = &v79;
      *(&v85 + 1) = 1;
      *(&v87 + 1) = 1;
      _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
      v16 = 0;
      chars = *&v80[2];
      v17 = 2;
LABEL_53:
      _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
      *v15 = *&v80[2];
      CFStringAppendCharacters(Mutable, &chars, v17);
      v12 = 1;
      v9 = 1;
      if (!_figCSSTokenizer_PeekAheadBuffer(v3, 1, &v88, 4uLL, &v77) && v77 >= 1)
      {
        v12 = 1;
        do
        {
          if (v88 < 0x30 || v88 > 0x39)
          {
            break;
          }

          ++v12;
          _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
          chars = *&v80[2];
          CFStringAppendCharacters(Mutable, &chars, 1);
          if (_figCSSTokenizer_PeekAheadBuffer(v3, 1, &v88, 4uLL, &v77))
          {
            break;
          }
        }

        while (v77 > 0);
        *(&v87 + 1) = v12;
        v9 = 1;
      }

      goto LABEL_66;
    }

LABEL_64:
    v16 = 0;
    goto LABEL_66;
  }

LABEL_65:
  v12 = 0;
  v16 = 0;
LABEL_66:
  v70 = v16;
  v19 = Mutable;
  v20 = 0;
  v21 = 0;
  do
  {
    v22 = *(&v81.length + v20);
    if (v22)
    {
      *(&v81.location + v20) = v21;
      v21 += v22;
    }

    v20 += 16;
  }

  while (v20 != 112);
  v69 = v12;
  v71 = v9;
  cf = v3;
  if (*(v3 + 25))
  {
    v23 = v7 <= 0;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v24 = *MEMORY[0x1E695E480];
    v25 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"repr: %@", Mutable);
    if (v25)
    {
      CFRelease(v25);
    }

    v26 = 0;
    p_length = &v81.length;
    do
    {
      v28 = *(p_length - 1);
      if ((v28 & 0x8000000000000000) == 0)
      {
        v29 = *p_length;
        v30 = CFStringCreateWithSubstring(v24, v19, *(p_length - 1));
        v31 = v30;
        if (v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = &stru_1F0B1AFB8;
        }

        v33 = CFStringCreateWithFormat(v24, 0, @"[%d] {%ld, %ld} : %@", v26, v28, v29, v32);
        if (v33)
        {
          CFRelease(v33);
        }

        if (v31)
        {
          CFRelease(v31);
        }
      }

      ++v26;
      p_length += 2;
    }

    while (v26 != 7);
  }

  v34 = 1.0;
  Mutable = v19;
  a2 = v74;
  if (v72)
  {
    v93.location = v81.location;
    v93.length = range;
    CFStringGetCharacters(v19, v93, buffer);
    if (buffer[0] == 45)
    {
      v34 = -1.0;
    }

    else
    {
      v34 = 1.0;
    }
  }

  v35 = 0.0;
  v36 = 0.0;
  v3 = cf;
  if (v7 >= 1)
  {
    v37 = v82;
    v38 = CFGetAllocator(cf);
    v94.location = v37;
    v94.length = v7;
    v39 = CFStringCreateWithSubstring(v38, v19, v94);
    if (v39)
    {
      v40 = v39;
      IntValue = CFStringGetIntValue(v39);
      CFRelease(v40);
      v36 = IntValue;
    }
  }

  v42 = v71;
  if (v10 >= 1 && (v43 = v84, v44 = CFGetAllocator(cf), v95.location = v43, v95.length = v10, (v45 = CFStringCreateWithSubstring(v44, v19, v95)) != 0))
  {
    v46 = v45;
    v47 = CFStringGetIntValue(v45);
    Length = CFStringGetLength(v46);
    CFRelease(v46);
    v35 = v47;
  }

  else
  {
    Length = 0;
  }

  v49.length = v70;
  if (v70 < 1)
  {
    v50 = 1.0;
  }

  else
  {
    v49.location = v86.location;
    CFStringGetCharacters(v19, v49, buffer);
    if (buffer[0] == 45)
    {
      v50 = -1.0;
    }

    else
    {
      v50 = 1.0;
    }
  }

  v51 = 0.0;
  if (v69 >= 1)
  {
    v52 = v87;
    v53 = CFGetAllocator(cf);
    v96.location = v52;
    v96.length = v69;
    v54 = CFStringCreateWithSubstring(v53, v19, v96);
    if (v54)
    {
      v55 = v54;
      v56 = CFStringGetIntValue(v54);
      CFRelease(v55);
      v51 = v56;
    }
  }

  v57 = v34 * (v36 + v35 * __exp10(-Length));
  v58 = v57 * __exp10(v50 * v51);
LABEL_106:
  _figCSSTokenizer_PeekAheadBuffer(v3, 3, (v3 + 72), 0xCuLL, (v3 + 64));
  v59 = *(v3 + 64);
  if (v59 < 3)
  {
    if (v59 < 1)
    {
      goto LABEL_115;
    }

    v60 = *(v3 + 72);
  }

  else
  {
    v60 = *(v3 + 72);
    if (_figCSSTokenizer_check_if_three_code_points_would_start_an_identifier(v60, *(v3 + 76), *(v3 + 80)))
    {
      _figCSSTokenizer_consume_a_name(v3, &v75);
      v61 = CFGetAllocator(v3);
      v62 = v75;
      v63 = FigCSSDimensionTokenCreate(v61, Mutable, v42, v75, &v76, v58);
      if (v63)
      {
        goto LABEL_109;
      }

LABEL_117:
      v64 = 0;
      *a2 = v76;
      v76 = 0;
      goto LABEL_118;
    }
  }

  if (v60 == 37)
  {
    _figCSSTokenizer_consume_next_input_code_point(v3, 0);
    v65 = CFGetAllocator(v3);
    v63 = FigCSSPercentageTokenCreate(v65, Mutable, v42, &v76, v58);
    goto LABEL_116;
  }

LABEL_115:
  v66 = CFGetAllocator(v3);
  v63 = FigCSSNumberTokenCreate(v66, Mutable, v42, &v76, v58);
LABEL_116:
  v62 = 0;
  if (!v63)
  {
    goto LABEL_117;
  }

LABEL_109:
  v64 = v63;
  if (v76)
  {
    CFRelease(v76);
  }

LABEL_118:
  if (v62)
  {
    CFRelease(v62);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v64;
}