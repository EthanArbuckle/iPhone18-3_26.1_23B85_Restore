uint64_t sp_strtohex(_BYTE *a1, unint64_t a2, CFDataRef *a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  if (a2 < 3)
  {
    v22 = @"%s:No value in hexadecimal-integer";
    goto LABEL_21;
  }

  if (*a1 != 48 || __tolower(a1[1]) != 120)
  {
    v22 = @"%s:Illegal start to hexadecimal-integer";
LABEL_21:
    v19 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955032, a5, v22, a4);
    v11 = 0;
    goto LABEL_18;
  }

  v10 = (a2 - 1) >> 1;
  v11 = malloc_type_malloc(v10, 0x66E557A1uLL);
  if (v11)
  {
    v12 = 0;
    v13 = (a2 & 1) == 0;
    v14 = a1 + 2;
    do
    {
      if (v13)
      {
        v15 = sp_chartohex(*v14, a4, a5, &v23);
        if (v15)
        {
          goto LABEL_17;
        }

        ++v14;
      }

      v15 = sp_chartohex(*v14, a4, a5, &v23 + 1);
      if (v15)
      {
LABEL_17:
        v19 = v15;
        goto LABEL_18;
      }

      ++v14;
      v11[v12++] = HIBYTE(v23) | (16 * v23);
      v13 = 1;
    }

    while (v10 != v12);
    v16 = *MEMORY[0x1E695E480];
    GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc();
    v18 = CFDataCreateWithBytesNoCopy(v16, v11, v10, GlobalCFAllocatorFigMalloc);
    *a3 = v18;
    if (v18)
    {
      return 0;
    }

    v21 = 2530;
  }

  else
  {
    v21 = 2512;
  }

  if (!PlaylistTokenizeString_cold_2(v21, &v24))
  {
    v19 = v24;
LABEL_18:
    free(v11);
    return v19;
  }

  return 0;
}

void TaggedRangeUniquenessApplier(const void *a1, const void *a2, uint64_t a3)
{
  v3 = (a3 + 24);
  if (!*(a3 + 24))
  {
    MetadataDict = FigDateRangeSpecifierGetMetadataDict(*a3);
    Value = CFDictionaryGetValue(MetadataDict, a1);
    if (Value)
    {
      if (!CFEqual(Value, a2))
      {
        TaggedRangeUniquenessApplier_cold_1(a3, v3);
      }
    }

    else
    {
      FigDateRangeSpecifierSetValueForMetadataDict(*a3, a1, a2);
      FigDateRangeSpecifierSetValueForTagsFirstFoundDateDict(*a3, a1, *(a3 + 16));
      *(a3 + 28) = 1;
    }
  }
}

uint64_t sp_chartohex(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ((a1 & 0x80000000) != 0 || (v4 = *(MEMORY[0x1E69E9830] + 4 * a1 + 60), (v4 & 0x10000) == 0))
  {
    v7 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955032, a3, @"%s:Illegal hexadecimal digit %c", a2, a1);
  }

  else
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = __tolower(a1) - 87;
    }

    else
    {
      v6 = a1 - 48;
    }

    v7 = 0;
    *a4 = v6;
  }

  return v7;
}

const void *TaggedRangeTagApplier(const void *result, const void *a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return TaggedRangeTagApplier_cold_1(a2, a3, result, (a3 + 16));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_55(uint64_t a1, uint64_t a2, uint64_t a3, const __CFString *a4)
{

  return _StreamPlaylistLogError(4294954984, 4294954984, v4, a4);
}

uint64_t OUTLINED_FUNCTION_14_46()
{

  return FigCFStringGetCStringPtrAndBufferToFree();
}

CFStringRef OUTLINED_FUNCTION_15_42(const __CFAllocator *a1, const UInt8 *a2, CFIndex a3)
{

  return CFStringCreateWithBytes(a1, a2, a3, 0x8000100u, 1u);
}

uint64_t OUTLINED_FUNCTION_18_36(uint64_t a1)
{

  return FigMediaSegmentSpecifierGetMediaSequence(a1);
}

uint64_t OUTLINED_FUNCTION_25_27(char *a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __CFArray *a12)
{
  a12 = 0;

  return PlaylistTokenizeString(a1, a2, a3, 44, &a12);
}

void OUTLINED_FUNCTION_26_28(const void *a1@<X1>, int a2@<W8>)
{
  if (a2)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  CFDictionarySetValue(v4, a1, v6);
}

uint64_t OUTLINED_FUNCTION_33_23(const char *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sp_MatchTagAndColon(a1, v3, 0x1EuLL, va, v2);
}

CFIndex OUTLINED_FUNCTION_34_23()
{

  return CFStringGetLength(v0);
}

const char *OUTLINED_FUNCTION_35_18(const char *a1)
{

  return sp_SkipSpacesTabsAndCommas(a1, v1, 0);
}

uint64_t FigTTMLSerializerCreateIndenter(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigTTMLSerializerCreateIndenter_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    FigTTMLSerializerCreateIndenter_cold_2(&v11);
    return v11;
  }

  FigTTMLSerializerGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    return v5;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigTTMLSerializerCreateIndenter_cold_1(&v11);
    return v11;
  }

  v7 = Mutable;
  FigBytePumpGetFigBaseObject(0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  *DerivedStorage = CFRetain(a2);
  DerivedStorage[1] = v7;
  DerivedStorage[2] = 0;
  *a3 = 0;
  return v9;
}

void figTTMLSerializerIndenter_Finalize(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

CFStringRef figTTMLSerializerIndenter_CopyDebugDesc(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigTTMLSerializerIndenter: %@", *DerivedStorage);
}

uint64_t figTTMLSerializerIndenter_SetAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigBytePumpGetFigBaseObject(a1);
  v5 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLSerializerSetAttribute(v5, a2, a3);
}

uint64_t figTTMLSerializerIndenter_Flush(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLSerializerFlush(v1);
}

__CFString *createIndentation(uint64_t a1)
{
  v2 = 2 * a1;
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 2 * a1);
  if (Mutable)
  {
    if (a1)
    {
      do
      {
        CFStringAppend(Mutable, @" ");
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    createIndentation_cold_1();
  }

  return Mutable;
}

uint64_t copyElementLocalName(CFStringRef theString, void *a2)
{
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], theString, @":");
  if (ArrayBySeparatingStrings)
  {
    v4 = ArrayBySeparatingStrings;
    if (CFArrayGetCount(ArrayBySeparatingStrings) < 1)
    {
      copyElementLocalName_cold_2(&v11);
      v9 = v11;
      goto LABEL_15;
    }

    if (CFArrayGetCount(v4) >= 3)
    {
      copyElementLocalName_cold_1(&v10);
      v9 = v10;
      goto LABEL_15;
    }

    if (CFArrayGetCount(v4) == 1)
    {
      v5 = 0;
    }

    else
    {
      if (CFArrayGetCount(v4) != 2)
      {
        v8 = 0;
LABEL_14:
        v9 = 0;
        *a2 = v8;
LABEL_15:
        CFRelease(v4);
        return v9;
      }

      v5 = 1;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
    v8 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }

    goto LABEL_14;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigRenderPipelineCreateForBufferQueue(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  cf = 0;
  if (a4 && a2)
  {
    FigRenderPipelineGetClassID();
    v7 = CMDerivedObjectCreate();
    if (!v7)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      CFRetain(a2);
      *(DerivedStorage + 8) = a2;
      if (a3)
      {
        Value = CFDictionaryGetValue(a3, @"PipelineLatency");
        if (Value)
        {
          valuePtr = 0.0;
          CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
          CMTimeMakeWithSeconds(&v12, valuePtr, 1000);
          epoch = v12.epoch;
          *(DerivedStorage + 16) = *&v12.value;
          *(DerivedStorage + 32) = epoch;
        }
      }

      v7 = 0;
      *a4 = cf;
    }

    return v7;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t figRenderPipelineForBufferQueueInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!*DerivedStorage)
    {
      *DerivedStorage = 1;
      v1 = *(DerivedStorage + 8);
      if (v1)
      {
        CFRelease(v1);
      }
    }
  }

  return 0;
}

__CFString *figRenderPipelineForBufferQueueCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigRenderPipelineForBufferQueue %p: ", a1);
  CFStringAppendFormat(Mutable, 0, @"bufferQueue %@", *(DerivedStorage + 8));
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t figRenderPipelineForBufferQueueCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v7 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (CFEqual(@"SourceSampleBufferQueue", a2))
      {
        v9 = *(v7 + 1);
        if (!v9)
        {
          v11 = 0;
LABEL_16:
          result = 0;
          *a4 = v11;
          return result;
        }

        v10 = CFRetain(v9);
      }

      else
      {
        if (!CFEqual(a2, @"PipelineLatency"))
        {
          return 4294954446;
        }

        if ((v7[28] & 1) == 0)
        {
          result = 0;
          *a4 = 0;
          return result;
        }

        v12 = *MEMORY[0x1E695E480];
        v13 = *(v7 + 16);
        v10 = CMTimeCopyAsDictionary(&v13, v12);
      }

      v11 = v10;
      goto LABEL_16;
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t figRenderPipelineForBufferQueueSetProperty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && !*DerivedStorage)
  {
    return 4294954446;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t RegisterFigOVCGLObjectCacheWrapperType()
{
  result = _CFRuntimeRegisterClass();
  sFigOVCGLObjectCacheWrapperTypeID = result;
  return result;
}

uint64_t FigOVCGLObjectCacheWrapperCreate(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    FigOVCGLObjectCacheWrapperCreate_cold_4(&v13);
    return v13;
  }

  if (!a3)
  {
    FigOVCGLObjectCacheWrapperCreate_cold_3(&v13);
    return v13;
  }

  MEMORY[0x19A8D3660](&sRegisterFigOVCGLObjectCacheWrapperTypeOnce, RegisterFigOVCGLObjectCacheWrapperType);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigOVCGLObjectCacheWrapperCreate_cold_2(&v13);
    return v13;
  }

  v7 = Instance;
  *(Instance + 32) = a2;
  v8 = FigSimpleMutexCreate();
  v7[3] = v8;
  if (!v8)
  {
    v12 = 209;
LABEL_15:
    FigOVCGLObjectCacheWrapperCreate_cold_1(v12, v7, &v13);
    return v13;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, 0, 0);
  v7[5] = Mutable;
  if (!Mutable)
  {
    v12 = 212;
    goto LABEL_15;
  }

  v10 = CFArrayCreateMutable(a1, 0, 0);
  v7[6] = v10;
  if (!v10)
  {
    v12 = 216;
    goto LABEL_15;
  }

  result = 0;
  *a3 = v7;
  return result;
}

uint64_t FigOVCGLObjectCacheWrapperInvalidate(uint64_t a1)
{
  if (!a1)
  {
    return FigOVCGLObjectCacheWrapperInvalidate_cold_1();
  }

  FigSimpleMutexLock();
  if (!*(a1 + 16))
  {
    *(a1 + 16) = 1;
    *(a1 + 32) = 0;
    v2 = *(a1 + 48);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 48) = 0;
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 40) = 0;
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t FigOVCGLObjectCacheWrapperFlushCacheEntriesForDeletedBackings(uint64_t a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 16))
    {
      FigOVCGLObjectCacheWrapperFlushCacheEntriesForDeletedBackings_cold_1(&v5);
      v3 = v5;
    }

    else
    {
      v2 = *(a1 + 48);
      v7.length = CFArrayGetCount(v2);
      v7.location = 0;
      CFArrayApplyFunction(v2, v7, glObjectCacheWrapper_flushSurfaceFromGLObjectCache, *(a1 + 32));
      CFArrayRemoveAllValues(*(a1 + 48));
      v3 = 0;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigOVCGLObjectCacheWrapperFlushCacheEntriesForDeletedBackings_cold_2(&v6);
    return v6;
  }

  return v3;
}

uint64_t FigOVCGLObjectCacheWrapperGetObjectForPixelBufferAndPlane(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3, int a4, _DWORD *a5, BOOL *a6)
{
  if (!a1)
  {
    FigOVCGLObjectCacheWrapperGetObjectForPixelBufferAndPlane_cold_4(&v19);
    return v19;
  }

  if (!pixelBuffer)
  {
    FigOVCGLObjectCacheWrapperGetObjectForPixelBufferAndPlane_cold_3(&v19);
    return v19;
  }

  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  if (!IOSurface)
  {
    FigOVCGLObjectCacheWrapperGetObjectForPixelBufferAndPlane_cold_2(&v19);
    return v19;
  }

  ID = IOSurfaceGetID(IOSurface);
  BufferBacking = CVPixelBufferGetBufferBacking();
  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigOVCGLObjectCacheWrapperGetObjectForPixelBufferAndPlane_cold_1(&v19);
    v17 = v19;
LABEL_17:
    FigSimpleMutexUnlock();
    return v17;
  }

  ObjectForSurfaceAndPlane = OVCGLObjectCacheGetObjectForSurfaceAndPlane(*(a1 + 32), ID, a3, a4, a5, a6);
  if (ObjectForSurfaceAndPlane)
  {
    v17 = ObjectForSurfaceAndPlane;
    goto LABEL_17;
  }

  if (CFDictionaryGetValueIfPresent(*(a1 + 40), BufferBacking, 0))
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    CFDictionarySetValue(*(a1 + 40), BufferBacking, ID);
    FigSimpleMutexUnlock();
    v15 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v15, glObjectCacheWrapper_deregisterPixelBufferBackingThatWillBeDeleted, *MEMORY[0x1E6965C58], BufferBacking, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return 0;
}

void glObjectCacheWrapper_deregisterPixelBufferBackingThatWillBeDeleted(uint64_t a1, const void *a2, const __CFString *a3, const void *a4)
{
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v7)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(LocalCenter, a2, a3, a4);
    if (!a2)
    {
      return;
    }

    goto LABEL_8;
  }

  v8 = v7;
  FigSimpleMutexLock();
  if (!*(v8 + 16))
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(*(v8 + 40), a4, &value))
    {
      v9 = *(v8 + 48);
      if (v9)
      {
        CFArrayAppendValue(v9, value);
      }
    }

    CFDictionaryRemoveValue(*(v8 + 40), a4);
  }

  FigSimpleMutexUnlock();
  v10 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v10, a2, a3, a4);
  CFRelease(v8);
  if (a2)
  {
LABEL_8:
    CFRelease(a2);
  }
}

uint64_t glObjectCacheWrapper_Finalize(uint64_t a1)
{
  FigOVCGLObjectCacheWrapperInvalidate(a1);
  result = *(a1 + 24);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(a1 + 24) = 0;
  }

  return result;
}

CFStringRef glObjectCacheWrapper_CopyFormattingDesc(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = " (invalidated)";
  }

  else
  {
    v1 = "";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigOVCGLObjectCacheWrapper %p%s]", a1, v1);
}

__CFString *glObjectCacheWrapper_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  v5 = *(a1 + 16);
  v6 = CFGetAllocator(a1);
  Count = *(a1 + 40);
  if (Count)
  {
    Count = CFDictionaryGetCount(Count);
  }

  v8 = " (invalidated)";
  if (!v5)
  {
    v8 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigOVCGLObjectCacheWrapper %p retainCount: %d%s allocator: %p, tracking %d buffers>", a1, v4, v8, v6, Count);
  return Mutable;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetDisplaySize(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 24) = a2;
    *(a1 + 32) = a3;
  }

  else
  {
    v8 = v3;
    v9 = v4;
    FigPlayerResourceArbiterPlayerSpecifierSetDisplaySize_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetIsMuted(uint64_t a1, char a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 81) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterPlayerSpecifierSetIsMuted_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetIsBuffering(uint64_t a1, char a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 82) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterPlayerSpecifierSetIsBuffering_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetIsFullyActive(uint64_t a1, char a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 104) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterPlayerSpecifierSetIsFullyActive_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetResolutionCeiling(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 40) = a2;
    *(a1 + 48) = a3;
  }

  else
  {
    v8 = v3;
    v9 = v4;
    FigPlayerResourceArbiterPlayerSpecifierSetResolutionCeiling_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetPlayerRole(uint64_t a1, CFTypeRef cf)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 88);
    *(a1 + 88) = cf;
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
    FigPlayerResourceArbiterPlayerSpecifierSetPlayerRole_cold_1(&v4);
    return v4;
  }
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetDesiredRate(uint64_t a1, float a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 96) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterPlayerSpecifierSetDesiredRate_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetIsFullyOffline(uint64_t a1, char a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 105) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterPlayerSpecifierSetIsFullyOffline_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetResolutionFloor(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 56) = a2;
    *(a1 + 64) = a3;
  }

  else
  {
    v8 = v3;
    v9 = v4;
    FigPlayerResourceArbiterPlayerSpecifierSetResolutionFloor_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetFrameRateFloor(uint64_t a1, float a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 76) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterPlayerSpecifierSetFrameRateFloor_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetFrameRateCeiling(uint64_t a1, float a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 72) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterPlayerSpecifierSetFrameRateCeiling_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetIsMVStereo(uint64_t a1, char a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 80) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterPlayerSpecifierSetIsMVStereo_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetNetworkPriority(uint64_t a1, int a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 100) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterPlayerSpecifierSetNetworkPriority_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierMarkAsImmutable(uint64_t a1)
{
  *(a1 + 16) = 0;
  v1 = *MEMORY[0x1E695F060];
  v2 = *(MEMORY[0x1E695F060] + 8);
  v3 = *(a1 + 56) == *MEMORY[0x1E695F060] && *(a1 + 64) == v2;
  if (!v3 && *(a1 + 76) == 0.0)
  {
    *(a1 + 76) = 1103089369;
  }

  v4 = *(a1 + 40) == v1 && *(a1 + 48) == v2;
  if (!v4 && *(a1 + 72) == 0.0)
  {
    *(a1 + 72) = 1103089369;
  }

  return 0;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierCreate(uint64_t *a1)
{
  if (a1)
  {
    FigGetAllocatorForMedia();
    MEMORY[0x19A8D3660](&FigPlayerResourceArbiterPlayerSpecifierGetTypeID_sFigPlayerResourceArbiterRegisterOnce, FigPlayerResourceArbiter_initOnce);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v3 = Instance;
      result = 0;
      *(v3 + 16) = 1;
      *(v3 + 100) = 0;
      *a1 = v3;
    }

    else
    {
      FigPlayerResourceArbiterPlayerSpecifierCreate_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigPlayerResourceArbiterPlayerSpecifierCreate_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterNetworkSpecifierSetLowestBitrate(uint64_t a1, int a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 20) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterNetworkSpecifierSetLowestBitrate_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterNetworkSpecifierSetCurrentBitrate(uint64_t a1, int a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 24) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterNetworkSpecifierSetCurrentBitrate_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterNetworkSpecifierSetHighestBitrate(uint64_t a1, int a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 28) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterNetworkSpecifierSetHighestBitrate_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterNetworkSpecifierSetPriorBitrate(uint64_t a1, int a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 32) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterNetworkSpecifierSetPriorBitrate_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterNetworkSpecifierCreate(uint64_t *a1)
{
  if (a1)
  {
    FigGetAllocatorForMedia();
    MEMORY[0x19A8D3660](&FigPlayerResourceArbiterNetworkSpecifierGetTypeID_sFigPlayerResourceArbiterNetworkSpecifierRegisterOnce, FigPlayerResourceNetworkSpecifier_initOnce);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v3 = Instance;
      result = 0;
      *(v3 + 16) = 1;
      *a1 = v3;
    }

    else
    {
      FigPlayerResourceArbiterNetworkSpecifierCreate_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigPlayerResourceArbiterNetworkSpecifierCreate_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiter_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigPlayerResourceArbiterPlayerSpecifierID = result;
  return result;
}

double fpraps_init(_OWORD *a1)
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

void fpraps_finalize(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t FigPlayerResourceNetworkSpecifier_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigPlayerResourceArbiterNetworkSpecifierID = result;
  return result;
}

void *fprans_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

uint64_t FigTTMLDocumentWriterCreateForSerializer(uint64_t a1, const void *a2, void *a3)
{
  v31 = 0;
  if (!a2)
  {
    FigTTMLDocumentWriterCreateForSerializer_cold_2(&v32);
    return v32;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateForSerializer_cold_1(&v32);
    return v32;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject(v31);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *&v18 = 0;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    *(&v18 + 1) = @"utc";
    *&v19 = @"nonDrop";
    *(&v19 + 1) = 30;
    v30 = 0;
    CMTimeMake((&v19 + 12), 1, 1);
    *(&v21 + 1) = @"discontinuous";
    *&v22 = 0x100000001;
    *(&v22 + 1) = *MEMORY[0x1E6962800];
    v7 = *(MEMORY[0x1E6962828] + 16);
    v23 = *MEMORY[0x1E6962828];
    v24 = v7;
    v8 = *(MEMORY[0x1E6962828] + 48);
    v25 = *(MEMORY[0x1E6962828] + 32);
    v26 = v8;
    LODWORD(v27) = 1;
    CMTimeMake((&v27 + 4), 1, 1);
    v5 = 0;
    *(&v29 + 1) = 0;
    v30 = 0;
    *&v29 = @"smpte";
    v10 = v21;
    v9 = v22;
    v11 = v19;
    *(DerivedStorage + 40) = v20;
    *(DerivedStorage + 56) = v10;
    *(DerivedStorage + 72) = v9;
    v12 = v25;
    v13 = v26;
    v14 = v24;
    *(DerivedStorage + 88) = v23;
    *(DerivedStorage + 136) = v13;
    *(DerivedStorage + 120) = v12;
    *(DerivedStorage + 104) = v14;
    *(DerivedStorage + 8) = v18;
    *(DerivedStorage + 24) = v11;
    v15 = v29;
    v16 = v27;
    *(DerivedStorage + 168) = v28;
    *(DerivedStorage + 152) = v16;
    *(DerivedStorage + 184) = v15;
    *(DerivedStorage + 200) = 0;
    *a3 = v31;
  }

  return v5;
}

void figTTMLDocumentWriterForSerializer_Finalize(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

CFStringRef figTTMLDocumentWriterForSerializer_CopyDebugDesc(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigTTMLDocumentWriterForSerializer: %@", *DerivedStorage);
}

uint64_t figTTMLDocumentWriterForSerializer_EndElement(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLSerializerEndElement(v1);
}

uint64_t figTTMLDocumentWriterForSerializer_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    v5 = v4(a2);
  }

  else
  {
    v5 = &stru_1F0B1AFB8;
  }

  v6 = *DerivedStorage;

  return FigTTMLSerializerAddText(v6, v5);
}

uint64_t figTTMLDocumentWriterForSerializer_Flush(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLSerializerFlush(v1);
}

uint64_t startElementWithNamespace(uint64_t a1, const void *a2, uint64_t a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&getNamespaceToPrefixDictionary_sNamespaceURIToPrefixOnce, initializeNamespaceToPrefixDictionary);
  Value = CFDictionaryGetValue(sNamespaceToPrefixDictionary, a2);
  v8 = CFStringCreateWithFormat(v6, 0, @"%@:%@", Value, a3);
  started = FigTTMLSerializerStartElement(*DerivedStorage, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  return started;
}

CFDictionaryRef initializeNamespaceToPrefixDictionary()
{
  keys[11] = *MEMORY[0x1E69E9840];
  keys[0] = @"http://www.w3.org/ns/ttml#parameter";
  keys[1] = @"http://www.w3.org/ns/ttml#styling";
  keys[2] = @"http://www.w3.org/ns/ttml#metadata";
  keys[3] = @"http://www.w3.org/ns/ttml/profile/";
  keys[4] = @"http://www.w3.org/ns/ttml/feature/";
  keys[5] = @"http://www.w3.org/ns/ttml/extension/";
  keys[6] = @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby";
  keys[7] = @"http://namespace.itunes.apple.com/itt/ttml-extension#vertical";
  keys[8] = @"http://www.w3.org/ns/ttml/profile/imsc1#parameter";
  keys[9] = @"http://www.w3.org/ns/ttml/profile/imsc1#styling";
  keys[10] = @"urn:ebu:tt:style";
  v1[2] = xmmword_1E7491510;
  v1[3] = *&off_1E7491520;
  v1[4] = xmmword_1E7491530;
  v2 = @"ebutts";
  v1[0] = xmmword_1E74914F0;
  v1[1] = *&off_1E7491500;
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, v1, 11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  sNamespaceToPrefixDictionary = result;
  return result;
}

uint64_t writeStringAttributeWithNamespace(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *MEMORY[0x1E695E480];
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a2, @" ");
  v8 = ArrayBySeparatingStrings;
  if (ArrayBySeparatingStrings && CFArrayGetCount(ArrayBySeparatingStrings) == 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
    v10 = CFArrayGetValueAtIndex(v8, 1);
    MEMORY[0x19A8D3660](&getNamespaceToPrefixDictionary_sNamespaceURIToPrefixOnce, initializeNamespaceToPrefixDictionary);
    Value = CFDictionaryGetValue(sNamespaceToPrefixDictionary, ValueAtIndex);
    v12 = CFStringCreateWithFormat(v6, 0, @"%@:%@", Value, v10);
    if (v12)
    {
      v13 = v12;
      v14 = FigTTMLSerializerSetAttribute(*DerivedStorage, v12, a3);
LABEL_7:
      CFRelease(v13);
LABEL_8:
      if (!v8)
      {
        return v14;
      }

      goto LABEL_11;
    }

    writeStringAttributeWithNamespace_cold_1(&v17);
    v14 = v17;
    goto LABEL_11;
  }

  v15 = CFArrayGetValueAtIndex(v8, 0);
  if (v15)
  {
    v13 = CFRetain(v15);
    v14 = FigTTMLSerializerSetAttribute(*DerivedStorage, v13, a3);
    if (!v13)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = FigTTMLSerializerSetAttribute(*DerivedStorage, 0, a3);
  if (v8)
  {
LABEL_11:
    CFRelease(v8);
  }

  return v14;
}

uint64_t OUTLINED_FUNCTION_3_116()
{

  return CFEqual(v0, v1);
}

CMTime *OUTLINED_FUNCTION_6_85(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CMTime *a18, uint64_t a19, uint64_t a20)
{
  a18 = 0;
  a19 = 0;
  a20 = 0;

  return CMTimeMakeFromDictionary(&a18, v20);
}

void famhdcp_releaseAndClearHDCPExternalProtectionMonitor(uint64_t a1, int a2)
{
  v2 = CMBaseObjectGetDerivedStorage() + 8 * (a2 - 1);
  v3 = *(v2 + 48);
  if (v3)
  {
    FigCPEExternalProtectionMonitorEndMonitoring(v3);
  }

  v4 = *(v2 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(v2 + 48) = 0;
  }
}

void famhdcp_removeAllEPMListeners(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFBagApplyFunction(*(DerivedStorage + 128), famhdcp_removeEPMListenersApplierFunc, a1);
  v3 = *(DerivedStorage + 128);

  CFBagRemoveAllValues(v3);
}

uint64_t famhdcp_setFilterForState(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  v7 = famhdcp_copyFilterForCurrentStateGuts(a1, &cf);
  if (v7)
  {
    v9 = v7;
    FigSimpleMutexUnlock();
  }

  else
  {
    v8 = *(DerivedStorage + 40);
    CFDictionarySetValue(*(DerivedStorage + 32), a3, a2);
    FigSimpleMutexUnlock();
    v9 = FigAlternateFilterMonitorUtilityPostStateChangedNotificationForNewFilterIfNecessary(a1, cf, a2, a3, v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t FigAlternateFilterMonitorCreateForHDCP(const __CFAllocator *a1, uint64_t a2, uint64_t (*a3)(int a1, uint64_t a2, _DWORD *a3, dispatch_queue_t **a4), CFTypeRef *a4)
{
  v23 = 0;
  cf = 0;
  v22 = 0;
  FigAlternateFilterMonitorGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
LABEL_21:
    v19 = v7;
    goto LABEL_14;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigReentrantMutexCreate();
  *DerivedStorage = v9;
  if (!v9)
  {
    v21 = 918;
LABEL_24:
    FigAlternateFilterMonitorCreateForHDCP_cold_1(v21, &v25);
    v19 = v25;
    goto LABEL_14;
  }

  v10 = dispatch_queue_create("com.apple.coremedia.alternateFilterMonitorForHDCP.notification", 0);
  *(DerivedStorage + 24) = v10;
  if (!v10)
  {
    v21 = 921;
    goto LABEL_24;
  }

  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = famhdcp_copyHDCPEPM;
  }

  *(DerivedStorage + 8) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 16) = v11;
  *(DerivedStorage + 32) = CFDictionaryCreateMutable(a1, 0, 0, MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 128) = CFBagCreateMutable(a1, 0, MEMORY[0x1E695E9D0]);
  *(DerivedStorage + 96) = -2;
  *(DerivedStorage + 144) = 0;
  v12 = CMBaseObjectGetDerivedStorage();
  *(v12 + 104) = -1;
  *(v12 + 120) = 0x100000001;
  v13 = CFGetAllocator(cf);
  v7 = FigAlternateHDCPLazyEPMFilterCreate(v13, famhdcp_lazyEPMFilterGetHDCPProtectionStatusCallback, famhdcp_lazyEPMFilterGetHDCPProtectionStatusCallback, cf, &v23);
  if (v7)
  {
    goto LABEL_21;
  }

  v14 = cf;
  v15 = CFGetAllocator(cf);
  v7 = FigAlternateAOCPFilterCreate(v15, famhdcp_aocpFilterGetAOCPProtectionStatusCallback, v14, (DerivedStorage + 136));
  if (v7)
  {
    goto LABEL_21;
  }

  v7 = famhdcp_createFilterTree(v23, *(DerivedStorage + 136), &v22);
  if (v7)
  {
    goto LABEL_21;
  }

  v16 = cf;
  v17 = v22;
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v18)
  {
    v19 = v18(v16, v17, 0);
    if (!v19)
    {
      *a4 = cf;
      cf = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v19 = 4294954514;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_16:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v19;
}

uint64_t famhdcp_copyHDCPEPM(int a1, uint64_t a2, _DWORD *a3, dispatch_queue_t **a4)
{
  if (*(CMBaseObjectGetDerivedStorage() + 72))
  {
    *a3 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = (DerivedStorage + 64);
    if (!*(DerivedStorage + 64))
    {
      result = FigCPEOctaviaExternalProtectionMonitorCreate(*MEMORY[0x1E695E480], *(DerivedStorage + 48), 1, *(DerivedStorage + 80), v8);
      if (result)
      {
        return result;
      }

      v10 = 0;
LABEL_22:
      FigCPEExternalProtectionMonitorBeginMonitoring(*v8);
      if (!a4)
      {
        goto LABEL_26;
      }

LABEL_23:
      v19 = *v8;
      if (*v8)
      {
        v19 = CFRetain(v19);
      }

      *a4 = v19;
LABEL_26:
      v20 = 0;
      result = 0;
      if (!v10)
      {
        return result;
      }

      goto LABEL_27;
    }

LABEL_11:
    v10 = 0;
    if (!a4)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      *a3 = 1;
      v11 = CMBaseObjectGetDerivedStorage();
      v12 = 0;
      v8 = (v11 + 56);
    }

    else
    {
      v11 = CMBaseObjectGetDerivedStorage();
      v12 = 0;
      v8 = 0;
    }
  }

  else
  {
    *a3 = 0;
    v11 = CMBaseObjectGetDerivedStorage();
    v8 = (v11 + 48);
    v12 = 1;
  }

  if (*v8)
  {
    goto LABEL_11;
  }

  v13 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    famhdcp_copyHDCPEPM_cold_1(&v21);
    return v21;
  }

  v10 = Mutable;
  CFDictionarySetValue(Mutable, @"InformationalMode", *MEMORY[0x1E695E4D0]);
  if (v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = FigCPEExternalProtectionMonitorCreateForMethods(v13, v15, v10, 0, v8);
  if (!v16)
  {
    v17 = 56;
    if (v12)
    {
      v17 = 48;
    }

    v18 = *(v11 + v17);
    if (!v18)
    {
      goto LABEL_22;
    }

    v16 = FigCPEExternalProtectionMonitorSetProperty(v18, @"DisplayList", *(v11 + 88));
    if (!v16)
    {
      goto LABEL_22;
    }
  }

  v20 = v16;
LABEL_27:
  CFRelease(v10);
  return v20;
}

uint64_t famhdcp_getCurrentMaxSupportedHDCPLevel()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  if (*(DerivedStorage + 72))
  {
    v2 = *(DerivedStorage + 64);
    if (!v2)
    {
      return 4294967294;
    }
  }

  else
  {
    v4 = *(DerivedStorage + 56);
    if (v4)
    {
      if (famhdcp_getHDCPStateFromExternalProtectionMonitor(v4) < 2)
      {
        return 1;
      }

      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 4294967294;
    }

    v2 = *(v1 + 48);
    if (!v2)
    {
      return result;
    }
  }

  if (famhdcp_getHDCPStateFromExternalProtectionMonitor(v2) <= 1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t famhdcp_removeEPMListenersApplierFunc()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

const void *famhdcp_copyFilterForCurrentStateGuts(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 40);
    v5 = CMBaseObjectGetDerivedStorage();
    result = CFDictionaryGetValue(*(v5 + 32), v4);
    *a2 = result;
    if (result)
    {
      CFRetain(result);
      return 0;
    }
  }

  else
  {
    famhdcp_copyFilterForCurrentStateGuts_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t famhdcp_finalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  famhdcp_removeAllEPMListeners(a1);
  famhdcp_releaseAndClearHDCPExternalProtectionMonitor(a1, 1);
  famhdcp_releaseAndClearHDCPExternalProtectionMonitor(a1, 2);
  famhdcp_releaseAndClearHDCPExternalProtectionMonitor(a1, 3);
  v3 = DerivedStorage[11];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[10];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = DerivedStorage[1];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[4];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[14];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = DerivedStorage[16];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = DerivedStorage[17];
  if (v10)
  {
    CFRelease(v10);
  }

  return FigSimpleMutexDestroy();
}

CFStringRef famhdcp_copyDebugDesc()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigAlternateFilterMonitorForHDCP currentMaxProtectedHDCPLevel:%d currentEPM:%@]", *(DerivedStorage + 104), *(DerivedStorage + 112));
  FigSimpleMutexUnlock();
  return v1;
}

uint64_t famhdcp_copyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(a2, @"AlternateFilterMonitorProperty_MaxProtectedAlternateHDCPLevel"))
  {
    famhdcp_getCurrentMaxSupportedHDCPLevel();
LABEL_4:
    SInt32 = FigCFNumberCreateSInt32();
    goto LABEL_5;
  }

  if (CFEqual(a2, @"AlternateFilterMonitorProperty_HDCPErrorCount"))
  {
    goto LABEL_4;
  }

  if (!CFEqual(a2, @"AlternateFilterMonitorProperty_AOCP"))
  {
    v9 = 4294954512;
    goto LABEL_6;
  }

  famhdcp_copyProperty_cold_1(a1, DerivedStorage, &v11);
  SInt32 = v11;
LABEL_5:
  v9 = 0;
  *a4 = SInt32;
LABEL_6:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t famhdcp_setProperty(uint64_t a1, const void *a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(a2, @"AlternateFilterMonitorProperty_DisplayList"))
  {
    famhdcp_setProperty_cold_1(a3, DerivedStorage, &v8);
    v6 = v8;
  }

  else
  {
    v6 = FigSignalErrorAtGM();
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t famhdcp_setState(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 40);
  *(DerivedStorage + 40) = a2;
  v6 = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(v6 + 32), v5);
  v8 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  v9 = CMBaseObjectGetDerivedStorage();
  v10 = CFDictionaryGetValue(*(v9 + 32), a2);
  v11 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  FigSimpleMutexUnlock();
  v12 = FigAlternateFilterMonitorUtilityPostStateChangedNotificationForNewStateIfNecessary(a1, v8, v11, v5, a2);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v12;
}

const void *famhdcp_copyFilterForCurrentState(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = famhdcp_copyFilterForCurrentStateGuts(a1, a2);
  FigSimpleMutexUnlock();
  return v4;
}

double OUTLINED_FUNCTION_1_149(uint64_t a1)
{
  *(a1 + 104) = -1;
  *&result = 0x100000001;
  *(a1 + 120) = 0x100000001;
  return result;
}

void *figTTMLInitLibXMLLibrary()
{
  result = dlopen("/usr/lib/libxml2.dylib", 6);
  if (result)
  {
    v1 = result;
    off_1ED4CB568 = dlsym(result, "xmlTextReaderIsEmptyElement");
    off_1ED4CB570 = dlsym(v1, "xmlTextReaderLocalName");
    qword_1ED4CB578 = dlsym(v1, "xmlStrEqual");
    off_1ED4CB580 = dlsym(v1, "xmlTextReaderMoveToNextAttribute");
    off_1ED4CB588 = dlsym(v1, "xmlTextReaderMoveToElement");
    off_1ED4CB590 = dlsym(v1, "xmlTextReaderConstLocalName");
    off_1ED4CB598 = dlsym(v1, "xmlTextReaderNamespaceUri");
    off_1ED4CB5A0 = dlsym(v1, "xmlTextReaderRead");
    qword_1ED4CB5A8 = dlsym(v1, "xmlFreeTextReader");
    off_1ED4CB5B0 = dlsym(v1, "xmlTextReaderNodeType");
    off_1ED4CB5B8 = dlsym(v1, "xmlTextReaderValue");
    off_1ED4CB5C0 = dlsym(v1, "xmlTextReaderMoveToFirstAttribute");
    off_1ED4CB5C8 = dlsym(v1, "xmlTextReaderConstNamespaceUri");
    qword_1ED4CB5D0 = dlsym(v1, "xmlTextReaderReadString");
    qword_1ED4CB5E0 = dlsym(v1, "xmlFree");
    off_1ED4CB5D8 = *qword_1ED4CB5E0;
    qword_1ED4CB5E8 = dlsym(v1, "xmlReaderForMemory");
    qword_1ED4CB5F0 = dlsym(v1, "xmlOutputBufferCreateIO");
    qword_1ED4CB5F8 = dlsym(v1, "xmlNewTextWriter");
    qword_1ED4CB600 = dlsym(v1, "xmlOutputBufferClose");
    qword_1ED4CB608 = dlsym(v1, "xmlFreeTextWriter");
    qword_1ED4CB610 = dlsym(v1, "xmlTextWriterStartDocument");
    qword_1ED4CB618 = dlsym(v1, "xmlTextWriterEndDocument");
    qword_1ED4CB620 = dlsym(v1, "xmlTextWriterStartElementNS");
    qword_1ED4CB628 = dlsym(v1, "xmlTextWriterStartElement");
    qword_1ED4CB630 = dlsym(v1, "xmlTextWriterEndElement");
    qword_1ED4CB638 = dlsym(v1, "xmlTextWriterWriteString");
    qword_1ED4CB640 = dlsym(v1, "xmlTextWriterFlush");
    qword_1ED4CB648 = dlsym(v1, "xmlTextWriterSetQuoteChar");
    qword_1ED4CB650 = dlsym(v1, "xmlTextWriterWriteAttribute");
    qword_1ED4CB658 = dlsym(v1, "xmlTextWriterWriteFormatAttributeNS");
    qword_1ED4CB660 = dlsym(v1, "xmlTextWriterSetIndent");
    qword_1ED4CB668 = dlsym(v1, "xmlTextWriterSetIndentString");
    result = dlsym(v1, "xmlTextWriterWriteAttributeNS");
    qword_1ED4CB670 = result;
    _MergedGlobals_102 = &off_1ED4CB568;
    if (&off_1ED4CB568 != &_MergedGlobals_103)
    {
      v2 = &off_1ED4CB568;
      v3 = 272;
      while (*v2)
      {
        ++v2;
        v3 -= 8;
        if (!v3)
        {
          return result;
        }
      }

      _MergedGlobals_102 = 0;
    }
  }

  return result;
}

uint64_t FigTTMLInitializeNodeBaseStorage(uint64_t a1, __int128 *a2)
{
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a2)
  {
    v3 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v3;
  }

  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(a1 + 24) = Mutable;
  if (!Mutable)
  {
    v8 = 233;
LABEL_9:
    FigTTMLInitializeNodeBaseStorage_cold_1(v8, &v9);
    return v9;
  }

  v6 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  *(a1 + 128) = v6;
  if (!v6)
  {
    v8 = 236;
    goto LABEL_9;
  }

  return 0;
}

void FigTTMLReleaseNodeBaseStorage(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 128) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

__CFArray *FigTTMLCreateStringArrayFromNMTOKENS(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  theString = a1;
  v21 = 0;
  v22 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v19 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v23 = 0;
  v24 = 0;
  v20 = CStringPtr;
  if (Length >= 1)
  {
    v6 = 0;
    v7 = 0;
    memset(v17, 0, sizeof(v17));
    do
    {
      v8 = v22;
      if (v22 <= v6)
      {
        goto LABEL_27;
      }

      if (v19)
      {
        v9 = v19[v21 + v6];
      }

      else if (v20)
      {
        v9 = v20[v21 + v6];
      }

      else
      {
        v10 = v23;
        if (v24 <= v6 || v23 > v6)
        {
          v12 = v6 - 4;
          if (v6 < 4)
          {
            v12 = 0;
          }

          if (v12 + 64 < v22)
          {
            v8 = v12 + 64;
          }

          v23 = v12;
          v24 = v8;
          v25.length = v8 - v12;
          v25.location = v21 + v12;
          CFStringGetCharacters(theString, v25, v17);
          v10 = v23;
        }

        v9 = *(v17 + v6 - v10);
      }

      v13 = v9;
      v14 = (1 << v9) & 0x100002600;
      if (v13 > 0x20 || v14 == 0)
      {
LABEL_27:
        ++v6;
      }

      else
      {
        if (v7 != v6)
        {
          v26.location = v7;
          v26.length = v6;
          figTTMLAddSubstringToArray(a1, v26, Mutable);
        }

        v7 = ++v6;
      }
    }

    while (v6 != Length);
    if (v7 != v6)
    {
      v27.location = v7;
      v27.length = v6;
      figTTMLAddSubstringToArray(a1, v27, Mutable);
    }
  }

  return Mutable;
}

void figTTMLAddSubstringToArray(CFStringRef str, CFRange range, __CFArray *a3)
{
  v6.length = range.length - range.location;
  v6.location = range.location;
  v4 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], str, v6);
  CFArrayAppendValue(a3, v4);
  if (v4)
  {

    CFRelease(v4);
  }
}

__CFArray *FigTTMLCreateReversedStringArrayFromNMTOKENS(const __CFString *a1)
{
  v1 = FigTTMLCreateStringArrayFromNMTOKENS(a1);
  v2 = v1;
  if (v1)
  {
    Count = CFArrayGetCount(v1);
    if (Count >= 2)
    {
      v4 = 0;
      v5 = Count / 2;
      v6 = Count - 1;
      do
      {
        CFArrayExchangeValuesAtIndices(v2, v4++, v6--);
      }

      while (v5 != v4);
    }
  }

  return v2;
}

uint64_t FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(uint64_t a1, const char **a2, CFStringRef *a3)
{
  MEMORY[0x19A8D3660](&FigTTMLGetLibXMLAccess_sFigLibXMLLoadOnce, figTTMLInitLibXMLLibrary);
  if (off_1ED4CB5B0(a1) == 1)
  {
    v6 = off_1ED4CB590(a1);
    v7 = MEMORY[0x1E695E480];
    if (v6)
    {
      v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v6, 0x8000100u);
    }

    else
    {
      v8 = 0;
    }

    v9 = off_1ED4CB5C8(a1);
    if (v9)
    {
      v9 = CFStringCreateWithCString(*v7, v9, 0x8000100u);
    }

    if (a2)
    {
      *a2 = v9;
      v9 = 0;
    }

    if (a3)
    {
      *a3 = v8;
      v8 = 0;
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    return 0;
  }

  else
  {
    FigTTMLCopyNamespaceAndLocalNameOfCurrentNode_cold_1(&v11);
    return v11;
  }
}

uint64_t FigTTMLMoveCurrentNodeTo(uint64_t a1, int a2)
{
  MEMORY[0x19A8D3660](&FigTTMLGetLibXMLAccess_sFigLibXMLLoadOnce, figTTMLInitLibXMLLibrary);
  if (_MergedGlobals_102)
  {
    while (off_1ED4CB5A0(a1) == 1)
    {
      if (off_1ED4CB5B0(a1) == a2)
      {
        return 0;
      }
    }

    FigTTMLMoveCurrentNodeTo_cold_1(&v5);
    return v5;
  }

  else
  {
    FigTTMLMoveCurrentNodeTo_cold_2(&v6);
    return v6;
  }
}

uint64_t FigTTMLAddCurrentElementAttributesToDictionary(uint64_t a1, __CFDictionary *a2)
{
  MEMORY[0x19A8D3660](&FigTTMLGetLibXMLAccess_sFigLibXMLLoadOnce, figTTMLInitLibXMLLibrary);
  if (_MergedGlobals_102)
  {
    if (off_1ED4CB5B0(a1) == 1)
    {
      if (off_1ED4CB5C0(a1))
      {
        v4 = 0;
        v5 = 0;
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = *MEMORY[0x1E695E480];
        do
        {
          off_1ED4CB5D8(v6);
          off_1ED4CB5D8(v5);
          off_1ED4CB5D8(v4);
          if (v8)
          {
            CFRelease(v8);
          }

          if (v7)
          {
            CFRelease(v7);
          }

          v6 = off_1ED4CB598(a1);
          v5 = off_1ED4CB570(a1);
          v4 = off_1ED4CB5B8(a1);
          v8 = figTTMLCreateNamespaceAndName(v6);
          v7 = CFStringCreateWithCString(v9, v4, 0x8000100u);
          CFDictionaryAddValue(a2, v8, v7);
        }

        while (off_1ED4CB580(a1));
        off_1ED4CB588(a1);
        if (v8)
        {
          CFRelease(v8);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        v10 = 0;
      }

      else
      {
        off_1ED4CB588(a1);
        v10 = 0;
        v4 = 0;
        v5 = 0;
        v6 = 0;
      }
    }

    else
    {
      FigTTMLAddCurrentElementAttributesToDictionary_cold_1(&v12);
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v10 = v12;
    }

    off_1ED4CB5D8(v6);
    off_1ED4CB5D8(v5);
    off_1ED4CB5D8(v4);
  }

  else
  {
    FigTTMLAddCurrentElementAttributesToDictionary_cold_2(&v13);
    return v13;
  }

  return v10;
}

uint64_t FigTTMLAddAttributeToCFDictionary(uint64_t a1, __CFDictionary *a2)
{
  MEMORY[0x19A8D3660](&FigTTMLGetLibXMLAccess_sFigLibXMLLoadOnce, figTTMLInitLibXMLLibrary);
  if (_MergedGlobals_102)
  {
    if (off_1ED4CB5B0(a1) == 2)
    {
      FigTTMLAddAttributeToCFDictionary_cold_2(a1, a2, &v6);
      return v6;
    }

    else
    {
      FigTTMLAddAttributeToCFDictionary_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigTTMLAddAttributeToCFDictionary_cold_3(&v7);
    return v7;
  }
}

uint64_t FigTTMLSkipNode(uint64_t a1, uint64_t *a2, __CFArray *a3)
{
  value = 0;
  MEMORY[0x19A8D3660](&FigTTMLGetLibXMLAccess_sFigLibXMLLoadOnce, figTTMLInitLibXMLLibrary);
  if (!_MergedGlobals_102)
  {
    FigTTMLSkipNode_cold_1(&v12);
    return v12;
  }

  if (off_1ED4CB5B0(a1) == 1)
  {
    v6 = FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(a1, 0, &value);
    v7 = value;
    if (v6)
    {
      v9 = v6;
      if (!value)
      {
        return v9;
      }

      goto LABEL_6;
    }

    CFArrayAppendValue(a3, value);
  }

  FigTTMLParseNode(a1, figTTMLSkipNode, a2);
  v9 = v8;
  v7 = value;
  if (value)
  {
LABEL_6:
    CFRelease(v7);
  }

  return v9;
}

void FigTTMLAppendDebugDescToCFString(const void *a1, __CFString *a2)
{
  v3 = CFCopyDescription(a1);
  CFStringAppend(a2, v3);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t FigTTMLParseTimeExpression(uint64_t a1, CFStringRef theString, CMTime *a3)
{
  v41 = *MEMORY[0x1E6960C70];
  *&v57.value = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v57.epoch = v6;
  Length = CFStringGetLength(theString);
  if (!a3)
  {
    FigTTMLParseTimeExpression_cold_4(buffer);
    return *buffer;
  }

  v8 = Length;
  theStringa = theString;
  v53 = 0;
  v54 = Length;
  CharactersPtr = CFStringGetCharactersPtr(theString);
  CStringPtr = 0;
  v51 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  *buffer = 0u;
  v43 = 0u;
  v55 = 0;
  v56 = 0;
  v52 = CStringPtr;
  *&v66.value = v41;
  v66.epoch = v6;
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v61 = 0.0;
  v60 = 0;
  if (figTTMLParseCharacter(45, buffer, 0, v8, &v60))
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  if (figTTMLParseTwoOrMoreDigits(buffer, v60, v8, &v60, &v63 + 1) || figTTMLParseCharacter(58, buffer, v60, v8, &v60) || figTTMLParseDigits(2u, buffer, v60, v8, &v60, &v63) || figTTMLParseCharacter(58, buffer, v60, v8, &v60) || figTTMLParseDigits(2u, buffer, v60, v8, &v60, &v62[8]) || (v12 = v60, figTTMLParseFraction(buffer, v60, v8, &v60, &v61)) && (!figTTMLParseCharacter(58, buffer, v12, v8, &v60) || !figTTMLParseCharacter(59, buffer, v12, v8, &v60)) && !figTTMLParseTwoOrMoreDigits(buffer, v60, v8, &v60, &v62[4]) && !figTTMLParseCharacter(46, buffer, v60, v8, &v60) && figTTMLParseOneOrMoreDigits(buffer, v60, v8, &v60, v62))
  {
    v15 = 0;
    goto LABEL_36;
  }

  if (v63 >= 0x3C)
  {
    FigTTMLParseTimeExpression_cold_3(&v65);
LABEL_79:
    v15 = 0;
    value = v65.value;
    goto LABEL_20;
  }

  if (*&v62[8] >= 0x3Du)
  {
    FigTTMLParseTimeExpression_cold_2(&v65);
    goto LABEL_79;
  }

  if (*&v62[4] >= *(a1 + 24))
  {
    FigTTMLParseTimeExpression_cold_1(&v65);
    goto LABEL_79;
  }

  v13 = (*&v62[8] + 60 * v63) + 3600 * HIDWORD(v63);
  if (FigCFEqual())
  {
    if (!*v62)
    {
      goto LABEL_18;
    }

LABEL_25:
    v15 = 0;
    value = 0;
    goto LABEL_20;
  }

  if (!FigCFEqual())
  {
    if (!FigCFEqual() || (memset(&v65, 0, sizeof(v65)), v17 = *(a1 + 24), time = *(a1 + 28), CMTimeMultiply(&v65, &time, v17), memset(&time, 0, sizeof(time)), CMTimeMake(&time, *v62, *(a1 + 144)), v18 = *(a1 + 24), v13) && 0xFFFFFFFFFFFFFFFFLL / v13 <= (v18 + 1) || ((v19 = *&v62[4], !FigCFEqual()) ? (!FigCFEqual() ? (v21 = 0) : (v21 = -4 * (vcvtmd_u64_f64(vcvtd_n_f64_u32(v63, 1uLL) + v63 / -20.0) + (27 * HIDWORD(v63))))) : (LODWORD(v20) = v63, v21 = -2 * ((v20 - floor(v20 / 10.0)) + (54 * HIDWORD(v63)))), v65.value >= 0x80000000))
    {
      fig_log_get_emitter();
      value = FigSignalErrorAtGM();
      v15 = 0;
      goto LABEL_20;
    }

    CMTimeMake(&lhs, v19 + v13 * v18 + v21, 1);
    rhs = time;
    CMTimeAdd(&v66, &lhs, &rhs);
    rhs = v66;
    CMTimeMultiplyByRatio(&lhs, &rhs, v65.timescale, v65.value);
    v66 = lhs;
    goto LABEL_19;
  }

  if (!*(a1 + 144))
  {
    goto LABEL_25;
  }

LABEL_18:
  CMTimeMakeWithSeconds(&v66, v61 + v13, 1000);
LABEL_19:
  time = v66;
  CMTimeMultiply(&v65, &time, v11);
  value = 0;
  v66 = v65;
  v57 = v65;
  v15 = v60;
LABEL_20:
  if (!value && v15 == v8)
  {
    goto LABEL_22;
  }

LABEL_36:
  lhs.value = 0;
  LODWORD(v61) = 0;
  rhs.value = 0;
  v66 = **&MEMORY[0x1E6960CC0];
  memset(&v65, 0, sizeof(v65));
  v22 = *(a1 + 24);
  time = *(a1 + 28);
  CMTimeMultiply(&v65, &time, v22);
  if (figTTMLParseOneOrMoreDigits(buffer, 0, v8, &lhs, &v61))
  {
    goto LABEL_106;
  }

  figTTMLParseFraction(buffer, lhs.value, v8, &lhs, &rhs.value);
  v24 = lhs.value;
  if (lhs.value < 0)
  {
    goto LABEL_106;
  }

  if (lhs.value >= v8)
  {
    goto LABEL_106;
  }

  v25 = v54;
  if (v54 <= lhs.value)
  {
    goto LABEL_106;
  }

  if (v51)
  {
    v26 = v51[v53 + lhs.value];
  }

  else if (v52)
  {
    v26 = v52[v53 + lhs.value];
  }

  else
  {
    if (v56 <= lhs.value || (v27 = v55, v55 > lhs.value))
    {
      v28 = lhs.value - 4;
      if (lhs.value < 4uLL)
      {
        v28 = 0;
      }

      if (v28 + 64 < v54)
      {
        v25 = v28 + 64;
      }

      v55 = v28;
      v56 = v25;
      v67.length = v25 - v28;
      v67.location = v53 + v28;
      CFStringGetCharacters(theStringa, v67, buffer);
      v27 = v55;
    }

    v26 = buffer[v24 - v27];
  }

  v29 = v24 + 1;
  if (v26 <= 0x6Cu)
  {
    if (v26 == 102)
    {
      v32 = 0;
      lhs.value = v24 + 1;
      LODWORD(v23) = LODWORD(v61);
      v37 = *&rhs.value + v23;
      v33 = 0.0;
      v34 = 0.0;
      v36 = 0.0;
LABEL_95:
      v35 = 0.0;
LABEL_96:
      if (FigCFEqual())
      {
        if (!v32)
        {
          v40 = v34 + v33 * 3600.0 + v36;
LABEL_104:
          CMTimeMakeWithSeconds(&v66, v40, 1000000);
          v57 = v66;
          v15 = lhs.value;
          goto LABEL_105;
        }
      }

      else
      {
        if (!FigCFEqual() && !FigCFEqual())
        {
          fig_log_get_emitter();
          if (FigSignalErrorAtGM())
          {
            goto LABEL_106;
          }

LABEL_105:
          if (v15 != v8)
          {
            goto LABEL_106;
          }

LABEL_22:
          result = 0;
          *a3 = v57;
          return result;
        }

        if (!v32)
        {
          time = v65;
          v40 = v34 + v33 * 3600.0 + v36 + v37 / CMTimeGetSeconds(&time);
          goto LABEL_104;
        }
      }

      time = *(a1 + 148);
      v40 = v35 / CMTimeGetSeconds(&time);
      goto LABEL_104;
    }

    if (v26 == 104)
    {
      v32 = 0;
      lhs.value = v24 + 1;
      LODWORD(v23) = LODWORD(v61);
      v33 = *&rhs.value + v23;
      v34 = 0.0;
      goto LABEL_93;
    }
  }

  else
  {
    switch(v26)
    {
      case 't':
        lhs.value = v24 + 1;
        LODWORD(v23) = LODWORD(v61);
        v35 = *&rhs.value + v23;
        v33 = 0.0;
        v32 = 1;
        v34 = 0.0;
        v36 = 0.0;
        v37 = 0.0;
        goto LABEL_96;
      case 's':
        v32 = 0;
        lhs.value = v24 + 1;
        LODWORD(v23) = LODWORD(v61);
        v36 = *&rhs.value + v23;
LABEL_73:
        v33 = 0.0;
        v34 = 0.0;
LABEL_94:
        v37 = 0.0;
        goto LABEL_95;
      case 'm':
        if (v29 < v8)
        {
          v30 = v54;
          if (v54 > v29)
          {
            if (v51)
            {
              v31 = v51[v53 + v29];
            }

            else if (v52)
            {
              v31 = v52[v53 + v29];
            }

            else
            {
              if (v56 <= v29 || (v38 = v55, v55 > v29))
              {
                v39 = v24 - 3;
                if (v24 < 3)
                {
                  v39 = 0;
                }

                if (v39 + 64 < v54)
                {
                  v30 = v39 + 64;
                }

                v55 = v39;
                v56 = v30;
                v68.length = v30 - v39;
                v68.location = v53 + v39;
                CFStringGetCharacters(theStringa, v68, buffer);
                v29 = v24 + 1;
                v38 = v55;
              }

              v31 = buffer[v29 - v38];
            }

            if (v31 == 115)
            {
              v32 = 0;
              lhs.value = v24 + 2;
              LODWORD(v23) = LODWORD(v61);
              v36 = (*&rhs.value + v23) / 1000.0;
              goto LABEL_73;
            }
          }
        }

        v32 = 0;
        lhs.value = v29;
        LODWORD(v23) = LODWORD(v61);
        v34 = (*&rhs.value + v23) * 60.0;
        v33 = 0.0;
LABEL_93:
        v36 = 0.0;
        goto LABEL_94;
    }
  }

LABEL_106:
  fig_log_get_emitter();
  return FigSignalErrorAtGM();
}

uint64_t figTTMLParseOneOrMoreWhitespaces(UniChar *buffer, int64_t a2, uint64_t *a3)
{
  if (!a3)
  {
    figTTMLParseOneOrMoreWhitespaces_cold_2(&v24);
    return v24;
  }

  if (a2 < 0 || (v6 = *(buffer + 20), v6 <= a2))
  {
    v8 = 0;
  }

  else
  {
    v7 = *(buffer + 17);
    if (v7)
    {
      v8 = *(v7 + 2 * *(buffer + 19) + 2 * a2);
    }

    else
    {
      v20 = *(buffer + 18);
      if (v20)
      {
        v8 = *(v20 + *(buffer + 19) + a2);
      }

      else
      {
        if (*(buffer + 22) <= a2 || (v21 = *(buffer + 21), v21 > a2))
        {
          v22 = a2 - 4;
          if (a2 < 4)
          {
            v22 = 0;
          }

          if (v22 + 64 < v6)
          {
            v6 = v22 + 64;
          }

          *(buffer + 21) = v22;
          *(buffer + 22) = v6;
          v26.length = v6 - v22;
          v26.location = *(buffer + 19) + v22;
          CFStringGetCharacters(*(buffer + 16), v26, buffer);
          v21 = *(buffer + 21);
        }

        v8 = buffer[a2 - v21];
      }
    }
  }

  v9 = 0;
  v10 = 2 * a2 + 2;
  while (1)
  {
    v11 = a2 + v9;
    if (v8 > 0x20u || ((1 << v8) & 0x100002600) == 0)
    {
      break;
    }

    if (v11 <= -2 || (v12 = a2 + v9 + 1, v13 = *(buffer + 20), v13 <= v12))
    {
      v8 = 0;
    }

    else
    {
      v14 = *(buffer + 17);
      if (v14)
      {
        v15 = (v14 + 2 * *(buffer + 19) + v10);
LABEL_14:
        v8 = *&v15[2 * v9];
        goto LABEL_16;
      }

      v16 = *(buffer + 18);
      if (!v16)
      {
        if (*(buffer + 22) <= v12 || (v17 = *(buffer + 21), v17 > v12))
        {
          if (v12 >= 4)
          {
            v18 = a2 + v9 - 3;
          }

          else
          {
            v18 = 0;
          }

          if (v18 + 64 < v13)
          {
            v13 = v18 + 64;
          }

          *(buffer + 21) = v18;
          *(buffer + 22) = v13;
          v25.length = v13 - v18;
          v25.location = *(buffer + 19) + v18;
          CFStringGetCharacters(*(buffer + 16), v25, buffer);
          v17 = *(buffer + 21);
        }

        v15 = buffer + v10 + -2 * v17;
        goto LABEL_14;
      }

      v8 = *(v16 + *(buffer + 19) + a2 + v9 + 1);
    }

LABEL_16:
    ++v9;
  }

  if (v9)
  {
    result = 0;
    *a3 = v11;
  }

  else
  {
    figTTMLParseOneOrMoreWhitespaces_cold_1(&v23);
    return v23;
  }

  return result;
}

CFStringRef FigTTMLCopyRGBAColorAsColorSyntax(float32x4_t a1, float32_t a2, float a3, float a4)
{
  v4 = 0;
  LODWORD(v5) = 0;
  a1.f32[1] = a2;
  a1.i64[1] = __PAIR64__(LODWORD(a4), LODWORD(a3));
  v11 = *MEMORY[0x1E69E9840];
  v10 = vcvtq_s32_f32(vmulq_f32(a1, vdupq_n_s32(0x437F0000u)));
  do
  {
    v6 = v10.i32[v4] & ~(v10.i32[v4] >> 31);
    if (v6 >= 255)
    {
      v6 = 255;
    }

    v5 = (v6 | (v5 << 8));
    v10.i32[v4++] = v6;
  }

  while (v4 != 4);
  MEMORY[0x19A8D3660](&initRGBAToNamedColorMap, figTTMLInitRGBAToNamedColorMap);
  Value = CFDictionaryGetValue(sRGBAToNamedColorMap, v5);
  if (!Value)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"rgba(%d,%d,%d,%d)", v10.u32[0], v10.u32[1], v10.u32[2], v10.u32[3]);
  }

  v8 = Value;
  CFRetain(Value);
  return v8;
}

uint64_t FigTTMLParseLength(const __CFString *a1, float *a2, int *a3)
{
  Length = CFStringGetLength(a1);
  v17 = 0;
  v16 = 0;
  v15 = 0.0;
  if (!a1)
  {
    FigTTMLParseLength_cold_4(v18);
    return LODWORD(v18[0]);
  }

  if (!a2)
  {
    FigTTMLParseLength_cold_3(v18);
    return LODWORD(v18[0]);
  }

  if (!a3)
  {
    FigTTMLParseLength_cold_2(v18);
    return LODWORD(v18[0]);
  }

  v7 = Length;
  v19 = a1;
  v22 = 0;
  v23 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v20 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  memset(v18, 0, sizeof(v18));
  v24 = 0;
  v25 = 0;
  v21 = CStringPtr;
  if (!figTTMLParseString("normal", v18, 0, v7, &v17))
  {
    v11 = 0;
    v16 = 125;
    v12 = 1.0;
LABEL_8:
    result = 0;
    LODWORD(v10) = v16;
    v14 = (v15 + v10) * v12;
    *a2 = v14;
    *a3 = v11;
    return result;
  }

  if (figTTMLParseCharacter(45, v18, v17, v7, &v17))
  {
    v12 = 1.0;
  }

  else
  {
    v12 = -1.0;
  }

  figTTMLParseOneOrMoreDigits(v18, v17, v7, &v17, &v16);
  figTTMLParseFraction(v18, v17, v7, &v17, &v15);
  if (!figTTMLParseString("%", v18, v17, v7, &v17))
  {
    v11 = 0;
    goto LABEL_8;
  }

  if (!figTTMLParseString("px", v18, v17, v7, &v17))
  {
    v11 = 1;
    goto LABEL_8;
  }

  if (!figTTMLParseString("em", v18, v17, v7, &v17))
  {
    v11 = 2;
    goto LABEL_8;
  }

  if (!figTTMLParseString("c", v18, v17, v7, &v17))
  {
    v11 = 3;
    goto LABEL_8;
  }

  if (!figTTMLParseString("rh", v18, v17, v7, &v17))
  {
    v11 = 5;
    goto LABEL_8;
  }

  if (FigTTMLParseLength_cold_1(&v17, v18, v7, &v26))
  {
    v11 = 4;
    goto LABEL_8;
  }

  return v26;
}

uint64_t FigTTMLParseTextEmphasisSyntaxAndCreateCaptionTextEmphasis(uint64_t a1, void *a2)
{
  if (!a1)
  {
    FigTTMLParseTextEmphasisSyntaxAndCreateCaptionTextEmphasis_cold_3(&v17);
    return v17;
  }

  if (!a2)
  {
    FigTTMLParseTextEmphasisSyntaxAndCreateCaptionTextEmphasis_cold_2(&v17);
    return v17;
  }

  v3 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v4 = v3;
  if (!v3 || CFArrayGetCount(v3) < 1)
  {
    FigTTMLParseTextEmphasisSyntaxAndCreateCaptionTextEmphasis_cold_1(&v17);
    v15 = v17;
    goto LABEL_42;
  }

  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = 1;
  while (1)
  {
    if (v8)
    {
      if (CFArrayGetCount(v4) <= v6)
      {
        v7 = 2;
      }

      else
      {
        MEMORY[0x19A8D3660](&initTextEmphasisParseMapOnce, figTTMLInitTextEmphasisParseMap);
        v17 = 1;
        CFArrayGetValueAtIndex(v4, v6);
        Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
        v7 = 1;
        if (Int32IfPresent)
        {
          ++v6;
        }

        else
        {
          v7 = 13;
        }
      }
    }

    if (v5 > 3)
    {
      break;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v10 = 1;
        v8 = 0;
        v11 = 3;
      }

      else
      {
        v8 = 0;
        v10 = 1;
        v11 = 4;
      }
    }

    else
    {
      v8 = 0;
      v10 = 1;
      if (v5)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }
    }

LABEL_28:
    v12 = v7 == 13;
    if (v10 && v12)
    {
      v5 = 8;
    }

    else
    {
      v5 = v11;
    }

    if (v10 && v12)
    {
      v8 = 0;
    }
  }

  if (v5 <= 5)
  {
    if (v5 == 4)
    {
      v8 = 0;
      v10 = 1;
      v11 = 5;
    }

    else
    {
      v10 = 1;
      v8 = 0;
      v11 = 6;
    }

    goto LABEL_28;
  }

  if (v5 == 6)
  {
    v8 = 0;
    v10 = v7 == 2;
    if (v7 == 2)
    {
      v11 = 7;
    }

    else
    {
      v11 = 8;
    }

    goto LABEL_28;
  }

  v13 = v7 == 13 && v5 == 7;
  if ((v13 || v5 == 8) && (fig_log_get_emitter(), v14 = FigSignalErrorAtGM(), v14) || (v14 = FigCaptionTextEmphasisCreate(), v14))
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
    *a2 = 0;
  }

LABEL_42:
  if (v4)
  {
    CFRelease(v4);
  }

  return v15;
}

uint64_t FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList(uint64_t a1, CFTypeRef *a2)
{
  v49 = 0;
  v50 = 0;
  v47[1] = 0;
  v48 = 0;
  cf = 0;
  v47[0] = 0;
  if (!a1)
  {
    FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList_cold_6(&v51);
LABEL_124:
    v8 = 0;
    v4 = 0;
    goto LABEL_118;
  }

  v2 = a2;
  if (!a2)
  {
    FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList_cold_5(&v51);
    goto LABEL_124;
  }

  v3 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v4 = v3;
  if (!v3 || (Count = CFArrayGetCount(v3), Count <= 0))
  {
    FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList_cold_4(&v51);
    v8 = 0;
LABEL_118:
    v7 = 0;
    v25 = v51;
    goto LABEL_104;
  }

  if (Count == 1)
  {
    NextToken = figTTMLTextShadowParseGetNextToken(v4, 0, &v51, 0, 0);
    if (NextToken == 3)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
LABEL_100:
      None = FigCaptionTextShadowListCreateNone();
      if (None)
      {
LABEL_121:
        v25 = None;
      }

      else
      {
LABEL_101:
        v25 = 0;
        *v2 = v50;
        v50 = 0;
      }

      if (v9)
      {
LABEL_103:
        CFRelease(v9);
      }

      goto LABEL_104;
    }
  }

  else
  {
    NextToken = 1;
  }

  v40 = NextToken;
  v39 = v2;
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v41 = v4;
  if (Mutable)
  {
    v42 = CFArrayGetCount(v4);
    if (v42 >= 1)
    {
      v12 = 0;
      for (i = 0; i != v42; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        Length = CFStringGetLength(ValueAtIndex);
        v58.location = 0;
        v58.length = Length;
        Results = CFStringCreateArrayWithFindResults(v10, ValueAtIndex, @",", v58, 0);
        if (Results)
        {
          v17 = Results;
          v43 = Length;
          allocator = i;
          v18 = v10;
          if (CFArrayGetCount(Results) < 1)
          {
            v20 = 0;
          }

          else
          {
            v19 = 0;
            v20 = 0;
            do
            {
              v21 = CFArrayGetValueAtIndex(v17, v19);
              v22 = *v21;
              v23 = v21[1];
              v24 = *v21 - v20;
              if (v24 >= 1)
              {
                if (v12)
                {
                  CFRelease(v12);
                }

                v55.location = v20;
                v55.length = v24;
                v12 = CFStringCreateWithSubstring(v18, ValueAtIndex, v55);
                CFArrayAppendValue(Mutable, v12);
              }

              if (v23 >= 1)
              {
                if (v12)
                {
                  CFRelease(v12);
                }

                v56.location = v22;
                v56.length = v23;
                v12 = CFStringCreateWithSubstring(v18, ValueAtIndex, v56);
                CFArrayAppendValue(Mutable, v12);
              }

              v20 = v23 + v22;
              ++v19;
            }

            while (v19 < CFArrayGetCount(v17));
          }

          v10 = v18;
          if (v43 > v20)
          {
            if (v12)
            {
              CFRelease(v12);
            }

            v57.location = v20;
            v57.length = v43 - v20;
            v12 = CFStringCreateWithSubstring(v18, ValueAtIndex, v57);
            CFArrayAppendValue(Mutable, v12);
          }

          i = allocator;
          CFRelease(v17);
          v4 = v41;
        }

        else
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }
  }

  else
  {
    FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList_cold_1();
  }

  v7 = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
  if (!v7)
  {
    FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList_cold_2(&v51);
    v25 = v51;
    if (!Mutable)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v54 = 0;
  v51 = CFGetAllocator(v4);
  theArray = v7;
  value = 0;
  FigCFArrayApplyFunction();
  if (value)
  {
    CFArrayAppendValue(theArray, value);
    if (value)
    {
      CFRelease(value);
      v25 = 0;
      value = 0;
      if (!Mutable)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }
  }

  v25 = 0;
  if (Mutable)
  {
LABEL_41:
    CFRelease(Mutable);
  }

LABEL_42:
  if (!v25)
  {
    allocatora = v10;
    v9 = 0;
    v8 = 0;
    v26 = 1;
    v27 = v40;
    while (1)
    {
      if (v26)
      {
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v27 = figTTMLTextShadowParseGetNextToken(v7, v48, &v48, v47, &cf);
      }

      v28 = 1;
      v29 = 0;
      v30 = 1;
      switch(v25)
      {
        case 1:
          v29 = 0;
          v30 = 2;
          goto LABEL_83;
        case 2:
          v31 = v27 == 3;
          v29 = v27 == 3;
          v30 = 3;
          v32 = 6;
          goto LABEL_68;
        case 3:
          v29 = 0;
          v30 = 4;
          goto LABEL_83;
        case 4:
          v29 = 0;
          v30 = 6;
          goto LABEL_83;
        case 5:
          if ((v27 | 4) != 6)
          {
            goto LABEL_82;
          }

          if (!v9)
          {
            v9 = CFArrayCreateMutable(allocatora, 0, MEMORY[0x1E695E9C0]);
            if (!v9)
            {
              FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList_cold_3(&v51);
              v25 = v51;
              goto LABEL_129;
            }
          }

          v33 = FigCaptionTextShadowCreate();
          if (v33)
          {
            v25 = v33;
            v4 = v41;
            goto LABEL_103;
          }

          CFArrayAppendValue(v9, v49);
          if (v49)
          {
            CFRelease(v49);
            v49 = 0;
          }

          if (v8)
          {
            CFRelease(v8);
          }

          v8 = 0;
          v31 = v27 == 6;
          v29 = v27 == 6;
          v30 = 10;
          v32 = 4;
LABEL_68:
          if (v31)
          {
            v30 = v32;
          }

          goto LABEL_70;
        case 6:
          if (v27 != 4)
          {
            goto LABEL_82;
          }

          v30 = 7;
          v29 = 1;
          goto LABEL_83;
        case 7:
          if (v27 != 4)
          {
            goto LABEL_82;
          }

          v30 = 8;
          v29 = 1;
          goto LABEL_83;
        case 8:
          v29 = 0;
          v30 = 5;
          if (v27 <= 4)
          {
            if (v27 == 2)
            {
              goto LABEL_83;
            }

            if (v27 == 4)
            {
              v30 = 9;
              v29 = 1;
              goto LABEL_70;
            }

LABEL_82:
            v29 = 0;
            v28 = 0;
            v30 = 12;
            goto LABEL_83;
          }

          if (v27 != 5)
          {
            if (v27 == 6)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          }

LABEL_86:
          if (cf)
          {
            v8 = CFRetain(cf);
            v30 = 5;
            v29 = 1;
LABEL_70:
            v28 = 1;
          }

          else
          {
            v8 = 0;
            v29 = 1;
          }

LABEL_83:
          v34 = v28 && v27 == 7;
          v26 = (v34 ^ 1) & v29;
          if (v34)
          {
            LODWORD(v25) = 12;
          }

          else
          {
            LODWORD(v25) = v30;
          }

          break;
        case 9:
          v29 = 0;
          v30 = 5;
          if (v27 == 2 || v27 == 6)
          {
            goto LABEL_83;
          }

          if (v27 == 5)
          {
            goto LABEL_86;
          }

          goto LABEL_82;
        case 10:
          v29 = 0;
          v28 = v27 == 2;
          if (v27 == 2)
          {
            v30 = 11;
          }

          else
          {
            v30 = 12;
          }

          goto LABEL_83;
        case 11:
          v35 = 1;
          goto LABEL_91;
        case 12:
          v35 = 0;
LABEL_91:
          if (v27 != 7)
          {
            v35 = 0;
          }

          v4 = v41;
          v2 = v39;
          if ((v35 & 1) != 0 || v25 == 12)
          {
            fig_log_get_emitter();
            None = FigSignalErrorAtGM();
            if (None)
            {
              goto LABEL_121;
            }
          }

          if (!v9 || !CFArrayGetCount(v9))
          {
            goto LABEL_100;
          }

          v37 = FigCaptionTextShadowListCreate();
          if (!v37)
          {
            goto LABEL_101;
          }

          v25 = v37;
          goto LABEL_103;
        default:
          goto LABEL_83;
      }
    }
  }

  v8 = 0;
LABEL_129:
  v4 = v41;
LABEL_104:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  return v25;
}

uint64_t figTTMLTextShadowParseGetNextToken(CFArrayRef theArray, CFIndex a2, CFIndex *a3, uint64_t *a4, void *a5)
{
  v9 = theArray;
  if (theArray)
  {
    theArray = CFArrayGetCount(theArray);
  }

  v10 = *MEMORY[0x1E6962810];
  v11 = *(MEMORY[0x1E6962810] + 8);
  if (theArray <= a2)
  {
    CGColorSRGB = 0;
    v14 = 2;
  }

  else
  {
    MEMORY[0x19A8D3660](&initTextShadowParseMapOnce, figTTMLInitTextShadowParseMap);
    v21 = 1;
    ValueAtIndex = CFArrayGetValueAtIndex(v9, a2);
    if (FigCFDictionaryGetInt32IfPresent())
    {
      CGColorSRGB = 0;
      v14 = v21;
      ++a2;
    }

    else
    {
      v10 = FigTTMLParseLengthSyntax(ValueAtIndex);
      v11 = v15;
      if ((v15 & 0x100000000) != 0)
      {
        CGColorSRGB = 0;
        ++a2;
        v14 = 4;
      }

      else
      {
        v20 = 0;
        v19 = 0;
        v18 = 0;
        FigTTMLParseColor(ValueAtIndex, &v20, &v19 + 1, &v19, &v18);
        if (v17)
        {
          CGColorSRGB = 0;
          v14 = 7;
        }

        else
        {
          CGColorSRGB = FigCreateCGColorSRGB();
          ++a2;
          v14 = 5;
        }
      }
    }
  }

  *a3 = a2;
  if (a4)
  {
    *a4 = v10;
    a4[1] = v11;
  }

  if (a5)
  {
    *a5 = CGColorSRGB;
  }

  else if (CGColorSRGB)
  {
    CFRelease(CGColorSRGB);
  }

  return v14;
}

uint64_t FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve(uint64_t a1, void *a2)
{
  if (!a1)
  {
    FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve_cold_6(&v14);
    return v14;
  }

  if (!a2)
  {
    FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve_cold_5(&v14);
    return v14;
  }

  v3 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v4 = v3;
  if (!v3 || (Count = CFArrayGetCount(v3), (Count - 3) < 0xFFFFFFFFFFFFFFFELL))
  {
    v12 = FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve_cold_4(v4 == 0, &v14);
    v10 = v14;
    if (v12)
    {
      return v10;
    }

    goto LABEL_10;
  }

  v6 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
  if (!ValueAtIndex)
  {
    FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve_cold_3(&v14);
LABEL_31:
    v10 = v14;
    goto LABEL_10;
  }

  v8 = ValueAtIndex;
  if (!CFEqual(ValueAtIndex, @"none"))
  {
    if (!CFEqual(v8, @"before") && !CFEqual(v8, @"after") && !CFEqual(v8, @"outside") && !CFEqual(v8, @"both"))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }

    if (v6 == 2)
    {
      v13 = CFArrayGetValueAtIndex(v4, 1);
      if (!v13)
      {
        FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve_cold_2(&v14);
        goto LABEL_31;
      }

      FigTTMLParseLengthSyntax(v13);
    }

    None = FigCaptionRubyReserveCreate();
    if (!None)
    {
      goto LABEL_9;
    }

LABEL_24:
    v10 = None;
    goto LABEL_10;
  }

  if (v6 != 1)
  {
    FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve_cold_1(&v14);
    goto LABEL_31;
  }

  None = FigCaptionRubyReserveCreateNone();
  if (None)
  {
    goto LABEL_24;
  }

LABEL_9:
  v10 = 0;
  *a2 = 0;
LABEL_10:
  CFRelease(v4);
  return v10;
}

uint64_t FigTTMLNodeGetParameters(uint64_t ParentNode, void *a2)
{
  do
  {
    v3 = ParentNode;
    ParentNode = FigTTMLNodeGetParentNode();
  }

  while (ParentNode);

  return FigTTMLRootGetParameters(v3, a2);
}

uint64_t FigTTMLNodeUseDefaultWhitespaceHandling(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  while (1)
  {
    value = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (CFDictionaryGetValueIfPresent(*(DerivedStorage + 24), @"http://www.w3.org/XML/1998/namespace space", &value))
    {
      if (CFEqual(value, @"default"))
      {
        return 1;
      }

      if (CFEqual(value, @"preserve"))
      {
        break;
      }
    }

    if (!FigTTMLNodeGetParentNode())
    {
      return 1;
    }
  }

  return 0;
}

__CFString *FigTTMLCopyStringWithDefaultWhitespaceHandling(const __CFString *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  Length = CFStringGetLength(a1);
  v36 = a1;
  v39 = 0;
  v40 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v37 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v38 = CStringPtr;
  v41 = 0;
  v42 = 0;
  if (Length >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = 64;
    *buffer = 0u;
    v29 = 0u;
    while (1)
    {
      if (v8 >= 4)
      {
        v11 = 4;
      }

      else
      {
        v11 = v8;
      }

      v12 = v40;
      if (v40 <= v8)
      {
        chars = 0;
        goto LABEL_13;
      }

      if (v37)
      {
        break;
      }

      if (!v38)
      {
        v18 = v41;
        if (v42 <= v8 || v41 > v8)
        {
          v20 = -v11;
          v21 = v11 + v7;
          v22 = v10 - v11;
          v23 = v8 + v20;
          v24 = v23 + 64;
          if (v23 + 64 >= v40)
          {
            v24 = v40;
          }

          v41 = v23;
          v42 = v24;
          if (v40 >= v22)
          {
            v12 = v22;
          }

          v43.location = v23 + v39;
          v43.length = v12 + v21;
          CFStringGetCharacters(v36, v43, buffer);
          v18 = v41;
        }

        v13 = &buffer[-v18];
        goto LABEL_11;
      }

      v14 = v38[v39 + v8];
LABEL_16:
      chars = v14;
      v15 = v14;
      v16 = (1 << v14) & 0x100002600;
      if (v15 <= 0x20 && v16 != 0)
      {
        if (v9)
        {
          v9 = 1;
        }

        else
        {
          v26 = 32;
          v9 = 1;
          CFStringAppendCharacters(Mutable, &v26, 1);
        }

        goto LABEL_23;
      }

LABEL_13:
      CFStringAppendCharacters(Mutable, &chars, 1);
      v9 = 0;
LABEL_23:
      ++v8;
      --v7;
      ++v10;
      if (Length == v8)
      {
        return Mutable;
      }
    }

    v13 = &v37[v39];
LABEL_11:
    v14 = v13[v8];
    goto LABEL_16;
  }

  return Mutable;
}

uint64_t FigTTMLParsePixelResolution(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v5 = FigTTMLCFStringArrayCreateWithNMTOKENS();
  v6 = v5;
  if (!v5 || CFArrayGetCount(v5) != 2)
  {
    v16 = FigTTMLParsePixelResolution_cold_5(v6 == 0, &v17);
    v14 = v17;
    if (v16)
    {
      return v14;
    }

    goto LABEL_8;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
  v8 = COERCE_DOUBLE(FigTTMLParseLengthSyntax(ValueAtIndex));
  v10 = v9;
  v11 = CFArrayGetValueAtIndex(v6, 1);
  v12 = COERCE_DOUBLE(FigTTMLParseLengthSyntax(v11));
  if ((v10 & 0x100000000) == 0)
  {
    FigTTMLParsePixelResolution_cold_4(&v17);
LABEL_16:
    v14 = v17;
    goto LABEL_8;
  }

  if (v10 != 1886920736)
  {
    FigTTMLParsePixelResolution_cold_1(&v17);
    goto LABEL_16;
  }

  if ((v13 & 0x100000000) == 0)
  {
    FigTTMLParsePixelResolution_cold_3(&v17);
    goto LABEL_16;
  }

  if (v13 != 1886920736)
  {
    FigTTMLParsePixelResolution_cold_2(&v17);
    goto LABEL_16;
  }

  v14 = 0;
  *a2 = v8;
  *a3 = v12;
LABEL_8:
  CFRelease(v6);
  return v14;
}

uint64_t FigTTMLParsePositionSyntaxAndCreateCaptionPosition(uint64_t a1, void *a2)
{
  v55 = 0;
  if (!a1)
  {
    FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_21(v56);
    return LODWORD(v56[0]);
  }

  if (!a2)
  {
    FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_20(v56);
    return LODWORD(v56[0]);
  }

  v3 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v4 = v3;
  if (v3 && (Count = CFArrayGetCount(v3), (Count - 5) > 0xFFFFFFFFFFFFFFFBLL))
  {
    v6 = Count;
    v45 = a2;
    v7 = 0;
    v8 = (&v51 + 4);
    v9 = &v51;
    v49 = *MEMORY[0x1E6962808];
    v50 = v49;
    *&v10 = 0x200000002;
    *(&v10 + 1) = 0x200000002;
    v47 = v49;
    v48 = v49;
    v46 = v10;
    v51 = 0;
    v52 = v49;
    v44 = v49;
    v53 = v49;
    v11 = &v47 + 1;
    do
    {
      NextToken = figTTMLPositionParseGetNextToken(v4, v7, v56);
      if (NextToken == 8)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
        *(v11 - 1) = FigTTMLParseLengthSyntax(ValueAtIndex);
        *v11 = v14;
      }

      *(&v46 + v7++) = NextToken;
      v11 += 2;
    }

    while (v6 != v7);
    v54 = v6;
    if (figTTMLPositionParseGetNextToken(v4, v6, &v54) == 2)
    {
      if (v6 <= 2)
      {
        if (v6 != 1)
        {
          if (v6 != 2)
          {
            goto LABEL_182;
          }

          if (v46 > 5)
          {
            if (v46 == 6)
            {
              v15 = 0;
              v16 = 1651471476;
LABEL_80:
              v51.i32[1] = v16;
              v34 = 1;
              v24 = 1;
LABEL_86:
              if (SDWORD1(v46) > 4)
              {
                switch(DWORD1(v46))
                {
                  case 5:
                    if (v15)
                    {
                      v36 = 1953460256;
                      goto LABEL_105;
                    }

                    break;
                  case 6:
                    if (v15)
                    {
                      v36 = 1651471476;
LABEL_105:
                      v51.i32[1] = v36;
                      if ((v34 & 1) == 0)
                      {
                        goto LABEL_106;
                      }

LABEL_182:
                      v26 = FigCaptionPositionCreate();
                      *v45 = v55;
                      v55 = 0;
                      goto LABEL_183;
                    }

                    break;
                  case 7:
                    if ((v34 & 1) == 0)
                    {
                      v51 = vdup_n_s32(0x63656E74u);
                      goto LABEL_182;
                    }

                    v20 = 1667591796;
                    if (v24)
                    {
                      goto LABEL_115;
                    }

                    goto LABEL_110;
                  default:
                    break;
                }

LABEL_191:
                if (FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_2())
                {
                  goto LABEL_182;
                }

                goto LABEL_192;
              }

              if (DWORD1(v46) == 3)
              {
                if (!v24)
                {
                  goto LABEL_191;
                }

                v35 = 1818584692;
              }

              else
              {
                if (DWORD1(v46) != 4 || !v24)
                {
                  goto LABEL_191;
                }

                v35 = 1919510376;
              }

              v51.i32[0] = v35;
              if (v34)
              {
                goto LABEL_182;
              }

              v20 = 1667591796;
LABEL_110:
              v51.i32[1] = v20;
              goto LABEL_182;
            }

            if (v46 == 7)
            {
              v34 = 0;
              v24 = 1;
              goto LABEL_85;
            }

            if (v46 != 8)
            {
              goto LABEL_191;
            }

            v24 = 0;
            v52 = v47;
          }

          else
          {
            switch(v46)
            {
              case 3:
                v24 = 0;
                v33 = 1818584692;
                break;
              case 4:
                v24 = 0;
                v33 = 1919510376;
                break;
              case 5:
                v15 = 0;
                v16 = 1953460256;
                goto LABEL_80;
              default:
                goto LABEL_191;
            }

            v51.i32[0] = v33;
          }

          v34 = 1;
LABEL_85:
          v15 = 1;
          goto LABEL_86;
        }

        if (v46 <= 5)
        {
          switch(v46)
          {
            case 3:
              v20 = 1818584692;
              goto LABEL_115;
            case 4:
              v20 = 1919510376;
              goto LABEL_115;
            case 5:
              v20 = 1953460256;
              goto LABEL_110;
          }

LABEL_41:
          fig_log_get_emitter();
          v25 = FigSignalErrorAtGM();
          if (v25)
          {
            v26 = v25;
            if (!v4)
            {
              return v26;
            }

            goto LABEL_184;
          }

          goto LABEL_182;
        }

        if (v46 == 6)
        {
          v20 = 1651471476;
          goto LABEL_110;
        }

        if (v46 != 8)
        {
          if (v46 == 7)
          {
LABEL_106:
            v20 = 1667591796;
LABEL_115:
            v51.i32[0] = v20;
            goto LABEL_182;
          }

          goto LABEL_41;
        }

        v32 = v47;
LABEL_132:
        v52 = v32;
        goto LABEL_182;
      }

      if (v6 != 3)
      {
        if (v6 != 4)
        {
          goto LABEL_182;
        }

        if (v46 < 5)
        {
          if (v46 == 3)
          {
            v18 = 0;
            v17 = 1;
            v19 = 1818584692;
          }

          else
          {
            if (v46 != 4)
            {
              goto LABEL_181;
            }

            v18 = 0;
            v17 = 1;
            v19 = 1919510376;
          }

          v28 = &v51;
        }

        else
        {
          if (v46 <= 5)
          {
            v17 = 0;
            v18 = 1;
            v19 = 1953460256;
          }

          else
          {
            if (v46 != 6)
            {
              goto LABEL_181;
            }

            v17 = 0;
            v18 = 1;
            v19 = 1651471476;
          }

          v28 = (&v51 + 4);
        }

        v28->i32[0] = v19;
        if (DWORD1(v46) == 8)
        {
          if (SDWORD2(v46) < 5)
          {
            if (DWORD2(v46) == 3)
            {
              if ((v18 & 1) == 0)
              {
                goto LABEL_181;
              }

              v29 = 0;
              v30 = 1818584692;
            }

            else
            {
              if (DWORD2(v46) != 4 || (v18 & 1) == 0)
              {
                goto LABEL_181;
              }

              v29 = 0;
              v30 = 1919510376;
            }

            v8 = &v51;
          }

          else if (SDWORD2(v46) <= 5)
          {
            if ((v17 & 1) == 0)
            {
              goto LABEL_181;
            }

            v29 = 1;
            v30 = 1953460256;
          }

          else
          {
            if (DWORD2(v46) != 6)
            {
              goto LABEL_181;
            }

            v29 = 1;
            v30 = 1651471476;
          }

          v8->i32[0] = v30;
          if (HIDWORD(v46) == 8)
          {
            if (v18)
            {
              v31 = &v53;
            }

            else
            {
              v31 = &v52;
            }

            *v31 = v48;
            if (v29)
            {
              v53 = v50;
              goto LABEL_182;
            }

            v32 = v50;
            goto LABEL_132;
          }
        }

LABEL_181:
        if (FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_2())
        {
          goto LABEL_182;
        }

        goto LABEL_192;
      }

      v21 = 0;
      *v56 = v44;
      v22 = 1;
      if (v46 > 5)
      {
        if (v46 != 6)
        {
          v27 = 1;
          if (v46 != 7)
          {
            goto LABEL_167;
          }

LABEL_118:
          if (SDWORD2(v46) <= 5)
          {
            switch(DWORD2(v46))
            {
              case 3:
                if ((v22 & 1) == 0)
                {
                  FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_6(v57);
                  goto LABEL_212;
                }

                v38 = 1818584692;
                break;
              case 4:
                if ((v22 & 1) == 0)
                {
                  FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_5(v57);
                  goto LABEL_212;
                }

                v38 = 1919510376;
                break;
              case 5:
                if ((v27 & 1) == 0)
                {
                  FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_4(v57);
                  goto LABEL_212;
                }

                v37 = 1953460256;
                goto LABEL_137;
              default:
                goto LABEL_140;
            }

            v51.i32[0] = v38;
            v26 = 0;
            if ((v21 & 1) == 0)
            {
              v51.i32[1] = 1667591796;
            }

            v39 = 1;
            v40 = &v52;
LABEL_149:
            if (SDWORD1(v46) <= 5)
            {
              switch(DWORD1(v46))
              {
                case 3:
                  if ((v22 & 1) == 0)
                  {
                    FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_16(v57);
                    goto LABEL_212;
                  }

                  if (v39)
                  {
                    FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_17(v57);
                    goto LABEL_212;
                  }

                  v42 = 1818584692;
                  break;
                case 4:
                  if ((v22 & 1) == 0)
                  {
                    FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_14(v57);
                    goto LABEL_212;
                  }

                  if (v39)
                  {
                    FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_15(v57);
                    goto LABEL_212;
                  }

                  v42 = 1919510376;
                  break;
                case 5:
                  if (v27)
                  {
                    if (!v39)
                    {
                      v41 = 1953460256;
                      goto LABEL_165;
                    }

                    FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_13(v57);
                  }

                  else
                  {
                    FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_12(v57);
                  }

                  goto LABEL_212;
                default:
                  goto LABEL_167;
              }

              v51.i32[0] = v42;
              *v40 = *v56;
              if ((v21 & 1) == 0)
              {
                v51.i32[1] = 1667591796;
              }

LABEL_168:
              if (v26)
              {
LABEL_183:
                if (!v4)
                {
                  return v26;
                }

                goto LABEL_184;
              }

              goto LABEL_182;
            }

            if (DWORD1(v46) == 6)
            {
              if (v27)
              {
                if (!v39)
                {
                  v41 = 1651471476;
LABEL_165:
                  v51.i32[1] = v41;
                  *v40 = *v56;
                  if ((v21 & 1) == 0)
                  {
                    v51.i32[0] = 1667591796;
                  }

                  goto LABEL_168;
                }

                FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_11(v57);
              }

              else
              {
                FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_10(v57);
              }

LABEL_212:
              v26 = v57[0];
              goto LABEL_168;
            }

            if (DWORD1(v46) == 8)
            {
              if (v39)
              {
                if (v21)
                {
                  if (v22)
                  {
                    v53 = v48;
                  }

                  else
                  {
                    v52 = v48;
                  }

                  goto LABEL_168;
                }

                FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_9(v57);
              }

              else
              {
                FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_8(v57);
              }

              goto LABEL_212;
            }

LABEL_167:
            fig_log_get_emitter();
            v26 = FigSignalErrorAtGM();
            goto LABEL_168;
          }

          switch(DWORD2(v46))
          {
            case 6:
              if ((v27 & 1) == 0)
              {
                FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_3(v57);
                goto LABEL_212;
              }

              v37 = 1651471476;
LABEL_137:
              v51.i32[1] = v37;
              if (v21)
              {
                goto LABEL_138;
              }

              goto LABEL_139;
            case 8:
              v26 = 0;
              v39 = 0;
              *v56 = v49;
              goto LABEL_148;
            case 7:
              if ((v21 & 1) == 0)
              {
                FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_7(v57);
                goto LABEL_212;
              }

              if (!v22)
              {
                if (v27)
                {
                  v26 = 0;
                  v51.i32[1] = 1667591796;
LABEL_141:
                  v39 = 1;
LABEL_148:
                  v40 = &v53;
                  goto LABEL_149;
                }

LABEL_138:
                v26 = 0;
                goto LABEL_141;
              }

LABEL_139:
              v26 = 0;
              v51.i32[0] = 1667591796;
              goto LABEL_141;
          }

LABEL_140:
          fig_log_get_emitter();
          v26 = FigSignalErrorAtGM();
          goto LABEL_141;
        }

        v22 = 0;
        v21 = 1;
        v23 = 1651471476;
      }

      else
      {
        if (v46 == 3)
        {
          v23 = 1818584692;
LABEL_117:
          v27 = v22;
          v22 = v21;
          v9->i32[0] = v23;
          LOBYTE(v21) = 1;
          goto LABEL_118;
        }

        if (v46 == 4)
        {
          v21 = 0;
          v23 = 1919510376;
          goto LABEL_117;
        }

        if (v46 != 5)
        {
          goto LABEL_167;
        }

        v22 = 0;
        v21 = 1;
        v23 = 1953460256;
      }

      v9 = (&v51 + 4);
      goto LABEL_117;
    }

    FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_1(v56);
  }

  else
  {
    FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_19(v56);
  }

LABEL_192:
  v26 = LODWORD(v56[0]);
  if (!v4)
  {
    return v26;
  }

LABEL_184:
  CFRelease(v4);
  if (v55)
  {
    CFRelease(v55);
  }

  return v26;
}

uint64_t figTTMLPositionParseGetNextToken(CFArrayRef theArray, CFIndex a2, CFIndex *a3)
{
  v5 = theArray;
  if (theArray)
  {
    theArray = CFArrayGetCount(theArray);
  }

  if (theArray <= a2)
  {
    result = 2;
  }

  else
  {
    MEMORY[0x19A8D3660](&initPositionParseMapOnce, figTTMLInitPositionParseMap);
    ValueAtIndex = CFArrayGetValueAtIndex(v5, a2);
    if (FigCFDictionaryGetInt32IfPresent())
    {
      result = 1;
      ++a2;
    }

    else
    {
      FigTTMLParseLengthSyntax(ValueAtIndex);
      if ((v8 & 0x100000000) != 0)
      {
        result = 8;
      }

      else
      {
        result = 9;
      }
    }
  }

  *a3 = a2;
  return result;
}

uint64_t figTTMLInitNamedColorToRGBAMap()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  result = FigCFDictionarySetInt32();
  sNamedColorToRGBAMap = Mutable;
  return result;
}

void figTTMLInitRGBAToNamedColorMap()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, 0, @"transparent");
  CFDictionarySetValue(Mutable, 0xFF, @"black");
  CFDictionarySetValue(Mutable, 0xC0C0C0FFLL, @"silver");
  CFDictionarySetValue(Mutable, 0x808080FFLL, @"gray");
  CFDictionarySetValue(Mutable, 0xFFFFFFFFLL, @"white");
  CFDictionarySetValue(Mutable, 0x8000FFFFLL, @"maroon");
  CFDictionarySetValue(Mutable, 0xFF0000FFLL, @"red");
  CFDictionarySetValue(Mutable, 0x800080FFLL, @"purple");
  CFDictionarySetValue(Mutable, 0xFF00FFFFLL, @"magenta");
  CFDictionarySetValue(Mutable, 0x8000FF, @"green");
  CFDictionarySetValue(Mutable, 0xFF00FF, @"lime");
  CFDictionarySetValue(Mutable, 0x808000FFLL, @"olive");
  CFDictionarySetValue(Mutable, 0xFFFF00FFLL, @"yellow");
  CFDictionarySetValue(Mutable, 0x80FF, @"navy");
  CFDictionarySetValue(Mutable, 0xFFFF, @"blue");
  CFDictionarySetValue(Mutable, 0x8080FF, @"teal");
  CFDictionarySetValue(Mutable, 0xFFFFFF, @"aqua");
  sRGBAToNamedColorMap = Mutable;
}

uint64_t figTTMLCopyEscapedCharactersUntil(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, __CFString **a6)
{
  v9 = a3;
  v25 = a3;
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  while (1)
  {
    while (1)
    {
      if (v9 >= a4)
      {
        goto LABEL_24;
      }

      if (!figTTMLParseCharacter(a1, a2, v9, a4, &v25))
      {
        v9 = v25 - 1;
LABEL_24:
        result = 0;
        *a5 = v9;
        *a6 = Mutable;
        return result;
      }

      if (!figTTMLParseCharacter(92, a2, v25, a4, &v25))
      {
        break;
      }

      v13 = v25;
      if (v25 < 0 || (v14 = *(a2 + 160), v14 <= v25))
      {
        v16 = 0;
      }

      else
      {
        v15 = *(a2 + 136);
        if (v15)
        {
          v16 = *(v15 + 2 * *(a2 + 152) + 2 * v25);
        }

        else
        {
          v17 = *(a2 + 144);
          if (v17)
          {
            v16 = *(v17 + *(a2 + 152) + v25);
          }

          else
          {
            if (*(a2 + 176) <= v25 || (v19 = *(a2 + 168), v19 > v25))
            {
              v20 = v25 - 4;
              if (v25 < 4)
              {
                v20 = 0;
              }

              if (v20 + 64 < v14)
              {
                v14 = v20 + 64;
              }

              *(a2 + 168) = v20;
              *(a2 + 176) = v14;
              v26.length = v14 - v20;
              v26.location = *(a2 + 152) + v20;
              CFStringGetCharacters(*(a2 + 128), v26, a2);
              v19 = *(a2 + 168);
            }

            v16 = *(a2 + 2 * (v13 - v19));
          }
        }
      }

      chars = v16;
      CFStringAppendCharacters(Mutable, &chars, 1);
      v9 = ++v25;
    }

    --v25;
    v24 = 0;
    v18 = figTTMLParseEscape(a2, v25, a4, &v25, &v24);
    if (v18)
    {
      break;
    }

    CFStringAppendCharacters(Mutable, &v24, 1);
    v9 = v25;
  }

  v22 = v18;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v22;
}

uint64_t figTTMLInitTextEmphasisParseMap()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  result = FigCFDictionarySetInt32();
  sTextEmphasisParseMap = Mutable;
  return result;
}

uint64_t figTTMLInitTextShadowParseMap()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  result = FigCFDictionarySetInt32();
  sTextShadowParseMap = Mutable;
  return result;
}

void locateAndCombineColorFunctionTokens(const __CFString *a1, uint64_t a2)
{
  v4 = CFStringFind(a1, @""), 4uLL);
  if (*(a2 + 24))
  {
    if (v4.length)
    {
      *(a2 + 24) = 0;
      CFStringAppend(*(a2 + 16), a1);
      CFArrayAppendValue(*(a2 + 8), *(a2 + 16));
      v5 = *(a2 + 16);
      if (v5)
      {
        CFRelease(v5);
        *(a2 + 16) = 0;
      }
    }

    else
    {
      v7 = *(a2 + 16);

      CFStringAppend(v7, a1);
    }
  }

  else if ((CFStringHasPrefix(a1, @"rgb(") || CFStringHasPrefix(a1, @"rgba(")) && !v4.length)
  {
    *(a2 + 24) = 1;
    *(a2 + 16) = CFStringCreateMutableCopy(*a2, 0, a1);
  }

  else
  {
    v6 = *(a2 + 8);

    CFArrayAppendValue(v6, a1);
  }
}

uint64_t figTTMLInitPositionParseMap()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  result = FigCFDictionarySetInt32();
  sPositionParseMap = Mutable;
  return result;
}

void OUTLINED_FUNCTION_1_150()
{

  JUMPOUT(0x19A8D3660);
}

uint64_t OUTLINED_FUNCTION_8_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10)
{
  v13 = a10;

  return figTTMLParseDigits(1u, v11, v13, v10, &a10, &a9);
}

uint64_t OUTLINED_FUNCTION_13_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int *a6)
{

  return figTTMLParseDigits(1u, v7, a3, v6, a5, a6);
}

uint64_t OUTLINED_FUNCTION_19_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = 0;
  *v10 = a10;
  return result;
}

const char *OUTLINED_FUNCTION_20_31()
{

  return CFStringGetCStringPtr(v0, 0x600u);
}

uint64_t OUTLINED_FUNCTION_21_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{

  return figTTMLParseCFString(a1, a2, v6, v5, a5);
}

uint64_t OUTLINED_FUNCTION_23_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, char a15, int a16, char a17)
{

  return figTTMLParseOneOrMoreDigits(&a17, 0, v17, &a15, &a14);
}

uint64_t OUTLINED_FUNCTION_24_26(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v4 = va_arg(va1, CFStringRef);

  return FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(v1, va1, va);
}

uint64_t OUTLINED_FUNCTION_25_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return figTTMLParseEscape(va, a4, v10, (v11 - 96), (v11 - 98));
}

const UniChar *OUTLINED_FUNCTION_26_29(uint64_t a1)
{
  v2[16] = v1;
  v2[19] = 0;
  v2[20] = a1;

  return CFStringGetCharactersPtr(v1);
}

uint64_t OUTLINED_FUNCTION_27_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, char a11)
{
  v13 = a10;

  return figTTMLParseOneOrMoreDigits(&a11, v13, v11, &a10, &a9);
}

uint64_t OUTLINED_FUNCTION_34_24()
{

  return FigGeometryDimensionMake();
}

uint64_t OUTLINED_FUNCTION_35_19()
{

  return FigCFEqual();
}

uint64_t FigTTMLFormatWriterCreateWithByteStream(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v34 = 0;
  v35 = 0;
  if (!a2)
  {
    FigTTMLFormatWriterCreateWithByteStream_cold_3(&v51);
LABEL_81:
    v13 = v51;
    goto LABEL_82;
  }

  if (!a4)
  {
    FigTTMLFormatWriterCreateWithByteStream_cold_2(&v51);
    goto LABEL_81;
  }

  FigFormatWriterGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v13 = v8;
    goto LABEL_82;
  }

  FigFormatWriterGetFigBaseObject(v35);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigTTMLFormatWriterCreateWithByteStream_cold_1(&v51);
    goto LABEL_81;
  }

  v10 = DerivedStorage;
  if (!a3 || (CFDictionaryGetValue(a3, @"FileFormat"), FigCFEqual()))
  {
    FigFormatWriterGetFigBaseObject(v35);
    v11 = CMBaseObjectGetDerivedStorage();
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v42 = 0;
    v39 = 0;
    v40 = 0;
    v37 = 0;
    cf = 0;
    v36 = 0;
    v12 = FigTTMLSerializerCreateForByteStream(a1, a2, &v36);
    if (v12 || (v12 = FigTTMLSerializerCreateIndenter(a1, v36, &v37), v12) || (v12 = FigTTMLDocumentWriterCreateForSerializer(a1, v37, &cf), v12) || (v12 = FigTTMLDocumentWriterCreateLineBreaker(a1, cf, &v39), v12) || (v12 = FigTTMLDocumentWriterCreateProfileInserter(a1, v39, &v40), v12) || (v12 = FigTTMLDocumentWriterCreateStyleOptimizer(a1, v40, &v41), v12) || (v12 = FigTTMLDocumentWriterCreateRegionStyleOptimizer(a1, v41, &v42), v12) || (v12 = FigTTMLDocumentWriterCreateForiTT(a1, v42, &v43), v12) || (v12 = FigTTMLDocumentWriterCreateRubySpanBuilder(a1, v43, &v44), v12) || (v12 = FigTTMLDocumentWriterCreateStyleSpanBuilder(a1, v44, &v45), v12) || (v12 = FigTTMLDocumentWriterCreateParagraphStyleAttributeInserter(a1, v45, &v46), v12) || (v12 = FigTTMLDocumentWriterCreateRegionAttributeInserter(a1, v46, &v47), v12) || (v12 = FigTTMLDocumentWriterCreateFrameRateParameterInserter(a1, v47, &v48), v12) || (v12 = FigTTMLDocumentWriterCreateRegionBuilder(a1, v48, &v49), v12) || (v12 = FigTTMLDocumentWriterCreateLanguageIdentifierInserter(a1, v49, &v50), v12))
    {
      v13 = v12;
    }

    else
    {
      v13 = FigTTMLCaptionWriterCreateForDocument(a1, v50, &v51);
      if (!v13)
      {
        *v11 = v51;
        v14 = v49;
        v11[2] = v50;
        v11[3] = v14;
        v15 = v47;
        v11[4] = v48;
        v11[5] = v15;
        v16 = v45;
        v11[6] = v46;
        v17 = v44;
        v11[8] = v16;
        v11[9] = v17;
        v18 = v42;
        v11[10] = v43;
        v20 = v40;
        v19 = v41;
        v11[12] = v18;
        v11[13] = v19;
        v21 = cf;
        v22 = v39;
        v11[14] = v20;
        v11[15] = v22;
        v23 = v37;
        v11[16] = v21;
        v11[17] = v23;
        v11[18] = v36;
        v50 = 0;
        v51 = 0;
        v48 = 0;
        v49 = 0;
        v47 = 0;
        v45 = 0;
        v46 = 0;
        v43 = 0;
        v44 = 0;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        cf = 0;
        v39 = 0;
        v36 = 0;
        v37 = 0;
LABEL_24:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_26;
      }
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (v37)
    {
      CFRelease(v37);
    }

    goto LABEL_24;
  }

  CFDictionaryGetValue(a3, @"FileFormat");
  if (FigCFEqual())
  {
    FigFormatWriterGetFigBaseObject(v35);
    v24 = CMBaseObjectGetDerivedStorage();
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v42 = 0;
    v39 = 0;
    v40 = 0;
    v25 = FigTTMLSerializerCreateForByteStream(a1, a2, &v39);
    if (v25 || (v25 = FigTTMLDocumentWriterCreateForSerializer(a1, v39, &v40), v25) || (v25 = FigTTMLDocumentWriterCreateLineBreaker(a1, v40, &v41), v25) || (v25 = FigTTMLDocumentWriterCreateStyleOptimizer(a1, v41, &v42), v25) || (v25 = FigTTMLDocumentWriterCreateForIMSC(a1, v42, &v43), v25) || (v25 = FigTTMLDocumentWriterCreateStyleSpanBuilder(a1, v43, &v44), v25) || (v25 = FigTTMLDocumentWriterCreateWritingDirectionSpanBuilder(a1, v44, &v45), v25) || (v25 = FigTTMLDocumentWriterCreateParagraphStyleAttributeInserter(a1, v45, &v46), v25) || (v25 = FigTTMLDocumentWriterCreateRegionAttributeInserter(a1, v46, &v47), v25) || (v25 = FigTTMLDocumentWriterCreateRegionBuilder(a1, v47, &v48), v25) || (v25 = FigTTMLDocumentWriterCreateLanguageIdentifierInserter(a1, v48, &v49), v25) || (v25 = FigTTMLDocumentWriterCreateDivBuilder(a1, v49, &v50), v25))
    {
      v13 = v25;
    }

    else
    {
      v13 = FigTTMLCaptionWriterCreateForDocument(a1, v50, &v51);
      if (!v13)
      {
        *v24 = v51;
        v26 = v49;
        v24[1] = v50;
        v24[2] = v26;
        v27 = v47;
        v24[3] = v48;
        v28 = v46;
        v24[5] = v27;
        v24[6] = v28;
        v29 = v44;
        v24[7] = v45;
        v24[8] = v29;
        v30 = v42;
        v24[11] = v43;
        v24[13] = v30;
        v31 = v40;
        v24[15] = v41;
        v24[16] = v31;
        v24[18] = v39;
        v50 = 0;
        v51 = 0;
        v48 = 0;
        v49 = 0;
        v47 = 0;
        v45 = 0;
        v46 = 0;
        v43 = 0;
        v44 = 0;
        v41 = 0;
        v42 = 0;
        v39 = 0;
        v40 = 0;
        goto LABEL_45;
      }
    }

LABEL_26:
    if (v39)
    {
      CFRelease(v39);
    }

    if (v40)
    {
      CFRelease(v40);
    }

LABEL_45:
    if (v41)
    {
      CFRelease(v41);
    }

    if (v42)
    {
      CFRelease(v42);
    }

    if (v43)
    {
      CFRelease(v43);
    }

    if (v44)
    {
      CFRelease(v44);
    }

    if (v45)
    {
      CFRelease(v45);
    }

    if (v46)
    {
      CFRelease(v46);
    }

    if (v47)
    {
      CFRelease(v47);
    }

    if (v48)
    {
      CFRelease(v48);
    }

    if (v49)
    {
      CFRelease(v49);
    }

    if (v50)
    {
      CFRelease(v50);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    if (v13)
    {
      goto LABEL_82;
    }
  }

  v13 = FigCaptionTimelineGeneratorCreate(a1, ffw_ttml_WriteFigCaption, v35, &v34);
  v32 = v34;
  if (!v13)
  {
    *(v10 + 160) = 0;
    *(v10 + 152) = v32;
    *a4 = v35;
    return v13;
  }

  if (v34)
  {
    CFRelease(v34);
  }

LABEL_82:
  if (v35)
  {
    CFRelease(v35);
  }

  return v13;
}

uint64_t ffw_ttml_WriteFigCaption(const __CFArray *a1, CMTime *a2, uint64_t a3)
{
  FigFormatWriterGetFigBaseObject(a3);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v28 = 0;
  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v7 = Count;
  v8 = 0;
  v9 = *MEMORY[0x1E695E480];
  v10 = MEMORY[0x1E6960C98];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
    v26 = 0u;
    v27 = 0u;
    *values = 0u;
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v12)
    {
      v12(values, ValueAtIndex);
    }

    else
    {
      v13 = v10[1];
      *values = *v10;
      v26 = v13;
      v27 = v10[2];
    }

    v21 = *values;
    *&v22 = v26;
    time2 = *a2;
    if (!CMTimeCompare(&v21, &time2))
    {
      if (v28)
      {
        CFRelease(v28);
        v28 = 0;
      }

      CMBaseObject = FigCaptionGetCMBaseObject(ValueAtIndex);
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v15)
      {
        v18 = 4294954514;
        LODWORD(v21) = -12782;
        goto LABEL_16;
      }

      v16 = v15(CMBaseObject, @"CaptionData", v9, &v28);
      if (v16)
      {
        break;
      }

      v17 = *DerivedStorage;
      v21 = *values;
      v22 = v26;
      v23 = v27;
      v16 = FigTTMLCaptionWriterAddCaption(v17, v28, &v21);
      if (v16)
      {
        break;
      }
    }

    if (v7 == ++v8)
    {
      v18 = 0;
      goto LABEL_23;
    }
  }

  v18 = v16;
  LODWORD(v21) = v16;
  if (v16 == -16577)
  {
    LODWORD(v21) = -17540;
    v18 = 4294950719;
  }

LABEL_16:
  values[0] = CFNumberCreate(v9, kCFNumberSInt32Type, &v21);
  if (values[0])
  {
    v19 = CFDictionaryCreate(v9, kFigFormatWriterNotificationParameter_OSStatus, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v19 = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v19)
  {
    CFRelease(v19);
  }

  if (values[0])
  {
    CFRelease(values[0]);
  }

LABEL_23:
  if (v28)
  {
    CFRelease(v28);
  }

  return v18;
}

uint64_t ffw_ttml_Invalidate(uint64_t a1)
{
  FigFormatWriterGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLCaptionWriterInvalidate(*DerivedStorage);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[1]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[2]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[3]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[4]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[5]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[6]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[7]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[8]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[9]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[10]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[11]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[12]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[13]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[14]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[15]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[16]);
  FigTTMLSerializerInvalidate(DerivedStorage[17]);
  FigTTMLSerializerInvalidate(DerivedStorage[18]);
  return 0;
}

void ffw_ttml_Finalize(uint64_t a1)
{
  FigFormatWriterGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(DerivedStorage + 56);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(DerivedStorage + 64);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(DerivedStorage + 72);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(DerivedStorage + 80);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(DerivedStorage + 88);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(DerivedStorage + 96);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(DerivedStorage + 104);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(DerivedStorage + 112);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(DerivedStorage + 120);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(DerivedStorage + 128);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(DerivedStorage + 136);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(DerivedStorage + 144);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(DerivedStorage + 152);
  if (v20)
  {

    CFRelease(v20);
  }
}

uint64_t ffw_ttml_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      return 4294954666;
    }

    v7 = 570;
  }

  else
  {
    v7 = 569;
  }

  v9 = v4;
  v10 = v5;
  ffw_ttml_CopyProperty_cold_1(v7, &v8);
  return v8;
}

uint64_t ffw_ttml_SetProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 4294954666;
  }

  v6 = v2;
  v7 = v3;
  ffw_ttml_SetProperty_cold_1(&v5);
  return v5;
}

uint64_t ffw_ttml_AddTrack(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  FigFormatWriterGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1952807028)
  {
    if (a4)
    {
      v7 = DerivedStorage;
      if (*(DerivedStorage + 160))
      {
        ffw_ttml_AddTrack_cold_2(&v10);
        return v10;
      }

      else
      {
        result = 0;
        *(v7 + 160) = 1;
        *a4 = 1;
      }
    }

    else
    {
      ffw_ttml_AddTrack_cold_3(&v11);
      return v11;
    }
  }

  else
  {
    ffw_ttml_AddTrack_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t ffw_ttml_CopyTrackProperty(uint64_t a1, int a2, const void *a3, uint64_t a4, uint64_t a5)
{
  FigFormatWriterGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (a5)
    {
      v10 = DerivedStorage;
      if (*(DerivedStorage + 160) == a2)
      {
        if (CFEqual(@"LanguageTag", a3) || CFEqual(@"ExtendedLanguageTag", a3))
        {
          v11 = *(v10 + 16);

          return FigTTMLDocumentWriterCopyProperty(v11, @"languageIdentifier", a4, a5);
        }

        else
        {
          return 4294954512;
        }
      }

      else
      {
        ffw_ttml_CopyTrackProperty_cold_1(&v13);
        return v13;
      }
    }

    else
    {
      ffw_ttml_CopyTrackProperty_cold_2(&v14);
      return v14;
    }
  }

  else
  {
    ffw_ttml_CopyTrackProperty_cold_3(&v15);
    return v15;
  }
}

uint64_t ffw_ttml_SetTrackProperty(uint64_t a1, int a2, const void *a3, const void *a4)
{
  FigFormatWriterGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 160) != a2)
  {
    ffw_ttml_SetTrackProperty_cold_1(&v14);
    return v14;
  }

  if (!a3)
  {
    ffw_ttml_SetTrackProperty_cold_5(&v14);
    return v14;
  }

  if (!a4)
  {
    ffw_ttml_SetTrackProperty_cold_4(&v14);
    return v14;
  }

  v8 = DerivedStorage;
  if (!CFEqual(@"LanguageTag", a3) && !CFEqual(@"ExtendedLanguageTag", a3))
  {
    if (CFEqual(@"CaptionTimeCodeFrameDuration", a3))
    {
      v12 = CFGetTypeID(a4);
      if (v12 == CFDictionaryGetTypeID())
      {
        v9 = *(v8 + 32);
        v10 = @"timeCodeFrameDuration";
        goto LABEL_7;
      }

      ffw_ttml_SetTrackProperty_cold_2(&v14);
    }

    else
    {
      if (!CFEqual(@"UseDropFrameTimeCode", a3))
      {
        return 4294954512;
      }

      v13 = CFGetTypeID(a4);
      if (v13 == CFBooleanGetTypeID())
      {
        v9 = *(v8 + 32);
        v10 = @"useDropFrame";
        goto LABEL_7;
      }

      ffw_ttml_SetTrackProperty_cold_3(&v14);
    }

    return v14;
  }

  v9 = *(v8 + 16);
  v10 = @"languageIdentifier";
LABEL_7:

  return FigTTMLDocumentWriterSetProperty(v9, v10, a4);
}

uint64_t ffw_ttml_AddSampleBufferToTrack(uint64_t a1, int a2, opaqueCMSampleBuffer *a3)
{
  FigFormatWriterGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 160) != a2)
  {
    ffw_ttml_AddSampleBufferToTrack_cold_1(&v9);
    return v9;
  }

  if (!a3)
  {
    ffw_ttml_AddSampleBufferToTrack_cold_4(&v9);
    return v9;
  }

  v6 = DerivedStorage;
  if (!FigSampleBufferGetCaptionGroup())
  {
    ffw_ttml_AddSampleBufferToTrack_cold_3(&v9);
    return v9;
  }

  if (*(v6 + 164))
  {
    ffw_ttml_AddSampleBufferToTrack_cold_2(&v9);
    return v9;
  }

  v7 = *(v6 + 152);

  return FigCaptionTimelineGeneratorAddSampleBuffer(v7, a3);
}

uint64_t FigMutableCompositionCreateRemote(uint64_t a1, uint64_t a2, void *a3)
{
  xdict = 0;
  cf = 0;
  v10 = 0;
  if (remoteXPCMutableCompositionClient_EnsureClientEstablished_gMutableCompositionRemoteClientSetupOnce != -1)
  {
    FigMutableCompositionCreateRemote_cold_1();
  }

  v5 = remoteXPCMutableCompositionClient_EnsureClientEstablished_err;
  if (remoteXPCMutableCompositionClient_EnsureClientEstablished_err)
  {
    goto LABEL_16;
  }

  v6 = remoteXPCMutableComposition_CreateObject(a1, &v10);
  if (v6 || (v6 = FigXPCCreateBasicMessage(), v6) || (v6 = FigXPCMessageSetCFDictionary(), v6) || (v6 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v6))
  {
    v5 = v6;
LABEL_16:
    v8 = v10;
    goto LABEL_17;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v8 = v10;
  v5 = remoteXPCMutableComposition_CompleteObjectSetup(v10, uint64);
  if (!v5)
  {
    *a3 = v8;
    goto LABEL_10;
  }

LABEL_17:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (xdict)
  {
    CFRelease(xdict);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t remoteXPCMutableComposition_CreateObject(uint64_t a1, void *a2)
{
  FigMutableCompositionGetClassID();
  v3 = CMDerivedObjectCreate();
  if (!v3)
  {
    *a2 = 0;
  }

  return v3;
}

uint64_t remoteXPCMutableComposition_CompleteObjectSetup(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  DerivedStorage[2] = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);

  return FigXPCRemoteClientAssociateObject();
}

uint64_t remoteXPCMutableCompositionClient_DeadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 9) = 1;
  return result;
}

__CFString *remoteXPCMutableComposition_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 9))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigMutableCompositionRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v5, *DerivedStorage, v6);
  return Mutable;
}

uint64_t remoteXPCMutableComposition_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) || *(DerivedStorage + 9))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    *a2 = *DerivedStorage;
    return 0;
  }
}

uint64_t remoteXPCMutableComposition_InsertSegmentArrayIntoTrack(uint64_t a1, int a2, CFArrayRef theArray, uint64_t a4, const __CFArray *a5, const __CFArray *a6, __int128 *a7)
{
  v32 = 0;
  xdict = 0;
  value = 0;
  if (!theArray)
  {
    remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_9(&v29);
LABEL_44:
    v25 = v29;
    goto LABEL_35;
  }

  if (!a4)
  {
    remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_8(&v29);
    goto LABEL_44;
  }

  if (!a5)
  {
    remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_7(&v29);
    goto LABEL_44;
  }

  if (!a6)
  {
    remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_6(&v29);
    goto LABEL_44;
  }

  if (*(a7 + 2))
  {
    remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_1(&v29);
    goto LABEL_44;
  }

  Count = CFArrayGetCount(theArray);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (CFArrayGetCount(theArray) != Count)
  {
    remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_2(&v29);
    goto LABEL_48;
  }

  if (CFArrayGetCount(a5) != Count)
  {
    remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_3(&v29);
    goto LABEL_48;
  }

  if (CFArrayGetCount(a6) != Count)
  {
    remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_4(&v29);
LABEL_48:
    v25 = v29;
    if (Mutable)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  ObjectID = remoteXPCMutableComposition_GetObjectID(a1, &v32);
  if (ObjectID)
  {
    goto LABEL_29;
  }

  v27 = a7;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_29;
  }

  if (Count < 1)
  {
LABEL_24:
    xpc_dictionary_set_int64(xdict, "DestTrackID", a2);
    v29 = *v27;
    v30 = *(v27 + 2);
    FigXPCMessageSetCMTime();
    appended = FigXPCMessageSetCFArray();
    if (appended)
    {
LABEL_32:
      v25 = appended;
      goto LABEL_33;
    }

    ObjectID = FigXPCMessageSetCFArray();
    if (!ObjectID)
    {
      ObjectID = FigXPCMessageSetCFArray();
      if (!ObjectID)
      {
        ObjectID = FigXPCMessageSetCFArray();
        if (!ObjectID)
        {
          ObjectID = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }

LABEL_29:
    v25 = ObjectID;
    if (Mutable)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v16 = 0;
  v17 = *MEMORY[0x1E695E738];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
    v19 = CFGetTypeID(ValueAtIndex);
    TypeID = CFNullGetTypeID();
    v21 = v17;
    if (v19 == TypeID)
    {
      goto LABEL_18;
    }

    v22 = CFURLGetTypeID();
    if (v22 == CFGetTypeID(ValueAtIndex))
    {
      FigSandboxRegisterURLWithProcessAndCopyRegistration();
      if (value)
      {
        CFSetAddValue(*(DerivedStorage + 16), value);
      }

      v21 = ValueAtIndex;
LABEL_18:
      CFArrayAppendValue(Mutable, v21);
      goto LABEL_23;
    }

    v23 = FigMutableCompositionGetTypeID();
    if (v23 != CFGetTypeID(ValueAtIndex))
    {
      fig_log_get_emitter();
      appended = FigSignalErrorAtGM();
      goto LABEL_32;
    }

    *&v29 = 0;
    if (CMBaseObjectGetVTable() != &kFigMutableCompositionRemoteXPC_MutableCompositionVTable)
    {
      break;
    }

    appended = remoteXPCMutableComposition_GetObjectID(ValueAtIndex, &v29);
    if (appended)
    {
      goto LABEL_32;
    }

    appended = FigCFArrayAppendInt64();
    if (appended)
    {
      goto LABEL_32;
    }

LABEL_23:
    if (Count == ++v16)
    {
      goto LABEL_24;
    }
  }

  remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_5(&v34);
  v25 = v34;
LABEL_33:
  if (Mutable)
  {
LABEL_34:
    CFRelease(Mutable);
  }

LABEL_35:
  FigXPCRelease();
  if (value)
  {
    CFRelease(value);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v25;
}

uint64_t OUTLINED_FUNCTION_2_142()
{

  return FigXPCMessageSetCMTime();
}

uint64_t OUTLINED_FUNCTION_3_118()
{

  return FigXPCMessageSetCMTime();
}

uint64_t OUTLINED_FUNCTION_7_74()
{

  return FigXPCMessageSetCMTime();
}

uint64_t OUTLINED_FUNCTION_18_38()
{

  return FigSandboxRegisterURLWithProcessAndCopyRegistration();
}

uint64_t OUTLINED_FUNCTION_24_27(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return remoteXPCMutableComposition_GetObjectID(a1, va);
}

uint64_t IFFItemHeaderMakerCreateWithIFFItemInformation(const void *a1, const void *a2, void *a3)
{
  if (a2)
  {
    if (a3)
    {
      v6 = MEMORY[0x19A8CC720](a1, 24, 0x106004078230D8ELL, 0);
      if (v6)
      {
        v7 = v6;
        *v6 = 0;
        v6[1] = 0;
        v6[2] = 0;
        if (a1)
        {
          v8 = CFRetain(a1);
        }

        else
        {
          v8 = 0;
        }

        *v7 = v8;
        v9 = CFRetain(a2);
        result = 0;
        v7[1] = v9;
        *a3 = v7;
      }

      else
      {
        IFFItemHeaderMakerCreateWithIFFItemInformation_cold_1(&v11);
        return v11;
      }
    }

    else
    {
      IFFItemHeaderMakerCreateWithIFFItemInformation_cold_2(&v12);
      return v12;
    }
  }

  else
  {
    IFFItemHeaderMakerCreateWithIFFItemInformation_cold_3(&v13);
    return v13;
  }

  return result;
}

uint64_t IFFItemHeaderMakerSetByteCountToAddToItemLocationExtentOffsets(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 16) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    IFFItemHeaderMakerSetByteCountToAddToItemLocationExtentOffsets_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t IFFItemHeaderMakerCopyGlobalMetadataAtomAsBlockBuffer(uint64_t a1, const __CFAllocator *a2, uint64_t a3, CMBlockBufferRef *a4)
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  blockBufferOut = 0;
  if (!a1)
  {
    IFFItemHeaderMakerCopyGlobalMetadataAtomAsBlockBuffer_cold_3(&v16);
    return v16;
  }

  if (!FigCFEqual())
  {
    IFFItemHeaderMakerCopyGlobalMetadataAtomAsBlockBuffer_cold_2(&v16);
    return v16;
  }

  if (!a4)
  {
    IFFItemHeaderMakerCopyGlobalMetadataAtomAsBlockBuffer_cold_1(&v16);
    return v16;
  }

  appended = CMBlockBufferCreateEmpty(a2, 0x20u, 0, &blockBufferOut);
  v8 = blockBufferOut;
  if (!appended)
  {
    v9 = FigAtomWriterInitWithBlockBuffer();
    if (v9)
    {
      appended = v9;
      v8 = blockBufferOut;
    }

    else
    {
      appended = appendGlobalMetadataAtom(a1);
      v8 = blockBufferOut;
      if (!appended)
      {
        *a4 = blockBufferOut;
        return appended;
      }
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return appended;
}

uint64_t appendGlobalMetadataAtom(uint64_t a1)
{
  v1 = a1;
  v223 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v194 = 0;
  PictureCount = IFFInformationGetPictureCount(v2, 0, &v194);
  if (PictureCount || (PictureCount = FigAtomWriterBeginAtom(), PictureCount))
  {
    appended = PictureCount;
    goto LABEL_550;
  }

  appended = FigAtomWriterAppendData();
  if (!appended && v194 >= 1)
  {
    memset(v209, 0, 24);
    memset(v208, 0, sizeof(v208));
    v5 = *(v1 + 8);
    v219 = 0uLL;
    WORD4(v220) = 0;
    *&v220 = 0;
    LODWORD(v215) = 0;
    ItemHandler = FigAtomWriterInitWithParent();
    if (ItemHandler)
    {
      goto LABEL_561;
    }

    ItemHandler = FigAtomWriterBeginAtom();
    if (ItemHandler)
    {
      goto LABEL_561;
    }

    ItemHandler = IFFInformationGetItemHandler(v5, &v215);
    if (ItemHandler)
    {
      goto LABEL_561;
    }

    LODWORD(v219) = 0;
    DWORD2(v219) = bswap32(v215);
    appended = FigAtomWriterAppendData();
    FigAtomWriterEndAtom();
    if (appended)
    {
      goto LABEL_550;
    }

    memset(v209, 0, 24);
    memset(v208, 0, sizeof(v208));
    v222 = 0;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v218 = 0;
    v217 = 0u;
    v216 = 0u;
    v215 = 0u;
    v7 = FigAtomWriterInitWithParent();
    if (!v7)
    {
      v7 = FigAtomWriterBeginAtom();
      if (!v7)
      {
        v204[0] = 0x100000000000000;
        v7 = FigAtomWriterInitWithParent();
        if (!v7)
        {
          v7 = FigAtomWriterBeginAtom();
          if (!v7)
          {
            v7 = FigAtomWriterAppendData();
            if (!v7)
            {
              *v207 = 0x1000000;
              v7 = FigAtomWriterInitWithParent();
              if (!v7)
              {
                v7 = FigAtomWriterBeginAtom();
                if (!v7)
                {
                  v7 = FigAtomWriterAppendData();
                }
              }
            }
          }
        }
      }
    }

    appended = v7;
    FigAtomWriterEndAtom();
    FigAtomWriterEndAtom();
    FigAtomWriterEndAtom();
    if (appended)
    {
      goto LABEL_550;
    }

    memset(v209, 0, 24);
    memset(v208, 0, sizeof(v208));
    v8 = *(v1 + 8);
    LOBYTE(v204[0]) = 0;
    LODWORD(v215) = 0;
    ItemHandler = IFFInformationGetPrimaryPicture(v8, 0, &v215, v204);
    if (ItemHandler)
    {
      goto LABEL_561;
    }

    if (LOBYTE(v204[0]))
    {
      ItemHandler = FigAtomWriterInitWithParent();
      if (ItemHandler)
      {
        goto LABEL_561;
      }

      ItemHandler = FigAtomWriterBeginAtom();
      if (ItemHandler)
      {
        goto LABEL_561;
      }

      if (WORD1(v215))
      {
        LODWORD(v219) = 1;
        DWORD1(v219) = bswap32(v215);
      }

      else
      {
        LODWORD(v219) = 0;
        WORD2(v219) = bswap32(v215) >> 16;
      }

      appended = FigAtomWriterAppendData();
      FigAtomWriterEndAtom();
      if (appended)
      {
        goto LABEL_550;
      }
    }

    else
    {
      FigAtomWriterEndAtom();
    }

    memset(v209, 0, 24);
    memset(v208, 0, sizeof(v208));
    v222 = 0;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v9 = *(v1 + 8);
    ItemAtIndex = FigAtomWriterInitWithParent();
    if (ItemAtIndex)
    {
      goto LABEL_37;
    }

    ItemAtIndex = FigAtomWriterBeginAtom();
    if (ItemAtIndex)
    {
      goto LABEL_37;
    }

    ItemCount = IFFInformationGetItemCount(v9);
    if (ItemCount < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      for (i = 0; i != ItemCount; ++i)
      {
        *&v215 = 0;
        LODWORD(v204[0]) = 0;
        v207[0] = 0;
        ItemAtIndex = FigAtomWriterInitWithParent();
        if (ItemAtIndex)
        {
          goto LABEL_37;
        }

        ItemAtIndex = IFFInformationGetItemAtIndex(v9, i, &v215, v204, v207);
        if (ItemAtIndex)
        {
          goto LABEL_37;
        }

        if (v207[0])
        {
          ++v12;
        }
      }

      if (HIWORD(v12))
      {
        LODWORD(v215) = 1;
        DWORD1(v215) = bswap32(v12);
        ItemAtIndex = FigAtomWriterAppendData();
        if (ItemAtIndex)
        {
LABEL_37:
          appended = ItemAtIndex;
          goto LABEL_68;
        }

        goto LABEL_41;
      }
    }

    LODWORD(v215) = 0;
    WORD2(v215) = bswap32(v12) >> 16;
    v14 = FigAtomWriterAppendData();
    appended = v14;
    if (ItemCount >= 1 && !v14)
    {
LABEL_41:
      v15 = 0;
      while (1)
      {
        *v207 = 0;
        LODWORD(v211) = 0;
        LOBYTE(v200) = 0;
        LOWORD(v201) = 0;
        LODWORD(v210) = 0;
        __s = 0;
        ItemProtectionIndex = FigAtomWriterInitWithParent();
        if (ItemProtectionIndex || (ItemProtectionIndex = IFFInformationGetItemAtIndex(v9, v15, v207, &v211, &v200), ItemProtectionIndex))
        {
LABEL_368:
          appended = ItemProtectionIndex;
          goto LABEL_68;
        }

        if (v200)
        {
          break;
        }

LABEL_66:
        if (ItemCount == ++v15)
        {
          appended = 0;
          goto LABEL_68;
        }
      }

      ItemProtectionIndex = FigAtomWriterBeginAtom();
      if (ItemProtectionIndex)
      {
        goto LABEL_368;
      }

      ItemProtectionIndex = IFFInformationGetItemProtectionIndex(*v207, &v201);
      if (ItemProtectionIndex)
      {
        goto LABEL_368;
      }

      ItemProtectionIndex = IFFInformationGetItemType(*v207, &v210);
      if (ItemProtectionIndex)
      {
        goto LABEL_368;
      }

      ItemProtectionIndex = IFFInformationGetItemName(*v207, &__s);
      if (ItemProtectionIndex)
      {
        goto LABEL_368;
      }

      v17 = strlen(__s);
      v18 = IFFInformationIsItemDisplayable(*v207) == 0;
      *(v204 + 5) = 0;
      v204[0] = 0;
      *(&v215 + 7) = 0;
      *&v215 = 0;
      v19 = bswap32(v211);
      if (v211 >> 16)
      {
        *&v215 = __PAIR64__(v19, bswap32(v18 | 0x3000000));
        WORD4(v215) = bswap32(v201) >> 16;
        *(&v215 + 10) = bswap32(v210);
      }

      else
      {
        LODWORD(v204[0]) = bswap32(v18 | 0x2000000);
        WORD2(v204[0]) = HIWORD(v19);
        HIWORD(v204[0]) = bswap32(v201) >> 16;
        LODWORD(v204[1]) = bswap32(v210);
        BYTE4(v204[1]) = 0;
      }

      ItemProtectionIndex = FigAtomWriterAppendData();
      if (ItemProtectionIndex)
      {
        goto LABEL_368;
      }

      if (v17)
      {
        ItemProtectionIndex = FigAtomWriterAppendData();
        if (ItemProtectionIndex)
        {
          goto LABEL_368;
        }
      }

      if (v210 == 1970432288)
      {
        v213 = 0;
        ItemProtectionIndex = IFFInformationGetItemURIType(*v207, &v213);
        if (ItemProtectionIndex)
        {
          goto LABEL_368;
        }

        strlen(v213);
      }

      else
      {
        if (v210 != 1835625829)
        {
          goto LABEL_65;
        }

        v212 = 0;
        v213 = 0;
        ItemProtectionIndex = IFFInformationGetItemMIMETypeAndEncoding(*v207, &v213, &v212);
        if (ItemProtectionIndex)
        {
          goto LABEL_368;
        }

        strlen(v213);
        ItemProtectionIndex = FigAtomWriterAppendData();
        if (ItemProtectionIndex)
        {
          goto LABEL_368;
        }

        if (!v212 || strlen(v212) + 1 < 2)
        {
          goto LABEL_65;
        }
      }

      ItemProtectionIndex = FigAtomWriterAppendData();
      if (ItemProtectionIndex)
      {
        goto LABEL_368;
      }

LABEL_65:
      FigAtomWriterEndAtom();
      goto LABEL_66;
    }

LABEL_68:
    FigAtomWriterEndAtom();
    FigAtomWriterEndAtom();
    if (appended)
    {
      goto LABEL_550;
    }

    memset(v209, 0, 24);
    memset(v208, 0, sizeof(v208));
    v222 = 0;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v20 = *(v1 + 8);
    LODWORD(v211) = 0;
    v193 = v1;
    if (!IFFInformationHasItemReferences(v20))
    {
      v26 = 0;
      v25 = 0;
      appended = 0;
      goto LABEL_113;
    }

    v21 = FigAtomWriterInitWithParent();
    if (v21 || (v21 = FigAtomWriterBeginAtom(), v21) || (LODWORD(v211) = 0, v21 = FigAtomWriterAppendData(), v21))
    {
      appended = v21;
      v26 = 0;
      v25 = 0;
      goto LABEL_113;
    }

    v22 = IFFInformationGetItemCount(v20);
    HasLargeItemReferenceIDs = IFFInformationHasLargeItemReferenceIDs(v20);
    if (v22 < 1)
    {
      v26 = 0;
      v25 = 0;
      appended = 0;
      goto LABEL_112;
    }

    v24 = HasLargeItemReferenceIDs;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    while (1)
    {
      v204[0] = 0;
      LODWORD(v210) = 0;
      LOBYTE(v200) = 0;
      ItemReferencesAtIndex = IFFInformationGetItemAtIndex(v20, v27, v204, &v210, &v200);
      if (ItemReferencesAtIndex)
      {
LABEL_111:
        appended = ItemReferencesAtIndex;
        goto LABEL_112;
      }

      if (v200 && IFFInformationGetItemReferenceCount(v204[0]) >= 1)
      {
        break;
      }

LABEL_108:
      if (++v27 == v22)
      {
        appended = 0;
        goto LABEL_112;
      }
    }

    v29 = 0;
    while (1)
    {
      LODWORD(v201) = 0;
      *v207 = 0;
      __s = 0;
      ItemReferencesAtIndex = IFFInformationGetItemReferencesAtIndex(v204[0], v29, &v201, v207, &__s, 0);
      if (ItemReferencesAtIndex)
      {
        goto LABEL_111;
      }

      if (*&v207[2])
      {
        appendGlobalMetadataAtom_cold_1(&v213);
        goto LABEL_554;
      }

      ItemReferencesAtIndex = FigAtomWriterInitWithParent();
      if (ItemReferencesAtIndex)
      {
        goto LABEL_111;
      }

      ItemReferencesAtIndex = FigAtomWriterBeginAtom();
      if (ItemReferencesAtIndex)
      {
        goto LABEL_111;
      }

      if (!v24)
      {
        break;
      }

      LODWORD(v213) = bswap32(v210);
      WORD2(v213) = bswap32(*v207) >> 16;
      ItemReferencesAtIndex = FigAtomWriterAppendData();
      if (ItemReferencesAtIndex)
      {
        goto LABEL_111;
      }

      v30 = *v207;
      if (*v207 < 5)
      {
        v26 = &v215;
        v31 = *v207;
      }

      else
      {
        v26 = malloc_type_malloc(4 * *v207, 0x100004052888210uLL);
        if (!v26)
        {
          appendGlobalMetadataAtom_cold_2(&v212);
          appended = v212;
          goto LABEL_112;
        }

        v31 = *v207;
      }

      if (v31 >= 1)
      {
        v34 = __s;
        v35 = v26;
        v36 = v31;
        do
        {
          v37 = *v34;
          v34 += 4;
          *v35 = bswap32(v37);
          v35 = (v35 + 4);
          --v36;
        }

        while (v36);
      }

      ItemReferencesAtIndex = FigAtomWriterAppendData();
      if (ItemReferencesAtIndex)
      {
        goto LABEL_111;
      }

      if (v30 >= 5)
      {
        free(v26);
        v26 = 0;
      }

LABEL_106:
      ItemReferencesAtIndex = FigAtomWriterEndAtom();
      if (ItemReferencesAtIndex)
      {
        goto LABEL_111;
      }

      if (++v29 >= IFFInformationGetItemReferenceCount(v204[0]))
      {
        goto LABEL_108;
      }
    }

    LOWORD(v212) = bswap32(v210) >> 16;
    WORD1(v212) = bswap32(*v207) >> 16;
    ItemReferencesAtIndex = FigAtomWriterAppendData();
    if (ItemReferencesAtIndex)
    {
      goto LABEL_111;
    }

    v32 = *v207;
    if (*v207 < 9)
    {
      v25 = &v215;
      v33 = *v207;
      goto LABEL_100;
    }

    v25 = malloc_type_malloc(2 * *v207, 0x1000040BDFB0063uLL);
    if (v25)
    {
      v33 = *v207;
LABEL_100:
      if (v33 >= 1)
      {
        v38 = __s;
        v39 = v25;
        v40 = v33;
        do
        {
          v41 = *v38;
          v38 += 4;
          *v39 = bswap32(v41) >> 16;
          v39 = (v39 + 2);
          --v40;
        }

        while (v40);
      }

      ItemReferencesAtIndex = FigAtomWriterAppendData();
      if (ItemReferencesAtIndex)
      {
        goto LABEL_111;
      }

      if (v32 >= 9)
      {
        free(v25);
        v25 = 0;
      }

      goto LABEL_106;
    }

    appendGlobalMetadataAtom_cold_3(&v213);
LABEL_554:
    appended = v213;
LABEL_112:
    v1 = v193;
LABEL_113:
    FigAtomWriterEndAtom();
    FigAtomWriterEndAtom();
    if (v25 != &v215 && v25)
    {
      free(v25);
    }

    if (v26 != &v215 && v26)
    {
      free(v26);
    }

    if (appended)
    {
      goto LABEL_550;
    }

    v218 = 0;
    v217 = 0u;
    v216 = 0u;
    v215 = 0u;
    v42 = FigAtomWriterInitWithParent();
    if (v42 || (v42 = FigAtomWriterBeginAtom(), v42))
    {
      appended = v42;
      goto LABEL_549;
    }

    v222 = 0;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v43 = *(v1 + 8);
    SharedItemPropertyAtIndex = FigAtomWriterInitWithParent();
    if (SharedItemPropertyAtIndex || (SharedItemPropertyAtIndex = FigAtomWriterBeginAtom(), SharedItemPropertyAtIndex))
    {
LABEL_560:
      appended = SharedItemPropertyAtIndex;
      goto LABEL_548;
    }

    SharedItemPropertyCount = IFFInformationGetSharedItemPropertyCount(v43);
    if (SharedItemPropertyCount >= 1)
    {
      v46 = SharedItemPropertyCount;
      v47 = 0;
      while (2)
      {
        LODWORD(v210) = 0;
        v211 = 0;
        SharedItemPropertyAtIndex = IFFInformationGetSharedItemPropertyAtIndex(v43, v47, &v210, &v211);
        if (SharedItemPropertyAtIndex)
        {
          goto LABEL_560;
        }

        switch(v210)
        {
          case 1:
            memset(v209, 0, 24);
            memset(v208, 0, sizeof(v208));
            LODWORD(__s) = 0;
            v204[0] = 0;
            *v207 = 0;
            ItemPropertyCodecConfiguration = IFFInformationGetItemPropertyCodecConfiguration(v211, &__s, v204, v207);
            if (!ItemPropertyCodecConfiguration)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
              if (!ItemPropertyCodecConfiguration)
              {
                ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
                if (!ItemPropertyCodecConfiguration)
                {
                  goto LABEL_298;
                }
              }
            }

            goto LABEL_546;
          case 2:
            memset(v209, 0, 24);
            memset(v208, 0, sizeof(v208));
            LODWORD(v204[1]) = 0;
            v204[0] = 0;
            *v207 = 0;
            LODWORD(__s) = 0;
            ItemPropertyCodecConfiguration = IFFInformationGetItemPropertySpatialExtents(v211, v207, &__s);
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_546;
            }

            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_546;
            }

            ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_546;
            }

            LODWORD(v204[0]) = 0;
            HIDWORD(v204[0]) = bswap32(*v207);
            LODWORD(v204[1]) = bswap32(__s);
            goto LABEL_298;
          case 3:
            memset(v209, 0, 24);
            memset(v208, 0, sizeof(v208));
            v204[0] = 0;
            *v207 = 0;
            LODWORD(__s) = 0;
            ItemPropertyCodecConfiguration = IFFInformationGetItemPropertySpatialExtents(v211, v207, &__s);
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_546;
            }

            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_546;
            }

            ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_546;
            }

            v204[0] = _byteswap_uint64(__PAIR64__(*v207, __s));
            goto LABEL_298;
          case 4:
            v99 = v211;
            v100 = 1852009592;
            goto LABEL_308;
          case 5:
            v99 = v211;
            v100 = 1886547814;
LABEL_308:
            SharedItemPropertyAtIndex = appendItemPropertyColorInformationAtom(v99, v100);
            if (SharedItemPropertyAtIndex)
            {
              goto LABEL_560;
            }

            goto LABEL_302;
          case 6:
            memset(v209, 0, 24);
            memset(v208, 0, sizeof(v208));
            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (!ItemPropertyCodecConfiguration)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (!ItemPropertyCodecConfiguration)
              {
                goto LABEL_298;
              }
            }

            goto LABEL_546;
          case 7:
            memset(v209, 0, 24);
            memset(v208, 0, sizeof(v208));
            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (!ItemPropertyCodecConfiguration)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (!ItemPropertyCodecConfiguration)
              {
                goto LABEL_298;
              }
            }

            goto LABEL_546;
          case 8:
            v59 = v211;
            memset(v209, 0, 24);
            memset(v208, 0, sizeof(v208));
            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (!ItemPropertyCodecConfiguration)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (!ItemPropertyCodecConfiguration)
              {
                v60 = v59[5].i8[0];
                LOBYTE(v204[0]) = 0;
                IFFItemPropertyGetCCLVDataLength(v60, v204);
                if (!ItemPropertyCodecConfiguration)
                {
                  goto LABEL_298;
                }
              }
            }

            goto LABEL_546;
          case 9:
            memset(v209, 0, 24);
            memset(v208, 0, sizeof(v208));
            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (!ItemPropertyCodecConfiguration)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (!ItemPropertyCodecConfiguration)
              {
                goto LABEL_298;
              }
            }

            goto LABEL_546;
          case 10:
            memset(v209, 0, 24);
            memset(v208, 0, sizeof(v208));
            *v204 = 0u;
            v205 = 0u;
            *v207 = 0;
            __s = 0;
            v212 = 0;
            v213 = 0;
            ItemPropertyCodecConfiguration = IFFInformationGetItemPropertyCleanAperture(v211, v207, &__s, &v213, &v212);
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_546;
            }

            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_546;
            }

            ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_546;
            }

            v71 = HIDWORD(*v207);
            v72 = bswap32(*v207);
            *v207 = __rev32(*v207);
            v73 = bswap32(__s);
            v74 = bswap32(HIDWORD(__s));
            __s = __rev32(__s);
            v75 = bswap32(v213);
            v76 = bswap32(HIDWORD(v213));
            v77 = HIDWORD(v212);
            v78 = bswap32(v212);
            v212 = __rev32(v212);
            v213 = __rev32(v213);
            v204[0] = __PAIR64__(bswap32(v71), v72);
            v204[1] = __PAIR64__(v74, v73);
            v205.i64[0] = __PAIR64__(v76, v75);
            v205.i64[1] = __PAIR64__(bswap32(v77), v78);
            goto LABEL_298;
          case 11:
            memset(v209, 0, 24);
            memset(v208, 0, sizeof(v208));
            LOBYTE(__s) = 0;
            *v207 = 0;
            ItemPropertyCodecConfiguration = IFFInformationGetItemPropertyRotationDegreesCCW(v211, v207);
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_546;
            }

            v57 = *v207;
            if ((*v207 & 0x80000000) != 0)
            {
              v57 = *v207 + 360 * vcvtps_s32_f32(*v207 / -360.0);
            }

            *v207 = v57 % 360;
            if ((((20389 * (v57 % 360) + 728) << 15) | ((20389 * (v57 % 360) + 728) >> 1)) < 0x2D9u)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
              if (ItemPropertyCodecConfiguration)
              {
                goto LABEL_546;
              }

              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (ItemPropertyCodecConfiguration)
              {
                goto LABEL_546;
              }

              v58 = (v207[0] / 90) & 3;
LABEL_215:
              LOBYTE(__s) = v58;
LABEL_298:
              v53 = FigAtomWriterAppendData();
LABEL_299:
              appended = v53;
              goto LABEL_300;
            }

            appendGlobalMetadataAtom_cold_6(v204);
            goto LABEL_315;
          case 12:
            memset(v209, 0, 24);
            memset(v208, 0, sizeof(v208));
            LOBYTE(__s) = 0;
            *v207 = 0;
            ItemPropertyCodecConfiguration = IFFInformationGetItemPropertyRotationDegreesCCW(v211, v207);
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_546;
            }

            if (*v207 < 2u)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
              if (ItemPropertyCodecConfiguration)
              {
                goto LABEL_546;
              }

              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (ItemPropertyCodecConfiguration)
              {
                goto LABEL_546;
              }

              v58 = v207[0] & 1;
              goto LABEL_215;
            }

            appendGlobalMetadataAtom_cold_5(v204);
LABEL_315:
            appended = LODWORD(v204[0]);
LABEL_300:
            FigAtomWriterEndAtom();
LABEL_301:
            if (appended)
            {
              goto LABEL_548;
            }

LABEL_302:
            if (++v47 == v46)
            {
              break;
            }

            continue;
          case 13:
            memset(v209, 0, 24);
            memset(v208, 0, sizeof(v208));
            v204[0] = 0;
            *v207 = 0;
            __s = 0;
            ItemPropertyCodecConfiguration = IFFInformationGetItemPropertyAuxiliaryType(v211, v204, v207, &__s);
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_546;
            }

            if (v204[0])
            {
              ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
              if (ItemPropertyCodecConfiguration)
              {
                goto LABEL_546;
              }

              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (ItemPropertyCodecConfiguration)
              {
                goto LABEL_546;
              }

              LODWORD(v212) = 0;
              ItemPropertyCodecConfiguration = FigAtomWriterAppendData();
              if (ItemPropertyCodecConfiguration)
              {
                goto LABEL_546;
              }

              strlen(v204[0]);
              ItemPropertyCodecConfiguration = FigAtomWriterAppendData();
              if (ItemPropertyCodecConfiguration)
              {
                goto LABEL_546;
              }

              if (!*v207 || !__s)
              {
                FigAtomWriterEndAtom();
                goto LABEL_302;
              }

              goto LABEL_298;
            }

            appendGlobalMetadataAtom_cold_4(&v213);
            appended = v213;
            goto LABEL_300;
          case 14:
            memset(v209, 0, 24);
            memset(v208, 0, sizeof(v208));
            LOBYTE(__s) = 0;
            v204[0] = 0;
            ItemPropertyCodecConfiguration = IFFInformationGetItemPropertyPixelInformation(v211, &__s, v204);
            if (!ItemPropertyCodecConfiguration)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
              if (!ItemPropertyCodecConfiguration)
              {
                ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
                if (!ItemPropertyCodecConfiguration)
                {
                  *v207 = 0;
                  ItemPropertyCodecConfiguration = FigAtomWriterAppendData();
                  if (!ItemPropertyCodecConfiguration)
                  {
                    ItemPropertyCodecConfiguration = FigAtomWriterAppendData();
                    if (!ItemPropertyCodecConfiguration)
                    {
                      goto LABEL_298;
                    }
                  }
                }
              }
            }

            goto LABEL_546;
          case 15:
          case 16:
            v208[0].i32[0] = bswap32(v211[5].u32[0]);
            SharedItemPropertyAtIndex = _appendUUIDItemPropertyHelper(v211, &v219, v208);
            if (SharedItemPropertyAtIndex)
            {
              goto LABEL_560;
            }

            goto LABEL_302;
          case 17:
            v49 = v211;
            memset(v209, 0, 24);
            memset(v208, 0, sizeof(v208));
            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_546;
            }

            if (v49[9].i8[1])
            {
              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (ItemPropertyCodecConfiguration)
              {
                goto LABEL_546;
              }
            }

            else
            {
              v204[0] = 0;
              v204[1] = 0;
              ItemPropertyCodecConfiguration = IFFInformationGetCFUUIDBytesForItemPropertyType(v49[1].i32[0], v204);
              if (ItemPropertyCodecConfiguration || (ItemPropertyCodecConfiguration = FigAtomWriterBeginUUIDAtom(), ItemPropertyCodecConfiguration))
              {
LABEL_546:
                appended = ItemPropertyCodecConfiguration;
LABEL_547:
                FigAtomWriterEndAtom();
LABEL_548:
                FigAtomWriterEndAtom();
                goto LABEL_549;
              }
            }

            if (v49[5].i32[0])
            {
              v83 = 1;
            }

            else
            {
              v83 = v49[9].i8[0] != 0;
            }

            if (v49[5].i32[1])
            {
              v84 = 1;
            }

            else
            {
              v84 = v49[9].i8[0] != 0;
            }

            if (v49[6].i32[0])
            {
              v85 = 1;
            }

            else
            {
              v85 = v49[9].i8[0] != 0;
            }

            v86 = v49[6].i32[1] || v49[7].i32[0] || v49[7].i32[1] || v49[9].i8[0] != 0;
            v87 = v49[8].i8[0] != 0;
            if (!v49[8].i8[0] && v86)
            {
              v87 = v49[9].i8[0] != 0;
            }

            v192 = v46;
            if (v49[8].i32[1])
            {
              if (v84)
              {
                v88 = 2;
              }

              else
              {
                v88 = 0;
              }

              if (v85)
              {
                v89 = 4;
              }

              else
              {
                v89 = 0;
              }

              if (v86)
              {
                v90 = 8;
              }

              else
              {
                v90 = 0;
              }

              if (v87)
              {
                v91 = 16;
              }

              else
              {
                v91 = 0;
              }
            }

            else
            {
              v92 = v49[9].u8[0];
              if (v84)
              {
                v88 = 2;
              }

              else
              {
                v88 = 0;
              }

              if (v85)
              {
                v89 = 4;
              }

              else
              {
                v89 = 0;
              }

              if (v86)
              {
                v90 = 8;
              }

              else
              {
                v90 = 0;
              }

              if (v87)
              {
                v91 = 16;
              }

              else
              {
                v91 = 0;
              }

              if (!v49[9].i8[0])
              {
                v93 = 0;
LABEL_271:
                LODWORD(__s) = (v90 + v89 + v88 + v83 + v92 + v91) << 24;
                v94 = FigAtomWriterAppendData();
                if (v94 || v83 && (LODWORD(v204[0]) = bswap32(v49[5].u32[0]), v94 = FigAtomWriterAppendData(), v94) || v84 && (LODWORD(v204[0]) = bswap32(v49[5].u32[1]), v94 = FigAtomWriterAppendData(), v94) || v85 && (LODWORD(v204[0]) = bswap32(v49[6].u32[0]), v94 = FigAtomWriterAppendData(), v94))
                {
                  appended = v94;
                  goto LABEL_547;
                }

                if (v86)
                {
                  *&v207[4] = 0;
                  *v207 = 0;
                  LODWORD(v204[1]) = 0;
                  v204[0] = 0;
                  v1 = v193;
                  v95 = bswap32(v49[6].u32[1]);
                  if (v87)
                  {
                    LODWORD(v204[0]) = v95;
                    *(v204 + 4) = vrev32_s8(v49[7]);
                  }

                  else
                  {
                    *v207 = HIWORD(v95);
                    *&v207[2] = bswap32(v49[7].u16[0]) >> 16;
                    *&v207[4] = bswap32(v49[7].u16[2]) >> 16;
                  }

                  appended = FigAtomWriterAppendData();
                  if (appended)
                  {
                    v96 = 0;
                  }

                  else
                  {
                    v96 = v93;
                  }

                  if ((v96 & 1) == 0)
                  {
                    goto LABEL_289;
                  }
                }

                else
                {
                  v1 = v193;
                  if ((v93 & 1) == 0)
                  {
                    FigAtomWriterEndAtom();
                    v46 = v192;
                    goto LABEL_302;
                  }
                }

                LODWORD(v204[0]) = bswap32(v49[8].u32[1]);
                appended = FigAtomWriterAppendData();
LABEL_289:
                FigAtomWriterEndAtom();
                v46 = v192;
                goto LABEL_301;
              }
            }

            v92 = 32;
            v93 = 1;
            goto LABEL_271;
          case 18:
            v79 = v211;
            memset(v209, 0, 24);
            memset(v208, 0, sizeof(v208));
            v53 = FigAtomWriterInitWithParent();
            if (v53)
            {
              goto LABEL_299;
            }

            v80 = v79[7].u8[5];
            if (v80 >= 0x20)
            {
              goto LABEL_224;
            }

            v81 = (v79[7].i8[4] != 0) | (v80 << 8);
            if (!v79[7].i8[4])
            {
              goto LABEL_292;
            }

            v82 = v79[7].u8[6];
            if (v82 >= 0x20)
            {
LABEL_224:
              fig_log_get_emitter();
              appended = FigSignalErrorAtGM();
              goto LABEL_301;
            }

            v81 |= v82 << 16;
LABEL_292:
            v97.i32[0] = v81;
            v97.i32[1] = v79[5].i32[0];
            v97.u64[1] = v79[6];
            *v204 = vrev32q_s8(v97);
            v205.i64[0] = __PAIR64__(bswap32(v79[7].u32[0]), bswap32(v79[5].u32[1]));
            if (v79[7].i8[7])
            {
              v53 = FigAtomWriterBeginAtom();
              if (!v53)
              {
                goto LABEL_298;
              }

              goto LABEL_299;
            }

            *&v207[8] = 0;
            *v207 = 0;
            CFUUIDBytesForItemPropertyType = IFFInformationGetCFUUIDBytesForItemPropertyType(v79[1].i32[0], v207);
            if (CFUUIDBytesForItemPropertyType || (CFUUIDBytesForItemPropertyType = FigAtomWriterBeginUUIDAtom(), CFUUIDBytesForItemPropertyType))
            {
              appended = CFUUIDBytesForItemPropertyType;
              v1 = v193;
              goto LABEL_300;
            }

            goto LABEL_298;
          case 19:
            v50 = v211;
            IsDisplayModeSwitchInProgress = FPSupport_IsDisplayModeSwitchInProgress();
            memset(v209, 0, 24);
            memset(v208, 0, sizeof(v208));
            v52 = bswap32(v50[5].u32[0]);
            *v207 = v52;
            if (!IsDisplayModeSwitchInProgress)
            {
              v53 = _appendUUIDItemPropertyHelper(v50, &v219, v207);
              goto LABEL_299;
            }

            LODWORD(v204[0]) = 0;
            HIDWORD(v204[0]) = v52;
            v53 = FigAtomWriterInitWithParent();
            if (v53)
            {
              goto LABEL_299;
            }

            v53 = FigAtomWriterBeginAtom();
            if (v53)
            {
              goto LABEL_299;
            }

            goto LABEL_298;
          case 20:
            v61 = v211;
            memset(v209, 0, 24);
            memset(v208, 0, sizeof(v208));
            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_546;
            }

            v204[0] = 0;
            v204[1] = 0;
            ItemPropertyCodecConfiguration = IFFInformationGetCFUUIDBytesForItemPropertyType(v61[1].i32[0], v204);
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_546;
            }

            ItemPropertyCodecConfiguration = FigAtomWriterBeginUUIDAtom();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_546;
            }

            *v207 = 0;
            ItemPropertyCodecConfiguration = FigAtomWriterAppendData();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_546;
            }

            LOBYTE(v213) = v61[5].i8[0] - 1;
            ItemPropertyCodecConfiguration = FigAtomWriterAppendData();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_546;
            }

            v191 = v43;
            v62 = v46;
            v63 = 0;
            v64 = -1;
            do
            {
              LOWORD(__s) = 0;
              v65 = *&v61[6] + v63;
              LOBYTE(__s) = *v65;
              v66 = *(v65 + 1);
              BYTE1(__s) = v66;
              if (*(v65 + 8))
              {
                Length = CFStringGetLength(*(v65 + 8));
                v68 = Length > 0;
                if (Length <= 0)
                {
                  v69 = 0;
                }

                else
                {
                  v69 = 0x80;
                }

                v66 = BYTE1(__s);
              }

              else
              {
                v68 = 0;
                v69 = 0;
              }

              BYTE1(__s) = v69 | v66;
              ItemPropertyCodecConfiguration = FigAtomWriterAppendData();
              if (ItemPropertyCodecConfiguration)
              {
                goto LABEL_546;
              }

              if (v68)
              {
                v204[0] = 0;
                CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
                strlen(CStringPtrAndBufferToFree);
                appended = FigAtomWriterAppendData();
                free(v204[0]);
                if (appended)
                {
                  goto LABEL_547;
                }
              }

              ++v64;
              v63 += 16;
            }

            while (v64 < v213);
            FigAtomWriterEndAtom();
            v1 = v193;
            v46 = v62;
            v43 = v191;
            goto LABEL_302;
          case 21:
            memset(v209, 0, 24);
            memset(v208, 0, sizeof(v208));
            LOWORD(v204[0]) = bswap32(v211[5].u16[0]) >> 16;
            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (!ItemPropertyCodecConfiguration)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (!ItemPropertyCodecConfiguration)
              {
                goto LABEL_298;
              }
            }

            goto LABEL_546;
          case 23:
            v54 = 0;
            memset(v209, 0, 24);
            memset(v208, 0, sizeof(v208));
            *(&v204[1] + 1) = 0;
            *(v204 + 1) = 0;
            *&v207[5] = 0;
            *&v207[1] = 0;
            LOBYTE(v204[0]) = 1;
            v55 = v211 + 5;
            v207[0] = 0;
            do
            {
              v56 = bswap32(v55->u32[v54]);
              *(v204 + 4 * v54 + 1) = v56;
              *&v207[2 * v54++ + 1] = HIWORD(v56);
            }

            while (v54 != 3);
            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (!ItemPropertyCodecConfiguration)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (!ItemPropertyCodecConfiguration)
              {
                goto LABEL_298;
              }
            }

            goto LABEL_546;
          default:
            fig_log_get_emitter();
            appended = FigSignalErrorAtGM();
            FigAtomWriterEndAtom();
            if (appended)
            {
              goto LABEL_549;
            }

            goto LABEL_318;
        }

        break;
      }
    }

    FigAtomWriterEndAtom();
LABEL_318:
    memset(v209, 0, 24);
    memset(v208, 0, sizeof(v208));
    v204[0] = 0;
    v101 = *(v1 + 8);
    v102 = IFFInformationGetItemCount(v101);
    if (v102 < 1)
    {
      v109 = 0;
      v110 = 0;
      appended = 0;
LABEL_372:
      FigAtomWriterEndAtom();
      if (v110 != &v219 && v110)
      {
        free(v110);
      }

      if (v109 != &v219 && v109)
      {
        free(v109);
      }

      FigAtomWriterEndAtom();
      v119 = v193;
      if (appended)
      {
        goto LABEL_550;
      }

      memset(v209, 0, 24);
      memset(v208, 0, sizeof(v208));
      *&v219 = 0;
      ItemHandler = IFFInformationGetGroupsList();
      if (ItemHandler)
      {
        goto LABEL_561;
      }

      if (v219)
      {
        Count = CFArrayGetCount(v219);
        if (Count >= 1)
        {
          v121 = Count;
          ItemHandler = FigAtomWriterInitWithParent();
          if (!ItemHandler)
          {
            ItemHandler = FigAtomWriterBeginAtom();
            if (!ItemHandler)
            {
              v122 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v219, v122);
                v218 = 0;
                v217 = 0u;
                v216 = 0u;
                v215 = 0u;
                v196 = 0;
                __s = 0;
                v124 = *(ValueAtIndex + 6);
                if (!v124 || (v125 = CFArrayGetCount(v124), v126 = v125, (v127 = v125) == 0))
                {
LABEL_400:
                  FigAtomWriterEndAtom();
                  v119 = v193;
                  goto LABEL_401;
                }

                if (*(ValueAtIndex + 6) != 1937007986)
                {
                  goto LABEL_393;
                }

                if ((v125 & 0xFFFFFFFE) == 2)
                {
                  break;
                }

                v131 = 1700;
LABEL_405:
                v119 = v193;
                if (!appendGlobalMetadataAtom_cold_10(v131, &v215, &__s, v204))
                {
                  appended = LODWORD(v204[0]);
LABEL_549:
                  FigAtomWriterEndAtom();
                  goto LABEL_550;
                }

LABEL_401:
                if (++v122 == v121)
                {
                  goto LABEL_408;
                }
              }

              if (v125 == 3)
              {
                v128 = *(ValueAtIndex + 8);
                v129 = FigAtomWriterInitWithParent();
                if (!v129)
                {
                  v129 = FigAtomWriterBeginUUIDAtom();
                  if (!v129)
                  {
LABEL_396:
                    __s = __PAIR64__(bswap32(*(ValueAtIndex + 4)), bswap32(v128 & 0xFFFFFF));
                    v196 = bswap32(v126);
                    v129 = FigAtomWriterAppendData();
                    if (!v129)
                    {
                      v130 = 0;
                      while (1)
                      {
                        LODWORD(v204[0]) = bswap32(*(CFArrayGetValueAtIndex(*(ValueAtIndex + 6), v130) + 10));
                        v129 = FigAtomWriterAppendData();
                        if (v129)
                        {
                          break;
                        }

                        if (v127 == ++v130)
                        {
                          goto LABEL_400;
                        }
                      }
                    }
                  }
                }

LABEL_407:
                appended = v129;
                FigAtomWriterEndAtom();
                goto LABEL_549;
              }

LABEL_393:
              if (!(v125 >> 31))
              {
                v129 = FigAtomWriterInitWithParent();
                if (!v129)
                {
                  v129 = FigAtomWriterBeginAtom();
                  v128 = 0;
                  if (!v129)
                  {
                    goto LABEL_396;
                  }
                }

                goto LABEL_407;
              }

              v131 = 1706;
              goto LABEL_405;
            }
          }

LABEL_561:
          appended = ItemHandler;
          goto LABEL_549;
        }
      }

LABEL_408:
      FigAtomWriterEndAtom();
      v222 = 0;
      v220 = 0u;
      v221 = 0u;
      v219 = 0u;
      v132 = *(v119 + 8);
      if (!IFFInformationUsesItemExtentConstructionMethod(v132))
      {
        goto LABEL_493;
      }

      ItemType = FigAtomWriterInitWithParent();
      if (ItemType || (ItemType = FigAtomWriterBeginAtom(), ItemType))
      {
LABEL_555:
        appended = ItemType;
        goto LABEL_549;
      }

      v134 = IFFInformationGetItemCount(v132);
      if (v134 < 1)
      {
LABEL_493:
        FigAtomWriterEndAtom();
        v166 = v193;
LABEL_494:
        memset(v209, 0, 24);
        memset(v208, 0, sizeof(v208));
        v167 = *(v166 + 8);
        v168 = IFFInformationGetItemCount(v167);
        if (v168 < 1)
        {
LABEL_542:
          v177 = 0;
          appended = 0;
          goto LABEL_543;
        }

        v169 = v168;
        v170 = 0;
        v171 = 0;
        v172 = 0;
        while (1)
        {
          *&v219 = 0;
          LODWORD(v212) = 0;
          LOBYTE(v211) = 0;
          v204[0] = 0;
          *v207 = 0;
          ItemExtents = IFFInformationGetItemAtIndex(v167, v172, &v219, &v212, &v211);
          if (ItemExtents)
          {
            goto LABEL_512;
          }

          if (v211)
          {
            ItemExtents = IFFInformationGetItemExtents(v219, 0, v204, 0, v207, 0);
            if (ItemExtents)
            {
              goto LABEL_512;
            }

            if (v204[0])
            {
              appendGlobalMetadataAtom_cold_17(&v213);
              appended = v213;
LABEL_513:
              v177 = 0;
LABEL_543:
              FigAtomWriterEndAtom();
              if (v177 != &v219 && v177)
              {
                free(v177);
              }

              goto LABEL_550;
            }

            if (*v207 >= 1)
            {
              ++v171;
              v170 = (v170 | WORD1(v212)) != 0;
            }
          }

          if (v169 == ++v172)
          {
            if (!v171)
            {
              goto LABEL_542;
            }

            ItemExtents = FigAtomWriterInitWithParent();
            if (!ItemExtents)
            {
              ItemExtents = FigAtomWriterBeginAtom();
              if (!ItemExtents)
              {
                v174 = IFFInformationUsesItemExtentConstructionMethod(v167);
                v175 = bswap32(v171);
                if (v170 || HIWORD(v171))
                {
                  v176 = 2;
                  LODWORD(v219) = 2;
                  WORD2(v219) = 68;
                  *(&v219 + 6) = v175;
                }

                else
                {
                  v176 = v174 != 0;
                  LODWORD(v219) = v176;
                  WORD2(v219) = 68;
                  WORD3(v219) = HIWORD(v175);
                }

                ItemExtents = FigAtomWriterAppendData();
                if (!ItemExtents)
                {
                  v178 = 0;
                  while (1)
                  {
                    *v207 = 0;
                    LOBYTE(v201) = 0;
                    LODWORD(v211) = 0;
                    LODWORD(v210) = 0;
                    v212 = 0;
                    v213 = 0;
                    ItemExtents = IFFInformationGetItemAtIndex(v167, v178, v207, &v210, &v201);
                    if (ItemExtents)
                    {
                      break;
                    }

                    if (v201)
                    {
                      ItemExtents = IFFInformationGetItemExtents(*v207, &v211, 0, 0, &v213, &v212);
                      if (ItemExtents)
                      {
                        break;
                      }

                      if (v213)
                      {
                        if (v176 == 2)
                        {
                          LODWORD(v204[0]) = bswap32(v210);
                          HIDWORD(v204[0]) = (v211 & 0xF) << 8;
                          LOWORD(v204[1]) = bswap32(v213) >> 16;
                        }

                        else if (v176 == 1)
                        {
                          LOWORD(v204[0]) = bswap32(v210) >> 16;
                          *(v204 + 2) = (v211 & 0xF) << 8;
                          HIWORD(v204[0]) = bswap32(v213) >> 16;
                        }

                        else
                        {
                          LODWORD(v204[0]) = bswap32(v210) >> 16;
                          WORD2(v204[0]) = bswap32(v213) >> 16;
                        }

                        ItemExtents = FigAtomWriterAppendData();
                        if (ItemExtents)
                        {
                          break;
                        }

                        v179 = v213;
                        if (v213 >= 5)
                        {
                          v177 = malloc_type_malloc(8 * v213, 0x923BCD4AuLL);
                          if (!v177)
                          {
                            appendGlobalMetadataAtom_cold_18(v204);
LABEL_564:
                            appended = LODWORD(v204[0]);
                            goto LABEL_543;
                          }

                          v180 = v213;
                        }

                        else
                        {
                          v177 = &v219;
                          v180 = v213;
                        }

                        if (v180 >= 1)
                        {
                          v181 = v177 + 1;
                          v182 = (v212 + 8);
                          while (1)
                          {
                            if (v211)
                            {
                              v183 = 0;
                            }

                            else
                            {
                              v183 = *(v166 + 16);
                            }

                            v184 = *(v182 - 1) + v183;
                            if (HIDWORD(v184))
                            {
                              appendGlobalMetadataAtom_cold_20(v204);
                              goto LABEL_564;
                            }

                            v185 = *v182;
                            if (HIDWORD(*v182))
                            {
                              break;
                            }

                            *(v181 - 1) = bswap32(v184);
                            *v181 = bswap32(v185);
                            v181 += 2;
                            v182 += 16;
                            if (!--v180)
                            {
                              goto LABEL_537;
                            }
                          }

                          appendGlobalMetadataAtom_cold_19(v204);
                          goto LABEL_564;
                        }

LABEL_537:
                        v186 = FigAtomWriterAppendData();
                        appended = v186;
                        if (v179 < 5 || v186)
                        {
                          if (v186)
                          {
                            goto LABEL_543;
                          }
                        }

                        else
                        {
                          free(v177);
                        }
                      }
                    }

                    if (++v178 == v169)
                    {
                      goto LABEL_542;
                    }
                  }
                }
              }
            }

LABEL_512:
            appended = ItemExtents;
            goto LABEL_513;
          }
        }
      }

      v135 = v134;
      v136 = 0;
      while (1)
      {
        v199 = 0;
        v200 = 0;
        v198 = 0;
        v197 = 0;
        ItemType = IFFInformationGetItemAtIndex(v132, v136, &v200, 0, &v198);
        if (ItemType)
        {
          goto LABEL_555;
        }

        if (v198)
        {
          ItemType = IFFInformationGetItemExtents(v200, &v199 + 1, &v197, 0, 0, 0);
          if (ItemType)
          {
            goto LABEL_555;
          }

          if (v197)
          {
LABEL_558:
            fig_log_get_emitter();
            appended = FigSignalErrorAtGM();
            FigAtomWriterEndAtom();
            v166 = v193;
            if (appended)
            {
              goto LABEL_550;
            }

            goto LABEL_494;
          }

          if (HIDWORD(v199) == 1)
          {
            ItemType = IFFInformationGetItemType(v200, &v199);
            if (ItemType)
            {
              goto LABEL_555;
            }

            switch(v199)
            {
              case 0x746D6170:
                v152 = v200;
                LODWORD(v201) = 0;
                v212 = 0;
                v213 = 0;
                v210 = 0;
                v211 = 0;
                ItemType = IFFInformationGetItemExtents(v200, &v201, &v213, 0, &v212, &v211);
                if (ItemType)
                {
                  goto LABEL_555;
                }

                if (v212 < 1 || v213)
                {
                  goto LABEL_486;
                }

                ItemType = FigAtomWriterGetAtomDataSize();
                if (ItemType)
                {
                  goto LABEL_555;
                }

                memset(v209, 0, sizeof(v209));
                memset(v208, 0, sizeof(v208));
                ItemType = IFFInformationGetItemBodyImageDerivationTonemap(v152, v208);
                if (ItemType)
                {
                  goto LABEL_555;
                }

                v153 = v208[0].u8[4];
                *v207 = 0;
                v207[4] = 0;
                v207[5] = ((v208[0].i8[4] != 0) << 7) | ((v208[0].i8[5] != 0) << 6);
                *&v207[6] = vrev32q_s8(*(v208 + 8));
                v154 = FigAtomWriterAppendData();
                if (v154)
                {
LABEL_509:
                  appended = v154;
                  goto LABEL_549;
                }

                v155 = 0;
                v156 = 0;
                do
                {
                  v157 = vrev32q_s8(*(v209 + v155 + 8));
                  *v204 = vrev32q_s8(*(&v208[1] + v155 + 8));
                  v205 = v157;
                  v206 = vrev32_s8(*(&v209[1] + v155 + 8));
                  v154 = FigAtomWriterAppendData();
                  if (v154)
                  {
                    goto LABEL_509;
                  }

                  v155 += 40;
                  if (!v153)
                  {
                    break;
                  }
                }

                while (v156++ < 2);
                v159 = v211;
                *v211 = v210;
                v159[1] = (v155 + 22);
                break;
              case 0x696F766C:
                v140 = v200;
                v208[0].i64[0] = 0;
                v203 = 0;
                v204[0] = 0;
                v202 = 0;
                *v207 = 0;
                v212 = 0;
                v213 = 0;
                v210 = 0;
                v211 = 0;
                v141 = IFFInformationGetItemExtents(v200, &v202, v207, 0, &v213, &v212);
                if (v141)
                {
                  appended = v141;
                  goto LABEL_557;
                }

                if (v213 <= 0)
                {
                  appendGlobalMetadataAtom_cold_16(&v214);
                  appended = v214;
                }

                else
                {
                  if (*v207)
                  {
                    appendGlobalMetadataAtom_cold_11(&v214);
                  }

                  else
                  {
                    AtomDataSize = FigAtomWriterGetAtomDataSize();
                    if (AtomDataSize || (AtomDataSize = IFFInformationGetItemBodyImageDerivationOverlay(v140, v208, &v203 + 1, &v203, v204), AtomDataSize))
                    {
LABEL_556:
                      appended = AtomDataSize;
LABEL_557:
                      free(v210);
                      goto LABEL_549;
                    }

                    if (v208[0].i64[0])
                    {
                      if (v204[0])
                      {
                        v201 = 0;
                        AtomDataSize = IFFInformationGetItemReferencesOfType(v140, 1684630887, &v201, 0, 0);
                        if (AtomDataSize)
                        {
                          goto LABEL_556;
                        }

                        if (HIWORD(v203) || WORD1(v203))
                        {
                          v143 = 8 * v201 + 18;
                          v160 = malloc_type_calloc(1uLL, v143, 0x722DA814uLL);
                          v210 = v160;
                          if (v160)
                          {
                            v161 = 0;
                            *v160 = 256;
                            v162 = v208[0].i64[0];
                            do
                            {
                              v160[v161 + 1] = bswap32(*(v162 + v161 * 2)) >> 16;
                              ++v161;
                            }

                            while (v161 != 4);
                            *(v160 + 5) = bswap32(HIDWORD(v203));
                            *(v160 + 7) = bswap32(v203);
                            if (v201 > 0)
                            {
                              v163 = 0;
                              do
                              {
                                *&v160[2 * v163 + 9] = bswap32(*&v204[0][4 * v163]);
                                ++v163;
                              }

                              while (v163 < 2 * v201);
                            }

                            goto LABEL_471;
                          }

                          appendGlobalMetadataAtom_cold_13(&v214);
                        }

                        else
                        {
                          v143 = 4 * v201 + 14;
                          v144 = malloc_type_calloc(1uLL, v143, 0xEB9A93DAuLL);
                          v210 = v144;
                          if (v144)
                          {
                            *v144 = 0;
                            v145 = v208[0].i64[0];
                            for (j = 1; j != 5; ++j)
                            {
                              v147 = *v145++;
                              v144[j] = bswap32(v147) >> 16;
                            }

                            v144[5] = bswap32(WORD2(v203)) >> 16;
                            v144[6] = bswap32(v203) >> 16;
                            if (v201 > 0)
                            {
                              v148 = v144 + 7;
                              v149 = 2 * v201;
                              v150 = v204[0];
                              if (2 * v201 <= 1)
                              {
                                v149 = 1;
                              }

                              do
                              {
                                v151 = *v150;
                                v150 += 4;
                                *v148++ = bswap32(v151) >> 16;
                                --v149;
                              }

                              while (v149);
                            }

LABEL_471:
                            AtomDataSize = FigAtomWriterAppendData();
                            if (AtomDataSize)
                            {
                              goto LABEL_556;
                            }

                            v164 = v212;
                            *v212 = v211;
                            *(v164 + 8) = v143;
                            free(v210);
                            break;
                          }

                          appendGlobalMetadataAtom_cold_12(&v214);
                        }
                      }

                      else
                      {
                        appendGlobalMetadataAtom_cold_14(&v214);
                      }
                    }

                    else
                    {
                      appendGlobalMetadataAtom_cold_15(&v214);
                    }
                  }

                  appended = v214;
                }

                free(v210);
                if (appended)
                {
                  goto LABEL_549;
                }

                break;
              case 0x67726964:
                v137 = v200;
                LOWORD(v214) = 0;
                WORD2(v203) = 0;
                LODWORD(v211) = 0;
                LODWORD(v210) = 0;
                LODWORD(v201) = 0;
                v204[0] = 0;
                *v207 = 0;
                v212 = 0;
                v213 = 0;
                ItemType = IFFInformationGetItemExtents(v200, &v201, v204, 0, v207, &v213);
                if (ItemType)
                {
                  goto LABEL_555;
                }

                if (*v207 >= 1 && !v204[0])
                {
                  ItemType = FigAtomWriterGetAtomDataSize();
                  if (ItemType)
                  {
                    goto LABEL_555;
                  }

                  ItemType = IFFInformationGetItemBodyImageDerivationGrid(v137, &v203 + 2, &v214, &v211, &v210);
                  if (ItemType)
                  {
                    goto LABEL_555;
                  }

                  if (v214 && WORD2(v203) && v214 <= 0x100u && WORD2(v203) <= 0x100u)
                  {
                    v138 = bswap32(v211);
                    if (v211 >> 16 || v210 >> 16)
                    {
                      v208[0].i16[0] = 256;
                      v208[0].i8[2] = v214 - 1;
                      v208[0].i8[3] = BYTE4(v203) - 1;
                      *(v208[0].i64 + 4) = __PAIR64__(bswap32(v210), v138);
                      ItemType = FigAtomWriterAppendData();
                      v139 = 12;
                      if (ItemType)
                      {
                        goto LABEL_555;
                      }
                    }

                    else
                    {
                      v208[0].i16[0] = 0;
                      v208[0].i8[2] = v214 - 1;
                      v208[0].i8[3] = BYTE4(v203) - 1;
                      v208[0].i16[2] = HIWORD(v138);
                      v208[0].i16[3] = bswap32(v210) >> 16;
                      ItemType = FigAtomWriterAppendData();
                      v139 = 8;
                      if (ItemType)
                      {
                        goto LABEL_555;
                      }
                    }

                    v165 = v213;
                    *v213 = v212;
                    *(v165 + 8) = v139;
                    break;
                  }
                }

LABEL_486:
                fig_log_get_emitter();
                ItemType = FigSignalErrorAtGM();
                if (ItemType)
                {
                  goto LABEL_555;
                }

                break;
              default:
                goto LABEL_558;
            }
          }
        }

        if (++v136 == v135)
        {
          goto LABEL_493;
        }
      }
    }

    v103 = v102;
    v104 = 0;
    v105 = 0;
    for (k = 0; k != v103; ++k)
    {
      *&v219 = 0;
      LOBYTE(__s) = 0;
      *v207 = 0;
      v107 = IFFInformationGetItemAtIndex(v101, k, &v219, v207, &__s);
      if (v107)
      {
        goto LABEL_332;
      }

      if (__s || *(v219 + 17))
      {
        if (*&v207[2])
        {
          v104 = 1;
        }

        if (IFFInformationGetItemPropertyCount(v219) > 0)
        {
          ++v105;
        }
      }
    }

    if (v105 < 1)
    {
      v109 = 0;
      v110 = 0;
LABEL_365:
      appended = 0;
      goto LABEL_372;
    }

    v108 = IFFInformationGetSharedItemPropertyCount(v101);
    v107 = FigAtomWriterInitWithParent();
    if (v107 || (v107 = FigAtomWriterBeginAtom(), v107) || (v204[0] = _byteswap_uint64(__PAIR64__((v108 > 128) | ((v104 != 0) << 24), v105)), v107 = FigAtomWriterAppendData(), v107))
    {
LABEL_332:
      appended = v107;
      v109 = 0;
      v110 = 0;
      goto LABEL_372;
    }

    v110 = 0;
    v109 = 0;
    v111 = 0;
    v188 = v101;
    v189 = v108 > 128;
    v112 = 0x10000;
    if (v108 > 128)
    {
      v112 = 256;
    }

    v190 = v112;
    while (1)
    {
      *v207 = 0;
      LOBYTE(v211) = 0;
      LODWORD(v212) = 0;
      v113 = IFFInformationGetItemAtIndex(v101, v111, v207, &v212, &v211);
      if (v113)
      {
LABEL_366:
        appended = v113;
        goto LABEL_372;
      }

      if (!v211 && !*(*v207 + 17))
      {
        goto LABEL_364;
      }

      ItemPropertyCount = IFFInformationGetItemPropertyCount(*v207);
      if (!ItemPropertyCount)
      {
        goto LABEL_364;
      }

      v115 = ItemPropertyCount;
      if (ItemPropertyCount >= v190)
      {
        appendGlobalMetadataAtom_cold_7(&__s);
        goto LABEL_573;
      }

      if (v104)
      {
        LODWORD(__s) = bswap32(v212);
        BYTE4(__s) = ItemPropertyCount;
      }

      else
      {
        LOWORD(__s) = bswap32(v212) >> 16;
        BYTE2(__s) = ItemPropertyCount;
      }

      v113 = FigAtomWriterAppendData();
      if (v113)
      {
        goto LABEL_366;
      }

      if (v108 <= 128)
      {
        if (v115 < 17)
        {
          v110 = &v219;
LABEL_355:
          if (v115 < 1)
          {
            goto LABEL_363;
          }

          goto LABEL_356;
        }

        v110 = malloc_type_malloc(v115 << v189, 0x6283915AuLL);
        if (!v110)
        {
          appendGlobalMetadataAtom_cold_8(&__s);
          goto LABEL_573;
        }
      }

      else
      {
        if (v115 < 9)
        {
          v109 = &v219;
          goto LABEL_355;
        }

        v109 = malloc_type_malloc(v115 << v189, 0x17025EE8uLL);
        if (!v109)
        {
          appendGlobalMetadataAtom_cold_9(&__s);
LABEL_573:
          appended = __s;
          goto LABEL_372;
        }
      }

LABEL_356:
      for (m = 0; m != v115; ++m)
      {
        __s = 0;
        v213 = 0;
        LOBYTE(v210) = 0;
        ItemPropertyByIndex = IFFInformationGetItemPropertyByIndex(*v207, m, &__s, &v210, &v213);
        if (ItemPropertyByIndex)
        {
          appended = ItemPropertyByIndex;
          goto LABEL_372;
        }

        v118 = v213 + 1;
        if (v108 <= 128)
        {
          *(v110 + m) = v118 & 0x7F | ((v210 != 0) << 7);
        }

        else
        {
          *(v109 + m) = __rev16(v118 & 0x7FFF | ((v210 != 0) << 15));
        }
      }

      v101 = v188;
LABEL_363:
      v113 = FigAtomWriterAppendData();
      if (v113)
      {
        goto LABEL_366;
      }

LABEL_364:
      if (++v111 == v103)
      {
        goto LABEL_365;
      }
    }
  }

LABEL_550:
  FigAtomWriterEndAtom();
  return appended;
}

uint64_t FigSampleBufferProcessorCreateForMakingDataReady(uint64_t a1, void *a2)
{
  if (a2)
  {
    FigSampleBufferProcessorGetClassID();
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      *a2 = 0;
    }
  }

  else
  {
    FigSampleBufferProcessorCreateForMakingDataReady_cold_1(&v5);
    return v5;
  }

  return v3;
}

uint64_t sbufmakeready_Finalize(uint64_t result)
{
  if (result)
  {
    v1 = result;
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 8);
    result = VTable + 8;
    v4 = *(v3 + 24);
    if (v4)
    {

      return v4(v1);
    }
  }

  return result;
}

__CFString *sbufmakeready_CopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_MakeDataReady %p>", a1);
  return Mutable;
}

uint64_t sbufmakeready_CopyProperty(int a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  if (a4)
  {
    if (cf1)
    {
      if (CFEqual(cf1, @"CanProcessUnreadySampleBuffers"))
      {
        if (*MEMORY[0x1E695E4D0])
        {
          v5 = CFRetain(*MEMORY[0x1E695E4D0]);
        }

        else
        {
          v5 = 0;
        }

        result = 0;
        *a4 = v5;
      }

      else
      {
        return 4294954509;
      }
    }

    else
    {
      sbufmakeready_CopyProperty_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    sbufmakeready_CopyProperty_cold_2(&v8);
    return v8;
  }

  return result;
}

uint64_t sbufmakeready_SetOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  DerivedStorage[1] = a3;
  return 0;
}

uint64_t sbufmakeready_ProcessSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  statusOut = 0;
  CMSampleBufferMakeDataReady(a2);
  CMSampleBufferHasDataFailed(a2, &statusOut);
  if (*DerivedStorage)
  {
    (*DerivedStorage)(*(DerivedStorage + 8), statusOut, a2);
  }

  return statusOut;
}

dispatch_queue_t aig_createNotificationQueueOnce()
{
  result = dispatch_queue_create("com.apple.coremedia.assetimagegenerator.notifications", 0);
  sAIGNotificationQueue = result;
  return result;
}

uint64_t aig_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    *DerivedStorage = 1;
    v2 = CMBaseObjectGetDerivedStorage();
    v3 = MEMORY[0x19A8D0E00](v2 + 112);
    if (v3)
    {
      v4 = v3;
      v5 = malloc_type_calloc(1uLL, 0x18uLL, 0xE00406B48E91AuLL);
      if (@"AssetImageGenerator_ServerObjectInvalidated")
      {
        v6 = CFRetain(@"AssetImageGenerator_ServerObjectInvalidated");
      }

      else
      {
        v6 = 0;
      }

      v5[1] = v6;
      v5[2] = 0;
      *v5 = v4;
      dispatch_async_f(sAIGNotificationQueue, v5, aig_postNotificationAsynchronously);
    }

    FigCFWeakReferenceStore();
    if (v1[7])
    {
      FigSimpleMutexLock();
      for (i = v1[8]; i; i = *i)
      {
        *(i + 8) = 1;
      }

      FigSimpleMutexUnlock();
    }

    if (v1[11])
    {
      FigSemaphoreSignal();
      FigThreadAbort();
      FigThreadJoin();
      v1[11] = 0;
    }
  }

  return 0;
}

void aig_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  aig_Invalidate();
  if (DerivedStorage[7])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[7] = 0;
  }

  if (DerivedStorage[10])
  {
    FigSemaphoreDestroy();
    DerivedStorage[10] = 0;
  }

  v1 = DerivedStorage[15];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[15] = 0;
  }

  v2 = DerivedStorage[3];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[3] = 0;
  }

  v3 = DerivedStorage[2];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[2] = 0;
  }

  v4 = DerivedStorage[4];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[4] = 0;
  }

  v5 = DerivedStorage[5];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[5] = 0;
  }

  v6 = DerivedStorage[1];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[1] = 0;
  }
}

__CFString *aig_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigAssetImageGenerator %p url: ", a1);
  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    v5 = CFURLGetString(v4);
  }

  else
  {
    v5 = @"NULL";
  }

  CFStringAppend(Mutable, v5);
  CFStringAppend(Mutable, @">");
  return Mutable;
}

void aig_postNotificationAsynchronously(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t aig_CopyCGImageAtTime(const void *a1, uint64_t a2, const void *a3, const void *a4, void *a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  if (!*DerivedStorage)
  {
    v14 = DerivedStorage;
    v15 = *(DerivedStorage + 24);
    if (v15 && (v16 = CFRetain(v15)) != 0)
    {
      v17 = v16;
      CMBaseObject = FigAssetGetCMBaseObject(v16);
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v19)
      {
        v20 = v19(CMBaseObject, @"assetProperty_CPEProtector", *MEMORY[0x1E695E480], &v26[1] + 8);
        if (!v20)
        {
          CFRelease(v17);
          v21 = *(v14 + 100) + 1;
          *(v14 + 100) = v21;
          v24 = *a2;
          v25 = *(a2 + 16);
          ImageAtTimeInternal = FAIGCommon_createImageRequest(&v24, a3, a4, v21, &v27);
          if (!ImageAtTimeInternal)
          {
            ImageAtTimeInternal = aig_createImageAtTimeInternal(v26, a1, 0, v27, a5, a6);
          }

          v23 = ImageAtTimeInternal;
          goto LABEL_15;
        }

        v23 = v20;
      }

      else
      {
        v23 = 4294954514;
      }

      CFRelease(v17);
    }

    else
    {
      v23 = 4294954859;
    }

LABEL_15:
    aig_cleanupImageRetrievalObjects(v26);
    FAIGCommon_releaseImageRequest(v27);
    return v23;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t aig_CancelAllCGImageAsyncRequests()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v2 = DerivedStorage;
    FigSimpleMutexLock();
    for (i = *(v2 + 8); i; i = *i)
    {
      *(i + 8) = 1;
    }

    FigSimpleMutexUnlock();
    FigSemaphoreSignal();
    return 0;
  }
}

void aig_cleanupImageRetrievalObjects(CFTypeRef *a1)
{
  aig_cleanupVideoRenderPipelineAndMentorsForImageRetrieval(a1);
  v2 = a1[21];
  if (v2)
  {
    CFRelease(v2);
    a1[21] = 0;
  }

  v3 = a1[20];
  if (v3)
  {
    CFRelease(v3);
    a1[20] = 0;
  }

  v4 = a1[18];
  if (v4)
  {
    CFRelease(v4);
    a1[18] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v6)
    {
      v6(v5);
    }

    v7 = a1[6];
    if (v7)
    {
      CFRelease(v7);
      a1[6] = 0;
    }
  }

  if (a1[11])
  {
    a1[11] = 0;
  }

  v8 = a1[16];
  if (v8)
  {
    CFRelease(v8);
    a1[16] = 0;
  }

  v9 = a1[2];
  if (v9)
  {
    CFRelease(v9);
    a1[2] = 0;
  }

  v10 = a1[3];
  if (v10)
  {
    CFRelease(v10);
    a1[3] = 0;
  }

  v11 = a1[24];
  if (v11)
  {
    CFRelease(v11);
    a1[24] = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  v12 = a1[27];
  if (v12)
  {
    CFRelease(v12);
    a1[27] = 0;
  }

  v13 = a1[10];
  if (v13)
  {
    CFRelease(v13);
    a1[10] = 0;
  }
}

void aig_cleanupVideoRenderPipelineAndMentorsForImageRetrieval(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
    a1[1] = 0;
  }

  v3 = a1[25];
  if (v3)
  {
    VideoMentorInvalidate(v3);
  }

  v4 = a1[26];
  if (v4)
  {
    EditMentorDispose(v4);
  }

  if (a1[25])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    VideoMentorDispose(a1[25]);
  }

  v5 = a1[23];
  if (v5)
  {
    CFRelease(v5);
    a1[23] = 0;
  }

  v6 = a1[22];
  if (v6)
  {
    CFRelease(v6);
    a1[22] = 0;
  }

  if (a1[19])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    FigBaseObject = FigRenderPipelineGetFigBaseObject(a1[19]);
    v8 = *(CMBaseObjectGetVTable() + 8);
    if (*v8 >= 2uLL)
    {
      v9 = v8[8];
      if (v9)
      {
        v9(FigBaseObject);
      }
    }

    v10 = a1[19];
    if (v10)
    {
      CFRelease(v10);
      a1[19] = 0;
    }
  }

  v11 = a1[17];
  if (v11)
  {
    CFRelease(v11);
    a1[17] = 0;
  }

  v12 = a1[5];
  if (v12)
  {
    CFRelease(v12);
    a1[5] = 0;
  }
}

uint64_t aig_handleMentorStoppingDueToErrorNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  FAIGCommon_handleRenderPipelineDecodeErrorNotification(a1, a2, a3, a4, a5);

  return FigSemaphoreSignal();
}

uint64_t aig_processImageRequestThread(const void *a1)
{
  v47[2] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(v41, 0, sizeof(v41));
  cf = 0;
  v40 = -1;
  v34 = *MEMORY[0x1E6960C70];
  v37 = *MEMORY[0x1E6960C70];
  v33 = *(MEMORY[0x1E6960C70] + 16);
  v38 = v33;
  v2 = *(DerivedStorage + 24);
  v3 = MEMORY[0x1E695E480];
  if (v2)
  {
    v4 = CFRetain(v2);
    v5 = *v3;
    if (v4)
    {
      v6 = v4;
      CMBaseObject = FigAssetGetCMBaseObject(v4);
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(CMBaseObject, @"assetProperty_CPEProtector", v5, &v41[1] + 8);
      }

      CFRelease(v6);
    }
  }

  else
  {
    v5 = *MEMORY[0x1E695E480];
  }

  while (1)
  {
    FigSimpleMutexLock();
    v9 = *(DerivedStorage + 64);
    if (!v9)
    {
      break;
    }

    FigSimpleMutexUnlock();
    if (*(v9 + 8) || *DerivedStorage)
    {
      v10 = -12432;
    }

    else
    {
      v31 = aig_createImageAtTimeInternal(v41, a1, &v40, v9, &cf, &v37);
      if (*DerivedStorage)
      {
        v10 = -12785;
      }

      else if (*(v9 + 8))
      {
        v10 = -12432;
      }

      else
      {
        v10 = v31;
      }
    }

    v11 = *(v9 + 40);
    if (v11)
    {
      Value = CFDictionaryGetValue(v11, @"RequestID");
      v13 = Value;
      if (Value)
      {
        CFRetain(Value);
      }
    }

    else
    {
      v13 = 0;
    }

    FigSimpleMutexLock();
    v14 = *(DerivedStorage + 64);
    v15 = *v14;
    *(DerivedStorage + 64) = *v14;
    if (!v15)
    {
      *(DerivedStorage + 72) = DerivedStorage + 64;
      *(DerivedStorage + 96) = 0;
    }

    FigSimpleMutexUnlock();
    FAIGCommon_releaseImageRequest(v9);
    v16 = cf;
    *&v36.value = v37;
    v36.epoch = v38;
    valuePtr = v10;
    keys = 0;
    v47[0] = 0;
    v47[1] = 0;
    values = 0;
    v45[0] = 0;
    v45[1] = 0;
    v17 = CMBaseObjectGetDerivedStorage();
    if (v10)
    {
      keys = @"Result";
      values = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
      v18 = 1;
      v19 = kFigAssetImageGeneratorNotification_FailedToGenerateCGImage;
    }

    else
    {
      if (v16)
      {
        keys = @"CGImage";
        values = CFRetain(v16);
        p_keys = v47;
        p_values = v45;
        v18 = 2;
      }

      else
      {
        p_keys = &keys;
        p_values = &values;
        v18 = 1;
      }

      *p_keys = @"FigTime";
      time = v36;
      *p_values = CMTimeCopyAsDictionary(&time, v5);
      v19 = kFigAssetImageGeneratorNotification_DidGenerateCGImage;
    }

    v22 = *v19;
    if (v13)
    {
      v47[v18 - 1] = @"RequestID";
      v45[v18++ - 1] = CFRetain(v13);
    }

    v23 = CFDictionaryCreate(v5, &keys, &values, v18, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v24 = MEMORY[0x19A8D0E00](v17 + 112);
    if (v24)
    {
      v25 = v24;
      v26 = malloc_type_calloc(1uLL, 0x18uLL, 0xE00406B48E91AuLL);
      if (v22)
      {
        v27 = CFRetain(v22);
      }

      else
      {
        v27 = 0;
      }

      v26[1] = v27;
      if (v23)
      {
        v28 = CFRetain(v23);
      }

      else
      {
        v28 = 0;
      }

      v26[2] = v28;
      *v26 = v25;
      dispatch_async_f(sAIGNotificationQueue, v26, aig_postNotificationAsynchronously);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    v29 = 0;
    do
    {
      v30 = v45[v29 - 1];
      if (v30)
      {
        CFRelease(v30);
        v45[v29 - 1] = 0;
      }

      ++v29;
    }

    while (v18 != v29);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v13)
    {
      CFRelease(v13);
    }

    v37 = v34;
    v38 = v33;
    if (!v15)
    {
      goto LABEL_51;
    }
  }

  *(DerivedStorage + 96) = 0;
  FigSimpleMutexUnlock();
LABEL_51:
  aig_cleanupImageRetrievalObjects(v41);
  return 0;
}